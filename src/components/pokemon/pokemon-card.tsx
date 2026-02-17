"use client";

import type { LocalCatch } from "@/lib/store/types";
import type { PokemonStatsEntry } from "@/hooks/use-pokemon-stats";
import { PokemonSprite } from "./pokemon-sprite";
import { TypeBadge } from "./type-badge";
import { Badge } from "@/components/ui/badge";
import { Skull, MapPin, Pencil } from "lucide-react";

interface PokemonCardProps {
  catchData: LocalCatch;
  pokemonNames: Record<number, { name: string; types: string[] }>;
  routeName?: string;
  variant: "team" | "box" | "graveyard";
  statsEntry?: PokemonStatsEntry;
  onSelect: () => void;
  onEdit?: () => void;
}

export function PokemonCard({
  catchData,
  pokemonNames,
  routeName,
  variant,
  statsEntry,
  onSelect,
  onEdit,
}: PokemonCardProps) {
  const dexId = catchData.currentEvolutionDexId || catchData.pokemonDexId;
  const pData = pokemonNames[dexId];
  const displayName = catchData.nickname || pData?.name || `#${dexId}`;
  const types = pData?.types || [];
  const primaryType = types[0] || "normal";

  if (variant === "box") {
    return (
      <button
        onClick={onSelect}
        className="pokemon-card flex items-center gap-3 px-3 py-2 rounded-lg border bg-card hover:bg-accent transition-all"
        style={{ "--type-color": TYPE_COLOR_MAP[primaryType] || "#A8A77A" } as React.CSSProperties}
      >
        <PokemonSprite dexId={dexId} size="sm" name={displayName} hoverable />
        <div className="flex flex-col items-start min-w-0 flex-1">
          <span className="text-xs font-medium truncate max-w-[100px]">{displayName}</span>
          <div className="flex items-center gap-1 mt-0.5">
            {types.map((t) => (
              <TypeBadge key={t} type={t} />
            ))}
          </div>
          {catchData.level && (
            <span className="text-[9px] text-muted-foreground mt-0.5">Lv. {catchData.level}</span>
          )}
        </div>
        {statsEntry && (
          <div className="flex-shrink-0 text-right">
            <span className="text-[9px] font-mono text-muted-foreground block">BST {statsEntry.bst}</span>
            <span className="text-[8px] font-mono text-muted-foreground">
              Spe {statsEntry.stats.speed}
            </span>
          </div>
        )}
      </button>
    );
  }

  if (variant === "graveyard") {
    return (
      <button
        onClick={onSelect}
        className="pokemon-card flex items-center gap-3 px-3 py-2 rounded-lg border bg-card hover:bg-accent transition-all opacity-60"
        style={{ "--type-color": "#6b7280" } as React.CSSProperties}
      >
        <div className="grayscale">
          <PokemonSprite dexId={dexId} size="sm" name={displayName} />
        </div>
        <div className="flex flex-col items-start min-w-0">
          <span className="text-xs font-medium truncate max-w-[100px] line-through">{displayName}</span>
          {catchData.deathDetails && (
            <span className="text-[9px] text-muted-foreground truncate max-w-[120px]">
              {catchData.deathDetails}
            </span>
          )}
        </div>
        <Badge variant="destructive" className="text-[8px] px-1.5 py-0 ml-auto flex-shrink-0">
          <Skull className="h-2.5 w-2.5 mr-0.5" />
          RIP
        </Badge>
      </button>
    );
  }

  // Team variant — full card
  return (
    <div
      className="pokemon-card relative rounded-lg border bg-card overflow-hidden transition-all hover:shadow-md"
      style={{ "--type-color": TYPE_COLOR_MAP[primaryType] || "#A8A77A" } as React.CSSProperties}
    >
      {/* Type accent gradient at top */}
      <div
        className="h-1.5"
        style={{
          background: `linear-gradient(90deg, ${TYPE_COLOR_MAP[primaryType] || "#A8A77A"}, ${
            types[1] ? TYPE_COLOR_MAP[types[1]] || "#A8A77A" : "transparent"
          })`,
        }}
      />

      <div className="p-3">
        {/* Sprite + basic info */}
        <div className="flex items-start gap-3">
          <button onClick={onSelect} className="flex-shrink-0 cursor-pointer">
            <PokemonSprite dexId={dexId} size="lg" name={displayName} hoverable />
          </button>

          <div className="flex-1 min-w-0 space-y-1">
            <div className="flex items-center justify-between">
              <button
                onClick={onSelect}
                className="text-xs font-bold truncate hover:text-primary transition-colors cursor-pointer"
                style={{ fontFamily: "'Press Start 2P', monospace" }}
              >
                {displayName}
              </button>
              {onEdit && (
                <button
                  onClick={(e) => { e.stopPropagation(); onEdit(); }}
                  className="p-1 rounded hover:bg-muted transition-colors flex-shrink-0"
                >
                  <Pencil className="h-3 w-3 text-muted-foreground" />
                </button>
              )}
            </div>

            {catchData.nickname && pData?.name && (
              <span className="text-[9px] text-muted-foreground block">
                {pData.name}
              </span>
            )}

            <div className="flex items-center gap-1">
              {types.map((t) => (
                <TypeBadge key={t} type={t} />
              ))}
            </div>

            <div className="flex items-center gap-3 text-[10px] text-muted-foreground">
              {catchData.level && (
                <span className="font-medium">
                  Lv. <span className="text-foreground">{catchData.level}</span>
                </span>
              )}
              {catchData.nature && <span>{catchData.nature}</span>}
              {catchData.ability && <span>{catchData.ability}</span>}
            </div>

            {catchData.heldItem && (
              <span className="text-[9px] text-amber-600 dark:text-amber-400">
                Holding: {catchData.heldItem}
              </span>
            )}

            {routeName && (
              <div className="flex items-center gap-0.5 text-[9px] text-muted-foreground">
                <MapPin className="h-2.5 w-2.5" />
                {routeName}
              </div>
            )}
          </div>
        </div>

        {/* Base stats */}
        {statsEntry && (
          <div className="mt-2 pt-2 border-t space-y-1.5">
            <div className="flex items-center justify-between text-[9px] text-muted-foreground">
              <span className="font-medium uppercase tracking-wider">Base Stats</span>
              <span className="font-mono text-foreground font-bold">BST {statsEntry.bst}</span>
            </div>
            <div className="space-y-1">
              {(
                [
                  { key: "hp", label: "HP", color: "#ff5959" },
                  { key: "attack", label: "Atk", color: "#f5ac78" },
                  { key: "defense", label: "Def", color: "#fae078" },
                  { key: "specialAttack", label: "SpA", color: "#9db7f5" },
                  { key: "specialDefense", label: "SpD", color: "#a7db8d" },
                  { key: "speed", label: "Spe", color: "#fa92b2" },
                ] as const
              ).map(({ key, label, color }) => {
                const val = statsEntry.stats[key];
                const pct = Math.min((val / 255) * 100, 100);
                return (
                  <div key={key} className="flex items-center gap-1.5">
                    <span className="text-[9px] font-medium text-muted-foreground w-6 text-right shrink-0">{label}</span>
                    <span className="text-[9px] font-mono tabular-nums w-6 text-right shrink-0">{val}</span>
                    <div className="flex-1 h-1.5 rounded-full bg-muted overflow-hidden">
                      <div className="h-full rounded-full transition-all" style={{ width: `${pct}%`, backgroundColor: color }} />
                    </div>
                  </div>
                );
              })}
            </div>
          </div>
        )}

        {/* Notes */}
        {catchData.notes && (
          <p className="mt-2 text-[9px] text-muted-foreground italic border-t pt-1.5">
            {catchData.notes}
          </p>
        )}
      </div>
    </div>
  );
}

const TYPE_COLOR_MAP: Record<string, string> = {
  normal: "#A8A77A",
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
