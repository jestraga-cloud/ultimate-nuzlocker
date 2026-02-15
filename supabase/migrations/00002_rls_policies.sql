-- ===========================================
-- ROW LEVEL SECURITY POLICIES
-- ===========================================

-- Enable RLS on all tables
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
