/**
 * Processes the Crystal walkthrough JSON data and generates SQL
 * for regular (non-boss) trainers to add to the Crystal migration file.
 */
const fs = require('fs');
const path = require('path');

// Use the original unmodified JSON (not the manually curated version) so we
// don't miss trainers with encoding issues (PokéFan, PokéManiac, etc.)
const jsonData = JSON.parse(
  fs.readFileSync(path.join('c:/Users/Jairo/Desktop', 'crystal_walkthrough_parts.json'), 'utf-8')
);

const GAME_ID = 'e1f2a3b4-c5d6-7890-ef12-345678901234';

// Map JSON area names to route slugs
const AREA_TO_SLUG = {
  'Route 1': 'route-1',
  'Route 2': 'route-2',
  'Route 6': 'route-6',
  'Route 8': 'route-8',
  'Route 9': 'route-9',
  'Route 10 (South)': 'route-10',
  'Route 10 (North)': 'route-10',
  'Route 11': 'route-11',
  'Route 12': 'route-12',
  'Route 13': 'route-13',
  'Route 14': 'route-14',
  'Route 15': 'route-15',
  'Route 17': 'route-17',
  'Route 18': 'route-18',
  'Route 19': 'route-19',
  'Route 20': 'route-20',
  'Route 21': 'route-21',
  'Route 24': 'route-24',
  'Route 25': 'route-25',
  'Route 26': 'route-26',
  'Route 27': 'route-27',
  'Route 30': 'route-30',
  'Route 31': 'route-31',
  'Route 32': 'route-32',
  'Route 33': 'route-33',
  'Route 34': 'route-34',
  'Route 35': 'route-35',
  'Route 36': 'route-36',
  'Route 37': 'route-37',
  'Route 38': 'route-38',
  'Route 39': 'route-39',
  'Route 40': 'route-40',
  'Route 41': 'route-41',
  'Route 42': 'route-42',
  'Route 43': 'route-43',
  'Route 44': 'route-44',
  'Route 45': 'route-45',
  'Route 46': 'route-46',
  'Sprout Tower': 'sprout-tower',
  'Slowpoke Well': 'slowpoke-well',
  'Union Cave': 'union-cave',
  'Ruins of Alph': 'ruins-of-alph',
  'Ilex Forest': 'ilex-forest',
  'National Park': 'national-park',
  'Lake of Rage': 'lake-of-rage',
  'Mt. Mortar': 'mt-mortar',
  'Violet Gym': 'violet-city',
  'Azalea Gym': 'azalea-town',
  'Goldenrod Gym': 'goldenrod-city',
  'Ecruteak Gym': 'ecruteak-city',
  'Cianwood Gym': 'cianwood-city',
  'Mahogany Gym': 'mahogany-town',
  'Blackthorn Gym': 'blackthorn-city',
  'Vermilion Gym': 'vermilion-city',
  'Saffron Gym': 'saffron-city',
  'Cerulean Gym': 'cerulean-city',
  'Celadon Gym': 'celadon-city',
  'Fuchsia Gym': 'fuchsia-city',
  'Pewter Gym': 'pewter-city',
  'Olivine City': 'olivine-city',
  'Ecruteak City': 'ecruteak-city',
  'Goldenrod City': 'goldenrod-city',
  'Mahogany Town': 'mahogany-town',
};

// Areas to SKIP because their trainers are included in sub-area entries
// (they combine trainers from different routes which would cause misplacement)
const SKIP_AREAS = new Set([
  'Violet City',     // Trainers split between sprout-tower and violet-city
  'Azalea Town',     // Trainers split between slowpoke-well and azalea-town
  'Cianwood City',   // All trainers in Cianwood Gym
  'Blackthorn City', // All trainers in Blackthorn Gym
  'Vermilion City',  // All trainers in Vermilion Gym
  'Saffron City',    // All trainers in Saffron Gym
  'Cerulean City',   // All trainers in Cerulean Gym (except Part_19 Gym entry)
  'Celadon City',    // All trainers in Celadon Gym
  'Fuchsia City',    // All trainers in Fuchsia Gym
  'Pewter City',     // All trainers in Pewter Gym
  'Radio Tower',     // Same trainers as Goldenrod City Part_12
]);

// Known trainer classes (multi-word first for prefix matching)
const TRAINER_CLASSES = [
  'Bug Catcher', 'Bird Keeper', 'Super Nerd', 'Rocket Grunt',
  'Kimono Girl', 'Cooltrainer', 'Youngster', 'Sage', 'Hiker',
  'Picnicker', 'Camper', 'Fisher', 'Psychic', 'Twins',
  'Firebreather', 'Officer', 'Beauty', 'Lass', 'Swimmer',
  'Sailor', 'Medium', 'Blackbelt', 'Schoolboy', 'Juggler',
  'Guitarist', 'Gentleman', 'Boarder', 'Skier', 'Scientist',
  'Burglar', 'Biker', 'Teacher',
];

// Routes that already have boss trainers and their max display_order
const BOSS_ROUTES = {
  'violet-city': 1, 'azalea-town': 1, 'goldenrod-city': 1,
  'ecruteak-city': 1, 'cianwood-city': 1, 'olivine-city': 1,
  'mahogany-town': 1, 'blackthorn-city': 1, 'indigo-plateau': 5,
  'vermilion-city': 1, 'saffron-city': 1, 'cerulean-city': 1,
  'celadon-city': 1, 'fuchsia-city': 1, 'pewter-city': 1,
  'viridian-city': 1, 'mt-silver': 1,
};

function fixEncoding(str) {
  return str
    // Corrupted encoding fallbacks
    .replace(/PokÃ©Maniac/g, 'PokéManiac')
    .replace(/PokÃ©maniac/g, 'PokéManiac')
    .replace(/PokÃ©fan/g, 'PokéFan')
    .replace(/PokÃ©Fan/g, 'PokéFan')
    .replace(/Swimmerâ\x99\x82/g, 'Swimmer')
    .replace(/Swimmerâ\x99\x80/g, 'Swimmer')
    .replace(/Swimmerâ/g, 'Swimmer')
    .replace(/ã¢ã¤ã«.*?Reward/g, 'Reward')
    .replace(/ããã¦ã­.*?Reward/g, 'Reward')
    // Normalize proper Unicode variants
    .replace(/Pokéfan/g, 'PokéFan')       // lowercase f → capital F
    .replace(/Pokémaniac/g, 'PokéManiac')  // lowercase m → capital M
    .replace(/Swimmer♂/g, 'Swimmer')       // U+2642 male symbol
    .replace(/Swimmer♀/g, 'Swimmer');      // U+2640 female symbol
}

function cleanName(name) {
  // Strip Japanese characters (Katakana, Hiragana, CJK) and any romanized duplicates after them
  // e.g. "Megan アヤカ Ayaka" → "Megan"
  return name.replace(/[\u3000-\u9FFF\uFF00-\uFFEF]+.*$/, '').trim();
}

function parseTrainerClassAndName(rawName) {
  const fixed = fixEncoding(rawName);
  const rewardIdx = fixed.indexOf('Reward:');
  if (rewardIdx === -1) return null;

  let prefix = fixed.substring(0, rewardIdx).trim();

  // Handle PokéManiac and PokéFan specially
  if (prefix.startsWith('PokéManiac')) {
    const name = cleanName(prefix.substring('PokéManiac'.length).trim());
    return { trainerClass: 'PokéManiac', name: name || 'PokéManiac' };
  }
  if (prefix.startsWith('PokéFan')) {
    const name = cleanName(prefix.substring('PokéFan'.length).trim());
    return { trainerClass: 'PokéFan', name: name || 'PokéFan' };
  }

  for (const cls of TRAINER_CLASSES) {
    if (prefix.startsWith(cls)) {
      const name = cleanName(prefix.substring(cls.length).trim());
      if (cls === 'Rocket Grunt') {
        return { trainerClass: 'Team Rocket', name: 'Grunt' };
      }
      return { trainerClass: cls, name: name || cls };
    }
  }

  console.error(`Could not parse trainer class from: "${prefix}"`);
  return { trainerClass: 'Trainer', name: prefix };
}

function isRealTrainer(entry) {
  const name = entry.name;
  if (!name.includes('Reward:')) return false;
  if (name.startsWith('Trainer Pok') || name.startsWith('Trainer PokÃ')) return false;
  if ((name.match(/Reward:/g) || []).length > 1) return false;
  // Filter out Pokemon entries that somehow have "Reward:" in them
  if (/^\w+\s*[\u2013\u2212\u00e2\u2014-]\s*Lv\./.test(name)) return false;
  return true;
}

// Collect trainers per route slug
const routeTrainers = {};
const skippedAreas = new Set();

for (const entry of jsonData) {
  // Skip combined city entries that would cause misplacement
  if (SKIP_AREAS.has(entry.area)) {
    continue;
  }

  const slug = AREA_TO_SLUG[entry.area];
  if (!slug) {
    if (entry.trainers && entry.trainers.length > 0) {
      // Check if any entry has real trainers before reporting as skipped
      const hasReal = entry.trainers.some(t => isRealTrainer(t));
      if (hasReal) skippedAreas.add(entry.area);
    }
    continue;
  }

  if (!routeTrainers[slug]) {
    routeTrainers[slug] = [];
  }

  for (const trainer of entry.trainers) {
    if (!isRealTrainer(trainer)) continue;

    const parsed = parseTrainerClassAndName(trainer.name);
    if (!parsed) continue;

    // For Team Rocket grunts, don't deduplicate (they're different trainers)
    if (parsed.trainerClass === 'Team Rocket') {
      routeTrainers[slug].push({
        trainerClass: parsed.trainerClass,
        name: parsed.name,
        pokemonCount: trainer.pokemon_count,
        levels: trainer.levels,
      });
      continue;
    }

    // Deduplicate by class + name
    const key = `${parsed.trainerClass}|${parsed.name}`;
    const exists = routeTrainers[slug].some(
      (t) => `${t.trainerClass}|${t.name}` === key
    );

    if (!exists) {
      routeTrainers[slug].push({
        trainerClass: parsed.trainerClass,
        name: parsed.name,
        pokemonCount: trainer.pokemon_count,
        levels: trainer.levels,
      });
    }
  }
}

// Number Rocket Grunts per route
for (const [slug, trainers] of Object.entries(routeTrainers)) {
  const grunts = trainers.filter(t => t.trainerClass === 'Team Rocket');
  if (grunts.length > 1) {
    grunts.forEach((g, i) => { g.name = `Grunt ${i + 1}`; });
  }
}

// Generate SQL
let sql = '';
sql += `-- ===========================================\n`;
sql += `-- STEP 6: REGULAR TRAINERS\n`;
sql += `-- ===========================================\n\n`;

const ROUTE_ORDER = [
  'route-30', 'route-31', 'sprout-tower', 'violet-city',
  'route-32', 'ruins-of-alph', 'union-cave', 'route-33',
  'slowpoke-well', 'azalea-town', 'ilex-forest', 'route-34',
  'goldenrod-city', 'route-35', 'national-park', 'route-36', 'route-37',
  'ecruteak-city', 'route-38', 'route-39',
  'olivine-city', 'route-40', 'route-41',
  'cianwood-city', 'route-42', 'mt-mortar',
  'mahogany-town', 'route-43', 'lake-of-rage',
  'route-44', 'blackthorn-city', 'route-45', 'route-46',
  'route-27', 'route-26',
  'vermilion-city', 'route-6', 'saffron-city',
  'route-8', 'route-10', 'route-9',
  'route-24', 'route-25', 'cerulean-city',
  'celadon-city', 'route-17', 'route-18', 'fuchsia-city',
  'route-15', 'route-14', 'route-13', 'route-12',
  'route-11', 'route-2', 'pewter-city',
  'route-1', 'route-21', 'route-20', 'route-19',
];

for (const slug of ROUTE_ORDER) {
  const trainers = routeTrainers[slug];
  if (!trainers || trainers.length === 0) continue;

  const startOrder = (BOSS_ROUTES[slug] || 0) + 1;
  const areaName = slug.split('-').map(w => w.charAt(0).toUpperCase() + w.slice(1)).join(' ');

  sql += `-- ${areaName} regular trainers\n`;
  sql += `INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)\n`;
  sql += `SELECT r.id, t.name, t.class, false, t.ord\n`;
  sql += `FROM public.routes r,\n`;
  sql += `(VALUES\n`;

  const values = trainers.map((t, i) => {
    const order = startOrder + i;
    const escapedName = t.name.replace(/'/g, "''");
    const escapedClass = t.trainerClass.replace(/'/g, "''");
    return `  ('${escapedName}', '${escapedClass}', ${order})`;
  });

  sql += values.join(',\n');
  sql += `\n) AS t(name, class, ord)\n`;
  sql += `WHERE r.slug = '${slug}' AND r.game_id = '${GAME_ID}';\n\n`;
}

// Update has_trainers flags
sql += `-- ===========================================\n`;
sql += `-- Update has_trainers flags for routes that now have trainers\n`;
sql += `-- ===========================================\n\n`;

const ROUTES_NEEDING_FLAG_UPDATE = [
  'route-30', 'route-31', 'route-33', 'slowpoke-well', 'ilex-forest',
  'national-park', 'lake-of-rage', 'route-46', 'route-1', 'route-18',
  'route-2', 'ruins-of-alph', 'mt-mortar', 'route-10',
];

for (const slug of ROUTES_NEEDING_FLAG_UPDATE) {
  if (routeTrainers[slug] && routeTrainers[slug].length > 0) {
    sql += `UPDATE public.routes SET has_trainers = true WHERE slug = '${slug}' AND game_id = '${GAME_ID}';\n`;
  }
}

console.log(sql);

if (skippedAreas.size > 0) {
  console.error('\n-- Skipped areas (no matching route slug):');
  for (const area of skippedAreas) {
    console.error(`--   ${area}`);
  }
}

let totalTrainers = 0;
let totalRoutes = 0;
for (const trainers of Object.values(routeTrainers)) {
  if (trainers.length > 0) {
    totalRoutes++;
    totalTrainers += trainers.length;
  }
}
console.error(`\n-- Total: ${totalTrainers} trainers across ${totalRoutes} routes`);
