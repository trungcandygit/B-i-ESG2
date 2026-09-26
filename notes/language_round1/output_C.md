# 4. Methods

## 4.1. Target parameter and identification

In the notation of Callaway and Sant'Anna (2021), let G~i~ be the first year in which firm i has an LSEG ESG score, with G~i~ = ∞ if it is never scored, and let Y~i,t~(g) be the potential outcome of firm i in year t if it were first scored in year g. The group-time average treatment effect on the treated is

$$latex \mathrm{ATT}(g,t)=\mathbb{E}\left[Y_{i,t}(g)-Y_{i,t}(\infty)\mid G_i=g\right] | (1)

the average effect in year t for firms first scored in year g. We identify it under conditional parallel trends relative to the year before coverage:

$$latex \mathbb{E}\left[Y_{i,t}(\infty)-Y_{i,g-1}(\infty)\mid X_i,G_i=g\right]=\mathbb{E}\left[Y_{i,t}(\infty)-Y_{i,g-1}(\infty)\mid X_i,G_i=\infty\right] | (2)

where X~i~ contains country and industry indicators and log total assets and its square, measured in year g − 1. Because assumption (2) concerns changes in outcomes, the size differences in Table 1 do not violate it by themselves, but pre-coverage growth of the kind that precedes index additions would (Chen et al., 2004). We test this implication with the pre-coverage estimates but do not rely on the test alone.

## 4.2. Estimation

For each cohort g and year t, we regress the long difference ΔY~i,t~ = Y~i,t~ − Y~i,g−1~ on X~i~ among never-scored firms (Sant'Anna & Zhao, 2020):

$$latex \Delta Y_{i,t}=X_i'\beta_{g,t}+u_{i,t},\qquad G_i=\infty | (3)

where β~g,t~ is the cell's coefficient vector and u~i,t~ the error. We omit the propensity-score model of the doubly robust estimator because size overlap is poor: {{pct_scored_above_p95}} percent of scored firms are larger in the base year than the 95th percentile of never-scored firms. For the largest scored firms the outcome regression therefore extrapolates, and check R4 trims controls only from below. The estimated group-time effect is

$$latex \widehat{\mathrm{ATT}}(g,t)=\frac{1}{N_{g,t}}\sum_{i:\,G_i=g}\left(\Delta Y_{i,t}-X_i'\hat{\beta}_{g,t}\right) | (4)

where N~g,t~ is the number of firms first scored in year g with data in years g − 1 and t, and β̂~g,t~ is estimated from Eq. (3). We average by years since coverage, e = t − g, weighting cohorts by their number of scored firms (Callaway & Sant'Anna, 2021):

$$latex \hat{\theta}(e)=\sum_{g}\frac{N_{g,g+e}}{\sum_{h}N_{h,h+e}}\,\widehat{\mathrm{ATT}}(g,g+e) | (5)

where h indexes cohorts. The headline estimate averages all cells from the first scored year to three years later with the same weights:

$$latex \hat{\theta}_{\mathrm{post}}=\frac{\sum_{(g,t):\,0\le t-g\le 3}N_{g,t}\,\widehat{\mathrm{ATT}}(g,t)}{\sum_{(g,t):\,0\le t-g\le 3}N_{g,t}} | (6)

Cohorts first scored after 2021 are not observed for all four post-coverage years, so cohort composition changes across event years; we therefore also report estimates for the cohorts observed through event year three.

Three design choices need comment. First, the baseline controls are never-scored firms; later-scored firms, which may also be growing toward the provider's universe, join them only in check R1. Second, all comparisons, including pre-coverage ones, use year g − 1 as the base year, so a negative estimate θ̂(e) for e ≤ −2 means that scored firms grew faster than comparable never-scored firms from year g + e to year g − 1. Third, the covariates are measured at the end of any run-up. Because the provider's scores rise with firm size (Dobrick et al., 2023), conditioning on base-year size matches scored firms to never-scored firms of similar size and can absorb part of the run-up, so we also report estimates without covariates and estimates that condition on pre-coverage growth.

## 4.3. Inference

Following Callaway and Sant'Anna (2021), we bootstrap the aggregated effects by resampling firms with their full time series. All specifications share the same {{B_BOOT}} draws and fixed seed, so differences between specifications have a valid joint distribution. We report the bootstrap standard error, the percentile 95% confidence interval, and a normal-approximation two-sided p-value. The minimum detectable effect (MDE) at 80% power in a two-sided 5% test is

$$latex \mathrm{MDE}=(z_{0.975}+z_{0.80})\,\widehat{\mathrm{SE}}\approx 2.8\,\widehat{\mathrm{SE}} | (7)

where z~0.975~ and z~0.80~ are standard normal quantiles and the hatted SE is the bootstrap standard error. We test the primary outcome at the 5% level and Holm-adjust the p-values of the three secondary outcomes but not the confidence intervals, so an interval that excludes zero can accompany an adjusted p-value above 5%, as for total assets in Table 2. The joint test of parallel pre-trends is

$$latex W=\hat{\theta}_{\mathrm{pre}}'\,\hat{V}_{\mathrm{pre}}^{-1}\,\hat{\theta}_{\mathrm{pre}}\ \sim\ \chi^2_{4} | (8)

where θ̂~pre~ stacks the estimates for e = −5 to −2 and V̂~pre~ is their bootstrap covariance matrix. Because pre-trend tests can have low power and conditioning on them can distort inference (Roth, 2022), we report W as a diagnostic and do not condition the analysis on it.

Coverage arrived in market-level waves, so a market-year shock can affect many scored firms at once. The country indicators in Eq. (3) absorb market-wide changes within each cell, and we report leave-one-market-out estimates; five markets are too few clusters for a reliable market-level bootstrap. The firm-level bootstrap does not account for correlation within market-level coverage waves, so the confidence intervals and pre-trend p-values may be too narrow.

## 4.4. Sensitivity to departures from parallel trends

Because the pre-coverage estimates cast doubt on Eq. (2), we add two exploratory checks that the pre-analysis plan did not contain. The first removes a linear pre-coverage trend that passes through zero in the base year:

$$latex \hat{b}=\frac{\sum_{e=-5}^{-1}(e+1)\,\hat{\theta}(e)}{\sum_{e=-5}^{-1}(e+1)^{2}},\qquad \tilde{\theta}(e)=\hat{\theta}(e)-\hat{b}\,(e+1) | (9)

where b̂ is the fitted slope and θ̃(e) is the trend-adjusted estimate, which we average over e = 0 to 3 with the weights of Eq. (6). The second bounds the bias, in the spirit of the relative-magnitudes restriction of Rambachan and Roth (2023). Let δ(e) denote the post-coverage violation of Eq. (2) in event year e. We assume that it changes from year to year by at most M̄ times Δ, the largest change between consecutive pre-coverage estimates:

$$latex \left|\delta(e)-\delta(e-1)\right|\le \bar{M}\,\max_{s\le -1}\left|\hat{\theta}(s)-\hat{\theta}(s-1)\right|\equiv \bar{M}\,\Delta,\qquad \delta(-1)=0 | (10)

where s indexes pre-coverage event years. The bias for event year e is then at most M̄Δ(e + 1), and we widen the headline confidence interval by the weighted average of this bound. This construction is conservative and simpler than the confidence sets of Rambachan and Roth (2023), which we do not compute. We also add to X~i~ the growth of log market capitalization from year g − 3 to year g − 1, which compares scored firms with never-scored firms of similar pre-coverage growth.

## 4.5. Benchmark regression and robustness checks

As a benchmark, we estimate on scored and never-scored firms the static two-way fixed effects regression that Goodman-Bacon (2021) and Baker et al. (2022) analyze:

$$latex Y_{i,t}=\alpha_i+\lambda_t+\beta\,D_{i,t}+\varepsilon_{i,t},\qquad D_{i,t}=\mathbf{1}\left[t\ge G_i\right] | (11)

where α~i~ and λ~t~ are firm and year effects, D~i,t~ marks years from the first score onward, and ε~i,t~ is the error; we use no covariates and all event years and cluster standard errors by firm. The coefficient β compares all post-coverage with all pre-coverage years, so it averages over any run-up, and with staggered timing it uses already-scored firms as controls for later cohorts, which biases β when effects change over time.

The pre-analysis plan fixed rows R1 to R6 of Table 3: four robustness checks, a placebo, and the benchmark of Eq. (11). The checks add not-yet-scored firms to the controls; drop the covariates; exclude the 2020 and 2021 cohorts; and keep only control firms whose log total assets in year g − 1 reach the 10th percentile of the cohort's scored firms, a lower bound only. The placebo dates coverage three years early and uses only years before the actual score. Besides the checks in Section 4.4, four analyses are exploratory: dating coverage one year later, with its own pre-trend test and bounds; restricting the sample to cohorts observed through event year three; excluding one market at a time; and estimating the model by market.

## 4.6. Use of generative AI

The authors used Claude (Anthropic) through Claude Code in September 2026 to screen candidate research questions, draft the pre-analysis plan, write and debug the R code, draft and edit the text, and search for and check references. Five instances of the tool, each in a separate context, also produced simulated referee reports that informed the revision. The authors reviewed and approved the research question and the pre-analysis plan before any estimation, reviewed every output of the tool, checked each reported number against the R output files, and take full responsibility for the content.
