import type { GameConfig, RouteConfig, BossTrainerConfig } from '../types.js';

// ─── Pokemon HeartGold / SoulSilver Configuration ────────────────────────────
// Adapted from Sacred Gold's 122 route structure.
// HGSS uses PokeAPI for encounter data. Boss trainers are the official HGSS teams.
// PokeAPI versions: 'heartgold' / 'soulsilver'

const HG_ID = 'c9d0e1f2-a3b4-5678-cd89-012345678901';
const SS_ID = 'd0e1f2a3-b4c5-6789-de90-123456789012';

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
  { name: 'Route 38', slug: 'route-38', displayOrder: 25, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['johto-route-38-area'] },
  { name: 'Route 39', slug: 'route-39', displayOrder: 26, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['johto-route-39-area'] },

  // ── Olivine / Cianwood ──
  { name: 'Olivine City', slug: 'olivine-city', displayOrder: 27, routeType: 'city', hasEncounters: false, hasTrainers: true, hasItems: false, notes: 'Gym Leader Jasmine. Steel-type specialist.', pokeapiAreas: [] },
  { name: 'Route 40', slug: 'route-40', displayOrder: 28, routeType: 'water', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['johto-sea-route-40-area'] },
  { name: 'Route 41', slug: 'route-41', displayOrder: 29, routeType: 'water', hasEncounters: true, hasTrainers: true, hasItems: false, notes: 'Whirl Islands nearby.', pokeapiAreas: ['johto-sea-route-41-area'] },
  { name: 'Cianwood City', slug: 'cianwood-city', displayOrder: 30, routeType: 'city', hasEncounters: false, hasTrainers: true, hasItems: false, notes: 'Gym Leader Chuck. Fighting-type specialist.', pokeapiAreas: [] },

  // ── Mahogany / Lake of Rage ──
  { name: 'Route 42', slug: 'route-42', displayOrder: 31, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['johto-route-42-area'] },
  { name: 'Mt. Mortar', slug: 'mt-mortar', displayOrder: 32, routeType: 'cave', hasEncounters: true, hasTrainers: false, hasItems: true, notes: null, pokeapiAreas: ['mt-mortar-1f', 'mt-mortar-lower-cave', 'mt-mortar-upper-cave', 'mt-mortar-b1f'] },
  { name: 'Mahogany Town', slug: 'mahogany-town', displayOrder: 33, routeType: 'city', hasEncounters: false, hasTrainers: true, hasItems: false, notes: 'Gym Leader Pryce. Ice-type specialist.', pokeapiAreas: [] },
  { name: 'Route 43', slug: 'route-43', displayOrder: 34, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['johto-route-43-area'] },
  { name: 'Lake of Rage', slug: 'lake-of-rage', displayOrder: 35, routeType: 'water', hasEncounters: true, hasTrainers: false, hasItems: false, notes: 'Red Gyarados event.', pokeapiAreas: ['lake-of-rage-area'] },
  { name: 'Route 44', slug: 'route-44', displayOrder: 36, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['johto-route-44-area'] },

  // ── Ice Path / Blackthorn ──
  { name: 'Ice Path', slug: 'ice-path', displayOrder: 37, routeType: 'cave', hasEncounters: true, hasTrainers: false, hasItems: true, notes: null, pokeapiAreas: ['ice-path-1f', 'ice-path-b1f', 'ice-path-b2f', 'ice-path-b3f'] },
  { name: 'Blackthorn City', slug: 'blackthorn-city', displayOrder: 38, routeType: 'city', hasEncounters: false, hasTrainers: true, hasItems: false, notes: 'Gym Leader Clair. Dragon-type specialist.', pokeapiAreas: [] },
  { name: 'Dragon\'s Den', slug: 'dragons-den', displayOrder: 39, routeType: 'cave', hasEncounters: true, hasTrainers: false, hasItems: false, notes: 'Dratini fishing.', pokeapiAreas: ['dragons-den-area'] },
  { name: 'Route 45', slug: 'route-45', displayOrder: 40, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['johto-route-45-area'] },
  { name: 'Dark Cave (Blackthorn Side)', slug: 'dark-cave-blackthorn', displayOrder: 41, routeType: 'cave', hasEncounters: true, hasTrainers: false, hasItems: false, notes: null, pokeapiAreas: ['dark-cave-blackthorn-city-entrance'] },
  { name: 'Whirl Islands', slug: 'whirl-islands', displayOrder: 42, routeType: 'cave', hasEncounters: true, hasTrainers: false, hasItems: false, notes: 'Lugia (SoulSilver).', pokeapiAreas: ['whirl-islands-1f', 'whirl-islands-b1f', 'whirl-islands-b2f', 'whirl-islands-b3f'] },

  // ── Victory Road ──
  { name: 'Route 27', slug: 'route-27', displayOrder: 43, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['kanto-route-27-area'] },
  { name: 'Tohjo Falls', slug: 'tohjo-falls', displayOrder: 44, routeType: 'cave', hasEncounters: true, hasTrainers: false, hasItems: false, notes: null, pokeapiAreas: ['tohjo-falls-area'] },
  { name: 'Route 26', slug: 'route-26', displayOrder: 45, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['kanto-route-26-area'] },
  { name: 'Victory Road', slug: 'victory-road', displayOrder: 46, routeType: 'cave', hasEncounters: true, hasTrainers: true, hasItems: true, notes: null, pokeapiAreas: ['kanto-victory-road-2-1f', 'kanto-victory-road-2-2f', 'kanto-victory-road-2-3f'] },
  { name: 'Indigo Plateau', slug: 'indigo-plateau', displayOrder: 47, routeType: 'building', hasEncounters: false, hasTrainers: true, hasItems: true, notes: 'Elite Four and Champion Lance.', pokeapiAreas: [] },

  // ══════════════════════════════════════════
  // KANTO (Post-E4)
  // ══════════════════════════════════════════

  { name: 'Vermilion City', slug: 'vermilion-city', displayOrder: 48, routeType: 'city', hasEncounters: false, hasTrainers: true, hasItems: false, notes: 'Gym Leader Lt. Surge. Electric-type specialist.', pokeapiAreas: [] },
  { name: 'Route 6', slug: 'route-6', displayOrder: 49, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['kanto-route-6-area'] },
  { name: 'Saffron City', slug: 'saffron-city', displayOrder: 50, routeType: 'city', hasEncounters: false, hasTrainers: true, hasItems: false, notes: 'Gym Leader Sabrina. Psychic-type specialist.', pokeapiAreas: [] },
  { name: 'Route 5', slug: 'route-5', displayOrder: 51, routeType: 'route', hasEncounters: true, hasTrainers: false, hasItems: false, notes: null, pokeapiAreas: ['kanto-route-5-area'] },
  { name: 'Cerulean City', slug: 'cerulean-city', displayOrder: 52, routeType: 'city', hasEncounters: false, hasTrainers: true, hasItems: false, notes: 'Gym Leader Misty. Water-type specialist.', pokeapiAreas: [] },
  { name: 'Route 24', slug: 'route-24', displayOrder: 53, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['kanto-route-24-area'] },
  { name: 'Route 25', slug: 'route-25', displayOrder: 54, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['kanto-route-25-area'] },
  { name: 'Route 9', slug: 'route-9', displayOrder: 55, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['kanto-route-9-area'] },
  { name: 'Route 10', slug: 'route-10', displayOrder: 56, routeType: 'route', hasEncounters: true, hasTrainers: false, hasItems: false, notes: null, pokeapiAreas: ['kanto-route-10-area'] },
  { name: 'Rock Tunnel', slug: 'rock-tunnel', displayOrder: 57, routeType: 'cave', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['rock-tunnel-1f', 'rock-tunnel-b1f'] },
  { name: 'Lavender Town', slug: 'lavender-town', displayOrder: 58, routeType: 'city', hasEncounters: false, hasTrainers: false, hasItems: false, notes: null, pokeapiAreas: [] },
  { name: 'Route 8', slug: 'route-8', displayOrder: 59, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['kanto-route-8-area'] },
  { name: 'Route 7', slug: 'route-7', displayOrder: 60, routeType: 'route', hasEncounters: true, hasTrainers: false, hasItems: false, notes: null, pokeapiAreas: ['kanto-route-7-area'] },
  { name: 'Celadon City', slug: 'celadon-city', displayOrder: 61, routeType: 'city', hasEncounters: false, hasTrainers: true, hasItems: true, notes: 'Gym Leader Erika. Grass-type specialist.', pokeapiAreas: [] },
  { name: 'Route 16', slug: 'route-16', displayOrder: 62, routeType: 'route', hasEncounters: true, hasTrainers: false, hasItems: false, notes: null, pokeapiAreas: ['kanto-route-16-area'] },
  { name: 'Route 17', slug: 'route-17', displayOrder: 63, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: false, notes: 'Cycling Road.', pokeapiAreas: ['kanto-route-17-area'] },
  { name: 'Route 18', slug: 'route-18', displayOrder: 64, routeType: 'route', hasEncounters: true, hasTrainers: false, hasItems: false, notes: null, pokeapiAreas: ['kanto-route-18-area'] },
  { name: 'Fuchsia City', slug: 'fuchsia-city', displayOrder: 65, routeType: 'city', hasEncounters: false, hasTrainers: true, hasItems: false, notes: 'Gym Leader Janine. Poison-type specialist.', pokeapiAreas: [] },
  { name: 'Route 15', slug: 'route-15', displayOrder: 66, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['kanto-route-15-area'] },
  { name: 'Route 14', slug: 'route-14', displayOrder: 67, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['kanto-route-14-area'] },
  { name: 'Route 13', slug: 'route-13', displayOrder: 68, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['kanto-route-13-area'] },
  { name: 'Route 12', slug: 'route-12', displayOrder: 69, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['kanto-route-12-area'] },
  { name: 'Route 11', slug: 'route-11', displayOrder: 70, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['kanto-route-11-area'] },
  { name: 'Diglett\'s Cave', slug: 'digletts-cave', displayOrder: 71, routeType: 'cave', hasEncounters: true, hasTrainers: false, hasItems: false, notes: null, pokeapiAreas: ['digletts-cave-area'] },
  { name: 'Route 2', slug: 'route-2', displayOrder: 72, routeType: 'route', hasEncounters: true, hasTrainers: false, hasItems: false, notes: null, pokeapiAreas: ['kanto-route-2-south-towards-viridian-city', 'kanto-route-2-north-towards-pewter-city'] },
  { name: 'Pewter City', slug: 'pewter-city', displayOrder: 73, routeType: 'city', hasEncounters: false, hasTrainers: true, hasItems: false, notes: 'Gym Leader Brock. Rock-type specialist.', pokeapiAreas: [] },
  { name: 'Viridian Forest', slug: 'viridian-forest', displayOrder: 74, routeType: 'route', hasEncounters: true, hasTrainers: false, hasItems: false, notes: null, pokeapiAreas: ['viridian-forest-area'] },
  { name: 'Viridian City', slug: 'viridian-city', displayOrder: 75, routeType: 'city', hasEncounters: false, hasTrainers: true, hasItems: false, notes: 'Gym Leader Blue. Mixed-type specialist.', pokeapiAreas: [] },
  { name: 'Route 1', slug: 'route-1', displayOrder: 76, routeType: 'route', hasEncounters: true, hasTrainers: false, hasItems: false, notes: null, pokeapiAreas: ['kanto-route-1-area'] },
  { name: 'Pallet Town', slug: 'pallet-town', displayOrder: 77, routeType: 'city', hasEncounters: true, hasTrainers: false, hasItems: false, notes: 'Surf and fishing available.', pokeapiAreas: ['pallet-town-area'] },
  { name: 'Route 21', slug: 'route-21', displayOrder: 78, routeType: 'water', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['kanto-sea-route-21-area'] },
  { name: 'Cinnabar Island', slug: 'cinnabar-island', displayOrder: 79, routeType: 'city', hasEncounters: false, hasTrainers: true, hasItems: false, notes: 'Gym Leader Blaine. Fire-type specialist.', pokeapiAreas: [] },
  { name: 'Route 20', slug: 'route-20', displayOrder: 80, routeType: 'water', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['kanto-sea-route-20-area'] },
  { name: 'Route 19', slug: 'route-19', displayOrder: 81, routeType: 'water', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['kanto-sea-route-19-area'] },
  { name: 'Seafoam Islands', slug: 'seafoam-islands', displayOrder: 82, routeType: 'cave', hasEncounters: true, hasTrainers: false, hasItems: true, notes: null, pokeapiAreas: ['seafoam-islands-1f', 'seafoam-islands-b1f', 'seafoam-islands-b2f', 'seafoam-islands-b3f', 'seafoam-islands-b4f'] },
  { name: 'Route 22', slug: 'route-22', displayOrder: 83, routeType: 'route', hasEncounters: true, hasTrainers: false, hasItems: false, notes: null, pokeapiAreas: ['kanto-route-22-area'] },
  { name: 'Route 28', slug: 'route-28', displayOrder: 84, routeType: 'route', hasEncounters: true, hasTrainers: false, hasItems: false, notes: null, pokeapiAreas: ['kanto-route-28-area'] },

  // ── Post-game / Endgame ──
  { name: 'Mt. Silver', slug: 'mt-silver', displayOrder: 85, routeType: 'cave', hasEncounters: true, hasTrainers: false, hasItems: true, notes: 'Red awaits at the summit.', pokeapiAreas: ['mt-silver-outside', 'mt-silver-1f', 'mt-silver-2f', 'mt-silver-3f', 'mt-silver-4f'] },
  { name: 'Bell Tower', slug: 'bell-tower', displayOrder: 86, routeType: 'building', hasEncounters: true, hasTrainers: false, hasItems: false, notes: 'Ho-Oh (HeartGold).', pokeapiAreas: ['bell-tower-1f', 'bell-tower-2f', 'bell-tower-3f', 'bell-tower-4f', 'bell-tower-5f', 'bell-tower-6f', 'bell-tower-7f', 'bell-tower-8f', 'bell-tower-9f'] },
  { name: 'Cerulean Cave', slug: 'cerulean-cave', displayOrder: 87, routeType: 'cave', hasEncounters: true, hasTrainers: false, hasItems: true, notes: 'Mewtwo. Post-game dungeon.', pokeapiAreas: ['cerulean-cave-1f', 'cerulean-cave-2f', 'cerulean-cave-b1f'] },
  { name: 'Safari Zone', slug: 'safari-zone', displayOrder: 88, routeType: 'special', hasEncounters: true, hasTrainers: false, hasItems: false, notes: 'HGSS Safari Zone near Cianwood.', pokeapiAreas: ['johto-safari-zone-zone-peak', 'johto-safari-zone-zone-desert', 'johto-safari-zone-zone-plains', 'johto-safari-zone-zone-meadow', 'johto-safari-zone-zone-forest', 'johto-safari-zone-zone-swamp'] },
  { name: 'Route 47', slug: 'route-47', displayOrder: 89, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['johto-route-47-area'] },
  { name: 'Route 48', slug: 'route-48', displayOrder: 90, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['johto-route-48-area'] },
];

// ─── Boss Trainers (HGSS official teams) ─────────────────────────────────────
// Boss trainer teams compiled from Bulbapedia HGSS data

const bossTrainers: BossTrainerConfig[] = [
  // ── Johto Gym Leaders ──

  // Gym 1: Falkner
  {
    routeSlug: 'violet-city', name: 'Falkner', trainerClass: 'Gym Leader',
    bossType: 'gym_leader', levelCap: 13, displayOrder: 1,
    notes: 'Flying-type specialist. Zephyr Badge.',
    pokemon: [
      { pokemonDexId: 16, level: 9, slotOrder: 1, moves: ['Tackle', 'Sand Attack', 'Gust', 'Quick Attack'], ability: 'Keen Eye' },
      { pokemonDexId: 17, level: 13, slotOrder: 2, moves: ['Tackle', 'Sand Attack', 'Gust', 'Roost'], ability: 'Keen Eye' },
    ],
  },
  // Gym 2: Bugsy
  {
    routeSlug: 'azalea-town', name: 'Bugsy', trainerClass: 'Gym Leader',
    bossType: 'gym_leader', levelCap: 17, displayOrder: 1,
    notes: 'Bug-type specialist. Hive Badge.',
    pokemon: [
      { pokemonDexId: 11, level: 15, slotOrder: 1, moves: ['Tackle', 'String Shot', 'Bug Bite', 'Harden'], ability: 'Shield Dust' },
      { pokemonDexId: 14, level: 15, slotOrder: 2, moves: ['Tackle', 'Poison Sting', 'Bug Bite', 'Harden'], ability: 'Shield Dust' },
      { pokemonDexId: 123, level: 17, slotOrder: 3, moves: ['Quick Attack', 'Leer', 'Focus Energy', 'U-turn'], ability: 'Technician' },
    ],
  },
  // Gym 3: Whitney
  {
    routeSlug: 'goldenrod-city', name: 'Whitney', trainerClass: 'Gym Leader',
    bossType: 'gym_leader', levelCap: 19, displayOrder: 1,
    notes: 'Normal-type specialist. Plain Badge. Miltank is infamous.',
    pokemon: [
      { pokemonDexId: 35, level: 17, slotOrder: 1, moves: ['DoubleSlap', 'Encore', 'Mimic', 'Metronome'], ability: 'Cute Charm' },
      { pokemonDexId: 241, level: 19, slotOrder: 2, moves: ['Rollout', 'Attract', 'Stomp', 'Milk Drink'], ability: 'Scrappy' },
    ],
  },
  // Gym 4: Morty
  {
    routeSlug: 'ecruteak-city', name: 'Morty', trainerClass: 'Gym Leader',
    bossType: 'gym_leader', levelCap: 25, displayOrder: 1,
    notes: 'Ghost-type specialist. Fog Badge.',
    pokemon: [
      { pokemonDexId: 92, level: 21, slotOrder: 1, moves: ['Lick', 'Spite', 'Mean Look', 'Curse'], ability: 'Levitate' },
      { pokemonDexId: 93, level: 21, slotOrder: 2, moves: ['Hypnosis', 'Spite', 'Mean Look', 'Shadow Ball'], ability: 'Levitate' },
      { pokemonDexId: 94, level: 25, slotOrder: 3, moves: ['Hypnosis', 'Shadow Ball', 'Sucker Punch', 'Dream Eater'], ability: 'Levitate' },
      { pokemonDexId: 93, level: 23, slotOrder: 4, moves: ['Hypnosis', 'Spite', 'Sucker Punch', 'Shadow Ball'], ability: 'Levitate' },
    ],
  },
  // Gym 5: Chuck
  {
    routeSlug: 'cianwood-city', name: 'Chuck', trainerClass: 'Gym Leader',
    bossType: 'gym_leader', levelCap: 31, displayOrder: 1,
    notes: 'Fighting-type specialist. Storm Badge.',
    pokemon: [
      { pokemonDexId: 57, level: 29, slotOrder: 1, moves: ['Leer', 'Rage', 'Karate Chop', 'Rock Slide'], ability: 'Vital Spirit' },
      { pokemonDexId: 62, level: 31, slotOrder: 2, moves: ['Hypnosis', 'Focus Punch', 'Surf', 'Body Slam'], ability: 'Damp' },
    ],
  },
  // Gym 6: Jasmine
  {
    routeSlug: 'olivine-city', name: 'Jasmine', trainerClass: 'Gym Leader',
    bossType: 'gym_leader', levelCap: 35, displayOrder: 1,
    notes: 'Steel-type specialist. Mineral Badge.',
    pokemon: [
      { pokemonDexId: 81, level: 30, slotOrder: 1, moves: ['Thunder Wave', 'Supersonic', 'Thunderbolt', 'Sonic Boom'], ability: 'Magnet Pull' },
      { pokemonDexId: 81, level: 30, slotOrder: 2, moves: ['Thunder Wave', 'Supersonic', 'Thunderbolt', 'Sonic Boom'], ability: 'Magnet Pull' },
      { pokemonDexId: 208, level: 35, slotOrder: 3, moves: ['Iron Tail', 'Screech', 'Rock Throw', 'Sandstorm'], ability: 'Sturdy' },
    ],
  },
  // Gym 7: Pryce
  {
    routeSlug: 'mahogany-town', name: 'Pryce', trainerClass: 'Gym Leader',
    bossType: 'gym_leader', levelCap: 34, displayOrder: 1,
    notes: 'Ice-type specialist. Glacier Badge.',
    pokemon: [
      { pokemonDexId: 86, level: 30, slotOrder: 1, moves: ['Hail', 'Icy Wind', 'Aurora Beam', 'Rest'], ability: 'Thick Fat' },
      { pokemonDexId: 87, level: 32, slotOrder: 2, moves: ['Hail', 'Icy Wind', 'Aurora Beam', 'Rest'], ability: 'Thick Fat' },
      { pokemonDexId: 221, level: 34, slotOrder: 3, moves: ['Hail', 'Ice Fang', 'Mud Bomb', 'Blizzard'], ability: 'Oblivious' },
    ],
  },
  // Gym 8: Clair
  {
    routeSlug: 'blackthorn-city', name: 'Clair', trainerClass: 'Gym Leader',
    bossType: 'gym_leader', levelCap: 41, displayOrder: 1,
    notes: 'Dragon-type specialist. Rising Badge.',
    pokemon: [
      { pokemonDexId: 148, level: 38, slotOrder: 1, moves: ['Thunder Wave', 'Twister', 'DragonBreath', 'Slam'], ability: 'Shed Skin' },
      { pokemonDexId: 148, level: 38, slotOrder: 2, moves: ['Fire Blast', 'Twister', 'DragonBreath', 'Slam'], ability: 'Shed Skin' },
      { pokemonDexId: 130, level: 38, slotOrder: 3, moves: ['Dragon Rage', 'Dragon Pulse', 'Twister', 'Bite'], ability: 'Intimidate' },
      { pokemonDexId: 230, level: 41, slotOrder: 4, moves: ['Dragon Pulse', 'Hydro Pump', 'Smokescreen', 'Gyro Ball'], ability: 'Sniper' },
    ],
  },

  // ── Elite Four ──

  // E4 1: Will
  {
    routeSlug: 'indigo-plateau', name: 'Will', trainerClass: 'Elite Four',
    bossType: 'elite_four', levelCap: 42, displayOrder: 1,
    notes: 'Psychic-type specialist. First of the Elite Four.',
    pokemon: [
      { pokemonDexId: 178, level: 40, slotOrder: 1, moves: ['Air Slash', 'Psychic', 'Confuse Ray', 'U-turn'], ability: 'Synchronize' },
      { pokemonDexId: 124, level: 41, slotOrder: 2, moves: ['Psychic', 'Ice Punch', 'Lovely Kiss', 'Double Slap'], ability: 'Oblivious' },
      { pokemonDexId: 103, level: 41, slotOrder: 3, moves: ['Psychic', 'Egg Bomb', 'Reflect', 'Leech Seed'], ability: 'Chlorophyll' },
      { pokemonDexId: 80, level: 41, slotOrder: 4, moves: ['Psychic', 'Surf', 'Amnesia', 'Body Slam'], ability: 'Own Tempo' },
      { pokemonDexId: 178, level: 42, slotOrder: 5, moves: ['Psychic', 'Air Slash', 'Shadow Ball', 'U-turn'], ability: 'Synchronize' },
    ],
  },
  // E4 2: Koga
  {
    routeSlug: 'indigo-plateau', name: 'Koga', trainerClass: 'Elite Four',
    bossType: 'elite_four', levelCap: 44, displayOrder: 2,
    notes: 'Poison-type specialist. Second of the Elite Four.',
    pokemon: [
      { pokemonDexId: 168, level: 40, slotOrder: 1, moves: ['Bug Bite', 'Poison Jab', 'Giga Drain', 'Baton Pass'], ability: 'Insomnia' },
      { pokemonDexId: 49, level: 41, slotOrder: 2, moves: ['Bug Buzz', 'Psychic', 'Signal Beam', 'Double Team'], ability: 'Tinted Lens' },
      { pokemonDexId: 169, level: 42, slotOrder: 3, moves: ['Cross Poison', 'Air Slash', 'Confuse Ray', 'Mean Look'], ability: 'Inner Focus' },
      { pokemonDexId: 89, level: 43, slotOrder: 4, moves: ['Gunk Shot', 'Minimize', 'Screech', 'Mud Bomb'], ability: 'Sticky Hold' },
      { pokemonDexId: 205, level: 44, slotOrder: 5, moves: ['Bug Bite', 'Explosion', 'Toxic Spikes', 'Protect'], ability: 'Sturdy' },
    ],
  },
  // E4 3: Bruno
  {
    routeSlug: 'indigo-plateau', name: 'Bruno', trainerClass: 'Elite Four',
    bossType: 'elite_four', levelCap: 46, displayOrder: 3,
    notes: 'Fighting-type specialist. Third of the Elite Four.',
    pokemon: [
      { pokemonDexId: 107, level: 42, slotOrder: 1, moves: ['ThunderPunch', 'Ice Punch', 'Fire Punch', 'Bullet Punch'], ability: 'Iron Fist' },
      { pokemonDexId: 106, level: 42, slotOrder: 2, moves: ['Jump Kick', 'Blaze Kick', 'Focus Energy', 'Swagger'], ability: 'Limber' },
      { pokemonDexId: 95, level: 43, slotOrder: 3, moves: ['Earthquake', 'Rock Slide', 'Sandstorm', 'Double Edge'], ability: 'Rock Head' },
      { pokemonDexId: 237, level: 42, slotOrder: 4, moves: ['Triple Kick', 'Counter', 'Quick Attack', 'Detect'], ability: 'Intimidate' },
      { pokemonDexId: 68, level: 46, slotOrder: 5, moves: ['Cross Chop', 'Bullet Punch', 'Rock Slide', 'Foresight'], ability: 'Guts' },
    ],
  },
  // E4 4: Karen
  {
    routeSlug: 'indigo-plateau', name: 'Karen', trainerClass: 'Elite Four',
    bossType: 'elite_four', levelCap: 47, displayOrder: 4,
    notes: 'Dark-type specialist. Fourth of the Elite Four.',
    pokemon: [
      { pokemonDexId: 197, level: 42, slotOrder: 1, moves: ['Dark Pulse', 'Confuse Ray', 'Quick Attack', 'Payback'], ability: 'Synchronize' },
      { pokemonDexId: 45, level: 42, slotOrder: 2, moves: ['Petal Dance', 'Moonlight', 'Stun Spore', 'Attract'], ability: 'Chlorophyll' },
      { pokemonDexId: 94, level: 44, slotOrder: 3, moves: ['Shadow Ball', 'Sludge Bomb', 'Lick', 'Curse'], ability: 'Levitate' },
      { pokemonDexId: 198, level: 44, slotOrder: 4, moves: ['Sucker Punch', 'Whirlwind', 'Psychic', 'Faint Attack'], ability: 'Insomnia' },
      { pokemonDexId: 229, level: 47, slotOrder: 5, moves: ['Dark Pulse', 'Flamethrower', 'Nasty Plot', 'Crunch'], ability: 'Flash Fire' },
    ],
  },

  // ── Champion Lance ──
  {
    routeSlug: 'indigo-plateau', name: 'Lance', trainerClass: 'Champion',
    bossType: 'champion', levelCap: 50, displayOrder: 5,
    notes: 'Dragon-type specialist. Johto Champion.',
    pokemon: [
      { pokemonDexId: 130, level: 46, slotOrder: 1, moves: ['Dragon Dance', 'Waterfall', 'Ice Fang', 'Flail'], ability: 'Intimidate' },
      { pokemonDexId: 149, level: 49, slotOrder: 2, moves: ['Dragon Rush', 'Thunder Wave', 'Thunder', 'Hyper Beam'], ability: 'Inner Focus' },
      { pokemonDexId: 149, level: 49, slotOrder: 3, moves: ['Dragon Rush', 'Thunder Wave', 'Blizzard', 'Hyper Beam'], ability: 'Inner Focus' },
      { pokemonDexId: 149, level: 50, slotOrder: 4, moves: ['Dragon Rush', 'Thunder Wave', 'Fire Blast', 'Hyper Beam'], ability: 'Inner Focus' },
      { pokemonDexId: 142, level: 48, slotOrder: 5, moves: ['Rock Slide', 'Aerial Ace', 'Crunch', 'Thunder Fang'], ability: 'Rock Head' },
      { pokemonDexId: 6, level: 48, slotOrder: 6, moves: ['Flamethrower', 'Air Slash', 'Dragon Pulse', 'Shadow Claw'], ability: 'Blaze' },
    ],
  },

  // ── Kanto Gym Leaders ──

  // Lt. Surge
  {
    routeSlug: 'vermilion-city', name: 'Lt. Surge', trainerClass: 'Gym Leader',
    bossType: 'gym_leader', levelCap: 51, displayOrder: 1,
    notes: 'Electric-type specialist. Thunder Badge.',
    pokemon: [
      { pokemonDexId: 26, level: 51, slotOrder: 1, moves: ['Thunder Wave', 'Quick Attack', 'Thunderbolt', 'Signal Beam'], ability: 'Static' },
      { pokemonDexId: 101, level: 47, slotOrder: 2, moves: ['Screech', 'Thunderbolt', 'Signal Beam', 'Light Screen'], ability: 'Soundproof' },
      { pokemonDexId: 82, level: 47, slotOrder: 3, moves: ['Thunderbolt', 'Flash Cannon', 'Supersonic', 'Thunder Wave'], ability: 'Magnet Pull' },
      { pokemonDexId: 125, level: 47, slotOrder: 4, moves: ['ThunderPunch', 'Light Screen', 'Quick Attack', 'Low Kick'], ability: 'Static' },
    ],
  },
  // Sabrina
  {
    routeSlug: 'saffron-city', name: 'Sabrina', trainerClass: 'Gym Leader',
    bossType: 'gym_leader', levelCap: 53, displayOrder: 1,
    notes: 'Psychic-type specialist. Marsh Badge.',
    pokemon: [
      { pokemonDexId: 196, level: 53, slotOrder: 1, moves: ['Psychic', 'Shadow Ball', 'Calm Mind', 'Skill Swap'], ability: 'Synchronize' },
      { pokemonDexId: 122, level: 50, slotOrder: 2, moves: ['Psychic', 'Reflect', 'Light Screen', 'Calm Mind'], ability: 'Filter' },
      { pokemonDexId: 65, level: 48, slotOrder: 3, moves: ['Psychic', 'Energy Ball', 'Charge Beam', 'Reflect'], ability: 'Synchronize' },
    ],
  },
  // Misty
  {
    routeSlug: 'cerulean-city', name: 'Misty', trainerClass: 'Gym Leader',
    bossType: 'gym_leader', levelCap: 54, displayOrder: 1,
    notes: 'Water-type specialist. Cascade Badge.',
    pokemon: [
      { pokemonDexId: 55, level: 49, slotOrder: 1, moves: ['Surf', 'Psychic', 'Ice Beam', 'Rain Dance'], ability: 'Cloud Nine' },
      { pokemonDexId: 121, level: 54, slotOrder: 2, moves: ['Surf', 'Psychic', 'Ice Beam', 'Power Gem'], ability: 'Natural Cure' },
      { pokemonDexId: 131, level: 52, slotOrder: 3, moves: ['Surf', 'Ice Beam', 'Body Slam', 'Rain Dance'], ability: 'Water Absorb' },
      { pokemonDexId: 195, level: 49, slotOrder: 4, moves: ['Surf', 'Earthquake', 'Rain Dance', 'Amnesia'], ability: 'Water Absorb' },
    ],
  },
  // Erika
  {
    routeSlug: 'celadon-city', name: 'Erika', trainerClass: 'Gym Leader',
    bossType: 'gym_leader', levelCap: 56, displayOrder: 1,
    notes: 'Grass-type specialist. Rainbow Badge.',
    pokemon: [
      { pokemonDexId: 189, level: 51, slotOrder: 1, moves: ['Sunny Day', 'Leech Seed', 'Cotton Spore', 'Giga Drain'], ability: 'Chlorophyll' },
      { pokemonDexId: 182, level: 56, slotOrder: 2, moves: ['Petal Dance', 'SolarBeam', 'Aromatherapy', 'Sunny Day'], ability: 'Chlorophyll' },
      { pokemonDexId: 114, level: 52, slotOrder: 3, moves: ['Power Whip', 'AncientPower', 'Sleep Powder', 'Stun Spore'], ability: 'Chlorophyll' },
      { pokemonDexId: 45, level: 56, slotOrder: 4, moves: ['Petal Dance', 'Moonlight', 'SolarBeam', 'Sunny Day'], ability: 'Chlorophyll' },
    ],
  },
  // Janine
  {
    routeSlug: 'fuchsia-city', name: 'Janine', trainerClass: 'Gym Leader',
    bossType: 'gym_leader', levelCap: 50, displayOrder: 1,
    notes: 'Poison-type specialist. Soul Badge.',
    pokemon: [
      { pokemonDexId: 169, level: 47, slotOrder: 1, moves: ['Cross Poison', 'Air Slash', 'Confuse Ray', 'U-turn'], ability: 'Inner Focus' },
      { pokemonDexId: 168, level: 47, slotOrder: 2, moves: ['Poison Jab', 'Bug Bite', 'Giga Drain', 'Baton Pass'], ability: 'Insomnia' },
      { pokemonDexId: 49, level: 50, slotOrder: 3, moves: ['Psychic', 'Bug Buzz', 'Sleep Powder', 'Signal Beam'], ability: 'Tinted Lens' },
      { pokemonDexId: 110, level: 44, slotOrder: 4, moves: ['Sludge Bomb', 'Thunderbolt', 'Explosion', 'Shadow Ball'], ability: 'Levitate' },
    ],
  },
  // Brock
  {
    routeSlug: 'pewter-city', name: 'Brock', trainerClass: 'Gym Leader',
    bossType: 'gym_leader', levelCap: 55, displayOrder: 1,
    notes: 'Rock-type specialist. Boulder Badge.',
    pokemon: [
      { pokemonDexId: 76, level: 51, slotOrder: 1, moves: ['Earthquake', 'Stone Edge', 'Sandstorm', 'Stealth Rock'], ability: 'Sturdy' },
      { pokemonDexId: 112, level: 51, slotOrder: 2, moves: ['Earthquake', 'Stone Edge', 'Megahorn', 'Crunch'], ability: 'Lightning Rod' },
      { pokemonDexId: 139, level: 52, slotOrder: 3, moves: ['Surf', 'AncientPower', 'Tickle', 'Protect'], ability: 'Shell Armor' },
      { pokemonDexId: 141, level: 52, slotOrder: 4, moves: ['AncientPower', 'Aqua Jet', 'Slash', 'Endure'], ability: 'Battle Armor' },
      { pokemonDexId: 95, level: 55, slotOrder: 5, moves: ['Earthquake', 'Stone Edge', 'Sandstorm', 'Iron Tail'], ability: 'Rock Head' },
    ],
  },
  // Blaine
  {
    routeSlug: 'cinnabar-island', name: 'Blaine', trainerClass: 'Gym Leader',
    bossType: 'gym_leader', levelCap: 54, displayOrder: 1,
    notes: 'Fire-type specialist. Volcano Badge.',
    pokemon: [
      { pokemonDexId: 126, level: 54, slotOrder: 1, moves: ['Flamethrower', 'SolarBeam', 'Sunny Day', 'Confuse Ray'], ability: 'Flame Body' },
      { pokemonDexId: 78, level: 48, slotOrder: 2, moves: ['Flare Blitz', 'SolarBeam', 'Sunny Day', 'Quick Attack'], ability: 'Flash Fire' },
      { pokemonDexId: 59, level: 50, slotOrder: 3, moves: ['Flare Blitz', 'ExtremeSpeed', 'Crunch', 'Thunder Fang'], ability: 'Intimidate' },
    ],
  },
  // Blue
  {
    routeSlug: 'viridian-city', name: 'Blue', trainerClass: 'Gym Leader',
    bossType: 'gym_leader', levelCap: 56, displayOrder: 1,
    notes: 'Mixed-type specialist. Earth Badge.',
    pokemon: [
      { pokemonDexId: 103, level: 55, slotOrder: 1, moves: ['Psychic', 'Leaf Storm', 'Trick Room', 'Hypnosis'], ability: 'Chlorophyll' },
      { pokemonDexId: 59, level: 54, slotOrder: 2, moves: ['Flare Blitz', 'ExtremeSpeed', 'Crunch', 'Iron Tail'], ability: 'Intimidate' },
      { pokemonDexId: 68, level: 56, slotOrder: 3, moves: ['Cross Chop', 'Stone Edge', 'Earthquake', 'Scary Face'], ability: 'No Guard' },
      { pokemonDexId: 130, level: 52, slotOrder: 4, moves: ['Waterfall', 'Ice Fang', 'Dragon Dance', 'Thrash'], ability: 'Intimidate' },
      { pokemonDexId: 18, level: 56, slotOrder: 5, moves: ['Air Slash', 'Return', 'Mirror Move', 'Whirlwind'], ability: 'Keen Eye' },
      { pokemonDexId: 112, level: 56, slotOrder: 6, moves: ['Earthquake', 'Megahorn', 'Rock Wrecker', 'Payback'], ability: 'Lightning Rod' },
    ],
  },
];

// ─── Game Configs ────────────────────────────────────────────────────────────

const starters = {
  routeSlug: 'new-bark-town',
  pokemon: [
    { dexId: 152, level: 5 },  // Chikorita
    { dexId: 155, level: 5 },  // Cyndaquil
    { dexId: 158, level: 5 },  // Totodile
  ],
};

const heartgoldConfig: GameConfig = {
  id: HG_ID,
  slug: 'pokemon-heartgold',
  name: 'Pokemon HeartGold',
  generation: 4,
  region: 'Johto',
  baseGameSlug: null,
  isRomhack: false,
  spriteUrl: 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/250.png',
  description: 'Pokemon HeartGold Version for Nintendo DS. A Gen 4 remake of Pokemon Gold, featuring Johto and Kanto regions. Ho-Oh on the cover.',
  pokeapiVersionName: 'heartgold',
  routes,
  starters,
  bossTrainers,
};

const soulsilverConfig: GameConfig = {
  id: SS_ID,
  slug: 'pokemon-soulsilver',
  name: 'Pokemon SoulSilver',
  generation: 4,
  region: 'Johto',
  baseGameSlug: null,
  isRomhack: false,
  spriteUrl: 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/249.png',
  description: 'Pokemon SoulSilver Version for Nintendo DS. A Gen 4 remake of Pokemon Silver, featuring Johto and Kanto regions. Lugia on the cover.',
  pokeapiVersionName: 'soulsilver',
  routes,
  starters,
  bossTrainers,
};

export default [heartgoldConfig, soulsilverConfig];
