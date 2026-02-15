"use client";

import type { RouteDetail as RouteDetailType } from "@/types/game";
import { ROUTE_TYPE_COLORS } from "@/types/game";
import { EncounterList } from "./encounter-list";
import { ItemList } from "./item-list";
import { TrainerList } from "./trainer-list";
import { Badge } from "@/components/ui/badge";
import { Button } from "@/components/ui/button";
import { Skeleton } from "@/components/ui/skeleton";
import {
  MapPin,
  Building2,
  Mountain,
  Waves,
  Home,
  Star,
  Check,
  CircleCheck,
} from "lucide-react";
import type { RouteType } from "@/types/game";

const ROUTE_ICON_MAP: Record<string, React.ElementType> = {
  route: MapPin,
  city: Building2,
  cave: Mountain,
  water: Waves,
  building: Home,
  special: Star,
};

interface RouteDetailProps {
  routeDetail: RouteDetailType | null;
  pokemonNames: Record<number, { name: string; types: string[] }>;
  isVisited: boolean;
  encounterUsed: boolean;
  onToggleVisited: () => void;
  onCatchPokemon: () => void;
  onPokemonClick?: (dexId: number) => void;
  loading?: boolean;
}

export function RouteDetail({
  routeDetail,
  pokemonNames,
  isVisited,
  encounterUsed,
  onToggleVisited,
  onCatchPokemon,
  onPokemonClick,
  loading,
}: RouteDetailProps) {
  if (loading) {
    return (
      <div className="p-4 md:p-6 space-y-4">
        <Skeleton className="h-8 w-48" />
        <Skeleton className="h-4 w-24" />
        <Skeleton className="h-32 w-full" />
        <Skeleton className="h-24 w-full" />
      </div>
    );
  }

  if (!routeDetail) {
    return (
      <div className="flex items-center justify-center h-full text-muted-foreground">
        <div className="text-center space-y-3">
          <MapPin className="h-16 w-16 mx-auto opacity-20" />
          <p className="text-sm">Select a route to view details</p>
        </div>
      </div>
    );
  }

  const { route, encounters, items, trainers } = routeDetail;
  const accentColor = ROUTE_TYPE_COLORS[route.routeType as RouteType] || "#6b7280";
  const RouteIcon = ROUTE_ICON_MAP[route.routeType] || MapPin;

  return (
    <div className="animate-slide-in-right">
      {/* Route type accent bar */}
      <div
        className="h-1.5 w-full"
        style={{ background: `linear-gradient(90deg, ${accentColor}, transparent)` }}
      />

      <div className="p-4 md:p-6 space-y-5">
        {/* Route header */}
        <div className="flex items-start justify-between gap-4">
          <div className="flex items-start gap-3">
            <div
              className="flex-shrink-0 w-10 h-10 rounded-lg flex items-center justify-center"
              style={{ backgroundColor: `${accentColor}15` }}
            >
              <RouteIcon
                className="h-5 w-5"
                style={{ color: accentColor }}
              />
            </div>
            <div className="space-y-1.5">
              <h2
                className="text-sm md:text-base text-primary"
                style={{ fontFamily: "'Press Start 2P', monospace" }}
              >
                {route.name}
              </h2>
              <div className="flex items-center gap-2">
                <Badge
                  variant="outline"
                  className="text-[10px] capitalize"
                  style={{ borderColor: `${accentColor}40`, color: accentColor }}
                >
                  {route.routeType}
                </Badge>
                {route.notes && (
                  <span className="text-xs text-muted-foreground">
                    {route.notes}
                  </span>
                )}
              </div>
            </div>
          </div>

          <div className="flex items-center gap-2 flex-shrink-0">
            <Button
              variant={isVisited ? "secondary" : "outline"}
              size="sm"
              onClick={onToggleVisited}
              className="text-xs pixel-shadow"
            >
              <Check className={`h-3.5 w-3.5 mr-1 ${isVisited ? "text-green-500" : ""}`} />
              {isVisited ? "Visited" : "Mark Visited"}
            </Button>

            {encounters.length > 0 && (
              encounterUsed ? (
                <Button variant="outline" size="sm" className="text-xs" disabled>
                  <CircleCheck className="h-3.5 w-3.5 mr-1 text-green-500" />
                  Caught
                </Button>
              ) : (
                <Button size="sm" onClick={onCatchPokemon} className="text-xs pixel-shadow">
                  Catch Pokemon
                </Button>
              )
            )}
          </div>
        </div>

        {/* Collapsible sections — only render if data exists */}
        <div className="space-y-4">
          <EncounterList encounters={encounters} pokemonNames={pokemonNames} onPokemonClick={onPokemonClick} />
          <ItemList items={items} />
          <TrainerList trainers={trainers} pokemonNames={pokemonNames} onPokemonClick={onPokemonClick} />

          {/* Empty state if no data at all */}
          {encounters.length === 0 &&
            items.length === 0 &&
            trainers.length === 0 && (
              <div className="text-center py-12 text-muted-foreground">
                <MapPin className="h-10 w-10 mx-auto opacity-20 mb-3" />
                <p className="text-sm">No detailed data available for this route yet.</p>
                <p className="text-xs mt-1">
                  Data can be added through the admin panel.
                </p>
              </div>
            )}
        </div>
      </div>
    </div>
  );
}
