// ===========================================
// POKEMON OMEGA RUBY & ALPHA SAPPHIRE: BOSS TRAINER DATA
// ===========================================
// Source: Bulbapedia / Serebii (ORAS-specific teams)
// These are the initial challenge teams (not rematch/post-game).
//
// NOTES:
// - Wallace is the Gym 8 leader in BOTH Omega Ruby and Alpha Sapphire.
// - Steven Stone is the Champion in BOTH versions.
// - Steven's Metagross holds Metagrossite and Mega Evolves.
// - Tate & Liza fight as a Double Battle.
// - Some early-game Pokemon genuinely only know 3 moves in-game.
//   Empty strings are used for missing move slots.
// ===========================================

import type { BossTrainer } from "./platinum-boss-trainers";

// ===========================================
// GYM LEADERS (Omega Ruby & Alpha Sapphire)
// ===========================================

// --- Gym 1: Rustboro City (Stone Badge) ---

export const roxanne: BossTrainer = {
  name: "Roxanne",
  trainerClass: "Gym Leader",
  bossType: "gym_leader",
  location: "Rustboro City",
  levelCap: 14,
  badge: "Stone Badge",
  pokemon: [
    {
      dexId: 74,
      species: "Geodude",
      level: 12,
      moves: ["Tackle", "Defense Curl", "Rock Tomb", ""],
      ability: "Sturdy",
      heldItem: null,
    },
    {
      dexId: 299,
      species: "Nosepass",
      level: 14,
      moves: ["Tackle", "Harden", "Rock Tomb", ""],
      ability: "Magnet Pull",
      heldItem: null,
    },
  ],
};

// --- Gym 2: Dewford Town (Knuckle Badge) ---

export const brawly: BossTrainer = {
  name: "Brawly",
  trainerClass: "Gym Leader",
  bossType: "gym_leader",
  location: "Dewford Town",
  levelCap: 16,
  badge: "Knuckle Badge",
  pokemon: [
    {
      dexId: 66,
      species: "Machop",
      level: 14,
      moves: ["Leer", "Karate Chop", "Seismic Toss", "Bulk Up"],
      ability: "Guts",
      heldItem: null,
    },
    {
      dexId: 296,
      species: "Makuhita",
      level: 16,
      moves: ["Arm Thrust", "Knock Off", "Sand Attack", "Bulk Up"],
      ability: "Guts",
      heldItem: null,
    },
  ],
};

// --- Gym 3: Mauville City (Dynamo Badge) ---

export const wattson: BossTrainer = {
  name: "Wattson",
  trainerClass: "Gym Leader",
  bossType: "gym_leader",
  location: "Mauville City",
  levelCap: 21,
  badge: "Dynamo Badge",
  pokemon: [
    {
      dexId: 81,
      species: "Magnemite",
      level: 19,
      moves: ["Thunder Wave", "Tackle", "Volt Switch", ""],
      ability: "Sturdy",
      heldItem: null,
    },
    {
      dexId: 100,
      species: "Voltorb",
      level: 19,
      moves: ["Rollout", "Charge", "Volt Switch", ""],
      ability: "Soundproof",
      heldItem: null,
    },
    {
      dexId: 82,
      species: "Magneton",
      level: 21,
      moves: ["Supersonic", "Magnet Bomb", "Volt Switch", ""],
      ability: "Magnet Pull",
      heldItem: null,
    },
  ],
};

// --- Gym 4: Lavaridge Town (Heat Badge) ---

export const flannery: BossTrainer = {
  name: "Flannery",
  trainerClass: "Gym Leader",
  bossType: "gym_leader",
  location: "Lavaridge Town",
  levelCap: 28,
  badge: "Heat Badge",
  pokemon: [
    {
      dexId: 218,
      species: "Slugma",
      level: 26,
      moves: ["Overheat", "Rock Throw", "Light Screen", "Sunny Day"],
      ability: "Flame Body",
      heldItem: null,
    },
    {
      dexId: 322,
      species: "Numel",
      level: 26,
      moves: ["Earth Power", "Lava Plume", "Amnesia", "Sunny Day"],
      ability: "Simple",
      heldItem: null,
    },
    {
      dexId: 324,
      species: "Torkoal",
      level: 28,
      moves: ["Overheat", "Body Slam", "Curse", "Sunny Day"],
      ability: "White Smoke",
      heldItem: null,
    },
  ],
};

// --- Gym 5: Petalburg City (Balance Badge) ---

export const norman: BossTrainer = {
  name: "Norman",
  trainerClass: "Gym Leader",
  bossType: "gym_leader",
  location: "Petalburg City",
  levelCap: 31,
  badge: "Balance Badge",
  pokemon: [
    {
      dexId: 327,
      species: "Spinda",
      level: 27,
      moves: ["Teeter Dance", "Psybeam", "Facade", "Encore"],
      ability: "Own Tempo",
      heldItem: null,
    },
    {
      dexId: 288,
      species: "Vigoroth",
      level: 27,
      moves: ["Slash", "Facade", "Encore", "Feint Attack"],
      ability: "Vital Spirit",
      heldItem: null,
    },
    {
      dexId: 264,
      species: "Linoone",
      level: 29,
      moves: ["Slash", "Belly Drum", "Facade", "Headbutt"],
      ability: "Pickup",
      heldItem: null,
    },
    {
      dexId: 289,
      species: "Slaking",
      level: 31,
      moves: ["Counter", "Yawn", "Facade", "Feint Attack"],
      ability: "Truant",
      heldItem: "Sitrus Berry",
    },
  ],
};

// --- Gym 6: Fortree City (Feather Badge) ---

export const winona: BossTrainer = {
  name: "Winona",
  trainerClass: "Gym Leader",
  bossType: "gym_leader",
  location: "Fortree City",
  levelCap: 33,
  badge: "Feather Badge",
  pokemon: [
    {
      dexId: 277,
      species: "Swellow",
      level: 31,
      moves: ["Quick Attack", "Aerial Ace", "Double Team", "Endeavor"],
      ability: "Guts",
      heldItem: null,
    },
    {
      dexId: 279,
      species: "Pelipper",
      level: 30,
      moves: ["Water Gun", "Supersonic", "Protect", "Aerial Ace"],
      ability: "Keen Eye",
      heldItem: null,
    },
    {
      dexId: 227,
      species: "Skarmory",
      level: 32,
      moves: ["Sand Attack", "Fury Attack", "Steel Wing", "Aerial Ace"],
      ability: "Keen Eye",
      heldItem: null,
    },
    {
      dexId: 334,
      species: "Altaria",
      level: 33,
      moves: ["Earthquake", "Dragon Breath", "Dragon Dance", "Aerial Ace"],
      ability: "Natural Cure",
      heldItem: null,
    },
  ],
};

// --- Gym 7: Mossdeep City (Mind Badge) ---
// Double Battle format

export const tateAndLiza: BossTrainer = {
  name: "Tate & Liza",
  trainerClass: "Gym Leader",
  bossType: "gym_leader",
  location: "Mossdeep City",
  levelCap: 42,
  badge: "Mind Badge",
  notes: "Double Battle format.",
  pokemon: [
    {
      dexId: 344,
      species: "Claydol",
      level: 41,
      moves: ["Earthquake", "Ancient Power", "Psychic", "Light Screen"],
      ability: "Levitate",
      heldItem: null,
    },
    {
      dexId: 178,
      species: "Xatu",
      level: 41,
      moves: ["Psychic", "Sunny Day", "Confuse Ray", "Calm Mind"],
      ability: "Synchronize",
      heldItem: null,
    },
    {
      dexId: 337,
      species: "Lunatone",
      level: 42,
      moves: ["Light Screen", "Psychic", "Hypnosis", "Calm Mind"],
      ability: "Levitate",
      heldItem: "Sitrus Berry",
    },
    {
      dexId: 338,
      species: "Solrock",
      level: 42,
      moves: ["Sunny Day", "Solar Beam", "Psychic", "Flamethrower"],
      ability: "Levitate",
      heldItem: "Sitrus Berry",
    },
  ],
};

// --- Gym 8: Sootopolis City (Rain Badge) ---

export const wallace: BossTrainer = {
  name: "Wallace",
  trainerClass: "Gym Leader",
  bossType: "gym_leader",
  location: "Sootopolis City",
  levelCap: 46,
  badge: "Rain Badge",
  pokemon: [
    {
      dexId: 370,
      species: "Luvdisc",
      level: 44,
      moves: ["Draining Kiss", "Attract", "Sweet Kiss", "Water Pulse"],
      ability: "Swift Swim",
      heldItem: null,
    },
    {
      dexId: 340,
      species: "Whiscash",
      level: 44,
      moves: ["Earthquake", "Zen Headbutt", "Waterfall", "Mud Sport"],
      ability: "Oblivious",
      heldItem: null,
    },
    {
      dexId: 364,
      species: "Sealeo",
      level: 44,
      moves: ["Encore", "Waterfall", "Aurora Beam", "Body Slam"],
      ability: "Thick Fat",
      heldItem: null,
    },
    {
      dexId: 119,
      species: "Seaking",
      level: 44,
      moves: ["Waterfall", "Rain Dance", "Aqua Ring", "Horn Drill"],
      ability: "Swift Swim",
      heldItem: null,
    },
    {
      dexId: 350,
      species: "Milotic",
      level: 46,
      moves: ["Hydro Pump", "Recover", "Ice Beam", "Disarming Voice"],
      ability: "Marvel Scale",
      heldItem: null,
    },
  ],
};

// ===========================================
// ELITE FOUR (Omega Ruby & Alpha Sapphire)
// ===========================================

export const sidney: BossTrainer = {
  name: "Sidney",
  trainerClass: "Elite Four",
  bossType: "elite_four",
  location: "Pokemon League",
  levelCap: 52,
  pokemon: [
    {
      dexId: 262,
      species: "Mightyena",
      level: 50,
      moves: ["Swagger", "Take Down", "Sucker Punch", "Crunch"],
      ability: "Intimidate",
      heldItem: null,
    },
    {
      dexId: 275,
      species: "Shiftry",
      level: 50,
      moves: ["Fake Out", "Feint Attack", "Extrasensory", "Leaf Blade"],
      ability: "Chlorophyll",
      heldItem: null,
    },
    {
      dexId: 332,
      species: "Cacturne",
      level: 50,
      moves: ["Leech Seed", "Payback", "Needle Arm", "Spiky Shield"],
      ability: "Sand Veil",
      heldItem: null,
    },
    {
      dexId: 319,
      species: "Sharpedo",
      level: 50,
      moves: ["Crunch", "Poison Fang", "Aqua Jet", "Slash"],
      ability: "Rough Skin",
      heldItem: null,
    },
    {
      dexId: 359,
      species: "Absol",
      level: 52,
      moves: ["Aerial Ace", "Night Slash", "Psycho Cut", "Slash"],
      ability: "Super Luck",
      heldItem: null,
    },
  ],
};

export const phoebe: BossTrainer = {
  name: "Phoebe",
  trainerClass: "Elite Four",
  bossType: "elite_four",
  location: "Pokemon League",
  levelCap: 53,
  pokemon: [
    {
      dexId: 356,
      species: "Dusclops",
      level: 51,
      moves: ["Shadow Punch", "Confuse Ray", "Curse", "Future Sight"],
      ability: "Pressure",
      heldItem: null,
    },
    {
      dexId: 354,
      species: "Banette",
      level: 51,
      moves: ["Shadow Ball", "Spite", "Will-O-Wisp", "Feint Attack"],
      ability: "Insomnia",
      heldItem: null,
    },
    {
      dexId: 302,
      species: "Sableye",
      level: 51,
      moves: ["Shadow Claw", "Foul Play", "Power Gem", "Fake Out"],
      ability: "Prankster",
      heldItem: null,
    },
    {
      dexId: 354,
      species: "Banette",
      level: 51,
      moves: ["Shadow Ball", "Grudge", "Toxic", "Psychic"],
      ability: "Insomnia",
      heldItem: null,
    },
    {
      dexId: 477,
      species: "Dusknoir",
      level: 53,
      moves: ["Hex", "Fire Punch", "Ice Punch", "Thunder Punch"],
      ability: "Pressure",
      heldItem: null,
    },
  ],
};

export const glacia: BossTrainer = {
  name: "Glacia",
  trainerClass: "Elite Four",
  bossType: "elite_four",
  location: "Pokemon League",
  levelCap: 54,
  pokemon: [
    {
      dexId: 362,
      species: "Glalie",
      level: 52,
      moves: ["Light Screen", "Ice Shard", "Hail", "Crunch"],
      ability: "Inner Focus",
      heldItem: null,
    },
    {
      dexId: 478,
      species: "Froslass",
      level: 52,
      moves: ["Confuse Ray", "Blizzard", "Hail", "Ominous Wind"],
      ability: "Snow Cloak",
      heldItem: null,
    },
    {
      dexId: 362,
      species: "Glalie",
      level: 52,
      moves: ["Protect", "Ice Shard", "Hail", "Freeze-Dry"],
      ability: "Inner Focus",
      heldItem: null,
    },
    {
      dexId: 478,
      species: "Froslass",
      level: 52,
      moves: ["Draining Kiss", "Blizzard", "Hail", "Shadow Ball"],
      ability: "Snow Cloak",
      heldItem: null,
    },
    {
      dexId: 365,
      species: "Walrein",
      level: 54,
      moves: ["Surf", "Body Slam", "Blizzard", "Sheer Cold"],
      ability: "Thick Fat",
      heldItem: null,
    },
  ],
};

export const drake: BossTrainer = {
  name: "Drake",
  trainerClass: "Elite Four",
  bossType: "elite_four",
  location: "Pokemon League",
  levelCap: 55,
  pokemon: [
    {
      dexId: 334,
      species: "Altaria",
      level: 53,
      moves: ["Aerial Ace", "Cotton Guard", "Dragon Pulse", "Moonblast"],
      ability: "Natural Cure",
      heldItem: null,
    },
    {
      dexId: 330,
      species: "Flygon",
      level: 53,
      moves: ["Earthquake", "Dragon Claw", "Rock Slide", "Supersonic"],
      ability: "Levitate",
      heldItem: null,
    },
    {
      dexId: 230,
      species: "Kingdra",
      level: 53,
      moves: ["Dragon Pulse", "Surf", "Yawn", "Ice Beam"],
      ability: "Sniper",
      heldItem: null,
    },
    {
      dexId: 330,
      species: "Flygon",
      level: 53,
      moves: ["Flamethrower", "Boomburst", "Dragon Pulse", "Screech"],
      ability: "Levitate",
      heldItem: null,
    },
    {
      dexId: 373,
      species: "Salamence",
      level: 55,
      moves: ["Dragon Rush", "Zen Headbutt", "Crunch", "Thunder Fang"],
      ability: "Intimidate",
      heldItem: null,
    },
  ],
};

// ===========================================
// CHAMPION STEVEN (Omega Ruby & Alpha Sapphire)
// ===========================================

export const steven: BossTrainer = {
  name: "Steven",
  trainerClass: "Champion",
  bossType: "champion",
  location: "Pokemon League",
  levelCap: 59,
  notes: "Metagross Mega Evolves into Mega Metagross during battle.",
  pokemon: [
    {
      dexId: 227,
      species: "Skarmory",
      level: 57,
      moves: ["Toxic", "Aerial Ace", "Spikes", "Steel Wing"],
      ability: "Sturdy",
      heldItem: null,
    },
    {
      dexId: 344,
      species: "Claydol",
      level: 57,
      moves: ["Reflect", "Light Screen", "Extrasensory", "Earth Power"],
      ability: "Levitate",
      heldItem: null,
    },
    {
      dexId: 306,
      species: "Aggron",
      level: 57,
      moves: ["Stone Edge", "Earthquake", "Iron Tail", "Dragon Claw"],
      ability: "Sturdy",
      heldItem: null,
    },
    {
      dexId: 346,
      species: "Cradily",
      level: 57,
      moves: ["Giga Drain", "Ancient Power", "Sludge Bomb", "Confuse Ray"],
      ability: "Suction Cups",
      heldItem: null,
    },
    {
      dexId: 348,
      species: "Armaldo",
      level: 57,
      moves: ["X-Scissor", "Rock Blast", "Metal Claw", "Crush Claw"],
      ability: "Battle Armor",
      heldItem: null,
    },
    {
      dexId: 376,
      species: "Metagross",
      level: 59,
      moves: ["Meteor Mash", "Bullet Punch", "Zen Headbutt", "Giga Impact"],
      ability: "Clear Body",
      heldItem: "Metagrossite",
    },
  ],
};

// ===========================================
// ORDERED ARRAYS FOR EASY ITERATION
// ===========================================

export const orasGymLeaders: BossTrainer[] = [
  roxanne,
  brawly,
  wattson,
  flannery,
  norman,
  winona,
  tateAndLiza,
  wallace,
];

export const orasEliteFour: BossTrainer[] = [sidney, phoebe, glacia, drake];

export const orasChampion: BossTrainer = steven;

/** All boss trainers in progression order */
export const orasAllBosses: BossTrainer[] = [
  ...orasGymLeaders,
  ...orasEliteFour,
  steven,
];
