import type { GameConfig, RouteConfig, BossTrainerConfig } from '../types.js';

// ─── Pokemon Black 2 / White 2 Configuration ────────────────────────────────
// Gen 5, Unova region (expanded). PokeAPI versions: 'black-2' / 'white-2'
// New gym leaders: Cheren, Roxie, Marlon. Drayden in both versions.
// Champion: Iris. Different route order and new areas from BW.

const B2_ID = 'b4c5d6e7-f8a9-0123-b456-789012345678';
const W2_ID = 'c5d6e7f8-a9b0-1234-c567-890123456789';

const routes: RouteConfig[] = [
  // ══════════════════════════════════════════
  // MAIN STORY
  // ══════════════════════════════════════════

  { name: 'Aspertia City', slug: 'aspertia-city', displayOrder: 1, routeType: 'city', hasEncounters: true, hasTrainers: true, hasItems: false, notes: 'Starting city. Gym Leader Cheren. Normal-type.', pokeapiAreas: ['aspertia-city-area'] },
  { name: 'Route 19', slug: 'route-19', displayOrder: 2, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['unova-route-19-area'] },
  { name: 'Floccesy Town', slug: 'floccesy-town', displayOrder: 3, routeType: 'city', hasEncounters: true, hasTrainers: false, hasItems: false, notes: null, pokeapiAreas: ['floccesy-town-area'] },
  { name: 'Floccesy Ranch', slug: 'floccesy-ranch', displayOrder: 4, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['floccesy-ranch-outer', 'floccesy-ranch-inner'] },
  { name: 'Route 20', slug: 'route-20', displayOrder: 5, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['unova-route-20-area'] },
  { name: 'Virbank City', slug: 'virbank-city', displayOrder: 6, routeType: 'city', hasEncounters: true, hasTrainers: true, hasItems: false, notes: 'Gym Leader Roxie. Poison-type specialist.', pokeapiAreas: ['virbank-city-area'] },
  { name: 'Virbank Complex', slug: 'virbank-complex', displayOrder: 7, routeType: 'building', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['virbank-complex-outer', 'virbank-complex-inner'] },
  { name: 'Castelia City', slug: 'castelia-city', displayOrder: 8, routeType: 'city', hasEncounters: false, hasTrainers: true, hasItems: true, notes: 'Gym Leader Burgh. Bug-type specialist.', pokeapiAreas: [] },
  { name: 'Castelia Sewers', slug: 'castelia-sewers', displayOrder: 9, routeType: 'cave', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['castelia-sewers-area'] },
  { name: 'Route 4', slug: 'route-4', displayOrder: 10, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['unova-route-4-area'] },
  { name: 'Desert Resort', slug: 'desert-resort', displayOrder: 11, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['desert-resort-entrance', 'desert-resort-area'] },
  { name: 'Relic Castle', slug: 'relic-castle', displayOrder: 12, routeType: 'cave', hasEncounters: true, hasTrainers: false, hasItems: true, notes: null, pokeapiAreas: ['relic-castle-a', 'relic-castle-b'] },
  { name: 'Nimbasa City', slug: 'nimbasa-city', displayOrder: 13, routeType: 'city', hasEncounters: false, hasTrainers: true, hasItems: false, notes: 'Gym Leader Elesa. Electric-type specialist.', pokeapiAreas: [] },
  { name: 'Route 5', slug: 'route-5', displayOrder: 14, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['unova-route-5-area'] },
  { name: 'Driftveil Drawbridge', slug: 'driftveil-drawbridge', displayOrder: 15, routeType: 'route', hasEncounters: true, hasTrainers: false, hasItems: false, notes: 'Ducklett wing shadows.', pokeapiAreas: ['driftveil-drawbridge-area'] },
  { name: 'Driftveil City', slug: 'driftveil-city', displayOrder: 16, routeType: 'city', hasEncounters: false, hasTrainers: true, hasItems: false, notes: 'Gym Leader Clay. Ground-type specialist.', pokeapiAreas: [] },
  { name: 'Relic Passage', slug: 'relic-passage', displayOrder: 17, routeType: 'cave', hasEncounters: true, hasTrainers: false, hasItems: true, notes: null, pokeapiAreas: ['relic-passage-castelia-sewers-entrance', 'relic-passage-relic-castle-entrance', 'relic-passage-pwt-entrance'] },
  { name: 'Route 6', slug: 'route-6', displayOrder: 18, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['unova-route-6-area'] },
  { name: 'Chargestone Cave', slug: 'chargestone-cave', displayOrder: 19, routeType: 'cave', hasEncounters: true, hasTrainers: true, hasItems: true, notes: null, pokeapiAreas: ['chargestone-cave-1f', 'chargestone-cave-b1f', 'chargestone-cave-b2f'] },
  { name: 'Mistralton City', slug: 'mistralton-city', displayOrder: 20, routeType: 'city', hasEncounters: false, hasTrainers: true, hasItems: false, notes: 'Gym Leader Skyla. Flying-type specialist.', pokeapiAreas: [] },
  { name: 'Mistralton Cave', slug: 'mistralton-cave', displayOrder: 21, routeType: 'cave', hasEncounters: true, hasTrainers: false, hasItems: true, notes: null, pokeapiAreas: ['mistralton-cave-area'] },
  { name: 'Route 7', slug: 'route-7', displayOrder: 22, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['unova-route-7-area'] },
  { name: 'Celestial Tower', slug: 'celestial-tower', displayOrder: 23, routeType: 'building', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['celestial-tower-2f', 'celestial-tower-3f', 'celestial-tower-4f', 'celestial-tower-5f'] },
  { name: 'Lentimas Town', slug: 'lentimas-town', displayOrder: 24, routeType: 'city', hasEncounters: false, hasTrainers: false, hasItems: false, notes: null, pokeapiAreas: [] },
  { name: 'Reversal Mountain', slug: 'reversal-mountain', displayOrder: 25, routeType: 'cave', hasEncounters: true, hasTrainers: true, hasItems: true, notes: null, pokeapiAreas: ['reversal-mountain-b1f'] },
  { name: 'Strange House', slug: 'strange-house', displayOrder: 26, routeType: 'building', hasEncounters: true, hasTrainers: false, hasItems: true, notes: null, pokeapiAreas: ['strange-house-1f', 'strange-house-b1f'] },
  { name: 'Undella Town', slug: 'undella-town', displayOrder: 27, routeType: 'city', hasEncounters: true, hasTrainers: false, hasItems: false, notes: null, pokeapiAreas: ['undella-town-area'] },
  { name: 'Route 13', slug: 'route-13', displayOrder: 28, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['unova-route-13-area'] },
  { name: 'Lacunosa Town', slug: 'lacunosa-town', displayOrder: 29, routeType: 'city', hasEncounters: false, hasTrainers: false, hasItems: false, notes: null, pokeapiAreas: [] },
  { name: 'Route 12', slug: 'route-12', displayOrder: 30, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['unova-route-12-area'] },
  { name: 'Village Bridge', slug: 'village-bridge', displayOrder: 31, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['village-bridge-area'] },
  { name: 'Route 11', slug: 'route-11', displayOrder: 32, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['unova-route-11-area'] },
  { name: 'Opelucid City', slug: 'opelucid-city', displayOrder: 33, routeType: 'city', hasEncounters: false, hasTrainers: true, hasItems: false, notes: 'Gym Leader Drayden. Dragon-type specialist.', pokeapiAreas: [] },
  { name: 'Route 9', slug: 'route-9', displayOrder: 34, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['unova-route-9-area'] },
  { name: 'Humilau City', slug: 'humilau-city', displayOrder: 35, routeType: 'city', hasEncounters: true, hasTrainers: true, hasItems: false, notes: 'Gym Leader Marlon. Water-type specialist.', pokeapiAreas: ['humilau-city-area'] },
  { name: 'Route 22', slug: 'route-22', displayOrder: 36, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['unova-route-22-area'] },
  { name: 'Route 21', slug: 'route-21', displayOrder: 37, routeType: 'water', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['unova-route-21-area'] },
  { name: 'Seaside Cave', slug: 'seaside-cave', displayOrder: 38, routeType: 'cave', hasEncounters: true, hasTrainers: true, hasItems: true, notes: null, pokeapiAreas: ['seaside-cave-1f', 'seaside-cave-b1f'] },
  { name: 'Route 23', slug: 'route-23', displayOrder: 39, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['unova-route-23-area'] },
  { name: 'Giant Chasm', slug: 'giant-chasm', displayOrder: 40, routeType: 'cave', hasEncounters: true, hasTrainers: true, hasItems: true, notes: 'Kyurem encounter.', pokeapiAreas: ['giant-chasm-outside', 'giant-chasm-area', 'giant-chasm-forest', 'giant-chasm-forest-cave'] },
  { name: 'Victory Road', slug: 'victory-road', displayOrder: 41, routeType: 'cave', hasEncounters: true, hasTrainers: true, hasItems: true, notes: null, pokeapiAreas: ['unova-victory-road-2-unknown-area-71', 'unova-victory-road-2-unknown-area-72', 'unova-victory-road-2-unknown-area-73', 'unova-victory-road-2-unknown-area-74', 'unova-victory-road-2-unknown-area-75'] },
  { name: 'Pokemon League', slug: 'pokemon-league', displayOrder: 42, routeType: 'building', hasEncounters: false, hasTrainers: true, hasItems: false, notes: 'Elite Four and Champion Iris.', pokeapiAreas: [] },

  // ══════════════════════════════════════════
  // POST-GAME
  // ══════════════════════════════════════════

  { name: 'Route 1', slug: 'route-1', displayOrder: 43, routeType: 'route', hasEncounters: true, hasTrainers: false, hasItems: false, notes: null, pokeapiAreas: ['unova-route-1-area'] },
  { name: 'Route 2', slug: 'route-2', displayOrder: 44, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['unova-route-2-area'] },
  { name: 'Route 3', slug: 'route-3', displayOrder: 45, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['unova-route-3-area'] },
  { name: 'Dreamyard', slug: 'dreamyard', displayOrder: 46, routeType: 'route', hasEncounters: true, hasTrainers: false, hasItems: false, notes: null, pokeapiAreas: ['dreamyard-area', 'dreamyard-b1f'] },
  { name: 'Pinwheel Forest', slug: 'pinwheel-forest', displayOrder: 47, routeType: 'route', hasEncounters: true, hasTrainers: false, hasItems: false, notes: null, pokeapiAreas: ['pinwheel-forest-outside', 'pinwheel-forest-inside'] },
  { name: 'Twist Mountain', slug: 'twist-mountain', displayOrder: 48, routeType: 'cave', hasEncounters: true, hasTrainers: false, hasItems: true, notes: null, pokeapiAreas: ['twist-mountain-b1f-3f', 'twist-mountain-b4f'] },
  { name: 'Dragonspiral Tower', slug: 'dragonspiral-tower', displayOrder: 49, routeType: 'building', hasEncounters: true, hasTrainers: false, hasItems: false, notes: null, pokeapiAreas: ['dragonspiral-tower-entrance', 'dragonspiral-tower-outside', 'dragonspiral-tower-1f', 'dragonspiral-tower-2f'] },
  { name: 'Moor of Icirrus', slug: 'moor-of-icirrus', displayOrder: 50, routeType: 'route', hasEncounters: true, hasTrainers: false, hasItems: false, notes: null, pokeapiAreas: ['moor-of-icirrus-area'] },
  { name: 'Route 8', slug: 'route-8', displayOrder: 51, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['unova-route-8-area'] },
  { name: 'Undella Bay', slug: 'undella-bay', displayOrder: 52, routeType: 'water', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['undella-bay-area'] },
  { name: 'Route 14', slug: 'route-14', displayOrder: 53, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['unova-route-14-area'] },
  { name: 'Abundant Shrine', slug: 'abundant-shrine', displayOrder: 54, routeType: 'special', hasEncounters: true, hasTrainers: false, hasItems: false, notes: null, pokeapiAreas: ['abundant-shrine-area'] },
  { name: 'Route 15', slug: 'route-15', displayOrder: 55, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['unova-route-15-area'] },
  { name: 'Route 16', slug: 'route-16', displayOrder: 56, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['unova-route-16-area'] },
  { name: 'Lostlorn Forest', slug: 'lostlorn-forest', displayOrder: 57, routeType: 'route', hasEncounters: true, hasTrainers: false, hasItems: false, notes: null, pokeapiAreas: ['lostlorn-forest-area'] },
  { name: 'Route 17', slug: 'route-17', displayOrder: 58, routeType: 'water', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['unova-route-17-area'] },
  { name: 'Route 18', slug: 'route-18', displayOrder: 59, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['unova-route-18-area'] },
  { name: 'P2 Laboratory', slug: 'p2-laboratory', displayOrder: 60, routeType: 'building', hasEncounters: true, hasTrainers: false, hasItems: true, notes: null, pokeapiAreas: ['p2-laboratory-area'] },
  { name: 'Clay Tunnel', slug: 'clay-tunnel', displayOrder: 61, routeType: 'cave', hasEncounters: true, hasTrainers: false, hasItems: true, notes: null, pokeapiAreas: ['clay-tunnel-area'] },
  { name: 'Nature Sanctuary', slug: 'nature-sanctuary', displayOrder: 62, routeType: 'special', hasEncounters: true, hasTrainers: false, hasItems: false, notes: null, pokeapiAreas: ['nature-sanctuary-area'] },
];

// ─── Boss Trainers ──────────────────────────────────────────────────────────

const bossTrainers: BossTrainerConfig[] = [
  // ── Gym 1: Cheren ──
  {
    routeSlug: 'aspertia-city', name: 'Cheren', trainerClass: 'Gym Leader',
    bossType: 'gym_leader', levelCap: 13, displayOrder: 1,
    notes: 'Normal-type specialist. Basic Badge.',
    pokemon: [
      { pokemonDexId: 504, level: 11, slotOrder: 1, moves: ['Tackle', 'Leer', 'Bite', 'Detect'], ability: 'Keen Eye' },
      { pokemonDexId: 506, level: 13, slotOrder: 2, moves: ['Tackle', 'Leer', 'Bite', 'Work Up'], ability: 'Vital Spirit' },
    ],
  },
  // ── Gym 2: Roxie ──
  {
    routeSlug: 'virbank-city', name: 'Roxie', trainerClass: 'Gym Leader',
    bossType: 'gym_leader', levelCap: 18, displayOrder: 1,
    notes: 'Poison-type specialist. Toxic Badge.',
    pokemon: [
      { pokemonDexId: 109, level: 16, slotOrder: 1, moves: ['Assurance', 'Clear Smog', 'Smog', 'Tackle'], ability: 'Levitate' },
      { pokemonDexId: 544, level: 18, slotOrder: 2, moves: ['Venoshock', 'Pursuit', 'Poison Tail', 'Screech'], ability: 'Poison Point' },
    ],
  },
  // ── Gym 3: Burgh ──
  {
    routeSlug: 'castelia-city', name: 'Burgh', trainerClass: 'Gym Leader',
    bossType: 'gym_leader', levelCap: 24, displayOrder: 1,
    notes: 'Bug-type specialist. Insect Badge.',
    pokemon: [
      { pokemonDexId: 541, level: 22, slotOrder: 1, moves: ['Razor Leaf', 'String Shot', 'Bug Bite', 'Struggle Bug'], ability: 'Leaf Guard' },
      { pokemonDexId: 557, level: 22, slotOrder: 2, moves: ['Faint Attack', 'Smack Down', 'Bug Bite', 'Struggle Bug'], ability: 'Sturdy' },
      { pokemonDexId: 542, level: 24, slotOrder: 3, moves: ['Razor Leaf', 'String Shot', 'Bug Bite', 'Struggle Bug'], ability: 'Swarm' },
    ],
  },
  // ── Gym 4: Elesa ──
  {
    routeSlug: 'nimbasa-city', name: 'Elesa', trainerClass: 'Gym Leader',
    bossType: 'gym_leader', levelCap: 30, displayOrder: 1,
    notes: 'Electric-type specialist. Bolt Badge.',
    pokemon: [
      { pokemonDexId: 587, level: 28, slotOrder: 1, moves: ['Volt Switch', 'Aerial Ace', 'Quick Attack', 'Pursuit'], ability: 'Static' },
      { pokemonDexId: 180, level: 28, slotOrder: 2, moves: ['Volt Switch', 'Take Down', 'Thunder Wave', 'Confuse Ray'], ability: 'Static' },
      { pokemonDexId: 523, level: 30, slotOrder: 3, moves: ['Volt Switch', 'Flame Charge', 'Spark', 'Quick Attack'], ability: 'Lightning Rod' },
    ],
  },
  // ── Gym 5: Clay ──
  {
    routeSlug: 'driftveil-city', name: 'Clay', trainerClass: 'Gym Leader',
    bossType: 'gym_leader', levelCap: 33, displayOrder: 1,
    notes: 'Ground-type specialist. Quake Badge.',
    pokemon: [
      { pokemonDexId: 552, level: 31, slotOrder: 1, moves: ['Crunch', 'Torment', 'Bulldoze', 'Swagger'], ability: 'Intimidate' },
      { pokemonDexId: 28, level: 31, slotOrder: 2, moves: ['Slash', 'Bulldoze', 'Crush Claw', 'Hone Claws'], ability: 'Sand Rush' },
      { pokemonDexId: 530, level: 33, slotOrder: 3, moves: ['Bulldoze', 'Slash', 'Rock Slide', 'Hone Claws'], ability: 'Sand Rush' },
    ],
  },
  // ── Gym 6: Skyla ──
  {
    routeSlug: 'mistralton-city', name: 'Skyla', trainerClass: 'Gym Leader',
    bossType: 'gym_leader', levelCap: 39, displayOrder: 1,
    notes: 'Flying-type specialist. Jet Badge.',
    pokemon: [
      { pokemonDexId: 528, level: 37, slotOrder: 1, moves: ['Heart Stamp', 'Acrobatics', 'Assurance', 'Attract'], ability: 'Unaware' },
      { pokemonDexId: 227, level: 37, slotOrder: 2, moves: ['Steel Wing', 'Air Slash', 'Agility', 'Fury Attack'], ability: 'Sturdy' },
      { pokemonDexId: 581, level: 39, slotOrder: 3, moves: ['Air Slash', 'BubbleBeam', 'Aerial Ace', 'FeatherDance'], ability: 'Keen Eye' },
    ],
  },
  // ── Gym 7: Drayden ──
  {
    routeSlug: 'opelucid-city', name: 'Drayden', trainerClass: 'Gym Leader',
    bossType: 'gym_leader', levelCap: 48, displayOrder: 1,
    notes: 'Dragon-type specialist. Legend Badge.',
    pokemon: [
      { pokemonDexId: 621, level: 46, slotOrder: 1, moves: ['Dragon Tail', 'Revenge', 'Night Slash', 'Crunch'], ability: 'Rough Skin' },
      { pokemonDexId: 330, level: 46, slotOrder: 2, moves: ['Earth Power', 'Dragon Tail', 'Rock Slide', 'Crunch'], ability: 'Levitate' },
      { pokemonDexId: 612, level: 48, slotOrder: 3, moves: ['Dragon Tail', 'Dragon Dance', 'Slash', 'Assurance'], ability: 'Mold Breaker' },
    ],
  },
  // ── Gym 8: Marlon ──
  {
    routeSlug: 'humilau-city', name: 'Marlon', trainerClass: 'Gym Leader',
    bossType: 'gym_leader', levelCap: 51, displayOrder: 1,
    notes: 'Water-type specialist. Wave Badge.',
    pokemon: [
      { pokemonDexId: 565, level: 49, slotOrder: 1, moves: ['Crunch', 'Shell Smash', 'Scald', 'Smack Down'], ability: 'Solid Rock' },
      { pokemonDexId: 321, level: 49, slotOrder: 2, moves: ['Scald', 'Bounce', 'Amnesia', 'Rollout'], ability: 'Water Veil' },
      { pokemonDexId: 593, level: 51, slotOrder: 3, moves: ['Scald', 'Cursed Body', 'Recover', 'Ominous Wind'], ability: 'Cursed Body' },
    ],
  },

  // ── Elite Four ──
  {
    routeSlug: 'pokemon-league', name: 'Shauntal', trainerClass: 'Elite Four',
    bossType: 'elite_four', levelCap: 58, displayOrder: 1,
    notes: 'Ghost-type specialist.',
    pokemon: [
      { pokemonDexId: 563, level: 56, slotOrder: 1, moves: ['Shadow Ball', 'Psychic', 'Will-O-Wisp', 'Grass Knot'], ability: 'Mummy' },
      { pokemonDexId: 426, level: 56, slotOrder: 2, moves: ['Shadow Ball', 'Psychic', 'Thunderbolt', 'Acrobatics'], ability: 'Aftermath' },
      { pokemonDexId: 623, level: 56, slotOrder: 3, moves: ['Shadow Punch', 'Earthquake', 'Brick Break', 'Curse'], ability: 'Iron Fist' },
      { pokemonDexId: 609, level: 58, slotOrder: 4, moves: ['Shadow Ball', 'Fire Blast', 'Energy Ball', 'Psychic'], ability: 'Flame Body', heldItem: 'Sitrus Berry' },
    ],
  },
  {
    routeSlug: 'pokemon-league', name: 'Marshal', trainerClass: 'Elite Four',
    bossType: 'elite_four', levelCap: 58, displayOrder: 2,
    notes: 'Fighting-type specialist.',
    pokemon: [
      { pokemonDexId: 538, level: 56, slotOrder: 1, moves: ['Storm Throw', 'Stone Edge', 'Bulldoze', 'Payback'], ability: 'Guts' },
      { pokemonDexId: 539, level: 56, slotOrder: 2, moves: ['Close Combat', 'Retaliate', 'Rock Slide', 'Grass Knot'], ability: 'Sturdy' },
      { pokemonDexId: 620, level: 56, slotOrder: 3, moves: ['Hi Jump Kick', 'U-turn', 'Rock Slide', 'Retaliate'], ability: 'Inner Focus' },
      { pokemonDexId: 534, level: 58, slotOrder: 4, moves: ['Hammer Arm', 'Stone Edge', 'Bulk Up', 'Retaliate'], ability: 'Guts', heldItem: 'Sitrus Berry' },
    ],
  },
  {
    routeSlug: 'pokemon-league', name: 'Grimsley', trainerClass: 'Elite Four',
    bossType: 'elite_four', levelCap: 58, displayOrder: 3,
    notes: 'Dark-type specialist.',
    pokemon: [
      { pokemonDexId: 510, level: 56, slotOrder: 1, moves: ['Night Slash', 'Fake Out', 'Aerial Ace', 'Attract'], ability: 'Limber' },
      { pokemonDexId: 560, level: 56, slotOrder: 2, moves: ['Crunch', 'Brick Break', 'Poison Jab', 'Sand-Attack'], ability: 'Moxie' },
      { pokemonDexId: 553, level: 56, slotOrder: 3, moves: ['Crunch', 'Earthquake', 'Dragon Claw', 'Foul Play'], ability: 'Intimidate' },
      { pokemonDexId: 625, level: 58, slotOrder: 4, moves: ['Night Slash', 'X-Scissor', 'Metal Claw', 'Aerial Ace'], ability: 'Defiant', heldItem: 'Sitrus Berry' },
    ],
  },
  {
    routeSlug: 'pokemon-league', name: 'Caitlin', trainerClass: 'Elite Four',
    bossType: 'elite_four', levelCap: 58, displayOrder: 4,
    notes: 'Psychic-type specialist.',
    pokemon: [
      { pokemonDexId: 518, level: 56, slotOrder: 1, moves: ['Psychic', 'Shadow Ball', 'Charge Beam', 'Reflect'], ability: 'Forewarn' },
      { pokemonDexId: 561, level: 56, slotOrder: 2, moves: ['Psychic', 'Air Slash', 'Shadow Ball', 'Ice Beam'], ability: 'Magic Guard' },
      { pokemonDexId: 579, level: 56, slotOrder: 3, moves: ['Psychic', 'Focus Blast', 'Energy Ball', 'Thunder'], ability: 'Magic Guard' },
      { pokemonDexId: 576, level: 58, slotOrder: 4, moves: ['Psychic', 'Thunderbolt', 'Shadow Ball', 'Calm Mind'], ability: 'Shadow Tag', heldItem: 'Sitrus Berry' },
    ],
  },

  // ── Champion Iris ──
  {
    routeSlug: 'pokemon-league', name: 'Iris', trainerClass: 'Champion',
    bossType: 'champion', levelCap: 59, displayOrder: 5,
    notes: 'Dragon-type specialist. Unova Champion.',
    pokemon: [
      { pokemonDexId: 635, level: 57, slotOrder: 1, moves: ['Flamethrower', 'Charge Beam', 'Dragon Pulse', 'Surf'], ability: 'Levitate' },
      { pokemonDexId: 621, level: 57, slotOrder: 2, moves: ['Rock Slide', 'Flamethrower', 'Dragon Tail', 'Focus Blast'], ability: 'Sheer Force', heldItem: 'Life Orb' },
      { pokemonDexId: 567, level: 57, slotOrder: 3, moves: ['Acrobatics', 'Rock Slide', 'Dragon Claw', 'Endeavor'], ability: 'Defeatist' },
      { pokemonDexId: 306, level: 57, slotOrder: 4, moves: ['Earthquake', 'Double-Edge', 'Rock Slide', 'Autotomize'], ability: 'Rock Head' },
      { pokemonDexId: 131, level: 57, slotOrder: 5, moves: ['Surf', 'Ice Beam', 'Thunderbolt', 'Sing'], ability: 'Water Absorb' },
      { pokemonDexId: 612, level: 59, slotOrder: 6, moves: ['Earthquake', 'X-Scissor', 'Dual Chop', 'Dragon Dance'], ability: 'Mold Breaker', heldItem: 'Focus Sash' },
    ],
  },
];

// ─── Game Configs ────────────────────────────────────────────────────────────

const starters = {
  routeSlug: 'aspertia-city',
  pokemon: [
    { dexId: 495, level: 5 },  // Snivy
    { dexId: 498, level: 5 },  // Tepig
    { dexId: 501, level: 5 },  // Oshawott
  ],
};

const black2Config: GameConfig = {
  id: B2_ID,
  slug: 'pokemon-black-2',
  name: 'Pokemon Black 2',
  generation: 5,
  region: 'Unova',
  baseGameSlug: null,
  isRomhack: false,
  spriteUrl: 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/646.png',
  description: 'Pokemon Black 2 Version for Nintendo DS. A direct sequel set 2 years after Black/White. Features Black Kyurem.',
  pokeapiVersionName: 'black-2',
  routes,
  starters,
  bossTrainers,
};

const white2Config: GameConfig = {
  id: W2_ID,
  slug: 'pokemon-white-2',
  name: 'Pokemon White 2',
  generation: 5,
  region: 'Unova',
  baseGameSlug: null,
  isRomhack: false,
  spriteUrl: 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/646.png',
  description: 'Pokemon White 2 Version for Nintendo DS. A direct sequel set 2 years after Black/White. Features White Kyurem.',
  pokeapiVersionName: 'white-2',
  routes,
  starters,
  bossTrainers,
};

export default [black2Config, white2Config];
