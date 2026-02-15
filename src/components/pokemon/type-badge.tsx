import { TYPE_COLORS, type PokemonType } from "@/types/pokemon";

interface TypeBadgeProps {
  type: string;
  size?: "sm" | "md";
  className?: string;
}

export function TypeBadge({ type, size = "sm", className = "" }: TypeBadgeProps) {
  const normalizedType = type.toLowerCase() as PokemonType;
  const bgColor = TYPE_COLORS[normalizedType] || "#999";

  return (
    <span
      className={`inline-flex items-center justify-center rounded-md font-medium text-white uppercase tracking-wider ${
        size === "sm" ? "px-2 py-0.5 text-[10px]" : "px-3 py-1 text-xs"
      } ${className}`}
      style={{ backgroundColor: bgColor }}
    >
      {type}
    </span>
  );
}
