# 06 — Domain, Content, and Analytics

## Scope

**Official City Websites** (nyc.gov domain and sites where OTI controls content) and other public-facing NYC government web applications representing the city.

Covers domain usage rules, content standards, plain language, and online analytics implementation.

## Legal and policy basis

| Document | ID |
|----------|-----|
| nyc.gov Domain Usage Policy | [SRC-002] |
| City Website Content Requirements Policy | [SRC-050] |
| NYC Web Content Style Guide | [SRC-051] |
| Online Analytics Policy | [SRC-044] |
| Agency/Initiative Website Process | [SRC-052] |
| Local Law 30 of 2017 (plain language / language access) | [SRC-053] |

## Requirements

### Domain usage

1. OTI **oversees and administers** the nyc.gov domain for official city information, communication, and services. [SRC-002]

2. Agencies are responsible for **accuracy, maintenance, and compliance** of their content on assigned domains. [SRC-002]

3. nyc.gov domains **must not** be used for: [SRC-002]
   - Commercial purposes unrelated to city services
   - Political campaign activity
   - Distribution of malware, open redirects, or malicious cyber activity

4. New domains are **reviewed by OTI security** per Cyber Command policies and SSAP/CCAP processes. [SRC-002]

5. Assigned domains **must comply with**: Performance Testing Policy, Privacy Policy, Public Digital Experiences Policy, Content Requirements, and Cyber Command policies. [SRC-002]

### Content requirements

6. All content on Official City Websites **must conform** to the NYC Web Content Style Guide. [SRC-050]

7. Content **must be** relevant, accurate, and appropriate. [SRC-050]

8. Agencies **must remove** content that does not meet relevance, accuracy, or appropriateness standards. [SRC-050]

9. OTI Web Operations **may enforce** by removing content/links, adding exit messaging, or revoking publishing privileges. [SRC-050]

10. Compliance is **required** because CISA may suspend or terminate the nyc.gov domain for .gov non-compliance. [SRC-050]

11. **Prohibited content** on Official City Websites includes (non-exhaustive): commercial advertising unrelated to city business, political campaign material, illegal content, and content violating related policies. [SRC-050]

### Plain language and style

12. All public-facing nyc.gov content **should be written in plain language** — understandable on first read. [SRC-051]

13. OTI-supported websites **are required** to follow the Web Content Style Guide. [SRC-051]

14. Guidelines align with **Local Law 30 of 2017** requiring plain language for documents and public communications about basic city services. [SRC-051], [SRC-053]

15. Use **AP style** where the guide does not specify otherwise. [SRC-051]

16. When writing URLs in copy: lowercase, omit `https://` and `www`; remember URL paths are case-sensitive. [SRC-051]

17. **AI-generated content** for city websites must follow OTI policies governing AI use in city government (see [09-ai-and-algorithmic-tools.md](09-ai-and-algorithmic-tools.md)). [SRC-051]

### Website process (operational)

18. NYC.gov sites use **standard agency templates** in TeamSite CMS (or Content API templates for newer sites) for consistent look, mobile access, and usability. [SRC-052]

19. Agencies **must maintain** site content in good order post-launch per process guidelines. [SRC-052]

### Online analytics

20. Analytics tags and cookies on Official City Websites **must be implemented through** the OTI-managed **Citywide Tag Management System** after the policy effective date. [SRC-044]

21. **All** online analytics and marketing tags **must** be implemented through the Citywide Tag Management System **by July 1, 2026**. [SRC-044]

22. Analytics data **shall not be used to re-identify individuals**. [SRC-044]

23. Data collection is **solely for purposes** outlined in the policy (improving UX, optimizing performance, measuring advertising performance at aggregate level). [SRC-044]

24. Agencies interested in tags **must work with OTI** to configure them. [SRC-044]

25. Tags are subject to **annual review and expiration** under OTI governance. [SRC-044]

26. Agencies **must remove** tags when the intended purpose is complete. [SRC-044]

## Implementation notes for AI agents

### Domain and HTTPS

- Serve all pages over HTTPS; use official city domains only for production services.
- No open redirect endpoints; validate redirect targets against an allowlist.

### Content

- Write at approximately **8th-grade reading level** where possible; short sentences and active voice.
- Use descriptive headings; front-load important information.
- Avoid jargon without explanation; define acronyms on first use.
- Do not generate political campaign content or unauthorized commercial promotions.

### UI copy

- Button labels should describe the action ("Submit application", not "Click here").
- Error messages should explain what happened and how to fix it in plain language.

### Analytics

- Do **not** embed Google Analytics, Meta Pixel, or other tags directly in code — coordinate OTI tag management integration.
- If adding event tracking, ensure events cannot reconstruct individual identities.
- Document analytics purpose; plan tag removal when studies conclude.

## Pre-launch verification

- [ ] Site on approved domain with OTI domain/security review complete
- [ ] HTTPS enforced; no malware/redirect vulnerabilities
- [ ] Content reviewed for accuracy, relevance, plain language, and style guide compliance
- [ ] Prohibited content absent
- [ ] NYC.gov Privacy Policy linked
- [ ] Analytics tags routed through OTI Citywide Tag Management System (or plan in place before July 1, 2026 deadline)
- [ ] AI-generated content reviewed per GenAI guidance if applicable

## Sources

- [SRC-002] nyc.gov Domain Usage Policy — https://designsystem.nyc.gov/standards/policies/nyc-gov-domain-usage.html
- [SRC-050] City Website Content Requirements Policy — https://designsystem.nyc.gov/standards/policies/city-website-content-requirements.html
- [SRC-051] NYC Web Content Style Guide — https://designsystem.nyc.gov/standards/nyc-web-content-style-guide.html
- [SRC-044] Online Analytics Policy — https://designsystem.nyc.gov/standards/policies/online-analytics-policy.html
- [SRC-052] Agency/Initiative Website Process — https://www.nyc.gov/site/process/index.page
- [SRC-053] Local Law 30 of 2017 — cited in Web Content Style Guide

See full bibliography: [SOURCES.md](SOURCES.md)
