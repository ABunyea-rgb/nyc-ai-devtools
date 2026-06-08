# 04 — Application Security

## Scope

All applications that **pass or store data owned by the City of New York**, including:

- Externally accessible public-facing applications
- Internally accessible mission-critical applications
- Vendor-customizable COTS and in-house developed applications
- Cloud-based applications

Applies to NYC agencies, contractors, and service providers building or operating city web applications.

## Legal and policy basis

| Document | ID |
|----------|-----|
| Citywide Application Security Policy (P-AS-01) | [SRC-030] |
| Citywide Information Classification Policy | [SRC-031] |
| OTI Vendor Cybersecurity Requirements | [SRC-032] |
| Service Provider Security Policy | [SRC-033] |
| Software Security Assurance (SSA) process (contract/security attachments) | [SRC-034] |
| Citywide Application Security Standard (S-AS-01) | [SRC-036] *(summarized from public sources)* |
| Citywide Encryption Policy / Standard (P-02 / S-02-PR-DS) | [SRC-035] *(summarized from public sources)* |
| Citywide Information Management Policy / Standard (P-ID-RA-02 / S-ID-RA-02) | [SRC-037] *(summarized)* |
| SSA / Security Accreditation (SSAP) | [SRC-038] |
| Citywide Incident Response Policy (P-IR-01) | [SRC-039] *(summarized)* |

## Requirements

### Policy scope and alignment

1. Policy applies to all NYC agencies, offices, departments, entities, and personnel working on behalf of the City. [SRC-030]

2. Policy is consistent with **NIST 800-53** and **CIS Control 18** (Application Software Security). [SRC-030]

3. Agencies **must establish** management responsibilities and procedures for application security by design and implementation. [SRC-030]

### Security by design

4. All applications **must implement** adequate security measures protecting **confidentiality, integrity, and availability** of data at rest, in use, and in motion. [SRC-030]

5. Applications **must comply** with Citywide Policies and Standards for encryption, access control, and related controls. [SRC-030]

### Access control

6. All access to City systems **must be authorized** and based on **individual identification and authentication**. [SRC-030]

7. Implement **least privilege** and role-based access; no shared accounts for production access.

### Application environment

8. Development activities **may only be conducted in non-production environments**. [SRC-030]

9. **Separation of duties** must protect production from unauthorized modification. [SRC-030]

10. **Change control procedures** must ensure only authorized changes reach production. [SRC-030]

### Infrastructure security

11. Application hosting **must comply** with City security policies and standards. [SRC-030]

12. A **Service Level Agreement** must be defined with the infrastructure provider. [SRC-030]

13. Infrastructure environment **must be scanned periodically**. [SRC-030]

### Releases to production

14. Application modifications **must go through** a change release process including an **appropriate security assessment**. [SRC-030]

15. Production deployments **must comply** with City security policies and receive **CCISO (or designee) acknowledgment** of completed security assessment. [SRC-030]

16. Each release **must have** a defined **rollback plan**. [SRC-030]

17. CCISO provides a tool to identify security requirements based on architecture, back-end technologies, and applicable regulations (referenced in P-AS-01). [SRC-030]

### Information classification

18. All information **must be classified** as Restricted, Sensitive, or Non-Restricted per city criteria. [SRC-031]

19. **Identifying Information** (Admin Code §23-1201) and **Personal Identifying Information** (Admin Code §10-501) **must be classified** Sensitive or Restricted unless agency privacy officer or CPO determines otherwise. [SRC-031]

20. Information **must be handled** per Citywide Information Management Policy (P-ID-RA-02) and Standard (S-ID-RA-02). [SRC-031]

### Vendor and contractor obligations

21. Service providers **must agree in writing** to comply with all Citywide Information Security Policies and Standards. [SRC-033]

22. Deliverables **must be able to pass** the Citywide Security Accreditation Process where applicable. [SRC-033]

23. Service providers **must not introduce** viruses or malicious code to City systems. [SRC-033]

24. Service providers **must cooperate** with Security Accreditation tasks relevant to their deliverables. [SRC-033]

25. Contractors **must submit** applications/systems to **Software Security Assurance (SSA)** testing; failure can result in contract termination. [SRC-034]

26. Contractors must comply with policies published at OTI vendor cybersecurity resources page. [SRC-032]

### Application Security Standard (S-AS-01)

*Full standard is on CityShare; requirements below are summarized from P-AS-01 and public contract guidance.* [SRC-036], [SRC-030]

27. Implement **secure coding practices** consistent with NIST 800-53 and CIS Control 18 Application Software Security. [SRC-030], [SRC-036]

28. Protect data **confidentiality, integrity, and availability** at rest, in use, and in motion using appropriate mechanisms including encryption. [SRC-030], [SRC-036]

29. Validate and sanitize **all user input**; use parameterized queries; encode output to prevent injection and XSS. [SRC-036]

30. Implement **secure session management** — regenerate session IDs on privilege change; enforce timeouts; secure cookie flags. [SRC-036]

31. **Error handling** must not expose sensitive system details to end users or logs accessible to unauthorized parties. [SRC-036]

32. Maintain **dependency and patch management** for application libraries and frameworks. [SRC-036]

### Encryption (P-02-PR-DS / S-02-PR-DS)

*Cipher lists are in the intranet standard; obligations below are from CPPPP and P-AS-01.* [SRC-035], [SRC-041]

33. Sensitive or Restricted information **must not** be stored or transmitted over any communication mechanism unless protected by **approved encryption** or other secure means. [SRC-035], [SRC-041]

34. Identifying information classified Sensitive or Restricted **must use** encryption protocols reflected in the Citywide Encryption Standard. [SRC-035], [SRC-041]

35. **TLS** must protect data in transit for public-facing web applications (HTTPS everywhere). [SRC-035], [SRC-030]

36. **Encrypted storage** must protect Restricted/Sensitive data at rest in databases, file stores, and backups. [SRC-035]

37. Use **NIST-approved cryptographic algorithms** per the Encryption Standard; agency CISO confirms approved ciphers. [SRC-035]

### Information management (P-ID-RA-02 / S-ID-RA-02)

38. Information **must be handled** according to its classification throughout its lifecycle (creation, use, storage, transfer, retention, disposal). [SRC-037], [SRC-031]

39. Agencies **must maintain and update** classification of information they own or process. [SRC-031], [SRC-037]

40. **Retention and disposal** must follow Citywide Information Management Policy and Standard — do not retain city data longer than necessary for the stated purpose. [SRC-037], [SRC-041]

41. Transfer of Restricted/Sensitive data between systems requires **approved secure channels** and documented authorization. [SRC-037], [SRC-035]

### Software Security Assurance (SSA) and security accreditation

42. The **SSA process** ensures software operates at a security level commensurate with potential harm from loss, inaccuracy, alteration, unavailability, or misuse of data it uses or protects. [SRC-030], [SRC-038]

43. Applications **must undergo** SSA/security testing before production, including staging application scans and penetration testing where required by contract or Cyber Command. [SRC-034], [SRC-038]

44. Contractors **must complete** security accreditation tasks within **30 business days** unless Cyber Command grants an extension. [SRC-034], [SRC-038]

45. Deliverables **must pass** the Citywide Security Accreditation Process (SSAP) where applicable before connecting to production city infrastructure. [SRC-033], [SRC-038]

46. New **nyc.gov domains** are reviewed through Cyber Command **SSAP/CCAP** processes before assignment. [SRC-002], [SRC-038]

47. If required, submit information into the **SSA tool** and remediate findings before CCISO acknowledgment. [SRC-030], [SRC-038]

### Vulnerability management and incident response

48. Infrastructure environments **must be scanned periodically**; identified vulnerabilities must be remediated per city timelines. [SRC-030], [SRC-038]

49. Contractors **must inform Cyber Command** of identified vulnerabilities within **10 business days** and provide remediation reports. [SRC-034]

50. Web applications **must support** security logging and cooperate with **Citywide Incident Response Policy (P-IR-01)** procedures when a security incident occurs. [SRC-039]

51. On suspected breach involving city data, **notify agency CISO and Cyber Command** per agency incident response plan — do not destroy evidence. [SRC-039], [SRC-034]

## Implementation notes for AI agents

### Transport and hosting

- **HTTPS everywhere**; HSTS on production domains; no mixed content.
- Secure cookies: `Secure`, `HttpOnly`, `SameSite` as appropriate.

### Authentication and authorization

- Individual user accounts; MFA for privileged and remote access per city cybersecurity standards.
- Server-side authorization checks on every protected route/API — never rely on client-side alone.

### Data protection

- Encrypt sensitive/restricted data at rest and in transit per Citywide Encryption Standard.
- Classify data before storing; minimize collection of Identifying Information.
- No secrets in source code, client bundles, or logs; use environment variables and secret managers.

### Secure development

- Input validation and parameterized queries; CSRF protection on state-changing forms.
- Output encoding to prevent XSS.
- Dependency scanning and timely patching.
- Structured logging and audit trails for security-relevant events (without logging secrets or excessive PII).

### Environment separation

- Separate dev, staging, and production configs and credentials.
- No production data in lower environments without approval and de-identification.

### Release process

- Document security assessment and rollback plan for each production release.
- Route CCISO acknowledgment through agency CISO — not an AI agent decision.

## Pre-launch verification

- [ ] Threat model or security assessment completed for the application
- [ ] CCISO (or designee) acknowledgment path initiated for production release
- [ ] SSA/security accreditation completed if required by contract
- [ ] Data classified; handling matches classification level
- [ ] HTTPS, auth, MFA, encryption, and access controls implemented
- [ ] Dev/staging/prod separation verified
- [ ] Rollback plan documented
- [ ] Vendor security rider requirements met (if contractor-built)
- [ ] Encryption verified for Sensitive/Restricted data at rest and in transit [SRC-035]
- [ ] SSA/security scans and penetration tests completed if required [SRC-038]
- [ ] Security accreditation completed within 30 business days (if contractor) [SRC-038]
- [ ] Vulnerability scan/remediation documented [SRC-038]
- [ ] Incident response contacts and logging in place [SRC-039]

## Sources

- [SRC-030] Citywide Application Security Policy P-AS-01 — https://www.nyc.gov/assets/oti/downloads/pdf/vendor-resources/citywide-application-security-p-as-01.pdf
- [SRC-031] Citywide Information Classification Policy — https://www.nyc.gov/assets/oti/downloads/pdf/vendor-resources/information-classification.pdf
- [SRC-032] OTI Vendor Cybersecurity Requirements — https://www.nyc.gov/content/oti/pages/vendor-resources/cybersecurity-requirements-for-vendors-contractors
- [SRC-033] Service Provider Security Policy — https://www.nyc.gov/assets/oti/downloads/pdf/vendor-resources/service-provider.pdf
- [SRC-034] DOHMH Security Requirements Attachment (SSA reference) — https://www.nyc.gov/assets/doh/downloads/pdf/acco/2024/security-requirements.pdf
- [SRC-035] Citywide Encryption Policy/Standard (summarized) — CPPPP §1.5.3; P-AS-01 §4.3
- [SRC-036] Citywide Application Security Standard S-AS-01 (summarized) — P-AS-01; GenAI guidance footnotes
- [SRC-037] Citywide Information Management Policy/Standard (summarized) — classification policy; CPPPP
- [SRC-038] SSA / Security Accreditation (SSAP) — P-AS-01 §4.10; [SRC-002]; [SRC-034]
- [SRC-039] Citywide Incident Response Policy P-IR-01 (summarized) — CPPPP §1.5.3 policy list; [SRC-034]

See full bibliography: [SOURCES.md](SOURCES.md)
