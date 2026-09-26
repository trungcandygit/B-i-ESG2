# Citation Compliance Report — manuscript v2.1 (academic-paper, citation_compliance_agent, Phase 5a)

Date 2026-09-26. Style: Journal of Finance author–year (Free Format permitted by JF:IP; used consistently).

## 1. In-text ↔ reference list
- References: 31 (27 scholarly works; 4 data/regulatory/news sources).
- Every reference is cited at least once: YES
- No in-text citation missing from the list: YES (checks.py 'no in-text citation missing from references' PASS).

| First author | Year | In-text mentions |
|---|---|---|
| Avramov | 2022 | 2 |
| Baker | 2022 | 5 |
| Berg | 2020 | 3 |
| Berg | 2022 | 6 |
| Berg | 2022 | 6 |
| Bernama | 2022 | 2 |
| Bikmetova | 2026 | 3 |
| Callaway | 2021 | 13 |
| Chen | 2004 | 9 |
| Christensen | 2022 | 3 |
| Demiroglu | 2010 | 6 |
| Dobrick | 2023 | 3 |
| Gibson Brandon | 2021 | 2 |
| Goodman-Bacon | 2021 | 4 |
| Harris | 1986 | 8 |
| Hartzmark | 2019 | 3 |
| Kelly | 2012 | 4 |
| Krueger | 2024 | 6 |
| LSEG | 2025 | 1 |
| Merton | 1987 | 8 |
| Pástor | 2021 | 5 |
| Pedersen | 2021 | 6 |
| Rambachan | 2023 | 7 |
| Roth | 2022 | 8 |
| S&P Global Market Intelligence | 2025 | 1 |
| Sahin | 2023 | 4 |
| Sant'Anna | 2020 | 3 |
| Shleifer | 1986 | 3 |
| Singapore Exchange | 2016 | 5 |
| Tsang | 2024 | 3 |
| Tsang | 2025 | 3 |

## 2. Format
- Narrative citations use 'and', parenthetical lists use semicolons; works with four or more authors are written in full at first mention in the Introduction and as 'et al.' afterwards (Tsang et al.; Sahin et al.; Avramov, Cheng, Lioui, and Tarelli is written in full in the Introduction).
- Reference list: alphabetical by first author; journal names italic; volume(issue), pages; DOI as https://doi.org/… with no trailing period.

## 3. DOI / URL
- Scholarly works with DOI: 24/27. Without DOI: Berg, Berg, Dobrick (two working papers with SSRN URLs; Dobrick et al. 2023 DOI string not verified, so omitted rather than guessed).
- All DOIs were matched to verification records in notes/05_references_verified.md; doi.org resolution itself is blocked by the network proxy and is reported as unchecked.

## 4. Additional checks
- Self-citation: 0 of the references are by the authors (the companion study is disclosed in the text, not cited as a reference) → 0%.
- Currency: 18/27 scholarly works from 2021 or later (67%). Older than 10 years (all seminal): Chen 2004, Demiroglu 2010, Harris 1986, Kelly 2012, Merton 1987, Shleifer 1986.
- Citation density: every analytical paragraph in Sections 1–6 that makes a claim about prior work, theory or method carries a citation; paragraphs without citations report the paper's own data or estimates, state hypotheses, or describe the use of AI.
- Over-citation (> 5 works in one sentence): 0 sentences.

## 5. Retraction screening
- Not checked against Retraction Watch (no database access in this environment). No reference is known to the authors to be retracted; status reported as `not_checked`.

## 6. Changes in v2.1 (author instruction 2026-09-26)
- Added citations of references already in the list (no new authors) to Methods (§4.1–4.5) and Results (§5.1–5.6), and to the hypotheses, data and discussion paragraphs, so that each result is related to prior work and each method step to its source.

Verdict: PASS (zero orphans, format consistent, DOIs complete where verifiable; retraction screening not_checked).
