'use client'

import { useState, useEffect, useCallback } from 'react'
import { createClient } from '@/lib/supabase/client'
import { ChevronUp, Crown, Plus, X, Loader2, AlertCircle, Flag, Check } from 'lucide-react'
import clsx from 'clsx'
import type { Word, Translation } from '@/lib/types'

const SPEAKER_CONTEXTS = [
    { value: 'any', label: 'General / anyone' },
    { value: 'male', label: '👦 Said by sons' },
    { value: 'female', label: '👧 Said by daughters' },
    { value: 'elder', label: '👴 Used by elders' },
    { value: 'youth', label: '🧑 Used by youth' },
    { value: 'ceremonial', label: '🪘 Ceremonial speech' },
]

const REGIONS = [
    'Any region', 'Bomet', 'Kericho', 'Nandi', 'Uasin Gishu', 'Trans Nzoia', 'West Pokot', 'Other'
]

interface WordCardProps {
    word: Word & { categories?: { name: string; icon: string } }
    userId: string | null
}

function WordCard({ word, userId }: WordCardProps) {
    const supabase = createClient()
    const [translations, setTranslations] = useState<Translation[]>([])
    const [votedIds, setVotedIds] = useState<Set<string>>(new Set())
    const [loading, setLoading] = useState(true)
    const [showForm, setShowForm] = useState(false)
    const [submitting, setSubmitting] = useState(false)
    const [voting, setVoting] = useState<string | null>(null)
    const [flaggingId, setFlaggingId] = useState<string | null>(null)
    const [amendForm, setAmendForm] = useState({ suggested_text: '', reason: '' })
    const [amendSubmitting, setAmendSubmitting] = useState(false)
    const [amendSuccess, setAmendSuccess] = useState<string | null>(null)
    const [form, setForm] = useState({
        kipsigis_text: '',
        phonetic: '',
        speaker_context: 'any',
        dialect_region: 'Any region',
        example_sentence: '',
    })

    const loadTranslations = useCallback(async () => {
        const { data } = await supabase
            .from('translations')
            .select('*, profiles(username)')
            .eq('word_id', word.id)
            .neq('status', 'flagged')
            .order('upvotes_count', { ascending: false })
        setTranslations(data ?? [])

        if (userId) {
            const { data: votes } = await supabase
                .from('votes')
                .select('translation_id')
                .eq('user_id', userId)
                .in('translation_id', (data ?? []).map((t: Translation) => t.id))
            setVotedIds(new Set((votes ?? []).map((v: any) => v.translation_id)))
        }
        setLoading(false)
    }, [word.id, userId, supabase])

    useEffect(() => { loadTranslations() }, [loadTranslations])

    async function handleVote(translationId: string) {
        if (!userId) return alert('Please sign in to vote.')
        if (voting) return
        setVoting(translationId)

        try {
            const hasVoted = votedIds.has(translationId)
            if (hasVoted) {
                await supabase.from('votes').delete()
                    .eq('user_id', userId).eq('translation_id', translationId)
                setVotedIds(prev => { const s = new Set(prev); s.delete(translationId); return s })
                setTranslations(prev =>
                    prev.map(t => t.id === translationId ? { ...t, upvotes_count: t.upvotes_count - 1 } : t)
                )
            } else {
                await supabase.from('votes').insert({ user_id: userId, translation_id: translationId })
                // XP for voter via API
                fetch('/api/vote', {
                    method: 'POST',
                    headers: { 'Content-Type': 'application/json' },
                    body: JSON.stringify({ translationId, wordId: word.id, userId }),
                })
                setVotedIds(prev => new Set(prev).add(translationId))
                setTranslations(prev =>
                    prev.map(t => t.id === translationId ? { ...t, upvotes_count: t.upvotes_count + 1 } : t)
                )
            }
        } finally {
            setVoting(null)
        }
    }

    async function handleAmendSubmit(translationId: string) {
        if (!userId) return alert('Please sign in to submit corrections.')
        if (!amendForm.suggested_text.trim()) return
        setAmendSubmitting(true)
        try {
            const res = await fetch('/api/amend', {
                method: 'POST',
                headers: { 'Content-Type': 'application/json' },
                body: JSON.stringify({
                    translationId,
                    suggestedText: amendForm.suggested_text,
                    reason: amendForm.reason,
                }),
            })
            if (res.ok) {
                setAmendSuccess(translationId)
                setAmendForm({ suggested_text: '', reason: '' })
                setFlaggingId(null)
                setTimeout(() => setAmendSuccess(null), 3000)
            }
        } finally {
            setAmendSubmitting(false)
        }
    }
    async function handleSubmit(e: React.FormEvent) {
        e.preventDefault()
        if (!userId) return alert('Please sign in to submit.')
        if (!form.kipsigis_text.trim()) return
        setSubmitting(true)
        const { error } = await supabase.from('translations').insert({
            word_id: word.id,
            kipsigis_text: form.kipsigis_text.trim(),
            phonetic: form.phonetic || null,
            speaker_context: { speaker_gender: form.speaker_context === 'male' ? 'male' : form.speaker_context === 'female' ? 'female' : 'any', age_group: ['elder', 'youth'].includes(form.speaker_context) ? form.speaker_context : 'any', register: form.speaker_context === 'ceremonial' ? 'ceremonial' : 'everyday' },
            dialect_region: form.dialect_region === 'Any region' ? null : form.dialect_region,
            example_sentence: form.example_sentence || null,
            submitted_by: userId,
        })
        if (!error) {
            setForm({ kipsigis_text: '', phonetic: '', speaker_context: 'any', dialect_region: 'Any region', example_sentence: '' })
            setShowForm(false)
            loadTranslations()
            // Award XP for submission
            fetch('/api/xp', { method: 'POST', headers: { 'Content-Type': 'application/json' }, body: JSON.stringify({ userId, action: 'SUBMIT_TRANSLATION' }) })
        }
        setSubmitting(false)
    }

    const totalVotes = translations.reduce((s, t) => s + t.upvotes_count, 0)

    return (
        <div className="glass-card overflow-hidden slide-in">
            {/* Word header */}
            <div className="p-5 border-b border-white/5 flex items-start justify-between">
                <div>
                    <div className="flex items-center gap-2 mb-1">
                        <span className="text-lg">{word.categories?.icon ?? '📖'}</span>
                        <span className="text-slate-500 text-xs font-medium uppercase tracking-wide">{word.categories?.name ?? 'General'}</span>
                    </div>
                    <h3 className="text-2xl font-black text-white">{word.english_word}</h3>
                    <p className="text-slate-500 text-xs mt-1">{translations.length} translation{translations.length !== 1 ? 's' : ''} · {totalVotes} votes total</p>
                </div>
                <button
                    onClick={() => setShowForm(!showForm)}
                    className={clsx(
                        'flex items-center gap-1.5 px-3 py-1.5 rounded-lg text-sm font-medium transition-all',
                        showForm
                            ? 'bg-white/10 text-slate-400'
                            : 'bg-amber-500/15 border border-amber-500/30 text-amber-400 hover:bg-amber-500/25'
                    )}
                >
                    {showForm ? <X size={14} /> : <Plus size={14} />}
                    {showForm ? 'Cancel' : 'Add'}
                </button>
            </div>

            {/* Translations */}
            <div className="p-4 space-y-3">
                {loading ? (
                    <div className="flex justify-center py-6"><Loader2 size={24} className="animate-spin text-slate-600" /></div>
                ) : translations.length === 0 ? (
                    <div className="text-center py-6 text-slate-500">
                        <AlertCircle size={32} className="mx-auto mb-2 opacity-50" />
                        <p>No translations yet. Be the first!</p>
                    </div>
                ) : (
                    translations.map((t, idx) => {
                        const pct = totalVotes > 0 ? Math.round((t.upvotes_count / totalVotes) * 100) : 0
                        const isCrowned = t.status === 'crowned'
                        const isVariant = t.status === 'variant'
                        const hasVoted = votedIds.has(t.id)

                        return (
                            <div
                                key={t.id}
                                className={clsx(
                                    'rounded-xl p-4 border transition-all',
                                    isCrowned ? 'border-amber-500/40 bg-amber-500/8 pulse-gold' : isVariant ? 'border-teal-500/30 bg-teal-500/5' : 'border-white/5 bg-white/3'
                                )}
                            >
                                <div className="flex items-start justify-between gap-3">
                                    <div className="flex-1 min-w-0">
                                        <div className="flex flex-wrap items-center gap-2 mb-1">
                                            {isCrowned && <span className="text-amber-400 crown-pop">👑</span>}
                                            {isVariant && <span className="text-teal-400 text-xs">🔀 Dialect variant</span>}
                                            <span className="text-white font-bold text-lg">{t.kipsigis_text}</span>
                                            {t.phonetic && <span className="text-slate-500 text-sm italic">/{t.phonetic}/</span>}
                                        </div>

                                        {/* Speaker context badges */}
                                        <div className="flex flex-wrap gap-1.5 mb-2">
                                            {t.speaker_context?.speaker_gender === 'male' && <span className="px-2 py-0.5 bg-blue-500/15 text-blue-400 text-xs rounded-md">👦 Sons</span>}
                                            {t.speaker_context?.speaker_gender === 'female' && <span className="px-2 py-0.5 bg-pink-500/15 text-pink-400 text-xs rounded-md">👧 Daughters</span>}
                                            {t.speaker_context?.age_group === 'elder' && <span className="px-2 py-0.5 bg-amber-500/15 text-amber-400 text-xs rounded-md">👴 Elders</span>}
                                            {t.speaker_context?.age_group === 'youth' && <span className="px-2 py-0.5 bg-green-500/15 text-green-400 text-xs rounded-md">🧑 Youth</span>}
                                            {t.speaker_context?.register === 'ceremonial' && <span className="px-2 py-0.5 bg-purple-500/15 text-purple-400 text-xs rounded-md">🪘 Ceremonial</span>}
                                            {t.dialect_region && <span className="px-2 py-0.5 bg-slate-700 text-slate-400 text-xs rounded-md">📍 {t.dialect_region}</span>}
                                        </div>

                                        {t.example_sentence && (
                                            <p className="text-slate-500 text-xs italic mb-2">&ldquo;{t.example_sentence}&rdquo;</p>
                                        )}

                                        {/* Vote progress bar */}
                                        <div className="flex items-center gap-2">
                                            <div className="flex-1 h-1.5 bg-white/5 rounded-full overflow-hidden">
                                                <div
                                                    className={clsx(
                                                        'h-full rounded-full transition-all duration-700',
                                                        isCrowned ? 'bg-gradient-to-r from-amber-400 to-rose-400' : isVariant ? 'bg-teal-400' : 'bg-purple-400'
                                                    )}
                                                    style={{ width: `${pct}%` }}
                                                />
                                            </div>
                                            <span className="text-slate-500 text-xs whitespace-nowrap">{pct}% ({t.upvotes_count})</span>
                                        </div>

                                        <p className="text-slate-600 text-xs mt-1.5">by {(t as any).profiles?.username ?? 'anonymous'}</p>
                                    </div>

                                    {/* Vote button */}
                                    <button
                                        onClick={() => handleVote(t.id)}
                                        disabled={voting === t.id}
                                        className={clsx(
                                            'flex flex-col items-center gap-1 px-3 py-2 rounded-xl border transition-all min-w-[56px]',
                                            hasVoted
                                                ? 'bg-purple-500/20 border-purple-500/40 text-purple-300'
                                                : 'bg-white/5 border-white/10 text-slate-400 hover:border-purple-500/40 hover:text-purple-400'
                                        )}
                                    >
                                        {voting === t.id ? (
                                            <Loader2 size={16} className="animate-spin" />
                                        ) : (
                                            <ChevronUp size={16} className={hasVoted ? 'text-purple-400' : ''} />
                                        )}
                                        <span className="text-xs font-bold">{t.upvotes_count}</span>
                                    </button>
                                </div>

                                {/* Crown progress indicator */}
                                {!isCrowned && t.upvotes_count > 0 && (
                                    <div className="mt-2 flex items-center gap-2">
                                        <Crown size={12} className="text-slate-600" />
                                        <div className="flex-1 h-1 bg-white/5 rounded-full overflow-hidden">
                                            <div
                                                className="h-full bg-gradient-to-r from-amber-400/40 to-amber-400 rounded-full transition-all duration-500"
                                                style={{ width: `${Math.min((t.upvotes_count / 10) * 100, 100)}%` }}
                                            />
                                        </div>
                                        <span className="text-slate-600 text-xs">{t.upvotes_count}/10 to crown</span>
                                    </div>
                                )}

                                {/* Flag / Suggest Correction */}
                                <div className="mt-2 flex items-center gap-2">
                                    {amendSuccess === t.id ? (
                                        <span className="flex items-center gap-1.5 text-green-400 text-xs">
                                            <Check size={12} /> Correction submitted! +5 XP
                                        </span>
                                    ) : (
                                        <button
                                            onClick={() => {
                                                setFlaggingId(flaggingId === t.id ? null : t.id)
                                                setAmendForm({ suggested_text: '', reason: '' })
                                            }}
                                            className="flex items-center gap-1 text-slate-600 hover:text-red-400 text-xs transition-colors"
                                        >
                                            <Flag size={11} />
                                            {flaggingId === t.id ? 'Cancel' : 'Suggest correction'}
                                        </button>
                                    )}
                                </div>

                                {/* Amendment Form */}
                                {flaggingId === t.id && (
                                    <div className="mt-3 p-3 bg-red-500/5 border border-red-500/15 rounded-lg space-y-2 slide-in">
                                        <p className="text-red-400 text-xs font-medium flex items-center gap-1.5">
                                            <Flag size={11} /> Suggest a correction
                                            <span className="ml-auto text-amber-400">+5 XP</span>
                                        </p>
                                        <input
                                            value={amendForm.suggested_text}
                                            onChange={e => setAmendForm(f => ({ ...f, suggested_text: e.target.value }))}
                                            placeholder="Correct Kipsigis word..."
                                            className="w-full bg-white/5 border border-white/10 text-white placeholder-slate-600 px-3 py-2 rounded-lg text-sm focus:outline-none focus:border-red-500/50"
                                        />
                                        <input
                                            value={amendForm.reason}
                                            onChange={e => setAmendForm(f => ({ ...f, reason: e.target.value }))}
                                            placeholder="Why is it wrong? (optional)"
                                            className="w-full bg-white/5 border border-white/10 text-white placeholder-slate-600 px-3 py-2 rounded-lg text-sm focus:outline-none focus:border-red-500/50"
                                        />
                                        <button
                                            onClick={() => handleAmendSubmit(t.id)}
                                            disabled={amendSubmitting || !amendForm.suggested_text.trim()}
                                            className="w-full py-2 bg-red-500/20 border border-red-500/30 text-red-400 font-medium rounded-lg text-xs hover:bg-red-500/30 transition-colors flex items-center justify-center gap-1.5 disabled:opacity-50"
                                        >
                                            {amendSubmitting ? <Loader2 size={12} className="animate-spin" /> : <Flag size={12} />}
                                            Submit Correction
                                        </button>
                                    </div>
                                )}
                            </div>
                        )
                    })
                )}
            </div>

            {/* Submission form */}
            {showForm && (
                <form onSubmit={handleSubmit} className="border-t border-white/5 p-5 space-y-4 bg-white/2">
                    <h4 className="text-white font-semibold text-sm flex items-center gap-2">
                        <Plus size={14} className="text-amber-400" /> Add your translation <span className="ml-auto text-amber-400 text-xs">+10 XP</span>
                    </h4>
                    <div className="grid grid-cols-2 gap-3">
                        <div>
                            <label className="text-slate-400 text-xs mb-1 block">Kipsigis word *</label>
                            <input
                                required
                                value={form.kipsigis_text}
                                onChange={e => setForm(f => ({ ...f, kipsigis_text: e.target.value }))}
                                placeholder="e.g. Teta"
                                className="w-full bg-white/5 border border-white/10 text-white placeholder-slate-600 px-3 py-2 rounded-lg text-sm focus:outline-none focus:border-amber-500/50"
                            />
                        </div>
                        <div>
                            <label className="text-slate-400 text-xs mb-1 block">Phonetic (optional)</label>
                            <input
                                value={form.phonetic}
                                onChange={e => setForm(f => ({ ...f, phonetic: e.target.value }))}
                                placeholder="e.g. tɛ.ta"
                                className="w-full bg-white/5 border border-white/10 text-white placeholder-slate-600 px-3 py-2 rounded-lg text-sm focus:outline-none focus:border-amber-500/50"
                            />
                        </div>
                    </div>
                    <div className="grid grid-cols-2 gap-3">
                        <div>
                            <label className="text-slate-400 text-xs mb-1 block">Who says this?</label>
                            <select
                                value={form.speaker_context}
                                onChange={e => setForm(f => ({ ...f, speaker_context: e.target.value }))}
                                className="w-full bg-[#0d1220] border border-white/10 text-white px-3 py-2 rounded-lg text-sm focus:outline-none focus:border-amber-500/50"
                            >
                                {SPEAKER_CONTEXTS.map(c => (
                                    <option key={c.value} value={c.value}>{c.label}</option>
                                ))}
                            </select>
                        </div>
                        <div>
                            <label className="text-slate-400 text-xs mb-1 block">Dialect region</label>
                            <select
                                value={form.dialect_region}
                                onChange={e => setForm(f => ({ ...f, dialect_region: e.target.value }))}
                                className="w-full bg-[#0d1220] border border-white/10 text-white px-3 py-2 rounded-lg text-sm focus:outline-none focus:border-amber-500/50"
                            >
                                {REGIONS.map(r => <option key={r} value={r}>{r}</option>)}
                            </select>
                        </div>
                    </div>
                    <div>
                        <label className="text-slate-400 text-xs mb-1 block">Example sentence (optional)</label>
                        <input
                            value={form.example_sentence}
                            onChange={e => setForm(f => ({ ...f, example_sentence: e.target.value }))}
                            placeholder="Use it in a sentence..."
                            className="w-full bg-white/5 border border-white/10 text-white placeholder-slate-600 px-3 py-2 rounded-lg text-sm focus:outline-none focus:border-amber-500/50"
                        />
                    </div>
                    <button
                        type="submit"
                        disabled={submitting}
                        className="w-full py-2.5 bg-gradient-to-r from-amber-500 to-rose-500 text-white font-semibold rounded-xl text-sm hover:opacity-90 transition-opacity flex items-center justify-center gap-2 disabled:opacity-50"
                    >
                        {submitting ? <Loader2 size={16} className="animate-spin" /> : <Plus size={16} />}
                        Submit Translation
                    </button>
                </form>
            )}
        </div>
    )
}

export default function TranslatePage() {
    const supabase = createClient()
    const [words, setWords] = useState<any[]>([])
    const [userId, setUserId] = useState<string | null>(null)
    const [loading, setLoading] = useState(true)
    const [category, setCategory] = useState<string>('all')
    const [categories, setCategories] = useState<any[]>([])

    useEffect(() => {
        async function load() {
            const { data: { user } } = await supabase.auth.getUser()
            setUserId(user?.id ?? null)

            const { data: cats } = await supabase.from('categories').select('*').order('name')
            setCategories(cats ?? [])

            const { data: ws } = await supabase
                .from('words')
                .select('*, categories(name, icon)')
                .eq('status', 'active')
                .order('english_word')
            setWords(ws ?? [])
            setLoading(false)
        }
        load()
    }, [supabase])

    const filtered = category === 'all' ? words : words.filter(w => w.categories?.name === category)

    return (
        <div className="max-w-3xl mx-auto px-4 py-8">
            <div className="mb-6">
                <h1 className="text-3xl font-black text-white mb-1" style={{ fontFamily: 'Space Grotesk' }}>
                    Translate & Vote
                </h1>
                <p className="text-slate-400 text-sm">Vote for the best translation — help crown the community&apos;s choice.</p>
            </div>

            {/* Category filter */}
            <div className="flex gap-2 flex-wrap mb-6">
                <button
                    onClick={() => setCategory('all')}
                    className={clsx('px-3 py-1.5 rounded-lg text-sm font-medium transition-all', category === 'all' ? 'bg-amber-500/20 text-amber-400 border border-amber-500/30' : 'bg-white/5 text-slate-400 hover:text-white')}
                >
                    All
                </button>
                {categories.map(c => (
                    <button
                        key={c.id}
                        onClick={() => setCategory(c.name)}
                        className={clsx('px-3 py-1.5 rounded-lg text-sm font-medium transition-all', category === c.name ? 'bg-amber-500/20 text-amber-400 border border-amber-500/30' : 'bg-white/5 text-slate-400 hover:text-white')}
                    >
                        {c.icon} {c.name}
                    </button>
                ))}
            </div>

            {loading ? (
                <div className="flex justify-center py-20">
                    <Loader2 size={32} className="animate-spin text-slate-600" />
                </div>
            ) : (
                <div className="space-y-4">
                    {filtered.map(word => (
                        <WordCard key={word.id} word={word} userId={userId} />
                    ))}
                </div>
            )}
        </div>
    )
}
