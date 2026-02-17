"use client";

import { useState, useEffect, useRef } from "react";
import type { PokemonStats } from "@/types/pokemon";
import { getPokemon, getStatTotal } from "@/lib/pokeapi/client";

export interface PokemonStatsEntry {
  dexId: number;
  stats: PokemonStats;
  bst: number;
}

export type SortKey = keyof PokemonStats | "bst" | "none";

export function usePokemonStats(
  dexIds: number[],
  generation?: number
): {
  statsMap: Record<number, PokemonStatsEntry>;
  loading: boolean;
} {
  const [statsMap, setStatsMap] = useState<Record<number, PokemonStatsEntry>>({});
  const [loading, setLoading] = useState(false);
  const fetchedRef = useRef<Set<number>>(new Set());

  useEffect(() => {
    const missing = dexIds.filter((id) => id > 0 && !fetchedRef.current.has(id));
    if (missing.length === 0) return;

    let cancelled = false;
    setLoading(true);

    Promise.all(
      missing.map(async (id) => {
        try {
          const data = await getPokemon(id, generation);
          return {
            dexId: id,
            stats: data.stats,
            bst: getStatTotal(data.stats),
          } as PokemonStatsEntry;
        } catch {
          return null;
        }
      })
    ).then((results) => {
      if (cancelled) return;

      const newEntries: Record<number, PokemonStatsEntry> = {};
      for (const entry of results) {
        if (entry) {
          newEntries[entry.dexId] = entry;
          fetchedRef.current.add(entry.dexId);
        }
      }

      if (Object.keys(newEntries).length > 0) {
        setStatsMap((prev) => ({ ...prev, ...newEntries }));
      }
      setLoading(false);
    });

    return () => {
      cancelled = true;
    };
  }, [dexIds, generation]);

  return { statsMap, loading };
}

export function getSortValue(
  entry: PokemonStatsEntry | undefined,
  sortKey: SortKey
): number {
  if (!entry || sortKey === "none") return 0;
  if (sortKey === "bst") return entry.bst;
  return entry.stats[sortKey];
}
