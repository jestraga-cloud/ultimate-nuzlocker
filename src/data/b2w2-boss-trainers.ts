// ===========================================
// POKEMON BLACK 2 & WHITE 2: BOSS TRAINER DATA
// ===========================================
// Source: Serebii.net / Bulbapedia (B2W2-specific teams, Normal Mode)
// These are the initial challenge teams (not Challenge Mode or rematch/post-game).
//
// NOTES:
// - B2W2 has a different gym leader lineup from the original BW:
//   Cheren (Normal) and Roxie (Poison) are NEW gym leaders replacing the
//   Striaton trio and Lenora respectively.
//   Brycen is no longer a gym leader; Marlon (Water) replaces him.
// - Drayden is the Gym 8 leader in BOTH Black 2 and White 2 (unlike BW).
// - The Elite Four roster is the same as BW, but with higher levels.
// - Iris is the Champion in BOTH Black 2 and White 2 (she was only a
//   gym leader in White; now she's Champion in both versions).
// - Cheren's Pokemon genuinely only know 3 moves each at these low levels.
//   The 4th move slot is empty.
// ===========================================

import type { BossTrainer } from "./platinum-boss-trainers";

// ===========================================
// GYM LEADERS (Black 2 & White 2)
// ===========================================

// --- Gym 1: Aspertia City (Basic Badge) ---

export const b2w2Cheren: BossTrainer = {
  name: "Cheren",
  trainerClass: "Gym Leader",
  bossType: "gym_leader",
  location: "Aspertia City",
  levelCap: 13,
  badge: "Basic Badge",
  notes:
    "NEW B2W2 gym leader. Specializes in Normal-type Pokemon. Was the player's rival in BW.",
  pokemon: [
    {
      dexId: 504, // Patrat
      species: "Patrat",
      level: 11,
      moves: ["Work Up", "Bite", "Tackle", "Detect"],
      ability: "Keen Eye",
      heldItem: null,
    },
    {
      dexId: 506, // Lillipup
      species: "Lillipup",
      level: 13,
      moves: ["Work Up", "Bite", "Tackle", "Helping Hand"],
      ability: "Vital Spirit",
      heldItem: null,
    },
  ],
};

// --- Gym 2: Virbank City (Toxic Badge) ---

export const b2w2Roxie: BossTrainer = {
  name: "Roxie",
  trainerClass: "Gym Leader",
  bossType: "gym_leader",
  location: "Virbank City",
  levelCap: 18,
  badge: "Toxic Badge",
  notes: "NEW B2W2 gym leader. Specializes in Poison-type Pokemon.",
  pokemon: [
    {
      dexId: 109, // Koffing
      species: "Koffing",
      level: 16,
      moves: ["Smog", "Assurance", "Tackle", "Clear Smog"],
      ability: "Levitate",
      heldItem: null,
    },
    {
      dexId: 544, // Whirlipede
      species: "Whirlipede",
      level: 18,
      moves: ["Venoshock", "Poison Sting", "Protect", "Pursuit"],
      ability: "Poison Point",
      heldItem: null,
    },
  ],
};

// --- Gym 3: Castelia City (Insect Badge) ---

export const b2w2Burgh: BossTrainer = {
  name: "Burgh",
  trainerClass: "Gym Leader",
  bossType: "gym_leader",
  location: "Castelia City",
  levelCap: 24,
  badge: "Insect Badge",
  notes:
    "Returning gym leader. Specializes in Bug-type Pokemon. Different team from BW.",
  pokemon: [
    {
      dexId: 541, // Swadloon
      species: "Swadloon",
      level: 22,
      moves: ["Struggle Bug", "Razor Leaf", "String Shot", "Protect"],
      ability: "Leaf Guard",
      heldItem: null,
    },
    {
      dexId: 557, // Dwebble
      species: "Dwebble",
      level: 22,
      moves: ["Struggle Bug", "Smack Down", "Faint Attack", "Rock Polish"],
      ability: "Sturdy",
      heldItem: null,
    },
    {
      dexId: 542, // Leavanny
      species: "Leavanny",
      level: 24,
      moves: ["Struggle Bug", "Razor Leaf", "Cut", "String Shot"],
      ability: "Swarm",
      heldItem: null,
    },
  ],
};

// --- Gym 4: Nimbasa City (Bolt Badge) ---

export const b2w2Elesa: BossTrainer = {
  name: "Elesa",
  trainerClass: "Gym Leader",
  bossType: "gym_leader",
  location: "Nimbasa City",
  levelCap: 30,
  badge: "Bolt Badge",
  notes:
    "Returning gym leader. Specializes in Electric-type Pokemon. Completely different team from BW (no double Emolga). Uses Volt Switch strategy.",
  pokemon: [
    {
      dexId: 587, // Emolga
      species: "Emolga",
      level: 28,
      moves: ["Volt Switch", "Quick Attack", "Pursuit", "Electro Ball"],
      ability: "Static",
      heldItem: null,
    },
    {
      dexId: 180, // Flaaffy
      species: "Flaaffy",
      level: 28,
      moves: ["Volt Switch", "Take Down", "Thunder Wave", "Electro Ball"],
      ability: "Static",
      heldItem: null,
    },
    {
      dexId: 523, // Zebstrika
      species: "Zebstrika",
      level: 30,
      moves: ["Volt Switch", "Flame Charge", "Quick Attack", "Pursuit"],
      ability: "Motor Drive",
      heldItem: null,
    },
  ],
};

// --- Gym 5: Driftveil City (Quake Badge) ---

export const b2w2Clay: BossTrainer = {
  name: "Clay",
  trainerClass: "Gym Leader",
  bossType: "gym_leader",
  location: "Driftveil City",
  levelCap: 33,
  badge: "Quake Badge",
  notes:
    "Returning gym leader. Specializes in Ground-type Pokemon. Different team from BW (Sandslash replaces Palpitoad).",
  pokemon: [
    {
      dexId: 552, // Krokorok
      species: "Krokorok",
      level: 31,
      moves: ["Bulldoze", "Crunch", "Sand Tomb", "Torment"],
      ability: "Intimidate",
      heldItem: null,
    },
    {
      dexId: 28, // Sandslash
      species: "Sandslash",
      level: 31,
      moves: ["Bulldoze", "Crush Claw", "Rollout", "Fury Cutter"],
      ability: "Sand Veil",
      heldItem: null,
    },
    {
      dexId: 530, // Excadrill
      species: "Excadrill",
      level: 33,
      moves: ["Bulldoze", "Metal Claw", "Slash", "Rock Slide"],
      ability: "Sand Force",
      heldItem: null,
    },
  ],
};

// --- Gym 6: Mistralton City (Jet Badge) ---

export const b2w2Skyla: BossTrainer = {
  name: "Skyla",
  trainerClass: "Gym Leader",
  bossType: "gym_leader",
  location: "Mistralton City",
  levelCap: 39,
  badge: "Jet Badge",
  notes:
    "Returning gym leader. Specializes in Flying-type Pokemon. Different team from BW (Skarmory replaces Unfezant).",
  pokemon: [
    {
      dexId: 528, // Swoobat
      species: "Swoobat",
      level: 37,
      moves: ["Acrobatics", "Heart Stamp", "Assurance", "Attract"],
      ability: "Unaware",
      heldItem: null,
    },
    {
      dexId: 227, // Skarmory
      species: "Skarmory",
      level: 37,
      moves: ["Air Cutter", "Steel Wing", "Fury Attack", "Agility"],
      ability: "Sturdy",
      heldItem: null,
    },
    {
      dexId: 581, // Swanna
      species: "Swanna",
      level: 39,
      moves: ["Air Slash", "BubbleBeam", "Roost", "FeatherDance"],
      ability: "Big Pecks",
      heldItem: null,
    },
  ],
};

// --- Gym 7: Opelucid City (Legend Badge) ---
// In B2W2, Drayden is the gym leader in BOTH versions.

export const b2w2Drayden: BossTrainer = {
  name: "Drayden",
  trainerClass: "Gym Leader",
  bossType: "gym_leader",
  location: "Opelucid City",
  levelCap: 48,
  badge: "Legend Badge",
  notes:
    "Returning gym leader. Specializes in Dragon-type Pokemon. Gym leader in BOTH B2 and W2 (unlike BW where Iris was the White version leader).",
  pokemon: [
    {
      dexId: 621, // Druddigon
      species: "Druddigon",
      level: 46,
      moves: ["Dragon Tail", "Revenge", "Slash", "Crunch"],
      ability: "Sheer Force",
      heldItem: null,
    },
    {
      dexId: 330, // Flygon
      species: "Flygon",
      level: 46,
      moves: ["Dragon Tail", "Crunch", "Earth Power", "Rock Slide"],
      ability: "Levitate",
      heldItem: null,
    },
    {
      dexId: 612, // Haxorus
      species: "Haxorus",
      level: 48,
      moves: ["Dragon Tail", "Slash", "Assurance", "Dragon Dance"],
      ability: "Mold Breaker",
      heldItem: null,
    },
  ],
};

// --- Gym 8: Humilau City (Wave Badge) ---

export const b2w2Marlon: BossTrainer = {
  name: "Marlon",
  trainerClass: "Gym Leader",
  bossType: "gym_leader",
  location: "Humilau City",
  levelCap: 51,
  badge: "Wave Badge",
  notes:
    "NEW B2W2 gym leader. Specializes in Water-type Pokemon. Replaces Brycen from BW.",
  pokemon: [
    {
      dexId: 565, // Carracosta
      species: "Carracosta",
      level: 49,
      moves: ["Scald", "Smack Down", "Crunch", "Shell Smash"],
      ability: "Sturdy",
      heldItem: null,
    },
    {
      dexId: 321, // Wailord
      species: "Wailord",
      level: 49,
      moves: ["Scald", "Rollout", "Bounce", "Amnesia"],
      ability: "Water Veil",
      heldItem: null,
    },
    {
      dexId: 593, // Jellicent
      species: "Jellicent",
      level: 51,
      moves: ["Scald", "Ominous Wind", "Brine", "Recover"],
      ability: "Cursed Body",
      heldItem: "Sitrus Berry",
    },
  ],
};

// ===========================================
// ELITE FOUR (Black 2 & White 2)
// ===========================================
// Same roster as BW but with higher levels and slightly adjusted movesets.
// The Elite Four can be challenged in any order, but levels are the same.

export const b2w2Shauntal: BossTrainer = {
  name: "Shauntal",
  trainerClass: "Elite Four",
  bossType: "elite_four",
  location: "Pokemon League",
  levelCap: 58,
  notes:
    "Specializes in Ghost-type Pokemon. Same roster as BW but higher levels and updated moves.",
  pokemon: [
    {
      dexId: 563, // Cofagrigus
      species: "Cofagrigus",
      level: 56,
      moves: ["Will-O-Wisp", "Grass Knot", "Psychic", "Shadow Ball"],
      ability: "Mummy",
      heldItem: null,
    },
    {
      dexId: 426, // Drifblim
      species: "Drifblim",
      level: 56,
      moves: ["Psychic", "Thunderbolt", "Acrobatics", "Shadow Ball"],
      ability: "Aftermath",
      heldItem: null,
    },
    {
      dexId: 623, // Golurk
      species: "Golurk",
      level: 56,
      moves: ["Heavy Slam", "Earthquake", "Brick Break", "Shadow Punch"],
      ability: "Iron Fist",
      heldItem: null,
    },
    {
      dexId: 609, // Chandelure
      species: "Chandelure",
      level: 58,
      moves: ["Energy Ball", "Fire Blast", "Psychic", "Shadow Ball"],
      ability: "Flame Body",
      heldItem: "Sitrus Berry",
    },
  ],
};

export const b2w2Marshal: BossTrainer = {
  name: "Marshal",
  trainerClass: "Elite Four",
  bossType: "elite_four",
  location: "Pokemon League",
  levelCap: 58,
  notes:
    "Specializes in Fighting-type Pokemon. Same roster as BW but higher levels and updated moves.",
  pokemon: [
    {
      dexId: 538, // Throh
      species: "Throh",
      level: 56,
      moves: ["Storm Throw", "Bulldoze", "Rock Tomb", "Payback"],
      ability: "Guts",
      heldItem: null,
    },
    {
      dexId: 539, // Sawk
      species: "Sawk",
      level: 56,
      moves: ["Brick Break", "Retaliate", "Rock Slide", "Payback"],
      ability: "Sturdy",
      heldItem: null,
    },
    {
      dexId: 620, // Mienshao
      species: "Mienshao",
      level: 56,
      moves: ["Hi Jump Kick", "U-turn", "Bounce", "Retaliate"],
      ability: "Regenerator",
      heldItem: null,
    },
    {
      dexId: 534, // Conkeldurr
      species: "Conkeldurr",
      level: 58,
      moves: ["Hammer Arm", "Bulk Up", "Stone Edge", "Retaliate"],
      ability: "Guts",
      heldItem: "Sitrus Berry",
    },
  ],
};

export const b2w2Grimsley: BossTrainer = {
  name: "Grimsley",
  trainerClass: "Elite Four",
  bossType: "elite_four",
  location: "Pokemon League",
  levelCap: 58,
  notes:
    "Specializes in Dark-type Pokemon. Same roster as BW but higher levels and updated moves.",
  pokemon: [
    {
      dexId: 510, // Liepard
      species: "Liepard",
      level: 56,
      moves: ["Night Slash", "Fake Out", "Aerial Ace", "Attract"],
      ability: "Limber",
      heldItem: null,
    },
    {
      dexId: 560, // Scrafty
      species: "Scrafty",
      level: 56,
      moves: ["Crunch", "Brick Break", "Poison Jab", "Rock Tomb"],
      ability: "Moxie",
      heldItem: null,
    },
    {
      dexId: 553, // Krookodile
      species: "Krookodile",
      level: 56,
      moves: ["Crunch", "Dragon Claw", "Earthquake", "Rock Tomb"],
      ability: "Intimidate",
      heldItem: null,
    },
    {
      dexId: 625, // Bisharp
      species: "Bisharp",
      level: 58,
      moves: ["Night Slash", "X-Scissor", "Metal Claw", "Aerial Ace"],
      ability: "Defiant",
      heldItem: "Sitrus Berry",
    },
  ],
};

export const b2w2Caitlin: BossTrainer = {
  name: "Caitlin",
  trainerClass: "Elite Four",
  bossType: "elite_four",
  location: "Pokemon League",
  levelCap: 58,
  notes:
    "Specializes in Psychic-type Pokemon. Same roster as BW but higher levels and updated moves.",
  pokemon: [
    {
      dexId: 518, // Musharna
      species: "Musharna",
      level: 56,
      moves: ["Charge Beam", "Dream Eater", "Yawn", "Reflect"],
      ability: "Synchronize",
      heldItem: null,
    },
    {
      dexId: 561, // Sigilyph
      species: "Sigilyph",
      level: 56,
      moves: ["Psychic", "Shadow Ball", "Ice Beam", "Air Slash"],
      ability: "Wonder Skin",
      heldItem: null,
    },
    {
      dexId: 579, // Reuniclus
      species: "Reuniclus",
      level: 56,
      moves: ["Psychic", "Energy Ball", "Focus Blast", "Recover"],
      ability: "Magic Guard",
      heldItem: null,
    },
    {
      dexId: 576, // Gothitelle
      species: "Gothitelle",
      level: 58,
      moves: ["Psychic", "Shadow Ball", "Thunderbolt", "Calm Mind"],
      ability: "Frisk",
      heldItem: "Sitrus Berry",
    },
  ],
};

// ===========================================
// CHAMPION (Black 2 & White 2)
// ===========================================
// Iris is the Champion in BOTH Black 2 and White 2.
// She was only the Opelucid Gym Leader in White (not Black).
// Now she has a full 6-Pokemon team as Champion.

export const b2w2Iris: BossTrainer = {
  name: "Iris",
  trainerClass: "Champion",
  bossType: "champion",
  location: "Pokemon League",
  levelCap: 59,
  notes:
    "Champion of both Black 2 and White 2. Was the Opelucid Gym Leader only in Pokemon White. Has a diverse team centered around Dragon-types with wide coverage.",
  pokemon: [
    {
      dexId: 635, // Hydreigon
      species: "Hydreigon",
      level: 57,
      moves: ["Flamethrower", "Charge Beam", "Dragon Pulse", "Surf"],
      ability: "Levitate",
      heldItem: null,
    },
    {
      dexId: 621, // Druddigon
      species: "Druddigon",
      level: 57,
      moves: ["Rock Slide", "Flamethrower", "Dragon Tail", "Focus Blast"],
      ability: "Sheer Force",
      heldItem: "Life Orb",
    },
    {
      dexId: 567, // Archeops
      species: "Archeops",
      level: 57,
      moves: ["Acrobatics", "Rock Slide", "Dragon Claw", "Endeavor"],
      ability: "Defeatist",
      heldItem: null,
    },
    {
      dexId: 306, // Aggron
      species: "Aggron",
      level: 57,
      moves: ["Earthquake", "Double-Edge", "Rock Slide", "Autotomize"],
      ability: "Rock Head",
      heldItem: null,
    },
    {
      dexId: 131, // Lapras
      species: "Lapras",
      level: 57,
      moves: ["Surf", "Ice Beam", "Thunderbolt", "Sing"],
      ability: "Water Absorb",
      heldItem: null,
    },
    {
      dexId: 612, // Haxorus
      species: "Haxorus",
      level: 59,
      moves: ["Earthquake", "X-Scissor", "Dual Chop", "Dragon Dance"],
      ability: "Mold Breaker",
      heldItem: "Focus Sash",
    },
  ],
};

// ===========================================
// ORDERED ARRAYS FOR EASY ITERATION
// ===========================================

/** All B2W2 Gym Leaders in order (same roster for both B2 and W2) */
export const b2w2GymLeaders: BossTrainer[] = [
  b2w2Cheren, // Gym 1
  b2w2Roxie, // Gym 2
  b2w2Burgh, // Gym 3
  b2w2Elesa, // Gym 4
  b2w2Clay, // Gym 5
  b2w2Skyla, // Gym 6
  b2w2Drayden, // Gym 7
  b2w2Marlon, // Gym 8
];

export const b2w2EliteFour: BossTrainer[] = [
  b2w2Shauntal,
  b2w2Marshal,
  b2w2Grimsley,
  b2w2Caitlin,
];

/** All boss trainers in progression order - same for both B2 and W2 */
export const b2w2AllBosses: BossTrainer[] = [
  ...b2w2GymLeaders,
  ...b2w2EliteFour,
  b2w2Iris,
];
