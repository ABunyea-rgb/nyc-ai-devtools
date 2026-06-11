# 11 — Forms, Linking, and Content Standards

## Scope

Official City Websites and public-facing NYC government web applications with **hyperlinks, forms, file uploads, or downloadable content**.

Complements [06-domain-content-analytics.md](06-domain-content-analytics.md) with operational OTI publishing standards.

## Legal and policy basis

| Document | ID |
|----------|-----|
| City Website Content Requirements Policy (linking section) | [SRC-050] |
| Hyperlinks — NYC.gov Agency/Initiative Website Process | [SRC-055] |
| NYC.gov Form Standards | [SRC-056] |
| Web Content Development Guidelines v4.0 | [SRC-057] |
| NYC.gov Terms of Use | [SRC-058] |
| Creating Accessible Content (forms, tables, accordions) | [SRC-014] |

## Requirements

### Citywide linking

1. All links **must adhere** to the Citywide Linking Policy (embedded in City Website Content Requirements). [SRC-050], [SRC-055]

2. **Permitted external links** include: other government sites; sites that further a city purpose; authorized vendor sites for essential services; utility/communication franchise pages during emergencies; helper tools (e.g., Adobe Reader, Google Translate); specific press articles advancing city purpose. [SRC-050]

3. **Prohibited links:** any site with prohibited content; any site that does not advance a city purpose. [SRC-050]

4. Link text **must be short and descriptive** — never "click here," "learn more," or other vague phrases. [SRC-055], [SRC-057]

5. Links **must open in the same tab/window** by default; new windows only with OTI approval and "(opens in a new window)" text. [SRC-055]

6. Use **relative links** for internal pages (not absolute URLs to staging or CMS paths). [SRC-055]

7. Do **not** display full URLs in body content; hide URLs behind descriptive text. [SRC-055], [SRC-051]

8. Do **not** link headings or subheadings. [SRC-055]

9. Non-HTML downloads (PDF, PPT, Excel) **must indicate file type** in link text (e.g., "Download the agenda (PDF)"). [SRC-055]

10. External links to **trusted third-party sites only**; verify target site serves a city purpose. [SRC-057]

### NYC.gov Terms of Use

11. Official sites **must comply** with the NYC.gov Terms of Use (required by domain policy). [SRC-002], [SRC-058]

12. Users are **responsible for password security** on NYC.gov accounts; city may suspend accounts for Terms violations. [SRC-058]

13. Account-based apps **must link** Terms of Use and Privacy Policy; NYC.ID accounts also require NYC.ID Application Terms. [SRC-058], [SRC-043]

### Forms

14. Forms on NYC.gov **must be accessible and responsive**. [SRC-056]

15. New forms **must follow NYC.gov Form Standards** (HTML patterns for inputs, selects, radio buttons, checkboxes). [SRC-056], [SRC-014]

16. Each required field **must have a unique error message**: first sentence (bold) states the error; second sentence (not bold) explains how to fix it. [SRC-014], [SRC-056]

17. Log unique error messages in the **error message template** for each required field. [SRC-014]

18. Perform **QA** before launch: submission routing, responsiveness, accessibility, and error styling verified. [SRC-056]

19. **Custom validation** is recommended when native HTML5 validation is insufficient for screen reader announcement. [SRC-056]

20. **File upload forms** must meet performance targets in [03-performance-testing.md](03-performance-testing.md) (~2.92 MB upload timing). [SRC-020]

21. Prefer **web-based forms over PDF** applications where possible. [SRC-051], [SRC-056]

### Tables and expand/collapse

22. Tables **must** contain only tabular data, use correct markup, and be **responsive**. [SRC-014]

23. Expand/collapse (accordion) content **must** follow NYC.gov Expand/Collapse Standards; inner content must meet all other accessibility requirements. [SRC-014]

### Web Content Development Guidelines

24. Content packaged for production **must conform** to Web Content Development Guidelines, Citywide Linking Policy, and WCAG 2.2 AA. [SRC-057], [SRC-014]

25. **Prohibited content** includes: political campaign material; hate speech; content aiding crime; commercial endorsements; content not advancing city purpose. [SRC-050], [SRC-057]

26. Supplement document filenames **must not** contain spaces or special characters; use descriptive hyphenated names. [SRC-057]

## Implementation notes for AI agents

- Generate `<a>` tags with descriptive text: "Download the December 2026 agenda (PDF)" not "Click here."
- Build forms with `<label>` for every control; wire `aria-describedby` to unique error message elements.
- Structure error messages as two sentences with bold on the first only (match NYC.gov pattern).
- Use design system form components from `@nycds/core` where available.
- For SPAs, implement client-side routing with relative paths; avoid hardcoding staging URLs.

## Pre-launch verification

- [ ] All links reviewed against permitted/prohibited categories [SRC-050]
- [ ] Descriptive link text; same-tab default; no linked headings [SRC-055]
- [ ] Terms of Use and Privacy Policy linked on account-based flows [SRC-058]
- [ ] Forms accessible, responsive, with unique per-field errors [SRC-056], [SRC-014]
- [ ] File upload performance tested per doc 03 [SRC-020]
- [ ] Tables and accordions meet NYC.gov standards [SRC-014]
- [ ] Content conforms to Web Content Development Guidelines [SRC-057]

## Sources

- [SRC-050] City Website Content Requirements — https://designsystem.nyc.gov/standards/policies/city-website-content-requirements.html
- [SRC-055] Hyperlinks (Citywide Linking Policy operational guide) — https://www.nyc.gov/site/process/content/hyperlinks.page
- [SRC-056] NYC.gov Form Standards — https://www.nyc.gov/site/process/content/forms.page
- [SRC-057] Web Content Development Guidelines v4.0 — https://www.nyc.gov/assets/process/downloads/pdf/Web_Content_Dev_Guidelines_v4.0.pdf
- [SRC-058] NYC.gov Terms of Use — https://www.nyc.gov/main/terms-of-use
- [SRC-014] Creating Accessible Content — https://www.nyc.gov/site/process/content/creating-accessible-content.page

See full bibliography: [SOURCES.md](SOURCES.md)
