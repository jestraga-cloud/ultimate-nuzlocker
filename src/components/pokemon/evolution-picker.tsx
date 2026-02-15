"use client";

import { useState, useEffect } from "react";
import type { EvolutionChain, EvolutionNode } from "@/types/pokemon";
import { getEvolutionChain, getPokemonSpecies } from "@/lib/pokeapi/client";
import { PokemonSprite } from "./pokemon-sprite";
import { Skeleton } from "@/components/ui/skeleton";
import {
  Dialog,
  DialogContent,
  DialogHeader,
  DialogTitle,
} from "@/components/ui/dialog";
import { ChevronRight } from "lucide-react";

interface EvolutionPickerProps {
  open: boolean;
  onOpenChange: (open: boolean) => void;
  currentDexId: number;
  onSelectEvolution: (dexId: number) => void;
}

export function EvolutionPicker({
  open,
  onOpenChange,
  currentDexId,
  onSelectEvolution,
}: EvolutionPickerProps) {
  const [chain, setChain] = useState<EvolutionChain | null>(null);
  const [loading, setLoading] = useState(false);

  useEffect(() => {
    if (!open || !currentDexId) {
      setChain(null);
      return;
    }

    let cancelled = false;
    setLoading(true);

    (async () => {
      try {
        const species = await getPokemonSpecies(currentDexId);
        const evoChain = await getEvolutionChain(species.evolutionChainId);
        if (!cancelled) {
          setChain(evoChain);
          setLoading(false);
        }
      } catch {
        if (!cancelled) {
          setChain(null);
          setLoading(false);
        }
      }
    })();

    return () => {
      cancelled = true;
    };
  }, [open, currentDexId]);

  const handleSelect = (dexId: number) => {
    if (dexId !== currentDexId) {
      onSelectEvolution(dexId);
      onOpenChange(false);
    }
  };

  return (
    <Dialog open={open} onOpenChange={onOpenChange}>
      <DialogContent className="max-w-md">
        <DialogHeader>
          <DialogTitle
            className="text-xs text-center"
            style={{ fontFamily: "'Press Start 2P', monospace" }}
          >
            Evolution Chain
          </DialogTitle>
        </DialogHeader>

        {loading ? (
          <div className="flex items-center justify-center gap-4 py-8">
            <Skeleton className="h-16 w-16 rounded-lg" />
            <Skeleton className="h-4 w-4 rounded" />
            <Skeleton className="h-16 w-16 rounded-lg" />
            <Skeleton className="h-4 w-4 rounded" />
            <Skeleton className="h-16 w-16 rounded-lg" />
          </div>
        ) : chain ? (
          <div className="py-4">
            <EvolutionChainDisplay
              node={chain.chain}
              currentDexId={currentDexId}
              onSelect={handleSelect}
            />
          </div>
        ) : (
          <p className="text-sm text-muted-foreground text-center py-8">
            Could not load evolution chain.
          </p>
        )}
      </DialogContent>
    </Dialog>
  );
}

function EvolutionChainDisplay({
  node,
  currentDexId,
  onSelect,
}: {
  node: EvolutionNode;
  currentDexId: number;
  onSelect: (dexId: number) => void;
}) {
  // Flatten the chain for display
  const stages: { node: EvolutionNode; trigger?: string; triggerDetail?: string }[][] = [];
  flattenChain(node, 0, stages);

  return (
    <div className="flex flex-col gap-3">
      {stages.map((stage, stageIdx) => (
        <div key={stageIdx} className="flex items-center justify-center gap-2 flex-wrap">
          {stageIdx > 0 && (
            <div className="w-full flex justify-center mb-1">
              <ChevronRight className="h-4 w-4 text-muted-foreground rotate-90" />
            </div>
          )}
          {stage.map((entry) => (
            <button
              key={entry.node.dexId}
              onClick={() => onSelect(entry.node.dexId)}
              className={`flex flex-col items-center gap-1.5 p-3 rounded-lg border transition-all ${
                entry.node.dexId === currentDexId
                  ? "border-primary bg-primary/5 pixel-glow-blue"
                  : "border-border hover:border-primary/50 hover:bg-accent cursor-pointer"
              }`}
            >
              <PokemonSprite
                dexId={entry.node.dexId}
                size="md"
                name={entry.node.name}
                hoverable={entry.node.dexId !== currentDexId}
              />
              <span className="text-[10px] font-medium text-center max-w-[80px] truncate">
                {entry.node.name}
              </span>
              {entry.triggerDetail && (
                <span className="text-[8px] text-muted-foreground text-center max-w-[80px] leading-tight">
                  {entry.triggerDetail}
                </span>
              )}
              {entry.node.dexId === currentDexId && (
                <span className="text-[8px] text-primary font-medium">Current</span>
              )}
            </button>
          ))}
        </div>
      ))}
    </div>
  );
}

function flattenChain(
  node: EvolutionNode,
  depth: number,
  stages: { node: EvolutionNode; trigger?: string; triggerDetail?: string }[][],
  trigger?: string,
  triggerDetail?: string
) {
  if (!stages[depth]) stages[depth] = [];
  stages[depth].push({ node, trigger, triggerDetail });

  for (const evo of node.evolvesTo) {
    flattenChain(evo.node, depth + 1, stages, evo.trigger, evo.triggerDetail);
  }
}
