# 03 — Performance and Load Testing

## Scope

**Mandatory** for all citywide **public-facing applications**, including mobile applications that connect to server-based infrastructure serving multiple users.

Applies to all new or modified public-facing systems. Internal apps may use this policy as guidance but testing is not mandated for internal-only systems.

Audience: agency employees, contractors, architects, system integrators, and technical leads responsible for pre-deployment performance testing.

## Legal and policy basis

| Document | ID |
|----------|-----|
| Citywide Policy for Performance Testing of Public-Facing Applications (Policy 2012-01, v2.1, 3/10/2025) | [SRC-020] |
| nyc.gov Domain Usage Policy (requires performance testing compliance) | [SRC-002] |
| NYC Charter Chapter 48; Executive Order 3 of 2022 (OTI policy authority) | [SRC-003] |

## Requirements

### Mandatory scope

1. All citywide public-facing applications, **including mobile applications** with server backends, **must** be subject to performance testing meeting this policy. [SRC-020]

2. Performance testing is **mandatory in all circumstances** for public-facing applications. [SRC-020]

### Required tests

Expected load **must be determined** during business analysis. Once established:

3. **Stress test (mandatory):** Execute with at least **3 hours steady state** (excluding ramp up/down) at **≥120%** of estimated expected maximum load. Determines robustness, availability, and error handling under extreme load. [SRC-020]

4. **Stability/soak/endurance test (mandatory):** Run at least **12 hours steady state** at load **≥ expected load** (may equal stress test load or lower). Determines whether performance degrades over time. [SRC-020]

5. **Breakpoint test (recommended):** Gradually increase load until system behavior is unacceptable. **Recommended before stress test.** [SRC-020]

### Exit criteria (must pass before deployment)

6. Mandatory stress and soak tests **fully complete**. [SRC-020]

7. **System parameters** during tests: [SRC-020]
   - Peak CPU utilization **≤ 65%**
   - **40/60 distribution** between load balancers
   - Memory utilization **≤ 80%**
   - No memory buildup during or immediately after test
   - No memory leaks after test completion
   - Database not exhausted; no DB errors; application functions as expected throughout

8. **Response times:** [SRC-020]
   - Average page response time **< 3 seconds**
   - 90th percentile page response time **< 5 seconds**
   - Pages with forms, web services, or Documentum-based flows: average **< 30 seconds**, 90th percentile **< 50 seconds**
   - Upload of valid picture file (~2.92 MB): average **< 30 seconds**, 90th percentile **< 50 seconds**

9. All **priority 1 and 2 defects resolved** before signoff. [SRC-020]

10. **OTI QA Director and Business Project Managers** must approve performance test results. [SRC-020]

### Entry criteria (before testing begins)

11. Application near final build; medium/high defects fixed; at least one system test pass during script execution. [SRC-020]

12. Staging environment configured; test tools set up; performance scripts coded and reviewed. [SRC-020]

### Process and governance

13. **Regardless of who conducts testing**, OTI QA **must approve** all performance testing standards, procedures, and exit criteria before deployment. [SRC-020]

14. If OTI QA does not conduct testing, it **must validate** exit criteria before deployment. [SRC-020]

15. Agencies **must submit documentation to OTI six weeks before Go-Live**, including: [SRC-020]
    - Brief application description or demo
    - Environment/infrastructure diagram
    - Test approach, expected load, scenarios, transactions measured
    - Tools used or OTI tool access request
    - Performance test results in acceptable format

16. Agencies **MUST NOT publicly commit to a launch date** until performance testing is complete and **OTI QA signoff** is obtained. [SRC-020]

17. Agencies should contact OTI **six weeks before Go-Live** (resources are limited). [SRC-020]

### Required activities (Appendix B)

18. When performance testing is done, these eight activities are **required** — each must be documented: [SRC-020]

| # | Activity | Description |
|---|----------|-------------|
| 1 | Project context | Vision, objectives, success criteria, lifecycle, budget, risks |
| 2 | Test scope | n-tier components, load generators, simulated user devices |
| 3 | Identify test environment | Hardware, network, load balancers, DNS, parity with production |
| 4 | Performance acceptance criteria | Response time, throughput, resource utilization targets |
| 5 | Plan and design tests | Key usage scenarios, test data, metrics to collect |
| 6 | Configure test environment | Seed data, monitoring tools, load generator setup |
| 7 | Execute tests | Run mandatory stress and soak tests; optional breakpoint |
| 8 | Analyze results and report | Compare metrics to exit criteria; report to OTI QA |

19. OTI QA **must review** test scenarios and confirm required activities were conducted before deployment (when OTI does not run tests). [SRC-020]

### Pre-deployment artifact bundle

20. Submit to OTI QA **six weeks before Go-Live**: [SRC-020]
    - (a) Brief application description or demo
    - (b) Environment/infrastructure diagram
    - (c) Test approach, expected load, scenarios, transactions measured
    - (d) OTI tool access request or description of tools used
    - (e) Performance test results in acceptable format (Appendix D sample)

### Appendix E (current v2.1)

21. **Note:** Policy v2.1 Appendix E is **"Risks Addressed by Performance Test Types"** (not the legacy Deployment Readiness Checklist from earlier versions). Use it to map which risks each test type mitigates. [SRC-020]

22. Appendix E covers how stress, soak, and breakpoint tests address: reputation damage from poor performance; unexpected traffic spikes; resource exhaustion; memory leaks; and load balancer failures. [SRC-020]

## Implementation notes for AI agents

### Architecture

- Design for horizontal scaling and load-balanced n-tier architecture.
- Avoid unbounded queries, N+1 database access, synchronous blocking calls on hot paths.
- Cache static and semi-static content; use CDN for assets where appropriate.
- Set timeouts, connection pool limits, and circuit breakers for external services.

### Development targets (align code with exit criteria)

- Target **< 3s average** and **< 5s p90** for standard page loads under expected concurrent users.
- Form submissions and service integrations: target **< 30s average**, **< 50s p90**.
- File uploads (~3 MB images): same 30s/50s targets.
- Monitor memory for leaks in long-running processes; avoid unclosed connections.

### Testing artifacts to generate

- Load model document (expected users, transactions, peak scenarios)
- Test scripts for critical user journeys
- Infrastructure diagram matching staging ≈ production
- Results report mapping metrics to exit criteria

### Do not

- Skip load testing because "it's a small app" — policy has no small-app exemption for public-facing systems.
- Promise launch dates before OTI QA signoff.

## Pre-launch verification

- [ ] Expected load documented from business analysis
- [ ] Stress test (≥3h @ ≥120% load) completed and passed
- [ ] Soak test (≥12h @ ≥ expected load) completed and passed
- [ ] Breakpoint test completed (recommended)
- [ ] All exit criteria metrics met (CPU, memory, response times, DB stability)
- [ ] P1/P2 defects resolved
- [ ] All eight Appendix B activities documented [SRC-020]
- [ ] Pre-deployment artifact bundle (a–e) prepared for OTI QA [SRC-020]
- [ ] Appendix E risk mapping reviewed for test coverage [SRC-020]
- [ ] OTI QA signoff obtained
- [ ] No public launch date committed before signoff

## Sources

- [SRC-020] Citywide Policy for Performance Testing of Public-Facing Applications (PDF) — https://www.nyc.gov/assets/oti/downloads/pdf/vendor-resources/citywide-policy-for-performance-testing-of-public-facing-applicationsv2_1.pdf
- [SRC-002] nyc.gov Domain Usage Policy — https://designsystem.nyc.gov/standards/policies/nyc-gov-domain-usage.html
- [SRC-003] NYC Charter Ch. 48 / EO 3 (cited in performance policy)

See full bibliography: [SOURCES.md](SOURCES.md)
