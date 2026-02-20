import type { Metadata } from 'next'
import './globals.css'
import { NavBar } from '@/components/NavBar'

export const metadata: Metadata = {
  title: 'Kipsigis Dictionary — Crowdsourced Language Preservation',
  description:
    'A gamified community platform for building the living Kalenjin/Kipsigis dictionary. Translate, vote, earn XP, and help preserve an endangered language.',
}

export default function RootLayout({
  children,
}: {
  children: React.ReactNode
}) {
  return (
    <html lang="en">
      <body className="min-h-screen bg-[#0a0e1a] text-slate-100">
        <NavBar />
        <main className="md:ml-64 min-h-screen pb-20 md:pb-0">
          {children}
        </main>
      </body>
    </html>
  )
}
