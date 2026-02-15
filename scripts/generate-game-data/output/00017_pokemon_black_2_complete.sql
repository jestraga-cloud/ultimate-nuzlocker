-- ===========================================
-- POKEMON BLACK 2: COMPLETE GAME DATA
-- Official Pokemon Game
-- Gen 5, Unova region
-- ===========================================
-- Game ID: b4c5d6e7-f8a9-0123-b456-789012345678
-- ===========================================

-- STEP 1: Insert the game
INSERT INTO public.games (id, slug, name, generation, region, base_game_slug, is_romhack, sprite_url, total_routes, description)
VALUES (
  'b4c5d6e7-f8a9-0123-b456-789012345678',
  'pokemon-black-2',
  'Pokemon Black 2',
  5,
  'Unova',
  NULL,
  false,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/646.png',
  62,
  'Pokemon Black 2 Version for Nintendo DS. A direct sequel set 2 years after Black/White. Features Black Kyurem.'
);

-- ===========================================
-- STEP 2: ALL ROUTES (62 total)
-- ===========================================

INSERT INTO public.routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items, notes) VALUES
('b4c5d6e7-f8a9-0123-b456-789012345678', 'Aspertia City', 'aspertia-city', 1, 'city', true, true, false, 'Starting city. Gym Leader Cheren. Normal-type.'),
('b4c5d6e7-f8a9-0123-b456-789012345678', 'Route 19', 'route-19', 2, 'route', true, true, false, NULL),
('b4c5d6e7-f8a9-0123-b456-789012345678', 'Floccesy Town', 'floccesy-town', 3, 'city', true, false, false, NULL),
('b4c5d6e7-f8a9-0123-b456-789012345678', 'Floccesy Ranch', 'floccesy-ranch', 4, 'route', true, true, false, NULL),
('b4c5d6e7-f8a9-0123-b456-789012345678', 'Route 20', 'route-20', 5, 'route', true, true, false, NULL),
('b4c5d6e7-f8a9-0123-b456-789012345678', 'Virbank City', 'virbank-city', 6, 'city', true, true, false, 'Gym Leader Roxie. Poison-type specialist.'),
('b4c5d6e7-f8a9-0123-b456-789012345678', 'Virbank Complex', 'virbank-complex', 7, 'building', true, true, false, NULL),
('b4c5d6e7-f8a9-0123-b456-789012345678', 'Castelia City', 'castelia-city', 8, 'city', false, true, true, 'Gym Leader Burgh. Bug-type specialist.'),
('b4c5d6e7-f8a9-0123-b456-789012345678', 'Castelia Sewers', 'castelia-sewers', 9, 'cave', true, true, false, NULL),
('b4c5d6e7-f8a9-0123-b456-789012345678', 'Route 4', 'route-4', 10, 'route', true, true, false, NULL),
('b4c5d6e7-f8a9-0123-b456-789012345678', 'Desert Resort', 'desert-resort', 11, 'route', true, true, false, NULL),
('b4c5d6e7-f8a9-0123-b456-789012345678', 'Relic Castle', 'relic-castle', 12, 'cave', true, false, true, NULL),
('b4c5d6e7-f8a9-0123-b456-789012345678', 'Nimbasa City', 'nimbasa-city', 13, 'city', false, true, false, 'Gym Leader Elesa. Electric-type specialist.'),
('b4c5d6e7-f8a9-0123-b456-789012345678', 'Route 5', 'route-5', 14, 'route', true, true, false, NULL),
('b4c5d6e7-f8a9-0123-b456-789012345678', 'Driftveil Drawbridge', 'driftveil-drawbridge', 15, 'route', true, false, false, 'Ducklett wing shadows.'),
('b4c5d6e7-f8a9-0123-b456-789012345678', 'Driftveil City', 'driftveil-city', 16, 'city', false, true, false, 'Gym Leader Clay. Ground-type specialist.'),
('b4c5d6e7-f8a9-0123-b456-789012345678', 'Relic Passage', 'relic-passage', 17, 'cave', true, false, true, NULL),
('b4c5d6e7-f8a9-0123-b456-789012345678', 'Route 6', 'route-6', 18, 'route', true, true, false, NULL),
('b4c5d6e7-f8a9-0123-b456-789012345678', 'Chargestone Cave', 'chargestone-cave', 19, 'cave', true, true, true, NULL),
('b4c5d6e7-f8a9-0123-b456-789012345678', 'Mistralton City', 'mistralton-city', 20, 'city', false, true, false, 'Gym Leader Skyla. Flying-type specialist.'),
('b4c5d6e7-f8a9-0123-b456-789012345678', 'Mistralton Cave', 'mistralton-cave', 21, 'cave', true, false, true, NULL),
('b4c5d6e7-f8a9-0123-b456-789012345678', 'Route 7', 'route-7', 22, 'route', true, true, false, NULL),
('b4c5d6e7-f8a9-0123-b456-789012345678', 'Celestial Tower', 'celestial-tower', 23, 'building', true, true, false, NULL),
('b4c5d6e7-f8a9-0123-b456-789012345678', 'Lentimas Town', 'lentimas-town', 24, 'city', false, false, false, NULL),
('b4c5d6e7-f8a9-0123-b456-789012345678', 'Reversal Mountain', 'reversal-mountain', 25, 'cave', true, true, true, NULL),
('b4c5d6e7-f8a9-0123-b456-789012345678', 'Strange House', 'strange-house', 26, 'building', true, false, true, NULL),
('b4c5d6e7-f8a9-0123-b456-789012345678', 'Undella Town', 'undella-town', 27, 'city', true, false, false, NULL),
('b4c5d6e7-f8a9-0123-b456-789012345678', 'Route 13', 'route-13', 28, 'route', true, true, false, NULL),
('b4c5d6e7-f8a9-0123-b456-789012345678', 'Lacunosa Town', 'lacunosa-town', 29, 'city', false, false, false, NULL),
('b4c5d6e7-f8a9-0123-b456-789012345678', 'Route 12', 'route-12', 30, 'route', true, true, false, NULL),
('b4c5d6e7-f8a9-0123-b456-789012345678', 'Village Bridge', 'village-bridge', 31, 'route', true, true, false, NULL),
('b4c5d6e7-f8a9-0123-b456-789012345678', 'Route 11', 'route-11', 32, 'route', true, true, false, NULL),
('b4c5d6e7-f8a9-0123-b456-789012345678', 'Opelucid City', 'opelucid-city', 33, 'city', false, true, false, 'Gym Leader Drayden. Dragon-type specialist.'),
('b4c5d6e7-f8a9-0123-b456-789012345678', 'Route 9', 'route-9', 34, 'route', true, true, false, NULL),
('b4c5d6e7-f8a9-0123-b456-789012345678', 'Humilau City', 'humilau-city', 35, 'city', true, true, false, 'Gym Leader Marlon. Water-type specialist.'),
('b4c5d6e7-f8a9-0123-b456-789012345678', 'Route 22', 'route-22', 36, 'route', true, true, false, NULL),
('b4c5d6e7-f8a9-0123-b456-789012345678', 'Route 21', 'route-21', 37, 'water', true, true, false, NULL),
('b4c5d6e7-f8a9-0123-b456-789012345678', 'Seaside Cave', 'seaside-cave', 38, 'cave', true, true, true, NULL),
('b4c5d6e7-f8a9-0123-b456-789012345678', 'Route 23', 'route-23', 39, 'route', true, true, false, NULL),
('b4c5d6e7-f8a9-0123-b456-789012345678', 'Giant Chasm', 'giant-chasm', 40, 'cave', true, true, true, 'Kyurem encounter.'),
('b4c5d6e7-f8a9-0123-b456-789012345678', 'Victory Road', 'victory-road', 41, 'cave', true, true, true, NULL),
('b4c5d6e7-f8a9-0123-b456-789012345678', 'Pokemon League', 'pokemon-league', 42, 'building', false, true, false, 'Elite Four and Champion Iris.'),
('b4c5d6e7-f8a9-0123-b456-789012345678', 'Route 1', 'route-1', 43, 'route', true, false, false, NULL),
('b4c5d6e7-f8a9-0123-b456-789012345678', 'Route 2', 'route-2', 44, 'route', true, true, false, NULL),
('b4c5d6e7-f8a9-0123-b456-789012345678', 'Route 3', 'route-3', 45, 'route', true, true, false, NULL),
('b4c5d6e7-f8a9-0123-b456-789012345678', 'Dreamyard', 'dreamyard', 46, 'route', true, false, false, NULL),
('b4c5d6e7-f8a9-0123-b456-789012345678', 'Pinwheel Forest', 'pinwheel-forest', 47, 'route', true, false, false, NULL),
('b4c5d6e7-f8a9-0123-b456-789012345678', 'Twist Mountain', 'twist-mountain', 48, 'cave', true, false, true, NULL),
('b4c5d6e7-f8a9-0123-b456-789012345678', 'Dragonspiral Tower', 'dragonspiral-tower', 49, 'building', true, false, false, NULL),
('b4c5d6e7-f8a9-0123-b456-789012345678', 'Moor of Icirrus', 'moor-of-icirrus', 50, 'route', true, false, false, NULL),
('b4c5d6e7-f8a9-0123-b456-789012345678', 'Route 8', 'route-8', 51, 'route', true, true, false, NULL),
('b4c5d6e7-f8a9-0123-b456-789012345678', 'Undella Bay', 'undella-bay', 52, 'water', true, true, false, NULL),
('b4c5d6e7-f8a9-0123-b456-789012345678', 'Route 14', 'route-14', 53, 'route', true, true, false, NULL),
('b4c5d6e7-f8a9-0123-b456-789012345678', 'Abundant Shrine', 'abundant-shrine', 54, 'special', true, false, false, NULL),
('b4c5d6e7-f8a9-0123-b456-789012345678', 'Route 15', 'route-15', 55, 'route', true, true, false, NULL),
('b4c5d6e7-f8a9-0123-b456-789012345678', 'Route 16', 'route-16', 56, 'route', true, true, false, NULL),
('b4c5d6e7-f8a9-0123-b456-789012345678', 'Lostlorn Forest', 'lostlorn-forest', 57, 'route', true, false, false, NULL),
('b4c5d6e7-f8a9-0123-b456-789012345678', 'Route 17', 'route-17', 58, 'water', true, true, false, NULL),
('b4c5d6e7-f8a9-0123-b456-789012345678', 'Route 18', 'route-18', 59, 'route', true, true, false, NULL),
('b4c5d6e7-f8a9-0123-b456-789012345678', 'P2 Laboratory', 'p2-laboratory', 60, 'building', true, false, true, NULL),
('b4c5d6e7-f8a9-0123-b456-789012345678', 'Clay Tunnel', 'clay-tunnel', 61, 'cave', true, false, true, NULL),
('b4c5d6e7-f8a9-0123-b456-789012345678', 'Nature Sanctuary', 'nature-sanctuary', 62, 'special', true, false, false, NULL);

-- ===========================================
-- STEP 3: STARTER POKEMON
-- ===========================================

INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max)
SELECT r.id, 495, 'gift', NULL, 5, 5
FROM public.routes r WHERE r.slug = 'aspertia-city' AND r.game_id = 'b4c5d6e7-f8a9-0123-b456-789012345678';

INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max)
SELECT r.id, 498, 'gift', NULL, 5, 5
FROM public.routes r WHERE r.slug = 'aspertia-city' AND r.game_id = 'b4c5d6e7-f8a9-0123-b456-789012345678';

INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max)
SELECT r.id, 501, 'gift', NULL, 5, 5
FROM public.routes r WHERE r.slug = 'aspertia-city' AND r.game_id = 'b4c5d6e7-f8a9-0123-b456-789012345678';

-- ===========================================
-- STEP 4: ENCOUNTER DATA (822 total)
-- ===========================================

CREATE TEMP TABLE _enc (slug TEXT, dex INT, method TEXT, rate DECIMAL(5,2), lmin INT, lmax INT, cond TEXT, ver_excl TEXT);
INSERT INTO _enc VALUES
('aspertia-city', 118, 'fishing_super', 100.00, 40, 70, NULL, NULL),
('aspertia-city', 119, 'fishing_super', 20.00, 50, 70, NULL, NULL),
('aspertia-city', 495, 'gift', 100.00, 5, 5, NULL, NULL),
('aspertia-city', 498, 'gift', 100.00, 5, 5, NULL, NULL),
('aspertia-city', 501, 'gift', 100.00, 5, 5, NULL, NULL),
('aspertia-city', 550, 'fishing_super', 40.00, 40, 60, NULL, NULL),
('aspertia-city', 550, 'surfing', 100.00, 5, 15, NULL, NULL),
('aspertia-city', 10016, 'fishing_super', 40.00, 40, 60, NULL, NULL),
('aspertia-city', 10016, 'surfing', 100.00, 5, 15, NULL, NULL),
('route-19', 60, 'fishing_super', 60.00, 40, 70, NULL, NULL),
('route-19', 61, 'fishing_super', 55.00, 40, 70, NULL, NULL),
('route-19', 186, 'fishing_super', 5.00, 50, 70, NULL, NULL),
('route-19', 504, 'walking', 150.00, 2, 4, NULL, NULL),
('route-19', 509, 'walking', 50.00, 2, 4, NULL, NULL),
('route-19', 550, 'fishing_super', 40.00, 40, 60, NULL, NULL),
('route-19', 550, 'surfing', 100.00, 5, 15, NULL, NULL),
('route-19', 10016, 'fishing_super', 40.00, 40, 60, NULL, NULL),
('route-19', 10016, 'surfing', 100.00, 5, 15, NULL, NULL),
('floccesy-town', 443, 'gift', 100.00, 1, 1, NULL, NULL),
('floccesy-ranch', 60, 'fishing_super', 120.00, 40, 70, NULL, NULL),
('floccesy-ranch', 61, 'fishing_super', 110.00, 40, 70, NULL, NULL),
('floccesy-ranch', 183, 'surfing', 60.00, 5, 15, NULL, NULL),
('floccesy-ranch', 184, 'surfing', 10.00, 5, 15, NULL, NULL),
('floccesy-ranch', 186, 'fishing_super', 10.00, 50, 70, NULL, NULL),
('floccesy-ranch', 298, 'surfing', 60.00, 5, 15, NULL, NULL),
('floccesy-ranch', 550, 'fishing_super', 80.00, 40, 60, NULL, NULL),
('floccesy-ranch', 550, 'surfing', 140.00, 5, 15, NULL, NULL),
('floccesy-ranch', 10016, 'fishing_super', 80.00, 40, 60, NULL, NULL),
('floccesy-ranch', 10016, 'surfing', 130.00, 5, 15, NULL, NULL),
('floccesy-ranch', 54, 'walking', 10.00, 5, 5, NULL, NULL),
('floccesy-ranch', 179, 'walking', 10.00, 5, 5, NULL, NULL),
('floccesy-ranch', 206, 'walking', 10.00, 5, 5, NULL, NULL),
('floccesy-ranch', 298, 'walking', 20.00, 5, 5, NULL, NULL),
('floccesy-ranch', 447, 'walking', 5.00, 5, 7, NULL, NULL),
('floccesy-ranch', 504, 'walking', 10.00, 5, 5, NULL, NULL),
('floccesy-ranch', 506, 'walking', 40.00, 4, 7, NULL, NULL),
('floccesy-ranch', 519, 'walking', 5.00, 7, 7, NULL, NULL),
('floccesy-ranch', 531, 'walking', 90.00, 4, 7, NULL, NULL),
('route-20', 60, 'fishing_super', 60.00, 40, 70, NULL, NULL),
('route-20', 61, 'fishing_super', 55.00, 40, 70, NULL, NULL),
('route-20', 183, 'surfing', 30.00, 5, 15, NULL, NULL),
('route-20', 184, 'surfing', 5.00, 5, 15, NULL, NULL),
('route-20', 186, 'fishing_super', 5.00, 50, 70, NULL, NULL),
('route-20', 191, 'walking', 50.00, 2, 11, 'Summer', NULL),
('route-20', 191, 'walking', 8.00, 4, 11, 'Spring', NULL),
('route-20', 191, 'walking', 8.00, 4, 11, 'Autumn', NULL),
('route-20', 191, 'walking', 8.00, 4, 11, 'Winter', NULL),
('route-20', 191, 'walking', 2.00, 4, 11, NULL, NULL),
('route-20', 206, 'walking', 10.00, 3, 3, NULL, NULL),
('route-20', 298, 'surfing', 30.00, 5, 15, NULL, NULL),
('route-20', 504, 'walking', 40.00, 3, 10, NULL, NULL),
('route-20', 509, 'walking', 28.00, 3, 11, NULL, NULL),
('route-20', 509, 'walking', 2.00, 4, 11, 'Spring', NULL),
('route-20', 509, 'walking', 2.00, 4, 11, 'Autumn', NULL),
('route-20', 509, 'walking', 2.00, 4, 11, 'Winter', NULL),
('route-20', 519, 'walking', 40.00, 2, 9, 'Spring', NULL),
('route-20', 519, 'walking', 40.00, 2, 9, 'Autumn', NULL),
('route-20', 519, 'walking', 40.00, 2, 9, 'Winter', NULL),
('route-20', 519, 'walking', 10.00, 4, 10, NULL, NULL),
('route-20', 531, 'walking', 90.00, 2, 4, NULL, NULL),
('route-20', 540, 'walking', 50.00, 2, 11, NULL, NULL),
('route-20', 543, 'walking', 20.00, 10, 10, NULL, NULL),
('route-20', 550, 'fishing_super', 40.00, 40, 60, NULL, NULL),
('route-20', 550, 'surfing', 70.00, 5, 15, NULL, NULL),
('route-20', 10016, 'fishing_super', 40.00, 40, 60, NULL, NULL),
('route-20', 10016, 'surfing', 65.00, 5, 15, NULL, NULL),
('virbank-city', 98, 'fishing_super', 80.00, 40, 60, NULL, NULL),
('virbank-city', 99, 'fishing_super', 20.00, 50, 70, NULL, NULL),
('virbank-city', 211, 'fishing_super', 5.00, 50, 70, NULL, NULL),
('virbank-city', 456, 'fishing_super', 55.00, 40, 70, NULL, NULL),
('virbank-city', 457, 'fishing_super', 40.00, 40, 60, NULL, NULL),
('virbank-city', 592, 'surfing', 100.00, 5, 15, NULL, NULL),
('virbank-city', 593, 'surfing', 5.00, 5, 15, NULL, NULL),
('virbank-city', 594, 'surfing', 95.00, 5, 15, NULL, NULL),
('virbank-complex', 81, 'walking', 65.00, 10, 13, NULL, NULL),
('virbank-complex', 98, 'fishing_super', 80.00, 40, 60, NULL, NULL),
('virbank-complex', 99, 'fishing_super', 20.00, 50, 70, NULL, NULL),
('virbank-complex', 211, 'fishing_super', 5.00, 50, 70, NULL, NULL),
('virbank-complex', 240, 'walking', 65.00, 10, 13, NULL, NULL),
('virbank-complex', 456, 'fishing_super', 55.00, 40, 70, NULL, NULL),
('virbank-complex', 457, 'fishing_super', 40.00, 40, 60, NULL, NULL),
('virbank-complex', 504, 'walking', 65.00, 10, 14, NULL, NULL),
('virbank-complex', 519, 'walking', 35.00, 10, 13, NULL, NULL),
('virbank-complex', 531, 'walking', 200.00, 10, 13, NULL, NULL),
('virbank-complex', 592, 'surfing', 100.00, 5, 15, NULL, NULL),
('virbank-complex', 593, 'surfing', 5.00, 5, 15, NULL, NULL),
('virbank-complex', 594, 'surfing', 95.00, 5, 15, NULL, NULL),
('virbank-complex', 58, 'walking', 40.00, 11, 14, NULL, NULL),
('virbank-complex', 109, 'walking', 30.00, 10, 14, NULL, NULL),
('castelia-sewers', 19, 'walking', 45.00, 14, 17, NULL, NULL),
('castelia-sewers', 41, 'walking', 45.00, 14, 17, NULL, NULL),
('castelia-sewers', 88, 'fishing_super', 180.00, 40, 70, NULL, NULL),
('castelia-sewers', 88, 'surfing', 195.00, 5, 20, NULL, NULL),
('castelia-sewers', 88, 'walking', 10.00, 15, 17, NULL, NULL),
('castelia-sewers', 89, 'fishing_super', 20.00, 50, 70, NULL, NULL),
('castelia-sewers', 89, 'surfing', 5.00, 5, 20, NULL, NULL),
('route-4', 211, 'fishing_super', 45.00, 40, 70, NULL, NULL),
('route-4', 366, 'fishing_super', 40.00, 40, 60, NULL, NULL),
('route-4', 367, 'fishing_super', 5.00, 50, 70, NULL, NULL),
('route-4', 369, 'fishing_super', 15.00, 50, 70, NULL, NULL),
('route-4', 456, 'fishing_super', 55.00, 40, 70, NULL, NULL),
('route-4', 457, 'fishing_super', 40.00, 40, 60, NULL, NULL),
('route-4', 551, 'walking', 35.00, 14, 17, NULL, NULL),
('route-4', 554, 'walking', 35.00, 14, 17, NULL, NULL),
('route-4', 559, 'walking', 5.00, 17, 17, NULL, NULL),
('route-4', 568, 'walking', 25.00, 14, 17, NULL, NULL),
('route-4', 592, 'surfing', 100.00, 5, 15, NULL, NULL),
('route-4', 593, 'surfing', 5.00, 5, 20, NULL, NULL),
('route-4', 594, 'surfing', 95.00, 5, 20, NULL, NULL),
('route-4', 630, 'static', 100.00, 25, 25, NULL, NULL),
('desert-resort', 27, 'walking', 25.00, 19, 20, NULL, NULL),
('desert-resort', 551, 'walking', 60.00, 18, 19, NULL, NULL),
('desert-resort', 554, 'walking', 50.00, 18, 19, NULL, NULL),
('desert-resort', 556, 'walking', 20.00, 19, 19, NULL, NULL),
('desert-resort', 557, 'walking', 20.00, 19, 21, NULL, NULL),
('desert-resort', 559, 'walking', 10.00, 19, 19, NULL, NULL),
('desert-resort', 328, 'walking', 5.00, 21, 21, NULL, NULL),
('desert-resort', 561, 'walking', 10.00, 19, 19, NULL, NULL),
('relic-castle', 27, 'walking', 20.00, 19, 20, NULL, NULL),
('relic-castle', 551, 'walking', 40.00, 18, 21, NULL, NULL),
('relic-castle', 562, 'walking', 40.00, 18, 21, NULL, NULL),
('route-5', 510, 'walking', 40.00, 22, 26, NULL, NULL),
('route-5', 531, 'walking', 85.00, 21, 24, NULL, NULL),
('route-5', 568, 'walking', 40.00, 21, 25, NULL, NULL),
('route-5', 572, 'walking', 60.00, 21, 26, NULL, NULL),
('route-5', 573, 'walking', 5.00, 24, 24, NULL, NULL),
('route-5', 574, 'walking', 60.00, 21, 26, NULL, NULL),
('route-5', 587, 'walking', 10.00, 22, 22, NULL, NULL),
('relic-passage', 19, 'walking', 10.00, 17, 17, NULL, NULL),
('relic-passage', 95, 'walking', 75.00, 16, 30, NULL, NULL),
('relic-passage', 524, 'walking', 34.00, 16, 18, NULL, NULL),
('relic-passage', 527, 'walking', 98.00, 16, 30, NULL, NULL),
('relic-passage', 529, 'walking', 240.00, 16, 30, NULL, NULL),
('relic-passage', 532, 'walking', 20.00, 17, 18, NULL, NULL),
('relic-passage', 20, 'walking', 10.00, 29, 29, NULL, NULL),
('relic-passage', 60, 'fishing_super', 60.00, 40, 70, NULL, NULL),
('relic-passage', 61, 'fishing_super', 55.00, 40, 70, NULL, NULL),
('relic-passage', 62, 'fishing_super', 5.00, 50, 70, NULL, NULL),
('relic-passage', 183, 'surfing', 90.00, 10, 30, NULL, NULL),
('relic-passage', 184, 'surfing', 5.00, 10, 30, NULL, NULL),
('relic-passage', 525, 'walking', 73.00, 27, 30, NULL, NULL),
('relic-passage', 533, 'walking', 40.00, 28, 30, NULL, NULL),
('relic-passage', 550, 'fishing_super', 40.00, 40, 60, NULL, NULL),
('relic-passage', 550, 'surfing', 70.00, 10, 30, NULL, NULL),
('relic-passage', 10016, 'fishing_super', 40.00, 40, 60, NULL, NULL),
('relic-passage', 10016, 'surfing', 35.00, 10, 30, NULL, NULL),
('route-6', 60, 'fishing_super', 60.00, 40, 70, NULL, NULL),
('route-6', 61, 'fishing_super', 55.00, 40, 70, NULL, NULL),
('route-6', 183, 'walking', 10.00, 25, 28, NULL, NULL),
('route-6', 183, 'surfing', 90.00, 10, 30, NULL, NULL),
('route-6', 184, 'walking', 5.00, 26, 26, NULL, NULL),
('route-6', 184, 'surfing', 5.00, 10, 30, NULL, NULL),
('route-6', 186, 'fishing_super', 5.00, 50, 70, NULL, NULL),
('route-6', 206, 'walking', 10.00, 25, 25, NULL, NULL),
('route-6', 351, 'walking', 5.00, 26, 26, NULL, NULL),
('route-6', 520, 'walking', 30.00, 26, 29, NULL, NULL),
('route-6', 521, 'walking', 5.00, 26, 26, NULL, NULL),
('route-6', 531, 'walking', 50.00, 23, 25, NULL, NULL),
('route-6', 541, 'walking', 20.00, 26, 29, NULL, NULL),
('route-6', 542, 'walking', 5.00, 26, 26, NULL, NULL),
('route-6', 550, 'fishing_super', 40.00, 40, 60, NULL, NULL),
('route-6', 550, 'surfing', 70.00, 10, 25, NULL, NULL),
('route-6', 585, 'walking', 60.00, 23, 28, NULL, NULL),
('route-6', 587, 'walking', 20.00, 24, 25, NULL, NULL),
('route-6', 588, 'walking', 10.00, 23, 26, NULL, NULL),
('route-6', 590, 'walking', 20.00, 26, 29, NULL, NULL),
('route-6', 590, 'static', 300.00, 29, 29, NULL, NULL),
('route-6', 616, 'walking', 50.00, 23, 29, NULL, NULL),
('route-6', 10016, 'fishing_super', 40.00, 40, 60, NULL, NULL),
('route-6', 10016, 'surfing', 35.00, 10, 30, NULL, NULL),
('chargestone-cave', 299, 'walking', 30.00, 27, 30, NULL, NULL),
('chargestone-cave', 525, 'walking', 15.00, 25, 28, NULL, NULL),
('chargestone-cave', 529, 'walking', 300.00, 25, 31, NULL, NULL),
('chargestone-cave', 595, 'walking', 114.00, 25, 31, NULL, NULL),
('chargestone-cave', 597, 'walking', 60.00, 26, 31, NULL, NULL),
('chargestone-cave', 599, 'walking', 69.00, 26, 31, NULL, NULL),
('chargestone-cave', 602, 'walking', 12.00, 28, 31, NULL, NULL),
('mistralton-cave', 304, 'walking', 20.00, 29, 30, NULL, NULL),
('mistralton-cave', 525, 'walking', 30.00, 27, 28, NULL, NULL),
('mistralton-cave', 527, 'walking', 30.00, 27, 28, NULL, NULL),
('mistralton-cave', 529, 'walking', 100.00, 27, 30, NULL, NULL),
('mistralton-cave', 610, 'walking', 20.00, 29, 30, NULL, NULL),
('route-7', 335, 'walking', 10.00, 32, 35, NULL, NULL),
('route-7', 336, 'walking', 10.00, 32, 35, NULL, NULL),
('route-7', 505, 'walking', 20.00, 31, 34, NULL, NULL),
('route-7', 505, 'walking', 10.00, 33, 36, 'Spring', NULL),
('route-7', 505, 'walking', 10.00, 33, 36, 'Summer', NULL),
('route-7', 505, 'walking', 10.00, 33, 36, 'Autumn', NULL),
('route-7', 520, 'walking', 60.00, 30, 35, 'Spring', NULL),
('route-7', 520, 'walking', 60.00, 30, 35, 'Summer', NULL),
('route-7', 520, 'walking', 60.00, 30, 35, 'Autumn', NULL),
('route-7', 520, 'walking', 20.00, 30, 33, 'Winter', NULL),
('route-7', 521, 'walking', 5.00, 33, 33, NULL, NULL),
('route-7', 523, 'walking', 40.00, 31, 36, NULL, NULL),
('route-7', 531, 'walking', 85.00, 30, 33, NULL, NULL),
('route-7', 585, 'walking', 40.00, 30, 33, NULL, NULL),
('route-7', 587, 'walking', 10.00, 31, 31, NULL, NULL),
('route-7', 590, 'walking', 10.00, 33, 36, NULL, NULL),
('route-7', 590, 'static', 200.00, 36, 36, NULL, NULL),
('route-7', 613, 'walking', 50.00, 30, 36, 'Winter', NULL),
('celestial-tower', 607, 'walking', 285.00, 27, 33, NULL, NULL),
('celestial-tower', 42, 'walking', 35.00, 31, 33, NULL, NULL),
('celestial-tower', 605, 'walking', 80.00, 30, 33, NULL, NULL),
('celestial-tower', 481, 'static', 100.00, 65, 65, 'story-progress-juniper-cave-of-being', NULL),
('reversal-mountain', 485, 'static', 100.00, 68, 68, NULL, NULL),
('strange-house', 20, 'walking', 30.00, 32, 33, NULL, NULL),
('strange-house', 42, 'walking', 30.00, 32, 33, NULL, NULL),
('strange-house', 354, 'walking', 30.00, 32, 34, NULL, NULL),
('strange-house', 574, 'walking', 40.00, 31, 31, NULL, NULL),
('strange-house', 575, 'walking', 20.00, 33, 34, NULL, NULL),
('strange-house', 607, 'walking', 50.00, 31, 33, NULL, NULL),
('undella-town', 90, 'fishing_super', 95.00, 40, 70, NULL, NULL),
('undella-town', 91, 'fishing_super', 5.00, 50, 70, NULL, NULL),
('undella-town', 120, 'surfing', 90.00, 25, 40, NULL, NULL),
('undella-town', 121, 'surfing', 5.00, 30, 40, NULL, NULL),
('undella-town', 370, 'fishing_super', 100.00, 40, 70, NULL, NULL),
('undella-town', 550, 'surfing', 5.00, 30, 40, NULL, NULL),
('undella-town', 592, 'surfing', 65.00, 25, 40, NULL, NULL),
('undella-town', 593, 'surfing', 30.00, 25, 40, NULL, NULL),
('undella-town', 10016, 'surfing', 5.00, 30, 40, NULL, NULL),
('route-13', 90, 'fishing_super', 95.00, 40, 70, NULL, NULL),
('route-13', 91, 'fishing_super', 5.00, 50, 70, NULL, NULL),
('route-13', 114, 'walking', 50.00, 34, 41, NULL, NULL),
('route-13', 120, 'surfing', 90.00, 25, 40, NULL, NULL),
('route-13', 121, 'surfing', 5.00, 30, 40, NULL, NULL),
('route-13', 279, 'walking', 50.00, 34, 41, NULL, NULL),
('route-13', 337, 'walking', 20.00, 36, 40, NULL, NULL),
('route-13', 338, 'walking', 20.00, 36, 40, NULL, NULL),
('route-13', 359, 'walking', 30.00, 35, 41, NULL, NULL),
('route-13', 370, 'fishing_super', 100.00, 40, 70, NULL, NULL),
('route-13', 426, 'walking', 30.00, 34, 39, NULL, NULL),
('route-13', 465, 'walking', 5.00, 37, 37, NULL, NULL),
('route-13', 531, 'walking', 85.00, 34, 37, NULL, NULL),
('route-13', 550, 'surfing', 5.00, 30, 40, NULL, NULL),
('route-13', 587, 'walking', 10.00, 35, 35, NULL, NULL),
('route-13', 592, 'surfing', 65.00, 25, 40, NULL, NULL),
('route-13', 593, 'surfing', 30.00, 25, 40, NULL, NULL),
('route-13', 638, 'static', 100.00, 45, 45, NULL, NULL),
('route-13', 638, 'static', 100.00, 65, 65, 'special-encounter-couldnt-capture-before', NULL),
('route-13', 10016, 'surfing', 5.00, 30, 40, NULL, NULL),
('route-12', 206, 'walking', 10.00, 36, 36, NULL, NULL),
('route-12', 214, 'walking', 30.00, 36, 42, NULL, NULL),
('route-12', 315, 'walking', 50.00, 35, 41, NULL, NULL),
('route-12', 407, 'walking', 5.00, 38, 38, NULL, NULL),
('route-12', 415, 'walking', 40.00, 35, 39, NULL, NULL),
('route-12', 416, 'walking', 5.00, 38, 38, NULL, NULL),
('route-12', 520, 'walking', 50.00, 36, 42, NULL, NULL),
('route-12', 521, 'walking', 5.00, 38, 38, NULL, NULL),
('route-12', 531, 'walking', 60.00, 35, 37, NULL, NULL),
('route-12', 540, 'walking', 30.00, 36, 42, NULL, NULL),
('route-12', 542, 'walking', 5.00, 38, 38, NULL, NULL),
('route-12', 587, 'walking', 10.00, 36, 36, NULL, NULL),
('village-bridge', 55, 'walking', 70.00, 36, 42, NULL, NULL),
('village-bridge', 131, 'surfing', 5.00, 30, 40, NULL, NULL),
('village-bridge', 183, 'walking', 70.00, 36, 42, NULL, NULL),
('village-bridge', 183, 'surfing', 90.00, 25, 40, NULL, NULL),
('village-bridge', 184, 'walking', 5.00, 39, 39, NULL, NULL),
('village-bridge', 184, 'surfing', 5.00, 30, 40, NULL, NULL),
('village-bridge', 206, 'walking', 10.00, 37, 37, NULL, NULL),
('village-bridge', 318, 'fishing_super', 100.00, 40, 70, NULL, NULL),
('village-bridge', 319, 'fishing_super', 20.00, 50, 70, NULL, NULL),
('village-bridge', 335, 'walking', 30.00, 37, 43, NULL, NULL),
('village-bridge', 336, 'walking', 30.00, 37, 43, NULL, NULL),
('village-bridge', 531, 'walking', 75.00, 36, 39, NULL, NULL),
('village-bridge', 550, 'fishing_super', 40.00, 40, 60, NULL, NULL),
('village-bridge', 550, 'surfing', 70.00, 25, 40, NULL, NULL),
('village-bridge', 587, 'walking', 10.00, 37, 37, NULL, NULL),
('village-bridge', 10016, 'fishing_super', 40.00, 40, 60, NULL, NULL),
('village-bridge', 10016, 'surfing', 30.00, 25, 40, NULL, NULL),
('route-11', 55, 'walking', 40.00, 36, 40, NULL, NULL),
('route-11', 118, 'fishing_super', 100.00, 40, 60, NULL, NULL),
('route-11', 119, 'fishing_super', 20.00, 50, 70, NULL, NULL),
('route-11', 183, 'walking', 20.00, 36, 40, NULL, NULL),
('route-11', 184, 'walking', 5.00, 39, 39, NULL, NULL),
('route-11', 207, 'walking', 30.00, 37, 43, NULL, NULL),
('route-11', 335, 'walking', 20.00, 38, 42, NULL, NULL),
('route-11', 336, 'walking', 20.00, 38, 42, NULL, NULL),
('route-11', 418, 'surfing', 90.00, 25, 40, NULL, NULL),
('route-11', 419, 'surfing', 10.00, 30, 40, NULL, NULL),
('route-11', 472, 'walking', 5.00, 39, 39, NULL, NULL),
('route-11', 531, 'walking', 80.00, 36, 39, NULL, NULL),
('route-11', 550, 'fishing_super', 40.00, 40, 50, NULL, NULL),
('route-11', 550, 'surfing', 70.00, 25, 40, NULL, NULL),
('route-11', 587, 'walking', 10.00, 37, 37, NULL, NULL),
('route-11', 588, 'walking', 10.00, 36, 40, NULL, NULL),
('route-11', 591, 'walking', 10.00, 37, 41, NULL, NULL),
('route-11', 591, 'static', 200.00, 47, 47, NULL, NULL),
('route-11', 616, 'walking', 50.00, 36, 43, NULL, NULL),
('route-11', 640, 'static', 100.00, 45, 45, NULL, NULL),
('route-11', 640, 'static', 100.00, 65, 65, 'special-encounter-couldnt-capture-before', NULL),
('route-11', 10016, 'fishing_super', 40.00, 40, 60, NULL, NULL),
('route-11', 10016, 'surfing', 30.00, 25, 40, NULL, NULL),
('route-9', 89, 'walking', 10.00, 40, 44, NULL, NULL),
('route-9', 510, 'walking', 20.00, 40, 44, NULL, NULL),
('route-9', 531, 'walking', 80.00, 37, 40, NULL, NULL),
('route-9', 569, 'walking', 30.00, 38, 44, NULL, NULL),
('route-9', 572, 'walking', 60.00, 37, 43, NULL, NULL),
('route-9', 573, 'walking', 5.00, 40, 40, NULL, NULL),
('route-9', 575, 'walking', 50.00, 37, 43, NULL, NULL),
('route-9', 576, 'walking', 5.00, 40, 40, NULL, NULL),
('route-9', 587, 'walking', 10.00, 38, 38, NULL, NULL),
('route-9', 624, 'walking', 30.00, 38, 44, NULL, NULL),
('humilau-city', 90, 'fishing_super', 95.00, 40, 70, NULL, NULL),
('humilau-city', 91, 'fishing_super', 5.00, 50, 70, NULL, NULL),
('humilau-city', 120, 'surfing', 30.00, 30, 45, NULL, NULL),
('humilau-city', 121, 'surfing', 5.00, 35, 45, NULL, NULL),
('humilau-city', 222, 'surfing', 30.00, 35, 45, NULL, NULL),
('humilau-city', 370, 'fishing_super', 100.00, 40, 70, NULL, NULL),
('humilau-city', 550, 'surfing', 5.00, 35, 45, NULL, NULL),
('humilau-city', 592, 'surfing', 65.00, 30, 45, NULL, NULL),
('humilau-city', 593, 'surfing', 60.00, 35, 45, NULL, NULL),
('humilau-city', 10016, 'surfing', 5.00, 35, 45, NULL, NULL),
('route-22', 55, 'walking', 20.00, 40, 45, NULL, NULL),
('route-22', 118, 'fishing_super', 100.00, 40, 70, NULL, NULL),
('route-22', 119, 'fishing_super', 20.00, 50, 70, NULL, NULL),
('route-22', 183, 'walking', 20.00, 40, 47, NULL, NULL),
('route-22', 183, 'surfing', 90.00, 15, 40, NULL, NULL),
('route-22', 184, 'walking', 5.00, 42, 42, NULL, NULL),
('route-22', 184, 'surfing', 5.00, 25, 45, NULL, NULL),
('route-22', 225, 'walking', 10.00, 39, 44, NULL, NULL),
('route-22', 279, 'walking', 20.00, 40, 45, NULL, NULL),
('route-22', 337, 'walking', 20.00, 41, 46, NULL, NULL),
('route-22', 338, 'walking', 20.00, 41, 46, NULL, NULL),
('route-22', 531, 'walking', 85.00, 39, 42, NULL, NULL),
('route-22', 550, 'fishing_super', 40.00, 40, 60, NULL, NULL),
('route-22', 550, 'surfing', 70.00, 15, 40, NULL, NULL),
('route-22', 587, 'walking', 10.00, 40, 40, NULL, NULL),
('route-22', 591, 'walking', 40.00, 39, 44, NULL, NULL),
('route-22', 591, 'static', 200.00, 47, 47, NULL, NULL),
('route-22', 619, 'walking', 50.00, 39, 47, NULL, NULL),
('route-22', 639, 'static', 100.00, 45, 45, NULL, NULL),
('route-22', 639, 'static', 100.00, 65, 65, 'special-encounter-couldnt-capture-before', NULL),
('route-22', 10016, 'fishing_super', 40.00, 40, 60, NULL, NULL),
('route-22', 10016, 'surfing', 35.00, 15, 45, NULL, NULL),
('route-21', 223, 'fishing_super', 95.00, 40, 70, NULL, NULL),
('route-21', 223, 'surfing', 5.00, 35, 45, NULL, NULL),
('route-21', 224, 'fishing_super', 5.00, 50, 70, NULL, NULL),
('route-21', 226, 'surfing', 5.00, 35, 45, NULL, NULL),
('route-21', 370, 'fishing_super', 100.00, 40, 70, NULL, NULL),
('route-21', 458, 'surfing', 30.00, 30, 45, NULL, NULL),
('route-21', 592, 'surfing', 65.00, 30, 45, NULL, NULL),
('route-21', 593, 'surfing', 60.00, 30, 45, NULL, NULL),
('route-21', 594, 'surfing', 35.00, 30, 45, NULL, NULL),
('seaside-cave', 55, 'walking', 55.00, 34, 40, NULL, NULL),
('seaside-cave', 86, 'surfing', 90.00, 25, 40, NULL, NULL),
('seaside-cave', 86, 'walking', 10.00, 35, 35, NULL, NULL),
('seaside-cave', 87, 'surfing', 10.00, 30, 40, NULL, NULL),
('seaside-cave', 90, 'fishing_super', 95.00, 40, 70, NULL, NULL),
('seaside-cave', 91, 'fishing_super', 5.00, 50, 70, NULL, NULL),
('seaside-cave', 370, 'fishing_super', 100.00, 40, 70, NULL, NULL),
('seaside-cave', 525, 'walking', 50.00, 35, 42, NULL, NULL),
('seaside-cave', 527, 'walking', 70.00, 34, 41, NULL, NULL),
('seaside-cave', 530, 'walking', 200.00, 34, 42, NULL, NULL),
('seaside-cave', 558, 'static', 100.00, 42, 42, NULL, NULL),
('seaside-cave', 592, 'surfing', 70.00, 25, 40, NULL, NULL),
('seaside-cave', 593, 'surfing', 30.00, 25, 40, NULL, NULL),
('seaside-cave', 602, 'walking', 5.00, 37, 37, NULL, NULL),
('seaside-cave', 213, 'walking', 5.00, 41, 41, NULL, NULL),
('seaside-cave', 603, 'walking', 5.00, 42, 42, NULL, NULL),
('route-23', 55, 'walking', 20.00, 50, 55, NULL, NULL),
('route-23', 60, 'fishing_super', 60.00, 40, 70, NULL, NULL),
('route-23', 61, 'fishing_super', 55.00, 40, 70, NULL, NULL),
('route-23', 62, 'fishing_super', 5.00, 50, 70, NULL, NULL),
('route-23', 207, 'walking', 20.00, 49, 54, NULL, NULL),
('route-23', 418, 'surfing', 90.00, 40, 55, NULL, NULL),
('route-23', 419, 'surfing', 10.00, 45, 55, NULL, NULL),
('route-23', 472, 'walking', 5.00, 51, 51, NULL, NULL),
('route-23', 482, 'static', 100.00, 65, 65, 'story-progress-juniper-cave-of-being', NULL),
('route-23', 531, 'walking', 80.00, 48, 51, NULL, NULL),
('route-23', 538, 'walking', 5.00, 51, 51, NULL, NULL),
('route-23', 539, 'walking', 50.00, 48, 54, NULL, NULL),
('route-23', 550, 'fishing_super', 40.00, 40, 60, NULL, NULL),
('route-23', 550, 'surfing', 70.00, 40, 55, NULL, NULL),
('route-23', 587, 'walking', 10.00, 49, 49, NULL, NULL),
('route-23', 591, 'walking', 20.00, 49, 54, NULL, NULL),
('route-23', 591, 'static', 300.00, 56, 56, NULL, NULL),
('route-23', 619, 'walking', 15.00, 48, 48, NULL, NULL),
('route-23', 620, 'walking', 15.00, 53, 53, NULL, NULL),
('route-23', 626, 'walking', 50.00, 49, 56, NULL, NULL),
('route-23', 629, 'walking', 10.00, 47, 52, NULL, NULL),
('route-23', 10016, 'fishing_super', 40.00, 40, 60, NULL, NULL),
('route-23', 10016, 'surfing', 30.00, 40, 55, NULL, NULL),
('giant-chasm', 35, 'walking', 125.00, 44, 52, NULL, NULL),
('giant-chasm', 36, 'walking', 15.00, 47, 47, NULL, NULL),
('giant-chasm', 114, 'walking', 60.00, 44, 50, NULL, NULL),
('giant-chasm', 225, 'walking', 35.00, 44, 49, NULL, NULL),
('giant-chasm', 279, 'walking', 40.00, 45, 50, NULL, NULL),
('giant-chasm', 337, 'walking', 70.00, 45, 51, NULL, NULL),
('giant-chasm', 338, 'walking', 70.00, 46, 51, NULL, NULL),
('giant-chasm', 465, 'walking', 5.00, 47, 47, NULL, NULL),
('giant-chasm', 531, 'walking', 255.00, 44, 47, NULL, NULL),
('giant-chasm', 583, 'walking', 35.00, 45, 52, NULL, NULL),
('giant-chasm', 584, 'walking', 5.00, 47, 47, NULL, NULL),
('giant-chasm', 60, 'fishing_super', 60.00, 40, 70, NULL, NULL),
('giant-chasm', 61, 'fishing_super', 55.00, 40, 70, NULL, NULL),
('giant-chasm', 62, 'fishing_super', 5.00, 50, 70, NULL, NULL),
('giant-chasm', 86, 'surfing', 90.00, 35, 50, NULL, NULL),
('giant-chasm', 87, 'surfing', 10.00, 40, 50, NULL, NULL),
('giant-chasm', 215, 'walking', 20.00, 44, 44, NULL, NULL),
('giant-chasm', 221, 'walking', 145.00, 44, 51, NULL, NULL),
('giant-chasm', 530, 'walking', 100.00, 44, 47, NULL, NULL),
('giant-chasm', 550, 'fishing_super', 40.00, 40, 60, NULL, NULL),
('giant-chasm', 550, 'surfing', 70.00, 35, 50, NULL, NULL),
('giant-chasm', 10016, 'fishing_super', 40.00, 40, 60, NULL, NULL),
('giant-chasm', 10016, 'surfing', 30.00, 35, 50, NULL, NULL),
('giant-chasm', 132, 'walking', 60.00, 45, 52, NULL, NULL),
('giant-chasm', 375, 'walking', 40.00, 45, 52, NULL, NULL),
('giant-chasm', 376, 'walking', 10.00, 47, 47, NULL, NULL),
('giant-chasm', 473, 'walking', 10.00, 47, 47, NULL, NULL),
('giant-chasm', 646, 'static', 100.00, 70, 70, 'other-captured-reshiram-or-zekrom', NULL),
('victory-road', 60, 'fishing_super', 180.00, 40, 70, NULL, NULL),
('victory-road', 61, 'fishing_super', 165.00, 40, 70, NULL, NULL),
('victory-road', 62, 'fishing_super', 10.00, 50, 70, NULL, NULL),
('victory-road', 183, 'surfing', 180.00, 35, 60, NULL, NULL),
('victory-road', 184, 'surfing', 10.00, 40, 70, NULL, NULL),
('victory-road', 354, 'walking', 70.00, 47, 50, NULL, NULL),
('victory-road', 550, 'fishing_super', 120.00, 40, 60, NULL, NULL),
('victory-road', 550, 'surfing', 210.00, 35, 50, NULL, NULL),
('victory-road', 623, 'walking', 30.00, 48, 50, NULL, NULL),
('victory-road', 10016, 'fishing_super', 120.00, 40, 60, NULL, NULL),
('victory-road', 10016, 'surfing', 100.00, 35, 70, NULL, NULL),
('victory-road', 206, 'walking', 20.00, 49, 49, NULL, NULL),
('victory-road', 315, 'walking', 60.00, 48, 55, NULL, NULL),
('victory-road', 407, 'walking', 5.00, 50, 50, NULL, NULL),
('victory-road', 531, 'walking', 165.00, 47, 50, NULL, NULL),
('victory-road', 546, 'walking', 140.00, 47, 55, NULL, NULL),
('victory-road', 547, 'walking', 5.00, 50, 50, NULL, NULL),
('victory-road', 186, 'fishing_super', 5.00, 50, 70, NULL, NULL),
('victory-road', 334, 'walking', 40.00, 49, 55, NULL, NULL),
('victory-road', 418, 'surfing', 90.00, 35, 50, NULL, NULL),
('victory-road', 419, 'surfing', 10.00, 40, 50, NULL, NULL),
('victory-road', 520, 'walking', 160.00, 47, 55, NULL, NULL),
('victory-road', 521, 'walking', 5.00, 50, 50, NULL, NULL),
('victory-road', 95, 'walking', 80.00, 41, 50, NULL, NULL),
('victory-road', 525, 'walking', 160.00, 41, 50, NULL, NULL),
('victory-road', 530, 'walking', 160.00, 41, 50, NULL, NULL),
('route-1', 39, 'walking', 20.00, 57, 65, NULL, NULL),
('route-1', 40, 'walking', 5.00, 59, 59, NULL, NULL),
('route-1', 206, 'walking', 10.00, 57, 57, NULL, NULL),
('route-1', 349, 'fishing_super', 60.00, 40, 70, NULL, NULL),
('route-1', 350, 'fishing_super', 5.00, 50, 70, NULL, NULL),
('route-1', 505, 'walking', 80.00, 56, 67, NULL, NULL),
('route-1', 507, 'walking', 89.00, 56, 67, NULL, NULL),
('route-1', 508, 'walking', 5.00, 59, 59, NULL, NULL),
('route-1', 531, 'walking', 80.00, 56, 59, NULL, NULL),
('route-1', 550, 'fishing_super', 95.00, 40, 70, NULL, NULL),
('route-1', 550, 'surfing', 100.00, 45, 60, NULL, NULL),
('route-1', 560, 'walking', 11.00, 66, 67, NULL, NULL),
('route-1', 10016, 'fishing_super', 40.00, 40, 60, NULL, NULL),
('route-1', 10016, 'surfing', 100.00, 45, 60, NULL, NULL),
('route-2', 39, 'walking', 10.00, 57, 57, NULL, NULL),
('route-2', 40, 'walking', 5.00, 59, 59, NULL, NULL),
('route-2', 108, 'walking', 10.00, 58, 58, NULL, NULL),
('route-2', 206, 'walking', 10.00, 57, 57, NULL, NULL),
('route-2', 463, 'walking', 5.00, 59, 59, NULL, NULL),
('route-2', 505, 'walking', 30.00, 56, 59, NULL, NULL),
('route-2', 507, 'walking', 30.00, 56, 59, NULL, NULL),
('route-2', 508, 'walking', 5.00, 59, 59, NULL, NULL),
('route-2', 510, 'walking', 20.00, 57, 58, NULL, NULL),
('route-2', 531, 'walking', 75.00, 56, 59, NULL, NULL),
('route-3', 118, 'fishing_super', 100.00, 40, 70, NULL, NULL),
('route-3', 119, 'fishing_super', 20.00, 50, 70, NULL, NULL),
('route-3', 193, 'walking', 20.00, 56, 64, NULL, NULL),
('route-3', 341, 'surfing', 90.00, 45, 60, NULL, NULL),
('route-3', 342, 'surfing', 10.00, 50, 60, NULL, NULL),
('route-3', 469, 'walking', 5.00, 58, 58, NULL, NULL),
('route-3', 505, 'walking', 40.00, 55, 63, NULL, NULL),
('route-3', 507, 'walking', 20.00, 57, 65, NULL, NULL),
('route-3', 508, 'walking', 5.00, 58, 58, NULL, NULL),
('route-3', 509, 'walking', 20.00, 57, 65, NULL, NULL),
('route-3', 520, 'walking', 60.00, 55, 65, NULL, NULL),
('route-3', 521, 'walking', 5.00, 58, 58, NULL, NULL),
('route-3', 523, 'walking', 40.00, 56, 66, NULL, NULL),
('route-3', 531, 'walking', 85.00, 55, 58, NULL, NULL),
('route-3', 550, 'fishing_super', 40.00, 40, 60, NULL, NULL),
('route-3', 550, 'surfing', 70.00, 45, 60, NULL, NULL),
('route-3', 10016, 'fishing_super', 40.00, 40, 60, NULL, NULL),
('route-3', 10016, 'surfing', 30.00, 45, 60, NULL, NULL),
('dreamyard', 20, 'walking', 45.00, 57, 67, NULL, NULL),
('dreamyard', 39, 'walking', 30.00, 57, 65, NULL, NULL),
('dreamyard', 40, 'walking', 5.00, 59, 59, NULL, NULL),
('dreamyard', 42, 'walking', 45.00, 57, 67, NULL, NULL),
('dreamyard', 169, 'walking', 5.00, 59, 59, NULL, NULL),
('dreamyard', 206, 'walking', 10.00, 57, 57, NULL, NULL),
('dreamyard', 381, 'static', 100.00, 68, 68, NULL, NULL),
('dreamyard', 505, 'walking', 60.00, 56, 67, NULL, NULL),
('dreamyard', 510, 'walking', 60.00, 56, 67, NULL, NULL),
('dreamyard', 517, 'walking', 60.00, 57, 66, NULL, NULL),
('dreamyard', 518, 'walking', 5.00, 59, 59, NULL, NULL),
('dreamyard', 531, 'walking', 75.00, 56, 59, NULL, NULL),
('pinwheel-forest', 193, 'walking', 20.00, 55, 63, NULL, NULL),
('pinwheel-forest', 454, 'walking', 20.00, 55, 63, NULL, NULL),
('pinwheel-forest', 469, 'walking', 5.00, 57, 57, NULL, NULL),
('pinwheel-forest', 531, 'walking', 140.00, 54, 64, NULL, NULL),
('pinwheel-forest', 533, 'walking', 80.00, 54, 64, NULL, NULL),
('pinwheel-forest', 536, 'walking', 50.00, 54, 65, NULL, NULL),
('pinwheel-forest', 537, 'walking', 5.00, 57, 57, NULL, NULL),
('pinwheel-forest', 538, 'walking', 5.00, 57, 57, NULL, NULL),
('pinwheel-forest', 539, 'walking', 30.00, 55, 65, NULL, NULL),
('pinwheel-forest', 118, 'fishing_super', 100.00, 35, 70, NULL, NULL),
('pinwheel-forest', 119, 'fishing_super', 20.00, 35, 70, NULL, NULL),
('pinwheel-forest', 183, 'surfing', 90.00, 45, 60, NULL, NULL),
('pinwheel-forest', 184, 'surfing', 5.00, 50, 60, NULL, NULL),
('pinwheel-forest', 288, 'walking', 30.00, 55, 65, NULL, NULL),
('pinwheel-forest', 289, 'walking', 5.00, 57, 57, NULL, NULL),
('pinwheel-forest', 511, 'walking', 10.00, 55, 55, NULL, NULL),
('pinwheel-forest', 513, 'walking', 10.00, 55, 55, NULL, NULL),
('pinwheel-forest', 515, 'walking', 10.00, 55, 55, NULL, NULL),
('pinwheel-forest', 541, 'walking', 50.00, 54, 64, NULL, NULL),
('pinwheel-forest', 544, 'walking', 30.00, 55, 65, NULL, NULL),
('pinwheel-forest', 545, 'walking', 5.00, 57, 57, NULL, NULL),
('pinwheel-forest', 546, 'walking', 90.00, 54, 65, NULL, NULL),
('pinwheel-forest', 547, 'walking', 5.00, 57, 57, NULL, NULL),
('pinwheel-forest', 550, 'fishing_super', 40.00, 40, 60, NULL, NULL),
('pinwheel-forest', 550, 'surfing', 70.00, 45, 60, NULL, NULL),
('pinwheel-forest', 10016, 'fishing_super', 40.00, 35, 60, NULL, NULL),
('pinwheel-forest', 10016, 'surfing', 35.00, 45, 60, NULL, NULL),
('twist-mountain', 95, 'walking', 25.00, 54, 57, NULL, NULL),
('twist-mountain', 208, 'walking', 5.00, 57, 57, NULL, NULL),
('twist-mountain', 525, 'walking', 40.00, 54, 55, 'Spring', NULL),
('twist-mountain', 525, 'walking', 20.00, 54, 54, 'Summer', NULL),
('twist-mountain', 525, 'walking', 40.00, 54, 55, 'Autumn', NULL),
('twist-mountain', 525, 'walking', 20.00, 55, 55, 'Winter', NULL),
('twist-mountain', 527, 'walking', 10.00, 54, 54, NULL, NULL),
('twist-mountain', 530, 'walking', 75.00, 54, 57, NULL, NULL),
('twist-mountain', 533, 'walking', 20.00, 55, 55, 'Summer', NULL),
('twist-mountain', 533, 'walking', 10.00, 55, 55, 'Spring', NULL),
('twist-mountain', 533, 'walking', 10.00, 55, 55, 'Autumn', NULL),
('twist-mountain', 533, 'walking', 10.00, 55, 55, 'Winter', NULL),
('twist-mountain', 614, 'walking', 20.00, 54, 54, 'Winter', NULL),
('twist-mountain', 614, 'walking', 10.00, 56, 56, 'Spring', NULL),
('twist-mountain', 614, 'walking', 10.00, 56, 56, 'Autumn', NULL),
('twist-mountain', 614, 'walking', 5.00, 56, 56, 'Summer', NULL),
('twist-mountain', 615, 'walking', 10.00, 56, 56, 'Winter', NULL),
('twist-mountain', 615, 'walking', 5.00, 57, 57, NULL, NULL),
('twist-mountain', 631, 'walking', 20.00, 55, 56, 'Summer', NULL),
('twist-mountain', 631, 'walking', 5.00, 56, 56, 'Spring', NULL),
('twist-mountain', 631, 'walking', 5.00, 56, 56, 'Autumn', NULL),
('twist-mountain', 631, 'walking', 5.00, 56, 56, 'Winter', NULL),
('twist-mountain', 632, 'walking', 15.00, 56, 57, NULL, NULL),
('twist-mountain', 486, 'static', 100.00, 68, 68, 'other-regirock-regice-registeel-in-party', NULL),
('dragonspiral-tower', 520, 'walking', 105.00, 55, 66, 'Spring', NULL),
('dragonspiral-tower', 520, 'walking', 105.00, 55, 66, 'Summer', NULL),
('dragonspiral-tower', 520, 'walking', 105.00, 55, 66, 'Autumn', NULL),
('dragonspiral-tower', 521, 'walking', 10.00, 57, 58, 'Spring', NULL),
('dragonspiral-tower', 521, 'walking', 10.00, 57, 58, 'Summer', NULL),
('dragonspiral-tower', 521, 'walking', 10.00, 57, 58, 'Autumn', NULL),
('dragonspiral-tower', 531, 'walking', 170.00, 55, 58, NULL, NULL),
('dragonspiral-tower', 583, 'walking', 100.00, 55, 65, 'Winter', NULL),
('dragonspiral-tower', 584, 'walking', 10.00, 57, 58, 'Winter', NULL),
('dragonspiral-tower', 586, 'walking', 30.00, 63, 65, 'Winter', NULL),
('dragonspiral-tower', 586, 'walking', 90.00, 55, 65, NULL, NULL),
('dragonspiral-tower', 586, 'walking', 15.00, 58, 66, 'Spring', NULL),
('dragonspiral-tower', 586, 'walking', 15.00, 58, 66, 'Summer', NULL),
('dragonspiral-tower', 586, 'walking', 15.00, 58, 66, 'Autumn', NULL),
('dragonspiral-tower', 587, 'walking', 20.00, 56, 56, NULL, NULL),
('dragonspiral-tower', 614, 'walking', 60.00, 57, 66, 'Winter', NULL),
('dragonspiral-tower', 619, 'walking', 1.00, 66, 66, 'Winter', NULL),
('dragonspiral-tower', 620, 'walking', 34.00, 58, 66, 'Winter', NULL),
('dragonspiral-tower', 620, 'walking', 95.00, 55, 66, NULL, NULL),
('dragonspiral-tower', 621, 'walking', 5.00, 58, 58, 'Spring', NULL),
('dragonspiral-tower', 621, 'walking', 5.00, 58, 58, 'Summer', NULL),
('dragonspiral-tower', 621, 'walking', 5.00, 58, 58, 'Autumn', NULL),
('dragonspiral-tower', 147, 'fishing_super', 100.00, 40, 70, NULL, NULL),
('dragonspiral-tower', 148, 'fishing_super', 19.00, 50, 70, NULL, NULL),
('dragonspiral-tower', 149, 'fishing_super', 1.00, 50, 70, NULL, NULL),
('dragonspiral-tower', 550, 'fishing_super', 40.00, 40, 60, NULL, NULL),
('dragonspiral-tower', 550, 'surfing', 100.00, 45, 60, NULL, NULL),
('dragonspiral-tower', 621, 'walking', 40.00, 56, 66, NULL, NULL),
('dragonspiral-tower', 10016, 'fishing_super', 40.00, 40, 60, NULL, NULL),
('dragonspiral-tower', 10016, 'surfing', 100.00, 45, 60, NULL, NULL),
('dragonspiral-tower', 623, 'walking', 150.00, 55, 58, NULL, NULL),
('moor-of-icirrus', 339, 'fishing_super', 80.00, 45, 60, NULL, NULL),
('moor-of-icirrus', 339, 'fishing_super', 20.00, 60, 60, 'Spring', NULL),
('moor-of-icirrus', 339, 'fishing_super', 20.00, 60, 60, 'Summer', NULL),
('moor-of-icirrus', 339, 'fishing_super', 20.00, 60, 60, 'Autumn', NULL),
('moor-of-icirrus', 339, 'fishing_super', 20.00, 50, 60, 'Winter', NULL),
('moor-of-icirrus', 340, 'fishing_super', 20.00, 60, 60, 'Spring', NULL),
('moor-of-icirrus', 340, 'fishing_super', 20.00, 60, 60, 'Summer', NULL),
('moor-of-icirrus', 340, 'fishing_super', 20.00, 60, 60, 'Autumn', NULL),
('moor-of-icirrus', 340, 'fishing_super', 20.00, 50, 60, 'Winter', NULL),
('moor-of-icirrus', 453, 'walking', 15.00, 55, 56, 'Spring', NULL),
('moor-of-icirrus', 453, 'walking', 15.00, 55, 56, 'Summer', NULL),
('moor-of-icirrus', 453, 'walking', 15.00, 55, 56, 'Autumn', NULL),
('moor-of-icirrus', 536, 'walking', 40.00, 54, 57, 'Spring', NULL),
('moor-of-icirrus', 536, 'walking', 40.00, 54, 57, 'Summer', NULL),
('moor-of-icirrus', 536, 'walking', 40.00, 54, 57, 'Autumn', NULL),
('moor-of-icirrus', 537, 'surfing', 5.00, 60, 60, 'Spring', NULL),
('moor-of-icirrus', 537, 'surfing', 5.00, 60, 60, 'Summer', NULL),
('moor-of-icirrus', 537, 'surfing', 5.00, 60, 60, 'Autumn', NULL),
('moor-of-icirrus', 537, 'surfing', 5.00, 50, 60, 'Winter', NULL),
('moor-of-icirrus', 588, 'walking', 5.00, 57, 57, 'Spring', NULL),
('moor-of-icirrus', 588, 'walking', 5.00, 57, 57, 'Summer', NULL),
('moor-of-icirrus', 588, 'walking', 5.00, 57, 57, 'Autumn', NULL),
('moor-of-icirrus', 616, 'walking', 20.00, 54, 54, 'Spring', NULL),
('moor-of-icirrus', 616, 'walking', 20.00, 54, 54, 'Summer', NULL),
('moor-of-icirrus', 616, 'walking', 20.00, 54, 54, 'Autumn', NULL),
('moor-of-icirrus', 618, 'fishing_super', 80.00, 45, 60, NULL, NULL),
('moor-of-icirrus', 618, 'surfing', 180.00, 45, 60, NULL, NULL),
('moor-of-icirrus', 618, 'surfing', 15.00, 60, 60, 'Spring', NULL),
('moor-of-icirrus', 618, 'surfing', 15.00, 60, 60, 'Summer', NULL),
('moor-of-icirrus', 618, 'surfing', 15.00, 60, 60, 'Autumn', NULL),
('moor-of-icirrus', 618, 'surfing', 15.00, 50, 60, 'Winter', NULL),
('moor-of-icirrus', 618, 'walking', 20.00, 55, 56, 'Spring', NULL),
('moor-of-icirrus', 618, 'walking', 20.00, 55, 56, 'Summer', NULL),
('moor-of-icirrus', 618, 'walking', 20.00, 55, 56, 'Autumn', NULL),
('route-8', 339, 'fishing_super', 80.00, 45, 60, NULL, NULL),
('route-8', 339, 'fishing_super', 20.00, 60, 60, 'Spring', NULL),
('route-8', 339, 'fishing_super', 20.00, 50, 60, 'Summer', NULL),
('route-8', 339, 'fishing_super', 20.00, 50, 60, 'Autumn', NULL),
('route-8', 339, 'fishing_super', 20.00, 50, 60, 'Winter', NULL),
('route-8', 340, 'fishing_super', 20.00, 60, 60, 'Spring', NULL),
('route-8', 340, 'fishing_super', 20.00, 50, 60, 'Summer', NULL),
('route-8', 340, 'fishing_super', 20.00, 50, 60, 'Autumn', NULL),
('route-8', 340, 'fishing_super', 20.00, 50, 60, 'Winter', NULL),
('route-8', 453, 'walking', 15.00, 55, 56, 'Spring', NULL),
('route-8', 453, 'walking', 15.00, 55, 56, 'Summer', NULL),
('route-8', 453, 'walking', 15.00, 55, 56, 'Autumn', NULL),
('route-8', 536, 'surfing', 60.00, 45, 60, NULL, NULL),
('route-8', 536, 'walking', 40.00, 54, 57, 'Spring', NULL),
('route-8', 536, 'walking', 40.00, 54, 57, 'Summer', NULL),
('route-8', 536, 'walking', 40.00, 54, 57, 'Autumn', NULL),
('route-8', 537, 'surfing', 5.00, 60, 60, 'Spring', NULL),
('route-8', 537, 'surfing', 5.00, 50, 60, 'Summer', NULL),
('route-8', 537, 'surfing', 5.00, 50, 60, 'Autumn', NULL),
('route-8', 537, 'surfing', 5.00, 50, 60, 'Winter', NULL),
('route-8', 588, 'walking', 5.00, 57, 57, 'Spring', NULL),
('route-8', 588, 'walking', 5.00, 57, 57, 'Summer', NULL),
('route-8', 588, 'walking', 5.00, 57, 57, 'Autumn', NULL),
('route-8', 616, 'walking', 20.00, 54, 54, 'Spring', NULL),
('route-8', 616, 'walking', 20.00, 54, 54, 'Summer', NULL),
('route-8', 616, 'walking', 20.00, 54, 54, 'Autumn', NULL),
('route-8', 618, 'fishing_super', 80.00, 45, 60, NULL, NULL),
('route-8', 618, 'surfing', 120.00, 45, 60, NULL, NULL),
('route-8', 618, 'surfing', 15.00, 60, 60, 'Spring', NULL),
('route-8', 618, 'surfing', 15.00, 50, 60, 'Summer', NULL),
('route-8', 618, 'surfing', 15.00, 50, 60, 'Autumn', NULL),
('route-8', 618, 'surfing', 15.00, 50, 60, 'Winter', NULL),
('route-8', 618, 'walking', 20.00, 55, 56, 'Spring', NULL),
('route-8', 618, 'walking', 20.00, 55, 56, 'Summer', NULL),
('route-8', 618, 'walking', 20.00, 55, 56, 'Autumn', NULL),
('undella-bay', 170, 'fishing_super', 100.00, 40, 70, NULL, NULL),
('undella-bay', 171, 'fishing_super', 15.00, 50, 70, NULL, NULL),
('undella-bay', 223, 'fishing_super', 80.00, 40, 60, NULL, NULL),
('undella-bay', 223, 'surfing', 5.00, 30, 40, NULL, NULL),
('undella-bay', 224, 'fishing_super', 5.00, 50, 70, NULL, NULL),
('undella-bay', 226, 'surfing', 5.00, 30, 40, 'Spring', NULL),
('undella-bay', 226, 'surfing', 5.00, 30, 40, 'Summer', NULL),
('undella-bay', 226, 'surfing', 5.00, 30, 40, 'Autumn', NULL),
('undella-bay', 320, 'surfing', 60.00, 25, 40, 'Winter', NULL),
('undella-bay', 320, 'surfing', 30.00, 25, 40, 'Spring', NULL),
('undella-bay', 320, 'surfing', 30.00, 25, 40, 'Summer', NULL),
('undella-bay', 320, 'surfing', 30.00, 25, 40, 'Autumn', NULL),
('undella-bay', 321, 'surfing', 5.00, 30, 40, NULL, NULL),
('undella-bay', 363, 'surfing', 30.00, 25, 40, 'Winter', NULL),
('undella-bay', 364, 'surfing', 30.00, 25, 40, 'Winter', NULL),
('undella-bay', 365, 'surfing', 5.00, 30, 40, 'Winter', NULL),
('undella-bay', 458, 'surfing', 30.00, 25, 40, 'Spring', NULL),
('undella-bay', 458, 'surfing', 30.00, 25, 40, 'Summer', NULL),
('undella-bay', 458, 'surfing', 30.00, 25, 40, 'Autumn', NULL),
('undella-bay', 592, 'surfing', 65.00, 25, 40, NULL, NULL),
('undella-bay', 593, 'surfing', 60.00, 25, 40, 'Spring', NULL),
('undella-bay', 593, 'surfing', 60.00, 25, 40, 'Summer', NULL),
('undella-bay', 593, 'surfing', 60.00, 25, 40, 'Autumn', NULL),
('undella-bay', 593, 'static', 100.00, 40, 40, NULL, NULL),
('route-14', 55, 'walking', 50.00, 34, 39, NULL, NULL),
('route-14', 118, 'fishing_super', 100.00, 40, 70, NULL, NULL),
('route-14', 119, 'fishing_super', 20.00, 50, 70, NULL, NULL),
('route-14', 333, 'walking', 20.00, 33, 33, NULL, NULL),
('route-14', 334, 'walking', 20.00, 36, 40, NULL, NULL),
('route-14', 359, 'walking', 30.00, 34, 40, NULL, NULL),
('route-14', 418, 'surfing', 90.00, 15, 40, NULL, NULL),
('route-14', 419, 'surfing', 10.00, 25, 40, NULL, NULL),
('route-14', 426, 'walking', 30.00, 34, 39, NULL, NULL),
('route-14', 531, 'walking', 90.00, 33, 36, NULL, NULL),
('route-14', 550, 'fishing_super', 40.00, 40, 60, NULL, NULL),
('route-14', 550, 'surfing', 70.00, 15, 35, NULL, NULL),
('route-14', 587, 'walking', 10.00, 34, 34, NULL, NULL),
('route-14', 619, 'walking', 50.00, 33, 39, NULL, NULL),
('route-14', 10016, 'fishing_super', 40.00, 40, 60, NULL, NULL),
('route-14', 10016, 'surfing', 30.00, 15, 40, NULL, NULL),
('abundant-shrine', 37, 'walking', 30.00, 34, 37, NULL, NULL),
('abundant-shrine', 38, 'walking', 5.00, 36, 36, NULL, NULL),
('abundant-shrine', 55, 'walking', 20.00, 34, 38, NULL, NULL),
('abundant-shrine', 118, 'fishing_super', 100.00, 40, 70, NULL, NULL),
('abundant-shrine', 119, 'fishing_super', 20.00, 50, 70, NULL, NULL),
('abundant-shrine', 183, 'walking', 20.00, 34, 38, NULL, NULL),
('abundant-shrine', 183, 'surfing', 90.00, 25, 40, NULL, NULL),
('abundant-shrine', 184, 'surfing', 5.00, 30, 40, NULL, NULL),
('abundant-shrine', 333, 'walking', 20.00, 33, 33, NULL, NULL),
('abundant-shrine', 334, 'walking', 20.00, 36, 40, NULL, NULL),
('abundant-shrine', 436, 'walking', 15.00, 32, 32, NULL, NULL),
('abundant-shrine', 437, 'walking', 10.00, 36, 36, NULL, NULL),
('abundant-shrine', 531, 'walking', 80.00, 33, 36, NULL, NULL),
('abundant-shrine', 546, 'walking', 65.00, 33, 39, NULL, NULL),
('abundant-shrine', 547, 'walking', 5.00, 36, 36, NULL, NULL),
('abundant-shrine', 550, 'fishing_super', 40.00, 40, 60, NULL, NULL),
('abundant-shrine', 550, 'surfing', 70.00, 25, 40, NULL, NULL),
('abundant-shrine', 587, 'walking', 10.00, 34, 34, NULL, NULL),
('abundant-shrine', 10016, 'fishing_super', 40.00, 40, 60, NULL, NULL),
('abundant-shrine', 10016, 'surfing', 35.00, 25, 40, NULL, NULL),
('route-15', 28, 'walking', 60.00, 54, 64, NULL, NULL),
('route-15', 207, 'walking', 50.00, 55, 65, NULL, NULL),
('route-15', 247, 'walking', 30.00, 55, 65, NULL, NULL),
('route-15', 248, 'walking', 5.00, 57, 57, NULL, NULL),
('route-15', 472, 'walking', 5.00, 57, 57, NULL, NULL),
('route-15', 531, 'walking', 75.00, 54, 57, NULL, NULL),
('route-15', 538, 'walking', 5.00, 57, 57, NULL, NULL),
('route-15', 539, 'walking', 40.00, 55, 65, NULL, NULL),
('route-15', 560, 'walking', 20.00, 55, 63, NULL, NULL),
('route-15', 587, 'walking', 10.00, 55, 55, NULL, NULL),
('route-16', 510, 'walking', 40.00, 22, 26, NULL, NULL),
('route-16', 531, 'walking', 85.00, 21, 24, NULL, NULL),
('route-16', 568, 'walking', 40.00, 21, 25, NULL, NULL),
('route-16', 572, 'walking', 60.00, 21, 26, NULL, NULL),
('route-16', 573, 'walking', 5.00, 24, 24, NULL, NULL),
('route-16', 574, 'walking', 60.00, 21, 26, NULL, NULL),
('route-16', 587, 'walking', 10.00, 22, 22, NULL, NULL),
('lostlorn-forest', 60, 'fishing_super', 60.00, 40, 70, NULL, NULL),
('lostlorn-forest', 61, 'fishing_super', 55.00, 40, 70, NULL, NULL),
('lostlorn-forest', 186, 'fishing_super', 5.00, 50, 70, NULL, NULL),
('lostlorn-forest', 214, 'walking', 10.00, 24, 26, NULL, NULL),
('lostlorn-forest', 315, 'walking', 30.00, 23, 26, NULL, NULL),
('lostlorn-forest', 407, 'walking', 5.00, 24, 24, NULL, NULL),
('lostlorn-forest', 415, 'walking', 20.00, 22, 24, NULL, NULL),
('lostlorn-forest', 416, 'walking', 5.00, 24, 24, NULL, NULL),
('lostlorn-forest', 418, 'surfing', 90.00, 10, 30, NULL, NULL),
('lostlorn-forest', 419, 'surfing', 10.00, 10, 30, NULL, NULL),
('lostlorn-forest', 511, 'walking', 10.00, 22, 22, NULL, NULL),
('lostlorn-forest', 513, 'walking', 10.00, 22, 22, NULL, NULL),
('lostlorn-forest', 515, 'walking', 10.00, 22, 22, NULL, NULL),
('lostlorn-forest', 531, 'walking', 40.00, 21, 23, NULL, NULL),
('lostlorn-forest', 541, 'walking', 50.00, 21, 26, NULL, NULL),
('lostlorn-forest', 542, 'walking', 5.00, 24, 24, NULL, NULL),
('lostlorn-forest', 543, 'walking', 20.00, 21, 21, NULL, NULL),
('lostlorn-forest', 544, 'walking', 20.00, 23, 23, NULL, NULL),
('lostlorn-forest', 546, 'walking', 50.00, 21, 26, NULL, NULL),
('lostlorn-forest', 547, 'walking', 5.00, 24, 24, NULL, NULL),
('lostlorn-forest', 550, 'fishing_super', 40.00, 40, 60, NULL, NULL),
('lostlorn-forest', 550, 'surfing', 70.00, 10, 25, NULL, NULL),
('lostlorn-forest', 587, 'walking', 10.00, 22, 22, NULL, NULL),
('lostlorn-forest', 10016, 'fishing_super', 40.00, 40, 60, NULL, NULL),
('lostlorn-forest', 10016, 'surfing', 30.00, 10, 30, NULL, NULL),
('route-17', 116, 'fishing_super', 80.00, 50, 60, NULL, NULL),
('route-17', 117, 'fishing_super', 15.00, 60, 70, NULL, NULL),
('route-17', 230, 'fishing_super', 5.00, 60, 70, NULL, NULL),
('route-17', 456, 'fishing_super', 60.00, 50, 70, NULL, NULL),
('route-17', 457, 'fishing_super', 40.00, 50, 60, NULL, NULL),
('route-17', 592, 'surfing', 100.00, 45, 60, NULL, NULL),
('route-17', 593, 'surfing', 5.00, 50, 60, NULL, NULL),
('route-17', 594, 'surfing', 95.00, 45, 60, NULL, NULL),
('route-18', 116, 'fishing_super', 80.00, 50, 60, NULL, NULL),
('route-18', 117, 'fishing_super', 15.00, 60, 70, NULL, NULL),
('route-18', 206, 'walking', 10.00, 57, 57, NULL, NULL),
('route-18', 222, 'fishing_super', 5.00, 60, 70, NULL, NULL),
('route-18', 230, 'fishing_super', 5.00, 60, 70, NULL, NULL),
('route-18', 357, 'walking', 20.00, 58, 66, NULL, NULL),
('route-18', 455, 'walking', 20.00, 58, 66, NULL, NULL),
('route-18', 456, 'fishing_super', 55.00, 50, 70, NULL, NULL),
('route-18', 457, 'fishing_super', 40.00, 50, 60, NULL, NULL),
('route-18', 505, 'walking', 20.00, 56, 64, NULL, NULL),
('route-18', 531, 'walking', 85.00, 56, 59, NULL, NULL),
('route-18', 538, 'walking', 5.00, 59, 59, NULL, NULL),
('route-18', 539, 'walking', 40.00, 57, 67, NULL, NULL),
('route-18', 558, 'walking', 40.00, 57, 65, NULL, NULL),
('route-18', 560, 'walking', 60.00, 57, 66, NULL, NULL),
('route-18', 592, 'surfing', 100.00, 45, 60, NULL, NULL),
('route-18', 593, 'surfing', 5.00, 50, 60, NULL, NULL),
('route-18', 594, 'surfing', 95.00, 45, 60, NULL, NULL),
('p2-laboratory', 82, 'walking', 15.00, 57, 59, NULL, NULL),
('p2-laboratory', 110, 'walking', 15.00, 57, 58, NULL, NULL),
('p2-laboratory', 116, 'fishing_super', 55.00, 35, 55, NULL, NULL),
('p2-laboratory', 117, 'fishing_super', 40.00, 35, 60, NULL, NULL),
('p2-laboratory', 211, 'fishing_super', 40.00, 35, 60, NULL, NULL),
('p2-laboratory', 230, 'fishing_super', 5.00, 45, 70, NULL, NULL),
('p2-laboratory', 456, 'fishing_super', 45.00, 35, 55, NULL, NULL),
('p2-laboratory', 457, 'fishing_super', 15.00, 35, 70, NULL, NULL),
('p2-laboratory', 462, 'walking', 5.00, 59, 59, NULL, NULL),
('p2-laboratory', 505, 'walking', 20.00, 56, 56, NULL, NULL),
('p2-laboratory', 507, 'walking', 20.00, 56, 56, NULL, NULL),
('p2-laboratory', 508, 'walking', 5.00, 59, 59, NULL, NULL),
('p2-laboratory', 531, 'walking', 85.00, 56, 59, NULL, NULL),
('p2-laboratory', 560, 'walking', 15.00, 57, 58, NULL, NULL),
('p2-laboratory', 592, 'surfing', 100.00, 45, 60, NULL, NULL),
('p2-laboratory', 593, 'surfing', 5.00, 50, 60, NULL, NULL),
('p2-laboratory', 594, 'surfing', 95.00, 45, 60, NULL, NULL),
('p2-laboratory', 600, 'walking', 15.00, 57, 59, NULL, NULL),
('p2-laboratory', 601, 'walking', 5.00, 59, 59, NULL, NULL),
('clay-tunnel', 60, 'fishing_super', 60.00, 50, 70, NULL, NULL),
('clay-tunnel', 61, 'fishing_super', 55.00, 50, 60, NULL, NULL),
('clay-tunnel', 62, 'fishing_super', 5.00, 60, 60, NULL, NULL),
('clay-tunnel', 95, 'walking', 25.00, 54, 57, NULL, NULL),
('clay-tunnel', 208, 'walking', 5.00, 57, 57, NULL, NULL),
('clay-tunnel', 299, 'walking', 15.00, 55, 57, NULL, NULL),
('clay-tunnel', 305, 'walking', 15.00, 55, 57, NULL, NULL),
('clay-tunnel', 525, 'walking', 35.00, 54, 56, NULL, NULL),
('clay-tunnel', 527, 'walking', 10.00, 54, 54, NULL, NULL),
('clay-tunnel', 530, 'walking', 75.00, 54, 57, NULL, NULL),
('clay-tunnel', 550, 'fishing_super', 40.00, 50, 60, NULL, NULL),
('clay-tunnel', 550, 'surfing', 100.00, 45, 60, NULL, NULL),
('clay-tunnel', 632, 'walking', 20.00, 54, 54, NULL, NULL),
('clay-tunnel', 10016, 'fishing_super', 40.00, 50, 60, NULL, NULL),
('clay-tunnel', 10016, 'surfing', 100.00, 45, 60, NULL, NULL),
('nature-sanctuary', 55, 'walking', 20.00, 57, 65, NULL, NULL),
('nature-sanctuary', 129, 'fishing_super', 100.00, 1, 100, NULL, NULL),
('nature-sanctuary', 130, 'fishing_super', 20.00, 1, 100, NULL, NULL),
('nature-sanctuary', 164, 'walking', 20.00, 58, 66, NULL, NULL),
('nature-sanctuary', 203, 'walking', 30.00, 58, 67, NULL, NULL),
('nature-sanctuary', 206, 'walking', 10.00, 57, 57, NULL, NULL),
('nature-sanctuary', 274, 'walking', 60.00, 56, 65, NULL, NULL),
('nature-sanctuary', 275, 'walking', 5.00, 59, 59, NULL, NULL),
('nature-sanctuary', 334, 'walking', 40.00, 56, 64, NULL, NULL),
('nature-sanctuary', 352, 'walking', 10.00, 57, 67, NULL, NULL),
('nature-sanctuary', 418, 'surfing', 90.00, 45, 60, NULL, NULL),
('nature-sanctuary', 419, 'surfing', 5.00, 50, 60, NULL, NULL),
('nature-sanctuary', 531, 'walking', 85.00, 56, 59, NULL, NULL),
('nature-sanctuary', 550, 'fishing_super', 40.00, 40, 60, NULL, NULL),
('nature-sanctuary', 550, 'surfing', 70.00, 45, 60, NULL, NULL),
('nature-sanctuary', 611, 'walking', 20.00, 57, 67, NULL, NULL),
('nature-sanctuary', 612, 'static', 100.00, 60, 60, NULL, NULL),
('nature-sanctuary', 10016, 'fishing_super', 40.00, 40, 60, NULL, NULL),
('nature-sanctuary', 10016, 'surfing', 35.00, 45, 60, NULL, NULL);

INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions, version_exclusive)
SELECT r.id, e.dex, e.method, e.rate, e.lmin, e.lmax, NULLIF(e.cond, ''), NULLIF(e.ver_excl, '')
FROM _enc e JOIN public.routes r ON r.slug = e.slug AND r.game_id = 'b4c5d6e7-f8a9-0123-b456-789012345678';

DROP TABLE _enc;

-- ===========================================
-- STEP 5: BOSS TRAINERS
-- ===========================================

-- Cheren (Gym Leader)
DO $$
DECLARE
  v_trainer_id UUID;
  v_route_id UUID;
BEGIN
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'aspertia-city' AND game_id = 'b4c5d6e7-f8a9-0123-b456-789012345678';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
  VALUES (v_route_id, 'Cheren', 'Gym Leader', true, 'gym_leader', 13, 1, 'Normal-type specialist. Basic Badge.')
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 504, 11, 1, '["Tackle", "Leer", "Bite", "Detect"]'::jsonb, 'Keen Eye', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 506, 13, 2, '["Tackle", "Leer", "Bite", "Work Up"]'::jsonb, 'Vital Spirit', NULL, NULL);
END $$;

-- Roxie (Gym Leader)
DO $$
DECLARE
  v_trainer_id UUID;
  v_route_id UUID;
BEGIN
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'virbank-city' AND game_id = 'b4c5d6e7-f8a9-0123-b456-789012345678';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
  VALUES (v_route_id, 'Roxie', 'Gym Leader', true, 'gym_leader', 18, 1, 'Poison-type specialist. Toxic Badge.')
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 109, 16, 1, '["Assurance", "Clear Smog", "Smog", "Tackle"]'::jsonb, 'Levitate', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 544, 18, 2, '["Venoshock", "Pursuit", "Poison Tail", "Screech"]'::jsonb, 'Poison Point', NULL, NULL);
END $$;

-- Burgh (Gym Leader)
DO $$
DECLARE
  v_trainer_id UUID;
  v_route_id UUID;
BEGIN
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'castelia-city' AND game_id = 'b4c5d6e7-f8a9-0123-b456-789012345678';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
  VALUES (v_route_id, 'Burgh', 'Gym Leader', true, 'gym_leader', 24, 1, 'Bug-type specialist. Insect Badge.')
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 541, 22, 1, '["Razor Leaf", "String Shot", "Bug Bite", "Struggle Bug"]'::jsonb, 'Leaf Guard', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 557, 22, 2, '["Faint Attack", "Smack Down", "Bug Bite", "Struggle Bug"]'::jsonb, 'Sturdy', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 542, 24, 3, '["Razor Leaf", "String Shot", "Bug Bite", "Struggle Bug"]'::jsonb, 'Swarm', NULL, NULL);
END $$;

-- Elesa (Gym Leader)
DO $$
DECLARE
  v_trainer_id UUID;
  v_route_id UUID;
BEGIN
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'nimbasa-city' AND game_id = 'b4c5d6e7-f8a9-0123-b456-789012345678';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
  VALUES (v_route_id, 'Elesa', 'Gym Leader', true, 'gym_leader', 30, 1, 'Electric-type specialist. Bolt Badge.')
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 587, 28, 1, '["Volt Switch", "Aerial Ace", "Quick Attack", "Pursuit"]'::jsonb, 'Static', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 180, 28, 2, '["Volt Switch", "Take Down", "Thunder Wave", "Confuse Ray"]'::jsonb, 'Static', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 523, 30, 3, '["Volt Switch", "Flame Charge", "Spark", "Quick Attack"]'::jsonb, 'Lightning Rod', NULL, NULL);
END $$;

-- Clay (Gym Leader)
DO $$
DECLARE
  v_trainer_id UUID;
  v_route_id UUID;
BEGIN
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'driftveil-city' AND game_id = 'b4c5d6e7-f8a9-0123-b456-789012345678';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
  VALUES (v_route_id, 'Clay', 'Gym Leader', true, 'gym_leader', 33, 1, 'Ground-type specialist. Quake Badge.')
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 552, 31, 1, '["Crunch", "Torment", "Bulldoze", "Swagger"]'::jsonb, 'Intimidate', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 28, 31, 2, '["Slash", "Bulldoze", "Crush Claw", "Hone Claws"]'::jsonb, 'Sand Rush', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 530, 33, 3, '["Bulldoze", "Slash", "Rock Slide", "Hone Claws"]'::jsonb, 'Sand Rush', NULL, NULL);
END $$;

-- Skyla (Gym Leader)
DO $$
DECLARE
  v_trainer_id UUID;
  v_route_id UUID;
BEGIN
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'mistralton-city' AND game_id = 'b4c5d6e7-f8a9-0123-b456-789012345678';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
  VALUES (v_route_id, 'Skyla', 'Gym Leader', true, 'gym_leader', 39, 1, 'Flying-type specialist. Jet Badge.')
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 528, 37, 1, '["Heart Stamp", "Acrobatics", "Assurance", "Attract"]'::jsonb, 'Unaware', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 227, 37, 2, '["Steel Wing", "Air Slash", "Agility", "Fury Attack"]'::jsonb, 'Sturdy', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 581, 39, 3, '["Air Slash", "BubbleBeam", "Aerial Ace", "FeatherDance"]'::jsonb, 'Keen Eye', NULL, NULL);
END $$;

-- Drayden (Gym Leader)
DO $$
DECLARE
  v_trainer_id UUID;
  v_route_id UUID;
BEGIN
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'opelucid-city' AND game_id = 'b4c5d6e7-f8a9-0123-b456-789012345678';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
  VALUES (v_route_id, 'Drayden', 'Gym Leader', true, 'gym_leader', 48, 1, 'Dragon-type specialist. Legend Badge.')
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 621, 46, 1, '["Dragon Tail", "Revenge", "Night Slash", "Crunch"]'::jsonb, 'Rough Skin', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 330, 46, 2, '["Earth Power", "Dragon Tail", "Rock Slide", "Crunch"]'::jsonb, 'Levitate', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 612, 48, 3, '["Dragon Tail", "Dragon Dance", "Slash", "Assurance"]'::jsonb, 'Mold Breaker', NULL, NULL);
END $$;

-- Marlon (Gym Leader)
DO $$
DECLARE
  v_trainer_id UUID;
  v_route_id UUID;
BEGIN
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'humilau-city' AND game_id = 'b4c5d6e7-f8a9-0123-b456-789012345678';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
  VALUES (v_route_id, 'Marlon', 'Gym Leader', true, 'gym_leader', 51, 1, 'Water-type specialist. Wave Badge.')
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 565, 49, 1, '["Crunch", "Shell Smash", "Scald", "Smack Down"]'::jsonb, 'Solid Rock', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 321, 49, 2, '["Scald", "Bounce", "Amnesia", "Rollout"]'::jsonb, 'Water Veil', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 593, 51, 3, '["Scald", "Cursed Body", "Recover", "Ominous Wind"]'::jsonb, 'Cursed Body', NULL, NULL);
END $$;

-- Shauntal (Elite Four)
DO $$
DECLARE
  v_trainer_id UUID;
  v_route_id UUID;
BEGIN
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'pokemon-league' AND game_id = 'b4c5d6e7-f8a9-0123-b456-789012345678';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
  VALUES (v_route_id, 'Shauntal', 'Elite Four', true, 'elite_four', 58, 1, 'Ghost-type specialist.')
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 563, 56, 1, '["Shadow Ball", "Psychic", "Will-O-Wisp", "Grass Knot"]'::jsonb, 'Mummy', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 426, 56, 2, '["Shadow Ball", "Psychic", "Thunderbolt", "Acrobatics"]'::jsonb, 'Aftermath', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 623, 56, 3, '["Shadow Punch", "Earthquake", "Brick Break", "Curse"]'::jsonb, 'Iron Fist', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 609, 58, 4, '["Shadow Ball", "Fire Blast", "Energy Ball", "Psychic"]'::jsonb, 'Flame Body', 'Sitrus Berry', NULL);
END $$;

-- Marshal (Elite Four)
DO $$
DECLARE
  v_trainer_id UUID;
  v_route_id UUID;
BEGIN
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'pokemon-league' AND game_id = 'b4c5d6e7-f8a9-0123-b456-789012345678';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
  VALUES (v_route_id, 'Marshal', 'Elite Four', true, 'elite_four', 58, 2, 'Fighting-type specialist.')
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 538, 56, 1, '["Storm Throw", "Stone Edge", "Bulldoze", "Payback"]'::jsonb, 'Guts', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 539, 56, 2, '["Close Combat", "Retaliate", "Rock Slide", "Grass Knot"]'::jsonb, 'Sturdy', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 620, 56, 3, '["Hi Jump Kick", "U-turn", "Rock Slide", "Retaliate"]'::jsonb, 'Inner Focus', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 534, 58, 4, '["Hammer Arm", "Stone Edge", "Bulk Up", "Retaliate"]'::jsonb, 'Guts', 'Sitrus Berry', NULL);
END $$;

-- Grimsley (Elite Four)
DO $$
DECLARE
  v_trainer_id UUID;
  v_route_id UUID;
BEGIN
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'pokemon-league' AND game_id = 'b4c5d6e7-f8a9-0123-b456-789012345678';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
  VALUES (v_route_id, 'Grimsley', 'Elite Four', true, 'elite_four', 58, 3, 'Dark-type specialist.')
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 510, 56, 1, '["Night Slash", "Fake Out", "Aerial Ace", "Attract"]'::jsonb, 'Limber', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 560, 56, 2, '["Crunch", "Brick Break", "Poison Jab", "Sand-Attack"]'::jsonb, 'Moxie', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 553, 56, 3, '["Crunch", "Earthquake", "Dragon Claw", "Foul Play"]'::jsonb, 'Intimidate', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 625, 58, 4, '["Night Slash", "X-Scissor", "Metal Claw", "Aerial Ace"]'::jsonb, 'Defiant', 'Sitrus Berry', NULL);
END $$;

-- Caitlin (Elite Four)
DO $$
DECLARE
  v_trainer_id UUID;
  v_route_id UUID;
BEGIN
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'pokemon-league' AND game_id = 'b4c5d6e7-f8a9-0123-b456-789012345678';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
  VALUES (v_route_id, 'Caitlin', 'Elite Four', true, 'elite_four', 58, 4, 'Psychic-type specialist.')
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 518, 56, 1, '["Psychic", "Shadow Ball", "Charge Beam", "Reflect"]'::jsonb, 'Forewarn', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 561, 56, 2, '["Psychic", "Air Slash", "Shadow Ball", "Ice Beam"]'::jsonb, 'Magic Guard', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 579, 56, 3, '["Psychic", "Focus Blast", "Energy Ball", "Thunder"]'::jsonb, 'Magic Guard', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 576, 58, 4, '["Psychic", "Thunderbolt", "Shadow Ball", "Calm Mind"]'::jsonb, 'Shadow Tag', 'Sitrus Berry', NULL);
END $$;

-- Iris (Champion)
DO $$
DECLARE
  v_trainer_id UUID;
  v_route_id UUID;
BEGIN
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'pokemon-league' AND game_id = 'b4c5d6e7-f8a9-0123-b456-789012345678';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
  VALUES (v_route_id, 'Iris', 'Champion', true, 'champion', 59, 5, 'Dragon-type specialist. Unova Champion.')
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 635, 57, 1, '["Flamethrower", "Charge Beam", "Dragon Pulse", "Surf"]'::jsonb, 'Levitate', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 621, 57, 2, '["Rock Slide", "Flamethrower", "Dragon Tail", "Focus Blast"]'::jsonb, 'Sheer Force', 'Life Orb', NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 567, 57, 3, '["Acrobatics", "Rock Slide", "Dragon Claw", "Endeavor"]'::jsonb, 'Defeatist', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 306, 57, 4, '["Earthquake", "Double-Edge", "Rock Slide", "Autotomize"]'::jsonb, 'Rock Head', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 131, 57, 5, '["Surf", "Ice Beam", "Thunderbolt", "Sing"]'::jsonb, 'Water Absorb', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 612, 59, 6, '["Earthquake", "X-Scissor", "Dual Chop", "Dragon Dance"]'::jsonb, 'Mold Breaker', 'Focus Sash', NULL);
END $$;

-- Update total_routes count
UPDATE public.games SET total_routes = 62 WHERE id = 'b4c5d6e7-f8a9-0123-b456-789012345678';
