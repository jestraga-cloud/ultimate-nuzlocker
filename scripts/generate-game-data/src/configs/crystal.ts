import type { GameConfig, RouteConfig, BossTrainerConfig } from '../types.js';

// ─── Pokemon Crystal Configuration ──────────────────────────────────────────
// Adapted from HGSS route structure. Gen 2 Johto + Kanto.
// PokeAPI version: 'crystal'
// Differences from HGSS: No Route 47/48, no Johto Safari Zone, no Cerulean Cave,
// Tin Tower instead of Bell Tower, lower-level boss trainers.

const CRYSTAL_ID = 'e1f2a3b4-c5d6-7890-ef12-345678901234';

const routes: RouteConfig[] = [
  // ══════════════════════════════════════════
  // JOHTO
  // ══════════════════════════════════════════

  // ── Early Game (New Bark to Violet) ──
  { name: 'New Bark Town', slug: 'new-bark-town', displayOrder: 1, routeType: 'city', hasEncounters: true, hasTrainers: false, hasItems: false, notes: 'Starter town. Choose Chikorita, Cyndaquil, or Totodile.', pokeapiAreas: [] },
  { name: 'Route 29', slug: 'route-29', displayOrder: 2, routeType: 'route', hasEncounters: true, hasTrainers: false, hasItems: false, notes: null, pokeapiAreas: ['johto-route-29-area'] },
  { name: 'Route 46', slug: 'route-46', displayOrder: 3, routeType: 'route', hasEncounters: true, hasTrainers: false, hasItems: false, notes: null, pokeapiAreas: ['johto-route-46-area'] },
  { name: 'Cherrygrove City', slug: 'cherrygrove-city', displayOrder: 4, routeType: 'city', hasEncounters: true, hasTrainers: false, hasItems: false, notes: 'Surf and fishing available.', pokeapiAreas: ['cherrygrove-city-area'] },
  { name: 'Route 30', slug: 'route-30', displayOrder: 5, routeType: 'route', hasEncounters: true, hasTrainers: false, hasItems: false, notes: null, pokeapiAreas: ['johto-route-30-area'] },
  { name: 'Route 31', slug: 'route-31', displayOrder: 6, routeType: 'route', hasEncounters: true, hasTrainers: false, hasItems: false, notes: null, pokeapiAreas: ['johto-route-31-area'] },
  { name: 'Dark Cave (Violet Side)', slug: 'dark-cave-violet', displayOrder: 7, routeType: 'cave', hasEncounters: true, hasTrainers: false, hasItems: false, notes: null, pokeapiAreas: ['dark-cave-violet-city-entrance'] },
  { name: 'Violet City', slug: 'violet-city', displayOrder: 8, routeType: 'city', hasEncounters: false, hasTrainers: true, hasItems: false, notes: 'Gym Leader Falkner. Flying-type specialist.', pokeapiAreas: [] },
  { name: 'Sprout Tower', slug: 'sprout-tower', displayOrder: 9, routeType: 'building', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['sprout-tower-2f', 'sprout-tower-3f'] },

  // ── Violet to Azalea ──
  { name: 'Route 32', slug: 'route-32', displayOrder: 10, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['johto-route-32-area'] },
  { name: 'Ruins of Alph', slug: 'ruins-of-alph', displayOrder: 11, routeType: 'special', hasEncounters: true, hasTrainers: false, hasItems: false, notes: 'Unown puzzle area.', pokeapiAreas: ['ruins-of-alph-outside', 'ruins-of-alph-interior-a'] },
  { name: 'Union Cave', slug: 'union-cave', displayOrder: 12, routeType: 'cave', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['union-cave-1f', 'union-cave-b1f', 'union-cave-b2f'] },
  { name: 'Route 33', slug: 'route-33', displayOrder: 13, routeType: 'route', hasEncounters: true, hasTrainers: false, hasItems: false, notes: null, pokeapiAreas: ['johto-route-33-area'] },
  { name: 'Azalea Town', slug: 'azalea-town', displayOrder: 14, routeType: 'city', hasEncounters: false, hasTrainers: true, hasItems: false, notes: 'Gym Leader Bugsy. Bug-type specialist.', pokeapiAreas: [] },
  { name: 'Slowpoke Well', slug: 'slowpoke-well', displayOrder: 15, routeType: 'cave', hasEncounters: true, hasTrainers: false, hasItems: false, notes: null, pokeapiAreas: ['slowpoke-well-1f', 'slowpoke-well-b1f'] },
  { name: 'Ilex Forest', slug: 'ilex-forest', displayOrder: 16, routeType: 'route', hasEncounters: true, hasTrainers: false, hasItems: false, notes: null, pokeapiAreas: ['ilex-forest-area'] },

  // ── Goldenrod area ──
  { name: 'Route 34', slug: 'route-34', displayOrder: 17, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['johto-route-34-area'] },
  { name: 'Goldenrod City', slug: 'goldenrod-city', displayOrder: 18, routeType: 'city', hasEncounters: false, hasTrainers: true, hasItems: true, notes: 'Gym Leader Whitney. Normal-type specialist.', pokeapiAreas: [] },
  { name: 'Route 35', slug: 'route-35', displayOrder: 19, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['johto-route-35-area'] },
  { name: 'National Park', slug: 'national-park', displayOrder: 20, routeType: 'route', hasEncounters: true, hasTrainers: false, hasItems: false, notes: 'Bug Catching Contest area.', pokeapiAreas: ['national-park-area'] },
  { name: 'Route 36', slug: 'route-36', displayOrder: 21, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['johto-route-36-area'] },
  { name: 'Route 37', slug: 'route-37', displayOrder: 22, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['johto-route-37-area'] },

  // ── Ecruteak area ──
  { name: 'Ecruteak City', slug: 'ecruteak-city', displayOrder: 23, routeType: 'city', hasEncounters: false, hasTrainers: true, hasItems: false, notes: 'Gym Leader Morty. Ghost-type specialist.', pokeapiAreas: [] },
  { name: 'Burned Tower', slug: 'burned-tower', displayOrder: 24, routeType: 'building', hasEncounters: true, hasTrainers: false, hasItems: false, notes: 'Legendary beasts flee here.', pokeapiAreas: ['burned-tower-1f', 'burned-tower-b1f'] },
  { name: 'Tin Tower', slug: 'tin-tower', displayOrder: 25, routeType: 'building', hasEncounters: true, hasTrainers: false, hasItems: false, notes: 'Suicune encounter. Called Bell Tower in HGSS.', pokeapiAreas: ['bell-tower-1f', 'bell-tower-2f', 'bell-tower-3f', 'bell-tower-4f', 'bell-tower-5f', 'bell-tower-6f', 'bell-tower-7f', 'bell-tower-8f', 'bell-tower-9f'] },
  { name: 'Route 38', slug: 'route-38', displayOrder: 26, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['johto-route-38-area'] },
  { name: 'Route 39', slug: 'route-39', displayOrder: 27, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['johto-route-39-area'] },

  // ── Olivine / Cianwood ──
  { name: 'Olivine City', slug: 'olivine-city', displayOrder: 28, routeType: 'city', hasEncounters: false, hasTrainers: true, hasItems: false, notes: 'Gym Leader Jasmine. Steel-type specialist.', pokeapiAreas: [] },
  { name: 'Route 40', slug: 'route-40', displayOrder: 29, routeType: 'water', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['johto-sea-route-40-area'] },
  { name: 'Route 41', slug: 'route-41', displayOrder: 30, routeType: 'water', hasEncounters: true, hasTrainers: true, hasItems: false, notes: 'Whirl Islands nearby.', pokeapiAreas: ['johto-sea-route-41-area'] },
  { name: 'Cianwood City', slug: 'cianwood-city', displayOrder: 31, routeType: 'city', hasEncounters: false, hasTrainers: true, hasItems: false, notes: 'Gym Leader Chuck. Fighting-type specialist.', pokeapiAreas: [] },

  // ── Mahogany / Lake of Rage ──
  { name: 'Route 42', slug: 'route-42', displayOrder: 32, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['johto-route-42-area'] },
  { name: 'Mt. Mortar', slug: 'mt-mortar', displayOrder: 33, routeType: 'cave', hasEncounters: true, hasTrainers: false, hasItems: true, notes: null, pokeapiAreas: ['mt-mortar-1f', 'mt-mortar-lower-cave', 'mt-mortar-upper-cave', 'mt-mortar-b1f'] },
  { name: 'Mahogany Town', slug: 'mahogany-town', displayOrder: 34, routeType: 'city', hasEncounters: false, hasTrainers: true, hasItems: false, notes: 'Gym Leader Pryce. Ice-type specialist.', pokeapiAreas: [] },
  { name: 'Route 43', slug: 'route-43', displayOrder: 35, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['johto-route-43-area'] },
  { name: 'Lake of Rage', slug: 'lake-of-rage', displayOrder: 36, routeType: 'water', hasEncounters: true, hasTrainers: false, hasItems: false, notes: 'Red Gyarados event.', pokeapiAreas: ['lake-of-rage-area'] },
  { name: 'Route 44', slug: 'route-44', displayOrder: 37, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['johto-route-44-area'] },

  // ── Ice Path / Blackthorn ──
  { name: 'Ice Path', slug: 'ice-path', displayOrder: 38, routeType: 'cave', hasEncounters: true, hasTrainers: false, hasItems: true, notes: null, pokeapiAreas: ['ice-path-1f', 'ice-path-b1f', 'ice-path-b2f', 'ice-path-b3f'] },
  { name: 'Blackthorn City', slug: 'blackthorn-city', displayOrder: 39, routeType: 'city', hasEncounters: false, hasTrainers: true, hasItems: false, notes: 'Gym Leader Clair. Dragon-type specialist.', pokeapiAreas: [] },
  { name: "Dragon's Den", slug: 'dragons-den', displayOrder: 40, routeType: 'cave', hasEncounters: true, hasTrainers: false, hasItems: false, notes: 'Dratini fishing.', pokeapiAreas: ['dragons-den-area'] },
  { name: 'Route 45', slug: 'route-45', displayOrder: 41, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['johto-route-45-area'] },
  { name: 'Dark Cave (Blackthorn Side)', slug: 'dark-cave-blackthorn', displayOrder: 42, routeType: 'cave', hasEncounters: true, hasTrainers: false, hasItems: false, notes: null, pokeapiAreas: ['dark-cave-blackthorn-city-entrance'] },
  { name: 'Whirl Islands', slug: 'whirl-islands', displayOrder: 43, routeType: 'cave', hasEncounters: true, hasTrainers: false, hasItems: false, notes: 'Lugia encounter.', pokeapiAreas: ['whirl-islands-1f', 'whirl-islands-b1f', 'whirl-islands-b2f', 'whirl-islands-b3f'] },

  // ── Victory Road ──
  { name: 'Route 27', slug: 'route-27', displayOrder: 44, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['kanto-route-27-area'] },
  { name: 'Tohjo Falls', slug: 'tohjo-falls', displayOrder: 45, routeType: 'cave', hasEncounters: true, hasTrainers: false, hasItems: false, notes: null, pokeapiAreas: ['tohjo-falls-area'] },
  { name: 'Route 26', slug: 'route-26', displayOrder: 46, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['kanto-route-26-area'] },
  { name: 'Victory Road', slug: 'victory-road', displayOrder: 47, routeType: 'cave', hasEncounters: true, hasTrainers: true, hasItems: true, notes: null, pokeapiAreas: ['kanto-victory-road-2-1f', 'kanto-victory-road-2-2f', 'kanto-victory-road-2-3f'] },
  { name: 'Indigo Plateau', slug: 'indigo-plateau', displayOrder: 48, routeType: 'building', hasEncounters: false, hasTrainers: true, hasItems: true, notes: 'Elite Four and Champion Lance.', pokeapiAreas: [] },

  // ══════════════════════════════════════════
  // KANTO (Post-E4)
  // ══════════════════════════════════════════

  { name: 'Vermilion City', slug: 'vermilion-city', displayOrder: 49, routeType: 'city', hasEncounters: false, hasTrainers: true, hasItems: false, notes: 'Gym Leader Lt. Surge. Electric-type specialist.', pokeapiAreas: [] },
  { name: 'Route 6', slug: 'route-6', displayOrder: 50, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['kanto-route-6-area'] },
  { name: 'Saffron City', slug: 'saffron-city', displayOrder: 51, routeType: 'city', hasEncounters: false, hasTrainers: true, hasItems: false, notes: 'Gym Leader Sabrina. Psychic-type specialist.', pokeapiAreas: [] },
  { name: 'Route 5', slug: 'route-5', displayOrder: 52, routeType: 'route', hasEncounters: true, hasTrainers: false, hasItems: false, notes: null, pokeapiAreas: ['kanto-route-5-area'] },
  { name: 'Cerulean City', slug: 'cerulean-city', displayOrder: 53, routeType: 'city', hasEncounters: false, hasTrainers: true, hasItems: false, notes: 'Gym Leader Misty. Water-type specialist.', pokeapiAreas: [] },
  { name: 'Route 24', slug: 'route-24', displayOrder: 54, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['kanto-route-24-area'] },
  { name: 'Route 25', slug: 'route-25', displayOrder: 55, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['kanto-route-25-area'] },
  { name: 'Route 9', slug: 'route-9', displayOrder: 56, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['kanto-route-9-area'] },
  { name: 'Route 10', slug: 'route-10', displayOrder: 57, routeType: 'route', hasEncounters: true, hasTrainers: false, hasItems: false, notes: null, pokeapiAreas: ['kanto-route-10-area'] },
  { name: 'Rock Tunnel', slug: 'rock-tunnel', displayOrder: 58, routeType: 'cave', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['rock-tunnel-1f', 'rock-tunnel-b1f'] },
  { name: 'Lavender Town', slug: 'lavender-town', displayOrder: 59, routeType: 'city', hasEncounters: false, hasTrainers: false, hasItems: false, notes: null, pokeapiAreas: [] },
  { name: 'Route 8', slug: 'route-8', displayOrder: 60, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['kanto-route-8-area'] },
  { name: 'Route 7', slug: 'route-7', displayOrder: 61, routeType: 'route', hasEncounters: true, hasTrainers: false, hasItems: false, notes: null, pokeapiAreas: ['kanto-route-7-area'] },
  { name: 'Celadon City', slug: 'celadon-city', displayOrder: 62, routeType: 'city', hasEncounters: false, hasTrainers: true, hasItems: true, notes: 'Gym Leader Erika. Grass-type specialist.', pokeapiAreas: [] },
  { name: 'Route 16', slug: 'route-16', displayOrder: 63, routeType: 'route', hasEncounters: true, hasTrainers: false, hasItems: false, notes: null, pokeapiAreas: ['kanto-route-16-area'] },
  { name: 'Route 17', slug: 'route-17', displayOrder: 64, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: false, notes: 'Cycling Road.', pokeapiAreas: ['kanto-route-17-area'] },
  { name: 'Route 18', slug: 'route-18', displayOrder: 65, routeType: 'route', hasEncounters: true, hasTrainers: false, hasItems: false, notes: null, pokeapiAreas: ['kanto-route-18-area'] },
  { name: 'Fuchsia City', slug: 'fuchsia-city', displayOrder: 66, routeType: 'city', hasEncounters: false, hasTrainers: true, hasItems: false, notes: 'Gym Leader Janine. Poison-type specialist.', pokeapiAreas: [] },
  { name: 'Route 15', slug: 'route-15', displayOrder: 67, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['kanto-route-15-area'] },
  { name: 'Route 14', slug: 'route-14', displayOrder: 68, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['kanto-route-14-area'] },
  { name: 'Route 13', slug: 'route-13', displayOrder: 69, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['kanto-route-13-area'] },
  { name: 'Route 12', slug: 'route-12', displayOrder: 70, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['kanto-route-12-area'] },
  { name: 'Route 11', slug: 'route-11', displayOrder: 71, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['kanto-route-11-area'] },
  { name: "Diglett's Cave", slug: 'digletts-cave', displayOrder: 72, routeType: 'cave', hasEncounters: true, hasTrainers: false, hasItems: false, notes: null, pokeapiAreas: ['digletts-cave-area'] },
  { name: 'Route 2', slug: 'route-2', displayOrder: 73, routeType: 'route', hasEncounters: true, hasTrainers: false, hasItems: false, notes: null, pokeapiAreas: ['kanto-route-2-south-towards-viridian-city', 'kanto-route-2-north-towards-pewter-city'] },
  { name: 'Pewter City', slug: 'pewter-city', displayOrder: 74, routeType: 'city', hasEncounters: false, hasTrainers: true, hasItems: false, notes: 'Gym Leader Brock. Rock-type specialist.', pokeapiAreas: [] },
  { name: 'Viridian Forest', slug: 'viridian-forest', displayOrder: 75, routeType: 'route', hasEncounters: true, hasTrainers: false, hasItems: false, notes: null, pokeapiAreas: ['viridian-forest-area'] },
  { name: 'Viridian City', slug: 'viridian-city', displayOrder: 76, routeType: 'city', hasEncounters: false, hasTrainers: true, hasItems: false, notes: 'Gym Leader Blue. Mixed-type specialist.', pokeapiAreas: [] },
  { name: 'Route 1', slug: 'route-1', displayOrder: 77, routeType: 'route', hasEncounters: true, hasTrainers: false, hasItems: false, notes: null, pokeapiAreas: ['kanto-route-1-area'] },
  { name: 'Pallet Town', slug: 'pallet-town', displayOrder: 78, routeType: 'city', hasEncounters: true, hasTrainers: false, hasItems: false, notes: 'Surf and fishing available.', pokeapiAreas: ['pallet-town-area'] },
  { name: 'Route 21', slug: 'route-21', displayOrder: 79, routeType: 'water', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['kanto-sea-route-21-area'] },
  { name: 'Cinnabar Island', slug: 'cinnabar-island', displayOrder: 80, routeType: 'city', hasEncounters: false, hasTrainers: true, hasItems: false, notes: 'Gym Leader Blaine (relocated to Seafoam Islands).', pokeapiAreas: [] },
  { name: 'Route 20', slug: 'route-20', displayOrder: 81, routeType: 'water', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['kanto-sea-route-20-area'] },
  { name: 'Route 19', slug: 'route-19', displayOrder: 82, routeType: 'water', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['kanto-sea-route-19-area'] },
  { name: 'Seafoam Islands', slug: 'seafoam-islands', displayOrder: 83, routeType: 'cave', hasEncounters: true, hasTrainers: false, hasItems: true, notes: null, pokeapiAreas: ['seafoam-islands-1f', 'seafoam-islands-b1f', 'seafoam-islands-b2f', 'seafoam-islands-b3f', 'seafoam-islands-b4f'] },
  { name: 'Route 22', slug: 'route-22', displayOrder: 84, routeType: 'route', hasEncounters: true, hasTrainers: false, hasItems: false, notes: null, pokeapiAreas: ['kanto-route-22-area'] },
  { name: 'Route 28', slug: 'route-28', displayOrder: 85, routeType: 'route', hasEncounters: true, hasTrainers: false, hasItems: false, notes: null, pokeapiAreas: ['kanto-route-28-area'] },

  // ── Post-game / Endgame ──
  { name: 'Mt. Silver', slug: 'mt-silver', displayOrder: 86, routeType: 'cave', hasEncounters: true, hasTrainers: false, hasItems: true, notes: 'Red awaits at the summit.', pokeapiAreas: ['mt-silver-outside', 'mt-silver-1f', 'mt-silver-2f', 'mt-silver-3f', 'mt-silver-4f'] },
];

// ─── Boss Trainers (Crystal teams) ──────────────────────────────────────────

const bossTrainers: BossTrainerConfig[] = [
  // ── Johto Gym Leaders ──
  {
    routeSlug: 'violet-city', name: 'Falkner', trainerClass: 'Gym Leader',
    bossType: 'gym_leader', levelCap: 9, displayOrder: 1,
    notes: 'Flying-type specialist. Zephyr Badge.',
    pokemon: [
      { pokemonDexId: 16, level: 7, slotOrder: 1, moves: ['Tackle', 'Mud-Slap'], ability: 'Keen Eye' },
      { pokemonDexId: 17, level: 9, slotOrder: 2, moves: ['Tackle', 'Gust', 'Mud-Slap'], ability: 'Keen Eye' },
    ],
  },
  {
    routeSlug: 'azalea-town', name: 'Bugsy', trainerClass: 'Gym Leader',
    bossType: 'gym_leader', levelCap: 16, displayOrder: 1,
    notes: 'Bug-type specialist. Hive Badge.',
    pokemon: [
      { pokemonDexId: 11, level: 14, slotOrder: 1, moves: ['Tackle', 'String Shot', 'Harden'], ability: 'Shed Skin' },
      { pokemonDexId: 14, level: 14, slotOrder: 2, moves: ['Poison Sting', 'String Shot', 'Harden'], ability: 'Shed Skin' },
      { pokemonDexId: 123, level: 16, slotOrder: 3, moves: ['Fury Cutter', 'Quick Attack', 'Leer'], ability: 'Swarm' },
    ],
  },
  {
    routeSlug: 'goldenrod-city', name: 'Whitney', trainerClass: 'Gym Leader',
    bossType: 'gym_leader', levelCap: 20, displayOrder: 1,
    notes: 'Normal-type specialist. Plain Badge. Miltank is infamous.',
    pokemon: [
      { pokemonDexId: 35, level: 18, slotOrder: 1, moves: ['Encore', 'Mimic', 'DoubleSlap', 'Metronome'], ability: 'Cute Charm' },
      { pokemonDexId: 241, level: 20, slotOrder: 2, moves: ['Stomp', 'Attract', 'Milk Drink', 'Rollout'], ability: 'Thick Fat' },
    ],
  },
  {
    routeSlug: 'ecruteak-city', name: 'Morty', trainerClass: 'Gym Leader',
    bossType: 'gym_leader', levelCap: 25, displayOrder: 1,
    notes: 'Ghost-type specialist. Fog Badge.',
    pokemon: [
      { pokemonDexId: 92, level: 21, slotOrder: 1, moves: ['Lick', 'Spite', 'Mean Look', 'Curse'], ability: 'Levitate' },
      { pokemonDexId: 93, level: 21, slotOrder: 2, moves: ['Hypnosis', 'Curse', 'Mimic', 'Night Shade'], ability: 'Levitate' },
      { pokemonDexId: 93, level: 23, slotOrder: 3, moves: ['Spite', 'Mean Look', 'Mimic', 'Night Shade'], ability: 'Levitate' },
      { pokemonDexId: 94, level: 25, slotOrder: 4, moves: ['Shadow Ball', 'Mean Look', 'Hypnosis', 'Dream Eater'], ability: 'Levitate' },
    ],
  },
  {
    routeSlug: 'cianwood-city', name: 'Chuck', trainerClass: 'Gym Leader',
    bossType: 'gym_leader', levelCap: 30, displayOrder: 1,
    notes: 'Fighting-type specialist. Storm Badge.',
    pokemon: [
      { pokemonDexId: 57, level: 27, slotOrder: 1, moves: ['Leer', 'Rage', 'Karate Chop', 'Fury Swipes'], ability: 'Vital Spirit' },
      { pokemonDexId: 62, level: 30, slotOrder: 2, moves: ['Hypnosis', 'Mind Reader', 'Surf', 'DynamicPunch'], ability: 'Water Absorb' },
    ],
  },
  {
    routeSlug: 'olivine-city', name: 'Jasmine', trainerClass: 'Gym Leader',
    bossType: 'gym_leader', levelCap: 35, displayOrder: 1,
    notes: 'Steel-type specialist. Mineral Badge.',
    pokemon: [
      { pokemonDexId: 81, level: 30, slotOrder: 1, moves: ['Thunderbolt', 'Supersonic', 'SonicBoom', 'Thunder Wave'], ability: 'Magnet Pull' },
      { pokemonDexId: 81, level: 30, slotOrder: 2, moves: ['Thunderbolt', 'Supersonic', 'SonicBoom', 'Thunder Wave'], ability: 'Sturdy' },
      { pokemonDexId: 208, level: 35, slotOrder: 3, moves: ['Iron Tail', 'Rock Throw', 'Sunny Day', 'Screech'], ability: 'Rock Head' },
    ],
  },
  {
    routeSlug: 'mahogany-town', name: 'Pryce', trainerClass: 'Gym Leader',
    bossType: 'gym_leader', levelCap: 31, displayOrder: 1,
    notes: 'Ice-type specialist. Glacier Badge.',
    pokemon: [
      { pokemonDexId: 86, level: 27, slotOrder: 1, moves: ['Headbutt', 'Icy Wind', 'Aurora Beam', 'Rest'], ability: 'Thick Fat' },
      { pokemonDexId: 87, level: 29, slotOrder: 2, moves: ['Headbutt', 'Icy Wind', 'Aurora Beam', 'Rest'], ability: 'Thick Fat' },
      { pokemonDexId: 221, level: 31, slotOrder: 3, moves: ['Icy Wind', 'Fury Attack', 'Mist', 'Blizzard'], ability: 'Oblivious' },
    ],
  },
  {
    routeSlug: 'blackthorn-city', name: 'Clair', trainerClass: 'Gym Leader',
    bossType: 'gym_leader', levelCap: 40, displayOrder: 1,
    notes: 'Dragon-type specialist. Rising Badge.',
    pokemon: [
      { pokemonDexId: 148, level: 37, slotOrder: 1, moves: ['Surf', 'Slam', 'Thunder Wave', 'DragonBreath'], ability: 'Shed Skin' },
      { pokemonDexId: 148, level: 37, slotOrder: 2, moves: ['Thunderbolt', 'Slam', 'Thunder Wave', 'DragonBreath'], ability: 'Shed Skin' },
      { pokemonDexId: 148, level: 37, slotOrder: 3, moves: ['Ice Beam', 'Slam', 'Thunder Wave', 'DragonBreath'], ability: 'Shed Skin' },
      { pokemonDexId: 230, level: 40, slotOrder: 4, moves: ['Surf', 'DragonBreath', 'SmokeScreen', 'Hyper Beam'], ability: 'Swift Swim' },
    ],
  },

  // ── Elite Four ──
  {
    routeSlug: 'indigo-plateau', name: 'Will', trainerClass: 'Elite Four',
    bossType: 'elite_four', levelCap: 42, displayOrder: 1,
    notes: 'Psychic-type specialist.',
    pokemon: [
      { pokemonDexId: 178, level: 40, slotOrder: 1, moves: ['Quick Attack', 'Future Sight', 'Psychic', 'Confuse Ray'], ability: 'Synchronize' },
      { pokemonDexId: 103, level: 41, slotOrder: 2, moves: ['Reflect', 'Egg Bomb', 'Psychic', 'Leech Seed'], ability: 'Chlorophyll' },
      { pokemonDexId: 80, level: 41, slotOrder: 3, moves: ['Curse', 'Amnesia', 'Body Slam', 'Psychic'], ability: 'Own Tempo' },
      { pokemonDexId: 124, level: 41, slotOrder: 4, moves: ['Ice Punch', 'DoubleSlap', 'Psychic', 'Lovely Kiss'], ability: 'Oblivious' },
      { pokemonDexId: 178, level: 42, slotOrder: 5, moves: ['Quick Attack', 'Future Sight', 'Psychic', 'Confuse Ray'], ability: 'Synchronize' },
    ],
  },
  {
    routeSlug: 'indigo-plateau', name: 'Koga', trainerClass: 'Elite Four',
    bossType: 'elite_four', levelCap: 44, displayOrder: 2,
    notes: 'Poison-type specialist.',
    pokemon: [
      { pokemonDexId: 168, level: 40, slotOrder: 1, moves: ['Spider Web', 'Double Team', 'Baton Pass', 'Giga Drain'], ability: 'Swarm' },
      { pokemonDexId: 49, level: 41, slotOrder: 2, moves: ['Psychic', 'Gust', 'Supersonic', 'Toxic'], ability: 'Shield Dust' },
      { pokemonDexId: 205, level: 43, slotOrder: 3, moves: ['Protect', 'Spikes', 'Swift', 'Explosion'], ability: 'Sturdy' },
      { pokemonDexId: 89, level: 42, slotOrder: 4, moves: ['Sludge Bomb', 'Acid Armor', 'Minimize', 'Toxic'], ability: 'Stench' },
      { pokemonDexId: 169, level: 44, slotOrder: 5, moves: ['Double Team', 'Wing Attack', 'Quick Attack', 'Toxic'], ability: 'Inner Focus' },
    ],
  },
  {
    routeSlug: 'indigo-plateau', name: 'Bruno', trainerClass: 'Elite Four',
    bossType: 'elite_four', levelCap: 46, displayOrder: 3,
    notes: 'Fighting-type specialist.',
    pokemon: [
      { pokemonDexId: 237, level: 42, slotOrder: 1, moves: ['Quick Attack', 'Dig', 'Detect', 'Pursuit'], ability: 'Intimidate' },
      { pokemonDexId: 106, level: 42, slotOrder: 2, moves: ['Double Kick', 'Foresight', 'Hi Jump Kick', 'Swagger'], ability: 'Limber' },
      { pokemonDexId: 107, level: 42, slotOrder: 3, moves: ['Ice Punch', 'Fire Punch', 'ThunderPunch', 'Mach Punch'], ability: 'Keen Eye' },
      { pokemonDexId: 95, level: 43, slotOrder: 4, moves: ['Rock Slide', 'Sandstorm', 'Earthquake', 'Bind'], ability: 'Rock Head' },
      { pokemonDexId: 68, level: 46, slotOrder: 5, moves: ['Rock Slide', 'Foresight', 'Cross Chop', 'Vital Throw'], ability: 'Guts' },
    ],
  },
  {
    routeSlug: 'indigo-plateau', name: 'Karen', trainerClass: 'Elite Four',
    bossType: 'elite_four', levelCap: 47, displayOrder: 4,
    notes: 'Dark-type specialist.',
    pokemon: [
      { pokemonDexId: 197, level: 42, slotOrder: 1, moves: ['Faint Attack', 'Confuse Ray', 'Mean Look', 'Sand-Attack'], ability: 'Synchronize' },
      { pokemonDexId: 45, level: 42, slotOrder: 2, moves: ['Stun Spore', 'Acid', 'Petal Dance', 'Moonlight'], ability: 'Chlorophyll' },
      { pokemonDexId: 94, level: 45, slotOrder: 3, moves: ['Lick', 'Spite', 'Curse', 'Destiny Bond'], ability: 'Levitate' },
      { pokemonDexId: 198, level: 44, slotOrder: 4, moves: ['Faint Attack', 'Whirlwind', 'Pursuit', 'Quick Attack'], ability: 'Insomnia' },
      { pokemonDexId: 229, level: 47, slotOrder: 5, moves: ['Crunch', 'Flamethrower', 'Roar', 'Pursuit'], ability: 'Early Bird' },
    ],
  },

  // ── Champion Lance ──
  {
    routeSlug: 'indigo-plateau', name: 'Lance', trainerClass: 'Champion',
    bossType: 'champion', levelCap: 50, displayOrder: 5,
    notes: 'Dragon-type specialist. Johto Champion.',
    pokemon: [
      { pokemonDexId: 130, level: 44, slotOrder: 1, moves: ['Rain Dance', 'Surf', 'Flail', 'Hyper Beam'], ability: 'Intimidate' },
      { pokemonDexId: 149, level: 47, slotOrder: 2, moves: ['Twister', 'Thunder Wave', 'Blizzard', 'Hyper Beam'], ability: 'Inner Focus' },
      { pokemonDexId: 6, level: 46, slotOrder: 3, moves: ['Flamethrower', 'Wing Attack', 'Slash', 'Hyper Beam'], ability: 'Blaze' },
      { pokemonDexId: 142, level: 46, slotOrder: 4, moves: ['Rock Slide', 'AncientPower', 'Wing Attack', 'Hyper Beam'], ability: 'Rock Head' },
      { pokemonDexId: 149, level: 47, slotOrder: 5, moves: ['Twister', 'Thunder Wave', 'Thunder', 'Hyper Beam'], ability: 'Inner Focus' },
      { pokemonDexId: 149, level: 50, slotOrder: 6, moves: ['Safeguard', 'Outrage', 'Fire Blast', 'Hyper Beam'], ability: 'Inner Focus' },
    ],
  },

  // ── Kanto Gym Leaders ──
  {
    routeSlug: 'vermilion-city', name: 'Lt. Surge', trainerClass: 'Gym Leader',
    bossType: 'gym_leader', levelCap: 46, displayOrder: 1,
    notes: 'Electric-type specialist. Thunder Badge.',
    pokemon: [
      { pokemonDexId: 26, level: 44, slotOrder: 1, moves: ['Thunderbolt', 'Thunder', 'Thunder Wave', 'Quick Attack'], ability: 'Static' },
      { pokemonDexId: 101, level: 40, slotOrder: 2, moves: ['Screech', 'Double Team', 'Swift', 'Explosion'], ability: 'Soundproof' },
      { pokemonDexId: 101, level: 40, slotOrder: 3, moves: ['Screech', 'Double Team', 'Swift', 'Explosion'], ability: 'Static' },
      { pokemonDexId: 82, level: 40, slotOrder: 4, moves: ['Zap Cannon', 'Lock-On', 'Double Team', 'Swift'], ability: 'Magnet Pull' },
      { pokemonDexId: 125, level: 46, slotOrder: 5, moves: ['ThunderPunch', 'Thunder', 'Light Screen', 'Quick Attack'], ability: 'Static' },
    ],
  },
  {
    routeSlug: 'saffron-city', name: 'Sabrina', trainerClass: 'Gym Leader',
    bossType: 'gym_leader', levelCap: 48, displayOrder: 1,
    notes: 'Psychic-type specialist. Marsh Badge.',
    pokemon: [
      { pokemonDexId: 196, level: 46, slotOrder: 1, moves: ['Sand-Attack', 'Quick Attack', 'Swift', 'Psychic'], ability: 'Synchronize' },
      { pokemonDexId: 122, level: 46, slotOrder: 2, moves: ['Barrier', 'Reflect', 'Baton Pass', 'Psychic'], ability: 'Soundproof' },
      { pokemonDexId: 65, level: 48, slotOrder: 3, moves: ['Recover', 'Future Sight', 'Psychic', 'Reflect'], ability: 'Synchronize' },
    ],
  },
  {
    routeSlug: 'cerulean-city', name: 'Misty', trainerClass: 'Gym Leader',
    bossType: 'gym_leader', levelCap: 47, displayOrder: 1,
    notes: 'Water-type specialist. Cascade Badge.',
    pokemon: [
      { pokemonDexId: 55, level: 42, slotOrder: 1, moves: ['Surf', 'Disable', 'Psych Up', 'Psychic'], ability: 'Cloud Nine' },
      { pokemonDexId: 195, level: 42, slotOrder: 2, moves: ['Surf', 'Amnesia', 'Earthquake', 'Rain Dance'], ability: 'Water Absorb' },
      { pokemonDexId: 131, level: 44, slotOrder: 3, moves: ['Surf', 'Perish Song', 'Blizzard', 'Rain Dance'], ability: 'Water Absorb' },
      { pokemonDexId: 121, level: 47, slotOrder: 4, moves: ['Surf', 'Confuse Ray', 'Recover', 'Ice Beam'], ability: 'Natural Cure' },
    ],
  },
  {
    routeSlug: 'celadon-city', name: 'Erika', trainerClass: 'Gym Leader',
    bossType: 'gym_leader', levelCap: 46, displayOrder: 1,
    notes: 'Grass-type specialist. Rainbow Badge.',
    pokemon: [
      { pokemonDexId: 114, level: 42, slotOrder: 1, moves: ['Vine Whip', 'Bind', 'Giga Drain', 'Sleep Powder'], ability: 'Chlorophyll' },
      { pokemonDexId: 71, level: 46, slotOrder: 2, moves: ['Sunny Day', 'Synthesis', 'Acid', 'Razor Leaf'], ability: 'Chlorophyll' },
      { pokemonDexId: 189, level: 41, slotOrder: 3, moves: ['Mega Drain', 'Leech Seed', 'Cotton Spore', 'Giga Drain'], ability: 'Chlorophyll' },
      { pokemonDexId: 182, level: 46, slotOrder: 4, moves: ['Sunny Day', 'Synthesis', 'Petal Dance', 'SolarBeam'], ability: 'Chlorophyll' },
    ],
  },
  {
    routeSlug: 'fuchsia-city', name: 'Janine', trainerClass: 'Gym Leader',
    bossType: 'gym_leader', levelCap: 39, displayOrder: 1,
    notes: 'Poison-type specialist. Soul Badge.',
    pokemon: [
      { pokemonDexId: 169, level: 36, slotOrder: 1, moves: ['Wing Attack', 'Confuse Ray', 'Supersonic', 'Screech'], ability: 'Inner Focus' },
      { pokemonDexId: 110, level: 36, slotOrder: 2, moves: ['Sludge Bomb', 'Smog', 'Toxic', 'Explosion'], ability: 'Levitate' },
      { pokemonDexId: 110, level: 36, slotOrder: 3, moves: ['Sludge Bomb', 'Smog', 'Toxic', 'Explosion'], ability: 'Levitate' },
      { pokemonDexId: 168, level: 33, slotOrder: 4, moves: ['String Shot', 'Night Shade', 'Giga Drain', 'Scary Face'], ability: 'Swarm' },
      { pokemonDexId: 49, level: 39, slotOrder: 5, moves: ['Toxic', 'Psychic', 'Double Team', 'Supersonic'], ability: 'Shield Dust' },
    ],
  },
  {
    routeSlug: 'pewter-city', name: 'Brock', trainerClass: 'Gym Leader',
    bossType: 'gym_leader', levelCap: 44, displayOrder: 1,
    notes: 'Rock-type specialist. Boulder Badge.',
    pokemon: [
      { pokemonDexId: 75, level: 41, slotOrder: 1, moves: ['Defense Curl', 'Rock Slide', 'Rollout', 'Earthquake'], ability: 'Rock Head' },
      { pokemonDexId: 111, level: 41, slotOrder: 2, moves: ['Fury Attack', 'Scary Face', 'Earthquake', 'Horn Drill'], ability: 'Lightning Rod' },
      { pokemonDexId: 139, level: 42, slotOrder: 3, moves: ['Bite', 'Surf', 'Protect', 'Spike Cannon'], ability: 'Swift Swim' },
      { pokemonDexId: 141, level: 42, slotOrder: 4, moves: ['Slash', 'Surf', 'Endure', 'Giga Drain'], ability: 'Swift Swim' },
      { pokemonDexId: 95, level: 44, slotOrder: 5, moves: ['Bind', 'Rock Slide', 'Bide', 'Sandstorm'], ability: 'Rock Head' },
    ],
  },
  {
    routeSlug: 'cinnabar-island', name: 'Blaine', trainerClass: 'Gym Leader',
    bossType: 'gym_leader', levelCap: 50, displayOrder: 1,
    notes: 'Fire-type specialist. Volcano Badge. Relocated to Seafoam Islands.',
    pokemon: [
      { pokemonDexId: 219, level: 45, slotOrder: 1, moves: ['Curse', 'Smog', 'Flamethrower', 'Rock Slide'], ability: 'Magma Armor' },
      { pokemonDexId: 126, level: 45, slotOrder: 2, moves: ['ThunderPunch', 'Fire Punch', 'Sunny Day', 'Confuse Ray'], ability: 'Flame Body' },
      { pokemonDexId: 78, level: 50, slotOrder: 3, moves: ['Quick Attack', 'Fire Spin', 'Fury Attack', 'Fire Blast'], ability: 'Flash Fire' },
    ],
  },
  {
    routeSlug: 'viridian-city', name: 'Blue', trainerClass: 'Gym Leader',
    bossType: 'gym_leader', levelCap: 58, displayOrder: 1,
    notes: 'Mixed-type specialist. Earth Badge.',
    pokemon: [
      { pokemonDexId: 18, level: 56, slotOrder: 1, moves: ['Quick Attack', 'Whirlwind', 'Wing Attack', 'Mirror Move'], ability: 'Keen Eye' },
      { pokemonDexId: 65, level: 54, slotOrder: 2, moves: ['Disable', 'Recover', 'Psychic', 'Reflect'], ability: 'Synchronize' },
      { pokemonDexId: 112, level: 56, slotOrder: 3, moves: ['Fury Attack', 'Sandstorm', 'Rock Slide', 'Earthquake'], ability: 'Lightning Rod' },
      { pokemonDexId: 130, level: 58, slotOrder: 4, moves: ['Twister', 'Hydro Pump', 'Rain Dance', 'Hyper Beam'], ability: 'Intimidate' },
      { pokemonDexId: 103, level: 58, slotOrder: 5, moves: ['Sunny Day', 'Leech Seed', 'Egg Bomb', 'SolarBeam'], ability: 'Chlorophyll' },
      { pokemonDexId: 59, level: 58, slotOrder: 6, moves: ['Roar', 'Swift', 'Flamethrower', 'ExtremeSpeed'], ability: 'Intimidate' },
    ],
  },
];

// ─── Game Config ─────────────────────────────────────────────────────────────

const config: GameConfig = {
  id: CRYSTAL_ID,
  slug: 'pokemon-crystal',
  name: 'Pokemon Crystal',
  generation: 2,
  region: 'Johto',
  baseGameSlug: null,
  isRomhack: false,
  spriteUrl: 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/245.png',
  description: 'Pokemon Crystal Version for Game Boy Color. The definitive Gen 2 experience with animated sprites and Suicune storyline. Features Johto and Kanto regions.',
  pokeapiVersionName: 'crystal',
  routes,
  starters: {
    routeSlug: 'new-bark-town',
    pokemon: [
      { dexId: 152, level: 5 },  // Chikorita
      { dexId: 155, level: 5 },  // Cyndaquil
      { dexId: 158, level: 5 },  // Totodile
    ],
  },
  bossTrainers,
};

export default config;
