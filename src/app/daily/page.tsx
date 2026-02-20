import { createClient } from '@/lib/supabase/server'
import { Star, ChevronRight } from 'lucide-react'
import Link from 'next/link'

export const revalidate = 3600

export default async function DailyPage() {
    const supabase = await createClient()

    const today = new Date().toISOString().split('T')[0]
    const { data: featuredWord } = await supabase
        .from('words')
        .select('*, categories(name, icon), translations(id, kipsigis_text, status, upvotes_count, speaker_context)')
        .eq('featured_date', today)
        .single()

    return (
        <div className="max-w-2xl mx-auto px-4 py-8">
            <div className="mb-6">
                <h1 className="text-3xl font-black text-white mb-1 flex items-center gap-2" style={{ fontFamily: 'Space Grotesk' }}>
                    <Star size={26} className="text-amber-400" /> Daily Word Challenge
                </h1>
                <p className="text-slate-400 text-sm">Translate today&apos;s featured word and earn <strong className="text-amber-400">3× XP</strong>!</p>
            </div>

            {featuredWord ? (
                <div className="space-y-6">
                    {/* Main card */}
                    <div className="relative glass-card p-8 overflow-hidden glow-border">
                        <div className="absolute top-4 right-4">
                            <span className="px-3 py-1.5 bg-amber-500/20 border border-amber-500/30 text-amber-400 text-sm font-bold rounded-lg animate-pulse">
                                3× XP
                            </span>
                        </div>
                        <div className="absolute inset-0 bg-gradient-to-br from-amber-500/5 to-purple-500/5 pointer-events-none" />
                        <p className="text-slate-500 text-sm mb-1">
                            {featuredWord.categories?.icon} {featuredWord.categories?.name}
                        </p>
                        <h2 className="text-5xl font-black text-white mb-4">{featuredWord.english_word}</h2>
                        <p className="text-slate-400 mb-6">
                            {featuredWord.translations?.length ?? 0} translation{featuredWord.translations?.length !== 1 ? 's' : ''} submitted so far
                        </p>
                        <Link
                            href={`/translate?word=${featuredWord.id}`}
                            className="inline-flex items-center gap-2 px-6 py-3 bg-gradient-to-r from-amber-500 to-rose-500 text-white font-bold rounded-xl hover:opacity-90 transition-opacity"
                        >
                            Translate Now <ChevronRight size={18} />
                        </Link>
                    </div>

                    {/* Existing translations preview */}
                    {featuredWord.translations && featuredWord.translations.length > 0 && (
                        <div className="glass-card p-5">
                            <h3 className="text-white font-semibold mb-3">Community Translations So Far</h3>
                            <div className="space-y-2">
                                {featuredWord.translations
                                    .sort((a: any, b: any) => b.upvotes_count - a.upvotes_count)
                                    .slice(0, 5)
                                    .map((t: any) => (
                                        <div key={t.id} className="flex items-center justify-between py-2 border-b border-white/5 last:border-0">
                                            <div className="flex items-center gap-2">
                                                {t.status === 'crowned' && <span>👑</span>}
                                                {t.status === 'variant' && <span className="text-xs text-teal-400">🔀</span>}
                                                <span className="text-white font-semibold">{t.kipsigis_text}</span>
                                            </div>
                                            <span className="text-slate-500 text-sm">↑ {t.upvotes_count}</span>
                                        </div>
                                    ))}
                            </div>
                        </div>
                    )}

                    {/* Badge info */}
                    <div className="glass-card p-5">
                        <h3 className="text-white font-semibold mb-3">🏅 How to Earn Badges</h3>
                        <div className="grid grid-cols-2 gap-3">
                            {[
                                { icon: '✍️', label: 'First Word!', desc: '+50 XP on first submission' },
                                { icon: '👑', label: 'Crown Bearer', desc: '+100 XP when crowned' },
                                { icon: '🔥', label: '7-Day Streak', desc: '+75 XP for persistence' },
                                { icon: '🗳️', label: 'Community Voice', desc: '+30 XP for 10 votes' },
                            ].map(b => (
                                <div key={b.label} className="p-3 bg-white/3 rounded-xl border border-white/5">
                                    <span className="text-2xl">{b.icon}</span>
                                    <p className="text-white text-sm font-semibold mt-1">{b.label}</p>
                                    <p className="text-slate-500 text-xs">{b.desc}</p>
                                </div>
                            ))}
                        </div>
                    </div>
                </div>
            ) : (
                <div className="glass-card p-8 text-center">
                    <p className="text-4xl mb-3">🌙</p>
                    <h2 className="text-white font-bold text-xl mb-2">No featured word today</h2>
                    <p className="text-slate-400 text-sm mb-4">Check back tomorrow, or browse all words to keep earning XP.</p>
                    <Link href="/translate" className="inline-flex items-center gap-2 px-5 py-2.5 bg-white/10 text-white rounded-xl font-semibold hover:bg-white/15 transition">
                        Browse All Words <ChevronRight size={16} />
                    </Link>
                </div>
            )}
        </div>
    )
}
