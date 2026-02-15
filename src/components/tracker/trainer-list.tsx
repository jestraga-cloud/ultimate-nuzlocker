"use client";

import { useState } from "react";
import type { Trainer } from "@/types/game";
import { PokemonSprite } from "@/components/pokemon/pokemon-sprite";
import { TypeBadge } from "@/components/pokemon/type-badge";
import { Badge } from "@/components/ui/badge";
import {
  Collapsible,
  CollapsibleContent,
  CollapsibleTrigger,
} from "@/components/ui/collapsible";
import { ChevronDown, ChevronRight, Shield } from "lucide-react";

interface TrainerListProps {
  trainers: Trainer[];
  pokemonNames: Record<number, { name: string; types: string[] }>;
  onPokemonClick?: (dexId: number) => void;
}

const BOSS_LABELS: Record<string, string> = {
  gym_leader: "Gym Leader",
  elite_four: "Elite Four",
  champion: "Champion",
  rival: "Rival",
  evil_team_leader: "Boss",
  totem: "Totem",
};

export function TrainerList({ trainers, pokemonNames, onPokemonClick }: TrainerListProps) {
  const [isOpen, setIsOpen] = useState(true);

  if (trainers.length === 0) return null;

  const bossTrainers = trainers.filter((t) => t.isBoss);
  const regularTrainers = trainers.filter((t) => !t.isBoss);

  return (
    <Collapsible open={isOpen} onOpenChange={setIsOpen}>
      <CollapsibleTrigger className="flex w-full items-center justify-between rounded-lg bg-muted/50 px-4 py-3 text-sm font-medium hover:bg-muted transition-colors pixel-section-header">
        <span className="flex items-center gap-2">
          <span className="text-lg">⚔️</span>
          Trainers
          <span className="text-xs text-muted-foreground font-normal">
            ({trainers.length})
          </span>
        </span>
        <ChevronDown
          className={`h-4 w-4 text-muted-foreground transition-transform ${
            isOpen ? "rotate-180" : ""
          }`}
        />
      </CollapsibleTrigger>
      <CollapsibleContent className="pt-2 space-y-2">
        {/* Boss trainers first */}
        {bossTrainers.map((trainer) => (
          <TrainerCard
            key={trainer.id}
            trainer={trainer}
            pokemonNames={pokemonNames}
            onPokemonClick={onPokemonClick}
            isBoss
          />
        ))}
        {/* Regular trainers */}
        {regularTrainers.map((trainer) => (
          <TrainerCard
            key={trainer.id}
            trainer={trainer}
            pokemonNames={pokemonNames}
            onPokemonClick={onPokemonClick}
          />
        ))}
      </CollapsibleContent>
    </Collapsible>
  );
}

function TrainerCard({
  trainer,
  pokemonNames,
  onPokemonClick,
  isBoss = false,
}: {
  trainer: Trainer;
  pokemonNames: Record<number, { name: string; types: string[] }>;
  onPokemonClick?: (dexId: number) => void;
  isBoss?: boolean;
}) {
  const [expanded, setExpanded] = useState(isBoss);

  return (
    <div
      className={`rounded-lg border ${
        isBoss ? "border-amber-500/40 bg-amber-500/5 pixel-glow" : "bg-card"
      }`}
    >
      <button
        onClick={() => setExpanded(!expanded)}
        className="w-full flex items-center gap-3 px-4 py-3 text-left hover:bg-muted/30 transition-colors rounded-lg"
      >
        {expanded ? (
          <ChevronDown className="h-3.5 w-3.5 text-muted-foreground flex-shrink-0" />
        ) : (
          <ChevronRight className="h-3.5 w-3.5 text-muted-foreground flex-shrink-0" />
        )}

        <div className="flex-1 min-w-0">
          <div className="flex items-center gap-2">
            {isBoss && (
              <Shield className="h-4 w-4 text-amber-500 flex-shrink-0" />
            )}
            <span className={`text-sm font-medium ${isBoss ? "text-amber-700 dark:text-amber-400" : ""}`}>
              {trainer.trainerClass
                ? `${trainer.trainerClass} ${trainer.name}`
                : trainer.name}
            </span>
            {trainer.bossType && (
              <Badge
                className="text-[10px] px-1.5 py-0 bg-amber-500/15 text-amber-700 dark:text-amber-400 border-amber-500/30"
              >
                {BOSS_LABELS[trainer.bossType] || trainer.bossType}
              </Badge>
            )}
          </div>
        </div>

        {trainer.levelCap && (
          <span className="text-xs text-muted-foreground flex-shrink-0">
            Cap: Lv. {trainer.levelCap}
          </span>
        )}

        {/* Mini team preview */}
        <div className="flex -space-x-2 flex-shrink-0">
          {trainer.pokemon.slice(0, 6).map((tp) => (
            <PokemonSprite
              key={tp.id}
              dexId={tp.pokemonDexId}
              size="xs"
            />
          ))}
        </div>
      </button>

      {expanded && trainer.pokemon.length > 0 && (
        <div className="px-4 pb-3 space-y-2 border-t border-border/50 pt-2">
          {trainer.pokemon.map((tp) => {
            const pokemon = pokemonNames[tp.pokemonDexId];
            const name = pokemon?.name || `#${tp.pokemonDexId}`;
            const types = pokemon?.types || [];

            return (
              <div
                key={tp.id}
                className="flex items-start gap-3 p-2 rounded-lg bg-muted/20 cursor-pointer hover:bg-muted/40 transition-colors"
                onClick={() => onPokemonClick?.(tp.pokemonDexId)}
              >
                <PokemonSprite
                  dexId={tp.pokemonDexId}
                  size="md"
                  name={name}
                  hoverable
                />

                <div className="flex-1 min-w-0 space-y-1">
                  <div className="flex items-center gap-2">
                    <span className="text-sm font-medium">{name}</span>
                    <span className="text-xs text-muted-foreground">
                      Lv. {tp.level}
                    </span>
                    {types.map((t) => (
                      <TypeBadge key={t} type={t} size="sm" />
                    ))}
                  </div>

                  <div className="flex flex-wrap gap-x-4 gap-y-0.5 text-xs text-muted-foreground">
                    {tp.ability && (
                      <span>
                        <span className="font-medium">Ability:</span>{" "}
                        {tp.ability}
                      </span>
                    )}
                    {tp.heldItem && (
                      <span>
                        <span className="font-medium">Item:</span>{" "}
                        {tp.heldItem}
                      </span>
                    )}
                    {tp.nature && (
                      <span>
                        <span className="font-medium">Nature:</span>{" "}
                        {tp.nature}
                      </span>
                    )}
                  </div>

                  {tp.moves.length > 0 ? (
                    <div className="flex flex-wrap gap-1 mt-1">
                      {tp.moves.map((move, i) => (
                        <Badge
                          key={i}
                          variant="outline"
                          className="text-[10px] px-1.5 py-0 font-normal"
                        >
                          {move}
                        </Badge>
                      ))}
                    </div>
                  ) : (
                    <p className="text-[10px] italic text-muted-foreground">
                      Moves not available
                    </p>
                  )}
                </div>
              </div>
            );
          })}
        </div>
      )}
    </div>
  );
}
