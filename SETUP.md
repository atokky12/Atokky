# ATOKKY real online shop setup

This package provides:
- Public ATOKKY storefront (`index.html`)
- Email/password admin login (`admin.html`)
- Product database
- Product image uploads
- Add/delete products

## 1. Create Supabase
Create a Supabase project, then in SQL Editor run `schema.sql`.
Create a Storage bucket called `products` and make it public for product image URLs.

Create the admin account with:
**Nurudeenosenat807@gmail.com**
Use a password you choose privately. Do not send the password to ChatGPT.

Supabase supports email/password sign-in and password reset. Never expose a service-role key in browser code.

## 2. Connect the site
Open `config.js` and enter your Supabase project URL and publishable/anon key.
Do not put a service_role/secret key in this file.

## 3. Publish
Upload the files to a web host such as Cloudflare Pages/Workers or another static host.
Set the site URL in your Supabase Authentication settings.
Then:
- Customer site: `/index.html`
- Admin: `/admin.html`

## 4. Custom domain
After hosting, connect a domain such as `atokkystore.com` if available.

## 5. WhatsApp
The storefront can be extended with an order button that sends the cart to WhatsApp number 09024735179.
