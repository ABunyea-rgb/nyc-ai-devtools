# 10 — Open Data (Conditional)

## Scope

**Conditional** — apply only when the web application:

- Publishes **public data sets** that must appear on the NYC Open Data portal
- Consumes or redistributes city public datasets in ways subject to the Open Data Law
- Builds services on top of city open data APIs

Does **not** apply to typical agency web apps that only display static content without dataset publishing obligations.

## Legal and policy basis

| Document | ID |
|----------|-----|
| Local Law 11 of 2012 (Open Data Law) / Admin Code Chapter 5 | [SRC-090] |
| Local Law 251 of 2017 (perpetual publishing mandate) | [SRC-091] |
| Local Law 107 of 2015 (data dictionaries) | [SRC-092] |
| Local Law 110 of 2015 (timely updates) | [SRC-093] |
| NYC Open Data Technical Standards Manual | [SRC-094] |

## Requirements

### Publishing mandate

1. **Public data sets** — comprehensive collections maintained on computer systems by or on behalf of a city agency — **must be made available** on the single NYC Open Data web portal. [SRC-090], [SRC-091]

2. Local Law 251 extends the mandate **in perpetuity** for datasets identified after the original 2018 deadline; agency commissioners **must appoint** an Open Data Coordinator. [SRC-091]

3. Public data sets **must be available** without registration, license, or use restrictions (subject to attribution/version disclosure rules for third-party republication). [SRC-090]

4. Third parties republishing datasets **must explicitly identify** source, version, and modifications. [SRC-090]

### Technical standards

5. OTI (formerly DoITT) **must maintain** a Technical Standards Manual for publishing datasets, using open standards where practicable. [SRC-090], [SRC-094]

6. The manual **must include** a plan to adopt or utilize a **web API** permitting applications to request and receive public datasets from the portal. [SRC-090]

7. NYC Open Data portal provides a **Socrata Open Data API (SODA)** for programmatic access to published datasets. [SRC-094]

8. Every dataset on Open Data **must have** a plain-language **data dictionary** (Local Law 107). [SRC-092]

9. Data published on agency websites **must be included and kept up-to-date** on Open Data (Local Law 110). [SRC-093]

### Web application standards (portal)

10. The Open Data web application supports modern browsers and permits listing, viewing, exporting, embedding, filtering, visualizing, and related operations on public datasets. [SRC-094]

## Implementation notes for AI agents

### When building apps that expose city data

- Confirm with agency Open Data Coordinator whether data qualifies as a **public data set** requiring portal publication.
- Use **open formats** (CSV, JSON, GeoJSON, etc.) per Technical Standards Manual.
- Provide or link to a **data dictionary** with field definitions in plain language.
- If building API integrations, use **SODA API** patterns and document dataset IDs/versions.

### Attribution

- If the app repackages open data, display **source attribution** and **dataset version** prominently.
- Document any transformations applied to raw data.

### Sync

- Automate pipeline to keep portal datasets current if the app is the system of record.
- Align update frequency with Local Law 110 timely-update requirements.

## Pre-launch verification

- [ ] Determined whether app creates or maintains public data sets
- [ ] If yes: Open Data Coordinator engaged
- [ ] Dataset published or scheduled on NYC Open Data portal
- [ ] Data dictionary provided
- [ ] Open formats and API access considered per Technical Standards Manual
- [ ] Third-party attribution/version disclosure implemented if redistributing data
- [ ] Update/sync process documented

## Sources

- [SRC-090] NYC Open Data Law summary / Admin Code Ch. 5 — https://opendata.cityofnewyork.us/open-data-law/
- [SRC-091] Local Law 251 of 2017 — https://opendata.cityofnewyork.us/open-data-law/
- [SRC-092] Local Law 107 of 2015 — https://opendata.cityofnewyork.us/open-data-law/
- [SRC-093] Local Law 110 of 2015 — https://opendata.cityofnewyork.us/open-data-law/
- [SRC-094] NYC Open Data Technical Standards Manual — http://cityofnewyork.github.io/opendatatsm/publicstandards.html

See full bibliography: [SOURCES.md](SOURCES.md)
