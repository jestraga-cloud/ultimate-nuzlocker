import type { FieldConditions, Weather, Terrain, SideConditions } from "@/types/calculator";
import { Label } from "@/components/ui/label";
import { Checkbox } from "@/components/ui/checkbox";
import { Input } from "@/components/ui/input";
import { Cloud, Zap, Wind } from "lucide-react";

interface FieldConditionsProps {
  field: FieldConditions;
  onChange: (field: FieldConditions) => void;
}

const WEATHER_OPTIONS: { value: Weather; label: string }[] = [
  { value: null, label: "None" },
  { value: "sun", label: "Sun" },
  { value: "rain", label: "Rain" },
  { value: "sand", label: "Sandstorm" },
  { value: "hail", label: "Hail" },
  { value: "harsh-sunshine", label: "Harsh Sunshine" },
  { value: "heavy-rain", label: "Heavy Rain" },
  { value: "strong-winds", label: "Strong Winds" },
];

const TERRAIN_OPTIONS: { value: Terrain; label: string }[] = [
  { value: null, label: "None" },
  { value: "electric", label: "Electric" },
  { value: "grassy", label: "Grassy" },
  { value: "psychic", label: "Psychic" },
  { value: "misty", label: "Misty" },
];

export function FieldConditionsComponent({ field, onChange }: FieldConditionsProps) {
  const updateWeather = (weather: Weather) => {
    onChange({ ...field, weather });
  };

  const updateTerrain = (terrain: Terrain) => {
    onChange({ ...field, terrain });
  };

  const updateAttackerSide = (updates: Partial<SideConditions>) => {
    onChange({
      ...field,
      attackerSide: { ...field.attackerSide, ...updates },
    });
  };

  const updateDefenderSide = (updates: Partial<SideConditions>) => {
    onChange({
      ...field,
      defenderSide: { ...field.defenderSide, ...updates },
    });
  };

  return (
    <div className="space-y-6">
      {/* Weather */}
      <div>
        <div className="flex items-center gap-2 mb-3">
          <Cloud className="h-4 w-4 text-muted-foreground" />
          <Label className="text-xs font-medium uppercase text-muted-foreground">Weather</Label>
        </div>
        <select
          value={field.weather || ""}
          onChange={(e) => updateWeather((e.target.value || null) as Weather)}
          className="h-9 w-full rounded-md border border-input bg-background px-3 text-sm"
        >
          {WEATHER_OPTIONS.map((option) => (
            <option key={option.label} value={option.value || ""}>
              {option.label}
            </option>
          ))}
        </select>
      </div>

      {/* Terrain */}
      <div>
        <div className="flex items-center gap-2 mb-3">
          <Wind className="h-4 w-4 text-muted-foreground" />
          <Label className="text-xs font-medium uppercase text-muted-foreground">Terrain</Label>
        </div>
        <select
          value={field.terrain || ""}
          onChange={(e) => updateTerrain((e.target.value || null) as Terrain)}
          className="h-9 w-full rounded-md border border-input bg-background px-3 text-sm"
        >
          {TERRAIN_OPTIONS.map((option) => (
            <option key={option.label} value={option.value || ""}>
              {option.label}
            </option>
          ))}
        </select>
      </div>

      {/* Attacker Side Conditions */}
      <div>
        <div className="flex items-center gap-2 mb-3">
          <Zap className="h-4 w-4 text-primary" />
          <Label className="text-xs font-medium uppercase text-muted-foreground">
            Attacker Side
          </Label>
        </div>
        <div className="space-y-3 pixel-border rounded-lg bg-card/50 p-4">
          <div className="flex items-center space-x-2">
            <Checkbox
              id="attacker-reflect"
              checked={field.attackerSide.reflect}
              onCheckedChange={(checked) =>
                updateAttackerSide({ reflect: checked as boolean })
              }
            />
            <label
              htmlFor="attacker-reflect"
              className="text-sm font-medium leading-none cursor-pointer"
            >
              Reflect
            </label>
          </div>

          <div className="flex items-center space-x-2">
            <Checkbox
              id="attacker-light-screen"
              checked={field.attackerSide.lightScreen}
              onCheckedChange={(checked) =>
                updateAttackerSide({ lightScreen: checked as boolean })
              }
            />
            <label
              htmlFor="attacker-light-screen"
              className="text-sm font-medium leading-none cursor-pointer"
            >
              Light Screen
            </label>
          </div>

          <div className="flex items-center space-x-2">
            <Checkbox
              id="attacker-aurora-veil"
              checked={field.attackerSide.auroraVeil}
              onCheckedChange={(checked) =>
                updateAttackerSide({ auroraVeil: checked as boolean })
              }
            />
            <label
              htmlFor="attacker-aurora-veil"
              className="text-sm font-medium leading-none cursor-pointer"
            >
              Aurora Veil
            </label>
          </div>

          <div className="flex items-center space-x-2">
            <Checkbox
              id="attacker-tailwind"
              checked={field.attackerSide.tailwind}
              onCheckedChange={(checked) =>
                updateAttackerSide({ tailwind: checked as boolean })
              }
            />
            <label
              htmlFor="attacker-tailwind"
              className="text-sm font-medium leading-none cursor-pointer"
            >
              Tailwind
            </label>
          </div>

          <div className="flex items-center gap-3">
            <label htmlFor="attacker-spikes" className="text-sm font-medium leading-none">
              Spikes
            </label>
            <Input
              id="attacker-spikes"
              type="number" min="0" max="3"
              value={field.attackerSide.spikes}
              onChange={(e) => updateAttackerSide({ spikes: Math.min(3, Math.max(0, parseInt(e.target.value) || 0)) })}
              className="h-7 w-14 text-xs px-2"
            />
          </div>

          <div className="flex items-center gap-3">
            <label htmlFor="attacker-toxic-spikes" className="text-sm font-medium leading-none">
              Toxic Spikes
            </label>
            <Input
              id="attacker-toxic-spikes"
              type="number" min="0" max="2"
              value={field.attackerSide.toxicSpikes}
              onChange={(e) => updateAttackerSide({ toxicSpikes: Math.min(2, Math.max(0, parseInt(e.target.value) || 0)) })}
              className="h-7 w-14 text-xs px-2"
            />
          </div>
        </div>
      </div>

      {/* Defender Side Conditions */}
      <div>
        <div className="flex items-center gap-2 mb-3">
          <Zap className="h-4 w-4 text-destructive" />
          <Label className="text-xs font-medium uppercase text-muted-foreground">
            Defender Side
          </Label>
        </div>
        <div className="space-y-3 pixel-border rounded-lg bg-card/50 p-4">
          <div className="flex items-center space-x-2">
            <Checkbox
              id="defender-reflect"
              checked={field.defenderSide.reflect}
              onCheckedChange={(checked) =>
                updateDefenderSide({ reflect: checked as boolean })
              }
            />
            <label
              htmlFor="defender-reflect"
              className="text-sm font-medium leading-none cursor-pointer"
            >
              Reflect
            </label>
          </div>

          <div className="flex items-center space-x-2">
            <Checkbox
              id="defender-light-screen"
              checked={field.defenderSide.lightScreen}
              onCheckedChange={(checked) =>
                updateDefenderSide({ lightScreen: checked as boolean })
              }
            />
            <label
              htmlFor="defender-light-screen"
              className="text-sm font-medium leading-none cursor-pointer"
            >
              Light Screen
            </label>
          </div>

          <div className="flex items-center space-x-2">
            <Checkbox
              id="defender-aurora-veil"
              checked={field.defenderSide.auroraVeil}
              onCheckedChange={(checked) =>
                updateDefenderSide({ auroraVeil: checked as boolean })
              }
            />
            <label
              htmlFor="defender-aurora-veil"
              className="text-sm font-medium leading-none cursor-pointer"
            >
              Aurora Veil
            </label>
          </div>

          <div className="flex items-center space-x-2">
            <Checkbox
              id="defender-stealth-rock"
              checked={field.defenderSide.stealthRock}
              onCheckedChange={(checked) =>
                updateDefenderSide({ stealthRock: checked as boolean })
              }
            />
            <label
              htmlFor="defender-stealth-rock"
              className="text-sm font-medium leading-none cursor-pointer"
            >
              Stealth Rock
            </label>
          </div>

          <div className="flex items-center gap-3">
            <label htmlFor="defender-spikes" className="text-sm font-medium leading-none">
              Spikes
            </label>
            <Input
              id="defender-spikes"
              type="number" min="0" max="3"
              value={field.defenderSide.spikes}
              onChange={(e) => updateDefenderSide({ spikes: Math.min(3, Math.max(0, parseInt(e.target.value) || 0)) })}
              className="h-7 w-14 text-xs px-2"
            />
          </div>

          <div className="flex items-center gap-3">
            <label htmlFor="defender-toxic-spikes" className="text-sm font-medium leading-none">
              Toxic Spikes
            </label>
            <Input
              id="defender-toxic-spikes"
              type="number" min="0" max="2"
              value={field.defenderSide.toxicSpikes}
              onChange={(e) => updateDefenderSide({ toxicSpikes: Math.min(2, Math.max(0, parseInt(e.target.value) || 0)) })}
              className="h-7 w-14 text-xs px-2"
            />
          </div>
        </div>
      </div>

      {/* Other Field Effects */}
      <div>
        <Label className="text-xs font-medium uppercase text-muted-foreground mb-3 block">
          Other Effects
        </Label>
        <div className="space-y-3 pixel-border rounded-lg bg-card/50 p-4">
          <div className="flex items-center space-x-2">
            <Checkbox
              id="gravity"
              checked={field.gravity}
              onCheckedChange={(checked) =>
                onChange({ ...field, gravity: checked as boolean })
              }
            />
            <label
              htmlFor="gravity"
              className="text-sm font-medium leading-none cursor-pointer"
            >
              Gravity
            </label>
          </div>

          <div className="flex items-center space-x-2">
            <Checkbox
              id="trick-room"
              checked={field.trickRoom}
              onCheckedChange={(checked) =>
                onChange({ ...field, trickRoom: checked as boolean })
              }
            />
            <label
              htmlFor="trick-room"
              className="text-sm font-medium leading-none cursor-pointer"
            >
              Trick Room
            </label>
          </div>
        </div>
      </div>
    </div>
  );
}
