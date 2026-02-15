-- ===========================================
-- SAMPLE SEED DATA: Pokemon Emerald
-- ===========================================

-- Insert game
INSERT INTO public.games (id, slug, name, generation, region, is_romhack, total_routes, description, sprite_url)
VALUES (
  'a1b2c3d4-e5f6-7890-abcd-ef1234567890',
  'pokemon-emerald',
  'Pokemon Emerald',
  3,
  'Hoenn',
  false,
  34,
  'The definitive Gen 3 experience set in the Hoenn region.',
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/384.png'
);

-- Insert routes (first 15 for demo)
INSERT INTO public.routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items) VALUES
('a1b2c3d4-e5f6-7890-abcd-ef1234567890', 'Littleroot Town', 'littleroot-town', 1, 'city', true, false, false),
('a1b2c3d4-e5f6-7890-abcd-ef1234567890', 'Route 101', 'route-101', 2, 'route', true, false, false),
('a1b2c3d4-e5f6-7890-abcd-ef1234567890', 'Oldale Town', 'oldale-town', 3, 'city', false, false, true),
('a1b2c3d4-e5f6-7890-abcd-ef1234567890', 'Route 103', 'route-103', 4, 'route', true, true, false),
('a1b2c3d4-e5f6-7890-abcd-ef1234567890', 'Route 102', 'route-102', 5, 'route', true, true, true),
('a1b2c3d4-e5f6-7890-abcd-ef1234567890', 'Petalburg City', 'petalburg-city', 6, 'city', false, false, true),
('a1b2c3d4-e5f6-7890-abcd-ef1234567890', 'Route 104 (South)', 'route-104-south', 7, 'route', true, true, true),
('a1b2c3d4-e5f6-7890-abcd-ef1234567890', 'Petalburg Woods', 'petalburg-woods', 8, 'cave', true, true, true),
('a1b2c3d4-e5f6-7890-abcd-ef1234567890', 'Route 104 (North)', 'route-104-north', 9, 'route', true, true, true),
('a1b2c3d4-e5f6-7890-abcd-ef1234567890', 'Rustboro City', 'rustboro-city', 10, 'city', false, true, true),
('a1b2c3d4-e5f6-7890-abcd-ef1234567890', 'Route 116', 'route-116', 11, 'route', true, true, true),
('a1b2c3d4-e5f6-7890-abcd-ef1234567890', 'Rusturf Tunnel', 'rusturf-tunnel', 12, 'cave', true, false, true),
('a1b2c3d4-e5f6-7890-abcd-ef1234567890', 'Route 105', 'route-105', 13, 'water', true, true, false),
('a1b2c3d4-e5f6-7890-abcd-ef1234567890', 'Dewford Town', 'dewford-town', 14, 'city', false, true, true),
('a1b2c3d4-e5f6-7890-abcd-ef1234567890', 'Granite Cave', 'granite-cave', 15, 'cave', true, false, true);

-- NOTE: Starter encounters are added by apply-all-migrations.sql

-- Insert encounters for Route 101
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max)
SELECT r.id, e.dex_id, e.method, e.rate, e.lmin, e.lmax
FROM public.routes r,
(VALUES
  (263, 'walking', 45.00, 2, 3),  -- Zigzagoon
  (265, 'walking', 45.00, 2, 3),  -- Wurmple
  (261, 'walking', 10.00, 2, 3)   -- Poochyena
) AS e(dex_id, method, rate, lmin, lmax)
WHERE r.slug = 'route-101' AND r.game_id = 'a1b2c3d4-e5f6-7890-abcd-ef1234567890';

-- Insert encounters for Route 102
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max)
SELECT r.id, e.dex_id, e.method, e.rate, e.lmin, e.lmax
FROM public.routes r,
(VALUES
  (263, 'walking', 30.00, 3, 4),  -- Zigzagoon
  (265, 'walking', 20.00, 3, 4),  -- Wurmple
  (261, 'walking', 20.00, 3, 4),  -- Poochyena
  (280, 'walking', 10.00, 3, 4),  -- Ralts
  (270, 'walking', 15.00, 3, 4),  -- Lotad
  (273, 'walking', 5.00, 3, 4)    -- Seedot
) AS e(dex_id, method, rate, lmin, lmax)
WHERE r.slug = 'route-102' AND r.game_id = 'a1b2c3d4-e5f6-7890-abcd-ef1234567890';

-- Insert encounters for Route 103
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max)
SELECT r.id, e.dex_id, e.method, e.rate, e.lmin, e.lmax
FROM public.routes r,
(VALUES
  (263, 'walking', 30.00, 2, 3),  -- Zigzagoon
  (261, 'walking', 30.00, 2, 3),  -- Poochyena
  (278, 'walking', 30.00, 2, 3),  -- Wingull
  (183, 'surfing', 60.00, 5, 35), -- Marill
  (72,  'surfing', 35.00, 5, 35), -- Tentacool
  (129, 'fishing_old', 70.00, 5, 10), -- Magikarp
  (72,  'fishing_old', 30.00, 5, 10),  -- Tentacool
  (319, 'fishing_super', 40.00, 25, 30) -- Sharpedo
) AS e(dex_id, method, rate, lmin, lmax)
WHERE r.slug = 'route-103' AND r.game_id = 'a1b2c3d4-e5f6-7890-abcd-ef1234567890';

-- Insert encounters for Petalburg Woods
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max)
SELECT r.id, e.dex_id, e.method, e.rate, e.lmin, e.lmax
FROM public.routes r,
(VALUES
  (265, 'walking', 25.00, 5, 6),  -- Wurmple
  (285, 'walking', 15.00, 5, 6),  -- Shroomish
  (263, 'walking', 20.00, 5, 6),  -- Zigzagoon
  (266, 'walking', 10.00, 5, 6),  -- Silcoon
  (268, 'walking', 10.00, 5, 6),  -- Cascoon
  (276, 'walking', 10.00, 5, 6),  -- Taillow
  (290, 'walking', 5.00, 5, 6),   -- Nincada
  (288, 'walking', 5.00, 5, 6)    -- Vigoroth (rare)
) AS e(dex_id, method, rate, lmin, lmax)
WHERE r.slug = 'petalburg-woods' AND r.game_id = 'a1b2c3d4-e5f6-7890-abcd-ef1234567890';

-- Insert items for Oldale Town
INSERT INTO public.route_items (route_id, item_name, item_category, description, location_hint)
SELECT r.id, i.name, i.cat, i.descr, i.hint
FROM public.routes r,
(VALUES
  ('Potion', 'medicine', 'Restores 20 HP', 'Given by NPC near Poke Mart')
) AS i(name, cat, descr, hint)
WHERE r.slug = 'oldale-town' AND r.game_id = 'a1b2c3d4-e5f6-7890-abcd-ef1234567890';

-- Insert items for Route 102
INSERT INTO public.route_items (route_id, item_name, item_category, description, location_hint, is_hidden)
SELECT r.id, i.name, i.cat, i.descr, i.hint, i.hidden
FROM public.routes r,
(VALUES
  ('Potion', 'medicine', 'Restores 20 HP', 'In the grass area', false),
  ('Oran Berry', 'berry', 'Restores 10 HP when held', 'Berry tree near entrance', false)
) AS i(name, cat, descr, hint, hidden)
WHERE r.slug = 'route-102' AND r.game_id = 'a1b2c3d4-e5f6-7890-abcd-ef1234567890';

-- Insert items for Petalburg Woods
INSERT INTO public.route_items (route_id, item_name, item_category, description, location_hint, is_hidden)
SELECT r.id, i.name, i.cat, i.descr, i.hint, i.hidden
FROM public.routes r,
(VALUES
  ('Poke Ball', 'ball', 'A basic Poke Ball', 'Near the entrance', false),
  ('Ether', 'medicine', 'Restores 10 PP to one move', 'Hidden in the moss', true),
  ('Great Ball', 'ball', 'A better Poke Ball', 'Near the Devon researcher', false),
  ('TM09 Bullet Seed', 'tm', 'Grass-type attack', 'Given after helping Devon researcher', false)
) AS i(name, cat, descr, hint, hidden)
WHERE r.slug = 'petalburg-woods' AND r.game_id = 'a1b2c3d4-e5f6-7890-abcd-ef1234567890';

-- Insert Rival battle on Route 103
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, display_order)
SELECT r.id, 'May/Brendan', 'Rival', true, 'rival', 1
FROM public.routes r
WHERE r.slug = 'route-103' AND r.game_id = 'a1b2c3d4-e5f6-7890-abcd-ef1234567890';

-- Rival's Pokemon (depends on your starter - showing Mudkip)
INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
SELECT t.id, 258, 5, 1, '["Tackle", "Growl"]'::jsonb
FROM public.trainers t
JOIN public.routes r ON t.route_id = r.id
WHERE r.slug = 'route-103' AND t.name = 'May/Brendan'
AND r.game_id = 'a1b2c3d4-e5f6-7890-abcd-ef1234567890';

-- Insert Gym Leader Roxanne
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
SELECT r.id, 'Roxanne', 'Gym Leader', true, 'gym_leader', 15, 1, 'Rock-type specialist. Stone Badge.'
FROM public.routes r
WHERE r.slug = 'rustboro-city' AND r.game_id = 'a1b2c3d4-e5f6-7890-abcd-ef1234567890';

-- Roxanne's team
INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability)
SELECT t.id, e.dex_id, e.lvl, e.slot, e.moves::jsonb, e.abil
FROM public.trainers t
JOIN public.routes r ON t.route_id = r.id,
(VALUES
  (74,  12, 1, '["Defense Curl", "Tackle", "Rock Throw"]', 'Rock Head'),
  (74,  12, 2, '["Defense Curl", "Tackle", "Rock Throw"]', 'Sturdy'),
  (299, 15, 3, '["Tackle", "Harden", "Rock Tomb"]', 'Sturdy')
) AS e(dex_id, lvl, slot, moves, abil)
WHERE r.slug = 'rustboro-city' AND t.name = 'Roxanne'
AND r.game_id = 'a1b2c3d4-e5f6-7890-abcd-ef1234567890';

-- Insert regular trainers on Route 102
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
SELECT r.id, t.name, t.class, false, t.ord
FROM public.routes r,
(VALUES
  ('Calvin', 'Youngster', 1),
  ('Allen', 'Bug Catcher', 2)
) AS t(name, class, ord)
WHERE r.slug = 'route-102' AND r.game_id = 'a1b2c3d4-e5f6-7890-abcd-ef1234567890';

-- Calvin's team
INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
SELECT t.id, 263, 5, 1, '["Tackle", "Growl"]'::jsonb
FROM public.trainers t
JOIN public.routes r ON t.route_id = r.id
WHERE t.name = 'Calvin' AND r.slug = 'route-102'
AND r.game_id = 'a1b2c3d4-e5f6-7890-abcd-ef1234567890';

-- Allen's team
INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
SELECT t.id, 265, 4, 1, '["String Shot", "Poison Sting"]'::jsonb
FROM public.trainers t
JOIN public.routes r ON t.route_id = r.id
WHERE t.name = 'Allen' AND r.slug = 'route-102'
AND r.game_id = 'a1b2c3d4-e5f6-7890-abcd-ef1234567890';

-- ===========================================
-- SAMPLE SEED DATA: Pokemon FireRed
-- ===========================================

INSERT INTO public.games (id, slug, name, generation, region, is_romhack, total_routes, description, sprite_url)
VALUES (
  'b2c3d4e5-f6a7-8901-bcde-f12345678901',
  'pokemon-firered',
  'Pokemon FireRed',
  3,
  'Kanto',
  false,
  27,
  'A faithful remake of the original Red, set in the Kanto region.',
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/6.png'
);

-- Insert Kanto routes (first 10)
INSERT INTO public.routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items) VALUES
('b2c3d4e5-f6a7-8901-bcde-f12345678901', 'Pallet Town', 'pallet-town', 1, 'city', true, false, false),
('b2c3d4e5-f6a7-8901-bcde-f12345678901', 'Route 1', 'route-1', 2, 'route', true, false, true),
('b2c3d4e5-f6a7-8901-bcde-f12345678901', 'Viridian City', 'viridian-city', 3, 'city', false, false, true),
('b2c3d4e5-f6a7-8901-bcde-f12345678901', 'Route 2', 'route-2', 4, 'route', true, false, true),
('b2c3d4e5-f6a7-8901-bcde-f12345678901', 'Viridian Forest', 'viridian-forest', 5, 'cave', true, true, true),
('b2c3d4e5-f6a7-8901-bcde-f12345678901', 'Pewter City', 'pewter-city', 6, 'city', false, true, true),
('b2c3d4e5-f6a7-8901-bcde-f12345678901', 'Route 3', 'route-3', 7, 'route', true, true, false),
('b2c3d4e5-f6a7-8901-bcde-f12345678901', 'Mt. Moon', 'mt-moon', 8, 'cave', true, true, true),
('b2c3d4e5-f6a7-8901-bcde-f12345678901', 'Route 4', 'route-4', 9, 'route', true, false, true),
('b2c3d4e5-f6a7-8901-bcde-f12345678901', 'Cerulean City', 'cerulean-city', 10, 'city', false, true, true);

-- NOTE: Starter encounters are added by apply-all-migrations.sql

-- Route 1 encounters (FireRed)
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max)
SELECT r.id, e.dex_id, e.method, e.rate, e.lmin, e.lmax
FROM public.routes r,
(VALUES
  (16,  'walking', 50.00, 2, 5),  -- Pidgey
  (19,  'walking', 50.00, 2, 4)   -- Rattata
) AS e(dex_id, method, rate, lmin, lmax)
WHERE r.slug = 'route-1' AND r.game_id = 'b2c3d4e5-f6a7-8901-bcde-f12345678901';

-- Viridian Forest encounters
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max)
SELECT r.id, e.dex_id, e.method, e.rate, e.lmin, e.lmax
FROM public.routes r,
(VALUES
  (10,  'walking', 40.00, 3, 5),  -- Caterpie
  (13,  'walking', 5.00, 4, 6),   -- Weedle
  (11,  'walking', 10.00, 4, 6),  -- Metapod
  (14,  'walking', 5.00, 4, 6),   -- Kakuna
  (25,  'walking', 5.00, 3, 5),   -- Pikachu
  (16,  'walking', 35.00, 3, 5)   -- Pidgey
) AS e(dex_id, method, rate, lmin, lmax)
WHERE r.slug = 'viridian-forest' AND r.game_id = 'b2c3d4e5-f6a7-8901-bcde-f12345678901';

-- Gym Leader Brock
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
SELECT r.id, 'Brock', 'Gym Leader', true, 'gym_leader', 14, 1, 'Rock-type specialist. Boulder Badge.'
FROM public.routes r
WHERE r.slug = 'pewter-city' AND r.game_id = 'b2c3d4e5-f6a7-8901-bcde-f12345678901';

-- Brock's team
INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves, ability)
SELECT t.id, e.dex_id, e.lvl, e.slot, e.moves::jsonb, e.abil
FROM public.trainers t
JOIN public.routes r ON t.route_id = r.id,
(VALUES
  (74,  12, 1, '["Defense Curl", "Tackle", "Rock Tomb"]', 'Rock Head'),
  (95,  14, 2, '["Tackle", "Bind", "Rock Tomb", "Harden"]', 'Rock Head')
) AS e(dex_id, lvl, slot, moves, abil)
WHERE r.slug = 'pewter-city' AND t.name = 'Brock'
AND r.game_id = 'b2c3d4e5-f6a7-8901-bcde-f12345678901';
