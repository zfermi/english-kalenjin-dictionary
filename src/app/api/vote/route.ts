import { NextRequest, NextResponse } from 'next/server'
import { createClient } from '@/lib/supabase/server'

export async function POST(req: NextRequest) {
    const supabase = await createClient()
    const { translationId, wordId, userId } = await req.json()

    try {
        // Award XP to voter (+2) and submitter (+5)
        await supabase.rpc('award_xp', { p_user_id: userId, p_amount: 2 })

        // Get translation submitter
        const { data: translation } = await supabase
            .from('translations')
            .select('submitted_by, upvotes_count')
            .eq('id', translationId)
            .single()

        if (translation?.submitted_by && translation.submitted_by !== userId) {
            await supabase.rpc('award_xp', { p_user_id: translation.submitted_by, p_amount: 5 })
        }

        // Update upvotes_count
        await supabase
            .from('translations')
            .update({ upvotes_count: (translation?.upvotes_count ?? 0) + 1 })
            .eq('id', translationId)

        // Run crown check
        await supabase.rpc('check_crown', { p_word_id: wordId })

        return NextResponse.json({ ok: true })
    } catch (err) {
        return NextResponse.json({ error: 'Vote processing failed' }, { status: 500 })
    }
}
