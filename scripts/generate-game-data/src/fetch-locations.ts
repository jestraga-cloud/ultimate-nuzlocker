import { fetchFromPokeAPI, type PokeAPIRegion, type PokeAPILocation } from './pokeapi-client.js';

// Helper script to fetch all locations for a region and list their areas
// Usage: npx tsx src/fetch-locations.ts <region-name>
// Example: npx tsx src/fetch-locations.ts sinnoh

async function main() {
  const regionName = process.argv[2];
  if (!regionName) {
    console.log('Usage: npx tsx src/fetch-locations.ts <region-name>');
    console.log('Available regions: kanto, johto, hoenn, sinnoh, unova, kalos, alola, galar, paldea');
    process.exit(1);
  }

  console.log(`Fetching locations for region: ${regionName}\n`);

  const region = await fetchFromPokeAPI<PokeAPIRegion>(`region/${regionName}`);
  console.log(`Found ${region.locations.length} locations\n`);

  const results: { locationName: string; areas: string[] }[] = [];

  for (let i = 0; i < region.locations.length; i++) {
    const locRef = region.locations[i];
    console.log(`[${i + 1}/${region.locations.length}] Fetching: ${locRef.name}`);

    try {
      const encodedName = encodeURIComponent(locRef.name);
      const location = await fetchFromPokeAPI<PokeAPILocation>(`location/${encodedName}`);
      const areas = location.areas.map(a => a.name);
      results.push({ locationName: locRef.name, areas });
    } catch (e) {
      console.warn(`  Warning: Could not fetch "${locRef.name}", skipping`);
      results.push({ locationName: locRef.name, areas: [] });
    }
  }

  // Sort by location name
  results.sort((a, b) => a.locationName.localeCompare(b.locationName));

  console.log(`\n${'='.repeat(80)}`);
  console.log(`LOCATION -> AREA MAPPING for ${regionName.toUpperCase()}`);
  console.log(`${'='.repeat(80)}\n`);

  for (const r of results) {
    if (r.areas.length === 0) {
      console.log(`${r.locationName}: (no areas)`);
    } else {
      console.log(`${r.locationName}:`);
      for (const area of r.areas) {
        console.log(`  - ${area}`);
      }
    }
  }

  // Output as a mapping object for easy copy-paste into configs
  console.log(`\n${'='.repeat(80)}`);
  console.log(`COPY-PASTE MAPPING (TypeScript)`);
  console.log(`${'='.repeat(80)}\n`);

  console.log('const LOCATION_AREA_MAP: Record<string, string[]> = {');
  for (const r of results) {
    if (r.areas.length > 0) {
      const slug = r.locationName
        .replace(`${regionName}-`, '')
        .replace(`${regionName.charAt(0).toUpperCase() + regionName.slice(1)}-`, '');
      console.log(`  '${slug}': [${r.areas.map(a => `'${a}'`).join(', ')}],`);
    }
  }
  console.log('};');
}

main().catch(e => {
  console.error('Error:', e);
  process.exit(1);
});
