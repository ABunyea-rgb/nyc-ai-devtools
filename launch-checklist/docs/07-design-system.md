# 07 — NYC Digital Design System

## Scope

Public-facing digital experiences **operated by NYC government** on city-owned domains (`nyc.gov`, `cityofnewyork.us`), including websites and web applications.

Required for **new and redesigned** experiences under the Public Digital Experiences Policy.

## Legal and policy basis

| Document | ID |
|----------|-----|
| Public Digital Experiences Policy | [SRC-001] |
| About the NYC Digital Design System | [SRC-060] |
| Getting Started for Developers | [SRC-061] |
| Getting Started for Designers | [SRC-062] |
| NYC Digital Design System — Accessibility | [SRC-011] |

## Requirements

### Adoption

1. Agencies creating or redesigning public-facing websites or digital services **shall adhere** to the NYC Digital Design System guidelines for brand, UI components, content, accessibility, and research. [SRC-001]

2. The design system is **exclusively for** public-facing digital experiences operated by NYC government on city domains. [SRC-060]

3. The design system is **not for**: non-public intranets, non-city-operated experiences, iOS/Android native apps, social media, or digital marketing. [SRC-060]

### Design system objectives (via Public Digital Experiences Policy)

4. Use the design system to achieve: accessible services, consistent evidence-based design, plain-language content, fit-for-purpose technology, findable information, and secure privacy-by-design experiences. [SRC-001]

### Developer requirements

5. Developers building outside OTI-hosted TeamSite **must contact OTI Digital Service** to assess needs and onboard before implementation. [SRC-061]

6. Access to the **Azure project and private npm registry** is required to install `@nycds/core`. [SRC-061]

7. Install and use **`@nycds/core`** — the primary distribution containing bundled CSS and JS for design system components. [SRC-061]

8. Import design system CSS/JS into the project; use required component CSS classes in markup; register Custom Elements via their `define()` functions when using web components. [SRC-061]

### Designer requirements

9. Visual and UX designers in city government **must use** the NYC Digital Design System in **Figma**. [SRC-062]

10. Designers **must contact OTI Digital Service** for onboarding and Figma license access. [SRC-062]

11. Designers are **required to have at least two reviews** with the Digital Service team during a project. [SRC-062]

### Native apps vs web

12. **Website applications** ensure the greatest accessibility for end users. [SRC-001]

13. Native apps should only be developed where users are expected to use the app on a **regular recurring basis** (e.g., at least once a week). [SRC-001]

### Accessibility integration

14. Design system components are built and tested to **WCAG 2.2 Level AA** and reviewed with the Digital Accessibility Coordinator. [SRC-011]

## Implementation notes for AI agents

### Setup workflow

1. Confirm OTI Digital Service onboarding is initiated (AI agents cannot complete Azure/npm registry access alone).
2. After access is granted:
   ```bash
   npm install @nycds/core
   ```
3. Import core styles and scripts per OTI developer documentation.
4. Use design system component classes and patterns instead of custom one-off UI.

### UI development

- Follow brand guidelines, typography, color tokens, and spacing from the design system.
- Reuse components: buttons, forms, alerts, navigation, cards, tables.
- Ensure responsive layouts match design system breakpoints.
- Write UI copy per [06-domain-content-analytics.md](06-domain-content-analytics.md) plain language rules.

### When custom UI is unavoidable

- Match design system tokens (colors, fonts, spacing) even if a component variant does not exist.
- Still meet WCAG 2.2 AA independently.
- Flag custom components for Digital Service review.

### Do not

- Bootstrap a visually inconsistent UI when design system components exist.
- Skip OTI onboarding — private registry access is required for `@nycds/core`.

## Pre-launch verification

- [ ] OTI Digital Service onboarding completed
- [ ] `@nycds/core` (or approved equivalent) integrated
- [ ] UI matches design system brand, components, and responsive patterns
- [ ] Designer completed ≥2 Digital Service reviews (if design phase occurred)
- [ ] Web-first decision documented (or native app exception justified)
- [ ] Accessibility verified per [02-accessibility.md](02-accessibility.md)

## Sources

- [SRC-001] Public Digital Experiences Policy — https://designsystem.nyc.gov/standards/policies/public-digital-experiences-policy.html
- [SRC-060] About the NYC Digital Design System — https://designsystem.nyc.gov/about/about-the-nyc-digital-design-system.html
- [SRC-061] Getting Started for Developers — https://designsystem.nyc.gov/get-started/getting-started-for-developers.html
- [SRC-062] Getting Started for Designers — https://designsystem.nyc.gov/get-started/getting-started-for-designers.html
- [SRC-011] Design System Accessibility — https://designsystem.nyc.gov/standards/accessibility.html

See full bibliography: [SOURCES.md](SOURCES.md)
