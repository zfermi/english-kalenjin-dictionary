// Create amendments table in Supabase
// Run: node create-amendments-table.mjs

const SUPABASE_URL = 'https://vnynnkovxuiabolvuavy.supabase.co';
const SERVICE_KEY = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InZueW5ua292eHVpYWJvbHZ1YXZ5Iiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTc3MTYxMTcwMSwiZXhwIjoyMDg3MTg3NzAxfQ.uExDauo6OeO2wLwBfvvO6UCCTsSasQZhJjFOQNKzlSw';

const sql = `
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

do $$ begin
  if not exists (select 1 from pg_policies where tablename = 'amendments' and policyname = 'Amendments viewable by everyone') then
    create policy "Amendments viewable by everyone" on public.amendments for select using (true);
  end if;
  if not exists (select 1 from pg_policies where tablename = 'amendments' and policyname = 'Authenticated users can submit amendments') then
    create policy "Authenticated users can submit amendments" on public.amendments for insert with check (auth.role() = 'authenticated');
  end if;
  if not exists (select 1 from pg_policies where tablename = 'amendments' and policyname = 'System can update amendments') then
    create policy "System can update amendments" on public.amendments for update using (true);
  end if;
end $$;
`;

async function main() {
    // Try using the Supabase SQL execution endpoint
    const res = await fetch(`${SUPABASE_URL}/rest/v1/rpc/`, {
        method: 'POST',
        headers: {
            'apikey': SERVICE_KEY,
            'Authorization': `Bearer ${SERVICE_KEY}`,
            'Content-Type': 'application/json',
        },
    });

    // Since we can't execute raw SQL via REST, let's test if table exists
    const testRes = await fetch(`${SUPABASE_URL}/rest/v1/amendments?select=id&limit=1`, {
        headers: {
            'apikey': SERVICE_KEY,
            'Authorization': `Bearer ${SERVICE_KEY}`,
        },
    });

    if (testRes.ok) {
        console.log('✅ amendments table already exists!');
    } else {
        const err = await testRes.json();
        console.log('❌ Table does not exist:', err.message);
        console.log('');
        console.log('Please run the following SQL in Supabase SQL Editor:');
        console.log('https://supabase.com/dashboard/project/vnynnkovxuiabolvuavy/sql/new');
        console.log('');
        console.log(sql);
    }
}

main();
