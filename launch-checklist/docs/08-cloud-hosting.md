# 08 — Cloud and Hosting

## Scope

City web applications deployed on **cloud services** (SaaS, PaaS, IaaS) or hybrid hosting, including vendor-hosted solutions and agency-managed cloud infrastructure.

Applies when selecting, procuring, or implementing any cloud-based component of a public-facing digital experience.

## Legal and policy basis

| Document | ID |
|----------|-----|
| Citywide Policy on Cloud | [SRC-070] |
| Citywide Application Security Policy P-AS-01 | [SRC-030] |
| Public Digital Experiences Policy (reliability, security) | [SRC-001] |
| Performance Testing Policy (applies regardless of hosting) | [SRC-020] |

## Requirements

### Notification and approval

1. City entities **must inform OTI** of all uses of cloud services to ensure proper security, legal, and operational measures. [SRC-070]

2. Cloud use **must be submitted** through OTI's Service Catalog (or successor intake process). [SRC-070]

3. City entities **must abide by** all relevant Citywide technology policies regardless of hosting location. [SRC-070]

### SaaS and PaaS

4. All City uses of **SaaS or PaaS must be reviewed and approved by OTI IT Security prior to procurement and implementation**. [SRC-070]

5. Agencies **should inform OTI** as soon as a product is chosen, and **at minimum before a contract is signed**. [SRC-070]

6. OTI IT Security reviews critical aspects including authentication, data storage, integration, and alignment with citywide IT security policies. [SRC-070]

### IaaS

7. For IaaS, agencies are advised to leverage **OTI Self-Provisioning Gateway (SPG)** or an OTI-vetted approved provider. [SRC-070]

### Security accreditation

8. **All applications** in cloud environments **must go through** the OTI security accreditation review process, including those developed with SaaS providers. [SRC-070]

9. OTI **reserves the right** to perform cybersecurity assessments and IT audits on cloud provider environments protecting City data. [SRC-070]

10. Cloud applications remain subject to **security accreditation and performance testing** requirements regardless of hosting site. [SRC-070]

### Application security (hosting layer)

11. Application hosting solutions **must comply** with City security policies and standards (P-AS-01). [SRC-030]

12. A **Service Level Agreement** must be defined with the infrastructure provider. [SRC-030]

13. Infrastructure environment **must be scanned periodically**. [SRC-030]

14. Development **only in non-production**; separation of duties and change control for production. [SRC-030]

### Data classification in cloud

15. City entities **must adhere to** information/data security regulations commensurate with the **classification of data stored in the cloud**. [SRC-070]

16. Sensitive or Restricted identifying information requires protections per Citywide Encryption Standard and privacy policies. [SRC-041], [SRC-031]

### Performance testing

17. Public-facing cloud-hosted applications **must still complete** mandatory performance testing and obtain **OTI QA signoff** before go-live. [SRC-020]

## Implementation notes for AI agents

### Architecture decisions

- Prefer OTI-approved hosting paths (SPG, vetted providers) over ad hoc cloud accounts.
- Document data residency, encryption at rest/in transit, and backup/recovery in architecture diagrams for accreditation.
- Ensure staging environment mirrors production topology for performance testing (see [03-performance-testing.md](03-performance-testing.md)).

### Configuration

- Enable MFA, logging, and least-privilege IAM on cloud resources.
- Encrypt databases and object storage containing city data.
- Network segmentation: private subnets for databases; WAF/CDN at edge where appropriate.

### Procurement blockers (human-required)

- OTI IT Security approval before SaaS/PaaS contract signing is a **process gate** — flag early in project planning.
- Do not provision production cloud resources with city data before security accreditation.

### Vendor SaaS

- Verify vendor will cooperate with OTI security assessment/audit rights.
- Ensure contract includes city security and privacy riders (Identifying Information Rider, cybersecurity requirements).

## Pre-launch verification

- [ ] OTI notified via Service Catalog / intake process
- [ ] OTI IT Security approval obtained before procurement (SaaS/PaaS)
- [ ] Security accreditation review completed for cloud deployment
- [ ] Data classification mapped to cloud storage and transmission controls
- [ ] SLA defined with provider
- [ ] Periodic scanning configured
- [ ] Performance testing completed with OTI QA signoff
- [ ] Dev/staging/prod separation maintained in cloud environments

## Sources

- [SRC-070] Citywide Policy on Cloud — https://a856-cityrecord.nyc.gov/Search/GetFile?documentId=29935&requestId=20161027009&requestStatus=Archived&sectionId=6
- [SRC-030] Citywide Application Security Policy P-AS-01 — https://www.nyc.gov/assets/oti/downloads/pdf/vendor-resources/citywide-application-security-p-as-01.pdf
- [SRC-001] Public Digital Experiences Policy — https://designsystem.nyc.gov/standards/policies/public-digital-experiences-policy.html
- [SRC-020] Performance Testing Policy — https://www.nyc.gov/assets/oti/downloads/pdf/vendor-resources/citywide-policy-for-performance-testing-of-public-facing-applicationsv2_1.pdf

See full bibliography: [SOURCES.md](SOURCES.md)
