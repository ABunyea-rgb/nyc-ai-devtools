# Pre-Launch Compliance Checklist

Master gate for NYC government **public-facing web applications**. Check each item before go-live. Cite `[SRC-xxx]` from [SOURCES.md](SOURCES.md) when flagging gaps.

**Machine-readable version:** [`../checklists/prelaunch.yaml`](../checklists/prelaunch.yaml) — keep in sync when editing this file.

**Legend:** `[R]` Required for all public-facing apps · `[C]` Conditional · `[P]` Process/approval (human gate)

---

## 1. Public Digital Experiences [R]

Doc: [01-public-digital-experiences.md](01-public-digital-experiences.md)

- [ ] Application classified as public-facing Digital Experience [SRC-001]
- [ ] New/redesign follows Public Digital Experiences Policy [SRC-001]
- [ ] Web-first approach documented (or native exception with weekly-use rationale) [SRC-001]
- [ ] Agency content ownership and maintenance plan defined [SRC-001]
- [ ] All related policies below addressed [SRC-001]

## 2. NYC Digital Design System [R]

Doc: [07-design-system.md](07-design-system.md)

- [ ] OTI Digital Service onboarding initiated/completed [SRC-061]
- [ ] `@nycds/core` or approved design system integration [SRC-061]
- [ ] UI follows brand, components, tokens, responsive patterns [SRC-001]
- [ ] ≥2 Digital Service design reviews completed (if design phase) [SRC-062]

## 3. Accessibility [R]

Doc: [02-accessibility.md](02-accessibility.md)

- [ ] WCAG 2.2 Level AA conformance verified [SRC-011], [SRC-014]
- [ ] Federal WCAG 2.1 AA floor met [SRC-011]
- [ ] Unique descriptive page titles on all pages [SRC-014]
- [ ] Color contrast ≥ 4.5:1; links not color-only (bold + underlined in body) [SRC-014]
- [ ] Keyboard and screen reader testing on critical paths [SRC-014]
- [ ] Accessible forms with unique per-field errors [SRC-056], [SRC-014]
- [ ] Tables and accordions meet NYC.gov standards [SRC-014]
- [ ] PDFs, video, maps meet WCAG 2.2 AA [SRC-015]
- [ ] Web accessibility statement posted [SRC-013]
- [ ] Complaint/feedback mechanism for accessibility live [SRC-013]
- [ ] Five-year accessibility plan process engaged with MOPD (agency process) [SRC-013]

## 4. Performance and Load Testing [R]

Doc: [03-performance-testing.md](03-performance-testing.md)

- [ ] Expected load documented from business analysis [SRC-020]
- [ ] Stress test: ≥3h steady state @ ≥120% expected max load [SRC-020]
- [ ] Soak/endurance test: ≥12h steady state @ ≥ expected load [SRC-020]
- [ ] Breakpoint test completed (recommended) [SRC-020]
- [ ] Avg page response < 3s; p90 < 5s [SRC-020]
- [ ] Form/service pages: avg < 30s; p90 < 50s [SRC-020]
- [ ] ~2.92 MB upload: avg < 30s; p90 < 50s [SRC-020]
- [ ] CPU ≤65%, memory ≤80%, no leaks, DB stable during tests [SRC-020]
- [ ] P1/P2 defects resolved [SRC-020]
- [ ] All eight Appendix B activities documented [SRC-020]
- [ ] Pre-deployment artifact bundle (a–e) prepared [SRC-020]
- [ ] Appendix E risk mapping reviewed [SRC-020]
- [ ] Documentation submitted to OTI QA ≥6 weeks before go-live [SRC-020]
- [ ] **OTI QA signoff obtained** [P] [SRC-020]
- [ ] No public launch date committed before signoff [SRC-020]

## 5. Application Security [R]

Doc: [04-application-security.md](04-application-security.md)

- [ ] Security-by-design documented [SRC-030]
- [ ] HTTPS enforced; secure cookie/session configuration
- [ ] Individual authentication; MFA per city standards [SRC-030]
- [ ] Data classified (Restricted/Sensitive/Non-Restricted) [SRC-031]
- [ ] Encryption at rest/transit for sensitive/restricted data [SRC-035], [SRC-041]
- [ ] Secure coding practices (input validation, output encoding, sessions) [SRC-036]
- [ ] Dev/staging/prod separation; no dev in production [SRC-030]
- [ ] Change control and separation of duties [SRC-030]
- [ ] Security assessment for production release [SRC-030]
- [ ] **CCISO acknowledgment of security assessment** [P] [SRC-030]
- [ ] Rollback plan for release [SRC-030]
- [ ] SSA/security scans completed if required [C] [SRC-038]
- [ ] Security accreditation within 30 business days if contractor [C] [SRC-038]
- [ ] Vulnerability scan/remediation documented [SRC-038]
- [ ] Incident response contacts and logging in place [SRC-039]
- [ ] Vendor security compliance if contractor-built [C] [SRC-033]

## 6. Privacy and Data [R]

Doc: [05-privacy-and-data.md](05-privacy-and-data.md)

- [ ] Agency Privacy Officer consulted for identifying information [SRC-041]
- [ ] Privacy-by-design applied [SRC-041]
- [ ] Data minimization and purpose limitation documented [SRC-041]
- [ ] PIA completed if required [C] [SRC-042]
- [ ] Program privacy policy published if applicable [SRC-042]
- [ ] NYC.gov Privacy Policy linked [SRC-043]
- [ ] No commercial sale/exchange of collected data [SRC-043]
- [ ] Identifying Information Rider in vendor contracts if applicable [C] [SRC-045]

## 7. Domain, Content, Analytics [R]

Doc: [06-domain-content-analytics.md](06-domain-content-analytics.md)

- [ ] Approved nyc.gov (or city) domain assignment [SRC-002]
- [ ] No malware, open redirects, or prohibited domain uses [SRC-002]
- [ ] Content accurate, relevant, appropriate [SRC-050]
- [ ] NYC Web Content Style Guide / plain language followed [SRC-051], [SRC-053]
- [ ] Prohibited content absent (political campaign, unauthorized commercial) [SRC-050]
- [ ] Analytics tags via OTI Citywide Tag Management System [SRC-044]
- [ ] Analytics deadline: all tags through tag management by **July 1, 2026** [SRC-044]
- [ ] Analytics not used to re-identify individuals [SRC-044]
- [ ] Tag removal plan when analytics purpose complete [SRC-044]

## 8. Cloud and Hosting [C]

Doc: [08-cloud-hosting.md](08-cloud-hosting.md)

Apply if using SaaS, PaaS, IaaS, or vendor-hosted infrastructure.

- [ ] OTI notified via Service Catalog / cloud intake [SRC-070]
- [ ] OTI IT Security approval before SaaS/PaaS procurement [P] [SRC-070]
- [ ] Cloud security accreditation completed [SRC-070]
- [ ] Data classification controls applied in cloud [SRC-070]
- [ ] SLA with infrastructure provider [SRC-030]
- [ ] Performance testing still completed (cloud does not exempt) [SRC-020]

## 9. AI and Algorithmic Tools [C]

Doc: [09-ai-and-algorithmic-tools.md](09-ai-and-algorithmic-tools.md)

Apply if app includes ML/AI features or GenAI was used to create public content.

- [ ] LL35 applicability determined (data analysis + decision-making + public impact) [SRC-081], [SRC-082]
- [ ] Algorithmic tool reporting plan if LL35 applies [SRC-081]
- [ ] Agency approvals (APO, CISO, counsel, ACCO as needed) [SRC-080]
- [ ] City-managed AI accounts only; no personal/free accounts [SRC-080]
- [ ] No Sensitive/Restricted data in unapproved AI tools [SRC-080]
- [ ] Human review for public-facing AI-generated content [SRC-080]
- [ ] Red-teaming / structured testing for public chatbots [SRC-085]
- [ ] MFA and audit logging on AI integrations [SRC-080], [SRC-083]
- [ ] **P-08-PR-DS compliance confirmed with CISO** [P] [SRC-083]
- [ ] AI Action Plan risk evaluation for public AI features [SRC-084]

## 10. Open Data [C]

Doc: [10-open-data-conditional.md](10-open-data-conditional.md)

Apply if app publishes or maintains public data sets.

- [ ] Open Data Coordinator engaged [SRC-091]
- [ ] Public datasets on NYC Open Data portal [SRC-090]
- [ ] Data dictionary published [SRC-092]
- [ ] Timely updates to portal [SRC-093]
- [ ] SODA API / open formats per Technical Standards Manual [SRC-094]
- [ ] Source attribution and version disclosure if redistributing [SRC-090]

## 11. Forms, Linking, and Content [R]

Doc: [11-forms-linking-and-content.md](11-forms-linking-and-content.md)

- [ ] Links follow Citywide Linking Policy (permitted/prohibited) [SRC-050], [SRC-055]
- [ ] Descriptive link text; same-tab default; no linked headings [SRC-055]
- [ ] NYC.gov Terms of Use linked on account-based flows [SRC-058]
- [ ] Forms accessible with unique per-field error messages [SRC-056], [SRC-014]
- [ ] Form QA completed (routing, responsive, errors) [SRC-056]
- [ ] Content conforms to Web Content Development Guidelines [SRC-057]

## 12. Language Access and IDEA [C]

Doc: [12-language-access-and-idea.md](12-language-access-and-idea.md)

Apply for covered agencies or IDEA-aligned redesigns.

- [ ] Plain language review completed [SRC-051], [SRC-053]
- [ ] Language Access Coordinator consulted if covered agency [SRC-053]
- [ ] Translations human-reviewed if multilingual [SRC-053]
- [ ] Site search and navigation support task completion [SRC-001]
- [ ] Digital forms preferred over PDF applications [SRC-056]

## 13. Identity and MyCity [C]

Doc: [13-identity-and-mycity-conditional.md](13-identity-and-mycity-conditional.md)

Apply if app has login, accounts, or MyCity integration.

- [ ] Confirmed whether NYC.ID SSO is required [SRC-059]
- [ ] SSO integration tested; no parallel identity silo [SRC-059]
- [ ] Terms, Privacy Policy, NYC.ID Terms at account creation [SRC-058], [SRC-043]
- [ ] Data sharing agreement if cross-agency data [SRC-063]
- [ ] MFA for sensitive account operations [SRC-030]

---

## Launch blockers (do not go live without)

1. OTI QA performance testing signoff [SRC-020]
2. CCISO security assessment acknowledgment [SRC-030]
3. WCAG 2.2 AA conformance for public UI [SRC-011]
4. NYC.gov Privacy Policy compliance [SRC-043]
5. Approved domain and HTTPS [SRC-002]

## Quick reference: response time budgets

| Metric | Target |
|--------|--------|
| Page load (average) | < 3 seconds |
| Page load (90th percentile) | < 5 seconds |
| Form/service pages (average) | < 30 seconds |
| Form/service pages (90th percentile) | < 50 seconds |
| ~2.92 MB file upload (average) | < 30 seconds |
| ~2.92 MB file upload (90th percentile) | < 50 seconds |

Source: [SRC-020]
