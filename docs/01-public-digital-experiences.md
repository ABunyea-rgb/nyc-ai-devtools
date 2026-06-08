# 01 — Public Digital Experiences

## Scope

Applies to all **public-facing Digital Experiences** built and operated by New York City government: websites, web applications, and digital services intended for public use on city domains (for example `nyc.gov`, `cityofnewyork.us`).

Does **not** apply to: native mobile apps, social media, digital marketing, or internal-only tools (unless they are explicitly in scope elsewhere).

## Legal and policy basis

| Basis | Summary |
|-------|---------|
| [Public Digital Experiences Policy](https://designsystem.nyc.gov/standards/policies/public-digital-experiences-policy.html) v1.0 (10/31/2025) | Umbrella requirements for new and redesigned public digital services |
| [nyc.gov Domain Usage Policy](https://designsystem.nyc.gov/standards/policies/nyc-gov-domain-usage.html) | Domain assignment and operational requirements |
| NYC Charter Chapter 48 | OTI authority over citywide IT, security, privacy, and telecommunications |
| Executive Order 3 of 2022 | Consolidated technology functions under OTI |
| 21st Century Integrated Digital Experience Act (IDEA) | Federal basis adopted by NYC for consistent government digital experiences |

Sources: [SRC-001], [SRC-002], [SRC-003]

## Requirements

### Umbrella policy

1. Any NYC agency that **creates or redesigns** a website or digital service for public use **shall adhere** to the Public Digital Experiences Policy and NYC Digital Design System. [SRC-001]

2. Digital experiences **must** meet these objectives through the design system: [SRC-001]
   - Accessible to everyone, including people of diverse abilities
   - Consistent designs based on user research, analytics, and evidence
   - Accurate, clear content in plain language; not used for political activity
   - Technology fit to purpose, meeting users where they are, and sustainable
   - Information and services easy to find
   - Secure technology with privacy-by-design principles

3. **Website applications** shall ensure the greatest level of accessibility for end users. Native apps should only be developed where users are expected to use the app on a **regular recurring basis** (for example at least once a week). [SRC-001]

4. OTI **may enforce** this policy by removing non-compliant content, inserting exit messaging, or revoking publishing privileges. [SRC-001]

### Related policies (incorporated by reference)

5. Public Digital Experiences Policy works in conjunction with: [SRC-001]
   - NYC.gov Domain Usage
   - City Website Content Requirements
   - Online Analytics
   - NYC.gov Privacy Policy
   - Citywide Privacy Protection Policies and Protocols
   - Citywide Policy for Performance Testing of Public-Facing Applications

6. nyc.gov domain assignments **must** comply with: [SRC-002]
   - Performance Testing Policy
   - NYC.gov Privacy Policy and Terms of Use
   - Public Digital Experiences Policy
   - City Website Content Requirements Policy
   - Citywide Cyber Command policies (SSAP/CCAP processes for new domains)

7. Domains **must not** be used to distribute malware, host open redirects, or engage in malicious cyber activity. New domains are reviewed by OTI security personnel. [SRC-002]

### Roles

8. OTI is responsible for creation and enforcement of the Public Digital Experiences Policy. [SRC-001]

9. OTI Digital Service is responsible for digital strategy, UX, and content guidelines. [SRC-001]

10. Agencies are responsible for accuracy, maintenance, and compliance of their content and digital services. [SRC-001]

## Implementation notes for AI agents

- Treat this document as the **root dependency**: other domain docs implement specific pillars named here (accessibility, reliability/performance, privacy, security, content).
- For greenfield builds, default to **web over native** unless the use case clearly requires weekly recurring mobile-only interaction.
- Structure projects so compliance artifacts exist: accessibility statement, privacy policy link, performance test plan, security assessment trail, design system adoption.
- Do not ship political campaign content, unapproved analytics tags, or non-HTTPS endpoints on official domains.

## Pre-launch verification

- [ ] Product is classified as a public-facing Digital Experience under city policy
- [ ] NYC Digital Design System adopted (see [07-design-system.md](07-design-system.md))
- [ ] All related policies in requirement 5 addressed in CHECKLIST
- [ ] Agency ownership and OTI coordination path documented
- [ ] Native app rationale documented if not building web-first

## Sources

- [SRC-001] Public Digital Experiences Policy — https://designsystem.nyc.gov/standards/policies/public-digital-experiences-policy.html
- [SRC-002] nyc.gov Domain Usage Policy — https://designsystem.nyc.gov/standards/policies/nyc-gov-domain-usage.html
- [SRC-003] NYC Charter Chapter 48 (authority cited in Public Digital Experiences Policy)

See full bibliography: [SOURCES.md](SOURCES.md)
