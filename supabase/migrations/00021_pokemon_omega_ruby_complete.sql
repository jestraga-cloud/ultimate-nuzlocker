-- ===========================================
-- POKEMON OMEGA RUBY: COMPLETE GAME DATA
-- Official Pokemon Game
-- Gen 6, Hoenn region
-- ===========================================
-- Game ID: f8a9b0c1-d2e3-4567-f890-123456789012
-- ===========================================

-- STEP 1: Insert the game
INSERT INTO public.games (id, slug, name, generation, region, base_game_slug, is_romhack, sprite_url, total_routes, description)
VALUES (
  'f8a9b0c1-d2e3-4567-f890-123456789012',
  'pokemon-omega-ruby',
  'Pokemon Omega Ruby',
  6,
  'Hoenn',
  NULL,
  false,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/383.png',
  67,
  'Pokemon Omega Ruby for Nintendo 3DS. A remake of Ruby set in the Hoenn region with Mega Evolution and updated encounters.'
);

-- ===========================================
-- STEP 2: ALL ROUTES (67 total)
-- ===========================================

INSERT INTO public.routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items, notes) VALUES
('f8a9b0c1-d2e3-4567-f890-123456789012', 'Littleroot Town', 'littleroot-town', 1, 'city', true, false, false, 'Starter town. Choose Treecko, Torchic, or Mudkip.'),
('f8a9b0c1-d2e3-4567-f890-123456789012', 'Route 101', 'route-101', 2, 'route', true, false, false, NULL),
('f8a9b0c1-d2e3-4567-f890-123456789012', 'Oldale Town', 'oldale-town', 3, 'city', false, false, true, NULL),
('f8a9b0c1-d2e3-4567-f890-123456789012', 'Route 103', 'route-103', 4, 'route', true, true, false, NULL),
('f8a9b0c1-d2e3-4567-f890-123456789012', 'Route 102', 'route-102', 5, 'route', true, true, true, NULL),
('f8a9b0c1-d2e3-4567-f890-123456789012', 'Petalburg City', 'petalburg-city', 6, 'city', false, false, true, NULL),
('f8a9b0c1-d2e3-4567-f890-123456789012', 'Route 104 (South)', 'route-104-south', 7, 'route', true, true, true, NULL),
('f8a9b0c1-d2e3-4567-f890-123456789012', 'Petalburg Woods', 'petalburg-woods', 8, 'cave', true, true, true, NULL),
('f8a9b0c1-d2e3-4567-f890-123456789012', 'Route 104 (North)', 'route-104-north', 9, 'route', true, true, true, NULL),
('f8a9b0c1-d2e3-4567-f890-123456789012', 'Rustboro City', 'rustboro-city', 10, 'city', false, true, true, 'Gym Leader Roxanne. Rock-type specialist.'),
('f8a9b0c1-d2e3-4567-f890-123456789012', 'Route 116', 'route-116', 11, 'route', true, true, true, NULL),
('f8a9b0c1-d2e3-4567-f890-123456789012', 'Rusturf Tunnel', 'rusturf-tunnel', 12, 'cave', true, false, true, NULL),
('f8a9b0c1-d2e3-4567-f890-123456789012', 'Route 105', 'route-105', 13, 'water', true, true, false, NULL),
('f8a9b0c1-d2e3-4567-f890-123456789012', 'Dewford Town', 'dewford-town', 14, 'city', false, true, true, 'Gym Leader Brawly. Fighting-type specialist.'),
('f8a9b0c1-d2e3-4567-f890-123456789012', 'Granite Cave', 'granite-cave', 15, 'cave', true, false, true, NULL),
('f8a9b0c1-d2e3-4567-f890-123456789012', 'Route 106', 'route-106', 16, 'water', true, true, false, NULL),
('f8a9b0c1-d2e3-4567-f890-123456789012', 'Route 107', 'route-107', 17, 'water', true, true, false, NULL),
('f8a9b0c1-d2e3-4567-f890-123456789012', 'Route 108', 'route-108', 18, 'water', true, true, false, NULL),
('f8a9b0c1-d2e3-4567-f890-123456789012', 'Route 109', 'route-109', 19, 'water', true, true, false, NULL),
('f8a9b0c1-d2e3-4567-f890-123456789012', 'Slateport City', 'slateport-city', 20, 'city', false, false, true, NULL),
('f8a9b0c1-d2e3-4567-f890-123456789012', 'Route 110', 'route-110', 21, 'route', true, true, true, 'Cycling Road. Rival battle here.'),
('f8a9b0c1-d2e3-4567-f890-123456789012', 'Mauville City', 'mauville-city', 22, 'city', false, true, true, 'Gym Leader Wattson. Electric-type specialist.'),
('f8a9b0c1-d2e3-4567-f890-123456789012', 'Route 117', 'route-117', 23, 'route', true, true, true, NULL),
('f8a9b0c1-d2e3-4567-f890-123456789012', 'Verdanturf Town', 'verdanturf-town', 24, 'city', false, false, true, NULL),
('f8a9b0c1-d2e3-4567-f890-123456789012', 'Route 111', 'route-111', 25, 'route', true, true, true, 'Features a desert area accessible with Go-Goggles.'),
('f8a9b0c1-d2e3-4567-f890-123456789012', 'Route 112', 'route-112', 26, 'route', true, true, false, NULL),
('f8a9b0c1-d2e3-4567-f890-123456789012', 'Fiery Path', 'fiery-path', 27, 'cave', true, false, true, NULL),
('f8a9b0c1-d2e3-4567-f890-123456789012', 'Route 113', 'route-113', 28, 'route', true, true, true, 'Ash-covered route.'),
('f8a9b0c1-d2e3-4567-f890-123456789012', 'Fallarbor Town', 'fallarbor-town', 29, 'city', false, false, true, NULL),
('f8a9b0c1-d2e3-4567-f890-123456789012', 'Route 114', 'route-114', 30, 'route', true, true, true, NULL),
('f8a9b0c1-d2e3-4567-f890-123456789012', 'Meteor Falls', 'meteor-falls', 31, 'cave', true, false, true, NULL),
('f8a9b0c1-d2e3-4567-f890-123456789012', 'Route 115', 'route-115', 32, 'route', true, true, false, NULL),
('f8a9b0c1-d2e3-4567-f890-123456789012', 'Mt. Chimney', 'mt-chimney', 33, 'special', false, true, false, 'Team confrontation at the summit.'),
('f8a9b0c1-d2e3-4567-f890-123456789012', 'Jagged Pass', 'jagged-pass', 34, 'route', true, true, false, NULL),
('f8a9b0c1-d2e3-4567-f890-123456789012', 'Lavaridge Town', 'lavaridge-town', 35, 'city', false, true, true, 'Gym Leader Flannery. Fire-type specialist.'),
('f8a9b0c1-d2e3-4567-f890-123456789012', 'Petalburg City Gym', 'petalburg-city-gym', 36, 'building', false, true, false, 'Gym Leader Norman. Normal-type specialist.'),
('f8a9b0c1-d2e3-4567-f890-123456789012', 'Route 118', 'route-118', 37, 'route', true, true, false, 'Requires Surf.'),
('f8a9b0c1-d2e3-4567-f890-123456789012', 'Route 119', 'route-119', 38, 'route', true, true, true, 'Weather Institute.'),
('f8a9b0c1-d2e3-4567-f890-123456789012', 'Fortree City', 'fortree-city', 39, 'city', false, true, true, 'Gym Leader Winona. Flying-type specialist.'),
('f8a9b0c1-d2e3-4567-f890-123456789012', 'Route 120', 'route-120', 40, 'route', true, true, true, NULL),
('f8a9b0c1-d2e3-4567-f890-123456789012', 'Route 121', 'route-121', 41, 'route', true, true, false, NULL),
('f8a9b0c1-d2e3-4567-f890-123456789012', 'Mt. Pyre', 'mt-pyre', 42, 'cave', true, true, true, NULL),
('f8a9b0c1-d2e3-4567-f890-123456789012', 'Route 122', 'route-122', 43, 'water', true, false, false, NULL),
('f8a9b0c1-d2e3-4567-f890-123456789012', 'Lilycove City', 'lilycove-city', 44, 'city', false, false, true, NULL),
('f8a9b0c1-d2e3-4567-f890-123456789012', 'Route 123', 'route-123', 45, 'route', true, true, true, NULL),
('f8a9b0c1-d2e3-4567-f890-123456789012', 'Route 124', 'route-124', 46, 'water', true, true, false, NULL),
('f8a9b0c1-d2e3-4567-f890-123456789012', 'Mossdeep City', 'mossdeep-city', 47, 'city', false, true, true, 'Gym Leaders Tate & Liza. Psychic-type specialists.'),
('f8a9b0c1-d2e3-4567-f890-123456789012', 'Route 125', 'route-125', 48, 'water', true, true, false, NULL),
('f8a9b0c1-d2e3-4567-f890-123456789012', 'Shoal Cave', 'shoal-cave', 49, 'cave', true, false, true, 'Tidal cave. Changes with tides.'),
('f8a9b0c1-d2e3-4567-f890-123456789012', 'Route 126', 'route-126', 50, 'water', true, false, false, NULL),
('f8a9b0c1-d2e3-4567-f890-123456789012', 'Route 127', 'route-127', 51, 'water', true, true, false, NULL),
('f8a9b0c1-d2e3-4567-f890-123456789012', 'Route 128', 'route-128', 52, 'water', true, true, false, NULL),
('f8a9b0c1-d2e3-4567-f890-123456789012', 'Seafloor Cavern', 'seafloor-cavern', 53, 'cave', true, true, false, NULL),
('f8a9b0c1-d2e3-4567-f890-123456789012', 'Sootopolis City', 'sootopolis-city', 54, 'city', false, true, true, 'Gym Leader Wallace. Water-type specialist.'),
('f8a9b0c1-d2e3-4567-f890-123456789012', 'Route 129', 'route-129', 55, 'water', true, false, false, NULL),
('f8a9b0c1-d2e3-4567-f890-123456789012', 'Route 130', 'route-130', 56, 'water', true, false, false, NULL),
('f8a9b0c1-d2e3-4567-f890-123456789012', 'Route 131', 'route-131', 57, 'water', true, false, false, NULL),
('f8a9b0c1-d2e3-4567-f890-123456789012', 'Pacifidlog Town', 'pacifidlog-town', 58, 'city', false, false, true, NULL),
('f8a9b0c1-d2e3-4567-f890-123456789012', 'Route 132', 'route-132', 59, 'water', true, false, false, NULL),
('f8a9b0c1-d2e3-4567-f890-123456789012', 'Route 133', 'route-133', 60, 'water', true, false, false, NULL),
('f8a9b0c1-d2e3-4567-f890-123456789012', 'Route 134', 'route-134', 61, 'water', true, false, false, NULL),
('f8a9b0c1-d2e3-4567-f890-123456789012', 'Ever Grande City', 'ever-grande-city', 62, 'city', false, false, false, NULL),
('f8a9b0c1-d2e3-4567-f890-123456789012', 'Victory Road', 'victory-road', 63, 'cave', true, true, true, NULL),
('f8a9b0c1-d2e3-4567-f890-123456789012', 'Pokemon League', 'pokemon-league', 64, 'building', false, true, false, 'Elite Four and Champion Steven.'),
('f8a9b0c1-d2e3-4567-f890-123456789012', 'New Mauville', 'new-mauville', 65, 'building', true, false, true, 'Electric-type Pokemon.'),
('f8a9b0c1-d2e3-4567-f890-123456789012', 'Sky Pillar', 'sky-pillar', 66, 'building', true, false, false, 'Rayquaza encounter.'),
('f8a9b0c1-d2e3-4567-f890-123456789012', 'Sea Mauville', 'sea-mauville', 67, 'building', true, false, true, 'Abandoned research facility. Replaces Abandoned Ship.');

-- ===========================================
-- STEP 3: STARTER POKEMON
-- ===========================================

INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max)
SELECT r.id, 252, 'gift', NULL, 5, 5
FROM public.routes r WHERE r.slug = 'littleroot-town' AND r.game_id = 'f8a9b0c1-d2e3-4567-f890-123456789012';

INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max)
SELECT r.id, 255, 'gift', NULL, 5, 5
FROM public.routes r WHERE r.slug = 'littleroot-town' AND r.game_id = 'f8a9b0c1-d2e3-4567-f890-123456789012';

INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max)
SELECT r.id, 258, 'gift', NULL, 5, 5
FROM public.routes r WHERE r.slug = 'littleroot-town' AND r.game_id = 'f8a9b0c1-d2e3-4567-f890-123456789012';

-- ===========================================
-- STEP 4: ENCOUNTER DATA (472 total)
-- ===========================================

CREATE TEMP TABLE _enc (slug TEXT, dex INT, method TEXT, rate DECIMAL(5,2), lmin INT, lmax INT, cond TEXT, ver_excl TEXT);
INSERT INTO _enc VALUES
('route-101', 252, 'gift', 100.00, 5, 5, NULL, NULL),
('route-101', 255, 'gift', 100.00, 5, 5, NULL, NULL),
('route-101', 258, 'gift', 100.00, 5, 5, NULL, NULL),
('route-101', 261, 'walking', 10.00, 2, 3, NULL, NULL),
('route-101', 263, 'walking', 45.00, 2, 3, NULL, NULL),
('route-101', 265, 'walking', 45.00, 2, 3, NULL, NULL),
('route-103', 72, 'fishing_good', 20.00, 10, 30, NULL, NULL),
('route-103', 72, 'fishing_old', 30.00, 5, 10, NULL, NULL),
('route-103', 72, 'surfing', 60.00, 5, 35, NULL, NULL),
('route-103', 129, 'fishing_good', 60.00, 10, 30, NULL, NULL),
('route-103', 129, 'fishing_old', 70.00, 5, 10, NULL, NULL),
('route-103', 261, 'walking', 30.00, 2, 4, NULL, NULL),
('route-103', 263, 'walking', 60.00, 2, 4, NULL, NULL),
('route-103', 278, 'surfing', 35.00, 10, 30, NULL, NULL),
('route-103', 278, 'walking', 10.00, 2, 4, NULL, NULL),
('route-103', 279, 'surfing', 5.00, 25, 30, NULL, NULL),
('route-103', 319, 'fishing_super', 40.00, 30, 35, NULL, NULL),
('route-103', 320, 'fishing_good', 20.00, 10, 30, NULL, NULL),
('route-103', 320, 'fishing_super', 60.00, 25, 45, NULL, NULL),
('route-102', 118, 'fishing_good', 20.00, 10, 30, NULL, NULL),
('route-102', 118, 'fishing_old', 30.00, 5, 10, NULL, NULL),
('route-102', 129, 'fishing_good', 60.00, 10, 30, NULL, NULL),
('route-102', 129, 'fishing_old', 70.00, 5, 10, NULL, NULL),
('route-102', 183, 'surfing', 99.00, 5, 35, NULL, NULL),
('route-102', 261, 'walking', 15.00, 3, 4, NULL, NULL),
('route-102', 263, 'walking', 30.00, 3, 4, NULL, NULL),
('route-102', 265, 'walking', 30.00, 3, 4, NULL, NULL),
('route-102', 273, 'walking', 20.00, 3, 4, NULL, NULL),
('route-102', 280, 'walking', 4.00, 4, 4, NULL, NULL),
('route-102', 283, 'surfing', 1.00, 20, 30, NULL, NULL),
('route-102', 283, 'walking', 1.00, 3, 3, NULL, NULL),
('route-102', 341, 'fishing_good', 20.00, 10, 30, NULL, NULL),
('route-102', 341, 'fishing_super', 100.00, 20, 45, NULL, NULL),
('route-104-south', 129, 'fishing_good', 100.00, 10, 30, NULL, NULL),
('route-104-south', 129, 'fishing_old', 100.00, 5, 10, NULL, NULL),
('route-104-south', 129, 'fishing_super', 100.00, 20, 45, NULL, NULL),
('route-104-south', 263, 'walking', 50.00, 4, 5, NULL, NULL),
('route-104-south', 265, 'walking', 30.00, 4, 5, NULL, NULL),
('route-104-south', 276, 'walking', 10.00, 4, 5, NULL, NULL),
('route-104-south', 278, 'surfing', 95.00, 10, 30, NULL, NULL),
('route-104-south', 278, 'walking', 10.00, 3, 5, NULL, NULL),
('route-104-south', 279, 'surfing', 5.00, 25, 30, NULL, NULL),
('petalburg-woods', 263, 'walking', 30.00, 5, 6, NULL, NULL),
('petalburg-woods', 265, 'walking', 25.00, 5, 6, NULL, NULL),
('petalburg-woods', 266, 'walking', 10.00, 5, 5, NULL, NULL),
('petalburg-woods', 268, 'walking', 10.00, 5, 5, NULL, NULL),
('petalburg-woods', 276, 'walking', 5.00, 5, 6, NULL, NULL),
('petalburg-woods', 285, 'walking', 15.00, 5, 6, NULL, NULL),
('petalburg-woods', 287, 'walking', 5.00, 5, 6, NULL, NULL),
('route-116', 263, 'walking', 28.00, 6, 8, NULL, NULL),
('route-116', 276, 'walking', 20.00, 6, 8, NULL, NULL),
('route-116', 290, 'walking', 20.00, 6, 7, NULL, NULL),
('route-116', 293, 'walking', 30.00, 6, 7, NULL, NULL),
('route-116', 300, 'walking', 2.00, 7, 8, NULL, NULL),
('rusturf-tunnel', 293, 'walking', 100.00, 5, 8, NULL, NULL),
('route-105', 72, 'fishing_good', 20.00, 10, 30, NULL, NULL),
('route-105', 72, 'fishing_old', 30.00, 5, 10, NULL, NULL),
('route-105', 72, 'surfing', 60.00, 5, 35, NULL, NULL),
('route-105', 129, 'fishing_good', 60.00, 10, 30, NULL, NULL),
('route-105', 129, 'fishing_old', 70.00, 5, 10, NULL, NULL),
('route-105', 278, 'surfing', 35.00, 10, 30, NULL, NULL),
('route-105', 279, 'surfing', 5.00, 25, 30, NULL, NULL),
('route-105', 320, 'fishing_good', 20.00, 10, 30, NULL, NULL),
('route-105', 320, 'fishing_super', 100.00, 20, 45, NULL, NULL),
('granite-cave', 41, 'walking', 90.00, 7, 11, NULL, NULL),
('granite-cave', 63, 'walking', 30.00, 8, 10, NULL, NULL),
('granite-cave', 74, 'walking', 10.00, 6, 9, NULL, NULL),
('granite-cave', 296, 'walking', 60.00, 6, 11, NULL, NULL),
('granite-cave', 303, 'walking', 30.00, 9, 12, NULL, NULL),
('granite-cave', 304, 'walking', 80.00, 9, 12, NULL, NULL),
('granite-cave', 74, 'rock_smash', 70.00, 5, 20, NULL, NULL),
('granite-cave', 299, 'rock_smash', 30.00, 10, 20, NULL, NULL),
('route-106', 72, 'fishing_good', 20.00, 10, 30, NULL, NULL),
('route-106', 72, 'fishing_old', 30.00, 5, 10, NULL, NULL),
('route-106', 72, 'surfing', 60.00, 5, 35, NULL, NULL),
('route-106', 129, 'fishing_good', 60.00, 10, 30, NULL, NULL),
('route-106', 129, 'fishing_old', 70.00, 5, 10, NULL, NULL),
('route-106', 278, 'surfing', 35.00, 10, 30, NULL, NULL),
('route-106', 279, 'surfing', 5.00, 25, 30, NULL, NULL),
('route-106', 320, 'fishing_good', 20.00, 10, 30, NULL, NULL),
('route-106', 320, 'fishing_super', 100.00, 20, 45, NULL, NULL),
('route-107', 72, 'fishing_good', 20.00, 10, 30, NULL, NULL),
('route-107', 72, 'fishing_old', 30.00, 5, 10, NULL, NULL),
('route-107', 72, 'surfing', 60.00, 5, 35, NULL, NULL),
('route-107', 129, 'fishing_good', 60.00, 10, 30, NULL, NULL),
('route-107', 129, 'fishing_old', 70.00, 5, 10, NULL, NULL),
('route-107', 278, 'surfing', 35.00, 10, 30, NULL, NULL),
('route-107', 279, 'surfing', 5.00, 25, 30, NULL, NULL),
('route-107', 320, 'fishing_good', 20.00, 10, 30, NULL, NULL),
('route-107', 320, 'fishing_super', 100.00, 20, 45, NULL, NULL),
('route-108', 72, 'fishing_good', 20.00, 10, 30, NULL, NULL),
('route-108', 72, 'fishing_old', 30.00, 5, 10, NULL, NULL),
('route-108', 72, 'surfing', 60.00, 5, 35, NULL, NULL),
('route-108', 129, 'fishing_good', 60.00, 10, 30, NULL, NULL),
('route-108', 129, 'fishing_old', 70.00, 5, 10, NULL, NULL),
('route-108', 278, 'surfing', 35.00, 10, 30, NULL, NULL),
('route-108', 279, 'surfing', 5.00, 25, 30, NULL, NULL),
('route-108', 320, 'fishing_good', 20.00, 10, 30, NULL, NULL),
('route-108', 320, 'fishing_super', 100.00, 20, 45, NULL, NULL),
('route-109', 72, 'fishing_good', 20.00, 10, 30, NULL, NULL),
('route-109', 72, 'fishing_old', 30.00, 5, 10, NULL, NULL),
('route-109', 72, 'surfing', 60.00, 5, 35, NULL, NULL),
('route-109', 129, 'fishing_good', 60.00, 10, 30, NULL, NULL),
('route-109', 129, 'fishing_old', 70.00, 5, 10, NULL, NULL),
('route-109', 278, 'surfing', 35.00, 10, 30, NULL, NULL),
('route-109', 279, 'surfing', 5.00, 25, 30, NULL, NULL),
('route-109', 320, 'fishing_good', 20.00, 10, 30, NULL, NULL),
('route-109', 320, 'fishing_super', 100.00, 20, 45, NULL, NULL),
('route-110', 43, 'walking', 10.00, 13, 13, NULL, NULL),
('route-110', 72, 'fishing_good', 20.00, 10, 30, NULL, NULL),
('route-110', 72, 'fishing_old', 30.00, 5, 10, NULL, NULL),
('route-110', 72, 'surfing', 60.00, 5, 35, NULL, NULL),
('route-110', 129, 'fishing_good', 60.00, 10, 30, NULL, NULL),
('route-110', 129, 'fishing_old', 70.00, 5, 10, NULL, NULL),
('route-110', 263, 'walking', 20.00, 12, 12, NULL, NULL),
('route-110', 278, 'surfing', 35.00, 10, 30, NULL, NULL),
('route-110', 278, 'walking', 8.00, 12, 12, NULL, NULL),
('route-110', 279, 'surfing', 5.00, 25, 30, NULL, NULL),
('route-110', 309, 'walking', 30.00, 12, 13, NULL, NULL),
('route-110', 311, 'walking', 2.00, 12, 13, NULL, NULL),
('route-110', 312, 'walking', 15.00, 13, 13, NULL, NULL),
('route-110', 316, 'walking', 15.00, 12, 13, NULL, NULL),
('route-110', 320, 'fishing_good', 20.00, 10, 30, NULL, NULL),
('route-110', 320, 'fishing_super', 100.00, 20, 45, NULL, NULL),
('route-117', 43, 'walking', 10.00, 13, 13, NULL, NULL),
('route-117', 118, 'fishing_good', 20.00, 10, 30, NULL, NULL),
('route-117', 118, 'fishing_old', 30.00, 5, 10, NULL, NULL),
('route-117', 129, 'fishing_good', 60.00, 10, 30, NULL, NULL),
('route-117', 129, 'fishing_old', 70.00, 5, 10, NULL, NULL),
('route-117', 183, 'surfing', 99.00, 5, 35, NULL, NULL),
('route-117', 183, 'walking', 10.00, 13, 13, NULL, NULL),
('route-117', 263, 'walking', 30.00, 13, 14, NULL, NULL),
('route-117', 283, 'surfing', 1.00, 20, 30, NULL, NULL),
('route-117', 283, 'walking', 1.00, 13, 13, NULL, NULL),
('route-117', 313, 'walking', 1.00, 13, 13, NULL, NULL),
('route-117', 314, 'walking', 18.00, 13, 14, NULL, NULL),
('route-117', 315, 'walking', 30.00, 13, 14, NULL, NULL),
('route-117', 341, 'fishing_good', 20.00, 10, 30, NULL, NULL),
('route-117', 341, 'fishing_super', 100.00, 20, 45, NULL, NULL),
('route-111', 27, 'walking', 35.00, 19, 21, NULL, NULL),
('route-111', 74, 'rock_smash', 100.00, 5, 20, NULL, NULL),
('route-111', 118, 'fishing_good', 20.00, 10, 30, NULL, NULL),
('route-111', 118, 'fishing_old', 30.00, 5, 10, NULL, NULL),
('route-111', 129, 'fishing_good', 60.00, 10, 30, NULL, NULL),
('route-111', 129, 'fishing_old', 70.00, 5, 10, NULL, NULL),
('route-111', 183, 'surfing', 99.00, 5, 35, NULL, NULL),
('route-111', 283, 'surfing', 1.00, 20, 30, NULL, NULL),
('route-111', 328, 'walking', 35.00, 19, 21, NULL, NULL),
('route-111', 331, 'walking', 20.00, 19, 21, NULL, NULL),
('route-111', 339, 'fishing_good', 20.00, 10, 30, NULL, NULL),
('route-111', 339, 'fishing_super', 100.00, 20, 45, NULL, NULL),
('route-111', 343, 'walking', 10.00, 20, 22, NULL, NULL),
('route-112', 66, 'walking', 25.00, 14, 16, NULL, NULL),
('route-112', 322, 'walking', 75.00, 14, 16, NULL, NULL),
('fiery-path', 66, 'walking', 15.00, 15, 16, NULL, NULL),
('fiery-path', 88, 'walking', 2.00, 14, 14, NULL, NULL),
('fiery-path', 109, 'walking', 25.00, 15, 16, NULL, NULL),
('fiery-path', 218, 'walking', 10.00, 15, 15, NULL, NULL),
('fiery-path', 322, 'walking', 30.00, 15, 16, NULL, NULL),
('fiery-path', 324, 'walking', 18.00, 14, 16, NULL, NULL),
('route-113', 27, 'walking', 25.00, 14, 16, NULL, NULL),
('route-113', 227, 'walking', 5.00, 16, 16, NULL, NULL),
('route-113', 327, 'walking', 70.00, 14, 16, NULL, NULL),
('route-114', 74, 'rock_smash', 100.00, 5, 20, NULL, NULL),
('route-114', 118, 'fishing_good', 20.00, 10, 30, NULL, NULL),
('route-114', 118, 'fishing_old', 30.00, 5, 10, NULL, NULL),
('route-114', 129, 'fishing_good', 60.00, 10, 30, NULL, NULL),
('route-114', 129, 'fishing_old', 70.00, 5, 10, NULL, NULL),
('route-114', 183, 'surfing', 99.00, 5, 35, NULL, NULL),
('route-114', 273, 'walking', 30.00, 15, 16, NULL, NULL),
('route-114', 274, 'walking', 10.00, 16, 18, NULL, NULL),
('route-114', 283, 'surfing', 1.00, 20, 30, NULL, NULL),
('route-114', 283, 'walking', 1.00, 15, 15, NULL, NULL),
('route-114', 333, 'walking', 40.00, 15, 17, NULL, NULL),
('route-114', 335, 'walking', 19.00, 15, 17, NULL, NULL),
('route-114', 339, 'fishing_good', 20.00, 10, 30, NULL, NULL),
('route-114', 339, 'fishing_super', 100.00, 20, 45, NULL, NULL),
('meteor-falls', 41, 'surfing', 90.00, 5, 35, NULL, NULL),
('meteor-falls', 41, 'walking', 80.00, 14, 20, NULL, NULL),
('meteor-falls', 118, 'fishing_good', 60.00, 10, 30, NULL, NULL),
('meteor-falls', 118, 'fishing_old', 90.00, 5, 10, NULL, NULL),
('meteor-falls', 129, 'fishing_good', 180.00, 10, 30, NULL, NULL),
('meteor-falls', 129, 'fishing_old', 210.00, 5, 10, NULL, NULL),
('meteor-falls', 338, 'surfing', 30.00, 5, 35, NULL, NULL),
('meteor-falls', 338, 'walking', 90.00, 14, 39, NULL, NULL),
('meteor-falls', 339, 'fishing_good', 60.00, 10, 30, NULL, NULL),
('meteor-falls', 339, 'fishing_super', 260.00, 20, 45, NULL, NULL),
('meteor-falls', 42, 'surfing', 180.00, 30, 35, NULL, NULL),
('meteor-falls', 42, 'walking', 130.00, 33, 40, NULL, NULL),
('meteor-falls', 340, 'fishing_super', 40.00, 30, 45, NULL, NULL),
('route-115', 39, 'walking', 10.00, 24, 25, NULL, NULL),
('route-115', 72, 'fishing_good', 20.00, 10, 30, NULL, NULL),
('route-115', 72, 'fishing_old', 30.00, 5, 10, NULL, NULL),
('route-115', 72, 'surfing', 60.00, 5, 35, NULL, NULL),
('route-115', 129, 'fishing_good', 60.00, 10, 30, NULL, NULL),
('route-115', 129, 'fishing_old', 70.00, 5, 10, NULL, NULL),
('route-115', 276, 'walking', 40.00, 23, 25, NULL, NULL),
('route-115', 277, 'walking', 10.00, 25, 25, NULL, NULL),
('route-115', 278, 'surfing', 35.00, 10, 30, NULL, NULL),
('route-115', 278, 'walking', 10.00, 24, 26, NULL, NULL),
('route-115', 279, 'surfing', 5.00, 25, 30, NULL, NULL),
('route-115', 320, 'fishing_good', 20.00, 10, 30, NULL, NULL),
('route-115', 320, 'fishing_super', 100.00, 20, 45, NULL, NULL),
('route-115', 333, 'walking', 30.00, 23, 25, NULL, NULL),
('jagged-pass', 66, 'walking', 25.00, 18, 20, NULL, NULL),
('jagged-pass', 322, 'walking', 55.00, 18, 20, NULL, NULL),
('jagged-pass', 325, 'walking', 20.00, 18, 20, NULL, NULL),
('route-118', 72, 'fishing_good', 20.00, 10, 30, NULL, NULL),
('route-118', 72, 'fishing_old', 30.00, 5, 10, NULL, NULL),
('route-118', 72, 'surfing', 60.00, 5, 35, NULL, NULL),
('route-118', 129, 'fishing_good', 60.00, 10, 30, NULL, NULL),
('route-118', 129, 'fishing_old', 70.00, 5, 10, NULL, NULL),
('route-118', 263, 'walking', 30.00, 24, 26, NULL, NULL),
('route-118', 264, 'walking', 10.00, 26, 26, NULL, NULL),
('route-118', 278, 'surfing', 35.00, 10, 30, NULL, NULL),
('route-118', 278, 'walking', 19.00, 25, 27, NULL, NULL),
('route-118', 279, 'surfing', 5.00, 25, 30, NULL, NULL),
('route-118', 309, 'walking', 30.00, 24, 26, NULL, NULL),
('route-118', 310, 'walking', 10.00, 26, 26, NULL, NULL),
('route-118', 318, 'fishing_good', 20.00, 10, 30, NULL, NULL),
('route-118', 318, 'fishing_super', 60.00, 20, 45, NULL, NULL),
('route-118', 319, 'fishing_super', 40.00, 30, 35, NULL, NULL),
('route-118', 352, 'walking', 1.00, 25, 25, NULL, NULL),
('route-119', 43, 'walking', 30.00, 24, 27, NULL, NULL),
('route-119', 72, 'fishing_good', 20.00, 10, 30, NULL, NULL),
('route-119', 72, 'fishing_old', 30.00, 5, 10, NULL, NULL),
('route-119', 72, 'surfing', 60.00, 5, 35, NULL, NULL),
('route-119', 129, 'fishing_good', 60.00, 10, 30, NULL, NULL),
('route-119', 129, 'fishing_old', 70.00, 5, 10, NULL, NULL),
('route-119', 263, 'walking', 30.00, 25, 27, NULL, NULL),
('route-119', 264, 'walking', 30.00, 25, 27, NULL, NULL),
('route-119', 278, 'surfing', 35.00, 10, 30, NULL, NULL),
('route-119', 279, 'surfing', 5.00, 25, 30, NULL, NULL),
('route-119', 318, 'fishing_good', 20.00, 10, 30, NULL, NULL),
('route-119', 318, 'fishing_super', 100.00, 20, 45, NULL, NULL),
('route-119', 352, 'walking', 1.00, 25, 25, NULL, NULL),
('route-119', 357, 'walking', 9.00, 25, 27, NULL, NULL),
('route-120', 43, 'walking', 25.00, 25, 27, NULL, NULL),
('route-120', 118, 'fishing_good', 20.00, 10, 30, NULL, NULL),
('route-120', 118, 'fishing_old', 30.00, 5, 10, NULL, NULL),
('route-120', 129, 'fishing_good', 60.00, 10, 30, NULL, NULL),
('route-120', 129, 'fishing_old', 70.00, 5, 10, NULL, NULL),
('route-120', 183, 'surfing', 99.00, 5, 35, NULL, NULL),
('route-120', 183, 'walking', 15.00, 25, 27, NULL, NULL),
('route-120', 263, 'walking', 20.00, 25, 25, NULL, NULL),
('route-120', 264, 'walking', 30.00, 25, 27, NULL, NULL),
('route-120', 283, 'surfing', 1.00, 20, 30, NULL, NULL),
('route-120', 283, 'walking', 1.00, 25, 25, NULL, NULL),
('route-120', 339, 'fishing_good', 20.00, 10, 30, NULL, NULL),
('route-120', 339, 'fishing_super', 100.00, 20, 45, NULL, NULL),
('route-120', 352, 'walking', 1.00, 25, 25, NULL, NULL),
('route-120', 359, 'walking', 8.00, 25, 27, NULL, NULL),
('route-121', 43, 'walking', 15.00, 26, 28, NULL, NULL),
('route-121', 44, 'walking', 5.00, 28, 28, NULL, NULL),
('route-121', 72, 'fishing_good', 20.00, 10, 30, NULL, NULL),
('route-121', 72, 'fishing_old', 30.00, 5, 10, NULL, NULL),
('route-121', 72, 'surfing', 60.00, 5, 35, NULL, NULL),
('route-121', 129, 'fishing_good', 60.00, 10, 30, NULL, NULL),
('route-121', 129, 'fishing_old', 70.00, 5, 10, NULL, NULL),
('route-121', 263, 'walking', 20.00, 26, 26, NULL, NULL),
('route-121', 264, 'walking', 20.00, 26, 28, NULL, NULL),
('route-121', 278, 'surfing', 35.00, 10, 30, NULL, NULL),
('route-121', 278, 'walking', 9.00, 26, 28, NULL, NULL),
('route-121', 279, 'surfing', 5.00, 25, 30, NULL, NULL),
('route-121', 320, 'fishing_good', 20.00, 10, 30, NULL, NULL),
('route-121', 320, 'fishing_super', 100.00, 20, 45, NULL, NULL),
('route-121', 352, 'walking', 1.00, 25, 25, NULL, NULL),
('route-121', 355, 'walking', 30.00, 26, 28, NULL, NULL),
('mt-pyre', 355, 'walking', 695.00, 22, 30, NULL, NULL),
('mt-pyre', 353, 'walking', 43.00, 25, 30, NULL, NULL),
('mt-pyre', 37, 'walking', 20.00, 25, 29, NULL, NULL),
('mt-pyre', 278, 'walking', 10.00, 26, 28, NULL, NULL),
('mt-pyre', 307, 'walking', 30.00, 27, 29, NULL, NULL),
('mt-pyre', 358, 'walking', 2.00, 28, 28, NULL, NULL),
('route-122', 72, 'fishing_good', 20.00, 10, 30, NULL, NULL),
('route-122', 72, 'fishing_old', 30.00, 5, 10, NULL, NULL),
('route-122', 72, 'surfing', 60.00, 5, 35, NULL, NULL),
('route-122', 129, 'fishing_good', 60.00, 10, 30, NULL, NULL),
('route-122', 129, 'fishing_old', 70.00, 5, 10, NULL, NULL),
('route-122', 278, 'surfing', 35.00, 10, 30, NULL, NULL),
('route-122', 279, 'surfing', 5.00, 25, 30, NULL, NULL),
('route-122', 319, 'fishing_super', 40.00, 30, 35, NULL, NULL),
('route-122', 320, 'fishing_good', 20.00, 10, 30, NULL, NULL),
('route-122', 320, 'fishing_super', 60.00, 25, 45, NULL, NULL),
('route-123', 43, 'walking', 15.00, 26, 28, NULL, NULL),
('route-123', 44, 'walking', 5.00, 28, 28, NULL, NULL),
('route-123', 72, 'fishing_good', 20.00, 10, 30, NULL, NULL),
('route-123', 72, 'fishing_old', 30.00, 5, 10, NULL, NULL),
('route-123', 72, 'surfing', 60.00, 5, 35, NULL, NULL),
('route-123', 129, 'fishing_good', 60.00, 10, 30, NULL, NULL),
('route-123', 129, 'fishing_old', 70.00, 5, 10, NULL, NULL),
('route-123', 263, 'walking', 20.00, 26, 26, NULL, NULL),
('route-123', 264, 'walking', 20.00, 26, 28, NULL, NULL),
('route-123', 278, 'surfing', 35.00, 10, 30, NULL, NULL),
('route-123', 278, 'walking', 9.00, 26, 28, NULL, NULL),
('route-123', 279, 'surfing', 5.00, 25, 30, NULL, NULL),
('route-123', 320, 'fishing_good', 20.00, 10, 30, NULL, NULL),
('route-123', 320, 'fishing_super', 100.00, 20, 45, NULL, NULL),
('route-123', 352, 'walking', 1.00, 25, 25, NULL, NULL),
('route-123', 355, 'walking', 30.00, 26, 28, NULL, NULL),
('route-124', 72, 'fishing_good', 20.00, 10, 30, NULL, NULL),
('route-124', 72, 'fishing_old', 30.00, 5, 10, NULL, NULL),
('route-124', 72, 'surfing', 60.00, 5, 35, NULL, NULL),
('route-124', 129, 'fishing_good', 60.00, 10, 30, NULL, NULL),
('route-124', 129, 'fishing_old', 70.00, 5, 10, NULL, NULL),
('route-124', 278, 'surfing', 35.00, 10, 30, NULL, NULL),
('route-124', 279, 'surfing', 5.00, 25, 30, NULL, NULL),
('route-124', 319, 'fishing_super', 40.00, 30, 35, NULL, NULL),
('route-124', 320, 'fishing_good', 20.00, 10, 30, NULL, NULL),
('route-124', 320, 'fishing_super', 60.00, 25, 45, NULL, NULL),
('route-125', 72, 'fishing_good', 20.00, 10, 30, NULL, NULL),
('route-125', 72, 'fishing_old', 30.00, 5, 10, NULL, NULL),
('route-125', 72, 'surfing', 60.00, 5, 35, NULL, NULL),
('route-125', 129, 'fishing_good', 60.00, 10, 30, NULL, NULL),
('route-125', 129, 'fishing_old', 70.00, 5, 10, NULL, NULL),
('route-125', 278, 'surfing', 35.00, 10, 30, NULL, NULL),
('route-125', 279, 'surfing', 5.00, 25, 30, NULL, NULL),
('route-125', 319, 'fishing_super', 40.00, 30, 35, NULL, NULL),
('route-125', 320, 'fishing_good', 20.00, 10, 30, NULL, NULL),
('route-125', 320, 'fishing_super', 60.00, 25, 45, NULL, NULL),
('shoal-cave', 41, 'surfing', 30.00, 5, 35, NULL, NULL),
('shoal-cave', 41, 'walking', 85.00, 26, 32, NULL, NULL),
('shoal-cave', 42, 'walking', 10.00, 30, 32, NULL, NULL),
('shoal-cave', 72, 'fishing_good', 20.00, 10, 30, NULL, NULL),
('shoal-cave', 72, 'fishing_old', 30.00, 5, 10, NULL, NULL),
('shoal-cave', 72, 'surfing', 60.00, 5, 35, NULL, NULL),
('shoal-cave', 129, 'fishing_good', 60.00, 10, 30, NULL, NULL),
('shoal-cave', 129, 'fishing_old', 70.00, 5, 10, NULL, NULL),
('shoal-cave', 320, 'fishing_good', 20.00, 10, 30, NULL, NULL),
('shoal-cave', 320, 'fishing_super', 100.00, 20, 45, NULL, NULL),
('shoal-cave', 363, 'surfing', 10.00, 25, 35, NULL, NULL),
('shoal-cave', 363, 'walking', 95.00, 26, 32, NULL, NULL),
('shoal-cave', 361, 'walking', 10.00, 26, 30, NULL, NULL),
('route-126', 72, 'fishing_good', 20.00, 10, 30, NULL, NULL),
('route-126', 72, 'fishing_old', 30.00, 5, 10, NULL, NULL),
('route-126', 72, 'surfing', 60.00, 5, 35, NULL, NULL),
('route-126', 129, 'fishing_good', 60.00, 10, 30, NULL, NULL),
('route-126', 129, 'fishing_old', 70.00, 5, 10, NULL, NULL),
('route-126', 278, 'surfing', 35.00, 10, 30, NULL, NULL),
('route-126', 279, 'surfing', 5.00, 25, 30, NULL, NULL),
('route-126', 319, 'fishing_super', 40.00, 30, 35, NULL, NULL),
('route-126', 320, 'fishing_good', 20.00, 10, 30, NULL, NULL),
('route-126', 320, 'fishing_super', 60.00, 25, 45, NULL, NULL),
('route-127', 72, 'fishing_good', 20.00, 10, 30, NULL, NULL),
('route-127', 72, 'fishing_old', 30.00, 5, 10, NULL, NULL),
('route-127', 72, 'surfing', 60.00, 5, 35, NULL, NULL),
('route-127', 129, 'fishing_good', 60.00, 10, 30, NULL, NULL),
('route-127', 129, 'fishing_old', 70.00, 5, 10, NULL, NULL),
('route-127', 278, 'surfing', 35.00, 10, 30, NULL, NULL),
('route-127', 279, 'surfing', 5.00, 25, 30, NULL, NULL),
('route-127', 319, 'fishing_super', 40.00, 30, 35, NULL, NULL),
('route-127', 320, 'fishing_good', 20.00, 10, 30, NULL, NULL),
('route-127', 320, 'fishing_super', 60.00, 25, 45, NULL, NULL),
('route-128', 72, 'fishing_old', 30.00, 5, 10, NULL, NULL),
('route-128', 72, 'surfing', 60.00, 5, 35, NULL, NULL),
('route-128', 129, 'fishing_good', 60.00, 10, 30, NULL, NULL),
('route-128', 129, 'fishing_old', 70.00, 5, 10, NULL, NULL),
('route-128', 222, 'fishing_super', 15.00, 30, 35, NULL, NULL),
('route-128', 278, 'surfing', 35.00, 10, 30, NULL, NULL),
('route-128', 279, 'surfing', 5.00, 25, 30, NULL, NULL),
('route-128', 320, 'fishing_good', 20.00, 10, 30, NULL, NULL),
('route-128', 320, 'fishing_super', 45.00, 30, 45, NULL, NULL),
('route-128', 370, 'fishing_good', 20.00, 10, 30, NULL, NULL),
('route-128', 370, 'fishing_super', 40.00, 30, 35, NULL, NULL),
('seafloor-cavern', 41, 'surfing', 35.00, 5, 35, NULL, NULL),
('seafloor-cavern', 41, 'walking', 90.00, 28, 35, NULL, NULL),
('seafloor-cavern', 42, 'surfing', 5.00, 30, 35, NULL, NULL),
('seafloor-cavern', 42, 'walking', 10.00, 33, 36, NULL, NULL),
('seafloor-cavern', 72, 'fishing_good', 20.00, 10, 30, NULL, NULL),
('seafloor-cavern', 72, 'fishing_old', 30.00, 5, 10, NULL, NULL),
('seafloor-cavern', 72, 'surfing', 60.00, 5, 35, NULL, NULL),
('seafloor-cavern', 129, 'fishing_good', 60.00, 10, 30, NULL, NULL),
('seafloor-cavern', 129, 'fishing_old', 70.00, 5, 10, NULL, NULL),
('seafloor-cavern', 320, 'fishing_good', 20.00, 10, 30, NULL, NULL),
('seafloor-cavern', 320, 'fishing_super', 100.00, 20, 45, NULL, NULL),
('route-129', 72, 'fishing_good', 20.00, 10, 30, NULL, NULL),
('route-129', 72, 'fishing_old', 30.00, 5, 10, NULL, NULL),
('route-129', 72, 'surfing', 60.00, 5, 35, NULL, NULL),
('route-129', 129, 'fishing_good', 60.00, 10, 30, NULL, NULL),
('route-129', 129, 'fishing_old', 70.00, 5, 10, NULL, NULL),
('route-129', 278, 'surfing', 35.00, 10, 30, NULL, NULL),
('route-129', 279, 'surfing', 4.00, 25, 30, NULL, NULL),
('route-129', 319, 'fishing_super', 40.00, 30, 35, NULL, NULL),
('route-129', 320, 'fishing_good', 20.00, 10, 30, NULL, NULL),
('route-129', 320, 'fishing_super', 60.00, 25, 45, NULL, NULL),
('route-129', 321, 'surfing', 1.00, 35, 40, NULL, NULL),
('route-130', 72, 'fishing_good', 20.00, 10, 30, NULL, NULL),
('route-130', 72, 'fishing_old', 30.00, 5, 10, NULL, NULL),
('route-130', 72, 'surfing', 60.00, 5, 35, NULL, NULL),
('route-130', 129, 'fishing_good', 60.00, 10, 30, NULL, NULL),
('route-130', 129, 'fishing_old', 70.00, 5, 10, NULL, NULL),
('route-130', 278, 'surfing', 35.00, 10, 30, NULL, NULL),
('route-130', 279, 'surfing', 5.00, 25, 30, NULL, NULL),
('route-130', 319, 'fishing_super', 40.00, 30, 35, NULL, NULL),
('route-130', 320, 'fishing_good', 20.00, 10, 30, NULL, NULL),
('route-130', 320, 'fishing_super', 60.00, 25, 45, NULL, NULL),
('route-130', 360, 'walking', 100.00, 5, 50, NULL, NULL),
('route-131', 72, 'fishing_good', 20.00, 10, 30, NULL, NULL),
('route-131', 72, 'fishing_old', 30.00, 5, 10, NULL, NULL),
('route-131', 72, 'surfing', 60.00, 5, 35, NULL, NULL),
('route-131', 129, 'fishing_good', 60.00, 10, 30, NULL, NULL),
('route-131', 129, 'fishing_old', 70.00, 5, 10, NULL, NULL),
('route-131', 278, 'surfing', 35.00, 10, 30, NULL, NULL),
('route-131', 279, 'surfing', 5.00, 25, 30, NULL, NULL),
('route-131', 319, 'fishing_super', 40.00, 30, 35, NULL, NULL),
('route-131', 320, 'fishing_good', 20.00, 10, 30, NULL, NULL),
('route-131', 320, 'fishing_super', 60.00, 25, 45, NULL, NULL),
('route-132', 72, 'fishing_good', 20.00, 10, 30, NULL, NULL),
('route-132', 72, 'fishing_old', 30.00, 5, 10, NULL, NULL),
('route-132', 72, 'surfing', 60.00, 5, 35, NULL, NULL),
('route-132', 116, 'fishing_super', 15.00, 25, 30, NULL, NULL),
('route-132', 129, 'fishing_good', 60.00, 10, 30, NULL, NULL),
('route-132', 129, 'fishing_old', 70.00, 5, 10, NULL, NULL),
('route-132', 278, 'surfing', 35.00, 10, 30, NULL, NULL),
('route-132', 279, 'surfing', 5.00, 25, 30, NULL, NULL),
('route-132', 319, 'fishing_super', 40.00, 30, 35, NULL, NULL),
('route-132', 320, 'fishing_good', 20.00, 10, 30, NULL, NULL),
('route-132', 320, 'fishing_super', 45.00, 30, 45, NULL, NULL),
('route-133', 72, 'fishing_good', 20.00, 10, 30, NULL, NULL),
('route-133', 72, 'fishing_old', 30.00, 5, 10, NULL, NULL),
('route-133', 72, 'surfing', 60.00, 5, 35, NULL, NULL),
('route-133', 116, 'fishing_super', 15.00, 25, 30, NULL, NULL),
('route-133', 129, 'fishing_good', 60.00, 10, 30, NULL, NULL),
('route-133', 129, 'fishing_old', 70.00, 5, 10, NULL, NULL),
('route-133', 278, 'surfing', 35.00, 10, 30, NULL, NULL),
('route-133', 279, 'surfing', 5.00, 25, 30, NULL, NULL),
('route-133', 319, 'fishing_super', 40.00, 30, 35, NULL, NULL),
('route-133', 320, 'fishing_good', 20.00, 10, 30, NULL, NULL),
('route-133', 320, 'fishing_super', 45.00, 30, 45, NULL, NULL),
('route-134', 72, 'fishing_good', 20.00, 10, 30, NULL, NULL),
('route-134', 72, 'fishing_old', 30.00, 5, 10, NULL, NULL),
('route-134', 72, 'surfing', 60.00, 5, 35, NULL, NULL),
('route-134', 116, 'fishing_super', 15.00, 25, 30, NULL, NULL),
('route-134', 129, 'fishing_good', 60.00, 10, 30, NULL, NULL),
('route-134', 129, 'fishing_old', 70.00, 5, 10, NULL, NULL),
('route-134', 278, 'surfing', 35.00, 10, 30, NULL, NULL),
('route-134', 279, 'surfing', 5.00, 25, 30, NULL, NULL),
('route-134', 319, 'fishing_super', 40.00, 30, 35, NULL, NULL),
('route-134', 320, 'fishing_good', 20.00, 10, 30, NULL, NULL),
('route-134', 320, 'fishing_super', 45.00, 30, 45, NULL, NULL),
('victory-road', 41, 'walking', 10.00, 36, 36, NULL, NULL),
('victory-road', 42, 'walking', 95.00, 38, 44, NULL, NULL),
('victory-road', 293, 'walking', 5.00, 36, 36, NULL, NULL),
('victory-road', 294, 'walking', 10.00, 40, 40, NULL, NULL),
('victory-road', 296, 'walking', 10.00, 36, 36, NULL, NULL),
('victory-road', 297, 'walking', 60.00, 38, 42, NULL, NULL),
('victory-road', 304, 'walking', 5.00, 36, 36, NULL, NULL),
('victory-road', 305, 'walking', 40.00, 40, 44, NULL, NULL),
('victory-road', 74, 'rock_smash', 30.00, 30, 40, NULL, NULL),
('victory-road', 75, 'rock_smash', 70.00, 30, 40, NULL, NULL),
('victory-road', 307, 'walking', 5.00, 38, 38, NULL, NULL),
('victory-road', 308, 'walking', 25.00, 40, 44, NULL, NULL),
('victory-road', 42, 'surfing', 100.00, 25, 40, NULL, NULL),
('victory-road', 118, 'fishing_good', 20.00, 10, 30, NULL, NULL),
('victory-road', 118, 'fishing_old', 30.00, 5, 10, NULL, NULL),
('victory-road', 129, 'fishing_good', 60.00, 10, 30, NULL, NULL),
('victory-road', 129, 'fishing_old', 70.00, 5, 10, NULL, NULL),
('victory-road', 303, 'walking', 35.00, 40, 44, NULL, NULL),
('victory-road', 339, 'fishing_good', 20.00, 10, 30, NULL, NULL),
('victory-road', 339, 'fishing_super', 80.00, 25, 35, NULL, NULL),
('victory-road', 340, 'fishing_super', 20.00, 30, 45, NULL, NULL),
('new-mauville', 81, 'walking', 99.00, 22, 26, NULL, NULL),
('new-mauville', 100, 'walking', 99.00, 22, 26, NULL, NULL),
('new-mauville', 82, 'walking', 1.00, 26, 26, NULL, NULL),
('new-mauville', 100, 'static', 600.00, 25, 25, NULL, NULL),
('new-mauville', 101, 'walking', 1.00, 26, 26, NULL, NULL),
('new-mauville', 101, 'static', 200.00, 30, 30, NULL, NULL),
('sky-pillar', 42, 'walking', 90.00, 48, 56, NULL, NULL),
('sky-pillar', 303, 'walking', 90.00, 48, 56, NULL, NULL),
('sky-pillar', 344, 'walking', 69.00, 47, 56, NULL, NULL),
('sky-pillar', 356, 'walking', 45.00, 48, 56, NULL, NULL),
('sky-pillar', 334, 'walking', 6.00, 54, 60, NULL, NULL);

INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions, version_exclusive)
SELECT r.id, e.dex, e.method, e.rate, e.lmin, e.lmax, NULLIF(e.cond, ''), NULLIF(e.ver_excl, '')
FROM _enc e JOIN public.routes r ON r.slug = e.slug AND r.game_id = 'f8a9b0c1-d2e3-4567-f890-123456789012';

DROP TABLE _enc;

-- ===========================================
-- STEP 5: BOSS TRAINERS
-- ===========================================

-- Roxanne (Gym Leader)
DO $$
DECLARE
  v_trainer_id UUID;
  v_route_id UUID;
BEGIN
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'rustboro-city' AND game_id = 'f8a9b0c1-d2e3-4567-f890-123456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
  VALUES (v_route_id, 'Roxanne', 'Gym Leader', true, 'gym_leader', 14, 1, 'Rock-type specialist. Stone Badge.')
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 74, 12, 1, '["Tackle", "Defense Curl", "Rock Tomb"]'::jsonb, 'Sturdy', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 299, 14, 2, '["Tackle", "Harden", "Rock Tomb"]'::jsonb, 'Magnet Pull', NULL, NULL);
END $$;

-- Brawly (Gym Leader)
DO $$
DECLARE
  v_trainer_id UUID;
  v_route_id UUID;
BEGIN
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'dewford-town' AND game_id = 'f8a9b0c1-d2e3-4567-f890-123456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
  VALUES (v_route_id, 'Brawly', 'Gym Leader', true, 'gym_leader', 16, 2, 'Fighting-type specialist. Knuckle Badge.')
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 66, 14, 1, '["Leer", "Karate Chop", "Seismic Toss", "Bulk Up"]'::jsonb, 'Guts', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 296, 16, 2, '["Arm Thrust", "Knock Off", "Sand Attack", "Bulk Up"]'::jsonb, 'Guts', NULL, NULL);
END $$;

-- Wattson (Gym Leader)
DO $$
DECLARE
  v_trainer_id UUID;
  v_route_id UUID;
BEGIN
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'mauville-city' AND game_id = 'f8a9b0c1-d2e3-4567-f890-123456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
  VALUES (v_route_id, 'Wattson', 'Gym Leader', true, 'gym_leader', 21, 3, 'Electric-type specialist. Dynamo Badge.')
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 81, 19, 1, '["Thunder Wave", "Tackle", "Volt Switch"]'::jsonb, 'Sturdy', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 100, 19, 2, '["Rollout", "Charge", "Volt Switch"]'::jsonb, 'Soundproof', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 82, 21, 3, '["Supersonic", "Magnet Bomb", "Volt Switch"]'::jsonb, 'Magnet Pull', NULL, NULL);
END $$;

-- Flannery (Gym Leader)
DO $$
DECLARE
  v_trainer_id UUID;
  v_route_id UUID;
BEGIN
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'lavaridge-town' AND game_id = 'f8a9b0c1-d2e3-4567-f890-123456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
  VALUES (v_route_id, 'Flannery', 'Gym Leader', true, 'gym_leader', 28, 4, 'Fire-type specialist. Heat Badge.')
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 218, 26, 1, '["Overheat", "Rock Throw", "Light Screen", "Sunny Day"]'::jsonb, 'Flame Body', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 322, 26, 2, '["Earth Power", "Lava Plume", "Amnesia", "Sunny Day"]'::jsonb, 'Simple', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 324, 28, 3, '["Overheat", "Body Slam", "Curse", "Sunny Day"]'::jsonb, 'White Smoke', NULL, NULL);
END $$;

-- Norman (Gym Leader)
DO $$
DECLARE
  v_trainer_id UUID;
  v_route_id UUID;
BEGIN
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'petalburg-city-gym' AND game_id = 'f8a9b0c1-d2e3-4567-f890-123456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
  VALUES (v_route_id, 'Norman', 'Gym Leader', true, 'gym_leader', 31, 5, 'Normal-type specialist. Balance Badge.')
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 327, 27, 1, '["Teeter Dance", "Psybeam", "Facade", "Encore"]'::jsonb, 'Own Tempo', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 288, 27, 2, '["Slash", "Facade", "Encore", "Feint Attack"]'::jsonb, 'Vital Spirit', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 264, 29, 3, '["Slash", "Belly Drum", "Facade", "Headbutt"]'::jsonb, 'Pickup', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 289, 31, 4, '["Counter", "Yawn", "Facade", "Feint Attack"]'::jsonb, 'Truant', 'Sitrus Berry', NULL);
END $$;

-- Winona (Gym Leader)
DO $$
DECLARE
  v_trainer_id UUID;
  v_route_id UUID;
BEGIN
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'fortree-city' AND game_id = 'f8a9b0c1-d2e3-4567-f890-123456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
  VALUES (v_route_id, 'Winona', 'Gym Leader', true, 'gym_leader', 33, 6, 'Flying-type specialist. Feather Badge.')
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 277, 31, 1, '["Quick Attack", "Aerial Ace", "Double Team", "Endeavor"]'::jsonb, 'Guts', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 279, 30, 2, '["Water Gun", "Supersonic", "Protect", "Aerial Ace"]'::jsonb, 'Keen Eye', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 227, 32, 3, '["Sand Attack", "Fury Attack", "Steel Wing", "Aerial Ace"]'::jsonb, 'Keen Eye', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 334, 33, 4, '["Earthquake", "Dragon Breath", "Dragon Dance", "Aerial Ace"]'::jsonb, 'Natural Cure', NULL, NULL);
END $$;

-- Tate & Liza (Gym Leader)
DO $$
DECLARE
  v_trainer_id UUID;
  v_route_id UUID;
BEGIN
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'mossdeep-city' AND game_id = 'f8a9b0c1-d2e3-4567-f890-123456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
  VALUES (v_route_id, 'Tate & Liza', 'Gym Leader', true, 'gym_leader', 42, 7, 'Psychic-type specialists. Mind Badge. Double Battle.')
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 344, 41, 1, '["Earthquake", "Ancient Power", "Psychic", "Light Screen"]'::jsonb, 'Levitate', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 178, 41, 2, '["Psychic", "Sunny Day", "Confuse Ray", "Calm Mind"]'::jsonb, 'Synchronize', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 337, 42, 3, '["Light Screen", "Psychic", "Hypnosis", "Calm Mind"]'::jsonb, 'Levitate', 'Sitrus Berry', NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 338, 42, 4, '["Sunny Day", "Solar Beam", "Psychic", "Flamethrower"]'::jsonb, 'Levitate', 'Sitrus Berry', NULL);
END $$;

-- Wallace (Gym Leader)
DO $$
DECLARE
  v_trainer_id UUID;
  v_route_id UUID;
BEGIN
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'sootopolis-city' AND game_id = 'f8a9b0c1-d2e3-4567-f890-123456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
  VALUES (v_route_id, 'Wallace', 'Gym Leader', true, 'gym_leader', 46, 8, 'Water-type specialist. Rain Badge.')
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 370, 44, 1, '["Draining Kiss", "Attract", "Sweet Kiss", "Water Pulse"]'::jsonb, 'Swift Swim', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 340, 44, 2, '["Earthquake", "Zen Headbutt", "Waterfall", "Mud Sport"]'::jsonb, 'Oblivious', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 364, 44, 3, '["Encore", "Waterfall", "Aurora Beam", "Body Slam"]'::jsonb, 'Thick Fat', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 119, 44, 4, '["Waterfall", "Rain Dance", "Aqua Ring", "Horn Drill"]'::jsonb, 'Swift Swim', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 350, 46, 5, '["Hydro Pump", "Recover", "Ice Beam", "Disarming Voice"]'::jsonb, 'Marvel Scale', NULL, NULL);
END $$;

-- Sidney (Elite Four)
DO $$
DECLARE
  v_trainer_id UUID;
  v_route_id UUID;
BEGIN
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'pokemon-league' AND game_id = 'f8a9b0c1-d2e3-4567-f890-123456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
  VALUES (v_route_id, 'Sidney', 'Elite Four', true, 'elite_four', 52, 1, 'Dark-type specialist.')
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 262, 50, 1, '["Swagger", "Take Down", "Sucker Punch", "Crunch"]'::jsonb, 'Intimidate', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 275, 50, 2, '["Fake Out", "Feint Attack", "Extrasensory", "Leaf Blade"]'::jsonb, 'Chlorophyll', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 332, 50, 3, '["Leech Seed", "Payback", "Needle Arm", "Spiky Shield"]'::jsonb, 'Sand Veil', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 319, 50, 4, '["Crunch", "Poison Fang", "Aqua Jet", "Slash"]'::jsonb, 'Rough Skin', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 359, 52, 5, '["Aerial Ace", "Night Slash", "Psycho Cut", "Slash"]'::jsonb, 'Super Luck', NULL, NULL);
END $$;

-- Phoebe (Elite Four)
DO $$
DECLARE
  v_trainer_id UUID;
  v_route_id UUID;
BEGIN
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'pokemon-league' AND game_id = 'f8a9b0c1-d2e3-4567-f890-123456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
  VALUES (v_route_id, 'Phoebe', 'Elite Four', true, 'elite_four', 53, 2, 'Ghost-type specialist.')
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 356, 51, 1, '["Shadow Punch", "Confuse Ray", "Curse", "Future Sight"]'::jsonb, 'Pressure', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 354, 51, 2, '["Shadow Ball", "Spite", "Will-O-Wisp", "Feint Attack"]'::jsonb, 'Insomnia', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 302, 51, 3, '["Shadow Claw", "Foul Play", "Power Gem", "Fake Out"]'::jsonb, 'Prankster', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 354, 51, 4, '["Shadow Ball", "Grudge", "Toxic", "Psychic"]'::jsonb, 'Insomnia', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 477, 53, 5, '["Hex", "Fire Punch", "Ice Punch", "Thunder Punch"]'::jsonb, 'Pressure', NULL, NULL);
END $$;

-- Glacia (Elite Four)
DO $$
DECLARE
  v_trainer_id UUID;
  v_route_id UUID;
BEGIN
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'pokemon-league' AND game_id = 'f8a9b0c1-d2e3-4567-f890-123456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
  VALUES (v_route_id, 'Glacia', 'Elite Four', true, 'elite_four', 54, 3, 'Ice-type specialist.')
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 362, 52, 1, '["Light Screen", "Ice Shard", "Hail", "Crunch"]'::jsonb, 'Inner Focus', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 478, 52, 2, '["Confuse Ray", "Blizzard", "Hail", "Ominous Wind"]'::jsonb, 'Snow Cloak', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 362, 52, 3, '["Protect", "Ice Shard", "Hail", "Freeze-Dry"]'::jsonb, 'Inner Focus', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 478, 52, 4, '["Draining Kiss", "Blizzard", "Hail", "Shadow Ball"]'::jsonb, 'Snow Cloak', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 365, 54, 5, '["Surf", "Body Slam", "Blizzard", "Sheer Cold"]'::jsonb, 'Thick Fat', NULL, NULL);
END $$;

-- Drake (Elite Four)
DO $$
DECLARE
  v_trainer_id UUID;
  v_route_id UUID;
BEGIN
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'pokemon-league' AND game_id = 'f8a9b0c1-d2e3-4567-f890-123456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
  VALUES (v_route_id, 'Drake', 'Elite Four', true, 'elite_four', 55, 4, 'Dragon-type specialist.')
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 334, 53, 1, '["Aerial Ace", "Cotton Guard", "Dragon Pulse", "Moonblast"]'::jsonb, 'Natural Cure', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 330, 53, 2, '["Earthquake", "Dragon Claw", "Rock Slide", "Supersonic"]'::jsonb, 'Levitate', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 230, 53, 3, '["Dragon Pulse", "Surf", "Yawn", "Ice Beam"]'::jsonb, 'Sniper', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 330, 53, 4, '["Flamethrower", "Boomburst", "Dragon Pulse", "Screech"]'::jsonb, 'Levitate', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 373, 55, 5, '["Dragon Rush", "Zen Headbutt", "Crunch", "Thunder Fang"]'::jsonb, 'Intimidate', NULL, NULL);
END $$;

-- Steven (Champion)
DO $$
DECLARE
  v_trainer_id UUID;
  v_route_id UUID;
BEGIN
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'pokemon-league' AND game_id = 'f8a9b0c1-d2e3-4567-f890-123456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
  VALUES (v_route_id, 'Steven', 'Champion', true, 'champion', 59, 5, 'Steel-type specialist. Metagross Mega Evolves.')
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 227, 57, 1, '["Toxic", "Aerial Ace", "Spikes", "Steel Wing"]'::jsonb, 'Sturdy', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 344, 57, 2, '["Reflect", "Light Screen", "Extrasensory", "Earth Power"]'::jsonb, 'Levitate', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 306, 57, 3, '["Stone Edge", "Earthquake", "Iron Tail", "Dragon Claw"]'::jsonb, 'Sturdy', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 346, 57, 4, '["Giga Drain", "Ancient Power", "Sludge Bomb", "Confuse Ray"]'::jsonb, 'Suction Cups', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 348, 57, 5, '["X-Scissor", "Rock Blast", "Metal Claw", "Crush Claw"]'::jsonb, 'Battle Armor', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 376, 59, 6, '["Meteor Mash", "Bullet Punch", "Zen Headbutt", "Giga Impact"]'::jsonb, 'Clear Body', 'Metagrossite', NULL);
END $$;

-- Update total_routes count
UPDATE public.games SET total_routes = 67 WHERE id = 'f8a9b0c1-d2e3-4567-f890-123456789012';
