"use client";

import { useState, useMemo } from "react";
import type { Route, Encounter } from "@/types/game";
import { ROUTE_TYPE_COLORS } from "@/types/game";
import type { RouteType } from "@/types/game";
import type { EncounterState } from "./encounter-shared";
import { TYPE_COLORS } from "./encounter-shared";
import { Input } from "@/components/ui/input";
import { Button } from "@/components/ui/button";
import { PokemonSprite } from "@/components/pokemon/pokemon-sprite";
import {
  Popover,
  PopoverContent,
  PopoverTrigger,
} from "@/components/ui/popover";
import {
  Search,
  MapPin,
  Building2,
  Mountain,
  Waves,
  Home,
  Star,
  Check,
  ChevronRight,
  X,
} from "lucide-react";

const ROUTE_ICONS: Record<string, React.ElementType> = {
  route: MapPin,
  city: Building2,
  cave: Mountain,
  water: Waves,
  building: Home,
  special: Star,
};

interface RouteSidebarProps {
  routes: Route[];
  selectedRouteId: string | null;
  onSelectRoute: (routeId: string) => void;
  visitedRoutes: Set<string>;
  caughtPokemonByRoute: Record<string, { dexId: number; name: string }>;
  encountersByRoute?: Record<string, Encounter[]>;
  pokemonNames?: Record<number, { name: string; types: string[] }>;
  onQuickCatch?: (routeId: string, encounter: Encounter) => void;
  onQuickMiss?: (routeId: string) => void;
  routeEncounterStates?: Record<string, EncounterState>;
}

export function RouteSidebar({
  routes,
  selectedRouteId,
  onSelectRoute,
  visitedRoutes,
  caughtPokemonByRoute,
  encountersByRoute,
  pokemonNames,
  onQuickCatch,
  onQuickMiss,
  routeEncounterStates,
}: RouteSidebarProps) {
  const [search, setSearch] = useState("");
  const [openPopoverRouteId, setOpenPopoverRouteId] = useState<string | null>(null);

  const filteredRoutes = useMemo(() => {
    if (!search) return routes;
    const q = search.toLowerCase();
    return routes.filter((r) => r.name.toLowerCase().includes(q));
  }, [routes, search]);

  return (
    <div className="flex flex-col h-full">
      {/* Search */}
      <div className="p-3 border-b">
        <div className="relative">
          <Search className="absolute left-2.5 top-1/2 -translate-y-1/2 h-3.5 w-3.5 text-muted-foreground" />
          <Input
            placeholder="Search routes..."
            value={search}
            onChange={(e) => setSearch(e.target.value)}
            className="pl-8 h-8 text-xs"
          />
        </div>
      </div>

      {/* Route list */}
      <div className="flex-1 overflow-y-auto custom-scrollbar">
        <div className="p-2 space-y-0.5">
          {filteredRoutes.map((route) => {
            const Icon = ROUTE_ICONS[route.routeType] || MapPin;
            const isSelected = route.id === selectedRouteId;
            const isVisited = visitedRoutes.has(route.id);
            const caught = caughtPokemonByRoute[route.id];
            const routeColor = ROUTE_TYPE_COLORS[route.routeType as RouteType] || "#6b7280";
            const encounterState = routeEncounterStates?.[route.id] ?? "null";
            const encounters = encountersByRoute?.[route.id] || [];
            const hasQuickCatch = encounterState === "null" && encounters.length > 0 && onQuickCatch;

            return (
              <div key={route.id} className="group flex items-center gap-0.5">
                {/* Main route row — quick-catch popover or direct detail open */}
                {hasQuickCatch ? (
                  <Popover
                    open={openPopoverRouteId === route.id}
                    onOpenChange={(open) => setOpenPopoverRouteId(open ? route.id : null)}
                  >
                    <PopoverTrigger asChild>
                      <button
                        className={`flex-1 flex items-center gap-2.5 rounded-lg px-3 py-2 text-left text-sm transition-all ${
                          isSelected
                            ? "bg-primary text-primary-foreground pixel-glow-blue"
                            : "hover:bg-accent"
                        }`}
                      >
                        <Icon
                          className="h-4 w-4 flex-shrink-0"
                          style={{ color: isSelected ? "currentColor" : routeColor }}
                        />
                        <span className="flex-1 truncate text-xs">{route.name}</span>
                        <div className="flex items-center gap-1 flex-shrink-0">
                          {isVisited && !isSelected && !caught && (
                            <Check className="h-3.5 w-3.5 text-green-500" />
                          )}
                        </div>
                      </button>
                    </PopoverTrigger>
                    <PopoverContent side="right" align="start" className="w-56 p-0" sideOffset={8}>
                      <QuickCatchPopover
                        routeName={route.name}
                        encounters={encounters}
                        pokemonNames={pokemonNames || {}}
                        onCatch={(encounter) => {
                          setOpenPopoverRouteId(null);
                          onQuickCatch(route.id, encounter);
                        }}
                        onMiss={() => {
                          setOpenPopoverRouteId(null);
                          onQuickMiss?.(route.id);
                        }}
                        onViewDetails={() => {
                          setOpenPopoverRouteId(null);
                          onSelectRoute(route.id);
                        }}
                      />
                    </PopoverContent>
                  </Popover>
                ) : (
                  <button
                    onClick={() => onSelectRoute(route.id)}
                    className={`flex-1 flex items-center gap-2.5 rounded-lg px-3 py-2 text-left text-sm transition-all ${
                      isSelected
                        ? "bg-primary text-primary-foreground pixel-glow-blue"
                        : "hover:bg-accent"
                    }`}
                  >
                    <Icon
                      className="h-4 w-4 flex-shrink-0"
                      style={{ color: isSelected ? "currentColor" : routeColor }}
                    />
                    <span className="flex-1 truncate text-xs">{route.name}</span>
                    <div className="flex items-center gap-1 flex-shrink-0">
                      {caught && (
                        <PokemonSprite
                          dexId={caught.dexId}
                          size="xs"
                          name={caught.name}
                        />
                      )}
                      {isVisited && !isSelected && !caught && (
                        <Check className="h-3.5 w-3.5 text-green-500" />
                      )}
                    </div>
                  </button>
                )}

                {/* Details button — always available */}
                <button
                  onClick={() => onSelectRoute(route.id)}
                  className={`p-1.5 rounded-md transition-all flex-shrink-0 ${
                    isSelected
                      ? "text-primary-foreground/70 hover:text-primary-foreground"
                      : "opacity-0 group-hover:opacity-100 text-muted-foreground hover:text-foreground hover:bg-accent"
                  }`}
                  title="View route details"
                >
                  <ChevronRight className="h-3.5 w-3.5" />
                </button>
              </div>
            );
          })}
        </div>
      </div>
    </div>
  );
}

function QuickCatchPopover({
  routeName,
  encounters,
  pokemonNames,
  onCatch,
  onMiss,
  onViewDetails,
}: {
  routeName: string;
  encounters: Encounter[];
  pokemonNames: Record<number, { name: string; types: string[] }>;
  onCatch: (encounter: Encounter) => void;
  onMiss: () => void;
  onViewDetails: () => void;
}) {
  // Deduplicate encounters by dex ID (show each Pokemon once)
  const uniqueEncounters = useMemo(() => {
    const seen = new Set<number>();
    return encounters.filter((enc) => {
      if (seen.has(enc.pokemonDexId)) return false;
      seen.add(enc.pokemonDexId);
      return true;
    });
  }, [encounters]);

  return (
    <div>
      <div className="px-3 py-2 border-b">
        <p className="text-[10px] font-bold uppercase tracking-wider text-muted-foreground">
          Quick Catch — {routeName}
        </p>
      </div>

      <div className="max-h-56 overflow-y-auto custom-scrollbar p-1.5 space-y-0.5">
        {uniqueEncounters.map((enc) => {
          const pokemon = pokemonNames[enc.pokemonDexId];
          const name = pokemon?.name || `#${enc.pokemonDexId}`;
          const types = pokemon?.types || [];

          return (
            <button
              key={enc.id}
              onClick={() => onCatch(enc)}
              className="flex items-center gap-2 w-full px-2 py-1.5 rounded-md hover:bg-accent transition-colors text-left"
            >
              <PokemonSprite dexId={enc.pokemonDexId} size="xs" name={name} />
              <div className="flex-1 min-w-0">
                <span className="text-[11px] font-medium truncate block">{name}</span>
                <div className="flex gap-1 mt-0.5">
                  {types.map((t) => (
                    <span
                      key={t}
                      className="w-2.5 h-2.5 rounded-full inline-block"
                      style={{ backgroundColor: TYPE_COLORS[t] || "#A8A878" }}
                      title={t}
                    />
                  ))}
                </div>
              </div>
              {enc.encounterRate !== null && (
                <span className="text-[9px] text-muted-foreground font-mono tabular-nums flex-shrink-0">
                  {enc.encounterRate}%
                </span>
              )}
            </button>
          );
        })}
      </div>

      <div className="border-t p-1.5 space-y-1">
        <Button
          variant="ghost"
          size="sm"
          className="w-full text-[10px] h-7 text-destructive hover:text-destructive"
          onClick={onMiss}
        >
          <X className="h-3 w-3 mr-1" />
          Missed Encounter
        </Button>
        <Button
          variant="ghost"
          size="sm"
          className="w-full text-[10px] h-7"
          onClick={onViewDetails}
        >
          <ChevronRight className="h-3 w-3 mr-1" />
          View Full Details
        </Button>
      </div>
    </div>
  );
}
