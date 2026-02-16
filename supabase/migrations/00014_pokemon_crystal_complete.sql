-- ===========================================
-- POKEMON CRYSTAL: COMPLETE GAME DATA
-- Official Pokemon Game
-- Gen 2, Johto region
-- ===========================================
-- Game ID: e1f2a3b4-c5d6-7890-ef12-345678901234
-- ===========================================

-- STEP 1: Insert the game
INSERT INTO public.games (id, slug, name, generation, region, base_game_slug, is_romhack, sprite_url, total_routes, description)
VALUES (
  'e1f2a3b4-c5d6-7890-ef12-345678901234',
  'pokemon-crystal',
  'Pokemon Crystal',
  2,
  'Johto',
  NULL,
  false,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/245.png',
  86,
  'Pokemon Crystal Version for Game Boy Color. The definitive Gen 2 experience with animated sprites and Suicune storyline. Features Johto and Kanto regions.'
);

-- ===========================================
-- STEP 2: ALL ROUTES (86 total)
-- ===========================================

INSERT INTO public.routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items, notes) VALUES
('e1f2a3b4-c5d6-7890-ef12-345678901234', 'New Bark Town', 'new-bark-town', 1, 'city', true, false, false, 'Starter town. Choose Chikorita, Cyndaquil, or Totodile.'),
('e1f2a3b4-c5d6-7890-ef12-345678901234', 'Route 29', 'route-29', 2, 'route', true, false, false, NULL),
('e1f2a3b4-c5d6-7890-ef12-345678901234', 'Route 46', 'route-46', 3, 'route', true, true, false, NULL),
('e1f2a3b4-c5d6-7890-ef12-345678901234', 'Cherrygrove City', 'cherrygrove-city', 4, 'city', true, false, false, 'Surf and fishing available.'),
('e1f2a3b4-c5d6-7890-ef12-345678901234', 'Route 30', 'route-30', 5, 'route', true, true, false, NULL),
('e1f2a3b4-c5d6-7890-ef12-345678901234', 'Route 31', 'route-31', 6, 'route', true, true, false, NULL),
('e1f2a3b4-c5d6-7890-ef12-345678901234', 'Dark Cave (Violet Side)', 'dark-cave-violet', 7, 'cave', true, false, false, NULL),
('e1f2a3b4-c5d6-7890-ef12-345678901234', 'Violet City', 'violet-city', 8, 'city', false, true, false, 'Gym Leader Falkner. Flying-type specialist.'),
('e1f2a3b4-c5d6-7890-ef12-345678901234', 'Sprout Tower', 'sprout-tower', 9, 'building', true, true, false, NULL),
('e1f2a3b4-c5d6-7890-ef12-345678901234', 'Route 32', 'route-32', 10, 'route', true, true, false, NULL),
('e1f2a3b4-c5d6-7890-ef12-345678901234', 'Ruins of Alph', 'ruins-of-alph', 11, 'special', true, true, false, 'Unown puzzle area.'),
('e1f2a3b4-c5d6-7890-ef12-345678901234', 'Union Cave', 'union-cave', 12, 'cave', true, true, false, NULL),
('e1f2a3b4-c5d6-7890-ef12-345678901234', 'Route 33', 'route-33', 13, 'route', true, true, false, NULL),
('e1f2a3b4-c5d6-7890-ef12-345678901234', 'Azalea Town', 'azalea-town', 14, 'city', false, true, false, 'Gym Leader Bugsy. Bug-type specialist.'),
('e1f2a3b4-c5d6-7890-ef12-345678901234', 'Slowpoke Well', 'slowpoke-well', 15, 'cave', true, true, false, NULL),
('e1f2a3b4-c5d6-7890-ef12-345678901234', 'Ilex Forest', 'ilex-forest', 16, 'route', true, true, false, NULL),
('e1f2a3b4-c5d6-7890-ef12-345678901234', 'Route 34', 'route-34', 17, 'route', true, true, false, NULL),
('e1f2a3b4-c5d6-7890-ef12-345678901234', 'Goldenrod City', 'goldenrod-city', 18, 'city', false, true, true, 'Gym Leader Whitney. Normal-type specialist.'),
('e1f2a3b4-c5d6-7890-ef12-345678901234', 'Route 35', 'route-35', 19, 'route', true, true, false, NULL),
('e1f2a3b4-c5d6-7890-ef12-345678901234', 'National Park', 'national-park', 20, 'route', true, true, false, 'Bug Catching Contest area.'),
('e1f2a3b4-c5d6-7890-ef12-345678901234', 'Route 36', 'route-36', 21, 'route', true, true, false, NULL),
('e1f2a3b4-c5d6-7890-ef12-345678901234', 'Route 37', 'route-37', 22, 'route', true, true, false, NULL),
('e1f2a3b4-c5d6-7890-ef12-345678901234', 'Ecruteak City', 'ecruteak-city', 23, 'city', false, true, false, 'Gym Leader Morty. Ghost-type specialist.'),
('e1f2a3b4-c5d6-7890-ef12-345678901234', 'Burned Tower', 'burned-tower', 24, 'building', true, false, false, 'Legendary beasts flee here.'),
('e1f2a3b4-c5d6-7890-ef12-345678901234', 'Tin Tower', 'tin-tower', 25, 'building', true, false, false, 'Suicune encounter. Called Bell Tower in HGSS.'),
('e1f2a3b4-c5d6-7890-ef12-345678901234', 'Route 38', 'route-38', 26, 'route', true, true, false, NULL),
('e1f2a3b4-c5d6-7890-ef12-345678901234', 'Route 39', 'route-39', 27, 'route', true, true, false, NULL),
('e1f2a3b4-c5d6-7890-ef12-345678901234', 'Olivine City', 'olivine-city', 28, 'city', false, true, false, 'Gym Leader Jasmine. Steel-type specialist.'),
('e1f2a3b4-c5d6-7890-ef12-345678901234', 'Route 40', 'route-40', 29, 'water', true, true, false, NULL),
('e1f2a3b4-c5d6-7890-ef12-345678901234', 'Route 41', 'route-41', 30, 'water', true, true, false, 'Whirl Islands nearby.'),
('e1f2a3b4-c5d6-7890-ef12-345678901234', 'Cianwood City', 'cianwood-city', 31, 'city', false, true, false, 'Gym Leader Chuck. Fighting-type specialist.'),
('e1f2a3b4-c5d6-7890-ef12-345678901234', 'Route 42', 'route-42', 32, 'route', true, true, false, NULL),
('e1f2a3b4-c5d6-7890-ef12-345678901234', 'Mt. Mortar', 'mt-mortar', 33, 'cave', true, true, true, NULL),
('e1f2a3b4-c5d6-7890-ef12-345678901234', 'Mahogany Town', 'mahogany-town', 34, 'city', false, true, false, 'Gym Leader Pryce. Ice-type specialist.'),
('e1f2a3b4-c5d6-7890-ef12-345678901234', 'Route 43', 'route-43', 35, 'route', true, true, false, NULL),
('e1f2a3b4-c5d6-7890-ef12-345678901234', 'Lake of Rage', 'lake-of-rage', 36, 'water', true, true, false, 'Red Gyarados event.'),
('e1f2a3b4-c5d6-7890-ef12-345678901234', 'Route 44', 'route-44', 37, 'route', true, true, false, NULL),
('e1f2a3b4-c5d6-7890-ef12-345678901234', 'Ice Path', 'ice-path', 38, 'cave', true, false, true, NULL),
('e1f2a3b4-c5d6-7890-ef12-345678901234', 'Blackthorn City', 'blackthorn-city', 39, 'city', false, true, false, 'Gym Leader Clair. Dragon-type specialist.'),
('e1f2a3b4-c5d6-7890-ef12-345678901234', 'Dragon''s Den', 'dragons-den', 40, 'cave', true, false, false, 'Dratini fishing.'),
('e1f2a3b4-c5d6-7890-ef12-345678901234', 'Route 45', 'route-45', 41, 'route', true, true, false, NULL),
('e1f2a3b4-c5d6-7890-ef12-345678901234', 'Dark Cave (Blackthorn Side)', 'dark-cave-blackthorn', 42, 'cave', true, false, false, NULL),
('e1f2a3b4-c5d6-7890-ef12-345678901234', 'Whirl Islands', 'whirl-islands', 43, 'cave', true, false, false, 'Lugia encounter.'),
('e1f2a3b4-c5d6-7890-ef12-345678901234', 'Route 27', 'route-27', 44, 'route', true, true, false, NULL),
('e1f2a3b4-c5d6-7890-ef12-345678901234', 'Tohjo Falls', 'tohjo-falls', 45, 'cave', true, false, false, NULL),
('e1f2a3b4-c5d6-7890-ef12-345678901234', 'Route 26', 'route-26', 46, 'route', true, true, false, NULL),
('e1f2a3b4-c5d6-7890-ef12-345678901234', 'Victory Road', 'victory-road', 47, 'cave', true, true, true, NULL),
('e1f2a3b4-c5d6-7890-ef12-345678901234', 'Indigo Plateau', 'indigo-plateau', 48, 'building', false, true, true, 'Elite Four and Champion Lance.'),
('e1f2a3b4-c5d6-7890-ef12-345678901234', 'Vermilion City', 'vermilion-city', 49, 'city', false, true, false, 'Gym Leader Lt. Surge. Electric-type specialist.'),
('e1f2a3b4-c5d6-7890-ef12-345678901234', 'Route 6', 'route-6', 50, 'route', true, true, false, NULL),
('e1f2a3b4-c5d6-7890-ef12-345678901234', 'Saffron City', 'saffron-city', 51, 'city', false, true, false, 'Gym Leader Sabrina. Psychic-type specialist.'),
('e1f2a3b4-c5d6-7890-ef12-345678901234', 'Route 5', 'route-5', 52, 'route', true, false, false, NULL),
('e1f2a3b4-c5d6-7890-ef12-345678901234', 'Cerulean City', 'cerulean-city', 53, 'city', false, true, false, 'Gym Leader Misty. Water-type specialist.'),
('e1f2a3b4-c5d6-7890-ef12-345678901234', 'Route 24', 'route-24', 54, 'route', true, true, false, NULL),
('e1f2a3b4-c5d6-7890-ef12-345678901234', 'Route 25', 'route-25', 55, 'route', true, true, false, NULL),
('e1f2a3b4-c5d6-7890-ef12-345678901234', 'Route 9', 'route-9', 56, 'route', true, true, false, NULL),
('e1f2a3b4-c5d6-7890-ef12-345678901234', 'Route 10', 'route-10', 57, 'route', true, true, false, NULL),
('e1f2a3b4-c5d6-7890-ef12-345678901234', 'Rock Tunnel', 'rock-tunnel', 58, 'cave', true, true, false, NULL),
('e1f2a3b4-c5d6-7890-ef12-345678901234', 'Lavender Town', 'lavender-town', 59, 'city', false, false, false, NULL),
('e1f2a3b4-c5d6-7890-ef12-345678901234', 'Route 8', 'route-8', 60, 'route', true, true, false, NULL),
('e1f2a3b4-c5d6-7890-ef12-345678901234', 'Route 7', 'route-7', 61, 'route', true, false, false, NULL),
('e1f2a3b4-c5d6-7890-ef12-345678901234', 'Celadon City', 'celadon-city', 62, 'city', false, true, true, 'Gym Leader Erika. Grass-type specialist.'),
('e1f2a3b4-c5d6-7890-ef12-345678901234', 'Route 16', 'route-16', 63, 'route', true, false, false, NULL),
('e1f2a3b4-c5d6-7890-ef12-345678901234', 'Route 17', 'route-17', 64, 'route', true, true, false, 'Cycling Road.'),
('e1f2a3b4-c5d6-7890-ef12-345678901234', 'Route 18', 'route-18', 65, 'route', true, true, false, NULL),
('e1f2a3b4-c5d6-7890-ef12-345678901234', 'Fuchsia City', 'fuchsia-city', 66, 'city', false, true, false, 'Gym Leader Janine. Poison-type specialist.'),
('e1f2a3b4-c5d6-7890-ef12-345678901234', 'Route 15', 'route-15', 67, 'route', true, true, false, NULL),
('e1f2a3b4-c5d6-7890-ef12-345678901234', 'Route 14', 'route-14', 68, 'route', true, true, false, NULL),
('e1f2a3b4-c5d6-7890-ef12-345678901234', 'Route 13', 'route-13', 69, 'route', true, true, false, NULL),
('e1f2a3b4-c5d6-7890-ef12-345678901234', 'Route 12', 'route-12', 70, 'route', true, true, false, NULL),
('e1f2a3b4-c5d6-7890-ef12-345678901234', 'Route 11', 'route-11', 71, 'route', true, true, false, NULL),
('e1f2a3b4-c5d6-7890-ef12-345678901234', 'Diglett''s Cave', 'digletts-cave', 72, 'cave', true, false, false, NULL),
('e1f2a3b4-c5d6-7890-ef12-345678901234', 'Route 2', 'route-2', 73, 'route', true, true, false, NULL),
('e1f2a3b4-c5d6-7890-ef12-345678901234', 'Pewter City', 'pewter-city', 74, 'city', false, true, false, 'Gym Leader Brock. Rock-type specialist.'),
('e1f2a3b4-c5d6-7890-ef12-345678901234', 'Viridian Forest', 'viridian-forest', 75, 'route', true, false, false, NULL),
('e1f2a3b4-c5d6-7890-ef12-345678901234', 'Viridian City', 'viridian-city', 76, 'city', false, true, false, 'Gym Leader Blue. Mixed-type specialist.'),
('e1f2a3b4-c5d6-7890-ef12-345678901234', 'Route 1', 'route-1', 77, 'route', true, true, false, NULL),
('e1f2a3b4-c5d6-7890-ef12-345678901234', 'Pallet Town', 'pallet-town', 78, 'city', true, false, false, 'Surf and fishing available.'),
('e1f2a3b4-c5d6-7890-ef12-345678901234', 'Route 21', 'route-21', 79, 'water', true, true, false, NULL),
('e1f2a3b4-c5d6-7890-ef12-345678901234', 'Cinnabar Island', 'cinnabar-island', 80, 'city', false, true, false, 'Gym Leader Blaine (relocated to Seafoam Islands).'),
('e1f2a3b4-c5d6-7890-ef12-345678901234', 'Route 20', 'route-20', 81, 'water', true, true, false, NULL),
('e1f2a3b4-c5d6-7890-ef12-345678901234', 'Route 19', 'route-19', 82, 'water', true, true, false, NULL),
('e1f2a3b4-c5d6-7890-ef12-345678901234', 'Seafoam Islands', 'seafoam-islands', 83, 'cave', true, false, true, NULL),
('e1f2a3b4-c5d6-7890-ef12-345678901234', 'Route 22', 'route-22', 84, 'route', true, false, false, NULL),
('e1f2a3b4-c5d6-7890-ef12-345678901234', 'Route 28', 'route-28', 85, 'route', true, false, false, NULL),
('e1f2a3b4-c5d6-7890-ef12-345678901234', 'Mt. Silver', 'mt-silver', 86, 'cave', true, false, true, 'Red awaits at the summit.');

-- ===========================================
-- STEP 3: STARTER POKEMON
-- ===========================================

INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max)
SELECT r.id, 152, 'gift', NULL, 5, 5
FROM public.routes r WHERE r.slug = 'new-bark-town' AND r.game_id = 'e1f2a3b4-c5d6-7890-ef12-345678901234';

INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max)
SELECT r.id, 155, 'gift', NULL, 5, 5
FROM public.routes r WHERE r.slug = 'new-bark-town' AND r.game_id = 'e1f2a3b4-c5d6-7890-ef12-345678901234';

INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max)
SELECT r.id, 158, 'gift', NULL, 5, 5
FROM public.routes r WHERE r.slug = 'new-bark-town' AND r.game_id = 'e1f2a3b4-c5d6-7890-ef12-345678901234';

-- ===========================================
-- STEP 4: ENCOUNTER DATA (1332 total)
-- ===========================================

CREATE TEMP TABLE _enc (slug TEXT, dex INT, method TEXT, rate DECIMAL(5,2), lmin INT, lmax INT, cond TEXT, ver_excl TEXT);
INSERT INTO _enc VALUES
('route-29', 16, 'walking', 50.00, 2, 3, 'Day', NULL),
('route-29', 16, 'walking', 50.00, 2, 3, 'Morning', NULL),
('route-29', 19, 'walking', 5.00, 2, 2, 'Day', NULL),
('route-29', 19, 'walking', 5.00, 2, 2, 'Morning', NULL),
('route-29', 19, 'walking', 45.00, 2, 3, 'Night', NULL),
('route-29', 102, 'headbutt', 60.00, 10, 10, NULL, NULL),
('route-29', 161, 'walking', 40.00, 2, 3, 'Day', NULL),
('route-29', 161, 'walking', 40.00, 2, 3, 'Morning', NULL),
('route-29', 163, 'walking', 55.00, 2, 3, 'Night', NULL),
('route-29', 163, 'headbutt', 150.00, 10, 10, NULL, NULL),
('route-29', 165, 'headbutt', 30.00, 10, 10, NULL, NULL),
('route-29', 167, 'headbutt', 30.00, 10, 10, NULL, NULL),
('route-29', 187, 'walking', 5.00, 3, 3, 'Day', NULL),
('route-29', 187, 'walking', 5.00, 3, 3, 'Morning', NULL),
('route-29', 204, 'headbutt', 30.00, 10, 10, NULL, NULL),
('route-46', 19, 'walking', 20.00, 2, 3, 'Day', NULL),
('route-46', 19, 'walking', 15.00, 2, 3, 'Morning', NULL),
('route-46', 19, 'walking', 50.00, 2, 3, 'Night', NULL),
('route-46', 21, 'walking', 30.00, 2, 2, 'Day', NULL),
('route-46', 21, 'walking', 30.00, 2, 2, 'Morning', NULL),
('route-46', 21, 'headbutt', 210.00, 10, 10, NULL, NULL),
('route-46', 74, 'walking', 50.00, 2, 3, 'Day', NULL),
('route-46', 74, 'walking', 50.00, 2, 3, 'Morning', NULL),
('route-46', 74, 'walking', 50.00, 2, 3, 'Night', NULL),
('route-46', 190, 'headbutt', 60.00, 10, 10, NULL, NULL),
('route-46', 214, 'headbutt', 30.00, 10, 10, NULL, NULL),
('route-46', 231, 'walking', 5.00, 2, 2, 'Morning', NULL),
('cherrygrove-city', 72, 'surfing', 90.00, 15, 24, NULL, NULL),
('cherrygrove-city', 73, 'surfing', 10.00, 20, 24, NULL, NULL),
('cherrygrove-city', 98, 'fishing_old', 15.00, 10, 10, NULL, NULL),
('cherrygrove-city', 98, 'fishing_good', 55.00, 20, 20, 'Day', NULL),
('cherrygrove-city', 98, 'fishing_good', 55.00, 20, 20, 'Morning', NULL),
('cherrygrove-city', 98, 'fishing_good', 55.00, 20, 20, 'Night', NULL),
('cherrygrove-city', 98, 'fishing_super', 60.00, 40, 40, 'Day', NULL),
('cherrygrove-city', 98, 'fishing_super', 60.00, 40, 40, 'Morning', NULL),
('cherrygrove-city', 98, 'fishing_super', 60.00, 40, 40, 'Night', NULL),
('cherrygrove-city', 99, 'fishing_super', 10.00, 40, 40, 'Day', NULL),
('cherrygrove-city', 99, 'fishing_super', 10.00, 40, 40, 'Morning', NULL),
('cherrygrove-city', 99, 'fishing_super', 10.00, 40, 40, 'Night', NULL),
('cherrygrove-city', 120, 'fishing_good', 10.00, 20, 20, 'Night', NULL),
('cherrygrove-city', 120, 'fishing_super', 30.00, 40, 40, 'Night', NULL),
('cherrygrove-city', 129, 'fishing_old', 85.00, 10, 10, NULL, NULL),
('cherrygrove-city', 129, 'fishing_good', 35.00, 20, 20, 'Day', NULL),
('cherrygrove-city', 129, 'fishing_good', 35.00, 20, 20, 'Morning', NULL),
('cherrygrove-city', 129, 'fishing_good', 35.00, 20, 20, 'Night', NULL),
('cherrygrove-city', 222, 'fishing_good', 10.00, 20, 20, 'Day', NULL),
('cherrygrove-city', 222, 'fishing_good', 10.00, 20, 20, 'Morning', NULL),
('cherrygrove-city', 222, 'fishing_super', 30.00, 40, 40, 'Day', NULL),
('cherrygrove-city', 222, 'fishing_super', 30.00, 40, 40, 'Morning', NULL),
('route-30', 10, 'walking', 50.00, 3, 4, 'Day', NULL),
('route-30', 10, 'walking', 50.00, 3, 4, 'Morning', NULL),
('route-30', 13, 'walking', 5.00, 3, 3, 'Day', NULL),
('route-30', 13, 'walking', 5.00, 3, 3, 'Morning', NULL),
('route-30', 16, 'walking', 40.00, 3, 4, 'Day', NULL),
('route-30', 16, 'walking', 10.00, 4, 4, 'Morning', NULL),
('route-30', 41, 'walking', 5.00, 3, 3, 'Night', NULL),
('route-30', 60, 'walking', 20.00, 4, 4, 'Night', NULL),
('route-30', 60, 'fishing_old', 15.00, 10, 10, NULL, NULL),
('route-30', 60, 'fishing_good', 65.00, 20, 20, NULL, NULL),
('route-30', 60, 'fishing_super', 80.00, 40, 40, NULL, NULL),
('route-30', 60, 'surfing', 90.00, 15, 24, NULL, NULL),
('route-30', 61, 'surfing', 10.00, 20, 24, NULL, NULL),
('route-30', 102, 'headbutt', 60.00, 10, 10, NULL, NULL),
('route-30', 129, 'fishing_old', 85.00, 10, 10, NULL, NULL),
('route-30', 129, 'fishing_good', 35.00, 20, 20, NULL, NULL),
('route-30', 129, 'fishing_super', 20.00, 40, 40, NULL, NULL),
('route-30', 163, 'walking', 45.00, 3, 4, 'Night', NULL),
('route-30', 163, 'headbutt', 150.00, 10, 10, NULL, NULL),
('route-30', 165, 'walking', 30.00, 3, 3, 'Morning', NULL),
('route-30', 165, 'headbutt', 30.00, 10, 10, NULL, NULL),
('route-30', 167, 'walking', 30.00, 3, 3, 'Night', NULL),
('route-30', 167, 'headbutt', 30.00, 10, 10, NULL, NULL),
('route-30', 187, 'walking', 5.00, 4, 4, 'Day', NULL),
('route-30', 187, 'walking', 5.00, 4, 4, 'Morning', NULL),
('route-30', 204, 'headbutt', 30.00, 10, 10, NULL, NULL),
('route-31', 10, 'walking', 50.00, 4, 5, 'Day', NULL),
('route-31', 10, 'walking', 50.00, 4, 5, 'Morning', NULL),
('route-31', 13, 'walking', 5.00, 4, 4, 'Day', NULL),
('route-31', 13, 'walking', 5.00, 4, 4, 'Morning', NULL),
('route-31', 16, 'walking', 40.00, 4, 5, 'Day', NULL),
('route-31', 16, 'walking', 10.00, 5, 5, 'Morning', NULL),
('route-31', 41, 'walking', 5.00, 4, 4, 'Night', NULL),
('route-31', 60, 'walking', 30.00, 4, 4, 'Night', NULL),
('route-31', 60, 'fishing_old', 15.00, 10, 10, NULL, NULL),
('route-31', 60, 'fishing_good', 65.00, 20, 20, NULL, NULL),
('route-31', 60, 'fishing_super', 80.00, 40, 40, NULL, NULL),
('route-31', 60, 'surfing', 90.00, 15, 24, NULL, NULL),
('route-31', 61, 'surfing', 10.00, 20, 24, NULL, NULL),
('route-31', 69, 'walking', 20.00, 5, 5, 'Night', NULL),
('route-31', 92, 'walking', 5.00, 5, 5, 'Night', NULL),
('route-31', 102, 'headbutt', 60.00, 10, 10, NULL, NULL),
('route-31', 129, 'fishing_old', 85.00, 10, 10, NULL, NULL),
('route-31', 129, 'fishing_good', 35.00, 20, 20, NULL, NULL),
('route-31', 129, 'fishing_super', 20.00, 40, 40, NULL, NULL),
('route-31', 163, 'walking', 10.00, 5, 5, 'Night', NULL),
('route-31', 163, 'headbutt', 150.00, 10, 10, NULL, NULL),
('route-31', 165, 'walking', 30.00, 4, 4, 'Morning', NULL),
('route-31', 165, 'headbutt', 30.00, 10, 10, NULL, NULL),
('route-31', 167, 'walking', 30.00, 4, 4, 'Night', NULL),
('route-31', 167, 'headbutt', 30.00, 10, 10, NULL, NULL),
('route-31', 187, 'walking', 5.00, 5, 5, 'Day', NULL),
('route-31', 187, 'walking', 5.00, 5, 5, 'Morning', NULL),
('route-31', 204, 'headbutt', 30.00, 10, 10, NULL, NULL),
('dark-cave-violet', 41, 'walking', 39.00, 2, 4, 'Day', NULL),
('dark-cave-violet', 41, 'walking', 34.00, 2, 4, 'Morning', NULL),
('dark-cave-violet', 41, 'walking', 39.00, 2, 4, 'Night', NULL),
('dark-cave-violet', 41, 'walking', 20.00, 2, 2, 'Swarm', NULL),
('dark-cave-violet', 74, 'walking', 60.00, 2, 4, 'Day', NULL),
('dark-cave-violet', 74, 'walking', 60.00, 2, 4, 'Morning', NULL),
('dark-cave-violet', 74, 'walking', 60.00, 2, 4, 'Night', NULL),
('dark-cave-violet', 74, 'walking', 40.00, 2, 3, 'Swarm', NULL),
('dark-cave-violet', 98, 'rock_smash', 90.00, 15, 15, NULL, NULL),
('dark-cave-violet', 118, 'fishing_old', 15.00, 10, 10, NULL, NULL),
('dark-cave-violet', 118, 'fishing_good', 65.00, 20, 20, NULL, NULL),
('dark-cave-violet', 118, 'fishing_super', 70.00, 40, 40, NULL, NULL),
('dark-cave-violet', 119, 'fishing_super', 10.00, 40, 40, NULL, NULL),
('dark-cave-violet', 129, 'fishing_old', 85.00, 10, 10, NULL, NULL),
('dark-cave-violet', 129, 'fishing_good', 35.00, 20, 20, NULL, NULL),
('dark-cave-violet', 129, 'fishing_super', 20.00, 40, 40, NULL, NULL),
('dark-cave-violet', 129, 'surfing', 100.00, 5, 19, NULL, NULL),
('dark-cave-violet', 206, 'walking', 1.00, 4, 4, 'Day', NULL),
('dark-cave-violet', 206, 'walking', 1.00, 4, 4, 'Morning', NULL),
('dark-cave-violet', 206, 'walking', 1.00, 4, 4, 'Night', NULL),
('dark-cave-violet', 206, 'walking', 40.00, 2, 4, 'Swarm', NULL),
('dark-cave-violet', 213, 'rock_smash', 10.00, 15, 15, NULL, NULL),
('dark-cave-violet', 216, 'walking', 5.00, 2, 2, 'Morning', NULL),
('sprout-tower', 19, 'walking', 200.00, 3, 6, 'Day', NULL),
('sprout-tower', 19, 'walking', 200.00, 3, 6, 'Morning', NULL),
('sprout-tower', 19, 'walking', 30.00, 3, 5, 'Night', NULL),
('sprout-tower', 92, 'walking', 170.00, 3, 6, 'Night', NULL),
('route-32', 16, 'walking', 5.00, 7, 7, 'Day', NULL),
('route-32', 16, 'walking', 5.00, 7, 7, 'Morning', NULL),
('route-32', 19, 'walking', 30.00, 5, 5, 'Day', NULL),
('route-32', 19, 'walking', 30.00, 5, 5, 'Morning', NULL),
('route-32', 19, 'walking', 30.00, 5, 5, 'Night', NULL),
('route-32', 23, 'walking', 30.00, 4, 4, 'Day', NULL),
('route-32', 23, 'walking', 30.00, 4, 4, 'Morning', NULL),
('route-32', 23, 'headbutt', 30.00, 10, 10, NULL, NULL),
('route-32', 41, 'walking', 10.00, 6, 6, 'Night', NULL),
('route-32', 69, 'walking', 20.00, 7, 7, 'Day', NULL),
('route-32', 69, 'walking', 20.00, 7, 7, 'Morning', NULL),
('route-32', 69, 'walking', 20.00, 7, 7, 'Night', NULL),
('route-32', 72, 'fishing_old', 15.00, 10, 10, NULL, NULL),
('route-32', 72, 'fishing_good', 65.00, 20, 20, NULL, NULL),
('route-32', 72, 'fishing_super', 70.00, 40, 40, NULL, NULL),
('route-32', 72, 'surfing', 60.00, 15, 19, NULL, NULL),
('route-32', 73, 'surfing', 10.00, 20, 24, NULL, NULL),
('route-32', 92, 'walking', 5.00, 7, 7, 'Night', NULL),
('route-32', 102, 'headbutt', 60.00, 10, 10, NULL, NULL),
('route-32', 129, 'fishing_old', 85.00, 10, 10, NULL, NULL),
('route-32', 129, 'fishing_old', 85.00, 5, 5, 'Swarm', NULL),
('route-32', 129, 'fishing_good', 35.00, 20, 20, NULL, NULL),
('route-32', 129, 'fishing_super', 20.00, 40, 40, NULL, NULL),
('route-32', 163, 'walking', 5.00, 7, 7, 'Night', NULL),
('route-32', 163, 'headbutt', 180.00, 10, 10, NULL, NULL),
('route-32', 187, 'walking', 15.00, 6, 7, 'Day', NULL),
('route-32', 187, 'walking', 15.00, 6, 7, 'Morning', NULL),
('route-32', 194, 'walking', 30.00, 4, 4, 'Night', NULL),
('route-32', 195, 'surfing', 30.00, 20, 24, NULL, NULL),
('route-32', 204, 'headbutt', 30.00, 10, 10, NULL, NULL),
('route-32', 211, 'fishing_old', 15.00, 5, 5, 'Swarm', NULL),
('route-32', 211, 'fishing_good', 65.00, 20, 20, 'Swarm', NULL),
('route-32', 211, 'fishing_super', 10.00, 40, 40, NULL, NULL),
('route-32', 211, 'fishing_super', 100.00, 40, 40, 'Swarm', NULL),
('ruins-of-alph', 60, 'fishing_old', 15.00, 10, 10, NULL, NULL),
('ruins-of-alph', 60, 'fishing_good', 65.00, 20, 20, NULL, NULL),
('ruins-of-alph', 60, 'fishing_super', 80.00, 40, 40, NULL, NULL),
('ruins-of-alph', 129, 'fishing_old', 85.00, 10, 10, NULL, NULL),
('ruins-of-alph', 129, 'fishing_good', 35.00, 20, 20, NULL, NULL),
('ruins-of-alph', 129, 'fishing_super', 20.00, 40, 40, NULL, NULL),
('ruins-of-alph', 177, 'walking', 90.00, 18, 24, 'Day', NULL),
('ruins-of-alph', 177, 'walking', 90.00, 18, 24, 'Morning', NULL),
('ruins-of-alph', 177, 'walking', 90.00, 18, 24, 'Night', NULL),
('ruins-of-alph', 194, 'walking', 5.00, 20, 20, 'Morning', NULL),
('ruins-of-alph', 194, 'walking', 5.00, 22, 22, 'Night', NULL),
('ruins-of-alph', 194, 'surfing', 60.00, 15, 19, NULL, NULL),
('ruins-of-alph', 195, 'walking', 5.00, 22, 22, 'Morning', NULL),
('ruins-of-alph', 195, 'walking', 5.00, 22, 22, 'Night', NULL),
('ruins-of-alph', 195, 'surfing', 40.00, 14, 24, NULL, NULL),
('ruins-of-alph', 235, 'walking', 10.00, 20, 22, 'Day', NULL),
('ruins-of-alph', 201, 'walking', 100.00, 5, 5, NULL, NULL),
('union-cave', 19, 'walking', 20.00, 4, 8, 'Day', NULL),
('union-cave', 19, 'walking', 20.00, 4, 8, 'Morning', NULL),
('union-cave', 19, 'walking', 50.00, 4, 8, 'Night', NULL),
('union-cave', 27, 'walking', 30.00, 6, 6, 'Day', NULL),
('union-cave', 27, 'walking', 30.00, 6, 6, 'Morning', NULL),
('union-cave', 41, 'walking', 125.00, 5, 22, 'Day', NULL),
('union-cave', 41, 'walking', 125.00, 5, 22, 'Morning', NULL),
('union-cave', 41, 'walking', 65.00, 6, 22, 'Night', NULL),
('union-cave', 74, 'walking', 65.00, 6, 20, 'Day', NULL),
('union-cave', 74, 'walking', 65.00, 6, 20, 'Morning', NULL),
('union-cave', 74, 'walking', 65.00, 6, 20, 'Night', NULL),
('union-cave', 95, 'walking', 20.00, 6, 23, 'Day', NULL),
('union-cave', 95, 'walking', 20.00, 6, 23, 'Morning', NULL),
('union-cave', 95, 'walking', 20.00, 6, 23, 'Night', NULL),
('union-cave', 118, 'fishing_old', 30.00, 10, 10, NULL, NULL),
('union-cave', 118, 'fishing_good', 130.00, 20, 20, NULL, NULL),
('union-cave', 118, 'fishing_super', 140.00, 40, 40, NULL, NULL),
('union-cave', 119, 'fishing_super', 20.00, 40, 40, NULL, NULL),
('union-cave', 129, 'fishing_old', 255.00, 10, 10, NULL, NULL),
('union-cave', 129, 'fishing_good', 70.00, 20, 20, NULL, NULL),
('union-cave', 129, 'fishing_super', 40.00, 40, 40, NULL, NULL),
('union-cave', 194, 'walking', 40.00, 5, 8, 'Night', NULL),
('union-cave', 194, 'surfing', 120.00, 15, 19, NULL, NULL),
('union-cave', 195, 'surfing', 110.00, 15, 24, NULL, NULL),
('union-cave', 20, 'walking', 10.00, 21, 21, 'Day', NULL),
('union-cave', 20, 'walking', 10.00, 21, 21, 'Morning', NULL),
('union-cave', 20, 'walking', 10.00, 21, 21, 'Night', NULL),
('union-cave', 42, 'walking', 30.00, 22, 22, 'Day', NULL),
('union-cave', 42, 'walking', 30.00, 22, 22, 'Morning', NULL),
('union-cave', 42, 'walking', 30.00, 22, 22, 'Night', NULL),
('union-cave', 72, 'surfing', 60.00, 15, 19, NULL, NULL),
('union-cave', 73, 'surfing', 10.00, 20, 24, NULL, NULL),
('union-cave', 98, 'fishing_old', 15.00, 10, 10, NULL, NULL),
('union-cave', 98, 'fishing_good', 55.00, 20, 20, 'Day', NULL),
('union-cave', 98, 'fishing_good', 55.00, 20, 20, 'Morning', NULL),
('union-cave', 98, 'fishing_good', 55.00, 20, 20, 'Night', NULL),
('union-cave', 98, 'fishing_super', 60.00, 40, 40, 'Day', NULL),
('union-cave', 98, 'fishing_super', 60.00, 40, 40, 'Morning', NULL),
('union-cave', 98, 'fishing_super', 60.00, 40, 40, 'Night', NULL),
('union-cave', 99, 'fishing_super', 10.00, 40, 40, 'Day', NULL),
('union-cave', 99, 'fishing_super', 10.00, 40, 40, 'Morning', NULL),
('union-cave', 99, 'fishing_super', 10.00, 40, 40, 'Night', NULL),
('union-cave', 120, 'fishing_good', 10.00, 20, 20, 'Night', NULL),
('union-cave', 120, 'fishing_super', 30.00, 40, 40, 'Night', NULL),
('union-cave', 129, 'fishing_good', 35.00, 20, 20, 'Day', NULL),
('union-cave', 129, 'fishing_good', 35.00, 20, 20, 'Morning', NULL),
('union-cave', 129, 'fishing_good', 35.00, 20, 20, 'Night', NULL),
('union-cave', 131, 'static', 100.00, 20, 20, 'weekday-friday', NULL),
('union-cave', 195, 'walking', 20.00, 22, 22, 'Night', NULL),
('union-cave', 222, 'fishing_good', 10.00, 20, 20, 'Day', NULL),
('union-cave', 222, 'fishing_good', 10.00, 20, 20, 'Morning', NULL),
('union-cave', 222, 'fishing_super', 30.00, 40, 40, 'Day', NULL),
('union-cave', 222, 'fishing_super', 30.00, 40, 40, 'Morning', NULL),
('route-33', 19, 'walking', 30.00, 6, 6, 'Day', NULL),
('route-33', 19, 'walking', 30.00, 6, 6, 'Morning', NULL),
('route-33', 19, 'walking', 40.00, 6, 7, 'Night', NULL),
('route-33', 21, 'walking', 30.00, 6, 6, 'Day', NULL),
('route-33', 21, 'walking', 30.00, 6, 6, 'Morning', NULL),
('route-33', 21, 'headbutt', 180.00, 10, 10, NULL, NULL),
('route-33', 23, 'walking', 5.00, 7, 7, 'Day', NULL),
('route-33', 23, 'walking', 5.00, 7, 7, 'Morning', NULL),
('route-33', 23, 'headbutt', 30.00, 10, 10, NULL, NULL),
('route-33', 41, 'walking', 40.00, 6, 6, 'Night', NULL),
('route-33', 74, 'walking', 20.00, 6, 6, 'Day', NULL),
('route-33', 74, 'walking', 20.00, 6, 6, 'Morning', NULL),
('route-33', 74, 'walking', 20.00, 6, 6, 'Night', NULL),
('route-33', 187, 'walking', 15.00, 6, 7, 'Day', NULL),
('route-33', 187, 'walking', 15.00, 6, 7, 'Morning', NULL),
('route-33', 190, 'headbutt', 60.00, 10, 10, NULL, NULL),
('route-33', 214, 'headbutt', 30.00, 10, 10, NULL, NULL),
('slowpoke-well', 41, 'walking', 165.00, 5, 23, NULL, NULL),
('slowpoke-well', 79, 'walking', 30.00, 6, 23, NULL, NULL),
('slowpoke-well', 79, 'surfing', 190.00, 10, 24, NULL, NULL),
('slowpoke-well', 118, 'fishing_old', 30.00, 10, 10, NULL, NULL),
('slowpoke-well', 118, 'fishing_good', 130.00, 20, 20, NULL, NULL),
('slowpoke-well', 118, 'fishing_super', 140.00, 40, 40, NULL, NULL),
('slowpoke-well', 119, 'fishing_super', 20.00, 40, 40, NULL, NULL),
('slowpoke-well', 129, 'fishing_old', 170.00, 10, 10, NULL, NULL),
('slowpoke-well', 129, 'fishing_good', 70.00, 20, 20, NULL, NULL),
('slowpoke-well', 129, 'fishing_super', 40.00, 40, 40, NULL, NULL),
('slowpoke-well', 42, 'walking', 5.00, 23, 23, NULL, NULL),
('slowpoke-well', 80, 'surfing', 10.00, 20, 24, NULL, NULL),
('ilex-forest', 10, 'walking', 30.00, 5, 5, 'Day', NULL),
('ilex-forest', 10, 'walking', 30.00, 5, 5, 'Morning', NULL),
('ilex-forest', 10, 'headbutt', 15.00, 10, 10, NULL, NULL),
('ilex-forest', 11, 'walking', 20.00, 7, 7, 'Day', NULL),
('ilex-forest', 11, 'walking', 20.00, 7, 7, 'Morning', NULL),
('ilex-forest', 11, 'headbutt', 5.00, 10, 10, NULL, NULL),
('ilex-forest', 12, 'headbutt', 10.00, 10, 10, NULL, NULL),
('ilex-forest', 13, 'walking', 30.00, 5, 5, 'Day', NULL),
('ilex-forest', 13, 'walking', 30.00, 5, 5, 'Morning', NULL),
('ilex-forest', 13, 'headbutt', 15.00, 10, 10, NULL, NULL),
('ilex-forest', 14, 'walking', 10.00, 7, 7, 'Day', NULL),
('ilex-forest', 14, 'walking', 10.00, 7, 7, 'Morning', NULL),
('ilex-forest', 14, 'headbutt', 5.00, 10, 10, NULL, NULL),
('ilex-forest', 15, 'headbutt', 10.00, 10, 10, NULL, NULL),
('ilex-forest', 16, 'walking', 5.00, 7, 7, 'Day', NULL),
('ilex-forest', 16, 'walking', 5.00, 7, 7, 'Morning', NULL),
('ilex-forest', 43, 'walking', 50.00, 5, 7, 'Night', NULL),
('ilex-forest', 46, 'walking', 5.00, 6, 6, 'Day', NULL),
('ilex-forest', 46, 'walking', 5.00, 6, 6, 'Morning', NULL),
('ilex-forest', 46, 'walking', 5.00, 6, 6, 'Night', NULL),
('ilex-forest', 48, 'walking', 30.00, 5, 5, 'Night', NULL),
('ilex-forest', 54, 'walking', 10.00, 7, 7, 'Night', NULL),
('ilex-forest', 54, 'surfing', 90.00, 10, 19, NULL, NULL),
('ilex-forest', 55, 'surfing', 10.00, 15, 19, NULL, NULL),
('ilex-forest', 60, 'fishing_old', 15.00, 10, 10, NULL, NULL),
('ilex-forest', 60, 'fishing_good', 65.00, 20, 20, NULL, NULL),
('ilex-forest', 60, 'fishing_super', 80.00, 40, 40, NULL, NULL),
('ilex-forest', 129, 'fishing_old', 85.00, 10, 10, NULL, NULL),
('ilex-forest', 129, 'fishing_good', 35.00, 20, 20, NULL, NULL),
('ilex-forest', 129, 'fishing_super', 20.00, 40, 40, NULL, NULL),
('ilex-forest', 163, 'walking', 5.00, 7, 7, 'Night', NULL),
('ilex-forest', 163, 'headbutt', 160.00, 10, 10, NULL, NULL),
('ilex-forest', 164, 'headbutt', 20.00, 10, 10, NULL, NULL),
('ilex-forest', 204, 'headbutt', 60.00, 10, 10, NULL, NULL),
('ilex-forest', 251, 'static', 100.00, 30, 30, 'other-virtual-console', NULL),
('route-34', 16, 'walking', 20.00, 12, 12, 'Day', NULL),
('route-34', 16, 'walking', 20.00, 12, 12, 'Morning', NULL),
('route-34', 19, 'walking', 30.00, 11, 11, 'Day', NULL),
('route-34', 19, 'walking', 30.00, 11, 11, 'Morning', NULL),
('route-34', 19, 'walking', 30.00, 11, 11, 'Night', NULL),
('route-34', 39, 'walking', 5.00, 12, 12, 'Day', NULL),
('route-34', 39, 'walking', 5.00, 12, 12, 'Morning', NULL),
('route-34', 39, 'walking', 5.00, 12, 12, 'Night', NULL),
('route-34', 63, 'walking', 10.00, 10, 10, 'Day', NULL),
('route-34', 63, 'walking', 10.00, 10, 10, 'Morning', NULL),
('route-34', 63, 'walking', 10.00, 10, 10, 'Night', NULL),
('route-34', 72, 'surfing', 90.00, 15, 24, NULL, NULL),
('route-34', 73, 'surfing', 10.00, 20, 24, NULL, NULL),
('route-34', 96, 'walking', 30.00, 12, 12, 'Night', NULL),
('route-34', 98, 'fishing_old', 15.00, 10, 10, NULL, NULL),
('route-34', 98, 'fishing_good', 55.00, 20, 20, 'Day', NULL),
('route-34', 98, 'fishing_good', 55.00, 20, 20, 'Morning', NULL),
('route-34', 98, 'fishing_good', 55.00, 20, 20, 'Night', NULL),
('route-34', 98, 'fishing_super', 60.00, 40, 40, 'Day', NULL),
('route-34', 98, 'fishing_super', 60.00, 40, 40, 'Morning', NULL),
('route-34', 98, 'fishing_super', 60.00, 40, 40, 'Night', NULL),
('route-34', 99, 'fishing_super', 10.00, 40, 40, 'Day', NULL),
('route-34', 99, 'fishing_super', 10.00, 40, 40, 'Morning', NULL),
('route-34', 99, 'fishing_super', 10.00, 40, 40, 'Night', NULL),
('route-34', 102, 'headbutt', 60.00, 10, 10, NULL, NULL),
('route-34', 120, 'fishing_good', 10.00, 20, 20, 'Night', NULL),
('route-34', 120, 'fishing_super', 30.00, 40, 40, 'Night', NULL),
('route-34', 129, 'fishing_old', 85.00, 10, 10, NULL, NULL),
('route-34', 129, 'fishing_good', 35.00, 20, 20, 'Day', NULL),
('route-34', 129, 'fishing_good', 35.00, 20, 20, 'Morning', NULL),
('route-34', 129, 'fishing_good', 35.00, 20, 20, 'Night', NULL),
('route-34', 132, 'walking', 5.00, 10, 10, 'Day', NULL),
('route-34', 132, 'walking', 5.00, 10, 10, 'Morning', NULL),
('route-34', 132, 'walking', 5.00, 10, 10, 'Night', NULL),
('route-34', 163, 'walking', 20.00, 12, 12, 'Night', NULL),
('route-34', 163, 'headbutt', 150.00, 10, 10, NULL, NULL),
('route-34', 165, 'headbutt', 30.00, 10, 10, NULL, NULL),
('route-34', 167, 'headbutt', 30.00, 10, 10, NULL, NULL),
('route-34', 172, 'gift', 100.00, 5, 5, NULL, NULL),
('route-34', 173, 'gift', 100.00, 5, 5, NULL, NULL),
('route-34', 174, 'gift', 100.00, 5, 5, NULL, NULL),
('route-34', 204, 'headbutt', 30.00, 10, 10, NULL, NULL),
('route-34', 209, 'walking', 30.00, 10, 10, 'Day', NULL),
('route-34', 209, 'walking', 30.00, 10, 10, 'Morning', NULL),
('route-34', 222, 'fishing_good', 10.00, 20, 20, 'Day', NULL),
('route-34', 222, 'fishing_good', 10.00, 20, 20, 'Morning', NULL),
('route-34', 222, 'fishing_super', 30.00, 40, 40, 'Day', NULL),
('route-34', 222, 'fishing_super', 30.00, 40, 40, 'Morning', NULL),
('route-34', 236, 'gift', 100.00, 5, 5, NULL, NULL),
('route-34', 238, 'gift', 100.00, 5, 5, NULL, NULL),
('route-34', 239, 'gift', 100.00, 5, 5, NULL, NULL),
('route-34', 240, 'gift', 100.00, 5, 5, NULL, NULL),
('route-35', 16, 'walking', 30.00, 14, 14, 'Day', NULL),
('route-35', 16, 'walking', 30.00, 14, 14, 'Morning', NULL),
('route-35', 16, 'walking', 5.00, 14, 14, 'Swarm, Day', NULL),
('route-35', 16, 'walking', 5.00, 14, 14, 'Swarm, Morning', NULL),
('route-35', 29, 'walking', 30.00, 12, 12, 'Swarm, Day', NULL),
('route-35', 29, 'walking', 30.00, 12, 12, 'Swarm, Morning', NULL),
('route-35', 29, 'walking', 30.00, 12, 12, 'Swarm, Night', NULL),
('route-35', 32, 'walking', 30.00, 12, 12, 'Swarm, Day', NULL),
('route-35', 32, 'walking', 30.00, 12, 12, 'Swarm, Morning', NULL),
('route-35', 32, 'walking', 30.00, 12, 12, 'Swarm, Night', NULL),
('route-35', 39, 'walking', 5.00, 12, 12, 'Day', NULL),
('route-35', 39, 'walking', 5.00, 12, 12, 'Morning', NULL),
('route-35', 39, 'walking', 5.00, 12, 12, 'Night', NULL),
('route-35', 52, 'walking', 20.00, 13, 13, 'Night', NULL),
('route-35', 54, 'surfing', 90.00, 15, 24, NULL, NULL),
('route-35', 55, 'surfing', 10.00, 20, 24, NULL, NULL),
('route-35', 58, 'walking', 20.00, 13, 13, 'Day', NULL),
('route-35', 58, 'walking', 20.00, 13, 13, 'Morning', NULL),
('route-35', 60, 'fishing_old', 15.00, 10, 10, NULL, NULL),
('route-35', 60, 'fishing_good', 65.00, 20, 20, NULL, NULL),
('route-35', 60, 'fishing_super', 80.00, 40, 40, NULL, NULL),
('route-35', 63, 'walking', 10.00, 10, 10, 'Day', NULL),
('route-35', 63, 'walking', 10.00, 10, 10, 'Morning', NULL),
('route-35', 63, 'walking', 10.00, 10, 10, 'Night', NULL),
('route-35', 96, 'walking', 30.00, 12, 12, 'Night', NULL),
('route-35', 102, 'headbutt', 60.00, 10, 10, NULL, NULL),
('route-35', 129, 'fishing_old', 85.00, 10, 10, NULL, NULL),
('route-35', 129, 'fishing_good', 35.00, 20, 20, NULL, NULL),
('route-35', 129, 'fishing_super', 20.00, 40, 40, NULL, NULL),
('route-35', 132, 'walking', 4.00, 10, 10, 'Day', NULL),
('route-35', 132, 'walking', 4.00, 10, 10, 'Morning', NULL),
('route-35', 132, 'walking', 4.00, 10, 10, 'Night', NULL),
('route-35', 132, 'walking', 5.00, 10, 10, 'Swarm, Day', NULL),
('route-35', 132, 'walking', 5.00, 10, 10, 'Swarm, Morning', NULL),
('route-35', 132, 'walking', 5.00, 10, 10, 'Swarm, Night', NULL),
('route-35', 163, 'walking', 30.00, 14, 14, 'Night', NULL),
('route-35', 163, 'walking', 5.00, 14, 14, 'Swarm, Night', NULL),
('route-35', 163, 'headbutt', 150.00, 10, 10, NULL, NULL),
('route-35', 165, 'headbutt', 30.00, 10, 10, NULL, NULL),
('route-35', 167, 'headbutt', 30.00, 10, 10, NULL, NULL),
('route-35', 193, 'walking', 1.00, 12, 12, 'Day', NULL),
('route-35', 193, 'walking', 1.00, 12, 12, 'Morning', NULL),
('route-35', 193, 'walking', 1.00, 12, 12, 'Night', NULL),
('route-35', 193, 'walking', 30.00, 12, 14, 'Swarm, Day', NULL),
('route-35', 193, 'walking', 30.00, 12, 14, 'Swarm, Morning', NULL),
('route-35', 193, 'walking', 30.00, 12, 14, 'Swarm, Night', NULL),
('route-35', 204, 'headbutt', 30.00, 10, 10, NULL, NULL),
('route-35', 209, 'walking', 30.00, 12, 12, 'Day', NULL),
('route-35', 209, 'walking', 30.00, 12, 12, 'Morning', NULL),
('national-park', 10, 'walking', 5.00, 10, 10, 'Day', NULL),
('national-park', 10, 'walking', 5.00, 10, 10, 'Morning', NULL),
('national-park', 13, 'walking', 5.00, 10, 10, 'Day', NULL),
('national-park', 13, 'walking', 5.00, 10, 10, 'Morning', NULL),
('national-park', 16, 'walking', 10.00, 13, 13, 'Day', NULL),
('national-park', 16, 'walking', 10.00, 13, 13, 'Morning', NULL),
('national-park', 29, 'walking', 30.00, 12, 12, 'Day', NULL),
('national-park', 29, 'walking', 30.00, 12, 12, 'Morning', NULL),
('national-park', 32, 'walking', 30.00, 12, 12, 'Day', NULL),
('national-park', 32, 'walking', 30.00, 12, 12, 'Morning', NULL),
('national-park', 48, 'walking', 10.00, 10, 10, 'Night', NULL),
('national-park', 54, 'walking', 30.00, 12, 12, 'Night', NULL),
('national-park', 163, 'walking', 40.00, 12, 15, 'Night', NULL),
('national-park', 165, 'walking', 20.00, 14, 14, 'Morning', NULL),
('national-park', 167, 'walking', 20.00, 14, 14, 'Night', NULL),
('national-park', 191, 'walking', 20.00, 14, 14, 'Day', NULL),
('route-36', 16, 'walking', 70.00, 4, 6, 'Day', NULL),
('route-36', 16, 'walking', 40.00, 4, 6, 'Morning', NULL),
('route-36', 58, 'walking', 10.00, 5, 5, 'Day', NULL),
('route-36', 58, 'walking', 10.00, 5, 5, 'Morning', NULL),
('route-36', 69, 'walking', 20.00, 5, 5, 'Day', NULL),
('route-36', 69, 'walking', 20.00, 5, 5, 'Morning', NULL),
('route-36', 69, 'walking', 20.00, 5, 5, 'Night', NULL),
('route-36', 92, 'walking', 5.00, 5, 5, 'Night', NULL),
('route-36', 102, 'headbutt', 60.00, 10, 10, NULL, NULL),
('route-36', 163, 'walking', 45.00, 4, 5, 'Night', NULL),
('route-36', 163, 'headbutt', 150.00, 10, 10, NULL, NULL),
('route-36', 165, 'walking', 30.00, 4, 4, 'Morning', NULL),
('route-36', 165, 'headbutt', 30.00, 10, 10, NULL, NULL),
('route-36', 167, 'walking', 30.00, 4, 4, 'Night', NULL),
('route-36', 167, 'headbutt', 30.00, 10, 10, NULL, NULL),
('route-36', 185, 'static', 100.00, 20, 20, NULL, NULL),
('route-36', 204, 'headbutt', 30.00, 10, 10, NULL, NULL),
('route-37', 16, 'walking', 55.00, 13, 15, 'Day', NULL),
('route-37', 16, 'walking', 20.00, 15, 15, 'Morning', NULL),
('route-37', 17, 'walking', 5.00, 15, 15, 'Day', NULL),
('route-37', 17, 'walking', 5.00, 15, 15, 'Morning', NULL),
('route-37', 58, 'walking', 40.00, 14, 16, 'Day', NULL),
('route-37', 58, 'walking', 40.00, 14, 16, 'Morning', NULL),
('route-37', 102, 'headbutt', 60.00, 10, 10, NULL, NULL),
('route-37', 163, 'walking', 30.00, 13, 13, 'Morning', NULL),
('route-37', 163, 'walking', 20.00, 15, 15, 'Night', NULL),
('route-37', 163, 'headbutt', 150.00, 10, 10, NULL, NULL),
('route-37', 164, 'walking', 5.00, 15, 15, 'Morning', NULL),
('route-37', 164, 'walking', 5.00, 15, 15, 'Night', NULL),
('route-37', 165, 'headbutt', 30.00, 10, 10, NULL, NULL),
('route-37', 167, 'walking', 30.00, 13, 13, 'Night', NULL),
('route-37', 167, 'headbutt', 30.00, 10, 10, NULL, NULL),
('route-37', 168, 'walking', 5.00, 15, 15, 'Night', NULL),
('route-37', 204, 'headbutt', 30.00, 10, 10, NULL, NULL),
('route-37', 234, 'walking', 40.00, 14, 16, 'Night', NULL),
('burned-tower', 19, 'walking', 85.00, 13, 15, NULL, NULL),
('burned-tower', 20, 'walking', 5.00, 15, 15, NULL, NULL),
('burned-tower', 41, 'walking', 20.00, 14, 15, NULL, NULL),
('burned-tower', 109, 'walking', 89.00, 12, 16, NULL, NULL),
('burned-tower', 110, 'walking', 1.00, 16, 16, NULL, NULL),
('tin-tower', 245, 'static', 100.00, 40, 40, NULL, NULL),
('tin-tower', 19, 'walking', 800.00, 20, 24, 'Day', NULL),
('tin-tower', 19, 'walking', 800.00, 20, 24, 'Morning', NULL),
('tin-tower', 19, 'walking', 160.00, 22, 24, 'Night', NULL),
('tin-tower', 92, 'walking', 640.00, 20, 22, 'Night', NULL),
('route-38', 17, 'walking', 10.00, 16, 16, 'Day', NULL),
('route-38', 17, 'walking', 10.00, 16, 16, 'Morning', NULL),
('route-38', 19, 'walking', 30.00, 16, 16, 'Day', NULL),
('route-38', 19, 'walking', 30.00, 16, 16, 'Morning', NULL),
('route-38', 20, 'walking', 30.00, 16, 16, 'Day', NULL),
('route-38', 20, 'walking', 30.00, 16, 16, 'Morning', NULL),
('route-38', 20, 'walking', 30.00, 16, 16, 'Night', NULL),
('route-38', 52, 'walking', 40.00, 16, 16, 'Night', NULL),
('route-38', 81, 'walking', 20.00, 16, 16, 'Day', NULL),
('route-38', 81, 'walking', 20.00, 16, 16, 'Morning', NULL),
('route-38', 81, 'walking', 20.00, 16, 16, 'Night', NULL),
('route-38', 102, 'headbutt', 60.00, 10, 10, NULL, NULL),
('route-38', 128, 'walking', 5.00, 13, 13, 'Day', NULL),
('route-38', 128, 'walking', 5.00, 13, 13, 'Morning', NULL),
('route-38', 163, 'headbutt', 150.00, 10, 10, NULL, NULL),
('route-38', 164, 'walking', 10.00, 16, 16, 'Night', NULL),
('route-38', 165, 'headbutt', 30.00, 10, 10, NULL, NULL),
('route-38', 167, 'headbutt', 30.00, 10, 10, NULL, NULL),
('route-38', 204, 'headbutt', 30.00, 10, 10, NULL, NULL),
('route-38', 241, 'walking', 5.00, 13, 13, 'Day', NULL),
('route-38', 241, 'walking', 5.00, 13, 13, 'Morning', NULL),
('route-39', 17, 'walking', 10.00, 16, 16, 'Day', NULL),
('route-39', 17, 'walking', 10.00, 16, 16, 'Morning', NULL),
('route-39', 19, 'walking', 30.00, 16, 16, 'Day', NULL),
('route-39', 19, 'walking', 30.00, 16, 16, 'Morning', NULL),
('route-39', 20, 'walking', 30.00, 16, 16, 'Day', NULL),
('route-39', 20, 'walking', 30.00, 16, 16, 'Morning', NULL),
('route-39', 20, 'walking', 30.00, 16, 16, 'Night', NULL),
('route-39', 52, 'walking', 40.00, 16, 18, 'Night', NULL),
('route-39', 81, 'walking', 20.00, 16, 16, 'Day', NULL),
('route-39', 81, 'walking', 20.00, 16, 16, 'Morning', NULL),
('route-39', 81, 'walking', 20.00, 16, 16, 'Night', NULL),
('route-39', 102, 'headbutt', 60.00, 10, 10, NULL, NULL),
('route-39', 128, 'walking', 5.00, 15, 15, 'Day', NULL),
('route-39', 128, 'walking', 5.00, 15, 15, 'Morning', NULL),
('route-39', 163, 'headbutt', 150.00, 10, 10, NULL, NULL),
('route-39', 164, 'walking', 10.00, 16, 16, 'Night', NULL),
('route-39', 165, 'headbutt', 30.00, 10, 10, NULL, NULL),
('route-39', 167, 'headbutt', 30.00, 10, 10, NULL, NULL),
('route-39', 204, 'headbutt', 30.00, 10, 10, NULL, NULL),
('route-39', 241, 'walking', 5.00, 15, 15, 'Day', NULL),
('route-39', 241, 'walking', 5.00, 15, 15, 'Morning', NULL),
('route-40', 72, 'surfing', 90.00, 15, 24, NULL, NULL),
('route-40', 73, 'surfing', 10.00, 20, 24, NULL, NULL),
('route-40', 98, 'fishing_old', 15.00, 10, 10, NULL, NULL),
('route-40', 98, 'fishing_good', 55.00, 20, 20, 'Day', NULL),
('route-40', 98, 'fishing_good', 55.00, 20, 20, 'Morning', NULL),
('route-40', 98, 'fishing_good', 55.00, 20, 20, 'Night', NULL),
('route-40', 98, 'fishing_super', 60.00, 40, 40, 'Day', NULL),
('route-40', 98, 'fishing_super', 60.00, 40, 40, 'Morning', NULL),
('route-40', 98, 'fishing_super', 60.00, 40, 40, 'Night', NULL),
('route-40', 98, 'rock_smash', 90.00, 15, 15, NULL, NULL),
('route-40', 99, 'fishing_super', 10.00, 40, 40, 'Day', NULL),
('route-40', 99, 'fishing_super', 10.00, 40, 40, 'Morning', NULL),
('route-40', 99, 'fishing_super', 10.00, 40, 40, 'Night', NULL),
('route-40', 120, 'fishing_good', 10.00, 20, 20, 'Night', NULL),
('route-40', 120, 'fishing_super', 30.00, 40, 40, 'Night', NULL),
('route-40', 129, 'fishing_old', 85.00, 10, 10, NULL, NULL),
('route-40', 129, 'fishing_good', 35.00, 20, 20, 'Day', NULL),
('route-40', 129, 'fishing_good', 35.00, 20, 20, 'Morning', NULL),
('route-40', 129, 'fishing_good', 35.00, 20, 20, 'Night', NULL),
('route-40', 213, 'rock_smash', 10.00, 15, 15, NULL, NULL),
('route-40', 222, 'fishing_good', 10.00, 20, 20, 'Day', NULL),
('route-40', 222, 'fishing_good', 10.00, 20, 20, 'Morning', NULL),
('route-40', 222, 'fishing_super', 30.00, 40, 40, 'Day', NULL),
('route-40', 222, 'fishing_super', 30.00, 40, 40, 'Morning', NULL),
('route-41', 72, 'fishing_old', 15.00, 10, 10, NULL, NULL),
('route-41', 72, 'fishing_good', 35.00, 20, 20, NULL, NULL),
('route-41', 72, 'surfing', 60.00, 20, 24, NULL, NULL),
('route-41', 73, 'fishing_super', 20.00, 40, 40, NULL, NULL),
('route-41', 73, 'surfing', 30.00, 20, 24, NULL, NULL),
('route-41', 90, 'fishing_good', 10.00, 20, 20, NULL, NULL),
('route-41', 90, 'fishing_super', 30.00, 40, 40, NULL, NULL),
('route-41', 129, 'fishing_old', 85.00, 10, 10, NULL, NULL),
('route-41', 129, 'fishing_good', 35.00, 20, 20, NULL, NULL),
('route-41', 170, 'fishing_good', 20.00, 20, 20, NULL, NULL),
('route-41', 170, 'fishing_super', 40.00, 40, 40, NULL, NULL),
('route-41', 171, 'fishing_super', 10.00, 40, 40, NULL, NULL),
('route-41', 226, 'surfing', 10.00, 20, 24, NULL, NULL),
('route-42', 19, 'walking', 20.00, 15, 15, 'Day', NULL),
('route-42', 19, 'walking', 20.00, 15, 15, 'Morning', NULL),
('route-42', 19, 'walking', 30.00, 13, 13, 'Night', NULL),
('route-42', 20, 'walking', 10.00, 16, 16, 'Day', NULL),
('route-42', 20, 'walking', 10.00, 16, 16, 'Morning', NULL),
('route-42', 20, 'walking', 20.00, 15, 15, 'Night', NULL),
('route-42', 21, 'walking', 30.00, 14, 14, 'Day', NULL),
('route-42', 21, 'walking', 30.00, 14, 14, 'Morning', NULL),
('route-42', 21, 'headbutt', 180.00, 10, 10, NULL, NULL),
('route-42', 22, 'walking', 5.00, 16, 16, 'Day', NULL),
('route-42', 22, 'walking', 5.00, 16, 16, 'Morning', NULL),
('route-42', 23, 'walking', 30.00, 13, 13, 'Day', NULL),
('route-42', 23, 'walking', 30.00, 13, 13, 'Morning', NULL),
('route-42', 23, 'headbutt', 30.00, 10, 10, NULL, NULL),
('route-42', 24, 'walking', 5.00, 15, 15, 'Day', NULL),
('route-42', 24, 'walking', 5.00, 15, 15, 'Morning', NULL),
('route-42', 41, 'walking', 30.00, 14, 14, 'Night', NULL),
('route-42', 42, 'walking', 14.00, 16, 16, 'Night', NULL),
('route-42', 42, 'walking', 1.00, 16, 16, NULL, NULL),
('route-42', 118, 'fishing_old', 15.00, 10, 10, NULL, NULL),
('route-42', 118, 'fishing_good', 65.00, 20, 20, NULL, NULL),
('route-42', 118, 'fishing_super', 70.00, 40, 40, NULL, NULL),
('route-42', 118, 'surfing', 90.00, 15, 24, NULL, NULL),
('route-42', 119, 'fishing_super', 10.00, 40, 40, NULL, NULL),
('route-42', 119, 'surfing', 10.00, 20, 24, NULL, NULL),
('route-42', 129, 'fishing_old', 85.00, 10, 10, NULL, NULL),
('route-42', 129, 'fishing_good', 35.00, 20, 20, NULL, NULL),
('route-42', 129, 'fishing_super', 20.00, 40, 40, NULL, NULL),
('route-42', 183, 'walking', 5.00, 15, 15, 'Night', NULL),
('route-42', 190, 'headbutt', 60.00, 10, 10, NULL, NULL),
('route-42', 214, 'headbutt', 30.00, 10, 10, NULL, NULL),
('mt-mortar', 19, 'walking', 60.00, 14, 14, 'Day', NULL),
('mt-mortar', 19, 'walking', 60.00, 14, 14, 'Morning', NULL),
('mt-mortar', 19, 'walking', 60.00, 14, 14, 'Night', NULL),
('mt-mortar', 20, 'walking', 30.00, 14, 30, 'Day', NULL),
('mt-mortar', 20, 'walking', 30.00, 14, 30, 'Morning', NULL),
('mt-mortar', 20, 'walking', 50.00, 15, 30, 'Night', NULL),
('mt-mortar', 41, 'walking', 95.00, 13, 17, 'Day', NULL),
('mt-mortar', 41, 'walking', 95.00, 13, 17, 'Morning', NULL),
('mt-mortar', 41, 'walking', 100.00, 13, 17, 'Night', NULL),
('mt-mortar', 42, 'walking', 40.00, 13, 30, 'Day', NULL),
('mt-mortar', 42, 'walking', 40.00, 13, 30, 'Morning', NULL),
('mt-mortar', 42, 'walking', 50.00, 13, 30, 'Night', NULL),
('mt-mortar', 66, 'walking', 55.00, 14, 28, 'Day', NULL),
('mt-mortar', 66, 'walking', 55.00, 14, 28, 'Morning', NULL),
('mt-mortar', 74, 'walking', 60.00, 13, 31, 'Day', NULL),
('mt-mortar', 74, 'walking', 60.00, 13, 31, 'Morning', NULL),
('mt-mortar', 74, 'walking', 70.00, 13, 31, 'Night', NULL),
('mt-mortar', 118, 'fishing_old', 45.00, 10, 10, NULL, NULL),
('mt-mortar', 118, 'fishing_good', 195.00, 20, 20, NULL, NULL),
('mt-mortar', 118, 'fishing_super', 210.00, 40, 40, NULL, NULL),
('mt-mortar', 118, 'surfing', 180.00, 15, 24, NULL, NULL),
('mt-mortar', 119, 'fishing_super', 30.00, 40, 40, NULL, NULL),
('mt-mortar', 119, 'surfing', 30.00, 20, 29, NULL, NULL),
('mt-mortar', 129, 'fishing_old', 255.00, 10, 10, NULL, NULL),
('mt-mortar', 129, 'fishing_good', 105.00, 20, 20, NULL, NULL),
('mt-mortar', 129, 'fishing_super', 60.00, 40, 40, NULL, NULL),
('mt-mortar', 183, 'walking', 40.00, 14, 28, 'Night', NULL),
('mt-mortar', 183, 'surfing', 90.00, 20, 29, NULL, NULL),
('mt-mortar', 67, 'walking', 30.00, 32, 32, 'Day', NULL),
('mt-mortar', 67, 'walking', 30.00, 32, 32, 'Morning', NULL),
('mt-mortar', 75, 'walking', 30.00, 31, 31, 'Day', NULL),
('mt-mortar', 75, 'walking', 30.00, 31, 31, 'Morning', NULL),
('mt-mortar', 75, 'walking', 30.00, 31, 31, 'Night', NULL),
('mt-mortar', 236, 'gift', 100.00, 10, 10, NULL, NULL),
('route-43', 17, 'walking', 30.00, 16, 16, 'Day', NULL),
('route-43', 17, 'walking', 30.00, 16, 16, 'Morning', NULL),
('route-43', 20, 'walking', 5.00, 17, 17, 'Day', NULL),
('route-43', 20, 'walking', 5.00, 17, 17, 'Morning', NULL),
('route-43', 20, 'walking', 25.00, 16, 17, 'Night', NULL),
('route-43', 48, 'walking', 40.00, 15, 17, 'Night', NULL),
('route-43', 48, 'headbutt', 30.00, 10, 10, NULL, NULL),
('route-43', 49, 'walking', 5.00, 17, 17, 'Night', NULL),
('route-43', 60, 'fishing_old', 15.00, 10, 10, NULL, NULL),
('route-43', 60, 'fishing_good', 65.00, 20, 20, NULL, NULL),
('route-43', 60, 'fishing_super', 80.00, 40, 40, NULL, NULL),
('route-43', 83, 'walking', 20.00, 16, 16, 'Day', NULL),
('route-43', 83, 'walking', 20.00, 16, 16, 'Morning', NULL),
('route-43', 102, 'headbutt', 60.00, 10, 10, NULL, NULL),
('route-43', 129, 'fishing_old', 85.00, 10, 10, NULL, NULL),
('route-43', 129, 'fishing_good', 35.00, 20, 20, NULL, NULL),
('route-43', 129, 'fishing_super', 20.00, 40, 40, NULL, NULL),
('route-43', 129, 'surfing', 100.00, 10, 24, NULL, NULL),
('route-43', 161, 'walking', 30.00, 15, 15, 'Day', NULL),
('route-43', 161, 'walking', 30.00, 15, 15, 'Morning', NULL),
('route-43', 162, 'walking', 15.00, 15, 17, 'Day', NULL),
('route-43', 162, 'walking', 15.00, 15, 17, 'Morning', NULL),
('route-43', 163, 'walking', 30.00, 16, 16, 'Night', NULL),
('route-43', 163, 'headbutt', 180.00, 10, 10, NULL, NULL),
('route-43', 204, 'headbutt', 30.00, 10, 10, NULL, NULL),
('lake-of-rage', 48, 'headbutt', 30.00, 10, 10, NULL, NULL),
('lake-of-rage', 102, 'headbutt', 60.00, 10, 10, NULL, NULL),
('lake-of-rage', 129, 'fishing_old', 100.00, 10, 10, NULL, NULL),
('lake-of-rage', 129, 'fishing_good', 90.00, 20, 20, NULL, NULL),
('lake-of-rage', 129, 'fishing_super', 70.00, 40, 40, NULL, NULL),
('lake-of-rage', 129, 'surfing', 90.00, 10, 19, NULL, NULL),
('lake-of-rage', 130, 'fishing_good', 10.00, 20, 20, NULL, NULL),
('lake-of-rage', 130, 'fishing_super', 30.00, 40, 40, NULL, NULL),
('lake-of-rage', 130, 'surfing', 10.00, 15, 19, NULL, NULL),
('lake-of-rage', 130, 'static', 100.00, 30, 30, NULL, NULL),
('lake-of-rage', 163, 'headbutt', 180.00, 10, 10, NULL, NULL),
('lake-of-rage', 204, 'headbutt', 30.00, 10, 10, NULL, NULL),
('route-44', 21, 'headbutt', 210.00, 10, 10, NULL, NULL),
('route-44', 60, 'walking', 30.00, 22, 22, 'Night', NULL),
('route-44', 60, 'fishing_old', 15.00, 10, 10, NULL, NULL),
('route-44', 60, 'fishing_good', 65.00, 20, 20, NULL, NULL),
('route-44', 60, 'fishing_super', 80.00, 40, 40, NULL, NULL),
('route-44', 60, 'surfing', 90.00, 20, 29, NULL, NULL),
('route-44', 61, 'walking', 10.00, 24, 26, 'Night', NULL),
('route-44', 61, 'surfing', 10.00, 25, 29, NULL, NULL),
('route-44', 69, 'walking', 20.00, 22, 22, 'Day', NULL),
('route-44', 69, 'walking', 20.00, 22, 22, 'Morning', NULL),
('route-44', 69, 'walking', 20.00, 22, 22, 'Night', NULL),
('route-44', 70, 'walking', 10.00, 24, 24, 'Day', NULL),
('route-44', 70, 'walking', 10.00, 24, 24, 'Morning', NULL),
('route-44', 70, 'walking', 10.00, 24, 24, 'Night', NULL),
('route-44', 108, 'walking', 40.00, 22, 26, 'Day', NULL),
('route-44', 108, 'walking', 40.00, 22, 26, 'Morning', NULL),
('route-44', 114, 'walking', 30.00, 23, 23, 'Day', NULL),
('route-44', 114, 'walking', 30.00, 23, 23, 'Morning', NULL),
('route-44', 114, 'walking', 30.00, 23, 23, 'Night', NULL),
('route-44', 129, 'fishing_old', 85.00, 10, 10, NULL, NULL),
('route-44', 129, 'fishing_good', 35.00, 20, 20, NULL, NULL),
('route-44', 129, 'fishing_super', 20.00, 40, 40, NULL, NULL),
('route-44', 190, 'headbutt', 60.00, 10, 10, NULL, NULL),
('route-44', 214, 'headbutt', 30.00, 10, 10, NULL, NULL),
('ice-path', 42, 'walking', 224.00, 22, 26, 'Day', NULL),
('ice-path', 42, 'walking', 224.00, 22, 26, 'Morning', NULL),
('ice-path', 42, 'walking', 224.00, 22, 26, 'Night', NULL),
('ice-path', 220, 'walking', 160.00, 21, 26, 'Day', NULL),
('ice-path', 220, 'walking', 160.00, 21, 26, 'Morning', NULL),
('ice-path', 225, 'walking', 160.00, 21, 26, 'Night', NULL),
('ice-path', 124, 'walking', 16.00, 22, 26, 'Day', NULL),
('ice-path', 124, 'walking', 16.00, 22, 26, 'Morning', NULL),
('ice-path', 215, 'walking', 16.00, 22, 26, 'Night', NULL),
('dragons-den', 129, 'fishing_old', 100.00, 10, 10, NULL, NULL),
('dragons-den', 129, 'fishing_good', 90.00, 20, 20, NULL, NULL),
('dragons-den', 129, 'fishing_super', 60.00, 40, 40, NULL, NULL),
('dragons-den', 129, 'surfing', 90.00, 10, 19, NULL, NULL),
('dragons-den', 147, 'gift', 100.00, 15, 15, NULL, NULL),
('dragons-den', 147, 'fishing_good', 10.00, 20, 20, NULL, NULL),
('dragons-den', 147, 'fishing_super', 30.00, 40, 40, NULL, NULL),
('dragons-den', 147, 'surfing', 10.00, 10, 14, NULL, NULL),
('dragons-den', 148, 'fishing_super', 10.00, 40, 40, NULL, NULL),
('route-45', 21, 'headbutt', 210.00, 10, 10, NULL, NULL),
('route-45', 74, 'walking', 30.00, 23, 23, 'Day', NULL),
('route-45', 74, 'walking', 30.00, 23, 23, 'Morning', NULL),
('route-45', 74, 'walking', 30.00, 23, 23, 'Night', NULL),
('route-45', 75, 'walking', 30.00, 23, 23, 'Day', NULL),
('route-45', 75, 'walking', 30.00, 23, 23, 'Morning', NULL),
('route-45', 75, 'walking', 50.00, 23, 27, 'Night', NULL),
('route-45', 129, 'fishing_old', 100.00, 10, 10, NULL, NULL),
('route-45', 129, 'fishing_good', 90.00, 20, 20, NULL, NULL),
('route-45', 129, 'fishing_super', 60.00, 40, 40, NULL, NULL),
('route-45', 129, 'surfing', 100.00, 5, 24, NULL, NULL),
('route-45', 147, 'fishing_good', 10.00, 20, 20, NULL, NULL),
('route-45', 147, 'fishing_super', 30.00, 40, 40, NULL, NULL),
('route-45', 148, 'fishing_super', 10.00, 40, 40, NULL, NULL),
('route-45', 190, 'headbutt', 60.00, 10, 10, NULL, NULL),
('route-45', 207, 'walking', 20.00, 24, 24, 'Day', NULL),
('route-45', 207, 'walking', 20.00, 24, 24, 'Morning', NULL),
('route-45', 207, 'walking', 20.00, 24, 24, 'Night', NULL),
('route-45', 214, 'headbutt', 30.00, 10, 10, NULL, NULL),
('route-45', 227, 'walking', 5.00, 27, 27, 'Day', NULL),
('route-45', 227, 'walking', 5.00, 27, 27, 'Morning', NULL),
('route-45', 231, 'walking', 5.00, 20, 20, 'Morning', NULL),
('route-45', 232, 'walking', 15.00, 25, 30, 'Day', NULL),
('route-45', 232, 'walking', 10.00, 25, 25, 'Morning', NULL),
('dark-cave-blackthorn', 41, 'walking', 30.00, 23, 23, 'Day', NULL),
('dark-cave-blackthorn', 41, 'walking', 30.00, 23, 23, 'Morning', NULL),
('dark-cave-blackthorn', 41, 'walking', 30.00, 23, 23, 'Night', NULL),
('dark-cave-blackthorn', 42, 'walking', 5.00, 23, 23, 'Day', NULL),
('dark-cave-blackthorn', 42, 'walking', 5.00, 23, 23, 'Morning', NULL),
('dark-cave-blackthorn', 42, 'walking', 5.00, 23, 23, 'Night', NULL),
('dark-cave-blackthorn', 74, 'walking', 30.00, 23, 23, 'Day', NULL),
('dark-cave-blackthorn', 74, 'walking', 30.00, 23, 23, 'Morning', NULL),
('dark-cave-blackthorn', 74, 'walking', 30.00, 23, 23, 'Night', NULL),
('dark-cave-blackthorn', 75, 'walking', 20.00, 25, 25, 'Day', NULL),
('dark-cave-blackthorn', 75, 'walking', 20.00, 25, 25, 'Morning', NULL),
('dark-cave-blackthorn', 75, 'walking', 20.00, 25, 25, 'Night', NULL),
('dark-cave-blackthorn', 118, 'fishing_old', 15.00, 10, 10, NULL, NULL),
('dark-cave-blackthorn', 118, 'fishing_good', 65.00, 20, 20, NULL, NULL),
('dark-cave-blackthorn', 118, 'fishing_super', 70.00, 40, 40, NULL, NULL),
('dark-cave-blackthorn', 119, 'fishing_super', 10.00, 40, 40, NULL, NULL),
('dark-cave-blackthorn', 129, 'fishing_old', 85.00, 10, 10, NULL, NULL),
('dark-cave-blackthorn', 129, 'fishing_good', 35.00, 20, 20, NULL, NULL),
('dark-cave-blackthorn', 129, 'fishing_super', 20.00, 40, 40, NULL, NULL),
('dark-cave-blackthorn', 129, 'surfing', 100.00, 5, 19, NULL, NULL),
('dark-cave-blackthorn', 202, 'walking', 15.00, 20, 25, 'Night', NULL),
('dark-cave-blackthorn', 216, 'walking', 5.00, 20, 20, 'Morning', NULL),
('dark-cave-blackthorn', 217, 'walking', 15.00, 20, 30, 'Day', NULL),
('dark-cave-blackthorn', 217, 'walking', 10.00, 25, 25, 'Morning', NULL),
('whirl-islands', 41, 'walking', 120.00, 23, 26, 'Day', NULL),
('whirl-islands', 41, 'walking', 120.00, 23, 26, 'Morning', NULL),
('whirl-islands', 41, 'walking', 120.00, 23, 26, 'Night', NULL),
('whirl-islands', 42, 'walking', 20.00, 25, 28, 'Day', NULL),
('whirl-islands', 42, 'walking', 20.00, 25, 28, 'Morning', NULL),
('whirl-islands', 42, 'walking', 35.00, 23, 28, 'Night', NULL),
('whirl-islands', 72, 'surfing', 60.00, 20, 24, NULL, NULL),
('whirl-islands', 73, 'surfing', 50.00, 20, 24, NULL, NULL),
('whirl-islands', 86, 'walking', 100.00, 22, 27, 'Day', NULL),
('whirl-islands', 86, 'walking', 100.00, 22, 27, 'Morning', NULL),
('whirl-islands', 86, 'walking', 15.00, 24, 24, 'Night', NULL),
('whirl-islands', 98, 'walking', 160.00, 22, 27, 'Day', NULL),
('whirl-islands', 98, 'walking', 160.00, 22, 27, 'Morning', NULL),
('whirl-islands', 98, 'walking', 230.00, 22, 27, 'Night', NULL),
('whirl-islands', 98, 'fishing_old', 45.00, 10, 10, NULL, NULL),
('whirl-islands', 98, 'fishing_good', 165.00, 20, 20, NULL, NULL),
('whirl-islands', 98, 'fishing_super', 120.00, 40, 40, NULL, NULL),
('whirl-islands', 99, 'fishing_super', 60.00, 40, 40, NULL, NULL),
('whirl-islands', 116, 'fishing_good', 30.00, 20, 20, NULL, NULL),
('whirl-islands', 116, 'fishing_super', 90.00, 40, 40, NULL, NULL),
('whirl-islands', 116, 'surfing', 180.00, 15, 24, NULL, NULL),
('whirl-islands', 117, 'fishing_super', 30.00, 40, 40, NULL, NULL),
('whirl-islands', 129, 'fishing_old', 255.00, 10, 10, NULL, NULL),
('whirl-islands', 129, 'fishing_good', 105.00, 20, 20, NULL, NULL),
('whirl-islands', 249, 'static', 100.00, 60, 60, NULL, NULL),
('whirl-islands', 117, 'surfing', 10.00, 20, 24, NULL, NULL),
('route-27', 20, 'walking', 20.00, 30, 30, 'Day', NULL),
('route-27', 20, 'walking', 20.00, 30, 30, 'Morning', NULL),
('route-27', 20, 'walking', 20.00, 30, 30, 'Night', NULL),
('route-27', 23, 'headbutt', 30.00, 10, 10, NULL, NULL),
('route-27', 24, 'walking', 30.00, 28, 28, 'Day', NULL),
('route-27', 24, 'walking', 30.00, 28, 28, 'Morning', NULL),
('route-27', 72, 'fishing_old', 15.00, 10, 10, NULL, NULL),
('route-27', 72, 'fishing_good', 35.00, 20, 20, NULL, NULL),
('route-27', 72, 'surfing', 90.00, 15, 24, NULL, NULL),
('route-27', 73, 'fishing_super', 20.00, 40, 40, NULL, NULL),
('route-27', 73, 'surfing', 10.00, 20, 24, NULL, NULL),
('route-27', 77, 'walking', 5.00, 32, 32, 'Day', NULL),
('route-27', 77, 'walking', 5.00, 32, 32, 'Morning', NULL),
('route-27', 84, 'walking', 40.00, 28, 30, 'Day', NULL),
('route-27', 84, 'walking', 40.00, 28, 30, 'Morning', NULL),
('route-27', 85, 'walking', 5.00, 30, 30, 'Day', NULL),
('route-27', 85, 'walking', 5.00, 30, 30, 'Morning', NULL),
('route-27', 90, 'fishing_good', 10.00, 20, 20, NULL, NULL),
('route-27', 90, 'fishing_super', 30.00, 40, 40, NULL, NULL),
('route-27', 102, 'headbutt', 60.00, 10, 10, NULL, NULL),
('route-27', 129, 'fishing_old', 85.00, 10, 10, NULL, NULL),
('route-27', 129, 'fishing_good', 35.00, 20, 20, NULL, NULL),
('route-27', 163, 'headbutt', 180.00, 10, 10, NULL, NULL),
('route-27', 164, 'walking', 40.00, 28, 32, 'Night', NULL),
('route-27', 170, 'fishing_good', 20.00, 20, 20, NULL, NULL),
('route-27', 170, 'fishing_super', 40.00, 40, 40, NULL, NULL),
('route-27', 171, 'fishing_super', 10.00, 40, 40, NULL, NULL),
('route-27', 195, 'walking', 40.00, 28, 30, 'Night', NULL),
('route-27', 204, 'headbutt', 30.00, 10, 10, NULL, NULL),
('tohjo-falls', 19, 'walking', 5.00, 20, 20, NULL, NULL),
('tohjo-falls', 20, 'walking', 30.00, 22, 22, NULL, NULL),
('tohjo-falls', 41, 'walking', 30.00, 22, 22, NULL, NULL),
('tohjo-falls', 42, 'walking', 20.00, 24, 24, NULL, NULL),
('tohjo-falls', 79, 'walking', 15.00, 21, 23, NULL, NULL),
('tohjo-falls', 79, 'surfing', 30.00, 20, 24, NULL, NULL),
('tohjo-falls', 118, 'fishing_old', 15.00, 10, 10, NULL, NULL),
('tohjo-falls', 118, 'fishing_good', 65.00, 20, 20, NULL, NULL),
('tohjo-falls', 118, 'fishing_super', 70.00, 40, 40, NULL, NULL),
('tohjo-falls', 118, 'surfing', 60.00, 20, 24, NULL, NULL),
('tohjo-falls', 119, 'fishing_super', 10.00, 40, 40, NULL, NULL),
('tohjo-falls', 119, 'surfing', 10.00, 20, 24, NULL, NULL),
('tohjo-falls', 129, 'fishing_old', 85.00, 10, 10, NULL, NULL),
('tohjo-falls', 129, 'fishing_good', 35.00, 20, 20, NULL, NULL),
('tohjo-falls', 129, 'fishing_super', 20.00, 40, 40, NULL, NULL),
('route-26', 20, 'walking', 10.00, 30, 30, 'Day', NULL),
('route-26', 20, 'walking', 10.00, 30, 30, 'Morning', NULL),
('route-26', 20, 'walking', 40.00, 28, 30, 'Night', NULL),
('route-26', 23, 'headbutt', 30.00, 10, 10, NULL, NULL),
('route-26', 24, 'walking', 5.00, 30, 30, 'Day', NULL),
('route-26', 24, 'walking', 5.00, 30, 30, 'Morning', NULL),
('route-26', 28, 'walking', 30.00, 28, 28, 'Day', NULL),
('route-26', 28, 'walking', 30.00, 28, 28, 'Morning', NULL),
('route-26', 72, 'fishing_old', 15.00, 10, 10, NULL, NULL),
('route-26', 72, 'fishing_good', 35.00, 20, 20, NULL, NULL),
('route-26', 72, 'surfing', 90.00, 25, 34, NULL, NULL),
('route-26', 73, 'fishing_super', 20.00, 40, 40, NULL, NULL),
('route-26', 73, 'surfing', 10.00, 30, 34, NULL, NULL),
('route-26', 77, 'walking', 20.00, 32, 32, 'Day', NULL),
('route-26', 77, 'walking', 20.00, 32, 32, 'Morning', NULL),
('route-26', 84, 'walking', 35.00, 28, 30, 'Day', NULL),
('route-26', 84, 'walking', 35.00, 28, 30, 'Morning', NULL),
('route-26', 90, 'fishing_good', 10.00, 20, 20, NULL, NULL),
('route-26', 90, 'fishing_super', 30.00, 40, 40, NULL, NULL),
('route-26', 102, 'headbutt', 60.00, 10, 10, NULL, NULL),
('route-26', 129, 'fishing_old', 85.00, 10, 10, NULL, NULL),
('route-26', 129, 'fishing_good', 35.00, 20, 20, NULL, NULL),
('route-26', 163, 'headbutt', 180.00, 10, 10, NULL, NULL),
('route-26', 164, 'walking', 50.00, 28, 32, 'Night', NULL),
('route-26', 170, 'fishing_good', 20.00, 20, 20, NULL, NULL),
('route-26', 170, 'fishing_super', 40.00, 40, 40, NULL, NULL),
('route-26', 171, 'fishing_super', 10.00, 40, 40, NULL, NULL),
('route-26', 195, 'walking', 10.00, 30, 30, 'Night', NULL),
('route-26', 204, 'headbutt', 30.00, 10, 10, NULL, NULL),
('route-6', 19, 'walking', 30.00, 13, 13, 'Day', NULL),
('route-6', 19, 'walking', 30.00, 13, 13, 'Morning', NULL),
('route-6', 20, 'walking', 10.00, 15, 15, 'Day', NULL),
('route-6', 20, 'walking', 10.00, 15, 15, 'Morning', NULL),
('route-6', 20, 'walking', 5.00, 15, 15, 'Night', NULL),
('route-6', 39, 'walking', 5.00, 12, 12, 'Day', NULL),
('route-6', 39, 'walking', 5.00, 12, 12, 'Morning', NULL),
('route-6', 39, 'walking', 5.00, 12, 12, 'Night', NULL),
('route-6', 52, 'walking', 30.00, 13, 13, 'Night', NULL),
('route-6', 54, 'walking', 10.00, 15, 15, 'Night', NULL),
('route-6', 54, 'surfing', 90.00, 5, 14, NULL, NULL),
('route-6', 55, 'surfing', 10.00, 10, 14, NULL, NULL),
('route-6', 60, 'fishing_old', 15.00, 10, 10, NULL, NULL),
('route-6', 60, 'fishing_good', 65.00, 20, 20, NULL, NULL),
('route-6', 60, 'fishing_super', 80.00, 40, 40, NULL, NULL),
('route-6', 81, 'walking', 20.00, 14, 14, 'Day', NULL),
('route-6', 81, 'walking', 20.00, 14, 14, 'Morning', NULL),
('route-6', 81, 'walking', 20.00, 14, 14, 'Night', NULL),
('route-6', 96, 'walking', 30.00, 13, 13, 'Night', NULL),
('route-6', 129, 'fishing_old', 85.00, 10, 10, NULL, NULL),
('route-6', 129, 'fishing_good', 35.00, 20, 20, NULL, NULL),
('route-6', 129, 'fishing_super', 20.00, 40, 40, NULL, NULL),
('route-6', 209, 'walking', 30.00, 13, 13, 'Day', NULL),
('route-6', 209, 'walking', 30.00, 13, 13, 'Morning', NULL),
('route-6', 210, 'walking', 5.00, 15, 15, 'Day', NULL),
('route-6', 210, 'walking', 5.00, 15, 15, 'Morning', NULL),
('route-5', 16, 'walking', 30.00, 13, 13, 'Day', NULL),
('route-5', 16, 'walking', 30.00, 13, 13, 'Morning', NULL),
('route-5', 17, 'walking', 20.00, 15, 15, 'Day', NULL),
('route-5', 17, 'walking', 20.00, 15, 15, 'Morning', NULL),
('route-5', 39, 'walking', 5.00, 14, 14, 'Day', NULL),
('route-5', 39, 'walking', 5.00, 14, 14, 'Morning', NULL),
('route-5', 39, 'walking', 5.00, 14, 14, 'Night', NULL),
('route-5', 52, 'walking', 30.00, 13, 13, 'Night', NULL),
('route-5', 63, 'walking', 15.00, 12, 14, 'Day', NULL),
('route-5', 63, 'walking', 15.00, 12, 14, 'Morning', NULL),
('route-5', 63, 'walking', 15.00, 12, 14, 'Night', NULL),
('route-5', 163, 'walking', 30.00, 13, 13, 'Night', NULL),
('route-5', 164, 'walking', 20.00, 15, 15, 'Night', NULL),
('route-5', 209, 'walking', 30.00, 13, 13, 'Day', NULL),
('route-5', 209, 'walking', 30.00, 13, 13, 'Morning', NULL),
('route-24', 10, 'walking', 50.00, 8, 10, 'Day', NULL),
('route-24', 10, 'walking', 60.00, 8, 10, 'Morning', NULL),
('route-24', 11, 'walking', 20.00, 12, 12, 'Morning', NULL),
('route-24', 12, 'walking', 5.00, 14, 14, 'Day', NULL),
('route-24', 12, 'walking', 5.00, 14, 14, 'Morning', NULL),
('route-24', 43, 'walking', 50.00, 10, 12, 'Night', NULL),
('route-24', 44, 'walking', 5.00, 14, 14, 'Night', NULL),
('route-24', 48, 'walking', 30.00, 10, 10, 'Night', NULL),
('route-24', 63, 'walking', 10.00, 12, 12, 'Day', NULL),
('route-24', 63, 'walking', 10.00, 12, 12, 'Morning', NULL),
('route-24', 63, 'walking', 10.00, 12, 12, 'Night', NULL),
('route-24', 69, 'walking', 5.00, 10, 10, 'Day', NULL),
('route-24', 69, 'walking', 5.00, 10, 10, 'Morning', NULL),
('route-24', 69, 'walking', 5.00, 10, 10, 'Night', NULL),
('route-24', 118, 'fishing_old', 15.00, 10, 10, NULL, NULL),
('route-24', 118, 'fishing_good', 65.00, 20, 20, NULL, NULL),
('route-24', 118, 'fishing_super', 70.00, 40, 40, NULL, NULL),
('route-24', 118, 'surfing', 90.00, 4, 14, NULL, NULL),
('route-24', 119, 'fishing_super', 10.00, 40, 40, NULL, NULL),
('route-24', 119, 'surfing', 10.00, 10, 14, NULL, NULL),
('route-24', 129, 'fishing_old', 85.00, 10, 10, NULL, NULL),
('route-24', 129, 'fishing_good', 35.00, 20, 20, NULL, NULL),
('route-24', 129, 'fishing_super', 20.00, 40, 40, NULL, NULL),
('route-24', 191, 'walking', 30.00, 12, 12, 'Day', NULL),
('route-25', 10, 'walking', 30.00, 10, 10, 'Day', NULL),
('route-25', 10, 'walking', 30.00, 10, 10, 'Morning', NULL),
('route-25', 11, 'walking', 10.00, 12, 12, 'Day', NULL),
('route-25', 11, 'walking', 10.00, 12, 12, 'Morning', NULL),
('route-25', 12, 'walking', 5.00, 14, 14, 'Day', NULL),
('route-25', 12, 'walking', 5.00, 14, 14, 'Morning', NULL),
('route-25', 16, 'walking', 30.00, 10, 10, 'Day', NULL),
('route-25', 16, 'walking', 30.00, 10, 10, 'Morning', NULL),
('route-25', 17, 'walking', 20.00, 12, 12, 'Day', NULL),
('route-25', 17, 'walking', 20.00, 12, 12, 'Morning', NULL),
('route-25', 43, 'walking', 30.00, 10, 10, 'Night', NULL),
('route-25', 48, 'walking', 20.00, 12, 12, 'Night', NULL),
('route-25', 69, 'walking', 5.00, 10, 10, 'Day', NULL),
('route-25', 69, 'walking', 5.00, 10, 10, 'Morning', NULL),
('route-25', 69, 'walking', 5.00, 10, 10, 'Night', NULL),
('route-25', 118, 'fishing_old', 15.00, 10, 10, NULL, NULL),
('route-25', 118, 'fishing_good', 65.00, 20, 20, NULL, NULL),
('route-25', 118, 'fishing_super', 70.00, 40, 40, NULL, NULL),
('route-25', 118, 'surfing', 90.00, 4, 14, NULL, NULL),
('route-25', 119, 'fishing_super', 10.00, 40, 40, NULL, NULL),
('route-25', 119, 'surfing', 10.00, 10, 14, NULL, NULL),
('route-25', 129, 'fishing_old', 85.00, 10, 10, NULL, NULL),
('route-25', 129, 'fishing_good', 35.00, 20, 20, NULL, NULL),
('route-25', 129, 'fishing_super', 20.00, 40, 40, NULL, NULL),
('route-25', 163, 'walking', 30.00, 10, 10, 'Night', NULL),
('route-25', 164, 'walking', 15.00, 12, 14, 'Night', NULL),
('route-9', 19, 'walking', 30.00, 15, 15, 'Day', NULL),
('route-9', 19, 'walking', 30.00, 15, 15, 'Morning', NULL),
('route-9', 19, 'walking', 30.00, 15, 15, 'Night', NULL),
('route-9', 20, 'walking', 20.00, 15, 15, 'Day', NULL),
('route-9', 20, 'walking', 20.00, 15, 15, 'Morning', NULL),
('route-9', 20, 'walking', 25.00, 15, 18, 'Night', NULL),
('route-9', 21, 'walking', 30.00, 15, 15, 'Day', NULL),
('route-9', 21, 'walking', 30.00, 15, 15, 'Morning', NULL),
('route-9', 22, 'walking', 15.00, 15, 15, 'Day', NULL),
('route-9', 22, 'walking', 15.00, 15, 15, 'Morning', NULL),
('route-9', 41, 'walking', 5.00, 15, 15, 'Night', NULL),
('route-9', 48, 'walking', 30.00, 15, 15, 'Night', NULL),
('route-9', 49, 'walking', 10.00, 15, 15, 'Night', NULL),
('route-9', 105, 'walking', 5.00, 18, 18, 'Day', NULL),
('route-9', 105, 'walking', 5.00, 18, 18, 'Morning', NULL),
('route-9', 118, 'fishing_old', 15.00, 10, 10, NULL, NULL),
('route-9', 118, 'fishing_good', 65.00, 20, 20, NULL, NULL),
('route-9', 118, 'fishing_super', 70.00, 40, 40, NULL, NULL),
('route-9', 118, 'surfing', 90.00, 10, 19, NULL, NULL),
('route-9', 119, 'fishing_super', 10.00, 40, 40, NULL, NULL),
('route-9', 119, 'surfing', 10.00, 15, 19, NULL, NULL),
('route-9', 129, 'fishing_old', 85.00, 10, 10, NULL, NULL),
('route-9', 129, 'fishing_good', 35.00, 20, 20, NULL, NULL),
('route-9', 129, 'fishing_super', 20.00, 40, 40, NULL, NULL),
('route-10', 20, 'walking', 20.00, 15, 15, 'Day', NULL),
('route-10', 20, 'walking', 20.00, 15, 15, 'Morning', NULL),
('route-10', 20, 'walking', 20.00, 15, 15, 'Night', NULL),
('route-10', 21, 'walking', 30.00, 15, 15, 'Day', NULL),
('route-10', 21, 'walking', 30.00, 15, 15, 'Morning', NULL),
('route-10', 22, 'walking', 10.00, 15, 15, 'Day', NULL),
('route-10', 22, 'walking', 10.00, 15, 15, 'Morning', NULL),
('route-10', 41, 'walking', 5.00, 15, 15, 'Night', NULL),
('route-10', 48, 'walking', 30.00, 15, 15, 'Night', NULL),
('route-10', 49, 'walking', 10.00, 15, 15, 'Night', NULL),
('route-10', 100, 'walking', 30.00, 17, 17, 'Day', NULL),
('route-10', 100, 'walking', 30.00, 17, 17, 'Morning', NULL),
('route-10', 100, 'walking', 30.00, 17, 17, 'Night', NULL),
('route-10', 105, 'walking', 5.00, 15, 15, 'Day', NULL),
('route-10', 105, 'walking', 5.00, 15, 15, 'Morning', NULL),
('route-10', 118, 'fishing_old', 15.00, 10, 10, NULL, NULL),
('route-10', 118, 'fishing_good', 65.00, 20, 20, NULL, NULL),
('route-10', 118, 'fishing_super', 70.00, 40, 40, NULL, NULL),
('route-10', 118, 'surfing', 90.00, 10, 19, NULL, NULL),
('route-10', 119, 'fishing_super', 10.00, 40, 40, NULL, NULL),
('route-10', 119, 'surfing', 10.00, 15, 19, NULL, NULL),
('route-10', 125, 'walking', 5.00, 16, 16, 'Day', NULL),
('route-10', 125, 'walking', 5.00, 16, 16, 'Morning', NULL),
('route-10', 125, 'walking', 5.00, 16, 16, 'Night', NULL),
('route-10', 129, 'fishing_old', 85.00, 10, 10, NULL, NULL),
('route-10', 129, 'fishing_good', 35.00, 20, 20, NULL, NULL),
('route-10', 129, 'fishing_super', 20.00, 40, 40, NULL, NULL),
('rock-tunnel', 41, 'walking', 20.00, 12, 12, 'Day', NULL),
('rock-tunnel', 41, 'walking', 20.00, 12, 12, 'Morning', NULL),
('rock-tunnel', 41, 'walking', 80.00, 12, 15, 'Night', NULL),
('rock-tunnel', 66, 'walking', 20.00, 12, 12, 'Day', NULL),
('rock-tunnel', 66, 'walking', 20.00, 12, 12, 'Morning', NULL),
('rock-tunnel', 67, 'walking', 5.00, 15, 15, 'Day', NULL),
('rock-tunnel', 67, 'walking', 5.00, 15, 15, 'Morning', NULL),
('rock-tunnel', 74, 'walking', 60.00, 11, 14, 'Day', NULL),
('rock-tunnel', 74, 'walking', 60.00, 11, 14, 'Morning', NULL),
('rock-tunnel', 74, 'walking', 80.00, 11, 14, 'Night', NULL),
('rock-tunnel', 93, 'walking', 15.00, 15, 17, 'Night', NULL),
('rock-tunnel', 104, 'walking', 60.00, 10, 12, 'Day', NULL),
('rock-tunnel', 104, 'walking', 60.00, 10, 12, 'Morning', NULL),
('rock-tunnel', 105, 'walking', 10.00, 12, 15, 'Day', NULL),
('rock-tunnel', 105, 'walking', 10.00, 12, 15, 'Morning', NULL),
('rock-tunnel', 42, 'walking', 5.00, 15, 15, 'Night', NULL),
('rock-tunnel', 95, 'walking', 20.00, 16, 16, 'Day', NULL),
('rock-tunnel', 95, 'walking', 20.00, 16, 16, 'Morning', NULL),
('rock-tunnel', 95, 'walking', 20.00, 16, 16, 'Night', NULL),
('rock-tunnel', 115, 'walking', 5.00, 15, 15, 'Day', NULL),
('rock-tunnel', 115, 'walking', 5.00, 15, 15, 'Morning', NULL),
('route-8', 17, 'walking', 30.00, 19, 19, 'Day', NULL),
('route-8', 17, 'walking', 30.00, 19, 19, 'Morning', NULL),
('route-8', 39, 'walking', 5.00, 16, 16, 'Day', NULL),
('route-8', 39, 'walking', 5.00, 16, 16, 'Morning', NULL),
('route-8', 39, 'walking', 5.00, 16, 16, 'Night', NULL),
('route-8', 52, 'walking', 30.00, 17, 17, 'Night', NULL),
('route-8', 58, 'walking', 10.00, 17, 17, 'Day', NULL),
('route-8', 58, 'walking', 10.00, 17, 17, 'Morning', NULL),
('route-8', 63, 'walking', 20.00, 16, 16, 'Day', NULL),
('route-8', 63, 'walking', 20.00, 16, 16, 'Morning', NULL),
('route-8', 63, 'walking', 20.00, 16, 16, 'Night', NULL),
('route-8', 64, 'walking', 5.00, 18, 18, 'Day', NULL),
('route-8', 64, 'walking', 5.00, 18, 18, 'Morning', NULL),
('route-8', 64, 'walking', 5.00, 18, 18, 'Night', NULL),
('route-8', 93, 'walking', 10.00, 17, 17, 'Night', NULL),
('route-8', 164, 'walking', 30.00, 20, 20, 'Night', NULL),
('route-8', 209, 'walking', 30.00, 17, 17, 'Day', NULL),
('route-8', 209, 'walking', 30.00, 17, 17, 'Morning', NULL),
('route-7', 19, 'walking', 30.00, 17, 17, 'Day', NULL),
('route-7', 19, 'walking', 30.00, 17, 17, 'Morning', NULL),
('route-7', 20, 'walking', 10.00, 18, 18, 'Day', NULL),
('route-7', 20, 'walking', 10.00, 18, 18, 'Morning', NULL),
('route-7', 21, 'walking', 30.00, 17, 17, 'Day', NULL),
('route-7', 21, 'walking', 30.00, 17, 17, 'Morning', NULL),
('route-7', 39, 'walking', 5.00, 18, 18, 'Day', NULL),
('route-7', 39, 'walking', 5.00, 18, 18, 'Morning', NULL),
('route-7', 39, 'walking', 5.00, 18, 18, 'Night', NULL),
('route-7', 52, 'walking', 30.00, 17, 17, 'Night', NULL),
('route-7', 53, 'walking', 10.00, 18, 18, 'Night', NULL),
('route-7', 63, 'walking', 5.00, 16, 16, 'Day', NULL),
('route-7', 63, 'walking', 5.00, 16, 16, 'Morning', NULL),
('route-7', 63, 'walking', 5.00, 16, 16, 'Night', NULL),
('route-7', 198, 'walking', 30.00, 17, 17, 'Night', NULL),
('route-7', 209, 'walking', 20.00, 18, 18, 'Day', NULL),
('route-7', 209, 'walking', 20.00, 18, 18, 'Morning', NULL),
('route-7', 228, 'walking', 20.00, 18, 18, 'Night', NULL),
('route-16', 22, 'walking', 40.00, 27, 29, 'Day', NULL),
('route-16', 22, 'walking', 45.00, 27, 29, 'Morning', NULL),
('route-16', 88, 'walking', 50.00, 26, 28, 'Day', NULL),
('route-16', 88, 'walking', 50.00, 26, 28, 'Morning', NULL),
('route-16', 88, 'walking', 80.00, 26, 28, 'Night', NULL),
('route-16', 89, 'walking', 5.00, 30, 30, 'Day', NULL),
('route-16', 89, 'walking', 5.00, 30, 30, 'Morning', NULL),
('route-16', 89, 'walking', 5.00, 30, 30, 'Night', NULL),
('route-16', 198, 'walking', 15.00, 29, 29, 'Night', NULL),
('route-16', 218, 'walking', 5.00, 29, 29, 'Day', NULL),
('route-17', 22, 'walking', 40.00, 30, 32, 'Day', NULL),
('route-17', 22, 'walking', 40.00, 30, 32, 'Morning', NULL),
('route-17', 88, 'walking', 20.00, 29, 29, 'Day', NULL),
('route-17', 88, 'walking', 55.00, 29, 33, 'Morning', NULL),
('route-17', 88, 'walking', 95.00, 29, 33, 'Night', NULL),
('route-17', 89, 'walking', 5.00, 33, 33, 'Day', NULL),
('route-17', 89, 'walking', 5.00, 33, 33, 'Morning', NULL),
('route-17', 89, 'walking', 5.00, 33, 33, 'Night', NULL),
('route-17', 218, 'walking', 35.00, 29, 32, 'Day', NULL),
('route-18', 22, 'walking', 40.00, 27, 29, 'Day', NULL),
('route-18', 22, 'walking', 45.00, 27, 29, 'Morning', NULL),
('route-18', 88, 'walking', 50.00, 26, 28, 'Day', NULL),
('route-18', 88, 'walking', 50.00, 26, 28, 'Morning', NULL),
('route-18', 88, 'walking', 95.00, 26, 29, 'Night', NULL),
('route-18', 89, 'walking', 5.00, 30, 30, 'Day', NULL),
('route-18', 89, 'walking', 5.00, 30, 30, 'Morning', NULL),
('route-18', 89, 'walking', 5.00, 30, 30, 'Night', NULL),
('route-18', 218, 'walking', 5.00, 29, 29, 'Day', NULL),
('route-15', 17, 'walking', 20.00, 25, 25, 'Day', NULL),
('route-15', 17, 'walking', 20.00, 25, 25, 'Morning', NULL),
('route-15', 30, 'walking', 30.00, 23, 23, 'Day', NULL),
('route-15', 30, 'walking', 30.00, 23, 23, 'Morning', NULL),
('route-15', 33, 'walking', 30.00, 23, 23, 'Day', NULL),
('route-15', 33, 'walking', 30.00, 23, 23, 'Morning', NULL),
('route-15', 48, 'walking', 30.00, 23, 23, 'Night', NULL),
('route-15', 49, 'walking', 10.00, 25, 25, 'Night', NULL),
('route-15', 113, 'walking', 1.00, 25, 25, 'Day', NULL),
('route-15', 113, 'walking', 1.00, 25, 25, 'Morning', NULL),
('route-15', 113, 'walking', 1.00, 25, 25, 'Night', NULL),
('route-15', 164, 'walking', 20.00, 25, 25, 'Night', NULL),
('route-15', 187, 'walking', 19.00, 25, 27, 'Day', NULL),
('route-15', 187, 'walking', 19.00, 25, 27, 'Morning', NULL),
('route-15', 195, 'walking', 39.00, 23, 25, 'Night', NULL),
('route-14', 17, 'walking', 20.00, 28, 28, 'Day', NULL),
('route-14', 17, 'walking', 20.00, 28, 28, 'Morning', NULL),
('route-14', 30, 'walking', 30.00, 26, 26, 'Day', NULL),
('route-14', 30, 'walking', 30.00, 26, 26, 'Morning', NULL),
('route-14', 33, 'walking', 30.00, 26, 26, 'Day', NULL),
('route-14', 33, 'walking', 30.00, 26, 26, 'Morning', NULL),
('route-14', 48, 'walking', 30.00, 26, 26, 'Night', NULL),
('route-14', 49, 'walking', 10.00, 28, 28, 'Night', NULL),
('route-14', 113, 'walking', 1.00, 28, 28, 'Day', NULL),
('route-14', 113, 'walking', 1.00, 28, 28, 'Morning', NULL),
('route-14', 113, 'walking', 1.00, 28, 28, 'Night', NULL),
('route-14', 164, 'walking', 20.00, 28, 28, 'Night', NULL),
('route-14', 187, 'walking', 10.00, 28, 28, 'Day', NULL),
('route-14', 187, 'walking', 10.00, 28, 28, 'Morning', NULL),
('route-14', 188, 'walking', 9.00, 30, 30, 'Day', NULL),
('route-14', 188, 'walking', 9.00, 30, 30, 'Morning', NULL),
('route-14', 195, 'walking', 39.00, 26, 28, 'Night', NULL),
('route-13', 17, 'walking', 40.00, 25, 25, NULL, NULL),
('route-13', 30, 'walking', 60.00, 23, 23, NULL, NULL),
('route-13', 33, 'walking', 60.00, 23, 23, NULL, NULL),
('route-13', 48, 'walking', 30.00, 23, 23, NULL, NULL),
('route-13', 49, 'walking', 10.00, 25, 25, NULL, NULL),
('route-13', 72, 'fishing_old', 15.00, 10, 10, NULL, NULL),
('route-13', 72, 'fishing_good', 65.00, 20, 20, NULL, NULL),
('route-13', 72, 'fishing_super', 70.00, 40, 40, NULL, NULL),
('route-13', 72, 'surfing', 60.00, 25, 29, NULL, NULL),
('route-13', 73, 'surfing', 10.00, 25, 29, NULL, NULL),
('route-13', 113, 'walking', 3.00, 25, 25, NULL, NULL),
('route-13', 129, 'fishing_old', 85.00, 10, 10, NULL, NULL),
('route-13', 129, 'fishing_good', 35.00, 20, 20, NULL, NULL),
('route-13', 129, 'fishing_super', 20.00, 40, 40, NULL, NULL),
('route-13', 164, 'walking', 20.00, 25, 25, NULL, NULL),
('route-13', 187, 'walking', 38.00, 25, 27, NULL, NULL),
('route-13', 195, 'walking', 39.00, 23, 25, NULL, NULL),
('route-13', 195, 'surfing', 30.00, 25, 29, NULL, NULL),
('route-13', 211, 'fishing_super', 10.00, 40, 40, NULL, NULL),
('route-12', 72, 'fishing_old', 15.00, 10, 10, NULL, NULL),
('route-12', 72, 'fishing_good', 65.00, 20, 20, NULL, NULL),
('route-12', 72, 'fishing_super', 70.00, 40, 40, NULL, NULL),
('route-12', 72, 'surfing', 60.00, 25, 29, NULL, NULL),
('route-12', 73, 'surfing', 10.00, 25, 29, NULL, NULL),
('route-12', 129, 'fishing_old', 85.00, 10, 10, NULL, NULL),
('route-12', 129, 'fishing_good', 35.00, 20, 20, NULL, NULL),
('route-12', 129, 'fishing_super', 20.00, 40, 40, NULL, NULL),
('route-12', 195, 'surfing', 30.00, 25, 29, NULL, NULL),
('route-12', 211, 'fishing_super', 10.00, 40, 40, NULL, NULL),
('route-11', 17, 'walking', 10.00, 16, 16, 'Day', NULL),
('route-11', 17, 'walking', 10.00, 16, 16, 'Morning', NULL),
('route-11', 19, 'walking', 5.00, 16, 16, 'Day', NULL),
('route-11', 19, 'walking', 5.00, 16, 16, 'Morning', NULL),
('route-11', 20, 'walking', 30.00, 15, 15, 'Day', NULL),
('route-11', 20, 'walking', 30.00, 15, 15, 'Morning', NULL),
('route-11', 20, 'walking', 5.00, 16, 16, 'Night', NULL),
('route-11', 52, 'walking', 30.00, 15, 15, 'Night', NULL),
('route-11', 81, 'walking', 20.00, 15, 15, 'Day', NULL),
('route-11', 81, 'walking', 20.00, 15, 15, 'Morning', NULL),
('route-11', 81, 'walking', 20.00, 15, 15, 'Night', NULL),
('route-11', 96, 'walking', 30.00, 14, 14, 'Night', NULL),
('route-11', 97, 'walking', 5.00, 16, 16, 'Night', NULL),
('route-11', 164, 'walking', 10.00, 16, 16, 'Night', NULL),
('route-11', 187, 'walking', 35.00, 14, 16, 'Day', NULL),
('route-11', 187, 'walking', 35.00, 14, 16, 'Morning', NULL),
('digletts-cave', 50, 'walking', 90.00, 2, 16, 'Day', NULL),
('digletts-cave', 50, 'walking', 90.00, 3, 24, 'Morning', NULL),
('digletts-cave', 50, 'walking', 90.00, 4, 32, 'Night', NULL),
('digletts-cave', 51, 'walking', 10.00, 16, 16, 'Day', NULL),
('digletts-cave', 51, 'walking', 10.00, 24, 24, 'Morning', NULL),
('digletts-cave', 51, 'walking', 10.00, 32, 32, 'Night', NULL),
('route-2', 10, 'walking', 30.00, 3, 3, 'Day', NULL),
('route-2', 10, 'walking', 30.00, 3, 3, 'Morning', NULL),
('route-2', 12, 'walking', 10.00, 7, 7, 'Day', NULL),
('route-2', 12, 'walking', 10.00, 7, 7, 'Morning', NULL),
('route-2', 16, 'walking', 50.00, 3, 5, 'Day', NULL),
('route-2', 16, 'walking', 20.00, 5, 5, 'Morning', NULL),
('route-2', 17, 'walking', 5.00, 7, 7, 'Day', NULL),
('route-2', 25, 'walking', 5.00, 4, 4, 'Day', NULL),
('route-2', 25, 'walking', 5.00, 4, 4, 'Morning', NULL),
('route-2', 163, 'walking', 50.00, 3, 5, 'Night', NULL),
('route-2', 164, 'walking', 15.00, 4, 7, 'Night', NULL),
('route-2', 165, 'walking', 30.00, 3, 3, 'Morning', NULL),
('route-2', 166, 'walking', 5.00, 7, 7, 'Morning', NULL),
('route-2', 167, 'walking', 30.00, 3, 3, 'Night', NULL),
('route-2', 168, 'walking', 5.00, 7, 7, 'Night', NULL),
('route-1', 16, 'walking', 45.00, 2, 4, 'Day', NULL),
('route-1', 16, 'walking', 45.00, 2, 4, 'Morning', NULL),
('route-1', 19, 'walking', 30.00, 2, 2, 'Day', NULL),
('route-1', 19, 'walking', 30.00, 2, 2, 'Morning', NULL),
('route-1', 19, 'walking', 50.00, 2, 3, 'Night', NULL),
('route-1', 20, 'walking', 5.00, 6, 6, 'Night', NULL),
('route-1', 161, 'walking', 20.00, 3, 3, 'Day', NULL),
('route-1', 161, 'walking', 20.00, 3, 3, 'Morning', NULL),
('route-1', 162, 'walking', 5.00, 6, 6, 'Day', NULL),
('route-1', 162, 'walking', 5.00, 6, 6, 'Morning', NULL),
('route-1', 163, 'walking', 45.00, 2, 4, 'Night', NULL),
('pallet-town', 72, 'fishing_old', 15.00, 10, 10, NULL, NULL),
('pallet-town', 72, 'fishing_good', 35.00, 20, 20, NULL, NULL),
('pallet-town', 72, 'surfing', 90.00, 30, 39, NULL, NULL),
('pallet-town', 73, 'fishing_super', 20.00, 40, 40, NULL, NULL),
('pallet-town', 73, 'surfing', 10.00, 35, 39, NULL, NULL),
('pallet-town', 90, 'fishing_good', 10.00, 20, 20, NULL, NULL),
('pallet-town', 90, 'fishing_super', 30.00, 40, 40, NULL, NULL),
('pallet-town', 129, 'fishing_old', 85.00, 10, 10, NULL, NULL),
('pallet-town', 129, 'fishing_good', 35.00, 20, 20, NULL, NULL),
('pallet-town', 170, 'fishing_good', 20.00, 20, 20, NULL, NULL),
('pallet-town', 170, 'fishing_super', 40.00, 40, 40, NULL, NULL),
('pallet-town', 171, 'fishing_super', 10.00, 40, 40, NULL, NULL),
('route-21', 19, 'walking', 30.00, 25, 25, 'Day', NULL),
('route-21', 19, 'walking', 30.00, 25, 25, 'Morning', NULL),
('route-21', 19, 'walking', 30.00, 25, 25, 'Night', NULL),
('route-21', 20, 'walking', 10.00, 20, 20, 'Day', NULL),
('route-21', 20, 'walking', 10.00, 20, 20, 'Morning', NULL),
('route-21', 20, 'walking', 10.00, 20, 20, 'Night', NULL),
('route-21', 72, 'fishing_old', 15.00, 10, 10, NULL, NULL),
('route-21', 72, 'fishing_good', 35.00, 20, 20, NULL, NULL),
('route-21', 72, 'surfing', 90.00, 30, 39, NULL, NULL),
('route-21', 73, 'fishing_super', 20.00, 40, 40, NULL, NULL),
('route-21', 73, 'surfing', 10.00, 35, 39, NULL, NULL),
('route-21', 90, 'fishing_good', 10.00, 20, 20, NULL, NULL),
('route-21', 90, 'fishing_super', 30.00, 40, 40, NULL, NULL),
('route-21', 114, 'walking', 50.00, 30, 35, 'Day', NULL),
('route-21', 114, 'walking', 50.00, 30, 35, 'Morning', NULL),
('route-21', 114, 'walking', 60.00, 28, 35, 'Night', NULL),
('route-21', 122, 'walking', 10.00, 28, 30, 'Day', NULL),
('route-21', 122, 'walking', 10.00, 28, 30, 'Morning', NULL),
('route-21', 129, 'fishing_old', 85.00, 10, 10, NULL, NULL),
('route-21', 129, 'fishing_good', 35.00, 20, 20, NULL, NULL),
('route-21', 170, 'fishing_good', 20.00, 20, 20, NULL, NULL),
('route-21', 170, 'fishing_super', 40.00, 40, 40, NULL, NULL),
('route-21', 171, 'fishing_super', 10.00, 40, 40, NULL, NULL),
('route-20', 72, 'fishing_old', 15.00, 10, 10, NULL, NULL),
('route-20', 72, 'fishing_good', 35.00, 20, 20, NULL, NULL),
('route-20', 72, 'surfing', 90.00, 30, 39, NULL, NULL),
('route-20', 73, 'fishing_super', 20.00, 40, 40, NULL, NULL),
('route-20', 73, 'surfing', 10.00, 35, 39, NULL, NULL),
('route-20', 90, 'fishing_good', 10.00, 20, 20, NULL, NULL),
('route-20', 90, 'fishing_super', 30.00, 40, 40, NULL, NULL),
('route-20', 129, 'fishing_old', 85.00, 10, 10, NULL, NULL),
('route-20', 129, 'fishing_good', 35.00, 20, 20, NULL, NULL),
('route-20', 170, 'fishing_good', 20.00, 20, 20, NULL, NULL),
('route-20', 170, 'fishing_super', 40.00, 40, 40, NULL, NULL),
('route-20', 171, 'fishing_super', 10.00, 40, 40, NULL, NULL),
('route-19', 72, 'surfing', 90.00, 30, 39, NULL, NULL),
('route-19', 73, 'surfing', 10.00, 35, 39, NULL, NULL),
('route-19', 98, 'fishing_old', 15.00, 10, 10, NULL, NULL),
('route-19', 98, 'fishing_good', 55.00, 20, 20, 'Day', NULL),
('route-19', 98, 'fishing_good', 55.00, 20, 20, 'Morning', NULL),
('route-19', 98, 'fishing_good', 55.00, 20, 20, 'Night', NULL),
('route-19', 98, 'fishing_super', 60.00, 40, 40, 'Day', NULL),
('route-19', 98, 'fishing_super', 60.00, 40, 40, 'Morning', NULL),
('route-19', 98, 'fishing_super', 60.00, 40, 40, 'Night', NULL),
('route-19', 99, 'fishing_super', 10.00, 40, 40, 'Day', NULL),
('route-19', 99, 'fishing_super', 10.00, 40, 40, 'Morning', NULL),
('route-19', 99, 'fishing_super', 10.00, 40, 40, 'Night', NULL),
('route-19', 120, 'fishing_good', 10.00, 20, 20, 'Night', NULL),
('route-19', 120, 'fishing_super', 30.00, 40, 40, 'Night', NULL),
('route-19', 129, 'fishing_old', 85.00, 10, 10, NULL, NULL),
('route-19', 129, 'fishing_good', 35.00, 20, 20, 'Day', NULL),
('route-19', 129, 'fishing_good', 35.00, 20, 20, 'Morning', NULL),
('route-19', 129, 'fishing_good', 35.00, 20, 20, 'Night', NULL),
('route-19', 222, 'fishing_good', 10.00, 20, 20, 'Day', NULL),
('route-19', 222, 'fishing_good', 10.00, 20, 20, 'Morning', NULL),
('route-19', 222, 'fishing_super', 30.00, 40, 40, 'Day', NULL),
('route-19', 222, 'fishing_super', 30.00, 40, 40, 'Morning', NULL),
('route-22', 19, 'walking', 30.00, 3, 3, 'Day', NULL),
('route-22', 19, 'walking', 30.00, 3, 3, 'Morning', NULL),
('route-22', 19, 'walking', 60.00, 3, 7, 'Night', NULL),
('route-22', 21, 'walking', 50.00, 3, 5, 'Day', NULL),
('route-22', 21, 'walking', 50.00, 3, 5, 'Morning', NULL),
('route-22', 22, 'walking', 5.00, 7, 7, 'Day', NULL),
('route-22', 22, 'walking', 5.00, 7, 7, 'Morning', NULL),
('route-22', 60, 'walking', 40.00, 3, 4, 'Night', NULL),
('route-22', 60, 'fishing_old', 15.00, 10, 10, NULL, NULL),
('route-22', 60, 'fishing_good', 65.00, 20, 20, NULL, NULL),
('route-22', 60, 'fishing_super', 80.00, 40, 40, NULL, NULL),
('route-22', 60, 'surfing', 90.00, 4, 14, NULL, NULL),
('route-22', 61, 'surfing', 10.00, 10, 14, NULL, NULL),
('route-22', 77, 'walking', 5.00, 6, 6, 'Day', NULL),
('route-22', 77, 'walking', 5.00, 6, 6, 'Morning', NULL),
('route-22', 84, 'walking', 10.00, 4, 4, 'Day', NULL),
('route-22', 84, 'walking', 10.00, 4, 4, 'Morning', NULL),
('route-22', 129, 'fishing_old', 85.00, 10, 10, NULL, NULL),
('route-22', 129, 'fishing_good', 35.00, 20, 20, NULL, NULL),
('route-22', 129, 'fishing_super', 20.00, 40, 40, NULL, NULL),
('route-28', 24, 'walking', 10.00, 42, 42, 'Day', NULL),
('route-28', 24, 'walking', 10.00, 42, 42, 'Morning', NULL),
('route-28', 42, 'walking', 30.00, 40, 42, 'Night', NULL),
('route-28', 60, 'fishing_old', 15.00, 10, 10, NULL, NULL),
('route-28', 60, 'fishing_good', 65.00, 20, 20, NULL, NULL),
('route-28', 60, 'fishing_super', 80.00, 40, 40, NULL, NULL),
('route-28', 60, 'surfing', 90.00, 35, 44, NULL, NULL),
('route-28', 61, 'walking', 40.00, 40, 40, 'Night', NULL),
('route-28', 61, 'surfing', 10.00, 40, 44, NULL, NULL),
('route-28', 77, 'walking', 30.00, 40, 40, 'Day', NULL),
('route-28', 77, 'walking', 30.00, 40, 40, 'Morning', NULL),
('route-28', 78, 'walking', 20.00, 40, 40, 'Day', NULL),
('route-28', 78, 'walking', 20.00, 40, 40, 'Morning', NULL),
('route-28', 84, 'walking', 5.00, 41, 41, 'Day', NULL),
('route-28', 84, 'walking', 5.00, 41, 41, 'Morning', NULL),
('route-28', 85, 'walking', 5.00, 43, 43, 'Day', NULL),
('route-28', 85, 'walking', 5.00, 43, 43, 'Morning', NULL),
('route-28', 114, 'walking', 30.00, 39, 39, 'Day', NULL),
('route-28', 114, 'walking', 30.00, 39, 39, 'Morning', NULL),
('route-28', 114, 'walking', 30.00, 39, 39, 'Night', NULL),
('route-28', 129, 'fishing_old', 85.00, 10, 10, NULL, NULL),
('route-28', 129, 'fishing_good', 35.00, 20, 20, NULL, NULL),
('route-28', 129, 'fishing_super', 20.00, 40, 40, NULL, NULL),
('mt-silver', 24, 'walking', 20.00, 42, 42, 'Day', NULL),
('mt-silver', 24, 'walking', 20.00, 42, 42, 'Morning', NULL),
('mt-silver', 42, 'walking', 60.00, 40, 46, 'Night', NULL),
('mt-silver', 60, 'fishing_old', 15.00, 10, 10, NULL, NULL),
('mt-silver', 60, 'fishing_good', 65.00, 20, 20, NULL, NULL),
('mt-silver', 60, 'fishing_super', 80.00, 40, 40, NULL, NULL),
('mt-silver', 60, 'surfing', 10.00, 35, 39, NULL, NULL),
('mt-silver', 61, 'walking', 40.00, 42, 44, 'Night', NULL),
('mt-silver', 61, 'surfing', 90.00, 35, 44, NULL, NULL),
('mt-silver', 77, 'walking', 30.00, 42, 42, 'Day', NULL),
('mt-silver', 77, 'walking', 30.00, 42, 42, 'Morning', NULL),
('mt-silver', 78, 'walking', 10.00, 44, 44, 'Day', NULL),
('mt-silver', 78, 'walking', 10.00, 44, 44, 'Morning', NULL),
('mt-silver', 84, 'walking', 5.00, 41, 41, 'Day', NULL),
('mt-silver', 84, 'walking', 5.00, 41, 41, 'Morning', NULL),
('mt-silver', 85, 'walking', 5.00, 43, 43, 'Day', NULL),
('mt-silver', 85, 'walking', 5.00, 43, 43, 'Morning', NULL),
('mt-silver', 114, 'walking', 30.00, 41, 41, 'Day', NULL),
('mt-silver', 114, 'walking', 30.00, 41, 41, 'Morning', NULL),
('mt-silver', 114, 'walking', 30.00, 41, 41, 'Night', NULL),
('mt-silver', 129, 'fishing_old', 170.00, 10, 10, NULL, NULL),
('mt-silver', 129, 'fishing_good', 70.00, 20, 20, NULL, NULL),
('mt-silver', 129, 'fishing_super', 40.00, 40, 40, NULL, NULL),
('mt-silver', 42, 'walking', 35.00, 45, 48, 'Day', NULL),
('mt-silver', 42, 'walking', 35.00, 45, 48, 'Morning', NULL),
('mt-silver', 75, 'walking', 30.00, 43, 43, 'Day', NULL),
('mt-silver', 75, 'walking', 30.00, 43, 43, 'Morning', NULL),
('mt-silver', 75, 'walking', 30.00, 43, 43, 'Night', NULL),
('mt-silver', 95, 'walking', 20.00, 42, 42, 'Day', NULL),
('mt-silver', 95, 'walking', 20.00, 42, 42, 'Morning', NULL),
('mt-silver', 95, 'walking', 20.00, 42, 42, 'Night', NULL),
('mt-silver', 126, 'walking', 10.00, 45, 45, 'Day', NULL),
('mt-silver', 126, 'walking', 10.00, 45, 45, 'Morning', NULL),
('mt-silver', 126, 'walking', 10.00, 45, 45, 'Night', NULL),
('mt-silver', 217, 'walking', 50.00, 44, 47, 'Day', NULL),
('mt-silver', 217, 'walking', 50.00, 44, 47, 'Morning', NULL),
('mt-silver', 217, 'walking', 30.00, 44, 44, 'Night', NULL),
('mt-silver', 246, 'walking', 10.00, 15, 20, 'Day', NULL),
('mt-silver', 246, 'walking', 10.00, 15, 20, 'Morning', NULL),
('mt-silver', 47, 'walking', 15.00, 46, 48, 'Day', NULL),
('mt-silver', 47, 'walking', 15.00, 46, 48, 'Morning', NULL),
('mt-silver', 47, 'walking', 15.00, 46, 48, 'Night', NULL),
('mt-silver', 55, 'walking', 30.00, 48, 48, 'Night', NULL),
('mt-silver', 55, 'surfing', 30.00, 40, 44, NULL, NULL),
('mt-silver', 67, 'walking', 30.00, 48, 48, 'Day', NULL),
('mt-silver', 67, 'walking', 30.00, 48, 48, 'Morning', NULL),
('mt-silver', 118, 'fishing_old', 15.00, 10, 10, NULL, NULL),
('mt-silver', 118, 'fishing_good', 65.00, 20, 20, NULL, NULL),
('mt-silver', 118, 'fishing_super', 70.00, 40, 40, NULL, NULL),
('mt-silver', 118, 'surfing', 10.00, 35, 39, NULL, NULL),
('mt-silver', 119, 'fishing_super', 10.00, 40, 40, NULL, NULL),
('mt-silver', 119, 'surfing', 60.00, 35, 39, NULL, NULL),
('mt-silver', 195, 'walking', 30.00, 45, 45, 'Night', NULL),
('mt-silver', 200, 'walking', 5.00, 45, 45, 'Night', NULL);

INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions, version_exclusive)
SELECT r.id, e.dex, e.method, e.rate, e.lmin, e.lmax, NULLIF(e.cond, ''), NULLIF(e.ver_excl, '')
FROM _enc e JOIN public.routes r ON r.slug = e.slug AND r.game_id = 'e1f2a3b4-c5d6-7890-ef12-345678901234';

DROP TABLE _enc;

-- ===========================================
-- STEP 5: BOSS TRAINERS
-- ===========================================

-- Falkner (Gym Leader)
DO $$
DECLARE
  v_trainer_id UUID;
  v_route_id UUID;
BEGIN
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'violet-city' AND game_id = 'e1f2a3b4-c5d6-7890-ef12-345678901234';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
  VALUES (v_route_id, 'Falkner', 'Gym Leader', true, 'gym_leader', 9, 1, 'Flying-type specialist. Zephyr Badge.')
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 16, 7, 1, '["Tackle", "Mud-Slap"]'::jsonb, 'Keen Eye', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 17, 9, 2, '["Tackle", "Gust", "Mud-Slap"]'::jsonb, 'Keen Eye', NULL, NULL);
END $$;

-- Bugsy (Gym Leader)
DO $$
DECLARE
  v_trainer_id UUID;
  v_route_id UUID;
BEGIN
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'azalea-town' AND game_id = 'e1f2a3b4-c5d6-7890-ef12-345678901234';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
  VALUES (v_route_id, 'Bugsy', 'Gym Leader', true, 'gym_leader', 16, 1, 'Bug-type specialist. Hive Badge.')
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 11, 14, 1, '["Tackle", "String Shot", "Harden"]'::jsonb, 'Shed Skin', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 14, 14, 2, '["Poison Sting", "String Shot", "Harden"]'::jsonb, 'Shed Skin', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 123, 16, 3, '["Fury Cutter", "Quick Attack", "Leer"]'::jsonb, 'Swarm', NULL, NULL);
END $$;

-- Whitney (Gym Leader)
DO $$
DECLARE
  v_trainer_id UUID;
  v_route_id UUID;
BEGIN
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'goldenrod-city' AND game_id = 'e1f2a3b4-c5d6-7890-ef12-345678901234';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
  VALUES (v_route_id, 'Whitney', 'Gym Leader', true, 'gym_leader', 20, 1, 'Normal-type specialist. Plain Badge. Miltank is infamous.')
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 35, 18, 1, '["Encore", "Mimic", "DoubleSlap", "Metronome"]'::jsonb, 'Cute Charm', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 241, 20, 2, '["Stomp", "Attract", "Milk Drink", "Rollout"]'::jsonb, 'Thick Fat', NULL, NULL);
END $$;

-- Morty (Gym Leader)
DO $$
DECLARE
  v_trainer_id UUID;
  v_route_id UUID;
BEGIN
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'ecruteak-city' AND game_id = 'e1f2a3b4-c5d6-7890-ef12-345678901234';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
  VALUES (v_route_id, 'Morty', 'Gym Leader', true, 'gym_leader', 25, 1, 'Ghost-type specialist. Fog Badge.')
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 92, 21, 1, '["Lick", "Spite", "Mean Look", "Curse"]'::jsonb, 'Levitate', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 93, 21, 2, '["Hypnosis", "Curse", "Mimic", "Night Shade"]'::jsonb, 'Levitate', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 93, 23, 3, '["Spite", "Mean Look", "Mimic", "Night Shade"]'::jsonb, 'Levitate', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 94, 25, 4, '["Shadow Ball", "Mean Look", "Hypnosis", "Dream Eater"]'::jsonb, 'Levitate', NULL, NULL);
END $$;

-- Chuck (Gym Leader)
DO $$
DECLARE
  v_trainer_id UUID;
  v_route_id UUID;
BEGIN
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'cianwood-city' AND game_id = 'e1f2a3b4-c5d6-7890-ef12-345678901234';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
  VALUES (v_route_id, 'Chuck', 'Gym Leader', true, 'gym_leader', 30, 1, 'Fighting-type specialist. Storm Badge.')
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 57, 27, 1, '["Leer", "Rage", "Karate Chop", "Fury Swipes"]'::jsonb, 'Vital Spirit', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 62, 30, 2, '["Hypnosis", "Mind Reader", "Surf", "DynamicPunch"]'::jsonb, 'Water Absorb', NULL, NULL);
END $$;

-- Jasmine (Gym Leader)
DO $$
DECLARE
  v_trainer_id UUID;
  v_route_id UUID;
BEGIN
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'olivine-city' AND game_id = 'e1f2a3b4-c5d6-7890-ef12-345678901234';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
  VALUES (v_route_id, 'Jasmine', 'Gym Leader', true, 'gym_leader', 35, 1, 'Steel-type specialist. Mineral Badge.')
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 81, 30, 1, '["Thunderbolt", "Supersonic", "SonicBoom", "Thunder Wave"]'::jsonb, 'Magnet Pull', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 81, 30, 2, '["Thunderbolt", "Supersonic", "SonicBoom", "Thunder Wave"]'::jsonb, 'Sturdy', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 208, 35, 3, '["Iron Tail", "Rock Throw", "Sunny Day", "Screech"]'::jsonb, 'Rock Head', NULL, NULL);
END $$;

-- Pryce (Gym Leader)
DO $$
DECLARE
  v_trainer_id UUID;
  v_route_id UUID;
BEGIN
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'mahogany-town' AND game_id = 'e1f2a3b4-c5d6-7890-ef12-345678901234';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
  VALUES (v_route_id, 'Pryce', 'Gym Leader', true, 'gym_leader', 31, 1, 'Ice-type specialist. Glacier Badge.')
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 86, 27, 1, '["Headbutt", "Icy Wind", "Aurora Beam", "Rest"]'::jsonb, 'Thick Fat', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 87, 29, 2, '["Headbutt", "Icy Wind", "Aurora Beam", "Rest"]'::jsonb, 'Thick Fat', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 221, 31, 3, '["Icy Wind", "Fury Attack", "Mist", "Blizzard"]'::jsonb, 'Oblivious', NULL, NULL);
END $$;

-- Clair (Gym Leader)
DO $$
DECLARE
  v_trainer_id UUID;
  v_route_id UUID;
BEGIN
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'blackthorn-city' AND game_id = 'e1f2a3b4-c5d6-7890-ef12-345678901234';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
  VALUES (v_route_id, 'Clair', 'Gym Leader', true, 'gym_leader', 40, 1, 'Dragon-type specialist. Rising Badge.')
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 148, 37, 1, '["Surf", "Slam", "Thunder Wave", "DragonBreath"]'::jsonb, 'Shed Skin', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 148, 37, 2, '["Thunderbolt", "Slam", "Thunder Wave", "DragonBreath"]'::jsonb, 'Shed Skin', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 148, 37, 3, '["Ice Beam", "Slam", "Thunder Wave", "DragonBreath"]'::jsonb, 'Shed Skin', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 230, 40, 4, '["Surf", "DragonBreath", "SmokeScreen", "Hyper Beam"]'::jsonb, 'Swift Swim', NULL, NULL);
END $$;

-- Will (Elite Four)
DO $$
DECLARE
  v_trainer_id UUID;
  v_route_id UUID;
BEGIN
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'indigo-plateau' AND game_id = 'e1f2a3b4-c5d6-7890-ef12-345678901234';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
  VALUES (v_route_id, 'Will', 'Elite Four', true, 'elite_four', 42, 1, 'Psychic-type specialist.')
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 178, 40, 1, '["Quick Attack", "Future Sight", "Psychic", "Confuse Ray"]'::jsonb, 'Synchronize', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 103, 41, 2, '["Reflect", "Egg Bomb", "Psychic", "Leech Seed"]'::jsonb, 'Chlorophyll', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 80, 41, 3, '["Curse", "Amnesia", "Body Slam", "Psychic"]'::jsonb, 'Own Tempo', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 124, 41, 4, '["Ice Punch", "DoubleSlap", "Psychic", "Lovely Kiss"]'::jsonb, 'Oblivious', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 178, 42, 5, '["Quick Attack", "Future Sight", "Psychic", "Confuse Ray"]'::jsonb, 'Synchronize', NULL, NULL);
END $$;

-- Koga (Elite Four)
DO $$
DECLARE
  v_trainer_id UUID;
  v_route_id UUID;
BEGIN
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'indigo-plateau' AND game_id = 'e1f2a3b4-c5d6-7890-ef12-345678901234';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
  VALUES (v_route_id, 'Koga', 'Elite Four', true, 'elite_four', 44, 2, 'Poison-type specialist.')
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 168, 40, 1, '["Spider Web", "Double Team", "Baton Pass", "Giga Drain"]'::jsonb, 'Swarm', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 49, 41, 2, '["Psychic", "Gust", "Supersonic", "Toxic"]'::jsonb, 'Shield Dust', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 205, 43, 3, '["Protect", "Spikes", "Swift", "Explosion"]'::jsonb, 'Sturdy', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 89, 42, 4, '["Sludge Bomb", "Acid Armor", "Minimize", "Toxic"]'::jsonb, 'Stench', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 169, 44, 5, '["Double Team", "Wing Attack", "Quick Attack", "Toxic"]'::jsonb, 'Inner Focus', NULL, NULL);
END $$;

-- Bruno (Elite Four)
DO $$
DECLARE
  v_trainer_id UUID;
  v_route_id UUID;
BEGIN
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'indigo-plateau' AND game_id = 'e1f2a3b4-c5d6-7890-ef12-345678901234';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
  VALUES (v_route_id, 'Bruno', 'Elite Four', true, 'elite_four', 46, 3, 'Fighting-type specialist.')
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 237, 42, 1, '["Quick Attack", "Dig", "Detect", "Pursuit"]'::jsonb, 'Intimidate', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 106, 42, 2, '["Double Kick", "Foresight", "Hi Jump Kick", "Swagger"]'::jsonb, 'Limber', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 107, 42, 3, '["Ice Punch", "Fire Punch", "ThunderPunch", "Mach Punch"]'::jsonb, 'Keen Eye', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 95, 43, 4, '["Rock Slide", "Sandstorm", "Earthquake", "Bind"]'::jsonb, 'Rock Head', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 68, 46, 5, '["Rock Slide", "Foresight", "Cross Chop", "Vital Throw"]'::jsonb, 'Guts', NULL, NULL);
END $$;

-- Karen (Elite Four)
DO $$
DECLARE
  v_trainer_id UUID;
  v_route_id UUID;
BEGIN
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'indigo-plateau' AND game_id = 'e1f2a3b4-c5d6-7890-ef12-345678901234';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
  VALUES (v_route_id, 'Karen', 'Elite Four', true, 'elite_four', 47, 4, 'Dark-type specialist.')
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 197, 42, 1, '["Faint Attack", "Confuse Ray", "Mean Look", "Sand-Attack"]'::jsonb, 'Synchronize', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 45, 42, 2, '["Stun Spore", "Acid", "Petal Dance", "Moonlight"]'::jsonb, 'Chlorophyll', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 94, 45, 3, '["Lick", "Spite", "Curse", "Destiny Bond"]'::jsonb, 'Levitate', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 198, 44, 4, '["Faint Attack", "Whirlwind", "Pursuit", "Quick Attack"]'::jsonb, 'Insomnia', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 229, 47, 5, '["Crunch", "Flamethrower", "Roar", "Pursuit"]'::jsonb, 'Early Bird', NULL, NULL);
END $$;

-- Lance (Champion)
DO $$
DECLARE
  v_trainer_id UUID;
  v_route_id UUID;
BEGIN
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'indigo-plateau' AND game_id = 'e1f2a3b4-c5d6-7890-ef12-345678901234';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
  VALUES (v_route_id, 'Lance', 'Champion', true, 'champion', 50, 5, 'Dragon-type specialist. Johto Champion.')
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 130, 44, 1, '["Rain Dance", "Surf", "Flail", "Hyper Beam"]'::jsonb, 'Intimidate', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 149, 47, 2, '["Twister", "Thunder Wave", "Blizzard", "Hyper Beam"]'::jsonb, 'Inner Focus', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 6, 46, 3, '["Flamethrower", "Wing Attack", "Slash", "Hyper Beam"]'::jsonb, 'Blaze', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 142, 46, 4, '["Rock Slide", "AncientPower", "Wing Attack", "Hyper Beam"]'::jsonb, 'Rock Head', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 149, 47, 5, '["Twister", "Thunder Wave", "Thunder", "Hyper Beam"]'::jsonb, 'Inner Focus', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 149, 50, 6, '["Safeguard", "Outrage", "Fire Blast", "Hyper Beam"]'::jsonb, 'Inner Focus', NULL, NULL);
END $$;

-- Lt. Surge (Gym Leader)
DO $$
DECLARE
  v_trainer_id UUID;
  v_route_id UUID;
BEGIN
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'vermilion-city' AND game_id = 'e1f2a3b4-c5d6-7890-ef12-345678901234';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
  VALUES (v_route_id, 'Lt. Surge', 'Gym Leader', true, 'gym_leader', 46, 1, 'Electric-type specialist. Thunder Badge.')
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 26, 44, 1, '["Thunderbolt", "Thunder", "Thunder Wave", "Quick Attack"]'::jsonb, 'Static', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 101, 40, 2, '["Screech", "Double Team", "Swift", "Explosion"]'::jsonb, 'Soundproof', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 101, 40, 3, '["Screech", "Double Team", "Swift", "Explosion"]'::jsonb, 'Static', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 82, 40, 4, '["Zap Cannon", "Lock-On", "Double Team", "Swift"]'::jsonb, 'Magnet Pull', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 125, 46, 5, '["ThunderPunch", "Thunder", "Light Screen", "Quick Attack"]'::jsonb, 'Static', NULL, NULL);
END $$;

-- Sabrina (Gym Leader)
DO $$
DECLARE
  v_trainer_id UUID;
  v_route_id UUID;
BEGIN
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'saffron-city' AND game_id = 'e1f2a3b4-c5d6-7890-ef12-345678901234';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
  VALUES (v_route_id, 'Sabrina', 'Gym Leader', true, 'gym_leader', 48, 1, 'Psychic-type specialist. Marsh Badge.')
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 196, 46, 1, '["Sand-Attack", "Quick Attack", "Swift", "Psychic"]'::jsonb, 'Synchronize', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 122, 46, 2, '["Barrier", "Reflect", "Baton Pass", "Psychic"]'::jsonb, 'Soundproof', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 65, 48, 3, '["Recover", "Future Sight", "Psychic", "Reflect"]'::jsonb, 'Synchronize', NULL, NULL);
END $$;

-- Misty (Gym Leader)
DO $$
DECLARE
  v_trainer_id UUID;
  v_route_id UUID;
BEGIN
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'cerulean-city' AND game_id = 'e1f2a3b4-c5d6-7890-ef12-345678901234';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
  VALUES (v_route_id, 'Misty', 'Gym Leader', true, 'gym_leader', 47, 1, 'Water-type specialist. Cascade Badge.')
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 55, 42, 1, '["Surf", "Disable", "Psych Up", "Psychic"]'::jsonb, 'Cloud Nine', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 195, 42, 2, '["Surf", "Amnesia", "Earthquake", "Rain Dance"]'::jsonb, 'Water Absorb', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 131, 44, 3, '["Surf", "Perish Song", "Blizzard", "Rain Dance"]'::jsonb, 'Water Absorb', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 121, 47, 4, '["Surf", "Confuse Ray", "Recover", "Ice Beam"]'::jsonb, 'Natural Cure', NULL, NULL);
END $$;

-- Erika (Gym Leader)
DO $$
DECLARE
  v_trainer_id UUID;
  v_route_id UUID;
BEGIN
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'celadon-city' AND game_id = 'e1f2a3b4-c5d6-7890-ef12-345678901234';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
  VALUES (v_route_id, 'Erika', 'Gym Leader', true, 'gym_leader', 46, 1, 'Grass-type specialist. Rainbow Badge.')
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 114, 42, 1, '["Vine Whip", "Bind", "Giga Drain", "Sleep Powder"]'::jsonb, 'Chlorophyll', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 71, 46, 2, '["Sunny Day", "Synthesis", "Acid", "Razor Leaf"]'::jsonb, 'Chlorophyll', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 189, 41, 3, '["Mega Drain", "Leech Seed", "Cotton Spore", "Giga Drain"]'::jsonb, 'Chlorophyll', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 182, 46, 4, '["Sunny Day", "Synthesis", "Petal Dance", "SolarBeam"]'::jsonb, 'Chlorophyll', NULL, NULL);
END $$;

-- Janine (Gym Leader)
DO $$
DECLARE
  v_trainer_id UUID;
  v_route_id UUID;
BEGIN
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'fuchsia-city' AND game_id = 'e1f2a3b4-c5d6-7890-ef12-345678901234';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
  VALUES (v_route_id, 'Janine', 'Gym Leader', true, 'gym_leader', 39, 1, 'Poison-type specialist. Soul Badge.')
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 169, 36, 1, '["Wing Attack", "Confuse Ray", "Supersonic", "Screech"]'::jsonb, 'Inner Focus', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 110, 36, 2, '["Sludge Bomb", "Smog", "Toxic", "Explosion"]'::jsonb, 'Levitate', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 110, 36, 3, '["Sludge Bomb", "Smog", "Toxic", "Explosion"]'::jsonb, 'Levitate', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 168, 33, 4, '["String Shot", "Night Shade", "Giga Drain", "Scary Face"]'::jsonb, 'Swarm', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 49, 39, 5, '["Toxic", "Psychic", "Double Team", "Supersonic"]'::jsonb, 'Shield Dust', NULL, NULL);
END $$;

-- Brock (Gym Leader)
DO $$
DECLARE
  v_trainer_id UUID;
  v_route_id UUID;
BEGIN
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'pewter-city' AND game_id = 'e1f2a3b4-c5d6-7890-ef12-345678901234';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
  VALUES (v_route_id, 'Brock', 'Gym Leader', true, 'gym_leader', 44, 1, 'Rock-type specialist. Boulder Badge.')
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 75, 41, 1, '["Defense Curl", "Rock Slide", "Rollout", "Earthquake"]'::jsonb, 'Rock Head', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 111, 41, 2, '["Fury Attack", "Scary Face", "Earthquake", "Horn Drill"]'::jsonb, 'Lightning Rod', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 139, 42, 3, '["Bite", "Surf", "Protect", "Spike Cannon"]'::jsonb, 'Swift Swim', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 141, 42, 4, '["Slash", "Surf", "Endure", "Giga Drain"]'::jsonb, 'Swift Swim', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 95, 44, 5, '["Bind", "Rock Slide", "Bide", "Sandstorm"]'::jsonb, 'Rock Head', NULL, NULL);
END $$;

-- Blaine (Gym Leader)
DO $$
DECLARE
  v_trainer_id UUID;
  v_route_id UUID;
BEGIN
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'cinnabar-island' AND game_id = 'e1f2a3b4-c5d6-7890-ef12-345678901234';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
  VALUES (v_route_id, 'Blaine', 'Gym Leader', true, 'gym_leader', 50, 1, 'Fire-type specialist. Volcano Badge. Relocated to Seafoam Islands.')
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 219, 45, 1, '["Curse", "Smog", "Flamethrower", "Rock Slide"]'::jsonb, 'Magma Armor', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 126, 45, 2, '["ThunderPunch", "Fire Punch", "Sunny Day", "Confuse Ray"]'::jsonb, 'Flame Body', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 78, 50, 3, '["Quick Attack", "Fire Spin", "Fury Attack", "Fire Blast"]'::jsonb, 'Flash Fire', NULL, NULL);
END $$;

-- Blue (Gym Leader)
DO $$
DECLARE
  v_trainer_id UUID;
  v_route_id UUID;
BEGIN
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'viridian-city' AND game_id = 'e1f2a3b4-c5d6-7890-ef12-345678901234';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
  VALUES (v_route_id, 'Blue', 'Gym Leader', true, 'gym_leader', 58, 1, 'Mixed-type specialist. Earth Badge.')
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 18, 56, 1, '["Quick Attack", "Whirlwind", "Wing Attack", "Mirror Move"]'::jsonb, 'Keen Eye', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 65, 54, 2, '["Disable", "Recover", "Psychic", "Reflect"]'::jsonb, 'Synchronize', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 112, 56, 3, '["Fury Attack", "Sandstorm", "Rock Slide", "Earthquake"]'::jsonb, 'Lightning Rod', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 130, 58, 4, '["Twister", "Hydro Pump", "Rain Dance", "Hyper Beam"]'::jsonb, 'Intimidate', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 103, 58, 5, '["Sunny Day", "Leech Seed", "Egg Bomb", "SolarBeam"]'::jsonb, 'Chlorophyll', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 59, 58, 6, '["Roar", "Swift", "Flamethrower", "ExtremeSpeed"]'::jsonb, 'Intimidate', NULL, NULL);
END $$;

-- ===========================================
-- STEP 6: REGULAR TRAINERS
-- ===========================================

-- Route 30 regular trainers
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
SELECT r.id, t.name, t.class, false, t.ord
FROM public.routes r,
(VALUES
  ('Joey', 'Youngster', 1),
  ('Mikey', 'Youngster', 2),
  ('Don', 'Bug Catcher', 3)
) AS t(name, class, ord)
WHERE r.slug = 'route-30' AND r.game_id = 'e1f2a3b4-c5d6-7890-ef12-345678901234';

-- Route 31 regular trainers
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
SELECT r.id, t.name, t.class, false, t.ord
FROM public.routes r,
(VALUES
  ('Wade', 'Bug Catcher', 1)
) AS t(name, class, ord)
WHERE r.slug = 'route-31' AND r.game_id = 'e1f2a3b4-c5d6-7890-ef12-345678901234';

-- Sprout Tower regular trainers
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
SELECT r.id, t.name, t.class, false, t.ord
FROM public.routes r,
(VALUES
  ('Nico', 'Sage', 1),
  ('Chow', 'Sage', 2),
  ('Edmond', 'Sage', 3),
  ('Jin', 'Sage', 4),
  ('Neal', 'Sage', 5),
  ('Troy', 'Sage', 6)
) AS t(name, class, ord)
WHERE r.slug = 'sprout-tower' AND r.game_id = 'e1f2a3b4-c5d6-7890-ef12-345678901234';

-- Violet City regular trainers
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
SELECT r.id, t.name, t.class, false, t.ord
FROM public.routes r,
(VALUES
  ('Abe', 'Bird Keeper', 2),
  ('Rod', 'Bird Keeper', 3)
) AS t(name, class, ord)
WHERE r.slug = 'violet-city' AND r.game_id = 'e1f2a3b4-c5d6-7890-ef12-345678901234';

-- Route 32 regular trainers
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
SELECT r.id, t.name, t.class, false, t.ord
FROM public.routes r,
(VALUES
  ('Albert', 'Youngster', 1),
  ('Liz', 'Picnicker', 2),
  ('Roland', 'Camper', 3),
  ('Henry', 'Fisher', 4),
  ('Justin', 'Fisher', 5),
  ('Ralph', 'Fisher', 6),
  ('Gordon', 'Youngster', 7),
  ('Peter', 'Bird Keeper', 8),
  ('Nathan', 'Psychic', 9)
) AS t(name, class, ord)
WHERE r.slug = 'route-32' AND r.game_id = 'e1f2a3b4-c5d6-7890-ef12-345678901234';

-- Ruins Of Alph regular trainers
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
SELECT r.id, t.name, t.class, false, t.ord
FROM public.routes r,
(VALUES
  ('Nathan', 'Psychic', 1)
) AS t(name, class, ord)
WHERE r.slug = 'ruins-of-alph' AND r.game_id = 'e1f2a3b4-c5d6-7890-ef12-345678901234';

-- Union Cave regular trainers
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
SELECT r.id, t.name, t.class, false, t.ord
FROM public.routes r,
(VALUES
  ('Daniel', 'Hiker', 1),
  ('Russell', 'Hiker', 2),
  ('Bill', 'Firebreather', 3),
  ('Larry', 'PokéManiac', 4),
  ('Ray', 'Firebreather', 5),
  ('Leonard', 'Hiker', 6),
  ('Phillip', 'Hiker', 7),
  ('Calvin', 'PokéManiac', 8),
  ('Andrew', 'PokéManiac', 9),
  ('Nick', 'Cooltrainer', 10),
  ('Gwen', 'Cooltrainer', 11),
  ('Emma', 'Cooltrainer', 12)
) AS t(name, class, ord)
WHERE r.slug = 'union-cave' AND r.game_id = 'e1f2a3b4-c5d6-7890-ef12-345678901234';

-- Route 33 regular trainers
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
SELECT r.id, t.name, t.class, false, t.ord
FROM public.routes r,
(VALUES
  ('Anthony', 'Hiker', 1)
) AS t(name, class, ord)
WHERE r.slug = 'route-33' AND r.game_id = 'e1f2a3b4-c5d6-7890-ef12-345678901234';

-- Slowpoke Well regular trainers
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
SELECT r.id, t.name, t.class, false, t.ord
FROM public.routes r,
(VALUES
  ('Grunt 1', 'Team Rocket', 1),
  ('Grunt 2', 'Team Rocket', 2),
  ('Grunt 3', 'Team Rocket', 3)
) AS t(name, class, ord)
WHERE r.slug = 'slowpoke-well' AND r.game_id = 'e1f2a3b4-c5d6-7890-ef12-345678901234';

-- Azalea Town regular trainers
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
SELECT r.id, t.name, t.class, false, t.ord
FROM public.routes r,
(VALUES
  ('Amy & May', 'Twins', 2),
  ('Al', 'Bug Catcher', 3),
  ('Benny', 'Bug Catcher', 4),
  ('Josh', 'Bug Catcher', 5)
) AS t(name, class, ord)
WHERE r.slug = 'azalea-town' AND r.game_id = 'e1f2a3b4-c5d6-7890-ef12-345678901234';

-- Ilex Forest regular trainers
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
SELECT r.id, t.name, t.class, false, t.ord
FROM public.routes r,
(VALUES
  ('Wayne', 'Bug Catcher', 1)
) AS t(name, class, ord)
WHERE r.slug = 'ilex-forest' AND r.game_id = 'e1f2a3b4-c5d6-7890-ef12-345678901234';

-- Route 34 regular trainers
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
SELECT r.id, t.name, t.class, false, t.ord
FROM public.routes r,
(VALUES
  ('Samuel', 'Youngster', 1),
  ('Brandon', 'PokéFan', 2),
  ('Gina', 'Picnicker', 3),
  ('Ian', 'Youngster', 4),
  ('Keith', 'Officer', 5),
  ('Todd', 'Camper', 6),
  ('Irene', 'Cooltrainer', 7),
  ('Jenn', 'Cooltrainer', 8),
  ('Kate', 'Cooltrainer', 9)
) AS t(name, class, ord)
WHERE r.slug = 'route-34' AND r.game_id = 'e1f2a3b4-c5d6-7890-ef12-345678901234';

-- Goldenrod City regular trainers
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
SELECT r.id, t.name, t.class, false, t.ord
FROM public.routes r,
(VALUES
  ('Donald', 'PokéManiac', 2),
  ('Teru', 'Super Nerd', 3),
  ('Isaac', 'PokéManiac', 4),
  ('Eric', 'Super Nerd', 5),
  ('Victoria', 'Beauty', 6),
  ('Samantha', 'Beauty', 7),
  ('Carrie', 'Lass', 8),
  ('Bridget', 'Lass', 9),
  ('Grunt 1', 'Team Rocket', 10),
  ('Grunt 2', 'Team Rocket', 11),
  ('Grunt 3', 'Team Rocket', 12),
  ('Grunt 4', 'Team Rocket', 13),
  ('Marc', 'Scientist', 14),
  ('Grunt 5', 'Team Rocket', 15),
  ('Grunt 6', 'Team Rocket', 16),
  ('Grunt 7', 'Team Rocket', 17),
  ('Rich', 'Scientist', 18),
  ('Grunt 8', 'Team Rocket', 19),
  ('Grunt 9', 'Team Rocket', 20),
  ('Eddie', 'Burglar', 21),
  ('Duncan', 'Burglar', 22),
  ('Grunt 10', 'Team Rocket', 23),
  ('Grunt 11', 'Team Rocket', 24)
) AS t(name, class, ord)
WHERE r.slug = 'goldenrod-city' AND r.game_id = 'e1f2a3b4-c5d6-7890-ef12-345678901234';

-- Route 35 regular trainers
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
SELECT r.id, t.name, t.class, false, t.ord
FROM public.routes r,
(VALUES
  ('Kim', 'Picnicker', 1),
  ('Elliot', 'Camper', 2),
  ('Brooke', 'Picnicker', 3),
  ('Ivan', 'Camper', 4),
  ('Irwin', 'Juggler', 5),
  ('Walt', 'Firebreather', 6),
  ('Dirk', 'Officer', 7),
  ('Arnie', 'Bug Catcher', 8),
  ('Bryan', 'Bird Keeper', 9)
) AS t(name, class, ord)
WHERE r.slug = 'route-35' AND r.game_id = 'e1f2a3b4-c5d6-7890-ef12-345678901234';

-- National Park regular trainers
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
SELECT r.id, t.name, t.class, false, t.ord
FROM public.routes r,
(VALUES
  ('Beverly', 'PokéFan', 1),
  ('William', 'PokéFan', 2),
  ('Jack', 'Schoolboy', 3),
  ('Krise', 'Lass', 4)
) AS t(name, class, ord)
WHERE r.slug = 'national-park' AND r.game_id = 'e1f2a3b4-c5d6-7890-ef12-345678901234';

-- Route 36 regular trainers
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
SELECT r.id, t.name, t.class, false, t.ord
FROM public.routes r,
(VALUES
  ('Mark', 'Psychic', 1),
  ('Alan', 'Schoolboy', 2)
) AS t(name, class, ord)
WHERE r.slug = 'route-36' AND r.game_id = 'e1f2a3b4-c5d6-7890-ef12-345678901234';

-- Route 37 regular trainers
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
SELECT r.id, t.name, t.class, false, t.ord
FROM public.routes r,
(VALUES
  ('Ann & Anne', 'Twins', 1),
  ('Greg', 'Psychic', 2)
) AS t(name, class, ord)
WHERE r.slug = 'route-37' AND r.game_id = 'e1f2a3b4-c5d6-7890-ef12-345678901234';

-- Ecruteak City regular trainers
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
SELECT r.id, t.name, t.class, false, t.ord
FROM public.routes r,
(VALUES
  ('Naoko', 'Kimono Girl', 2),
  ('Sayo', 'Kimono Girl', 3),
  ('Zuki', 'Kimono Girl', 4),
  ('Kuni', 'Kimono Girl', 5),
  ('Miki', 'Kimono Girl', 6),
  ('Gaku', 'Sage', 7),
  ('Masa', 'Sage', 8),
  ('Koji', 'Sage', 9),
  ('Ping', 'Sage', 10),
  ('Grace', 'Medium', 11),
  ('Jeffrey', 'Sage', 12),
  ('Martha', 'Medium', 13)
) AS t(name, class, ord)
WHERE r.slug = 'ecruteak-city' AND r.game_id = 'e1f2a3b4-c5d6-7890-ef12-345678901234';

-- Route 38 regular trainers
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
SELECT r.id, t.name, t.class, false, t.ord
FROM public.routes r,
(VALUES
  ('Harry', 'Sailor', 1),
  ('Dana', 'Lass', 2),
  ('Valerie', 'Beauty', 3),
  ('Toby', 'Bird Keeper', 4),
  ('Chad', 'Schoolboy', 5),
  ('Olivia', 'Beauty', 6)
) AS t(name, class, ord)
WHERE r.slug = 'route-38' AND r.game_id = 'e1f2a3b4-c5d6-7890-ef12-345678901234';

-- Route 39 regular trainers
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
SELECT r.id, t.name, t.class, false, t.ord
FROM public.routes r,
(VALUES
  ('Norman', 'Psychic', 1),
  ('Derek', 'PokéFan', 2),
  ('Ruth', 'PokéFan', 3),
  ('Eugene', 'Sailor', 4),
  ('Jaime', 'PokéFan', 5)
) AS t(name, class, ord)
WHERE r.slug = 'route-39' AND r.game_id = 'e1f2a3b4-c5d6-7890-ef12-345678901234';

-- Olivine City regular trainers
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
SELECT r.id, t.name, t.class, false, t.ord
FROM public.routes r,
(VALUES
  ('Alfred', 'Gentleman', 2),
  ('Huey', 'Sailor', 3),
  ('Theo', 'Bird Keeper', 4),
  ('Preston', 'Gentleman', 5),
  ('Terrell', 'Sailor', 6),
  ('Connie', 'Lass', 7),
  ('Kent', 'Sailor', 8),
  ('Denis', 'Bird Keeper', 9),
  ('Ernest', 'Sailor', 10)
) AS t(name, class, ord)
WHERE r.slug = 'olivine-city' AND r.game_id = 'e1f2a3b4-c5d6-7890-ef12-345678901234';

-- Route 40 regular trainers
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
SELECT r.id, t.name, t.class, false, t.ord
FROM public.routes r,
(VALUES
  ('Simon', 'Swimmer', 1),
  ('Randall', 'Swimmer', 2),
  ('Paula', 'Swimmer', 3),
  ('Elaine', 'Swimmer', 4)
) AS t(name, class, ord)
WHERE r.slug = 'route-40' AND r.game_id = 'e1f2a3b4-c5d6-7890-ef12-345678901234';

-- Route 41 regular trainers
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
SELECT r.id, t.name, t.class, false, t.ord
FROM public.routes r,
(VALUES
  ('George', 'Swimmer', 1),
  ('Kara', 'Swimmer', 2),
  ('Mathew', 'Swimmer', 3),
  ('Denise', 'Swimmer', 4),
  ('Kirk', 'Swimmer', 5),
  ('Berke', 'Swimmer', 6),
  ('Charlie', 'Swimmer', 7),
  ('Susie', 'Swimmer', 8),
  ('Kaylee', 'Swimmer', 9),
  ('Wendy', 'Swimmer', 10)
) AS t(name, class, ord)
WHERE r.slug = 'route-41' AND r.game_id = 'e1f2a3b4-c5d6-7890-ef12-345678901234';

-- Cianwood City regular trainers
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
SELECT r.id, t.name, t.class, false, t.ord
FROM public.routes r,
(VALUES
  ('Yoshi', 'Blackbelt', 2),
  ('Lao', 'Blackbelt', 3),
  ('Nob', 'Blackbelt', 4),
  ('Lung', 'Blackbelt', 5)
) AS t(name, class, ord)
WHERE r.slug = 'cianwood-city' AND r.game_id = 'e1f2a3b4-c5d6-7890-ef12-345678901234';

-- Route 42 regular trainers
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
SELECT r.id, t.name, t.class, false, t.ord
FROM public.routes r,
(VALUES
  ('Tully', 'Fisher', 1),
  ('Shane', 'PokéManiac', 2),
  ('Benjamin', 'Hiker', 3),
  ('Miller', 'PokéManiac', 4),
  ('Markus', 'Super Nerd', 5)
) AS t(name, class, ord)
WHERE r.slug = 'route-42' AND r.game_id = 'e1f2a3b4-c5d6-7890-ef12-345678901234';

-- Mt Mortar regular trainers
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
SELECT r.id, t.name, t.class, false, t.ord
FROM public.routes r,
(VALUES
  ('Miller', 'PokéManiac', 1),
  ('Markus', 'Super Nerd', 2)
) AS t(name, class, ord)
WHERE r.slug = 'mt-mortar' AND r.game_id = 'e1f2a3b4-c5d6-7890-ef12-345678901234';

-- Mahogany Town regular trainers
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
SELECT r.id, t.name, t.class, false, t.ord
FROM public.routes r,
(VALUES
  ('Grunt 1', 'Team Rocket', 2),
  ('Jed', 'Scientist', 3),
  ('Grunt 2', 'Team Rocket', 4),
  ('Grunt 3', 'Team Rocket', 5),
  ('Grunt 4', 'Team Rocket', 6),
  ('Ross', 'Scientist', 7),
  ('Mitch', 'Scientist', 8),
  ('Grunt 5', 'Team Rocket', 9),
  ('Grunt 6', 'Team Rocket', 10),
  ('Roxanne', 'Skier', 11),
  ('Ronald', 'Boarder', 12),
  ('Clarissa', 'Skier', 13),
  ('Brad', 'Boarder', 14),
  ('Douglas', 'Boarder', 15)
) AS t(name, class, ord)
WHERE r.slug = 'mahogany-town' AND r.game_id = 'e1f2a3b4-c5d6-7890-ef12-345678901234';

-- Route 43 regular trainers
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
SELECT r.id, t.name, t.class, false, t.ord
FROM public.routes r,
(VALUES
  ('Spencer', 'Camper', 1),
  ('Tiffany', 'Picnicker', 2),
  ('Marvin', 'Fisher', 3),
  ('Ron', 'PokéManiac', 4),
  ('Brent', 'PokéManiac', 5),
  ('Ben', 'PokéManiac', 6)
) AS t(name, class, ord)
WHERE r.slug = 'route-43' AND r.game_id = 'e1f2a3b4-c5d6-7890-ef12-345678901234';

-- Lake Of Rage regular trainers
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
SELECT r.id, t.name, t.class, false, t.ord
FROM public.routes r,
(VALUES
  ('Aaron', 'Cooltrainer', 1),
  ('Raymond', 'Fisher', 2),
  ('Andre', 'Fisher', 3),
  ('Lois', 'Cooltrainer', 4)
) AS t(name, class, ord)
WHERE r.slug = 'lake-of-rage' AND r.game_id = 'e1f2a3b4-c5d6-7890-ef12-345678901234';

-- Route 44 regular trainers
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
SELECT r.id, t.name, t.class, false, t.ord
FROM public.routes r,
(VALUES
  ('Phil', 'Psychic', 1),
  ('Edgar', 'Fisher', 2),
  ('Cybil', 'Cooltrainer', 3),
  ('Allen', 'Cooltrainer', 4),
  ('Zach', 'PokéManiac', 5),
  ('Wilton', 'Fisher', 6),
  ('Vance', 'Bird Keeper', 7)
) AS t(name, class, ord)
WHERE r.slug = 'route-44' AND r.game_id = 'e1f2a3b4-c5d6-7890-ef12-345678901234';

-- Blackthorn City regular trainers
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
SELECT r.id, t.name, t.class, false, t.ord
FROM public.routes r,
(VALUES
  ('Paul', 'Cooltrainer', 2),
  ('Fran', 'Cooltrainer', 3),
  ('Cody', 'Cooltrainer', 4),
  ('Mike', 'Cooltrainer', 5),
  ('Lola', 'Cooltrainer', 6)
) AS t(name, class, ord)
WHERE r.slug = 'blackthorn-city' AND r.game_id = 'e1f2a3b4-c5d6-7890-ef12-345678901234';

-- Route 45 regular trainers
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
SELECT r.id, t.name, t.class, false, t.ord
FROM public.routes r,
(VALUES
  ('Erik', 'Hiker', 1),
  ('Ryan', 'Cooltrainer', 2),
  ('Kelly', 'Cooltrainer', 3),
  ('Parry', 'Hiker', 4),
  ('Kenji', 'Blackbelt', 5),
  ('Timothy', 'Hiker', 6),
  ('Michael', 'Hiker', 7),
  ('Quentin', 'Camper', 8)
) AS t(name, class, ord)
WHERE r.slug = 'route-45' AND r.game_id = 'e1f2a3b4-c5d6-7890-ef12-345678901234';

-- Route 46 regular trainers
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
SELECT r.id, t.name, t.class, false, t.ord
FROM public.routes r,
(VALUES
  ('Ted', 'Camper', 1),
  ('Erin', 'Picnicker', 2),
  ('Bailey', 'Hiker', 3)
) AS t(name, class, ord)
WHERE r.slug = 'route-46' AND r.game_id = 'e1f2a3b4-c5d6-7890-ef12-345678901234';

-- Route 27 regular trainers
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
SELECT r.id, t.name, t.class, false, t.ord
FROM public.routes r,
(VALUES
  ('Megan', 'Cooltrainer', 1),
  ('Blake', 'Cooltrainer', 2),
  ('Jose', 'Bird Keeper', 3),
  ('Brian', 'Cooltrainer', 4),
  ('Gilbert', 'Psychic', 5),
  ('Reena', 'Cooltrainer', 6)
) AS t(name, class, ord)
WHERE r.slug = 'route-27' AND r.game_id = 'e1f2a3b4-c5d6-7890-ef12-345678901234';

-- Route 26 regular trainers
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
SELECT r.id, t.name, t.class, false, t.ord
FROM public.routes r,
(VALUES
  ('Scott', 'Fisher', 1),
  ('Richard', 'Psychic', 2),
  ('Joyce', 'Cooltrainer', 3),
  ('Gaven', 'Cooltrainer', 4),
  ('Jake', 'Cooltrainer', 5),
  ('Beth', 'Cooltrainer', 6)
) AS t(name, class, ord)
WHERE r.slug = 'route-26' AND r.game_id = 'e1f2a3b4-c5d6-7890-ef12-345678901234';

-- Vermilion City regular trainers
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
SELECT r.id, t.name, t.class, false, t.ord
FROM public.routes r,
(VALUES
  ('Horton', 'Juggler', 2),
  ('Vincent', 'Guitarist', 3),
  ('Gregory', 'Gentleman', 4)
) AS t(name, class, ord)
WHERE r.slug = 'vermilion-city' AND r.game_id = 'e1f2a3b4-c5d6-7890-ef12-345678901234';

-- Route 6 regular trainers
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
SELECT r.id, t.name, t.class, false, t.ord
FROM public.routes r,
(VALUES
  ('Rex', 'PokéFan', 1),
  ('Allan', 'PokéFan', 2)
) AS t(name, class, ord)
WHERE r.slug = 'route-6' AND r.game_id = 'e1f2a3b4-c5d6-7890-ef12-345678901234';

-- Saffron City regular trainers
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
SELECT r.id, t.name, t.class, false, t.ord
FROM public.routes r,
(VALUES
  ('Rebecca', 'Medium', 2),
  ('Jared', 'Psychic', 3),
  ('Doris', 'Medium', 4),
  ('Franklin', 'Psychic', 5)
) AS t(name, class, ord)
WHERE r.slug = 'saffron-city' AND r.game_id = 'e1f2a3b4-c5d6-7890-ef12-345678901234';

-- Route 8 regular trainers
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
SELECT r.id, t.name, t.class, false, t.ord
FROM public.routes r,
(VALUES
  ('Dwayne', 'Biker', 1),
  ('Harris', 'Biker', 2),
  ('Zeke', 'Biker', 3),
  ('Sam', 'Super Nerd', 4),
  ('Tom', 'Super Nerd', 5)
) AS t(name, class, ord)
WHERE r.slug = 'route-8' AND r.game_id = 'e1f2a3b4-c5d6-7890-ef12-345678901234';

-- Route 10 regular trainers
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
SELECT r.id, t.name, t.class, false, t.ord
FROM public.routes r,
(VALUES
  ('Robert', 'PokéFan', 1),
  ('Jim', 'Hiker', 2)
) AS t(name, class, ord)
WHERE r.slug = 'route-10' AND r.game_id = 'e1f2a3b4-c5d6-7890-ef12-345678901234';

-- Route 9 regular trainers
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
SELECT r.id, t.name, t.class, false, t.ord
FROM public.routes r,
(VALUES
  ('Edna', 'Picnicker', 1),
  ('Sid', 'Camper', 2),
  ('Dean', 'Camper', 3),
  ('Tim', 'Hiker', 4),
  ('Heidi', 'Picnicker', 5),
  ('Sidney', 'Hiker', 6)
) AS t(name, class, ord)
WHERE r.slug = 'route-9' AND r.game_id = 'e1f2a3b4-c5d6-7890-ef12-345678901234';

-- Route 24 regular trainers
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
SELECT r.id, t.name, t.class, false, t.ord
FROM public.routes r,
(VALUES
  ('Grunt', 'Team Rocket', 1)
) AS t(name, class, ord)
WHERE r.slug = 'route-24' AND r.game_id = 'e1f2a3b4-c5d6-7890-ef12-345678901234';

-- Route 25 regular trainers
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
SELECT r.id, t.name, t.class, false, t.ord
FROM public.routes r,
(VALUES
  ('Dudley', 'Schoolboy', 1),
  ('Ellen', 'Lass', 2),
  ('Joe', 'Schoolboy', 3),
  ('Laura', 'Lass', 4),
  ('Lloyd', 'Camper', 5),
  ('Shannon', 'Lass', 6),
  ('Pat', 'Super Nerd', 7),
  ('Kevin', 'Cooltrainer', 8)
) AS t(name, class, ord)
WHERE r.slug = 'route-25' AND r.game_id = 'e1f2a3b4-c5d6-7890-ef12-345678901234';

-- Cerulean City regular trainers
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
SELECT r.id, t.name, t.class, false, t.ord
FROM public.routes r,
(VALUES
  ('Parker', 'Swimmer', 2),
  ('Briana', 'Swimmer', 3),
  ('Diana', 'Swimmer', 4)
) AS t(name, class, ord)
WHERE r.slug = 'cerulean-city' AND r.game_id = 'e1f2a3b4-c5d6-7890-ef12-345678901234';

-- Celadon City regular trainers
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
SELECT r.id, t.name, t.class, false, t.ord
FROM public.routes r,
(VALUES
  ('Jo & Zoe', 'Twins', 2),
  ('Tanya', 'Picnicker', 3),
  ('Michelle', 'Lass', 4),
  ('Julia', 'Beauty', 5)
) AS t(name, class, ord)
WHERE r.slug = 'celadon-city' AND r.game_id = 'e1f2a3b4-c5d6-7890-ef12-345678901234';

-- Route 17 regular trainers
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
SELECT r.id, t.name, t.class, false, t.ord
FROM public.routes r,
(VALUES
  ('Riley', 'Biker', 1),
  ('Glenn', 'Biker', 2),
  ('Joel', 'Biker', 3),
  ('Charles', 'Biker', 4)
) AS t(name, class, ord)
WHERE r.slug = 'route-17' AND r.game_id = 'e1f2a3b4-c5d6-7890-ef12-345678901234';

-- Route 18 regular trainers
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
SELECT r.id, t.name, t.class, false, t.ord
FROM public.routes r,
(VALUES
  ('Bob', 'Bird Keeper', 1),
  ('Boris', 'Bird Keeper', 2)
) AS t(name, class, ord)
WHERE r.slug = 'route-18' AND r.game_id = 'e1f2a3b4-c5d6-7890-ef12-345678901234';

-- Fuchsia City regular trainers
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
SELECT r.id, t.name, t.class, false, t.ord
FROM public.routes r,
(VALUES
  ('Linda', 'Lass', 2),
  ('Cindy', 'Picnicker', 3),
  ('Barry', 'Camper', 4),
  ('Alice', 'Lass', 5)
) AS t(name, class, ord)
WHERE r.slug = 'fuchsia-city' AND r.game_id = 'e1f2a3b4-c5d6-7890-ef12-345678901234';

-- Route 15 regular trainers
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
SELECT r.id, t.name, t.class, false, t.ord
FROM public.routes r,
(VALUES
  ('Kipp', 'Schoolboy', 1),
  ('Tommy', 'Schoolboy', 2),
  ('Hillary', 'Teacher', 3),
  ('Billy', 'Schoolboy', 4),
  ('Colette', 'Teacher', 5),
  ('Johnny', 'Schoolboy', 6)
) AS t(name, class, ord)
WHERE r.slug = 'route-15' AND r.game_id = 'e1f2a3b4-c5d6-7890-ef12-345678901234';

-- Route 14 regular trainers
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
SELECT r.id, t.name, t.class, false, t.ord
FROM public.routes r,
(VALUES
  ('Roy', 'Bird Keeper', 1),
  ('Carter', 'PokéFan', 2),
  ('Trevor', 'PokéFan', 3)
) AS t(name, class, ord)
WHERE r.slug = 'route-14' AND r.game_id = 'e1f2a3b4-c5d6-7890-ef12-345678901234';

-- Route 13 regular trainers
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
SELECT r.id, t.name, t.class, false, t.ord
FROM public.routes r,
(VALUES
  ('Bret', 'Bird Keeper', 1),
  ('Perry', 'Bird Keeper', 2),
  ('Joshua', 'PokéFan', 3),
  ('Alex', 'PokéFan', 4),
  ('Kenny', 'Hiker', 5)
) AS t(name, class, ord)
WHERE r.slug = 'route-13' AND r.game_id = 'e1f2a3b4-c5d6-7890-ef12-345678901234';

-- Route 12 regular trainers
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
SELECT r.id, t.name, t.class, false, t.ord
FROM public.routes r,
(VALUES
  ('Barney', 'Fisher', 1),
  ('Stephen', 'Fisher', 2),
  ('Martin', 'Fisher', 3),
  ('Kyle', 'Fisher', 4)
) AS t(name, class, ord)
WHERE r.slug = 'route-12' AND r.game_id = 'e1f2a3b4-c5d6-7890-ef12-345678901234';

-- Route 11 regular trainers
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
SELECT r.id, t.name, t.class, false, t.ord
FROM public.routes r,
(VALUES
  ('Herman', 'Psychic', 1),
  ('Owen', 'Youngster', 2),
  ('Jason', 'Youngster', 3),
  ('Fidel', 'Psychic', 4)
) AS t(name, class, ord)
WHERE r.slug = 'route-11' AND r.game_id = 'e1f2a3b4-c5d6-7890-ef12-345678901234';

-- Route 2 regular trainers
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
SELECT r.id, t.name, t.class, false, t.ord
FROM public.routes r,
(VALUES
  ('Rob', 'Bug Catcher', 1),
  ('Doug', 'Bug Catcher', 2),
  ('Ed', 'Bug Catcher', 3)
) AS t(name, class, ord)
WHERE r.slug = 'route-2' AND r.game_id = 'e1f2a3b4-c5d6-7890-ef12-345678901234';

-- Pewter City regular trainers
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
SELECT r.id, t.name, t.class, false, t.ord
FROM public.routes r,
(VALUES
  ('Jerry', 'Camper', 2)
) AS t(name, class, ord)
WHERE r.slug = 'pewter-city' AND r.game_id = 'e1f2a3b4-c5d6-7890-ef12-345678901234';

-- Route 1 regular trainers
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
SELECT r.id, t.name, t.class, false, t.ord
FROM public.routes r,
(VALUES
  ('Danny', 'Schoolboy', 1),
  ('Quinn', 'Cooltrainer', 2)
) AS t(name, class, ord)
WHERE r.slug = 'route-1' AND r.game_id = 'e1f2a3b4-c5d6-7890-ef12-345678901234';

-- Route 21 regular trainers
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
SELECT r.id, t.name, t.class, false, t.ord
FROM public.routes r,
(VALUES
  ('Nikki', 'Swimmer', 1),
  ('Arnold', 'Fisher', 2),
  ('Seth', 'Swimmer', 3)
) AS t(name, class, ord)
WHERE r.slug = 'route-21' AND r.game_id = 'e1f2a3b4-c5d6-7890-ef12-345678901234';

-- Route 20 regular trainers
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
SELECT r.id, t.name, t.class, false, t.ord
FROM public.routes r,
(VALUES
  ('Cameron', 'Swimmer', 1),
  ('Lori', 'Swimmer', 2),
  ('Nicole', 'Swimmer', 3)
) AS t(name, class, ord)
WHERE r.slug = 'route-20' AND r.game_id = 'e1f2a3b4-c5d6-7890-ef12-345678901234';

-- Route 19 regular trainers
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
SELECT r.id, t.name, t.class, false, t.ord
FROM public.routes r,
(VALUES
  ('Harold', 'Swimmer', 1),
  ('Tucker', 'Swimmer', 2),
  ('Dawn', 'Swimmer', 3),
  ('Jerome', 'Swimmer', 4)
) AS t(name, class, ord)
WHERE r.slug = 'route-19' AND r.game_id = 'e1f2a3b4-c5d6-7890-ef12-345678901234';

-- ===========================================
-- Update has_trainers flags for routes that now have trainers
-- ===========================================

UPDATE public.routes SET has_trainers = true WHERE slug = 'route-30' AND game_id = 'e1f2a3b4-c5d6-7890-ef12-345678901234';
UPDATE public.routes SET has_trainers = true WHERE slug = 'route-31' AND game_id = 'e1f2a3b4-c5d6-7890-ef12-345678901234';
UPDATE public.routes SET has_trainers = true WHERE slug = 'route-33' AND game_id = 'e1f2a3b4-c5d6-7890-ef12-345678901234';
UPDATE public.routes SET has_trainers = true WHERE slug = 'slowpoke-well' AND game_id = 'e1f2a3b4-c5d6-7890-ef12-345678901234';
UPDATE public.routes SET has_trainers = true WHERE slug = 'ilex-forest' AND game_id = 'e1f2a3b4-c5d6-7890-ef12-345678901234';
UPDATE public.routes SET has_trainers = true WHERE slug = 'national-park' AND game_id = 'e1f2a3b4-c5d6-7890-ef12-345678901234';
UPDATE public.routes SET has_trainers = true WHERE slug = 'lake-of-rage' AND game_id = 'e1f2a3b4-c5d6-7890-ef12-345678901234';
UPDATE public.routes SET has_trainers = true WHERE slug = 'route-46' AND game_id = 'e1f2a3b4-c5d6-7890-ef12-345678901234';
UPDATE public.routes SET has_trainers = true WHERE slug = 'route-1' AND game_id = 'e1f2a3b4-c5d6-7890-ef12-345678901234';
UPDATE public.routes SET has_trainers = true WHERE slug = 'route-18' AND game_id = 'e1f2a3b4-c5d6-7890-ef12-345678901234';
UPDATE public.routes SET has_trainers = true WHERE slug = 'route-2' AND game_id = 'e1f2a3b4-c5d6-7890-ef12-345678901234';
UPDATE public.routes SET has_trainers = true WHERE slug = 'ruins-of-alph' AND game_id = 'e1f2a3b4-c5d6-7890-ef12-345678901234';
UPDATE public.routes SET has_trainers = true WHERE slug = 'mt-mortar' AND game_id = 'e1f2a3b4-c5d6-7890-ef12-345678901234';
UPDATE public.routes SET has_trainers = true WHERE slug = 'route-10' AND game_id = 'e1f2a3b4-c5d6-7890-ef12-345678901234';

-- Update total_routes count
UPDATE public.games SET total_routes = 86 WHERE id = 'e1f2a3b4-c5d6-7890-ef12-345678901234';
