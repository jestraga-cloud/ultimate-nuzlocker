import type { StatsTable } from "@smogon/calc";

export type BattleStatus = "brn" | "par" | "psn" | "tox" | "slp" | "frz" | null;
export type Weather = "sun" | "rain" | "sand" | "hail" | "harsh-sunshine" | "heavy-rain" | "strong-winds" | null;
export type Terrain = "electric" | "grassy" | "psychic" | "misty" | null;
export type MoveCategory = "physical" | "special" | "status";

export interface CalculatorPokemon {
  dexId: number;
  name: string;
  level: number;
  nature: string;
  ability: string | null;
  item: string | null;
  types: string[];
  baseStats: StatsTable;
  evs: StatsTable;
  ivs: StatsTable;
  status: BattleStatus;
  boosts: Partial<StatsTable>;
  currentHP?: number;
  maxHP?: number;
  availableAbilities: string[];
  // Move slots
  move1: CalculatorMove | null;
  move2: CalculatorMove | null;
  move3: CalculatorMove | null;
  move4: CalculatorMove | null;
}

export interface CalculatorMove {
  name: string;
  type: string;
  category: MoveCategory;
  basePower: number | null;
  accuracy: number | null;
  priority: number;
  isCrit: boolean;
  hits?: number;
}

export interface SideConditions {
  reflect: boolean;
  lightScreen: boolean;
  auroraVeil: boolean;
  stealthRock: boolean;
  spikes: number; // 0-3 layers
  toxicSpikes: number; // 0-2 layers
  tailwind: boolean;
}

export interface FieldConditions {
  weather: Weather;
  terrain: Terrain;
  attackerSide: SideConditions;
  defenderSide: SideConditions;
  gravity: boolean;
  trickRoom: boolean;
}

export interface DamageResult {
  damage: number[];
  damagePercent: number[];
  description: string[];
  koChance: {
    n: number;
    chance: number;
    text: string;
  };
  koChances: {
    ohko: number;
    twoHko: number;
    threeHko: number;
    fourHko: number;
  };
  rawKOChance: {
    n: number;
    damage: number;
    chance: number;
  };
}

export interface EVSpread {
  name: string;
  hp: number;
  atk: number;
  def: number;
  spa: number;
  spd: number;
  spe: number;
}

export const EV_PRESETS: EVSpread[] = [
  {
    name: "Untrained",
    hp: 0,
    atk: 0,
    def: 0,
    spa: 0,
    spd: 0,
    spe: 0,
  },
  {
    name: "Max Physical",
    hp: 4,
    atk: 252,
    def: 0,
    spa: 0,
    spd: 0,
    spe: 252,
  },
  {
    name: "Max Special",
    hp: 4,
    atk: 0,
    def: 0,
    spa: 252,
    spd: 0,
    spe: 252,
  },
  {
    name: "Bulk",
    hp: 252,
    atk: 0,
    def: 252,
    spa: 0,
    spd: 4,
    spe: 0,
  },
];

export const PERFECT_IVS: StatsTable = {
  hp: 31,
  atk: 31,
  def: 31,
  spa: 31,
  spd: 31,
  spe: 31,
};

export const DEFAULT_EVS: StatsTable = {
  hp: 0,
  atk: 0,
  def: 0,
  spa: 0,
  spd: 0,
  spe: 0,
};

export const DEFAULT_BOOSTS: Partial<StatsTable> = {
  atk: 0,
  def: 0,
  spa: 0,
  spd: 0,
  spe: 0,
};

export const DEFAULT_SIDE_CONDITIONS: SideConditions = {
  reflect: false,
  lightScreen: false,
  auroraVeil: false,
  stealthRock: false,
  spikes: 0,
  toxicSpikes: 0,
  tailwind: false,
};

export const DEFAULT_FIELD_CONDITIONS: FieldConditions = {
  weather: null,
  terrain: null,
  attackerSide: { ...DEFAULT_SIDE_CONDITIONS },
  defenderSide: { ...DEFAULT_SIDE_CONDITIONS },
  gravity: false,
  trickRoom: false,
};
