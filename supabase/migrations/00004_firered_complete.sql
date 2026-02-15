-- ===========================================
-- POKEMON FIRERED (KANTO) - COMPLETE GAME DATA
-- Adds remaining routes, encounters, trainers,
-- and items beyond the initial 10-route seed.
-- ===========================================

-- Game ID constant used throughout:
-- 'b2c3d4e5-f6a7-8901-bcde-f12345678901'


-- NOTE: Starters are handled by apply-all-migrations.sql
-- Run that file first, then this one.


-- ===========================================
-- SECTION 1: ADD MISTY & RIVAL TO CERULEAN CITY
-- (cerulean-city already exists at display_order 10)
-- ===========================================

-- Misty - Cerulean City Gym Leader
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
SELECT r.id, 'Misty', 'Gym Leader', true, 'gym_leader', 21, 2, 'Water-type specialist. Cascade Badge.'
FROM public.routes r
WHERE r.slug = 'cerulean-city' AND r.game_id = 'b2c3d4e5-f6a7-8901-bcde-f12345678901';

-- Misty's team
INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability)
SELECT t.id, e.dex_id, e.lvl, e.slot, e.moves::jsonb, e.abil
FROM public.trainers t
JOIN public.routes r ON t.route_id = r.id,
(VALUES
  (120, 18, 1, '["Tackle", "Harden", "Water Pulse", "Recover"]', 'Natural Cure'),
  (121, 21, 2, '["Swift", "Water Pulse", "Recover", "Rapid Spin"]', 'Natural Cure')
) AS e(dex_id, lvl, slot, moves, abil)
WHERE r.slug = 'cerulean-city' AND t.name = 'Misty'
AND r.game_id = 'b2c3d4e5-f6a7-8901-bcde-f12345678901';

-- Rival battle - Cerulean City
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
SELECT r.id, 'Rival', 'Rival', true, 'rival', 18, 3, 'Team varies by starter. Shown for Bulbasaur starter.'
FROM public.routes r
WHERE r.slug = 'cerulean-city' AND r.game_id = 'b2c3d4e5-f6a7-8901-bcde-f12345678901';

-- Rival's team (Cerulean City)
INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability)
SELECT t.id, e.dex_id, e.lvl, e.slot, e.moves::jsonb, e.abil
FROM public.trainers t
JOIN public.routes r ON t.route_id = r.id,
(VALUES
  (17, 17, 1, '["Gust", "Sand Attack", "Quick Attack", "Tackle"]', 'Keen Eye'),
  (63, 16, 2, '["Teleport"]', 'Synchronize'),
  (19, 15, 3, '["Tackle", "Quick Attack", "Hyper Fang", "Focus Energy"]', 'Run Away'),
  (5,  18, 4, '["Metal Claw", "Ember", "Rage", "Scratch"]', 'Blaze')
) AS e(dex_id, lvl, slot, moves, abil)
WHERE r.slug = 'cerulean-city' AND t.name = 'Rival'
AND r.game_id = 'b2c3d4e5-f6a7-8901-bcde-f12345678901';


-- ===========================================
-- SECTION 2: REMAINING ROUTES (display_order 11-48)
-- ===========================================

-- Route 24
INSERT INTO public.routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items, notes)
VALUES ('b2c3d4e5-f6a7-8901-bcde-f12345678901', 'Route 24', 'route-24', 11, 'route', true, true, true, 'Nugget Bridge. 5 trainers + Team Rocket Grunt.');

-- Route 25
INSERT INTO public.routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items, notes)
VALUES ('b2c3d4e5-f6a7-8901-bcde-f12345678901', 'Route 25', 'route-25', 12, 'route', true, true, true, 'Path to Bill''s House. Receive S.S. Ticket.');

-- Route 5
INSERT INTO public.routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items, notes)
VALUES ('b2c3d4e5-f6a7-8901-bcde-f12345678901', 'Route 5', 'route-5', 13, 'route', true, false, false, null);

-- Route 6
INSERT INTO public.routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items, notes)
VALUES ('b2c3d4e5-f6a7-8901-bcde-f12345678901', 'Route 6', 'route-6', 14, 'route', true, true, false, null);

-- Vermilion City
INSERT INTO public.routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items, notes)
VALUES ('b2c3d4e5-f6a7-8901-bcde-f12345678901', 'Vermilion City', 'vermilion-city', 15, 'city', false, true, true, 'Home of Lt. Surge. SS Anne docked at port.');

-- Route 11
INSERT INTO public.routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items, notes)
VALUES ('b2c3d4e5-f6a7-8901-bcde-f12345678901', 'Route 11', 'route-11', 16, 'route', true, true, false, null);

-- Diglett's Cave
INSERT INTO public.routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items, notes)
VALUES ('b2c3d4e5-f6a7-8901-bcde-f12345678901', 'Diglett''s Cave', 'digletts-cave', 17, 'cave', true, false, false, 'Connects Vermilion City area to Route 2.');

-- Route 9
INSERT INTO public.routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items, notes)
VALUES ('b2c3d4e5-f6a7-8901-bcde-f12345678901', 'Route 9', 'route-9', 18, 'route', true, true, false, null);

-- Route 10
INSERT INTO public.routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items, notes)
VALUES ('b2c3d4e5-f6a7-8901-bcde-f12345678901', 'Route 10', 'route-10', 19, 'route', true, false, false, null);

-- Rock Tunnel
INSERT INTO public.routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items, notes)
VALUES ('b2c3d4e5-f6a7-8901-bcde-f12345678901', 'Rock Tunnel', 'rock-tunnel', 20, 'cave', true, true, true, 'Requires Flash (optional). Many trainers inside.');

-- Lavender Town
INSERT INTO public.routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items, notes)
VALUES ('b2c3d4e5-f6a7-8901-bcde-f12345678901', 'Lavender Town', 'lavender-town', 21, 'city', false, false, true, 'Home of the Pokemon Tower.');

-- Pokemon Tower
INSERT INTO public.routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items, notes)
VALUES ('b2c3d4e5-f6a7-8901-bcde-f12345678901', 'Pokemon Tower', 'pokemon-tower', 22, 'building', true, true, true, 'Haunted tower. Rival battle on 2F. Need Silph Scope to identify ghosts.');

-- Route 8
INSERT INTO public.routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items, notes)
VALUES ('b2c3d4e5-f6a7-8901-bcde-f12345678901', 'Route 8', 'route-8', 23, 'route', true, true, false, null);

-- Route 7
INSERT INTO public.routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items, notes)
VALUES ('b2c3d4e5-f6a7-8901-bcde-f12345678901', 'Route 7', 'route-7', 24, 'route', true, false, false, null);

-- Celadon City
INSERT INTO public.routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items, notes)
VALUES ('b2c3d4e5-f6a7-8901-bcde-f12345678901', 'Celadon City', 'celadon-city', 25, 'city', false, true, true, 'Home of Erika. Game Corner and Dept. Store.');

-- Team Rocket Hideout
INSERT INTO public.routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items, notes)
VALUES ('b2c3d4e5-f6a7-8901-bcde-f12345678901', 'Team Rocket Hideout', 'team-rocket-hideout', 26, 'building', false, true, true, 'Underneath the Game Corner. Get Silph Scope.');

-- Route 16
INSERT INTO public.routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items, notes)
VALUES ('b2c3d4e5-f6a7-8901-bcde-f12345678901', 'Route 16', 'route-16', 27, 'route', true, false, true, 'Snorlax blocks the path. Use Poke Flute.');

-- Route 17 (Cycling Road)
INSERT INTO public.routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items, notes)
VALUES ('b2c3d4e5-f6a7-8901-bcde-f12345678901', 'Route 17', 'route-17', 28, 'route', true, true, false, 'Cycling Road.');

-- Route 18
INSERT INTO public.routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items, notes)
VALUES ('b2c3d4e5-f6a7-8901-bcde-f12345678901', 'Route 18', 'route-18', 29, 'route', true, false, false, null);

-- Fuchsia City
INSERT INTO public.routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items, notes)
VALUES ('b2c3d4e5-f6a7-8901-bcde-f12345678901', 'Fuchsia City', 'fuchsia-city', 30, 'city', false, true, true, 'Home of Koga. Safari Zone entrance.');

-- Safari Zone
INSERT INTO public.routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items, notes)
VALUES ('b2c3d4e5-f6a7-8901-bcde-f12345678901', 'Safari Zone', 'safari-zone', 31, 'special', true, false, true, 'Catch rare Pokemon with Safari Balls. HM03 Surf inside.');

-- Route 12
INSERT INTO public.routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items, notes)
VALUES ('b2c3d4e5-f6a7-8901-bcde-f12345678901', 'Route 12', 'route-12', 32, 'route', true, true, true, 'Snorlax blocks the path. Use Poke Flute.');

-- Route 13
INSERT INTO public.routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items, notes)
VALUES ('b2c3d4e5-f6a7-8901-bcde-f12345678901', 'Route 13', 'route-13', 33, 'route', true, true, false, null);

-- Route 14
INSERT INTO public.routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items, notes)
VALUES ('b2c3d4e5-f6a7-8901-bcde-f12345678901', 'Route 14', 'route-14', 34, 'route', true, true, false, null);

-- Route 15
INSERT INTO public.routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items, notes)
VALUES ('b2c3d4e5-f6a7-8901-bcde-f12345678901', 'Route 15', 'route-15', 35, 'route', true, true, false, null);

-- Saffron City
INSERT INTO public.routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items, notes)
VALUES ('b2c3d4e5-f6a7-8901-bcde-f12345678901', 'Saffron City', 'saffron-city', 36, 'city', false, true, true, 'Home of Sabrina. Silph Co. HQ.');

-- Silph Co.
INSERT INTO public.routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items, notes)
VALUES ('b2c3d4e5-f6a7-8901-bcde-f12345678901', 'Silph Co.', 'silph-co', 37, 'building', false, true, true, 'Team Rocket takeover. Rival battle and Giovanni boss fight. Receive Lapras.');

-- Route 19
INSERT INTO public.routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items, notes)
VALUES ('b2c3d4e5-f6a7-8901-bcde-f12345678901', 'Route 19', 'route-19', 38, 'water', true, true, false, null);

-- Route 20
INSERT INTO public.routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items, notes)
VALUES ('b2c3d4e5-f6a7-8901-bcde-f12345678901', 'Route 20', 'route-20', 39, 'water', true, true, false, null);

-- Seafoam Islands
INSERT INTO public.routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items, notes)
VALUES ('b2c3d4e5-f6a7-8901-bcde-f12345678901', 'Seafoam Islands', 'seafoam-islands', 40, 'cave', true, false, true, 'Ice puzzle cave. Articuno at the bottom.');

-- Cinnabar Island
INSERT INTO public.routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items, notes)
VALUES ('b2c3d4e5-f6a7-8901-bcde-f12345678901', 'Cinnabar Island', 'cinnabar-island', 41, 'city', false, true, true, 'Home of Blaine. Pokemon Mansion and Lab.');

-- Pokemon Mansion
INSERT INTO public.routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items, notes)
VALUES ('b2c3d4e5-f6a7-8901-bcde-f12345678901', 'Pokemon Mansion', 'pokemon-mansion', 42, 'building', true, true, true, 'Find the Secret Key to unlock Cinnabar Gym.');

-- Route 21
INSERT INTO public.routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items, notes)
VALUES ('b2c3d4e5-f6a7-8901-bcde-f12345678901', 'Route 21', 'route-21', 43, 'water', true, true, false, null);

-- Viridian City Gym
INSERT INTO public.routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items, notes)
VALUES ('b2c3d4e5-f6a7-8901-bcde-f12345678901', 'Viridian City Gym', 'viridian-city-gym', 44, 'building', false, true, false, 'Giovanni''s Gym. Earth Badge.');

-- Route 22
INSERT INTO public.routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items, notes)
VALUES ('b2c3d4e5-f6a7-8901-bcde-f12345678901', 'Route 22', 'route-22', 45, 'route', true, true, false, 'Rival battle before Victory Road.');

-- Route 23
INSERT INTO public.routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items, notes)
VALUES ('b2c3d4e5-f6a7-8901-bcde-f12345678901', 'Route 23', 'route-23', 46, 'route', true, false, false, 'Badge check gates to Victory Road.');

-- Victory Road
INSERT INTO public.routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items, notes)
VALUES ('b2c3d4e5-f6a7-8901-bcde-f12345678901', 'Victory Road', 'victory-road', 47, 'cave', true, true, true, 'Final cave before Indigo Plateau. Strength puzzles.');

-- Indigo Plateau
INSERT INTO public.routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items, notes)
VALUES ('b2c3d4e5-f6a7-8901-bcde-f12345678901', 'Indigo Plateau', 'indigo-plateau', 48, 'building', false, true, true, 'Elite Four and Champion battles.');


-- ===========================================
-- SECTION 3: ENCOUNTERS FOR NEW ROUTES
-- ===========================================

-- Route 24 encounters
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions, version_exclusive)
SELECT r.id, e.dex_id, e.method, e.rate, e.lmin, e.lmax, e.conditions, e.ver_excl
FROM public.routes r,
(VALUES
  (43,  'walking', 25.00, 11, 14, null, null),  -- Oddish
  (69,  'walking', 25.00, 12, 14, null, null),  -- Bellsprout
  (63,  'walking', 15.00, 10, 12, null, null),  -- Abra
  (16,  'walking', 25.00, 11, 13, null, null),   -- Pidgey
  (10,  'walking', 10.00, 11, 13, null, null)    -- Caterpie
) AS e(dex_id, method, rate, lmin, lmax, conditions, ver_excl)
WHERE r.slug = 'route-24' AND r.game_id = 'b2c3d4e5-f6a7-8901-bcde-f12345678901';

-- Route 25 encounters
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions, version_exclusive)
SELECT r.id, e.dex_id, e.method, e.rate, e.lmin, e.lmax, e.conditions, e.ver_excl
FROM public.routes r,
(VALUES
  (43,  'walking', 25.00, 11, 14, null, null),  -- Oddish
  (69,  'walking', 25.00, 12, 14, null, null),  -- Bellsprout
  (63,  'walking', 15.00, 10, 12, null, null),  -- Abra
  (16,  'walking', 25.00, 11, 13, null, null),   -- Pidgey
  (11,  'walking', 10.00, 11, 13, null, null)    -- Metapod
) AS e(dex_id, method, rate, lmin, lmax, conditions, ver_excl)
WHERE r.slug = 'route-25' AND r.game_id = 'b2c3d4e5-f6a7-8901-bcde-f12345678901';

-- Route 5 encounters
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions, version_exclusive)
SELECT r.id, e.dex_id, e.method, e.rate, e.lmin, e.lmax, e.conditions, e.ver_excl
FROM public.routes r,
(VALUES
  (16,  'walking', 35.00, 13, 16, null, null),  -- Pidgey
  (52,  'walking', 35.00, 10, 16, null, null),  -- Meowth
  (43,  'walking', 30.00, 13, 16, null, null)   -- Oddish
) AS e(dex_id, method, rate, lmin, lmax, conditions, ver_excl)
WHERE r.slug = 'route-5' AND r.game_id = 'b2c3d4e5-f6a7-8901-bcde-f12345678901';

-- Route 6 encounters
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions, version_exclusive)
SELECT r.id, e.dex_id, e.method, e.rate, e.lmin, e.lmax, e.conditions, e.ver_excl
FROM public.routes r,
(VALUES
  (16,  'walking', 35.00, 13, 16, null, null),  -- Pidgey
  (52,  'walking', 35.00, 10, 16, null, null),  -- Meowth
  (43,  'walking', 30.00, 13, 16, null, null)   -- Oddish
) AS e(dex_id, method, rate, lmin, lmax, conditions, ver_excl)
WHERE r.slug = 'route-6' AND r.game_id = 'b2c3d4e5-f6a7-8901-bcde-f12345678901';

-- Route 11 encounters
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions, version_exclusive)
SELECT r.id, e.dex_id, e.method, e.rate, e.lmin, e.lmax, e.conditions, e.ver_excl
FROM public.routes r,
(VALUES
  (21,  'walking', 35.00, 18, 22, null, null),  -- Spearow
  (23,  'walking', 30.00, 18, 22, null, null),  -- Ekans
  (96,  'walking', 35.00, 18, 22, null, null)   -- Drowzee
) AS e(dex_id, method, rate, lmin, lmax, conditions, ver_excl)
WHERE r.slug = 'route-11' AND r.game_id = 'b2c3d4e5-f6a7-8901-bcde-f12345678901';

-- Diglett's Cave encounters
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions, version_exclusive)
SELECT r.id, e.dex_id, e.method, e.rate, e.lmin, e.lmax, e.conditions, e.ver_excl
FROM public.routes r,
(VALUES
  (50,  'walking', 95.00, 15, 22, null, null),  -- Diglett
  (51,  'walking', 5.00,  29, 31, null, null)   -- Dugtrio
) AS e(dex_id, method, rate, lmin, lmax, conditions, ver_excl)
WHERE r.slug = 'digletts-cave' AND r.game_id = 'b2c3d4e5-f6a7-8901-bcde-f12345678901';

-- Route 9 encounters
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions, version_exclusive)
SELECT r.id, e.dex_id, e.method, e.rate, e.lmin, e.lmax, e.conditions, e.ver_excl
FROM public.routes r,
(VALUES
  (19,  'walking', 30.00, 14, 17, null, null),  -- Rattata
  (21,  'walking', 30.00, 11, 17, null, null),  -- Spearow
  (29,  'walking', 20.00, 11, 17, null, null),  -- Nidoran F
  (32,  'walking', 20.00, 11, 17, null, null)   -- Nidoran M
) AS e(dex_id, method, rate, lmin, lmax, conditions, ver_excl)
WHERE r.slug = 'route-9' AND r.game_id = 'b2c3d4e5-f6a7-8901-bcde-f12345678901';

-- Route 10 encounters
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions, version_exclusive)
SELECT r.id, e.dex_id, e.method, e.rate, e.lmin, e.lmax, e.conditions, e.ver_excl
FROM public.routes r,
(VALUES
  (21,  'walking', 40.00, 11, 17, null, null),  -- Spearow
  (100, 'walking', 30.00, 14, 17, null, null),  -- Voltorb
  (23,  'walking', 30.00, 11, 17, null, null)   -- Ekans
) AS e(dex_id, method, rate, lmin, lmax, conditions, ver_excl)
WHERE r.slug = 'route-10' AND r.game_id = 'b2c3d4e5-f6a7-8901-bcde-f12345678901';

-- Rock Tunnel encounters
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions, version_exclusive)
SELECT r.id, e.dex_id, e.method, e.rate, e.lmin, e.lmax, e.conditions, e.ver_excl
FROM public.routes r,
(VALUES
  (41,  'walking', 30.00, 15, 17, null, null),  -- Zubat
  (74,  'walking', 25.00, 15, 17, null, null),  -- Geodude
  (66,  'walking', 25.00, 15, 17, null, null),  -- Machop
  (95,  'walking', 10.00, 15, 17, null, null),  -- Onix
  (104, 'walking', 10.00, 15, 17, null, null)   -- Cubone
) AS e(dex_id, method, rate, lmin, lmax, conditions, ver_excl)
WHERE r.slug = 'rock-tunnel' AND r.game_id = 'b2c3d4e5-f6a7-8901-bcde-f12345678901';

-- Pokemon Tower encounters
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions, version_exclusive)
SELECT r.id, e.dex_id, e.method, e.rate, e.lmin, e.lmax, e.conditions, e.ver_excl
FROM public.routes r,
(VALUES
  (92,  'walking', 55.00, 20, 25, null, null),  -- Gastly
  (93,  'walking', 15.00, 23, 25, null, null),  -- Haunter
  (104, 'walking', 30.00, 20, 25, null, null)   -- Cubone
) AS e(dex_id, method, rate, lmin, lmax, conditions, ver_excl)
WHERE r.slug = 'pokemon-tower' AND r.game_id = 'b2c3d4e5-f6a7-8901-bcde-f12345678901';

-- Route 8 encounters
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions, version_exclusive)
SELECT r.id, e.dex_id, e.method, e.rate, e.lmin, e.lmax, e.conditions, e.ver_excl
FROM public.routes r,
(VALUES
  (16,  'walking', 20.00, 18, 22, null, null),  -- Pidgey
  (52,  'walking', 20.00, 18, 22, null, null),  -- Meowth
  (37,  'walking', 15.00, 18, 20, null, 'firered'),   -- Vulpix (FireRed exclusive)
  (58,  'walking', 15.00, 18, 20, null, 'leafgreen'), -- Growlithe (LeafGreen shown for reference)
  (56,  'walking', 15.00, 18, 22, null, null),  -- Mankey
  (132, 'walking', 15.00, 18, 22, null, null)   -- Ditto (rare, hidden area)
) AS e(dex_id, method, rate, lmin, lmax, conditions, ver_excl)
WHERE r.slug = 'route-8' AND r.game_id = 'b2c3d4e5-f6a7-8901-bcde-f12345678901';

-- Route 7 encounters
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions, version_exclusive)
SELECT r.id, e.dex_id, e.method, e.rate, e.lmin, e.lmax, e.conditions, e.ver_excl
FROM public.routes r,
(VALUES
  (16,  'walking', 25.00, 19, 22, null, null),  -- Pidgey
  (52,  'walking', 30.00, 19, 22, null, null),  -- Meowth
  (37,  'walking', 15.00, 19, 22, null, 'firered'),   -- Vulpix
  (58,  'walking', 15.00, 19, 22, null, 'leafgreen'), -- Growlithe
  (56,  'walking', 15.00, 19, 22, null, null)   -- Mankey
) AS e(dex_id, method, rate, lmin, lmax, conditions, ver_excl)
WHERE r.slug = 'route-7' AND r.game_id = 'b2c3d4e5-f6a7-8901-bcde-f12345678901';

-- Route 16 encounters
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions, version_exclusive)
SELECT r.id, e.dex_id, e.method, e.rate, e.lmin, e.lmax, e.conditions, e.ver_excl
FROM public.routes r,
(VALUES
  (21,  'walking', 30.00, 20, 25, null, null),  -- Spearow
  (84,  'walking', 30.00, 22, 26, null, null),  -- Doduo
  (19,  'walking', 30.00, 20, 25, null, null),  -- Rattata
  (143, 'static',  100.00, 30, 30, 'Requires Poke Flute', null)  -- Snorlax
) AS e(dex_id, method, rate, lmin, lmax, conditions, ver_excl)
WHERE r.slug = 'route-16' AND r.game_id = 'b2c3d4e5-f6a7-8901-bcde-f12345678901';

-- Route 17 (Cycling Road) encounters
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions, version_exclusive)
SELECT r.id, e.dex_id, e.method, e.rate, e.lmin, e.lmax, e.conditions, e.ver_excl
FROM public.routes r,
(VALUES
  (21,  'walking', 30.00, 22, 28, null, null),  -- Spearow
  (84,  'walking', 35.00, 24, 28, null, null),  -- Doduo
  (20,  'walking', 35.00, 25, 29, null, null)   -- Raticate
) AS e(dex_id, method, rate, lmin, lmax, conditions, ver_excl)
WHERE r.slug = 'route-17' AND r.game_id = 'b2c3d4e5-f6a7-8901-bcde-f12345678901';

-- Route 18 encounters
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions, version_exclusive)
SELECT r.id, e.dex_id, e.method, e.rate, e.lmin, e.lmax, e.conditions, e.ver_excl
FROM public.routes r,
(VALUES
  (21,  'walking', 30.00, 22, 28, null, null),  -- Spearow
  (84,  'walking', 35.00, 24, 28, null, null),  -- Doduo
  (20,  'walking', 35.00, 25, 29, null, null)   -- Raticate
) AS e(dex_id, method, rate, lmin, lmax, conditions, ver_excl)
WHERE r.slug = 'route-18' AND r.game_id = 'b2c3d4e5-f6a7-8901-bcde-f12345678901';

-- Safari Zone encounters
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions, version_exclusive)
SELECT r.id, e.dex_id, e.method, e.rate, e.lmin, e.lmax, e.conditions, e.ver_excl
FROM public.routes r,
(VALUES
  (29,  'walking', 15.00, 22, 31, null, null),       -- Nidoran F
  (32,  'walking', 15.00, 22, 31, null, null),       -- Nidoran M
  (113, 'walking', 4.00,  23, 30, null, null),       -- Chansey
  (115, 'walking', 4.00,  25, 28, null, null),       -- Kangaskhan
  (128, 'walking', 10.00, 25, 28, null, null),       -- Tauros
  (123, 'walking', 5.00,  25, 28, null, 'firered'),  -- Scyther (FireRed)
  (127, 'walking', 5.00,  25, 28, null, 'leafgreen'),-- Pinsir (LeafGreen)
  (111, 'walking', 10.00, 25, 28, null, null),       -- Rhyhorn
  (102, 'walking', 10.00, 25, 30, null, null),       -- Exeggcute
  (48,  'walking', 10.00, 25, 28, null, null),       -- Venonat
  (46,  'walking', 12.00, 22, 25, null, null),       -- Paras
  (147, 'fishing_super', 4.00, 15, 25, 'Super Rod', null),  -- Dratini
  (54,  'surfing', 30.00, 20, 30, null, null),       -- Psyduck
  (118, 'fishing_good', 20.00, 10, 20, 'Good Rod', null)    -- Goldeen
) AS e(dex_id, method, rate, lmin, lmax, conditions, ver_excl)
WHERE r.slug = 'safari-zone' AND r.game_id = 'b2c3d4e5-f6a7-8901-bcde-f12345678901';

-- Route 12 encounters
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions, version_exclusive)
SELECT r.id, e.dex_id, e.method, e.rate, e.lmin, e.lmax, e.conditions, e.ver_excl
FROM public.routes r,
(VALUES
  (16,  'walking', 25.00, 23, 27, null, null),  -- Pidgey
  (43,  'walking', 25.00, 22, 26, null, null),  -- Oddish
  (48,  'walking', 25.00, 24, 26, null, null),  -- Venonat
  (44,  'walking', 15.00, 26, 30, null, null),  -- Gloom
  (143, 'static',  100.00, 30, 30, 'Requires Poke Flute', null),  -- Snorlax
  (129, 'fishing_old', 100.00, 5, 15, 'Old Rod', null)            -- Magikarp
) AS e(dex_id, method, rate, lmin, lmax, conditions, ver_excl)
WHERE r.slug = 'route-12' AND r.game_id = 'b2c3d4e5-f6a7-8901-bcde-f12345678901';

-- Route 13 encounters
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions, version_exclusive)
SELECT r.id, e.dex_id, e.method, e.rate, e.lmin, e.lmax, e.conditions, e.ver_excl
FROM public.routes r,
(VALUES
  (16,  'walking', 20.00, 24, 28, null, null),  -- Pidgey
  (43,  'walking', 20.00, 22, 26, null, null),  -- Oddish
  (48,  'walking', 20.00, 24, 26, null, null),  -- Venonat
  (132, 'walking', 15.00, 25, 28, null, null),  -- Ditto
  (17,  'walking', 15.00, 25, 29, null, null),  -- Pidgeotto
  (44,  'walking', 10.00, 26, 30, null, null)   -- Gloom
) AS e(dex_id, method, rate, lmin, lmax, conditions, ver_excl)
WHERE r.slug = 'route-13' AND r.game_id = 'b2c3d4e5-f6a7-8901-bcde-f12345678901';

-- Route 14 encounters
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions, version_exclusive)
SELECT r.id, e.dex_id, e.method, e.rate, e.lmin, e.lmax, e.conditions, e.ver_excl
FROM public.routes r,
(VALUES
  (16,  'walking', 15.00, 24, 28, null, null),  -- Pidgey
  (43,  'walking', 20.00, 22, 26, null, null),  -- Oddish
  (48,  'walking', 20.00, 24, 26, null, null),  -- Venonat
  (132, 'walking', 15.00, 25, 28, null, null),  -- Ditto
  (17,  'walking', 15.00, 25, 29, null, null),  -- Pidgeotto
  (44,  'walking', 15.00, 26, 30, null, null)   -- Gloom
) AS e(dex_id, method, rate, lmin, lmax, conditions, ver_excl)
WHERE r.slug = 'route-14' AND r.game_id = 'b2c3d4e5-f6a7-8901-bcde-f12345678901';

-- Route 15 encounters
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions, version_exclusive)
SELECT r.id, e.dex_id, e.method, e.rate, e.lmin, e.lmax, e.conditions, e.ver_excl
FROM public.routes r,
(VALUES
  (16,  'walking', 15.00, 24, 28, null, null),  -- Pidgey
  (43,  'walking', 20.00, 22, 26, null, null),  -- Oddish
  (48,  'walking', 20.00, 24, 26, null, null),  -- Venonat
  (132, 'walking', 15.00, 25, 28, null, null),  -- Ditto
  (17,  'walking', 15.00, 25, 29, null, null),  -- Pidgeotto
  (44,  'walking', 15.00, 26, 30, null, null)   -- Gloom
) AS e(dex_id, method, rate, lmin, lmax, conditions, ver_excl)
WHERE r.slug = 'route-15' AND r.game_id = 'b2c3d4e5-f6a7-8901-bcde-f12345678901';

-- Route 19 encounters
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions, version_exclusive)
SELECT r.id, e.dex_id, e.method, e.rate, e.lmin, e.lmax, e.conditions, e.ver_excl
FROM public.routes r,
(VALUES
  (72,  'surfing', 95.00, 5, 40, null, null),   -- Tentacool
  (73,  'surfing', 5.00,  30, 40, null, null)   -- Tentacruel
) AS e(dex_id, method, rate, lmin, lmax, conditions, ver_excl)
WHERE r.slug = 'route-19' AND r.game_id = 'b2c3d4e5-f6a7-8901-bcde-f12345678901';

-- Route 20 encounters
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions, version_exclusive)
SELECT r.id, e.dex_id, e.method, e.rate, e.lmin, e.lmax, e.conditions, e.ver_excl
FROM public.routes r,
(VALUES
  (72,  'surfing', 95.00, 5, 40, null, null),   -- Tentacool
  (73,  'surfing', 5.00,  30, 40, null, null)   -- Tentacruel
) AS e(dex_id, method, rate, lmin, lmax, conditions, ver_excl)
WHERE r.slug = 'route-20' AND r.game_id = 'b2c3d4e5-f6a7-8901-bcde-f12345678901';

-- Seafoam Islands encounters
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions, version_exclusive)
SELECT r.id, e.dex_id, e.method, e.rate, e.lmin, e.lmax, e.conditions, e.ver_excl
FROM public.routes r,
(VALUES
  (41,  'walking', 30.00, 26, 32, null, null),  -- Zubat
  (42,  'walking', 15.00, 30, 34, null, null),  -- Golbat
  (86,  'walking', 20.00, 28, 32, null, null),  -- Seel
  (87,  'walking', 5.00,  32, 34, null, null),  -- Dewgong
  (54,  'surfing', 25.00, 30, 40, null, null),  -- Psyduck
  (79,  'walking', 15.00, 26, 32, null, null),  -- Slowpoke
  (116, 'fishing_good', 20.00, 20, 30, 'Good Rod', null), -- Horsea
  (90,  'walking', 10.00, 28, 32, null, null)   -- Shellder (walking lower floors)
) AS e(dex_id, method, rate, lmin, lmax, conditions, ver_excl)
WHERE r.slug = 'seafoam-islands' AND r.game_id = 'b2c3d4e5-f6a7-8901-bcde-f12345678901';

-- Pokemon Mansion encounters
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions, version_exclusive)
SELECT r.id, e.dex_id, e.method, e.rate, e.lmin, e.lmax, e.conditions, e.ver_excl
FROM public.routes r,
(VALUES
  (88,  'walking', 25.00, 32, 40, null, null),  -- Grimer
  (109, 'walking', 25.00, 30, 38, null, null),  -- Koffing
  (77,  'walking', 20.00, 32, 38, null, null),  -- Ponyta
  (58,  'walking', 15.00, 34, 38, null, 'firered'),   -- Growlithe (FireRed)
  (37,  'walking', 15.00, 34, 38, null, 'leafgreen'), -- Vulpix (LeafGreen)
  (132, 'walking', 15.00, 30, 36, null, null)   -- Ditto
) AS e(dex_id, method, rate, lmin, lmax, conditions, ver_excl)
WHERE r.slug = 'pokemon-mansion' AND r.game_id = 'b2c3d4e5-f6a7-8901-bcde-f12345678901';

-- Route 21 encounters
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions, version_exclusive)
SELECT r.id, e.dex_id, e.method, e.rate, e.lmin, e.lmax, e.conditions, e.ver_excl
FROM public.routes r,
(VALUES
  (72,  'surfing', 95.00, 5, 40, null, null),   -- Tentacool
  (73,  'surfing', 5.00,  30, 40, null, null),  -- Tentacruel
  (114, 'walking', 65.00, 21, 30, null, null),  -- Tangela
  (17,  'walking', 35.00, 21, 28, null, null)   -- Pidgeotto
) AS e(dex_id, method, rate, lmin, lmax, conditions, ver_excl)
WHERE r.slug = 'route-21' AND r.game_id = 'b2c3d4e5-f6a7-8901-bcde-f12345678901';

-- Route 22 encounters
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions, version_exclusive)
SELECT r.id, e.dex_id, e.method, e.rate, e.lmin, e.lmax, e.conditions, e.ver_excl
FROM public.routes r,
(VALUES
  (21,  'walking', 30.00, 3, 5, null, null),    -- Spearow
  (29,  'walking', 20.00, 3, 5, null, null),    -- Nidoran F
  (32,  'walking', 20.00, 3, 5, null, null),    -- Nidoran M
  (19,  'walking', 20.00, 2, 5, null, null),    -- Rattata
  (56,  'walking', 10.00, 3, 5, null, null)     -- Mankey
) AS e(dex_id, method, rate, lmin, lmax, conditions, ver_excl)
WHERE r.slug = 'route-22' AND r.game_id = 'b2c3d4e5-f6a7-8901-bcde-f12345678901';

-- Route 23 encounters
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions, version_exclusive)
SELECT r.id, e.dex_id, e.method, e.rate, e.lmin, e.lmax, e.conditions, e.ver_excl
FROM public.routes r,
(VALUES
  (21,  'walking', 30.00, 26, 44, null, null),  -- Spearow
  (22,  'walking', 20.00, 38, 44, null, null),  -- Fearow
  (56,  'walking', 15.00, 26, 44, null, null),  -- Mankey
  (57,  'walking', 10.00, 38, 44, null, null),  -- Primeape
  (23,  'walking', 15.00, 26, 44, null, null),  -- Ekans
  (24,  'walking', 10.00, 38, 44, null, null)   -- Arbok
) AS e(dex_id, method, rate, lmin, lmax, conditions, ver_excl)
WHERE r.slug = 'route-23' AND r.game_id = 'b2c3d4e5-f6a7-8901-bcde-f12345678901';

-- Victory Road encounters
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions, version_exclusive)
SELECT r.id, e.dex_id, e.method, e.rate, e.lmin, e.lmax, e.conditions, e.ver_excl
FROM public.routes r,
(VALUES
  (41,  'walking', 20.00, 38, 44, null, null),  -- Zubat
  (42,  'walking', 15.00, 40, 46, null, null),  -- Golbat
  (95,  'walking', 15.00, 40, 46, null, null),  -- Onix
  (74,  'walking', 15.00, 40, 44, null, null),  -- Geodude
  (67,  'walking', 20.00, 40, 46, null, null),  -- Machoke
  (105, 'walking', 15.00, 40, 46, null, null)   -- Marowak
) AS e(dex_id, method, rate, lmin, lmax, conditions, ver_excl)
WHERE r.slug = 'victory-road' AND r.game_id = 'b2c3d4e5-f6a7-8901-bcde-f12345678901';


-- ===========================================
-- SECTION 4: GYM LEADERS
-- ===========================================

-- Lt. Surge - Vermilion City
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
SELECT r.id, 'Lt. Surge', 'Gym Leader', true, 'gym_leader', 24, 1, 'Electric-type specialist. Thunder Badge.'
FROM public.routes r
WHERE r.slug = 'vermilion-city' AND r.game_id = 'b2c3d4e5-f6a7-8901-bcde-f12345678901';

INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability)
SELECT t.id, e.dex_id, e.lvl, e.slot, e.moves::jsonb, e.abil
FROM public.trainers t
JOIN public.routes r ON t.route_id = r.id,
(VALUES
  (100, 21, 1, '["Sonic Boom", "Tackle", "Shock Wave", "Screech"]', 'Soundproof'),
  (25,  18, 2, '["Quick Attack", "Shock Wave", "Thunder Wave", "Double Team"]', 'Static'),
  (26,  24, 3, '["Shock Wave", "Quick Attack", "Thunder Wave", "Double Team"]', 'Static')
) AS e(dex_id, lvl, slot, moves, abil)
WHERE r.slug = 'vermilion-city' AND t.name = 'Lt. Surge'
AND r.game_id = 'b2c3d4e5-f6a7-8901-bcde-f12345678901';

-- Erika - Celadon City
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
SELECT r.id, 'Erika', 'Gym Leader', true, 'gym_leader', 29, 1, 'Grass-type specialist. Rainbow Badge.'
FROM public.routes r
WHERE r.slug = 'celadon-city' AND r.game_id = 'b2c3d4e5-f6a7-8901-bcde-f12345678901';

INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability)
SELECT t.id, e.dex_id, e.lvl, e.slot, e.moves::jsonb, e.abil
FROM public.trainers t
JOIN public.routes r ON t.route_id = r.id,
(VALUES
  (71,  29, 1, '["Giga Drain", "Stun Spore", "Acid", "PoisonPowder"]', 'Chlorophyll'),
  (114, 24, 2, '["Giga Drain", "Ingrain", "Constrict", "PoisonPowder"]', 'Chlorophyll'),
  (45,  29, 3, '["Giga Drain", "Stun Spore", "Acid", "Sleep Powder"]', 'Chlorophyll')
) AS e(dex_id, lvl, slot, moves, abil)
WHERE r.slug = 'celadon-city' AND t.name = 'Erika'
AND r.game_id = 'b2c3d4e5-f6a7-8901-bcde-f12345678901';

-- Koga - Fuchsia City
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
SELECT r.id, 'Koga', 'Gym Leader', true, 'gym_leader', 43, 1, 'Poison-type specialist. Soul Badge.'
FROM public.routes r
WHERE r.slug = 'fuchsia-city' AND r.game_id = 'b2c3d4e5-f6a7-8901-bcde-f12345678901';

INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability)
SELECT t.id, e.dex_id, e.lvl, e.slot, e.moves::jsonb, e.abil
FROM public.trainers t
JOIN public.routes r ON t.route_id = r.id,
(VALUES
  (109, 37, 1, '["Self-Destruct", "Sludge", "Smokescreen", "Tackle"]', 'Levitate'),
  (89,  39, 2, '["Minimize", "Sludge", "Acid Armor", "Toxic"]', 'Stench'),
  (109, 37, 3, '["Self-Destruct", "Sludge", "Smokescreen", "Toxic"]', 'Levitate'),
  (110, 43, 4, '["Tackle", "Sludge", "Smokescreen", "Self-Destruct"]', 'Levitate')
) AS e(dex_id, lvl, slot, moves, abil)
WHERE r.slug = 'fuchsia-city' AND t.name = 'Koga'
AND r.game_id = 'b2c3d4e5-f6a7-8901-bcde-f12345678901';

-- Sabrina - Saffron City
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
SELECT r.id, 'Sabrina', 'Gym Leader', true, 'gym_leader', 43, 1, 'Psychic-type specialist. Marsh Badge.'
FROM public.routes r
WHERE r.slug = 'saffron-city' AND r.game_id = 'b2c3d4e5-f6a7-8901-bcde-f12345678901';

INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability)
SELECT t.id, e.dex_id, e.lvl, e.slot, e.moves::jsonb, e.abil
FROM public.trainers t
JOIN public.routes r ON t.route_id = r.id,
(VALUES
  (64,  38, 1, '["Psybeam", "Reflect", "Future Sight", "Calm Mind"]', 'Synchronize'),
  (122, 37, 2, '["Barrier", "Psybeam", "Baton Pass", "Calm Mind"]', 'Soundproof'),
  (49,  38, 3, '["Psybeam", "Gust", "Leech Life", "Supersonic"]', 'Shield Dust'),
  (65,  43, 4, '["Psychic", "Calm Mind", "Reflect", "Future Sight"]', 'Synchronize')
) AS e(dex_id, lvl, slot, moves, abil)
WHERE r.slug = 'saffron-city' AND t.name = 'Sabrina'
AND r.game_id = 'b2c3d4e5-f6a7-8901-bcde-f12345678901';

-- Blaine - Cinnabar Island
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
SELECT r.id, 'Blaine', 'Gym Leader', true, 'gym_leader', 47, 1, 'Fire-type specialist. Volcano Badge.'
FROM public.routes r
WHERE r.slug = 'cinnabar-island' AND r.game_id = 'b2c3d4e5-f6a7-8901-bcde-f12345678901';

INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability)
SELECT t.id, e.dex_id, e.lvl, e.slot, e.moves::jsonb, e.abil
FROM public.trainers t
JOIN public.routes r ON t.route_id = r.id,
(VALUES
  (58,  42, 1, '["Fire Blast", "Take Down", "Flamethrower", "Roar"]', 'Intimidate'),
  (77,  40, 2, '["Fire Blast", "Stomp", "Fire Spin", "Bounce"]', 'Run Away'),
  (78,  42, 3, '["Fire Blast", "Stomp", "Bounce", "Fire Spin"]', 'Run Away'),
  (59,  47, 4, '["Fire Blast", "ExtremeSpeed", "Flamethrower", "Bite"]', 'Intimidate')
) AS e(dex_id, lvl, slot, moves, abil)
WHERE r.slug = 'cinnabar-island' AND t.name = 'Blaine'
AND r.game_id = 'b2c3d4e5-f6a7-8901-bcde-f12345678901';

-- Giovanni - Viridian City Gym
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
SELECT r.id, 'Giovanni', 'Gym Leader', true, 'gym_leader', 50, 1, 'Ground-type specialist. Earth Badge.'
FROM public.routes r
WHERE r.slug = 'viridian-city-gym' AND r.game_id = 'b2c3d4e5-f6a7-8901-bcde-f12345678901';

INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability)
SELECT t.id, e.dex_id, e.lvl, e.slot, e.moves::jsonb, e.abil
FROM public.trainers t
JOIN public.routes r ON t.route_id = r.id,
(VALUES
  (111, 45, 1, '["Earthquake", "Take Down", "Horn Drill", "Rock Blast"]', 'Lightning Rod'),
  (51,  42, 2, '["Earthquake", "Slash", "Sand Tomb", "Mud-Slap"]', 'Sand Veil'),
  (31,  44, 3, '["Earthquake", "Body Slam", "Double Kick", "Superpower"]', 'Poison Point'),
  (34,  45, 4, '["Earthquake", "Thrash", "Megahorn", "Shadow Ball"]', 'Poison Point'),
  (111, 50, 5, '["Earthquake", "Double Edge", "Megahorn", "Rock Blast"]', 'Lightning Rod')
) AS e(dex_id, lvl, slot, moves, abil)
WHERE r.slug = 'viridian-city-gym' AND t.name = 'Giovanni'
AND r.game_id = 'b2c3d4e5-f6a7-8901-bcde-f12345678901';


-- ===========================================
-- SECTION 5: RIVAL BATTLES (OTHER LOCATIONS)
-- ===========================================

-- Rival - Pokemon Tower
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
SELECT r.id, 'Rival', 'Rival', true, 'rival', null::integer, 1, 'Pokemon Tower 2F. Team varies by starter.'
FROM public.routes r
WHERE r.slug = 'pokemon-tower' AND r.game_id = 'b2c3d4e5-f6a7-8901-bcde-f12345678901';

-- Rival's team (Pokemon Tower) - Bulbasaur starter variant
INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability)
SELECT t.id, e.dex_id, e.lvl, e.slot, e.moves::jsonb, e.abil
FROM public.trainers t
JOIN public.routes r ON t.route_id = r.id,
(VALUES
  (17,  25, 1, '["Gust", "Quick Attack", "Sand Attack", "Whirlwind"]', 'Keen Eye'),
  (130, 23, 2, '["Bite", "Dragon Rage", "Twister", "Leer"]', 'Intimidate'),
  (58,  22, 3, '["Ember", "Bite", "Roar", "Leer"]', 'Intimidate'),
  (5,   25, 4, '["Ember", "Metal Claw", "Rage", "Scary Face"]', 'Blaze')
) AS e(dex_id, lvl, slot, moves, abil)
WHERE r.slug = 'pokemon-tower' AND t.name = 'Rival'
AND r.game_id = 'b2c3d4e5-f6a7-8901-bcde-f12345678901';

-- Rival - Silph Co.
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
SELECT r.id, 'Rival', 'Rival', true, 'rival', null::integer, 1, 'Silph Co. encounter. Team varies by starter.'
FROM public.routes r
WHERE r.slug = 'silph-co' AND r.game_id = 'b2c3d4e5-f6a7-8901-bcde-f12345678901';

-- Rival's team (Silph Co.) - Bulbasaur starter variant
INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability)
SELECT t.id, e.dex_id, e.lvl, e.slot, e.moves::jsonb, e.abil
FROM public.trainers t
JOIN public.routes r ON t.route_id = r.id,
(VALUES
  (18,  37, 1, '["Aerial Ace", "Feather Dance", "Quick Attack", "Sand Attack"]', 'Keen Eye'),
  (130, 38, 2, '["Hydro Pump", "Dragon Rage", "Twister", "Bite"]', 'Intimidate'),
  (58,  35, 3, '["Flamethrower", "Take Down", "Leer", "Bite"]', 'Intimidate'),
  (65,  35, 4, '["Psychic", "Future Sight", "Reflect", "Calm Mind"]', 'Synchronize'),
  (6,   40, 5, '["Flamethrower", "Slash", "Dragon Rage", "Scary Face"]', 'Blaze')
) AS e(dex_id, lvl, slot, moves, abil)
WHERE r.slug = 'silph-co' AND t.name = 'Rival'
AND r.game_id = 'b2c3d4e5-f6a7-8901-bcde-f12345678901';

-- Giovanni - Silph Co. (boss fight)
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
SELECT r.id, 'Giovanni', 'Team Rocket Boss', true, 'boss', null::integer, 2, 'Silph Co. boss. Defeat to liberate Silph Co.'
FROM public.routes r
WHERE r.slug = 'silph-co' AND r.game_id = 'b2c3d4e5-f6a7-8901-bcde-f12345678901';

-- Giovanni's team (Silph Co.)
INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability)
SELECT t.id, e.dex_id, e.lvl, e.slot, e.moves::jsonb, e.abil
FROM public.trainers t
JOIN public.routes r ON t.route_id = r.id,
(VALUES
  (34,  37, 1, '["Poison Sting", "Double Kick", "Fury Attack", "Horn Attack"]', 'Poison Point'),
  (115, 35, 2, '["Mega Punch", "Dizzy Punch", "Tail Whip", "Bite"]', 'Early Bird'),
  (112, 37, 3, '["Rock Blast", "Fury Attack", "Stomp", "Horn Drill"]', 'Lightning Rod'),
  (31,  41, 4, '["Body Slam", "Double Kick", "Poison Sting", "Superpower"]', 'Poison Point')
) AS e(dex_id, lvl, slot, moves, abil)
WHERE r.slug = 'silph-co' AND t.name = 'Giovanni'
AND r.game_id = 'b2c3d4e5-f6a7-8901-bcde-f12345678901';

-- Rival - Route 22 (pre-Victory Road)
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
SELECT r.id, 'Rival', 'Rival', true, 'rival', null::integer, 1, 'Late-game rival battle before Victory Road. Team varies by starter.'
FROM public.routes r
WHERE r.slug = 'route-22' AND r.game_id = 'b2c3d4e5-f6a7-8901-bcde-f12345678901';

-- Rival's team (Route 22) - Bulbasaur starter variant
INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability)
SELECT t.id, e.dex_id, e.lvl, e.slot, e.moves::jsonb, e.abil
FROM public.trainers t
JOIN public.routes r ON t.route_id = r.id,
(VALUES
  (18,  47, 1, '["Aerial Ace", "Feather Dance", "Quick Attack", "Whirlwind"]', 'Keen Eye'),
  (112, 45, 2, '["Earthquake", "Take Down", "Rock Tomb", "Scary Face"]', 'Lightning Rod'),
  (65,  47, 3, '["Psychic", "Future Sight", "Reflect", "Calm Mind"]', 'Synchronize'),
  (130, 45, 4, '["Hydro Pump", "Dragon Dance", "Bite", "Thrash"]', 'Intimidate'),
  (59,  45, 5, '["Fire Blast", "ExtremeSpeed", "Bite", "Roar"]', 'Intimidate'),
  (6,   53, 6, '["Fire Blast", "Slash", "Dragon Rage", "Flamethrower"]', 'Blaze')
) AS e(dex_id, lvl, slot, moves, abil)
WHERE r.slug = 'route-22' AND t.name = 'Rival'
AND r.game_id = 'b2c3d4e5-f6a7-8901-bcde-f12345678901';


-- ===========================================
-- SECTION 6: TEAM ROCKET HIDEOUT TRAINERS
-- ===========================================

INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
SELECT r.id, t.name, t.class, t.boss, t.btype, t.lcap, t.ord, t.notes
FROM public.routes r,
(VALUES
  ('Grunt 1', 'Team Rocket Grunt', false, null::text, null::integer, 1, null::text),
  ('Grunt 2', 'Team Rocket Grunt', false, null, null, 2, null),
  ('Grunt 3', 'Team Rocket Grunt', false, null, null, 3, null),
  ('Giovanni', 'Team Rocket Boss', true, 'boss', null, 4, 'Rocket Hideout boss. Obtain Silph Scope.')
) AS t(name, class, boss, btype, lcap, ord, notes)
WHERE r.slug = 'team-rocket-hideout' AND r.game_id = 'b2c3d4e5-f6a7-8901-bcde-f12345678901';

-- Giovanni's team (Rocket Hideout)
INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability)
SELECT t.id, e.dex_id, e.lvl, e.slot, e.moves::jsonb, e.abil
FROM public.trainers t
JOIN public.routes r ON t.route_id = r.id,
(VALUES
  (95,  25, 1, '["Rock Throw", "Rage", "Rock Tomb", "Screech"]', 'Rock Head'),
  (111, 24, 2, '["Stomp", "Fury Attack", "Horn Attack", "Tail Whip"]', 'Lightning Rod'),
  (115, 29, 3, '["Mega Punch", "Dizzy Punch", "Tail Whip", "Bite"]', 'Early Bird')
) AS e(dex_id, lvl, slot, moves, abil)
WHERE r.slug = 'team-rocket-hideout' AND t.name = 'Giovanni'
AND r.game_id = 'b2c3d4e5-f6a7-8901-bcde-f12345678901';

-- Grunt teams (Rocket Hideout)
INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability)
SELECT t.id, e.dex_id, e.lvl, e.slot, e.moves::jsonb, e.abil
FROM public.trainers t
JOIN public.routes r ON t.route_id = r.id,
(VALUES
  ('Grunt 1', 19, 21, 1, '["Hyper Fang", "Quick Attack", "Tail Whip", "Focus Energy"]', 'Run Away'),
  ('Grunt 1', 41, 21, 2, '["Wing Attack", "Bite", "Confuse Ray", "Leech Life"]', 'Inner Focus'),
  ('Grunt 2', 109, 21, 1, '["Tackle", "Smog", "Sludge", "Smokescreen"]', 'Levitate'),
  ('Grunt 2', 88, 21, 2, '["Sludge", "Disable", "Pound", "Minimize"]', 'Stench'),
  ('Grunt 3', 23, 21, 1, '["Bite", "Glare", "Poison Sting", "Screech"]', 'Intimidate'),
  ('Grunt 3', 20, 21, 2, '["Hyper Fang", "Quick Attack", "Scary Face", "Pursuit"]', 'Run Away')
) AS e(tname, dex_id, lvl, slot, moves, abil)
WHERE r.slug = 'team-rocket-hideout' AND t.name = e.tname
AND r.game_id = 'b2c3d4e5-f6a7-8901-bcde-f12345678901';


-- ===========================================
-- SECTION 7: ELITE FOUR & CHAMPION
-- ===========================================

-- Elite Four Lorelei
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
SELECT r.id, 'Lorelei', 'Elite Four', true, 'elite_four', 54, 1, 'Ice-type specialist. First of the Elite Four.'
FROM public.routes r
WHERE r.slug = 'indigo-plateau' AND r.game_id = 'b2c3d4e5-f6a7-8901-bcde-f12345678901';

INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability)
SELECT t.id, e.dex_id, e.lvl, e.slot, e.moves::jsonb, e.abil
FROM public.trainers t
JOIN public.routes r ON t.route_id = r.id,
(VALUES
  (87,  52, 1, '["Ice Beam", "Surf", "Hail", "Safeguard"]', 'Thick Fat'),
  (91,  51, 2, '["Ice Beam", "Surf", "Hail", "Supersonic"]', 'Shell Armor'),
  (80,  52, 3, '["Ice Beam", "Surf", "Yawn", "Amnesia"]', 'Own Tempo'),
  (124, 54, 4, '["Ice Punch", "Lovely Kiss", "Attract", "Double Slap"]', 'Oblivious'),
  (131, 54, 5, '["Ice Beam", "Surf", "Body Slam", "Confuse Ray"]', 'Water Absorb')
) AS e(dex_id, lvl, slot, moves, abil)
WHERE r.slug = 'indigo-plateau' AND t.name = 'Lorelei'
AND r.game_id = 'b2c3d4e5-f6a7-8901-bcde-f12345678901';

-- Elite Four Bruno
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
SELECT r.id, 'Bruno', 'Elite Four', true, 'elite_four', 56, 2, 'Fighting-type specialist. Second of the Elite Four.'
FROM public.routes r
WHERE r.slug = 'indigo-plateau' AND r.game_id = 'b2c3d4e5-f6a7-8901-bcde-f12345678901';

INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability)
SELECT t.id, e.dex_id, e.lvl, e.slot, e.moves::jsonb, e.abil
FROM public.trainers t
JOIN public.routes r ON t.route_id = r.id,
(VALUES
  (95,  51, 1, '["Earthquake", "Rock Tomb", "Iron Tail", "Roar"]', 'Rock Head'),
  (107, 53, 2, '["Sky Uppercut", "Mach Punch", "Rock Tomb", "Counter"]', 'Keen Eye'),
  (106, 53, 3, '["Mega Kick", "Foresight", "Brick Break", "Facade"]', 'Limber'),
  (95,  54, 4, '["Earthquake", "Double Edge", "Iron Tail", "Sand Tomb"]', 'Rock Head'),
  (68,  56, 5, '["Cross Chop", "Bulk Up", "Scary Face", "Rock Tomb"]', 'Guts')
) AS e(dex_id, lvl, slot, moves, abil)
WHERE r.slug = 'indigo-plateau' AND t.name = 'Bruno'
AND r.game_id = 'b2c3d4e5-f6a7-8901-bcde-f12345678901';

-- Elite Four Agatha
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
SELECT r.id, 'Agatha', 'Elite Four', true, 'elite_four', 58, 3, 'Ghost-type specialist. Third of the Elite Four.'
FROM public.routes r
WHERE r.slug = 'indigo-plateau' AND r.game_id = 'b2c3d4e5-f6a7-8901-bcde-f12345678901';

INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability)
SELECT t.id, e.dex_id, e.lvl, e.slot, e.moves::jsonb, e.abil
FROM public.trainers t
JOIN public.routes r ON t.route_id = r.id,
(VALUES
  (94,  54, 1, '["Shadow Punch", "Confuse Ray", "Toxic", "Double Team"]', 'Levitate'),
  (42,  54, 2, '["Confuse Ray", "Air Cutter", "Poison Fang", "Bite"]', 'Inner Focus'),
  (93,  53, 3, '["Shadow Ball", "Hypnosis", "Dream Eater", "Mean Look"]', 'Levitate'),
  (24,  56, 4, '["Sludge Bomb", "Screech", "Iron Tail", "Bite"]', 'Intimidate'),
  (94,  58, 5, '["Shadow Ball", "Sludge Bomb", "Hypnosis", "Nightmare"]', 'Levitate')
) AS e(dex_id, lvl, slot, moves, abil)
WHERE r.slug = 'indigo-plateau' AND t.name = 'Agatha'
AND r.game_id = 'b2c3d4e5-f6a7-8901-bcde-f12345678901';

-- Elite Four Lance
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
SELECT r.id, 'Lance', 'Elite Four', true, 'elite_four', 60, 4, 'Dragon-type specialist. Fourth of the Elite Four.'
FROM public.routes r
WHERE r.slug = 'indigo-plateau' AND r.game_id = 'b2c3d4e5-f6a7-8901-bcde-f12345678901';

INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability)
SELECT t.id, e.dex_id, e.lvl, e.slot, e.moves::jsonb, e.abil
FROM public.trainers t
JOIN public.routes r ON t.route_id = r.id,
(VALUES
  (130, 56, 1, '["Hyper Beam", "Dragon Rage", "Twister", "Bite"]', 'Intimidate'),
  (148, 54, 2, '["Hyper Beam", "Dragon Rage", "Outrage", "Thunder Wave"]', 'Shed Skin'),
  (148, 54, 3, '["Hyper Beam", "Dragon Rage", "Outrage", "Safeguard"]', 'Shed Skin'),
  (142, 58, 4, '["Hyper Beam", "Ancient Power", "Wing Attack", "Scary Face"]', 'Rock Head'),
  (149, 60, 5, '["Hyper Beam", "Outrage", "Wing Attack", "Safeguard"]', 'Inner Focus')
) AS e(dex_id, lvl, slot, moves, abil)
WHERE r.slug = 'indigo-plateau' AND t.name = 'Lance'
AND r.game_id = 'b2c3d4e5-f6a7-8901-bcde-f12345678901';

-- Champion Blue/Gary
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
SELECT r.id, 'Blue', 'Champion', true, 'champion', 61, 5, 'Champion''s team varies by starter. This is the Squirtle starter version.'
FROM public.routes r
WHERE r.slug = 'indigo-plateau' AND r.game_id = 'b2c3d4e5-f6a7-8901-bcde-f12345678901';

INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability)
SELECT t.id, e.dex_id, e.lvl, e.slot, e.moves::jsonb, e.abil
FROM public.trainers t
JOIN public.routes r ON t.route_id = r.id,
(VALUES
  (18,  59, 1, '["Aerial Ace", "Feather Dance", "Sand Attack", "Whirlwind"]', 'Keen Eye'),
  (65,  57, 2, '["Psychic", "Future Sight", "Reflect", "Calm Mind"]', 'Synchronize'),
  (112, 59, 3, '["Earthquake", "Take Down", "Rock Tomb", "Scary Face"]', 'Lightning Rod'),
  (130, 58, 4, '["Hyper Beam", "Dragon Dance", "Earthquake", "Thrash"]', 'Intimidate'),
  (59,  59, 5, '["Fire Blast", "ExtremeSpeed", "Bite", "Roar"]', 'Intimidate'),
  (103, 61, 6, '["Giga Drain", "Sleep Powder", "Egg Bomb", "Light Screen"]', 'Chlorophyll')
) AS e(dex_id, lvl, slot, moves, abil)
WHERE r.slug = 'indigo-plateau' AND t.name = 'Blue'
AND r.game_id = 'b2c3d4e5-f6a7-8901-bcde-f12345678901';


-- ===========================================
-- SECTION 8: ROUTE TRAINERS (NON-BOSS)
-- ===========================================

-- Route 24 trainers (Nugget Bridge)
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
SELECT r.id, t.name, t.class, false, t.ord
FROM public.routes r,
(VALUES
  ('Cale',    'Bug Catcher',  1),
  ('Ali',     'Youngster',    2),
  ('Timmy',   'Youngster',    3),
  ('Reli',    'Lass',         4),
  ('Ethan',   'Camper',       5),
  ('Rocket Grunt', 'Team Rocket Grunt', 6)
) AS t(name, class, ord)
WHERE r.slug = 'route-24' AND r.game_id = 'b2c3d4e5-f6a7-8901-bcde-f12345678901';

-- Route 25 trainers
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
SELECT r.id, t.name, t.class, false, t.ord
FROM public.routes r,
(VALUES
  ('Wayne',   'Youngster',    1),
  ('Haley',   'Lass',         2),
  ('Kevin',   'Camper',       3),
  ('Becky',   'Picnicker',    4)
) AS t(name, class, ord)
WHERE r.slug = 'route-25' AND r.game_id = 'b2c3d4e5-f6a7-8901-bcde-f12345678901';

-- Route 6 trainers
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
SELECT r.id, t.name, t.class, false, t.ord
FROM public.routes r,
(VALUES
  ('Bridget', 'Lass',         1),
  ('Ricky',   'Bug Catcher',  2),
  ('Jeff',    'Camper',       3),
  ('Elaine',  'Picnicker',    4)
) AS t(name, class, ord)
WHERE r.slug = 'route-6' AND r.game_id = 'b2c3d4e5-f6a7-8901-bcde-f12345678901';

-- Route 11 trainers
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
SELECT r.id, t.name, t.class, false, t.ord
FROM public.routes r,
(VALUES
  ('Eddie',   'Gambler',      1),
  ('Yasu',    'Engineer',     2),
  ('Dave',    'Gambler',      3),
  ('Terry',   'Youngster',    4)
) AS t(name, class, ord)
WHERE r.slug = 'route-11' AND r.game_id = 'b2c3d4e5-f6a7-8901-bcde-f12345678901';

-- Route 9 trainers
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
SELECT r.id, t.name, t.class, false, t.ord
FROM public.routes r,
(VALUES
  ('Chris',   'Hiker',        1),
  ('Brice',   'Bug Catcher',  2),
  ('Axle',    'Camper',       3),
  ('Leah',    'Picnicker',    4)
) AS t(name, class, ord)
WHERE r.slug = 'route-9' AND r.game_id = 'b2c3d4e5-f6a7-8901-bcde-f12345678901';

-- Rock Tunnel trainers
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
SELECT r.id, t.name, t.class, false, t.ord
FROM public.routes r,
(VALUES
  ('Lenny',   'Hiker',        1),
  ('Oliver',  'Hiker',        2),
  ('Lucas',   'Hiker',        3),
  ('Leah',    'Picnicker',    4),
  ('Dana',    'Picnicker',    5),
  ('Dudley',  'PokeManiac',   6),
  ('Allen',   'Hiker',        7)
) AS t(name, class, ord)
WHERE r.slug = 'rock-tunnel' AND r.game_id = 'b2c3d4e5-f6a7-8901-bcde-f12345678901';

-- Route 8 trainers
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
SELECT r.id, t.name, t.class, false, t.ord
FROM public.routes r,
(VALUES
  ('Rich',    'Gambler',      1),
  ('Paige',   'Super Nerd',   2),
  ('Lola',    'Lass',         3),
  ('Andrea',  'Lass',         4)
) AS t(name, class, ord)
WHERE r.slug = 'route-8' AND r.game_id = 'b2c3d4e5-f6a7-8901-bcde-f12345678901';

-- Route 17 (Cycling Road) trainers
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
SELECT r.id, t.name, t.class, false, t.ord
FROM public.routes r,
(VALUES
  ('William', 'Cue Ball',     1),
  ('Lao',     'Biker',        2),
  ('Isaac',   'Cue Ball',     3),
  ('Virgil',  'Biker',        4)
) AS t(name, class, ord)
WHERE r.slug = 'route-17' AND r.game_id = 'b2c3d4e5-f6a7-8901-bcde-f12345678901';

-- Route 12 trainers
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
SELECT r.id, t.name, t.class, false, t.ord
FROM public.routes r,
(VALUES
  ('Andrew',  'Fisherman',    1),
  ('Arnold',  'Fisherman',    2),
  ('Bernie',  'Rocker',       3),
  ('Joey',    'Youngster',    4)
) AS t(name, class, ord)
WHERE r.slug = 'route-12' AND r.game_id = 'b2c3d4e5-f6a7-8901-bcde-f12345678901';

-- Route 13 trainers
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
SELECT r.id, t.name, t.class, false, t.ord
FROM public.routes r,
(VALUES
  ('Shannon', 'Picnicker',    1),
  ('Robert',  'Bird Keeper',  2),
  ('Gwen',    'Beauty',       3),
  ('Dawson',  'Youngster',    4)
) AS t(name, class, ord)
WHERE r.slug = 'route-13' AND r.game_id = 'b2c3d4e5-f6a7-8901-bcde-f12345678901';

-- Route 14 trainers
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
SELECT r.id, t.name, t.class, false, t.ord
FROM public.routes r,
(VALUES
  ('Mitch',   'Bird Keeper',  1),
  ('Beck',    'Bird Keeper',  2),
  ('Gerald',  'Biker',        3),
  ('Connie',  'Picnicker',    4)
) AS t(name, class, ord)
WHERE r.slug = 'route-14' AND r.game_id = 'b2c3d4e5-f6a7-8901-bcde-f12345678901';

-- Route 15 trainers
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
SELECT r.id, t.name, t.class, false, t.ord
FROM public.routes r,
(VALUES
  ('Chester', 'Bird Keeper',  1),
  ('Becky',   'Picnicker',    2),
  ('Charlie', 'Biker',        3),
  ('Kindra',  'Beauty',       4)
) AS t(name, class, ord)
WHERE r.slug = 'route-15' AND r.game_id = 'b2c3d4e5-f6a7-8901-bcde-f12345678901';

-- Route 19 trainers
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
SELECT r.id, t.name, t.class, false, t.ord
FROM public.routes r,
(VALUES
  ('Richard', 'Swimmer',      1),
  ('Reece',   'Swimmer',      2),
  ('Alice',   'Swimmer',      3)
) AS t(name, class, ord)
WHERE r.slug = 'route-19' AND r.game_id = 'b2c3d4e5-f6a7-8901-bcde-f12345678901';

-- Route 20 trainers
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
SELECT r.id, t.name, t.class, false, t.ord
FROM public.routes r,
(VALUES
  ('Barry',   'Swimmer',      1),
  ('Nora',    'Swimmer',      2),
  ('Darrin',  'Swimmer',      3)
) AS t(name, class, ord)
WHERE r.slug = 'route-20' AND r.game_id = 'b2c3d4e5-f6a7-8901-bcde-f12345678901';

-- Route 21 trainers
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
SELECT r.id, t.name, t.class, false, t.ord
FROM public.routes r,
(VALUES
  ('Jack',    'Fisherman',    1),
  ('Spencer', 'Swimmer',      2)
) AS t(name, class, ord)
WHERE r.slug = 'route-21' AND r.game_id = 'b2c3d4e5-f6a7-8901-bcde-f12345678901';

-- Pokemon Mansion trainers
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
SELECT r.id, t.name, t.class, false, t.ord
FROM public.routes r,
(VALUES
  ('Marc',    'Burglar',      1),
  ('Arnie',   'Burglar',      2),
  ('Lewis',   'Scientist',    3),
  ('Beau',    'Scientist',    4)
) AS t(name, class, ord)
WHERE r.slug = 'pokemon-mansion' AND r.game_id = 'b2c3d4e5-f6a7-8901-bcde-f12345678901';

-- Victory Road trainers
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
SELECT r.id, t.name, t.class, false, t.ord
FROM public.routes r,
(VALUES
  ('Naomi',   'Cooltrainer',  1),
  ('Rolando', 'Cooltrainer',  2),
  ('George',  'Cooltrainer',  3),
  ('Colby',   'Cooltrainer',  4),
  ('Caroline','Cooltrainer',  5),
  ('Gilbert', 'Cooltrainer',  6)
) AS t(name, class, ord)
WHERE r.slug = 'victory-road' AND r.game_id = 'b2c3d4e5-f6a7-8901-bcde-f12345678901';


-- ===========================================
-- SECTION 9: KEY ITEMS BY LOCATION
-- ===========================================

-- Vermilion City items
INSERT INTO public.route_items (route_id, item_name, item_category, description, location_hint, is_hidden)
SELECT r.id, i.name, i.cat, i.descr, i.hint, i.hidden
FROM public.routes r,
(VALUES
  ('Old Rod',     'key_item', 'Fish for Pokemon in water', 'Fishing Guru house near port', false),
  ('Bike Voucher','key_item', 'Exchange at Cerulean Bike Shop', 'Pokemon Fan Club chairman', false),
  ('HM01 Cut',   'hm',       'Cut down small trees', 'SS Anne - Captain after curing seasickness', false)
) AS i(name, cat, descr, hint, hidden)
WHERE r.slug = 'vermilion-city' AND r.game_id = 'b2c3d4e5-f6a7-8901-bcde-f12345678901';

-- Lavender Town items
INSERT INTO public.route_items (route_id, item_name, item_category, description, location_hint, is_hidden)
SELECT r.id, i.name, i.cat, i.descr, i.hint, i.hidden
FROM public.routes r,
(VALUES
  ('Poke Flute', 'key_item', 'Wakes sleeping Snorlax', 'Rescue Mr. Fuji in Pokemon Tower', false)
) AS i(name, cat, descr, hint, hidden)
WHERE r.slug = 'lavender-town' AND r.game_id = 'b2c3d4e5-f6a7-8901-bcde-f12345678901';

-- Pokemon Tower items
INSERT INTO public.route_items (route_id, item_name, item_category, description, location_hint, is_hidden)
SELECT r.id, i.name, i.cat, i.descr, i.hint, i.hidden
FROM public.routes r,
(VALUES
  ('Cleanse Tag',   'hold_item', 'Reduces wild encounters when held', 'Given by Mr. Fuji', false),
  ('Elixir',        'medicine',  'Restores 10 PP to all moves', 'Hidden on 5F', true),
  ('Rare Candy',    'medicine',  'Raises Pokemon level by 1', 'Hidden on 3F', true)
) AS i(name, cat, descr, hint, hidden)
WHERE r.slug = 'pokemon-tower' AND r.game_id = 'b2c3d4e5-f6a7-8901-bcde-f12345678901';

-- Celadon City items
INSERT INTO public.route_items (route_id, item_name, item_category, description, location_hint, is_hidden)
SELECT r.id, i.name, i.cat, i.descr, i.hint, i.hidden
FROM public.routes r,
(VALUES
  ('Eevee',       'gift_pokemon','Obtain Eevee from building rooftop', 'Celadon Condominiums rooftop (back entrance)', false),
  ('TM21 Frustration','tm',     'Normal-type move', 'Dept. Store rooftop - unhappy Pokemon', false),
  ('TM27 Return',     'tm',     'Normal-type move', 'Dept. Store rooftop - happy Pokemon', false),
  ('Coin Case',       'key_item','Hold Game Corner coins', 'Diner - man at counter', false),
  ('TM24 Thunderbolt','tm',     'Electric-type move', 'Game Corner prize (4000 coins)', false),
  ('TM13 Ice Beam',   'tm',     'Ice-type move', 'Dept. Store rooftop 4F (5500)', false),
  ('TM35 Flamethrower','tm',    'Fire-type move', 'Game Corner prize (4000 coins)', false)
) AS i(name, cat, descr, hint, hidden)
WHERE r.slug = 'celadon-city' AND r.game_id = 'b2c3d4e5-f6a7-8901-bcde-f12345678901';

-- Team Rocket Hideout items
INSERT INTO public.route_items (route_id, item_name, item_category, description, location_hint, is_hidden)
SELECT r.id, i.name, i.cat, i.descr, i.hint, i.hidden
FROM public.routes r,
(VALUES
  ('Silph Scope',  'key_item', 'Identify ghost Pokemon in Pokemon Tower', 'Defeat Giovanni on B4F', false),
  ('Lift Key',     'key_item', 'Activates the elevator', 'B4F - Rocket Grunt drops it', false),
  ('TM12 Taunt',   'tm',       'Dark-type move', 'B2F', false),
  ('Rare Candy',   'medicine',  'Raises Pokemon level by 1', 'B3F corner', false)
) AS i(name, cat, descr, hint, hidden)
WHERE r.slug = 'team-rocket-hideout' AND r.game_id = 'b2c3d4e5-f6a7-8901-bcde-f12345678901';

-- Route 16 items
INSERT INTO public.route_items (route_id, item_name, item_category, description, location_hint, is_hidden)
SELECT r.id, i.name, i.cat, i.descr, i.hint, i.hidden
FROM public.routes r,
(VALUES
  ('HM02 Fly',    'hm',        'Fly to visited cities', 'House on Route 16 (Cut required)', false)
) AS i(name, cat, descr, hint, hidden)
WHERE r.slug = 'route-16' AND r.game_id = 'b2c3d4e5-f6a7-8901-bcde-f12345678901';

-- Fuchsia City items
INSERT INTO public.route_items (route_id, item_name, item_category, description, location_hint, is_hidden)
SELECT r.id, i.name, i.cat, i.descr, i.hint, i.hidden
FROM public.routes r,
(VALUES
  ('Good Rod',     'key_item',  'Fish for better Pokemon', 'Fishing Guru house east of city', false),
  ('HM03 Surf',   'hm',        'Surf across water', 'Safari Zone secret house (end of Zone)', false),
  ('HM04 Strength','hm',       'Push large boulders', 'Safari Zone warden (bring Gold Teeth)', false)
) AS i(name, cat, descr, hint, hidden)
WHERE r.slug = 'fuchsia-city' AND r.game_id = 'b2c3d4e5-f6a7-8901-bcde-f12345678901';

-- Safari Zone items
INSERT INTO public.route_items (route_id, item_name, item_category, description, location_hint, is_hidden)
SELECT r.id, i.name, i.cat, i.descr, i.hint, i.hidden
FROM public.routes r,
(VALUES
  ('Gold Teeth',   'key_item',  'Return to Safari Zone warden for HM04', 'Area 3 - on the ground', false),
  ('TM11 Sunny Day','tm',       'Fire-type weather move', 'Deep in Zone Area 2', false),
  ('Max Potion',   'medicine',  'Fully restores one Pokemon HP', 'Area 2', false),
  ('Protein',      'vitamin',   'Raises Attack EVs', 'Area 1 hidden', true)
) AS i(name, cat, descr, hint, hidden)
WHERE r.slug = 'safari-zone' AND r.game_id = 'b2c3d4e5-f6a7-8901-bcde-f12345678901';

-- Route 12 items
INSERT INTO public.route_items (route_id, item_name, item_category, description, location_hint, is_hidden)
SELECT r.id, i.name, i.cat, i.descr, i.hint, i.hidden
FROM public.routes r,
(VALUES
  ('Super Rod',    'key_item',  'Fish for the best Pokemon', 'Fishing Guru house on Route 12', false),
  ('TM36 Sludge Bomb','tm',    'Poison-type move', 'Route 12 item ball', false)
) AS i(name, cat, descr, hint, hidden)
WHERE r.slug = 'route-12' AND r.game_id = 'b2c3d4e5-f6a7-8901-bcde-f12345678901';

-- Saffron City items
INSERT INTO public.route_items (route_id, item_name, item_category, description, location_hint, is_hidden)
SELECT r.id, i.name, i.cat, i.descr, i.hint, i.hidden
FROM public.routes r,
(VALUES
  ('TM29 Psychic',   'tm',     'Psychic-type move', 'Mr. Psychic house', false),
  ('Fighting Dojo Pokemon','gift_pokemon','Choose Hitmonlee or Hitmonchan', 'Fighting Dojo - defeat all trainers', false)
) AS i(name, cat, descr, hint, hidden)
WHERE r.slug = 'saffron-city' AND r.game_id = 'b2c3d4e5-f6a7-8901-bcde-f12345678901';

-- Silph Co. items
INSERT INTO public.route_items (route_id, item_name, item_category, description, location_hint, is_hidden)
SELECT r.id, i.name, i.cat, i.descr, i.hint, i.hidden
FROM public.routes r,
(VALUES
  ('Lapras',         'gift_pokemon','Lv25 Lapras', 'Employee on 7F gives it to you', false),
  ('Master Ball',    'ball',        'Never fails to catch', 'President gives it after defeating Giovanni', false),
  ('Card Key',       'key_item',    'Opens locked doors in Silph Co.', '5F - found on floor', false),
  ('TM01 Focus Punch','tm',        'Fighting-type move', '5F item room', false)
) AS i(name, cat, descr, hint, hidden)
WHERE r.slug = 'silph-co' AND r.game_id = 'b2c3d4e5-f6a7-8901-bcde-f12345678901';

-- Seafoam Islands items
INSERT INTO public.route_items (route_id, item_name, item_category, description, location_hint, is_hidden)
SELECT r.id, i.name, i.cat, i.descr, i.hint, i.hidden
FROM public.routes r,
(VALUES
  ('Articuno',       'legendary', 'Lv50 Legendary Ice/Flying', 'Bottom floor after solving boulder puzzle', false),
  ('Big Pearl',      'valuable',  'Sell for high price', 'B3F hidden', true),
  ('Ice Heal',       'medicine',  'Cures Freeze status', 'B1F item ball', false)
) AS i(name, cat, descr, hint, hidden)
WHERE r.slug = 'seafoam-islands' AND r.game_id = 'b2c3d4e5-f6a7-8901-bcde-f12345678901';

-- Cinnabar Island items
INSERT INTO public.route_items (route_id, item_name, item_category, description, location_hint, is_hidden)
SELECT r.id, i.name, i.cat, i.descr, i.hint, i.hidden
FROM public.routes r,
(VALUES
  ('Fossil Revival',  'special', 'Revive Helix/Dome/Old Amber fossils', 'Pokemon Lab - Research room', false),
  ('Secret Key',      'key_item','Unlocks Cinnabar Gym', 'Pokemon Mansion B1F', false)
) AS i(name, cat, descr, hint, hidden)
WHERE r.slug = 'cinnabar-island' AND r.game_id = 'b2c3d4e5-f6a7-8901-bcde-f12345678901';

-- Pokemon Mansion items
INSERT INTO public.route_items (route_id, item_name, item_category, description, location_hint, is_hidden)
SELECT r.id, i.name, i.cat, i.descr, i.hint, i.hidden
FROM public.routes r,
(VALUES
  ('Secret Key',       'key_item','Unlocks Cinnabar Gym', 'B1F - accessible via statue switches', false),
  ('TM14 Blizzard',   'tm',      'Ice-type move', '1F item ball', false),
  ('Rare Candy',       'medicine','Raises Pokemon level by 1', '3F hidden', true),
  ('Calcium',          'vitamin', 'Raises Sp. Atk EVs', 'B1F', false)
) AS i(name, cat, descr, hint, hidden)
WHERE r.slug = 'pokemon-mansion' AND r.game_id = 'b2c3d4e5-f6a7-8901-bcde-f12345678901';

-- Rock Tunnel items
INSERT INTO public.route_items (route_id, item_name, item_category, description, location_hint, is_hidden)
SELECT r.id, i.name, i.cat, i.descr, i.hint, i.hidden
FROM public.routes r,
(VALUES
  ('Revive',         'medicine',  'Revives fainted Pokemon to half HP', 'B1F', false),
  ('Escape Rope',    'escape',    'Escape from caves instantly', '1F item ball', false),
  ('Max Ether',      'medicine',  'Fully restores PP of one move', 'B1F hidden', true)
) AS i(name, cat, descr, hint, hidden)
WHERE r.slug = 'rock-tunnel' AND r.game_id = 'b2c3d4e5-f6a7-8901-bcde-f12345678901';

-- Route 25 items
INSERT INTO public.route_items (route_id, item_name, item_category, description, location_hint, is_hidden)
SELECT r.id, i.name, i.cat, i.descr, i.hint, i.hidden
FROM public.routes r,
(VALUES
  ('S.S. Ticket', 'key_item', 'Board the S.S. Anne in Vermilion City', 'Bill''s house - after helping Bill', false)
) AS i(name, cat, descr, hint, hidden)
WHERE r.slug = 'route-25' AND r.game_id = 'b2c3d4e5-f6a7-8901-bcde-f12345678901';

-- Route 24 items
INSERT INTO public.route_items (route_id, item_name, item_category, description, location_hint, is_hidden)
SELECT r.id, i.name, i.cat, i.descr, i.hint, i.hidden
FROM public.routes r,
(VALUES
  ('Nugget', 'valuable', 'Sell for 5000 Poke Dollars', 'Reward for defeating all 5 Nugget Bridge trainers', false)
) AS i(name, cat, descr, hint, hidden)
WHERE r.slug = 'route-24' AND r.game_id = 'b2c3d4e5-f6a7-8901-bcde-f12345678901';

-- Victory Road items
INSERT INTO public.route_items (route_id, item_name, item_category, description, location_hint, is_hidden)
SELECT r.id, i.name, i.cat, i.descr, i.hint, i.hidden
FROM public.routes r,
(VALUES
  ('TM02 Dragon Claw','tm',     'Dragon-type move', '2F item ball', false),
  ('TM37 Sandstorm',  'tm',     'Rock-type weather move', '3F', false),
  ('Full Heal',        'medicine','Cures all status conditions', '1F', false),
  ('Max Revive',       'medicine','Fully revives fainted Pokemon', '3F hidden', true),
  ('Rare Candy',       'medicine','Raises Pokemon level by 1', '2F hidden', true)
) AS i(name, cat, descr, hint, hidden)
WHERE r.slug = 'victory-road' AND r.game_id = 'b2c3d4e5-f6a7-8901-bcde-f12345678901';

-- Indigo Plateau items
INSERT INTO public.route_items (route_id, item_name, item_category, description, location_hint, is_hidden)
SELECT r.id, i.name, i.cat, i.descr, i.hint, i.hidden
FROM public.routes r,
(VALUES
  ('Poke Mart (Full)','shop', 'Full Restore, Max Potion, Revive, Full Heal available', 'Poke Mart in lobby', false)
) AS i(name, cat, descr, hint, hidden)
WHERE r.slug = 'indigo-plateau' AND r.game_id = 'b2c3d4e5-f6a7-8901-bcde-f12345678901';


-- ===========================================
-- SECTION 10: UPDATE TOTAL ROUTES COUNT
-- ===========================================

UPDATE public.games
SET total_routes = (
  SELECT COUNT(*)
  FROM public.routes
  WHERE game_id = 'b2c3d4e5-f6a7-8901-bcde-f12345678901'
)
WHERE id = 'b2c3d4e5-f6a7-8901-bcde-f12345678901';
