'use client'

import { useState, useEffect } from 'react'
import { createClient } from '@/lib/supabase/client'
import { Loader2, Plus, Check } from 'lucide-react'
import { useRouter } from 'next/navigation'

const CATEGORIES = ['Animals', 'Nature', 'Family', 'Body', 'Food', 'Actions', 'Numbers', 'Greetings', 'General']
const REGIONS = ['Any region', 'Bomet', 'Kericho', 'Nandi', 'Uasin Gishu', 'Trans Nzoia', 'West Pokot', 'Other']
const SPEAKER_CONTEXTS = [
    { value: 'any', label: 'General / anyone' },
    { value: 'male', label: '👦 Said by sons' },
    { value: 'female', label: '👧 Said by daughters' },
    { value: 'elder', label: '👴 Used by elders' },
    { value: 'youth', label: '🧑 Used by youth' },
    { value: 'ceremonial', label: '🪘 Ceremonial speech' },
]

export default function SubmitPage() {
    const supabase = createClient()
    const router = useRouter()
    const [userId, setUserId] = useState<string | null>(null)
    const [done, setDone] = useState(false)
    const [submitting, setSubmitting] = useState(false)
    const [form, setForm] = useState({
        english_word: '',
        kipsigis_text: '',
        phonetic: '',
        category: 'General',
        speaker_context: 'any',
        dialect_region: 'Any region',
        example_sentence: '',
    })

    useEffect(() => {
        supabase.auth.getUser().then(({ data: { user } }) => setUserId(user?.id ?? null))
    }, [supabase])

    async function handleSubmit(e: React.FormEvent) {
        e.preventDefault()
        if (!userId) { router.push('/auth/login'); return }
        setSubmitting(true)

        // Upsert the English word
        const { data: word, error: wordErr } = await supabase
            .from('words')
            .upsert({ english_word: form.english_word.trim().toLowerCase(), category_id: null }, { onConflict: 'english_word' })
            .select()
            .single()

        if (wordErr || !word) { setSubmitting(false); return }

        // Insert the translation
        const { error: transErr } = await supabase.from('translations').insert({
            word_id: word.id,
            kipsigis_text: form.kipsigis_text.trim(),
            phonetic: form.phonetic.trim() || null,
            speaker_context: {
                speaker_gender: form.speaker_context === 'male' ? 'male' : form.speaker_context === 'female' ? 'female' : 'any',
                age_group: ['elder', 'youth'].includes(form.speaker_context) ? form.speaker_context : 'any',
                register: form.speaker_context === 'ceremonial' ? 'ceremonial' : 'everyday',
            },
            dialect_region: form.dialect_region === 'Any region' ? null : form.dialect_region,
            example_sentence: form.example_sentence.trim() || null,
            submitted_by: userId,
        })

        if (!transErr) {
            // Award XP
            fetch('/api/xp', { method: 'POST', headers: { 'Content-Type': 'application/json' }, body: JSON.stringify({ userId, action: 'SUBMIT_TRANSLATION' }) })
            setDone(true)
        }
        setSubmitting(false)
    }

    if (done) {
        return (
            <div className="min-h-screen flex items-center justify-center px-4">
                <div className="glass-card p-8 w-full max-w-md text-center">
                    <div className="w-16 h-16 rounded-full bg-green-500/20 border border-green-500/30 flex items-center justify-center mx-auto mb-4">
                        <Check size={32} className="text-green-400" />
                    </div>
                    <h2 className="text-2xl font-black text-white mb-2" style={{ fontFamily: 'Space Grotesk' }}>Translation Submitted!</h2>
                    <p className="text-slate-400 mb-2">You earned <span className="text-amber-400 font-bold">+10 XP</span>.</p>
                    <p className="text-slate-500 text-sm mb-6">The community will now vote on it. If it reaches 10 votes, it gets crowned! 👑</p>
                    <div className="flex gap-3">
                        <button onClick={() => setDone(false)} className="flex-1 py-2.5 bg-white/5 border border-white/10 text-white rounded-xl font-semibold hover:bg-white/10 transition text-sm">
                            Submit Another
                        </button>
                        <button onClick={() => router.push('/translate')} className="flex-1 py-2.5 bg-gradient-to-r from-amber-500 to-rose-500 text-white rounded-xl font-semibold text-sm hover:opacity-90 transition">
                            Go Vote
                        </button>
                    </div>
                </div>
            </div>
        )
    }

    return (
        <div className="max-w-2xl mx-auto px-4 py-8">
            <div className="mb-6">
                <h1 className="text-3xl font-black text-white mb-1" style={{ fontFamily: 'Space Grotesk' }}>Add Translation</h1>
                <p className="text-slate-400 text-sm">Submit a new English→Kipsigis translation. Earn <span className="text-amber-400">+10 XP</span> on submission.</p>
            </div>

            <form onSubmit={handleSubmit} className="glass-card p-6 space-y-5">
                <div>
                    <label className="text-slate-400 text-xs mb-1.5 block font-medium">English word *</label>
                    <input
                        required
                        value={form.english_word}
                        onChange={e => setForm(f => ({ ...f, english_word: e.target.value }))}
                        placeholder="e.g. cow"
                        className="w-full bg-white/5 border border-white/10 text-white placeholder-slate-600 px-4 py-3 rounded-xl focus:outline-none focus:border-amber-500/50 text-sm"
                    />
                </div>

                <div className="grid grid-cols-2 gap-4">
                    <div>
                        <label className="text-slate-400 text-xs mb-1.5 block font-medium">Kipsigis translation *</label>
                        <input
                            required
                            value={form.kipsigis_text}
                            onChange={e => setForm(f => ({ ...f, kipsigis_text: e.target.value }))}
                            placeholder="e.g. Teta"
                            className="w-full bg-white/5 border border-white/10 text-white placeholder-slate-600 px-4 py-3 rounded-xl focus:outline-none focus:border-amber-500/50 text-sm"
                        />
                    </div>
                    <div>
                        <label className="text-slate-400 text-xs mb-1.5 block font-medium">Phonetic spelling</label>
                        <input
                            value={form.phonetic}
                            onChange={e => setForm(f => ({ ...f, phonetic: e.target.value }))}
                            placeholder="e.g. tɛ.ta"
                            className="w-full bg-white/5 border border-white/10 text-white placeholder-slate-600 px-4 py-3 rounded-xl focus:outline-none focus:border-amber-500/50 text-sm"
                        />
                    </div>
                </div>

                <div className="grid grid-cols-2 gap-4">
                    <div>
                        <label className="text-slate-400 text-xs mb-1.5 block font-medium">Who says this?</label>
                        <select
                            value={form.speaker_context}
                            onChange={e => setForm(f => ({ ...f, speaker_context: e.target.value }))}
                            className="w-full bg-[#0d1220] border border-white/10 text-white px-4 py-3 rounded-xl focus:outline-none focus:border-amber-500/50 text-sm"
                        >
                            {SPEAKER_CONTEXTS.map(c => <option key={c.value} value={c.value}>{c.label}</option>)}
                        </select>
                    </div>
                    <div>
                        <label className="text-slate-400 text-xs mb-1.5 block font-medium">Dialect region</label>
                        <select
                            value={form.dialect_region}
                            onChange={e => setForm(f => ({ ...f, dialect_region: e.target.value }))}
                            className="w-full bg-[#0d1220] border border-white/10 text-white px-4 py-3 rounded-xl focus:outline-none focus:border-amber-500/50 text-sm"
                        >
                            {REGIONS.map(r => <option key={r} value={r}>{r}</option>)}
                        </select>
                    </div>
                </div>

                <div>
                    <label className="text-slate-400 text-xs mb-1.5 block font-medium">Example sentence</label>
                    <input
                        value={form.example_sentence}
                        onChange={e => setForm(f => ({ ...f, example_sentence: e.target.value }))}
                        placeholder="Use the word in a sentence..."
                        className="w-full bg-white/5 border border-white/10 text-white placeholder-slate-600 px-4 py-3 rounded-xl focus:outline-none focus:border-amber-500/50 text-sm"
                    />
                </div>

                <button
                    type="submit"
                    disabled={submitting}
                    className="w-full py-3.5 bg-gradient-to-r from-amber-500 to-rose-500 text-white font-bold rounded-xl text-sm hover:opacity-90 transition flex items-center justify-center gap-2 disabled:opacity-50"
                >
                    {submitting ? <Loader2 size={18} className="animate-spin" /> : <Plus size={18} />}
                    Submit Translation (+10 XP)
                </button>

                {!userId && (
                    <p className="text-center text-slate-500 text-xs">
                        You&apos;ll be redirected to sign in first.
                    </p>
                )}
            </form>
        </div>
    )
}
