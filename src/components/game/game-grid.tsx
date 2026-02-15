"use client";

import type { Game } from "@/types/game";
import { GameCard } from "./game-card";
import { Tabs, TabsContent, TabsList, TabsTrigger } from "@/components/ui/tabs";
import { Input } from "@/components/ui/input";
import { Search } from "lucide-react";
import { useState, useMemo } from "react";

interface GameGridProps {
  games: Game[];
}

export function GameGrid({ games }: GameGridProps) {
  const [search, setSearch] = useState("");
  const [activeTab, setActiveTab] = useState("all");

  const generations = useMemo(() => {
    const gens = new Set<number>();
    games.forEach((g) => {
      if (g.generation) gens.add(g.generation);
    });
    return Array.from(gens).sort();
  }, [games]);

  const hasRomhacks = games.some((g) => g.isRomhack);

  const filteredGames = useMemo(() => {
    let filtered = games;

    if (search) {
      const q = search.toLowerCase();
      filtered = filtered.filter(
        (g) =>
          g.name.toLowerCase().includes(q) ||
          g.region?.toLowerCase().includes(q) ||
          g.slug.toLowerCase().includes(q)
      );
    }

    if (activeTab !== "all") {
      if (activeTab === "romhacks") {
        filtered = filtered.filter((g) => g.isRomhack);
      } else {
        const gen = parseInt(activeTab);
        filtered = filtered.filter((g) => g.generation === gen);
      }
    }

    return filtered;
  }, [games, search, activeTab]);

  return (
    <div className="space-y-6">
      {/* Search */}
      <div className="relative max-w-md mx-auto">
        <Search className="absolute left-3 top-1/2 -translate-y-1/2 h-4 w-4 text-muted-foreground" />
        <Input
          placeholder="Search games..."
          value={search}
          onChange={(e) => setSearch(e.target.value)}
          className="pl-10"
        />
      </div>

      {/* Generation tabs */}
      <Tabs value={activeTab} onValueChange={setActiveTab}>
        <TabsList className="flex flex-wrap h-auto gap-1 bg-transparent justify-center">
          <TabsTrigger
            value="all"
            className="data-[state=active]:bg-primary data-[state=active]:text-primary-foreground text-xs"
          >
            All
          </TabsTrigger>
          {generations.map((gen) => (
            <TabsTrigger
              key={gen}
              value={gen.toString()}
              className="data-[state=active]:bg-primary data-[state=active]:text-primary-foreground text-xs"
            >
              Gen {gen}
            </TabsTrigger>
          ))}
          {hasRomhacks && (
            <TabsTrigger
              value="romhacks"
              className="data-[state=active]:bg-amber-500 data-[state=active]:text-white text-xs"
            >
              ROM Hacks
            </TabsTrigger>
          )}
        </TabsList>

        <TabsContent value={activeTab} className="mt-6">
          {filteredGames.length === 0 ? (
            <div className="text-center py-12 text-muted-foreground">
              <p className="text-lg">No games found</p>
              <p className="text-sm mt-2">
                {search
                  ? "Try a different search term"
                  : "No games available for this filter"}
              </p>
            </div>
          ) : (
            <div className="grid grid-cols-2 sm:grid-cols-3 md:grid-cols-4 lg:grid-cols-5 gap-4">
              {filteredGames.map((game) => (
                <GameCard key={game.id} game={game} />
              ))}
            </div>
          )}
        </TabsContent>
      </Tabs>
    </div>
  );
}
