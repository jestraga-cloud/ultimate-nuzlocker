// ─── Game Configuration Types ────────────────────────────────────────────────

export type RouteType = 'route' | 'city' | 'cave' | 'water' | 'building' | 'special';
export type BossType = 'gym_leader' | 'elite_four' | 'champion' | 'rival' | 'evil_team_leader' | 'totem';
export type EncounterMethod = 'walking' | 'surfing' | 'fishing_old' | 'fishing_good' | 'fishing_super' | 'headbutt' | 'rock_smash' | 'honey_tree' | 'poke_radar' | 'gift' | 'static' | 'trade';

export interface GameConfig {
  id: string;
  slug: string;
  name: string;
  generation: number;
  region: string;
  baseGameSlug: string | null;
  isRomhack: boolean;
  spriteUrl: string;
  description: string;
  pokeapiVersionName: string | null; // null for ROM hacks
  routes: RouteConfig[];
  starters: StarterConfig | null;
  bossTrainers: BossTrainerConfig[];
}

export interface RouteConfig {
  name: string;
  slug: string;
  displayOrder: number;
  routeType: RouteType;
  hasEncounters: boolean;
  hasTrainers: boolean;
  hasItems: boolean;
  notes: string | null;
  pokeapiAreas?: string[]; // PokeAPI location-area slugs for auto-fetching
  manualEncounters?: ManualEncounter[]; // bypass PokeAPI
}

export interface ManualEncounter {
  pokemonDexId: number;
  method: EncounterMethod;
  encounterRate: number | null;
  levelMin: number | null;
  levelMax: number | null;
  conditions: string | null;
  versionExclusive: string | null;
}

export interface StarterConfig {
  routeSlug: string;
  pokemon: { dexId: number; level: number }[];
}

export interface BossTrainerConfig {
  routeSlug: string;
  name: string;
  trainerClass: string;
  bossType: BossType;
  levelCap: number;
  displayOrder: number;
  notes: string | null;
  pokemon: TrainerPokemonConfig[];
}

export interface TrainerPokemonConfig {
  pokemonDexId: number;
  level: number;
  slotOrder: number;
  moves: string[];
  ability: string | null;
  heldItem?: string | null;
  nature?: string | null;
}

// ─── Internal encounter data after fetching ──────────────────────────────────

export interface FetchedEncounter {
  routeSlug: string;
  pokemonDexId: number;
  method: EncounterMethod;
  encounterRate: number | null;
  levelMin: number | null;
  levelMax: number | null;
  conditions: string | null;
  versionExclusive: string | null;
}
