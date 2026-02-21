"use client";

import { useState, useEffect } from "react";
import type { LocalCatch } from "@/lib/store/types";
import { useStore } from "@/lib/store";
import { PokemonSprite } from "./pokemon-sprite";
import { TypeBadge } from "./type-badge";
import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import { Label } from "@/components/ui/label";
import {
  Select,
  SelectContent,
  SelectItem,
  SelectTrigger,
  SelectValue,
} from "@/components/ui/select";
import {
  Sheet,
  SheetContent,
  SheetHeader,
  SheetTitle,
  SheetDescription,
  SheetFooter,
} from "@/components/ui/sheet";
import { Badge } from "@/components/ui/badge";
import { Skull, Box, Heart, ArrowUpCircle } from "lucide-react";

const NATURES = [
  "Hardy", "Lonely", "Brave", "Adamant", "Naughty",
  "Bold", "Docile", "Relaxed", "Impish", "Lax",
  "Timid", "Hasty", "Serious", "Jolly", "Naive",
  "Modest", "Mild", "Quiet", "Bashful", "Rash",
  "Calm", "Gentle", "Sassy", "Careful", "Quirky",
];

interface PokemonEditSheetProps {
  open: boolean;
  onOpenChange: (open: boolean) => void;
  catchData: LocalCatch | null;
  adventureId: string;
  pokemonNames: Record<number, { name: string; types: string[] }>;
  onEvolve?: () => void;
}

export function PokemonEditSheet({
  open,
  onOpenChange,
  catchData,
  adventureId,
  pokemonNames,
  onEvolve,
}: PokemonEditSheetProps) {
  const updateCatch = useStore((s) => s.updateCatch);
  const markDead = useStore((s) => s.markDead);

  const [nickname, setNickname] = useState("");
  const [level, setLevel] = useState("");
  const [nature, setNature] = useState("");
  const [ability, setAbility] = useState("");
  const [heldItem, setHeldItem] = useState("");
  const [notes, setNotes] = useState("");
  const [deathDetails, setDeathDetails] = useState("");
  const [showDeathInput, setShowDeathInput] = useState(false);

  // Reset form when catchData changes
  useEffect(() => {
    if (catchData) {
      setNickname(catchData.nickname || "");
      setLevel(catchData.level?.toString() || "");
      setNature(catchData.nature || "");
      setAbility(catchData.ability || "");
      setHeldItem(catchData.heldItem || "");
      setNotes(catchData.notes || "");
      setDeathDetails("");
      setShowDeathInput(false);
    }
  }, [catchData]);

  if (!catchData) return null;

  const dexId = catchData.currentEvolutionDexId || catchData.pokemonDexId;
  const pData = pokemonNames[dexId];
  const displayName = catchData.nickname || pData?.name || `#${dexId}`;
  const types = pData?.types || [];

  const handleSave = () => {
    const updates: Partial<LocalCatch> = {
      nickname: nickname.trim() || null,
      level: level ? parseInt(level) : null,
      nature: nature || null,
      ability: ability.trim() || null,
      heldItem: heldItem.trim() || null,
      notes: notes.trim() || null,
    };
    updateCatch(adventureId, catchData.id, updates);
    onOpenChange(false);
  };

  const handleStatusChange = (newStatus: "in_team" | "alive") => {
    updateCatch(adventureId, catchData.id, { status: newStatus });
  };

  const handleMarkDead = () => {
    if (!showDeathInput) {
      setShowDeathInput(true);
      return;
    }
    markDead(adventureId, catchData.id, deathDetails.trim() || undefined);
    onOpenChange(false);
  };

  return (
    <Sheet open={open} onOpenChange={onOpenChange}>
      <SheetContent className="w-80 sm:w-96 overflow-y-auto">
        <SheetHeader>
          <div className="flex items-center gap-3">
            <PokemonSprite dexId={dexId} size="md" name={displayName} />
            <div>
              <SheetTitle className="text-sm">{displayName}</SheetTitle>
              <SheetDescription className="flex items-center gap-1 mt-1">
                {types.map((t) => (
                  <TypeBadge key={t} type={t} />
                ))}
              </SheetDescription>
            </div>
          </div>
        </SheetHeader>

        <div className="space-y-4 px-4 py-4">
          {/* Status buttons */}
          <div>
            <Label className="text-xs mb-2 block">Status</Label>
            <div className="flex gap-2">
              <Button
                type="button"
                size="sm"
                variant={catchData.status === "in_team" ? "default" : "outline"}
                className="flex-1 text-xs"
                onClick={() => handleStatusChange("in_team")}
                disabled={catchData.status === "dead"}
              >
                <Heart className="h-3 w-3 mr-1" />
                In Team
              </Button>
              <Button
                type="button"
                size="sm"
                variant={catchData.status === "alive" || catchData.status === "boxed" ? "default" : "outline"}
                className="flex-1 text-xs"
                onClick={() => handleStatusChange("alive")}
                disabled={catchData.status === "dead"}
              >
                <Box className="h-3 w-3 mr-1" />
                PC Box
              </Button>
            </div>
          </div>

          {/* Nickname */}
          <div className="space-y-1.5">
            <Label htmlFor="nickname" className="text-xs">Nickname</Label>
            <Input
              id="nickname"
              value={nickname}
              onChange={(e) => setNickname(e.target.value)}
              placeholder={pData?.name || "No nickname"}
              className="h-8 text-sm"
            />
          </div>

          {/* Level */}
          <div className="space-y-1.5">
            <Label htmlFor="level" className="text-xs">Level</Label>
            <Input
              id="level"
              type="number"
              min={1}
              max={100}
              value={level}
              onChange={(e) => setLevel(e.target.value)}
              placeholder="1-100"
              className="h-8 text-sm"
            />
          </div>

          {/* Nature */}
          <div className="space-y-1.5">
            <Label htmlFor="nature" className="text-xs">Nature</Label>
            <Select value={nature} onValueChange={setNature}>
              <SelectTrigger id="nature" className="h-8 text-sm">
                <SelectValue placeholder="Select nature..." />
              </SelectTrigger>
              <SelectContent>
                {NATURES.map((n) => (
                  <SelectItem key={n} value={n}>{n}</SelectItem>
                ))}
              </SelectContent>
            </Select>
          </div>

          {/* Ability */}
          <div className="space-y-1.5">
            <Label htmlFor="ability" className="text-xs">Ability</Label>
            <Input
              id="ability"
              value={ability}
              onChange={(e) => setAbility(e.target.value)}
              placeholder="Ability name"
              className="h-8 text-sm"
            />
          </div>

          {/* Held Item */}
          <div className="space-y-1.5">
            <Label htmlFor="held-item" className="text-xs">Held Item</Label>
            <Input
              id="held-item"
              value={heldItem}
              onChange={(e) => setHeldItem(e.target.value)}
              placeholder="Item name"
              className="h-8 text-sm"
            />
          </div>

          {/* Notes */}
          <div className="space-y-1.5">
            <Label htmlFor="notes" className="text-xs">Notes</Label>
            <Input
              id="notes"
              value={notes}
              onChange={(e) => setNotes(e.target.value)}
              placeholder="Any notes..."
              className="h-8 text-sm"
            />
          </div>

          {/* Evolve button */}
          {onEvolve && catchData.status !== "dead" && (
            <Button
              type="button"
              variant="outline"
              size="sm"
              className="w-full text-xs"
              onClick={() => {
                onEvolve();
              }}
            >
              <ArrowUpCircle className="h-3.5 w-3.5 mr-1.5" />
              Evolve Pokemon
            </Button>
          )}

          {/* Mark dead */}
          {catchData.status !== "dead" && (
            <div className="space-y-2 pt-2 border-t">
              {showDeathInput && (
                <div className="space-y-1.5">
                  <Label htmlFor="death-details" className="text-xs text-destructive">How did it faint?</Label>
                  <Input
                    id="death-details"
                    value={deathDetails}
                    onChange={(e) => setDeathDetails(e.target.value)}
                    placeholder="e.g. Crit from Rival's Gyarados"
                    className="h-8 text-sm"
                    autoFocus
                  />
                </div>
              )}
              <Button
                type="button"
                variant="destructive"
                size="sm"
                className="w-full text-xs"
                onClick={handleMarkDead}
              >
                <Skull className="h-3.5 w-3.5 mr-1.5" />
                {showDeathInput ? "Confirm Death" : "Mark as Dead"}
              </Button>
            </div>
          )}

          {/* Already dead info */}
          {catchData.status === "dead" && (
            <div className="pt-2 border-t">
              <Badge variant="destructive" className="text-xs">
                <Skull className="h-3 w-3 mr-1" />
                Deceased
              </Badge>
              {catchData.deathDetails && (
                <p className="text-xs text-muted-foreground mt-1 italic">
                  {catchData.deathDetails}
                </p>
              )}
              {catchData.diedAt && (
                <p className="text-[9px] text-muted-foreground mt-0.5">
                  {new Date(catchData.diedAt).toLocaleDateString()}
                </p>
              )}
            </div>
          )}
        </div>

        <SheetFooter className="px-4">
          <Button type="button" size="sm" className="w-full" onClick={handleSave}>
            Save Changes
          </Button>
        </SheetFooter>
      </SheetContent>
    </Sheet>
  );
}
