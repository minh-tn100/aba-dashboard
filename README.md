# AI Business Architect — Publishing Dashboards

Static, single-file HTML dashboards that track the weekly content-publishing pipeline for **AI Business Architect** (by Minh Tran). Full-year 2026 programme, Week 1 → Week 30.

## Live (GitHub Pages)

➡️ **https://minh-tn100.github.io/aba-dashboard/**

## Contents

| File | Purpose |
|------|---------|
| `index.html` | Hub — 30 week cards (auto-generated dates, auto "This week" detection, topic + framework per week) |
| `week1-publishing-schedule-dashboard.html` | Week 1 schedule · "Most AI ROI Claims Are Accounting Fiction" |
| `week2-publishing-schedule-dashboard.html` | Week 2 schedule · "The Agent Maturity Ladder" |
| `week-coming-soon.html` | Shared placeholder for planned weeks (`?w=N`) |
| `serve-dashboard.command` | macOS double-click launcher for local hosting (not used by Pages) |

## How it works

- Pure static HTML/CSS/JS — no build step, no backend.
- Each task's status / URL / notes is stored in the **browser's localStorage** (per device, per browser).
- Theme: AI Business Architect dark cinematic — deep navy `#0A1428`, electric blue `#1E90FF`, silver `#E2E8F0`, gold `#D4AF37`.

## Run locally

```bash
python3 -m http.server 8088
# open http://localhost:8088/
```
or on macOS double-click `serve-dashboard.command`.

---
*Independent thought leadership · not affiliated with any current or past employer · compliant with Vietnam AI Law 134/2025 + PDPL.*
