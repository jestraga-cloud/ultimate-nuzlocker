# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Commands

```bash
npm run dev          # Next.js dev server on localhost:3000
npm run build        # Production build
npm run lint         # ESLint (flat config, Next.js + TypeScript rules)
```

### Data Pipeline (scripts/generate-game-data/)

```bash
cd scripts/generate-game-data
npx tsx src/index.ts --game <config-name> --num <migration-number>
npx tsx src/fetch-locations.ts <region-name>   # Fetch PokeAPI location areas
```

Config files live in `scripts/generate-game-data/src/configs/`. Each exports a `GameConfig` or `GameConfig[]` (for version pairs like Ruby/Sapphire). Output goes to `scripts/generate-game-data/output/` and must be copied to `supabase/migrations/`.

## Architecture

**Stack:** Next.js 16 (App Router) + React 19 + TypeScript 5 + Supabase (PostgreSQL) + Zustand 5 + Tailwind CSS 4 + shadcn/ui

**Core data flow:** Supabase holds static game data (routes, encounters, trainers). Zustand store with localStorage persistence holds user data (adventures, catches, route progress). Cloud sync to Supabase is optional — the app works fully offline in guest mode.

### Key Directories

- `src/app/` — Next.js pages. Main tracker page is `adventure/[id]/page.tsx`
- `src/lib/store/` — Zustand store split into 3 slices: `adventure-slice.ts` (catches, progress), `auth-slice.ts` (user/guest), `ui-slice.ts` (sidebar, theme, route selection). Persisted to localStorage with version migration.
- `src/lib/queries/` — Supabase queries for games, routes, adventures. Map snake_case DB rows to camelCase TypeScript types.
- `src/lib/pokeapi/client.ts` — PokeAPI wrapper with in-memory cache (1hr TTL). Generation-aware stat resolution using `past_stats`.
- `src/types/game.ts` — All game/route/encounter/trainer/adventure/catch type definitions and union types (`EncounterMethod`, `RouteType`, `BossType`, `CatchStatus`).
- `src/data/` — Boss trainer data files (structured TypeScript, used as reference data for the generation pipeline).
- `scripts/generate-game-data/` — Pipeline that fetches encounters from PokeAPI and generates SQL migration files.

### Database Schema

Static data tables: `games`, `routes`, `encounters`, `trainers`, `trainer_pokemon`, `route_items`, `pokemon_overrides`. User data tables: `profiles`, `adventures`, `catches`, `route_progress`. Schema defined in `supabase/migrations/00001_initial_schema.sql`. RLS policies in `00002_rls_policies.sql`.

Each game's data is a self-contained migration file (`0000X_*_complete.sql`) using bulk temp table pattern for encounters and DO blocks for trainers.

### Hydration Pattern

All client components accessing Zustand store must check `useStoreHydration()` before rendering store data to prevent SSR hydration mismatch.

### Supabase Optional

`isSupabaseConfigured()` in `lib/supabase/client.ts` gates all Supabase calls. The app degrades gracefully to guest-only mode without Supabase credentials.

## Data Pipeline Details

The generation pipeline at `scripts/generate-game-data/` works in 4 steps:

1. **Config** (`src/configs/*.ts`) — Define routes with PokeAPI location-area slugs, boss trainers with full teams
2. **Fetch** — PokeAPI `/location-area/{slug}` filtered by `version_details.version.name`. Disk cache in `.cache/`
3. **Map** — `encounter-mapper.ts` maps PokeAPI methods (walk, surf, old-rod, etc.) to our `EncounterMethod` union type
4. **Generate** — `sql-generator.ts` produces migration SQL using bulk temp table pattern

Version pairs (e.g., Ruby/Sapphire) export `GameConfig[]` and auto-increment migration numbers. PokeAPI lacks data for some games (notably ORAS), so configs can fall back to base game version names.

## Styling

- 4 color themes defined in `src/lib/theme-config.ts`, applied via CSS variables by `theme-applier.tsx`
- Pixel art aesthetic via custom CSS classes (`.pixel-panel`, `.pixel-border`, `.pixel-shadow`) in `src/styles/pixel-art.css`
- Pokemon type colors as Tailwind theme extensions (`--color-type-fire`, etc.)
- Fonts: Inter (body), Press Start 2P (pixel headings)
