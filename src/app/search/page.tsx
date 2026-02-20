'use client'

import { useState, useEffect } from 'react'
import { createClient } from '@/lib/supabase/client'
import { Search, Loader2 } from 'lucide-react'
import Link from 'next/link'

export default function SearchPage() {
    const supabase = createClient()
    const [query, setQuery] = useState('')
    const [results, setResults] = useState<any[]>([])
    const [loading, setLoading] = useState(false)

    useEffect(() => {
        const t = setTimeout(async () => {
            if (!query.trim()) { setResults([]); return }
            setLoading(true)
            const { data } = await supabase
                .from('words')
                .select('*, categories(name, icon), translations(kipsigis_text, status, upvotes_count)')
                .or(`english_word.ilike.%${query}%`)
                .limit(20)
            // Also search translations text
            const { data: byKipsigis } = await supabase
                .from('translations')
                .select('*, words(id, english_word, categories(name, icon))')
                .ilike('kipsigis_text', `%${query}%`)
                .limit(10)

            const wordResults = data ?? []
            const fromTrans = (byKipsigis ?? []).map((t: any) => t.words).filter(Boolean)
            const combined = [...wordResults]
            for (const w of fromTrans) {
                if (!combined.find((r: any) => r.id === w.id)) combined.push(w)
            }
            setResults(combined)
            setLoading(false)
        }, 300)
        return () => clearTimeout(t)
    }, [query, supabase])

    return (
        <div className="max-w-2xl mx-auto px-4 py-8">
            <div className="mb-6">
                <h1 className="text-3xl font-black text-white mb-1" style={{ fontFamily: 'Space Grotesk' }}>Search</h1>
                <p className="text-slate-400 text-sm">Search by English word or Kipsigis text.</p>
            </div>

            <div className="relative mb-6">
                <Search size={18} className="absolute left-4 top-1/2 -translate-y-1/2 text-slate-500" />
                <input
                    autoFocus
                    value={query}
                    onChange={e => setQuery(e.target.value)}
                    placeholder="e.g. cow, Teta, water..."
                    className="w-full bg-white/5 border border-white/10 text-white placeholder-slate-600 pl-11 pr-4 py-3.5 rounded-xl focus:outline-none focus:border-amber-500/50 text-sm"
                />
                {loading && <Loader2 size={16} className="absolute right-4 top-1/2 -translate-y-1/2 text-slate-500 animate-spin" />}
            </div>

            <div className="space-y-3">
                {results.map(word => {
                    const crowned = word.translations?.find((t: any) => t.status === 'crowned')
                    const topT = word.translations?.sort((a: any, b: any) => b.upvotes_count - a.upvotes_count)[0]
                    return (
                        <Link key={word.id} href={`/translate?word=${word.id}`} className="glass-card p-4 flex items-center justify-between hover:bg-white/5 transition-colors block">
                            <div>
                                <div className="flex items-center gap-2 mb-0.5">
                                    <span className="text-sm">{word.categories?.icon ?? '📖'}</span>
                                    <span className="text-slate-500 text-xs">{word.categories?.name}</span>
                                </div>
                                <p className="text-white font-bold">{word.english_word}</p>
                                {crowned && <p className="text-amber-400 text-sm mt-0.5">👑 {crowned.kipsigis_text}</p>}
                                {!crowned && topT && <p className="text-slate-400 text-sm mt-0.5">{topT.kipsigis_text} <span className="text-slate-600">↑{topT.upvotes_count}</span></p>}
                            </div>
                            <div className="text-slate-600 text-xs">{word.translations?.length ?? 0} translations</div>
                        </Link>
                    )
                })}
                {query && !loading && results.length === 0 && (
                    <div className="text-center py-10 text-slate-500">
                        <Search size={32} className="mx-auto mb-2 opacity-30" />
                        <p>No results for &ldquo;{query}&rdquo;</p>
                        <p className="text-sm mt-1">Try a different spelling or <Link href="/submit" className="text-amber-400 hover:underline">add this word</Link>.</p>
                    </div>
                )}
            </div>
        </div>
    )
}
