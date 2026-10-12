contract_role: methodology

## Dimension Scores

### D1: methodology_rigor
score: block
trigger: "inference that ignores within-firm or within-cohort dependence"
block_class: repairable

### D2: domain_accuracy
score: not_assessed

### D3: argumentative_coherence
score: warn
trigger: "Localized overreach or inconsistency that does not overturn the central thesis"

### D4: cross_disciplinary_relevance
score: not_assessed

### D5: writing_and_structure
score: not_assessed

### D6: venue_fit_and_contribution
score: not_assessed

## Review Body

Methodology Review Report (Peer Reviewer 1, seat R1). Reviewer identity: applied econometrician on staggered difference-in-differences and event studies (Callaway and Sant'Anna, Sun and Abraham, honest-DiD sensitivity), per Configuration Card R1. Overall recommendation: Major Revision. Confidence: 4 (direct expertise in the estimator; R code in project_R/R/02_cs_did.R and outputs in project_R/outputs were read to confirm that the methods are described accurately). Calibration status: `NOT_CALIBRATED`. Weakness IDs below are R1-W1 to R1-W11 in the panel numbering (headings use the pinned W-n grammar).

Summary assessment. The design is a sound modern choice: group-time ATTs with never-scored controls, a universal base year g − 1, a regression-adjustment estimator, a seeded firm-level pairs bootstrap with draws shared across specifications, a pre-analysis plan with pre-specified versus exploratory rows labelled, MDEs, and a relative-magnitudes sensitivity bound with breakdown values. I checked the code against Section 4: the estimator, covariates (country, industry, log assets and its square at g − 1), aggregation weights, bootstrap, Holm adjustment, trend removal and bound construction match the text, and every headline number I spot-checked (Table 2, Table 3, Table S5, event-time estimates, MDE, percentage conversions) matches the CSV outputs. The reported p-values I could recompute from estimate and SE are consistent (receipts below). The paper is careful about not claiming a zero effect. The problems are in four places: (i) an unreported event-time profile for the re-dated specification R10 that does not reconcile with the baseline profile on the same cohorts and bears directly on the reversal reading; (ii) pre-period estimates that condition on covariates measured at the end of the pre-period window, with no covariate-free event-time profile shown, although the run-up is the central finding; (iii) inference that resamples firms independently although treatment arrives in market-level waves, which the authors acknowledge but do not address, while the text leans on precise interval statements; (iv) poor upper-tail overlap handled by extrapolation. Two coherence points (the TWFE decomposition claim and the uncertainty of the run-up in summary sections) need rewriting. All are repairable, mostly with existing outputs or small code changes.

Criterion-bound judgements (not totalled, not mapped mechanically to the recommendation):

| Dimension / criterion | Criterion source | Judgement | Evidence anchors | Rationale | Uncertainty or scope limit | Decision bearing? |
|---|---|---|---|---|---|---|
| D1 identification and estimator choice | Contract D1; Card R1 (staggered DiD) | MEETS | §4.1–4.2, Eq. (2)–(6) | Heterogeneity-robust CS estimator, never-scored controls, universal base, PAP | Selection into treatment is acknowledged, not solved | yes, supports core design |
| D1 pre-period estimation | Contract D1 | PARTLY_MEETS | §4.2 third design choice; W2 | Covariates at g − 1 condition pre-period long differences on their endpoint | Direction of distortion unknown without covariate-free profile | yes |
| D1 inference | Contract D1; statistical_reporting_standards §1.3, §1.5 | PARTLY_MEETS | §4.3; W3 | Firm bootstrap ignores wave-level dependence; MDE and CIs reported well | Size of understatement unknown | yes |
| D1 overlap and extrapolation | Contract D1 | PARTLY_MEETS | §4.2; W4 | A quarter of scored firms lie beyond control support; trimming is one-sided | Effect on headline unknown | yes |
| D1 robustness reporting completeness | Contract D1 | PARTLY_MEETS | §5.4; W1 | R10 event profile computed but not reported and inconsistent with baseline | Could reflect covariate timing or composition | yes |
| D1 reproducibility | Contract D1 | EXCEEDS | §4.3; project_R/R/02_cs_did.R | Seeded shared draws, PAP in replication package, code matches text | Data licence limits public reuse | no |
| D3 inference-to-claim alignment | Contract D3 | PARTLY_MEETS | Abstract; §6.3; W5–W7 | Main conclusions hedged well; TWFE decomposition and run-up precision overstated | none identified | yes, minor-to-moderate |

### W1: The R10 event-time profile is not reported and does not reconcile with the baseline profile on the same cohorts
**Severity**: Major
**Evidence Anchor**: dataset: project_R/outputs/r10_event_study.csv, rows ln_mtb terms 2 to 4 versus project_R/outputs/event_study.csv, ln_mtb terms 0 and 4
**Confidence**: 4 — read the R10 code path (shift_G) and both output files
The text reports only the R10 average (−0.068) and interprets it as a possible reversal of the run-up (§5.4, §6.1, §8). The R10 event-time output shows the MTB gap relative to the first scored year widening to −0.138 (e = 2), −0.200 (e = 3) and −0.247 (e = 4), all with p below 0.01. Re-basing the baseline profile from g − 1 to g implies roughly −0.044 − 0.017 = −0.061 at calendar year g + 3 and −0.077 − 0.017 = −0.094 at g + 4, using the same cohorts (g ≤ 2020) for the longest horizon. A gap of about 0.1 log points between two specifications that differ mainly in base year and covariate timing (size measured at g rather than g − 1) is decision-relevant: a decline of 0.20 to 0.25 exceeds the entire pre-coverage MTB run-up (about 0.095), so a pure reversal reading cannot account for it, and the long-horizon path is sensitive to when size is conditioned on. Fix (required, existing output plus one rerun): report the R10 event-time profile in the Supplemental Appendix next to Fig. 1; rerun R10 with covariates held at g − 1 to isolate the covariate-timing effect; state in §5.4 and §6.1 which specification governs the long-horizon reading and temper the reversal interpretation accordingly.

### W2: Pre-period estimates condition on covariates measured at the end of the pre-period window
**Severity**: Major
**Evidence Anchor**: text: §4.2 "Third, the covariates are measured at the end of any run-up."
**Confidence**: 4 — standard property of regression adjustment with a universal base; confirmed in build_cells (size_b at base = g − 1)
Every cell, including e = −5 to −2, regresses the long difference Y(t) − Y(g − 1) on log assets and its square at g − 1. For pre-period cells the covariate is measured at the endpoint of the outcome difference, so conditioning on it is conditioning on a variable jointly determined with the outcome change (for ln(assets) the covariate is the endpoint of the outcome itself). The authors note this can absorb part of the run-up, and R2 reports the post average without covariates, but the run-up is the paper's central finding and no covariate-free event-time profile or pre-trend test is shown. Fix (required, small rerun with existing code): add the covariate-free event-time profile and joint pre-trend tests (R2 configuration) to the Supplemental Appendix; optionally also hold covariates at the earliest available pre-period year (g − 5 or g − 3) for the pre-period cells. State whether the 14.1 and 10.0 percent run-up figures survive.

### W3: Inference treats firms as independent although coverage arrives in market-level waves
**Severity**: Major
**Evidence Anchor**: text: §4.3 "The firm-level bootstrap does not account for correlation within market-level coverage waves, so the confidence intervals and pre-trend p-values may be too narrow."
**Confidence**: 4 — inference under clustered treatment assignment is my core area
Treatment timing is assigned in waves within market (Table S2: 193 Malaysian firms in 2022, 47 Thai firms in 2020). Country indicators in Eq. (3) remove market-mean changes among controls, but residual dependence within market-by-cohort cells (common index changes, common disclosure rules, common provider batch scoring) is not addressed, and the firm-level pairs bootstrap treats these firms as independent draws. Five markets are too few for market clustering, as the authors say, but intermediate levels are available. The headline statements that the interval "excludes" increases above 4.9 percent (§5.2, §6.3, §7) and the MTB pre-trend p of 0.074 inherit this understatement. Fix (required, small code change in WBOOT): rerun the bootstrap resampling clusters of market by industry (or market by cohort cells) and report how the headline CI, the R10 CI and the joint pre-trend p-values change; if wider, replace "excludes" phrasing with the clustered interval. If not done, the text should stop presenting the 4.9 percent bound as a firm exclusion.

### W4: Upper-tail overlap failure is handled by extrapolation, and the trimming check is one-sided
**Severity**: Major
**Evidence Anchor**: text: §4.2 "24.6 percent of scored firms are larger in the base year than the 95th percentile of never-scored firms"
**Confidence**: 4 — confirmed in project_R/outputs/size_overlap.csv (0.2458) and the R4 code path
The counterfactual for about a quarter of scored firms is a quadratic-in-size extrapolation beyond the control distribution, and R4 trims controls from below only. Because valuation dynamics of the largest firms (index candidates) are exactly where selection is strongest, the headline and pre-period estimates may depend on functional form in the region without support. Fix (required, small rerun): report the ATT and pre-trend tests after dropping scored firms above the 95th (or 99th) percentile of never-scored base-year size, and a version with size-bin indicators instead of the quadratic; note the change in the estimand (ATT on the overlap population).

### W5: The claim that the TWFE gap is mostly pre-coverage growth is asserted, not decomposed
**Severity**: Major
**Evidence Anchor**: text: §6.3 "the heterogeneity-robust estimator and its event-time profile trace most of the gap to pre-coverage growth"
**Confidence**: 4 — Goodman-Bacon and event-study decompositions are standard; the pieces are in Table 3
The paper calls this its main implication. The TWFE coefficient (0.064) differs from the baseline (0.002) in four ways at once: covariates (R2 alone gives 0.025), event window (TWFE uses all event years, including e beyond 4 and before −5), control group (TWFE uses already-treated firms), and pooling over the run-up. Section 5.5 concedes that part of the gap reflects covariates and window, but no quantity measures how much is due to the run-up. Fix (required for the claim as worded; partly existing outputs): either decompose explicitly (a TWFE restricted to never-scored controls and the −5 to 3 window without covariates; a dynamic TWFE; a Goodman-Bacon decomposition), or reword §6.3, the introduction and the abstract to say that the static estimate differs from the heterogeneity-robust estimate and that the event-time profile shows pre-coverage growth, without the "most of the gap" attribution.

### W6: Summary sections state the run-up magnitudes without their uncertainty, while the MTB joint pre-trend test does not reject
**Severity**: Major
**Evidence Anchor**: text: Abstract Findings "Before their first scored year, the market capitalization of scored firms grew 14.1 percent more, and their MTB ratio 10.0 percent more"
**Confidence**: 3 — the numbers match event_study.csv; severity reflects that this is the core claim
The run-up is the paper's main positive finding, yet the abstract, introduction and conclusion give point estimates only. The MTB e = −5 estimate has a 95% interval of about −0.167 to −0.019 (1.9 to 18.2 percent), the joint MTB pre-trend test has p = 0.074, and under W3 these intervals may be too narrow. The post-coverage null is reported with its interval throughout, so the asymmetry favours the selection story. Fix (required, existing outputs): give the interval for the run-up figures where they appear in the abstract, introduction and conclusion, and note that the joint MTB test does not reject at 5% while the market-capitalization test does (with the share-issuance caveat already in §5.3).

### W7: "Valuation peak" wording relies on the R10 base-year assumption and is unqualified in the abstract
**Severity**: Minor
**Evidence Anchor**: text: Abstract Originality/value "shows that the first scored year coincides with a valuation peak"
**Confidence**: 4 — follows from Fig. 1 and §5.4
Under the baseline the post-coverage MTB path is flat (event years 0 to 3 between −0.044 and 0.017); a peak, as opposed to the end of a relative run-up, is only established under R10, which assumes parallel trends from the first scored year and whose robust interval includes zero at M̄ = 0.25. The peak is also relative to size-matched never-scored firms. Fix: qualify as "the end of a relative run-up" or "a relative valuation peak under parallel trends from the first scored year", and make the title question consistent with this.

### W8: The one-year re-dating may not cover the backfilling the paper itself documents
**Severity**: Minor
**Evidence Anchor**: text: §3.2 "Section 5.4 therefore also dates coverage one year later."
**Confidence**: 3 — depends on unobserved publication vintages
Section 3.2 states that historical years may have been filled in when a firm entered coverage, so the gap can exceed one year, yet only a one-year shift is reported. Fix (optional, small rerun): report a two-year shift as an exploratory row, or restrict the post-coverage average to e ≥ 2 in the baseline (available from event_study.csv), and say how conclusions change.

### W9: Firm counts at event year 3 differ across sections without explanation
**Severity**: Minor
**Evidence Anchor**: text: §3.2 "Of the 274 scored firms with a base-year MTB ratio in cohorts observed through event year 3, 271"
**Confidence**: 4 — cross-checked Table S6 and §5.4
The same population appears as 274 or 271 (§3.2), 270 (Table S6, event year 3), and 273 (R11 in §5.4). The differences presumably reflect control-cell and covariate availability, but a reader cannot tell. Fix: one sentence or a note defining each count.

### W10: Table 1 compares scored firms at g − 1 with never-scored firm-years pooled over all years
**Severity**: Minor
**Evidence Anchor**: table: Table 1, note on never-scored firm-years 2014 to 2024
**Confidence**: 4 — reading of the table construction
Scored firms are concentrated in base years 2019 to 2022 while never-scored firm-years span 2014 to 2024, so level differences mix calendar effects with selection. Fix (optional): compare with never-scored firm-years in the same calendar years (weighted by cohort), or state the limitation in the note. The text "the medians agree" should say the medians differ in the same direction (1.26 versus 0.95).

### W11: Differential missingness of the primary outcome is not reported by group
**Severity**: Minor
**Evidence Anchor**: table: Table S4, ln(MTB) row, share missing 0.248
**Confidence**: 3 — magnitude plausible but group split unknown
Non-positive MTB values are set to missing and a quarter of firm-years lack ln(MTB). If negative book equity or missing prices are concentrated among small never-scored firms, the control set for MTB is selected on financial distress. Fix (optional, existing data): report the missing share separately for scored and never-scored firms and a check that recodes non-positive MTB (for example, an indicator outcome for negative equity).

### S1: Heterogeneity-robust estimator with a clean comparison group and transparent design choices
**Evidence Anchor**: text: §4.2 "Three design choices need comment."
The paper uses never-scored controls with not-yet-scored firms as a check, a universal base year with explicit discussion of what negative pre-period estimates mean, and cohort-composition checks (R11, event year 4 excluded from the headline).

### S2: Pre-analysis plan with explicit separation of confirmatory and exploratory analyses
**Evidence Anchor**: text: §5.4 "rows R1 to R6 were pre-specified, and rows R7 to R11 are exploratory"
The pre-specified placebo that fails is reported and interpreted rather than dropped, and Holm adjustment is applied to the secondary family.

### S3: Power and interval reporting that avoids reading a null as zero
**Evidence Anchor**: text: §5.2 "the confidence interval, not the MDE, gives the effects compatible with the data"
MDEs, interval-based interpretation, the Roth (2022) caution on pre-tests and a relative-magnitudes bound with breakdown values (rm_breakdown.csv) are all reported; the bound construction in Eq. (10) and Table S5 is correct and conservative.

### S4: Reproducible R pipeline
**Evidence Anchor**: dataset: project_R/R/02_cs_did.R, shared bootstrap weight matrix WBOOT with fixed seed
One set of 999 firm-resampling draws is shared across all specifications, so differences between specifications are internally consistent, and the code matches the equations in Section 4.

Methodological fallacies checked: survivorship (attrition to e = 3 is 1.1 percent; addressed), reverse causation and selection (acknowledged as the core finding), multiple comparisons (Holm on secondary outcomes; event-time p-values unadjusted, see W6), endogeneity of covariate timing (W2), extrapolation (W4).

Questions for the authors: (1) What explains the gap between the R10 and re-based baseline profiles (W1)? (2) How many market-by-industry clusters would a clustered bootstrap use, and how much do intervals widen (W3)? (3) Are industry indicators at the same granularity across the five markets in Compustat Global?

## Arithmetic Receipts

### AR1
procedure_id: p_from_test_statistic
evidence_anchor: text: §5.4 "The MTB effect is then −0.068" with Table 3 row R10 "−0.068*** (0.024)" and "p = 0.004"
reported_inputs: estimate −0.068; bootstrap SE 0.024; reported p = 0.004; test family z (normal approximation)
assumptions: paper states a normal-approximation two-sided p-value from the bootstrap SE (§4.3), so z = estimate / SE; estimate and SE rounded to three decimals
tail_convention: two-tailed
derivation: |z| ranges from 0.0675/0.0245 = 2.755 to 0.0685/0.0235 = 2.915 over the rounding intervals; two-tailed p = 2(1 − Φ(|z|))
derived_value_or_range: p between 0.0036 and 0.0059 (point value 0.0046 at z = 2.833)
comparison_rule: consistent if the derived range overlaps the reported rounding interval [0.0035, 0.0045)
status: consistent

### AR2
procedure_id: p_from_test_statistic
evidence_anchor: text: §5.5 "The difference of −0.041 (standard error 0.040, p = 0.307) is not significant"
reported_inputs: estimate −0.041; SE 0.040; reported p = 0.307; test family z
assumptions: normal-approximation two-sided p from bootstrap SE as stated in §4.3; three-decimal rounding of estimate and SE
tail_convention: two-tailed
derivation: |z| ranges from 0.0405/0.0405 = 1.000 to 0.0415/0.0395 = 1.051; two-tailed p = 2(1 − Φ(|z|))
derived_value_or_range: p between 0.2935 and 0.3173
comparison_rule: consistent if the reported rounding interval [0.3065, 0.3075) lies within or overlaps the derived range
status: consistent

### AR3
procedure_id: p_from_test_statistic
evidence_anchor: table: Table 2 row ln(assets), ATT 0.044, SE 0.018, with §5.2 "against an unadjusted p = 0.018"
reported_inputs: estimate 0.044; SE 0.018; reported unadjusted p = 0.018; test family z
assumptions: normal-approximation two-sided p from bootstrap SE as stated in §4.3; three-decimal rounding
tail_convention: two-tailed
derivation: |z| ranges from 0.0435/0.0185 = 2.351 to 0.0445/0.0175 = 2.543; two-tailed p = 2(1 − Φ(|z|))
derived_value_or_range: p between 0.0110 and 0.0187
comparison_rule: consistent if the derived range overlaps the reported rounding interval [0.0175, 0.0185)
status: consistent

### AR4
procedure_id: p_from_test_statistic
evidence_anchor: text: §5.4 "gives an MTB effect of 0.028 (p = 0.265)" with Table 3 row R8 "0.028 (0.025)"
reported_inputs: estimate 0.028; SE 0.025; reported p = 0.265; test family z
assumptions: normal-approximation two-sided p from bootstrap SE as stated in §4.3; three-decimal rounding
tail_convention: two-tailed
derivation: |z| ranges from 0.0275/0.0255 = 1.078 to 0.0285/0.0245 = 1.163; two-tailed p = 2(1 − Φ(|z|))
derived_value_or_range: p between 0.2447 and 0.2809
comparison_rule: consistent if the reported rounding interval [0.2645, 0.2655) lies within the derived range
status: consistent

### AR5
procedure_id: p_from_test_statistic
evidence_anchor: text: §5.5 "yields 0.059 on log MTB (p = 0.010)" with Table 3 row R5 "0.059*** (0.023)"
reported_inputs: estimate 0.059; SE 0.023; reported p = 0.010; test family z
assumptions: normal-approximation two-sided p from bootstrap SE as stated in §4.3; three-decimal rounding
tail_convention: two-tailed
derivation: |z| ranges from 0.0585/0.0235 = 2.489 to 0.0595/0.0225 = 2.644; two-tailed p = 2(1 − Φ(|z|))
derived_value_or_range: p between 0.0082 and 0.0128
comparison_rule: consistent if the reported rounding interval [0.0095, 0.0105) lies within the derived range
status: consistent

### AR6
procedure_id: p_from_test_statistic
evidence_anchor: table: Table 2 row ln(market cap), ATT −0.055, SE 0.030, Holm-adjusted p 0.134
reported_inputs: estimate −0.055; SE 0.030; reported Holm-adjusted p = 0.134; test family z
assumptions: p is Holm-adjusted across three secondary outcomes (§4.3); the unadjusted p is not printed
tail_convention: two-tailed
derivation: a Holm-adjusted p depends on the ordering of all three unadjusted p-values and is outside the bounded procedure
derived_value_or_range: not derived
comparison_rule: not applied
status: not_computable
not_computable_reason: nonstandard_p_procedure

### AR7
procedure_id: p_from_test_statistic
evidence_anchor: table: Table 2 row ln(MTB), Pre-trend p 0.074
reported_inputs: reported p = 0.074; test family chi-square with 4 df (Eq. 8); Wald statistic not printed in the manuscript
assumptions: chi-square upper tail by family; no statistic value reported
tail_convention: upper-tail
derivation: cannot be performed without the reported Wald statistic
derived_value_or_range: not derived
comparison_rule: not applied
status: not_computable
not_computable_reason: missing_reported_value
