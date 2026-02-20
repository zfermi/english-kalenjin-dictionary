'use client'

import { useState } from 'react'
import { createClient } from '@/lib/supabase/client'
import { Loader2, LogIn, UserPlus, Mail, Lock, User, Eye, EyeOff } from 'lucide-react'
import { useRouter } from 'next/navigation'
import clsx from 'clsx'

type Mode = 'login' | 'signup' | 'magic' | 'sent'

export default function LoginPage() {
    const supabase = createClient()
    const router = useRouter()
    const [mode, setMode] = useState<Mode>('login')
    const [email, setEmail] = useState('')
    const [password, setPassword] = useState('')
    const [username, setUsername] = useState('')
    const [showPassword, setShowPassword] = useState(false)
    const [loading, setLoading] = useState(false)
    const [error, setError] = useState('')
    const [sentFrom, setSentFrom] = useState<'magic' | 'signup'>('signup')

    async function handleEmailAuth(e: React.FormEvent) {
        e.preventDefault()
        setError('')
        setLoading(true)

        try {
            if (mode === 'signup') {
                const { error: signUpErr } = await supabase.auth.signUp({
                    email,
                    password,
                    options: {
                        data: { name: username || email.split('@')[0] },
                        emailRedirectTo: `${location.origin}/auth/callback`,
                    },
                })
                if (signUpErr) throw signUpErr
                setSentFrom('signup')
                setMode('sent')
            } else if (mode === 'login') {
                const { error: signInErr } = await supabase.auth.signInWithPassword({
                    email,
                    password,
                })
                if (signInErr) throw signInErr
                router.push('/')
                router.refresh()
            } else if (mode === 'magic') {
                const { error: otpErr } = await supabase.auth.signInWithOtp({
                    email,
                    options: { emailRedirectTo: `${location.origin}/auth/callback` },
                })
                if (otpErr) throw otpErr
                setSentFrom('magic')
                setMode('sent')
            }
        } catch (err: any) {
            setError(err.message || 'Something went wrong')
        } finally {
            setLoading(false)
        }
    }

    async function handleGoogle() {
        await supabase.auth.signInWithOAuth({
            provider: 'google',
            options: { redirectTo: `${location.origin}/auth/callback` },
        })
    }

    if (mode === 'sent') {
        return (
            <div className="min-h-screen flex items-center justify-center px-4">
                <div className="glass-card p-8 w-full max-w-md text-center slide-in">
                    <div className="w-16 h-16 rounded-full bg-green-500/20 border border-green-500/30 flex items-center justify-center mx-auto mb-4">
                        <Mail size={28} className="text-green-400" />
                    </div>
                    <h2 className="text-2xl font-black text-white mb-2" style={{ fontFamily: 'Space Grotesk' }}>
                        Check your email!
                    </h2>
                    <p className="text-slate-400 text-sm mb-4">
                        We sent a {sentFrom === 'magic' ? 'magic link' : 'confirmation link'} to <strong className="text-white">{email}</strong>
                    </p>
                    <p className="text-slate-500 text-xs mb-6">
                        Click the link in your email to continue. Check your spam folder if you don&apos;t see it.
                    </p>
                    <button
                        onClick={() => { setMode('login'); setError('') }}
                        className="text-amber-400 text-sm font-medium hover:underline"
                    >
                        ← Back to sign in
                    </button>
                </div>
            </div>
        )
    }

    return (
        <div className="min-h-screen flex items-center justify-center px-4">
            <div className="glass-card p-8 w-full max-w-md slide-in">
                {/* Header */}
                <div className="text-center mb-8">
                    <div className="w-16 h-16 rounded-2xl bg-gradient-to-br from-amber-400 to-rose-500 flex items-center justify-center text-3xl font-black mx-auto mb-4">
                        K
                    </div>
                    <h1 className="text-2xl font-black text-white" style={{ fontFamily: 'Space Grotesk' }}>
                        {mode === 'signup' ? 'Create Account' : mode === 'magic' ? 'Magic Link' : 'Welcome Back'}
                    </h1>
                    <p className="text-slate-400 text-sm mt-2">
                        {mode === 'signup'
                            ? 'Join the community preserving the Kipsigis language.'
                            : mode === 'magic'
                                ? 'Sign in without a password.'
                                : 'Sign in to continue translating and earning XP.'}
                    </p>
                </div>

                {/* Mode toggle tabs */}
                <div className="flex bg-white/5 rounded-xl p-1 mb-6">
                    {[
                        { key: 'login' as Mode, label: 'Sign In', icon: LogIn },
                        { key: 'signup' as Mode, label: 'Sign Up', icon: UserPlus },
                    ].map(({ key, label, icon: Icon }) => (
                        <button
                            key={key}
                            onClick={() => { setMode(key); setError('') }}
                            className={clsx(
                                'flex-1 flex items-center justify-center gap-2 py-2.5 rounded-lg text-sm font-medium transition-all',
                                mode === key
                                    ? 'bg-white/10 text-white'
                                    : 'text-slate-500 hover:text-slate-300'
                            )}
                        >
                            <Icon size={15} />
                            {label}
                        </button>
                    ))}
                </div>

                {/* Error */}
                {error && (
                    <div className="mb-4 p-3 bg-red-500/10 border border-red-500/30 rounded-xl text-red-400 text-sm">
                        {error}
                    </div>
                )}

                {/* Google button */}
                <button
                    onClick={handleGoogle}
                    className="w-full py-3 flex items-center justify-center gap-3 bg-white text-slate-900 font-semibold rounded-xl hover:bg-slate-100 transition mb-4"
                >
                    <svg viewBox="0 0 24 24" width="18" height="18"><path fill="#4285F4" d="M22.56 12.25c0-.78-.07-1.53-.2-2.25H12v4.26h5.92c-.26 1.37-1.04 2.53-2.21 3.31v2.77h3.57c2.08-1.92 3.28-4.74 3.28-8.09z" /><path fill="#34A853" d="M12 23c2.97 0 5.46-.98 7.28-2.66l-3.57-2.77c-.98.66-2.23 1.06-3.71 1.06-2.86 0-5.29-1.93-6.16-4.53H2.18v2.84C3.99 20.53 7.7 23 12 23z" /><path fill="#FBBC05" d="M5.84 14.09c-.22-.66-.35-1.36-.35-2.09s.13-1.43.35-2.09V7.07H2.18C1.43 8.55 1 10.22 1 12s.43 3.45 1.18 4.93l2.85-2.22.81-.62z" /><path fill="#EA4335" d="M12 5.38c1.62 0 3.06.56 4.21 1.64l3.15-3.15C17.45 2.09 14.97 1 12 1 7.7 1 3.99 3.47 2.18 7.07l3.66 2.84c.87-2.6 3.3-4.53 6.16-4.53z" /></svg>
                    Continue with Google
                </button>

                <div className="flex items-center gap-3 mb-4">
                    <div className="flex-1 h-px bg-white/10" />
                    <span className="text-slate-500 text-xs">or use email</span>
                    <div className="flex-1 h-px bg-white/10" />
                </div>

                {/* Email form */}
                <form onSubmit={handleEmailAuth} className="space-y-3">
                    {/* Username (signup only) */}
                    {mode === 'signup' && (
                        <div className="relative">
                            <User size={16} className="absolute left-3.5 top-1/2 -translate-y-1/2 text-slate-500" />
                            <input
                                value={username}
                                onChange={e => setUsername(e.target.value)}
                                placeholder="Display name"
                                className="w-full bg-white/5 border border-white/10 text-white placeholder-slate-600 pl-10 pr-4 py-3 rounded-xl focus:outline-none focus:border-amber-500/50 text-sm"
                            />
                        </div>
                    )}

                    {/* Email */}
                    <div className="relative">
                        <Mail size={16} className="absolute left-3.5 top-1/2 -translate-y-1/2 text-slate-500" />
                        <input
                            type="email"
                            required
                            value={email}
                            onChange={e => setEmail(e.target.value)}
                            placeholder="your@email.com"
                            className="w-full bg-white/5 border border-white/10 text-white placeholder-slate-600 pl-10 pr-4 py-3 rounded-xl focus:outline-none focus:border-amber-500/50 text-sm"
                        />
                    </div>

                    {/* Password (login/signup only, not magic) */}
                    {mode !== 'magic' && (
                        <div className="relative">
                            <Lock size={16} className="absolute left-3.5 top-1/2 -translate-y-1/2 text-slate-500" />
                            <input
                                type={showPassword ? 'text' : 'password'}
                                required
                                minLength={6}
                                value={password}
                                onChange={e => setPassword(e.target.value)}
                                placeholder={mode === 'signup' ? 'Create password (6+ chars)' : 'Password'}
                                className="w-full bg-white/5 border border-white/10 text-white placeholder-slate-600 pl-10 pr-10 py-3 rounded-xl focus:outline-none focus:border-amber-500/50 text-sm"
                            />
                            <button
                                type="button"
                                onClick={() => setShowPassword(!showPassword)}
                                className="absolute right-3.5 top-1/2 -translate-y-1/2 text-slate-500 hover:text-slate-300"
                            >
                                {showPassword ? <EyeOff size={16} /> : <Eye size={16} />}
                            </button>
                        </div>
                    )}

                    <button
                        type="submit"
                        disabled={loading}
                        className="w-full py-3 bg-gradient-to-r from-amber-500 to-rose-500 text-white font-bold rounded-xl hover:opacity-90 transition flex items-center justify-center gap-2 disabled:opacity-50"
                    >
                        {loading ? (
                            <Loader2 size={18} className="animate-spin" />
                        ) : mode === 'signup' ? (
                            <UserPlus size={18} />
                        ) : mode === 'magic' ? (
                            <Mail size={18} />
                        ) : (
                            <LogIn size={18} />
                        )}
                        {mode === 'signup' ? 'Create Account' : mode === 'magic' ? 'Send Magic Link' : 'Sign In'}
                    </button>
                </form>

                {/* Footer links */}
                <div className="mt-4 text-center space-y-2">
                    {mode === 'login' && (
                        <button
                            onClick={() => { setMode('magic'); setError('') }}
                            className="text-slate-500 text-xs hover:text-amber-400 transition"
                        >
                            🔮 Sign in with magic link instead
                        </button>
                    )}
                    {mode === 'magic' && (
                        <button
                            onClick={() => { setMode('login'); setError('') }}
                            className="text-slate-500 text-xs hover:text-amber-400 transition"
                        >
                            ← Back to password sign in
                        </button>
                    )}
                </div>

                {/* XP incentive */}
                <div className="mt-6 p-3 bg-amber-500/5 border border-amber-500/15 rounded-xl text-center">
                    <p className="text-amber-400 text-xs font-semibold">🌱 Start as a Lakwet (0 XP)</p>
                    <p className="text-slate-500 text-xs mt-0.5">Submit your first translation to earn +10 XP instantly!</p>
                </div>
            </div>
        </div>
    )
}
