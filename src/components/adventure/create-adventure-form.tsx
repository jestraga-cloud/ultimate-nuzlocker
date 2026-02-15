"use client";

import { useState } from "react";
import { useRouter } from "next/navigation";
import type { Game } from "@/types/game";
import { useStore } from "@/lib/store";
import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import { Label } from "@/components/ui/label";
import {
  Select,
  SelectContent,
  SelectItem,
  SelectTrigger,
  SelectValue,
} from "@/components/ui/select";
import { Card, CardContent, CardFooter } from "@/components/ui/card";

interface CreateAdventureFormProps {
  games: Game[];
  preselectedGameSlug: string | null;
}

export function CreateAdventureForm({
  games,
  preselectedGameSlug,
}: CreateAdventureFormProps) {
  const router = useRouter();
  const createAdventure = useStore((s) => s.createAdventure);
  const isGuest = useStore((s) => s.isGuest);

  const preselected = preselectedGameSlug
    ? games.find((g) => g.slug === preselectedGameSlug)
    : null;

  const [selectedGameId, setSelectedGameId] = useState(
    preselected?.id || ""
  );
  const [adventureName, setAdventureName] = useState("");
  const [isSubmitting, setIsSubmitting] = useState(false);

  const selectedGame = games.find((g) => g.id === selectedGameId);

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault();
    if (!selectedGame) return;

    setIsSubmitting(true);

    const name =
      adventureName.trim() || `${selectedGame.name} Nuzlocke`;

    if (isGuest) {
      const id = crypto.randomUUID();
      createAdventure({
        id,
        gameId: selectedGame.id,
        gameName: selectedGame.name,
        gameSlug: selectedGame.slug,
        gameGeneration: selectedGame.generation,
        gameSpriteUrl: selectedGame.spriteUrl,
        name,
        status: "active",
        rules: {},
        createdAt: new Date().toISOString(),
      });
      router.push(`/adventure/${id}`);
    } else {
      try {
        const res = await fetch("/api/adventures", {
          method: "POST",
          headers: { "Content-Type": "application/json" },
          body: JSON.stringify({
            gameId: selectedGame.id,
            name,
          }),
        });
        const data = await res.json();
        if (data.id) {
          router.push(`/adventure/${data.id}`);
        }
      } catch {
        setIsSubmitting(false);
      }
    }
  };

  return (
    <form onSubmit={handleSubmit}>
      <Card>
        <CardContent className="space-y-6 pt-6">
          <div className="space-y-2">
            <Label htmlFor="game">Pokemon Game</Label>
            <Select
              value={selectedGameId}
              onValueChange={setSelectedGameId}
            >
              <SelectTrigger id="game">
                <SelectValue placeholder="Select a game..." />
              </SelectTrigger>
              <SelectContent>
                {games.map((game) => (
                  <SelectItem key={game.id} value={game.id}>
                    <span className="flex items-center gap-2">
                      {game.name}
                      {game.generation && (
                        <span className="text-xs text-muted-foreground">
                          Gen {game.generation}
                        </span>
                      )}
                      {game.isRomhack && (
                        <span className="text-xs text-amber-500">
                          ROM Hack
                        </span>
                      )}
                    </span>
                  </SelectItem>
                ))}
              </SelectContent>
            </Select>
          </div>

          <div className="space-y-2">
            <Label htmlFor="name">Adventure Name</Label>
            <Input
              id="name"
              placeholder={
                selectedGame
                  ? `${selectedGame.name} Nuzlocke`
                  : "My Nuzlocke Run"
              }
              value={adventureName}
              onChange={(e) => setAdventureName(e.target.value)}
            />
            <p className="text-xs text-muted-foreground">
              Leave empty for a default name
            </p>
          </div>

          {selectedGame && (
            <div className="rounded-lg bg-muted/50 p-4 space-y-1">
              <p className="text-sm font-medium">{selectedGame.name}</p>
              {selectedGame.region && (
                <p className="text-xs text-muted-foreground">
                  Region: {selectedGame.region}
                </p>
              )}
              {selectedGame.totalRoutes > 0 && (
                <p className="text-xs text-muted-foreground">
                  {selectedGame.totalRoutes} routes to explore
                </p>
              )}
            </div>
          )}
        </CardContent>

        <CardFooter>
          <Button
            type="submit"
            className="w-full"
            disabled={!selectedGameId || isSubmitting}
          >
            {isSubmitting ? "Creating..." : "Begin Adventure"}
          </Button>
        </CardFooter>
      </Card>
    </form>
  );
}
