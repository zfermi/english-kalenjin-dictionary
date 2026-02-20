export type RankInfo = {
    title: string
    emoji: string
    minXp: number
    maxXp: number
    color: string
}

export const RANKS: RankInfo[] = [
    { title: 'Lakwet', emoji: '🌱', minXp: 0, maxXp: 199, color: 'from-green-400 to-emerald-500' },
    { title: 'Muren', emoji: '🏃', minXp: 200, maxXp: 999, color: 'from-blue-400 to-cyan-500' },
    { title: 'Murenik', emoji: '🗡️', minXp: 1000, maxXp: 4999, color: 'from-purple-400 to-violet-500' },
    { title: 'Kipsigis Elder', emoji: '🧠', minXp: 5000, maxXp: 14999, color: 'from-amber-400 to-orange-500' },
    { title: 'Kiruogit', emoji: '👑', minXp: 15000, maxXp: Infinity, color: 'from-yellow-400 to-amber-500' },
]

export function getRankInfo(xp: number): RankInfo {
    return RANKS.slice().reverse().find(r => xp >= r.minXp) ?? RANKS[0]
}

export function getNextRank(xp: number): RankInfo | null {
    const currentIndex = RANKS.findIndex(r => r.title === getRankInfo(xp).title)
    return RANKS[currentIndex + 1] ?? null
}

export function getXpProgress(xp: number): number {
    const current = getRankInfo(xp)
    const next = getNextRank(xp)
    if (!next) return 100
    const progress = ((xp - current.minXp) / (next.minXp - current.minXp)) * 100
    return Math.min(Math.round(progress), 100)
}

export const XP_ACTIONS = {
    SUBMIT_TRANSLATION: 10,
    VOTE_CAST: 2,
    VOTE_RECEIVED: 5,
    TRANSLATION_CROWNED: 100,
    DAILY_CHALLENGE: 30, // 3× the normal 10
} as const

export const CROWN_THRESHOLD = 10
export const CROWN_RATIO = 0.6
