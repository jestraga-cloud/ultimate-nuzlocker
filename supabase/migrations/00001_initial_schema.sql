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
