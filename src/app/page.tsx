import Link from "next/link";
import { PokeballIcon } from "@/components/icons/pokeball-icon";
import { ThemeDecorations } from "@/components/theme-decorations";

export default function HomePage() {
  return (
    <div className="min-h-[calc(100vh-4rem)] flex items-center justify-center px-4 pixel-pattern-bg relative">
      <ThemeDecorations />
      {/* Hero Section */}
      <section className="text-center space-y-6 relative z-10">
        <div className="mx-auto w-36 h-36 relative animate-pixel-fade-in">
          <PokeballIcon className="w-full h-full drop-shadow-xl" />
        </div>

        <h1
          className="text-2xl md:text-3xl text-primary leading-relaxed"
          style={{ fontFamily: "'Press Start 2P', monospace" }}
        >
          Ultimate Nuzlocker
        </h1>

        <p className="text-muted-foreground text-lg max-w-2xl mx-auto">
          The definitive Nuzlocke tracker for every Pokemon game. Track encounters,
          manage your team, and survive every route.
        </p>

        <div className="flex flex-col sm:flex-row items-center justify-center gap-4 pt-4">
          <Link
            href="/games"
            className="inline-flex items-center justify-center rounded-lg bg-primary px-8 py-3 text-sm font-medium text-primary-foreground shadow-sm transition-all hover:bg-primary/90 pixel-shadow hover:translate-y-[-1px]"
            style={{ fontFamily: "'Press Start 2P', monospace" }}
          >
            Start Adventure
          </Link>
          <Link
            href="/adventures"
            className="inline-flex items-center justify-center rounded-lg border border-border bg-card px-8 py-3 text-sm font-medium shadow-sm transition-all hover:bg-accent pixel-shadow hover:translate-y-[-1px]"
          >
            Continue Adventure
          </Link>
        </div>
      </section>
    </div>
  );
}
