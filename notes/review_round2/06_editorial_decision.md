# Editorial Decision Letter and Revision Roadmap — round 2 (after the SFR desk rejection)

Synthesizer: editorial_synthesizer_agent protocol (orchestrating session). Contract reviewer/reviewer_full/v2
(sha256 e9712090…7af). Inputs: EIC/R1/R2/R3/DA Phase 1 + Phase 2 in this folder, five subagents with separate
contexts and no access to each other's outputs or to earlier review rounds. Conformance
(`scripts/check_phase_conformance.py`, metadata `input/metadata.json`): all five seats PASS (conformance/*.txt).
Provenance (`07_panel_provenance.json`, replay-validated PASS): role_separated, fresh_context (within this panel
attempt), blind_to_peer_outputs = true; model_family_distinct, provider_distinct, human_distinct = false.
**Correlated-error disclosure:** all model-executed seats used one model family; role separation does not remove
correlated-error risk. Calibration status: NOT_CALIBRATED.

Context: Sustainable Finance Review desk-rejected SFR-09-2026-0113 on 11 October 2026 for "appropriateness … for our
journal" (no reviews). The next venue is not chosen; D6 was judged against sustainability-focused finance journals.

## Per-dimension matrix
| Dim | Priority | Eligible seats: judgement | Verdict |
|---|---|---|---|
| D1 methodology_rigor | mandatory | R1: block (repairable) | block |
| D2 domain_accuracy | mandatory | R2: block (repairable) | block |
| D3 argumentative_coherence | mandatory | DA: block (repairable); R1: warn | block (owner DA) |
| D4 cross_disciplinary_relevance | high | R3: warn | warn |
| D5 writing_and_structure | normal | EIC: warn | warn |
| D6 venue_fit_and_contribution | mandatory | EIC: block (repairable) | block |

F1 (fatal): does not fire. **F2 fires** (mandatory blocks on D1, D2, D3, D6) → at least major revision. F3 and F5
also fire. **Decision: MAJOR REVISION.** All five seats recommended Major Revision.

## DA CRITICAL adjudication
The DA CRITICAL band is empty. DA reports that the run-up-then-plateau core survives; the D3 block rests on the joint
weight of DA-M1 to DA-M5. No Accept conflict arises.

## Diagnosis of the desk rejection (consensus of EIC, R2, R3, DA)
The question is a sustainable-finance question (does entering the ESG-rated universe change firm value, and which
firms do raters select?), but the paper presents it as an applied-econometrics note: the abstract and keywords use
estimator vocabulary, the contribution paragraph ends on a pre-trend point, §6.3 opens "The main implication is
methodological", the ESG score enters only as a date, and §2 benchmarks against analyst coverage and S&P 500
additions instead of the literature on ESG ratings and ESG certification events. All seats judge this repairable with
the existing data; R2 adds that the literature gap needs verified sustainable-finance references.

## Consensus themes (≥ 3 seats)
1. Reframe for sustainable finance: title, abstract, keywords, contribution, implications (EIC, R2, R3, DA).
2. "Peak" overstates a run-up followed by a plateau; publication timing (R10) and its long-horizon profile must be
   reported and reconciled (DA, R1, EIC via title).
3. Selection on growth is one of several mechanisms; the Malaysian wave and disclosure mandates must be examined
   (DA, R2, R3).
4. Run-up uncertainty and wave-level dependence in inference (R1, DA, R3).
5. Stakeholder implications for raters, exchanges, regulators, investors (EIC, R3, DA, R2).

## Revision Roadmap (immutable; source-ordered)
| ID | Sources | Sev. | Item |
|---|---|---|---|
| RR2-1 | EIC-W1, W2, W3, W4, W5, W11; R3-W5; DA-M7 | major | Reframe for sustainable finance: retitle; running title; structured abstract in plain words (who gets rated, what follows); keywords with sustainability vocabulary; contribution paragraph addressed to ESG-demand, rating-coverage and ESG-premium literatures; remove "main implication is methodological" |
| RR2-2 | R2-W1, R2-W6, EIC-W9 | major | Rebuild §2 around ESG ratings as information/certification, ESG-demand price pressure, and rater selection, with verified references (rating-change and ESG-index-inclusion price evidence); Hartzmark and Sussman cited early and described as fund-level |
| RR2-3 | R2-W2, DA-m2, EIC-W6, DA-M7 | major | Restate channel predictions (recognition: gain; preference: sign depends on score; selection: permanent vs transitory run-up); present H3 as the sustainability test; add initial score purged of size, country and cohort |
| RR2-4 | R2-W4 | major | Correct Chen et al. (2004) (permanent addition effects); revisit the weight given to the transitory-value reading |
| RR2-5 | R2-W3, R2-W8, DA-m1 | major | Construct: "initiation of LSEG ESG coverage" (a data-vendor score); qualify "scored at all"; note the score is not the rating tied to fund holdings in the cited evidence; consistent terminology |
| RR2-6 | R2-W5, DA-M5, R3-W4 | major | Document disclosure-mandate timing in the five markets from verifiable sources and relate it to the coverage waves; discuss domestic ESG channels only with verified facts |
| RR2-7 | R3-W2, DA-M4 | major | Wave-level pre-coverage profiles (Malaysia 2021–22; Thailand and Singapore 2019–20; other cohorts); describe never-scored Malaysian firms; state the mechanism conditional on these profiles |
| RR2-8 | DA-M1, DA-M2, R1-W1, R1-W7 | major | Replace "peak" with what the estimates show; report R10 in the abstract with its fragility; report the R10 event-time profile and an R10 run with size held at the original g − 1; say which specification governs the long-horizon reading |
| RR2-9 | R1-W2, DA-M6 | major | Covariate-free event-time profile and pre-trend tests; size measured at g − 3; say whether the run-up figures survive |
| RR2-10 | R1-W3, DA-M3 | major | Market-by-industry cluster bootstrap for headline, R10 and pre-trend tests; drop "excludes" wording if intervals widen |
| RR2-11 | R1-W4, DA-M6 | major | Common support: drop scored firms above the 95th size percentile of controls; size bins instead of the quadratic |
| RR2-12 | R1-W5, DA-m3, R3-W3 | major | Bridge from static TWFE to the robust estimate (window/controls, covariates); replace "most of the gap" unless the bridge supports it; "can", not "will" |
| RR2-13 | R1-W6, DA-M3 | major | Intervals for the run-up figures in abstract, introduction and conclusion; state the MTB joint test (p = 0.074) |
| RR2-14 | DA-M5, R2-W7 | major | Ordering of events as the finding; provider selection, disclosure, index entry and equity issuance as consistent mechanisms; untested strategic-disclosure reading in §6 |
| RR2-15 | R3-W1, EIC-W7, R3-W7 | major | Stakeholder implications (raters, exchanges, regulators, ESG investors and index builders, listed firms), each tied to a result and bounded by the design; data-vintage look-ahead point for data users |
| RR2-16 | EIC-W8, R3-W6 | minor | Lighten method exposition in the main text; plain-language translation of the sensitivity bound |
| RR2-17 | R1-W8, R1-W9, R1-W10, R1-W11, DA-m4, DA-m5 | minor | Two-year re-dating; reconcile firm counts; Table 1 calendar-year caveat; missing MTB by group; pre-/post-2020 cohort profiles; "never-scored firms adjusted for size, country and industry" instead of "comparable" |
| RR2-18 | EIC-W10 | minor | Companion-study disclosure in the text |
| RR2-19 | R2-W9 | minor | Re-verify Tsang et al. (2025) |
| RR2-20 | writing_audit.md (sciwrite + paper-writing gates) | minor | Sentence-level revisions: clutter, voice, buried predicates, term drift |

## Triage decisions (auto-resolved per CLAUDE.md §1b; ledger D-38 to D-41)
- All roadmap items are addressed. New analyses for RR2-3, RR2-7 to RR2-12 and RR2-17 run in R as exploratory round-4
  analyses (`project_R/R/03b_round4.R`, outputs `r4_*.csv`), reported in the Supplemental Appendix.
- New references (RR2-2, RR2-6) are added only after WebSearch verification of authors, year, title, venue and DOI
  (CLAUDE.md B4); unverifiable items are dropped.
- RR2-6: the data set's `gri` variable is not used as a disclosure proxy because GRI adoption is the central variable
  of the companion study (CLAUDE.md §0, B1). Disclosure timing is documented at market level from regulator sources.
- RR2-18: declined. The authors removed every mention of the companion manuscript (ledger D-27, D-30, author decision
  of 2026-09-26). The text keeps that decision; the cover letter for the next venue will raise it with the editor.
