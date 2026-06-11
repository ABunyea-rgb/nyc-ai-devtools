# 13 — Identity and MyCity (Conditional)

## Scope

**Conditional** — apply when the web application:

- Requires user **login or accounts**
- Integrates with **MyCity**, **NYC.ID**, or citywide single sign-on
- Shares applicant/resident data across agencies

Does not apply to fully anonymous public information sites with no accounts.

## Legal and policy basis

| Document | ID |
|----------|-----|
| MyCity overview (NYC311) | [SRC-059] |
| MyCity Data Sharing Agreement | [SRC-063] |
| NYC.gov Terms of Use / NYC.ID Application Terms | [SRC-058] |
| NYC.gov Privacy Policy | [SRC-043] |
| Citywide Application Security Policy (individual auth) | [SRC-030] |
| Identifying Information Law / CPPPP | [SRC-041] |

## Requirements

### NYC.ID single sign-on

1. NYC is deploying **NYC.ID** as single sign-on for online city services under the MyCity initiative. [SRC-059]

2. Where OTI or agency mandates NYC.ID (e.g., DOB NOW, MyCity portal), applications **must integrate NYC.ID SSO** rather than building parallel credential stores. [SRC-059]

3. Users **must use individual accounts** — no shared login credentials. [SRC-030]

4. Account creation **requires** acceptance of Terms of Use and Privacy Policy; NYC.ID flows require NYC.ID Application Terms. [SRC-058], [SRC-043]

5. Email verification **must be completed** before account activation (NYC.ID confirmation flow). [SRC-059]

### MyCity portal

6. MyCity provides a **unified portal** for searching, applying for, and tracking city services and benefits. [SRC-059]

7. MyCity supports **NYC.ID login** and approved third-party identity providers; third-party login is permitted only through approved integration patterns. [SRC-059]

8. Users may **save information and documents** to MyCity profiles for future applications — design apps to consume prefilled data where data sharing agreements allow. [SRC-059], [SRC-063]

9. MyCity supports **translation into 10 languages** — identity and profile flows should not break i18n. [SRC-059]

### Inter-agency data sharing

10. Sharing applicant or resident data between agencies **requires** approved data sharing agreements (see MyCity Data Sharing Agreement model). [SRC-063]

11. Data shared through MyCity integrations **must comply** with Identifying Information Law, CPPPP, and classification/encryption requirements. [SRC-041], [SRC-035]

12. **Minimize** data collected at registration; collect only fields required for the service. [SRC-041]

### Security

13. Authentication flows **must use HTTPS** and secure session management. [SRC-030], [SRC-035]

14. **MFA** per city standards for privileged or sensitive account operations. [SRC-030]

15. Password/account problems **must route** users to official city recovery flows — link to NYC.gov Password and Account Problems resources. [SRC-058]

16. City **may suspend accounts** for Terms of Use violations including NYC.ID Application Terms. [SRC-058]

## Implementation notes for AI agents

- Before building custom auth, confirm with agency/OTI whether NYC.ID integration is required.
- Use OAuth/OIDC/SAML patterns prescribed by OTI for NYC.ID — do not store city passwords in app databases when SSO is mandated.
- Profile forms should prefill from MyCity resident data when API access is granted under data sharing agreement.
- Log authentication events for security audit without logging passwords or secrets.
- Separate NYC.ID (online SSO) from IDNYC (physical ID card) in user-facing copy. [SRC-059]

## Pre-launch verification

- [ ] Confirmed whether NYC.ID integration is required for this service
- [ ] SSO integration tested (login, logout, session expiry, password reset)
- [ ] Terms of Use, Privacy Policy, and NYC.ID Terms linked at account creation [SRC-058]
- [ ] Data sharing agreement in place if cross-agency data flows [SRC-063]
- [ ] Identifying information handling reviewed with APO [SRC-041]
- [ ] MFA enabled for sensitive operations [SRC-030]
- [ ] No parallel identity silo where NYC.ID is mandated

## Sources

- [SRC-059] MyCity (NYC311 article) — https://portal.311.nyc.gov/article/?kanumber=KA-03557
- [SRC-063] MyCity Data Sharing Agreement — https://www.nyc.gov/assets/oti/downloads/pdf/about/mycity-data-sharing-agreement.pdf
- [SRC-058] NYC.gov Terms of Use — https://www.nyc.gov/main/terms-of-use
- [SRC-043] NYC.gov Privacy Policy — https://www.nyc.gov/main/nyc-gov-privacy-policy
- [SRC-030] Application Security Policy P-AS-01 — https://www.nyc.gov/assets/oti/downloads/pdf/vendor-resources/citywide-application-security-p-as-01.pdf
- [SRC-041] CPPPP (2025) — https://www.nyc.gov/assets/oti/downloads/pdf/reports/cpo/2025%20Citywide%20Privacy%20Protection%20Policies%20and%20Protocols_web.pdf

See full bibliography: [SOURCES.md](SOURCES.md)
