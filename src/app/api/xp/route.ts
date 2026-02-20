import { NextRequest, NextResponse } from 'next/server'
import { createClient } from '@/lib/supabase/server'

const XP_MAP: Record<string, number> = {
    SUBMIT_TRANSLATION: 10,
    VOTE_CAST: 2,
    VOTE_RECEIVED: 5,
    TRANSLATION_CROWNED: 100,
    DAILY_CHALLENGE: 30,
}

export async function POST(req: NextRequest) {
    const supabase = await createClient()
    const { userId, action } = await req.json()
    const amount = XP_MAP[action] ?? 0
    if (!userId || amount === 0) return NextResponse.json({ ok: true })

    await supabase.rpc('award_xp', { p_user_id: userId, p_amount: amount })
    return NextResponse.json({ ok: true })
}
