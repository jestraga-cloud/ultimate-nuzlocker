"use client";

import { useStore } from "@/lib/store";
import { THEME_CONFIGS } from "@/lib/theme-config";
import { Check } from "lucide-react";

export function ThemePicker() {
  const colorTheme = useStore((s) => s.colorTheme);
  const setColorTheme = useStore((s) => s.setColorTheme);

  return (
    <div className="grid grid-cols-1 sm:grid-cols-2 gap-4">
      {THEME_CONFIGS.map((theme) => {
        const isActive = colorTheme === theme.id;

        return (
          <button
            key={theme.id}
            onClick={() => setColorTheme(theme.id)}
            className={`relative text-left rounded-xl border-2 p-4 transition-all hover:shadow-md ${
              isActive
                ? "border-primary shadow-md ring-1 ring-primary/20"
                : "border-border hover:border-primary/40"
            }`}
          >
            {/* Active indicator */}
            {isActive && (
              <div className="absolute top-3 right-3 w-6 h-6 rounded-full bg-primary flex items-center justify-center">
                <Check className="h-3.5 w-3.5 text-primary-foreground" />
              </div>
            )}

            {/* Pokeball preview */}
            <div className="mb-3">
              <svg viewBox="0 0 100 100" className="w-10 h-10">
                <circle cx="50" cy="50" r="48" fill="white" stroke="currentColor" strokeWidth="4" />
                <path
                  d="M 2 50 A 48 48 0 0 1 98 50"
                  fill={theme.pokeballFill}
                  stroke="currentColor"
                  strokeWidth="4"
                />
                <rect x="2" y="48" width="96" height="6" fill="currentColor" />
                <circle cx="50" cy="50" r="14" fill="white" stroke="currentColor" strokeWidth="4" />
                <circle cx="50" cy="50" r="8" fill="white" stroke="currentColor" strokeWidth="3" />
              </svg>
            </div>

            {/* Theme name */}
            <h3
              className="text-[10px] font-bold mb-1"
              style={{ fontFamily: "'Press Start 2P', monospace" }}
            >
              {theme.name}
            </h3>

            {/* Description */}
            <p className="text-xs text-muted-foreground mb-3">
              {theme.description}
            </p>

            {/* Color palette preview */}
            <div className="flex items-center gap-1.5">
              {Object.values(theme.previewColors).map((color, i) => (
                <div
                  key={i}
                  className="w-6 h-6 rounded-full border border-border/50"
                  style={{ backgroundColor: color }}
                />
              ))}
            </div>
          </button>
        );
      })}
    </div>
  );
}
