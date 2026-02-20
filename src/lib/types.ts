export type Json = string | number | boolean | null | { [key: string]: Json } | Json[]

export interface Profile {
    id: string
    username: string | null
    avatar_url: string | null
    xp: number
    rank_title: string
    streak_days: number
    streak_last: string | null
    is_moderator: boolean
    created_at: string
}

export interface Category {
    id: number
    name: string
    icon: string | null
}

export interface Word {
    id: string
    english_word: string
    category_id: number | null
    featured_date: string | null
    status: 'active' | 'retired'
    created_by: string | null
    created_at: string
    categories?: Category
}

export interface Translation {
    id: string
    word_id: string
    kipsigis_text: string
    phonetic: string | null
    speaker_context: {
        speaker_gender?: 'male' | 'female' | 'any'
        age_group?: 'elder' | 'adult' | 'youth' | 'child' | 'any'
        register?: 'everyday' | 'ceremonial' | 'archaic' | 'any'
        dialect_region?: string
    }
    dialect_region: string | null
    example_sentence: string | null
    status: 'pending' | 'crowned' | 'variant' | 'flagged'
    submitted_by: string | null
    upvotes_count: number
    created_at: string
    profiles?: Profile
    user_vote?: boolean
}

export interface Vote {
    id: string
    user_id: string
    translation_id: string
    created_at: string
}

export interface Badge {
    slug: string
    name: string
    icon: string
    description: string
    xp_reward: number
}

export interface UserBadge {
    id: string
    user_id: string
    badge_slug: string
    earned_at: string
    badges?: Badge
}

export interface LeaderboardEntry {
    id: string
    username: string | null
    avatar_url: string | null
    xp: number
    rank_title: string
    streak_days: number
}
