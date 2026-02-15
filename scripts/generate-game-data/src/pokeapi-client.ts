import * as fs from 'fs';
import * as path from 'path';
import { fileURLToPath } from 'url';

const __dirname = path.dirname(fileURLToPath(import.meta.url));
const CACHE_DIR = path.join(__dirname, '..', '.cache');
const RATE_LIMIT_MS = 250; // Be polite to PokeAPI

let lastRequestTime = 0;

async function sleep(ms: number): Promise<void> {
  return new Promise(resolve => setTimeout(resolve, ms));
}

export async function fetchFromPokeAPI<T>(endpoint: string): Promise<T> {
  const cacheFile = path.join(CACHE_DIR, `${endpoint.replace(/\//g, '_')}.json`);

  // Check disk cache
  if (fs.existsSync(cacheFile)) {
    const data = JSON.parse(fs.readFileSync(cacheFile, 'utf-8'));
    return data as T;
  }

  // Rate limit
  const now = Date.now();
  const elapsed = now - lastRequestTime;
  if (elapsed < RATE_LIMIT_MS) {
    await sleep(RATE_LIMIT_MS - elapsed);
  }
  lastRequestTime = Date.now();

  const url = `https://pokeapi.co/api/v2/${endpoint}`;
  console.log(`  Fetching: ${url}`);
  const response = await fetch(url);

  if (!response.ok) {
    throw new Error(`PokeAPI ${response.status} for ${url}`);
  }

  const data = await response.json();

  // Write cache
  fs.mkdirSync(path.dirname(cacheFile), { recursive: true });
  fs.writeFileSync(cacheFile, JSON.stringify(data, null, 2));

  return data as T;
}

// ─── PokeAPI Response Types ──────────────────────────────────────────────────

export interface PokeAPILocationArea {
  id: number;
  name: string;
  pokemon_encounters: PokeAPIPokemonEncounter[];
}

export interface PokeAPIPokemonEncounter {
  pokemon: { name: string; url: string };
  version_details: PokeAPIVersionDetail[];
}

export interface PokeAPIVersionDetail {
  version: { name: string; url: string };
  max_chance: number;
  encounter_details: PokeAPIEncounterDetail[];
}

export interface PokeAPIEncounterDetail {
  chance: number;
  method: { name: string; url: string };
  min_level: number;
  max_level: number;
  condition_values: { name: string; url: string }[];
}

export interface PokeAPIRegion {
  id: number;
  name: string;
  locations: { name: string; url: string }[];
}

export interface PokeAPILocation {
  id: number;
  name: string;
  region: { name: string; url: string } | null;
  areas: { name: string; url: string }[];
  game_indices: { game_index: number; generation: { name: string; url: string } }[];
}
