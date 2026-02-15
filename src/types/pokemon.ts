export interface PokemonStats {
  hp: number;
  attack: number;
  defense: number;
  specialAttack: number;
  specialDefense: number;
  speed: number;
}

export interface PokemonAbility {
  name: string;
  isHidden: boolean;
}

export interface PokemonData {
  dexId: number;
  name: string;
  types: string[];
  stats: PokemonStats;
  abilities: PokemonAbility[];
  spriteUrl: string;
  spriteShinyUrl: string;
  speciesId: number;
  evolutionChainId: number;
  height: number;
  weight: number;
}

export interface EvolutionNode {
  dexId: number;
  name: string;
  spriteUrl: string;
  evolvesTo: {
    node: EvolutionNode;
    trigger: string;
    triggerDetail: string;
  }[];
}

export interface EvolutionChain {
  id: number;
  chain: EvolutionNode;
}

export interface PokemonSpecies {
  dexId: number;
  name: string;
  generationIntroduced: number;
  evolutionChainId: number;
  varieties: { name: string; dexId: number; isDefault: boolean }[];
}

export interface PokemonOverride {
  id: string;
  gameId: string;
  pokemonDexId: number;
  customName: string | null;
  customTypes: string[] | null;
  customStats: PokemonStats | null;
  customAbilities: string[] | null;
  customEvolutionChain: unknown | null;
  notes: string | null;
}

export const POKEMON_TYPES = [
  "normal",
  "fire",
  "water",
  "electric",
  "grass",
  "ice",
  "fighting",
  "poison",
  "ground",
  "flying",
  "psychic",
  "bug",
  "rock",
  "ghost",
  "dragon",
  "dark",
  "steel",
  "fairy",
] as const;

export type PokemonType = (typeof POKEMON_TYPES)[number];

export const TYPE_COLORS: Record<PokemonType, string> = {
  normal: "#A8A77A",
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
