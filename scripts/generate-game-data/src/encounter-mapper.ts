import type { EncounterMethod, FetchedEncounter, RouteConfig } from './types.js';
import { fetchFromPokeAPI, type PokeAPILocationArea } from './pokeapi-client.js';
import { getDexIdByName } from './pokedex.js';

// ─── PokeAPI method -> our method mapping ────────────────────────────────────

const METHOD_MAP: Record<string, EncounterMethod> = {
  'walk': 'walking',
  'grass-partners': 'walking',
  'yellow-flowers': 'walking',
  'purple-flowers': 'walking',
  'red-flowers': 'walking',
  'rough-terrain': 'walking',
  'dark-grass': 'walking',        // Gen 5 dark/tall grass
  'grass-spots': 'walking',       // Gen 5 rustling grass
  'cave-spots': 'walking',        // Gen 5 dust clouds in caves
  'surf': 'surfing',
  'surf-spots': 'surfing',        // Gen 5 rippling water
  'old-rod': 'fishing_old',
  'good-rod': 'fishing_good',
  'super-rod': 'fishing_super',
  'super-rod-spots': 'fishing_super', // Gen 5 fishing spots
  'headbutt-low': 'headbutt',
  'headbutt-normal': 'headbutt',
  'headbutt-high': 'headbutt',    // Gen 2 headbutt (high encounter trees)
  'rock-smash': 'rock_smash',
  'pokeflute': 'static',
  'only-one': 'static',
  'squirt-bottle': 'static',      // Gen 2 Sudowoodo
  'bridge-spots': 'walking',       // Gen 5 Driftveil Drawbridge shadow spots
  'gift': 'gift',
  'gift-egg': 'gift',
};

// ─── PokeAPI conditions -> readable string ───────────────────────────────────

const CONDITION_MAP: Record<string, string> = {
  'time-morning': 'Morning',
  'time-day': 'Day',
  'time-night': 'Night',
  'radar-on': 'Poke Radar',
  'radar-off': '',
  'swarm-yes': 'Swarm',
  'swarm-no': '',
  'slot2-ruby': 'Ruby in Slot 2',
  'slot2-sapphire': 'Sapphire in Slot 2',
  'slot2-emerald': 'Emerald in Slot 2',
  'slot2-firered': 'FireRed in Slot 2',
  'slot2-leafgreen': 'LeafGreen in Slot 2',
  'slot2-none': '',
  'radio-hoenn': 'Hoenn Sound',
  'radio-sinnoh': 'Sinnoh Sound',
  'radio-off': '',
  'season-spring': 'Spring',
  'season-summer': 'Summer',
  'season-autumn': 'Autumn',
  'season-winter': 'Winter',
};

function mapConditions(conditionValues: { name: string }[]): string | null {
  if (conditionValues.length === 0) return null;

  const mapped = conditionValues
    .map(cv => CONDITION_MAP[cv.name] ?? cv.name)
    .filter(c => c !== '');

  return mapped.length > 0 ? mapped.join(', ') : null;
}

// ─── Fetch encounters for a single route from PokeAPI ────────────────────────

async function fetchRouteEncounters(
  route: RouteConfig,
  versionName: string
): Promise<FetchedEncounter[]> {
  if (!route.pokeapiAreas || route.pokeapiAreas.length === 0) return [];

  const encounters: FetchedEncounter[] = [];

  for (const areaSlug of route.pokeapiAreas) {
    let area: PokeAPILocationArea;
    try {
      area = await fetchFromPokeAPI<PokeAPILocationArea>(`location-area/${areaSlug}`);
    } catch (e) {
      console.warn(`  Warning: Could not fetch area "${areaSlug}" for route "${route.name}": ${e}`);
      continue;
    }

    for (const pokemonEnc of area.pokemon_encounters) {
      // Filter to the target version
      const versionDetail = pokemonEnc.version_details.find(
        vd => vd.version.name === versionName
      );
      if (!versionDetail) continue;

      // Extract dex ID from the pokemon URL
      const urlParts = pokemonEnc.pokemon.url.split('/').filter(Boolean);
      const pokemonId = parseInt(urlParts[urlParts.length - 1]);

      // Group encounter details by method+conditions
      for (const detail of versionDetail.encounter_details) {
        const method = METHOD_MAP[detail.method.name];
        if (!method) {
          console.warn(`  Unknown method: "${detail.method.name}" for ${pokemonEnc.pokemon.name}`);
          continue;
        }

        const conditions = mapConditions(detail.condition_values);

        encounters.push({
          routeSlug: route.slug,
          pokemonDexId: pokemonId,
          method,
          encounterRate: detail.chance > 0 ? detail.chance : null,
          levelMin: detail.min_level,
          levelMax: detail.max_level,
          conditions,
          versionExclusive: null,
        });
      }
    }
  }

  // Deduplicate and aggregate: same pokemon + method + conditions on same route
  return deduplicateEncounters(encounters);
}

function deduplicateEncounters(encounters: FetchedEncounter[]): FetchedEncounter[] {
  const map = new Map<string, FetchedEncounter>();

  for (const enc of encounters) {
    const key = `${enc.routeSlug}|${enc.pokemonDexId}|${enc.method}|${enc.conditions ?? ''}`;

    const existing = map.get(key);
    if (existing) {
      // Merge: take widest level range, sum encounter rate
      existing.levelMin = Math.min(existing.levelMin ?? enc.levelMin ?? 0, enc.levelMin ?? 0);
      existing.levelMax = Math.max(existing.levelMax ?? enc.levelMax ?? 0, enc.levelMax ?? 0);
      if (existing.encounterRate != null && enc.encounterRate != null) {
        existing.encounterRate += enc.encounterRate;
      }
    } else {
      map.set(key, { ...enc });
    }
  }

  return Array.from(map.values());
}

// ─── Fetch all encounters for a game ─────────────────────────────────────────

export async function fetchAllEncounters(
  routes: RouteConfig[],
  versionName: string
): Promise<FetchedEncounter[]> {
  const allEncounters: FetchedEncounter[] = [];
  const routesWithAreas = routes.filter(r => r.pokeapiAreas && r.pokeapiAreas.length > 0);

  console.log(`\nFetching encounters for ${routesWithAreas.length} routes from PokeAPI (version: ${versionName})...`);

  for (let i = 0; i < routesWithAreas.length; i++) {
    const route = routesWithAreas[i];
    console.log(`  [${i + 1}/${routesWithAreas.length}] ${route.name}`);
    const encounters = await fetchRouteEncounters(route, versionName);
    allEncounters.push(...encounters);
  }

  console.log(`  Total encounters fetched: ${allEncounters.length}`);
  return allEncounters;
}
