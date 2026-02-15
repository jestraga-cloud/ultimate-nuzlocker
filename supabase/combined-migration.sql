-- ===========================================
-- COMBINED MIGRATION: Schema + RLS + Seed Data
-- Paste this entire file into the Supabase SQL Editor
-- ===========================================

-- ===========================================
-- STATIC GAME DATA TABLES
-- ===========================================

CREATE TABLE public.games (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  slug TEXT UNIQUE NOT NULL,
  name TEXT NOT NULL,
  generation INTEGER,
  region TEXT,
  base_game_slug TEXT,
  is_romhack BOOLEAN NOT NULL DEFAULT false,
  sprite_url TEXT,
  total_routes INTEGER DEFAULT 0,
  description TEXT,
  created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT now()
);

CREATE TABLE public.routes (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  game_id UUID NOT NULL REFERENCES public.games(id) ON DELETE CASCADE,
  name TEXT NOT NULL,
  slug TEXT NOT NULL,
  display_order INTEGER NOT NULL,
  route_type TEXT DEFAULT 'route',
  has_encounters BOOLEAN DEFAULT true,
  has_trainers BOOLEAN DEFAULT false,
  has_items BOOLEAN DEFAULT false,
  notes TEXT,
  created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
  UNIQUE(game_id, slug)
);

CREATE TABLE public.encounters (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  route_id UUID NOT NULL REFERENCES public.routes(id) ON DELETE CASCADE,
  pokemon_national_dex_id INTEGER NOT NULL,
  method TEXT NOT NULL DEFAULT 'walking',
  encounter_rate DECIMAL(5,2),
  level_min INTEGER,
  level_max INTEGER,
  conditions TEXT,
  version_exclusive TEXT,
  created_at TIMESTAMPTZ NOT NULL DEFAULT now()
);

CREATE TABLE public.route_items (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  route_id UUID NOT NULL REFERENCES public.routes(id) ON DELETE CASCADE,
  item_name TEXT NOT NULL,
  item_category TEXT,
  description TEXT,
  location_hint TEXT,
  is_hidden BOOLEAN DEFAULT false,
  requires TEXT,
  created_at TIMESTAMPTZ NOT NULL DEFAULT now()
);

CREATE TABLE public.trainers (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  route_id UUID NOT NULL REFERENCES public.routes(id) ON DELETE CASCADE,
  name TEXT NOT NULL,
  trainer_class TEXT,
  is_boss BOOLEAN NOT NULL DEFAULT false,
  boss_type TEXT,
  level_cap INTEGER,
  display_order INTEGER DEFAULT 0,
  notes TEXT,
  created_at TIMESTAMPTZ NOT NULL DEFAULT now()
);

CREATE TABLE public.trainer_pokemon (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  trainer_id UUID NOT NULL REFERENCES public.trainers(id) ON DELETE CASCADE,
  pokemon_national_dex_id INTEGER NOT NULL,
  level INTEGER NOT NULL,
  slot_order INTEGER NOT NULL DEFAULT 1,
  moves JSONB DEFAULT '[]'::jsonb,
  ability TEXT,
  held_item TEXT,
  nature TEXT,
  evs JSONB,
  ivs JSONB,
  created_at TIMESTAMPTZ NOT NULL DEFAULT now()
);

CREATE TABLE public.pokemon_overrides (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  game_id UUID NOT NULL REFERENCES public.games(id) ON DELETE CASCADE,
  pokemon_national_dex_id INTEGER NOT NULL,
  custom_name TEXT,
  custom_types JSONB,
  custom_stats JSONB,
  custom_abilities JSONB,
  custom_evolution_chain JSONB,
  notes TEXT,
  created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
  UNIQUE(game_id, pokemon_national_dex_id)
);

-- ===========================================
-- POKEAPI CACHE TABLE
-- ===========================================

CREATE TABLE public.pokeapi_cache (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  endpoint TEXT UNIQUE NOT NULL,
  data JSONB NOT NULL,
  fetched_at TIMESTAMPTZ NOT NULL DEFAULT now(),
  expires_at TIMESTAMPTZ NOT NULL DEFAULT (now() + interval '30 days')
);

-- ===========================================
-- USER DATA TABLES
-- ===========================================

CREATE TABLE public.profiles (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  auth_user_id UUID UNIQUE NOT NULL,
  display_name TEXT,
  avatar_url TEXT,
  is_admin BOOLEAN NOT NULL DEFAULT false,
  created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT now()
);

CREATE TABLE public.adventures (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id UUID REFERENCES public.profiles(id) ON DELETE CASCADE,
  game_id UUID NOT NULL REFERENCES public.games(id),
  name TEXT NOT NULL,
  status TEXT NOT NULL DEFAULT 'active',
  local_storage_key TEXT,
  rules JSONB DEFAULT '{}'::jsonb,
  started_at TIMESTAMPTZ NOT NULL DEFAULT now(),
  completed_at TIMESTAMPTZ,
  created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT now()
);

CREATE TABLE public.catches (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  adventure_id UUID NOT NULL REFERENCES public.adventures(id) ON DELETE CASCADE,
  route_id UUID NOT NULL REFERENCES public.routes(id),
  pokemon_national_dex_id INTEGER NOT NULL,
  current_evolution_dex_id INTEGER,
  nickname TEXT,
  status TEXT NOT NULL DEFAULT 'alive',
  level INTEGER,
  nature TEXT,
  ability TEXT,
  held_item TEXT,
  notes TEXT,
  caught_at TIMESTAMPTZ NOT NULL DEFAULT now(),
  died_at TIMESTAMPTZ,
  death_details TEXT,
  created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT now()
);

CREATE TABLE public.route_progress (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  adventure_id UUID NOT NULL REFERENCES public.adventures(id) ON DELETE CASCADE,
  route_id UUID NOT NULL REFERENCES public.routes(id),
  visited BOOLEAN NOT NULL DEFAULT false,
  encounter_used BOOLEAN NOT NULL DEFAULT false,
  notes TEXT,
  visited_at TIMESTAMPTZ,
  UNIQUE(adventure_id, route_id)
);

-- ===========================================
-- INDEXES
-- ===========================================

CREATE INDEX idx_routes_game_id ON public.routes(game_id);
CREATE INDEX idx_routes_game_order ON public.routes(game_id, display_order);
CREATE INDEX idx_encounters_route_id ON public.encounters(route_id);
CREATE INDEX idx_encounters_pokemon ON public.encounters(pokemon_national_dex_id);
CREATE INDEX idx_route_items_route_id ON public.route_items(route_id);
CREATE INDEX idx_trainers_route_id ON public.trainers(route_id);
CREATE INDEX idx_trainer_pokemon_trainer_id ON public.trainer_pokemon(trainer_id);
CREATE INDEX idx_pokemon_overrides_game ON public.pokemon_overrides(game_id);
CREATE INDEX idx_pokeapi_cache_endpoint ON public.pokeapi_cache(endpoint);
CREATE INDEX idx_adventures_user_id ON public.adventures(user_id);
CREATE INDEX idx_adventures_game_id ON public.adventures(game_id);
CREATE INDEX idx_catches_adventure_id ON public.catches(adventure_id);
CREATE INDEX idx_catches_status ON public.catches(adventure_id, status);
CREATE INDEX idx_route_progress_adventure ON public.route_progress(adventure_id);
CREATE INDEX idx_route_progress_lookup ON public.route_progress(adventure_id, route_id);

-- ===========================================
-- TRIGGERS
-- ===========================================

CREATE OR REPLACE FUNCTION update_updated_at()
RETURNS TRIGGER AS $$
BEGIN
  NEW.updated_at = now();
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER games_updated_at BEFORE UPDATE ON public.games
  FOR EACH ROW EXECUTE FUNCTION update_updated_at();
CREATE TRIGGER profiles_updated_at BEFORE UPDATE ON public.profiles
  FOR EACH ROW EXECUTE FUNCTION update_updated_at();
CREATE TRIGGER adventures_updated_at BEFORE UPDATE ON public.adventures
  FOR EACH ROW EXECUTE FUNCTION update_updated_at();
CREATE TRIGGER catches_updated_at BEFORE UPDATE ON public.catches
  FOR EACH ROW EXECUTE FUNCTION update_updated_at();

-- ===========================================
-- ROW LEVEL SECURITY POLICIES
-- ===========================================

ALTER TABLE public.games ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.routes ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.encounters ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.route_items ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.trainers ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.trainer_pokemon ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.pokemon_overrides ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.pokeapi_cache ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.profiles ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.adventures ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.catches ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.route_progress ENABLE ROW LEVEL SECURITY;

-- Static game data: readable by everyone
CREATE POLICY "Anyone can read games" ON public.games FOR SELECT USING (true);
CREATE POLICY "Anyone can read routes" ON public.routes FOR SELECT USING (true);
CREATE POLICY "Anyone can read encounters" ON public.encounters FOR SELECT USING (true);
CREATE POLICY "Anyone can read route_items" ON public.route_items FOR SELECT USING (true);
CREATE POLICY "Anyone can read trainers" ON public.trainers FOR SELECT USING (true);
CREATE POLICY "Anyone can read trainer_pokemon" ON public.trainer_pokemon FOR SELECT USING (true);
CREATE POLICY "Anyone can read pokemon_overrides" ON public.pokemon_overrides FOR SELECT USING (true);
CREATE POLICY "Anyone can read pokeapi_cache" ON public.pokeapi_cache FOR SELECT USING (true);

-- Admin helper function
CREATE OR REPLACE FUNCTION public.is_admin()
RETURNS BOOLEAN AS $$
BEGIN
  RETURN EXISTS (
    SELECT 1 FROM public.profiles
    WHERE auth_user_id = auth.uid()
    AND is_admin = true
  );
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;

-- Admin write access for static data
CREATE POLICY "Admins can manage games" ON public.games FOR ALL USING (public.is_admin()) WITH CHECK (public.is_admin());
CREATE POLICY "Admins can manage routes" ON public.routes FOR ALL USING (public.is_admin()) WITH CHECK (public.is_admin());
CREATE POLICY "Admins can manage encounters" ON public.encounters FOR ALL USING (public.is_admin()) WITH CHECK (public.is_admin());
CREATE POLICY "Admins can manage route_items" ON public.route_items FOR ALL USING (public.is_admin()) WITH CHECK (public.is_admin());
CREATE POLICY "Admins can manage trainers" ON public.trainers FOR ALL USING (public.is_admin()) WITH CHECK (public.is_admin());
CREATE POLICY "Admins can manage trainer_pokemon" ON public.trainer_pokemon FOR ALL USING (public.is_admin()) WITH CHECK (public.is_admin());
CREATE POLICY "Admins can manage pokemon_overrides" ON public.pokemon_overrides FOR ALL USING (public.is_admin()) WITH CHECK (public.is_admin());
CREATE POLICY "Service can manage pokeapi_cache" ON public.pokeapi_cache FOR ALL USING (true) WITH CHECK (true);

-- User profiles
CREATE POLICY "Users can view own profile" ON public.profiles
  FOR SELECT USING (auth.uid() = auth_user_id);
CREATE POLICY "Users can update own profile" ON public.profiles
  FOR UPDATE USING (auth.uid() = auth_user_id);

-- User adventures
CREATE POLICY "Users can view own adventures" ON public.adventures
  FOR SELECT USING (
    user_id IN (SELECT id FROM public.profiles WHERE auth_user_id = auth.uid())
  );
CREATE POLICY "Users can create adventures" ON public.adventures
  FOR INSERT WITH CHECK (
    user_id IN (SELECT id FROM public.profiles WHERE auth_user_id = auth.uid())
  );
CREATE POLICY "Users can update own adventures" ON public.adventures
  FOR UPDATE USING (
    user_id IN (SELECT id FROM public.profiles WHERE auth_user_id = auth.uid())
  );
CREATE POLICY "Users can delete own adventures" ON public.adventures
  FOR DELETE USING (
    user_id IN (SELECT id FROM public.profiles WHERE auth_user_id = auth.uid())
  );

-- User catches
CREATE POLICY "Users can view own catches" ON public.catches
  FOR SELECT USING (
    adventure_id IN (
      SELECT a.id FROM public.adventures a
      JOIN public.profiles p ON a.user_id = p.id
      WHERE p.auth_user_id = auth.uid()
    )
  );
CREATE POLICY "Users can create catches" ON public.catches
  FOR INSERT WITH CHECK (
    adventure_id IN (
      SELECT a.id FROM public.adventures a
      JOIN public.profiles p ON a.user_id = p.id
      WHERE p.auth_user_id = auth.uid()
    )
  );
CREATE POLICY "Users can update own catches" ON public.catches
  FOR UPDATE USING (
    adventure_id IN (
      SELECT a.id FROM public.adventures a
      JOIN public.profiles p ON a.user_id = p.id
      WHERE p.auth_user_id = auth.uid()
    )
  );
CREATE POLICY "Users can delete own catches" ON public.catches
  FOR DELETE USING (
    adventure_id IN (
      SELECT a.id FROM public.adventures a
      JOIN public.profiles p ON a.user_id = p.id
      WHERE p.auth_user_id = auth.uid()
    )
  );

-- Route progress
CREATE POLICY "Users can view own route_progress" ON public.route_progress
  FOR SELECT USING (
    adventure_id IN (
      SELECT a.id FROM public.adventures a
      JOIN public.profiles p ON a.user_id = p.id
      WHERE p.auth_user_id = auth.uid()
    )
  );
CREATE POLICY "Users can create route_progress" ON public.route_progress
  FOR INSERT WITH CHECK (
    adventure_id IN (
      SELECT a.id FROM public.adventures a
      JOIN public.profiles p ON a.user_id = p.id
      WHERE p.auth_user_id = auth.uid()
    )
  );
CREATE POLICY "Users can update own route_progress" ON public.route_progress
  FOR UPDATE USING (
    adventure_id IN (
      SELECT a.id FROM public.adventures a
      JOIN public.profiles p ON a.user_id = p.id
      WHERE p.auth_user_id = auth.uid()
    )
  );

-- ===========================================
-- SAMPLE SEED DATA: Pokemon Emerald
-- ===========================================

INSERT INTO public.games (id, slug, name, generation, region, is_romhack, total_routes, description)
VALUES (
  'a1b2c3d4-e5f6-7890-abcd-ef1234567890',
  'pokemon-emerald',
  'Pokemon Emerald',
  3,
  'Hoenn',
  false,
  34,
  'The definitive Gen 3 experience set in the Hoenn region.'
);

INSERT INTO public.routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items) VALUES
('a1b2c3d4-e5f6-7890-abcd-ef1234567890', 'Littleroot Town', 'littleroot-town', 1, 'city', false, false, false),
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

-- Encounters for Route 101
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max)
SELECT r.id, e.dex_id, e.method, e.rate, e.lmin, e.lmax
FROM public.routes r,
(VALUES
  (263, 'walking', 45.00, 2, 3),
  (265, 'walking', 45.00, 2, 3),
  (261, 'walking', 10.00, 2, 3)
) AS e(dex_id, method, rate, lmin, lmax)
WHERE r.slug = 'route-101' AND r.game_id = 'a1b2c3d4-e5f6-7890-abcd-ef1234567890';

-- Encounters for Route 102
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max)
SELECT r.id, e.dex_id, e.method, e.rate, e.lmin, e.lmax
FROM public.routes r,
(VALUES
  (263, 'walking', 30.00, 3, 4),
  (265, 'walking', 20.00, 3, 4),
  (261, 'walking', 20.00, 3, 4),
  (280, 'walking', 10.00, 3, 4),
  (270, 'walking', 15.00, 3, 4),
  (273, 'walking', 5.00, 3, 4)
) AS e(dex_id, method, rate, lmin, lmax)
WHERE r.slug = 'route-102' AND r.game_id = 'a1b2c3d4-e5f6-7890-abcd-ef1234567890';

-- Encounters for Route 103
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max)
SELECT r.id, e.dex_id, e.method, e.rate, e.lmin, e.lmax
FROM public.routes r,
(VALUES
  (263, 'walking', 30.00, 2, 3),
  (261, 'walking', 30.00, 2, 3),
  (278, 'walking', 30.00, 2, 3),
  (183, 'surfing', 60.00, 5, 35),
  (72,  'surfing', 35.00, 5, 35),
  (129, 'fishing_old', 70.00, 5, 10),
  (72,  'fishing_old', 30.00, 5, 10),
  (319, 'fishing_super', 40.00, 25, 30)
) AS e(dex_id, method, rate, lmin, lmax)
WHERE r.slug = 'route-103' AND r.game_id = 'a1b2c3d4-e5f6-7890-abcd-ef1234567890';

-- Encounters for Petalburg Woods
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max)
SELECT r.id, e.dex_id, e.method, e.rate, e.lmin, e.lmax
FROM public.routes r,
(VALUES
  (265, 'walking', 25.00, 5, 6),
  (285, 'walking', 15.00, 5, 6),
  (263, 'walking', 20.00, 5, 6),
  (266, 'walking', 10.00, 5, 6),
  (268, 'walking', 10.00, 5, 6),
  (276, 'walking', 10.00, 5, 6),
  (290, 'walking', 5.00, 5, 6),
  (288, 'walking', 5.00, 5, 6)
) AS e(dex_id, method, rate, lmin, lmax)
WHERE r.slug = 'petalburg-woods' AND r.game_id = 'a1b2c3d4-e5f6-7890-abcd-ef1234567890';

-- Items for Oldale Town
INSERT INTO public.route_items (route_id, item_name, item_category, description, location_hint)
SELECT r.id, i.name, i.cat, i.descr, i.hint
FROM public.routes r,
(VALUES
  ('Potion', 'medicine', 'Restores 20 HP', 'Given by NPC near Poke Mart')
) AS i(name, cat, descr, hint)
WHERE r.slug = 'oldale-town' AND r.game_id = 'a1b2c3d4-e5f6-7890-abcd-ef1234567890';

-- Items for Route 102
INSERT INTO public.route_items (route_id, item_name, item_category, description, location_hint, is_hidden)
SELECT r.id, i.name, i.cat, i.descr, i.hint, i.hidden
FROM public.routes r,
(VALUES
  ('Potion', 'medicine', 'Restores 20 HP', 'In the grass area', false),
  ('Oran Berry', 'berry', 'Restores 10 HP when held', 'Berry tree near entrance', false)
) AS i(name, cat, descr, hint, hidden)
WHERE r.slug = 'route-102' AND r.game_id = 'a1b2c3d4-e5f6-7890-abcd-ef1234567890';

-- Items for Petalburg Woods
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

-- Rival battle on Route 103
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, display_order)
SELECT r.id, 'May/Brendan', 'Rival', true, 'rival', 1
FROM public.routes r
WHERE r.slug = 'route-103' AND r.game_id = 'a1b2c3d4-e5f6-7890-abcd-ef1234567890';

INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
SELECT t.id, 258, 5, 1, '["Tackle", "Growl"]'::jsonb
FROM public.trainers t
JOIN public.routes r ON t.route_id = r.id
WHERE r.slug = 'route-103' AND t.name = 'May/Brendan'
AND r.game_id = 'a1b2c3d4-e5f6-7890-abcd-ef1234567890';

-- Gym Leader Roxanne
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
SELECT r.id, 'Roxanne', 'Gym Leader', true, 'gym_leader', 15, 1, 'Rock-type specialist. Stone Badge.'
FROM public.routes r
WHERE r.slug = 'rustboro-city' AND r.game_id = 'a1b2c3d4-e5f6-7890-abcd-ef1234567890';

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

-- Regular trainers on Route 102
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, display_order)
SELECT r.id, t.name, t.class, false, t.ord
FROM public.routes r,
(VALUES
  ('Calvin', 'Youngster', 1),
  ('Allen', 'Bug Catcher', 2)
) AS t(name, class, ord)
WHERE r.slug = 'route-102' AND r.game_id = 'a1b2c3d4-e5f6-7890-abcd-ef1234567890';

INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
SELECT t.id, 263, 5, 1, '["Tackle", "Growl"]'::jsonb
FROM public.trainers t
JOIN public.routes r ON t.route_id = r.id
WHERE t.name = 'Calvin' AND r.slug = 'route-102'
AND r.game_id = 'a1b2c3d4-e5f6-7890-abcd-ef1234567890';

INSERT INTO public.trainer_pokemon (trainer_id, pokemon_national_dex_id, level, slot_order, moves)
SELECT t.id, 265, 4, 1, '["String Shot", "Poison Sting"]'::jsonb
FROM public.trainers t
JOIN public.routes r ON t.route_id = r.id
WHERE t.name = 'Allen' AND r.slug = 'route-102'
AND r.game_id = 'a1b2c3d4-e5f6-7890-abcd-ef1234567890';

-- ===========================================
-- SAMPLE SEED DATA: Pokemon FireRed
-- ===========================================

INSERT INTO public.games (id, slug, name, generation, region, is_romhack, total_routes, description)
VALUES (
  'b2c3d4e5-f6a7-8901-bcde-f12345678901',
  'pokemon-firered',
  'Pokemon FireRed',
  3,
  'Kanto',
  false,
  27,
  'A faithful remake of the original Red, set in the Kanto region.'
);

INSERT INTO public.routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items) VALUES
('b2c3d4e5-f6a7-8901-bcde-f12345678901', 'Pallet Town', 'pallet-town', 1, 'city', false, false, false),
('b2c3d4e5-f6a7-8901-bcde-f12345678901', 'Route 1', 'route-1', 2, 'route', true, false, true),
('b2c3d4e5-f6a7-8901-bcde-f12345678901', 'Viridian City', 'viridian-city', 3, 'city', false, false, true),
('b2c3d4e5-f6a7-8901-bcde-f12345678901', 'Route 2', 'route-2', 4, 'route', true, false, true),
('b2c3d4e5-f6a7-8901-bcde-f12345678901', 'Viridian Forest', 'viridian-forest', 5, 'cave', true, true, true),
('b2c3d4e5-f6a7-8901-bcde-f12345678901', 'Pewter City', 'pewter-city', 6, 'city', false, true, true),
('b2c3d4e5-f6a7-8901-bcde-f12345678901', 'Route 3', 'route-3', 7, 'route', true, true, false),
('b2c3d4e5-f6a7-8901-bcde-f12345678901', 'Mt. Moon', 'mt-moon', 8, 'cave', true, true, true),
('b2c3d4e5-f6a7-8901-bcde-f12345678901', 'Route 4', 'route-4', 9, 'route', true, false, true),
('b2c3d4e5-f6a7-8901-bcde-f12345678901', 'Cerulean City', 'cerulean-city', 10, 'city', false, true, true);

-- Route 1 encounters (FireRed)
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max)
SELECT r.id, e.dex_id, e.method, e.rate, e.lmin, e.lmax
FROM public.routes r,
(VALUES
  (16,  'walking', 50.00, 2, 5),
  (19,  'walking', 50.00, 2, 4)
) AS e(dex_id, method, rate, lmin, lmax)
WHERE r.slug = 'route-1' AND r.game_id = 'b2c3d4e5-f6a7-8901-bcde-f12345678901';

-- Viridian Forest encounters
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max)
SELECT r.id, e.dex_id, e.method, e.rate, e.lmin, e.lmax
FROM public.routes r,
(VALUES
  (10,  'walking', 40.00, 3, 5),
  (13,  'walking', 5.00, 4, 6),
  (11,  'walking', 10.00, 4, 6),
  (14,  'walking', 5.00, 4, 6),
  (25,  'walking', 5.00, 3, 5),
  (16,  'walking', 35.00, 3, 5)
) AS e(dex_id, method, rate, lmin, lmax)
WHERE r.slug = 'viridian-forest' AND r.game_id = 'b2c3d4e5-f6a7-8901-bcde-f12345678901';

-- Gym Leader Brock
INSERT INTO public.trainers (route_id, name, trainer_class, is_boss, boss_type, level_cap, display_order, notes)
SELECT r.id, 'Brock', 'Gym Leader', true, 'gym_leader', 14, 1, 'Rock-type specialist. Boulder Badge.'
FROM public.routes r
WHERE r.slug = 'pewter-city' AND r.game_id = 'b2c3d4e5-f6a7-8901-bcde-f12345678901';

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
