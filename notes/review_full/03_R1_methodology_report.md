# Reviewer 1 (Methodology) — Phase 2 report

**Summary of design.** Group-time ATTs with outcome-regression adjustment (country, industry, quadratic in log
assets at g−1), never-scored controls, universal base g−1, firm-cluster bootstrap (B = 999), event window −5..4,
headline average over e = 0..3.

**Strengths.** Correct estimator for staggered timing; transparent code; cell-level validation against lm() and a
simulation (notes/05_integrity_stage2_5.md) is reassuring; inference respects within-firm dependence; MDE reported.

**Weaknesses.**
- R1-W1 [D1, warn] Pre-trends. Pre-coverage coefficients for ln(mcap) (−0.132, −0.125 at e = −5, −4; Wald p =
  0.022) and the failing placebo (R5) mean conditional parallel trends from g−1 is doubtful. The paper says so, but
  offers no sensitivity analysis. Fix: report trend-robust estimates, e.g., extrapolate a linear pre-trend fitted to
  e = −5..−1 and re-center post effects (with bootstrap inference using the same draws), and/or relative-magnitude
  bounds in the spirit of Rambachan and Roth (2023). Label as exploratory deviations from the PAP.
- R1-W2 [D1, warn] Selection on pre-coverage growth. Covariates capture size but not momentum. Fix: add pre-period
  growth (Δ log market capitalization from g−3 to g−1) to the outcome regression as an exploratory check; if the
  post-coverage null survives, the "follows value" reading is strengthened.
- R1-W3 [D1, warn] Dependence across firms within country-years. Cohorts are concentrated (Malaysia 289 of the
  2021–2022 entrants). Firm-level resampling does not capture common country-year shocks beyond the country
  dummies in each 2×2 cell. Fix: leave-one-market-out estimates (at least excluding Malaysia) to show that no single
  market drives the result.
- R1-W4 [D1, minor] Timing of treatment. The first fiscal year with a score may not equal the date the score became
  public, particularly if the vendor backfills history. State this and discuss the direction of bias.
- R1-W5 [D3, pass] Interpretation in Section 4.1 is appropriately cautious: two readings of the null are given.

| Dimension | Judgement |
|---|---|
| D1 methodology_rigor | warn |
| D3 argumentative_coherence (eligible) | pass |
