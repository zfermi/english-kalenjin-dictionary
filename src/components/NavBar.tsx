'use client'

import { useEffect, useState } from 'react'
import Link from 'next/link'
import { usePathname, useRouter } from 'next/navigation'
import { BookOpen, Trophy, Star, Home, Search, Plus, LogIn, LogOut, User } from 'lucide-react'
import { createClient } from '@/lib/supabase/client'
import { getRankInfo } from '@/lib/gamification'
import clsx from 'clsx'
import type { Profile } from '@/lib/types'

const navItems = [
    { href: '/', label: 'Home', icon: Home },
    { href: '/translate', label: 'Translate', icon: BookOpen },
    { href: '/leaderboard', label: 'Leaderboard', icon: Trophy },
    { href: '/daily', label: 'Daily Word', icon: Star },
    { href: '/search', label: 'Search', icon: Search },
]

export function NavBar() {
    const pathname = usePathname()
    const router = useRouter()
    const supabase = createClient()
    const [user, setUser] = useState<any>(null)
    const [profile, setProfile] = useState<Profile | null>(null)
    const [showMenu, setShowMenu] = useState(false)

    useEffect(() => {
        async function getUser() {
            const { data: { user: u } } = await supabase.auth.getUser()
            setUser(u)
            if (u) {
                const { data } = await supabase.from('profiles').select('*').eq('id', u.id).single()
                setProfile(data)
            }
        }
        getUser()

        const { data: { subscription } } = supabase.auth.onAuthStateChange((_event, session) => {
            if (session?.user) {
                setUser(session.user)
                supabase.from('profiles').select('*').eq('id', session.user.id).single().then(({ data }) => setProfile(data))
            } else {
                setUser(null)
                setProfile(null)
            }
        })

        return () => subscription.unsubscribe()
    }, [supabase])

    async function handleSignOut() {
        await supabase.auth.signOut()
        setUser(null)
        setProfile(null)
        setShowMenu(false)
        router.push('/')
        router.refresh()
    }

    const rankInfo = profile ? getRankInfo(profile.xp) : null

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

                {/* User section & Add CTA */}
                <div className="border-t border-white/7">
                    {/* User card or Sign In button */}
                    {user && profile ? (
                        <div className="p-3">
                            <div
                                onClick={() => setShowMenu(!showMenu)}
                                className="flex items-center gap-3 px-3 py-2.5 rounded-xl hover:bg-white/5 cursor-pointer transition-colors"
                            >
                                <div className="w-9 h-9 rounded-full bg-gradient-to-br from-amber-400 to-rose-500 flex items-center justify-center text-sm font-bold text-white flex-shrink-0">
                                    {profile.avatar_url ? (
                                        // eslint-disable-next-line @next/next/no-img-element
                                        <img src={profile.avatar_url} alt="" className="w-full h-full rounded-full object-cover" />
                                    ) : (
                                        (profile.username?.[0] ?? '?').toUpperCase()
                                    )}
                                </div>
                                <div className="flex-1 min-w-0">
                                    <p className="text-white text-sm font-semibold truncate">{profile.username}</p>
                                    <p className="text-slate-500 text-xs">{rankInfo?.emoji} {profile.xp} XP</p>
                                </div>
                            </div>

                            {/* Dropdown menu */}
                            {showMenu && (
                                <div className="mt-1 mb-1 mx-1 bg-[#161d2f] border border-white/10 rounded-xl overflow-hidden slide-in">
                                    <div className="p-3 border-b border-white/5">
                                        <div className="flex items-center justify-between text-xs">
                                            <span className="text-slate-400">Rank</span>
                                            <span className="text-amber-400 font-semibold">{rankInfo?.emoji} {profile.rank_title}</span>
                                        </div>
                                        <div className="flex items-center justify-between text-xs mt-1">
                                            <span className="text-slate-400">Streak</span>
                                            <span className="text-orange-400 font-semibold">🔥 {profile.streak_days}d</span>
                                        </div>
                                    </div>
                                    <button
                                        onClick={handleSignOut}
                                        className="w-full flex items-center gap-2 px-3 py-2.5 text-red-400 text-sm hover:bg-red-500/10 transition-colors"
                                    >
                                        <LogOut size={14} />
                                        Sign Out
                                    </button>
                                </div>
                            )}
                        </div>
                    ) : (
                        <div className="p-3">
                            <Link
                                href="/auth/login"
                                className="flex items-center justify-center gap-2 w-full py-2.5 rounded-xl bg-white/5 border border-white/10 text-white font-medium text-sm hover:bg-white/10 transition"
                            >
                                <LogIn size={15} />
                                Sign In
                            </Link>
                        </div>
                    )}

                    {/* Add translation CTA */}
                    <div className="px-3 pb-3">
                        <Link
                            href="/submit"
                            className="flex items-center justify-center gap-2 w-full py-3 rounded-xl bg-gradient-to-r from-amber-500 to-rose-500 text-white font-semibold text-sm hover:opacity-90 transition-opacity"
                        >
                            <Plus size={16} />
                            Add Translation
                        </Link>
                    </div>
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
                {/* Profile / Sign In on mobile */}
                <Link
                    href={user ? '#' : '/auth/login'}
                    onClick={user ? (e) => { e.preventDefault(); handleSignOut() } : undefined}
                    className={clsx(
                        'flex-1 flex flex-col items-center justify-center gap-1 py-3 text-[10px] font-medium transition-all',
                        pathname === '/auth/login' ? 'text-amber-400' : 'text-slate-500'
                    )}
                >
                    {user ? <LogOut size={20} /> : <User size={20} />}
                    <span>{user ? 'Sign Out' : 'Sign In'}</span>
                </Link>
            </nav>
        </>
    )
}
