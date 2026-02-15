import type { PokemonData, PokemonStats, PokemonAbility, EvolutionChain, EvolutionNode } from "@/types/pokemon";

const POKEAPI_BASE = "https://pokeapi.co/api/v2";
const SPRITE_BASE =
  "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon";

// In-memory cache for the current session
const memoryCache = new Map<string, { data: unknown; timestamp: number }>();
const CACHE_TTL = 1000 * 60 * 60; // 1 hour in-memory

function getCached<T>(key: string): T | null {
  const entry = memoryCache.get(key);
  if (entry && Date.now() - entry.timestamp < CACHE_TTL) {
    return entry.data as T;
  }
  return null;
}

function setCache(key: string, data: unknown) {
  memoryCache.set(key, { data, timestamp: Date.now() });
}

async function fetchPokeApi<T>(endpoint: string): Promise<T> {
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

interface RawPokemonData {
  id: number;
  name: string;
  types: { slot: number; type: { name: string } }[];
  stats: { base_stat: number; stat: { name: string } }[];
  abilities: { ability: { name: string }; is_hidden: boolean }[];
  height: number;
  weight: number;
  species: { url: string };
  past_types?: {
    generation: { name: string };
    types: { slot: number; type: { name: string } }[];
  }[];
}

interface RawSpeciesData {
  id: number;
  name: string;
  generation: { name: string };
  evolution_chain: { url: string };
  varieties: {
    is_default: boolean;
    pokemon: { name: string; url: string };
  }[];
}

function parseStats(
  stats: { base_stat: number; stat: { name: string } }[]
): PokemonStats {
  const statMap: Record<string, keyof PokemonStats> = {
    hp: "hp",
    attack: "attack",
    defense: "defense",
    "special-attack": "specialAttack",
    "special-defense": "specialDefense",
    speed: "speed",
  };

  const result: PokemonStats = {
    hp: 0,
    attack: 0,
    defense: 0,
    specialAttack: 0,
    specialDefense: 0,
    speed: 0,
  };

  for (const s of stats) {
    const key = statMap[s.stat.name];
    if (key) result[key] = s.base_stat;
  }

  return result;
}

function extractGenNumber(genName: string): number {
  const romanMap: Record<string, number> = {
    i: 1,
    ii: 2,
    iii: 3,
    iv: 4,
    v: 5,
    vi: 6,
    vii: 7,
    viii: 8,
    ix: 9,
  };
  const match = genName.match(/generation-(\w+)/);
  if (match) return romanMap[match[1]] || 0;
  return 0;
}

export function resolveStatsForGeneration(
  rawStats: { base_stat: number; stat: { name: string } }[],
  pastStats:
    | {
        generation: { name: string };
        stats: { base_stat: number; stat: { name: string } }[];
      }[]
    | undefined,
  generation: number
): PokemonStats {
  const currentStats = parseStats(rawStats);

  if (!pastStats || pastStats.length === 0) {
    return currentStats;
  }

  // past_stats entries are ordered oldest to newest
  // Each entry shows what the stats WERE for that generation and earlier
  for (const pastEntry of pastStats) {
    const pastGen = extractGenNumber(pastEntry.generation.name);
    if (generation <= pastGen) {
      return parseStats(pastEntry.stats);
    }
  }

  return currentStats;
}

export function resolveTypesForGeneration(
  types: { slot: number; type: { name: string } }[],
  pastTypes:
    | {
        generation: { name: string };
        types: { slot: number; type: { name: string } }[];
      }[]
    | undefined,
  generation: number
): string[] {
  if (!pastTypes || pastTypes.length === 0) {
    return types.map((t) => t.type.name);
  }

  for (const pastEntry of pastTypes) {
    const pastGen = extractGenNumber(pastEntry.generation.name);
    if (generation <= pastGen) {
      return pastEntry.types.map((t) => t.type.name);
    }
  }

  return types.map((t) => t.type.name);
}

export async function getPokemon(
  dexId: number,
  generation?: number
): Promise<PokemonData> {
  const raw = await fetchPokeApi<RawPokemonData>(`pokemon/${dexId}`);

  const stats = generation
    ? resolveStatsForGeneration(
        raw.stats,
        // We need to fetch the form data for past_stats
        undefined,
        generation
      )
    : parseStats(raw.stats);

  const types = generation
    ? resolveTypesForGeneration(raw.types, raw.past_types, generation)
    : raw.types.map((t) => t.type.name);

  const abilities: PokemonAbility[] = raw.abilities.map((a) => ({
    name: a.ability.name
      .split("-")
      .map((w) => w.charAt(0).toUpperCase() + w.slice(1))
      .join(" "),
    isHidden: a.is_hidden,
  }));

  // Extract species ID and evolution chain ID
  const speciesId = parseInt(raw.species.url.split("/").filter(Boolean).pop()!);

  return {
    dexId: raw.id,
    name: raw.name
      .split("-")
      .map((w) => w.charAt(0).toUpperCase() + w.slice(1))
      .join(" "),
    types,
    stats,
    abilities,
    spriteUrl: getSpriteUrl(raw.id),
    spriteShinyUrl: getSpriteUrl(raw.id, "shiny"),
    speciesId,
    evolutionChainId: 0, // Filled by species fetch if needed
    height: raw.height,
    weight: raw.weight,
  };
}

export async function getPokemonSpecies(dexId: number) {
  const raw = await fetchPokeApi<RawSpeciesData>(`pokemon-species/${dexId}`);

  const chainId = parseInt(
    raw.evolution_chain.url.split("/").filter(Boolean).pop()!
  );

  return {
    dexId: raw.id,
    name: raw.name,
    generationIntroduced: extractGenNumber(raw.generation.name),
    evolutionChainId: chainId,
    varieties: raw.varieties.map((v) => ({
      name: v.pokemon.name,
      dexId: parseInt(v.pokemon.url.split("/").filter(Boolean).pop()!),
      isDefault: v.is_default,
    })),
  };
}

export function getSpriteUrl(
  dexId: number,
  variant?: "default" | "shiny"
): string {
  if (variant === "shiny") {
    return `${SPRITE_BASE}/shiny/${dexId}.png`;
  }
  return `${SPRITE_BASE}/${dexId}.png`;
}

export function formatPokemonName(name: string): string {
  return name
    .split("-")
    .map((w) => w.charAt(0).toUpperCase() + w.slice(1))
    .join(" ");
}

// --- Evolution chain ---

interface RawEvolutionChain {
  id: number;
  chain: RawChainLink;
}

interface RawChainLink {
  species: { name: string; url: string };
  evolves_to: RawChainLink[];
  evolution_details: {
    trigger: { name: string };
    min_level?: number | null;
    item?: { name: string } | null;
    held_item?: { name: string } | null;
    min_happiness?: number | null;
    min_beauty?: number | null;
    min_affection?: number | null;
    time_of_day?: string;
    known_move?: { name: string } | null;
    known_move_type?: { name: string } | null;
    location?: { name: string } | null;
    trade_species?: { name: string } | null;
  }[];
}

function parseChainLink(link: RawChainLink): EvolutionNode {
  const dexId = parseInt(link.species.url.split("/").filter(Boolean).pop()!);

  return {
    dexId,
    name: formatPokemonName(link.species.name),
    spriteUrl: getSpriteUrl(dexId),
    evolvesTo: link.evolves_to.map((evo) => {
      const detail = evo.evolution_details[0];
      let trigger = detail?.trigger?.name || "unknown";
      let triggerDetail = "";

      if (trigger === "level-up") {
        if (detail.min_level) triggerDetail = `Level ${detail.min_level}`;
        else if (detail.min_happiness) triggerDetail = `Happiness ${detail.min_happiness}`;
        else if (detail.known_move) triggerDetail = `Knows ${formatPokemonName(detail.known_move.name)}`;
        else if (detail.location) triggerDetail = `At ${formatPokemonName(detail.location.name)}`;
        else if (detail.time_of_day) triggerDetail = `${detail.time_of_day} level up`;
        else triggerDetail = "Level up";
      } else if (trigger === "use-item" && detail.item) {
        triggerDetail = formatPokemonName(detail.item.name);
      } else if (trigger === "trade") {
        if (detail.trade_species) triggerDetail = `Trade for ${formatPokemonName(detail.trade_species.name)}`;
        else if (detail.held_item) triggerDetail = `Trade holding ${formatPokemonName(detail.held_item.name)}`;
        else triggerDetail = "Trade";
      } else {
        trigger = "other";
        triggerDetail = "Special";
      }

      return {
        node: parseChainLink(evo),
        trigger,
        triggerDetail,
      };
    }),
  };
}

export async function getEvolutionChain(
  chainId: number
): Promise<EvolutionChain> {
  const raw = await fetchPokeApi<RawEvolutionChain>(
    `evolution-chain/${chainId}`
  );

  return {
    id: raw.id,
    chain: parseChainLink(raw.chain),
  };
}

export function getStatTotal(stats: PokemonStats): number {
  return (
    stats.hp +
    stats.attack +
    stats.defense +
    stats.specialAttack +
    stats.specialDefense +
    stats.speed
  );
}
