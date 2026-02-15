"use client";

import { useStore } from "@/lib/store";
import { useStoreHydration } from "@/hooks/use-store-hydration";
import { PokemonSprite } from "@/components/pokemon/pokemon-sprite";
import { Badge } from "@/components/ui/badge";
import { Button } from "@/components/ui/button";
import { Skeleton } from "@/components/ui/skeleton";
import { GAME_MASCOT_SPRITES } from "@/types/game";
import { Plus, Trash2 } from "lucide-react";
import Link from "next/link";
import { PokeballIcon } from "@/components/icons/pokeball-icon";

export default function AdventuresPage() {
  const hydrated = useStoreHydration();
  const adventures = useStore((s) => s.adventures);
  const catches = useStore((s) => s.catches);
  const deleteAdventure = useStore((s) => s.deleteAdventure);

  if (!hydrated) {
    return (
      <div className="mx-auto max-w-4xl px-4 py-8 space-y-4">
        <Skeleton className="h-8 w-48" />
        <div className="grid gap-4">
          {[1, 2, 3].map((i) => (
            <Skeleton key={i} className="h-24" />
          ))}
        </div>
      </div>
    );
  }

  const adventureList = Object.values(adventures);

  return (
    <div className="mx-auto max-w-4xl px-4 py-8">
      <div className="flex items-center justify-between mb-6">
        <h1
          className="text-lg text-primary"
          style={{ fontFamily: "'Press Start 2P', monospace" }}
        >
          My Adventures
        </h1>
        <Button asChild size="sm">
          <Link href="/games">
            <Plus className="h-4 w-4 mr-1" />
            New
          </Link>
        </Button>
      </div>

      {adventureList.length === 0 ? (
        <div className="text-center py-16 space-y-4">
          <p className="text-muted-foreground">
            No adventures yet. Start your first Nuzlocke!
          </p>
          <Button asChild>
            <Link href="/games">Choose a Game</Link>
          </Button>
        </div>
      ) : (
        <div className="grid gap-3">
          {adventureList.map((adventure) => {
            const adventureCatches = catches[adventure.id] || [];
            const alive = adventureCatches.filter(
              (c) => c.status === "alive" || c.status === "in_team"
            );
            const dead = adventureCatches.filter(
              (c) => c.status === "dead"
            );

            return (
              <Link
                key={adventure.id}
                href={`/adventure/${adventure.id}`}
                className="flex items-center gap-4 rounded-xl border bg-card p-4 hover:bg-accent/30 transition-colors group"
              >
                <div className="flex-shrink-0 w-12 h-12 rounded-lg bg-muted/50 flex items-center justify-center pixel-border">
                  {(GAME_MASCOT_SPRITES[adventure.gameSlug] || adventure.gameSpriteUrl) ? (
                    <img
                      src={GAME_MASCOT_SPRITES[adventure.gameSlug] || adventure.gameSpriteUrl!}
                      alt={adventure.gameName}
                      className="w-10 h-10 object-contain pixel-sprite"
                    />
                  ) : (
                    <PokeballIcon className="w-8 h-8 opacity-40" />
                  )}
                </div>

                <div className="flex-1 min-w-0">
                  <div className="flex items-center gap-2">
                    <h3 className="text-sm font-semibold truncate">
                      {adventure.name}
                    </h3>
                    <Badge
                      variant={
                        adventure.status === "active"
                          ? "default"
                          : adventure.status === "completed"
                          ? "secondary"
                          : "destructive"
                      }
                      className="text-[10px] px-1.5"
                    >
                      {adventure.status}
                    </Badge>
                  </div>
                  <p className="text-xs text-muted-foreground">
                    {adventure.gameName}
                  </p>
                  <div className="flex items-center gap-3 mt-1.5">
                    <span className="text-[10px] text-muted-foreground">
                      {alive.length} alive
                    </span>
                    {dead.length > 0 && (
                      <span className="text-[10px] text-destructive">
                        {dead.length} dead
                      </span>
                    )}
                  </div>
                </div>

                {/* Mini team preview */}
                <div className="hidden sm:flex items-center -space-x-1">
                  {alive.slice(0, 6).map((c) => (
                    <PokemonSprite
                      key={c.id}
                      dexId={c.currentEvolutionDexId || c.pokemonDexId}
                      size="xs"
                    />
                  ))}
                </div>

                <button
                  onClick={(e) => {
                    e.preventDefault();
                    e.stopPropagation();
                    if (confirm("Delete this adventure? This cannot be undone.")) {
                      deleteAdventure(adventure.id);
                    }
                  }}
                  className="opacity-0 group-hover:opacity-100 p-2 rounded-md hover:bg-destructive/10 text-muted-foreground hover:text-destructive transition-all"
                >
                  <Trash2 className="h-4 w-4" />
                </button>
              </Link>
            );
          })}
        </div>
      )}
    </div>
  );
}
