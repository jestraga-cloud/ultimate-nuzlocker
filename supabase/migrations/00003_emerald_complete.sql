-- ===========================================
-- POKEMON EMERALD: COMPLETE HOENN DATA
-- Routes 16-65, all encounters, trainers,
-- gym leaders, Elite Four, and Champion
-- ===========================================
-- This migration adds all remaining Hoenn routes
-- and game data starting from display_order 16.
-- The seed file already covers display_order 1-15
-- (Littleroot Town through Granite Cave).
-- ===========================================

-- Game ID constant used throughout:
-- 'a1b2c3d4-e5f6-7890-abcd-ef1234567890'


-- NOTE: Starters are handled by apply-all-migrations.sql
-- Run that file first, then this one.


-- ===========================================
-- SECTION 1: ROUTES (display_order 16-65)
-- ===========================================

-- Water routes between Dewford and Slateport
INSERT INTO public.routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items, notes) VALUES
('a1b2c3d4-e5f6-7890-abcd-ef1234567890', 'Route 106', 'route-106', 16, 'water', true, true, false, 'Water route south of Dewford Town.'),
('a1b2c3d4-e5f6-7890-abcd-ef1234567890', 'Route 107', 'route-107', 17, 'water', true, true, false, 'Water route between Dewford and Route 108.'),
('a1b2c3d4-e5f6-7890-abcd-ef1234567890', 'Route 108', 'route-108', 18, 'water', true, true, false, 'Water route leading to Abandoned Ship.'),
('a1b2c3d4-e5f6-7890-abcd-ef1234567890', 'Route 109', 'route-109', 19, 'water', true, true, false, 'Beach route south of Slateport City.'),

-- Slateport to Mauville
('a1b2c3d4-e5f6-7890-abcd-ef1234567890', 'Slateport City', 'slateport-city', 20, 'city', false, false, true, 'Port city with market and museum.'),
('a1b2c3d4-e5f6-7890-abcd-ef1234567890', 'Route 110', 'route-110', 21, 'route', true, true, true, 'Cycling Road connects Slateport to Mauville. Rival battle here.'),
('a1b2c3d4-e5f6-7890-abcd-ef1234567890', 'Mauville City', 'mauville-city', 22, 'city', false, true, true, 'Gym Leader Wattson. Electric-type specialist.'),

-- Mauville to Verdanturf
('a1b2c3d4-e5f6-7890-abcd-ef1234567890', 'Route 117', 'route-117', 23, 'route', true, true, true, 'Route between Mauville and Verdanturf Town.'),
('a1b2c3d4-e5f6-7890-abcd-ef1234567890', 'Verdanturf Town', 'verdanturf-town', 24, 'city', false, false, true, 'Quiet town known for its clean air.'),

-- Desert and volcanic area
('a1b2c3d4-e5f6-7890-abcd-ef1234567890', 'Route 111', 'route-111', 25, 'route', true, true, true, 'Features a desert area accessible with Go-Goggles.'),
('a1b2c3d4-e5f6-7890-abcd-ef1234567890', 'Route 112', 'route-112', 26, 'route', true, true, false, 'Route leading to Mt. Chimney cable car.'),
('a1b2c3d4-e5f6-7890-abcd-ef1234567890', 'Fiery Path', 'fiery-path', 27, 'cave', true, false, true, 'Volcanic tunnel through the mountain.'),
('a1b2c3d4-e5f6-7890-abcd-ef1234567890', 'Route 113', 'route-113', 28, 'route', true, true, true, 'Ash-covered route. Collect volcanic ash for items.'),
('a1b2c3d4-e5f6-7890-abcd-ef1234567890', 'Fallarbor Town', 'fallarbor-town', 29, 'city', false, false, true, 'Small town near Meteor Falls.'),

-- Meteor Falls area
('a1b2c3d4-e5f6-7890-abcd-ef1234567890', 'Route 114', 'route-114', 30, 'route', true, true, true, 'Route between Fallarbor Town and Meteor Falls.'),
('a1b2c3d4-e5f6-7890-abcd-ef1234567890', 'Meteor Falls', 'meteor-falls', 31, 'cave', true, false, true, 'Home to rare Dragon-type Pokemon. Team Magma event.'),
('a1b2c3d4-e5f6-7890-abcd-ef1234567890', 'Route 115', 'route-115', 32, 'route', true, true, false, 'Connects Meteor Falls to Rustboro City.'),

-- Mt. Chimney and Lavaridge
('a1b2c3d4-e5f6-7890-abcd-ef1234567890', 'Mt. Chimney', 'mt-chimney', 33, 'special', false, true, false, 'Team Magma confrontation at the summit.'),
('a1b2c3d4-e5f6-7890-abcd-ef1234567890', 'Jagged Pass', 'jagged-pass', 34, 'route', true, true, false, 'Rocky descent from Mt. Chimney to Lavaridge.'),
('a1b2c3d4-e5f6-7890-abcd-ef1234567890', 'Lavaridge Town', 'lavaridge-town', 35, 'city', false, true, true, 'Gym Leader Flannery. Fire-type specialist. Hot springs.'),

-- Petalburg Gym (Norman) - route already exists at display_order 6
-- We add a special building route for the gym battle context
('a1b2c3d4-e5f6-7890-abcd-ef1234567890', 'Petalburg City Gym', 'petalburg-city-gym', 36, 'building', false, true, false, 'Gym Leader Norman. Normal-type specialist. Balance Badge.'),

-- East Hoenn routes
('a1b2c3d4-e5f6-7890-abcd-ef1234567890', 'Route 118', 'route-118', 37, 'route', true, true, false, 'Route east of Mauville. Requires Surf.'),
('a1b2c3d4-e5f6-7890-abcd-ef1234567890', 'Route 119', 'route-119', 38, 'route', true, true, true, 'Long route with tall grass and rain. Weather Institute.'),
('a1b2c3d4-e5f6-7890-abcd-ef1234567890', 'Fortree City', 'fortree-city', 39, 'city', false, true, true, 'Gym Leader Winona. Flying-type specialist. Treehouse city.'),

-- Routes east of Fortree
('a1b2c3d4-e5f6-7890-abcd-ef1234567890', 'Route 120', 'route-120', 40, 'route', true, true, true, 'Route with ancient tomb. Kecleon encounter.'),
('a1b2c3d4-e5f6-7890-abcd-ef1234567890', 'Route 121', 'route-121', 41, 'route', true, true, false, 'Route to Mt. Pyre and Lilycove City.'),
('a1b2c3d4-e5f6-7890-abcd-ef1234567890', 'Mt. Pyre', 'mt-pyre', 42, 'cave', true, true, true, 'Sacred mountain and Pokemon graveyard.'),
('a1b2c3d4-e5f6-7890-abcd-ef1234567890', 'Route 122', 'route-122', 43, 'water', true, false, false, 'Water route surrounding Mt. Pyre.'),
('a1b2c3d4-e5f6-7890-abcd-ef1234567890', 'Lilycove City', 'lilycove-city', 44, 'city', false, false, true, 'Contest Hall and Department Store.'),
('a1b2c3d4-e5f6-7890-abcd-ef1234567890', 'Route 123', 'route-123', 45, 'route', true, true, true, 'One-way route from Mt. Pyre to Slateport area.'),

-- Team Magma Hideout
('a1b2c3d4-e5f6-7890-abcd-ef1234567890', 'Team Magma Hideout', 'team-magma-hideout', 46, 'cave', false, true, false, 'Team Magma base near Lilycove City.'),

-- Mossdeep area
('a1b2c3d4-e5f6-7890-abcd-ef1234567890', 'Route 124', 'route-124', 47, 'water', true, true, false, 'Dive route with underwater trenches.'),
('a1b2c3d4-e5f6-7890-abcd-ef1234567890', 'Mossdeep City', 'mossdeep-city', 48, 'city', false, true, true, 'Gym Leaders Tate & Liza. Psychic-type specialists. Space Center.'),
('a1b2c3d4-e5f6-7890-abcd-ef1234567890', 'Route 125', 'route-125', 49, 'water', true, true, false, 'Water route north of Mossdeep.'),
('a1b2c3d4-e5f6-7890-abcd-ef1234567890', 'Shoal Cave', 'shoal-cave', 50, 'cave', true, false, true, 'Tidal cave. Changes layout with tides. Shoal Salt/Shell.'),

-- Southern water routes
('a1b2c3d4-e5f6-7890-abcd-ef1234567890', 'Route 126', 'route-126', 51, 'water', true, false, false, 'Underwater route to Sootopolis City.'),
('a1b2c3d4-e5f6-7890-abcd-ef1234567890', 'Route 127', 'route-127', 52, 'water', true, true, false, 'Water route south of Mossdeep.'),
('a1b2c3d4-e5f6-7890-abcd-ef1234567890', 'Route 128', 'route-128', 53, 'water', true, true, false, 'Entrance to Seafloor Cavern.'),
('a1b2c3d4-e5f6-7890-abcd-ef1234567890', 'Seafloor Cavern', 'seafloor-cavern', 54, 'cave', true, true, false, 'Team Magma awakens Groudon here.'),
('a1b2c3d4-e5f6-7890-abcd-ef1234567890', 'Sootopolis City', 'sootopolis-city', 55, 'city', false, true, true, 'Gym Leader Juan. Water-type specialist. Cave of Origin.'),

-- Western water routes and Pacifidlog
('a1b2c3d4-e5f6-7890-abcd-ef1234567890', 'Route 129', 'route-129', 56, 'water', true, false, false, 'Water route west of route 130.'),
('a1b2c3d4-e5f6-7890-abcd-ef1234567890', 'Route 130', 'route-130', 57, 'water', true, false, false, 'Water route near Pacifidlog Town.'),
('a1b2c3d4-e5f6-7890-abcd-ef1234567890', 'Route 131', 'route-131', 58, 'water', true, false, false, 'Water route connecting to Pacifidlog.'),
('a1b2c3d4-e5f6-7890-abcd-ef1234567890', 'Pacifidlog Town', 'pacifidlog-town', 59, 'city', false, false, true, 'Floating town on logs. Access to Mirage Tower info.'),

-- Current routes to Ever Grande
('a1b2c3d4-e5f6-7890-abcd-ef1234567890', 'Route 132', 'route-132', 60, 'water', true, false, false, 'Strong currents. West of Pacifidlog.'),
('a1b2c3d4-e5f6-7890-abcd-ef1234567890', 'Route 133', 'route-133', 61, 'water', true, false, false, 'Strong currents. Between Routes 132 and 134.'),
('a1b2c3d4-e5f6-7890-abcd-ef1234567890', 'Route 134', 'route-134', 62, 'water', true, false, false, 'Strong currents. Access to Sealed Chamber.'),

-- Pokemon League
('a1b2c3d4-e5f6-7890-abcd-ef1234567890', 'Ever Grande City', 'ever-grande-city', 63, 'city', false, false, false, 'Gateway to the Pokemon League.'),
('a1b2c3d4-e5f6-7890-abcd-ef1234567890', 'Victory Road', 'victory-road', 64, 'cave', true, true, true, 'Final challenge before the Pokemon League.'),
('a1b2c3d4-e5f6-7890-abcd-ef1234567890', 'Pokemon League', 'pokemon-league', 65, 'building', false, true, false, 'Elite Four Sidney, Phoebe, Glacia, Drake, and Champion Wallace.');


-- ===========================================
-- SECTION 2: ENCOUNTERS
-- ===========================================

-- -------------------------------------------
-- Route 106 encounters
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max)
SELECT r.id, e.dex_id, e.method, e.rate, e.lmin, e.lmax
FROM public.routes r,
(VALUES
  (72,  'surfing', 60.00, 5, 35),       -- Tentacool
  (279, 'surfing', 5.00, 25, 30),       -- Pelipper
  (278, 'surfing', 35.00, 10, 30),      -- Wingull
  (129, 'fishing_old', 70.00, 5, 10),   -- Magikarp
  (72,  'fishing_old', 30.00, 5, 10),   -- Tentacool
  (129, 'fishing_good', 60.00, 10, 30), -- Magikarp
  (72,  'fishing_good', 40.00, 10, 30), -- Tentacool
  (320, 'fishing_super', 60.00, 25, 30),-- Wailmer
  (72,  'fishing_super', 40.00, 25, 30) -- Tentacool
) AS e(dex_id, method, rate, lmin, lmax)
WHERE r.slug = 'route-106' AND r.game_id = 'a1b2c3d4-e5f6-7890-abcd-ef1234567890';

-- -------------------------------------------
-- Route 107 encounters
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max)
SELECT r.id, e.dex_id, e.method, e.rate, e.lmin, e.lmax
FROM public.routes r,
(VALUES
  (72,  'surfing', 60.00, 5, 35),       -- Tentacool
  (279, 'surfing', 5.00, 25, 30),       -- Pelipper
  (278, 'surfing', 35.00, 10, 30),      -- Wingull
  (129, 'fishing_old', 70.00, 5, 10),   -- Magikarp
  (72,  'fishing_old', 30.00, 5, 10),   -- Tentacool
  (129, 'fishing_good', 60.00, 10, 30), -- Magikarp
  (72,  'fishing_good', 40.00, 10, 30), -- Tentacool
  (320, 'fishing_super', 60.00, 25, 30),-- Wailmer
  (72,  'fishing_super', 40.00, 25, 30) -- Tentacool
) AS e(dex_id, method, rate, lmin, lmax)
WHERE r.slug = 'route-107' AND r.game_id = 'a1b2c3d4-e5f6-7890-abcd-ef1234567890';

-- -------------------------------------------
-- Route 108 encounters
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max)
SELECT r.id, e.dex_id, e.method, e.rate, e.lmin, e.lmax
FROM public.routes r,
(VALUES
  (72,  'surfing', 60.00, 5, 35),       -- Tentacool
  (279, 'surfing', 5.00, 25, 30),       -- Pelipper
  (278, 'surfing', 35.00, 10, 30),      -- Wingull
  (129, 'fishing_old', 70.00, 5, 10),   -- Magikarp
  (72,  'fishing_old', 30.00, 5, 10),   -- Tentacool
  (129, 'fishing_good', 60.00, 10, 30), -- Magikarp
  (72,  'fishing_good', 40.00, 10, 30), -- Tentacool
  (320, 'fishing_super', 60.00, 25, 30),-- Wailmer
  (72,  'fishing_super', 40.00, 25, 30) -- Tentacool
) AS e(dex_id, method, rate, lmin, lmax)
WHERE r.slug = 'route-108' AND r.game_id = 'a1b2c3d4-e5f6-7890-abcd-ef1234567890';

-- -------------------------------------------
-- Route 109 encounters
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max)
SELECT r.id, e.dex_id, e.method, e.rate, e.lmin, e.lmax
FROM public.routes r,
(VALUES
  (72,  'surfing', 60.00, 5, 35),       -- Tentacool
  (279, 'surfing', 5.00, 25, 30),       -- Pelipper
  (278, 'surfing', 35.00, 10, 30),      -- Wingull
  (129, 'fishing_old', 70.00, 5, 10),   -- Magikarp
  (72,  'fishing_old', 30.00, 5, 10),   -- Tentacool
  (129, 'fishing_good', 60.00, 10, 30), -- Magikarp
  (72,  'fishing_good', 40.00, 10, 30), -- Tentacool
  (320, 'fishing_super', 40.00, 25, 45),-- Wailmer
  (72,  'fishing_super', 60.00, 25, 30) -- Tentacool
) AS e(dex_id, method, rate, lmin, lmax)
WHERE r.slug = 'route-109' AND r.game_id = 'a1b2c3d4-e5f6-7890-abcd-ef1234567890';

-- -------------------------------------------
-- Route 110 encounters
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max)
SELECT r.id, e.dex_id, e.method, e.rate, e.lmin, e.lmax
FROM public.routes r,
(VALUES
  (309, 'walking', 25.00, 12, 13), -- Electrike
  (316, 'walking', 25.00, 12, 13), -- Gulpin
  (312, 'walking', 8.00, 12, 13),  -- Minun
  (311, 'walking', 8.00, 12, 13),  -- Plusle
  (43,  'walking', 20.00, 12, 13), -- Oddish
  (278, 'walking', 4.00, 12, 13),  -- Wingull
  (263, 'walking', 10.00, 12, 13), -- Zigzagoon
  (72,  'surfing', 60.00, 5, 35),  -- Tentacool
  (278, 'surfing', 35.00, 10, 30), -- Wingull
  (279, 'surfing', 5.00, 25, 30),  -- Pelipper
  (129, 'fishing_old', 70.00, 5, 10),   -- Magikarp
  (72,  'fishing_old', 30.00, 5, 10),   -- Tentacool
  (129, 'fishing_good', 60.00, 10, 30), -- Magikarp
  (72,  'fishing_good', 40.00, 10, 30)  -- Tentacool
) AS e(dex_id, method, rate, lmin, lmax)
WHERE r.slug = 'route-110' AND r.game_id = 'a1b2c3d4-e5f6-7890-abcd-ef1234567890';

-- -------------------------------------------
-- Route 117 encounters
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max)
SELECT r.id, e.dex_id, e.method, e.rate, e.lmin, e.lmax
FROM public.routes r,
(VALUES
  (314, 'walking', 10.00, 13, 14), -- Illumise
  (313, 'walking', 10.00, 13, 14), -- Volbeat
  (183, 'walking', 20.00, 13, 14), -- Marill
  (43,  'walking', 20.00, 13, 14), -- Oddish
  (315, 'walking', 28.00, 13, 14), -- Roselia
  (263, 'walking', 10.00, 13, 14), -- Zigzagoon
  (273, 'walking', 2.00, 13, 14)   -- Seedot
) AS e(dex_id, method, rate, lmin, lmax)
WHERE r.slug = 'route-117' AND r.game_id = 'a1b2c3d4-e5f6-7890-abcd-ef1234567890';

-- -------------------------------------------
-- Route 111 encounters (includes desert)
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions)
SELECT r.id, e.dex_id, e.method, e.rate, e.lmin, e.lmax, e.conditions
FROM public.routes r,
(VALUES
  (27,  'walking', 20.00, 20, 22, 'desert'),         -- Sandshrew (desert)
  (328, 'walking', 20.00, 20, 22, 'desert'),         -- Trapinch (desert)
  (331, 'walking', 20.00, 20, 22, 'desert'),         -- Cacnea (desert)
  (343, 'walking', 20.00, 20, 22, 'desert'),         -- Baltoy (desert)
  (27,  'walking', 10.00, 20, 22, null),              -- Sandshrew (non-desert)
  (263, 'walking', 20.00, 20, 22, null),              -- Zigzagoon
  (261, 'walking', 10.00, 20, 22, null)               -- Poochyena
) AS e(dex_id, method, rate, lmin, lmax, conditions)
WHERE r.slug = 'route-111' AND r.game_id = 'a1b2c3d4-e5f6-7890-abcd-ef1234567890';

-- -------------------------------------------
-- Route 112 encounters
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max)
SELECT r.id, e.dex_id, e.method, e.rate, e.lmin, e.lmax
FROM public.routes r,
(VALUES
  (322, 'walking', 35.00, 15, 16), -- Numel
  (66,  'walking', 35.00, 15, 16), -- Machop
  (183, 'walking', 30.00, 15, 16)  -- Marill
) AS e(dex_id, method, rate, lmin, lmax)
WHERE r.slug = 'route-112' AND r.game_id = 'a1b2c3d4-e5f6-7890-abcd-ef1234567890';

-- -------------------------------------------
-- Fiery Path encounters
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max)
SELECT r.id, e.dex_id, e.method, e.rate, e.lmin, e.lmax
FROM public.routes r,
(VALUES
  (66,  'walking', 20.00, 15, 16), -- Machop
  (88,  'walking', 10.00, 15, 16), -- Grimer
  (109, 'walking', 10.00, 15, 16), -- Koffing
  (218, 'walking', 20.00, 15, 16), -- Slugma
  (322, 'walking', 30.00, 15, 16), -- Numel
  (324, 'walking', 10.00, 15, 16)  -- Torkoal
) AS e(dex_id, method, rate, lmin, lmax)
WHERE r.slug = 'fiery-path' AND r.game_id = 'a1b2c3d4-e5f6-7890-abcd-ef1234567890';

-- -------------------------------------------
-- Route 113 encounters
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max)
SELECT r.id, e.dex_id, e.method, e.rate, e.lmin, e.lmax
FROM public.routes r,
(VALUES
  (327, 'walking', 50.00, 15, 16), -- Spinda
  (27,  'walking', 30.00, 15, 16), -- Sandshrew
  (227, 'walking', 20.00, 15, 16)  -- Skarmory
) AS e(dex_id, method, rate, lmin, lmax)
WHERE r.slug = 'route-113' AND r.game_id = 'a1b2c3d4-e5f6-7890-abcd-ef1234567890';

-- -------------------------------------------
-- Route 114 encounters
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, version_exclusive)
SELECT r.id, e.dex_id, e.method, e.rate, e.lmin, e.lmax, e.ver_excl
FROM public.routes r,
(VALUES
  (335, 'walking', 15.00, 16, 18, 'ruby'),   -- Zangoose (Ruby exclusive in wild, but appears in Emerald)
  (336, 'walking', 15.00, 16, 18, 'sapphire'),-- Seviper (Sapphire exclusive in wild, but appears in Emerald)
  (333, 'walking', 20.00, 16, 18, null),      -- Swablu
  (270, 'walking', 15.00, 16, 18, null),      -- Lotad
  (273, 'walking', 15.00, 16, 18, null),      -- Seedot
  (264, 'walking', 10.00, 16, 18, null),      -- Linoone
  (290, 'walking', 10.00, 16, 18, null)       -- Nincada
) AS e(dex_id, method, rate, lmin, lmax, ver_excl)
WHERE r.slug = 'route-114' AND r.game_id = 'a1b2c3d4-e5f6-7890-abcd-ef1234567890';

-- -------------------------------------------
-- Meteor Falls encounters
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max)
SELECT r.id, e.dex_id, e.method, e.rate, e.lmin, e.lmax
FROM public.routes r,
(VALUES
  (41,  'walking', 40.00, 16, 20), -- Zubat
  (338, 'walking', 20.00, 16, 20), -- Solrock
  (337, 'walking', 20.00, 16, 20), -- Lunatone
  (371, 'walking', 10.00, 25, 35), -- Bagon (rare, deeper sections)
  (42,  'walking', 10.00, 25, 35)  -- Golbat (deeper sections)
) AS e(dex_id, method, rate, lmin, lmax)
WHERE r.slug = 'meteor-falls' AND r.game_id = 'a1b2c3d4-e5f6-7890-abcd-ef1234567890';

-- -------------------------------------------
-- Route 115 encounters
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max)
SELECT r.id, e.dex_id, e.method, e.rate, e.lmin, e.lmax
FROM public.routes r,
(VALUES
  (333, 'walking', 25.00, 23, 26), -- Swablu
  (276, 'walking', 25.00, 23, 26), -- Taillow
  (278, 'walking', 25.00, 23, 26), -- Wingull
  (39,  'walking', 15.00, 23, 26), -- Jigglypuff
  (264, 'walking', 10.00, 23, 26)  -- Linoone
) AS e(dex_id, method, rate, lmin, lmax)
WHERE r.slug = 'route-115' AND r.game_id = 'a1b2c3d4-e5f6-7890-abcd-ef1234567890';

-- -------------------------------------------
-- Jagged Pass encounters
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max)
SELECT r.id, e.dex_id, e.method, e.rate, e.lmin, e.lmax
FROM public.routes r,
(VALUES
  (66,  'walking', 30.00, 18, 22), -- Machop
  (322, 'walking', 40.00, 18, 22), -- Numel
  (325, 'walking', 30.00, 18, 22)  -- Spoink
) AS e(dex_id, method, rate, lmin, lmax)
WHERE r.slug = 'jagged-pass' AND r.game_id = 'a1b2c3d4-e5f6-7890-abcd-ef1234567890';

-- -------------------------------------------
-- Route 118 encounters
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max)
SELECT r.id, e.dex_id, e.method, e.rate, e.lmin, e.lmax
FROM public.routes r,
(VALUES
  (309, 'walking', 30.00, 24, 26), -- Electrike
  (263, 'walking', 20.00, 24, 26), -- Zigzagoon
  (264, 'walking', 20.00, 24, 26), -- Linoone
  (278, 'walking', 15.00, 24, 26), -- Wingull
  (352, 'walking', 15.00, 25, 26), -- Kecleon
  (72,  'surfing', 60.00, 5, 35),  -- Tentacool
  (278, 'surfing', 35.00, 10, 30), -- Wingull
  (279, 'surfing', 5.00, 25, 30),  -- Pelipper
  (129, 'fishing_old', 70.00, 5, 10),  -- Magikarp
  (72,  'fishing_old', 30.00, 5, 10),  -- Tentacool
  (318, 'fishing_super', 40.00, 25, 30)-- Carvanha
) AS e(dex_id, method, rate, lmin, lmax)
WHERE r.slug = 'route-118' AND r.game_id = 'a1b2c3d4-e5f6-7890-abcd-ef1234567890';

-- -------------------------------------------
-- Route 119 encounters
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max)
SELECT r.id, e.dex_id, e.method, e.rate, e.lmin, e.lmax
FROM public.routes r,
(VALUES
  (357, 'walking', 10.00, 25, 27), -- Tropius
  (43,  'walking', 25.00, 24, 26), -- Oddish
  (264, 'walking', 20.00, 24, 26), -- Linoone
  (263, 'walking', 15.00, 24, 26), -- Zigzagoon
  (352, 'walking', 10.00, 25, 26), -- Kecleon
  (278, 'walking', 10.00, 24, 26), -- Wingull
  (261, 'walking', 10.00, 24, 26), -- Poochyena
  (72,  'surfing', 60.00, 5, 35),  -- Tentacool
  (278, 'surfing', 35.00, 10, 30), -- Wingull
  (129, 'fishing_old', 70.00, 5, 10),  -- Magikarp
  (72,  'fishing_old', 30.00, 5, 10),  -- Tentacool
  (318, 'fishing_good', 60.00, 10, 30) -- Carvanha
) AS e(dex_id, method, rate, lmin, lmax)
WHERE r.slug = 'route-119' AND r.game_id = 'a1b2c3d4-e5f6-7890-abcd-ef1234567890';

-- -------------------------------------------
-- Route 120 encounters
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max)
SELECT r.id, e.dex_id, e.method, e.rate, e.lmin, e.lmax
FROM public.routes r,
(VALUES
  (359, 'walking', 8.00, 25, 27),  -- Absol
  (43,  'walking', 25.00, 25, 27), -- Oddish
  (183, 'walking', 20.00, 25, 27), -- Marill
  (264, 'walking', 15.00, 25, 27), -- Linoone
  (352, 'walking', 10.00, 25, 27), -- Kecleon
  (263, 'walking', 12.00, 25, 27), -- Zigzagoon
  (261, 'walking', 10.00, 25, 27)  -- Poochyena
) AS e(dex_id, method, rate, lmin, lmax)
WHERE r.slug = 'route-120' AND r.game_id = 'a1b2c3d4-e5f6-7890-abcd-ef1234567890';

-- -------------------------------------------
-- Route 121 encounters
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max)
SELECT r.id, e.dex_id, e.method, e.rate, e.lmin, e.lmax
FROM public.routes r,
(VALUES
  (353, 'walking', 15.00, 26, 28), -- Shuppet
  (43,  'walking', 25.00, 26, 28), -- Oddish
  (44,  'walking', 15.00, 26, 28), -- Gloom
  (278, 'walking', 20.00, 26, 28), -- Wingull
  (264, 'walking', 15.00, 26, 28), -- Linoone
  (263, 'walking', 10.00, 26, 28)  -- Zigzagoon
) AS e(dex_id, method, rate, lmin, lmax)
WHERE r.slug = 'route-121' AND r.game_id = 'a1b2c3d4-e5f6-7890-abcd-ef1234567890';

-- -------------------------------------------
-- Mt. Pyre encounters
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max)
SELECT r.id, e.dex_id, e.method, e.rate, e.lmin, e.lmax
FROM public.routes r,
(VALUES
  (353, 'walking', 30.00, 25, 31), -- Shuppet
  (355, 'walking', 30.00, 25, 31), -- Duskull
  (37,  'walking', 20.00, 25, 31), -- Vulpix
  (307, 'walking', 10.00, 25, 31), -- Meditite
  (278, 'walking', 10.00, 25, 31)  -- Wingull (exterior)
) AS e(dex_id, method, rate, lmin, lmax)
WHERE r.slug = 'mt-pyre' AND r.game_id = 'a1b2c3d4-e5f6-7890-abcd-ef1234567890';

-- -------------------------------------------
-- Route 122 encounters
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max)
SELECT r.id, e.dex_id, e.method, e.rate, e.lmin, e.lmax
FROM public.routes r,
(VALUES
  (72,  'surfing', 60.00, 5, 35),       -- Tentacool
  (278, 'surfing', 35.00, 10, 30),      -- Wingull
  (279, 'surfing', 5.00, 25, 30),       -- Pelipper
  (129, 'fishing_old', 70.00, 5, 10),   -- Magikarp
  (72,  'fishing_old', 30.00, 5, 10),   -- Tentacool
  (129, 'fishing_good', 60.00, 10, 30), -- Magikarp
  (72,  'fishing_good', 40.00, 10, 30), -- Tentacool
  (319, 'fishing_super', 40.00, 30, 35) -- Sharpedo
) AS e(dex_id, method, rate, lmin, lmax)
WHERE r.slug = 'route-122' AND r.game_id = 'a1b2c3d4-e5f6-7890-abcd-ef1234567890';

-- -------------------------------------------
-- Route 123 encounters
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max)
SELECT r.id, e.dex_id, e.method, e.rate, e.lmin, e.lmax
FROM public.routes r,
(VALUES
  (43,  'walking', 20.00, 26, 28), -- Oddish
  (44,  'walking', 15.00, 26, 28), -- Gloom
  (353, 'walking', 15.00, 26, 28), -- Shuppet
  (278, 'walking', 15.00, 26, 28), -- Wingull
  (264, 'walking', 15.00, 26, 28), -- Linoone
  (263, 'walking', 10.00, 26, 28), -- Zigzagoon
  (261, 'walking', 10.00, 26, 28)  -- Poochyena
) AS e(dex_id, method, rate, lmin, lmax)
WHERE r.slug = 'route-123' AND r.game_id = 'a1b2c3d4-e5f6-7890-abcd-ef1234567890';

-- -------------------------------------------
-- Route 124 encounters
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max)
SELECT r.id, e.dex_id, e.method, e.rate, e.lmin, e.lmax
FROM public.routes r,
(VALUES
  (72,  'surfing', 60.00, 5, 35),       -- Tentacool
  (278, 'surfing', 35.00, 10, 30),      -- Wingull
  (279, 'surfing', 5.00, 25, 30),       -- Pelipper
  (129, 'fishing_old', 70.00, 5, 10),   -- Magikarp
  (72,  'fishing_old', 30.00, 5, 10),   -- Tentacool
  (129, 'fishing_good', 60.00, 10, 30), -- Magikarp
  (72,  'fishing_good', 40.00, 10, 30)  -- Tentacool
) AS e(dex_id, method, rate, lmin, lmax)
WHERE r.slug = 'route-124' AND r.game_id = 'a1b2c3d4-e5f6-7890-abcd-ef1234567890';

-- -------------------------------------------
-- Route 125 encounters
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max)
SELECT r.id, e.dex_id, e.method, e.rate, e.lmin, e.lmax
FROM public.routes r,
(VALUES
  (72,  'surfing', 60.00, 5, 35),       -- Tentacool
  (278, 'surfing', 35.00, 10, 30),      -- Wingull
  (279, 'surfing', 5.00, 25, 30),       -- Pelipper
  (129, 'fishing_old', 70.00, 5, 10),   -- Magikarp
  (72,  'fishing_old', 30.00, 5, 10),   -- Tentacool
  (320, 'fishing_super', 60.00, 25, 45) -- Wailmer
) AS e(dex_id, method, rate, lmin, lmax)
WHERE r.slug = 'route-125' AND r.game_id = 'a1b2c3d4-e5f6-7890-abcd-ef1234567890';

-- -------------------------------------------
-- Shoal Cave encounters
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max)
SELECT r.id, e.dex_id, e.method, e.rate, e.lmin, e.lmax
FROM public.routes r,
(VALUES
  (41,  'walking', 30.00, 26, 32), -- Zubat
  (363, 'walking', 30.00, 26, 32), -- Spheal
  (361, 'walking', 20.00, 26, 32), -- Snorunt
  (42,  'walking', 20.00, 26, 32)  -- Golbat
) AS e(dex_id, method, rate, lmin, lmax)
WHERE r.slug = 'shoal-cave' AND r.game_id = 'a1b2c3d4-e5f6-7890-abcd-ef1234567890';

-- -------------------------------------------
-- Route 126 encounters
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max)
SELECT r.id, e.dex_id, e.method, e.rate, e.lmin, e.lmax
FROM public.routes r,
(VALUES
  (72,  'surfing', 60.00, 5, 35),       -- Tentacool
  (278, 'surfing', 35.00, 10, 30),      -- Wingull
  (279, 'surfing', 5.00, 25, 30),       -- Pelipper
  (129, 'fishing_old', 70.00, 5, 10),   -- Magikarp
  (72,  'fishing_old', 30.00, 5, 10),   -- Tentacool
  (129, 'fishing_good', 60.00, 10, 30), -- Magikarp
  (72,  'fishing_good', 40.00, 10, 30)  -- Tentacool
) AS e(dex_id, method, rate, lmin, lmax)
WHERE r.slug = 'route-126' AND r.game_id = 'a1b2c3d4-e5f6-7890-abcd-ef1234567890';

-- -------------------------------------------
-- Route 127 encounters
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max)
SELECT r.id, e.dex_id, e.method, e.rate, e.lmin, e.lmax
FROM public.routes r,
(VALUES
  (72,  'surfing', 60.00, 5, 35),       -- Tentacool
  (278, 'surfing', 35.00, 10, 30),      -- Wingull
  (279, 'surfing', 5.00, 25, 30),       -- Pelipper
  (129, 'fishing_old', 70.00, 5, 10),   -- Magikarp
  (72,  'fishing_old', 30.00, 5, 10),   -- Tentacool
  (320, 'fishing_super', 60.00, 25, 45) -- Wailmer
) AS e(dex_id, method, rate, lmin, lmax)
WHERE r.slug = 'route-127' AND r.game_id = 'a1b2c3d4-e5f6-7890-abcd-ef1234567890';

-- -------------------------------------------
-- Route 128 encounters
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max)
SELECT r.id, e.dex_id, e.method, e.rate, e.lmin, e.lmax
FROM public.routes r,
(VALUES
  (72,  'surfing', 60.00, 5, 35),       -- Tentacool
  (278, 'surfing', 35.00, 10, 30),      -- Wingull
  (279, 'surfing', 5.00, 25, 30),       -- Pelipper
  (129, 'fishing_old', 70.00, 5, 10),   -- Magikarp
  (72,  'fishing_old', 30.00, 5, 10),   -- Tentacool
  (222, 'fishing_super', 40.00, 30, 35),-- Corsola
  (320, 'fishing_super', 40.00, 25, 45),-- Wailmer
  (369, 'fishing_super', 20.00, 30, 35) -- Relicanth
) AS e(dex_id, method, rate, lmin, lmax)
WHERE r.slug = 'route-128' AND r.game_id = 'a1b2c3d4-e5f6-7890-abcd-ef1234567890';

-- -------------------------------------------
-- Seafloor Cavern encounters
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max)
SELECT r.id, e.dex_id, e.method, e.rate, e.lmin, e.lmax
FROM public.routes r,
(VALUES
  (41,  'walking', 50.00, 30, 35), -- Zubat
  (42,  'walking', 50.00, 30, 35)  -- Golbat
) AS e(dex_id, method, rate, lmin, lmax)
WHERE r.slug = 'seafloor-cavern' AND r.game_id = 'a1b2c3d4-e5f6-7890-abcd-ef1234567890';

-- -------------------------------------------
-- Route 129 encounters
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max)
SELECT r.id, e.dex_id, e.method, e.rate, e.lmin, e.lmax
FROM public.routes r,
(VALUES
  (72,  'surfing', 60.00, 5, 35),       -- Tentacool
  (278, 'surfing', 35.00, 10, 30),      -- Wingull
  (279, 'surfing', 5.00, 25, 30),       -- Pelipper
  (129, 'fishing_old', 70.00, 5, 10),   -- Magikarp
  (72,  'fishing_old', 30.00, 5, 10),   -- Tentacool
  (320, 'fishing_super', 60.00, 25, 45),-- Wailmer
  (319, 'fishing_super', 40.00, 30, 35) -- Sharpedo
) AS e(dex_id, method, rate, lmin, lmax)
WHERE r.slug = 'route-129' AND r.game_id = 'a1b2c3d4-e5f6-7890-abcd-ef1234567890';

-- -------------------------------------------
-- Route 130 encounters
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max)
SELECT r.id, e.dex_id, e.method, e.rate, e.lmin, e.lmax
FROM public.routes r,
(VALUES
  (72,  'surfing', 60.00, 5, 35),  -- Tentacool
  (278, 'surfing', 35.00, 10, 30), -- Wingull
  (279, 'surfing', 5.00, 25, 30),  -- Pelipper
  (129, 'fishing_old', 70.00, 5, 10),  -- Magikarp
  (72,  'fishing_old', 30.00, 5, 10)   -- Tentacool
) AS e(dex_id, method, rate, lmin, lmax)
WHERE r.slug = 'route-130' AND r.game_id = 'a1b2c3d4-e5f6-7890-abcd-ef1234567890';

-- -------------------------------------------
-- Route 131 encounters
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max)
SELECT r.id, e.dex_id, e.method, e.rate, e.lmin, e.lmax
FROM public.routes r,
(VALUES
  (72,  'surfing', 60.00, 5, 35),  -- Tentacool
  (278, 'surfing', 35.00, 10, 30), -- Wingull
  (279, 'surfing', 5.00, 25, 30),  -- Pelipper
  (129, 'fishing_old', 70.00, 5, 10),  -- Magikarp
  (72,  'fishing_old', 30.00, 5, 10)   -- Tentacool
) AS e(dex_id, method, rate, lmin, lmax)
WHERE r.slug = 'route-131' AND r.game_id = 'a1b2c3d4-e5f6-7890-abcd-ef1234567890';

-- -------------------------------------------
-- Route 132 encounters
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max)
SELECT r.id, e.dex_id, e.method, e.rate, e.lmin, e.lmax
FROM public.routes r,
(VALUES
  (72,  'surfing', 60.00, 5, 35),       -- Tentacool
  (278, 'surfing', 35.00, 10, 30),      -- Wingull
  (279, 'surfing', 5.00, 25, 30),       -- Pelipper
  (129, 'fishing_old', 70.00, 5, 10),   -- Magikarp
  (72,  'fishing_old', 30.00, 5, 10),   -- Tentacool
  (116, 'fishing_super', 40.00, 25, 30),-- Horsea
  (320, 'fishing_super', 40.00, 25, 45) -- Wailmer
) AS e(dex_id, method, rate, lmin, lmax)
WHERE r.slug = 'route-132' AND r.game_id = 'a1b2c3d4-e5f6-7890-abcd-ef1234567890';

-- -------------------------------------------
-- Route 133 encounters
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max)
SELECT r.id, e.dex_id, e.method, e.rate, e.lmin, e.lmax
FROM public.routes r,
(VALUES
  (72,  'surfing', 60.00, 5, 35),  -- Tentacool
  (278, 'surfing', 35.00, 10, 30), -- Wingull
  (279, 'surfing', 5.00, 25, 30),  -- Pelipper
  (129, 'fishing_old', 70.00, 5, 10),   -- Magikarp
  (72,  'fishing_old', 30.00, 5, 10),   -- Tentacool
  (116, 'fishing_super', 40.00, 25, 30),-- Horsea
  (320, 'fishing_super', 40.00, 25, 45) -- Wailmer
) AS e(dex_id, method, rate, lmin, lmax)
WHERE r.slug = 'route-133' AND r.game_id = 'a1b2c3d4-e5f6-7890-abcd-ef1234567890';

-- -------------------------------------------
-- Route 134 encounters
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max)
SELECT r.id, e.dex_id, e.method, e.rate, e.lmin, e.lmax
FROM public.routes r,
(VALUES
  (72,  'surfing', 60.00, 5, 35),       -- Tentacool
  (278, 'surfing', 35.00, 10, 30),      -- Wingull
  (279, 'surfing', 5.00, 25, 30),       -- Pelipper
  (129, 'fishing_old', 70.00, 5, 10),   -- Magikarp
  (72,  'fishing_old', 30.00, 5, 10),   -- Tentacool
  (116, 'fishing_super', 40.00, 25, 30),-- Horsea
  (320, 'fishing_super', 40.00, 25, 45) -- Wailmer
) AS e(dex_id, method, rate, lmin, lmax)
WHERE r.slug = 'route-134' AND r.game_id = 'a1b2c3d4-e5f6-7890-abcd-ef1234567890';

-- -------------------------------------------
-- Victory Road encounters
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max)
SELECT r.id, e.dex_id, e.method, e.rate, e.lmin, e.lmax
FROM public.routes r,
(VALUES
  (42,  'walking', 30.00, 36, 40), -- Golbat
  (305, 'walking', 25.00, 36, 40), -- Lairon
  (297, 'walking', 20.00, 36, 40), -- Hariyama
  (308, 'walking', 20.00, 36, 40), -- Medicham
  (304, 'walking', 5.00, 36, 40)   -- Aron
) AS e(dex_id, method, rate, lmin, lmax)
WHERE r.slug = 'victory-road' AND r.game_id = 'a1b2c3d4-e5f6-7890-abcd-ef1234567890';


-- ===========================================
-- SECTION 3: TRAINERS & TRAINER POKEMON
-- ===========================================

-- -------------------------------------------
-- 3a. Gym Leader Brawly (Dewford Town)
-- -------------------------------------------
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
SELECT r.id, 'Brawly', 'Gym Leader', true, 'gym_leader', 19, 1, 'Fighting-type specialist. Knuckle Badge.'
FROM public.routes r
WHERE r.slug = 'dewford-town' AND r.game_id = 'a1b2c3d4-e5f6-7890-abcd-ef1234567890';

INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability)
SELECT t.id, e.dex_id, e.lvl, e.slot, e.moves::jsonb, e.abil
FROM public.trainers t
JOIN public.routes r ON t.route_id = r.id,
(VALUES
  (66,  16, 1, '["Karate Chop", "Leer", "Seismic Toss", "Bulk Up"]', 'Guts'),
  (307, 16, 2, '["Focus Punch", "Detect", "Light Screen", "Reflect"]', 'Pure Power'),
  (296, 19, 3, '["Arm Thrust", "Vital Throw", "Reversal", "Bulk Up"]', 'Thick Fat')
) AS e(dex_id, lvl, slot, moves, abil)
WHERE r.slug = 'dewford-town' AND t.name = 'Brawly'
AND r.game_id = 'a1b2c3d4-e5f6-7890-abcd-ef1234567890';

-- -------------------------------------------
-- 3b. Rival Battle on Route 110 (May/Brendan 2nd)
-- -------------------------------------------
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
SELECT r.id, 'May/Brendan', 'Rival', true, 'rival', 20, 1, 'Second rival battle. Team varies by starter.'
FROM public.routes r
WHERE r.slug = 'route-110' AND r.game_id = 'a1b2c3d4-e5f6-7890-abcd-ef1234567890';

INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability)
SELECT t.id, e.dex_id, e.lvl, e.slot, e.moves::jsonb, e.abil
FROM public.trainers t
JOIN public.routes r ON t.route_id = r.id,
(VALUES
  (218, 18, 1, '["Ember", "Rock Throw", "Light Screen", "Smog"]', 'Flame Body'),
  (271, 18, 2, '["Absorb", "Nature Power", "Fake Out", "Astonish"]', 'Swift Swim'),
  (253, 20, 3, '["Absorb", "Quick Attack", "Fury Cutter", "Pursuit"]', 'Overgrow')
) AS e(dex_id, lvl, slot, moves, abil)
WHERE r.slug = 'route-110' AND t.name = 'May/Brendan'
AND r.game_id = 'a1b2c3d4-e5f6-7890-abcd-ef1234567890';

-- -------------------------------------------
-- 3c. Gym Leader Wattson (Mauville City)
-- -------------------------------------------
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
SELECT r.id, 'Wattson', 'Gym Leader', true, 'gym_leader', 24, 1, 'Electric-type specialist. Dynamo Badge.'
FROM public.routes r
WHERE r.slug = 'mauville-city' AND r.game_id = 'a1b2c3d4-e5f6-7890-abcd-ef1234567890';

INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability)
SELECT t.id, e.dex_id, e.lvl, e.slot, e.moves::jsonb, e.abil
FROM public.trainers t
JOIN public.routes r ON t.route_id = r.id,
(VALUES
  (100, 20, 1, '["Rollout", "Spark", "Self-Destruct", "Charge"]', 'Soundproof'),
  (309, 20, 2, '["Howl", "Quick Attack", "Spark", "Leer"]', 'Static'),
  (82,  22, 3, '["Sonic Boom", "Supersonic", "Thunder Wave", "Shock Wave"]', 'Magnet Pull'),
  (310, 24, 4, '["Quick Attack", "Shock Wave", "Thunder Wave", "Howl"]', 'Static')
) AS e(dex_id, lvl, slot, moves, abil)
WHERE r.slug = 'mauville-city' AND t.name = 'Wattson'
AND r.game_id = 'a1b2c3d4-e5f6-7890-abcd-ef1234567890';

-- -------------------------------------------
-- 3d. Gym Leader Flannery (Lavaridge Town)
-- -------------------------------------------
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
SELECT r.id, 'Flannery', 'Gym Leader', true, 'gym_leader', 29, 1, 'Fire-type specialist. Heat Badge.'
FROM public.routes r
WHERE r.slug = 'lavaridge-town' AND r.game_id = 'a1b2c3d4-e5f6-7890-abcd-ef1234567890';

INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability)
SELECT t.id, e.dex_id, e.lvl, e.slot, e.moves::jsonb, e.abil
FROM public.trainers t
JOIN public.routes r ON t.route_id = r.id,
(VALUES
  (322, 24, 1, '["Overheat", "Tackle", "Magnitude", "Sunny Day"]', 'Oblivious'),
  (218, 24, 2, '["Overheat", "Smog", "Light Screen", "Sunny Day"]', 'Flame Body'),
  (323, 26, 3, '["Overheat", "Attract", "Sunny Day", "Tackle"]', 'Magma Armor'),
  (324, 29, 4, '["Overheat", "Body Slam", "Flail", "Attract"]', 'White Smoke')
) AS e(dex_id, lvl, slot, moves, abil)
WHERE r.slug = 'lavaridge-town' AND t.name = 'Flannery'
AND r.game_id = 'a1b2c3d4-e5f6-7890-abcd-ef1234567890';

-- -------------------------------------------
-- 3e. Gym Leader Norman (Petalburg City Gym)
-- -------------------------------------------
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
SELECT r.id, 'Norman', 'Gym Leader', true, 'gym_leader', 31, 1, 'Normal-type specialist. Balance Badge.'
FROM public.routes r
WHERE r.slug = 'petalburg-city-gym' AND r.game_id = 'a1b2c3d4-e5f6-7890-abcd-ef1234567890';

INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability)
SELECT t.id, e.dex_id, e.lvl, e.slot, e.moves::jsonb, e.abil
FROM public.trainers t
JOIN public.routes r ON t.route_id = r.id,
(VALUES
  (327, 27, 1, '["Teeter Dance", "Psybeam", "Facade", "Encore"]', 'Own Tempo'),
  (288, 27, 2, '["Slash", "Faint Attack", "Facade", "Encore"]', 'Vital Spirit'),
  (264, 29, 3, '["Slash", "Belly Drum", "Headbutt", "Facade"]', 'Pickup'),
  (289, 31, 4, '["Counter", "Yawn", "Facade", "Faint Attack"]', 'Truant')
) AS e(dex_id, lvl, slot, moves, abil)
WHERE r.slug = 'petalburg-city-gym' AND t.name = 'Norman'
AND r.game_id = 'a1b2c3d4-e5f6-7890-abcd-ef1234567890';

-- -------------------------------------------
-- 3f. Gym Leader Winona (Fortree City)
-- -------------------------------------------
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
SELECT r.id, 'Winona', 'Gym Leader', true, 'gym_leader', 33, 1, 'Flying-type specialist. Feather Badge.'
FROM public.routes r
WHERE r.slug = 'fortree-city' AND r.game_id = 'a1b2c3d4-e5f6-7890-abcd-ef1234567890';

INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability)
SELECT t.id, e.dex_id, e.lvl, e.slot, e.moves::jsonb, e.abil
FROM public.trainers t
JOIN public.routes r ON t.route_id = r.id,
(VALUES
  (333, 29, 1, '["Perish Song", "Mirror Move", "Safeguard", "Aerial Ace"]', 'Natural Cure'),
  (357, 29, 2, '["Sunny Day", "Aerial Ace", "Solar Beam", "Synthesis"]', 'Chlorophyll'),
  (279, 30, 3, '["Water Gun", "Supersonic", "Protect", "Aerial Ace"]', 'Keen Eye'),
  (227, 31, 4, '["Sand Attack", "Fury Attack", "Steel Wing", "Aerial Ace"]', 'Keen Eye'),
  (334, 33, 5, '["Dragon Dance", "DragonBreath", "Aerial Ace", "Earthquake"]', 'Natural Cure')
) AS e(dex_id, lvl, slot, moves, abil)
WHERE r.slug = 'fortree-city' AND t.name = 'Winona'
AND r.game_id = 'a1b2c3d4-e5f6-7890-abcd-ef1234567890';

-- -------------------------------------------
-- 3g. Gym Leaders Tate & Liza (Mossdeep City)
-- -------------------------------------------
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
SELECT r.id, 'Tate & Liza', 'Gym Leader', true, 'gym_leader', 42, 1, 'Psychic-type specialists. Mind Badge. Double battle.'
FROM public.routes r
WHERE r.slug = 'mossdeep-city' AND r.game_id = 'a1b2c3d4-e5f6-7890-abcd-ef1234567890';

INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability)
SELECT t.id, e.dex_id, e.lvl, e.slot, e.moves::jsonb, e.abil
FROM public.trainers t
JOIN public.routes r ON t.route_id = r.id,
(VALUES
  (344, 41, 1, '["Earthquake", "AncientPower", "Psychic", "Light Screen"]', 'Levitate'),
  (178, 41, 2, '["Psychic", "Sunny Day", "Confuse Ray", "Calm Mind"]', 'Synchronize'),
  (337, 42, 3, '["Psychic", "Hypnosis", "Calm Mind", "Light Screen"]', 'Levitate'),
  (338, 42, 4, '["Psychic", "Sunny Day", "Solar Beam", "Flamethrower"]', 'Levitate')
) AS e(dex_id, lvl, slot, moves, abil)
WHERE r.slug = 'mossdeep-city' AND t.name = 'Tate & Liza'
AND r.game_id = 'a1b2c3d4-e5f6-7890-abcd-ef1234567890';

-- -------------------------------------------
-- 3h. Gym Leader Juan (Sootopolis City)
-- -------------------------------------------
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
SELECT r.id, 'Juan', 'Gym Leader', true, 'gym_leader', 46, 1, 'Water-type specialist. Rain Badge.'
FROM public.routes r
WHERE r.slug = 'sootopolis-city' AND r.game_id = 'a1b2c3d4-e5f6-7890-abcd-ef1234567890';

INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability)
SELECT t.id, e.dex_id, e.lvl, e.slot, e.moves::jsonb, e.abil
FROM public.trainers t
JOIN public.routes r ON t.route_id = r.id,
(VALUES
  (370, 41, 1, '["Water Pulse", "Attract", "Sweet Kiss", "Flail"]', 'Swift Swim'),
  (340, 41, 2, '["Rain Dance", "Water Pulse", "Amnesia", "Earthquake"]', 'Oblivious'),
  (364, 43, 3, '["Encore", "Body Slam", "Aurora Beam", "Water Pulse"]', 'Thick Fat'),
  (342, 43, 4, '["Water Pulse", "Crabhammer", "Taunt", "Leer"]', 'Hyper Cutter'),
  (230, 46, 5, '["Water Pulse", "Dragon Dance", "Ice Beam", "Double Team"]', 'Swift Swim')
) AS e(dex_id, lvl, slot, moves, abil)
WHERE r.slug = 'sootopolis-city' AND t.name = 'Juan'
AND r.game_id = 'a1b2c3d4-e5f6-7890-abcd-ef1234567890';

-- -------------------------------------------
-- 3i. Elite Four Sidney (Pokemon League)
-- -------------------------------------------
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
SELECT r.id, 'Sidney', 'Elite Four', true, 'elite_four', 49, 1, 'Dark-type specialist. First of the Elite Four.'
FROM public.routes r
WHERE r.slug = 'pokemon-league' AND r.game_id = 'a1b2c3d4-e5f6-7890-abcd-ef1234567890';

INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability)
SELECT t.id, e.dex_id, e.lvl, e.slot, e.moves::jsonb, e.abil
FROM public.trainers t
JOIN public.routes r ON t.route_id = r.id,
(VALUES
  (262, 46, 1, '["Crunch", "Sand Attack", "Double Edge", "Swagger"]', 'Intimidate'),
  (275, 48, 2, '["Fake Out", "Double Team", "Swagger", "Extrasensory"]', 'Chlorophyll'),
  (359, 49, 3, '["Swords Dance", "Slash", "Aerial Ace", "Crunch"]', 'Pressure'),
  (332, 46, 4, '["Needle Arm", "Faint Attack", "Cotton Spore", "Leech Seed"]', 'Sand Veil'),
  (342, 48, 5, '["Surf", "Swords Dance", "Strength", "Facade"]', 'Shell Armor')
) AS e(dex_id, lvl, slot, moves, abil)
WHERE r.slug = 'pokemon-league' AND t.name = 'Sidney'
AND r.game_id = 'a1b2c3d4-e5f6-7890-abcd-ef1234567890';

-- -------------------------------------------
-- 3j. Elite Four Phoebe (Pokemon League)
-- -------------------------------------------
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
SELECT r.id, 'Phoebe', 'Elite Four', true, 'elite_four', 51, 2, 'Ghost-type specialist. Second of the Elite Four.'
FROM public.routes r
WHERE r.slug = 'pokemon-league' AND r.game_id = 'a1b2c3d4-e5f6-7890-abcd-ef1234567890';

INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability)
SELECT t.id, e.dex_id, e.lvl, e.slot, e.moves::jsonb, e.abil
FROM public.trainers t
JOIN public.routes r ON t.route_id = r.id,
(VALUES
  (356, 48, 1, '["Shadow Punch", "Confuse Ray", "Curse", "Protect"]', 'Pressure'),
  (354, 49, 2, '["Shadow Ball", "Grudge", "Will-O-Wisp", "Faint Attack"]', 'Insomnia'),
  (302, 50, 3, '["Shadow Ball", "Faint Attack", "Double Team", "Attract"]', 'Keen Eye'),
  (354, 49, 4, '["Shadow Ball", "Psychic", "Thunderbolt", "Toxic"]', 'Insomnia'),
  (356, 51, 5, '["Shadow Ball", "Ice Beam", "Rock Slide", "Earthquake"]', 'Pressure')
) AS e(dex_id, lvl, slot, moves, abil)
WHERE r.slug = 'pokemon-league' AND t.name = 'Phoebe'
AND r.game_id = 'a1b2c3d4-e5f6-7890-abcd-ef1234567890';

-- -------------------------------------------
-- 3k. Elite Four Glacia (Pokemon League)
-- -------------------------------------------
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
SELECT r.id, 'Glacia', 'Elite Four', true, 'elite_four', 53, 3, 'Ice-type specialist. Third of the Elite Four.'
FROM public.routes r
WHERE r.slug = 'pokemon-league' AND r.game_id = 'a1b2c3d4-e5f6-7890-abcd-ef1234567890';

INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability)
SELECT t.id, e.dex_id, e.lvl, e.slot, e.moves::jsonb, e.abil
FROM public.trainers t
JOIN public.routes r ON t.route_id = r.id,
(VALUES
  (364, 50, 1, '["Encore", "Body Slam", "Hail", "Ice Ball"]', 'Thick Fat'),
  (362, 50, 2, '["Light Screen", "Crunch", "Icy Wind", "Ice Beam"]', 'Inner Focus'),
  (364, 52, 3, '["Attract", "Double Edge", "Hail", "Blizzard"]', 'Thick Fat'),
  (362, 52, 4, '["Shadow Ball", "Hail", "Ice Beam", "Crunch"]', 'Inner Focus'),
  (365, 53, 5, '["Surf", "Body Slam", "Ice Beam", "Sheer Cold"]', 'Thick Fat')
) AS e(dex_id, lvl, slot, moves, abil)
WHERE r.slug = 'pokemon-league' AND t.name = 'Glacia'
AND r.game_id = 'a1b2c3d4-e5f6-7890-abcd-ef1234567890';

-- -------------------------------------------
-- 3l. Elite Four Drake (Pokemon League)
-- -------------------------------------------
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
SELECT r.id, 'Drake', 'Elite Four', true, 'elite_four', 55, 4, 'Dragon-type specialist. Fourth of the Elite Four.'
FROM public.routes r
WHERE r.slug = 'pokemon-league' AND r.game_id = 'a1b2c3d4-e5f6-7890-abcd-ef1234567890';

INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability)
SELECT t.id, e.dex_id, e.lvl, e.slot, e.moves::jsonb, e.abil
FROM public.trainers t
JOIN public.routes r ON t.route_id = r.id,
(VALUES
  (372, 52, 1, '["Rock Tomb", "Dragon Claw", "Protect", "Double Edge"]', 'Rock Head'),
  (334, 54, 2, '["Dragon Dance", "Refresh", "DragonBreath", "Aerial Ace"]', 'Natural Cure'),
  (330, 53, 3, '["Flamethrower", "Crunch", "DragonBreath", "Screech"]', 'Levitate'),
  (330, 53, 4, '["Fly", "Crunch", "DragonBreath", "Dig"]', 'Levitate'),
  (373, 55, 5, '["Flamethrower", "Dragon Claw", "Rock Slide", "Crunch"]', 'Intimidate')
) AS e(dex_id, lvl, slot, moves, abil)
WHERE r.slug = 'pokemon-league' AND t.name = 'Drake'
AND r.game_id = 'a1b2c3d4-e5f6-7890-abcd-ef1234567890';

-- -------------------------------------------
-- 3m. Champion Wallace (Pokemon League)
-- -------------------------------------------
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
SELECT r.id, 'Wallace', 'Champion', true, 'champion', 58, 5, 'Water-type specialist. Hoenn Champion.'
FROM public.routes r
WHERE r.slug = 'pokemon-league' AND r.game_id = 'a1b2c3d4-e5f6-7890-abcd-ef1234567890';

INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability)
SELECT t.id, e.dex_id, e.lvl, e.slot, e.moves::jsonb, e.abil
FROM public.trainers t
JOIN public.routes r ON t.route_id = r.id,
(VALUES
  (321, 57, 1, '["Rain Dance", "Water Spout", "Double Edge", "Blizzard"]', 'Water Veil'),
  (73,  55, 2, '["Toxic", "Hydro Pump", "Sludge Bomb", "Ice Beam"]', 'Liquid Ooze'),
  (272, 56, 3, '["Giga Drain", "Surf", "Leech Seed", "Double Team"]', 'Swift Swim'),
  (340, 56, 4, '["Earthquake", "Surf", "Amnesia", "Hyper Beam"]', 'Oblivious'),
  (130, 56, 5, '["Dragon Dance", "Earthquake", "Hyper Beam", "Surf"]', 'Intimidate'),
  (350, 58, 6, '["Recover", "Surf", "Ice Beam", "Toxic"]', 'Marvel Scale')
) AS e(dex_id, lvl, slot, moves, abil)
WHERE r.slug = 'pokemon-league' AND t.name = 'Wallace'
AND r.game_id = 'a1b2c3d4-e5f6-7890-abcd-ef1234567890';


-- ===========================================
-- SECTION 4: REGULAR ROUTE TRAINERS
-- ===========================================

-- -------------------------------------------
-- Route 110 regular trainers
-- -------------------------------------------
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
SELECT r.id, t.name, t.class, false, t.ord
FROM public.routes r,
(VALUES
  ('Alyssa', 'Triathlete', 2),
  ('Benjamin', 'Triathlete', 3),
  ('Abigail', 'Triathlete', 4),
  ('Dylan', 'Triathlete', 5),
  ('Jaclyn', 'Triathlete', 6)
) AS t(name, class, ord)
WHERE r.slug = 'route-110' AND r.game_id = 'a1b2c3d4-e5f6-7890-abcd-ef1234567890';

-- -------------------------------------------
-- Route 117 regular trainers
-- -------------------------------------------
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
SELECT r.id, t.name, t.class, false, t.ord
FROM public.routes r,
(VALUES
  ('Isaac & Lydia', 'Sr. and Jr.', 1),
  ('Anna & Meg', 'Interviewers', 2),
  ('Melina', 'Battle Girl', 3),
  ('Brandi', 'Pokemon Breeder', 4)
) AS t(name, class, ord)
WHERE r.slug = 'route-117' AND r.game_id = 'a1b2c3d4-e5f6-7890-abcd-ef1234567890';

-- -------------------------------------------
-- Route 111 regular trainers
-- -------------------------------------------
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
SELECT r.id, t.name, t.class, false, t.ord
FROM public.routes r,
(VALUES
  ('Vicky', 'Cooltrainer', 1),
  ('Brooke', 'Cooltrainer', 2),
  ('Wilton', 'Cooltrainer', 3),
  ('Drew', 'Picnicker', 4)
) AS t(name, class, ord)
WHERE r.slug = 'route-111' AND r.game_id = 'a1b2c3d4-e5f6-7890-abcd-ef1234567890';

-- -------------------------------------------
-- Route 112 regular trainers
-- -------------------------------------------
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
SELECT r.id, t.name, t.class, false, t.ord
FROM public.routes r,
(VALUES
  ('Trent', 'Hiker', 1),
  ('Brice', 'Hiker', 2)
) AS t(name, class, ord)
WHERE r.slug = 'route-112' AND r.game_id = 'a1b2c3d4-e5f6-7890-abcd-ef1234567890';

-- -------------------------------------------
-- Route 113 regular trainers
-- -------------------------------------------
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
SELECT r.id, t.name, t.class, false, t.ord
FROM public.routes r,
(VALUES
  ('Jaylen', 'Youngster', 1),
  ('Dillon', 'Youngster', 2),
  ('Madeline', 'Parasol Lady', 3)
) AS t(name, class, ord)
WHERE r.slug = 'route-113' AND r.game_id = 'a1b2c3d4-e5f6-7890-abcd-ef1234567890';

-- -------------------------------------------
-- Route 114 regular trainers
-- -------------------------------------------
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
SELECT r.id, t.name, t.class, false, t.ord
FROM public.routes r,
(VALUES
  ('Lenny', 'Fisherman', 1),
  ('Nolan', 'Kindler', 2),
  ('Steve', 'Hiker', 3),
  ('Lucas', 'Hiker', 4),
  ('Angelina', 'Picnicker', 5)
) AS t(name, class, ord)
WHERE r.slug = 'route-114' AND r.game_id = 'a1b2c3d4-e5f6-7890-abcd-ef1234567890';

-- -------------------------------------------
-- Route 115 regular trainers
-- -------------------------------------------
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
SELECT r.id, t.name, t.class, false, t.ord
FROM public.routes r,
(VALUES
  ('Timothy', 'Black Belt', 1),
  ('Koichi', 'Battle Girl', 2),
  ('Nob', 'Collector', 3)
) AS t(name, class, ord)
WHERE r.slug = 'route-115' AND r.game_id = 'a1b2c3d4-e5f6-7890-abcd-ef1234567890';

-- -------------------------------------------
-- Mt. Chimney trainers (Team Magma)
-- -------------------------------------------
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, display_order, notes)
SELECT r.id, 'Maxie', 'Team Magma Leader', true, 'evil_leader', 1, 'First battle with Maxie at Mt. Chimney summit.'
FROM public.routes r
WHERE r.slug = 'mt-chimney' AND r.game_id = 'a1b2c3d4-e5f6-7890-abcd-ef1234567890';

INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability)
SELECT t.id, e.dex_id, e.lvl, e.slot, e.moves::jsonb, e.abil
FROM public.trainers t
JOIN public.routes r ON t.route_id = r.id,
(VALUES
  (262, 24, 1, '["Bite", "Swagger", "Scary Face", "Roar"]', 'Intimidate'),
  (323, 24, 2, '["Magnitude", "Ember", "Focus Energy", "Take Down"]', 'Magma Armor'),
  (41,  24, 3, '["Bite", "Wing Attack", "Astonish", "Mean Look"]', 'Inner Focus')
) AS e(dex_id, lvl, slot, moves, abil)
WHERE r.slug = 'mt-chimney' AND t.name = 'Maxie'
AND r.game_id = 'a1b2c3d4-e5f6-7890-abcd-ef1234567890';

-- -------------------------------------------
-- Jagged Pass regular trainers
-- -------------------------------------------
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
SELECT r.id, t.name, t.class, false, t.ord
FROM public.routes r,
(VALUES
  ('Eric', 'Hiker', 1),
  ('Diana', 'Picnicker', 2),
  ('Ethan', 'Camper', 3)
) AS t(name, class, ord)
WHERE r.slug = 'jagged-pass' AND r.game_id = 'a1b2c3d4-e5f6-7890-abcd-ef1234567890';

-- -------------------------------------------
-- Route 118 regular trainers
-- -------------------------------------------
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
SELECT r.id, t.name, t.class, false, t.ord
FROM public.routes r,
(VALUES
  ('Rose', 'Aroma Lady', 1),
  ('Chris', 'Guitarist', 2),
  ('Dalton', 'Fisherman', 3),
  ('Barny', 'Bird Keeper', 4)
) AS t(name, class, ord)
WHERE r.slug = 'route-118' AND r.game_id = 'a1b2c3d4-e5f6-7890-abcd-ef1234567890';

-- -------------------------------------------
-- Route 119 regular trainers
-- -------------------------------------------
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
SELECT r.id, t.name, t.class, false, t.ord
FROM public.routes r,
(VALUES
  ('Phil', 'Bug Maniac', 1),
  ('Taylor', 'Ninja Boy', 2),
  ('Catherine', 'Pokemon Ranger', 3),
  ('Jackson', 'Pokemon Ranger', 4),
  ('Hugh', 'Bird Keeper', 5)
) AS t(name, class, ord)
WHERE r.slug = 'route-119' AND r.game_id = 'a1b2c3d4-e5f6-7890-abcd-ef1234567890';

-- -------------------------------------------
-- Route 120 regular trainers
-- -------------------------------------------
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
SELECT r.id, t.name, t.class, false, t.ord
FROM public.routes r,
(VALUES
  ('Colin', 'Ninja Boy', 1),
  ('Javier', 'Parasol Lady', 2),
  ('Jennifer', 'Cooltrainer', 3),
  ('Robert', 'Bird Keeper', 4)
) AS t(name, class, ord)
WHERE r.slug = 'route-120' AND r.game_id = 'a1b2c3d4-e5f6-7890-abcd-ef1234567890';

-- -------------------------------------------
-- Route 121 regular trainers
-- -------------------------------------------
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
SELECT r.id, t.name, t.class, false, t.ord
FROM public.routes r,
(VALUES
  ('Tammy', 'Hex Maniac', 1),
  ('Cale', 'Gentleman', 2),
  ('Vanessa', 'Beauty', 3)
) AS t(name, class, ord)
WHERE r.slug = 'route-121' AND r.game_id = 'a1b2c3d4-e5f6-7890-abcd-ef1234567890';

-- -------------------------------------------
-- Mt. Pyre trainers
-- -------------------------------------------
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
SELECT r.id, t.name, t.class, false, t.ord
FROM public.routes r,
(VALUES
  ('Tasha', 'Hex Maniac', 1),
  ('Valerie', 'Hex Maniac', 2),
  ('Cedric', 'Psychic', 3),
  ('Mark', 'Young Couple', 4)
) AS t(name, class, ord)
WHERE r.slug = 'mt-pyre' AND r.game_id = 'a1b2c3d4-e5f6-7890-abcd-ef1234567890';

-- -------------------------------------------
-- Route 123 regular trainers
-- -------------------------------------------
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
SELECT r.id, t.name, t.class, false, t.ord
FROM public.routes r,
(VALUES
  ('Davis', 'Bug Maniac', 1),
  ('Wendy', 'Cooltrainer', 2),
  ('Braxton', 'Psychic', 3)
) AS t(name, class, ord)
WHERE r.slug = 'route-123' AND r.game_id = 'a1b2c3d4-e5f6-7890-abcd-ef1234567890';

-- -------------------------------------------
-- Team Magma Hideout trainers
-- -------------------------------------------
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order, notes)
SELECT r.id, t.name, t.class, false, t.ord, t.notes
FROM public.routes r,
(VALUES
  ('Grunt 1', 'Team Magma', 1, 'First grunt in the hideout.'),
  ('Grunt 2', 'Team Magma', 2, 'Second grunt in the hideout.'),
  ('Grunt 3', 'Team Magma', 3, 'Third grunt in the hideout.'),
  ('Grunt 4', 'Team Magma', 4, 'Fourth grunt in the hideout.')
) AS t(name, class, ord, notes)
WHERE r.slug = 'team-magma-hideout' AND r.game_id = 'a1b2c3d4-e5f6-7890-abcd-ef1234567890';

-- Team Magma Hideout boss - Maxie rematch
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, display_order, notes)
SELECT r.id, 'Maxie', 'Team Magma Leader', true, 'evil_leader', 5, 'Rematch with Maxie in the hideout.'
FROM public.routes r
WHERE r.slug = 'team-magma-hideout' AND r.game_id = 'a1b2c3d4-e5f6-7890-abcd-ef1234567890';

INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability)
SELECT t.id, e.dex_id, e.lvl, e.slot, e.moves::jsonb, e.abil
FROM public.trainers t
JOIN public.routes r ON t.route_id = r.id,
(VALUES
  (262, 37, 1, '["Crunch", "Scary Face", "Swagger", "Roar"]', 'Intimidate'),
  (323, 38, 2, '["Rock Slide", "Earthquake", "Eruption", "Take Down"]', 'Magma Armor'),
  (42,  38, 3, '["Bite", "Wing Attack", "Mean Look", "Confuse Ray"]', 'Inner Focus')
) AS e(dex_id, lvl, slot, moves, abil)
WHERE r.slug = 'team-magma-hideout' AND t.name = 'Maxie' AND t.display_order = 5
AND r.game_id = 'a1b2c3d4-e5f6-7890-abcd-ef1234567890';

-- -------------------------------------------
-- Seafloor Cavern trainers (Team Magma/Aqua)
-- -------------------------------------------
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
SELECT r.id, t.name, t.class, false, t.ord
FROM public.routes r,
(VALUES
  ('Grunt 1', 'Team Magma', 1),
  ('Grunt 2', 'Team Magma', 2),
  ('Grunt 3', 'Team Magma', 3)
) AS t(name, class, ord)
WHERE r.slug = 'seafloor-cavern' AND r.game_id = 'a1b2c3d4-e5f6-7890-abcd-ef1234567890';

-- -------------------------------------------
-- Victory Road trainers
-- -------------------------------------------
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
SELECT r.id, t.name, t.class, false, t.ord
FROM public.routes r,
(VALUES
  ('Wally', 'Pokemon Trainer', 1),
  ('Samuel', 'Cooltrainer', 2),
  ('Julie', 'Cooltrainer', 3),
  ('Dianne', 'Cooltrainer', 4),
  ('Felix', 'Cooltrainer', 5),
  ('Edgar', 'Cooltrainer', 6)
) AS t(name, class, ord)
WHERE r.slug = 'victory-road' AND r.game_id = 'a1b2c3d4-e5f6-7890-abcd-ef1234567890';

-- Wally's team in Victory Road
INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability)
SELECT t.id, e.dex_id, e.lvl, e.slot, e.moves::jsonb, e.abil
FROM public.trainers t
JOIN public.routes r ON t.route_id = r.id,
(VALUES
  (334, 44, 1, '["Aerial Ace", "Safeguard", "Dragon Dance", "DragonBreath"]', 'Natural Cure'),
  (356, 43, 2, '["Shadow Ball", "Protect", "Confuse Ray", "Future Sight"]', 'Pressure'),
  (82,  41, 3, '["Supersonic", "Thunderbolt", "Tri Attack", "Screech"]', 'Magnet Pull'),
  (272, 41, 4, '["Surf", "Giga Drain", "Double Team", "Leech Seed"]', 'Swift Swim'),
  (282, 45, 5, '["Double Team", "Calm Mind", "Psychic", "Future Sight"]', 'Synchronize')
) AS e(dex_id, lvl, slot, moves, abil)
WHERE r.slug = 'victory-road' AND t.name = 'Wally'
AND r.game_id = 'a1b2c3d4-e5f6-7890-abcd-ef1234567890';


-- ===========================================
-- SECTION 5: WATER ROUTE TRAINERS
-- (Swimmers and divers on sea routes)
-- ===========================================

-- Route 106 trainers
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
SELECT r.id, t.name, t.class, false, t.ord
FROM public.routes r,
(VALUES
  ('Douglas', 'Swimmer', 1),
  ('Kyla', 'Swimmer', 2)
) AS t(name, class, ord)
WHERE r.slug = 'route-106' AND r.game_id = 'a1b2c3d4-e5f6-7890-abcd-ef1234567890';

-- Route 107 trainers
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
SELECT r.id, t.name, t.class, false, t.ord
FROM public.routes r,
(VALUES
  ('Tony', 'Swimmer', 1),
  ('Beth', 'Swimmer', 2),
  ('Denise', 'Swimmer', 3)
) AS t(name, class, ord)
WHERE r.slug = 'route-107' AND r.game_id = 'a1b2c3d4-e5f6-7890-abcd-ef1234567890';

-- Route 108 trainers
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
SELECT r.id, t.name, t.class, false, t.ord
FROM public.routes r,
(VALUES
  ('Jerome', 'Swimmer', 1),
  ('Tara', 'Swimmer', 2)
) AS t(name, class, ord)
WHERE r.slug = 'route-108' AND r.game_id = 'a1b2c3d4-e5f6-7890-abcd-ef1234567890';

-- Route 109 trainers
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
SELECT r.id, t.name, t.class, false, t.ord
FROM public.routes r,
(VALUES
  ('David', 'Swimmer', 1),
  ('Alice', 'Swimmer', 2),
  ('Ricky', 'Tuber', 3),
  ('Lola', 'Tuber', 4)
) AS t(name, class, ord)
WHERE r.slug = 'route-109' AND r.game_id = 'a1b2c3d4-e5f6-7890-abcd-ef1234567890';

-- Route 124 trainers
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
SELECT r.id, t.name, t.class, false, t.ord
FROM public.routes r,
(VALUES
  ('Grace', 'Swimmer', 1),
  ('Spencer', 'Swimmer', 2),
  ('Jenny', 'Swimmer', 3)
) AS t(name, class, ord)
WHERE r.slug = 'route-124' AND r.game_id = 'a1b2c3d4-e5f6-7890-abcd-ef1234567890';

-- Route 125 trainers
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
SELECT r.id, t.name, t.class, false, t.ord
FROM public.routes r,
(VALUES
  ('Tanya', 'Swimmer', 1),
  ('Ernest', 'Swimmer', 2),
  ('Sharon', 'Swimmer', 3)
) AS t(name, class, ord)
WHERE r.slug = 'route-125' AND r.game_id = 'a1b2c3d4-e5f6-7890-abcd-ef1234567890';

-- Route 127 trainers
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
SELECT r.id, t.name, t.class, false, t.ord
FROM public.routes r,
(VALUES
  ('Jonah', 'Fisherman', 1),
  ('Donny', 'Triathlete', 2),
  ('Camden', 'Swimmer', 3)
) AS t(name, class, ord)
WHERE r.slug = 'route-127' AND r.game_id = 'a1b2c3d4-e5f6-7890-abcd-ef1234567890';

-- Route 128 trainers
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
SELECT r.id, t.name, t.class, false, t.ord
FROM public.routes r,
(VALUES
  ('Isaiah', 'Swimmer', 1),
  ('Katelyn', 'Swimmer', 2)
) AS t(name, class, ord)
WHERE r.slug = 'route-128' AND r.game_id = 'a1b2c3d4-e5f6-7890-abcd-ef1234567890';


-- ===========================================
-- SECTION 6: UPDATE TOTAL ROUTES COUNT
-- ===========================================

UPDATE public.games
SET total_routes = (
  SELECT COUNT(*)
  FROM public.routes
  WHERE game_id = 'a1b2c3d4-e5f6-7890-abcd-ef1234567890'
)
WHERE id = 'a1b2c3d4-e5f6-7890-abcd-ef1234567890';
