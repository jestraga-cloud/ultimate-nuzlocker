import type { MoveCategory } from "@/types/calculator";

const POKEAPI_BASE = "https://pokeapi.co/api/v2";

// In-memory cache for moves (same pattern as client.ts)
const movesCache = new Map<string, { data: unknown; timestamp: number }>();
const CACHE_TTL = 1000 * 60 * 60; // 1 hour

function getCached<T>(key: string): T | null {
  const entry = movesCache.get(key);
  if (entry && Date.now() - entry.timestamp < CACHE_TTL) {
    return entry.data as T;
  }
  return null;
}

function setCache(key: string, data: unknown) {
  movesCache.set(key, { data, timestamp: Date.now() });
}

interface RawMoveData {
  id: number;
  name: string;
  type: { name: string };
  power: number | null;
  accuracy: number | null;
  pp: number;
  priority: number;
  damage_class: { name: string };
  effect_chance: number | null;
  generation: { name: string };
  past_values?: {
    accuracy: number | null;
    power: number | null;
    pp: number | null;
    type: { name: string } | null;
    version_group: { name: string };
  }[];
  meta?: {
    min_hits: number | null;
    max_hits: number | null;
    crit_rate: number;
  };
}

export interface MoveData {
  id: number;
  name: string;
  type: string;
  category: MoveCategory;
  power: number | null;
  accuracy: number | null;
  pp: number;
  priority: number;
  effectChance: number | null;
  minHits: number | null;
  maxHits: number | null;
  critRate: number;
}

async function fetchMoveApi<T>(endpoint: string): Promise<T> {
  const cached = getCached<T>(endpoint);
  if (cached) return cached;

  const res = await fetch(`${POKEAPI_BASE}/${endpoint}`, {
    next: { revalidate: 86400 }, // 24h ISR cache
  });

  if (!res.ok) {
    throw new Error(`PokeAPI error: ${res.status} for ${endpoint}`);
  }

  const data = await res.json();
  setCache(endpoint, data);
  return data as T;
}

/**
 * Map PokeAPI damage class to our MoveCategory type
 */
function mapDamageClass(damageClass: string): MoveCategory {
  if (damageClass === "physical") return "physical";
  if (damageClass === "special") return "special";
  return "status";
}

/**
 * Format move name for display
 */
export function formatMoveName(name: string): string {
  return name
    .split("-")
    .map((w) => w.charAt(0).toUpperCase() + w.slice(1))
    .join(" ");
}

/**
 * Get move data from PokeAPI by name or ID
 */
export async function getMove(nameOrId: string | number): Promise<MoveData> {
  const slug = typeof nameOrId === "string" ? nameOrId.toLowerCase().replace(/\s+/g, "-") : nameOrId;
  const raw = await fetchMoveApi<RawMoveData>(`move/${slug}`);

  return {
    id: raw.id,
    name: formatMoveName(raw.name),
    type: raw.type.name,
    category: mapDamageClass(raw.damage_class.name),
    power: raw.power,
    accuracy: raw.accuracy,
    pp: raw.pp,
    priority: raw.priority,
    effectChance: raw.effect_chance,
    minHits: raw.meta?.min_hits ?? null,
    maxHits: raw.meta?.max_hits ?? null,
    critRate: raw.meta?.crit_rate ?? 0,
  };
}

/**
 * Resolve move power for a specific generation (handles historical changes)
 * Example: Tackle had 50 power in Gen 1-4, 40 in Gen 5, 50 again in Gen 6+
 */
export async function resolveMoveForGeneration(
  nameOrId: string | number,
  generation: number
): Promise<MoveData> {
  const slug = typeof nameOrId === "string" ? nameOrId.toLowerCase().replace(/\s+/g, "-") : nameOrId;
  const raw = await fetchMoveApi<RawMoveData>(`move/${slug}`);

  // Current stats
  let power = raw.power;
  let accuracy = raw.accuracy;
  let pp = raw.pp;
  let type = raw.type.name;

  // Check if there are historical values for this generation
  if (raw.past_values && raw.past_values.length > 0) {
    // Past values are typically ordered from oldest to newest
    // Find the most recent past value that applies to the requested generation
    for (const pastValue of raw.past_values) {
      const versionGroup = pastValue.version_group.name;

      // Map version group to generation (simplified - you may want a complete mapping)
      const pastGen = getGenerationFromVersionGroup(versionGroup);

      if (generation <= pastGen) {
        if (pastValue.power !== null) power = pastValue.power;
        if (pastValue.accuracy !== null) accuracy = pastValue.accuracy;
        if (pastValue.pp !== null) pp = pastValue.pp;
        if (pastValue.type) type = pastValue.type.name;
      }
    }
  }

  return {
    id: raw.id,
    name: formatMoveName(raw.name),
    type,
    category: mapDamageClass(raw.damage_class.name),
    power,
    accuracy,
    pp,
    priority: raw.priority,
    effectChance: raw.effect_chance,
    minHits: raw.meta?.min_hits ?? null,
    maxHits: raw.meta?.max_hits ?? null,
    critRate: raw.meta?.crit_rate ?? 0,
  };
}

/**
 * Map PokeAPI version group to generation number
 * Simplified version - add more mappings as needed
 */
function getGenerationFromVersionGroup(versionGroup: string): number {
  const mapping: Record<string, number> = {
    "red-blue": 1,
    "yellow": 1,
    "gold-silver": 2,
    "crystal": 2,
    "ruby-sapphire": 3,
    "emerald": 3,
    "firered-leafgreen": 3,
    "diamond-pearl": 4,
    "platinum": 4,
    "heartgold-soulsilver": 4,
    "black-white": 5,
    "black-2-white-2": 5,
    "x-y": 6,
    "omega-ruby-alpha-sapphire": 6,
    "sun-moon": 7,
    "ultra-sun-ultra-moon": 7,
    "lets-go-pikachu-lets-go-eevee": 7,
    "sword-shield": 8,
    "brilliant-diamond-shining-pearl": 8,
    "legends-arceus": 8,
    "scarlet-violet": 9,
  };

  return mapping[versionGroup] ?? 9;
}

/**
 * Get all moves for a Pokemon's learnset (for move selection)
 */
export async function getPokemonMoves(dexId: number): Promise<string[]> {
  const raw = await fetchMoveApi<any>(`pokemon/${dexId}`);

  // Extract unique move names from learnset
  const moveNames = new Set<string>();

  for (const moveEntry of raw.moves || []) {
    moveNames.add(formatMoveName(moveEntry.move.name));
  }

  return Array.from(moveNames).sort();
}

/**
 * Filter moves by generation (only show moves available in that generation)
 */
export async function getPokemonMovesByGeneration(
  dexId: number,
  generation: number
): Promise<string[]> {
  const raw = await fetchMoveApi<any>(`pokemon/${dexId}`);

  const moveNames = new Set<string>();

  for (const moveEntry of raw.moves || []) {
    // Check if this move is available in the requested generation
    const availableInGen = moveEntry.version_group_details.some((vg: any) => {
      const vgGen = getGenerationFromVersionGroup(vg.version_group.name);
      return vgGen <= generation;
    });

    if (availableInGen) {
      moveNames.add(formatMoveName(moveEntry.move.name));
    }
  }

  return Array.from(moveNames).sort();
}

/**
 * Search moves by name (for autocomplete)
 */
export function searchMoves(query: string, availableMoves: string[]): string[] {
  const lowerQuery = query.toLowerCase();
  return availableMoves
    .filter((move) => move.toLowerCase().includes(lowerQuery))
    .slice(0, 20); // Limit to 20 results
}
