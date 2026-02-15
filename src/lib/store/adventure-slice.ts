import type { StateCreator } from "zustand";
import type {
  AdventureSlice,
  LocalAdventure,
  LocalCatch,
  LocalRouteProgress,
} from "./types";

export const createAdventureSlice: StateCreator<
  AdventureSlice,
  [],
  [],
  AdventureSlice
> = (set, get) => ({
  adventures: {},
  catches: {},
  routeProgress: {},

  createAdventure: (adventure: LocalAdventure) =>
    set((state) => ({
      adventures: { ...state.adventures, [adventure.id]: adventure },
      catches: { ...state.catches, [adventure.id]: [] },
      routeProgress: { ...state.routeProgress, [adventure.id]: {} },
    })),

  updateAdventure: (id: string, updates: Partial<LocalAdventure>) =>
    set((state) => ({
      adventures: {
        ...state.adventures,
        [id]: { ...state.adventures[id], ...updates },
      },
    })),

  deleteAdventure: (id: string) =>
    set((state) => {
      const { [id]: _adventure, ...remainingAdventures } = state.adventures;
      const { [id]: _catches, ...remainingCatches } = state.catches;
      const { [id]: _progress, ...remainingProgress } = state.routeProgress;
      return {
        adventures: remainingAdventures,
        catches: remainingCatches,
        routeProgress: remainingProgress,
      };
    }),

  addCatch: (c: LocalCatch) =>
    set((state) => ({
      catches: {
        ...state.catches,
        [c.adventureId]: [...(state.catches[c.adventureId] || []), c],
      },
    })),

  updateCatch: (
    adventureId: string,
    catchId: string,
    updates: Partial<LocalCatch>
  ) =>
    set((state) => ({
      catches: {
        ...state.catches,
        [adventureId]: (state.catches[adventureId] || []).map((c) =>
          c.id === catchId ? { ...c, ...updates } : c
        ),
      },
    })),

  removeCatch: (adventureId: string, catchId: string) =>
    set((state) => ({
      catches: {
        ...state.catches,
        [adventureId]: (state.catches[adventureId] || []).filter(
          (c) => c.id !== catchId
        ),
      },
    })),

  evolvePokemon: (
    adventureId: string,
    catchId: string,
    newDexId: number
  ) =>
    set((state) => ({
      catches: {
        ...state.catches,
        [adventureId]: (state.catches[adventureId] || []).map((c) =>
          c.id === catchId
            ? { ...c, currentEvolutionDexId: newDexId }
            : c
        ),
      },
    })),

  markDead: (adventureId: string, catchId: string, details?: string) =>
    set((state) => ({
      catches: {
        ...state.catches,
        [adventureId]: (state.catches[adventureId] || []).map((c) =>
          c.id === catchId
            ? {
                ...c,
                status: "dead" as const,
                diedAt: new Date().toISOString(),
                deathDetails: details || null,
              }
            : c
        ),
      },
    })),

  setRouteVisited: (
    adventureId: string,
    routeId: string,
    visited: boolean
  ) =>
    set((state) => ({
      routeProgress: {
        ...state.routeProgress,
        [adventureId]: {
          ...(state.routeProgress[adventureId] || {}),
          [routeId]: {
            ...(state.routeProgress[adventureId]?.[routeId] || {
              adventureId,
              routeId,
              encounterUsed: false,
              notes: null,
            }),
            visited,
          },
        },
      },
    })),

  setEncounterUsed: (
    adventureId: string,
    routeId: string,
    used: boolean
  ) =>
    set((state) => ({
      routeProgress: {
        ...state.routeProgress,
        [adventureId]: {
          ...(state.routeProgress[adventureId] || {}),
          [routeId]: {
            ...(state.routeProgress[adventureId]?.[routeId] || {
              adventureId,
              routeId,
              visited: true,
              notes: null,
            }),
            encounterUsed: used,
          },
        },
      },
    })),

  getAdventuresForSync: () => {
    const state = get();
    const adventures = Object.values(state.adventures);
    const catches = Object.values(state.catches).flat();
    const progress = Object.values(state.routeProgress).flatMap((rp) =>
      Object.values(rp)
    );
    return { adventures, catches, progress };
  },

  clearLocalData: () =>
    set({
      adventures: {},
      catches: {},
      routeProgress: {},
    }),
});
