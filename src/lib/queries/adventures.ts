import { createClient } from "@/lib/supabase/server";
import type { Adventure, Catch, RouteProgress } from "@/types/game";

export async function getAdventuresByUser(
  profileId: string
): Promise<Adventure[]> {
  const supabase = await createClient();
  if (!supabase) return [];

  const { data, error } = await supabase
    .from("adventures")
    .select("*")
    .eq("user_id", profileId)
    .order("created_at", { ascending: false });

  if (error) {
    console.error("Error fetching adventures:", error);
    return [];
  }

  return (data || []).map(mapAdventureRow);
}

export async function getAdventureById(
  id: string
): Promise<Adventure | null> {
  const supabase = await createClient();
  if (!supabase) return null;

  const { data, error } = await supabase
    .from("adventures")
    .select("*")
    .eq("id", id)
    .single();

  if (error || !data) return null;
  return mapAdventureRow(data);
}

export async function getCatchesByAdventure(
  adventureId: string
): Promise<Catch[]> {
  const supabase = await createClient();
  if (!supabase) return [];

  const { data, error } = await supabase
    .from("catches")
    .select("*")
    .eq("adventure_id", adventureId)
    .order("caught_at", { ascending: true });

  if (error) {
    console.error("Error fetching catches:", error);
    return [];
  }

  return (data || []).map(mapCatchRow);
}

export async function getRouteProgressByAdventure(
  adventureId: string
): Promise<RouteProgress[]> {
  const supabase = await createClient();
  if (!supabase) return [];

  const { data, error } = await supabase
    .from("route_progress")
    .select("*")
    .eq("adventure_id", adventureId);

  if (error) {
    console.error("Error fetching route progress:", error);
    return [];
  }

  return (data || []).map(mapRouteProgressRow);
}

function mapAdventureRow(row: Record<string, unknown>): Adventure {
  return {
    id: row.id as string,
    userId: row.user_id as string | null,
    gameId: row.game_id as string,
    name: row.name as string,
    status: row.status as Adventure["status"],
    rules: (row.rules as Record<string, boolean>) || {},
    startedAt: row.started_at as string,
    completedAt: row.completed_at as string | null,
  };
}

function mapCatchRow(row: Record<string, unknown>): Catch {
  return {
    id: row.id as string,
    adventureId: row.adventure_id as string,
    routeId: row.route_id as string,
    pokemonDexId: row.pokemon_national_dex_id as number,
    currentEvolutionDexId: row.current_evolution_dex_id as number | null,
    nickname: row.nickname as string | null,
    status: row.status as Catch["status"],
    level: row.level as number | null,
    nature: row.nature as string | null,
    ability: row.ability as string | null,
    heldItem: row.held_item as string | null,
    notes: row.notes as string | null,
    caughtAt: row.caught_at as string,
    diedAt: row.died_at as string | null,
    deathDetails: row.death_details as string | null,
  };
}

function mapRouteProgressRow(row: Record<string, unknown>): RouteProgress {
  return {
    adventureId: row.adventure_id as string,
    routeId: row.route_id as string,
    visited: row.visited as boolean,
    encounterUsed: row.encounter_used as boolean,
    notes: row.notes as string | null,
  };
}
