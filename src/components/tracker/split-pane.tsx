"use client";

import type { DetailPaneMode } from "@/lib/store/types";
import { Button } from "@/components/ui/button";
import { ChevronLeft, Maximize2, X } from "lucide-react";

interface SplitPaneProps {
  mode: DetailPaneMode;
  leftPane: React.ReactNode;
  rightPane: React.ReactNode;
  onModeChange: (mode: DetailPaneMode) => void;
}

const GRID_COLUMNS: Record<DetailPaneMode, string> = {
  collapsed: "1fr 0fr",
  split: "minmax(280px, 35%) 1fr",
  fullscreen: "0fr 1fr",
};

export function SplitPane({ mode, leftPane, rightPane, onModeChange }: SplitPaneProps) {
  return (
    <div
      className="flex-1 overflow-hidden"
      style={{
        display: "grid",
        gridTemplateColumns: GRID_COLUMNS[mode],
        transition: "grid-template-columns 300ms ease-in-out",
      }}
    >
      {/* Left pane (route list) */}
      <div
        className={`overflow-hidden transition-opacity duration-300 ${
          mode === "fullscreen" ? "opacity-0 pointer-events-none" : "opacity-100"
        } ${mode !== "collapsed" ? "border-r" : ""}`}
      >
        <div
          className={`h-full overflow-y-auto custom-scrollbar ${
            mode === "collapsed" ? "max-w-[600px] mx-auto" : ""
          }`}
        >
          {leftPane}
        </div>
      </div>

      {/* Right pane (route detail) */}
      <div
        className={`overflow-hidden relative transition-opacity duration-300 ${
          mode === "collapsed" ? "opacity-0 pointer-events-none" : "opacity-100"
        }`}
      >
        {/* Fullscreen: Back button */}
        {mode === "fullscreen" && (
          <div className="sticky top-0 z-10 px-3 py-2 border-b bg-background/95 backdrop-blur-sm">
            <Button
              variant="ghost"
              size="sm"
              className="text-xs gap-1"
              onClick={() => onModeChange("split")}
            >
              <ChevronLeft className="h-3.5 w-3.5" />
              Back to Routes
            </Button>
          </div>
        )}

        {/* Split: Close + Maximize buttons */}
        {mode === "split" && (
          <div className="absolute top-2 right-2 z-10 flex items-center gap-1">
            <Button
              variant="ghost"
              size="icon"
              className="h-7 w-7"
              onClick={() => onModeChange("fullscreen")}
              title="Expand to full width"
            >
              <Maximize2 className="h-3.5 w-3.5" />
            </Button>
            <Button
              variant="ghost"
              size="icon"
              className="h-7 w-7"
              onClick={() => onModeChange("collapsed")}
              title="Close detail panel"
            >
              <X className="h-3.5 w-3.5" />
            </Button>
          </div>
        )}

        <div className="h-full overflow-y-auto custom-scrollbar">
          {rightPane}
        </div>
      </div>
    </div>
  );
}
