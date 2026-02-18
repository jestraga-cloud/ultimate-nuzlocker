import type { Encounter } from "@/types/game";
import type { LocalCatch } from "@/lib/store/types";
import { Leaf, Waves, Fish, Gift, Compass, Users, Bird, Hammer, Zap, ArrowLeftRight } from "lucide-react";

export const TYPE_COLORS: Record<string, string> = {
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

export const METHOD_ICONS: Record<string, React.ElementType> = {
  walking: Leaf,
  surfing: Waves,
  fishing_old: Fish,
  fishing_good: Fish,
  fishing_super: Fish,
  dexnav: Compass,
  horde: Users,
  birds: Bird,
  rock_smash: Hammer,
  gift: Gift,
  static: Zap,
  trade: ArrowLeftRight,
};

/** Lower number = appears first in UI */
export const METHOD_PRIORITY: Record<string, number> = {
  gift: 0,
  walking: 1,
  dexnav: 2,
  horde: 3,
  rock_smash: 4,
  surfing: 5,
  fishing_old: 6,
  fishing_good: 7,
  fishing_super: 8,
  birds: 9,
  static: 10,
  trade: 11,
  headbutt: 12,
  honey_tree: 13,
  poke_radar: 14,
};

export function getRateColor(rate: number): string {
  if (rate >= 20) return "#22c55e";
  if (rate >= 10) return "#eab308";
  if (rate >= 5) return "#f97316";
  return "#ef4444";
}

export type EncounterState = "null" | "missed" | "caught";

export function getEncounterState(
  routeId: string,
  encounterUsed: boolean,
  catches: LocalCatch[]
): EncounterState {
  if (!encounterUsed) return "null";
  return catches.some((c) => c.routeId === routeId) ? "caught" : "missed";
}

export interface EncounterListProps {
  encounters: Encounter[];
  pokemonNames: Record<number, { name: string; types: string[] }>;
  onPokemonClick?: (dexId: number) => void;
  encounterState: EncounterState;
  routeId: string;
  onEncounterCaught?: (encounter: Encounter) => void;
  onEncounterMissed?: () => void;
}

export function groupByMethod(encounters: Encounter[]): Record<string, Encounter[]> {
  const groups: Record<string, Encounter[]> = {};
  for (const enc of encounters) {
    if (!groups[enc.method]) groups[enc.method] = [];
    groups[enc.method].push(enc);
  }
  return groups;
}

/** Sort encounters by rate ascending (rarest first) */
export function sortByRate(encounters: Encounter[]): Encounter[] {
  return [...encounters].sort(
    (a, b) => (a.encounterRate ?? 0) - (b.encounterRate ?? 0)
  );
}
