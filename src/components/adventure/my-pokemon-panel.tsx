"use client";

import { useState, useMemo, useCallback } from "react";
import type { LocalCatch } from "@/lib/store/types";
import type { Route } from "@/types/game";
import { PokemonCard } from "@/components/pokemon/pokemon-card";
import { PokemonEditSheet } from "@/components/pokemon/pokemon-edit-sheet";
import { PokemonDetailModal } from "@/components/pokemon/pokemon-detail-modal";
import { EvolutionPicker } from "@/components/pokemon/evolution-picker";
import { PokemonSprite } from "@/components/pokemon/pokemon-sprite";
import { useStore } from "@/lib/store";
import { Input } from "@/components/ui/input";
import { Button } from "@/components/ui/button";
import { Skull, Box, Search, Sparkles, ArrowUpDown } from "lucide-react";
import { usePokemonStats, getSortValue, type SortKey } from "@/hooks/use-pokemon-stats";

const SORT_OPTIONS: { key: SortKey; label: string }[] = [
  { key: "none", label: "Catch Order" },
  { key: "bst", label: "BST" },
  { key: "hp", label: "HP" },
  { key: "attack", label: "Atk" },
  { key: "defense", label: "Def" },
  { key: "specialAttack", label: "Sp.Atk" },
  { key: "specialDefense", label: "Sp.Def" },
  { key: "speed", label: "Speed" },
];

interface MyPokemonPanelProps {
  adventureId: string;
  catches: LocalCatch[];
  pokemonNames: Record<number, { name: string; types: string[] }>;
  routes: Route[];
  generation?: number;
  gameSlug?: string;
}

export function MyPokemonPanel({
  adventureId,
  catches,
  pokemonNames,
  routes,
  generation,
  gameSlug,
}: MyPokemonPanelProps) {
  const evolvePokemon = useStore((s) => s.evolvePokemon);

  const [editingCatch, setEditingCatch] = useState<LocalCatch | null>(null);
  const [evolvingCatch, setEvolvingCatch] = useState<LocalCatch | null>(null);
  const [viewingCatch, setViewingCatch] = useState<LocalCatch | null>(null);
  const [boxSearch, setBoxSearch] = useState("");
  const [sortBy, setSortBy] = useState<SortKey>("none");
  const [sortDir, setSortDir] = useState<"asc" | "desc">("desc");

  // Collect all dex IDs for stats fetching
  const catchDexIds = useMemo(
    () => catches.map((c) => c.currentEvolutionDexId || c.pokemonDexId),
    [catches]
  );

  const { statsMap } = usePokemonStats(catchDexIds, generation);

  const sortPokemon = useCallback(
    (pokemon: LocalCatch[]): LocalCatch[] => {
      if (sortBy === "none") return pokemon;
      return [...pokemon].sort((a, b) => {
        const aDexId = a.currentEvolutionDexId || a.pokemonDexId;
        const bDexId = b.currentEvolutionDexId || b.pokemonDexId;
        const aVal = getSortValue(statsMap[aDexId], sortBy);
        const bVal = getSortValue(statsMap[bDexId], sortBy);
        return sortDir === "desc" ? bVal - aVal : aVal - bVal;
      });
    },
    [sortBy, sortDir, statsMap]
  );

  const routeNameMap = useMemo(() => {
    const map: Record<string, string> = {};
    for (const r of routes) map[r.id] = r.name;
    return map;
  }, [routes]);

  const alive = useMemo(
    () => sortPokemon(catches.filter((c) => c.status === "in_team")),
    [catches, sortPokemon]
  );
  const boxed = useMemo(() => catches.filter((c) => c.status === "alive" || c.status === "boxed"), [catches]);
  const dead = useMemo(() => catches.filter((c) => c.status === "dead"), [catches]);

  const filteredBoxed = useMemo(() => {
    let result = boxed;
    if (boxSearch.trim()) {
      const q = boxSearch.toLowerCase();
      result = result.filter((c) => {
        const dexId = c.currentEvolutionDexId || c.pokemonDexId;
        const pName = pokemonNames[dexId]?.name?.toLowerCase() || "";
        const nick = c.nickname?.toLowerCase() || "";
        return pName.includes(q) || nick.includes(q);
      });
    }
    return sortPokemon(result);
  }, [boxed, boxSearch, pokemonNames, sortPokemon]);

  const [pokemonDetailDexId, setPokemonDetailDexId] = useState<number | null>(null);

  const handleEvolve = (dexId: number) => {
    if (evolvingCatch) {
      evolvePokemon(adventureId, evolvingCatch.id, dexId);
      setEvolvingCatch(null);
    }
  };

  const handleDetailEvolve = useCallback((targetDexId: number) => {
    if (viewingCatch && viewingCatch.status !== "dead") {
      evolvePokemon(adventureId, viewingCatch.id, targetDexId);
      setPokemonDetailDexId(targetDexId);
    }
  }, [viewingCatch, adventureId, evolvePokemon]);

  return (
    <div className="p-4 md:p-6 space-y-8">
      {/* Sort controls */}
      {catches.length > 0 && (
        <div className="flex items-center gap-2 flex-wrap">
          <span className="text-[10px] text-muted-foreground font-medium uppercase tracking-wider mr-1">
            Sort:
          </span>
          {SORT_OPTIONS.map((opt) => (
            <Button
              key={opt.key}
              variant={sortBy === opt.key ? "secondary" : "outline"}
              size="sm"
              className="text-[10px] h-6 px-2"
              onClick={() => {
                if (sortBy === opt.key && opt.key !== "none") {
                  setSortDir((d) => (d === "desc" ? "asc" : "desc"));
                } else {
                  setSortBy(opt.key);
                  setSortDir("desc");
                }
              }}
            >
              {opt.label}
              {sortBy === opt.key && opt.key !== "none" && (
                <ArrowUpDown className="h-2.5 w-2.5 ml-0.5" />
              )}
            </Button>
          ))}
        </div>
      )}

      {/* Active Team */}
      <section>
        <div className="pixel-section-header flex items-center gap-2 mb-4">
          <Sparkles className="h-4 w-4 text-primary" />
          <h3
            className="text-xs text-primary"
            style={{ fontFamily: "'Press Start 2P', monospace" }}
          >
            Active Team ({alive.length}/6)
          </h3>
        </div>

        <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-3">
          {Array.from({ length: 6 }).map((_, i) => {
            const pokemon = alive[i];
            if (!pokemon) {
              return (
                <div
                  key={`empty-${i}`}
                  className="flex flex-col items-center justify-center h-36 rounded-lg border border-dashed border-border/50 bg-muted/10"
                >
                  <div className="opacity-20">
                    <svg viewBox="0 0 100 100" className="w-12 h-12">
                      <circle cx="50" cy="50" r="48" fill="none" stroke="currentColor" strokeWidth="4" />
                      <path d="M 2 50 A 48 48 0 0 1 98 50" fill="none" stroke="currentColor" strokeWidth="4" />
                      <rect x="2" y="48" width="96" height="4" fill="currentColor" />
                      <circle cx="50" cy="50" r="10" fill="none" stroke="currentColor" strokeWidth="3" />
                    </svg>
                  </div>
                  <span className="text-[10px] text-muted-foreground/40 mt-1">Empty Slot</span>
                </div>
              );
            }

            const dexId = pokemon.currentEvolutionDexId || pokemon.pokemonDexId;
            return (
              <PokemonCard
                key={pokemon.id}
                catchData={pokemon}
                pokemonNames={pokemonNames}
                routeName={routeNameMap[pokemon.routeId]}
                variant="team"
                statsEntry={statsMap[dexId]}
                onSelect={() => {
                    setViewingCatch(pokemon);
                    setPokemonDetailDexId(dexId);
                  }}
                onEdit={() => setEditingCatch(pokemon)}
              />
            );
          })}
        </div>
      </section>

      {/* PC Box */}
      <section>
        <div className="pixel-section-header flex items-center gap-2 mb-4">
          <Box className="h-4 w-4 text-blue-500" />
          <h3
            className="text-xs text-blue-500"
            style={{ fontFamily: "'Press Start 2P', monospace" }}
          >
            PC Box ({boxed.length})
          </h3>
        </div>

        {boxed.length > 6 && (
          <div className="relative mb-3">
            <Search className="absolute left-2.5 top-1/2 -translate-y-1/2 h-3.5 w-3.5 text-muted-foreground" />
            <Input
              placeholder="Search box..."
              value={boxSearch}
              onChange={(e) => setBoxSearch(e.target.value)}
              className="h-8 text-sm pl-8"
            />
          </div>
        )}

        {boxed.length > 0 ? (
          <div className="flex flex-wrap gap-2">
            {filteredBoxed.map((pokemon) => {
              const dexId = pokemon.currentEvolutionDexId || pokemon.pokemonDexId;
              return (
                <PokemonCard
                  key={pokemon.id}
                  catchData={pokemon}
                  pokemonNames={pokemonNames}
                  routeName={routeNameMap[pokemon.routeId]}
                  variant="compact"
                  statsEntry={statsMap[dexId]}
                  onSelect={() => {
                    setViewingCatch(pokemon);
                    setPokemonDetailDexId(dexId);
                  }}
                  onEdit={() => setEditingCatch(pokemon)}
                />
              );
            })}
          </div>
        ) : (
          <div className="flex flex-col items-center justify-center py-8 border border-dashed border-border/50 rounded-lg bg-muted/10">
            <Box className="h-8 w-8 text-muted-foreground/20 mb-2" />
            <p className="text-xs text-muted-foreground/50">Box is empty</p>
          </div>
        )}
      </section>

      {/* Graveyard */}
      {dead.length > 0 && (
        <section>
          <div className="pixel-section-header flex items-center gap-2 mb-4">
            <Skull className="h-4 w-4 text-destructive" />
            <h3
              className="text-xs text-destructive"
              style={{ fontFamily: "'Press Start 2P', monospace" }}
            >
              Graveyard ({dead.length})
            </h3>
          </div>

          <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-2">
            {dead.map((pokemon) => (
              <PokemonCard
                key={pokemon.id}
                catchData={pokemon}
                pokemonNames={pokemonNames}
                routeName={routeNameMap[pokemon.routeId]}
                variant="graveyard"
                onSelect={() => {
                  const dexId = pokemon.currentEvolutionDexId || pokemon.pokemonDexId;
                  setViewingCatch(pokemon);
                  setPokemonDetailDexId(dexId);
                }}
              />
            ))}
          </div>
        </section>
      )}

      {/* Empty state */}
      {catches.length === 0 && (
        <div className="flex flex-col items-center justify-center py-16 text-center">
          <div className="opacity-20 mb-4">
            <PokemonSprite dexId={25} size="xl" name="Pikachu" />
          </div>
          <p className="text-sm font-medium text-muted-foreground">No Pokemon caught yet</p>
          <p className="text-xs text-muted-foreground mt-1">
            Select a route and catch your first encounter!
          </p>
        </div>
      )}

      {/* Edit Sheet */}
      <PokemonEditSheet
        open={editingCatch !== null}
        onOpenChange={(open) => { if (!open) setEditingCatch(null); }}
        catchData={editingCatch}
        adventureId={adventureId}
        pokemonNames={pokemonNames}
        onEvolve={() => {
          if (editingCatch) {
            setEvolvingCatch(editingCatch);
          }
        }}
      />

      {/* Evolution Picker */}
      <EvolutionPicker
        open={evolvingCatch !== null}
        onOpenChange={(open) => { if (!open) setEvolvingCatch(null); }}
        currentDexId={evolvingCatch ? (evolvingCatch.currentEvolutionDexId || evolvingCatch.pokemonDexId) : 0}
        onSelectEvolution={handleEvolve}
      />

      {/* Pokemon detail modal — with evolve support */}
      <PokemonDetailModal
        open={pokemonDetailDexId !== null}
        onOpenChange={(open) => {
          if (!open) {
            setPokemonDetailDexId(null);
            setViewingCatch(null);
          }
        }}
        dexId={pokemonDetailDexId}
        generation={generation}
        gameSlug={gameSlug}
        onEvolve={viewingCatch && viewingCatch.status !== "dead" ? handleDetailEvolve : undefined}
      />
    </div>
  );
}
