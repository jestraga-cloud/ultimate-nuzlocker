"use client";

import { useState, useMemo } from "react";
import type { CalculatorPokemon } from "@/types/calculator";
import { PERFECT_IVS, DEFAULT_EVS, DEFAULT_BOOSTS } from "@/types/calculator";
import { getPokemon } from "@/lib/pokeapi/client";
import { Label } from "@/components/ui/label";
import { Checkbox } from "@/components/ui/checkbox";
import { PokemonSprite } from "@/components/pokemon/pokemon-sprite";
import { TypeBadge } from "@/components/pokemon/type-badge";
import { StatInputs } from "@/components/calculator/stat-inputs";
import { MoveInput } from "@/components/calculator/move-input";
import { Loader2 } from "lucide-react";
import type { LocalCatch } from "@/lib/store/types";
import {
  Select, SelectContent, SelectItem, SelectTrigger, SelectValue,
} from "@/components/ui/select";

interface PokemonPickerPanelProps {
  value: CalculatorPokemon | null;
  onChange: (pokemon: CalculatorPokemon | null) => void;
  generation: number;
  gameId: string;
  aliveCatches: LocalCatch[];
  pokemonNames: Record<number, { name: string; types: string[] }>;
  side: "attacker" | "defender";
  /** Which move slot is currently selected for calculation (1-4) */
  selectedSlot: 1 | 2 | 3 | 4;
  onSlotChange: (slot: 1 | 2 | 3 | 4) => void;
}

export function PokemonPickerPanel({
  value,
  onChange,
  generation,
  aliveCatches,
  pokemonNames,
  side,
  selectedSlot,
  onSlotChange,
}: PokemonPickerPanelProps) {
  const [showOnlyMine, setShowOnlyMine] = useState(false);
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState<string | null>(null);

  // All available Pokemon for the picklist
  const availablePokemon = useMemo(() => {
    const allDexIds = new Set<number>();
    Object.keys(pokemonNames).forEach((id) => allDexIds.add(parseInt(id)));
    aliveCatches.forEach((c) => allDexIds.add(c.currentEvolutionDexId || c.pokemonDexId));

    return Array.from(allDexIds)
      .map((dexId) => ({
        dexId,
        name: pokemonNames[dexId]?.name || `#${dexId}`,
        isCaught: aliveCatches.some((c) => (c.currentEvolutionDexId || c.pokemonDexId) === dexId),
      }))
      .sort((a, b) => a.dexId - b.dexId);
  }, [pokemonNames, aliveCatches]);

  const filteredPokemon = useMemo(() => {
    if (!showOnlyMine) return availablePokemon;
    return availablePokemon.filter((p) => p.isCaught);
  }, [availablePokemon, showOnlyMine]);

  const loadPokemon = async (dexId: number) => {
    setLoading(true);
    setError(null);
    try {
      const pokemonData = await getPokemon(dexId, generation);
      const baseStats = {
        hp: pokemonData.stats.hp,
        atk: pokemonData.stats.attack,
        def: pokemonData.stats.defense,
        spa: pokemonData.stats.specialAttack,
        spd: pokemonData.stats.specialDefense,
        spe: pokemonData.stats.speed,
      };
      const caughtPokemon = aliveCatches.find(
        (c) => (c.currentEvolutionDexId || c.pokemonDexId) === dexId
      );
      // Format abilities for display (Title Case)
      const availableAbilities = pokemonData.abilities.map((a) =>
        a.name.split("-").map((w: string) => w.charAt(0).toUpperCase() + w.slice(1)).join(" ")
      );
      const selectedAbility = caughtPokemon?.ability || availableAbilities[0] || null;
      onChange({
        dexId: pokemonData.dexId,
        name: pokemonData.name,
        level: caughtPokemon?.level || 50,
        nature: caughtPokemon?.nature || "Hardy",
        ability: selectedAbility,
        item: caughtPokemon?.heldItem || null,
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
      });
    } catch (err) {
      console.error("Error loading Pokemon:", err);
      setError("Failed to load Pokemon data");
    } finally {
      setLoading(false);
    }
  };

  const STAT_LABELS = ["HP","Atk","Def","SpA","SpD","Spe"] as const;
  const STAT_KEYS = ["hp","atk","def","spa","spd","spe"] as const;

  return (
    <div className="space-y-3">
      {/* Selector row */}
      <div className="space-y-1.5">
        <div className="flex items-center justify-between">
          <Label className="text-xs text-muted-foreground">Pokemon</Label>
          <div className="flex items-center gap-1.5">
            <Checkbox
              id={`show-mine-${side}`}
              checked={showOnlyMine}
              onCheckedChange={(v) => setShowOnlyMine(v === true)}
            />
            <Label htmlFor={`show-mine-${side}`} className="text-xs cursor-pointer">
              My team only
            </Label>
          </div>
        </div>
        <Select
          value={value?.dexId?.toString() || ""}
          onValueChange={(v) => { if (!v) onChange(null); else loadPokemon(parseInt(v)); }}
          disabled={loading}
        >
          <SelectTrigger className="h-8 text-xs w-full">
            <SelectValue placeholder="Choose a Pokemon..." />
          </SelectTrigger>
          <SelectContent className="max-h-[280px]">
            {filteredPokemon.map((p) => (
              <SelectItem key={p.dexId} value={p.dexId.toString()}>
                <span className="text-xs text-muted-foreground mr-1">#{p.dexId}</span>
                {p.name}
                {p.isCaught && <span className="ml-1 text-primary text-xs">★</span>}
              </SelectItem>
            ))}
          </SelectContent>
        </Select>
        {loading && (
          <div className="flex items-center gap-1.5 text-xs text-muted-foreground">
            <Loader2 className="h-3 w-3 animate-spin" />Loading...
          </div>
        )}
        {error && <p className="text-xs text-destructive">{error}</p>}
      </div>

      {/* Pokemon details */}
      {value && !loading && (
        <div className="space-y-3 pt-3 border-t border-border">
          {/* Sprite + types + computed stats */}
          <div className="flex items-start gap-3">
            <PokemonSprite dexId={value.dexId} size="md" />
            <div className="flex-1 min-w-0">
              <p className="font-medium text-sm leading-tight">{value.name}</p>
              <div className="flex flex-wrap gap-1 mt-1">
                {value.types.map((type) => <TypeBadge key={type} type={type} />)}
              </div>
              {/* Base stats */}
              <div className="mt-1.5 grid grid-cols-6 gap-x-1 text-center">
                {STAT_LABELS.map((label, i) => (
                  <div key={label}>
                    <div className="text-[9px] text-muted-foreground leading-none">{label}</div>
                    <div className="text-[10px] font-medium leading-tight">
                      {value.baseStats[STAT_KEYS[i]]}
                    </div>
                  </div>
                ))}
              </div>
            </div>
          </div>

          {/* Move slots — clickable to select which move to calculate */}
          <div className="space-y-1">
            <Label className="text-xs text-muted-foreground">
              Moves <span className="text-primary">(click to select for calc)</span>
            </Label>
            {([1,2,3,4] as const).map((slot) => {
              const moveKey = `move${slot}` as "move1" | "move2" | "move3" | "move4";
              const move = value[moveKey];
              const isSelected = selectedSlot === slot;
              return (
                <div
                  key={slot}
                  onClick={() => onSlotChange(slot)}
                  className={`rounded border cursor-pointer transition-colors ${
                    isSelected
                      ? "border-primary/60 bg-primary/5"
                      : "border-border hover:border-border/80"
                  }`}
                >
                  <div className="px-2 pt-1.5 flex items-center justify-between">
                    <div>
                      {isSelected && (
                        <span className="text-[9px] text-primary font-medium uppercase mr-1">▶</span>
                      )}
                      <span className="text-[9px] text-muted-foreground">Move {slot}</span>
                    </div>
                    {move && (
                      <label
                        className="flex items-center gap-1 text-[9px] text-muted-foreground"
                        onClick={(e) => e.stopPropagation()}
                      >
                        <input
                          type="checkbox"
                          checked={move.isCrit}
                          onChange={(e) => onChange({ ...value, [moveKey]: { ...move, isCrit: e.target.checked } })}
                          className="h-3 w-3 rounded"
                        />
                        Crit
                      </label>
                    )}
                  </div>
                  <div className="px-1.5 pb-1.5">
                    <MoveInput
                      value={move}
                      onChange={(m) => onChange({ ...value, [moveKey]: m })}
                      generation={generation}
                      pokemonDexId={value.dexId}
                      placeholder={`Move ${slot}`}
                    />
                  </div>
                </div>
              );
            })}
          </div>

          {/* Stat config */}
          <div className="pt-1 border-t border-border">
            <StatInputs
              pokemon={value}
              onChange={(updates) => onChange({ ...value, ...updates })}
            />
          </div>
        </div>
      )}
    </div>
  );
}
