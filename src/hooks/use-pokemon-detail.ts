"use client";

import { useState, useEffect } from "react";
import type { PokemonData } from "@/types/pokemon";
import { getPokemon } from "@/lib/pokeapi/client";

export function usePokemonDetail(
  dexId: number | null,
  generation?: number
): { data: PokemonData | null; loading: boolean } {
  const [data, setData] = useState<PokemonData | null>(null);
  const [loading, setLoading] = useState(false);

  useEffect(() => {
    if (!dexId) {
      setData(null);
      return;
    }

    let cancelled = false;
    setLoading(true);

    getPokemon(dexId, generation)
      .then((result) => {
        if (!cancelled) {
          setData(result);
          setLoading(false);
        }
      })
      .catch(() => {
        if (!cancelled) {
          setData(null);
          setLoading(false);
        }
      });

    return () => {
      cancelled = true;
    };
  }, [dexId, generation]);

  return { data, loading };
}
