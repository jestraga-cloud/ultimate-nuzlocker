"use client";

import type { Trainer, TrainerPokemon } from "@/types/game";
import { PokemonSprite } from "@/components/pokemon/pokemon-sprite";
import { Badge } from "@/components/ui/badge";
import { Shield, X } from "lucide-react";
import { Button } from "@/components/ui/button";

interface EnemyTrayProps {
  trainer: Trainer | null;
  pokemonNames: Record<number, { name: string; types: string[] }>;
  onSelectPokemon: (trainerPokemon: TrainerPokemon) => void;
  onDropTrainer: (e: React.DragEvent) => void;
  onClear: () => void;
}

const BOSS_LABELS: Record<string, string> = {
  gym_leader: "Gym Leader",
  elite_four: "Elite Four",
  champion: "Champion",
  rival: "Rival",
  evil_team_leader: "Boss",
  totem: "Totem",
};

export function EnemyTray({ trainer, pokemonNames, onSelectPokemon, onDropTrainer, onClear }: EnemyTrayProps) {
  if (!trainer) {
    return (
      <div
        className="flex items-center justify-center h-full min-h-[60px] text-xs text-muted-foreground border border-dashed rounded-md"
        onDragOver={(e) => e.preventDefault()}
        onDrop={onDropTrainer}
      >
        Drag a trainer from Routes tab
      </div>
    );
  }

  return (
    <div
      onDragOver={(e) => e.preventDefault()}
      onDrop={onDropTrainer}
    >
      {/* Trainer header */}
      <div className="flex items-center gap-1.5 mb-2">
        {trainer.isBoss && <Shield className="h-3 w-3 text-amber-500 flex-shrink-0" />}
        <span className={`text-[11px] font-medium truncate ${
          trainer.isBoss ? "text-amber-700 dark:text-amber-400" : "text-muted-foreground"
        }`}>
          {trainer.trainerClass ? `${trainer.trainerClass} ${trainer.name}` : trainer.name}
        </span>
        {trainer.bossType && (
          <Badge className="text-[8px] px-1 py-0 bg-amber-500/15 text-amber-700 dark:text-amber-400 border-amber-500/30">
            {BOSS_LABELS[trainer.bossType] || trainer.bossType}
          </Badge>
        )}
        <Button
          variant="ghost"
          size="icon"
          className="h-4 w-4 ml-auto flex-shrink-0"
          onClick={onClear}
        >
          <X className="h-3 w-3" />
        </Button>
      </div>

      {/* Pokemon tiles */}
      <div className="flex flex-wrap gap-1">
        {trainer.pokemon.map((tp) => {
          const name = pokemonNames[tp.pokemonDexId]?.name || `#${tp.pokemonDexId}`;
          const movesStr = tp.moves.filter((m) => m).join(", ");
          return (
            <div
              key={tp.id}
              onClick={() => onSelectPokemon(tp)}
              title={`${name} Lv.${tp.level}${movesStr ? `\n${movesStr}` : ""}`}
              className="flex flex-col items-center gap-0.5 cursor-pointer hover:bg-accent/50 rounded p-1 transition-colors select-none"
            >
              <PokemonSprite dexId={tp.pokemonDexId} size="sm" />
              <span className="text-[9px] text-muted-foreground max-w-[40px] truncate text-center leading-none">
                {name}
              </span>
              <span className="text-[8px] text-muted-foreground/70 leading-none">
                Lv.{tp.level}
              </span>
            </div>
          );
        })}
      </div>
    </div>
  );
}
