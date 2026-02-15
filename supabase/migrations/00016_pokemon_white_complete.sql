-- ===========================================
-- POKEMON WHITE: COMPLETE GAME DATA
-- Official Pokemon Game
-- Gen 5, Unova region
-- ===========================================
-- Game ID: a3b4c5d6-e7f8-9012-a345-678901234567
-- ===========================================

-- STEP 1: Insert the game
INSERT INTO public.games (id, slug, name, generation, region, base_game_slug, is_romhack, sprite_url, total_routes, description)
VALUES (
  'a3b4c5d6-e7f8-9012-a345-678901234567',
  'pokemon-white',
  'Pokemon White',
  5,
  'Unova',
  NULL,
  false,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/644.png',
  52,
  'Pokemon White Version for Nintendo DS. Set in the Unova region with an all-new Pokedex. Features Reshiram and Team Plasma.'
);

-- ===========================================
-- STEP 2: ALL ROUTES (52 total)
-- ===========================================

INSERT INTO public.routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items, notes) VALUES
('a3b4c5d6-e7f8-9012-a345-678901234567', 'Nuvema Town', 'nuvema-town', 1, 'city', true, false, false, 'Starter town. Choose Snivy, Tepig, or Oshawott.'),
('a3b4c5d6-e7f8-9012-a345-678901234567', 'Route 1', 'route-1', 2, 'route', true, false, false, NULL),
('a3b4c5d6-e7f8-9012-a345-678901234567', 'Accumula Town', 'accumula-town', 3, 'city', false, false, false, 'Team Plasma introduction.'),
('a3b4c5d6-e7f8-9012-a345-678901234567', 'Route 2', 'route-2', 4, 'route', true, true, false, NULL),
('a3b4c5d6-e7f8-9012-a345-678901234567', 'Striaton City', 'striaton-city', 5, 'city', false, true, false, 'Gym 1: Cilan/Chili/Cress. Starter-dependent.'),
('a3b4c5d6-e7f8-9012-a345-678901234567', 'Dreamyard', 'dreamyard', 6, 'route', true, true, false, 'Elemental monkey gift.'),
('a3b4c5d6-e7f8-9012-a345-678901234567', 'Route 3', 'route-3', 7, 'route', true, true, false, NULL),
('a3b4c5d6-e7f8-9012-a345-678901234567', 'Wellspring Cave', 'wellspring-cave', 8, 'cave', true, false, false, NULL),
('a3b4c5d6-e7f8-9012-a345-678901234567', 'Nacrene City', 'nacrene-city', 9, 'city', false, true, false, 'Gym Leader Lenora. Normal-type specialist.'),
('a3b4c5d6-e7f8-9012-a345-678901234567', 'Pinwheel Forest', 'pinwheel-forest', 10, 'route', true, true, false, NULL),
('a3b4c5d6-e7f8-9012-a345-678901234567', 'Castelia City', 'castelia-city', 11, 'city', false, true, true, 'Gym Leader Burgh. Bug-type specialist.'),
('a3b4c5d6-e7f8-9012-a345-678901234567', 'Route 4', 'route-4', 12, 'route', true, true, false, NULL),
('a3b4c5d6-e7f8-9012-a345-678901234567', 'Desert Resort', 'desert-resort', 13, 'route', true, true, false, NULL),
('a3b4c5d6-e7f8-9012-a345-678901234567', 'Relic Castle', 'relic-castle', 14, 'cave', true, false, true, NULL),
('a3b4c5d6-e7f8-9012-a345-678901234567', 'Nimbasa City', 'nimbasa-city', 15, 'city', false, true, false, 'Gym Leader Elesa. Electric-type specialist.'),
('a3b4c5d6-e7f8-9012-a345-678901234567', 'Route 5', 'route-5', 16, 'route', true, true, false, NULL),
('a3b4c5d6-e7f8-9012-a345-678901234567', 'Driftveil Drawbridge', 'driftveil-drawbridge', 17, 'route', true, false, false, 'Ducklett wing shadows.'),
('a3b4c5d6-e7f8-9012-a345-678901234567', 'Driftveil City', 'driftveil-city', 18, 'city', false, true, false, 'Gym Leader Clay. Ground-type specialist.'),
('a3b4c5d6-e7f8-9012-a345-678901234567', 'Cold Storage', 'cold-storage', 19, 'building', true, true, false, NULL),
('a3b4c5d6-e7f8-9012-a345-678901234567', 'Route 6', 'route-6', 20, 'route', true, true, false, NULL),
('a3b4c5d6-e7f8-9012-a345-678901234567', 'Chargestone Cave', 'chargestone-cave', 21, 'cave', true, true, true, NULL),
('a3b4c5d6-e7f8-9012-a345-678901234567', 'Mistralton City', 'mistralton-city', 22, 'city', false, true, false, 'Gym Leader Skyla. Flying-type specialist.'),
('a3b4c5d6-e7f8-9012-a345-678901234567', 'Route 7', 'route-7', 23, 'route', true, true, false, NULL),
('a3b4c5d6-e7f8-9012-a345-678901234567', 'Celestial Tower', 'celestial-tower', 24, 'building', true, true, false, NULL),
('a3b4c5d6-e7f8-9012-a345-678901234567', 'Twist Mountain', 'twist-mountain', 25, 'cave', true, true, true, NULL),
('a3b4c5d6-e7f8-9012-a345-678901234567', 'Icirrus City', 'icirrus-city', 26, 'city', true, true, false, 'Gym Leader Brycen. Ice-type specialist.'),
('a3b4c5d6-e7f8-9012-a345-678901234567', 'Dragonspiral Tower', 'dragonspiral-tower', 27, 'building', true, false, false, 'Legendary dragon encounter.'),
('a3b4c5d6-e7f8-9012-a345-678901234567', 'Route 8', 'route-8', 28, 'route', true, true, false, NULL),
('a3b4c5d6-e7f8-9012-a345-678901234567', 'Moor of Icirrus', 'moor-of-icirrus', 29, 'route', true, false, false, NULL),
('a3b4c5d6-e7f8-9012-a345-678901234567', 'Route 9', 'route-9', 30, 'route', true, true, false, NULL),
('a3b4c5d6-e7f8-9012-a345-678901234567', 'Opelucid City', 'opelucid-city', 31, 'city', false, true, false, 'Gym 8: Drayden (Black) / Iris (White). Dragon-type.'),
('a3b4c5d6-e7f8-9012-a345-678901234567', 'Route 10', 'route-10', 32, 'route', true, true, false, NULL),
('a3b4c5d6-e7f8-9012-a345-678901234567', 'Victory Road', 'victory-road', 33, 'cave', true, true, true, NULL),
('a3b4c5d6-e7f8-9012-a345-678901234567', 'Pokemon League', 'pokemon-league', 34, 'building', false, true, false, 'Elite Four and Champion N/Ghetsis.'),
('a3b4c5d6-e7f8-9012-a345-678901234567', 'Route 11', 'route-11', 35, 'route', true, true, false, NULL),
('a3b4c5d6-e7f8-9012-a345-678901234567', 'Village Bridge', 'village-bridge', 36, 'route', true, true, false, NULL),
('a3b4c5d6-e7f8-9012-a345-678901234567', 'Route 12', 'route-12', 37, 'route', true, true, false, NULL),
('a3b4c5d6-e7f8-9012-a345-678901234567', 'Lacunosa Town', 'lacunosa-town', 38, 'city', false, false, false, NULL),
('a3b4c5d6-e7f8-9012-a345-678901234567', 'Route 13', 'route-13', 39, 'route', true, true, false, NULL),
('a3b4c5d6-e7f8-9012-a345-678901234567', 'Undella Town', 'undella-town', 40, 'city', true, false, false, NULL),
('a3b4c5d6-e7f8-9012-a345-678901234567', 'Undella Bay', 'undella-bay', 41, 'water', true, true, false, NULL),
('a3b4c5d6-e7f8-9012-a345-678901234567', 'Route 14', 'route-14', 42, 'route', true, true, false, NULL),
('a3b4c5d6-e7f8-9012-a345-678901234567', 'Abundant Shrine', 'abundant-shrine', 43, 'special', true, false, false, NULL),
('a3b4c5d6-e7f8-9012-a345-678901234567', 'Route 15', 'route-15', 44, 'route', true, true, false, NULL),
('a3b4c5d6-e7f8-9012-a345-678901234567', 'Route 16', 'route-16', 45, 'route', true, true, false, NULL),
('a3b4c5d6-e7f8-9012-a345-678901234567', 'Lostlorn Forest', 'lostlorn-forest', 46, 'route', true, false, false, NULL),
('a3b4c5d6-e7f8-9012-a345-678901234567', 'Route 17', 'route-17', 47, 'water', true, true, false, NULL),
('a3b4c5d6-e7f8-9012-a345-678901234567', 'Route 18', 'route-18', 48, 'route', true, true, false, NULL),
('a3b4c5d6-e7f8-9012-a345-678901234567', 'P2 Laboratory', 'p2-laboratory', 49, 'building', true, false, true, NULL),
('a3b4c5d6-e7f8-9012-a345-678901234567', 'Challenger''s Cave', 'challengers-cave', 50, 'cave', true, true, true, NULL),
('a3b4c5d6-e7f8-9012-a345-678901234567', 'Giant Chasm', 'giant-chasm', 51, 'cave', true, false, true, 'Kyurem encounter.'),
('a3b4c5d6-e7f8-9012-a345-678901234567', 'Mistralton Cave', 'mistralton-cave', 52, 'cave', true, false, true, NULL);

-- ===========================================
-- STEP 3: STARTER POKEMON
-- ===========================================

INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max)
SELECT r.id, 495, 'gift', NULL, 5, 5
FROM public.routes r WHERE r.slug = 'nuvema-town' AND r.game_id = 'a3b4c5d6-e7f8-9012-a345-678901234567';

INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max)
SELECT r.id, 498, 'gift', NULL, 5, 5
FROM public.routes r WHERE r.slug = 'nuvema-town' AND r.game_id = 'a3b4c5d6-e7f8-9012-a345-678901234567';

INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max)
SELECT r.id, 501, 'gift', NULL, 5, 5
FROM public.routes r WHERE r.slug = 'nuvema-town' AND r.game_id = 'a3b4c5d6-e7f8-9012-a345-678901234567';

-- ===========================================
-- STEP 4: ENCOUNTER DATA (581 total)
-- ===========================================

CREATE TEMP TABLE _enc (slug TEXT, dex INT, method TEXT, rate DECIMAL(5,2), lmin INT, lmax INT, cond TEXT, ver_excl TEXT);
INSERT INTO _enc VALUES
('nuvema-town', 495, 'gift', 100.00, 5, 5, NULL, NULL),
('nuvema-town', 498, 'gift', 100.00, 5, 5, NULL, NULL),
('nuvema-town', 501, 'gift', 100.00, 5, 5, NULL, NULL),
('route-1', 349, 'fishing_super', 45.00, 35, 60, NULL, NULL),
('route-1', 350, 'fishing_super', 5.00, 45, 70, NULL, NULL),
('route-1', 504, 'walking', 50.00, 2, 4, NULL, NULL),
('route-1', 505, 'walking', 36.00, 32, 35, NULL, NULL),
('route-1', 506, 'walking', 50.00, 2, 4, NULL, NULL),
('route-1', 507, 'walking', 39.00, 32, 34, NULL, NULL),
('route-1', 531, 'walking', 100.00, 2, 4, NULL, NULL),
('route-1', 550, 'fishing_super', 55.00, 35, 70, NULL, NULL),
('route-1', 550, 'surfing', 100.00, 5, 20, NULL, NULL),
('route-1', 559, 'walking', 25.00, 32, 35, NULL, NULL),
('route-1', 10016, 'fishing_super', 95.00, 35, 55, NULL, NULL),
('route-1', 10016, 'surfing', 100.00, 5, 15, NULL, NULL),
('route-2', 504, 'walking', 40.00, 4, 7, NULL, NULL),
('route-2', 506, 'walking', 40.00, 4, 7, NULL, NULL),
('route-2', 509, 'walking', 20.00, 4, 5, NULL, NULL),
('route-2', 531, 'walking', 100.00, 4, 7, NULL, NULL),
('dreamyard', 20, 'walking', 10.00, 48, 48, NULL, NULL),
('dreamyard', 49, 'walking', 10.00, 48, 50, NULL, NULL),
('dreamyard', 166, 'walking', 10.00, 49, 49, NULL, NULL),
('dreamyard', 168, 'walking', 10.00, 49, 49, NULL, NULL),
('dreamyard', 402, 'walking', 10.00, 48, 50, NULL, NULL),
('dreamyard', 504, 'walking', 40.00, 8, 11, NULL, NULL),
('dreamyard', 505, 'walking', 20.00, 47, 47, NULL, NULL),
('dreamyard', 509, 'walking', 40.00, 8, 11, NULL, NULL),
('dreamyard', 510, 'walking', 20.00, 47, 47, NULL, NULL),
('dreamyard', 511, 'gift', 100.00, 10, 10, NULL, NULL),
('dreamyard', 513, 'gift', 100.00, 10, 10, NULL, NULL),
('dreamyard', 515, 'gift', 100.00, 10, 10, NULL, NULL),
('dreamyard', 517, 'walking', 30.00, 8, 48, NULL, NULL),
('dreamyard', 518, 'walking', 5.00, 11, 11, NULL, NULL),
('dreamyard', 518, 'static', 100.00, 50, 50, 'weekday-friday, defeated-ghetsis', NULL),
('dreamyard', 531, 'walking', 95.00, 8, 11, NULL, NULL),
('route-3', 118, 'fishing_super', 100.00, 35, 60, NULL, NULL),
('route-3', 119, 'fishing_super', 20.00, 35, 70, NULL, NULL),
('route-3', 504, 'walking', 40.00, 8, 10, NULL, NULL),
('route-3', 506, 'walking', 20.00, 9, 11, NULL, NULL),
('route-3', 509, 'walking', 20.00, 9, 11, NULL, NULL),
('route-3', 519, 'walking', 80.00, 8, 13, NULL, NULL),
('route-3', 522, 'walking', 40.00, 8, 13, NULL, NULL),
('route-3', 531, 'walking', 100.00, 8, 11, NULL, NULL),
('route-3', 550, 'fishing_super', 40.00, 35, 60, NULL, NULL),
('route-3', 550, 'surfing', 100.00, 5, 20, NULL, NULL),
('route-3', 10016, 'fishing_super', 40.00, 35, 55, NULL, NULL),
('route-3', 10016, 'surfing', 100.00, 5, 15, NULL, NULL),
('wellspring-cave', 60, 'fishing_super', 45.00, 35, 55, NULL, NULL),
('wellspring-cave', 61, 'fishing_super', 70.00, 35, 60, NULL, NULL),
('wellspring-cave', 62, 'fishing_super', 5.00, 35, 60, NULL, NULL),
('wellspring-cave', 524, 'walking', 50.00, 10, 13, NULL, NULL),
('wellspring-cave', 527, 'walking', 50.00, 10, 13, NULL, NULL),
('wellspring-cave', 529, 'walking', 100.00, 10, 13, NULL, NULL),
('wellspring-cave', 550, 'fishing_super', 40.00, 35, 60, NULL, NULL),
('wellspring-cave', 550, 'surfing', 100.00, 5, 20, NULL, NULL),
('wellspring-cave', 10016, 'fishing_super', 40.00, 35, 55, NULL, NULL),
('wellspring-cave', 10016, 'surfing', 100.00, 5, 15, NULL, NULL),
('pinwheel-forest', 519, 'walking', 75.00, 12, 16, NULL, NULL),
('pinwheel-forest', 531, 'walking', 160.00, 12, 17, NULL, NULL),
('pinwheel-forest', 532, 'walking', 40.00, 13, 16, NULL, NULL),
('pinwheel-forest', 535, 'walking', 80.00, 12, 17, NULL, NULL),
('pinwheel-forest', 538, 'walking', 20.00, 12, 17, NULL, NULL),
('pinwheel-forest', 539, 'walking', 5.00, 15, 15, NULL, NULL),
('pinwheel-forest', 118, 'fishing_super', 100.00, 35, 60, NULL, NULL),
('pinwheel-forest', 119, 'fishing_super', 20.00, 35, 70, NULL, NULL),
('pinwheel-forest', 511, 'walking', 10.00, 15, 15, NULL, NULL),
('pinwheel-forest', 513, 'walking', 10.00, 15, 15, NULL, NULL),
('pinwheel-forest', 515, 'walking', 10.00, 15, 15, NULL, NULL),
('pinwheel-forest', 520, 'walking', 15.00, 23, 24, NULL, NULL),
('pinwheel-forest', 540, 'walking', 35.00, 14, 17, NULL, NULL),
('pinwheel-forest', 541, 'walking', 35.00, 22, 25, NULL, NULL),
('pinwheel-forest', 543, 'walking', 15.00, 15, 16, NULL, NULL),
('pinwheel-forest', 544, 'walking', 15.00, 23, 24, NULL, NULL),
('pinwheel-forest', 548, 'walking', 70.00, 14, 25, NULL, NULL),
('pinwheel-forest', 549, 'walking', 5.00, 17, 17, NULL, NULL),
('pinwheel-forest', 550, 'fishing_super', 40.00, 35, 60, NULL, NULL),
('pinwheel-forest', 550, 'surfing', 100.00, 5, 20, NULL, NULL),
('pinwheel-forest', 10016, 'fishing_super', 40.00, 35, 55, NULL, NULL),
('pinwheel-forest', 10016, 'surfing', 100.00, 5, 20, NULL, NULL),
('route-4', 98, 'fishing_super', 55.00, 35, 55, NULL, NULL),
('route-4', 99, 'fishing_super', 15.00, 35, 70, NULL, NULL),
('route-4', 366, 'fishing_super', 40.00, 35, 55, NULL, NULL),
('route-4', 368, 'fishing_super', 5.00, 45, 70, NULL, NULL),
('route-4', 369, 'fishing_super', 40.00, 35, 60, NULL, NULL),
('route-4', 370, 'fishing_super', 45.00, 35, 60, NULL, NULL),
('route-4', 551, 'walking', 40.00, 15, 18, NULL, NULL),
('route-4', 554, 'walking', 40.00, 15, 18, NULL, NULL),
('route-4', 559, 'walking', 20.00, 16, 17, NULL, NULL),
('route-4', 592, 'surfing', 100.00, 5, 15, NULL, NULL),
('route-4', 593, 'surfing', 5.00, 5, 20, NULL, NULL),
('route-4', 594, 'surfing', 95.00, 5, 20, NULL, NULL),
('desert-resort', 551, 'walking', 80.00, 19, 22, NULL, NULL),
('desert-resort', 554, 'walking', 60.00, 19, 20, NULL, NULL),
('desert-resort', 556, 'walking', 20.00, 20, 20, NULL, NULL),
('desert-resort', 557, 'walking', 20.00, 20, 22, NULL, NULL),
('desert-resort', 559, 'walking', 10.00, 20, 20, NULL, NULL),
('desert-resort', 561, 'walking', 10.00, 20, 20, NULL, NULL),
('relic-castle', 551, 'walking', 50.00, 19, 22, NULL, NULL),
('relic-castle', 562, 'walking', 50.00, 19, 22, NULL, NULL),
('relic-castle', 552, 'walking', 85.00, 34, 50, NULL, NULL),
('relic-castle', 563, 'walking', 70.00, 34, 50, NULL, NULL),
('relic-castle', 28, 'walking', 30.00, 47, 49, NULL, NULL),
('relic-castle', 95, 'walking', 15.00, 48, 49, NULL, NULL),
('relic-castle', 344, 'walking', 100.00, 47, 50, NULL, NULL),
('relic-castle', 637, 'static', 100.00, 70, 70, NULL, NULL),
('route-5', 510, 'walking', 40.00, 20, 25, NULL, NULL),
('route-5', 531, 'walking', 85.00, 19, 22, NULL, NULL),
('route-5', 568, 'walking', 40.00, 19, 24, NULL, NULL),
('route-5', 572, 'walking', 60.00, 19, 25, NULL, NULL),
('route-5', 573, 'walking', 5.00, 22, 22, NULL, NULL),
('route-5', 577, 'walking', 60.00, 19, 25, NULL, NULL),
('route-5', 587, 'walking', 10.00, 20, 20, NULL, NULL),
('cold-storage', 507, 'walking', 70.00, 21, 27, NULL, NULL),
('cold-storage', 508, 'walking', 5.00, 23, 23, NULL, NULL),
('cold-storage', 531, 'walking', 90.00, 20, 23, NULL, NULL),
('cold-storage', 532, 'walking', 30.00, 21, 26, NULL, NULL),
('cold-storage', 572, 'walking', 40.00, 20, 24, NULL, NULL),
('cold-storage', 573, 'walking', 5.00, 23, 23, NULL, NULL),
('cold-storage', 582, 'walking', 60.00, 20, 27, NULL, NULL),
('route-6', 60, 'fishing_super', 45.00, 35, 55, NULL, NULL),
('route-6', 61, 'fishing_super', 70.00, 35, 70, NULL, NULL),
('route-6', 186, 'fishing_super', 5.00, 45, 70, NULL, NULL),
('route-6', 520, 'walking', 30.00, 23, 29, 'Spring', NULL),
('route-6', 520, 'walking', 30.00, 23, 29, 'Summer', NULL),
('route-6', 520, 'walking', 30.00, 23, 29, 'Autumn', NULL),
('route-6', 521, 'walking', 5.00, 25, 25, 'Spring', NULL),
('route-6', 521, 'walking', 5.00, 25, 25, 'Summer', NULL),
('route-6', 521, 'walking', 5.00, 25, 25, 'Autumn', NULL),
('route-6', 531, 'walking', 70.00, 22, 25, NULL, NULL),
('route-6', 531, 'walking', 5.00, 25, 25, 'Winter', NULL),
('route-6', 541, 'walking', 20.00, 23, 27, NULL, NULL),
('route-6', 542, 'walking', 5.00, 25, 25, NULL, NULL),
('route-6', 550, 'fishing_super', 40.00, 35, 60, NULL, NULL),
('route-6', 550, 'surfing', 100.00, 10, 30, NULL, NULL),
('route-6', 582, 'walking', 30.00, 23, 29, 'Winter', NULL),
('route-6', 585, 'walking', 70.00, 22, 28, NULL, NULL),
('route-6', 587, 'walking', 20.00, 23, 25, NULL, NULL),
('route-6', 588, 'walking', 50.00, 22, 28, NULL, NULL),
('route-6', 590, 'walking', 30.00, 23, 29, NULL, NULL),
('route-6', 590, 'static', 200.00, 20, 20, NULL, NULL),
('route-6', 10016, 'fishing_super', 40.00, 35, 55, NULL, NULL),
('route-6', 10016, 'surfing', 100.00, 10, 25, NULL, NULL),
('chargestone-cave', 525, 'walking', 30.00, 24, 24, NULL, NULL),
('chargestone-cave', 529, 'walking', 300.00, 24, 27, NULL, NULL),
('chargestone-cave', 595, 'walking', 114.00, 24, 27, NULL, NULL),
('chargestone-cave', 597, 'walking', 60.00, 24, 27, NULL, NULL),
('chargestone-cave', 599, 'walking', 84.00, 25, 27, NULL, NULL),
('chargestone-cave', 602, 'walking', 12.00, 27, 27, NULL, NULL),
('route-7', 505, 'walking', 40.00, 27, 33, NULL, NULL),
('route-7', 520, 'walking', 60.00, 26, 32, 'Spring', NULL),
('route-7', 520, 'walking', 60.00, 26, 32, 'Summer', NULL),
('route-7', 520, 'walking', 60.00, 26, 32, 'Autumn', NULL),
('route-7', 521, 'walking', 5.00, 29, 29, 'Spring', NULL),
('route-7', 521, 'walking', 5.00, 29, 29, 'Summer', NULL),
('route-7', 521, 'walking', 5.00, 29, 29, 'Autumn', NULL),
('route-7', 523, 'walking', 40.00, 27, 33, NULL, NULL),
('route-7', 531, 'walking', 85.00, 26, 29, NULL, NULL),
('route-7', 531, 'walking', 5.00, 29, 29, 'Winter', NULL),
('route-7', 585, 'walking', 40.00, 26, 30, NULL, NULL),
('route-7', 587, 'walking', 10.00, 27, 27, NULL, NULL),
('route-7', 590, 'walking', 20.00, 27, 33, NULL, NULL),
('route-7', 613, 'walking', 60.00, 26, 32, 'Winter', NULL),
('celestial-tower', 607, 'walking', 305.00, 26, 29, NULL, NULL),
('celestial-tower', 605, 'walking', 95.00, 26, 29, NULL, NULL),
('twist-mountain', 525, 'walking', 39.00, 28, 31, 'Spring', NULL),
('twist-mountain', 525, 'walking', 35.00, 28, 31, 'Summer', NULL),
('twist-mountain', 525, 'walking', 39.00, 28, 31, 'Autumn', NULL),
('twist-mountain', 525, 'walking', 20.00, 29, 29, 'Winter', NULL),
('twist-mountain', 525, 'walking', 10.00, 30, 30, NULL, NULL),
('twist-mountain', 527, 'walking', 20.00, 28, 31, 'Summer', NULL),
('twist-mountain', 527, 'walking', 10.00, 29, 31, 'Spring', NULL),
('twist-mountain', 527, 'walking', 10.00, 29, 31, 'Autumn', NULL),
('twist-mountain', 527, 'walking', 10.00, 28, 30, 'Winter', NULL),
('twist-mountain', 529, 'walking', 100.00, 28, 31, NULL, NULL),
('twist-mountain', 533, 'walking', 30.00, 28, 30, 'Spring', NULL),
('twist-mountain', 533, 'walking', 30.00, 28, 30, 'Summer', NULL),
('twist-mountain', 533, 'walking', 30.00, 28, 30, 'Autumn', NULL),
('twist-mountain', 533, 'walking', 10.00, 29, 29, 'Winter', NULL),
('twist-mountain', 613, 'walking', 45.00, 28, 31, 'Winter', NULL),
('twist-mountain', 613, 'walking', 10.00, 28, 28, 'Spring', NULL),
('twist-mountain', 613, 'walking', 10.00, 28, 28, 'Autumn', NULL),
('twist-mountain', 613, 'walking', 4.00, 28, 28, 'Summer', NULL),
('twist-mountain', 615, 'walking', 5.00, 31, 31, 'Winter', NULL),
('twist-mountain', 615, 'walking', 1.00, 31, 31, 'Spring', NULL),
('twist-mountain', 615, 'walking', 1.00, 28, 28, 'Summer', NULL),
('twist-mountain', 615, 'walking', 1.00, 31, 31, 'Autumn', NULL),
('icirrus-city', 339, 'fishing_super', 100.00, 35, 60, NULL, NULL),
('icirrus-city', 340, 'fishing_super', 20.00, 35, 70, NULL, NULL),
('icirrus-city', 536, 'walking', 40.00, 30, 33, 'Spring', NULL),
('icirrus-city', 536, 'walking', 40.00, 30, 33, 'Summer', NULL),
('icirrus-city', 536, 'walking', 40.00, 30, 33, 'Autumn', NULL),
('icirrus-city', 537, 'surfing', 5.00, 15, 40, NULL, NULL),
('icirrus-city', 616, 'walking', 40.00, 30, 33, 'Spring', NULL),
('icirrus-city', 616, 'walking', 40.00, 30, 33, 'Summer', NULL),
('icirrus-city', 616, 'walking', 40.00, 30, 33, 'Autumn', NULL),
('icirrus-city', 618, 'fishing_super', 80.00, 35, 60, NULL, NULL),
('icirrus-city', 618, 'surfing', 195.00, 15, 40, NULL, NULL),
('icirrus-city', 618, 'walking', 20.00, 31, 32, 'Spring', NULL),
('icirrus-city', 618, 'walking', 20.00, 31, 32, 'Summer', NULL),
('icirrus-city', 618, 'walking', 20.00, 31, 32, 'Autumn', NULL),
('dragonspiral-tower', 520, 'walking', 90.00, 30, 36, 'Spring', NULL),
('dragonspiral-tower', 520, 'walking', 90.00, 30, 36, 'Summer', NULL),
('dragonspiral-tower', 520, 'walking', 90.00, 30, 36, 'Autumn', NULL),
('dragonspiral-tower', 521, 'walking', 10.00, 33, 33, 'Spring', NULL),
('dragonspiral-tower', 521, 'walking', 10.00, 33, 33, 'Summer', NULL),
('dragonspiral-tower', 521, 'walking', 10.00, 33, 33, 'Autumn', NULL),
('dragonspiral-tower', 531, 'walking', 170.00, 30, 33, NULL, NULL),
('dragonspiral-tower', 531, 'walking', 10.00, 33, 33, 'Winter', NULL),
('dragonspiral-tower', 582, 'walking', 60.00, 31, 33, 'Winter', NULL),
('dragonspiral-tower', 583, 'walking', 60.00, 35, 37, 'Winter', NULL),
('dragonspiral-tower', 585, 'walking', 20.00, 31, 31, 'Spring', NULL),
('dragonspiral-tower', 585, 'walking', 20.00, 31, 31, 'Summer', NULL),
('dragonspiral-tower', 585, 'walking', 20.00, 31, 31, 'Autumn', NULL),
('dragonspiral-tower', 585, 'walking', 20.00, 30, 30, 'Winter', NULL),
('dragonspiral-tower', 585, 'walking', 40.00, 30, 32, NULL, NULL),
('dragonspiral-tower', 586, 'walking', 30.00, 34, 36, 'Winter', NULL),
('dragonspiral-tower', 587, 'walking', 20.00, 31, 31, NULL, NULL),
('dragonspiral-tower', 613, 'walking', 20.00, 33, 33, 'Winter', NULL),
('dragonspiral-tower', 614, 'walking', 20.00, 37, 37, 'Winter', NULL),
('dragonspiral-tower', 619, 'walking', 30.00, 34, 37, 'Winter', NULL),
('dragonspiral-tower', 619, 'walking', 110.00, 30, 37, NULL, NULL),
('dragonspiral-tower', 621, 'walking', 30.00, 31, 37, 'Spring', NULL),
('dragonspiral-tower', 621, 'walking', 30.00, 31, 37, 'Summer', NULL),
('dragonspiral-tower', 621, 'walking', 30.00, 31, 37, 'Autumn', NULL),
('dragonspiral-tower', 147, 'fishing_super', 95.00, 35, 60, NULL, NULL),
('dragonspiral-tower', 148, 'fishing_super', 24.00, 35, 70, NULL, NULL),
('dragonspiral-tower', 149, 'fishing_super', 1.00, 50, 70, NULL, NULL),
('dragonspiral-tower', 550, 'fishing_super', 40.00, 35, 60, NULL, NULL),
('dragonspiral-tower', 550, 'surfing', 100.00, 15, 40, NULL, NULL),
('dragonspiral-tower', 586, 'walking', 30.00, 34, 36, NULL, NULL),
('dragonspiral-tower', 10016, 'fishing_super', 40.00, 35, 55, NULL, NULL),
('dragonspiral-tower', 10016, 'surfing', 100.00, 15, 35, NULL, NULL),
('dragonspiral-tower', 621, 'walking', 30.00, 30, 33, NULL, NULL),
('dragonspiral-tower', 622, 'walking', 150.00, 30, 33, NULL, NULL),
('route-8', 339, 'fishing_super', 100.00, 35, 60, NULL, NULL),
('route-8', 340, 'fishing_super', 20.00, 35, 70, NULL, NULL),
('route-8', 536, 'walking', 40.00, 30, 33, 'Spring', NULL),
('route-8', 536, 'walking', 40.00, 30, 33, 'Summer', NULL),
('route-8', 536, 'walking', 40.00, 30, 33, 'Autumn', NULL),
('route-8', 537, 'surfing', 5.00, 15, 40, NULL, NULL),
('route-8', 616, 'walking', 40.00, 30, 33, 'Spring', NULL),
('route-8', 616, 'walking', 40.00, 30, 33, 'Summer', NULL),
('route-8', 616, 'walking', 40.00, 30, 33, 'Autumn', NULL),
('route-8', 618, 'fishing_super', 80.00, 35, 60, NULL, NULL),
('route-8', 618, 'surfing', 195.00, 15, 40, NULL, NULL),
('route-8', 618, 'walking', 20.00, 31, 32, 'Spring', NULL),
('route-8', 618, 'walking', 20.00, 31, 32, 'Summer', NULL),
('route-8', 618, 'walking', 20.00, 31, 32, 'Autumn', NULL),
('moor-of-icirrus', 339, 'fishing_super', 100.00, 35, 60, NULL, NULL),
('moor-of-icirrus', 340, 'fishing_super', 20.00, 35, 70, NULL, NULL),
('moor-of-icirrus', 536, 'walking', 40.00, 30, 33, 'Spring', NULL),
('moor-of-icirrus', 536, 'walking', 40.00, 30, 33, 'Summer', NULL),
('moor-of-icirrus', 536, 'walking', 40.00, 30, 33, 'Autumn', NULL),
('moor-of-icirrus', 537, 'surfing', 5.00, 15, 40, NULL, NULL),
('moor-of-icirrus', 616, 'walking', 40.00, 30, 33, 'Spring', NULL),
('moor-of-icirrus', 616, 'walking', 40.00, 30, 33, 'Summer', NULL),
('moor-of-icirrus', 616, 'walking', 40.00, 30, 33, 'Autumn', NULL),
('moor-of-icirrus', 618, 'fishing_super', 80.00, 35, 60, NULL, NULL),
('moor-of-icirrus', 618, 'surfing', 195.00, 15, 40, NULL, NULL),
('moor-of-icirrus', 618, 'walking', 20.00, 31, 32, 'Spring', NULL),
('moor-of-icirrus', 618, 'walking', 20.00, 31, 32, 'Summer', NULL),
('moor-of-icirrus', 618, 'walking', 20.00, 31, 32, 'Autumn', NULL),
('route-9', 510, 'walking', 20.00, 33, 38, NULL, NULL),
('route-9', 531, 'walking', 80.00, 31, 34, NULL, NULL),
('route-9', 569, 'walking', 40.00, 31, 38, NULL, NULL),
('route-9', 572, 'walking', 40.00, 32, 37, NULL, NULL),
('route-9', 573, 'walking', 5.00, 34, 34, NULL, NULL),
('route-9', 578, 'walking', 60.00, 31, 39, NULL, NULL),
('route-9', 579, 'walking', 5.00, 34, 34, NULL, NULL),
('route-9', 587, 'walking', 10.00, 32, 32, NULL, NULL),
('route-9', 624, 'walking', 40.00, 31, 39, NULL, NULL),
('route-10', 507, 'walking', 60.00, 33, 39, NULL, NULL),
('route-10', 508, 'walking', 5.00, 36, 36, NULL, NULL),
('route-10', 531, 'walking', 80.00, 33, 36, NULL, NULL),
('route-10', 538, 'walking', 20.00, 33, 41, NULL, NULL),
('route-10', 539, 'walking', 5.00, 36, 36, NULL, NULL),
('route-10', 587, 'walking', 10.00, 34, 34, NULL, NULL),
('route-10', 590, 'walking', 10.00, 34, 35, NULL, NULL),
('route-10', 590, 'static', 200.00, 30, 30, NULL, NULL),
('route-10', 591, 'walking', 10.00, 39, 40, NULL, NULL),
('route-10', 591, 'static', 200.00, 40, 40, NULL, NULL),
('route-10', 626, 'walking', 40.00, 34, 40, NULL, NULL),
('route-10', 627, 'walking', 60.00, 34, 41, NULL, NULL),
('victory-road', 611, 'walking', 5.00, 40, 40, NULL, NULL),
('victory-road', 619, 'walking', 55.00, 38, 41, NULL, NULL),
('victory-road', 627, 'walking', 35.00, 37, 40, NULL, NULL),
('victory-road', 631, 'walking', 45.00, 37, 40, NULL, NULL),
('victory-road', 60, 'fishing_super', 45.00, 35, 55, NULL, NULL),
('victory-road', 61, 'fishing_super', 70.00, 35, 70, NULL, NULL),
('victory-road', 62, 'fishing_super', 5.00, 45, 70, NULL, NULL),
('victory-road', 525, 'walking', 110.00, 37, 41, NULL, NULL),
('victory-road', 527, 'walking', 70.00, 37, 42, NULL, NULL),
('victory-road', 530, 'walking', 400.00, 37, 42, NULL, NULL),
('victory-road', 550, 'fishing_super', 40.00, 35, 60, NULL, NULL),
('victory-road', 550, 'surfing', 100.00, 20, 50, NULL, NULL),
('victory-road', 632, 'walking', 160.00, 37, 42, NULL, NULL),
('victory-road', 633, 'walking', 20.00, 38, 40, NULL, NULL),
('victory-road', 10016, 'fishing_super', 40.00, 35, 55, NULL, NULL),
('victory-road', 10016, 'surfing', 100.00, 20, 45, NULL, NULL),
('victory-road', 639, 'static', 100.00, 42, 42, NULL, NULL),
('route-11', 55, 'walking', 40.00, 47, 57, NULL, NULL),
('route-11', 118, 'fishing_super', 100.00, 35, 60, NULL, NULL),
('route-11', 119, 'fishing_super', 20.00, 35, 70, NULL, NULL),
('route-11', 207, 'walking', 30.00, 47, 60, NULL, NULL),
('route-11', 335, 'walking', 20.00, 48, 58, NULL, NULL),
('route-11', 336, 'walking', 20.00, 48, 58, NULL, NULL),
('route-11', 418, 'surfing', 90.00, 25, 60, NULL, NULL),
('route-11', 419, 'surfing', 10.00, 35, 70, NULL, NULL),
('route-11', 472, 'walking', 5.00, 50, 50, NULL, NULL),
('route-11', 531, 'walking', 85.00, 47, 50, NULL, NULL),
('route-11', 550, 'fishing_super', 40.00, 35, 60, NULL, NULL),
('route-11', 550, 'surfing', 30.00, 25, 60, NULL, NULL),
('route-11', 587, 'walking', 10.00, 48, 48, NULL, NULL),
('route-11', 588, 'walking', 10.00, 49, 59, NULL, NULL),
('route-11', 591, 'walking', 20.00, 48, 58, NULL, NULL),
('route-11', 624, 'walking', 5.00, 50, 50, NULL, NULL),
('route-11', 625, 'walking', 5.00, 60, 60, NULL, NULL),
('route-11', 627, 'walking', 25.00, 48, 50, NULL, NULL),
('route-11', 628, 'walking', 25.00, 58, 60, NULL, NULL),
('route-11', 10016, 'fishing_super', 40.00, 35, 55, NULL, NULL),
('route-11', 10016, 'surfing', 70.00, 25, 55, NULL, NULL),
('village-bridge', 55, 'walking', 50.00, 47, 59, NULL, NULL),
('village-bridge', 131, 'surfing', 5.00, 35, 70, NULL, NULL),
('village-bridge', 318, 'fishing_super', 100.00, 35, 60, NULL, NULL),
('village-bridge', 319, 'fishing_super', 20.00, 35, 70, NULL, NULL),
('village-bridge', 335, 'walking', 30.00, 48, 60, NULL, NULL),
('village-bridge', 336, 'walking', 30.00, 48, 60, NULL, NULL),
('village-bridge', 400, 'walking', 50.00, 47, 59, NULL, NULL),
('village-bridge', 531, 'walking', 90.00, 47, 50, NULL, NULL),
('village-bridge', 550, 'fishing_super', 40.00, 35, 60, NULL, NULL),
('village-bridge', 550, 'surfing', 95.00, 25, 70, NULL, NULL),
('village-bridge', 587, 'walking', 10.00, 48, 48, NULL, NULL),
('village-bridge', 627, 'walking', 20.00, 48, 50, NULL, NULL),
('village-bridge', 628, 'walking', 20.00, 58, 60, NULL, NULL),
('village-bridge', 10016, 'fishing_super', 40.00, 35, 55, NULL, NULL),
('village-bridge', 10016, 'surfing', 100.00, 25, 55, NULL, NULL),
('route-12', 11, 'walking', 20.00, 48, 59, NULL, NULL),
('route-12', 12, 'walking', 5.00, 50, 50, NULL, NULL),
('route-12', 78, 'walking', 20.00, 49, 59, NULL, NULL),
('route-12', 127, 'walking', 10.00, 50, 60, NULL, NULL),
('route-12', 191, 'walking', 40.00, 47, 57, NULL, NULL),
('route-12', 192, 'walking', 5.00, 50, 50, NULL, NULL),
('route-12', 206, 'walking', 10.00, 48, 59, NULL, NULL),
('route-12', 214, 'walking', 10.00, 50, 60, NULL, NULL),
('route-12', 415, 'walking', 40.00, 47, 57, NULL, NULL),
('route-12', 416, 'walking', 5.00, 50, 50, NULL, NULL),
('route-12', 421, 'walking', 20.00, 48, 58, NULL, NULL),
('route-12', 520, 'walking', 30.00, 48, 60, NULL, NULL),
('route-12', 521, 'walking', 5.00, 50, 50, NULL, NULL),
('route-12', 531, 'walking', 70.00, 47, 50, NULL, NULL),
('route-12', 587, 'walking', 10.00, 48, 48, NULL, NULL),
('route-13', 42, 'walking', 30.00, 48, 60, NULL, NULL),
('route-13', 90, 'fishing_super', 80.00, 35, 60, NULL, NULL),
('route-13', 91, 'fishing_super', 5.00, 45, 70, NULL, NULL),
('route-13', 98, 'fishing_super', 55.00, 35, 55, NULL, NULL),
('route-13', 99, 'fishing_super', 15.00, 35, 70, NULL, NULL),
('route-13', 114, 'walking', 50.00, 47, 59, NULL, NULL),
('route-13', 120, 'surfing', 90.00, 25, 60, NULL, NULL),
('route-13', 121, 'surfing', 10.00, 35, 70, NULL, NULL),
('route-13', 169, 'walking', 5.00, 50, 50, NULL, NULL),
('route-13', 222, 'surfing', 30.00, 25, 60, NULL, NULL),
('route-13', 277, 'walking', 40.00, 47, 57, NULL, NULL),
('route-13', 278, 'surfing', 60.00, 25, 55, NULL, NULL),
('route-13', 279, 'surfing', 10.00, 25, 55, NULL, NULL),
('route-13', 337, 'walking', 20.00, 48, 58, NULL, NULL),
('route-13', 338, 'walking', 20.00, 48, 58, NULL, NULL),
('route-13', 359, 'walking', 20.00, 48, 60, NULL, NULL),
('route-13', 370, 'fishing_super', 45.00, 35, 60, NULL, NULL),
('route-13', 426, 'walking', 20.00, 49, 59, NULL, NULL),
('route-13', 465, 'walking', 5.00, 50, 50, NULL, NULL),
('route-13', 531, 'walking', 80.00, 47, 50, NULL, NULL),
('route-13', 587, 'walking', 10.00, 48, 48, NULL, NULL),
('undella-town', 90, 'fishing_super', 80.00, 35, 60, NULL, NULL),
('undella-town', 91, 'fishing_super', 5.00, 45, 70, NULL, NULL),
('undella-town', 222, 'surfing', 30.00, 25, 60, NULL, NULL),
('undella-town', 223, 'fishing_super', 55.00, 35, 55, NULL, NULL),
('undella-town', 224, 'fishing_super', 15.00, 35, 70, NULL, NULL),
('undella-town', 226, 'surfing', 10.00, 35, 70, NULL, NULL),
('undella-town', 278, 'surfing', 60.00, 25, 55, NULL, NULL),
('undella-town', 279, 'surfing', 10.00, 25, 55, NULL, NULL),
('undella-town', 320, 'surfing', 60.00, 25, 60, NULL, NULL),
('undella-town', 370, 'fishing_super', 45.00, 35, 60, NULL, NULL),
('undella-town', 458, 'surfing', 30.00, 25, 55, NULL, NULL),
('undella-bay', 90, 'fishing_super', 80.00, 35, 60, NULL, NULL),
('undella-bay', 91, 'fishing_super', 5.00, 45, 70, NULL, NULL),
('undella-bay', 223, 'fishing_super', 55.00, 35, 55, NULL, NULL),
('undella-bay', 224, 'fishing_super', 15.00, 35, 70, NULL, NULL),
('undella-bay', 226, 'surfing', 5.00, 35, 70, 'Spring', NULL),
('undella-bay', 226, 'surfing', 5.00, 35, 70, 'Summer', NULL),
('undella-bay', 226, 'surfing', 5.00, 35, 70, 'Autumn', NULL),
('undella-bay', 278, 'surfing', 60.00, 25, 55, NULL, NULL),
('undella-bay', 279, 'surfing', 10.00, 25, 55, NULL, NULL),
('undella-bay', 320, 'surfing', 60.00, 25, 60, NULL, NULL),
('undella-bay', 320, 'surfing', 30.00, 25, 60, 'Spring', NULL),
('undella-bay', 320, 'surfing', 30.00, 25, 60, 'Summer', NULL),
('undella-bay', 320, 'surfing', 30.00, 25, 60, 'Autumn', NULL),
('undella-bay', 321, 'surfing', 5.00, 35, 70, 'Winter', NULL),
('undella-bay', 321, 'surfing', 5.00, 35, 70, 'Spring', NULL),
('undella-bay', 321, 'surfing', 5.00, 35, 70, 'Summer', NULL),
('undella-bay', 321, 'surfing', 5.00, 35, 70, 'Autumn', NULL),
('undella-bay', 363, 'surfing', 30.00, 25, 55, 'Winter', NULL),
('undella-bay', 364, 'surfing', 30.00, 25, 60, 'Winter', NULL),
('undella-bay', 365, 'surfing', 5.00, 35, 70, 'Winter', NULL),
('undella-bay', 370, 'fishing_super', 45.00, 35, 60, NULL, NULL),
('undella-bay', 458, 'surfing', 30.00, 25, 55, 'Spring', NULL),
('undella-bay', 458, 'surfing', 30.00, 25, 55, 'Summer', NULL),
('undella-bay', 458, 'surfing', 30.00, 25, 55, 'Autumn', NULL),
('route-14', 39, 'walking', 40.00, 48, 58, NULL, NULL),
('route-14', 40, 'walking', 5.00, 50, 50, NULL, NULL),
('route-14', 55, 'walking', 40.00, 47, 57, NULL, NULL),
('route-14', 118, 'fishing_super', 100.00, 35, 60, NULL, NULL),
('route-14', 119, 'fishing_super', 20.00, 35, 70, NULL, NULL),
('route-14', 213, 'walking', 10.00, 49, 59, NULL, NULL),
('route-14', 334, 'walking', 20.00, 49, 59, NULL, NULL),
('route-14', 357, 'walking', 30.00, 48, 60, NULL, NULL),
('route-14', 418, 'surfing', 90.00, 25, 60, NULL, NULL),
('route-14', 419, 'surfing', 10.00, 35, 70, NULL, NULL),
('route-14', 426, 'walking', 20.00, 49, 59, NULL, NULL),
('route-14', 531, 'walking', 85.00, 47, 50, NULL, NULL),
('route-14', 550, 'fishing_super', 40.00, 35, 60, NULL, NULL),
('route-14', 550, 'surfing', 30.00, 25, 60, NULL, NULL),
('route-14', 587, 'walking', 10.00, 48, 48, NULL, NULL),
('route-14', 606, 'walking', 20.00, 48, 60, NULL, NULL),
('route-14', 619, 'walking', 10.00, 49, 49, NULL, NULL),
('route-14', 620, 'walking', 10.00, 59, 59, NULL, NULL),
('route-14', 10016, 'fishing_super', 40.00, 35, 55, NULL, NULL),
('route-14', 10016, 'surfing', 70.00, 25, 55, NULL, NULL),
('abundant-shrine', 37, 'walking', 40.00, 47, 57, NULL, NULL),
('abundant-shrine', 38, 'walking', 5.00, 50, 50, NULL, NULL),
('abundant-shrine', 79, 'surfing', 90.00, 25, 60, NULL, NULL),
('abundant-shrine', 80, 'surfing', 5.00, 35, 70, NULL, NULL),
('abundant-shrine', 118, 'fishing_super', 100.00, 35, 60, NULL, NULL),
('abundant-shrine', 119, 'fishing_super', 20.00, 35, 70, NULL, NULL),
('abundant-shrine', 164, 'walking', 30.00, 48, 60, NULL, NULL),
('abundant-shrine', 199, 'surfing', 5.00, 35, 70, NULL, NULL),
('abundant-shrine', 200, 'walking', 10.00, 48, 58, NULL, NULL),
('abundant-shrine', 234, 'walking', 20.00, 48, 58, NULL, NULL),
('abundant-shrine', 358, 'walking', 60.00, 47, 59, NULL, NULL),
('abundant-shrine', 429, 'walking', 5.00, 50, 50, NULL, NULL),
('abundant-shrine', 437, 'walking', 20.00, 48, 60, NULL, NULL),
('abundant-shrine', 531, 'walking', 75.00, 47, 50, NULL, NULL),
('abundant-shrine', 548, 'walking', 20.00, 48, 58, NULL, NULL),
('abundant-shrine', 549, 'walking', 5.00, 50, 50, NULL, NULL),
('abundant-shrine', 550, 'fishing_super', 40.00, 35, 60, NULL, NULL),
('abundant-shrine', 550, 'surfing', 30.00, 25, 60, NULL, NULL),
('abundant-shrine', 587, 'walking', 10.00, 48, 48, NULL, NULL),
('abundant-shrine', 645, 'static', 100.00, 70, 70, NULL, NULL),
('abundant-shrine', 10016, 'fishing_super', 40.00, 35, 55, NULL, NULL),
('abundant-shrine', 10016, 'surfing', 70.00, 25, 55, NULL, NULL),
('route-15', 22, 'walking', 60.00, 48, 60, NULL, NULL),
('route-15', 105, 'walking', 40.00, 47, 57, NULL, NULL),
('route-15', 115, 'walking', 20.00, 49, 59, NULL, NULL),
('route-15', 207, 'walking', 25.00, 47, 57, NULL, NULL),
('route-15', 247, 'walking', 20.00, 48, 59, NULL, NULL),
('route-15', 248, 'walking', 5.00, 50, 50, NULL, NULL),
('route-15', 472, 'walking', 5.00, 50, 50, NULL, NULL),
('route-15', 505, 'walking', 5.00, 60, 60, NULL, NULL),
('route-15', 531, 'walking', 75.00, 47, 50, NULL, NULL),
('route-15', 538, 'walking', 30.00, 48, 59, NULL, NULL),
('route-15', 539, 'walking', 5.00, 50, 50, NULL, NULL),
('route-15', 587, 'walking', 10.00, 48, 48, NULL, NULL),
('route-16', 510, 'walking', 40.00, 20, 25, NULL, NULL),
('route-16', 531, 'walking', 85.00, 19, 22, NULL, NULL),
('route-16', 568, 'walking', 40.00, 19, 24, NULL, NULL),
('route-16', 572, 'walking', 60.00, 19, 25, NULL, NULL),
('route-16', 573, 'walking', 5.00, 22, 22, NULL, NULL),
('route-16', 577, 'walking', 60.00, 19, 25, NULL, NULL),
('route-16', 587, 'walking', 10.00, 20, 20, NULL, NULL),
('lostlorn-forest', 118, 'fishing_super', 120.00, 35, 70, NULL, NULL),
('lostlorn-forest', 511, 'walking', 10.00, 20, 20, NULL, NULL),
('lostlorn-forest', 513, 'walking', 10.00, 20, 20, NULL, NULL),
('lostlorn-forest', 515, 'walking', 10.00, 20, 20, NULL, NULL),
('lostlorn-forest', 520, 'walking', 30.00, 21, 25, NULL, NULL),
('lostlorn-forest', 521, 'walking', 5.00, 22, 22, NULL, NULL),
('lostlorn-forest', 531, 'walking', 45.00, 19, 21, NULL, NULL),
('lostlorn-forest', 541, 'walking', 70.00, 20, 25, NULL, NULL),
('lostlorn-forest', 542, 'walking', 5.00, 22, 22, NULL, NULL),
('lostlorn-forest', 543, 'walking', 30.00, 20, 24, NULL, NULL),
('lostlorn-forest', 548, 'walking', 70.00, 19, 25, NULL, NULL),
('lostlorn-forest', 549, 'walking', 5.00, 22, 22, NULL, NULL),
('lostlorn-forest', 550, 'fishing_super', 40.00, 35, 60, NULL, NULL),
('lostlorn-forest', 550, 'surfing', 100.00, 5, 20, NULL, NULL),
('lostlorn-forest', 571, 'static', 100.00, 25, 25, NULL, NULL),
('lostlorn-forest', 587, 'walking', 10.00, 20, 20, NULL, NULL),
('lostlorn-forest', 10016, 'fishing_super', 40.00, 35, 55, NULL, NULL),
('lostlorn-forest', 10016, 'surfing', 100.00, 5, 20, NULL, NULL),
('route-17', 116, 'fishing_super', 55.00, 35, 55, NULL, NULL),
('route-17', 117, 'fishing_super', 40.00, 35, 60, NULL, NULL),
('route-17', 211, 'fishing_super', 40.00, 35, 60, NULL, NULL),
('route-17', 230, 'fishing_super', 5.00, 45, 70, NULL, NULL),
('route-17', 456, 'fishing_super', 45.00, 35, 55, NULL, NULL),
('route-17', 457, 'fishing_super', 15.00, 35, 70, NULL, NULL),
('route-17', 592, 'surfing', 100.00, 5, 15, NULL, NULL),
('route-17', 593, 'surfing', 5.00, 5, 20, NULL, NULL),
('route-17', 594, 'surfing', 95.00, 5, 20, NULL, NULL),
('route-18', 116, 'fishing_super', 55.00, 35, 55, NULL, NULL),
('route-18', 117, 'fishing_super', 40.00, 35, 60, NULL, NULL),
('route-18', 170, 'fishing_super', 1.00, 35, 55, NULL, NULL),
('route-18', 211, 'fishing_super', 40.00, 35, 60, NULL, NULL),
('route-18', 230, 'fishing_super', 5.00, 45, 70, NULL, NULL),
('route-18', 456, 'fishing_super', 44.00, 35, 55, NULL, NULL),
('route-18', 457, 'fishing_super', 15.00, 35, 70, NULL, NULL),
('route-18', 505, 'walking', 40.00, 28, 34, NULL, NULL),
('route-18', 531, 'walking', 95.00, 28, 31, NULL, NULL),
('route-18', 538, 'walking', 20.00, 29, 35, NULL, NULL),
('route-18', 539, 'walking', 5.00, 31, 31, NULL, NULL),
('route-18', 557, 'walking', 30.00, 30, 31, NULL, NULL),
('route-18', 558, 'walking', 30.00, 34, 35, NULL, NULL),
('route-18', 559, 'walking', 80.00, 28, 35, NULL, NULL),
('route-18', 592, 'surfing', 100.00, 5, 15, NULL, NULL),
('route-18', 593, 'surfing', 5.00, 5, 20, NULL, NULL),
('route-18', 594, 'surfing', 95.00, 5, 20, NULL, NULL),
('route-18', 636, 'gift', 100.00, 1, 1, NULL, NULL),
('p2-laboratory', 116, 'fishing_super', 55.00, 35, 55, NULL, NULL),
('p2-laboratory', 117, 'fishing_super', 40.00, 35, 60, NULL, NULL),
('p2-laboratory', 211, 'fishing_super', 40.00, 35, 60, NULL, NULL),
('p2-laboratory', 230, 'fishing_super', 5.00, 45, 70, NULL, NULL),
('p2-laboratory', 456, 'fishing_super', 45.00, 35, 55, NULL, NULL),
('p2-laboratory', 457, 'fishing_super', 15.00, 35, 70, NULL, NULL),
('p2-laboratory', 505, 'walking', 36.00, 28, 31, NULL, NULL),
('p2-laboratory', 507, 'walking', 36.00, 28, 31, NULL, NULL),
('p2-laboratory', 508, 'walking', 5.00, 31, 31, NULL, NULL),
('p2-laboratory', 531, 'walking', 95.00, 28, 31, NULL, NULL),
('p2-laboratory', 559, 'walking', 14.00, 29, 31, NULL, NULL),
('p2-laboratory', 592, 'surfing', 100.00, 5, 15, NULL, NULL),
('p2-laboratory', 593, 'surfing', 5.00, 5, 20, NULL, NULL),
('p2-laboratory', 594, 'surfing', 95.00, 5, 20, NULL, NULL),
('p2-laboratory', 599, 'walking', 14.00, 29, 31, NULL, NULL),
('challengers-cave', 75, 'walking', 60.00, 47, 49, NULL, NULL),
('challengers-cave', 108, 'walking', 45.00, 49, 50, NULL, NULL),
('challengers-cave', 302, 'walking', 30.00, 49, 49, NULL, NULL),
('challengers-cave', 303, 'walking', 30.00, 49, 49, NULL, NULL),
('challengers-cave', 525, 'walking', 60.00, 48, 48, NULL, NULL),
('challengers-cave', 527, 'walking', 60.00, 47, 47, NULL, NULL),
('challengers-cave', 530, 'walking', 300.00, 47, 50, NULL, NULL),
('challengers-cave', 447, 'walking', 15.00, 49, 50, NULL, NULL),
('challengers-cave', 60, 'fishing_super', 45.00, 35, 55, NULL, NULL),
('challengers-cave', 61, 'fishing_super', 70.00, 35, 70, NULL, NULL),
('challengers-cave', 62, 'fishing_super', 5.00, 45, 70, NULL, NULL),
('challengers-cave', 550, 'fishing_super', 40.00, 35, 60, NULL, NULL),
('challengers-cave', 550, 'surfing', 100.00, 25, 70, NULL, NULL),
('challengers-cave', 10016, 'fishing_super', 40.00, 35, 55, NULL, NULL),
('challengers-cave', 10016, 'surfing', 100.00, 25, 55, NULL, NULL),
('giant-chasm', 42, 'walking', 70.00, 47, 60, NULL, NULL),
('giant-chasm', 114, 'walking', 50.00, 47, 59, NULL, NULL),
('giant-chasm', 169, 'walking', 5.00, 50, 50, NULL, NULL),
('giant-chasm', 277, 'walking', 40.00, 47, 57, NULL, NULL),
('giant-chasm', 337, 'walking', 60.00, 48, 65, NULL, NULL),
('giant-chasm', 338, 'walking', 60.00, 48, 65, NULL, NULL),
('giant-chasm', 359, 'walking', 20.00, 48, 60, NULL, NULL),
('giant-chasm', 426, 'walking', 20.00, 49, 59, NULL, NULL),
('giant-chasm', 465, 'walking', 5.00, 50, 50, NULL, NULL),
('giant-chasm', 531, 'walking', 165.00, 47, 55, NULL, NULL),
('giant-chasm', 587, 'walking', 10.00, 48, 48, NULL, NULL),
('giant-chasm', 60, 'fishing_super', 90.00, 35, 55, NULL, NULL),
('giant-chasm', 61, 'fishing_super', 140.00, 35, 70, NULL, NULL),
('giant-chasm', 62, 'fishing_super', 10.00, 45, 70, NULL, NULL),
('giant-chasm', 86, 'surfing', 180.00, 25, 60, NULL, NULL),
('giant-chasm', 87, 'surfing', 20.00, 35, 70, NULL, NULL),
('giant-chasm', 124, 'walking', 20.00, 48, 60, NULL, NULL),
('giant-chasm', 215, 'walking', 20.00, 48, 58, NULL, NULL),
('giant-chasm', 221, 'walking', 100.00, 47, 64, NULL, NULL),
('giant-chasm', 225, 'walking', 20.00, 48, 58, NULL, NULL),
('giant-chasm', 525, 'walking', 10.00, 49, 59, NULL, NULL),
('giant-chasm', 530, 'walking', 200.00, 47, 60, NULL, NULL),
('giant-chasm', 550, 'fishing_super', 80.00, 35, 60, NULL, NULL),
('giant-chasm', 550, 'surfing', 60.00, 25, 60, NULL, NULL),
('giant-chasm', 10016, 'fishing_super', 80.00, 35, 55, NULL, NULL),
('giant-chasm', 10016, 'surfing', 140.00, 25, 55, NULL, NULL),
('giant-chasm', 35, 'walking', 60.00, 52, 64, NULL, NULL),
('giant-chasm', 36, 'walking', 5.00, 55, 55, NULL, NULL),
('giant-chasm', 132, 'walking', 30.00, 53, 65, NULL, NULL),
('giant-chasm', 375, 'walking', 20.00, 53, 65, NULL, NULL),
('giant-chasm', 376, 'walking', 5.00, 55, 55, NULL, NULL),
('giant-chasm', 473, 'walking', 5.00, 55, 55, NULL, NULL),
('giant-chasm', 646, 'static', 100.00, 75, 75, NULL, NULL),
('mistralton-cave', 525, 'walking', 50.00, 28, 31, NULL, NULL),
('mistralton-cave', 527, 'walking', 30.00, 28, 30, NULL, NULL),
('mistralton-cave', 529, 'walking', 100.00, 28, 31, NULL, NULL),
('mistralton-cave', 610, 'walking', 20.00, 30, 31, NULL, NULL),
('mistralton-cave', 638, 'static', 100.00, 42, 42, NULL, NULL);

INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions, version_exclusive)
SELECT r.id, e.dex, e.method, e.rate, e.lmin, e.lmax, NULLIF(e.cond, ''), NULLIF(e.ver_excl, '')
FROM _enc e JOIN public.routes r ON r.slug = e.slug AND r.game_id = 'a3b4c5d6-e7f8-9012-a345-678901234567';

DROP TABLE _enc;

-- ===========================================
-- STEP 5: BOSS TRAINERS
-- ===========================================

-- Cilan (Gym Leader)
DO $$
DECLARE
  v_trainer_id UUID;
  v_route_id UUID;
BEGIN
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'striaton-city' AND game_id = 'a3b4c5d6-e7f8-9012-a345-678901234567';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
  VALUES (v_route_id, 'Cilan', 'Gym Leader', true, 'gym_leader', 14, 1, 'Grass-type. Fought if you chose Oshawott. Trio Badge.')
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 506, 12, 1, '["Tackle", "Bite"]'::jsonb, 'Vital Spirit', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 511, 14, 2, '["Vine Whip", "Work Up"]'::jsonb, 'Gluttony', NULL, NULL);
END $$;

-- Chili (Gym Leader)
DO $$
DECLARE
  v_trainer_id UUID;
  v_route_id UUID;
BEGIN
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'striaton-city' AND game_id = 'a3b4c5d6-e7f8-9012-a345-678901234567';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
  VALUES (v_route_id, 'Chili', 'Gym Leader', true, 'gym_leader', 14, 2, 'Fire-type. Fought if you chose Snivy. Trio Badge.')
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 506, 12, 1, '["Tackle", "Bite"]'::jsonb, 'Vital Spirit', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 513, 14, 2, '["Incinerate", "Work Up"]'::jsonb, 'Gluttony', NULL, NULL);
END $$;

-- Cress (Gym Leader)
DO $$
DECLARE
  v_trainer_id UUID;
  v_route_id UUID;
BEGIN
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'striaton-city' AND game_id = 'a3b4c5d6-e7f8-9012-a345-678901234567';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
  VALUES (v_route_id, 'Cress', 'Gym Leader', true, 'gym_leader', 14, 3, 'Water-type. Fought if you chose Tepig. Trio Badge.')
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 506, 12, 1, '["Tackle", "Bite"]'::jsonb, 'Vital Spirit', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 515, 14, 2, '["Water Gun", "Work Up"]'::jsonb, 'Gluttony', NULL, NULL);
END $$;

-- Lenora (Gym Leader)
DO $$
DECLARE
  v_trainer_id UUID;
  v_route_id UUID;
BEGIN
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'nacrene-city' AND game_id = 'a3b4c5d6-e7f8-9012-a345-678901234567';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
  VALUES (v_route_id, 'Lenora', 'Gym Leader', true, 'gym_leader', 20, 1, 'Normal-type specialist. Basic Badge.')
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 507, 18, 1, '["Bite", "Retaliate", "Take Down", "Leer"]'::jsonb, 'Intimidate', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 505, 20, 2, '["Hypnosis", "Retaliate", "Crunch", "Leer"]'::jsonb, 'Illuminate', NULL, NULL);
END $$;

-- Burgh (Gym Leader)
DO $$
DECLARE
  v_trainer_id UUID;
  v_route_id UUID;
BEGIN
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'castelia-city' AND game_id = 'a3b4c5d6-e7f8-9012-a345-678901234567';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
  VALUES (v_route_id, 'Burgh', 'Gym Leader', true, 'gym_leader', 23, 1, 'Bug-type specialist. Insect Badge.')
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 544, 21, 1, '["Poison Tail", "Screech", "Pursuit", "Bug Bite"]'::jsonb, 'Poison Point', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 557, 21, 2, '["Faint Attack", "Smack Down", "Bug Bite", "Sand-Attack"]'::jsonb, 'Sturdy', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 542, 23, 3, '["Razor Leaf", "String Shot", "Bug Bite", "Cut"]'::jsonb, 'Swarm', NULL, NULL);
END $$;

-- Elesa (Gym Leader)
DO $$
DECLARE
  v_trainer_id UUID;
  v_route_id UUID;
BEGIN
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'nimbasa-city' AND game_id = 'a3b4c5d6-e7f8-9012-a345-678901234567';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
  VALUES (v_route_id, 'Elesa', 'Gym Leader', true, 'gym_leader', 27, 1, 'Electric-type specialist. Bolt Badge.')
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 587, 25, 1, '["Volt Switch", "Aerial Ace", "Quick Attack", "Pursuit"]'::jsonb, 'Static', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 587, 25, 2, '["Volt Switch", "Aerial Ace", "Quick Attack", "Pursuit"]'::jsonb, 'Static', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 523, 27, 3, '["Volt Switch", "Flame Charge", "Spark", "Quick Attack"]'::jsonb, 'Lightning Rod', NULL, NULL);
END $$;

-- Clay (Gym Leader)
DO $$
DECLARE
  v_trainer_id UUID;
  v_route_id UUID;
BEGIN
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'driftveil-city' AND game_id = 'a3b4c5d6-e7f8-9012-a345-678901234567';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
  VALUES (v_route_id, 'Clay', 'Gym Leader', true, 'gym_leader', 31, 1, 'Ground-type specialist. Quake Badge.')
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 552, 29, 1, '["Crunch", "Torment", "Bulldoze", "Swagger"]'::jsonb, 'Intimidate', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 536, 29, 2, '["Muddy Water", "BubbleBeam", "Mud Shot", "Aqua Ring"]'::jsonb, 'Swift Swim', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 530, 31, 3, '["Bulldoze", "Slash", "Metal Claw", "Hone Claws"]'::jsonb, 'Sand Rush', NULL, NULL);
END $$;

-- Skyla (Gym Leader)
DO $$
DECLARE
  v_trainer_id UUID;
  v_route_id UUID;
BEGIN
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'mistralton-city' AND game_id = 'a3b4c5d6-e7f8-9012-a345-678901234567';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
  VALUES (v_route_id, 'Skyla', 'Gym Leader', true, 'gym_leader', 35, 1, 'Flying-type specialist. Jet Badge.')
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 528, 33, 1, '["Heart Stamp", "Acrobatics", "Assurance", "Attract"]'::jsonb, 'Unaware', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 521, 33, 2, '["Air Slash", "Razor Wind", "Quick Attack", "Leer"]'::jsonb, 'Super Luck', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 581, 35, 3, '["Air Slash", "BubbleBeam", "Aerial Ace", "FeatherDance"]'::jsonb, 'Keen Eye', NULL, NULL);
END $$;

-- Brycen (Gym Leader)
DO $$
DECLARE
  v_trainer_id UUID;
  v_route_id UUID;
BEGIN
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'icirrus-city' AND game_id = 'a3b4c5d6-e7f8-9012-a345-678901234567';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
  VALUES (v_route_id, 'Brycen', 'Gym Leader', true, 'gym_leader', 39, 1, 'Ice-type specialist. Freeze Badge.')
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 583, 37, 1, '["Frost Breath", "Acid Armor", "Astonish", "Mirror Shot"]'::jsonb, 'Ice Body', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 615, 37, 2, '["Frost Breath", "Aurora Beam", "Reflect", "Rapid Spin"]'::jsonb, 'Levitate', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 614, 39, 3, '["Icicle Crash", "Brine", "Swagger", "Slash"]'::jsonb, 'Snow Cloak', NULL, NULL);
END $$;

-- Shauntal (Elite Four)
DO $$
DECLARE
  v_trainer_id UUID;
  v_route_id UUID;
BEGIN
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'pokemon-league' AND game_id = 'a3b4c5d6-e7f8-9012-a345-678901234567';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
  VALUES (v_route_id, 'Shauntal', 'Elite Four', true, 'elite_four', 50, 1, 'Ghost-type specialist.')
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 563, 48, 1, '["Shadow Ball", "Psychic", "Will-O-Wisp", "Grass Knot"]'::jsonb, 'Mummy', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 593, 48, 2, '["Shadow Ball", "Surf", "Energy Ball", "Brine"]'::jsonb, 'Cursed Body', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 623, 48, 3, '["Shadow Punch", "Earthquake", "Brick Break", "Curse"]'::jsonb, 'Iron Fist', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 609, 50, 4, '["Shadow Ball", "Fire Blast", "Energy Ball", "Psychic"]'::jsonb, 'Flame Body', NULL, NULL);
END $$;

-- Marshal (Elite Four)
DO $$
DECLARE
  v_trainer_id UUID;
  v_route_id UUID;
BEGIN
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'pokemon-league' AND game_id = 'a3b4c5d6-e7f8-9012-a345-678901234567';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
  VALUES (v_route_id, 'Marshal', 'Elite Four', true, 'elite_four', 50, 2, 'Fighting-type specialist.')
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 538, 48, 1, '["Storm Throw", "Stone Edge", "Bulldoze", "Payback"]'::jsonb, 'Guts', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 539, 48, 2, '["Karate Chop", "Retaliate", "Rock Slide", "Grass Knot"]'::jsonb, 'Sturdy', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 534, 48, 3, '["Hammer Arm", "Stone Edge", "Bulk Up", "Retaliate"]'::jsonb, 'Guts', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 620, 50, 4, '["Hi Jump Kick", "U-turn", "Rock Slide", "Retaliate"]'::jsonb, 'Inner Focus', NULL, NULL);
END $$;

-- Grimsley (Elite Four)
DO $$
DECLARE
  v_trainer_id UUID;
  v_route_id UUID;
BEGIN
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'pokemon-league' AND game_id = 'a3b4c5d6-e7f8-9012-a345-678901234567';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
  VALUES (v_route_id, 'Grimsley', 'Elite Four', true, 'elite_four', 50, 3, 'Dark-type specialist.')
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 560, 48, 1, '["Crunch", "Brick Break", "Poison Jab", "Sand-Attack"]'::jsonb, 'Moxie', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 553, 48, 2, '["Crunch", "Earthquake", "Dragon Claw", "Foul Play"]'::jsonb, 'Intimidate', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 510, 48, 3, '["Night Slash", "Fake Out", "Aerial Ace", "Attract"]'::jsonb, 'Limber', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 625, 50, 4, '["Night Slash", "X-Scissor", "Metal Claw", "Aerial Ace"]'::jsonb, 'Defiant', NULL, NULL);
END $$;

-- Caitlin (Elite Four)
DO $$
DECLARE
  v_trainer_id UUID;
  v_route_id UUID;
BEGIN
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'pokemon-league' AND game_id = 'a3b4c5d6-e7f8-9012-a345-678901234567';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
  VALUES (v_route_id, 'Caitlin', 'Elite Four', true, 'elite_four', 50, 4, 'Psychic-type specialist.')
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 579, 48, 1, '["Psychic", "Focus Blast", "Energy Ball", "Thunder"]'::jsonb, 'Magic Guard', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 518, 48, 2, '["Psychic", "Shadow Ball", "Charge Beam", "Reflect"]'::jsonb, 'Forewarn', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 561, 48, 3, '["Psychic", "Air Slash", "Shadow Ball", "Ice Beam"]'::jsonb, 'Magic Guard', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 576, 50, 4, '["Psychic", "Thunderbolt", "Shadow Ball", "Calm Mind"]'::jsonb, 'Shadow Tag', NULL, NULL);
END $$;

-- Iris (Gym Leader)
DO $$
DECLARE
  v_trainer_id UUID;
  v_route_id UUID;
BEGIN
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'opelucid-city' AND game_id = 'a3b4c5d6-e7f8-9012-a345-678901234567';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
  VALUES (v_route_id, 'Iris', 'Gym Leader', true, 'gym_leader', 43, 1, 'Dragon-type specialist. Legend Badge. White version.')
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 611, 41, 1, '["Dragon Tail", "Dragon Dance", "Assurance", "Slash"]'::jsonb, 'Rivalry', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 621, 41, 2, '["Dragon Tail", "Revenge", "Night Slash", "Crunch"]'::jsonb, 'Sheer Force', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 612, 43, 3, '["Dragon Tail", "Dragon Dance", "Slash", "Assurance"]'::jsonb, 'Mold Breaker', NULL, NULL);
END $$;

-- N (Champion)
DO $$
DECLARE
  v_trainer_id UUID;
  v_route_id UUID;
BEGIN
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'pokemon-league' AND game_id = 'a3b4c5d6-e7f8-9012-a345-678901234567';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
  VALUES (v_route_id, 'N', 'Champion', true, 'champion', 52, 5, 'Final rival battle. Team Plasma King. Reshiram in White.')
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 643, 52, 1, '["Fusion Flare", "Extrasensory", "Dragon Breath", "Hyper Beam"]'::jsonb, 'Turboblaze', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 565, 50, 2, '["Stone Edge", "Aqua Jet", "Crunch", "Shell Smash"]'::jsonb, 'Solid Rock', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 584, 50, 3, '["Blizzard", "Flash Cannon", "Frost Breath", "Hail"]'::jsonb, 'Ice Body', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 567, 50, 4, '["Acrobatics", "Stone Edge", "Dragon Claw", "Crunch"]'::jsonb, 'Defeatist', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 571, 50, 5, '["Night Slash", "Flamethrower", "Focus Blast", "Retaliate"]'::jsonb, 'Illusion', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 601, 50, 6, '["Flash Cannon", "Thunderbolt", "Hyper Beam", "Metal Sound"]'::jsonb, 'Plus', NULL, NULL);
END $$;

-- Ghetsis (Evil Team Leader)
DO $$
DECLARE
  v_trainer_id UUID;
  v_route_id UUID;
BEGIN
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'pokemon-league' AND game_id = 'a3b4c5d6-e7f8-9012-a345-678901234567';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
  VALUES (v_route_id, 'Ghetsis', 'Evil Team Leader', true, 'evil_team_leader', 54, 6, 'True final boss. Team Plasma leader.')
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 563, 52, 1, '["Shadow Ball", "Psychic", "Toxic", "Protect"]'::jsonb, 'Mummy', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 626, 52, 2, '["Head Charge", "Wild Charge", "Earthquake", "Poison Jab"]'::jsonb, 'Reckless', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 537, 52, 3, '["Muddy Water", "Earthquake", "Rain Dance", "Sludge Wave"]'::jsonb, 'Swift Swim', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 625, 52, 4, '["Night Slash", "X-Scissor", "Stone Edge", "Metal Burst"]'::jsonb, 'Defiant', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 604, 52, 5, '["Wild Charge", "Crunch", "Flamethrower", "Acrobatics"]'::jsonb, 'Levitate', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 635, 54, 6, '["Dragon Pulse", "Fire Blast", "Surf", "Focus Blast"]'::jsonb, 'Levitate', NULL, NULL);
END $$;

-- Update total_routes count
UPDATE public.games SET total_routes = 52 WHERE id = 'a3b4c5d6-e7f8-9012-a345-678901234567';
