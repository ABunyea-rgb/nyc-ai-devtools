# NYC AI Devtools

A local-only reference repository for AI coding agents building or reviewing **NYC government public-facing web applications** (websites, web apps, and digital services on city domains such as `nyc.gov` and `cityofnewyork.us`).

## Audience

- AI coding agents assisting NYC agency developers and contractors
- Human developers who need a cited, policy-grounded compliance checklist

## Scope

This guide covers the **OTI/agency policy corpus** for public-facing digital experiences. It does **not** cover:

- Fiber, telecom, or lower-level infrastructure
- Private or commercial web applications
- Native iOS/Android apps (except brief cross-references where city policy mentions them)

## How to use

1. Read [`AGENTS.md`](AGENTS.md) if you are an AI agent.
2. Start at [`docs/INDEX.md`](docs/INDEX.md) for the full table of contents.
3. Before shipping or approving a launch, run through [`docs/CHECKLIST.md`](docs/CHECKLIST.md) or parse [`checklists/prelaunch.yaml`](checklists/prelaunch.yaml).
4. Cite requirements using IDs from [`docs/SOURCES.md`](docs/SOURCES.md).

## Repository structure

```
README.md
AGENTS.md
checklists/
  prelaunch.yaml          # machine-readable checklist (mirrors CHECKLIST.md)
docs/
  INDEX.md
  01-public-digital-experiences.md
  02-accessibility.md
  03-performance-testing.md
  04-application-security.md
  05-privacy-and-data.md
  06-domain-content-analytics.md
  07-design-system.md
  08-cloud-hosting.md
  09-ai-and-algorithmic-tools.md
  10-open-data-conditional.md
  11-forms-linking-and-content.md
  12-language-access-and-idea.md
  13-identity-and-mycity-conditional.md
  CHECKLIST.md
  SOURCES.md
```

## Source access tiers

Some Cyber Command standards are on CityShare intranet. [`docs/SOURCES.md`](docs/SOURCES.md) marks each source as `public`, `intranet`, or `summarized-from-public`. When a requirement comes from a summarized source, escalate to the agency CISO for the full standard text.

## Disclaimer

This repository summarizes publicly available NYC policies for development guidance. It is not legal advice. When requirements conflict or are unclear, consult OTI, MOPD, agency privacy/security officers, and agency counsel. Policies change; verify against primary sources before launch.
