# 🦖 Minimalist Pterodactyl Egg for Web Hosting

This project provides a lightweight Apache + PHP-FPM environment for running PHP-based websites in a Pterodactyl panel. It is intentionally small, fast, and easy to customize.

---

## Included

- Apache web server
- PHP-FPM for PHP execution
- Alpine Linux base image for a small footprint
- Simple, production-friendly defaults

---

## Why this setup works well

It keeps the container lean while still being practical for common PHP workloads. This makes it a good fit for small websites, custom PHP apps, and lightweight CMS setups without the overhead of a larger stack.

---

## Typical use cases

- WordPress
- Laravel
- Custom PHP applications
- Static or semi-dynamic sites that run via PHP

---

## Quick start

1. Import the egg into Pterodactyl.
2. Create a new server using this egg.
3. Upload your web application files.
4. Put your site behind a reverse proxy or frontend server if you need domain routing and HTTPS.

> ⚠️ This egg does not provide automatic HTTPS or routing management on its own. For production exposure, pair it with Nginx or another reverse proxy with TLS termination.

---

## Notes

- The stack is intentionally minimal.
- Additional services such as databases, caching, or background workers should be added separately.
- The configuration files are straightforward to adjust if you need custom behavior.

Maintained by: xbkxminit2winit@gmail.com

---

## Contributing

If you have a fix or an idea to improve the setup, feel free to open an issue or submit a pull request.

---
