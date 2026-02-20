import { createClient } from '@/lib/supabase/server'
import { getRankInfo, getXpProgress, getNextRank } from '@/lib/gamification'
import Link from 'next/link'
import { BookOpen, Trophy, Flame, ChevronRight, Star, Zap } from 'lucide-react'

export default async function HomePage() {
  const supabase = await createClient()
  const { data: { user } } = await supabase.auth.getUser()

  // Fetch today's featured word
  const today = new Date().toISOString().split('T')[0]
  const { data: featuredWord } = await supabase
    .from('words')
    .select('*, categories(name, icon)')
    .eq('featured_date', today)
    .single()

  // Fetch recently crowned translations
  const { data: recentCrowns } = await supabase
    .from('translations')
    .select('*, words(english_word), profiles(username)')
    .eq('status', 'crowned')
    .order('created_at', { ascending: false })
    .limit(5)

  // Fetch user profile if logged in
  let profile = null
  if (user) {
    const { data } = await supabase.from('profiles').select('*').eq('id', user.id).single()
    profile = data
  }

  const rankInfo = profile ? getRankInfo(profile.xp) : null
  const nextRank = profile ? getNextRank(profile.xp) : null
  const xpProgress = profile ? getXpProgress(profile.xp) : 0

  return (
    <div className="max-w-4xl mx-auto px-4 py-8 space-y-8">

      {/* ─── Hero Header ─── */}
      <div className="relative overflow-hidden glass-card p-8 slide-in">
        <div className="absolute inset-0 bg-gradient-to-br from-amber-500/10 via-purple-500/5 to-teal-500/10 pointer-events-none" />
        <div className="relative z-10">
          <p className="text-amber-400 text-sm font-semibold tracking-widest uppercase mb-2">🌍 Language Preservation</p>
          <h1 className="text-4xl md:text-5xl font-black text-white mb-3" style={{ fontFamily: 'Space Grotesk' }}>
            Kipsigis<br />
            <span className="gradient-text">Living Dictionary</span>
          </h1>
          <p className="text-slate-400 text-lg max-w-lg">
            A community-built, gamified platform to preserve and grow the Kalenjin/Kipsigis language — one word at a time.
          </p>
          {!user && (
            <div className="flex gap-3 mt-6">
              <Link
                href="/auth/login"
                className="px-6 py-3 bg-gradient-to-r from-amber-500 to-rose-500 text-white font-bold rounded-xl hover:opacity-90 transition-opacity"
              >
                Join the Community
              </Link>
              <Link
                href="/translate"
                className="px-6 py-3 bg-white/5 border border-white/10 text-white font-semibold rounded-xl hover:bg-white/10 transition"
              >
                Browse Words
              </Link>
            </div>
          )}
        </div>
      </div>

      <div className="grid md:grid-cols-2 gap-6">

        {/* ─── XP Card (if logged in) ─── */}
        {profile && rankInfo && (
          <div className="glass-card p-6 slide-in">
            <div className="flex items-center justify-between mb-4">
              <div>
                <p className="text-slate-400 text-xs uppercase tracking-wide">Your Rank</p>
                <p className="text-2xl font-bold text-white">{rankInfo.emoji} {rankInfo.title}</p>
              </div>
              <div className="text-right">
                <p className="text-amber-400 font-bold text-xl">{profile.xp.toLocaleString()}</p>
                <p className="text-slate-500 text-xs">XP total</p>
              </div>
            </div>
            {/* XP Progress bar */}
            <div className="mb-3">
              <div className="flex justify-between text-xs text-slate-500 mb-1">
                <span>{rankInfo.title}</span>
                <span>{nextRank ? nextRank.title : 'Max Rank'}</span>
              </div>
              <div className="w-full h-2 bg-white/5 rounded-full overflow-hidden">
                <div
                  className={`h-full rounded-full bg-gradient-to-r ${rankInfo.color} xp-bar-fill`}
                  style={{ width: `${xpProgress}%` }}
                />
              </div>
            </div>
            {/* Streak */}
            <div className="flex items-center gap-2 mt-4 p-3 bg-orange-500/10 rounded-xl border border-orange-500/20">
              <span className="text-2xl flame">🔥</span>
              <div>
                <p className="text-white font-semibold">{profile.streak_days} day streak</p>
                <p className="text-slate-500 text-xs">Keep it up for bonus XP</p>
              </div>
            </div>
          </div>
        )}

        {/* ─── Daily Word Card ─── */}
        <div className="glass-card p-6 slide-in glow-border relative overflow-hidden">
          <div className="absolute top-3 right-3">
            <span className="px-2 py-1 bg-amber-500/20 border border-amber-500/30 text-amber-400 text-xs font-bold rounded-lg">
              3× XP TODAY
            </span>
          </div>
          <p className="text-slate-400 text-xs uppercase tracking-wide mb-1 flex items-center gap-1">
            <Star size={12} /> Daily Challenge
          </p>
          {featuredWord ? (
            <>
              <h2 className="text-3xl font-black text-white mb-1">{featuredWord.english_word}</h2>
              <p className="text-slate-500 text-sm mb-4">
                {featuredWord.categories?.icon} {featuredWord.categories?.name}
              </p>
              <Link
                href={`/translate?word=${featuredWord.id}`}
                className="inline-flex items-center gap-2 px-4 py-2.5 bg-gradient-to-r from-amber-500 to-rose-500 text-white font-semibold rounded-xl text-sm hover:opacity-90 transition-opacity"
              >
                Translate Now <ChevronRight size={16} />
              </Link>
            </>
          ) : (
            <div className="text-slate-500 text-sm">No featured word today yet.</div>
          )}
        </div>
      </div>

      {/* ─── Stats Row ─── */}
      <div className="grid grid-cols-3 gap-4">
        {[
          { icon: <BookOpen size={20} className="text-teal-400" />, label: 'Words', color: 'teal' },
          { icon: <Zap size={20} className="text-purple-400" />, label: 'Translations', color: 'purple' },
          { icon: <Trophy size={20} className="text-amber-400" />, label: 'Crowns Awarded', color: 'amber' },
        ].map(({ icon, label, color }) => (
          <div key={label} className="glass-card p-4 text-center slide-in">
            <div className="flex justify-center mb-1">{icon}</div>
            <p className="text-white font-bold text-xl">—</p>
            <p className="text-slate-500 text-xs">{label}</p>
          </div>
        ))}
      </div>

      {/* ─── Recent Crowns ─── */}
      {recentCrowns && recentCrowns.length > 0 && (
        <div className="glass-card p-6">
          <h2 className="text-white font-bold text-lg mb-4 flex items-center gap-2">
            <span className="crown-pop">👑</span> Recently Crowned
          </h2>
          <div className="space-y-3">
            {recentCrowns.map((t: any) => (
              <div key={t.id} className="flex items-center justify-between py-2 border-b border-white/5 last:border-0">
                <div>
                  <span className="text-white font-semibold">{t.kipsigis_text}</span>
                  <span className="text-slate-500 text-sm ml-2">= {t.words?.english_word}</span>
                </div>
                <div className="flex items-center gap-2 text-xs text-slate-500">
                  <span>by {t.profiles?.username ?? 'community'}</span>
                  <span className="text-amber-400">👑</span>
                </div>
              </div>
            ))}
          </div>
        </div>
      )}

      {/* ─── Quick Actions ─── */}
      <div className="grid grid-cols-2 gap-4">
        <Link href="/translate"
          className="glass-card p-5 flex items-center gap-4 hover:bg-white/5 transition-colors group"
        >
          <div className="w-10 h-10 rounded-xl bg-teal-500/15 flex items-center justify-center group-hover:scale-110 transition-transform">
            <BookOpen size={20} className="text-teal-400" />
          </div>
          <div>
            <p className="text-white font-semibold">Vote & Translate</p>
            <p className="text-slate-500 text-sm">Shape the dictionary</p>
          </div>
        </Link>
        <Link href="/leaderboard"
          className="glass-card p-5 flex items-center gap-4 hover:bg-white/5 transition-colors group"
        >
          <div className="w-10 h-10 rounded-xl bg-amber-500/15 flex items-center justify-center group-hover:scale-110 transition-transform">
            <Trophy size={20} className="text-amber-400" />
          </div>
          <div>
            <p className="text-white font-semibold">Leaderboard</p>
            <p className="text-slate-500 text-sm">See top contributors</p>
          </div>
        </Link>
      </div>

      {/* ─── Foot note about the language ─── */}
      <div className="border border-teal-500/20 bg-teal-500/5 rounded-2xl p-5 text-sm text-slate-400">
        <strong className="text-teal-300">About Kipsigis</strong> — A Nilo-Saharan language spoken primarily in Kenya&apos;s Rift Valley, part of the Kalenjin language cluster.
        With over 2 million speakers, this platform helps document words, pronunciation variants, speaker-context differences
        (like <em>Iyoo</em> vs <em>Karuchon</em> for &quot;mother&quot;), and regional dialects.
      </div>
    </div>
  )
}
