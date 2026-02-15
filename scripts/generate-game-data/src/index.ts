import * as fs from 'fs';
import * as path from 'path';
import { fileURLToPath } from 'url';
import { fetchAllEncounters } from './encounter-mapper.js';
import { generateMigration } from './sql-generator.js';
import type { GameConfig, FetchedEncounter } from './types.js';

const __dirname = path.dirname(fileURLToPath(import.meta.url));
const OUTPUT_DIR = path.join(__dirname, '..', 'output');

async function main() {
  const args = process.argv.slice(2);
  const gameArg = args.find(a => a.startsWith('--game='))?.split('=')[1]
    ?? args[args.indexOf('--game') + 1];
  const migrationNum = args.find(a => a.startsWith('--num='))?.split('=')[1]
    ?? args[args.indexOf('--num') + 1]
    ?? null;

  if (!gameArg) {
    console.log('Usage: npx tsx src/index.ts --game <game-slug> [--num <migration-number>]');
    console.log('\nAvailable game configs:');
    const configDir = path.join(__dirname, 'configs');
    if (fs.existsSync(configDir)) {
      const files = fs.readdirSync(configDir).filter(f => f.endsWith('.ts'));
      for (const f of files) {
        console.log(`  - ${f.replace('.ts', '')}`);
      }
    }
    process.exit(1);
  }

  // Dynamic import of game config
  console.log(`\nLoading config: ${gameArg}`);
  let configs: GameConfig[];

  try {
    const configModule = await import(`./configs/${gameArg}.js`);
    // Config module can export a single config or an array (for version pairs)
    configs = Array.isArray(configModule.default)
      ? configModule.default
      : configModule.configs
        ? configModule.configs
        : [configModule.default ?? configModule.config];
  } catch (e) {
    console.error(`Could not load config file: ./configs/${gameArg}.ts`);
    console.error(e);
    process.exit(1);
  }

  fs.mkdirSync(OUTPUT_DIR, { recursive: true });

  let currentMigrationNum = migrationNum ? parseInt(migrationNum, 10) : null;

  for (const config of configs) {
    console.log(`\n${'='.repeat(60)}`);
    console.log(`Processing: ${config.name}`);
    console.log(`${'='.repeat(60)}`);
    console.log(`  Region: ${config.region}, Gen: ${config.generation}`);
    console.log(`  Routes: ${config.routes.length}`);
    console.log(`  Boss Trainers: ${config.bossTrainers.length}`);

    // Fetch encounters from PokeAPI (if not a ROM hack)
    let encounters: FetchedEncounter[] = [];
    if (config.pokeapiVersionName) {
      encounters = await fetchAllEncounters(config.routes, config.pokeapiVersionName);
    }

    // Count manual encounters
    let manualCount = 0;
    for (const route of config.routes) {
      if (route.manualEncounters) {
        manualCount += route.manualEncounters.length;
      }
    }
    if (manualCount > 0) {
      console.log(`  Manual encounters: ${manualCount}`);
    }

    // Generate SQL
    console.log('\nGenerating SQL migration...');
    const sql = generateMigration(config, encounters);

    // Write output
    const numPrefix = currentMigrationNum != null ? `${String(currentMigrationNum).padStart(5, '0')}_` : '';
    const fileName = `${numPrefix}${config.slug.replace(/-/g, '_')}_complete.sql`;
    if (currentMigrationNum != null) currentMigrationNum++;
    const outputPath = path.join(OUTPUT_DIR, fileName);
    fs.writeFileSync(outputPath, sql, 'utf-8');
    console.log(`  Written to: ${outputPath}`);

    // Stats
    const routesWithEncounters = config.routes.filter(r => r.hasEncounters).length;
    const routesSlugsWithData = new Set(encounters.map(e => e.routeSlug));
    const routesMissingData = config.routes
      .filter(r => r.hasEncounters && r.pokeapiAreas && r.pokeapiAreas.length > 0 && !routesSlugsWithData.has(r.slug));

    console.log(`\n  Summary:`);
    console.log(`    Routes with encounters expected: ${routesWithEncounters}`);
    console.log(`    Routes with PokeAPI data: ${routesSlugsWithData.size}`);
    console.log(`    Routes with manual encounters: ${config.routes.filter(r => r.manualEncounters && r.manualEncounters.length > 0).length}`);
    console.log(`    Total encounter rows: ${encounters.length + manualCount}`);
    console.log(`    Boss trainers: ${config.bossTrainers.length}`);

    if (routesMissingData.length > 0) {
      console.log(`\n  WARNING: Routes with PokeAPI areas but no data found:`);
      for (const r of routesMissingData) {
        console.log(`    - ${r.name} (areas: ${r.pokeapiAreas?.join(', ')})`);
      }
    }
  }

  console.log('\nDone!');
}

main().catch(e => {
  console.error('Fatal error:', e);
  process.exit(1);
});
