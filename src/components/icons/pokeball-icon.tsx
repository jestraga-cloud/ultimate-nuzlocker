interface PokeballIconProps {
  className?: string;
  strokeWidth?: number;
}

export function PokeballIcon({
  className = "w-8 h-8",
  strokeWidth = 4,
}: PokeballIconProps) {
  return (
    <svg viewBox="0 0 100 100" className={className}>
      <circle
        cx="50"
        cy="50"
        r="48"
        fill="white"
        stroke="currentColor"
        strokeWidth={strokeWidth}
      />
      <path
        d="M 2 50 A 48 48 0 0 1 98 50"
        style={{ fill: "var(--theme-pokeball-fill, #c2410c)" }}
        stroke="currentColor"
        strokeWidth={strokeWidth}
      />
      <rect x="2" y="48" width="96" height="6" fill="currentColor" />
      <circle
        cx="50"
        cy="50"
        r="14"
        fill="white"
        stroke="currentColor"
        strokeWidth={strokeWidth}
      />
      <circle
        cx="50"
        cy="50"
        r="8"
        fill="white"
        stroke="currentColor"
        strokeWidth={Math.round(strokeWidth * 0.75)}
      />
    </svg>
  );
}
