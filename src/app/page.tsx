import Link from "next/link";
import { MapPin, Users, Zap, Gamepad2, Wifi, Wrench } from "lucide-react";
import { PokeballIcon } from "@/components/icons/pokeball-icon";
import { ThemeDecorations } from "@/components/theme-decorations";

const FEATURES = [
  {
    icon: Gamepad2,
    title: "Every Game",
    description: "Support for all mainline Pokemon games from Gen 1 to Gen 9, plus popular ROM hacks.",
    color: "#b91c1c",
  },
  {
    icon: MapPin,
    title: "Route Tracking",
    description: "View encounters, items, and trainer battles for every route. Never miss a catch.",
    color: "#15803d",
  },
  {
    icon: Users,
    title: "Team Manager",
    description: "Track your catches, evolutions, and fallen companions. Manage your team with ease.",
    color: "#0f766e",
  },
  {
    icon: Zap,
    title: "Smart Stats",
    description: "Generation-aware Pokemon stats. See the correct base stats for the game you're playing.",
    color: "#d97706",
  },
  {
    icon: Wifi,
    title: "Works Offline",
    description: "Play as a guest with local saves. Sign in to sync your data across devices.",
    color: "#059669",
  },
  {
    icon: Wrench,
    title: "ROM Hack Ready",
    description: "Custom type changes, stat modifications, and new abilities — we handle it all.",
    color: "#7e22ce",
  },
];

export default function HomePage() {
  return (
    <div className="mx-auto max-w-7xl px-4 py-12 pixel-pattern-bg relative">
      <ThemeDecorations />
      {/* Hero Section */}
      <section className="text-center space-y-6 py-16 relative z-10">
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

      {/* Features Grid */}
      <section className="grid grid-cols-1 md:grid-cols-3 gap-5 py-12 relative z-10">
        {FEATURES.map((feature) => (
          <div
            key={feature.title}
            className="pixel-panel p-6 space-y-3 transition-all hover:translate-y-[-2px]"
          >
            <div
              className="w-10 h-10 rounded-lg flex items-center justify-center"
              style={{ backgroundColor: `${feature.color}15` }}
            >
              <feature.icon
                className="h-5 w-5"
                style={{ color: feature.color }}
              />
            </div>
            <h3 className="font-semibold text-base">{feature.title}</h3>
            <p className="text-sm text-muted-foreground leading-relaxed">{feature.description}</p>
          </div>
        ))}
      </section>
    </div>
  );
}
