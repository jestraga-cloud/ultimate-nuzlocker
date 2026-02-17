"use client";

import { useState } from "react";
import type { CalculatorPokemon, BattleStatus } from "@/types/calculator";
import type { StatsTable } from "@smogon/calc";
import { Input } from "@/components/ui/input";
import { Label } from "@/components/ui/label";
import { Button } from "@/components/ui/button";
import { Collapsible, CollapsibleContent, CollapsibleTrigger } from "@/components/ui/collapsible";
import { ChevronDown } from "lucide-react";

const NATURES = [
  "Hardy", "Lonely", "Brave", "Adamant", "Naughty",
  "Bold", "Docile", "Relaxed", "Impish", "Lax",
  "Timid", "Hasty", "Serious", "Jolly", "Naive",
  "Modest", "Mild", "Quiet", "Bashful", "Rash",
  "Calm", "Gentle", "Sassy", "Careful", "Quirky",
];

const STATUS_OPTIONS: { value: BattleStatus; label: string }[] = [
  { value: null, label: "None" },
  { value: "brn", label: "Burn" },
  { value: "par", label: "Paralysis" },
  { value: "psn", label: "Poison" },
  { value: "tox", label: "Toxic" },
  { value: "slp", label: "Sleep" },
  { value: "frz", label: "Freeze" },
];

interface StatInputsProps {
  pokemon: CalculatorPokemon;
  onChange: (updates: Partial<CalculatorPokemon>) => void;
}

export function StatInputs({ pokemon, onChange }: StatInputsProps) {
  const [advancedOpen, setAdvancedOpen] = useState(false);

  const updateEVs = (stat: keyof StatsTable, value: number) => {
    onChange({ evs: { ...pokemon.evs, [stat]: Math.min(252, Math.max(0, value)) } });
  };
  const updateIVs = (stat: keyof StatsTable, value: number) => {
    onChange({ ivs: { ...pokemon.ivs, [stat]: Math.min(31, Math.max(0, value)) } });
  };
  const updateBoosts = (stat: keyof StatsTable, value: number) => {
    onChange({ boosts: { ...pokemon.boosts, [stat]: Math.min(6, Math.max(-6, value)) } });
  };

  const evTotal = pokemon.evs.hp + pokemon.evs.atk + pokemon.evs.def + pokemon.evs.spa + pokemon.evs.spd + pokemon.evs.spe;

  return (
    <div className="space-y-3">
      {/* Basic row: Level + Nature */}
      <div className="grid grid-cols-2 gap-2">
        <div>
          <Label className="text-xs text-muted-foreground">Level</Label>
          <Input
            type="number" min="1" max="100"
            value={pokemon.level}
            onChange={(e) => onChange({ level: parseInt(e.target.value) || 1 })}
            className="h-8 text-xs"
          />
        </div>
        <div>
          <Label className="text-xs text-muted-foreground">Nature</Label>
          <select
            value={pokemon.nature}
            onChange={(e) => onChange({ nature: e.target.value })}
            className="h-8 w-full rounded-md border border-input bg-background px-2 text-xs"
          >
            {NATURES.map((n) => <option key={n} value={n}>{n}</option>)}
          </select>
        </div>
      </div>

      {/* Ability — dropdown if abilities known, free text otherwise */}
      <div>
        <Label className="text-xs text-muted-foreground">Ability</Label>
        {pokemon.availableAbilities.length > 0 ? (
          <select
            value={pokemon.ability || ""}
            onChange={(e) => onChange({ ability: e.target.value || null })}
            className="h-8 w-full rounded-md border border-input bg-background px-2 text-xs"
          >
            {pokemon.availableAbilities.map((a) => (
              <option key={a} value={a}>{a}</option>
            ))}
          </select>
        ) : (
          <Input
            value={pokemon.ability || ""}
            onChange={(e) => onChange({ ability: e.target.value || null })}
            placeholder="e.g., Levitate"
            className="h-8 text-xs"
          />
        )}
      </div>

      {/* Item — text with datalist for common items */}
      <div>
        <Label className="text-xs text-muted-foreground">Held Item</Label>
        <Input
          list="calc-items"
          value={pokemon.item || ""}
          onChange={(e) => onChange({ item: e.target.value || null })}
          placeholder="e.g., Choice Band"
          className="h-8 text-xs"
        />
        <datalist id="calc-items">
          <option value="Choice Band" />
          <option value="Choice Specs" />
          <option value="Choice Scarf" />
          <option value="Life Orb" />
          <option value="Leftovers" />
          <option value="Black Sludge" />
          <option value="Rocky Helmet" />
          <option value="Eviolite" />
          <option value="Assault Vest" />
          <option value="Focus Sash" />
          <option value="Expert Belt" />
          <option value="Muscle Band" />
          <option value="Wise Glasses" />
          <option value="Lum Berry" />
          <option value="Sitrus Berry" />
          <option value="Salac Berry" />
          <option value="Petaya Berry" />
          <option value="Liechi Berry" />
          <option value="Apicot Berry" />
          <option value="Lansat Berry" />
          <option value="White Herb" />
          <option value="Power Herb" />
          <option value="Shell Bell" />
          <option value="Deep Sea Tooth" />
          <option value="Deep Sea Scale" />
          <option value="Light Ball" />
          <option value="Thick Club" />
          <option value="Metal Coat" />
          <option value="Charcoal" />
          <option value="Mystic Water" />
          <option value="Miracle Seed" />
          <option value="Magnet" />
          <option value="Twisted Spoon" />
          <option value="Nevermeltice" />
          <option value="Silk Scarf" />
          <option value="Black Belt" />
          <option value="Sharp Beak" />
          <option value="Poison Barb" />
          <option value="Soft Sand" />
          <option value="Hard Stone" />
          <option value="Silver Powder" />
          <option value="Spell Tag" />
          <option value="Dragon Fang" />
        </datalist>
      </div>

      {/* Status */}
      <div>
        <Label className="text-xs text-muted-foreground">Status</Label>
        <select
          value={pokemon.status || ""}
          onChange={(e) => onChange({ status: (e.target.value || null) as BattleStatus })}
          className="h-8 w-full rounded-md border border-input bg-background px-2 text-xs"
        >
          {STATUS_OPTIONS.map((opt) => (
            <option key={opt.label} value={opt.value || ""}>{opt.label}</option>
          ))}
        </select>
      </div>

      {/* Advanced Stats */}
      <Collapsible open={advancedOpen} onOpenChange={setAdvancedOpen}>
        <CollapsibleTrigger asChild>
          <Button variant="outline" size="sm" className="w-full text-xs h-7">
            Advanced (EVs / IVs / Boosts)
            <ChevronDown className={`ml-2 h-3 w-3 transition-transform ${advancedOpen ? "rotate-180" : ""}`} />
          </Button>
        </CollapsibleTrigger>
        <CollapsibleContent className="mt-3 space-y-3">
          {/* EV Presets */}
          <div className="flex gap-2">
            <Button variant="outline" size="sm" className="flex-1 text-xs h-7"
              onClick={() => onChange({ evs: { hp: 0, atk: 0, def: 0, spa: 0, spd: 0, spe: 0 } })}>
              0 EVs
            </Button>
            <Button variant="outline" size="sm" className="flex-1 text-xs h-7"
              onClick={() => onChange({ evs: { hp: 4, atk: 252, def: 0, spa: 0, spd: 0, spe: 252 } })}>
              Phys
            </Button>
            <Button variant="outline" size="sm" className="flex-1 text-xs h-7"
              onClick={() => onChange({ evs: { hp: 4, atk: 0, def: 0, spa: 252, spd: 0, spe: 252 } })}>
              Spec
            </Button>
          </div>
          {/* EVs */}
          <div>
            <div className="flex items-center justify-between mb-1">
              <Label className="text-xs text-muted-foreground">EVs</Label>
              <span className={`text-[10px] ${evTotal > 510 ? "text-destructive font-medium" : "text-muted-foreground"}`}>
                {evTotal}/510
              </span>
            </div>
            <div className="grid grid-cols-3 gap-1">
              {(["hp","atk","def","spa","spd","spe"] as const).map((stat) => (
                <div key={stat}>
                  <Label className="text-[10px] text-muted-foreground">{stat.toUpperCase()}</Label>
                  <Input type="number" min="0" max="252"
                    value={pokemon.evs[stat]}
                    onChange={(e) => updateEVs(stat, parseInt(e.target.value) || 0)}
                    className="h-7 text-xs px-1" />
                </div>
              ))}
            </div>
            {evTotal > 510 && (
              <p className="text-[10px] text-destructive mt-1">EV total exceeds 510!</p>
            )}
          </div>
          {/* IVs */}
          <div>
            <div className="flex items-center justify-between mb-1">
              <Label className="text-xs text-muted-foreground">IVs</Label>
              <Button variant="ghost" size="sm" className="h-5 text-xs px-2"
                onClick={() => onChange({ ivs: { hp: 31, atk: 31, def: 31, spa: 31, spd: 31, spe: 31 } })}>
                Perfect
              </Button>
            </div>
            <div className="grid grid-cols-3 gap-1">
              {(["hp","atk","def","spa","spd","spe"] as const).map((stat) => (
                <div key={stat}>
                  <Label className="text-[10px] text-muted-foreground">{stat.toUpperCase()}</Label>
                  <Input type="number" min="0" max="31"
                    value={pokemon.ivs[stat]}
                    onChange={(e) => updateIVs(stat, parseInt(e.target.value) || 0)}
                    className="h-7 text-xs px-1" />
                </div>
              ))}
            </div>
          </div>
          {/* Boosts */}
          <div>
            <Label className="text-xs text-muted-foreground mb-1 block">Boosts (-6 to +6)</Label>
            <div className="grid grid-cols-3 gap-1">
              {(["atk","def","spa","spd","spe"] as const).map((stat) => (
                <div key={stat}>
                  <Label className="text-[10px] text-muted-foreground">{stat.toUpperCase()}</Label>
                  <Input type="number" min="-6" max="6"
                    value={pokemon.boosts[stat] || 0}
                    onChange={(e) => updateBoosts(stat, parseInt(e.target.value) || 0)}
                    className="h-7 text-xs px-1" />
                </div>
              ))}
            </div>
          </div>
        </CollapsibleContent>
      </Collapsible>
    </div>
  );
}
