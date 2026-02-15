import type { GameConfig, RouteConfig, BossTrainerConfig } from '../types.js';

// ─── Pokemon Ruby / Sapphire Configuration ───────────────────────────────────
// Shared routes and boss trainers. Key differences from Emerald:
//   - Gym 8: Wallace (not Juan)
//   - Champion: Steven (not Wallace)
//   - Brawly: 2 Pokemon (no Meditite)
//   - Wattson: 3 Pokemon (no Manectric)
//   - Flannery: 3 Pokemon (no Camerupt)
//   - Tate & Liza: 2 Pokemon (just Solrock + Lunatone)
//   - Sidney: Sharpedo instead of Crawdaunt

const RUBY_ID = 'a7b8c9d0-e1f2-3456-ab67-890123456789';
const SAPPHIRE_ID = 'b8c9d0e1-f2a3-4567-bc78-901234567890';

const routes: RouteConfig[] = [
  // ── Early Game ──
  { name: 'Littleroot Town', slug: 'littleroot-town', displayOrder: 1, routeType: 'city', hasEncounters: true, hasTrainers: false, hasItems: false, notes: 'Starter town. Choose Treecko, Torchic, or Mudkip.', pokeapiAreas: [] },
  { name: 'Route 101', slug: 'route-101', displayOrder: 2, routeType: 'route', hasEncounters: true, hasTrainers: false, hasItems: false, notes: null, pokeapiAreas: ['hoenn-route-101-area'] },
  { name: 'Oldale Town', slug: 'oldale-town', displayOrder: 3, routeType: 'city', hasEncounters: false, hasTrainers: false, hasItems: true, notes: null, pokeapiAreas: [] },
  { name: 'Route 103', slug: 'route-103', displayOrder: 4, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['hoenn-route-103-area'] },
  { name: 'Route 102', slug: 'route-102', displayOrder: 5, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: true, notes: null, pokeapiAreas: ['hoenn-route-102-area'] },
  { name: 'Petalburg City', slug: 'petalburg-city', displayOrder: 6, routeType: 'city', hasEncounters: false, hasTrainers: false, hasItems: true, notes: null, pokeapiAreas: [] },
  { name: 'Route 104 (South)', slug: 'route-104-south', displayOrder: 7, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: true, notes: null, pokeapiAreas: ['hoenn-route-104-area'] },
  { name: 'Petalburg Woods', slug: 'petalburg-woods', displayOrder: 8, routeType: 'cave', hasEncounters: true, hasTrainers: true, hasItems: true, notes: null, pokeapiAreas: ['petalburg-woods-area'] },
  { name: 'Route 104 (North)', slug: 'route-104-north', displayOrder: 9, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: true, notes: null, pokeapiAreas: [] },
  { name: 'Rustboro City', slug: 'rustboro-city', displayOrder: 10, routeType: 'city', hasEncounters: false, hasTrainers: true, hasItems: true, notes: 'Gym Leader Roxanne. Rock-type specialist.', pokeapiAreas: [] },
  { name: 'Route 116', slug: 'route-116', displayOrder: 11, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: true, notes: null, pokeapiAreas: ['hoenn-route-116-area'] },
  { name: 'Rusturf Tunnel', slug: 'rusturf-tunnel', displayOrder: 12, routeType: 'cave', hasEncounters: true, hasTrainers: false, hasItems: true, notes: null, pokeapiAreas: ['rusturf-tunnel-area'] },
  { name: 'Route 105', slug: 'route-105', displayOrder: 13, routeType: 'water', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['hoenn-route-105-area'] },
  { name: 'Dewford Town', slug: 'dewford-town', displayOrder: 14, routeType: 'city', hasEncounters: false, hasTrainers: true, hasItems: true, notes: 'Gym Leader Brawly. Fighting-type specialist.', pokeapiAreas: [] },
  { name: 'Granite Cave', slug: 'granite-cave', displayOrder: 15, routeType: 'cave', hasEncounters: true, hasTrainers: false, hasItems: true, notes: null, pokeapiAreas: ['granite-cave-1f', 'granite-cave-b1f', 'granite-cave-b2f'] },

  // ── Water routes & Slateport ──
  { name: 'Route 106', slug: 'route-106', displayOrder: 16, routeType: 'water', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['hoenn-route-106-area'] },
  { name: 'Route 107', slug: 'route-107', displayOrder: 17, routeType: 'water', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['hoenn-route-107-area'] },
  { name: 'Route 108', slug: 'route-108', displayOrder: 18, routeType: 'water', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['hoenn-route-108-area'] },
  { name: 'Route 109', slug: 'route-109', displayOrder: 19, routeType: 'water', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['hoenn-route-109-area'] },
  { name: 'Slateport City', slug: 'slateport-city', displayOrder: 20, routeType: 'city', hasEncounters: false, hasTrainers: false, hasItems: true, notes: null, pokeapiAreas: [] },
  { name: 'Route 110', slug: 'route-110', displayOrder: 21, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: true, notes: 'Cycling Road. Rival battle here.', pokeapiAreas: ['hoenn-route-110-area'] },
  { name: 'Mauville City', slug: 'mauville-city', displayOrder: 22, routeType: 'city', hasEncounters: false, hasTrainers: true, hasItems: true, notes: 'Gym Leader Wattson. Electric-type specialist.', pokeapiAreas: [] },

  // ── Verdanturf & Desert ──
  { name: 'Route 117', slug: 'route-117', displayOrder: 23, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: true, notes: null, pokeapiAreas: ['hoenn-route-117-area'] },
  { name: 'Verdanturf Town', slug: 'verdanturf-town', displayOrder: 24, routeType: 'city', hasEncounters: false, hasTrainers: false, hasItems: true, notes: null, pokeapiAreas: [] },
  { name: 'Route 111', slug: 'route-111', displayOrder: 25, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: true, notes: 'Features a desert area accessible with Go-Goggles.', pokeapiAreas: ['hoenn-route-111-area'] },
  { name: 'Route 112', slug: 'route-112', displayOrder: 26, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['hoenn-route-112-area'] },
  { name: 'Fiery Path', slug: 'fiery-path', displayOrder: 27, routeType: 'cave', hasEncounters: true, hasTrainers: false, hasItems: true, notes: null, pokeapiAreas: ['fiery-path-area'] },
  { name: 'Route 113', slug: 'route-113', displayOrder: 28, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: true, notes: 'Ash-covered route.', pokeapiAreas: ['hoenn-route-113-area'] },
  { name: 'Fallarbor Town', slug: 'fallarbor-town', displayOrder: 29, routeType: 'city', hasEncounters: false, hasTrainers: false, hasItems: true, notes: null, pokeapiAreas: [] },
  { name: 'Route 114', slug: 'route-114', displayOrder: 30, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: true, notes: null, pokeapiAreas: ['hoenn-route-114-area'] },
  { name: 'Meteor Falls', slug: 'meteor-falls', displayOrder: 31, routeType: 'cave', hasEncounters: true, hasTrainers: false, hasItems: true, notes: null, pokeapiAreas: ['meteor-falls-area', 'meteor-falls-back', 'meteor-falls-b1f'] },
  { name: 'Route 115', slug: 'route-115', displayOrder: 32, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['hoenn-route-115-area'] },

  // ── Mt. Chimney to Lavaridge ──
  { name: 'Mt. Chimney', slug: 'mt-chimney', displayOrder: 33, routeType: 'special', hasEncounters: false, hasTrainers: true, hasItems: false, notes: 'Team confrontation at the summit.', pokeapiAreas: [] },
  { name: 'Jagged Pass', slug: 'jagged-pass', displayOrder: 34, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['jagged-pass-area'] },
  { name: 'Lavaridge Town', slug: 'lavaridge-town', displayOrder: 35, routeType: 'city', hasEncounters: false, hasTrainers: true, hasItems: true, notes: 'Gym Leader Flannery. Fire-type specialist.', pokeapiAreas: [] },
  { name: 'Petalburg City Gym', slug: 'petalburg-city-gym', displayOrder: 36, routeType: 'building', hasEncounters: false, hasTrainers: true, hasItems: false, notes: 'Gym Leader Norman. Normal-type specialist.', pokeapiAreas: [] },

  // ── East Hoenn ──
  { name: 'Route 118', slug: 'route-118', displayOrder: 37, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: false, notes: 'Requires Surf.', pokeapiAreas: ['hoenn-route-118-area'] },
  { name: 'Route 119', slug: 'route-119', displayOrder: 38, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: true, notes: 'Weather Institute.', pokeapiAreas: ['hoenn-route-119-area'] },
  { name: 'Fortree City', slug: 'fortree-city', displayOrder: 39, routeType: 'city', hasEncounters: false, hasTrainers: true, hasItems: true, notes: 'Gym Leader Winona. Flying-type specialist.', pokeapiAreas: [] },
  { name: 'Route 120', slug: 'route-120', displayOrder: 40, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: true, notes: null, pokeapiAreas: ['hoenn-route-120-area'] },
  { name: 'Route 121', slug: 'route-121', displayOrder: 41, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['hoenn-route-121-area'] },
  { name: 'Mt. Pyre', slug: 'mt-pyre', displayOrder: 42, routeType: 'cave', hasEncounters: true, hasTrainers: true, hasItems: true, notes: null, pokeapiAreas: ['mt-pyre-1f', 'mt-pyre-2f', 'mt-pyre-3f', 'mt-pyre-4f', 'mt-pyre-5f', 'mt-pyre-6f', 'mt-pyre-outside', 'mt-pyre-summit'] },
  { name: 'Route 122', slug: 'route-122', displayOrder: 43, routeType: 'water', hasEncounters: true, hasTrainers: false, hasItems: false, notes: null, pokeapiAreas: ['hoenn-route-122-area'] },
  { name: 'Lilycove City', slug: 'lilycove-city', displayOrder: 44, routeType: 'city', hasEncounters: false, hasTrainers: false, hasItems: true, notes: null, pokeapiAreas: [] },
  { name: 'Route 123', slug: 'route-123', displayOrder: 45, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: true, notes: null, pokeapiAreas: ['hoenn-route-123-area'] },

  // ── Mossdeep area ──
  { name: 'Route 124', slug: 'route-124', displayOrder: 46, routeType: 'water', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['hoenn-route-124-area'] },
  { name: 'Mossdeep City', slug: 'mossdeep-city', displayOrder: 47, routeType: 'city', hasEncounters: false, hasTrainers: true, hasItems: true, notes: 'Gym Leaders Tate & Liza. Psychic-type specialists.', pokeapiAreas: [] },
  { name: 'Route 125', slug: 'route-125', displayOrder: 48, routeType: 'water', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['hoenn-route-125-area'] },
  { name: 'Shoal Cave', slug: 'shoal-cave', displayOrder: 49, routeType: 'cave', hasEncounters: true, hasTrainers: false, hasItems: true, notes: 'Tidal cave. Changes with tides.', pokeapiAreas: ['shoal-cave-area', 'shoal-cave-b1f'] },

  // ── Southern water routes ──
  { name: 'Route 126', slug: 'route-126', displayOrder: 50, routeType: 'water', hasEncounters: true, hasTrainers: false, hasItems: false, notes: null, pokeapiAreas: ['hoenn-route-126-area'] },
  { name: 'Route 127', slug: 'route-127', displayOrder: 51, routeType: 'water', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['hoenn-route-127-area'] },
  { name: 'Route 128', slug: 'route-128', displayOrder: 52, routeType: 'water', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['hoenn-route-128-area'] },
  { name: 'Seafloor Cavern', slug: 'seafloor-cavern', displayOrder: 53, routeType: 'cave', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['seafloor-cavern-area'] },
  { name: 'Sootopolis City', slug: 'sootopolis-city', displayOrder: 54, routeType: 'city', hasEncounters: false, hasTrainers: true, hasItems: true, notes: 'Gym Leader Wallace. Water-type specialist.', pokeapiAreas: [] },

  // ── Pacifidlog & current routes ──
  { name: 'Route 129', slug: 'route-129', displayOrder: 55, routeType: 'water', hasEncounters: true, hasTrainers: false, hasItems: false, notes: null, pokeapiAreas: ['hoenn-route-129-area'] },
  { name: 'Route 130', slug: 'route-130', displayOrder: 56, routeType: 'water', hasEncounters: true, hasTrainers: false, hasItems: false, notes: null, pokeapiAreas: ['hoenn-route-130-area'] },
  { name: 'Route 131', slug: 'route-131', displayOrder: 57, routeType: 'water', hasEncounters: true, hasTrainers: false, hasItems: false, notes: null, pokeapiAreas: ['hoenn-route-131-area'] },
  { name: 'Pacifidlog Town', slug: 'pacifidlog-town', displayOrder: 58, routeType: 'city', hasEncounters: false, hasTrainers: false, hasItems: true, notes: null, pokeapiAreas: [] },
  { name: 'Route 132', slug: 'route-132', displayOrder: 59, routeType: 'water', hasEncounters: true, hasTrainers: false, hasItems: false, notes: null, pokeapiAreas: ['hoenn-route-132-area'] },
  { name: 'Route 133', slug: 'route-133', displayOrder: 60, routeType: 'water', hasEncounters: true, hasTrainers: false, hasItems: false, notes: null, pokeapiAreas: ['hoenn-route-133-area'] },
  { name: 'Route 134', slug: 'route-134', displayOrder: 61, routeType: 'water', hasEncounters: true, hasTrainers: false, hasItems: false, notes: null, pokeapiAreas: ['hoenn-route-134-area'] },

  // ── Pokemon League ──
  { name: 'Ever Grande City', slug: 'ever-grande-city', displayOrder: 62, routeType: 'city', hasEncounters: false, hasTrainers: false, hasItems: false, notes: null, pokeapiAreas: [] },
  { name: 'Victory Road', slug: 'victory-road', displayOrder: 63, routeType: 'cave', hasEncounters: true, hasTrainers: true, hasItems: true, notes: null, pokeapiAreas: ['hoenn-victory-road-1f', 'hoenn-victory-road-b1f', 'hoenn-victory-road-b2f'] },
  { name: 'Pokemon League', slug: 'pokemon-league', displayOrder: 64, routeType: 'building', hasEncounters: false, hasTrainers: true, hasItems: false, notes: 'Elite Four and Champion Steven.', pokeapiAreas: [] },

  // ── Post-game ──
  { name: 'New Mauville', slug: 'new-mauville', displayOrder: 65, routeType: 'building', hasEncounters: true, hasTrainers: false, hasItems: true, notes: 'Electric-type Pokemon.', pokeapiAreas: ['new-mauville-entrance', 'new-mauville-area'] },
  { name: 'Sky Pillar', slug: 'sky-pillar', displayOrder: 66, routeType: 'building', hasEncounters: true, hasTrainers: false, hasItems: false, notes: 'Rayquaza at the top.', pokeapiAreas: ['sky-pillar-1f', 'sky-pillar-3f', 'sky-pillar-5f'] },
];

// ─── Boss Trainers ───────────────────────────────────────────────────────────

const bossTrainers: BossTrainerConfig[] = [
  // Gym 1: Roxanne
  {
    routeSlug: 'rustboro-city', name: 'Roxanne', trainerClass: 'Gym Leader',
    bossType: 'gym_leader', levelCap: 15, displayOrder: 1,
    notes: 'Rock-type specialist. Stone Badge.',
    pokemon: [
      { pokemonDexId: 74, level: 12, slotOrder: 1, moves: ['Tackle', 'Defense Curl', 'Rock Throw', 'Rock Tomb'], ability: 'Rock Head' },
      { pokemonDexId: 299, level: 15, slotOrder: 2, moves: ['Rock Throw', 'Harden', 'Block', 'Rock Tomb'], ability: 'Sturdy' },
    ],
  },
  // Gym 2: Brawly (RS: 2 Pokemon, no Meditite)
  {
    routeSlug: 'dewford-town', name: 'Brawly', trainerClass: 'Gym Leader',
    bossType: 'gym_leader', levelCap: 19, displayOrder: 1,
    notes: 'Fighting-type specialist. Knuckle Badge.',
    pokemon: [
      { pokemonDexId: 66, level: 16, slotOrder: 1, moves: ['Karate Chop', 'Leer', 'Seismic Toss', 'Bulk Up'], ability: 'Guts' },
      { pokemonDexId: 296, level: 19, slotOrder: 2, moves: ['Arm Thrust', 'Vital Throw', 'Reversal', 'Bulk Up'], ability: 'Thick Fat' },
    ],
  },
  // Rival battle 2: Route 110
  {
    routeSlug: 'route-110', name: 'May/Brendan', trainerClass: 'Rival',
    bossType: 'rival', levelCap: 20, displayOrder: 1,
    notes: 'Second rival battle. Team varies by starter.',
    pokemon: [
      { pokemonDexId: 218, level: 18, slotOrder: 1, moves: ['Ember', 'Rock Throw', 'Light Screen', 'Smog'], ability: 'Flame Body' },
      { pokemonDexId: 271, level: 18, slotOrder: 2, moves: ['Absorb', 'Nature Power', 'Fake Out', 'Astonish'], ability: 'Swift Swim' },
      { pokemonDexId: 253, level: 20, slotOrder: 3, moves: ['Absorb', 'Quick Attack', 'Fury Cutter', 'Pursuit'], ability: 'Overgrow' },
    ],
  },
  // Gym 3: Wattson (RS: 3 Pokemon, no Manectric)
  {
    routeSlug: 'mauville-city', name: 'Wattson', trainerClass: 'Gym Leader',
    bossType: 'gym_leader', levelCap: 24, displayOrder: 1,
    notes: 'Electric-type specialist. Dynamo Badge.',
    pokemon: [
      { pokemonDexId: 100, level: 20, slotOrder: 1, moves: ['Rollout', 'Spark', 'Self-Destruct', 'Charge'], ability: 'Soundproof' },
      { pokemonDexId: 309, level: 20, slotOrder: 2, moves: ['Howl', 'Quick Attack', 'Spark', 'Leer'], ability: 'Static' },
      { pokemonDexId: 82, level: 22, slotOrder: 3, moves: ['Sonic Boom', 'Supersonic', 'Thunder Wave', 'Shock Wave'], ability: 'Magnet Pull' },
    ],
  },
  // Gym 4: Flannery (RS: 3 Pokemon, no Camerupt)
  {
    routeSlug: 'lavaridge-town', name: 'Flannery', trainerClass: 'Gym Leader',
    bossType: 'gym_leader', levelCap: 28, displayOrder: 1,
    notes: 'Fire-type specialist. Heat Badge.',
    pokemon: [
      { pokemonDexId: 322, level: 24, slotOrder: 1, moves: ['Overheat', 'Tackle', 'Magnitude', 'Sunny Day'], ability: 'Oblivious' },
      { pokemonDexId: 218, level: 24, slotOrder: 2, moves: ['Overheat', 'Smog', 'Light Screen', 'Sunny Day'], ability: 'Flame Body' },
      { pokemonDexId: 324, level: 28, slotOrder: 3, moves: ['Overheat', 'Body Slam', 'Flail', 'Attract'], ability: 'White Smoke' },
    ],
  },
  // Gym 5: Norman
  {
    routeSlug: 'petalburg-city-gym', name: 'Norman', trainerClass: 'Gym Leader',
    bossType: 'gym_leader', levelCap: 31, displayOrder: 1,
    notes: 'Normal-type specialist. Balance Badge.',
    pokemon: [
      { pokemonDexId: 327, level: 27, slotOrder: 1, moves: ['Teeter Dance', 'Psybeam', 'Facade', 'Encore'], ability: 'Own Tempo' },
      { pokemonDexId: 288, level: 27, slotOrder: 2, moves: ['Slash', 'Faint Attack', 'Facade', 'Encore'], ability: 'Vital Spirit' },
      { pokemonDexId: 264, level: 29, slotOrder: 3, moves: ['Slash', 'Belly Drum', 'Headbutt', 'Facade'], ability: 'Pickup' },
      { pokemonDexId: 289, level: 31, slotOrder: 4, moves: ['Counter', 'Yawn', 'Facade', 'Faint Attack'], ability: 'Truant' },
    ],
  },
  // Gym 6: Winona
  {
    routeSlug: 'fortree-city', name: 'Winona', trainerClass: 'Gym Leader',
    bossType: 'gym_leader', levelCap: 33, displayOrder: 1,
    notes: 'Flying-type specialist. Feather Badge.',
    pokemon: [
      { pokemonDexId: 333, level: 29, slotOrder: 1, moves: ['Perish Song', 'Mirror Move', 'Safeguard', 'Aerial Ace'], ability: 'Natural Cure' },
      { pokemonDexId: 357, level: 29, slotOrder: 2, moves: ['Sunny Day', 'Aerial Ace', 'Solar Beam', 'Synthesis'], ability: 'Chlorophyll' },
      { pokemonDexId: 279, level: 30, slotOrder: 3, moves: ['Water Gun', 'Supersonic', 'Protect', 'Aerial Ace'], ability: 'Keen Eye' },
      { pokemonDexId: 227, level: 31, slotOrder: 4, moves: ['Sand Attack', 'Fury Attack', 'Steel Wing', 'Aerial Ace'], ability: 'Keen Eye' },
      { pokemonDexId: 334, level: 33, slotOrder: 5, moves: ['Dragon Dance', 'DragonBreath', 'Aerial Ace', 'Earthquake'], ability: 'Natural Cure' },
    ],
  },
  // Gym 7: Tate & Liza (RS: only 2 Pokemon)
  {
    routeSlug: 'mossdeep-city', name: 'Tate & Liza', trainerClass: 'Gym Leader',
    bossType: 'gym_leader', levelCap: 42, displayOrder: 1,
    notes: 'Psychic-type specialists. Mind Badge. Double battle.',
    pokemon: [
      { pokemonDexId: 338, level: 42, slotOrder: 1, moves: ['Sunny Day', 'Solar Beam', 'Psychic', 'Flamethrower'], ability: 'Levitate' },
      { pokemonDexId: 337, level: 42, slotOrder: 2, moves: ['Hypnosis', 'Calm Mind', 'Psychic', 'Light Screen'], ability: 'Levitate' },
    ],
  },
  // Gym 8: Wallace (RS Gym Leader, not Juan)
  {
    routeSlug: 'sootopolis-city', name: 'Wallace', trainerClass: 'Gym Leader',
    bossType: 'gym_leader', levelCap: 43, displayOrder: 1,
    notes: 'Water-type specialist. Rain Badge.',
    pokemon: [
      { pokemonDexId: 370, level: 40, slotOrder: 1, moves: ['Water Pulse', 'Attract', 'Sweet Kiss', 'Flail'], ability: 'Swift Swim' },
      { pokemonDexId: 340, level: 42, slotOrder: 2, moves: ['Rain Dance', 'Water Pulse', 'Amnesia', 'Earthquake'], ability: 'Oblivious' },
      { pokemonDexId: 364, level: 40, slotOrder: 3, moves: ['Encore', 'Body Slam', 'Aurora Beam', 'Water Pulse'], ability: 'Thick Fat' },
      { pokemonDexId: 119, level: 42, slotOrder: 4, moves: ['Water Pulse', 'Rain Dance', 'Fury Attack', 'Horn Drill'], ability: 'Swift Swim' },
      { pokemonDexId: 350, level: 43, slotOrder: 5, moves: ['Water Pulse', 'Twister', 'Recover', 'Ice Beam'], ability: 'Marvel Scale' },
    ],
  },
  // E4 1: Sidney (RS: Sharpedo instead of Crawdaunt)
  {
    routeSlug: 'pokemon-league', name: 'Sidney', trainerClass: 'Elite Four',
    bossType: 'elite_four', levelCap: 49, displayOrder: 1,
    notes: 'Dark-type specialist. First of the Elite Four.',
    pokemon: [
      { pokemonDexId: 262, level: 46, slotOrder: 1, moves: ['Crunch', 'Sand Attack', 'Take Down', 'Swagger'], ability: 'Intimidate' },
      { pokemonDexId: 275, level: 48, slotOrder: 2, moves: ['Fake Out', 'Double Team', 'Swagger', 'Extrasensory'], ability: 'Chlorophyll' },
      { pokemonDexId: 359, level: 49, slotOrder: 3, moves: ['Swords Dance', 'Slash', 'Aerial Ace', 'Crunch'], ability: 'Pressure' },
      { pokemonDexId: 332, level: 46, slotOrder: 4, moves: ['Needle Arm', 'Faint Attack', 'Cotton Spore', 'Leech Seed'], ability: 'Sand Veil' },
      { pokemonDexId: 319, level: 48, slotOrder: 5, moves: ['Surf', 'Crunch', 'Slash', 'Swagger'], ability: 'Rough Skin' },
    ],
  },
  // E4 2: Phoebe
  {
    routeSlug: 'pokemon-league', name: 'Phoebe', trainerClass: 'Elite Four',
    bossType: 'elite_four', levelCap: 51, displayOrder: 2,
    notes: 'Ghost-type specialist. Second of the Elite Four.',
    pokemon: [
      { pokemonDexId: 356, level: 48, slotOrder: 1, moves: ['Shadow Punch', 'Confuse Ray', 'Curse', 'Protect'], ability: 'Pressure' },
      { pokemonDexId: 354, level: 49, slotOrder: 2, moves: ['Shadow Ball', 'Grudge', 'Will-O-Wisp', 'Faint Attack'], ability: 'Insomnia' },
      { pokemonDexId: 302, level: 50, slotOrder: 3, moves: ['Shadow Ball', 'Faint Attack', 'Double Team', 'Attract'], ability: 'Keen Eye' },
      { pokemonDexId: 354, level: 49, slotOrder: 4, moves: ['Shadow Ball', 'Psychic', 'Thunderbolt', 'Toxic'], ability: 'Insomnia' },
      { pokemonDexId: 356, level: 51, slotOrder: 5, moves: ['Shadow Ball', 'Ice Beam', 'Rock Slide', 'Earthquake'], ability: 'Pressure' },
    ],
  },
  // E4 3: Glacia
  {
    routeSlug: 'pokemon-league', name: 'Glacia', trainerClass: 'Elite Four',
    bossType: 'elite_four', levelCap: 53, displayOrder: 3,
    notes: 'Ice-type specialist. Third of the Elite Four.',
    pokemon: [
      { pokemonDexId: 364, level: 50, slotOrder: 1, moves: ['Encore', 'Body Slam', 'Hail', 'Ice Ball'], ability: 'Thick Fat' },
      { pokemonDexId: 362, level: 50, slotOrder: 2, moves: ['Light Screen', 'Crunch', 'Icy Wind', 'Ice Beam'], ability: 'Inner Focus' },
      { pokemonDexId: 364, level: 52, slotOrder: 3, moves: ['Attract', 'Double Edge', 'Hail', 'Blizzard'], ability: 'Thick Fat' },
      { pokemonDexId: 362, level: 52, slotOrder: 4, moves: ['Shadow Ball', 'Hail', 'Ice Beam', 'Crunch'], ability: 'Inner Focus' },
      { pokemonDexId: 365, level: 53, slotOrder: 5, moves: ['Surf', 'Body Slam', 'Ice Beam', 'Sheer Cold'], ability: 'Thick Fat' },
    ],
  },
  // E4 4: Drake
  {
    routeSlug: 'pokemon-league', name: 'Drake', trainerClass: 'Elite Four',
    bossType: 'elite_four', levelCap: 55, displayOrder: 4,
    notes: 'Dragon-type specialist. Fourth of the Elite Four.',
    pokemon: [
      { pokemonDexId: 372, level: 52, slotOrder: 1, moves: ['Rock Tomb', 'Dragon Claw', 'Protect', 'Double Edge'], ability: 'Rock Head' },
      { pokemonDexId: 334, level: 54, slotOrder: 2, moves: ['Dragon Dance', 'Refresh', 'DragonBreath', 'Aerial Ace'], ability: 'Natural Cure' },
      { pokemonDexId: 330, level: 53, slotOrder: 3, moves: ['Flamethrower', 'Crunch', 'DragonBreath', 'Screech'], ability: 'Levitate' },
      { pokemonDexId: 330, level: 53, slotOrder: 4, moves: ['Fly', 'Crunch', 'DragonBreath', 'Dig'], ability: 'Levitate' },
      { pokemonDexId: 373, level: 55, slotOrder: 5, moves: ['Flamethrower', 'Dragon Claw', 'Rock Slide', 'Crunch'], ability: 'Intimidate' },
    ],
  },
  // Champion: Steven (RS-exclusive, replaces Wallace from Emerald)
  {
    routeSlug: 'pokemon-league', name: 'Steven', trainerClass: 'Champion',
    bossType: 'champion', levelCap: 58, displayOrder: 5,
    notes: 'Steel-type specialist. Hoenn Champion in Ruby/Sapphire.',
    pokemon: [
      { pokemonDexId: 227, level: 57, slotOrder: 1, moves: ['Toxic', 'Steel Wing', 'Aerial Ace', 'Spikes'], ability: 'Keen Eye' },
      { pokemonDexId: 344, level: 55, slotOrder: 2, moves: ['Earthquake', 'AncientPower', 'Light Screen', 'Reflect'], ability: 'Levitate' },
      { pokemonDexId: 306, level: 56, slotOrder: 3, moves: ['Earthquake', 'Dragon Claw', 'Thunder', 'SolarBeam'], ability: 'Sturdy' },
      { pokemonDexId: 346, level: 56, slotOrder: 4, moves: ['AncientPower', 'Confuse Ray', 'Sludge Bomb', 'Giga Drain'], ability: 'Suction Cups' },
      { pokemonDexId: 348, level: 56, slotOrder: 5, moves: ['AncientPower', 'Slash', 'Aerial Ace', 'Water Pulse'], ability: 'Battle Armor' },
      { pokemonDexId: 376, level: 58, slotOrder: 6, moves: ['Meteor Mash', 'Earthquake', 'Psychic', 'Hyper Beam'], ability: 'Clear Body', heldItem: 'Sitrus Berry' },
    ],
  },
];

// ─── Game Configs ────────────────────────────────────────────────────────────

const starters = {
  routeSlug: 'littleroot-town',
  pokemon: [
    { dexId: 252, level: 5 },  // Treecko
    { dexId: 255, level: 5 },  // Torchic
    { dexId: 258, level: 5 },  // Mudkip
  ],
};

const rubyConfig: GameConfig = {
  id: RUBY_ID,
  slug: 'pokemon-ruby',
  name: 'Pokemon Ruby',
  generation: 3,
  region: 'Hoenn',
  baseGameSlug: null,
  isRomhack: false,
  spriteUrl: 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/383.png',
  description: 'Pokemon Ruby Version for Game Boy Advance. Set in the Hoenn region with Team Magma as the villains.',
  pokeapiVersionName: 'ruby',
  routes,
  starters,
  bossTrainers,
};

const sapphireConfig: GameConfig = {
  id: SAPPHIRE_ID,
  slug: 'pokemon-sapphire',
  name: 'Pokemon Sapphire',
  generation: 3,
  region: 'Hoenn',
  baseGameSlug: null,
  isRomhack: false,
  spriteUrl: 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/382.png',
  description: 'Pokemon Sapphire Version for Game Boy Advance. Set in the Hoenn region with Team Aqua as the villains.',
  pokeapiVersionName: 'sapphire',
  routes,
  starters,
  bossTrainers,
};

export default [rubyConfig, sapphireConfig];
