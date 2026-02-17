import {
  calculate,
  Pokemon,
  Move,
  Field,
  Side,
  type GenerationNum,
  type Result,
} from "@smogon/calc";
import type {
  CalculatorPokemon,
  CalculatorMove,
  FieldConditions,
  DamageResult,
  BattleStatus,
} from "@/types/calculator";
import { normalizePokemonName } from "./pokemon-names";

/**
 * Map our BattleStatus type to @smogon/calc status format
 */
function mapStatus(status: BattleStatus): any {
  if (!status) return undefined;
  return status as any; // Type assertion for @smogon/calc compatibility
}

/**
 * Adapt our CalculatorPokemon to @smogon/calc Pokemon class
 */
function adaptPokemon(pokemon: CalculatorPokemon, generation: GenerationNum): Pokemon {
  const pokemonName = normalizePokemonName(pokemon.name);

  return new Pokemon(generation, pokemonName, {
    level: pokemon.level,
    nature: pokemon.nature || "Hardy",
    ability: pokemon.ability || undefined,
    item: pokemon.item || undefined,
    ivs: {
      hp: pokemon.ivs.hp,
      atk: pokemon.ivs.atk,
      def: pokemon.ivs.def,
      spa: pokemon.ivs.spa,
      spd: pokemon.ivs.spd,
      spe: pokemon.ivs.spe,
    },
    evs: {
      hp: pokemon.evs.hp,
      atk: pokemon.evs.atk,
      def: pokemon.evs.def,
      spa: pokemon.evs.spa,
      spd: pokemon.evs.spd,
      spe: pokemon.evs.spe,
    },
    boosts: pokemon.boosts,
    status: mapStatus(pokemon.status),
    curHP: pokemon.currentHP,
  });
}

/**
 * Adapt our CalculatorMove to @smogon/calc Move class
 */
function adaptMove(move: CalculatorMove, generation: GenerationNum): Move {
  const moveName = move.name.toLowerCase().replace(/\s+/g, "-");

  return new Move(generation, moveName, {
    isCrit: move.isCrit,
    hits: move.hits,
  });
}

/**
 * Capitalize first letter for @smogon/calc format
 */
function capitalize(str: string): string {
  return str.charAt(0).toUpperCase() + str.slice(1);
}

/**
 * Adapt our FieldConditions to @smogon/calc Field class
 */
function adaptField(field: FieldConditions, generation: GenerationNum): Field {
  // @smogon/calc expects capitalized values
  const weather = field.weather ? capitalize(field.weather) : undefined;
  const terrain = field.terrain ? capitalize(field.terrain) : undefined;

  const fieldObj = new Field({
    gameType: "Singles" as any,
    weather: weather as any,
    terrain: terrain as any,
    isGravity: field.gravity,
  } as any);

  // Set attacker side conditions
  if (field.attackerSide.reflect) {
    fieldObj.attackerSide.isReflect = true;
  }
  if (field.attackerSide.lightScreen) {
    fieldObj.attackerSide.isLightScreen = true;
  }
  if (field.attackerSide.auroraVeil) {
    fieldObj.attackerSide.isAuroraVeil = true;
  }
  if (field.attackerSide.tailwind) {
    fieldObj.attackerSide.isTailwind = true;
  }
  if (field.attackerSide.stealthRock) {
    fieldObj.attackerSide.isSR = true;
  }
  if (field.attackerSide.spikes > 0) {
    fieldObj.attackerSide.spikes = field.attackerSide.spikes;
  }

  // Set defender side conditions
  if (field.defenderSide.reflect) {
    fieldObj.defenderSide.isReflect = true;
  }
  if (field.defenderSide.lightScreen) {
    fieldObj.defenderSide.isLightScreen = true;
  }
  if (field.defenderSide.auroraVeil) {
    fieldObj.defenderSide.isAuroraVeil = true;
  }
  if (field.defenderSide.tailwind) {
    fieldObj.defenderSide.isTailwind = true;
  }
  if (field.defenderSide.stealthRock) {
    fieldObj.defenderSide.isSR = true;
  }
  if (field.defenderSide.spikes > 0) {
    fieldObj.defenderSide.spikes = field.defenderSide.spikes;
  }

  return fieldObj;
}

/**
 * Extract KO chance information from @smogon/calc Result
 */
function extractKOChances(result: Result, defenderHP: number): DamageResult["koChances"] {
  const damage = result.damage as number | number[] | [number[], number[]];

  // Flatten damage to a simple number array
  let damageArray: number[];

  if (typeof damage === "number") {
    damageArray = [damage];
  } else if (Array.isArray(damage)) {
    // Check if it's a nested array (for multi-hit moves)
    if (damage.length > 0 && Array.isArray(damage[0])) {
      // Flatten nested arrays
      damageArray = (damage as number[][]).flat();
    } else {
      damageArray = damage as number[];
    }
  } else {
    damageArray = [0];
  }

  const ohkoCount = damageArray.filter((d) => d >= defenderHP).length;
  const twoHkoCount = damageArray.filter((d) => d * 2 >= defenderHP).length;
  const threeHkoCount = damageArray.filter((d) => d * 3 >= defenderHP).length;
  const fourHkoCount = damageArray.filter((d) => d * 4 >= defenderHP).length;

  const total = damageArray.length;

  return {
    ohko: total > 0 ? (ohkoCount / total) * 100 : 0,
    twoHko: total > 0 ? (twoHkoCount / total) * 100 : 0,
    threeHko: total > 0 ? (threeHkoCount / total) * 100 : 0,
    fourHko: total > 0 ? (fourHkoCount / total) * 100 : 0,
  };
}

/**
 * Main calculation function - adapts our types and performs damage calculation
 */
export function calculateDamage(
  attacker: CalculatorPokemon,
  defender: CalculatorPokemon,
  move: CalculatorMove,
  field: FieldConditions,
  generation: GenerationNum
): DamageResult {
  try {
    // Adapt our types to @smogon/calc types
    const smogonAttacker = adaptPokemon(attacker, generation);
    const smogonDefender = adaptPokemon(defender, generation);
    const smogonMove = adaptMove(move, generation);
    const smogonField = adaptField(field, generation);

    // Perform calculation
    const result = calculate(
      generation,
      smogonAttacker,
      smogonDefender,
      smogonMove,
      smogonField
    );

    // Use the HP that @smogon/calc computed from base stats + IVs + EVs + level + nature.
    // This is critical — never use a raw fallback like 100.
    const defenderHP = smogonDefender.stats.hp;

    // Extract damage values
    const rawDamage = result.damage as number | number[] | [number[], number[]];

    // Flatten damage to a simple number array
    let damageArray: number[];
    if (typeof rawDamage === "number") {
      damageArray = [rawDamage];
    } else if (Array.isArray(rawDamage)) {
      if (rawDamage.length > 0 && Array.isArray(rawDamage[0])) {
        damageArray = (rawDamage as number[][]).flat();
      } else {
        damageArray = rawDamage as number[];
      }
    } else {
      damageArray = [0];
    }

    const damagePercent = damageArray.map((d) => (d / defenderHP) * 100);

    // Use @smogon/calc's built-in KO chance calculator
    const koChances = extractKOChances(result, defenderHP);

    // Determine primary KO chance using library result
    const rawKOChanceResult = result.kochance ? result.kochance() : { n: 1, damage: 0, chance: 0 };
    const rawKOChanceValue = rawKOChanceResult.chance ?? 0;
    const koChance: DamageResult["koChance"] = {
      n: rawKOChanceResult.n,
      chance: rawKOChanceValue * 100,
      text: rawKOChanceResult.n === 1
        ? `${(rawKOChanceValue * 100).toFixed(1)}% chance to OHKO`
        : `${(rawKOChanceValue * 100).toFixed(1)}% chance to ${rawKOChanceResult.n}HKO`,
    };
    const rawKOChance = rawKOChanceResult;

    // Get description from result
    const description = result.desc ? [result.desc()] : [];

    return {
      damage: damageArray,
      damagePercent,
      description,
      koChance,
      koChances,
      rawKOChance: rawKOChance as any,
    };
  } catch (error) {
    console.error("Damage calculation error:", error);
    throw new Error(`Failed to calculate damage: ${error instanceof Error ? error.message : String(error)}`);
  }
}

/**
 * Helper to format damage range for display
 */
export function formatDamageRange(result: DamageResult): string {
  const min = Math.min(...result.damage);
  const max = Math.max(...result.damage);
  const minPercent = Math.min(...result.damagePercent).toFixed(1);
  const maxPercent = Math.max(...result.damagePercent).toFixed(1);

  if (min === max) {
    return `${min} (${minPercent}%)`;
  }

  return `${min} - ${max} (${minPercent}% - ${maxPercent}%)`;
}

/**
 * Helper to get average damage
 */
export function getAverageDamage(result: DamageResult): { damage: number; percent: number } {
  const avgDamage = result.damage.reduce((a, b) => a + b, 0) / result.damage.length;
  const avgPercent = result.damagePercent.reduce((a, b) => a + b, 0) / result.damagePercent.length;

  return {
    damage: Math.round(avgDamage),
    percent: avgPercent,
  };
}
