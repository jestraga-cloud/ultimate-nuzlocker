-- ===========================================
-- POKEMON LEAFGREEN: COMPLETE GAME DATA
-- Official Pokemon Game
-- Gen 3, Kanto region
-- ===========================================
-- Game ID: f6a7b8c9-d0e1-2345-fab6-789012345678
-- ===========================================

-- STEP 1: Insert the game
INSERT INTO public.games (id, slug, name, generation, region, base_game_slug, is_romhack, sprite_url, total_routes, description)
VALUES (
  'f6a7b8c9-d0e1-2345-fab6-789012345678',
  'pokemon-leafgreen',
  'Pokemon LeafGreen',
  3,
  'Kanto',
  NULL,
  false,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/3.png',
  50,
  'Pokemon LeafGreen Version for Game Boy Advance. A Gen 3 remake of the original Pokemon Green, set in the Kanto region.'
);

-- ===========================================
-- STEP 2: ALL ROUTES (50 total)
-- ===========================================

INSERT INTO public.routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items, notes) VALUES
('f6a7b8c9-d0e1-2345-fab6-789012345678', 'Pallet Town', 'pallet-town', 1, 'city', true, false, false, 'Starter town. Choose Bulbasaur, Charmander, or Squirtle.'),
('f6a7b8c9-d0e1-2345-fab6-789012345678', 'Route 1', 'route-1', 2, 'route', true, false, true, NULL),
('f6a7b8c9-d0e1-2345-fab6-789012345678', 'Viridian City', 'viridian-city', 3, 'city', false, false, true, NULL),
('f6a7b8c9-d0e1-2345-fab6-789012345678', 'Route 2', 'route-2', 4, 'route', true, false, true, NULL),
('f6a7b8c9-d0e1-2345-fab6-789012345678', 'Viridian Forest', 'viridian-forest', 5, 'cave', true, true, true, NULL),
('f6a7b8c9-d0e1-2345-fab6-789012345678', 'Pewter City', 'pewter-city', 6, 'city', false, true, true, 'Home of Brock.'),
('f6a7b8c9-d0e1-2345-fab6-789012345678', 'Route 3', 'route-3', 7, 'route', true, true, false, NULL),
('f6a7b8c9-d0e1-2345-fab6-789012345678', 'Mt. Moon', 'mt-moon', 8, 'cave', true, true, true, NULL),
('f6a7b8c9-d0e1-2345-fab6-789012345678', 'Route 4', 'route-4', 9, 'route', true, false, true, NULL),
('f6a7b8c9-d0e1-2345-fab6-789012345678', 'Cerulean City', 'cerulean-city', 10, 'city', false, true, true, 'Home of Misty.'),
('f6a7b8c9-d0e1-2345-fab6-789012345678', 'Route 24', 'route-24', 11, 'route', true, true, true, 'Nugget Bridge. 5 trainers + Team Rocket Grunt.'),
('f6a7b8c9-d0e1-2345-fab6-789012345678', 'Route 25', 'route-25', 12, 'route', true, true, true, 'Path to Bill''s House. Receive S.S. Ticket.'),
('f6a7b8c9-d0e1-2345-fab6-789012345678', 'Route 5', 'route-5', 13, 'route', true, false, false, NULL),
('f6a7b8c9-d0e1-2345-fab6-789012345678', 'Route 6', 'route-6', 14, 'route', true, true, false, NULL),
('f6a7b8c9-d0e1-2345-fab6-789012345678', 'Vermilion City', 'vermilion-city', 15, 'city', false, true, true, 'Home of Lt. Surge. SS Anne docked at port.'),
('f6a7b8c9-d0e1-2345-fab6-789012345678', 'Route 11', 'route-11', 16, 'route', true, true, false, NULL),
('f6a7b8c9-d0e1-2345-fab6-789012345678', 'Diglett''s Cave', 'digletts-cave', 17, 'cave', true, false, false, 'Connects Vermilion City area to Route 2.'),
('f6a7b8c9-d0e1-2345-fab6-789012345678', 'Route 9', 'route-9', 18, 'route', true, true, false, NULL),
('f6a7b8c9-d0e1-2345-fab6-789012345678', 'Route 10', 'route-10', 19, 'route', true, false, false, NULL),
('f6a7b8c9-d0e1-2345-fab6-789012345678', 'Rock Tunnel', 'rock-tunnel', 20, 'cave', true, true, true, 'Requires Flash (optional). Many trainers inside.'),
('f6a7b8c9-d0e1-2345-fab6-789012345678', 'Lavender Town', 'lavender-town', 21, 'city', false, false, true, 'Home of the Pokemon Tower.'),
('f6a7b8c9-d0e1-2345-fab6-789012345678', 'Pokemon Tower', 'pokemon-tower', 22, 'building', true, true, true, 'Haunted tower. Rival battle on 2F. Need Silph Scope to identify ghosts.'),
('f6a7b8c9-d0e1-2345-fab6-789012345678', 'Route 8', 'route-8', 23, 'route', true, true, false, NULL),
('f6a7b8c9-d0e1-2345-fab6-789012345678', 'Route 7', 'route-7', 24, 'route', true, false, false, NULL),
('f6a7b8c9-d0e1-2345-fab6-789012345678', 'Celadon City', 'celadon-city', 25, 'city', false, true, true, 'Home of Erika. Game Corner and Dept. Store.'),
('f6a7b8c9-d0e1-2345-fab6-789012345678', 'Team Rocket Hideout', 'team-rocket-hideout', 26, 'building', false, true, true, 'Underneath the Game Corner. Get Silph Scope.'),
('f6a7b8c9-d0e1-2345-fab6-789012345678', 'Route 16', 'route-16', 27, 'route', true, false, true, 'Snorlax blocks the path. Use Poke Flute.'),
('f6a7b8c9-d0e1-2345-fab6-789012345678', 'Route 17', 'route-17', 28, 'route', true, true, false, 'Cycling Road.'),
('f6a7b8c9-d0e1-2345-fab6-789012345678', 'Route 18', 'route-18', 29, 'route', true, false, false, NULL),
('f6a7b8c9-d0e1-2345-fab6-789012345678', 'Fuchsia City', 'fuchsia-city', 30, 'city', false, true, true, 'Home of Koga. Safari Zone entrance.'),
('f6a7b8c9-d0e1-2345-fab6-789012345678', 'Safari Zone', 'safari-zone', 31, 'special', true, false, true, 'Catch rare Pokemon with Safari Balls. HM03 Surf inside.'),
('f6a7b8c9-d0e1-2345-fab6-789012345678', 'Route 12', 'route-12', 32, 'route', true, true, true, 'Snorlax blocks the path. Use Poke Flute.'),
('f6a7b8c9-d0e1-2345-fab6-789012345678', 'Route 13', 'route-13', 33, 'route', true, true, false, NULL),
('f6a7b8c9-d0e1-2345-fab6-789012345678', 'Route 14', 'route-14', 34, 'route', true, true, false, NULL),
('f6a7b8c9-d0e1-2345-fab6-789012345678', 'Route 15', 'route-15', 35, 'route', true, true, false, NULL),
('f6a7b8c9-d0e1-2345-fab6-789012345678', 'Saffron City', 'saffron-city', 36, 'city', false, true, true, 'Home of Sabrina. Silph Co. HQ.'),
('f6a7b8c9-d0e1-2345-fab6-789012345678', 'Silph Co.', 'silph-co', 37, 'building', false, true, true, 'Team Rocket takeover. Rival battle and Giovanni boss fight. Receive Lapras.'),
('f6a7b8c9-d0e1-2345-fab6-789012345678', 'Route 19', 'route-19', 38, 'water', true, true, false, NULL),
('f6a7b8c9-d0e1-2345-fab6-789012345678', 'Route 20', 'route-20', 39, 'water', true, true, false, NULL),
('f6a7b8c9-d0e1-2345-fab6-789012345678', 'Seafoam Islands', 'seafoam-islands', 40, 'cave', true, false, true, 'Ice puzzle cave. Articuno at the bottom.'),
('f6a7b8c9-d0e1-2345-fab6-789012345678', 'Cinnabar Island', 'cinnabar-island', 41, 'city', false, true, true, 'Home of Blaine. Pokemon Mansion and Lab.'),
('f6a7b8c9-d0e1-2345-fab6-789012345678', 'Pokemon Mansion', 'pokemon-mansion', 42, 'building', true, true, true, 'Find the Secret Key to unlock Cinnabar Gym.'),
('f6a7b8c9-d0e1-2345-fab6-789012345678', 'Route 21', 'route-21', 43, 'water', true, true, false, NULL),
('f6a7b8c9-d0e1-2345-fab6-789012345678', 'Viridian City Gym', 'viridian-city-gym', 44, 'building', false, true, false, 'Giovanni''s Gym. Earth Badge.'),
('f6a7b8c9-d0e1-2345-fab6-789012345678', 'Route 22', 'route-22', 45, 'route', true, true, false, 'Rival battle before Victory Road.'),
('f6a7b8c9-d0e1-2345-fab6-789012345678', 'Route 23', 'route-23', 46, 'route', true, false, false, 'Badge check gates to Victory Road.'),
('f6a7b8c9-d0e1-2345-fab6-789012345678', 'Victory Road', 'victory-road', 47, 'cave', true, true, true, 'Final cave before Indigo Plateau. Strength puzzles.'),
('f6a7b8c9-d0e1-2345-fab6-789012345678', 'Indigo Plateau', 'indigo-plateau', 48, 'building', false, true, true, 'Elite Four and Champion battles.'),
('f6a7b8c9-d0e1-2345-fab6-789012345678', 'Power Plant', 'power-plant', 49, 'building', true, false, true, 'Zapdos. Electric-type Pokemon.'),
('f6a7b8c9-d0e1-2345-fab6-789012345678', 'Cerulean Cave', 'cerulean-cave', 50, 'cave', true, false, true, 'Post-game dungeon. Mewtwo.');

-- ===========================================
-- STEP 3: STARTER POKEMON
-- ===========================================

INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max)
SELECT r.id, 1, 'gift', NULL, 5, 5
FROM public.routes r WHERE r.slug = 'pallet-town' AND r.game_id = 'f6a7b8c9-d0e1-2345-fab6-789012345678';

INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max)
SELECT r.id, 4, 'gift', NULL, 5, 5
FROM public.routes r WHERE r.slug = 'pallet-town' AND r.game_id = 'f6a7b8c9-d0e1-2345-fab6-789012345678';

INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max)
SELECT r.id, 7, 'gift', NULL, 5, 5
FROM public.routes r WHERE r.slug = 'pallet-town' AND r.game_id = 'f6a7b8c9-d0e1-2345-fab6-789012345678';

-- ===========================================
-- STEP 4: ENCOUNTER DATA (325 total)
-- ===========================================

CREATE TEMP TABLE _enc (slug TEXT, dex INT, method TEXT, rate DECIMAL(5,2), lmin INT, lmax INT, cond TEXT, ver_excl TEXT);
INSERT INTO _enc VALUES
('pallet-town', 1, 'gift', 100.00, 5, 5, NULL, NULL),
('pallet-town', 4, 'gift', 100.00, 5, 5, NULL, NULL),
('pallet-town', 7, 'gift', 100.00, 5, 5, NULL, NULL),
('pallet-town', 72, 'surfing', 100.00, 5, 40, NULL, NULL),
('pallet-town', 79, 'fishing_super', 1.00, 25, 35, NULL, NULL),
('pallet-town', 98, 'fishing_good', 60.00, 5, 15, NULL, NULL),
('pallet-town', 98, 'fishing_super', 40.00, 15, 25, NULL, NULL),
('pallet-town', 99, 'fishing_super', 4.00, 25, 35, NULL, NULL),
('pallet-town', 116, 'fishing_good', 20.00, 5, 15, NULL, NULL),
('pallet-town', 120, 'fishing_super', 40.00, 15, 25, NULL, NULL),
('pallet-town', 129, 'fishing_good', 20.00, 5, 15, NULL, NULL),
('pallet-town', 129, 'fishing_old', 100.00, 5, 10, NULL, NULL),
('pallet-town', 130, 'fishing_super', 15.00, 15, 25, NULL, NULL),
('route-1', 16, 'walking', 50.00, 2, 5, NULL, NULL),
('route-1', 19, 'walking', 50.00, 2, 4, NULL, NULL),
('route-2', 10, 'walking', 5.00, 4, 5, NULL, NULL),
('route-2', 13, 'walking', 5.00, 4, 5, NULL, NULL),
('route-2', 16, 'walking', 45.00, 2, 5, NULL, NULL),
('route-2', 19, 'walking', 45.00, 2, 5, NULL, NULL),
('viridian-forest', 10, 'walking', 40.00, 3, 5, NULL, NULL),
('viridian-forest', 11, 'walking', 10.00, 4, 6, NULL, NULL),
('viridian-forest', 13, 'walking', 40.00, 3, 5, NULL, NULL),
('viridian-forest', 14, 'walking', 5.00, 5, 5, NULL, NULL),
('viridian-forest', 25, 'walking', 5.00, 3, 5, NULL, NULL),
('route-3', 16, 'walking', 30.00, 6, 7, NULL, NULL),
('route-3', 21, 'walking', 35.00, 6, 8, NULL, NULL),
('route-3', 29, 'walking', 14.00, 6, 7, NULL, NULL),
('route-3', 32, 'walking', 1.00, 6, 6, NULL, NULL),
('route-3', 39, 'walking', 10.00, 3, 7, NULL, NULL),
('route-3', 56, 'walking', 10.00, 7, 7, NULL, NULL),
('mt-moon', 35, 'walking', 7.00, 8, 12, NULL, NULL),
('mt-moon', 41, 'walking', 118.00, 7, 11, NULL, NULL),
('mt-moon', 46, 'walking', 120.00, 5, 12, NULL, NULL),
('mt-moon', 74, 'walking', 55.00, 7, 10, NULL, NULL),
('route-4', 19, 'walking', 35.00, 8, 12, NULL, NULL),
('route-4', 21, 'walking', 35.00, 8, 12, NULL, NULL),
('route-4', 27, 'walking', 25.00, 6, 12, NULL, NULL),
('route-4', 56, 'walking', 5.00, 10, 12, NULL, NULL),
('route-4', 72, 'surfing', 100.00, 5, 40, NULL, NULL),
('route-4', 79, 'fishing_super', 1.00, 25, 35, NULL, NULL),
('route-4', 98, 'fishing_good', 60.00, 5, 15, NULL, NULL),
('route-4', 98, 'fishing_super', 84.00, 15, 35, NULL, NULL),
('route-4', 116, 'fishing_good', 20.00, 5, 15, NULL, NULL),
('route-4', 129, 'fishing_good', 20.00, 5, 15, NULL, NULL),
('route-4', 129, 'fishing_old', 100.00, 5, 5, NULL, NULL),
('route-4', 130, 'fishing_super', 15.00, 15, 25, NULL, NULL),
('route-24', 10, 'walking', 20.00, 7, 7, NULL, NULL),
('route-24', 11, 'walking', 4.00, 8, 8, NULL, NULL),
('route-24', 13, 'walking', 20.00, 7, 7, NULL, NULL),
('route-24', 14, 'walking', 1.00, 8, 8, NULL, NULL),
('route-24', 16, 'walking', 15.00, 11, 13, NULL, NULL),
('route-24', 63, 'walking', 15.00, 8, 12, NULL, NULL),
('route-24', 69, 'walking', 25.00, 12, 14, NULL, NULL),
('route-24', 72, 'surfing', 100.00, 5, 40, NULL, NULL),
('route-24', 79, 'fishing_super', 1.00, 25, 35, NULL, NULL),
('route-24', 98, 'fishing_good', 60.00, 5, 15, NULL, NULL),
('route-24', 98, 'fishing_super', 84.00, 15, 35, NULL, NULL),
('route-24', 116, 'fishing_good', 20.00, 5, 15, NULL, NULL),
('route-24', 129, 'fishing_good', 20.00, 5, 15, NULL, NULL),
('route-24', 129, 'fishing_old', 100.00, 5, 5, NULL, NULL),
('route-24', 130, 'fishing_super', 15.00, 15, 25, NULL, NULL),
('route-25', 10, 'walking', 20.00, 8, 8, NULL, NULL),
('route-25', 11, 'walking', 4.00, 9, 9, NULL, NULL),
('route-25', 13, 'walking', 20.00, 8, 8, NULL, NULL),
('route-25', 14, 'walking', 1.00, 9, 9, NULL, NULL),
('route-25', 16, 'walking', 15.00, 11, 13, NULL, NULL),
('route-25', 60, 'fishing_good', 60.00, 5, 15, NULL, NULL),
('route-25', 60, 'fishing_super', 40.00, 15, 25, NULL, NULL),
('route-25', 61, 'fishing_super', 40.00, 20, 30, NULL, NULL),
('route-25', 63, 'walking', 15.00, 9, 13, NULL, NULL),
('route-25', 69, 'walking', 25.00, 12, 14, NULL, NULL),
('route-25', 79, 'fishing_super', 5.00, 15, 35, NULL, NULL),
('route-25', 79, 'surfing', 100.00, 20, 40, NULL, NULL),
('route-25', 118, 'fishing_good', 20.00, 5, 15, NULL, NULL),
('route-25', 129, 'fishing_good', 20.00, 5, 15, NULL, NULL),
('route-25', 129, 'fishing_old', 100.00, 5, 5, NULL, NULL),
('route-25', 130, 'fishing_super', 15.00, 15, 25, NULL, NULL),
('route-5', 16, 'walking', 40.00, 13, 16, NULL, NULL),
('route-5', 52, 'walking', 35.00, 10, 16, NULL, NULL),
('route-5', 69, 'walking', 25.00, 13, 16, NULL, NULL),
('route-6', 16, 'walking', 40.00, 13, 16, NULL, NULL),
('route-6', 52, 'walking', 35.00, 10, 16, NULL, NULL),
('route-6', 60, 'fishing_good', 60.00, 5, 15, NULL, NULL),
('route-6', 60, 'fishing_super', 40.00, 15, 25, NULL, NULL),
('route-6', 61, 'fishing_super', 40.00, 20, 30, NULL, NULL),
('route-6', 69, 'walking', 25.00, 13, 16, NULL, NULL),
('route-6', 79, 'fishing_super', 5.00, 15, 35, NULL, NULL),
('route-6', 79, 'surfing', 100.00, 20, 40, NULL, NULL),
('route-6', 118, 'fishing_good', 20.00, 5, 15, NULL, NULL),
('route-6', 129, 'fishing_good', 20.00, 5, 15, NULL, NULL),
('route-6', 129, 'fishing_old', 100.00, 5, 5, NULL, NULL),
('route-6', 130, 'fishing_super', 15.00, 15, 25, NULL, NULL),
('route-11', 21, 'walking', 35.00, 13, 17, NULL, NULL),
('route-11', 27, 'walking', 40.00, 12, 15, NULL, NULL),
('route-11', 72, 'surfing', 100.00, 5, 40, NULL, NULL),
('route-11', 79, 'fishing_super', 1.00, 25, 35, NULL, NULL),
('route-11', 96, 'walking', 25.00, 11, 15, NULL, NULL),
('route-11', 98, 'fishing_good', 60.00, 5, 15, NULL, NULL),
('route-11', 98, 'fishing_super', 84.00, 15, 35, NULL, NULL),
('route-11', 116, 'fishing_good', 20.00, 5, 15, NULL, NULL),
('route-11', 129, 'fishing_good', 20.00, 5, 15, NULL, NULL),
('route-11', 129, 'fishing_old', 100.00, 5, 5, NULL, NULL),
('route-11', 130, 'fishing_super', 15.00, 15, 25, NULL, NULL),
('digletts-cave', 50, 'walking', 95.00, 15, 22, NULL, NULL),
('digletts-cave', 51, 'walking', 5.00, 29, 31, NULL, NULL),
('route-9', 19, 'walking', 40.00, 14, 17, NULL, NULL),
('route-9', 21, 'walking', 35.00, 13, 17, NULL, NULL),
('route-9', 27, 'walking', 25.00, 11, 17, NULL, NULL),
('route-10', 21, 'walking', 35.00, 13, 17, NULL, NULL),
('route-10', 27, 'walking', 25.00, 11, 17, NULL, NULL),
('route-10', 72, 'surfing', 100.00, 5, 40, NULL, NULL),
('route-10', 79, 'fishing_super', 1.00, 25, 35, NULL, NULL),
('route-10', 98, 'fishing_good', 60.00, 5, 15, NULL, NULL),
('route-10', 98, 'fishing_super', 84.00, 15, 35, NULL, NULL),
('route-10', 100, 'walking', 40.00, 14, 17, NULL, NULL),
('route-10', 116, 'fishing_good', 20.00, 5, 15, NULL, NULL),
('route-10', 129, 'fishing_good', 20.00, 5, 15, NULL, NULL),
('route-10', 129, 'fishing_old', 100.00, 5, 5, NULL, NULL),
('route-10', 130, 'fishing_super', 15.00, 15, 25, NULL, NULL),
('rock-tunnel', 41, 'walking', 60.00, 15, 16, NULL, NULL),
('rock-tunnel', 56, 'walking', 30.00, 16, 17, NULL, NULL),
('rock-tunnel', 66, 'walking', 25.00, 16, 17, NULL, NULL),
('rock-tunnel', 74, 'walking', 70.00, 15, 17, NULL, NULL),
('rock-tunnel', 95, 'walking', 15.00, 13, 17, NULL, NULL),
('rock-tunnel', 74, 'rock_smash', 95.00, 5, 30, NULL, NULL),
('rock-tunnel', 75, 'rock_smash', 5.00, 25, 40, NULL, NULL),
('pokemon-tower', 92, 'walking', 422.00, 13, 19, NULL, NULL),
('pokemon-tower', 93, 'walking', 32.00, 20, 25, NULL, NULL),
('pokemon-tower', 104, 'walking', 46.00, 15, 19, NULL, NULL),
('route-8', 16, 'walking', 30.00, 18, 20, NULL, NULL),
('route-8', 27, 'walking', 20.00, 17, 19, NULL, NULL),
('route-8', 37, 'walking', 20.00, 15, 18, NULL, NULL),
('route-8', 52, 'walking', 30.00, 18, 20, NULL, NULL),
('route-7', 16, 'walking', 30.00, 19, 22, NULL, NULL),
('route-7', 37, 'walking', 10.00, 18, 20, NULL, NULL),
('route-7', 52, 'walking', 40.00, 17, 20, NULL, NULL),
('route-7', 69, 'walking', 20.00, 19, 22, NULL, NULL),
('route-16', 19, 'walking', 30.00, 18, 22, NULL, NULL),
('route-16', 20, 'walking', 5.00, 23, 25, NULL, NULL),
('route-16', 21, 'walking', 30.00, 20, 22, NULL, NULL),
('route-16', 84, 'walking', 35.00, 18, 22, NULL, NULL),
('route-16', 143, 'static', 100.00, 30, 30, NULL, NULL),
('route-17', 19, 'walking', 5.00, 22, 22, NULL, NULL),
('route-17', 20, 'walking', 25.00, 25, 29, NULL, NULL),
('route-17', 21, 'walking', 30.00, 20, 22, NULL, NULL),
('route-17', 22, 'walking', 5.00, 25, 27, NULL, NULL),
('route-17', 84, 'walking', 35.00, 24, 28, NULL, NULL),
('route-18', 19, 'walking', 5.00, 22, 22, NULL, NULL),
('route-18', 20, 'walking', 15.00, 25, 29, NULL, NULL),
('route-18', 21, 'walking', 30.00, 20, 22, NULL, NULL),
('route-18', 22, 'walking', 15.00, 25, 29, NULL, NULL),
('route-18', 84, 'walking', 35.00, 24, 28, NULL, NULL),
('safari-zone', 29, 'walking', 80.00, 22, 30, NULL, NULL),
('safari-zone', 30, 'walking', 40.00, 30, 33, NULL, NULL),
('safari-zone', 33, 'walking', 10.00, 30, 31, NULL, NULL),
('safari-zone', 47, 'walking', 10.00, 25, 30, NULL, NULL),
('safari-zone', 48, 'walking', 30.00, 22, 23, NULL, NULL),
('safari-zone', 60, 'fishing_good', 80.00, 5, 15, NULL, NULL),
('safari-zone', 79, 'fishing_super', 16.00, 15, 35, NULL, NULL),
('safari-zone', 79, 'surfing', 400.00, 20, 40, NULL, NULL),
('safari-zone', 102, 'walking', 80.00, 23, 27, NULL, NULL),
('safari-zone', 111, 'walking', 40.00, 25, 26, NULL, NULL),
('safari-zone', 113, 'walking', 5.00, 23, 26, NULL, NULL),
('safari-zone', 118, 'fishing_good', 240.00, 5, 15, NULL, NULL),
('safari-zone', 118, 'fishing_super', 160.00, 15, 25, NULL, NULL),
('safari-zone', 119, 'fishing_super', 160.00, 20, 30, NULL, NULL),
('safari-zone', 127, 'walking', 5.00, 23, 28, NULL, NULL),
('safari-zone', 129, 'fishing_good', 80.00, 5, 15, NULL, NULL),
('safari-zone', 129, 'fishing_old', 400.00, 5, 5, NULL, NULL),
('safari-zone', 147, 'fishing_super', 60.00, 15, 25, NULL, NULL),
('safari-zone', 148, 'fishing_super', 4.00, 25, 35, NULL, NULL),
('safari-zone', 32, 'walking', 10.00, 24, 30, NULL, NULL),
('safari-zone', 46, 'walking', 30.00, 22, 23, NULL, NULL),
('safari-zone', 84, 'walking', 40.00, 26, 26, NULL, NULL),
('safari-zone', 115, 'walking', 5.00, 25, 28, NULL, NULL),
('safari-zone', 49, 'walking', 10.00, 32, 32, NULL, NULL),
('safari-zone', 128, 'walking', 5.00, 25, 28, NULL, NULL),
('route-12', 16, 'walking', 30.00, 23, 27, NULL, NULL),
('route-12', 48, 'walking', 30.00, 24, 26, NULL, NULL),
('route-12', 69, 'walking', 35.00, 22, 26, NULL, NULL),
('route-12', 70, 'walking', 5.00, 28, 30, NULL, NULL),
('route-12', 72, 'surfing', 100.00, 5, 40, NULL, NULL),
('route-12', 79, 'fishing_super', 1.00, 25, 35, NULL, NULL),
('route-12', 98, 'fishing_good', 60.00, 5, 15, NULL, NULL),
('route-12', 98, 'fishing_super', 84.00, 15, 35, NULL, NULL),
('route-12', 116, 'fishing_good', 20.00, 5, 15, NULL, NULL),
('route-12', 129, 'fishing_good', 20.00, 5, 15, NULL, NULL),
('route-12', 129, 'fishing_old', 100.00, 5, 5, NULL, NULL),
('route-12', 130, 'fishing_super', 15.00, 15, 25, NULL, NULL),
('route-12', 143, 'static', 100.00, 30, 30, NULL, NULL),
('route-13', 16, 'walking', 20.00, 25, 27, NULL, NULL),
('route-13', 17, 'walking', 5.00, 29, 29, NULL, NULL),
('route-13', 48, 'walking', 30.00, 24, 26, NULL, NULL),
('route-13', 69, 'walking', 35.00, 22, 26, NULL, NULL),
('route-13', 70, 'walking', 5.00, 28, 30, NULL, NULL),
('route-13', 72, 'surfing', 100.00, 5, 40, NULL, NULL),
('route-13', 79, 'fishing_super', 1.00, 25, 35, NULL, NULL),
('route-13', 98, 'fishing_good', 60.00, 5, 15, NULL, NULL),
('route-13', 98, 'fishing_super', 84.00, 15, 35, NULL, NULL),
('route-13', 116, 'fishing_good', 20.00, 5, 15, NULL, NULL),
('route-13', 129, 'fishing_good', 20.00, 5, 15, NULL, NULL),
('route-13', 129, 'fishing_old', 100.00, 5, 5, NULL, NULL),
('route-13', 130, 'fishing_super', 15.00, 15, 25, NULL, NULL),
('route-13', 132, 'walking', 5.00, 25, 25, NULL, NULL),
('route-14', 16, 'walking', 10.00, 27, 27, NULL, NULL),
('route-14', 17, 'walking', 5.00, 29, 29, NULL, NULL),
('route-14', 48, 'walking', 30.00, 24, 26, NULL, NULL),
('route-14', 69, 'walking', 35.00, 22, 26, NULL, NULL),
('route-14', 70, 'walking', 5.00, 30, 30, NULL, NULL),
('route-14', 132, 'walking', 15.00, 23, 23, NULL, NULL),
('route-15', 16, 'walking', 20.00, 25, 27, NULL, NULL),
('route-15', 17, 'walking', 5.00, 29, 29, NULL, NULL),
('route-15', 48, 'walking', 30.00, 24, 26, NULL, NULL),
('route-15', 69, 'walking', 35.00, 22, 26, NULL, NULL),
('route-15', 70, 'walking', 5.00, 28, 30, NULL, NULL),
('route-15', 132, 'walking', 5.00, 25, 25, NULL, NULL),
('route-19', 72, 'surfing', 100.00, 5, 40, NULL, NULL),
('route-19', 79, 'fishing_super', 1.00, 25, 35, NULL, NULL),
('route-19', 98, 'fishing_good', 60.00, 5, 15, NULL, NULL),
('route-19', 98, 'fishing_super', 80.00, 15, 25, NULL, NULL),
('route-19', 99, 'fishing_super', 4.00, 25, 35, NULL, NULL),
('route-19', 116, 'fishing_good', 20.00, 5, 15, NULL, NULL),
('route-19', 129, 'fishing_good', 20.00, 5, 15, NULL, NULL),
('route-19', 129, 'fishing_old', 100.00, 5, 5, NULL, NULL),
('route-19', 130, 'fishing_super', 15.00, 15, 25, NULL, NULL),
('route-20', 72, 'surfing', 100.00, 5, 40, NULL, NULL),
('route-20', 79, 'fishing_super', 1.00, 25, 35, NULL, NULL),
('route-20', 98, 'fishing_good', 60.00, 5, 15, NULL, NULL),
('route-20', 98, 'fishing_super', 80.00, 15, 25, NULL, NULL),
('route-20', 99, 'fishing_super', 4.00, 25, 35, NULL, NULL),
('route-20', 116, 'fishing_good', 20.00, 5, 15, NULL, NULL),
('route-20', 129, 'fishing_good', 20.00, 5, 15, NULL, NULL),
('route-20', 129, 'fishing_old', 100.00, 5, 5, NULL, NULL),
('route-20', 130, 'fishing_super', 15.00, 15, 25, NULL, NULL),
('seafoam-islands', 41, 'walking', 98.00, 22, 26, NULL, NULL),
('seafoam-islands', 42, 'walking', 57.00, 26, 30, NULL, NULL),
('seafoam-islands', 79, 'walking', 165.00, 26, 33, NULL, NULL),
('seafoam-islands', 80, 'walking', 45.00, 32, 35, NULL, NULL),
('seafoam-islands', 86, 'walking', 120.00, 28, 34, NULL, NULL),
('seafoam-islands', 79, 'fishing_super', 8.00, 15, 25, NULL, NULL),
('seafoam-islands', 79, 'surfing', 8.00, 30, 40, NULL, NULL),
('seafoam-islands', 80, 'surfing', 2.00, 35, 40, NULL, NULL),
('seafoam-islands', 86, 'surfing', 120.00, 25, 35, NULL, NULL),
('seafoam-islands', 87, 'surfing', 10.00, 35, 40, NULL, NULL),
('seafoam-islands', 87, 'walking', 15.00, 32, 36, NULL, NULL),
('seafoam-islands', 98, 'fishing_good', 120.00, 5, 15, NULL, NULL),
('seafoam-islands', 98, 'fishing_super', 160.00, 15, 30, NULL, NULL),
('seafoam-islands', 98, 'surfing', 60.00, 25, 30, NULL, NULL),
('seafoam-islands', 116, 'fishing_good', 40.00, 5, 15, NULL, NULL),
('seafoam-islands', 129, 'fishing_good', 40.00, 5, 15, NULL, NULL),
('seafoam-islands', 129, 'fishing_old', 200.00, 5, 5, NULL, NULL),
('seafoam-islands', 130, 'fishing_super', 32.00, 15, 35, NULL, NULL),
('seafoam-islands', 144, 'static', 100.00, 50, 50, NULL, NULL),
('pokemon-mansion', 19, 'walking', 50.00, 26, 28, NULL, NULL),
('pokemon-mansion', 20, 'walking', 120.00, 32, 38, NULL, NULL),
('pokemon-mansion', 37, 'walking', 60.00, 30, 32, NULL, NULL),
('pokemon-mansion', 88, 'walking', 120.00, 28, 30, NULL, NULL),
('pokemon-mansion', 89, 'walking', 20.00, 32, 34, NULL, NULL),
('pokemon-mansion', 109, 'walking', 20.00, 28, 28, NULL, NULL),
('pokemon-mansion', 132, 'walking', 10.00, 30, 30, NULL, NULL),
('route-21', 72, 'surfing', 100.00, 5, 40, NULL, NULL),
('route-21', 79, 'fishing_super', 1.00, 25, 35, NULL, NULL),
('route-21', 98, 'fishing_good', 60.00, 5, 15, NULL, NULL),
('route-21', 98, 'fishing_super', 80.00, 15, 25, NULL, NULL),
('route-21', 99, 'fishing_super', 4.00, 25, 35, NULL, NULL),
('route-21', 114, 'walking', 100.00, 17, 28, NULL, NULL),
('route-21', 116, 'fishing_good', 20.00, 5, 15, NULL, NULL),
('route-21', 129, 'fishing_good', 20.00, 5, 15, NULL, NULL),
('route-21', 129, 'fishing_old', 100.00, 5, 5, NULL, NULL),
('route-21', 130, 'fishing_super', 15.00, 15, 25, NULL, NULL),
('route-22', 19, 'walking', 45.00, 2, 5, NULL, NULL),
('route-22', 21, 'walking', 10.00, 3, 5, NULL, NULL),
('route-22', 56, 'walking', 45.00, 2, 5, NULL, NULL),
('route-22', 60, 'fishing_good', 60.00, 5, 15, NULL, NULL),
('route-22', 60, 'fishing_super', 40.00, 15, 25, NULL, NULL),
('route-22', 61, 'fishing_super', 40.00, 20, 30, NULL, NULL),
('route-22', 79, 'fishing_super', 5.00, 15, 35, NULL, NULL),
('route-22', 79, 'surfing', 100.00, 20, 40, NULL, NULL),
('route-22', 118, 'fishing_good', 20.00, 5, 15, NULL, NULL),
('route-22', 129, 'fishing_good', 20.00, 5, 15, NULL, NULL),
('route-22', 129, 'fishing_old', 100.00, 5, 5, NULL, NULL),
('route-22', 130, 'fishing_super', 15.00, 15, 25, NULL, NULL),
('route-23', 21, 'walking', 15.00, 32, 34, NULL, NULL),
('route-23', 22, 'walking', 25.00, 40, 44, NULL, NULL),
('route-23', 27, 'walking', 20.00, 32, 34, NULL, NULL),
('route-23', 28, 'walking', 5.00, 44, 44, NULL, NULL),
('route-23', 56, 'walking', 30.00, 32, 34, NULL, NULL),
('route-23', 57, 'walking', 5.00, 42, 42, NULL, NULL),
('route-23', 60, 'fishing_good', 60.00, 5, 15, NULL, NULL),
('route-23', 60, 'fishing_super', 40.00, 15, 25, NULL, NULL),
('route-23', 61, 'fishing_super', 40.00, 20, 30, NULL, NULL),
('route-23', 79, 'fishing_super', 5.00, 15, 35, NULL, NULL),
('route-23', 79, 'surfing', 100.00, 20, 40, NULL, NULL),
('route-23', 118, 'fishing_good', 20.00, 5, 15, NULL, NULL),
('route-23', 129, 'fishing_good', 20.00, 5, 15, NULL, NULL),
('route-23', 129, 'fishing_old', 100.00, 5, 5, NULL, NULL),
('route-23', 130, 'fishing_super', 15.00, 15, 25, NULL, NULL),
('power-plant', 25, 'walking', 25.00, 22, 26, NULL, NULL),
('power-plant', 81, 'walking', 30.00, 22, 25, NULL, NULL),
('power-plant', 82, 'walking', 15.00, 31, 34, NULL, NULL),
('power-plant', 100, 'walking', 30.00, 22, 25, NULL, NULL),
('power-plant', 101, 'static', 200.00, 34, 34, NULL, NULL),
('power-plant', 145, 'static', 100.00, 50, 50, NULL, NULL),
('cerulean-cave', 42, 'walking', 50.00, 46, 61, NULL, NULL),
('cerulean-cave', 47, 'walking', 53.00, 49, 64, NULL, NULL),
('cerulean-cave', 57, 'walking', 11.00, 52, 61, NULL, NULL),
('cerulean-cave', 60, 'fishing_good', 120.00, 5, 15, NULL, NULL),
('cerulean-cave', 60, 'fishing_super', 80.00, 15, 25, NULL, NULL),
('cerulean-cave', 61, 'fishing_super', 80.00, 20, 30, NULL, NULL),
('cerulean-cave', 67, 'walking', 40.00, 46, 52, NULL, NULL),
('cerulean-cave', 74, 'rock_smash', 195.00, 30, 60, NULL, NULL),
('cerulean-cave', 75, 'rock_smash', 105.00, 40, 65, NULL, NULL),
('cerulean-cave', 79, 'fishing_super', 9.00, 15, 35, NULL, NULL),
('cerulean-cave', 79, 'surfing', 130.00, 30, 60, NULL, NULL),
('cerulean-cave', 80, 'surfing', 70.00, 40, 65, NULL, NULL),
('cerulean-cave', 82, 'walking', 40.00, 49, 55, NULL, NULL),
('cerulean-cave', 101, 'walking', 13.00, 58, 64, NULL, NULL),
('cerulean-cave', 118, 'fishing_good', 40.00, 5, 15, NULL, NULL),
('cerulean-cave', 129, 'fishing_good', 40.00, 5, 15, NULL, NULL),
('cerulean-cave', 129, 'fishing_old', 200.00, 5, 5, NULL, NULL),
('cerulean-cave', 130, 'fishing_super', 31.00, 15, 35, NULL, NULL),
('cerulean-cave', 132, 'walking', 47.00, 52, 67, NULL, NULL),
('cerulean-cave', 202, 'walking', 10.00, 55, 61, NULL, NULL),
('cerulean-cave', 64, 'walking', 36.00, 55, 67, NULL, NULL),
('cerulean-cave', 150, 'static', 100.00, 70, 70, NULL, NULL);

INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions, version_exclusive)
SELECT r.id, e.dex, e.method, e.rate, e.lmin, e.lmax, NULLIF(e.cond, ''), NULLIF(e.ver_excl, '')
FROM _enc e JOIN public.routes r ON r.slug = e.slug AND r.game_id = 'f6a7b8c9-d0e1-2345-fab6-789012345678';

DROP TABLE _enc;

-- ===========================================
-- STEP 5: BOSS TRAINERS
-- ===========================================

-- Brock (Gym Leader)
DO $$
DECLARE
  v_trainer_id UUID;
  v_route_id UUID;
BEGIN
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'pewter-city' AND game_id = 'f6a7b8c9-d0e1-2345-fab6-789012345678';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
  VALUES (v_route_id, 'Brock', 'Gym Leader', true, 'gym_leader', 14, 1, 'Rock-type specialist. Boulder Badge.')
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 74, 12, 1, '["Tackle", "Defense Curl", "Rock Tomb", "Mud Sport"]'::jsonb, 'Rock Head', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 95, 14, 2, '["Tackle", "Bind", "Rock Tomb", "Harden"]'::jsonb, 'Rock Head', NULL, NULL);
END $$;

-- Misty (Gym Leader)
DO $$
DECLARE
  v_trainer_id UUID;
  v_route_id UUID;
BEGIN
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'cerulean-city' AND game_id = 'f6a7b8c9-d0e1-2345-fab6-789012345678';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
  VALUES (v_route_id, 'Misty', 'Gym Leader', true, 'gym_leader', 21, 1, 'Water-type specialist. Cascade Badge.')
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 120, 18, 1, '["Tackle", "Harden", "Water Pulse", "Recover"]'::jsonb, 'Natural Cure', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 121, 21, 2, '["Swift", "Water Pulse", "Recover", "Rapid Spin"]'::jsonb, 'Natural Cure', NULL, NULL);
END $$;

-- Lt. Surge (Gym Leader)
DO $$
DECLARE
  v_trainer_id UUID;
  v_route_id UUID;
BEGIN
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'vermilion-city' AND game_id = 'f6a7b8c9-d0e1-2345-fab6-789012345678';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
  VALUES (v_route_id, 'Lt. Surge', 'Gym Leader', true, 'gym_leader', 24, 1, 'Electric-type specialist. Thunder Badge.')
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 100, 21, 1, '["Sonic Boom", "Tackle", "Shock Wave", "Screech"]'::jsonb, 'Soundproof', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 25, 18, 2, '["Quick Attack", "Shock Wave", "Thunder Wave", "Double Team"]'::jsonb, 'Static', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 26, 24, 3, '["Shock Wave", "Quick Attack", "Thunder Wave", "Double Team"]'::jsonb, 'Static', NULL, NULL);
END $$;

-- Erika (Gym Leader)
DO $$
DECLARE
  v_trainer_id UUID;
  v_route_id UUID;
BEGIN
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'celadon-city' AND game_id = 'f6a7b8c9-d0e1-2345-fab6-789012345678';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
  VALUES (v_route_id, 'Erika', 'Gym Leader', true, 'gym_leader', 29, 1, 'Grass-type specialist. Rainbow Badge.')
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 71, 29, 1, '["Giga Drain", "Stun Spore", "Acid", "PoisonPowder"]'::jsonb, 'Chlorophyll', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 114, 24, 2, '["Giga Drain", "Ingrain", "Constrict", "PoisonPowder"]'::jsonb, 'Chlorophyll', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 45, 29, 3, '["Giga Drain", "Stun Spore", "Acid", "Sleep Powder"]'::jsonb, 'Chlorophyll', NULL, NULL);
END $$;

-- Koga (Gym Leader)
DO $$
DECLARE
  v_trainer_id UUID;
  v_route_id UUID;
BEGIN
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'fuchsia-city' AND game_id = 'f6a7b8c9-d0e1-2345-fab6-789012345678';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
  VALUES (v_route_id, 'Koga', 'Gym Leader', true, 'gym_leader', 43, 1, 'Poison-type specialist. Soul Badge.')
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 109, 37, 1, '["Self-Destruct", "Sludge", "Smokescreen", "Tackle"]'::jsonb, 'Levitate', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 89, 39, 2, '["Minimize", "Sludge", "Acid Armor", "Toxic"]'::jsonb, 'Stench', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 109, 37, 3, '["Self-Destruct", "Sludge", "Smokescreen", "Toxic"]'::jsonb, 'Levitate', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 110, 43, 4, '["Tackle", "Sludge", "Smokescreen", "Self-Destruct"]'::jsonb, 'Levitate', NULL, NULL);
END $$;

-- Sabrina (Gym Leader)
DO $$
DECLARE
  v_trainer_id UUID;
  v_route_id UUID;
BEGIN
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'saffron-city' AND game_id = 'f6a7b8c9-d0e1-2345-fab6-789012345678';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
  VALUES (v_route_id, 'Sabrina', 'Gym Leader', true, 'gym_leader', 43, 1, 'Psychic-type specialist. Marsh Badge.')
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 64, 38, 1, '["Psybeam", "Reflect", "Future Sight", "Calm Mind"]'::jsonb, 'Synchronize', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 122, 37, 2, '["Barrier", "Psybeam", "Baton Pass", "Calm Mind"]'::jsonb, 'Soundproof', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 49, 38, 3, '["Psybeam", "Gust", "Leech Life", "Supersonic"]'::jsonb, 'Shield Dust', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 65, 43, 4, '["Psychic", "Calm Mind", "Reflect", "Future Sight"]'::jsonb, 'Synchronize', NULL, NULL);
END $$;

-- Blaine (Gym Leader)
DO $$
DECLARE
  v_trainer_id UUID;
  v_route_id UUID;
BEGIN
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'cinnabar-island' AND game_id = 'f6a7b8c9-d0e1-2345-fab6-789012345678';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
  VALUES (v_route_id, 'Blaine', 'Gym Leader', true, 'gym_leader', 47, 1, 'Fire-type specialist. Volcano Badge.')
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 58, 42, 1, '["Fire Blast", "Take Down", "Flamethrower", "Roar"]'::jsonb, 'Intimidate', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 77, 40, 2, '["Fire Blast", "Stomp", "Fire Spin", "Bounce"]'::jsonb, 'Run Away', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 78, 42, 3, '["Fire Blast", "Stomp", "Bounce", "Fire Spin"]'::jsonb, 'Run Away', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 59, 47, 4, '["Fire Blast", "ExtremeSpeed", "Flamethrower", "Bite"]'::jsonb, 'Intimidate', NULL, NULL);
END $$;

-- Giovanni (Gym Leader)
DO $$
DECLARE
  v_trainer_id UUID;
  v_route_id UUID;
BEGIN
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'viridian-city-gym' AND game_id = 'f6a7b8c9-d0e1-2345-fab6-789012345678';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
  VALUES (v_route_id, 'Giovanni', 'Gym Leader', true, 'gym_leader', 50, 1, 'Ground-type specialist. Earth Badge.')
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 111, 45, 1, '["Earthquake", "Take Down", "Horn Drill", "Rock Blast"]'::jsonb, 'Lightning Rod', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 51, 42, 2, '["Earthquake", "Slash", "Sand Tomb", "Mud-Slap"]'::jsonb, 'Sand Veil', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 31, 44, 3, '["Earthquake", "Body Slam", "Double Kick", "Superpower"]'::jsonb, 'Poison Point', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 34, 45, 4, '["Earthquake", "Thrash", "Megahorn", "Shadow Ball"]'::jsonb, 'Poison Point', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 111, 50, 5, '["Earthquake", "Double Edge", "Megahorn", "Rock Blast"]'::jsonb, 'Lightning Rod', NULL, NULL);
END $$;

-- Rival (Rival)
DO $$
DECLARE
  v_trainer_id UUID;
  v_route_id UUID;
BEGIN
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'cerulean-city' AND game_id = 'f6a7b8c9-d0e1-2345-fab6-789012345678';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
  VALUES (v_route_id, 'Rival', 'Rival', true, 'rival', 18, 2, 'Team varies by starter. Shown for Bulbasaur starter.')
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 17, 17, 1, '["Gust", "Sand Attack", "Quick Attack", "Tackle"]'::jsonb, 'Keen Eye', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 63, 16, 2, '["Teleport"]'::jsonb, 'Synchronize', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 19, 15, 3, '["Tackle", "Quick Attack", "Hyper Fang", "Focus Energy"]'::jsonb, 'Run Away', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 5, 18, 4, '["Metal Claw", "Ember", "Rage", "Scratch"]'::jsonb, 'Blaze', NULL, NULL);
END $$;

-- Rival (Rival)
DO $$
DECLARE
  v_trainer_id UUID;
  v_route_id UUID;
BEGIN
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'route-22' AND game_id = 'f6a7b8c9-d0e1-2345-fab6-789012345678';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
  VALUES (v_route_id, 'Rival', 'Rival', true, 'rival', 53, 1, 'Late-game rival battle before Victory Road. Team varies by starter.')
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 18, 47, 1, '["Aerial Ace", "Feather Dance", "Quick Attack", "Whirlwind"]'::jsonb, 'Keen Eye', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 112, 45, 2, '["Earthquake", "Take Down", "Rock Tomb", "Scary Face"]'::jsonb, 'Lightning Rod', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 65, 47, 3, '["Psychic", "Future Sight", "Reflect", "Calm Mind"]'::jsonb, 'Synchronize', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 130, 45, 4, '["Hydro Pump", "Dragon Dance", "Bite", "Thrash"]'::jsonb, 'Intimidate', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 59, 45, 5, '["Fire Blast", "ExtremeSpeed", "Bite", "Roar"]'::jsonb, 'Intimidate', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 6, 53, 6, '["Fire Blast", "Slash", "Dragon Rage", "Flamethrower"]'::jsonb, 'Blaze', NULL, NULL);
END $$;

-- Lorelei (Elite Four)
DO $$
DECLARE
  v_trainer_id UUID;
  v_route_id UUID;
BEGIN
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'indigo-plateau' AND game_id = 'f6a7b8c9-d0e1-2345-fab6-789012345678';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
  VALUES (v_route_id, 'Lorelei', 'Elite Four', true, 'elite_four', 54, 1, 'Ice-type specialist. First of the Elite Four.')
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 87, 52, 1, '["Ice Beam", "Surf", "Hail", "Safeguard"]'::jsonb, 'Thick Fat', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 91, 51, 2, '["Ice Beam", "Surf", "Hail", "Supersonic"]'::jsonb, 'Shell Armor', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 80, 52, 3, '["Ice Beam", "Surf", "Yawn", "Amnesia"]'::jsonb, 'Own Tempo', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 124, 54, 4, '["Ice Punch", "Lovely Kiss", "Attract", "Double Slap"]'::jsonb, 'Oblivious', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 131, 54, 5, '["Ice Beam", "Surf", "Body Slam", "Confuse Ray"]'::jsonb, 'Water Absorb', NULL, NULL);
END $$;

-- Bruno (Elite Four)
DO $$
DECLARE
  v_trainer_id UUID;
  v_route_id UUID;
BEGIN
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'indigo-plateau' AND game_id = 'f6a7b8c9-d0e1-2345-fab6-789012345678';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
  VALUES (v_route_id, 'Bruno', 'Elite Four', true, 'elite_four', 56, 2, 'Fighting-type specialist. Second of the Elite Four.')
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 95, 51, 1, '["Earthquake", "Rock Tomb", "Iron Tail", "Roar"]'::jsonb, 'Rock Head', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 107, 53, 2, '["Sky Uppercut", "Mach Punch", "Rock Tomb", "Counter"]'::jsonb, 'Keen Eye', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 106, 53, 3, '["Mega Kick", "Foresight", "Brick Break", "Facade"]'::jsonb, 'Limber', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 95, 54, 4, '["Earthquake", "Double Edge", "Iron Tail", "Sand Tomb"]'::jsonb, 'Rock Head', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 68, 56, 5, '["Cross Chop", "Bulk Up", "Scary Face", "Rock Tomb"]'::jsonb, 'Guts', NULL, NULL);
END $$;

-- Agatha (Elite Four)
DO $$
DECLARE
  v_trainer_id UUID;
  v_route_id UUID;
BEGIN
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'indigo-plateau' AND game_id = 'f6a7b8c9-d0e1-2345-fab6-789012345678';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
  VALUES (v_route_id, 'Agatha', 'Elite Four', true, 'elite_four', 58, 3, 'Ghost-type specialist. Third of the Elite Four.')
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 94, 54, 1, '["Shadow Punch", "Confuse Ray", "Toxic", "Double Team"]'::jsonb, 'Levitate', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 42, 54, 2, '["Confuse Ray", "Air Cutter", "Poison Fang", "Bite"]'::jsonb, 'Inner Focus', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 93, 53, 3, '["Shadow Ball", "Hypnosis", "Dream Eater", "Mean Look"]'::jsonb, 'Levitate', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 24, 56, 4, '["Sludge Bomb", "Screech", "Iron Tail", "Bite"]'::jsonb, 'Intimidate', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 94, 58, 5, '["Shadow Ball", "Sludge Bomb", "Hypnosis", "Nightmare"]'::jsonb, 'Levitate', NULL, NULL);
END $$;

-- Lance (Elite Four)
DO $$
DECLARE
  v_trainer_id UUID;
  v_route_id UUID;
BEGIN
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'indigo-plateau' AND game_id = 'f6a7b8c9-d0e1-2345-fab6-789012345678';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
  VALUES (v_route_id, 'Lance', 'Elite Four', true, 'elite_four', 60, 4, 'Dragon-type specialist. Fourth of the Elite Four.')
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 130, 56, 1, '["Hyper Beam", "Dragon Rage", "Twister", "Bite"]'::jsonb, 'Intimidate', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 148, 54, 2, '["Hyper Beam", "Dragon Rage", "Outrage", "Thunder Wave"]'::jsonb, 'Shed Skin', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 148, 54, 3, '["Hyper Beam", "Dragon Rage", "Outrage", "Safeguard"]'::jsonb, 'Shed Skin', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 142, 58, 4, '["Hyper Beam", "Ancient Power", "Wing Attack", "Scary Face"]'::jsonb, 'Rock Head', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 149, 60, 5, '["Hyper Beam", "Outrage", "Wing Attack", "Safeguard"]'::jsonb, 'Inner Focus', NULL, NULL);
END $$;

-- Blue (Champion)
DO $$
DECLARE
  v_trainer_id UUID;
  v_route_id UUID;
BEGIN
  SELECT id INTO v_route_id FROM public.routes WHERE slug = 'indigo-plateau' AND game_id = 'f6a7b8c9-d0e1-2345-fab6-789012345678';
  INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
  VALUES (v_route_id, 'Blue', 'Champion', true, 'champion', 61, 5, 'Champion''s team varies by starter. This is the Squirtle starter version.')
  RETURNING id INTO v_trainer_id;

  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 18, 59, 1, '["Aerial Ace", "Feather Dance", "Sand Attack", "Whirlwind"]'::jsonb, 'Keen Eye', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 65, 57, 2, '["Psychic", "Future Sight", "Reflect", "Calm Mind"]'::jsonb, 'Synchronize', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 112, 59, 3, '["Earthquake", "Take Down", "Rock Tomb", "Scary Face"]'::jsonb, 'Lightning Rod', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 130, 58, 4, '["Hyper Beam", "Dragon Dance", "Earthquake", "Thrash"]'::jsonb, 'Intimidate', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 59, 59, 5, '["Fire Blast", "ExtremeSpeed", "Bite", "Roar"]'::jsonb, 'Intimidate', NULL, NULL);
  INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability, held_item, nature)
  VALUES (v_trainer_id, 103, 61, 6, '["Giga Drain", "Sleep Powder", "Egg Bomb", "Light Screen"]'::jsonb, 'Chlorophyll', NULL, NULL);
END $$;

-- Update total_routes count
UPDATE public.games SET total_routes = 50 WHERE id = 'f6a7b8c9-d0e1-2345-fab6-789012345678';
