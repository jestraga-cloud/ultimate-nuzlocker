import { SPECIES } from "@smogon/calc";
import { formatPokemonName } from "@/lib/pokeapi/client";

/**
 * Get Pokemon name from dexId for use with @smogon/calc
 * @smogon/calc expects species names like "Charizard", not IDs
 */
export async function getPokemonNameFromDexId(dexId: number): Promise<string> {
  // Fetch from PokeAPI to get accurate name
  const response = await fetch(`https://pokeapi.co/api/v2/pokemon-species/${dexId}`);
  if (!response.ok) {
    throw new Error(`Failed to fetch Pokemon species for dexId ${dexId}`);
  }

  const data = await response.json();
  const name = formatPokemonName(data.name);

  return name;
}

/**
 * Get dexId from Pokemon name
 * Reverse lookup using PokeAPI
 */
export async function getDexIdFromName(name: string): Promise<number> {
  const slug = name.toLowerCase().replace(/\s+/g, "-");
  const response = await fetch(`https://pokeapi.co/api/v2/pokemon-species/${slug}`);

  if (!response.ok) {
    throw new Error(`Failed to fetch Pokemon species for name ${name}`);
  }

  const data = await response.json();
  return data.id;
}

/**
 * Validate if a Pokemon name exists in @smogon/calc's data
 */
export function isValidPokemonName(name: string, generation: number): boolean {
  try {
    // @smogon/calc uses lowercase names with hyphens for IDs
    const pokemonId = name.toLowerCase().replace(/\s+/g, "-");
    return pokemonId in SPECIES[generation];
  } catch {
    return false;
  }
}

/**
 * Get all Pokemon names available in a specific generation
 */
export function getPokemonNamesForGeneration(generation: number): string[] {
  const speciesData = SPECIES[generation];
  if (!speciesData) return [];

  return Object.keys(speciesData)
    .map((id) => {
      // Convert ID back to display name
      return id
        .split("-")
        .map((word) => word.charAt(0).toUpperCase() + word.slice(1))
        .join(" ");
    })
    .sort();
}

/**
 * Normalize Pokemon name to @smogon/calc format
 * Example: "Charizard" -> "charizard", "Mr. Mime" -> "mr-mime"
 */
export function normalizePokemonName(name: string): string {
  return name
    .toLowerCase()
    .replace(/\s+/g, "-")
    .replace(/[.]/g, "");
}

/**
 * Handle regional forms (Alolan, Galarian, etc.)
 */
export function getRegionalFormName(baseName: string, form: string): string {
  const normalized = normalizePokemonName(baseName);
  return `${normalized}-${form.toLowerCase()}`;
}
