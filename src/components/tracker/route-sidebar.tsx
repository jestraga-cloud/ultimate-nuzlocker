"use client";

import { useState, useMemo } from "react";
import type { Route } from "@/types/game";
import { ROUTE_TYPE_COLORS } from "@/types/game";
import type { RouteType } from "@/types/game";
import { Input } from "@/components/ui/input";
import { PokemonSprite } from "@/components/pokemon/pokemon-sprite";
import {
  Search,
  MapPin,
  Building2,
  Mountain,
  Waves,
  Home,
  Star,
  Check,
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
}

export function RouteSidebar({
  routes,
  selectedRouteId,
  onSelectRoute,
  visitedRoutes,
  caughtPokemonByRoute,
}: RouteSidebarProps) {
  const [search, setSearch] = useState("");

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

            return (
              <button
                key={route.id}
                onClick={() => onSelectRoute(route.id)}
                className={`w-full flex items-center gap-2.5 rounded-lg px-3 py-2.5 text-left text-sm transition-all ${
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
            );
          })}
        </div>
      </div>
    </div>
  );
}
