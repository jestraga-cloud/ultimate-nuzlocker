// ===========================================
// POKEMON BLACK & WHITE: BOSS TRAINER DATA
// ===========================================
// Source: Bulbapedia (Black/White-specific teams)
// These are the initial challenge teams (not rematch/post-game).
//
// NOTES:
// - Striaton City has 3 possible gym leaders based on starter choice:
//   Cilan (Grass) if you pick Oshawott, Chili (Fire) if you pick Snivy,
//   Cress (Water) if you pick Tepig.
// - Opelucid City Gym Leader differs by version:
//   Drayden in Black, Iris in White. Both included.
// - N's legendary differs by version:
//   Zekrom in Black, Reshiram in White. Both variants included.
// - The Striaton Gym Pokemon genuinely only know 2 moves each in-game.
// ===========================================

import type { BossTrainer } from "./platinum-boss-trainers";

// ===========================================
// GYM LEADERS (Black & White)
// ===========================================

// --- Gym 1: Striaton City (Trio Badge) ---
// Player faces one of three leaders based on starter choice.

/** Cilan - fought if player chose Oshawott */
export const cilan: BossTrainer = {
  name: "Cilan",
  trainerClass: "Gym Leader",
  bossType: "gym_leader",
  location: "Striaton City",
  levelCap: 14,
  badge: "Trio Badge",
  notes:
    "Fought if player chose Oshawott. Specializes in Grass-type Pokemon.",
  pokemon: [
    {
      dexId: 506,
      species: "Lillipup",
      level: 12,
      moves: ["Bite", "Work Up", "", ""],
      ability: "Pickup",
      heldItem: null,
    },
    {
      dexId: 511,
      species: "Pansage",
      level: 14,
      moves: ["Vine Whip", "Work Up", "", ""],
      ability: "Gluttony",
      heldItem: null,
    },
  ],
};

/** Chili - fought if player chose Snivy */
export const chili: BossTrainer = {
  name: "Chili",
  trainerClass: "Gym Leader",
  bossType: "gym_leader",
  location: "Striaton City",
  levelCap: 14,
  badge: "Trio Badge",
  notes: "Fought if player chose Snivy. Specializes in Fire-type Pokemon.",
  pokemon: [
    {
      dexId: 506,
      species: "Lillipup",
      level: 12,
      moves: ["Bite", "Work Up", "", ""],
      ability: "Pickup",
      heldItem: null,
    },
    {
      dexId: 513,
      species: "Pansear",
      level: 14,
      moves: ["Incinerate", "Work Up", "", ""],
      ability: "Gluttony",
      heldItem: null,
    },
  ],
};

/** Cress - fought if player chose Tepig */
export const cress: BossTrainer = {
  name: "Cress",
  trainerClass: "Gym Leader",
  bossType: "gym_leader",
  location: "Striaton City",
  levelCap: 14,
  badge: "Trio Badge",
  notes: "Fought if player chose Tepig. Specializes in Water-type Pokemon.",
  pokemon: [
    {
      dexId: 506,
      species: "Lillipup",
      level: 12,
      moves: ["Bite", "Work Up", "", ""],
      ability: "Pickup",
      heldItem: null,
    },
    {
      dexId: 515,
      species: "Panpour",
      level: 14,
      moves: ["Water Gun", "Work Up", "", ""],
      ability: "Gluttony",
      heldItem: null,
    },
  ],
};

// --- Gym 2: Nacrene City (Basic Badge) ---

export const lenora: BossTrainer = {
  name: "Lenora",
  trainerClass: "Gym Leader",
  bossType: "gym_leader",
  location: "Nacrene City",
  levelCap: 20,
  badge: "Basic Badge",
  notes: "Specializes in Normal-type Pokemon.",
  pokemon: [
    {
      dexId: 507,
      species: "Herdier",
      level: 18,
      moves: ["Take Down", "Bite", "Retaliate", "Leer"],
      ability: "Intimidate",
      heldItem: null,
    },
    {
      dexId: 505,
      species: "Watchog",
      level: 20,
      moves: ["Leer", "Crunch", "Retaliate", "Hypnosis"],
      ability: "Illuminate",
      heldItem: null,
    },
  ],
};

// --- Gym 3: Castelia City (Insect Badge) ---

export const burgh: BossTrainer = {
  name: "Burgh",
  trainerClass: "Gym Leader",
  bossType: "gym_leader",
  location: "Castelia City",
  levelCap: 23,
  badge: "Insect Badge",
  notes: "Specializes in Bug-type Pokemon.",
  pokemon: [
    {
      dexId: 544,
      species: "Whirlipede",
      level: 21,
      moves: ["Screech", "Pursuit", "Poison Tail", "Struggle Bug"],
      ability: "Swarm",
      heldItem: null,
    },
    {
      dexId: 557,
      species: "Dwebble",
      level: 21,
      moves: ["Sand-Attack", "Faint Attack", "Smack Down", "Struggle Bug"],
      ability: "Shell Armor",
      heldItem: null,
    },
    {
      dexId: 542,
      species: "Leavanny",
      level: 23,
      moves: ["Protect", "String Shot", "Razor Leaf", "Struggle Bug"],
      ability: "Swarm",
      heldItem: null,
    },
  ],
};

// --- Gym 4: Nimbasa City (Bolt Badge) ---

export const elesa: BossTrainer = {
  name: "Elesa",
  trainerClass: "Gym Leader",
  bossType: "gym_leader",
  location: "Nimbasa City",
  levelCap: 27,
  badge: "Bolt Badge",
  notes:
    "Specializes in Electric-type Pokemon. Uses Volt Switch strategy to pivot between her two Emolga and Zebstrika.",
  pokemon: [
    {
      dexId: 587,
      species: "Emolga",
      level: 25,
      moves: ["Quick Attack", "Pursuit", "Aerial Ace", "Volt Switch"],
      ability: "Static",
      heldItem: null,
    },
    {
      dexId: 587,
      species: "Emolga",
      level: 25,
      moves: ["Quick Attack", "Pursuit", "Aerial Ace", "Volt Switch"],
      ability: "Static",
      heldItem: null,
    },
    {
      dexId: 523,
      species: "Zebstrika",
      level: 27,
      moves: ["Quick Attack", "Flame Charge", "Spark", "Volt Switch"],
      ability: "Lightningrod",
      heldItem: null,
    },
  ],
};

// --- Gym 5: Driftveil City (Quake Badge) ---

export const clay: BossTrainer = {
  name: "Clay",
  trainerClass: "Gym Leader",
  bossType: "gym_leader",
  location: "Driftveil City",
  levelCap: 31,
  badge: "Quake Badge",
  notes: "Specializes in Ground-type Pokemon.",
  pokemon: [
    {
      dexId: 552,
      species: "Krokorok",
      level: 29,
      moves: ["Swagger", "Torment", "Crunch", "Bulldoze"],
      ability: "Moxie",
      heldItem: null,
    },
    {
      dexId: 536,
      species: "Palpitoad",
      level: 29,
      moves: ["Aqua Ring", "BubbleBeam", "Muddy Water", "Bulldoze"],
      ability: "Swift Swim",
      heldItem: null,
    },
    {
      dexId: 530,
      species: "Excadrill",
      level: 31,
      moves: ["Hone Claws", "Slash", "Rock Slide", "Bulldoze"],
      ability: "Sand Rush",
      heldItem: null,
    },
  ],
};

// --- Gym 6: Mistralton City (Jet Badge) ---

export const skyla: BossTrainer = {
  name: "Skyla",
  trainerClass: "Gym Leader",
  bossType: "gym_leader",
  location: "Mistralton City",
  levelCap: 35,
  badge: "Jet Badge",
  notes: "Specializes in Flying-type Pokemon.",
  pokemon: [
    {
      dexId: 528,
      species: "Swoobat",
      level: 33,
      moves: ["Acrobatics", "Amnesia", "Assurance", "Heart Stamp"],
      ability: "Unaware",
      heldItem: null,
    },
    {
      dexId: 521,
      species: "Unfezant",
      level: 33,
      moves: ["Leer", "Quick Attack", "Air Slash", "Razor Wind"],
      ability: "Big Pecks",
      heldItem: null,
    },
    {
      dexId: 581,
      species: "Swanna",
      level: 35,
      moves: ["Aqua Ring", "Aerial Ace", "BubbleBeam", "Air Slash"],
      ability: "Keen Eye",
      heldItem: null,
    },
  ],
};

// --- Gym 7: Icirrus City (Freeze Badge) ---

export const brycen: BossTrainer = {
  name: "Brycen",
  trainerClass: "Gym Leader",
  bossType: "gym_leader",
  location: "Icirrus City",
  levelCap: 39,
  badge: "Freeze Badge",
  notes: "Specializes in Ice-type Pokemon.",
  pokemon: [
    {
      dexId: 583,
      species: "Vanillish",
      level: 37,
      moves: ["Acid Armor", "Astonish", "Mirror Shot", "Frost Breath"],
      ability: "Ice Body",
      heldItem: null,
    },
    {
      dexId: 615,
      species: "Cryogonal",
      level: 37,
      moves: ["Reflect", "Rapid Spin", "Aurora Beam", "Frost Breath"],
      ability: "Levitate",
      heldItem: null,
    },
    {
      dexId: 614,
      species: "Beartic",
      level: 39,
      moves: ["Swagger", "Brine", "Slash", "Icicle Crash"],
      ability: "Snow Cloak",
      heldItem: null,
    },
  ],
};

// --- Gym 8: Opelucid City (Legend Badge) ---
// Drayden is the gym leader in Black, Iris in White.
// Their teams have the same species and levels but different genders and abilities.

/** Drayden - Gym 8 leader in Pokemon Black */
export const drayden: BossTrainer = {
  name: "Drayden",
  trainerClass: "Gym Leader",
  bossType: "gym_leader",
  location: "Opelucid City",
  levelCap: 43,
  badge: "Legend Badge",
  notes:
    "Gym 8 leader in Pokemon Black. Specializes in Dragon-type Pokemon.",
  pokemon: [
    {
      dexId: 611,
      species: "Fraxure",
      level: 41,
      moves: ["Dragon Dance", "Dragon Rage", "Assurance", "Dragon Tail"],
      ability: "Rivalry",
      heldItem: null,
    },
    {
      dexId: 621,
      species: "Druddigon",
      level: 41,
      moves: ["Revenge", "Chip Away", "Night Slash", "Dragon Tail"],
      ability: "Rough Skin",
      heldItem: null,
    },
    {
      dexId: 612,
      species: "Haxorus",
      level: 43,
      moves: ["Dragon Dance", "Assurance", "Slash", "Dragon Tail"],
      ability: "Rivalry",
      heldItem: null,
    },
  ],
};

/** Iris - Gym 8 leader in Pokemon White */
export const iris: BossTrainer = {
  name: "Iris",
  trainerClass: "Gym Leader",
  bossType: "gym_leader",
  location: "Opelucid City",
  levelCap: 43,
  badge: "Legend Badge",
  notes:
    "Gym 8 leader in Pokemon White. Specializes in Dragon-type Pokemon. Same species/levels as Drayden but different abilities.",
  pokemon: [
    {
      dexId: 611,
      species: "Fraxure",
      level: 41,
      moves: ["Dragon Tail", "Dragon Dance", "Assurance", "Dragon Rage"],
      ability: "Rivalry",
      heldItem: null,
    },
    {
      dexId: 621,
      species: "Druddigon",
      level: 41,
      moves: ["Dragon Tail", "Revenge", "Night Slash", "Chip Away"],
      ability: "Sheer Force",
      heldItem: null,
    },
    {
      dexId: 612,
      species: "Haxorus",
      level: 43,
      moves: ["Dragon Tail", "Dragon Dance", "Slash", "Assurance"],
      ability: "Mold Breaker",
      heldItem: null,
    },
  ],
};

// ===========================================
// ELITE FOUR (Black & White)
// ===========================================
// The Elite Four can be challenged in any order, but levels are the same.

export const shauntal: BossTrainer = {
  name: "Shauntal",
  trainerClass: "Elite Four",
  bossType: "elite_four",
  location: "Pokemon League",
  levelCap: 50,
  notes: "Specializes in Ghost-type Pokemon.",
  pokemon: [
    {
      dexId: 563,
      species: "Cofagrigus",
      level: 48,
      moves: ["Psychic", "Will-O-Wisp", "Shadow Ball", "Grass Knot"],
      ability: "Mummy",
      heldItem: null,
    },
    {
      dexId: 593,
      species: "Jellicent",
      level: 48,
      moves: ["Shadow Ball", "Surf", "Energy Ball", "Brine"],
      ability: "Cursed Body",
      heldItem: null,
    },
    {
      dexId: 623,
      species: "Golurk",
      level: 48,
      moves: ["Curse", "Brick Break", "Earthquake", "Shadow Punch"],
      ability: "Iron Fist",
      heldItem: null,
    },
    {
      dexId: 609,
      species: "Chandelure",
      level: 50,
      moves: ["Fire Blast", "Psychic", "Shadow Ball", "Payback"],
      ability: "Flame Body",
      heldItem: null,
    },
  ],
};

export const marshal: BossTrainer = {
  name: "Marshal",
  trainerClass: "Elite Four",
  bossType: "elite_four",
  location: "Pokemon League",
  levelCap: 50,
  notes: "Specializes in Fighting-type Pokemon.",
  pokemon: [
    {
      dexId: 538,
      species: "Throh",
      level: 48,
      moves: ["Storm Throw", "Payback", "Bulldoze", "Stone Edge"],
      ability: "Guts",
      heldItem: null,
    },
    {
      dexId: 539,
      species: "Sawk",
      level: 48,
      moves: ["Karate Chop", "Grass Knot", "Retaliate", "Stone Edge"],
      ability: "Sturdy",
      heldItem: null,
    },
    {
      dexId: 534,
      species: "Conkeldurr",
      level: 48,
      moves: ["Hammer Arm", "Retaliate", "Grass Knot", "Stone Edge"],
      ability: "Sheer Force",
      heldItem: null,
    },
    {
      dexId: 620,
      species: "Mienshao",
      level: 50,
      moves: ["Jump Kick", "Rock Slide", "Retaliate", "U-turn"],
      ability: "Inner Focus",
      heldItem: null,
    },
  ],
};

export const grimsley: BossTrainer = {
  name: "Grimsley",
  trainerClass: "Elite Four",
  bossType: "elite_four",
  location: "Pokemon League",
  levelCap: 50,
  notes: "Specializes in Dark-type Pokemon.",
  pokemon: [
    {
      dexId: 560,
      species: "Scrafty",
      level: 48,
      moves: ["Sand-Attack", "Crunch", "Poison Jab", "Brick Break"],
      ability: "Moxie",
      heldItem: null,
    },
    {
      dexId: 553,
      species: "Krookodile",
      level: 48,
      moves: ["Crunch", "Dragon Claw", "Foul Play", "Earthquake"],
      ability: "Intimidate",
      heldItem: null,
    },
    {
      dexId: 510,
      species: "Liepard",
      level: 48,
      moves: ["Fake Out", "Attract", "Aerial Ace", "Night Slash"],
      ability: "Limber",
      heldItem: null,
    },
    {
      dexId: 625,
      species: "Bisharp",
      level: 50,
      moves: ["X-Scissor", "Night Slash", "Metal Claw", "Aerial Ace"],
      ability: "Defiant",
      heldItem: null,
    },
  ],
};

export const caitlin: BossTrainer = {
  name: "Caitlin",
  trainerClass: "Elite Four",
  bossType: "elite_four",
  location: "Pokemon League",
  levelCap: 50,
  notes: "Specializes in Psychic-type Pokemon.",
  pokemon: [
    {
      dexId: 579,
      species: "Reuniclus",
      level: 48,
      moves: ["Energy Ball", "Thunder", "Focus Blast", "Psychic"],
      ability: "Magic Guard",
      heldItem: null,
    },
    {
      dexId: 518,
      species: "Musharna",
      level: 48,
      moves: ["Reflect", "Charge Beam", "Shadow Ball", "Psychic"],
      ability: "Synchronize",
      heldItem: null,
    },
    {
      dexId: 561,
      species: "Sigilyph",
      level: 48,
      moves: ["Shadow Ball", "Ice Beam", "Air Slash", "Psychic"],
      ability: "Wonder Skin",
      heldItem: null,
    },
    {
      dexId: 576,
      species: "Gothitelle",
      level: 50,
      moves: ["Calm Mind", "Thunderbolt", "Shadow Ball", "Psychic"],
      ability: "Frisk",
      heldItem: null,
    },
  ],
};

// ===========================================
// CHAMPION BATTLES (Black & White)
// ===========================================
// In BW, the "Champion" gauntlet is N followed by Ghetsis at N's Castle.
// N's team differs between Black and White (legendary swap).

/** N's final battle team - Pokemon Black version (has Zekrom) */
export const nFinalBlack: BossTrainer = {
  name: "N",
  trainerClass: "Champion",
  bossType: "champion",
  location: "N's Castle",
  levelCap: 52,
  notes:
    "N's final battle in Pokemon Black. Uses Zekrom. Fought immediately before Ghetsis.",
  pokemon: [
    {
      dexId: 644,
      species: "Zekrom",
      level: 52,
      moves: ["Fusion Bolt", "Zen Headbutt", "Giga Impact", "Light Screen"],
      ability: "Teravolt",
      heldItem: null,
    },
    {
      dexId: 565,
      species: "Carracosta",
      level: 50,
      moves: ["Stone Edge", "Aqua Jet", "Crunch", "Waterfall"],
      ability: "Sturdy",
      heldItem: null,
    },
    {
      dexId: 584,
      species: "Vanilluxe",
      level: 50,
      moves: ["Blizzard", "Hail", "Flash Cannon", "Frost Breath"],
      ability: "Ice Body",
      heldItem: null,
    },
    {
      dexId: 567,
      species: "Archeops",
      level: 50,
      moves: ["Stone Edge", "Acrobatics", "Dragon Claw", "Crunch"],
      ability: "Defeatist",
      heldItem: null,
    },
    {
      dexId: 571,
      species: "Zoroark",
      level: 50,
      moves: ["Flamethrower", "Focus Blast", "Night Slash", "Retaliate"],
      ability: "Illusion",
      heldItem: null,
    },
    {
      dexId: 601,
      species: "Klinklang",
      level: 50,
      moves: ["Flash Cannon", "Metal Sound", "Hyper Beam", "Thunderbolt"],
      ability: "Plus",
      heldItem: null,
    },
  ],
};

/** N's final battle team - Pokemon White version (has Reshiram) */
export const nFinalWhite: BossTrainer = {
  name: "N",
  trainerClass: "Champion",
  bossType: "champion",
  location: "N's Castle",
  levelCap: 52,
  notes:
    "N's final battle in Pokemon White. Uses Reshiram. Fought immediately before Ghetsis.",
  pokemon: [
    {
      dexId: 643,
      species: "Reshiram",
      level: 52,
      moves: ["Hyper Beam", "Fusion Flare", "Extrasensory", "Reflect"],
      ability: "Turboblaze",
      heldItem: null,
    },
    {
      dexId: 565,
      species: "Carracosta",
      level: 50,
      moves: ["Stone Edge", "Aqua Jet", "Crunch", "Waterfall"],
      ability: "Sturdy",
      heldItem: null,
    },
    {
      dexId: 584,
      species: "Vanilluxe",
      level: 50,
      moves: ["Blizzard", "Hail", "Flash Cannon", "Frost Breath"],
      ability: "Ice Body",
      heldItem: null,
    },
    {
      dexId: 567,
      species: "Archeops",
      level: 50,
      moves: ["Stone Edge", "Acrobatics", "Dragon Claw", "Crunch"],
      ability: "Defeatist",
      heldItem: null,
    },
    {
      dexId: 571,
      species: "Zoroark",
      level: 50,
      moves: ["Flamethrower", "Focus Blast", "Night Slash", "Retaliate"],
      ability: "Illusion",
      heldItem: null,
    },
    {
      dexId: 601,
      species: "Klinklang",
      level: 50,
      moves: ["Flash Cannon", "Metal Sound", "Hyper Beam", "Thunderbolt"],
      ability: "Plus",
      heldItem: null,
    },
  ],
};

/** Ghetsis - the true final boss of Black & White */
export const ghetsis: BossTrainer = {
  name: "Ghetsis",
  trainerClass: "Champion",
  bossType: "champion",
  location: "N's Castle",
  levelCap: 54,
  notes:
    "The true final boss of Pokemon Black & White. Fought immediately after N. Same team in both versions.",
  pokemon: [
    {
      dexId: 563,
      species: "Cofagrigus",
      level: 52,
      moves: ["Shadow Ball", "Protect", "Psychic", "Toxic"],
      ability: "Mummy",
      heldItem: null,
    },
    {
      dexId: 626,
      species: "Bouffalant",
      level: 52,
      moves: ["Head Charge", "Wild Charge", "Earthquake", "Poison Jab"],
      ability: "Reckless",
      heldItem: null,
    },
    {
      dexId: 537,
      species: "Seismitoad",
      level: 52,
      moves: ["Muddy Water", "Rain Dance", "Earthquake", "Sludge Wave"],
      ability: "Swift Swim",
      heldItem: null,
    },
    {
      dexId: 625,
      species: "Bisharp",
      level: 52,
      moves: ["Night Slash", "Stone Edge", "X-Scissor", "Metal Burst"],
      ability: "Defiant",
      heldItem: null,
    },
    {
      dexId: 604,
      species: "Eelektross",
      level: 52,
      moves: ["Wild Charge", "Flamethrower", "Acrobatics", "Crunch"],
      ability: "Levitate",
      heldItem: null,
    },
    {
      dexId: 635,
      species: "Hydreigon",
      level: 54,
      moves: ["Dragon Pulse", "Fire Blast", "Surf", "Focus Blast"],
      ability: "Levitate",
      heldItem: null,
    },
  ],
};

// ===========================================
// ORDERED ARRAYS FOR EASY ITERATION
// ===========================================

/** All Striaton Gym variants (player faces exactly one) */
export const bwStriatonGymLeaders: BossTrainer[] = [cilan, chili, cress];

/** Gym leaders in order (using Drayden for Gym 8 by default) */
export const bwGymLeadersBlack: BossTrainer[] = [
  cilan, // Gym 1 (variant - Grass)
  chili, // Gym 1 (variant - Fire)
  cress, // Gym 1 (variant - Water)
  lenora, // Gym 2
  burgh, // Gym 3
  elesa, // Gym 4
  clay, // Gym 5
  skyla, // Gym 6
  brycen, // Gym 7
  drayden, // Gym 8 (Black)
];

/** Gym leaders in order (using Iris for Gym 8) */
export const bwGymLeadersWhite: BossTrainer[] = [
  cilan, // Gym 1 (variant - Grass)
  chili, // Gym 1 (variant - Fire)
  cress, // Gym 1 (variant - Water)
  lenora, // Gym 2
  burgh, // Gym 3
  elesa, // Gym 4
  clay, // Gym 5
  skyla, // Gym 6
  brycen, // Gym 7
  iris, // Gym 8 (White)
];

export const bwEliteFour: BossTrainer[] = [
  shauntal,
  marshal,
  grimsley,
  caitlin,
];

/** All boss trainers in progression order - Pokemon Black */
export const bwAllBossesBlack: BossTrainer[] = [
  ...bwGymLeadersBlack,
  ...bwEliteFour,
  nFinalBlack,
  ghetsis,
];

/** All boss trainers in progression order - Pokemon White */
export const bwAllBossesWhite: BossTrainer[] = [
  ...bwGymLeadersWhite,
  ...bwEliteFour,
  nFinalWhite,
  ghetsis,
];

/**
 * Get the appropriate Striaton Gym Leader based on starter choice.
 * @param playerStarter - "oshawott" | "snivy" | "tepig"
 */
export function getStriatonLeader(
  playerStarter: "oshawott" | "snivy" | "tepig"
): BossTrainer {
  const leaders = {
    oshawott: cilan,
    snivy: chili,
    tepig: cress,
  };
  return leaders[playerStarter];
}

/**
 * Get the Gym 8 leader based on game version.
 * @param version - "black" | "white"
 */
export function getGym8Leader(version: "black" | "white"): BossTrainer {
  return version === "black" ? drayden : iris;
}

/**
 * Get N's final battle team based on game version.
 * @param version - "black" | "white"
 */
export function getNFinalTeam(version: "black" | "white"): BossTrainer {
  return version === "black" ? nFinalBlack : nFinalWhite;
}
