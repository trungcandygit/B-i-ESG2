# R1 Methodology Review (Phase 2, paper-visible)

Seat: R1, applied econometrician (staggered DiD, event studies, Callaway–Sant'Anna, Sun–Abraham, honest-DiD sensitivity). Contract reviewer/reviewer_full/v2. Inputs read: manuscript_for_review.md, Fig1.png, the R code in project_R/R/ (00–03) and the CSV outputs in project_R/outputs/ (read-only). Calibration status: `NOT_CALIBRATED`. Criteria binding: unavailable, so this card makes no venue-alignment claim.

contract_role: methodology

## Dimension Scores

### D1: methodology_rigor
score: block
block_class: repairable
trigger: "treatment timing that is mis-dated or endogenously defined relative to the outcome"

Basis: the paper's own diagnostics show that treatment is selected on the outcome (joint pre-trend p = 0.022 for log market capitalization; placebo R5 significant). Event year 0 is the first fiscal year that has a score, not the year the score was published. The post-coverage "no effect" estimand is reported only under exact parallel trends, with no Rambachan–Roth bounds (W1, W2, W5, W6). Each defect can be repaired with the existing data plus provider release dates, so the class is repairable, not fatal. The design can still describe the ordering of events, and the code does reproduce every reported number.

### D2: domain_accuracy
score: not_assessed

### D3: argumentative_coherence
score: warn
trigger: "alternative explanations for the pattern are acknowledged incompletely"

Basis: the interpretation section offers two counterfactuals, and both point to a non-positive effect. It leaves out the mean-reversion counterfactual, under which the effect would be positive (W3). The abstract and title support "before" with one outcome and "not after" with another (W4), and the MDE and CI statements contradict each other (W8). A rewrite and the added sensitivity analysis would fix these problems without giving up the finding on the ordering of events, so this stops short of block.

### D4: cross_disciplinary_relevance
score: not_assessed

### D5: writing_and_structure
score: not_assessed

### D6: venue_fit_and_contribution
score: not_assessed

## Review Body

### Summary of the design

The paper defines treatment as the first fiscal year in which a firm has a non-missing LSEG ESG score. It covers 675 non-financial firms first scored in 2015–2024 and uses 2,613 never-scored firms from five ASEAN markets over 2014–2024 as controls. It estimates Callaway–Sant'Anna group-time ATTs with a universal base period g − 1 and never-treated controls. Covariates enter through an outcome regression: country and industry indicators plus a quadratic in log total assets at g − 1. Inference uses a firm-level nonparametric bootstrap with 999 draws. The primary outcome is log MTB. The three secondary outcomes (log market cap, book leverage, log assets) are Holm-adjusted. The headline is the post-period average over e = 0..3: 0.002 (SE 0.024) for log MTB. The pre-period coefficients for log market cap are negative and trend toward zero (−0.132 at e = −5; joint p = 0.022). The paper reads this as coverage following value growth. Six pre-registered checks (R1–R6) and three post-review exploratory checks (R7–R9) follow. I read project_R/R/02_cs_did.R and 03_estimate.R. The implementation matches this description in its essentials, with the exceptions listed below, and every number I checked in the text and Tables 2, 3 and IA1 matches project_R/outputs/*.csv after rounding.

Seat-level recommendation signal (non-binding; the synthesizer decides): **Major Revision**. Confidence 4 of 5, based on direct expertise in staggered DiD and pre-trend sensitivity. I have less expertise in how LSEG publishes and backfills scores.

### Strengths

### S1: A heterogeneity-robust estimator with a universal base period
The authors use the Callaway–Sant'Anna estimator rather than TWFE, and all pre- and post-period coefficients are long differences against g − 1. This is the right choice for event-study plots whose pre-period shape carries economic content, and the code implements it exactly (`base <- g - 1` for all t).
Evidence Anchor: text: §1 "which avoids the biases of two-way fixed effects regressions when treatment timing varies and effects are heterogeneous"

### S2: Complete uncertainty reporting for the headline table
Table 2 reports, for every outcome, the ATT, bootstrap SE, percentile CI, p-value, MDE, joint pre-trend p, and the numbers of treated and control firms. The Holm adjustment matches the code: unadjusted p = 0.0177, 0.0669 and 0.0848 map to 0.053, 0.134 and 0.134.
Evidence Anchor: table: Table 2, all columns

### S3: The paper reports diagnostics that cut against its original hypothesis
The failed placebo, the gap between the TWFE and CS estimates, and the sensitivity of the market cap estimate to excluding Malaysia are all reported and discussed. The checks added after review are labelled exploratory.
Evidence Anchor: text: §3.3 "The placebo fails, and it fails in the direction that Figure 1 predicts"

### S4: Shared bootstrap draws and validation in the code
A single weight matrix (`WBOOT`) is used for every specification, so the high-minus-low contrast and the trend adjustment have a valid joint distribution. validation.csv records that hand-computed lm() estimates match the pipeline's ATT(g,t) to about 1e−11, and it includes three synthetic recovery checks.
Evidence Anchor: dataset: project_R/outputs/validation.csv

### Weaknesses

### W1: Event year 0 is dated by fiscal-year data coverage, not by the date a score became public
The treatment year is "the first fiscal year with a non-missing LSEG ESG score". LSEG scores are indexed to a firm's fiscal year and can only be produced after that year's disclosures are available, so a score for fiscal year g is normally released during g + 1 or later. On top of that lag, the paper itself cites evidence of large-scale historical rewriting and backfilling. Two consequences follow.

First, e = 0 is very likely a pre-publication year for most firms. It carries 31.6% of the headline weight (615 of 1,946 treated-cell units for ln MTB in att_gt.csv), and e = 1 may be pre-publication as well. The headline therefore averages mostly years before the market could have reacted.

Second, "flat after the base year" does not mean "flat after publication". The pre-period run-up ends at exactly g − 1, the year before the first scored fiscal year. That pattern fits a provider that selects firms on fiscal-year g − 1 market size, which is selection on the outcome.

The authors' argument that backfilling cannot create the pre-trend is correct, but it does not address the lag between the fiscal year and publication.

Fix:
- Obtain first-release dates, for example from provider release or update timestamps or from archived data vintages, and re-date the treatment.
- At minimum, report the full analysis with treatment shifted to g + 1 and g + 2, and report e = 1..3 without e = 0.
- Measure MTB at a fixed calendar date rather than at each firm's fiscal year-end, because fiscal year-ends differ across these markets.
- Consider a monthly or event-window return analysis around the first release.

**Severity**: Major
**Evidence Anchor**: text: §2.1 "The treatment year is the first year for which the downloaded data contain a score"
**Confidence**: 4 (standard event-dating logic; moderate certainty about LSEG release practice)

### W2: The paper reports no sensitivity to parallel-trend violations, even though its own pre-trends reject parallel trends
The headline CI (−4.5% to +4.9%) and the claim that valuations do not change after the first score both hold only under exact parallel trends from g − 1. The paper's own evidence argues against that assumption:
- the joint pre-trend test for log market cap gives p = 0.022;
- the individual ln MTB coefficients at e = −5 and −4 each have p ≈ 0.015 (event_study.csv);
- placebo R5 is significant.

The only sensitivity analysis is R7, a linear extrapolation. That is the M = 0 case of the Rambachan–Roth smoothness class, a point-identified special case. Under R7, the MTB CI (−0.118 to 0.014) excludes positive effects above about 1.4%, which already contradicts the headline interval. A back-of-envelope version of the relative-magnitudes restriction shows how much depends on the assumption. It is illustrative arithmetic on the reported point estimates, not a substitute for the procedure:
- the largest adjacent pre-period change in ln MTB is 0.046 (from −0.082 at e = −4 to −0.036 at e = −3);
- with M̄ = 1, cumulative post-period deviations of up to 0.046, 0.091, 0.137 and 0.182 at e = 0..3 are admissible;
- weighted by the headline cell weights, that bias bound is roughly ±0.10 log points before any sampling error.

On this arithmetic the identified set is more than four times wider than the reported CI and includes economically large positive and negative effects.

Fix:
- Report HonestDiD confidence sets for ln MTB and ln market cap under both Δ^SD (a grid of M) and Δ^RM (a grid of M̄). The bootstrap draws in `res$draws` supply the needed variance matrix.
- Report the breakdown M̄ at which the paper's claims fail: "no positive effect" and "the CI excludes ±5%".
- State the headline conditional on this sensitivity analysis.

**Severity**: Major
**Evidence Anchor**: text: §4.2 "we do not report the full sensitivity bounds of Rambachan and Roth (2023)"
**Confidence**: 5 (core area of expertise)

### W3: The interpretation leaves out the mean-reversion counterfactual, which implies a positive effect
Section 4.1 considers two counterfactuals: parallel paths, which imply a null, and a continued linear run-up, which implies a negative effect. From these it concludes that neither reading supports a positive effect. The paper's own selection story (the provider adds firms that "have become large or liquid enough", like an index addition) points to a third counterfactual: selection on a transitory high, followed by mean reversion. This is the Ashenfelter-dip logic in reverse. Under it, the untreated path after g − 1 would have declined, and the flat observed path would imply a positive coverage effect.

The data do not rule this out:
- conditioning on pre-coverage growth (R8) moves the ln MTB estimate up to 0.028;
- excluding Malaysia turns the market cap estimate to +0.037;
- the market cap coefficient at e = 4 is +0.088 (event_study.csv).

The conclusion that the first score does not raise value is therefore stronger than the design allows. What is identified is "no detectable change under parallel trends; a wide identified set under plausible violations."

Fix:
- Add the third reading, with its sign, to §4.1.
- Build a mean-reversion benchmark: estimate how never-scored firms with comparable g − 5 to g − 1 run-ups evolve after g − 1. Extend R8 to condition on the full pre-trajectory, noting the regression-to-the-mean risk of matching on pre-trends (Daw and Hatfield, 2018, Health Services Research).
- Reframe the "not after" half of the title and abstract to match the evidence.

**Severity**: Major
**Evidence Anchor**: text: §4.1 "Neither reading supports the prediction that a first rating raises firm value."
**Confidence**: 4 (standard selection-on-transitory-shock argument; its empirical weight is unknown)

### W4: The headline claim uses different outcomes for "before" and "after"
The abstract and title set a pre-period result for **market capitalization** (+14.1%) against a post-period result for **MTB** (0.002).

For the primary outcome, MTB, the "before" half is not established at the paper's own 5% level: the joint pre-trend test gives p = 0.074 (Table 2).

For market cap, the "after" half is not flat:
- the post average is −0.055 (unadjusted p = 0.067);
- the e = 1 coefficient is −0.072 with a CI that excludes zero (Fig. 1; event_study.csv p = 0.029);
- the trend-adjusted estimate is −0.134 (p = 0.001).

The symmetric summary is: market cap grew faster before coverage and, if anything, more slowly after it; MTB shows a weaker pre-trend and no post-period change.

In addition:
- "Over the five years before their first score" describes the e = −5 coefficient, which is a four-year change from e = −5 to the base year e = −1.
- The ordering of events was not a pre-registered hypothesis (§2.3 lists the pre-registered items), yet it has become the title claim. The paper should say that it is a finding that emerged during estimation.

Fix:
- Report both outcomes for both periods in the abstract, with the same test standard.
- Correct "five years" to "four years".
- Label the ordering-of-events claim as not pre-registered.

**Severity**: Major
**Evidence Anchor**: text: Abstract "Rated firms' market capitalization grew 14.1 percent faster than that of comparable firms over the five years before their first score."
**Confidence**: 5 (verified against Table 2, Fig. 1 and event_study.csv)

### W5: Cohort composition changes across event time, and the aggregation weights are not what the text describes
From att_gt.csv (ln MTB):
- e = −5 comes only from the 2019–2024 cohorts; 316 of its 497 treated units come from the 2021–2022 cohorts, which are Malaysia-heavy.
- e = 3 comes only from the 2015–2021 cohorts.
- The 2022–2024 cohorts (382 of 675 treated firms, 57%) never contribute to e = 3.

The pre-period run-up and the post-period flat path are therefore estimated on partly different firms and calendar years. Within that, the Malaysian 2021–22 pre-periods cover 2016–2021, which includes the 2020 shock. Country and industry indicators enter additively, so country × industry × year shocks are not absorbed.

The weighting also differs from the description. The text says the effects are averaged by event time with cohort weights. The code (`aggregate_cells`) instead pools all (g,t) cells with e = 0..3, weighted by the number of treated firms in each cell. The implied event-time weights are 31.6%, 29.7%, 24.8% and 13.9%, which downweight the longest horizon. The longer MTB horizons are negative (e = 3: −0.044; e = 4: −0.077), so the headline leans on the shortest, most pre-publication-exposed horizons (see W1).

Fix:
- State the aggregation formula explicitly.
- Report the equal-weighted dynamic aggregation.
- Report a version balanced in event time, using only cohorts observed for all of e = −4..3 (the analogue of `balance_e` in the did package).
- Report event studies separately for Malaysia 2021–22 and for the remaining cohorts.
- Add country × industry interactions to the outcome regression.

**Severity**: Major
**Evidence Anchor**: dataset: project_R/outputs/att_gt.csv, ln_mtb rows, n_treated summed by e and g
**Confidence**: 5 (computed directly from the output file)

### W6: Firm-level resampling ignores that treatment arrives in market-level waves
Treatment arrives in market-specific waves: 289 Malaysian firms in 2021–22, and 108 Thai and Singaporean firms in 2019–20. Outcome shocks are plausibly correlated within country × industry × year beyond what additive country and industry indicators remove. Resampling individual firms treats the 675 treated firms as independent draws of treatment timing. The joint pre-trend p-values that carry the "before" claim (0.022 and 0.074) are the quantities most exposed to this problem. The paper also does not report how many independent timing clusters (market × cohort) identify the estimates.

Fix:
- Report the number of market × cohort cells.
- Re-run inference with a cluster bootstrap at the country × industry level or the country × cohort level. Five countries are too few for country-level clustering, so any country-level version should be a wild-cluster bootstrap reported only as sensitivity.
- Add randomization inference that permutes first-score years among scored firms within a country.

**Severity**: Major
**Evidence Anchor**: text: §2.3 "Inference uses a bootstrap that resamples firms with replacement (999 replications, fixed seed), which keeps each firm's time series intact."
**Confidence**: 4 (standard design-based inference concern; the size of the effect is unknown)

### W7: The TWFE comparison conflates the estimator with covariates and the event window
`run_twfe` estimates `plm(yv ~ D, effect = "twoways")` with no covariates, over all event times, on the unbalanced panel. The CS baseline uses covariates and an event window of −5..4. The gap between 0.064 and 0.002 therefore mixes three things: the estimator, covariate adjustment, and window length. The relevant CS comparison without covariates (R2) is 0.025. The TWFE bias here mainly reflects pre-trend contamination of the post-versus-pre contrast, not the forbidden-comparison bias described by Goodman-Bacon and by Baker et al., which the text cites. The TWFE specification (fixed effects, sample, covariates) is not described anywhere in the manuscript.

Fix:
- Describe the TWFE specification.
- Add a TWFE with the same covariates interacted with year and the same window.
- Attribute the gap correctly.

**Severity**: Minor
**Evidence Anchor**: text: §3.3 "Row R6 shows why the choice of estimator matters."
**Confidence**: 5 (read the code)

### W8: The MDE statement contradicts the CI statement
The Introduction and §4.1 say the CI excludes changes outside −4.5% to +4.9%. The final limitation says the design "cannot rule out valuation effects smaller than about 7.0 percent." After estimation the CI is what governs. The MDE is an ex-ante power quantity and does not define which effects are ruled out. Both statements also ignore W2.

Fix: drop the MDE-as-bound sentence and, if an absence claim is wanted, report an equivalence test (TOST) against a pre-stated margin, both under parallel trends and under the HonestDiD sets.

**Severity**: Minor
**Evidence Anchor**: text: §4.2 "the design cannot rule out valuation effects smaller than about 7.0 percent"
**Confidence**: 5

### W9: The placebo re-expresses the pre-trend rather than testing anything new
R5 moves treatment to g − 3 and keeps only the years before true treatment. Its "post" cells are therefore differences between pre-period years relative to g − 4, the same information as the event-study leads. Its failure adds no evidence independent of Fig. 1.

Fix: say so, or replace it with an informative falsification test, such as pseudo-coverage years assigned to never-scored firms with size trajectories matched to the scored firms.

**Severity**: Minor
**Evidence Anchor**: table: Table 3, row R5
**Confidence**: 5 (read the `placebo` branch of `build_cells`)

### W10: Observation counts, attrition and survivorship are not reported
The figure of 36,168 firm-years is the rectangular grid of 3,288 firms × 11 years (sample_flow.csv). Usable observations are far fewer; the TWFE for ln MTB uses 27,188. Each ATT(g,t) cell requires the outcome at both g − 1 and t. Treated firms must by construction survive until g, while never-scored firms may delist. The code sets MTB ≤ 0, that is negative book equity, to missing before taking logs, which silently drops distressed firms. None of this attrition is reported by event time or by group.

Fix:
- Report non-missing observations for each outcome.
- Report treated and control counts by e.
- Describe delisting and how it is handled.
- Show robustness on a sample balanced over e = −4..3.

**Severity**: Minor
**Evidence Anchor**: text: §2.1 "The estimation sample has 3,288 firms and 36,168 firm-years"
**Confidence**: 5 (verified in sample_flow.csv, twfe_static.csv, 01_data.R)

### W11: R4 is described as "size range" but only a lower bound is applied
In the code, `support = TRUE` keeps controls with log assets at or above the 10th percentile of the treated cohort, with no upper bound. The text says controls are restricted "to the size range of scored firms". This matters because R4 is the specification that moves the asset effect to 0.101.

Fix: align the text with the code, or add the upper bound, and report both.

**Severity**: Minor
**Evidence Anchor**: dataset: project_R/R/02_cs_did.R, build_cells(), `support` filter on lnA_b
**Confidence**: 5

### W12: No data/code availability statement and no verifiable pre-analysis plan
The paper says it registered its hypotheses, sample rules, estimator and robustness checks before estimation, and it relies on that claim to separate confirmatory from exploratory results. However, the manuscript gives no registry identifier, no timestamp and no appendix copy of the plan. It also has no data or code availability statement, and it does not say how a replicator with LSEG and Compustat access could rebuild the sample (firm identifiers, extraction date, and treatment of score revisions). §2.1 also says the underlying data set is shared with a companion paper, which makes a verifiable pre-analysis plan more important.

Fix: cite the registration (ID and date), attach the plan, and add a data and code availability statement listing identifiers, download vintages and the replication package.

**Severity**: Minor
**Evidence Anchor**: absence: manuscript_for_review.md — expected pre-analysis-plan registry identifier and data/code availability statement; checked Abstract, §1, §2.1–2.4, §4.2, References, exhibit notes
**Confidence**: 5

### W13: Data errors are winsorized rather than corrected, and winsorization is pooled
Winsorization at the 1st and 99th percentiles is applied to the pooled sample of five markets and eleven years, in USD levels, before taking logs. Known erroneous market cap values are left in the data. In changes-based estimators, a single bad value at g − 1 contaminates every cell for that cohort.

Fix: identify and correct or drop the implausible values, winsorize within country-year, and show that the results do not change.

**Severity**: Minor
**Evidence Anchor**: text: §4.2 "a small number of market capitalization values in the source data are implausibly large"
**Confidence**: 4

### W14: Significance stars follow different conventions across tables
The same baseline asset estimate appears as 0.044* in Table 2, where stars follow the Holm-adjusted p, and as 0.044** in Table 3, where stars follow the unadjusted p. The Table 2 note does not say which p the stars use. p-values are also computed from a normal approximation using the bootstrap SE (`2*pnorm(-|est/se|)`), while the CIs are bootstrap percentile intervals. The joint pre-trend test is a Wald statistic using the bootstrap covariance. Neither method is stated.

Fix: use one convention throughout and document both methods.

**Severity**: Minor
**Evidence Anchor**: table: Table 2, ln(total assets) row, ATT cell
**Confidence**: 5

### Statistical reporting check (criterion-bound)

| Criterion | Source | Judgement | Evidence anchors | Rationale | Uncertainty | Decision bearing? |
|---|---|---|---|---|---|---|
| Effect sizes with CIs for headline estimates | statistical_reporting_standards.md; R1 Phase 1 D1 | MEETS | table: Table 2 | ATT, SE, 95% CI, N for all outcomes | none identified | no |
| Power / MDE | same | PARTLY_MEETS | text: §4.2 | MDE reported but misused as a post-hoc bound (W8) | none identified | no |
| Identifying assumption tested and sensitivity reported | R1 Phase 1 D1 | DOES_NOT_MEET | text: §4.2 | pre-trends rejected; no HonestDiD (W2) | back-of-envelope only | yes |
| Inference matches assignment structure | R1 Phase 1 D1 | PARTLY_MEETS | text: §2.3 | firm bootstrap with wave-level timing (W6) | size of the effect unknown | yes |
| Multiple testing | statistical_reporting_standards.md | MEETS | table: Table 2 note | Holm on secondaries, verified | stars inconsistent (W14) | no |
| Missing data / attrition | same | DOES_NOT_MEET | text: §2.1 | no attrition or observation counts by e (W10) | none identified | no |
| Selective reporting / red flags | same | MEETS | text: §2.3 | adverse results reported; exploratory checks labelled | PAP not verifiable (W12) | no |

Informal consistency checks (outside the bounded receipts below): p-values recomputed as 2Φ(−|est/SE|) from the rounded Table 2 and 3 entries agree with the reported p within rounding. Examples: 0.002/0.024 gives p ≈ 0.93, reported 0.936. 0.059/0.023 gives p ≈ 0.010, reported 0.010; att_main/robustness CSV shows 0.00987, which justifies the *** mark. The percentage conversions are also correct: exp(0.132) − 1 = 14.1%, exp(0.095) − 1 = 10.0%, exp(0.064) − 1 = 6.6%, exp(−0.046) − 1 = −4.5%, exp(0.048) − 1 = 4.9%. Every MDE equals 2.8 × SE.

### Reproducibility and text–code consistency

- The code is deterministic: fixed seed, one shared bootstrap matrix, and byte-stable output. Every reported number I sampled in the text and in Tables 2, 3 and IA1 matches the CSV outputs.
- Where the description and the implementation differ:
  - aggregation weights (W5);
  - the TWFE specification is not described (W7);
  - the R4 support rule (W11);
  - the p-value and Wald methods are not stated (W14).
- Not replicable from the manuscript alone:
  - the source-data vintage;
  - the treatment of LSEG score revisions;
  - the registration record (W12).

### Methodological fallacies checked
- **Endogeneity or reverse causation in treatment assignment:** present, and acknowledged by the authors (W1–W3).
- **Survivorship:** plausible and not quantified (W10).
- **Confirmation-leaning interpretation:** present in §4.1 (W3).
- **Simpson-type composition:** the event-time composition shifts (W5).
- **p-hacking:** no evidence found; the plan and the Holm adjustment are appropriate.

### Questions for authors
1. What share of first scores for fiscal year g were first released in calendar year g, g + 1 and g + 2?
2. How many market × cohort cells with at least 10 treated firms identify the post-period average?
3. What is the Rambachan–Roth breakdown M̄ for the claim that the ln MTB effect is below 5%?
4. Can the authors provide the pre-analysis plan and its registration timestamp?

## Arithmetic Receipts

### AR1
procedure_id: p_from_test_statistic
evidence_anchor: table: Table 2, ln(MTB) row
reported_inputs: ATT 0.002; SE 0.024; p-value 0.936; test statistic not printed; bootstrap SE (999 firm resamples)
assumptions: paper states bootstrap SE and percentile CI; it does not state the test family or tail for the p-value
tail_convention: unstated
derivation: no test statistic or family is printed and the p-value derives from a bootstrap procedure whose p-computation is not described in the manuscript, so the bounded procedure cannot be applied
derived_value_or_range: none derived
comparison_rule: not applied
status: not_computable
not_computable_reason: nonstandard_p_procedure

### AR2
procedure_id: p_from_test_statistic
evidence_anchor: table: Table 2, ln(market capitalization) row, Pre-trend p column
reported_inputs: joint pre-trend p 0.022 (market capitalization); event times -5 to -2 (Table 2 note); test statistic and df not printed; family not named
assumptions: none licensed beyond a joint test of four coefficients; statistic family and value not stated in the manuscript
tail_convention: unstated
derivation: the manuscript reports only the p-value for the joint test and neither the statistic value nor the family, so no recomputation is possible
derived_value_or_range: none derived
comparison_rule: not applied
status: not_computable
not_computable_reason: missing_reported_value

### AR3
procedure_id: p_from_test_statistic
evidence_anchor: table: Table 3, row Difference high minus low, ln(MTB) cell
reported_inputs: difference -0.041; SE 0.040; p 0.307 (text §3.3); SE from shared bootstrap draws; statistic not printed
assumptions: paper states bootstrap standard error; family and tail of the p-value not stated
tail_convention: unstated
derivation: the p-value rests on a bootstrap SE with an undescribed p-computation and no printed statistic, so the bounded procedure does not apply
derived_value_or_range: none derived
comparison_rule: not applied
status: not_computable
not_computable_reason: nonstandard_p_procedure
