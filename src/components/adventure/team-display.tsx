"use client";

import type { LocalCatch } from "@/lib/store/types";
import { PokemonSprite } from "@/components/pokemon/pokemon-sprite";
import { Badge } from "@/components/ui/badge";
import { Skull } from "lucide-react";

interface TeamDisplayProps {
  catches: LocalCatch[];
  pokemonNames: Record<number, { name: string; types: string[] }>;
  onSelectPokemon: (catchData: LocalCatch) => void;
}

export function TeamDisplay({
  catches,
  pokemonNames,
  onSelectPokemon,
}: TeamDisplayProps) {
  const alive = catches.filter(
    (c) => c.status === "alive" || c.status === "in_team"
  );
  const dead = catches.filter((c) => c.status === "dead");
  const boxed = catches.filter((c) => c.status === "boxed");

  return (
    <div className="space-y-4">
      {/* Team */}
      <div>
        <h3 className="text-xs font-medium text-muted-foreground mb-2 uppercase tracking-wider px-1">
          Team ({alive.length})
        </h3>
        <div className="grid grid-cols-3 sm:grid-cols-6 gap-2">
          {Array.from({ length: 6 }).map((_, i) => {
            const pokemon = alive[i];
            if (!pokemon) {
              return (
                <div
                  key={`empty-${i}`}
                  className="flex items-center justify-center h-32 rounded-lg border border-dashed border-border/50 bg-muted/20"
                >
                  <span className="text-muted-foreground/30 text-2xl">+</span>
                </div>
              );
            }

            const dexId = pokemon.currentEvolutionDexId || pokemon.pokemonDexId;
            const pData = pokemonNames[dexId];
            const displayName = pokemon.nickname || pData?.name || `#${dexId}`;

            return (
              <button
                key={pokemon.id}
                onClick={() => onSelectPokemon(pokemon)}
                className="flex flex-col items-center gap-1 p-2 rounded-lg border bg-card hover:bg-accent transition-colors"
              >
                <PokemonSprite dexId={dexId} size="lg" name={displayName} />
                <span className="text-[10px] font-medium truncate w-full text-center">
                  {displayName}
                </span>
                {pokemon.level && (
                  <span className="text-[9px] text-muted-foreground">
                    Lv. {pokemon.level}
                  </span>
                )}
              </button>
            );
          })}
        </div>
      </div>

      {/* Boxed */}
      {boxed.length > 0 && (
        <div>
          <h3 className="text-xs font-medium text-muted-foreground mb-2 uppercase tracking-wider px-1">
            Box ({boxed.length})
          </h3>
          <div className="flex flex-wrap gap-2">
            {boxed.map((pokemon) => {
              const dexId =
                pokemon.currentEvolutionDexId || pokemon.pokemonDexId;
              const pData = pokemonNames[dexId];
              const displayName =
                pokemon.nickname || pData?.name || `#${dexId}`;

              return (
                <button
                  key={pokemon.id}
                  onClick={() => onSelectPokemon(pokemon)}
                  className="flex items-center gap-1.5 px-2 py-1 rounded-lg border bg-card hover:bg-accent transition-colors"
                >
                  <PokemonSprite
                    dexId={dexId}
                    size="sm"
                    name={displayName}
                  />
                  <span className="text-xs">{displayName}</span>
                </button>
              );
            })}
          </div>
        </div>
      )}

      {/* Graveyard */}
      {dead.length > 0 && (
        <div>
          <h3 className="text-xs font-medium text-muted-foreground mb-2 uppercase tracking-wider px-1 flex items-center gap-1">
            <Skull className="h-3 w-3" />
            Graveyard ({dead.length})
          </h3>
          <div className="flex flex-wrap gap-2">
            {dead.map((pokemon) => {
              const dexId =
                pokemon.currentEvolutionDexId || pokemon.pokemonDexId;
              const pData = pokemonNames[dexId];
              const displayName =
                pokemon.nickname || pData?.name || `#${dexId}`;

              return (
                <button
                  key={pokemon.id}
                  onClick={() => onSelectPokemon(pokemon)}
                  className="flex items-center gap-2 px-3 py-2 rounded-lg border bg-card hover:bg-accent transition-colors opacity-60"
                >
                  <div className="grayscale">
                    <PokemonSprite
                      dexId={dexId}
                      size="sm"
                      name={displayName}
                    />
                  </div>
                  <span className="text-xs line-through">
                    {displayName}
                  </span>
                  <Badge
                    variant="destructive"
                    className="text-[8px] px-1 py-0"
                  >
                    RIP
                  </Badge>
                </button>
              );
            })}
          </div>
        </div>
      )}
    </div>
  );
}
