import type { StateCreator } from "zustand";
import type { UISlice } from "./types";

export const createUISlice: StateCreator<UISlice, [], [], UISlice> = (
  set
) => ({
  selectedRouteId: null,
  sidebarOpen: true,
  expandedSections: {},
  colorTheme: "warm-adventure",
  detailPaneMode: "collapsed",

  setSelectedRoute: (routeId) => set({ selectedRouteId: routeId }),

  toggleSidebar: () =>
    set((state) => ({ sidebarOpen: !state.sidebarOpen })),

  setSidebarOpen: (open) => set({ sidebarOpen: open }),

  toggleSection: (sectionId) =>
    set((state) => ({
      expandedSections: {
        ...state.expandedSections,
        [sectionId]: !state.expandedSections[sectionId],
      },
    })),

  setColorTheme: (theme) => set({ colorTheme: theme }),
  setDetailPaneMode: (mode) => set({ detailPaneMode: mode }),
});
