"use client";

import { useTheme } from "next-themes";
import { useEffect, useState, useCallback, useRef } from "react";
import Image from "next/image";

const ESPEON_SPRITE =
  "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/196.gif";
const UMBREON_SPRITE =
  "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/197.gif";

const STARS = [
  { left: "18%", top: "20%", delay: "0s", size: 2 },
  { left: "72%", top: "16%", delay: "0.5s", size: 1.5 },
  { left: "85%", top: "38%", delay: "1s", size: 2 },
  { left: "30%", top: "10%", delay: "1.5s", size: 1.5 },
  { left: "55%", top: "45%", delay: "0.7s", size: 1 },
];

export function ThemeToggle() {
  const { theme, setTheme } = useTheme();
  const [mounted, setMounted] = useState(false);
  const [transitioning, setTransitioning] = useState(false);
  const [reducedMotion, setReducedMotion] = useState(false);
  const timeoutRef = useRef<ReturnType<typeof setTimeout>>(undefined);

  useEffect(() => {
    setMounted(true);
    setReducedMotion(
      window.matchMedia("(prefers-reduced-motion: reduce)").matches
    );
    return () => {
      if (timeoutRef.current) clearTimeout(timeoutRef.current);
    };
  }, []);

  const isDark = theme === "dark";

  const toggle = useCallback(() => {
    if (transitioning) return;
    if (!reducedMotion) {
      setTransitioning(true);
      timeoutRef.current = setTimeout(() => setTransitioning(false), 650);
    }
    setTheme(isDark ? "light" : "dark");
  }, [isDark, transitioning, reducedMotion, setTheme]);

  if (!mounted) {
    return <div className="w-[120px] h-9 rounded-full bg-muted" />;
  }

  return (
    <button
      onClick={toggle}
      className={`dn-toggle group relative overflow-hidden w-[120px] h-9 rounded-full border-2 cursor-pointer select-none
        focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2
        active:scale-[0.97] ${isDark ? "border-indigo-500/40" : "border-amber-300/50"}`}
      style={{
        transition: "border-color 500ms, box-shadow 500ms, transform 100ms",
        boxShadow: isDark
          ? "4px 4px 0px 0px rgba(0,0,0,0.25), 0 0 12px 2px rgba(99,102,241,0.12)"
          : "4px 4px 0px 0px rgba(0,0,0,0.15)",
      }}
      aria-label={`Switch to ${isDark ? "light" : "dark"} mode`}
    >
      <span className="sr-only">Toggle theme</span>

      {/* ── Light sky (base layer) ── */}
      <div className="absolute inset-0 rounded-full bg-gradient-to-b from-sky-400 via-sky-200 to-amber-100" />

      {/* ── Dark sky (overlay with radial clip-path wipe) ── */}
      <div
        className="absolute inset-0 rounded-full bg-gradient-to-b from-slate-900 via-indigo-950 to-slate-800"
        style={{
          clipPath: isDark
            ? "circle(150% at 50% 20%)"
            : "circle(0% at 50% 20%)",
          transition: "clip-path 600ms ease-in-out",
        }}
      />

      {/* ── Ground ── */}
      <div
        className="absolute bottom-0 left-0 right-0 h-[8px] rounded-b-full"
        style={{
          background: isDark
            ? "linear-gradient(90deg, #14532d, #166534, #14532d)"
            : "linear-gradient(90deg, #4ade80, #86efac, #4ade80)",
          transition: "background 500ms",
        }}
      />

      {/* ── Sun ── */}
      <div
        className="absolute left-1/2 rounded-full bg-amber-400"
        style={{
          width: 8,
          height: 8,
          top: isDark ? -12 : 3,
          transform: "translateX(-50%)",
          opacity: isDark ? 0 : 1,
          boxShadow: isDark
            ? "none"
            : "0 0 6px 3px rgba(251,191,36,0.45)",
          transition: "top 500ms, opacity 400ms, box-shadow 400ms",
        }}
      />

      {/* ── Moon ── */}
      <div
        className="absolute left-1/2 rounded-full bg-slate-200"
        style={{
          width: 7,
          height: 7,
          top: isDark ? 4 : -12,
          transform: "translateX(-50%)",
          opacity: isDark ? 1 : 0,
          boxShadow: isDark
            ? "0 0 4px 2px rgba(199,210,254,0.45)"
            : "none",
          transition: "top 500ms, opacity 400ms, box-shadow 400ms",
        }}
      />

      {/* ── Stars ── */}
      {STARS.map((s, i) => (
        <div
          key={i}
          className="absolute rounded-full bg-white"
          style={{
            left: s.left,
            top: s.top,
            width: s.size,
            height: s.size,
            opacity: isDark ? 1 : 0,
            animation: isDark
              ? `dn-twinkle 2.5s ease-in-out ${s.delay} infinite`
              : "none",
            transition: "opacity 300ms",
          }}
        />
      ))}

      {/* ── Clouds ── */}
      <div
        className="absolute rounded-full"
        style={{
          width: 14,
          height: 4,
          top: 5,
          background: "rgba(255,255,255,0.65)",
          opacity: isDark ? 0 : 1,
          animation: !isDark ? "dn-cloud-drift 25s linear infinite" : "none",
          transition: "opacity 300ms",
        }}
      />
      <div
        className="absolute rounded-full"
        style={{
          width: 10,
          height: 3,
          top: 12,
          background: "rgba(255,255,255,0.45)",
          opacity: isDark ? 0 : 1,
          animation: !isDark
            ? "dn-cloud-drift 32s linear 8s infinite"
            : "none",
          transition: "opacity 300ms",
        }}
      />

      {/* ── Espeon (left side, flipped to face right) ── */}
      <div
        className={`absolute bottom-0 -left-1 z-10 ${
          transitioning ? "dn-nudge-right" : ""
        }`}
      >
        <div
          className="origin-bottom-left"
          style={{
            transform: isDark ? "scale(0.55)" : "scale(0.85)",
            filter: isDark
              ? "saturate(0.25) brightness(0.5)"
              : "drop-shadow(0 0 3px rgba(251,191,36,0.3))",
            opacity: isDark ? 0.4 : 1,
            transition: "transform 500ms, filter 500ms, opacity 500ms",
          }}
        >
          {/* scaleX wrapper (isolates flip from breathe animation) */}
          <div style={{ transform: "scaleX(-1)" }}>
            <Image
              src={ESPEON_SPRITE}
              alt="Espeon"
              width={44}
              height={44}
              className="pixel-sprite"
              style={{
                animation:
                  !isDark && !transitioning
                    ? "dn-breathe 3s ease-in-out infinite"
                    : "none",
              }}
              unoptimized
            />
          </div>
        </div>
      </div>

      {/* ── Umbreon (right side) ── */}
      <div
        className={`absolute bottom-0 right-0.5 z-10 ${
          transitioning ? "dn-nudge-left" : ""
        }`}
      >
        <div
          className="origin-bottom-right"
          style={{
            transform: isDark ? "scale(0.85)" : "scale(0.55)",
            filter: isDark
              ? "drop-shadow(0 0 4px rgba(250,204,21,0.35))"
              : "saturate(0.25) brightness(0.5)",
            opacity: isDark ? 1 : 0.4,
            transition: "transform 500ms, filter 500ms, opacity 500ms",
          }}
        >
          <Image
            src={UMBREON_SPRITE}
            alt="Umbreon"
            width={30}
            height={30}
            className="pixel-sprite"
            style={{
              animation:
                isDark && !transitioning
                  ? "dn-breathe 3s ease-in-out infinite"
                  : "none",
            }}
            unoptimized
          />
        </div>
      </div>

      {/* ── Transition flash (starburst at center when sprites meet) ── */}
      {transitioning && (
        <div
          className="absolute z-20 rounded-full bg-white pointer-events-none"
          style={{
            width: 6,
            height: 6,
            left: "50%",
            top: "50%",
            marginLeft: -3,
            marginTop: -3,
            animation: "dn-flash 600ms ease-out forwards",
          }}
        />
      )}
    </button>
  );
}
