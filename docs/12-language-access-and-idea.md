# 12 — Language Access and IDEA

## Scope

Public-facing NYC government web applications, with emphasis on:

- **Covered agencies** under Local Law 30 of 2017 (language access)
- **New and redesigned** digital experiences under the Public Digital Experiences Policy (21st Century IDEA alignment)

## Legal and policy basis

| Document | ID |
|----------|-----|
| Public Digital Experiences Policy (IDEA basis) | [SRC-001] |
| Local Law 30 of 2017 | [SRC-053] |
| NYC Web Content Style Guide | [SRC-051] |
| MyCity multilingual support (reference implementation) | [SRC-059] |

## Requirements

### Local Law 30 — language access

1. Covered agencies **must use plain language** for documents and public communications about basic city services. [SRC-053], [SRC-051]

2. Web content **must be understandable on first read** — short sentences, common words, active voice. [SRC-051]

3. Where agency language access plans require it, provide **translated content or language access** for essential public-facing service information. [SRC-053]

4. Links in non-English content **must be translated** and marked with appropriate `lang` attributes. [SRC-055], [SRC-053]

5. Coordinate with agency **Language Access Coordinator** when building multilingual features. [SRC-053]

### 21st Century IDEA alignment

NYC adopts IDEA through the Public Digital Experiences Policy and Design System objectives. [SRC-001], [SRC-100]

6. Digital services **must be accessible to everyone**, including people of diverse abilities (IDEA + WCAG). [SRC-001], [SRC-011]

7. Information and services **must be easy to find** — clear navigation, search, and information architecture per design system. [SRC-001]

8. Content **must be accurate, clear, and in plain language**. [SRC-001], [SRC-051]

9. Technology **must meet users where they are** — responsive, mobile-friendly layouts per design system. [SRC-001], [SRC-060]

10. Prefer **digital forms over paper/PDF** for applications and service requests when a web workflow exists. [SRC-051], [SRC-056]

11. **Standardized identity** — use NYC.ID / MyCity SSO where OTI mandates instead of siloed account systems (see [13-identity-and-mycity-conditional.md](13-identity-and-mycity-conditional.md)). [SRC-059]

12. **Prefill and reuse** — where MyCity or agency systems already hold applicant data, design flows to reduce re-entry (MyCity resident profile model). [SRC-059]

13. **Search** — implement findable content via site search, clear IA, and descriptive page titles/metadata. [SRC-001]

### Multilingual UI (reference)

14. MyCity demonstrates city expectation for multilingual public services (10 languages via site translation). [SRC-059]

15. When implementing i18n, ensure **translated strings meet plain language standards** in each language; do not rely on machine translation without human review for legally significant content. [SRC-053], [SRC-080]

## Implementation notes for AI agents

- Write UI copy at ~8th-grade reading level in English; flag content needing professional translation.
- Implement responsive layouts before adding language variants.
- Use semantic HTML `lang` attributes on translated sections.
- Site search: index all public service pages; return accessible results.
- Digital forms: required fields, progress indicators, save/resume where MyCity profile supports it.
- Do not ship English-only critical service flows for covered agencies without agency Language Access Coordinator approval.

## Pre-launch verification

- [ ] Plain language review completed [SRC-051], [SRC-053]
- [ ] Language access plan consulted (if covered agency) [SRC-053]
- [ ] Translations reviewed by qualified reviewers (if multilingual) [SRC-053]
- [ ] Mobile-responsive layout verified [SRC-001]
- [ ] Site search and navigation support task completion [SRC-001]
- [ ] Digital forms used instead of PDF where feasible [SRC-056]
- [ ] Identity integration evaluated (doc 13) [SRC-059]

## Sources

- [SRC-001] Public Digital Experiences Policy — https://designsystem.nyc.gov/standards/policies/public-digital-experiences-policy.html
- [SRC-051] NYC Web Content Style Guide — https://designsystem.nyc.gov/standards/nyc-web-content-style-guide.html
- [SRC-053] Local Law 30 of 2017 — cited in [SRC-051]
- [SRC-059] MyCity (NYC311) — https://portal.311.nyc.gov/article/?kanumber=KA-03557
- [SRC-100] 21st Century IDEA — referenced in [SRC-001]

See full bibliography: [SOURCES.md](SOURCES.md)
