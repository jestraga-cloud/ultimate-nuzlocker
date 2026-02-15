"use client";

import { useMemo } from "react";
import type { Encounter } from "@/types/game";
import { ENCOUNTER_METHOD_LABELS } from "@/types/game";
import { PokemonSprite } from "@/components/pokemon/pokemon-sprite";
import { TypeBadge } from "@/components/pokemon/type-badge";
import {
  Collapsible,
  CollapsibleContent,
  CollapsibleTrigger,
} from "@/components/ui/collapsible";
import { ChevronDown, Leaf, Waves, Fish } from "lucide-react";
import { useState } from "react";

const TYPE_COLORS: Record<string, string> = {
  normal: "#A8A878",
  fire: "#EE8130",
  water: "#6390F0",
  electric: "#F7D02C",
  grass: "#7AC74C",
  ice: "#96D9D6",
  fighting: "#C22E28",
  poison: "#A33EA1",
  ground: "#E2BF65",
  flying: "#A98FF3",
  psychic: "#F95587",
  bug: "#A6B91A",
  rock: "#B6A136",
  ghost: "#735797",
  dragon: "#6F35FC",
  dark: "#705746",
  steel: "#B7B7CE",
  fairy: "#D685AD",
};

const METHOD_ICONS: Record<string, React.ElementType> = {
  walking: Leaf,
  surfing: Waves,
  fishing_old: Fish,
  fishing_good: Fish,
  fishing_super: Fish,
};

function getRateColor(rate: number): string {
  if (rate >= 20) return "#22c55e";
  if (rate >= 10) return "#eab308";
  if (rate >= 5) return "#f97316";
  return "#ef4444";
}

interface EncounterListProps {
  encounters: Encounter[];
  pokemonNames: Record<number, { name: string; types: string[] }>;
  onPokemonClick?: (dexId: number) => void;
}

export function EncounterList({
  encounters,
  pokemonNames,
  onPokemonClick,
}: EncounterListProps) {
  const [isOpen, setIsOpen] = useState(true);

  const groupedByMethod = useMemo(() => {
    const groups: Record<string, Encounter[]> = {};
    for (const enc of encounters) {
      if (!groups[enc.method]) groups[enc.method] = [];
      groups[enc.method].push(enc);
    }
    return groups;
  }, [encounters]);

  if (encounters.length === 0) return null;

  return (
    <Collapsible open={isOpen} onOpenChange={setIsOpen}>
      <CollapsibleTrigger className="flex w-full items-center justify-between rounded-lg bg-muted/50 px-4 py-3 text-sm font-medium hover:bg-muted transition-colors pixel-section-header">
        <span className="flex items-center gap-2">
          <span className="text-lg">🌿</span>
          Wild Pokemon
          <span className="text-xs text-muted-foreground font-normal">
            ({encounters.length})
          </span>
        </span>
        <ChevronDown
          className={`h-4 w-4 text-muted-foreground transition-transform ${
            isOpen ? "rotate-180" : ""
          }`}
        />
      </CollapsibleTrigger>
      <CollapsibleContent className="pt-3 space-y-4">
        {Object.entries(groupedByMethod).map(([method, encs]) => {
          const MethodIcon = METHOD_ICONS[method] || Leaf;
          return (
            <div key={method} className="space-y-2">
              <h4 className="text-xs font-medium text-muted-foreground px-2 uppercase tracking-wider flex items-center gap-1.5">
                <MethodIcon className="h-3 w-3" />
                {ENCOUNTER_METHOD_LABELS[method as keyof typeof ENCOUNTER_METHOD_LABELS] ||
                  method}
              </h4>
              <div className="space-y-1.5">
                {encs.map((enc) => {
                  const pokemon = pokemonNames[enc.pokemonDexId];
                  const name = pokemon?.name || `#${enc.pokemonDexId}`;
                  const types = pokemon?.types || [];
                  const primaryType = types[0] || "normal";
                  const typeColor = TYPE_COLORS[primaryType] || "#A8A878";

                  return (
                    <div
                      key={enc.id}
                      className="pokemon-card flex items-center gap-3 cursor-pointer"
                      style={{ "--type-color": typeColor } as React.CSSProperties}
                      onClick={() => onPokemonClick?.(enc.pokemonDexId)}
                    >
                      <PokemonSprite dexId={enc.pokemonDexId} size="md" name={name} hoverable />

                      <div className="flex-1 min-w-0">
                        <div className="flex items-center gap-2">
                          <span className="text-sm font-medium">{name}</span>
                          {types.map((t) => (
                            <TypeBadge key={t} type={t} size="sm" />
                          ))}
                        </div>
                        {enc.conditions && (
                          <p className="text-[10px] text-muted-foreground mt-0.5">
                            {enc.conditions}
                          </p>
                        )}
                      </div>

                      <div className="flex items-center gap-3 text-xs text-muted-foreground flex-shrink-0">
                        <span className="font-mono">
                          {enc.levelMin !== null
                            ? enc.levelMax !== null && enc.levelMax !== enc.levelMin
                              ? `Lv.${enc.levelMin}-${enc.levelMax}`
                              : `Lv.${enc.levelMin}`
                            : "Lv.?"}
                        </span>
                        <div className="flex items-center gap-1.5 w-16">
                          {enc.encounterRate !== null ? (
                            <>
                              <div className="encounter-rate-bar flex-1">
                                <div
                                  className="h-full rounded-full"
                                  style={{
                                    width: `${Math.min(enc.encounterRate, 100)}%`,
                                    backgroundColor: getRateColor(enc.encounterRate),
                                  }}
                                />
                              </div>
                              <span className="text-[10px] w-8 text-right font-mono">
                                {enc.encounterRate}%
                              </span>
                            </>
                          ) : (
                            <span className="text-[10px] text-right w-full">??%</span>
                          )}
                        </div>
                      </div>
                    </div>
                  );
                })}
              </div>
            </div>
          );
        })}
      </CollapsibleContent>
    </Collapsible>
  );
}
