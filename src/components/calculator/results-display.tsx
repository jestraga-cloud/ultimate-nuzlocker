"use client";

import { useState } from "react";
import type { DamageResult, CalculatorPokemon } from "@/types/calculator";
import { formatDamageRange, getAverageDamage } from "@/lib/dmg/adapter";
import { Copy, Check } from "lucide-react";

interface ResultsDisplayProps {
  results: DamageResult;
  attacker?: CalculatorPokemon | null;
  defender?: CalculatorPokemon | null;
  moveName?: string | null;
}

function koLabel(chances: DamageResult["koChances"]): { label: string; color: string } {
  if (chances.ohko >= 100) return { label: "OHKO guaranteed", color: "text-destructive" };
  if (chances.ohko > 0) return { label: `OHKO ${chances.ohko.toFixed(0)}%`, color: "text-destructive" };
  if (chances.twoHko >= 100) return { label: "2HKO guaranteed", color: "text-orange-500" };
  if (chances.twoHko > 0) return { label: `2HKO ${chances.twoHko.toFixed(0)}%`, color: "text-orange-500" };
  if (chances.threeHko >= 100) return { label: "3HKO guaranteed", color: "text-yellow-500" };
  if (chances.threeHko > 0) return { label: `3HKO ${chances.threeHko.toFixed(0)}%`, color: "text-yellow-500" };
  if (chances.fourHko >= 100) return { label: "4HKO guaranteed", color: "text-muted-foreground" };
  if (chances.fourHko > 0) return { label: `4HKO ${chances.fourHko.toFixed(0)}%`, color: "text-muted-foreground" };
  return { label: "Unlikely to KO (4+ hits)", color: "text-muted-foreground" };
}

export function ResultsDisplay({ results, attacker, defender, moveName }: ResultsDisplayProps) {
  const [copied, setCopied] = useState(false);
  const avg = getAverageDamage(results);
  const ko = koLabel(results.koChances);
  const range = formatDamageRange(results);

  const handleCopy = () => {
    const context = `${attacker?.name ?? "?"} ${moveName ? `→ ${moveName} → ` : "vs "}${defender?.name ?? "?"}`;
    const text = `${context}: ${range} (avg ${avg.damage}, ${avg.percent.toFixed(1)}%) — ${ko.label}`;
    navigator.clipboard.writeText(text).then(() => {
      setCopied(true);
      setTimeout(() => setCopied(false), 1500);
    });
  };

  return (
    <div className="flex flex-col gap-1">
      {/* Context line */}
      {(attacker || defender || moveName) && (
        <div className="flex items-center justify-between">
          <p className="text-xs text-muted-foreground">
            {attacker?.name ?? "—"}
            {moveName ? ` → ${moveName} → ` : " vs "}
            {defender?.name ?? "—"}
          </p>
          <button
            onClick={handleCopy}
            className="text-muted-foreground hover:text-foreground transition-colors p-0.5"
            title="Copy to clipboard"
          >
            {copied ? <Check className="h-3 w-3 text-green-500" /> : <Copy className="h-3 w-3" />}
          </button>
        </div>
      )}

      {/* Main results row */}
      <div className="flex flex-wrap items-center gap-x-4 gap-y-1">
        {/* Damage range */}
        <span className="text-sm font-semibold text-foreground">{range}</span>

        {/* Average */}
        <span className="text-sm text-muted-foreground">
          avg {avg.damage} <span className="text-xs">({avg.percent.toFixed(1)}%)</span>
        </span>

        {/* Separator */}
        <span className="text-muted-foreground/30 hidden sm:inline">|</span>

        {/* KO verdict */}
        <span className={`text-sm font-medium ${ko.color}`}>{ko.label}</span>
      </div>

      {/* Individual KO chances if interesting */}
      <div className="flex gap-3 text-xs text-muted-foreground">
        {results.koChances.ohko > 0 && results.koChances.ohko < 100 && (
          <span>OHKO: {results.koChances.ohko.toFixed(1)}%</span>
        )}
        {results.koChances.twoHko > 0 && results.koChances.twoHko < 100 && (
          <span>2HKO: {results.koChances.twoHko.toFixed(1)}%</span>
        )}
        {results.koChances.threeHko > 0 && results.koChances.threeHko < 100 && (
          <span>3HKO: {results.koChances.threeHko.toFixed(1)}%</span>
        )}
        {results.koChances.fourHko > 0 && results.koChances.fourHko < 100 && (
          <span>4HKO: {results.koChances.fourHko.toFixed(1)}%</span>
        )}
      </div>
    </div>
  );
}
