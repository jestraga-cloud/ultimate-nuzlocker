"use client";

import { useState, useEffect, useMemo, useCallback } from "react";
import type { CalculatorPokemon, CalculatorMove, FieldConditions, DamageResult } from "@/types/calculator";
import { DEFAULT_FIELD_CONDITIONS, PERFECT_IVS, DEFAULT_EVS, DEFAULT_BOOSTS } from "@/types/calculator";
import { calculateDamage } from "@/lib/dmg/adapter";
import { getPokemon } from "@/lib/pokeapi/client";
import { getMove } from "@/lib/pokeapi/moves";
import { PokemonPickerPanel } from "@/components/calculator/pokemon-picker-panel";
import { FieldConditionsComponent } from "@/components/calculator/field-conditions";
import { ResultsDisplay } from "@/components/calculator/results-display";
import { TeamTray } from "@/components/calculator/team-tray";
import { EnemyTray } from "@/components/calculator/enemy-tray";
import { Button } from "@/components/ui/button";
import { ArrowLeftRight, RotateCcw } from "lucide-react";
import type { LocalCatch } from "@/lib/store/types";
import type { Trainer, TrainerPokemon } from "@/types/game";

interface CalculatorTabProps {
  adventureId: string;
  gameId: string;
  generation: number;
  catches: LocalCatch[];
  pokemonNames: Record<number, { name: string; types: string[] }>;
  calcTrainer: Trainer | null;
  onClearTrainer: () => void;
}

function buildPokemon(pokemonData: Awaited<ReturnType<typeof getPokemon>>, catchData?: LocalCatch): CalculatorPokemon {
  const baseStats = {
    hp: pokemonData.stats.hp,
    atk: pokemonData.stats.attack,
    def: pokemonData.stats.defense,
    spa: pokemonData.stats.specialAttack,
    spd: pokemonData.stats.specialDefense,
    spe: pokemonData.stats.speed,
  };
  const availableAbilities = pokemonData.abilities.map((a: { name: string }) =>
    a.name.split("-").map((w: string) => w.charAt(0).toUpperCase() + w.slice(1)).join(" ")
  );
  return {
    dexId: pokemonData.dexId,
    name: pokemonData.name,
    level: catchData?.level || 50,
    nature: catchData?.nature || "Hardy",
    ability: catchData?.ability || availableAbilities[0] || null,
    item: catchData?.heldItem || null,
    types: pokemonData.types,
    baseStats,
    evs: DEFAULT_EVS,
    ivs: PERFECT_IVS,
    status: null,
    boosts: DEFAULT_BOOSTS,
    availableAbilities,
    move1: null,
    move2: null,
    move3: null,
    move4: null,
  };
}

async function buildTrainerPokemon(
  pokemonData: Awaited<ReturnType<typeof getPokemon>>,
  trainerPokemon: TrainerPokemon
): Promise<CalculatorPokemon> {
  const baseStats = {
    hp: pokemonData.stats.hp,
    atk: pokemonData.stats.attack,
    def: pokemonData.stats.defense,
    spa: pokemonData.stats.specialAttack,
    spd: pokemonData.stats.specialDefense,
    spe: pokemonData.stats.speed,
  };
  const availableAbilities = pokemonData.abilities.map((a: { name: string }) =>
    a.name.split("-").map((w: string) => w.charAt(0).toUpperCase() + w.slice(1)).join(" ")
  );

  // Resolve moves in parallel — resilient to individual failures
  const validMoves = trainerPokemon.moves.filter((m) => m && m.trim() !== "");
  const moveResults = await Promise.allSettled(
    validMoves.slice(0, 4).map(async (moveName): Promise<CalculatorMove> => {
      const moveData = await getMove(moveName);
      return {
        name: moveData.name,
        type: moveData.type,
        category: moveData.category,
        basePower: moveData.power,
        accuracy: moveData.accuracy,
        priority: moveData.priority,
        isCrit: false,
        hits: moveData.maxHits || undefined,
      };
    })
  );

  const resolvedMoves = moveResults
    .filter((r): r is PromiseFulfilledResult<CalculatorMove> => r.status === "fulfilled")
    .map((r) => r.value);

  return {
    dexId: pokemonData.dexId,
    name: pokemonData.name,
    level: trainerPokemon.level,
    nature: trainerPokemon.nature || "Hardy",
    ability: trainerPokemon.ability || availableAbilities[0] || null,
    item: trainerPokemon.heldItem || null,
    types: pokemonData.types,
    baseStats,
    evs: DEFAULT_EVS,
    ivs: PERFECT_IVS,
    status: null,
    boosts: DEFAULT_BOOSTS,
    availableAbilities,
    move1: resolvedMoves[0] || null,
    move2: resolvedMoves[1] || null,
    move3: resolvedMoves[2] || null,
    move4: resolvedMoves[3] || null,
  };
}

export function CalculatorTab({ adventureId, gameId, generation, catches, pokemonNames, calcTrainer, onClearTrainer }: CalculatorTabProps) {
  const [attacker, setAttacker] = useState<CalculatorPokemon | null>(null);
  const [defender, setDefender] = useState<CalculatorPokemon | null>(null);
  const [field, setField] = useState<FieldConditions>(DEFAULT_FIELD_CONDITIONS);
  const [attackerSlot, setAttackerSlot] = useState<1|2|3|4>(1);
  const [defenderSlot, setDefenderSlot] = useState<1|2|3|4>(1);
  const [results, setResults] = useState<DamageResult | null>(null);
  const [reverseResults, setReverseResults] = useState<DamageResult | null>(null);
  const [calcError, setCalcError] = useState<string | null>(null);
  const [attackerDragOver, setAttackerDragOver] = useState(false);
  const [defenderDragOver, setDefenderDragOver] = useState(false);

  const aliveCatches = useMemo(
    () => catches.filter((c) => c.status === "alive" || c.status === "in_team"),
    [catches]
  );

  // Get the selected move from each pokemon
  const attackerMove = useMemo(() => {
    if (!attacker) return null;
    return attacker[`move${attackerSlot}` as "move1" | "move2" | "move3" | "move4"];
  }, [attacker, attackerSlot]);

  const defenderMove = useMemo(() => {
    if (!defender) return null;
    return defender[`move${defenderSlot}` as "move1" | "move2" | "move3" | "move4"];
  }, [defender, defenderSlot]);

  // Forward calc: attacker → defender
  useEffect(() => {
    if (!attacker || !defender || !attackerMove) {
      setResults(null);
      setCalcError(null);
      return;
    }
    try {
      setResults(calculateDamage(attacker, defender, attackerMove, field, generation as any));
      setCalcError(null);
    } catch (e) {
      setCalcError(e instanceof Error ? e.message : "Calculation failed");
      setResults(null);
    }
  }, [attacker, defender, attackerMove, field, generation]);

  // Reverse calc: defender → attacker
  useEffect(() => {
    if (!defender || !attacker || !defenderMove) {
      setReverseResults(null);
      return;
    }
    try {
      setReverseResults(calculateDamage(defender, attacker, defenderMove, field, generation as any));
    } catch {
      setReverseResults(null);
    }
  }, [defender, attacker, defenderMove, field, generation]);

  const loadForSide = useCallback(async (
    side: "attacker" | "defender",
    dexId: number,
    catchData?: LocalCatch
  ) => {
    try {
      const pokemonData = await getPokemon(dexId, generation);
      const pokemon = buildPokemon(pokemonData, catchData);
      if (side === "attacker") setAttacker(pokemon);
      else setDefender(pokemon);
    } catch (err) {
      console.error("Failed to load Pokemon:", err);
    }
  }, [generation]);

  const loadTrainerForSide = useCallback(async (
    side: "attacker" | "defender",
    tp: TrainerPokemon
  ) => {
    try {
      const pokemonData = await getPokemon(tp.pokemonDexId, generation);
      const pokemon = await buildTrainerPokemon(pokemonData, tp);
      if (side === "attacker") setAttacker(pokemon);
      else setDefender(pokemon);
    } catch (err) {
      console.error("Failed to load trainer Pokemon:", err);
    }
  }, [generation]);

  const handleSwap = useCallback(() => {
    setAttacker(defender);
    setDefender(attacker);
    setAttackerSlot(defenderSlot);
    setDefenderSlot(attackerSlot);
  }, [attacker, defender, attackerSlot, defenderSlot]);

  const handleReset = useCallback(() => {
    setAttacker(null);
    setDefender(null);
    setField(DEFAULT_FIELD_CONDITIONS);
    setAttackerSlot(1);
    setDefenderSlot(1);
    setResults(null);
    setReverseResults(null);
    setCalcError(null);
    onClearTrainer();
  }, [onClearTrainer]);

  const handleAttackerDrop = useCallback(async (e: React.DragEvent) => {
    e.preventDefault();
    setAttackerDragOver(false);
    const dexIdStr = e.dataTransfer.getData("application/pokemon-dex-id");
    const catchId = e.dataTransfer.getData("application/pokemon-catch-id");
    if (!dexIdStr) return;
    await loadForSide("attacker", parseInt(dexIdStr), catches.find((c) => c.id === catchId));
  }, [catches, loadForSide]);

  const handleDefenderDrop = useCallback(async (e: React.DragEvent) => {
    e.preventDefault();
    setDefenderDragOver(false);
    const dexIdStr = e.dataTransfer.getData("application/pokemon-dex-id");
    const catchId = e.dataTransfer.getData("application/pokemon-catch-id");
    if (!dexIdStr) return;
    await loadForSide("defender", parseInt(dexIdStr), catches.find((c) => c.id === catchId));
  }, [catches, loadForSide]);

  const handleEnemyDrop = useCallback((e: React.DragEvent) => {
    // This handles dropping a trainer onto the enemy tray — page.tsx handles it via onDrop on tab trigger
    // but also accept it here if dropped directly on the enemy box
    e.preventDefault();
  }, []);

  return (
    <div className="h-full overflow-y-auto custom-scrollbar">
      <div className="p-4 space-y-4 max-w-7xl mx-auto">

        {/* Top row: 3-column grid matching bottom panels */}
        <div className="grid grid-cols-1 lg:grid-cols-3 gap-4">

          {/* LEFT — My Team (aligned with Attacker) */}
          <div className="border rounded-md bg-card/50 p-3 border-primary/30">
            <p className="text-[10px] font-medium text-primary mb-2 uppercase">My Team</p>
            <TeamTray
              catches={aliveCatches}
              pokemonNames={pokemonNames}
              onSelectPokemon={(dexId, catchData) => loadForSide("attacker", dexId, catchData)}
            />
          </div>

          {/* MIDDLE — Results (aligned with Field) */}
          <div className="border rounded-md bg-card/50 p-3 min-h-[60px] space-y-3">
            {results && attacker && defender && attackerMove ? (
              <ResultsDisplay
                results={results}
                attacker={attacker}
                defender={defender}
                moveName={attackerMove.name}
              />
            ) : calcError ? (
              <p className="text-xs text-destructive">{calcError}</p>
            ) : (
              <p className="text-xs text-muted-foreground">
                Select attacker, a move (▶), and defender to see damage
              </p>
            )}
            {reverseResults && defender && attacker && defenderMove && (
              <div className="pt-2 border-t border-border/50">
                <p className="text-[10px] text-muted-foreground mb-1 uppercase">Defender hits back:</p>
                <ResultsDisplay
                  results={reverseResults}
                  attacker={defender}
                  defender={attacker}
                  moveName={defenderMove.name}
                />
              </div>
            )}
          </div>

          {/* RIGHT — Enemy Team (aligned with Defender) */}
          <div className="border rounded-md bg-card/50 p-3 border-destructive/30">
            <p className="text-[10px] font-medium text-destructive mb-2 uppercase">Enemy</p>
            <EnemyTray
              trainer={calcTrainer}
              pokemonNames={pokemonNames}
              onSelectPokemon={(tp) => loadTrainerForSide("defender", tp)}
              onDropTrainer={handleEnemyDrop}
              onClear={onClearTrainer}
            />
          </div>

        </div>

        {/* Bottom row: 3-column grid — Attacker | Field | Defender */}
        <div className="grid grid-cols-1 lg:grid-cols-3 gap-4">

          {/* LEFT — Attacker */}
          <div
            className={`border rounded-md bg-card/50 p-4 transition-colors ${attackerDragOver ? "border-primary bg-primary/5" : ""}`}
            onDragOver={(e) => { e.preventDefault(); setAttackerDragOver(true); }}
            onDragLeave={() => setAttackerDragOver(false)}
            onDrop={handleAttackerDrop}
          >
            <p className="text-xs font-medium text-primary mb-3 uppercase">
              {attackerDragOver ? "↓ Drop here" : "Attacker"}
            </p>
            <PokemonPickerPanel
              value={attacker}
              onChange={setAttacker}
              generation={generation}
              gameId={gameId}
              aliveCatches={aliveCatches}
              pokemonNames={pokemonNames}
              side="attacker"
              selectedSlot={attackerSlot}
              onSlotChange={setAttackerSlot}
            />
          </div>

          {/* MIDDLE — Field + Swap */}
          <div className="border rounded-md bg-card/50 p-4">
            <div className="flex items-center justify-between mb-3">
              <p className="text-xs font-medium text-muted-foreground uppercase">Field</p>
              <div className="flex gap-1">
                <Button
                  variant="outline"
                  size="sm"
                  className="h-6 text-xs px-2 gap-1"
                  onClick={handleSwap}
                  disabled={!attacker && !defender}
                >
                  <ArrowLeftRight className="h-3 w-3" />
                  Swap
                </Button>
                <Button
                  variant="ghost"
                  size="sm"
                  className="h-6 text-xs px-2 gap-1 text-muted-foreground"
                  onClick={handleReset}
                >
                  <RotateCcw className="h-3 w-3" />
                  Reset
                </Button>
              </div>
            </div>
            <FieldConditionsComponent field={field} onChange={setField} />
          </div>

          {/* RIGHT — Defender */}
          <div
            className={`border rounded-md bg-card/50 p-4 transition-colors ${defenderDragOver ? "border-destructive bg-destructive/5" : ""}`}
            onDragOver={(e) => { e.preventDefault(); setDefenderDragOver(true); }}
            onDragLeave={() => setDefenderDragOver(false)}
            onDrop={handleDefenderDrop}
          >
            <p className="text-xs font-medium text-destructive mb-3 uppercase">
              {defenderDragOver ? "↓ Drop here" : "Defender"}
            </p>
            <PokemonPickerPanel
              value={defender}
              onChange={setDefender}
              generation={generation}
              gameId={gameId}
              aliveCatches={aliveCatches}
              pokemonNames={pokemonNames}
              side="defender"
              selectedSlot={defenderSlot}
              onSlotChange={setDefenderSlot}
            />
          </div>

        </div>
      </div>
    </div>
  );
}
