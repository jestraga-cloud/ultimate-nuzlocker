"use client";

import { ThemePicker } from "@/components/settings/theme-picker";
import { ThemeToggle } from "@/components/layout/theme-toggle";

export default function SettingsPage() {
  return (
    <div className="mx-auto max-w-2xl px-4 py-8">
      <h1
        className="text-lg text-primary mb-8"
        style={{ fontFamily: "'Press Start 2P', monospace" }}
      >
        Settings
      </h1>

      {/* Appearance section */}
      <section className="space-y-6">
        <div>
          <h2 className="text-sm font-semibold mb-1">Appearance</h2>
          <p className="text-xs text-muted-foreground">
            Customize how Ultimate Nuzlocker looks
          </p>
        </div>

        {/* Light/Dark toggle */}
        <div className="flex items-center justify-between rounded-xl border bg-card p-4">
          <div>
            <h3 className="text-sm font-medium">Mode</h3>
            <p className="text-xs text-muted-foreground">
              Switch between light and dark mode
            </p>
          </div>
          <ThemeToggle />
        </div>

        {/* Color theme picker */}
        <div className="space-y-4">
          <div>
            <h3 className="text-sm font-medium">Color Theme</h3>
            <p className="text-xs text-muted-foreground">
              Choose a visual style for the app
            </p>
          </div>
          <ThemePicker />
        </div>
      </section>
    </div>
  );
}
