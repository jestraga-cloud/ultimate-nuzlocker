// ===========================================
// POKEMON X & Y: BOSS TRAINER DATA
// ===========================================
// Source: Bulbapedia / Serebii (X/Y-specific teams)
// These are the initial challenge teams (not rematch/post-game).
//
// NOTES:
// - Some early-game Pokemon genuinely only know 3 moves in-game.
//   Empty strings are used for missing move slots.
// - Diantha's Gardevoir holds Gardevoirite and Mega Evolves.
// ===========================================

import type { BossTrainer } from "./platinum-boss-trainers";

// ===========================================
// GYM LEADERS (X & Y)
// ===========================================

// --- Gym 1: Santalune City (Bug Badge) ---

export const viola: BossTrainer = {
  name: "Viola",
  trainerClass: "Gym Leader",
  bossType: "gym_leader",
  location: "Santalune City",
  levelCap: 12,
  badge: "Bug Badge",
  pokemon: [
    {
      dexId: 283,
      species: "Surskit",
      level: 10,
      moves: ["Quick Attack", "Bubble", "Water Sport", ""],
      ability: "Swift Swim",
      heldItem: null,
    },
    {
      dexId: 666,
      species: "Vivillon",
      level: 12,
      moves: ["Tackle", "Infestation", "Harden", ""],
      ability: "Shield Dust",
      heldItem: null,
    },
  ],
};

// --- Gym 2: Cyllage City (Cliff Badge) ---

export const grant: BossTrainer = {
  name: "Grant",
  trainerClass: "Gym Leader",
  bossType: "gym_leader",
  location: "Cyllage City",
  levelCap: 25,
  badge: "Cliff Badge",
  pokemon: [
    {
      dexId: 698,
      species: "Amaura",
      level: 25,
      moves: ["Aurora Beam", "Rock Tomb", "Thunder Wave", "Take Down"],
      ability: "Refrigerate",
      heldItem: null,
    },
    {
      dexId: 696,
      species: "Tyrunt",
      level: 25,
      moves: ["Rock Tomb", "Bite", "Stomp", ""],
      ability: "Strong Jaw",
      heldItem: null,
    },
  ],
};

// --- Gym 3: Shalour City (Rumble Badge) ---

export const korrina: BossTrainer = {
  name: "Korrina",
  trainerClass: "Gym Leader",
  bossType: "gym_leader",
  location: "Shalour City",
  levelCap: 32,
  badge: "Rumble Badge",
  pokemon: [
    {
      dexId: 619,
      species: "Mienfoo",
      level: 29,
      moves: ["Power-Up Punch", "Fake Out", "Double Slap", ""],
      ability: "Regenerator",
      heldItem: null,
    },
    {
      dexId: 67,
      species: "Machoke",
      level: 28,
      moves: ["Power-Up Punch", "Rock Tomb", "Leer", ""],
      ability: "Guts",
      heldItem: null,
    },
    {
      dexId: 701,
      species: "Hawlucha",
      level: 32,
      moves: ["Flying Press", "Hone Claws", "Power-Up Punch", ""],
      ability: "Unburden",
      heldItem: null,
    },
  ],
};

// --- Gym 4: Coumarine City (Plant Badge) ---

export const ramos: BossTrainer = {
  name: "Ramos",
  trainerClass: "Gym Leader",
  bossType: "gym_leader",
  location: "Coumarine City",
  levelCap: 34,
  badge: "Plant Badge",
  pokemon: [
    {
      dexId: 189,
      species: "Jumpluff",
      level: 30,
      moves: ["Grass Knot", "Acrobatics", "Leech Seed", ""],
      ability: "Chlorophyll",
      heldItem: null,
    },
    {
      dexId: 70,
      species: "Weepinbell",
      level: 31,
      moves: ["Grass Knot", "Acid", "Poison Powder", "Gastro Acid"],
      ability: "Chlorophyll",
      heldItem: null,
    },
    {
      dexId: 673,
      species: "Gogoat",
      level: 34,
      moves: ["Grass Knot", "Bulldoze", "Take Down", ""],
      ability: "Sap Sipper",
      heldItem: null,
    },
  ],
};

// --- Gym 5: Lumiose City (Voltage Badge) ---

export const clemont: BossTrainer = {
  name: "Clemont",
  trainerClass: "Gym Leader",
  bossType: "gym_leader",
  location: "Lumiose City",
  levelCap: 37,
  badge: "Voltage Badge",
  pokemon: [
    {
      dexId: 587,
      species: "Emolga",
      level: 35,
      moves: ["Volt Switch", "Quick Attack", "Aerial Ace", ""],
      ability: "Static",
      heldItem: null,
    },
    {
      dexId: 82,
      species: "Magneton",
      level: 35,
      moves: ["Thunderbolt", "Electric Terrain", "Mirror Shot", ""],
      ability: "Sturdy",
      heldItem: null,
    },
    {
      dexId: 695,
      species: "Heliolisk",
      level: 37,
      moves: ["Thunderbolt", "Quick Attack", "Grass Knot", ""],
      ability: "Dry Skin",
      heldItem: null,
    },
  ],
};

// --- Gym 6: Laverre City (Fairy Badge) ---

export const valerie: BossTrainer = {
  name: "Valerie",
  trainerClass: "Gym Leader",
  bossType: "gym_leader",
  location: "Laverre City",
  levelCap: 42,
  badge: "Fairy Badge",
  pokemon: [
    {
      dexId: 303,
      species: "Mawile",
      level: 38,
      moves: ["Feint Attack", "Crunch", "Iron Defense", ""],
      ability: "Hyper Cutter",
      heldItem: null,
    },
    {
      dexId: 122,
      species: "Mr. Mime",
      level: 39,
      moves: ["Light Screen", "Reflect", "Psychic", "Dazzling Gleam"],
      ability: "Soundproof",
      heldItem: null,
    },
    {
      dexId: 700,
      species: "Sylveon",
      level: 42,
      moves: ["Dazzling Gleam", "Quick Attack", "Swift", "Charm"],
      ability: "Cute Charm",
      heldItem: null,
    },
  ],
};

// --- Gym 7: Anistar City (Psychic Badge) ---

export const olympia: BossTrainer = {
  name: "Olympia",
  trainerClass: "Gym Leader",
  bossType: "gym_leader",
  location: "Anistar City",
  levelCap: 48,
  badge: "Psychic Badge",
  pokemon: [
    {
      dexId: 561,
      species: "Sigilyph",
      level: 44,
      moves: ["Psychic", "Air Slash", "Light Screen", "Reflect"],
      ability: "Magic Guard",
      heldItem: null,
    },
    {
      dexId: 199,
      species: "Slowking",
      level: 45,
      moves: ["Psychic", "Calm Mind", "Power Gem", "Yawn"],
      ability: "Oblivious",
      heldItem: null,
    },
    {
      dexId: 678,
      species: "Meowstic",
      level: 48,
      moves: ["Psychic", "Calm Mind", "Fake Out", "Shadow Ball"],
      ability: "Infiltrator",
      heldItem: null,
    },
  ],
};

// --- Gym 8: Snowbelle City (Iceberg Badge) ---

export const wulfric: BossTrainer = {
  name: "Wulfric",
  trainerClass: "Gym Leader",
  bossType: "gym_leader",
  location: "Snowbelle City",
  levelCap: 59,
  badge: "Iceberg Badge",
  pokemon: [
    {
      dexId: 460,
      species: "Abomasnow",
      level: 56,
      moves: ["Ice Beam", "Ice Shard", "Energy Ball", ""],
      ability: "Snow Warning",
      heldItem: null,
    },
    {
      dexId: 615,
      species: "Cryogonal",
      level: 55,
      moves: ["Ice Beam", "Confuse Ray", "Flash Cannon", "Hail"],
      ability: "Levitate",
      heldItem: null,
    },
    {
      dexId: 713,
      species: "Avalugg",
      level: 59,
      moves: ["Avalanche", "Crunch", "Curse", "Gyro Ball"],
      ability: "Ice Body",
      heldItem: null,
    },
  ],
};

// ===========================================
// ELITE FOUR (X & Y)
// ===========================================

export const malva: BossTrainer = {
  name: "Malva",
  trainerClass: "Elite Four",
  bossType: "elite_four",
  location: "Pokemon League",
  levelCap: 65,
  pokemon: [
    {
      dexId: 668,
      species: "Pyroar",
      level: 63,
      moves: ["Hyper Voice", "Noble Roar", "Flamethrower", "Wild Charge"],
      ability: "Rivalry",
      heldItem: null,
    },
    {
      dexId: 324,
      species: "Torkoal",
      level: 63,
      moves: ["Curse", "Flame Wheel", "Stone Edge", "Earthquake"],
      ability: "White Smoke",
      heldItem: null,
    },
    {
      dexId: 609,
      species: "Chandelure",
      level: 63,
      moves: ["Flamethrower", "Confuse Ray", "Confide", "Shadow Ball"],
      ability: "Flame Body",
      heldItem: null,
    },
    {
      dexId: 663,
      species: "Talonflame",
      level: 65,
      moves: ["Quick Attack", "Brave Bird", "Flare Blitz", "Flail"],
      ability: "Flame Body",
      heldItem: null,
    },
  ],
};

export const siebold: BossTrainer = {
  name: "Siebold",
  trainerClass: "Elite Four",
  bossType: "elite_four",
  location: "Pokemon League",
  levelCap: 65,
  pokemon: [
    {
      dexId: 693,
      species: "Clawitzer",
      level: 63,
      moves: ["Dragon Pulse", "Water Pulse", "Aura Sphere", "Dark Pulse"],
      ability: "Mega Launcher",
      heldItem: null,
    },
    {
      dexId: 121,
      species: "Starmie",
      level: 63,
      moves: ["Psychic", "Light Screen", "Surf", "Dazzling Gleam"],
      ability: "Illuminate",
      heldItem: null,
    },
    {
      dexId: 130,
      species: "Gyarados",
      level: 63,
      moves: ["Waterfall", "Ice Fang", "Dragon Dance", "Earthquake"],
      ability: "Intimidate",
      heldItem: null,
    },
    {
      dexId: 689,
      species: "Barbaracle",
      level: 65,
      moves: ["Stone Edge", "Razor Shell", "Cross Chop", "X-Scissor"],
      ability: "Tough Claws",
      heldItem: null,
    },
  ],
};

export const wikstrom: BossTrainer = {
  name: "Wikstrom",
  trainerClass: "Elite Four",
  bossType: "elite_four",
  location: "Pokemon League",
  levelCap: 65,
  pokemon: [
    {
      dexId: 707,
      species: "Klefki",
      level: 63,
      moves: ["Spikes", "Torment", "Dazzling Gleam", "Flash Cannon"],
      ability: "Prankster",
      heldItem: null,
    },
    {
      dexId: 476,
      species: "Probopass",
      level: 63,
      moves: ["Power Gem", "Earth Power", "Flash Cannon", "Discharge"],
      ability: "Sturdy",
      heldItem: null,
    },
    {
      dexId: 212,
      species: "Scizor",
      level: 63,
      moves: ["X-Scissor", "Iron Head", "Bullet Punch", "Night Slash"],
      ability: "Technician",
      heldItem: null,
    },
    {
      dexId: 681,
      species: "Aegislash",
      level: 65,
      moves: ["Sacred Sword", "Iron Head", "King's Shield", "Shadow Claw"],
      ability: "Stance Change",
      heldItem: null,
    },
  ],
};

export const drasna: BossTrainer = {
  name: "Drasna",
  trainerClass: "Elite Four",
  bossType: "elite_four",
  location: "Pokemon League",
  levelCap: 65,
  pokemon: [
    {
      dexId: 691,
      species: "Dragalge",
      level: 63,
      moves: ["Sludge Bomb", "Surf", "Thunderbolt", "Dragon Pulse"],
      ability: "Poison Point",
      heldItem: null,
    },
    {
      dexId: 334,
      species: "Altaria",
      level: 63,
      moves: ["Dragon Pulse", "Moonblast", "Sing", "Cotton Guard"],
      ability: "Natural Cure",
      heldItem: null,
    },
    {
      dexId: 621,
      species: "Druddigon",
      level: 63,
      moves: ["Dragon Tail", "Revenge", "Retaliate", "Chip Away"],
      ability: "Rough Skin",
      heldItem: null,
    },
    {
      dexId: 715,
      species: "Noivern",
      level: 65,
      moves: ["Flamethrower", "Boomburst", "Air Slash", "Dragon Pulse"],
      ability: "Frisk",
      heldItem: null,
    },
  ],
};

// ===========================================
// CHAMPION DIANTHA (X & Y)
// ===========================================

export const diantha: BossTrainer = {
  name: "Diantha",
  trainerClass: "Champion",
  bossType: "champion",
  location: "Pokemon League",
  levelCap: 68,
  pokemon: [
    {
      dexId: 701,
      species: "Hawlucha",
      level: 64,
      moves: ["Poison Jab", "Flying Press", "Swords Dance", "X-Scissor"],
      ability: "Limber",
      heldItem: null,
    },
    {
      dexId: 697,
      species: "Tyrantrum",
      level: 65,
      moves: ["Head Smash", "Dragon Claw", "Earthquake", "Crunch"],
      ability: "Strong Jaw",
      heldItem: null,
    },
    {
      dexId: 699,
      species: "Aurorus",
      level: 65,
      moves: ["Thunder", "Blizzard", "Reflect", "Light Screen"],
      ability: "Refrigerate",
      heldItem: null,
    },
    {
      dexId: 711,
      species: "Gourgeist",
      level: 65,
      moves: ["Trick-or-Treat", "Phantom Force", "Seed Bomb", "Shadow Sneak"],
      ability: "Pickup",
      heldItem: null,
    },
    {
      dexId: 706,
      species: "Goodra",
      level: 66,
      moves: ["Focus Blast", "Dragon Pulse", "Fire Blast", "Muddy Water"],
      ability: "Sap Sipper",
      heldItem: null,
    },
    {
      dexId: 282,
      species: "Gardevoir",
      level: 68,
      moves: ["Thunderbolt", "Moonblast", "Psychic", "Shadow Ball"],
      ability: "Synchronize",
      heldItem: "Gardevoirite",
    },
  ],
};

// ===========================================
// ORDERED ARRAYS FOR EASY ITERATION
// ===========================================

export const xyGymLeaders: BossTrainer[] = [
  viola,
  grant,
  korrina,
  ramos,
  clemont,
  valerie,
  olympia,
  wulfric,
];

export const xyEliteFour: BossTrainer[] = [malva, siebold, wikstrom, drasna];

export const xyChampion: BossTrainer = diantha;

/** All boss trainers in progression order */
export const xyAllBosses: BossTrainer[] = [
  ...xyGymLeaders,
  ...xyEliteFour,
  diantha,
];
