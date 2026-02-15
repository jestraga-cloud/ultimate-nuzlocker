"use client";

import { Progress } from "@/components/ui/progress";
import { PokeballIcon } from "@/components/icons/pokeball-icon";
import { GAME_MASCOT_SPRITES } from "@/types/game";

interface AdventureHeaderProps {
  gameName: string;
  adventureName: string;
  gameSlug: string;
  spriteUrl: string | null;
  visitedRoutes: number;
  totalRoutes: number;
}

export function AdventureHeader({
  gameName,
  adventureName,
  gameSlug,
  spriteUrl,
  visitedRoutes,
  totalRoutes,
}: AdventureHeaderProps) {
  const resolvedSprite = GAME_MASCOT_SPRITES[gameSlug] || spriteUrl || null;
  const progress = totalRoutes > 0 ? (visitedRoutes / totalRoutes) * 100 : 0;

  return (
    <div className="sticky top-16 z-40 border-b bg-background/95 backdrop-blur-sm px-4 py-3">
      <div className="flex items-center gap-4 max-w-7xl mx-auto">
        {/* Game sprite */}
        <div className="flex-shrink-0 w-12 h-12 rounded-lg bg-muted/50 flex items-center justify-center pixel-border">
          {resolvedSprite ? (
            <img
              src={resolvedSprite}
              alt={gameName}
              className="w-10 h-10 object-contain pixel-sprite"
            />
          ) : (
            <PokeballIcon className="w-8 h-8 opacity-40" />
          )}
        </div>

        {/* Title and adventure name */}
        <div className="flex-1 min-w-0">
          <h1
            className="text-xs text-primary truncate"
            style={{ fontFamily: "'Press Start 2P', monospace" }}
          >
            {gameName}
          </h1>
          <p className="text-xs text-muted-foreground truncate mt-0.5">
            {adventureName}
          </p>
        </div>

        {/* Progress */}
        <div className="flex-shrink-0 w-48 hidden sm:block">
          <div className="flex items-center justify-between text-xs text-muted-foreground mb-1">
            <span className="font-medium">Progress</span>
            <span className="font-mono">
              {visitedRoutes}/{totalRoutes}
            </span>
          </div>
          <div className="relative">
            <Progress value={progress} className="h-2.5 pixel-border" />
            {progress > 0 && (
              <div
                className="absolute top-0 left-0 h-2.5 rounded-full progress-striped"
                style={{ width: `${progress}%` }}
              />
            )}
          </div>
        </div>

        {/* Mobile progress */}
        <div className="flex-shrink-0 sm:hidden">
          <div className="flex flex-col items-center">
            <span
              className="text-xs font-medium text-primary"
              style={{ fontFamily: "'Press Start 2P', monospace" }}
            >
              {Math.round(progress)}%
            </span>
            <span className="text-[9px] text-muted-foreground">
              {visitedRoutes}/{totalRoutes}
            </span>
          </div>
        </div>
      </div>
    </div>
  );
}
