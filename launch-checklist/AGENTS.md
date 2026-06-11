# Instructions for AI Agents

You are assisting with **NYC government public-facing web applications**. Follow these rules.

## Before proposing or shipping code

1. Read [`docs/CHECKLIST.md`](docs/CHECKLIST.md) or parse [`checklists/prelaunch.yaml`](checklists/prelaunch.yaml) and treat unchecked items as blockers unless the user explicitly scopes them out with agency approval.
2. Load only the domain docs relevant to the task from [`docs/INDEX.md`](docs/INDEX.md).
3. When flagging a compliance gap, **cite the source** using the `[SRC-xxx]` IDs in [`docs/SOURCES.md`](docs/SOURCES.md).

## Machine-readable checklist

[`checklists/prelaunch.yaml`](checklists/prelaunch.yaml) mirrors the human checklist. Each item has:

- `id` — stable identifier
- `section` — domain grouping
- `required` — `true`, `false`, or `conditional`
- `conditional_when` — when `required: conditional`
- `sources` — SRC IDs
- `blocker` — `true` for launch blockers (also listed under `launch_blockers`)

Use YAML for automated audits; keep it in sync when editing `CHECKLIST.md`.

## When building features

- Prefer the NYC Digital Design System (`@nycds/core`) for UI when building new or redesigned experiences.
- Design for **WCAG 2.2 Level AA** from the start (semantic HTML, keyboard access, contrast, labels, focus management).
- Follow **NYC.gov Form Standards** for forms — unique per-field errors ([doc 11](docs/11-forms-linking-and-content.md)).
- Use **descriptive link text** and Citywide Linking Policy rules ([doc 11](docs/11-forms-linking-and-content.md)).
- Assume **performance testing is mandatory** for any public-facing app; design for sub-3-second average page response under expected load.
- Treat **identifying information** as sensitive by default; minimize collection and follow privacy-by-design.
- Encrypt Sensitive/Restricted data per Citywide Encryption Standard summary ([doc 04](docs/04-application-security.md)).
- Never embed secrets, credentials, or production data in code or prompts.
- Do not use personal or free-tier AI accounts for city work; follow [`docs/09-ai-and-algorithmic-tools.md`](docs/09-ai-and-algorithmic-tools.md).
- Use **NYC.ID SSO** when mandated — do not build parallel identity systems ([doc 13](docs/13-identity-and-mycity-conditional.md)).

## When reviewing or auditing

- Map each finding to a numbered requirement in the relevant domain doc.
- Distinguish **mandatory** (must/shall) from **recommended** (should/advisable).
- Distinguish **conditional** requirements (AI/LL35, open data, MyCity identity, cloud) and apply only when relevant.
- If a source is marked `intranet` or `summarized-from-public` in `SOURCES.md`, note the gap but do not invent requirements beyond the public summary.

## Output format for compliance notes

When reporting compliance status, use:

```
[PASS|FAIL|N/A|BLOCKED] Requirement text — [SRC-xxx]
Evidence: ...
Remediation: ...
```

Or reference YAML item `id` when using `prelaunch.yaml`:

```
[FAIL] perf-stress-test — Stress test >=3h @ >=120% load [SRC-020]
```

## Escalation

These policies require human agency process in many cases (OTI QA signoff, CCISO security assessment, privacy officer review, P-08-PR-DS on CityShare). Tell the user when a requirement needs official approval, not just code changes.
