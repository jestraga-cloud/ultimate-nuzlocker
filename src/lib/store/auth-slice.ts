import type { StateCreator } from "zustand";
import type { AuthSlice } from "./types";

export const createAuthSlice: StateCreator<AuthSlice, [], [], AuthSlice> = (
  set
) => ({
  isGuest: true,
  userId: null,
  profileId: null,
  displayName: null,
  avatarUrl: null,

  setUser: (user) =>
    set(
      user
        ? {
            isGuest: false,
            userId: user.userId,
            profileId: user.profileId,
            displayName: user.displayName,
            avatarUrl: user.avatarUrl,
          }
        : {
            isGuest: true,
            userId: null,
            profileId: null,
            displayName: null,
            avatarUrl: null,
          }
    ),

  setGuest: () =>
    set({
      isGuest: true,
      userId: null,
      profileId: null,
      displayName: null,
      avatarUrl: null,
    }),
});
