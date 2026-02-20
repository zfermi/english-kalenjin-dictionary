'use client'

import { useState } from 'react'
import { createClient } from '@/lib/supabase/client'
import { Loader2, LogIn } from 'lucide-react'
import { useRouter } from 'next/navigation'

export default function LoginPage() {
    const supabase = createClient()
    const router = useRouter()
    const [email, setEmail] = useState('')
    const [loading, setLoading] = useState(false)
    const [sent, setSent] = useState(false)

    async function handleMagicLink(e: React.FormEvent) {
        e.preventDefault()
        setLoading(true)
        await supabase.auth.signInWithOtp({
            email,
            options: { emailRedirectTo: `${location.origin}/auth/callback` },
        })
        setSent(true)
        setLoading(false)
    }

    async function handleGoogle() {
        await supabase.auth.signInWithOAuth({
            provider: 'google',
            options: { redirectTo: `${location.origin}/auth/callback` },
        })
    }

    return (
        <div className="min-h-screen flex items-center justify-center px-4">
            <div className="glass-card p-8 w-full max-w-md">
                <div className="text-center mb-8">
                    <div className="w-16 h-16 rounded-2xl bg-gradient-to-br from-amber-400 to-rose-500 flex items-center justify-center text-3xl font-black mx-auto mb-4">K</div>
                    <h1 className="text-2xl font-black text-white" style={{ fontFamily: 'Space Grotesk' }}>Join the Dictionary</h1>
                    <p className="text-slate-400 text-sm mt-2">Help preserve the Kipsigis language — earn XP and ranks.</p>
                </div>

                {sent ? (
                    <div className="text-center py-6">
                        <p className="text-4xl mb-3">📧</p>
                        <p className="text-white font-semibold">Check your email!</p>
                        <p className="text-slate-400 text-sm mt-1">We sent a magic link to <strong>{email}</strong></p>
                    </div>
                ) : (
                    <div className="space-y-4">
                        <button
                            onClick={handleGoogle}
                            className="w-full py-3 flex items-center justify-center gap-3 bg-white text-slate-900 font-semibold rounded-xl hover:bg-slate-100 transition"
                        >
                            <svg viewBox="0 0 24 24" width="18" height="18"><path fill="#4285F4" d="M22.56 12.25c0-.78-.07-1.53-.2-2.25H12v4.26h5.92c-.26 1.37-1.04 2.53-2.21 3.31v2.77h3.57c2.08-1.92 3.28-4.74 3.28-8.09z" /><path fill="#34A853" d="M12 23c2.97 0 5.46-.98 7.28-2.66l-3.57-2.77c-.98.66-2.23 1.06-3.71 1.06-2.86 0-5.29-1.93-6.16-4.53H2.18v2.84C3.99 20.53 7.7 23 12 23z" /><path fill="#FBBC05" d="M5.84 14.09c-.22-.66-.35-1.36-.35-2.09s.13-1.43.35-2.09V7.07H2.18C1.43 8.55 1 10.22 1 12s.43 3.45 1.18 4.93l2.85-2.22.81-.62z" /><path fill="#EA4335" d="M12 5.38c1.62 0 3.06.56 4.21 1.64l3.15-3.15C17.45 2.09 14.97 1 12 1 7.7 1 3.99 3.47 2.18 7.07l3.66 2.84c.87-2.6 3.3-4.53 6.16-4.53z" /></svg>
                            Continue with Google
                        </button>

                        <div className="flex items-center gap-3">
                            <div className="flex-1 h-px bg-white/10" />
                            <span className="text-slate-500 text-xs">or</span>
                            <div className="flex-1 h-px bg-white/10" />
                        </div>

                        <form onSubmit={handleMagicLink} className="space-y-3">
                            <input
                                type="email"
                                required
                                placeholder="your@email.com"
                                value={email}
                                onChange={e => setEmail(e.target.value)}
                                className="w-full bg-white/5 border border-white/10 text-white placeholder-slate-600 px-4 py-3 rounded-xl focus:outline-none focus:border-amber-500/50"
                            />
                            <button
                                type="submit"
                                disabled={loading}
                                className="w-full py-3 bg-gradient-to-r from-amber-500 to-rose-500 text-white font-bold rounded-xl hover:opacity-90 transition flex items-center justify-center gap-2"
                            >
                                {loading ? <Loader2 size={18} className="animate-spin" /> : <LogIn size={18} />}
                                Send Magic Link
                            </button>
                        </form>
                    </div>
                )}
            </div>
        </div>
    )
}
