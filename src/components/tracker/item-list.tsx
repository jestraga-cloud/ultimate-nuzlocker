"use client";

import { useMemo, useState } from "react";
import type { RouteItem } from "@/types/game";
import {
  Collapsible,
  CollapsibleContent,
  CollapsibleTrigger,
} from "@/components/ui/collapsible";
import { Badge } from "@/components/ui/badge";
import { ChevronDown, Eye, Lock } from "lucide-react";

interface ItemListProps {
  items: RouteItem[];
}

export function ItemList({ items }: ItemListProps) {
  const [isOpen, setIsOpen] = useState(true);

  const groupedByCategory = useMemo(() => {
    const groups: Record<string, RouteItem[]> = {};
    for (const item of items) {
      const cat = item.itemCategory || "Other";
      if (!groups[cat]) groups[cat] = [];
      groups[cat].push(item);
    }
    return groups;
  }, [items]);

  if (items.length === 0) return null;

  return (
    <Collapsible open={isOpen} onOpenChange={setIsOpen}>
      <CollapsibleTrigger className="flex w-full items-center justify-between rounded-lg bg-muted/50 px-4 py-3 text-sm font-medium hover:bg-muted transition-colors">
        <span className="flex items-center gap-2">
          <span className="text-lg">🎒</span>
          Items
          <span className="text-xs text-muted-foreground font-normal">
            ({items.length})
          </span>
        </span>
        <ChevronDown
          className={`h-4 w-4 text-muted-foreground transition-transform ${
            isOpen ? "rotate-180" : ""
          }`}
        />
      </CollapsibleTrigger>
      <CollapsibleContent className="pt-2 space-y-4">
        {Object.entries(groupedByCategory).map(([category, categoryItems]) => (
          <div key={category} className="space-y-1">
            <h4 className="text-xs font-medium text-muted-foreground px-2 uppercase tracking-wider">
              {category}
            </h4>
            <div className="space-y-1">
              {categoryItems.map((item) => (
                <div
                  key={item.id}
                  className="flex items-start gap-3 rounded-lg px-3 py-2 hover:bg-muted/30 transition-colors"
                >
                  <div className="flex-1 min-w-0">
                    <div className="flex items-center gap-2">
                      <span className="text-sm font-medium">
                        {item.itemName}
                      </span>
                      {item.isHidden && (
                        <Eye className="h-3 w-3 text-muted-foreground" />
                      )}
                      {item.requires && (
                        <Badge
                          variant="outline"
                          className="text-[10px] px-1 py-0"
                        >
                          <Lock className="h-2.5 w-2.5 mr-0.5" />
                          {item.requires}
                        </Badge>
                      )}
                    </div>
                    {item.description && (
                      <p className="text-xs text-muted-foreground mt-0.5">
                        {item.description}
                      </p>
                    )}
                    {item.locationHint && (
                      <p className="text-[10px] text-muted-foreground italic mt-0.5">
                        {item.locationHint}
                      </p>
                    )}
                  </div>
                </div>
              ))}
            </div>
          </div>
        ))}
      </CollapsibleContent>
    </Collapsible>
  );
}
