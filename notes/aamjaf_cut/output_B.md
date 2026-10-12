# 3. Institutional Setting and Data

## 3.1. ESG disclosure and rating coverage in the five markets

The five markets introduced sustainability reporting rules for listed firms at different times. Bursa Malaysia required a sustainability statement in annual reports for financial years ending on or after December 31, 2016, phased in from the largest companies over two years (Bursa Malaysia, 2015). Singapore requires a comply-or-explain sustainability report for financial years ending on or after December 31, 2017 (Singapore Exchange, 2016). Philippine listed companies have attached a comply-or-explain sustainability report since the 2019 annual reports (Securities and Exchange Commission Philippines, 2019). A 2017 Indonesian regulation applies to listed companies from 2020 (Otoritas Jasa Keuangan, 2017), and Thai listed companies have reported sustainability information in the 56-1 One Report since the fiscal year ending in 2021 (Tilleke & Gibbins, 2020). We could not confirm the dates of earlier Thai guidance.

Several providers score firms in these markets. In Malaysia, FTSE Russell, another part of LSEG, scored only the constituents of the FTSE Bursa Malaysia EMAS index, about 30% of listed companies, until Bursa Malaysia and LSEG agreed in November 2022 to extend these scores to all Main and ACE Market companies (Bernama, 2022). The LSEG ESG score we study, formerly Refinitiv ESG, is a separate product. Some newly covered firms may thus already have had scores that our data do not record, so our event is the initiation of LSEG ESG coverage, not a firm's first ESG rating of any kind. Throughout, a score is the LSEG ESG score, a data-vendor assessment built from company disclosures; a rating is the broader class of assessments, including MSCI-type ratings produced by analysts; and coverage means that LSEG publishes a score for the firm.

Table S2 and Fig. S1 of the Supplemental Appendix show that coverage arrived in waves: {{n_th_sg_2019_2020}} first scores in Thailand and Singapore in 2019 and 2020, and {{n_my_2021_2022}} in Malaysia in 2021 and 2022. Of the {{n_treated_all}} scored firms, {{n_my_treated}} ({{pct_my_treated}}%) are Malaysian, and Malaysian and Thai firms together make up {{pct_my_th_treated}}%. Because first scored years can precede publication (Section 3.2), we cannot link the Malaysian wave to the November 2022 agreement on FTSE Russell scores. The waves do not follow a single reporting rule: the Thai wave preceded the One Report requirement, and the Malaysian wave came years after Bursa Malaysia's rule. Singapore, Indonesia, and the Philippines have too few first scores per year to relate them to their rules. The data do not record why the provider expanded coverage. The pooled estimates are weighted toward Malaysia and Thailand; therefore, we also report estimates by market and wave.

## 3.2. Sample and coverage timing

The data cover all {{n_universe_firms}} firms listed in the five markets from 2014 to 2024 ({{n_universe_fy}} firm-years). They combine the annual LSEG ESG score (LSEG, 2025), not the controversy-adjusted combined score, with accounting and market data from Compustat Global (S&P Global Market Intelligence, 2025).

We call firms without an LSEG score unscored and firms that never receive one in our sample never-scored, and the latter form the comparison group. Dropping financial firms leaves {{n_nonfin_firms}} firms. A firm's first scored year, g, is its first fiscal year with an LSEG ESG score, and its base year is g − 1. Only {{n_cov_gap}} of the {{n_treated_all}} scored firms have a later year without a score; therefore, we treat coverage as permanent, the staggered-adoption setting of Callaway and Sant'Anna (2021). Excluding the {{n_cov2014}} firms scored in 2014, which have no pre-coverage year, leaves {{n_est_firms}} firms and {{n_est_fy}} firm-years: {{n_treated_all}} firms first scored between {{n_coh_min_year}} and {{n_coh_max_year}} and {{n_never}} never-scored firms. A firm-year enters an estimate only if its outcome is observed in both the base year and the comparison year, so counts differ slightly across Tables S4 and S6 of the Supplemental Appendix. We set MTB ratios at or below zero (negative book equity) to missing; {{pct_miss_mtb_never}}% of never-scored and {{pct_miss_mtb_scored}}% of scored firm-years lack a log MTB ratio. Never-scored firms are smaller on average; a check in Section 5.5 restricts scored firms to the size range of the controls.

The first scored year may precede the year in which investors first see a score. First, the score for fiscal year g draws on reports published after the year ends, so it reaches investors in year g + 1 at the earliest. Second, the provider has rewritten historical scores on a large scale (Berg et al., 2020), and scores for the five most recent fiscal years can change after publication (Sahin et al., 2023); if the provider backfilled a firm's history at entry, the gap exceeds one year. Both features move the true publication date later, never earlier, so they cannot create the pre-coverage growth we report but can place pre-publication years in our post-coverage window. Section 5.4 therefore also dates coverage one and two years later.

## 3.3. Outcomes

The primary outcome is the natural logarithm of the MTB ratio, the market value of equity divided by its book value. The secondary outcomes are log market capitalization, log total assets, and book leverage, total debt divided by total assets. Because the data contain neither stock returns nor shares outstanding, we use MTB for valuation and treat market capitalization, which mixes price and share changes, and total assets as measures of firm scale. Amounts are in U.S. dollars. We winsorize all four variables at the 1st and 99th percentiles of the pooled sample before taking logarithms.

# 4. Methods

## 4.1. Target parameter and identification

In the notation of Callaway and Sant'Anna (2021), let G~i~ be the first year in which firm i has an LSEG ESG score, with G~i~ = ∞ if it is never scored, and let Y~i,t~(g) be the potential outcome of firm i in year t if it were first scored in year g. The group-time average treatment effect on the treated (ATT), the average effect in year t for firms first scored in year g, is

$$latex \mathrm{ATT}(g,t)=\mathbb{E}\left[Y_{i,t}(g)-Y_{i,t}(\infty)\mid G_i=g\right] | (1)

We identify it under conditional parallel trends relative to the base year:

$$latex \mathbb{E}\left[Y_{i,t}(\infty)-Y_{i,g-1}(\infty)\mid X_i,G_i=g\right]=\mathbb{E}\left[Y_{i,t}(\infty)-Y_{i,g-1}(\infty)\mid X_i,G_i=\infty\right] | (2)

where X~i~ contains country and industry indicators and log total assets and its square, measured in the base year. Because assumption (2) concerns changes in outcomes, level differences between scored and never-scored firms (Table 1) do not violate it, but a different growth path before coverage would.

## 4.2. Estimation

For each cohort g and year t, we regress the long difference ΔY~i,t~ = Y~i,t~ − Y~i,g−1~ on X~i~ among never-scored firms (Sant'Anna & Zhao, 2020):

$$latex \Delta Y_{i,t}=X_i'\beta_{g,t}+u_{i,t},\qquad G_i=\infty | (3)

where β~g,t~ is the coefficient vector of the cell and u~i,t~ is the error. We omit the propensity-score model of the doubly robust estimator because of the poor overlap in total assets: {{pct_scored_above_p95}}% of scored firms have larger base-year total assets than the 95th percentile of never-scored firms. The estimated group-time effect is

$$latex \widehat{\mathrm{ATT}}(g,t)=\frac{1}{N_{g,t}}\sum_{i:\,G_i=g}\left(\Delta Y_{i,t}-X_i'\hat{\beta}_{g,t}\right) | (4)

where N~g,t~ is the number of firms first scored in year g with data in years g − 1 and t, and β̂~g,t~ is estimated from Eq. (3). We average by event year, e = t − g, weighting cohorts by the number of scored firms (Callaway & Sant'Anna, 2021):

$$latex \hat{\theta}(e)=\sum_{g}\frac{N_{g,g+e}}{\sum_{h}N_{h,h+e}}\,\widehat{\mathrm{ATT}}(g,g+e) | (5)

where h indexes the cohort. The headline estimate averages, with the same weights, all cells from the first scored year to three years later:

$$latex \hat{\theta}_{\mathrm{post}}=\frac{\sum_{(g,t):\,0\le t-g\le 3}N_{g,t}\,\widehat{\mathrm{ATT}}(g,t)}{\sum_{(g,t):\,0\le t-g\le 3}N_{g,t}} | (6)

Cohorts first scored after 2021 are not observed for all four post-coverage years, so cohort composition changes across event years; row R11 keeps only the cohorts observed through event year 3.

The design involves three choices. First, baseline controls are never-scored firms; later-scored firms, which may also be growing toward the provider's universe, join them only in check R1. Second, all comparisons, including pre-coverage ones, are relative to the base year: a negative θ̂(e) for e ≤ −2 means that scored firms grew faster than never-scored firms with the same covariates from year g + e to the base year. Third, we measure the covariates in the base year, at the end of any run-up. Because the provider's scores rise with firm size (Dobrick et al., 2023), conditioning on base-year total assets matches scored firms to never-scored firms of similar size and can absorb part of the run-up. Checks therefore drop the covariates, measure total assets two years before the base year, or replace the quadratic with quintile indicators.

## 4.3. Inference

We bootstrap the aggregated effects by resampling firms with their full time series, a nonparametric alternative to the multiplier bootstrap of Callaway and Sant'Anna (2021). All specifications share the same {{B_BOOT}} draws and fixed seed, so that differences between specifications have a valid joint distribution. We report the bootstrap standard error, the percentile 95% confidence interval, and a normal-approximation two-sided p-value. The minimum detectable effect (MDE) at 80% power in a two-sided 5% test is

$$latex \mathrm{MDE}=(z_{0.975}+z_{0.80})\,\widehat{\mathrm{SE}}\approx 2.8\,\widehat{\mathrm{SE}} | (7)

where z~0.975~ and z~0.80~ are standard normal quantiles and the hatted SE is the bootstrap standard error. We test the primary outcome at the 5% level and Holm-adjust the p-values, but not the confidence intervals, of the three secondary outcomes; an interval that excludes zero can therefore accompany an adjusted p-value above 5%, as for log total assets in Table 2. The joint test of parallel pre-coverage trends is

$$latex W=\hat{\theta}_{\mathrm{pre}}'\,\hat{V}_{\mathrm{pre}}^{-1}\,\hat{\theta}_{\mathrm{pre}}\ \sim\ \chi^2_{4} | (8)

where θ̂~pre~ stacks the estimates for e = −5 to −2 and V̂~pre~ is their bootstrap covariance matrix. Because pre-trend tests can have low power and conditioning on them can distort inference (Roth, 2022), we report W only as a diagnostic.

Coverage arrived in market-level waves, so a market or industry shock can affect many scored firms at once. The country indicators in Eq. (3) absorb market-wide changes within each cell; because five markets are too few clusters, an exploratory check resamples the {{n_clusters}} market-by-industry clusters instead of firms.

## 4.4. Sensitivity to departures from parallel trends

Because the pre-coverage estimates cast doubt on assumption (2), we add two exploratory checks not in the pre-analysis plan. The first removes a linear pre-coverage trend that passes through zero in the base year:

$$latex \hat{b}=\frac{\sum_{e=-5}^{-1}(e+1)\,\hat{\theta}(e)}{\sum_{e=-5}^{-1}(e+1)^{2}},\qquad \tilde{\theta}(e)=\hat{\theta}(e)-\hat{b}\,(e+1) | (9)

where b̂ is the fitted slope and θ̃(e) is the trend-adjusted estimate, which we average over e = 0 to 3 with the weights of Eq. (6). The second bounds the bias in the spirit of the relative-magnitude restriction of Rambachan and Roth (2023). Let δ(e) denote the post-coverage violation of assumption (2) in event year e. We assume that δ(e) changes from year to year by at most M̄ times Δ, the largest change between consecutive pre-coverage estimates:

$$latex \left|\delta(e)-\delta(e-1)\right|\le \bar{M}\,\max_{s\le -1}\left|\hat{\theta}(s)-\hat{\theta}(s-1)\right|\equiv \bar{M}\,\Delta,\qquad \delta(-1)=0 | (10)

where s indexes the pre-coverage event years. The bias for event year e is at most M̄Δ(e + 1), and we widen the headline confidence interval by the weighted average of this bound. With M̄ = 0.25, the post-coverage gap may drift each year by a quarter of the largest yearly change before coverage. We also add to X~i~ the growth of log market capitalization from year g − 3 to the base year (row R8), matching scored firms to never-scored firms of similar pre-coverage growth.

## 4.5. Benchmark regression and robustness checks

As a benchmark, we use scored and never-scored firms to estimate the static two-way fixed effects (TWFE) regression analyzed by Goodman-Bacon (2021) and Baker et al. (2022):

$$latex Y_{i,t}=\alpha_i+\lambda_t+\beta\,D_{i,t}+\varepsilon_{i,t},\qquad D_{i,t}=\mathbf{1}\left[t\ge G_i\right] | (11)

where α~i~ and λ~t~ are firm and year effects, D~i,t~ marks years from the first score onward, and ε~i,t~ is the error term. We include no covariates, use all event years, and cluster standard errors by firm. The coefficient β compares all post-coverage with all pre-coverage years, so it averages over any run-up; with staggered timing, it also uses already scored firms as controls for later cohorts.

The pre-analysis plan fixed rows R1 to R6 of Table 3: four robustness checks, a placebo, and the benchmark of Eq. (11). The checks add not-yet-scored firms to the controls (R1), drop the covariates (R2), exclude the 2020 and 2021 cohorts (R3), and keep only control firms whose base-year log total assets reach the 10th percentile among scored firms of the same cohort (R4). The placebo (R5) dates coverage three years early and uses only years before the actual score. Rows R7 to R11 and Tables S7 and S8 of the Supplemental Appendix are exploratory; Section 5 describes each of these checks where it reports the results.
