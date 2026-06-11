# NYC Government Web App Compliance Guide — Index

Use this index to load only the documents you need.

| Doc | Topic | When to read |
|-----|-------|--------------|
| [01-public-digital-experiences.md](01-public-digital-experiences.md) | Umbrella policy, IDEA alignment, OTI authority | Always — start here |
| [02-accessibility.md](02-accessibility.md) | WCAG 2.2 AA, Local Laws 26 & 12, MOPD | All public-facing apps |
| [03-performance-testing.md](03-performance-testing.md) | Load/stress/soak testing, OTI QA signoff | All public-facing apps |
| [04-application-security.md](04-application-security.md) | P-AS-01, encryption, SSA, classification | All apps handling city data |
| [05-privacy-and-data.md](05-privacy-and-data.md) | Identifying Information Law, privacy-by-design | Apps collecting/storing user or city data |
| [06-domain-content-analytics.md](06-domain-content-analytics.md) | nyc.gov domain, content, analytics tags | Official city websites and services |
| [07-design-system.md](07-design-system.md) | NYC Digital Design System, `@nycds/core` | New or redesigned experiences |
| [08-cloud-hosting.md](08-cloud-hosting.md) | Cloud policy, accreditation | Apps hosted on SaaS/PaaS/IaaS |
| [09-ai-and-algorithmic-tools.md](09-ai-and-algorithmic-tools.md) | GenAI guidance, LL35, AI Action Plan | Apps with ML/AI/chatbot features |
| [10-open-data-conditional.md](10-open-data-conditional.md) | Open Data Law, SODA API | Apps publishing or consuming city datasets |
| [11-forms-linking-and-content.md](11-forms-linking-and-content.md) | Linking policy, forms, Terms of Use | Sites with links, forms, accounts |
| [12-language-access-and-idea.md](12-language-access-and-idea.md) | Local Law 30, IDEA pillars | Covered agencies, redesigns |
| [13-identity-and-mycity-conditional.md](13-identity-and-mycity-conditional.md) | NYC.ID SSO, MyCity | Apps with login or MyCity integration |
| [CHECKLIST.md](CHECKLIST.md) | Pre-launch master checklist | Before go-live |
| [SOURCES.md](SOURCES.md) | Canonical bibliography | When citing requirements |

**Machine-readable checklist:** [`../checklists/prelaunch.yaml`](../checklists/prelaunch.yaml)

## Document template

Each domain doc includes:

- **Scope**
- **Legal and policy basis**
- **Requirements** (numbered, testable)
- **Implementation notes for AI agents**
- **Pre-launch verification**
- **Sources**

## Priority order for new builds

1. Public Digital Experiences (01)
2. Design System (07)
3. Accessibility (02)
4. Application Security (04)
5. Privacy (05)
6. Performance Testing (03)
7. Domain, Content, Analytics (06)
8. Forms, Linking, Content (11)
9. Language Access and IDEA (12)
10. Cloud (08) — if applicable
11. Identity and MyCity (13) — if applicable
12. AI/Algorithmic (09) — if applicable
13. Open Data (10) — if applicable
