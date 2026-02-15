import type { GameConfig, RouteConfig, BossTrainerConfig } from '../types.js';

// ─── Pokemon X / Y Configuration ────────────────────────────────────────────
// Gen 6, Kalos region. PokeAPI versions: 'x' / 'y'
// Key version differences:
// - Version-exclusive wild Pokemon
// - Mega Stones differ (Charizardite X/Y, Mewtwoite X/Y)
// - Gym leaders, E4, Champion are the same in both versions
// - Diantha's Gardevoir holds Gardevoirite and Mega Evolves

const X_ID = 'd6e7f8a9-b0c1-2345-d678-901234567890';
const Y_ID = 'e7f8a9b0-c1d2-3456-e789-012345678901';

const routes: RouteConfig[] = [
  // ══════════════════════════════════════════
  // MAIN STORY
  // ══════════════════════════════════════════

  { name: 'Vaniville Town', slug: 'vaniville-town', displayOrder: 1, routeType: 'city', hasEncounters: true, hasTrainers: false, hasItems: false, notes: 'Starter town. Choose Chespin, Fennekin, or Froakie.', pokeapiAreas: [] },
  { name: 'Route 1 (Vaniville Pathway)', slug: 'route-1', displayOrder: 2, routeType: 'route', hasEncounters: false, hasTrainers: false, hasItems: false, notes: 'Very short path to Aquacorde Town.', pokeapiAreas: [] },
  { name: 'Aquacorde Town', slug: 'aquacorde-town', displayOrder: 3, routeType: 'city', hasEncounters: false, hasTrainers: false, hasItems: false, notes: 'Meet friends and receive starter.', pokeapiAreas: [] },
  { name: 'Route 2 (Avance Trail)', slug: 'route-2', displayOrder: 4, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['kalos-route-2-area'] },
  { name: 'Santalune Forest', slug: 'santalune-forest', displayOrder: 5, routeType: 'cave', hasEncounters: true, hasTrainers: true, hasItems: true, notes: null, pokeapiAreas: ['santalune-forest-area'] },
  { name: 'Route 3 (Ouvert Way)', slug: 'route-3', displayOrder: 6, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['kalos-route-3-area'] },
  { name: 'Santalune City', slug: 'santalune-city', displayOrder: 7, routeType: 'city', hasEncounters: false, hasTrainers: true, hasItems: true, notes: 'Gym Leader Viola. Bug-type specialist.', pokeapiAreas: [] },
  { name: 'Route 4 (Parterre Way)', slug: 'route-4', displayOrder: 8, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: false, notes: 'Flower garden route.', pokeapiAreas: ['kalos-route-4-area'] },
  { name: 'Lumiose City (South)', slug: 'lumiose-city-south', displayOrder: 9, routeType: 'city', hasEncounters: false, hasTrainers: false, hasItems: true, notes: 'Partial access. Full access after Clemont.', pokeapiAreas: [] },
  { name: 'Route 5 (Versant Road)', slug: 'route-5', displayOrder: 10, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['kalos-route-5-area'] },
  { name: 'Camphrier Town', slug: 'camphrier-town', displayOrder: 11, routeType: 'city', hasEncounters: false, hasTrainers: false, hasItems: true, notes: null, pokeapiAreas: [] },
  { name: 'Route 6 (Palais Lane)', slug: 'route-6', displayOrder: 12, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['kalos-route-6-area'] },
  { name: 'Parfum Palace', slug: 'parfum-palace', displayOrder: 13, routeType: 'building', hasEncounters: false, hasTrainers: false, hasItems: true, notes: 'Furfrou event.', pokeapiAreas: [] },
  { name: 'Route 7 (Rivière Walk)', slug: 'route-7', displayOrder: 14, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: false, notes: 'Berry fields.', pokeapiAreas: ['kalos-route-7-area'] },
  { name: 'Connecting Cave', slug: 'connecting-cave', displayOrder: 15, routeType: 'cave', hasEncounters: true, hasTrainers: true, hasItems: true, notes: null, pokeapiAreas: ['connecting-cave-area'] },
  { name: 'Route 8 (Muraille Coast)', slug: 'route-8', displayOrder: 16, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: false, notes: 'Coastal route.', pokeapiAreas: ['kalos-route-8-area'] },
  { name: 'Ambrette Town', slug: 'ambrette-town', displayOrder: 17, routeType: 'city', hasEncounters: false, hasTrainers: false, hasItems: true, notes: 'Fossil Lab.', pokeapiAreas: [] },
  { name: 'Route 9 (Spikes Passage)', slug: 'route-9', displayOrder: 18, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: false, notes: 'Rhyhorn ride section.', pokeapiAreas: ['kalos-route-9-area'] },
  { name: 'Glittering Cave', slug: 'glittering-cave', displayOrder: 19, routeType: 'cave', hasEncounters: true, hasTrainers: true, hasItems: true, notes: 'Team Flare encounter. Fossil restoration.', pokeapiAreas: ['glittering-cave-unknown-area-303', 'glittering-cave-unknown-area-304'] },
  { name: 'Cyllage City', slug: 'cyllage-city', displayOrder: 20, routeType: 'city', hasEncounters: false, hasTrainers: true, hasItems: true, notes: 'Gym Leader Grant. Rock-type specialist.', pokeapiAreas: [] },
  { name: 'Route 10 (Menhir Trail)', slug: 'route-10', displayOrder: 21, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: false, notes: 'Standing stones area.', pokeapiAreas: ['kalos-route-10-area'] },
  { name: 'Geosenge Town', slug: 'geosenge-town', displayOrder: 22, routeType: 'city', hasEncounters: false, hasTrainers: false, hasItems: true, notes: 'Team Flare base nearby.', pokeapiAreas: [] },
  { name: 'Route 11 (Miroir Way)', slug: 'route-11', displayOrder: 23, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['kalos-route-11-area'] },
  { name: 'Reflection Cave', slug: 'reflection-cave', displayOrder: 24, routeType: 'cave', hasEncounters: true, hasTrainers: true, hasItems: true, notes: null, pokeapiAreas: ['reflection-cave-unknown-area-305', 'reflection-cave-unknown-area-306', 'reflection-cave-unknown-area-307', 'reflection-cave-unknown-area-308'] },
  { name: 'Shalour City', slug: 'shalour-city', displayOrder: 25, routeType: 'city', hasEncounters: false, hasTrainers: true, hasItems: true, notes: 'Gym Leader Korrina. Fighting-type specialist.', pokeapiAreas: [] },
  { name: 'Tower of Mastery', slug: 'tower-of-mastery', displayOrder: 26, routeType: 'building', hasEncounters: false, hasTrainers: true, hasItems: false, notes: 'Mega Evolution tutorial. Lucario gift.', pokeapiAreas: [] },
  { name: 'Route 12 (Fourrage Road)', slug: 'route-12', displayOrder: 27, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: false, notes: 'Lapras gift.', pokeapiAreas: ['kalos-route-12-area'] },
  { name: 'Coumarine City', slug: 'coumarine-city', displayOrder: 28, routeType: 'city', hasEncounters: false, hasTrainers: true, hasItems: true, notes: 'Gym Leader Ramos. Grass-type specialist.', pokeapiAreas: [] },
  { name: 'Route 13 (Lumiose Badlands)', slug: 'route-13', displayOrder: 29, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: false, notes: 'Desert area. Power Plant nearby.', pokeapiAreas: ['kalos-route-13-area'] },
  { name: 'Lumiose City', slug: 'lumiose-city', displayOrder: 30, routeType: 'city', hasEncounters: false, hasTrainers: true, hasItems: true, notes: 'Gym Leader Clemont. Electric-type specialist. Full city access.', pokeapiAreas: [] },
  { name: 'Route 14 (Laverre Nature Trail)', slug: 'route-14', displayOrder: 31, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: false, notes: 'Swampy forest.', pokeapiAreas: ['kalos-route-14-area'] },
  { name: 'Laverre City', slug: 'laverre-city', displayOrder: 32, routeType: 'city', hasEncounters: false, hasTrainers: true, hasItems: true, notes: 'Gym Leader Valerie. Fairy-type specialist.', pokeapiAreas: [] },
  { name: 'Poke Ball Factory', slug: 'poke-ball-factory', displayOrder: 33, routeType: 'building', hasEncounters: false, hasTrainers: true, hasItems: true, notes: 'Team Flare encounter.', pokeapiAreas: [] },
  { name: 'Route 15 (Brun Way)', slug: 'route-15', displayOrder: 34, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['kalos-route-15-area'] },
  { name: 'Lost Hotel', slug: 'lost-hotel', displayOrder: 35, routeType: 'building', hasEncounters: true, hasTrainers: true, hasItems: true, notes: null, pokeapiAreas: ['lost-hotel-area'] },
  { name: 'Route 16 (Melancolie Path)', slug: 'route-16', displayOrder: 36, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['kalos-route-16-area'] },
  { name: 'Dendemille Town', slug: 'dendemille-town', displayOrder: 37, routeType: 'city', hasEncounters: false, hasTrainers: false, hasItems: true, notes: null, pokeapiAreas: [] },
  { name: 'Frost Cavern', slug: 'frost-cavern', displayOrder: 38, routeType: 'cave', hasEncounters: true, hasTrainers: true, hasItems: true, notes: 'Team Flare encounter. Abomasnow battle.', pokeapiAreas: ['frost-cavern-unknown-area-313', 'frost-cavern-unknown-area-314', 'frost-cavern-unknown-area-315', 'frost-cavern-unknown-area-316', 'frost-cavern-unknown-area-317'] },
  { name: 'Route 17 (Mamoswine Road)', slug: 'route-17', displayOrder: 39, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: false, notes: 'Mamoswine ride through deep snow.', pokeapiAreas: ['kalos-route-17-area'] },
  { name: 'Anistar City', slug: 'anistar-city', displayOrder: 40, routeType: 'city', hasEncounters: false, hasTrainers: true, hasItems: true, notes: 'Gym Leader Olympia. Psychic-type specialist.', pokeapiAreas: [] },
  { name: 'Route 18 (Vallée Étroite Way)', slug: 'route-18', displayOrder: 41, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['kalos-route-18-area'] },
  { name: 'Terminus Cave', slug: 'terminus-cave', displayOrder: 42, routeType: 'cave', hasEncounters: true, hasTrainers: true, hasItems: true, notes: 'Zygarde encounter (post-game).', pokeapiAreas: ['terminus-cave-1f', 'terminus-cave-b1f-left', 'terminus-cave-b1f-right', 'terminus-cave-b2f'] },
  { name: 'Couriway Town', slug: 'couriway-town', displayOrder: 43, routeType: 'city', hasEncounters: false, hasTrainers: false, hasItems: true, notes: null, pokeapiAreas: [] },
  { name: 'Route 19 (Grande Vallée Way)', slug: 'route-19', displayOrder: 44, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['kalos-route-19-area'] },
  { name: 'Snowbelle City', slug: 'snowbelle-city', displayOrder: 45, routeType: 'city', hasEncounters: false, hasTrainers: true, hasItems: true, notes: 'Gym Leader Wulfric. Ice-type specialist.', pokeapiAreas: [] },
  { name: 'Route 20 (Winding Woods)', slug: 'route-20', displayOrder: 46, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['kalos-route-20-area'] },
  { name: 'Pokemon Village', slug: 'pokemon-village', displayOrder: 47, routeType: 'special', hasEncounters: true, hasTrainers: false, hasItems: true, notes: 'Hidden area with rare Pokemon.', pokeapiAreas: ['pokemon-village-area'] },
  { name: 'Route 21 (Dernière Way)', slug: 'route-21', displayOrder: 48, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['kalos-route-21-area'] },
  { name: 'Victory Road', slug: 'victory-road', displayOrder: 49, routeType: 'cave', hasEncounters: true, hasTrainers: true, hasItems: true, notes: null, pokeapiAreas: ['kalos-victory-road-unknown-area-322', 'kalos-victory-road-unknown-area-324', 'kalos-victory-road-unknown-area-326', 'kalos-victory-road-unknown-area-327', 'kalos-victory-road-unknown-area-328'] },
  { name: 'Pokemon League', slug: 'pokemon-league', displayOrder: 50, routeType: 'building', hasEncounters: false, hasTrainers: true, hasItems: false, notes: 'Elite Four and Champion Diantha.', pokeapiAreas: [] },

  // ══════════════════════════════════════════
  // POST-GAME
  // ══════════════════════════════════════════

  { name: 'Kiloude City', slug: 'kiloude-city', displayOrder: 51, routeType: 'city', hasEncounters: false, hasTrainers: true, hasItems: true, notes: 'Battle Maison. Friend Safari.', pokeapiAreas: [] },
  { name: 'Route 22 (Détourner Way)', slug: 'route-22', displayOrder: 52, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['kalos-route-22-area'] },
  { name: 'Chamber of Emptiness', slug: 'chamber-of-emptiness', displayOrder: 53, routeType: 'cave', hasEncounters: false, hasTrainers: false, hasItems: true, notes: 'Banettite found here.', pokeapiAreas: [] },
];

// ─── Boss Trainers ──────────────────────────────────────────────────────────

const bossTrainers: BossTrainerConfig[] = [
  // Gym 1: Viola (Bug Badge)
  {
    routeSlug: 'santalune-city', name: 'Viola', trainerClass: 'Gym Leader',
    bossType: 'gym_leader', levelCap: 12, displayOrder: 1,
    notes: 'Bug-type specialist. Bug Badge.',
    pokemon: [
      { pokemonDexId: 283, level: 10, slotOrder: 1, moves: ['Quick Attack', 'Bubble', 'Water Sport'], ability: 'Swift Swim' },
      { pokemonDexId: 666, level: 12, slotOrder: 2, moves: ['Tackle', 'Infestation', 'Harden'], ability: 'Shield Dust' },
    ],
  },
  // Gym 2: Grant (Cliff Badge)
  {
    routeSlug: 'cyllage-city', name: 'Grant', trainerClass: 'Gym Leader',
    bossType: 'gym_leader', levelCap: 25, displayOrder: 2,
    notes: 'Rock-type specialist. Cliff Badge.',
    pokemon: [
      { pokemonDexId: 698, level: 25, slotOrder: 1, moves: ['Aurora Beam', 'Rock Tomb', 'Thunder Wave', 'Take Down'], ability: 'Refrigerate' },
      { pokemonDexId: 696, level: 25, slotOrder: 2, moves: ['Rock Tomb', 'Bite', 'Stomp'], ability: 'Strong Jaw' },
    ],
  },
  // Gym 3: Korrina (Rumble Badge)
  {
    routeSlug: 'shalour-city', name: 'Korrina', trainerClass: 'Gym Leader',
    bossType: 'gym_leader', levelCap: 32, displayOrder: 3,
    notes: 'Fighting-type specialist. Rumble Badge.',
    pokemon: [
      { pokemonDexId: 619, level: 29, slotOrder: 1, moves: ['Power-Up Punch', 'Fake Out', 'Double Slap'], ability: 'Regenerator' },
      { pokemonDexId: 67, level: 28, slotOrder: 2, moves: ['Power-Up Punch', 'Rock Tomb', 'Leer'], ability: 'Guts' },
      { pokemonDexId: 701, level: 32, slotOrder: 3, moves: ['Flying Press', 'Hone Claws', 'Power-Up Punch'], ability: 'Unburden' },
    ],
  },
  // Gym 4: Ramos (Plant Badge)
  {
    routeSlug: 'coumarine-city', name: 'Ramos', trainerClass: 'Gym Leader',
    bossType: 'gym_leader', levelCap: 34, displayOrder: 4,
    notes: 'Grass-type specialist. Plant Badge.',
    pokemon: [
      { pokemonDexId: 189, level: 30, slotOrder: 1, moves: ['Grass Knot', 'Acrobatics', 'Leech Seed'], ability: 'Chlorophyll' },
      { pokemonDexId: 70, level: 31, slotOrder: 2, moves: ['Grass Knot', 'Acid', 'Poison Powder', 'Gastro Acid'], ability: 'Chlorophyll' },
      { pokemonDexId: 673, level: 34, slotOrder: 3, moves: ['Grass Knot', 'Bulldoze', 'Take Down'], ability: 'Sap Sipper' },
    ],
  },
  // Gym 5: Clemont (Voltage Badge)
  {
    routeSlug: 'lumiose-city', name: 'Clemont', trainerClass: 'Gym Leader',
    bossType: 'gym_leader', levelCap: 37, displayOrder: 5,
    notes: 'Electric-type specialist. Voltage Badge.',
    pokemon: [
      { pokemonDexId: 587, level: 35, slotOrder: 1, moves: ['Volt Switch', 'Quick Attack', 'Aerial Ace'], ability: 'Static' },
      { pokemonDexId: 82, level: 35, slotOrder: 2, moves: ['Thunderbolt', 'Electric Terrain', 'Mirror Shot'], ability: 'Sturdy' },
      { pokemonDexId: 695, level: 37, slotOrder: 3, moves: ['Thunderbolt', 'Quick Attack', 'Grass Knot'], ability: 'Dry Skin' },
    ],
  },
  // Gym 6: Valerie (Fairy Badge)
  {
    routeSlug: 'laverre-city', name: 'Valerie', trainerClass: 'Gym Leader',
    bossType: 'gym_leader', levelCap: 42, displayOrder: 6,
    notes: 'Fairy-type specialist. Fairy Badge.',
    pokemon: [
      { pokemonDexId: 303, level: 38, slotOrder: 1, moves: ['Feint Attack', 'Crunch', 'Iron Defense'], ability: 'Hyper Cutter' },
      { pokemonDexId: 122, level: 39, slotOrder: 2, moves: ['Light Screen', 'Reflect', 'Psychic', 'Dazzling Gleam'], ability: 'Soundproof' },
      { pokemonDexId: 700, level: 42, slotOrder: 3, moves: ['Dazzling Gleam', 'Quick Attack', 'Swift', 'Charm'], ability: 'Cute Charm' },
    ],
  },
  // Gym 7: Olympia (Psychic Badge)
  {
    routeSlug: 'anistar-city', name: 'Olympia', trainerClass: 'Gym Leader',
    bossType: 'gym_leader', levelCap: 48, displayOrder: 7,
    notes: 'Psychic-type specialist. Psychic Badge.',
    pokemon: [
      { pokemonDexId: 561, level: 44, slotOrder: 1, moves: ['Psychic', 'Air Slash', 'Light Screen', 'Reflect'], ability: 'Magic Guard' },
      { pokemonDexId: 199, level: 45, slotOrder: 2, moves: ['Psychic', 'Calm Mind', 'Power Gem', 'Yawn'], ability: 'Oblivious' },
      { pokemonDexId: 678, level: 48, slotOrder: 3, moves: ['Psychic', 'Calm Mind', 'Fake Out', 'Shadow Ball'], ability: 'Infiltrator' },
    ],
  },
  // Gym 8: Wulfric (Iceberg Badge)
  {
    routeSlug: 'snowbelle-city', name: 'Wulfric', trainerClass: 'Gym Leader',
    bossType: 'gym_leader', levelCap: 59, displayOrder: 8,
    notes: 'Ice-type specialist. Iceberg Badge.',
    pokemon: [
      { pokemonDexId: 460, level: 56, slotOrder: 1, moves: ['Ice Beam', 'Ice Shard', 'Energy Ball'], ability: 'Snow Warning' },
      { pokemonDexId: 615, level: 55, slotOrder: 2, moves: ['Ice Beam', 'Confuse Ray', 'Flash Cannon', 'Hail'], ability: 'Levitate' },
      { pokemonDexId: 713, level: 59, slotOrder: 3, moves: ['Avalanche', 'Crunch', 'Curse', 'Gyro Ball'], ability: 'Ice Body' },
    ],
  },
  // E4 1: Malva (Fire)
  {
    routeSlug: 'pokemon-league', name: 'Malva', trainerClass: 'Elite Four',
    bossType: 'elite_four', levelCap: 65, displayOrder: 1,
    notes: 'Fire-type specialist.',
    pokemon: [
      { pokemonDexId: 668, level: 63, slotOrder: 1, moves: ['Hyper Voice', 'Noble Roar', 'Flamethrower', 'Wild Charge'], ability: 'Rivalry' },
      { pokemonDexId: 324, level: 63, slotOrder: 2, moves: ['Curse', 'Flame Wheel', 'Stone Edge', 'Earthquake'], ability: 'White Smoke' },
      { pokemonDexId: 609, level: 63, slotOrder: 3, moves: ['Flamethrower', 'Confuse Ray', 'Confide', 'Shadow Ball'], ability: 'Flame Body' },
      { pokemonDexId: 663, level: 65, slotOrder: 4, moves: ['Quick Attack', 'Brave Bird', 'Flare Blitz', 'Flail'], ability: 'Flame Body' },
    ],
  },
  // E4 2: Siebold (Water)
  {
    routeSlug: 'pokemon-league', name: 'Siebold', trainerClass: 'Elite Four',
    bossType: 'elite_four', levelCap: 65, displayOrder: 2,
    notes: 'Water-type specialist.',
    pokemon: [
      { pokemonDexId: 693, level: 63, slotOrder: 1, moves: ['Dragon Pulse', 'Water Pulse', 'Aura Sphere', 'Dark Pulse'], ability: 'Mega Launcher' },
      { pokemonDexId: 121, level: 63, slotOrder: 2, moves: ['Psychic', 'Light Screen', 'Surf', 'Dazzling Gleam'], ability: 'Illuminate' },
      { pokemonDexId: 130, level: 63, slotOrder: 3, moves: ['Waterfall', 'Ice Fang', 'Dragon Dance', 'Earthquake'], ability: 'Intimidate' },
      { pokemonDexId: 689, level: 65, slotOrder: 4, moves: ['Stone Edge', 'Razor Shell', 'Cross Chop', 'X-Scissor'], ability: 'Tough Claws' },
    ],
  },
  // E4 3: Wikstrom (Steel)
  {
    routeSlug: 'pokemon-league', name: 'Wikstrom', trainerClass: 'Elite Four',
    bossType: 'elite_four', levelCap: 65, displayOrder: 3,
    notes: 'Steel-type specialist.',
    pokemon: [
      { pokemonDexId: 707, level: 63, slotOrder: 1, moves: ['Spikes', 'Torment', 'Dazzling Gleam', 'Flash Cannon'], ability: 'Prankster' },
      { pokemonDexId: 476, level: 63, slotOrder: 2, moves: ['Power Gem', 'Earth Power', 'Flash Cannon', 'Discharge'], ability: 'Sturdy' },
      { pokemonDexId: 212, level: 63, slotOrder: 3, moves: ['X-Scissor', 'Iron Head', 'Bullet Punch', 'Night Slash'], ability: 'Technician' },
      { pokemonDexId: 681, level: 65, slotOrder: 4, moves: ['Sacred Sword', 'Iron Head', "King's Shield", 'Shadow Claw'], ability: 'Stance Change' },
    ],
  },
  // E4 4: Drasna (Dragon)
  {
    routeSlug: 'pokemon-league', name: 'Drasna', trainerClass: 'Elite Four',
    bossType: 'elite_four', levelCap: 65, displayOrder: 4,
    notes: 'Dragon-type specialist.',
    pokemon: [
      { pokemonDexId: 691, level: 63, slotOrder: 1, moves: ['Sludge Bomb', 'Surf', 'Thunderbolt', 'Dragon Pulse'], ability: 'Poison Point' },
      { pokemonDexId: 334, level: 63, slotOrder: 2, moves: ['Dragon Pulse', 'Moonblast', 'Sing', 'Cotton Guard'], ability: 'Natural Cure' },
      { pokemonDexId: 621, level: 63, slotOrder: 3, moves: ['Dragon Tail', 'Revenge', 'Retaliate', 'Chip Away'], ability: 'Rough Skin' },
      { pokemonDexId: 715, level: 65, slotOrder: 4, moves: ['Flamethrower', 'Boomburst', 'Air Slash', 'Dragon Pulse'], ability: 'Frisk' },
    ],
  },
  // Champion: Diantha
  {
    routeSlug: 'pokemon-league', name: 'Diantha', trainerClass: 'Champion',
    bossType: 'champion', levelCap: 68, displayOrder: 5,
    notes: 'Kalos Champion. Gardevoir Mega Evolves.',
    pokemon: [
      { pokemonDexId: 701, level: 64, slotOrder: 1, moves: ['Poison Jab', 'Flying Press', 'Swords Dance', 'X-Scissor'], ability: 'Limber' },
      { pokemonDexId: 697, level: 65, slotOrder: 2, moves: ['Head Smash', 'Dragon Claw', 'Earthquake', 'Crunch'], ability: 'Strong Jaw' },
      { pokemonDexId: 699, level: 65, slotOrder: 3, moves: ['Thunder', 'Blizzard', 'Reflect', 'Light Screen'], ability: 'Refrigerate' },
      { pokemonDexId: 711, level: 65, slotOrder: 4, moves: ['Trick-or-Treat', 'Phantom Force', 'Seed Bomb', 'Shadow Sneak'], ability: 'Pickup' },
      { pokemonDexId: 706, level: 66, slotOrder: 5, moves: ['Focus Blast', 'Dragon Pulse', 'Fire Blast', 'Muddy Water'], ability: 'Sap Sipper' },
      { pokemonDexId: 282, level: 68, slotOrder: 6, moves: ['Thunderbolt', 'Moonblast', 'Psychic', 'Shadow Ball'], ability: 'Synchronize', heldItem: 'Gardevoirite' },
    ],
  },
];

// ─── Game Configs ────────────────────────────────────────────────────────────

const starters = {
  routeSlug: 'vaniville-town',
  pokemon: [
    { dexId: 650, level: 5 },  // Chespin
    { dexId: 653, level: 5 },  // Fennekin
    { dexId: 656, level: 5 },  // Froakie
  ],
};

const xConfig: GameConfig = {
  id: X_ID,
  slug: 'pokemon-x',
  name: 'Pokemon X',
  generation: 6,
  region: 'Kalos',
  baseGameSlug: null,
  isRomhack: false,
  spriteUrl: 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/716.png',
  description: 'Pokemon X for Nintendo 3DS. Set in the Kalos region. Introduces Fairy type and Mega Evolution.',
  pokeapiVersionName: 'x',
  routes,
  starters,
  bossTrainers,
};

const yConfig: GameConfig = {
  id: Y_ID,
  slug: 'pokemon-y',
  name: 'Pokemon Y',
  generation: 6,
  region: 'Kalos',
  baseGameSlug: null,
  isRomhack: false,
  spriteUrl: 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/717.png',
  description: 'Pokemon Y for Nintendo 3DS. Set in the Kalos region. Introduces Fairy type and Mega Evolution.',
  pokeapiVersionName: 'y',
  routes,
  starters,
  bossTrainers,
};

export default [xConfig, yConfig];
