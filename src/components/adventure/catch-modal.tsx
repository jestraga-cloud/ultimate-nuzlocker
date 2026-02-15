"use client";

import { useState } from "react";
import type { Encounter } from "@/types/game";
import { PokemonSprite } from "@/components/pokemon/pokemon-sprite";
import { TypeBadge } from "@/components/pokemon/type-badge";
import {
  Dialog,
  DialogContent,
  DialogHeader,
  DialogTitle,
} from "@/components/ui/dialog";
import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import { Label } from "@/components/ui/label";

interface CatchModalProps {
  open: boolean;
  onOpenChange: (open: boolean) => void;
  encounters: Encounter[];
  pokemonNames: Record<number, { name: string; types: string[] }>;
  onCatch: (data: {
    pokemonDexId: number;
    nickname: string | null;
    level: number | null;
  }) => void;
}

export function CatchModal({
  open,
  onOpenChange,
  encounters,
  pokemonNames,
  onCatch,
}: CatchModalProps) {
  const [selectedDexId, setSelectedDexId] = useState<number | null>(null);
  const [nickname, setNickname] = useState("");
  const [level, setLevel] = useState("");
  const [caught, setCaught] = useState(false);

  const handleCatch = () => {
    if (!selectedDexId) return;
    setCaught(true);

    setTimeout(() => {
      onCatch({
        pokemonDexId: selectedDexId,
        nickname: nickname.trim() || null,
        level: level ? parseInt(level) : null,
      });
      handleClose();
    }, 800);
  };

  const handleClose = () => {
    setSelectedDexId(null);
    setNickname("");
    setLevel("");
    setCaught(false);
    onOpenChange(false);
  };

  // Deduplicate by dex ID
  const uniqueEncounters = encounters.filter(
    (enc, i, arr) =>
      arr.findIndex((e) => e.pokemonDexId === enc.pokemonDexId) === i
  );

  return (
    <Dialog open={open} onOpenChange={handleClose}>
      <DialogContent className="max-w-md">
        <DialogHeader>
          <DialogTitle
            className="text-sm"
            style={{ fontFamily: "'Press Start 2P', monospace" }}
          >
            Catch Pokemon
          </DialogTitle>
        </DialogHeader>

        {caught ? (
          <div className="flex flex-col items-center justify-center py-8 space-y-4">
            {selectedDexId && (
              <div className="animate-pixel-bounce">
                <PokemonSprite
                  dexId={selectedDexId}
                  size="xl"
                  name={pokemonNames[selectedDexId]?.name}
                />
              </div>
            )}
            <p
              className="text-xs text-primary"
              style={{ fontFamily: "'Press Start 2P', monospace" }}
            >
              Gotcha!
            </p>
          </div>
        ) : (
          <div className="space-y-4">
            {/* Pokemon selection */}
            <div className="space-y-2">
              <Label className="text-xs">Select Pokemon</Label>
              <div className="grid grid-cols-2 gap-2 max-h-64 overflow-y-auto custom-scrollbar">
                {uniqueEncounters.map((enc) => {
                  const pokemon = pokemonNames[enc.pokemonDexId];
                  const name = pokemon?.name || `#${enc.pokemonDexId}`;
                  const isSelected = selectedDexId === enc.pokemonDexId;

                  return (
                    <button
                      key={enc.pokemonDexId}
                      onClick={() => setSelectedDexId(enc.pokemonDexId)}
                      className={`flex flex-col items-center gap-1 p-3 rounded-lg border transition-colors ${
                        isSelected
                          ? "border-primary bg-primary/10"
                          : "border-border hover:bg-muted"
                      }`}
                    >
                      <PokemonSprite
                        dexId={enc.pokemonDexId}
                        size="md"
                        name={name}
                      />
                      <span className="text-[10px] truncate w-full text-center">
                        {name}
                      </span>
                    </button>
                  );
                })}
              </div>
            </div>

            {selectedDexId && (
              <>
                {/* Selected pokemon info */}
                <div className="flex items-center gap-4 p-4 rounded-lg bg-muted/50">
                  <PokemonSprite
                    dexId={selectedDexId}
                    size="lg"
                    name={pokemonNames[selectedDexId]?.name}
                  />
                  <div>
                    <p className="text-sm font-medium">
                      {pokemonNames[selectedDexId]?.name || `#${selectedDexId}`}
                    </p>
                    <div className="flex gap-1 mt-1">
                      {pokemonNames[selectedDexId]?.types.map((t) => (
                        <TypeBadge key={t} type={t} size="sm" />
                      ))}
                    </div>
                  </div>
                </div>

                {/* Nickname and level */}
                <div className="grid grid-cols-2 gap-3">
                  <div className="space-y-1">
                    <Label htmlFor="nickname" className="text-xs">
                      Nickname
                    </Label>
                    <Input
                      id="nickname"
                      placeholder="Optional"
                      value={nickname}
                      onChange={(e) => setNickname(e.target.value)}
                      className="h-8 text-xs"
                    />
                  </div>
                  <div className="space-y-1">
                    <Label htmlFor="level" className="text-xs">
                      Level
                    </Label>
                    <Input
                      id="level"
                      type="number"
                      placeholder="?"
                      value={level}
                      onChange={(e) => setLevel(e.target.value)}
                      className="h-8 text-xs"
                      min={1}
                      max={100}
                    />
                  </div>
                </div>

                <Button onClick={handleCatch} className="w-full">
                  Catch!
                </Button>
              </>
            )}
          </div>
        )}
      </DialogContent>
    </Dialog>
  );
}
