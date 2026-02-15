-- ===========================================
-- POKEMON SOULSILVER: COMPLETE GAME DATA
-- Official Pokemon Game
-- Gen 4, Johto region
-- ===========================================
-- Game ID: d0e1f2a3-b4c5-6789-de90-123456789012
-- ===========================================

-- STEP 1: Insert the game
INSERT INTO public.games (id, slug, name, generation, region, base_game_slug, is_romhack, sprite_url, total_routes, description)
VALUES (
  'd0e1f2a3-b4c5-6789-de90-123456789012',
  'pokemon-soulsilver',
  'Pokemon SoulSilver',
  4,
  'Johto',
  NULL,
  false,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/249.png',
  90,
  'Pokemon SoulSilver Version for Nintendo DS. A Gen 4 remake of Pokemon Silver, featuring Johto and Kanto regions. Lugia on the cover.'
);

-- ===========================================
-- STEP 2: ALL ROUTES (90 total)
-- ===========================================

INSERT INTO public.routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items, notes) VALUES
('d0e1f2a3-b4c5-6789-de90-123456789012', 'New Bark Town', 'new-bark-town', 1, 'city', true, false, false, 'Starter town. Choose Chikorita, Cyndaquil, or Totodile.'),
('d0e1f2a3-b4c5-6789-de90-123456789012', 'Route 29', 'route-29', 2, 'route', true, false, false, NULL),
('d0e1f2a3-b4c5-6789-de90-123456789012', 'Route 46', 'route-46', 3, 'route', true, false, false, NULL),
('d0e1f2a3-b4c5-6789-de90-123456789012', 'Cherrygrove City', 'cherrygrove-city', 4, 'city', true, false, false, 'Surf and fishing available.'),
('d0e1f2a3-b4c5-6789-de90-123456789012', 'Route 30', 'route-30', 5, 'route', true, false, false, NULL),
('d0e1f2a3-b4c5-6789-de90-123456789012', 'Route 31', 'route-31', 6, 'route', true, false, false, NULL),
('d0e1f2a3-b4c5-6789-de90-123456789012', 'Dark Cave (Violet Side)', 'dark-cave-violet', 7, 'cave', true, false, false, NULL),
('d0e1f2a3-b4c5-6789-de90-123456789012', 'Violet City', 'violet-city', 8, 'city', false, true, false, 'Gym Leader Falkner. Flying-type specialist.'),
('d0e1f2a3-b4c5-6789-de90-123456789012', 'Sprout Tower', 'sprout-tower', 9, 'building', true, true, false, NULL),
('d0e1f2a3-b4c5-6789-de90-123456789012', 'Route 32', 'route-32', 10, 'route', true, true, false, NULL),
('d0e1f2a3-b4c5-6789-de90-123456789012', 'Ruins of Alph', 'ruins-of-alph', 11, 'special', true, false, false, 'Unown puzzle area.'),
('d0e1f2a3-b4c5-6789-de90-123456789012', 'Union Cave', 'union-cave', 12, 'cave', true, true, false, NULL),
('d0e1f2a3-b4c5-6789-de90-123456789012', 'Route 33', 'route-33', 13, 'route', true, false, false, NULL),
('d0e1f2a3-b4c5-6789-de90-123456789012', 'Azalea Town', 'azalea-town', 14, 'city', false, true, false, 'Gym Leader Bugsy. Bug-type specialist.'),
('d0e1f2a3-b4c5-6789-de90-123456789012', 'Slowpoke Well', 'slowpoke-well', 15, 'cave', true, false, false, NULL),
('d0e1f2a3-b4c5-6789-de90-123456789012', 'Ilex Forest', 'ilex-forest', 16, 'route', true, false, false, NULL),
('d0e1f2a3-b4c5-6789-de90-123456789012', 'Route 34', 'route-34', 17, 'route', true, true, false, NULL),
('d0e1f2a3-b4c5-6789-de90-123456789012', 'Goldenrod City', 'goldenrod-city', 18, 'city', false, true, true, 'Gym Leader Whitney. Normal-type specialist.'),
('d0e1f2a3-b4c5-6789-de90-123456789012', 'Route 35', 'route-35', 19, 'route', true, true, false, NULL),
('d0e1f2a3-b4c5-6789-de90-123456789012', 'National Park', 'national-park', 20, 'route', true, false, false, 'Bug Catching Contest area.'),
('d0e1f2a3-b4c5-6789-de90-123456789012', 'Route 36', 'route-36', 21, 'route', true, true, false, NULL),
('d0e1f2a3-b4c5-6789-de90-123456789012', 'Route 37', 'route-37', 22, 'route', true, true, false, NULL),
('d0e1f2a3-b4c5-6789-de90-123456789012', 'Ecruteak City', 'ecruteak-city', 23, 'city', false, true, false, 'Gym Leader Morty. Ghost-type specialist.'),
('d0e1f2a3-b4c5-6789-de90-123456789012', 'Burned Tower', 'burned-tower', 24, 'building', true, false, false, 'Legendary beasts flee here.'),
('d0e1f2a3-b4c5-6789-de90-123456789012', 'Route 38', 'route-38', 25, 'route', true, true, false, NULL),
('d0e1f2a3-b4c5-6789-de90-123456789012', 'Route 39', 'route-39', 26, 'route', true, true, false, NULL),
('d0e1f2a3-b4c5-6789-de90-123456789012', 'Olivine City', 'olivine-city', 27, 'city', false, true, false, 'Gym Leader Jasmine. Steel-type specialist.'),
('d0e1f2a3-b4c5-6789-de90-123456789012', 'Route 40', 'route-40', 28, 'water', true, true, false, NULL),
('d0e1f2a3-b4c5-6789-de90-123456789012', 'Route 41', 'route-41', 29, 'water', true, true, false, 'Whirl Islands nearby.'),
('d0e1f2a3-b4c5-6789-de90-123456789012', 'Cianwood City', 'cianwood-city', 30, 'city', false, true, false, 'Gym Leader Chuck. Fighting-type specialist.'),
('d0e1f2a3-b4c5-6789-de90-123456789012', 'Route 42', 'route-42', 31, 'route', true, true, false, NULL),
('d0e1f2a3-b4c5-6789-de90-123456789012', 'Mt. Mortar', 'mt-mortar', 32, 'cave', true, false, true, NULL),
('d0e1f2a3-b4c5-6789-de90-123456789012', 'Mahogany Town', 'mahogany-town', 33, 'city', false, true, false, 'Gym Leader Pryce. Ice-type specialist.'),
('d0e1f2a3-b4c5-6789-de90-123456789012', 'Route 43', 'route-43', 34, 'route', true, true, false, NULL),
('d0e1f2a3-b4c5-6789-de90-123456789012', 'Lake of Rage', 'lake-of-rage', 35, 'water', true, false, false, 'Red Gyarados event.'),
('d0e1f2a3-b4c5-6789-de90-123456789012', 'Route 44', 'route-44', 36, 'route', true, true, false, NULL),
('d0e1f2a3-b4c5-6789-de90-123456789012', 'Ice Path', 'ice-path', 37, 'cave', true, false, true, NULL),
('d0e1f2a3-b4c5-6789-de90-123456789012', 'Blackthorn City', 'blackthorn-city', 38, 'city', false, true, false, 'Gym Leader Clair. Dragon-type specialist.'),
('d0e1f2a3-b4c5-6789-de90-123456789012', 'Dragon''s Den', 'dragons-den', 39, 'cave', true, false, false, 'Dratini fishing.'),
('d0e1f2a3-b4c5-6789-de90-123456789012', 'Route 45', 'route-45', 40, 'route', true, true, false, NULL),
('d0e1f2a3-b4c5-6789-de90-123456789012', 'Dark Cave (Blackthorn Side)', 'dark-cave-blackthorn', 41, 'cave', true, false, false, NULL),
('d0e1f2a3-b4c5-6789-de90-123456789012', 'Whirl Islands', 'whirl-islands', 42, 'cave', true, false, false, 'Lugia (SoulSilver).'),
('d0e1f2a3-b4c5-6789-de90-123456789012', 'Route 27', 'route-27', 43, 'route', true, true, false, NULL),
('d0e1f2a3-b4c5-6789-de90-123456789012', 'Tohjo Falls', 'tohjo-falls', 44, 'cave', true, false, false, NULL),
('d0e1f2a3-b4c5-6789-de90-123456789012', 'Route 26', 'route-26', 45, 'route', true, true, false, NULL),
('d0e1f2a3-b4c5-6789-de90-123456789012', 'Victory Road', 'victory-road', 46, 'cave', true, true, true, NULL),
('d0e1f2a3-b4c5-6789-de90-123456789012', 'Indigo Plateau', 'indigo-plateau', 47, 'building', false, true, true, 'Elite Four and Champion Lance.'),
('d0e1f2a3-b4c5-6789-de90-123456789012', 'Vermilion City', 'vermilion-city', 48, 'city', false, true, false, 'Gym Leader Lt. Surge. Electric-type specialist.'),
('d0e1f2a3-b4c5-6789-de90-123456789012', 'Route 6', 'route-6', 49, 'route', true, true, false, NULL),
('d0e1f2a3-b4c5-6789-de90-123456789012', 'Saffron City', 'saffron-city', 50, 'city', false, true, false, 'Gym Leader Sabrina. Psychic-type specialist.'),
('d0e1f2a3-b4c5-6789-de90-123456789012', 'Route 5', 'route-5', 51, 'route', true, false, false, NULL),
('d0e1f2a3-b4c5-6789-de90-123456789012', 'Cerulean City', 'cerulean-city', 52, 'city', false, true, false, 'Gym Leader Misty. Water-type specialist.'),
('d0e1f2a3-b4c5-6789-de90-123456789012', 'Route 24', 'route-24', 53, 'route', true, true, false, NULL),
('d0e1f2a3-b4c5-6789-de90-123456789012', 'Route 25', 'route-25', 54, 'route', true, true, false, NULL),
('d0e1f2a3-b4c5-6789-de90-123456789012', 'Route 9', 'route-9', 55, 'route', true, true, false, NULL),
('d0e1f2a3-b4c5-6789-de90-123456789012', 'Route 10', 'route-10', 56, 'route', true, false, false, NULL),
('d0e1f2a3-b4c5-6789-de90-123456789012', 'Rock Tunnel', 'rock-tunnel', 57, 'cave', true, true, false, NULL),
('d0e1f2a3-b4c5-6789-de90-123456789012', 'Lavender Town', 'lavender-town', 58, 'city', false, false, false, NULL),
('d0e1f2a3-b4c5-6789-de90-123456789012', 'Route 8', 'route-8', 59, 'route', true, true, false, NULL),
('d0e1f2a3-b4c5-6789-de90-123456789012', 'Route 7', 'route-7', 60, 'route', true, false, false, NULL),
('d0e1f2a3-b4c5-6789-de90-123456789012', 'Celadon City', 'celadon-city', 61, 'city', false, true, true, 'Gym Leader Erika. Grass-type specialist.'),
('d0e1f2a3-b4c5-6789-de90-123456789012', 'Route 16', 'route-16', 62, 'route', true, false, false, NULL),
('d0e1f2a3-b4c5-6789-de90-123456789012', 'Route 17', 'route-17', 63, 'route', true, true, false, 'Cycling Road.'),
('d0e1f2a3-b4c5-6789-de90-123456789012', 'Route 18', 'route-18', 64, 'route', true, false, false, NULL),
('d0e1f2a3-b4c5-6789-de90-123456789012', 'Fuchsia City', 'fuchsia-city', 65, 'city', false, true, false, 'Gym Leader Janine. Poison-type specialist.'),
('d0e1f2a3-b4c5-6789-de90-123456789012', 'Route 15', 'route-15', 66, 'route', true, true, false, NULL),
('d0e1f2a3-b4c5-6789-de90-123456789012', 'Route 14', 'route-14', 67, 'route', true, true, false, NULL),
('d0e1f2a3-b4c5-6789-de90-123456789012', 'Route 13', 'route-13', 68, 'route', true, true, false, NULL),
('d0e1f2a3-b4c5-6789-de90-123456789012', 'Route 12', 'route-12', 69, 'route', true, true, false, NULL),
('d0e1f2a3-b4c5-6789-de90-123456789012', 'Route 11', 'route-11', 70, 'route', true, true, false, NULL),
('d0e1f2a3-b4c5-6789-de90-123456789012', 'Diglett''s Cave', 'digletts-cave', 71, 'cave', true, false, false, NULL),
('d0e1f2a3-b4c5-6789-de90-123456789012', 'Route 2', 'route-2', 72, 'route', true, false, false, NULL),
('d0e1f2a3-b4c5-6789-de90-123456789012', 'Pewter City', 'pewter-city', 73, 'city', false, true, false, 'Gym Leader Brock. Rock-type specialist.'),
('d0e1f2a3-b4c5-6789-de90-123456789012', 'Viridian Forest', 'viridian-forest', 74, 'route', true, false, false, NULL),
('d0e1f2a3-b4c5-6789-de90-123456789012', 'Viridian City', 'viridian-city', 75, 'city', false, true, false, 'Gym Leader Blue. Mixed-type specialist.'),
('d0e1f2a3-b4c5-6789-de90-123456789012', 'Route 1', 'route-1', 76, 'route', true, false, false, NULL),
('d0e1f2a3-b4c5-6789-de90-123456789012', 'Pallet Town', 'pallet-town', 77, 'city', true, false, false, 'Surf and fishing available.'),
('d0e1f2a3-b4c5-6789-de90-123456789012', 'Route 21', 'route-21', 78, 'water', true, true, false, NULL),
('d0e1f2a3-b4c5-6789-de90-123456789012', 'Cinnabar Island', 'cinnabar-island', 79, 'city', false, true, false, 'Gym Leader Blaine. Fire-type specialist.'),
('d0e1f2a3-b4c5-6789-de90-123456789012', 'Route 20', 'route-20', 80, 'water', true, true, false, NULL),
('d0e1f2a3-b4c5-6789-de90-123456789012', 'Route 19', 'route-19', 81, 'water', true, true, false, NULL),
('d0e1f2a3-b4c5-6789-de90-123456789012', 'Seafoam Islands', 'seafoam-islands', 82, 'cave', true, false, true, NULL),
('d0e1f2a3-b4c5-6789-de90-123456789012', 'Route 22', 'route-22', 83, 'route', true, false, false, NULL),
('d0e1f2a3-b4c5-6789-de90-123456789012', 'Route 28', 'route-28', 84, 'route', true, false, false, NULL),
('d0e1f2a3-b4c5-6789-de90-123456789012', 'Mt. Silver', 'mt-silver', 85, 'cave', true, false, true, 'Red awaits at the summit.'),
('d0e1f2a3-b4c5-6789-de90-123456789012', 'Bell Tower', 'bell-tower', 86, 'building', true, false, false, 'Ho-Oh (HeartGold).'),
('d0e1f2a3-b4c5-6789-de90-123456789012', 'Cerulean Cave', 'cerulean-cave', 87, 'cave', true, false, true, 'Mewtwo. Post-game dungeon.'),
('d0e1f2a3-b4c5-6789-de90-123456789012', 'Safari Zone', 'safari-zone', 88, 'special', true, false, false, 'HGSS Safari Zone near Cianwood.'),
('d0e1f2a3-b4c5-6789-de90-123456789012', 'Route 47', 'route-47', 89, 'route', true, true, false, NULL),
('d0e1f2a3-b4c5-6789-de90-123456789012', 'Route 48', 'route-48', 90, 'route', true, true, false, NULL);

-- ===========================================
-- STEP 3: STARTER POKEMON
-- ===========================================

INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max)
SELECT r.id, 152, 'gift', NULL, 5, 5
FROM public.routes r WHERE r.slug = 'new-bark-town' AND r.game_id = 'd0e1f2a3-b4c5-6789-de90-123456789012';

INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max)
SELECT r.id, 155, 'gift', NULL, 5, 5
FROM public.routes r WHERE r.slug = 'new-bark-town' AND r.game_id = 'd0e1f2a3-b4c5-6789-de90-123456789012';

INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max)
SELECT r.id, 158, 'gift', NULL, 5, 5
FROM public.routes r WHERE r.slug = 'new-bark-town' AND r.game_id = 'd0e1f2a3-b4c5-6789-de90-123456789012';

-- ===========================================
-- STEP 4: ENCOUNTER DATA (1331 total)
-- ===========================================

CREATE TEMP TABLE _enc (slug TEXT, dex INT, method TEXT, rate DECIMAL(5,2), lmin INT, lmax INT, cond TEXT, ver_excl TEXT);
INSERT INTO _enc VALUES
('route-29', 16, 'walking', 55.00, 2, 4, 'Morning', NULL),
('route-29', 16, 'walking', 55.00, 2, 4, 'Day', NULL),
('route-29', 19, 'walking', 15.00, 2, 4, 'Night', NULL),
('route-29', 19, 'walking', 5.00, 4, 4, 'Morning', NULL),
('route-29', 19, 'walking', 5.00, 2, 2, 'Day', NULL),
('route-29', 161, 'walking', 40.00, 2, 3, 'Morning', NULL),
('route-29', 161, 'walking', 40.00, 2, 4, 'Day', NULL),
('route-29', 163, 'walking', 85.00, 2, 4, 'Night', NULL),
('route-29', 311, 'walking', 20.00, 2, 3, 'Hoenn Sound', NULL),
('route-29', 312, 'walking', 20.00, 3, 3, 'Hoenn Sound', NULL),
('route-29', 403, 'walking', 40.00, 2, 3, 'Sinnoh Sound', NULL),
('route-46', 19, 'walking', 30.00, 2, 2, 'Night', NULL),
('route-46', 19, 'walking', 25.00, 2, 4, NULL, NULL),
('route-46', 21, 'walking', 35.00, 2, 3, 'Morning', NULL),
('route-46', 21, 'walking', 35.00, 2, 3, 'Day', NULL),
('route-46', 74, 'walking', 40.00, 2, 3, NULL, NULL),
('route-46', 74, 'walking', 5.00, 3, 3, 'Night', NULL),
('route-46', 311, 'walking', 20.00, 2, 3, 'Hoenn Sound', NULL),
('route-46', 312, 'walking', 20.00, 2, 2, 'Hoenn Sound', NULL),
('route-46', 403, 'walking', 40.00, 2, 3, 'Sinnoh Sound', NULL),
('cherrygrove-city', 72, 'surfing', 90.00, 10, 25, NULL, NULL),
('cherrygrove-city', 73, 'surfing', 10.00, 15, 25, NULL, NULL),
('cherrygrove-city', 98, 'fishing_old', 15.00, 10, 10, NULL, NULL),
('cherrygrove-city', 98, 'fishing_good', 50.00, 20, 20, NULL, NULL),
('cherrygrove-city', 98, 'fishing_super', 60.00, 40, 40, NULL, NULL),
('cherrygrove-city', 99, 'fishing_super', 10.00, 40, 40, NULL, NULL),
('cherrygrove-city', 120, 'fishing_good', 10.00, 20, 20, 'Night', NULL),
('cherrygrove-city', 120, 'fishing_super', 30.00, 40, 40, 'Night', NULL),
('cherrygrove-city', 129, 'fishing_old', 85.00, 10, 10, NULL, NULL),
('cherrygrove-city', 129, 'fishing_good', 40.00, 20, 20, NULL, NULL),
('cherrygrove-city', 222, 'fishing_good', 10.00, 20, 20, 'Morning', NULL),
('cherrygrove-city', 222, 'fishing_good', 10.00, 20, 20, 'Day', NULL),
('cherrygrove-city', 222, 'fishing_super', 30.00, 40, 40, 'Morning', NULL),
('cherrygrove-city', 222, 'fishing_super', 30.00, 40, 40, 'Day', NULL),
('route-30', 13, 'walking', 50.00, 3, 4, 'Morning', NULL),
('route-30', 13, 'walking', 35.00, 3, 4, 'Day', NULL),
('route-30', 14, 'walking', 10.00, 4, 4, 'Morning', NULL),
('route-30', 14, 'walking', 15.00, 4, 4, 'Day', NULL),
('route-30', 16, 'walking', 50.00, 3, 4, 'Day', NULL),
('route-30', 16, 'walking', 10.00, 4, 4, 'Morning', NULL),
('route-30', 19, 'walking', 40.00, 3, 4, 'Night', NULL),
('route-30', 60, 'surfing', 90.00, 10, 25, NULL, NULL),
('route-30', 60, 'fishing_old', 15.00, 10, 10, NULL, NULL),
('route-30', 60, 'fishing_good', 60.00, 20, 20, NULL, NULL),
('route-30', 60, 'fishing_super', 80.00, 40, 40, NULL, NULL),
('route-30', 61, 'surfing', 10.00, 15, 32, NULL, NULL),
('route-30', 129, 'fishing_old', 85.00, 10, 10, NULL, NULL),
('route-30', 129, 'fishing_good', 40.00, 20, 20, NULL, NULL),
('route-30', 129, 'fishing_super', 20.00, 40, 40, NULL, NULL),
('route-30', 163, 'walking', 60.00, 3, 4, 'Night', NULL),
('route-30', 165, 'walking', 30.00, 3, 3, 'Morning', NULL),
('route-30', 264, 'walking', 20.00, 4, 4, 'Hoenn Sound', NULL),
('route-30', 293, 'walking', 20.00, 3, 3, 'Hoenn Sound', NULL),
('route-30', 399, 'walking', 20.00, 4, 4, 'Sinnoh Sound', NULL),
('route-30', 418, 'walking', 20.00, 3, 3, 'Sinnoh Sound', NULL),
('route-31', 13, 'walking', 30.00, 4, 4, 'Morning', NULL),
('route-31', 13, 'walking', 35.00, 4, 5, 'Day', NULL),
('route-31', 14, 'walking', 10.00, 5, 5, 'Morning', NULL),
('route-31', 14, 'walking', 15.00, 5, 5, 'Day', NULL),
('route-31', 16, 'walking', 30.00, 4, 4, 'Day', NULL),
('route-31', 16, 'walking', 10.00, 5, 5, 'Morning', NULL),
('route-31', 19, 'walking', 40.00, 4, 5, 'Night', NULL),
('route-31', 60, 'surfing', 90.00, 10, 25, NULL, NULL),
('route-31', 60, 'fishing_old', 15.00, 10, 10, NULL, NULL),
('route-31', 60, 'fishing_good', 60.00, 20, 20, NULL, NULL),
('route-31', 60, 'fishing_super', 80.00, 40, 40, NULL, NULL),
('route-31', 61, 'surfing', 10.00, 15, 32, NULL, NULL),
('route-31', 69, 'walking', 20.00, 3, 3, NULL, NULL),
('route-31', 129, 'fishing_old', 85.00, 10, 10, NULL, NULL),
('route-31', 129, 'fishing_good', 40.00, 20, 20, NULL, NULL),
('route-31', 129, 'fishing_super', 20.00, 40, 40, NULL, NULL),
('route-31', 163, 'walking', 40.00, 4, 5, 'Night', NULL),
('route-31', 165, 'walking', 30.00, 4, 4, 'Morning', NULL),
('route-31', 264, 'walking', 20.00, 3, 3, 'Hoenn Sound', NULL),
('route-31', 293, 'walking', 20.00, 4, 4, 'Hoenn Sound', NULL),
('route-31', 399, 'walking', 20.00, 3, 3, 'Sinnoh Sound', NULL),
('route-31', 418, 'walking', 20.00, 4, 4, 'Sinnoh Sound', NULL),
('dark-cave-violet', 41, 'walking', 39.00, 2, 4, NULL, NULL),
('dark-cave-violet', 74, 'walking', 60.00, 2, 4, NULL, NULL),
('dark-cave-violet', 74, 'rock_smash', 10.00, 8, 14, NULL, NULL),
('dark-cave-violet', 118, 'fishing_old', 15.00, 10, 10, NULL, NULL),
('dark-cave-violet', 118, 'fishing_good', 60.00, 20, 20, NULL, NULL),
('dark-cave-violet', 118, 'fishing_super', 70.00, 40, 40, NULL, NULL),
('dark-cave-violet', 119, 'fishing_super', 10.00, 40, 40, NULL, NULL),
('dark-cave-violet', 129, 'surfing', 100.00, 2, 20, NULL, NULL),
('dark-cave-violet', 129, 'fishing_old', 85.00, 10, 10, NULL, NULL),
('dark-cave-violet', 129, 'fishing_good', 40.00, 20, 20, NULL, NULL),
('dark-cave-violet', 129, 'fishing_super', 20.00, 40, 40, NULL, NULL),
('dark-cave-violet', 206, 'walking', 40.00, 2, 3, 'Swarm', NULL),
('dark-cave-violet', 206, 'walking', 1.00, 4, 4, NULL, NULL),
('dark-cave-violet', 206, 'rock_smash', 90.00, 4, 8, NULL, NULL),
('dark-cave-violet', 296, 'walking', 20.00, 2, 2, 'Hoenn Sound', NULL),
('dark-cave-violet', 359, 'walking', 20.00, 2, 3, 'Hoenn Sound', NULL),
('dark-cave-violet', 433, 'walking', 20.00, 2, 2, 'Sinnoh Sound', NULL),
('dark-cave-violet', 436, 'walking', 20.00, 2, 3, 'Sinnoh Sound', NULL),
('sprout-tower', 19, 'walking', 170.00, 3, 6, 'Morning', NULL),
('sprout-tower', 19, 'walking', 170.00, 3, 6, 'Day', NULL),
('sprout-tower', 19, 'walking', 30.00, 3, 5, NULL, NULL),
('sprout-tower', 92, 'walking', 170.00, 3, 6, 'Night', NULL),
('sprout-tower', 263, 'walking', 40.00, 3, 4, 'Hoenn Sound', NULL),
('sprout-tower', 307, 'walking', 40.00, 5, 5, 'Sinnoh Sound', NULL),
('sprout-tower', 327, 'walking', 40.00, 5, 5, 'Hoenn Sound', NULL),
('sprout-tower', 441, 'walking', 40.00, 3, 4, 'Sinnoh Sound', NULL),
('route-32', 19, 'walking', 5.00, 6, 6, 'Morning', NULL),
('route-32', 19, 'walking', 10.00, 4, 6, 'Day', NULL),
('route-32', 23, 'walking', 30.00, 4, 4, NULL, NULL),
('route-32', 41, 'walking', 5.00, 4, 4, 'Morning', NULL),
('route-32', 41, 'walking', 5.00, 4, 4, 'Night', NULL),
('route-32', 69, 'walking', 30.00, 6, 6, 'Morning', NULL),
('route-32', 69, 'walking', 30.00, 6, 6, 'Day', NULL),
('route-32', 69, 'walking', 20.00, 6, 6, 'Night', NULL),
('route-32', 72, 'surfing', 60.00, 10, 20, NULL, NULL),
('route-32', 72, 'fishing_old', 15.00, 10, 10, NULL, NULL),
('route-32', 72, 'fishing_good', 55.00, 20, 20, NULL, NULL),
('route-32', 72, 'fishing_super', 70.00, 40, 40, NULL, NULL),
('route-32', 73, 'surfing', 10.00, 15, 36, NULL, NULL),
('route-32', 129, 'fishing_old', 85.00, 10, 10, NULL, NULL),
('route-32', 129, 'fishing_good', 40.00, 20, 20, NULL, NULL),
('route-32', 129, 'fishing_super', 20.00, 40, 40, NULL, NULL),
('route-32', 179, 'walking', 20.00, 6, 6, 'Morning', NULL),
('route-32', 179, 'walking', 20.00, 6, 6, 'Day', NULL),
('route-32', 179, 'walking', 10.00, 6, 6, 'Night', NULL),
('route-32', 187, 'walking', 10.00, 6, 6, 'Morning', NULL),
('route-32', 187, 'walking', 10.00, 6, 6, 'Day', NULL),
('route-32', 194, 'walking', 35.00, 6, 6, 'Night', NULL),
('route-32', 195, 'surfing', 30.00, 15, 25, NULL, NULL),
('route-32', 211, 'fishing_old', 15.00, 10, 10, 'Swarm', NULL),
('route-32', 211, 'fishing_good', 65.00, 20, 20, 'Swarm', NULL),
('route-32', 211, 'fishing_good', 5.00, 20, 20, NULL, NULL),
('route-32', 211, 'fishing_super', 90.00, 40, 40, 'Swarm', NULL),
('route-32', 211, 'fishing_super', 10.00, 40, 40, NULL, NULL),
('route-32', 264, 'walking', 20.00, 6, 6, 'Hoenn Sound', NULL),
('route-32', 293, 'walking', 20.00, 4, 6, 'Hoenn Sound', NULL),
('route-32', 399, 'walking', 20.00, 6, 6, 'Sinnoh Sound', NULL),
('route-32', 418, 'walking', 20.00, 4, 6, 'Sinnoh Sound', NULL),
('ruins-of-alph', 60, 'fishing_old', 15.00, 10, 10, NULL, NULL),
('ruins-of-alph', 60, 'fishing_good', 60.00, 20, 20, NULL, NULL),
('ruins-of-alph', 60, 'fishing_super', 80.00, 40, 40, NULL, NULL),
('ruins-of-alph', 74, 'rock_smash', 100.00, 3, 14, NULL, NULL),
('ruins-of-alph', 129, 'fishing_old', 85.00, 10, 10, NULL, NULL),
('ruins-of-alph', 129, 'fishing_good', 40.00, 20, 20, NULL, NULL),
('ruins-of-alph', 129, 'fishing_super', 20.00, 40, 40, NULL, NULL),
('ruins-of-alph', 177, 'walking', 90.00, 18, 24, NULL, NULL),
('ruins-of-alph', 194, 'surfing', 60.00, 10, 20, NULL, NULL),
('ruins-of-alph', 195, 'surfing', 40.00, 10, 25, NULL, NULL),
('ruins-of-alph', 235, 'walking', 10.00, 20, 22, NULL, NULL),
('ruins-of-alph', 264, 'walking', 20.00, 18, 18, 'Hoenn Sound', NULL),
('ruins-of-alph', 293, 'walking', 20.00, 20, 22, 'Hoenn Sound', NULL),
('ruins-of-alph', 399, 'walking', 20.00, 18, 18, 'Sinnoh Sound', NULL),
('ruins-of-alph', 418, 'walking', 20.00, 20, 22, 'Sinnoh Sound', NULL),
('ruins-of-alph', 201, 'walking', 100.00, 5, 5, NULL, NULL),
('union-cave', 19, 'walking', 80.00, 4, 20, NULL, NULL),
('union-cave', 41, 'walking', 80.00, 5, 22, NULL, NULL),
('union-cave', 74, 'walking', 70.00, 6, 21, NULL, NULL),
('union-cave', 95, 'walking', 20.00, 6, 23, NULL, NULL),
('union-cave', 118, 'fishing_old', 30.00, 10, 10, NULL, NULL),
('union-cave', 118, 'fishing_good', 120.00, 20, 20, NULL, NULL),
('union-cave', 118, 'fishing_super', 140.00, 40, 40, NULL, NULL),
('union-cave', 119, 'fishing_super', 20.00, 40, 40, NULL, NULL),
('union-cave', 129, 'fishing_old', 255.00, 10, 10, NULL, NULL),
('union-cave', 129, 'fishing_good', 120.00, 20, 20, NULL, NULL),
('union-cave', 129, 'fishing_super', 40.00, 40, 40, NULL, NULL),
('union-cave', 194, 'surfing', 120.00, 10, 20, NULL, NULL),
('union-cave', 195, 'surfing', 110.00, 10, 25, NULL, NULL),
('union-cave', 296, 'walking', 60.00, 5, 22, 'Hoenn Sound', NULL),
('union-cave', 359, 'walking', 60.00, 6, 22, 'Hoenn Sound', NULL),
('union-cave', 433, 'walking', 60.00, 5, 22, 'Sinnoh Sound', NULL),
('union-cave', 436, 'walking', 60.00, 6, 22, 'Sinnoh Sound', NULL),
('union-cave', 20, 'walking', 30.00, 22, 22, NULL, NULL),
('union-cave', 42, 'walking', 20.00, 22, 22, NULL, NULL),
('union-cave', 72, 'surfing', 60.00, 10, 20, NULL, NULL),
('union-cave', 73, 'surfing', 10.00, 15, 25, NULL, NULL),
('union-cave', 98, 'fishing_old', 15.00, 10, 10, NULL, NULL),
('union-cave', 98, 'fishing_good', 50.00, 20, 20, NULL, NULL),
('union-cave', 98, 'fishing_super', 60.00, 40, 40, NULL, NULL),
('union-cave', 99, 'fishing_super', 10.00, 40, 40, NULL, NULL),
('union-cave', 120, 'fishing_good', 10.00, 20, 20, 'Night', NULL),
('union-cave', 120, 'fishing_super', 30.00, 40, 40, 'Night', NULL),
('union-cave', 222, 'fishing_good', 10.00, 20, 20, 'Morning', NULL),
('union-cave', 222, 'fishing_good', 10.00, 20, 20, 'Day', NULL),
('union-cave', 222, 'fishing_super', 30.00, 40, 40, 'Morning', NULL),
('union-cave', 222, 'fishing_super', 30.00, 40, 40, 'Day', NULL),
('route-33', 19, 'walking', 20.00, 6, 6, 'Night', NULL),
('route-33', 19, 'walking', 10.00, 6, 6, NULL, NULL),
('route-33', 19, 'walking', 5.00, 4, 4, 'Day', NULL),
('route-33', 21, 'walking', 20.00, 6, 6, 'Morning', NULL),
('route-33', 21, 'walking', 20.00, 6, 6, 'Day', NULL),
('route-33', 23, 'walking', 30.00, 7, 7, NULL, NULL),
('route-33', 41, 'walking', 40.00, 4, 8, 'Night', NULL),
('route-33', 41, 'walking', 5.00, 4, 4, 'Morning', NULL),
('route-33', 187, 'walking', 35.00, 6, 8, 'Morning', NULL),
('route-33', 187, 'walking', 35.00, 6, 8, 'Day', NULL),
('route-33', 311, 'walking', 20.00, 6, 7, 'Hoenn Sound', NULL),
('route-33', 312, 'walking', 20.00, 6, 6, 'Hoenn Sound', NULL),
('route-33', 403, 'walking', 40.00, 6, 7, 'Sinnoh Sound', NULL),
('slowpoke-well', 41, 'walking', 165.00, 5, 23, NULL, NULL),
('slowpoke-well', 79, 'walking', 30.00, 6, 23, NULL, NULL),
('slowpoke-well', 79, 'surfing', 190.00, 5, 25, NULL, NULL),
('slowpoke-well', 118, 'fishing_old', 30.00, 10, 10, NULL, NULL),
('slowpoke-well', 118, 'fishing_good', 120.00, 20, 20, NULL, NULL),
('slowpoke-well', 118, 'fishing_super', 140.00, 40, 40, NULL, NULL),
('slowpoke-well', 119, 'fishing_super', 20.00, 40, 40, NULL, NULL),
('slowpoke-well', 129, 'fishing_old', 170.00, 10, 10, NULL, NULL),
('slowpoke-well', 129, 'fishing_good', 80.00, 20, 20, NULL, NULL),
('slowpoke-well', 129, 'fishing_super', 40.00, 40, 40, NULL, NULL),
('slowpoke-well', 296, 'walking', 40.00, 7, 19, 'Hoenn Sound', NULL),
('slowpoke-well', 359, 'walking', 40.00, 5, 23, 'Hoenn Sound', NULL),
('slowpoke-well', 433, 'walking', 40.00, 7, 19, 'Sinnoh Sound', NULL),
('slowpoke-well', 436, 'walking', 40.00, 5, 23, 'Sinnoh Sound', NULL),
('slowpoke-well', 42, 'walking', 5.00, 23, 23, NULL, NULL),
('slowpoke-well', 80, 'surfing', 10.00, 15, 30, NULL, NULL),
('ilex-forest', 13, 'walking', 50.00, 5, 6, 'Morning', NULL),
('ilex-forest', 13, 'walking', 60.00, 5, 6, 'Day', NULL),
('ilex-forest', 14, 'walking', 30.00, 6, 6, 'Morning', NULL),
('ilex-forest', 14, 'walking', 30.00, 5, 6, 'Day', NULL),
('ilex-forest', 41, 'walking', 20.00, 6, 6, 'Night', NULL),
('ilex-forest', 41, 'walking', 5.00, 5, 5, NULL, NULL),
('ilex-forest', 43, 'walking', 60.00, 5, 6, 'Night', NULL),
('ilex-forest', 46, 'walking', 10.00, 5, 5, 'Morning', NULL),
('ilex-forest', 46, 'walking', 10.00, 5, 5, 'Night', NULL),
('ilex-forest', 46, 'walking', 5.00, 6, 6, NULL, NULL),
('ilex-forest', 54, 'surfing', 90.00, 5, 20, NULL, NULL),
('ilex-forest', 55, 'surfing', 10.00, 10, 20, NULL, NULL),
('ilex-forest', 60, 'fishing_old', 15.00, 10, 10, NULL, NULL),
('ilex-forest', 60, 'fishing_good', 60.00, 20, 20, NULL, NULL),
('ilex-forest', 60, 'fishing_super', 80.00, 40, 40, NULL, NULL),
('ilex-forest', 129, 'fishing_old', 85.00, 10, 10, NULL, NULL),
('ilex-forest', 129, 'fishing_good', 40.00, 20, 20, NULL, NULL),
('ilex-forest', 129, 'fishing_super', 20.00, 40, 40, NULL, NULL),
('ilex-forest', 322, 'walking', 20.00, 6, 6, 'Hoenn Sound', NULL),
('ilex-forest', 325, 'walking', 20.00, 5, 6, 'Hoenn Sound', NULL),
('ilex-forest', 406, 'walking', 20.00, 5, 6, 'Sinnoh Sound', NULL),
('ilex-forest', 455, 'walking', 20.00, 6, 6, 'Sinnoh Sound', NULL),
('route-34', 19, 'walking', 35.00, 11, 13, NULL, NULL),
('route-34', 63, 'walking', 10.00, 10, 10, NULL, NULL),
('route-34', 72, 'surfing', 90.00, 10, 25, NULL, NULL),
('route-34', 73, 'surfing', 10.00, 15, 29, NULL, NULL),
('route-34', 96, 'walking', 50.00, 10, 12, NULL, NULL),
('route-34', 98, 'fishing_old', 15.00, 10, 10, NULL, NULL),
('route-34', 98, 'fishing_good', 50.00, 20, 20, NULL, NULL),
('route-34', 98, 'fishing_super', 60.00, 40, 40, NULL, NULL),
('route-34', 99, 'fishing_super', 10.00, 40, 40, NULL, NULL),
('route-34', 120, 'fishing_good', 10.00, 20, 20, 'Night', NULL),
('route-34', 120, 'fishing_super', 30.00, 40, 40, 'Night', NULL),
('route-34', 129, 'fishing_old', 85.00, 10, 10, NULL, NULL),
('route-34', 129, 'fishing_good', 40.00, 20, 20, NULL, NULL),
('route-34', 132, 'walking', 5.00, 10, 10, NULL, NULL),
('route-34', 222, 'fishing_good', 10.00, 20, 20, 'Morning', NULL),
('route-34', 222, 'fishing_good', 10.00, 20, 20, 'Day', NULL),
('route-34', 222, 'fishing_super', 30.00, 40, 40, 'Morning', NULL),
('route-34', 222, 'fishing_super', 30.00, 40, 40, 'Day', NULL),
('route-34', 264, 'walking', 20.00, 12, 12, 'Hoenn Sound', NULL),
('route-34', 280, 'walking', 40.00, 10, 11, 'Swarm', NULL),
('route-34', 293, 'walking', 20.00, 10, 11, 'Hoenn Sound', NULL),
('route-34', 399, 'walking', 20.00, 12, 12, 'Sinnoh Sound', NULL),
('route-34', 418, 'walking', 20.00, 10, 11, 'Sinnoh Sound', NULL),
('route-35', 16, 'walking', 5.00, 14, 14, 'Morning', NULL),
('route-35', 16, 'walking', 5.00, 14, 14, 'Day', NULL),
('route-35', 29, 'walking', 30.00, 12, 12, NULL, NULL),
('route-35', 32, 'walking', 30.00, 12, 12, NULL, NULL),
('route-35', 54, 'surfing', 90.00, 10, 25, NULL, NULL),
('route-35', 55, 'surfing', 10.00, 15, 31, NULL, NULL),
('route-35', 60, 'fishing_old', 15.00, 10, 10, NULL, NULL),
('route-35', 60, 'fishing_good', 60.00, 20, 20, NULL, NULL),
('route-35', 60, 'fishing_super', 80.00, 40, 40, NULL, NULL),
('route-35', 63, 'walking', 10.00, 10, 10, NULL, NULL),
('route-35', 96, 'walking', 20.00, 14, 14, NULL, NULL),
('route-35', 129, 'fishing_old', 85.00, 10, 10, NULL, NULL),
('route-35', 129, 'fishing_good', 40.00, 20, 20, NULL, NULL),
('route-35', 129, 'fishing_super', 20.00, 40, 40, NULL, NULL),
('route-35', 132, 'walking', 4.00, 10, 10, NULL, NULL),
('route-35', 163, 'walking', 5.00, 14, 14, 'Night', NULL),
('route-35', 193, 'walking', 40.00, 12, 12, 'Swarm', NULL),
('route-35', 193, 'walking', 1.00, 12, 12, NULL, NULL),
('route-35', 264, 'walking', 20.00, 14, 14, 'Hoenn Sound', NULL),
('route-35', 293, 'walking', 20.00, 12, 12, 'Hoenn Sound', NULL),
('route-35', 399, 'walking', 20.00, 14, 14, 'Sinnoh Sound', NULL),
('route-35', 418, 'walking', 20.00, 12, 12, 'Sinnoh Sound', NULL),
('national-park', 13, 'walking', 50.00, 10, 12, 'Morning', NULL),
('national-park', 13, 'walking', 30.00, 10, 10, 'Day', NULL),
('national-park', 14, 'walking', 30.00, 10, 10, 'Morning', NULL),
('national-park', 14, 'walking', 30.00, 10, 10, 'Day', NULL),
('national-park', 16, 'walking', 20.00, 10, 14, 'Morning', NULL),
('national-park', 16, 'walking', 15.00, 12, 14, 'Day', NULL),
('national-park', 163, 'walking', 100.00, 10, 14, 'Night', NULL),
('national-park', 191, 'walking', 25.00, 10, 12, 'Day', NULL),
('national-park', 311, 'walking', 20.00, 10, 10, 'Hoenn Sound', NULL),
('national-park', 312, 'walking', 20.00, 12, 12, 'Hoenn Sound', NULL),
('national-park', 403, 'walking', 40.00, 10, 12, 'Sinnoh Sound', NULL),
('route-36', 16, 'walking', 25.00, 12, 15, 'Morning', NULL),
('route-36', 16, 'walking', 20.00, 13, 13, 'Day', NULL),
('route-36', 29, 'walking', 20.00, 12, 12, NULL, NULL),
('route-36', 29, 'walking', 10.00, 12, 12, 'Day', NULL),
('route-36', 29, 'walking', 10.00, 12, 12, 'Night', NULL),
('route-36', 29, 'walking', 10.00, 13, 13, 'Morning', NULL),
('route-36', 32, 'walking', 20.00, 12, 12, NULL, NULL),
('route-36', 32, 'walking', 10.00, 12, 12, 'Day', NULL),
('route-36', 32, 'walking', 10.00, 12, 12, 'Night', NULL),
('route-36', 32, 'walking', 10.00, 13, 13, 'Morning', NULL),
('route-36', 37, 'walking', 10.00, 13, 13, NULL, NULL),
('route-36', 37, 'walking', 5.00, 15, 15, 'Day', NULL),
('route-36', 163, 'walking', 25.00, 13, 15, 'Night', NULL),
('route-36', 234, 'walking', 5.00, 13, 13, NULL, NULL),
('route-36', 311, 'walking', 20.00, 12, 12, 'Hoenn Sound', NULL),
('route-36', 312, 'walking', 20.00, 13, 13, 'Hoenn Sound', NULL),
('route-36', 403, 'walking', 40.00, 12, 13, 'Sinnoh Sound', NULL),
('route-37', 16, 'walking', 50.00, 13, 15, 'Day', NULL),
('route-37', 16, 'walking', 20.00, 15, 15, 'Morning', NULL),
('route-37', 17, 'walking', 5.00, 15, 15, 'Day', NULL),
('route-37', 37, 'walking', 10.00, 14, 14, NULL, NULL),
('route-37', 37, 'walking', 5.00, 15, 15, 'Day', NULL),
('route-37', 163, 'walking', 60.00, 13, 15, 'Night', NULL),
('route-37', 165, 'walking', 40.00, 13, 15, 'Morning', NULL),
('route-37', 234, 'walking', 30.00, 15, 15, NULL, NULL),
('route-37', 311, 'walking', 20.00, 13, 15, 'Hoenn Sound', NULL),
('route-37', 312, 'walking', 20.00, 15, 15, 'Hoenn Sound', NULL),
('route-37', 403, 'walking', 40.00, 13, 15, 'Sinnoh Sound', NULL),
('burned-tower', 19, 'walking', 80.00, 13, 15, NULL, NULL),
('burned-tower', 20, 'walking', 5.00, 15, 15, NULL, NULL),
('burned-tower', 41, 'walking', 15.00, 14, 15, NULL, NULL),
('burned-tower', 109, 'walking', 85.00, 14, 16, NULL, NULL),
('burned-tower', 263, 'walking', 40.00, 13, 14, 'Hoenn Sound', NULL),
('burned-tower', 307, 'walking', 40.00, 15, 16, 'Sinnoh Sound', NULL),
('burned-tower', 327, 'walking', 40.00, 15, 16, 'Hoenn Sound', NULL),
('burned-tower', 441, 'walking', 40.00, 13, 14, 'Sinnoh Sound', NULL),
('burned-tower', 19, 'walking', 10.00, 16, 16, 'Morning', NULL),
('burned-tower', 19, 'walking', 10.00, 16, 16, 'Night', NULL),
('burned-tower', 19, 'walking', 5.00, 14, 14, 'Day', NULL),
('burned-tower', 126, 'walking', 10.00, 16, 16, 'Day', NULL),
('burned-tower', 126, 'walking', 5.00, 14, 14, 'Morning', NULL),
('burned-tower', 126, 'walking', 5.00, 14, 14, 'Night', NULL),
('route-38', 20, 'walking', 30.00, 16, 16, NULL, NULL),
('route-38', 52, 'walking', 20.00, 16, 16, NULL, NULL),
('route-38', 52, 'walking', 10.00, 16, 16, 'Day', NULL),
('route-38', 52, 'walking', 20.00, 16, 16, 'Night', NULL),
('route-38', 52, 'walking', 10.00, 16, 16, 'Morning', NULL),
('route-38', 81, 'walking', 20.00, 16, 16, NULL, NULL),
('route-38', 83, 'walking', 10.00, 16, 16, 'Morning', NULL),
('route-38', 83, 'walking', 10.00, 16, 16, 'Day', NULL),
('route-38', 128, 'walking', 4.00, 13, 13, NULL, NULL),
('route-38', 209, 'walking', 40.00, 16, 16, 'Swarm', NULL),
('route-38', 209, 'walking', 1.00, 13, 13, NULL, NULL),
('route-38', 241, 'walking', 5.00, 13, 13, NULL, NULL),
('route-38', 311, 'walking', 20.00, 16, 16, 'Hoenn Sound', NULL),
('route-38', 312, 'walking', 20.00, 16, 16, 'Hoenn Sound', NULL),
('route-38', 403, 'walking', 40.00, 16, 16, 'Sinnoh Sound', NULL),
('route-39', 20, 'walking', 30.00, 17, 17, NULL, NULL),
('route-39', 52, 'walking', 20.00, 16, 16, NULL, NULL),
('route-39', 52, 'walking', 10.00, 16, 16, 'Day', NULL),
('route-39', 52, 'walking', 20.00, 16, 16, 'Night', NULL),
('route-39', 52, 'walking', 10.00, 16, 16, 'Morning', NULL),
('route-39', 81, 'walking', 20.00, 16, 16, NULL, NULL),
('route-39', 83, 'walking', 10.00, 16, 16, 'Morning', NULL),
('route-39', 83, 'walking', 10.00, 16, 16, 'Day', NULL),
('route-39', 128, 'walking', 5.00, 15, 15, NULL, NULL),
('route-39', 241, 'walking', 5.00, 15, 15, NULL, NULL),
('route-39', 311, 'walking', 20.00, 16, 17, 'Hoenn Sound', NULL),
('route-39', 312, 'walking', 20.00, 16, 16, 'Hoenn Sound', NULL),
('route-39', 403, 'walking', 40.00, 16, 17, 'Sinnoh Sound', NULL),
('route-40', 72, 'surfing', 90.00, 10, 25, NULL, NULL),
('route-40', 73, 'surfing', 10.00, 15, 25, NULL, NULL),
('route-40', 98, 'fishing_old', 15.00, 10, 10, NULL, NULL),
('route-40', 98, 'fishing_good', 50.00, 20, 20, NULL, NULL),
('route-40', 98, 'fishing_super', 60.00, 40, 40, NULL, NULL),
('route-40', 99, 'fishing_super', 10.00, 40, 40, NULL, NULL),
('route-40', 120, 'fishing_good', 10.00, 20, 20, 'Night', NULL),
('route-40', 120, 'fishing_super', 30.00, 40, 40, 'Night', NULL),
('route-40', 129, 'fishing_old', 85.00, 10, 10, NULL, NULL),
('route-40', 129, 'fishing_good', 40.00, 20, 20, NULL, NULL),
('route-40', 222, 'fishing_good', 10.00, 20, 20, 'Morning', NULL),
('route-40', 222, 'fishing_good', 10.00, 20, 20, 'Day', NULL),
('route-40', 222, 'fishing_super', 30.00, 40, 40, 'Morning', NULL),
('route-40', 222, 'fishing_super', 30.00, 40, 40, 'Day', NULL),
('route-41', 72, 'surfing', 90.00, 10, 25, NULL, NULL),
('route-41', 72, 'fishing_old', 15.00, 10, 10, NULL, NULL),
('route-41', 72, 'fishing_good', 30.00, 20, 20, NULL, NULL),
('route-41', 73, 'surfing', 10.00, 15, 25, NULL, NULL),
('route-41', 73, 'fishing_super', 20.00, 40, 40, NULL, NULL),
('route-41', 90, 'fishing_good', 10.00, 20, 20, NULL, NULL),
('route-41', 90, 'fishing_super', 30.00, 40, 40, NULL, NULL),
('route-41', 129, 'fishing_old', 85.00, 10, 10, NULL, NULL),
('route-41', 129, 'fishing_good', 40.00, 20, 20, NULL, NULL),
('route-41', 170, 'fishing_good', 20.00, 20, 20, NULL, NULL),
('route-41', 170, 'fishing_super', 40.00, 40, 40, NULL, NULL),
('route-41', 171, 'fishing_super', 10.00, 40, 40, NULL, NULL),
('route-42', 21, 'walking', 40.00, 14, 16, 'Morning', NULL),
('route-42', 21, 'walking', 40.00, 14, 16, 'Day', NULL),
('route-42', 41, 'walking', 40.00, 14, 16, 'Night', NULL),
('route-42', 118, 'surfing', 90.00, 10, 25, NULL, NULL),
('route-42', 118, 'fishing_old', 15.00, 10, 10, NULL, NULL),
('route-42', 118, 'fishing_good', 60.00, 20, 20, NULL, NULL),
('route-42', 118, 'fishing_super', 70.00, 40, 40, NULL, NULL),
('route-42', 119, 'surfing', 10.00, 15, 25, NULL, NULL),
('route-42', 119, 'fishing_super', 10.00, 40, 40, NULL, NULL),
('route-42', 129, 'fishing_old', 85.00, 10, 10, NULL, NULL),
('route-42', 129, 'fishing_good', 40.00, 20, 20, NULL, NULL),
('route-42', 129, 'fishing_super', 20.00, 40, 40, NULL, NULL),
('route-42', 179, 'walking', 50.00, 13, 15, NULL, NULL),
('route-42', 180, 'walking', 10.00, 15, 17, NULL, NULL),
('route-42', 264, 'walking', 20.00, 15, 15, 'Hoenn Sound', NULL),
('route-42', 293, 'walking', 20.00, 13, 14, 'Hoenn Sound', NULL),
('route-42', 399, 'walking', 20.00, 15, 15, 'Sinnoh Sound', NULL),
('route-42', 418, 'walking', 20.00, 13, 14, 'Sinnoh Sound', NULL),
('mt-mortar', 19, 'walking', 44.00, 14, 16, NULL, NULL),
('mt-mortar', 41, 'walking', 125.00, 13, 17, NULL, NULL),
('mt-mortar', 66, 'walking', 70.00, 13, 28, NULL, NULL),
('mt-mortar', 74, 'walking', 80.00, 13, 31, NULL, NULL),
('mt-mortar', 118, 'surfing', 270.00, 10, 30, NULL, NULL),
('mt-mortar', 118, 'fishing_old', 45.00, 10, 10, NULL, NULL),
('mt-mortar', 118, 'fishing_good', 180.00, 20, 20, NULL, NULL),
('mt-mortar', 118, 'fishing_super', 210.00, 40, 40, NULL, NULL),
('mt-mortar', 119, 'surfing', 30.00, 15, 30, NULL, NULL),
('mt-mortar', 119, 'fishing_super', 30.00, 40, 40, NULL, NULL),
('mt-mortar', 129, 'fishing_old', 255.00, 10, 10, NULL, NULL),
('mt-mortar', 129, 'fishing_good', 120.00, 20, 20, NULL, NULL),
('mt-mortar', 129, 'fishing_super', 60.00, 40, 40, NULL, NULL),
('mt-mortar', 183, 'walking', 40.00, 13, 15, 'Swarm', NULL),
('mt-mortar', 183, 'walking', 1.00, 15, 15, NULL, NULL),
('mt-mortar', 296, 'walking', 80.00, 14, 31, 'Hoenn Sound', NULL),
('mt-mortar', 359, 'walking', 80.00, 13, 32, 'Hoenn Sound', NULL),
('mt-mortar', 433, 'walking', 80.00, 14, 31, 'Sinnoh Sound', NULL),
('mt-mortar', 436, 'walking', 80.00, 13, 32, 'Sinnoh Sound', NULL),
('mt-mortar', 20, 'walking', 15.00, 16, 30, NULL, NULL),
('mt-mortar', 42, 'walking', 5.00, 30, 30, NULL, NULL),
('mt-mortar', 67, 'walking', 30.00, 32, 32, NULL, NULL),
('mt-mortar', 75, 'walking', 30.00, 31, 31, NULL, NULL),
('mt-mortar', 236, 'gift', 100.00, 10, 10, NULL, NULL),
('route-43', 17, 'walking', 25.00, 17, 17, 'Morning', NULL),
('route-43', 17, 'walking', 20.00, 17, 17, 'Day', NULL),
('route-43', 48, 'walking', 15.00, 15, 17, 'Night', NULL),
('route-43', 48, 'walking', 5.00, 16, 16, 'Morning', NULL),
('route-43', 60, 'fishing_old', 15.00, 10, 10, NULL, NULL),
('route-43', 60, 'fishing_good', 60.00, 20, 20, NULL, NULL),
('route-43', 60, 'fishing_super', 80.00, 40, 40, NULL, NULL),
('route-43', 129, 'surfing', 100.00, 5, 50, NULL, NULL),
('route-43', 129, 'fishing_old', 85.00, 10, 10, NULL, NULL),
('route-43', 129, 'fishing_good', 40.00, 20, 20, NULL, NULL),
('route-43', 129, 'fishing_super', 20.00, 40, 40, NULL, NULL),
('route-43', 164, 'walking', 20.00, 17, 17, 'Night', NULL),
('route-43', 179, 'walking', 10.00, 15, 15, 'Morning', NULL),
('route-43', 179, 'walking', 10.00, 15, 15, 'Day', NULL),
('route-43', 179, 'walking', 5.00, 16, 16, 'Night', NULL),
('route-43', 180, 'walking', 30.00, 15, 15, NULL, NULL),
('route-43', 180, 'walking', 10.00, 16, 17, 'Day', NULL),
('route-43', 203, 'walking', 30.00, 15, 15, NULL, NULL),
('route-43', 264, 'walking', 20.00, 17, 17, 'Hoenn Sound', NULL),
('route-43', 293, 'walking', 20.00, 15, 15, 'Hoenn Sound', NULL),
('route-43', 399, 'walking', 20.00, 17, 17, 'Sinnoh Sound', NULL),
('route-43', 418, 'walking', 20.00, 15, 15, 'Sinnoh Sound', NULL),
('lake-of-rage', 129, 'surfing', 90.00, 5, 20, NULL, NULL),
('lake-of-rage', 129, 'fishing_old', 100.00, 10, 10, NULL, NULL),
('lake-of-rage', 129, 'fishing_good', 90.00, 20, 20, NULL, NULL),
('lake-of-rage', 129, 'fishing_super', 70.00, 40, 40, NULL, NULL),
('lake-of-rage', 130, 'surfing', 10.00, 10, 20, NULL, NULL),
('lake-of-rage', 130, 'fishing_good', 10.00, 20, 20, NULL, NULL),
('lake-of-rage', 130, 'fishing_super', 30.00, 40, 40, NULL, NULL),
('lake-of-rage', 130, 'static', 100.00, 30, 30, NULL, NULL),
('route-44', 60, 'surfing', 90.00, 15, 30, NULL, NULL),
('route-44', 60, 'fishing_old', 15.00, 10, 10, NULL, NULL),
('route-44', 60, 'fishing_good', 55.00, 20, 20, NULL, NULL),
('route-44', 60, 'fishing_super', 70.00, 40, 40, NULL, NULL),
('route-44', 61, 'surfing', 10.00, 20, 30, NULL, NULL),
('route-44', 69, 'walking', 20.00, 22, 22, NULL, NULL),
('route-44', 70, 'walking', 35.00, 22, 24, NULL, NULL),
('route-44', 108, 'walking', 15.00, 24, 26, NULL, NULL),
('route-44', 114, 'walking', 30.00, 23, 23, NULL, NULL),
('route-44', 129, 'fishing_old', 85.00, 10, 10, NULL, NULL),
('route-44', 129, 'fishing_good', 40.00, 20, 20, NULL, NULL),
('route-44', 129, 'fishing_super', 20.00, 40, 40, NULL, NULL),
('route-44', 223, 'fishing_old', 15.00, 10, 10, 'Swarm', NULL),
('route-44', 223, 'fishing_good', 65.00, 20, 20, 'Swarm', NULL),
('route-44', 223, 'fishing_good', 5.00, 20, 20, NULL, NULL),
('route-44', 223, 'fishing_super', 90.00, 40, 40, 'Swarm', NULL),
('route-44', 223, 'fishing_super', 10.00, 40, 40, NULL, NULL),
('route-44', 264, 'walking', 20.00, 22, 22, 'Hoenn Sound', NULL),
('route-44', 293, 'walking', 20.00, 22, 23, 'Hoenn Sound', NULL),
('route-44', 399, 'walking', 20.00, 22, 22, 'Sinnoh Sound', NULL),
('route-44', 418, 'walking', 20.00, 22, 23, 'Sinnoh Sound', NULL),
('ice-path', 41, 'walking', 20.00, 22, 23, 'Morning', NULL),
('ice-path', 41, 'walking', 20.00, 22, 23, 'Night', NULL),
('ice-path', 42, 'walking', 120.00, 22, 23, NULL, NULL),
('ice-path', 124, 'walking', 20.00, 22, 23, 'Day', NULL),
('ice-path', 124, 'walking', 20.00, 22, 23, NULL, NULL),
('ice-path', 220, 'walking', 160.00, 21, 24, NULL, NULL),
('ice-path', 225, 'walking', 80.00, 22, 23, NULL, NULL),
('ice-path', 296, 'walking', 80.00, 22, 23, 'Hoenn Sound', NULL),
('ice-path', 359, 'walking', 80.00, 21, 23, 'Hoenn Sound', NULL),
('ice-path', 433, 'walking', 80.00, 22, 23, 'Sinnoh Sound', NULL),
('ice-path', 436, 'walking', 80.00, 21, 23, 'Sinnoh Sound', NULL),
('dragons-den', 129, 'surfing', 90.00, 5, 20, NULL, NULL),
('dragons-den', 129, 'fishing_old', 100.00, 10, 10, NULL, NULL),
('dragons-den', 129, 'fishing_good', 90.00, 20, 20, NULL, NULL),
('dragons-den', 129, 'fishing_super', 60.00, 40, 40, NULL, NULL),
('dragons-den', 147, 'surfing', 10.00, 5, 15, NULL, NULL),
('dragons-den', 147, 'fishing_good', 10.00, 20, 20, NULL, NULL),
('dragons-den', 147, 'fishing_super', 30.00, 40, 40, NULL, NULL),
('dragons-den', 147, 'gift', 100.00, 15, 15, NULL, NULL),
('dragons-den', 147, 'gift', 100.00, 15, 15, 'story-progress-receive-tm-from-claire', NULL),
('dragons-den', 148, 'fishing_super', 10.00, 40, 40, NULL, NULL),
('route-45', 60, 'fishing_old', 15.00, 10, 10, NULL, NULL),
('route-45', 60, 'fishing_good', 60.00, 20, 20, NULL, NULL),
('route-45', 60, 'fishing_super', 80.00, 40, 40, NULL, NULL),
('route-45', 74, 'walking', 30.00, 23, 23, NULL, NULL),
('route-45', 75, 'walking', 55.00, 23, 25, NULL, NULL),
('route-45', 129, 'surfing', 100.00, 2, 25, NULL, NULL),
('route-45', 129, 'fishing_old', 85.00, 10, 10, NULL, NULL),
('route-45', 129, 'fishing_good', 40.00, 20, 20, NULL, NULL),
('route-45', 129, 'fishing_super', 20.00, 40, 40, NULL, NULL),
('route-45', 216, 'walking', 10.00, 20, 20, NULL, NULL),
('route-45', 227, 'walking', 5.00, 27, 27, NULL, NULL),
('route-45', 264, 'walking', 20.00, 24, 24, 'Hoenn Sound', NULL),
('route-45', 293, 'walking', 20.00, 23, 23, 'Hoenn Sound', NULL),
('route-45', 333, 'walking', 40.00, 23, 23, 'Swarm', NULL),
('route-45', 399, 'walking', 20.00, 24, 24, 'Sinnoh Sound', NULL),
('route-45', 418, 'walking', 20.00, 23, 23, 'Sinnoh Sound', NULL),
('dark-cave-blackthorn', 41, 'walking', 30.00, 23, 23, NULL, NULL),
('dark-cave-blackthorn', 42, 'walking', 5.00, 23, 23, NULL, NULL),
('dark-cave-blackthorn', 74, 'walking', 30.00, 23, 23, NULL, NULL),
('dark-cave-blackthorn', 75, 'walking', 20.00, 25, 25, NULL, NULL),
('dark-cave-blackthorn', 118, 'fishing_old', 15.00, 10, 10, NULL, NULL),
('dark-cave-blackthorn', 118, 'fishing_good', 60.00, 20, 20, NULL, NULL),
('dark-cave-blackthorn', 118, 'fishing_super', 70.00, 40, 40, NULL, NULL),
('dark-cave-blackthorn', 119, 'fishing_super', 10.00, 40, 40, NULL, NULL),
('dark-cave-blackthorn', 129, 'surfing', 100.00, 2, 20, NULL, NULL),
('dark-cave-blackthorn', 129, 'fishing_old', 85.00, 10, 10, NULL, NULL),
('dark-cave-blackthorn', 129, 'fishing_good', 40.00, 20, 20, NULL, NULL),
('dark-cave-blackthorn', 129, 'fishing_super', 20.00, 40, 40, NULL, NULL),
('dark-cave-blackthorn', 202, 'walking', 15.00, 20, 25, NULL, NULL),
('dark-cave-blackthorn', 296, 'walking', 20.00, 25, 25, 'Hoenn Sound', NULL),
('dark-cave-blackthorn', 359, 'walking', 20.00, 23, 23, 'Hoenn Sound', NULL),
('dark-cave-blackthorn', 433, 'walking', 20.00, 25, 25, 'Sinnoh Sound', NULL),
('dark-cave-blackthorn', 436, 'walking', 20.00, 23, 23, 'Sinnoh Sound', NULL),
('whirl-islands', 41, 'walking', 120.00, 23, 24, NULL, NULL),
('whirl-islands', 42, 'walking', 20.00, 23, 24, NULL, NULL),
('whirl-islands', 72, 'surfing', 60.00, 15, 25, NULL, NULL),
('whirl-islands', 73, 'surfing', 40.00, 15, 25, NULL, NULL),
('whirl-islands', 86, 'walking', 60.00, 22, 25, NULL, NULL),
('whirl-islands', 98, 'walking', 200.00, 22, 25, NULL, NULL),
('whirl-islands', 98, 'fishing_old', 30.00, 10, 10, NULL, NULL),
('whirl-islands', 98, 'fishing_good', 100.00, 20, 20, NULL, NULL),
('whirl-islands', 98, 'fishing_super', 80.00, 40, 40, NULL, NULL),
('whirl-islands', 99, 'fishing_super', 40.00, 40, 40, NULL, NULL),
('whirl-islands', 116, 'surfing', 90.00, 10, 25, NULL, NULL),
('whirl-islands', 116, 'fishing_good', 20.00, 20, 20, NULL, NULL),
('whirl-islands', 116, 'fishing_super', 60.00, 40, 40, NULL, NULL),
('whirl-islands', 117, 'fishing_super', 20.00, 40, 40, NULL, NULL),
('whirl-islands', 129, 'fishing_old', 170.00, 10, 10, NULL, NULL),
('whirl-islands', 129, 'fishing_good', 80.00, 20, 20, NULL, NULL),
('whirl-islands', 296, 'walking', 80.00, 24, 25, 'Hoenn Sound', NULL),
('whirl-islands', 359, 'walking', 80.00, 22, 24, 'Hoenn Sound', NULL),
('whirl-islands', 433, 'walking', 80.00, 24, 25, 'Sinnoh Sound', NULL),
('whirl-islands', 436, 'walking', 80.00, 22, 24, 'Sinnoh Sound', NULL),
('whirl-islands', 117, 'surfing', 10.00, 15, 30, NULL, NULL),
('whirl-islands', 249, 'static', 100.00, 45, 45, NULL, NULL),
('route-27', 20, 'walking', 20.00, 30, 30, 'Morning', NULL),
('route-27', 20, 'walking', 20.00, 30, 30, 'Day', NULL),
('route-27', 20, 'walking', 10.00, 30, 30, 'Night', NULL),
('route-27', 24, 'walking', 30.00, 28, 28, NULL, NULL),
('route-27', 72, 'surfing', 90.00, 15, 20, NULL, NULL),
('route-27', 72, 'fishing_old', 15.00, 10, 10, NULL, NULL),
('route-27', 72, 'fishing_good', 30.00, 20, 20, NULL, NULL),
('route-27', 73, 'surfing', 10.00, 20, 20, NULL, NULL),
('route-27', 73, 'fishing_super', 20.00, 40, 40, NULL, NULL),
('route-27', 77, 'walking', 5.00, 32, 32, NULL, NULL),
('route-27', 84, 'walking', 40.00, 28, 30, 'Morning', NULL),
('route-27', 84, 'walking', 40.00, 28, 30, 'Day', NULL),
('route-27', 85, 'walking', 5.00, 30, 30, 'Morning', NULL),
('route-27', 85, 'walking', 5.00, 30, 30, 'Day', NULL),
('route-27', 90, 'fishing_good', 10.00, 20, 20, NULL, NULL),
('route-27', 90, 'fishing_super', 30.00, 40, 40, NULL, NULL),
('route-27', 129, 'fishing_old', 85.00, 10, 10, NULL, NULL),
('route-27', 129, 'fishing_good', 40.00, 20, 20, NULL, NULL),
('route-27', 170, 'fishing_good', 20.00, 20, 20, NULL, NULL),
('route-27', 170, 'fishing_super', 40.00, 40, 40, NULL, NULL),
('route-27', 171, 'fishing_super', 10.00, 40, 40, NULL, NULL),
('route-27', 195, 'walking', 55.00, 28, 30, 'Night', NULL),
('route-27', 264, 'walking', 20.00, 30, 30, 'Hoenn Sound', NULL),
('route-27', 293, 'walking', 20.00, 28, 28, 'Hoenn Sound', NULL),
('route-27', 370, 'surfing', 60.00, 20, 20, 'Swarm', NULL),
('route-27', 399, 'walking', 20.00, 30, 30, 'Sinnoh Sound', NULL),
('route-27', 418, 'walking', 20.00, 28, 28, 'Sinnoh Sound', NULL),
('tohjo-falls', 19, 'walking', 5.00, 20, 20, NULL, NULL),
('tohjo-falls', 20, 'walking', 30.00, 22, 22, NULL, NULL),
('tohjo-falls', 41, 'walking', 30.00, 22, 22, NULL, NULL),
('tohjo-falls', 42, 'walking', 20.00, 22, 22, NULL, NULL),
('tohjo-falls', 79, 'walking', 15.00, 21, 23, NULL, NULL),
('tohjo-falls', 79, 'surfing', 30.00, 20, 20, NULL, NULL),
('tohjo-falls', 118, 'surfing', 60.00, 20, 20, NULL, NULL),
('tohjo-falls', 118, 'fishing_old', 15.00, 10, 10, NULL, NULL),
('tohjo-falls', 118, 'fishing_good', 60.00, 20, 20, NULL, NULL),
('tohjo-falls', 118, 'fishing_super', 70.00, 40, 40, NULL, NULL),
('tohjo-falls', 119, 'surfing', 10.00, 20, 20, NULL, NULL),
('tohjo-falls', 119, 'fishing_super', 10.00, 40, 40, NULL, NULL),
('tohjo-falls', 129, 'fishing_old', 85.00, 10, 10, NULL, NULL),
('tohjo-falls', 129, 'fishing_good', 40.00, 20, 20, NULL, NULL),
('tohjo-falls', 129, 'fishing_super', 20.00, 40, 40, NULL, NULL),
('tohjo-falls', 296, 'walking', 20.00, 22, 22, 'Hoenn Sound', NULL),
('tohjo-falls', 359, 'walking', 20.00, 22, 22, 'Hoenn Sound', NULL),
('tohjo-falls', 433, 'walking', 20.00, 22, 22, 'Sinnoh Sound', NULL),
('tohjo-falls', 436, 'walking', 20.00, 22, 22, 'Sinnoh Sound', NULL),
('route-26', 20, 'walking', 30.00, 28, 28, 'Night', NULL),
('route-26', 20, 'walking', 30.00, 28, 28, NULL, NULL),
('route-26', 20, 'walking', 5.00, 30, 30, 'Morning', NULL),
('route-26', 20, 'walking', 5.00, 30, 30, 'Day', NULL),
('route-26', 24, 'walking', 5.00, 30, 30, NULL, NULL),
('route-26', 72, 'surfing', 90.00, 25, 30, NULL, NULL),
('route-26', 72, 'fishing_old', 15.00, 10, 10, NULL, NULL),
('route-26', 72, 'fishing_good', 30.00, 20, 20, NULL, NULL),
('route-26', 73, 'surfing', 10.00, 30, 30, NULL, NULL),
('route-26', 73, 'fishing_super', 20.00, 40, 40, NULL, NULL),
('route-26', 77, 'walking', 20.00, 32, 32, NULL, NULL),
('route-26', 84, 'walking', 30.00, 28, 28, 'Morning', NULL),
('route-26', 84, 'walking', 30.00, 28, 28, 'Day', NULL),
('route-26', 84, 'walking', 10.00, 30, 30, NULL, NULL),
('route-26', 90, 'fishing_good', 10.00, 20, 20, NULL, NULL),
('route-26', 90, 'fishing_super', 30.00, 40, 40, NULL, NULL),
('route-26', 129, 'fishing_old', 85.00, 10, 10, NULL, NULL),
('route-26', 129, 'fishing_good', 40.00, 20, 20, NULL, NULL),
('route-26', 170, 'fishing_good', 20.00, 20, 20, NULL, NULL),
('route-26', 170, 'fishing_super', 40.00, 40, 40, NULL, NULL),
('route-26', 171, 'fishing_super', 10.00, 40, 40, NULL, NULL),
('route-26', 195, 'walking', 5.00, 30, 30, 'Night', NULL),
('route-26', 264, 'walking', 20.00, 32, 32, 'Hoenn Sound', NULL),
('route-26', 293, 'walking', 20.00, 28, 28, 'Hoenn Sound', NULL),
('route-26', 399, 'walking', 20.00, 32, 32, 'Sinnoh Sound', NULL),
('route-26', 418, 'walking', 20.00, 28, 28, 'Sinnoh Sound', NULL),
('route-6', 16, 'walking', 30.00, 13, 13, 'Morning', NULL),
('route-6', 16, 'walking', 30.00, 13, 13, 'Day', NULL),
('route-6', 43, 'walking', 30.00, 13, 13, 'Night', NULL),
('route-6', 52, 'walking', 30.00, 13, 13, 'Night', NULL),
('route-6', 52, 'walking', 20.00, 14, 14, 'Morning', NULL),
('route-6', 52, 'walking', 20.00, 14, 14, 'Day', NULL),
('route-6', 54, 'surfing', 90.00, 5, 10, NULL, NULL),
('route-6', 55, 'surfing', 10.00, 10, 10, NULL, NULL),
('route-6', 60, 'fishing_old', 15.00, 10, 10, NULL, NULL),
('route-6', 60, 'fishing_good', 60.00, 20, 20, NULL, NULL),
('route-6', 60, 'fishing_super', 80.00, 40, 40, NULL, NULL),
('route-6', 63, 'walking', 10.00, 12, 14, NULL, NULL),
('route-6', 69, 'walking', 30.00, 13, 13, 'Morning', NULL),
('route-6', 69, 'walking', 30.00, 13, 13, 'Day', NULL),
('route-6', 69, 'walking', 20.00, 14, 14, 'Night', NULL),
('route-6', 81, 'walking', 10.00, 15, 15, NULL, NULL),
('route-6', 129, 'fishing_old', 85.00, 10, 10, NULL, NULL),
('route-6', 129, 'fishing_good', 40.00, 20, 20, NULL, NULL),
('route-6', 129, 'fishing_super', 20.00, 40, 40, NULL, NULL),
('route-6', 264, 'walking', 20.00, 14, 14, 'Hoenn Sound', NULL),
('route-6', 293, 'walking', 20.00, 13, 13, 'Hoenn Sound', NULL),
('route-6', 399, 'walking', 20.00, 14, 14, 'Sinnoh Sound', NULL),
('route-6', 418, 'walking', 20.00, 13, 13, 'Sinnoh Sound', NULL),
('route-5', 16, 'walking', 40.00, 13, 15, 'Morning', NULL),
('route-5', 16, 'walking', 40.00, 13, 15, 'Day', NULL),
('route-5', 43, 'walking', 30.00, 13, 13, 'Night', NULL),
('route-5', 44, 'walking', 10.00, 15, 15, 'Night', NULL),
('route-5', 52, 'walking', 30.00, 13, 13, 'Night', NULL),
('route-5', 52, 'walking', 20.00, 14, 14, 'Morning', NULL),
('route-5', 52, 'walking', 20.00, 14, 14, 'Day', NULL),
('route-5', 63, 'walking', 10.00, 12, 14, NULL, NULL),
('route-5', 69, 'walking', 30.00, 13, 13, 'Morning', NULL),
('route-5', 69, 'walking', 30.00, 13, 13, 'Day', NULL),
('route-5', 69, 'walking', 20.00, 14, 14, 'Night', NULL),
('route-5', 311, 'walking', 20.00, 13, 13, 'Hoenn Sound', NULL),
('route-5', 312, 'walking', 20.00, 14, 14, 'Hoenn Sound', NULL),
('route-5', 403, 'walking', 40.00, 13, 14, 'Sinnoh Sound', NULL),
('route-24', 43, 'walking', 30.00, 10, 10, 'Night', NULL),
('route-24', 48, 'walking', 30.00, 8, 8, 'Night', NULL),
('route-24', 48, 'walking', 5.00, 8, 8, 'Morning', NULL),
('route-24', 49, 'walking', 5.00, 14, 14, 'Night', NULL),
('route-24', 63, 'walking', 20.00, 9, 9, NULL, NULL),
('route-24', 69, 'walking', 60.00, 8, 10, 'Morning', NULL),
('route-24', 69, 'walking', 35.00, 8, 8, 'Day', NULL),
('route-24', 69, 'walking', 5.00, 8, 8, 'Night', NULL),
('route-24', 70, 'walking', 10.00, 12, 12, NULL, NULL),
('route-24', 70, 'walking', 5.00, 14, 14, 'Morning', NULL),
('route-24', 70, 'walking', 5.00, 14, 14, 'Day', NULL),
('route-24', 118, 'surfing', 90.00, 5, 10, NULL, NULL),
('route-24', 118, 'fishing_old', 15.00, 10, 10, NULL, NULL),
('route-24', 118, 'fishing_good', 60.00, 20, 20, NULL, NULL),
('route-24', 118, 'fishing_super', 70.00, 40, 40, NULL, NULL),
('route-24', 119, 'surfing', 10.00, 10, 10, NULL, NULL),
('route-24', 119, 'fishing_super', 10.00, 40, 40, NULL, NULL),
('route-24', 129, 'fishing_old', 85.00, 10, 10, NULL, NULL),
('route-24', 129, 'fishing_good', 40.00, 20, 20, NULL, NULL),
('route-24', 129, 'fishing_super', 20.00, 40, 40, NULL, NULL),
('route-24', 191, 'walking', 30.00, 10, 10, 'Day', NULL),
('route-24', 264, 'walking', 20.00, 9, 9, 'Hoenn Sound', NULL),
('route-24', 293, 'walking', 20.00, 8, 10, 'Hoenn Sound', NULL),
('route-24', 399, 'walking', 20.00, 9, 9, 'Sinnoh Sound', NULL),
('route-24', 418, 'walking', 20.00, 8, 10, 'Sinnoh Sound', NULL),
('route-25', 16, 'walking', 30.00, 8, 8, 'Morning', NULL),
('route-25', 16, 'walking', 50.00, 8, 8, 'Day', NULL),
('route-25', 17, 'walking', 5.00, 10, 10, 'Morning', NULL),
('route-25', 17, 'walking', 5.00, 10, 10, 'Day', NULL),
('route-25', 43, 'walking', 30.00, 10, 10, 'Night', NULL),
('route-25', 48, 'walking', 30.00, 8, 8, 'Night', NULL),
('route-25', 48, 'walking', 20.00, 8, 8, 'Morning', NULL),
('route-25', 49, 'walking', 20.00, 8, 8, 'Night', NULL),
('route-25', 63, 'walking', 10.00, 9, 9, NULL, NULL),
('route-25', 69, 'walking', 30.00, 10, 10, 'Morning', NULL),
('route-25', 69, 'walking', 30.00, 10, 10, 'Day', NULL),
('route-25', 69, 'walking', 5.00, 14, 14, 'Night', NULL),
('route-25', 70, 'walking', 5.00, 10, 10, 'Night', NULL),
('route-25', 70, 'walking', 5.00, 14, 14, 'Morning', NULL),
('route-25', 70, 'walking', 5.00, 14, 14, 'Day', NULL),
('route-25', 118, 'surfing', 90.00, 5, 10, NULL, NULL),
('route-25', 118, 'fishing_old', 15.00, 10, 10, NULL, NULL),
('route-25', 118, 'fishing_good', 60.00, 20, 20, NULL, NULL),
('route-25', 118, 'fishing_super', 70.00, 40, 40, NULL, NULL),
('route-25', 119, 'surfing', 10.00, 10, 10, NULL, NULL),
('route-25', 119, 'fishing_super', 10.00, 40, 40, NULL, NULL),
('route-25', 129, 'fishing_old', 85.00, 10, 10, NULL, NULL),
('route-25', 129, 'fishing_good', 40.00, 20, 20, NULL, NULL),
('route-25', 129, 'fishing_super', 20.00, 40, 40, NULL, NULL),
('route-25', 245, 'static', 100.00, 40, 40, NULL, NULL),
('route-25', 264, 'walking', 20.00, 8, 8, 'Hoenn Sound', NULL),
('route-25', 293, 'walking', 20.00, 8, 10, 'Hoenn Sound', NULL),
('route-25', 399, 'walking', 20.00, 8, 8, 'Sinnoh Sound', NULL),
('route-25', 418, 'walking', 20.00, 8, 10, 'Sinnoh Sound', NULL),
('route-25', 427, 'walking', 40.00, 8, 10, 'Swarm', NULL),
('route-9', 19, 'walking', 30.00, 13, 13, NULL, NULL),
('route-9', 19, 'walking', 40.00, 15, 15, 'Night', NULL),
('route-9', 20, 'walking', 25.00, 13, 15, 'Night', NULL),
('route-9', 20, 'walking', 10.00, 15, 15, 'Morning', NULL),
('route-9', 20, 'walking', 10.00, 15, 15, 'Day', NULL),
('route-9', 20, 'walking', 5.00, 15, 15, NULL, NULL),
('route-9', 21, 'walking', 50.00, 13, 15, 'Morning', NULL),
('route-9', 21, 'walking', 50.00, 13, 15, 'Day', NULL),
('route-9', 22, 'walking', 5.00, 15, 15, 'Morning', NULL),
('route-9', 22, 'walking', 5.00, 15, 15, 'Day', NULL),
('route-9', 118, 'surfing', 90.00, 10, 15, NULL, NULL),
('route-9', 118, 'fishing_old', 15.00, 10, 10, NULL, NULL),
('route-9', 118, 'fishing_good', 60.00, 20, 20, NULL, NULL),
('route-9', 118, 'fishing_super', 70.00, 40, 40, NULL, NULL),
('route-9', 119, 'surfing', 10.00, 15, 15, NULL, NULL),
('route-9', 119, 'fishing_super', 10.00, 40, 40, NULL, NULL),
('route-9', 129, 'fishing_old', 85.00, 10, 10, NULL, NULL),
('route-9', 129, 'fishing_good', 40.00, 20, 20, NULL, NULL),
('route-9', 129, 'fishing_super', 20.00, 40, 40, NULL, NULL),
('route-9', 264, 'walking', 20.00, 13, 13, 'Hoenn Sound', NULL),
('route-9', 293, 'walking', 20.00, 13, 15, 'Hoenn Sound', NULL),
('route-9', 303, 'walking', 40.00, 13, 15, 'Swarm', NULL),
('route-9', 399, 'walking', 20.00, 13, 13, 'Sinnoh Sound', NULL),
('route-9', 418, 'walking', 20.00, 13, 15, 'Sinnoh Sound', NULL),
('route-10', 20, 'walking', 20.00, 16, 16, NULL, NULL),
('route-10', 20, 'walking', 5.00, 18, 18, 'Morning', NULL),
('route-10', 20, 'walking', 5.00, 18, 18, 'Night', NULL),
('route-10', 21, 'walking', 30.00, 16, 16, 'Morning', NULL),
('route-10', 21, 'walking', 30.00, 16, 16, 'Day', NULL),
('route-10', 22, 'walking', 10.00, 18, 18, 'Morning', NULL),
('route-10', 22, 'walking', 10.00, 18, 18, 'Day', NULL),
('route-10', 100, 'walking', 30.00, 17, 17, NULL, NULL),
('route-10', 118, 'surfing', 90.00, 10, 15, NULL, NULL),
('route-10', 118, 'fishing_old', 15.00, 10, 10, NULL, NULL),
('route-10', 118, 'fishing_good', 60.00, 20, 20, NULL, NULL),
('route-10', 118, 'fishing_super', 70.00, 40, 40, NULL, NULL),
('route-10', 119, 'surfing', 10.00, 15, 15, NULL, NULL),
('route-10', 119, 'fishing_super', 10.00, 40, 40, NULL, NULL),
('route-10', 125, 'walking', 5.00, 18, 18, 'Day', NULL),
('route-10', 125, 'walking', 5.00, 15, 15, NULL, NULL),
('route-10', 129, 'fishing_old', 85.00, 10, 10, NULL, NULL),
('route-10', 129, 'fishing_good', 40.00, 20, 20, NULL, NULL),
('route-10', 129, 'fishing_super', 20.00, 40, 40, NULL, NULL),
('route-10', 145, 'static', 100.00, 50, 50, 'story-progress-returned-machine-part', NULL),
('route-10', 195, 'walking', 40.00, 16, 18, 'Night', NULL),
('route-10', 264, 'walking', 20.00, 16, 16, 'Hoenn Sound', NULL),
('route-10', 293, 'walking', 20.00, 16, 17, 'Hoenn Sound', NULL),
('route-10', 399, 'walking', 20.00, 16, 16, 'Sinnoh Sound', NULL),
('route-10', 418, 'walking', 20.00, 16, 17, 'Sinnoh Sound', NULL),
('rock-tunnel', 41, 'walking', 20.00, 8, 10, NULL, NULL),
('rock-tunnel', 66, 'walking', 20.00, 12, 12, NULL, NULL),
('rock-tunnel', 67, 'walking', 5.00, 14, 14, NULL, NULL),
('rock-tunnel', 74, 'walking', 60.00, 10, 12, NULL, NULL),
('rock-tunnel', 104, 'walking', 65.00, 10, 13, NULL, NULL),
('rock-tunnel', 296, 'walking', 40.00, 12, 16, 'Hoenn Sound', NULL),
('rock-tunnel', 359, 'walking', 40.00, 10, 12, 'Hoenn Sound', NULL),
('rock-tunnel', 433, 'walking', 40.00, 12, 16, 'Sinnoh Sound', NULL),
('rock-tunnel', 436, 'walking', 40.00, 10, 12, 'Sinnoh Sound', NULL),
('rock-tunnel', 74, 'rock_smash', 100.00, 12, 21, NULL, NULL),
('rock-tunnel', 95, 'walking', 20.00, 16, 16, NULL, NULL),
('rock-tunnel', 105, 'walking', 5.00, 14, 14, NULL, NULL),
('rock-tunnel', 115, 'walking', 5.00, 14, 14, NULL, NULL),
('route-8', 17, 'walking', 35.00, 17, 19, 'Morning', NULL),
('route-8', 17, 'walking', 35.00, 17, 19, 'Day', NULL),
('route-8', 37, 'walking', 10.00, 18, 18, 'Morning', NULL),
('route-8', 37, 'walking', 10.00, 18, 18, 'Day', NULL),
('route-8', 37, 'walking', 5.00, 17, 17, 'Night', NULL),
('route-8', 52, 'walking', 30.00, 17, 17, NULL, NULL),
('route-8', 63, 'walking', 20.00, 15, 15, NULL, NULL),
('route-8', 64, 'walking', 5.00, 15, 15, NULL, NULL),
('route-8', 93, 'walking', 30.00, 19, 19, 'Night', NULL),
('route-8', 164, 'walking', 10.00, 18, 18, 'Night', NULL),
('route-8', 311, 'walking', 20.00, 17, 19, 'Hoenn Sound', NULL),
('route-8', 312, 'walking', 20.00, 15, 15, 'Hoenn Sound', NULL),
('route-8', 403, 'walking', 40.00, 15, 19, 'Sinnoh Sound', NULL),
('route-7', 19, 'walking', 5.00, 15, 15, 'Morning', NULL),
('route-7', 20, 'walking', 10.00, 19, 19, NULL, NULL),
('route-7', 21, 'walking', 30.00, 17, 17, 'Morning', NULL),
('route-7', 21, 'walking', 30.00, 17, 17, 'Day', NULL),
('route-7', 37, 'walking', 20.00, 18, 18, NULL, NULL),
('route-7', 37, 'walking', 5.00, 15, 15, 'Day', NULL),
('route-7', 52, 'walking', 30.00, 17, 17, NULL, NULL),
('route-7', 53, 'walking', 5.00, 19, 19, NULL, NULL),
('route-7', 198, 'walking', 30.00, 17, 17, 'Night', NULL),
('route-7', 228, 'walking', 5.00, 15, 15, 'Night', NULL),
('route-7', 311, 'walking', 20.00, 17, 17, 'Hoenn Sound', NULL),
('route-7', 312, 'walking', 20.00, 18, 18, 'Hoenn Sound', NULL),
('route-7', 403, 'walking', 40.00, 17, 18, 'Sinnoh Sound', NULL),
('route-16', 22, 'walking', 40.00, 27, 29, 'Morning', NULL),
('route-16', 22, 'walking', 40.00, 27, 29, 'Day', NULL),
('route-16', 88, 'walking', 50.00, 26, 28, NULL, NULL),
('route-16', 88, 'walking', 30.00, 27, 27, 'Night', NULL),
('route-16', 89, 'walking', 5.00, 30, 30, NULL, NULL),
('route-16', 198, 'walking', 10.00, 29, 29, 'Night', NULL),
('route-16', 218, 'walking', 5.00, 27, 27, NULL, NULL),
('route-16', 311, 'walking', 20.00, 26, 27, 'Hoenn Sound', NULL),
('route-16', 312, 'walking', 20.00, 28, 28, 'Hoenn Sound', NULL),
('route-16', 403, 'walking', 40.00, 26, 28, 'Sinnoh Sound', NULL),
('route-17', 22, 'walking', 40.00, 28, 30, 'Morning', NULL),
('route-17', 22, 'walking', 40.00, 28, 30, 'Day', NULL),
('route-17', 88, 'walking', 60.00, 27, 28, 'Night', NULL),
('route-17', 88, 'walking', 30.00, 27, 27, 'Morning', NULL),
('route-17', 88, 'walking', 20.00, 29, 29, NULL, NULL),
('route-17', 89, 'walking', 10.00, 30, 30, 'Night', NULL),
('route-17', 89, 'walking', 5.00, 32, 32, NULL, NULL),
('route-17', 218, 'walking', 30.00, 27, 27, 'Day', NULL),
('route-17', 218, 'walking', 5.00, 29, 29, NULL, NULL),
('route-17', 311, 'walking', 20.00, 27, 28, 'Hoenn Sound', NULL),
('route-17', 312, 'walking', 20.00, 29, 29, 'Hoenn Sound', NULL),
('route-17', 403, 'walking', 40.00, 27, 29, 'Sinnoh Sound', NULL),
('route-18', 22, 'walking', 40.00, 27, 29, 'Morning', NULL),
('route-18', 22, 'walking', 40.00, 27, 29, 'Day', NULL),
('route-18', 88, 'walking', 50.00, 26, 28, NULL, NULL),
('route-18', 88, 'walking', 30.00, 27, 27, 'Night', NULL),
('route-18', 89, 'walking', 10.00, 29, 29, 'Night', NULL),
('route-18', 89, 'walking', 5.00, 30, 30, NULL, NULL),
('route-18', 218, 'walking', 5.00, 27, 27, NULL, NULL),
('route-18', 311, 'walking', 20.00, 26, 27, 'Hoenn Sound', NULL),
('route-18', 312, 'walking', 20.00, 28, 28, 'Hoenn Sound', NULL),
('route-18', 403, 'walking', 40.00, 26, 28, 'Sinnoh Sound', NULL),
('route-15', 17, 'walking', 20.00, 25, 25, 'Morning', NULL),
('route-15', 17, 'walking', 20.00, 25, 25, 'Day', NULL),
('route-15', 30, 'walking', 30.00, 23, 23, NULL, NULL),
('route-15', 33, 'walking', 30.00, 23, 23, NULL, NULL),
('route-15', 113, 'walking', 1.00, 25, 25, NULL, NULL),
('route-15', 164, 'walking', 20.00, 25, 25, 'Night', NULL),
('route-15', 187, 'walking', 19.00, 22, 24, 'Morning', NULL),
('route-15', 187, 'walking', 19.00, 22, 24, 'Day', NULL),
('route-15', 195, 'walking', 19.00, 22, 24, 'Night', NULL),
('route-15', 311, 'walking', 20.00, 23, 23, 'Hoenn Sound', NULL),
('route-15', 312, 'walking', 20.00, 25, 25, 'Hoenn Sound', NULL),
('route-15', 403, 'walking', 40.00, 23, 25, 'Sinnoh Sound', NULL),
('route-14', 17, 'walking', 20.00, 25, 25, 'Morning', NULL),
('route-14', 17, 'walking', 20.00, 25, 25, 'Day', NULL),
('route-14', 30, 'walking', 30.00, 23, 23, NULL, NULL),
('route-14', 33, 'walking', 30.00, 23, 23, NULL, NULL),
('route-14', 113, 'walking', 1.00, 25, 25, NULL, NULL),
('route-14', 164, 'walking', 20.00, 25, 25, 'Night', NULL),
('route-14', 187, 'walking', 10.00, 24, 24, 'Morning', NULL),
('route-14', 187, 'walking', 10.00, 24, 24, 'Day', NULL),
('route-14', 188, 'walking', 9.00, 26, 26, 'Morning', NULL),
('route-14', 188, 'walking', 9.00, 26, 26, 'Day', NULL),
('route-14', 195, 'walking', 19.00, 24, 26, 'Night', NULL),
('route-14', 311, 'walking', 20.00, 23, 23, 'Hoenn Sound', NULL),
('route-14', 312, 'walking', 20.00, 25, 25, 'Hoenn Sound', NULL),
('route-14', 403, 'walking', 40.00, 23, 25, 'Sinnoh Sound', NULL),
('route-13', 17, 'walking', 20.00, 25, 25, 'Morning', NULL),
('route-13', 17, 'walking', 20.00, 25, 25, 'Day', NULL),
('route-13', 30, 'walking', 30.00, 23, 23, NULL, NULL),
('route-13', 33, 'walking', 30.00, 23, 23, NULL, NULL),
('route-13', 72, 'surfing', 60.00, 25, 25, NULL, NULL),
('route-13', 72, 'fishing_old', 15.00, 10, 10, NULL, NULL),
('route-13', 72, 'fishing_good', 60.00, 20, 20, NULL, NULL),
('route-13', 72, 'fishing_super', 70.00, 40, 40, NULL, NULL),
('route-13', 73, 'surfing', 10.00, 25, 25, NULL, NULL),
('route-13', 113, 'walking', 40.00, 23, 23, 'Swarm', NULL),
('route-13', 113, 'walking', 1.00, 25, 25, NULL, NULL),
('route-13', 129, 'fishing_old', 85.00, 10, 10, NULL, NULL),
('route-13', 129, 'fishing_good', 40.00, 20, 20, NULL, NULL),
('route-13', 129, 'fishing_super', 20.00, 40, 40, NULL, NULL),
('route-13', 164, 'walking', 20.00, 25, 25, 'Night', NULL),
('route-13', 187, 'walking', 19.00, 22, 24, 'Morning', NULL),
('route-13', 187, 'walking', 19.00, 22, 24, 'Day', NULL),
('route-13', 195, 'walking', 19.00, 22, 24, 'Night', NULL),
('route-13', 195, 'surfing', 30.00, 25, 25, NULL, NULL),
('route-13', 211, 'fishing_super', 10.00, 40, 40, NULL, NULL),
('route-13', 264, 'walking', 20.00, 25, 25, 'Hoenn Sound', NULL),
('route-13', 293, 'walking', 20.00, 23, 23, 'Hoenn Sound', NULL),
('route-13', 399, 'walking', 20.00, 25, 25, 'Sinnoh Sound', NULL),
('route-13', 418, 'walking', 20.00, 23, 23, 'Sinnoh Sound', NULL),
('route-12', 72, 'surfing', 60.00, 25, 25, NULL, NULL),
('route-12', 72, 'fishing_old', 15.00, 10, 10, NULL, NULL),
('route-12', 72, 'fishing_good', 60.00, 20, 20, NULL, NULL),
('route-12', 72, 'fishing_super', 70.00, 40, 40, NULL, NULL),
('route-12', 73, 'surfing', 10.00, 25, 25, NULL, NULL),
('route-12', 129, 'fishing_old', 85.00, 10, 10, NULL, NULL),
('route-12', 129, 'fishing_good', 40.00, 20, 20, NULL, NULL),
('route-12', 129, 'fishing_super', 20.00, 40, 40, NULL, NULL),
('route-12', 143, 'static', 100.00, 50, 50, 'other-snorlax-11-beat-league', NULL),
('route-12', 195, 'surfing', 30.00, 25, 25, NULL, NULL),
('route-12', 211, 'fishing_super', 10.00, 40, 40, NULL, NULL),
('route-12', 369, 'fishing_old', 15.00, 10, 10, 'Swarm', NULL),
('route-12', 369, 'fishing_good', 65.00, 20, 20, 'Swarm', NULL),
('route-12', 369, 'fishing_super', 100.00, 40, 40, 'Swarm', NULL),
('route-11', 19, 'walking', 30.00, 15, 15, NULL, NULL),
('route-11', 81, 'walking', 20.00, 15, 15, NULL, NULL),
('route-11', 96, 'walking', 40.00, 14, 16, NULL, NULL),
('route-11', 97, 'walking', 10.00, 16, 16, NULL, NULL),
('route-11', 143, 'static', 100.00, 50, 50, NULL, NULL),
('route-11', 311, 'walking', 20.00, 14, 15, 'Hoenn Sound', NULL),
('route-11', 312, 'walking', 20.00, 15, 15, 'Hoenn Sound', NULL),
('route-11', 403, 'walking', 40.00, 14, 15, 'Sinnoh Sound', NULL),
('digletts-cave', 50, 'walking', 90.00, 13, 19, NULL, NULL),
('digletts-cave', 51, 'walking', 10.00, 19, 29, NULL, NULL),
('digletts-cave', 296, 'walking', 20.00, 19, 19, 'Hoenn Sound', NULL),
('digletts-cave', 359, 'walking', 20.00, 15, 17, 'Hoenn Sound', NULL),
('digletts-cave', 433, 'walking', 20.00, 19, 19, 'Sinnoh Sound', NULL),
('digletts-cave', 436, 'walking', 20.00, 15, 17, 'Sinnoh Sound', NULL),
('route-2', 13, 'walking', 60.00, 3, 3, 'Day', NULL),
('route-2', 13, 'walking', 20.00, 3, 3, 'Morning', NULL),
('route-2', 13, 'walking', 20.00, 5, 5, 'Night', NULL),
('route-2', 13, 'walking', 2.00, 4, 4, NULL, NULL),
('route-2', 14, 'walking', 22.00, 3, 7, 'Night', NULL),
('route-2', 14, 'walking', 40.00, 5, 5, 'Morning', NULL),
('route-2', 14, 'walking', 40.00, 5, 5, 'Day', NULL),
('route-2', 15, 'walking', 20.00, 7, 7, 'Morning', NULL),
('route-2', 15, 'walking', 8.00, 10, 10, 'Night', NULL),
('route-2', 16, 'walking', 40.00, 3, 3, 'Morning', NULL),
('route-2', 16, 'walking', 80.00, 3, 7, 'Day', NULL),
('route-2', 17, 'walking', 10.00, 7, 7, 'Day', NULL),
('route-2', 163, 'walking', 120.00, 3, 5, 'Night', NULL),
('route-2', 164, 'walking', 28.00, 7, 7, 'Night', NULL),
('route-2', 165, 'walking', 60.00, 3, 3, 'Morning', NULL),
('route-2', 165, 'walking', 8.00, 10, 10, 'Day', NULL),
('route-2', 166, 'walking', 18.00, 7, 10, 'Morning', NULL),
('route-2', 311, 'walking', 40.00, 3, 3, 'Hoenn Sound', NULL),
('route-2', 312, 'walking', 40.00, 5, 5, 'Hoenn Sound', NULL),
('route-2', 403, 'walking', 80.00, 3, 5, 'Sinnoh Sound', NULL),
('viridian-forest', 13, 'walking', 40.00, 3, 3, 'Morning', NULL),
('viridian-forest', 13, 'walking', 40.00, 3, 3, 'Day', NULL),
('viridian-forest', 14, 'walking', 30.00, 3, 5, 'Morning', NULL),
('viridian-forest', 14, 'walking', 30.00, 3, 5, 'Day', NULL),
('viridian-forest', 15, 'walking', 10.00, 7, 7, 'Morning', NULL),
('viridian-forest', 16, 'walking', 10.00, 3, 3, 'Morning', NULL),
('viridian-forest', 16, 'walking', 15.00, 3, 7, 'Day', NULL),
('viridian-forest', 17, 'walking', 9.00, 7, 7, 'Day', NULL),
('viridian-forest', 17, 'walking', 4.00, 7, 7, 'Morning', NULL),
('viridian-forest', 25, 'walking', 5.00, 4, 4, NULL, NULL),
('viridian-forest', 25, 'walking', 1.00, 7, 7, 'Morning', NULL),
('viridian-forest', 25, 'walking', 1.00, 7, 7, 'Day', NULL),
('viridian-forest', 163, 'walking', 80.00, 3, 5, 'Night', NULL),
('viridian-forest', 164, 'walking', 15.00, 7, 7, 'Night', NULL),
('viridian-forest', 322, 'walking', 20.00, 5, 5, 'Hoenn Sound', NULL),
('viridian-forest', 325, 'walking', 20.00, 3, 3, 'Hoenn Sound', NULL),
('viridian-forest', 401, 'walking', 40.00, 3, 3, 'Swarm', NULL),
('viridian-forest', 406, 'walking', 20.00, 3, 3, 'Sinnoh Sound', NULL),
('viridian-forest', 455, 'walking', 20.00, 5, 5, 'Sinnoh Sound', NULL),
('route-1', 16, 'walking', 45.00, 2, 4, 'Morning', NULL),
('route-1', 16, 'walking', 45.00, 2, 4, 'Day', NULL),
('route-1', 19, 'walking', 30.00, 2, 2, NULL, NULL),
('route-1', 19, 'walking', 25.00, 3, 6, 'Night', NULL),
('route-1', 161, 'walking', 20.00, 3, 3, 'Morning', NULL),
('route-1', 161, 'walking', 20.00, 3, 3, 'Day', NULL),
('route-1', 162, 'walking', 5.00, 6, 6, 'Morning', NULL),
('route-1', 162, 'walking', 5.00, 6, 6, 'Day', NULL),
('route-1', 163, 'walking', 45.00, 2, 4, 'Night', NULL),
('route-1', 261, 'walking', 40.00, 2, 2, 'Swarm', NULL),
('route-1', 311, 'walking', 20.00, 2, 2, 'Hoenn Sound', NULL),
('route-1', 312, 'walking', 20.00, 3, 3, 'Hoenn Sound', NULL),
('route-1', 403, 'walking', 40.00, 2, 3, 'Sinnoh Sound', NULL),
('pallet-town', 1, 'gift', 100.00, 5, 5, 'story-progress-beat-red', NULL),
('pallet-town', 4, 'gift', 100.00, 5, 5, 'story-progress-beat-red', NULL),
('pallet-town', 7, 'gift', 100.00, 5, 5, 'story-progress-beat-red', NULL),
('pallet-town', 72, 'surfing', 90.00, 30, 35, NULL, NULL),
('pallet-town', 72, 'fishing_old', 15.00, 10, 10, NULL, NULL),
('pallet-town', 72, 'fishing_good', 30.00, 20, 20, NULL, NULL),
('pallet-town', 73, 'surfing', 10.00, 35, 35, NULL, NULL),
('pallet-town', 73, 'fishing_super', 20.00, 40, 40, NULL, NULL),
('pallet-town', 90, 'fishing_good', 10.00, 20, 20, NULL, NULL),
('pallet-town', 90, 'fishing_super', 30.00, 40, 40, NULL, NULL),
('pallet-town', 129, 'fishing_old', 85.00, 10, 10, NULL, NULL),
('pallet-town', 129, 'fishing_good', 40.00, 20, 20, NULL, NULL),
('pallet-town', 170, 'fishing_good', 20.00, 20, 20, NULL, NULL),
('pallet-town', 170, 'fishing_super', 40.00, 40, 40, NULL, NULL),
('pallet-town', 171, 'fishing_super', 10.00, 40, 40, NULL, NULL),
('route-21', 72, 'surfing', 90.00, 30, 35, NULL, NULL),
('route-21', 72, 'fishing_old', 15.00, 10, 10, NULL, NULL),
('route-21', 72, 'fishing_good', 30.00, 20, 20, NULL, NULL),
('route-21', 73, 'surfing', 10.00, 35, 35, NULL, NULL),
('route-21', 73, 'fishing_super', 20.00, 40, 40, NULL, NULL),
('route-21', 90, 'fishing_good', 10.00, 20, 20, NULL, NULL),
('route-21', 90, 'fishing_super', 30.00, 40, 40, NULL, NULL),
('route-21', 114, 'walking', 90.00, 20, 35, NULL, NULL),
('route-21', 114, 'walking', 5.00, 30, 30, 'Morning', NULL),
('route-21', 114, 'walking', 5.00, 30, 30, 'Night', NULL),
('route-21', 122, 'walking', 5.00, 30, 30, 'Day', NULL),
('route-21', 122, 'walking', 5.00, 28, 28, NULL, NULL),
('route-21', 129, 'fishing_old', 85.00, 10, 10, NULL, NULL),
('route-21', 129, 'fishing_good', 40.00, 20, 20, NULL, NULL),
('route-21', 170, 'fishing_good', 20.00, 20, 20, NULL, NULL),
('route-21', 170, 'fishing_super', 40.00, 40, 40, NULL, NULL),
('route-21', 171, 'fishing_super', 10.00, 40, 40, NULL, NULL),
('route-21', 264, 'walking', 20.00, 35, 35, 'Hoenn Sound', NULL),
('route-21', 293, 'walking', 20.00, 25, 30, 'Hoenn Sound', NULL),
('route-21', 399, 'walking', 20.00, 35, 35, 'Sinnoh Sound', NULL),
('route-21', 418, 'walking', 20.00, 25, 30, 'Sinnoh Sound', NULL),
('route-20', 72, 'surfing', 90.00, 30, 35, NULL, NULL),
('route-20', 72, 'fishing_old', 15.00, 10, 10, NULL, NULL),
('route-20', 72, 'fishing_good', 30.00, 20, 20, NULL, NULL),
('route-20', 73, 'surfing', 10.00, 35, 35, NULL, NULL),
('route-20', 73, 'fishing_super', 20.00, 40, 40, NULL, NULL),
('route-20', 90, 'fishing_good', 10.00, 20, 20, NULL, NULL),
('route-20', 90, 'fishing_super', 30.00, 40, 40, NULL, NULL),
('route-20', 129, 'fishing_old', 85.00, 10, 10, NULL, NULL),
('route-20', 129, 'fishing_good', 40.00, 20, 20, NULL, NULL),
('route-20', 170, 'fishing_good', 20.00, 20, 20, NULL, NULL),
('route-20', 170, 'fishing_super', 40.00, 40, 40, NULL, NULL),
('route-20', 171, 'fishing_super', 10.00, 40, 40, NULL, NULL),
('route-19', 72, 'surfing', 90.00, 30, 35, NULL, NULL),
('route-19', 73, 'surfing', 10.00, 35, 35, NULL, NULL),
('route-19', 98, 'rock_smash', 10.00, 24, 27, NULL, NULL),
('route-19', 98, 'fishing_old', 15.00, 10, 10, NULL, NULL),
('route-19', 98, 'fishing_good', 50.00, 20, 20, NULL, NULL),
('route-19', 98, 'fishing_super', 60.00, 40, 40, NULL, NULL),
('route-19', 99, 'rock_smash', 90.00, 28, 31, NULL, NULL),
('route-19', 99, 'fishing_super', 10.00, 40, 40, NULL, NULL),
('route-19', 120, 'fishing_good', 10.00, 20, 20, 'Night', NULL),
('route-19', 120, 'fishing_super', 30.00, 40, 40, 'Night', NULL),
('route-19', 129, 'fishing_old', 85.00, 10, 10, NULL, NULL),
('route-19', 129, 'fishing_good', 40.00, 20, 20, NULL, NULL),
('route-19', 222, 'fishing_good', 10.00, 20, 20, 'Morning', NULL),
('route-19', 222, 'fishing_good', 10.00, 20, 20, 'Day', NULL),
('route-19', 222, 'fishing_super', 30.00, 40, 40, 'Morning', NULL),
('route-19', 222, 'fishing_super', 30.00, 40, 40, 'Day', NULL),
('route-19', 366, 'surfing', 60.00, 35, 35, 'Swarm', NULL),
('seafoam-islands', 41, 'walking', 60.00, 26, 32, NULL, NULL),
('seafoam-islands', 42, 'walking', 150.00, 30, 40, NULL, NULL),
('seafoam-islands', 54, 'walking', 84.00, 26, 34, NULL, NULL),
('seafoam-islands', 55, 'walking', 66.00, 32, 38, NULL, NULL),
('seafoam-islands', 296, 'walking', 100.00, 30, 38, 'Hoenn Sound', NULL),
('seafoam-islands', 359, 'walking', 100.00, 28, 35, 'Hoenn Sound', NULL),
('seafoam-islands', 433, 'walking', 100.00, 30, 38, 'Sinnoh Sound', NULL),
('seafoam-islands', 436, 'walking', 100.00, 28, 35, 'Sinnoh Sound', NULL),
('seafoam-islands', 86, 'walking', 80.00, 32, 35, NULL, NULL),
('seafoam-islands', 87, 'walking', 48.00, 35, 38, NULL, NULL),
('seafoam-islands', 54, 'fishing_good', 30.00, 20, 20, NULL, NULL),
('seafoam-islands', 80, 'surfing', 10.00, 35, 50, NULL, NULL),
('seafoam-islands', 86, 'surfing', 60.00, 30, 40, NULL, NULL),
('seafoam-islands', 98, 'fishing_old', 15.00, 10, 10, NULL, NULL),
('seafoam-islands', 98, 'fishing_good', 20.00, 20, 20, NULL, NULL),
('seafoam-islands', 99, 'fishing_super', 15.00, 40, 40, NULL, NULL),
('seafoam-islands', 116, 'surfing', 30.00, 30, 40, NULL, NULL),
('seafoam-islands', 116, 'fishing_good', 10.00, 20, 20, NULL, NULL),
('seafoam-islands', 116, 'fishing_super', 30.00, 40, 40, NULL, NULL),
('seafoam-islands', 117, 'fishing_super', 15.00, 40, 40, NULL, NULL),
('seafoam-islands', 124, 'walking', 12.00, 38, 40, NULL, NULL),
('seafoam-islands', 129, 'fishing_old', 85.00, 10, 10, NULL, NULL),
('seafoam-islands', 129, 'fishing_good', 40.00, 20, 20, NULL, NULL),
('seafoam-islands', 130, 'fishing_super', 40.00, 40, 40, NULL, NULL),
('seafoam-islands', 144, 'static', 100.00, 50, 50, NULL, NULL),
('route-22', 19, 'walking', 30.00, 3, 3, NULL, NULL),
('route-22', 19, 'walking', 65.00, 3, 7, 'Night', NULL),
('route-22', 21, 'walking', 50.00, 3, 5, 'Morning', NULL),
('route-22', 21, 'walking', 50.00, 3, 5, 'Day', NULL),
('route-22', 22, 'walking', 5.00, 7, 7, 'Morning', NULL),
('route-22', 22, 'walking', 5.00, 7, 7, 'Day', NULL),
('route-22', 60, 'surfing', 90.00, 5, 10, NULL, NULL),
('route-22', 60, 'fishing_old', 15.00, 10, 10, NULL, NULL),
('route-22', 60, 'fishing_good', 60.00, 20, 20, NULL, NULL),
('route-22', 60, 'fishing_super', 80.00, 40, 40, NULL, NULL),
('route-22', 61, 'surfing', 10.00, 10, 10, NULL, NULL),
('route-22', 77, 'walking', 5.00, 6, 6, NULL, NULL),
('route-22', 84, 'walking', 10.00, 4, 4, 'Morning', NULL),
('route-22', 84, 'walking', 10.00, 4, 4, 'Day', NULL),
('route-22', 129, 'fishing_old', 85.00, 10, 10, NULL, NULL),
('route-22', 129, 'fishing_good', 40.00, 20, 20, NULL, NULL),
('route-22', 129, 'fishing_super', 20.00, 40, 40, NULL, NULL),
('route-22', 264, 'walking', 20.00, 5, 5, 'Hoenn Sound', NULL),
('route-22', 293, 'walking', 20.00, 3, 3, 'Hoenn Sound', NULL),
('route-22', 399, 'walking', 20.00, 5, 5, 'Sinnoh Sound', NULL),
('route-22', 418, 'walking', 20.00, 3, 3, 'Sinnoh Sound', NULL),
('route-28', 60, 'surfing', 90.00, 35, 40, NULL, NULL),
('route-28', 60, 'fishing_old', 15.00, 10, 10, NULL, NULL),
('route-28', 60, 'fishing_good', 60.00, 20, 20, NULL, NULL),
('route-28', 60, 'fishing_super', 80.00, 40, 40, NULL, NULL),
('route-28', 61, 'surfing', 10.00, 40, 40, NULL, NULL),
('route-28', 77, 'walking', 30.00, 40, 40, NULL, NULL),
('route-28', 78, 'walking', 10.00, 42, 42, 'Morning', NULL),
('route-28', 78, 'walking', 10.00, 42, 42, 'Day', NULL),
('route-28', 78, 'walking', 10.00, 41, 43, 'Night', NULL),
('route-28', 84, 'walking', 5.00, 41, 41, 'Morning', NULL),
('route-28', 84, 'walking', 5.00, 41, 41, 'Day', NULL),
('route-28', 85, 'walking', 5.00, 43, 43, 'Morning', NULL),
('route-28', 85, 'walking', 5.00, 43, 43, 'Day', NULL),
('route-28', 114, 'walking', 30.00, 39, 39, NULL, NULL),
('route-28', 129, 'fishing_old', 85.00, 10, 10, NULL, NULL),
('route-28', 129, 'fishing_good', 40.00, 20, 20, NULL, NULL),
('route-28', 129, 'fishing_super', 20.00, 40, 40, NULL, NULL),
('route-28', 215, 'walking', 10.00, 42, 42, 'Night', NULL),
('route-28', 217, 'walking', 20.00, 40, 40, NULL, NULL),
('route-28', 264, 'walking', 20.00, 40, 40, 'Hoenn Sound', NULL),
('route-28', 293, 'walking', 20.00, 39, 40, 'Hoenn Sound', NULL),
('route-28', 399, 'walking', 20.00, 40, 40, 'Sinnoh Sound', NULL),
('route-28', 418, 'walking', 20.00, 39, 40, 'Sinnoh Sound', NULL),
('mt-silver', 60, 'surfing', 9.00, 30, 40, NULL, NULL),
('mt-silver', 60, 'fishing_old', 15.00, 10, 10, NULL, NULL),
('mt-silver', 60, 'fishing_good', 60.00, 20, 20, NULL, NULL),
('mt-silver', 60, 'fishing_super', 80.00, 40, 40, NULL, NULL),
('mt-silver', 61, 'surfing', 91.00, 30, 48, NULL, NULL),
('mt-silver', 77, 'walking', 30.00, 42, 42, NULL, NULL),
('mt-silver', 78, 'walking', 10.00, 44, 44, NULL, NULL),
('mt-silver', 84, 'walking', 5.00, 41, 41, 'Morning', NULL),
('mt-silver', 84, 'walking', 5.00, 41, 41, 'Day', NULL),
('mt-silver', 85, 'walking', 5.00, 43, 43, 'Morning', NULL),
('mt-silver', 85, 'walking', 5.00, 43, 43, 'Day', NULL),
('mt-silver', 114, 'walking', 30.00, 41, 41, NULL, NULL),
('mt-silver', 129, 'fishing_old', 340.00, 10, 10, NULL, NULL),
('mt-silver', 129, 'fishing_good', 160.00, 20, 20, NULL, NULL),
('mt-silver', 129, 'fishing_super', 60.00, 40, 40, NULL, NULL),
('mt-silver', 215, 'walking', 10.00, 41, 43, 'Night', NULL),
('mt-silver', 217, 'walking', 110.00, 42, 48, NULL, NULL),
('mt-silver', 264, 'walking', 20.00, 42, 42, 'Hoenn Sound', NULL),
('mt-silver', 293, 'walking', 20.00, 41, 42, 'Hoenn Sound', NULL),
('mt-silver', 399, 'walking', 20.00, 42, 42, 'Sinnoh Sound', NULL),
('mt-silver', 418, 'walking', 20.00, 41, 42, 'Sinnoh Sound', NULL),
('mt-silver', 42, 'walking', 20.00, 45, 48, NULL, NULL),
('mt-silver', 75, 'walking', 20.00, 41, 43, NULL, NULL),
('mt-silver', 95, 'walking', 30.00, 42, 42, NULL, NULL),
('mt-silver', 118, 'surfing', 29.00, 30, 40, NULL, NULL),
('mt-silver', 118, 'fishing_old', 45.00, 10, 10, NULL, NULL),
('mt-silver', 118, 'fishing_good', 150.00, 20, 20, NULL, NULL),
('mt-silver', 119, 'surfing', 271.00, 30, 50, NULL, NULL),
('mt-silver', 119, 'fishing_good', 20.00, 20, 20, NULL, NULL),
('mt-silver', 119, 'fishing_super', 30.00, 40, 40, 'Morning', NULL),
('mt-silver', 119, 'fishing_super', 30.00, 40, 40, 'Day', NULL),
('mt-silver', 119, 'fishing_super', 40.00, 40, 40, NULL, NULL),
('mt-silver', 129, 'fishing_good', 10.00, 20, 20, 'Morning', NULL),
('mt-silver', 129, 'fishing_good', 10.00, 20, 20, 'Day', NULL),
('mt-silver', 130, 'fishing_good', 10.00, 20, 20, 'Night', NULL),
('mt-silver', 130, 'fishing_super', 50.00, 40, 40, NULL, NULL),
('mt-silver', 130, 'fishing_super', 30.00, 40, 40, 'Night', NULL),
('mt-silver', 216, 'walking', 20.00, 43, 46, NULL, NULL),
('mt-silver', 246, 'walking', 20.00, 15, 20, NULL, NULL),
('mt-silver', 296, 'walking', 80.00, 43, 48, 'Hoenn Sound', NULL),
('mt-silver', 359, 'walking', 80.00, 42, 48, 'Hoenn Sound', NULL),
('mt-silver', 433, 'walking', 80.00, 43, 48, 'Sinnoh Sound', NULL),
('mt-silver', 436, 'walking', 80.00, 42, 48, 'Sinnoh Sound', NULL),
('mt-silver', 55, 'walking', 60.00, 48, 48, NULL, NULL),
('mt-silver', 118, 'fishing_super', 140.00, 40, 40, NULL, NULL),
('mt-silver', 195, 'walking', 45.00, 45, 45, NULL, NULL),
('mt-silver', 195, 'walking', 50.00, 45, 45, 'Morning', NULL),
('mt-silver', 195, 'walking', 50.00, 45, 45, 'Day', NULL),
('mt-silver', 200, 'walking', 50.00, 45, 45, 'Night', NULL),
('mt-silver', 208, 'walking', 20.00, 48, 48, NULL, NULL),
('mt-silver', 247, 'walking', 5.00, 30, 30, NULL, NULL),
('mt-silver', 215, 'walking', 20.00, 50, 50, NULL, NULL),
('bell-tower', 19, 'walking', 640.00, 20, 22, 'Morning', NULL),
('bell-tower', 19, 'walking', 640.00, 20, 22, 'Day', NULL),
('bell-tower', 19, 'walking', 160.00, 22, 24, NULL, NULL),
('bell-tower', 92, 'walking', 640.00, 20, 22, 'Night', NULL),
('bell-tower', 263, 'walking', 160.00, 20, 21, 'Hoenn Sound', NULL),
('bell-tower', 307, 'walking', 160.00, 22, 22, 'Sinnoh Sound', NULL),
('bell-tower', 327, 'walking', 160.00, 22, 22, 'Hoenn Sound', NULL),
('bell-tower', 441, 'walking', 160.00, 20, 21, 'Sinnoh Sound', NULL),
('cerulean-cave', 42, 'walking', 50.00, 38, 42, 'Night', NULL),
('cerulean-cave', 42, 'walking', 30.00, 38, 47, NULL, NULL),
('cerulean-cave', 47, 'walking', 20.00, 38, 38, 'Morning', NULL),
('cerulean-cave', 47, 'walking', 20.00, 38, 38, 'Day', NULL),
('cerulean-cave', 47, 'walking', 10.00, 38, 38, 'Night', NULL),
('cerulean-cave', 53, 'walking', 10.00, 38, 38, 'Morning', NULL),
('cerulean-cave', 53, 'walking', 10.00, 38, 38, 'Day', NULL),
('cerulean-cave', 53, 'walking', 4.00, 39, 39, NULL, NULL),
('cerulean-cave', 54, 'surfing', 270.00, 35, 40, NULL, NULL),
('cerulean-cave', 55, 'surfing', 30.00, 40, 40, NULL, NULL),
('cerulean-cave', 60, 'fishing_good', 135.00, 20, 20, NULL, NULL),
('cerulean-cave', 60, 'fishing_good', 30.00, 20, 20, 'Night', NULL),
('cerulean-cave', 60, 'fishing_super', 120.00, 40, 40, NULL, NULL),
('cerulean-cave', 60, 'fishing_super', 90.00, 40, 40, 'Night', NULL),
('cerulean-cave', 61, 'fishing_super', 90.00, 40, 40, 'Morning', NULL),
('cerulean-cave', 61, 'fishing_super', 90.00, 40, 40, 'Day', NULL),
('cerulean-cave', 67, 'walking', 30.00, 39, 42, 'Morning', NULL),
('cerulean-cave', 67, 'walking', 30.00, 39, 42, 'Day', NULL),
('cerulean-cave', 67, 'walking', 24.00, 39, 45, NULL, NULL),
('cerulean-cave', 67, 'walking', 2.00, 39, 40, 'Night', NULL),
('cerulean-cave', 74, 'rock_smash', 180.00, 22, 24, NULL, NULL),
('cerulean-cave', 75, 'rock_smash', 20.00, 26, 30, NULL, NULL),
('cerulean-cave', 82, 'walking', 35.00, 40, 47, NULL, NULL),
('cerulean-cave', 82, 'walking', 1.00, 39, 39, 'Morning', NULL),
('cerulean-cave', 82, 'walking', 1.00, 39, 39, 'Day', NULL),
('cerulean-cave', 101, 'walking', 15.00, 40, 46, NULL, NULL),
('cerulean-cave', 118, 'fishing_good', 90.00, 20, 20, NULL, NULL),
('cerulean-cave', 118, 'fishing_good', 30.00, 20, 20, 'Morning', NULL),
('cerulean-cave', 118, 'fishing_good', 30.00, 20, 20, 'Day', NULL),
('cerulean-cave', 129, 'fishing_old', 300.00, 10, 10, NULL, NULL),
('cerulean-cave', 129, 'fishing_good', 45.00, 20, 20, NULL, NULL),
('cerulean-cave', 130, 'fishing_super', 90.00, 40, 40, NULL, NULL),
('cerulean-cave', 132, 'walking', 30.00, 39, 45, NULL, NULL),
('cerulean-cave', 132, 'walking', 1.00, 40, 40, 'Morning', NULL),
('cerulean-cave', 132, 'walking', 1.00, 40, 40, 'Day', NULL),
('cerulean-cave', 202, 'walking', 15.00, 37, 49, NULL, NULL),
('cerulean-cave', 296, 'walking', 60.00, 39, 45, 'Hoenn Sound', NULL),
('cerulean-cave', 359, 'walking', 60.00, 38, 47, 'Hoenn Sound', NULL),
('cerulean-cave', 433, 'walking', 60.00, 39, 45, 'Sinnoh Sound', NULL),
('cerulean-cave', 436, 'walking', 60.00, 38, 47, 'Sinnoh Sound', NULL),
('cerulean-cave', 47, 'walking', 45.00, 40, 47, NULL, NULL),
('cerulean-cave', 64, 'walking', 40.00, 42, 46, NULL, NULL),
('cerulean-cave', 150, 'static', 100.00, 70, 70, NULL, NULL),
('safari-zone', 74, 'walking', 40.00, 15, 17, 'Morning', NULL),
('safari-zone', 74, 'walking', 40.00, 15, 17, 'Day', NULL),
('safari-zone', 74, 'walking', 40.00, 15, 17, 'Night', NULL),
('safari-zone', 76, 'walking', 20.00, 16, 17, 'Morning', NULL),
('safari-zone', 76, 'walking', 20.00, 16, 17, 'Day', NULL),
('safari-zone', 81, 'walking', 20.00, 15, 16, 'Morning', NULL),
('safari-zone', 81, 'walking', 20.00, 15, 16, 'Day', NULL),
('safari-zone', 81, 'walking', 20.00, 15, 16, 'Night', NULL),
('safari-zone', 82, 'walking', 10.00, 17, 17, 'Morning', NULL),
('safari-zone', 82, 'walking', 10.00, 17, 17, 'Day', NULL),
('safari-zone', 82, 'walking', 20.00, 17, 17, 'Night', NULL),
('safari-zone', 126, 'walking', 10.00, 17, 17, 'Morning', NULL),
('safari-zone', 126, 'walking', 10.00, 17, 17, 'Day', NULL),
('safari-zone', 202, 'walking', 20.00, 16, 17, 'Night', NULL),
('safari-zone', 22, 'walking', 30.00, 15, 17, 'Night', NULL),
('safari-zone', 27, 'walking', 40.00, 15, 17, 'Morning', NULL),
('safari-zone', 27, 'walking', 40.00, 15, 17, 'Day', NULL),
('safari-zone', 27, 'walking', 40.00, 15, 17, 'Night', NULL),
('safari-zone', 28, 'walking', 30.00, 15, 17, 'Morning', NULL),
('safari-zone', 28, 'walking', 30.00, 15, 17, 'Day', NULL),
('safari-zone', 28, 'walking', 30.00, 15, 17, 'Night', NULL),
('safari-zone', 104, 'walking', 20.00, 16, 17, 'Morning', NULL),
('safari-zone', 104, 'walking', 20.00, 16, 17, 'Day', NULL),
('safari-zone', 105, 'walking', 10.00, 17, 17, 'Morning', NULL),
('safari-zone', 105, 'walking', 10.00, 17, 17, 'Day', NULL),
('safari-zone', 17, 'walking', 30.00, 15, 17, 'Morning', NULL),
('safari-zone', 17, 'walking', 30.00, 15, 17, 'Day', NULL),
('safari-zone', 20, 'walking', 30.00, 15, 17, 'Night', NULL),
('safari-zone', 63, 'walking', 30.00, 15, 17, 'Morning', NULL),
('safari-zone', 63, 'walking', 30.00, 15, 17, 'Day', NULL),
('safari-zone', 63, 'walking', 30.00, 15, 17, 'Night', NULL),
('safari-zone', 203, 'walking', 30.00, 15, 17, 'Morning', NULL),
('safari-zone', 203, 'walking', 30.00, 15, 17, 'Day', NULL),
('safari-zone', 203, 'walking', 20.00, 15, 16, 'Night', NULL),
('safari-zone', 234, 'walking', 20.00, 17, 17, 'Night', NULL),
('safari-zone', 235, 'walking', 10.00, 17, 17, 'Morning', NULL),
('safari-zone', 235, 'walking', 10.00, 17, 17, 'Day', NULL),
('safari-zone', 35, 'walking', 10.00, 17, 17, 'Night', NULL),
('safari-zone', 39, 'walking', 80.00, 15, 17, 'Morning', NULL),
('safari-zone', 39, 'walking', 60.00, 15, 17, 'Day', NULL),
('safari-zone', 39, 'walking', 30.00, 15, 17, 'Night', NULL),
('safari-zone', 60, 'fishing_old', 40.00, 12, 15, NULL, NULL),
('safari-zone', 60, 'fishing_good', 40.00, 22, 24, NULL, NULL),
('safari-zone', 60, 'fishing_super', 40.00, 35, 36, NULL, NULL),
('safari-zone', 61, 'fishing_good', 20.00, 24, 25, NULL, NULL),
('safari-zone', 61, 'fishing_super', 60.00, 35, 38, NULL, NULL),
('safari-zone', 129, 'surfing', 110.00, 7, 17, NULL, NULL),
('safari-zone', 129, 'fishing_old', 160.00, 12, 15, NULL, NULL),
('safari-zone', 129, 'fishing_good', 80.00, 22, 24, NULL, NULL),
('safari-zone', 183, 'walking', 30.00, 15, 17, 'Night', NULL),
('safari-zone', 183, 'surfing', 20.00, 16, 17, NULL, NULL),
('safari-zone', 187, 'walking', 40.00, 15, 17, 'Morning', NULL),
('safari-zone', 187, 'walking', 30.00, 15, 17, 'Day', NULL),
('safari-zone', 188, 'walking', 10.00, 17, 17, 'Morning', NULL),
('safari-zone', 188, 'walking', 10.00, 17, 17, 'Day', NULL),
('safari-zone', 191, 'walking', 30.00, 15, 17, 'Day', NULL),
('safari-zone', 194, 'walking', 30.00, 15, 17, 'Night', NULL),
('safari-zone', 194, 'surfing', 30.00, 15, 17, NULL, NULL),
('safari-zone', 16, 'walking', 30.00, 15, 17, 'Morning', NULL),
('safari-zone', 16, 'walking', 30.00, 15, 17, 'Day', NULL),
('safari-zone', 69, 'walking', 40.00, 15, 17, 'Morning', NULL),
('safari-zone', 69, 'walking', 40.00, 15, 17, 'Day', NULL),
('safari-zone', 69, 'walking', 30.00, 15, 17, 'Night', NULL),
('safari-zone', 92, 'walking', 20.00, 15, 17, 'Night', NULL),
('safari-zone', 93, 'walking', 20.00, 16, 17, 'Night', NULL),
('safari-zone', 122, 'walking', 20.00, 16, 17, 'Morning', NULL),
('safari-zone', 122, 'walking', 20.00, 16, 17, 'Day', NULL),
('safari-zone', 200, 'walking', 10.00, 17, 17, 'Morning', NULL),
('safari-zone', 200, 'walking', 10.00, 17, 17, 'Day', NULL),
('safari-zone', 200, 'walking', 30.00, 15, 17, 'Night', NULL),
('safari-zone', 46, 'walking', 30.00, 15, 17, 'Morning', NULL),
('safari-zone', 46, 'walking', 30.00, 15, 17, 'Day', NULL),
('safari-zone', 96, 'walking', 20.00, 15, 17, 'Night', NULL),
('safari-zone', 97, 'walking', 20.00, 16, 17, 'Night', NULL),
('safari-zone', 118, 'surfing', 40.00, 15, 17, NULL, NULL),
('safari-zone', 118, 'fishing_good', 40.00, 22, 24, NULL, NULL),
('safari-zone', 118, 'fishing_super', 40.00, 35, 37, NULL, NULL),
('safari-zone', 119, 'fishing_good', 20.00, 24, 25, NULL, NULL),
('safari-zone', 119, 'fishing_super', 40.00, 35, 37, NULL, NULL),
('safari-zone', 147, 'fishing_super', 20.00, 36, 37, NULL, NULL),
('safari-zone', 161, 'walking', 30.00, 15, 17, 'Morning', NULL),
('safari-zone', 161, 'walking', 30.00, 15, 17, 'Day', NULL),
('safari-zone', 161, 'walking', 30.00, 15, 17, 'Night', NULL),
('safari-zone', 198, 'walking', 10.00, 17, 17, 'Morning', NULL),
('safari-zone', 198, 'walking', 10.00, 17, 17, 'Day', NULL),
('safari-zone', 198, 'walking', 30.00, 15, 17, 'Night', NULL),
('route-47', 20, 'walking', 5.00, 31, 33, NULL, NULL),
('route-47', 21, 'walking', 5.00, 31, 31, NULL, NULL),
('route-47', 22, 'walking', 4.00, 34, 34, NULL, NULL),
('route-47', 44, 'walking', 5.00, 32, 32, NULL, NULL),
('route-47', 72, 'surfing', 60.00, 15, 25, NULL, NULL),
('route-47', 72, 'fishing_old', 15.00, 10, 10, NULL, NULL),
('route-47', 72, 'fishing_good', 30.00, 20, 20, NULL, NULL),
('route-47', 73, 'fishing_super', 20.00, 40, 40, NULL, NULL),
('route-47', 83, 'walking', 20.00, 35, 35, 'Morning', NULL),
('route-47', 83, 'walking', 20.00, 35, 35, 'Day', NULL),
('route-47', 86, 'surfing', 30.00, 10, 20, NULL, NULL),
('route-47', 90, 'fishing_good', 10.00, 20, 20, NULL, NULL),
('route-47', 90, 'fishing_super', 30.00, 40, 40, NULL, NULL),
('route-47', 120, 'surfing', 10.00, 15, 25, NULL, NULL),
('route-47', 129, 'fishing_old', 85.00, 10, 10, NULL, NULL),
('route-47', 129, 'fishing_good', 40.00, 20, 20, NULL, NULL),
('route-47', 132, 'walking', 40.00, 35, 35, 'Swarm', NULL),
('route-47', 132, 'walking', 41.00, 31, 40, NULL, NULL),
('route-47', 164, 'walking', 20.00, 35, 35, 'Night', NULL),
('route-47', 170, 'fishing_good', 20.00, 20, 20, NULL, NULL),
('route-47', 170, 'fishing_super', 40.00, 40, 40, NULL, NULL),
('route-47', 171, 'fishing_super', 10.00, 40, 40, NULL, NULL),
('route-47', 241, 'walking', 20.00, 35, 35, NULL, NULL),
('route-47', 264, 'walking', 20.00, 31, 32, 'Hoenn Sound', NULL),
('route-47', 293, 'walking', 20.00, 33, 34, 'Hoenn Sound', NULL),
('route-47', 399, 'walking', 20.00, 31, 32, 'Sinnoh Sound', NULL),
('route-47', 418, 'walking', 20.00, 33, 34, 'Sinnoh Sound', NULL),
('route-48', 22, 'walking', 10.00, 21, 21, NULL, NULL),
('route-48', 37, 'walking', 20.00, 24, 24, 'Night', NULL),
('route-48', 37, 'walking', 9.00, 21, 22, NULL, NULL),
('route-48', 44, 'walking', 20.00, 22, 24, NULL, NULL),
('route-48', 50, 'walking', 4.00, 20, 20, NULL, NULL),
('route-48', 83, 'walking', 20.00, 24, 24, 'Morning', NULL),
('route-48', 83, 'walking', 20.00, 24, 24, 'Day', NULL),
('route-48', 128, 'walking', 21.00, 20, 24, NULL, NULL),
('route-48', 187, 'walking', 11.00, 20, 22, NULL, NULL),
('route-48', 203, 'walking', 5.00, 20, 20, NULL, NULL),
('route-48', 311, 'walking', 20.00, 20, 21, 'Hoenn Sound', NULL),
('route-48', 312, 'walking', 20.00, 22, 24, 'Hoenn Sound', NULL),
('route-48', 403, 'walking', 40.00, 20, 24, 'Sinnoh Sound', NULL);

INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions, version_exclusive)
SELECT r.id, e.dex, e.method, e.rate, e.lmin, e.lmax, NULLIF(e.cond, ''), NULLIF(e.ver_excl, '')
FROM _enc e JOIN public.routes r ON r.slug = e.slug AND r.game_id = 'd0e1f2a3-b4c5-6789-de90-123456789012';

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
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'violet-city' AND game_id = 'd0e1f2a3-b4c5-6789-de90-123456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
  VALUES (v_route_id, 'Falkner', 'Gym Leader', true, 'gym_leader', 13, 1, 'Flying-type specialist. Zephyr Badge.')
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 16, 9, 1, '["Tackle", "Sand Attack", "Gust", "Quick Attack"]'::jsonb, 'Keen Eye', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 17, 13, 2, '["Tackle", "Sand Attack", "Gust", "Roost"]'::jsonb, 'Keen Eye', NULL, NULL);
END $$;

-- Bugsy (Gym Leader)
DO $$
DECLARE
  v_trainer_id UUID;
  v_route_id UUID;
BEGIN
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'azalea-town' AND game_id = 'd0e1f2a3-b4c5-6789-de90-123456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
  VALUES (v_route_id, 'Bugsy', 'Gym Leader', true, 'gym_leader', 17, 1, 'Bug-type specialist. Hive Badge.')
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 11, 15, 1, '["Tackle", "String Shot", "Bug Bite", "Harden"]'::jsonb, 'Shield Dust', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 14, 15, 2, '["Tackle", "Poison Sting", "Bug Bite", "Harden"]'::jsonb, 'Shield Dust', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 123, 17, 3, '["Quick Attack", "Leer", "Focus Energy", "U-turn"]'::jsonb, 'Technician', NULL, NULL);
END $$;

-- Whitney (Gym Leader)
DO $$
DECLARE
  v_trainer_id UUID;
  v_route_id UUID;
BEGIN
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'goldenrod-city' AND game_id = 'd0e1f2a3-b4c5-6789-de90-123456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
  VALUES (v_route_id, 'Whitney', 'Gym Leader', true, 'gym_leader', 19, 1, 'Normal-type specialist. Plain Badge. Miltank is infamous.')
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 35, 17, 1, '["DoubleSlap", "Encore", "Mimic", "Metronome"]'::jsonb, 'Cute Charm', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 241, 19, 2, '["Rollout", "Attract", "Stomp", "Milk Drink"]'::jsonb, 'Scrappy', NULL, NULL);
END $$;

-- Morty (Gym Leader)
DO $$
DECLARE
  v_trainer_id UUID;
  v_route_id UUID;
BEGIN
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'ecruteak-city' AND game_id = 'd0e1f2a3-b4c5-6789-de90-123456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
  VALUES (v_route_id, 'Morty', 'Gym Leader', true, 'gym_leader', 25, 1, 'Ghost-type specialist. Fog Badge.')
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 92, 21, 1, '["Lick", "Spite", "Mean Look", "Curse"]'::jsonb, 'Levitate', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 93, 21, 2, '["Hypnosis", "Spite", "Mean Look", "Shadow Ball"]'::jsonb, 'Levitate', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 94, 25, 3, '["Hypnosis", "Shadow Ball", "Sucker Punch", "Dream Eater"]'::jsonb, 'Levitate', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 93, 23, 4, '["Hypnosis", "Spite", "Sucker Punch", "Shadow Ball"]'::jsonb, 'Levitate', NULL, NULL);
END $$;

-- Chuck (Gym Leader)
DO $$
DECLARE
  v_trainer_id UUID;
  v_route_id UUID;
BEGIN
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'cianwood-city' AND game_id = 'd0e1f2a3-b4c5-6789-de90-123456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
  VALUES (v_route_id, 'Chuck', 'Gym Leader', true, 'gym_leader', 31, 1, 'Fighting-type specialist. Storm Badge.')
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 57, 29, 1, '["Leer", "Rage", "Karate Chop", "Rock Slide"]'::jsonb, 'Vital Spirit', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 62, 31, 2, '["Hypnosis", "Focus Punch", "Surf", "Body Slam"]'::jsonb, 'Damp', NULL, NULL);
END $$;

-- Jasmine (Gym Leader)
DO $$
DECLARE
  v_trainer_id UUID;
  v_route_id UUID;
BEGIN
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'olivine-city' AND game_id = 'd0e1f2a3-b4c5-6789-de90-123456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
  VALUES (v_route_id, 'Jasmine', 'Gym Leader', true, 'gym_leader', 35, 1, 'Steel-type specialist. Mineral Badge.')
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 81, 30, 1, '["Thunder Wave", "Supersonic", "Thunderbolt", "Sonic Boom"]'::jsonb, 'Magnet Pull', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 81, 30, 2, '["Thunder Wave", "Supersonic", "Thunderbolt", "Sonic Boom"]'::jsonb, 'Magnet Pull', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 208, 35, 3, '["Iron Tail", "Screech", "Rock Throw", "Sandstorm"]'::jsonb, 'Sturdy', NULL, NULL);
END $$;

-- Pryce (Gym Leader)
DO $$
DECLARE
  v_trainer_id UUID;
  v_route_id UUID;
BEGIN
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'mahogany-town' AND game_id = 'd0e1f2a3-b4c5-6789-de90-123456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
  VALUES (v_route_id, 'Pryce', 'Gym Leader', true, 'gym_leader', 34, 1, 'Ice-type specialist. Glacier Badge.')
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 86, 30, 1, '["Hail", "Icy Wind", "Aurora Beam", "Rest"]'::jsonb, 'Thick Fat', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 87, 32, 2, '["Hail", "Icy Wind", "Aurora Beam", "Rest"]'::jsonb, 'Thick Fat', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 221, 34, 3, '["Hail", "Ice Fang", "Mud Bomb", "Blizzard"]'::jsonb, 'Oblivious', NULL, NULL);
END $$;

-- Clair (Gym Leader)
DO $$
DECLARE
  v_trainer_id UUID;
  v_route_id UUID;
BEGIN
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'blackthorn-city' AND game_id = 'd0e1f2a3-b4c5-6789-de90-123456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
  VALUES (v_route_id, 'Clair', 'Gym Leader', true, 'gym_leader', 41, 1, 'Dragon-type specialist. Rising Badge.')
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 148, 38, 1, '["Thunder Wave", "Twister", "DragonBreath", "Slam"]'::jsonb, 'Shed Skin', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 148, 38, 2, '["Fire Blast", "Twister", "DragonBreath", "Slam"]'::jsonb, 'Shed Skin', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 130, 38, 3, '["Dragon Rage", "Dragon Pulse", "Twister", "Bite"]'::jsonb, 'Intimidate', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 230, 41, 4, '["Dragon Pulse", "Hydro Pump", "Smokescreen", "Gyro Ball"]'::jsonb, 'Sniper', NULL, NULL);
END $$;

-- Will (Elite Four)
DO $$
DECLARE
  v_trainer_id UUID;
  v_route_id UUID;
BEGIN
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'indigo-plateau' AND game_id = 'd0e1f2a3-b4c5-6789-de90-123456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
  VALUES (v_route_id, 'Will', 'Elite Four', true, 'elite_four', 42, 1, 'Psychic-type specialist. First of the Elite Four.')
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 178, 40, 1, '["Air Slash", "Psychic", "Confuse Ray", "U-turn"]'::jsonb, 'Synchronize', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 124, 41, 2, '["Psychic", "Ice Punch", "Lovely Kiss", "Double Slap"]'::jsonb, 'Oblivious', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 103, 41, 3, '["Psychic", "Egg Bomb", "Reflect", "Leech Seed"]'::jsonb, 'Chlorophyll', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 80, 41, 4, '["Psychic", "Surf", "Amnesia", "Body Slam"]'::jsonb, 'Own Tempo', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 178, 42, 5, '["Psychic", "Air Slash", "Shadow Ball", "U-turn"]'::jsonb, 'Synchronize', NULL, NULL);
END $$;

-- Koga (Elite Four)
DO $$
DECLARE
  v_trainer_id UUID;
  v_route_id UUID;
BEGIN
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'indigo-plateau' AND game_id = 'd0e1f2a3-b4c5-6789-de90-123456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
  VALUES (v_route_id, 'Koga', 'Elite Four', true, 'elite_four', 44, 2, 'Poison-type specialist. Second of the Elite Four.')
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 168, 40, 1, '["Bug Bite", "Poison Jab", "Giga Drain", "Baton Pass"]'::jsonb, 'Insomnia', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 49, 41, 2, '["Bug Buzz", "Psychic", "Signal Beam", "Double Team"]'::jsonb, 'Tinted Lens', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 169, 42, 3, '["Cross Poison", "Air Slash", "Confuse Ray", "Mean Look"]'::jsonb, 'Inner Focus', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 89, 43, 4, '["Gunk Shot", "Minimize", "Screech", "Mud Bomb"]'::jsonb, 'Sticky Hold', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 205, 44, 5, '["Bug Bite", "Explosion", "Toxic Spikes", "Protect"]'::jsonb, 'Sturdy', NULL, NULL);
END $$;

-- Bruno (Elite Four)
DO $$
DECLARE
  v_trainer_id UUID;
  v_route_id UUID;
BEGIN
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'indigo-plateau' AND game_id = 'd0e1f2a3-b4c5-6789-de90-123456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
  VALUES (v_route_id, 'Bruno', 'Elite Four', true, 'elite_four', 46, 3, 'Fighting-type specialist. Third of the Elite Four.')
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 107, 42, 1, '["ThunderPunch", "Ice Punch", "Fire Punch", "Bullet Punch"]'::jsonb, 'Iron Fist', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 106, 42, 2, '["Jump Kick", "Blaze Kick", "Focus Energy", "Swagger"]'::jsonb, 'Limber', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 95, 43, 3, '["Earthquake", "Rock Slide", "Sandstorm", "Double Edge"]'::jsonb, 'Rock Head', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 237, 42, 4, '["Triple Kick", "Counter", "Quick Attack", "Detect"]'::jsonb, 'Intimidate', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 68, 46, 5, '["Cross Chop", "Bullet Punch", "Rock Slide", "Foresight"]'::jsonb, 'Guts', NULL, NULL);
END $$;

-- Karen (Elite Four)
DO $$
DECLARE
  v_trainer_id UUID;
  v_route_id UUID;
BEGIN
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'indigo-plateau' AND game_id = 'd0e1f2a3-b4c5-6789-de90-123456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
  VALUES (v_route_id, 'Karen', 'Elite Four', true, 'elite_four', 47, 4, 'Dark-type specialist. Fourth of the Elite Four.')
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 197, 42, 1, '["Dark Pulse", "Confuse Ray", "Quick Attack", "Payback"]'::jsonb, 'Synchronize', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 45, 42, 2, '["Petal Dance", "Moonlight", "Stun Spore", "Attract"]'::jsonb, 'Chlorophyll', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 94, 44, 3, '["Shadow Ball", "Sludge Bomb", "Lick", "Curse"]'::jsonb, 'Levitate', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 198, 44, 4, '["Sucker Punch", "Whirlwind", "Psychic", "Faint Attack"]'::jsonb, 'Insomnia', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 229, 47, 5, '["Dark Pulse", "Flamethrower", "Nasty Plot", "Crunch"]'::jsonb, 'Flash Fire', NULL, NULL);
END $$;

-- Lance (Champion)
DO $$
DECLARE
  v_trainer_id UUID;
  v_route_id UUID;
BEGIN
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'indigo-plateau' AND game_id = 'd0e1f2a3-b4c5-6789-de90-123456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
  VALUES (v_route_id, 'Lance', 'Champion', true, 'champion', 50, 5, 'Dragon-type specialist. Johto Champion.')
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 130, 46, 1, '["Dragon Dance", "Waterfall", "Ice Fang", "Flail"]'::jsonb, 'Intimidate', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 149, 49, 2, '["Dragon Rush", "Thunder Wave", "Thunder", "Hyper Beam"]'::jsonb, 'Inner Focus', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 149, 49, 3, '["Dragon Rush", "Thunder Wave", "Blizzard", "Hyper Beam"]'::jsonb, 'Inner Focus', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 149, 50, 4, '["Dragon Rush", "Thunder Wave", "Fire Blast", "Hyper Beam"]'::jsonb, 'Inner Focus', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 142, 48, 5, '["Rock Slide", "Aerial Ace", "Crunch", "Thunder Fang"]'::jsonb, 'Rock Head', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 6, 48, 6, '["Flamethrower", "Air Slash", "Dragon Pulse", "Shadow Claw"]'::jsonb, 'Blaze', NULL, NULL);
END $$;

-- Lt. Surge (Gym Leader)
DO $$
DECLARE
  v_trainer_id UUID;
  v_route_id UUID;
BEGIN
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'vermilion-city' AND game_id = 'd0e1f2a3-b4c5-6789-de90-123456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
  VALUES (v_route_id, 'Lt. Surge', 'Gym Leader', true, 'gym_leader', 51, 1, 'Electric-type specialist. Thunder Badge.')
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 26, 51, 1, '["Thunder Wave", "Quick Attack", "Thunderbolt", "Signal Beam"]'::jsonb, 'Static', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 101, 47, 2, '["Screech", "Thunderbolt", "Signal Beam", "Light Screen"]'::jsonb, 'Soundproof', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 82, 47, 3, '["Thunderbolt", "Flash Cannon", "Supersonic", "Thunder Wave"]'::jsonb, 'Magnet Pull', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 125, 47, 4, '["ThunderPunch", "Light Screen", "Quick Attack", "Low Kick"]'::jsonb, 'Static', NULL, NULL);
END $$;

-- Sabrina (Gym Leader)
DO $$
DECLARE
  v_trainer_id UUID;
  v_route_id UUID;
BEGIN
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'saffron-city' AND game_id = 'd0e1f2a3-b4c5-6789-de90-123456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
  VALUES (v_route_id, 'Sabrina', 'Gym Leader', true, 'gym_leader', 53, 1, 'Psychic-type specialist. Marsh Badge.')
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 196, 53, 1, '["Psychic", "Shadow Ball", "Calm Mind", "Skill Swap"]'::jsonb, 'Synchronize', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 122, 50, 2, '["Psychic", "Reflect", "Light Screen", "Calm Mind"]'::jsonb, 'Filter', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 65, 48, 3, '["Psychic", "Energy Ball", "Charge Beam", "Reflect"]'::jsonb, 'Synchronize', NULL, NULL);
END $$;

-- Misty (Gym Leader)
DO $$
DECLARE
  v_trainer_id UUID;
  v_route_id UUID;
BEGIN
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'cerulean-city' AND game_id = 'd0e1f2a3-b4c5-6789-de90-123456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
  VALUES (v_route_id, 'Misty', 'Gym Leader', true, 'gym_leader', 54, 1, 'Water-type specialist. Cascade Badge.')
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 55, 49, 1, '["Surf", "Psychic", "Ice Beam", "Rain Dance"]'::jsonb, 'Cloud Nine', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 121, 54, 2, '["Surf", "Psychic", "Ice Beam", "Power Gem"]'::jsonb, 'Natural Cure', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 131, 52, 3, '["Surf", "Ice Beam", "Body Slam", "Rain Dance"]'::jsonb, 'Water Absorb', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 195, 49, 4, '["Surf", "Earthquake", "Rain Dance", "Amnesia"]'::jsonb, 'Water Absorb', NULL, NULL);
END $$;

-- Erika (Gym Leader)
DO $$
DECLARE
  v_trainer_id UUID;
  v_route_id UUID;
BEGIN
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'celadon-city' AND game_id = 'd0e1f2a3-b4c5-6789-de90-123456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
  VALUES (v_route_id, 'Erika', 'Gym Leader', true, 'gym_leader', 56, 1, 'Grass-type specialist. Rainbow Badge.')
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 189, 51, 1, '["Sunny Day", "Leech Seed", "Cotton Spore", "Giga Drain"]'::jsonb, 'Chlorophyll', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 182, 56, 2, '["Petal Dance", "SolarBeam", "Aromatherapy", "Sunny Day"]'::jsonb, 'Chlorophyll', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 114, 52, 3, '["Power Whip", "AncientPower", "Sleep Powder", "Stun Spore"]'::jsonb, 'Chlorophyll', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 45, 56, 4, '["Petal Dance", "Moonlight", "SolarBeam", "Sunny Day"]'::jsonb, 'Chlorophyll', NULL, NULL);
END $$;

-- Janine (Gym Leader)
DO $$
DECLARE
  v_trainer_id UUID;
  v_route_id UUID;
BEGIN
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'fuchsia-city' AND game_id = 'd0e1f2a3-b4c5-6789-de90-123456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
  VALUES (v_route_id, 'Janine', 'Gym Leader', true, 'gym_leader', 50, 1, 'Poison-type specialist. Soul Badge.')
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 169, 47, 1, '["Cross Poison", "Air Slash", "Confuse Ray", "U-turn"]'::jsonb, 'Inner Focus', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 168, 47, 2, '["Poison Jab", "Bug Bite", "Giga Drain", "Baton Pass"]'::jsonb, 'Insomnia', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 49, 50, 3, '["Psychic", "Bug Buzz", "Sleep Powder", "Signal Beam"]'::jsonb, 'Tinted Lens', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 110, 44, 4, '["Sludge Bomb", "Thunderbolt", "Explosion", "Shadow Ball"]'::jsonb, 'Levitate', NULL, NULL);
END $$;

-- Brock (Gym Leader)
DO $$
DECLARE
  v_trainer_id UUID;
  v_route_id UUID;
BEGIN
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'pewter-city' AND game_id = 'd0e1f2a3-b4c5-6789-de90-123456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
  VALUES (v_route_id, 'Brock', 'Gym Leader', true, 'gym_leader', 55, 1, 'Rock-type specialist. Boulder Badge.')
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 76, 51, 1, '["Earthquake", "Stone Edge", "Sandstorm", "Stealth Rock"]'::jsonb, 'Sturdy', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 112, 51, 2, '["Earthquake", "Stone Edge", "Megahorn", "Crunch"]'::jsonb, 'Lightning Rod', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 139, 52, 3, '["Surf", "AncientPower", "Tickle", "Protect"]'::jsonb, 'Shell Armor', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 141, 52, 4, '["AncientPower", "Aqua Jet", "Slash", "Endure"]'::jsonb, 'Battle Armor', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 95, 55, 5, '["Earthquake", "Stone Edge", "Sandstorm", "Iron Tail"]'::jsonb, 'Rock Head', NULL, NULL);
END $$;

-- Blaine (Gym Leader)
DO $$
DECLARE
  v_trainer_id UUID;
  v_route_id UUID;
BEGIN
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'cinnabar-island' AND game_id = 'd0e1f2a3-b4c5-6789-de90-123456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
  VALUES (v_route_id, 'Blaine', 'Gym Leader', true, 'gym_leader', 54, 1, 'Fire-type specialist. Volcano Badge.')
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 126, 54, 1, '["Flamethrower", "SolarBeam", "Sunny Day", "Confuse Ray"]'::jsonb, 'Flame Body', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 78, 48, 2, '["Flare Blitz", "SolarBeam", "Sunny Day", "Quick Attack"]'::jsonb, 'Flash Fire', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 59, 50, 3, '["Flare Blitz", "ExtremeSpeed", "Crunch", "Thunder Fang"]'::jsonb, 'Intimidate', NULL, NULL);
END $$;

-- Blue (Gym Leader)
DO $$
DECLARE
  v_trainer_id UUID;
  v_route_id UUID;
BEGIN
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'viridian-city' AND game_id = 'd0e1f2a3-b4c5-6789-de90-123456789012';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
  VALUES (v_route_id, 'Blue', 'Gym Leader', true, 'gym_leader', 56, 1, 'Mixed-type specialist. Earth Badge.')
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 103, 55, 1, '["Psychic", "Leaf Storm", "Trick Room", "Hypnosis"]'::jsonb, 'Chlorophyll', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 59, 54, 2, '["Flare Blitz", "ExtremeSpeed", "Crunch", "Iron Tail"]'::jsonb, 'Intimidate', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 68, 56, 3, '["Cross Chop", "Stone Edge", "Earthquake", "Scary Face"]'::jsonb, 'No Guard', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 130, 52, 4, '["Waterfall", "Ice Fang", "Dragon Dance", "Thrash"]'::jsonb, 'Intimidate', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 18, 56, 5, '["Air Slash", "Return", "Mirror Move", "Whirlwind"]'::jsonb, 'Keen Eye', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 112, 56, 6, '["Earthquake", "Megahorn", "Rock Wrecker", "Payback"]'::jsonb, 'Lightning Rod', NULL, NULL);
END $$;

-- Update total_routes count
UPDATE public.games SET total_routes = 90 WHERE id = 'd0e1f2a3-b4c5-6789-de90-123456789012';
