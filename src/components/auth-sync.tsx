"use client";

import { useEffect, useRef } from "react";
import { createClient } from "@/lib/supabase/client";
import { useStore } from "@/lib/store";

export function AuthSync() {
  const setUser = useStore((s) => s.setUser);
  const setGuest = useStore((s) => s.setGuest);
  const pendingSync = useRef(false);

  useEffect(() => {
    const supabase = createClient();
    if (!supabase) return;

    async function syncProfile(userId: string, userMetadata: Record<string, string> | undefined) {
      if (pendingSync.current) return;
      pendingSync.current = true;

      try {
        const { data: profile, error } = await supabase!
          .from("profiles")
          .select("id, display_name, avatar_url")
          .eq("auth_user_id", userId)
          .single();

        if (profile) {
          setUser({
            userId,
            profileId: profile.id,
            displayName:
              profile.display_name ||
              userMetadata?.full_name ||
              "Trainer",
            avatarUrl:
              profile.avatar_url ||
              userMetadata?.avatar_url ||
              "",
          });
          return;
        }

        // Profile not found — fallback: create it client-side
        if (error?.code === "PGRST116") {
          const { data: newProfile, error: insertError } = await supabase!
            .from("profiles")
            .upsert(
              {
                auth_user_id: userId,
                display_name: userMetadata?.full_name || userMetadata?.name || null,
                avatar_url: userMetadata?.avatar_url || null,
              },
              { onConflict: "auth_user_id" }
            )
            .select("id, display_name, avatar_url")
            .single();

          if (newProfile) {
            setUser({
              userId,
              profileId: newProfile.id,
              displayName:
                newProfile.display_name ||
                userMetadata?.full_name ||
                "Trainer",
              avatarUrl:
                newProfile.avatar_url ||
                userMetadata?.avatar_url ||
                "",
            });
            return;
          }
          console.error("[AuthSync] Failed to create profile:", insertError);
        } else {
          console.error("[AuthSync] Failed to fetch profile:", error);
        }
      } catch (err) {
        console.error("[AuthSync] Error:", err);
      } finally {
        pendingSync.current = false;
      }
    }

    const {
      data: { subscription },
    } = supabase.auth.onAuthStateChange((event, session) => {
      if (
        event === "INITIAL_SESSION" ||
        event === "SIGNED_IN" ||
        event === "TOKEN_REFRESHED"
      ) {
        if (session?.user) {
          syncProfile(session.user.id, session.user.user_metadata);
        } else {
          setGuest();
        }
      } else if (event === "SIGNED_OUT") {
        setGuest();
      }
    });

    return () => {
      subscription.unsubscribe();
    };
  }, [setUser, setGuest]);

  return null;
}
