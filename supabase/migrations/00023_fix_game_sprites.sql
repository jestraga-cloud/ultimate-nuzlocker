-- Fix game sprite URLs: replace broken local paths with PokeAPI CDN URLs
-- The original migrations used non-existent local paths like '/sprites/games/ruby.png'

UPDATE public.games SET sprite_url = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/3.png' WHERE slug = 'pokemon-leafgreen';
UPDATE public.games SET sprite_url = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/383.png' WHERE slug = 'pokemon-ruby';
UPDATE public.games SET sprite_url = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/382.png' WHERE slug = 'pokemon-sapphire';
UPDATE public.games SET sprite_url = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/250.png' WHERE slug = 'pokemon-heartgold';
UPDATE public.games SET sprite_url = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/249.png' WHERE slug = 'pokemon-soulsilver';
UPDATE public.games SET sprite_url = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/245.png' WHERE slug = 'pokemon-crystal';
UPDATE public.games SET sprite_url = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/643.png' WHERE slug = 'pokemon-black';
UPDATE public.games SET sprite_url = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/644.png' WHERE slug = 'pokemon-white';
UPDATE public.games SET sprite_url = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/646.png' WHERE slug = 'pokemon-black-2';
UPDATE public.games SET sprite_url = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/646.png' WHERE slug = 'pokemon-white-2';
UPDATE public.games SET sprite_url = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/716.png' WHERE slug = 'pokemon-x';
UPDATE public.games SET sprite_url = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/717.png' WHERE slug = 'pokemon-y';
UPDATE public.games SET sprite_url = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/383.png' WHERE slug = 'pokemon-omega-ruby';
UPDATE public.games SET sprite_url = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/382.png' WHERE slug = 'pokemon-alpha-sapphire';
