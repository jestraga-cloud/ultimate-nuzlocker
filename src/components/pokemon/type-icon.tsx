"use client";

import { useState } from "react";
import { TypeBadge } from "./type-badge";

const SIZE_MAP = {
  sm: 20,
  md: 28,
  lg: 36,
} as const;

interface TypeIconProps {
  type: string;
  size?: "sm" | "md" | "lg";
  className?: string;
}

export function TypeIcon({ type, size = "sm", className = "" }: TypeIconProps) {
  const [error, setError] = useState(false);
  const normalizedType = type.toLowerCase();
  const height = SIZE_MAP[size];

  if (error) {
    const badgeSize = size === "lg" ? "md" : "sm";
    return <TypeBadge type={type} size={badgeSize} className={className} />;
  }

  return (
    <img
      src={`/images/types/${normalizedType}.png`}
      alt={type}
      height={height}
      className={`inline-block pixel-sprite ${className}`}
      style={{ height: `${height}px`, width: "auto" }}
      onError={() => setError(true)}
      draggable={false}
    />
  );
}
