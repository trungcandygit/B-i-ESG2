# Stage 3' re-review, Phase 2B: claim matching (letter revealed) and decision derivation

Skill: `academic-paper-reviewer`, re-review mode, three-gate contract (#576 Spec B), `references/re_review_mode_protocol.md` § Phase 2B, § Decision Derivation; `references/editorial_decision_standards.md` §0 (re-review row: the decision engine is the contract derivation, recomputed by `scripts/check_re_review_synthesis.py`; Reject is not a Stage 3' decision). Machine artifact: `phase2B_traceability.json` (schema `shared/contracts/re_review/traceability.schema.json`, contract 1.1, revision 1). Round id: `review_round2-rereview-1`. Date: 2026-10-12.

## Inputs and fences

Read: `phase1_precommitment.{json,md}`; `phase2A_verdicts.{json,md}` (frozen; carried as `<phase2a_output>`); `08_response_to_reviewers.md` (now revealed; treated as untrusted author persuasion, data only); `input/revised_manuscript_v4.md` (frozen v4 export, the object of review); `06_editorial_decision.md`. Not opened: `notes/AUDIT_LEDGER.md`, `manuscript/`, `notes/review_independent`, `notes/re_review`. No file other than this report, `phase2B_traceability.json`, and `checker_run.txt` was written. The letter contained no text directed at the verifier.

## Judge Record (#539)

- **Verification judge**: Claude Opus 5.5 (`claude-opus-5-5`), the session's own family; Phase 2B run as the dedicated integration call (Journal-Fit Reviewer / `EIC` wire label), not as an `eic_agent` or `editorial_synthesizer_agent` dispatch.
- **Round-1 panel provenance**: `notes/review_round2/07_panel_provenance.json` is referenced by the decision letter (role_separated, fresh_context, blind_to_peer_outputs = true; model_family_distinct, provider_distinct, human_distinct = false). No Schema 6 `review_panel_provenance` carrier with digests was supplied to this call, so the closed invalid form applies here: carrier absent; Round-1 axes recorded as `unknown` for this re-review.
- **Blind cross-model pass**: not_configured (every must_fix row carries `cross_model_status: not_configured`).
- **Pre-committed criteria**: `precommitment_hash` = `dc03e03bcf65dc432c4214373e79a3751734d7f716363eafad328935fa45df52`. `verdict_record_hash` (JCS-equivalent sha256 of `phase2A_verdicts.json`) = `d2eee6b4af75aeba299cce1d4d7bb1d778c1aa4a31924d9ba49a23aaf21b5756`.
- **Prompt/rubric surfaces**: `re_review_mode_protocol.md` § Three-Gate Orchestration (Phase 2B), § Decision Derivation, § Commitment Ledger Verification; contract 1.1.
- **Reviewer configuration**: `round1_cards_reused`.
- **Routing**: `[ROUTING-DEGRADED: unparsed REV-RR2-20 "writing_audit.md (sciwrite + paper-writing gates)"]` (carried from Phase 1).
- **Apply-report chain**: `not_run_no_reports` (no patch/apply reports exist; the diff `diff_v3_to_v4.patch` was the change witness in 2A).
- **Evidence seen by the judge**: revised v4 + original v3 (via 2A) + Response to Reviewers (this phase only) + roadmap table in the decision letter. Deviations: no 1.1 input manifest, no Schema 7 roadmap file, no author-adjudication sidecar, no revision-evidence bundle.
- **Judging budget**: one Phase 2B integration call; no extra judgment passes (no critical-rebuttal proposals, no dissents, no divergences).

This verification round ran on the same model family that drove the revisions; over-optimization to this judge's latent biases is possible (Ren et al. 2026, arXiv:2607.13104 §8.1.2).

## Decision

**Candidate decision: Major Revision** (`reject_recommended: false`). **Rule that fires: B3** (any `regression`-attributed new issue with severity `major`: NEW-1 and NEW-2).

**Contract surfacing status: `[RE-REVIEW-ABORT: manifest_incomplete]` (gate G0).** Under the closed rules, Step 1 gate G0 matches first: no input manifest 1.1 exists, and the roadmap, author sidecar, and revision-evidence bundle are absent (degraded state recorded since Phase 1, item 1). The checker run (`checker_run.txt`, exit code 2) confirms this abort. Under the contract the candidate is therefore not checker-verified and cannot surface as a contract decision; the Major Revision candidate above is the Phase 2B derivation the protocol assigns to this call ("derives the candidate decision state under the closed rules"), recorded in `phase2B_traceability.json` `decision_state`. To surface it as a contract decision, the dispatching layer must emit a 1.1 manifest, a Schema 7 roadmap, an author-adjudication sidecar, and a revision-evidence bundle, rebind Phase 1, and re-run the checker. Because no 2B adjustment was made, the candidate does not depend on any letter content.

### Derivation trace

- **Step 1 (gates).** G0: fires (manifest incomplete; see above). G1: does not fire (no row has `final_verdict != phase2a_verdict`; zero adjustments). G2: does not fire (no dissents, no divergence rows, no escalation exceptions, no reapplications).
- **Step 2 (base, first match).** B1: no must_fix `MADE_WORSE`; no critical regression. Does not fire. B2: 0 of 15 must_fix items in {NOT_ADDRESSED, MADE_WORSE}. Does not fire. **B3: fires.** No must_fix item is NOT_ADDRESSED, MADE_WORSE, or CANNOT_VERIFY, but NEW-1 and NEW-2 are `regression`-attributed with severity `major`. Base = Major Revision. (B4 would not fire: no residual graded must_fix. B5 conditions also hold: 11 must_fix PARTIALLY_ADDRESSED with should_fix/consider residuals, and five minor regressions; they are dominated by B3.)
- **Step 3 (floors).** No approved escalation exception. Decision = Major Revision. `reject_recommended` = false (neither B1 nor B2, no research-integrity exception).
- **should_fix_addressed_rate** = 4/5 = 80 percent (RR2-16, RR2-17, RR2-19, RR2-20 count; RR2-18 NOT_ADDRESSED). At the 80 percent threshold, not below it.
- **Robustness of the outcome to the letter.** The B3 trigger lives in the frozen 2A new-issue set, which Phase 2B cannot edit. No admissible adjustment could remove it, so no reading of the letter could change the candidate decision.

## Claim matching

### Adjustments (protocol-allowed classes only)

**None (0).** Each letter pointer was followed into v4. No pointer led to manuscript evidence that 2A missed and that satisfies a Phase-1 operationalization (`author_pointer_located_evidence`). Checked in particular: RR2-17 ("'comparable' now refers to never-scored firms adjusted for size, country, and industry, §1, §4.1"): no such definition in Section 1 or Section 4.1; RR2-8 ("R10 reported in §1 and §8 with its fragility"): neither section gives the interval or the M̄ fragility; RR2-13: abstract still has no interval. No letter argument rebuts a finding on the merits (`valid_rebuttal`): RR2-16 cites a house rule that keeps formulas in Methods, and RR2-18 cites an author decision; both are constraints, not counter-evidence. No 2A reading misidentified an item's target (`scope_correction`). `cross_model_adjudication` and `user_accepted_fail_closed` have no trigger. All 20 final verdicts equal the 2A verdicts.

### Claim-drift records (letter overstates what v4 does)

Recorded per row in `quality_assessment` and as `[CLAIM-DRIFT CD-n]` entries in `post_letter_observations` (decision-inert; next-round seed). Kind: *factual* = the letter states something v4 does not contain; *status* = the letter's "Addressed" overstates a PARTIALLY_ADDRESSED verdict without a false factual statement.

| ID | Item | Kind | Letter says | v4 shows |
|---|---|---|---|---|
| CD-1 | RR2-1 | factual | Abstract "without estimator names" | Design field: "using cohort-specific difference-in-differences estimators"; Purpose lacks the ESG-screened-capital motivation |
| CD-2 | RR2-3 | status | Addressed | Abstract "whatever the level of the score" and §1 "does not differ" read a non-significant H3 test (MDE 0.111 to 0.113) as equality |
| CD-3 | RR2-4 | status | Addressed | §8 keeps only the reversal reading of the R10 decline |
| CD-4 | RR2-5 | factual | "Terminology unified"; "size" replaced; LSEG "one widely used provider" | "ESG rated universe", "scored universe", "unscored" (6), "comparable unscored firms" remain; "size" remains as covariate term; v4 says "one of the most widely used providers in research and practice" (unsourced, NEW-7); no §7 fund-holdings limitation; no term definitions |
| CD-5 | RR2-6 | factual | Dates "from verified regulatory sources" | Thai date rests on a law-firm note on the One Report; §7 repeats "from regulatory sources"; reason for omitting domestic indices and Shariah screens is not in the paper |
| CD-6 | RR2-8 | factual | R10 in §1 and §8 "with its fragility"; gap "comes mainly from cohort composition" | §1 and §8 give no interval and no M̄ fragility; abstract has no R10; re-based estimates lack SEs (NEW-5) |
| CD-7 | RR2-9 | status | Addressed ("MTB run-up survives") | Market-capitalization run-up survival not stated; weaker no-covariate MTB run-up not acknowledged |
| CD-8 | RR2-10 | status | Addressed | §6.3 still says the interval "excludes increases above 4.9 percent" although the clustered interval reaches 0.053 |
| CD-9 | RR2-11 | status | Addressed | Estimand change, run-up change (p = 0.212), and trimmed market-capitalization effect (−0.096) not discussed |
| CD-10 | RR2-12 | factual | "can attribute" in §8 "and the abstract" | Only §8 (and §6.3 "can reflect"); the abstract has no such sentence; verdict unaffected |
| CD-11 | RR2-13 | status | Addressed (intervals in §1, §5.3, §8) | Abstract, which the roadmap names, still lacks the interval; §1 omits p = 0.074 |
| CD-12 | RR2-15 | factual | Implications "each … bounded by the design" | Exchange implication conflicts with §3.1 and with 565 never-scored Malaysian firms; abstract implications omit rating providers |
| CD-13 | RR2-17 | factual | "comparable" defined in §1, §4.1; counts no longer together | No definition in §1 or §4.1; abstract keeps "comparable unscored firms"; 270 (Table S6) and 273 (§5.4) are not reconciled |
| CD-14 | RR2-20 | factual | "term drift removed"; unsupported phrases removed | Term drift remains (CD-4); a new unsupported phrase was added (NEW-7); 74-word sentence in §4.5; "declines by about −6.6 percent" remains |

Claims consistent with v4 (no drift): RR2-2, RR2-7, RR2-14, RR2-16 (Partly addressed, honest), RR2-18 (Declined, honest), RR2-19. On RR2-7, the letter accurately repeats v4's "selective versus Malaysian expansion" claim, which the frozen NEW-1 and NEW-2 dispute; this is recorded as a letter-versus-evidence observation, not drift.

Commitment Ledger Verification: no `commitment_extracted` lists exist for this round, so no commitment was verified and no `COMMITMENT_GAP` is emitted.

## Revision Response Checklist

### must_fix (cross-model column: `not_configured` on every row)

| Ref | Item | Letter status | Final verdict | Verified? | Residual class | Drift |
|---|---|---|---|---|---|---|
| R1 | RR2-1 reframing | Addressed | PARTIALLY_ADDRESSED | PARTIAL | consider | CD-1 |
| R2 | RR2-2 §2 rebuild | Addressed | FULLY_ADDRESSED | YES | | |
| R3 | RR2-3 channels, H3 | Addressed | PARTIALLY_ADDRESSED | PARTIAL | should_fix | CD-2 |
| R4 | RR2-4 Chen et al. | Addressed | PARTIALLY_ADDRESSED | PARTIAL | consider | CD-3 |
| R5 | RR2-5 construct, terms | Addressed | PARTIALLY_ADDRESSED | PARTIAL | should_fix | CD-4 |
| R6 | RR2-6 mandate timing | Partly addressed | PARTIALLY_ADDRESSED | PARTIAL | should_fix | CD-5 |
| R7 | RR2-7 wave profiles | Addressed | FULLY_ADDRESSED | YES | | |
| R8 | RR2-8 "peak", R10 | Addressed | PARTIALLY_ADDRESSED | PARTIAL | should_fix | CD-6 |
| R9 | RR2-9 covariate-free | Addressed | PARTIALLY_ADDRESSED | PARTIAL | should_fix | CD-7 |
| R10 | RR2-10 cluster bootstrap | Addressed | PARTIALLY_ADDRESSED | PARTIAL | should_fix | CD-8 |
| R11 | RR2-11 common support | Addressed | PARTIALLY_ADDRESSED | PARTIAL | should_fix | CD-9 |
| R12 | RR2-12 TWFE bridge | Addressed | FULLY_ADDRESSED | YES | | CD-10 |
| R13 | RR2-13 run-up intervals | Addressed | PARTIALLY_ADDRESSED | PARTIAL | should_fix | CD-11 |
| R14 | RR2-14 ordering of events | Addressed | FULLY_ADDRESSED | YES | | |
| R15 | RR2-15 implications | Addressed | PARTIALLY_ADDRESSED | PARTIAL | should_fix | CD-12 |

Author triage: `will_address` on all must_fix rows (transcribed from the decision letter's triage section; no sidecar exists).

### should_fix

| Ref | Item | Letter status | Final verdict | Notes |
|---|---|---|---|---|
| S1 | RR2-16 method exposition | Partly addressed | PARTIALLY_ADDRESSED (consider) | House-rule reason recorded; not a rebuttal |
| S2 | RR2-17 counts, cohorts, "comparable" | Addressed | PARTIALLY_ADDRESSED (should_fix) | CD-13 |
| S3 | RR2-18 companion disclosure | Declined | NOT_ADDRESSED | `wont_address`; author explanation recorded, does not count toward the rate |
| S4 | RR2-19 Tsang et al. | Addressed | FULLY_ADDRESSED | |
| S5 | RR2-20 sentence-level | Addressed | PARTIALLY_ADDRESSED (should_fix) | CD-14 |

### consider

None in the roadmap.

## New Issues (frozen at Phase 2A; carried unchanged, whole-record identical)

| # | Attribution | Severity | Location | Description (short) |
|---|---|---|---|---|
| NEW-1 | regression | major | Abstract Findings; §1 ¶5; §6.1; §6.3 | "Wholesale"/"across a whole market"/"exchange-wide" characterization of the Malaysian wave contradicted by 565 never-scored Malaysian firms and 83 Malaysian 2023 entrants |
| NEW-2 | regression | major | §5.3 ¶3; §6.1 | "All other cohorts entered a few at a time and show the same pattern" unsupported: large 2021-2023 batches; no market-capitalization run-up detected (p = 0.652); MTB gap closes only in the base year; wave boundaries set after seeing Table S2 |
| NEW-3 | regression | minor | Abstract Findings; §5.7 | Pooled 10.0 percent run-up attributed to "selective coverage waves" |
| NEW-4 | regression | minor | §3.1 ¶3 | "Began in fiscal 2021, before the November 2022 agreement" conflicts with backfilling described in §3.2 |
| NEW-5 | regression | minor | §5.4 ¶2; §6.1 | Re-based estimates (−0.083, −0.167) without SEs support an inferential sentence |
| NEW-6 | regression | minor | §1 ¶2 | Preference channel misdescribed as classifiable versus unclassifiable assets |
| NEW-7 | regression | minor | §1 ¶1 | Unsourced "one of the most widely used providers in research and practice" |

## Residual revision list (numbered; for the next revision round)

**A. PARTIALLY_ADDRESSED residuals (must_fix items)**

1. RR2-1 (consider): rewrite the abstract Design field in plain words (firms entering LSEG coverage versus never-scored firms, before and after, 2014 to 2024) with no estimator name; add one Purpose sentence on why first coverage matters for ESG-screened capital.
2. RR2-3 (should_fix): where H3 is summarized (abstract Findings, §1 ¶5), report the high-minus-low estimate, its p-value, and the MDE (0.111 to 0.113), and replace "whatever the level of the score" and "does not differ" with non-detection wording.
3. RR2-4 (consider): in §8, give both readings of the R10 decline (reversal of the run-up or a coverage-induced decline), as §5.4 and §6.1 do.
4. RR2-5 (should_fix): (a) add a §7 limitation that the LSEG score is not the MSCI rating tied to ESG-fund holdings; (b) define score, rating, coverage, and provider once (§3.1) and distinguish the LSEG product from MSCI-type ratings; (c) use one term pair throughout ("scored"/"never-scored"; "scored universe"), removing "rated universe", "unscored", and "comparable unscored firms"; (d) bound the abstract's Practical implications to the LSEG scored universe.
5. RR2-6 (should_fix): (a) source the Thai sustainability-disclosure requirement to the Thai SEC or SET and date the onset of mandated sustainability disclosure, not only the 56-1 One Report; re-check "the Thai wave preceded the One Report"; correct §7 "from regulatory sources" if any date stays secondary; (b) relate first scores to mandate timing for Singapore, Indonesia, and the Philippines as well (Table S2 counts); (c) state in §3.1 or §7 that domestic ESG indices and Shariah screens are not examined.
6. RR2-8 (should_fix): report the R10 result in the abstract (−0.068, about −6.6 percent) with its fragility (interval includes zero at M̄ = 0.25; significance lost at M̄ = 0.23); give the R10 interval and fragility in §1; state in §5.4 which specification governs the long-horizon reading.
7. RR2-9 (should_fix): in §5.5 state whether the 14.1 percent market-capitalization run-up survives (−0.215 without covariates, −0.185 with size at g − 3), give percentages next to log points, show market-capitalization variant profiles, and state that the no-covariate MTB run-up (−0.064, about 6.6 percent) is weaker than the headline.
8. RR2-10 (should_fix): in §6.3 replace "the confidence interval excludes increases above 4.9 percent" with wording that reflects the clustered interval (upper limit 0.053, about 5.4 percent).
9. RR2-11 (should_fix): note that the trimmed estimate is an ATT for the common-support population; report how the run-up changes under trimming and binning (trimmed pre-trend p = 0.212); discuss the significant trimmed market-capitalization effect (−0.096, p = 0.006).
10. RR2-13 (should_fix): add the MTB run-up interval (1.9 to 18.2 percent) to the abstract; in §1 give p = 0.074 for the MTB joint test and the share-issuance caveat on the market-capitalization run-up.
11. RR2-15 (should_fix): bound the exchange implication by the design (remove "exchange-wide coverage avoids that tilt"; do not attribute the Malaysian pattern to the November 2022 arrangement, which §3.1 says postdates the wave and concerned FTSE Russell); name rating providers in the abstract's Practical implications.

**B. PARTIALLY_ADDRESSED residuals (should_fix items)**

12. RR2-16 (consider): within the house rule that keeps formulas in Methods, add a plain-language reading of the sensitivity bound in percent of MTB in the Discussion (§6.1 or §6.3).
13. RR2-17 (should_fix): reconcile the scored-firm counts for the same population (Table S6 event year 3: 270; R11: 273) in a note or sentence; state how conclusions change under two-year re-dating; show pre-/post-2020 cohort pre-coverage profiles, not only averages; replace "comparable unscored firms" in the abstract with "never-scored firms adjusted for size, country, and industry".
14. RR2-20 (should_fix): remove remaining term drift (see item 4c); split the sentences of 44 words or more (§1 ¶¶2, 4, 5; §4.5 ¶2 at 74 words; §5.5 ¶2; §5.7); replace "declines by about −6.6 percent" / "a decline of about −6.6 percent" with "declines by about 6.6 percent" (§1, §8); align the hedging of the main null with item 8.

**C. NOT_ADDRESSED should_fix item**

15. RR2-18: either add the anonymized companion-study disclosure to the text or keep the decline and make sure the cover letter for the next venue discloses the companion manuscript and its status, as the letter promises (Stage 4.5 integrity gate to confirm).

**D. New issues (frozen; regression-attributed)**

16. NEW-1 (major): remove "wholesale expansion", "across a whole market", and "exchange-wide coverage" (abstract, §1 ¶5, §6.1, §6.3); describe the Malaysian 2021-2022 wave by its counts (289 scored; 565 never scored; 83 more first scored in 2023) and state that the data do not record the provider's coverage rule.
17. NEW-2 (major): rewrite the "all other cohorts" description in §5.3 ¶3 and §6.1 to match Table S2 (2021-2023 batches including 109 firms in 2023) and the estimates (market-capitalization pre-trend p = 0.652; MTB e = −5 −0.103 versus e = −2 −0.108); declare the wave boundaries as set after inspecting Table S2 (exploratory); drop "selective waves" as a general label unless supported wave by wave.
18. NEW-3 (minor): attribute the pooled 10.0 percent MTB run-up to all scored firms in the abstract and §5.7, or report the wave-specific estimates (33.1 percent Thailand/Singapore; 10.8 percent other cohorts) where waves are named.
19. NEW-4 (minor): delete or qualify the timing argument in §3.1 ¶3 given backfilling (§3.2): fiscal-2021/2022 first scores may have been produced after November 2022.
20. NEW-5 (minor): add standard errors or intervals for the within-cohort re-based estimates (−0.083, −0.167) or drop the inferential sentence "Both specifications therefore show …" in §5.4 and §6.1.
21. NEW-6 (minor): correct §1 ¶2 so the preference channel prices green versus brown assets (Pástor et al., 2021; Pedersen et al., 2021), not classifiable versus unclassifiable assets.
22. NEW-7 (minor): cite a source for LSEG being "one of the most widely used providers" or reduce it to a sourced, factual description.

**E. Letter fixes (response to reviewers; claim drift)**

23. CD-1 (RR2-1): change status to "Partly addressed" and stop claiming the abstract has no estimator names, or fix the Design field (item 1) first.
24. CD-2 (RR2-3): state that the abstract and Introduction will report H3 with non-detection wording (item 2); until then "Partly addressed".
25. CD-3 (RR2-4): "Partly addressed" until §8 gives both readings (item 3).
26. CD-4 (RR2-5): withdraw "Terminology unified" and "named explicitly instead of size" unless item 4 is done; describe LSEG as v4 does, with a source (item 22).
27. CD-5 (RR2-6): withdraw "from verified regulatory sources" for Thailand or replace the source (item 5a); move the reason for not discussing domestic indices and Shariah screens into the paper (item 5c).
28. CD-6 (RR2-8): withdraw "reported in §1 and §8 with its fragility" and "comes mainly from cohort composition" unless items 6 and 20 are done; acknowledge that the abstract lacks R10.
29. CD-7 (RR2-9): "Partly addressed" until item 7 is done.
30. CD-8 (RR2-10): "Partly addressed" until the §6.3 "excludes" wording is fixed (item 8).
31. CD-9 (RR2-11): "Partly addressed" until item 9 is done.
32. CD-10 (RR2-12): drop "and the abstract" from the "can attribute" claim.
33. CD-11 (RR2-13): list the abstract explicitly and say whether its interval was added (item 10).
34. CD-12 (RR2-15): withdraw "each … bounded by the design" for the exchange implication until item 11 is done.
35. CD-13 (RR2-17): correct the location of the "comparable" definition (§5.1, Eq. 3, not §1/§4.1) and replace the "no longer appear together" claim with an actual reconciliation (item 13).
36. CD-14 (RR2-20): withdraw "term drift removed" until items 4c and 14 are done; acknowledge the new unsourced phrase (item 22).

Size: 36 items (11 must_fix residuals, 3 should_fix residuals, 1 declined should_fix item, 7 new issues, 14 letter fixes).

## Schema and checker

- `phase2B_traceability.json` validates against `shared/contracts/re_review/traceability.schema.json` (Python `jsonschema` 4.26.0, `Draft202012Validator`: 0 errors). 20 rows (15 MUST_FIX, 5 SHOULD_FIX), 0 adjustments, 7 frozen new issues copied verbatim from 2A, 19 post-letter observations (14 claim-drift records + 5 notes).
- `scripts/check_re_review_synthesis.py` with the documented arguments (`--manifest --precommitment --verdict-record --traceability --roadmap --author-adjudication --revision-evidence-bundle --revision-evidence-root --letter`): `[RE-REVIEW-ABORT: manifest_incomplete]`, exit code 2, because `input_manifest.json` does not exist. Output saved verbatim in `checker_run.txt`. This abort was expected (Phase 1 degraded state 1) and is gate G0 of the derivation.

[MATRIX-COMMITTED]
