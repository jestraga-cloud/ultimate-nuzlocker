"use client";

import { useState, useMemo } from "react";
import type { LocalCatch } from "@/lib/store/types";
import type { Route } from "@/types/game";
import { PokemonCard } from "@/components/pokemon/pokemon-card";
import { PokemonEditSheet } from "@/components/pokemon/pokemon-edit-sheet";
import { EvolutionPicker } from "@/components/pokemon/evolution-picker";
import { PokemonSprite } from "@/components/pokemon/pokemon-sprite";
import { useStore } from "@/lib/store";
import { Input } from "@/components/ui/input";
import { Skull, Box, Search, Sparkles } from "lucide-react";

interface MyPokemonPanelProps {
  adventureId: string;
  catches: LocalCatch[];
  pokemonNames: Record<number, { name: string; types: string[] }>;
  routes: Route[];
  onViewStats: (dexId: number) => void;
}

export function MyPokemonPanel({
  adventureId,
  catches,
  pokemonNames,
  routes,
  onViewStats,
}: MyPokemonPanelProps) {
  const evolvePokemon = useStore((s) => s.evolvePokemon);

  const [editingCatch, setEditingCatch] = useState<LocalCatch | null>(null);
  const [evolvingCatch, setEvolvingCatch] = useState<LocalCatch | null>(null);
  const [boxSearch, setBoxSearch] = useState("");

  const routeNameMap = useMemo(() => {
    const map: Record<string, string> = {};
    for (const r of routes) map[r.id] = r.name;
    return map;
  }, [routes]);

  const alive = useMemo(
    () => catches.filter((c) => c.status === "alive" || c.status === "in_team"),
    [catches]
  );
  const boxed = useMemo(() => catches.filter((c) => c.status === "boxed"), [catches]);
  const dead = useMemo(() => catches.filter((c) => c.status === "dead"), [catches]);

  const filteredBoxed = useMemo(() => {
    if (!boxSearch.trim()) return boxed;
    const q = boxSearch.toLowerCase();
    return boxed.filter((c) => {
      const dexId = c.currentEvolutionDexId || c.pokemonDexId;
      const pName = pokemonNames[dexId]?.name?.toLowerCase() || "";
      const nick = c.nickname?.toLowerCase() || "";
      return pName.includes(q) || nick.includes(q);
    });
  }, [boxed, boxSearch, pokemonNames]);

  const handleEvolve = (dexId: number) => {
    if (evolvingCatch) {
      evolvePokemon(adventureId, evolvingCatch.id, dexId);
      setEvolvingCatch(null);
    }
  };

  return (
    <div className="p-4 md:p-6 space-y-8">
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

            return (
              <PokemonCard
                key={pokemon.id}
                catchData={pokemon}
                pokemonNames={pokemonNames}
                routeName={routeNameMap[pokemon.routeId]}
                variant="team"
                onSelect={() => {
                  const dexId = pokemon.currentEvolutionDexId || pokemon.pokemonDexId;
                  onViewStats(dexId);
                }}
                onEdit={() => setEditingCatch(pokemon)}
              />
            );
          })}
        </div>
      </section>

      {/* PC Box */}
      {boxed.length > 0 && (
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

          <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-2">
            {filteredBoxed.map((pokemon) => (
              <PokemonCard
                key={pokemon.id}
                catchData={pokemon}
                pokemonNames={pokemonNames}
                routeName={routeNameMap[pokemon.routeId]}
                variant="box"
                onSelect={() => {
                  const dexId = pokemon.currentEvolutionDexId || pokemon.pokemonDexId;
                  onViewStats(dexId);
                }}
                onEdit={() => setEditingCatch(pokemon)}
              />
            ))}
          </div>
        </section>
      )}

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
                  onViewStats(dexId);
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
    </div>
  );
}
