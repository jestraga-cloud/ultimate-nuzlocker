"use client";

import { useMemo } from "react";
import { ENCOUNTER_METHOD_LABELS } from "@/types/game";
import { PokemonSprite } from "@/components/pokemon/pokemon-sprite";
import { TypeIcon } from "@/components/pokemon/type-icon";
import { Leaf, X, Check } from "lucide-react";
import {
  TYPE_COLORS,
  METHOD_ICONS,
  groupByMethod,
  sortByRate,
  type EncounterListProps,
} from "./encounter-shared";
import { EncounterPopover } from "./encounter-popover";

function formatLevel(min: number | null, max: number | null): string {
  if (min === null) return "Lv.?";
  if (max !== null && max !== min) return `Lv.${min}-${max}`;
  return `Lv.${min}`;
}

export function EncounterSwimLanes({
  encounters,
  pokemonNames,
  onPokemonClick,
  encounterState,
  routeId,
  onEncounterCaught,
  onEncounterMissed,
}: EncounterListProps) {
  const groupedByMethod = useMemo(
    () => groupByMethod(encounters),
    [encounters]
  );

  const isLocked = encounterState !== "null";

  return (
    <div className="space-y-4">
      {Object.entries(groupedByMethod).map(([method, encs]) => {
        const sorted = sortByRate(encs);
        const MethodIcon = METHOD_ICONS[method] || Leaf;

        return (
          <div key={method} className="space-y-1.5">
            {/* Method header */}
            <h4 className="text-xs font-medium text-muted-foreground px-2 uppercase tracking-wider flex items-center gap-1.5">
              <MethodIcon className="h-3 w-3" />
              {ENCOUNTER_METHOD_LABELS[
                method as keyof typeof ENCOUNTER_METHOD_LABELS
              ] || method}
              <span className="text-[10px] font-normal">({encs.length})</span>
            </h4>

            {/* Card grid */}
            <div>
              <div className="flex flex-wrap gap-2">
                {sorted.map((enc) => {
                  const pokemon = pokemonNames[enc.pokemonDexId];
                  const name = pokemon?.name || `#${enc.pokemonDexId}`;
                  const types = pokemon?.types || [];
                  const primaryType = types[0] || "normal";
                  const typeColor = TYPE_COLORS[primaryType] || "#A8A878";
                  const rate = enc.encounterRate ?? 0;
                  const isRare = rate > 0 && rate < 5;

                  const card = (
                    <div
                      key={enc.id}
                      className={`w-[200px] relative
                        rounded-lg border bg-card p-3 flex flex-col items-center gap-1.5
                        transition-all duration-150
                        ${isLocked ? "" : "cursor-pointer hover:scale-105 hover:shadow-lg"}
                        ${isRare && !isLocked ? "encounter-rare-pulse" : ""}
                        ${encounterState === "missed" ? "encounter-card-missed" : ""}
                        ${encounterState === "caught" ? "encounter-card-caught" : ""}`}
                      style={
                        {
                          borderBottomWidth: "3px",
                          borderBottomColor: typeColor,
                        } as React.CSSProperties
                      }
                      onClick={isLocked ? () => onPokemonClick?.(enc.pokemonDexId) : undefined}
                    >
                      {/* Caught/Missed overlay icon */}
                      {encounterState === "caught" && (
                        <div className="absolute top-1.5 right-1.5 w-5 h-5 rounded-full bg-green-500 flex items-center justify-center">
                          <Check className="h-3 w-3 text-white" />
                        </div>
                      )}
                      {encounterState === "missed" && (
                        <div className="absolute top-1.5 right-1.5 w-5 h-5 rounded-full bg-muted-foreground/50 flex items-center justify-center">
                          <X className="h-3 w-3 text-white" />
                        </div>
                      )}

                      <PokemonSprite
                        dexId={enc.pokemonDexId}
                        size="lg"
                        name={name}
                      />

                      <span className="text-xs font-medium truncate w-full text-center">
                        {name}
                      </span>

                      {/* Type icons */}
                      <div className="flex gap-1">
                        {types.map((t) => (
                          <TypeIcon key={t} type={t} size="sm" />
                        ))}
                      </div>

                      <span className="text-[10px] text-muted-foreground font-mono">
                        {formatLevel(enc.levelMin, enc.levelMax)}
                      </span>

                      <span className="text-[10px] text-muted-foreground font-mono tabular-nums">
                        {enc.encounterRate !== null ? `${enc.encounterRate}%` : "??%"}
                      </span>
                    </div>
                  );

                  // Wrap with popover only when encounter is available
                  if (isLocked) {
                    return <div key={enc.id}>{card}</div>;
                  }

                  return (
                    <EncounterPopover
                      key={enc.id}
                      encounter={enc}
                      pokemonName={name}
                      types={types}
                      onCaught={() => onEncounterCaught?.(enc)}
                      onMissed={() => onEncounterMissed?.()}
                      onInfo={() => onPokemonClick?.(enc.pokemonDexId)}
                    >
                      {card}
                    </EncounterPopover>
                  );
                })}
              </div>
            </div>
          </div>
        );
      })}
    </div>
  );
}
