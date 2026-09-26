% JF:IP Insights manuscript, version 3 (Stage 4' revision after the three-gate re-review).
% Numbers are {{key}} placeholders filled from project_R/outputs/numbers.csv.
% Display equations: "$$latex <LaTeX> | (n)" are converted to Word equations (OMML) by the builder.
@@ title
Rated at the Peak? Firm Valuation around the First LSEG ESG Score in Five Southeast Asian Markets

@@ running_title
Valuation around first ESG scores

@@ abstract
Using the staggered first appearance of London Stock Exchange Group (LSEG) environmental, social, and governance (ESG) scores for {{n_treated_all}} non-financial firms in five Southeast Asian markets, mostly Malaysian and Thai, and {{n_never}} never-scored firms, we estimate heterogeneity-robust difference-in-differences effects on market-to-book ratios. Before their first scored year, scored firms' market capitalization and market-to-book ratios grew faster than those of comparable firms. Under parallel trends, market-to-book ratios did not rise afterwards (estimate {{mtb_att}}; 95% interval {{mtb_lo}} to {{mtb_hi}}). The first scored year coincides with a valuation peak, and we detect no later gain.


@@ keywords
Difference-in-differences; ESG ratings; Firm valuation; Rating coverage; Selection; Southeast Asia; Staggered adoption

@@ jel
G14, G15, G32, M14, Q56

@@ body
# 1. Introduction

Environmental, social, and governance (ESG) scores enter portfolio screens, index rules, and fund mandates, so whether a listed firm is scored at all can matter as much as its score. An unscored firm cannot enter a portfolio that holds only rated stocks, and a first score can widen the firm's investor base. Merton (1987) shows that a larger investor base raises a stock's price, and investors who value ESG attributes accept lower expected returns on assets they can classify as sustainable (Pástor et al., 2021; Pedersen et al., 2021). Both arguments predict that the initiation of ESG coverage raises a firm's valuation.

A second prediction reverses the direction of causality. Providers choose which firms to score and likely add a firm once it is large, liquid, or visible enough to matter to their clients, for example after it joins an index. Additions to a major index raise prices (Harris & Gurel, 1986; Shleifer, 1986), and part of the effect reverses within weeks (Harris & Gurel, 1986). If coverage follows growth in market value, a comparison of rated and unrated firms, or a regression pooling all years around coverage, attributes past growth to the rating.

The studies of rating coverage that we build on use U.S. firms and outcomes other than valuation. Tsang et al. (2024) link coverage by more ESG raters to fewer ESG violations, and Bikmetova and Pirinsky (2026) link additional coverage to lower toxic emissions, better ratings, and more ownership by high-ESG institutions. Dividends also change after coverage by non-financial rating agencies begins (Tsang et al., 2025). For valuation, sell-side analysts offer a closer analogue: the loss of analyst coverage lowers prices (Kelly & Ljungqvist, 2012), and the first report on a neglected stock earns a positive return driven by favorable coverage rather than by coverage itself (Demiroglu & Ryngaert, 2010). We do not know whether a first ESG score moves valuations in emerging markets, where most listed firms are unscored and coverage has expanded in waves.

We study Indonesia, Malaysia, the Philippines, Singapore, and Thailand. The London Stock Exchange Group (LSEG), whose scores were earlier distributed as Refinitiv ESG and ASSET4, extended coverage in market-specific waves: {{n_coh_2020_2023}} of the {{n_treated_all}} non-financial firms that entered coverage between {{n_coh_min_year}} and {{n_coh_max_year}} did so in 2020 to 2023. Most scored firms are Malaysian or Thai, and most listed firms remained unscored. We treat the first fiscal year with an LSEG ESG score as a staggered event and estimate group-time average treatment effects on the treated (ATT) with the estimator of Callaway and Sant'Anna (2021). This estimator avoids the biases of two-way fixed effects regressions under staggered timing and heterogeneous effects (Baker et al., 2022; Goodman-Bacon, 2021). The primary outcome is the log market-to-book (MTB) ratio. A pre-analysis plan, committed to version control before the estimation code and included in the replication package, records the hypotheses, sample rules, estimator, and robustness checks, and we label every later analysis as exploratory.

The evidence has three parts. First, over the four years from event year −5 to the base year, the market capitalization of scored firms grew {{mcap_runup_m5}} percent more and their MTB ratio {{mtb_runup_m5}} percent more than those of comparable never-scored firms. Second, under conditional parallel trends from the base year, the average effect on MTB over the first four years is {{mtb_att}}, with a 95% confidence interval from {{mtb_lo}} to {{mtb_hi}}. Third, when we date coverage one year later to allow for the time needed to publish a score, the effect becomes {{mtb_R10}} (p {{mtb_R10_p_txt}}); because this decline is measured from the year of peak valuation, it cannot separate a reversal of the run-up from an effect of coverage. A static two-way fixed effects regression on the same data attributes a {{mtb_R6_pct}} percent MTB increase to coverage, showing how pooling turns selection into an apparent rating effect.

We do not claim that coverage has no effect on valuation. The run-up casts doubt on the parallel-trends assumption behind the post-coverage estimates. When we allow post-coverage departures from parallel trends of up to a quarter of the largest pre-coverage year-to-year change, following Rambachan and Roth (2023), the MTB interval widens to {{mtb_rm025_lo}} to {{mtb_rm025_hi}}. Because the upper limit of the unadjusted interval lies just below a 5 percent increase, any such departure admits positive effects of that size. The data support an ordering of events: the first score follows relative growth and coincides with a valuation peak, and under parallel trends no heterogeneity-robust specification detects a later gain.

We contribute to research on the financial consequences of ESG ratings with emerging-market evidence on the extensive margin of coverage, and we show that selection into coverage matters for any comparison of rated and unrated firms. The results also show that pre-coverage dynamics, which pre-trend tests treat as a nuisance (Roth, 2022), can be the economic finding.

Section 2 reviews the literature and states the hypotheses, Section 3 describes the setting and data, and Sections 4 and 5 present the methods and results. Section 6 discusses the results, Section 7 states the limitations, and Section 8 concludes.

# 2. Related Literature and Hypotheses

## 2.1. Ratings, investor demand, and valuation

Two mechanisms link a first ESG score to a firm's valuation. Under investor recognition, a stock known to few investors trades at a discount because a small group bears its idiosyncratic risk (Merton, 1987), and a first score makes the firm visible to ESG-screening investors. Under investor preference, assets classified as sustainable command higher prices and lower expected returns (Pástor et al., 2021; Pedersen et al., 2021). Both predict that coverage raises valuation, the second more so for firms with a high initial score. Both also require investors to act on this particular score, yet U.S. ESG funds respond more to one provider's ratings than to those of others (Berg, Heeb, et al., 2022), and providers disagree (Berg, Kölbel, et al., 2022) in ways that are priced (Avramov et al., 2022; Gibson Brandon et al., 2021).

## 2.2. Coverage as a selection event

Rating coverage is not assigned at random. We expect providers to cover firms in the indices their clients track and firms that disclose enough to be scored, although our data do not include the provider's coverage rules. Mandatory sustainability reporting increases the information available about listed firms (Krueger et al., 2024), and larger firms receive higher scores from the provider we study (Dobrick et al., 2023). If providers select firms that have grown, a comparison of scored and unscored firms mixes the effect of coverage with the growth that led to it.

Sell-side coverage offers an analogy: losing analyst coverage lowers prices (Kelly & Ljungqvist, 2012), and the first coverage of a neglected stock raises its price only when the coverage is favorable (Demiroglu & Ryngaert, 2010). Any valuation effect of a first ESG score should then concentrate in firms with favorable scores and in firms that were less visible before coverage.

## 2.3. Hypotheses

The pre-analysis plan states three hypotheses, each tested two-sided.

H~1~ (primary): The initiation of LSEG ESG coverage changes the log MTB ratio of scored firms relative to comparable never-scored firms. The recognition and preference channels predict a positive effect; the selection view predicts no effect after coverage and relative growth before it.

H~2~ (secondary): Coverage changes log market capitalization, book leverage, and log total assets.

H~3~ (heterogeneity): The effect on log MTB differs between firms with initial scores above and below their cohort median, as the preference channel and the evidence on favorable first coverage suggest.

# 3. Institutional Setting and Data

## 3.1. ESG rating coverage in the five markets

Disclosure rules differ across the five markets. Singapore, the most developed market, requires every listed issuer to publish a comply-or-explain sustainability report for financial years ending on or after 31 December 2017 (Singapore Exchange, 2016). In Malaysia, FTSE Russell, another part of LSEG, scored only the FTSE Bursa Malaysia EMAS constituents, about 30 percent of listed companies, until Bursa Malaysia and LSEG agreed in November 2022 to score all Main and ACE Market companies (Bernama, 2022). We do not document the timing of reporting rules in the other four markets. The LSEG ESG score we study, formerly Refinitiv ESG, is a separate product, so some newly covered firms may already have had FTSE Russell or other scores that our data do not record.

Table S2 and Fig. S1 of the Supplemental Appendix show that coverage arrived in waves: {{n_th_sg_2019_2020}} first scores in Thailand and Singapore in 2019 and 2020, and {{n_my_2021_2022}} in Malaysia in 2021 and 2022. Of the {{n_treated_all}} scored firms, {{n_my_treated}}, or {{pct_my_treated}} percent, are Malaysian, and Malaysian and Thai firms together make up {{pct_my_th_treated}} percent. The pooled estimates are therefore weighted toward Malaysia and Thailand, and the Supplemental Appendix reports market-level estimates. The data do not record why coverage expanded when it did.

## 3.2. Sample and coverage timing

The data cover all {{n_universe_firms}} firms listed in the five markets from 2014 to 2024, or {{n_universe_fy}} firm-years, and combine the annual LSEG ESG score (LSEG, 2025) with accounting and market data from Compustat Global (S&P Global Market Intelligence, 2025). We use the ESG score, not the controversy-adjusted combined score. The files do not record the download date, so the vintage of recent, revisable scores is unknown.

Dropping financial firms leaves {{n_nonfin_firms}} firms. A firm's treatment year, g, is its first fiscal year with an LSEG ESG score. Only {{n_cov_gap}} of the {{n_treated_all}} scored firms have a later year without a score, so we treat coverage as permanent, the staggered-adoption setting of Callaway and Sant'Anna (2021). Excluding the {{n_cov2014}} firms scored in 2014, which have no pre-coverage year, leaves a full firm-year grid of {{n_est_firms}} firms and {{n_est_fy}} firm-years: {{n_treated_all}} firms first scored between {{n_coh_min_year}} and {{n_coh_max_year}} and {{n_never}} never-scored firms. A firm-year enters an estimate only if its outcome is observed in both the base year and the comparison year; MTB ratios at or below zero, which reflect negative book equity, are set to missing. Table S4 of the Supplemental Appendix reports firm-years by outcome, and Table S6 scored firms by event year. Of the {{n_attr_base}} scored firms with a base-year MTB ratio in cohorts observed through event year 3, {{n_attr_e3}}, or {{pct_attr_e3}} percent, still have one in event year 3; the others have no MTB ratio in event year 3. Never-scored firms are much smaller on average, and many trade thinly. The comparison of changes adjusted for size, country, and industry does not need similar levels, but it needs enough never-scored firms of comparable size; a check in Section 4.5 drops small control firms.

The treatment year may precede the year in which investors first see a score. First, the score for fiscal year g draws on reports published after the year ends, so it reaches investors in year g + 1 at the earliest. Second, the provider has rewritten historical scores on a large scale (Berg et al., 2020), and scores for the five most recent fiscal years can change after publication (Sahin et al., 2023); if historical years were filled in when a firm entered coverage, the gap exceeds one year. Both features move the true publication date later, never earlier, so they cannot create the pre-coverage growth we report but can place pre-publication years in our post-coverage window. Section 5.4 therefore also dates coverage one year later.

## 3.3. Outcomes

The primary outcome is the natural logarithm of the MTB ratio, the market value of equity divided by its book value. The secondary outcomes are log market capitalization, log total assets, and book leverage, defined as total debt divided by total assets. Market capitalization moves with prices and share counts, which the data cannot separate because they contain neither stock returns nor shares outstanding, so we use MTB for valuation and market capitalization for size. Amounts are in U.S. dollars as recorded in the data set. We winsorize MTB, market capitalization, leverage, and total assets at the 1st and 99th percentiles of the pooled sample before taking logarithms.

# 4. Methods

## 4.1. Target parameter and identification

In the notation of Callaway and Sant'Anna (2021), let G~i~ be the first year in which firm i has an LSEG ESG score, with G~i~ = ∞ if it is never scored, and let Y~i,t~(g) be the potential outcome of firm i in year t if it were first scored in year g. The group-time average treatment effect on the treated is

$$latex \mathrm{ATT}(g,t)=\mathbb{E}\left[Y_{i,t}(g)-Y_{i,t}(\infty)\mid G_i=g\right] | (1)

the average effect in year t for firms first scored in year g. We identify it under conditional parallel trends relative to the year before coverage:

$$latex \mathbb{E}\left[Y_{i,t}(\infty)-Y_{i,g-1}(\infty)\mid X_i,G_i=g\right]=\mathbb{E}\left[Y_{i,t}(\infty)-Y_{i,g-1}(\infty)\mid X_i,G_i=\infty\right] | (2)

where X~i~ contains country and industry indicators and log total assets and its square, measured in year g − 1. Because assumption (2) concerns changes in outcomes, the size differences in Table 1 do not violate it by themselves, but a different growth path before coverage would. We test this implication with the pre-coverage estimates but do not rely on the test alone.

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

We bootstrap the aggregated effects by resampling firms with their full time series, a nonparametric alternative to the multiplier bootstrap of Callaway and Sant'Anna (2021). All specifications share the same {{B_BOOT}} draws and fixed seed, so differences between specifications have a valid joint distribution. We report the bootstrap standard error, the percentile 95% confidence interval, and a normal-approximation two-sided p-value. The minimum detectable effect (MDE) at 80% power in a two-sided 5% test is

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

# 5. Results

## 5.1. Which firms get scored

Table 1 compares scored firms in the year before their first score with never-scored firm-years. Scored firms are much larger: their median market capitalization is {{t1_mcap_tr_med}} million U.S. dollars against {{t1_mcap_nv_med}} million, and their median total assets are {{t1_asset_ratio_med}} times as large, with normalized differences of {{t1_mcap_nd}} and {{t1_asset_nd}}. Their mean MTB ratio is {{t1_mtb_tr_mean}} against {{t1_mtb_nv_mean}}, and the medians agree, while leverage barely differs (normalized difference {{t1_lev_nd}}). Return on assets is available for far fewer firm-years, so we use it only descriptively. These gaps fit a provider that covers large and visible firms (Section 2.2), and the MTB gap fits the pre-coverage growth in Section 5.3. Size also matters for the scores themselves, because larger firms receive higher scores from this provider (Dobrick et al., 2023). We therefore compare changes and adjust for size, country, and industry in Eq. (3).

## 5.2. Average effects of the first score

Table 2 reports the headline estimates of Eq. (6). The effect on log MTB is {{mtb_att}}, with a standard error of {{mtb_se}} and a 95% confidence interval from {{mtb_lo}} to {{mtb_hi}}, which under assumption (2) excludes changes in the MTB ratio outside {{mtb_lo_pct}} to {{mtb_hi_pct}} percent. The minimum detectable effect from Eq. (7) is {{mtb_mde}}, about {{mtb_mde_pct}} percent, detected with 80% probability; the confidence interval, not the MDE, gives the effects compatible with the data, and it includes increases of a few percent. No outcome changes significantly at the 5% level once the secondary outcomes are Holm-adjusted: log market capitalization changes by {{mcap_att}} (p {{mcap_pholm_txt}}), leverage by {{lev_att_pp}} percentage points (p {{lev_pholm_txt}}), and total assets by {{asset_att}} log points (p {{asset_pholm_txt}}, against an unadjusted p {{asset_p_txt}}). Under assumption (2), the MTB estimate gives no sign of the positive effect that the recognition channel of Merton (1987) and the preference channel of Pástor et al. (2021) and Pedersen et al. (2021) predict. Hartzmark and Sussman (2019) show that fund flows respond to newly published sustainability ratings; under assumption (2), we detect no lasting valuation gain from such demand, although the interval admits gains of up to {{mtb_hi_pct}} percent.

## 5.3. Dynamics before and after the first score

Fig. 1 plots the event-time estimates of Eq. (5) for all four outcomes. Before the first score, the coefficients for market capitalization and MTB are negative and rise toward zero. In event years −5 and −4, four and three years before the base year, the MTB estimates are {{mtb_em5}} and {{mtb_em4}} (p {{mtb_em5_p_txt}} and p {{mtb_em4_p_txt}}). Over these four years, scored firms' market capitalization grew {{mcap_runup_m5}} percent more than that of comparable firms, and their MTB ratio {{mtb_runup_m5}} percent more. This run-up is the pattern that the selection view in Section 2.2 predicts. The joint test of Eq. (8) rejects parallel pre-trends for market capitalization (p {{mcap_pre_p_txt}}) but not at the 5% level for MTB (p {{mtb_pre_p_txt}}); as Roth (2022) cautions, this non-rejection is not evidence that pre-trends are absent. Total assets follow a weaker version of the pattern, and leverage falls toward the base year (pre-trend p {{lev_pre_p_txt}}).

After the first score, the MTB coefficients for event years 0 to 3 lie between {{mtb_e3}} and {{mtb_e2}}, and none differs from zero at the 5% level. The market capitalization estimate is {{mcap_e1}} in event year 1 (p {{mcap_e1_p_txt}}) and not significant later. Only {{mtb_nfirms_e4}} scored firms from {{mtb_ncoh_e4}} cohorts reach event year 4, so we plot that year but exclude it from Eq. (6); its estimates are {{mtb_e4}} for MTB (p {{mtb_e4_p_txt}}) and {{mcap_e4}} for market capitalization (p {{mcap_e4_p_txt}}). Total assets rise to {{asset_e3}} by event year 3, and leverage returns toward its earlier level. The valuation gap thus widens before coverage and stops widening afterwards, with no mirror image of the price decline that follows a loss of analyst coverage (Kelly & Ljungqvist, 2012). Without data on share issuance, we cannot tell whether the pre-coverage growth in market capitalization reflects rising prices, new shares, or both, so we base statements about valuation on the MTB ratio.

## 5.4. Timing of coverage and sensitivity to pre-trends

Table 3 reports the robustness checks; rows R1 to R6 were pre-specified, and rows R7 to R11 are exploratory. Row R10 dates coverage one year after the first scored fiscal year, when a score could first have been published; because scores were backfilled or revised (Berg et al., 2020; Sahin et al., 2023), this also moves the base year closer to the end of the run-up. The MTB effect is then {{mtb_R10}}, a change of about {{mtb_R10_pct}} percent (95% interval {{mtb_R10_lo}} to {{mtb_R10_hi}}; p {{mtb_R10_p_txt}}), estimated from {{mtb_R10_ntr}} scored and {{mtb_R10_nco}} control firms. It assumes parallel trends from the first scored year, the year of peak valuation. Its joint pre-trend test gives p {{mtb_R10_pre_p_txt}}, and with M̄ = 0.25 in Eq. (10) its robust interval, from {{mtb_R10_rm025_lo}} to {{mtb_R10_rm025_hi}}, includes zero; the decline loses significance once M̄ reaches {{mtb_R10_bd0}}. If firms are selected at an unusually high valuation that later partly reverses, the decline measures the reversal and can hide an offsetting positive coverage effect; if valuations would otherwise have stayed at their peak, coverage lowered them. The data cannot separate the two readings.

Row R11 keeps the {{n_R11_cohorts}} cohorts first scored by 2021 and observed through event year 3, with {{mtb_R11_ntr}} scored and {{mtb_R11_nco}} control firms. Its MTB effect of {{mtb_R11}} (p {{mtb_R11_p_txt}}) shows that changing cohort composition does not explain the headline estimate, although the interval widens. Row R7 removes a linear pre-trend with Eq. (9). The MTB effect becomes {{mtb_R7}}, with a 95% interval from {{mtb_R7_lo}} to {{mtb_R7_hi}}; it is negative because a continued run-up would have raised valuations further. Row R8 compares scored firms with never-scored firms that grew at a similar rate before coverage, and so share any tendency to revert, and gives an MTB effect of {{mtb_R8}} (p {{mtb_R8_p_txt}}). This comparison partly accounts for any reversal of temporary demand, like the partly reversing price effects of index additions (Harris & Gurel, 1986), and shows no significant gain, but its interval, from {{mtb_R8_lo}} to {{mtb_R8_hi}}, admits gains of several percent. It conditions only on market capitalization growth from year g − 3 to year g − 1, and control firms matched on past growth can themselves revert, so it does not settle the reversal question.

Table S5 of the Supplemental Appendix reports the bounds of Eq. (10), which follow the relative-magnitudes logic of Rambachan and Roth (2023). With a largest change of {{mtb_rm_dmax}} between consecutive pre-coverage MTB estimates, the robust interval for the MTB effect is {{mtb_rm025_lo}} to {{mtb_rm025_hi}} with M̄ = 0.25 and widens to {{mtb_rm100_lo}} to {{mtb_rm100_hi}} with M̄ = 1. Every interval includes zero and admits moderate effects in either direction. The upper limit of the unadjusted interval lies just below a 5 percent increase in the MTB ratio ({{log105}} log points): any departure with M̄ above about {{mtb_bd5}} admits an increase of 5 percent, and any departure at all admits a positive effect. The post-coverage null and the absence of a detected positive effect are therefore both conditional on assumption (2).

## 5.5. Robustness and heterogeneity

In the pre-specified rows R1 to R4, the effect on log MTB is {{mtb_R1}} when not-yet-scored firms join the controls, as Callaway and Sant'Anna (2021) propose, {{mtb_R2}} without the outcome-regression covariates of Sant'Anna and Zhao (2020), {{mtb_R3}} without the 2020 and 2021 cohorts, and {{mtb_R4}} when control firms below the size range of scored firms are dropped; none differs from zero at the 10% level, so the valuation result is unchanged. The size results are less stable. Under the size restriction, the market capitalization effect shrinks to {{mcap_R4}} and the asset effect is {{asset_R4}}, against {{asset_R2}} without covariates, so we do not read the asset estimate in Table 2 as evidence that coverage causes growth.

The placebo in row R5, which dates coverage three years before the first score within pre-score years, yields {{mtb_R5}} on log MTB (p {{mtb_R5_p_txt}}) and {{mcap_R5}} on log market capitalization (p {{mcap_R5_p_txt}}). This failure restates the pre-coverage growth of Fig. 1 and adds no independent evidence. The static two-way fixed effects regression of Eq. (11) in row R6 attributes increases of {{mtb_R6}} in log MTB (p {{mtb_R6_p_txt}}) and {{mcap_R6}} in log market capitalization to coverage, because it compares all post-coverage with all earlier years and so counts part of the run-up as a rating effect. Part of its gap to the baseline reflects the covariates and the event window, as the larger estimate without covariates in row R2 shows; the remainder illustrates the biases of static regressions under staggered timing described by Goodman-Bacon (2021) and Baker et al. (2022).

When row R9 and Table S1 of the Supplemental Appendix exclude one market at a time, the MTB effect ranges from {{mtb_lomo_min}} to {{mtb_lomo_max}} and is {{mtb_R9}} without Malaysia (p {{mtb_R9_p_txt}}), whereas the market capitalization effect turns to {{mcap_R9}}, so its negative baseline estimate reflects the large Malaysian cohorts of 2021 and 2022. Estimated market by market in Table S3, the MTB effect is {{mtb_pm_MY}} in Malaysia, with {{mtb_pm_MY_ntr}} scored firms, and {{mtb_pm_TH}} in Thailand, with {{mtb_pm_TH_ntr}}. Indonesia, the Philippines, and Singapore have few scored firms and imprecise estimates, including a small one for Singapore, where reporting became mandatory from financial year 2017 (Krueger et al., 2024; Singapore Exchange, 2016).

The last three rows of Table 3 split scored firms at the cohort median of their first ESG score. The MTB effect is {{mtb_high}} for high-score and {{mtb_low}} for low-score entrants. The difference of {{mtb_diff}} (standard error {{mtb_diff_se}}, p {{mtb_diff_p_txt}}) is not significant, but with a minimum detectable value of {{mtb_diff_mde}} the test cannot exclude moderate differences. The preference channel (Pedersen et al., 2021) and the evidence on favorable first coverage (Demiroglu & Ryngaert, 2010) predict such a difference; a weak signal, given that providers disagree (Berg, Kölbel, et al., 2022; Christensen et al., 2022), is one reason it may be absent. The split also uses initial scores that may have been revised since publication (Sahin et al., 2023).

## 5.6. Economic magnitude

Under assumption (2), the largest increase compatible with the headline interval is of the same order as the announcement return of 4.86 percent that Demiroglu and Ryngaert (2010) report for the first analyst coverage of neglected stocks, and it exceeds the increase of more than 3 percent that Harris and Gurel (1986) report for additions to the S&P 500, most of which reversed within about two weeks. Annual year-end ratios would miss such short-lived effects, so our estimates concern lasting revaluation of the kind a permanent rise in investor recognition would produce (Chen et al., 2004; Merton, 1987). Under the same assumption, a lasting effect half as large as the MTB run-up in Section 5.3 would lie at the upper end of the headline interval, so any such effect is small relative to the growth that precedes coverage.

# 6. Discussion

## 6.1. Interpreting the post-coverage path

The flat post-coverage MTB path admits three readings, depending on the counterfactual pre-coverage trend (Rambachan & Roth, 2023; Roth, 2022). With parallel paths from the base year, coverage had no effect within the interval of Section 5.2. With a continued run-up, coverage lowered valuations relative to trend. With a partly transitory run-up, the flat path is consistent with a positive coverage effect that offset a reversal. The third reading deserves weight, because firms selected after relative growth likely carry transitory value, as the partial reversal of index-addition effects illustrates (Chen et al., 2004; Harris & Gurel, 1986).

Three results bear on reversal. First, dating coverage one year later yields an MTB decline after the first scored year, which a reversal would produce and a positive coverage effect could partly offset; the estimate cannot separate the two. Second, against never-scored firms with similar pre-coverage growth, the MTB effect is small and insignificant, but this comparison conditions on a single growth measure, and its interval admits gains of several percent. Third, the bounds in Section 5.4 include zero for every M̄ we consider but also effects of several percent in both directions. The evidence therefore does not show that coverage has no effect: no heterogeneity-robust specification detects a valuation gain, and the bounds do not exclude one. The clearest result is the ordering of events: the first scored fiscal year follows relative growth and coincides with a valuation peak.

Market-level MTB effects agree: they are close to zero in Malaysia and Thailand, the two largest scored samples, and no market shows a significant positive effect. Because the coverage waves came in 2019 and 2020 in Thailand and Singapore but in 2021 and 2022 in Malaysia, a shock common to all five markets is a less likely explanation, although the waves may reflect market-specific disclosure rules (Krueger et al., 2024; Singapore Exchange, 2016) or unobserved index changes.

## 6.2. Relation to prior evidence

Sell-side evidence suggests why a first ESG score might move prices: losing coverage lowers prices (Kelly & Ljungqvist, 2012), a favorable first report on a neglected stock raises them (Demiroglu & Ryngaert, 2010), and Hartzmark and Sussman (2019) document a demand channel through fund flows. Two features may explain the absence of a gain. ESG scores rarely carry cash-flow news and arrive after the firm's own disclosures. Our firms were also large and visible before coverage (Table 1), and some may have had FTSE Russell scores, leaving less room for the recognition channel of Merton (1987); foreign-ownership limits in these markets could further mute recognition through foreign ESG investors. Without data on ownership, investor attention, foreign holdings, or these limits, we cannot test either explanation.

The results also fit the evidence on rating disagreement. If ESG funds follow one provider more than others (Berg, Heeb, et al., 2022), coverage by another provider may matter little for demand, and dispersion across providers (Berg, Kölbel, et al., 2022; Christensen et al., 2022) weakens the information in any single score. U.S. studies find that coverage changes firm conduct (Bikmetova & Pirinsky, 2026; Tsang et al., 2024) and financial policy (Tsang et al., 2025); we find no stable change in leverage or assets and observe no measures of conduct.

## 6.3. Implications

The main implication is methodological. A cross-sectional valuation premium of rated firms, or a static two-way fixed effects estimate, can reflect selection into coverage rather than an effect of ratings. Here the static regression attributes an MTB increase of {{mtb_R6_pct}} percent to coverage, whereas the heterogeneity-robust estimator and its event-time profile trace most of the gap to pre-coverage growth, with the covariates and event window accounting for the rest (Section 5.5; Callaway & Sant'Anna, 2021; Roth, 2022). Studies comparing rated and unrated firms in these markets should model coverage timing and report pre-coverage dynamics.

For listed firms in the five markets, the estimates give no support, under assumption (2), to the expectation that a first LSEG score will raise their valuation through investor recognition or preferences (Merton, 1987; Pástor et al., 2021); the confidence interval excludes increases above {{mtb_hi_pct}} percent, but smaller effects remain possible. The evidence does not speak to short-lived price effects around publication, to unscored firms, or to outcomes other than valuation and financing. For investors and exchanges, scored firms are a selected group with a distinct valuation history. These data cannot show whether the ordering extends to other markets or providers.

# 7. Limitations

The study has eight limitations. First, the provider chooses when to cover a firm, and we have no coverage variation unrelated to firm performance. The post-coverage estimates rest on conditional parallel trends from the base year, which the pre-coverage estimates question, and our sensitivity analysis uses a linear trend and a simplified bound, not the confidence sets of Rambachan and Roth (2023). Second, the data are annual and may contain backfilled or revised scores, so we observe neither first-score publication dates nor announcement returns; later dating closes only part of this gap. Third, we observe only LSEG coverage; for firms with earlier scores from other providers, such as FTSE Russell scores for Malaysian index constituents (Bernama, 2022), the event is an additional score. Fourth, without stock returns, shares outstanding, ownership, foreign holdings, foreign-ownership limits, index membership, or sustainability report dates, we cannot separate price changes from share issuance, test the recognition channel directly, or link first scores to index entry or first sustainability reports. Fifth, a few market capitalization values are implausibly large; pooled winsorization limits but does not correct them, an erroneous base-year value enters every group-time estimate of its cohort, and return on assets covers a minority of firm-years. Sixth, Malaysian and Thai firms make up {{pct_my_th_treated}} percent of scored firms and dominate the pooled estimates, and the firm-level bootstrap does not account for correlation within market-level coverage waves, so the intervals may be too narrow. Seventh, the minimum detectable effect on log MTB is {{mtb_mde}}, about {{mtb_mde_pct}} percent, so smaller effects would be detected with less than 80% probability; under parallel trends, the confidence interval excludes only increases above {{mtb_hi_pct}} percent. Eighth, the unrecorded download date leaves the vintage of revisable recent scores uncertain, and we do not document the timing of disclosure rules outside Singapore.

# 8. Conclusion

Using the staggered first appearance of LSEG ESG scores for {{n_treated_all}} non-financial firms in five Southeast Asian markets, we find that scored firms, mostly Malaysian and Thai, grew faster than comparable never-scored firms before their first scored year and, under parallel trends, did not gain in market-to-book ratio afterwards (headline effect {{mtb_att}}; 95% interval {{mtb_lo}} to {{mtb_hi}}). Dating coverage one year later gives {{mtb_R10}}, a decline that may reflect a reversal of the run-up. The first scored year thus coincides with a valuation peak, although departures from parallel trends like those before coverage would admit effects of several percent either way. Comparisons of rated and unrated firms that ignore coverage timing will attribute this selection to the rating.

@@ references
Avramov, D., Cheng, S., Lioui, A., & Tarelli, A. (2022). Sustainable investing with ESG rating uncertainty. *Journal of Financial Economics*, *145*(2), 642–664. https://doi.org/10.1016/j.jfineco.2021.09.009

Baker, A. C., Larcker, D. F., & Wang, C. C. Y. (2022). How much should we trust staggered difference-in-differences estimates? *Journal of Financial Economics*, *144*(2), 370–395. https://doi.org/10.1016/j.jfineco.2022.01.004

Berg, F., Fabisik, K., & Sautner, Z. (2020). *Is history repeating itself? The (un)predictable past of ESG ratings* (Finance Working Paper No. 708/2020). European Corporate Governance Institute. https://ssrn.com/abstract=3722087

Berg, F., Heeb, F., & Kölbel, J. F. (2022). *The economic impact of ESG ratings* (SAFE Working Paper No. 439). Leibniz Institute for Financial Research SAFE. https://ssrn.com/abstract=4088545

Berg, F., Kölbel, J. F., & Rigobon, R. (2022). Aggregate confusion: The divergence of ESG ratings. *Review of Finance*, *26*(6), 1315–1344. https://doi.org/10.1093/rof/rfac033

Bernama. (2022, November 2). *Bursa Malaysia signs sustainability MoU with London Stock Exchange Group*. https://www.bernama.com/en/news.php?id=2134522

Bikmetova, N., & Pirinsky, C. A. (2026). Do ESG rating agencies improve ESG performance? *Journal of Business Ethics*, *204*(2), 335–365. https://doi.org/10.1007/s10551-025-06063-0

Callaway, B., & Sant'Anna, P. H. C. (2021). Difference-in-differences with multiple time periods. *Journal of Econometrics*, *225*(2), 200–230. https://doi.org/10.1016/j.jeconom.2020.12.001

Chen, H., Noronha, G., & Singal, V. (2004). The price response to S&P 500 index additions and deletions: Evidence of asymmetry and a new explanation. *The Journal of Finance*, *59*(4), 1901–1929. https://doi.org/10.1111/j.1540-6261.2004.00683.x

Christensen, D. M., Serafeim, G., & Sikochi, A. (2022). Why is corporate virtue in the eye of the beholder? The case of ESG ratings. *The Accounting Review*, *97*(1), 147–175. https://doi.org/10.2308/TAR-2019-0506

Demiroglu, C., & Ryngaert, M. D. (2010). The first analyst coverage of neglected stocks. *Financial Management*, *39*(2), 555–584. https://doi.org/10.1111/j.1755-053X.2010.01084.x

Dobrick, J., Klein, C., & Zwergel, B. (2023). Size bias in Refinitiv ESG data. *Finance Research Letters*, *55*, Article 104014. https://doi.org/10.1016/j.frl.2023.104014

Gibson Brandon, R., Krueger, P., & Schmidt, P. S. (2021). ESG rating disagreement and stock returns. *Financial Analysts Journal*, *77*(4), 104–127. https://doi.org/10.1080/0015198X.2021.1963186

Goodman-Bacon, A. (2021). Difference-in-differences with variation in treatment timing. *Journal of Econometrics*, *225*(2), 254–277. https://doi.org/10.1016/j.jeconom.2021.03.014

Harris, L., & Gurel, E. (1986). Price and volume effects associated with changes in the S&P 500 list: New evidence for the existence of price pressures. *The Journal of Finance*, *41*(4), 815–829. https://doi.org/10.1111/j.1540-6261.1986.tb04550.x

Hartzmark, S. M., & Sussman, A. B. (2019). Do investors value sustainability? A natural experiment examining ranking and fund flows. *The Journal of Finance*, *74*(6), 2789–2837. https://doi.org/10.1111/jofi.12841

Kelly, B., & Ljungqvist, A. (2012). Testing asymmetric-information asset pricing models. *The Review of Financial Studies*, *25*(5), 1366–1413. https://doi.org/10.1093/rfs/hhr134

Krueger, P., Sautner, Z., Tang, D. Y., & Zhong, R. (2024). The effects of mandatory ESG disclosure around the world. *Journal of Accounting Research*, *62*(5), 1795–1847. https://doi.org/10.1111/1475-679X.12548

LSEG. (2025). *LSEG ESG scores (ESG score field), annual, 2014–2024* [Data set]. LSEG Workspace.

Merton, R. C. (1987). A simple model of capital market equilibrium with incomplete information. *The Journal of Finance*, *42*(3), 483–510. https://doi.org/10.1111/j.1540-6261.1987.tb04565.x

Pástor, Ľ., Stambaugh, R. F., & Taylor, L. A. (2021). Sustainable investing in equilibrium. *Journal of Financial Economics*, *142*(2), 550–571. https://doi.org/10.1016/j.jfineco.2020.12.011

Pedersen, L. H., Fitzgibbons, S., & Pomorski, L. (2021). Responsible investing: The ESG-efficient frontier. *Journal of Financial Economics*, *142*(2), 572–597. https://doi.org/10.1016/j.jfineco.2020.11.001

Rambachan, A., & Roth, J. (2023). A more credible approach to parallel trends. *The Review of Economic Studies*, *90*(5), 2555–2591. https://doi.org/10.1093/restud/rdad018

Roth, J. (2022). Pretest with caution: Event-study estimates after testing for parallel trends. *American Economic Review: Insights*, *4*(3), 305–322. https://doi.org/10.1257/aeri.20210236

Sahin, Ö., Bax, K., Paterlini, S., & Czado, C. (2023). The pitfalls of (non-definitive) environmental, social, and governance scoring methodology. *Global Finance Journal*, *56*, Article 100780. https://doi.org/10.1016/j.gfj.2022.100780

Sant'Anna, P. H. C., & Zhao, J. (2020). Doubly robust difference-in-differences estimators. *Journal of Econometrics*, *219*(1), 101–122. https://doi.org/10.1016/j.jeconom.2020.06.003

Shleifer, A. (1986). Do demand curves for stocks slope down? *The Journal of Finance*, *41*(3), 579–590. https://doi.org/10.1111/j.1540-6261.1986.tb04518.x

Singapore Exchange. (2016). *SGX Mainboard Rules 711A and 711B: Sustainability report* [Listing rules]. SGX Rulebook. https://rulebook.sgx.com/rulebook/711a

S&P Global Market Intelligence. (2025). *Compustat Global, annual fundamentals, 2014–2024* [Data set].

Tsang, A., Wang, Y., Xiang, Y., & Yu, L. (2024). The rise of ESG rating agencies and management of corporate ESG violations. *Journal of Banking & Finance*, *169*, Article 107312. https://doi.org/10.1016/j.jbankfin.2024.107312

Tsang, A., Wang, Y., Xiang, Y., & Yu, L. (2025). ESG ratings and dividend changes: Evidence from the initiation of nonfinancial agency coverage. *Corporate Governance: An International Review*, *33*, 554–577. https://doi.org/10.1111/corg.12615

@@ exhibits
kind:=table
caption:=Table 1|Characteristics of scored firms in the year before their first LSEG ESG score and of never-scored firm-years
csvfile:=table1_formatted.csv
widths:=1.7,0.65,0.65,0.55,0.7,0.7,0.65,0.8
note:=Scored firms are measured in the year before their first LSEG ESG score; never-scored firms contribute all firm-years from 2014 to 2024. Norm. diff. is the difference in means divided by the square root of the average of the two variances.
source:=Authors' calculations from LSEG ESG scores and Compustat Global.

kind:=table
caption:=Table 2|Average effect of the first LSEG ESG score over event years 0 to 3
csvfile:=table2_formatted.csv
widths:=1.55,0.6,0.5,1.15,0.6,0.5,0.6,0.55,0.6
note:=ATT is the average effect over event years 0 to 3 (Eq. 6), with bootstrap standard errors and unadjusted 95% intervals; p-values of the three secondary outcomes are Holm-adjusted. MDE is the minimum detectable effect at 80% power, and pre-trend p is the joint test of Eq. (8).
source:=Authors' calculations from LSEG ESG scores and Compustat Global.

kind:=figure
caption:=Fig. 1|Event-time effects of the first LSEG ESG score on valuation, size, and leverage
png:=Fig1.png
note:=Markers show the estimates of Eq. (5) relative to event year −1 (set to zero), with bootstrap 95% intervals; open markers and dotted bars are years before the first score. Controls are never-scored firms with the covariates of Eq. (3), and event year 4 is not part of Eq. (6).
source:=Authors' calculations from LSEG ESG scores and Compustat Global.

kind:=table
caption:=Table 3|Robustness checks, timing of coverage, and heterogeneity by initial ESG score
csvfile:=table3_formatted.csv
widths:=1.9,1.15,1.15,1.15,1.15
note:=Cells show the average effect over event years 0 to 3 (0 to 2 in R5; the Eq. (11) coefficient in R6), with bootstrap standard errors in parentheses (firm-clustered in R6); R1 to R6 are pre-specified and R7 to R11 exploratory. \*, \*\*, and \*\*\* denote significance at 10%, 5%, and 1% (unadjusted p-values).
source:=Authors' calculations from LSEG ESG scores and Compustat Global.

@@ ia_intro
This Supplemental Appendix accompanies "Rated at the Peak? Firm Valuation around the First LSEG ESG Score in Five Southeast Asian Markets." Table S1 re-estimates the average effects of the first score over event years 0 to 3 after excluding one market at a time. Table S2 and Fig. S1 show the number of non-financial firms that received their first LSEG ESG score in each year, by market. Table S3 reports the estimates for each market separately, Table S4 the number of firm-years available for each outcome, Table S5 the relative-magnitude bounds of Eq. (10) in the paper, and Table S6 the number of scored and control firms by event year for ln MTB. The pre-analysis plan is provided with the replication package.

@@ exhibits_ia
kind:=table
caption:=Table S1|Leave-one-market-out estimates of the average effect of the first LSEG ESG score
csvfile:=tableIA1_formatted.csv
widths:=1.9,1.15,1.15,1.15,1.15
note:=Cells show the average effect over event years 0 to 3 without the named market, with bootstrap standard errors in parentheses. \*, \*\*, and \*\*\* denote significance at 10%, 5%, and 1% (unadjusted p-values).
source:=Authors' calculations from LSEG ESG scores and Compustat Global.

kind:=table
caption:=Table S2|Number of non-financial firms by year of first LSEG ESG score and market
csvfile:=tableIA2_formatted.csv
widths:=1.3,0.85,0.85,0.9,0.9,0.85,0.75
note:=Firms first scored in 2014 are excluded because they have no pre-coverage year.
source:=Authors' calculations from LSEG ESG scores.

kind:=figure
caption:=Fig. S1|Number of non-financial firms by year of first LSEG ESG score
png:=FigIA1.png
note:=Bars show the number of firms in the estimation sample first scored in each year, all five markets combined.
source:=Authors' calculations from LSEG ESG scores.

kind:=table
caption:=Table S3|Estimates of the average effect of the first LSEG ESG score by market
csvfile:=tableIA3_formatted.csv
widths:=1.2,1.1,1.1,1.1,1.1,0.9
note:=Cells show the average effect over event years 0 to 3 estimated within each market, with bootstrap standard errors in parentheses. \*, \*\*, and \*\*\* denote significance at 10%, 5%, and 1% (unadjusted p-values).
source:=Authors' calculations from LSEG ESG scores and Compustat Global.

kind:=table
caption:=Table S4|Firm-years and firms available for each outcome
csvfile:=tableIA4_formatted.csv
widths:=1.7,1.0,0.9,1.0,0.9,1.0
note:=Counts refer to the estimation sample; the last column is the share of firm-years with a missing outcome.
source:=Authors' calculations from LSEG ESG scores and Compustat Global.

kind:=table
caption:=Table S5|Relative-magnitude bounds for the average effect of the first LSEG ESG score
csvfile:=tableIA5_formatted.csv
widths:=1.7,0.6,1.2,0.9,1.6
note:=The bias bound is M̄ times the largest change between consecutive pre-coverage estimates times the weighted mean of (e + 1) over event years 0 to 3 (Eq. 10). The robust interval widens the bootstrap 95% interval by this bound.
source:=Authors' calculations from LSEG ESG scores and Compustat Global.

kind:=table
caption:=Table S6|Scored firms and control firms by event year for ln(MTB)
csvfile:=tableIA6_formatted.csv
widths:=1.2,1.3,1.1,2.2
note:=Scored firms are summed over cohorts; control firms are the smallest and largest number of never-scored firms across cohort cells.
source:=Authors' calculations from LSEG ESG scores and Compustat Global.
