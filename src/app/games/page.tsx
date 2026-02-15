import { getAllGames } from "@/lib/queries/games";
import { GameGrid } from "@/components/game/game-grid";
import type { Metadata } from "next";

export const metadata: Metadata = {
  title: "Select a Game",
};

export default async function GamesPage() {
  const games = await getAllGames();

  return (
    <div className="mx-auto max-w-7xl px-4 py-8">
      <div className="text-center space-y-2 mb-8">
        <h1
          className="text-lg md:text-xl text-primary"
          style={{ fontFamily: "'Press Start 2P', monospace" }}
        >
          Select a Game
        </h1>
        <p className="text-muted-foreground text-sm">
          Choose a Pokemon game to start your Nuzlocke adventure
        </p>
      </div>

      <GameGrid games={games} />
    </div>
  );
}
