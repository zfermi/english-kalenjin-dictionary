'use client'

import Link from 'next/link'
import { usePathname } from 'next/navigation'
import { BookOpen, Trophy, Star, Home, Search, Plus } from 'lucide-react'
import clsx from 'clsx'

const navItems = [
    { href: '/', label: 'Home', icon: Home },
    { href: '/translate', label: 'Translate', icon: BookOpen },
    { href: '/leaderboard', label: 'Leaderboard', icon: Trophy },
    { href: '/daily', label: 'Daily Word', icon: Star },
    { href: '/search', label: 'Search', icon: Search },
]

export function NavBar() {
    const pathname = usePathname()

    return (
        <>
            {/* ── Desktop Sidebar ── */}
            <aside className="hidden md:flex flex-col fixed left-0 top-0 h-full w-64 border-r border-white/7 bg-[#0d1220] z-50">
                {/* Logo */}
                <div className="px-6 py-6 border-b border-white/7">
                    <div className="flex items-center gap-3">
                        <div className="w-10 h-10 rounded-xl bg-gradient-to-br from-amber-400 to-rose-500 flex items-center justify-center text-xl font-bold">
                            K
                        </div>
                        <div>
                            <p className="font-bold text-white text-sm leading-tight" style={{ fontFamily: 'Space Grotesk' }}>Kipsigis</p>
                            <p className="text-[11px] text-slate-500 leading-tight">Living Dictionary</p>
                        </div>
                    </div>
                </div>

                {/* Nav links */}
                <nav className="flex-1 py-4 px-3 space-y-1 overflow-y-auto">
                    {navItems.map(({ href, label, icon: Icon }) => {
                        const active = pathname === href
                        return (
                            <Link
                                key={href}
                                href={href}
                                className={clsx(
                                    'flex items-center gap-3 px-4 py-3 rounded-xl text-sm font-medium transition-all duration-200',
                                    active
                                        ? 'bg-amber-500/15 text-amber-400 border border-amber-500/25'
                                        : 'text-slate-400 hover:text-white hover:bg-white/5'
                                )}
                            >
                                <Icon size={18} />
                                {label}
                            </Link>
                        )
                    })}
                </nav>

                {/* Add word CTA */}
                <div className="p-4 border-t border-white/7">
                    <Link
                        href="/submit"
                        className="flex items-center justify-center gap-2 w-full py-3 rounded-xl bg-gradient-to-r from-amber-500 to-rose-500 text-white font-semibold text-sm hover:opacity-90 transition-opacity"
                    >
                        <Plus size={16} />
                        Add Translation
                    </Link>
                </div>
            </aside>

            {/* ── Mobile Bottom Nav ── */}
            <nav className="md:hidden fixed bottom-0 left-0 right-0 z-50 flex border-t border-white/7 bg-[#0d1220]/95 backdrop-blur-lg">
                {navItems.map(({ href, label, icon: Icon }) => {
                    const active = pathname === href
                    return (
                        <Link
                            key={href}
                            href={href}
                            className={clsx(
                                'flex-1 flex flex-col items-center justify-center gap-1 py-3 text-[10px] font-medium transition-all',
                                active ? 'text-amber-400' : 'text-slate-500'
                            )}
                        >
                            <Icon size={20} />
                            <span>{label}</span>
                        </Link>
                    )
                })}
            </nav>
        </>
    )
}
