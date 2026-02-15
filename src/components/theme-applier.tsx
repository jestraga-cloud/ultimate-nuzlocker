"use client";

import { useEffect } from "react";
import { useStore } from "@/lib/store";

export function ThemeApplier() {
  const colorTheme = useStore((s) => s.colorTheme);

  useEffect(() => {
    document.documentElement.setAttribute("data-theme", colorTheme);
  }, [colorTheme]);

  return null;
}
