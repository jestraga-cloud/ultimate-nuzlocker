"use client";

import { useState, useEffect, useMemo } from "react";
import type { CalculatorMove } from "@/types/calculator";
import { getMove, getPokemonMovesByGeneration } from "@/lib/pokeapi/moves";
import { Input } from "@/components/ui/input";
import { Command, CommandEmpty, CommandGroup, CommandInput, CommandItem, CommandList } from "@/components/ui/command";
import { Popover, PopoverContent, PopoverTrigger } from "@/components/ui/popover";
import { TypeBadge } from "@/components/pokemon/type-badge";
import { Badge } from "@/components/ui/badge";
import { Loader2 } from "lucide-react";

interface MoveInputProps {
  value: CalculatorMove | null;
  onChange: (move: CalculatorMove | null) => void;
  generation: number;
  pokemonDexId: number;
  placeholder?: string;
}

export function MoveInput({
  value,
  onChange,
  generation,
  pokemonDexId,
  placeholder = "Select move",
}: MoveInputProps) {
  const [open, setOpen] = useState(false);
  const [search, setSearch] = useState("");
  const [allMoves, setAllMoves] = useState<string[]>([]);
  const [loading, setLoading] = useState(false);

  // Fetch Pokemon's moveset on mount
  useEffect(() => {
    const fetchMoves = async () => {
      setLoading(true);
      try {
        const moves = await getPokemonMovesByGeneration(pokemonDexId, generation);
        setAllMoves(moves);
      } catch (err) {
        console.error("Error fetching moves:", err);
        setAllMoves([]);
      } finally {
        setLoading(false);
      }
    };

    fetchMoves();
  }, [pokemonDexId, generation]);

  // Filter moves based on search
  const filteredMoves = useMemo(() => {
    if (!search) return allMoves.slice(0, 50); // Limit to 50 for performance
    const searchLower = search.toLowerCase();
    return allMoves
      .filter((move) => move.toLowerCase().includes(searchLower))
      .slice(0, 50);
  }, [search, allMoves]);

  const handleSelect = async (moveName: string) => {
    try {
      const moveData = await getMove(moveName);
      const calculatorMove: CalculatorMove = {
        name: moveData.name,
        type: moveData.type,
        category: moveData.category,
        basePower: moveData.power,
        accuracy: moveData.accuracy,
        priority: moveData.priority,
        isCrit: false,
        hits: 1,
      };
      onChange(calculatorMove);
      setOpen(false);
      setSearch("");
    } catch (err) {
      console.error("Error loading move:", err);
    }
  };

  const handleClear = () => {
    onChange(null);
    setSearch("");
  };

  return (
    <div className="relative">
      <Popover open={open} onOpenChange={setOpen}>
        <PopoverTrigger asChild>
          <div className="relative">
            <Input
              value={value?.name || ""}
              onChange={(e) => {
                setSearch(e.target.value);
                setOpen(true);
              }}
              placeholder={placeholder}
              className="pr-8"
              onFocus={() => setOpen(true)}
            />
            {loading && (
              <Loader2 className="absolute right-2 top-1/2 -translate-y-1/2 h-4 w-4 animate-spin text-muted-foreground" />
            )}
          </div>
        </PopoverTrigger>
        <PopoverContent className="w-[var(--radix-popover-trigger-width)] p-0" align="start">
          <Command>
            <CommandInput
              placeholder="Search moves..."
              value={search}
              onValueChange={setSearch}
            />
            <CommandList>
              <CommandEmpty>No moves found</CommandEmpty>
              <CommandGroup>
                {filteredMoves.map((moveName) => (
                  <CommandItem
                    key={moveName}
                    value={moveName}
                    onSelect={() => handleSelect(moveName)}
                    className="text-xs"
                  >
                    {moveName}
                  </CommandItem>
                ))}
              </CommandGroup>
            </CommandList>
          </Command>
        </PopoverContent>
      </Popover>

      {/* Move details display */}
      {value && (
        <div className="mt-1 flex items-center gap-2 text-xs">
          <TypeBadge type={value.type} size="sm" />
          <Badge variant="outline" className="text-xs px-1.5 py-0">
            {value.category}
          </Badge>
          {value.basePower && (
            <span className="text-muted-foreground">PWR: {value.basePower}</span>
          )}
          {value.accuracy && (
            <span className="text-muted-foreground">ACC: {value.accuracy}%</span>
          )}
          <button
            onClick={handleClear}
            className="ml-auto text-muted-foreground hover:text-foreground"
          >
            ✕
          </button>
        </div>
      )}
    </div>
  );
}
