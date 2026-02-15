import type { ColorTheme } from "@/lib/store/types";

export interface ThemeConfig {
  id: ColorTheme;
  name: string;
  description: string;
  pokeballFill: string;
  previewColors: {
    primary: string;
    secondary: string;
    accent: string;
    bg: string;
  };
}

export const THEME_CONFIGS: ThemeConfig[] = [
  {
    id: "warm-adventure",
    name: "Warm Adventure",
    description: "Cozy amber tones, earthy & nature-inspired",
    pokeballFill: "#c2410c",
    previewColors: {
      primary: "#c2410c",
      secondary: "#d97706",
      accent: "#92400e",
      bg: "#fffbeb",
    },
  },
  {
    id: "classic-pokedex",
    name: "Classic Pokedex",
    description: "Bold red & dark slate, clean & iconic",
    pokeballFill: "#DC2626",
    previewColors: {
      primary: "#DC2626",
      secondary: "#1e293b",
      accent: "#ef4444",
      bg: "#fef2f2",
    },
  },
  {
    id: "neon-trainer",
    name: "Neon Trainer",
    description: "Cyberpunk glow, cyan & magenta neon",
    pokeballFill: "#06b6d4",
    previewColors: {
      primary: "#06b6d4",
      secondary: "#a855f7",
      accent: "#e879f9",
      bg: "#f0f9ff",
    },
  },
  {
    id: "type-chromatic",
    name: "Type-Chromatic",
    description: "Minimal neutral chrome, types shine through",
    pokeballFill: "#71717a",
    previewColors: {
      primary: "#71717a",
      secondary: "#a1a1aa",
      accent: "#52525b",
      bg: "#fafafa",
    },
  },
];
