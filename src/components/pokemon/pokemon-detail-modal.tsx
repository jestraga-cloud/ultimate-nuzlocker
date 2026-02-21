"use client";

import { useState, useEffect } from "react";
import { usePokemonDetail } from "@/hooks/use-pokemon-detail";
import { PokemonSprite } from "./pokemon-sprite";
import { TypeBadge } from "./type-badge";
import { StatDisplay } from "./stat-display";
import { Skeleton } from "@/components/ui/skeleton";
import {
  Dialog,
  DialogContent,
  DialogHeader,
  DialogTitle,
} from "@/components/ui/dialog";
import { Badge } from "@/components/ui/badge";
import { ChevronRight } from "lucide-react";
import { getPokemonLearnset, getEvolutionOverrides } from "@/data/pokemon-changes";
import { getPokemonSpecies, getEvolutionChain } from "@/lib/pokeapi/client";
import type { LevelUpMove } from "@/types/pokemon-changes";
import type { EvolutionChain, EvolutionNode } from "@/types/pokemon";

interface PokemonDetailModalProps {
  open: boolean;
  onOpenChange: (open: boolean) => void;
  dexId: number | null;
  generation?: number;
  gameSlug?: string;
  onEvolve?: (targetDexId: number) => void;
}

export function PokemonDetailModal({
  open,
  onOpenChange,
  dexId,
  generation,
  gameSlug,
  onEvolve,
}: PokemonDetailModalProps) {
  const { data, loading } = usePokemonDetail(open ? dexId : null, generation);
  const [learnset, setLearnset] = useState<LevelUpMove[] | null>(null);
  const [evoChain, setEvoChain] = useState<EvolutionChain | null>(null);
  const [evoOverrides, setEvoOverrides] = useState<Record<number, string> | null>(null);

  // Fetch learnset
  useEffect(() => {
    if (!open || !dexId || !gameSlug) {
      setLearnset(null);
      return;
    }

    let cancelled = false;
    getPokemonLearnset(gameSlug, dexId).then((result) => {
      if (!cancelled) setLearnset(result);
    });
    return () => {
      cancelled = true;
    };
  }, [open, dexId, gameSlug]);

  // Fetch evolution chain
  useEffect(() => {
    if (!open || !dexId) {
      setEvoChain(null);
      return;
    }

    let cancelled = false;
    (async () => {
      try {
        const species = await getPokemonSpecies(dexId);
        const chain = await getEvolutionChain(species.evolutionChainId);
        if (!cancelled) setEvoChain(chain);
      } catch {
        if (!cancelled) setEvoChain(null);
      }
    })();
    return () => {
      cancelled = true;
    };
  }, [open, dexId]);

  // Fetch evolution overrides
  useEffect(() => {
    if (!open || !gameSlug) {
      setEvoOverrides(null);
      return;
    }

    let cancelled = false;
    getEvolutionOverrides(gameSlug).then((result) => {
      if (!cancelled) setEvoOverrides(result);
    });
    return () => {
      cancelled = true;
    };
  }, [open, gameSlug]);

  const hasEvolutions = evoChain && evoChain.chain.evolvesTo.length > 0;

  return (
    <Dialog open={open} onOpenChange={onOpenChange}>
      <DialogContent className="max-w-sm max-h-[85vh] overflow-y-auto custom-scrollbar">
        {loading || !data ? (
          <div className="space-y-4 py-4">
            <DialogTitle className="sr-only">Loading Pokemon</DialogTitle>
            <div className="flex flex-col items-center gap-3">
              <Skeleton className="h-32 w-32 rounded-lg" />
              <Skeleton className="h-6 w-32" />
              <Skeleton className="h-4 w-24" />
            </div>
            <div className="space-y-2">
              {[1, 2, 3, 4, 5, 6].map((i) => (
                <Skeleton key={i} className="h-3 w-full" />
              ))}
            </div>
          </div>
        ) : (
          <>
            <DialogHeader className="items-center">
              <div className="flex flex-col items-center gap-2">
                <PokemonSprite
                  dexId={data.dexId}
                  size="xl"
                  name={data.name}
                />
                <DialogTitle
                  className="text-sm text-center"
                  style={{ fontFamily: "'Press Start 2P', monospace" }}
                >
                  {data.name}
                </DialogTitle>
                <span className="text-xs text-muted-foreground font-mono">
                  #{String(data.dexId).padStart(3, "0")}
                </span>
                <div className="flex items-center gap-1.5">
                  {data.types.map((t) => (
                    <TypeBadge key={t} type={t} />
                  ))}
                </div>
              </div>
            </DialogHeader>

            <div className="space-y-4 pt-2">
              {/* Stats */}
              <div>
                <h4 className="text-xs font-medium text-muted-foreground uppercase tracking-wider mb-2">
                  Base Stats
                </h4>
                <StatDisplay stats={data.stats} />
              </div>

              {/* Abilities */}
              {data.abilities.length > 0 && (
                <div>
                  <h4 className="text-xs font-medium text-muted-foreground uppercase tracking-wider mb-2">
                    Abilities
                  </h4>
                  <div className="flex flex-wrap gap-1.5">
                    {data.abilities.map((a) => (
                      <Badge
                        key={a.name}
                        variant={a.isHidden ? "outline" : "secondary"}
                        className="text-xs"
                      >
                        {a.name}
                        {a.isHidden && (
                          <span className="ml-1 text-[9px] text-muted-foreground">(H)</span>
                        )}
                      </Badge>
                    ))}
                  </div>
                </div>
              )}

              {/* Evolution Chain */}
              {hasEvolutions && (
                <div>
                  <h4 className="text-xs font-medium text-muted-foreground uppercase tracking-wider mb-2">
                    Evolution
                  </h4>
                  <EvolutionChainDisplay
                    chain={evoChain!}
                    currentDexId={data.dexId}
                    overrides={evoOverrides}
                    onEvolve={onEvolve}
                  />
                </div>
              )}

              {/* Physical */}
              <div className="flex items-center gap-4 text-xs text-muted-foreground">
                <span>
                  Height: <span className="font-medium text-foreground">{(data.height / 10).toFixed(1)}m</span>
                </span>
                <span>
                  Weight: <span className="font-medium text-foreground">{(data.weight / 10).toFixed(1)}kg</span>
                </span>
              </div>

              {/* Level-Up Moves */}
              {learnset && learnset.length > 0 && (
                <div>
                  <h4 className="text-xs font-medium text-muted-foreground uppercase tracking-wider mb-2">
                    Level-Up Moves
                  </h4>
                  <div className="grid grid-cols-2 gap-x-3 gap-y-0.5">
                    {learnset.map((move, i) => (
                      <div
                        key={`${move.level}-${move.name}-${i}`}
                        className="flex items-center gap-1.5 text-xs"
                      >
                        <span className="w-7 text-right font-mono text-muted-foreground shrink-0">
                          {move.level}
                        </span>
                        <span
                          className={`truncate ${
                            move.annotation === "new"
                              ? "text-green-600 dark:text-green-400 font-medium"
                              : move.annotation === "relearned"
                                ? "text-amber-600 dark:text-amber-400"
                                : ""
                          }`}
                          title={
                            move.annotation === "new"
                              ? `${move.name} (new to this hack)`
                              : move.annotation === "relearned"
                                ? `${move.name} (from egg/TM/tutor)`
                                : move.name
                          }
                        >
                          {move.name}
                          {move.annotation === "new" && (
                            <span className="text-[9px] ml-0.5">★</span>
                          )}
                          {move.annotation === "relearned" && (
                            <span className="text-[9px] ml-0.5">*</span>
                          )}
                        </span>
                      </div>
                    ))}
                  </div>
                  <div className="flex gap-3 mt-2 text-[10px] text-muted-foreground">
                    <span>
                      <span className="text-green-600 dark:text-green-400">★</span> New to hack
                    </span>
                    <span>
                      <span className="text-amber-600 dark:text-amber-400">*</span> From egg/TM/tutor
                    </span>
                  </div>
                </div>
              )}
            </div>
          </>
        )}
      </DialogContent>
    </Dialog>
  );
}

// --- Evolution chain display ---

function EvolutionChainDisplay({
  chain,
  currentDexId,
  overrides,
  onEvolve,
}: {
  chain: EvolutionChain;
  currentDexId: number;
  overrides: Record<number, string> | null;
  onEvolve?: (targetDexId: number) => void;
}) {
  const stages: {
    node: EvolutionNode;
    parentDexId?: number;
    trigger?: string;
    triggerDetail?: string;
  }[][] = [];
  flattenChain(chain.chain, 0, stages);

  return (
    <div className="flex flex-col gap-1.5">
      {stages.map((stage, stageIdx) => (
        <div key={stageIdx} className="flex items-center justify-center gap-1 flex-wrap">
          {stageIdx > 0 && (
            <div className="w-full flex justify-center">
              <ChevronRight className="h-3.5 w-3.5 text-muted-foreground rotate-90" />
            </div>
          )}
          {stage.map((entry) => {
            const override = entry.parentDexId != null ? overrides?.[entry.parentDexId] : undefined;
            const displayTrigger = override
              ? formatOverride(override)
              : entry.triggerDetail;
            const isCurrent = entry.node.dexId === currentDexId;
            const canEvolve = onEvolve && !isCurrent;

            const content = (
              <>
                <PokemonSprite
                  dexId={entry.node.dexId}
                  size="sm"
                  name={entry.node.name}
                />
                <span className="text-[9px] font-medium text-center max-w-[72px] truncate">
                  {entry.node.name}
                </span>
                {displayTrigger && (
                  <span
                    className={`text-[8px] text-center max-w-[80px] leading-tight ${
                      override
                        ? "text-amber-600 dark:text-amber-400 font-medium"
                        : "text-muted-foreground"
                    }`}
                    title={override ? `Modified: ${override}` : displayTrigger}
                  >
                    {displayTrigger}
                  </span>
                )}
                {canEvolve && (
                  <span className="text-[8px] text-primary font-medium">
                    Evolve →
                  </span>
                )}
              </>
            );

            if (canEvolve) {
              return (
                <button
                  key={entry.node.dexId}
                  onClick={() => onEvolve(entry.node.dexId)}
                  className="flex flex-col items-center gap-0.5 p-1.5 rounded-lg border border-transparent hover:border-primary/50 hover:bg-primary/10 transition-colors cursor-pointer"
                >
                  {content}
                </button>
              );
            }

            return (
              <div
                key={entry.node.dexId}
                className={`flex flex-col items-center gap-0.5 p-1.5 rounded-lg border ${
                  isCurrent
                    ? "border-primary bg-primary/5"
                    : "border-transparent"
                }`}
              >
                {content}
              </div>
            );
          })}
        </div>
      ))}
    </div>
  );
}

function flattenChain(
  node: EvolutionNode,
  depth: number,
  stages: {
    node: EvolutionNode;
    parentDexId?: number;
    trigger?: string;
    triggerDetail?: string;
  }[][],
  parentDexId?: number,
  trigger?: string,
  triggerDetail?: string
) {
  if (!stages[depth]) stages[depth] = [];
  stages[depth].push({ node, parentDexId, trigger, triggerDetail });

  for (const evo of node.evolvesTo) {
    flattenChain(evo.node, depth + 1, stages, node.dexId, evo.trigger, evo.triggerDetail);
  }
}

function formatOverride(override: string): string {
  // "40 >> 37" → "Level 37"
  const levelChange = override.match(/^(\d+)\s*>>\s*(\d+)$/);
  if (levelChange) return `Level ${levelChange[2]}`;

  return override;
}
