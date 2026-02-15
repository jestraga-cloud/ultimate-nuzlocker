-- ===========================================
-- POKEMON PLATINUM: COMPLETE GAME DATA
-- Official Pokemon Game
-- Gen 4, Sinnoh region
-- ===========================================
-- Game ID: e5f6a7b8-c9d0-1234-efab-567890123456
-- ===========================================

-- STEP 1: Insert the game
INSERT INTO public.games (id, slug, name, generation, region, base_game_slug, is_romhack, sprite_url, total_routes, description)
VALUES (
  'e5f6a7b8-c9d0-1234-efab-567890123456',
  'pokemon-platinum',
  'Pokemon Platinum',
  4,
  'Sinnoh',
  NULL,
  false,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/487.png',
  77,
  'The definitive Gen 4 experience. Explore the Sinnoh region, battle Team Galactic, and face the Distortion World. Features Giratina in its Origin Forme.'
);

-- ===========================================
-- STEP 2: ALL ROUTES (77 total)
-- ===========================================

INSERT INTO public.routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items, notes) VALUES
('e5f6a7b8-c9d0-1234-efab-567890123456', 'Twinleaf Town', 'twinleaf-town', 1, 'city', true, false, false, 'Starter town. Choose Turtwig, Chimchar, or Piplup.'),
('e5f6a7b8-c9d0-1234-efab-567890123456', 'Route 201', 'route-201', 2, 'route', true, false, false, NULL),
('e5f6a7b8-c9d0-1234-efab-567890123456', 'Lake Verity', 'lake-verity', 3, 'water', true, false, false, NULL),
('e5f6a7b8-c9d0-1234-efab-567890123456', 'Route 202', 'route-202', 4, 'route', true, false, false, NULL),
('e5f6a7b8-c9d0-1234-efab-567890123456', 'Route 204 ~ South', 'route-204-south', 5, 'route', true, false, false, NULL),
('e5f6a7b8-c9d0-1234-efab-567890123456', 'Ravaged Path', 'ravaged-path', 6, 'cave', true, false, false, NULL),
('e5f6a7b8-c9d0-1234-efab-567890123456', 'Route 203', 'route-203', 7, 'route', true, false, false, NULL),
('e5f6a7b8-c9d0-1234-efab-567890123456', 'Oreburgh Gate ~ 1F', 'oreburgh-gate-1f', 8, 'cave', true, false, false, NULL),
('e5f6a7b8-c9d0-1234-efab-567890123456', 'Oreburgh Gate ~ B1F', 'oreburgh-gate-b1f', 9, 'cave', true, false, false, 'Requires Surf and Strength.'),
('e5f6a7b8-c9d0-1234-efab-567890123456', 'Oreburgh Mine ~ 1F', 'oreburgh-mine-1f', 10, 'cave', true, false, false, NULL),
('e5f6a7b8-c9d0-1234-efab-567890123456', 'Oreburgh Mine ~ B1F', 'oreburgh-mine-b1f', 11, 'cave', true, false, false, NULL),
('e5f6a7b8-c9d0-1234-efab-567890123456', 'Route 207', 'route-207', 12, 'route', true, false, false, NULL),
('e5f6a7b8-c9d0-1234-efab-567890123456', 'Route 204 ~ North', 'route-204-north', 13, 'route', true, false, false, NULL),
('e5f6a7b8-c9d0-1234-efab-567890123456', 'Valley Windworks', 'valley-windworks', 14, 'building', true, false, false, NULL),
('e5f6a7b8-c9d0-1234-efab-567890123456', 'Floaroma Meadow', 'floaroma-meadow', 15, 'route', false, false, false, 'Honey trees only. No wild encounters in PokeAPI.'),
('e5f6a7b8-c9d0-1234-efab-567890123456', 'Route 205 ~ South', 'route-205-south', 16, 'route', true, false, false, NULL),
('e5f6a7b8-c9d0-1234-efab-567890123456', 'Eterna Forest', 'eterna-forest', 17, 'route', true, false, false, NULL),
('e5f6a7b8-c9d0-1234-efab-567890123456', 'Old Chateau', 'old-chateau', 18, 'building', true, false, false, 'Requires Cut. Ghost Pokemon at night.'),
('e5f6a7b8-c9d0-1234-efab-567890123456', 'Route 205 ~ North', 'route-205-north', 19, 'route', true, false, false, NULL),
('e5f6a7b8-c9d0-1234-efab-567890123456', 'Route 211 ~ West', 'route-211-west', 20, 'route', true, false, false, NULL),
('e5f6a7b8-c9d0-1234-efab-567890123456', 'Mt. Coronet ~ Route 207 Entrance', 'mt-coronet-route-207', 21, 'cave', true, false, false, NULL),
('e5f6a7b8-c9d0-1234-efab-567890123456', 'Route 206', 'route-206', 22, 'route', true, false, false, NULL),
('e5f6a7b8-c9d0-1234-efab-567890123456', 'Wayward Cave', 'wayward-cave', 23, 'cave', true, false, false, 'Regular and secret entrance have different Pokemon.'),
('e5f6a7b8-c9d0-1234-efab-567890123456', 'Route 208', 'route-208', 24, 'route', true, false, false, NULL),
('e5f6a7b8-c9d0-1234-efab-567890123456', 'Route 209', 'route-209', 25, 'route', true, false, false, NULL),
('e5f6a7b8-c9d0-1234-efab-567890123456', 'Lost Tower', 'lost-tower', 26, 'building', true, false, false, NULL),
('e5f6a7b8-c9d0-1234-efab-567890123456', 'Solaceon Ruins', 'solaceon-ruins', 27, 'special', true, false, false, 'Unown only.'),
('e5f6a7b8-c9d0-1234-efab-567890123456', 'Route 210 ~ South', 'route-210-south', 28, 'route', true, false, false, NULL),
('e5f6a7b8-c9d0-1234-efab-567890123456', 'Route 215', 'route-215', 29, 'route', true, false, false, NULL),
('e5f6a7b8-c9d0-1234-efab-567890123456', 'Route 214', 'route-214', 30, 'route', true, false, false, NULL),
('e5f6a7b8-c9d0-1234-efab-567890123456', 'Maniac Tunnel', 'maniac-tunnel', 31, 'cave', true, false, false, NULL),
('e5f6a7b8-c9d0-1234-efab-567890123456', 'Valor Lakefront', 'valor-lakefront', 32, 'route', true, false, false, NULL),
('e5f6a7b8-c9d0-1234-efab-567890123456', 'Route 213', 'route-213', 33, 'route', true, false, false, NULL),
('e5f6a7b8-c9d0-1234-efab-567890123456', 'Route 212 ~ North', 'route-212-north', 34, 'route', true, false, false, NULL),
('e5f6a7b8-c9d0-1234-efab-567890123456', 'Trophy Garden', 'trophy-garden', 35, 'special', true, false, false, 'Daily rotating rare Pokemon.'),
('e5f6a7b8-c9d0-1234-efab-567890123456', 'Route 212 ~ South', 'route-212-south', 36, 'route', true, false, false, NULL),
('e5f6a7b8-c9d0-1234-efab-567890123456', 'Great Marsh', 'great-marsh', 37, 'special', true, false, false, 'Safari Zone. Daily rotating Pokemon with binoculars.'),
('e5f6a7b8-c9d0-1234-efab-567890123456', 'Route 210 ~ North', 'route-210-north', 38, 'route', true, false, false, NULL),
('e5f6a7b8-c9d0-1234-efab-567890123456', 'Celestic Town', 'celestic-town', 39, 'city', false, false, false, NULL),
('e5f6a7b8-c9d0-1234-efab-567890123456', 'Fuego Ironworks', 'fuego-ironworks', 40, 'building', true, false, false, NULL),
('e5f6a7b8-c9d0-1234-efab-567890123456', 'Route 219', 'route-219', 41, 'water', true, false, false, NULL),
('e5f6a7b8-c9d0-1234-efab-567890123456', 'Route 220', 'route-220', 42, 'water', true, false, false, NULL),
('e5f6a7b8-c9d0-1234-efab-567890123456', 'Route 221', 'route-221', 43, 'route', true, false, false, NULL),
('e5f6a7b8-c9d0-1234-efab-567890123456', 'Route 218', 'route-218', 44, 'route', true, false, false, NULL),
('e5f6a7b8-c9d0-1234-efab-567890123456', 'Iron Island ~ Outside', 'iron-island-outside', 45, 'water', true, false, false, NULL),
('e5f6a7b8-c9d0-1234-efab-567890123456', 'Iron Island ~ Interior', 'iron-island-interior', 46, 'cave', true, false, false, 'Riley gives you a Riolu egg here.'),
('e5f6a7b8-c9d0-1234-efab-567890123456', 'Route 216', 'route-216', 47, 'route', true, false, false, NULL),
('e5f6a7b8-c9d0-1234-efab-567890123456', 'Route 217', 'route-217', 48, 'route', true, false, false, NULL),
('e5f6a7b8-c9d0-1234-efab-567890123456', 'Acuity Lakefront', 'acuity-lakefront', 49, 'route', true, false, false, NULL),
('e5f6a7b8-c9d0-1234-efab-567890123456', 'Lake Acuity', 'lake-acuity', 50, 'water', true, false, false, NULL),
('e5f6a7b8-c9d0-1234-efab-567890123456', 'Snowpoint Temple', 'snowpoint-temple', 51, 'cave', true, false, false, 'Regigigas encounter at the bottom.'),
('e5f6a7b8-c9d0-1234-efab-567890123456', 'Mt. Coronet ~ B1F', 'mt-coronet-b1f', 52, 'cave', true, false, false, NULL),
('e5f6a7b8-c9d0-1234-efab-567890123456', 'Mt. Coronet ~ 2F', 'mt-coronet-2f', 53, 'cave', true, false, false, NULL),
('e5f6a7b8-c9d0-1234-efab-567890123456', 'Mt. Coronet ~ 3F', 'mt-coronet-3f', 54, 'cave', true, false, false, NULL),
('e5f6a7b8-c9d0-1234-efab-567890123456', 'Mt. Coronet ~ Exterior', 'mt-coronet-exterior', 55, 'cave', true, false, false, NULL),
('e5f6a7b8-c9d0-1234-efab-567890123456', 'Mt. Coronet ~ 4F', 'mt-coronet-4f', 56, 'cave', true, false, false, NULL),
('e5f6a7b8-c9d0-1234-efab-567890123456', 'Mt. Coronet ~ 5F', 'mt-coronet-5f', 57, 'cave', true, false, false, NULL),
('e5f6a7b8-c9d0-1234-efab-567890123456', 'Mt. Coronet ~ 6F', 'mt-coronet-6f', 58, 'cave', true, false, false, NULL),
('e5f6a7b8-c9d0-1234-efab-567890123456', 'Mt. Coronet ~ Summit', 'mt-coronet-summit', 59, 'cave', false, false, false, 'Spear Pillar. Giratina encounter.'),
('e5f6a7b8-c9d0-1234-efab-567890123456', 'Sendoff Spring', 'sendoff-spring', 60, 'water', true, false, false, NULL),
('e5f6a7b8-c9d0-1234-efab-567890123456', 'Turnback Cave', 'turnback-cave', 61, 'cave', true, false, false, NULL),
('e5f6a7b8-c9d0-1234-efab-567890123456', 'Lake Valor', 'lake-valor', 62, 'water', true, false, false, NULL),
('e5f6a7b8-c9d0-1234-efab-567890123456', 'Route 222', 'route-222', 63, 'route', true, false, false, NULL),
('e5f6a7b8-c9d0-1234-efab-567890123456', 'Route 223', 'route-223', 64, 'water', true, false, false, NULL),
('e5f6a7b8-c9d0-1234-efab-567890123456', 'Victory Road ~ 1F', 'victory-road-1f', 65, 'cave', true, false, false, NULL),
('e5f6a7b8-c9d0-1234-efab-567890123456', 'Victory Road ~ 2F', 'victory-road-2f', 66, 'cave', true, false, false, NULL),
('e5f6a7b8-c9d0-1234-efab-567890123456', 'Victory Road ~ B1F', 'victory-road-b1f', 67, 'cave', true, false, false, NULL),
('e5f6a7b8-c9d0-1234-efab-567890123456', 'Route 224', 'route-224', 68, 'route', true, false, false, NULL),
('e5f6a7b8-c9d0-1234-efab-567890123456', 'Route 225', 'route-225', 69, 'route', true, false, false, NULL),
('e5f6a7b8-c9d0-1234-efab-567890123456', 'Route 226', 'route-226', 70, 'route', true, false, false, NULL),
('e5f6a7b8-c9d0-1234-efab-567890123456', 'Route 227', 'route-227', 71, 'route', true, false, false, NULL),
('e5f6a7b8-c9d0-1234-efab-567890123456', 'Stark Mountain ~ Exterior', 'stark-mountain-exterior', 72, 'route', true, false, false, NULL),
('e5f6a7b8-c9d0-1234-efab-567890123456', 'Stark Mountain ~ Interior', 'stark-mountain-interior', 73, 'cave', true, false, false, 'Heatran encounter after completing the story.'),
('e5f6a7b8-c9d0-1234-efab-567890123456', 'Route 228', 'route-228', 74, 'route', true, false, false, NULL),
('e5f6a7b8-c9d0-1234-efab-567890123456', 'Route 229', 'route-229', 75, 'route', true, false, false, NULL),
('e5f6a7b8-c9d0-1234-efab-567890123456', 'Route 230', 'route-230', 76, 'water', true, false, false, NULL),
('e5f6a7b8-c9d0-1234-efab-567890123456', 'Spring Path', 'spring-path', 77, 'route', false, false, false, 'Leads to Sendoff Spring. No wild encounters in PokeAPI.');

-- ===========================================
-- STEP 3: STARTER POKEMON
-- ===========================================

INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max)
SELECT r.id, 387, 'gift', NULL, 5, 5
FROM public.routes r WHERE r.slug = 'twinleaf-town' AND r.game_id = 'e5f6a7b8-c9d0-1234-efab-567890123456';

INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max)
SELECT r.id, 390, 'gift', NULL, 5, 5
FROM public.routes r WHERE r.slug = 'twinleaf-town' AND r.game_id = 'e5f6a7b8-c9d0-1234-efab-567890123456';

INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max)
SELECT r.id, 393, 'gift', NULL, 5, 5
FROM public.routes r WHERE r.slug = 'twinleaf-town' AND r.game_id = 'e5f6a7b8-c9d0-1234-efab-567890123456';

-- ===========================================
-- STEP 4: ENCOUNTER DATA (1193 total)
-- ===========================================

CREATE TEMP TABLE _enc (slug TEXT, dex INT, method TEXT, rate DECIMAL(5,2), lmin INT, lmax INT, cond TEXT, ver_excl TEXT);
INSERT INTO _enc VALUES
('route-201', 29, 'walking', 11.00, 2, 3, 'Poke Radar', NULL),
('route-201', 32, 'walking', 11.00, 2, 3, 'Poke Radar', NULL),
('route-201', 58, 'walking', 8.00, 2, 2, 'FireRed in Slot 2', NULL),
('route-201', 84, 'walking', 40.00, 2, 2, 'Swarm', NULL),
('route-201', 387, 'gift', 100.00, 5, 5, NULL, NULL),
('route-201', 390, 'gift', 100.00, 5, 5, NULL, NULL),
('route-201', 393, 'gift', 100.00, 5, 5, NULL, NULL),
('route-201', 396, 'walking', 40.00, 2, 3, NULL, NULL),
('route-201', 396, 'walking', 10.00, 3, 3, 'Morning', NULL),
('route-201', 396, 'walking', 10.00, 3, 3, 'Day', NULL),
('route-201', 396, 'walking', 4.00, 2, 2, 'Ruby in Slot 2', NULL),
('route-201', 396, 'walking', 4.00, 2, 2, 'Sapphire in Slot 2', NULL),
('route-201', 396, 'walking', 4.00, 2, 2, 'Emerald in Slot 2', NULL),
('route-201', 396, 'walking', 4.00, 2, 2, 'LeafGreen in Slot 2', NULL),
('route-201', 399, 'walking', 40.00, 2, 3, NULL, NULL),
('route-201', 399, 'walking', 10.00, 3, 3, 'Day', NULL),
('route-201', 399, 'walking', 10.00, 3, 3, 'Night', NULL),
('route-201', 399, 'walking', 4.00, 2, 2, 'Ruby in Slot 2', NULL),
('route-201', 399, 'walking', 4.00, 2, 2, 'Sapphire in Slot 2', NULL),
('route-201', 399, 'walking', 4.00, 2, 2, 'Emerald in Slot 2', NULL),
('route-201', 399, 'walking', 4.00, 2, 2, 'LeafGreen in Slot 2', NULL),
('route-201', 401, 'walking', 10.00, 3, 3, 'Night', NULL),
('route-201', 401, 'walking', 10.00, 3, 3, 'Morning', NULL),
('lake-verity', 54, 'surfing', 180.00, 20, 30, NULL, NULL),
('lake-verity', 55, 'surfing', 20.00, 20, 40, NULL, NULL),
('lake-verity', 118, 'fishing_good', 80.00, 15, 20, NULL, NULL),
('lake-verity', 119, 'fishing_good', 10.00, 25, 35, NULL, NULL),
('lake-verity', 119, 'fishing_super', 90.00, 30, 55, NULL, NULL),
('lake-verity', 129, 'fishing_old', 200.00, 3, 15, NULL, NULL),
('lake-verity', 129, 'fishing_good', 110.00, 10, 25, NULL, NULL),
('lake-verity', 130, 'fishing_super', 110.00, 30, 55, NULL, NULL),
('lake-verity', 202, 'walking', 44.00, 3, 4, 'Poke Radar', NULL),
('lake-verity', 337, 'walking', 16.00, 4, 4, 'Sapphire in Slot 2', NULL),
('lake-verity', 338, 'walking', 16.00, 4, 4, 'Ruby in Slot 2', NULL),
('lake-verity', 396, 'walking', 90.00, 2, 4, NULL, NULL),
('lake-verity', 396, 'walking', 10.00, 3, 3, 'Morning', NULL),
('lake-verity', 396, 'walking', 10.00, 3, 3, 'Day', NULL),
('lake-verity', 396, 'walking', 8.00, 4, 4, 'Emerald in Slot 2', NULL),
('lake-verity', 396, 'walking', 8.00, 4, 4, 'FireRed in Slot 2', NULL),
('lake-verity', 396, 'walking', 8.00, 4, 4, 'LeafGreen in Slot 2', NULL),
('lake-verity', 399, 'walking', 100.00, 2, 4, NULL, NULL),
('lake-verity', 399, 'walking', 10.00, 3, 3, 'Night', NULL),
('lake-verity', 399, 'walking', 8.00, 4, 4, 'Emerald in Slot 2', NULL),
('lake-verity', 399, 'walking', 8.00, 4, 4, 'FireRed in Slot 2', NULL),
('lake-verity', 399, 'walking', 8.00, 4, 4, 'LeafGreen in Slot 2', NULL),
('route-202', 58, 'walking', 8.00, 2, 2, 'FireRed in Slot 2', NULL),
('route-202', 161, 'walking', 22.00, 2, 4, 'Poke Radar', NULL),
('route-202', 263, 'walking', 40.00, 3, 3, 'Swarm', NULL),
('route-202', 396, 'walking', 10.00, 4, 4, 'Morning', NULL),
('route-202', 396, 'walking', 10.00, 4, 4, 'Day', NULL),
('route-202', 396, 'walking', 10.00, 2, 4, NULL, NULL),
('route-202', 396, 'walking', 4.00, 2, 2, 'Ruby in Slot 2', NULL),
('route-202', 396, 'walking', 4.00, 2, 2, 'Sapphire in Slot 2', NULL),
('route-202', 396, 'walking', 4.00, 2, 2, 'Emerald in Slot 2', NULL),
('route-202', 396, 'walking', 4.00, 2, 2, 'LeafGreen in Slot 2', NULL),
('route-202', 399, 'walking', 40.00, 2, 4, NULL, NULL),
('route-202', 399, 'walking', 10.00, 3, 3, 'Day', NULL),
('route-202', 399, 'walking', 10.00, 3, 3, 'Night', NULL),
('route-202', 399, 'walking', 4.00, 2, 2, 'Ruby in Slot 2', NULL),
('route-202', 399, 'walking', 4.00, 2, 2, 'Sapphire in Slot 2', NULL),
('route-202', 399, 'walking', 4.00, 2, 2, 'Emerald in Slot 2', NULL),
('route-202', 399, 'walking', 4.00, 2, 2, 'LeafGreen in Slot 2', NULL),
('route-202', 401, 'walking', 10.00, 4, 4, 'Night', NULL),
('route-202', 401, 'walking', 10.00, 3, 3, 'Morning', NULL),
('route-202', 403, 'walking', 30.00, 3, 4, NULL, NULL),
('route-204-south', 10, 'walking', 8.00, 5, 5, 'FireRed in Slot 2', NULL),
('route-204-south', 13, 'walking', 8.00, 5, 5, 'LeafGreen in Slot 2', NULL),
('route-204-south', 41, 'walking', 10.00, 3, 3, 'Night', NULL),
('route-204-south', 54, 'surfing', 90.00, 20, 30, NULL, NULL),
('route-204-south', 55, 'surfing', 10.00, 20, 40, NULL, NULL),
('route-204-south', 118, 'fishing_good', 45.00, 10, 25, NULL, NULL),
('route-204-south', 119, 'fishing_super', 45.00, 30, 55, NULL, NULL),
('route-204-south', 129, 'fishing_old', 100.00, 3, 15, NULL, NULL),
('route-204-south', 129, 'fishing_good', 55.00, 10, 25, NULL, NULL),
('route-204-south', 130, 'fishing_super', 55.00, 30, 55, NULL, NULL),
('route-204-south', 204, 'walking', 8.00, 5, 5, 'Emerald in Slot 2', NULL),
('route-204-south', 265, 'walking', 10.00, 4, 4, 'Morning', NULL),
('route-204-south', 265, 'walking', 10.00, 4, 4, 'Day', NULL),
('route-204-south', 270, 'walking', 8.00, 5, 5, 'Sapphire in Slot 2', NULL),
('route-204-south', 273, 'walking', 8.00, 5, 5, 'Ruby in Slot 2', NULL),
('route-204-south', 396, 'walking', 25.00, 4, 6, NULL, NULL),
('route-204-south', 399, 'walking', 25.00, 4, 6, NULL, NULL),
('route-204-south', 401, 'walking', 10.00, 4, 4, 'Night', NULL),
('route-204-south', 401, 'walking', 10.00, 3, 3, 'Morning', NULL),
('route-204-south', 403, 'walking', 15.00, 4, 5, NULL, NULL),
('route-204-south', 406, 'walking', 10.00, 3, 3, 'Day', NULL),
('route-204-south', 406, 'walking', 15.00, 4, 5, NULL, NULL),
('ravaged-path', 41, 'walking', 65.00, 3, 6, NULL, NULL),
('ravaged-path', 41, 'surfing', 30.00, 20, 30, NULL, NULL),
('ravaged-path', 42, 'surfing', 5.00, 20, 40, NULL, NULL),
('ravaged-path', 54, 'walking', 35.00, 4, 6, NULL, NULL),
('ravaged-path', 54, 'surfing', 60.00, 20, 30, NULL, NULL),
('ravaged-path', 55, 'surfing', 5.00, 20, 40, NULL, NULL),
('ravaged-path', 129, 'fishing_old', 100.00, 3, 15, NULL, NULL),
('ravaged-path', 129, 'fishing_good', 55.00, 10, 25, NULL, NULL),
('ravaged-path', 130, 'fishing_super', 55.00, 30, 55, NULL, NULL),
('ravaged-path', 339, 'fishing_good', 45.00, 10, 25, NULL, NULL),
('ravaged-path', 340, 'fishing_super', 45.00, 30, 55, NULL, NULL),
('route-203', 41, 'walking', 10.00, 4, 4, 'Night', NULL),
('route-203', 54, 'surfing', 90.00, 20, 30, NULL, NULL),
('route-203', 55, 'surfing', 10.00, 20, 40, NULL, NULL),
('route-203', 63, 'walking', 15.00, 4, 5, NULL, NULL),
('route-203', 104, 'walking', 40.00, 4, 4, 'Swarm', NULL),
('route-203', 118, 'fishing_good', 45.00, 10, 25, NULL, NULL),
('route-203', 119, 'fishing_super', 45.00, 30, 55, NULL, NULL),
('route-203', 129, 'fishing_old', 100.00, 3, 15, NULL, NULL),
('route-203', 129, 'fishing_good', 55.00, 10, 25, NULL, NULL),
('route-203', 130, 'fishing_super', 55.00, 30, 55, NULL, NULL),
('route-203', 204, 'walking', 8.00, 6, 6, 'Emerald in Slot 2', NULL),
('route-203', 270, 'walking', 8.00, 6, 6, 'Sapphire in Slot 2', NULL),
('route-203', 273, 'walking', 8.00, 6, 6, 'Ruby in Slot 2', NULL),
('route-203', 396, 'walking', 25.00, 4, 7, NULL, NULL),
('route-203', 396, 'walking', 10.00, 5, 5, 'Morning', NULL),
('route-203', 396, 'walking', 10.00, 5, 5, 'Day', NULL),
('route-203', 396, 'walking', 4.00, 6, 6, 'FireRed in Slot 2', NULL),
('route-203', 396, 'walking', 4.00, 6, 6, 'LeafGreen in Slot 2', NULL),
('route-203', 399, 'walking', 10.00, 4, 4, 'Day', NULL),
('route-203', 399, 'walking', 15.00, 5, 7, NULL, NULL),
('route-203', 399, 'walking', 4.00, 6, 6, 'FireRed in Slot 2', NULL),
('route-203', 399, 'walking', 4.00, 6, 6, 'LeafGreen in Slot 2', NULL),
('route-203', 401, 'walking', 10.00, 5, 5, 'Night', NULL),
('route-203', 401, 'walking', 10.00, 4, 4, 'Morning', NULL),
('route-203', 403, 'walking', 25.00, 4, 5, NULL, NULL),
('oreburgh-gate-1f', 41, 'walking', 50.00, 5, 8, NULL, NULL),
('oreburgh-gate-1f', 54, 'walking', 35.00, 5, 7, NULL, NULL),
('oreburgh-gate-1f', 74, 'walking', 15.00, 5, 7, NULL, NULL),
('oreburgh-gate-b1f', 41, 'walking', 45.00, 6, 9, NULL, NULL),
('oreburgh-gate-b1f', 41, 'surfing', 30.00, 20, 30, NULL, NULL),
('oreburgh-gate-b1f', 42, 'walking', 5.00, 10, 10, NULL, NULL),
('oreburgh-gate-b1f', 42, 'surfing', 5.00, 20, 40, NULL, NULL),
('oreburgh-gate-b1f', 54, 'walking', 35.00, 8, 10, NULL, NULL),
('oreburgh-gate-b1f', 54, 'surfing', 60.00, 20, 30, NULL, NULL),
('oreburgh-gate-b1f', 55, 'surfing', 5.00, 20, 40, NULL, NULL),
('oreburgh-gate-b1f', 74, 'walking', 15.00, 6, 8, NULL, NULL),
('oreburgh-gate-b1f', 129, 'fishing_old', 100.00, 3, 15, NULL, NULL),
('oreburgh-gate-b1f', 129, 'fishing_good', 55.00, 10, 25, NULL, NULL),
('oreburgh-gate-b1f', 130, 'fishing_super', 55.00, 30, 55, NULL, NULL),
('oreburgh-gate-b1f', 339, 'fishing_good', 45.00, 10, 25, NULL, NULL),
('oreburgh-gate-b1f', 340, 'fishing_super', 45.00, 30, 55, NULL, NULL),
('oreburgh-mine-1f', 41, 'walking', 25.00, 5, 7, NULL, NULL),
('oreburgh-mine-1f', 74, 'walking', 65.00, 4, 8, NULL, NULL),
('oreburgh-mine-1f', 74, 'walking', 4.00, 7, 7, 'Ruby in Slot 2', NULL),
('oreburgh-mine-1f', 74, 'walking', 4.00, 7, 7, 'Sapphire in Slot 2', NULL),
('oreburgh-mine-1f', 74, 'walking', 4.00, 7, 7, 'Emerald in Slot 2', NULL),
('oreburgh-mine-1f', 74, 'walking', 4.00, 7, 7, 'FireRed in Slot 2', NULL),
('oreburgh-mine-1f', 74, 'walking', 4.00, 7, 7, 'LeafGreen in Slot 2', NULL),
('oreburgh-mine-1f', 74, 'walking', 1.00, 7, 7, 'Poke Radar', NULL),
('oreburgh-mine-1f', 95, 'walking', 10.00, 6, 8, NULL, NULL),
('oreburgh-mine-b1f', 41, 'walking', 25.00, 6, 8, NULL, NULL),
('oreburgh-mine-b1f', 74, 'walking', 65.00, 5, 9, NULL, NULL),
('oreburgh-mine-b1f', 74, 'walking', 4.00, 8, 8, 'Ruby in Slot 2', NULL),
('oreburgh-mine-b1f', 74, 'walking', 4.00, 8, 8, 'Sapphire in Slot 2', NULL),
('oreburgh-mine-b1f', 74, 'walking', 4.00, 8, 8, 'Emerald in Slot 2', NULL),
('oreburgh-mine-b1f', 74, 'walking', 4.00, 8, 8, 'FireRed in Slot 2', NULL),
('oreburgh-mine-b1f', 74, 'walking', 4.00, 8, 8, 'LeafGreen in Slot 2', NULL),
('oreburgh-mine-b1f', 74, 'walking', 1.00, 8, 8, 'Poke Radar', NULL),
('oreburgh-mine-b1f', 95, 'walking', 10.00, 7, 9, NULL, NULL),
('route-207', 41, 'walking', 10.00, 5, 5, 'Night', NULL),
('route-207', 66, 'walking', 35.00, 6, 8, NULL, NULL),
('route-207', 66, 'walking', 10.00, 5, 5, 'Day', NULL),
('route-207', 74, 'walking', 30.00, 5, 7, NULL, NULL),
('route-207', 77, 'walking', 10.00, 6, 6, 'Morning', NULL),
('route-207', 77, 'walking', 10.00, 6, 6, 'Day', NULL),
('route-207', 77, 'walking', 15.00, 5, 7, NULL, NULL),
('route-207', 231, 'walking', 40.00, 5, 7, 'Swarm', NULL),
('route-207', 234, 'walking', 22.00, 5, 7, 'Poke Radar', NULL),
('route-207', 401, 'walking', 10.00, 6, 6, 'Night', NULL),
('route-207', 401, 'walking', 10.00, 5, 5, 'Morning', NULL),
('route-204-north', 10, 'walking', 8.00, 10, 10, 'FireRed in Slot 2', NULL),
('route-204-north', 13, 'walking', 8.00, 10, 10, 'LeafGreen in Slot 2', NULL),
('route-204-north', 41, 'walking', 10.00, 8, 8, 'Night', NULL),
('route-204-north', 54, 'surfing', 90.00, 20, 30, NULL, NULL),
('route-204-north', 55, 'surfing', 10.00, 20, 40, NULL, NULL),
('route-204-north', 118, 'fishing_good', 45.00, 10, 25, NULL, NULL),
('route-204-north', 119, 'fishing_super', 45.00, 30, 55, NULL, NULL),
('route-204-north', 129, 'fishing_old', 100.00, 3, 15, NULL, NULL),
('route-204-north', 129, 'fishing_good', 55.00, 10, 25, NULL, NULL),
('route-204-north', 130, 'fishing_super', 55.00, 30, 55, NULL, NULL),
('route-204-north', 191, 'walking', 22.00, 9, 11, 'Poke Radar', NULL),
('route-204-north', 204, 'walking', 8.00, 10, 10, 'Emerald in Slot 2', NULL),
('route-204-north', 265, 'walking', 10.00, 9, 9, 'Morning', NULL),
('route-204-north', 265, 'walking', 10.00, 9, 9, 'Day', NULL),
('route-204-north', 270, 'walking', 8.00, 10, 10, 'Sapphire in Slot 2', NULL),
('route-204-north', 273, 'walking', 8.00, 10, 10, 'Ruby in Slot 2', NULL),
('route-204-north', 396, 'walking', 25.00, 9, 11, NULL, NULL),
('route-204-north', 399, 'walking', 25.00, 9, 11, NULL, NULL),
('route-204-north', 401, 'walking', 10.00, 9, 9, 'Night', NULL),
('route-204-north', 401, 'walking', 10.00, 8, 8, 'Morning', NULL),
('route-204-north', 403, 'walking', 15.00, 9, 10, NULL, NULL),
('route-204-north', 406, 'walking', 10.00, 8, 8, 'Day', NULL),
('route-204-north', 406, 'walking', 15.00, 9, 10, NULL, NULL),
('valley-windworks', 72, 'surfing', 30.00, 20, 30, NULL, NULL),
('valley-windworks', 73, 'surfing', 1.00, 20, 40, NULL, NULL),
('valley-windworks', 90, 'fishing_super', 15.00, 20, 50, NULL, NULL),
('valley-windworks', 129, 'fishing_old', 100.00, 3, 15, NULL, NULL),
('valley-windworks', 129, 'fishing_good', 55.00, 10, 25, NULL, NULL),
('valley-windworks', 130, 'fishing_super', 40.00, 30, 55, NULL, NULL),
('valley-windworks', 179, 'walking', 22.00, 10, 12, 'Poke Radar', NULL),
('valley-windworks', 309, 'walking', 40.00, 9, 10, 'Swarm', NULL),
('valley-windworks', 403, 'walking', 20.00, 10, 10, NULL, NULL),
('valley-windworks', 417, 'walking', 10.00, 9, 11, NULL, NULL),
('valley-windworks', 418, 'walking', 25.00, 9, 11, NULL, NULL),
('valley-windworks', 422, 'walking', 45.00, 9, 12, NULL, NULL),
('valley-windworks', 422, 'surfing', 60.00, 20, 30, NULL, NULL),
('valley-windworks', 423, 'surfing', 9.00, 20, 40, NULL, NULL),
('valley-windworks', 425, 'static', 100.00, 15, 15, 'story-progress-defeat-mars', NULL),
('valley-windworks', 456, 'fishing_good', 45.00, 10, 25, NULL, NULL),
('valley-windworks', 457, 'fishing_super', 45.00, 30, 55, NULL, NULL),
('route-205-south', 72, 'surfing', 30.00, 20, 30, NULL, NULL),
('route-205-south', 73, 'surfing', 1.00, 20, 40, NULL, NULL),
('route-205-south', 90, 'fishing_super', 15.00, 20, 50, NULL, NULL),
('route-205-south', 129, 'fishing_old', 100.00, 3, 15, NULL, NULL),
('route-205-south', 129, 'fishing_good', 55.00, 10, 25, NULL, NULL),
('route-205-south', 130, 'fishing_super', 40.00, 30, 55, NULL, NULL),
('route-205-south', 187, 'walking', 22.00, 10, 12, 'Poke Radar', NULL),
('route-205-south', 399, 'walking', 10.00, 10, 10, NULL, NULL),
('route-205-south', 417, 'walking', 10.00, 9, 11, NULL, NULL),
('route-205-south', 418, 'walking', 15.00, 10, 11, NULL, NULL),
('route-205-south', 422, 'walking', 65.00, 9, 12, NULL, NULL),
('route-205-south', 422, 'surfing', 60.00, 20, 30, NULL, NULL),
('route-205-south', 423, 'surfing', 9.00, 20, 40, NULL, NULL),
('route-205-south', 456, 'fishing_good', 45.00, 10, 25, NULL, NULL),
('route-205-south', 457, 'fishing_super', 45.00, 30, 55, NULL, NULL),
('eterna-forest', 10, 'walking', 4.00, 13, 13, 'FireRed in Slot 2', NULL),
('eterna-forest', 11, 'walking', 4.00, 13, 13, 'FireRed in Slot 2', NULL),
('eterna-forest', 13, 'walking', 4.00, 13, 13, 'LeafGreen in Slot 2', NULL),
('eterna-forest', 14, 'walking', 4.00, 13, 13, 'LeafGreen in Slot 2', NULL),
('eterna-forest', 92, 'walking', 4.00, 13, 13, NULL, NULL),
('eterna-forest', 92, 'walking', 4.00, 13, 13, 'Sapphire in Slot 2', NULL),
('eterna-forest', 163, 'walking', 10.00, 12, 12, 'Night', NULL),
('eterna-forest', 204, 'walking', 8.00, 13, 13, 'Emerald in Slot 2', NULL),
('eterna-forest', 265, 'walking', 10.00, 10, 10, 'Morning', NULL),
('eterna-forest', 265, 'walking', 10.00, 10, 10, 'Day', NULL),
('eterna-forest', 266, 'walking', 5.00, 12, 12, NULL, NULL),
('eterna-forest', 267, 'walking', 1.00, 14, 14, NULL, NULL),
('eterna-forest', 268, 'walking', 5.00, 12, 12, NULL, NULL),
('eterna-forest', 269, 'walking', 1.00, 14, 14, NULL, NULL),
('eterna-forest', 273, 'walking', 8.00, 13, 13, 'Ruby in Slot 2', NULL),
('eterna-forest', 287, 'walking', 40.00, 10, 11, 'Swarm', NULL),
('eterna-forest', 290, 'walking', 22.00, 11, 14, 'Poke Radar', NULL),
('eterna-forest', 399, 'walking', 10.00, 12, 12, NULL, NULL),
('eterna-forest', 401, 'walking', 10.00, 10, 10, 'Night', NULL),
('eterna-forest', 401, 'walking', 10.00, 12, 12, 'Morning', NULL),
('eterna-forest', 406, 'walking', 30.00, 10, 11, NULL, NULL),
('eterna-forest', 406, 'walking', 10.00, 12, 12, 'Day', NULL),
('eterna-forest', 427, 'walking', 24.00, 11, 13, NULL, NULL),
('eterna-forest', 427, 'walking', 4.00, 13, 13, 'Sapphire in Slot 2', NULL),
('old-chateau', 92, 'walking', 200.00, 14, 17, NULL, NULL),
('route-205-north', 54, 'surfing', 90.00, 20, 30, NULL, NULL),
('route-205-north', 55, 'surfing', 10.00, 20, 40, NULL, NULL),
('route-205-north', 79, 'walking', 22.00, 14, 15, 'Poke Radar', NULL),
('route-205-north', 129, 'fishing_old', 100.00, 3, 15, NULL, NULL),
('route-205-north', 129, 'fishing_good', 55.00, 10, 25, NULL, NULL),
('route-205-north', 130, 'fishing_super', 55.00, 30, 55, NULL, NULL),
('route-205-north', 163, 'walking', 10.00, 12, 12, 'Night', NULL),
('route-205-north', 265, 'walking', 10.00, 13, 13, 'Morning', NULL),
('route-205-north', 265, 'walking', 10.00, 13, 13, 'Day', NULL),
('route-205-north', 266, 'walking', 10.00, 14, 14, NULL, NULL),
('route-205-north', 267, 'walking', 1.00, 15, 15, NULL, NULL),
('route-205-north', 268, 'walking', 10.00, 14, 14, NULL, NULL),
('route-205-north', 269, 'walking', 1.00, 15, 15, NULL, NULL),
('route-205-north', 270, 'walking', 8.00, 13, 14, 'Sapphire in Slot 2', NULL),
('route-205-north', 339, 'fishing_good', 45.00, 10, 25, NULL, NULL),
('route-205-north', 340, 'fishing_super', 45.00, 30, 55, NULL, NULL),
('route-205-north', 399, 'walking', 30.00, 12, 14, NULL, NULL),
('route-205-north', 401, 'walking', 10.00, 13, 13, 'Night', NULL),
('route-205-north', 401, 'walking', 10.00, 12, 12, 'Morning', NULL),
('route-205-north', 406, 'walking', 28.00, 12, 14, NULL, NULL),
('route-205-north', 406, 'walking', 10.00, 12, 12, 'Day', NULL),
('route-205-north', 406, 'walking', 8.00, 13, 14, 'Ruby in Slot 2', NULL),
('route-205-north', 406, 'walking', 8.00, 13, 14, 'Emerald in Slot 2', NULL),
('route-205-north', 406, 'walking', 8.00, 13, 14, 'FireRed in Slot 2', NULL),
('route-205-north', 406, 'walking', 8.00, 13, 14, 'LeafGreen in Slot 2', NULL),
('route-211-west', 41, 'walking', 10.00, 14, 14, 'Night', NULL),
('route-211-west', 66, 'walking', 15.00, 14, 15, NULL, NULL),
('route-211-west', 66, 'walking', 4.00, 15, 15, 'Ruby in Slot 2', NULL),
('route-211-west', 66, 'walking', 4.00, 15, 15, 'Sapphire in Slot 2', NULL),
('route-211-west', 66, 'walking', 4.00, 15, 15, 'FireRed in Slot 2', NULL),
('route-211-west', 66, 'walking', 4.00, 15, 15, 'LeafGreen in Slot 2', NULL),
('route-211-west', 163, 'walking', 10.00, 15, 15, 'Night', NULL),
('route-211-west', 216, 'walking', 8.00, 15, 16, 'Emerald in Slot 2', NULL),
('route-211-west', 236, 'walking', 22.00, 14, 16, 'Poke Radar', NULL),
('route-211-west', 307, 'walking', 20.00, 13, 13, NULL, NULL),
('route-211-west', 307, 'walking', 20.00, 14, 15, 'Morning', NULL),
('route-211-west', 307, 'walking', 20.00, 14, 15, 'Day', NULL),
('route-211-west', 399, 'walking', 20.00, 14, 14, NULL, NULL),
('route-211-west', 433, 'walking', 15.00, 14, 16, NULL, NULL),
('route-211-west', 436, 'walking', 10.00, 14, 16, NULL, NULL),
('route-211-west', 436, 'walking', 4.00, 16, 16, 'Ruby in Slot 2', NULL),
('route-211-west', 436, 'walking', 4.00, 16, 16, 'Sapphire in Slot 2', NULL),
('route-211-west', 436, 'walking', 4.00, 16, 16, 'FireRed in Slot 2', NULL),
('route-211-west', 436, 'walking', 4.00, 16, 16, 'LeafGreen in Slot 2', NULL),
('mt-coronet-route-207', 35, 'walking', 10.00, 17, 17, 'Morning', NULL),
('mt-coronet-route-207', 35, 'walking', 10.00, 17, 17, 'Night', NULL),
('mt-coronet-route-207', 41, 'walking', 10.00, 18, 18, 'Night', NULL),
('mt-coronet-route-207', 41, 'walking', 5.00, 19, 19, NULL, NULL),
('mt-coronet-route-207', 41, 'surfing', 90.00, 20, 30, NULL, NULL),
('mt-coronet-route-207', 42, 'surfing', 10.00, 20, 40, NULL, NULL),
('mt-coronet-route-207', 66, 'walking', 10.00, 20, 20, NULL, NULL),
('mt-coronet-route-207', 74, 'walking', 20.00, 19, 19, NULL, NULL),
('mt-coronet-route-207', 74, 'walking', 10.00, 17, 17, 'Day', NULL),
('mt-coronet-route-207', 129, 'fishing_old', 100.00, 3, 15, NULL, NULL),
('mt-coronet-route-207', 129, 'fishing_good', 55.00, 10, 25, NULL, NULL),
('mt-coronet-route-207', 130, 'fishing_super', 55.00, 20, 55, NULL, NULL),
('mt-coronet-route-207', 299, 'walking', 5.00, 18, 18, NULL, NULL),
('mt-coronet-route-207', 307, 'walking', 10.00, 18, 18, 'Morning', NULL),
('mt-coronet-route-207', 307, 'walking', 10.00, 18, 18, 'Day', NULL),
('mt-coronet-route-207', 307, 'walking', 10.00, 20, 20, NULL, NULL),
('mt-coronet-route-207', 339, 'fishing_good', 45.00, 10, 25, NULL, NULL),
('mt-coronet-route-207', 340, 'fishing_super', 45.00, 30, 55, NULL, NULL),
('mt-coronet-route-207', 433, 'walking', 10.00, 17, 19, NULL, NULL),
('mt-coronet-route-207', 436, 'walking', 20.00, 18, 18, NULL, NULL),
('route-206', 41, 'walking', 10.00, 17, 17, 'Night', NULL),
('route-206', 66, 'walking', 20.00, 17, 19, NULL, NULL),
('route-206', 74, 'walking', 30.00, 16, 18, NULL, NULL),
('route-206', 77, 'walking', 20.00, 16, 16, NULL, NULL),
('route-206', 77, 'walking', 10.00, 17, 17, 'Day', NULL),
('route-206', 207, 'walking', 10.00, 18, 18, 'Morning', NULL),
('route-206', 207, 'walking', 10.00, 18, 18, 'Day', NULL),
('route-206', 207, 'walking', 10.00, 16, 16, NULL, NULL),
('route-206', 246, 'walking', 40.00, 16, 16, 'Swarm', NULL),
('route-206', 343, 'walking', 22.00, 16, 19, 'Poke Radar', NULL),
('route-206', 402, 'walking', 10.00, 18, 18, 'Night', NULL),
('route-206', 402, 'walking', 10.00, 17, 17, 'Morning', NULL),
('wayward-cave', 27, 'walking', 16.00, 17, 20, 'LeafGreen in Slot 2', NULL),
('wayward-cave', 41, 'walking', 25.00, 17, 19, NULL, NULL),
('wayward-cave', 74, 'walking', 65.00, 17, 20, NULL, NULL),
('wayward-cave', 74, 'walking', 4.00, 17, 17, 'Ruby in Slot 2', NULL),
('wayward-cave', 74, 'walking', 4.00, 17, 17, 'Sapphire in Slot 2', NULL),
('wayward-cave', 74, 'walking', 4.00, 17, 17, 'Emerald in Slot 2', NULL),
('wayward-cave', 74, 'walking', 4.00, 17, 17, 'FireRed in Slot 2', NULL),
('wayward-cave', 74, 'walking', 1.00, 17, 17, 'Poke Radar', NULL),
('wayward-cave', 95, 'walking', 30.00, 18, 20, NULL, NULL),
('wayward-cave', 95, 'walking', 8.00, 18, 18, 'Ruby in Slot 2', NULL),
('wayward-cave', 95, 'walking', 8.00, 18, 18, 'Sapphire in Slot 2', NULL),
('wayward-cave', 95, 'walking', 8.00, 18, 18, 'Emerald in Slot 2', NULL),
('wayward-cave', 95, 'walking', 8.00, 18, 18, 'FireRed in Slot 2', NULL),
('wayward-cave', 436, 'walking', 60.00, 18, 20, NULL, NULL),
('wayward-cave', 443, 'walking', 20.00, 17, 20, NULL, NULL),
('wayward-cave', 443, 'walking', 4.00, 20, 20, 'Ruby in Slot 2', NULL),
('wayward-cave', 443, 'walking', 4.00, 20, 20, 'Sapphire in Slot 2', NULL),
('wayward-cave', 443, 'walking', 4.00, 20, 20, 'Emerald in Slot 2', NULL),
('wayward-cave', 443, 'walking', 4.00, 20, 20, 'FireRed in Slot 2', NULL),
('route-208', 41, 'walking', 10.00, 19, 19, 'Night', NULL),
('route-208', 54, 'surfing', 90.00, 20, 20, NULL, NULL),
('route-208', 55, 'surfing', 10.00, 20, 40, NULL, NULL),
('route-208', 118, 'fishing_good', 45.00, 10, 25, NULL, NULL),
('route-208', 119, 'fishing_super', 45.00, 30, 55, NULL, NULL),
('route-208', 129, 'fishing_old', 100.00, 3, 15, NULL, NULL),
('route-208', 129, 'fishing_good', 55.00, 10, 25, NULL, NULL),
('route-208', 130, 'fishing_super', 55.00, 30, 55, NULL, NULL),
('route-208', 206, 'walking', 40.00, 18, 18, 'Swarm', NULL),
('route-208', 235, 'walking', 22.00, 18, 20, 'Poke Radar', NULL),
('route-208', 280, 'walking', 15.00, 17, 18, NULL, NULL),
('route-208', 315, 'walking', 15.00, 19, 20, NULL, NULL),
('route-208', 315, 'walking', 4.00, 20, 20, 'Emerald in Slot 2', NULL),
('route-208', 315, 'walking', 4.00, 20, 20, 'FireRed in Slot 2', NULL),
('route-208', 315, 'walking', 4.00, 20, 20, 'LeafGreen in Slot 2', NULL),
('route-208', 335, 'walking', 8.00, 20, 20, 'Ruby in Slot 2', NULL),
('route-208', 336, 'walking', 8.00, 20, 20, 'Sapphire in Slot 2', NULL),
('route-208', 399, 'walking', 20.00, 18, 18, NULL, NULL),
('route-208', 400, 'walking', 20.00, 18, 20, NULL, NULL),
('route-208', 400, 'walking', 4.00, 20, 20, 'Emerald in Slot 2', NULL),
('route-208', 400, 'walking', 4.00, 20, 20, 'FireRed in Slot 2', NULL),
('route-208', 400, 'walking', 4.00, 20, 20, 'LeafGreen in Slot 2', NULL),
('route-208', 406, 'walking', 20.00, 18, 18, NULL, NULL),
('route-208', 406, 'walking', 10.00, 19, 19, 'Morning', NULL),
('route-208', 406, 'walking', 10.00, 19, 19, 'Day', NULL),
('route-209', 37, 'walking', 8.00, 17, 19, 'LeafGreen in Slot 2', NULL),
('route-209', 41, 'walking', 10.00, 19, 19, 'Night', NULL),
('route-209', 54, 'surfing', 90.00, 20, 30, NULL, NULL),
('route-209', 55, 'surfing', 10.00, 20, 40, NULL, NULL),
('route-209', 113, 'walking', 5.00, 17, 19, NULL, NULL),
('route-209', 113, 'walking', 4.00, 17, 17, 'Ruby in Slot 2', NULL),
('route-209', 113, 'walking', 4.00, 17, 17, 'Sapphire in Slot 2', NULL),
('route-209', 113, 'walking', 4.00, 17, 17, 'Emerald in Slot 2', NULL),
('route-209', 113, 'walking', 4.00, 17, 17, 'FireRed in Slot 2', NULL),
('route-209', 118, 'fishing_good', 45.00, 10, 25, NULL, NULL),
('route-209', 119, 'fishing_super', 45.00, 30, 55, NULL, NULL),
('route-209', 129, 'fishing_old', 100.00, 3, 15, NULL, NULL),
('route-209', 129, 'fishing_good', 55.00, 10, 25, NULL, NULL),
('route-209', 130, 'fishing_super', 55.00, 30, 55, NULL, NULL),
('route-209', 209, 'walking', 40.00, 18, 19, 'Swarm', NULL),
('route-209', 280, 'walking', 10.00, 17, 17, 'Morning', NULL),
('route-209', 280, 'walking', 10.00, 17, 17, 'Day', NULL),
('route-209', 280, 'walking', 10.00, 18, 19, NULL, NULL),
('route-209', 280, 'walking', 4.00, 19, 19, 'Ruby in Slot 2', NULL),
('route-209', 280, 'walking', 4.00, 19, 19, 'Sapphire in Slot 2', NULL),
('route-209', 280, 'walking', 4.00, 19, 19, 'Emerald in Slot 2', NULL),
('route-209', 280, 'walking', 4.00, 19, 19, 'FireRed in Slot 2', NULL),
('route-209', 281, 'walking', 22.00, 18, 19, 'Poke Radar', NULL),
('route-209', 315, 'walking', 25.00, 19, 20, NULL, NULL),
('route-209', 355, 'walking', 10.00, 17, 17, 'Night', NULL),
('route-209', 397, 'walking', 10.00, 19, 19, 'Morning', NULL),
('route-209', 397, 'walking', 10.00, 19, 19, 'Day', NULL),
('route-209', 397, 'walking', 10.00, 18, 18, NULL, NULL),
('route-209', 400, 'walking', 30.00, 18, 19, NULL, NULL),
('route-209', 442, 'static', 100.00, 25, 25, 'item-odd-keystone, other-talked-to-32-people-underground', NULL),
('lost-tower', 41, 'walking', 105.00, 18, 21, NULL, NULL),
('lost-tower', 42, 'walking', 16.00, 21, 22, NULL, NULL),
('lost-tower', 92, 'walking', 119.00, 18, 22, NULL, NULL),
('lost-tower', 92, 'walking', 60.00, 18, 21, 'Morning', NULL),
('lost-tower', 92, 'walking', 60.00, 18, 21, 'Day', NULL),
('lost-tower', 92, 'walking', 3.00, 21, 22, 'Poke Radar', NULL),
('lost-tower', 355, 'walking', 60.00, 18, 21, 'Night', NULL),
('lost-tower', 92, 'walking', 8.00, 21, 22, 'Ruby in Slot 2', NULL),
('lost-tower', 92, 'walking', 8.00, 21, 22, 'Sapphire in Slot 2', NULL),
('lost-tower', 92, 'walking', 8.00, 21, 22, 'Emerald in Slot 2', NULL),
('lost-tower', 92, 'walking', 8.00, 21, 22, 'FireRed in Slot 2', NULL),
('lost-tower', 92, 'walking', 8.00, 21, 22, 'LeafGreen in Slot 2', NULL),
('solaceon-ruins', 201, 'walking', 100.00, 20, 30, NULL, NULL),
('route-210-south', 74, 'walking', 20.00, 18, 18, NULL, NULL),
('route-210-south', 77, 'walking', 20.00, 20, 21, 'Day', NULL),
('route-210-south', 77, 'walking', 10.00, 20, 20, 'Morning', NULL),
('route-210-south', 77, 'walking', 15.00, 19, 21, NULL, NULL),
('route-210-south', 77, 'walking', 4.00, 21, 21, 'Sapphire in Slot 2', NULL),
('route-210-south', 77, 'walking', 4.00, 21, 21, 'FireRed in Slot 2', NULL),
('route-210-south', 77, 'walking', 4.00, 21, 21, 'LeafGreen in Slot 2', NULL),
('route-210-south', 113, 'walking', 5.00, 19, 21, NULL, NULL),
('route-210-south', 113, 'walking', 4.00, 19, 19, 'Sapphire in Slot 2', NULL),
('route-210-south', 113, 'walking', 4.00, 19, 19, 'FireRed in Slot 2', NULL),
('route-210-south', 113, 'walking', 4.00, 19, 19, 'LeafGreen in Slot 2', NULL),
('route-210-south', 123, 'walking', 10.00, 21, 21, 'Morning', NULL),
('route-210-south', 123, 'walking', 5.00, 19, 19, NULL, NULL),
('route-210-south', 128, 'walking', 11.00, 19, 21, 'Poke Radar', NULL),
('route-210-south', 163, 'walking', 10.00, 20, 20, 'Night', NULL),
('route-210-south', 164, 'walking', 10.00, 21, 21, 'Night', NULL),
('route-210-south', 204, 'walking', 8.00, 19, 21, 'Emerald in Slot 2', NULL),
('route-210-south', 241, 'walking', 11.00, 20, 21, 'Poke Radar', NULL),
('route-210-south', 273, 'walking', 4.00, 21, 21, 'Ruby in Slot 2', NULL),
('route-210-south', 274, 'walking', 4.00, 19, 19, 'Ruby in Slot 2', NULL),
('route-210-south', 315, 'walking', 15.00, 20, 21, NULL, NULL),
('route-210-south', 397, 'walking', 20.00, 19, 19, NULL, NULL),
('route-215', 63, 'walking', 10.00, 19, 19, NULL, NULL),
('route-215', 64, 'walking', 10.00, 21, 22, NULL, NULL),
('route-215', 96, 'walking', 40.00, 19, 20, 'Swarm', NULL),
('route-215', 108, 'walking', 10.00, 20, 20, NULL, NULL),
('route-215', 123, 'walking', 10.00, 22, 22, 'Morning', NULL),
('route-215', 123, 'walking', 5.00, 20, 20, NULL, NULL),
('route-215', 183, 'walking', 25.00, 20, 22, NULL, NULL),
('route-215', 183, 'walking', 20.00, 21, 22, 'Night', NULL),
('route-215', 397, 'walking', 20.00, 19, 19, NULL, NULL),
('route-215', 397, 'walking', 20.00, 21, 22, 'Day', NULL),
('route-215', 397, 'walking', 10.00, 21, 21, 'Morning', NULL),
('route-214', 37, 'walking', 8.00, 24, 24, 'LeafGreen in Slot 2', NULL),
('route-214', 41, 'walking', 10.00, 22, 22, 'Night', NULL),
('route-214', 54, 'surfing', 90.00, 20, 30, NULL, NULL),
('route-214', 55, 'surfing', 10.00, 20, 40, NULL, NULL),
('route-214', 74, 'walking', 20.00, 21, 21, NULL, NULL),
('route-214', 75, 'walking', 25.00, 23, 24, NULL, NULL),
('route-214', 75, 'walking', 10.00, 22, 22, 'Morning', NULL),
('route-214', 75, 'walking', 10.00, 22, 22, 'Day', NULL),
('route-214', 111, 'walking', 10.00, 22, 22, 'Morning', NULL),
('route-214', 111, 'walking', 10.00, 22, 22, 'Day', NULL),
('route-214', 111, 'walking', 20.00, 21, 24, NULL, NULL),
('route-214', 111, 'walking', 4.00, 24, 24, 'Ruby in Slot 2', NULL),
('route-214', 111, 'walking', 4.00, 24, 24, 'Sapphire in Slot 2', NULL),
('route-214', 111, 'walking', 4.00, 24, 24, 'Emerald in Slot 2', NULL),
('route-214', 111, 'walking', 4.00, 24, 24, 'FireRed in Slot 2', NULL),
('route-214', 118, 'fishing_good', 45.00, 10, 25, NULL, NULL),
('route-214', 119, 'fishing_super', 45.00, 30, 55, NULL, NULL),
('route-214', 129, 'fishing_old', 100.00, 3, 15, NULL, NULL),
('route-214', 129, 'fishing_good', 55.00, 10, 25, NULL, NULL),
('route-214', 130, 'fishing_super', 55.00, 30, 55, NULL, NULL),
('route-214', 228, 'walking', 10.00, 22, 22, 'Night', NULL),
('route-214', 228, 'walking', 15.00, 23, 24, NULL, NULL),
('route-214', 228, 'walking', 4.00, 24, 24, 'Ruby in Slot 2', NULL),
('route-214', 228, 'walking', 4.00, 24, 24, 'Sapphire in Slot 2', NULL),
('route-214', 228, 'walking', 4.00, 24, 24, 'Emerald in Slot 2', NULL),
('route-214', 228, 'walking', 4.00, 24, 24, 'FireRed in Slot 2', NULL),
('route-214', 261, 'walking', 22.00, 23, 24, 'Poke Radar', NULL),
('route-214', 325, 'walking', 40.00, 21, 23, 'Swarm', NULL),
('maniac-tunnel', 74, 'walking', 185.00, 21, 24, NULL, NULL),
('maniac-tunnel', 449, 'walking', 15.00, 22, 25, NULL, NULL),
('valor-lakefront', 30, 'walking', 11.00, 27, 28, 'Poke Radar', NULL),
('valor-lakefront', 33, 'walking', 11.00, 27, 28, 'Poke Radar', NULL),
('valor-lakefront', 203, 'walking', 25.00, 26, 28, NULL, NULL),
('valor-lakefront', 228, 'walking', 10.00, 27, 27, 'Night', NULL),
('valor-lakefront', 228, 'walking', 10.00, 28, 28, NULL, NULL),
('valor-lakefront', 397, 'walking', 10.00, 26, 26, 'Morning', NULL),
('valor-lakefront', 397, 'walking', 20.00, 26, 27, 'Day', NULL),
('valor-lakefront', 397, 'walking', 15.00, 27, 28, NULL, NULL),
('valor-lakefront', 400, 'walking', 30.00, 25, 27, NULL, NULL),
('valor-lakefront', 402, 'walking', 10.00, 26, 26, 'Night', NULL),
('valor-lakefront', 402, 'walking', 10.00, 27, 27, 'Morning', NULL),
('route-213', 72, 'surfing', 60.00, 20, 30, NULL, NULL),
('route-213', 73, 'surfing', 5.00, 20, 40, NULL, NULL),
('route-213', 129, 'fishing_old', 100.00, 3, 15, NULL, NULL),
('route-213', 129, 'fishing_good', 55.00, 10, 25, NULL, NULL),
('route-213', 130, 'fishing_super', 55.00, 30, 55, NULL, NULL),
('route-213', 223, 'fishing_good', 45.00, 10, 25, NULL, NULL),
('route-213', 224, 'fishing_super', 45.00, 30, 55, NULL, NULL),
('route-213', 277, 'walking', 22.00, 25, 26, 'Poke Radar', NULL),
('route-213', 278, 'walking', 20.00, 24, 26, NULL, NULL),
('route-213', 278, 'surfing', 30.00, 20, 30, NULL, NULL),
('route-213', 418, 'walking', 25.00, 23, 25, NULL, NULL),
('route-213', 418, 'walking', 10.00, 25, 25, 'Night', NULL),
('route-213', 422, 'walking', 35.00, 24, 26, NULL, NULL),
('route-213', 422, 'walking', 10.00, 23, 23, 'Night', NULL),
('route-213', 422, 'surfing', 4.00, 20, 30, NULL, NULL),
('route-213', 423, 'surfing', 1.00, 20, 40, NULL, NULL),
('route-213', 441, 'walking', 20.00, 23, 25, 'Morning', NULL),
('route-213', 441, 'walking', 20.00, 23, 25, 'Day', NULL),
('route-212-north', 54, 'surfing', 90.00, 20, 30, NULL, NULL),
('route-212-north', 55, 'surfing', 10.00, 20, 40, NULL, NULL),
('route-212-north', 118, 'fishing_good', 45.00, 10, 25, NULL, NULL),
('route-212-north', 119, 'fishing_super', 45.00, 30, 55, NULL, NULL),
('route-212-north', 129, 'fishing_old', 100.00, 3, 15, NULL, NULL),
('route-212-north', 129, 'fishing_good', 55.00, 10, 25, NULL, NULL),
('route-212-north', 130, 'fishing_super', 55.00, 30, 55, NULL, NULL),
('route-212-north', 183, 'walking', 25.00, 21, 23, NULL, NULL),
('route-212-north', 183, 'walking', 20.00, 22, 23, 'Night', NULL),
('route-212-north', 235, 'walking', 22.00, 21, 24, 'Poke Radar', NULL),
('route-212-north', 280, 'walking', 10.00, 22, 22, 'Day', NULL),
('route-212-north', 281, 'walking', 10.00, 22, 22, 'Morning', NULL),
('route-212-north', 281, 'walking', 10.00, 24, 24, NULL, NULL),
('route-212-north', 315, 'walking', 35.00, 22, 24, NULL, NULL),
('route-212-north', 397, 'walking', 10.00, 23, 23, 'Morning', NULL),
('route-212-north', 397, 'walking', 10.00, 23, 23, 'Day', NULL),
('route-212-north', 397, 'walking', 10.00, 21, 21, NULL, NULL),
('trophy-garden', 25, 'walking', 10.00, 22, 24, NULL, NULL),
('trophy-garden', 172, 'walking', 30.00, 21, 22, NULL, NULL),
('trophy-garden', 315, 'walking', 30.00, 22, 23, NULL, NULL),
('trophy-garden', 397, 'walking', 10.00, 22, 22, 'Morning', NULL),
('trophy-garden', 397, 'walking', 20.00, 22, 23, 'Day', NULL),
('trophy-garden', 397, 'walking', 10.00, 24, 24, NULL, NULL),
('trophy-garden', 402, 'walking', 20.00, 22, 23, 'Night', NULL),
('trophy-garden', 402, 'walking', 10.00, 23, 23, 'Morning', NULL),
('route-212-south', 23, 'walking', 8.00, 23, 26, 'FireRed in Slot 2', NULL),
('route-212-south', 72, 'surfing', 30.00, 20, 30, NULL, NULL),
('route-212-south', 73, 'surfing', 1.00, 20, 40, NULL, NULL),
('route-212-south', 88, 'walking', 22.00, 23, 26, 'Poke Radar', NULL),
('route-212-south', 129, 'fishing_old', 100.00, 3, 15, NULL, NULL),
('route-212-south', 129, 'fishing_good', 55.00, 10, 25, NULL, NULL),
('route-212-south', 130, 'fishing_super', 55.00, 30, 55, NULL, NULL),
('route-212-south', 195, 'walking', 30.00, 24, 26, NULL, NULL),
('route-212-south', 223, 'fishing_good', 45.00, 10, 25, NULL, NULL),
('route-212-south', 224, 'fishing_super', 45.00, 30, 55, NULL, NULL),
('route-212-south', 270, 'walking', 4.00, 26, 26, 'Sapphire in Slot 2', NULL),
('route-212-south', 271, 'walking', 4.00, 23, 23, 'Sapphire in Slot 2', NULL),
('route-212-south', 418, 'walking', 15.00, 23, 25, NULL, NULL),
('route-212-south', 418, 'walking', 4.00, 23, 23, 'Ruby in Slot 2', NULL),
('route-212-south', 418, 'walking', 4.00, 23, 23, 'Emerald in Slot 2', NULL),
('route-212-south', 418, 'walking', 4.00, 23, 23, 'LeafGreen in Slot 2', NULL),
('route-212-south', 422, 'walking', 45.00, 23, 26, NULL, NULL),
('route-212-south', 422, 'walking', 4.00, 26, 26, 'Ruby in Slot 2', NULL),
('route-212-south', 422, 'walking', 4.00, 26, 26, 'Emerald in Slot 2', NULL),
('route-212-south', 422, 'walking', 4.00, 26, 26, 'LeafGreen in Slot 2', NULL),
('route-212-south', 422, 'surfing', 60.00, 20, 30, NULL, NULL),
('route-212-south', 423, 'surfing', 9.00, 20, 40, NULL, NULL),
('route-212-south', 453, 'walking', 10.00, 24, 25, NULL, NULL),
('great-marsh', 24, 'walking', 48.00, 28, 30, 'FireRed in Slot 2', NULL),
('great-marsh', 114, 'walking', 50.00, 28, 31, NULL, NULL),
('great-marsh', 114, 'walking', 24.00, 28, 30, 'Ruby in Slot 2', NULL),
('great-marsh', 114, 'walking', 24.00, 28, 30, 'Sapphire in Slot 2', NULL),
('great-marsh', 114, 'walking', 24.00, 28, 30, 'Emerald in Slot 2', NULL),
('great-marsh', 114, 'walking', 24.00, 28, 30, 'LeafGreen in Slot 2', NULL),
('great-marsh', 129, 'fishing_old', 600.00, 3, 15, NULL, NULL),
('great-marsh', 129, 'fishing_good', 330.00, 10, 25, NULL, NULL),
('great-marsh', 130, 'fishing_super', 240.00, 30, 55, NULL, NULL),
('great-marsh', 164, 'walking', 60.00, 28, 30, 'Night', NULL),
('great-marsh', 193, 'walking', 50.00, 27, 31, NULL, NULL),
('great-marsh', 193, 'walking', 24.00, 28, 30, 'Ruby in Slot 2', NULL),
('great-marsh', 193, 'walking', 24.00, 28, 30, 'Sapphire in Slot 2', NULL),
('great-marsh', 193, 'walking', 24.00, 28, 30, 'Emerald in Slot 2', NULL),
('great-marsh', 193, 'walking', 24.00, 28, 30, 'LeafGreen in Slot 2', NULL),
('great-marsh', 194, 'walking', 200.00, 26, 30, NULL, NULL),
('great-marsh', 194, 'surfing', 540.00, 20, 30, NULL, NULL),
('great-marsh', 195, 'walking', 60.00, 28, 30, NULL, NULL),
('great-marsh', 195, 'surfing', 60.00, 20, 40, NULL, NULL),
('great-marsh', 318, 'fishing_super', 270.00, 30, 55, NULL, NULL),
('great-marsh', 339, 'fishing_good', 270.00, 10, 25, NULL, NULL),
('great-marsh', 340, 'fishing_super', 90.00, 20, 50, NULL, NULL),
('great-marsh', 357, 'walking', 40.00, 28, 30, 'Morning', NULL),
('great-marsh', 357, 'walking', 40.00, 28, 30, 'Day', NULL),
('great-marsh', 400, 'walking', 120.00, 26, 28, NULL, NULL),
('great-marsh', 114, 'walking', 20.00, 27, 27, 'Morning', NULL),
('great-marsh', 114, 'walking', 20.00, 27, 27, 'Day', NULL),
('great-marsh', 163, 'walking', 60.00, 26, 27, 'Night', NULL),
('great-marsh', 400, 'walking', 40.00, 27, 28, 'Morning', NULL),
('great-marsh', 400, 'walking', 40.00, 27, 28, 'Day', NULL),
('great-marsh', 193, 'walking', 20.00, 26, 26, 'Morning', NULL),
('great-marsh', 193, 'walking', 20.00, 26, 26, 'Day', NULL),
('route-210-north', 54, 'surfing', 90.00, 20, 30, NULL, NULL),
('route-210-north', 55, 'surfing', 10.00, 20, 40, NULL, NULL),
('route-210-north', 66, 'walking', 15.00, 28, 29, NULL, NULL),
('route-210-north', 66, 'walking', 4.00, 29, 29, 'Emerald in Slot 2', NULL),
('route-210-north', 66, 'walking', 4.00, 29, 29, 'FireRed in Slot 2', NULL),
('route-210-north', 66, 'walking', 4.00, 29, 29, 'LeafGreen in Slot 2', NULL),
('route-210-north', 67, 'walking', 10.00, 29, 30, NULL, NULL),
('route-210-north', 67, 'walking', 4.00, 30, 30, 'Emerald in Slot 2', NULL),
('route-210-north', 67, 'walking', 4.00, 30, 30, 'FireRed in Slot 2', NULL),
('route-210-north', 67, 'walking', 4.00, 30, 30, 'LeafGreen in Slot 2', NULL),
('route-210-north', 123, 'walking', 10.00, 27, 27, 'Morning', NULL),
('route-210-north', 123, 'walking', 5.00, 29, 29, NULL, NULL),
('route-210-north', 129, 'fishing_old', 100.00, 3, 15, NULL, NULL),
('route-210-north', 129, 'fishing_good', 55.00, 10, 25, NULL, NULL),
('route-210-north', 130, 'fishing_super', 55.00, 30, 55, NULL, NULL),
('route-210-north', 163, 'walking', 10.00, 27, 27, 'Night', NULL),
('route-210-north', 164, 'walking', 10.00, 27, 27, 'Night', NULL),
('route-210-north', 307, 'walking', 10.00, 27, 27, 'Morning', NULL),
('route-210-north', 307, 'walking', 10.00, 27, 27, 'Day', NULL),
('route-210-north', 307, 'walking', 10.00, 29, 29, NULL, NULL),
('route-210-north', 333, 'walking', 20.00, 27, 27, NULL, NULL),
('route-210-north', 333, 'walking', 10.00, 27, 27, 'Day', NULL),
('route-210-north', 335, 'walking', 8.00, 29, 30, 'Ruby in Slot 2', NULL),
('route-210-north', 336, 'walking', 8.00, 29, 30, 'Sapphire in Slot 2', NULL),
('route-210-north', 339, 'fishing_good', 40.00, 15, 20, NULL, NULL),
('route-210-north', 340, 'fishing_good', 5.00, 25, 35, NULL, NULL),
('route-210-north', 340, 'fishing_super', 45.00, 30, 55, NULL, NULL),
('route-210-north', 371, 'walking', 22.00, 28, 30, 'Poke Radar', NULL),
('route-210-north', 400, 'walking', 20.00, 28, 28, NULL, NULL),
('fuego-ironworks', 72, 'surfing', 60.00, 20, 30, NULL, NULL),
('fuego-ironworks', 73, 'surfing', 9.00, 20, 40, NULL, NULL),
('fuego-ironworks', 81, 'walking', 30.00, 28, 30, NULL, NULL),
('fuego-ironworks', 90, 'fishing_super', 15.00, 20, 50, NULL, NULL),
('fuego-ironworks', 126, 'walking', 20.00, 28, 28, NULL, NULL),
('fuego-ironworks', 126, 'walking', 10.00, 29, 29, 'Morning', NULL),
('fuego-ironworks', 126, 'walking', 10.00, 29, 29, 'Day', NULL),
('fuego-ironworks', 129, 'fishing_old', 100.00, 3, 15, NULL, NULL),
('fuego-ironworks', 129, 'fishing_good', 55.00, 10, 25, NULL, NULL),
('fuego-ironworks', 130, 'fishing_super', 40.00, 30, 55, NULL, NULL),
('fuego-ironworks', 304, 'walking', 22.00, 30, 31, 'Poke Radar', NULL),
('fuego-ironworks', 419, 'walking', 25.00, 29, 31, NULL, NULL),
('fuego-ironworks', 422, 'surfing', 30.00, 20, 30, NULL, NULL),
('fuego-ironworks', 423, 'walking', 10.00, 29, 29, 'Night', NULL),
('fuego-ironworks', 423, 'walking', 15.00, 30, 31, NULL, NULL),
('fuego-ironworks', 423, 'surfing', 1.00, 20, 40, NULL, NULL),
('fuego-ironworks', 456, 'fishing_good', 45.00, 10, 25, NULL, NULL),
('fuego-ironworks', 457, 'fishing_super', 45.00, 30, 55, NULL, NULL),
('route-219', 72, 'surfing', 60.00, 20, 30, NULL, NULL),
('route-219', 73, 'surfing', 9.00, 20, 40, NULL, NULL),
('route-219', 129, 'fishing_old', 100.00, 3, 15, NULL, NULL),
('route-219', 129, 'fishing_good', 55.00, 10, 25, NULL, NULL),
('route-219', 130, 'fishing_super', 55.00, 30, 55, NULL, NULL),
('route-219', 278, 'surfing', 30.00, 20, 30, NULL, NULL),
('route-219', 279, 'surfing', 1.00, 20, 40, NULL, NULL),
('route-219', 456, 'fishing_good', 40.00, 15, 20, NULL, NULL),
('route-219', 457, 'fishing_good', 5.00, 25, 35, NULL, NULL),
('route-219', 457, 'fishing_super', 45.00, 30, 55, NULL, NULL),
('route-221', 30, 'walking', 11.00, 30, 30, 'Poke Radar', NULL),
('route-221', 33, 'walking', 11.00, 31, 31, 'Poke Radar', NULL),
('route-221', 72, 'surfing', 60.00, 20, 30, NULL, NULL),
('route-221', 73, 'surfing', 9.00, 20, 40, NULL, NULL),
('route-221', 83, 'walking', 40.00, 28, 29, 'Swarm', NULL),
('route-221', 129, 'fishing_old', 100.00, 3, 15, NULL, NULL),
('route-221', 129, 'fishing_good', 55.00, 10, 25, NULL, NULL),
('route-221', 130, 'fishing_super', 55.00, 30, 55, NULL, NULL),
('route-221', 185, 'walking', 25.00, 29, 31, NULL, NULL),
('route-221', 203, 'walking', 25.00, 28, 30, NULL, NULL),
('route-221', 278, 'surfing', 30.00, 20, 30, NULL, NULL),
('route-221', 279, 'surfing', 1.00, 20, 40, NULL, NULL),
('route-221', 315, 'walking', 10.00, 28, 28, 'Morning', NULL),
('route-221', 315, 'walking', 10.00, 28, 28, 'Day', NULL),
('route-221', 315, 'walking', 15.00, 29, 30, NULL, NULL),
('route-221', 419, 'walking', 25.00, 29, 31, NULL, NULL),
('route-221', 419, 'walking', 10.00, 28, 28, 'Night', NULL),
('route-221', 456, 'fishing_good', 40.00, 15, 20, NULL, NULL),
('route-221', 457, 'fishing_good', 5.00, 25, 35, NULL, NULL),
('route-221', 457, 'fishing_super', 45.00, 30, 55, NULL, NULL),
('route-218', 72, 'surfing', 60.00, 20, 30, NULL, NULL),
('route-218', 73, 'surfing', 9.00, 20, 40, NULL, NULL),
('route-218', 100, 'walking', 40.00, 28, 29, 'Swarm', NULL),
('route-218', 122, 'walking', 25.00, 29, 31, NULL, NULL),
('route-218', 129, 'fishing_old', 100.00, 3, 15, NULL, NULL),
('route-218', 129, 'fishing_good', 55.00, 10, 25, NULL, NULL),
('route-218', 130, 'fishing_super', 55.00, 30, 55, NULL, NULL),
('route-218', 419, 'walking', 30.00, 29, 31, NULL, NULL),
('route-218', 419, 'walking', 10.00, 30, 30, 'Night', NULL),
('route-218', 422, 'surfing', 30.00, 20, 30, NULL, NULL),
('route-218', 423, 'walking', 25.00, 28, 30, NULL, NULL),
('route-218', 423, 'walking', 10.00, 28, 28, 'Night', NULL),
('route-218', 423, 'surfing', 1.00, 20, 40, NULL, NULL),
('route-218', 441, 'walking', 20.00, 28, 30, 'Morning', NULL),
('route-218', 441, 'walking', 20.00, 28, 30, 'Day', NULL),
('route-218', 456, 'fishing_good', 45.00, 10, 25, NULL, NULL),
('route-218', 457, 'fishing_super', 45.00, 30, 55, NULL, NULL),
('iron-island-outside', 72, 'surfing', 30.00, 20, 30, NULL, NULL),
('iron-island-outside', 73, 'surfing', 1.00, 20, 40, NULL, NULL),
('iron-island-outside', 129, 'fishing_old', 100.00, 3, 15, NULL, NULL),
('iron-island-outside', 129, 'fishing_good', 55.00, 10, 25, NULL, NULL),
('iron-island-outside', 130, 'fishing_super', 40.00, 30, 55, NULL, NULL),
('iron-island-outside', 211, 'fishing_super', 15.00, 20, 50, NULL, NULL),
('iron-island-outside', 278, 'surfing', 60.00, 20, 30, NULL, NULL),
('iron-island-outside', 279, 'surfing', 9.00, 20, 40, NULL, NULL),
('iron-island-outside', 456, 'fishing_good', 45.00, 10, 25, NULL, NULL),
('iron-island-outside', 457, 'fishing_super', 45.00, 30, 55, NULL, NULL),
('iron-island-interior', 41, 'walking', 10.00, 30, 30, NULL, NULL),
('iron-island-interior', 42, 'walking', 110.00, 30, 33, NULL, NULL),
('iron-island-interior', 74, 'walking', 35.00, 30, 32, NULL, NULL),
('iron-island-interior', 75, 'walking', 325.00, 30, 34, NULL, NULL),
('iron-island-interior', 95, 'walking', 70.00, 31, 33, NULL, NULL),
('iron-island-interior', 75, 'walking', 40.00, 30, 32, 'Emerald in Slot 2', NULL),
('iron-island-interior', 75, 'walking', 40.00, 30, 32, 'FireRed in Slot 2', NULL),
('iron-island-interior', 75, 'walking', 40.00, 30, 32, 'LeafGreen in Slot 2', NULL),
('iron-island-interior', 302, 'walking', 40.00, 30, 32, 'Sapphire in Slot 2', NULL),
('iron-island-interior', 303, 'walking', 40.00, 30, 32, 'Ruby in Slot 2', NULL),
('iron-island-interior', 208, 'walking', 50.00, 32, 35, NULL, NULL),
('iron-island-interior', 447, 'gift', 100.00, 1, 1, 'story-progress-beat-team-galactic-iron-island', NULL),
('iron-island-interior', 95, 'walking', 20.00, 32, 32, 'Swarm', NULL),
('route-216', 41, 'walking', 10.00, 32, 32, 'Night', NULL),
('route-216', 75, 'walking', 5.00, 35, 35, NULL, NULL),
('route-216', 75, 'walking', 4.00, 35, 35, 'Ruby in Slot 2', NULL),
('route-216', 75, 'walking', 4.00, 35, 35, 'Sapphire in Slot 2', NULL),
('route-216', 75, 'walking', 4.00, 35, 35, 'FireRed in Slot 2', NULL),
('route-216', 75, 'walking', 4.00, 35, 35, 'LeafGreen in Slot 2', NULL),
('route-216', 215, 'walking', 35.00, 33, 35, NULL, NULL),
('route-216', 217, 'walking', 8.00, 35, 35, 'Emerald in Slot 2', NULL),
('route-216', 307, 'walking', 10.00, 32, 32, 'Morning', NULL),
('route-216', 307, 'walking', 10.00, 32, 32, 'Day', NULL),
('route-216', 307, 'walking', 10.00, 33, 33, NULL, NULL),
('route-216', 361, 'walking', 10.00, 33, 33, 'Night', NULL),
('route-216', 459, 'walking', 30.00, 32, 35, NULL, NULL),
('route-216', 459, 'walking', 10.00, 33, 33, 'Morning', NULL),
('route-216', 459, 'walking', 10.00, 33, 33, 'Day', NULL),
('route-216', 459, 'walking', 4.00, 35, 35, 'Ruby in Slot 2', NULL),
('route-216', 459, 'walking', 4.00, 35, 35, 'Sapphire in Slot 2', NULL),
('route-216', 459, 'walking', 4.00, 35, 35, 'FireRed in Slot 2', NULL),
('route-216', 459, 'walking', 4.00, 35, 35, 'LeafGreen in Slot 2', NULL),
('route-217', 215, 'walking', 10.00, 33, 33, 'Morning', NULL),
('route-217', 215, 'walking', 10.00, 33, 33, 'Day', NULL),
('route-217', 215, 'walking', 15.00, 34, 35, NULL, NULL),
('route-217', 215, 'walking', 4.00, 35, 35, 'Ruby in Slot 2', NULL),
('route-217', 215, 'walking', 4.00, 35, 35, 'Sapphire in Slot 2', NULL),
('route-217', 215, 'walking', 4.00, 35, 35, 'FireRed in Slot 2', NULL),
('route-217', 215, 'walking', 4.00, 35, 35, 'LeafGreen in Slot 2', NULL),
('route-217', 217, 'walking', 8.00, 35, 35, 'Emerald in Slot 2', NULL),
('route-217', 220, 'walking', 35.00, 32, 34, NULL, NULL),
('route-217', 221, 'walking', 22.00, 34, 35, 'Poke Radar', NULL),
('route-217', 225, 'walking', 40.00, 32, 33, 'Swarm', NULL),
('route-217', 361, 'walking', 20.00, 33, 33, 'Night', NULL),
('route-217', 459, 'walking', 30.00, 32, 35, NULL, NULL),
('route-217', 459, 'walking', 10.00, 33, 33, 'Morning', NULL),
('route-217', 459, 'walking', 10.00, 33, 33, 'Day', NULL),
('route-217', 459, 'walking', 4.00, 35, 35, 'Ruby in Slot 2', NULL),
('route-217', 459, 'walking', 4.00, 35, 35, 'Sapphire in Slot 2', NULL),
('route-217', 459, 'walking', 4.00, 35, 35, 'FireRed in Slot 2', NULL),
('route-217', 459, 'walking', 4.00, 35, 35, 'LeafGreen in Slot 2', NULL),
('acuity-lakefront', 215, 'walking', 10.00, 33, 33, 'Morning', NULL),
('acuity-lakefront', 215, 'walking', 10.00, 33, 33, 'Day', NULL),
('acuity-lakefront', 215, 'walking', 15.00, 35, 35, NULL, NULL),
('acuity-lakefront', 215, 'walking', 4.00, 35, 35, 'Ruby in Slot 2', NULL),
('acuity-lakefront', 215, 'walking', 4.00, 35, 35, 'Sapphire in Slot 2', NULL),
('acuity-lakefront', 215, 'walking', 4.00, 35, 35, 'FireRed in Slot 2', NULL),
('acuity-lakefront', 215, 'walking', 4.00, 35, 35, 'LeafGreen in Slot 2', NULL),
('acuity-lakefront', 217, 'walking', 8.00, 35, 35, 'Emerald in Slot 2', NULL),
('acuity-lakefront', 220, 'walking', 35.00, 32, 34, NULL, NULL),
('acuity-lakefront', 361, 'walking', 20.00, 32, 33, 'Night', NULL),
('acuity-lakefront', 459, 'walking', 30.00, 33, 35, NULL, NULL),
('acuity-lakefront', 459, 'walking', 10.00, 32, 32, 'Morning', NULL),
('acuity-lakefront', 459, 'walking', 10.00, 32, 32, 'Day', NULL),
('acuity-lakefront', 459, 'walking', 4.00, 35, 35, 'Ruby in Slot 2', NULL),
('acuity-lakefront', 459, 'walking', 4.00, 35, 35, 'Sapphire in Slot 2', NULL),
('acuity-lakefront', 459, 'walking', 4.00, 35, 35, 'FireRed in Slot 2', NULL),
('acuity-lakefront', 459, 'walking', 4.00, 35, 35, 'LeafGreen in Slot 2', NULL),
('lake-acuity', 54, 'walking', 5.00, 38, 38, NULL, NULL),
('lake-acuity', 54, 'surfing', 90.00, 20, 30, NULL, NULL),
('lake-acuity', 55, 'walking', 15.00, 39, 40, NULL, NULL),
('lake-acuity', 55, 'surfing', 10.00, 20, 40, NULL, NULL),
('lake-acuity', 118, 'fishing_good', 40.00, 15, 20, NULL, NULL),
('lake-acuity', 119, 'fishing_good', 5.00, 25, 35, NULL, NULL),
('lake-acuity', 119, 'fishing_super', 45.00, 30, 55, NULL, NULL),
('lake-acuity', 129, 'fishing_old', 100.00, 3, 15, NULL, NULL),
('lake-acuity', 129, 'fishing_good', 55.00, 10, 25, NULL, NULL),
('lake-acuity', 130, 'fishing_super', 55.00, 30, 55, NULL, NULL),
('lake-acuity', 215, 'walking', 10.00, 41, 41, NULL, NULL),
('lake-acuity', 216, 'walking', 8.00, 40, 41, 'Emerald in Slot 2', NULL),
('lake-acuity', 337, 'walking', 8.00, 40, 41, 'Sapphire in Slot 2', NULL),
('lake-acuity', 338, 'walking', 8.00, 40, 41, 'Ruby in Slot 2', NULL),
('lake-acuity', 361, 'walking', 20.00, 39, 40, 'Night', NULL),
('lake-acuity', 400, 'walking', 25.00, 39, 40, NULL, NULL),
('lake-acuity', 400, 'walking', 4.00, 40, 40, 'FireRed in Slot 2', NULL),
('lake-acuity', 400, 'walking', 4.00, 40, 40, 'LeafGreen in Slot 2', NULL),
('lake-acuity', 459, 'walking', 25.00, 38, 41, NULL, NULL),
('lake-acuity', 459, 'walking', 20.00, 39, 40, 'Morning', NULL),
('lake-acuity', 459, 'walking', 20.00, 39, 40, 'Day', NULL),
('lake-acuity', 459, 'walking', 4.00, 41, 41, 'FireRed in Slot 2', NULL),
('lake-acuity', 459, 'walking', 4.00, 41, 41, 'LeafGreen in Slot 2', NULL),
('snowpoint-temple', 42, 'walking', 320.00, 47, 50, NULL, NULL),
('snowpoint-temple', 215, 'walking', 40.00, 49, 50, NULL, NULL),
('snowpoint-temple', 238, 'walking', 10.00, 47, 49, NULL, NULL),
('snowpoint-temple', 124, 'walking', 30.00, 47, 50, NULL, NULL),
('mt-coronet-b1f', 35, 'walking', 10.00, 32, 32, 'Morning', NULL),
('mt-coronet-b1f', 35, 'walking', 10.00, 32, 32, 'Night', NULL),
('mt-coronet-b1f', 41, 'surfing', 90.00, 20, 30, NULL, NULL),
('mt-coronet-b1f', 42, 'walking', 10.00, 33, 33, 'Night', NULL),
('mt-coronet-b1f', 42, 'walking', 5.00, 34, 34, NULL, NULL),
('mt-coronet-b1f', 42, 'surfing', 10.00, 20, 40, NULL, NULL),
('mt-coronet-b1f', 67, 'walking', 10.00, 35, 35, NULL, NULL),
('mt-coronet-b1f', 75, 'walking', 20.00, 34, 34, NULL, NULL),
('mt-coronet-b1f', 75, 'walking', 10.00, 32, 32, 'Day', NULL),
('mt-coronet-b1f', 129, 'fishing_old', 100.00, 3, 15, NULL, NULL),
('mt-coronet-b1f', 129, 'fishing_good', 55.00, 10, 25, NULL, NULL),
('mt-coronet-b1f', 130, 'fishing_super', 55.00, 30, 55, NULL, NULL),
('mt-coronet-b1f', 299, 'walking', 5.00, 33, 33, NULL, NULL),
('mt-coronet-b1f', 307, 'walking', 10.00, 33, 33, 'Morning', NULL),
('mt-coronet-b1f', 307, 'walking', 10.00, 33, 33, 'Day', NULL),
('mt-coronet-b1f', 307, 'walking', 10.00, 35, 35, NULL, NULL),
('mt-coronet-b1f', 339, 'fishing_good', 45.00, 10, 25, NULL, NULL),
('mt-coronet-b1f', 340, 'fishing_super', 45.00, 30, 55, NULL, NULL),
('mt-coronet-b1f', 433, 'walking', 10.00, 32, 34, NULL, NULL),
('mt-coronet-b1f', 436, 'walking', 20.00, 33, 33, NULL, NULL),
('mt-coronet-2f', 35, 'walking', 10.00, 36, 36, 'Morning', NULL),
('mt-coronet-2f', 35, 'walking', 10.00, 36, 36, 'Night', NULL),
('mt-coronet-2f', 42, 'walking', 10.00, 37, 37, 'Night', NULL),
('mt-coronet-2f', 42, 'walking', 5.00, 38, 38, NULL, NULL),
('mt-coronet-2f', 42, 'walking', 4.00, 38, 38, 'Emerald in Slot 2', NULL),
('mt-coronet-2f', 42, 'walking', 4.00, 38, 38, 'FireRed in Slot 2', NULL),
('mt-coronet-2f', 42, 'walking', 4.00, 38, 38, 'LeafGreen in Slot 2', NULL),
('mt-coronet-2f', 67, 'walking', 10.00, 39, 39, NULL, NULL),
('mt-coronet-2f', 75, 'walking', 20.00, 38, 38, NULL, NULL),
('mt-coronet-2f', 75, 'walking', 10.00, 36, 36, 'Day', NULL),
('mt-coronet-2f', 299, 'walking', 5.00, 37, 37, NULL, NULL),
('mt-coronet-2f', 308, 'walking', 10.00, 37, 37, 'Morning', NULL),
('mt-coronet-2f', 308, 'walking', 10.00, 37, 37, 'Day', NULL),
('mt-coronet-2f', 308, 'walking', 10.00, 39, 39, NULL, NULL),
('mt-coronet-2f', 337, 'walking', 8.00, 38, 38, 'Sapphire in Slot 2', NULL),
('mt-coronet-2f', 338, 'walking', 8.00, 38, 38, 'Ruby in Slot 2', NULL),
('mt-coronet-2f', 433, 'walking', 10.00, 36, 38, NULL, NULL),
('mt-coronet-2f', 433, 'walking', 4.00, 38, 38, 'Emerald in Slot 2', NULL),
('mt-coronet-2f', 433, 'walking', 4.00, 38, 38, 'FireRed in Slot 2', NULL),
('mt-coronet-2f', 433, 'walking', 4.00, 38, 38, 'LeafGreen in Slot 2', NULL),
('mt-coronet-2f', 437, 'walking', 20.00, 37, 37, NULL, NULL),
('mt-coronet-3f', 35, 'walking', 10.00, 36, 36, 'Morning', NULL),
('mt-coronet-3f', 35, 'walking', 10.00, 36, 36, 'Night', NULL),
('mt-coronet-3f', 42, 'walking', 10.00, 37, 37, 'Night', NULL),
('mt-coronet-3f', 42, 'walking', 4.00, 38, 38, NULL, NULL),
('mt-coronet-3f', 42, 'walking', 4.00, 38, 38, 'Emerald in Slot 2', NULL),
('mt-coronet-3f', 42, 'walking', 4.00, 38, 38, 'FireRed in Slot 2', NULL),
('mt-coronet-3f', 42, 'walking', 4.00, 38, 38, 'LeafGreen in Slot 2', NULL),
('mt-coronet-3f', 67, 'walking', 10.00, 39, 39, NULL, NULL),
('mt-coronet-3f', 75, 'walking', 20.00, 38, 38, NULL, NULL),
('mt-coronet-3f', 75, 'walking', 10.00, 36, 36, 'Day', NULL),
('mt-coronet-3f', 299, 'walking', 5.00, 37, 37, NULL, NULL),
('mt-coronet-3f', 308, 'walking', 10.00, 37, 37, 'Morning', NULL),
('mt-coronet-3f', 308, 'walking', 10.00, 37, 37, 'Day', NULL),
('mt-coronet-3f', 308, 'walking', 11.00, 38, 39, NULL, NULL),
('mt-coronet-3f', 337, 'walking', 8.00, 38, 38, 'Sapphire in Slot 2', NULL),
('mt-coronet-3f', 338, 'walking', 8.00, 38, 38, 'Ruby in Slot 2', NULL),
('mt-coronet-3f', 433, 'walking', 10.00, 36, 38, NULL, NULL),
('mt-coronet-3f', 433, 'walking', 4.00, 38, 38, 'Emerald in Slot 2', NULL),
('mt-coronet-3f', 433, 'walking', 4.00, 38, 38, 'FireRed in Slot 2', NULL),
('mt-coronet-3f', 433, 'walking', 4.00, 38, 38, 'LeafGreen in Slot 2', NULL),
('mt-coronet-3f', 437, 'walking', 20.00, 37, 37, NULL, NULL),
('mt-coronet-exterior', 42, 'walking', 20.00, 38, 38, 'Night', NULL),
('mt-coronet-exterior', 67, 'walking', 20.00, 40, 40, NULL, NULL),
('mt-coronet-exterior', 164, 'walking', 20.00, 39, 39, 'Night', NULL),
('mt-coronet-exterior', 294, 'walking', 44.00, 39, 40, 'Poke Radar', NULL),
('mt-coronet-exterior', 299, 'walking', 10.00, 38, 38, NULL, NULL),
('mt-coronet-exterior', 308, 'walking', 20.00, 38, 38, 'Morning', NULL),
('mt-coronet-exterior', 308, 'walking', 20.00, 38, 38, 'Day', NULL),
('mt-coronet-exterior', 308, 'walking', 20.00, 40, 40, NULL, NULL),
('mt-coronet-exterior', 337, 'walking', 16.00, 38, 39, 'Sapphire in Slot 2', NULL),
('mt-coronet-exterior', 338, 'walking', 16.00, 38, 39, 'Ruby in Slot 2', NULL),
('mt-coronet-exterior', 359, 'walking', 10.00, 38, 40, NULL, NULL),
('mt-coronet-exterior', 359, 'walking', 8.00, 38, 38, 'Emerald in Slot 2', NULL),
('mt-coronet-exterior', 359, 'walking', 8.00, 38, 38, 'FireRed in Slot 2', NULL),
('mt-coronet-exterior', 359, 'walking', 8.00, 38, 38, 'LeafGreen in Slot 2', NULL),
('mt-coronet-exterior', 433, 'walking', 20.00, 37, 39, NULL, NULL),
('mt-coronet-exterior', 433, 'walking', 8.00, 39, 39, 'Emerald in Slot 2', NULL),
('mt-coronet-exterior', 433, 'walking', 8.00, 39, 39, 'FireRed in Slot 2', NULL),
('mt-coronet-exterior', 433, 'walking', 8.00, 39, 39, 'LeafGreen in Slot 2', NULL),
('mt-coronet-exterior', 459, 'walking', 40.00, 36, 36, NULL, NULL),
('mt-coronet-exterior', 460, 'walking', 40.00, 38, 38, NULL, NULL),
('mt-coronet-exterior', 460, 'walking', 20.00, 39, 39, 'Morning', NULL),
('mt-coronet-exterior', 460, 'walking', 20.00, 39, 39, 'Day', NULL),
('mt-coronet-4f', 35, 'walking', 20.00, 36, 36, 'Morning', NULL),
('mt-coronet-4f', 35, 'walking', 20.00, 36, 36, 'Night', NULL),
('mt-coronet-4f', 41, 'surfing', 90.00, 20, 30, NULL, NULL),
('mt-coronet-4f', 42, 'walking', 20.00, 37, 37, 'Night', NULL),
('mt-coronet-4f', 42, 'walking', 10.00, 38, 38, NULL, NULL),
('mt-coronet-4f', 42, 'walking', 8.00, 38, 38, 'Emerald in Slot 2', NULL),
('mt-coronet-4f', 42, 'walking', 8.00, 38, 38, 'FireRed in Slot 2', NULL),
('mt-coronet-4f', 42, 'walking', 8.00, 38, 38, 'LeafGreen in Slot 2', NULL),
('mt-coronet-4f', 42, 'surfing', 10.00, 20, 40, NULL, NULL),
('mt-coronet-4f', 67, 'walking', 20.00, 39, 39, NULL, NULL),
('mt-coronet-4f', 75, 'walking', 40.00, 38, 38, NULL, NULL),
('mt-coronet-4f', 75, 'walking', 20.00, 36, 36, 'Day', NULL),
('mt-coronet-4f', 129, 'fishing_old', 100.00, 3, 15, NULL, NULL),
('mt-coronet-4f', 129, 'fishing_good', 55.00, 10, 25, NULL, NULL),
('mt-coronet-4f', 130, 'fishing_super', 40.00, 30, 55, NULL, NULL),
('mt-coronet-4f', 147, 'fishing_super', 40.00, 15, 25, NULL, NULL),
('mt-coronet-4f', 148, 'fishing_super', 5.00, 20, 55, NULL, NULL),
('mt-coronet-4f', 299, 'walking', 10.00, 37, 37, NULL, NULL),
('mt-coronet-4f', 308, 'walking', 20.00, 37, 37, 'Morning', NULL),
('mt-coronet-4f', 308, 'walking', 20.00, 37, 37, 'Day', NULL),
('mt-coronet-4f', 308, 'walking', 20.00, 39, 39, NULL, NULL),
('mt-coronet-4f', 337, 'walking', 16.00, 38, 38, 'Sapphire in Slot 2', NULL),
('mt-coronet-4f', 338, 'walking', 16.00, 38, 38, 'Ruby in Slot 2', NULL),
('mt-coronet-4f', 339, 'fishing_good', 45.00, 10, 25, NULL, NULL),
('mt-coronet-4f', 340, 'fishing_super', 15.00, 20, 50, NULL, NULL),
('mt-coronet-4f', 433, 'walking', 19.00, 36, 38, NULL, NULL),
('mt-coronet-4f', 433, 'walking', 8.00, 38, 38, 'Emerald in Slot 2', NULL),
('mt-coronet-4f', 433, 'walking', 8.00, 38, 38, 'FireRed in Slot 2', NULL),
('mt-coronet-4f', 433, 'walking', 8.00, 38, 38, 'LeafGreen in Slot 2', NULL),
('mt-coronet-4f', 437, 'walking', 40.00, 37, 37, NULL, NULL),
('mt-coronet-4f', 358, 'walking', 1.00, 39, 39, NULL, NULL),
('mt-coronet-5f', 35, 'walking', 10.00, 36, 36, 'Morning', NULL),
('mt-coronet-5f', 35, 'walking', 10.00, 36, 36, 'Night', NULL),
('mt-coronet-5f', 42, 'walking', 10.00, 37, 37, 'Night', NULL),
('mt-coronet-5f', 42, 'walking', 5.00, 38, 38, NULL, NULL),
('mt-coronet-5f', 42, 'walking', 4.00, 38, 38, 'Emerald in Slot 2', NULL),
('mt-coronet-5f', 42, 'walking', 4.00, 38, 38, 'FireRed in Slot 2', NULL),
('mt-coronet-5f', 42, 'walking', 4.00, 38, 38, 'LeafGreen in Slot 2', NULL),
('mt-coronet-5f', 67, 'walking', 10.00, 39, 39, NULL, NULL),
('mt-coronet-5f', 75, 'walking', 20.00, 38, 38, NULL, NULL),
('mt-coronet-5f', 75, 'walking', 10.00, 36, 36, 'Day', NULL),
('mt-coronet-5f', 299, 'walking', 5.00, 37, 37, NULL, NULL),
('mt-coronet-5f', 308, 'walking', 10.00, 37, 37, 'Morning', NULL),
('mt-coronet-5f', 308, 'walking', 10.00, 37, 37, 'Day', NULL),
('mt-coronet-5f', 308, 'walking', 10.00, 39, 39, NULL, NULL),
('mt-coronet-5f', 337, 'walking', 8.00, 38, 39, 'Sapphire in Slot 2', NULL),
('mt-coronet-5f', 338, 'walking', 8.00, 38, 39, 'Ruby in Slot 2', NULL),
('mt-coronet-5f', 358, 'walking', 5.00, 39, 40, NULL, NULL),
('mt-coronet-5f', 358, 'walking', 4.00, 39, 39, 'Emerald in Slot 2', NULL),
('mt-coronet-5f', 358, 'walking', 4.00, 39, 39, 'FireRed in Slot 2', NULL),
('mt-coronet-5f', 358, 'walking', 4.00, 39, 39, 'LeafGreen in Slot 2', NULL),
('mt-coronet-5f', 433, 'walking', 5.00, 36, 36, NULL, NULL),
('mt-coronet-5f', 437, 'walking', 20.00, 37, 37, NULL, NULL),
('mt-coronet-6f', 35, 'walking', 10.00, 36, 36, 'Morning', NULL),
('mt-coronet-6f', 35, 'walking', 10.00, 36, 36, 'Night', NULL),
('mt-coronet-6f', 42, 'walking', 10.00, 37, 37, 'Night', NULL),
('mt-coronet-6f', 42, 'walking', 5.00, 38, 38, NULL, NULL),
('mt-coronet-6f', 42, 'walking', 4.00, 38, 38, 'Emerald in Slot 2', NULL),
('mt-coronet-6f', 42, 'walking', 4.00, 38, 38, 'FireRed in Slot 2', NULL),
('mt-coronet-6f', 42, 'walking', 4.00, 38, 38, 'LeafGreen in Slot 2', NULL),
('mt-coronet-6f', 67, 'walking', 10.00, 39, 39, NULL, NULL),
('mt-coronet-6f', 75, 'walking', 20.00, 38, 38, NULL, NULL),
('mt-coronet-6f', 75, 'walking', 10.00, 36, 36, 'Day', NULL),
('mt-coronet-6f', 299, 'walking', 5.00, 37, 37, NULL, NULL),
('mt-coronet-6f', 308, 'walking', 10.00, 37, 37, 'Morning', NULL),
('mt-coronet-6f', 308, 'walking', 10.00, 37, 37, 'Day', NULL),
('mt-coronet-6f', 308, 'walking', 10.00, 39, 39, NULL, NULL),
('mt-coronet-6f', 337, 'walking', 8.00, 38, 40, 'Sapphire in Slot 2', NULL),
('mt-coronet-6f', 338, 'walking', 8.00, 38, 40, 'Ruby in Slot 2', NULL),
('mt-coronet-6f', 358, 'walking', 10.00, 39, 41, NULL, NULL),
('mt-coronet-6f', 358, 'walking', 4.00, 40, 40, 'Emerald in Slot 2', NULL),
('mt-coronet-6f', 358, 'walking', 4.00, 40, 40, 'FireRed in Slot 2', NULL),
('mt-coronet-6f', 358, 'walking', 4.00, 40, 40, 'LeafGreen in Slot 2', NULL),
('mt-coronet-6f', 437, 'walking', 20.00, 37, 37, NULL, NULL),
('turnback-cave', 42, 'walking', 75.00, 17, 27, NULL, NULL),
('turnback-cave', 92, 'walking', 60.00, 15, 17, NULL, NULL),
('turnback-cave', 92, 'walking', 20.00, 16, 16, 'Morning', NULL),
('turnback-cave', 92, 'walking', 20.00, 16, 16, 'Day', NULL),
('turnback-cave', 337, 'walking', 24.00, 18, 28, 'Sapphire in Slot 2', NULL),
('turnback-cave', 338, 'walking', 24.00, 18, 28, 'Ruby in Slot 2', NULL),
('turnback-cave', 355, 'walking', 14.00, 18, 28, NULL, NULL),
('turnback-cave', 356, 'walking', 30.00, 16, 26, 'Night', NULL),
('turnback-cave', 356, 'walking', 12.00, 18, 28, 'Emerald in Slot 2', NULL),
('turnback-cave', 356, 'walking', 12.00, 18, 28, 'FireRed in Slot 2', NULL),
('turnback-cave', 356, 'walking', 12.00, 18, 28, 'LeafGreen in Slot 2', NULL),
('turnback-cave', 356, 'walking', 2.00, 18, 18, 'Poke Radar', NULL),
('turnback-cave', 433, 'walking', 29.00, 16, 28, NULL, NULL),
('turnback-cave', 433, 'walking', 12.00, 18, 28, 'Emerald in Slot 2', NULL),
('turnback-cave', 433, 'walking', 12.00, 18, 28, 'FireRed in Slot 2', NULL),
('turnback-cave', 433, 'walking', 12.00, 18, 28, 'LeafGreen in Slot 2', NULL),
('turnback-cave', 436, 'walking', 60.00, 15, 25, NULL, NULL),
('turnback-cave', 93, 'walking', 30.00, 25, 27, NULL, NULL),
('turnback-cave', 93, 'walking', 10.00, 26, 26, 'Morning', NULL),
('turnback-cave', 93, 'walking', 10.00, 26, 26, 'Day', NULL),
('turnback-cave', 356, 'walking', 1.00, 28, 28, NULL, NULL),
('turnback-cave', 358, 'walking', 1.00, 28, 28, NULL, NULL),
('turnback-cave', 433, 'walking', 1.00, 28, 28, 'Poke Radar', NULL),
('lake-valor', 54, 'walking', 15.00, 38, 39, NULL, NULL),
('lake-valor', 54, 'surfing', 90.00, 20, 30, NULL, NULL),
('lake-valor', 55, 'walking', 15.00, 40, 41, NULL, NULL),
('lake-valor', 55, 'surfing', 10.00, 20, 40, NULL, NULL),
('lake-valor', 118, 'fishing_good', 40.00, 15, 20, NULL, NULL),
('lake-valor', 119, 'fishing_good', 5.00, 25, 35, NULL, NULL),
('lake-valor', 119, 'fishing_super', 45.00, 30, 55, NULL, NULL),
('lake-valor', 129, 'fishing_old', 100.00, 3, 15, NULL, NULL),
('lake-valor', 129, 'fishing_good', 55.00, 10, 25, NULL, NULL),
('lake-valor', 130, 'fishing_super', 55.00, 30, 55, NULL, NULL),
('lake-valor', 202, 'walking', 22.00, 38, 41, 'Poke Radar', NULL),
('lake-valor', 337, 'walking', 8.00, 40, 41, 'Sapphire in Slot 2', NULL),
('lake-valor', 338, 'walking', 8.00, 40, 41, 'Ruby in Slot 2', NULL),
('lake-valor', 397, 'walking', 35.00, 38, 40, NULL, NULL),
('lake-valor', 397, 'walking', 4.00, 40, 40, 'Emerald in Slot 2', NULL),
('lake-valor', 397, 'walking', 4.00, 40, 40, 'FireRed in Slot 2', NULL),
('lake-valor', 397, 'walking', 4.00, 40, 40, 'LeafGreen in Slot 2', NULL),
('lake-valor', 400, 'walking', 35.00, 39, 41, NULL, NULL),
('lake-valor', 400, 'walking', 4.00, 41, 41, 'Emerald in Slot 2', NULL),
('lake-valor', 400, 'walking', 4.00, 41, 41, 'FireRed in Slot 2', NULL),
('lake-valor', 400, 'walking', 4.00, 41, 41, 'LeafGreen in Slot 2', NULL),
('route-222', 72, 'surfing', 60.00, 30, 40, NULL, NULL),
('route-222', 73, 'surfing', 9.00, 30, 50, NULL, NULL),
('route-222', 81, 'walking', 10.00, 39, 39, NULL, NULL),
('route-222', 82, 'walking', 5.00, 41, 41, NULL, NULL),
('route-222', 125, 'walking', 20.00, 39, 39, NULL, NULL),
('route-222', 125, 'walking', 10.00, 41, 41, 'Morning', NULL),
('route-222', 125, 'walking', 10.00, 41, 41, 'Day', NULL),
('route-222', 129, 'fishing_old', 100.00, 3, 15, NULL, NULL),
('route-222', 129, 'fishing_good', 55.00, 10, 25, NULL, NULL),
('route-222', 130, 'fishing_super', 55.00, 30, 55, NULL, NULL),
('route-222', 180, 'walking', 22.00, 38, 41, 'Poke Radar', NULL),
('route-222', 223, 'fishing_good', 45.00, 10, 25, NULL, NULL),
('route-222', 224, 'fishing_super', 45.00, 30, 55, NULL, NULL),
('route-222', 278, 'walking', 10.00, 38, 38, NULL, NULL),
('route-222', 278, 'surfing', 30.00, 30, 40, NULL, NULL),
('route-222', 279, 'walking', 5.00, 40, 40, NULL, NULL),
('route-222', 279, 'surfing', 1.00, 30, 50, NULL, NULL),
('route-222', 300, 'walking', 40.00, 39, 40, 'Swarm', NULL),
('route-222', 404, 'walking', 10.00, 38, 40, NULL, NULL),
('route-222', 419, 'walking', 20.00, 40, 40, NULL, NULL),
('route-222', 419, 'walking', 20.00, 38, 41, 'Night', NULL),
('route-222', 441, 'walking', 10.00, 38, 38, 'Morning', NULL),
('route-222', 441, 'walking', 10.00, 38, 38, 'Day', NULL),
('victory-road-1f', 42, 'walking', 10.00, 42, 42, 'Night', NULL),
('victory-road-1f', 42, 'walking', 5.00, 43, 43, NULL, NULL),
('victory-road-1f', 75, 'walking', 20.00, 40, 40, NULL, NULL),
('victory-road-1f', 75, 'walking', 10.00, 42, 42, 'Morning', NULL),
('victory-road-1f', 75, 'walking', 10.00, 42, 42, 'Day', NULL),
('victory-road-1f', 95, 'walking', 20.00, 41, 42, NULL, NULL),
('victory-road-1f', 111, 'walking', 20.00, 41, 41, NULL, NULL),
('victory-road-1f', 112, 'walking', 15.00, 41, 43, NULL, NULL),
('victory-road-1f', 208, 'walking', 5.00, 42, 42, NULL, NULL),
('victory-road-1f', 444, 'walking', 5.00, 41, 41, NULL, NULL),
('victory-road-2f', 42, 'walking', 10.00, 41, 41, 'Night', NULL),
('victory-road-2f', 42, 'walking', 5.00, 44, 44, NULL, NULL),
('victory-road-2f', 75, 'walking', 10.00, 41, 41, 'Morning', NULL),
('victory-road-2f', 75, 'walking', 10.00, 41, 41, 'Day', NULL),
('victory-road-2f', 75, 'walking', 5.00, 43, 43, NULL, NULL),
('victory-road-2f', 82, 'walking', 30.00, 41, 43, NULL, NULL),
('victory-road-2f', 95, 'walking', 5.00, 42, 42, NULL, NULL),
('victory-road-2f', 208, 'walking', 40.00, 42, 44, NULL, NULL),
('victory-road-2f', 444, 'walking', 5.00, 43, 43, NULL, NULL),
('victory-road-b1f', 42, 'walking', 10.00, 41, 41, 'Night', NULL),
('victory-road-b1f', 42, 'walking', 5.00, 44, 44, NULL, NULL),
('victory-road-b1f', 42, 'surfing', 10.00, 30, 50, NULL, NULL),
('victory-road-b1f', 75, 'walking', 10.00, 41, 41, 'Morning', NULL),
('victory-road-b1f', 75, 'walking', 10.00, 41, 41, 'Day', NULL),
('victory-road-b1f', 75, 'walking', 5.00, 43, 43, NULL, NULL),
('victory-road-b1f', 95, 'walking', 10.00, 42, 42, NULL, NULL),
('victory-road-b1f', 129, 'fishing_old', 100.00, 3, 15, NULL, NULL),
('victory-road-b1f', 129, 'fishing_good', 100.00, 10, 25, NULL, NULL),
('victory-road-b1f', 130, 'fishing_super', 100.00, 30, 55, NULL, NULL),
('victory-road-b1f', 184, 'walking', 30.00, 41, 43, NULL, NULL),
('victory-road-b1f', 208, 'walking', 5.00, 44, 44, NULL, NULL),
('victory-road-b1f', 419, 'walking', 30.00, 42, 44, NULL, NULL),
('victory-road-b1f', 419, 'surfing', 90.00, 30, 50, NULL, NULL),
('victory-road-b1f', 444, 'walking', 5.00, 43, 43, NULL, NULL),
('route-224', 43, 'walking', 20.00, 49, 49, 'Night', NULL),
('route-224', 44, 'walking', 5.00, 51, 51, NULL, NULL),
('route-224', 69, 'walking', 20.00, 49, 49, 'Morning', NULL),
('route-224', 69, 'walking', 20.00, 49, 49, 'Day', NULL),
('route-224', 70, 'walking', 5.00, 51, 51, NULL, NULL),
('route-224', 73, 'surfing', 30.00, 35, 55, NULL, NULL),
('route-224', 129, 'fishing_old', 100.00, 3, 15, NULL, NULL),
('route-224', 129, 'fishing_good', 55.00, 10, 25, NULL, NULL),
('route-224', 130, 'fishing_super', 40.00, 30, 55, NULL, NULL),
('route-224', 177, 'walking', 40.00, 50, 50, 'Swarm', NULL),
('route-224', 213, 'walking', 8.00, 52, 52, 'Emerald in Slot 2', NULL),
('route-224', 223, 'fishing_good', 45.00, 10, 25, NULL, NULL),
('route-224', 224, 'fishing_super', 45.00, 30, 55, NULL, NULL),
('route-224', 267, 'walking', 5.00, 52, 52, NULL, NULL),
('route-224', 267, 'walking', 4.00, 52, 52, 'Ruby in Slot 2', NULL),
('route-224', 267, 'walking', 4.00, 52, 52, 'Sapphire in Slot 2', NULL),
('route-224', 267, 'walking', 4.00, 52, 52, 'FireRed in Slot 2', NULL),
('route-224', 267, 'walking', 4.00, 52, 52, 'LeafGreen in Slot 2', NULL),
('route-224', 269, 'walking', 5.00, 52, 52, NULL, NULL),
('route-224', 269, 'walking', 4.00, 52, 52, 'Ruby in Slot 2', NULL),
('route-224', 269, 'walking', 4.00, 52, 52, 'Sapphire in Slot 2', NULL),
('route-224', 269, 'walking', 4.00, 52, 52, 'FireRed in Slot 2', NULL),
('route-224', 269, 'walking', 4.00, 52, 52, 'LeafGreen in Slot 2', NULL),
('route-224', 279, 'walking', 10.00, 51, 51, NULL, NULL),
('route-224', 279, 'surfing', 60.00, 35, 55, NULL, NULL),
('route-224', 315, 'walking', 20.00, 50, 50, NULL, NULL),
('route-224', 370, 'fishing_super', 15.00, 20, 30, NULL, NULL),
('route-224', 419, 'walking', 20.00, 50, 50, NULL, NULL),
('route-224', 423, 'walking', 10.00, 49, 49, NULL, NULL),
('route-224', 423, 'surfing', 10.00, 35, 55, NULL, NULL),
('route-225', 19, 'walking', 5.00, 47, 47, NULL, NULL),
('route-225', 20, 'walking', 15.00, 49, 50, NULL, NULL),
('route-225', 21, 'walking', 5.00, 47, 47, NULL, NULL),
('route-225', 22, 'walking', 20.00, 48, 50, 'Morning', NULL),
('route-225', 22, 'walking', 20.00, 48, 50, 'Day', NULL),
('route-225', 22, 'walking', 10.00, 49, 49, NULL, NULL),
('route-225', 54, 'surfing', 10.00, 35, 45, NULL, NULL),
('route-225', 55, 'surfing', 90.00, 35, 55, NULL, NULL),
('route-225', 56, 'walking', 2.00, 47, 47, 'Poke Radar', NULL),
('route-225', 57, 'walking', 20.00, 49, 50, 'Poke Radar', NULL),
('route-225', 67, 'walking', 25.00, 48, 50, NULL, NULL),
('route-225', 75, 'walking', 20.00, 49, 49, NULL, NULL),
('route-225', 129, 'fishing_old', 100.00, 3, 15, NULL, NULL),
('route-225', 129, 'fishing_good', 55.00, 10, 25, NULL, NULL),
('route-225', 130, 'fishing_super', 55.00, 30, 55, NULL, NULL),
('route-225', 296, 'walking', 40.00, 48, 49, 'Swarm', NULL),
('route-225', 339, 'fishing_good', 45.00, 10, 25, NULL, NULL),
('route-225', 340, 'fishing_super', 45.00, 30, 55, NULL, NULL),
('route-225', 354, 'walking', 20.00, 48, 50, 'Night', NULL),
('route-227', 22, 'walking', 10.00, 51, 51, 'Morning', NULL),
('route-227', 22, 'walking', 10.00, 51, 51, 'Day', NULL),
('route-227', 22, 'walking', 10.00, 53, 53, NULL, NULL),
('route-227', 42, 'walking', 10.00, 51, 51, 'Night', NULL),
('route-227', 60, 'surfing', 30.00, 35, 45, NULL, NULL),
('route-227', 61, 'surfing', 70.00, 35, 55, NULL, NULL),
('route-227', 75, 'walking', 15.00, 51, 53, NULL, NULL),
('route-227', 110, 'walking', 10.00, 52, 52, NULL, NULL),
('route-227', 111, 'walking', 5.00, 52, 52, NULL, NULL),
('route-227', 112, 'walking', 20.00, 54, 54, NULL, NULL),
('route-227', 129, 'fishing_old', 100.00, 3, 15, NULL, NULL),
('route-227', 129, 'fishing_good', 55.00, 10, 25, NULL, NULL),
('route-227', 130, 'fishing_super', 55.00, 30, 55, NULL, NULL),
('route-227', 227, 'walking', 5.00, 53, 53, NULL, NULL),
('route-227', 322, 'walking', 5.00, 51, 51, NULL, NULL),
('route-227', 323, 'walking', 20.00, 53, 53, NULL, NULL),
('route-227', 324, 'walking', 22.00, 51, 53, 'Poke Radar', NULL),
('route-227', 327, 'walking', 40.00, 53, 54, 'Swarm', NULL),
('route-227', 339, 'fishing_good', 45.00, 10, 25, NULL, NULL),
('route-227', 340, 'fishing_super', 45.00, 30, 55, NULL, NULL),
('stark-mountain-exterior', 22, 'walking', 20.00, 51, 51, 'Morning', NULL),
('stark-mountain-exterior', 22, 'walking', 20.00, 51, 51, 'Day', NULL),
('stark-mountain-exterior', 22, 'walking', 20.00, 53, 53, NULL, NULL),
('stark-mountain-exterior', 42, 'walking', 20.00, 51, 51, 'Night', NULL),
('stark-mountain-exterior', 75, 'walking', 30.00, 51, 53, NULL, NULL),
('stark-mountain-exterior', 110, 'walking', 20.00, 52, 52, NULL, NULL),
('stark-mountain-exterior', 111, 'walking', 10.00, 52, 52, NULL, NULL),
('stark-mountain-exterior', 112, 'walking', 40.00, 54, 54, NULL, NULL),
('stark-mountain-exterior', 227, 'walking', 10.00, 53, 53, NULL, NULL),
('stark-mountain-exterior', 322, 'walking', 10.00, 51, 51, NULL, NULL),
('stark-mountain-exterior', 323, 'walking', 40.00, 53, 53, NULL, NULL),
('stark-mountain-exterior', 324, 'walking', 44.00, 51, 53, 'Poke Radar', NULL),
('stark-mountain-exterior', 60, 'surfing', 30.00, 35, 45, NULL, NULL),
('stark-mountain-exterior', 61, 'surfing', 70.00, 35, 55, NULL, NULL),
('stark-mountain-exterior', 129, 'fishing_old', 100.00, 3, 15, NULL, NULL),
('stark-mountain-exterior', 129, 'fishing_good', 55.00, 10, 25, NULL, NULL),
('stark-mountain-exterior', 130, 'fishing_super', 55.00, 30, 55, NULL, NULL),
('stark-mountain-exterior', 327, 'walking', 40.00, 53, 54, 'Swarm', NULL),
('stark-mountain-exterior', 339, 'fishing_good', 45.00, 10, 25, NULL, NULL),
('stark-mountain-exterior', 340, 'fishing_super', 45.00, 30, 55, NULL, NULL),
('stark-mountain-interior', 42, 'walking', 30.00, 52, 53, NULL, NULL),
('stark-mountain-interior', 75, 'walking', 30.00, 51, 54, NULL, NULL),
('stark-mountain-interior', 110, 'walking', 30.00, 51, 54, NULL, NULL),
('stark-mountain-interior', 111, 'walking', 5.00, 52, 52, NULL, NULL),
('stark-mountain-interior', 112, 'walking', 30.00, 54, 55, NULL, NULL),
('stark-mountain-interior', 218, 'walking', 10.00, 52, 53, NULL, NULL),
('stark-mountain-interior', 219, 'walking', 60.00, 53, 55, NULL, NULL),
('stark-mountain-interior', 109, 'walking', 5.00, 53, 53, NULL, NULL),
('route-228', 28, 'walking', 8.00, 49, 50, 'LeafGreen in Slot 2', NULL),
('route-228', 50, 'walking', 5.00, 49, 49, NULL, NULL),
('route-228', 50, 'walking', 4.00, 49, 49, 'Ruby in Slot 2', NULL),
('route-228', 50, 'walking', 4.00, 49, 49, 'Sapphire in Slot 2', NULL),
('route-228', 50, 'walking', 4.00, 49, 49, 'Emerald in Slot 2', NULL),
('route-228', 50, 'walking', 4.00, 49, 49, 'FireRed in Slot 2', NULL),
('route-228', 51, 'walking', 30.00, 50, 52, NULL, NULL),
('route-228', 60, 'surfing', 30.00, 35, 45, NULL, NULL),
('route-228', 61, 'surfing', 70.00, 35, 55, NULL, NULL),
('route-228', 112, 'walking', 10.00, 50, 50, 'Morning', NULL),
('route-228', 112, 'walking', 10.00, 50, 50, 'Day', NULL),
('route-228', 112, 'walking', 10.00, 52, 52, NULL, NULL),
('route-228', 129, 'fishing_old', 100.00, 3, 15, NULL, NULL),
('route-228', 129, 'fishing_good', 55.00, 10, 25, NULL, NULL),
('route-228', 130, 'fishing_super', 55.00, 30, 55, NULL, NULL),
('route-228', 331, 'walking', 5.00, 50, 50, NULL, NULL),
('route-228', 331, 'walking', 4.00, 50, 50, 'Ruby in Slot 2', NULL),
('route-228', 331, 'walking', 4.00, 50, 50, 'Sapphire in Slot 2', NULL),
('route-228', 331, 'walking', 4.00, 50, 50, 'Emerald in Slot 2', NULL),
('route-228', 331, 'walking', 4.00, 50, 50, 'FireRed in Slot 2', NULL),
('route-228', 332, 'walking', 20.00, 52, 52, NULL, NULL),
('route-228', 332, 'walking', 20.00, 50, 50, 'Night', NULL),
('route-228', 339, 'fishing_good', 40.00, 15, 20, NULL, NULL),
('route-228', 340, 'fishing_good', 5.00, 25, 35, NULL, NULL),
('route-228', 340, 'fishing_super', 45.00, 30, 55, NULL, NULL),
('route-228', 374, 'walking', 40.00, 51, 52, 'Swarm', NULL),
('route-228', 450, 'walking', 10.00, 50, 50, 'Morning', NULL),
('route-228', 450, 'walking', 10.00, 50, 50, 'Day', NULL),
('route-228', 450, 'walking', 10.00, 51, 51, NULL, NULL),
('route-229', 16, 'walking', 20.00, 50, 50, 'Day', NULL),
('route-229', 16, 'walking', 5.00, 47, 47, NULL, NULL),
('route-229', 48, 'walking', 2.00, 48, 48, 'Poke Radar', NULL),
('route-229', 49, 'walking', 20.00, 49, 49, 'Poke Radar', NULL),
('route-229', 118, 'fishing_good', 45.00, 10, 25, NULL, NULL),
('route-229', 119, 'fishing_super', 45.00, 30, 55, NULL, NULL),
('route-229', 127, 'walking', 40.00, 48, 49, 'Swarm', NULL),
('route-229', 129, 'fishing_old', 100.00, 3, 15, NULL, NULL),
('route-229', 129, 'fishing_good', 55.00, 10, 25, NULL, NULL),
('route-229', 130, 'fishing_super', 55.00, 30, 55, NULL, NULL),
('route-229', 166, 'walking', 20.00, 50, 50, 'Morning', NULL),
('route-229', 168, 'walking', 20.00, 50, 50, 'Night', NULL),
('route-229', 204, 'walking', 8.00, 48, 48, 'Emerald in Slot 2', NULL),
('route-229', 267, 'walking', 5.00, 48, 48, NULL, NULL),
('route-229', 267, 'walking', 4.00, 48, 48, 'FireRed in Slot 2', NULL),
('route-229', 267, 'walking', 4.00, 48, 48, 'LeafGreen in Slot 2', NULL),
('route-229', 269, 'walking', 5.00, 48, 48, NULL, NULL),
('route-229', 269, 'walking', 4.00, 48, 48, 'FireRed in Slot 2', NULL),
('route-229', 269, 'walking', 4.00, 48, 48, 'LeafGreen in Slot 2', NULL),
('route-229', 271, 'walking', 8.00, 48, 48, 'Sapphire in Slot 2', NULL),
('route-229', 274, 'walking', 8.00, 48, 48, 'Ruby in Slot 2', NULL),
('route-229', 283, 'surfing', 95.00, 35, 45, NULL, NULL),
('route-229', 284, 'surfing', 5.00, 35, 55, NULL, NULL),
('route-229', 313, 'walking', 10.00, 49, 49, NULL, NULL),
('route-229', 314, 'walking', 10.00, 49, 49, NULL, NULL),
('route-229', 315, 'walking', 45.00, 48, 50, NULL, NULL);

INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions, version_exclusive)
SELECT r.id, e.dex, e.method, e.rate, e.lmin, e.lmax, NULLIF(e.cond, ''), NULLIF(e.ver_excl, '')
FROM _enc e JOIN public.routes r ON r.slug = e.slug AND r.game_id = 'e5f6a7b8-c9d0-1234-efab-567890123456';

DROP TABLE _enc;

-- ===========================================
-- STEP 5: BOSS TRAINERS
-- ===========================================

-- Roark (Gym Leader)
DO $$
DECLARE
  v_trainer_id UUID;
  v_route_id UUID;
BEGIN
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'oreburgh-mine-1f' AND game_id = 'e5f6a7b8-c9d0-1234-efab-567890123456';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
  VALUES (v_route_id, 'Roark', 'Gym Leader', true, 'gym_leader', 14, 1, 'Rock-type specialist. Coal Badge. TM76 Stealth Rock.')
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 74, 12, 1, '["Stealth Rock", "Leer", "Rock Throw", "Rock Polish"]'::jsonb, 'Rock Head', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 95, 12, 2, '["Stealth Rock", "Screech", "Rock Throw", "Bind"]'::jsonb, 'Rock Head', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 408, 14, 3, '["Headbutt", "Leer", "Pursuit", "Rock Tomb"]'::jsonb, 'Mold Breaker', NULL, NULL);
END $$;

-- Gardenia (Gym Leader)
DO $$
DECLARE
  v_trainer_id UUID;
  v_route_id UUID;
BEGIN
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'eterna-forest' AND game_id = 'e5f6a7b8-c9d0-1234-efab-567890123456';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
  VALUES (v_route_id, 'Gardenia', 'Gym Leader', true, 'gym_leader', 22, 1, 'Grass-type specialist. Forest Badge. TM86 Grass Knot.')
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 420, 20, 1, '["Grass Knot", "Safeguard", "Sunny Day", "Leech Seed"]'::jsonb, 'Flower Gift', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 407, 20, 2, '["Grass Knot", "Stun Spore", "Poison Sting", "Growth"]'::jsonb, 'Poison Point', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 388, 22, 3, '["Grass Knot", "Reflect", "Razor Leaf", "Bite"]'::jsonb, 'Overgrow', NULL, NULL);
END $$;

-- Fantina (Gym Leader)
DO $$
DECLARE
  v_trainer_id UUID;
  v_route_id UUID;
BEGIN
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-208' AND game_id = 'e5f6a7b8-c9d0-1234-efab-567890123456';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
  VALUES (v_route_id, 'Fantina', 'Gym Leader', true, 'gym_leader', 26, 1, 'Ghost-type specialist. Relic Badge. TM65 Shadow Claw.')
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 355, 24, 1, '["Will-O-Wisp", "Shadow Sneak", "Pursuit", "Confuse Ray"]'::jsonb, 'Levitate', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 93, 24, 2, '["Shadow Claw", "Hypnosis", "Confuse Ray", "Sucker Punch"]'::jsonb, 'Levitate', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 429, 26, 3, '["Shadow Ball", "Psybeam", "Magical Leaf", "Confuse Ray"]'::jsonb, 'Levitate', 'Sitrus Berry', NULL);
END $$;

-- Maylene (Gym Leader)
DO $$
DECLARE
  v_trainer_id UUID;
  v_route_id UUID;
BEGIN
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-215' AND game_id = 'e5f6a7b8-c9d0-1234-efab-567890123456';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
  VALUES (v_route_id, 'Maylene', 'Gym Leader', true, 'gym_leader', 32, 1, 'Fighting-type specialist. Cobble Badge. TM60 Drain Punch.')
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 307, 28, 1, '["Drain Punch", "Fake Out", "Bulk Up", "Rock Tomb"]'::jsonb, 'Pure Power', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 67, 29, 2, '["Drain Punch", "Rock Tomb", "Knock Off", "Focus Energy"]'::jsonb, 'Guts', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 448, 32, 3, '["Drain Punch", "Metal Claw", "Force Palm", "Bone Rush"]'::jsonb, 'Steadfast', 'Sitrus Berry', NULL);
END $$;

-- Crasher Wake (Gym Leader)
DO $$
DECLARE
  v_trainer_id UUID;
  v_route_id UUID;
BEGIN
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-213' AND game_id = 'e5f6a7b8-c9d0-1234-efab-567890123456';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
  VALUES (v_route_id, 'Crasher Wake', 'Gym Leader', true, 'gym_leader', 37, 1, 'Water-type specialist. Fen Badge. TM55 Brine.')
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 195, 33, 1, '["Mud Bomb", "Water Pulse", "Rain Dance", "Yawn"]'::jsonb, 'Damp', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 130, 33, 2, '["Waterfall", "Ice Fang", "Bite", "Dragon Dance"]'::jsonb, 'Intimidate', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 419, 37, 3, '["Aqua Jet", "Pursuit", "Brick Break", "Crunch"]'::jsonb, 'Swift Swim', 'Sitrus Berry', NULL);
END $$;

-- Byron (Gym Leader)
DO $$
DECLARE
  v_trainer_id UUID;
  v_route_id UUID;
BEGIN
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'iron-island-outside' AND game_id = 'e5f6a7b8-c9d0-1234-efab-567890123456';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
  VALUES (v_route_id, 'Byron', 'Gym Leader', true, 'gym_leader', 39, 1, 'Steel-type specialist. Mine Badge. TM91 Flash Cannon.')
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 82, 36, 1, '["Flash Cannon", "Tri Attack", "Thunder Wave", "Thunderbolt"]'::jsonb, 'Sturdy', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 208, 36, 2, '["Earthquake", "Sandstorm", "Ice Fang", "Iron Tail"]'::jsonb, 'Rock Head', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 411, 39, 3, '["Flash Cannon", "Stone Edge", "Iron Defense", "Metal Burst"]'::jsonb, 'Sturdy', 'Sitrus Berry', NULL);
END $$;

-- Candice (Gym Leader)
DO $$
DECLARE
  v_trainer_id UUID;
  v_route_id UUID;
BEGIN
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-217' AND game_id = 'e5f6a7b8-c9d0-1234-efab-567890123456';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
  VALUES (v_route_id, 'Candice', 'Gym Leader', true, 'gym_leader', 42, 1, 'Ice-type specialist. Icicle Badge. TM72 Avalanche.')
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 459, 38, 1, '["Avalanche", "Wood Hammer", "Swagger", "Water Pulse"]'::jsonb, 'Snow Warning', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 461, 38, 2, '["Ice Punch", "X-Scissor", "Slash", "Faint Attack"]'::jsonb, 'Pressure', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 308, 40, 3, '["Ice Punch", "Psychic", "Bulk Up", "Rock Slide"]'::jsonb, 'Pure Power', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 478, 42, 4, '["Blizzard", "Shadow Ball", "Psychic", "Hail"]'::jsonb, 'Snow Cloak', 'Sitrus Berry', NULL);
END $$;

-- Volkner (Gym Leader)
DO $$
DECLARE
  v_trainer_id UUID;
  v_route_id UUID;
BEGIN
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-222' AND game_id = 'e5f6a7b8-c9d0-1234-efab-567890123456';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
  VALUES (v_route_id, 'Volkner', 'Gym Leader', true, 'gym_leader', 50, 1, 'Electric-type specialist. Beacon Badge. TM57 Charge Beam.')
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 26, 46, 1, '["Charge Beam", "Signal Beam", "Focus Blast", "Quick Attack"]'::jsonb, 'Static', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 466, 46, 2, '["Thunder Punch", "Fire Punch", "Ice Punch", "Giga Impact"]'::jsonb, 'Motor Drive', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 135, 48, 3, '["Shadow Ball", "Thunder", "Quick Attack", "Iron Tail"]'::jsonb, 'Volt Absorb', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 405, 50, 4, '["Thunder Fang", "Crunch", "Fire Fang", "Ice Fang"]'::jsonb, 'Intimidate', 'Sitrus Berry', NULL);
END $$;

-- Aaron (Elite Four)
DO $$
DECLARE
  v_trainer_id UUID;
  v_route_id UUID;
BEGIN
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'victory-road-1f' AND game_id = 'e5f6a7b8-c9d0-1234-efab-567890123456';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
  VALUES (v_route_id, 'Aaron', 'Elite Four', true, 'elite_four', 57, 1, 'Bug-type specialist.')
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 414, 49, 1, '["Bug Buzz", "Air Slash", "Psychic", "U-turn"]'::jsonb, 'Swarm', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 416, 50, 2, '["Attack Order", "Defend Order", "Power Gem", "Heal Order"]'::jsonb, 'Pressure', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 214, 51, 3, '["Megahorn", "Close Combat", "Night Slash", "Stone Edge"]'::jsonb, 'Swarm', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 452, 53, 4, '["Cross Poison", "X-Scissor", "Night Slash", "Ice Fang"]'::jsonb, 'Battle Armor', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 212, 57, 5, '["X-Scissor", "Iron Head", "Night Slash", "Quick Attack"]'::jsonb, 'Technician', 'Sitrus Berry', NULL);
END $$;

-- Bertha (Elite Four)
DO $$
DECLARE
  v_trainer_id UUID;
  v_route_id UUID;
BEGIN
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'victory-road-1f' AND game_id = 'e5f6a7b8-c9d0-1234-efab-567890123456';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
  VALUES (v_route_id, 'Bertha', 'Elite Four', true, 'elite_four', 59, 2, 'Ground-type specialist.')
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 195, 50, 1, '["Earthquake", "Surf", "Sandstorm", "Protect"]'::jsonb, 'Damp', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 76, 52, 2, '["Earthquake", "Sandstorm", "Rock Polish", "Stone Edge"]'::jsonb, 'Sturdy', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 340, 52, 3, '["Earthquake", "Zen Headbutt", "Surf", "Sandstorm"]'::jsonb, 'Oblivious', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 423, 55, 4, '["Earthquake", "Surf", "Sludge Bomb", "Sandstorm"]'::jsonb, 'Storm Drain', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 450, 59, 5, '["Earthquake", "Crunch", "Yawn", "Stone Edge"]'::jsonb, 'Sand Stream', 'Sitrus Berry', NULL);
END $$;

-- Flint (Elite Four)
DO $$
DECLARE
  v_trainer_id UUID;
  v_route_id UUID;
BEGIN
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'victory-road-1f' AND game_id = 'e5f6a7b8-c9d0-1234-efab-567890123456';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
  VALUES (v_route_id, 'Flint', 'Elite Four', true, 'elite_four', 61, 3, 'Fire-type specialist.')
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 78, 52, 1, '["Flare Blitz", "Solar Beam", "Bounce", "Sunny Day"]'::jsonb, 'Flash Fire', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 426, 53, 2, '["Fly", "Will-O-Wisp", "Baton Pass", "Shadow Ball"]'::jsonb, 'Aftermath', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 208, 55, 3, '["Fire Fang", "Thunder Fang", "Iron Tail", "Screech"]'::jsonb, 'Rock Head', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 428, 55, 4, '["Fire Punch", "Mirror Coat", "Sunny Day", "Charm"]'::jsonb, 'Cute Charm', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 392, 61, 5, '["Flare Blitz", "Earthquake", "Mach Punch", "ThunderPunch"]'::jsonb, 'Blaze', 'Sitrus Berry', NULL);
END $$;

-- Lucian (Elite Four)
DO $$
DECLARE
  v_trainer_id UUID;
  v_route_id UUID;
BEGIN
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'victory-road-1f' AND game_id = 'e5f6a7b8-c9d0-1234-efab-567890123456';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
  VALUES (v_route_id, 'Lucian', 'Elite Four', true, 'elite_four', 63, 4, 'Psychic-type specialist.')
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 122, 53, 1, '["Psychic", "Thunderbolt", "Reflect", "Light Screen"]'::jsonb, 'Filter', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 196, 55, 2, '["Psychic", "Shadow Ball", "Signal Beam", "Quick Attack"]'::jsonb, 'Synchronize', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 437, 56, 3, '["Psychic", "Gyro Ball", "Calm Mind", "Earthquake"]'::jsonb, 'Levitate', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 65, 56, 4, '["Psychic", "Focus Blast", "Energy Ball", "Recover"]'::jsonb, 'Synchronize', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 475, 63, 5, '["Psycho Cut", "Close Combat", "Stone Edge", "Leaf Blade"]'::jsonb, 'Steadfast', 'Sitrus Berry', NULL);
END $$;

-- Cynthia (Champion)
DO $$
DECLARE
  v_trainer_id UUID;
  v_route_id UUID;
BEGIN
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'victory-road-1f' AND game_id = 'e5f6a7b8-c9d0-1234-efab-567890123456';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
  VALUES (v_route_id, 'Cynthia', 'Champion', true, 'champion', 66, 5, 'Sinnoh Champion. Uses a diverse, powerful team.')
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 442, 58, 1, '["Dark Pulse", "Psychic", "Silver Wind", "Embargo"]'::jsonb, 'Pressure', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 407, 58, 2, '["Energy Ball", "Sludge Bomb", "Shadow Ball", "Extrasensory"]'::jsonb, 'Natural Cure', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 423, 58, 3, '["Surf", "Earthquake", "Stone Edge", "Sludge Bomb"]'::jsonb, 'Storm Drain', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 448, 60, 4, '["Aura Sphere", "Shadow Ball", "Dragon Pulse", "Psychic"]'::jsonb, 'Inner Focus', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 350, 58, 5, '["Surf", "Ice Beam", "Mirror Coat", "Recover"]'::jsonb, 'Marvel Scale', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 445, 66, 6, '["Dragon Rush", "Earthquake", "Brick Break", "Giga Impact"]'::jsonb, 'Sand Veil', 'Sitrus Berry', NULL);
END $$;

-- Update total_routes count
UPDATE public.games SET total_routes = 77 WHERE id = 'e5f6a7b8-c9d0-1234-efab-567890123456';
