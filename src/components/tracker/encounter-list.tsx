"use client";

import { useState } from "react";
import {
  Collapsible,
  CollapsibleContent,
  CollapsibleTrigger,
} from "@/components/ui/collapsible";
import { ChevronDown } from "lucide-react";
import { EncounterSwimLanes } from "./encounter-swim-lanes";
import type { EncounterListProps } from "./encounter-shared";

export function EncounterList({
  encounters,
  pokemonNames,
  onPokemonClick,
  encounterState,
  routeId,
  onEncounterCaught,
  onEncounterMissed,
}: EncounterListProps) {
  const [isOpen, setIsOpen] = useState(true);

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
      <CollapsibleContent className="pt-3">
        <EncounterSwimLanes
          encounters={encounters}
          pokemonNames={pokemonNames}
          onPokemonClick={onPokemonClick}
          encounterState={encounterState}
          routeId={routeId}
          onEncounterCaught={onEncounterCaught}
          onEncounterMissed={onEncounterMissed}
        />
      </CollapsibleContent>
    </Collapsible>
  );
}
