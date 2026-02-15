import { createClient } from "@/lib/supabase/server";
import type {
  Route,
  Encounter,
  RouteItem,
  Trainer,
  TrainerPokemon,
  RouteDetail,
} from "@/types/game";

export async function getRoutesByGame(gameId: string): Promise<Route[]> {
  const supabase = await createClient();
  if (!supabase) return [];

  const { data, error } = await supabase
    .from("routes")
    .select("*")
    .eq("game_id", gameId)
    .order("display_order", { ascending: true });

  if (error) {
    console.error("Error fetching routes:", error);
    return [];
  }

  return (data || []).map(mapRouteRow);
}

export async function getRouteDetail(
  routeId: string
): Promise<RouteDetail | null> {
  const supabase = await createClient();
  if (!supabase) return null;

  const [routeRes, encountersRes, itemsRes, trainersRes] = await Promise.all([
    supabase.from("routes").select("*").eq("id", routeId).single(),
    supabase
      .from("encounters")
      .select("*")
      .eq("route_id", routeId)
      .order("method")
      .order("encounter_rate", { ascending: false, nullsFirst: false }),
    supabase
      .from("route_items")
      .select("*")
      .eq("route_id", routeId)
      .order("item_category")
      .order("item_name"),
    supabase
      .from("trainers")
      .select("*, trainer_pokemon(*)")
      .eq("route_id", routeId)
      .order("display_order"),
  ]);

  if (routeRes.error || !routeRes.data) return null;

  const route = mapRouteRow(routeRes.data);
  const encounters = (encountersRes.data || []).map(mapEncounterRow);
  const items = (itemsRes.data || []).map(mapRouteItemRow);
  const trainers = (trainersRes.data || []).map((t: Record<string, unknown>) => {
    const trainerPokemon = (
      (t.trainer_pokemon as Record<string, unknown>[]) || []
    )
      .map(mapTrainerPokemonRow)
      .sort((a, b) => a.slotOrder - b.slotOrder);

    return {
      ...mapTrainerRow(t),
      pokemon: trainerPokemon,
    };
  });

  return { route, encounters, items, trainers };
}

function mapRouteRow(row: Record<string, unknown>): Route {
  return {
    id: row.id as string,
    gameId: row.game_id as string,
    name: row.name as string,
    slug: row.slug as string,
    displayOrder: row.display_order as number,
    routeType: row.route_type as Route["routeType"],
    hasEncounters: row.has_encounters as boolean,
    hasTrainers: row.has_trainers as boolean,
    hasItems: row.has_items as boolean,
    notes: row.notes as string | null,
  };
}

function mapEncounterRow(row: Record<string, unknown>): Encounter {
  return {
    id: row.id as string,
    routeId: row.route_id as string,
    pokemonDexId: row.pokemon_national_dex_id as number,
    method: row.method as Encounter["method"],
    encounterRate: row.encounter_rate as number | null,
    levelMin: row.level_min as number | null,
    levelMax: row.level_max as number | null,
    conditions: row.conditions as string | null,
    versionExclusive: row.version_exclusive as string | null,
  };
}

function mapRouteItemRow(row: Record<string, unknown>): RouteItem {
  return {
    id: row.id as string,
    routeId: row.route_id as string,
    itemName: row.item_name as string,
    itemCategory: row.item_category as string | null,
    description: row.description as string | null,
    locationHint: row.location_hint as string | null,
    isHidden: row.is_hidden as boolean,
    requires: row.requires as string | null,
  };
}

function mapTrainerRow(
  row: Record<string, unknown>
): Omit<Trainer, "pokemon"> {
  return {
    id: row.id as string,
    routeId: row.route_id as string,
    name: row.name as string,
    trainerClass: row.trainer_class as string | null,
    isBoss: row.is_boss as boolean,
    bossType: row.boss_type as Trainer["bossType"],
    levelCap: row.level_cap as number | null,
    displayOrder: row.display_order as number,
    notes: row.notes as string | null,
  };
}

function mapTrainerPokemonRow(row: Record<string, unknown>): TrainerPokemon {
  return {
    id: row.id as string,
    trainerId: row.trainer_id as string,
    pokemonDexId: row.pokemon_national_dex_id as number,
    level: row.level as number,
    slotOrder: row.slot_order as number,
    moves: (row.moves as string[]) || [],
    ability: row.ability as string | null,
    heldItem: row.held_item as string | null,
    nature: row.nature as string | null,
  };
}
