create table public.products (
  id uuid primary key default gen_random_uuid(),
  name text not null,
  category text not null check (category in ('Dresses','Shoes','Jewellery')),
  price numeric not null,
  image_url text,
  active boolean not null default true,
  created_at timestamptz not null default now()
);

alter table public.products enable row level security;

create policy "Public can view active products"
on public.products for select
to anon, authenticated
using (active = true);

create policy "Authenticated admins can manage products"
on public.products for all
to authenticated
using (true)
with check (true);

-- Create a Storage bucket named "products" in Supabase and make it public
-- before using image uploads. For stronger production security, restrict
-- Storage writes to your admin user rather than making the bucket writable by everyone.
