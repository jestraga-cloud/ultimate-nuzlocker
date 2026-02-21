"use client";

import { useEffect, useState, useCallback, useMemo, useRef } from "react";
import { useParams } from "next/navigation";
import { useStore } from "@/lib/store";
import { useStoreHydration } from "@/hooks/use-store-hydration";
import { createClient } from "@/lib/supabase/client";
import { AdventureHeader } from "@/components/adventure/adventure-header";
import { RouteSidebar } from "@/components/tracker/route-sidebar";
import { RouteDetail } from "@/components/tracker/route-detail";
import { SplitPane } from "@/components/tracker/split-pane";
import { CatchModal } from "@/components/adventure/catch-modal";
import { MyPokemonPanel } from "@/components/adventure/my-pokemon-panel";
import { PokemonDetailModal } from "@/components/pokemon/pokemon-detail-modal";
import { Sheet, SheetContent, SheetTrigger } from "@/components/ui/sheet";
import { Tabs, TabsList, TabsTrigger, TabsContent } from "@/components/ui/tabs";
import { Button } from "@/components/ui/button";
import { Skeleton } from "@/components/ui/skeleton";
import { Map, Backpack, Calculator, BookOpen, ChevronLeft } from "lucide-react";
import { CalculatorTab } from "@/components/adventure/calculator-tab";
import { PokemonChangesTab } from "@/components/adventure/pokemon-changes-tab";
import { hasPokemonChanges } from "@/data/pokemon-changes";
import { getEncounterState } from "@/components/tracker/encounter-shared";
import type { Route, Encounter, RouteItem, Trainer, RouteDetail as RouteDetailType } from "@/types/game";
import type { LocalCatch, LocalRouteProgress } from "@/lib/store/types";
import type { EncounterState } from "@/components/tracker/encounter-shared";

// Stable fallback references — avoids useSyncExternalStore tearing loop
// when the adventureId key doesn't exist in the store (before hydration).
const EMPTY_CATCHES: LocalCatch[] = [];
const EMPTY_PROGRESS: Record<string, LocalRouteProgress> = {};

export default function AdventurePage() {
  const params = useParams();
  const adventureId = params.id as string;
  const hydrated = useStoreHydration();

  const adventure = useStore((s) => s.adventures[adventureId]);
  const catches = useStore((s) => s.catches[adventureId] ?? EMPTY_CATCHES);
  const routeProgress = useStore((s) => s.routeProgress[adventureId] ?? EMPTY_PROGRESS);
  const addCatch = useStore((s) => s.addCatch);
  const setRouteVisited = useStore((s) => s.setRouteVisited);
  const setEncounterUsed = useStore((s) => s.setEncounterUsed);

  // Split-pane state from Zustand
  const detailPaneMode = useStore((s) => s.detailPaneMode);
  const setDetailPaneMode = useStore((s) => s.setDetailPaneMode);

  const [routes, setRoutes] = useState<Route[]>([]);
  const [selectedRouteId, setSelectedRouteId] = useState<string | null>(null);
  const [routeDetail, setRouteDetail] = useState<RouteDetailType | null>(null);
  const [loading, setLoading] = useState(true);
  const [detailLoading, setDetailLoading] = useState(false);
  const [catchModalOpen, setCatchModalOpen] = useState(false);
  const [pokemonDetailDexId, setPokemonDetailDexId] = useState<number | null>(null);
  const [activeTab, setActiveTab] = useState<string>("routes");
  const [mobileSidebarOpen, setMobileSidebarOpen] = useState(false);
  const [calcTrainer, setCalcTrainer] = useState<Trainer | null>(null);
  const [encountersByRoute, setEncountersByRoute] = useState<Record<string, Encounter[]>>({});

  // Pokemon names cache — use ref to avoid stale closures in fetchPokemonNames
  const [pokemonNames, setPokemonNames] = useState<
    Record<number, { name: string; types: string[] }>
  >({});
  const pokemonNamesRef = useRef(pokemonNames);
  useEffect(() => {
    pokemonNamesRef.current = pokemonNames;
  }, [pokemonNames]);

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

  // Fetch routes and all encounters for the game
  useEffect(() => {
    if (!adventure?.gameId) return;

    const fetchRoutesAndEncounters = async () => {
      const supabase = createClient();
      if (!supabase) {
        setLoading(false);
        return;
      }

      const { data: routeData, error: routeError } = await supabase
        .from("routes")
        .select("*")
        .eq("game_id", adventure.gameId)
        .order("display_order", { ascending: true });

      if (routeError) {
        console.error("Error fetching routes:", routeError);
      }

      const mappedRoutes: Route[] = (routeData || []).map((r: Record<string, unknown>) => ({
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
      }));
      setRoutes(mappedRoutes);

      // Prefetch all encounters for the game (powers Quick-Catch)
      const routeIds = mappedRoutes.map((r) => r.id);
      if (routeIds.length > 0) {
        const { data: encData, error: encError } = await supabase
          .from("encounters")
          .select("*")
          .in("route_id", routeIds)
          .order("method")
          .order("encounter_rate", { ascending: false, nullsFirst: false });

        if (encError) {
          console.error("Error prefetching encounters:", encError);
        }

        if (encData) {
          const byRoute: Record<string, Encounter[]> = {};
          const allDexIds = new Set<number>();

          for (const r of encData as Record<string, unknown>[]) {
            const routeId = r.route_id as string;
            if (!byRoute[routeId]) byRoute[routeId] = [];
            const enc: Encounter = {
              id: r.id as string,
              routeId,
              pokemonDexId: r.pokemon_national_dex_id as number,
              method: r.method as Encounter["method"],
              encounterRate: r.encounter_rate as number | null,
              levelMin: r.level_min as number | null,
              levelMax: r.level_max as number | null,
              conditions: r.conditions as string | null,
              versionExclusive: r.version_exclusive as string | null,
            };
            byRoute[routeId].push(enc);
            allDexIds.add(enc.pokemonDexId);
          }

          setEncountersByRoute(byRoute);
          fetchPokemonNames(Array.from(allDexIds));
        }
      }

      setLoading(false);
    };

    fetchRoutesAndEncounters();
  }, [adventure?.gameId, fetchPokemonNames]);

  // Fetch route detail (items + trainers) when a route is selected
  // Encounters come from prefetched data, so we only fetch items + trainers
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

      const [itemsRes, trainersRes] = await Promise.all([
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

      if (itemsRes.error) console.error("Error fetching items:", itemsRes.error);
      if (trainersRes.error) console.error("Error fetching trainers:", trainersRes.error);

      const route = routes.find((r) => r.id === selectedRouteId);
      if (!route) {
        setDetailLoading(false);
        return;
      }

      // Use prefetched encounters
      const encounters = encountersByRoute[selectedRouteId] || [];

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

      // Fetch pokemon names for trainers (encounters already prefetched)
      const trainerDexIds = new Set<number>();
      trainers.forEach((t) =>
        t.pokemon.forEach((tp) => trainerDexIds.add(tp.pokemonDexId))
      );
      fetchPokemonNames(Array.from(trainerDexIds));
    };

    fetchDetail();
  }, [selectedRouteId, routes, encountersByRoute, fetchPokemonNames]);

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

  // Compute encounter states for all routes (for sidebar indicators)
  const routeEncounterStates = useMemo(() => {
    const states: Record<string, EncounterState> = {};
    for (const route of routes) {
      const progress = routeProgress[route.id];
      states[route.id] = getEncounterState(
        route.id,
        progress?.encounterUsed || false,
        catches
      );
    }
    return states;
  }, [routes, routeProgress, catches]);

  const [preselectedDexId, setPreselectedDexId] = useState<number | null>(null);
  const [quickCatchRouteId, setQuickCatchRouteId] = useState<string | null>(null);

  const handleEncounterCaught = useCallback(
    (encounter: Encounter) => {
      setPreselectedDexId(encounter.pokemonDexId);
      setCatchModalOpen(true);
    },
    []
  );

  const handleEncounterMissed = useCallback(() => {
    if (!selectedRouteId) return;
    setEncounterUsed(adventureId, selectedRouteId, true);
    setRouteVisited(adventureId, selectedRouteId, true);
  }, [adventureId, selectedRouteId, setEncounterUsed, setRouteVisited]);

  // Quick-catch: triggered from route list popover
  const handleQuickCatch = useCallback(
    (routeId: string, encounter: Encounter) => {
      setSelectedRouteId(routeId);
      setQuickCatchRouteId(routeId);
      setPreselectedDexId(encounter.pokemonDexId);
      setCatchModalOpen(true);
    },
    []
  );

  // Quick-miss: triggered from route list popover
  const handleQuickMiss = useCallback(
    (routeId: string) => {
      setEncounterUsed(adventureId, routeId, true);
      setRouteVisited(adventureId, routeId, true);
    },
    [adventureId, setEncounterUsed, setRouteVisited]
  );

  // Handle detail view open (from sidebar details button)
  const handleOpenDetail = useCallback(
    (routeId: string) => {
      setSelectedRouteId(routeId);
      setActiveTab("routes");
      if (detailPaneMode === "collapsed") {
        setDetailPaneMode("split");
      }
      setMobileSidebarOpen(false);
    },
    [detailPaneMode, setDetailPaneMode]
  );

  const handleCatch = useCallback(
    (data: { pokemonDexId: number; nickname: string | null; level: number | null }) => {
      const routeId = quickCatchRouteId || selectedRouteId;
      if (!routeId) return;
      addCatch({
        id: crypto.randomUUID(),
        adventureId,
        routeId,
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
      setEncounterUsed(adventureId, routeId, true);
      setRouteVisited(adventureId, routeId, true);
      setQuickCatchRouteId(null);
    },
    [adventureId, selectedRouteId, quickCatchRouteId, addCatch, setEncounterUsed, setRouteVisited]
  );

  const handleClearTrainer = useCallback(() => setCalcTrainer(null), []);

  const currentEncounterState = useMemo(() => {
    if (!selectedRouteId) return "null" as const;
    const progress = routeProgress[selectedRouteId];
    return getEncounterState(
      selectedRouteId,
      progress?.encounterUsed || false,
      catches
    );
  }, [selectedRouteId, routeProgress, catches]);

  // Encounters for the catch modal (use prefetched data or route detail)
  const catchModalEncounters = useMemo(() => {
    const routeId = quickCatchRouteId || selectedRouteId;
    if (!routeId) return [];
    return encountersByRoute[routeId] || routeDetail?.encounters || [];
  }, [quickCatchRouteId, selectedRouteId, encountersByRoute, routeDetail]);

  if (!hydrated || loading) {
    return (
      <div className="flex flex-col h-[calc(100vh-4rem)]">
        <div className="h-16 border-b">
          <Skeleton className="h-full" />
        </div>
        <div className="flex flex-1">
          <Skeleton className="h-full w-full" />
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

  const sidebarProps = {
    routes,
    selectedRouteId,
    onSelectRoute: handleOpenDetail,
    visitedRoutes,
    caughtPokemonByRoute,
    encountersByRoute,
    pokemonNames,
    onQuickCatch: handleQuickCatch,
    onQuickMiss: handleQuickMiss,
    routeEncounterStates,
  };

  const routeDetailElement = (
    <RouteDetail
      routeDetail={routeDetail}
      pokemonNames={pokemonNames}
      encounterState={currentEncounterState}
      routeId={selectedRouteId}
      onEncounterCaught={handleEncounterCaught}
      onEncounterMissed={handleEncounterMissed}
      onPokemonClick={(dexId) => setPokemonDetailDexId(dexId)}
      onTrainerDragStart={(e, trainer) => {
        e.dataTransfer.setData("application/trainer-json", JSON.stringify(trainer));
        e.dataTransfer.effectAllowed = "copy";
      }}
      loading={detailLoading}
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
      <div className="md:hidden flex items-center gap-2 px-4 py-2 border-b overflow-x-auto">
        <Sheet open={mobileSidebarOpen} onOpenChange={setMobileSidebarOpen}>
          <SheetTrigger asChild>
            <Button variant="outline" size="sm" className="text-xs">
              <Map className="h-3.5 w-3.5 mr-1" />
              Routes
            </Button>
          </SheetTrigger>
          <SheetContent side="left" className="w-72 p-0 pt-8">
            <RouteSidebar
              {...sidebarProps}
              onSelectRoute={(id) => {
                handleOpenDetail(id);
                setMobileSidebarOpen(false);
              }}
            />
          </SheetContent>
        </Sheet>

        <Button
          variant={activeTab === "pokemon" ? "secondary" : "outline"}
          size="sm"
          className="text-xs whitespace-nowrap"
          onClick={() => setActiveTab("pokemon")}
        >
          <Backpack className="h-3.5 w-3.5 mr-1" />
          My Pokemon ({catches.length})
        </Button>

        <Button
          variant={activeTab === "calculator" ? "secondary" : "outline"}
          size="sm"
          className="text-xs whitespace-nowrap"
          onClick={() => setActiveTab("calculator")}
        >
          <Calculator className="h-3.5 w-3.5 mr-1" />
          Calculator
        </Button>

        {adventure && hasPokemonChanges(adventure.gameSlug) && (
          <Button
            variant={activeTab === "changes" ? "secondary" : "outline"}
            size="sm"
            className="text-xs whitespace-nowrap"
            onClick={() => setActiveTab("changes")}
          >
            <BookOpen className="h-3.5 w-3.5 mr-1" />
            Pokemon Changes
          </Button>
        )}
      </div>

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
            <TabsTrigger
              value="calculator"
              className="text-xs gap-1.5"
              onDragOver={(e) => { e.preventDefault(); setActiveTab("calculator"); }}
              onDrop={(e) => {
                e.preventDefault();
                const trainerJson = e.dataTransfer.getData("application/trainer-json");
                if (trainerJson) setCalcTrainer(JSON.parse(trainerJson));
              }}
            >
              <Calculator className="h-3.5 w-3.5" />
              Calculator
            </TabsTrigger>
            {adventure && hasPokemonChanges(adventure.gameSlug) && (
              <TabsTrigger value="changes" className="text-xs gap-1.5">
                <BookOpen className="h-3.5 w-3.5" />
                Pokemon Changes
              </TabsTrigger>
            )}
          </TabsList>
        </div>

        {/* Routes tab — Split-Pane on desktop, mobile back button + detail */}
        <TabsContent value="routes" className="flex-1 overflow-hidden">
          {/* Mobile: full-width with back navigation */}
          <div className="md:hidden flex-1 h-full overflow-y-auto custom-scrollbar">
            {selectedRouteId ? (
              <div>
                <div className="sticky top-0 z-10 px-3 py-2 border-b bg-background/95 backdrop-blur-sm">
                  <Button
                    variant="ghost"
                    size="sm"
                    className="text-xs gap-1"
                    onClick={() => setSelectedRouteId(null)}
                  >
                    <ChevronLeft className="h-3.5 w-3.5" />
                    Back to Routes
                  </Button>
                </div>
                {routeDetailElement}
              </div>
            ) : (
              <RouteSidebar {...sidebarProps} />
            )}
          </div>

          {/* Desktop: Split-Pane */}
          <div className="hidden md:flex flex-1 overflow-hidden">
            <SplitPane
              mode={detailPaneMode}
              onModeChange={setDetailPaneMode}
              leftPane={<RouteSidebar {...sidebarProps} />}
              rightPane={routeDetailElement}
            />
          </div>
        </TabsContent>

        <TabsContent value="pokemon" className="flex-1 overflow-y-auto custom-scrollbar">
          <MyPokemonPanel
            adventureId={adventureId}
            catches={catches}
            pokemonNames={pokemonNames}
            routes={routes}
            generation={adventure.gameGeneration ?? undefined}
            gameSlug={adventure.gameSlug}
          />
        </TabsContent>

        <TabsContent value="calculator" className="flex-1 overflow-hidden">
          <CalculatorTab
            adventureId={adventureId}
            gameId={adventure.gameId}
            generation={adventure.gameGeneration ?? 3}
            catches={catches}
            pokemonNames={pokemonNames}
            calcTrainer={calcTrainer}
            onSetTrainer={setCalcTrainer}
            onClearTrainer={handleClearTrainer}
          />
        </TabsContent>

        {adventure && hasPokemonChanges(adventure.gameSlug) && (
          <TabsContent value="changes" className="flex-1 overflow-hidden">
            <PokemonChangesTab gameSlug={adventure.gameSlug} />
          </TabsContent>
        )}
      </Tabs>

      {/* Catch modal */}
      <CatchModal
        open={catchModalOpen}
        onOpenChange={(open) => {
          setCatchModalOpen(open);
          if (!open) {
            setPreselectedDexId(null);
            setQuickCatchRouteId(null);
          }
        }}
        encounters={catchModalEncounters}
        pokemonNames={pokemonNames}
        preselectedDexId={preselectedDexId}
        onCatch={handleCatch}
      />

      {/* Pokemon detail modal */}
      <PokemonDetailModal
        open={pokemonDetailDexId !== null}
        onOpenChange={(open) => { if (!open) setPokemonDetailDexId(null); }}
        dexId={pokemonDetailDexId}
        generation={adventure.gameGeneration ?? undefined}
        gameSlug={adventure.gameSlug}
      />
    </div>
  );
}
