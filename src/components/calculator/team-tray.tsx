"use client";

import type { LocalCatch } from "@/lib/store/types";
import { PokemonSprite } from "@/components/pokemon/pokemon-sprite";

interface TeamTrayProps {
  catches: LocalCatch[];
  pokemonNames: Record<number, { name: string; types: string[] }>;
  onSelectPokemon: (dexId: number, catchData: LocalCatch) => void;
}

export function TeamTray({ catches, pokemonNames, onSelectPokemon }: TeamTrayProps) {
  const aliveCatches = catches.filter((c) => c.status === "alive" || c.status === "in_team");

  const handleDragStart = (e: React.DragEvent, c: LocalCatch) => {
    const dexId = c.currentEvolutionDexId || c.pokemonDexId;
    e.dataTransfer.setData("application/pokemon-dex-id", String(dexId));
    e.dataTransfer.setData("application/pokemon-catch-id", c.id);
    e.dataTransfer.effectAllowed = "copy";
  };

  if (aliveCatches.length === 0) {
    return (
      <div className="flex items-center justify-center h-14 text-xs text-muted-foreground border border-dashed rounded-md">
        No Pokemon caught yet
      </div>
    );
  }

  return (
    <div className="flex flex-wrap gap-1">
      {aliveCatches.map((c) => {
        const dexId = c.currentEvolutionDexId || c.pokemonDexId;
        const name = c.nickname || pokemonNames[dexId]?.name || `#${dexId}`;

        return (
          <div
            key={c.id}
            draggable
            onDragStart={(e) => handleDragStart(e, c)}
            onClick={() => onSelectPokemon(dexId, c)}
            title={name}
            className="flex flex-col items-center gap-0.5 cursor-grab active:cursor-grabbing hover:bg-accent/50 rounded p-1 transition-colors select-none"
          >
            <PokemonSprite dexId={dexId} size="sm" />
            <span className="text-[9px] text-muted-foreground max-w-[40px] truncate text-center leading-none">
              {name}
            </span>
          </div>
        );
      })}
    </div>
  );
}
