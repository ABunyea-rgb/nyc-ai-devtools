# 02 — Accessibility

## Scope

All NYC government **digital products** — websites, web applications, and mobile apps maintained by or on behalf of the City — must be accessible to people with disabilities.

Applies to developers, designers, content authors, and AI agents generating UI, content, or documents for public-facing city services.

## Legal and policy basis

| Basis | Standard |
|-------|----------|
| Local Law 26 of 2016 (Admin Code §23-802) | City must adopt website accessibility standards and biennial reporting | [SRC-010] |
| WCAG 2.2 Level AA | **Current NYC citywide standard** for websites and mobile apps (adopted Dec 2025) | [SRC-011], [SRC-012] |
| 28 CFR § 35.200 (2025) | Federal floor: WCAG 2.1 Level AA | [SRC-011] |
| Local Law 12 of 2023 | Five-year accessibility plans; web accessibility statements; complaint mechanisms | [SRC-013] |
| Creating Accessible Content (OTI) | Operational WCAG 2.2 AA guidance for NYC.gov content | [SRC-014] |
| MOPD Web Accessibility Guide | Getting started guide for city staff | [SRC-015] |

## Requirements

### Standards

1. Public-facing city websites and content **must meet WCAG 2.2 Level AA**. [SRC-011], [SRC-012], [SRC-014]

2. Meet at minimum the federal floor of **WCAG 2.1 Level AA** under 28 CFR § 35.200. NYC's adopted standard (2.2 AA) is stricter. [SRC-011]

3. Agencies **must make reasonable efforts** to make websites accessible under Local Law 26. [SRC-016]

### Agency operational requirements (Local Law 12)

4. Each agency **shall post** on its website: [SRC-013]
   - A statement regarding web accessibility
   - A mechanism for receiving complaints about web accessibility

5. Each agency **shall develop and implement** a five-year accessibility plan in consultation with MOPD, covering physical, digital, and programmatic access. [SRC-013]

6. Agencies **shall designate** an office responsible for ensuring completion of the five-year plan. [SRC-013]

### Content and UI (Creating Accessible Content)

7. Each web page **must have** a unique, short, descriptive title (browser title) describing the topic or purpose. [SRC-014]

8. Text and background color **must maintain** a contrast ratio of at least **4.5:1** (WCAG AA). [SRC-014]

9. Color **must not** be the only way of distinguishing links. Links on agency NYC.gov sites **must also be bold**; links in body content **must be underlined**. [SRC-014]

10. Tables **must** contain only tabular data, be programmed correctly, and adhere to NYC.gov Table Standards. Tables **must be responsive**. [SRC-014]

11. Expand/collapse (accordion) content **must** adhere to NYC.gov Expand/Collapse Standards; content within items must meet other accessibility requirements on the page. [SRC-014]

12. Forms, PDFs, videos, social media feeds, maps, and data visualizations **must** be made accessible; agencies are responsible for all content types on their sites. [SRC-015]

13. Forms **must follow** NYC.gov Form Standards including unique per-field error messages — see [11-forms-linking-and-content.md](11-forms-linking-and-content.md). [SRC-056], [SRC-014]

14. Tables and expand/collapse components **must follow** NYC.gov Table Standards and Expand/Collapse Standards — see doc 11. [SRC-014]

### Design system

15. NYC Digital Design System components are designed and tested for **WCAG 2.2 Level AA** and reviewed with the Digital Accessibility Coordinator. [SRC-011]

16. Use design system components where possible to inherit accessible patterns. [SRC-011]

### Reporting

17. OTI and MOPD **must publish** a biennial Digital Accessibility Report on city website accessibility (Local Law 26). [SRC-012]

## Implementation notes for AI agents

### HTML and structure

- Use semantic landmarks: `<header>`, `<nav>`, `<main>`, `<footer>`, heading hierarchy (`h1`–`h6`) without skipping levels.
- Every form control needs an associated `<label>` or `aria-label`; group related fields with `<fieldset>`/`<legend>`.
- Provide visible focus styles; ensure full keyboard operability (Tab, Enter, Space, Escape for modals/menus).
- Images: meaningful `alt` text; decorative images use `alt=""`.
- Videos: captions, transcripts, and audio descriptions where required.
- Do not rely on color alone for state (errors, required fields, links).

### ARIA

- Prefer native HTML elements over ARIA widgets.
- When ARIA is needed, follow WAI-ARIA patterns; test with screen readers (NVDA, JAWS, VoiceOver).

### Dynamic content

- Announce dynamic updates with `aria-live` regions where appropriate.
- Manage focus when opening/closing dialogs and route changes in SPAs.

### Testing tools (recommended by city guidance)

- Automated: WAVE, axe, Lighthouse, Pa11y, IBM Equal Access
- Manual: keyboard-only navigation, screen reader testing, color contrast verification

### Required pages

- Publish an **accessibility statement** page with contact/complaint mechanism (Local Law 12).
- Link to the city [Website Accessibility Feedback Form](https://www.nyc.gov/accessibility/accessibility-feedback.page) or agency-specific mechanism.

## Pre-launch verification

- [ ] Automated scan (axe/Lighthouse) shows no critical WCAG 2.2 AA violations
- [ ] Manual keyboard and screen reader test on critical user paths
- [ ] All pages have unique descriptive titles
- [ ] Contrast ≥ 4.5:1 for normal text; links distinguishable without color alone
- [ ] Forms, tables, accordions, PDFs, and media meet WCAG 2.2 AA
- [ ] Accessibility statement and complaint mechanism live on site
- [ ] Third-party accessibility audit completed if required by agency plan

## Sources

- [SRC-010] Local Law 26 of 2016 — https://www.nyc.gov/assets/mopd/downloads/pdf/Getting-Started-with-Web-Accessibility-December-2021.pdf
- [SRC-011] NYC Digital Design System — Accessibility — https://designsystem.nyc.gov/standards/accessibility.html
- [SRC-012] MOPD Accessible NYC 2025 Report — https://www.nyc.gov/site/mopd/publications/accessiblenyc-2025-report-other-mopd.page
- [SRC-013] Local Law 12 of 2023 — https://www.nyc.gov/assets/acs/pdf/about/2023/local-law-12.pdf
- [SRC-014] Creating Accessible Content — https://www.nyc.gov/site/process/content/creating-accessible-content.page
- [SRC-015] MOPD Getting Started with Web Accessibility (PDF) — https://www.nyc.gov/assets/mopd/downloads/pdf/Getting-Started-with-Web-Accessibility-December-2021.pdf
- [SRC-016] MOPD Digital Accessibility Resources — https://www.nyc.gov/site/mopd/initiatives/digital-accessibility.page
- [SRC-056] NYC.gov Form Standards — https://www.nyc.gov/site/process/content/forms.page

See full bibliography: [SOURCES.md](SOURCES.md)
