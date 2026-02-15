import type { Metadata } from "next";
import { Inter } from "next/font/google";
import { Providers } from "@/components/providers";
import { Navbar } from "@/components/layout/navbar";
import "./globals.css";

const inter = Inter({
  variable: "--font-inter",
  subsets: ["latin"],
});

export const metadata: Metadata = {
  title: {
    default: "Ultimate Nuzlocker",
    template: "%s | Ultimate Nuzlocker",
  },
  description:
    "The ultimate Pokemon Nuzlocke tracker. Track encounters, manage your team, and survive every route across all Pokemon games.",
  keywords: [
    "pokemon",
    "nuzlocke",
    "tracker",
    "nuzlocke tracker",
    "pokemon tracker",
    "nuzlocke challenge",
  ],
};

export default function RootLayout({
  children,
}: Readonly<{
  children: React.ReactNode;
}>) {
  return (
    <html lang="en" suppressHydrationWarning>
      <head>
        <link
          href="https://fonts.googleapis.com/css2?family=Press+Start+2P&display=swap"
          rel="stylesheet"
        />
        <script
          dangerouslySetInnerHTML={{
            __html: `try{var s=JSON.parse(localStorage.getItem("ultimate-nuzlocker-store"));if(s&&s.state&&s.state.colorTheme)document.documentElement.setAttribute("data-theme",s.state.colorTheme)}catch(e){}`,
          }}
        />
      </head>
      <body className={`${inter.variable} font-sans antialiased`}>
        <Providers>
          <div className="relative min-h-screen flex flex-col">
            <Navbar />
            <main className="flex-1">{children}</main>
          </div>
        </Providers>
      </body>
    </html>
  );
}
