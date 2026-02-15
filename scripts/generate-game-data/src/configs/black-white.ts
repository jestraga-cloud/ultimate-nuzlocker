import type { GameConfig, RouteConfig, BossTrainerConfig } from '../types.js';

// ─── Pokemon Black / White Configuration ────────────────────────────────────
// Gen 5, Unova region. PokeAPI versions: 'black' / 'white'
// Key version differences:
// - Gym 8: Drayden (Black) vs Iris (White)
// - Champion: N with Zekrom (Black) vs N with Reshiram (White)
// - Black City (Black) vs White Forest (White) - different encounter pools

const BLACK_ID = 'f2a3b4c5-d6e7-8901-f234-567890123456';
const WHITE_ID = 'a3b4c5d6-e7f8-9012-a345-678901234567';

const routes: RouteConfig[] = [
  // ══════════════════════════════════════════
  // MAIN STORY
  // ══════════════════════════════════════════

  { name: 'Nuvema Town', slug: 'nuvema-town', displayOrder: 1, routeType: 'city', hasEncounters: true, hasTrainers: false, hasItems: false, notes: 'Starter town. Choose Snivy, Tepig, or Oshawott.', pokeapiAreas: ['nuvema-town-area'] },
  { name: 'Route 1', slug: 'route-1', displayOrder: 2, routeType: 'route', hasEncounters: true, hasTrainers: false, hasItems: false, notes: null, pokeapiAreas: ['unova-route-1-area'] },
  { name: 'Accumula Town', slug: 'accumula-town', displayOrder: 3, routeType: 'city', hasEncounters: false, hasTrainers: false, hasItems: false, notes: 'Team Plasma introduction.', pokeapiAreas: [] },
  { name: 'Route 2', slug: 'route-2', displayOrder: 4, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['unova-route-2-area'] },
  { name: 'Striaton City', slug: 'striaton-city', displayOrder: 5, routeType: 'city', hasEncounters: false, hasTrainers: true, hasItems: false, notes: 'Gym 1: Cilan/Chili/Cress. Starter-dependent.', pokeapiAreas: [] },
  { name: 'Dreamyard', slug: 'dreamyard', displayOrder: 6, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: false, notes: 'Elemental monkey gift.', pokeapiAreas: ['dreamyard-area'] },
  { name: 'Route 3', slug: 'route-3', displayOrder: 7, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['unova-route-3-area'] },
  { name: 'Wellspring Cave', slug: 'wellspring-cave', displayOrder: 8, routeType: 'cave', hasEncounters: true, hasTrainers: false, hasItems: false, notes: null, pokeapiAreas: ['wellspring-cave-area'] },
  { name: 'Nacrene City', slug: 'nacrene-city', displayOrder: 9, routeType: 'city', hasEncounters: false, hasTrainers: true, hasItems: false, notes: 'Gym Leader Lenora. Normal-type specialist.', pokeapiAreas: [] },
  { name: 'Pinwheel Forest', slug: 'pinwheel-forest', displayOrder: 10, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['pinwheel-forest-outside', 'pinwheel-forest-inside'] },
  { name: 'Castelia City', slug: 'castelia-city', displayOrder: 11, routeType: 'city', hasEncounters: false, hasTrainers: true, hasItems: true, notes: 'Gym Leader Burgh. Bug-type specialist.', pokeapiAreas: [] },
  { name: 'Route 4', slug: 'route-4', displayOrder: 12, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['unova-route-4-area'] },
  { name: 'Desert Resort', slug: 'desert-resort', displayOrder: 13, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['desert-resort-entrance', 'desert-resort-area'] },
  { name: 'Relic Castle', slug: 'relic-castle', displayOrder: 14, routeType: 'cave', hasEncounters: true, hasTrainers: false, hasItems: true, notes: null, pokeapiAreas: ['relic-castle-a', 'relic-castle-b', 'relic-castle-c', 'relic-castle-d'] },
  { name: 'Nimbasa City', slug: 'nimbasa-city', displayOrder: 15, routeType: 'city', hasEncounters: false, hasTrainers: true, hasItems: false, notes: 'Gym Leader Elesa. Electric-type specialist.', pokeapiAreas: [] },
  { name: 'Route 5', slug: 'route-5', displayOrder: 16, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['unova-route-5-area'] },
  { name: 'Driftveil Drawbridge', slug: 'driftveil-drawbridge', displayOrder: 17, routeType: 'route', hasEncounters: true, hasTrainers: false, hasItems: false, notes: 'Ducklett wing shadows.', pokeapiAreas: ['driftveil-drawbridge-area'] },
  { name: 'Driftveil City', slug: 'driftveil-city', displayOrder: 18, routeType: 'city', hasEncounters: false, hasTrainers: true, hasItems: false, notes: 'Gym Leader Clay. Ground-type specialist.', pokeapiAreas: [] },
  { name: 'Cold Storage', slug: 'cold-storage', displayOrder: 19, routeType: 'building', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['cold-storage-area'] },
  { name: 'Route 6', slug: 'route-6', displayOrder: 20, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['unova-route-6-area'] },
  { name: 'Chargestone Cave', slug: 'chargestone-cave', displayOrder: 21, routeType: 'cave', hasEncounters: true, hasTrainers: true, hasItems: true, notes: null, pokeapiAreas: ['chargestone-cave-1f', 'chargestone-cave-b1f', 'chargestone-cave-b2f'] },
  { name: 'Mistralton City', slug: 'mistralton-city', displayOrder: 22, routeType: 'city', hasEncounters: false, hasTrainers: true, hasItems: false, notes: 'Gym Leader Skyla. Flying-type specialist.', pokeapiAreas: [] },
  { name: 'Route 7', slug: 'route-7', displayOrder: 23, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['unova-route-7-area'] },
  { name: 'Celestial Tower', slug: 'celestial-tower', displayOrder: 24, routeType: 'building', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['celestial-tower-2f', 'celestial-tower-3f', 'celestial-tower-4f', 'celestial-tower-5f'] },
  { name: 'Twist Mountain', slug: 'twist-mountain', displayOrder: 25, routeType: 'cave', hasEncounters: true, hasTrainers: true, hasItems: true, notes: null, pokeapiAreas: ['twist-mountain-b1f-3f', 'twist-mountain-b4f'] },
  { name: 'Icirrus City', slug: 'icirrus-city', displayOrder: 26, routeType: 'city', hasEncounters: true, hasTrainers: true, hasItems: false, notes: 'Gym Leader Brycen. Ice-type specialist.', pokeapiAreas: ['icirrus-city-area'] },
  { name: 'Dragonspiral Tower', slug: 'dragonspiral-tower', displayOrder: 27, routeType: 'building', hasEncounters: true, hasTrainers: false, hasItems: false, notes: 'Legendary dragon encounter.', pokeapiAreas: ['dragonspiral-tower-entrance', 'dragonspiral-tower-outside', 'dragonspiral-tower-1f', 'dragonspiral-tower-2f'] },
  { name: 'Route 8', slug: 'route-8', displayOrder: 28, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['unova-route-8-area'] },
  { name: 'Moor of Icirrus', slug: 'moor-of-icirrus', displayOrder: 29, routeType: 'route', hasEncounters: true, hasTrainers: false, hasItems: false, notes: null, pokeapiAreas: ['moor-of-icirrus-area'] },
  { name: 'Route 9', slug: 'route-9', displayOrder: 30, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['unova-route-9-area'] },
  { name: 'Opelucid City', slug: 'opelucid-city', displayOrder: 31, routeType: 'city', hasEncounters: false, hasTrainers: true, hasItems: false, notes: 'Gym 8: Drayden (Black) / Iris (White). Dragon-type.', pokeapiAreas: [] },
  { name: 'Route 10', slug: 'route-10', displayOrder: 32, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['unova-route-10-area'] },
  { name: 'Victory Road', slug: 'victory-road', displayOrder: 33, routeType: 'cave', hasEncounters: true, hasTrainers: true, hasItems: true, notes: null, pokeapiAreas: ['unova-victory-road-outside', 'unova-victory-road-unknown-area-53', 'unova-victory-road-unknown-area-54', 'unova-victory-road-unknown-area-55', 'unova-victory-road-4f-middle-room', 'unova-victory-road-7f'] },
  { name: 'Pokemon League', slug: 'pokemon-league', displayOrder: 34, routeType: 'building', hasEncounters: false, hasTrainers: true, hasItems: false, notes: 'Elite Four and Champion N/Ghetsis.', pokeapiAreas: [] },

  // ══════════════════════════════════════════
  // POST-GAME
  // ══════════════════════════════════════════

  { name: 'Route 11', slug: 'route-11', displayOrder: 35, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['unova-route-11-area'] },
  { name: 'Village Bridge', slug: 'village-bridge', displayOrder: 36, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['village-bridge-area'] },
  { name: 'Route 12', slug: 'route-12', displayOrder: 37, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['unova-route-12-area'] },
  { name: 'Lacunosa Town', slug: 'lacunosa-town', displayOrder: 38, routeType: 'city', hasEncounters: false, hasTrainers: false, hasItems: false, notes: null, pokeapiAreas: [] },
  { name: 'Route 13', slug: 'route-13', displayOrder: 39, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['unova-route-13-area'] },
  { name: 'Undella Town', slug: 'undella-town', displayOrder: 40, routeType: 'city', hasEncounters: true, hasTrainers: false, hasItems: false, notes: null, pokeapiAreas: ['undella-town-area'] },
  { name: 'Undella Bay', slug: 'undella-bay', displayOrder: 41, routeType: 'water', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['undella-bay-area'] },
  { name: 'Route 14', slug: 'route-14', displayOrder: 42, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['unova-route-14-area'] },
  { name: 'Abundant Shrine', slug: 'abundant-shrine', displayOrder: 43, routeType: 'special', hasEncounters: true, hasTrainers: false, hasItems: false, notes: null, pokeapiAreas: ['abundant-shrine-area'] },
  { name: 'Route 15', slug: 'route-15', displayOrder: 44, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['unova-route-15-area'] },
  { name: 'Route 16', slug: 'route-16', displayOrder: 45, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['unova-route-16-area'] },
  { name: 'Lostlorn Forest', slug: 'lostlorn-forest', displayOrder: 46, routeType: 'route', hasEncounters: true, hasTrainers: false, hasItems: false, notes: null, pokeapiAreas: ['lostlorn-forest-area'] },
  { name: 'Route 17', slug: 'route-17', displayOrder: 47, routeType: 'water', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['unova-route-17-area'] },
  { name: 'Route 18', slug: 'route-18', displayOrder: 48, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['unova-route-18-area'] },
  { name: 'P2 Laboratory', slug: 'p2-laboratory', displayOrder: 49, routeType: 'building', hasEncounters: true, hasTrainers: false, hasItems: true, notes: null, pokeapiAreas: ['p2-laboratory-area'] },
  { name: "Challenger's Cave", slug: 'challengers-cave', displayOrder: 50, routeType: 'cave', hasEncounters: true, hasTrainers: true, hasItems: true, notes: null, pokeapiAreas: ['challengers-cave-1f', 'challengers-cave-b1f', 'challengers-cave-b2f'] },
  { name: 'Giant Chasm', slug: 'giant-chasm', displayOrder: 51, routeType: 'cave', hasEncounters: true, hasTrainers: false, hasItems: true, notes: 'Kyurem encounter.', pokeapiAreas: ['giant-chasm-outside', 'giant-chasm-area', 'giant-chasm-forest', 'giant-chasm-forest-cave'] },
  { name: 'Mistralton Cave', slug: 'mistralton-cave', displayOrder: 52, routeType: 'cave', hasEncounters: true, hasTrainers: false, hasItems: true, notes: null, pokeapiAreas: ['mistralton-cave-area'] },
];

// ─── Boss Trainers ──────────────────────────────────────────────────────────

const sharedBossTrainers: BossTrainerConfig[] = [
  // ── Gym 1: Striaton Trio (all 3 included since any can be fought) ──
  {
    routeSlug: 'striaton-city', name: 'Cilan', trainerClass: 'Gym Leader',
    bossType: 'gym_leader', levelCap: 14, displayOrder: 1,
    notes: 'Grass-type. Fought if you chose Oshawott. Trio Badge.',
    pokemon: [
      { pokemonDexId: 506, level: 12, slotOrder: 1, moves: ['Tackle', 'Bite'], ability: 'Vital Spirit' },
      { pokemonDexId: 511, level: 14, slotOrder: 2, moves: ['Vine Whip', 'Work Up'], ability: 'Gluttony' },
    ],
  },
  {
    routeSlug: 'striaton-city', name: 'Chili', trainerClass: 'Gym Leader',
    bossType: 'gym_leader', levelCap: 14, displayOrder: 2,
    notes: 'Fire-type. Fought if you chose Snivy. Trio Badge.',
    pokemon: [
      { pokemonDexId: 506, level: 12, slotOrder: 1, moves: ['Tackle', 'Bite'], ability: 'Vital Spirit' },
      { pokemonDexId: 513, level: 14, slotOrder: 2, moves: ['Incinerate', 'Work Up'], ability: 'Gluttony' },
    ],
  },
  {
    routeSlug: 'striaton-city', name: 'Cress', trainerClass: 'Gym Leader',
    bossType: 'gym_leader', levelCap: 14, displayOrder: 3,
    notes: 'Water-type. Fought if you chose Tepig. Trio Badge.',
    pokemon: [
      { pokemonDexId: 506, level: 12, slotOrder: 1, moves: ['Tackle', 'Bite'], ability: 'Vital Spirit' },
      { pokemonDexId: 515, level: 14, slotOrder: 2, moves: ['Water Gun', 'Work Up'], ability: 'Gluttony' },
    ],
  },
  // ── Gym 2: Lenora ──
  {
    routeSlug: 'nacrene-city', name: 'Lenora', trainerClass: 'Gym Leader',
    bossType: 'gym_leader', levelCap: 20, displayOrder: 1,
    notes: 'Normal-type specialist. Basic Badge.',
    pokemon: [
      { pokemonDexId: 507, level: 18, slotOrder: 1, moves: ['Bite', 'Retaliate', 'Take Down', 'Leer'], ability: 'Intimidate' },
      { pokemonDexId: 505, level: 20, slotOrder: 2, moves: ['Hypnosis', 'Retaliate', 'Crunch', 'Leer'], ability: 'Illuminate' },
    ],
  },
  // ── Gym 3: Burgh ──
  {
    routeSlug: 'castelia-city', name: 'Burgh', trainerClass: 'Gym Leader',
    bossType: 'gym_leader', levelCap: 23, displayOrder: 1,
    notes: 'Bug-type specialist. Insect Badge.',
    pokemon: [
      { pokemonDexId: 544, level: 21, slotOrder: 1, moves: ['Poison Tail', 'Screech', 'Pursuit', 'Bug Bite'], ability: 'Poison Point' },
      { pokemonDexId: 557, level: 21, slotOrder: 2, moves: ['Faint Attack', 'Smack Down', 'Bug Bite', 'Sand-Attack'], ability: 'Sturdy' },
      { pokemonDexId: 542, level: 23, slotOrder: 3, moves: ['Razor Leaf', 'String Shot', 'Bug Bite', 'Cut'], ability: 'Swarm' },
    ],
  },
  // ── Gym 4: Elesa ──
  {
    routeSlug: 'nimbasa-city', name: 'Elesa', trainerClass: 'Gym Leader',
    bossType: 'gym_leader', levelCap: 27, displayOrder: 1,
    notes: 'Electric-type specialist. Bolt Badge.',
    pokemon: [
      { pokemonDexId: 587, level: 25, slotOrder: 1, moves: ['Volt Switch', 'Aerial Ace', 'Quick Attack', 'Pursuit'], ability: 'Static' },
      { pokemonDexId: 587, level: 25, slotOrder: 2, moves: ['Volt Switch', 'Aerial Ace', 'Quick Attack', 'Pursuit'], ability: 'Static' },
      { pokemonDexId: 523, level: 27, slotOrder: 3, moves: ['Volt Switch', 'Flame Charge', 'Spark', 'Quick Attack'], ability: 'Lightning Rod' },
    ],
  },
  // ── Gym 5: Clay ──
  {
    routeSlug: 'driftveil-city', name: 'Clay', trainerClass: 'Gym Leader',
    bossType: 'gym_leader', levelCap: 31, displayOrder: 1,
    notes: 'Ground-type specialist. Quake Badge.',
    pokemon: [
      { pokemonDexId: 552, level: 29, slotOrder: 1, moves: ['Crunch', 'Torment', 'Bulldoze', 'Swagger'], ability: 'Intimidate' },
      { pokemonDexId: 536, level: 29, slotOrder: 2, moves: ['Muddy Water', 'BubbleBeam', 'Mud Shot', 'Aqua Ring'], ability: 'Swift Swim' },
      { pokemonDexId: 530, level: 31, slotOrder: 3, moves: ['Bulldoze', 'Slash', 'Metal Claw', 'Hone Claws'], ability: 'Sand Rush' },
    ],
  },
  // ── Gym 6: Skyla ──
  {
    routeSlug: 'mistralton-city', name: 'Skyla', trainerClass: 'Gym Leader',
    bossType: 'gym_leader', levelCap: 35, displayOrder: 1,
    notes: 'Flying-type specialist. Jet Badge.',
    pokemon: [
      { pokemonDexId: 528, level: 33, slotOrder: 1, moves: ['Heart Stamp', 'Acrobatics', 'Assurance', 'Attract'], ability: 'Unaware' },
      { pokemonDexId: 521, level: 33, slotOrder: 2, moves: ['Air Slash', 'Razor Wind', 'Quick Attack', 'Leer'], ability: 'Super Luck' },
      { pokemonDexId: 581, level: 35, slotOrder: 3, moves: ['Air Slash', 'BubbleBeam', 'Aerial Ace', 'FeatherDance'], ability: 'Keen Eye' },
    ],
  },
  // ── Gym 7: Brycen ──
  {
    routeSlug: 'icirrus-city', name: 'Brycen', trainerClass: 'Gym Leader',
    bossType: 'gym_leader', levelCap: 39, displayOrder: 1,
    notes: 'Ice-type specialist. Freeze Badge.',
    pokemon: [
      { pokemonDexId: 583, level: 37, slotOrder: 1, moves: ['Frost Breath', 'Acid Armor', 'Astonish', 'Mirror Shot'], ability: 'Ice Body' },
      { pokemonDexId: 615, level: 37, slotOrder: 2, moves: ['Frost Breath', 'Aurora Beam', 'Reflect', 'Rapid Spin'], ability: 'Levitate' },
      { pokemonDexId: 614, level: 39, slotOrder: 3, moves: ['Icicle Crash', 'Brine', 'Swagger', 'Slash'], ability: 'Snow Cloak' },
    ],
  },
  // ── Elite Four ──
  {
    routeSlug: 'pokemon-league', name: 'Shauntal', trainerClass: 'Elite Four',
    bossType: 'elite_four', levelCap: 50, displayOrder: 1,
    notes: 'Ghost-type specialist.',
    pokemon: [
      { pokemonDexId: 563, level: 48, slotOrder: 1, moves: ['Shadow Ball', 'Psychic', 'Will-O-Wisp', 'Grass Knot'], ability: 'Mummy' },
      { pokemonDexId: 593, level: 48, slotOrder: 2, moves: ['Shadow Ball', 'Surf', 'Energy Ball', 'Brine'], ability: 'Cursed Body' },
      { pokemonDexId: 623, level: 48, slotOrder: 3, moves: ['Shadow Punch', 'Earthquake', 'Brick Break', 'Curse'], ability: 'Iron Fist' },
      { pokemonDexId: 609, level: 50, slotOrder: 4, moves: ['Shadow Ball', 'Fire Blast', 'Energy Ball', 'Psychic'], ability: 'Flame Body' },
    ],
  },
  {
    routeSlug: 'pokemon-league', name: 'Marshal', trainerClass: 'Elite Four',
    bossType: 'elite_four', levelCap: 50, displayOrder: 2,
    notes: 'Fighting-type specialist.',
    pokemon: [
      { pokemonDexId: 538, level: 48, slotOrder: 1, moves: ['Storm Throw', 'Stone Edge', 'Bulldoze', 'Payback'], ability: 'Guts' },
      { pokemonDexId: 539, level: 48, slotOrder: 2, moves: ['Karate Chop', 'Retaliate', 'Rock Slide', 'Grass Knot'], ability: 'Sturdy' },
      { pokemonDexId: 534, level: 48, slotOrder: 3, moves: ['Hammer Arm', 'Stone Edge', 'Bulk Up', 'Retaliate'], ability: 'Guts' },
      { pokemonDexId: 620, level: 50, slotOrder: 4, moves: ['Hi Jump Kick', 'U-turn', 'Rock Slide', 'Retaliate'], ability: 'Inner Focus' },
    ],
  },
  {
    routeSlug: 'pokemon-league', name: 'Grimsley', trainerClass: 'Elite Four',
    bossType: 'elite_four', levelCap: 50, displayOrder: 3,
    notes: 'Dark-type specialist.',
    pokemon: [
      { pokemonDexId: 560, level: 48, slotOrder: 1, moves: ['Crunch', 'Brick Break', 'Poison Jab', 'Sand-Attack'], ability: 'Moxie' },
      { pokemonDexId: 553, level: 48, slotOrder: 2, moves: ['Crunch', 'Earthquake', 'Dragon Claw', 'Foul Play'], ability: 'Intimidate' },
      { pokemonDexId: 510, level: 48, slotOrder: 3, moves: ['Night Slash', 'Fake Out', 'Aerial Ace', 'Attract'], ability: 'Limber' },
      { pokemonDexId: 625, level: 50, slotOrder: 4, moves: ['Night Slash', 'X-Scissor', 'Metal Claw', 'Aerial Ace'], ability: 'Defiant' },
    ],
  },
  {
    routeSlug: 'pokemon-league', name: 'Caitlin', trainerClass: 'Elite Four',
    bossType: 'elite_four', levelCap: 50, displayOrder: 4,
    notes: 'Psychic-type specialist.',
    pokemon: [
      { pokemonDexId: 579, level: 48, slotOrder: 1, moves: ['Psychic', 'Focus Blast', 'Energy Ball', 'Thunder'], ability: 'Magic Guard' },
      { pokemonDexId: 518, level: 48, slotOrder: 2, moves: ['Psychic', 'Shadow Ball', 'Charge Beam', 'Reflect'], ability: 'Forewarn' },
      { pokemonDexId: 561, level: 48, slotOrder: 3, moves: ['Psychic', 'Air Slash', 'Shadow Ball', 'Ice Beam'], ability: 'Magic Guard' },
      { pokemonDexId: 576, level: 50, slotOrder: 4, moves: ['Psychic', 'Thunderbolt', 'Shadow Ball', 'Calm Mind'], ability: 'Shadow Tag' },
    ],
  },
];

// ── Gym 8 and Champion differ between Black and White ──

const blackOnlyBossTrainers: BossTrainerConfig[] = [
  {
    routeSlug: 'opelucid-city', name: 'Drayden', trainerClass: 'Gym Leader',
    bossType: 'gym_leader', levelCap: 43, displayOrder: 1,
    notes: 'Dragon-type specialist. Legend Badge. Black version.',
    pokemon: [
      { pokemonDexId: 611, level: 41, slotOrder: 1, moves: ['Dragon Tail', 'Dragon Dance', 'Assurance', 'Slash'], ability: 'Rivalry' },
      { pokemonDexId: 621, level: 41, slotOrder: 2, moves: ['Dragon Tail', 'Revenge', 'Night Slash', 'Crunch'], ability: 'Rough Skin' },
      { pokemonDexId: 612, level: 43, slotOrder: 3, moves: ['Dragon Tail', 'Dragon Dance', 'Slash', 'Assurance'], ability: 'Rivalry' },
    ],
  },
  // N (Black) - Zekrom
  {
    routeSlug: 'pokemon-league', name: 'N', trainerClass: 'Champion',
    bossType: 'champion', levelCap: 52, displayOrder: 5,
    notes: 'Final rival battle. Team Plasma King. Zekrom in Black.',
    pokemon: [
      { pokemonDexId: 644, level: 52, slotOrder: 1, moves: ['Fusion Bolt', 'Zen Headbutt', 'Dragon Claw', 'Giga Impact'], ability: 'Teravolt' },
      { pokemonDexId: 565, level: 50, slotOrder: 2, moves: ['Stone Edge', 'Aqua Jet', 'Crunch', 'Shell Smash'], ability: 'Solid Rock' },
      { pokemonDexId: 584, level: 50, slotOrder: 3, moves: ['Blizzard', 'Flash Cannon', 'Frost Breath', 'Hail'], ability: 'Ice Body' },
      { pokemonDexId: 567, level: 50, slotOrder: 4, moves: ['Acrobatics', 'Stone Edge', 'Dragon Claw', 'Crunch'], ability: 'Defeatist' },
      { pokemonDexId: 571, level: 50, slotOrder: 5, moves: ['Night Slash', 'Flamethrower', 'Focus Blast', 'Retaliate'], ability: 'Illusion' },
      { pokemonDexId: 601, level: 50, slotOrder: 6, moves: ['Flash Cannon', 'Thunderbolt', 'Hyper Beam', 'Metal Sound'], ability: 'Plus' },
    ],
  },
  // Ghetsis (Black)
  {
    routeSlug: 'pokemon-league', name: 'Ghetsis', trainerClass: 'Evil Team Leader',
    bossType: 'evil_team_leader', levelCap: 54, displayOrder: 6,
    notes: 'True final boss. Team Plasma leader.',
    pokemon: [
      { pokemonDexId: 563, level: 52, slotOrder: 1, moves: ['Shadow Ball', 'Psychic', 'Toxic', 'Protect'], ability: 'Mummy' },
      { pokemonDexId: 626, level: 52, slotOrder: 2, moves: ['Head Charge', 'Wild Charge', 'Earthquake', 'Poison Jab'], ability: 'Reckless' },
      { pokemonDexId: 537, level: 52, slotOrder: 3, moves: ['Muddy Water', 'Earthquake', 'Rain Dance', 'Sludge Wave'], ability: 'Swift Swim' },
      { pokemonDexId: 625, level: 52, slotOrder: 4, moves: ['Night Slash', 'X-Scissor', 'Stone Edge', 'Metal Burst'], ability: 'Defiant' },
      { pokemonDexId: 604, level: 52, slotOrder: 5, moves: ['Wild Charge', 'Crunch', 'Flamethrower', 'Acrobatics'], ability: 'Levitate' },
      { pokemonDexId: 635, level: 54, slotOrder: 6, moves: ['Dragon Pulse', 'Fire Blast', 'Surf', 'Focus Blast'], ability: 'Levitate' },
    ],
  },
];

const whiteOnlyBossTrainers: BossTrainerConfig[] = [
  {
    routeSlug: 'opelucid-city', name: 'Iris', trainerClass: 'Gym Leader',
    bossType: 'gym_leader', levelCap: 43, displayOrder: 1,
    notes: 'Dragon-type specialist. Legend Badge. White version.',
    pokemon: [
      { pokemonDexId: 611, level: 41, slotOrder: 1, moves: ['Dragon Tail', 'Dragon Dance', 'Assurance', 'Slash'], ability: 'Rivalry' },
      { pokemonDexId: 621, level: 41, slotOrder: 2, moves: ['Dragon Tail', 'Revenge', 'Night Slash', 'Crunch'], ability: 'Sheer Force' },
      { pokemonDexId: 612, level: 43, slotOrder: 3, moves: ['Dragon Tail', 'Dragon Dance', 'Slash', 'Assurance'], ability: 'Mold Breaker' },
    ],
  },
  // N (White) - Reshiram
  {
    routeSlug: 'pokemon-league', name: 'N', trainerClass: 'Champion',
    bossType: 'champion', levelCap: 52, displayOrder: 5,
    notes: 'Final rival battle. Team Plasma King. Reshiram in White.',
    pokemon: [
      { pokemonDexId: 643, level: 52, slotOrder: 1, moves: ['Fusion Flare', 'Extrasensory', 'Dragon Breath', 'Hyper Beam'], ability: 'Turboblaze' },
      { pokemonDexId: 565, level: 50, slotOrder: 2, moves: ['Stone Edge', 'Aqua Jet', 'Crunch', 'Shell Smash'], ability: 'Solid Rock' },
      { pokemonDexId: 584, level: 50, slotOrder: 3, moves: ['Blizzard', 'Flash Cannon', 'Frost Breath', 'Hail'], ability: 'Ice Body' },
      { pokemonDexId: 567, level: 50, slotOrder: 4, moves: ['Acrobatics', 'Stone Edge', 'Dragon Claw', 'Crunch'], ability: 'Defeatist' },
      { pokemonDexId: 571, level: 50, slotOrder: 5, moves: ['Night Slash', 'Flamethrower', 'Focus Blast', 'Retaliate'], ability: 'Illusion' },
      { pokemonDexId: 601, level: 50, slotOrder: 6, moves: ['Flash Cannon', 'Thunderbolt', 'Hyper Beam', 'Metal Sound'], ability: 'Plus' },
    ],
  },
  // Ghetsis (White) - same team
  {
    routeSlug: 'pokemon-league', name: 'Ghetsis', trainerClass: 'Evil Team Leader',
    bossType: 'evil_team_leader', levelCap: 54, displayOrder: 6,
    notes: 'True final boss. Team Plasma leader.',
    pokemon: [
      { pokemonDexId: 563, level: 52, slotOrder: 1, moves: ['Shadow Ball', 'Psychic', 'Toxic', 'Protect'], ability: 'Mummy' },
      { pokemonDexId: 626, level: 52, slotOrder: 2, moves: ['Head Charge', 'Wild Charge', 'Earthquake', 'Poison Jab'], ability: 'Reckless' },
      { pokemonDexId: 537, level: 52, slotOrder: 3, moves: ['Muddy Water', 'Earthquake', 'Rain Dance', 'Sludge Wave'], ability: 'Swift Swim' },
      { pokemonDexId: 625, level: 52, slotOrder: 4, moves: ['Night Slash', 'X-Scissor', 'Stone Edge', 'Metal Burst'], ability: 'Defiant' },
      { pokemonDexId: 604, level: 52, slotOrder: 5, moves: ['Wild Charge', 'Crunch', 'Flamethrower', 'Acrobatics'], ability: 'Levitate' },
      { pokemonDexId: 635, level: 54, slotOrder: 6, moves: ['Dragon Pulse', 'Fire Blast', 'Surf', 'Focus Blast'], ability: 'Levitate' },
    ],
  },
];

// ─── Game Configs ────────────────────────────────────────────────────────────

const starters = {
  routeSlug: 'nuvema-town',
  pokemon: [
    { dexId: 495, level: 5 },  // Snivy
    { dexId: 498, level: 5 },  // Tepig
    { dexId: 501, level: 5 },  // Oshawott
  ],
};

const blackConfig: GameConfig = {
  id: BLACK_ID,
  slug: 'pokemon-black',
  name: 'Pokemon Black',
  generation: 5,
  region: 'Unova',
  baseGameSlug: null,
  isRomhack: false,
  spriteUrl: 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/643.png',
  description: 'Pokemon Black Version for Nintendo DS. Set in the Unova region with an all-new Pokedex. Features Zekrom and Team Plasma.',
  pokeapiVersionName: 'black',
  routes,
  starters,
  bossTrainers: [...sharedBossTrainers, ...blackOnlyBossTrainers],
};

const whiteConfig: GameConfig = {
  id: WHITE_ID,
  slug: 'pokemon-white',
  name: 'Pokemon White',
  generation: 5,
  region: 'Unova',
  baseGameSlug: null,
  isRomhack: false,
  spriteUrl: 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/644.png',
  description: 'Pokemon White Version for Nintendo DS. Set in the Unova region with an all-new Pokedex. Features Reshiram and Team Plasma.',
  pokeapiVersionName: 'white',
  routes,
  starters,
  bossTrainers: [...sharedBossTrainers, ...whiteOnlyBossTrainers],
};

export default [blackConfig, whiteConfig];
