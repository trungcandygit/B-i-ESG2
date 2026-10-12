# Stage 3' re-review, Phase 1: criteria commitment (revision-blind)

Skill: `academic-paper-reviewer`, re-review mode, three-gate contract (#576 Spec B), `references/re_review_mode_protocol.md` § Phase 1. Machine artifact: `phase1_precommitment.json` (schema `shared/contracts/re_review/precommitment.schema.json`, contract 1.1). Round id: `review_round2-rereview-1`. Date: 2026-10-12.

## Inputs read (Round-1 materials only)

`notes/review_round2/06_editorial_decision.md`; `EIC_phase2.md`, `R1_phase2.md`, `R2_phase2.md`, `R3_phase2.md`, `DA_phase2.md`; `input/reviewer_configuration_cards.md`; `writing_audit.md`; `input/manuscript_for_review.md` (v3, the round-1 manuscript). Not opened: anything else under `rereview/`, `08_response_to_reviewers.md`, `manuscript/`, `submission/`, `project_R/outputs`, git history or diffs, older review rounds. No revised-manuscript content or metadata informed any record below; every operationalization traces to the roadmap text (level 1), the round-1 findings named in each item's Sources (level 3), or the frozen cards (level 4).

## Degraded states and recording decisions

1. **Input manifest.** No current `input_manifest` 1.1 was supplied to Phase 1. `input_manifest_hash` (`98ce2c98c754fcd24d611a93f53bdf61aaf7a58e65a17fb0a9a91eafb3b20e89`) is therefore NOT a 1.1 manifest hash: it is the sha256 of the canonical JSON (sorted keys, no whitespace, UTF-8) of a Phase-1 input listing `{kind: phase1_degraded_input_listing, round_id, artifacts: {path: sha256}}` over the nine files above. The protocol documents no placeholder value and the schema allows no note field, so the degradation is recorded here. Consequence: `scripts/check_re_review_synthesis.py` will stop at G0 (`manifest_incomplete` / `manifest_hash_mismatch`) unless the dispatching layer emits a 1.1 manifest and Phase 1 is rebound to it.

2. **Roadmap machine form.** The roadmap exists only as the Markdown table in `06_editorial_decision.md`; there is no Schema 7 / `revision-roadmap/1.0` file with a `verification_criteria` field. `inherited_criterion.roadmap_text` is the byte-exact `Item` cell of each row (extracted by script), the closest level-1 text.

3. **Item ids.** The schema requires `^REV-`; roadmap ids are mapped one-to-one as `RR2-n` → `REV-RR2-n`.

4. **Level-2 criterion layer.** The decision letter is present but carries no per-item Acceptance-criteria `R<n>` blocks, so no `letter_text` / `letter_item_ref` is recorded: `[CRITERIA-LAYER-ABSENT: letter present without per-item Acceptance-criteria R<n> blocks]`. Criteria rest on levels 1, 3, and 4.

5. **source_reviewer.** No Schema 7 `reviewer` field exists; the Sources cell lists finding ids (e.g. `EIC-W1`), which the §10 whole-token grammar would drop. `source_reviewer` is therefore the seat prefixes of the listed finding ids in first-appearance order, followed by the verbatim Sources cell in a parenthetical (stripped by the grammar), e.g. `EIC, R3, DA (EIC-W1, W2, W3, W4, W5, W11; R3-W5; DA-M7)`. RR2-20's source is not a seat (`writing_audit.md (sciwrite + paper-writing gates)`) and is kept verbatim; its label list is empty (parse failure), so it routes to `EIC` by the default rule.

6. **Routing line (Judge Record):** `[ROUTING-DEGRADED: unparsed REV-RR2-20 "writing_audit.md (sciwrite + paper-writing gates)"]`; all other items are `card_mapped` to frozen round-1 cards (Reviewer configuration: round-1 cards reused, field_analyst not re-run).

7. **RR2-18 pre-declined.** The decision letter's triage records that the authors declined RR2-18. The author-adjudication sidecar is checker carriage only and is not a criterion input (withholding matrix), so the record is committed on the inherited criterion like any other should_fix item; how the decline enters the outcome is for Phase 2A/2B and the checker.

8. **should_fix lighter form.** RR2-16 to RR2-20 carry `fully_addressed` only. PARTIALLY_ADDRESSED = part but not all of that pattern is met (residual gap named); MADE_WORSE = the protocol's generic discriminator: the revision degrades the item's subject relative to the original v3 manuscript.

## Item count

20 records: 15 must_fix (RR2-1 to RR2-15, severity major), 5 should_fix (RR2-16 to RR2-20, severity minor), 0 consider. New standards: 2 (advisory only; they cannot change an item verdict or the decision).

| Item | Obligation | Routed seat | Labels | Sources (verbatim) |
|---|---|---|---|---|
| REV-RR2-1 | must_fix | EIC | EIC, R3, DA | EIC-W1, W2, W3, W4, W5, W11; R3-W5; DA-M7 |
| REV-RR2-2 | must_fix | R2 | R2, EIC | R2-W1, R2-W6, EIC-W9 |
| REV-RR2-3 | must_fix | R2 | R2, DA, EIC | R2-W2, DA-m2, EIC-W6, DA-M7 |
| REV-RR2-4 | must_fix | R2 | R2 | R2-W4 |
| REV-RR2-5 | must_fix | R2 | R2, DA | R2-W3, R2-W8, DA-m1 |
| REV-RR2-6 | must_fix | R2 | R2, DA, R3 | R2-W5, DA-M5, R3-W4 |
| REV-RR2-7 | must_fix | R3 | R3, DA | R3-W2, DA-M4 |
| REV-RR2-8 | must_fix | R1 | DA, R1 | DA-M1, DA-M2, R1-W1, R1-W7 |
| REV-RR2-9 | must_fix | R1 | R1, DA | R1-W2, DA-M6 |
| REV-RR2-10 | must_fix | R1 | R1, DA | R1-W3, DA-M3 |
| REV-RR2-11 | must_fix | R1 | R1, DA | R1-W4, DA-M6 |
| REV-RR2-12 | must_fix | R1 | R1, DA, R3 | R1-W5, DA-m3, R3-W3 |
| REV-RR2-13 | must_fix | R1 | R1, DA | R1-W6, DA-M3 |
| REV-RR2-14 | must_fix | R2 | DA, R2 | DA-M5, R2-W7 |
| REV-RR2-15 | must_fix | R3 | R3, EIC | R3-W1, EIC-W7, R3-W7 |
| REV-RR2-16 | should_fix | EIC | EIC, R3 | EIC-W8, R3-W6 |
| REV-RR2-17 | should_fix | R1 | R1, DA | R1-W8, R1-W9, R1-W10, R1-W11, DA-m4, DA-m5 |
| REV-RR2-18 | should_fix | EIC | EIC | EIC-W10 |
| REV-RR2-19 | should_fix | R2 | R2 | R2-W9 |
| REV-RR2-20 | should_fix | EIC | (none) | writing_audit.md (sciwrite + paper-writing gates) |

## Committed criteria per item

### REV-RR2-1 (must_fix; routed seat EIC)

- **Inherited criterion (roadmap, verbatim):** Reframe for sustainable finance: retitle; running title; structured abstract in plain words (who gets rated, what follows); keywords with sustainability vocabulary; contribution paragraph addressed to ESG-demand, rating-coverage and ESG-premium literatures; remove "main implication is methodological"
- **FULLY_ADDRESSED:** All six elements are present in the manuscript text: (i) the title poses a sustainable-finance question (who enters the ESG-rated universe, or whether entering it changes firm value) and no longer leads with firm valuation around a vendor-named event; (ii) the running title no longer reads 'Valuation around first ESG scores' and matches the new title; (iii) the structured abstract's Purpose states why first coverage matters for ESG-screened capital, its Design field describes the comparison in plain words (firms entering coverage versus never-covered firms, before and after, 2014 to 2024) without estimator names such as 'heterogeneity-robust difference-in-differences', and its Findings state the selection result and the absence of a detected post-coverage valuation gain with its interval; (iv) the keyword list replaces 'Difference-in-differences' and 'Staggered adoption' with sustainability vocabulary (for example ESG investing, Sustainable finance, Emerging markets) and stays alphabetical; (v) the Section 1 contribution paragraph addresses the ESG-demand, rating-coverage, and ESG-premium literatures and does not close on the pre-trend-testing point (EIC-W5); (vi) 'The main implication is methodological' (or any sentence making the econometric lesson the main implication) is absent, and the implications section leads with sustainable-finance implications, with the static-TWFE warning placed after them as supporting evidence (EIC-W1, R3-W5, DA-M7).
- **PARTIALLY_ADDRESSED:** A genuine reframing is visible but incomplete: at least two of elements (i) to (vi) are met while at least one is not, for example a new title with an abstract Design field still written in estimator vocabulary, keywords still containing a design term, a contribution paragraph that adds sustainable-finance literatures but still ends on the pre-trend point, or the 'main implication is methodological' sentence deleted while the implications section still opens with the TWFE lesson.
- **NOT_ADDRESSED:** none of the elements in the FULLY_ADDRESSED pattern is present in the manuscript text, or only cosmetic edits at the expected surface that leave the round-1 evidence anchors unchanged in substance.
- **MADE_WORSE:** Relative to the v3 manuscript, the front matter or implications move further toward econometric framing (more method terms in title, abstract, or keywords), or the reframing buys sustainability relevance with claims the estimates do not support: causal or welfare language about ESG ratings raising or not affecting value, statements that the ESG content of the score drives the results without new evidence, or removal of the interval-based, non-causal hedges that the round-1 panel credited (EIC-S2).
- **Expected change surface (navigation hypothesis only; equivalent fixes elsewhere count):** Title, running title, structured abstract (Purpose, Design, Findings, Originality), keywords and JEL line, Section 1 contribution paragraph, Section 6.3 implications.

### REV-RR2-2 (must_fix; routed seat R2)

- **Inherited criterion (roadmap, verbatim):** Rebuild §2 around ESG ratings as information/certification, ESG-demand price pressure, and rater selection, with verified references (rating-change and ESG-index-inclusion price evidence); Hartzmark and Sussman cited early and described as fund-level
- **FULLY_ADDRESSED:** Section 2 (related literature) is organized around three named strands: (a) ESG ratings and ESG certification or index-inclusion events as price-relevant information, including price evidence from ESG rating changes and from ESG-index inclusion (for example the rating-change and DJSI or FTSE4Good inclusion studies listed in R2-W1); (b) ESG-demand price pressure; (c) rater selection of covered firms. Every added reference resolves to a real publication whose authors, year, title, venue, and DOI or stable identifier match the reference list, and its in-text description matches the source. Sell-side analyst coverage and S&P 500 additions remain only as secondary analogies. The section states where the post-coverage null adds to the small or mixed certification-event evidence. Hartzmark and Sussman (2019) is cited in Section 1 and/or Section 2.1, before Results, and is described as evidence on Morningstar fund-level sustainability ratings, with any stock-level demand effect labelled indirect (R2-W6, EIC-W9).
- **PARTIALLY_ADDRESSED:** Section 2 adds some of the three strands or some certification-event references, but at least one of the following remains: no price evidence from rating changes or ESG-index inclusion, the analyst-coverage or S&P 500 analogy still framed as the closest benchmark, no statement of where the null adds, or Hartzmark and Sussman moved earlier but still presented as firm-level evidence (or still first cited in Results).
- **NOT_ADDRESSED:** none of the elements in the FULLY_ADDRESSED pattern is present in the manuscript text, or only cosmetic edits at the expected surface that leave the round-1 evidence anchors unchanged in substance.
- **MADE_WORSE:** The revised literature section contains a reference that cannot be verified or is misdescribed relative to its source, presents Hartzmark and Sussman (2019) as stock-level evidence, or loses accurate descriptions the round-1 panel credited (Demiroglu and Ryngaert, 2010; Berg, Kolbel, and Rigobon, 2022; Gibson Brandon et al., 2021; R2-S4).
- **Expected change surface (navigation hypothesis only; equivalent fixes elsewhere count):** Section 2 (2.1, 2.2), Section 1 first paragraphs, reference list; secondarily Section 5.2 where Hartzmark and Sussman was first cited.

### REV-RR2-3 (must_fix; routed seat R2)

- **Inherited criterion (roadmap, verbatim):** Restate channel predictions (recognition: gain; preference: sign depends on score; selection: permanent vs transitory run-up); present H3 as the sustainability test; add initial score purged of size, country and cohort
- **FULLY_ADDRESSED:** The hypotheses section states the post-coverage prediction separately for each channel: recognition (Merton, 1987) predicts a valuation gain; investor preference (Pastor et al., 2021; Pedersen et al., 2021) predicts a sign that depends on the revealed score, so a pooled null is consistent with offsetting effects; selection predicts relative growth before coverage, with the post-coverage prediction stated for both a permanent and a transitory run-up, and the Discussion interprets the null against the same selection model (DA-m2). H3 (the initial-score split) is presented in the Introduction and abstract as the direct sustainability or preference-channel test, with its estimate, its non-significance, and its minimum detectable effect stated. An initial-score measure purged of size, country, and cohort (residualized or defined relative to industry or market peers) is estimated, labelled as exploratory, and its result is reported next to the median split.
- **PARTIALLY_ADDRESSED:** Some but not all parts are present: for example the channel predictions are restated but no size-, country-, and cohort-purged score is reported; or the purged score is reported while H1 still pools channels into one positive prediction; or H3 remains reported only in the last rows of a robustness table without being presented as the sustainability test in the Introduction or abstract; or the permanent versus transitory distinction is stated in Section 2 but not carried into the Discussion.
- **NOT_ADDRESSED:** none of the elements in the FULLY_ADDRESSED pattern is present in the manuscript text, or only cosmetic edits at the expected surface that leave the round-1 evidence anchors unchanged in substance.
- **MADE_WORSE:** The revision drops the H3 test, reinterprets a pooled null as rejecting the preference channel, presents the purged-score result causally or without its interval, or creates a new inconsistency between the selection model used in the hypotheses and the one used in the Discussion.
- **Expected change surface (navigation hypothesis only; equivalent fixes elsewhere count):** Section 2.3 hypotheses, Section 1 evidence paragraph, abstract Findings, Section 5.5 heterogeneity results and the heterogeneity table, Section 6.1, Supplemental Appendix for the purged-score estimate.

### REV-RR2-4 (must_fix; routed seat R2)

- **Inherited criterion (roadmap, verbatim):** Correct Chen et al. (2004) (permanent addition effects); revisit the weight given to the transitory-value reading
- **FULLY_ADDRESSED:** Section 6.1 (and any other location) no longer cites Chen et al. (2004) as evidence of a partial reversal of index-addition effects; any partial-reversal statement cites Harris and Gurel (1986) or another source that reports reversal. The text acknowledges that the investor-awareness evidence (Chen et al., 2004) predicts a persistent gain, and draws the consequence that the post-coverage null is more, not less, informative against the recognition channel under the parallel-trends assumption. The weight given to the transitory-value reading is revisited: either reduced, or kept with an explicit argument that engages the permanent-addition evidence. The correct citation of Chen et al. (2004) for lasting revaluation (v3 Section 5.6) is preserved.
- **PARTIALLY_ADDRESSED:** The mis-citation is removed but the text still states, without engaging the permanent-addition evidence, that the transitory-value reading 'deserves weight'; or the reweighting is done in one location while the abstract, introduction, or conclusion still lean on reversal as the preferred interpretation.
- **NOT_ADDRESSED:** none of the elements in the FULLY_ADDRESSED pattern is present in the manuscript text, or only cosmetic edits at the expected surface that leave the round-1 evidence anchors unchanged in substance.
- **MADE_WORSE:** Chen et al. (2004) or another source is cited for a finding it does not report, the correct Section 5.6 use is broken, or the transitory-value reading is given more weight than in v3 without new evidence.
- **Expected change surface (navigation hypothesis only; equivalent fixes elsewhere count):** Section 6.1, Section 5.6, Section 2 (if index-addition analogies move there), reference list.

### REV-RR2-5 (must_fix; routed seat R2)

- **Inherited criterion (roadmap, verbatim):** Construct: "initiation of LSEG ESG coverage" (a data-vendor score); qualify "scored at all"; note the score is not the rating tied to fund holdings in the cited evidence; consistent terminology
- **FULLY_ADDRESSED:** The treatment is named consistently as the initiation of LSEG ESG coverage (first LSEG ESG score in the data) and described as a data-vendor score built from company-reported data. The 'whether a listed firm is scored at all' motivation is dropped or qualified to first coverage by one provider, with the note that FTSE Russell (another LSEG business) or other providers may have scored some firms earlier, and the extensive-margin claim is qualified accordingly (DA-m1). The manuscript states explicitly that, by the evidence it cites (Berg, Heeb, and Kolbel: MSCI, not this score, explains ESG-mandated fund holdings), the LSEG score is not the rating tied to fund holdings, as both a limitation and an interpretation of the null. Score, rating, coverage, rater, and provider are defined once (including how this product differs from MSCI-type ratings) and used consistently, with scored and never-scored (or unscored) firms named one way throughout.
- **PARTIALLY_ADDRESSED:** The construct is renamed in some places (for example abstract and data section) but 'scored at all' or 'rated/unrated' framing persists elsewhere; or the renaming is complete but the fund-holdings statement or the FTSE Russell qualification is missing; or terminology is defined but still drifts.
- **NOT_ADDRESSED:** none of the elements in the FULLY_ADDRESSED pattern is present in the manuscript text, or only cosmetic edits at the expected surface that leave the round-1 evidence anchors unchanged in substance.
- **MADE_WORSE:** The revision broadens the construct further, for example drawing conclusions about ESG ratings in general or about the first ESG rating of any provider from the LSEG event, or introduces new inconsistent terms for the treatment.
- **Expected change surface (navigation hypothesis only; equivalent fixes elsewhere count):** Abstract, Section 1 first paragraph, Section 3.1 and 3.2 (provider and timing), Section 4.1 definition, Section 7 limitations, exhibit captions.

### REV-RR2-6 (must_fix; routed seat R2)

- **Inherited criterion (roadmap, verbatim):** Document disclosure-mandate timing in the five markets from verifiable sources and relate it to the coverage waves; discuss domestic ESG channels only with verified facts
- **FULLY_ADDRESSED:** The manuscript gives the effective dates of sustainability-disclosure mandates for all five markets (Indonesia, Malaysia, the Philippines, Singapore, Thailand) in a short table or paragraph, each date supported by a verifiable regulator or exchange source in the reference list, and relates these dates to the coverage waves by first-score year (the cohort-by-market table), stating whether first scores follow first mandated reports. Domestic ESG channels (exchange-run sustainability indices, domestic ratings, Shariah screens) are discussed only with verified facts, or the text states explicitly that they are not examined. Any statement about how disclosure timing bears on the selection reading is worded at the strength the data allow.
- **PARTIALLY_ADDRESSED:** Mandate dates are documented for only some markets, or are listed without being related to the coverage waves, or are sourced only to secondary reports for some markets, or domestic channels are discussed with unverified specifics.
- **NOT_ADDRESSED:** none of the elements in the FULLY_ADDRESSED pattern is present in the manuscript text, or only cosmetic edits at the expected surface that leave the round-1 evidence anchors unchanged in substance.
- **MADE_WORSE:** The revision adds incorrect or unsourced mandate dates, states institutional facts as verified that are not, or uses disclosure timing to assert a causal mechanism the design cannot identify.
- **Expected change surface (navigation hypothesis only; equivalent fixes elsewhere count):** Section 3.1 institutional setting, a new institutional table (main text or Supplemental Appendix), Section 6.2, reference list.

### REV-RR2-7 (must_fix; routed seat R3)

- **Inherited criterion (roadmap, verbatim):** Wave-level pre-coverage profiles (Malaysia 2021–22; Thailand and Singapore 2019–20; other cohorts); describe never-scored Malaysian firms; state the mechanism conditional on these profiles
- **FULLY_ADDRESSED:** An exhibit labelled exploratory (Supplemental Appendix acceptable) reports event-time pre-coverage profiles, with intervals, for MTB and market capitalization separately for (a) the Malaysian 2021 and 2022 cohorts, (b) the Thai and Singaporean 2019 and 2020 cohorts, and (c) the remaining cohorts. The text describes the never-scored Malaysian firms (how many, their size or listing segment). The mechanism statement in the main text is explicitly conditional on what these wave-level profiles show (for example, if the Malaysian wave shows no run-up, the selection-on-growth reading is restricted to the cohorts that show one), and the relation of the Malaysian wave to the November 2022 Bursa Malaysia arrangement is addressed with what is publicly known.
- **PARTIALLY_ADDRESSED:** Profiles are reported by market but not by wave, or for some waves only, or without intervals; or the profiles are reported but the mechanism statement is not conditioned on them; or the never-scored Malaysian firms are not described.
- **NOT_ADDRESSED:** none of the elements in the FULLY_ADDRESSED pattern is present in the manuscript text, or only cosmetic edits at the expected surface that leave the round-1 evidence anchors unchanged in substance.
- **MADE_WORSE:** Wave-level profiles are reported selectively (for example only those consistent with selection), contrary profiles are not reflected in the mechanism statement, or the selection claim is stated more strongly than in v3 despite wave-level heterogeneity.
- **Expected change surface (navigation hypothesis only; equivalent fixes elsewhere count):** Supplemental Appendix (new wave-level figure or table), Section 5.3 or 5.5, Section 3.1, Section 6.1 mechanism discussion, Section 7.

### REV-RR2-8 (must_fix; routed seat R1)

- **Inherited criterion (roadmap, verbatim):** Replace "peak" with what the estimates show; report R10 in the abstract with its fragility; report the R10 event-time profile and an R10 run with size held at the original g − 1; say which specification governs the long-horizon reading
- **FULLY_ADDRESSED:** The word 'peak' is removed or qualified (for example 'a relative run-up followed by a plateau', or 'a relative peak under re-dated timing') in the title, abstract Originality, and conclusion, so that each claim matches the primary estimates. The abstract reports the re-dated R10 result (MTB effect about -0.068, roughly -6.6 percent) together with its fragility (the decline loses significance near M-bar = 0.23 / the robust interval includes zero at 0.25), next to or instead of the TWFE benchmark. The R10 event-time profile is reported (Supplemental Appendix acceptable). An R10 rerun with size covariates held at the original g - 1 is reported. Section 5.4 and Section 6.1 state which specification governs the long-horizon reading and temper the reversal interpretation in light of the R10 versus baseline gap (R1-W1).
- **PARTIALLY_ADDRESSED:** The wording is corrected but the R10 event-time profile or the g - 1 covariate rerun is missing; or the analyses are added but the title, abstract, or conclusion still asserts that the first scored year coincides with a valuation peak; or the abstract still reports the TWFE +6.6 percent without the R10 result and its fragility.
- **NOT_ADDRESSED:** none of the elements in the FULLY_ADDRESSED pattern is present in the manuscript text, or only cosmetic edits at the expected surface that leave the round-1 evidence anchors unchanged in substance.
- **MADE_WORSE:** The peak or reversal claim is stated more strongly than in v3, the R10 decline is promoted to a headline without its fragility, R10 results that weaken the reversal reading are omitted, or the new R10 analyses contradict the text without the text acknowledging it.
- **Expected change surface (navigation hypothesis only; equivalent fixes elsewhere count):** Title, abstract Originality and Findings, Section 5.4, Section 6.1, Section 8, the robustness table (row R10), Supplemental Appendix event-time exhibit.

### REV-RR2-9 (must_fix; routed seat R1)

- **Inherited criterion (roadmap, verbatim):** Covariate-free event-time profile and pre-trend tests; size measured at g − 3; say whether the run-up figures survive
- **FULLY_ADDRESSED:** The manuscript (Supplemental Appendix acceptable) reports an event-time profile estimated without covariates for the primary outcomes, with joint pre-trend tests, and a version in which size is measured at g - 3 for the pre-period cells. The text states explicitly whether the run-up figures reported in v3 (14.1 percent for market capitalization and 10.0 percent for MTB) survive these variants, giving the corresponding numbers.
- **PARTIALLY_ADDRESSED:** Only one of the two variants (covariate-free or g - 3 size) is reported, or both are reported without the explicit statement of whether the run-up figures survive, or only for a subset of the primary outcomes.
- **NOT_ADDRESSED:** none of the elements in the FULLY_ADDRESSED pattern is present in the manuscript text, or only cosmetic edits at the expected surface that leave the round-1 evidence anchors unchanged in substance.
- **MADE_WORSE:** The summary sections keep or strengthen the run-up figures although the variants show they do not survive, or the variants are reported selectively.
- **Expected change surface (navigation hypothesis only; equivalent fixes elsewhere count):** Supplemental Appendix event-time exhibits, Section 4.2 (third design choice), Section 5.3, abstract and Introduction where the run-up figures appear.

### REV-RR2-10 (must_fix; routed seat R1)

- **Inherited criterion (roadmap, verbatim):** Market-by-industry cluster bootstrap for headline, R10 and pre-trend tests; drop "excludes" wording if intervals widen
- **FULLY_ADDRESSED:** A cluster bootstrap that resamples market-by-industry clusters (number of clusters stated) is reported for the headline ATT interval, the R10 interval, and the joint pre-trend tests, side by side with the firm-level bootstrap. If the clustered intervals are wider, the statement that the interval 'excludes' increases above 4.9 percent is replaced by the clustered interval statement in every location where it appears (Results, Implications, Limitations, Conclusion, abstract if present).
- **PARTIALLY_ADDRESSED:** Clustered inference is reported for the headline estimate only, not for R10 or the pre-trend tests; or the clustered intervals are wider but 'excludes' wording based on the firm bootstrap remains in at least one location.
- **NOT_ADDRESSED:** none of the elements in the FULLY_ADDRESSED pattern is present in the manuscript text, or only cosmetic edits at the expected surface that leave the round-1 evidence anchors unchanged in substance.
- **MADE_WORSE:** Clustered results are reported only where they are narrower or more favorable, the limitation on wave-level dependence is deleted without the analysis, or exclusion language is strengthened.
- **Expected change surface (navigation hypothesis only; equivalent fixes elsewhere count):** Section 4.3 inference, Section 5.2, Section 6.3, Section 7, Section 8, Table 2 notes or a Supplemental Appendix inference table.

### REV-RR2-11 (must_fix; routed seat R1)

- **Inherited criterion (roadmap, verbatim):** Common support: drop scored firms above the 95th size percentile of controls; size bins instead of the quadratic
- **FULLY_ADDRESSED:** The manuscript reports the ATT and pre-trend tests after dropping scored firms whose base-year size (log total assets) exceeds the 95th percentile of never-scored firms, and a version that replaces the quadratic in size with size-bin indicators; it notes the change in estimand (ATT on the common-support population) and states how the headline and run-up results change.
- **PARTIALLY_ADDRESSED:** Only one of the two checks is reported, or the checks are reported without the estimand note or without saying how the results change.
- **NOT_ADDRESSED:** none of the elements in the FULLY_ADDRESSED pattern is present in the manuscript text, or only cosmetic edits at the expected surface that leave the round-1 evidence anchors unchanged in substance.
- **MADE_WORSE:** The trimmed or binned estimate replaces the headline without being labelled, or a contradicting result is reported but not reflected in the text.
- **Expected change surface (navigation hypothesis only; equivalent fixes elsewhere count):** Section 4.2 overlap discussion, the robustness table (new rows), Supplemental Appendix, Section 5.5.

### REV-RR2-12 (must_fix; routed seat R1)

- **Inherited criterion (roadmap, verbatim):** Bridge from static TWFE to the robust estimate (window/controls, covariates); replace "most of the gap" unless the bridge supports it; "can", not "will"
- **FULLY_ADDRESSED:** The manuscript reports a bridge from the static TWFE estimate (0.064) to the heterogeneity-robust estimate (0.002) that separates the contribution of event window and control group, covariates, and pooling over the run-up (for example a TWFE restricted to never-scored controls and the -5 to 3 window, with and without covariates, a dynamic TWFE, or a Goodman-Bacon decomposition). 'Most of the gap' (or any attribution of the gap to pre-coverage growth) appears only to the extent the bridge quantifies it, and otherwise is removed from Section 6.3, the Introduction, and the abstract. The conclusion and abstract say comparisons 'can' attribute selection to the score, not 'will' or as a general fact.
- **PARTIALLY_ADDRESSED:** The wording is softened ('can', no 'most of the gap') but no bridge is reported; or a bridge is reported but the summary sections still attribute more of the gap to the run-up than the bridge supports.
- **NOT_ADDRESSED:** none of the elements in the FULLY_ADDRESSED pattern is present in the manuscript text, or only cosmetic edits at the expected surface that leave the round-1 evidence anchors unchanged in substance.
- **MADE_WORSE:** The attribution of the TWFE gap to selection is stated more strongly than in v3, or the bridge shows the gap is mostly covariates or window while the text still attributes it to pre-coverage growth.
- **Expected change surface (navigation hypothesis only; equivalent fixes elsewhere count):** Section 4.5 benchmark, Section 5.5, Section 6.3, Section 1, abstract Findings and Practical implications, Section 8, the robustness table or a Supplemental Appendix bridge table.

### REV-RR2-13 (must_fix; routed seat R1)

- **Inherited criterion (roadmap, verbatim):** Intervals for the run-up figures in abstract, introduction and conclusion; state the MTB joint test (p = 0.074)
- **FULLY_ADDRESSED:** Wherever the run-up magnitudes appear in the abstract, the Introduction, and the Conclusion, each is accompanied by its 95 percent interval, and the text states that the joint MTB pre-trend test has p = 0.074 (does not reject at 5 percent) while the market-capitalization test rejects, with the share-issuance caveat.
- **PARTIALLY_ADDRESSED:** Intervals are given in one or two of the three summary locations but not all, or the intervals are given without the MTB joint-test statement.
- **NOT_ADDRESSED:** none of the elements in the FULLY_ADDRESSED pattern is present in the manuscript text, or only cosmetic edits at the expected surface that leave the round-1 evidence anchors unchanged in substance.
- **MADE_WORSE:** The run-up is stated with more certainty than in v3 (for example as established 'valuation' growth without intervals) or intervals present in v3 Results are dropped.
- **Expected change surface (navigation hypothesis only; equivalent fixes elsewhere count):** Abstract Findings, Section 1 evidence paragraph, Section 8, Section 5.3.

### REV-RR2-14 (must_fix; routed seat R2)

- **Inherited criterion (roadmap, verbatim):** Ordering of events as the finding; provider selection, disclosure, index entry and equity issuance as consistent mechanisms; untested strategic-disclosure reading in §6
- **FULLY_ADDRESSED:** The abstract, Introduction, and Discussion present the ordering of events (relative growth before the first score, no detected change after) as the finding. Provider selection on growth, onset of sustainability disclosure, index entry, and equity issuance are each named as mechanisms consistent with that ordering, none presented as identified. Sentences that name selection into coverage as the cause (for example v3 Section 5.3 'This run-up is the pattern that the selection view in Section 2.2 predicts') are qualified accordingly. Section 6 contains a paragraph on possible strategic timing of sustainability disclosure before coverage, labelled as an untested interpretation consistent with the stated data limits.
- **PARTIALLY_ADDRESSED:** The alternative mechanisms are listed in the Discussion, but the title, abstract, or Introduction still present selection as the established cause; or the strategic-disclosure paragraph is missing; or only some mechanisms are named.
- **NOT_ADDRESSED:** none of the elements in the FULLY_ADDRESSED pattern is present in the manuscript text, or only cosmetic edits at the expected surface that leave the round-1 evidence anchors unchanged in substance.
- **MADE_WORSE:** One mechanism (selection or another) is now asserted causally or more strongly than in v3, or the strategic-disclosure or greenwashing reading is presented as a finding rather than an untested interpretation.
- **Expected change surface (navigation hypothesis only; equivalent fixes elsewhere count):** Abstract, Section 1, Section 5.3, Section 6.1 and 6.2, Section 8.

### REV-RR2-15 (must_fix; routed seat R3)

- **Inherited criterion (roadmap, verbatim):** Stakeholder implications (raters, exchanges, regulators, ESG investors and index builders, listed firms), each tied to a result and bounded by the design; data-vintage look-ahead point for data users
- **FULLY_ADDRESSED:** The implications section gives design-bounded implications for each of: rating providers, exchanges, regulators, ESG investors and index builders, and listed firms. Each implication is tied to a named result (for example the firm-characteristics table, the event-time figure, the post-coverage interval, the data-vintage discussion) and bounded by the design (no returns data, no publication dates, one provider, non-causal, no welfare claims). The abstract's Practical implications names at least providers, exchanges, and investors. One hedged sentence ('may') states the possible look-ahead bias for data users who backtest on provider histories around coverage initiation, citing Berg et al. (2020).
- **PARTIALLY_ADDRESSED:** Implications are added for some stakeholder groups but not all five; or they are listed without being tied to a specific result or bounded by the design; or the abstract's Practical implications still addresses only researchers; or the data-vintage sentence is missing.
- **NOT_ADDRESSED:** none of the elements in the FULLY_ADDRESSED pattern is present in the manuscript text, or only cosmetic edits at the expected surface that leave the round-1 evidence anchors unchanged in substance.
- **MADE_WORSE:** Implications assert causal effects, welfare conclusions, or policy recommendations the design cannot support (for example that exchanges should or should not fund coverage because coverage does not raise value), or the existing careful issuer-facing calibration (R3-S1) is lost.
- **Expected change surface (navigation hypothesis only; equivalent fixes elsewhere count):** Section 6.3 implications, abstract Practical implications, Section 8.

### REV-RR2-16 (should_fix; routed seat EIC)

- **Inherited criterion (roadmap, verbatim):** Lighten method exposition in the main text; plain-language translation of the sensitivity bound
- **FULLY_ADDRESSED:** The main text keeps the core estimand and estimator equations and moves the derivation equations for trend removal, the bias bound, the minimum detectable effect, and the Wald statistic (v3 Eqs. 7 to 10 or equivalent) to the Supplemental Appendix, each with a one-sentence pointer; and the Discussion contains one plain-language sentence translating the sensitivity bound into percent of MTB (what range of effects remains possible if post-coverage trends drift by a stated fraction of the largest pre-coverage change).
- **PARTIALLY_ADDRESSED / NOT_ADDRESSED / MADE_WORSE:** lighter form (part of the pattern met / none met / generic discriminator relative to v3).
- **Expected change surface (navigation hypothesis only; equivalent fixes elsewhere count):** Section 4.3 and 4.4, Supplemental Appendix, Section 6.1.

### REV-RR2-17 (should_fix; routed seat R1)

- **Inherited criterion (roadmap, verbatim):** Two-year re-dating; reconcile firm counts; Table 1 calendar-year caveat; missing MTB by group; pre-/post-2020 cohort profiles; "never-scored firms adjusted for size, country and industry" instead of "comparable"
- **FULLY_ADDRESSED:** All six sub-items are present: (1) an exploratory two-year re-dating row (or a post-coverage average restricted to e >= 2) with a statement of how conclusions change; (2) the firm counts for the same population (274, 271, 270, 273 in v3) are reconciled by stating what each count includes; (3) the firm-characteristics table either compares never-scored firm-years in the same calendar years or states the calendar-year limitation in its note, and 'the medians agree' is corrected to say the medians differ in the same direction; (4) the share of missing MTB is reported separately for scored and never-scored firms; (5) pre-coverage profiles are shown separately for pre-2020 and post-2020 cohorts; (6) 'comparable never-scored firms' in the abstract is replaced by 'never-scored firms adjusted for size, country, and industry' or equivalent.
- **PARTIALLY_ADDRESSED / NOT_ADDRESSED / MADE_WORSE:** lighter form (part of the pattern met / none met / generic discriminator relative to v3).
- **Expected change surface (navigation hypothesis only; equivalent fixes elsewhere count):** Section 3.2, Section 5.1 and 5.4, Table 1 and its note, Table S4 or a missingness exhibit, Supplemental Appendix cohort profiles, abstract Findings.

### REV-RR2-18 (should_fix; routed seat EIC)

- **Inherited criterion (roadmap, verbatim):** Companion-study disclosure in the text
- **FULLY_ADDRESSED:** The manuscript text (for example the data section or a data-availability statement) contains a sentence disclosing that the data set is also used in a companion study with a different research question, in the anonymized form 'a companion study (details withheld for anonymous review)' in the blinded file.
- **PARTIALLY_ADDRESSED / NOT_ADDRESSED / MADE_WORSE:** lighter form (part of the pattern met / none met / generic discriminator relative to v3).
- **Expected change surface (navigation hypothesis only; equivalent fixes elsewhere count):** Section 3.2 data description, data-availability or declarations section, title page (non-anonymized version).

### REV-RR2-19 (should_fix; routed seat R2)

- **Inherited criterion (roadmap, verbatim):** Re-verify Tsang et al. (2025)
- **FULLY_ADDRESSED:** The Tsang et al. (2025) reference is verified as a real publication whose authors, title, journal, year, and DOI or stable identifier match the reference-list entry and whose content matches the in-text description; or, if it cannot be verified, it is removed or replaced by a verified source and every in-text claim that relied on it is adjusted.
- **PARTIALLY_ADDRESSED / NOT_ADDRESSED / MADE_WORSE:** lighter form (part of the pattern met / none met / generic discriminator relative to v3).
- **Expected change surface (navigation hypothesis only; equivalent fixes elsewhere count):** Reference list entry for Tsang et al. (2025) and its in-text citations (Section 1 contribution, Section 2).

### REV-RR2-20 (should_fix; routed seat EIC)

- **Inherited criterion (roadmap, verbatim):** Sentence-level revisions: clutter, voice, buried predicates, term drift
- **FULLY_ADDRESSED:** The writing-audit categories named in the roadmap are fixed throughout the manuscript, judged against the audit's Top 5 priorities: (1) one name each for the first scored year, the base year (defined before first use), the run-up, and scored versus never-scored firms, with 'size' used only with a named variable (P4-1 to P4-7); (2) the hedging of the main implication is aligned across abstract, Introduction, implications, and Conclusion (P5-12, P5-13); (3) the sentences of 44 words or more flagged in P3-1 to P3-10 are split, including the parse failure (P3-7) and the non-parallel list (P3-9); (4) the numeric presentation and counts flagged in P5-1 to P5-3 are repaired; (5) the unsupported assertions flagged in P5-8 to P5-10 are removed or sourced, and the actor-hiding passives in the selection sentences (P2-1 to P2-4) name the provider; no em dash is introduced.
- **PARTIALLY_ADDRESSED / NOT_ADDRESSED / MADE_WORSE:** lighter form (part of the pattern met / none met / generic discriminator relative to v3).
- **Expected change surface (navigation hypothesis only; equivalent fixes elsewhere count):** Whole manuscript; densest in the abstract, Section 1, Sections 4.2 and 5.2 to 5.6, Section 6.2, Section 7, and Section 8.

## New standards (advisory)

- **NS-1** (global, advisory): Every new number introduced by the revision (wave-level profiles, clustered intervals, trimmed and binned estimates, bridge decomposition, re-dated rows, purged-score split) traces to a file produced by the R pipeline and matches it after rounding. Why not in round 1: The round-1 roadmap asks for the analyses but states no traceability criterion for the new numbers; the requirement comes from the repository's numbers-match-R rule (CLAUDE.md section 2), not from a round-1 finding.
- **NS-2** (global, advisory): New analyses added in response to RR2-3, RR2-7 to RR2-12, and RR2-17 are labelled exploratory and kept distinct from the pre-specified rows of the pre-analysis plan. Why not in round 1: Only R3-W2 and R1-W8 ask for exploratory labelling explicitly; the round-1 strength (R1-S2, EIC-S4) on separating confirmatory and exploratory rows implies but does not state this for the other new analyses.

## Validation

`phase1_precommitment.json` validated with Python `jsonschema` 4.26.0 (Draft 2020-12) against `precommitment.schema.json`: 0 errors. `source_reviewer_labels` recomputed with the §10 grammar (strip parentheticals, em-dash tails, split on `, / ; and &`, whole-token match) and equal to the stored lists. The full-chain checker `scripts/check_re_review_synthesis.py` was not run: it needs the 1.1 manifest, verdict record, traceability, Schema 7 roadmap, author sidecar, and evidence bundle, none of which exist at Phase 1.

[CONTRACT-ACKNOWLEDGED]
