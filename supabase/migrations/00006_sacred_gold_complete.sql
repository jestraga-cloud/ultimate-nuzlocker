-- ===========================================
-- SACRED GOLD: COMPLETE GAME DATA
-- ROM Hack of Pokemon Heart Gold by Drayano
-- Gen 4, Johto + Kanto regions
-- ===========================================
-- Game ID: c3d4e5f6-a7b8-9012-cdef-345678901234
-- ===========================================

-- STEP 1: Insert the game
INSERT INTO public.games (id, slug, name, generation, region, base_game_slug, is_romhack, sprite_url, total_routes, description)
VALUES (
  'c3d4e5f6-a7b8-9012-cdef-345678901234',
  'sacred-gold',
  'Sacred Gold',
  4,
  'Johto',
  'pokemon-heartgold',
  true,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/250.png',
  122,
  'A ROM hack of Pokemon Heart Gold by Drayano with expanded Pokemon availability, modified stats/abilities, and new encounters across Johto and Kanto.'
);

-- ===========================================
-- STEP 2: ALL ROUTES (122 total)
-- ===========================================

INSERT INTO public.routes (game_id, name, slug, display_order, route_type, has_encounters, has_trainers, has_items, notes) VALUES
-- ---- JOHTO ----
('c3d4e5f6-a7b8-9012-cdef-345678901234', 'New Bark Town', 'new-bark-town', 1, 'city', true, false, false, 'Starter town. Choose Chikorita, Cyndaquil, or Totodile.'),
('c3d4e5f6-a7b8-9012-cdef-345678901234', 'Route 29', 'route-29', 2, 'route', true, false, false, 'Wild Levels: 3-5'),
('c3d4e5f6-a7b8-9012-cdef-345678901234', 'Route 46', 'route-46', 3, 'route', true, false, false, 'Wild Levels: 4-6'),
('c3d4e5f6-a7b8-9012-cdef-345678901234', 'Cherrygrove City', 'cherrygrove-city', 4, 'city', true, false, false, 'Surf and fishing available.'),
('c3d4e5f6-a7b8-9012-cdef-345678901234', 'Route 30', 'route-30', 5, 'route', true, false, false, 'Wild Levels: 4-6'),
('c3d4e5f6-a7b8-9012-cdef-345678901234', 'Route 31', 'route-31', 6, 'route', true, false, false, 'Wild Levels: 6-10'),
('c3d4e5f6-a7b8-9012-cdef-345678901234', 'Dark Cave (Violet Side)', 'dark-cave-violet', 7, 'cave', true, false, false, 'Wild Levels: 8-10. Rock Smash encounters.'),
('c3d4e5f6-a7b8-9012-cdef-345678901234', 'Violet City', 'violet-city', 8, 'city', true, true, false, 'Gym Leader Falkner. Flying-type specialist.'),
('c3d4e5f6-a7b8-9012-cdef-345678901234', 'Route 32', 'route-32', 9, 'route', true, false, false, 'Wild Levels: 10-12'),
('c3d4e5f6-a7b8-9012-cdef-345678901234', 'Ruins of Alph', 'ruins-of-alph', 10, 'special', true, false, false, 'Wild Levels: 26-30. Unown puzzle area.'),
('c3d4e5f6-a7b8-9012-cdef-345678901234', 'Sprout Tower 2F', 'sprout-tower-2f', 11, 'building', true, true, false, 'Wild Levels: 9-12'),
('c3d4e5f6-a7b8-9012-cdef-345678901234', 'Sprout Tower 3F', 'sprout-tower-3f', 12, 'building', true, true, false, 'Wild Levels: 10-13'),
('c3d4e5f6-a7b8-9012-cdef-345678901234', 'Union Cave 1F', 'union-cave-1f', 13, 'cave', true, false, false, 'Wild Levels: 12-15'),
('c3d4e5f6-a7b8-9012-cdef-345678901234', 'Union Cave B1F', 'union-cave-b1f', 14, 'cave', true, false, false, 'Wild Levels: 13-16. Bagon and Gible can be found here.'),
('c3d4e5f6-a7b8-9012-cdef-345678901234', 'Union Cave B2F', 'union-cave-b2f', 15, 'cave', true, false, false, 'Wild Levels: 28-30. Requires Surf.'),
('c3d4e5f6-a7b8-9012-cdef-345678901234', 'Route 33', 'route-33', 16, 'route', true, false, false, 'Wild Levels: 14-16'),
('c3d4e5f6-a7b8-9012-cdef-345678901234', 'Slowpoke Well 1F', 'slowpoke-well-1f', 17, 'cave', true, false, false, 'Wild Levels: 15-16'),
('c3d4e5f6-a7b8-9012-cdef-345678901234', 'Slowpoke Well B1F', 'slowpoke-well-b1f', 18, 'cave', true, false, false, 'Wild Levels: 28-33. Requires Surf/Strength.'),
('c3d4e5f6-a7b8-9012-cdef-345678901234', 'Ilex Forest', 'ilex-forest', 19, 'route', true, false, false, 'Wild Levels: 15-18'),
('c3d4e5f6-a7b8-9012-cdef-345678901234', 'Route 34', 'route-34', 20, 'route', true, false, false, 'Wild Levels: 15-19'),
('c3d4e5f6-a7b8-9012-cdef-345678901234', 'Route 35', 'route-35', 21, 'route', true, false, false, 'Wild Levels: 17-19'),
('c3d4e5f6-a7b8-9012-cdef-345678901234', 'National Park', 'national-park', 22, 'route', true, false, false, 'Wild Levels: 17-19. Bug Catching Contest area.'),
('c3d4e5f6-a7b8-9012-cdef-345678901234', 'Route 36', 'route-36', 23, 'route', true, false, false, 'Wild Levels: 17-19'),
('c3d4e5f6-a7b8-9012-cdef-345678901234', 'Route 37', 'route-37', 24, 'route', true, false, false, 'Wild Levels: 21-24'),
('c3d4e5f6-a7b8-9012-cdef-345678901234', 'Ecruteak City', 'ecruteak-city', 25, 'city', true, true, false, 'Gym Leader Morty. Ghost-type specialist.'),
('c3d4e5f6-a7b8-9012-cdef-345678901234', 'Burned Tower 1F', 'burned-tower-1f', 26, 'building', true, false, false, 'Wild Levels: 22-23'),
('c3d4e5f6-a7b8-9012-cdef-345678901234', 'Burned Tower B1F', 'burned-tower-b1f', 27, 'building', true, false, false, 'Wild Levels: 23-24'),
('c3d4e5f6-a7b8-9012-cdef-345678901234', 'Dark Cave (Blackthorn Side)', 'dark-cave-blackthorn', 28, 'cave', true, false, false, 'Wild Levels: 26-30'),
('c3d4e5f6-a7b8-9012-cdef-345678901234', 'Route 38', 'route-38', 29, 'route', true, false, false, 'Wild Levels: 26-27'),
('c3d4e5f6-a7b8-9012-cdef-345678901234', 'Route 39', 'route-39', 30, 'route', true, false, false, 'Wild Levels: 27-28'),
('c3d4e5f6-a7b8-9012-cdef-345678901234', 'Olivine City', 'olivine-city', 31, 'city', true, true, false, 'Gym Leader Jasmine. Steel-type specialist.'),
('c3d4e5f6-a7b8-9012-cdef-345678901234', 'Route 40', 'route-40', 32, 'water', true, false, false, 'Wild Levels: 25-35. Water route to Cianwood.'),
('c3d4e5f6-a7b8-9012-cdef-345678901234', 'Route 41', 'route-41', 33, 'water', true, false, false, 'Wild Levels: 25-35. Whirl Islands nearby.'),
('c3d4e5f6-a7b8-9012-cdef-345678901234', 'Cianwood City', 'cianwood-city', 34, 'city', true, true, false, 'Gym Leader Chuck. Fighting-type specialist.'),
('c3d4e5f6-a7b8-9012-cdef-345678901234', 'Route 47', 'route-47', 35, 'route', true, false, false, 'Wild Levels: 41-45. Requires Waterfall.'),
('c3d4e5f6-a7b8-9012-cdef-345678901234', 'Cliff Cave', 'cliff-cave', 36, 'cave', true, false, false, 'Wild Levels: 30-33'),
('c3d4e5f6-a7b8-9012-cdef-345678901234', 'Route 48', 'route-48', 37, 'route', true, false, false, 'Wild Levels: 30-33'),
('c3d4e5f6-a7b8-9012-cdef-345678901234', 'Route 42', 'route-42', 38, 'route', true, false, false, 'Wild Levels: 30-32'),
('c3d4e5f6-a7b8-9012-cdef-345678901234', 'Mt. Mortar 1F', 'mt-mortar-1f', 39, 'cave', true, false, false, 'Wild Levels: 31-34'),
('c3d4e5f6-a7b8-9012-cdef-345678901234', 'Mt. Mortar 1F-2', 'mt-mortar-1f-2', 40, 'cave', true, false, false, 'Wild Levels: 33-37'),
('c3d4e5f6-a7b8-9012-cdef-345678901234', 'Mt. Mortar 1F-3', 'mt-mortar-1f-3', 41, 'cave', true, false, false, 'Wild Levels: 41-45'),
('c3d4e5f6-a7b8-9012-cdef-345678901234', 'Mt. Mortar B1F', 'mt-mortar-b1f', 42, 'cave', true, false, false, 'Wild Levels: 33-35. Metang and Pupitar here.'),
('c3d4e5f6-a7b8-9012-cdef-345678901234', 'Route 43', 'route-43', 43, 'route', true, false, false, 'Wild Levels: 34-36'),
('c3d4e5f6-a7b8-9012-cdef-345678901234', 'Lake of Rage', 'lake-of-rage', 44, 'water', true, false, false, 'Wild Levels: 10-50. Red Gyarados event. Feebas fishing.'),
('c3d4e5f6-a7b8-9012-cdef-345678901234', 'Whirl Islands 1F', 'whirl-islands-1f', 45, 'cave', true, false, false, 'Wild Levels: 34-36'),
('c3d4e5f6-a7b8-9012-cdef-345678901234', 'Whirl Islands B1F', 'whirl-islands-b1f', 46, 'cave', true, false, false, 'Wild Levels: 35-38'),
('c3d4e5f6-a7b8-9012-cdef-345678901234', 'Whirl Islands B2F', 'whirl-islands-b2f', 47, 'cave', true, false, false, 'Wild Levels: 37-39'),
('c3d4e5f6-a7b8-9012-cdef-345678901234', 'Whirl Islands B3F', 'whirl-islands-b3f', 48, 'cave', true, false, false, 'Wild Levels: 47-49 (Sacred Gold)'),
('c3d4e5f6-a7b8-9012-cdef-345678901234', 'Route 44', 'route-44', 49, 'route', true, false, false, 'Wild Levels: 38-39'),
('c3d4e5f6-a7b8-9012-cdef-345678901234', 'Ice Path 1F', 'ice-path-1f', 50, 'cave', true, false, false, 'Wild Levels: 37-40'),
('c3d4e5f6-a7b8-9012-cdef-345678901234', 'Ice Path B1F', 'ice-path-b1f', 51, 'cave', true, false, false, 'Wild Levels: 38-41'),
('c3d4e5f6-a7b8-9012-cdef-345678901234', 'Ice Path B2F', 'ice-path-b2f', 52, 'cave', true, false, false, 'Wild Levels: 40-43'),
('c3d4e5f6-a7b8-9012-cdef-345678901234', 'Ice Path B3F', 'ice-path-b3f', 53, 'cave', true, false, false, 'Wild Levels: 42-44'),
('c3d4e5f6-a7b8-9012-cdef-345678901234', 'Blackthorn City', 'blackthorn-city', 54, 'city', true, true, false, 'Gym Leader Clair. Dragon-type specialist.'),
('c3d4e5f6-a7b8-9012-cdef-345678901234', 'Route 45', 'route-45', 55, 'route', true, false, false, 'Wild Levels: 42-45'),
('c3d4e5f6-a7b8-9012-cdef-345678901234', 'Dragons Den', 'dragons-den', 56, 'cave', true, false, false, 'Wild Levels: 10-40. Dratini fishing.'),
('c3d4e5f6-a7b8-9012-cdef-345678901234', 'Tohjo Falls', 'tohjo-falls', 57, 'cave', true, false, false, 'Wild Levels: 43-45'),
('c3d4e5f6-a7b8-9012-cdef-345678901234', 'Route 27', 'route-27', 58, 'route', true, false, false, 'Wild Levels: 42-45'),
('c3d4e5f6-a7b8-9012-cdef-345678901234', 'Route 26', 'route-26', 59, 'route', true, false, false, 'Wild Levels: 44-46'),
('c3d4e5f6-a7b8-9012-cdef-345678901234', 'Victory Road 1F', 'victory-road-1f', 60, 'cave', true, false, false, 'Wild Levels: 44-46'),
('c3d4e5f6-a7b8-9012-cdef-345678901234', 'Victory Road 2F', 'victory-road-2f', 61, 'cave', true, false, false, 'Wild Levels: 44-46'),
('c3d4e5f6-a7b8-9012-cdef-345678901234', 'Victory Road 3F', 'victory-road-3f', 62, 'cave', true, false, false, 'Wild Levels: 45-46. Rock Smash encounters.'),

-- ---- KANTO ----
('c3d4e5f6-a7b8-9012-cdef-345678901234', 'Vermilion City', 'vermilion-city', 63, 'city', true, false, false, 'Gym Leader Lt. Surge. Electric-type specialist.'),
('c3d4e5f6-a7b8-9012-cdef-345678901234', 'Digletts Cave', 'digletts-cave', 64, 'cave', true, false, false, 'Wild Levels: 15-63'),
('c3d4e5f6-a7b8-9012-cdef-345678901234', 'Route 6', 'route-6', 65, 'route', true, false, false, 'Wild Levels: 45-48'),
('c3d4e5f6-a7b8-9012-cdef-345678901234', 'Route 2 (North)', 'route-2-north', 66, 'route', true, false, false, 'Wild Levels: 45-49'),
('c3d4e5f6-a7b8-9012-cdef-345678901234', 'Route 3', 'route-3', 67, 'route', true, false, false, 'Wild Levels: 46-49'),
('c3d4e5f6-a7b8-9012-cdef-345678901234', 'Route 4', 'route-4', 68, 'route', true, false, false, 'Wild Levels: 46-50'),
('c3d4e5f6-a7b8-9012-cdef-345678901234', 'Mt. Moon 1F', 'mt-moon-1f', 69, 'cave', true, false, false, 'Wild Levels: 47-51'),
('c3d4e5f6-a7b8-9012-cdef-345678901234', 'Mt. Moon 2F', 'mt-moon-2f', 70, 'cave', true, false, false, 'Wild Levels: 48-50'),
('c3d4e5f6-a7b8-9012-cdef-345678901234', 'Mt. Moon (Outside)', 'mt-moon-outside', 71, 'special', true, false, false, 'Wild Levels: 40-50'),
('c3d4e5f6-a7b8-9012-cdef-345678901234', 'Cerulean City', 'cerulean-city', 72, 'city', true, true, false, 'Gym Leader Misty. Water-type specialist.'),
('c3d4e5f6-a7b8-9012-cdef-345678901234', 'Route 5', 'route-5', 73, 'route', true, false, false, 'Wild Levels: 47-50'),
('c3d4e5f6-a7b8-9012-cdef-345678901234', 'Route 24', 'route-24', 74, 'route', true, false, false, 'Wild Levels: 47-51'),
('c3d4e5f6-a7b8-9012-cdef-345678901234', 'Route 25', 'route-25', 75, 'route', true, false, false, 'Wild Levels: 47-52'),
('c3d4e5f6-a7b8-9012-cdef-345678901234', 'Route 9', 'route-9', 76, 'route', true, false, false, 'Wild Levels: 49-51'),
('c3d4e5f6-a7b8-9012-cdef-345678901234', 'Route 10', 'route-10', 77, 'route', true, false, false, 'Wild Levels: 47-52'),
('c3d4e5f6-a7b8-9012-cdef-345678901234', 'Rock Tunnel 1F', 'rock-tunnel-1f', 78, 'cave', true, false, false, 'Wild Levels: 52-55'),
('c3d4e5f6-a7b8-9012-cdef-345678901234', 'Rock Tunnel B1F', 'rock-tunnel-b1f', 79, 'cave', true, false, false, 'Wild Levels: 53-56. Rock Smash: Nosepass.'),
('c3d4e5f6-a7b8-9012-cdef-345678901234', 'Route 8', 'route-8', 80, 'route', true, false, false, 'Wild Levels: 50-54'),
('c3d4e5f6-a7b8-9012-cdef-345678901234', 'Route 12', 'route-12', 81, 'route', true, false, false, 'Wild Levels: 20-55. Fishing route.'),
('c3d4e5f6-a7b8-9012-cdef-345678901234', 'Route 13', 'route-13', 82, 'route', true, false, false, 'Wild Levels: 50-54'),
('c3d4e5f6-a7b8-9012-cdef-345678901234', 'Route 14', 'route-14', 83, 'route', true, false, false, 'Wild Levels: 51-55'),
('c3d4e5f6-a7b8-9012-cdef-345678901234', 'Route 15', 'route-15', 84, 'route', true, false, false, 'Wild Levels: 51-55'),
('c3d4e5f6-a7b8-9012-cdef-345678901234', 'Route 11', 'route-11', 85, 'route', true, false, false, 'Wild Levels: 50-55'),
('c3d4e5f6-a7b8-9012-cdef-345678901234', 'Fuchsia City', 'fuchsia-city', 86, 'city', true, true, false, 'Gym Leader Janine. Poison-type specialist.'),
('c3d4e5f6-a7b8-9012-cdef-345678901234', 'Route 18', 'route-18', 87, 'route', true, false, false, 'Wild Levels: 50-56'),
('c3d4e5f6-a7b8-9012-cdef-345678901234', 'Route 17', 'route-17', 88, 'route', true, false, false, 'Wild Levels: 52-55'),
('c3d4e5f6-a7b8-9012-cdef-345678901234', 'Route 16', 'route-16', 89, 'route', true, false, false, 'Wild Levels: 52-55'),
('c3d4e5f6-a7b8-9012-cdef-345678901234', 'Route 7', 'route-7', 90, 'route', true, false, false, 'Wild Levels: 50-54'),
('c3d4e5f6-a7b8-9012-cdef-345678901234', 'Celadon City', 'celadon-city', 91, 'city', true, true, false, 'Gym Leader Erika. Grass-type specialist.'),
('c3d4e5f6-a7b8-9012-cdef-345678901234', 'Viridian City', 'viridian-city', 92, 'city', true, true, false, 'Gym Leader Blue. Mixed-type specialist.'),
('c3d4e5f6-a7b8-9012-cdef-345678901234', 'Route 2 (South)', 'route-2-south', 93, 'route', true, false, false, 'Wild Levels: 45-49'),
('c3d4e5f6-a7b8-9012-cdef-345678901234', 'Route 1', 'route-1', 94, 'route', true, false, false, 'Wild Levels: 48-60'),
('c3d4e5f6-a7b8-9012-cdef-345678901234', 'Pallet Town', 'pallet-town', 95, 'city', true, false, false, 'Surf and fishing available.'),
('c3d4e5f6-a7b8-9012-cdef-345678901234', 'Route 21', 'route-21', 96, 'route', true, false, false, 'Wild Levels: 54-59'),
('c3d4e5f6-a7b8-9012-cdef-345678901234', 'Route 22', 'route-22', 97, 'route', true, false, false, 'Wild Levels: 54-59'),
('c3d4e5f6-a7b8-9012-cdef-345678901234', 'Cinnabar Island', 'cinnabar-island', 98, 'city', true, false, false, 'Gym Leader Blaine. Fire-type specialist.'),
('c3d4e5f6-a7b8-9012-cdef-345678901234', 'Route 20', 'route-20', 99, 'water', true, false, false, 'Wild Levels: 5-60'),
('c3d4e5f6-a7b8-9012-cdef-345678901234', 'Route 19', 'route-19', 100, 'water', true, false, false, 'Wild Levels: 5-60'),
('c3d4e5f6-a7b8-9012-cdef-345678901234', 'Seafoam Islands 1F', 'seafoam-islands-1f', 101, 'cave', true, false, false, 'Wild Levels: 48-58'),
('c3d4e5f6-a7b8-9012-cdef-345678901234', 'Seafoam Islands B1F', 'seafoam-islands-b1f', 102, 'cave', true, false, false, 'Wild Levels: 49-59'),
('c3d4e5f6-a7b8-9012-cdef-345678901234', 'Seafoam Islands B2F', 'seafoam-islands-b2f', 103, 'cave', true, false, false, 'Wild Levels: 56-60'),
('c3d4e5f6-a7b8-9012-cdef-345678901234', 'Seafoam Islands B3F', 'seafoam-islands-b3f', 104, 'cave', true, false, false, 'Wild Levels: 56-60'),
('c3d4e5f6-a7b8-9012-cdef-345678901234', 'Seafoam Islands B4F', 'seafoam-islands-b4f', 105, 'cave', true, false, false, 'Wild Levels: 57-60. Lapras can be found here.'),
('c3d4e5f6-a7b8-9012-cdef-345678901234', 'Viridian Forest', 'viridian-forest', 106, 'route', true, false, false, 'Wild Levels: 60-68'),

-- ---- ENDGAME ----
('c3d4e5f6-a7b8-9012-cdef-345678901234', 'Bell Tower 2F-3F', 'bell-tower-2f-3f', 107, 'building', true, false, false, 'Wild Levels: 40-43 (Sacred Gold)'),
('c3d4e5f6-a7b8-9012-cdef-345678901234', 'Bell Tower 4F-6F', 'bell-tower-4f-6f', 108, 'building', true, false, false, 'Wild Levels: 41-44 (Sacred Gold)'),
('c3d4e5f6-a7b8-9012-cdef-345678901234', 'Bell Tower 7F-9F', 'bell-tower-7f-9f', 109, 'building', true, false, false, 'Wild Levels: 41-45 (Sacred Gold)'),
('c3d4e5f6-a7b8-9012-cdef-345678901234', 'Bell Tower 10F', 'bell-tower-10f', 110, 'building', true, false, false, 'Wild Levels: 43-45 (Sacred Gold)'),
('c3d4e5f6-a7b8-9012-cdef-345678901234', 'Cerulean Cave 1F', 'cerulean-cave-1f', 111, 'cave', true, false, false, 'Wild Levels: 60-64'),
('c3d4e5f6-a7b8-9012-cdef-345678901234', 'Cerulean Cave 2F', 'cerulean-cave-2f', 112, 'cave', true, false, false, 'Wild Levels: 64-68'),
('c3d4e5f6-a7b8-9012-cdef-345678901234', 'Cerulean Cave B2F', 'cerulean-cave-b2f', 113, 'cave', true, false, false, 'Wild Levels: 68-72'),
('c3d4e5f6-a7b8-9012-cdef-345678901234', 'Route 28', 'route-28', 114, 'route', true, false, false, 'Wild Levels: 58-64'),
('c3d4e5f6-a7b8-9012-cdef-345678901234', 'Mt. Silver (Outside)', 'mt-silver-outside', 115, 'route', true, false, false, 'Wild Levels: 59-65'),
('c3d4e5f6-a7b8-9012-cdef-345678901234', 'Mt. Silver 1F (Entrance)', 'mt-silver-1f-entrance', 116, 'cave', true, false, false, 'Wild Levels: 50-64'),
('c3d4e5f6-a7b8-9012-cdef-345678901234', 'Mt. Silver 1F (Side Room)', 'mt-silver-1f-side', 117, 'cave', true, false, false, 'Wild Levels: 50-64. Bagon and Shelgon here.'),
('c3d4e5f6-a7b8-9012-cdef-345678901234', 'Mt. Silver 1F (Back Room)', 'mt-silver-1f-back', 118, 'cave', true, false, false, 'Wild Levels: 64-68'),
('c3d4e5f6-a7b8-9012-cdef-345678901234', 'Mt. Silver 2F', 'mt-silver-2f', 119, 'cave', true, false, false, 'Wild Levels: 62-66'),
('c3d4e5f6-a7b8-9012-cdef-345678901234', 'Mt. Silver (Snowy Area)', 'mt-silver-outside-snowy', 120, 'route', true, false, false, 'Wild Levels: 54-65'),
('c3d4e5f6-a7b8-9012-cdef-345678901234', 'Mt. Silver (Mountainous)', 'mt-silver-outside-mountain', 121, 'route', true, false, false, 'Wild Levels: 60-64'),
('c3d4e5f6-a7b8-9012-cdef-345678901234', 'Mt. Silver 3F', 'mt-silver-3f', 122, 'cave', true, false, false, 'Wild Levels: 64-68. Final cave.');

-- ===========================================
-- STEP 3: STARTER ENCOUNTERS
-- ===========================================
UPDATE public.routes SET has_encounters = true
WHERE slug = 'new-bark-town' AND game_id = 'c3d4e5f6-a7b8-9012-cdef-345678901234';

DELETE FROM public.encounters
WHERE method = 'gift'
AND conditions = 'Choose one starter'
AND route_id IN (
  SELECT id FROM public.routes
  WHERE slug = 'new-bark-town' AND game_id = 'c3d4e5f6-a7b8-9012-cdef-345678901234'
);

INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions)
SELECT r.id, e.dex_id, e.method, e.rate::numeric, e.lmin, e.lmax, e.conditions
FROM public.routes r,
(VALUES
  (152, 'gift', null::numeric, 5, 5, 'Choose one starter'),  -- Chikorita
  (155, 'gift', null::numeric, 5, 5, 'Choose one starter'),  -- Cyndaquil
  (158, 'gift', null::numeric, 5, 5, 'Choose one starter')   -- Totodile
) AS e(dex_id, method, rate, lmin, lmax, conditions)
WHERE r.slug = 'new-bark-town' AND r.game_id = 'c3d4e5f6-a7b8-9012-cdef-345678901234';

-- ============================================
-- ENCOUNTER DATA
-- ============================================

-- ===========================================
-- SACRED GOLD: ENCOUNTER DATA PART 1
-- Routes 1-19 (New Bark Town through Ilex Forest)
-- ===========================================
-- Game ID: c3d4e5f6-a7b8-9012-cdef-345678901234
-- ===========================================

-- -------------------------------------------
-- New Bark Town (levels: null - city)
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions)
SELECT r.id, e.dex_id, e.method, e.rate::numeric, e.lmin, e.lmax, e.cond
FROM public.routes r,
(VALUES
  (72,  'surfing',       90.00, null::int, null::int, null::text),  -- Tentacool
  (73,  'surfing',       10.00, null, null, null),                  -- Tentacruel
  (129, 'fishing_old',   60.00, null, null, null),                  -- Magikarp
  (90,  'fishing_old',   35.00, null, null, null),                  -- Shellder
  (170, 'fishing_old',    5.00, null, null, null),                  -- Chinchou
  (90,  'fishing_good',  60.00, null, null, null),                  -- Shellder
  (170, 'fishing_good',  40.00, null, null, null),                  -- Chinchou
  (90,  'fishing_super', 60.00, null, null, null),                  -- Shellder
  (171, 'fishing_super', 30.00, null, null, null),                  -- Lanturn
  (130, 'fishing_super', 10.00, null, null, null)                   -- Gyarados
) AS e(dex_id, method, rate, lmin, lmax, cond)
WHERE r.slug = 'new-bark-town' AND r.game_id = 'c3d4e5f6-a7b8-9012-cdef-345678901234';

-- -------------------------------------------
-- Route 29 (levels: 3-5)
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions)
SELECT r.id, e.dex_id, e.method, e.rate::numeric, e.lmin, e.lmax, e.cond
FROM public.routes r,
(VALUES
  -- Grass Morning/Day
  (16,  'walking', 20.00, 3::int, 5::int, 'Morning / Day'::text),  -- Pidgey
  (161, 'walking', 20.00, 3, 5, 'Morning / Day'),                  -- Sentret
  (396, 'walking', 15.00, 3, 5, 'Morning / Day'),                  -- Starly
  (19,  'walking', 15.00, 3, 5, 'Morning / Day'),                  -- Rattata
  (263, 'walking', 10.00, 3, 5, 'Morning / Day'),                  -- Zigzagoon
  (399, 'walking', 10.00, 3, 5, 'Morning / Day'),                  -- Bidoof
  (187, 'walking',  5.00, 3, 5, 'Morning / Day'),                  -- Hoppip
  (265, 'walking',  5.00, 3, 5, 'Morning / Day'),                  -- Wurmple
  -- Grass Night
  (163, 'walking', 20.00, 3, 5, 'Night'),                          -- Hoothoot
  (19,  'walking', 20.00, 3, 5, 'Night'),                          -- Rattata
  (261, 'walking', 15.00, 3, 5, 'Night'),                          -- Poochyena
  (263, 'walking', 15.00, 3, 5, 'Night'),                          -- Zigzagoon
  (399, 'walking', 15.00, 3, 5, 'Night'),                          -- Bidoof
  (265, 'walking', 15.00, 3, 5, 'Night'),                          -- Wurmple
  -- Sound
  (162, 'walking', null, null, null, 'Meridian Sound'),             -- Furret
  (20,  'walking', null, null, null, 'Meridian Sound'),             -- Raticate
  (311, 'walking', null, null, null, 'Pastoral Sound'),             -- Plusle
  (312, 'walking', null, null, null, 'Pastoral Sound')              -- Minun
) AS e(dex_id, method, rate, lmin, lmax, cond)
WHERE r.slug = 'route-29' AND r.game_id = 'c3d4e5f6-a7b8-9012-cdef-345678901234';

-- -------------------------------------------
-- Route 46 (levels: 4-6)
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions)
SELECT r.id, e.dex_id, e.method, e.rate::numeric, e.lmin, e.lmax, e.cond
FROM public.routes r,
(VALUES
  -- Grass Morning/Day
  (74,  'walking', 20.00, 4::int, 6::int, 'Morning / Day'::text),  -- Geodude
  (21,  'walking', 20.00, 4, 6, 'Morning / Day'),                  -- Spearow
  (325, 'walking', 10.00, 4, 6, 'Morning / Day'),                  -- Spoink
  (333, 'walking', 10.00, 4, 6, 'Morning / Day'),                  -- Swablu
  (19,  'walking', 10.00, 4, 6, 'Morning / Day'),                  -- Rattata
  (322, 'walking', 10.00, 4, 6, 'Morning / Day'),                  -- Numel
  (39,  'walking', 10.00, 4, 6, 'Morning / Day'),                  -- Jigglypuff
  (231, 'walking', 10.00, 4, 6, 'Morning / Day'),                  -- Phanpy
  -- Grass Night
  (74,  'walking', 20.00, 4, 6, 'Night'),                          -- Geodude
  (322, 'walking', 20.00, 4, 6, 'Night'),                          -- Numel
  (325, 'walking', 10.00, 4, 6, 'Night'),                          -- Spoink
  (19,  'walking', 10.00, 4, 6, 'Night'),                          -- Rattata
  (35,  'walking', 10.00, 4, 6, 'Night'),                          -- Clefairy
  (39,  'walking', 10.00, 4, 6, 'Night'),                          -- Jigglypuff
  (228, 'walking', 10.00, 4, 6, 'Night'),                          -- Houndour
  (403, 'walking', 10.00, 4, 6, 'Night'),                          -- Shinx
  -- Sound
  (75,  'walking', null, null, null, 'Meridian Sound'),             -- Graveler
  (22,  'walking', null, null, null, 'Meridian Sound'),             -- Fearow
  (174, 'walking', null, null, null, 'Pastoral Sound')              -- Igglybuff
) AS e(dex_id, method, rate, lmin, lmax, cond)
WHERE r.slug = 'route-46' AND r.game_id = 'c3d4e5f6-a7b8-9012-cdef-345678901234';

-- -------------------------------------------
-- Cherrygrove City (levels: null - city)
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions)
SELECT r.id, e.dex_id, e.method, e.rate::numeric, e.lmin, e.lmax, e.cond
FROM public.routes r,
(VALUES
  (183, 'surfing',       95.00, null::int, null::int, null::text),  -- Marill
  (184, 'surfing',        5.00, null, null, null),                  -- Azumarill
  (129, 'fishing_old',   60.00, null, null, null),                  -- Magikarp
  (98,  'fishing_old',   30.00, null, null, null),                  -- Krabby
  (341, 'fishing_old',   10.00, null, null, null),                  -- Corphish
  (98,  'fishing_good',  60.00, null, null, null),                  -- Krabby
  (456, 'fishing_good',  30.00, null, null, null),                  -- Finneon
  (341, 'fishing_good',  10.00, null, null, null),                  -- Corphish
  (457, 'fishing_super', 60.00, null, null, null),                  -- Lumineon
  (99,  'fishing_super', 30.00, null, null, null),                  -- Kingler
  (342, 'fishing_super', 10.00, null, null, null)                   -- Crawdaunt
) AS e(dex_id, method, rate, lmin, lmax, cond)
WHERE r.slug = 'cherrygrove-city' AND r.game_id = 'c3d4e5f6-a7b8-9012-cdef-345678901234';

-- -------------------------------------------
-- Route 30 (levels: 4-6)
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions)
SELECT r.id, e.dex_id, e.method, e.rate::numeric, e.lmin, e.lmax, e.cond
FROM public.routes r,
(VALUES
  -- Grass Morning
  (165, 'walking', 20.00, 4::int, 6::int, 'Morning'::text),        -- Ledyba
  (276, 'walking', 20.00, 4, 6, 'Morning'),                        -- Taillow
  (270, 'walking', 10.00, 4, 6, 'Morning'),                        -- Lotad
  (273, 'walking', 10.00, 4, 6, 'Morning'),                        -- Seedot
  (10,  'walking', 10.00, 4, 6, 'Morning'),                        -- Caterpie
  (13,  'walking', 10.00, 4, 6, 'Morning'),                        -- Weedle
  (401, 'walking', 10.00, 4, 6, 'Morning'),                        -- Kricketot
  (283, 'walking',  5.00, 4, 6, 'Morning'),                        -- Surskit
  (280, 'walking',  5.00, 4, 6, 'Morning'),                        -- Ralts
  -- Grass Day
  (10,  'walking', 20.00, 4, 6, 'Day'),                            -- Caterpie
  (13,  'walking', 20.00, 4, 6, 'Day'),                            -- Weedle
  (270, 'walking', 10.00, 4, 6, 'Day'),                            -- Lotad
  (273, 'walking', 10.00, 4, 6, 'Day'),                            -- Seedot
  (276, 'walking', 10.00, 4, 6, 'Day'),                            -- Taillow
  (11,  'walking', 10.00, 4, 6, 'Day'),                            -- Metapod
  (14,  'walking', 10.00, 4, 6, 'Day'),                            -- Kakuna
  (283, 'walking',  5.00, 4, 6, 'Day'),                            -- Surskit
  (280, 'walking',  5.00, 4, 6, 'Day'),                            -- Ralts
  -- Grass Night
  (167, 'walking', 20.00, 4, 6, 'Night'),                          -- Spinarak
  (163, 'walking', 20.00, 4, 6, 'Night'),                          -- Hoothoot
  (270, 'walking', 10.00, 4, 6, 'Night'),                          -- Lotad
  (273, 'walking', 10.00, 4, 6, 'Night'),                          -- Seedot
  (10,  'walking', 10.00, 4, 6, 'Night'),                          -- Caterpie
  (13,  'walking', 10.00, 4, 6, 'Night'),                          -- Weedle
  (401, 'walking', 10.00, 4, 6, 'Night'),                          -- Kricketot
  (283, 'walking',  5.00, 4, 6, 'Night'),                          -- Surskit
  (280, 'walking',  5.00, 4, 6, 'Night'),                          -- Ralts
  -- Sound
  (271, 'walking', null, null, null, 'Meridian Sound'),             -- Lombre
  (274, 'walking', null, null, null, 'Meridian Sound'),             -- Nuzleaf
  (280, 'walking', null, null, null, 'Pastoral Sound'),             -- Ralts
  -- Surf
  (60,  'surfing', 60.00, 4, 6, null),                             -- Poliwag
  (270, 'surfing', 30.00, 4, 6, null),                             -- Lotad
  (61,  'surfing',  5.00, 4, 6, null),                             -- Poliwhirl
  (271, 'surfing',  5.00, 4, 6, null),                             -- Lombre
  -- Fishing
  (60,  'fishing_old',   60.00, 4, 6, null),                       -- Poliwag
  (118, 'fishing_old',   30.00, 4, 6, null),                       -- Goldeen
  (54,  'fishing_old',   10.00, 4, 6, null),                       -- Psyduck
  (54,  'fishing_good',  60.00, 4, 6, null),                       -- Psyduck
  (118, 'fishing_good',  30.00, 4, 6, null),                       -- Goldeen
  (61,  'fishing_good',  10.00, 4, 6, null),                       -- Poliwhirl
  (61,  'fishing_super', 60.00, 4, 6, null),                       -- Poliwhirl
  (119, 'fishing_super', 30.00, 4, 6, null),                       -- Seaking
  (55,  'fishing_super', 10.00, 4, 6, null)                        -- Golduck
) AS e(dex_id, method, rate, lmin, lmax, cond)
WHERE r.slug = 'route-30' AND r.game_id = 'c3d4e5f6-a7b8-9012-cdef-345678901234';

-- -------------------------------------------
-- Route 31 (levels: 6-10)
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions)
SELECT r.id, e.dex_id, e.method, e.rate::numeric, e.lmin, e.lmax, e.cond
FROM public.routes r,
(VALUES
  -- Grass Morning
  (165, 'walking', 20.00, 6::int, 10::int, 'Morning'::text),       -- Ledyba
  (69,  'walking', 20.00, 6, 10, 'Morning'),                       -- Bellsprout
  (418, 'walking', 10.00, 6, 10, 'Morning'),                       -- Buizel
  (403, 'walking', 10.00, 6, 10, 'Morning'),                       -- Shinx
  (63,  'walking', 10.00, 6, 10, 'Morning'),                       -- Abra
  (177, 'walking', 10.00, 6, 10, 'Morning'),                       -- Natu
  (102, 'walking',  5.00, 6, 10, 'Morning'),                       -- Exeggcute
  (54,  'walking',  5.00, 6, 10, 'Morning'),                       -- Psyduck
  (11,  'walking',  4.00, 6, 10, 'Morning'),                       -- Metapod
  (14,  'walking',  4.00, 6, 10, 'Morning'),                       -- Kakuna
  (12,  'walking',  1.00, 6, 10, 'Morning'),                       -- Butterfree
  (15,  'walking',  1.00, 6, 10, 'Morning'),                       -- Beedrill
  -- Grass Day
  (265, 'walking', 20.00, 6, 10, 'Day'),                           -- Wurmple
  (69,  'walking', 20.00, 6, 10, 'Day'),                           -- Bellsprout
  (418, 'walking', 10.00, 6, 10, 'Day'),                           -- Buizel
  (403, 'walking', 10.00, 6, 10, 'Day'),                           -- Shinx
  (63,  'walking', 10.00, 6, 10, 'Day'),                           -- Abra
  (177, 'walking', 10.00, 6, 10, 'Day'),                           -- Natu
  (406, 'walking',  5.00, 6, 10, 'Day'),                           -- Budew
  (54,  'walking',  5.00, 6, 10, 'Day'),                           -- Psyduck
  (266, 'walking',  4.00, 6, 10, 'Day'),                           -- Silcoon
  (268, 'walking',  4.00, 6, 10, 'Day'),                           -- Cascoon
  (102, 'walking',  2.00, 6, 10, 'Day'),                           -- Exeggcute
  -- Grass Night
  (167, 'walking', 20.00, 6, 10, 'Night'),                         -- Spinarak
  (69,  'walking', 20.00, 6, 10, 'Night'),                         -- Bellsprout
  (54,  'walking', 10.00, 6, 10, 'Night'),                         -- Psyduck
  (403, 'walking', 10.00, 6, 10, 'Night'),                         -- Shinx
  (63,  'walking', 10.00, 6, 10, 'Night'),                         -- Abra
  (177, 'walking', 10.00, 6, 10, 'Night'),                         -- Natu
  (102, 'walking',  5.00, 6, 10, 'Night'),                         -- Exeggcute
  (418, 'walking',  5.00, 6, 10, 'Night'),                         -- Buizel
  (11,  'walking',  4.00, 6, 10, 'Night'),                         -- Metapod
  (14,  'walking',  4.00, 6, 10, 'Night'),                         -- Kakuna
  (267, 'walking',  1.00, 6, 10, 'Night'),                         -- Beautifly
  (269, 'walking',  1.00, 6, 10, 'Night'),                         -- Dustox
  -- Sound
  (12,  'walking', null, null, null, 'Meridian Sound'),             -- Butterfree
  (15,  'walking', null, null, null, 'Meridian Sound'),             -- Beedrill
  (406, 'walking', null, null, null, 'Pastoral Sound'),             -- Budew
  -- Surf
  (183, 'surfing', 60.00, 6, 10, null),                            -- Marill
  (283, 'surfing', 35.00, 6, 10, null),                            -- Surskit
  (284, 'surfing',  5.00, 6, 10, null),                            -- Masquerain
  -- Fishing
  (72,  'fishing_old',   60.00, 6, 10, null),                      -- Tentacool
  (79,  'fishing_old',   35.00, 6, 10, null),                      -- Slowpoke
  (349, 'fishing_old',    5.00, 6, 10, null),                      -- Feebas
  (72,  'fishing_good',  60.00, 6, 10, null),                      -- Tentacool
  (79,  'fishing_good',  30.00, 6, 10, null),                      -- Slowpoke
  (349, 'fishing_good',  10.00, 6, 10, null),                      -- Feebas
  (73,  'fishing_super', 60.00, 6, 10, null),                      -- Tentacruel
  (349, 'fishing_super', 30.00, 6, 10, null),                      -- Feebas
  (80,  'fishing_super', 10.00, 6, 10, null)                       -- Slowbro
) AS e(dex_id, method, rate, lmin, lmax, cond)
WHERE r.slug = 'route-31' AND r.game_id = 'c3d4e5f6-a7b8-9012-cdef-345678901234';

-- -------------------------------------------
-- Dark Cave Violet Side (levels: 8-10)
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions)
SELECT r.id, e.dex_id, e.method, e.rate::numeric, e.lmin, e.lmax, e.cond
FROM public.routes r,
(VALUES
  -- Cave Morning/Day
  (74,  'walking', 20.00, 8::int, 10::int, 'Morning / Day'::text), -- Geodude
  (41,  'walking', 20.00, 8, 10, 'Morning / Day'),                 -- Zubat
  (436, 'walking', 10.00, 8, 10, 'Morning / Day'),                 -- Bronzor
  (296, 'walking', 10.00, 8, 10, 'Morning / Day'),                 -- Makuhita
  (27,  'walking', 10.00, 8, 10, 'Morning / Day'),                 -- Sandshrew
  (216, 'walking', 10.00, 8, 10, 'Morning / Day'),                 -- Teddiursa
  (218, 'walking', 10.00, 8, 10, 'Morning / Day'),                 -- Slugma
  (246, 'walking',  4.00, 8, 10, 'Morning / Day'),                 -- Larvitar
  (206, 'walking',  4.00, 8, 10, 'Morning / Day'),                 -- Dunsparce
  (433, 'walking',  2.00, 8, 10, 'Morning / Day'),                 -- Chingling
  -- Cave Night
  (74,  'walking', 20.00, 8, 10, 'Night'),                         -- Geodude
  (41,  'walking', 20.00, 8, 10, 'Night'),                         -- Zubat
  (436, 'walking', 10.00, 8, 10, 'Night'),                         -- Bronzor
  (296, 'walking', 10.00, 8, 10, 'Night'),                         -- Makuhita
  (27,  'walking', 10.00, 8, 10, 'Night'),                         -- Sandshrew
  (360, 'walking', 10.00, 8, 10, 'Night'),                         -- Wynaut
  (218, 'walking', 10.00, 8, 10, 'Night'),                         -- Slugma
  (246, 'walking',  4.00, 8, 10, 'Night'),                         -- Larvitar
  (206, 'walking',  4.00, 8, 10, 'Night'),                         -- Dunsparce
  (433, 'walking',  2.00, 8, 10, 'Night'),                         -- Chingling
  -- Sound
  (42,  'walking', null, null, null, 'Meridian Sound'),             -- Golbat
  (433, 'walking', null, null, null, 'Pastoral Sound'),             -- Chingling
  -- Swarm
  (246, 'walking', null, null, null, 'Swarm'),                      -- Larvitar
  -- Surf
  (422, 'surfing', 60.00, 8, 10, null),                            -- Shellos
  (194, 'surfing', 30.00, 8, 10, null),                            -- Wooper
  (423, 'surfing', 10.00, 8, 10, null),                            -- Gastrodon
  -- Fishing
  (118, 'fishing_old',   60.00, 8, 10, null),                      -- Goldeen
  (339, 'fishing_old',   30.00, 8, 10, null),                      -- Barboach
  (194, 'fishing_old',   10.00, 8, 10, null),                      -- Wooper
  (118, 'fishing_good',  60.00, 8, 10, null),                      -- Goldeen
  (339, 'fishing_good',  30.00, 8, 10, null),                      -- Barboach
  (195, 'fishing_good',  10.00, 8, 10, null),                      -- Quagsire
  (119, 'fishing_super', 60.00, 8, 10, null),                      -- Seaking
  (340, 'fishing_super', 30.00, 8, 10, null),                      -- Whiscash
  (195, 'fishing_super', 10.00, 8, 10, null),                      -- Quagsire
  -- Rock Smash
  (206, 'rock_smash', 90.00, 8, 10, null),                         -- Dunsparce
  (299, 'rock_smash', 10.00, 8, 10, null)                          -- Nosepass
) AS e(dex_id, method, rate, lmin, lmax, cond)
WHERE r.slug = 'dark-cave-violet' AND r.game_id = 'c3d4e5f6-a7b8-9012-cdef-345678901234';

-- -------------------------------------------
-- Violet City (levels: null - city)
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions)
SELECT r.id, e.dex_id, e.method, e.rate::numeric, e.lmin, e.lmax, e.cond
FROM public.routes r,
(VALUES
  (60,  'surfing',       90.00, null::int, null::int, null::text),  -- Poliwag
  (61,  'surfing',       10.00, null, null, null),                  -- Poliwhirl
  (129, 'fishing_old',   60.00, null, null, null),                  -- Magikarp
  (60,  'fishing_old',   30.00, null, null, null),                  -- Poliwag
  (120, 'fishing_old',   10.00, null, null, null),                  -- Staryu
  (60,  'fishing_good',  60.00, null, null, null),                  -- Poliwag
  (120, 'fishing_good',  30.00, null, null, null),                  -- Staryu
  (170, 'fishing_good',  10.00, null, null, null),                  -- Chinchou
  (61,  'fishing_super', 60.00, null, null, null),                  -- Poliwhirl
  (120, 'fishing_super', 30.00, null, null, null),                  -- Staryu
  (171, 'fishing_super', 10.00, null, null, null)                   -- Lanturn
) AS e(dex_id, method, rate, lmin, lmax, cond)
WHERE r.slug = 'violet-city' AND r.game_id = 'c3d4e5f6-a7b8-9012-cdef-345678901234';

-- -------------------------------------------
-- Route 32 (levels: 10-12)
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions)
SELECT r.id, e.dex_id, e.method, e.rate::numeric, e.lmin, e.lmax, e.cond
FROM public.routes r,
(VALUES
  -- Grass Morning/Day
  (179, 'walking', 20.00, 10::int, 12::int, 'Morning / Day'::text), -- Mareep
  (69,  'walking', 20.00, 10, 12, 'Morning / Day'),                 -- Bellsprout
  (290, 'walking', 15.00, 10, 12, 'Morning / Day'),                 -- Nincada
  (187, 'walking', 15.00, 10, 12, 'Morning / Day'),                 -- Hoppip
  (81,  'walking', 15.00, 10, 12, 'Morning / Day'),                 -- Magnemite
  (23,  'walking', 10.00, 10, 12, 'Morning / Day'),                 -- Ekans
  (417, 'walking',  5.00, 10, 12, 'Morning / Day'),                 -- Pachirisu
  -- Grass Night
  (179, 'walking', 20.00, 10, 12, 'Night'),                         -- Mareep
  (69,  'walking', 20.00, 10, 12, 'Night'),                         -- Bellsprout
  (290, 'walking', 15.00, 10, 12, 'Night'),                         -- Nincada
  (194, 'walking', 15.00, 10, 12, 'Night'),                         -- Wooper
  (81,  'walking', 15.00, 10, 12, 'Night'),                         -- Magnemite
  (23,  'walking', 10.00, 10, 12, 'Night'),                         -- Ekans
  (425, 'walking',  5.00, 10, 12, 'Night'),                         -- Drifloon
  -- Sound
  (180, 'walking', null, null, null, 'Meridian Sound'),              -- Flaaffy
  (82,  'walking', null, null, null, 'Meridian Sound'),              -- Magneton
  (425, 'walking', null, null, null, 'Pastoral Sound'),              -- Drifloon
  (417, 'walking', null, null, null, 'Pastoral Sound'),              -- Pachirisu
  -- Surf
  (194, 'surfing', 60.00, 10, 12, null),                            -- Wooper
  (72,  'surfing', 30.00, 10, 12, null),                            -- Tentacool
  (195, 'surfing',  5.00, 10, 12, null),                            -- Quagsire
  (73,  'surfing',  5.00, 10, 12, null),                            -- Tentacruel
  -- Fishing
  (72,  'fishing_old',   60.00, 10, 12, null),                      -- Tentacool
  (54,  'fishing_old',   35.00, 10, 12, null),                      -- Psyduck
  (211, 'fishing_old',    5.00, 10, 12, null),                      -- Qwilfish
  (72,  'fishing_good',  60.00, 10, 12, null),                      -- Tentacool
  (54,  'fishing_good',  30.00, 10, 12, null),                      -- Psyduck
  (211, 'fishing_good',  10.00, 10, 12, null),                      -- Qwilfish
  (211, 'fishing_super', 60.00, 10, 12, null),                      -- Qwilfish
  (73,  'fishing_super', 30.00, 10, 12, null),                      -- Tentacruel
  (55,  'fishing_super', 10.00, 10, 12, null)                       -- Golduck
) AS e(dex_id, method, rate, lmin, lmax, cond)
WHERE r.slug = 'route-32' AND r.game_id = 'c3d4e5f6-a7b8-9012-cdef-345678901234';

-- -------------------------------------------
-- Ruins of Alph (levels: 26-30)
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions)
SELECT r.id, e.dex_id, e.method, e.rate::numeric, e.lmin, e.lmax, e.cond
FROM public.routes r,
(VALUES
  -- Grass All Times
  (177, 'walking', 40.00, 26::int, 30::int, null::text),            -- Natu
  (235, 'walking', 40.00, 26, 30, null),                            -- Smeargle
  (203, 'walking', 20.00, 26, 30, null),                            -- Girafarig
  -- Rock Smash
  (74,  'rock_smash', 90.00, 26, 30, null),                         -- Geodude
  (299, 'rock_smash', 10.00, 26, 30, null),                         -- Nosepass
  -- Sound
  (178, 'walking', null, null, null, 'Meridian Sound'),              -- Xatu
  (175, 'walking', null, null, null, 'Pastoral Sound'),              -- Togepi
  -- Surf
  (194, 'surfing', 90.00, 26, 30, null),                            -- Wooper
  (195, 'surfing', 10.00, 26, 30, null),                            -- Quagsire
  -- Fishing
  (129, 'fishing_old',   60.00, 26, 30, null),                      -- Magikarp
  (223, 'fishing_old',   30.00, 26, 30, null),                      -- Remoraid
  (147, 'fishing_old',   10.00, 26, 30, null),                      -- Dratini
  (129, 'fishing_good',  60.00, 26, 30, null),                      -- Magikarp
  (223, 'fishing_good',  30.00, 26, 30, null),                      -- Remoraid
  (147, 'fishing_good',   9.00, 26, 30, null),                      -- Dratini
  (148, 'fishing_good',   1.00, 26, 30, null),                      -- Dragonair
  (130, 'fishing_super', 60.00, 26, 30, null),                      -- Gyarados
  (369, 'fishing_super', 30.00, 26, 30, null),                      -- Relicanth
  (148, 'fishing_super',  5.00, 26, 30, null),                      -- Dragonair
  (224, 'fishing_super',  5.00, 26, 30, null)                       -- Octillery
) AS e(dex_id, method, rate, lmin, lmax, cond)
WHERE r.slug = 'ruins-of-alph' AND r.game_id = 'c3d4e5f6-a7b8-9012-cdef-345678901234';

-- -------------------------------------------
-- Sprout Tower 2F (levels: 9-12)
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions)
SELECT r.id, e.dex_id, e.method, e.rate::numeric, e.lmin, e.lmax, e.cond
FROM public.routes r,
(VALUES
  -- Building Morning/Day
  (263, 'walking', 20.00, 9::int, 12::int, 'Morning / Day'::text),  -- Zigzagoon
  (19,  'walking', 20.00, 9, 12, 'Morning / Day'),                  -- Rattata
  (16,  'walking', 20.00, 9, 12, 'Morning / Day'),                  -- Pidgey
  (399, 'walking', 10.00, 9, 12, 'Morning / Day'),                  -- Bidoof
  (396, 'walking', 10.00, 9, 12, 'Morning / Day'),                  -- Starly
  (307, 'walking', 10.00, 9, 12, 'Morning / Day'),                  -- Meditite
  (327, 'walking',  5.00, 9, 12, 'Morning / Day'),                  -- Spinda
  (441, 'walking',  5.00, 9, 12, 'Morning / Day'),                  -- Chatot
  -- Building Night
  (92,  'walking', 20.00, 9, 12, 'Night'),                          -- Gastly
  (19,  'walking', 20.00, 9, 12, 'Night'),                          -- Rattata
  (69,  'walking', 20.00, 9, 12, 'Night'),                          -- Bellsprout
  (399, 'walking', 10.00, 9, 12, 'Night'),                          -- Bidoof
  (431, 'walking', 10.00, 9, 12, 'Night'),                          -- Glameow
  (434, 'walking', 10.00, 9, 12, 'Night'),                          -- Stunky
  (327, 'walking',  5.00, 9, 12, 'Night'),                          -- Spinda
  (425, 'walking',  5.00, 9, 12, 'Night'),                          -- Drifloon
  -- Sound
  (400, 'walking', null, null, null, 'Meridian Sound'),              -- Bibarel
  (264, 'walking', null, null, null, 'Meridian Sound'),              -- Linoone
  (327, 'walking', null, null, null, 'Pastoral Sound')               -- Spinda
) AS e(dex_id, method, rate, lmin, lmax, cond)
WHERE r.slug = 'sprout-tower-2f' AND r.game_id = 'c3d4e5f6-a7b8-9012-cdef-345678901234';

-- -------------------------------------------
-- Sprout Tower 3F (levels: 10-13)
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions)
SELECT r.id, e.dex_id, e.method, e.rate::numeric, e.lmin, e.lmax, e.cond
FROM public.routes r,
(VALUES
  -- Building Morning/Day
  (263, 'walking', 20.00, 10::int, 13::int, 'Morning / Day'::text), -- Zigzagoon
  (19,  'walking', 20.00, 10, 13, 'Morning / Day'),                 -- Rattata
  (16,  'walking', 20.00, 10, 13, 'Morning / Day'),                 -- Pidgey
  (399, 'walking', 10.00, 10, 13, 'Morning / Day'),                 -- Bidoof
  (396, 'walking', 10.00, 10, 13, 'Morning / Day'),                 -- Starly
  (307, 'walking', 10.00, 10, 13, 'Morning / Day'),                 -- Meditite
  (327, 'walking',  5.00, 10, 13, 'Morning / Day'),                 -- Spinda
  (441, 'walking',  5.00, 10, 13, 'Morning / Day'),                 -- Chatot
  -- Building Night
  (92,  'walking', 20.00, 10, 13, 'Night'),                         -- Gastly
  (19,  'walking', 20.00, 10, 13, 'Night'),                         -- Rattata
  (69,  'walking', 20.00, 10, 13, 'Night'),                         -- Bellsprout
  (399, 'walking', 10.00, 10, 13, 'Night'),                         -- Bidoof
  (431, 'walking', 10.00, 10, 13, 'Night'),                         -- Glameow
  (434, 'walking', 10.00, 10, 13, 'Night'),                         -- Stunky
  (327, 'walking',  5.00, 10, 13, 'Night'),                         -- Spinda
  (425, 'walking',  5.00, 10, 13, 'Night'),                         -- Drifloon
  -- Sound
  (400, 'walking', null, null, null, 'Meridian Sound'),              -- Bibarel
  (264, 'walking', null, null, null, 'Meridian Sound'),              -- Linoone
  (327, 'walking', null, null, null, 'Pastoral Sound')               -- Spinda
) AS e(dex_id, method, rate, lmin, lmax, cond)
WHERE r.slug = 'sprout-tower-3f' AND r.game_id = 'c3d4e5f6-a7b8-9012-cdef-345678901234';

-- -------------------------------------------
-- Union Cave 1F (levels: 12-15)
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions)
SELECT r.id, e.dex_id, e.method, e.rate::numeric, e.lmin, e.lmax, e.cond
FROM public.routes r,
(VALUES
  -- Cave All Times
  (41,  'walking', 25.00, 12::int, 15::int, null::text),            -- Zubat
  (27,  'walking', 25.00, 12, 15, null),                            -- Sandshrew
  (74,  'walking', 10.00, 12, 15, null),                            -- Geodude
  (293, 'walking', 10.00, 12, 15, null),                            -- Whismur
  (296, 'walking', 10.00, 12, 15, null),                            -- Makuhita
  (66,  'walking', 10.00, 12, 15, null),                            -- Machop
  (304, 'walking',  5.00, 12, 15, null),                            -- Aron
  (104, 'walking',  5.00, 12, 15, null),                            -- Cubone
  -- Sound
  (28,  'walking', null, null, null, 'Meridian Sound'),              -- Sandslash
  (294, 'walking', null, null, null, 'Meridian Sound'),              -- Loudred
  (443, 'walking', null, null, null, 'Pastoral Sound'),              -- Gible
  -- Surf
  (194, 'surfing', 60.00, 12, 15, null),                            -- Wooper
  (422, 'surfing', 30.00, 12, 15, null),                            -- Shellos
  (195, 'surfing',  5.00, 12, 15, null),                            -- Quagsire
  (423, 'surfing',  5.00, 12, 15, null),                            -- Gastrodon
  -- Fishing
  (129, 'fishing_old',   60.00, 12, 15, null),                      -- Magikarp
  (118, 'fishing_old',   30.00, 12, 15, null),                      -- Goldeen
  (339, 'fishing_old',   10.00, 12, 15, null),                      -- Barboach
  (129, 'fishing_good',  60.00, 12, 15, null),                      -- Magikarp
  (118, 'fishing_good',  30.00, 12, 15, null),                      -- Goldeen
  (339, 'fishing_good',  10.00, 12, 15, null),                      -- Barboach
  (130, 'fishing_super', 60.00, 12, 15, null),                      -- Gyarados
  (119, 'fishing_super', 30.00, 12, 15, null),                      -- Seaking
  (340, 'fishing_super', 10.00, 12, 15, null)                       -- Whiscash
) AS e(dex_id, method, rate, lmin, lmax, cond)
WHERE r.slug = 'union-cave-1f' AND r.game_id = 'c3d4e5f6-a7b8-9012-cdef-345678901234';

-- -------------------------------------------
-- Union Cave B1F (levels: 13-16)
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions)
SELECT r.id, e.dex_id, e.method, e.rate::numeric, e.lmin, e.lmax, e.cond
FROM public.routes r,
(VALUES
  -- Cave All Times
  (41,  'walking', 25.00, 13::int, 16::int, null::text),            -- Zubat
  (27,  'walking', 20.00, 13, 16, null),                            -- Sandshrew
  (74,  'walking', 10.00, 13, 16, null),                            -- Geodude
  (436, 'walking', 10.00, 13, 16, null),                            -- Bronzor
  (304, 'walking', 10.00, 13, 16, null),                            -- Aron
  (95,  'walking', 15.00, 13, 16, null),                            -- Onix
  (371, 'walking',  5.00, 13, 16, null),                            -- Bagon
  (443, 'walking',  5.00, 13, 16, null),                            -- Gible
  -- Sound
  (42,  'walking', null, null, null, 'Meridian Sound'),              -- Golbat
  (208, 'walking', null, null, null, 'Meridian Sound'),              -- Steelix
  (104, 'walking', null, null, null, 'Pastoral Sound'),              -- Cubone
  -- Surf
  (194, 'surfing', 60.00, 13, 16, null),                            -- Wooper
  (422, 'surfing', 30.00, 13, 16, null),                            -- Shellos
  (195, 'surfing',  5.00, 13, 16, null),                            -- Quagsire
  (423, 'surfing',  5.00, 13, 16, null),                            -- Gastrodon
  -- Fishing
  (129, 'fishing_old',   60.00, 13, 16, null),                      -- Magikarp
  (118, 'fishing_old',   30.00, 13, 16, null),                      -- Goldeen
  (339, 'fishing_old',   10.00, 13, 16, null),                      -- Barboach
  (129, 'fishing_good',  60.00, 13, 16, null),                      -- Magikarp
  (118, 'fishing_good',  30.00, 13, 16, null),                      -- Goldeen
  (339, 'fishing_good',  10.00, 13, 16, null),                      -- Barboach
  (130, 'fishing_super', 60.00, 13, 16, null),                      -- Gyarados
  (119, 'fishing_super', 30.00, 13, 16, null),                      -- Seaking
  (340, 'fishing_super', 10.00, 13, 16, null)                       -- Whiscash
) AS e(dex_id, method, rate, lmin, lmax, cond)
WHERE r.slug = 'union-cave-b1f' AND r.game_id = 'c3d4e5f6-a7b8-9012-cdef-345678901234';

-- -------------------------------------------
-- Union Cave B2F (levels: 28-30)
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions)
SELECT r.id, e.dex_id, e.method, e.rate::numeric, e.lmin, e.lmax, e.cond
FROM public.routes r,
(VALUES
  -- Cave All Times
  (42,  'walking', 20.00, 28::int, 30::int, null::text),            -- Golbat
  (28,  'walking', 20.00, 28, 30, null),                            -- Sandslash
  (75,  'walking', 10.00, 28, 30, null),                            -- Graveler
  (302, 'walking', 10.00, 28, 30, null),                            -- Sableye
  (67,  'walking', 10.00, 28, 30, null),                            -- Machoke
  (294, 'walking', 10.00, 28, 30, null),                            -- Loudred
  (303, 'walking', 10.00, 28, 30, null),                            -- Mawile
  (108, 'walking',  5.00, 28, 30, null),                            -- Lickitung
  (115, 'walking',  5.00, 28, 30, null),                            -- Kangaskhan
  -- Sound
  (463, 'walking', null, null, null, 'Meridian Sound'),              -- Lickilicky
  (295, 'walking', null, null, null, 'Meridian Sound'),              -- Exploud
  (115, 'walking', null, null, null, 'Pastoral Sound'),              -- Kangaskhan
  -- Surf
  (194, 'surfing', 60.00, 28, 30, null),                            -- Wooper
  (422, 'surfing', 30.00, 28, 30, null),                            -- Shellos
  (195, 'surfing',  5.00, 28, 30, null),                            -- Quagsire
  (423, 'surfing',  5.00, 28, 30, null),                            -- Gastrodon
  -- Fishing
  (129, 'fishing_old',   60.00, 28, 30, null),                      -- Magikarp
  (118, 'fishing_old',   30.00, 28, 30, null),                      -- Goldeen
  (339, 'fishing_old',   10.00, 28, 30, null),                      -- Barboach
  (129, 'fishing_good',  60.00, 28, 30, null),                      -- Magikarp
  (118, 'fishing_good',  30.00, 28, 30, null),                      -- Goldeen
  (339, 'fishing_good',  10.00, 28, 30, null),                      -- Barboach
  (130, 'fishing_super', 60.00, 28, 30, null),                      -- Gyarados
  (119, 'fishing_super', 30.00, 28, 30, null),                      -- Seaking
  (340, 'fishing_super', 10.00, 28, 30, null)                       -- Whiscash
) AS e(dex_id, method, rate, lmin, lmax, cond)
WHERE r.slug = 'union-cave-b2f' AND r.game_id = 'c3d4e5f6-a7b8-9012-cdef-345678901234';

-- -------------------------------------------
-- Route 33 (levels: 14-16)
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions)
SELECT r.id, e.dex_id, e.method, e.rate::numeric, e.lmin, e.lmax, e.cond
FROM public.routes r,
(VALUES
  -- Grass Morning/Day
  (453, 'walking', 20.00, 14::int, 16::int, 'Morning / Day'::text), -- Croagunk
  (23,  'walking', 20.00, 14, 16, 'Morning / Day'),                 -- Ekans
  (451, 'walking', 10.00, 14, 16, 'Morning / Day'),                 -- Skorupi
  (287, 'walking', 10.00, 14, 16, 'Morning / Day'),                 -- Slakoth
  (333, 'walking', 10.00, 14, 16, 'Morning / Day'),                 -- Swablu
  (190, 'walking', 10.00, 14, 16, 'Morning / Day'),                 -- Aipom
  (187, 'walking', 10.00, 14, 16, 'Morning / Day'),                 -- Hoppip
  (111, 'walking', 10.00, 14, 16, 'Morning / Day'),                 -- Rhyhorn
  -- Grass Night
  (453, 'walking', 20.00, 14, 16, 'Night'),                         -- Croagunk
  (23,  'walking', 20.00, 14, 16, 'Night'),                         -- Ekans
  (451, 'walking', 10.00, 14, 16, 'Night'),                         -- Skorupi
  (287, 'walking', 10.00, 14, 16, 'Night'),                         -- Slakoth
  (333, 'walking', 10.00, 14, 16, 'Night'),                         -- Swablu
  (190, 'walking', 10.00, 14, 16, 'Night'),                         -- Aipom
  (52,  'walking', 10.00, 14, 16, 'Night'),                         -- Meowth
  (111, 'walking', 10.00, 14, 16, 'Night'),                         -- Rhyhorn
  -- Sound
  (454, 'walking', null, null, null, 'Meridian Sound'),              -- Toxicroak
  (452, 'walking', null, null, null, 'Meridian Sound'),              -- Drapion
  (271, 'walking', null, null, null, 'Pastoral Sound')               -- Lombre
) AS e(dex_id, method, rate, lmin, lmax, cond)
WHERE r.slug = 'route-33' AND r.game_id = 'c3d4e5f6-a7b8-9012-cdef-345678901234';

-- -------------------------------------------
-- Slowpoke Well 1F (levels: 15-16)
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions)
SELECT r.id, e.dex_id, e.method, e.rate::numeric, e.lmin, e.lmax, e.cond
FROM public.routes r,
(VALUES
  -- Cave All Times
  (41,  'walking', 20.00, 15::int, 16::int, null::text),            -- Zubat
  (79,  'walking', 20.00, 15, 16, null),                            -- Slowpoke
  (92,  'walking', 10.00, 15, 16, null),                            -- Gastly
  (422, 'walking', 10.00, 15, 16, null),                            -- Shellos
  (90,  'walking', 10.00, 15, 16, null),                            -- Shellder
  (220, 'walking', 10.00, 15, 16, null),                            -- Swinub
  (361, 'walking', 10.00, 15, 16, null),                            -- Snorunt
  (436, 'walking', 10.00, 15, 16, null),                            -- Bronzor
  -- Sound
  (80,  'walking', null, null, null, 'Meridian Sound'),              -- Slowbro
  (360, 'walking', null, null, null, 'Pastoral Sound'),              -- Wynaut
  -- Surf
  (79,  'surfing', 90.00, 15, 16, null),                            -- Slowpoke
  (80,  'surfing', 10.00, 15, 16, null),                            -- Slowbro
  -- Fishing
  (129, 'fishing_old',   60.00, 15, 16, null),                      -- Magikarp
  (79,  'fishing_old',   30.00, 15, 16, null),                      -- Slowpoke
  (339, 'fishing_old',   10.00, 15, 16, null),                      -- Barboach
  (129, 'fishing_good',  60.00, 15, 16, null),                      -- Magikarp
  (339, 'fishing_good',  30.00, 15, 16, null),                      -- Barboach
  (79,  'fishing_good',  10.00, 15, 16, null),                      -- Slowpoke
  (130, 'fishing_super', 60.00, 15, 16, null),                      -- Gyarados
  (340, 'fishing_super', 30.00, 15, 16, null),                      -- Whiscash
  (80,  'fishing_super', 10.00, 15, 16, null)                       -- Slowbro
) AS e(dex_id, method, rate, lmin, lmax, cond)
WHERE r.slug = 'slowpoke-well-1f' AND r.game_id = 'c3d4e5f6-a7b8-9012-cdef-345678901234';

-- -------------------------------------------
-- Slowpoke Well B1F (levels: 28-33)
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions)
SELECT r.id, e.dex_id, e.method, e.rate::numeric, e.lmin, e.lmax, e.cond
FROM public.routes r,
(VALUES
  -- Cave All Times
  (42,  'walking', 20.00, 28::int, 33::int, null::text),            -- Golbat
  (79,  'walking', 20.00, 28, 33, null),                            -- Slowpoke
  (93,  'walking', 10.00, 28, 33, null),                            -- Haunter
  (423, 'walking', 10.00, 28, 33, null),                            -- Gastrodon
  (90,  'walking', 10.00, 28, 33, null),                            -- Shellder
  (221, 'walking', 10.00, 28, 33, null),                            -- Piloswine
  (361, 'walking', 10.00, 28, 33, null),                            -- Snorunt
  (437, 'walking', 10.00, 28, 33, null),                            -- Bronzong
  -- Sound
  (80,  'walking', null, null, null, 'Meridian Sound'),              -- Slowbro
  (362, 'walking', null, null, null, 'Meridian Sound'),              -- Glalie
  (202, 'walking', null, null, null, 'Pastoral Sound'),              -- Wobbuffet
  -- Surf
  (79,  'surfing', 60.00, 28, 33, null),                            -- Slowpoke
  (80,  'surfing', 40.00, 28, 33, null),                            -- Slowbro
  -- Fishing
  (129, 'fishing_old',   60.00, 28, 33, null),                      -- Magikarp
  (79,  'fishing_old',   30.00, 28, 33, null),                      -- Slowpoke
  (339, 'fishing_old',   10.00, 28, 33, null),                      -- Barboach
  (129, 'fishing_good',  60.00, 28, 33, null),                      -- Magikarp
  (339, 'fishing_good',  30.00, 28, 33, null),                      -- Barboach
  (79,  'fishing_good',  10.00, 28, 33, null),                      -- Slowpoke
  (130, 'fishing_super', 60.00, 28, 33, null),                      -- Gyarados
  (340, 'fishing_super', 30.00, 28, 33, null),                      -- Whiscash
  (80,  'fishing_super', 10.00, 28, 33, null)                       -- Slowbro
) AS e(dex_id, method, rate, lmin, lmax, cond)
WHERE r.slug = 'slowpoke-well-b1f' AND r.game_id = 'c3d4e5f6-a7b8-9012-cdef-345678901234';

-- -------------------------------------------
-- Ilex Forest (levels: 15-18)
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions)
SELECT r.id, e.dex_id, e.method, e.rate::numeric, e.lmin, e.lmax, e.cond
FROM public.routes r,
(VALUES
  -- Grass Morning
  (285, 'walking', 20.00, 15::int, 18::int, 'Morning'::text),      -- Shroomish
  (165, 'walking', 20.00, 15, 18, 'Morning'),                      -- Ledyba
  (204, 'walking', 10.00, 15, 18, 'Morning'),                      -- Pineco
  (102, 'walking', 10.00, 15, 18, 'Morning'),                      -- Exeggcute
  (427, 'walking', 10.00, 15, 18, 'Morning'),                      -- Buneary
  (406, 'walking', 10.00, 15, 18, 'Morning'),                      -- Budew
  (25,  'walking',  5.00, 15, 18, 'Morning'),                      -- Pikachu
  (12,  'walking',  5.00, 15, 18, 'Morning'),                      -- Butterfree
  (15,  'walking',  5.00, 15, 18, 'Morning'),                      -- Beedrill
  (315, 'walking',  5.00, 15, 18, 'Morning'),                      -- Roselia
  -- Grass Day
  (285, 'walking', 20.00, 15, 18, 'Day'),                          -- Shroomish
  (265, 'walking', 20.00, 15, 18, 'Day'),                          -- Wurmple
  (204, 'walking', 10.00, 15, 18, 'Day'),                          -- Pineco
  (102, 'walking', 10.00, 15, 18, 'Day'),                          -- Exeggcute
  (427, 'walking', 10.00, 15, 18, 'Day'),                          -- Buneary
  (406, 'walking', 10.00, 15, 18, 'Day'),                          -- Budew
  (25,  'walking',  5.00, 15, 18, 'Day'),                          -- Pikachu
  (267, 'walking',  5.00, 15, 18, 'Day'),                          -- Beautifly
  (269, 'walking',  5.00, 15, 18, 'Day'),                          -- Dustox
  (315, 'walking',  5.00, 15, 18, 'Day'),                          -- Roselia
  -- Grass Night
  (46,  'walking', 20.00, 15, 18, 'Night'),                        -- Paras
  (167, 'walking', 20.00, 15, 18, 'Night'),                        -- Spinarak
  (204, 'walking', 10.00, 15, 18, 'Night'),                        -- Pineco
  (43,  'walking', 10.00, 15, 18, 'Night'),                        -- Oddish
  (427, 'walking', 10.00, 15, 18, 'Night'),                        -- Buneary
  (48,  'walking', 10.00, 15, 18, 'Night'),                        -- Venonat
  (25,  'walking',  5.00, 15, 18, 'Night'),                        -- Pikachu
  (198, 'walking',  5.00, 15, 18, 'Night'),                        -- Murkrow
  (200, 'walking',  5.00, 15, 18, 'Night'),                        -- Misdreavus
  (455, 'walking',  5.00, 15, 18, 'Night'),                        -- Carnivine
  -- Sound
  (44,  'walking', null, null, null, 'Meridian Sound'),              -- Gloom
  (49,  'walking', null, null, null, 'Meridian Sound'),              -- Venomoth
  (172, 'walking', null, null, null, 'Pastoral Sound'),              -- Pichu
  -- Surf
  (54,  'surfing', 90.00, 15, 18, null),                            -- Psyduck
  (55,  'surfing', 10.00, 15, 18, null),                            -- Golduck
  -- Fishing
  (129, 'fishing_old',   60.00, 15, 18, null),                      -- Magikarp
  (60,  'fishing_old',   40.00, 15, 18, null),                      -- Poliwag
  (61,  'fishing_good',  90.00, 15, 18, null),                      -- Poliwhirl
  (130, 'fishing_good',  10.00, 15, 18, null),                      -- Gyarados
  (61,  'fishing_super', 60.00, 15, 18, null),                      -- Poliwhirl
  (130, 'fishing_super', 30.00, 15, 18, null),                      -- Gyarados
  (62,  'fishing_super',  5.00, 15, 18, null),                      -- Poliwrath
  (186, 'fishing_super',  5.00, 15, 18, null)                       -- Politoed
) AS e(dex_id, method, rate, lmin, lmax, cond)
WHERE r.slug = 'ilex-forest' AND r.game_id = 'c3d4e5f6-a7b8-9012-cdef-345678901234';

-- ===========================================
-- SACRED GOLD: ENCOUNTER DATA PART 2
-- Routes 34-44 (Lake of Rage) + Misc areas
-- Game ID: c3d4e5f6-a7b8-9012-cdef-345678901234
-- ===========================================

-- -------------------------------------------
-- Route 34 encounters (levels 15-19)
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions)
SELECT r.id, e.dex_id, e.method, e.rate::numeric, e.lmin, e.lmax, e.cond
FROM public.routes r,
(VALUES
  (96,  'walking', 20.00, 15, 19, null::text),   -- Drowzee
  (316, 'walking', 20.00, 15, 19, null),          -- Gulpin
  (309, 'walking', 10.00, 15, 19, null),          -- Electrike
  (438, 'walking', 10.00, 15, 19, null),          -- Bonsly
  (439, 'walking', 10.00, 15, 19, null),          -- MimeJr
  (63,  'walking', 10.00, 15, 19, null),          -- Abra
  (132, 'walking', 9.00,  15, 19, null),          -- Ditto
  (209, 'walking', 9.00,  15, 19, null),          -- Snubbull
  (64,  'walking', 2.00,  15, 19, null),          -- Kadabra
  (72,  'surfing', 95.00, 15, 19, null),          -- Tentacool
  (73,  'surfing', 5.00,  15, 19, null),          -- Tentacruel
  (118, 'fishing_old', 60.00, 15, 19, null),      -- Goldeen
  (170, 'fishing_old', 30.00, 15, 19, null),      -- Chinchou
  (120, 'fishing_old', 10.00, 15, 19, null),      -- Staryu
  (118, 'fishing_good', 60.00, 15, 19, null),     -- Goldeen
  (170, 'fishing_good', 30.00, 15, 19, null),     -- Chinchou
  (120, 'fishing_good', 10.00, 15, 19, null),     -- Staryu
  (119, 'fishing_super', 60.00, 15, 19, null),    -- Seaking
  (120, 'fishing_super', 30.00, 15, 19, null),    -- Staryu
  (171, 'fishing_super', 5.00,  15, 19, null),    -- Lanturn
  (121, 'fishing_super', 5.00,  15, 19, null),    -- Starmie
  (310, 'walking', null::numeric, null::int, null::int, 'Meridian Sound'),  -- Manectric
  (97,  'walking', null,  null, null, 'Meridian Sound'),  -- Hypno
  (280, 'walking', null,  null, null, 'Pastoral Sound'),  -- Ralts
  (281, 'walking', null,  null, null, 'Pastoral Sound'),  -- Kirlia
  (64,  'walking', null,  null, null, 'Swarm')            -- Kadabra
) AS e(dex_id, method, rate, lmin, lmax, cond)
WHERE r.slug = 'route-34' AND r.game_id = 'c3d4e5f6-a7b8-9012-cdef-345678901234';

-- -------------------------------------------
-- Route 35 encounters (levels 17-19)
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions)
SELECT r.id, e.dex_id, e.method, e.rate::numeric, e.lmin, e.lmax, e.cond
FROM public.routes r,
(VALUES
  (32,  'walking', 20.00, 17, 19, 'Morning / Day'::text),  -- NidoranM
  (29,  'walking', 20.00, 17, 19, 'Morning / Day'),         -- NidoranF
  (17,  'walking', 10.00, 17, 19, 'Morning / Day'),         -- Pidgeotto
  (434, 'walking', 10.00, 17, 19, 'Morning / Day'),         -- Stunky
  (431, 'walking', 10.00, 17, 19, 'Morning / Day'),         -- Glameow
  (397, 'walking', 10.00, 17, 19, 'Morning / Day'),         -- Staravia
  (314, 'walking', 5.00,  17, 19, 'Morning / Day'),         -- Illumise
  (313, 'walking', 5.00,  17, 19, 'Morning / Day'),         -- Volbeat
  (132, 'walking', 5.00,  17, 19, 'Morning / Day'),         -- Ditto
  (193, 'walking', 5.00,  17, 19, 'Morning / Day'),         -- Yanma
  (32,  'walking', 20.00, 17, 19, 'Night'::text),           -- NidoranM
  (29,  'walking', 20.00, 17, 19, 'Night'),                 -- NidoranF
  (52,  'walking', 10.00, 17, 19, 'Night'),                 -- Meowth
  (434, 'walking', 10.00, 17, 19, 'Night'),                 -- Stunky
  (431, 'walking', 10.00, 17, 19, 'Night'),                 -- Glameow
  (164, 'walking', 10.00, 17, 19, 'Night'),                 -- Noctowl
  (314, 'walking', 5.00,  17, 19, 'Night'),                 -- Illumise
  (313, 'walking', 5.00,  17, 19, 'Night'),                 -- Volbeat
  (132, 'walking', 5.00,  17, 19, 'Night'),                 -- Ditto
  (193, 'walking', 5.00,  17, 19, 'Night'),                 -- Yanma
  (54,  'surfing', 90.00, 17, 19, null::text),              -- Psyduck
  (55,  'surfing', 10.00, 17, 19, null),                    -- Golduck
  (129, 'fishing_old', 65.00, 17, 19, null),                -- Magikarp
  (54,  'fishing_old', 35.00, 17, 19, null),                -- Psyduck
  (129, 'fishing_good', 60.00, 17, 19, null),               -- Magikarp
  (370, 'fishing_good', 35.00, 17, 19, null),               -- Luvdisc
  (54,  'fishing_good', 5.00,  17, 19, null),               -- Psyduck
  (370, 'fishing_super', 60.00, 17, 19, null),              -- Luvdisc
  (54,  'fishing_super', 35.00, 17, 19, null),              -- Psyduck
  (130, 'fishing_super', 5.00,  17, 19, null),              -- Gyarados
  (435, 'walking', null::numeric, null::int, null::int, 'Meridian Sound'),  -- Skuntank
  (432, 'walking', null,  null, null, 'Meridian Sound'),     -- Purugly
  (193, 'walking', null,  null, null, 'Pastoral Sound'),     -- Yanma
  (314, 'walking', null,  null, null, 'Swarm')               -- Illumise
) AS e(dex_id, method, rate, lmin, lmax, cond)
WHERE r.slug = 'route-35' AND r.game_id = 'c3d4e5f6-a7b8-9012-cdef-345678901234';

-- -------------------------------------------
-- National Park encounters (levels 17-19)
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions)
SELECT r.id, e.dex_id, e.method, e.rate::numeric, e.lmin, e.lmax, e.cond
FROM public.routes r,
(VALUES
  (11,  'walking', 20.00, 17, 19, 'Morning'::text),         -- Metapod
  (14,  'walking', 20.00, 17, 19, 'Morning'),               -- Kakuna
  (415, 'walking', 10.00, 17, 19, 'Morning'),               -- Combee
  (276, 'walking', 10.00, 17, 19, 'Morning'),               -- Taillow
  (290, 'walking', 10.00, 17, 19, 'Morning'),               -- Nincada
  (412, 'walking', 10.00, 17, 19, 'Morning'),               -- Burmy
  (123, 'walking', 5.00,  17, 19, 'Morning'),               -- Scyther
  (127, 'walking', 5.00,  17, 19, 'Morning'),               -- Pinsir
  (214, 'walking', 5.00,  17, 19, 'Morning'),               -- Heracross
  (402, 'walking', 5.00,  17, 19, 'Morning'),               -- Kricketune
  (11,  'walking', 20.00, 17, 19, 'Day'::text),             -- Metapod
  (14,  'walking', 20.00, 17, 19, 'Day'),                   -- Kakuna
  (415, 'walking', 10.00, 17, 19, 'Day'),                   -- Combee
  (276, 'walking', 10.00, 17, 19, 'Day'),                   -- Taillow
  (191, 'walking', 10.00, 17, 19, 'Day'),                   -- Sunkern
  (412, 'walking', 10.00, 17, 19, 'Day'),                   -- Burmy
  (123, 'walking', 5.00,  17, 19, 'Day'),                   -- Scyther
  (127, 'walking', 5.00,  17, 19, 'Day'),                   -- Pinsir
  (214, 'walking', 5.00,  17, 19, 'Day'),                   -- Heracross
  (402, 'walking', 5.00,  17, 19, 'Day'),                   -- Kricketune
  (11,  'walking', 20.00, 17, 19, 'Night'::text),           -- Metapod
  (14,  'walking', 20.00, 17, 19, 'Night'),                 -- Kakuna
  (415, 'walking', 10.00, 17, 19, 'Night'),                 -- Combee
  (261, 'walking', 10.00, 17, 19, 'Night'),                 -- Poochyena
  (290, 'walking', 10.00, 17, 19, 'Night'),                 -- Nincada
  (412, 'walking', 10.00, 17, 19, 'Night'),                 -- Burmy
  (123, 'walking', 5.00,  17, 19, 'Night'),                 -- Scyther
  (127, 'walking', 5.00,  17, 19, 'Night'),                 -- Pinsir
  (214, 'walking', 5.00,  17, 19, 'Night'),                 -- Heracross
  (402, 'walking', 5.00,  17, 19, 'Night'),                 -- Kricketune
  (12,  'walking', null::numeric, null::int, null::int, 'Meridian Sound'),  -- Butterfree
  (15,  'walking', null,  null, null, 'Meridian Sound'),     -- Beedrill
  (123, 'walking', null,  null, null, 'Pastoral Sound'),     -- Scyther
  (214, 'walking', null,  null, null, 'Pastoral Sound')      -- Heracross
) AS e(dex_id, method, rate, lmin, lmax, cond)
WHERE r.slug = 'national-park' AND r.game_id = 'c3d4e5f6-a7b8-9012-cdef-345678901234';

-- -------------------------------------------
-- Route 36 encounters (levels 17-19)
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions)
SELECT r.id, e.dex_id, e.method, e.rate::numeric, e.lmin, e.lmax, e.cond
FROM public.routes r,
(VALUES
  (58,  'walking', 20.00, 17, 19, 'Morning / Day'::text),   -- Growlithe
  (37,  'walking', 20.00, 17, 19, 'Morning / Day'),         -- Vulpix
  (415, 'walking', 10.00, 17, 19, 'Morning / Day'),         -- Combee
  (311, 'walking', 10.00, 17, 19, 'Morning / Day'),         -- Plusle
  (312, 'walking', 10.00, 17, 19, 'Morning / Day'),         -- Minun
  (33,  'walking', 10.00, 17, 19, 'Morning / Day'),         -- Nidorino
  (30,  'walking', 10.00, 17, 19, 'Morning / Day'),         -- Nidorina
  (397, 'walking', 5.00,  17, 19, 'Morning / Day'),         -- Staravia
  (234, 'walking', 5.00,  17, 19, 'Morning / Day'),         -- Stantler
  (58,  'walking', 20.00, 17, 19, 'Night'::text),           -- Growlithe
  (37,  'walking', 20.00, 17, 19, 'Night'),                 -- Vulpix
  (415, 'walking', 10.00, 17, 19, 'Night'),                 -- Combee
  (311, 'walking', 10.00, 17, 19, 'Night'),                 -- Plusle
  (312, 'walking', 10.00, 17, 19, 'Night'),                 -- Minun
  (33,  'walking', 10.00, 17, 19, 'Night'),                 -- Nidorino
  (30,  'walking', 10.00, 17, 19, 'Night'),                 -- Nidorina
  (164, 'walking', 5.00,  17, 19, 'Night'),                 -- Noctowl
  (234, 'walking', 5.00,  17, 19, 'Night'),                 -- Stantler
  (416, 'walking', null::numeric, null::int, null::int, 'Meridian Sound'),  -- Vespiquen
  (438, 'walking', null,  null, null, 'Pastoral Sound'),     -- Bonsly
  (439, 'walking', null,  null, null, 'Pastoral Sound')      -- MimeJr
) AS e(dex_id, method, rate, lmin, lmax, cond)
WHERE r.slug = 'route-36' AND r.game_id = 'c3d4e5f6-a7b8-9012-cdef-345678901234';

-- -------------------------------------------
-- Route 37 encounters (levels 21-24)
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions)
SELECT r.id, e.dex_id, e.method, e.rate::numeric, e.lmin, e.lmax, e.cond
FROM public.routes r,
(VALUES
  (58,  'walking', 20.00, 21, 24, 'Morning / Day'::text),   -- Growlithe
  (37,  'walking', 20.00, 21, 24, 'Morning / Day'),         -- Vulpix
  (234, 'walking', 10.00, 21, 24, 'Morning / Day'),         -- Stantler
  (166, 'walking', 10.00, 21, 24, 'Morning / Day'),         -- Ledian
  (17,  'walking', 10.00, 21, 24, 'Morning / Day'),         -- Pidgeotto
  (33,  'walking', 10.00, 21, 24, 'Morning / Day'),         -- Nidorino
  (30,  'walking', 10.00, 21, 24, 'Morning / Day'),         -- Nidorina
  (335, 'walking', 5.00,  21, 24, 'Morning / Day'),         -- Zangoose
  (336, 'walking', 5.00,  21, 24, 'Morning / Day'),         -- Seviper
  (58,  'walking', 20.00, 21, 24, 'Night'::text),           -- Growlithe
  (37,  'walking', 20.00, 21, 24, 'Night'),                 -- Vulpix
  (234, 'walking', 10.00, 21, 24, 'Night'),                 -- Stantler
  (168, 'walking', 10.00, 21, 24, 'Night'),                 -- Ariados
  (164, 'walking', 10.00, 21, 24, 'Night'),                 -- Noctowl
  (262, 'walking', 10.00, 21, 24, 'Night'),                 -- Mightyena
  (264, 'walking', 10.00, 21, 24, 'Night'),                 -- Linoone
  (335, 'walking', 5.00,  21, 24, 'Night'),                 -- Zangoose
  (336, 'walking', 5.00,  21, 24, 'Night'),                 -- Seviper
  (59,  'walking', null::numeric, null::int, null::int, 'Meridian Sound'),  -- Arcanine
  (38,  'walking', null,  null, null, 'Meridian Sound'),     -- Ninetales
  (335, 'walking', null,  null, null, 'Pastoral Sound'),     -- Zangoose
  (336, 'walking', null,  null, null, 'Pastoral Sound')      -- Seviper
) AS e(dex_id, method, rate, lmin, lmax, cond)
WHERE r.slug = 'route-37' AND r.game_id = 'c3d4e5f6-a7b8-9012-cdef-345678901234';

-- -------------------------------------------
-- Ecruteak City encounters (levels null)
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions)
SELECT r.id, e.dex_id, e.method, e.rate::numeric, e.lmin, e.lmax, e.cond
FROM public.routes r,
(VALUES
  (60,  'surfing', 90.00, null::int, null::int, null::text),  -- Poliwag
  (61,  'surfing', 10.00, null, null, null),                   -- Poliwhirl
  (129, 'fishing_old', 100.00, null, null, null),              -- Magikarp
  (129, 'fishing_good', 60.00, null, null, null),              -- Magikarp
  (60,  'fishing_good', 40.00, null, null, null),              -- Poliwag
  (61,  'fishing_super', 60.00, null, null, null),             -- Poliwhirl
  (130, 'fishing_super', 40.00, null, null, null)              -- Gyarados
) AS e(dex_id, method, rate, lmin, lmax, cond)
WHERE r.slug = 'ecruteak-city' AND r.game_id = 'c3d4e5f6-a7b8-9012-cdef-345678901234';

-- -------------------------------------------
-- Burned Tower 1F encounters (levels 22-23)
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions)
SELECT r.id, e.dex_id, e.method, e.rate::numeric, e.lmin, e.lmax, e.cond
FROM public.routes r,
(VALUES
  (19,  'walking', 20.00, 22, 23, null::text),    -- Rattata
  (109, 'walking', 20.00, 22, 23, null),           -- Koffing
  (263, 'walking', 10.00, 22, 23, null),           -- Zigzagoon
  (104, 'walking', 10.00, 22, 23, null),           -- Cubone
  (240, 'walking', 10.00, 22, 23, null),           -- Magby
  (88,  'walking', 10.00, 22, 23, null),           -- Grimer
  (355, 'walking', 10.00, 22, 23, null),           -- Duskull
  (353, 'walking', 10.00, 22, 23, null),           -- Shuppet
  (20,  'walking', null::numeric, null::int, null::int, 'Meridian Sound'),  -- Raticate
  (105, 'walking', null,  null, null, 'Meridian Sound'),  -- Marowak
  (358, 'walking', null,  null, null, 'Pastoral Sound')   -- Chimecho
) AS e(dex_id, method, rate, lmin, lmax, cond)
WHERE r.slug = 'burned-tower-1f' AND r.game_id = 'c3d4e5f6-a7b8-9012-cdef-345678901234';

-- -------------------------------------------
-- Burned Tower B1F encounters (levels 23-24)
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions)
SELECT r.id, e.dex_id, e.method, e.rate::numeric, e.lmin, e.lmax, e.cond
FROM public.routes r,
(VALUES
  (20,  'walking', 20.00, 23, 24, null::text),    -- Raticate
  (109, 'walking', 20.00, 23, 24, null),           -- Koffing
  (264, 'walking', 10.00, 23, 24, null),           -- Linoone
  (104, 'walking', 10.00, 23, 24, null),           -- Cubone
  (240, 'walking', 10.00, 23, 24, null),           -- Magby
  (88,  'walking', 10.00, 23, 24, null),           -- Grimer
  (355, 'walking', 10.00, 23, 24, null),           -- Duskull
  (353, 'walking', 10.00, 23, 24, null),           -- Shuppet
  (110, 'walking', null::numeric, null::int, null::int, 'Meridian Sound'),  -- Weezing
  (126, 'walking', null,  null, null, 'Meridian Sound'),  -- Magmar
  (358, 'walking', null,  null, null, 'Pastoral Sound')   -- Chimecho
) AS e(dex_id, method, rate, lmin, lmax, cond)
WHERE r.slug = 'burned-tower-b1f' AND r.game_id = 'c3d4e5f6-a7b8-9012-cdef-345678901234';

-- -------------------------------------------
-- Dark Cave Blackthorn encounters (levels 26-30)
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions)
SELECT r.id, e.dex_id, e.method, e.rate::numeric, e.lmin, e.lmax, e.cond
FROM public.routes r,
(VALUES
  (75,  'walking', 20.00, 26, 30, null::text),    -- Graveler
  (42,  'walking', 20.00, 26, 30, null),           -- Golbat
  (216, 'walking', 20.00, 26, 30, null),           -- Teddiursa
  (218, 'walking', 20.00, 26, 30, null),           -- Slugma
  (202, 'walking', 15.00, 26, 30, null),           -- Wobbuffet
  (217, 'walking', 5.00,  26, 30, null),           -- Ursaring
  (422, 'surfing', 60.00, 26, 30, null),           -- Shellos
  (194, 'surfing', 30.00, 26, 30, null),           -- Wooper
  (423, 'surfing', 10.00, 26, 30, null),           -- Gastrodon
  (118, 'fishing_old', 60.00, 26, 30, null),       -- Goldeen
  (339, 'fishing_old', 30.00, 26, 30, null),       -- Barboach
  (194, 'fishing_old', 10.00, 26, 30, null),       -- Wooper
  (118, 'fishing_good', 60.00, 26, 30, null),      -- Goldeen
  (339, 'fishing_good', 30.00, 26, 30, null),      -- Barboach
  (195, 'fishing_good', 10.00, 26, 30, null),      -- Quagsire
  (119, 'fishing_super', 60.00, 26, 30, null),     -- Seaking
  (340, 'fishing_super', 30.00, 26, 30, null),     -- Whiscash
  (195, 'fishing_super', 10.00, 26, 30, null),     -- Quagsire
  (76,  'walking', null::numeric, null::int, null::int, 'Meridian Sound'),  -- Golem
  (217, 'walking', null,  null, null, 'Meridian Sound'),  -- Ursaring
  (195, 'walking', null,  null, null, 'Pastoral Sound')   -- Quagsire
) AS e(dex_id, method, rate, lmin, lmax, cond)
WHERE r.slug = 'dark-cave-blackthorn' AND r.game_id = 'c3d4e5f6-a7b8-9012-cdef-345678901234';

-- -------------------------------------------
-- Route 38 encounters (levels 26-27)
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions)
SELECT r.id, e.dex_id, e.method, e.rate::numeric, e.lmin, e.lmax, e.cond
FROM public.routes r,
(VALUES
  (84,  'walking', 20.00, 26, 27, 'Morning / Day'::text),   -- Doduo
  (404, 'walking', 20.00, 26, 27, 'Morning / Day'),         -- Luxio
  (81,  'walking', 10.00, 26, 27, 'Morning / Day'),         -- Magnemite
  (56,  'walking', 10.00, 26, 27, 'Morning / Day'),         -- Mankey
  (100, 'walking', 10.00, 26, 27, 'Morning / Day'),         -- Voltorb
  (239, 'walking', 10.00, 26, 27, 'Morning / Day'),         -- Elekid
  (83,  'walking', 5.00,  26, 27, 'Morning / Day'),         -- Farfetchd
  (241, 'walking', 5.00,  26, 27, 'Morning / Day'),         -- Miltank
  (128, 'walking', 5.00,  26, 27, 'Morning / Day'),         -- Tauros
  (420, 'walking', 5.00,  26, 27, 'Morning / Day'),         -- Cherubi
  (52,  'walking', 20.00, 26, 27, 'Night'::text),           -- Meowth
  (404, 'walking', 20.00, 26, 27, 'Night'),                 -- Luxio
  (81,  'walking', 10.00, 26, 27, 'Night'),                 -- Magnemite
  (56,  'walking', 10.00, 26, 27, 'Night'),                 -- Mankey
  (100, 'walking', 10.00, 26, 27, 'Night'),                 -- Voltorb
  (239, 'walking', 10.00, 26, 27, 'Night'),                 -- Elekid
  (83,  'walking', 5.00,  26, 27, 'Night'),                 -- Farfetchd
  (241, 'walking', 5.00,  26, 27, 'Night'),                 -- Miltank
  (128, 'walking', 5.00,  26, 27, 'Night'),                 -- Tauros
  (300, 'walking', 5.00,  26, 27, 'Night'),                 -- Skitty
  (85,  'walking', null::numeric, null::int, null::int, 'Meridian Sound'),  -- Dodrio
  (125, 'walking', null,  null, null, 'Meridian Sound'),     -- Electabuzz
  (300, 'walking', null,  null, null, 'Pastoral Sound'),     -- Skitty
  (420, 'walking', null,  null, null, 'Pastoral Sound'),     -- Cherubi
  (83,  'walking', null,  null, null, 'Swarm')               -- Farfetchd
) AS e(dex_id, method, rate, lmin, lmax, cond)
WHERE r.slug = 'route-38' AND r.game_id = 'c3d4e5f6-a7b8-9012-cdef-345678901234';

-- -------------------------------------------
-- Route 39 encounters (levels 27-28)
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions)
SELECT r.id, e.dex_id, e.method, e.rate::numeric, e.lmin, e.lmax, e.cond
FROM public.routes r,
(VALUES
  (20,  'walking', 20.00, 27, 28, 'Morning / Day'::text),   -- Raticate
  (77,  'walking', 20.00, 27, 28, 'Morning / Day'),         -- Ponyta
  (239, 'walking', 10.00, 27, 28, 'Morning / Day'),         -- Elekid
  (56,  'walking', 10.00, 27, 28, 'Morning / Day'),         -- Mankey
  (100, 'walking', 10.00, 27, 28, 'Morning / Day'),         -- Voltorb
  (420, 'walking', 10.00, 27, 28, 'Morning / Day'),         -- Cherubi
  (83,  'walking', 5.00,  27, 28, 'Morning / Day'),         -- Farfetchd
  (241, 'walking', 5.00,  27, 28, 'Morning / Day'),         -- Miltank
  (128, 'walking', 5.00,  27, 28, 'Morning / Day'),         -- Tauros
  (17,  'walking', 5.00,  27, 28, 'Morning / Day'),         -- Pidgeotto
  (20,  'walking', 20.00, 27, 28, 'Night'::text),           -- Raticate
  (77,  'walking', 20.00, 27, 28, 'Night'),                 -- Ponyta
  (239, 'walking', 10.00, 27, 28, 'Night'),                 -- Elekid
  (56,  'walking', 10.00, 27, 28, 'Night'),                 -- Mankey
  (100, 'walking', 10.00, 27, 28, 'Night'),                 -- Voltorb
  (52,  'walking', 10.00, 27, 28, 'Night'),                 -- Meowth
  (83,  'walking', 5.00,  27, 28, 'Night'),                 -- Farfetchd
  (241, 'walking', 5.00,  27, 28, 'Night'),                 -- Miltank
  (128, 'walking', 5.00,  27, 28, 'Night'),                 -- Tauros
  (300, 'walking', 5.00,  27, 28, 'Night'),                 -- Skitty
  (78,  'walking', null::numeric, null::int, null::int, 'Meridian Sound'),  -- Rapidash
  (57,  'walking', null,  null, null, 'Meridian Sound'),     -- Primeape
  (300, 'walking', null,  null, null, 'Pastoral Sound'),     -- Skitty
  (420, 'walking', null,  null, null, 'Pastoral Sound')      -- Cherubi
) AS e(dex_id, method, rate, lmin, lmax, cond)
WHERE r.slug = 'route-39' AND r.game_id = 'c3d4e5f6-a7b8-9012-cdef-345678901234';

-- -------------------------------------------
-- Olivine City encounters (levels null)
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions)
SELECT r.id, e.dex_id, e.method, e.rate::numeric, e.lmin, e.lmax, e.cond
FROM public.routes r,
(VALUES
  (72,  'surfing', 65.00, null::int, null::int, null::text),  -- Tentacool
  (278, 'surfing', 30.00, null, null, null),                   -- Wingull
  (73,  'surfing', 5.00,  null, null, null),                   -- Tentacruel
  (129, 'fishing_old', 95.00, null, null, null),               -- Magikarp
  (120, 'fishing_old', 5.00,  null, null, null),               -- Staryu
  (129, 'fishing_good', 60.00, null, null, null),              -- Magikarp
  (120, 'fishing_good', 30.00, null, null, null),              -- Staryu
  (170, 'fishing_good', 10.00, null, null, null),              -- Chinchou
  (120, 'fishing_super', 60.00, null, null, null),             -- Staryu
  (170, 'fishing_super', 30.00, null, null, null),             -- Chinchou
  (171, 'fishing_super', 5.00,  null, null, null),             -- Lanturn
  (130, 'fishing_super', 5.00,  null, null, null)              -- Gyarados
) AS e(dex_id, method, rate, lmin, lmax, cond)
WHERE r.slug = 'olivine-city' AND r.game_id = 'c3d4e5f6-a7b8-9012-cdef-345678901234';

-- -------------------------------------------
-- Route 40 encounters (levels 25-35)
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions)
SELECT r.id, e.dex_id, e.method, e.rate::numeric, e.lmin, e.lmax, e.cond
FROM public.routes r,
(VALUES
  (278, 'surfing', 60.00, 25, 35, null::text),    -- Wingull
  (72,  'surfing', 30.00, 25, 35, null),           -- Tentacool
  (279, 'surfing', 5.00,  25, 35, null),           -- Pelipper
  (73,  'surfing', 3.00,  25, 35, null),           -- Tentacruel
  (489, 'surfing', 2.00,  25, 35, null),           -- Phione
  (129, 'fishing_old', 60.00, 25, 35, null),       -- Magikarp
  (72,  'fishing_old', 40.00, 25, 35, null),       -- Tentacool
  (120, 'fishing_good', 60.00, 25, 35, null),      -- Staryu
  (456, 'fishing_good', 35.00, 25, 35, null),      -- Finneon
  (222, 'fishing_good', 5.00,  25, 35, null),      -- Corsola
  (456, 'fishing_super', 60.00, 25, 35, null),     -- Finneon
  (222, 'fishing_super', 30.00, 25, 35, null),     -- Corsola
  (457, 'fishing_super', 10.00, 25, 35, null)      -- Lumineon
) AS e(dex_id, method, rate, lmin, lmax, cond)
WHERE r.slug = 'route-40' AND r.game_id = 'c3d4e5f6-a7b8-9012-cdef-345678901234';

-- -------------------------------------------
-- Route 41 encounters (levels 25-35)
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions)
SELECT r.id, e.dex_id, e.method, e.rate::numeric, e.lmin, e.lmax, e.cond
FROM public.routes r,
(VALUES
  (278, 'surfing', 60.00, 25, 35, null::text),    -- Wingull
  (458, 'surfing', 30.00, 25, 35, null),           -- Mantyke
  (226, 'surfing', 5.00,  25, 35, null),           -- Mantine
  (73,  'surfing', 3.00,  25, 35, null),           -- Tentacruel
  (489, 'surfing', 2.00,  25, 35, null),           -- Phione
  (129, 'fishing_old', 60.00, 25, 35, null),       -- Magikarp
  (72,  'fishing_old', 30.00, 25, 35, null),       -- Tentacool
  (116, 'fishing_old', 10.00, 25, 35, null),       -- Horsea
  (320, 'fishing_good', 60.00, 25, 35, null),      -- Wailmer
  (116, 'fishing_good', 30.00, 25, 35, null),      -- Horsea
  (170, 'fishing_good', 5.00,  25, 35, null),      -- Chinchou
  (222, 'fishing_good', 5.00,  25, 35, null),      -- Corsola
  (117, 'fishing_super', 60.00, 25, 35, null),     -- Seadra
  (222, 'fishing_super', 30.00, 25, 35, null),     -- Corsola
  (171, 'fishing_super', 7.00,  25, 35, null),     -- Lanturn
  (321, 'fishing_super', 3.00,  25, 35, null)      -- Wailord
) AS e(dex_id, method, rate, lmin, lmax, cond)
WHERE r.slug = 'route-41' AND r.game_id = 'c3d4e5f6-a7b8-9012-cdef-345678901234';

-- -------------------------------------------
-- Cianwood City encounters (levels null)
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions)
SELECT r.id, e.dex_id, e.method, e.rate::numeric, e.lmin, e.lmax, e.cond
FROM public.routes r,
(VALUES
  (213, 'rock_smash', 90.00, null::int, null::int, null::text),  -- Shuckle
  (99,  'rock_smash', 10.00, null, null, null),                   -- Kingler
  (278, 'surfing', 60.00, null, null, null),                      -- Wingull
  (72,  'surfing', 30.00, null, null, null),                      -- Tentacool
  (279, 'surfing', 5.00,  null, null, null),                      -- Pelipper
  (73,  'surfing', 5.00,  null, null, null),                      -- Tentacruel
  (129, 'fishing_old', 60.00, null, null, null),                  -- Magikarp
  (318, 'fishing_old', 40.00, null, null, null),                  -- Carvanha
  (318, 'fishing_good', 60.00, null, null, null),                 -- Carvanha
  (366, 'fishing_good', 40.00, null, null, null),                 -- Clamperl
  (318, 'fishing_super', 60.00, null, null, null),                -- Carvanha
  (366, 'fishing_super', 30.00, null, null, null),                -- Clamperl
  (319, 'fishing_super', 10.00, null, null, null)                 -- Sharpedo
) AS e(dex_id, method, rate, lmin, lmax, cond)
WHERE r.slug = 'cianwood-city' AND r.game_id = 'c3d4e5f6-a7b8-9012-cdef-345678901234';

-- -------------------------------------------
-- Route 47 encounters (levels 41-45)
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions)
SELECT r.id, e.dex_id, e.method, e.rate::numeric, e.lmin, e.lmax, e.cond
FROM public.routes r,
(VALUES
  (83,  'walking', 20.00, 41, 45, 'Morning / Day'::text),   -- Farfetchd
  (132, 'walking', 20.00, 41, 45, 'Morning / Day'),         -- Ditto
  (241, 'walking', 10.00, 41, 45, 'Morning / Day'),         -- Miltank
  (44,  'walking', 10.00, 41, 45, 'Morning / Day'),         -- Gloom
  (70,  'walking', 10.00, 41, 45, 'Morning / Day'),         -- Weepinbell
  (22,  'walking', 10.00, 41, 45, 'Morning / Day'),         -- Fearow
  (20,  'walking', 10.00, 41, 45, 'Morning / Day'),         -- Raticate
  (277, 'walking', 10.00, 41, 45, 'Morning / Day'),         -- Swellow
  (49,  'walking', 20.00, 41, 45, 'Night'::text),           -- Venomoth
  (132, 'walking', 20.00, 41, 45, 'Night'),                 -- Ditto
  (241, 'walking', 10.00, 41, 45, 'Night'),                 -- Miltank
  (44,  'walking', 10.00, 41, 45, 'Night'),                 -- Gloom
  (70,  'walking', 10.00, 41, 45, 'Night'),                 -- Weepinbell
  (22,  'walking', 10.00, 41, 45, 'Night'),                 -- Fearow
  (20,  'walking', 10.00, 41, 45, 'Night'),                 -- Raticate
  (164, 'walking', 10.00, 41, 45, 'Night'),                 -- Noctowl
  (278, 'surfing', 60.00, 41, 45, null::text),              -- Wingull
  (86,  'surfing', 30.00, 41, 45, null),                    -- Seel
  (363, 'surfing', 10.00, 41, 45, null),                    -- Spheal
  (129, 'fishing_old', 90.00, 41, 45, null),                -- Magikarp
  (72,  'fishing_old', 10.00, 41, 45, null),                -- Tentacool
  (72,  'fishing_good', 60.00, 41, 45, null),               -- Tentacool
  (90,  'fishing_good', 30.00, 41, 45, null),               -- Shellder
  (170, 'fishing_good', 10.00, 41, 45, null),               -- Chinchou
  (90,  'fishing_super', 60.00, 41, 45, null),              -- Shellder
  (72,  'fishing_super', 30.00, 41, 45, null),              -- Tentacool
  (73,  'fishing_super', 7.00,  41, 45, null),              -- Tentacruel
  (171, 'fishing_super', 3.00,  41, 45, null),              -- Lanturn
  (182, 'walking', null::numeric, null::int, null::int, 'Meridian Sound'),  -- Bellossom
  (71,  'walking', null,  null, null, 'Meridian Sound'),     -- Victreebel
  (193, 'walking', null,  null, null, 'Pastoral Sound'),     -- Yanma
  (334, 'walking', null,  null, null, 'Swarm')               -- Altaria
) AS e(dex_id, method, rate, lmin, lmax, cond)
WHERE r.slug = 'route-47' AND r.game_id = 'c3d4e5f6-a7b8-9012-cdef-345678901234';

-- -------------------------------------------
-- Cliff Cave encounters (levels 30-33)
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions)
SELECT r.id, e.dex_id, e.method, e.rate::numeric, e.lmin, e.lmax, e.cond
FROM public.routes r,
(VALUES
  (75,  'walking', 20.00, 30, 33, null::text),    -- Graveler
  (42,  'walking', 20.00, 30, 33, null),           -- Golbat
  (343, 'walking', 10.00, 30, 33, null),           -- Baltoy
  (67,  'walking', 10.00, 30, 33, null),           -- Machoke
  (328, 'walking', 10.00, 30, 33, null),           -- Trapinch
  (99,  'walking', 10.00, 30, 33, null),           -- Kingler
  (195, 'walking', 10.00, 30, 33, null),           -- Quagsire
  (449, 'walking', 8.00,  30, 33, null),           -- Hippopotas
  (208, 'walking', 2.00,  30, 33, null),           -- Steelix
  (98,  'rock_smash', 90.00, 30, 33, null),        -- Krabby
  (75,  'rock_smash', 10.00, 30, 33, null),        -- Graveler
  (344, 'walking', null::numeric, null::int, null::int, 'Meridian Sound'),  -- Claydol
  (450, 'walking', null,  null, null, 'Meridian Sound'),  -- Hippowdon
  (95,  'walking', null,  null, null, 'Pastoral Sound'),  -- Onix
  (200, 'walking', null,  null, null, 'Pastoral Sound')   -- Misdreavus
) AS e(dex_id, method, rate, lmin, lmax, cond)
WHERE r.slug = 'cliff-cave' AND r.game_id = 'c3d4e5f6-a7b8-9012-cdef-345678901234';

-- -------------------------------------------
-- Route 48 encounters (levels 30-33)
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions)
SELECT r.id, e.dex_id, e.method, e.rate::numeric, e.lmin, e.lmax, e.cond
FROM public.routes r,
(VALUES
  (83,  'walking', 20.00, 30, 33, 'Morning / Day'::text),   -- Farfetchd
  (114, 'walking', 20.00, 30, 33, 'Morning / Day'),         -- Tangela
  (50,  'walking', 10.00, 30, 33, 'Morning / Day'),         -- Diglett
  (44,  'walking', 10.00, 30, 33, 'Morning / Day'),         -- Gloom
  (70,  'walking', 10.00, 30, 33, 'Morning / Day'),         -- Weepinbell
  (203, 'walking', 10.00, 30, 33, 'Morning / Day'),         -- Girafarig
  (352, 'walking', 5.00,  30, 33, 'Morning / Day'),         -- Kecleon
  (113, 'walking', 5.00,  30, 33, 'Morning / Day'),         -- Chansey
  (359, 'walking', 5.00,  30, 33, 'Morning / Day'),         -- Absol
  (357, 'walking', 5.00,  30, 33, 'Morning / Day'),         -- Tropius
  (228, 'walking', 20.00, 30, 33, 'Night'::text),           -- Houndour
  (114, 'walking', 20.00, 30, 33, 'Night'),                 -- Tangela
  (50,  'walking', 10.00, 30, 33, 'Night'),                 -- Diglett
  (44,  'walking', 10.00, 30, 33, 'Night'),                 -- Gloom
  (70,  'walking', 10.00, 30, 33, 'Night'),                 -- Weepinbell
  (203, 'walking', 10.00, 30, 33, 'Night'),                 -- Girafarig
  (352, 'walking', 5.00,  30, 33, 'Night'),                 -- Kecleon
  (113, 'walking', 5.00,  30, 33, 'Night'),                 -- Chansey
  (359, 'walking', 5.00,  30, 33, 'Night'),                 -- Absol
  (357, 'walking', 5.00,  30, 33, 'Night'),                 -- Tropius
  (465, 'walking', null::numeric, null::int, null::int, 'Meridian Sound'),  -- Tangrowth
  (51,  'walking', null,  null, null, 'Meridian Sound'),     -- Dugtrio
  (440, 'walking', null,  null, null, 'Pastoral Sound')      -- Happiny
) AS e(dex_id, method, rate, lmin, lmax, cond)
WHERE r.slug = 'route-48' AND r.game_id = 'c3d4e5f6-a7b8-9012-cdef-345678901234';

-- -------------------------------------------
-- Route 42 encounters (levels 30-32)
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions)
SELECT r.id, e.dex_id, e.method, e.rate::numeric, e.lmin, e.lmax, e.cond
FROM public.routes r,
(VALUES
  (180, 'walking', 20.00, 30, 32, 'Morning / Day'::text),   -- Flaaffy
  (22,  'walking', 20.00, 30, 32, 'Morning / Day'),         -- Fearow
  (449, 'walking', 10.00, 30, 32, 'Morning / Day'),         -- Hippopotas
  (331, 'walking', 10.00, 30, 32, 'Morning / Day'),         -- Cacnea
  (24,  'walking', 10.00, 30, 32, 'Morning / Day'),         -- Arbok
  (28,  'walking', 10.00, 30, 32, 'Morning / Day'),         -- Sandslash
  (446, 'walking', 10.00, 30, 32, 'Morning / Day'),         -- Munchlax
  (328, 'walking', 10.00, 30, 32, 'Morning / Day'),         -- Trapinch
  (180, 'walking', 20.00, 30, 32, 'Night'::text),           -- Flaaffy
  (42,  'walking', 20.00, 30, 32, 'Night'),                 -- Golbat
  (449, 'walking', 10.00, 30, 32, 'Night'),                 -- Hippopotas
  (331, 'walking', 10.00, 30, 32, 'Night'),                 -- Cacnea
  (24,  'walking', 10.00, 30, 32, 'Night'),                 -- Arbok
  (28,  'walking', 10.00, 30, 32, 'Night'),                 -- Sandslash
  (446, 'walking', 10.00, 30, 32, 'Night'),                 -- Munchlax
  (328, 'walking', 10.00, 30, 32, 'Night'),                 -- Trapinch
  (118, 'surfing', 95.00, 30, 32, null::text),              -- Goldeen
  (119, 'surfing', 5.00,  30, 32, null),                    -- Seaking
  (118, 'fishing_old', 100.00, 30, 32, null),               -- Goldeen
  (118, 'fishing_good', 65.00, 30, 32, null),               -- Goldeen
  (318, 'fishing_good', 35.00, 30, 32, null),               -- Carvanha
  (118, 'fishing_super', 60.00, 30, 32, null),              -- Goldeen
  (318, 'fishing_super', 30.00, 30, 32, null),              -- Carvanha
  (119, 'fishing_super', 7.00,  30, 32, null),              -- Seaking
  (319, 'fishing_super', 3.00,  30, 32, null),              -- Sharpedo
  (332, 'walking', null::numeric, null::int, null::int, 'Meridian Sound'),  -- Cacturne
  (329, 'walking', null,  null, null, 'Meridian Sound'),     -- Vibrava
  (236, 'walking', null,  null, null, 'Pastoral Sound')      -- Tyrogue
) AS e(dex_id, method, rate, lmin, lmax, cond)
WHERE r.slug = 'route-42' AND r.game_id = 'c3d4e5f6-a7b8-9012-cdef-345678901234';

-- -------------------------------------------
-- Mt. Mortar 1F encounters (levels 31-34)
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions)
SELECT r.id, e.dex_id, e.method, e.rate::numeric, e.lmin, e.lmax, e.cond
FROM public.routes r,
(VALUES
  (75,  'walking', 30.00, 31, 34, null::text),    -- Graveler
  (42,  'walking', 30.00, 31, 34, null),           -- Golbat
  (111, 'walking', 10.00, 31, 34, null),           -- Rhyhorn
  (305, 'walking', 10.00, 31, 34, null),           -- Lairon
  (307, 'walking', 10.00, 31, 34, null),           -- Meditite
  (183, 'walking', 10.00, 31, 34, null),           -- Marill
  (183, 'surfing', 95.00, 31, 34, null),           -- Marill
  (184, 'surfing', 5.00,  31, 34, null),           -- Azumarill
  (118, 'fishing_old', 100.00, 31, 34, null),      -- Goldeen
  (118, 'fishing_good', 65.00, 31, 34, null),      -- Goldeen
  (339, 'fishing_good', 35.00, 31, 34, null),      -- Barboach
  (118, 'fishing_super', 60.00, 31, 34, null),     -- Goldeen
  (339, 'fishing_super', 30.00, 31, 34, null),     -- Barboach
  (119, 'fishing_super', 5.00,  31, 34, null),     -- Seaking
  (340, 'fishing_super', 5.00,  31, 34, null),     -- Whiscash
  (112, 'walking', null::numeric, null::int, null::int, 'Meridian Sound'),  -- Rhydon
  (308, 'walking', null,  null, null, 'Meridian Sound'),  -- Medicham
  (298, 'walking', null,  null, null, 'Pastoral Sound'),  -- Azurill
  (338, 'walking', null,  null, null, 'Swarm')            -- Solrock
) AS e(dex_id, method, rate, lmin, lmax, cond)
WHERE r.slug = 'mt-mortar-1f' AND r.game_id = 'c3d4e5f6-a7b8-9012-cdef-345678901234';

-- -------------------------------------------
-- Mt. Mortar 1F-2 encounters (levels 33-37)
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions)
SELECT r.id, e.dex_id, e.method, e.rate::numeric, e.lmin, e.lmax, e.cond
FROM public.routes r,
(VALUES
  (75,  'walking', 20.00, 33, 37, null::text),    -- Graveler
  (42,  'walking', 20.00, 33, 37, null),           -- Golbat
  (111, 'walking', 10.00, 33, 37, null),           -- Rhyhorn
  (305, 'walking', 10.00, 33, 37, null),           -- Lairon
  (183, 'walking', 10.00, 33, 37, null),           -- Marill
  (297, 'walking', 10.00, 33, 37, null),           -- Hariyama
  (35,  'walking', 5.00,  33, 37, null),           -- Clefairy
  (308, 'walking', 5.00,  33, 37, null),           -- Medicham
  (338, 'walking', 5.00,  33, 37, null),           -- Solrock
  (337, 'walking', 5.00,  33, 37, null),           -- Lunatone
  (112, 'walking', null::numeric, null::int, null::int, 'Meridian Sound'),  -- Rhydon
  (184, 'walking', null,  null, null, 'Meridian Sound'),  -- Azumarill
  (173, 'walking', null,  null, null, 'Pastoral Sound'),  -- Cleffa
  (35,  'walking', null,  null, null, 'Pastoral Sound')   -- Clefairy
) AS e(dex_id, method, rate, lmin, lmax, cond)
WHERE r.slug = 'mt-mortar-1f-2' AND r.game_id = 'c3d4e5f6-a7b8-9012-cdef-345678901234';

-- -------------------------------------------
-- Mt. Mortar 1F-3 encounters (levels 41-45)
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions)
SELECT r.id, e.dex_id, e.method, e.rate::numeric, e.lmin, e.lmax, e.cond
FROM public.routes r,
(VALUES
  (75,  'walking', 20.00, 41, 45, null::text),    -- Graveler
  (42,  'walking', 20.00, 41, 45, null),           -- Golbat
  (112, 'walking', 10.00, 41, 45, null),           -- Rhydon
  (305, 'walking', 10.00, 41, 45, null),           -- Lairon
  (184, 'walking', 10.00, 41, 45, null),           -- Azumarill
  (297, 'walking', 10.00, 41, 45, null),           -- Hariyama
  (35,  'walking', 5.00,  41, 45, null),           -- Clefairy
  (308, 'walking', 5.00,  41, 45, null),           -- Medicham
  (338, 'walking', 5.00,  41, 45, null),           -- Solrock
  (337, 'walking', 5.00,  41, 45, null),           -- Lunatone
  (183, 'surfing', 95.00, 41, 45, null),           -- Marill
  (184, 'surfing', 5.00,  41, 45, null),           -- Azumarill
  (118, 'fishing_old', 100.00, 41, 45, null),      -- Goldeen
  (118, 'fishing_good', 65.00, 41, 45, null),      -- Goldeen
  (339, 'fishing_good', 35.00, 41, 45, null),      -- Barboach
  (118, 'fishing_super', 60.00, 41, 45, null),     -- Goldeen
  (339, 'fishing_super', 30.00, 41, 45, null),     -- Barboach
  (119, 'fishing_super', 5.00,  41, 45, null),     -- Seaking
  (340, 'fishing_super', 5.00,  41, 45, null),     -- Whiscash
  (76,  'walking', null::numeric, null::int, null::int, 'Meridian Sound'),  -- Golem
  (36,  'walking', null,  null, null, 'Meridian Sound'),  -- Clefable
  (173, 'walking', null,  null, null, 'Pastoral Sound'),  -- Cleffa
  (298, 'walking', null,  null, null, 'Pastoral Sound')   -- Azurill
) AS e(dex_id, method, rate, lmin, lmax, cond)
WHERE r.slug = 'mt-mortar-1f-3' AND r.game_id = 'c3d4e5f6-a7b8-9012-cdef-345678901234';

-- -------------------------------------------
-- Mt. Mortar B1F encounters (levels 33-35)
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions)
SELECT r.id, e.dex_id, e.method, e.rate::numeric, e.lmin, e.lmax, e.cond
FROM public.routes r,
(VALUES
  (75,  'walking', 20.00, 33, 35, null::text),    -- Graveler
  (42,  'walking', 20.00, 33, 35, null),           -- Golbat
  (111, 'walking', 10.00, 33, 35, null),           -- Rhyhorn
  (305, 'walking', 10.00, 33, 35, null),           -- Lairon
  (67,  'walking', 10.00, 33, 35, null),           -- Machoke
  (297, 'walking', 10.00, 33, 35, null),           -- Hariyama
  (35,  'walking', 5.00,  33, 35, null),           -- Clefairy
  (183, 'walking', 5.00,  33, 35, null),           -- Marill
  (375, 'walking', 5.00,  33, 35, null),           -- Metang
  (247, 'walking', 5.00,  33, 35, null),           -- Pupitar
  (183, 'surfing', 95.00, 33, 35, null),           -- Marill
  (184, 'surfing', 5.00,  33, 35, null),           -- Azumarill
  (118, 'fishing_old', 100.00, 33, 35, null),      -- Goldeen
  (118, 'fishing_good', 65.00, 33, 35, null),      -- Goldeen
  (339, 'fishing_good', 35.00, 33, 35, null),      -- Barboach
  (118, 'fishing_super', 60.00, 33, 35, null),     -- Goldeen
  (339, 'fishing_super', 30.00, 33, 35, null),     -- Barboach
  (119, 'fishing_super', 5.00,  33, 35, null),     -- Seaking
  (340, 'fishing_super', 5.00,  33, 35, null),     -- Whiscash
  (36,  'walking', null::numeric, null::int, null::int, 'Meridian Sound'),  -- Clefable
  (184, 'walking', null,  null, null, 'Meridian Sound'),  -- Azumarill
  (447, 'walking', null,  null, null, 'Pastoral Sound')   -- Riolu
) AS e(dex_id, method, rate, lmin, lmax, cond)
WHERE r.slug = 'mt-mortar-b1f' AND r.game_id = 'c3d4e5f6-a7b8-9012-cdef-345678901234';

-- -------------------------------------------
-- Route 43 encounters (levels 34-36)
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions)
SELECT r.id, e.dex_id, e.method, e.rate::numeric, e.lmin, e.lmax, e.cond
FROM public.routes r,
(VALUES
  (17,  'walking', 20.00, 34, 36, 'Morning / Day'::text),   -- Pidgeotto
  (203, 'walking', 20.00, 34, 36, 'Morning / Day'),         -- Girafarig
  (102, 'walking', 10.00, 34, 36, 'Morning / Day'),         -- Exeggcute
  (281, 'walking', 10.00, 34, 36, 'Morning / Day'),         -- Kirlia
  (333, 'walking', 10.00, 34, 36, 'Morning / Day'),         -- Swablu
  (400, 'walking', 10.00, 34, 36, 'Morning / Day'),         -- Bibarel
  (264, 'walking', 10.00, 34, 36, 'Morning / Day'),         -- Linoone
  (310, 'walking', 10.00, 34, 36, 'Morning / Day'),         -- Manectric
  (49,  'walking', 20.00, 34, 36, 'Night'::text),           -- Venomoth
  (203, 'walking', 20.00, 34, 36, 'Night'),                 -- Girafarig
  (102, 'walking', 10.00, 34, 36, 'Night'),                 -- Exeggcute
  (281, 'walking', 10.00, 34, 36, 'Night'),                 -- Kirlia
  (333, 'walking', 10.00, 34, 36, 'Night'),                 -- Swablu
  (400, 'walking', 10.00, 34, 36, 'Night'),                 -- Bibarel
  (264, 'walking', 10.00, 34, 36, 'Night'),                 -- Linoone
  (310, 'walking', 10.00, 34, 36, 'Night'),                 -- Manectric
  (79,  'surfing', 100.00, 34, 36, null::text),             -- Slowpoke
  (129, 'fishing_old', 100.00, 34, 36, null),               -- Magikarp
  (129, 'fishing_good', 100.00, 34, 36, null),              -- Magikarp
  (130, 'fishing_super', 100.00, 34, 36, null),             -- Gyarados
  (334, 'walking', null::numeric, null::int, null::int, 'Meridian Sound'),  -- Altaria
  (440, 'walking', null,  null, null, 'Pastoral Sound'),     -- Happiny
  (113, 'walking', null,  null, null, 'Pastoral Sound')      -- Chansey
) AS e(dex_id, method, rate, lmin, lmax, cond)
WHERE r.slug = 'route-43' AND r.game_id = 'c3d4e5f6-a7b8-9012-cdef-345678901234';

-- -------------------------------------------
-- Lake of Rage encounters (levels 10-50)
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions)
SELECT r.id, e.dex_id, e.method, e.rate::numeric, e.lmin, e.lmax, e.cond
FROM public.routes r,
(VALUES
  (129, 'surfing', 100.00, 10, 50, null::text),             -- Magikarp
  (129, 'fishing_old', 95.00, 10, 50, null),                -- Magikarp
  (349, 'fishing_old', 5.00,  10, 50, null),                -- Feebas
  (129, 'fishing_good', 60.00, 10, 50, null),               -- Magikarp
  (130, 'fishing_good', 30.00, 10, 50, null),               -- Gyarados
  (349, 'fishing_good', 10.00, 10, 50, null),               -- Feebas
  (129, 'fishing_super', 60.00, 10, 50, null),              -- Magikarp
  (349, 'fishing_super', 30.00, 10, 50, null),              -- Feebas
  (130, 'fishing_super', 7.00,  10, 50, null),              -- Gyarados
  (350, 'fishing_super', 3.00,  10, 50, null)               -- Milotic
) AS e(dex_id, method, rate, lmin, lmax, cond)
WHERE r.slug = 'lake-of-rage' AND r.game_id = 'c3d4e5f6-a7b8-9012-cdef-345678901234';

-- ===========================================
-- SACRED GOLD: ENCOUNTER DATA (Part 3)
-- Whirl Islands, Route 44, Ice Path, Blackthorn,
-- Route 45, Dragons Den, Tohjo Falls,
-- Routes 27 & 26, Victory Road
-- ===========================================
-- Game ID: c3d4e5f6-a7b8-9012-cdef-345678901234
-- ===========================================

-- -------------------------------------------
-- Whirl Islands 1F encounters (levels 34-36)
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions)
SELECT r.id, e.dex_id, e.method, e.rate::numeric, e.lmin, e.lmax, e.cond
FROM public.routes r,
(VALUES
  (98,  'walking', 20.00, 34::int, 36::int, null::text),  -- Krabby
  (86,  'walking', 20.00, 34, 36, null),                   -- Seel
  (54,  'walking', 20.00, 34, 36, null),                   -- Psyduck
  (363, 'walking', 20.00, 34, 36, null),                   -- Spheal
  (42,  'walking', 10.00, 34, 36, null),                   -- Golbat
  (90,  'walking', 10.00, 34, 36, null),                   -- Shellder
  (99,  'walking', null, 34, 36, 'Meridian Sound'),        -- Kingler
  (87,  'walking', null, 34, 36, 'Meridian Sound'),        -- Dewgong
  (120, 'walking', null, 34, 36, 'Pastoral Sound'),        -- Staryu
  (116, 'surfing', 90.00, 34, 36, null),                   -- Horsea
  (117, 'surfing', 10.00, 34, 36, null),                   -- Seadra
  (116, 'fishing_old', 100.00, 34, 36, null),              -- Horsea
  (116, 'fishing_good', 100.00, 34, 36, null),             -- Horsea
  (116, 'fishing_super', 60.00, 34, 36, null),             -- Horsea
  (117, 'fishing_super', 40.00, 34, 36, null)              -- Seadra
) AS e(dex_id, method, rate, lmin, lmax, cond)
WHERE r.slug = 'whirl-islands-1f' AND r.game_id = 'c3d4e5f6-a7b8-9012-cdef-345678901234';

-- -------------------------------------------
-- Whirl Islands B1F encounters (levels 35-38)
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions)
SELECT r.id, e.dex_id, e.method, e.rate::numeric, e.lmin, e.lmax, e.cond
FROM public.routes r,
(VALUES
  (98,  'walking', 20.00, 35::int, 38::int, null::text),  -- Krabby
  (86,  'walking', 20.00, 35, 38, null),                   -- Seel
  (90,  'walking', 20.00, 35, 38, null),                   -- Shellder
  (363, 'walking', 20.00, 35, 38, null),                   -- Spheal
  (42,  'walking', 10.00, 35, 38, null),                   -- Golbat
  (55,  'walking', 10.00, 35, 38, null),                   -- Golduck
  (99,  'walking', null, 35, 38, 'Meridian Sound'),        -- Kingler
  (87,  'walking', null, 35, 38, 'Meridian Sound'),        -- Dewgong
  (120, 'walking', null, 35, 38, 'Pastoral Sound')         -- Staryu
) AS e(dex_id, method, rate, lmin, lmax, cond)
WHERE r.slug = 'whirl-islands-b1f' AND r.game_id = 'c3d4e5f6-a7b8-9012-cdef-345678901234';

-- -------------------------------------------
-- Whirl Islands B2F encounters (levels 37-39)
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions)
SELECT r.id, e.dex_id, e.method, e.rate::numeric, e.lmin, e.lmax, e.cond
FROM public.routes r,
(VALUES
  (98,  'walking', 20.00, 37::int, 39::int, null::text),  -- Krabby
  (86,  'walking', 20.00, 37, 39, null),                   -- Seel
  (90,  'walking', 20.00, 37, 39, null),                   -- Shellder
  (363, 'walking', 20.00, 37, 39, null),                   -- Spheal
  (42,  'walking', 10.00, 37, 39, null),                   -- Golbat
  (55,  'walking', 10.00, 37, 39, null),                   -- Golduck
  (364, 'walking', null, 37, 39, 'Meridian Sound'),        -- Sealeo
  (87,  'walking', null, 37, 39, 'Meridian Sound'),        -- Dewgong
  (120, 'walking', null, 37, 39, 'Pastoral Sound'),        -- Staryu
  (116, 'surfing', 90.00, 37, 39, null),                   -- Horsea
  (117, 'surfing', 10.00, 37, 39, null),                   -- Seadra
  (116, 'fishing_old', 100.00, 37, 39, null),              -- Horsea
  (116, 'fishing_good', 100.00, 37, 39, null),             -- Horsea
  (116, 'fishing_super', 60.00, 37, 39, null),             -- Horsea
  (117, 'fishing_super', 38.00, 37, 39, null),             -- Seadra
  (230, 'fishing_super', 2.00, 37, 39, null)               -- Kingdra
) AS e(dex_id, method, rate, lmin, lmax, cond)
WHERE r.slug = 'whirl-islands-b2f' AND r.game_id = 'c3d4e5f6-a7b8-9012-cdef-345678901234';

-- -------------------------------------------
-- Whirl Islands B3F encounters (levels 47-49)
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions)
SELECT r.id, e.dex_id, e.method, e.rate::numeric, e.lmin, e.lmax, e.cond
FROM public.routes r,
(VALUES
  (99,  'walking', 20.00, 47::int, 49::int, null::text),  -- Kingler
  (87,  'walking', 20.00, 47, 49, null),                   -- Dewgong
  (90,  'walking', 20.00, 47, 49, null),                   -- Shellder
  (364, 'walking', 20.00, 47, 49, null),                   -- Sealeo
  (42,  'walking', 10.00, 47, 49, null),                   -- Golbat
  (55,  'walking', 10.00, 47, 49, null),                   -- Golduck
  (91,  'walking', null, 47, 49, 'Meridian Sound'),        -- Cloyster
  (169, 'walking', null, 47, 49, 'Meridian Sound'),        -- Crobat
  (120, 'walking', null, 47, 49, 'Pastoral Sound'),        -- Staryu
  (121, 'walking', null, 47, 49, 'Pastoral Sound')         -- Starmie
) AS e(dex_id, method, rate, lmin, lmax, cond)
WHERE r.slug = 'whirl-islands-b3f' AND r.game_id = 'c3d4e5f6-a7b8-9012-cdef-345678901234';

-- -------------------------------------------
-- Route 44 encounters (levels 38-39)
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions)
SELECT r.id, e.dex_id, e.method, e.rate::numeric, e.lmin, e.lmax, e.cond
FROM public.routes r,
(VALUES
  (114, 'walking', 20.00, 38::int, 39::int, 'Morning / Day'::text),  -- Tangela
  (108, 'walking', 20.00, 38, 39, 'Morning / Day'),                   -- Lickitung
  (12,  'walking', 10.00, 38, 39, 'Morning / Day'),                   -- Butterfree
  (15,  'walking', 10.00, 38, 39, 'Morning / Day'),                   -- Beedrill
  (267, 'walking', 10.00, 38, 39, 'Morning / Day'),                   -- Beautifly
  (188, 'walking', 10.00, 38, 39, 'Morning / Day'),                   -- Skiploom
  (274, 'walking', 10.00, 38, 39, 'Morning / Day'),                   -- Nuzleaf
  (421, 'walking', 5.00, 38, 39, 'Morning / Day'),                    -- Cherrim
  (334, 'walking', 4.00, 38, 39, 'Morning / Day'),                    -- Altaria
  (416, 'walking', 1.00, 38, 39, 'Morning / Day'),                    -- Vespiquen
  (114, 'walking', 20.00, 38, 39, 'Night'),                           -- Tangela
  (108, 'walking', 20.00, 38, 39, 'Night'),                           -- Lickitung
  (12,  'walking', 10.00, 38, 39, 'Night'),                           -- Butterfree
  (15,  'walking', 10.00, 38, 39, 'Night'),                           -- Beedrill
  (269, 'walking', 10.00, 38, 39, 'Night'),                           -- Dustox
  (49,  'walking', 10.00, 38, 39, 'Night'),                           -- Venomoth
  (274, 'walking', 10.00, 38, 39, 'Night'),                           -- Nuzleaf
  (459, 'walking', 5.00, 38, 39, 'Night'),                            -- Snover
  (334, 'walking', 4.00, 38, 39, 'Night'),                            -- Altaria
  (416, 'walking', 1.00, 38, 39, 'Night'),                            -- Vespiquen
  (223, 'walking', null, 38, 39, 'Swarm'),                            -- Remoraid
  (465, 'walking', null, 38, 39, 'Meridian Sound'),                   -- Tangrowth
  (463, 'walking', null, 38, 39, 'Meridian Sound'),                   -- Lickilicky
  (415, 'walking', null, 38, 39, 'Pastoral Sound'),                   -- Combee
  (271, 'walking', null, 38, 39, 'Pastoral Sound'),                   -- Lombre
  (270, 'surfing', 60.00, 38, 39, null),                              -- Lotad
  (60,  'surfing', 30.00, 38, 39, null),                              -- Poliwag
  (61,  'surfing', 5.00, 38, 39, null),                               -- Poliwhirl
  (271, 'surfing', 5.00, 38, 39, null),                               -- Lombre
  (129, 'fishing_old', 90.00, 38, 39, null),                          -- Magikarp
  (223, 'fishing_old', 10.00, 38, 39, null),                          -- Remoraid
  (129, 'fishing_good', 60.00, 38, 39, null),                         -- Magikarp
  (223, 'fishing_good', 40.00, 38, 39, null),                         -- Remoraid
  (129, 'fishing_super', 60.00, 38, 39, null),                        -- Magikarp
  (223, 'fishing_super', 30.00, 38, 39, null),                        -- Remoraid
  (130, 'fishing_super', 7.00, 38, 39, null),                         -- Gyarados
  (224, 'fishing_super', 3.00, 38, 39, null)                          -- Octillery
) AS e(dex_id, method, rate, lmin, lmax, cond)
WHERE r.slug = 'route-44' AND r.game_id = 'c3d4e5f6-a7b8-9012-cdef-345678901234';

-- -------------------------------------------
-- Ice Path 1F encounters (levels 37-40)
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions)
SELECT r.id, e.dex_id, e.method, e.rate::numeric, e.lmin, e.lmax, e.cond
FROM public.routes r,
(VALUES
  (42,  'walking', 30.00, 37::int, 40::int, null::text),  -- Golbat
  (220, 'walking', 30.00, 37, 40, null),                   -- Swinub
  (459, 'walking', 15.00, 37, 40, null),                   -- Snover
  (363, 'walking', 10.00, 37, 40, null),                   -- Spheal
  (86,  'walking', 10.00, 37, 40, null),                   -- Seel
  (238, 'walking', 5.00, 37, 40, null),                    -- Smoochum
  (221, 'walking', null, 37, 40, 'Meridian Sound'),        -- Piloswine
  (238, 'walking', null, 37, 40, 'Pastoral Sound')         -- Smoochum
) AS e(dex_id, method, rate, lmin, lmax, cond)
WHERE r.slug = 'ice-path-1f' AND r.game_id = 'c3d4e5f6-a7b8-9012-cdef-345678901234';

-- -------------------------------------------
-- Ice Path B1F encounters (levels 38-41)
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions)
SELECT r.id, e.dex_id, e.method, e.rate::numeric, e.lmin, e.lmax, e.cond
FROM public.routes r,
(VALUES
  (42,  'walking', 30.00, 38::int, 41::int, null::text),  -- Golbat
  (220, 'walking', 30.00, 38, 41, null),                   -- Swinub
  (90,  'walking', 10.00, 38, 41, null),                   -- Shellder
  (363, 'walking', 10.00, 38, 41, null),                   -- Spheal
  (86,  'walking', 10.00, 38, 41, null),                   -- Seel
  (238, 'walking', 5.00, 38, 41, null),                    -- Smoochum
  (225, 'walking', 5.00, 38, 41, null),                    -- Delibird
  (221, 'walking', null, 38, 41, 'Meridian Sound'),        -- Piloswine
  (364, 'walking', null, 38, 41, 'Meridian Sound'),        -- Sealeo
  (225, 'walking', null, 38, 41, 'Pastoral Sound')         -- Delibird
) AS e(dex_id, method, rate, lmin, lmax, cond)
WHERE r.slug = 'ice-path-b1f' AND r.game_id = 'c3d4e5f6-a7b8-9012-cdef-345678901234';

-- -------------------------------------------
-- Ice Path B2F encounters (levels 40-43)
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions)
SELECT r.id, e.dex_id, e.method, e.rate::numeric, e.lmin, e.lmax, e.cond
FROM public.routes r,
(VALUES
  (42,  'walking', 30.00, 40::int, 43::int, null::text),  -- Golbat
  (221, 'walking', 30.00, 40, 43, null),                   -- Piloswine
  (364, 'walking', 10.00, 40, 43, null),                   -- Sealeo
  (87,  'walking', 10.00, 40, 43, null),                   -- Dewgong
  (361, 'walking', 10.00, 40, 43, null),                   -- Snorunt
  (124, 'walking', 5.00, 40, 43, null),                    -- Jynx
  (225, 'walking', 5.00, 40, 43, null),                    -- Delibird
  (362, 'walking', null, 40, 43, 'Meridian Sound'),        -- Glalie
  (478, 'walking', null, 40, 43, 'Meridian Sound'),        -- Froslass
  (225, 'walking', null, 40, 43, 'Pastoral Sound'),        -- Delibird
  (124, 'walking', null, 40, 43, 'Pastoral Sound')         -- Jynx
) AS e(dex_id, method, rate, lmin, lmax, cond)
WHERE r.slug = 'ice-path-b2f' AND r.game_id = 'c3d4e5f6-a7b8-9012-cdef-345678901234';

-- -------------------------------------------
-- Ice Path B3F encounters (levels 42-44)
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions)
SELECT r.id, e.dex_id, e.method, e.rate::numeric, e.lmin, e.lmax, e.cond
FROM public.routes r,
(VALUES
  (42,  'walking', 30.00, 42::int, 44::int, null::text),  -- Golbat
  (221, 'walking', 30.00, 42, 44, null),                   -- Piloswine
  (364, 'walking', 10.00, 42, 44, null),                   -- Sealeo
  (87,  'walking', 10.00, 42, 44, null),                   -- Dewgong
  (362, 'walking', 10.00, 42, 44, null),                   -- Glalie
  (124, 'walking', 5.00, 42, 44, null),                    -- Jynx
  (215, 'walking', 5.00, 42, 44, null),                    -- Sneasel
  (473, 'walking', null, 42, 44, 'Meridian Sound'),        -- Mamoswine
  (365, 'walking', null, 42, 44, 'Meridian Sound'),        -- Walrein
  (124, 'walking', null, 42, 44, 'Pastoral Sound'),        -- Jynx
  (215, 'walking', null, 42, 44, 'Pastoral Sound')         -- Sneasel
) AS e(dex_id, method, rate, lmin, lmax, cond)
WHERE r.slug = 'ice-path-b3f' AND r.game_id = 'c3d4e5f6-a7b8-9012-cdef-345678901234';

-- -------------------------------------------
-- Blackthorn City encounters (levels null)
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions)
SELECT r.id, e.dex_id, e.method, e.rate::numeric, e.lmin, e.lmax, e.cond
FROM public.routes r,
(VALUES
  (129, 'surfing', 100.00, null::int, null::int, null::text),  -- Magikarp
  (129, 'fishing_old', 97.00, null, null, null),                -- Magikarp
  (147, 'fishing_old', 3.00, null, null, null),                 -- Dratini
  (129, 'fishing_good', 97.00, null, null, null),               -- Magikarp
  (147, 'fishing_good', 3.00, null, null, null),                -- Dratini
  (129, 'fishing_super', 97.00, null, null, null),              -- Magikarp
  (147, 'fishing_super', 3.00, null, null, null)                -- Dratini
) AS e(dex_id, method, rate, lmin, lmax, cond)
WHERE r.slug = 'blackthorn-city' AND r.game_id = 'c3d4e5f6-a7b8-9012-cdef-345678901234';

-- -------------------------------------------
-- Route 45 encounters (levels 42-45)
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions)
SELECT r.id, e.dex_id, e.method, e.rate::numeric, e.lmin, e.lmax, e.cond
FROM public.routes r,
(VALUES
  (75,  'walking', 30.00, 42::int, 45::int, null::text),  -- Graveler
  (326, 'walking', 20.00, 42, 45, null),                   -- Grumpig
  (232, 'walking', 10.00, 42, 45, null),                   -- Donphan
  (323, 'walking', 10.00, 42, 45, null),                   -- Camerupt
  (324, 'walking', 10.00, 42, 45, null),                   -- Torkoal
  (207, 'walking', 10.00, 42, 45, null),                   -- Gligar
  (329, 'walking', 5.00, 42, 45, null),                    -- Vibrava
  (227, 'walking', 5.00, 42, 45, null),                    -- Skarmory
  (472, 'walking', null, 42, 45, 'Meridian Sound'),        -- Gliscor
  (76,  'walking', null, 42, 45, 'Meridian Sound'),        -- Golem
  (111, 'walking', null, 42, 45, 'Pastoral Sound'),        -- Rhyhorn
  (329, 'walking', null, 42, 45, 'Pastoral Sound'),        -- Vibrava
  (112, 'walking', null, 42, 45, 'Swarm'),                 -- Rhydon
  (129, 'surfing', 100.00, 42, 45, null),                  -- Magikarp
  (129, 'fishing_old', 97.00, 42, 45, null),               -- Magikarp
  (147, 'fishing_old', 3.00, 42, 45, null),                -- Dratini
  (129, 'fishing_good', 97.00, 42, 45, null),              -- Magikarp
  (147, 'fishing_good', 3.00, 42, 45, null),               -- Dratini
  (129, 'fishing_super', 97.00, 42, 45, null),             -- Magikarp
  (147, 'fishing_super', 3.00, 42, 45, null)               -- Dratini
) AS e(dex_id, method, rate, lmin, lmax, cond)
WHERE r.slug = 'route-45' AND r.game_id = 'c3d4e5f6-a7b8-9012-cdef-345678901234';

-- -------------------------------------------
-- Dragons Den encounters (levels 10-40)
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions)
SELECT r.id, e.dex_id, e.method, e.rate::numeric, e.lmin, e.lmax, e.cond
FROM public.routes r,
(VALUES
  (129, 'surfing', 60.00, 10::int, 40::int, null::text),  -- Magikarp
  (147, 'surfing', 30.00, 10, 40, null),                   -- Dratini
  (130, 'surfing', 10.00, 10, 40, null),                   -- Gyarados
  (129, 'fishing_old', 93.00, 10, 40, null),               -- Magikarp
  (147, 'fishing_old', 7.00, 10, 40, null),                -- Dratini
  (129, 'fishing_good', 90.00, 10, 40, null),              -- Magikarp
  (147, 'fishing_good', 7.00, 10, 40, null),               -- Dratini
  (130, 'fishing_good', 3.00, 10, 40, null),               -- Gyarados
  (129, 'fishing_super', 60.00, 10, 40, null),             -- Magikarp
  (147, 'fishing_super', 30.00, 10, 40, null),             -- Dratini
  (130, 'fishing_super', 7.00, 10, 40, null),              -- Gyarados
  (148, 'fishing_super', 3.00, 10, 40, null)               -- Dragonair
) AS e(dex_id, method, rate, lmin, lmax, cond)
WHERE r.slug = 'dragons-den' AND r.game_id = 'c3d4e5f6-a7b8-9012-cdef-345678901234';

-- -------------------------------------------
-- Tohjo Falls encounters (levels 43-45)
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions)
SELECT r.id, e.dex_id, e.method, e.rate::numeric, e.lmin, e.lmax, e.cond
FROM public.routes r,
(VALUES
  (20,  'walking', 20.00, 43::int, 45::int, null::text),  -- Raticate
  (184, 'walking', 20.00, 43, 45, null),                   -- Azumarill
  (80,  'walking', 20.00, 43, 45, null),                   -- Slowbro
  (87,  'walking', 10.00, 43, 45, null),                   -- Dewgong
  (42,  'walking', 10.00, 43, 45, null),                   -- Golbat
  (437, 'walking', 10.00, 43, 45, null),                   -- Bronzong
  (195, 'walking', 10.00, 43, 45, null),                   -- Quagsire
  (169, 'walking', null, 43, 45, 'Meridian Sound'),        -- Crobat
  (298, 'walking', null, 43, 45, 'Pastoral Sound'),        -- Azurill
  (433, 'walking', null, 43, 45, 'Pastoral Sound'),        -- Chingling
  (118, 'surfing', 60.00, 43, 45, null),                   -- Goldeen
  (79,  'surfing', 30.00, 43, 45, null),                   -- Slowpoke
  (119, 'surfing', 10.00, 43, 45, null),                   -- Seaking
  (129, 'fishing_old', 95.00, 43, 45, null),               -- Magikarp
  (118, 'fishing_old', 5.00, 43, 45, null),                -- Goldeen
  (129, 'fishing_good', 60.00, 43, 45, null),              -- Magikarp
  (118, 'fishing_good', 40.00, 43, 45, null),              -- Goldeen
  (118, 'fishing_super', 90.00, 43, 45, null),             -- Goldeen
  (130, 'fishing_super', 7.00, 43, 45, null),              -- Gyarados
  (119, 'fishing_super', 3.00, 43, 45, null)               -- Seaking
) AS e(dex_id, method, rate, lmin, lmax, cond)
WHERE r.slug = 'tohjo-falls' AND r.game_id = 'c3d4e5f6-a7b8-9012-cdef-345678901234';

-- -------------------------------------------
-- Route 27 encounters (levels 42-45)
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions)
SELECT r.id, e.dex_id, e.method, e.rate::numeric, e.lmin, e.lmax, e.cond
FROM public.routes r,
(VALUES
  (84,  'walking', 20.00, 42::int, 45::int, 'Morning / Day'::text),  -- Doduo
  (188, 'walking', 20.00, 42, 45, 'Morning / Day'),                   -- Skiploom
  (77,  'walking', 20.00, 42, 45, 'Morning / Day'),                   -- Ponyta
  (85,  'walking', 10.00, 42, 45, 'Morning / Day'),                   -- Dodrio
  (78,  'walking', 10.00, 42, 45, 'Morning / Day'),                   -- Rapidash
  (28,  'walking', 10.00, 42, 45, 'Morning / Day'),                   -- Sandslash
  (24,  'walking', 10.00, 42, 45, 'Morning / Day'),                   -- Arbok
  (194, 'walking', 20.00, 42, 45, 'Night'),                           -- Wooper
  (228, 'walking', 20.00, 42, 45, 'Night'),                           -- Houndour
  (77,  'walking', 20.00, 42, 45, 'Night'),                           -- Ponyta
  (195, 'walking', 10.00, 42, 45, 'Night'),                           -- Quagsire
  (78,  'walking', 10.00, 42, 45, 'Night'),                           -- Rapidash
  (28,  'walking', 10.00, 42, 45, 'Night'),                           -- Sandslash
  (24,  'walking', 10.00, 42, 45, 'Night'),                           -- Arbok
  (189, 'walking', null, 42, 45, 'Meridian Sound'),                   -- Jumpluff
  (326, 'walking', null, 42, 45, 'Pastoral Sound'),                   -- Grumpig
  (349, 'walking', null, 42, 45, 'Swarm'),                            -- Feebas
  (418, 'surfing', 93.00, 42, 45, null),                              -- Buizel
  (419, 'surfing', 7.00, 42, 45, null),                               -- Floatzel
  (370, 'fishing_old', 100.00, 42, 45, null),                         -- Luvdisc
  (370, 'fishing_good', 100.00, 42, 45, null),                        -- Luvdisc
  (370, 'fishing_super', 100.00, 42, 45, null)                        -- Luvdisc
) AS e(dex_id, method, rate, lmin, lmax, cond)
WHERE r.slug = 'route-27' AND r.game_id = 'c3d4e5f6-a7b8-9012-cdef-345678901234';

-- -------------------------------------------
-- Route 26 encounters (levels 44-46)
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions)
SELECT r.id, e.dex_id, e.method, e.rate::numeric, e.lmin, e.lmax, e.cond
FROM public.routes r,
(VALUES
  (85,  'walking', 20.00, 44::int, 46::int, 'Morning / Day'::text),  -- Dodrio
  (188, 'walking', 20.00, 44, 46, 'Morning / Day'),                   -- Skiploom
  (78,  'walking', 20.00, 44, 46, 'Morning / Day'),                   -- Rapidash
  (82,  'walking', 10.00, 44, 46, 'Morning / Day'),                   -- Magneton
  (115, 'walking', 10.00, 44, 46, 'Morning / Day'),                   -- Kangaskhan
  (28,  'walking', 10.00, 44, 46, 'Morning / Day'),                   -- Sandslash
  (24,  'walking', 10.00, 44, 46, 'Morning / Day'),                   -- Arbok
  (195, 'walking', 20.00, 44, 46, 'Night'),                           -- Quagsire
  (229, 'walking', 20.00, 44, 46, 'Night'),                           -- Houndoom
  (78,  'walking', 20.00, 44, 46, 'Night'),                           -- Rapidash
  (82,  'walking', 10.00, 44, 46, 'Night'),                           -- Magneton
  (115, 'walking', 10.00, 44, 46, 'Night'),                           -- Kangaskhan
  (28,  'walking', 10.00, 44, 46, 'Night'),                           -- Sandslash
  (24,  'walking', 10.00, 44, 46, 'Night'),                           -- Arbok
  (189, 'walking', null, 44, 46, 'Meridian Sound'),                   -- Jumpluff
  (210, 'walking', null, 44, 46, 'Pastoral Sound'),                   -- Granbull
  (418, 'surfing', 93.00, 44, 46, null),                              -- Buizel
  (419, 'surfing', 7.00, 44, 46, null),                               -- Floatzel
  (370, 'fishing_old', 100.00, 44, 46, null),                         -- Luvdisc
  (370, 'fishing_good', 100.00, 44, 46, null),                        -- Luvdisc
  (370, 'fishing_super', 60.00, 44, 46, null),                        -- Luvdisc
  (171, 'fishing_super', 35.00, 44, 46, null),                        -- Lanturn
  (73,  'fishing_super', 5.00, 44, 46, null)                          -- Tentacruel
) AS e(dex_id, method, rate, lmin, lmax, cond)
WHERE r.slug = 'route-26' AND r.game_id = 'c3d4e5f6-a7b8-9012-cdef-345678901234';

-- -------------------------------------------
-- Victory Road 1F encounters (levels 44-46)
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions)
SELECT r.id, e.dex_id, e.method, e.rate::numeric, e.lmin, e.lmax, e.cond
FROM public.routes r,
(VALUES
  (42,  'walking', 20.00, 44::int, 46::int, null::text),  -- Golbat
  (75,  'walking', 20.00, 44, 46, null),                   -- Graveler
  (112, 'walking', 10.00, 44, 46, null),                   -- Rhydon
  (217, 'walking', 10.00, 44, 46, null),                   -- Ursaring
  (232, 'walking', 10.00, 44, 46, null),                   -- Donphan
  (105, 'walking', 10.00, 44, 46, null),                   -- Marowak
  (208, 'walking', 10.00, 44, 46, null),                   -- Steelix
  (437, 'walking', 10.00, 44, 46, null),                   -- Bronzong
  (169, 'walking', null, 44, 46, 'Meridian Sound'),        -- Crobat
  (76,  'walking', null, 44, 46, 'Meridian Sound'),        -- Golem
  (358, 'walking', null, 44, 46, 'Pastoral Sound'),        -- Chimecho
  (105, 'walking', null, 44, 46, 'Pastoral Sound')         -- Marowak
) AS e(dex_id, method, rate, lmin, lmax, cond)
WHERE r.slug = 'victory-road-1f' AND r.game_id = 'c3d4e5f6-a7b8-9012-cdef-345678901234';

-- -------------------------------------------
-- Victory Road 2F encounters (levels 44-46)
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions)
SELECT r.id, e.dex_id, e.method, e.rate::numeric, e.lmin, e.lmax, e.cond
FROM public.routes r,
(VALUES
  (67,  'walking', 20.00, 44::int, 46::int, null::text),  -- Machoke
  (297, 'walking', 20.00, 44, 46, null),                   -- Hariyama
  (42,  'walking', 10.00, 44, 46, null),                   -- Golbat
  (305, 'walking', 10.00, 44, 46, null),                   -- Lairon
  (294, 'walking', 10.00, 44, 46, null),                   -- Loudred
  (75,  'walking', 10.00, 44, 46, null),                   -- Graveler
  (308, 'walking', 5.00, 44, 46, null),                    -- Medicham
  (82,  'walking', 5.00, 44, 46, null),                    -- Magneton
  (49,  'walking', 5.00, 44, 46, null),                    -- Venomoth
  (64,  'walking', 5.00, 44, 46, null),                    -- Kadabra
  (295, 'walking', null, 44, 46, 'Meridian Sound'),        -- Exploud
  (306, 'walking', null, 44, 46, 'Meridian Sound'),        -- Aggron
  (358, 'walking', null, 44, 46, 'Pastoral Sound'),        -- Chimecho
  (105, 'walking', null, 44, 46, 'Pastoral Sound')         -- Marowak
) AS e(dex_id, method, rate, lmin, lmax, cond)
WHERE r.slug = 'victory-road-2f' AND r.game_id = 'c3d4e5f6-a7b8-9012-cdef-345678901234';

-- -------------------------------------------
-- Victory Road 3F encounters (levels 45-46)
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions)
SELECT r.id, e.dex_id, e.method, e.rate::numeric, e.lmin, e.lmax, e.cond
FROM public.routes r,
(VALUES
  (232, 'walking', 20.00, 45::int, 46::int, null::text),  -- Donphan
  (217, 'walking', 20.00, 45, 46, null),                   -- Ursaring
  (42,  'walking', 10.00, 45, 46, null),                   -- Golbat
  (305, 'walking', 10.00, 45, 46, null),                   -- Lairon
  (303, 'walking', 10.00, 45, 46, null),                   -- Mawile
  (302, 'walking', 10.00, 45, 46, null),                   -- Sableye
  (444, 'walking', 5.00, 45, 46, null),                    -- Gabite
  (82,  'walking', 5.00, 45, 46, null),                    -- Magneton
  (375, 'walking', 5.00, 45, 46, null),                    -- Metang
  (64,  'walking', 5.00, 45, 46, null),                    -- Kadabra
  (75,  'rock_smash', 90.00, 45, 46, null),                -- Graveler
  (299, 'rock_smash', 10.00, 45, 46, null),                -- Nosepass
  (65,  'walking', null, 45, 46, 'Meridian Sound'),        -- Alakazam
  (306, 'walking', null, 45, 46, 'Meridian Sound'),        -- Aggron
  (358, 'walking', null, 45, 46, 'Pastoral Sound'),        -- Chimecho
  (105, 'walking', null, 45, 46, 'Pastoral Sound')         -- Marowak
) AS e(dex_id, method, rate, lmin, lmax, cond)
WHERE r.slug = 'victory-road-3f' AND r.game_id = 'c3d4e5f6-a7b8-9012-cdef-345678901234';

-- ===========================================
-- SACRED GOLD: ENCOUNTER DATA PART 4
-- Kanto Routes 63-106 (Vermilion City through Viridian Forest)
-- ===========================================
-- Game ID: c3d4e5f6-a7b8-9012-cdef-345678901234
-- ===========================================

-- -------------------------------------------
-- Vermilion City (levels: null - city)
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions)
SELECT r.id, e.dex_id, e.method, e.rate::numeric, e.lmin, e.lmax, e.cond
FROM public.routes r,
(VALUES
  (278, 'surfing',       95.00, null::int, null::int, null::text),  -- Wingull
  (279, 'surfing',        5.00, null, null, null),                  -- Pelipper
  (171, 'walking',        null, null, null, 'Swarm'),               -- Lanturn
  (72,  'fishing_old',  100.00, null, null, null),                  -- Tentacool
  (72,  'fishing_good',  67.00, null, null, null),                  -- Tentacool
  (170, 'fishing_good',  30.00, null, null, null),                  -- Chinchou
  (90,  'fishing_good',   3.00, null, null, null),                  -- Shellder
  (73,  'fishing_super', 60.00, null, null, null),                  -- Tentacruel
  (90,  'fishing_super', 33.00, null, null, null),                  -- Shellder
  (171, 'fishing_super',  7.00, null, null, null),                  -- Lanturn
  (98,  'rock_smash',    90.00, null, null, null),                  -- Krabby
  (213, 'rock_smash',    10.00, null, null, null)                   -- Shuckle
) AS e(dex_id, method, rate, lmin, lmax, cond)
WHERE r.slug = 'vermilion-city' AND r.game_id = 'c3d4e5f6-a7b8-9012-cdef-345678901234';

-- -------------------------------------------
-- Diglett's Cave (levels: 15-63)
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions)
SELECT r.id, e.dex_id, e.method, e.rate::numeric, e.lmin, e.lmax, e.cond
FROM public.routes r,
(VALUES
  -- Cave All Times
  (50,  'walking', 80.00, 15::int, 63::int, null::text),  -- Diglett
  (449, 'walking', 10.00, 15, 63, null),                   -- Hippopotas
  (51,  'walking', 10.00, 15, 63, null),                   -- Dugtrio
  -- Sound
  (450, 'walking', null, null, null, 'Meridian Sound'),     -- Hippowdon
  (206, 'walking', null, null, null, 'Pastoral Sound')      -- Dunsparce
) AS e(dex_id, method, rate, lmin, lmax, cond)
WHERE r.slug = 'digletts-cave' AND r.game_id = 'c3d4e5f6-a7b8-9012-cdef-345678901234';

-- -------------------------------------------
-- Route 6 (levels: 45-48)
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions)
SELECT r.id, e.dex_id, e.method, e.rate::numeric, e.lmin, e.lmax, e.cond
FROM public.routes r,
(VALUES
  -- Grass Morning/Day
  (17,  'walking', 25.00, 45::int, 48::int, 'Morning / Day'::text),  -- Pidgeotto
  (64,  'walking', 25.00, 45, 48, 'Morning / Day'),                  -- Kadabra
  (20,  'walking', 20.00, 45, 48, 'Morning / Day'),                  -- Raticate
  (70,  'walking', 20.00, 45, 48, 'Morning / Day'),                  -- Weepinbell
  (421, 'walking', 10.00, 45, 48, 'Morning / Day'),                  -- Cherrim
  -- Grass Night
  (53,  'walking', 25.00, 45, 48, 'Night'),                          -- Persian
  (64,  'walking', 25.00, 45, 48, 'Night'),                          -- Kadabra
  (20,  'walking', 20.00, 45, 48, 'Night'),                          -- Raticate
  (70,  'walking', 20.00, 45, 48, 'Night'),                          -- Weepinbell
  (44,  'walking', 10.00, 45, 48, 'Night'),                          -- Gloom
  -- Sound
  (450, 'walking', null, null, null, 'Meridian Sound'),               -- Hippowdon
  (206, 'walking', null, null, null, 'Pastoral Sound'),               -- Dunsparce
  -- Surf
  (54,  'surfing',       95.00, 45, 48, null),                       -- Psyduck
  (55,  'surfing',        5.00, 45, 48, null),                       -- Golduck
  -- Fishing
  (129, 'fishing_old',   95.00, 45, 48, null),                       -- Magikarp
  (60,  'fishing_old',    5.00, 45, 48, null),                       -- Poliwag
  (129, 'fishing_good',  60.00, 45, 48, null),                       -- Magikarp
  (60,  'fishing_good',  40.00, 45, 48, null),                       -- Poliwag
  (60,  'fishing_super', 90.00, 45, 48, null),                       -- Poliwag
  (129, 'fishing_super',  7.00, 45, 48, null),                       -- Magikarp
  (61,  'fishing_super',  3.00, 45, 48, null)                        -- Poliwhirl
) AS e(dex_id, method, rate, lmin, lmax, cond)
WHERE r.slug = 'route-6' AND r.game_id = 'c3d4e5f6-a7b8-9012-cdef-345678901234';

-- -------------------------------------------
-- Route 2 North (levels: 45-49)
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions)
SELECT r.id, e.dex_id, e.method, e.rate::numeric, e.lmin, e.lmax, e.cond
FROM public.routes r,
(VALUES
  -- Grass Morning/Day
  (267, 'walking', 25.00, 45::int, 49::int, 'Morning / Day'::text),  -- Beautifly
  (269, 'walking', 25.00, 45, 49, 'Morning / Day'),                  -- Dustox
  (166, 'walking', 20.00, 45, 49, 'Morning / Day'),                  -- Ledian
  (397, 'walking', 10.00, 45, 49, 'Morning / Day'),                  -- Staravia
  (417, 'walking', 10.00, 45, 49, 'Morning / Day'),                  -- Pachirisu
  (421, 'walking', 10.00, 45, 49, 'Morning / Day'),                  -- Cherrim
  -- Grass Night
  (267, 'walking', 25.00, 45, 49, 'Night'),                          -- Beautifly
  (269, 'walking', 25.00, 45, 49, 'Night'),                          -- Dustox
  (168, 'walking', 20.00, 45, 49, 'Night'),                          -- Ariados
  (400, 'walking', 10.00, 45, 49, 'Night'),                          -- Bibarel
  (417, 'walking', 10.00, 45, 49, 'Night'),                          -- Pachirisu
  (193, 'walking', 10.00, 45, 49, 'Night'),                          -- Yanma
  -- Sound
  (18,  'walking', null, null, null, 'Meridian Sound'),               -- Pidgeot
  (25,  'walking', null, null, null, 'Pastoral Sound'),               -- Pikachu
  (412, 'walking', null, null, null, 'Pastoral Sound')                -- Burmy
) AS e(dex_id, method, rate, lmin, lmax, cond)
WHERE r.slug = 'route-2-north' AND r.game_id = 'c3d4e5f6-a7b8-9012-cdef-345678901234';

-- -------------------------------------------
-- Route 3 (levels: 46-49)
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions)
SELECT r.id, e.dex_id, e.method, e.rate::numeric, e.lmin, e.lmax, e.cond
FROM public.routes r,
(VALUES
  -- Grass Morning/Day
  (22,  'walking', 20.00, 46::int, 49::int, 'Morning / Day'::text),  -- Fearow
  (397, 'walking', 20.00, 46, 49, 'Morning / Day'),                  -- Staravia
  (17,  'walking', 15.00, 46, 49, 'Morning / Day'),                  -- Pidgeotto
  (57,  'walking', 15.00, 46, 49, 'Morning / Day'),                  -- Primeape
  (33,  'walking', 15.00, 46, 49, 'Morning / Day'),                  -- Nidorino
  (30,  'walking', 15.00, 46, 49, 'Morning / Day'),                  -- Nidorina
  -- Grass Night
  (22,  'walking', 20.00, 46, 49, 'Night'),                          -- Fearow
  (39,  'walking', 20.00, 46, 49, 'Night'),                          -- Jigglypuff
  (164, 'walking', 15.00, 46, 49, 'Night'),                          -- Noctowl
  (57,  'walking', 15.00, 46, 49, 'Night'),                          -- Primeape
  (33,  'walking', 15.00, 46, 49, 'Night'),                          -- Nidorino
  (30,  'walking', 15.00, 46, 49, 'Night'),                          -- Nidorina
  -- Swarm
  (327, 'walking', null, null, null, 'Swarm'),                        -- Spinda
  -- Sound
  (40,  'walking', null, null, null, 'Meridian Sound'),               -- Wigglytuff
  (398, 'walking', null, null, null, 'Meridian Sound'),               -- Staraptor
  (58,  'walking', null, null, null, 'Pastoral Sound'),               -- Growlithe
  (37,  'walking', null, null, null, 'Pastoral Sound')                -- Vulpix
) AS e(dex_id, method, rate, lmin, lmax, cond)
WHERE r.slug = 'route-3' AND r.game_id = 'c3d4e5f6-a7b8-9012-cdef-345678901234';

-- -------------------------------------------
-- Route 4 (levels: 46-50)
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions)
SELECT r.id, e.dex_id, e.method, e.rate::numeric, e.lmin, e.lmax, e.cond
FROM public.routes r,
(VALUES
  -- Grass All Times
  (22,  'walking', 25.00, 46::int, 50::int, null::text),  -- Fearow
  (20,  'walking', 25.00, 46, 50, null),                   -- Raticate
  (24,  'walking', 20.00, 46, 50, null),                   -- Arbok
  (432, 'walking', 10.00, 46, 50, null),                   -- Purugly
  (435, 'walking', 10.00, 46, 50, null),                   -- Skuntank
  (39,  'walking',  9.00, 46, 50, null),                   -- Jigglypuff
  (40,  'walking',  1.00, 46, 50, null),                   -- Wigglytuff
  -- Sound
  (40,  'walking', null, null, null, 'Meridian Sound'),     -- Wigglytuff
  (28,  'walking', null, null, null, 'Pastoral Sound'),     -- Sandslash
  -- Surf
  (118, 'surfing',       93.00, 46, 50, null),             -- Goldeen
  (119, 'surfing',        7.00, 46, 50, null),             -- Seaking
  -- Fishing
  (129, 'fishing_old',   60.00, 46, 50, null),             -- Magikarp
  (118, 'fishing_old',   30.00, 46, 50, null),             -- Goldeen
  (119, 'fishing_old',   10.00, 46, 50, null),             -- Seaking
  (129, 'fishing_good',  60.00, 46, 50, null),             -- Magikarp
  (118, 'fishing_good',  30.00, 46, 50, null),             -- Goldeen
  (119, 'fishing_good',  10.00, 46, 50, null),             -- Seaking
  (129, 'fishing_super', 60.00, 46, 50, null),             -- Magikarp
  (118, 'fishing_super', 30.00, 46, 50, null),             -- Goldeen
  (119, 'fishing_super', 10.00, 46, 50, null)              -- Seaking
) AS e(dex_id, method, rate, lmin, lmax, cond)
WHERE r.slug = 'route-4' AND r.game_id = 'c3d4e5f6-a7b8-9012-cdef-345678901234';

-- -------------------------------------------
-- Mt. Moon 1F (levels: 47-51)
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions)
SELECT r.id, e.dex_id, e.method, e.rate::numeric, e.lmin, e.lmax, e.cond
FROM public.routes r,
(VALUES
  -- Cave All Times
  (42,  'walking', 30.00, 47::int, 51::int, null::text),  -- Golbat
  (35,  'walking', 20.00, 47, 51, null),                   -- Clefairy
  (75,  'walking', 20.00, 47, 51, null),                   -- Graveler
  (28,  'walking', 15.00, 47, 51, null),                   -- Sandslash
  (47,  'walking', 15.00, 47, 51, null),                   -- Parasect
  -- Sound
  (169, 'walking', null, null, null, 'Meridian Sound'),     -- Crobat
  (76,  'walking', null, null, null, 'Meridian Sound'),     -- Golem
  (358, 'walking', null, null, null, 'Pastoral Sound')      -- Chimecho
) AS e(dex_id, method, rate, lmin, lmax, cond)
WHERE r.slug = 'mt-moon-1f' AND r.game_id = 'c3d4e5f6-a7b8-9012-cdef-345678901234';

-- -------------------------------------------
-- Mt. Moon 2F (levels: 48-50)
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions)
SELECT r.id, e.dex_id, e.method, e.rate::numeric, e.lmin, e.lmax, e.cond
FROM public.routes r,
(VALUES
  -- Cave All Times
  (42,  'walking', 24.00, 48::int, 50::int, null::text),  -- Golbat
  (35,  'walking', 20.00, 48, 50, null),                   -- Clefairy
  (75,  'walking', 14.00, 48, 50, null),                   -- Graveler
  (28,  'walking', 10.00, 48, 50, null),                   -- Sandslash
  (47,  'walking', 10.00, 48, 50, null),                   -- Parasect
  (358, 'walking', 10.00, 48, 50, null),                   -- Chimecho
  (338, 'walking',  5.00, 48, 50, null),                   -- Solrock
  (337, 'walking',  5.00, 48, 50, null),                   -- Lunatone
  (36,  'walking',  1.00, 48, 50, null),                   -- Clefable
  -- Sound
  (36,  'walking', null, null, null, 'Meridian Sound'),     -- Clefable
  (358, 'walking', null, null, null, 'Pastoral Sound')      -- Chimecho
) AS e(dex_id, method, rate, lmin, lmax, cond)
WHERE r.slug = 'mt-moon-2f' AND r.game_id = 'c3d4e5f6-a7b8-9012-cdef-345678901234';

-- -------------------------------------------
-- Mt. Moon Outside (levels: 40-50)
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions)
SELECT r.id, e.dex_id, e.method, e.rate::numeric, e.lmin, e.lmax, e.cond
FROM public.routes r,
(VALUES
  -- Surf
  (194, 'surfing',       63.00, 40::int, 50::int, null::text),  -- Wooper
  (61,  'surfing',       32.00, 40, 50, null),                   -- Poliwhirl
  (195, 'surfing',        5.00, 40, 50, null),                   -- Quagsire
  -- Fishing
  (129, 'fishing_old',  100.00, 40, 50, null),                   -- Magikarp
  (129, 'fishing_good',  90.00, 40, 50, null),                   -- Magikarp
  (60,  'fishing_good',  10.00, 40, 50, null),                   -- Poliwag
  (61,  'fishing_super',100.00, 40, 50, null)                    -- Poliwhirl
) AS e(dex_id, method, rate, lmin, lmax, cond)
WHERE r.slug = 'mt-moon-outside' AND r.game_id = 'c3d4e5f6-a7b8-9012-cdef-345678901234';

-- -------------------------------------------
-- Cerulean City (levels: null - city)
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions)
SELECT r.id, e.dex_id, e.method, e.rate::numeric, e.lmin, e.lmax, e.cond
FROM public.routes r,
(VALUES
  -- Surf
  (187, 'surfing',       60.00, null::int, null::int, null::text),  -- Hoppip
  (118, 'surfing',       30.00, null, null, null),                   -- Goldeen
  (188, 'surfing',        7.00, null, null, null),                   -- Skiploom
  (284, 'surfing',        3.00, null, null, null),                   -- Masquerain
  -- Fishing
  (129, 'fishing_old',   60.00, null, null, null),                   -- Magikarp
  (118, 'fishing_old',   30.00, null, null, null),                   -- Goldeen
  (119, 'fishing_old',   10.00, null, null, null),                   -- Seaking
  (118, 'fishing_good',  90.00, null, null, null),                   -- Goldeen
  (119, 'fishing_good',  10.00, null, null, null),                   -- Seaking
  (120, 'fishing_super', 60.00, null, null, null),                   -- Staryu
  (119, 'fishing_super', 30.00, null, null, null),                   -- Seaking
  (147, 'fishing_super',  7.00, null, null, null),                   -- Dratini
  (148, 'fishing_super',  3.00, null, null, null)                    -- Dragonair
) AS e(dex_id, method, rate, lmin, lmax, cond)
WHERE r.slug = 'cerulean-city' AND r.game_id = 'c3d4e5f6-a7b8-9012-cdef-345678901234';

-- -------------------------------------------
-- Route 5 (levels: 47-50)
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions)
SELECT r.id, e.dex_id, e.method, e.rate::numeric, e.lmin, e.lmax, e.cond
FROM public.routes r,
(VALUES
  -- Grass Morning/Day
  (17,  'walking', 20.00, 47::int, 50::int, 'Morning / Day'::text),  -- Pidgeotto
  (20,  'walking', 20.00, 47, 50, 'Morning / Day'),                  -- Raticate
  (64,  'walking', 10.00, 47, 50, 'Morning / Day'),                  -- Kadabra
  (39,  'walking', 10.00, 47, 50, 'Morning / Day'),                  -- Jigglypuff
  (66,  'walking', 10.00, 47, 50, 'Morning / Day'),                  -- Machop
  (70,  'walking', 10.00, 47, 50, 'Morning / Day'),                  -- Weepinbell
  (307, 'walking', 10.00, 47, 50, 'Morning / Day'),                  -- Meditite
  (441, 'walking', 10.00, 47, 50, 'Morning / Day'),                  -- Chatot
  -- Grass Night
  (262, 'walking', 20.00, 47, 50, 'Night'),                          -- Mightyena
  (20,  'walking', 20.00, 47, 50, 'Night'),                          -- Raticate
  (64,  'walking', 10.00, 47, 50, 'Night'),                          -- Kadabra
  (39,  'walking', 10.00, 47, 50, 'Night'),                          -- Jigglypuff
  (66,  'walking', 10.00, 47, 50, 'Night'),                          -- Machop
  (70,  'walking', 10.00, 47, 50, 'Night'),                          -- Weepinbell
  (307, 'walking', 10.00, 47, 50, 'Night'),                          -- Meditite
  (53,  'walking', 10.00, 47, 50, 'Night'),                          -- Persian
  -- Sound
  (308, 'walking', null, null, null, 'Meridian Sound'),               -- Medicham
  (397, 'walking', null, null, null, 'Pastoral Sound'),               -- Staravia
  (277, 'walking', null, null, null, 'Pastoral Sound')                -- Swellow
) AS e(dex_id, method, rate, lmin, lmax, cond)
WHERE r.slug = 'route-5' AND r.game_id = 'c3d4e5f6-a7b8-9012-cdef-345678901234';

-- -------------------------------------------
-- Route 24 (levels: 47-51)
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions)
SELECT r.id, e.dex_id, e.method, e.rate::numeric, e.lmin, e.lmax, e.cond
FROM public.routes r,
(VALUES
  -- Grass Morning/Day
  (70,  'walking', 20.00, 47::int, 51::int, 'Morning / Day'::text),  -- Weepinbell
  (281, 'walking', 20.00, 47, 51, 'Morning / Day'),                  -- Kirlia
  (188, 'walking', 15.00, 47, 51, 'Morning / Day'),                  -- Skiploom
  (397, 'walking', 15.00, 47, 51, 'Morning / Day'),                  -- Staravia
  (17,  'walking', 15.00, 47, 51, 'Morning / Day'),                  -- Pidgeotto
  (315, 'walking', 10.00, 47, 51, 'Morning / Day'),                  -- Roselia
  (283, 'walking',  5.00, 47, 51, 'Morning / Day'),                  -- Surskit
  -- Grass Night
  (70,  'walking', 20.00, 47, 51, 'Night'),                          -- Weepinbell
  (281, 'walking', 20.00, 47, 51, 'Night'),                          -- Kirlia
  (44,  'walking', 15.00, 47, 51, 'Night'),                          -- Gloom
  (164, 'walking', 15.00, 47, 51, 'Night'),                          -- Noctowl
  (262, 'walking', 15.00, 47, 51, 'Night'),                          -- Mightyena
  (315, 'walking', 10.00, 47, 51, 'Night'),                          -- Roselia
  (283, 'walking',  5.00, 47, 51, 'Night'),                          -- Surskit
  -- Sound
  (189, 'walking', null, null, null, 'Meridian Sound'),               -- Jumpluff
  (283, 'walking', null, null, null, 'Pastoral Sound'),               -- Surskit
  -- Surf
  (187, 'surfing',       60.00, 47, 51, null),                       -- Hoppip
  (118, 'surfing',       30.00, 47, 51, null),                       -- Goldeen
  (188, 'surfing',        7.00, 47, 51, null),                       -- Skiploom
  (284, 'surfing',        3.00, 47, 51, null),                       -- Masquerain
  -- Fishing
  (129, 'fishing_old',   60.00, 47, 51, null),                       -- Magikarp
  (118, 'fishing_old',   30.00, 47, 51, null),                       -- Goldeen
  (119, 'fishing_old',   10.00, 47, 51, null),                       -- Seaking
  (118, 'fishing_good',  90.00, 47, 51, null),                       -- Goldeen
  (119, 'fishing_good',  10.00, 47, 51, null),                       -- Seaking
  (120, 'fishing_super', 60.00, 47, 51, null),                       -- Staryu
  (119, 'fishing_super', 30.00, 47, 51, null),                       -- Seaking
  (147, 'fishing_super',  7.00, 47, 51, null),                       -- Dratini
  (148, 'fishing_super',  3.00, 47, 51, null)                        -- Dragonair
) AS e(dex_id, method, rate, lmin, lmax, cond)
WHERE r.slug = 'route-24' AND r.game_id = 'c3d4e5f6-a7b8-9012-cdef-345678901234';

-- -------------------------------------------
-- Route 25 (levels: 47-52)
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions)
SELECT r.id, e.dex_id, e.method, e.rate::numeric, e.lmin, e.lmax, e.cond
FROM public.routes r,
(VALUES
  -- Grass Morning/Day
  (191, 'walking', 20.00, 47::int, 52::int, 'Morning / Day'::text),  -- Sunkern
  (427, 'walking', 20.00, 47, 52, 'Morning / Day'),                  -- Buneary
  (288, 'walking', 15.00, 47, 52, 'Morning / Day'),                  -- Vigoroth
  (415, 'walking', 15.00, 47, 52, 'Morning / Day'),                  -- Combee
  (70,  'walking', 15.00, 47, 52, 'Morning / Day'),                  -- Weepinbell
  (102, 'walking', 15.00, 47, 52, 'Morning / Day'),                  -- Exeggcute
  -- Grass Night
  (49,  'walking', 20.00, 47, 52, 'Night'),                          -- Venomoth
  (427, 'walking', 20.00, 47, 52, 'Night'),                          -- Buneary
  (288, 'walking', 15.00, 47, 52, 'Night'),                          -- Vigoroth
  (415, 'walking', 15.00, 47, 52, 'Night'),                          -- Combee
  (70,  'walking', 15.00, 47, 52, 'Night'),                          -- Weepinbell
  (102, 'walking', 15.00, 47, 52, 'Night'),                          -- Exeggcute
  -- Sound
  (192, 'walking', null, null, null, 'Meridian Sound'),               -- Sunflora
  (428, 'walking', null, null, null, 'Meridian Sound'),               -- Lopunny
  (48,  'walking', null, null, null, 'Pastoral Sound'),               -- Venonat
  (287, 'walking', null, null, null, 'Pastoral Sound'),               -- Slakoth
  -- Swarm
  (305, 'walking', null, null, null, 'Swarm'),                        -- Lairon
  -- Surf
  (187, 'surfing',       60.00, 47, 52, null),                       -- Hoppip
  (118, 'surfing',       30.00, 47, 52, null),                       -- Goldeen
  (188, 'surfing',        7.00, 47, 52, null),                       -- Skiploom
  (284, 'surfing',        3.00, 47, 52, null),                       -- Masquerain
  -- Fishing
  (129, 'fishing_old',   60.00, 47, 52, null),                       -- Magikarp
  (118, 'fishing_old',   30.00, 47, 52, null),                       -- Goldeen
  (119, 'fishing_old',   10.00, 47, 52, null),                       -- Seaking
  (118, 'fishing_good',  90.00, 47, 52, null),                       -- Goldeen
  (119, 'fishing_good',  10.00, 47, 52, null),                       -- Seaking
  (120, 'fishing_super', 60.00, 47, 52, null),                       -- Staryu
  (119, 'fishing_super', 30.00, 47, 52, null),                       -- Seaking
  (147, 'fishing_super',  7.00, 47, 52, null),                       -- Dratini
  (148, 'fishing_super',  3.00, 47, 52, null)                        -- Dragonair
) AS e(dex_id, method, rate, lmin, lmax, cond)
WHERE r.slug = 'route-25' AND r.game_id = 'c3d4e5f6-a7b8-9012-cdef-345678901234';

-- -------------------------------------------
-- Route 9 (levels: 49-51)
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions)
SELECT r.id, e.dex_id, e.method, e.rate::numeric, e.lmin, e.lmax, e.cond
FROM public.routes r,
(VALUES
  -- Grass All Times
  (57,  'walking', 25.00, 49::int, 51::int, null::text),  -- Primeape
  (22,  'walking', 20.00, 49, 51, null),                   -- Fearow
  (24,  'walking', 20.00, 49, 51, null),                   -- Arbok
  (30,  'walking', 15.00, 49, 51, null),                   -- Nidorina
  (33,  'walking', 15.00, 49, 51, null),                   -- Nidorino
  (105, 'walking',  5.00, 49, 51, null),                   -- Marowak
  -- Sound
  (31,  'walking', null, null, null, 'Meridian Sound'),     -- Nidoqueen
  (34,  'walking', null, null, null, 'Meridian Sound'),     -- Nidoking
  (105, 'walking', null, null, null, 'Pastoral Sound'),     -- Marowak
  (115, 'walking', null, null, null, 'Pastoral Sound'),     -- Kangaskhan
  -- Swarm
  (180, 'walking', null, null, null, 'Swarm'),              -- Flaaffy
  -- Surf
  (118, 'surfing',       60.00, 49, 51, null),             -- Goldeen
  (119, 'surfing',       40.00, 49, 51, null),             -- Seaking
  -- Fishing
  (129, 'fishing_old',   60.00, 49, 51, null),             -- Magikarp
  (118, 'fishing_old',   30.00, 49, 51, null),             -- Goldeen
  (119, 'fishing_old',   10.00, 49, 51, null),             -- Seaking
  (118, 'fishing_good',  90.00, 49, 51, null),             -- Goldeen
  (119, 'fishing_good',  10.00, 49, 51, null),             -- Seaking
  (119, 'fishing_super',100.00, 49, 51, null)              -- Seaking
) AS e(dex_id, method, rate, lmin, lmax, cond)
WHERE r.slug = 'route-9' AND r.game_id = 'c3d4e5f6-a7b8-9012-cdef-345678901234';

-- -------------------------------------------
-- Route 10 (levels: 47-52)
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions)
SELECT r.id, e.dex_id, e.method, e.rate::numeric, e.lmin, e.lmax, e.cond
FROM public.routes r,
(VALUES
  -- Grass All Times
  (22,  'walking', 20.00, 47::int, 52::int, null::text),  -- Fearow
  (404, 'walking', 20.00, 47, 52, null),                   -- Luxio
  (101, 'walking', 15.00, 47, 52, null),                   -- Electrode
  (180, 'walking', 10.00, 47, 52, null),                   -- Flaaffy
  (20,  'walking', 10.00, 47, 52, null),                   -- Raticate
  (310, 'walking', 10.00, 47, 52, null),                   -- Manectric
  (125, 'walking', 10.00, 47, 52, null),                   -- Electabuzz
  (25,  'walking',  5.00, 47, 52, null),                   -- Pikachu
  -- Sound
  (405, 'walking', null, null, null, 'Meridian Sound'),     -- Luxray
  (181, 'walking', null, null, null, 'Meridian Sound'),     -- Ampharos
  (172, 'walking', null, null, null, 'Pastoral Sound'),     -- Pichu
  (239, 'walking', null, null, null, 'Pastoral Sound'),     -- Elekid
  -- Surf
  (22,  'surfing',       60.00, 47, 52, null),             -- Fearow
  (170, 'surfing',       40.00, 47, 52, null),             -- Chinchou
  -- Fishing
  (170, 'fishing_old',  100.00, 47, 52, null),             -- Chinchou
  (170, 'fishing_good',  93.00, 47, 52, null),             -- Chinchou
  (171, 'fishing_good',   7.00, 47, 52, null),             -- Lanturn
  (171, 'fishing_super',100.00, 47, 52, null)              -- Lanturn
) AS e(dex_id, method, rate, lmin, lmax, cond)
WHERE r.slug = 'route-10' AND r.game_id = 'c3d4e5f6-a7b8-9012-cdef-345678901234';

-- -------------------------------------------
-- Rock Tunnel 1F (levels: 52-55)
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions)
SELECT r.id, e.dex_id, e.method, e.rate::numeric, e.lmin, e.lmax, e.cond
FROM public.routes r,
(VALUES
  -- Cave All Times
  (75,  'walking', 20.00, 52::int, 55::int, null::text),  -- Graveler
  (42,  'walking', 20.00, 52, 55, null),                   -- Golbat
  (305, 'walking', 10.00, 52, 55, null),                   -- Lairon
  (296, 'walking', 10.00, 52, 55, null),                   -- Makuhita
  (104, 'walking', 10.00, 52, 55, null),                   -- Cubone
  (132, 'walking', 10.00, 52, 55, null),                   -- Ditto
  (56,  'walking', 10.00, 52, 55, null),                   -- Mankey
  (81,  'walking', 10.00, 52, 55, null),                   -- Magnemite
  -- Sound
  (297, 'walking', null, null, null, 'Meridian Sound'),     -- Hariyama
  (82,  'walking', null, null, null, 'Meridian Sound'),     -- Magneton
  (359, 'walking', null, null, null, 'Pastoral Sound'),     -- Absol
  (115, 'walking', null, null, null, 'Pastoral Sound')      -- Kangaskhan
) AS e(dex_id, method, rate, lmin, lmax, cond)
WHERE r.slug = 'rock-tunnel-1f' AND r.game_id = 'c3d4e5f6-a7b8-9012-cdef-345678901234';

-- -------------------------------------------
-- Rock Tunnel B1F (levels: 53-56)
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions)
SELECT r.id, e.dex_id, e.method, e.rate::numeric, e.lmin, e.lmax, e.cond
FROM public.routes r,
(VALUES
  -- Cave All Times
  (75,  'walking',    20.00, 53::int, 56::int, null::text),  -- Graveler
  (42,  'walking',    20.00, 53, 56, null),                   -- Golbat
  (305, 'walking',    10.00, 53, 56, null),                   -- Lairon
  (297, 'walking',    10.00, 53, 56, null),                   -- Hariyama
  (105, 'walking',    10.00, 53, 56, null),                   -- Marowak
  (57,  'walking',    10.00, 53, 56, null),                   -- Primeape
  (82,  'walking',    10.00, 53, 56, null),                   -- Magneton
  (115, 'walking',     5.00, 53, 56, null),                   -- Kangaskhan
  (95,  'walking',     5.00, 53, 56, null),                   -- Onix
  -- Rock Smash
  (299, 'rock_smash', 100.00, 53, 56, null),                  -- Nosepass
  -- Sound
  (306, 'walking', null, null, null, 'Meridian Sound'),        -- Aggron
  (208, 'walking', null, null, null, 'Meridian Sound'),        -- Steelix
  (95,  'walking', null, null, null, 'Pastoral Sound'),        -- Onix
  (115, 'walking', null, null, null, 'Pastoral Sound')         -- Kangaskhan
) AS e(dex_id, method, rate, lmin, lmax, cond)
WHERE r.slug = 'rock-tunnel-b1f' AND r.game_id = 'c3d4e5f6-a7b8-9012-cdef-345678901234';

-- -------------------------------------------
-- Route 8 (levels: 50-54)
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions)
SELECT r.id, e.dex_id, e.method, e.rate::numeric, e.lmin, e.lmax, e.cond
FROM public.routes r,
(VALUES
  -- Grass Morning/Day
  (58,  'walking', 25.00, 50::int, 54::int, 'Morning / Day'::text),  -- Growlithe
  (37,  'walking', 25.00, 50, 54, 'Morning / Day'),                  -- Vulpix
  (64,  'walking', 20.00, 50, 54, 'Morning / Day'),                  -- Kadabra
  (178, 'walking', 20.00, 50, 54, 'Morning / Day'),                  -- Xatu
  (397, 'walking', 10.00, 50, 54, 'Morning / Day'),                  -- Staravia
  -- Grass Night
  (58,  'walking', 25.00, 50, 54, 'Night'),                          -- Growlithe
  (37,  'walking', 25.00, 50, 54, 'Night'),                          -- Vulpix
  (64,  'walking', 10.00, 50, 54, 'Night'),                          -- Kadabra
  (93,  'walking', 10.00, 50, 54, 'Night'),                          -- Haunter
  (178, 'walking', 20.00, 50, 54, 'Night'),                          -- Xatu
  (354, 'walking', 10.00, 50, 54, 'Night'),                          -- Banette
  -- Sound
  (59,  'walking', null, null, null, 'Meridian Sound'),               -- Arcanine
  (65,  'walking', null, null, null, 'Meridian Sound'),               -- Alakazam
  (355, 'walking', null, null, null, 'Pastoral Sound'),               -- Duskull
  (353, 'walking', null, null, null, 'Pastoral Sound')                -- Shuppet
) AS e(dex_id, method, rate, lmin, lmax, cond)
WHERE r.slug = 'route-8' AND r.game_id = 'c3d4e5f6-a7b8-9012-cdef-345678901234';

-- -------------------------------------------
-- Route 12 (levels: 20-55)
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions)
SELECT r.id, e.dex_id, e.method, e.rate::numeric, e.lmin, e.lmax, e.cond
FROM public.routes r,
(VALUES
  -- Surf
  (79,  'surfing',       90.00, 20::int, 55::int, null::text),  -- Slowpoke
  (80,  'surfing',       10.00, 20, 55, null),                   -- Slowbro
  -- Swarm
  (369, 'walking',        null, null, null, 'Swarm'),             -- Relicanth
  -- Fishing
  (129, 'fishing_old',  100.00, 20, 55, null),                   -- Magikarp
  (60,  'fishing_good',  60.00, 20, 55, null),                   -- Poliwag
  (118, 'fishing_good',  30.00, 20, 55, null),                   -- Goldeen
  (116, 'fishing_good',  10.00, 20, 55, null),                   -- Horsea
  (117, 'fishing_super', 60.00, 20, 55, null),                   -- Seadra
  (61,  'fishing_super', 30.00, 20, 55, null),                   -- Poliwhirl
  (211, 'fishing_super', 10.00, 20, 55, null)                    -- Qwilfish
) AS e(dex_id, method, rate, lmin, lmax, cond)
WHERE r.slug = 'route-12' AND r.game_id = 'c3d4e5f6-a7b8-9012-cdef-345678901234';

-- -------------------------------------------
-- Route 13 (levels: 50-54)
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions)
SELECT r.id, e.dex_id, e.method, e.rate::numeric, e.lmin, e.lmax, e.cond
FROM public.routes r,
(VALUES
  -- Grass Morning/Day
  (30,  'walking', 25.00, 50::int, 54::int, 'Morning / Day'::text),  -- Nidorina
  (33,  'walking', 25.00, 50, 54, 'Morning / Day'),                  -- Nidorino
  (277, 'walking', 20.00, 50, 54, 'Morning / Day'),                  -- Swellow
  (188, 'walking', 20.00, 50, 54, 'Morning / Day'),                  -- Skiploom
  (83,  'walking', 10.00, 50, 54, 'Morning / Day'),                  -- Farfetchd
  -- Grass Night
  (30,  'walking', 25.00, 50, 54, 'Night'),                          -- Nidorina
  (33,  'walking', 25.00, 50, 54, 'Night'),                          -- Nidorino
  (277, 'walking', 20.00, 50, 54, 'Night'),                          -- Swellow
  (195, 'walking', 20.00, 50, 54, 'Night'),                          -- Quagsire
  (164, 'walking', 10.00, 50, 54, 'Night'),                          -- Noctowl
  -- Sound
  (189, 'walking', null, null, null, 'Meridian Sound'),               -- Jumpluff
  (438, 'walking', null, null, null, 'Pastoral Sound'),               -- Bonsly
  (439, 'walking', null, null, null, 'Pastoral Sound'),               -- MimeJr
  -- Swarm
  (113, 'walking', null, null, null, 'Swarm'),                        -- Chansey
  -- Surf
  (79,  'surfing',       90.00, 50, 54, null),                       -- Slowpoke
  (80,  'surfing',       10.00, 50, 54, null),                       -- Slowbro
  -- Fishing
  (129, 'fishing_old',  100.00, 50, 54, null),                       -- Magikarp
  (60,  'fishing_good',  60.00, 50, 54, null),                       -- Poliwag
  (118, 'fishing_good',  30.00, 50, 54, null),                       -- Goldeen
  (116, 'fishing_good',  10.00, 50, 54, null),                       -- Horsea
  (117, 'fishing_super', 60.00, 50, 54, null),                       -- Seadra
  (61,  'fishing_super', 30.00, 50, 54, null),                       -- Poliwhirl
  (211, 'fishing_super', 10.00, 50, 54, null)                        -- Qwilfish
) AS e(dex_id, method, rate, lmin, lmax, cond)
WHERE r.slug = 'route-13' AND r.game_id = 'c3d4e5f6-a7b8-9012-cdef-345678901234';

-- -------------------------------------------
-- Route 14 (levels: 51-55)
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions)
SELECT r.id, e.dex_id, e.method, e.rate::numeric, e.lmin, e.lmax, e.cond
FROM public.routes r,
(VALUES
  -- Grass Morning/Day
  (30,  'walking', 25.00, 51::int, 55::int, 'Morning / Day'::text),  -- Nidorina
  (33,  'walking', 25.00, 51, 55, 'Morning / Day'),                  -- Nidorino
  (277, 'walking', 24.00, 51, 55, 'Morning / Day'),                  -- Swellow
  (188, 'walking', 20.00, 51, 55, 'Morning / Day'),                  -- Skiploom
  (113, 'walking',  6.00, 51, 55, 'Morning / Day'),                  -- Chansey
  -- Grass Night
  (30,  'walking', 25.00, 51, 55, 'Night'),                          -- Nidorina
  (33,  'walking', 25.00, 51, 55, 'Night'),                          -- Nidorino
  (277, 'walking', 24.00, 51, 55, 'Night'),                          -- Swellow
  (49,  'walking', 20.00, 51, 55, 'Night'),                          -- Venomoth
  (113, 'walking',  6.00, 51, 55, 'Night'),                          -- Chansey
  -- Sound
  (189, 'walking', null, null, null, 'Meridian Sound'),               -- Jumpluff
  (438, 'walking', null, null, null, 'Pastoral Sound'),               -- Bonsly
  (439, 'walking', null, null, null, 'Pastoral Sound')                -- MimeJr
) AS e(dex_id, method, rate, lmin, lmax, cond)
WHERE r.slug = 'route-14' AND r.game_id = 'c3d4e5f6-a7b8-9012-cdef-345678901234';

-- -------------------------------------------
-- Route 15 (levels: 51-55)
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions)
SELECT r.id, e.dex_id, e.method, e.rate::numeric, e.lmin, e.lmax, e.cond
FROM public.routes r,
(VALUES
  -- Grass Morning/Day
  (30,  'walking', 25.00, 51::int, 55::int, 'Morning / Day'::text),  -- Nidorina
  (33,  'walking', 25.00, 51, 55, 'Morning / Day'),                  -- Nidorino
  (277, 'walking', 20.00, 51, 55, 'Morning / Day'),                  -- Swellow
  (188, 'walking', 20.00, 51, 55, 'Morning / Day'),                  -- Skiploom
  (132, 'walking', 10.00, 51, 55, 'Morning / Day'),                  -- Ditto
  -- Grass Night
  (30,  'walking', 25.00, 51, 55, 'Night'),                          -- Nidorina
  (33,  'walking', 25.00, 51, 55, 'Night'),                          -- Nidorino
  (277, 'walking', 20.00, 51, 55, 'Night'),                          -- Swellow
  (49,  'walking', 20.00, 51, 55, 'Night'),                          -- Venomoth
  (132, 'walking', 10.00, 51, 55, 'Night'),                          -- Ditto
  -- Sound
  (189, 'walking', null, null, null, 'Meridian Sound'),               -- Jumpluff
  (132, 'walking', null, null, null, 'Pastoral Sound')                -- Ditto
) AS e(dex_id, method, rate, lmin, lmax, cond)
WHERE r.slug = 'route-15' AND r.game_id = 'c3d4e5f6-a7b8-9012-cdef-345678901234';

-- -------------------------------------------
-- Route 11 (levels: 50-55)
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions)
SELECT r.id, e.dex_id, e.method, e.rate::numeric, e.lmin, e.lmax, e.cond
FROM public.routes r,
(VALUES
  -- Grass All Times
  (97,  'walking', 30.00, 50::int, 55::int, null::text),  -- Hypno
  (20,  'walking', 20.00, 50, 55, null),                   -- Raticate
  (311, 'walking', 15.00, 50, 55, null),                   -- Plusle
  (312, 'walking', 15.00, 50, 55, null),                   -- Minun
  (264, 'walking', 10.00, 50, 55, null),                   -- Linoone
  (404, 'walking', 10.00, 50, 55, null),                   -- Luxio
  -- Sound
  (405, 'walking', null, null, null, 'Meridian Sound'),     -- Luxray
  (114, 'walking', null, null, null, 'Pastoral Sound'),     -- Tangela
  (446, 'walking', null, null, null, 'Pastoral Sound')      -- Munchlax
) AS e(dex_id, method, rate, lmin, lmax, cond)
WHERE r.slug = 'route-11' AND r.game_id = 'c3d4e5f6-a7b8-9012-cdef-345678901234';

-- -------------------------------------------
-- Fuchsia City (levels: null - city)
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions)
SELECT r.id, e.dex_id, e.method, e.rate::numeric, e.lmin, e.lmax, e.cond
FROM public.routes r,
(VALUES
  (129, 'surfing',       100.00, null::int, null::int, null::text),  -- Magikarp
  (129, 'fishing_old',   100.00, null, null, null),                   -- Magikarp
  (129, 'fishing_good',   97.00, null, null, null),                   -- Magikarp
  (130, 'fishing_good',    3.00, null, null, null),                   -- Gyarados
  (129, 'fishing_super',  70.00, null, null, null),                   -- Magikarp
  (130, 'fishing_super',  30.00, null, null, null)                    -- Gyarados
) AS e(dex_id, method, rate, lmin, lmax, cond)
WHERE r.slug = 'fuchsia-city' AND r.game_id = 'c3d4e5f6-a7b8-9012-cdef-345678901234';

-- -------------------------------------------
-- Route 18 (levels: 50-56)
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions)
SELECT r.id, e.dex_id, e.method, e.rate::numeric, e.lmin, e.lmax, e.cond
FROM public.routes r,
(VALUES
  -- Grass Morning/Day
  (88,  'walking', 35.00, 50::int, 56::int, 'Morning / Day'::text),  -- Grimer
  (316, 'walking', 20.00, 50, 56, 'Morning / Day'),                  -- Gulpin
  (22,  'walking', 20.00, 50, 56, 'Morning / Day'),                  -- Fearow
  (89,  'walking', 10.00, 50, 56, 'Morning / Day'),                  -- Muk
  (219, 'walking', 10.00, 50, 56, 'Morning / Day'),                  -- Magcargo
  (85,  'walking',  5.00, 50, 56, 'Morning / Day'),                  -- Dodrio
  -- Grass Night
  (88,  'walking', 35.00, 50, 56, 'Night'),                          -- Grimer
  (316, 'walking', 20.00, 50, 56, 'Night'),                          -- Gulpin
  (22,  'walking', 20.00, 50, 56, 'Night'),                          -- Fearow
  (89,  'walking', 10.00, 50, 56, 'Night'),                          -- Muk
  (219, 'walking', 10.00, 50, 56, 'Night'),                          -- Magcargo
  (198, 'walking',  5.00, 50, 56, 'Night'),                          -- Murkrow
  -- Sound
  (317, 'walking', null, null, null, 'Meridian Sound'),               -- Swalot
  (430, 'walking', null, null, null, 'Meridian Sound'),               -- Honchkrow
  (291, 'walking', null, null, null, 'Pastoral Sound')                -- Ninjask
) AS e(dex_id, method, rate, lmin, lmax, cond)
WHERE r.slug = 'route-18' AND r.game_id = 'c3d4e5f6-a7b8-9012-cdef-345678901234';

-- -------------------------------------------
-- Route 17 (levels: 52-55)
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions)
SELECT r.id, e.dex_id, e.method, e.rate::numeric, e.lmin, e.lmax, e.cond
FROM public.routes r,
(VALUES
  -- Grass Morning/Day
  (88,  'walking', 35.00, 52::int, 55::int, 'Morning / Day'::text),  -- Grimer
  (316, 'walking', 20.00, 52, 55, 'Morning / Day'),                  -- Gulpin
  (22,  'walking', 20.00, 52, 55, 'Morning / Day'),                  -- Fearow
  (89,  'walking', 10.00, 52, 55, 'Morning / Day'),                  -- Muk
  (219, 'walking', 10.00, 52, 55, 'Morning / Day'),                  -- Magcargo
  (85,  'walking',  5.00, 52, 55, 'Morning / Day'),                  -- Dodrio
  -- Grass Night
  (88,  'walking', 35.00, 52, 55, 'Night'),                          -- Grimer
  (316, 'walking', 20.00, 52, 55, 'Night'),                          -- Gulpin
  (22,  'walking', 20.00, 52, 55, 'Night'),                          -- Fearow
  (89,  'walking', 10.00, 52, 55, 'Night'),                          -- Muk
  (219, 'walking', 10.00, 52, 55, 'Night'),                          -- Magcargo
  (200, 'walking',  5.00, 52, 55, 'Night'),                          -- Misdreavus
  -- Sound
  (317, 'walking', null, null, null, 'Meridian Sound'),               -- Swalot
  (429, 'walking', null, null, null, 'Meridian Sound'),               -- Mismagius
  (356, 'walking', null, null, null, 'Pastoral Sound'),               -- Dusclops
  (426, 'walking', null, null, null, 'Pastoral Sound')                -- Drifblim
) AS e(dex_id, method, rate, lmin, lmax, cond)
WHERE r.slug = 'route-17' AND r.game_id = 'c3d4e5f6-a7b8-9012-cdef-345678901234';

-- -------------------------------------------
-- Route 16 (levels: 52-55)
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions)
SELECT r.id, e.dex_id, e.method, e.rate::numeric, e.lmin, e.lmax, e.cond
FROM public.routes r,
(VALUES
  -- Grass All Times
  (88,  'walking', 35.00, 52::int, 55::int, null::text),  -- Grimer
  (316, 'walking', 20.00, 52, 55, null),                   -- Gulpin
  (451, 'walking', 20.00, 52, 55, null),                   -- Skorupi
  (89,  'walking', 10.00, 52, 55, null),                   -- Muk
  (219, 'walking', 10.00, 52, 55, null),                   -- Magcargo
  (452, 'walking',  5.00, 52, 55, null),                   -- Drapion
  -- Sound
  (452, 'walking', null, null, null, 'Meridian Sound'),     -- Drapion
  (317, 'walking', null, null, null, 'Meridian Sound'),     -- Swalot
  (291, 'walking', null, null, null, 'Pastoral Sound')      -- Ninjask
) AS e(dex_id, method, rate, lmin, lmax, cond)
WHERE r.slug = 'route-16' AND r.game_id = 'c3d4e5f6-a7b8-9012-cdef-345678901234';

-- -------------------------------------------
-- Route 7 (levels: 50-54)
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions)
SELECT r.id, e.dex_id, e.method, e.rate::numeric, e.lmin, e.lmax, e.cond
FROM public.routes r,
(VALUES
  -- Grass Morning/Day
  (70,  'walking', 20.00, 50::int, 54::int, 'Morning / Day'::text),  -- Weepinbell
  (17,  'walking', 20.00, 50, 54, 'Morning / Day'),                  -- Pidgeotto
  (397, 'walking', 15.00, 50, 54, 'Morning / Day'),                  -- Staravia
  (58,  'walking', 10.00, 50, 54, 'Morning / Day'),                  -- Growlithe
  (37,  'walking', 10.00, 50, 54, 'Morning / Day'),                  -- Vulpix
  (39,  'walking', 10.00, 50, 54, 'Morning / Day'),                  -- Jigglypuff
  (20,  'walking', 10.00, 50, 54, 'Morning / Day'),                  -- Raticate
  (64,  'walking',  5.00, 50, 54, 'Morning / Day'),                  -- Kadabra
  -- Grass Night
  (70,  'walking', 20.00, 50, 54, 'Night'),                          -- Weepinbell
  (44,  'walking', 20.00, 50, 54, 'Night'),                          -- Gloom
  (228, 'walking', 15.00, 50, 54, 'Night'),                          -- Houndour
  (58,  'walking', 10.00, 50, 54, 'Night'),                          -- Growlithe
  (37,  'walking', 10.00, 50, 54, 'Night'),                          -- Vulpix
  (39,  'walking', 10.00, 50, 54, 'Night'),                          -- Jigglypuff
  (53,  'walking', 10.00, 50, 54, 'Night'),                          -- Persian
  (229, 'walking',  5.00, 50, 54, 'Night'),                          -- Houndoom
  -- Sound
  (182, 'walking', null, null, null, 'Meridian Sound'),               -- Bellossom
  (264, 'walking', null, null, null, 'Pastoral Sound'),               -- Linoone
  (400, 'walking', null, null, null, 'Pastoral Sound')                -- Bibarel
) AS e(dex_id, method, rate, lmin, lmax, cond)
WHERE r.slug = 'route-7' AND r.game_id = 'c3d4e5f6-a7b8-9012-cdef-345678901234';

-- -------------------------------------------
-- Celadon City (levels: null - city)
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions)
SELECT r.id, e.dex_id, e.method, e.rate::numeric, e.lmin, e.lmax, e.cond
FROM public.routes r,
(VALUES
  (88, 'surfing', 90.00, null::int, null::int, null::text),  -- Grimer
  (89, 'surfing', 10.00, null, null, null)                    -- Muk
) AS e(dex_id, method, rate, lmin, lmax, cond)
WHERE r.slug = 'celadon-city' AND r.game_id = 'c3d4e5f6-a7b8-9012-cdef-345678901234';

-- -------------------------------------------
-- Viridian City (levels: null - city)
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions)
SELECT r.id, e.dex_id, e.method, e.rate::numeric, e.lmin, e.lmax, e.cond
FROM public.routes r,
(VALUES
  (60,  'surfing',       100.00, null::int, null::int, null::text),  -- Poliwag
  (60,  'fishing_old',   100.00, null, null, null),                   -- Poliwag
  (54,  'fishing_good',  100.00, null, null, null),                   -- Psyduck
  (118, 'fishing_super', 100.00, null, null, null)                    -- Goldeen
) AS e(dex_id, method, rate, lmin, lmax, cond)
WHERE r.slug = 'viridian-city' AND r.game_id = 'c3d4e5f6-a7b8-9012-cdef-345678901234';

-- -------------------------------------------
-- Route 2 South (levels: 45-49)
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions)
SELECT r.id, e.dex_id, e.method, e.rate::numeric, e.lmin, e.lmax, e.cond
FROM public.routes r,
(VALUES
  -- Grass Morning/Day
  (12,  'walking', 25.00, 45::int, 49::int, 'Morning / Day'::text),  -- Butterfree
  (15,  'walking', 25.00, 45, 49, 'Morning / Day'),                  -- Beedrill
  (166, 'walking', 20.00, 45, 49, 'Morning / Day'),                  -- Ledian
  (17,  'walking', 10.00, 45, 49, 'Morning / Day'),                  -- Pidgeotto
  (417, 'walking', 10.00, 45, 49, 'Morning / Day'),                  -- Pachirisu
  (421, 'walking', 10.00, 45, 49, 'Morning / Day'),                  -- Cherrim
  -- Grass Night
  (12,  'walking', 25.00, 45, 49, 'Night'),                          -- Butterfree
  (15,  'walking', 25.00, 45, 49, 'Night'),                          -- Beedrill
  (168, 'walking', 20.00, 45, 49, 'Night'),                          -- Ariados
  (164, 'walking', 10.00, 45, 49, 'Night'),                          -- Noctowl
  (417, 'walking', 10.00, 45, 49, 'Night'),                          -- Pachirisu
  (193, 'walking', 10.00, 45, 49, 'Night'),                          -- Yanma
  -- Sound
  (18,  'walking', null, null, null, 'Meridian Sound'),               -- Pidgeot
  (191, 'walking', null, null, null, 'Pastoral Sound'),               -- Sunkern
  (406, 'walking', null, null, null, 'Pastoral Sound')                -- Budew
) AS e(dex_id, method, rate, lmin, lmax, cond)
WHERE r.slug = 'route-2-south' AND r.game_id = 'c3d4e5f6-a7b8-9012-cdef-345678901234';

-- -------------------------------------------
-- Route 1 (levels: 48-60)
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions)
SELECT r.id, e.dex_id, e.method, e.rate::numeric, e.lmin, e.lmax, e.cond
FROM public.routes r,
(VALUES
  -- Grass Morning/Day
  (16,  'walking', 20.00, 48::int, 60::int, 'Morning / Day'::text),  -- Pidgey
  (19,  'walking', 20.00, 48, 60, 'Morning / Day'),                  -- Rattata
  (161, 'walking', 10.00, 48, 60, 'Morning / Day'),                  -- Sentret
  (263, 'walking', 10.00, 48, 60, 'Morning / Day'),                  -- Zigzagoon
  (399, 'walking', 10.00, 48, 60, 'Morning / Day'),                  -- Bidoof
  (396, 'walking', 10.00, 48, 60, 'Morning / Day'),                  -- Starly
  (17,  'walking',  5.00, 48, 60, 'Morning / Day'),                  -- Pidgeotto
  (20,  'walking',  5.00, 48, 60, 'Morning / Day'),                  -- Raticate
  (162, 'walking',  5.00, 48, 60, 'Morning / Day'),                  -- Furret
  (397, 'walking',  5.00, 48, 60, 'Morning / Day'),                  -- Staravia
  -- Grass Night
  (163, 'walking', 20.00, 48, 60, 'Night'),                          -- Hoothoot
  (19,  'walking', 20.00, 48, 60, 'Night'),                          -- Rattata
  (77,  'walking', 10.00, 48, 60, 'Night'),                          -- Ponyta
  (263, 'walking', 10.00, 48, 60, 'Night'),                          -- Zigzagoon
  (399, 'walking', 10.00, 48, 60, 'Night'),                          -- Bidoof
  (403, 'walking', 10.00, 48, 60, 'Night'),                          -- Shinx
  (164, 'walking',  5.00, 48, 60, 'Night'),                          -- Noctowl
  (20,  'walking',  5.00, 48, 60, 'Night'),                          -- Raticate
  (78,  'walking',  5.00, 48, 60, 'Night'),                          -- Rapidash
  (404, 'walking',  5.00, 48, 60, 'Night'),                          -- Luxio
  -- Sound
  (398, 'walking', null, null, null, 'Meridian Sound'),               -- Staraptor
  (400, 'walking', null, null, null, 'Meridian Sound'),               -- Bibarel
  (162, 'walking', null, null, null, 'Pastoral Sound'),               -- Furret
  (188, 'walking', null, null, null, 'Pastoral Sound'),               -- Skiploom
  -- Swarm
  (264, 'walking', null, null, null, 'Swarm')                         -- Linoone
) AS e(dex_id, method, rate, lmin, lmax, cond)
WHERE r.slug = 'route-1' AND r.game_id = 'c3d4e5f6-a7b8-9012-cdef-345678901234';

-- -------------------------------------------
-- Pallet Town (levels: null - city)
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions)
SELECT r.id, e.dex_id, e.method, e.rate::numeric, e.lmin, e.lmax, e.cond
FROM public.routes r,
(VALUES
  (183, 'surfing',       100.00, null::int, null::int, null::text),  -- Marill
  (456, 'fishing_old',   100.00, null, null, null),                   -- Finneon
  (72,  'fishing_good',  100.00, null, null, null),                   -- Tentacool
  (120, 'fishing_super', 100.00, null, null, null)                    -- Staryu
) AS e(dex_id, method, rate, lmin, lmax, cond)
WHERE r.slug = 'pallet-town' AND r.game_id = 'c3d4e5f6-a7b8-9012-cdef-345678901234';

-- -------------------------------------------
-- Route 21 (levels: 54-59)
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions)
SELECT r.id, e.dex_id, e.method, e.rate::numeric, e.lmin, e.lmax, e.cond
FROM public.routes r,
(VALUES
  -- Grass All Times
  (114, 'walking', 32.00, 54::int, 59::int, null::text),  -- Tangela
  (122, 'walking', 28.00, 54, 59, null),                   -- MrMime
  (20,  'walking', 15.00, 54, 59, null),                   -- Raticate
  (279, 'walking', 15.00, 54, 59, null),                   -- Pelipper
  (423, 'walking', 10.00, 54, 59, null),                   -- Gastrodon
  -- Surf
  (278, 'surfing',       63.00, 54, 59, null),             -- Wingull
  (320, 'surfing',       32.00, 54, 59, null),             -- Wailmer
  (279, 'surfing',        5.00, 54, 59, null),             -- Pelipper
  -- Sound
  (465, 'walking', null, null, null, 'Meridian Sound'),     -- Tangrowth
  (419, 'walking', null, null, null, 'Pastoral Sound'),     -- Floatzel
  (108, 'walking', null, null, null, 'Pastoral Sound'),     -- Lickitung
  -- Fishing
  (72,  'fishing_old',  100.00, 54, 59, null),             -- Tentacool
  (72,  'fishing_good',  67.00, 54, 59, null),             -- Tentacool
  (170, 'fishing_good',  30.00, 54, 59, null),             -- Chinchou
  (90,  'fishing_good',   3.00, 54, 59, null),             -- Shellder
  (73,  'fishing_super', 60.00, 54, 59, null),             -- Tentacruel
  (90,  'fishing_super', 33.00, 54, 59, null),             -- Shellder
  (171, 'fishing_super',  7.00, 54, 59, null)              -- Lanturn
) AS e(dex_id, method, rate, lmin, lmax, cond)
WHERE r.slug = 'route-21' AND r.game_id = 'c3d4e5f6-a7b8-9012-cdef-345678901234';

-- -------------------------------------------
-- Route 22 (levels: 54-59)
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions)
SELECT r.id, e.dex_id, e.method, e.rate::numeric, e.lmin, e.lmax, e.cond
FROM public.routes r,
(VALUES
  -- Grass All Times
  (22,  'walking', 30.00, 54::int, 59::int, null::text),  -- Fearow
  (85,  'walking', 30.00, 54, 59, null),                   -- Dodrio
  (20,  'walking', 15.00, 54, 59, null),                   -- Raticate
  (57,  'walking', 15.00, 54, 59, null),                   -- Primeape
  (78,  'walking', 10.00, 54, 59, null),                   -- Rapidash
  -- Surf
  (60,  'surfing',       63.00, 54, 59, null),             -- Poliwag
  (418, 'surfing',       37.00, 54, 59, null),             -- Buizel
  -- Sound
  (61,  'walking', null, null, null, 'Meridian Sound'),     -- Poliwhirl
  (271, 'walking', null, null, null, 'Pastoral Sound'),     -- Lombre
  (274, 'walking', null, null, null, 'Pastoral Sound'),     -- Nuzleaf
  -- Fishing
  (60,  'fishing_old',  100.00, 54, 59, null),             -- Poliwag
  (60,  'fishing_good', 100.00, 54, 59, null),             -- Poliwag
  (61,  'fishing_super', 98.00, 54, 59, null),             -- Poliwhirl
  (186, 'fishing_super',  2.00, 54, 59, null)              -- Politoed
) AS e(dex_id, method, rate, lmin, lmax, cond)
WHERE r.slug = 'route-22' AND r.game_id = 'c3d4e5f6-a7b8-9012-cdef-345678901234';

-- -------------------------------------------
-- Cinnabar Island (levels: null - city)
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions)
SELECT r.id, e.dex_id, e.method, e.rate::numeric, e.lmin, e.lmax, e.cond
FROM public.routes r,
(VALUES
  -- Surf
  (72,  'surfing',       90.00, null::int, null::int, null::text),  -- Tentacool
  (73,  'surfing',        7.00, null, null, null),                   -- Tentacruel
  (369, 'surfing',        3.00, null, null, null),                   -- Relicanth
  -- Fishing
  (72,  'fishing_old',  100.00, null, null, null),                   -- Tentacool
  (72,  'fishing_good',  67.00, null, null, null),                   -- Tentacool
  (170, 'fishing_good',  30.00, null, null, null),                   -- Chinchou
  (90,  'fishing_good',   3.00, null, null, null),                   -- Shellder
  (73,  'fishing_super', 60.00, null, null, null),                   -- Tentacruel
  (90,  'fishing_super', 33.00, null, null, null),                   -- Shellder
  (171, 'fishing_super',  7.00, null, null, null)                    -- Lanturn
) AS e(dex_id, method, rate, lmin, lmax, cond)
WHERE r.slug = 'cinnabar-island' AND r.game_id = 'c3d4e5f6-a7b8-9012-cdef-345678901234';

-- -------------------------------------------
-- Route 20 (levels: 5-60)
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions)
SELECT r.id, e.dex_id, e.method, e.rate::numeric, e.lmin, e.lmax, e.cond
FROM public.routes r,
(VALUES
  -- Surf
  (72,  'surfing',       60.00, 5::int, 60::int, null::text),  -- Tentacool
  (278, 'surfing',       30.00, 5, 60, null),                   -- Wingull
  (279, 'surfing',        5.00, 5, 60, null),                   -- Pelipper
  (73,  'surfing',        3.00, 5, 60, null),                   -- Tentacruel
  (321, 'surfing',        2.00, 5, 60, null),                   -- Wailord
  -- Fishing
  (129, 'fishing_old',   90.00, 5, 60, null),                   -- Magikarp
  (118, 'fishing_old',   10.00, 5, 60, null),                   -- Goldeen
  (118, 'fishing_good',  60.00, 5, 60, null),                   -- Goldeen
  (456, 'fishing_good',  30.00, 5, 60, null),                   -- Finneon
  (366, 'fishing_good',  10.00, 5, 60, null),                   -- Clamperl
  (457, 'fishing_super', 60.00, 5, 60, null),                   -- Lumineon
  (119, 'fishing_super', 30.00, 5, 60, null),                   -- Seaking
  (367, 'fishing_super',  5.00, 5, 60, null),                   -- Huntail
  (368, 'fishing_super',  5.00, 5, 60, null)                    -- Gorebyss
) AS e(dex_id, method, rate, lmin, lmax, cond)
WHERE r.slug = 'route-20' AND r.game_id = 'c3d4e5f6-a7b8-9012-cdef-345678901234';

-- -------------------------------------------
-- Route 19 (levels: 5-60)
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions)
SELECT r.id, e.dex_id, e.method, e.rate::numeric, e.lmin, e.lmax, e.cond
FROM public.routes r,
(VALUES
  -- Surf
  (72,  'surfing',       60.00, 5::int, 60::int, null::text),  -- Tentacool
  (278, 'surfing',       30.00, 5, 60, null),                   -- Wingull
  (279, 'surfing',        5.00, 5, 60, null),                   -- Pelipper
  (226, 'surfing',        5.00, 5, 60, null),                   -- Mantine
  -- Swarm
  (226, 'walking', null, null, null, 'Swarm'),                  -- Mantine
  -- Fishing
  (129, 'fishing_old',   90.00, 5, 60, null),                   -- Magikarp
  (118, 'fishing_old',   10.00, 5, 60, null),                   -- Goldeen
  (118, 'fishing_good',  60.00, 5, 60, null),                   -- Goldeen
  (456, 'fishing_good',  30.00, 5, 60, null),                   -- Finneon
  (366, 'fishing_good',  10.00, 5, 60, null),                   -- Clamperl
  (457, 'fishing_super', 60.00, 5, 60, null),                   -- Lumineon
  (119, 'fishing_super', 30.00, 5, 60, null),                   -- Seaking
  (367, 'fishing_super',  5.00, 5, 60, null),                   -- Huntail
  (368, 'fishing_super',  5.00, 5, 60, null),                   -- Gorebyss
  -- Rock Smash
  (98,  'rock_smash',    90.00, 5, 60, null),                   -- Krabby
  (99,  'rock_smash',    10.00, 5, 60, null)                    -- Kingler
) AS e(dex_id, method, rate, lmin, lmax, cond)
WHERE r.slug = 'route-19' AND r.game_id = 'c3d4e5f6-a7b8-9012-cdef-345678901234';

-- -------------------------------------------
-- Seafoam Islands 1F (levels: 48-58)
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions)
SELECT r.id, e.dex_id, e.method, e.rate::numeric, e.lmin, e.lmax, e.cond
FROM public.routes r,
(VALUES
  -- Cave All Times
  (41,  'walking', 30.00, 48::int, 58::int, null::text),  -- Zubat
  (54,  'walking', 30.00, 48, 58, null),                   -- Psyduck
  (79,  'walking', 30.00, 48, 58, null),                   -- Slowpoke
  (42,  'walking', 10.00, 48, 58, null),                   -- Golbat
  -- Sound
  (55,  'walking', null, null, null, 'Meridian Sound'),     -- Golduck
  (80,  'walking', null, null, null, 'Meridian Sound'),     -- Slowbro
  (120, 'walking', null, null, null, 'Pastoral Sound')      -- Staryu
) AS e(dex_id, method, rate, lmin, lmax, cond)
WHERE r.slug = 'seafoam-islands-1f' AND r.game_id = 'c3d4e5f6-a7b8-9012-cdef-345678901234';

-- -------------------------------------------
-- Seafoam Islands B1F (levels: 49-59)
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions)
SELECT r.id, e.dex_id, e.method, e.rate::numeric, e.lmin, e.lmax, e.cond
FROM public.routes r,
(VALUES
  -- Cave All Times
  (86,  'walking', 25.00, 49::int, 59::int, null::text),  -- Seel
  (42,  'walking', 20.00, 49, 59, null),                   -- Golbat
  (80,  'walking', 20.00, 49, 59, null),                   -- Slowbro
  (221, 'walking', 20.00, 49, 59, null),                   -- Piloswine
  (361, 'walking', 15.00, 49, 59, null),                   -- Snorunt
  -- Sound
  (362, 'walking', null, null, null, 'Meridian Sound'),     -- Glalie
  (478, 'walking', null, null, null, 'Meridian Sound'),     -- Froslass
  (99,  'walking', null, null, null, 'Pastoral Sound'),     -- Kingler
  (55,  'walking', null, null, null, 'Pastoral Sound')      -- Golduck
) AS e(dex_id, method, rate, lmin, lmax, cond)
WHERE r.slug = 'seafoam-islands-b1f' AND r.game_id = 'c3d4e5f6-a7b8-9012-cdef-345678901234';

-- -------------------------------------------
-- Seafoam Islands B2F (levels: 56-60)
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions)
SELECT r.id, e.dex_id, e.method, e.rate::numeric, e.lmin, e.lmax, e.cond
FROM public.routes r,
(VALUES
  -- Cave All Times
  (42,  'walking', 35.00, 56::int, 60::int, null::text),  -- Golbat
  (87,  'walking', 20.00, 56, 60, null),                   -- Dewgong
  (99,  'walking', 10.00, 56, 60, null),                   -- Kingler
  (221, 'walking', 10.00, 56, 60, null),                   -- Piloswine
  (80,  'walking', 10.00, 56, 60, null),                   -- Slowbro
  (364, 'walking', 10.00, 56, 60, null),                   -- Sealeo
  (362, 'walking',  5.00, 56, 60, null),                   -- Glalie
  -- Sound
  (365, 'walking', null, null, null, 'Meridian Sound'),     -- Walrein
  (473, 'walking', null, null, null, 'Meridian Sound'),     -- Mamoswine
  (478, 'walking', null, null, null, 'Pastoral Sound'),     -- Froslass
  (199, 'walking', null, null, null, 'Pastoral Sound')      -- Slowking
) AS e(dex_id, method, rate, lmin, lmax, cond)
WHERE r.slug = 'seafoam-islands-b2f' AND r.game_id = 'c3d4e5f6-a7b8-9012-cdef-345678901234';

-- -------------------------------------------
-- Seafoam Islands B3F (levels: 56-60)
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions)
SELECT r.id, e.dex_id, e.method, e.rate::numeric, e.lmin, e.lmax, e.cond
FROM public.routes r,
(VALUES
  -- Cave All Times
  (42,  'walking', 25.00, 56::int, 60::int, null::text),  -- Golbat
  (87,  'walking', 20.00, 56, 60, null),                   -- Dewgong
  (99,  'walking', 10.00, 56, 60, null),                   -- Kingler
  (364, 'walking', 10.00, 56, 60, null),                   -- Sealeo
  (221, 'walking', 10.00, 56, 60, null),                   -- Piloswine
  (362, 'walking', 10.00, 56, 60, null),                   -- Glalie
  (225, 'walking',  5.00, 56, 60, null),                   -- Delibird
  (215, 'walking',  5.00, 56, 60, null),                   -- Sneasel
  (124, 'walking',  5.00, 56, 60, null),                   -- Jynx
  -- Sound
  (461, 'walking', null, null, null, 'Meridian Sound'),     -- Weavile
  (473, 'walking', null, null, null, 'Meridian Sound'),     -- Mamoswine
  (225, 'walking', null, null, null, 'Pastoral Sound'),     -- Delibird
  (124, 'walking', null, null, null, 'Pastoral Sound')      -- Jynx
) AS e(dex_id, method, rate, lmin, lmax, cond)
WHERE r.slug = 'seafoam-islands-b3f' AND r.game_id = 'c3d4e5f6-a7b8-9012-cdef-345678901234';

-- -------------------------------------------
-- Seafoam Islands B4F (levels: 57-60)
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions)
SELECT r.id, e.dex_id, e.method, e.rate::numeric, e.lmin, e.lmax, e.cond
FROM public.routes r,
(VALUES
  -- Cave All Times
  (42,  'walking', 25.00, 57::int, 60::int, null::text),  -- Golbat
  (87,  'walking', 20.00, 57, 60, null),                   -- Dewgong
  (99,  'walking', 10.00, 57, 60, null),                   -- Kingler
  (364, 'walking', 10.00, 57, 60, null),                   -- Sealeo
  (221, 'walking', 10.00, 57, 60, null),                   -- Piloswine
  (362, 'walking', 10.00, 57, 60, null),                   -- Glalie
  (225, 'walking',  5.00, 57, 60, null),                   -- Delibird
  (215, 'walking',  5.00, 57, 60, null),                   -- Sneasel
  (124, 'walking',  5.00, 57, 60, null),                   -- Jynx
  -- Sound
  (169, 'walking', null, null, null, 'Meridian Sound'),     -- Crobat
  (365, 'walking', null, null, null, 'Meridian Sound'),     -- Walrein
  (131, 'walking', null, null, null, 'Pastoral Sound'),     -- Lapras
  -- Surf
  (363, 'surfing',       60.00, 57, 60, null),             -- Spheal
  (72,  'surfing',       30.00, 57, 60, null),             -- Tentacool
  (120, 'surfing',        8.00, 57, 60, null),             -- Staryu
  (131, 'surfing',        2.00, 57, 60, null),             -- Lapras
  -- Fishing
  (129, 'fishing_old',   90.00, 57, 60, null),             -- Magikarp
  (116, 'fishing_old',    5.00, 57, 60, null),             -- Horsea
  (98,  'fishing_old',    5.00, 57, 60, null),             -- Krabby
  (129, 'fishing_good',  60.00, 57, 60, null),             -- Magikarp
  (98,  'fishing_good',  30.00, 57, 60, null),             -- Krabby
  (116, 'fishing_good',   5.00, 57, 60, null),             -- Horsea
  (90,  'fishing_good',   5.00, 57, 60, null),             -- Shellder
  (130, 'fishing_super', 60.00, 57, 60, null),             -- Gyarados
  (117, 'fishing_super', 30.00, 57, 60, null),             -- Seadra
  (90,  'fishing_super',  5.00, 57, 60, null),             -- Shellder
  (99,  'fishing_super',  5.00, 57, 60, null)              -- Kingler
) AS e(dex_id, method, rate, lmin, lmax, cond)
WHERE r.slug = 'seafoam-islands-b4f' AND r.game_id = 'c3d4e5f6-a7b8-9012-cdef-345678901234';

-- -------------------------------------------
-- Viridian Forest (levels: 60-68)
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions)
SELECT r.id, e.dex_id, e.method, e.rate::numeric, e.lmin, e.lmax, e.cond
FROM public.routes r,
(VALUES
  -- Grass Morning
  (70,  'walking', 25.00, 60::int, 68::int, 'Morning'::text),  -- Weepinbell
  (44,  'walking', 25.00, 60, 68, 'Morning'),                   -- Gloom
  (166, 'walking', 10.00, 60, 68, 'Morning'),                   -- Ledian
  (274, 'walking', 10.00, 60, 68, 'Morning'),                   -- Nuzleaf
  (123, 'walking', 10.00, 60, 68, 'Morning'),                   -- Scyther
  (127, 'walking', 10.00, 60, 68, 'Morning'),                   -- Pinsir
  (413, 'walking',  5.00, 60, 68, 'Morning'),                   -- Wormadam
  (414, 'walking',  5.00, 60, 68, 'Morning'),                   -- Mothim
  -- Grass Day
  (70,  'walking', 25.00, 60, 68, 'Day'),                       -- Weepinbell
  (44,  'walking', 25.00, 60, 68, 'Day'),                       -- Gloom
  (357, 'walking', 10.00, 60, 68, 'Day'),                       -- Tropius
  (274, 'walking', 10.00, 60, 68, 'Day'),                       -- Nuzleaf
  (123, 'walking', 10.00, 60, 68, 'Day'),                       -- Scyther
  (127, 'walking', 10.00, 60, 68, 'Day'),                       -- Pinsir
  (413, 'walking',  5.00, 60, 68, 'Day'),                       -- Wormadam
  (414, 'walking',  5.00, 60, 68, 'Day'),                       -- Mothim
  -- Grass Night
  (47,  'walking', 25.00, 60, 68, 'Night'),                     -- Parasect
  (44,  'walking', 25.00, 60, 68, 'Night'),                     -- Gloom
  (168, 'walking', 10.00, 60, 68, 'Night'),                     -- Ariados
  (455, 'walking', 10.00, 60, 68, 'Night'),                     -- Carnivine
  (198, 'walking', 10.00, 60, 68, 'Night'),                     -- Murkrow
  (200, 'walking', 10.00, 60, 68, 'Night'),                     -- Misdreavus
  (413, 'walking',  5.00, 60, 68, 'Night'),                     -- Wormadam
  (414, 'walking',  5.00, 60, 68, 'Night'),                     -- Mothim
  -- Sound
  (275, 'walking', null, null, null, 'Meridian Sound'),          -- Shiftry
  (45,  'walking', null, null, null, 'Meridian Sound'),          -- Vileplume
  (424, 'walking', null, null, null, 'Pastoral Sound'),          -- Ambipom
  (26,  'walking', null, null, null, 'Pastoral Sound'),          -- Raichu
  -- Swarm
  (214, 'walking', null, null, null, 'Swarm')                    -- Heracross
) AS e(dex_id, method, rate, lmin, lmax, cond)
WHERE r.slug = 'viridian-forest' AND r.game_id = 'c3d4e5f6-a7b8-9012-cdef-345678901234';

-- ===========================================
-- SACRED GOLD: ENCOUNTER DATA (Part 5)
-- Bell Tower, Cerulean Cave, Route 28,
-- Mt. Silver (all areas)
-- ===========================================
-- Game ID: c3d4e5f6-a7b8-9012-cdef-345678901234
-- ===========================================

-- -------------------------------------------
-- Bell Tower 2F-3F encounters (levels 40-43)
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions)
SELECT r.id, e.dex_id, e.method, e.rate::numeric, e.lmin, e.lmax, e.cond
FROM public.routes r,
(VALUES
  (19,  'walking', 35.00, 40::int, 43::int, null::text),  -- Rattata
  (263, 'walking', 20.00, 40, 43, null),                   -- Zigzagoon
  (42,  'walking', 20.00, 40, 43, null),                   -- Golbat
  (92,  'walking', 15.00, 40, 43, null),                   -- Gastly
  (353, 'walking', 5.00, 40, 43, null),                    -- Shuppet
  (355, 'walking', 5.00, 40, 43, null),                    -- Duskull
  (93,  'walking', null::numeric, null::int, null::int, 'Meridian Sound'),   -- Haunter
  (264, 'walking', null, null, null, 'Meridian Sound'),    -- Linoone
  (353, 'walking', null, null, null, 'Pastoral Sound'),    -- Shuppet
  (355, 'walking', null, null, null, 'Pastoral Sound')     -- Duskull
) AS e(dex_id, method, rate, lmin, lmax, cond)
WHERE r.slug = 'bell-tower-2f-3f' AND r.game_id = 'c3d4e5f6-a7b8-9012-cdef-345678901234';

-- -------------------------------------------
-- Bell Tower 4F-6F encounters (levels 41-44)
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions)
SELECT r.id, e.dex_id, e.method, e.rate::numeric, e.lmin, e.lmax, e.cond
FROM public.routes r,
(VALUES
  (20,  'walking', 30.00, 41::int, 44::int, null::text),  -- Raticate
  (264, 'walking', 20.00, 41, 44, null),                   -- Linoone
  (42,  'walking', 20.00, 41, 44, null),                   -- Golbat
  (93,  'walking', 15.00, 41, 44, null),                   -- Haunter
  (353, 'walking', 5.00, 41, 44, null),                    -- Shuppet
  (355, 'walking', 5.00, 41, 44, null),                    -- Duskull
  (132, 'walking', 5.00, 41, 44, null),                    -- Ditto
  (356, 'walking', null::numeric, null::int, null::int, 'Meridian Sound'),   -- Dusclops
  (354, 'walking', null, null, null, 'Meridian Sound'),    -- Banette
  (132, 'walking', null, null, null, 'Pastoral Sound')     -- Ditto
) AS e(dex_id, method, rate, lmin, lmax, cond)
WHERE r.slug = 'bell-tower-4f-6f' AND r.game_id = 'c3d4e5f6-a7b8-9012-cdef-345678901234';

-- -------------------------------------------
-- Bell Tower 7F-9F encounters (levels 41-45)
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions)
SELECT r.id, e.dex_id, e.method, e.rate::numeric, e.lmin, e.lmax, e.cond
FROM public.routes r,
(VALUES
  (20,  'walking', 20.00, 41::int, 45::int, null::text),  -- Raticate
  (93,  'walking', 20.00, 41, 45, null),                   -- Haunter
  (42,  'walking', 15.00, 41, 45, null),                   -- Golbat
  (356, 'walking', 10.00, 41, 45, null),                   -- Dusclops
  (354, 'walking', 10.00, 41, 45, null),                   -- Banette
  (333, 'walking', 10.00, 41, 45, null),                   -- Swablu
  (177, 'walking', 5.00, 41, 45, null),                    -- Natu
  (436, 'walking', 5.00, 41, 45, null),                    -- Bronzor
  (132, 'walking', 5.00, 41, 45, null),                    -- Ditto
  (334, 'walking', null::numeric, null::int, null::int, 'Meridian Sound'),   -- Altaria
  (178, 'walking', null, null, null, 'Meridian Sound'),    -- Xatu
  (436, 'walking', null, null, null, 'Pastoral Sound'),    -- Bronzor
  (132, 'walking', null, null, null, 'Pastoral Sound')     -- Ditto
) AS e(dex_id, method, rate, lmin, lmax, cond)
WHERE r.slug = 'bell-tower-7f-9f' AND r.game_id = 'c3d4e5f6-a7b8-9012-cdef-345678901234';

-- -------------------------------------------
-- Bell Tower 10F encounters (levels 43-45)
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions)
SELECT r.id, e.dex_id, e.method, e.rate::numeric, e.lmin, e.lmax, e.cond
FROM public.routes r,
(VALUES
  (20,  'walking', 20.00, 43::int, 45::int, null::text),  -- Raticate
  (132, 'walking', 20.00, 43, 45, null),                   -- Ditto
  (42,  'walking', 10.00, 43, 45, null),                   -- Golbat
  (334, 'walking', 10.00, 43, 45, null),                   -- Altaria
  (178, 'walking', 10.00, 43, 45, null),                   -- Xatu
  (93,  'walking', 10.00, 43, 45, null),                   -- Haunter
  (344, 'walking', 5.00, 43, 45, null),                    -- Claydol
  (338, 'walking', 5.00, 43, 45, null),                    -- Solrock
  (437, 'walking', 5.00, 43, 45, null),                    -- Bronzong
  (337, 'walking', 5.00, 43, 45, null),                    -- Lunatone
  (94,  'walking', null::numeric, null::int, null::int, 'Meridian Sound'),   -- Gengar
  (344, 'walking', null, null, null, 'Pastoral Sound'),    -- Claydol
  (437, 'walking', null, null, null, 'Pastoral Sound')     -- Bronzong
) AS e(dex_id, method, rate, lmin, lmax, cond)
WHERE r.slug = 'bell-tower-10f' AND r.game_id = 'c3d4e5f6-a7b8-9012-cdef-345678901234';

-- -------------------------------------------
-- Cerulean Cave 1F encounters (levels 60-64)
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions)
SELECT r.id, e.dex_id, e.method, e.rate::numeric, e.lmin, e.lmax, e.cond
FROM public.routes r,
(VALUES
  -- Cave Morning
  (42,  'walking', 40.00, 60::int, 64::int, 'Morning'::text),  -- Golbat
  (75,  'walking', 15.00, 60, 64, 'Morning'),                   -- Graveler
  (28,  'walking', 10.00, 60, 64, 'Morning'),                   -- Sandslash
  (44,  'walking', 10.00, 60, 64, 'Morning'),                   -- Gloom
  (70,  'walking', 10.00, 60, 64, 'Morning'),                   -- Weepinbell
  (49,  'walking', 5.00, 60, 64, 'Morning'),                    -- Venomoth
  (47,  'walking', 5.00, 60, 64, 'Morning'),                    -- Parasect
  (132, 'walking', 5.00, 60, 64, 'Morning'),                    -- Ditto
  -- Cave Day
  (42,  'walking', 40.00, 60, 64, 'Day'),                       -- Golbat
  (93,  'walking', 10.00, 60, 64, 'Day'),                       -- Haunter
  (64,  'walking', 10.00, 60, 64, 'Day'),                       -- Kadabra
  (75,  'walking', 10.00, 60, 64, 'Day'),                       -- Graveler
  (67,  'walking', 10.00, 60, 64, 'Day'),                       -- Machoke
  (101, 'walking', 5.00, 60, 64, 'Day'),                        -- Electrode
  (202, 'walking', 5.00, 60, 64, 'Day'),                        -- Wobbuffet
  (437, 'walking', 5.00, 60, 64, 'Day'),                        -- Bronzong
  (82,  'walking', 5.00, 60, 64, 'Day'),                        -- Magneton
  -- Cave Night
  (42,  'walking', 20.00, 60, 64, 'Night'),                     -- Golbat
  (82,  'walking', 20.00, 60, 64, 'Night'),                     -- Magneton
  (97,  'walking', 15.00, 60, 64, 'Night'),                     -- Hypno
  (24,  'walking', 10.00, 60, 64, 'Night'),                     -- Arbok
  (49,  'walking', 10.00, 60, 64, 'Night'),                     -- Venomoth
  (78,  'walking', 10.00, 60, 64, 'Night'),                     -- Rapidash
  (47,  'walking', 5.00, 60, 64, 'Night'),                      -- Parasect
  (64,  'walking', 5.00, 60, 64, 'Night'),                      -- Kadabra
  (26,  'walking', 4.00, 60, 64, 'Night'),                      -- Raichu
  (132, 'walking', 1.00, 60, 64, 'Night'),                      -- Ditto
  -- Rock Smash
  (299, 'rock_smash', 100.00, 60, 64, null),                    -- Nosepass
  -- Sound
  (295, 'walking', null::numeric, null::int, null::int, 'Meridian Sound'),   -- Exploud
  (65,  'walking', null, null, null, 'Meridian Sound'),          -- Alakazam
  (137, 'walking', null, null, null, 'Pastoral Sound'),          -- Porygon
  (132, 'walking', null, null, null, 'Pastoral Sound'),          -- Ditto
  -- Surf
  (55,  'surfing', 60.00, 60, 64, null),                        -- Golduck
  (80,  'surfing', 40.00, 60, 64, null),                        -- Slowbro
  -- Old Rod
  (129, 'fishing_old', 100.00, 60, 64, null),                   -- Magikarp
  -- Good Rod
  (60,  'fishing_good', 60.00, 60, 64, null),                   -- Poliwag
  (118, 'fishing_good', 40.00, 60, 64, null),                   -- Goldeen
  -- Super Rod
  (98,  'fishing_super', 60.00, 60, 64, null),                  -- Krabby
  (80,  'fishing_super', 30.00, 60, 64, null),                  -- Slowbro
  (117, 'fishing_super', 5.00, 60, 64, null),                   -- Seadra
  (119, 'fishing_super', 5.00, 60, 64, null)                    -- Seaking
) AS e(dex_id, method, rate, lmin, lmax, cond)
WHERE r.slug = 'cerulean-cave-1f' AND r.game_id = 'c3d4e5f6-a7b8-9012-cdef-345678901234';

-- -------------------------------------------
-- Cerulean Cave 2F encounters (levels 64-68)
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions)
SELECT r.id, e.dex_id, e.method, e.rate::numeric, e.lmin, e.lmax, e.cond
FROM public.routes r,
(VALUES
  -- Cave Morning
  (42,  'walking', 40.00, 64::int, 68::int, 'Morning'::text),  -- Golbat
  (75,  'walking', 15.00, 64, 68, 'Morning'),                   -- Graveler
  (132, 'walking', 10.00, 64, 68, 'Morning'),                   -- Ditto
  (28,  'walking', 10.00, 64, 68, 'Morning'),                   -- Sandslash
  (111, 'walking', 10.00, 64, 68, 'Morning'),                   -- Rhyhorn
  (112, 'walking', 5.00, 64, 68, 'Morning'),                    -- Rhydon
  (44,  'walking', 5.00, 64, 68, 'Morning'),                    -- Gloom
  (70,  'walking', 5.00, 64, 68, 'Morning'),                    -- Weepinbell
  -- Cave Day
  (42,  'walking', 20.00, 64, 68, 'Day'),                       -- Golbat
  (75,  'walking', 20.00, 64, 68, 'Day'),                       -- Graveler
  (202, 'walking', 10.00, 64, 68, 'Day'),                       -- Wobbuffet
  (338, 'walking', 10.00, 64, 68, 'Day'),                       -- Solrock
  (337, 'walking', 10.00, 64, 68, 'Day'),                       -- Lunatone
  (101, 'walking', 10.00, 64, 68, 'Day'),                       -- Electrode
  (24,  'walking', 5.00, 64, 68, 'Day'),                        -- Arbok
  (28,  'walking', 5.00, 64, 68, 'Day'),                        -- Sandslash
  (437, 'walking', 5.00, 64, 68, 'Day'),                        -- Bronzong
  (82,  'walking', 5.00, 64, 68, 'Day'),                        -- Magneton
  -- Cave Night
  (85,  'walking', 20.00, 64, 68, 'Night'),                     -- Dodrio
  (49,  'walking', 20.00, 64, 68, 'Night'),                     -- Venomoth
  (64,  'walking', 15.00, 64, 68, 'Night'),                     -- Kadabra
  (101, 'walking', 10.00, 64, 68, 'Night'),                     -- Electrode
  (105, 'walking', 10.00, 64, 68, 'Night'),                     -- Marowak
  (112, 'walking', 10.00, 64, 68, 'Night'),                     -- Rhydon
  (40,  'walking', 5.00, 64, 68, 'Night'),                      -- Wigglytuff
  (113, 'walking', 5.00, 64, 68, 'Night'),                      -- Chansey
  (132, 'walking', 5.00, 64, 68, 'Night'),                      -- Ditto
  -- Sound
  (65,  'walking', null::numeric, null::int, null::int, 'Meridian Sound'),   -- Alakazam
  (464, 'walking', null, null, null, 'Meridian Sound'),          -- Rhyperior
  (137, 'walking', null, null, null, 'Pastoral Sound'),          -- Porygon
  (113, 'walking', null, null, null, 'Pastoral Sound')           -- Chansey
) AS e(dex_id, method, rate, lmin, lmax, cond)
WHERE r.slug = 'cerulean-cave-2f' AND r.game_id = 'c3d4e5f6-a7b8-9012-cdef-345678901234';

-- -------------------------------------------
-- Cerulean Cave B2F encounters (levels 68-72)
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions)
SELECT r.id, e.dex_id, e.method, e.rate::numeric, e.lmin, e.lmax, e.cond
FROM public.routes r,
(VALUES
  -- Cave Morning
  (42,  'walking', 40.00, 68::int, 72::int, 'Morning'::text),  -- Golbat
  (132, 'walking', 15.00, 68, 72, 'Morning'),                   -- Ditto
  (75,  'walking', 15.00, 68, 72, 'Morning'),                   -- Graveler
  (112, 'walking', 10.00, 68, 72, 'Morning'),                   -- Rhydon
  (111, 'walking', 10.00, 68, 72, 'Morning'),                   -- Rhyhorn
  (113, 'walking', 5.00, 68, 72, 'Morning'),                    -- Chansey
  (108, 'walking', 5.00, 68, 72, 'Morning'),                    -- Lickitung
  -- Cave Day
  (42,  'walking', 20.00, 68, 72, 'Day'),                       -- Golbat
  (437, 'walking', 20.00, 68, 72, 'Day'),                       -- Bronzong
  (356, 'walking', 10.00, 68, 72, 'Day'),                       -- Dusclops
  (358, 'walking', 10.00, 68, 72, 'Day'),                       -- Chimecho
  (354, 'walking', 10.00, 68, 72, 'Day'),                       -- Banette
  (112, 'walking', 10.00, 68, 72, 'Day'),                       -- Rhydon
  (219, 'walking', 5.00, 68, 72, 'Day'),                        -- Magcargo
  (93,  'walking', 5.00, 68, 72, 'Day'),                        -- Haunter
  (126, 'walking', 4.00, 68, 72, 'Day'),                        -- Magmar
  (125, 'walking', 4.00, 68, 72, 'Day'),                        -- Electabuzz
  (208, 'walking', 2.00, 68, 72, 'Day'),                        -- Steelix
  -- Cave Night
  (112, 'walking', 20.00, 68, 72, 'Night'),                     -- Rhydon
  (101, 'walking', 20.00, 68, 72, 'Night'),                     -- Electrode
  (105, 'walking', 15.00, 68, 72, 'Night'),                     -- Marowak
  (26,  'walking', 10.00, 68, 72, 'Night'),                     -- Raichu
  (47,  'walking', 10.00, 68, 72, 'Night'),                     -- Parasect
  (113, 'walking', 10.00, 68, 72, 'Night'),                     -- Chansey
  (132, 'walking', 10.00, 68, 72, 'Night'),                     -- Ditto
  (28,  'walking', 5.00, 68, 72, 'Night'),                      -- Sandslash
  -- Rock Smash
  (299, 'rock_smash', 100.00, 68, 72, null),                    -- Nosepass
  -- Sound
  (477, 'walking', null::numeric, null::int, null::int, 'Meridian Sound'),   -- Dusknoir
  (463, 'walking', null, null, null, 'Meridian Sound'),          -- Lickilicky
  (35,  'walking', null, null, null, 'Pastoral Sound'),          -- Clefairy
  (24,  'walking', null, null, null, 'Pastoral Sound'),          -- Arbok
  -- Surf
  (130, 'surfing', 60.00, 68, 72, null),                        -- Gyarados
  (73,  'surfing', 30.00, 68, 72, null),                        -- Tentacruel
  (171, 'surfing', 5.00, 68, 72, null),                         -- Lanturn
  (195, 'surfing', 5.00, 68, 72, null),                         -- Quagsire
  -- Old Rod
  (339, 'fishing_old', 60.00, 68, 72, null),                    -- Barboach
  (456, 'fishing_old', 40.00, 68, 72, null),                    -- Finneon
  -- Good Rod
  (340, 'fishing_good', 60.00, 68, 72, null),                   -- Whiscash
  (457, 'fishing_good', 30.00, 68, 72, null),                   -- Lumineon
  (117, 'fishing_good', 5.00, 68, 72, null),                    -- Seadra
  (119, 'fishing_good', 5.00, 68, 72, null),                    -- Seaking
  -- Super Rod
  (117, 'fishing_super', 60.00, 68, 72, null),                  -- Seadra
  (457, 'fishing_super', 30.00, 68, 72, null),                  -- Lumineon
  (340, 'fishing_super', 5.00, 68, 72, null),                   -- Whiscash
  (119, 'fishing_super', 5.00, 68, 72, null)                    -- Seaking
) AS e(dex_id, method, rate, lmin, lmax, cond)
WHERE r.slug = 'cerulean-cave-b2f' AND r.game_id = 'c3d4e5f6-a7b8-9012-cdef-345678901234';

-- -------------------------------------------
-- Route 28 encounters (levels 58-64)
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions)
SELECT r.id, e.dex_id, e.method, e.rate::numeric, e.lmin, e.lmax, e.cond
FROM public.routes r,
(VALUES
  -- Grass Morning/Day
  (114, 'walking', 25.00, 58::int, 64::int, 'Morning / Day'::text),  -- Tangela
  (77,  'walking', 25.00, 58, 64, 'Morning / Day'),                   -- Ponyta
  (78,  'walking', 10.00, 58, 64, 'Morning / Day'),                   -- Rapidash
  (217, 'walking', 10.00, 58, 64, 'Morning / Day'),                   -- Ursaring
  (232, 'walking', 10.00, 58, 64, 'Morning / Day'),                   -- Donphan
  (85,  'walking', 10.00, 58, 64, 'Morning / Day'),                   -- Dodrio
  (310, 'walking', 10.00, 58, 64, 'Morning / Day'),                   -- Manectric
  -- Grass Night
  (114, 'walking', 25.00, 58, 64, 'Night'),                           -- Tangela
  (77,  'walking', 20.00, 58, 64, 'Night'),                           -- Ponyta
  (78,  'walking', 10.00, 58, 64, 'Night'),                           -- Rapidash
  (217, 'walking', 10.00, 58, 64, 'Night'),                           -- Ursaring
  (232, 'walking', 10.00, 58, 64, 'Night'),                           -- Donphan
  (195, 'walking', 10.00, 58, 64, 'Night'),                           -- Quagsire
  (310, 'walking', 10.00, 58, 64, 'Night'),                           -- Manectric
  (215, 'walking', 5.00, 58, 64, 'Night'),                            -- Sneasel
  -- Sound
  (465, 'walking', null::numeric, null::int, null::int, 'Meridian Sound'),   -- Tangrowth
  (24,  'walking', null, null, null, 'Pastoral Sound'),                -- Arbok
  -- Surf
  (60,  'surfing', 90.00, 58, 64, null),                              -- Poliwag
  (61,  'surfing', 10.00, 58, 64, null),                              -- Poliwhirl
  -- Old Rod
  (370, 'fishing_old', 90.00, 58, 64, null),                          -- Luvdisc
  (60,  'fishing_old', 10.00, 58, 64, null),                          -- Poliwag
  -- Good Rod
  (370, 'fishing_good', 60.00, 58, 64, null),                         -- Luvdisc
  (60,  'fishing_good', 30.00, 58, 64, null),                         -- Poliwag
  (61,  'fishing_good', 10.00, 58, 64, null),                         -- Poliwhirl
  -- Super Rod
  (61,  'fishing_super', 60.00, 58, 64, null),                        -- Poliwhirl
  (370, 'fishing_super', 30.00, 58, 64, null),                        -- Luvdisc
  (130, 'fishing_super', 10.00, 58, 64, null)                         -- Gyarados
) AS e(dex_id, method, rate, lmin, lmax, cond)
WHERE r.slug = 'route-28' AND r.game_id = 'c3d4e5f6-a7b8-9012-cdef-345678901234';

-- -------------------------------------------
-- Mt. Silver Outside encounters (levels 59-65)
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions)
SELECT r.id, e.dex_id, e.method, e.rate::numeric, e.lmin, e.lmax, e.cond
FROM public.routes r,
(VALUES
  -- Grass Morning/Day
  (114, 'walking', 35.00, 59::int, 65::int, 'Morning / Day'::text),  -- Tangela
  (310, 'walking', 25.00, 59, 65, 'Morning / Day'),                   -- Manectric
  (78,  'walking', 10.00, 59, 65, 'Morning / Day'),                   -- Rapidash
  (217, 'walking', 10.00, 59, 65, 'Morning / Day'),                   -- Ursaring
  (232, 'walking', 10.00, 59, 65, 'Morning / Day'),                   -- Donphan
  (85,  'walking', 10.00, 59, 65, 'Morning / Day'),                   -- Dodrio
  -- Grass Night
  (114, 'walking', 25.00, 59, 65, 'Night'),                           -- Tangela
  (310, 'walking', 20.00, 59, 65, 'Night'),                           -- Manectric
  (78,  'walking', 10.00, 59, 65, 'Night'),                           -- Rapidash
  (217, 'walking', 10.00, 59, 65, 'Night'),                           -- Ursaring
  (232, 'walking', 10.00, 59, 65, 'Night'),                           -- Donphan
  (195, 'walking', 10.00, 59, 65, 'Night'),                           -- Quagsire
  (356, 'walking', 10.00, 59, 65, 'Night'),                           -- Dusclops
  (215, 'walking', 5.00, 59, 65, 'Night'),                            -- Sneasel
  -- Sound
  (465, 'walking', null::numeric, null::int, null::int, 'Meridian Sound'),   -- Tangrowth
  (24,  'walking', null, null, null, 'Pastoral Sound'),                -- Arbok
  -- Surf
  (60,  'surfing', 90.00, 59, 65, null),                              -- Poliwag
  (61,  'surfing', 10.00, 59, 65, null),                              -- Poliwhirl
  -- Old Rod
  (370, 'fishing_old', 90.00, 59, 65, null),                          -- Luvdisc
  (60,  'fishing_old', 10.00, 59, 65, null),                          -- Poliwag
  -- Good Rod
  (370, 'fishing_good', 60.00, 59, 65, null),                         -- Luvdisc
  (60,  'fishing_good', 30.00, 59, 65, null),                         -- Poliwag
  (61,  'fishing_good', 10.00, 59, 65, null),                         -- Poliwhirl
  -- Super Rod
  (61,  'fishing_super', 60.00, 59, 65, null),                        -- Poliwhirl
  (370, 'fishing_super', 30.00, 59, 65, null),                        -- Luvdisc
  (130, 'fishing_super', 10.00, 59, 65, null)                         -- Gyarados
) AS e(dex_id, method, rate, lmin, lmax, cond)
WHERE r.slug = 'mt-silver-outside' AND r.game_id = 'c3d4e5f6-a7b8-9012-cdef-345678901234';

-- -------------------------------------------
-- Mt. Silver 1F Entrance encounters (levels 50-64)
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions)
SELECT r.id, e.dex_id, e.method, e.rate::numeric, e.lmin, e.lmax, e.cond
FROM public.routes r,
(VALUES
  -- Cave Morning/Day
  (231, 'walking', 20.00, 50::int, 64::int, 'Morning / Day'::text),  -- Phanpy
  (216, 'walking', 20.00, 50, 64, 'Morning / Day'),                   -- Teddiursa
  (232, 'walking', 15.00, 50, 64, 'Morning / Day'),                   -- Donphan
  (217, 'walking', 15.00, 50, 64, 'Morning / Day'),                   -- Ursaring
  (195, 'walking', 10.00, 50, 64, 'Morning / Day'),                   -- Quagsire
  (126, 'walking', 10.00, 50, 64, 'Morning / Day'),                   -- Magmar
  (246, 'walking', 5.00, 50, 64, 'Morning / Day'),                    -- Larvitar
  (75,  'walking', 5.00, 50, 64, 'Morning / Day'),                    -- Graveler
  -- Cave Night
  (195, 'walking', 20.00, 50, 64, 'Night'),                           -- Quagsire
  (42,  'walking', 20.00, 50, 64, 'Night'),                           -- Golbat
  (55,  'walking', 20.00, 50, 64, 'Night'),                           -- Golduck
  (75,  'walking', 20.00, 50, 64, 'Night'),                           -- Graveler
  (232, 'walking', 5.00, 50, 64, 'Night'),                            -- Donphan
  (217, 'walking', 5.00, 50, 64, 'Night'),                            -- Ursaring
  (246, 'walking', 5.00, 50, 64, 'Night'),                            -- Larvitar
  (200, 'walking', 5.00, 50, 64, 'Night'),                            -- Misdreavus
  -- Sound
  (247, 'walking', null::numeric, null::int, null::int, 'Meridian Sound'),   -- Pupitar
  (246, 'walking', null, null, null, 'Pastoral Sound'),                -- Larvitar
  -- Surf
  (42,  'surfing', 60.00, 50, 64, null),                              -- Golbat
  (117, 'surfing', 30.00, 50, 64, null),                              -- Seadra
  (116, 'surfing', 10.00, 50, 64, null),                              -- Horsea
  -- Old Rod
  (118, 'fishing_old', 60.00, 50, 64, null),                          -- Goldeen
  (98,  'fishing_old', 30.00, 50, 64, null),                          -- Krabby
  (341, 'fishing_old', 10.00, 50, 64, null),                          -- Corphish
  -- Good Rod
  (118, 'fishing_good', 60.00, 50, 64, null),                         -- Goldeen
  (98,  'fishing_good', 30.00, 50, 64, null),                         -- Krabby
  (341, 'fishing_good', 10.00, 50, 64, null),                         -- Corphish
  -- Super Rod
  (119, 'fishing_super', 60.00, 50, 64, null),                        -- Seaking
  (99,  'fishing_super', 30.00, 50, 64, null),                        -- Kingler
  (342, 'fishing_super', 10.00, 50, 64, null)                         -- Crawdaunt
) AS e(dex_id, method, rate, lmin, lmax, cond)
WHERE r.slug = 'mt-silver-1f-entrance' AND r.game_id = 'c3d4e5f6-a7b8-9012-cdef-345678901234';

-- -------------------------------------------
-- Mt. Silver 1F Side Room encounters (levels 50-64)
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions)
SELECT r.id, e.dex_id, e.method, e.rate::numeric, e.lmin, e.lmax, e.cond
FROM public.routes r,
(VALUES
  -- Cave Morning/Day
  (47,  'walking', 45.00, 50::int, 64::int, 'Morning / Day'::text),  -- Parasect
  (55,  'walking', 20.00, 50, 64, 'Morning / Day'),                   -- Golduck
  (195, 'walking', 15.00, 50, 64, 'Morning / Day'),                   -- Quagsire
  (372, 'walking', 15.00, 50, 64, 'Morning / Day'),                   -- Shelgon
  (371, 'walking', 5.00, 50, 64, 'Morning / Day'),                    -- Bagon
  -- Cave Night
  (47,  'walking', 35.00, 50, 64, 'Night'),                           -- Parasect
  (55,  'walking', 20.00, 50, 64, 'Night'),                           -- Golduck
  (195, 'walking', 15.00, 50, 64, 'Night'),                           -- Quagsire
  (372, 'walking', 15.00, 50, 64, 'Night'),                           -- Shelgon
  (200, 'walking', 10.00, 50, 64, 'Night'),                           -- Misdreavus
  (371, 'walking', 5.00, 50, 64, 'Night'),                            -- Bagon
  -- Sound
  (372, 'walking', null::numeric, null::int, null::int, 'Meridian Sound'),   -- Shelgon
  (46,  'walking', null, null, null, 'Pastoral Sound'),                -- Paras
  (371, 'walking', null, null, null, 'Pastoral Sound')                 -- Bagon
) AS e(dex_id, method, rate, lmin, lmax, cond)
WHERE r.slug = 'mt-silver-1f-side' AND r.game_id = 'c3d4e5f6-a7b8-9012-cdef-345678901234';

-- -------------------------------------------
-- Mt. Silver 1F Back Room encounters (levels 64-68)
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions)
SELECT r.id, e.dex_id, e.method, e.rate::numeric, e.lmin, e.lmax, e.cond
FROM public.routes r,
(VALUES
  -- Cave Morning/Day
  (42,  'walking', 20.00, 64::int, 68::int, 'Morning / Day'::text),  -- Golbat
  (75,  'walking', 20.00, 64, 68, 'Morning / Day'),                   -- Graveler
  (208, 'walking', 20.00, 64, 68, 'Morning / Day'),                   -- Steelix
  (112, 'walking', 20.00, 64, 68, 'Morning / Day'),                   -- Rhydon
  (195, 'walking', 10.00, 64, 68, 'Morning / Day'),                   -- Quagsire
  (247, 'walking', 10.00, 64, 68, 'Morning / Day'),                   -- Pupitar
  -- Cave Night
  (42,  'walking', 20.00, 64, 68, 'Night'),                           -- Golbat
  (75,  'walking', 20.00, 64, 68, 'Night'),                           -- Graveler
  (208, 'walking', 20.00, 64, 68, 'Night'),                           -- Steelix
  (112, 'walking', 20.00, 64, 68, 'Night'),                           -- Rhydon
  (200, 'walking', 10.00, 64, 68, 'Night'),                           -- Misdreavus
  (195, 'walking', 5.00, 64, 68, 'Night'),                            -- Quagsire
  (247, 'walking', 5.00, 64, 68, 'Night'),                            -- Pupitar
  -- Sound
  (464, 'walking', null::numeric, null::int, null::int, 'Meridian Sound'),   -- Rhyperior
  (247, 'walking', null, null, null, 'Pastoral Sound')                 -- Pupitar
) AS e(dex_id, method, rate, lmin, lmax, cond)
WHERE r.slug = 'mt-silver-1f-back' AND r.game_id = 'c3d4e5f6-a7b8-9012-cdef-345678901234';

-- -------------------------------------------
-- Mt. Silver 2F encounters (levels 62-66)
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions)
SELECT r.id, e.dex_id, e.method, e.rate::numeric, e.lmin, e.lmax, e.cond
FROM public.routes r,
(VALUES
  -- Cave Morning/Day
  (42,  'walking', 25.00, 62::int, 66::int, 'Morning / Day'::text),  -- Golbat
  (75,  'walking', 25.00, 62, 66, 'Morning / Day'),                   -- Graveler
  (82,  'walking', 20.00, 62, 66, 'Morning / Day'),                   -- Magneton
  (303, 'walking', 10.00, 62, 66, 'Morning / Day'),                   -- Mawile
  (302, 'walking', 10.00, 62, 66, 'Morning / Day'),                   -- Sableye
  (338, 'walking', 10.00, 62, 66, 'Morning / Day'),                   -- Solrock
  -- Cave Night
  (42,  'walking', 25.00, 62, 66, 'Night'),                           -- Golbat
  (75,  'walking', 20.00, 62, 66, 'Night'),                           -- Graveler
  (356, 'walking', 10.00, 62, 66, 'Night'),                           -- Dusclops
  (82,  'walking', 10.00, 62, 66, 'Night'),                           -- Magneton
  (303, 'walking', 10.00, 62, 66, 'Night'),                           -- Mawile
  (302, 'walking', 10.00, 62, 66, 'Night'),                           -- Sableye
  (337, 'walking', 10.00, 62, 66, 'Night'),                           -- Lunatone
  (200, 'walking', 5.00, 62, 66, 'Night'),                            -- Misdreavus
  -- Sound
  (462, 'walking', null::numeric, null::int, null::int, 'Meridian Sound'),   -- Magnezone
  (338, 'walking', null, null, null, 'Pastoral Sound'),                -- Solrock
  (337, 'walking', null, null, null, 'Pastoral Sound')                 -- Lunatone
) AS e(dex_id, method, rate, lmin, lmax, cond)
WHERE r.slug = 'mt-silver-2f' AND r.game_id = 'c3d4e5f6-a7b8-9012-cdef-345678901234';

-- -------------------------------------------
-- Mt. Silver Snowy Area encounters (levels 54-65)
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions)
SELECT r.id, e.dex_id, e.method, e.rate::numeric, e.lmin, e.lmax, e.cond
FROM public.routes r,
(VALUES
  -- Grass Morning/Day
  (460, 'walking', 30.00, 54::int, 65::int, 'Morning / Day'::text),  -- Abomasnow
  (308, 'walking', 20.00, 54, 65, 'Morning / Day'),                   -- Medicham
  (294, 'walking', 20.00, 54, 65, 'Morning / Day'),                   -- Loudred
  (215, 'walking', 10.00, 54, 65, 'Morning / Day'),                   -- Sneasel
  (221, 'walking', 10.00, 54, 65, 'Morning / Day'),                   -- Piloswine
  (459, 'walking', 5.00, 54, 65, 'Morning / Day'),                    -- Snover
  (359, 'walking', 5.00, 54, 65, 'Morning / Day'),                    -- Absol
  -- Grass Night
  (460, 'walking', 20.00, 54, 65, 'Night'),                           -- Abomasnow
  (294, 'walking', 20.00, 54, 65, 'Night'),                           -- Loudred
  (308, 'walking', 10.00, 54, 65, 'Night'),                           -- Medicham
  (164, 'walking', 10.00, 54, 65, 'Night'),                           -- Noctowl
  (42,  'walking', 10.00, 54, 65, 'Night'),                           -- Golbat
  (215, 'walking', 10.00, 54, 65, 'Night'),                           -- Sneasel
  (221, 'walking', 10.00, 54, 65, 'Night'),                           -- Piloswine
  (459, 'walking', 5.00, 54, 65, 'Night'),                            -- Snover
  (359, 'walking', 5.00, 54, 65, 'Night'),                            -- Absol
  -- Sound
  (473, 'walking', null::numeric, null::int, null::int, 'Meridian Sound'),   -- Mamoswine
  (461, 'walking', null, null, null, 'Meridian Sound'),                -- Weavile
  (359, 'walking', null, null, null, 'Pastoral Sound')                 -- Absol
) AS e(dex_id, method, rate, lmin, lmax, cond)
WHERE r.slug = 'mt-silver-outside-snowy' AND r.game_id = 'c3d4e5f6-a7b8-9012-cdef-345678901234';

-- -------------------------------------------
-- Mt. Silver Mountainous encounters (levels 60-64)
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions)
SELECT r.id, e.dex_id, e.method, e.rate::numeric, e.lmin, e.lmax, e.cond
FROM public.routes r,
(VALUES
  -- Grass Morning/Day
  (95,  'walking', 30.00, 60::int, 64::int, 'Morning / Day'::text),  -- Onix
  (207, 'walking', 20.00, 60, 64, 'Morning / Day'),                   -- Gligar
  (75,  'walking', 20.00, 60, 64, 'Morning / Day'),                   -- Graveler
  (305, 'walking', 10.00, 60, 64, 'Morning / Day'),                   -- Lairon
  (67,  'walking', 10.00, 60, 64, 'Morning / Day'),                   -- Machoke
  (227, 'walking', 5.00, 60, 64, 'Morning / Day'),                    -- Skarmory
  -- Grass Night (note: 5% left = Vibrava)
  (42,  'walking', 40.00, 60, 64, 'Night'),                           -- Golbat
  (207, 'walking', 10.00, 60, 64, 'Night'),                           -- Gligar
  (95,  'walking', 10.00, 60, 64, 'Night'),                           -- Onix
  (75,  'walking', 10.00, 60, 64, 'Night'),                           -- Graveler
  (305, 'walking', 10.00, 60, 64, 'Night'),                           -- Lairon
  (67,  'walking', 5.00, 60, 64, 'Night'),                            -- Machoke
  (329, 'walking', 5.00, 60, 64, 'Night'),                            -- Vibrava
  (227, 'walking', 5.00, 60, 64, 'Night'),                            -- Skarmory
  -- Sound
  (472, 'walking', null::numeric, null::int, null::int, 'Meridian Sound'),   -- Gliscor
  (330, 'walking', null, null, null, 'Meridian Sound'),                -- Flygon
  (227, 'walking', null, null, null, 'Pastoral Sound')                 -- Skarmory
) AS e(dex_id, method, rate, lmin, lmax, cond)
WHERE r.slug = 'mt-silver-outside-mountain' AND r.game_id = 'c3d4e5f6-a7b8-9012-cdef-345678901234';

-- -------------------------------------------
-- Mt. Silver 3F encounters (levels 64-68)
-- -------------------------------------------
INSERT INTO public.encounters (route_id, pokemon_national_dex_id, method, encounter_rate, level_min, level_max, conditions)
SELECT r.id, e.dex_id, e.method, e.rate::numeric, e.lmin, e.lmax, e.cond
FROM public.routes r,
(VALUES
  -- Cave Morning/Day
  (42,  'walking', 25.00, 64::int, 68::int, 'Morning / Day'::text),  -- Golbat
  (444, 'walking', 20.00, 64, 68, 'Morning / Day'),                   -- Gabite
  (437, 'walking', 15.00, 64, 68, 'Morning / Day'),                   -- Bronzong
  (303, 'walking', 10.00, 64, 68, 'Morning / Day'),                   -- Mawile
  (302, 'walking', 10.00, 64, 68, 'Morning / Day'),                   -- Sableye
  (82,  'walking', 10.00, 64, 68, 'Morning / Day'),                   -- Magneton
  (67,  'walking', 10.00, 64, 68, 'Morning / Day'),                   -- Machoke
  -- Cave Night
  (42,  'walking', 25.00, 64, 68, 'Night'),                           -- Golbat
  (444, 'walking', 20.00, 64, 68, 'Night'),                           -- Gabite
  (437, 'walking', 15.00, 64, 68, 'Night'),                           -- Bronzong
  (303, 'walking', 10.00, 64, 68, 'Night'),                           -- Mawile
  (302, 'walking', 10.00, 64, 68, 'Night'),                           -- Sableye
  (67,  'walking', 10.00, 64, 68, 'Night'),                           -- Machoke
  (82,  'walking', 5.00, 64, 68, 'Night'),                            -- Magneton
  (356, 'walking', 5.00, 64, 68, 'Night'),                            -- Dusclops
  -- Sound
  (68,  'walking', null::numeric, null::int, null::int, 'Meridian Sound'),   -- Machamp
  (303, 'walking', null, null, null, 'Pastoral Sound'),                -- Mawile
  (302, 'walking', null, null, null, 'Pastoral Sound')                 -- Sableye
) AS e(dex_id, method, rate, lmin, lmax, cond)
WHERE r.slug = 'mt-silver-3f' AND r.game_id = 'c3d4e5f6-a7b8-9012-cdef-345678901234';
