import { createClient } from '@/lib/supabase/server'
import { getRankInfo } from '@/lib/gamification'
import { Trophy, Medal } from 'lucide-react'
import clsx from 'clsx'

export const revalidate = 60 // revalidate every 60s

const PODIUM_COLORS = [
    'from-amber-400 to-yellow-300',  // 1st
    'from-slate-300 to-slate-400',   // 2nd
    'from-amber-700 to-amber-600',   // 3rd
]
const PODIUM_EMOJI = ['🥇', '🥈', '🥉']

export default async function LeaderboardPage() {
    let user = null
    let leaders: any[] = []

    try {
        const supabase = await createClient()
        const { data: { user: u } } = await supabase.auth.getUser()
        user = u

        const { data } = await supabase
            .from('profiles')
            .select('id, username, avatar_url, xp, rank_title, streak_days')
            .order('xp', { ascending: false })
            .limit(50)
        leaders = data ?? []
    } catch (e) {
        console.error('Supabase error:', e)
    }

    const myRank = leaders.findIndex(l => l.id === user?.id)

    return (
        <div className="max-w-2xl mx-auto px-4 py-8">
            <div className="mb-8">
                <h1 className="text-3xl font-black text-white mb-1 flex items-center gap-2" style={{ fontFamily: 'Space Grotesk' }}>
                    <Trophy size={28} className="text-amber-400" /> Community Leaderboard
                </h1>
                <p className="text-slate-400 text-sm">Top contributors to the Kipsigis Living Dictionary.</p>
            </div>

            {/* Podium top 3 */}
            {leaders && leaders.length >= 3 && (
                <div className="flex items-end justify-center gap-3 mb-8">
                    {[leaders[1], leaders[0], leaders[2]].map((l, i) => {
                        const actualRank = i === 0 ? 2 : i === 1 ? 1 : 3
                        const heights = ['h-24', 'h-32', 'h-20']
                        const info = getRankInfo(l.xp)
                        return (
                            <div key={l.id} className={clsx('flex flex-col items-center gap-2 flex-1', i === 1 ? 'order-2' : i === 0 ? 'order-1' : 'order-3')}>
                                <div className="flex flex-col items-center">
                                    <div className="w-12 h-12 rounded-full bg-gradient-to-br from-slate-600 to-slate-700 flex items-center justify-center text-xl mb-1">
                                        {l.avatar_url ? (
                                            // eslint-disable-next-line @next/next/no-img-element
                                            <img src={l.avatar_url} alt="" className="w-full h-full rounded-full object-cover" />
                                        ) : (
                                            (l.username?.[0] ?? '?').toUpperCase()
                                        )}
                                    </div>
                                    <p className="text-white text-xs font-semibold text-center truncate max-w-[80px]">{l.username}</p>
                                    <p className="text-amber-400 text-xs font-bold">{l.xp.toLocaleString()} XP</p>
                                </div>
                                <div className={clsx(
                                    'w-full rounded-t-xl flex items-start justify-center pt-2 text-2xl',
                                    heights[i],
                                    `bg-gradient-to-b ${PODIUM_COLORS[actualRank - 1]}/20`
                                )}>
                                    {PODIUM_EMOJI[actualRank - 1]}
                                </div>
                            </div>
                        )
                    })}
                </div>
            )}

            {/* Full list */}
            <div className="glass-card divide-y divide-white/5">
                {(leaders ?? []).map((l, idx) => {
                    const info = getRankInfo(l.xp)
                    const isMe = l.id === user?.id
                    return (
                        <div
                            key={l.id}
                            className={clsx(
                                'flex items-center gap-4 p-4 transition-colors',
                                isMe ? 'bg-amber-500/8 border-l-2 border-amber-500' : idx < 3 ? 'bg-white/2' : 'hover:bg-white/2'
                            )}
                        >
                            {/* Rank number */}
                            <span className={clsx(
                                'text-sm font-bold w-6 text-center tabular-nums',
                                idx === 0 ? 'text-amber-400' : idx === 1 ? 'text-slate-300' : idx === 2 ? 'text-amber-700' : 'text-slate-600'
                            )}>
                                {idx < 3 ? PODIUM_EMOJI[idx] : idx + 1}
                            </span>

                            {/* Avatar */}
                            <div className="w-10 h-10 rounded-full bg-gradient-to-br from-slate-600 to-slate-700 flex items-center justify-center text-sm font-bold text-white flex-shrink-0">
                                {l.avatar_url ? (
                                    // eslint-disable-next-line @next/next/no-img-element
                                    <img src={l.avatar_url} alt="" className="w-full h-full rounded-full object-cover" />
                                ) : (
                                    (l.username?.[0] ?? '?').toUpperCase()
                                )}
                            </div>

                            {/* Name + rank */}
                            <div className="flex-1 min-w-0">
                                <div className="flex items-center gap-2">
                                    <p className="text-white font-semibold text-sm truncate">{l.username ?? 'Anonymous'}</p>
                                    {isMe && <span className="text-xs bg-amber-500/20 text-amber-400 px-1.5 py-0.5 rounded-md">You</span>}
                                </div>
                                <p className="text-slate-500 text-xs">{info.emoji} {l.rank_title} · 🔥 {l.streak_days}d</p>
                            </div>

                            {/* XP */}
                            <div className="text-right">
                                <p className="text-white font-bold text-sm">{l.xp.toLocaleString()}</p>
                                <p className="text-slate-600 text-xs">XP</p>
                            </div>
                        </div>
                    )
                })}

                {/* My rank if not in top 50 */}
                {myRank === -1 && user && (
                    <div className="p-4 text-center text-slate-500 text-sm">
                        Keep contributing to appear on the leaderboard!
                    </div>
                )}
            </div>
        </div>
    )
}
