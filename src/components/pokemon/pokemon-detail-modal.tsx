"use client";

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

interface PokemonDetailModalProps {
  open: boolean;
  onOpenChange: (open: boolean) => void;
  dexId: number | null;
  generation?: number;
}

export function PokemonDetailModal({
  open,
  onOpenChange,
  dexId,
  generation,
}: PokemonDetailModalProps) {
  const { data, loading } = usePokemonDetail(open ? dexId : null, generation);

  return (
    <Dialog open={open} onOpenChange={onOpenChange}>
      <DialogContent className="max-w-sm">
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

              {/* Physical */}
              <div className="flex items-center gap-4 text-xs text-muted-foreground">
                <span>
                  Height: <span className="font-medium text-foreground">{(data.height / 10).toFixed(1)}m</span>
                </span>
                <span>
                  Weight: <span className="font-medium text-foreground">{(data.weight / 10).toFixed(1)}kg</span>
                </span>
              </div>
            </div>
          </>
        )}
      </DialogContent>
    </Dialog>
  );
}
