-- ===========================================
-- POKEMON RISING RUBY: COMPLETE GAME DATA
-- ROM Hack of Pokemon Omega Ruby
-- Gen 6, Hoenn region
-- ===========================================
-- Generated: 2026-02-16T23:26:44.046Z
-- Game ID: f1a2b3c4-d5e6-7890-ab12-cd3456789012
-- ===========================================

-- STEP 1: Insert the game
INSERT INTO public.games (id, slug, name, generation, region, base_game_slug, is_romhack, sprite_url, total_routes, description)
VALUES (
  'f1a2b3c4-d5e6-7890-ab12-cd3456789012',
  'rising-ruby',
  'Rising Ruby',
  6,
  'hoenn',
  'omega-ruby',
  true,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/383.png',
  0,
  'Rising Ruby ROM hack - an enhanced version of Pokemon Omega Ruby with increased difficulty, expanded movesets, and all Pokemon obtainable.'
);

-- ===========================================
-- STEP 2: ALL ROUTES (96 total)
-- ===========================================

-- Route: Littleroot Town
INSERT INTO routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items)
VALUES (
  'f1a2b3c4-d5e6-7890-ab12-cd3456789012',
  'Littleroot Town',
  'littleroot-town',
  1,
  'city',
  true,
  false,
  false
);

-- Route: Route 101
INSERT INTO routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items)
VALUES (
  'f1a2b3c4-d5e6-7890-ab12-cd3456789012',
  'Route 101',
  'route-101',
  2,
  'route',
  true,
  false,
  false
);

-- Route: Route 103
INSERT INTO routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items)
VALUES (
  'f1a2b3c4-d5e6-7890-ab12-cd3456789012',
  'Route 103',
  'route-103',
  3,
  'route',
  true,
  true,
  false
);

-- Route: Route 102
INSERT INTO routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items)
VALUES (
  'f1a2b3c4-d5e6-7890-ab12-cd3456789012',
  'Route 102',
  'route-102',
  4,
  'route',
  true,
  true,
  false
);

-- Route: Petalburg City
INSERT INTO routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items)
VALUES (
  'f1a2b3c4-d5e6-7890-ab12-cd3456789012',
  'Petalburg City',
  'petalburg-city',
  5,
  'route',
  true,
  true,
  false
);

-- Route: Route 104 South
INSERT INTO routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items)
VALUES (
  'f1a2b3c4-d5e6-7890-ab12-cd3456789012',
  'Route 104 South',
  'route-104-south',
  6,
  'route',
  true,
  true,
  false
);

-- Route: Petalburg Woods
INSERT INTO routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items)
VALUES (
  'f1a2b3c4-d5e6-7890-ab12-cd3456789012',
  'Petalburg Woods',
  'petalburg-woods',
  7,
  'route',
  true,
  true,
  false
);

-- Route: Route 104 North
INSERT INTO routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items)
VALUES (
  'f1a2b3c4-d5e6-7890-ab12-cd3456789012',
  'Route 104 North',
  'route-104-north',
  8,
  'route',
  true,
  true,
  false
);

-- Route: Rustboro Gym
INSERT INTO routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items)
VALUES (
  'f1a2b3c4-d5e6-7890-ab12-cd3456789012',
  'Rustboro Gym',
  'rustboro-gym',
  9,
  'route',
  false,
  true,
  false
);

-- Route: Route 116
INSERT INTO routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items)
VALUES (
  'f1a2b3c4-d5e6-7890-ab12-cd3456789012',
  'Route 116',
  'route-116',
  10,
  'route',
  true,
  true,
  false
);

-- Route: Rusturf Tunnel
INSERT INTO routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items)
VALUES (
  'f1a2b3c4-d5e6-7890-ab12-cd3456789012',
  'Rusturf Tunnel',
  'rusturf-tunnel',
  11,
  'route',
  true,
  true,
  false
);

-- Route: Route 106
INSERT INTO routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items)
VALUES (
  'f1a2b3c4-d5e6-7890-ab12-cd3456789012',
  'Route 106',
  'route-106',
  12,
  'route',
  true,
  true,
  false
);

-- Route: Dewford Town
INSERT INTO routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items)
VALUES (
  'f1a2b3c4-d5e6-7890-ab12-cd3456789012',
  'Dewford Town',
  'dewford-town',
  13,
  'route',
  true,
  false,
  false
);

-- Route: Dewford Gym
INSERT INTO routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items)
VALUES (
  'f1a2b3c4-d5e6-7890-ab12-cd3456789012',
  'Dewford Gym',
  'dewford-gym',
  14,
  'route',
  false,
  true,
  false
);

-- Route: Route 107
INSERT INTO routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items)
VALUES (
  'f1a2b3c4-d5e6-7890-ab12-cd3456789012',
  'Route 107',
  'route-107',
  15,
  'route',
  true,
  true,
  false
);

-- Route: Granite Cave 1F
INSERT INTO routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items)
VALUES (
  'f1a2b3c4-d5e6-7890-ab12-cd3456789012',
  'Granite Cave 1F',
  'granite-cave-1f',
  16,
  'route',
  true,
  false,
  false
);

-- Route: Route 109
INSERT INTO routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items)
VALUES (
  'f1a2b3c4-d5e6-7890-ab12-cd3456789012',
  'Route 109',
  'route-109',
  17,
  'route',
  true,
  true,
  false
);

-- Route: Slateport City
INSERT INTO routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items)
VALUES (
  'f1a2b3c4-d5e6-7890-ab12-cd3456789012',
  'Slateport City',
  'slateport-city',
  18,
  'route',
  true,
  true,
  false
);

-- Route: Route 110
INSERT INTO routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items)
VALUES (
  'f1a2b3c4-d5e6-7890-ab12-cd3456789012',
  'Route 110',
  'route-110',
  19,
  'route',
  true,
  true,
  false
);

-- Route: Mauville City
INSERT INTO routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items)
VALUES (
  'f1a2b3c4-d5e6-7890-ab12-cd3456789012',
  'Mauville City',
  'mauville-city',
  20,
  'route',
  false,
  true,
  false
);

-- Route: Mauville Gym
INSERT INTO routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items)
VALUES (
  'f1a2b3c4-d5e6-7890-ab12-cd3456789012',
  'Mauville Gym',
  'mauville-gym',
  21,
  'route',
  false,
  true,
  false
);

-- Route: Route 117
INSERT INTO routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items)
VALUES (
  'f1a2b3c4-d5e6-7890-ab12-cd3456789012',
  'Route 117',
  'route-117',
  22,
  'route',
  true,
  true,
  false
);

-- Route: Granite Cave B1F
INSERT INTO routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items)
VALUES (
  'f1a2b3c4-d5e6-7890-ab12-cd3456789012',
  'Granite Cave B1F',
  'granite-cave-b1f',
  23,
  'route',
  true,
  false,
  false
);

-- Route: Granite Cave B2F
INSERT INTO routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items)
VALUES (
  'f1a2b3c4-d5e6-7890-ab12-cd3456789012',
  'Granite Cave B2F',
  'granite-cave-b2f',
  24,
  'route',
  true,
  true,
  false
);

-- Route: Route 111
INSERT INTO routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items)
VALUES (
  'f1a2b3c4-d5e6-7890-ab12-cd3456789012',
  'Route 111',
  'route-111',
  25,
  'route',
  true,
  true,
  false
);

-- Route: Route 112 South
INSERT INTO routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items)
VALUES (
  'f1a2b3c4-d5e6-7890-ab12-cd3456789012',
  'Route 112 South',
  'route-112-south',
  26,
  'route',
  true,
  true,
  false
);

-- Route: Fiery Path
INSERT INTO routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items)
VALUES (
  'f1a2b3c4-d5e6-7890-ab12-cd3456789012',
  'Fiery Path',
  'fiery-path',
  27,
  'route',
  true,
  false,
  false
);

-- Route: Route 112 North
INSERT INTO routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items)
VALUES (
  'f1a2b3c4-d5e6-7890-ab12-cd3456789012',
  'Route 112 North',
  'route-112-north',
  28,
  'route',
  true,
  true,
  false
);

-- Route: Route 113
INSERT INTO routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items)
VALUES (
  'f1a2b3c4-d5e6-7890-ab12-cd3456789012',
  'Route 113',
  'route-113',
  29,
  'route',
  true,
  true,
  false
);

-- Route: Route 114
INSERT INTO routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items)
VALUES (
  'f1a2b3c4-d5e6-7890-ab12-cd3456789012',
  'Route 114',
  'route-114',
  30,
  'route',
  true,
  true,
  false
);

-- Route: Meteor Falls 1F
INSERT INTO routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items)
VALUES (
  'f1a2b3c4-d5e6-7890-ab12-cd3456789012',
  'Meteor Falls 1F',
  'meteor-falls-1f',
  31,
  'route',
  true,
  true,
  false
);

-- Route: Jagged Pass
INSERT INTO routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items)
VALUES (
  'f1a2b3c4-d5e6-7890-ab12-cd3456789012',
  'Jagged Pass',
  'jagged-pass',
  32,
  'route',
  true,
  true,
  false
);

-- Route: Lavaridge Gym
INSERT INTO routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items)
VALUES (
  'f1a2b3c4-d5e6-7890-ab12-cd3456789012',
  'Lavaridge Gym',
  'lavaridge-gym',
  33,
  'route',
  true,
  true,
  false
);

-- Route: Petalburg Gym
INSERT INTO routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items)
VALUES (
  'f1a2b3c4-d5e6-7890-ab12-cd3456789012',
  'Petalburg Gym',
  'petalburg-gym',
  34,
  'route',
  false,
  true,
  false
);

-- Route: Route 105
INSERT INTO routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items)
VALUES (
  'f1a2b3c4-d5e6-7890-ab12-cd3456789012',
  'Route 105',
  'route-105',
  35,
  'route',
  true,
  true,
  false
);

-- Route: Route 108
INSERT INTO routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items)
VALUES (
  'f1a2b3c4-d5e6-7890-ab12-cd3456789012',
  'Route 108',
  'route-108',
  36,
  'route',
  true,
  true,
  false
);

-- Route: Sea Mauville Outside
INSERT INTO routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items)
VALUES (
  'f1a2b3c4-d5e6-7890-ab12-cd3456789012',
  'Sea Mauville Outside',
  'sea-mauville-outside',
  37,
  'route',
  true,
  true,
  false
);

-- Route: Sea Mauville Inside
INSERT INTO routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items)
VALUES (
  'f1a2b3c4-d5e6-7890-ab12-cd3456789012',
  'Sea Mauville Inside',
  'sea-mauville-inside',
  38,
  'route',
  true,
  true,
  false
);

-- Route: Route 115
INSERT INTO routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items)
VALUES (
  'f1a2b3c4-d5e6-7890-ab12-cd3456789012',
  'Route 115',
  'route-115',
  39,
  'route',
  true,
  true,
  false
);

-- Route: New Mauville
INSERT INTO routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items)
VALUES (
  'f1a2b3c4-d5e6-7890-ab12-cd3456789012',
  'New Mauville',
  'new-mauville',
  40,
  'route',
  true,
  false,
  false
);

-- Route: Route 118
INSERT INTO routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items)
VALUES (
  'f1a2b3c4-d5e6-7890-ab12-cd3456789012',
  'Route 118',
  'route-118',
  41,
  'route',
  true,
  true,
  false
);

-- Route: Southern Island
INSERT INTO routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items)
VALUES (
  'f1a2b3c4-d5e6-7890-ab12-cd3456789012',
  'Southern Island',
  'southern-island',
  42,
  'route',
  true,
  true,
  false
);

-- Route: Weather Institute
INSERT INTO routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items)
VALUES (
  'f1a2b3c4-d5e6-7890-ab12-cd3456789012',
  'Weather Institute',
  'weather-institute',
  43,
  'route',
  true,
  true,
  false
);

-- Route: Fortree City
INSERT INTO routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items)
VALUES (
  'f1a2b3c4-d5e6-7890-ab12-cd3456789012',
  'Fortree City',
  'fortree-city',
  44,
  'route',
  true,
  true,
  false
);

-- Route: Scorched Slab
INSERT INTO routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items)
VALUES (
  'f1a2b3c4-d5e6-7890-ab12-cd3456789012',
  'Scorched Slab',
  'scorched-slab',
  45,
  'route',
  true,
  false,
  false
);

-- Route: Scorched Slab Basement
INSERT INTO routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items)
VALUES (
  'f1a2b3c4-d5e6-7890-ab12-cd3456789012',
  'Scorched Slab Basement',
  'scorched-slab-basement',
  46,
  'route',
  true,
  false,
  false
);

-- Route: Fortree Gym
INSERT INTO routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items)
VALUES (
  'f1a2b3c4-d5e6-7890-ab12-cd3456789012',
  'Fortree Gym',
  'fortree-gym',
  47,
  'route',
  true,
  true,
  false
);

-- Route: Route 121
INSERT INTO routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items)
VALUES (
  'f1a2b3c4-d5e6-7890-ab12-cd3456789012',
  'Route 121',
  'route-121',
  48,
  'route',
  true,
  true,
  false
);

-- Route: Route 122
INSERT INTO routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items)
VALUES (
  'f1a2b3c4-d5e6-7890-ab12-cd3456789012',
  'Route 122',
  'route-122',
  49,
  'route',
  true,
  false,
  false
);

-- Route: Route 123
INSERT INTO routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items)
VALUES (
  'f1a2b3c4-d5e6-7890-ab12-cd3456789012',
  'Route 123',
  'route-123',
  50,
  'route',
  true,
  true,
  false
);

-- Route: Lilycove City
INSERT INTO routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items)
VALUES (
  'f1a2b3c4-d5e6-7890-ab12-cd3456789012',
  'Lilycove City',
  'lilycove-city',
  51,
  'route',
  true,
  true,
  false
);

-- Route: Magma Hideout
INSERT INTO routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items)
VALUES (
  'f1a2b3c4-d5e6-7890-ab12-cd3456789012',
  'Magma Hideout',
  'magma-hideout',
  52,
  'route',
  true,
  true,
  false
);

-- Route: Aqua Hideout
INSERT INTO routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items)
VALUES (
  'f1a2b3c4-d5e6-7890-ab12-cd3456789012',
  'Aqua Hideout',
  'aqua-hideout',
  53,
  'route',
  true,
  true,
  false
);

-- Route: Route 124
INSERT INTO routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items)
VALUES (
  'f1a2b3c4-d5e6-7890-ab12-cd3456789012',
  'Route 124',
  'route-124',
  54,
  'route',
  true,
  true,
  false
);

-- Route: Mossdeep City
INSERT INTO routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items)
VALUES (
  'f1a2b3c4-d5e6-7890-ab12-cd3456789012',
  'Mossdeep City',
  'mossdeep-city',
  55,
  'route',
  true,
  true,
  false
);

-- Route: Route 125
INSERT INTO routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items)
VALUES (
  'f1a2b3c4-d5e6-7890-ab12-cd3456789012',
  'Route 125',
  'route-125',
  56,
  'route',
  true,
  true,
  false
);

-- Route: Shoal Cave 1F
INSERT INTO routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items)
VALUES (
  'f1a2b3c4-d5e6-7890-ab12-cd3456789012',
  'Shoal Cave 1F',
  'shoal-cave-1f',
  57,
  'route',
  true,
  false,
  false
);

-- Route: Shoal Cave Ice Room
INSERT INTO routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items)
VALUES (
  'f1a2b3c4-d5e6-7890-ab12-cd3456789012',
  'Shoal Cave Ice Room',
  'shoal-cave-ice-room',
  58,
  'route',
  true,
  false,
  false
);

-- Route: Route 126
INSERT INTO routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items)
VALUES (
  'f1a2b3c4-d5e6-7890-ab12-cd3456789012',
  'Route 126',
  'route-126',
  59,
  'route',
  true,
  true,
  false
);

-- Route: Route 127
INSERT INTO routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items)
VALUES (
  'f1a2b3c4-d5e6-7890-ab12-cd3456789012',
  'Route 127',
  'route-127',
  60,
  'route',
  true,
  true,
  false
);

-- Route: Route 128
INSERT INTO routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items)
VALUES (
  'f1a2b3c4-d5e6-7890-ab12-cd3456789012',
  'Route 128',
  'route-128',
  61,
  'route',
  true,
  true,
  false
);

-- Route: Ever Grande City
INSERT INTO routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items)
VALUES (
  'f1a2b3c4-d5e6-7890-ab12-cd3456789012',
  'Ever Grande City',
  'ever-grande-city',
  62,
  'route',
  true,
  false,
  false
);

-- Route: Route 129
INSERT INTO routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items)
VALUES (
  'f1a2b3c4-d5e6-7890-ab12-cd3456789012',
  'Route 129',
  'route-129',
  63,
  'route',
  true,
  true,
  false
);

-- Route: Route 130
INSERT INTO routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items)
VALUES (
  'f1a2b3c4-d5e6-7890-ab12-cd3456789012',
  'Route 130',
  'route-130',
  64,
  'route',
  true,
  true,
  false
);

-- Route: Route 131
INSERT INTO routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items)
VALUES (
  'f1a2b3c4-d5e6-7890-ab12-cd3456789012',
  'Route 131',
  'route-131',
  65,
  'route',
  true,
  true,
  false
);

-- Route: Mossdeep Gym
INSERT INTO routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items)
VALUES (
  'f1a2b3c4-d5e6-7890-ab12-cd3456789012',
  'Mossdeep Gym',
  'mossdeep-gym',
  66,
  'route',
  false,
  true,
  false
);

-- Route: Pacifidlog Town
INSERT INTO routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items)
VALUES (
  'f1a2b3c4-d5e6-7890-ab12-cd3456789012',
  'Pacifidlog Town',
  'pacifidlog-town',
  67,
  'route',
  true,
  false,
  false
);

-- Route: Route 132
INSERT INTO routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items)
VALUES (
  'f1a2b3c4-d5e6-7890-ab12-cd3456789012',
  'Route 132',
  'route-132',
  68,
  'route',
  true,
  true,
  false
);

-- Route: Route 133
INSERT INTO routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items)
VALUES (
  'f1a2b3c4-d5e6-7890-ab12-cd3456789012',
  'Route 133',
  'route-133',
  69,
  'route',
  true,
  true,
  false
);

-- Route: Route 134
INSERT INTO routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items)
VALUES (
  'f1a2b3c4-d5e6-7890-ab12-cd3456789012',
  'Route 134',
  'route-134',
  70,
  'route',
  true,
  true,
  false
);

-- Route: Underwater 107
INSERT INTO routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items)
VALUES (
  'f1a2b3c4-d5e6-7890-ab12-cd3456789012',
  'Underwater 107',
  'underwater-107',
  71,
  'route',
  true,
  true,
  false
);

-- Route: Underwater 124
INSERT INTO routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items)
VALUES (
  'f1a2b3c4-d5e6-7890-ab12-cd3456789012',
  'Underwater 124',
  'underwater-124',
  72,
  'route',
  true,
  true,
  false
);

-- Route: Underwater 126
INSERT INTO routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items)
VALUES (
  'f1a2b3c4-d5e6-7890-ab12-cd3456789012',
  'Underwater 126',
  'underwater-126',
  73,
  'route',
  true,
  true,
  false
);

-- Route: Underwater 127
INSERT INTO routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items)
VALUES (
  'f1a2b3c4-d5e6-7890-ab12-cd3456789012',
  'Underwater 127',
  'underwater-127',
  74,
  'route',
  false,
  true,
  false
);

-- Route: Underwater 128
INSERT INTO routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items)
VALUES (
  'f1a2b3c4-d5e6-7890-ab12-cd3456789012',
  'Underwater 128',
  'underwater-128',
  75,
  'route',
  true,
  true,
  false
);

-- Route: Underwater 129
INSERT INTO routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items)
VALUES (
  'f1a2b3c4-d5e6-7890-ab12-cd3456789012',
  'Underwater 129',
  'underwater-129',
  76,
  'route',
  true,
  true,
  false
);

-- Route: Underwater 130
INSERT INTO routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items)
VALUES (
  'f1a2b3c4-d5e6-7890-ab12-cd3456789012',
  'Underwater 130',
  'underwater-130',
  77,
  'route',
  true,
  true,
  false
);

-- Route: Seafloor Cavern Out
INSERT INTO routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items)
VALUES (
  'f1a2b3c4-d5e6-7890-ab12-cd3456789012',
  'Seafloor Cavern Out',
  'seafloor-cavern-out',
  78,
  'route',
  true,
  false,
  false
);

-- Route: Seafloor Cavern Front Rooms
INSERT INTO routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items)
VALUES (
  'f1a2b3c4-d5e6-7890-ab12-cd3456789012',
  'Seafloor Cavern Front Rooms',
  'seafloor-cavern-front-rooms',
  79,
  'route',
  true,
  true,
  false
);

-- Route: Seafloor Cavern Water Rooms
INSERT INTO routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items)
VALUES (
  'f1a2b3c4-d5e6-7890-ab12-cd3456789012',
  'Seafloor Cavern Water Rooms',
  'seafloor-cavern-water-rooms',
  80,
  'route',
  true,
  false,
  false
);

-- Route: Seafloor Cavern Back Rooms
INSERT INTO routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items)
VALUES (
  'f1a2b3c4-d5e6-7890-ab12-cd3456789012',
  'Seafloor Cavern Back Rooms',
  'seafloor-cavern-back-rooms',
  81,
  'route',
  true,
  true,
  false
);

-- Route: Sootopolis City
INSERT INTO routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items)
VALUES (
  'f1a2b3c4-d5e6-7890-ab12-cd3456789012',
  'Sootopolis City',
  'sootopolis-city',
  82,
  'route',
  true,
  false,
  false
);

-- Route: Cave of Origin 1F
INSERT INTO routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items)
VALUES (
  'f1a2b3c4-d5e6-7890-ab12-cd3456789012',
  'Cave of Origin 1F',
  'cave-of-origin-1f',
  83,
  'route',
  true,
  false,
  false
);

-- Route: Cave of Origin Other
INSERT INTO routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items)
VALUES (
  'f1a2b3c4-d5e6-7890-ab12-cd3456789012',
  'Cave of Origin Other',
  'cave-of-origin-other',
  84,
  'route',
  true,
  false,
  false
);

-- Route: Soaring in the Sky
INSERT INTO routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items)
VALUES (
  'f1a2b3c4-d5e6-7890-ab12-cd3456789012',
  'Soaring in the Sky',
  'soaring-in-the-sky',
  85,
  'route',
  true,
  false,
  false
);

-- Route: Sootopolis Gym
INSERT INTO routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items)
VALUES (
  'f1a2b3c4-d5e6-7890-ab12-cd3456789012',
  'Sootopolis Gym',
  'sootopolis-gym',
  86,
  'route',
  true,
  true,
  false
);

-- Route: Meteor Falls B1F
INSERT INTO routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items)
VALUES (
  'f1a2b3c4-d5e6-7890-ab12-cd3456789012',
  'Meteor Falls B1F',
  'meteor-falls-b1f',
  87,
  'route',
  true,
  true,
  false
);

-- Route: Victory Road 1F
INSERT INTO routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items)
VALUES (
  'f1a2b3c4-d5e6-7890-ab12-cd3456789012',
  'Victory Road 1F',
  'victory-road-1f',
  88,
  'route',
  true,
  true,
  false
);

-- Route: Victory Road B1F
INSERT INTO routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items)
VALUES (
  'f1a2b3c4-d5e6-7890-ab12-cd3456789012',
  'Victory Road B1F',
  'victory-road-b1f',
  89,
  'route',
  true,
  true,
  false
);

-- Route: Victory Road 2F
INSERT INTO routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items)
VALUES (
  'f1a2b3c4-d5e6-7890-ab12-cd3456789012',
  'Victory Road 2F',
  'victory-road-2f',
  90,
  'route',
  true,
  true,
  false
);

-- Route: Pokemon League
INSERT INTO routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items)
VALUES (
  'f1a2b3c4-d5e6-7890-ab12-cd3456789012',
  'Pokemon League',
  'pokemon-league',
  91,
  'building',
  false,
  true,
  false
);

-- Route: Credits
INSERT INTO routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items)
VALUES (
  'f1a2b3c4-d5e6-7890-ab12-cd3456789012',
  'Credits',
  'credits',
  92,
  'route',
  false,
  true,
  false
);

-- Route: POST GAME
INSERT INTO routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items)
VALUES (
  'f1a2b3c4-d5e6-7890-ab12-cd3456789012',
  'POST GAME',
  'post-game',
  93,
  'route',
  false,
  false,
  false
);

-- Route: Rustboro City
INSERT INTO routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items)
VALUES (
  'f1a2b3c4-d5e6-7890-ab12-cd3456789012',
  'Rustboro City',
  'rustboro-city',
  94,
  'route',
  false,
  true,
  false
);

-- Route: Sky Pillar
INSERT INTO routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items)
VALUES (
  'f1a2b3c4-d5e6-7890-ab12-cd3456789012',
  'Sky Pillar',
  'sky-pillar',
  95,
  'route',
  true,
  true,
  false
);

-- Route: Battle Resort
INSERT INTO routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items)
VALUES (
  'f1a2b3c4-d5e6-7890-ab12-cd3456789012',
  'Battle Resort',
  'battle-resort',
  96,
  'route',
  true,
  true,
  false
);

-- ===========================================
-- STEP 3: ENCOUNTER DATA (1098 total)
-- ===========================================

CREATE TEMP TABLE _enc (
  slug TEXT,
  dex INT,
  method TEXT,
  rate DECIMAL(5,2),
  lmin INT,
  lmax INT
);

INSERT INTO _enc VALUES
('littleroot-town', 252, 'gift', NULL, 5, 5),
('littleroot-town', 255, 'gift', NULL, 5, 5),
('littleroot-town', 258, 'gift', NULL, 5, 5),
('route-101', 16, 'walking', NULL, 5, 5),
('route-101', 19, 'walking', NULL, 5, 5),
('route-101', 161, 'walking', NULL, 5, 5),
('route-101', 163, 'walking', NULL, 5, 5),
('route-101', 261, 'walking', NULL, 5, 5),
('route-101', 263, 'walking', NULL, 5, 5),
('route-101', 396, 'walking', NULL, 5, 5),
('route-101', 399, 'walking', NULL, 5, 5),
('route-101', 659, 'walking', NULL, 5, 5),
('route-101', 661, 'walking', NULL, 5, 5),
('route-101', 264, 'dexnav', NULL, 50, 50),
('route-101', 152, 'horde', NULL, 5, 5),
('route-101', 653, 'horde', NULL, 5, 5),
('route-103', 21, 'walking', NULL, 5, 5),
('route-103', 29, 'walking', NULL, 5, 5),
('route-103', 29, 'walking', NULL, 5, 5),
('route-103', 56, 'walking', NULL, 5, 5),
('route-103', 422, 'walking', NULL, 5, 5),
('route-103', 447, 'walking', NULL, 5, 5),
('route-103', 504, 'walking', NULL, 5, 5),
('route-103', 506, 'walking', NULL, 5, 5),
('route-103', 509, 'walking', NULL, 5, 5),
('route-103', 519, 'walking', NULL, 5, 5),
('route-103', 570, 'walking', NULL, 5, 5),
('route-103', 571, 'dexnav', NULL, 50, 50),
('route-103', 7, 'horde', NULL, 5, 5),
('route-103', 393, 'horde', NULL, 5, 5),
('route-103', 418, 'surfing', NULL, 25, 35),
('route-103', 419, 'surfing', NULL, 25, 35),
('route-103', 60, 'fishing_old', NULL, 15, 15),
('route-103', 60, 'fishing_good', NULL, 35, 35),
('route-103', 61, 'fishing_super', NULL, 55, 55),
('route-102', 10, 'walking', NULL, 6, 6),
('route-102', 13, 'walking', NULL, 6, 6),
('route-102', 69, 'walking', NULL, 6, 6),
('route-102', 265, 'walking', NULL, 6, 6),
('route-102', 270, 'walking', NULL, 6, 6),
('route-102', 273, 'walking', NULL, 6, 6),
('route-102', 280, 'walking', NULL, 6, 6),
('route-102', 283, 'walking', NULL, 6, 6),
('route-102', 535, 'walking', NULL, 6, 6),
('route-102', 574, 'walking', NULL, 6, 6),
('route-102', 577, 'walking', NULL, 6, 6),
('route-102', 70, 'dexnav', NULL, 50, 50),
('route-102', 4, 'horde', NULL, 6, 6),
('route-102', 650, 'horde', NULL, 6, 6),
('route-102', 283, 'surfing', NULL, 25, 35),
('route-102', 284, 'surfing', NULL, 25, 35),
('route-102', 341, 'fishing_old', NULL, 15, 15),
('route-102', 341, 'fishing_good', NULL, 35, 35),
('route-102', 342, 'fishing_super', NULL, 55, 55),
('petalburg-city', 183, 'surfing', NULL, 25, 35),
('petalburg-city', 184, 'surfing', NULL, 25, 35),
('petalburg-city', 118, 'fishing_old', NULL, 15, 15),
('petalburg-city', 118, 'fishing_good', NULL, 35, 35),
('petalburg-city', 119, 'fishing_super', NULL, 55, 55),
('route-104-south', 54, 'walking', NULL, 8, 8),
('route-104-south', 79, 'walking', NULL, 8, 8),
('route-104-south', 102, 'walking', NULL, 8, 8),
('route-104-south', 278, 'walking', NULL, 8, 8),
('route-104-south', 276, 'walking', NULL, 8, 8),
('route-104-south', 298, 'walking', NULL, 8, 8),
('route-104-south', 540, 'walking', NULL, 8, 8),
('route-104-south', 543, 'walking', NULL, 8, 8),
('route-104-south', 559, 'walking', NULL, 8, 8),
('route-104-south', 682, 'walking', NULL, 8, 8),
('route-104-south', 684, 'walking', NULL, 8, 8),
('route-104-south', 103, 'dexnav', NULL, 50, 50),
('route-104-south', 158, 'horde', NULL, 8, 8),
('route-104-south', 501, 'horde', NULL, 8, 8),
('route-104-south', 278, 'surfing', NULL, 25, 35),
('route-104-south', 370, 'fishing_old', NULL, 15, 15),
('route-104-south', 370, 'fishing_good', NULL, 35, 35),
('route-104-south', 370, 'fishing_super', NULL, 55, 55),
('petalburg-woods', 48, 'walking', NULL, 9, 9),
('petalburg-woods', 172, 'walking', NULL, 9, 9),
('petalburg-woods', 285, 'walking', NULL, 9, 9),
('petalburg-woods', 287, 'walking', NULL, 9, 9),
('petalburg-woods', 511, 'walking', NULL, 9, 9),
('petalburg-woods', 513, 'walking', NULL, 9, 9),
('petalburg-woods', 515, 'walking', NULL, 9, 9),
('petalburg-woods', 546, 'walking', NULL, 9, 9),
('petalburg-woods', 548, 'walking', NULL, 9, 9),
('petalburg-woods', 708, 'walking', NULL, 9, 9),
('petalburg-woods', 710, 'walking', NULL, 9, 9),
('petalburg-woods', 286, 'dexnav', NULL, 50, 50),
('petalburg-woods', 1, 'horde', NULL, 9, 9),
('petalburg-woods', 495, 'horde', NULL, 9, 9),
('route-104-north', 165, 'walking', NULL, 10, 10),
('route-104-north', 175, 'walking', NULL, 10, 10),
('route-104-north', 187, 'walking', NULL, 10, 10),
('route-104-north', 209, 'walking', NULL, 10, 10),
('route-104-north', 401, 'walking', NULL, 10, 10),
('route-104-north', 406, 'walking', NULL, 10, 10),
('route-104-north', 412, 'walking', NULL, 10, 10),
('route-104-north', 415, 'walking', NULL, 10, 10),
('route-104-north', 427, 'walking', NULL, 10, 10),
('route-104-north', 664, 'walking', NULL, 10, 10),
('route-104-north', 669, 'walking', NULL, 10, 10),
('route-104-north', 416, 'dexnav', NULL, 50, 50),
('route-104-north', 387, 'horde', NULL, 10, 10),
('route-104-north', 656, 'horde', NULL, 10, 10),
('route-104-north', 550, 'surfing', NULL, 25, 35),
('route-104-north', 550, 'fishing_old', NULL, 15, 15),
('route-104-north', 550, 'fishing_good', NULL, 35, 35),
('route-104-north', 550, 'fishing_super', NULL, 55, 55),
('route-116', 58, 'walking', NULL, 10, 10),
('route-116', 84, 'walking', NULL, 10, 10),
('route-116', 177, 'walking', NULL, 10, 10),
('route-116', 179, 'walking', NULL, 10, 10),
('route-116', 228, 'walking', NULL, 10, 10),
('route-116', 231, 'walking', NULL, 10, 10),
('route-116', 300, 'walking', NULL, 10, 10),
('route-116', 403, 'walking', NULL, 10, 10),
('route-116', 667, 'walking', NULL, 10, 10),
('route-116', 674, 'walking', NULL, 10, 10),
('route-116', 676, 'walking', NULL, 10, 10),
('route-116', 301, 'dexnav', NULL, 50, 50),
('route-116', 133, 'horde', NULL, 10, 10),
('rusturf-tunnel', 46, 'walking', NULL, 10, 10),
('rusturf-tunnel', 66, 'walking', NULL, 10, 10),
('rusturf-tunnel', 92, 'walking', NULL, 10, 10),
('rusturf-tunnel', 167, 'walking', NULL, 10, 10),
('rusturf-tunnel', 216, 'walking', NULL, 10, 10),
('rusturf-tunnel', 290, 'walking', NULL, 10, 10),
('rusturf-tunnel', 293, 'walking', NULL, 10, 10),
('rusturf-tunnel', 529, 'walking', NULL, 10, 10),
('rusturf-tunnel', 532, 'walking', NULL, 10, 10),
('rusturf-tunnel', 595, 'walking', NULL, 10, 10),
('rusturf-tunnel', 155, 'horde', NULL, 10, 10),
('rusturf-tunnel', 390, 'horde', NULL, 10, 10),
('rusturf-tunnel', 74, 'rock_smash', NULL, 20, 20),
('rusturf-tunnel', 557, 'rock_smash', NULL, 20, 20),
('route-106', 594, 'dexnav', NULL, 50, 50),
('route-106', 278, 'surfing', NULL, 25, 35),
('route-106', 72, 'surfing', NULL, 25, 35),
('route-106', 592, 'surfing', NULL, 25, 35),
('route-106', 279, 'surfing', NULL, 25, 35),
('route-106', 98, 'fishing_old', NULL, 15, 15),
('route-106', 120, 'fishing_old', NULL, 15, 15),
('route-106', 222, 'fishing_old', NULL, 15, 15),
('route-106', 98, 'fishing_good', NULL, 35, 35),
('route-106', 120, 'fishing_good', NULL, 35, 35),
('route-106', 222, 'fishing_good', NULL, 35, 35),
('route-106', 99, 'fishing_super', NULL, 55, 55),
('route-106', 121, 'fishing_super', NULL, 55, 55),
('route-106', 222, 'fishing_super', NULL, 55, 55),
('dewford-town', 278, 'surfing', NULL, 25, 35),
('dewford-town', 72, 'surfing', NULL, 25, 35),
('dewford-town', 592, 'surfing', NULL, 25, 35),
('dewford-town', 279, 'surfing', NULL, 25, 35),
('dewford-town', 90, 'fishing_old', NULL, 15, 15),
('dewford-town', 366, 'fishing_old', NULL, 15, 15),
('dewford-town', 222, 'fishing_old', NULL, 15, 15),
('dewford-town', 90, 'fishing_good', NULL, 35, 35),
('dewford-town', 366, 'fishing_good', NULL, 35, 35),
('dewford-town', 222, 'fishing_good', NULL, 35, 35),
('dewford-town', 91, 'fishing_super', NULL, 55, 55),
('dewford-town', 367, 'fishing_super', NULL, 55, 55),
('dewford-town', 222, 'fishing_super', NULL, 55, 55),
('route-107', 594, 'dexnav', NULL, 50, 50),
('route-107', 278, 'surfing', NULL, 25, 35),
('route-107', 72, 'surfing', NULL, 25, 35),
('route-107', 592, 'surfing', NULL, 25, 35),
('route-107', 279, 'surfing', NULL, 25, 35),
('route-107', 692, 'fishing_old', NULL, 15, 15),
('route-107', 690, 'fishing_old', NULL, 15, 15),
('route-107', 222, 'fishing_old', NULL, 15, 15),
('route-107', 692, 'fishing_good', NULL, 35, 35),
('route-107', 690, 'fishing_good', NULL, 35, 35),
('route-107', 222, 'fishing_good', NULL, 35, 35),
('route-107', 693, 'fishing_super', NULL, 55, 55),
('route-107', 691, 'fishing_super', NULL, 55, 55),
('route-107', 222, 'fishing_super', NULL, 55, 55),
('granite-cave-1f', 41, 'walking', NULL, 13, 13),
('granite-cave-1f', 63, 'walking', NULL, 13, 13),
('granite-cave-1f', 74, 'walking', NULL, 13, 13),
('granite-cave-1f', 95, 'walking', NULL, 13, 13),
('granite-cave-1f', 104, 'walking', NULL, 13, 13),
('granite-cave-1f', 111, 'walking', NULL, 13, 13),
('granite-cave-1f', 296, 'walking', NULL, 13, 13),
('granite-cave-1f', 304, 'walking', NULL, 13, 13),
('granite-cave-1f', 527, 'walking', NULL, 13, 13),
('granite-cave-1f', 610, 'walking', NULL, 13, 13),
('granite-cave-1f', 476, 'dexnav', NULL, 50, 50),
('granite-cave-1f', 498, 'horde', NULL, 12, 12),
('route-109', 594, 'dexnav', NULL, 50, 50),
('route-109', 278, 'surfing', NULL, 25, 35),
('route-109', 72, 'surfing', NULL, 25, 35),
('route-109', 592, 'surfing', NULL, 25, 35),
('route-109', 279, 'surfing', NULL, 25, 35),
('route-109', 456, 'fishing_old', NULL, 15, 15),
('route-109', 170, 'fishing_old', NULL, 15, 15),
('route-109', 222, 'fishing_old', NULL, 15, 15),
('route-109', 456, 'fishing_good', NULL, 35, 35),
('route-109', 170, 'fishing_good', NULL, 35, 35),
('route-109', 222, 'fishing_good', NULL, 35, 35),
('route-109', 457, 'fishing_super', NULL, 55, 55),
('route-109', 171, 'fishing_super', NULL, 55, 55),
('route-109', 222, 'fishing_super', NULL, 55, 55),
('slateport-city', 489, 'surfing', NULL, 40, 40),
('slateport-city', 320, 'fishing_old', NULL, 15, 15),
('slateport-city', 116, 'fishing_old', NULL, 15, 15),
('slateport-city', 147, 'fishing_old', NULL, 15, 15),
('slateport-city', 320, 'fishing_good', NULL, 35, 35),
('slateport-city', 116, 'fishing_good', NULL, 35, 35),
('slateport-city', 147, 'fishing_good', NULL, 35, 35),
('slateport-city', 320, 'fishing_super', NULL, 55, 55),
('slateport-city', 117, 'fishing_super', NULL, 55, 55),
('slateport-city', 148, 'fishing_super', NULL, 55, 55),
('route-110', 43, 'walking', NULL, 17, 17),
('route-110', 81, 'walking', NULL, 17, 17),
('route-110', 100, 'walking', NULL, 17, 17),
('route-110', 194, 'walking', NULL, 17, 17),
('route-110', 309, 'walking', NULL, 17, 17),
('route-110', 316, 'walking', NULL, 17, 17),
('route-110', 425, 'walking', NULL, 17, 17),
('route-110', 568, 'walking', NULL, 17, 17),
('route-110', 572, 'walking', NULL, 17, 17),
('route-110', 672, 'walking', NULL, 17, 17),
('route-110', 573, 'dexnav', NULL, 50, 50),
('route-110', 311, 'horde', NULL, 12, 12),
('route-110', 312, 'horde', NULL, 12, 12),
('route-110', 194, 'surfing', NULL, 25, 35),
('route-110', 195, 'surfing', NULL, 25, 35),
('route-110', 223, 'fishing_old', NULL, 20, 20),
('route-110', 211, 'fishing_old', NULL, 20, 20),
('route-110', 223, 'fishing_good', NULL, 35, 35),
('route-110', 211, 'fishing_good', NULL, 35, 35),
('route-110', 224, 'fishing_super', NULL, 55, 55),
('route-110', 211, 'fishing_super', NULL, 55, 55),
('route-117', 83, 'walking', NULL, 18, 18),
('route-117', 235, 'walking', NULL, 18, 18),
('route-117', 313, 'walking', NULL, 18, 18),
('route-117', 314, 'walking', NULL, 18, 18),
('route-117', 315, 'walking', NULL, 18, 18),
('route-117', 420, 'walking', NULL, 18, 18),
('route-117', 438, 'walking', NULL, 18, 18),
('route-117', 439, 'walking', NULL, 18, 18),
('route-117', 113, 'walking', NULL, 18, 18),
('route-117', 580, 'walking', NULL, 18, 18),
('route-117', 585, 'walking', NULL, 18, 18),
('route-117', 586, 'dexnav', NULL, 50, 50),
('route-117', 440, 'horde', NULL, 12, 12),
('route-117', 580, 'surfing', NULL, 25, 35),
('route-117', 581, 'surfing', NULL, 25, 35),
('route-117', 60, 'fishing_old', NULL, 20, 20),
('route-117', 60, 'fishing_good', NULL, 35, 35),
('route-117', 61, 'fishing_super', NULL, 55, 55),
('granite-cave-b1f', 64, 'walking', NULL, 18, 18),
('granite-cave-b1f', 95, 'walking', NULL, 18, 18),
('granite-cave-b1f', 104, 'walking', NULL, 18, 18),
('granite-cave-b1f', 111, 'walking', NULL, 18, 18),
('granite-cave-b1f', 296, 'walking', NULL, 18, 18),
('granite-cave-b1f', 302, 'walking', NULL, 18, 18),
('granite-cave-b1f', 303, 'walking', NULL, 18, 18),
('granite-cave-b1f', 304, 'walking', NULL, 18, 18),
('granite-cave-b1f', 524, 'walking', NULL, 18, 18),
('granite-cave-b1f', 610, 'walking', NULL, 18, 18),
('granite-cave-b1f', 476, 'dexnav', NULL, 50, 50),
('granite-cave-b1f', 41, 'horde', NULL, 12, 12),
('granite-cave-b2f', 64, 'walking', NULL, 20, 20),
('granite-cave-b2f', 75, 'walking', NULL, 20, 20),
('granite-cave-b2f', 105, 'walking', NULL, 20, 20),
('granite-cave-b2f', 115, 'walking', NULL, 20, 20),
('granite-cave-b2f', 208, 'walking', NULL, 20, 20),
('granite-cave-b2f', 297, 'walking', NULL, 20, 20),
('granite-cave-b2f', 302, 'walking', NULL, 20, 20),
('granite-cave-b2f', 303, 'walking', NULL, 20, 20),
('granite-cave-b2f', 305, 'walking', NULL, 20, 20),
('granite-cave-b2f', 525, 'walking', NULL, 20, 20),
('granite-cave-b2f', 476, 'dexnav', NULL, 50, 50),
('granite-cave-b2f', 41, 'horde', NULL, 12, 12),
('granite-cave-b2f', 299, 'rock_smash', NULL, 20, 20),
('route-111', 74, 'rock_smash', NULL, 22, 22),
('route-111', 688, 'rock_smash', NULL, 22, 22),
('route-111', 550, 'surfing', NULL, 25, 35),
('route-111', 129, 'fishing_old', NULL, 20, 20),
('route-111', 339, 'fishing_old', NULL, 20, 20),
('route-111', 129, 'fishing_good', NULL, 35, 35),
('route-111', 339, 'fishing_good', NULL, 35, 35),
('route-111', 130, 'fishing_super', NULL, 55, 55),
('route-111', 340, 'fishing_super', NULL, 55, 55),
('route-112-south', 52, 'walking', NULL, 23, 23),
('route-112-south', 77, 'walking', NULL, 23, 23),
('route-112-south', 123, 'walking', NULL, 23, 23),
('route-112-south', 128, 'walking', NULL, 23, 23),
('route-112-south', 203, 'walking', NULL, 23, 23),
('route-112-south', 234, 'walking', NULL, 23, 23),
('route-112-south', 241, 'walking', NULL, 23, 23),
('route-112-south', 522, 'walking', NULL, 23, 23),
('route-112-south', 631, 'walking', NULL, 23, 23),
('route-112-south', 632, 'walking', NULL, 23, 23),
('route-112-south', 212, 'dexnav', NULL, 50, 50),
('route-112-south', 632, 'horde', NULL, 15, 15),
('fiery-path', 50, 'walking', NULL, 23, 23),
('fiery-path', 88, 'walking', NULL, 23, 23),
('fiery-path', 109, 'walking', NULL, 23, 23),
('fiery-path', 206, 'walking', NULL, 23, 23),
('fiery-path', 218, 'walking', NULL, 23, 23),
('fiery-path', 322, 'walking', NULL, 23, 23),
('fiery-path', 324, 'walking', NULL, 23, 23),
('fiery-path', 353, 'walking', NULL, 23, 23),
('fiery-path', 355, 'walking', NULL, 23, 23),
('fiery-path', 607, 'walking', NULL, 23, 23),
('fiery-path', 219, 'dexnav', NULL, 50, 50),
('fiery-path', 206, 'horde', NULL, 15, 15),
('route-112-north', 23, 'walking', NULL, 24, 24),
('route-112-north', 37, 'walking', NULL, 24, 24),
('route-112-north', 127, 'walking', NULL, 24, 24),
('route-112-north', 214, 'walking', NULL, 24, 24),
('route-112-north', 239, 'walking', NULL, 24, 24),
('route-112-north', 240, 'walking', NULL, 24, 24),
('route-112-north', 538, 'walking', NULL, 24, 24),
('route-112-north', 539, 'walking', NULL, 24, 24),
('route-112-north', 619, 'walking', NULL, 24, 24),
('route-112-north', 624, 'walking', NULL, 24, 24),
('route-112-north', 38, 'dexnav', NULL, 50, 50),
('route-112-north', 236, 'horde', NULL, 15, 15),
('route-113', 27, 'walking', NULL, 24, 24),
('route-113', 227, 'walking', NULL, 24, 24),
('route-113', 327, 'walking', NULL, 24, 24),
('route-113', 436, 'walking', NULL, 24, 24),
('route-113', 446, 'walking', NULL, 24, 24),
('route-113', 622, 'walking', NULL, 24, 24),
('route-113', 626, 'walking', NULL, 24, 24),
('route-113', 677, 'walking', NULL, 24, 24),
('route-113', 679, 'walking', NULL, 24, 24),
('route-113', 707, 'walking', NULL, 24, 24),
('route-113', 143, 'dexnav', NULL, 50, 50),
('route-113', 227, 'horde', NULL, 15, 15),
('route-114', 96, 'walking', NULL, 25, 25),
('route-114', 108, 'walking', NULL, 25, 25),
('route-114', 200, 'walking', NULL, 25, 25),
('route-114', 333, 'walking', NULL, 25, 25),
('route-114', 335, 'walking', NULL, 25, 25),
('route-114', 336, 'walking', NULL, 25, 25),
('route-114', 451, 'walking', NULL, 25, 25),
('route-114', 582, 'walking', NULL, 25, 25),
('route-114', 588, 'walking', NULL, 25, 25),
('route-114', 616, 'walking', NULL, 25, 25),
('route-114', 463, 'dexnav', NULL, 50, 50),
('route-114', 582, 'horde', NULL, 15, 15),
('route-114', 75, 'rock_smash', NULL, 25, 25),
('route-114', 525, 'rock_smash', NULL, 25, 25),
('route-114', 187, 'surfing', NULL, 25, 35),
('route-114', 188, 'surfing', NULL, 25, 35),
('route-114', 211, 'fishing_old', NULL, 25, 25),
('route-114', 211, 'fishing_good', NULL, 35, 35),
('route-114', 211, 'fishing_super', NULL, 55, 55),
('meteor-falls-1f', 35, 'walking', NULL, 25, 25),
('meteor-falls-1f', 42, 'walking', NULL, 25, 25),
('meteor-falls-1f', 246, 'walking', NULL, 25, 25),
('meteor-falls-1f', 337, 'walking', NULL, 25, 25),
('meteor-falls-1f', 338, 'walking', NULL, 25, 25),
('meteor-falls-1f', 371, 'walking', NULL, 25, 25),
('meteor-falls-1f', 374, 'walking', NULL, 25, 25),
('meteor-falls-1f', 597, 'walking', NULL, 25, 25),
('meteor-falls-1f', 621, 'walking', NULL, 25, 25),
('meteor-falls-1f', 633, 'walking', NULL, 25, 25),
('meteor-falls-1f', 703, 'walking', NULL, 25, 25),
('meteor-falls-1f', 36, 'dexnav', NULL, 50, 50),
('meteor-falls-1f', 173, 'horde', NULL, 16, 16),
('meteor-falls-1f', 42, 'surfing', NULL, 25, 35),
('meteor-falls-1f', 147, 'fishing_old', NULL, 25, 25),
('meteor-falls-1f', 147, 'fishing_good', NULL, 35, 35),
('meteor-falls-1f', 148, 'fishing_super', NULL, 55, 55),
('jagged-pass', 57, 'walking', NULL, 28, 28),
('jagged-pass', 190, 'walking', NULL, 28, 28),
('jagged-pass', 198, 'walking', NULL, 28, 28),
('jagged-pass', 204, 'walking', NULL, 28, 28),
('jagged-pass', 207, 'walking', NULL, 28, 28),
('jagged-pass', 307, 'walking', NULL, 28, 28),
('jagged-pass', 325, 'walking', NULL, 28, 28),
('jagged-pass', 431, 'walking', NULL, 28, 28),
('jagged-pass', 434, 'walking', NULL, 28, 28),
('jagged-pass', 453, 'walking', NULL, 28, 28),
('jagged-pass', 326, 'dexnav', NULL, 50, 50),
('jagged-pass', 56, 'horde', NULL, 17, 17),
('lavaridge-gym', 28, 'walking', NULL, 31, 31),
('lavaridge-gym', 328, 'walking', NULL, 31, 31),
('lavaridge-gym', 331, 'walking', NULL, 31, 31),
('lavaridge-gym', 343, 'walking', NULL, 31, 31),
('lavaridge-gym', 443, 'walking', NULL, 31, 31),
('lavaridge-gym', 449, 'walking', NULL, 31, 31),
('lavaridge-gym', 551, 'walking', NULL, 31, 31),
('lavaridge-gym', 554, 'walking', NULL, 31, 31),
('lavaridge-gym', 556, 'walking', NULL, 31, 31),
('lavaridge-gym', 561, 'walking', NULL, 31, 31),
('lavaridge-gym', 694, 'walking', NULL, 31, 31),
('lavaridge-gym', 329, 'dexnav', NULL, 50, 50),
('lavaridge-gym', 27, 'horde', NULL, 18, 18),
('route-105', 594, 'dexnav', NULL, 50, 50),
('route-105', 278, 'surfing', NULL, 25, 35),
('route-105', 72, 'surfing', NULL, 25, 35),
('route-105', 592, 'surfing', NULL, 25, 35),
('route-105', 279, 'surfing', NULL, 25, 35),
('route-105', 98, 'fishing_old', NULL, 15, 15),
('route-105', 120, 'fishing_old', NULL, 15, 15),
('route-105', 222, 'fishing_old', NULL, 15, 15),
('route-105', 98, 'fishing_good', NULL, 35, 35),
('route-105', 120, 'fishing_good', NULL, 35, 35),
('route-105', 222, 'fishing_good', NULL, 35, 35),
('route-105', 99, 'fishing_super', NULL, 55, 55),
('route-105', 121, 'fishing_super', NULL, 55, 55),
('route-105', 222, 'fishing_super', NULL, 55, 55),
('route-108', 594, 'dexnav', NULL, 50, 50),
('route-108', 458, 'surfing', NULL, 25, 40),
('route-108', 226, 'surfing', NULL, 25, 40),
('route-108', 73, 'surfing', NULL, 25, 40),
('route-108', 593, 'surfing', NULL, 25, 40),
('route-108', 456, 'fishing_old', NULL, 15, 15),
('route-108', 170, 'fishing_old', NULL, 15, 15),
('route-108', 222, 'fishing_old', NULL, 15, 15),
('route-108', 456, 'fishing_good', NULL, 35, 35),
('route-108', 170, 'fishing_good', NULL, 35, 35),
('route-108', 222, 'fishing_good', NULL, 35, 35),
('route-108', 457, 'fishing_super', NULL, 55, 55),
('route-108', 171, 'fishing_super', NULL, 55, 55),
('route-108', 222, 'fishing_super', NULL, 55, 55),
('sea-mauville-outside', 86, 'surfing', NULL, 25, 40),
('sea-mauville-outside', 363, 'surfing', NULL, 25, 40),
('sea-mauville-outside', 87, 'surfing', NULL, 25, 40),
('sea-mauville-outside', 131, 'surfing', NULL, 25, 40),
('sea-mauville-outside', 90, 'fishing_old', NULL, 15, 15),
('sea-mauville-outside', 320, 'fishing_old', NULL, 15, 15),
('sea-mauville-outside', 90, 'fishing_good', NULL, 35, 35),
('sea-mauville-outside', 320, 'fishing_good', NULL, 35, 35),
('sea-mauville-outside', 90, 'fishing_super', NULL, 55, 55),
('sea-mauville-outside', 320, 'fishing_super', NULL, 55, 55),
('sea-mauville-inside', 615, 'surfing', NULL, 30, 40),
('sea-mauville-inside', 90, 'fishing_old', NULL, 15, 15),
('sea-mauville-inside', 320, 'fishing_old', NULL, 15, 15),
('sea-mauville-inside', 90, 'fishing_good', NULL, 35, 35),
('sea-mauville-inside', 320, 'fishing_good', NULL, 35, 35),
('sea-mauville-inside', 90, 'fishing_super', NULL, 55, 55),
('sea-mauville-inside', 320, 'fishing_super', NULL, 55, 55),
('route-115', 39, 'walking', NULL, 35, 35),
('route-115', 132, 'walking', NULL, 35, 35),
('route-115', 114, 'walking', NULL, 35, 35),
('route-115', 191, 'walking', NULL, 35, 35),
('route-115', 193, 'walking', NULL, 35, 35),
('route-115', 277, 'walking', NULL, 35, 35),
('route-115', 517, 'walking', NULL, 35, 35),
('route-115', 531, 'walking', NULL, 35, 35),
('route-115', 670, 'walking', NULL, 35, 35),
('route-115', 701, 'walking', NULL, 35, 35),
('route-115', 469, 'dexnav', NULL, 50, 50),
('route-115', 174, 'horde', NULL, 22, 22),
('route-115', 132, 'horde', NULL, 22, 22),
('route-115', 72, 'surfing', NULL, 25, 35),
('route-115', 73, 'surfing', NULL, 25, 35),
('route-115', 129, 'fishing_old', NULL, 15, 15),
('route-115', 129, 'fishing_good', NULL, 35, 35),
('route-115', 130, 'fishing_super', NULL, 55, 55),
('new-mauville', 25, 'walking', NULL, 35, 35),
('new-mauville', 82, 'walking', NULL, 35, 35),
('new-mauville', 89, 'walking', NULL, 35, 35),
('new-mauville', 101, 'walking', NULL, 35, 35),
('new-mauville', 110, 'walking', NULL, 35, 35),
('new-mauville', 125, 'walking', NULL, 35, 35),
('new-mauville', 137, 'walking', NULL, 35, 35),
('new-mauville', 479, 'walking', NULL, 35, 35),
('new-mauville', 569, 'walking', NULL, 35, 35),
('new-mauville', 600, 'walking', NULL, 35, 35),
('new-mauville', 603, 'walking', NULL, 35, 35),
('new-mauville', 599, 'horde', NULL, 23, 23),
('new-mauville', 602, 'horde', NULL, 23, 23),
('route-118', 55, 'walking', NULL, 33, 33),
('route-118', 80, 'walking', NULL, 33, 33),
('route-118', 264, 'walking', NULL, 33, 33),
('route-118', 310, 'walking', NULL, 33, 33),
('route-118', 404, 'walking', NULL, 33, 33),
('route-118', 417, 'walking', NULL, 33, 33),
('route-118', 441, 'walking', NULL, 33, 33),
('route-118', 587, 'walking', NULL, 33, 33),
('route-118', 686, 'walking', NULL, 33, 33),
('route-118', 702, 'walking', NULL, 33, 33),
('route-118', 55, 'walking', NULL, 36, 36),
('route-118', 80, 'walking', NULL, 36, 36),
('route-118', 264, 'walking', NULL, 36, 36),
('route-118', 310, 'walking', NULL, 36, 36),
('route-118', 404, 'walking', NULL, 36, 36),
('route-118', 417, 'walking', NULL, 36, 36),
('route-118', 441, 'walking', NULL, 36, 36),
('route-118', 587, 'walking', NULL, 36, 36),
('route-118', 687, 'walking', NULL, 36, 36),
('route-118', 702, 'walking', NULL, 36, 36),
('route-118', 199, 'dexnav', NULL, 50, 50),
('route-118', 259, 'horde', NULL, 30, 30),
('route-118', 278, 'surfing', NULL, 25, 35),
('route-118', 279, 'surfing', NULL, 25, 35),
('route-118', 318, 'fishing_old', NULL, 20, 20),
('route-118', 349, 'fishing_old', NULL, 20, 20),
('route-118', 318, 'fishing_good', NULL, 35, 35),
('route-118', 349, 'fishing_good', NULL, 35, 35),
('route-118', 319, 'fishing_super', NULL, 55, 55),
('southern-island', 24, 'walking', NULL, 36, 36),
('southern-island', 44, 'walking', NULL, 36, 36),
('southern-island', 70, 'walking', NULL, 36, 36),
('southern-island', 195, 'walking', NULL, 36, 36),
('southern-island', 357, 'walking', NULL, 36, 36),
('southern-island', 452, 'walking', NULL, 36, 36),
('southern-island', 455, 'walking', NULL, 36, 36),
('southern-island', 590, 'walking', NULL, 36, 36),
('southern-island', 591, 'walking', NULL, 36, 36),
('southern-island', 705, 'walking', NULL, 36, 36),
('southern-island', 253, 'horde', NULL, 30, 30),
('southern-island', 704, 'surfing', NULL, 30, 40),
('southern-island', 618, 'surfing', NULL, 30, 40),
('southern-island', 349, 'fishing_old', NULL, 15, 15),
('southern-island', 349, 'fishing_good', NULL, 35, 35),
('southern-island', 349, 'fishing_super', NULL, 55, 55),
('southern-island', 350, 'fishing_super', NULL, 55, 55),
('weather-institute', 24, 'walking', NULL, 38, 38),
('weather-institute', 44, 'walking', NULL, 38, 38),
('weather-institute', 70, 'walking', NULL, 38, 38),
('weather-institute', 195, 'walking', NULL, 38, 38),
('weather-institute', 357, 'walking', NULL, 38, 38),
('weather-institute', 452, 'walking', NULL, 38, 38),
('weather-institute', 455, 'walking', NULL, 38, 38),
('weather-institute', 590, 'walking', NULL, 38, 38),
('weather-institute', 591, 'walking', NULL, 38, 38),
('weather-institute', 705, 'walking', NULL, 38, 38),
('weather-institute', 253, 'horde', NULL, 30, 30),
('weather-institute', 704, 'surfing', NULL, 30, 40),
('weather-institute', 618, 'surfing', NULL, 30, 40),
('weather-institute', 349, 'fishing_old', NULL, 15, 15),
('weather-institute', 349, 'fishing_good', NULL, 35, 35),
('weather-institute', 349, 'fishing_super', NULL, 55, 55),
('weather-institute', 350, 'fishing_super', NULL, 55, 55),
('fortree-city', 334, 'walking', NULL, 38, 38),
('fortree-city', 359, 'walking', NULL, 38, 38),
('fortree-city', 426, 'walking', NULL, 38, 38),
('fortree-city', 432, 'walking', NULL, 38, 38),
('fortree-city', 435, 'walking', NULL, 38, 38),
('fortree-city', 560, 'walking', NULL, 38, 38),
('fortree-city', 620, 'walking', NULL, 38, 38),
('fortree-city', 625, 'walking', NULL, 38, 38),
('fortree-city', 627, 'walking', NULL, 38, 38),
('fortree-city', 629, 'walking', NULL, 38, 38),
('fortree-city', 256, 'horde', NULL, 30, 30),
('fortree-city', 418, 'surfing', NULL, 30, 40),
('fortree-city', 419, 'surfing', NULL, 30, 40),
('fortree-city', 339, 'fishing_old', NULL, 15, 15),
('fortree-city', 339, 'fishing_good', NULL, 35, 35),
('fortree-city', 340, 'fishing_super', NULL, 55, 55),
('scorched-slab', 41, 'walking', NULL, 35, 35),
('scorched-slab', 95, 'walking', NULL, 35, 35),
('scorched-slab', 111, 'walking', NULL, 35, 35),
('scorched-slab', 304, 'walking', NULL, 35, 35),
('scorched-slab', 527, 'walking', NULL, 35, 35),
('scorched-slab', 529, 'walking', NULL, 35, 35),
('scorched-slab', 532, 'walking', NULL, 35, 35),
('scorched-slab', 610, 'walking', NULL, 35, 35),
('scorched-slab', 636, 'walking', NULL, 35, 35),
('scorched-slab', 714, 'walking', NULL, 35, 35),
('scorched-slab', 41, 'horde', NULL, 25, 25),
('scorched-slab', 41, 'surfing', NULL, 30, 40),
('scorched-slab', 42, 'surfing', NULL, 30, 40),
('scorched-slab', 60, 'fishing_old', NULL, 15, 15),
('scorched-slab', 60, 'fishing_good', NULL, 35, 35),
('scorched-slab', 61, 'fishing_super', NULL, 55, 55),
('scorched-slab-basement', 42, 'walking', NULL, 40, 40),
('scorched-slab-basement', 112, 'walking', NULL, 40, 40),
('scorched-slab-basement', 208, 'walking', NULL, 40, 40),
('scorched-slab-basement', 305, 'walking', NULL, 40, 40),
('scorched-slab-basement', 528, 'walking', NULL, 40, 40),
('scorched-slab-basement', 530, 'walking', NULL, 40, 40),
('scorched-slab-basement', 533, 'walking', NULL, 40, 40),
('scorched-slab-basement', 611, 'walking', NULL, 40, 40),
('scorched-slab-basement', 637, 'walking', NULL, 40, 40),
('scorched-slab-basement', 715, 'walking', NULL, 40, 40),
('scorched-slab-basement', 42, 'horde', NULL, 25, 25),
('scorched-slab-basement', 418, 'surfing', NULL, 35, 45),
('scorched-slab-basement', 419, 'surfing', NULL, 35, 45),
('scorched-slab-basement', 339, 'fishing_old', NULL, 15, 15),
('scorched-slab-basement', 339, 'fishing_good', NULL, 35, 35),
('scorched-slab-basement', 340, 'fishing_super', NULL, 55, 55),
('fortree-gym', 334, 'walking', NULL, 44, 44),
('fortree-gym', 359, 'walking', NULL, 44, 44),
('fortree-gym', 426, 'walking', NULL, 44, 44),
('fortree-gym', 432, 'walking', NULL, 44, 44),
('fortree-gym', 435, 'walking', NULL, 44, 44),
('fortree-gym', 560, 'walking', NULL, 44, 44),
('fortree-gym', 620, 'walking', NULL, 44, 44),
('fortree-gym', 625, 'walking', NULL, 44, 44),
('fortree-gym', 628, 'walking', NULL, 44, 44),
('fortree-gym', 630, 'walking', NULL, 44, 44),
('fortree-gym', 624, 'horde', NULL, 25, 25),
('fortree-gym', 418, 'surfing', NULL, 35, 45),
('fortree-gym', 419, 'surfing', NULL, 35, 45),
('fortree-gym', 339, 'fishing_old', NULL, 15, 15),
('fortree-gym', 339, 'fishing_good', NULL, 35, 35),
('fortree-gym', 340, 'fishing_super', NULL, 55, 55),
('route-121', 52, 'walking', NULL, 40, 40),
('route-121', 77, 'walking', NULL, 40, 40),
('route-121', 84, 'walking', NULL, 40, 40),
('route-121', 96, 'walking', NULL, 40, 40),
('route-121', 180, 'walking', NULL, 40, 40),
('route-121', 262, 'walking', NULL, 40, 40),
('route-121', 353, 'walking', NULL, 40, 40),
('route-121', 507, 'walking', NULL, 40, 40),
('route-121', 522, 'walking', NULL, 40, 40),
('route-121', 660, 'walking', NULL, 40, 40),
('route-121', 508, 'dexnav', NULL, 50, 50),
('route-121', 96, 'horde', NULL, 26, 26),
('route-122', 594, 'dexnav', NULL, 50, 50),
('route-122', 592, 'surfing', NULL, 35, 45),
('route-122', 593, 'surfing', NULL, 35, 45),
('route-122', 456, 'fishing_old', NULL, 15, 15),
('route-122', 456, 'fishing_good', NULL, 35, 35),
('route-122', 457, 'fishing_super', NULL, 55, 55),
('route-123', 66, 'horde', NULL, 30, 30),
('route-123', 183, 'surfing', NULL, 35, 45),
('route-123', 184, 'surfing', NULL, 35, 45),
('route-123', 341, 'fishing_old', NULL, 15, 15),
('route-123', 341, 'fishing_good', NULL, 35, 35),
('route-123', 342, 'fishing_super', NULL, 55, 55),
('lilycove-city', 213, 'rock_smash', NULL, 45, 45),
('lilycove-city', 558, 'rock_smash', NULL, 45, 45),
('lilycove-city', 689, 'rock_smash', NULL, 45, 45),
('lilycove-city', 594, 'surfing', NULL, 40, 50),
('lilycove-city', 120, 'fishing_old', NULL, 15, 15),
('lilycove-city', 366, 'fishing_old', NULL, 15, 15),
('lilycove-city', 222, 'fishing_old', NULL, 15, 15),
('lilycove-city', 120, 'fishing_good', NULL, 35, 35),
('lilycove-city', 366, 'fishing_good', NULL, 35, 35),
('lilycove-city', 222, 'fishing_good', NULL, 35, 35),
('lilycove-city', 121, 'fishing_super', NULL, 55, 55),
('lilycove-city', 368, 'fishing_super', NULL, 55, 55),
('lilycove-city', 222, 'fishing_super', NULL, 55, 55),
('magma-hideout', 72, 'surfing', NULL, 40, 50),
('magma-hideout', 73, 'surfing', NULL, 40, 50),
('magma-hideout', 320, 'fishing_old', NULL, 15, 15),
('magma-hideout', 320, 'fishing_good', NULL, 35, 35),
('magma-hideout', 320, 'fishing_super', NULL, 55, 55),
('aqua-hideout', 72, 'surfing', NULL, 40, 50),
('aqua-hideout', 73, 'surfing', NULL, 40, 50),
('aqua-hideout', 320, 'fishing_old', NULL, 15, 15),
('aqua-hideout', 320, 'fishing_good', NULL, 35, 35),
('aqua-hideout', 320, 'fishing_super', NULL, 55, 55),
('route-124', 594, 'dexnav', NULL, 50, 50),
('route-124', 458, 'surfing', NULL, 40, 50),
('route-124', 226, 'surfing', NULL, 40, 50),
('route-124', 170, 'fishing_old', NULL, 15, 15),
('route-124', 369, 'fishing_old', NULL, 15, 15),
('route-124', 170, 'fishing_good', NULL, 35, 35),
('route-124', 369, 'fishing_good', NULL, 35, 35),
('route-124', 170, 'fishing_super', NULL, 55, 55),
('route-124', 369, 'fishing_super', NULL, 55, 55),
('mossdeep-city', 594, 'surfing', NULL, 40, 50),
('mossdeep-city', 318, 'fishing_old', NULL, 15, 15),
('mossdeep-city', 318, 'fishing_good', NULL, 35, 35),
('mossdeep-city', 319, 'fishing_super', NULL, 55, 55),
('route-125', 594, 'dexnav', NULL, 50, 50),
('route-125', 86, 'surfing', NULL, 40, 50),
('route-125', 87, 'surfing', NULL, 40, 50),
('route-125', 131, 'surfing', NULL, 40, 50),
('route-125', 90, 'fishing_old', NULL, 15, 15),
('route-125', 90, 'fishing_good', NULL, 35, 35),
('route-125', 91, 'fishing_super', NULL, 55, 55),
('shoal-cave-1f', 215, 'walking', NULL, 40, 40),
('shoal-cave-1f', 220, 'walking', NULL, 40, 40),
('shoal-cave-1f', 225, 'walking', NULL, 40, 40),
('shoal-cave-1f', 238, 'walking', NULL, 40, 40),
('shoal-cave-1f', 361, 'walking', NULL, 40, 40),
('shoal-cave-1f', 363, 'walking', NULL, 40, 40),
('shoal-cave-1f', 459, 'walking', NULL, 40, 40),
('shoal-cave-1f', 582, 'walking', NULL, 40, 40),
('shoal-cave-1f', 613, 'walking', NULL, 40, 40),
('shoal-cave-1f', 712, 'walking', NULL, 40, 40),
('shoal-cave-1f', 124, 'walking', NULL, 50, 50),
('shoal-cave-1f', 215, 'walking', NULL, 50, 50),
('shoal-cave-1f', 221, 'walking', NULL, 50, 50),
('shoal-cave-1f', 225, 'walking', NULL, 50, 50),
('shoal-cave-1f', 362, 'walking', NULL, 50, 50),
('shoal-cave-1f', 364, 'walking', NULL, 50, 50),
('shoal-cave-1f', 460, 'walking', NULL, 50, 50),
('shoal-cave-1f', 583, 'walking', NULL, 50, 50),
('shoal-cave-1f', 614, 'walking', NULL, 50, 50),
('shoal-cave-1f', 713, 'walking', NULL, 50, 50),
('shoal-cave-1f', 461, 'dexnav', NULL, 50, 50),
('shoal-cave-1f', 461, 'dexnav', NULL, 50, 50),
('shoal-cave-1f', 712, 'horde', NULL, 25, 25),
('shoal-cave-1f', 712, 'horde', NULL, 32, 32),
('shoal-cave-1f', 75, 'rock_smash', NULL, 50, 50),
('shoal-cave-1f', 525, 'rock_smash', NULL, 50, 50),
('shoal-cave-1f', 86, 'surfing', NULL, 40, 50),
('shoal-cave-1f', 87, 'surfing', NULL, 40, 50),
('shoal-cave-1f', 86, 'surfing', NULL, 40, 50),
('shoal-cave-1f', 87, 'surfing', NULL, 40, 50),
('shoal-cave-1f', 90, 'fishing_old', NULL, 15, 15),
('shoal-cave-1f', 90, 'fishing_old', NULL, 15, 15),
('shoal-cave-1f', 90, 'fishing_good', NULL, 35, 35),
('shoal-cave-1f', 90, 'fishing_good', NULL, 35, 35),
('shoal-cave-1f', 91, 'fishing_super', NULL, 55, 55),
('shoal-cave-1f', 91, 'fishing_super', NULL, 55, 55),
('shoal-cave-ice-room', 124, 'walking', NULL, 55, 55),
('shoal-cave-ice-room', 215, 'walking', NULL, 55, 55),
('shoal-cave-ice-room', 221, 'walking', NULL, 55, 55),
('shoal-cave-ice-room', 225, 'walking', NULL, 55, 55),
('shoal-cave-ice-room', 362, 'walking', NULL, 55, 55),
('shoal-cave-ice-room', 478, 'walking', NULL, 55, 55),
('shoal-cave-ice-room', 460, 'walking', NULL, 55, 55),
('shoal-cave-ice-room', 583, 'walking', NULL, 55, 55),
('shoal-cave-ice-room', 615, 'walking', NULL, 55, 55),
('shoal-cave-ice-room', 614, 'walking', NULL, 55, 55),
('shoal-cave-ice-room', 713, 'walking', NULL, 55, 55),
('shoal-cave-ice-room', 361, 'horde', NULL, 32, 32),
('route-126', 594, 'dexnav', NULL, 50, 50),
('route-126', 278, 'surfing', NULL, 40, 50),
('route-126', 279, 'surfing', NULL, 40, 50),
('route-126', 366, 'fishing_old', NULL, 15, 15),
('route-126', 369, 'fishing_old', NULL, 15, 15),
('route-126', 366, 'fishing_good', NULL, 35, 35),
('route-126', 369, 'fishing_good', NULL, 35, 35),
('route-126', 366, 'fishing_super', NULL, 55, 55),
('route-126', 369, 'fishing_super', NULL, 55, 55),
('route-127', 594, 'dexnav', NULL, 50, 50),
('route-127', 72, 'surfing', NULL, 40, 50),
('route-127', 73, 'surfing', NULL, 40, 50),
('route-127', 690, 'fishing_old', NULL, 15, 15),
('route-127', 369, 'fishing_old', NULL, 15, 15),
('route-127', 690, 'fishing_good', NULL, 35, 35),
('route-127', 369, 'fishing_good', NULL, 35, 35),
('route-127', 691, 'fishing_super', NULL, 55, 55),
('route-127', 369, 'fishing_super', NULL, 55, 55),
('route-128', 594, 'dexnav', NULL, 50, 50),
('route-128', 592, 'surfing', NULL, 40, 50),
('route-128', 593, 'surfing', NULL, 40, 50),
('route-128', 370, 'fishing_old', NULL, 15, 15),
('route-128', 369, 'fishing_old', NULL, 15, 15),
('route-128', 370, 'fishing_good', NULL, 35, 35),
('route-128', 369, 'fishing_good', NULL, 35, 35),
('route-128', 370, 'fishing_super', NULL, 55, 55),
('route-128', 369, 'fishing_super', NULL, 55, 55),
('ever-grande-city', 279, 'surfing', NULL, 45, 55),
('ever-grande-city', 73, 'surfing', NULL, 45, 55),
('ever-grande-city', 593, 'surfing', NULL, 45, 55),
('ever-grande-city', 370, 'fishing_old', NULL, 15, 15),
('ever-grande-city', 222, 'fishing_old', NULL, 15, 15),
('ever-grande-city', 370, 'fishing_good', NULL, 35, 35),
('ever-grande-city', 222, 'fishing_good', NULL, 35, 35),
('ever-grande-city', 370, 'fishing_super', NULL, 55, 55),
('ever-grande-city', 222, 'fishing_super', NULL, 55, 55),
('route-129', 594, 'dexnav', NULL, 50, 50),
('route-129', 320, 'surfing', NULL, 40, 50),
('route-129', 321, 'surfing', NULL, 40, 50),
('route-129', 320, 'fishing_old', NULL, 15, 15),
('route-129', 369, 'fishing_old', NULL, 15, 15),
('route-129', 320, 'fishing_good', NULL, 35, 35),
('route-129', 369, 'fishing_good', NULL, 35, 35),
('route-129', 320, 'fishing_super', NULL, 55, 55),
('route-129', 369, 'fishing_super', NULL, 55, 55),
('route-130', 594, 'dexnav', NULL, 50, 50),
('route-130', 72, 'surfing', NULL, 40, 50),
('route-130', 73, 'surfing', NULL, 40, 50),
('route-130', 690, 'fishing_old', NULL, 15, 15),
('route-130', 369, 'fishing_old', NULL, 15, 15),
('route-130', 690, 'fishing_good', NULL, 35, 35),
('route-130', 369, 'fishing_good', NULL, 35, 35),
('route-130', 691, 'fishing_super', NULL, 55, 55),
('route-130', 369, 'fishing_super', NULL, 55, 55),
('route-131', 594, 'dexnav', NULL, 50, 50),
('route-131', 278, 'surfing', NULL, 40, 50),
('route-131', 279, 'surfing', NULL, 40, 50),
('route-131', 692, 'fishing_old', NULL, 15, 15),
('route-131', 222, 'fishing_old', NULL, 15, 15),
('route-131', 692, 'fishing_good', NULL, 35, 35),
('route-131', 222, 'fishing_good', NULL, 35, 35),
('route-131', 693, 'fishing_super', NULL, 55, 55),
('route-131', 222, 'fishing_super', NULL, 55, 55),
('pacifidlog-town', 222, 'surfing', NULL, 40, 50),
('pacifidlog-town', 222, 'fishing_old', NULL, 15, 15),
('pacifidlog-town', 222, 'fishing_good', NULL, 35, 35),
('pacifidlog-town', 222, 'fishing_super', NULL, 55, 55),
('route-132', 230, 'dexnav', NULL, 50, 50),
('route-132', 489, 'surfing', NULL, 40, 40),
('route-132', 116, 'fishing_old', NULL, 15, 15),
('route-132', 147, 'fishing_old', NULL, 15, 15),
('route-132', 116, 'fishing_good', NULL, 35, 35),
('route-132', 147, 'fishing_good', NULL, 35, 35),
('route-132', 117, 'fishing_super', NULL, 55, 55),
('route-132', 148, 'fishing_super', NULL, 55, 55),
('route-133', 230, 'dexnav', NULL, 50, 50),
('route-133', 489, 'surfing', NULL, 40, 40),
('route-133', 116, 'fishing_old', NULL, 15, 15),
('route-133', 147, 'fishing_old', NULL, 15, 15),
('route-133', 116, 'fishing_good', NULL, 35, 35),
('route-133', 147, 'fishing_good', NULL, 35, 35),
('route-133', 117, 'fishing_super', NULL, 55, 55),
('route-133', 148, 'fishing_super', NULL, 55, 55),
('route-134', 230, 'dexnav', NULL, 50, 50),
('route-134', 489, 'surfing', NULL, 40, 40),
('route-134', 116, 'fishing_old', NULL, 15, 15),
('route-134', 147, 'fishing_old', NULL, 15, 15),
('route-134', 116, 'fishing_good', NULL, 35, 35),
('route-134', 147, 'fishing_good', NULL, 35, 35),
('route-134', 117, 'fishing_super', NULL, 55, 55),
('route-134', 148, 'fishing_super', NULL, 55, 55),
('underwater-107', 73, 'walking', NULL, 55, 55),
('underwater-107', 117, 'walking', NULL, 55, 55),
('underwater-107', 121, 'walking', NULL, 55, 55),
('underwater-107', 171, 'walking', NULL, 55, 55),
('underwater-107', 222, 'walking', NULL, 55, 55),
('underwater-107', 367, 'walking', NULL, 55, 55),
('underwater-107', 368, 'walking', NULL, 55, 55),
('underwater-107', 369, 'walking', NULL, 55, 55),
('underwater-107', 593, 'walking', NULL, 55, 55),
('underwater-107', 691, 'walking', NULL, 55, 55),
('underwater-124', 73, 'walking', NULL, 55, 55),
('underwater-124', 117, 'walking', NULL, 55, 55),
('underwater-124', 121, 'walking', NULL, 55, 55),
('underwater-124', 171, 'walking', NULL, 55, 55),
('underwater-124', 222, 'walking', NULL, 55, 55),
('underwater-124', 367, 'walking', NULL, 55, 55),
('underwater-124', 368, 'walking', NULL, 55, 55),
('underwater-124', 369, 'walking', NULL, 55, 55),
('underwater-124', 593, 'walking', NULL, 55, 55),
('underwater-124', 691, 'walking', NULL, 55, 55),
('underwater-126', 73, 'walking', NULL, 55, 55),
('underwater-126', 117, 'walking', NULL, 55, 55),
('underwater-126', 121, 'walking', NULL, 55, 55),
('underwater-126', 171, 'walking', NULL, 55, 55),
('underwater-126', 222, 'walking', NULL, 55, 55),
('underwater-126', 367, 'walking', NULL, 55, 55),
('underwater-126', 368, 'walking', NULL, 55, 55),
('underwater-126', 369, 'walking', NULL, 55, 55),
('underwater-126', 593, 'walking', NULL, 55, 55),
('underwater-126', 691, 'walking', NULL, 55, 55),
('underwater-128', 73, 'walking', NULL, 55, 55),
('underwater-128', 117, 'walking', NULL, 55, 55),
('underwater-128', 121, 'walking', NULL, 55, 55),
('underwater-128', 171, 'walking', NULL, 55, 55),
('underwater-128', 222, 'walking', NULL, 55, 55),
('underwater-128', 367, 'walking', NULL, 55, 55),
('underwater-128', 368, 'walking', NULL, 55, 55),
('underwater-128', 369, 'walking', NULL, 55, 55),
('underwater-128', 593, 'walking', NULL, 55, 55),
('underwater-128', 691, 'walking', NULL, 55, 55),
('underwater-129', 73, 'walking', NULL, 55, 55),
('underwater-129', 117, 'walking', NULL, 55, 55),
('underwater-129', 121, 'walking', NULL, 55, 55),
('underwater-129', 171, 'walking', NULL, 55, 55),
('underwater-129', 222, 'walking', NULL, 55, 55),
('underwater-129', 367, 'walking', NULL, 55, 55),
('underwater-129', 368, 'walking', NULL, 55, 55),
('underwater-129', 369, 'walking', NULL, 55, 55),
('underwater-129', 593, 'walking', NULL, 55, 55),
('underwater-129', 691, 'walking', NULL, 55, 55),
('underwater-130', 73, 'walking', NULL, 55, 55),
('underwater-130', 117, 'walking', NULL, 55, 55),
('underwater-130', 121, 'walking', NULL, 55, 55),
('underwater-130', 171, 'walking', NULL, 55, 55),
('underwater-130', 222, 'walking', NULL, 55, 55),
('underwater-130', 367, 'walking', NULL, 55, 55),
('underwater-130', 368, 'walking', NULL, 55, 55),
('underwater-130', 369, 'walking', NULL, 55, 55),
('underwater-130', 593, 'walking', NULL, 55, 55),
('underwater-130', 691, 'walking', NULL, 55, 55),
('seafloor-cavern-out', 42, 'surfing', NULL, 45, 55),
('seafloor-cavern-out', 369, 'fishing_old', NULL, 15, 15),
('seafloor-cavern-out', 369, 'fishing_good', NULL, 35, 35),
('seafloor-cavern-out', 369, 'fishing_super', NULL, 55, 55),
('seafloor-cavern-front-rooms', 138, 'walking', NULL, 44, 44),
('seafloor-cavern-front-rooms', 140, 'walking', NULL, 44, 44),
('seafloor-cavern-front-rooms', 347, 'walking', NULL, 44, 44),
('seafloor-cavern-front-rooms', 345, 'walking', NULL, 44, 44),
('seafloor-cavern-front-rooms', 408, 'walking', NULL, 44, 44),
('seafloor-cavern-front-rooms', 410, 'walking', NULL, 44, 44),
('seafloor-cavern-front-rooms', 564, 'walking', NULL, 44, 44),
('seafloor-cavern-front-rooms', 566, 'walking', NULL, 44, 44),
('seafloor-cavern-front-rooms', 696, 'walking', NULL, 44, 44),
('seafloor-cavern-front-rooms', 698, 'walking', NULL, 44, 44),
('seafloor-cavern-front-rooms', 41, 'horde', NULL, 30, 30),
('seafloor-cavern-front-rooms', 213, 'rock_smash', NULL, 44, 44),
('seafloor-cavern-water-rooms', 42, 'walking', NULL, 56, 56),
('seafloor-cavern-water-rooms', 142, 'walking', NULL, 56, 56),
('seafloor-cavern-water-rooms', 528, 'walking', NULL, 56, 56),
('seafloor-cavern-water-rooms', 558, 'walking', NULL, 56, 56),
('seafloor-cavern-water-rooms', 603, 'walking', NULL, 56, 56),
('seafloor-cavern-water-rooms', 715, 'walking', NULL, 56, 56),
('seafloor-cavern-water-rooms', 42, 'horde', NULL, 35, 35),
('seafloor-cavern-water-rooms', 73, 'surfing', NULL, 45, 55),
('seafloor-cavern-water-rooms', 593, 'surfing', NULL, 45, 55),
('seafloor-cavern-water-rooms', 369, 'fishing_old', NULL, 15, 15),
('seafloor-cavern-water-rooms', 369, 'fishing_good', NULL, 35, 35),
('seafloor-cavern-water-rooms', 369, 'fishing_super', NULL, 55, 55),
('seafloor-cavern-back-rooms', 139, 'walking', NULL, 56, 56),
('seafloor-cavern-back-rooms', 141, 'walking', NULL, 56, 56),
('seafloor-cavern-back-rooms', 348, 'walking', NULL, 56, 56),
('seafloor-cavern-back-rooms', 346, 'walking', NULL, 56, 56),
('seafloor-cavern-back-rooms', 409, 'walking', NULL, 56, 56),
('seafloor-cavern-back-rooms', 411, 'walking', NULL, 56, 56),
('seafloor-cavern-back-rooms', 565, 'walking', NULL, 56, 56),
('seafloor-cavern-back-rooms', 567, 'walking', NULL, 56, 56),
('seafloor-cavern-back-rooms', 697, 'walking', NULL, 56, 56),
('seafloor-cavern-back-rooms', 699, 'walking', NULL, 56, 56),
('seafloor-cavern-back-rooms', 42, 'horde', NULL, 35, 35),
('seafloor-cavern-back-rooms', 213, 'rock_smash', NULL, 56, 56),
('sootopolis-city', 129, 'surfing', NULL, 45, 55),
('sootopolis-city', 130, 'surfing', NULL, 45, 55),
('sootopolis-city', 129, 'fishing_old', NULL, 15, 15),
('sootopolis-city', 130, 'fishing_old', NULL, 15, 15),
('sootopolis-city', 129, 'fishing_good', NULL, 35, 35),
('sootopolis-city', 130, 'fishing_good', NULL, 35, 35),
('sootopolis-city', 129, 'fishing_super', NULL, 55, 55),
('sootopolis-city', 130, 'fishing_super', NULL, 55, 55),
('cave-of-origin-1f', 42, 'walking', NULL, 57, 57),
('cave-of-origin-1f', 142, 'walking', NULL, 57, 57),
('cave-of-origin-1f', 302, 'walking', NULL, 57, 57),
('cave-of-origin-1f', 303, 'walking', NULL, 57, 57),
('cave-of-origin-1f', 305, 'walking', NULL, 57, 57),
('cave-of-origin-1f', 375, 'walking', NULL, 57, 57),
('cave-of-origin-1f', 528, 'walking', NULL, 57, 57),
('cave-of-origin-1f', 631, 'walking', NULL, 57, 57),
('cave-of-origin-1f', 632, 'walking', NULL, 57, 57),
('cave-of-origin-1f', 715, 'walking', NULL, 57, 57),
('cave-of-origin-1f', 42, 'horde', NULL, 37, 37),
('cave-of-origin-other', 201, 'walking', NULL, 5, 75),
('cave-of-origin-other', 201, 'horde', NULL, 5, 75),
('soaring-in-the-sky', 18, 'birds', NULL, 60, 60),
('soaring-in-the-sky', 149, 'birds', NULL, 60, 60),
('soaring-in-the-sky', 398, 'birds', NULL, 60, 60),
('soaring-in-the-sky', 430, 'birds', NULL, 60, 60),
('soaring-in-the-sky', 468, 'birds', NULL, 60, 60),
('soaring-in-the-sky', 521, 'birds', NULL, 60, 60),
('soaring-in-the-sky', 663, 'birds', NULL, 60, 60),
('sootopolis-gym', 35, 'walking', NULL, 59, 59),
('sootopolis-gym', 42, 'walking', NULL, 59, 59),
('sootopolis-gym', 247, 'walking', NULL, 59, 59),
('sootopolis-gym', 337, 'walking', NULL, 59, 59),
('sootopolis-gym', 338, 'walking', NULL, 59, 59),
('sootopolis-gym', 372, 'walking', NULL, 59, 59),
('sootopolis-gym', 375, 'walking', NULL, 59, 59),
('sootopolis-gym', 598, 'walking', NULL, 59, 59),
('sootopolis-gym', 621, 'walking', NULL, 59, 59),
('sootopolis-gym', 634, 'walking', NULL, 59, 59),
('sootopolis-gym', 703, 'walking', NULL, 59, 59),
('sootopolis-gym', 36, 'dexnav', NULL, 60, 60),
('sootopolis-gym', 35, 'horde', NULL, 37, 37),
('sootopolis-gym', 42, 'surfing', NULL, 55, 65),
('sootopolis-gym', 338, 'surfing', NULL, 55, 65),
('sootopolis-gym', 147, 'fishing_old', NULL, 15, 15),
('sootopolis-gym', 147, 'fishing_good', NULL, 35, 35),
('sootopolis-gym', 148, 'fishing_super', NULL, 55, 55),
('meteor-falls-b1f', 35, 'walking', NULL, 59, 59),
('meteor-falls-b1f', 42, 'walking', NULL, 59, 59),
('meteor-falls-b1f', 247, 'walking', NULL, 59, 59),
('meteor-falls-b1f', 337, 'walking', NULL, 59, 59),
('meteor-falls-b1f', 338, 'walking', NULL, 59, 59),
('meteor-falls-b1f', 372, 'walking', NULL, 59, 59),
('meteor-falls-b1f', 375, 'walking', NULL, 59, 59),
('meteor-falls-b1f', 598, 'walking', NULL, 59, 59),
('meteor-falls-b1f', 621, 'walking', NULL, 59, 59),
('meteor-falls-b1f', 634, 'walking', NULL, 59, 59),
('meteor-falls-b1f', 703, 'walking', NULL, 59, 59),
('meteor-falls-b1f', 35, 'walking', NULL, 59, 59),
('meteor-falls-b1f', 42, 'walking', NULL, 59, 59),
('meteor-falls-b1f', 247, 'walking', NULL, 59, 59),
('meteor-falls-b1f', 337, 'walking', NULL, 59, 59),
('meteor-falls-b1f', 338, 'walking', NULL, 59, 59),
('meteor-falls-b1f', 372, 'walking', NULL, 59, 59),
('meteor-falls-b1f', 375, 'walking', NULL, 59, 59),
('meteor-falls-b1f', 598, 'walking', NULL, 59, 59),
('meteor-falls-b1f', 621, 'walking', NULL, 59, 59),
('meteor-falls-b1f', 634, 'walking', NULL, 59, 59),
('meteor-falls-b1f', 703, 'walking', NULL, 59, 59),
('meteor-falls-b1f', 169, 'dexnav', NULL, 60, 60),
('meteor-falls-b1f', 373, 'dexnav', NULL, 60, 60),
('meteor-falls-b1f', 35, 'horde', NULL, 37, 37),
('meteor-falls-b1f', 371, 'horde', NULL, 37, 37),
('meteor-falls-b1f', 42, 'surfing', NULL, 55, 65),
('meteor-falls-b1f', 337, 'surfing', NULL, 55, 65),
('meteor-falls-b1f', 42, 'surfing', NULL, 55, 65),
('meteor-falls-b1f', 147, 'fishing_old', NULL, 15, 15),
('meteor-falls-b1f', 147, 'fishing_old', NULL, 15, 15),
('meteor-falls-b1f', 147, 'fishing_good', NULL, 35, 35),
('meteor-falls-b1f', 147, 'fishing_good', NULL, 35, 35),
('meteor-falls-b1f', 148, 'fishing_super', NULL, 55, 55),
('meteor-falls-b1f', 148, 'fishing_super', NULL, 55, 55),
('victory-road-1f', 42, 'walking', NULL, 59, 59),
('victory-road-1f', 75, 'walking', NULL, 59, 59),
('victory-road-1f', 105, 'walking', NULL, 59, 59),
('victory-road-1f', 112, 'walking', NULL, 59, 59),
('victory-road-1f', 208, 'walking', NULL, 59, 59),
('victory-road-1f', 217, 'walking', NULL, 59, 59),
('victory-road-1f', 232, 'walking', NULL, 59, 59),
('victory-road-1f', 305, 'walking', NULL, 59, 59),
('victory-road-1f', 525, 'walking', NULL, 59, 59),
('victory-road-1f', 528, 'walking', NULL, 59, 59),
('victory-road-1f', 294, 'horde', NULL, 37, 37),
('victory-road-1f', 419, 'surfing', NULL, 55, 65),
('victory-road-1f', 184, 'surfing', NULL, 55, 65),
('victory-road-1f', 60, 'fishing_old', NULL, 15, 15),
('victory-road-1f', 550, 'fishing_old', NULL, 15, 15),
('victory-road-1f', 61, 'fishing_good', NULL, 35, 35),
('victory-road-1f', 550, 'fishing_good', NULL, 35, 35),
('victory-road-1f', 61, 'fishing_super', NULL, 55, 55),
('victory-road-1f', 550, 'fishing_super', NULL, 55, 55),
('victory-road-b1f', 64, 'walking', NULL, 59, 59),
('victory-road-b1f', 67, 'walking', NULL, 59, 59),
('victory-road-b1f', 93, 'walking', NULL, 59, 59),
('victory-road-b1f', 294, 'walking', NULL, 59, 59),
('victory-road-b1f', 297, 'walking', NULL, 59, 59),
('victory-road-b1f', 302, 'walking', NULL, 59, 59),
('victory-road-b1f', 303, 'walking', NULL, 59, 59),
('victory-road-b1f', 308, 'walking', NULL, 59, 59),
('victory-road-b1f', 444, 'walking', NULL, 59, 59),
('victory-road-b1f', 533, 'walking', NULL, 59, 59),
('victory-road-b1f', 596, 'walking', NULL, 59, 59),
('victory-road-b1f', 596, 'horde', NULL, 37, 37),
('victory-road-b1f', 419, 'surfing', NULL, 55, 65),
('victory-road-b1f', 184, 'surfing', NULL, 55, 65),
('victory-road-b1f', 60, 'fishing_old', NULL, 15, 15),
('victory-road-b1f', 550, 'fishing_old', NULL, 15, 15),
('victory-road-b1f', 61, 'fishing_good', NULL, 35, 35),
('victory-road-b1f', 550, 'fishing_good', NULL, 35, 35),
('victory-road-b1f', 61, 'fishing_super', NULL, 55, 55),
('victory-road-b1f', 550, 'fishing_super', NULL, 55, 55),
('victory-road-2f', 419, 'surfing', NULL, 55, 65),
('victory-road-2f', 184, 'surfing', NULL, 55, 65),
('victory-road-2f', 60, 'fishing_old', NULL, 15, 15),
('victory-road-2f', 550, 'fishing_old', NULL, 15, 15),
('victory-road-2f', 61, 'fishing_good', NULL, 35, 35),
('victory-road-2f', 550, 'fishing_good', NULL, 35, 35),
('victory-road-2f', 61, 'fishing_super', NULL, 55, 55),
('victory-road-2f', 550, 'fishing_super', NULL, 55, 55),
('sky-pillar', 20, 'walking', NULL, 67, 67),
('sky-pillar', 168, 'walking', NULL, 67, 67),
('sky-pillar', 334, 'walking', NULL, 67, 67),
('sky-pillar', 344, 'walking', NULL, 67, 67),
('sky-pillar', 442, 'walking', NULL, 67, 67),
('sky-pillar', 561, 'walking', NULL, 67, 67),
('sky-pillar', 620, 'walking', NULL, 67, 67),
('sky-pillar', 621, 'walking', NULL, 67, 67),
('sky-pillar', 623, 'walking', NULL, 67, 67),
('sky-pillar', 715, 'walking', NULL, 67, 67),
('sky-pillar', 334, 'horde', NULL, 43, 43),
('battle-resort', 243, 'walking', NULL, 65, 70),
('battle-resort', 244, 'walking', NULL, 65, 70),
('battle-resort', 245, 'walking', NULL, 65, 70),
('battle-resort', 251, 'walking', NULL, 65, 70),
('battle-resort', 492, 'walking', NULL, 65, 70),
('battle-resort', 638, 'walking', NULL, 65, 70),
('battle-resort', 639, 'walking', NULL, 65, 70),
('battle-resort', 640, 'walking', NULL, 65, 70),
('battle-resort', 647, 'walking', NULL, 65, 70),
('battle-resort', 648, 'walking', NULL, 65, 70),
('battle-resort', 716, 'walking', NULL, 65, 70),
('battle-resort', 150, 'walking', NULL, 65, 70),
('battle-resort', 382, 'walking', NULL, 65, 70),
('battle-resort', 383, 'walking', NULL, 65, 70),
('battle-resort', 385, 'walking', NULL, 65, 70),
('battle-resort', 480, 'walking', NULL, 65, 70),
('battle-resort', 481, 'walking', NULL, 65, 70),
('battle-resort', 482, 'walking', NULL, 65, 70),
('battle-resort', 649, 'walking', NULL, 65, 70),
('battle-resort', 718, 'walking', NULL, 65, 70),
('battle-resort', 719, 'walking', NULL, 65, 70),
('battle-resort', 721, 'walking', NULL, 65, 70),
('battle-resort', 144, 'walking', NULL, 65, 80),
('battle-resort', 145, 'walking', NULL, 65, 80),
('battle-resort', 146, 'walking', NULL, 65, 80),
('battle-resort', 249, 'walking', NULL, 65, 80),
('battle-resort', 250, 'walking', NULL, 65, 80),
('battle-resort', 483, 'walking', NULL, 65, 80),
('battle-resort', 484, 'walking', NULL, 65, 80),
('battle-resort', 493, 'walking', NULL, 65, 80),
('battle-resort', 643, 'walking', NULL, 65, 80),
('battle-resort', 644, 'walking', NULL, 65, 80),
('battle-resort', 717, 'walking', NULL, 65, 80),
('battle-resort', 151, 'walking', NULL, 65, 68),
('battle-resort', 380, 'walking', NULL, 65, 68),
('battle-resort', 381, 'walking', NULL, 65, 68),
('battle-resort', 490, 'walking', NULL, 65, 68),
('battle-resort', 488, 'walking', NULL, 65, 68),
('battle-resort', 491, 'walking', NULL, 65, 68),
('battle-resort', 494, 'walking', NULL, 65, 68),
('battle-resort', 641, 'walking', NULL, 65, 68),
('battle-resort', 642, 'walking', NULL, 65, 68),
('battle-resort', 645, 'walking', NULL, 65, 68),
('battle-resort', 720, 'walking', NULL, 65, 68),
('battle-resort', 132, 'rock_smash', NULL, 60, 60),
('battle-resort', 132, 'rock_smash', NULL, 60, 60),
('battle-resort', 132, 'rock_smash', NULL, 60, 60),
('battle-resort', 132, 'rock_smash', NULL, 50, 50),
('battle-resort', 279, 'surfing', NULL, 65, 75),
('battle-resort', 73, 'surfing', NULL, 65, 75),
('battle-resort', 226, 'surfing', NULL, 65, 75),
('battle-resort', 593, 'surfing', NULL, 65, 75),
('battle-resort', 370, 'fishing_old', NULL, 1, 100),
('battle-resort', 370, 'fishing_good', NULL, 1, 100),
('battle-resort', 370, 'fishing_super', NULL, 1, 100);

-- Insert encounters from temp table
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max)
SELECT r.id, e.dex, e.method, e.rate, e.lmin, e.lmax
FROM _enc e JOIN public.routes r ON r.slug = e.slug AND r.game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';

DROP TABLE _enc;

-- ===========================================
-- STEP 4: TRAINERS (493 total)
-- ===========================================

DO $$
DECLARE
  v_trainer_id UUID;
  v_route_id UUID;
BEGIN



  -- Aroma Lady Daisy
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-103' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Aroma Lady Daisy', 'Trainer', false, 1)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 43, 19, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 420, 19, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 406, 19, 3, '[]'::jsonb);


  -- Twins Amy & Liv
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-103' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Twins Amy & Liv', 'Trainer', false, 2)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 35, 20, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 39, 20, 2, '[]'::jsonb);


  -- Poké Fan Miguel
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-103' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Poké Fan Miguel', 'Trainer', false, 3)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 25, 18, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 25, 18, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 25, 18, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 25, 18, 4, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 25, 18, 5, '[]'::jsonb);


  -- Fisherman Andrew
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-103' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Fisherman Andrew', 'Trainer', false, 4)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 60, 19, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 690, 19, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 120, 19, 3, '[]'::jsonb);


  -- Youngster Calvin
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-102' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Youngster Calvin', 'Trainer', false, 1)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 659, 7, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 161, 7, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 263, 7, 3, '[]'::jsonb);


  -- Bug Catcher Rick
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-102' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Bug Catcher Rick', 'Trainer', false, 2)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 10, 7, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 13, 7, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 265, 7, 3, '[]'::jsonb);


  -- Youngster Allen
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-102' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Youngster Allen', 'Trainer', false, 3)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 16, 7, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 276, 7, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 519, 7, 3, '[]'::jsonb);


  -- Lass Tiana
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-102' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Lass Tiana', 'Trainer', false, 4)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 69, 7, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 535, 7, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 574, 7, 3, '[]'::jsonb);


  -- Rich Boy Winston
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-104-south' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Rich Boy Winston', 'Trainer', false, 1)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 58, 10, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 506, 10, 2, '[]'::jsonb);


  -- Bug Catcher Lyle
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'petalburg-woods' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Bug Catcher Lyle', 'Trainer', false, 1)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 48, 10, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 543, 10, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 540, 10, 3, '[]'::jsonb);


  -- Team Aqua Grunt
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'petalburg-woods' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Team Aqua Grunt', 'Trainer', false, 2)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 509, 11, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 318, 11, 2, '[]'::jsonb);


  -- Team Magma Grunt
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'petalburg-woods' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Team Magma Grunt', 'Trainer', false, 3)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 261, 11, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 322, 11, 2, '[]'::jsonb);


  -- Bug Catcher James
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'petalburg-woods' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Bug Catcher James', 'Trainer', false, 4)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 290, 10, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 401, 10, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 283, 10, 3, '[]'::jsonb);


  -- Lady Cindy
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-104-north' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Lady Cindy', 'Trainer', false, 1)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 37, 12, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 427, 12, 2, '[]'::jsonb);


  -- Lass Haley
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-104-north' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Lass Haley', 'Trainer', false, 2)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 187, 11, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 133, 11, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 285, 11, 3, '[]'::jsonb);


  -- Twins Gina & Mia
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-104-north' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Twins Gina & Mia', 'Trainer', false, 3)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 270, 10, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 273, 10, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 546, 10, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 548, 10, 4, '[]'::jsonb);


  -- Fisherman Ivan
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-104-north' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Fisherman Ivan', 'Trainer', false, 4)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 550, 12, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 550, 12, 2, '[]'::jsonb);


  -- Youngster Josh
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'rustboro-gym' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Youngster Josh', 'Trainer', false, 1)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 524, 12, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 74, 12, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 408, 12, 3, '[]'::jsonb);


  -- Youngster Tommy
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'rustboro-gym' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Youngster Tommy', 'Trainer', false, 2)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 557, 12, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 410, 12, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 698, 12, 3, '[]'::jsonb);


  -- Schoolkid Georgia
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'rustboro-gym' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Schoolkid Georgia', 'Trainer', false, 3)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 438, 12, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 140, 12, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 564, 12, 3, '[]'::jsonb);


  -- Leader Roxanne
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'rustboro-gym' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Leader Roxanne', 'Trainer', false, 4)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 566, 14, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 138, 14, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 696, 14, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 347, 14, 4, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 345, 14, 5, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 299, 16, 6, '[]'::jsonb);


  -- Bug Catcher Jose
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-116' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Bug Catcher Jose', 'Trainer', false, 1)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 165, 11, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 167, 11, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 415, 11, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 412, 11, 4, '[]'::jsonb);


  -- Lass Janice
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-116' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Lass Janice', 'Trainer', false, 2)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 669, 12, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 179, 12, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 300, 12, 3, '[]'::jsonb);


  -- Hiker Clark
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-116' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Hiker Clark', 'Trainer', false, 3)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 111, 12, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 246, 12, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 304, 12, 3, '[]'::jsonb);


  -- Schoolkid Jerry
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-116' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Schoolkid Jerry', 'Trainer', false, 4)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 280, 14, 1, '[]'::jsonb);


  -- Schoolkid Karen
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-116' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Schoolkid Karen', 'Trainer', false, 5)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 175, 14, 1, '[]'::jsonb);


  -- Team Aqua Grunt
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'rusturf-tunnel' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Team Aqua Grunt', 'Trainer', false, 1)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 261, 14, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 318, 14, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 320, 14, 3, '[]'::jsonb);


  -- Team Magma Grunt
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'rusturf-tunnel' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Team Magma Grunt', 'Trainer', false, 2)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 261, 14, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 322, 14, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 218, 14, 3, '[]'::jsonb);


  -- Hiker Mike
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'rusturf-tunnel' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Hiker Mike', 'Trainer', false, 3)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 557, 22, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 529, 22, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 246, 22, 3, '[]'::jsonb);


  -- Fisherman Elliot
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-106' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Fisherman Elliot', 'Trainer', false, 1)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 129, 15, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 72, 15, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 339, 15, 3, '[]'::jsonb);


  -- Backpacker Graeme
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-106' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Backpacker Graeme', 'Trainer', false, 2)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 287, 15, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 102, 15, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 504, 15, 3, '[]'::jsonb);


  -- Swimmer Nicole
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-106' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Swimmer Nicole', 'Trainer', false, 3)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 119, 36, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 87, 36, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 394, 36, 3, '[]'::jsonb);


  -- Triathlete Caleb
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-106' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Triathlete Caleb', 'Trainer', false, 4)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 516, 36, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 121, 36, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 117, 36, 3, '[]'::jsonb);


  -- Swimmer Douglas
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-106' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Swimmer Douglas', 'Trainer', false, 5)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 195, 36, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 502, 36, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 340, 36, 3, '[]'::jsonb);


  -- Battle Girl Laura
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'dewford-gym' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Battle Girl Laura', 'Trainer', false, 1)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 56, 17, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 453, 17, 2, '[]'::jsonb);


  -- Black Belt Hideki
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'dewford-gym' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Black Belt Hideki', 'Trainer', false, 2)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 296, 17, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 236, 17, 2, '[]'::jsonb);


  -- Battle Girl Tessa
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'dewford-gym' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Battle Girl Tessa', 'Trainer', false, 3)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 532, 17, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 447, 17, 2, '[]'::jsonb);


  -- Leader Brawly
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'dewford-gym' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Leader Brawly', 'Trainer', false, 4)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 66, 17, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 307, 17, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 674, 17, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 559, 17, 4, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 619, 17, 5, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 297, 19, 6, '[]'::jsonb);


  -- Swimmer Beth
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-107' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Swimmer Beth', 'Trainer', false, 1)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 581, 36, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 159, 36, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 226, 36, 3, '[]'::jsonb);


  -- Swimmer Denise
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-107' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Swimmer Denise', 'Trainer', false, 2)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 657, 37, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 368, 37, 2, '[]'::jsonb);


  -- Swimmer Darrin
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-107' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Swimmer Darrin', 'Trainer', false, 3)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 259, 37, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 367, 37, 2, '[]'::jsonb);


  -- Sis & Bro Lisa and Ray
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-107' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Sis & Bro Lisa and Ray', 'Trainer', false, 4)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 99, 38, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 342, 39, 2, '[]'::jsonb);


  -- Swimmer Tony
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-107' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Swimmer Tony', 'Trainer', false, 5)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 592, 37, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 592, 37, 2, '[]'::jsonb);


  -- Sailor Huey
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-109' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Sailor Huey', 'Trainer', false, 1)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 278, 17, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 580, 17, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 422, 17, 3, '[]'::jsonb);


  -- Sailor Edmond
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-109' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Sailor Edmond', 'Trainer', false, 2)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 90, 17, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 170, 17, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 116, 17, 3, '[]'::jsonb);


  -- Tuber Ricky
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-109' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Tuber Ricky', 'Trainer', false, 3)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 263, 17, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 458, 17, 2, '[]'::jsonb);


  -- Tuber Lola
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-109' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Tuber Lola', 'Trainer', false, 4)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 54, 17, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 298, 17, 2, '[]'::jsonb);


  -- Tuber Simon
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-109' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Tuber Simon', 'Trainer', false, 5)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 258, 15, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 501, 15, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 7, 15, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 158, 15, 4, '[]'::jsonb);


  -- Delinquent Destinee
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-109' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Delinquent Destinee', 'Trainer', false, 6)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 509, 19, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 302, 19, 2, '[]'::jsonb);


  -- Street Thug Blair
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-109' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Street Thug Blair', 'Trainer', false, 7)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 228, 19, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 198, 19, 2, '[]'::jsonb);


  -- Beauty Johanna
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-109' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Beauty Johanna', 'Trainer', false, 8)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 303, 19, 1, '[]'::jsonb);


  -- Sailor Dwayne
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-109' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Sailor Dwayne', 'Trainer', false, 9)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 194, 17, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 341, 17, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 79, 17, 3, '[]'::jsonb);


  -- Tuber Gwen
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-109' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Tuber Gwen', 'Trainer', false, 10)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 184, 37, 1, '[]'::jsonb);


  -- Tuber Carmen
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-109' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Tuber Carmen', 'Trainer', false, 11)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 419, 37, 1, '[]'::jsonb);


  -- Swimmer Alice
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-109' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Swimmer Alice', 'Trainer', false, 12)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 423, 37, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 423, 37, 2, '[]'::jsonb);


  -- Swimmer David
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-109' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Swimmer David', 'Trainer', false, 13)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 224, 37, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 91, 37, 2, '[]'::jsonb);


  -- Young Couple Mel & Paul
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-109' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Young Couple Mel & Paul', 'Trainer', false, 14)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 314, 38, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 313, 38, 2, '[]'::jsonb);


  -- Fisherman Carter
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-109' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Fisherman Carter', 'Trainer', false, 15)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 211, 38, 1, '[]'::jsonb);


  -- Ace Trainer Portia
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-109' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Ace Trainer Portia', 'Trainer', false, 16)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 361, 38, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 219, 38, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 282, 38, 3, '[]'::jsonb);


  -- Team Aqua Grunt
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'slateport-city' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Team Aqua Grunt', 'Trainer', false, 1)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 72, 19, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 43, 19, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 88, 19, 3, '[]'::jsonb);


  -- Team Aqua Grunt
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'slateport-city' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Team Aqua Grunt', 'Trainer', false, 2)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 41, 20, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 510, 20, 2, '[]'::jsonb);


  -- Team Magma Grunt
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'slateport-city' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Team Magma Grunt', 'Trainer', false, 3)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 228, 19, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 74, 19, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 109, 19, 3, '[]'::jsonb);


  -- Team Magma Grunt
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'slateport-city' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Team Magma Grunt', 'Trainer', false, 4)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 41, 20, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 262, 20, 2, '[]'::jsonb);


  -- Team Magma Grunt
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'slateport-city' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Team Magma Grunt', 'Trainer', false, 5)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 335, 51, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 219, 51, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 110, 51, 3, '[]'::jsonb);


  -- Team Magma Grunt
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'slateport-city' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Team Magma Grunt', 'Trainer', false, 6)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 208, 51, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 229, 51, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 500, 51, 3, '[]'::jsonb);


  -- Team Aqua Grunt
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'slateport-city' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Team Aqua Grunt', 'Trainer', false, 7)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 336, 51, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 457, 51, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 89, 51, 3, '[]'::jsonb);


  -- Team Aqua Grunt
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'slateport-city' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Team Aqua Grunt', 'Trainer', false, 8)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 465, 51, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 73, 51, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 160, 51, 3, '[]'::jsonb);


  -- Poké Fan Isabel
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-110' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Poké Fan Isabel', 'Trainer', false, 1)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 587, 20, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 417, 20, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 702, 20, 3, '[]'::jsonb);


  -- Youngster Timmy
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-110' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Youngster Timmy', 'Trainer', false, 2)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 572, 20, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 568, 20, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 527, 20, 3, '[]'::jsonb);


  -- PKMN Trainer Brendan
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-110' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'PKMN Trainer Brendan', 'Trainer', false, 3)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 277, 22, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 77, 22, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 320, 22, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 253, 24, 4, '[]'::jsonb);


  -- PKMN Trainer Brendan
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-110' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'PKMN Trainer Brendan', 'Trainer', false, 4)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 277, 22, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 320, 22, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 285, 22, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 256, 24, 4, '[]'::jsonb);


  -- PKMN Trainer Brendan
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-110' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'PKMN Trainer Brendan', 'Trainer', false, 5)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 277, 22, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 285, 22, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 77, 22, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 259, 24, 4, '[]'::jsonb);


  -- PKMN Trainer May
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-110' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'PKMN Trainer May', 'Trainer', false, 6)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 277, 22, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 77, 22, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 320, 22, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 253, 24, 4, '[]'::jsonb);


  -- PKMN Trainer May
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-110' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'PKMN Trainer May', 'Trainer', false, 7)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 277, 22, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 320, 22, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 285, 22, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 256, 24, 4, '[]'::jsonb);


  -- PKMN Trainer May
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-110' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'PKMN Trainer May', 'Trainer', false, 8)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 277, 22, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 285, 22, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 77, 22, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 259, 24, 4, '[]'::jsonb);


  -- Collector Edwin
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-110' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Collector Edwin', 'Trainer', false, 9)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 104, 20, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 271, 20, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 274, 20, 3, '[]'::jsonb);


  -- Psychic Edward
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-110' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Psychic Edward', 'Trainer', false, 10)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 63, 20, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 439, 20, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 64, 20, 3, '[]'::jsonb);


  -- Fisherman Dale
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-110' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Fisherman Dale', 'Trainer', false, 11)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 223, 20, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 320, 20, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 366, 20, 3, '[]'::jsonb);


  -- PKMN Trainer Wally
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'mauville-city' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'PKMN Trainer Wally', 'Trainer', false, 1)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 662, 23, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 443, 23, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 183, 23, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 281, 25, 4, '[]'::jsonb);


  -- Guitarist Kirk
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'mauville-gym' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Guitarist Kirk', 'Trainer', false, 1)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 309, 23, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 100, 23, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 694, 23, 3, '[]'::jsonb);


  -- Youngster Ben
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'mauville-gym' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Youngster Ben', 'Trainer', false, 2)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 595, 23, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 602, 23, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 618, 23, 3, '[]'::jsonb);


  -- Battle Girl Vivian
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'mauville-gym' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Battle Girl Vivian', 'Trainer', false, 3)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 239, 25, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 125, 25, 2, '[]'::jsonb);


  -- Guitarist Shawn
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'mauville-gym' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Guitarist Shawn', 'Trainer', false, 4)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 522, 23, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 170, 23, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 135, 23, 3, '[]'::jsonb);


  -- Leader Wattson
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'mauville-gym' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Leader Wattson', 'Trainer', false, 5)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 101, 26, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 82, 26, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 180, 26, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 479, 26, 4, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 404, 26, 5, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 310, 28, 6, '[]'::jsonb);


  -- Teammates Anna & Meg
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-117' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Teammates Anna & Meg', 'Trainer', false, 1)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 162, 23, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 507, 24, 2, '[]'::jsonb);


  -- Triathlete Dylan
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-117' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Triathlete Dylan', 'Trainer', false, 2)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 252, 23, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 84, 23, 2, '[]'::jsonb);


  -- PKMN Breeder Lydia
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-117' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'PKMN Breeder Lydia', 'Trainer', false, 3)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 173, 19, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 174, 19, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 175, 19, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 406, 19, 4, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 238, 19, 5, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 458, 19, 6, '[]'::jsonb);


  -- PKMN Breeder Isaac
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-117' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'PKMN Breeder Isaac', 'Trainer', false, 4)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 172, 19, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 298, 19, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 239, 19, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 240, 19, 4, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 447, 19, 5, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 446, 19, 6, '[]'::jsonb);


  -- Bug Maniac Derek
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-117' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Bug Maniac Derek', 'Trainer', false, 5)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 12, 23, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 166, 23, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 414, 23, 3, '[]'::jsonb);


  -- Ruin Maniac Omari
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'granite-cave-b2f' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Ruin Maniac Omari', 'Trainer', false, 1)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 27, 22, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 343, 22, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 436, 22, 3, '[]'::jsonb);


  -- Hiker Davian
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'granite-cave-b2f' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Hiker Davian', 'Trainer', false, 2)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 95, 23, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 185, 23, 2, '[]'::jsonb);


  -- The Winstrates' Victor
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-111' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'The Winstrates'' Victor', 'Trainer', false, 1)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 301, 25, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 40, 25, 2, '[]'::jsonb);


  -- The Winstrates' Victoria
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-111' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'The Winstrates'' Victoria', 'Trainer', false, 2)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 182, 25, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 407, 25, 2, '[]'::jsonb);


  -- The Winstrates' Vivi
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-111' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'The Winstrates'' Vivi', 'Trainer', false, 3)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 91, 25, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 121, 25, 2, '[]'::jsonb);


  -- The Winstrates' Vicky
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-111' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'The Winstrates'' Vicky', 'Trainer', false, 4)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 68, 28, 1, '[]'::jsonb);


  -- Interviewers Gabby & Ty
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-111' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Interviewers Gabby & Ty', 'Trainer', false, 5)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 81, 25, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 293, 25, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 137, 25, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 479, 25, 4, '[]'::jsonb);


  -- Picknicker Irene
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-111' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Picknicker Irene', 'Trainer', false, 6)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 52, 24, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 677, 24, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 163, 24, 3, '[]'::jsonb);


  -- Camper Travis
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-111' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Camper Travis', 'Trainer', false, 7)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 23, 23, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 50, 23, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 218, 23, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 624, 23, 4, '[]'::jsonb);


  -- Backpacker Emory
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-111' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Backpacker Emory', 'Trainer', false, 8)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 631, 25, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 455, 25, 2, '[]'::jsonb);


  -- Ace Trainer Wilton
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-111' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Ace Trainer Wilton', 'Trainer', false, 9)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 523, 29, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 123, 29, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 195, 29, 3, '[]'::jsonb);


  -- Fairy Tale Girl Cece
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-111' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Fairy Tale Girl Cece', 'Trainer', false, 10)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 209, 28, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 122, 28, 2, '[]'::jsonb);


  -- Backpacker Deon
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-111' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Backpacker Deon', 'Trainer', false, 11)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 264, 27, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 400, 27, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 660, 27, 3, '[]'::jsonb);


  -- Ace Trainer Brooke
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-111' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Ace Trainer Brooke', 'Trainer', false, 12)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 38, 29, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 241, 29, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 542, 29, 3, '[]'::jsonb);


  -- Camper Larry
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-112-south' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Camper Larry', 'Trainer', false, 1)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 588, 25, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 387, 25, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 451, 25, 3, '[]'::jsonb);


  -- Picknicker Carol
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-112-south' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Picknicker Carol', 'Trainer', false, 2)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 610, 25, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 333, 25, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 316, 25, 3, '[]'::jsonb);


  -- Hiker Brice
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-112-south' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Hiker Brice', 'Trainer', false, 3)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 622, 26, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 51, 26, 2, '[]'::jsonb);


  -- Hiker Trent
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-112-south' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Hiker Trent', 'Trainer', false, 4)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 75, 25, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 525, 25, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 208, 25, 3, '[]'::jsonb);


  -- Street Thug Jaylin
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-112-north' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Street Thug Jaylin', 'Trainer', false, 1)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 88, 27, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 30, 27, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 33, 27, 3, '[]'::jsonb);


  -- Youngster Neal
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-113' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Youngster Neal', 'Trainer', false, 1)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 328, 28, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 96, 28, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 597, 28, 3, '[]'::jsonb);


  -- Ninja Boy Lao
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-113' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Ninja Boy Lao', 'Trainer', false, 2)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 109, 28, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 616, 28, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 544, 28, 3, '[]'::jsonb);


  -- Parasol Lady Madeline
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-113' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Parasol Lady Madeline', 'Trainer', false, 3)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 322, 28, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 582, 28, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 517, 28, 3, '[]'::jsonb);


  -- Youngster Dillion
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-113' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Youngster Dillion', 'Trainer', false, 4)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 331, 28, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 325, 28, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 434, 28, 3, '[]'::jsonb);


  -- Ninja Boy Lung
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-113' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Ninja Boy Lung', 'Trainer', false, 5)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 269, 28, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 215, 28, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 291, 28, 3, '[]'::jsonb);


  -- Fairy Tale Girl Franny
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-113' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Fairy Tale Girl Franny', 'Trainer', false, 6)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 684, 28, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 682, 28, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 176, 28, 3, '[]'::jsonb);


  -- Fisherman Claude
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-114' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Fisherman Claude', 'Trainer', false, 1)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 457, 31, 1, '[]'::jsonb);


  -- Fisherman Nolan
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-114' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Fisherman Nolan', 'Trainer', false, 2)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 130, 31, 1, '[]'::jsonb);


  -- Teammates Tyra & Ivy
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-114' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Teammates Tyra & Ivy', 'Trainer', false, 3)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 315, 31, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 184, 32, 2, '[]'::jsonb);


  -- Poké Maniac Steve
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-114' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Poké Maniac Steve', 'Trainer', false, 4)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 137, 28, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 108, 28, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 621, 28, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 633, 28, 4, '[]'::jsonb);


  -- Camper Shane
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-114' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Camper Shane', 'Trainer', false, 5)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 190, 28, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 551, 28, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 204, 28, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 554, 28, 4, '[]'::jsonb);


  -- Kindler Bernie
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-114' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Kindler Bernie', 'Trainer', false, 6)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 514, 30, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 279, 30, 2, '[]'::jsonb);


  -- Hiker Lucas
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-114' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Hiker Lucas', 'Trainer', false, 7)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 703, 30, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 213, 30, 2, '[]'::jsonb);


  -- Hiker Lenny
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-114' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Hiker Lenny', 'Trainer', false, 8)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 533, 29, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 207, 29, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 105, 29, 3, '[]'::jsonb);


  -- Team Magma Grunt
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'meteor-falls-1f' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Team Magma Grunt', 'Trainer', false, 1)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 42, 30, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 322, 30, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 95, 30, 3, '[]'::jsonb);


  -- Magma Admin Tabitha
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'meteor-falls-1f' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Magma Admin Tabitha', 'Trainer', false, 2)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 262, 33, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 110, 33, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 555, 35, 3, '[]'::jsonb);


  -- Team Aqua Grunt
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'meteor-falls-1f' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Team Aqua Grunt', 'Trainer', false, 3)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 42, 30, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 318, 30, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 114, 30, 3, '[]'::jsonb);


  -- Aqua Admin Shelly
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'meteor-falls-1f' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Aqua Admin Shelly', 'Trainer', false, 4)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 510, 33, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 89, 33, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 593, 35, 3, '[]'::jsonb);


  -- Team Magma Grunt
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'meteor-falls-1f' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Team Magma Grunt', 'Trainer', false, 5)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 42, 32, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 305, 32, 2, '[]'::jsonb);


  -- Magma Admin Tabitha
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'meteor-falls-1f' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Magma Admin Tabitha', 'Trainer', false, 6)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 262, 33, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 110, 33, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 143, 33, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 555, 35, 4, '[]'::jsonb);


  -- Magma Leader Maxie
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'meteor-falls-1f' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Magma Leader Maxie', 'Trainer', false, 7)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 42, 34, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 229, 34, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 247, 34, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 608, 34, 4, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 323, 36, 5, '[]'::jsonb);


  -- Team Aqua Grunt
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'meteor-falls-1f' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Team Aqua Grunt', 'Trainer', false, 8)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 42, 32, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 457, 32, 2, '[]'::jsonb);


  -- Aqua Admin Shelly
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'meteor-falls-1f' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Aqua Admin Shelly', 'Trainer', false, 9)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 510, 33, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 89, 33, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 131, 33, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 593, 35, 4, '[]'::jsonb);


  -- Aqua Leader Archie
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'meteor-falls-1f' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Aqua Leader Archie', 'Trainer', false, 10)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 42, 34, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 73, 34, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 148, 34, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 603, 34, 4, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 319, 36, 5, '[]'::jsonb);


  -- Expert Shelby
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'jagged-pass' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Expert Shelby', 'Trainer', false, 1)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 57, 35, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 448, 35, 2, '[]'::jsonb);


  -- Hiker Eric
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'jagged-pass' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Hiker Eric', 'Trainer', false, 2)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 204, 32, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 204, 32, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 205, 32, 3, '[]'::jsonb);


  -- Camper Ethan
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'jagged-pass' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Camper Ethan', 'Trainer', false, 3)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 207, 32, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 317, 32, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 24, 32, 3, '[]'::jsonb);


  -- Fairy Tale Girl Nellie
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'jagged-pass' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Fairy Tale Girl Nellie', 'Trainer', false, 4)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 670, 32, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 547, 32, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 707, 32, 3, '[]'::jsonb);


  -- Picknicker Diana
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'jagged-pass' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Picknicker Diana', 'Trainer', false, 5)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 188, 32, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 556, 32, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 153, 32, 3, '[]'::jsonb);


  -- Kindler Cole
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'lavaridge-gym' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Kindler Cole', 'Trainer', false, 1)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 126, 34, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 5, 34, 2, '[]'::jsonb);


  -- Kindler Axle
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'lavaridge-gym' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Kindler Axle', 'Trainer', false, 2)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 77, 33, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 631, 33, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 514, 33, 3, '[]'::jsonb);


  -- Battle Girl Sadie
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'lavaridge-gym' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Battle Girl Sadie', 'Trainer', false, 3)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 391, 34, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 499, 34, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 256, 34, 3, '[]'::jsonb);


  -- Ace Trainer Zane
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'lavaridge-gym' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Ace Trainer Zane', 'Trainer', false, 4)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 352, 35, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 59, 35, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 555, 35, 3, '[]'::jsonb);


  -- Kindler Andy
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'lavaridge-gym' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Kindler Andy', 'Trainer', false, 5)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 156, 33, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 136, 33, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 607, 33, 3, '[]'::jsonb);


  -- Ninja Boy Shoji
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'lavaridge-gym' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Ninja Boy Shoji', 'Trainer', false, 6)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 636, 33, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 654, 33, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 662, 33, 3, '[]'::jsonb);


  -- Ninja Boy Hiromichi
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'lavaridge-gym' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Ninja Boy Hiromichi', 'Trainer', false, 7)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 435, 35, 1, '[]'::jsonb);


  -- Leader Flannery
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'lavaridge-gym' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Leader Flannery', 'Trainer', false, 8)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 38, 36, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 229, 36, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 655, 36, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 219, 36, 4, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 323, 36, 5, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 324, 38, 6, '[]'::jsonb);


  -- Camper Cliff
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'lavaridge-gym' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Camper Cliff', 'Trainer', false, 9)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 444, 35, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 28, 35, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 332, 35, 3, '[]'::jsonb);


  -- Picnicker Heidi
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'lavaridge-gym' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Picnicker Heidi', 'Trainer', false, 10)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 449, 35, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 343, 35, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 450, 35, 3, '[]'::jsonb);


  -- Camper Drew
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'lavaridge-gym' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Camper Drew', 'Trainer', false, 11)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 552, 35, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 329, 35, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 695, 35, 3, '[]'::jsonb);


  -- Picnicker Becky
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'lavaridge-gym' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Picnicker Becky', 'Trainer', false, 12)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 558, 36, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 573, 36, 2, '[]'::jsonb);


  -- Black Belt Daisuke
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'lavaridge-gym' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Black Belt Daisuke', 'Trainer', false, 13)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 67, 37, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 308, 37, 2, '[]'::jsonb);


  -- Ruin Maniac Dusty
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'lavaridge-gym' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Ruin Maniac Dusty', 'Trainer', false, 14)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 561, 36, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 344, 36, 2, '[]'::jsonb);


  -- Ace Trainer Randall
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'petalburg-gym' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Ace Trainer Randall', 'Trainer', false, 1)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 53, 37, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 20, 37, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 428, 37, 3, '[]'::jsonb);


  -- Ace Trainer Mary
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'petalburg-gym' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Ace Trainer Mary', 'Trainer', false, 2)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 301, 37, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 531, 37, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 233, 37, 3, '[]'::jsonb);


  -- Ace Trainer Parker
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'petalburg-gym' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Ace Trainer Parker', 'Trainer', false, 3)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 203, 37, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 206, 37, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 234, 37, 3, '[]'::jsonb);


  -- Ace Trainer Lori
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'petalburg-gym' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Ace Trainer Lori', 'Trainer', false, 4)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 128, 37, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 241, 37, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 676, 37, 3, '[]'::jsonb);


  -- Ace Trainer George
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'petalburg-gym' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Ace Trainer George', 'Trainer', false, 5)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 113, 37, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 143, 37, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 242, 37, 3, '[]'::jsonb);


  -- Ace Trainer Jody
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'petalburg-gym' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Ace Trainer Jody', 'Trainer', false, 6)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 217, 37, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 508, 37, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 115, 37, 3, '[]'::jsonb);


  -- Ace Trainer Berke
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'petalburg-gym' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Ace Trainer Berke', 'Trainer', false, 7)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 432, 37, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 235, 37, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 463, 37, 3, '[]'::jsonb);


  -- Leader Norman
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'petalburg-gym' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Leader Norman', 'Trainer', false, 8)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 424, 40, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 295, 40, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 398, 40, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 586, 40, 4, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 626, 40, 5, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 289, 42, 6, '[]'::jsonb);


  -- Swimmer Beverly
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-105' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Swimmer Beverly', 'Trainer', false, 1)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 8, 36, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 61, 36, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 55, 36, 3, '[]'::jsonb);


  -- Triathlete Vin
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-105' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Triathlete Vin', 'Trainer', false, 2)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 363, 36, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 86, 36, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 364, 36, 3, '[]'::jsonb);


  -- Swimmer Dawn
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-105' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Swimmer Dawn', 'Trainer', false, 3)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 370, 36, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 370, 36, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 594, 36, 3, '[]'::jsonb);


  -- Ruin Maniac Foster
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-105' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Ruin Maniac Foster', 'Trainer', false, 4)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 409, 37, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 369, 37, 2, '[]'::jsonb);


  -- Swimmer Luis
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-105' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Swimmer Luis', 'Trainer', false, 5)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 418, 37, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 419, 37, 2, '[]'::jsonb);


  -- Swimmer Austin
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-105' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Swimmer Austin', 'Trainer', false, 6)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 61, 36, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 147, 36, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 279, 36, 3, '[]'::jsonb);


  -- Swimmer Jerome
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-108' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Swimmer Jerome', 'Trainer', false, 1)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 536, 36, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 688, 36, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 319, 36, 3, '[]'::jsonb);


  -- Swimmer Missy
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-108' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Swimmer Missy', 'Trainer', false, 2)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 350, 38, 1, '[]'::jsonb);


  -- Swimmer Tara
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-108' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Swimmer Tara', 'Trainer', false, 3)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 134, 38, 1, '[]'::jsonb);


  -- Ace Trainer Constance
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-108' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Ace Trainer Constance', 'Trainer', false, 4)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 603, 38, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 426, 38, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 583, 38, 3, '[]'::jsonb);


  -- Ace Trainer Neville
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-108' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Ace Trainer Neville', 'Trainer', false, 5)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 274, 38, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 596, 38, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 693, 38, 3, '[]'::jsonb);


  -- Swimmer Matthew
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-108' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Swimmer Matthew', 'Trainer', false, 6)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 80, 37, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 199, 37, 2, '[]'::jsonb);


  -- Sailor Duncan
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'sea-mauville-outside' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Sailor Duncan', 'Trainer', false, 1)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 689, 38, 1, '[]'::jsonb);


  -- Tuber Charlie
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'sea-mauville-outside' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Tuber Charlie', 'Trainer', false, 2)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 171, 38, 1, '[]'::jsonb);


  -- Young Couple Lois & Hal
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'sea-mauville-inside' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Young Couple Lois & Hal', 'Trainer', false, 1)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 542, 38, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 545, 38, 2, '[]'::jsonb);


  -- Mysterious Sisters Scall & Ion
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'sea-mauville-inside' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Mysterious Sisters Scall & Ion', 'Trainer', false, 2)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 354, 60, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 122, 59, 2, '[]'::jsonb);


  -- Battle Girl Cyndy
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-115' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Battle Girl Cyndy', 'Trainer', false, 1)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 538, 33, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 286, 33, 2, '[]'::jsonb);


  -- Black Belt Nob
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-115' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Black Belt Nob', 'Trainer', false, 2)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 539, 33, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 675, 33, 2, '[]'::jsonb);


  -- Collector Hector (Ru)
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-115' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Collector Hector (Ru)', 'Trainer', false, 3)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 284, 31, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 335, 31, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 336, 31, 3, '[]'::jsonb);


  -- Collector Hector (As)
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-115' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Collector Hector (As)', 'Trainer', false, 4)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 284, 31, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 335, 31, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 336, 31, 3, '[]'::jsonb);


  -- Black Belt Koichi
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-115' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Black Belt Koichi', 'Trainer', false, 5)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 533, 37, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 454, 37, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 652, 37, 3, '[]'::jsonb);


  -- Expert Timothy
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-115' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Expert Timothy', 'Trainer', false, 6)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 106, 38, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 107, 38, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 237, 38, 3, '[]'::jsonb);


  -- Ruin Maniac Hayes
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-115' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Ruin Maniac Hayes', 'Trainer', false, 7)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 567, 36, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 565, 36, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 142, 36, 3, '[]'::jsonb);


  -- Aroma Lady Rose
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-118' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Aroma Lady Rose', 'Trainer', false, 1)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 191, 22, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 152, 22, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 315, 22, 3, '[]'::jsonb);


  -- Guitarist Dalton
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-118' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Guitarist Dalton', 'Trainer', false, 2)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 81, 22, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 293, 22, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 441, 22, 3, '[]'::jsonb);


  -- Fisherman Wade
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-118' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Fisherman Wade', 'Trainer', false, 3)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 318, 23, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 211, 23, 2, '[]'::jsonb);


  -- Team Magma Grunt
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'southern-island' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Team Magma Grunt', 'Trainer', false, 1)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 33, 39, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 219, 39, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 335, 39, 3, '[]'::jsonb);


  -- Magma Admin Courtney
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'southern-island' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Magma Admin Courtney', 'Trainer', false, 2)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 78, 42, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 668, 42, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 6, 44, 3, '[]'::jsonb);


  -- Team Aqua Grunt
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'southern-island' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Team Aqua Grunt', 'Trainer', false, 3)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 30, 39, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 457, 39, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 336, 39, 3, '[]'::jsonb);


  -- Aqua Admin Matt
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'southern-island' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Aqua Admin Matt', 'Trainer', false, 4)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 55, 42, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 689, 42, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 9, 44, 3, '[]'::jsonb);


  -- Bug Maniac Donald
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'southern-island' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Bug Maniac Donald', 'Trainer', false, 5)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 123, 40, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 127, 40, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 214, 40, 3, '[]'::jsonb);


  -- Bug Catcher Doug
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'southern-island' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Bug Catcher Doug', 'Trainer', false, 6)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 267, 39, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 47, 39, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 291, 39, 3, '[]'::jsonb);


  -- Bug Catcher Kent
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'southern-island' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Bug Catcher Kent', 'Trainer', false, 7)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 269, 39, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 49, 39, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 413, 39, 3, '[]'::jsonb);


  -- Bug Catcher Greg
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'southern-island' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Bug Catcher Greg', 'Trainer', false, 8)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 168, 39, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 666, 39, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 15, 39, 3, '[]'::jsonb);


  -- Bug Maniac Taylor
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'southern-island' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Bug Maniac Taylor', 'Trainer', false, 9)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 469, 40, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 416, 40, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 348, 40, 3, '[]'::jsonb);


  -- Bug Maniac Brent
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'southern-island' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Bug Maniac Brent', 'Trainer', false, 10)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 212, 40, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 632, 40, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 589, 40, 3, '[]'::jsonb);


  -- PKMN Ranger Catherine
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'southern-island' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'PKMN Ranger Catherine', 'Trainer', false, 11)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 611, 40, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 389, 40, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 530, 40, 3, '[]'::jsonb);


  -- Brains & Brawn Jael & Kael
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'southern-island' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Brains & Brawn Jael & Kael', 'Trainer', false, 12)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 65, 43, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 534, 43, 2, '[]'::jsonb);


  -- PKMN Ranger Jackson
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'southern-island' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'PKMN Ranger Jackson', 'Trainer', false, 13)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 288, 40, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 631, 40, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 357, 40, 3, '[]'::jsonb);


  -- Bird Keeper Hugh
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'southern-island' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Bird Keeper Hugh', 'Trainer', false, 14)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 85, 41, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 277, 41, 2, '[]'::jsonb);


  -- Ninja Boy Takashi
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'southern-island' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Ninja Boy Takashi', 'Trainer', false, 15)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 617, 42, 1, '[]'::jsonb);


  -- Bird Keeper Phil
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'southern-island' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Bird Keeper Phil', 'Trainer', false, 16)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 177, 40, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 177, 40, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 178, 40, 3, '[]'::jsonb);


  -- Team Magma Grunt
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'weather-institute' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Team Magma Grunt', 'Trainer', false, 1)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 262, 43, 1, '[]'::jsonb);


  -- Team Magma Grunt
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'weather-institute' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Team Magma Grunt', 'Trainer', false, 2)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 208, 43, 1, '[]'::jsonb);


  -- Team Magma Grunt
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'weather-institute' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Team Magma Grunt', 'Trainer', false, 3)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 323, 43, 1, '[]'::jsonb);


  -- Team Magma Grunt
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'weather-institute' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Team Magma Grunt', 'Trainer', false, 4)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 42, 43, 1, '[]'::jsonb);


  -- Magma Admin Tabitha
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'weather-institute' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Magma Admin Tabitha', 'Trainer', false, 5)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 262, 46, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 110, 46, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 143, 46, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 526, 46, 4, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 323, 46, 5, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 555, 48, 6, '[]'::jsonb);


  -- Team Aqua Grunt
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'weather-institute' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Team Aqua Grunt', 'Trainer', false, 6)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 510, 43, 1, '[]'::jsonb);


  -- Team Aqua Grunt
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'weather-institute' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Team Aqua Grunt', 'Trainer', false, 7)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 465, 43, 1, '[]'::jsonb);


  -- Team Aqua Grunt
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'weather-institute' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Team Aqua Grunt', 'Trainer', false, 8)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 319, 43, 1, '[]'::jsonb);


  -- Team Aqua Grunt
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'weather-institute' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Team Aqua Grunt', 'Trainer', false, 9)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 42, 43, 1, '[]'::jsonb);


  -- Aqua Admin Shelly
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'weather-institute' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Aqua Admin Shelly', 'Trainer', false, 10)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 510, 46, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 89, 46, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 131, 46, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 407, 46, 4, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 319, 46, 5, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 593, 48, 6, '[]'::jsonb);


  -- PKMN Trainer Brendan
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'weather-institute' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'PKMN Trainer Brendan', 'Trainer', false, 11)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 277, 47, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 26, 47, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 78, 47, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 321, 47, 4, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 254, 49, 5, '[]'::jsonb);


  -- PKMN Trainer Brendan
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'weather-institute' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'PKMN Trainer Brendan', 'Trainer', false, 12)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 277, 47, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 26, 47, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 321, 47, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 286, 47, 4, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 257, 49, 5, '[]'::jsonb);


  -- PKMN Trainer Brendan
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'weather-institute' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'PKMN Trainer Brendan', 'Trainer', false, 13)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 277, 47, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 26, 47, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 286, 47, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 78, 47, 4, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 260, 49, 5, '[]'::jsonb);


  -- PKMN Trainer May
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'weather-institute' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'PKMN Trainer May', 'Trainer', false, 14)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 277, 47, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 26, 47, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 78, 47, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 321, 47, 4, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 254, 49, 5, '[]'::jsonb);


  -- PKMN Trainer May
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'weather-institute' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'PKMN Trainer May', 'Trainer', false, 15)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 277, 47, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 26, 47, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 321, 47, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 286, 47, 4, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 257, 49, 5, '[]'::jsonb);


  -- PKMN Trainer May
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'weather-institute' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'PKMN Trainer May', 'Trainer', false, 16)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 277, 47, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 26, 47, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 286, 47, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 78, 47, 4, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 260, 49, 5, '[]'::jsonb);


  -- Ninja Boy Yasu
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'weather-institute' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Ninja Boy Yasu', 'Trainer', false, 17)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 101, 43, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 110, 43, 2, '[]'::jsonb);


  -- Ninja Boy Hideo
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'weather-institute' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Ninja Boy Hideo', 'Trainer', false, 18)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 658, 44, 1, '[]'::jsonb);


  -- Fisherman Eugene
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'weather-institute' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Fisherman Eugene', 'Trainer', false, 19)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 618, 44, 1, '[]'::jsonb);


  -- Secret Base Expert Aarune
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'fortree-city' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Secret Base Expert Aarune', 'Trainer', false, 1)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 330, 48, 1, '[]'::jsonb);


  -- Parasol Lady Clarissa
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'fortree-city' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Parasol Lady Clarissa', 'Trainer', false, 2)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 351, 46, 1, '[]'::jsonb);


  -- Bird Keeper Robert
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'fortree-city' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Bird Keeper Robert', 'Trainer', false, 3)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 18, 46, 1, '[]'::jsonb);


  -- Bird Keeper Colin
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'fortree-city' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Bird Keeper Colin', 'Trainer', false, 4)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 398, 46, 1, '[]'::jsonb);


  -- Bird Keeper Jared
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'fortree-gym' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Bird Keeper Jared', 'Trainer', false, 1)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 85, 45, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 164, 45, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 581, 45, 3, '[]'::jsonb);


  -- Picnicker Kylee
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'fortree-gym' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Picnicker Kylee', 'Trainer', false, 2)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 472, 45, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 468, 45, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 189, 45, 3, '[]'::jsonb);


  -- Camper Terrell
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'fortree-gym' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Camper Terrell', 'Trainer', false, 3)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 357, 45, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 169, 45, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 528, 45, 3, '[]'::jsonb);


  -- Bird Keeper Will
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'fortree-gym' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Bird Keeper Will', 'Trainer', false, 4)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 628, 45, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 83, 45, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 225, 45, 3, '[]'::jsonb);


  -- Bird Keeper Bran
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'fortree-gym' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Bird Keeper Bran', 'Trainer', false, 5)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 701, 45, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 178, 45, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 630, 45, 3, '[]'::jsonb);


  -- Leader Winona
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'fortree-gym' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Leader Winona', 'Trainer', false, 6)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 227, 48, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 430, 48, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 561, 48, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 130, 48, 4, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 663, 48, 5, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 334, 50, 6, '[]'::jsonb);


  -- Ninja Boy Tsunao
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'fortree-gym' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Ninja Boy Tsunao', 'Trainer', false, 7)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 414, 46, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 454, 46, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 452, 46, 3, '[]'::jsonb);


  -- Ace Trainer Jennifer
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'fortree-gym' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Ace Trainer Jennifer', 'Trainer', false, 8)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 154, 47, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 350, 47, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 429, 47, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 26, 47, 4, '[]'::jsonb);


  -- Parasol Lady Angelica
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'fortree-gym' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Parasol Lady Angelica', 'Trainer', false, 9)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 38, 45, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 351, 45, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 192, 45, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 421, 45, 4, '[]'::jsonb);


  -- Bug Maniac Brandon
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'fortree-gym' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Bug Maniac Brandon', 'Trainer', false, 10)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 402, 47, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 168, 47, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 205, 47, 3, '[]'::jsonb);


  -- Street Thug Gomez
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'fortree-gym' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Street Thug Gomez', 'Trainer', false, 11)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 229, 47, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 591, 47, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 34, 47, 3, '[]'::jsonb);


  -- Delinquent Sharlene
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'fortree-gym' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Delinquent Sharlene', 'Trainer', false, 12)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 560, 47, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 31, 47, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 461, 47, 3, '[]'::jsonb);


  -- Ruin Maniac Chip
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'fortree-gym' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Ruin Maniac Chip', 'Trainer', false, 13)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 346, 45, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 699, 45, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 411, 45, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 697, 45, 4, '[]'::jsonb);


  -- Ninja Boy Keigo
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'fortree-gym' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Ninja Boy Keigo', 'Trainer', false, 14)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 291, 47, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 435, 47, 2, '[]'::jsonb);


  -- PKMN Ranger Carlos
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'fortree-gym' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'PKMN Ranger Carlos', 'Trainer', false, 15)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 462, 46, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 3, 46, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 668, 46, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 55, 46, 4, '[]'::jsonb);


  -- Hex Maniac Tammy
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-121' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Hex Maniac Tammy', 'Trainer', false, 1)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 93, 47, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 200, 47, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 354, 47, 3, '[]'::jsonb);


  -- Beauty Jessica
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-121' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Beauty Jessica', 'Trainer', false, 2)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 336, 47, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 553, 47, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 359, 47, 3, '[]'::jsonb);


  -- Gentleman Walter
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-121' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Gentleman Walter', 'Trainer', false, 3)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 310, 47, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 59, 47, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 181, 47, 3, '[]'::jsonb);


  -- Poké Fan Vanessa
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-121' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Poké Fan Vanessa', 'Trainer', false, 4)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 210, 47, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 678, 47, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 471, 47, 3, '[]'::jsonb);


  -- Teammates Kate & Joy
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-121' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Teammates Kate & Joy', 'Trainer', false, 5)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 327, 49, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 289, 50, 2, '[]'::jsonb);


  -- Aroma Lady Violet
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-123' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Aroma Lady Violet', 'Trainer', false, 1)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 44, 39, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 45, 39, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 182, 39, 3, '[]'::jsonb);


  -- Twins Miu & Yuki
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-123' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Twins Miu & Yuki', 'Trainer', false, 2)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 514, 41, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 512, 41, 2, '[]'::jsonb);


  -- Psychic Cameron
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-123' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Psychic Cameron', 'Trainer', false, 3)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 687, 50, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 326, 50, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 518, 50, 3, '[]'::jsonb);


  -- Picnicker Martha
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-123' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Picnicker Martha', 'Trainer', false, 4)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 470, 49, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 221, 49, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 705, 49, 3, '[]'::jsonb);


  -- Street Thug Hannibal
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-123' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Street Thug Hannibal', 'Trainer', false, 5)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 680, 50, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 89, 50, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 569, 50, 3, '[]'::jsonb);


  -- Delinquent Kylie
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-123' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Delinquent Kylie', 'Trainer', false, 6)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 71, 50, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 197, 50, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 625, 50, 3, '[]'::jsonb);


  -- Ace Trainer Clyde
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-123' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Ace Trainer Clyde', 'Trainer', false, 7)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 612, 50, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 464, 50, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 257, 50, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 94, 50, 4, '[]'::jsonb);


  -- Ace Trainer Julie
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-123' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Ace Trainer Julie', 'Trainer', false, 8)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 234, 50, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 157, 50, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 601, 50, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 549, 50, 4, '[]'::jsonb);


  -- Ace Trainer Wendy
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-123' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Ace Trainer Wendy', 'Trainer', false, 9)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 576, 50, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 503, 50, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 637, 50, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 407, 50, 4, '[]'::jsonb);


  -- Fisherman Timin
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-123' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Fisherman Timin', 'Trainer', false, 10)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 119, 51, 1, '[]'::jsonb);


  -- Fisherman Fisher
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-123' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Fisherman Fisher', 'Trainer', false, 11)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 340, 51, 1, '[]'::jsonb);


  -- Fisherman Finley
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-123' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Fisherman Finley', 'Trainer', false, 12)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 342, 51, 1, '[]'::jsonb);


  -- PKMN Trainer Brendan
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'lilycove-city' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'PKMN Trainer Brendan', 'Trainer', false, 1)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 277, 53, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 26, 53, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 700, 53, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 78, 53, 4, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 321, 53, 5, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 254, 55, 6, '[]'::jsonb);


  -- PKMN Trainer Brendan
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'lilycove-city' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'PKMN Trainer Brendan', 'Trainer', false, 2)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 277, 53, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 26, 53, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 700, 53, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 321, 53, 4, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 286, 53, 5, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 257, 55, 6, '[]'::jsonb);


  -- PKMN Trainer Brendan
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'lilycove-city' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'PKMN Trainer Brendan', 'Trainer', false, 3)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 277, 53, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 26, 53, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 700, 53, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 286, 53, 4, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 78, 53, 5, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 260, 55, 6, '[]'::jsonb);


  -- PKMN Trainer May
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'lilycove-city' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'PKMN Trainer May', 'Trainer', false, 4)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 277, 53, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 26, 53, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 700, 53, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 78, 53, 4, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 321, 53, 5, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 254, 55, 6, '[]'::jsonb);


  -- PKMN Trainer May
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'lilycove-city' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'PKMN Trainer May', 'Trainer', false, 5)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 277, 53, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 26, 53, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 700, 53, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 321, 53, 4, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 286, 53, 5, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 257, 55, 6, '[]'::jsonb);


  -- PKMN Trainer May
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'lilycove-city' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'PKMN Trainer May', 'Trainer', false, 6)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 277, 53, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 26, 53, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 700, 53, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 286, 53, 4, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 78, 53, 5, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 260, 55, 6, '[]'::jsonb);


  -- Team Magma Grunt
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'magma-hideout' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Team Magma Grunt', 'Trainer', false, 1)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 262, 54, 1, '[]'::jsonb);


  -- Team Magma Grunt
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'magma-hideout' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Team Magma Grunt', 'Trainer', false, 2)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 110, 52, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 42, 52, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 555, 52, 3, '[]'::jsonb);


  -- Team Magma Grunt
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'magma-hideout' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Team Magma Grunt', 'Trainer', false, 3)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 76, 54, 1, '[]'::jsonb);


  -- Team Magma Grunt
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'magma-hideout' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Team Magma Grunt', 'Trainer', false, 4)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 219, 52, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 323, 52, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 112, 52, 3, '[]'::jsonb);


  -- Team Magma Grunt
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'magma-hideout' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Team Magma Grunt', 'Trainer', false, 5)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 335, 54, 1, '[]'::jsonb);


  -- Team Magma Grunt
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'magma-hideout' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Team Magma Grunt', 'Trainer', false, 6)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 306, 54, 1, '[]'::jsonb);


  -- Team Magma Grunts
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'magma-hideout' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Team Magma Grunts', 'Trainer', false, 7)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 136, 39, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 136, 39, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 136, 39, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 136, 39, 4, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 136, 39, 5, '[]'::jsonb);


  -- Magma Admin Courtney
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'magma-hideout' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Magma Admin Courtney', 'Trainer', false, 8)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 78, 55, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 668, 55, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 464, 55, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 323, 55, 4, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 34, 55, 5, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 6, 57, 6, '[]'::jsonb);


  -- Team Aqua Grunt
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'aqua-hideout' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Team Aqua Grunt', 'Trainer', false, 1)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 262, 54, 1, '[]'::jsonb);


  -- Team Aqua Grunt
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'aqua-hideout' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Team Aqua Grunt', 'Trainer', false, 2)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 89, 52, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 42, 52, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 593, 52, 3, '[]'::jsonb);


  -- Team Aqua Grunt
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'aqua-hideout' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Team Aqua Grunt', 'Trainer', false, 3)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 45, 54, 1, '[]'::jsonb);


  -- Team Aqua Grunt
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'aqua-hideout' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Team Aqua Grunt', 'Trainer', false, 4)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 457, 52, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 319, 52, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 598, 52, 3, '[]'::jsonb);


  -- Team Aqua Grunt
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'aqua-hideout' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Team Aqua Grunt', 'Trainer', false, 5)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 336, 54, 1, '[]'::jsonb);


  -- Team Aqua Grunt
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'aqua-hideout' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Team Aqua Grunt', 'Trainer', false, 6)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 71, 54, 1, '[]'::jsonb);


  -- Team Aqua Grunts
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'aqua-hideout' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Team Aqua Grunts', 'Trainer', false, 7)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 134, 39, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 134, 39, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 134, 39, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 134, 39, 4, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 134, 39, 5, '[]'::jsonb);


  -- Aqua Admin Matt
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'aqua-hideout' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Aqua Admin Matt', 'Trainer', false, 8)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 55, 55, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 689, 55, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 598, 55, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 319, 55, 4, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 31, 55, 5, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 9, 57, 6, '[]'::jsonb);


  -- Swimmer Jenny
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-124' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Swimmer Jenny', 'Trainer', false, 1)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 370, 53, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 222, 53, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 594, 53, 3, '[]'::jsonb);


  -- Swimmer Roland
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-124' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Swimmer Roland', 'Trainer', false, 2)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 141, 53, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 62, 53, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 224, 53, 3, '[]'::jsonb);


  -- Swimmer Grace
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-124' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Swimmer Grace', 'Trainer', false, 3)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 184, 54, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 186, 54, 2, '[]'::jsonb);


  -- Sis & Bro Rita & Sam
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-124' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Sis & Bro Rita & Sam', 'Trainer', false, 4)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 395, 55, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 503, 56, 2, '[]'::jsonb);


  -- Swimmer Spencer
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-124' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Swimmer Spencer', 'Trainer', false, 5)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 279, 53, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 73, 53, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 340, 53, 3, '[]'::jsonb);


  -- Swimmer Chad
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-124' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Swimmer Chad', 'Trainer', false, 6)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 55, 53, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 199, 53, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 400, 53, 3, '[]'::jsonb);


  -- Sailor Ernest
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-125' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Sailor Ernest', 'Trainer', false, 1)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 423, 54, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 68, 54, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 20, 54, 3, '[]'::jsonb);


  -- Teammates Kim & Iris
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-125' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Teammates Kim & Iris', 'Trainer', false, 2)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 334, 56, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 6, 57, 2, '[]'::jsonb);


  -- Swimmer Stan
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-125' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Swimmer Stan', 'Trainer', false, 3)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 565, 55, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 693, 55, 2, '[]'::jsonb);


  -- Swimmer Tanya
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-125' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Swimmer Tanya', 'Trainer', false, 4)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 419, 55, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 226, 55, 2, '[]'::jsonb);


  -- Swimmer Sharon
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-125' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Swimmer Sharon', 'Trainer', false, 5)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 131, 56, 1, '[]'::jsonb);


  -- Swimmer Cody
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-125' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Swimmer Cody', 'Trainer', false, 6)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 160, 55, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 272, 55, 2, '[]'::jsonb);


  -- Triathlete Denzel
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-126' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Triathlete Denzel', 'Trainer', false, 1)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 121, 55, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 319, 55, 2, '[]'::jsonb);


  -- Swimmer Barry
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-126' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Swimmer Barry', 'Trainer', false, 2)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 130, 56, 1, '[]'::jsonb);


  -- Swimmer Dean
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-126' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Swimmer Dean', 'Trainer', false, 3)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 321, 55, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 689, 55, 2, '[]'::jsonb);


  -- Ace Trainer Harriet
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-126' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Ace Trainer Harriet', 'Trainer', false, 4)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 478, 55, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 467, 55, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 254, 55, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 230, 55, 4, '[]'::jsonb);


  -- Ace Trainer Leopold
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-126' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Ace Trainer Leopold', 'Trainer', false, 5)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 9, 55, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 623, 55, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 466, 55, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 615, 55, 4, '[]'::jsonb);


  -- Swimmer Brenda
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-126' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Swimmer Brenda', 'Trainer', false, 6)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 284, 55, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 368, 55, 2, '[]'::jsonb);


  -- Swimmer Nikki
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-126' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Swimmer Nikki', 'Trainer', false, 7)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 367, 54, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 457, 54, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 581, 54, 3, '[]'::jsonb);


  -- Bird Keeper Byron
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-127' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Bird Keeper Byron', 'Trainer', false, 1)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 227, 54, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 561, 54, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 521, 54, 3, '[]'::jsonb);


  -- Ace Trainer Hisato
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-127' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Ace Trainer Hisato', 'Trainer', false, 2)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 473, 55, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 202, 55, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 681, 55, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 230, 55, 4, '[]'::jsonb);


  -- Ace Trainer Claudia
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-127' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Ace Trainer Claudia', 'Trainer', false, 3)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 260, 55, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 375, 55, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 476, 55, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 614, 55, 4, '[]'::jsonb);


  -- Fisherman Jonah
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-127' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Fisherman Jonah', 'Trainer', false, 4)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 369, 56, 1, '[]'::jsonb);


  -- Fisherman Henry
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-127' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Fisherman Henry', 'Trainer', false, 5)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 171, 56, 1, '[]'::jsonb);


  -- Fisherman Roger
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-127' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Fisherman Roger', 'Trainer', false, 6)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 99, 56, 1, '[]'::jsonb);


  -- Black Belt Koji
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-127' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Black Belt Koji', 'Trainer', false, 7)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 392, 55, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 214, 55, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 500, 55, 3, '[]'::jsonb);


  -- Triathlete Jaylon
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-127' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Triathlete Jaylon', 'Trainer', false, 8)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 419, 56, 1, '[]'::jsonb);


  -- Ace Trainer Cornelius
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-128' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Ace Trainer Cornelius', 'Trainer', false, 1)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 442, 55, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 715, 55, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 362, 55, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 604, 55, 4, '[]'::jsonb);


  -- Fisherman Wayne
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-128' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Fisherman Wayne', 'Trainer', false, 2)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 321, 56, 1, '[]'::jsonb);


  -- Triathlete Isaiah
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-128' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Triathlete Isaiah', 'Trainer', false, 3)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 457, 56, 1, '[]'::jsonb);


  -- Tuber Delmar
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-128' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Tuber Delmar', 'Trainer', false, 4)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 536, 56, 1, '[]'::jsonb);


  -- Tuber Marlene
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-128' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Tuber Marlene', 'Trainer', false, 5)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 61, 56, 1, '[]'::jsonb);


  -- Fisherman Fisk
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-129' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Fisherman Fisk', 'Trainer', false, 1)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 691, 56, 1, '[]'::jsonb);


  -- Fisherman Sheaffer
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-129' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Fisherman Sheaffer', 'Trainer', false, 2)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 211, 56, 1, '[]'::jsonb);


  -- Swimmer Reed
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-129' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Swimmer Reed', 'Trainer', false, 3)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 537, 54, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 340, 54, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 195, 54, 3, '[]'::jsonb);


  -- Ace Trainer Honor
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-129' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Ace Trainer Honor', 'Trainer', false, 4)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 584, 55, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 526, 55, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 512, 55, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 139, 55, 4, '[]'::jsonb);


  -- Swimmer Tisha
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-129' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Swimmer Tisha', 'Trainer', false, 5)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 186, 55, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 516, 55, 2, '[]'::jsonb);


  -- Triathlete Chase
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-129' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Triathlete Chase', 'Trainer', false, 6)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 230, 56, 1, '[]'::jsonb);


  -- Swimmer Katie
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-130' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Swimmer Katie', 'Trainer', false, 1)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 279, 54, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 226, 55, 2, '[]'::jsonb);


  -- Triathlete Karsen
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-130' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Triathlete Karsen', 'Trainer', false, 2)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 184, 56, 1, '[]'::jsonb);


  -- Swimmer Rodney
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-130' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Swimmer Rodney', 'Trainer', false, 3)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 73, 54, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 565, 54, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 342, 54, 3, '[]'::jsonb);


  -- Swimmer Kara
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-131' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Swimmer Kara', 'Trainer', false, 1)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 594, 54, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 593, 54, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 368, 54, 3, '[]'::jsonb);


  -- Swimmer Herman
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-131' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Swimmer Herman', 'Trainer', false, 2)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 369, 54, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 395, 54, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 55, 54, 3, '[]'::jsonb);


  -- Swimmer Susie
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-131' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Swimmer Susie', 'Trainer', false, 3)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 222, 54, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 134, 54, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 87, 54, 3, '[]'::jsonb);


  -- Swimmer Richard
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-131' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Swimmer Richard', 'Trainer', false, 4)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 224, 54, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 689, 54, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 91, 54, 3, '[]'::jsonb);


  -- Sis & Bro Rell & Ian
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-131' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Sis & Bro Rell & Ian', 'Trainer', false, 5)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 80, 56, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 199, 57, 2, '[]'::jsonb);


  -- Psychic Preston
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'mossdeep-gym' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Psychic Preston', 'Trainer', false, 1)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 97, 59, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 606, 59, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 678, 59, 3, '[]'::jsonb);


  -- Psychic Joshua
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'mossdeep-gym' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Psychic Joshua', 'Trainer', false, 2)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 579, 59, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 196, 59, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 103, 59, 3, '[]'::jsonb);


  -- Psychic Fritz
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'mossdeep-gym' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Psychic Fritz', 'Trainer', false, 3)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 326, 59, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 121, 59, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 65, 59, 3, '[]'::jsonb);


  -- Hex Maniac Kindra
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'mossdeep-gym' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Hex Maniac Kindra', 'Trainer', false, 4)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 202, 59, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 576, 59, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 344, 59, 3, '[]'::jsonb);


  -- Hex Manaic Patricia
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'mossdeep-gym' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Hex Manaic Patricia', 'Trainer', false, 5)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 124, 59, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 122, 59, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 655, 59, 3, '[]'::jsonb);


  -- Psychic Virgil
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'mossdeep-gym' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Psychic Virgil', 'Trainer', false, 6)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 687, 59, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 518, 59, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 203, 59, 3, '[]'::jsonb);


  -- Leaders Liza & Tate
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'mossdeep-gym' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Leaders Liza & Tate', 'Trainer', false, 7)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 338, 60, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 337, 60, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 437, 60, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 199, 60, 4, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 475, 62, 5, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 282, 62, 6, '[]'::jsonb);


  -- Black Belt Kiyo
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-132' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Black Belt Kiyo', 'Trainer', false, 1)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 107, 58, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 538, 58, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 297, 58, 3, '[]'::jsonb);


  -- Fisherman Ronald
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-132' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Fisherman Ronald', 'Trainer', false, 2)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 550, 58, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 550, 58, 2, '[]'::jsonb);


  -- Swimmer Gilbert
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-132' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Swimmer Gilbert', 'Trainer', false, 3)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 62, 59, 1, '[]'::jsonb);


  -- Swimmer Debra
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-133' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Swimmer Debra', 'Trainer', false, 1)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 222, 59, 1, '[]'::jsonb);


  -- Swimmer Franklin
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-133' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Swimmer Franklin', 'Trainer', false, 2)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 340, 59, 1, '[]'::jsonb);


  -- Swimmer Linda
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-133' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Swimmer Linda', 'Trainer', false, 3)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 119, 59, 1, '[]'::jsonb);


  -- Swimmer Sheryl
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-133' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Swimmer Sheryl', 'Trainer', false, 4)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 199, 59, 1, '[]'::jsonb);


  -- Bird Keeper Beck
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-133' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Bird Keeper Beck', 'Trainer', false, 5)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 85, 57, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 334, 57, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 430, 57, 3, '[]'::jsonb);


  -- Ace Trainer Warren
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-133' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Ace Trainer Warren', 'Trainer', false, 6)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 212, 58, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 609, 58, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 477, 58, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 65, 58, 4, '[]'::jsonb);


  -- Backpacker Grayson
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-133' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Backpacker Grayson', 'Trainer', false, 7)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 132, 59, 1, '[]'::jsonb);


  -- Fisherman River
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-133' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Fisherman River', 'Trainer', false, 8)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 230, 59, 1, '[]'::jsonb);


  -- Bird Keeper Alex
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-134' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Bird Keeper Alex', 'Trainer', false, 1)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 398, 57, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 521, 57, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 18, 57, 3, '[]'::jsonb);


  -- Swimmer Jack
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-134' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Swimmer Jack', 'Trainer', false, 2)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 319, 59, 1, '[]'::jsonb);


  -- Swimmer Laurel
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-134' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Swimmer Laurel', 'Trainer', false, 3)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 134, 59, 1, '[]'::jsonb);


  -- Dragon Tamer Aaron
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-134' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Dragon Tamer Aaron', 'Trainer', false, 4)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 372, 59, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 634, 59, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 148, 59, 3, '[]'::jsonb);


  -- Ace Trainer Elaine
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-134' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Ace Trainer Elaine', 'Trainer', false, 5)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 196, 58, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 468, 58, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 350, 58, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 497, 58, 4, '[]'::jsonb);


  -- Black Belt Hitoshi
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-134' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Black Belt Hitoshi', 'Trainer', false, 6)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 106, 58, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 539, 58, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 286, 58, 3, '[]'::jsonb);


  -- Scuba Diver Keaton
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'underwater-107' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Scuba Diver Keaton', 'Trainer', false, 1)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 321, 60, 1, '[]'::jsonb);


  -- Free Diver Hollie
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'underwater-107' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Free Diver Hollie', 'Trainer', false, 2)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 171, 60, 1, '[]'::jsonb);


  -- Scuba Diver Kylan
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'underwater-124' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Scuba Diver Kylan', 'Trainer', false, 1)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 230, 60, 1, '[]'::jsonb);


  -- Free Diver Rischel
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'underwater-124' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Free Diver Rischel', 'Trainer', false, 2)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 119, 60, 1, '[]'::jsonb);


  -- Scuba Diver Dmitry
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'underwater-124' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Scuba Diver Dmitry', 'Trainer', false, 3)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 121, 60, 1, '[]'::jsonb);


  -- Free Diver Arzu
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'underwater-124' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Free Diver Arzu', 'Trainer', false, 4)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 367, 59, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 368, 59, 2, '[]'::jsonb);


  -- Scuba Diver Tristan
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'underwater-126' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Scuba Diver Tristan', 'Trainer', false, 1)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 693, 60, 1, '[]'::jsonb);


  -- Scuba Diver Yukata
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'underwater-126' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Scuba Diver Yukata', 'Trainer', false, 2)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 279, 60, 1, '[]'::jsonb);


  -- Free Diver Jillian
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'underwater-126' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Free Diver Jillian', 'Trainer', false, 3)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 184, 60, 1, '[]'::jsonb);


  -- Scuba Diver Javier
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'underwater-127' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Scuba Diver Javier', 'Trainer', false, 1)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 369, 60, 1, '[]'::jsonb);


  -- Free Diver Kailyn
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'underwater-127' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Free Diver Kailyn', 'Trainer', false, 2)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 594, 60, 1, '[]'::jsonb);


  -- Free Diver Aileen
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'underwater-127' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Free Diver Aileen', 'Trainer', false, 3)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 365, 60, 1, '[]'::jsonb);


  -- Free Diver Mayu
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'underwater-128' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Free Diver Mayu', 'Trainer', false, 1)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 370, 60, 1, '[]'::jsonb);


  -- Scuba Diver Colten
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'underwater-129' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Scuba Diver Colten', 'Trainer', false, 1)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 55, 60, 1, '[]'::jsonb);


  -- Scuba Diver Jason
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'underwater-129' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Scuba Diver Jason', 'Trainer', false, 2)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 130, 60, 1, '[]'::jsonb);


  -- Free Diver Coral
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'underwater-129' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Free Diver Coral', 'Trainer', false, 3)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 73, 60, 1, '[]'::jsonb);


  -- Scuba Diver Silas
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'underwater-130' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Scuba Diver Silas', 'Trainer', false, 1)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 340, 60, 1, '[]'::jsonb);


  -- Free Diver Cordura
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'underwater-130' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Free Diver Cordura', 'Trainer', false, 2)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 222, 60, 1, '[]'::jsonb);


  -- Team Magma Grunt
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'seafloor-cavern-front-rooms' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Team Magma Grunt', 'Trainer', false, 1)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 76, 60, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 219, 60, 2, '[]'::jsonb);


  -- Team Magma Grunt
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'seafloor-cavern-front-rooms' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Team Magma Grunt', 'Trainer', false, 2)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 208, 60, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 110, 60, 2, '[]'::jsonb);


  -- Team Magma Grunt
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'seafloor-cavern-front-rooms' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Team Magma Grunt', 'Trainer', false, 3)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 668, 60, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 335, 60, 2, '[]'::jsonb);


  -- Team Magma Grunt
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'seafloor-cavern-front-rooms' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Team Magma Grunt', 'Trainer', false, 4)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 34, 60, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 555, 60, 2, '[]'::jsonb);


  -- Team Magma Grunt
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'seafloor-cavern-front-rooms' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Team Magma Grunt', 'Trainer', false, 5)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 526, 60, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 78, 60, 2, '[]'::jsonb);


  -- Team Aqua Grunt
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'seafloor-cavern-front-rooms' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Team Aqua Grunt', 'Trainer', false, 6)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 45, 60, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 457, 60, 2, '[]'::jsonb);


  -- Team Aqua Grunt
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'seafloor-cavern-front-rooms' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Team Aqua Grunt', 'Trainer', false, 7)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 465, 60, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 89, 60, 2, '[]'::jsonb);


  -- Team Aqua Grunt
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'seafloor-cavern-front-rooms' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Team Aqua Grunt', 'Trainer', false, 8)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 689, 60, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 336, 60, 2, '[]'::jsonb);


  -- Team Aqua Grunt
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'seafloor-cavern-front-rooms' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Team Aqua Grunt', 'Trainer', false, 9)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 31, 60, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 593, 60, 2, '[]'::jsonb);


  -- Team Aqua Grunt
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'seafloor-cavern-front-rooms' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Team Aqua Grunt', 'Trainer', false, 10)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 407, 60, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 55, 60, 2, '[]'::jsonb);


  -- Magma Leader Maxie
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'seafloor-cavern-back-rooms' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Magma Leader Maxie', 'Trainer', false, 1)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 169, 63, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 229, 63, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 344, 63, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 248, 63, 4, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 609, 63, 5, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 323, 65, 6, '[]'::jsonb);


  -- Aqua Leader Archie
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'seafloor-cavern-back-rooms' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Aqua Leader Archie', 'Trainer', false, 2)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 169, 63, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 73, 63, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 365, 63, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 149, 63, 4, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 604, 63, 5, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 319, 65, 6, '[]'::jsonb);


  -- Lass Andrea
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'sootopolis-gym' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Lass Andrea', 'Trainer', false, 1)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 516, 62, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 134, 62, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 321, 62, 3, '[]'::jsonb);


  -- Beauty Tiffany
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'sootopolis-gym' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Beauty Tiffany', 'Trainer', false, 2)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 226, 62, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 119, 62, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 91, 62, 3, '[]'::jsonb);


  -- Beauty Bridget
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'sootopolis-gym' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Beauty Bridget', 'Trainer', false, 3)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 80, 62, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 73, 62, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 195, 62, 3, '[]'::jsonb);


  -- Beauty Connie
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'sootopolis-gym' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Beauty Connie', 'Trainer', false, 4)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 222, 62, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 224, 62, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 340, 62, 3, '[]'::jsonb);


  -- Beauty Olivia
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'sootopolis-gym' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Beauty Olivia', 'Trainer', false, 5)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 419, 62, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 581, 62, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 689, 62, 3, '[]'::jsonb);


  -- Lady Brianna
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'sootopolis-gym' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Lady Brianna', 'Trainer', false, 6)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 537, 62, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 457, 62, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 279, 62, 3, '[]'::jsonb);


  -- Poké Fan Marissa
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'sootopolis-gym' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Poké Fan Marissa', 'Trainer', false, 7)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 171, 62, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 503, 62, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 184, 62, 3, '[]'::jsonb);


  -- Lass Crissy
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'sootopolis-gym' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Lass Crissy', 'Trainer', false, 8)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 62, 62, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 160, 62, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 319, 62, 3, '[]'::jsonb);


  -- Leader Wallace
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'sootopolis-gym' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Leader Wallace', 'Trainer', false, 9)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 186, 65, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 272, 65, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 230, 65, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 121, 65, 4, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 350, 65, 5, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 260, 67, 6, '[]'::jsonb);


  -- Dragon Tamer Nicolas
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'sootopolis-gym' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Dragon Tamer Nicolas', 'Trainer', false, 10)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 130, 65, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 254, 65, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 612, 65, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 697, 65, 4, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 142, 65, 5, '[]'::jsonb);


  -- Old Couple John & Jay
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'sootopolis-gym' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Old Couple John & Jay', 'Trainer', false, 11)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 62, 65, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 237, 65, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 297, 65, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 534, 65, 4, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 448, 65, 5, '[]'::jsonb);


  -- Battle Girl Tess
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'meteor-falls-b1f' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Battle Girl Tess', 'Trainer', false, 1)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 106, 65, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 57, 65, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 286, 65, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 454, 65, 4, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 214, 65, 5, '[]'::jsonb);


  -- Dragon Tamer Dray
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'meteor-falls-b1f' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Dragon Tamer Dray', 'Trainer', false, 2)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 334, 65, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 497, 65, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 350, 65, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 706, 65, 4, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 181, 65, 5, '[]'::jsonb);


  -- Ace Trainer Albert
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'victory-road-1f' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Ace Trainer Albert', 'Trainer', false, 1)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 76, 65, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 3, 65, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 713, 65, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 135, 65, 4, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 18, 65, 5, '[]'::jsonb);


  -- Ace Trainer Hope
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'victory-road-1f' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Ace Trainer Hope', 'Trainer', false, 2)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 471, 65, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 472, 65, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 637, 65, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 103, 65, 4, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 531, 65, 5, '[]'::jsonb);


  -- Ace Trainer Edgar
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'victory-road-1f' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Ace Trainer Edgar', 'Trainer', false, 3)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 673, 65, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 131, 65, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 474, 65, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 292, 65, 4, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 303, 65, 5, '[]'::jsonb);


  -- Street Thug Regan
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'victory-road-1f' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Street Thug Regan', 'Trainer', false, 4)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 452, 65, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 461, 65, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 553, 65, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 454, 65, 4, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 15, 65, 5, '[]'::jsonb);


  -- Brains & Brawn Aden & Finn
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'victory-road-1f' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Brains & Brawn Aden & Finn', 'Trainer', false, 5)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 518, 65, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 57, 65, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 282, 65, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 675, 65, 4, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 308, 65, 5, '[]'::jsonb);


  -- Expert Bryn
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'victory-road-b1f' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Expert Bryn', 'Trainer', false, 1)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 68, 65, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 538, 65, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 539, 65, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 620, 65, 4, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 428, 65, 5, '[]'::jsonb);


  -- Ace Duo Jude & Rory
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'victory-road-b1f' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Ace Duo Jude & Rory', 'Trainer', false, 2)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 479, 65, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 473, 65, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 466, 65, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 467, 65, 4, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 212, 65, 5, '[]'::jsonb);


  -- Expert Theodore
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'victory-road-b1f' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Expert Theodore', 'Trainer', false, 3)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 652, 65, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 106, 65, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 107, 65, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 500, 65, 4, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 257, 65, 5, '[]'::jsonb);


  -- Ace Trainer Vito
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'victory-road-b1f' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Ace Trainer Vito', 'Trainer', false, 4)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 101, 65, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 277, 65, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 275, 65, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 555, 65, 4, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 65, 65, 5, '[]'::jsonb);


  -- Dragon Tamer Egon
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'victory-road-b1f' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Dragon Tamer Egon', 'Trainer', false, 5)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 715, 65, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 621, 65, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 208, 65, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 24, 65, 4, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 6, 65, 5, '[]'::jsonb);


  -- PKMN Trainer Wally
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'victory-road-2f' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'PKMN Trainer Wally', 'Trainer', false, 1)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 407, 70, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 663, 70, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 184, 70, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 462, 70, 4, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 445, 70, 5, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 475, 72, 6, '[]'::jsonb);


  -- Elite Four Sidney
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'pokemon-league' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Elite Four Sidney', 'Trainer', false, 1)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 461, 70, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 560, 70, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 625, 70, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 248, 70, 4, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 658, 70, 5, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 359, 72, 6, '[]'::jsonb);


  -- Elite Four Phoebe
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'pokemon-league' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Elite Four Phoebe', 'Trainer', false, 2)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 429, 71, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 94, 71, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 681, 71, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 609, 71, 4, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 477, 71, 5, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 302, 73, 6, '[]'::jsonb);


  -- Elite Four Glacia
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'pokemon-league' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Elite Four Glacia', 'Trainer', false, 3)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 699, 72, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 478, 72, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 124, 72, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 473, 72, 4, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 365, 72, 5, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 362, 74, 6, '[]'::jsonb);


  -- Elite Four Drake
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'pokemon-league' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Elite Four Drake', 'Trainer', false, 4)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 635, 73, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 330, 73, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 612, 73, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 230, 73, 4, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 691, 73, 5, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 373, 75, 6, '[]'::jsonb);


  -- Champion Steven
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'pokemon-league' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Champion Steven', 'Trainer', false, 5)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 227, 77, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 306, 77, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 344, 77, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 142, 77, 4, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 719, 77, 5, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 376, 79, 6, '[]'::jsonb);


  -- PKMN Trainer Brendan
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'credits' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'PKMN Trainer Brendan', 'Trainer', false, 1)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 277, 75, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 26, 75, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 700, 75, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 78, 75, 4, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 321, 75, 5, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 254, 77, 6, '[]'::jsonb);


  -- PKMN Trainer Brendan
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'credits' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'PKMN Trainer Brendan', 'Trainer', false, 2)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 277, 75, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 26, 75, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 700, 75, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 321, 75, 4, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 286, 75, 5, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 257, 77, 6, '[]'::jsonb);


  -- PKMN Trainer Brendan
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'credits' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'PKMN Trainer Brendan', 'Trainer', false, 3)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 277, 75, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 26, 75, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 700, 75, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 286, 75, 4, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 78, 75, 5, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 260, 77, 6, '[]'::jsonb);


  -- PKMN Trainer May
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'credits' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'PKMN Trainer May', 'Trainer', false, 4)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 277, 75, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 26, 75, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 700, 75, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 78, 75, 4, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 321, 75, 5, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 254, 77, 6, '[]'::jsonb);


  -- PKMN Trainer May
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'credits' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'PKMN Trainer May', 'Trainer', false, 5)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 277, 75, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 26, 75, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 700, 75, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 321, 75, 4, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 286, 75, 5, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 257, 77, 6, '[]'::jsonb);


  -- PKMN Trainer May
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'credits' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'PKMN Trainer May', 'Trainer', false, 6)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 277, 75, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 26, 75, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 700, 75, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 286, 75, 4, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 78, 75, 5, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 260, 77, 6, '[]'::jsonb);


  -- Magma Admin Courtney
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'petalburg-city' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Magma Admin Courtney', 'Trainer', false, 1)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 78, 75, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 668, 75, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 464, 75, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 323, 75, 4, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 34, 75, 5, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 6, 77, 6, '[]'::jsonb);


  -- Aqua Admin Matt
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'petalburg-city' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Aqua Admin Matt', 'Trainer', false, 2)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 55, 75, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 689, 75, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 598, 75, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 319, 75, 4, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 31, 75, 5, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 9, 77, 6, '[]'::jsonb);


  -- Lorekeeper Zinnia
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'petalburg-city' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Lorekeeper Zinnia', 'Trainer', false, 3)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 334, 76, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 697, 76, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 715, 76, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 373, 78, 4, '[]'::jsonb);


  -- Team Magma Grunt
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'rustboro-city' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Team Magma Grunt', 'Trainer', false, 1)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 609, 75, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 601, 75, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 467, 75, 3, '[]'::jsonb);


  -- Team Magma Grunt
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'rustboro-city' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Team Magma Grunt', 'Trainer', false, 2)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 208, 75, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 157, 75, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 359, 75, 3, '[]'::jsonb);


  -- Team Magma Grunt
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'rustboro-city' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Team Magma Grunt', 'Trainer', false, 3)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 229, 75, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 262, 75, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 528, 75, 3, '[]'::jsonb);


  -- Team Aqua Grunt
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'rustboro-city' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Team Aqua Grunt', 'Trainer', false, 4)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 604, 75, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 192, 75, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 121, 75, 3, '[]'::jsonb);


  -- Team Aqua Grunt
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'rustboro-city' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Team Aqua Grunt', 'Trainer', false, 5)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 465, 75, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 395, 75, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 359, 75, 3, '[]'::jsonb);


  -- Team Aqua Grunt
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'rustboro-city' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Team Aqua Grunt', 'Trainer', false, 6)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 73, 75, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 510, 75, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 528, 75, 3, '[]'::jsonb);


  -- Team Magma Grunts
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'mossdeep-city' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Team Magma Grunts', 'Trainer', false, 1)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 136, 59, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 136, 59, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 136, 59, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 136, 59, 4, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 136, 59, 5, '[]'::jsonb);


  -- Team Magma Grunt
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'mossdeep-city' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Team Magma Grunt', 'Trainer', false, 2)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 38, 75, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 110, 75, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 500, 75, 3, '[]'::jsonb);


  -- Magma Admin Courtney
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'mossdeep-city' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Magma Admin Courtney', 'Trainer', false, 3)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 6, 79, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 668, 77, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 34, 77, 3, '[]'::jsonb);


  -- Team Aqua Grunts
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'mossdeep-city' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Team Aqua Grunts', 'Trainer', false, 4)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 134, 59, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 134, 59, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 134, 59, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 134, 59, 4, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 134, 59, 5, '[]'::jsonb);


  -- Team Aqua Grunt
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'mossdeep-city' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Team Aqua Grunt', 'Trainer', false, 5)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 186, 75, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 89, 75, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 160, 75, 3, '[]'::jsonb);


  -- Aqua Admin Matt
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'mossdeep-city' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Aqua Admin Matt', 'Trainer', false, 6)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 9, 79, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 689, 77, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 31, 77, 3, '[]'::jsonb);


  -- Team Magma Grunt
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'magma-hideout' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Team Magma Grunt', 'Trainer', false, 9)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 262, 75, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 348, 75, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 219, 75, 3, '[]'::jsonb);


  -- Team Magma Grunt
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'magma-hideout' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Team Magma Grunt', 'Trainer', false, 10)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 168, 75, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 323, 75, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 295, 75, 3, '[]'::jsonb);


  -- Team Magma Grunt
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'magma-hideout' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Team Magma Grunt', 'Trainer', false, 11)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 232, 75, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 335, 75, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 514, 75, 3, '[]'::jsonb);


  -- Team Magma Grunt
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'magma-hideout' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Team Magma Grunt', 'Trainer', false, 12)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 462, 75, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 324, 75, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 28, 75, 3, '[]'::jsonb);


  -- Team Magma Grunt
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'magma-hideout' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Team Magma Grunt', 'Trainer', false, 13)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 59, 75, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 169, 75, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 110, 75, 3, '[]'::jsonb);


  -- Team Magma Grunt
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'magma-hideout' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Team Magma Grunt', 'Trainer', false, 14)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 555, 75, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 143, 75, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 78, 75, 3, '[]'::jsonb);


  -- Team Aqua Grunt
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'aqua-hideout' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Team Aqua Grunt', 'Trainer', false, 9)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 510, 75, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 346, 75, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 457, 75, 3, '[]'::jsonb);


  -- Team Aqua Grunt
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'aqua-hideout' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Team Aqua Grunt', 'Trainer', false, 10)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 166, 75, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 319, 75, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 295, 75, 3, '[]'::jsonb);


  -- Team Aqua Grunt
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'aqua-hideout' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Team Aqua Grunt', 'Trainer', false, 11)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 217, 75, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 336, 75, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 516, 75, 3, '[]'::jsonb);


  -- Team Aqua Grunt
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'aqua-hideout' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Team Aqua Grunt', 'Trainer', false, 12)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 189, 75, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 594, 75, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 224, 75, 3, '[]'::jsonb);


  -- Team Aqua Grunt
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'aqua-hideout' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Team Aqua Grunt', 'Trainer', false, 13)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 91, 75, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 169, 75, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 89, 75, 3, '[]'::jsonb);


  -- Team Aqua Grunt
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'aqua-hideout' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Team Aqua Grunt', 'Trainer', false, 14)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 593, 75, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 131, 75, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 55, 75, 3, '[]'::jsonb);


  -- Sootopolitan Wallace
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-131' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Sootopolitan Wallace', 'Trainer', false, 6)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 186, 77, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 272, 77, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 230, 77, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 130, 77, 4, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 350, 79, 5, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 260, 79, 6, '[]'::jsonb);


  -- Lorekeeper Zinnia
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'sky-pillar' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Lorekeeper Zinnia', 'Trainer', false, 1)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 635, 79, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 706, 79, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 248, 79, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 149, 79, 4, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 445, 79, 5, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 373, 81, 6, '[]'::jsonb);


  -- Gentleman Tucker
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'sky-pillar' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Gentleman Tucker', 'Trainer', false, 2)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 78, 75, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 203, 75, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 586, 75, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 523, 75, 4, '[]'::jsonb);


  -- Rich Boy Garret
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'sky-pillar' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Rich Boy Garret', 'Trainer', false, 3)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 676, 75, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 676, 75, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 676, 75, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 676, 75, 4, '[]'::jsonb);


  -- Young Couple Lea & Jed
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'sky-pillar' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Young Couple Lea & Jed', 'Trainer', false, 4)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 241, 75, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 128, 75, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 31, 75, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 34, 75, 4, '[]'::jsonb);


  -- Poké Fan Colton
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'sky-pillar' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Poké Fan Colton', 'Trainer', false, 5)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 301, 75, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 678, 75, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 196, 75, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 53, 75, 4, '[]'::jsonb);


  -- Lady Anette
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'sky-pillar' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Lady Anette', 'Trainer', false, 6)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 547, 75, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 549, 75, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 556, 75, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 542, 75, 4, '[]'::jsonb);


  -- Gentleman Thomas
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'sky-pillar' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Gentleman Thomas', 'Trainer', false, 7)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 628, 75, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 561, 75, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 521, 75, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 581, 75, 4, '[]'::jsonb);


  -- Sailor Philip
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'sky-pillar' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Sailor Philip', 'Trainer', false, 8)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 211, 75, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 68, 75, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 9, 75, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 73, 75, 4, '[]'::jsonb);


  -- Sailor Leonard
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'sky-pillar' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Sailor Leonard', 'Trainer', false, 9)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 419, 75, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 279, 75, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 693, 75, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 675, 75, 4, '[]'::jsonb);


  -- Ace Trainer Carnation [Cynthia]
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'battle-resort' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Ace Trainer Carnation [Cynthia]', 'Trainer', false, 1)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 442, 86, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 407, 86, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 468, 86, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 448, 86, 4, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 350, 86, 5, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 445, 88, 6, '[]'::jsonb);


  -- Leader Carnation [Roxanne]
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'battle-resort' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Leader Carnation [Roxanne]', 'Trainer', false, 2)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 476, 79, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 139, 77, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 697, 77, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 348, 77, 4, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 346, 77, 5, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 142, 79, 6, '[]'::jsonb);


  -- Leader Carnation [Roxanne]
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'battle-resort' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Leader Carnation [Roxanne]', 'Trainer', false, 3)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 476, 79, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 139, 77, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 697, 77, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 348, 77, 4, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 346, 77, 5, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 142, 79, 6, '[]'::jsonb);


  -- Leader Carnation [Flannery]
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'battle-resort' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Leader Carnation [Flannery]', 'Trainer', false, 4)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 38, 77, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 229, 77, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 655, 77, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 467, 77, 4, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 324, 79, 5, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 323, 79, 6, '[]'::jsonb);


  -- Leader Carnation [Flannery]
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'battle-resort' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Leader Carnation [Flannery]', 'Trainer', false, 5)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 38, 77, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 229, 77, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 655, 77, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 467, 77, 4, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 324, 79, 5, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 323, 79, 6, '[]'::jsonb);


  -- Leader Carnation [Winona]
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'battle-resort' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Leader Carnation [Winona]', 'Trainer', false, 6)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 227, 77, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 430, 77, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 561, 77, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 149, 77, 4, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 663, 77, 5, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 334, 79, 6, '[]'::jsonb);


  -- Leader Carnation [Winona]
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'battle-resort' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Leader Carnation [Winona]', 'Trainer', false, 7)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 227, 77, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 430, 77, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 561, 77, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 149, 77, 4, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 663, 77, 5, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 334, 79, 6, '[]'::jsonb);


  -- Dragon Tamer Antonin [Lance]
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'battle-resort' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Dragon Tamer Antonin [Lance]', 'Trainer', false, 8)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 373, 86, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 130, 86, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 445, 86, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 334, 86, 4, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 6, 86, 5, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 149, 88, 6, '[]'::jsonb);


  -- Leader Antonin [Brawly]
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'battle-resort' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Leader Antonin [Brawly]', 'Trainer', false, 9)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 68, 77, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 214, 77, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 560, 77, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 534, 77, 4, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 297, 79, 5, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 308, 79, 6, '[]'::jsonb);


  -- Leader Antonin [Brawly]
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'battle-resort' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Leader Antonin [Brawly]', 'Trainer', false, 10)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 68, 77, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 214, 77, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 560, 77, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 534, 77, 4, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 297, 79, 5, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 308, 79, 6, '[]'::jsonb);


  -- Leader Antonin [Wattson]
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'battle-resort' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Leader Antonin [Wattson]', 'Trainer', false, 11)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 695, 77, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 181, 77, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 479, 77, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 462, 77, 4, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 26, 77, 5, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 310, 79, 6, '[]'::jsonb);


  -- Leader Antonin [Wattson]
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'battle-resort' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Leader Antonin [Wattson]', 'Trainer', false, 12)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 695, 77, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 181, 77, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 479, 77, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 462, 77, 4, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 26, 77, 5, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 310, 79, 6, '[]'::jsonb);


  -- Leader Antonin [Norman]
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'battle-resort' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Leader Antonin [Norman]', 'Trainer', false, 13)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 626, 77, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 295, 77, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 586, 77, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 335, 77, 4, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 289, 79, 5, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 115, 79, 6, '[]'::jsonb);


  -- Leader Antonin [Norman]
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'battle-resort' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Leader Antonin [Norman]', 'Trainer', false, 14)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 626, 77, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 295, 77, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 586, 77, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 335, 77, 4, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 289, 79, 5, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 115, 79, 6, '[]'::jsonb);


  -- Champion Josephine [Diantha]
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'battle-resort' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Champion Josephine [Diantha]', 'Trainer', false, 15)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 142, 86, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 407, 86, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 184, 86, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 655, 86, 4, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 706, 86, 5, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 282, 88, 6, '[]'::jsonb);


  -- Leader Josephine [Liza]
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'battle-resort' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Leader Josephine [Liza]', 'Trainer', false, 16)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 199, 77, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 576, 77, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 344, 77, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 326, 77, 4, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 337, 79, 5, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 282, 79, 6, '[]'::jsonb);


  -- Leader Josephine [Liza]
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'battle-resort' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Leader Josephine [Liza]', 'Trainer', false, 17)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 199, 77, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 576, 77, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 344, 77, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 326, 77, 4, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 337, 79, 5, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 282, 79, 6, '[]'::jsonb);


  -- Leader Josephine [Tate]
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'battle-resort' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Leader Josephine [Tate]', 'Trainer', false, 18)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 437, 77, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 579, 77, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 178, 77, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 97, 77, 4, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 338, 79, 5, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 475, 79, 6, '[]'::jsonb);


  -- Leader Josephine [Tate]
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'battle-resort' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Leader Josephine [Tate]', 'Trainer', false, 19)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 437, 77, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 579, 77, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 178, 77, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 97, 77, 4, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 338, 79, 5, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 475, 79, 6, '[]'::jsonb);


  -- Leader Josephine [Wallace]
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'battle-resort' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Leader Josephine [Wallace]', 'Trainer', false, 20)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 186, 77, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 272, 77, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 230, 77, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 350, 79, 4, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 130, 77, 5, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 260, 79, 6, '[]'::jsonb);


  -- Leader Josephine [Wallace]
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'battle-resort' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Leader Josephine [Wallace]', 'Trainer', false, 21)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 186, 77, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 272, 77, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 230, 77, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 350, 79, 4, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 130, 77, 5, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 260, 79, 6, '[]'::jsonb);


  -- Ace Trainer Kelvin [Blue]
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'battle-resort' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Ace Trainer Kelvin [Blue]', 'Trainer', false, 22)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 214, 86, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 65, 86, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 59, 86, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 130, 86, 4, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 103, 86, 5, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 248, 88, 6, '[]'::jsonb);


  -- Leader Kelvin [Grant]
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'battle-resort' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Leader Kelvin [Grant]', 'Trainer', false, 23)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 558, 77, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 369, 77, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 703, 77, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 697, 77, 4, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 699, 77, 5, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 142, 79, 6, '[]'::jsonb);


  -- Leader Kelvin [Ramos]
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'battle-resort' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Leader Kelvin [Ramos]', 'Trainer', false, 24)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 189, 77, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 71, 77, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 103, 77, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 407, 77, 4, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 673, 79, 5, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 3, 79, 6, '[]'::jsonb);


  -- Leader Kelvin [Clemont]
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'battle-resort' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Leader Kelvin [Clemont]', 'Trainer', false, 25)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 587, 77, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 462, 77, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 466, 77, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 596, 77, 4, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 695, 79, 5, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 181, 79, 6, '[]'::jsonb);


  -- Leader Kelvin [Wulfric]
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'battle-resort' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Leader Kelvin [Wulfric]', 'Trainer', false, 26)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 362, 77, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 473, 77, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 614, 77, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 615, 77, 4, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 713, 79, 5, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 460, 79, 6, '[]'::jsonb);


  -- Leader Kelvin [Wikstrom]
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'battle-resort' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Leader Kelvin [Wikstrom]', 'Trainer', false, 27)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 707, 82, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 476, 82, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 376, 82, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 681, 84, 4, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 395, 82, 5, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 212, 84, 6, '[]'::jsonb);


  -- Leader Kelvin [Siebold]
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'battle-resort' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Leader Kelvin [Siebold]', 'Trainer', false, 28)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 693, 82, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 121, 82, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 130, 82, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 350, 82, 4, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 689, 84, 5, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 9, 84, 6, '[]'::jsonb);


  -- Furisode Girl Felix [Iris]
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'battle-resort' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Furisode Girl Felix [Iris]', 'Trainer', false, 29)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 635, 86, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 621, 86, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 567, 86, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 306, 88, 4, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 131, 86, 5, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 612, 88, 6, '[]'::jsonb);


  -- Leader Felix [Viola]
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'battle-resort' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Leader Felix [Viola]', 'Trainer', false, 30)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 284, 77, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 469, 77, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 416, 77, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 558, 77, 4, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 666, 79, 5, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 127, 79, 6, '[]'::jsonb);


  -- Leader Felix [Korrina]
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'battle-resort' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Leader Felix [Korrina]', 'Trainer', false, 31)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 68, 77, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 620, 77, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 652, 77, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 675, 77, 4, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 701, 79, 5, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 448, 79, 6, '[]'::jsonb);


  -- Leader Felix [Valerie]
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'battle-resort' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Leader Felix [Valerie]', 'Trainer', false, 32)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 122, 77, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 671, 77, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 683, 77, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 685, 77, 4, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 700, 79, 5, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 303, 79, 6, '[]'::jsonb);


  -- Leader Felix [Olympia]
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'battle-resort' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Leader Felix [Olympia]', 'Trainer', false, 33)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 561, 77, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 199, 77, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 576, 77, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 196, 77, 4, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 678, 79, 5, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 65, 79, 6, '[]'::jsonb);


  -- Leader Felix [Malva]
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'battle-resort' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Leader Felix [Malva]', 'Trainer', false, 34)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 668, 82, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 609, 82, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 467, 82, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 324, 82, 4, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 663, 84, 5, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 229, 84, 6, '[]'::jsonb);


  -- Leader Felix [Drasna]
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'battle-resort' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Leader Felix [Drasna]', 'Trainer', false, 35)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 691, 82, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 621, 82, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 334, 82, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 612, 82, 4, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 715, 84, 5, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 445, 84, 6, '[]'::jsonb);


  -- PKMN Trainer Wally
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'battle-resort' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'PKMN Trainer Wally', 'Trainer', false, 36)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 663, 81, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 184, 81, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 407, 81, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 462, 81, 4, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 445, 81, 5, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 475, 83, 6, '[]'::jsonb);


  -- PKMN Trainer Wally
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'battle-resort' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'PKMN Trainer Wally', 'Trainer', false, 37)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 184, 97, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 663, 97, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 407, 97, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 462, 97, 4, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 445, 97, 5, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 475, 99, 6, '[]'::jsonb);


  -- Elite Four Sidney
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'battle-resort' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Elite Four Sidney', 'Trainer', false, 38)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 560, 80, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 625, 80, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 491, 80, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 658, 80, 4, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 359, 82, 5, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 248, 82, 6, '[]'::jsonb);


  -- Elite Four Phoebe
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'battle-resort' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Elite Four Phoebe', 'Trainer', false, 39)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 681, 81, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 609, 81, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 720, 81, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 477, 81, 4, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 302, 83, 5, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 94, 83, 6, '[]'::jsonb);


  -- Elite Four Glacia
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'battle-resort' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Elite Four Glacia', 'Trainer', false, 40)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 365, 82, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 478, 82, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 144, 82, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 473, 82, 4, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 362, 84, 5, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 460, 84, 6, '[]'::jsonb);


  -- Elite Four Drake
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'battle-resort' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Elite Four Drake', 'Trainer', false, 41)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 635, 83, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 445, 83, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 380, 83, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 230, 83, 4, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 373, 85, 5, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 381, 85, 6, '[]'::jsonb);


  -- Champion Steven
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'battle-resort' AND game_id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
  VALUES (v_route_id, 'Champion Steven', 'Trainer', false, 42)
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 142, 87, 1, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 306, 87, 2, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 485, 87, 3, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 344, 87, 4, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 376, 89, 5, '[]'::jsonb);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
  VALUES (v_trainer_id, 719, 89, 6, '[]'::jsonb);


END $$;

-- Update total_routes count
UPDATE public.games SET total_routes = 95 WHERE id = 'f1a2b3c4-d5e6-7890-ab12-cd3456789012';
