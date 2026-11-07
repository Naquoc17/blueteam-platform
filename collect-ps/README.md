# ps-automation

Learning repo for _Learn Windows PowerShell in a Month of Lunches_ (3rd ed.).

## win-audit-toolkit

A **read-only** security audit of a Windows host: autoruns, UAC, firewall,
services, and more as the book progresses. It never changes the host it audits.

- Target edition: PowerShell 7 (steps that need Windows PowerShell 5.1 say so)
- `oneliners/` - one file per book phase (`p1-discovery.ps1`, ...)
- `labs/`, `baseline/`, `reports/` - local only, never committed (see `.gitignore`)

## Run

Run from a **64-bit** console, otherwise WOW64 redirection silently hides
the 64-bit registry view:

    & .\win-audit-toolkit\oneliners\p1-discovery.ps1
