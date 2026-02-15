"use client";

import type { Game } from "@/types/game";
import { GENERATION_COLORS, GAME_MASCOT_SPRITES } from "@/types/game";
import { Badge } from "@/components/ui/badge";
import { PokeballIcon } from "@/components/icons/pokeball-icon";
import Link from "next/link";

interface GameCardProps {
  game: Game;
}

export function GameCard({ game }: GameCardProps) {
  const genColor = GENERATION_COLORS[game.generation || 0] || "#6b7280";
  const resolvedSprite = GAME_MASCOT_SPRITES[game.slug] || game.spriteUrl || null;

  return (
    <Link
      href={`/adventure/new?game=${game.slug}`}
      className="group block rounded-xl border bg-card overflow-hidden transition-all hover:shadow-lg hover:scale-[1.02] hover:border-primary/30 pixel-shadow"
    >
      {/* Colored top accent */}
      <div
        className="h-1.5 w-full"
        style={{ background: `linear-gradient(90deg, ${genColor}, ${genColor}40)` }}
      />

      {/* Game sprite area */}
      <div className="flex items-center justify-center h-24 bg-muted/30 relative">
        {resolvedSprite ? (
          <img
            src={resolvedSprite}
            alt={game.name}
            className="h-20 object-contain pixel-sprite group-hover:scale-110 transition-transform"
          />
        ) : (
          <PokeballIcon className="w-12 h-12 opacity-20 group-hover:opacity-30 transition-opacity" />
        )}
      </div>

      {/* Game info */}
      <div className="p-4 space-y-2">
        <h3
          className="text-[10px] font-bold text-center leading-relaxed group-hover:text-primary transition-colors"
          style={{ fontFamily: "'Press Start 2P', monospace" }}
        >
          {game.name}
        </h3>

        <div className="flex items-center justify-center gap-1.5 flex-wrap">
          {game.generation && (
            <Badge
              variant="secondary"
              className="text-[10px] px-1.5 py-0"
              style={{ backgroundColor: `${genColor}15`, color: genColor, borderColor: `${genColor}30` }}
            >
              Gen {game.generation}
            </Badge>
          )}
          {game.region && (
            <Badge variant="outline" className="text-[10px] px-1.5 py-0">
              {game.region}
            </Badge>
          )}
          {game.isRomhack && (
            <Badge
              className="text-[10px] px-1.5 py-0 bg-amber-500/10 text-amber-600 border-amber-500/30"
              variant="outline"
            >
              ROM Hack
            </Badge>
          )}
        </div>

        {game.totalRoutes > 0 && (
          <p className="text-[10px] text-center text-muted-foreground">
            {game.totalRoutes} routes
          </p>
        )}
      </div>
    </Link>
  );
}
