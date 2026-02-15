import type { GameConfig, RouteConfig, BossTrainerConfig } from '../types.js';

// ─── Pokemon Platinum Route Configuration ────────────────────────────────────
// Adapted from Renegade Platinum route structure with PokeAPI location-area mappings
// Route order follows the standard Platinum game progression

const GAME_ID = 'e5f6a7b8-c9d0-1234-efab-567890123456';

const routes: RouteConfig[] = [
  // ── Early Game (Pre-Oreburgh) ──
  { name: 'Twinleaf Town', slug: 'twinleaf-town', displayOrder: 1, routeType: 'city', hasEncounters: true, hasTrainers: false, hasItems: false, notes: 'Starter town. Choose Turtwig, Chimchar, or Piplup.', pokeapiAreas: [] },
  { name: 'Route 201', slug: 'route-201', displayOrder: 2, routeType: 'route', hasEncounters: true, hasTrainers: false, hasItems: false, notes: null, pokeapiAreas: ['sinnoh-route-201-area'] },
  { name: 'Lake Verity', slug: 'lake-verity', displayOrder: 3, routeType: 'water', hasEncounters: true, hasTrainers: false, hasItems: false, notes: null, pokeapiAreas: ['lake-verity-before-galactic-intervention', 'lake-verity-after-galactic-intervention'] },
  { name: 'Route 202', slug: 'route-202', displayOrder: 4, routeType: 'route', hasEncounters: true, hasTrainers: false, hasItems: false, notes: null, pokeapiAreas: ['sinnoh-route-202-area'] },
  { name: 'Route 204 ~ South', slug: 'route-204-south', displayOrder: 5, routeType: 'route', hasEncounters: true, hasTrainers: false, hasItems: false, notes: null, pokeapiAreas: ['sinnoh-route-204-south-towards-jubilife-city'] },
  { name: 'Ravaged Path', slug: 'ravaged-path', displayOrder: 6, routeType: 'cave', hasEncounters: true, hasTrainers: false, hasItems: false, notes: null, pokeapiAreas: ['ravaged-path-area'] },
  { name: 'Route 203', slug: 'route-203', displayOrder: 7, routeType: 'route', hasEncounters: true, hasTrainers: false, hasItems: false, notes: null, pokeapiAreas: ['sinnoh-route-203-area'] },
  { name: 'Oreburgh Gate ~ 1F', slug: 'oreburgh-gate-1f', displayOrder: 8, routeType: 'cave', hasEncounters: true, hasTrainers: false, hasItems: false, notes: null, pokeapiAreas: ['oreburgh-gate-1f'] },
  { name: 'Oreburgh Gate ~ B1F', slug: 'oreburgh-gate-b1f', displayOrder: 9, routeType: 'cave', hasEncounters: true, hasTrainers: false, hasItems: false, notes: 'Requires Surf and Strength.', pokeapiAreas: ['oreburgh-gate-b1f'] },
  { name: 'Oreburgh Mine ~ 1F', slug: 'oreburgh-mine-1f', displayOrder: 10, routeType: 'cave', hasEncounters: true, hasTrainers: false, hasItems: false, notes: null, pokeapiAreas: ['oreburgh-mine-1f'] },
  { name: 'Oreburgh Mine ~ B1F', slug: 'oreburgh-mine-b1f', displayOrder: 11, routeType: 'cave', hasEncounters: true, hasTrainers: false, hasItems: false, notes: null, pokeapiAreas: ['oreburgh-mine-b1f'] },

  // ── Oreburgh to Eterna ──
  { name: 'Route 207', slug: 'route-207', displayOrder: 12, routeType: 'route', hasEncounters: true, hasTrainers: false, hasItems: false, notes: null, pokeapiAreas: ['sinnoh-route-207-area'] },
  { name: 'Route 204 ~ North', slug: 'route-204-north', displayOrder: 13, routeType: 'route', hasEncounters: true, hasTrainers: false, hasItems: false, notes: null, pokeapiAreas: ['sinnoh-route-204-north-towards-floaroma-town'] },
  { name: 'Valley Windworks', slug: 'valley-windworks', displayOrder: 14, routeType: 'building', hasEncounters: true, hasTrainers: false, hasItems: false, notes: null, pokeapiAreas: ['valley-windworks-area'] },
  { name: 'Floaroma Meadow', slug: 'floaroma-meadow', displayOrder: 15, routeType: 'route', hasEncounters: false, hasTrainers: false, hasItems: false, notes: 'Honey trees only. No wild encounters in PokeAPI.', pokeapiAreas: [] },
  { name: 'Route 205 ~ South', slug: 'route-205-south', displayOrder: 16, routeType: 'route', hasEncounters: true, hasTrainers: false, hasItems: false, notes: null, pokeapiAreas: ['sinnoh-route-205-south-towards-floaroma-town'] },
  { name: 'Eterna Forest', slug: 'eterna-forest', displayOrder: 17, routeType: 'route', hasEncounters: true, hasTrainers: false, hasItems: false, notes: null, pokeapiAreas: ['eterna-forest-area'] },
  { name: 'Old Chateau', slug: 'old-chateau', displayOrder: 18, routeType: 'building', hasEncounters: true, hasTrainers: false, hasItems: false, notes: 'Requires Cut. Ghost Pokemon at night.', pokeapiAreas: ['old-chateau-entrance', 'old-chateau-2f'] },
  { name: 'Route 205 ~ North', slug: 'route-205-north', displayOrder: 19, routeType: 'route', hasEncounters: true, hasTrainers: false, hasItems: false, notes: null, pokeapiAreas: ['sinnoh-route-205-east-towards-eterna-city'] },

  // ── Eterna to Hearthome ──
  { name: 'Route 211 ~ West', slug: 'route-211-west', displayOrder: 20, routeType: 'route', hasEncounters: true, hasTrainers: false, hasItems: false, notes: null, pokeapiAreas: ['sinnoh-route-211-west-towards-eterna-city'] },
  { name: 'Mt. Coronet ~ Route 207 Entrance', slug: 'mt-coronet-route-207', displayOrder: 21, routeType: 'cave', hasEncounters: true, hasTrainers: false, hasItems: false, notes: null, pokeapiAreas: ['mt-coronet-1f-route-207'] },
  { name: 'Route 206', slug: 'route-206', displayOrder: 22, routeType: 'route', hasEncounters: true, hasTrainers: false, hasItems: false, notes: null, pokeapiAreas: ['sinnoh-route-206-area'] },
  { name: 'Wayward Cave', slug: 'wayward-cave', displayOrder: 23, routeType: 'cave', hasEncounters: true, hasTrainers: false, hasItems: false, notes: 'Regular and secret entrance have different Pokemon.', pokeapiAreas: ['wayward-cave-1f', 'wayward-cave-b1f'] },
  { name: 'Route 208', slug: 'route-208', displayOrder: 24, routeType: 'route', hasEncounters: true, hasTrainers: false, hasItems: false, notes: null, pokeapiAreas: ['sinnoh-route-208-area'] },

  // ── Hearthome to Veilstone ──
  { name: 'Route 209', slug: 'route-209', displayOrder: 25, routeType: 'route', hasEncounters: true, hasTrainers: false, hasItems: false, notes: null, pokeapiAreas: ['sinnoh-route-209-area'] },
  { name: 'Lost Tower', slug: 'lost-tower', displayOrder: 26, routeType: 'building', hasEncounters: true, hasTrainers: false, hasItems: false, notes: null, pokeapiAreas: ['lost-tower-3f', 'lost-tower-4f', 'lost-tower-5f'] },
  { name: 'Solaceon Ruins', slug: 'solaceon-ruins', displayOrder: 27, routeType: 'special', hasEncounters: true, hasTrainers: false, hasItems: false, notes: 'Unown only.', pokeapiAreas: ['solaceon-ruins-2f'] },
  { name: 'Route 210 ~ South', slug: 'route-210-south', displayOrder: 28, routeType: 'route', hasEncounters: true, hasTrainers: false, hasItems: false, notes: null, pokeapiAreas: ['sinnoh-route-210-south-towards-solaceon-town'] },
  { name: 'Route 215', slug: 'route-215', displayOrder: 29, routeType: 'route', hasEncounters: true, hasTrainers: false, hasItems: false, notes: null, pokeapiAreas: ['sinnoh-route-215-area'] },

  // ── Veilstone to Pastoria ──
  { name: 'Route 214', slug: 'route-214', displayOrder: 30, routeType: 'route', hasEncounters: true, hasTrainers: false, hasItems: false, notes: null, pokeapiAreas: ['sinnoh-route-214-area'] },
  { name: 'Maniac Tunnel', slug: 'maniac-tunnel', displayOrder: 31, routeType: 'cave', hasEncounters: true, hasTrainers: false, hasItems: false, notes: null, pokeapiAreas: ['ruin-maniac-cave-0-9-different-unown-caught', 'ruin-maniac-cave-10-25-different-unown-caught'] },
  { name: 'Valor Lakefront', slug: 'valor-lakefront', displayOrder: 32, routeType: 'route', hasEncounters: true, hasTrainers: false, hasItems: false, notes: null, pokeapiAreas: ['valor-lakefront-area'] },
  { name: 'Route 213', slug: 'route-213', displayOrder: 33, routeType: 'route', hasEncounters: true, hasTrainers: false, hasItems: false, notes: null, pokeapiAreas: ['sinnoh-route-213-area'] },
  { name: 'Route 212 ~ North', slug: 'route-212-north', displayOrder: 34, routeType: 'route', hasEncounters: true, hasTrainers: false, hasItems: false, notes: null, pokeapiAreas: ['sinnoh-route-212-north-towards-hearthome-city'] },
  { name: 'Trophy Garden', slug: 'trophy-garden', displayOrder: 35, routeType: 'special', hasEncounters: true, hasTrainers: false, hasItems: false, notes: 'Daily rotating rare Pokemon.', pokeapiAreas: ['trophy-garden-area'] },
  { name: 'Route 212 ~ South', slug: 'route-212-south', displayOrder: 36, routeType: 'route', hasEncounters: true, hasTrainers: false, hasItems: false, notes: null, pokeapiAreas: ['sinnoh-route-212-east-towards-pastoria-city'] },
  { name: 'Great Marsh', slug: 'great-marsh', displayOrder: 37, routeType: 'special', hasEncounters: true, hasTrainers: false, hasItems: false, notes: 'Safari Zone. Daily rotating Pokemon with binoculars.', pokeapiAreas: ['great-marsh-area-1', 'great-marsh-area-2', 'great-marsh-area-3', 'great-marsh-area-4', 'great-marsh-area-5', 'great-marsh-area-6'] },

  // ── Pastoria to Canalave ──
  { name: 'Route 210 ~ North', slug: 'route-210-north', displayOrder: 38, routeType: 'route', hasEncounters: true, hasTrainers: false, hasItems: false, notes: null, pokeapiAreas: ['sinnoh-route-210-west-towards-celestic-town'] },
  { name: 'Celestic Town', slug: 'celestic-town', displayOrder: 39, routeType: 'city', hasEncounters: false, hasTrainers: false, hasItems: false, notes: null },
  { name: 'Fuego Ironworks', slug: 'fuego-ironworks', displayOrder: 40, routeType: 'building', hasEncounters: true, hasTrainers: false, hasItems: false, notes: null, pokeapiAreas: ['fuego-ironworks-area'] },
  { name: 'Route 219', slug: 'route-219', displayOrder: 41, routeType: 'water', hasEncounters: true, hasTrainers: false, hasItems: false, notes: null, pokeapiAreas: ['sinnoh-route-219-area'] },
  { name: 'Route 220', slug: 'route-220', displayOrder: 42, routeType: 'water', hasEncounters: true, hasTrainers: false, hasItems: false, notes: null, pokeapiAreas: ['sinnoh-route-220-area'] },
  { name: 'Route 221', slug: 'route-221', displayOrder: 43, routeType: 'route', hasEncounters: true, hasTrainers: false, hasItems: false, notes: null, pokeapiAreas: ['sinnoh-route-221-area'] },
  { name: 'Route 218', slug: 'route-218', displayOrder: 44, routeType: 'route', hasEncounters: true, hasTrainers: false, hasItems: false, notes: null, pokeapiAreas: ['sinnoh-route-218-area'] },

  // ── Canalave to Snowpoint ──
  { name: 'Iron Island ~ Outside', slug: 'iron-island-outside', displayOrder: 45, routeType: 'water', hasEncounters: true, hasTrainers: false, hasItems: false, notes: null, pokeapiAreas: ['iron-island-area'] },
  { name: 'Iron Island ~ Interior', slug: 'iron-island-interior', displayOrder: 46, routeType: 'cave', hasEncounters: true, hasTrainers: false, hasItems: false, notes: 'Riley gives you a Riolu egg here.', pokeapiAreas: ['iron-island-1f', 'iron-island-b1f-left', 'iron-island-b1f-right', 'iron-island-b2f-left', 'iron-island-b2f-right', 'iron-island-b3f'] },
  { name: 'Route 216', slug: 'route-216', displayOrder: 47, routeType: 'route', hasEncounters: true, hasTrainers: false, hasItems: false, notes: null, pokeapiAreas: ['sinnoh-route-216-area'] },
  { name: 'Route 217', slug: 'route-217', displayOrder: 48, routeType: 'route', hasEncounters: true, hasTrainers: false, hasItems: false, notes: null, pokeapiAreas: ['sinnoh-route-217-area'] },
  { name: 'Acuity Lakefront', slug: 'acuity-lakefront', displayOrder: 49, routeType: 'route', hasEncounters: true, hasTrainers: false, hasItems: false, notes: null, pokeapiAreas: ['acuity-lakefront-area'] },
  { name: 'Lake Acuity', slug: 'lake-acuity', displayOrder: 50, routeType: 'water', hasEncounters: true, hasTrainers: false, hasItems: false, notes: null, pokeapiAreas: ['lake-acuity-area'] },
  { name: 'Snowpoint Temple', slug: 'snowpoint-temple', displayOrder: 51, routeType: 'cave', hasEncounters: true, hasTrainers: false, hasItems: false, notes: 'Regigigas encounter at the bottom.', pokeapiAreas: ['snowpoint-temple-1f', 'snowpoint-temple-b1f', 'snowpoint-temple-b2f', 'snowpoint-temple-b3f'] },

  // ── Mt. Coronet Climb ──
  { name: 'Mt. Coronet ~ B1F', slug: 'mt-coronet-b1f', displayOrder: 52, routeType: 'cave', hasEncounters: true, hasTrainers: false, hasItems: false, notes: null, pokeapiAreas: ['mt-coronet-b1f'] },
  { name: 'Mt. Coronet ~ 2F', slug: 'mt-coronet-2f', displayOrder: 53, routeType: 'cave', hasEncounters: true, hasTrainers: false, hasItems: false, notes: null, pokeapiAreas: ['mt-coronet-2f'] },
  { name: 'Mt. Coronet ~ 3F', slug: 'mt-coronet-3f', displayOrder: 54, routeType: 'cave', hasEncounters: true, hasTrainers: false, hasItems: false, notes: null, pokeapiAreas: ['mt-coronet-3f'] },
  { name: 'Mt. Coronet ~ Exterior', slug: 'mt-coronet-exterior', displayOrder: 55, routeType: 'cave', hasEncounters: true, hasTrainers: false, hasItems: false, notes: null, pokeapiAreas: ['mt-coronet-exterior-snowfall', 'mt-coronet-exterior-blizzard'] },
  { name: 'Mt. Coronet ~ 4F', slug: 'mt-coronet-4f', displayOrder: 56, routeType: 'cave', hasEncounters: true, hasTrainers: false, hasItems: false, notes: null, pokeapiAreas: ['mt-coronet-4f', 'mt-coronet-4f-small-room'] },
  { name: 'Mt. Coronet ~ 5F', slug: 'mt-coronet-5f', displayOrder: 57, routeType: 'cave', hasEncounters: true, hasTrainers: false, hasItems: false, notes: null, pokeapiAreas: ['mt-coronet-5f'] },
  { name: 'Mt. Coronet ~ 6F', slug: 'mt-coronet-6f', displayOrder: 58, routeType: 'cave', hasEncounters: true, hasTrainers: false, hasItems: false, notes: null, pokeapiAreas: ['mt-coronet-6f'] },
  { name: 'Mt. Coronet ~ Summit', slug: 'mt-coronet-summit', displayOrder: 59, routeType: 'cave', hasEncounters: false, hasTrainers: false, hasItems: false, notes: 'Spear Pillar. Giratina encounter.', pokeapiAreas: [] },

  // ── Distortion World / Lake Trio ──
  { name: 'Sendoff Spring', slug: 'sendoff-spring', displayOrder: 60, routeType: 'water', hasEncounters: true, hasTrainers: false, hasItems: false, notes: null, pokeapiAreas: ['spring-path-area'] },
  { name: 'Turnback Cave', slug: 'turnback-cave', displayOrder: 61, routeType: 'cave', hasEncounters: true, hasTrainers: false, hasItems: false, notes: null, pokeapiAreas: ['turnback-cave-before-pillar-1', 'turnback-cave-pillar-1', 'turnback-cave-between-pillars-1-and-2'] },
  { name: 'Lake Valor', slug: 'lake-valor', displayOrder: 62, routeType: 'water', hasEncounters: true, hasTrainers: false, hasItems: false, notes: null, pokeapiAreas: ['lake-valor-area'] },

  // ── Sunyshore to Pokemon League ──
  { name: 'Route 222', slug: 'route-222', displayOrder: 63, routeType: 'route', hasEncounters: true, hasTrainers: false, hasItems: false, notes: null, pokeapiAreas: ['sinnoh-route-222-area'] },
  { name: 'Route 223', slug: 'route-223', displayOrder: 64, routeType: 'water', hasEncounters: true, hasTrainers: false, hasItems: false, notes: null, pokeapiAreas: ['sinnoh-route-223-area'] },
  { name: 'Victory Road ~ 1F', slug: 'victory-road-1f', displayOrder: 65, routeType: 'cave', hasEncounters: true, hasTrainers: false, hasItems: false, notes: null, pokeapiAreas: ['sinnoh-victory-road-1f'] },
  { name: 'Victory Road ~ 2F', slug: 'victory-road-2f', displayOrder: 66, routeType: 'cave', hasEncounters: true, hasTrainers: false, hasItems: false, notes: null, pokeapiAreas: ['sinnoh-victory-road-2f'] },
  { name: 'Victory Road ~ B1F', slug: 'victory-road-b1f', displayOrder: 67, routeType: 'cave', hasEncounters: true, hasTrainers: false, hasItems: false, notes: null, pokeapiAreas: ['sinnoh-victory-road-b1f'] },
  { name: 'Route 224', slug: 'route-224', displayOrder: 68, routeType: 'route', hasEncounters: true, hasTrainers: false, hasItems: false, notes: null, pokeapiAreas: ['sinnoh-route-224-area'] },

  // ── Post-Game (Battle Zone) ──
  { name: 'Route 225', slug: 'route-225', displayOrder: 69, routeType: 'route', hasEncounters: true, hasTrainers: false, hasItems: false, notes: null, pokeapiAreas: ['sinnoh-route-225-area'] },
  { name: 'Route 226', slug: 'route-226', displayOrder: 70, routeType: 'route', hasEncounters: true, hasTrainers: false, hasItems: false, notes: null, pokeapiAreas: ['sinnoh-route-226-area'] },
  { name: 'Route 227', slug: 'route-227', displayOrder: 71, routeType: 'route', hasEncounters: true, hasTrainers: false, hasItems: false, notes: null, pokeapiAreas: ['sinnoh-route-227-area'] },
  { name: 'Stark Mountain ~ Exterior', slug: 'stark-mountain-exterior', displayOrder: 72, routeType: 'route', hasEncounters: true, hasTrainers: false, hasItems: false, notes: null, pokeapiAreas: ['stark-mountain-area', 'sinnoh-route-227-area'] },
  { name: 'Stark Mountain ~ Interior', slug: 'stark-mountain-interior', displayOrder: 73, routeType: 'cave', hasEncounters: true, hasTrainers: false, hasItems: false, notes: 'Heatran encounter after completing the story.', pokeapiAreas: ['stark-mountain-entrance', 'stark-mountain-inside'] },
  { name: 'Route 228', slug: 'route-228', displayOrder: 74, routeType: 'route', hasEncounters: true, hasTrainers: false, hasItems: false, notes: null, pokeapiAreas: ['sinnoh-route-228-area'] },
  { name: 'Route 229', slug: 'route-229', displayOrder: 75, routeType: 'route', hasEncounters: true, hasTrainers: false, hasItems: false, notes: null, pokeapiAreas: ['sinnoh-route-229-area'] },
  { name: 'Route 230', slug: 'route-230', displayOrder: 76, routeType: 'water', hasEncounters: true, hasTrainers: false, hasItems: false, notes: null, pokeapiAreas: ['sinnoh-route-230-area'] },
  { name: 'Spring Path', slug: 'spring-path', displayOrder: 77, routeType: 'route', hasEncounters: false, hasTrainers: false, hasItems: false, notes: 'Leads to Sendoff Spring. No wild encounters in PokeAPI.', pokeapiAreas: [] },
];

// ─── Boss Trainer Data (Platinum version) ────────────────────────────────────
// Teams sourced from Bulbapedia - Platinum specific
// Trainer data will be filled in by research agent

const bossTrainers: BossTrainerConfig[] = [
  // ── Gym Leader 1: Roark (Rock) ──
  {
    routeSlug: 'oreburgh-mine-1f', // Oreburgh Gym technically, using nearest route
    name: 'Roark',
    trainerClass: 'Gym Leader',
    bossType: 'gym_leader',
    levelCap: 14,
    displayOrder: 1,
    notes: 'Rock-type specialist. Coal Badge. TM76 Stealth Rock.',
    pokemon: [
      { pokemonDexId: 74, level: 12, slotOrder: 1, moves: ['Stealth Rock', 'Leer', 'Rock Throw', 'Rock Polish'], ability: 'Rock Head', heldItem: null },
      { pokemonDexId: 95, level: 12, slotOrder: 2, moves: ['Stealth Rock', 'Screech', 'Rock Throw', 'Bind'], ability: 'Rock Head', heldItem: null },
      { pokemonDexId: 408, level: 14, slotOrder: 3, moves: ['Headbutt', 'Leer', 'Pursuit', 'Rock Tomb'], ability: 'Mold Breaker', heldItem: null },
    ],
  },

  // ── Gym Leader 2: Gardenia (Grass) ──
  {
    routeSlug: 'eterna-forest', // Eterna Gym
    name: 'Gardenia',
    trainerClass: 'Gym Leader',
    bossType: 'gym_leader',
    levelCap: 22,
    displayOrder: 1,
    notes: 'Grass-type specialist. Forest Badge. TM86 Grass Knot.',
    pokemon: [
      { pokemonDexId: 420, level: 20, slotOrder: 1, moves: ['Grass Knot', 'Safeguard', 'Sunny Day', 'Leech Seed'], ability: 'Flower Gift', heldItem: null },
      { pokemonDexId: 407, level: 20, slotOrder: 2, moves: ['Grass Knot', 'Stun Spore', 'Poison Sting', 'Growth'], ability: 'Poison Point', heldItem: null },
      { pokemonDexId: 388, level: 22, slotOrder: 3, moves: ['Grass Knot', 'Reflect', 'Razor Leaf', 'Bite'], ability: 'Overgrow', heldItem: null },
    ],
  },

  // ── Gym Leader 3: Fantina (Ghost) - 3rd in Platinum! ──
  {
    routeSlug: 'route-208', // Hearthome Gym
    name: 'Fantina',
    trainerClass: 'Gym Leader',
    bossType: 'gym_leader',
    levelCap: 26,
    displayOrder: 1,
    notes: 'Ghost-type specialist. Relic Badge. TM65 Shadow Claw.',
    pokemon: [
      { pokemonDexId: 355, level: 24, slotOrder: 1, moves: ['Will-O-Wisp', 'Shadow Sneak', 'Pursuit', 'Confuse Ray'], ability: 'Levitate', heldItem: null },
      { pokemonDexId: 93, level: 24, slotOrder: 2, moves: ['Shadow Claw', 'Hypnosis', 'Confuse Ray', 'Sucker Punch'], ability: 'Levitate', heldItem: null },
      { pokemonDexId: 429, level: 26, slotOrder: 3, moves: ['Shadow Ball', 'Psybeam', 'Magical Leaf', 'Confuse Ray'], ability: 'Levitate', heldItem: 'Sitrus Berry' },
    ],
  },

  // ── Gym Leader 4: Maylene (Fighting) ──
  {
    routeSlug: 'route-215', // Veilstone Gym
    name: 'Maylene',
    trainerClass: 'Gym Leader',
    bossType: 'gym_leader',
    levelCap: 32,
    displayOrder: 1,
    notes: 'Fighting-type specialist. Cobble Badge. TM60 Drain Punch.',
    pokemon: [
      { pokemonDexId: 307, level: 28, slotOrder: 1, moves: ['Drain Punch', 'Fake Out', 'Bulk Up', 'Rock Tomb'], ability: 'Pure Power', heldItem: null },
      { pokemonDexId: 67, level: 29, slotOrder: 2, moves: ['Drain Punch', 'Rock Tomb', 'Knock Off', 'Focus Energy'], ability: 'Guts', heldItem: null },
      { pokemonDexId: 448, level: 32, slotOrder: 3, moves: ['Drain Punch', 'Metal Claw', 'Force Palm', 'Bone Rush'], ability: 'Steadfast', heldItem: 'Sitrus Berry' },
    ],
  },

  // ── Gym Leader 5: Crasher Wake (Water) ──
  {
    routeSlug: 'route-213', // Pastoria Gym
    name: 'Crasher Wake',
    trainerClass: 'Gym Leader',
    bossType: 'gym_leader',
    levelCap: 37,
    displayOrder: 1,
    notes: 'Water-type specialist. Fen Badge. TM55 Brine.',
    pokemon: [
      { pokemonDexId: 195, level: 33, slotOrder: 1, moves: ['Mud Bomb', 'Water Pulse', 'Rain Dance', 'Yawn'], ability: 'Damp', heldItem: null },
      { pokemonDexId: 130, level: 33, slotOrder: 2, moves: ['Waterfall', 'Ice Fang', 'Bite', 'Dragon Dance'], ability: 'Intimidate', heldItem: null },
      { pokemonDexId: 419, level: 37, slotOrder: 3, moves: ['Aqua Jet', 'Pursuit', 'Brick Break', 'Crunch'], ability: 'Swift Swim', heldItem: 'Sitrus Berry' },
    ],
  },

  // ── Gym Leader 6: Byron (Steel) ──
  {
    routeSlug: 'iron-island-outside', // Canalave Gym
    name: 'Byron',
    trainerClass: 'Gym Leader',
    bossType: 'gym_leader',
    levelCap: 39,
    displayOrder: 1,
    notes: 'Steel-type specialist. Mine Badge. TM91 Flash Cannon.',
    pokemon: [
      { pokemonDexId: 82, level: 36, slotOrder: 1, moves: ['Flash Cannon', 'Tri Attack', 'Thunder Wave', 'Thunderbolt'], ability: 'Sturdy', heldItem: null },
      { pokemonDexId: 208, level: 36, slotOrder: 2, moves: ['Earthquake', 'Sandstorm', 'Ice Fang', 'Iron Tail'], ability: 'Rock Head', heldItem: null },
      { pokemonDexId: 411, level: 39, slotOrder: 3, moves: ['Flash Cannon', 'Stone Edge', 'Iron Defense', 'Metal Burst'], ability: 'Sturdy', heldItem: 'Sitrus Berry' },
    ],
  },

  // ── Gym Leader 7: Candice (Ice) ──
  {
    routeSlug: 'route-217', // Snowpoint Gym
    name: 'Candice',
    trainerClass: 'Gym Leader',
    bossType: 'gym_leader',
    levelCap: 42,
    displayOrder: 1,
    notes: 'Ice-type specialist. Icicle Badge. TM72 Avalanche.',
    pokemon: [
      { pokemonDexId: 459, level: 38, slotOrder: 1, moves: ['Avalanche', 'Wood Hammer', 'Swagger', 'Water Pulse'], ability: 'Snow Warning', heldItem: null },
      { pokemonDexId: 461, level: 38, slotOrder: 2, moves: ['Ice Punch', 'X-Scissor', 'Slash', 'Faint Attack'], ability: 'Pressure', heldItem: null },
      { pokemonDexId: 308, level: 40, slotOrder: 3, moves: ['Ice Punch', 'Psychic', 'Bulk Up', 'Rock Slide'], ability: 'Pure Power', heldItem: null },
      { pokemonDexId: 478, level: 42, slotOrder: 4, moves: ['Blizzard', 'Shadow Ball', 'Psychic', 'Hail'], ability: 'Snow Cloak', heldItem: 'Sitrus Berry' },
    ],
  },

  // ── Gym Leader 8: Volkner (Electric) ──
  {
    routeSlug: 'route-222', // Sunyshore Gym
    name: 'Volkner',
    trainerClass: 'Gym Leader',
    bossType: 'gym_leader',
    levelCap: 50,
    displayOrder: 1,
    notes: 'Electric-type specialist. Beacon Badge. TM57 Charge Beam.',
    pokemon: [
      { pokemonDexId: 26, level: 46, slotOrder: 1, moves: ['Charge Beam', 'Signal Beam', 'Focus Blast', 'Quick Attack'], ability: 'Static', heldItem: null },
      { pokemonDexId: 466, level: 46, slotOrder: 2, moves: ['Thunder Punch', 'Fire Punch', 'Ice Punch', 'Giga Impact'], ability: 'Motor Drive', heldItem: null },
      { pokemonDexId: 135, level: 48, slotOrder: 3, moves: ['Shadow Ball', 'Thunder', 'Quick Attack', 'Iron Tail'], ability: 'Volt Absorb', heldItem: null },
      { pokemonDexId: 405, level: 50, slotOrder: 4, moves: ['Thunder Fang', 'Crunch', 'Fire Fang', 'Ice Fang'], ability: 'Intimidate', heldItem: 'Sitrus Berry' },
    ],
  },

  // ── Elite Four: Aaron (Bug) ──
  {
    routeSlug: 'victory-road-1f', // Pokemon League
    name: 'Aaron',
    trainerClass: 'Elite Four',
    bossType: 'elite_four',
    levelCap: 57,
    displayOrder: 1,
    notes: 'Bug-type specialist.',
    pokemon: [
      { pokemonDexId: 414, level: 49, slotOrder: 1, moves: ['Bug Buzz', 'Air Slash', 'Psychic', 'U-turn'], ability: 'Swarm', heldItem: null },
      { pokemonDexId: 416, level: 50, slotOrder: 2, moves: ['Attack Order', 'Defend Order', 'Power Gem', 'Heal Order'], ability: 'Pressure', heldItem: null },
      { pokemonDexId: 214, level: 51, slotOrder: 3, moves: ['Megahorn', 'Close Combat', 'Night Slash', 'Stone Edge'], ability: 'Swarm', heldItem: null },
      { pokemonDexId: 452, level: 53, slotOrder: 4, moves: ['Cross Poison', 'X-Scissor', 'Night Slash', 'Ice Fang'], ability: 'Battle Armor', heldItem: null },
      { pokemonDexId: 212, level: 57, slotOrder: 5, moves: ['X-Scissor', 'Iron Head', 'Night Slash', 'Quick Attack'], ability: 'Technician', heldItem: 'Sitrus Berry' },
    ],
  },

  // ── Elite Four: Bertha (Ground) ──
  {
    routeSlug: 'victory-road-1f',
    name: 'Bertha',
    trainerClass: 'Elite Four',
    bossType: 'elite_four',
    levelCap: 59,
    displayOrder: 2,
    notes: 'Ground-type specialist.',
    pokemon: [
      { pokemonDexId: 195, level: 50, slotOrder: 1, moves: ['Earthquake', 'Surf', 'Sandstorm', 'Protect'], ability: 'Damp', heldItem: null },
      { pokemonDexId: 76, level: 52, slotOrder: 2, moves: ['Earthquake', 'Sandstorm', 'Rock Polish', 'Stone Edge'], ability: 'Sturdy', heldItem: null },
      { pokemonDexId: 340, level: 52, slotOrder: 3, moves: ['Earthquake', 'Zen Headbutt', 'Surf', 'Sandstorm'], ability: 'Oblivious', heldItem: null },
      { pokemonDexId: 423, level: 55, slotOrder: 4, moves: ['Earthquake', 'Surf', 'Sludge Bomb', 'Sandstorm'], ability: 'Storm Drain', heldItem: null },
      { pokemonDexId: 450, level: 59, slotOrder: 5, moves: ['Earthquake', 'Crunch', 'Yawn', 'Stone Edge'], ability: 'Sand Stream', heldItem: 'Sitrus Berry' },
    ],
  },

  // ── Elite Four: Flint (Fire) ──
  {
    routeSlug: 'victory-road-1f',
    name: 'Flint',
    trainerClass: 'Elite Four',
    bossType: 'elite_four',
    levelCap: 61,
    displayOrder: 3,
    notes: 'Fire-type specialist.',
    pokemon: [
      { pokemonDexId: 78, level: 52, slotOrder: 1, moves: ['Flare Blitz', 'Solar Beam', 'Bounce', 'Sunny Day'], ability: 'Flash Fire', heldItem: null },
      { pokemonDexId: 426, level: 53, slotOrder: 2, moves: ['Fly', 'Will-O-Wisp', 'Baton Pass', 'Shadow Ball'], ability: 'Aftermath', heldItem: null },
      { pokemonDexId: 208, level: 55, slotOrder: 3, moves: ['Fire Fang', 'Thunder Fang', 'Iron Tail', 'Screech'], ability: 'Rock Head', heldItem: null },
      { pokemonDexId: 428, level: 55, slotOrder: 4, moves: ['Fire Punch', 'Mirror Coat', 'Sunny Day', 'Charm'], ability: 'Cute Charm', heldItem: null },
      { pokemonDexId: 392, level: 61, slotOrder: 5, moves: ['Flare Blitz', 'Earthquake', 'Mach Punch', 'ThunderPunch'], ability: 'Blaze', heldItem: 'Sitrus Berry' },
    ],
  },

  // ── Elite Four: Lucian (Psychic) ──
  {
    routeSlug: 'victory-road-1f',
    name: 'Lucian',
    trainerClass: 'Elite Four',
    bossType: 'elite_four',
    levelCap: 63,
    displayOrder: 4,
    notes: 'Psychic-type specialist.',
    pokemon: [
      { pokemonDexId: 122, level: 53, slotOrder: 1, moves: ['Psychic', 'Thunderbolt', 'Reflect', 'Light Screen'], ability: 'Filter', heldItem: null },
      { pokemonDexId: 196, level: 55, slotOrder: 2, moves: ['Psychic', 'Shadow Ball', 'Signal Beam', 'Quick Attack'], ability: 'Synchronize', heldItem: null },
      { pokemonDexId: 437, level: 56, slotOrder: 3, moves: ['Psychic', 'Gyro Ball', 'Calm Mind', 'Earthquake'], ability: 'Levitate', heldItem: null },
      { pokemonDexId: 65, level: 56, slotOrder: 4, moves: ['Psychic', 'Focus Blast', 'Energy Ball', 'Recover'], ability: 'Synchronize', heldItem: null },
      { pokemonDexId: 475, level: 63, slotOrder: 5, moves: ['Psycho Cut', 'Close Combat', 'Stone Edge', 'Leaf Blade'], ability: 'Steadfast', heldItem: 'Sitrus Berry' },
    ],
  },

  // ── Champion: Cynthia ──
  {
    routeSlug: 'victory-road-1f',
    name: 'Cynthia',
    trainerClass: 'Champion',
    bossType: 'champion',
    levelCap: 66,
    displayOrder: 5,
    notes: 'Sinnoh Champion. Uses a diverse, powerful team.',
    pokemon: [
      { pokemonDexId: 442, level: 58, slotOrder: 1, moves: ['Dark Pulse', 'Psychic', 'Silver Wind', 'Embargo'], ability: 'Pressure', heldItem: null },
      { pokemonDexId: 407, level: 58, slotOrder: 2, moves: ['Energy Ball', 'Sludge Bomb', 'Shadow Ball', 'Extrasensory'], ability: 'Natural Cure', heldItem: null },
      { pokemonDexId: 423, level: 58, slotOrder: 3, moves: ['Surf', 'Earthquake', 'Stone Edge', 'Sludge Bomb'], ability: 'Storm Drain', heldItem: null },
      { pokemonDexId: 448, level: 60, slotOrder: 4, moves: ['Aura Sphere', 'Shadow Ball', 'Dragon Pulse', 'Psychic'], ability: 'Inner Focus', heldItem: null },
      { pokemonDexId: 350, level: 58, slotOrder: 5, moves: ['Surf', 'Ice Beam', 'Mirror Coat', 'Recover'], ability: 'Marvel Scale', heldItem: null },
      { pokemonDexId: 445, level: 66, slotOrder: 6, moves: ['Dragon Rush', 'Earthquake', 'Brick Break', 'Giga Impact'], ability: 'Sand Veil', heldItem: 'Sitrus Berry' },
    ],
  },
];

// ─── Export Config ───────────────────────────────────────────────────────────

export const config: GameConfig = {
  id: GAME_ID,
  slug: 'pokemon-platinum',
  name: 'Pokemon Platinum',
  generation: 4,
  region: 'Sinnoh',
  baseGameSlug: null,
  isRomhack: false,
  spriteUrl: 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/487.png',
  description: 'The definitive Gen 4 experience. Explore the Sinnoh region, battle Team Galactic, and face the Distortion World. Features Giratina in its Origin Forme.',
  pokeapiVersionName: 'platinum',
  routes,
  starters: {
    routeSlug: 'twinleaf-town',
    pokemon: [
      { dexId: 387, level: 5 }, // Turtwig
      { dexId: 390, level: 5 }, // Chimchar
      { dexId: 393, level: 5 }, // Piplup
    ],
  },
  bossTrainers,
};

export default config;
