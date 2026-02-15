import type { GameConfig, FetchedEncounter, BossTrainerConfig, ManualEncounter } from './types.js';

function escapeSQL(str: string): string {
  return str.replace(/'/g, "''");
}

function nullOrStr(val: string | null | undefined): string {
  if (val == null || val === '') return 'NULL';
  return `'${escapeSQL(val)}'`;
}

function nullOrNum(val: number | null | undefined): string {
  if (val == null) return 'NULL';
  return String(val);
}

function jsonbArr(arr: string[]): string {
  if (arr.length === 0) return "'[]'::jsonb";
  const items = arr.map(m => `"${escapeSQL(m)}"`).join(', ');
  return `'[${items}]'::jsonb`;
}

// ─── Generate the complete SQL migration ─────────────────────────────────────

export function generateMigration(
  config: GameConfig,
  encounters: FetchedEncounter[]
): string {
  const sections: string[] = [];

  // Header
  sections.push(generateHeader(config));

  // Step 1: Game
  sections.push(generateGameInsert(config));

  // Step 2: Routes
  sections.push(generateRoutesInsert(config));

  // Step 3: Starter encounters
  if (config.starters) {
    sections.push(generateStarterEncounters(config));
  }

  // Step 4: Encounters (PokeAPI + manual combined)
  const allEncounters = [...encounters];

  // Add manual encounters from route configs
  for (const route of config.routes) {
    if (route.manualEncounters) {
      for (const me of route.manualEncounters) {
        allEncounters.push({
          routeSlug: route.slug,
          pokemonDexId: me.pokemonDexId,
          method: me.method,
          encounterRate: me.encounterRate,
          levelMin: me.levelMin,
          levelMax: me.levelMax,
          conditions: me.conditions,
          versionExclusive: me.versionExclusive,
        });
      }
    }
  }

  if (allEncounters.length > 0) {
    sections.push(generateEncounterBulk(config, allEncounters));
  }

  // Step 5: Boss trainers
  if (config.bossTrainers.length > 0) {
    sections.push(generateBossTrainers(config));
  }

  // Footer: update total_routes
  const totalRoutes = config.routes.length;
  sections.push(`-- Update total_routes count\nUPDATE public.games SET total_routes = ${totalRoutes} WHERE id = '${config.id}';\n`);

  return sections.join('\n');
}

// ─── Header ──────────────────────────────────────────────────────────────────

function generateHeader(config: GameConfig): string {
  return `-- ===========================================
-- ${config.name.toUpperCase()}: COMPLETE GAME DATA
-- ${config.isRomhack ? `ROM Hack of ${config.baseGameSlug}` : `Official Pokemon Game`}
-- Gen ${config.generation}, ${config.region} region
-- ===========================================
-- Game ID: ${config.id}
-- ===========================================
`;
}

// ─── Step 1: Game Insert ─────────────────────────────────────────────────────

function generateGameInsert(config: GameConfig): string {
  return `-- STEP 1: Insert the game
INSERT INTO public.games (id, slug, name, generation, region, base_game_slug, is_romhack, sprite_url, total_routes, description)
VALUES (
  '${config.id}',
  '${escapeSQL(config.slug)}',
  '${escapeSQL(config.name)}',
  ${config.generation},
  '${escapeSQL(config.region)}',
  ${nullOrStr(config.baseGameSlug)},
  ${config.isRomhack},
  '${escapeSQL(config.spriteUrl)}',
  ${config.routes.length},
  '${escapeSQL(config.description)}'
);
`;
}

// ─── Step 2: Routes Insert ───────────────────────────────────────────────────

function generateRoutesInsert(config: GameConfig): string {
  const lines: string[] = [];
  lines.push(`-- ===========================================`);
  lines.push(`-- STEP 2: ALL ROUTES (${config.routes.length} total)`);
  lines.push(`-- ===========================================`);
  lines.push('');
  lines.push(`INSERT INTO public.routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items, notes) VALUES`);

  const routeLines = config.routes.map((r, i) => {
    const comma = i < config.routes.length - 1 ? ',' : ';';
    return `('${config.id}', '${escapeSQL(r.name)}', '${escapeSQL(r.slug)}', ${r.displayOrder}, '${r.routeType}', ${r.hasEncounters}, ${r.hasTrainers}, ${r.hasItems}, ${nullOrStr(r.notes)})${comma}`;
  });

  lines.push(...routeLines);
  lines.push('');
  return lines.join('\n');
}

// ─── Step 3: Starter Encounters ──────────────────────────────────────────────

function generateStarterEncounters(config: GameConfig): string {
  if (!config.starters) return '';

  const lines: string[] = [];
  lines.push(`-- ===========================================`);
  lines.push(`-- STEP 3: STARTER POKEMON`);
  lines.push(`-- ===========================================`);
  lines.push('');

  for (const starter of config.starters.pokemon) {
    lines.push(`INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max)`);
    lines.push(`SELECT r.id, ${starter.dexId}, 'gift', NULL, ${starter.level}, ${starter.level}`);
    lines.push(`FROM public.routes r WHERE r.slug = '${escapeSQL(config.starters.routeSlug)}' AND r.game_id = '${config.id}';`);
    lines.push('');
  }

  return lines.join('\n');
}

// ─── Step 4: Bulk Encounters ─────────────────────────────────────────────────

function generateEncounterBulk(config: GameConfig, encounters: FetchedEncounter[]): string {
  const lines: string[] = [];
  lines.push(`-- ===========================================`);
  lines.push(`-- STEP 4: ENCOUNTER DATA (${encounters.length} total)`);
  lines.push(`-- ===========================================`);
  lines.push('');
  lines.push(`CREATE TEMP TABLE _enc (slug TEXT, dex INT, method TEXT, rate DECIMAL(5,2), lmin INT, lmax INT, cond TEXT, ver_excl TEXT);`);
  lines.push(`INSERT INTO _enc VALUES`);

  const encLines = encounters.map((e, i) => {
    const comma = i < encounters.length - 1 ? ',' : ';';
    const rate = e.encounterRate != null ? e.encounterRate.toFixed(2) : 'NULL';
    const lmin = nullOrNum(e.levelMin);
    const lmax = nullOrNum(e.levelMax);
    const cond = e.conditions ? `'${escapeSQL(e.conditions)}'` : 'NULL';
    const ver = e.versionExclusive ? `'${escapeSQL(e.versionExclusive)}'` : 'NULL';
    return `('${escapeSQL(e.routeSlug)}', ${e.pokemonDexId}, '${e.method}', ${rate}, ${lmin}, ${lmax}, ${cond}, ${ver})${comma}`;
  });

  lines.push(...encLines);
  lines.push('');
  lines.push(`INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions, version_exclusive)`);
  lines.push(`SELECT r.id, e.dex, e.method, e.rate, e.lmin, e.lmax, NULLIF(e.cond, ''), NULLIF(e.ver_excl, '')`);
  lines.push(`FROM _enc e JOIN public.routes r ON r.slug = e.slug AND r.game_id = '${config.id}';`);
  lines.push('');
  lines.push(`DROP TABLE _enc;`);
  lines.push('');

  return lines.join('\n');
}

// ─── Step 5: Boss Trainers ───────────────────────────────────────────────────

function generateBossTrainers(config: GameConfig): string {
  const lines: string[] = [];
  lines.push(`-- ===========================================`);
  lines.push(`-- STEP 5: BOSS TRAINERS`);
  lines.push(`-- ===========================================`);
  lines.push('');

  for (const trainer of config.bossTrainers) {
    // Use a DO block to insert trainer and get the ID for pokemon
    const trainerId = `trainer_${trainer.routeSlug}_${trainer.displayOrder}`;

    lines.push(`-- ${trainer.name} (${trainer.trainerClass})`);
    lines.push(`DO $$`);
    lines.push(`DECLARE`);
    lines.push(`  v_trainer_id UUID;`);
    lines.push(`  v_route_id UUID;`);
    lines.push(`BEGIN`);
    lines.push(`  SELECT id INTO v_route_id FROM public.routes WHERE slug = '${escapeSQL(trainer.routeSlug)}' AND game_id = '${config.id}';`);
    lines.push(`  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)`);
    lines.push(`  VALUES (v_route_id, '${escapeSQL(trainer.name)}', '${escapeSQL(trainer.trainerClass)}', true, '${trainer.bossType}', ${trainer.levelCap}, ${trainer.displayOrder}, ${nullOrStr(trainer.notes)})`);
    lines.push(`  RETURNING id INTO v_trainer_id;`);
    lines.push('');

    for (const poke of trainer.pokemon) {
      lines.push(`  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)`);
      lines.push(`  VALUES (v_trainer_id, ${poke.pokemonDexId}, ${poke.level}, ${poke.slotOrder}, ${jsonbArr(poke.moves)}, ${nullOrStr(poke.ability)}, ${nullOrStr(poke.heldItem)}, ${nullOrStr(poke.nature)});`);
    }

    lines.push(`END $$;`);
    lines.push('');
  }

  return lines.join('\n');
}
