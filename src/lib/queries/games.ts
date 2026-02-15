import { createClient } from "@/lib/supabase/server";
import type { Game } from "@/types/game";

export async function getAllGames(): Promise<Game[]> {
  const supabase = await createClient();
  if (!supabase) return [];

  const { data, error } = await supabase
    .from("games")
    .select("*")
    .order("generation", { ascending: true })
    .order("name", { ascending: true });

  if (error) {
    console.error("Error fetching games:", error);
    return [];
  }

  return (data || []).map(mapGameRow);
}

export async function getGameBySlug(slug: string): Promise<Game | null> {
  const supabase = await createClient();
  if (!supabase) return null;

  const { data, error } = await supabase
    .from("games")
    .select("*")
    .eq("slug", slug)
    .single();

  if (error || !data) return null;
  return mapGameRow(data);
}

export async function getGameById(id: string): Promise<Game | null> {
  const supabase = await createClient();
  if (!supabase) return null;

  const { data, error } = await supabase
    .from("games")
    .select("*")
    .eq("id", id)
    .single();

  if (error || !data) return null;
  return mapGameRow(data);
}

function mapGameRow(row: Record<string, unknown>): Game {
  return {
    id: row.id as string,
    slug: row.slug as string,
    name: row.name as string,
    generation: row.generation as number | null,
    region: row.region as string | null,
    baseGameSlug: row.base_game_slug as string | null,
    isRomhack: row.is_romhack as boolean,
    spriteUrl: row.sprite_url as string | null,
    totalRoutes: row.total_routes as number,
    description: row.description as string | null,
  };
}
