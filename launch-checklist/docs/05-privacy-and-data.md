# 05 — Privacy and Identifying Information

## Scope

City web applications that **collect, use, disclose, access, or retain identifying information** — or that operate as official city digital services subject to the NYC.gov Privacy Policy.

Applies to developers, product owners, agency privacy officers, and AI agents handling user data, forms, analytics, or integrations.

## Legal and policy basis

| Document | ID |
|----------|-----|
| Identifying Information Law (Admin Code §§23-1201–23-1205) | [SRC-040] |
| Citywide Privacy Protection Policies and Protocols (CPPPP, 2025) | [SRC-041] |
| Agency Privacy Officer Toolkit (2025) | [SRC-042] |
| NYC.gov Privacy Policy | [SRC-043] |
| Online Analytics Policy (privacy-related analytics rules) | [SRC-044] |

## Requirements

### Identifying Information Law

1. City agencies and certain contractors **must follow** privacy protection policies issued by the Citywide Chief Privacy Officer governing collection, retention, and disclosure of identifying information. [SRC-040], [SRC-041]

2. **Identifying information** includes data that identifies or can be used to identify individuals, as defined in Admin Code §23-1201 (including categories expanded in CPPPP such as biometric patterns, voiceprints, facial geometry, and similar identifiers where applicable). [SRC-041]

### Privacy by design

3. Agencies are **encouraged and expected** to use **privacy by design** when developing systems, applications, or services that process identifying information — embedding protections into architecture, design, and business processes at project inception. [SRC-041]

4. Agency privacy officers **should coordinate** with IT, general counsel, CISO, and OTI on technical requirements for identifying information handling. [SRC-041]

### Privacy principles (CPPPP)

5. Apply core privacy principles including: [SRC-041]
   - **Data minimization** — collect only what is necessary for the stated purpose
   - **Purpose limitation** — use data only for approved purposes
   - **Retention limits** — do not retain longer than necessary
   - **Access controls** — restrict access to authorized personnel
   - **Transparency** — inform the public through privacy policies and notices

6. Sensitive identifying information **must receive** security protection commensurate with classification, including encryption per Citywide Encryption Standard when stored or transmitted. [SRC-041]

7. Agencies **may need** a **Privacy Impact Assessment (PIA)** for new or changed uses of identifying information; consult agency privacy officer. [SRC-042]

### Program privacy policies

8. Agencies **should publish** program-specific privacy policies for services/products processing identifying information, using toolkit templates as guidance. [SRC-042]

9. Privacy policies **should address**: what is collected, why, how used, sharing, retention, security, and individual rights/mechanisms where applicable. [SRC-042]

### NYC.gov Privacy Policy (official sites)

10. Official NYC.gov sites **automatically collect** categories of technical information (IP address, browser type, date/time, pages accessed, referrer URL) to improve site performance and compatibility. [SRC-043]

11. The City **does not collect** data for commercial or marketing purposes and **does not sell or exchange** NYC.gov-collected data for commercial/marketing purposes. [SRC-043]

12. Official sites **must comply** with the NYC.gov Privacy Policy and Terms of Use (required by domain policy). [SRC-002], [SRC-043]

### Online analytics (privacy intersection)

13. Analytics data **shall not be used to re-identify individuals**; collection must be aggregate-level for approved purposes. [SRC-044]

14. Agencies **must ensure** analytics/identifying information collection has a **clear intended purpose** and complies with applicable law and policy. [SRC-044]

15. Agencies **must remove** tags when the intended purpose is complete. [SRC-044]

### Contractor obligations

16. Contractors handling identifying information **must comply** with Identifying Information Rider terms and Citywide Cybersecurity Requirements for Vendors. [SRC-045]

17. Contractors **must use** appropriate safeguards for identifying information and cooperate with security/privacy audits. [SRC-045]

## Implementation notes for AI agents

### Data collection

- Default to **not collecting** identifying information unless the feature requires it.
- For each form field, document: purpose, legal basis, retention period, who can access.
- Avoid collecting duplicate data already held by the city in other systems.

### Privacy policy and notices

- Link to NYC.gov Privacy Policy on all official sites.
- Add program-specific privacy notice where the app collects data beyond standard NYC.gov logging.
- Disclose cookies/analytics use; follow Online Analytics Policy for tag implementation.

### Storage and transmission

- Classify data before persisting (see [04-application-security.md](04-application-security.md)).
- Encrypt sensitive/restricted identifying information at rest and in transit.
- Do not log PII in application logs, error trackers, or analytics events.

### Third parties

- Vet subprocessors; ensure contracts include Identifying Information Rider where required.
- Do not send city identifying information to unapproved external services (including personal AI accounts).

### Analytics

- Route tags through OTI Citywide Tag Management System (see [06-domain-content-analytics.md](06-domain-content-analytics.md)).
- Configure analytics to avoid user-level re-identification; honor retention limits.

## Pre-launch verification

- [ ] Agency Privacy Officer consulted for identifying information use
- [ ] PIA completed if required
- [ ] Program privacy policy published (if applicable)
- [ ] NYC.gov Privacy Policy linked on site
- [ ] Data minimization and retention documented
- [ ] Encryption and access controls match data classification
- [ ] Analytics configured without re-identification; tags via OTI tag management
- [ ] Contractor privacy/security riders in place (if vendor-built)

## Sources

- [SRC-040] Identifying Information Law (Admin Code §§23-1201–23-1205) — summarized in CPPPP
- [SRC-041] Citywide Privacy Protection Policies and Protocols (2025) — https://www.nyc.gov/assets/oti/downloads/pdf/reports/cpo/2025%20Citywide%20Privacy%20Protection%20Policies%20and%20Protocols_web.pdf
- [SRC-042] Agency Privacy Officer Toolkit (2025) — https://www.nyc.gov/assets/oti/downloads/pdf/reports/cpo/2025%20Agency%20Privacy%20Officer%20Toolkit%20_web.pdf
- [SRC-043] NYC.gov Privacy Policy — https://www.nyc.gov/main/nyc-gov-privacy-policy
- [SRC-044] Online Analytics Policy — https://designsystem.nyc.gov/standards/policies/online-analytics-policy.html
- [SRC-045] Identifying Information Rider — https://www.nyc.gov/assets/opa/downloads/pdf/identifying-information-rider.pdf

See full bibliography: [SOURCES.md](SOURCES.md)
