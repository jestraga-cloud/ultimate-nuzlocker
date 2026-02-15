-- ===========================================
-- COMBINED MIGRATION: Run this in Supabase SQL Editor
-- Applies: Game sprites, starter Pokemon
-- ===========================================
-- To run: Go to your Supabase Dashboard > SQL Editor
-- Paste this entire file and click "Run"
-- Safe to re-run (idempotent)
-- ===========================================

-- STEP 1: Set game mascot sprites
UPDATE public.games
SET sprite_url = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/384.png'
WHERE slug = 'pokemon-emerald';

UPDATE public.games
SET sprite_url = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/6.png'
WHERE slug = 'pokemon-firered';

-- STEP 2: Enable encounters on starter towns
UPDATE public.routes SET has_encounters = true
WHERE slug = 'littleroot-town' AND game_id = 'a1b2c3d4-e5f6-7890-abcd-ef1234567890';

UPDATE public.routes SET has_encounters = true
WHERE slug = 'pallet-town' AND game_id = 'b2c3d4e5-f6a7-8901-bcde-f12345678901';

-- STEP 3: Remove any existing starter encounters (in case of re-run)
DELETE FROM public.encounters
WHERE method = 'gift'
AND conditions = 'Choose one starter'
AND route_id IN (
  SELECT id FROM public.routes
  WHERE slug IN ('littleroot-town', 'pallet-town')
);

-- STEP 4: Add starter encounters - Emerald (Treecko, Torchic, Mudkip)
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions)
SELECT r.id, e.dex_id, e.method, e.rate::numeric, e.lmin, e.lmax, e.conditions
FROM public.routes r,
(VALUES
  (252, 'gift', null::numeric, 5, 5, 'Choose one starter'),
  (255, 'gift', null::numeric, 5, 5, 'Choose one starter'),
  (258, 'gift', null::numeric, 5, 5, 'Choose one starter')
) AS e(dex_id, method, rate, lmin, lmax, conditions)
WHERE r.slug = 'littleroot-town' AND r.game_id = 'a1b2c3d4-e5f6-7890-abcd-ef1234567890';

-- STEP 5: Add starter encounters - FireRed (Bulbasaur, Charmander, Squirtle)
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions)
SELECT r.id, e.dex_id, e.method, e.rate::numeric, e.lmin, e.lmax, e.conditions
FROM public.routes r,
(VALUES
  (1, 'gift', null::numeric, 5, 5, 'Choose one starter'),
  (4, 'gift', null::numeric, 5, 5, 'Choose one starter'),
  (7, 'gift', null::numeric, 5, 5, 'Choose one starter')
) AS e(dex_id, method, rate, lmin, lmax, conditions)
WHERE r.slug = 'pallet-town' AND r.game_id = 'b2c3d4e5-f6a7-8901-bcde-f12345678901';

-- DONE! Sprites and starters are now set.
-- Now run these migration files separately (they are large):
--   00003_emerald_complete.sql
--   00004_firered_complete.sql
--   00006_sacred_gold_complete.sql
--   00007_renegade_platinum_complete.sql
