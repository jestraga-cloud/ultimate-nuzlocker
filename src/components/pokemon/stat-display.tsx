import type { PokemonStats } from "@/types/pokemon";
import { StatBar } from "./stat-bar";
import { getStatTotal } from "@/lib/pokeapi/client";

interface StatDisplayProps {
  stats: PokemonStats;
  compareStats?: PokemonStats | null;
}

const STAT_CONFIG = [
  { key: "hp" as const, label: "Hit Points", short: "HP" },
  { key: "attack" as const, label: "Attack", short: "Atk" },
  { key: "defense" as const, label: "Defense", short: "Def" },
  { key: "specialAttack" as const, label: "Special Attack", short: "SpA" },
  { key: "specialDefense" as const, label: "Special Defense", short: "SpD" },
  { key: "speed" as const, label: "Speed", short: "Spe" },
];

export function StatDisplay({ stats, compareStats }: StatDisplayProps) {
  const total = getStatTotal(stats);
  const compareTotal = compareStats ? getStatTotal(compareStats) : null;

  return (
    <div className="space-y-1.5">
      {STAT_CONFIG.map(({ key, label, short }) => (
        <div key={key} className="flex items-center gap-1">
          <div className="flex-1">
            <StatBar
              label={label}
              shortLabel={short}
              value={stats[key]}
            />
          </div>
          {compareStats && (
            <StatDiff current={stats[key]} original={compareStats[key]} />
          )}
        </div>
      ))}

      <div className="flex items-center gap-2 pt-1 border-t">
        <span className="w-8 text-[10px] font-medium text-muted-foreground text-right">
          BST
        </span>
        <span className="w-8 text-xs font-mono text-right font-bold">
          {total}
        </span>
        {compareTotal !== null && (
          <StatDiff current={total} original={compareTotal} />
        )}
      </div>
    </div>
  );
}

function StatDiff({
  current,
  original,
}: {
  current: number;
  original: number;
}) {
  const diff = current - original;
  if (diff === 0) return null;

  return (
    <span
      className={`text-[10px] font-mono ${
        diff > 0 ? "text-green-500" : "text-red-500"
      }`}
    >
      {diff > 0 ? "+" : ""}
      {diff}
    </span>
  );
}
