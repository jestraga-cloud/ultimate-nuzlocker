"use client";

import { useEffect, useState, useCallback, useMemo, useRef } from "react";
import { useParams } from "next/navigation";
import { useStore } from "@/lib/store";
import { useStoreHydration } from "@/hooks/use-store-hydration";
import { createClient } from "@/lib/supabase/client";
import { AdventureHeader } from "@/components/adventure/adventure-header";
import { RouteSidebar } from "@/components/tracker/route-sidebar";
import { RouteDetail } from "@/components/tracker/route-detail";
import { CatchModal } from "@/components/adventure/catch-modal";
import { MyPokemonPanel } from "@/components/adventure/my-pokemon-panel";
import { PokemonDetailModal } from "@/components/pokemon/pokemon-detail-modal";
import { Sheet, SheetContent, SheetTrigger } from "@/components/ui/sheet";
import { Tabs, TabsList, TabsTrigger, TabsContent } from "@/components/ui/tabs";
import { Button } from "@/components/ui/button";
import { Skeleton } from "@/components/ui/skeleton";
import { Map, Backpack } from "lucide-react";
import type { Route, Encounter, RouteItem, Trainer, RouteDetail as RouteDetailType } from "@/types/game";

export default function AdventurePage() {
  const params = useParams();
  const adventureId = params.id as string;
  const hydrated = useStoreHydration();

  const adventure = useStore((s) => s.adventures[adventureId]);
  const catches = useStore((s) => s.catches[adventureId] || []);
  const routeProgress = useStore((s) => s.routeProgress[adventureId] || {});
  const addCatch = useStore((s) => s.addCatch);
  const setRouteVisited = useStore((s) => s.setRouteVisited);
  const setEncounterUsed = useStore((s) => s.setEncounterUsed);

  const [routes, setRoutes] = useState<Route[]>([]);
  const [selectedRouteId, setSelectedRouteId] = useState<string | null>(null);
  const [routeDetail, setRouteDetail] = useState<RouteDetailType | null>(null);
  const [loading, setLoading] = useState(true);
  const [detailLoading, setDetailLoading] = useState(false);
  const [catchModalOpen, setCatchModalOpen] = useState(false);
  const [pokemonDetailDexId, setPokemonDetailDexId] = useState<number | null>(null);
  const [activeTab, setActiveTab] = useState<string>("routes");
  const [mobileSidebarOpen, setMobileSidebarOpen] = useState(false);

  // Pokemon names cache — use ref to avoid stale closures in fetchPokemonNames
  const [pokemonNames, setPokemonNames] = useState<
    Record<number, { name: string; types: string[] }>
  >({});
  const pokemonNamesRef = useRef(pokemonNames);
  pokemonNamesRef.current = pokemonNames;

  // Fetch routes for the game
  useEffect(() => {
    if (!adventure?.gameId) return;

    const fetchRoutes = async () => {
      const supabase = createClient();
      if (!supabase) {
        setLoading(false);
        return;
      }
      const { data, error } = await supabase
        .from("routes")
        .select("*")
        .eq("game_id", adventure.gameId)
        .order("display_order", { ascending: true });

      if (error) {
        console.error("Error fetching routes:", error);
      }

      if (data) {
        setRoutes(
          data.map((r: Record<string, unknown>) => ({
            id: r.id as string,
            gameId: r.game_id as string,
            name: r.name as string,
            slug: r.slug as string,
            displayOrder: r.display_order as number,
            routeType: r.route_type as Route["routeType"],
            hasEncounters: r.has_encounters as boolean,
            hasTrainers: r.has_trainers as boolean,
            hasItems: r.has_items as boolean,
            notes: r.notes as string | null,
          }))
        );
      }
      setLoading(false);
    };

    fetchRoutes();
  }, [adventure?.gameId]);

  // Stable pokemon name fetcher — uses ref so it never causes re-render loops
  const fetchPokemonNames = useCallback(async (dexIds: number[]) => {
    const current = pokemonNamesRef.current;
    const missing = dexIds.filter((id) => !current[id]);
    if (missing.length === 0) return;

    const results: Record<number, { name: string; types: string[] }> = {};

    await Promise.all(
      missing.map(async (id) => {
        try {
          const res = await fetch(`https://pokeapi.co/api/v2/pokemon/${id}`);
          if (res.ok) {
            const data = await res.json();
            results[id] = {
              name: data.name
                .split("-")
                .map((w: string) => w.charAt(0).toUpperCase() + w.slice(1))
                .join(" "),
              types: data.types.map(
                (t: { type: { name: string } }) => t.type.name
              ),
            };
          }
        } catch {
          results[id] = { name: `#${id}`, types: [] };
        }
      })
    );

    setPokemonNames((prev) => ({ ...prev, ...results }));
  }, []);

  // Fetch route detail when a route is selected
  useEffect(() => {
    if (!selectedRouteId) {
      setRouteDetail(null);
      return;
    }

    const fetchDetail = async () => {
      setDetailLoading(true);
      const supabase = createClient();
      if (!supabase) {
        setDetailLoading(false);
        return;
      }

      const [encountersRes, itemsRes, trainersRes] = await Promise.all([
        supabase
          .from("encounters")
          .select("*")
          .eq("route_id", selectedRouteId)
          .order("method")
          .order("encounter_rate", { ascending: false, nullsFirst: false }),
        supabase
          .from("route_items")
          .select("*")
          .eq("route_id", selectedRouteId)
          .order("item_category")
          .order("item_name"),
        supabase
          .from("trainers")
          .select("*, trainer_pokemon(*)")
          .eq("route_id", selectedRouteId)
          .order("display_order"),
      ]);

      if (encountersRes.error) console.error("Error fetching encounters:", encountersRes.error);
      if (itemsRes.error) console.error("Error fetching items:", itemsRes.error);
      if (trainersRes.error) console.error("Error fetching trainers:", trainersRes.error);

      const route = routes.find((r) => r.id === selectedRouteId);
      if (!route) {
        setDetailLoading(false);
        return;
      }

      const encounters: Encounter[] = (encountersRes.data || []).map(
        (r: Record<string, unknown>) => ({
          id: r.id as string,
          routeId: r.route_id as string,
          pokemonDexId: r.pokemon_national_dex_id as number,
          method: r.method as Encounter["method"],
          encounterRate: r.encounter_rate as number | null,
          levelMin: r.level_min as number | null,
          levelMax: r.level_max as number | null,
          conditions: r.conditions as string | null,
          versionExclusive: r.version_exclusive as string | null,
        })
      );

      const items: RouteItem[] = (itemsRes.data || []).map(
        (r: Record<string, unknown>) => ({
          id: r.id as string,
          routeId: r.route_id as string,
          itemName: r.item_name as string,
          itemCategory: r.item_category as string | null,
          description: r.description as string | null,
          locationHint: r.location_hint as string | null,
          isHidden: r.is_hidden as boolean,
          requires: r.requires as string | null,
        })
      );

      const trainers: Trainer[] = (trainersRes.data || []).map(
        (t: Record<string, unknown>) => ({
          id: t.id as string,
          routeId: t.route_id as string,
          name: t.name as string,
          trainerClass: t.trainer_class as string | null,
          isBoss: t.is_boss as boolean,
          bossType: t.boss_type as Trainer["bossType"],
          levelCap: t.level_cap as number | null,
          displayOrder: t.display_order as number,
          notes: t.notes as string | null,
          pokemon: ((t.trainer_pokemon as Record<string, unknown>[]) || [])
            .map((tp: Record<string, unknown>) => ({
              id: tp.id as string,
              trainerId: tp.trainer_id as string,
              pokemonDexId: tp.pokemon_national_dex_id as number,
              level: tp.level as number,
              slotOrder: tp.slot_order as number,
              moves: (tp.moves as string[]) || [],
              ability: tp.ability as string | null,
              heldItem: tp.held_item as string | null,
              nature: tp.nature as string | null,
            }))
            .sort(
              (a: { slotOrder: number }, b: { slotOrder: number }) =>
                a.slotOrder - b.slotOrder
            ),
        })
      );

      setRouteDetail({ route, encounters, items, trainers });
      setDetailLoading(false);

      // Fetch pokemon names for encounters and trainers
      const dexIds = new Set<number>();
      encounters.forEach((e) => dexIds.add(e.pokemonDexId));
      trainers.forEach((t) =>
        t.pokemon.forEach((tp) => dexIds.add(tp.pokemonDexId))
      );

      fetchPokemonNames(Array.from(dexIds));
    };

    fetchDetail();
  }, [selectedRouteId, routes, fetchPokemonNames]);

  const visitedRoutes = useMemo(
    () => new Set(Object.keys(routeProgress).filter((id) => routeProgress[id]?.visited)),
    [routeProgress]
  );

  const caughtPokemonByRoute = useMemo(() => {
    const map: Record<string, { dexId: number; name: string }> = {};
    for (const c of catches) {
      const dexId = c.currentEvolutionDexId || c.pokemonDexId;
      map[c.routeId] = {
        dexId,
        name: c.nickname || pokemonNames[dexId]?.name || `#${dexId}`,
      };
    }
    return map;
  }, [catches, pokemonNames]);

  const handleToggleVisited = useCallback(() => {
    if (!selectedRouteId) return;
    const current = routeProgress[selectedRouteId]?.visited || false;
    setRouteVisited(adventureId, selectedRouteId, !current);
  }, [selectedRouteId, routeProgress, adventureId, setRouteVisited]);

  const handleCatch = useCallback(
    (data: { pokemonDexId: number; nickname: string | null; level: number | null }) => {
      if (!selectedRouteId) return;
      addCatch({
        id: crypto.randomUUID(),
        adventureId,
        routeId: selectedRouteId,
        pokemonDexId: data.pokemonDexId,
        currentEvolutionDexId: null,
        nickname: data.nickname,
        status: "alive",
        level: data.level,
        nature: null,
        ability: null,
        heldItem: null,
        notes: null,
        caughtAt: new Date().toISOString(),
        diedAt: null,
        deathDetails: null,
      });
      setEncounterUsed(adventureId, selectedRouteId, true);
      setRouteVisited(adventureId, selectedRouteId, true);
    },
    [adventureId, selectedRouteId, addCatch, setEncounterUsed, setRouteVisited]
  );

  if (!hydrated || loading) {
    return (
      <div className="flex flex-col h-[calc(100vh-4rem)]">
        <div className="h-16 border-b">
          <Skeleton className="h-full" />
        </div>
        <div className="flex flex-1">
          <div className="w-64 border-r hidden md:block">
            <Skeleton className="h-full" />
          </div>
          <div className="flex-1">
            <Skeleton className="h-full" />
          </div>
        </div>
      </div>
    );
  }

  if (!adventure) {
    return (
      <div className="flex items-center justify-center h-[calc(100vh-4rem)]">
        <div className="text-center space-y-2">
          <p className="text-lg font-medium">Adventure not found</p>
          <p className="text-sm text-muted-foreground">
            This adventure may have been deleted or doesn&apos;t exist.
          </p>
        </div>
      </div>
    );
  }

  const currentRouteProgress = selectedRouteId
    ? routeProgress[selectedRouteId]
    : null;

  const sidebarContent = (
    <RouteSidebar
      routes={routes}
      selectedRouteId={selectedRouteId}
      onSelectRoute={(id) => {
        setSelectedRouteId(id);
        setMobileSidebarOpen(false);
      }}
      visitedRoutes={visitedRoutes}
      caughtPokemonByRoute={caughtPokemonByRoute}
    />
  );

  return (
    <div className="flex flex-col h-[calc(100vh-4rem)]">
      {/* Adventure header */}
      <AdventureHeader
        gameName={adventure.gameName}
        adventureName={adventure.name}
        gameSlug={adventure.gameSlug}
        spriteUrl={adventure.gameSpriteUrl ?? null}
        visitedRoutes={visitedRoutes.size}
        totalRoutes={routes.length}
      />

      {/* Mobile toolbar */}
      <div className="md:hidden flex items-center gap-2 px-4 py-2 border-b">
        <Sheet open={mobileSidebarOpen} onOpenChange={setMobileSidebarOpen}>
          <SheetTrigger asChild>
            <Button variant="outline" size="sm" className="text-xs">
              <Map className="h-3.5 w-3.5 mr-1" />
              Routes
            </Button>
          </SheetTrigger>
          <SheetContent side="left" className="w-72 p-0 pt-8">
            {sidebarContent}
          </SheetContent>
        </Sheet>

        <Button
          variant={activeTab === "pokemon" ? "secondary" : "outline"}
          size="sm"
          className="text-xs"
          onClick={() => setActiveTab(activeTab === "pokemon" ? "routes" : "pokemon")}
        >
          <Backpack className="h-3.5 w-3.5 mr-1" />
          My Pokemon ({catches.length})
        </Button>
      </div>

      <div className="flex flex-1 overflow-hidden">
        {/* Desktop sidebar */}
        <aside className="hidden md:flex w-64 border-r flex-col overflow-hidden">
          {sidebarContent}
        </aside>

        {/* Main content with tabs */}
        <Tabs
          value={activeTab}
          onValueChange={setActiveTab}
          className="flex-1 flex flex-col overflow-hidden"
        >
          {/* Desktop tab bar */}
          <div className="hidden md:flex border-b px-4">
            <TabsList variant="line" className="h-10">
              <TabsTrigger value="routes" className="text-xs gap-1.5">
                <Map className="h-3.5 w-3.5" />
                Routes
              </TabsTrigger>
              <TabsTrigger value="pokemon" className="text-xs gap-1.5">
                <Backpack className="h-3.5 w-3.5" />
                My Pokemon ({catches.length})
              </TabsTrigger>
            </TabsList>
          </div>

          <TabsContent value="routes" className="flex-1 overflow-y-auto custom-scrollbar">
            <RouteDetail
              routeDetail={routeDetail}
              pokemonNames={pokemonNames}
              isVisited={currentRouteProgress?.visited || false}
              encounterUsed={currentRouteProgress?.encounterUsed || false}
              onToggleVisited={handleToggleVisited}
              onCatchPokemon={() => setCatchModalOpen(true)}
              onPokemonClick={(dexId) => setPokemonDetailDexId(dexId)}
              loading={detailLoading}
            />
          </TabsContent>

          <TabsContent value="pokemon" className="flex-1 overflow-y-auto custom-scrollbar">
            <MyPokemonPanel
              adventureId={adventureId}
              catches={catches}
              pokemonNames={pokemonNames}
              routes={routes}
              onViewStats={(dexId) => setPokemonDetailDexId(dexId)}
            />
          </TabsContent>
        </Tabs>
      </div>

      {/* Catch modal */}
      <CatchModal
        open={catchModalOpen}
        onOpenChange={setCatchModalOpen}
        encounters={routeDetail?.encounters || []}
        pokemonNames={pokemonNames}
        onCatch={handleCatch}
      />

      {/* Pokemon detail modal */}
      <PokemonDetailModal
        open={pokemonDetailDexId !== null}
        onOpenChange={(open) => { if (!open) setPokemonDetailDexId(null); }}
        dexId={pokemonDetailDexId}
        generation={adventure.gameGeneration ?? undefined}
      />
    </div>
  );
}
