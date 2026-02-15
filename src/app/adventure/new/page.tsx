import { getAllGames } from "@/lib/queries/games";
import { CreateAdventureForm } from "@/components/adventure/create-adventure-form";
import type { Metadata } from "next";

export const metadata: Metadata = {
  title: "New Adventure",
};

export default async function NewAdventurePage({
  searchParams,
}: {
  searchParams: Promise<{ game?: string }>;
}) {
  const params = await searchParams;
  const games = await getAllGames();
  const preselectedGame = params.game || null;

  return (
    <div className="mx-auto max-w-2xl px-4 py-12">
      <div className="text-center space-y-2 mb-8">
        <h1
          className="text-lg text-primary"
          style={{ fontFamily: "'Press Start 2P', monospace" }}
        >
          New Adventure
        </h1>
        <p className="text-muted-foreground text-sm">
          Begin your Nuzlocke journey
        </p>
      </div>

      <CreateAdventureForm games={games} preselectedGameSlug={preselectedGame} />
    </div>
  );
}
