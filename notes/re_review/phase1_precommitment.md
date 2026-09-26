# Stage 3' Re-review — Phase 1 pre-commitment (revision-blind)

Contract: #576 three-gate re-review, `precommitment.schema.json` contract_version 1.1. Skill: academic-paper-reviewer, re-review mode. Machine form: `notes/re_review/phase1_precommitment.json` (validates against the schema with jsonschema Draft 2020-12).

## Inputs read (and only these)

`notes/re_review/phase1_inputs/`: roadmap_and_decision_letter.md, round1_{EIC,R1,R2,R3,DA}_report.md, reviewer_configuration_cards.md, JSON schemas; plus the protocol `vendor/academic-research-skills/academic-paper-reviewer/references/re_review_mode_protocol.md`. No manuscript (original or revised), no project_R/, no response letter, no ledger, no git history were opened. Nothing below describes or anticipates what the revision did.

## Rules applied

- **Obligation mapping (explicit):** roadmap severity `major` → `must_fix`; roadmap severity `minor` → `should_fix`. No item is `consider`. Result: 10 must_fix (RR-1…RR-10), 16 should_fix (RR-11…RR-26).
- **item_id:** the roadmap uses `RR-n`; the schema requires `^REV-…$`, so each id is `REV-RR-n` (one-to-one, no renumbering).
- **roadmap_text:** verbatim copy of the roadmap "Item" cell (the roadmap has no separate verification_criteria column; the Item cell is the level-1 yardstick).
- **letter_text / letter_item_ref (must_fix only):** `R<n>` is derived from must_fix order (RR-1→R1 … RR-10→R10); these are letter-order references, not the robustness-row labels R8/R10/R11 that appear inside roadmap text. The Round-1 letter has **no per-item "Acceptance criteria" blocks**; letter_text is therefore the verbatim letter passage that bears on the item (DA C1 adjudication, consensus themes 1–5, or the per-dimension matrix row of the routed seat), multiple passages joined by " || ", hard line wraps in the source file joined by single spaces. Phase 2B / the checker should treat this as a degraded level-2 layer (candidate marker `[CRITERIA-LAYER-ABSENT: no per-item acceptance-criteria blocks]`); it adds no requirement beyond the roadmap.
- **source_reviewer:** verbatim roadmap "Sources" cell. **source_reviewer_labels:** the strict §10 grammar (whole-token exact match) would drop every token such as `R1-W1`, which is a PARSE FAILURE for a non-empty string. To keep routing card-mapped I applied a documented seat-prefix extraction (text before the first "-", then exact match to {EIC, R1, R2, R3, DA}), de-duplicated in order of appearance. The checker's strict recomputation will disagree with these labels; this is flagged for the dispatcher.
- **Routing:** first non-DA label; else EIC. All items map to a frozen Round-1 card seat (Routing: `card_mapped` under prefix extraction). DA is never a verifier persona.
- **equivalence_policy:** `allowed` for every item. An equivalent fix at another location that meets `fully_addressed` counts; `expected_change_surface` is a navigation hypothesis from Round-1 artifacts (section numbers are Round-1 numbering).
- **Data-absent items:** the roadmap file states that items needing data absent from the data set (returns, shares outstanding, index membership, prior ratings from other providers, publication dates, foreign ownership) are addressed as explicit limitations, never with invented data; several roadmap cells encode this directly (RR-4 "no returns or shares data (limitation)", RR-7 "not observed", RR-9 "index entry unobserved"). For these items the unobtainable part is satisfied by an explicit, specific limitation; every feasible part (wording, re-dating R10, bounds, per-market estimates, cited institutional facts) keeps its full bar. Introducing data that are not in the data set is a MADE_WORSE marker.
- **should_fix lighter form:** `fully_addressed` only; PARTIALLY_ADDRESSED derives from the committed pattern; MADE_WORSE uses the protocol's generic discriminator (the revision degrades the item's subject relative to the original manuscript).
- **Yardstick:** frozen Round-1 Reviewer Configuration Cards reused; field_analyst not re-invoked (no `[YARDSTICK-REGENERATED]`).

## Fields not fillable in Phase 1

- `input_manifest_hash`: no 1.1 input manifest instance was supplied among the allowed inputs (only its schema). Placeholder `0000000000000000000000000000000000000000000000000000000000000000` written to satisfy the pattern; the dispatcher must replace it with the JCS sha256 of the actual manifest before Phase 2A.
- `round_id`: set to `stage3prime-round2`; the dispatcher must align it with the manifest's round_id.

## REV-RR-1 — must_fix

- **Routed seat / persona:** R1 Methodology (applied econometrician, staggered DiD / honest-DiD sensitivity)
- **source_reviewer:** R1-W1, R2-W1, DA-M4, EIC-W1 → labels ['R1', 'R2', 'DA', 'EIC']
- **Inherited criterion (roadmap, verbatim):** Publication lag: re-date treatment one year later (R10); report post-publication average; describe treatment as first fiscal year with an LSEG score
- **Decision letter (R1, verbatim):** 2. The treatment date (first fiscal year with an LSEG score) likely precedes publication (R1, R2, DA, EIC).
- **FULLY_ADDRESSED:** All of: (a) the treatment is described throughout (Data section, exhibit notes, abstract, conclusion) as the first fiscal year with an LSEG score, not as the date a score was published or first seen by investors; (b) the text states that a score for fiscal year g is built from disclosures published after year-end, so it reaches investors in g+1 at the earliest (a structural lag, not only backfilling); (c) the roadmap-named sensitivity R10, with the treatment re-dated one year later (g+1), is reported with estimate, SE or CI and N for the primary outcome (ln MTB) and at least the outcomes carried in the headline table; (d) a post-publication average that excludes the pre-publication year e = 0 (e.g., e = 1..3 or the R10 post average) is reported with uncertainty; (e) the interpretation of the post-coverage result refers to these post-publication estimates; (f) the absence of actual first-release dates is stated as an explicit limitation.
- **PARTIALLY_ADDRESSED:** The re-dating (R10) or the post-publication average is reported, but the text still describes event year 0 as the first score or as post-coverage for investors; or the lag is described but no re-dated/post-publication estimate is reported; or only a point estimate is given without SE/CI; or the limitation on unobserved publication dates is missing.
- **MADE_WORSE discriminator:** The revision describes the treatment date as a publication or first-rating date; asserts that e = 0 is observable to investors; removes the existing caveat that the treatment year need not be the publication year; reports publication dates or a vintage that are not in the data set; or the post-publication estimate is reported but contradicted or misreported in the abstract/conclusion relative to the R output.
- **Expected change surface:** Data section (treatment definition paragraph, currently §2.1), robustness table (new row R10), Results text on the headline average, §4.1 interpretation, §4.2 limitations, abstract; hypothesis only.
- **Equivalence policy:** allowed

## REV-RR-2 — must_fix

- **Routed seat / persona:** R1 Methodology (applied econometrician, staggered DiD / honest-DiD sensitivity)
- **source_reviewer:** R1-W2, DA-C1, EIC-W1 → labels ['R1', 'DA', 'EIC']
- **Inherited criterion (roadmap, verbatim):** Relative-magnitude sensitivity bounds and breakdown value; state that exact HonestDiD sets are not computed
- **Decision letter (R2, verbatim):** C1 "not after does not follow; reversal counterfactual ignored" — **VALIDATED (repairable).** Corroborated by R1-W2, R1-W3 and EIC-W1. It does not trigger an Accept conflict (decision is Major). Required response: sensitivity bounds, a reversal-aware comparison, and a conditional title/abstract. || 1. The post-coverage null is conditional on parallel trends that the paper's own pre-trends question (R1, DA, EIC).
- **FULLY_ADDRESSED:** All of: (a) relative-magnitude (Rambachan–Roth Δ^RM-type) sensitivity bounds for ln MTB are reported over a grid of M̄ (R1-W2 also names ln market capitalization; reporting it is consistent with the item); (b) a breakdown value of M̄ is reported for the paper's post-coverage claim, at a stated threshold such as the CI admitting a +5% effect or a positive effect (R1-W2, EIC-W1, DA-C1); (c) the manuscript explicitly states that exact HonestDiD confidence sets are not computed and describes the bounds as an approximation; (d) the headline post-coverage statement is conditioned on these bounds; (e) the numbers appear in an exhibit (main table or Internet Appendix) traceable to output.
- **PARTIALLY_ADDRESSED:** Bounds are reported without a breakdown value, or a breakdown value without the grid; or the not-computed disclaimer about exact HonestDiD sets is missing; or bounds are reported but the headline and abstract still state the null unconditionally; or the bounds appear only in prose without an exhibit.
- **MADE_WORSE discriminator:** The revision claims to report exact HonestDiD confidence sets when it does not; presents the bounds as confirming the null or as ruling out positive effects beyond what the breakdown value supports; removes the existing acknowledgement that the parallel-trends assumption is questioned; or removes the existing linear-detrend check R7 without replacement.
- **Expected change surface:** Robustness table or Internet Appendix table (sensitivity rows), Results subsection on robustness, §4.1/§4.2 discussion and limitations, abstract; hypothesis only.
- **Equivalence policy:** allowed

## REV-RR-3 — must_fix

- **Routed seat / persona:** R1 Methodology (applied econometrician, staggered DiD / honest-DiD sensitivity)
- **source_reviewer:** R1-W3, DA-C1 → labels ['R1', 'DA']
- **Inherited criterion (roadmap, verbatim):** Discuss mean-reversion counterfactual; use pre-growth-conditioned comparison (R8) as reversal-aware check
- **Decision letter (R3, verbatim):** C1 "not after does not follow; reversal counterfactual ignored" — **VALIDATED (repairable).** Corroborated by R1-W2, R1-W3 and EIC-W1. It does not trigger an Accept conflict (decision is Major). Required response: sensitivity bounds, a reversal-aware comparison, and a conditional title/abstract.
- **FULLY_ADDRESSED:** All of: (a) the discussion lists mean reversion after selection on a transitory run-up as a third counterfactual next to parallel paths and continued linear run-up, and states its sign (under reversal, a flat post path implies a positive coverage effect); (b) the pre-growth-conditioned comparison R8 is presented as the reversal-aware check, with its ln MTB estimate and uncertainty, and the text states what it can and cannot show (e.g., the regression-to-the-mean risk of matching on pre-trends noted in R1-W3); (c) the conclusion no longer claims that the evidence rules out a positive effect, and says the design cannot separate no effect from a modest positive effect offset by reversal unless R8 or the bounds support a narrower statement.
- **PARTIALLY_ADDRESSED:** Mean reversion is mentioned but without its sign or implication; or R8 is reported but not linked to the reversal counterfactual; or the discussion is added but the sentence "Neither reading supports the prediction that a first rating raises firm value" (or an equivalent) remains unqualified.
- **MADE_WORSE discriminator:** The revision dismisses reversal without evidence; claims R8 rules out a positive effect when its CI does not; drops R8 or its exploratory label; or adds counterfactual readings that again exclude a positive effect by construction.
- **Expected change surface:** §4.1 interpretation (list of counterfactual readings), robustness table row R8 and its text, conclusion; hypothesis only.
- **Equivalence policy:** allowed

## REV-RR-4 — must_fix

- **Routed seat / persona:** R1 Methodology (applied econometrician, staggered DiD / honest-DiD sensitivity)
- **source_reviewer:** R1-W4, EIC-W2, DA-M1 → labels ['R1', 'EIC', 'DA']
- **Inherited criterion (roadmap, verbatim):** Separate "valuation" (MTB) from "size" (market cap); no returns or shares data (limitation)
- **Decision letter (R4, verbatim):** | D3 argumentative_coherence | mandatory | DA: block (repairable); R1: warn | block (owner DA) |
- **FULLY_ADDRESSED:** All of: (a) the title, abstract, and text use "valuation" (or equivalent) only for MTB and describe market capitalization as size or market value that mixes price, issuance, and listing changes; the word "value" is not used for a result that rests on market capitalization alone; (b) claims for each outcome are stated with the same test standard for both periods (R1-W4): the MTB pre-trend (joint p = 0.074 in Round 1) is not described as established at 5%, and the market-cap post path is described accurately; (c) the pre-period horizon is described as the change from e = −5 to the base year (four annual changes), not "five years" (R1-W4); (d) an explicit limitation states that stock returns and shares outstanding are not in the data set, so the market-cap run-up cannot be split into a price and a shares component, and names equity issuance or listing events as an alternative that cannot be excluded (DA-M1, EIC-W2). Per the roadmap text itself, data absent from the data set are handled as an explicit limitation, never with invented or imported-but-unverified data; the feasible parts of the item are not relaxed.
- **PARTIALLY_ADDRESSED:** The title or abstract is re-worded but body text or exhibits still call the market-cap result a value gain; or the returns/shares limitation is stated without naming the issuance alternative; or the four-year horizon correction is missing; or MTB and market cap are still judged with different standards across periods.
- **MADE_WORSE discriminator:** The revision reports returns, per-share prices, or shares outstanding that are not in the data set; claims a valuation gain from market capitalization more strongly than in Round 1; or drops the MTB result from the headline in favour of market capitalization alone.
- **Expected change surface:** Title, abstract, §1 summary of findings, Results on pre-trends, Table 2 labels/notes, §4.2 limitations; hypothesis only.
- **Equivalence policy:** allowed

## REV-RR-5 — must_fix

- **Routed seat / persona:** R1 Methodology (applied econometrician, staggered DiD / honest-DiD sensitivity)
- **source_reviewer:** R1-W5 → labels ['R1']
- **Inherited criterion (roadmap, verbatim):** Balanced cohorts (R11); describe aggregation weights exactly
- **Decision letter (R5, verbatim):** | D1 methodology_rigor | mandatory | R1: block (repairable) | block |
- **FULLY_ADDRESSED:** Both of: (a) an estimate on cohorts balanced in event time (the roadmap-named check R11; R1-W5 suggests cohorts observed for all of e = −4..3) is reported with estimate, SE/CI and the number of cohorts/firms retained, and its difference from the headline is interpreted; (b) the aggregation formula is stated exactly and matches the implementation (Round 1 found pooling of all (g,t) cells with e = 0..3 weighted by the number of treated firms per cell, not event-time averaging with cohort weights), ideally with the implied event-time weights.
- **PARTIALLY_ADDRESSED:** Only one of (a) and (b) is done; or the weights are described in words that remain ambiguous about whether cells or event times are averaged; or the balanced estimate is reported without uncertainty or without the retained sample size.
- **MADE_WORSE discriminator:** The weighting description still disagrees with the implementation; the balanced-cohort estimate is misreported relative to output; or the headline is silently replaced by a differently weighted estimate without disclosure.
- **Expected change surface:** Methods/estimation paragraph (currently §2.3), robustness table new row R11, Internet Appendix; hypothesis only.
- **Equivalence policy:** allowed

## REV-RR-6 — must_fix

- **Routed seat / persona:** R1 Methodology (applied econometrician, staggered DiD / honest-DiD sensitivity)
- **source_reviewer:** R1-W6, DA-m2, R3-W3 → labels ['R1', 'DA', 'R3']
- **Inherited criterion (roadmap, verbatim):** Market-level waves: per-market estimates (IA), market composition in text; cluster-bootstrap caveat
- **Decision letter (R6, verbatim):** | D1 methodology_rigor | mandatory | R1: block (repairable) | block | || | D4 cross_disciplinary_relevance | high | R3: warn | warn |
- **FULLY_ADDRESSED:** All of: (a) per-market estimates are reported in the Internet Appendix with SE/CI (at minimum Malaysia and Thailand separately, with the remaining small markets pooled or shown with their sample sizes, per R3-W3); (b) the main text states the market composition of the treated sample (counts or shares by market and the main coverage waves); (c) the text states that firm-level bootstrap resampling does not account for correlation of treatment timing and shocks within market-level waves, so CIs and pre-trend p-values may be too narrow (the cluster-bootstrap caveat); (d) framing of breadth ("five markets") in abstract/conclusion is consistent with the reported composition.
- **PARTIALLY_ADDRESSED:** Per-market estimates are reported without uncertainty or only as leave-one-out; or composition stays in the appendix only; or the inference caveat is missing; or the abstract still implies evidence spread evenly across five markets.
- **MADE_WORSE discriminator:** The revision removes the existing leave-one-market-out results or the Malaysia-weight limitation; claims the firm bootstrap is robust to wave-level clustering without evidence; or per-market numbers contradict the output.
- **Expected change surface:** Internet Appendix per-market table, Data section (sample composition), inference paragraph in Methods, §4.2 limitations, abstract/conclusion scope wording; hypothesis only.
- **Equivalence policy:** allowed

## REV-RR-7 — must_fix

- **Routed seat / persona:** R2 Domain (sustainable-finance researcher on ESG ratings, provider facts, construct validity)
- **source_reviewer:** R2-W2, R3-W2, DA-M4 → labels ['R2', 'R3', 'DA']
- **Inherited criterion (roadmap, verbatim):** Treatment = first LSEG score; other ratings (FTSE Russell/Bursa, SET) not observed; retitle
- **Decision letter (R7, verbatim):** 3. "First ESG score" overstates the construct: other ratings existed, including FTSE Russell in Malaysia (R2, R3, DA).
- **FULLY_ADDRESSED:** All of: (a) the title, abstract, and body name the treatment as the first LSEG ESG score (or an equally product-specific label) and replace "rated firms" / "first ESG score" wherever prior ratings are not ruled out; (b) the paper is retitled accordingly; (c) the text states, with verifiable sources only, that other ratings existed in these markets before or alongside LSEG coverage (e.g., FTSE Russell ESG ratings underlying FTSE4Good Bursa Malaysia, SET THSI/SET ESG Ratings) and that they are not observed in the data set; (d) the limitation explains the consequence beyond "bias toward zero": for some firms the event may be an additional rating, and the investor-recognition argument applies only to truly unrated firms. Per the roadmap text itself, data absent from the data set are handled as an explicit limitation, never with invented or imported-but-unverified data; the feasible parts of the item are not relaxed.
- **PARTIALLY_ADDRESSED:** The title is changed but body text or abstract still uses "first ESG score" / "rated firms" generically; or other ratings are mentioned only in the "bias toward zero" form; or institutional facts are stated without a source.
- **MADE_WORSE discriminator:** The revision asserts that treated firms were previously unrated; reports counts of prior ratings, FTSE4Good or FBM EMAS membership, or other provider data that are not in the data set; or cites unverifiable sources for the institutional facts.
- **Expected change surface:** Title, abstract, §1, Data section (treatment definition), §4.1 interpretation of investor recognition, §4.2 limitations; hypothesis only.
- **Equivalence policy:** allowed

## REV-RR-8 — must_fix

- **Routed seat / persona:** R2 Domain (sustainable-finance researcher on ESG ratings, provider facts, construct validity)
- **source_reviewer:** R2-W3, EIC-W3 → labels ['R2', 'EIC']
- **Inherited criterion (roadmap, verbatim):** Correct positioning (Bikmetova & Pirinsky intensive margin + ownership; Tsang et al. 2025; non-U.S. work)
- **Decision letter (R8, verbatim):** | D2 domain_accuracy | mandatory | R2: block (repairable) | block | || | D6 venue_fit_and_contribution | mandatory | EIC: block (repairable) | block |
- **FULLY_ADDRESSED:** All of: (a) the positioning sentence that prior coverage-initiation evidence is only U.S. and only about conduct is removed or corrected; (b) Bikmetova and Pirinsky are described as evidence on the intensive margin (additional coverage) including an ownership outcome; (c) Tsang et al. (2025) on initiation and dividend changes is cited; (d) existing work on ESG-coverage initiation with market outcomes, including non-U.S. evidence, is acknowledged using only citations that can be verified (R2-W3, EIC-W3 list candidates); (e) the contribution is restated as a narrower, specific increment (e.g., valuation effect of LSEG initiation in ASEAN; coverage selected on prior growth).
- **PARTIALLY_ADDRESSED:** Some but not all of (a)–(e); e.g., Tsang et al. (2025) is added but the U.S.-only statement stays, or Bikmetova and Pirinsky are still described as initiation.
- **MADE_WORSE discriminator:** The revision introduces a new "first to" novelty claim contradicted by the Round-1 literature; adds citations that do not exist or are mis-described; or drops accurately described prior work.
- **Expected change surface:** §1 positioning and contribution paragraphs, References; hypothesis only.
- **Equivalence policy:** allowed

## REV-RR-9 — must_fix

- **Routed seat / persona:** R2 Domain (sustainable-finance researcher on ESG ratings, provider facts, construct validity)
- **source_reviewer:** R2-W4, R3-W1, EIC-W4, DA-M2 → labels ['R2', 'R3', 'EIC', 'DA']
- **Inherited criterion (roadmap, verbatim):** Coverage rule: index membership and disclosure mandates (verified facts only); index entry unobserved
- **Decision letter (R9, verbatim):** 4. The selection mechanism (index membership, disclosure mandates) is unexamined (R2, R3, EIC, DA).
- **FULLY_ADDRESSED:** All of: (a) the text cites the provider's documented coverage policy (index-constituent coverage and sufficiency of public disclosure) with a source; (b) the text states the market-level timing of sustainability-disclosure mandates relevant to the sample (verified facts only, with sources); (c) the text names index membership and firm disclosure as selection channels that could produce the run-up, alongside provider choice; (d) the text states explicitly that index entry (and firm-level first-report dates) are not observed in the data set, so the run-up cannot be attributed among these channels; (e) the interpretation of the ordering result is qualified accordingly. Per the roadmap text itself, data absent from the data set are handled as an explicit limitation, never with invented or imported-but-unverified data; the feasible parts of the item are not relaxed.
- **PARTIALLY_ADDRESSED:** Coverage rule or mandates are described without sources; or channels are named but the unobserved-index-entry limitation is missing; or the "data do not record why coverage expanded" black-box statement remains without the documented policy.
- **MADE_WORSE discriminator:** The revision asserts that first scores coincide (or do not coincide) with index entry without data; reports index-membership or first-report data not in the data set; states unverified institutional facts or dates; or attributes the run-up to one channel as established.
- **Expected change surface:** Data section (coverage rule / institutional setting), §1 motivation of the index-addition channel, §4.1 interpretation, §4.2 limitations, References; hypothesis only.
- **Equivalence policy:** allowed

## REV-RR-10 — must_fix

- **Routed seat / persona:** EIC Journal-Fit Reviewer (associate editor, short-format finance journal; strict on over-claiming)
- **source_reviewer:** EIC-W1, R3-W6, DA-C1 → labels ['EIC', 'R3', 'DA']
- **Inherited criterion (roadmap, verbatim):** Conditional title, abstract, conclusion; practical advice limited (EIC-W12, DA-M5, R3-W4)
- **Decision letter (R10, verbatim):** C1 "not after does not follow; reversal counterfactual ignored" — **VALIDATED (repairable).** Corroborated by R1-W2, R1-W3 and EIC-W1. It does not trigger an Accept conflict (decision is Major). Required response: sensitivity bounds, a reversal-aware comparison, and a conditional title/abstract. || 5. Overstated title/abstract/implications (EIC, R3, DA).
- **FULLY_ADDRESSED:** All of: (a) the title no longer states an unqualified "not after" result and is scoped to what is measured (product and region, R3-W6); (b) the abstract's post-coverage statement is explicitly conditional (e.g., on parallel trends and on the sensitivity bounds of RR-2); (c) the conclusion states the post-coverage result with the same conditioning and ends on the ordering/selection result; (d) practical advice is limited: the firm-level verdict ("no reason to expect a first ESG score to raise the market value") is removed or restated as an effect size not detected under stated assumptions (EIC-W12, DA-M5), and any implications for exchanges/regulators state what the evidence cannot speak to (R3-W4); (e) numbers in title/abstract/conclusion match Results.
- **PARTIALLY_ADDRESSED:** Title changed but abstract or conclusion still states the null unconditionally; or advice is softened but still implies no effect for firms; or conditioning language is present but inconsistent with the reported bounds.
- **MADE_WORSE discriminator:** The revision makes stronger or new causal claims or advice; removes existing conditioning language from §4.1/§4.2; or abstract/conclusion numbers diverge from Results.
- **Expected change surface:** Title, abstract (final sentences), conclusion section, §4.1 implications paragraph; hypothesis only.
- **Equivalence policy:** allowed

## REV-RR-11 — should_fix

- **Routed seat / persona:** R1 Methodology (applied econometrician, staggered DiD / honest-DiD sensitivity)
- **source_reviewer:** R1-W7 → labels ['R1']
- **Inherited criterion (roadmap, verbatim):** Describe TWFE benchmark (no covariates, all event years)
- **FULLY_ADDRESSED:** The manuscript or Internet Appendix describes the TWFE benchmark specification (two-way fixed effects, no covariates, all event years, estimation sample) and attributes the TWFE-versus-CS gap to the estimator together with covariates and window rather than to forbidden-comparison bias alone.
- **Expected change surface:** Robustness section text on R6 / Table 3 note or Internet Appendix; hypothesis only.
- **Equivalence policy:** allowed

## REV-RR-12 — should_fix

- **Routed seat / persona:** R1 Methodology (applied econometrician, staggered DiD / honest-DiD sensitivity)
- **source_reviewer:** R1-W8 → labels ['R1']
- **Inherited criterion (roadmap, verbatim):** MDE vs CI wording
- **FULLY_ADDRESSED:** The statement that the design "cannot rule out valuation effects smaller than about 7.0 percent" (MDE used as a post-hoc bound) is removed or corrected; post-estimation statements about ruled-out effects rest on the CI (conditioned as in RR-2), and the MDE is described as an ex-ante power quantity, so MDE and CI statements no longer contradict each other.
- **Expected change surface:** Introduction and §4.1/§4.2 statements on MDE and CI; hypothesis only.
- **Equivalence policy:** allowed

## REV-RR-13 — should_fix

- **Routed seat / persona:** R1 Methodology (applied econometrician, staggered DiD / honest-DiD sensitivity)
- **source_reviewer:** R1-W9, DA-M3, EIC-W5 → labels ['R1', 'DA', 'EIC']
- **Inherited criterion (roadmap, verbatim):** Placebo wording; registered vs exploratory; provide pre-analysis plan
- **FULLY_ADDRESSED:** The placebo R5 is described as re-expressing the pre-period leads rather than as independent evidence; every analysis is labelled registered or exploratory consistently in text and table notes, and the text does not hide that the registered identification check failed (DA-M3); the pre-analysis plan is provided (appendix or registry reference with date), or, if no timestamped registration exists, the "registered" wording is replaced with an accurate description of the plan's provenance (EIC-W5).
- **Expected change surface:** §2.3 analysis-plan paragraph, §3.3 placebo text, Table 3 note, appendix or registry reference; hypothesis only.
- **Equivalence policy:** allowed

## REV-RR-14 — should_fix

- **Routed seat / persona:** R1 Methodology (applied econometrician, staggered DiD / honest-DiD sensitivity)
- **source_reviewer:** R1-W10 → labels ['R1']
- **Inherited criterion (roadmap, verbatim):** Observation counts and attrition (IA)
- **FULLY_ADDRESSED:** The Internet Appendix reports non-missing observations per outcome, treated and control counts by event time, and how attrition, delisting, and MTB ≤ 0 observations are handled; the 36,168 firm-year figure is described as the full grid, not usable observations.
- **Expected change surface:** Data section sample paragraph and Internet Appendix; hypothesis only.
- **Equivalence policy:** allowed

## REV-RR-15 — should_fix

- **Routed seat / persona:** R1 Methodology (applied econometrician, staggered DiD / honest-DiD sensitivity)
- **source_reviewer:** R1-W11 → labels ['R1']
- **Inherited criterion (roadmap, verbatim):** R4 described as lower bound only
- **FULLY_ADDRESSED:** The description of R4 states that only a lower bound (control log assets at or above the treated cohort's 10th percentile) is applied, or an upper bound is added and both versions are reported.
- **Expected change surface:** Robustness text and Table 3 note for R4; hypothesis only.
- **Equivalence policy:** allowed

## REV-RR-16 — should_fix

- **Routed seat / persona:** R1 Methodology (applied econometrician, staggered DiD / honest-DiD sensitivity)
- **source_reviewer:** R1-W12, EIC-W8 → labels ['R1', 'EIC']
- **Inherited criterion (roadmap, verbatim):** Data/code availability and statements in the submitted manuscript
- **FULLY_ADDRESSED:** The submitted manuscript contains data availability and code availability statements that say what can be shared under the LSEG/Compustat licences (code, identifiers, derived variables, data vintage), together with the other title-page statements the journal requires (EIC-W8).
- **Expected change surface:** Title page / end-matter statements; hypothesis only.
- **Equivalence policy:** allowed

## REV-RR-17 — should_fix

- **Routed seat / persona:** R1 Methodology (applied econometrician, staggered DiD / honest-DiD sensitivity)
- **source_reviewer:** R1-W13 → labels ['R1']
- **Inherited criterion (roadmap, verbatim):** Data errors and pooled winsorization as limitation
- **FULLY_ADDRESSED:** The limitations state that implausible market-capitalization values are not corrected but handled by winsorization at the 1st/99th percentiles pooled across markets and years, and note the possible consequence for change-based estimates.
- **Expected change surface:** §4.2 limitations; hypothesis only.
- **Equivalence policy:** allowed

## REV-RR-18 — should_fix

- **Routed seat / persona:** R1 Methodology (applied econometrician, staggered DiD / honest-DiD sensitivity)
- **source_reviewer:** R1-W14, EIC-W10 → labels ['R1', 'EIC']
- **Inherited criterion (roadmap, verbatim):** Consistent significance stars
- **FULLY_ADDRESSED:** The same estimate carries the same significance marker in every table, the p-value basis (e.g., Holm-adjusted vs unadjusted) is stated in each table note, and the p-value and CI methods are documented.
- **Expected change surface:** Table 2 and Table 3 notes and markers; hypothesis only.
- **Equivalence policy:** allowed

## REV-RR-19 — should_fix

- **Routed seat / persona:** R2 Domain (sustainable-finance researcher on ESG ratings, provider facts, construct validity)
- **source_reviewer:** R2-W5 → labels ['R2']
- **Inherited criterion (roadmap, verbatim):** Correct Tsang et al. (2024) author names
- **FULLY_ADDRESSED:** The reference list and in-text citation give the authors of the 2024 Journal of Banking & Finance article as Albert Tsang, Yujie Wang, Yi Xiang, and Li Yu.
- **Expected change surface:** References; hypothesis only.
- **Equivalence policy:** allowed

## REV-RR-20 — should_fix

- **Routed seat / persona:** R2 Domain (sustainable-finance researcher on ESG ratings, provider facts, construct validity)
- **source_reviewer:** R2-W6, R2-W8 → labels ['R2']
- **Inherited criterion (roadmap, verbatim):** Recast comparisons (Kelly & Ljungqvist; Hartzmark & Sussman); analyst initiation analogue; temporary vs permanent index effects
- **FULLY_ADDRESSED:** Kelly and Ljungqvist (2012) and Hartzmark and Sussman (2019) are presented as motivating channels rather than as contradicted results; the analyst-initiation analogue (e.g., Demiroglu and Ryngaert, 2010) is added and compared; the index-addition discussion distinguishes temporary (Harris and Gurel, 1986) from lasting effects (Shleifer, 1986; Chen, Noronha, and Singal, 2004). All citations verifiable.
- **Expected change surface:** §1 and §4.1 literature comparisons, References; hypothesis only.
- **Equivalence policy:** allowed

## REV-RR-21 — should_fix

- **Routed seat / persona:** R2 Domain (sustainable-finance researcher on ESG ratings, provider facts, construct validity)
- **source_reviewer:** R2-W7 → labels ['R2']
- **Inherited criterion (roadmap, verbatim):** Data vintage, score field, non-definitive recent scores
- **FULLY_ADDRESSED:** The data citation and Data section report the download date/vintage, the product, and the exact score field used (e.g., ESG score vs ESG Combined score), and state that the most recent fiscal-year scores are non-definitive and can change, with the implication for treatment dates and the high/low score split.
- **Expected change surface:** Data section §2.1 and data citation in References; hypothesis only.
- **Equivalence policy:** allowed

## REV-RR-22 — should_fix

- **Routed seat / persona:** R2 Domain (sustainable-finance researcher on ESG ratings, provider facts, construct validity)
- **source_reviewer:** R2-W9 → labels ['R2']
- **Inherited criterion (roadmap, verbatim):** Rating demand/disagreement/size-bias literature (compact)
- **FULLY_ADDRESSED:** A compact paragraph cites verifiable work on rating-driven investor demand, rating disagreement, and size bias in ESG scores (candidates in R2-W9) and uses it in the interpretation of the result.
- **Expected change surface:** §1 or §4.1 literature paragraph, References; hypothesis only.
- **Equivalence policy:** allowed

## REV-RR-23 — should_fix

- **Routed seat / persona:** R3 Perspective (emerging-markets capital-markets scholar, ASEAN exchanges, index inclusion, foreign access)
- **source_reviewer:** R3-W5, DA-m4 → labels ['R3', 'DA']
- **Inherited criterion (roadmap, verbatim):** Investor-recognition explanation labelled as untested
- **FULLY_ADDRESSED:** The investor-recognition explanation for the null (e.g., "probably known to many investors") is labelled as an untested hypothesis, with the text noting that ownership outcomes are not observed and that foreign-ownership limits may mute the channel; no ownership data are invented.
- **Expected change surface:** §4.1 interpretation and §4.2 limitations; hypothesis only.
- **Equivalence policy:** allowed

## REV-RR-24 — should_fix

- **Routed seat / persona:** EIC Journal-Fit Reviewer (associate editor, short-format finance journal; strict on over-claiming)
- **source_reviewer:** EIC-W7, DA-m5 → labels ['EIC', 'DA']
- **Inherited criterion (roadmap, verbatim):** Remove "first round of review" remark
- **FULLY_ADDRESSED:** The manuscript contains no reference to a first or earlier round of review; the added checks are described only as not pre-specified/exploratory.
- **Expected change surface:** §2.3 exploratory-checks sentence and Table 3 note; hypothesis only.
- **Equivalence policy:** allowed

## REV-RR-25 — should_fix

- **Routed seat / persona:** EIC Journal-Fit Reviewer (associate editor, short-format finance journal; strict on over-claiming)
- **source_reviewer:** EIC-W9 → labels ['EIC']
- **Inherited criterion (roadmap, verbatim):** Companion study named in the submitted (single-anonymized) version
- **FULLY_ADDRESSED:** In the submitted (single-anonymized) version the companion study is identified by citation or name, with the non-overlap statement kept.
- **Expected change surface:** Data section companion-study sentence and References; hypothesis only.
- **Equivalence policy:** allowed

## REV-RR-26 — should_fix

- **Routed seat / persona:** EIC Journal-Fit Reviewer (associate editor, short-format finance journal; strict on over-claiming)
- **source_reviewer:** EIC-W11, DA-m3 → labels ['EIC', 'DA']
- **Inherited criterion (roadmap, verbatim):** Figure 1 note stands alone; report e = 4
- **FULLY_ADDRESSED:** The Figure 1 note is self-contained (estimator, control group, covariates, sample sizes, axis labelling per panel, and why e = 4 is shown but excluded from the headline average), and the e = 4 estimates are reported and discussed in the text.
- **Expected change surface:** Figure 1 note and Results text on event years; hypothesis only.
- **Equivalence policy:** allowed

## New-standard records

- **NS-1** (advisory, item global): Pre-trend magnitudes quoted in the abstract and introduction (14.1% market capitalization, 10.0% MTB in Round 1) should carry their CIs, and the MTB run-up should be described as imprecise (EIC-W6). Why not in Round 1 roadmap: EIC-W6 (minor) was raised in Round 1 but is not transported into any roadmap item's text or source list; only the horizon wording overlaps RR-4 via R1-W4. Verifying it would add an acceptance requirement beyond the immutable roadmap, so it is recorded as advisory only and cannot affect any item verdict or the decision.

[CONTRACT-ACKNOWLEDGED]