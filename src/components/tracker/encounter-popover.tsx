"use client";

import { useState } from "react";
import type { Encounter } from "@/types/game";
import { TypeBadge } from "@/components/pokemon/type-badge";
import { Button } from "@/components/ui/button";
import { Info } from "lucide-react";
import {
  Popover,
  PopoverTrigger,
  PopoverContent,
} from "@/components/ui/popover";
import { TYPE_COLORS } from "./encounter-shared";

/**
 * Popover design variants:
 *   "glass"   — Glass-Accent: frosted glass + type-colored glow border
 *   "neutral" — Neutral-Depth: solid dark container + type accent stripe & radial aura
 *   "dual"    — Dual-Tone: desaturated type background + vibrant type interactive elements
 */
export type PopoverVariant = "glass" | "neutral" | "dual";

interface EncounterPopoverProps {
  encounter: Encounter;
  pokemonName: string;
  types: string[];
  onCaught: () => void;
  onMissed: () => void;
  onInfo: () => void;
  children: React.ReactNode;
  variant?: PopoverVariant;
}

// ── Color Helpers ──────────────────────────────────────────────

function hexToRgb(hex: string): [number, number, number] {
  const result = /^#?([a-f\d]{2})([a-f\d]{2})([a-f\d]{2})$/i.exec(hex);
  return result
    ? [parseInt(result[1], 16), parseInt(result[2], 16), parseInt(result[3], 16)]
    : [168, 168, 120];
}

function rgba(hex: string, alpha: number): string {
  const [r, g, b] = hexToRgb(hex);
  return `rgba(${r}, ${g}, ${b}, ${alpha})`;
}

/** Returns white or dark text depending on background luminance (WCAG) */
function contrastText(hex: string): string {
  const [r, g, b] = hexToRgb(hex);
  const luminance = (0.299 * r + 0.587 * g + 0.114 * b) / 255;
  return luminance > 0.55 ? "#0f0f13" : "#ffffff";
}

// ── Shared Sub-components ──────────────────────────────────────

function PopoverName({ name }: { name: string }) {
  return (
    <p
      className="text-[10px] font-bold text-center text-white/90"
      style={{
        fontFamily: "'Press Start 2P', monospace",
        textShadow: "0 1px 4px rgba(0,0,0,0.6)",
      }}
    >
      {name}
    </p>
  );
}

function TypePills({
  types,
  pillBg,
  pillBorder,
}: {
  types: string[];
  pillBg: (tc: string) => string;
  pillBorder: (tc: string) => string;
}) {
  return (
    <div className="flex gap-1.5 justify-center mt-1.5">
      {types.map((t) => {
        const tc = TYPE_COLORS[t] || "#A8A878";
        return (
          <span
            key={t}
            className="inline-flex rounded-full px-1 py-0.5"
            style={{ background: pillBg(tc), border: `1px solid ${pillBorder(tc)}` }}
          >
            <TypeBadge type={t} size="sm" />
          </span>
        );
      })}
    </div>
  );
}

function ActionButtons({
  onCaught,
  onMissed,
  onInfo,
  setOpen,
  caughtStyle,
}: {
  onCaught: () => void;
  onMissed: () => void;
  onInfo: () => void;
  setOpen: (v: boolean) => void;
  caughtStyle?: React.CSSProperties;
}) {
  return (
    <div className="p-2.5 flex flex-col gap-2">
      <div className="flex gap-2">
        <Button
          variant="outline"
          size="sm"
          className="flex-1 text-xs h-9 font-semibold border-red-500/40 bg-red-500/10 text-red-400 hover:bg-red-500/25 hover:text-red-300 hover:border-red-500/60"
          onClick={() => { setOpen(false); onMissed(); }}
        >
          Missed
        </Button>
        <Button
          size="sm"
          className="flex-1 text-xs h-9 font-semibold bg-green-600 hover:bg-green-500 text-white shadow-md"
          style={caughtStyle}
          onClick={() => { setOpen(false); onCaught(); }}
        >
          Caught!
        </Button>
      </div>
      <Button
        variant="ghost"
        size="sm"
        className="w-full text-[10px] h-6 text-zinc-400 hover:text-zinc-200 hover:bg-white/10"
        onClick={() => { setOpen(false); onInfo(); }}
      >
        <Info className="h-3 w-3 mr-1" />
        View Stats & Info
      </Button>
    </div>
  );
}

// ── Main Component ─────────────────────────────────────────────

export function EncounterPopover({
  encounter,
  pokemonName,
  types,
  onCaught,
  onMissed,
  onInfo,
  children,
  variant = "glass",
}: EncounterPopoverProps) {
  const [open, setOpen] = useState(false);
  const primaryType = types[0] || "normal";
  const typeColor = TYPE_COLORS[primaryType] || "#A8A878";

  const sharedContentProps = {
    align: "center" as const,
    sideOffset: 8,
    collisionPadding: 16,
    className: "w-[220px] p-0 overflow-hidden border-0",
  };

  // ── 1. GLASS-ACCENT ──────────────────────────────────────────
  //
  // Frosted dark glass with a luminous type-colored border glow.
  // The type identity lives in the edges and header wash — never
  // as a solid fill — so it elevates above any background.
  //
  // Key CSS:
  //   backdrop-filter: blur(20px) saturate(180%)
  //   border: 1px solid typeColor/30%
  //   box-shadow: 0 0 24px typeColor/12%  (outer glow)
  //              + depth shadow stack
  //   header: linear-gradient(180deg, typeColor/15% → transparent)
  //   divider: horizontal gradient stroke in typeColor

  if (variant === "glass") {
    return (
      <Popover open={open} onOpenChange={setOpen}>
        <PopoverTrigger asChild>{children}</PopoverTrigger>
        <PopoverContent
          {...sharedContentProps}
          style={{
            borderRadius: "14px",
            background: "rgba(10, 10, 15, 0.82)",
            backdropFilter: "blur(20px) saturate(180%)",
            WebkitBackdropFilter: "blur(20px) saturate(180%)",
            border: `1px solid ${rgba(typeColor, 0.3)}`,
            boxShadow: [
              `0 0 24px 4px ${rgba(typeColor, 0.12)}`,
              `0 8px 32px rgba(0, 0, 0, 0.5)`,
              `inset 0 1px 0 rgba(255, 255, 255, 0.06)`,
            ].join(", "),
          }}
        >
          {/* Gradient wash header — type tint fading to transparent */}
          <div
            className="px-3 py-2.5"
            style={{
              background: `linear-gradient(180deg, ${rgba(typeColor, 0.15)} 0%, transparent 100%)`,
            }}
          >
            <PopoverName name={pokemonName} />
            <TypePills
              types={types}
              pillBg={(tc) => rgba(tc, 0.2)}
              pillBorder={(tc) => rgba(tc, 0.3)}
            />
          </div>

          {/* Glowing type-colored divider */}
          <div
            className="h-px mx-2"
            style={{
              background: `linear-gradient(90deg, transparent, ${rgba(typeColor, 0.4)}, transparent)`,
            }}
          />

          <ActionButtons
            onCaught={onCaught}
            onMissed={onMissed}
            onInfo={onInfo}
            setOpen={setOpen}
            caughtStyle={{
              background: `linear-gradient(135deg, ${typeColor}, ${rgba(typeColor, 0.75)})`,
              boxShadow: `0 4px 14px ${rgba(typeColor, 0.35)}`,
              color: contrastText(typeColor),
            }}
          />
        </PopoverContent>
      </Popover>
    );
  }

  // ── 2. NEUTRAL-DEPTH ──────────────────────────────────────────
  //
  // Solid dark container with extreme elevation via stacked shadows.
  // Type color only appears in two places: a bold accent stripe at
  // the top, and a subtle radial aura behind the name text.
  // Maximum readability and contrast.
  //
  // Key CSS:
  //   background: #0f0f13 (near-black)
  //   border-top: 2.5px solid typeColor (accent stripe)
  //   border: 1px solid white/8%
  //   box-shadow: 3-layer depth stack for "floating card" feel
  //   header: radial-gradient(typeColor/12% → transparent) for aura

  if (variant === "neutral") {
    return (
      <Popover open={open} onOpenChange={setOpen}>
        <PopoverTrigger asChild>{children}</PopoverTrigger>
        <PopoverContent
          {...sharedContentProps}
          style={{
            borderRadius: "14px",
            background: "#0f0f13",
            borderWidth: "1px",
            borderStyle: "solid",
            borderColor: "rgba(255, 255, 255, 0.08)",
            borderTopWidth: "2.5px",
            borderTopColor: typeColor,
            boxShadow: [
              `0 2px 4px rgba(0, 0, 0, 0.3)`,
              `0 8px 24px rgba(0, 0, 0, 0.4)`,
              `0 20px 48px rgba(0, 0, 0, 0.25)`,
            ].join(", "),
          }}
        >
          {/* Header with radial type aura */}
          <div
            className="px-3 py-2.5"
            style={{
              background: `radial-gradient(ellipse at center top, ${rgba(typeColor, 0.12)} 0%, transparent 70%)`,
            }}
          >
            <PopoverName name={pokemonName} />
            <TypePills
              types={types}
              pillBg={() => "rgba(255, 255, 255, 0.05)"}
              pillBorder={() => "rgba(255, 255, 255, 0.1)"}
            />
          </div>

          {/* Subtle neutral divider */}
          <div className="h-px mx-1 bg-white/5" />

          <ActionButtons
            onCaught={onCaught}
            onMissed={onMissed}
            onInfo={onInfo}
            setOpen={setOpen}
          />
        </PopoverContent>
      </Popover>
    );
  }

  // ── 3. DUAL-TONE ──────────────────────────────────────────────
  //
  // The entire container is tinted with a heavily desaturated version
  // of the type color (10% opacity over dark base). The vibrant type
  // color is reserved for interactive elements — the "Caught!" button
  // becomes the hero, popping against the muted background.
  //
  // Key CSS:
  //   background: linear-gradient(typeColor/10% → #111113)
  //   border: 1px solid typeColor/25%
  //   "Caught!" button: backgroundColor = typeColor (full vibrant)
  //   "Missed" button: neutral white/5% (de-emphasized)
  //   divider: typeColor/20%

  return (
    <Popover open={open} onOpenChange={setOpen}>
      <PopoverTrigger asChild>{children}</PopoverTrigger>
      <PopoverContent
        {...sharedContentProps}
        style={{
          borderRadius: "14px",
          background: `linear-gradient(180deg, ${rgba(typeColor, 0.1)} 0%, #111113 60%)`,
          border: `1px solid ${rgba(typeColor, 0.25)}`,
          boxShadow: [
            `0 4px 16px rgba(0, 0, 0, 0.45)`,
            `0 0 0 1px ${rgba(typeColor, 0.08)}`,
          ].join(", "),
        }}
      >
        {/* Header */}
        <div className="px-3 py-2.5">
          <PopoverName name={pokemonName} />
          <TypePills
            types={types}
            pillBg={(tc) => rgba(tc, 0.15)}
            pillBorder={(tc) => rgba(tc, 0.25)}
          />
        </div>

        <div
          className="h-px mx-2"
          style={{ background: rgba(typeColor, 0.2) }}
        />

        {/* "Caught!" uses vibrant type color; "Missed" is neutral */}
        <div className="p-2.5 flex flex-col gap-2">
          <div className="flex gap-2">
            <Button
              variant="outline"
              size="sm"
              className="flex-1 text-xs h-9 font-semibold border-white/10 bg-white/5 text-zinc-300 hover:bg-white/10 hover:text-white"
              onClick={() => { setOpen(false); onMissed(); }}
            >
              Missed
            </Button>
            <Button
              size="sm"
              className="flex-1 text-xs h-9 font-semibold shadow-lg"
              style={{
                backgroundColor: typeColor,
                color: contrastText(typeColor),
                boxShadow: `0 2px 10px ${rgba(typeColor, 0.4)}`,
              }}
              onClick={() => { setOpen(false); onCaught(); }}
            >
              Caught!
            </Button>
          </div>
          <Button
            variant="ghost"
            size="sm"
            className="w-full text-[10px] h-6 text-zinc-400 hover:text-zinc-200 hover:bg-white/10"
            onClick={() => { setOpen(false); onInfo(); }}
          >
            <Info className="h-3 w-3 mr-1" />
            View Stats & Info
          </Button>
        </div>
      </PopoverContent>
    </Popover>
  );
}
