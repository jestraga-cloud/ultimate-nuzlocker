import { useState } from "react";
import type { CalculatorMove } from "@/types/calculator";
import { getMove } from "@/lib/pokeapi/moves";
import { Input } from "@/components/ui/input";
import { Label } from "@/components/ui/label";
import { Button } from "@/components/ui/button";
import { Checkbox } from "@/components/ui/checkbox";
import { TypeBadge } from "@/components/pokemon/type-badge";
import { Loader2, Sword, Sparkles, Shield } from "lucide-react";

interface MoveSelectorProps {
  value: CalculatorMove | null;
  onChange: (move: CalculatorMove | null) => void;
}

export function MoveSelector({ value, onChange }: MoveSelectorProps) {
  const [moveInput, setMoveInput] = useState("");
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState<string | null>(null);

  const loadMove = async () => {
    if (!moveInput.trim()) {
      setError("Please enter a move name");
      return;
    }

    setLoading(true);
    setError(null);

    try {
      const moveData = await getMove(moveInput);

      const calculatorMove: CalculatorMove = {
        name: moveData.name,
        type: moveData.type,
        category: moveData.category,
        basePower: moveData.power,
        accuracy: moveData.accuracy,
        priority: moveData.priority,
        isCrit: false,
        hits: moveData.maxHits || undefined,
      };

      onChange(calculatorMove);
      setMoveInput("");
    } catch (err) {
      setError(err instanceof Error ? err.message : "Failed to load move");
    } finally {
      setLoading(false);
    }
  };

  const updateCrit = (isCrit: boolean) => {
    if (value) {
      onChange({ ...value, isCrit });
    }
  };

  return (
    <div className="space-y-4">
      {/* Input Section */}
      <div className="space-y-2">
        <Label htmlFor="move-name" className="text-xs uppercase">
          Move Name
        </Label>
        <div className="flex gap-2">
          <Input
            id="move-name"
            type="text"
            placeholder="e.g., Thunderbolt"
            value={moveInput}
            onChange={(e) => setMoveInput(e.target.value)}
            onKeyDown={(e) => {
              if (e.key === "Enter") {
                loadMove();
              }
            }}
            className="h-9 text-sm"
          />
          <Button
            onClick={loadMove}
            disabled={loading || !moveInput.trim()}
            size="sm"
            className="h-9"
          >
            {loading ? <Loader2 className="h-4 w-4 animate-spin" /> : "Load"}
          </Button>
        </div>
        {error && <p className="text-xs text-destructive">{error}</p>}
      </div>

      {/* Selected Move Display */}
      {value && (
        <div className="pixel-border rounded-lg bg-card/50 p-4 space-y-3">
          {/* Move Name & Type */}
          <div>
            <p className="font-semibold mb-1">{value.name}</p>
            <TypeBadge type={value.type} size="sm" />
          </div>

          {/* Move Stats */}
          <div className="grid grid-cols-3 gap-3 text-xs">
            <div className="pixel-border rounded bg-background/50 p-2">
              <div className="flex items-center gap-1 text-muted-foreground mb-1">
                {value.category === "physical" && <Sword className="h-3 w-3" />}
                {value.category === "special" && <Sparkles className="h-3 w-3" />}
                {value.category === "status" && <Shield className="h-3 w-3" />}
                <span className="capitalize">{value.category}</span>
              </div>
            </div>

            <div className="pixel-border rounded bg-background/50 p-2">
              <p className="text-muted-foreground mb-1">Power</p>
              <p className="font-semibold">{value.basePower ?? "-"}</p>
            </div>

            <div className="pixel-border rounded bg-background/50 p-2">
              <p className="text-muted-foreground mb-1">Accuracy</p>
              <p className="font-semibold">{value.accuracy ?? "-"}%</p>
            </div>
          </div>

          {/* Move Options */}
          <div className="space-y-2 pt-2 border-t border-border">
            <div className="flex items-center space-x-2">
              <Checkbox
                id="crit"
                checked={value.isCrit}
                onCheckedChange={(checked) => updateCrit(checked as boolean)}
              />
              <label
                htmlFor="crit"
                className="text-sm font-medium leading-none cursor-pointer"
              >
                Critical Hit
              </label>
            </div>
          </div>

          <Button
            variant="outline"
            size="sm"
            onClick={() => onChange(null)}
            className="w-full text-xs"
          >
            Clear
          </Button>
        </div>
      )}
    </div>
  );
}
