-- ============================================================
-- AMENDMENTS TABLE - Run in Supabase SQL Editor
-- Stores user-submitted corrections for translations
-- ============================================================

create table if not exists public.amendments (
  id              uuid primary key default uuid_generate_v4(),
  translation_id  uuid not null references public.translations(id) on delete cascade,
  suggested_text  text not null,
  reason          text,
  submitted_by    uuid references public.profiles(id),
  status          text not null default 'pending'
                  check (status in ('pending','approved','rejected')),
  created_at      timestamptz not null default now()
);

alter table public.amendments enable row level security;

create policy "Amendments viewable by everyone"
  on public.amendments for select using (true);

create policy "Authenticated users can submit amendments"
  on public.amendments for insert with check (auth.role() = 'authenticated');

create policy "System can update amendments"
  on public.amendments for update using (true);
