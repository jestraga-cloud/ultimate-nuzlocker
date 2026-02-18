/**
 * Transform Rising Ruby SQL migration file:
 * 1. Add Littleroot Town as first route with starter encounters
 * 2. Remove Rematches route, encounters, and trainers
 * 3. Replace generic 'fishing' with fishing_old/fishing_good/fishing_super
 * 4. Replace 'rock-smash' with 'rock_smash'
 * 5. Reorder encounters: walking first per route
 */

const fs = require('fs');
const path = require('path');

const SQL_PATH = path.join(__dirname, '..', 'supabase', 'migrations', '00015_pokemon_rising_ruby_complete.sql');
const GAME_ID = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';

// Normalize line endings to \n
const content = fs.readFileSync(SQL_PATH, 'utf-8').replace(/\r\n/g, '\n');

// ========================================
// METHOD ORDERING (lower = first)
// ========================================
const METHOD_PRIORITY = {
  'gift': 0,
  'walking': 1,
  'dexnav': 2,
  'horde': 3,
  'rock_smash': 4,
  'surfing': 5,
  'fishing_old': 6,
  'fishing_good': 7,
  'fishing_super': 8,
  'birds': 9,
  'static': 10,
  'trade': 11,
};

// ========================================
// PHASE 1: PROCESS ROUTES
// ========================================

const routeBlockRegex = /-- Route: (.+)\nINSERT INTO routes \(game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items\)\nVALUES \(\n  '[^']+',\n  '([^']+)',\n  '([^']+)',\n  (\d+),\n  '([^']+)',\n  (true|false),\n  (true|false),\n  (true|false)\n\);/g;

let routeBlocks = [];
let match;
while ((match = routeBlockRegex.exec(content)) !== null) {
  routeBlocks.push({
    name: match[2],
    slug: match[3],
    displayOrder: parseInt(match[4]),
    routeType: match[5],
    hasEncounters: match[6] === 'true',
    hasTrainers: match[7] === 'true',
    hasItems: match[8] === 'true',
  });
}

console.log(`Found ${routeBlocks.length} routes`);

// Remove Rematches
routeBlocks = routeBlocks.filter(r => r.slug !== 'rematches');

// Add Littleroot Town at the beginning
routeBlocks.unshift({
  name: 'Littleroot Town',
  slug: 'littleroot-town',
  displayOrder: 1,
  routeType: 'city',
  hasEncounters: true,
  hasTrainers: false,
  hasItems: false,
});

// Renumber display_order
routeBlocks.forEach((block, idx) => {
  block.displayOrder = idx + 1;
});

console.log(`Routes after changes: ${routeBlocks.length}`);

function generateRouteSQL(block) {
  return `-- Route: ${block.name}
INSERT INTO routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items)
VALUES (
  '${GAME_ID}',
  '${block.name}',
  '${block.slug}',
  ${block.displayOrder},
  '${block.routeType}',
  ${block.hasEncounters},
  ${block.hasTrainers},
  ${block.hasItems}
);`;
}

// ========================================
// PHASE 2: PROCESS ENCOUNTERS
// ========================================

const encStartMarker = "INSERT INTO _enc VALUES\n";
const encStartIdx = content.indexOf(encStartMarker);
const encDataStart = encStartIdx + encStartMarker.length;
let encDataEnd = content.indexOf('\n\n-- Insert encounters from temp table', encDataStart);
if (encDataEnd === -1) {
  encDataEnd = content.indexOf(';', encDataStart) + 1;
}

const encDataStr = content.substring(encDataStart, encDataEnd).trim();

const encRows = [];
for (const line of encDataStr.split('\n')) {
  const trimmed = line.trim();
  if (!trimmed) continue;
  const cleanLine = trimmed.replace(/[,;]$/, '');
  const m = cleanLine.match(/^\('([^']+)',\s*(\d+),\s*'([^']+)',\s*(NULL|\d+(?:\.\d+)?),\s*(\d+),\s*(\d+)\)$/);
  if (m) {
    encRows.push({
      slug: m[1],
      dex: parseInt(m[2]),
      method: m[3],
      rate: m[4] === 'NULL' ? null : parseFloat(m[4]),
      lmin: parseInt(m[5]),
      lmax: parseInt(m[6]),
    });
  } else {
    console.warn(`Could not parse encounter row: ${trimmed}`);
  }
}

console.log(`Parsed ${encRows.length} encounter rows`);

// Remove rematches encounters
const filteredEncs = encRows.filter(r => r.slug !== 'rematches');
console.log(`After removing rematches: ${filteredEncs.length} encounters`);

// Add Littleroot Town starter encounters
filteredEncs.unshift(
  { slug: 'littleroot-town', dex: 252, method: 'gift', rate: null, lmin: 5, lmax: 5 },
  { slug: 'littleroot-town', dex: 255, method: 'gift', rate: null, lmin: 5, lmax: 5 },
  { slug: 'littleroot-town', dex: 258, method: 'gift', rate: null, lmin: 5, lmax: 5 },
);

// Replace 'rock-smash' with 'rock_smash'
for (const enc of filteredEncs) {
  if (enc.method === 'rock-smash') {
    enc.method = 'rock_smash';
  }
}

// Replace 'fishing' with specific rod types
const fishingByRoute = {};
for (const enc of filteredEncs) {
  if (enc.method === 'fishing') {
    if (!fishingByRoute[enc.slug]) fishingByRoute[enc.slug] = [];
    fishingByRoute[enc.slug].push(enc);
  }
}

for (const [slug, entries] of Object.entries(fishingByRoute)) {
  const distinctLevels = [...new Set(entries.map(e => e.lmin))].sort((a, b) => a - b);

  if (distinctLevels.length >= 3) {
    const lowest = distinctLevels[0];
    const highest = distinctLevels[distinctLevels.length - 1];
    for (const entry of entries) {
      if (entry.lmin === lowest) entry.method = 'fishing_old';
      else if (entry.lmin === highest) entry.method = 'fishing_super';
      else entry.method = 'fishing_good';
    }
  } else if (distinctLevels.length === 2) {
    const [low, high] = distinctLevels;
    for (const entry of entries) {
      if (entry.lmin === low) entry.method = 'fishing_old';
      else entry.method = 'fishing_super';
    }
  } else {
    // 1 distinct level (e.g., Battle Resort with all 1-100)
    const rodCycle = ['fishing_old', 'fishing_good', 'fishing_super'];
    const groups = new Map();
    for (const entry of entries) {
      const key = `${entry.dex}`;
      if (!groups.has(key)) groups.set(key, []);
      groups.get(key).push(entry);
    }
    for (const [, group] of groups) {
      for (let i = 0; i < group.length && i < 3; i++) {
        group[i].method = rodCycle[i];
      }
    }
  }
}

// Reorder encounters within each route by method priority
const routeSlugs = [];
const encBySlug = {};
for (const enc of filteredEncs) {
  if (!encBySlug[enc.slug]) {
    encBySlug[enc.slug] = [];
    routeSlugs.push(enc.slug);
  }
  encBySlug[enc.slug].push(enc);
}

for (const slug of routeSlugs) {
  encBySlug[slug].sort((a, b) => {
    const pa = METHOD_PRIORITY[a.method] ?? 99;
    const pb = METHOD_PRIORITY[b.method] ?? 99;
    return pa - pb;
  });
}

const sortedEncs = [];
for (const slug of routeSlugs) {
  sortedEncs.push(...encBySlug[slug]);
}

console.log(`Final encounter count: ${sortedEncs.length}`);

function generateEncRow(enc, isLast) {
  const rateStr = enc.rate === null ? 'NULL' : enc.rate.toString();
  const ending = isLast ? ';' : ',';
  return `('${enc.slug}', ${enc.dex}, '${enc.method}', ${rateStr}, ${enc.lmin}, ${enc.lmax})${ending}`;
}

// ========================================
// PHASE 3: PROCESS TRAINERS
// ========================================

// Find the DO block - ends with "END $$;" on one line
const doBlockStart = content.indexOf('DO $$\n');
const doBlockEndMarker = 'END $$;';
const doBlockEndIdx = content.indexOf(doBlockEndMarker, doBlockStart);
const doBlockContent = content.substring(doBlockStart, doBlockEndIdx + doBlockEndMarker.length);

const doLines = doBlockContent.split('\n');

// Split into preamble (DO/DECLARE/BEGIN) and trainer chunks
const trainerChunks = [];
let currentChunk = [];
let inPreamble = true;
let preamble = [];

for (let i = 0; i < doLines.length; i++) {
  const line = doLines[i];

  if (inPreamble) {
    preamble.push(line);
    if (line.trim() === 'BEGIN') {
      inPreamble = false;
    }
    continue;
  }

  // End of DO block
  if (line.trim().startsWith('END')) {
    if (currentChunk.length > 0) {
      trainerChunks.push(currentChunk);
      currentChunk = [];
    }
    continue;
  }

  // Trainer comment starts a new block (2-space indent + --)
  if (/^  -- \S/.test(line)) {
    if (currentChunk.length > 0) {
      trainerChunks.push(currentChunk);
    }
    currentChunk = [line];
  } else {
    currentChunk.push(line);
  }
}
if (currentChunk.length > 0) {
  trainerChunks.push(currentChunk);
}

console.log(`Found ${trainerChunks.length} trainer chunks`);

// Filter out rematches trainers
const filteredChunks = trainerChunks.filter(chunk => {
  const chunkText = chunk.join('\n');
  return !chunkText.includes("slug = 'rematches'");
});

console.log(`After removing rematches trainers: ${filteredChunks.length} trainer chunks`);

// ========================================
// REASSEMBLE THE FILE
// ========================================

const step2Start = content.indexOf('-- ===========================================\n-- STEP 2: ALL ROUTES');
const step3Start = content.indexOf('-- ===========================================\n-- STEP 3: ENCOUNTER DATA');

// Section 1: Game INSERT (before STEP 2)
const section1 = content.substring(0, step2Start);

// Section 2: Routes
let section2 = `-- ===========================================\n-- STEP 2: ALL ROUTES (${routeBlocks.length} total)\n-- ===========================================\n\n`;
section2 += routeBlocks.map(generateRouteSQL).join('\n\n');
section2 += '\n\n';

// Section 3: Encounters
let section3 = `-- ===========================================\n-- STEP 3: ENCOUNTER DATA (${sortedEncs.length} total)\n-- ===========================================\n\n`;
section3 += `CREATE TEMP TABLE _enc (\n  slug TEXT,\n  dex INT,\n  method TEXT,\n  rate DECIMAL(5,2),\n  lmin INT,\n  lmax INT\n);\n\n`;
section3 += `INSERT INTO _enc VALUES\n`;
section3 += sortedEncs.map((enc, i) => generateEncRow(enc, i === sortedEncs.length - 1)).join('\n');
section3 += `\n\n-- Insert encounters from temp table\nINSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max)\nSELECT r.id, e.dex, e.method, e.rate, e.lmin, e.lmax\nFROM _enc e JOIN public.routes r ON r.slug = e.slug AND r.game_id = '${GAME_ID}';\n\nDROP TABLE _enc;\n\n`;

// Section 4: Trainers
let section4 = `-- ===========================================\n-- STEP 4: TRAINERS (${filteredChunks.length} total)\n-- ===========================================\n\n`;
section4 += preamble.join('\n') + '\n\n';
section4 += filteredChunks.map(chunk => chunk.join('\n')).join('\n\n');
section4 += '\n\nEND $$;\n\n';

// Section 5: Update total_routes
const section5 = `-- Update total_routes count\nUPDATE public.games SET total_routes = ${routeBlocks.length} WHERE id = '${GAME_ID}';\n`;

const result = section1 + section2 + section3 + section4 + section5;

fs.writeFileSync(SQL_PATH, result, 'utf-8');
console.log(`\nDone! Wrote ${result.length} bytes to ${SQL_PATH}`);
console.log(`Routes: ${routeBlocks.length}`);
console.log(`Encounters: ${sortedEncs.length}`);
console.log(`Trainers: ${filteredChunks.length}`);

// Verify no 'fishing' method remains
const remaining = sortedEncs.filter(e => e.method === 'fishing');
if (remaining.length > 0) {
  console.warn(`WARNING: ${remaining.length} encounters still have 'fishing' method!`);
  remaining.forEach(e => console.warn(`  ${e.slug}: dex=${e.dex} lmin=${e.lmin}`));
}

// Verify no 'rock-smash' remains
const rmRemaining = sortedEncs.filter(e => e.method === 'rock-smash');
if (rmRemaining.length > 0) {
  console.warn(`WARNING: ${rmRemaining.length} encounters still have 'rock-smash' method!`);
}
