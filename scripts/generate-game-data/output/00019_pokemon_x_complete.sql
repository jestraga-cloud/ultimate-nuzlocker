-- ===========================================
-- POKEMON X: COMPLETE GAME DATA
-- Official Pokemon Game
-- Gen 6, Kalos region
-- ===========================================
-- Game ID: d6e7f8a9-b0c1-2345-d678-901234567890
-- ===========================================

-- STEP 1: Insert the game
INSERT INTO public.games (id, slug, name, generation, region, base_game_slug, is_romhack, sprite_url, total_routes, description)
VALUES (
  'd6e7f8a9-b0c1-2345-d678-901234567890',
  'pokemon-x',
  'Pokemon X',
  6,
  'Kalos',
  NULL,
  false,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/716.png',
  53,
  'Pokemon X for Nintendo 3DS. Set in the Kalos region. Introduces Fairy type and Mega Evolution.'
);

-- ===========================================
-- STEP 2: ALL ROUTES (53 total)
-- ===========================================

INSERT INTO public.routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items, notes) VALUES
('d6e7f8a9-b0c1-2345-d678-901234567890', 'Vaniville Town', 'vaniville-town', 1, 'city', true, false, false, 'Starter town. Choose Chespin, Fennekin, or Froakie.'),
('d6e7f8a9-b0c1-2345-d678-901234567890', 'Route 1 (Vaniville Pathway)', 'route-1', 2, 'route', false, false, false, 'Very short path to Aquacorde Town.'),
('d6e7f8a9-b0c1-2345-d678-901234567890', 'Aquacorde Town', 'aquacorde-town', 3, 'city', false, false, false, 'Meet friends and receive starter.'),
('d6e7f8a9-b0c1-2345-d678-901234567890', 'Route 2 (Avance Trail)', 'route-2', 4, 'route', true, true, false, NULL),
('d6e7f8a9-b0c1-2345-d678-901234567890', 'Santalune Forest', 'santalune-forest', 5, 'cave', true, true, true, NULL),
('d6e7f8a9-b0c1-2345-d678-901234567890', 'Route 3 (Ouvert Way)', 'route-3', 6, 'route', true, true, false, NULL),
('d6e7f8a9-b0c1-2345-d678-901234567890', 'Santalune City', 'santalune-city', 7, 'city', false, true, true, 'Gym Leader Viola. Bug-type specialist.'),
('d6e7f8a9-b0c1-2345-d678-901234567890', 'Route 4 (Parterre Way)', 'route-4', 8, 'route', true, true, false, 'Flower garden route.'),
('d6e7f8a9-b0c1-2345-d678-901234567890', 'Lumiose City (South)', 'lumiose-city-south', 9, 'city', false, false, true, 'Partial access. Full access after Clemont.'),
('d6e7f8a9-b0c1-2345-d678-901234567890', 'Route 5 (Versant Road)', 'route-5', 10, 'route', true, true, false, NULL),
('d6e7f8a9-b0c1-2345-d678-901234567890', 'Camphrier Town', 'camphrier-town', 11, 'city', false, false, true, NULL),
('d6e7f8a9-b0c1-2345-d678-901234567890', 'Route 6 (Palais Lane)', 'route-6', 12, 'route', true, true, false, NULL),
('d6e7f8a9-b0c1-2345-d678-901234567890', 'Parfum Palace', 'parfum-palace', 13, 'building', false, false, true, 'Furfrou event.'),
('d6e7f8a9-b0c1-2345-d678-901234567890', 'Route 7 (Rivière Walk)', 'route-7', 14, 'route', true, true, false, 'Berry fields.'),
('d6e7f8a9-b0c1-2345-d678-901234567890', 'Connecting Cave', 'connecting-cave', 15, 'cave', true, true, true, NULL),
('d6e7f8a9-b0c1-2345-d678-901234567890', 'Route 8 (Muraille Coast)', 'route-8', 16, 'route', true, true, false, 'Coastal route.'),
('d6e7f8a9-b0c1-2345-d678-901234567890', 'Ambrette Town', 'ambrette-town', 17, 'city', false, false, true, 'Fossil Lab.'),
('d6e7f8a9-b0c1-2345-d678-901234567890', 'Route 9 (Spikes Passage)', 'route-9', 18, 'route', true, true, false, 'Rhyhorn ride section.'),
('d6e7f8a9-b0c1-2345-d678-901234567890', 'Glittering Cave', 'glittering-cave', 19, 'cave', true, true, true, 'Team Flare encounter. Fossil restoration.'),
('d6e7f8a9-b0c1-2345-d678-901234567890', 'Cyllage City', 'cyllage-city', 20, 'city', false, true, true, 'Gym Leader Grant. Rock-type specialist.'),
('d6e7f8a9-b0c1-2345-d678-901234567890', 'Route 10 (Menhir Trail)', 'route-10', 21, 'route', true, true, false, 'Standing stones area.'),
('d6e7f8a9-b0c1-2345-d678-901234567890', 'Geosenge Town', 'geosenge-town', 22, 'city', false, false, true, 'Team Flare base nearby.'),
('d6e7f8a9-b0c1-2345-d678-901234567890', 'Route 11 (Miroir Way)', 'route-11', 23, 'route', true, true, false, NULL),
('d6e7f8a9-b0c1-2345-d678-901234567890', 'Reflection Cave', 'reflection-cave', 24, 'cave', true, true, true, NULL),
('d6e7f8a9-b0c1-2345-d678-901234567890', 'Shalour City', 'shalour-city', 25, 'city', false, true, true, 'Gym Leader Korrina. Fighting-type specialist.'),
('d6e7f8a9-b0c1-2345-d678-901234567890', 'Tower of Mastery', 'tower-of-mastery', 26, 'building', false, true, false, 'Mega Evolution tutorial. Lucario gift.'),
('d6e7f8a9-b0c1-2345-d678-901234567890', 'Route 12 (Fourrage Road)', 'route-12', 27, 'route', true, true, false, 'Lapras gift.'),
('d6e7f8a9-b0c1-2345-d678-901234567890', 'Coumarine City', 'coumarine-city', 28, 'city', false, true, true, 'Gym Leader Ramos. Grass-type specialist.'),
('d6e7f8a9-b0c1-2345-d678-901234567890', 'Route 13 (Lumiose Badlands)', 'route-13', 29, 'route', true, true, false, 'Desert area. Power Plant nearby.'),
('d6e7f8a9-b0c1-2345-d678-901234567890', 'Lumiose City', 'lumiose-city', 30, 'city', false, true, true, 'Gym Leader Clemont. Electric-type specialist. Full city access.'),
('d6e7f8a9-b0c1-2345-d678-901234567890', 'Route 14 (Laverre Nature Trail)', 'route-14', 31, 'route', true, true, false, 'Swampy forest.'),
('d6e7f8a9-b0c1-2345-d678-901234567890', 'Laverre City', 'laverre-city', 32, 'city', false, true, true, 'Gym Leader Valerie. Fairy-type specialist.'),
('d6e7f8a9-b0c1-2345-d678-901234567890', 'Poke Ball Factory', 'poke-ball-factory', 33, 'building', false, true, true, 'Team Flare encounter.'),
('d6e7f8a9-b0c1-2345-d678-901234567890', 'Route 15 (Brun Way)', 'route-15', 34, 'route', true, true, false, NULL),
('d6e7f8a9-b0c1-2345-d678-901234567890', 'Lost Hotel', 'lost-hotel', 35, 'building', true, true, true, NULL),
('d6e7f8a9-b0c1-2345-d678-901234567890', 'Route 16 (Melancolie Path)', 'route-16', 36, 'route', true, true, false, NULL),
('d6e7f8a9-b0c1-2345-d678-901234567890', 'Dendemille Town', 'dendemille-town', 37, 'city', false, false, true, NULL),
('d6e7f8a9-b0c1-2345-d678-901234567890', 'Frost Cavern', 'frost-cavern', 38, 'cave', true, true, true, 'Team Flare encounter. Abomasnow battle.'),
('d6e7f8a9-b0c1-2345-d678-901234567890', 'Route 17 (Mamoswine Road)', 'route-17', 39, 'route', true, true, false, 'Mamoswine ride through deep snow.'),
('d6e7f8a9-b0c1-2345-d678-901234567890', 'Anistar City', 'anistar-city', 40, 'city', false, true, true, 'Gym Leader Olympia. Psychic-type specialist.'),
('d6e7f8a9-b0c1-2345-d678-901234567890', 'Route 18 (Vallée Étroite Way)', 'route-18', 41, 'route', true, true, false, NULL),
('d6e7f8a9-b0c1-2345-d678-901234567890', 'Terminus Cave', 'terminus-cave', 42, 'cave', true, true, true, 'Zygarde encounter (post-game).'),
('d6e7f8a9-b0c1-2345-d678-901234567890', 'Couriway Town', 'couriway-town', 43, 'city', false, false, true, NULL),
('d6e7f8a9-b0c1-2345-d678-901234567890', 'Route 19 (Grande Vallée Way)', 'route-19', 44, 'route', true, true, false, NULL),
('d6e7f8a9-b0c1-2345-d678-901234567890', 'Snowbelle City', 'snowbelle-city', 45, 'city', false, true, true, 'Gym Leader Wulfric. Ice-type specialist.'),
('d6e7f8a9-b0c1-2345-d678-901234567890', 'Route 20 (Winding Woods)', 'route-20', 46, 'route', true, true, false, NULL),
('d6e7f8a9-b0c1-2345-d678-901234567890', 'Pokemon Village', 'pokemon-village', 47, 'special', true, false, true, 'Hidden area with rare Pokemon.'),
('d6e7f8a9-b0c1-2345-d678-901234567890', 'Route 21 (Dernière Way)', 'route-21', 48, 'route', true, true, false, NULL),
('d6e7f8a9-b0c1-2345-d678-901234567890', 'Victory Road', 'victory-road', 49, 'cave', true, true, true, NULL),
('d6e7f8a9-b0c1-2345-d678-901234567890', 'Pokemon League', 'pokemon-league', 50, 'building', false, true, false, 'Elite Four and Champion Diantha.'),
('d6e7f8a9-b0c1-2345-d678-901234567890', 'Kiloude City', 'kiloude-city', 51, 'city', false, true, true, 'Battle Maison. Friend Safari.'),
('d6e7f8a9-b0c1-2345-d678-901234567890', 'Route 22 (Détourner Way)', 'route-22', 52, 'route', true, true, false, NULL),
('d6e7f8a9-b0c1-2345-d678-901234567890', 'Chamber of Emptiness', 'chamber-of-emptiness', 53, 'cave', false, false, true, 'Banettite found here.');

-- ===========================================
-- STEP 3: STARTER POKEMON
-- ===========================================

INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max)
SELECT r.id, 650, 'gift', NULL, 5, 5
FROM public.routes r WHERE r.slug = 'vaniville-town' AND r.game_id = 'd6e7f8a9-b0c1-2345-d678-901234567890';

INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max)
SELECT r.id, 653, 'gift', NULL, 5, 5
FROM public.routes r WHERE r.slug = 'vaniville-town' AND r.game_id = 'd6e7f8a9-b0c1-2345-d678-901234567890';

INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max)
SELECT r.id, 656, 'gift', NULL, 5, 5
FROM public.routes r WHERE r.slug = 'vaniville-town' AND r.game_id = 'd6e7f8a9-b0c1-2345-d678-901234567890';

-- ===========================================
-- STEP 4: ENCOUNTER DATA (313 total)
-- ===========================================

CREATE TEMP TABLE _enc (slug TEXT, dex INT, method TEXT, rate DECIMAL(5,2), lmin INT, lmax INT, cond TEXT, ver_excl TEXT);
INSERT INTO _enc VALUES
('route-2', 13, 'walking', 11.00, 3, 4, NULL, NULL),
('route-2', 16, 'walking', 14.00, 3, 4, NULL, NULL),
('route-2', 263, 'walking', 15.00, 3, 4, NULL, NULL),
('route-2', 659, 'walking', 20.00, 2, 3, NULL, NULL),
('route-2', 661, 'walking', 20.00, 2, 3, NULL, NULL),
('route-2', 664, 'walking', 20.00, 2, 3, NULL, NULL),
('santalune-forest', 10, 'walking', 10.00, 2, 2, NULL, NULL),
('santalune-forest', 13, 'walking', 20.00, 2, 3, NULL, NULL),
('santalune-forest', 14, 'walking', 4.00, 4, 4, NULL, NULL),
('santalune-forest', 25, 'walking', 6.00, 3, 4, NULL, NULL),
('santalune-forest', 511, 'walking', 10.00, 4, 4, NULL, NULL),
('santalune-forest', 513, 'walking', 10.00, 4, 4, NULL, NULL),
('santalune-forest', 515, 'walking', 10.00, 4, 4, NULL, NULL),
('santalune-forest', 661, 'walking', 10.00, 4, 4, NULL, NULL),
('santalune-forest', 664, 'walking', 20.00, 2, 3, NULL, NULL),
('route-3', 16, 'walking', 10.00, 4, 4, NULL, NULL),
('route-3', 25, 'walking', 5.00, 4, 5, NULL, NULL),
('route-3', 118, 'fishing_good', 65.00, 25, 25, NULL, NULL),
('route-3', 119, 'fishing_super', 35.00, 35, 35, NULL, NULL),
('route-3', 129, 'fishing_old', 100.00, 15, 15, NULL, NULL),
('route-3', 130, 'fishing_super', 60.00, 35, 35, NULL, NULL),
('route-3', 183, 'surfing', 34.00, 25, 27, NULL, NULL),
('route-3', 206, 'walking', 5.00, 5, 5, NULL, NULL),
('route-3', 284, 'surfing', 66.00, 25, 27, NULL, NULL),
('route-3', 298, 'walking', 10.00, 5, 5, NULL, NULL),
('route-3', 341, 'fishing_good', 35.00, 25, 25, NULL, NULL),
('route-3', 342, 'fishing_super', 5.00, 35, 35, NULL, NULL),
('route-3', 399, 'walking', 20.00, 3, 4, NULL, NULL),
('route-3', 412, 'walking', 10.00, 5, 5, NULL, NULL),
('route-3', 659, 'walking', 20.00, 3, 4, NULL, NULL),
('route-3', 661, 'walking', 20.00, 3, 5, NULL, NULL),
('route-4', 165, 'walking', 40.00, 6, 8, NULL, NULL),
('route-4', 280, 'walking', 10.00, 8, 8, NULL, NULL),
('route-4', 300, 'walking', 20.00, 8, 8, NULL, NULL),
('route-4', 406, 'walking', 20.00, 8, 8, NULL, NULL),
('route-4', 415, 'walking', 40.00, 6, 8, NULL, NULL),
('route-4', 669, 'walking', 70.00, 6, 8, NULL, NULL),
('route-5', 63, 'walking', 10.00, 10, 10, NULL, NULL),
('route-5', 84, 'walking', 20.00, 10, 10, NULL, NULL),
('route-5', 311, 'walking', 10.00, 9, 10, NULL, NULL),
('route-5', 316, 'walking', 20.00, 10, 10, NULL, NULL),
('route-5', 659, 'walking', 40.00, 8, 10, NULL, NULL),
('route-5', 672, 'walking', 40.00, 8, 10, NULL, NULL),
('route-5', 674, 'walking', 30.00, 8, 10, NULL, NULL),
('route-5', 676, 'walking', 30.00, 8, 10, NULL, NULL),
('route-6', 43, 'walking', 30.00, 10, 12, NULL, NULL),
('route-6', 161, 'walking', 20.00, 10, 11, NULL, NULL),
('route-6', 290, 'walking', 10.00, 12, 12, NULL, NULL),
('route-6', 352, 'walking', 5.00, 11, 12, NULL, NULL),
('route-6', 677, 'walking', 20.00, 11, 12, NULL, NULL),
('route-6', 679, 'walking', 15.00, 11, 12, NULL, NULL),
('route-7', 143, 'static', 100.00, 15, 15, NULL, NULL),
('route-7', 235, 'walking', 30.00, 14, 14, NULL, NULL),
('route-7', 313, 'walking', 30.00, 13, 13, NULL, NULL),
('route-7', 314, 'walking', 30.00, 13, 13, NULL, NULL),
('route-7', 315, 'walking', 30.00, 14, 14, NULL, NULL),
('route-7', 453, 'walking', 45.00, 12, 14, NULL, NULL),
('route-7', 580, 'walking', 30.00, 14, 14, NULL, NULL),
('route-7', 669, 'walking', 75.00, 12, 14, NULL, NULL),
('route-7', 684, 'walking', 30.00, 14, 14, NULL, NULL),
('connecting-cave', 41, 'walking', 30.00, 13, 15, NULL, NULL),
('connecting-cave', 293, 'walking', 30.00, 13, 15, NULL, NULL),
('connecting-cave', 307, 'walking', 30.00, 13, 15, NULL, NULL),
('connecting-cave', 610, 'walking', 10.00, 13, 15, NULL, NULL),
('route-8', 72, 'surfing', 69.00, 25, 27, NULL, NULL),
('route-8', 120, 'fishing_good', 35.00, 25, 25, NULL, NULL),
('route-8', 121, 'fishing_super', 5.00, 35, 35, NULL, NULL),
('route-8', 211, 'fishing_super', 60.00, 35, 35, NULL, NULL),
('route-8', 320, 'surfing', 31.00, 25, 27, NULL, NULL),
('route-8', 325, 'walking', 30.00, 13, 15, NULL, NULL),
('route-8', 335, 'walking', 20.00, 14, 14, NULL, NULL),
('route-8', 359, 'walking', 30.00, 13, 15, NULL, NULL),
('route-8', 370, 'fishing_old', 100.00, 15, 15, NULL, NULL),
('route-8', 371, 'walking', 10.00, 14, 15, NULL, NULL),
('route-8', 425, 'walking', 40.00, 13, 15, NULL, NULL),
('route-8', 557, 'rock_smash', 66.00, 18, 20, NULL, NULL),
('route-8', 619, 'walking', 40.00, 13, 15, NULL, NULL),
('route-8', 686, 'walking', 30.00, 14, 15, NULL, NULL),
('route-8', 688, 'rock_smash', 34.00, 18, 20, NULL, NULL),
('route-8', 692, 'fishing_good', 65.00, 25, 25, NULL, NULL),
('route-8', 693, 'fishing_super', 35.00, 35, 35, NULL, NULL),
('route-9', 449, 'walking', 40.00, 15, 17, NULL, NULL),
('route-9', 551, 'walking', 40.00, 15, 17, NULL, NULL),
('route-9', 694, 'walking', 20.00, 15, 17, NULL, NULL),
('glittering-cave', 66, 'walking', 30.00, 15, 17, NULL, NULL),
('glittering-cave', 95, 'walking', 10.00, 17, 17, NULL, NULL),
('glittering-cave', 104, 'walking', 20.00, 15, 16, NULL, NULL),
('glittering-cave', 111, 'walking', 10.00, 17, 17, NULL, NULL),
('glittering-cave', 115, 'walking', 5.00, 17, 17, NULL, NULL),
('glittering-cave', 303, 'walking', 5.00, 15, 16, NULL, NULL),
('glittering-cave', 337, 'walking', 10.00, 17, 17, NULL, NULL),
('glittering-cave', 338, 'walking', 10.00, 17, 17, NULL, NULL),
('glittering-cave', 696, 'gift', 100.00, 20, 20, NULL, NULL),
('glittering-cave', 698, 'gift', 100.00, 20, 20, NULL, NULL),
('glittering-cave', 95, 'rock_smash', 35.00, 15, 17, NULL, NULL),
('glittering-cave', 557, 'rock_smash', 65.00, 15, 17, NULL, NULL),
('route-10', 133, 'walking', 25.00, 19, 21, NULL, NULL),
('route-10', 209, 'walking', 40.00, 19, 21, NULL, NULL),
('route-10', 228, 'walking', 30.00, 19, 21, NULL, NULL),
('route-10', 561, 'walking', 30.00, 19, 21, NULL, NULL),
('route-10', 587, 'walking', 10.00, 19, 20, NULL, NULL),
('route-10', 622, 'walking', 40.00, 19, 21, NULL, NULL),
('route-10', 701, 'walking', 25.00, 19, 21, NULL, NULL),
('route-11', 30, 'walking', 5.00, 21, 21, NULL, NULL),
('route-11', 33, 'walking', 10.00, 21, 21, NULL, NULL),
('route-11', 297, 'walking', 20.00, 22, 23, NULL, NULL),
('route-11', 397, 'walking', 20.00, 22, 23, NULL, NULL),
('route-11', 433, 'walking', 10.00, 21, 21, NULL, NULL),
('route-11', 434, 'walking', 10.00, 21, 21, NULL, NULL),
('route-11', 539, 'walking', 20.00, 22, 23, NULL, NULL),
('route-11', 702, 'walking', 5.00, 21, 22, NULL, NULL),
('reflection-cave', 122, 'walking', 80.00, 22, 23, NULL, NULL),
('reflection-cave', 202, 'walking', 40.00, 22, 22, NULL, NULL),
('reflection-cave', 302, 'walking', 20.00, 22, 23, NULL, NULL),
('reflection-cave', 433, 'walking', 60.00, 21, 22, NULL, NULL),
('reflection-cave', 524, 'walking', 80.00, 21, 22, NULL, NULL),
('reflection-cave', 577, 'walking', 80.00, 22, 23, NULL, NULL),
('reflection-cave', 703, 'walking', 40.00, 23, 23, NULL, NULL),
('route-12', 72, 'surfing', 84.00, 25, 27, NULL, NULL),
('route-12', 79, 'walking', 40.00, 23, 27, NULL, NULL),
('route-12', 102, 'walking', 20.00, 24, 26, NULL, NULL),
('route-12', 127, 'walking', 10.00, 25, 27, NULL, NULL),
('route-12', 128, 'walking', 40.00, 25, 27, NULL, NULL),
('route-12', 131, 'surfing', 1.00, 27, 27, NULL, NULL),
('route-12', 131, 'gift', 100.00, 30, 30, NULL, NULL),
('route-12', 222, 'fishing_super', 60.00, 35, 35, NULL, NULL),
('route-12', 223, 'fishing_good', 65.00, 25, 25, NULL, NULL),
('route-12', 224, 'fishing_super', 35.00, 35, 35, NULL, NULL),
('route-12', 241, 'walking', 40.00, 25, 27, NULL, NULL),
('route-12', 366, 'fishing_good', 35.00, 25, 25, NULL, NULL),
('route-12', 367, 'fishing_super', 5.00, 35, 35, NULL, NULL),
('route-12', 370, 'fishing_old', 100.00, 15, 15, NULL, NULL),
('route-12', 417, 'walking', 10.00, 23, 26, NULL, NULL),
('route-12', 441, 'walking', 40.00, 23, 27, NULL, NULL),
('route-12', 458, 'surfing', 15.00, 27, 27, NULL, NULL),
('route-12', 557, 'rock_smash', 66.00, 23, 25, NULL, NULL),
('route-12', 688, 'rock_smash', 34.00, 23, 25, NULL, NULL),
('route-13', 51, 'walking', 40.00, 26, 28, NULL, NULL),
('route-13', 75, 'rock_smash', 66.00, 26, 28, NULL, NULL),
('route-13', 218, 'rock_smash', 34.00, 26, 28, NULL, NULL),
('route-13', 328, 'walking', 40.00, 26, 28, NULL, NULL),
('route-13', 443, 'walking', 20.00, 26, 28, NULL, NULL),
('route-14', 60, 'fishing_old', 100.00, 15, 15, NULL, NULL),
('route-14', 61, 'fishing_good', 35.00, 35, 35, NULL, NULL),
('route-14', 61, 'fishing_super', 65.00, 35, 35, NULL, NULL),
('route-14', 70, 'walking', 20.00, 31, 32, NULL, NULL),
('route-14', 93, 'walking', 10.00, 31, 31, NULL, NULL),
('route-14', 195, 'walking', 40.00, 30, 32, NULL, NULL),
('route-14', 195, 'surfing', 50.00, 30, 30, NULL, NULL),
('route-14', 339, 'fishing_good', 65.00, 25, 35, NULL, NULL),
('route-14', 340, 'fishing_super', 35.00, 35, 35, NULL, NULL),
('route-14', 451, 'walking', 20.00, 30, 31, NULL, NULL),
('route-14', 455, 'walking', 20.00, 30, 32, NULL, NULL),
('route-14', 588, 'walking', 20.00, 30, 30, NULL, NULL),
('route-14', 616, 'walking', 20.00, 30, 30, NULL, NULL),
('route-14', 618, 'walking', 20.00, 31, 32, NULL, NULL),
('route-14', 618, 'surfing', 35.00, 30, 32, NULL, NULL),
('route-14', 704, 'walking', 30.00, 30, 32, NULL, NULL),
('route-14', 704, 'surfing', 15.00, 31, 31, NULL, NULL),
('route-15', 60, 'fishing_old', 100.00, 15, 15, NULL, NULL),
('route-15', 61, 'fishing_good', 35.00, 25, 25, NULL, NULL),
('route-15', 61, 'fishing_super', 65.00, 35, 35, NULL, NULL),
('route-15', 262, 'walking', 40.00, 34, 36, NULL, NULL),
('route-15', 271, 'surfing', 66.00, 34, 36, NULL, NULL),
('route-15', 419, 'surfing', 34.00, 34, 36, NULL, NULL),
('route-15', 451, 'walking', 30.00, 34, 36, NULL, NULL),
('route-15', 505, 'walking', 40.00, 34, 36, NULL, NULL),
('route-15', 550, 'fishing_super', 35.00, 35, 35, NULL, NULL),
('route-15', 590, 'walking', 40.00, 34, 35, NULL, NULL),
('route-15', 624, 'walking', 30.00, 34, 36, NULL, NULL),
('route-15', 707, 'walking', 20.00, 34, 36, NULL, NULL),
('route-15', 10016, 'fishing_good', 65.00, 25, 25, NULL, NULL),
('lost-hotel', 82, 'walking', 20.00, 37, 38, NULL, NULL),
('lost-hotel', 101, 'walking', 20.00, 37, 38, NULL, NULL),
('lost-hotel', 607, 'walking', 20.00, 37, 38, NULL, NULL),
('lost-hotel', 624, 'walking', 20.00, 36, 37, NULL, NULL),
('lost-hotel', 707, 'walking', 20.00, 36, 38, NULL, NULL),
('route-16', 60, 'fishing_old', 100.00, 15, 15, NULL, NULL),
('route-16', 61, 'fishing_good', 35.00, 25, 25, NULL, NULL),
('route-16', 61, 'fishing_super', 65.00, 35, 35, NULL, NULL),
('route-16', 70, 'walking', 20.00, 35, 36, NULL, NULL),
('route-16', 271, 'surfing', 66.00, 34, 36, NULL, NULL),
('route-16', 419, 'walking', 20.00, 35, 36, NULL, NULL),
('route-16', 419, 'surfing', 34.00, 34, 36, NULL, NULL),
('route-16', 451, 'walking', 20.00, 34, 35, NULL, NULL),
('route-16', 550, 'fishing_super', 35.00, 35, 35, NULL, NULL),
('route-16', 590, 'walking', 40.00, 34, 36, NULL, NULL),
('route-16', 707, 'walking', 19.00, 34, 36, NULL, NULL),
('route-16', 708, 'walking', 20.00, 35, 35, NULL, NULL),
('route-16', 710, 'walking', 30.00, 34, 35, NULL, NULL),
('route-16', 10016, 'fishing_good', 65.00, 25, 25, NULL, NULL),
('route-16', 10027, 'walking', 20.00, 35, 36, NULL, NULL),
('route-16', 10028, 'walking', 10.00, 36, 36, NULL, NULL),
('route-16', 10029, 'walking', 1.00, 36, 36, NULL, NULL),
('frost-cavern', 60, 'fishing_old', 200.00, 20, 20, NULL, NULL),
('frost-cavern', 61, 'surfing', 132.00, 38, 40, NULL, NULL),
('frost-cavern', 61, 'fishing_good', 70.00, 30, 30, NULL, NULL),
('frost-cavern', 61, 'fishing_super', 130.00, 40, 40, NULL, NULL),
('frost-cavern', 419, 'surfing', 68.00, 38, 40, NULL, NULL),
('frost-cavern', 550, 'fishing_super', 70.00, 40, 40, NULL, NULL),
('frost-cavern', 10016, 'fishing_good', 130.00, 30, 30, NULL, NULL),
('frost-cavern', 93, 'walking', 64.00, 38, 40, NULL, NULL),
('frost-cavern', 124, 'walking', 80.00, 39, 40, NULL, NULL),
('frost-cavern', 221, 'walking', 80.00, 38, 39, NULL, NULL),
('frost-cavern', 614, 'walking', 80.00, 39, 40, NULL, NULL),
('frost-cavern', 615, 'walking', 16.00, 40, 40, NULL, NULL),
('frost-cavern', 712, 'walking', 80.00, 39, 40, NULL, NULL),
('route-17', 215, 'walking', 29.00, 38, 40, NULL, NULL),
('route-17', 225, 'walking', 40.00, 38, 40, NULL, NULL),
('route-17', 459, 'walking', 30.00, 38, 39, NULL, NULL),
('route-17', 460, 'walking', 1.00, 40, 40, NULL, NULL),
('route-18', 28, 'walking', 30.00, 44, 46, NULL, NULL),
('route-18', 75, 'walking', 30.00, 45, 46, NULL, NULL),
('route-18', 75, 'rock_smash', 95.00, 44, 46, NULL, NULL),
('route-18', 213, 'rock_smash', 5.00, 44, 46, NULL, NULL),
('route-18', 305, 'walking', 40.00, 44, 46, NULL, NULL),
('route-18', 324, 'walking', 30.00, 44, 46, NULL, NULL),
('route-18', 533, 'walking', 40.00, 44, 46, NULL, NULL),
('route-18', 631, 'walking', 10.00, 45, 46, NULL, NULL),
('route-18', 632, 'walking', 20.00, 44, 44, NULL, NULL),
('terminus-cave', 28, 'walking', 80.00, 45, 46, NULL, NULL),
('terminus-cave', 75, 'walking', 80.00, 44, 46, NULL, NULL),
('terminus-cave', 75, 'rock_smash', 285.00, 44, 46, NULL, NULL),
('terminus-cave', 213, 'rock_smash', 15.00, 44, 46, NULL, NULL),
('terminus-cave', 305, 'walking', 80.00, 45, 46, NULL, NULL),
('terminus-cave', 632, 'walking', 160.00, 44, 46, NULL, NULL),
('route-19', 60, 'fishing_old', 100.00, 25, 25, NULL, NULL),
('route-19', 61, 'fishing_good', 35.00, 35, 35, NULL, NULL),
('route-19', 61, 'fishing_super', 60.00, 45, 45, NULL, NULL),
('route-19', 70, 'walking', 30.00, 46, 48, NULL, NULL),
('route-19', 93, 'walking', 15.00, 47, 47, NULL, NULL),
('route-19', 186, 'fishing_super', 5.00, 50, 50, NULL, NULL),
('route-19', 195, 'walking', 70.00, 46, 48, NULL, NULL),
('route-19', 195, 'surfing', 50.00, 46, 46, NULL, NULL),
('route-19', 339, 'fishing_good', 65.00, 35, 35, NULL, NULL),
('route-19', 340, 'fishing_super', 35.00, 45, 45, NULL, NULL),
('route-19', 452, 'walking', 40.00, 46, 48, NULL, NULL),
('route-19', 455, 'walking', 15.00, 46, 48, NULL, NULL),
('route-19', 588, 'walking', 30.00, 47, 47, NULL, NULL),
('route-19', 616, 'walking', 30.00, 47, 47, NULL, NULL),
('route-19', 618, 'walking', 20.00, 47, 48, NULL, NULL),
('route-19', 618, 'surfing', 34.00, 46, 48, NULL, NULL),
('route-19', 705, 'walking', 50.00, 46, 48, NULL, NULL),
('route-19', 705, 'surfing', 16.00, 47, 48, NULL, NULL),
('route-20', 39, 'walking', 30.00, 48, 50, NULL, NULL),
('route-20', 164, 'walking', 40.00, 48, 50, NULL, NULL),
('route-20', 571, 'walking', 10.00, 48, 50, NULL, NULL),
('route-20', 575, 'walking', 40.00, 48, 50, NULL, NULL),
('route-20', 591, 'walking', 50.00, 48, 50, NULL, NULL),
('route-20', 709, 'walking', 30.00, 48, 50, NULL, NULL),
('pokemon-village', 39, 'walking', 30.00, 48, 50, NULL, NULL),
('pokemon-village', 60, 'fishing_old', 100.00, 30, 30, NULL, NULL),
('pokemon-village', 61, 'surfing', 34.00, 48, 50, NULL, NULL),
('pokemon-village', 61, 'fishing_good', 35.00, 40, 40, NULL, NULL),
('pokemon-village', 61, 'fishing_super', 65.00, 50, 50, NULL, NULL),
('pokemon-village', 132, 'walking', 30.00, 48, 50, NULL, NULL),
('pokemon-village', 164, 'walking', 40.00, 48, 50, NULL, NULL),
('pokemon-village', 271, 'surfing', 66.00, 48, 50, NULL, NULL),
('pokemon-village', 550, 'fishing_super', 35.00, 50, 50, NULL, NULL),
('pokemon-village', 571, 'walking', 20.00, 48, 50, NULL, NULL),
('pokemon-village', 575, 'walking', 40.00, 48, 50, NULL, NULL),
('pokemon-village', 591, 'walking', 40.00, 49, 50, NULL, NULL),
('pokemon-village', 10016, 'fishing_good', 65.00, 40, 40, NULL, NULL),
('route-21', 60, 'fishing_old', 100.00, 30, 30, NULL, NULL),
('route-21', 61, 'fishing_good', 35.00, 40, 40, NULL, NULL),
('route-21', 61, 'fishing_super', 60.00, 50, 50, NULL, NULL),
('route-21', 123, 'walking', 20.00, 50, 52, NULL, NULL),
('route-21', 147, 'fishing_good', 5.00, 40, 40, NULL, NULL),
('route-21', 148, 'fishing_super', 5.00, 50, 50, NULL, NULL),
('route-21', 217, 'walking', 50.00, 50, 52, NULL, NULL),
('route-21', 271, 'surfing', 66.00, 50, 52, NULL, NULL),
('route-21', 327, 'walking', 40.00, 50, 52, NULL, NULL),
('route-21', 334, 'walking', 40.00, 50, 51, NULL, NULL),
('route-21', 419, 'walking', 50.00, 50, 52, NULL, NULL),
('route-21', 419, 'surfing', 34.00, 50, 52, NULL, NULL),
('route-21', 550, 'fishing_good', 60.00, 40, 40, NULL, NULL),
('route-21', 550, 'fishing_super', 35.00, 50, 50, NULL, NULL),
('victory-road', 60, 'fishing_old', 300.00, 35, 35, NULL, NULL),
('victory-road', 61, 'surfing', 132.00, 57, 59, NULL, NULL),
('victory-road', 61, 'fishing_good', 105.00, 45, 45, NULL, NULL),
('victory-road', 61, 'fishing_super', 190.00, 55, 55, NULL, NULL),
('victory-road', 75, 'walking', 80.00, 57, 58, NULL, NULL),
('victory-road', 75, 'rock_smash', 190.00, 57, 59, NULL, NULL),
('victory-road', 93, 'walking', 40.00, 58, 58, NULL, NULL),
('victory-road', 108, 'walking', 60.00, 58, 59, NULL, NULL),
('victory-road', 213, 'rock_smash', 10.00, 57, 59, NULL, NULL),
('victory-road', 419, 'surfing', 102.00, 57, 59, NULL, NULL),
('victory-road', 533, 'walking', 120.00, 57, 59, NULL, NULL),
('victory-road', 550, 'fishing_super', 105.00, 55, 55, NULL, NULL),
('victory-road', 621, 'walking', 80.00, 58, 59, NULL, NULL),
('victory-road', 634, 'walking', 20.00, 59, 59, NULL, NULL),
('victory-road', 10016, 'fishing_good', 195.00, 45, 45, NULL, NULL),
('victory-road', 271, 'surfing', 66.00, 57, 59, NULL, NULL),
('victory-road', 62, 'fishing_super', 5.00, 60, 60, NULL, NULL),
('route-22', 54, 'walking', 30.00, 6, 26, NULL, NULL),
('route-22', 54, 'surfing', 95.00, 25, 27, NULL, NULL),
('route-22', 83, 'walking', 20.00, 7, 26, NULL, NULL),
('route-22', 118, 'fishing_good', 65.00, 25, 25, NULL, NULL),
('route-22', 119, 'fishing_super', 35.00, 35, 35, NULL, NULL),
('route-22', 129, 'fishing_old', 100.00, 15, 15, NULL, NULL),
('route-22', 130, 'fishing_super', 60.00, 35, 35, NULL, NULL),
('route-22', 184, 'walking', 20.00, 25, 26, NULL, NULL),
('route-22', 184, 'surfing', 5.00, 25, 27, NULL, NULL),
('route-22', 206, 'walking', 10.00, 7, 26, NULL, NULL),
('route-22', 298, 'walking', 20.00, 6, 7, NULL, NULL),
('route-22', 318, 'fishing_good', 35.00, 25, 25, NULL, NULL),
('route-22', 319, 'fishing_super', 5.00, 35, 35, NULL, NULL),
('route-22', 399, 'walking', 10.00, 6, 6, NULL, NULL),
('route-22', 400, 'walking', 20.00, 26, 27, NULL, NULL),
('route-22', 447, 'walking', 10.00, 6, 26, NULL, NULL),
('route-22', 659, 'walking', 20.00, 5, 6, NULL, NULL),
('route-22', 660, 'walking', 10.00, 27, 27, NULL, NULL),
('route-22', 667, 'walking', 30.00, 5, 25, NULL, NULL);

INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions, version_exclusive)
SELECT r.id, e.dex, e.method, e.rate, e.lmin, e.lmax, NULLIF(e.cond, ''), NULLIF(e.ver_excl, '')
FROM _enc e JOIN public.routes r ON r.slug = e.slug AND r.game_id = 'd6e7f8a9-b0c1-2345-d678-901234567890';

DROP TABLE _enc;

-- ===========================================
-- STEP 5: BOSS TRAINERS
-- ===========================================

-- Viola (Gym Leader)
DO $$
DECLARE
  v_trainer_id UUID;
  v_route_id UUID;
BEGIN
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'santalune-city' AND game_id = 'd6e7f8a9-b0c1-2345-d678-901234567890';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
  VALUES (v_route_id, 'Viola', 'Gym Leader', true, 'gym_leader', 12, 1, 'Bug-type specialist. Bug Badge.')
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 283, 10, 1, '["Quick Attack", "Bubble", "Water Sport"]'::jsonb, 'Swift Swim', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 666, 12, 2, '["Tackle", "Infestation", "Harden"]'::jsonb, 'Shield Dust', NULL, NULL);
END $$;

-- Grant (Gym Leader)
DO $$
DECLARE
  v_trainer_id UUID;
  v_route_id UUID;
BEGIN
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'cyllage-city' AND game_id = 'd6e7f8a9-b0c1-2345-d678-901234567890';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
  VALUES (v_route_id, 'Grant', 'Gym Leader', true, 'gym_leader', 25, 2, 'Rock-type specialist. Cliff Badge.')
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 698, 25, 1, '["Aurora Beam", "Rock Tomb", "Thunder Wave", "Take Down"]'::jsonb, 'Refrigerate', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 696, 25, 2, '["Rock Tomb", "Bite", "Stomp"]'::jsonb, 'Strong Jaw', NULL, NULL);
END $$;

-- Korrina (Gym Leader)
DO $$
DECLARE
  v_trainer_id UUID;
  v_route_id UUID;
BEGIN
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'shalour-city' AND game_id = 'd6e7f8a9-b0c1-2345-d678-901234567890';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
  VALUES (v_route_id, 'Korrina', 'Gym Leader', true, 'gym_leader', 32, 3, 'Fighting-type specialist. Rumble Badge.')
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 619, 29, 1, '["Power-Up Punch", "Fake Out", "Double Slap"]'::jsonb, 'Regenerator', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 67, 28, 2, '["Power-Up Punch", "Rock Tomb", "Leer"]'::jsonb, 'Guts', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 701, 32, 3, '["Flying Press", "Hone Claws", "Power-Up Punch"]'::jsonb, 'Unburden', NULL, NULL);
END $$;

-- Ramos (Gym Leader)
DO $$
DECLARE
  v_trainer_id UUID;
  v_route_id UUID;
BEGIN
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'coumarine-city' AND game_id = 'd6e7f8a9-b0c1-2345-d678-901234567890';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
  VALUES (v_route_id, 'Ramos', 'Gym Leader', true, 'gym_leader', 34, 4, 'Grass-type specialist. Plant Badge.')
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 189, 30, 1, '["Grass Knot", "Acrobatics", "Leech Seed"]'::jsonb, 'Chlorophyll', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 70, 31, 2, '["Grass Knot", "Acid", "Poison Powder", "Gastro Acid"]'::jsonb, 'Chlorophyll', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 673, 34, 3, '["Grass Knot", "Bulldoze", "Take Down"]'::jsonb, 'Sap Sipper', NULL, NULL);
END $$;

-- Clemont (Gym Leader)
DO $$
DECLARE
  v_trainer_id UUID;
  v_route_id UUID;
BEGIN
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'lumiose-city' AND game_id = 'd6e7f8a9-b0c1-2345-d678-901234567890';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
  VALUES (v_route_id, 'Clemont', 'Gym Leader', true, 'gym_leader', 37, 5, 'Electric-type specialist. Voltage Badge.')
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 587, 35, 1, '["Volt Switch", "Quick Attack", "Aerial Ace"]'::jsonb, 'Static', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 82, 35, 2, '["Thunderbolt", "Electric Terrain", "Mirror Shot"]'::jsonb, 'Sturdy', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 695, 37, 3, '["Thunderbolt", "Quick Attack", "Grass Knot"]'::jsonb, 'Dry Skin', NULL, NULL);
END $$;

-- Valerie (Gym Leader)
DO $$
DECLARE
  v_trainer_id UUID;
  v_route_id UUID;
BEGIN
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'laverre-city' AND game_id = 'd6e7f8a9-b0c1-2345-d678-901234567890';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
  VALUES (v_route_id, 'Valerie', 'Gym Leader', true, 'gym_leader', 42, 6, 'Fairy-type specialist. Fairy Badge.')
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 303, 38, 1, '["Feint Attack", "Crunch", "Iron Defense"]'::jsonb, 'Hyper Cutter', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 122, 39, 2, '["Light Screen", "Reflect", "Psychic", "Dazzling Gleam"]'::jsonb, 'Soundproof', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 700, 42, 3, '["Dazzling Gleam", "Quick Attack", "Swift", "Charm"]'::jsonb, 'Cute Charm', NULL, NULL);
END $$;

-- Olympia (Gym Leader)
DO $$
DECLARE
  v_trainer_id UUID;
  v_route_id UUID;
BEGIN
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'anistar-city' AND game_id = 'd6e7f8a9-b0c1-2345-d678-901234567890';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
  VALUES (v_route_id, 'Olympia', 'Gym Leader', true, 'gym_leader', 48, 7, 'Psychic-type specialist. Psychic Badge.')
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 561, 44, 1, '["Psychic", "Air Slash", "Light Screen", "Reflect"]'::jsonb, 'Magic Guard', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 199, 45, 2, '["Psychic", "Calm Mind", "Power Gem", "Yawn"]'::jsonb, 'Oblivious', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 678, 48, 3, '["Psychic", "Calm Mind", "Fake Out", "Shadow Ball"]'::jsonb, 'Infiltrator', NULL, NULL);
END $$;

-- Wulfric (Gym Leader)
DO $$
DECLARE
  v_trainer_id UUID;
  v_route_id UUID;
BEGIN
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'snowbelle-city' AND game_id = 'd6e7f8a9-b0c1-2345-d678-901234567890';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
  VALUES (v_route_id, 'Wulfric', 'Gym Leader', true, 'gym_leader', 59, 8, 'Ice-type specialist. Iceberg Badge.')
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 460, 56, 1, '["Ice Beam", "Ice Shard", "Energy Ball"]'::jsonb, 'Snow Warning', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 615, 55, 2, '["Ice Beam", "Confuse Ray", "Flash Cannon", "Hail"]'::jsonb, 'Levitate', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 713, 59, 3, '["Avalanche", "Crunch", "Curse", "Gyro Ball"]'::jsonb, 'Ice Body', NULL, NULL);
END $$;

-- Malva (Elite Four)
DO $$
DECLARE
  v_trainer_id UUID;
  v_route_id UUID;
BEGIN
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'pokemon-league' AND game_id = 'd6e7f8a9-b0c1-2345-d678-901234567890';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
  VALUES (v_route_id, 'Malva', 'Elite Four', true, 'elite_four', 65, 1, 'Fire-type specialist.')
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 668, 63, 1, '["Hyper Voice", "Noble Roar", "Flamethrower", "Wild Charge"]'::jsonb, 'Rivalry', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 324, 63, 2, '["Curse", "Flame Wheel", "Stone Edge", "Earthquake"]'::jsonb, 'White Smoke', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 609, 63, 3, '["Flamethrower", "Confuse Ray", "Confide", "Shadow Ball"]'::jsonb, 'Flame Body', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 663, 65, 4, '["Quick Attack", "Brave Bird", "Flare Blitz", "Flail"]'::jsonb, 'Flame Body', NULL, NULL);
END $$;

-- Siebold (Elite Four)
DO $$
DECLARE
  v_trainer_id UUID;
  v_route_id UUID;
BEGIN
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'pokemon-league' AND game_id = 'd6e7f8a9-b0c1-2345-d678-901234567890';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
  VALUES (v_route_id, 'Siebold', 'Elite Four', true, 'elite_four', 65, 2, 'Water-type specialist.')
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 693, 63, 1, '["Dragon Pulse", "Water Pulse", "Aura Sphere", "Dark Pulse"]'::jsonb, 'Mega Launcher', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 121, 63, 2, '["Psychic", "Light Screen", "Surf", "Dazzling Gleam"]'::jsonb, 'Illuminate', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 130, 63, 3, '["Waterfall", "Ice Fang", "Dragon Dance", "Earthquake"]'::jsonb, 'Intimidate', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 689, 65, 4, '["Stone Edge", "Razor Shell", "Cross Chop", "X-Scissor"]'::jsonb, 'Tough Claws', NULL, NULL);
END $$;

-- Wikstrom (Elite Four)
DO $$
DECLARE
  v_trainer_id UUID;
  v_route_id UUID;
BEGIN
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'pokemon-league' AND game_id = 'd6e7f8a9-b0c1-2345-d678-901234567890';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
  VALUES (v_route_id, 'Wikstrom', 'Elite Four', true, 'elite_four', 65, 3, 'Steel-type specialist.')
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 707, 63, 1, '["Spikes", "Torment", "Dazzling Gleam", "Flash Cannon"]'::jsonb, 'Prankster', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 476, 63, 2, '["Power Gem", "Earth Power", "Flash Cannon", "Discharge"]'::jsonb, 'Sturdy', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 212, 63, 3, '["X-Scissor", "Iron Head", "Bullet Punch", "Night Slash"]'::jsonb, 'Technician', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 681, 65, 4, '["Sacred Sword", "Iron Head", "King''s Shield", "Shadow Claw"]'::jsonb, 'Stance Change', NULL, NULL);
END $$;

-- Drasna (Elite Four)
DO $$
DECLARE
  v_trainer_id UUID;
  v_route_id UUID;
BEGIN
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'pokemon-league' AND game_id = 'd6e7f8a9-b0c1-2345-d678-901234567890';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
  VALUES (v_route_id, 'Drasna', 'Elite Four', true, 'elite_four', 65, 4, 'Dragon-type specialist.')
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 691, 63, 1, '["Sludge Bomb", "Surf", "Thunderbolt", "Dragon Pulse"]'::jsonb, 'Poison Point', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 334, 63, 2, '["Dragon Pulse", "Moonblast", "Sing", "Cotton Guard"]'::jsonb, 'Natural Cure', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 621, 63, 3, '["Dragon Tail", "Revenge", "Retaliate", "Chip Away"]'::jsonb, 'Rough Skin', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 715, 65, 4, '["Flamethrower", "Boomburst", "Air Slash", "Dragon Pulse"]'::jsonb, 'Frisk', NULL, NULL);
END $$;

-- Diantha (Champion)
DO $$
DECLARE
  v_trainer_id UUID;
  v_route_id UUID;
BEGIN
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'pokemon-league' AND game_id = 'd6e7f8a9-b0c1-2345-d678-901234567890';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
  VALUES (v_route_id, 'Diantha', 'Champion', true, 'champion', 68, 5, 'Kalos Champion. Gardevoir Mega Evolves.')
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 701, 64, 1, '["Poison Jab", "Flying Press", "Swords Dance", "X-Scissor"]'::jsonb, 'Limber', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 697, 65, 2, '["Head Smash", "Dragon Claw", "Earthquake", "Crunch"]'::jsonb, 'Strong Jaw', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 699, 65, 3, '["Thunder", "Blizzard", "Reflect", "Light Screen"]'::jsonb, 'Refrigerate', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 711, 65, 4, '["Trick-or-Treat", "Phantom Force", "Seed Bomb", "Shadow Sneak"]'::jsonb, 'Pickup', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 706, 66, 5, '["Focus Blast", "Dragon Pulse", "Fire Blast", "Muddy Water"]'::jsonb, 'Sap Sipper', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 282, 68, 6, '["Thunderbolt", "Moonblast", "Psychic", "Shadow Ball"]'::jsonb, 'Synchronize', 'Gardevoirite', NULL);
END $$;

-- Update total_routes count
UPDATE public.games SET total_routes = 53 WHERE id = 'd6e7f8a9-b0c1-2345-d678-901234567890';
