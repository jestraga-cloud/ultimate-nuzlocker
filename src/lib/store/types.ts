import type {
  AdventureStatus,
  CatchStatus,
} from "@/types/game";

export type ColorTheme = "warm-adventure" | "classic-pokedex" | "neon-trainer" | "type-chromatic";
export type DetailPaneMode = "collapsed" | "split" | "fullscreen";

export interface LocalAdventure {
  id: string;
  gameId: string;
  gameName: string;
  gameSlug: string;
  gameGeneration: number | null;
  gameSpriteUrl: string | null;
  name: string;
  status: AdventureStatus;
  rules: Record<string, boolean>;
  createdAt: string;
}

export interface LocalCatch {
  id: string;
  adventureId: string;
  routeId: string;
  pokemonDexId: number;
  currentEvolutionDexId: number | null;
  nickname: string | null;
  status: CatchStatus;
  level: number | null;
  nature: string | null;
  ability: string | null;
  heldItem: string | null;
  notes: string | null;
  caughtAt: string;
  diedAt: string | null;
  deathDetails: string | null;
}

export interface LocalRouteProgress {
  adventureId: string;
  routeId: string;
  visited: boolean;
  encounterUsed: boolean;
  notes: string | null;
}

export interface AdventureSlice {
  adventures: Record<string, LocalAdventure>;
  catches: Record<string, LocalCatch[]>;
  routeProgress: Record<string, Record<string, LocalRouteProgress>>;

  createAdventure: (adventure: LocalAdventure) => void;
  updateAdventure: (id: string, updates: Partial<LocalAdventure>) => void;
  deleteAdventure: (id: string) => void;

  addCatch: (c: LocalCatch) => void;
  updateCatch: (
    adventureId: string,
    catchId: string,
    updates: Partial<LocalCatch>
  ) => void;
  removeCatch: (adventureId: string, catchId: string) => void;
  evolvePokemon: (
    adventureId: string,
    catchId: string,
    newDexId: number
  ) => void;
  markDead: (
    adventureId: string,
    catchId: string,
    details?: string
  ) => void;

  setRouteVisited: (
    adventureId: string,
    routeId: string,
    visited: boolean
  ) => void;
  setEncounterUsed: (
    adventureId: string,
    routeId: string,
    used: boolean
  ) => void;

  getAdventuresForSync: () => {
    adventures: LocalAdventure[];
    catches: LocalCatch[];
    progress: LocalRouteProgress[];
  };
  clearLocalData: () => void;
}

export interface AuthSlice {
  isGuest: boolean;
  userId: string | null;
  profileId: string | null;
  displayName: string | null;
  avatarUrl: string | null;

  setUser: (
    user: {
      userId: string;
      profileId: string;
      displayName: string;
      avatarUrl: string;
    } | null
  ) => void;
  setGuest: () => void;
}

export interface UISlice {
  selectedRouteId: string | null;
  sidebarOpen: boolean;
  expandedSections: Record<string, boolean>;
  colorTheme: ColorTheme;
  detailPaneMode: DetailPaneMode;

  setSelectedRoute: (routeId: string | null) => void;
  toggleSidebar: () => void;
  setSidebarOpen: (open: boolean) => void;
  toggleSection: (sectionId: string) => void;
  setColorTheme: (theme: ColorTheme) => void;
  setDetailPaneMode: (mode: DetailPaneMode) => void;
}
