"use client";

import { useStore } from "@/lib/store";

/* ───────────────────────────────────────────────
   Warm Adventure — leaves, trees, mushrooms
   ─────────────────────────────────────────────── */
function WarmAdventureDecorations() {
  return (
    <>
      {/* Top-left: oak leaves cluster */}
      <svg
        className="absolute top-8 left-4 w-24 h-24 opacity-[0.07]"
        viewBox="0 0 48 48"
        fill="none"
      >
        {/* Leaf 1 */}
        <path d="M12 8 L16 4 L20 8 L20 12 L18 16 L16 18 L14 16 L12 12Z" fill="currentColor" />
        <line x1="16" y1="4" x2="16" y2="18" stroke="currentColor" strokeWidth="0.5" opacity="0.5" />
        {/* Leaf 2 - rotated */}
        <path d="M24 12 L28 6 L32 10 L32 16 L30 20 L28 22 L26 18 L24 16Z" fill="currentColor" />
        <line x1="28" y1="6" x2="28" y2="22" stroke="currentColor" strokeWidth="0.5" opacity="0.5" />
        {/* Small falling leaf */}
        <path d="M8 28 L12 24 L14 28 L12 32 L8 30Z" fill="currentColor" />
        {/* Acorn */}
        <rect x="30" y="28" width="4" height="4" rx="1" fill="currentColor" />
        <rect x="29" y="26" width="6" height="3" rx="1" fill="currentColor" opacity="0.6" />
      </svg>

      {/* Top-right: small pixel tree */}
      <svg
        className="absolute top-12 right-6 w-20 h-28 opacity-[0.06]"
        viewBox="0 0 20 28"
        fill="none"
      >
        {/* Tree crown */}
        <rect x="6" y="0" width="8" height="2" fill="currentColor" />
        <rect x="4" y="2" width="12" height="2" fill="currentColor" />
        <rect x="2" y="4" width="16" height="2" fill="currentColor" />
        <rect x="4" y="6" width="12" height="2" fill="currentColor" />
        <rect x="2" y="8" width="16" height="2" fill="currentColor" />
        <rect x="0" y="10" width="20" height="2" fill="currentColor" />
        <rect x="2" y="12" width="16" height="2" fill="currentColor" />
        <rect x="4" y="14" width="12" height="2" fill="currentColor" />
        {/* Trunk */}
        <rect x="8" y="16" width="4" height="8" fill="currentColor" opacity="0.7" />
        {/* Base */}
        <rect x="6" y="24" width="8" height="2" fill="currentColor" opacity="0.4" />
      </svg>

      {/* Bottom-left: mushrooms + grass */}
      <svg
        className="absolute bottom-16 left-8 w-20 h-16 opacity-[0.06]"
        viewBox="0 0 40 32"
        fill="none"
      >
        {/* Mushroom 1 */}
        <rect x="4" y="8" width="12" height="2" fill="currentColor" />
        <rect x="2" y="10" width="16" height="4" fill="currentColor" />
        <rect x="4" y="14" width="12" height="2" fill="currentColor" />
        <rect x="8" y="16" width="4" height="6" fill="currentColor" opacity="0.7" />
        {/* Mushroom 2 (smaller) */}
        <rect x="24" y="14" width="8" height="2" fill="currentColor" />
        <rect x="22" y="16" width="12" height="2" fill="currentColor" />
        <rect x="26" y="18" width="4" height="4" fill="currentColor" opacity="0.7" />
        {/* Grass tufts */}
        <rect x="0" y="24" width="2" height="4" fill="currentColor" opacity="0.4" />
        <rect x="4" y="26" width="2" height="2" fill="currentColor" opacity="0.3" />
        <rect x="18" y="24" width="2" height="4" fill="currentColor" opacity="0.4" />
        <rect x="36" y="26" width="2" height="2" fill="currentColor" opacity="0.3" />
      </svg>

      {/* Bottom-right: scattered leaves */}
      <svg
        className="absolute bottom-24 right-12 w-16 h-16 opacity-[0.05]"
        viewBox="0 0 32 32"
        fill="none"
      >
        <path d="M4 8 L8 4 L10 8 L8 12 L4 10Z" fill="currentColor" />
        <path d="M20 4 L24 0 L26 4 L24 8 L20 6Z" fill="currentColor" />
        <path d="M12 20 L16 16 L18 20 L16 24 L12 22Z" fill="currentColor" />
        <path d="M24 24 L28 20 L30 24 L28 28 L24 26Z" fill="currentColor" />
      </svg>

      {/* Mid-left: tiny berries */}
      <svg
        className="absolute top-1/2 left-4 w-8 h-12 opacity-[0.06] hidden md:block"
        viewBox="0 0 8 12"
        fill="none"
      >
        <circle cx="4" cy="2" r="2" fill="currentColor" />
        <circle cx="2" cy="6" r="2" fill="currentColor" />
        <circle cx="6" cy="10" r="2" fill="currentColor" />
      </svg>
    </>
  );
}

/* ───────────────────────────────────────────────
   Classic Pokedex — circuit lines, tech nodes
   ─────────────────────────────────────────────── */
function ClassicPokedexDecorations() {
  return (
    <>
      {/* Top-left: circuit board corner */}
      <svg
        className="absolute top-6 left-4 w-28 h-28 opacity-[0.08]"
        viewBox="0 0 56 56"
        fill="none"
        stroke="currentColor"
        strokeWidth="1"
      >
        {/* Main circuit lines */}
        <line x1="0" y1="8" x2="20" y2="8" />
        <line x1="20" y1="8" x2="20" y2="24" />
        <line x1="20" y1="24" x2="40" y2="24" />
        <line x1="8" y1="0" x2="8" y2="16" />
        <line x1="8" y1="16" x2="32" y2="16" />
        <line x1="32" y1="16" x2="32" y2="40" />
        {/* Branch lines */}
        <line x1="0" y1="32" x2="12" y2="32" />
        <line x1="12" y1="32" x2="12" y2="48" />
        <line x1="40" y1="0" x2="40" y2="12" />
        {/* Nodes */}
        <rect x="18" y="6" width="4" height="4" fill="currentColor" />
        <rect x="6" y="14" width="4" height="4" fill="currentColor" />
        <rect x="30" y="22" width="4" height="4" fill="currentColor" />
        <circle cx="12" cy="48" r="3" fill="currentColor" opacity="0.5" />
        <circle cx="40" cy="12" r="2" fill="currentColor" opacity="0.5" />
        <circle cx="32" cy="40" r="3" fill="currentColor" opacity="0.5" />
      </svg>

      {/* Top-right: chip/processor */}
      <svg
        className="absolute top-10 right-8 w-16 h-16 opacity-[0.07]"
        viewBox="0 0 32 32"
        fill="none"
        stroke="currentColor"
        strokeWidth="1"
      >
        {/* Chip body */}
        <rect x="8" y="8" width="16" height="16" fill="currentColor" opacity="0.3" />
        <rect x="8" y="8" width="16" height="16" />
        {/* Pins */}
        <line x1="12" y1="0" x2="12" y2="8" />
        <line x1="20" y1="0" x2="20" y2="8" />
        <line x1="12" y1="24" x2="12" y2="32" />
        <line x1="20" y1="24" x2="20" y2="32" />
        <line x1="0" y1="12" x2="8" y2="12" />
        <line x1="0" y1="20" x2="8" y2="20" />
        <line x1="24" y1="12" x2="32" y2="12" />
        <line x1="24" y1="20" x2="32" y2="20" />
        {/* Inner detail */}
        <rect x="13" y="13" width="6" height="6" fill="currentColor" opacity="0.2" />
      </svg>

      {/* Bottom-left: data stream */}
      <svg
        className="absolute bottom-20 left-6 w-12 h-24 opacity-[0.06]"
        viewBox="0 0 12 24"
        fill="currentColor"
      >
        <rect x="0" y="0" width="4" height="2" />
        <rect x="4" y="4" width="8" height="2" />
        <rect x="0" y="8" width="6" height="2" />
        <rect x="2" y="12" width="10" height="2" />
        <rect x="0" y="16" width="4" height="2" />
        <rect x="6" y="20" width="6" height="2" />
      </svg>

      {/* Bottom-right: circuit corner */}
      <svg
        className="absolute bottom-16 right-6 w-20 h-20 opacity-[0.06]"
        viewBox="0 0 40 40"
        fill="none"
        stroke="currentColor"
        strokeWidth="1"
      >
        <line x1="40" y1="32" x2="24" y2="32" />
        <line x1="24" y1="32" x2="24" y2="16" />
        <line x1="24" y1="16" x2="8" y2="16" />
        <line x1="32" y1="40" x2="32" y2="24" />
        <line x1="32" y1="24" x2="16" y2="24" />
        <rect x="6" y="14" width="4" height="4" fill="currentColor" />
        <rect x="22" y="30" width="4" height="4" fill="currentColor" />
        <circle cx="16" cy="24" r="2" fill="currentColor" opacity="0.5" />
      </svg>

      {/* Mid-right: LED indicators */}
      <svg
        className="absolute top-1/2 right-4 w-6 h-16 opacity-[0.08] hidden md:block"
        viewBox="0 0 6 16"
        fill="currentColor"
      >
        <circle cx="3" cy="2" r="2" />
        <circle cx="3" cy="8" r="2" opacity="0.5" />
        <circle cx="3" cy="14" r="2" />
      </svg>
    </>
  );
}

/* ───────────────────────────────────────────────
   Neon Trainer — neon grid, glitch accents
   ─────────────────────────────────────────────── */
function NeonTrainerDecorations() {
  return (
    <>
      {/* Top-left: neon corner bracket */}
      <svg
        className="absolute top-6 left-4 w-20 h-20 opacity-[0.12]"
        viewBox="0 0 40 40"
        fill="none"
      >
        <path
          d="M0 32 L0 4 L4 0 L32 0"
          stroke="var(--theme-pokeball-fill, #06b6d4)"
          strokeWidth="2"
        />
        <rect x="0" y="0" width="4" height="4" fill="var(--theme-pokeball-fill, #06b6d4)" opacity="0.6" />
        {/* Inner tick marks */}
        <line x1="8" y1="0" x2="8" y2="4" stroke="var(--theme-pokeball-fill, #06b6d4)" strokeWidth="1" opacity="0.4" />
        <line x1="16" y1="0" x2="16" y2="3" stroke="var(--theme-pokeball-fill, #06b6d4)" strokeWidth="1" opacity="0.3" />
        <line x1="24" y1="0" x2="24" y2="4" stroke="var(--theme-pokeball-fill, #06b6d4)" strokeWidth="1" opacity="0.4" />
        <line x1="0" y1="12" x2="4" y2="12" stroke="var(--theme-pokeball-fill, #06b6d4)" strokeWidth="1" opacity="0.4" />
        <line x1="0" y1="20" x2="3" y2="20" stroke="var(--theme-pokeball-fill, #06b6d4)" strokeWidth="1" opacity="0.3" />
      </svg>

      {/* Top-right: neon corner bracket (mirrored) */}
      <svg
        className="absolute top-6 right-4 w-20 h-20 opacity-[0.12]"
        viewBox="0 0 40 40"
        fill="none"
        style={{ transform: "scaleX(-1)" }}
      >
        <path
          d="M0 32 L0 4 L4 0 L32 0"
          stroke="#e879f9"
          strokeWidth="2"
        />
        <rect x="0" y="0" width="4" height="4" fill="#e879f9" opacity="0.6" />
        <line x1="8" y1="0" x2="8" y2="4" stroke="#e879f9" strokeWidth="1" opacity="0.4" />
        <line x1="16" y1="0" x2="16" y2="3" stroke="#e879f9" strokeWidth="1" opacity="0.3" />
        <line x1="24" y1="0" x2="24" y2="4" stroke="#e879f9" strokeWidth="1" opacity="0.4" />
        <line x1="0" y1="12" x2="4" y2="12" stroke="#e879f9" strokeWidth="1" opacity="0.4" />
        <line x1="0" y1="20" x2="3" y2="20" stroke="#e879f9" strokeWidth="1" opacity="0.3" />
      </svg>

      {/* Bottom-left: glitch bars */}
      <svg
        className="absolute bottom-20 left-6 w-16 h-12 opacity-[0.10]"
        viewBox="0 0 32 24"
        fill="var(--theme-pokeball-fill, #06b6d4)"
      >
        <rect x="0" y="0" width="24" height="2" />
        <rect x="8" y="4" width="16" height="2" opacity="0.6" />
        <rect x="0" y="8" width="12" height="2" />
        <rect x="4" y="14" width="28" height="2" opacity="0.4" />
        <rect x="0" y="20" width="20" height="2" opacity="0.6" />
      </svg>

      {/* Bottom-right: neon diamond */}
      <svg
        className="absolute bottom-24 right-10 w-12 h-12 opacity-[0.08]"
        viewBox="0 0 24 24"
        fill="none"
      >
        <path
          d="M12 0 L24 12 L12 24 L0 12Z"
          stroke="#e879f9"
          strokeWidth="1.5"
        />
        <path
          d="M12 4 L20 12 L12 20 L4 12Z"
          stroke="var(--theme-pokeball-fill, #06b6d4)"
          strokeWidth="1"
          opacity="0.5"
        />
        <circle cx="12" cy="12" r="2" fill="#e879f9" opacity="0.6" />
      </svg>

      {/* Mid-left: scan line dots */}
      <svg
        className="absolute top-1/2 left-3 w-4 h-20 opacity-[0.10] hidden md:block"
        viewBox="0 0 4 20"
        fill="var(--theme-pokeball-fill, #06b6d4)"
      >
        <rect x="0" y="0" width="4" height="2" />
        <rect x="0" y="4" width="4" height="1" opacity="0.5" />
        <rect x="0" y="7" width="4" height="2" />
        <rect x="0" y="11" width="4" height="1" opacity="0.5" />
        <rect x="0" y="14" width="4" height="2" />
        <rect x="0" y="18" width="4" height="2" opacity="0.5" />
      </svg>

      {/* Mid-right: vertical neon line */}
      <svg
        className="absolute top-1/3 right-3 w-2 h-24 opacity-[0.08] hidden md:block"
        viewBox="0 0 2 24"
        fill="#e879f9"
      >
        <rect x="0" y="0" width="2" height="24" opacity="0.4" />
        <rect x="0" y="4" width="2" height="4" />
        <rect x="0" y="14" width="2" height="6" />
      </svg>
    </>
  );
}

/* ───────────────────────────────────────────────
   Type-Chromatic — minimal dots, thin lines
   ─────────────────────────────────────────────── */
function TypeChromaticDecorations() {
  return (
    <>
      {/* Top-left: sparse dot cluster */}
      <svg
        className="absolute top-10 left-6 w-16 h-16 opacity-[0.06]"
        viewBox="0 0 32 32"
        fill="currentColor"
      >
        <circle cx="4" cy="4" r="1.5" />
        <circle cx="16" cy="4" r="1" opacity="0.5" />
        <circle cx="28" cy="8" r="1.5" />
        <circle cx="8" cy="16" r="1" opacity="0.5" />
        <circle cx="24" cy="20" r="1.5" />
        <circle cx="4" cy="28" r="1" opacity="0.5" />
        <circle cx="16" cy="28" r="1.5" />
      </svg>

      {/* Top-right: thin cross */}
      <svg
        className="absolute top-12 right-10 w-10 h-10 opacity-[0.05]"
        viewBox="0 0 20 20"
        fill="none"
        stroke="currentColor"
        strokeWidth="0.5"
      >
        <line x1="10" y1="0" x2="10" y2="20" />
        <line x1="0" y1="10" x2="20" y2="10" />
        <circle cx="10" cy="10" r="3" />
      </svg>

      {/* Bottom-right: minimal grid */}
      <svg
        className="absolute bottom-20 right-8 w-14 h-14 opacity-[0.04]"
        viewBox="0 0 28 28"
        fill="currentColor"
      >
        <circle cx="4" cy="4" r="1" />
        <circle cx="14" cy="4" r="1" />
        <circle cx="24" cy="4" r="1" />
        <circle cx="4" cy="14" r="1" />
        <circle cx="14" cy="14" r="1" />
        <circle cx="24" cy="14" r="1" />
        <circle cx="4" cy="24" r="1" />
        <circle cx="14" cy="24" r="1" />
        <circle cx="24" cy="24" r="1" />
      </svg>

      {/* Bottom-left: angular accent */}
      <svg
        className="absolute bottom-24 left-8 w-8 h-8 opacity-[0.05]"
        viewBox="0 0 16 16"
        fill="none"
        stroke="currentColor"
        strokeWidth="0.5"
      >
        <rect x="2" y="2" width="12" height="12" />
        <rect x="5" y="5" width="6" height="6" />
      </svg>
    </>
  );
}

export function ThemeDecorations() {
  const colorTheme = useStore((s) => s.colorTheme);

  return (
    <div className="absolute inset-0 overflow-hidden pointer-events-none" aria-hidden="true">
      {colorTheme === "warm-adventure" && <WarmAdventureDecorations />}
      {colorTheme === "classic-pokedex" && <ClassicPokedexDecorations />}
      {colorTheme === "neon-trainer" && <NeonTrainerDecorations />}
      {colorTheme === "type-chromatic" && <TypeChromaticDecorations />}
    </div>
  );
}
