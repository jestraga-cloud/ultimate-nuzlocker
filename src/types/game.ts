export type RouteType =
  | "route"
  | "city"
  | "cave"
  | "water"
  | "building"
  | "special";

export type BossType =
  | "gym_leader"
  | "elite_four"
  | "champion"
  | "rival"
  | "evil_team_leader"
  | "totem"
  | null;

export type AdventureStatus = "active" | "completed" | "failed" | "abandoned";

export type CatchStatus = "alive" | "dead" | "boxed" | "in_team";

export type EncounterMethod =
  | "walking"
  | "surfing"
  | "fishing_old"
  | "fishing_good"
  | "fishing_super"
  | "headbutt"
  | "rock_smash"
  | "honey_tree"
  | "poke_radar"
  | "dexnav"
  | "horde"
  | "birds"
  | "gift"
  | "static"
  | "trade";

export interface Game {
  id: string;
  slug: string;
  name: string;
  generation: number | null;
  region: string | null;
  baseGameSlug: string | null;
  isRomhack: boolean;
  spriteUrl: string | null;
  totalRoutes: number;
  description: string | null;
}

export interface Route {
  id: string;
  gameId: string;
  name: string;
  slug: string;
  displayOrder: number;
  routeType: RouteType;
  hasEncounters: boolean;
  hasTrainers: boolean;
  hasItems: boolean;
  notes: string | null;
}

export interface Encounter {
  id: string;
  routeId: string;
  pokemonDexId: number;
  method: EncounterMethod;
  encounterRate: number | null;
  levelMin: number | null;
  levelMax: number | null;
  conditions: string | null;
  versionExclusive: string | null;
}

export interface RouteItem {
  id: string;
  routeId: string;
  itemName: string;
  itemCategory: string | null;
  description: string | null;
  locationHint: string | null;
  isHidden: boolean;
  requires: string | null;
}

export interface Trainer {
  id: string;
  routeId: string;
  name: string;
  trainerClass: string | null;
  isBoss: boolean;
  bossType: BossType;
  levelCap: number | null;
  displayOrder: number;
  notes: string | null;
  pokemon: TrainerPokemon[];
}

export interface TrainerPokemon {
  id: string;
  trainerId: string;
  pokemonDexId: number;
  level: number;
  slotOrder: number;
  moves: string[];
  ability: string | null;
  heldItem: string | null;
  nature: string | null;
}

export interface RouteDetail {
  route: Route;
  encounters: Encounter[];
  items: RouteItem[];
  trainers: Trainer[];
}

export interface Adventure {
  id: string;
  userId: string | null;
  gameId: string;
  name: string;
  status: AdventureStatus;
  rules: Record<string, boolean>;
  startedAt: string;
  completedAt: string | null;
}

export interface Catch {
  id: string;
  adventureId: string;
  routeId: string;
  pokemonDexId: number;
  currentEvolutionDexId: number | null;
  nickname: string | null;
  status: CatchStatus;
  level: number | null;
  nature: string | null;
  ability: string | null;
  heldItem: string | null;
  notes: string | null;
  caughtAt: string;
  diedAt: string | null;
  deathDetails: string | null;
}

export interface RouteProgress {
  adventureId: string;
  routeId: string;
  visited: boolean;
  encounterUsed: boolean;
  notes: string | null;
}

export const ENCOUNTER_METHOD_LABELS: Record<EncounterMethod, string> = {
  walking: "Walking / Tall Grass",
  surfing: "Surfing",
  fishing_old: "Old Rod",
  fishing_good: "Good Rod",
  fishing_super: "Super Rod",
  headbutt: "Headbutt",
  rock_smash: "Rock Smash",
  honey_tree: "Honey Tree",
  poke_radar: "Poké Radar",
  dexnav: "DexNav",
  horde: "Horde",
  birds: "Soaring",
  gift: "Gift",
  static: "Static Encounter",
  trade: "In-Game Trade",
};

export const ROUTE_TYPE_ICONS: Record<RouteType, string> = {
  route: "MapPin",
  city: "Building2",
  cave: "Mountain",
  water: "Waves",
  building: "Home",
  special: "Star",
};

export const ROUTE_TYPE_COLORS: Record<RouteType, string> = {
  route: "#22c55e",
  city: "#3b82f6",
  cave: "#a16207",
  water: "#06b6d4",
  building: "#6b7280",
  special: "#a855f7",
};

// Mascot sprite URLs for each game (canonical source for game sprites)
export const GAME_MASCOT_SPRITES: Record<string, string> = {
  // Gen 1
  "pokemon-red":
    "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/6.png", // Charizard
  "pokemon-blue":
    "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/9.png", // Blastoise
  "pokemon-yellow":
    "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/25.png", // Pikachu
  // Gen 2
  "pokemon-gold":
    "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/250.png", // Ho-Oh
  "pokemon-silver":
    "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/249.png", // Lugia
  "pokemon-crystal":
    "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/245.png", // Suicune
  // Gen 3
  "pokemon-ruby":
    "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/383.png", // Groudon
  "pokemon-sapphire":
    "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/382.png", // Kyogre
  "pokemon-emerald":
    "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/384.png", // Rayquaza
  "pokemon-firered":
    "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/6.png", // Charizard
  "pokemon-leafgreen":
    "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/3.png", // Venusaur
  // Gen 4
  "pokemon-diamond":
    "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/483.png", // Dialga
  "pokemon-pearl":
    "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/484.png", // Palkia
  "pokemon-platinum":
    "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/487.png", // Giratina
  "pokemon-heartgold":
    "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/250.png", // Ho-Oh
  "pokemon-soulsilver":
    "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/249.png", // Lugia
  // Gen 5
  "pokemon-black":
    "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/643.png", // Reshiram
  "pokemon-white":
    "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/644.png", // Zekrom
  "pokemon-black-2":
    "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/646.png", // Kyurem
  "pokemon-white-2":
    "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/646.png", // Kyurem
  // Gen 6
  "pokemon-x":
    "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/716.png", // Xerneas
  "pokemon-y":
    "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/717.png", // Yveltal
  "pokemon-omega-ruby":
    "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/383.png", // Groudon
  "pokemon-alpha-sapphire":
    "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/382.png", // Kyogre
  // ROM Hacks
  "sacred-gold":
    "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/250.png", // Ho-Oh
  "renegade-platinum":
    "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/487.png", // Giratina
};

export const GENERATION_COLORS: Record<number, string> = {
  1: "#FF1111",
  2: "#DAA520",
  3: "#00A86B",
  4: "#4169E1",
  5: "#696969",
  6: "#0066CC",
  7: "#FF6600",
  8: "#FF69B4",
  9: "#8B008B",
};
