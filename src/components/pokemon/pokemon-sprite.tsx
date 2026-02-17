"use client";

import Image from "next/image";
import { getSpriteUrl } from "@/lib/pokeapi/client";
import { useState } from "react";

type SpriteSize = "2xs" | "xs" | "sm" | "md" | "lg" | "xl" | "2xl";

const SIZE_MAP: Record<SpriteSize, number> = {
  "2xs": 24,
  xs: 32,
  sm: 48,
  md: 64,
  lg: 96,
  xl: 128,
  "2xl": 160,
};

interface PokemonSpriteProps {
  dexId: number;
  size?: SpriteSize;
  variant?: "default" | "shiny";
  className?: string;
  showName?: boolean;
  name?: string;
  hoverable?: boolean;
}

export function PokemonSprite({
  dexId,
  size = "md",
  variant = "default",
  className = "",
  showName = false,
  name,
  hoverable = false,
}: PokemonSpriteProps) {
  const [error, setError] = useState(false);
  const px = SIZE_MAP[size];
  const src = getSpriteUrl(dexId, variant);

  return (
    <div className={`inline-flex flex-col items-center gap-1 ${className}`}>
      {error ? (
        <div
          className="flex items-center justify-center bg-muted rounded-md"
          style={{ width: px, height: px }}
        >
          <span className="text-muted-foreground text-xs">?</span>
        </div>
      ) : (
        <Image
          src={src}
          alt={name || `Pokemon #${dexId}`}
          width={px}
          height={px}
          className={`pixel-sprite ${hoverable ? "sprite-hover-enlarge" : ""}`}
          onError={() => setError(true)}
          unoptimized
        />
      )}
      {showName && name && (
        <span className="text-xs text-muted-foreground truncate max-w-[80px]">
          {name}
        </span>
      )}
    </div>
  );
}
