-- Set mascot sprites for existing games
-- Using PokeAPI sprite URLs which are already used throughout the app

-- Emerald: Rayquaza (#384)
UPDATE public.games
SET sprite_url = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/384.png'
WHERE slug = 'pokemon-emerald';

-- FireRed: Charizard (#6)
UPDATE public.games
SET sprite_url = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/6.png'
WHERE slug = 'pokemon-firered';
