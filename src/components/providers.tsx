"use client";

import { ThemeProvider } from "next-themes";
import { TooltipProvider } from "@/components/ui/tooltip";
import { ThemeApplier } from "@/components/theme-applier";
import { AuthSync } from "@/components/auth-sync";

export function Providers({ children }: { children: React.ReactNode }) {
  return (
    <ThemeProvider attribute="class" defaultTheme="system" enableSystem disableTransitionOnChange>
      <TooltipProvider>
        <ThemeApplier />
        <AuthSync />
        {children}
      </TooltipProvider>
    </ThemeProvider>
  );
}
