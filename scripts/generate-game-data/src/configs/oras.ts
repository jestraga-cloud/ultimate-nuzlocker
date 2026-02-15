import type { GameConfig, RouteConfig, BossTrainerConfig } from '../types.js';

// ─── Pokemon Omega Ruby / Alpha Sapphire Configuration ──────────────────────
// Gen 6, Hoenn region (remakes).
// NOTE: PokeAPI has incomplete ORAS-specific encounter data, so we use
// 'ruby'/'sapphire' version names to get the base Hoenn encounter tables.
// The overworld encounters are largely the same (ORAS adds DexNav on top).
// Boss trainers use ORAS-specific teams with Mega Evolution.
// Key differences from Ruby/Sapphire:
// - Updated boss trainer teams (new moves, Mega Evolution)
// - DexNav encounters (more Pokemon available)
// - Gym 8: Wallace (Water) in both versions
// - Champion: Steven in both versions (Mega Metagross)
// - Tate & Liza have 4 Pokemon (vs 2 in RS)
// - Steven's Metagross holds Metagrossite

const OR_ID = 'f8a9b0c1-d2e3-4567-f890-123456789012';
const AS_ID = 'a9b0c1d2-e3f4-5678-a901-234567890123';

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
  { name: 'Sky Pillar', slug: 'sky-pillar', displayOrder: 66, routeType: 'building', hasEncounters: true, hasTrainers: false, hasItems: false, notes: 'Rayquaza encounter.', pokeapiAreas: ['sky-pillar-1f', 'sky-pillar-3f', 'sky-pillar-5f'] },
  { name: 'Sea Mauville', slug: 'sea-mauville', displayOrder: 67, routeType: 'building', hasEncounters: true, hasTrainers: false, hasItems: true, notes: 'Abandoned research facility. Replaces Abandoned Ship.', pokeapiAreas: [] },
];

// ─── Boss Trainers ───────────────────────────────────────────────────────────

const bossTrainers: BossTrainerConfig[] = [
  // Gym 1: Roxanne (Stone Badge)
  {
    routeSlug: 'rustboro-city', name: 'Roxanne', trainerClass: 'Gym Leader',
    bossType: 'gym_leader', levelCap: 14, displayOrder: 1,
    notes: 'Rock-type specialist. Stone Badge.',
    pokemon: [
      { pokemonDexId: 74, level: 12, slotOrder: 1, moves: ['Tackle', 'Defense Curl', 'Rock Tomb'], ability: 'Sturdy' },
      { pokemonDexId: 299, level: 14, slotOrder: 2, moves: ['Tackle', 'Harden', 'Rock Tomb'], ability: 'Magnet Pull' },
    ],
  },
  // Gym 2: Brawly (Knuckle Badge)
  {
    routeSlug: 'dewford-town', name: 'Brawly', trainerClass: 'Gym Leader',
    bossType: 'gym_leader', levelCap: 16, displayOrder: 2,
    notes: 'Fighting-type specialist. Knuckle Badge.',
    pokemon: [
      { pokemonDexId: 66, level: 14, slotOrder: 1, moves: ['Leer', 'Karate Chop', 'Seismic Toss', 'Bulk Up'], ability: 'Guts' },
      { pokemonDexId: 296, level: 16, slotOrder: 2, moves: ['Arm Thrust', 'Knock Off', 'Sand Attack', 'Bulk Up'], ability: 'Guts' },
    ],
  },
  // Gym 3: Wattson (Dynamo Badge)
  {
    routeSlug: 'mauville-city', name: 'Wattson', trainerClass: 'Gym Leader',
    bossType: 'gym_leader', levelCap: 21, displayOrder: 3,
    notes: 'Electric-type specialist. Dynamo Badge.',
    pokemon: [
      { pokemonDexId: 81, level: 19, slotOrder: 1, moves: ['Thunder Wave', 'Tackle', 'Volt Switch'], ability: 'Sturdy' },
      { pokemonDexId: 100, level: 19, slotOrder: 2, moves: ['Rollout', 'Charge', 'Volt Switch'], ability: 'Soundproof' },
      { pokemonDexId: 82, level: 21, slotOrder: 3, moves: ['Supersonic', 'Magnet Bomb', 'Volt Switch'], ability: 'Magnet Pull' },
    ],
  },
  // Gym 4: Flannery (Heat Badge)
  {
    routeSlug: 'lavaridge-town', name: 'Flannery', trainerClass: 'Gym Leader',
    bossType: 'gym_leader', levelCap: 28, displayOrder: 4,
    notes: 'Fire-type specialist. Heat Badge.',
    pokemon: [
      { pokemonDexId: 218, level: 26, slotOrder: 1, moves: ['Overheat', 'Rock Throw', 'Light Screen', 'Sunny Day'], ability: 'Flame Body' },
      { pokemonDexId: 322, level: 26, slotOrder: 2, moves: ['Earth Power', 'Lava Plume', 'Amnesia', 'Sunny Day'], ability: 'Simple' },
      { pokemonDexId: 324, level: 28, slotOrder: 3, moves: ['Overheat', 'Body Slam', 'Curse', 'Sunny Day'], ability: 'White Smoke' },
    ],
  },
  // Gym 5: Norman (Balance Badge)
  {
    routeSlug: 'petalburg-city-gym', name: 'Norman', trainerClass: 'Gym Leader',
    bossType: 'gym_leader', levelCap: 31, displayOrder: 5,
    notes: 'Normal-type specialist. Balance Badge.',
    pokemon: [
      { pokemonDexId: 327, level: 27, slotOrder: 1, moves: ['Teeter Dance', 'Psybeam', 'Facade', 'Encore'], ability: 'Own Tempo' },
      { pokemonDexId: 288, level: 27, slotOrder: 2, moves: ['Slash', 'Facade', 'Encore', 'Feint Attack'], ability: 'Vital Spirit' },
      { pokemonDexId: 264, level: 29, slotOrder: 3, moves: ['Slash', 'Belly Drum', 'Facade', 'Headbutt'], ability: 'Pickup' },
      { pokemonDexId: 289, level: 31, slotOrder: 4, moves: ['Counter', 'Yawn', 'Facade', 'Feint Attack'], ability: 'Truant', heldItem: 'Sitrus Berry' },
    ],
  },
  // Gym 6: Winona (Feather Badge)
  {
    routeSlug: 'fortree-city', name: 'Winona', trainerClass: 'Gym Leader',
    bossType: 'gym_leader', levelCap: 33, displayOrder: 6,
    notes: 'Flying-type specialist. Feather Badge.',
    pokemon: [
      { pokemonDexId: 277, level: 31, slotOrder: 1, moves: ['Quick Attack', 'Aerial Ace', 'Double Team', 'Endeavor'], ability: 'Guts' },
      { pokemonDexId: 279, level: 30, slotOrder: 2, moves: ['Water Gun', 'Supersonic', 'Protect', 'Aerial Ace'], ability: 'Keen Eye' },
      { pokemonDexId: 227, level: 32, slotOrder: 3, moves: ['Sand Attack', 'Fury Attack', 'Steel Wing', 'Aerial Ace'], ability: 'Keen Eye' },
      { pokemonDexId: 334, level: 33, slotOrder: 4, moves: ['Earthquake', 'Dragon Breath', 'Dragon Dance', 'Aerial Ace'], ability: 'Natural Cure' },
    ],
  },
  // Gym 7: Tate & Liza (Mind Badge) - Double Battle, 4 Pokemon in ORAS
  {
    routeSlug: 'mossdeep-city', name: 'Tate & Liza', trainerClass: 'Gym Leader',
    bossType: 'gym_leader', levelCap: 42, displayOrder: 7,
    notes: 'Psychic-type specialists. Mind Badge. Double Battle.',
    pokemon: [
      { pokemonDexId: 344, level: 41, slotOrder: 1, moves: ['Earthquake', 'Ancient Power', 'Psychic', 'Light Screen'], ability: 'Levitate' },
      { pokemonDexId: 178, level: 41, slotOrder: 2, moves: ['Psychic', 'Sunny Day', 'Confuse Ray', 'Calm Mind'], ability: 'Synchronize' },
      { pokemonDexId: 337, level: 42, slotOrder: 3, moves: ['Light Screen', 'Psychic', 'Hypnosis', 'Calm Mind'], ability: 'Levitate', heldItem: 'Sitrus Berry' },
      { pokemonDexId: 338, level: 42, slotOrder: 4, moves: ['Sunny Day', 'Solar Beam', 'Psychic', 'Flamethrower'], ability: 'Levitate', heldItem: 'Sitrus Berry' },
    ],
  },
  // Gym 8: Wallace (Rain Badge)
  {
    routeSlug: 'sootopolis-city', name: 'Wallace', trainerClass: 'Gym Leader',
    bossType: 'gym_leader', levelCap: 46, displayOrder: 8,
    notes: 'Water-type specialist. Rain Badge.',
    pokemon: [
      { pokemonDexId: 370, level: 44, slotOrder: 1, moves: ['Draining Kiss', 'Attract', 'Sweet Kiss', 'Water Pulse'], ability: 'Swift Swim' },
      { pokemonDexId: 340, level: 44, slotOrder: 2, moves: ['Earthquake', 'Zen Headbutt', 'Waterfall', 'Mud Sport'], ability: 'Oblivious' },
      { pokemonDexId: 364, level: 44, slotOrder: 3, moves: ['Encore', 'Waterfall', 'Aurora Beam', 'Body Slam'], ability: 'Thick Fat' },
      { pokemonDexId: 119, level: 44, slotOrder: 4, moves: ['Waterfall', 'Rain Dance', 'Aqua Ring', 'Horn Drill'], ability: 'Swift Swim' },
      { pokemonDexId: 350, level: 46, slotOrder: 5, moves: ['Hydro Pump', 'Recover', 'Ice Beam', 'Disarming Voice'], ability: 'Marvel Scale' },
    ],
  },
  // E4 1: Sidney (Dark)
  {
    routeSlug: 'pokemon-league', name: 'Sidney', trainerClass: 'Elite Four',
    bossType: 'elite_four', levelCap: 52, displayOrder: 1,
    notes: 'Dark-type specialist.',
    pokemon: [
      { pokemonDexId: 262, level: 50, slotOrder: 1, moves: ['Swagger', 'Take Down', 'Sucker Punch', 'Crunch'], ability: 'Intimidate' },
      { pokemonDexId: 275, level: 50, slotOrder: 2, moves: ['Fake Out', 'Feint Attack', 'Extrasensory', 'Leaf Blade'], ability: 'Chlorophyll' },
      { pokemonDexId: 332, level: 50, slotOrder: 3, moves: ['Leech Seed', 'Payback', 'Needle Arm', 'Spiky Shield'], ability: 'Sand Veil' },
      { pokemonDexId: 319, level: 50, slotOrder: 4, moves: ['Crunch', 'Poison Fang', 'Aqua Jet', 'Slash'], ability: 'Rough Skin' },
      { pokemonDexId: 359, level: 52, slotOrder: 5, moves: ['Aerial Ace', 'Night Slash', 'Psycho Cut', 'Slash'], ability: 'Super Luck' },
    ],
  },
  // E4 2: Phoebe (Ghost)
  {
    routeSlug: 'pokemon-league', name: 'Phoebe', trainerClass: 'Elite Four',
    bossType: 'elite_four', levelCap: 53, displayOrder: 2,
    notes: 'Ghost-type specialist.',
    pokemon: [
      { pokemonDexId: 356, level: 51, slotOrder: 1, moves: ['Shadow Punch', 'Confuse Ray', 'Curse', 'Future Sight'], ability: 'Pressure' },
      { pokemonDexId: 354, level: 51, slotOrder: 2, moves: ['Shadow Ball', 'Spite', 'Will-O-Wisp', 'Feint Attack'], ability: 'Insomnia' },
      { pokemonDexId: 302, level: 51, slotOrder: 3, moves: ['Shadow Claw', 'Foul Play', 'Power Gem', 'Fake Out'], ability: 'Prankster' },
      { pokemonDexId: 354, level: 51, slotOrder: 4, moves: ['Shadow Ball', 'Grudge', 'Toxic', 'Psychic'], ability: 'Insomnia' },
      { pokemonDexId: 477, level: 53, slotOrder: 5, moves: ['Hex', 'Fire Punch', 'Ice Punch', 'Thunder Punch'], ability: 'Pressure' },
    ],
  },
  // E4 3: Glacia (Ice)
  {
    routeSlug: 'pokemon-league', name: 'Glacia', trainerClass: 'Elite Four',
    bossType: 'elite_four', levelCap: 54, displayOrder: 3,
    notes: 'Ice-type specialist.',
    pokemon: [
      { pokemonDexId: 362, level: 52, slotOrder: 1, moves: ['Light Screen', 'Ice Shard', 'Hail', 'Crunch'], ability: 'Inner Focus' },
      { pokemonDexId: 478, level: 52, slotOrder: 2, moves: ['Confuse Ray', 'Blizzard', 'Hail', 'Ominous Wind'], ability: 'Snow Cloak' },
      { pokemonDexId: 362, level: 52, slotOrder: 3, moves: ['Protect', 'Ice Shard', 'Hail', 'Freeze-Dry'], ability: 'Inner Focus' },
      { pokemonDexId: 478, level: 52, slotOrder: 4, moves: ['Draining Kiss', 'Blizzard', 'Hail', 'Shadow Ball'], ability: 'Snow Cloak' },
      { pokemonDexId: 365, level: 54, slotOrder: 5, moves: ['Surf', 'Body Slam', 'Blizzard', 'Sheer Cold'], ability: 'Thick Fat' },
    ],
  },
  // E4 4: Drake (Dragon)
  {
    routeSlug: 'pokemon-league', name: 'Drake', trainerClass: 'Elite Four',
    bossType: 'elite_four', levelCap: 55, displayOrder: 4,
    notes: 'Dragon-type specialist.',
    pokemon: [
      { pokemonDexId: 334, level: 53, slotOrder: 1, moves: ['Aerial Ace', 'Cotton Guard', 'Dragon Pulse', 'Moonblast'], ability: 'Natural Cure' },
      { pokemonDexId: 330, level: 53, slotOrder: 2, moves: ['Earthquake', 'Dragon Claw', 'Rock Slide', 'Supersonic'], ability: 'Levitate' },
      { pokemonDexId: 230, level: 53, slotOrder: 3, moves: ['Dragon Pulse', 'Surf', 'Yawn', 'Ice Beam'], ability: 'Sniper' },
      { pokemonDexId: 330, level: 53, slotOrder: 4, moves: ['Flamethrower', 'Boomburst', 'Dragon Pulse', 'Screech'], ability: 'Levitate' },
      { pokemonDexId: 373, level: 55, slotOrder: 5, moves: ['Dragon Rush', 'Zen Headbutt', 'Crunch', 'Thunder Fang'], ability: 'Intimidate' },
    ],
  },
  // Champion: Steven (Mega Metagross)
  {
    routeSlug: 'pokemon-league', name: 'Steven', trainerClass: 'Champion',
    bossType: 'champion', levelCap: 59, displayOrder: 5,
    notes: 'Steel-type specialist. Metagross Mega Evolves.',
    pokemon: [
      { pokemonDexId: 227, level: 57, slotOrder: 1, moves: ['Toxic', 'Aerial Ace', 'Spikes', 'Steel Wing'], ability: 'Sturdy' },
      { pokemonDexId: 344, level: 57, slotOrder: 2, moves: ['Reflect', 'Light Screen', 'Extrasensory', 'Earth Power'], ability: 'Levitate' },
      { pokemonDexId: 306, level: 57, slotOrder: 3, moves: ['Stone Edge', 'Earthquake', 'Iron Tail', 'Dragon Claw'], ability: 'Sturdy' },
      { pokemonDexId: 346, level: 57, slotOrder: 4, moves: ['Giga Drain', 'Ancient Power', 'Sludge Bomb', 'Confuse Ray'], ability: 'Suction Cups' },
      { pokemonDexId: 348, level: 57, slotOrder: 5, moves: ['X-Scissor', 'Rock Blast', 'Metal Claw', 'Crush Claw'], ability: 'Battle Armor' },
      { pokemonDexId: 376, level: 59, slotOrder: 6, moves: ['Meteor Mash', 'Bullet Punch', 'Zen Headbutt', 'Giga Impact'], ability: 'Clear Body', heldItem: 'Metagrossite' },
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

const omegaRubyConfig: GameConfig = {
  id: OR_ID,
  slug: 'pokemon-omega-ruby',
  name: 'Pokemon Omega Ruby',
  generation: 6,
  region: 'Hoenn',
  baseGameSlug: null,
  isRomhack: false,
  spriteUrl: 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/383.png',
  description: 'Pokemon Omega Ruby for Nintendo 3DS. A remake of Ruby set in the Hoenn region with Mega Evolution and updated encounters.',
  pokeapiVersionName: 'ruby', // Falls back to RS data (PokeAPI lacks ORAS encounters)
  routes,
  starters,
  bossTrainers,
};

const alphaSapphireConfig: GameConfig = {
  id: AS_ID,
  slug: 'pokemon-alpha-sapphire',
  name: 'Pokemon Alpha Sapphire',
  generation: 6,
  region: 'Hoenn',
  baseGameSlug: null,
  isRomhack: false,
  spriteUrl: 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/382.png',
  description: 'Pokemon Alpha Sapphire for Nintendo 3DS. A remake of Sapphire set in the Hoenn region with Mega Evolution and updated encounters.',
  pokeapiVersionName: 'sapphire', // Falls back to RS data (PokeAPI lacks ORAS encounters)
  routes,
  starters,
  bossTrainers,
};

export default [omegaRubyConfig, alphaSapphireConfig];
