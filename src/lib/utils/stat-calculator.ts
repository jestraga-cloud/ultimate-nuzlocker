import { calcStat, NATURES, type GenerationNum, type StatsTable, type StatID } from "@smogon/calc";
import type { PokemonStats } from "@/types/pokemon";

/**
 * Nature modifiers for stats
 * Format: { increasedStat, decreasedStat } or null for neutral natures
 */
const NATURE_MODIFIERS: Record<string, { increased: StatID | null; decreased: StatID | null }> = {
  // Neutral natures
  Hardy: { increased: null, decreased: null },
  Docile: { increased: null, decreased: null },
  Serious: { increased: null, decreased: null },
  Bashful: { increased: null, decreased: null },
  Quirky: { increased: null, decreased: null },
  // +Atk natures
  Lonely: { increased: "atk", decreased: "def" },
  Brave: { increased: "atk", decreased: "spe" },
  Adamant: { increased: "atk", decreased: "spa" },
  Naughty: { increased: "atk", decreased: "spd" },
  // +Def natures
  Bold: { increased: "def", decreased: "atk" },
  Relaxed: { increased: "def", decreased: "spe" },
  Impish: { increased: "def", decreased: "spa" },
  Lax: { increased: "def", decreased: "spd" },
  // +SpA natures
  Modest: { increased: "spa", decreased: "atk" },
  Mild: { increased: "spa", decreased: "def" },
  Quiet: { increased: "spa", decreased: "spe" },
  Rash: { increased: "spa", decreased: "spd" },
  // +SpD natures
  Calm: { increased: "spd", decreased: "atk" },
  Gentle: { increased: "spd", decreased: "def" },
  Sassy: { increased: "spd", decreased: "spe" },
  Careful: { increased: "spd", decreased: "spa" },
  // +Spe natures
  Timid: { increased: "spe", decreased: "atk" },
  Hasty: { increased: "spe", decreased: "def" },
  Jolly: { increased: "spe", decreased: "spa" },
  Naive: { increased: "spe", decreased: "spd" },
};

/**
 * Get nature modifier for a specific stat (0.9, 1.0, or 1.1)
 */
export function getNatureModifier(nature: string, stat: StatID): number {
  const modifier = NATURE_MODIFIERS[nature];
  if (!modifier) return 1.0;

  if (modifier.increased === stat) return 1.1;
  if (modifier.decreased === stat) return 0.9;
  return 1.0;
}

/**
 * Calculate a single Pokemon stat using @smogon/calc's formula
 */
export function calculateStat(
  generation: GenerationNum,
  stat: StatID,
  baseStat: number,
  level: number,
  iv: number,
  ev: number,
  nature?: string
): number {
  return calcStat(generation, stat, baseStat, iv, ev, level, nature);
}

/**
 * Calculate HP stat (uses different formula than other stats)
 */
export function calculateHPStat(
  generation: GenerationNum,
  baseHP: number,
  level: number,
  iv: number,
  ev: number
): number {
  return calcStat(generation, "hp", baseHP, iv, ev, level);
}

/**
 * Calculate all stats for a Pokemon
 */
export function calculateAllStats(
  generation: GenerationNum,
  baseStats: PokemonStats,
  level: number,
  nature: string,
  ivs: StatsTable,
  evs: StatsTable
): StatsTable {
  return {
    hp: calculateHPStat(generation, baseStats.hp, level, ivs.hp, evs.hp),
    atk: calculateStat(generation, "atk", baseStats.attack, level, ivs.atk, evs.atk, nature),
    def: calculateStat(generation, "def", baseStats.defense, level, ivs.def, evs.def, nature),
    spa: calculateStat(generation, "spa", baseStats.specialAttack, level, ivs.spa, evs.spa, nature),
    spd: calculateStat(generation, "spd", baseStats.specialDefense, level, ivs.spd, evs.spd, nature),
    spe: calculateStat(generation, "spe", baseStats.speed, level, ivs.spe, evs.spe, nature),
  };
}

/**
 * Validate EV total (max 510 across all stats, max 252 per stat)
 */
export function validateEVs(evs: StatsTable): { valid: boolean; error?: string } {
  const total = evs.hp + evs.atk + evs.def + evs.spa + evs.spd + evs.spe;

  if (total > 510) {
    return { valid: false, error: `Total EVs (${total}) exceed maximum of 510` };
  }

  const invalidStat = Object.entries(evs).find(([_, value]) => value > 252);
  if (invalidStat) {
    return { valid: false, error: `${invalidStat[0].toUpperCase()} EVs (${invalidStat[1]}) exceed maximum of 252` };
  }

  return { valid: true };
}

/**
 * Validate IVs (max 31 per stat)
 */
export function validateIVs(ivs: StatsTable): { valid: boolean; error?: string } {
  const invalidStat = Object.entries(ivs).find(([_, value]) => value > 31 || value < 0);
  if (invalidStat) {
    return { valid: false, error: `${invalidStat[0].toUpperCase()} IVs (${invalidStat[1]}) must be between 0-31` };
  }

  return { valid: true };
}

/**
 * Validate level (1-100)
 */
export function validateLevel(level: number): { valid: boolean; error?: string } {
  if (level < 1 || level > 100) {
    return { valid: false, error: `Level (${level}) must be between 1-100` };
  }

  return { valid: true };
}

/**
 * Get smart EV spread based on Pokemon's base stats
 * Prioritizes highest two stats for competitive spreads
 */
export function getSmartEVSpread(baseStats: PokemonStats): StatsTable {
  const statEntries = [
    { stat: "atk" as const, value: baseStats.attack },
    { stat: "def" as const, value: baseStats.defense },
    { stat: "spa" as const, value: baseStats.specialAttack },
    { stat: "spd" as const, value: baseStats.specialDefense },
    { stat: "spe" as const, value: baseStats.speed },
  ];

  // Sort by base stat value (descending)
  statEntries.sort((a, b) => b.value - a.value);

  // Determine if physical or special attacker
  const isPhysical = baseStats.attack > baseStats.specialAttack;
  const mainAttackStat = isPhysical ? "atk" : "spa";

  // Default spread: 252 in highest attack stat, 252 in speed, 4 in HP
  const spread: StatsTable = {
    hp: 4,
    atk: 0,
    def: 0,
    spa: 0,
    spd: 0,
    spe: 0,
  };

  spread[mainAttackStat] = 252;
  spread.spe = 252;

  return spread;
}

/**
 * Check if a nature exists
 */
export function isValidNature(nature: string): boolean {
  return nature in NATURE_MODIFIERS;
}

/**
 * Get all available natures
 */
export function getAllNatures(): string[] {
  return Object.keys(NATURE_MODIFIERS);
}

/**
 * Get neutral natures (no stat modifiers)
 */
export function getNeutralNatures(): string[] {
  return Object.entries(NATURE_MODIFIERS)
    .filter(([_, mod]) => mod.increased === null)
    .map(([name]) => name);
}
