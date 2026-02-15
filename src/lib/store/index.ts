import { create } from "zustand";
import { persist, createJSONStorage } from "zustand/middleware";
import { createAdventureSlice } from "./adventure-slice";
import { createAuthSlice } from "./auth-slice";
import { createUISlice } from "./ui-slice";
import type { AdventureSlice, AuthSlice, UISlice } from "./types";

export type StoreState = AdventureSlice & AuthSlice & UISlice;

export const useStore = create<StoreState>()(
  persist(
    (...args) => ({
      ...createAdventureSlice(...args),
      ...createAuthSlice(...args),
      ...createUISlice(...args),
    }),
    {
      name: "ultimate-nuzlocker-store",
      storage: createJSONStorage(() => localStorage),
      partialize: (state) => ({
        adventures: state.adventures,
        catches: state.catches,
        routeProgress: state.routeProgress,
        isGuest: state.isGuest,
        userId: state.userId,
        profileId: state.profileId,
        displayName: state.displayName,
        avatarUrl: state.avatarUrl,
        colorTheme: state.colorTheme,
      }),
      version: 2,
      migrate: (persisted: unknown, version: number) => {
        const state = persisted as Record<string, unknown>;
        if (version < 2) {
          return { ...state, colorTheme: "warm-adventure" };
        }
        return state;
      },
    }
  )
);
