-- ============================================================
-- KALENJIN / KIPSIGIS DICTIONARY – SUPABASE SCHEMA
-- Run this entire file in Supabase → SQL Editor → New Query
-- ============================================================

-- Enable UUID extension
create extension if not exists "uuid-ossp";

-- ─────────────────────────────────────────────
-- PROFILES (extends Supabase auth.users)
-- ─────────────────────────────────────────────
create table if not exists public.profiles (
  id             uuid primary key references auth.users(id) on delete cascade,
  username       text unique,
  avatar_url     text,
  xp             integer not null default 0,
  rank_title     text not null default 'Lakwet',
  streak_days    integer not null default 0,
  streak_last    date,
  is_moderator   boolean not null default false,
  created_at     timestamptz not null default now()
);

alter table public.profiles enable row level security;

create policy "Profiles are viewable by everyone"
  on public.profiles for select using (true);

create policy "Users can update their own profile"
  on public.profiles for update using (auth.uid() = id);

-- Auto-create profile on signup
create or replace function public.handle_new_user()
returns trigger language plpgsql security definer as $$
begin
  insert into public.profiles (id, username, avatar_url)
  values (
    new.id,
    coalesce(new.raw_user_meta_data->>'name', split_part(new.email,'@',1)),
    new.raw_user_meta_data->>'avatar_url'
  );
  return new;
end;
$$;

drop trigger if exists on_auth_user_created on auth.users;
create trigger on_auth_user_created
  after insert on auth.users
  for each row execute procedure public.handle_new_user();

-- ─────────────────────────────────────────────
-- CATEGORIES
-- ─────────────────────────────────────────────
create table if not exists public.categories (
  id    serial primary key,
  name  text unique not null,
  icon  text
);

insert into public.categories (name, icon) values
  ('Animals',    '🐄'),
  ('Nature',     '🌿'),
  ('Family',     '👨‍👩‍👧'),
  ('Body',       '🫀'),
  ('Food',       '🌽'),
  ('Actions',    '🏃'),
  ('Numbers',    '🔢'),
  ('Greetings',  '👋'),
  ('General',    '📖')
on conflict do nothing;

-- ─────────────────────────────────────────────
-- WORDS (English entries)
-- ─────────────────────────────────────────────
create table if not exists public.words (
  id              uuid primary key default uuid_generate_v4(),
  english_word    text not null unique,
  category_id     integer references public.categories(id),
  featured_date   date,
  status          text not null default 'active' check (status in ('active','retired')),
  created_by      uuid references public.profiles(id),
  created_at      timestamptz not null default now()
);

alter table public.words enable row level security;
create policy "Words are viewable by everyone" on public.words for select using (true);
create policy "Authenticated users can add words"
  on public.words for insert with check (auth.role() = 'authenticated');

-- ─────────────────────────────────────────────
-- TRANSLATIONS (Kipsigis submissions)
-- ─────────────────────────────────────────────
create table if not exists public.translations (
  id               uuid primary key default uuid_generate_v4(),
  word_id          uuid not null references public.words(id) on delete cascade,
  kipsigis_text    text not null,
  phonetic         text,
  speaker_context  jsonb not null default '{}',
  dialect_region   text,
  example_sentence text,
  status           text not null default 'pending'
                   check (status in ('pending','crowned','variant','flagged')),
  submitted_by     uuid references public.profiles(id),
  upvotes_count    integer not null default 0,
  created_at       timestamptz not null default now(),
  unique (word_id, kipsigis_text)
);

alter table public.translations enable row level security;
create policy "Translations are viewable by everyone"
  on public.translations for select using (true);
create policy "Authenticated users can submit translations"
  on public.translations for insert with check (auth.role() = 'authenticated');
create policy "System can update translations"
  on public.translations for update using (true);

-- ─────────────────────────────────────────────
-- VOTES
-- ─────────────────────────────────────────────
create table if not exists public.votes (
  id              uuid primary key default uuid_generate_v4(),
  user_id         uuid not null references public.profiles(id) on delete cascade,
  translation_id  uuid not null references public.translations(id) on delete cascade,
  created_at      timestamptz not null default now(),
  unique (user_id, translation_id)
);

alter table public.votes enable row level security;
create policy "Votes are viewable by everyone" on public.votes for select using (true);
create policy "Authenticated users can vote"
  on public.votes for insert with check (auth.uid() = user_id);
create policy "Users can delete their own vote"
  on public.votes for delete using (auth.uid() = user_id);

-- ─────────────────────────────────────────────
-- BADGES
-- ─────────────────────────────────────────────
create table if not exists public.badges (
  slug        text primary key,
  name        text not null,
  icon        text not null,
  description text not null,
  xp_reward   integer not null default 0
);

insert into public.badges (slug, name, icon, description, xp_reward) values
  ('first_translation', 'First Word!',       '✍️',  'Submitted your first translation',       50),
  ('first_crown',       'Crown Bearer',      '👑',  'Had a translation crowned',              100),
  ('streak_7',          '7-Day Streak',      '🔥',  'Logged in 7 days in a row',              75),
  ('streak_30',         '30-Day Streak',     '🌟',  'Logged in 30 days in a row',             200),
  ('voter_10',          'Community Voice',   '🗳️',  'Cast 10 votes',                          30),
  ('top_leaderboard',   'Elder of Elders',   '🏆',  'Reached the top 3 on the leaderboard',  150),
  ('five_crowns',       'Five-Crown Chief',  '🎖️',  'Had 5 translations crowned',             250)
on conflict do nothing;

create table if not exists public.user_badges (
  id         uuid primary key default uuid_generate_v4(),
  user_id    uuid not null references public.profiles(id) on delete cascade,
  badge_slug text not null references public.badges(slug),
  earned_at  timestamptz not null default now(),
  unique (user_id, badge_slug)
);

alter table public.user_badges enable row level security;
create policy "User badges viewable by everyone" on public.user_badges for select using (true);
create policy "System can insert badges" on public.user_badges for insert with check (true);

-- ─────────────────────────────────────────────
-- SEED WORDS (starter dictionary)
-- ─────────────────────────────────────────────
insert into public.words (english_word, category_id) values
  ('cow',     (select id from public.categories where name='Animals')),
  ('mother',  (select id from public.categories where name='Family')),
  ('father',  (select id from public.categories where name='Family')),
  ('water',   (select id from public.categories where name='Nature')),
  ('fire',    (select id from public.categories where name='Nature')),
  ('rain',    (select id from public.categories where name='Nature')),
  ('sun',     (select id from public.categories where name='Nature')),
  ('moon',    (select id from public.categories where name='Nature')),
  ('child',   (select id from public.categories where name='Family')),
  ('house',   (select id from public.categories where name='General')),
  ('food',    (select id from public.categories where name='Food')),
  ('dog',     (select id from public.categories where name='Animals')),
  ('goat',    (select id from public.categories where name='Animals')),
  ('run',     (select id from public.categories where name='Actions')),
  ('eat',     (select id from public.categories where name='Actions')),
  ('hello',   (select id from public.categories where name='Greetings')),
  ('land',    (select id from public.categories where name='Nature')),
  ('milk',    (select id from public.categories where name='Food')),
  ('one',     (select id from public.categories where name='Numbers')),
  ('two',     (select id from public.categories where name='Numbers'))
on conflict do nothing;

-- Set today's featured word
update public.words set featured_date = current_date where english_word = 'cow';

-- ─────────────────────────────────────────────
-- FUNCTIONS: XP & CROWN LOGIC
-- ─────────────────────────────────────────────

-- Award XP and update rank
create or replace function public.award_xp(p_user_id uuid, p_amount integer)
returns void language plpgsql security definer as $$
declare
  new_xp integer;
  new_rank text;
begin
  update public.profiles set xp = xp + p_amount where id = p_user_id
  returning xp into new_xp;

  new_rank := case
    when new_xp >= 15000 then 'Kiruogit'
    when new_xp >= 5000  then 'Kipsigis Elder'
    when new_xp >= 1000  then 'Murenik'
    when new_xp >= 200   then 'Muren'
    else 'Lakwet'
  end;

  update public.profiles set rank_title = new_rank where id = p_user_id;
end;
$$;

-- Check and apply crown logic after a vote
create or replace function public.check_crown(p_word_id uuid)
returns void language plpgsql security definer as $$
declare
  total_votes integer;
  rec record;
begin
  select sum(upvotes_count) into total_votes
  from public.translations
  where word_id = p_word_id and status not in ('flagged');

  if total_votes < 3 then return; end if;

  -- Reset non-flagged statuses first
  update public.translations
  set status = 'pending'
  where word_id = p_word_id and status in ('crowned','variant');

  -- Find winner(s)
  for rec in
    select id, upvotes_count, submitted_by
    from public.translations
    where word_id = p_word_id and status = 'pending'
    order by upvotes_count desc
    limit 2
  loop
    if rec.upvotes_count >= 10 and
       (rec.upvotes_count::float / nullif(total_votes,0)) >= 0.6 then
      update public.translations set status = 'crowned' where id = rec.id;
      -- Award crown XP to submitter
      perform public.award_xp(rec.submitted_by, 100);
    elsif rec.upvotes_count >= 5 then
      update public.translations set status = 'variant' where id = rec.id;
    end if;
  end loop;
end;
$$;
