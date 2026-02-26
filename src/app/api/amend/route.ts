import { createClient } from '@supabase/supabase-js'
import { NextResponse } from 'next/server'
import { createClient as createServerClient } from '@/lib/supabase/server'

export async function POST(request: Request) {
    try {
        const { translationId, suggestedText, reason } = await request.json()

        if (!translationId || !suggestedText?.trim()) {
            return NextResponse.json({ error: 'Missing required fields' }, { status: 400 })
        }

        // Get current user
        const supabase = await createServerClient()
        const { data: { user } } = await supabase.auth.getUser()
        if (!user) {
            return NextResponse.json({ error: 'Not authenticated' }, { status: 401 })
        }

        // Use service role to bypass RLS for insert
        const adminClient = createClient(
            process.env.NEXT_PUBLIC_SUPABASE_URL!,
            process.env.SUPABASE_SERVICE_ROLE_KEY || process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!,
        )

        // Insert the amendment
        const { data, error } = await adminClient
            .from('amendments')
            .insert({
                translation_id: translationId,
                suggested_text: suggestedText.trim(),
                reason: reason?.trim() || null,
                submitted_by: user.id,
            })
            .select('id')
            .single()

        if (error) {
            console.error('Amendment insert error:', error)
            return NextResponse.json({ error: 'Failed to submit amendment' }, { status: 500 })
        }

        // Award XP for submitting a correction (+5 XP)
        try {
            await adminClient.rpc('award_xp', { p_user_id: user.id, p_amount: 5 })
        } catch {
            // XP award is non-critical
        }

        return NextResponse.json({ success: true, id: data.id, xp: 5 })
    } catch (err) {
        return NextResponse.json({ error: 'Server error' }, { status: 500 })
    }
}
