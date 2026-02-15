// ===========================================
// POKEMON PLATINUM: BOSS TRAINER DATA
// ===========================================
// Source: Bulbapedia (Platinum-specific teams)
// These are the Platinum version teams which differ from Diamond/Pearl.
//
// IMPORTANT DISCLAIMER: This data was compiled from training knowledge
// of Bulbapedia's Pokemon Platinum pages. Web access was unavailable
// during generation. Some moves/abilities/items should be cross-referenced
// against Bulbapedia for 100% accuracy before use in production.
// ===========================================

export interface BossTrainerPokemon {
  /** National Pokedex ID */
  dexId: number;
  species: string;
  level: number;
  moves: [string, string, string, string];
  ability: string;
  heldItem: string | null;
}

export interface BossTrainer {
  name: string;
  trainerClass: string;
  bossType: "gym_leader" | "elite_four" | "champion" | "rival";
  location: string;
  /** Level of the ace Pokemon - used as the level cap in Nuzlocke rules */
  levelCap: number;
  badge?: string;
  notes?: string;
  pokemon: BossTrainerPokemon[];
}

// ===========================================
// GYM LEADERS (Platinum)
// ===========================================

export const roark: BossTrainer = {
  name: "Roark",
  trainerClass: "Gym Leader",
  bossType: "gym_leader",
  location: "Oreburgh City",
  levelCap: 14,
  badge: "Coal Badge",
  pokemon: [
    {
      dexId: 74,
      species: "Geodude",
      level: 12,
      moves: ["Stealth Rock", "Rock Throw", "Mud Sport", "Defense Curl"],
      ability: "Rock Head",
      heldItem: null,
    },
    {
      dexId: 95,
      species: "Onix",
      level: 12,
      moves: ["Stealth Rock", "Rock Throw", "Screech", "Bind"],
      ability: "Rock Head",
      heldItem: null,
    },
    {
      dexId: 408,
      species: "Cranidos",
      level: 14,
      moves: ["Headbutt", "Leer", "Focus Energy", "Pursuit"],
      ability: "Mold Breaker",
      heldItem: null,
    },
  ],
};

export const gardenia: BossTrainer = {
  name: "Gardenia",
  trainerClass: "Gym Leader",
  bossType: "gym_leader",
  location: "Eterna City",
  levelCap: 22,
  badge: "Forest Badge",
  pokemon: [
    {
      dexId: 420,
      species: "Cherubi",
      level: 19,
      moves: ["Safeguard", "Grass Knot", "Magical Leaf", "Leech Seed"],
      ability: "Chlorophyll",
      heldItem: null,
    },
    {
      dexId: 387,
      species: "Turtwig",
      level: 19,
      moves: ["Razor Leaf", "Reflect", "Sunny Day", "Grass Knot"],
      ability: "Overgrow",
      heldItem: null,
    },
    {
      dexId: 407,
      species: "Roserade",
      level: 22,
      moves: ["Magical Leaf", "Poison Sting", "Stun Spore", "Grass Knot"],
      ability: "Natural Cure",
      heldItem: "Sitrus Berry",
    },
  ],
};

export const fantina: BossTrainer = {
  name: "Fantina",
  trainerClass: "Gym Leader",
  bossType: "gym_leader",
  location: "Hearthome City",
  levelCap: 26,
  badge: "Relic Badge",
  notes: "In Platinum, Fantina is the 3rd gym leader (not the 5th as in Diamond/Pearl).",
  pokemon: [
    {
      dexId: 429,
      species: "Mismagius",
      level: 24,
      moves: ["Confuse Ray", "Psybeam", "Magical Leaf", "Shadow Ball"],
      ability: "Levitate",
      heldItem: null,
    },
    {
      dexId: 93,
      species: "Haunter",
      level: 24,
      moves: ["Confuse Ray", "Shadow Claw", "Sucker Punch", "Hypnosis"],
      ability: "Levitate",
      heldItem: null,
    },
    {
      dexId: 426,
      species: "Drifblim",
      level: 26,
      moves: ["Ominous Wind", "Gust", "Will-O-Wisp", "Minimize"],
      ability: "Aftermath",
      heldItem: "Sitrus Berry",
    },
  ],
};

export const maylene: BossTrainer = {
  name: "Maylene",
  trainerClass: "Gym Leader",
  bossType: "gym_leader",
  location: "Veilstone City",
  levelCap: 32,
  badge: "Cobble Badge",
  notes: "In Platinum, Maylene is the 4th gym leader.",
  pokemon: [
    {
      dexId: 307,
      species: "Meditite",
      level: 28,
      moves: ["Drain Punch", "Confusion", "Detect", "Fake Out"],
      ability: "Pure Power",
      heldItem: null,
    },
    {
      dexId: 66,
      species: "Machoke",
      level: 29,
      moves: ["Rock Tomb", "Strength", "Karate Chop", "Knock Off"],
      ability: "No Guard",
      heldItem: null,
    },
    {
      dexId: 448,
      species: "Lucario",
      level: 32,
      moves: ["Drain Punch", "Force Palm", "Metal Claw", "Bone Rush"],
      ability: "Steadfast",
      heldItem: "Sitrus Berry",
    },
  ],
};

export const crasherWake: BossTrainer = {
  name: "Crasher Wake",
  trainerClass: "Gym Leader",
  bossType: "gym_leader",
  location: "Pastoria City",
  levelCap: 37,
  badge: "Fen Badge",
  notes: "In Platinum, Wake is the 5th gym leader.",
  pokemon: [
    {
      dexId: 130,
      species: "Gyarados",
      level: 33,
      moves: ["Waterfall", "Bite", "Twister", "Brine"],
      ability: "Intimidate",
      heldItem: null,
    },
    {
      dexId: 195,
      species: "Quagsire",
      level: 34,
      moves: ["Mud Bomb", "Rock Tomb", "Tail Whip", "Water Pulse"],
      ability: "Damp",
      heldItem: null,
    },
    {
      dexId: 419,
      species: "Floatzel",
      level: 37,
      moves: ["Aqua Jet", "Brine", "Crunch", "Ice Fang"],
      ability: "Swift Swim",
      heldItem: "Sitrus Berry",
    },
  ],
};

export const byron: BossTrainer = {
  name: "Byron",
  trainerClass: "Gym Leader",
  bossType: "gym_leader",
  location: "Canalave City",
  levelCap: 39,
  badge: "Mine Badge",
  pokemon: [
    {
      dexId: 436,
      species: "Bronzor",
      level: 36,
      moves: ["Confuse Ray", "Payback", "Flash Cannon", "Rain Dance"],
      ability: "Levitate",
      heldItem: null,
    },
    {
      dexId: 411,
      species: "Bastiodon",
      level: 36,
      moves: ["Iron Defense", "Metal Burst", "Taunt", "Flash Cannon"],
      ability: "Sturdy",
      heldItem: null,
    },
    {
      dexId: 208,
      species: "Steelix",
      level: 39,
      moves: ["Earthquake", "Flash Cannon", "Ice Fang", "Sandstorm"],
      ability: "Rock Head",
      heldItem: "Sitrus Berry",
    },
  ],
};

export const candice: BossTrainer = {
  name: "Candice",
  trainerClass: "Gym Leader",
  bossType: "gym_leader",
  location: "Snowpoint City",
  levelCap: 44,
  badge: "Icicle Badge",
  pokemon: [
    {
      dexId: 215,
      species: "Sneasel",
      level: 40,
      moves: ["Slash", "Faint Attack", "Ice Shard", "Fury Swipes"],
      ability: "Inner Focus",
      heldItem: null,
    },
    {
      dexId: 221,
      species: "Piloswine",
      level: 40,
      moves: ["Earthquake", "Stone Edge", "Avalanche", "Hail"],
      ability: "Snow Cloak",
      heldItem: null,
    },
    {
      dexId: 460,
      species: "Abomasnow",
      level: 42,
      moves: ["Wood Hammer", "Avalanche", "Water Pulse", "Swagger"],
      ability: "Snow Warning",
      heldItem: "Sitrus Berry",
    },
    {
      dexId: 478,
      species: "Froslass",
      level: 44,
      moves: ["Blizzard", "Shadow Ball", "Psychic", "Hail"],
      ability: "Snow Cloak",
      heldItem: null,
    },
  ],
};

export const volkner: BossTrainer = {
  name: "Volkner",
  trainerClass: "Gym Leader",
  bossType: "gym_leader",
  location: "Sunyshore City",
  levelCap: 50,
  badge: "Beacon Badge",
  pokemon: [
    {
      dexId: 135,
      species: "Jolteon",
      level: 46,
      moves: ["Charge Beam", "Thunder Wave", "Quick Attack", "Shadow Ball"],
      ability: "Volt Absorb",
      heldItem: null,
    },
    {
      dexId: 26,
      species: "Raichu",
      level: 46,
      moves: ["Charge Beam", "Signal Beam", "Focus Blast", "Quick Attack"],
      ability: "Static",
      heldItem: null,
    },
    {
      dexId: 405,
      species: "Luxray",
      level: 48,
      moves: ["Crunch", "Ice Fang", "Fire Fang", "Spark"],
      ability: "Intimidate",
      heldItem: null,
    },
    {
      dexId: 466,
      species: "Electivire",
      level: 50,
      moves: ["Thunder Punch", "Fire Punch", "Giga Impact", "Quick Attack"],
      ability: "Motor Drive",
      heldItem: "Sitrus Berry",
    },
  ],
};

// ===========================================
// ELITE FOUR (Platinum)
// ===========================================

export const aaron: BossTrainer = {
  name: "Aaron",
  trainerClass: "Elite Four",
  bossType: "elite_four",
  location: "Pokemon League",
  levelCap: 53,
  pokemon: [
    {
      dexId: 414,
      species: "Yanmega",
      level: 49,
      moves: ["Bug Buzz", "Air Slash", "Double Team", "U-turn"],
      ability: "Speed Boost",
      heldItem: null,
    },
    {
      dexId: 416,
      species: "Vespiquen",
      level: 50,
      moves: ["Attack Order", "Defend Order", "Heal Order", "Power Gem"],
      ability: "Pressure",
      heldItem: null,
    },
    {
      dexId: 212,
      species: "Scizor",
      level: 49,
      moves: ["X-Scissor", "Iron Head", "Night Slash", "Quick Attack"],
      ability: "Technician",
      heldItem: null,
    },
    {
      dexId: 452,
      species: "Drapion",
      level: 53,
      moves: ["Cross Poison", "X-Scissor", "Ice Fang", "Aerial Ace"],
      ability: "Battle Armor",
      heldItem: null,
    },
    {
      dexId: 214,
      species: "Heracross",
      level: 51,
      moves: ["Megahorn", "Close Combat", "Stone Edge", "Night Slash"],
      ability: "Swarm",
      heldItem: "Sitrus Berry",
    },
  ],
};

export const bertha: BossTrainer = {
  name: "Bertha",
  trainerClass: "Elite Four",
  bossType: "elite_four",
  location: "Pokemon League",
  levelCap: 55,
  pokemon: [
    {
      dexId: 340,
      species: "Whiscash",
      level: 50,
      moves: ["Earth Power", "Aqua Tail", "Zen Headbutt", "Sandstorm"],
      ability: "Oblivious",
      heldItem: null,
    },
    {
      dexId: 76,
      species: "Golem",
      level: 52,
      moves: ["Earthquake", "Thunder Punch", "Fire Punch", "Sandstorm"],
      ability: "Rock Head",
      heldItem: null,
    },
    {
      dexId: 472,
      species: "Gliscor",
      level: 53,
      moves: ["Earthquake", "Fire Fang", "Ice Fang", "Thunder Fang"],
      ability: "Sand Veil",
      heldItem: null,
    },
    {
      dexId: 450,
      species: "Hippowdon",
      level: 55,
      moves: ["Earthquake", "Crunch", "Yawn", "Stone Edge"],
      ability: "Sand Stream",
      heldItem: "Sitrus Berry",
    },
    {
      dexId: 464,
      species: "Rhyperior",
      level: 52,
      moves: ["Earthquake", "Rock Wrecker", "Avalanche", "Megahorn"],
      ability: "Solid Rock",
      heldItem: null,
    },
  ],
};

export const flint: BossTrainer = {
  name: "Flint",
  trainerClass: "Elite Four",
  bossType: "elite_four",
  location: "Pokemon League",
  levelCap: 57,
  pokemon: [
    {
      dexId: 229,
      species: "Houndoom",
      level: 52,
      moves: ["Flamethrower", "Dark Pulse", "Sludge Bomb", "Sunny Day"],
      ability: "Flash Fire",
      heldItem: null,
    },
    {
      dexId: 136,
      species: "Flareon",
      level: 55,
      moves: ["Flare Blitz", "Giga Impact", "Will-O-Wisp", "Quick Attack"],
      ability: "Flash Fire",
      heldItem: null,
    },
    {
      dexId: 78,
      species: "Rapidash",
      level: 53,
      moves: ["Flare Blitz", "Solar Beam", "Bounce", "Sunny Day"],
      ability: "Flash Fire",
      heldItem: null,
    },
    {
      dexId: 392,
      species: "Infernape",
      level: 55,
      moves: ["Flare Blitz", "Mach Punch", "Thunder Punch", "Earthquake"],
      ability: "Blaze",
      heldItem: null,
    },
    {
      dexId: 467,
      species: "Magmortar",
      level: 57,
      moves: ["Flamethrower", "Thunderbolt", "Solar Beam", "Hyper Beam"],
      ability: "Flame Body",
      heldItem: "Sitrus Berry",
    },
  ],
};

export const lucian: BossTrainer = {
  name: "Lucian",
  trainerClass: "Elite Four",
  bossType: "elite_four",
  location: "Pokemon League",
  levelCap: 59,
  pokemon: [
    {
      dexId: 122,
      species: "Mr. Mime",
      level: 53,
      moves: ["Psychic", "Thunderbolt", "Reflect", "Light Screen"],
      ability: "Filter",
      heldItem: null,
    },
    {
      dexId: 196,
      species: "Espeon",
      level: 55,
      moves: ["Psychic", "Shadow Ball", "Signal Beam", "Quick Attack"],
      ability: "Synchronize",
      heldItem: null,
    },
    {
      dexId: 437,
      species: "Bronzong",
      level: 54,
      moves: ["Psychic", "Earthquake", "Gyro Ball", "Calm Mind"],
      ability: "Levitate",
      heldItem: null,
    },
    {
      dexId: 65,
      species: "Alakazam",
      level: 56,
      moves: ["Psychic", "Focus Blast", "Energy Ball", "Recover"],
      ability: "Synchronize",
      heldItem: null,
    },
    {
      dexId: 475,
      species: "Gallade",
      level: 59,
      moves: ["Psycho Cut", "Drain Punch", "Stone Edge", "Leaf Blade"],
      ability: "Steadfast",
      heldItem: "Sitrus Berry",
    },
  ],
};

// ===========================================
// CHAMPION CYNTHIA (Platinum)
// ===========================================

export const cynthia: BossTrainer = {
  name: "Cynthia",
  trainerClass: "Champion",
  bossType: "champion",
  location: "Pokemon League",
  levelCap: 62,
  pokemon: [
    {
      dexId: 442,
      species: "Spiritomb",
      level: 58,
      moves: ["Dark Pulse", "Psychic", "Silver Wind", "Embargo"],
      ability: "Pressure",
      heldItem: null,
    },
    {
      dexId: 407,
      species: "Roserade",
      level: 58,
      moves: ["Energy Ball", "Sludge Bomb", "Shadow Ball", "Extrasensory"],
      ability: "Natural Cure",
      heldItem: null,
    },
    {
      dexId: 468,
      species: "Togekiss",
      level: 60,
      moves: ["Air Slash", "Aura Sphere", "Water Pulse", "Shock Wave"],
      ability: "Serene Grace",
      heldItem: null,
    },
    {
      dexId: 448,
      species: "Lucario",
      level: 60,
      moves: ["Aura Sphere", "Dragon Pulse", "Shadow Ball", "Psychic"],
      ability: "Steadfast",
      heldItem: null,
    },
    {
      dexId: 350,
      species: "Milotic",
      level: 58,
      moves: ["Surf", "Ice Beam", "Mirror Coat", "Aqua Ring"],
      ability: "Marvel Scale",
      heldItem: null,
    },
    {
      dexId: 445,
      species: "Garchomp",
      level: 62,
      moves: ["Dragon Rush", "Earthquake", "Brick Break", "Giga Impact"],
      ability: "Sand Veil",
      heldItem: "Sitrus Berry",
    },
  ],
};

// ===========================================
// RIVAL BARRY (Platinum key battles)
// ===========================================
// Barry's team varies based on the player's starter choice.
// In Platinum, he always picks the starter with a type advantage.
// The "core" team is his non-starter Pokemon which are always present.
// We list all 3 variants for the key battles.

/** Barry's team when player chose Turtwig (Barry has Chimchar line) */
export const barryPastoriaTurtwig: BossTrainer = {
  name: "Barry",
  trainerClass: "Rival",
  bossType: "rival",
  location: "Pastoria City",
  levelCap: 36,
  notes: "Rival battle after Pastoria Gym. Player chose Turtwig.",
  pokemon: [
    {
      dexId: 398,
      species: "Staraptor",
      level: 32,
      moves: ["Aerial Ace", "Close Combat", "Take Down", "Endeavor"],
      ability: "Intimidate",
      heldItem: null,
    },
    {
      dexId: 407,
      species: "Roserade",
      level: 32,
      moves: ["Mega Drain", "Stun Spore", "Grass Knot", "Leech Seed"],
      ability: "Natural Cure",
      heldItem: null,
    },
    {
      dexId: 419,
      species: "Floatzel",
      level: 33,
      moves: ["Aqua Jet", "Crunch", "Swift", "Pursuit"],
      ability: "Swift Swim",
      heldItem: null,
    },
    {
      dexId: 214,
      species: "Heracross",
      level: 33,
      moves: ["Close Combat", "Aerial Ace", "Night Slash", "Brick Break"],
      ability: "Guts",
      heldItem: null,
    },
    {
      dexId: 391,
      species: "Monferno",
      level: 36,
      moves: ["Flame Wheel", "Mach Punch", "Feint", "Taunt"],
      ability: "Blaze",
      heldItem: null,
    },
  ],
};

/** Barry's team when player chose Chimchar (Barry has Piplup line) */
export const barryPastoriaChimchar: BossTrainer = {
  name: "Barry",
  trainerClass: "Rival",
  bossType: "rival",
  location: "Pastoria City",
  levelCap: 36,
  notes: "Rival battle after Pastoria Gym. Player chose Chimchar.",
  pokemon: [
    {
      dexId: 398,
      species: "Staraptor",
      level: 32,
      moves: ["Aerial Ace", "Close Combat", "Take Down", "Endeavor"],
      ability: "Intimidate",
      heldItem: null,
    },
    {
      dexId: 407,
      species: "Roserade",
      level: 32,
      moves: ["Mega Drain", "Stun Spore", "Grass Knot", "Leech Seed"],
      ability: "Natural Cure",
      heldItem: null,
    },
    {
      dexId: 419,
      species: "Floatzel",
      level: 33,
      moves: ["Aqua Jet", "Crunch", "Swift", "Pursuit"],
      ability: "Swift Swim",
      heldItem: null,
    },
    {
      dexId: 214,
      species: "Heracross",
      level: 33,
      moves: ["Close Combat", "Aerial Ace", "Night Slash", "Brick Break"],
      ability: "Guts",
      heldItem: null,
    },
    {
      dexId: 394,
      species: "Prinplup",
      level: 36,
      moves: ["Brine", "Metal Claw", "Peck", "Fury Attack"],
      ability: "Torrent",
      heldItem: null,
    },
  ],
};

/** Barry's team when player chose Piplup (Barry has Turtwig line) */
export const barryPastoriaPiplup: BossTrainer = {
  name: "Barry",
  trainerClass: "Rival",
  bossType: "rival",
  location: "Pastoria City",
  levelCap: 36,
  notes: "Rival battle after Pastoria Gym. Player chose Piplup.",
  pokemon: [
    {
      dexId: 398,
      species: "Staraptor",
      level: 32,
      moves: ["Aerial Ace", "Close Combat", "Take Down", "Endeavor"],
      ability: "Intimidate",
      heldItem: null,
    },
    {
      dexId: 407,
      species: "Roserade",
      level: 32,
      moves: ["Mega Drain", "Stun Spore", "Grass Knot", "Leech Seed"],
      ability: "Natural Cure",
      heldItem: null,
    },
    {
      dexId: 419,
      species: "Floatzel",
      level: 33,
      moves: ["Aqua Jet", "Crunch", "Swift", "Pursuit"],
      ability: "Swift Swim",
      heldItem: null,
    },
    {
      dexId: 214,
      species: "Heracross",
      level: 33,
      moves: ["Close Combat", "Aerial Ace", "Night Slash", "Brick Break"],
      ability: "Guts",
      heldItem: null,
    },
    {
      dexId: 388,
      species: "Grotle",
      level: 36,
      moves: ["Razor Leaf", "Bite", "Absorb", "Curse"],
      ability: "Overgrow",
      heldItem: null,
    },
  ],
};

/** Barry's final battle at Pokemon League entrance - player chose Turtwig */
export const barryLeagueTurtwig: BossTrainer = {
  name: "Barry",
  trainerClass: "Rival",
  bossType: "rival",
  location: "Pokemon League",
  levelCap: 51,
  notes: "Final rival battle before the Elite Four. Player chose Turtwig.",
  pokemon: [
    {
      dexId: 398,
      species: "Staraptor",
      level: 48,
      moves: ["Brave Bird", "Close Combat", "Return", "U-turn"],
      ability: "Intimidate",
      heldItem: null,
    },
    {
      dexId: 214,
      species: "Heracross",
      level: 50,
      moves: ["Megahorn", "Close Combat", "Stone Edge", "Night Slash"],
      ability: "Guts",
      heldItem: null,
    },
    {
      dexId: 407,
      species: "Roserade",
      level: 49,
      moves: ["Energy Ball", "Sludge Bomb", "Shadow Ball", "Extrasensory"],
      ability: "Natural Cure",
      heldItem: null,
    },
    {
      dexId: 419,
      species: "Floatzel",
      level: 49,
      moves: ["Aqua Jet", "Ice Fang", "Crunch", "Brine"],
      ability: "Swift Swim",
      heldItem: null,
    },
    {
      dexId: 143,
      species: "Snorlax",
      level: 51,
      moves: ["Body Slam", "Crunch", "Earthquake", "Shadow Ball"],
      ability: "Thick Fat",
      heldItem: null,
    },
    {
      dexId: 392,
      species: "Infernape",
      level: 51,
      moves: ["Flare Blitz", "Close Combat", "Thunder Punch", "Mach Punch"],
      ability: "Blaze",
      heldItem: null,
    },
  ],
};

/** Barry's final battle at Pokemon League entrance - player chose Chimchar */
export const barryLeagueChimchar: BossTrainer = {
  name: "Barry",
  trainerClass: "Rival",
  bossType: "rival",
  location: "Pokemon League",
  levelCap: 51,
  notes: "Final rival battle before the Elite Four. Player chose Chimchar.",
  pokemon: [
    {
      dexId: 398,
      species: "Staraptor",
      level: 48,
      moves: ["Brave Bird", "Close Combat", "Return", "U-turn"],
      ability: "Intimidate",
      heldItem: null,
    },
    {
      dexId: 214,
      species: "Heracross",
      level: 50,
      moves: ["Megahorn", "Close Combat", "Stone Edge", "Night Slash"],
      ability: "Guts",
      heldItem: null,
    },
    {
      dexId: 407,
      species: "Roserade",
      level: 49,
      moves: ["Energy Ball", "Sludge Bomb", "Shadow Ball", "Extrasensory"],
      ability: "Natural Cure",
      heldItem: null,
    },
    {
      dexId: 419,
      species: "Floatzel",
      level: 49,
      moves: ["Aqua Jet", "Ice Fang", "Crunch", "Brine"],
      ability: "Swift Swim",
      heldItem: null,
    },
    {
      dexId: 143,
      species: "Snorlax",
      level: 51,
      moves: ["Body Slam", "Crunch", "Earthquake", "Shadow Ball"],
      ability: "Thick Fat",
      heldItem: null,
    },
    {
      dexId: 395,
      species: "Empoleon",
      level: 51,
      moves: ["Surf", "Flash Cannon", "Ice Beam", "Aqua Jet"],
      ability: "Torrent",
      heldItem: null,
    },
  ],
};

/** Barry's final battle at Pokemon League entrance - player chose Piplup */
export const barryLeaguePiplup: BossTrainer = {
  name: "Barry",
  trainerClass: "Rival",
  bossType: "rival",
  location: "Pokemon League",
  levelCap: 51,
  notes: "Final rival battle before the Elite Four. Player chose Piplup.",
  pokemon: [
    {
      dexId: 398,
      species: "Staraptor",
      level: 48,
      moves: ["Brave Bird", "Close Combat", "Return", "U-turn"],
      ability: "Intimidate",
      heldItem: null,
    },
    {
      dexId: 214,
      species: "Heracross",
      level: 50,
      moves: ["Megahorn", "Close Combat", "Stone Edge", "Night Slash"],
      ability: "Guts",
      heldItem: null,
    },
    {
      dexId: 407,
      species: "Roserade",
      level: 49,
      moves: ["Energy Ball", "Sludge Bomb", "Shadow Ball", "Extrasensory"],
      ability: "Natural Cure",
      heldItem: null,
    },
    {
      dexId: 419,
      species: "Floatzel",
      level: 49,
      moves: ["Aqua Jet", "Ice Fang", "Crunch", "Brine"],
      ability: "Swift Swim",
      heldItem: null,
    },
    {
      dexId: 143,
      species: "Snorlax",
      level: 51,
      moves: ["Body Slam", "Crunch", "Earthquake", "Shadow Ball"],
      ability: "Thick Fat",
      heldItem: null,
    },
    {
      dexId: 389,
      species: "Torterra",
      level: 51,
      moves: ["Wood Hammer", "Earthquake", "Crunch", "Stone Edge"],
      ability: "Overgrow",
      heldItem: null,
    },
  ],
};

// ===========================================
// ORDERED ARRAYS FOR EASY ITERATION
// ===========================================

export const platinumGymLeaders: BossTrainer[] = [
  roark,
  gardenia,
  fantina,
  maylene,
  crasherWake,
  byron,
  candice,
  volkner,
];

export const platinumEliteFour: BossTrainer[] = [
  aaron,
  bertha,
  flint,
  lucian,
];

export const platinumChampion: BossTrainer = cynthia;

/** All boss trainers in progression order */
export const platinumAllBosses: BossTrainer[] = [
  ...platinumGymLeaders,
  ...platinumEliteFour,
  cynthia,
];

/**
 * Get Barry's team for a specific battle based on starter choice.
 * @param battle - "pastoria" or "league"
 * @param playerStarter - "turtwig" | "chimchar" | "piplup"
 */
export function getBarryTeam(
  battle: "pastoria" | "league",
  playerStarter: "turtwig" | "chimchar" | "piplup"
): BossTrainer {
  const teams = {
    pastoria: {
      turtwig: barryPastoriaTurtwig,
      chimchar: barryPastoriaChimchar,
      piplup: barryPastoriaPiplup,
    },
    league: {
      turtwig: barryLeagueTurtwig,
      chimchar: barryLeagueChimchar,
      piplup: barryLeaguePiplup,
    },
  };
  return teams[battle][playerStarter];
}
