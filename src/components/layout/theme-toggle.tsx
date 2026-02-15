"use client";

import { useTheme } from "next-themes";
import { useEffect, useState } from "react";
import { Moon, Sun } from "lucide-react";

export function ThemeToggle() {
  const { theme, setTheme } = useTheme();
  const [mounted, setMounted] = useState(false);

  useEffect(() => setMounted(true), []);

  if (!mounted) {
    return <div className="w-16 h-8" />;
  }

  const isDark = theme === "dark";

  return (
    <button
      onClick={() => setTheme(isDark ? "light" : "dark")}
      className="relative inline-flex h-8 w-16 items-center rounded-full bg-muted transition-colors duration-300 focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring"
      aria-label={`Switch to ${isDark ? "light" : "dark"} mode`}
    >
      <span className="sr-only">Toggle theme</span>

      {/* Icons */}
      <Sun className="absolute left-1.5 h-4 w-4 text-amber-500 transition-opacity duration-300"
        style={{ opacity: isDark ? 0.3 : 1 }}
      />
      <Moon className="absolute right-1.5 h-4 w-4 text-indigo-400 transition-opacity duration-300"
        style={{ opacity: isDark ? 1 : 0.3 }}
      />

      {/* Sliding circle */}
      <span
        className="absolute h-6 w-6 rounded-full bg-background shadow-md transition-transform duration-300 ease-in-out"
        style={{
          transform: isDark ? "translateX(33px)" : "translateX(3px)",
        }}
      />
    </button>
  );
}
