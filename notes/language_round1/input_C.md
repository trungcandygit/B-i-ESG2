# 4. Methods

## 4.1. Target parameter and identification

We follow the notation of Callaway and Sant'Anna (2021). Let *G*~i~ denote the first year in which firm *i* has an LSEG ESG score, with *G*~i~ = ∞ for firms never scored, and let *Y*~i,t~(*g*) denote the potential outcome of firm *i* in year *t* if it were first scored in year *g*. The group-time average treatment effect on the treated is

$$latex \mathrm{ATT}(g,t)=\mathbb{E}\left[Y_{i,t}(g)-Y_{i,t}(\infty)\mid G_i=g\right] | (1)

the average effect in year *t* of first coverage in year *g* among firms first scored in year *g* (Callaway & Sant'Anna, 2021). We identify it under conditional parallel trends relative to the year before coverage:

$$latex \mathbb{E}\left[Y_{i,t}(\infty)-Y_{i,g-1}(\infty)\mid X_i,G_i=g\right]=\mathbb{E}\left[Y_{i,t}(\infty)-Y_{i,g-1}(\infty)\mid X_i,G_i=\infty\right] | (2)

where *X*~i~ contains country indicators, industry indicators, and log total assets and its square, all measured in year *g* − 1. Assumption (2) states that, given the covariates, scored firms' outcomes would have changed from year *g* − 1 to year *t* as those of never-scored firms did; it concerns changes, so the size differences in Table 1 do not violate it by themselves. It is violated when scored firms were on a different path before coverage, as would happen if coverage followed a period of growth of the kind that precedes index additions (Chen et al., 2004). We test this implication with the pre-coverage estimates, and we do not rely on the test alone, because pre-trend tests can have low power and conditioning on them can distort inference (Roth, 2022).

## 4.2. Estimation

For each cohort *g* and each year *t*, we form the long difference ΔY~i,t~ = Y~i,t~ − Y~i,g−1~ and estimate an outcome regression among never-scored firms (Sant'Anna & Zhao, 2020):

$$latex \Delta Y_{i,t}=X_i'\beta_{g,t}+u_{i,t},\qquad G_i=\infty | (3)

This is the outcome-regression version of the group-time estimator of Callaway and Sant'Anna (2021); the doubly robust version of Sant'Anna and Zhao (2020) adds a propensity-score model, which we do not use because scored and never-scored firms overlap poorly in size: {{pct_scored_above_p95}} percent of scored firms are larger in the base year than the 95th percentile of never-scored firms in the same year. Poor overlap also means that the outcome regression extrapolates for the largest scored firms, and the robustness check R4 trims control firms only from below. The fitted values from Eq. (3) give the counterfactual change for each scored firm, and the estimated group-time effect is

$$latex \widehat{\mathrm{ATT}}(g,t)=\frac{1}{N_{g,t}}\sum_{i:\,G_i=g}\left(\Delta Y_{i,t}-X_i'\hat{\beta}_{g,t}\right) | (4)

where *N*~g,t~ is the number of firms first scored in year *g* with data in years *g* − 1 and *t*. Following the aggregation scheme of Callaway and Sant'Anna (2021), we average the group-time effects by years since coverage, *e* = *t* − *g*, weighting each cohort by its number of scored firms:

$$latex \hat{\theta}(e)=\sum_{g}\frac{N_{g,g+e}}{\sum_{h}N_{h,h+e}}\,\widehat{\mathrm{ATT}}(g,g+e) | (5)

The headline estimate averages all group-time effects from the year of the first score to three years later, again weighting each cell by its number of scored firms, a variant of the simple aggregation in Callaway and Sant'Anna (2021):

$$latex \hat{\theta}_{\mathrm{post}}=\frac{\sum_{(g,t):\,0\le t-g\le 3}N_{g,t}\,\widehat{\mathrm{ATT}}(g,t)}{\sum_{(g,t):\,0\le t-g\le 3}N_{g,t}} | (6)

Cohorts first scored in 2022 or later are not observed for all four post-coverage years, so the composition of cohorts changes across event years, a problem that Callaway and Sant'Anna (2021) and Baker et al. (2022) discuss for event-study aggregations. We therefore also report estimates restricted to cohorts first scored no later than 2021, which are observed through event year three.

Three design choices deserve comment. First, the baseline control group contains only firms that are never scored, one of the two comparison groups proposed by Callaway and Sant'Anna (2021). Firms scored later are likely to be growing toward the provider's universe themselves, so we add them to the controls only as a robustness check. Second, all comparisons use the year before coverage as the base year, including those for the years before coverage, so that pre-coverage and post-coverage estimates are measured against the same reference point, as the pre-trend analysis of Roth (2022) presumes. A negative pre-coverage estimate θ̂(*e*), *e* ≤ −2, therefore means that scored firms grew faster than comparable never-scored firms from year *g* + *e* to year *g* − 1. Third, the covariates are measured in the base year, at the end of any run-up. Because the provider's scores rise with firm size (Dobrick et al., 2023), size is the covariate most closely related to selection into coverage. Conditioning on size at the end of a period of growth compares scored firms with never-scored firms that reached a similar size, which can absorb part of the run-up into the covariates. We therefore report estimates without covariates and estimates that condition explicitly on growth before the base year.

## 4.3. Inference

Inference uses a bootstrap, as recommended by Callaway and Sant'Anna (2021) for aggregated group-time effects. We resample firms with replacement, keeping each firm's time series intact, and use the same {{B_BOOT}} draws, with a fixed seed, for every specification, so that differences between specifications have a valid joint distribution. We report the bootstrap standard error, the percentile 95% confidence interval, and a two-sided *p*-value from the normal approximation. The minimum detectable effect at 80% power and a 5% two-sided test is

$$latex \mathrm{MDE}=(z_{0.975}+z_{0.80})\,\widehat{\mathrm{SE}}\approx 2.8\,\widehat{\mathrm{SE}} | (7)

We test the primary outcome at the 5% level and adjust the three secondary outcomes with the Holm method. The confidence intervals are not adjusted for multiple testing, whereas the *p*-values of the secondary outcomes are Holm-adjusted, so an interval that excludes zero can accompany an adjusted *p*-value above 5%, as for total assets in Table 2. The joint test of parallel pre-trends uses the event-time estimates for *e* = −5 to −2 and their bootstrap covariance matrix; following Roth (2022), we report it as a diagnostic and do not condition the analysis on its outcome:

$$latex W=\hat{\theta}_{\mathrm{pre}}'\,\hat{V}_{\mathrm{pre}}^{-1}\,\hat{\theta}_{\mathrm{pre}}\ \sim\ \chi^2_{4} | (8)

Coverage arrived in market-level waves, so shocks common to a market and year can affect many scored firms at once. The country indicators in Eq. (3) absorb market-wide changes between years *g* − 1 and *t* within each cell, and we report leave-one-market-out estimates. With five markets, a bootstrap that resamples markets would rest on too few clusters to be reliable, and we do not use one. The firm-level bootstrap treats firms as independent draws and does not account for correlation within market-level coverage waves, so the confidence intervals and pre-trend *p*-values may be too narrow. Market-level differences in disclosure rules (Krueger et al., 2024; Singapore Exchange, 2016) are one reason why common shocks within a market are plausible.

## 4.4. Sensitivity to departures from parallel trends

Because the pre-coverage estimates cast doubt on Eq. (2), and because a pre-trend test that fails to reject is weak evidence for parallel trends (Roth, 2022), we add two exploratory checks that the pre-analysis plan did not contain. The first removes a linear trend fitted to the pre-coverage event-time estimates, with the line constrained to pass through zero in the base year:

$$latex \hat{b}=\frac{\sum_{e=-5}^{-1}(e+1)\,\hat{\theta}(e)}{\sum_{e=-5}^{-1}(e+1)^{2}},\qquad \tilde{\theta}(e)=\hat{\theta}(e)-\hat{b}\,(e+1) | (9)

The trend-adjusted headline estimate averages θ̃(*e*) over *e* = 0 to 3 with the weights of Eq. (6). The second check bounds the bias from departures from parallel trends in the spirit of the relative-magnitudes restriction of Rambachan and Roth (2023). Let δ(*e*) denote the post-coverage violation of Eq. (2). We assume that it changes from one year to the next by no more than M̄ times the largest change between consecutive pre-coverage estimates:

$$latex \left|\delta(e)-\delta(e-1)\right|\le \bar{M}\,\max_{s\le -1}\left|\hat{\theta}(s)-\hat{\theta}(s-1)\right|\equiv \bar{M}\,\Delta,\qquad \delta(-1)=0 | (10)

Under Eq. (10), the bias of the event-year estimate is at most M̄Δ(*e* + 1), and we widen the bootstrap confidence interval of the headline estimate by the weighted average of this bound. This construction is conservative and simpler than the confidence sets of Rambachan and Roth (2023), which we do not compute. We also estimate each model after adding the growth of log market capitalization from year *g* − 3 to year *g* − 1 to *X*~i~, which compares scored firms with never-scored firms that grew at a similar rate before coverage.

## 4.5. Benchmark regression and robustness checks

To show how a conventional design reads the same data, we estimate the static two-way fixed effects regression that Goodman-Bacon (2021) and Baker et al. (2022) analyze, on scored and never-scored firms:

$$latex Y_{i,t}=\alpha_i+\lambda_t+\beta\,D_{i,t}+\varepsilon_{i,t},\qquad D_{i,t}=\mathbf{1}\left[t\ge G_i\right] | (11)

with firm effects α~i~ and year effects λ~t~, no covariates, all event years, and standard errors clustered by firm. The coefficient β compares all post-coverage years with all pre-coverage years and averages over any run-up before coverage; with staggered timing it also uses already-scored firms as controls for later cohorts, which biases β when effects change over time (Baker et al., 2022; Goodman-Bacon, 2021).

The pre-analysis plan fixed rows R1 to R6 of Table 3: four robustness checks, a placebo, and the benchmark regression of Eq. (11). The checks add not-yet-scored firms to the controls, which is the alternative comparison group of Callaway and Sant'Anna (2021); drop the covariates; exclude the 2020 and 2021 cohorts; and keep only control firms whose log total assets in year *g* − 1 are at or above the 10th percentile of the scored firms in the cohort (a lower bound only). The placebo dates coverage three years before the first score and uses only years before the actual score. Besides the checks in Section 4.4, we added four exploratory analyses: dating coverage one year later, with its own pre-trend test and bounds; restricting the sample to cohorts observed through event year three; excluding one market at a time; and estimating the model separately for each market.

## 4.6. Use of generative AI

The authors used Claude (Anthropic), accessed through Claude Code in September 2026, to screen candidate research questions, draft the pre-analysis plan, write and debug the R code, draft and edit the text, and search for and check references. Five instances of the tool, each in a separate context, also produced simulated referee reports that informed the revision. The authors reviewed and approved the research question and the pre-analysis plan before any estimation, reviewed every output of the tool, checked each reported number against the R output files, and take full responsibility for the content.
