import type { GameConfig, RouteConfig, BossTrainerConfig } from '../types.js';

// ─── Pokemon LeafGreen Configuration ─────────────────────────────────────────
// Fork of FireRed. Same routes, same trainers, different version-exclusive encounters.
// PokeAPI version name: 'leafgreen'

const GAME_ID = 'f6a7b8c9-d0e1-2345-fab6-789012345678';

const routes: RouteConfig[] = [
  // ── Early Game ──
  { name: 'Pallet Town', slug: 'pallet-town', displayOrder: 1, routeType: 'city', hasEncounters: true, hasTrainers: false, hasItems: false, notes: 'Starter town. Choose Bulbasaur, Charmander, or Squirtle.', pokeapiAreas: ['pallet-town-area'] },
  { name: 'Route 1', slug: 'route-1', displayOrder: 2, routeType: 'route', hasEncounters: true, hasTrainers: false, hasItems: true, notes: null, pokeapiAreas: ['kanto-route-1-area'] },
  { name: 'Viridian City', slug: 'viridian-city', displayOrder: 3, routeType: 'city', hasEncounters: false, hasTrainers: false, hasItems: true, notes: null, pokeapiAreas: [] },
  { name: 'Route 2', slug: 'route-2', displayOrder: 4, routeType: 'route', hasEncounters: true, hasTrainers: false, hasItems: true, notes: null, pokeapiAreas: ['kanto-route-2-south-towards-viridian-city', 'kanto-route-2-north-towards-pewter-city'] },
  { name: 'Viridian Forest', slug: 'viridian-forest', displayOrder: 5, routeType: 'cave', hasEncounters: true, hasTrainers: true, hasItems: true, notes: null, pokeapiAreas: ['viridian-forest-area'] },
  { name: 'Pewter City', slug: 'pewter-city', displayOrder: 6, routeType: 'city', hasEncounters: false, hasTrainers: true, hasItems: true, notes: 'Home of Brock.', pokeapiAreas: [] },
  { name: 'Route 3', slug: 'route-3', displayOrder: 7, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['kanto-route-3-area'] },
  { name: 'Mt. Moon', slug: 'mt-moon', displayOrder: 8, routeType: 'cave', hasEncounters: true, hasTrainers: true, hasItems: true, notes: null, pokeapiAreas: ['mt-moon-1f', 'mt-moon-b1f', 'mt-moon-b2f'] },
  { name: 'Route 4', slug: 'route-4', displayOrder: 9, routeType: 'route', hasEncounters: true, hasTrainers: false, hasItems: true, notes: null, pokeapiAreas: ['kanto-route-4-area'] },
  { name: 'Cerulean City', slug: 'cerulean-city', displayOrder: 10, routeType: 'city', hasEncounters: false, hasTrainers: true, hasItems: true, notes: 'Home of Misty.', pokeapiAreas: [] },

  // ── Post-Cerulean ──
  { name: 'Route 24', slug: 'route-24', displayOrder: 11, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: true, notes: 'Nugget Bridge. 5 trainers + Team Rocket Grunt.', pokeapiAreas: ['kanto-route-24-area'] },
  { name: 'Route 25', slug: 'route-25', displayOrder: 12, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: true, notes: 'Path to Bill\'s House. Receive S.S. Ticket.', pokeapiAreas: ['kanto-route-25-area'] },
  { name: 'Route 5', slug: 'route-5', displayOrder: 13, routeType: 'route', hasEncounters: true, hasTrainers: false, hasItems: false, notes: null, pokeapiAreas: ['kanto-route-5-area'] },
  { name: 'Route 6', slug: 'route-6', displayOrder: 14, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['kanto-route-6-area'] },
  { name: 'Vermilion City', slug: 'vermilion-city', displayOrder: 15, routeType: 'city', hasEncounters: false, hasTrainers: true, hasItems: true, notes: 'Home of Lt. Surge. SS Anne docked at port.', pokeapiAreas: [] },
  { name: 'Route 11', slug: 'route-11', displayOrder: 16, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['kanto-route-11-area'] },
  { name: 'Diglett\'s Cave', slug: 'digletts-cave', displayOrder: 17, routeType: 'cave', hasEncounters: true, hasTrainers: false, hasItems: false, notes: 'Connects Vermilion City area to Route 2.', pokeapiAreas: ['digletts-cave-area'] },
  { name: 'Route 9', slug: 'route-9', displayOrder: 18, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['kanto-route-9-area'] },
  { name: 'Route 10', slug: 'route-10', displayOrder: 19, routeType: 'route', hasEncounters: true, hasTrainers: false, hasItems: false, notes: null, pokeapiAreas: ['kanto-route-10-area'] },
  { name: 'Rock Tunnel', slug: 'rock-tunnel', displayOrder: 20, routeType: 'cave', hasEncounters: true, hasTrainers: true, hasItems: true, notes: 'Requires Flash (optional). Many trainers inside.', pokeapiAreas: ['rock-tunnel-1f', 'rock-tunnel-b1f'] },

  // ── Lavender to Celadon ──
  { name: 'Lavender Town', slug: 'lavender-town', displayOrder: 21, routeType: 'city', hasEncounters: false, hasTrainers: false, hasItems: true, notes: 'Home of the Pokemon Tower.', pokeapiAreas: [] },
  { name: 'Pokemon Tower', slug: 'pokemon-tower', displayOrder: 22, routeType: 'building', hasEncounters: true, hasTrainers: true, hasItems: true, notes: 'Haunted tower. Rival battle on 2F. Need Silph Scope to identify ghosts.', pokeapiAreas: ['pokemon-tower-3f', 'pokemon-tower-4f', 'pokemon-tower-5f', 'pokemon-tower-6f', 'pokemon-tower-7f'] },
  { name: 'Route 8', slug: 'route-8', displayOrder: 23, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['kanto-route-8-area'] },
  { name: 'Route 7', slug: 'route-7', displayOrder: 24, routeType: 'route', hasEncounters: true, hasTrainers: false, hasItems: false, notes: null, pokeapiAreas: ['kanto-route-7-area'] },
  { name: 'Celadon City', slug: 'celadon-city', displayOrder: 25, routeType: 'city', hasEncounters: false, hasTrainers: true, hasItems: true, notes: 'Home of Erika. Game Corner and Dept. Store.', pokeapiAreas: [] },
  { name: 'Team Rocket Hideout', slug: 'team-rocket-hideout', displayOrder: 26, routeType: 'building', hasEncounters: false, hasTrainers: true, hasItems: true, notes: 'Underneath the Game Corner. Get Silph Scope.', pokeapiAreas: [] },

  // ── Cycling Road to Safari Zone ──
  { name: 'Route 16', slug: 'route-16', displayOrder: 27, routeType: 'route', hasEncounters: true, hasTrainers: false, hasItems: true, notes: 'Snorlax blocks the path. Use Poke Flute.', pokeapiAreas: ['kanto-route-16-area'] },
  { name: 'Route 17', slug: 'route-17', displayOrder: 28, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: false, notes: 'Cycling Road.', pokeapiAreas: ['kanto-route-17-area'] },
  { name: 'Route 18', slug: 'route-18', displayOrder: 29, routeType: 'route', hasEncounters: true, hasTrainers: false, hasItems: false, notes: null, pokeapiAreas: ['kanto-route-18-area'] },
  { name: 'Fuchsia City', slug: 'fuchsia-city', displayOrder: 30, routeType: 'city', hasEncounters: false, hasTrainers: true, hasItems: true, notes: 'Home of Koga. Safari Zone entrance.', pokeapiAreas: [] },
  { name: 'Safari Zone', slug: 'safari-zone', displayOrder: 31, routeType: 'special', hasEncounters: true, hasTrainers: false, hasItems: true, notes: 'Catch rare Pokemon with Safari Balls. HM03 Surf inside.', pokeapiAreas: ['kanto-safari-zone-middle', 'kanto-safari-zone-area-1-east', 'kanto-safari-zone-area-2-north', 'kanto-safari-zone-area-3-west'] },

  // ── South Kanto ──
  { name: 'Route 12', slug: 'route-12', displayOrder: 32, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: true, notes: 'Snorlax blocks the path. Use Poke Flute.', pokeapiAreas: ['kanto-route-12-area'] },
  { name: 'Route 13', slug: 'route-13', displayOrder: 33, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['kanto-route-13-area'] },
  { name: 'Route 14', slug: 'route-14', displayOrder: 34, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['kanto-route-14-area'] },
  { name: 'Route 15', slug: 'route-15', displayOrder: 35, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['kanto-route-15-area'] },

  // ── Saffron & Silph Co. ──
  { name: 'Saffron City', slug: 'saffron-city', displayOrder: 36, routeType: 'city', hasEncounters: false, hasTrainers: true, hasItems: true, notes: 'Home of Sabrina. Silph Co. HQ.', pokeapiAreas: [] },
  { name: 'Silph Co.', slug: 'silph-co', displayOrder: 37, routeType: 'building', hasEncounters: false, hasTrainers: true, hasItems: true, notes: 'Team Rocket takeover. Rival battle and Giovanni boss fight. Receive Lapras.', pokeapiAreas: [] },

  // ── Water Routes ──
  { name: 'Route 19', slug: 'route-19', displayOrder: 38, routeType: 'water', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['kanto-sea-route-19-area'] },
  { name: 'Route 20', slug: 'route-20', displayOrder: 39, routeType: 'water', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['kanto-sea-route-20-area'] },
  { name: 'Seafoam Islands', slug: 'seafoam-islands', displayOrder: 40, routeType: 'cave', hasEncounters: true, hasTrainers: false, hasItems: true, notes: 'Ice puzzle cave. Articuno at the bottom.', pokeapiAreas: ['seafoam-islands-1f', 'seafoam-islands-b1f', 'seafoam-islands-b2f', 'seafoam-islands-b3f', 'seafoam-islands-b4f'] },
  { name: 'Cinnabar Island', slug: 'cinnabar-island', displayOrder: 41, routeType: 'city', hasEncounters: false, hasTrainers: true, hasItems: true, notes: 'Home of Blaine. Pokemon Mansion and Lab.', pokeapiAreas: [] },
  { name: 'Pokemon Mansion', slug: 'pokemon-mansion', displayOrder: 42, routeType: 'building', hasEncounters: true, hasTrainers: true, hasItems: true, notes: 'Find the Secret Key to unlock Cinnabar Gym.', pokeapiAreas: ['pokemon-mansion-1f', 'pokemon-mansion-2f', 'pokemon-mansion-3f', 'pokemon-mansion-b1f'] },
  { name: 'Route 21', slug: 'route-21', displayOrder: 43, routeType: 'water', hasEncounters: true, hasTrainers: true, hasItems: false, notes: null, pokeapiAreas: ['kanto-sea-route-21-area'] },

  // ── End Game ──
  { name: 'Viridian City Gym', slug: 'viridian-city-gym', displayOrder: 44, routeType: 'building', hasEncounters: false, hasTrainers: true, hasItems: false, notes: 'Giovanni\'s Gym. Earth Badge.', pokeapiAreas: [] },
  { name: 'Route 22', slug: 'route-22', displayOrder: 45, routeType: 'route', hasEncounters: true, hasTrainers: true, hasItems: false, notes: 'Rival battle before Victory Road.', pokeapiAreas: ['kanto-route-22-area'] },
  { name: 'Route 23', slug: 'route-23', displayOrder: 46, routeType: 'route', hasEncounters: true, hasTrainers: false, hasItems: false, notes: 'Badge check gates to Victory Road.', pokeapiAreas: ['kanto-route-23-area'] },
  { name: 'Victory Road', slug: 'victory-road', displayOrder: 47, routeType: 'cave', hasEncounters: true, hasTrainers: true, hasItems: true, notes: 'Final cave before Indigo Plateau. Strength puzzles.', pokeapiAreas: ['kanto-victory-road-1-1f', 'kanto-victory-road-1-2f', 'kanto-victory-road-1-3f'] },
  { name: 'Indigo Plateau', slug: 'indigo-plateau', displayOrder: 48, routeType: 'building', hasEncounters: false, hasTrainers: true, hasItems: true, notes: 'Elite Four and Champion battles.', pokeapiAreas: [] },

  // ── Post-Game ──
  { name: 'Power Plant', slug: 'power-plant', displayOrder: 49, routeType: 'building', hasEncounters: true, hasTrainers: false, hasItems: true, notes: 'Zapdos. Electric-type Pokemon.', pokeapiAreas: ['power-plant-area'] },
  { name: 'Cerulean Cave', slug: 'cerulean-cave', displayOrder: 50, routeType: 'cave', hasEncounters: true, hasTrainers: false, hasItems: true, notes: 'Post-game dungeon. Mewtwo.', pokeapiAreas: ['cerulean-cave-1f', 'cerulean-cave-2f', 'cerulean-cave-b1f'] },
];

// ─── Boss Trainers ───────────────────────────────────────────────────────────
// Identical to FireRed - same gym leaders, E4, and champion

const bossTrainers: BossTrainerConfig[] = [
  // Gym Leader 1: Brock
  {
    routeSlug: 'pewter-city', name: 'Brock', trainerClass: 'Gym Leader',
    bossType: 'gym_leader', levelCap: 14, displayOrder: 1,
    notes: 'Rock-type specialist. Boulder Badge.',
    pokemon: [
      { pokemonDexId: 74, level: 12, slotOrder: 1, moves: ['Tackle', 'Defense Curl', 'Rock Tomb', 'Mud Sport'], ability: 'Rock Head' },
      { pokemonDexId: 95, level: 14, slotOrder: 2, moves: ['Tackle', 'Bind', 'Rock Tomb', 'Harden'], ability: 'Rock Head' },
    ],
  },
  // Gym Leader 2: Misty
  {
    routeSlug: 'cerulean-city', name: 'Misty', trainerClass: 'Gym Leader',
    bossType: 'gym_leader', levelCap: 21, displayOrder: 1,
    notes: 'Water-type specialist. Cascade Badge.',
    pokemon: [
      { pokemonDexId: 120, level: 18, slotOrder: 1, moves: ['Tackle', 'Harden', 'Water Pulse', 'Recover'], ability: 'Natural Cure' },
      { pokemonDexId: 121, level: 21, slotOrder: 2, moves: ['Swift', 'Water Pulse', 'Recover', 'Rapid Spin'], ability: 'Natural Cure' },
    ],
  },
  // Gym Leader 3: Lt. Surge
  {
    routeSlug: 'vermilion-city', name: 'Lt. Surge', trainerClass: 'Gym Leader',
    bossType: 'gym_leader', levelCap: 24, displayOrder: 1,
    notes: 'Electric-type specialist. Thunder Badge.',
    pokemon: [
      { pokemonDexId: 100, level: 21, slotOrder: 1, moves: ['Sonic Boom', 'Tackle', 'Shock Wave', 'Screech'], ability: 'Soundproof' },
      { pokemonDexId: 25, level: 18, slotOrder: 2, moves: ['Quick Attack', 'Shock Wave', 'Thunder Wave', 'Double Team'], ability: 'Static' },
      { pokemonDexId: 26, level: 24, slotOrder: 3, moves: ['Shock Wave', 'Quick Attack', 'Thunder Wave', 'Double Team'], ability: 'Static' },
    ],
  },
  // Gym Leader 4: Erika
  {
    routeSlug: 'celadon-city', name: 'Erika', trainerClass: 'Gym Leader',
    bossType: 'gym_leader', levelCap: 29, displayOrder: 1,
    notes: 'Grass-type specialist. Rainbow Badge.',
    pokemon: [
      { pokemonDexId: 71, level: 29, slotOrder: 1, moves: ['Giga Drain', 'Stun Spore', 'Acid', 'PoisonPowder'], ability: 'Chlorophyll' },
      { pokemonDexId: 114, level: 24, slotOrder: 2, moves: ['Giga Drain', 'Ingrain', 'Constrict', 'PoisonPowder'], ability: 'Chlorophyll' },
      { pokemonDexId: 45, level: 29, slotOrder: 3, moves: ['Giga Drain', 'Stun Spore', 'Acid', 'Sleep Powder'], ability: 'Chlorophyll' },
    ],
  },
  // Gym Leader 5: Koga
  {
    routeSlug: 'fuchsia-city', name: 'Koga', trainerClass: 'Gym Leader',
    bossType: 'gym_leader', levelCap: 43, displayOrder: 1,
    notes: 'Poison-type specialist. Soul Badge.',
    pokemon: [
      { pokemonDexId: 109, level: 37, slotOrder: 1, moves: ['Self-Destruct', 'Sludge', 'Smokescreen', 'Tackle'], ability: 'Levitate' },
      { pokemonDexId: 89, level: 39, slotOrder: 2, moves: ['Minimize', 'Sludge', 'Acid Armor', 'Toxic'], ability: 'Stench' },
      { pokemonDexId: 109, level: 37, slotOrder: 3, moves: ['Self-Destruct', 'Sludge', 'Smokescreen', 'Toxic'], ability: 'Levitate' },
      { pokemonDexId: 110, level: 43, slotOrder: 4, moves: ['Tackle', 'Sludge', 'Smokescreen', 'Self-Destruct'], ability: 'Levitate' },
    ],
  },
  // Gym Leader 6: Sabrina
  {
    routeSlug: 'saffron-city', name: 'Sabrina', trainerClass: 'Gym Leader',
    bossType: 'gym_leader', levelCap: 43, displayOrder: 1,
    notes: 'Psychic-type specialist. Marsh Badge.',
    pokemon: [
      { pokemonDexId: 64, level: 38, slotOrder: 1, moves: ['Psybeam', 'Reflect', 'Future Sight', 'Calm Mind'], ability: 'Synchronize' },
      { pokemonDexId: 122, level: 37, slotOrder: 2, moves: ['Barrier', 'Psybeam', 'Baton Pass', 'Calm Mind'], ability: 'Soundproof' },
      { pokemonDexId: 49, level: 38, slotOrder: 3, moves: ['Psybeam', 'Gust', 'Leech Life', 'Supersonic'], ability: 'Shield Dust' },
      { pokemonDexId: 65, level: 43, slotOrder: 4, moves: ['Psychic', 'Calm Mind', 'Reflect', 'Future Sight'], ability: 'Synchronize' },
    ],
  },
  // Gym Leader 7: Blaine
  {
    routeSlug: 'cinnabar-island', name: 'Blaine', trainerClass: 'Gym Leader',
    bossType: 'gym_leader', levelCap: 47, displayOrder: 1,
    notes: 'Fire-type specialist. Volcano Badge.',
    pokemon: [
      { pokemonDexId: 58, level: 42, slotOrder: 1, moves: ['Fire Blast', 'Take Down', 'Flamethrower', 'Roar'], ability: 'Intimidate' },
      { pokemonDexId: 77, level: 40, slotOrder: 2, moves: ['Fire Blast', 'Stomp', 'Fire Spin', 'Bounce'], ability: 'Run Away' },
      { pokemonDexId: 78, level: 42, slotOrder: 3, moves: ['Fire Blast', 'Stomp', 'Bounce', 'Fire Spin'], ability: 'Run Away' },
      { pokemonDexId: 59, level: 47, slotOrder: 4, moves: ['Fire Blast', 'ExtremeSpeed', 'Flamethrower', 'Bite'], ability: 'Intimidate' },
    ],
  },
  // Gym Leader 8: Giovanni
  {
    routeSlug: 'viridian-city-gym', name: 'Giovanni', trainerClass: 'Gym Leader',
    bossType: 'gym_leader', levelCap: 50, displayOrder: 1,
    notes: 'Ground-type specialist. Earth Badge.',
    pokemon: [
      { pokemonDexId: 111, level: 45, slotOrder: 1, moves: ['Earthquake', 'Take Down', 'Horn Drill', 'Rock Blast'], ability: 'Lightning Rod' },
      { pokemonDexId: 51, level: 42, slotOrder: 2, moves: ['Earthquake', 'Slash', 'Sand Tomb', 'Mud-Slap'], ability: 'Sand Veil' },
      { pokemonDexId: 31, level: 44, slotOrder: 3, moves: ['Earthquake', 'Body Slam', 'Double Kick', 'Superpower'], ability: 'Poison Point' },
      { pokemonDexId: 34, level: 45, slotOrder: 4, moves: ['Earthquake', 'Thrash', 'Megahorn', 'Shadow Ball'], ability: 'Poison Point' },
      { pokemonDexId: 111, level: 50, slotOrder: 5, moves: ['Earthquake', 'Double Edge', 'Megahorn', 'Rock Blast'], ability: 'Lightning Rod' },
    ],
  },
  // Rival battles
  {
    routeSlug: 'cerulean-city', name: 'Rival', trainerClass: 'Rival',
    bossType: 'rival', levelCap: 18, displayOrder: 2,
    notes: 'Team varies by starter. Shown for Bulbasaur starter.',
    pokemon: [
      { pokemonDexId: 17, level: 17, slotOrder: 1, moves: ['Gust', 'Sand Attack', 'Quick Attack', 'Tackle'], ability: 'Keen Eye' },
      { pokemonDexId: 63, level: 16, slotOrder: 2, moves: ['Teleport'], ability: 'Synchronize' },
      { pokemonDexId: 19, level: 15, slotOrder: 3, moves: ['Tackle', 'Quick Attack', 'Hyper Fang', 'Focus Energy'], ability: 'Run Away' },
      { pokemonDexId: 5, level: 18, slotOrder: 4, moves: ['Metal Claw', 'Ember', 'Rage', 'Scratch'], ability: 'Blaze' },
    ],
  },
  {
    routeSlug: 'route-22', name: 'Rival', trainerClass: 'Rival',
    bossType: 'rival', levelCap: 53, displayOrder: 1,
    notes: 'Late-game rival battle before Victory Road. Team varies by starter.',
    pokemon: [
      { pokemonDexId: 18, level: 47, slotOrder: 1, moves: ['Aerial Ace', 'Feather Dance', 'Quick Attack', 'Whirlwind'], ability: 'Keen Eye' },
      { pokemonDexId: 112, level: 45, slotOrder: 2, moves: ['Earthquake', 'Take Down', 'Rock Tomb', 'Scary Face'], ability: 'Lightning Rod' },
      { pokemonDexId: 65, level: 47, slotOrder: 3, moves: ['Psychic', 'Future Sight', 'Reflect', 'Calm Mind'], ability: 'Synchronize' },
      { pokemonDexId: 130, level: 45, slotOrder: 4, moves: ['Hydro Pump', 'Dragon Dance', 'Bite', 'Thrash'], ability: 'Intimidate' },
      { pokemonDexId: 59, level: 45, slotOrder: 5, moves: ['Fire Blast', 'ExtremeSpeed', 'Bite', 'Roar'], ability: 'Intimidate' },
      { pokemonDexId: 6, level: 53, slotOrder: 6, moves: ['Fire Blast', 'Slash', 'Dragon Rage', 'Flamethrower'], ability: 'Blaze' },
    ],
  },
  // Elite Four 1: Lorelei
  {
    routeSlug: 'indigo-plateau', name: 'Lorelei', trainerClass: 'Elite Four',
    bossType: 'elite_four', levelCap: 54, displayOrder: 1,
    notes: 'Ice-type specialist. First of the Elite Four.',
    pokemon: [
      { pokemonDexId: 87, level: 52, slotOrder: 1, moves: ['Ice Beam', 'Surf', 'Hail', 'Safeguard'], ability: 'Thick Fat' },
      { pokemonDexId: 91, level: 51, slotOrder: 2, moves: ['Ice Beam', 'Surf', 'Hail', 'Supersonic'], ability: 'Shell Armor' },
      { pokemonDexId: 80, level: 52, slotOrder: 3, moves: ['Ice Beam', 'Surf', 'Yawn', 'Amnesia'], ability: 'Own Tempo' },
      { pokemonDexId: 124, level: 54, slotOrder: 4, moves: ['Ice Punch', 'Lovely Kiss', 'Attract', 'Double Slap'], ability: 'Oblivious' },
      { pokemonDexId: 131, level: 54, slotOrder: 5, moves: ['Ice Beam', 'Surf', 'Body Slam', 'Confuse Ray'], ability: 'Water Absorb' },
    ],
  },
  // Elite Four 2: Bruno
  {
    routeSlug: 'indigo-plateau', name: 'Bruno', trainerClass: 'Elite Four',
    bossType: 'elite_four', levelCap: 56, displayOrder: 2,
    notes: 'Fighting-type specialist. Second of the Elite Four.',
    pokemon: [
      { pokemonDexId: 95, level: 51, slotOrder: 1, moves: ['Earthquake', 'Rock Tomb', 'Iron Tail', 'Roar'], ability: 'Rock Head' },
      { pokemonDexId: 107, level: 53, slotOrder: 2, moves: ['Sky Uppercut', 'Mach Punch', 'Rock Tomb', 'Counter'], ability: 'Keen Eye' },
      { pokemonDexId: 106, level: 53, slotOrder: 3, moves: ['Mega Kick', 'Foresight', 'Brick Break', 'Facade'], ability: 'Limber' },
      { pokemonDexId: 95, level: 54, slotOrder: 4, moves: ['Earthquake', 'Double Edge', 'Iron Tail', 'Sand Tomb'], ability: 'Rock Head' },
      { pokemonDexId: 68, level: 56, slotOrder: 5, moves: ['Cross Chop', 'Bulk Up', 'Scary Face', 'Rock Tomb'], ability: 'Guts' },
    ],
  },
  // Elite Four 3: Agatha
  {
    routeSlug: 'indigo-plateau', name: 'Agatha', trainerClass: 'Elite Four',
    bossType: 'elite_four', levelCap: 58, displayOrder: 3,
    notes: 'Ghost-type specialist. Third of the Elite Four.',
    pokemon: [
      { pokemonDexId: 94, level: 54, slotOrder: 1, moves: ['Shadow Punch', 'Confuse Ray', 'Toxic', 'Double Team'], ability: 'Levitate' },
      { pokemonDexId: 42, level: 54, slotOrder: 2, moves: ['Confuse Ray', 'Air Cutter', 'Poison Fang', 'Bite'], ability: 'Inner Focus' },
      { pokemonDexId: 93, level: 53, slotOrder: 3, moves: ['Shadow Ball', 'Hypnosis', 'Dream Eater', 'Mean Look'], ability: 'Levitate' },
      { pokemonDexId: 24, level: 56, slotOrder: 4, moves: ['Sludge Bomb', 'Screech', 'Iron Tail', 'Bite'], ability: 'Intimidate' },
      { pokemonDexId: 94, level: 58, slotOrder: 5, moves: ['Shadow Ball', 'Sludge Bomb', 'Hypnosis', 'Nightmare'], ability: 'Levitate' },
    ],
  },
  // Elite Four 4: Lance
  {
    routeSlug: 'indigo-plateau', name: 'Lance', trainerClass: 'Elite Four',
    bossType: 'elite_four', levelCap: 60, displayOrder: 4,
    notes: 'Dragon-type specialist. Fourth of the Elite Four.',
    pokemon: [
      { pokemonDexId: 130, level: 56, slotOrder: 1, moves: ['Hyper Beam', 'Dragon Rage', 'Twister', 'Bite'], ability: 'Intimidate' },
      { pokemonDexId: 148, level: 54, slotOrder: 2, moves: ['Hyper Beam', 'Dragon Rage', 'Outrage', 'Thunder Wave'], ability: 'Shed Skin' },
      { pokemonDexId: 148, level: 54, slotOrder: 3, moves: ['Hyper Beam', 'Dragon Rage', 'Outrage', 'Safeguard'], ability: 'Shed Skin' },
      { pokemonDexId: 142, level: 58, slotOrder: 4, moves: ['Hyper Beam', 'Ancient Power', 'Wing Attack', 'Scary Face'], ability: 'Rock Head' },
      { pokemonDexId: 149, level: 60, slotOrder: 5, moves: ['Hyper Beam', 'Outrage', 'Wing Attack', 'Safeguard'], ability: 'Inner Focus' },
    ],
  },
  // Champion: Blue
  {
    routeSlug: 'indigo-plateau', name: 'Blue', trainerClass: 'Champion',
    bossType: 'champion', levelCap: 61, displayOrder: 5,
    notes: 'Champion\'s team varies by starter. This is the Squirtle starter version.',
    pokemon: [
      { pokemonDexId: 18, level: 59, slotOrder: 1, moves: ['Aerial Ace', 'Feather Dance', 'Sand Attack', 'Whirlwind'], ability: 'Keen Eye' },
      { pokemonDexId: 65, level: 57, slotOrder: 2, moves: ['Psychic', 'Future Sight', 'Reflect', 'Calm Mind'], ability: 'Synchronize' },
      { pokemonDexId: 112, level: 59, slotOrder: 3, moves: ['Earthquake', 'Take Down', 'Rock Tomb', 'Scary Face'], ability: 'Lightning Rod' },
      { pokemonDexId: 130, level: 58, slotOrder: 4, moves: ['Hyper Beam', 'Dragon Dance', 'Earthquake', 'Thrash'], ability: 'Intimidate' },
      { pokemonDexId: 59, level: 59, slotOrder: 5, moves: ['Fire Blast', 'ExtremeSpeed', 'Bite', 'Roar'], ability: 'Intimidate' },
      { pokemonDexId: 103, level: 61, slotOrder: 6, moves: ['Giga Drain', 'Sleep Powder', 'Egg Bomb', 'Light Screen'], ability: 'Chlorophyll' },
    ],
  },
];

const leafgreenConfig: GameConfig = {
  id: GAME_ID,
  slug: 'pokemon-leafgreen',
  name: 'Pokemon LeafGreen',
  generation: 3,
  region: 'Kanto',
  baseGameSlug: null,
  isRomhack: false,
  spriteUrl: 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/3.png',
  description: 'Pokemon LeafGreen Version for Game Boy Advance. A Gen 3 remake of the original Pokemon Green, set in the Kanto region.',
  pokeapiVersionName: 'leafgreen',
  routes,
  starters: {
    routeSlug: 'pallet-town',
    pokemon: [
      { dexId: 1, level: 5 },  // Bulbasaur
      { dexId: 4, level: 5 },  // Charmander
      { dexId: 7, level: 5 },  // Squirtle
    ],
  },
  bossTrainers,
};

export default leafgreenConfig;
