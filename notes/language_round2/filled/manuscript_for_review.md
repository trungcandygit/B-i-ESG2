# Rated at the Peak? Firm Valuation around the First LSEG ESG Score in Five Southeast Asian Markets

Running title: Valuation around first ESG scores

## Abstract

Using the staggered first appearance of London Stock Exchange Group (LSEG) environmental, social, and governance (ESG) scores for 675 non-financial firms in five Southeast Asian markets, mostly Malaysian and Thai, and 2,613 never-scored firms, we estimate heterogeneity-robust difference-in-differences effects on market-to-book ratios. Before their first scored year, scored firms' market capitalization and market-to-book ratios grew faster than those of comparable firms. Under parallel trends, market-to-book ratios did not rise afterwards (estimate 0.002; 95% interval −0.046 to 0.048). The first scored year coincides with a valuation peak, and we detect no later gain.

Keywords: Difference-in-differences; ESG ratings; Firm valuation; Rating coverage; Selection; Southeast Asia; Staggered adoption

JEL classification: G14, G15, G32, M14, Q56

## 1. Introduction

Environmental, social, and governance (ESG) scores enter portfolio screens, index rules, and fund mandates, so whether a listed firm is scored at all can matter as much as its score. An unscored firm cannot enter a portfolio that holds only rated stocks, and a first score can widen the firm's investor base. Merton (1987) shows that a larger investor base raises a stock's price, and investors who value ESG attributes accept lower expected returns on assets they can classify as sustainable (Pástor et al., 2021; Pedersen et al., 2021). Both arguments predict that the initiation of ESG coverage raises a firm's valuation.

A second prediction reverses the direction of causality. Providers choose which firms to score and likely add a firm once it is large, liquid, or visible enough to matter to their clients, for example after it joins an index. Additions to a major index raise prices (Harris & Gurel, 1986; Shleifer, 1986), and part of the effect reverses within weeks (Harris & Gurel, 1986). If coverage follows growth in market value, a comparison of rated and unrated firms, or a regression pooling all years around coverage, attributes past growth to the rating.

The studies of rating coverage that we build on use U.S. firms and outcomes other than valuation. Tsang et al. (2024) link coverage by more ESG raters to fewer ESG violations, and Bikmetova and Pirinsky (2026) link additional coverage to lower toxic emissions, better ratings, and more ownership by high-ESG institutions. Dividends also change after coverage by non-financial rating agencies begins (Tsang et al., 2025). For valuation, sell-side analysts offer a closer analogue: the loss of analyst coverage lowers prices (Kelly & Ljungqvist, 2012), and the first report on a neglected stock earns a positive return driven by favorable coverage rather than by coverage itself (Demiroglu & Ryngaert, 2010). We do not know whether a first ESG score moves valuations in emerging markets, where most listed firms are unscored and coverage has expanded in waves.

We study Indonesia, Malaysia, the Philippines, Singapore, and Thailand. The London Stock Exchange Group (LSEG), whose scores were earlier distributed as Refinitiv ESG and ASSET4, extended coverage in market-specific waves: 577 of the 675 non-financial firms that entered coverage between 2015 and 2024 did so in 2020 to 2023. Most scored firms are Malaysian or Thai, and most listed firms remained unscored. We treat the first fiscal year with an LSEG ESG score as a staggered event and estimate group-time average treatment effects on the treated (ATT) with the estimator of Callaway and Sant'Anna (2021). This estimator avoids the biases of two-way fixed effects regressions under staggered timing and heterogeneous effects (Baker et al., 2022; Goodman-Bacon, 2021). The primary outcome is the log market-to-book (MTB) ratio. A pre-analysis plan, committed to version control before the estimation code and included in the replication package, records the hypotheses, sample rules, estimator, and robustness checks, and we label every later analysis as exploratory.

The evidence has three parts. First, over the four years from event year −5 to the base year, the market capitalization of scored firms grew 14.1 percent more and their MTB ratio 10.0 percent more than those of comparable never-scored firms. Second, under conditional parallel trends from the base year, the average effect on MTB over the first four years is 0.002, with a 95% confidence interval from −0.046 to 0.048. Third, when we date coverage one year later to allow for the time needed to publish a score, the effect becomes −0.068 (p = 0.004); because this decline is measured from the year of peak valuation, it cannot separate a reversal of the run-up from an effect of coverage. A static two-way fixed effects regression on the same data attributes a 6.6 percent MTB increase to coverage, showing how pooling turns selection into an apparent rating effect.

We do not claim that coverage has no effect on valuation. The run-up casts doubt on the parallel-trends assumption behind the post-coverage estimates. When we allow post-coverage departures from parallel trends of up to a quarter of the largest pre-coverage year-to-year change, following Rambachan and Roth (2023), the MTB interval widens to −0.071 to 0.073. Because the upper limit of the unadjusted interval lies just below a 5 percent increase, any such departure admits positive effects of that size. The data support an ordering of events: the first score follows relative growth and coincides with a valuation peak, and under parallel trends no heterogeneity-robust specification detects a later gain.

We contribute to research on the financial consequences of ESG ratings with emerging-market evidence on the extensive margin of coverage, and we show that selection into coverage matters for any comparison of rated and unrated firms. The results also show that pre-coverage dynamics, which pre-trend tests treat as a nuisance (Roth, 2022), can be the economic finding.

Section 2 reviews the literature and states the hypotheses, Section 3 describes the setting and data, and Sections 4 and 5 present the methods and results. Section 6 discusses the results, Section 7 states the limitations, and Section 8 concludes.

## 2. Related Literature and Hypotheses

### 2.1. Ratings, investor demand, and valuation

Two mechanisms link a first ESG score to a firm's valuation. Under investor recognition, a stock known to few investors trades at a discount because a small group bears its idiosyncratic risk (Merton, 1987), and a first score makes the firm visible to ESG-screening investors. Under investor preference, assets classified as sustainable command higher prices and lower expected returns (Pástor et al., 2021; Pedersen et al., 2021). Both predict that coverage raises valuation, the second more so for firms with a high initial score. Both also require investors to act on this particular score, yet U.S. ESG funds respond more to one provider's ratings than to those of others (Berg, Heeb, et al., 2022), and providers disagree (Berg, Kölbel, et al., 2022) in ways that are priced (Avramov et al., 2022; Gibson Brandon et al., 2021).

### 2.2. Coverage as a selection event

Rating coverage is not assigned at random. We expect providers to cover firms in the indices their clients track and firms that disclose enough to be scored, although our data do not include the provider's coverage rules. Mandatory sustainability reporting increases the information available about listed firms (Krueger et al., 2024), and larger firms receive higher scores from the provider we study (Dobrick et al., 2023). If providers select firms that have grown, a comparison of scored and unscored firms mixes the effect of coverage with the growth that led to it.

Sell-side coverage offers an analogy: losing analyst coverage lowers prices (Kelly & Ljungqvist, 2012), and the first coverage of a neglected stock raises its price only when the coverage is favorable (Demiroglu & Ryngaert, 2010). Any valuation effect of a first ESG score should then concentrate in firms with favorable scores and in firms that were less visible before coverage.

### 2.3. Hypotheses

The pre-analysis plan states three hypotheses, each tested two-sided.

H1 (primary): The initiation of LSEG ESG coverage changes the log MTB ratio of scored firms relative to comparable never-scored firms. The recognition and preference channels predict a positive effect; the selection view predicts no effect after coverage and relative growth before it.

H2 (secondary): Coverage changes log market capitalization, book leverage, and log total assets.

H3 (heterogeneity): The effect on log MTB differs between firms with initial scores above and below their cohort median, as the preference channel and the evidence on favorable first coverage suggest.

## 3. Institutional Setting and Data

### 3.1. ESG rating coverage in the five markets

Disclosure rules differ across the five markets. Singapore, the most developed market, requires every listed issuer to publish a comply-or-explain sustainability report for financial years ending on or after 31 December 2017 (Singapore Exchange, 2016). In Malaysia, FTSE Russell, another part of LSEG, scored only the FTSE Bursa Malaysia EMAS constituents, about 30 percent of listed companies, until Bursa Malaysia and LSEG agreed in November 2022 to score all Main and ACE Market companies (Bernama, 2022). We do not document the timing of reporting rules in the other four markets. The LSEG ESG score we study, formerly Refinitiv ESG, is a separate product, so some newly covered firms may already have had FTSE Russell or other scores that our data do not record.

Table S2 and Fig. S1 of the Supplemental Appendix show that coverage arrived in waves: 108 first scores in Thailand and Singapore in 2019 and 2020, and 289 in Malaysia in 2021 and 2022. Of the 675 scored firms, 404, or 59.9 percent, are Malaysian, and Malaysian and Thai firms together make up 84.3 percent. The pooled estimates are therefore weighted toward Malaysia and Thailand, and the Supplemental Appendix reports market-level estimates. The data do not record why coverage expanded when it did.

### 3.2. Sample and coverage timing

The data cover all 3,709 firms listed in the five markets from 2014 to 2024, or 40,799 firm-years, and combine the annual LSEG ESG score (LSEG, 2025) with accounting and market data from Compustat Global (S&P Global Market Intelligence, 2025). We use the ESG score, not the controversy-adjusted combined score. The files do not record the download date, so the vintage of recent, revisable scores is unknown. This data set also underlies a companion study with a different research question (details withheld for anonymous review). That study uses only firm-years with ESG and governance data and asks how reporting standards and board structure relate to the gap between ESG scores and controversy scores. The present paper uses the full listed universe, treats the first appearance of an ESG score as an event, and studies market valuation and financing. No outcome or treatment variable, estimate, table, or figure is shared between the two papers.

Dropping financial firms leaves 3,423 firms. A firm's treatment year, g, is its first fiscal year with an LSEG ESG score. Only 17 of the 675 scored firms have a later year without a score, so we treat coverage as permanent, the staggered-adoption setting of Callaway and Sant'Anna (2021). Excluding the 135 firms scored in 2014, which have no pre-coverage year, leaves a full firm-year grid of 3,288 firms and 36,168 firm-years: 675 firms first scored between 2015 and 2024 and 2,613 never-scored firms. A firm-year enters an estimate only if its outcome is observed in both the base year and the comparison year; MTB ratios at or below zero, which reflect negative book equity, are set to missing. Table S4 of the Supplemental Appendix reports firm-years by outcome, and Table S6 scored firms by event year. Of the 274 scored firms with a base-year MTB ratio in cohorts observed through event year 3, 271, or 98.9 percent, still have one in event year 3; the others have no MTB ratio in event year 3. Never-scored firms are much smaller on average, and many trade thinly. The comparison of changes adjusted for size, country, and industry does not need similar levels, but it needs enough never-scored firms of comparable size; a check in Section 4.5 drops small control firms.

The treatment year may precede the year in which investors first see a score. First, the score for fiscal year g draws on reports published after the year ends, so it reaches investors in year g + 1 at the earliest. Second, the provider has rewritten historical scores on a large scale (Berg et al., 2020), and scores for the five most recent fiscal years can change after publication (Sahin et al., 2023); if historical years were filled in when a firm entered coverage, the gap exceeds one year. Both features move the true publication date later, never earlier, so they cannot create the pre-coverage growth we report but can place pre-publication years in our post-coverage window. Section 5.4 therefore also dates coverage one year later.

### 3.3. Outcomes

The primary outcome is the natural logarithm of the MTB ratio, the market value of equity divided by its book value. The secondary outcomes are log market capitalization, log total assets, and book leverage, defined as total debt divided by total assets. Market capitalization moves with prices and share counts, which the data cannot separate because they contain neither stock returns nor shares outstanding, so we use MTB for valuation and market capitalization for size. Amounts are in U.S. dollars as recorded in the data set. We winsorize MTB, market capitalization, leverage, and total assets at the 1st and 99th percentiles of the pooled sample before taking logarithms.

## 4. Methods

### 4.1. Target parameter and identification

In the notation of Callaway and Sant'Anna (2021), let G~i~ be the first year in which firm i has an LSEG ESG score, with G~i~ = ∞ if it is never scored, and let Y~i,t~(g) be the potential outcome of firm i in year t if it were first scored in year g. The group-time average treatment effect on the treated is

$$latex \mathrm{ATT}(g,t)=\mathbb{E}\left[Y_{i,t}(g)-Y_{i,t}(\infty)\mid G_i=g\right] | (1)

the average effect in year t for firms first scored in year g. We identify it under conditional parallel trends relative to the year before coverage:

$$latex \mathbb{E}\left[Y_{i,t}(\infty)-Y_{i,g-1}(\infty)\mid X_i,G_i=g\right]=\mathbb{E}\left[Y_{i,t}(\infty)-Y_{i,g-1}(\infty)\mid X_i,G_i=\infty\right] | (2)

where X~i~ contains country and industry indicators and log total assets and its square, measured in year g − 1. Because assumption (2) concerns changes in outcomes, the size differences in Table 1 do not violate it by themselves, but a different growth path before coverage would. We test this implication with the pre-coverage estimates but do not rely on the test alone.

### 4.2. Estimation

For each cohort g and year t, we regress the long difference ΔY~i,t~ = Y~i,t~ − Y~i,g−1~ on X~i~ among never-scored firms (Sant'Anna & Zhao, 2020):

$$latex \Delta Y_{i,t}=X_i'\beta_{g,t}+u_{i,t},\qquad G_i=\infty | (3)

where β~g,t~ is the cell's coefficient vector and u~i,t~ the error. We omit the propensity-score model of the doubly robust estimator because size overlap is poor: 24.6 percent of scored firms are larger in the base year than the 95th percentile of never-scored firms. For the largest scored firms the outcome regression therefore extrapolates, and check R4 trims controls only from below. The estimated group-time effect is

$$latex \widehat{\mathrm{ATT}}(g,t)=\frac{1}{N_{g,t}}\sum_{i:\,G_i=g}\left(\Delta Y_{i,t}-X_i'\hat{\beta}_{g,t}\right) | (4)

where N~g,t~ is the number of firms first scored in year g with data in years g − 1 and t, and β̂~g,t~ is estimated from Eq. (3). We average by years since coverage, e = t − g, weighting cohorts by their number of scored firms (Callaway & Sant'Anna, 2021):

$$latex \hat{\theta}(e)=\sum_{g}\frac{N_{g,g+e}}{\sum_{h}N_{h,h+e}}\,\widehat{\mathrm{ATT}}(g,g+e) | (5)

where h indexes cohorts. The headline estimate averages all cells from the first scored year to three years later with the same weights:

$$latex \hat{\theta}_{\mathrm{post}}=\frac{\sum_{(g,t):\,0\le t-g\le 3}N_{g,t}\,\widehat{\mathrm{ATT}}(g,t)}{\sum_{(g,t):\,0\le t-g\le 3}N_{g,t}} | (6)

Cohorts first scored after 2021 are not observed for all four post-coverage years, so cohort composition changes across event years; we therefore also report estimates for the cohorts observed through event year three.

Three design choices need comment. First, the baseline controls are never-scored firms; later-scored firms, which may also be growing toward the provider's universe, join them only in check R1. Second, all comparisons, including pre-coverage ones, use year g − 1 as the base year, so a negative estimate θ̂(e) for e ≤ −2 means that scored firms grew faster than comparable never-scored firms from year g + e to year g − 1. Third, the covariates are measured at the end of any run-up. Because the provider's scores rise with firm size (Dobrick et al., 2023), conditioning on base-year size matches scored firms to never-scored firms of similar size and can absorb part of the run-up, so we also report estimates without covariates and estimates that condition on pre-coverage growth.

### 4.3. Inference

We bootstrap the aggregated effects by resampling firms with their full time series, a nonparametric alternative to the multiplier bootstrap of Callaway and Sant'Anna (2021). All specifications share the same 999 draws and fixed seed, so differences between specifications have a valid joint distribution. We report the bootstrap standard error, the percentile 95% confidence interval, and a normal-approximation two-sided p-value. The minimum detectable effect (MDE) at 80% power in a two-sided 5% test is

$$latex \mathrm{MDE}=(z_{0.975}+z_{0.80})\,\widehat{\mathrm{SE}}\approx 2.8\,\widehat{\mathrm{SE}} | (7)

where z~0.975~ and z~0.80~ are standard normal quantiles and the hatted SE is the bootstrap standard error. We test the primary outcome at the 5% level and Holm-adjust the p-values of the three secondary outcomes but not the confidence intervals, so an interval that excludes zero can accompany an adjusted p-value above 5%, as for total assets in Table 2. The joint test of parallel pre-trends is

$$latex W=\hat{\theta}_{\mathrm{pre}}'\,\hat{V}_{\mathrm{pre}}^{-1}\,\hat{\theta}_{\mathrm{pre}}\ \sim\ \chi^2_{4} | (8)

where θ̂~pre~ stacks the estimates for e = −5 to −2 and V̂~pre~ is their bootstrap covariance matrix. Because pre-trend tests can have low power and conditioning on them can distort inference (Roth, 2022), we report W as a diagnostic and do not condition the analysis on it.

Coverage arrived in market-level waves, so a market-year shock can affect many scored firms at once. The country indicators in Eq. (3) absorb market-wide changes within each cell, and we report leave-one-market-out estimates; five markets are too few clusters for a reliable market-level bootstrap. The firm-level bootstrap does not account for correlation within market-level coverage waves, so the confidence intervals and pre-trend p-values may be too narrow.

### 4.4. Sensitivity to departures from parallel trends

Because the pre-coverage estimates cast doubt on Eq. (2), we add two exploratory checks that the pre-analysis plan did not contain. The first removes a linear pre-coverage trend that passes through zero in the base year:

$$latex \hat{b}=\frac{\sum_{e=-5}^{-1}(e+1)\,\hat{\theta}(e)}{\sum_{e=-5}^{-1}(e+1)^{2}},\qquad \tilde{\theta}(e)=\hat{\theta}(e)-\hat{b}\,(e+1) | (9)

where b̂ is the fitted slope and θ̃(e) is the trend-adjusted estimate, which we average over e = 0 to 3 with the weights of Eq. (6). The second bounds the bias, in the spirit of the relative-magnitudes restriction of Rambachan and Roth (2023). Let δ(e) denote the post-coverage violation of Eq. (2) in event year e. We assume that it changes from year to year by at most M̄ times Δ, the largest change between consecutive pre-coverage estimates:

$$latex \left|\delta(e)-\delta(e-1)\right|\le \bar{M}\,\max_{s\le -1}\left|\hat{\theta}(s)-\hat{\theta}(s-1)\right|\equiv \bar{M}\,\Delta,\qquad \delta(-1)=0 | (10)

where s indexes pre-coverage event years. The bias for event year e is then at most M̄Δ(e + 1), and we widen the headline confidence interval by the weighted average of this bound. This construction is conservative and simpler than the confidence sets of Rambachan and Roth (2023), which we do not compute. We also add to X~i~ the growth of log market capitalization from year g − 3 to year g − 1, which compares scored firms with never-scored firms of similar pre-coverage growth.

### 4.5. Benchmark regression and robustness checks

As a benchmark, we estimate on scored and never-scored firms the static two-way fixed effects regression that Goodman-Bacon (2021) and Baker et al. (2022) analyze:

$$latex Y_{i,t}=\alpha_i+\lambda_t+\beta\,D_{i,t}+\varepsilon_{i,t},\qquad D_{i,t}=\mathbf{1}\left[t\ge G_i\right] | (11)

where α~i~ and λ~t~ are firm and year effects, D~i,t~ marks years from the first score onward, and ε~i,t~ is the error; we use no covariates and all event years and cluster standard errors by firm. The coefficient β compares all post-coverage with all pre-coverage years, so it averages over any run-up, and with staggered timing it uses already-scored firms as controls for later cohorts, which biases β when effects change over time.

The pre-analysis plan fixed rows R1 to R6 of Table 3: four robustness checks, a placebo, and the benchmark of Eq. (11). The checks add not-yet-scored firms to the controls; drop the covariates; exclude the 2020 and 2021 cohorts; and keep only control firms whose log total assets in year g − 1 reach the 10th percentile of the cohort's scored firms, a lower bound only. The placebo dates coverage three years early and uses only years before the actual score. Besides the checks in Section 4.4, four analyses are exploratory: dating coverage one year later, with its own pre-trend test and bounds; restricting the sample to cohorts observed through event year three; excluding one market at a time; and estimating the model by market.

### 4.6. Use of generative AI

The authors used Claude (Anthropic) through Claude Code in September 2026 to screen candidate research questions, draft the pre-analysis plan, write and debug the R code, draft and edit the text, and search for and check references. Five instances of the tool, each in a separate context, also produced simulated referee reports that informed the revision. The authors reviewed and approved the research question and the pre-analysis plan before any estimation, reviewed every output of the tool, checked each reported number against the R output files, and take full responsibility for the content.

## 5. Results

### 5.1. Which firms get scored

Table 1 compares scored firms in the year before their first score with never-scored firm-years. Scored firms are much larger: their median market capitalization is 203.2 million U.S. dollars against 42.2 million, and their median total assets are 4.3 times as large, with normalized differences of 0.69 and 0.61. Their mean MTB ratio is 2.37 against 1.84, and the medians agree, while leverage barely differs (normalized difference −0.04). Return on assets is available for far fewer firm-years, so we use it only descriptively. These gaps fit a provider that covers large and visible firms (Section 2.2), and the MTB gap fits the pre-coverage growth in Section 5.3. Size also matters for the scores themselves, because larger firms receive higher scores from this provider (Dobrick et al., 2023). We therefore compare changes and adjust for size, country, and industry in Eq. (3).

### 5.2. Average effects of the first score

Table 2 reports the headline estimates of Eq. (6). The effect on log MTB is 0.002, with a standard error of 0.024 and a 95% confidence interval from −0.046 to 0.048, which under assumption (2) excludes changes in the MTB ratio outside −4.5 to 4.9 percent. The minimum detectable effect from Eq. (7) is 0.067, about 7.0 percent, detected with 80% probability; the confidence interval, not the MDE, gives the effects compatible with the data, and it includes increases of a few percent. No outcome changes significantly at the 5% level once the secondary outcomes are Holm-adjusted: log market capitalization changes by −0.055 (p = 0.134), leverage by 0.8 percentage points (p = 0.134), and total assets by 0.044 log points (p = 0.053, against an unadjusted p = 0.018). Under assumption (2), the MTB estimate gives no sign of the positive effect that the recognition channel of Merton (1987) and the preference channel of Pástor et al. (2021) and Pedersen et al. (2021) predict. Hartzmark and Sussman (2019) show that fund flows respond to newly published sustainability ratings; under assumption (2), we detect no lasting valuation gain from such demand, although the interval admits gains of up to 4.9 percent.

### 5.3. Dynamics before and after the first score

Fig. 1 plots the event-time estimates of Eq. (5) for all four outcomes. Before the first score, the coefficients for market capitalization and MTB are negative and rise toward zero. In event years −5 and −4, four and three years before the base year, the MTB estimates are −0.095 and −0.082 (p = 0.015 and p = 0.015). Over these four years, scored firms' market capitalization grew 14.1 percent more than that of comparable firms, and their MTB ratio 10.0 percent more. This run-up is the pattern that the selection view in Section 2.2 predicts. The joint test of Eq. (8) rejects parallel pre-trends for market capitalization (p = 0.022) but not at the 5% level for MTB (p = 0.074); as Roth (2022) cautions, this non-rejection is not evidence that pre-trends are absent. Total assets follow a weaker version of the pattern, and leverage falls toward the base year (pre-trend p = 0.002).

After the first score, the MTB coefficients for event years 0 to 3 lie between −0.044 and 0.017, and none differs from zero at the 5% level. The market capitalization estimate is −0.072 in event year 1 (p = 0.029) and not significant later. Only 141 scored firms from 6 cohorts reach event year 4, so we plot that year but exclude it from Eq. (6); its estimates are −0.077 for MTB (p = 0.209) and 0.088 for market capitalization (p = 0.153). Total assets rise to 0.090 by event year 3, and leverage returns toward its earlier level. The valuation gap thus widens before coverage and stops widening afterwards, with no mirror image of the price decline that follows a loss of analyst coverage (Kelly & Ljungqvist, 2012). Without data on share issuance, we cannot tell whether the pre-coverage growth in market capitalization reflects rising prices, new shares, or both, so we base statements about valuation on the MTB ratio.

### 5.4. Timing of coverage and sensitivity to pre-trends

Table 3 reports the robustness checks; rows R1 to R6 were pre-specified, and rows R7 to R11 are exploratory. Row R10 dates coverage one year after the first scored fiscal year, when a score could first have been published; because scores were backfilled or revised (Berg et al., 2020; Sahin et al., 2023), this also moves the base year closer to the end of the run-up. The MTB effect is then −0.068, a change of about −6.6 percent (95% interval −0.116 to −0.020; p = 0.004), estimated from 646 scored and 2,412 control firms. It assumes parallel trends from the first scored year, the year of peak valuation. Its joint pre-trend test gives p = 0.072, and with M̄ = 0.25 in Eq. (10) its robust interval, from −0.138 to 0.002, includes zero; the decline loses significance once M̄ reaches 0.23. If firms are selected at an unusually high valuation that later partly reverses, the decline measures the reversal and can hide an offsetting positive coverage effect; if valuations would otherwise have stayed at their peak, coverage lowered them. The data cannot separate the two readings.

Row R11 keeps the 7 cohorts first scored by 2021 and observed through event year 3, with 273 scored and 2,032 control firms. Its MTB effect of −0.008 (p = 0.806) shows that changing cohort composition does not explain the headline estimate, although the interval widens. Row R7 removes a linear pre-trend with Eq. (9). The MTB effect becomes −0.052, with a 95% interval from −0.118 to 0.014; it is negative because a continued run-up would have raised valuations further. Row R8 compares scored firms with never-scored firms that grew at a similar rate before coverage, and so share any tendency to revert, and gives an MTB effect of 0.028 (p = 0.265). This comparison partly accounts for any reversal of temporary demand, like the partly reversing price effects of index additions (Harris & Gurel, 1986), and shows no significant gain, but its interval, from −0.021 to 0.077, admits gains of several percent. It conditions only on market capitalization growth from year g − 3 to year g − 1, and control firms matched on past growth can themselves revert, so it does not settle the reversal question.

Table S5 of the Supplemental Appendix reports the bounds of Eq. (10), which follow the relative-magnitudes logic of Rambachan and Roth (2023). With a largest change of 0.046 between consecutive pre-coverage MTB estimates, the robust interval for the MTB effect is −0.071 to 0.073 with M̄ = 0.25 and widens to −0.147 to 0.148 with M̄ = 1. Every interval includes zero and admits moderate effects in either direction. The upper limit of the unadjusted interval lies just below a 5 percent increase in the MTB ratio (0.049 log points): any departure with M̄ above about 0.01 admits an increase of 5 percent, and any departure at all admits a positive effect. The post-coverage null and the absence of a detected positive effect are therefore both conditional on assumption (2).

### 5.5. Robustness and heterogeneity

In the pre-specified rows R1 to R4, the effect on log MTB is −0.001 when not-yet-scored firms join the controls, as Callaway and Sant'Anna (2021) propose, 0.025 without the outcome-regression covariates of Sant'Anna and Zhao (2020), 0.031 without the 2020 and 2021 cohorts, and 0.016 when control firms below the size range of scored firms are dropped; none differs from zero at the 10% level, so the valuation result is unchanged. The size results are less stable. Under the size restriction, the market capitalization effect shrinks to −0.007 and the asset effect is 0.101, against 0.011 without covariates, so we do not read the asset estimate in Table 2 as evidence that coverage causes growth.

The placebo in row R5, which dates coverage three years before the first score within pre-score years, yields 0.059 on log MTB (p = 0.010) and 0.134 on log market capitalization (p < 0.001). This failure restates the pre-coverage growth of Fig. 1 and adds no independent evidence. The static two-way fixed effects regression of Eq. (11) in row R6 attributes increases of 0.064 in log MTB (p = 0.014) and 0.185 in log market capitalization to coverage, because it compares all post-coverage with all earlier years and so counts part of the run-up as a rating effect. Part of its gap to the baseline reflects the covariates and the event window, as the larger estimate without covariates in row R2 shows; the remainder illustrates the biases of static regressions under staggered timing described by Goodman-Bacon (2021) and Baker et al. (2022).

When row R9 and Table S1 of the Supplemental Appendix exclude one market at a time, the MTB effect ranges from −0.007 to 0.017 and is −0.003 without Malaysia (p = 0.940), whereas the market capitalization effect turns to 0.037, so its negative baseline estimate reflects the large Malaysian cohorts of 2021 and 2022. Estimated market by market in Table S3, the MTB effect is 0.009 in Malaysia, with 372 scored firms, and 0.027 in Thailand, with 157. Indonesia, the Philippines, and Singapore have few scored firms and imprecise estimates, including a small one for Singapore, where reporting became mandatory from financial year 2017 (Krueger et al., 2024; Singapore Exchange, 2016).

The last three rows of Table 3 split scored firms at the cohort median of their first ESG score. The MTB effect is −0.019 for high-score and 0.022 for low-score entrants. The difference of −0.041 (standard error 0.040, p = 0.307) is not significant, but with a minimum detectable value of 0.113 the test cannot exclude moderate differences. The preference channel (Pedersen et al., 2021) and the evidence on favorable first coverage (Demiroglu & Ryngaert, 2010) predict such a difference; a weak signal, given that providers disagree (Berg, Kölbel, et al., 2022; Christensen et al., 2022), is one reason it may be absent. The split also uses initial scores that may have been revised since publication (Sahin et al., 2023).

### 5.6. Economic magnitude

Under assumption (2), the largest increase compatible with the headline interval is of the same order as the announcement return of 4.86 percent that Demiroglu and Ryngaert (2010) report for the first analyst coverage of neglected stocks, and it exceeds the increase of more than 3 percent that Harris and Gurel (1986) report for additions to the S&P 500, most of which reversed within about two weeks. Annual year-end ratios would miss such short-lived effects, so our estimates concern lasting revaluation of the kind a permanent rise in investor recognition would produce (Chen et al., 2004; Merton, 1987). Under the same assumption, a lasting effect half as large as the MTB run-up in Section 5.3 would lie at the upper end of the headline interval, so any such effect is small relative to the growth that precedes coverage.

## 6. Discussion

### 6.1. Interpreting the post-coverage path

The flat post-coverage MTB path admits three readings, depending on the counterfactual pre-coverage trend (Rambachan & Roth, 2023; Roth, 2022). With parallel paths from the base year, coverage had no effect within the interval of Section 5.2. With a continued run-up, coverage lowered valuations relative to trend. With a partly transitory run-up, the flat path is consistent with a positive coverage effect that offset a reversal. The third reading deserves weight, because firms selected after relative growth likely carry transitory value, as the partial reversal of index-addition effects illustrates (Chen et al., 2004; Harris & Gurel, 1986).

Three results bear on reversal. First, dating coverage one year later yields an MTB decline after the first scored year, which a reversal would produce and a positive coverage effect could partly offset; the estimate cannot separate the two. Second, against never-scored firms with similar pre-coverage growth, the MTB effect is small and insignificant, but this comparison conditions on a single growth measure, and its interval admits gains of several percent. Third, the bounds in Section 5.4 include zero for every M̄ we consider but also effects of several percent in both directions. The evidence therefore does not show that coverage has no effect: no heterogeneity-robust specification detects a valuation gain, and the bounds do not exclude one. The clearest result is the ordering of events: the first scored fiscal year follows relative growth and coincides with a valuation peak.

Market-level MTB effects agree: they are close to zero in Malaysia and Thailand, the two largest scored samples, and no market shows a significant positive effect. Because the coverage waves came in 2019 and 2020 in Thailand and Singapore but in 2021 and 2022 in Malaysia, a shock common to all five markets is a less likely explanation, although the waves may reflect market-specific disclosure rules (Krueger et al., 2024; Singapore Exchange, 2016) or unobserved index changes.

### 6.2. Relation to prior evidence

Sell-side evidence suggests why a first ESG score might move prices: losing coverage lowers prices (Kelly & Ljungqvist, 2012), a favorable first report on a neglected stock raises them (Demiroglu & Ryngaert, 2010), and Hartzmark and Sussman (2019) document a demand channel through fund flows. Two features may explain the absence of a gain. ESG scores rarely carry cash-flow news and arrive after the firm's own disclosures. Our firms were also large and visible before coverage (Table 1), and some may have had FTSE Russell scores, leaving less room for the recognition channel of Merton (1987); foreign-ownership limits in these markets could further mute recognition through foreign ESG investors. Without data on ownership, investor attention, foreign holdings, or these limits, we cannot test either explanation.

The results also fit the evidence on rating disagreement. If ESG funds follow one provider more than others (Berg, Heeb, et al., 2022), coverage by another provider may matter little for demand, and dispersion across providers (Berg, Kölbel, et al., 2022; Christensen et al., 2022) weakens the information in any single score. U.S. studies find that coverage changes firm conduct (Bikmetova & Pirinsky, 2026; Tsang et al., 2024) and financial policy (Tsang et al., 2025); we find no stable change in leverage or assets and observe no measures of conduct.

### 6.3. Implications

The main implication is methodological. A cross-sectional valuation premium of rated firms, or a static two-way fixed effects estimate, can reflect selection into coverage rather than an effect of ratings. Here the static regression attributes an MTB increase of 6.6 percent to coverage, whereas the heterogeneity-robust estimator and its event-time profile trace most of the gap to pre-coverage growth, with the covariates and event window accounting for the rest (Section 5.5; Callaway & Sant'Anna, 2021; Roth, 2022). Studies comparing rated and unrated firms in these markets should model coverage timing and report pre-coverage dynamics.

For listed firms in the five markets, the estimates give no support, under assumption (2), to the expectation that a first LSEG score will raise their valuation through investor recognition or preferences (Merton, 1987; Pástor et al., 2021); the confidence interval excludes increases above 4.9 percent, but smaller effects remain possible. The evidence does not speak to short-lived price effects around publication, to unscored firms, or to outcomes other than valuation and financing. For investors and exchanges, scored firms are a selected group with a distinct valuation history. These data cannot show whether the ordering extends to other markets or providers.

## 7. Limitations

The study has eight limitations. First, the provider chooses when to cover a firm, and we have no coverage variation unrelated to firm performance. The post-coverage estimates rest on conditional parallel trends from the base year, which the pre-coverage estimates question, and our sensitivity analysis uses a linear trend and a simplified bound, not the confidence sets of Rambachan and Roth (2023). Second, the data are annual and may contain backfilled or revised scores, so we observe neither first-score publication dates nor announcement returns; later dating closes only part of this gap. Third, we observe only LSEG coverage; for firms with earlier scores from other providers, such as FTSE Russell scores for Malaysian index constituents (Bernama, 2022), the event is an additional score. Fourth, without stock returns, shares outstanding, ownership, foreign holdings, foreign-ownership limits, index membership, or sustainability report dates, we cannot separate price changes from share issuance, test the recognition channel directly, or link first scores to index entry or first sustainability reports. Fifth, a few market capitalization values are implausibly large; pooled winsorization limits but does not correct them, an erroneous base-year value enters every group-time estimate of its cohort, and return on assets covers a minority of firm-years. Sixth, Malaysian and Thai firms make up 84.3 percent of scored firms and dominate the pooled estimates, and the firm-level bootstrap does not account for correlation within market-level coverage waves, so the intervals may be too narrow. Seventh, the minimum detectable effect on log MTB is 0.067, about 7.0 percent, so smaller effects would be detected with less than 80% probability; under parallel trends, the confidence interval excludes only increases above 4.9 percent. Eighth, the unrecorded download date leaves the vintage of revisable recent scores uncertain, and we do not document the timing of disclosure rules outside Singapore.

## 8. Conclusion

Using the staggered first appearance of LSEG ESG scores for 675 non-financial firms in five Southeast Asian markets, we find that scored firms, mostly Malaysian and Thai, grew faster than comparable never-scored firms before their first scored year and, under parallel trends, did not gain in market-to-book ratio afterwards (headline effect 0.002; 95% interval −0.046 to 0.048). Dating coverage one year later gives −0.068, a decline that may reflect a reversal of the run-up. The first scored year thus coincides with a valuation peak, although departures from parallel trends like those before coverage would admit effects of several percent either way. Comparisons of rated and unrated firms that ignore coverage timing will attribute this selection to the rating.

## References

Avramov, D., Cheng, S., Lioui, A., & Tarelli, A. (2022). Sustainable investing with ESG rating uncertainty. *Journal of Financial Economics*, *145*(2), 642–664. https://doi.org/10.1016/j.jfineco.2021.09.009

Baker, A. C., Larcker, D. F., & Wang, C. C. Y. (2022). How much should we trust staggered difference-in-differences estimates? *Journal of Financial Economics*, *144*(2), 370–395. https://doi.org/10.1016/j.jfineco.2022.01.004

Berg, F., Fabisik, K., & Sautner, Z. (2020). *Is history repeating itself? The (un)predictable past of ESG ratings* (Finance Working Paper No. 708/2020). European Corporate Governance Institute. https://ssrn.com/abstract=3722087

Berg, F., Heeb, F., & Kölbel, J. F. (2022). *The economic impact of ESG ratings* (SAFE Working Paper No. 439). Leibniz Institute for Financial Research SAFE. https://ssrn.com/abstract=4088545

Berg, F., Kölbel, J. F., & Rigobon, R. (2022). Aggregate confusion: The divergence of ESG ratings. *Review of Finance*, *26*(6), 1315–1344. https://doi.org/10.1093/rof/rfac033

Bernama. (2022, November 2). *Bursa Malaysia signs sustainability MoU with London Stock Exchange Group*. https://www.bernama.com/en/news.php?id=2134522

Bikmetova, N., & Pirinsky, C. A. (2026). Do ESG rating agencies improve ESG performance? *Journal of Business Ethics*, *204*(2), 335–365. https://doi.org/10.1007/s10551-025-06063-0

Callaway, B., & Sant'Anna, P. H. C. (2021). Difference-in-differences with multiple time periods. *Journal of Econometrics*, *225*(2), 200–230. https://doi.org/10.1016/j.jeconom.2020.12.001

Chen, H., Noronha, G., & Singal, V. (2004). The price response to S&P 500 index additions and deletions: Evidence of asymmetry and a new explanation. *Journal of Finance*, *59*(4), 1901–1929. https://doi.org/10.1111/j.1540-6261.2004.00683.x

Christensen, D. M., Serafeim, G., & Sikochi, A. (2022). Why is corporate virtue in the eye of the beholder? The case of ESG ratings. *The Accounting Review*, *97*(1), 147–175. https://doi.org/10.2308/TAR-2019-0506

Demiroglu, C., & Ryngaert, M. D. (2010). The first analyst coverage of neglected stocks. *Financial Management*, *39*(2), 555–584. https://doi.org/10.1111/j.1755-053X.2010.01084.x

Dobrick, J., Klein, C., & Zwergel, B. (2023). Size bias in Refinitiv ESG data. *Finance Research Letters*, *55*, Article 104014. https://doi.org/10.1016/j.frl.2023.104014

Gibson Brandon, R., Krueger, P., & Schmidt, P. S. (2021). ESG rating disagreement and stock returns. *Financial Analysts Journal*, *77*(4), 104–127. https://doi.org/10.1080/0015198X.2021.1963186

Goodman-Bacon, A. (2021). Difference-in-differences with variation in treatment timing. *Journal of Econometrics*, *225*(2), 254–277. https://doi.org/10.1016/j.jeconom.2021.03.014

Harris, L., & Gurel, E. (1986). Price and volume effects associated with changes in the S&P 500 list: New evidence for the existence of price pressures. *Journal of Finance*, *41*(4), 815–829. https://doi.org/10.1111/j.1540-6261.1986.tb04550.x

Hartzmark, S. M., & Sussman, A. B. (2019). Do investors value sustainability? A natural experiment examining ranking and fund flows. *Journal of Finance*, *74*(6), 2789–2837. https://doi.org/10.1111/jofi.12841

Kelly, B., & Ljungqvist, A. (2012). Testing asymmetric-information asset pricing models. *Review of Financial Studies*, *25*(5), 1366–1413. https://doi.org/10.1093/rfs/hhr134

Krueger, P., Sautner, Z., Tang, D. Y., & Zhong, R. (2024). The effects of mandatory ESG disclosure around the world. *Journal of Accounting Research*, *62*(5), 1795–1847. https://doi.org/10.1111/1475-679X.12548

LSEG. (2025). *LSEG ESG scores (ESG score field), annual, 2014–2024* [Data set]. LSEG Workspace.

Merton, R. C. (1987). A simple model of capital market equilibrium with incomplete information. *Journal of Finance*, *42*(3), 483–510. https://doi.org/10.1111/j.1540-6261.1987.tb04565.x

Pástor, Ľ., Stambaugh, R. F., & Taylor, L. A. (2021). Sustainable investing in equilibrium. *Journal of Financial Economics*, *142*(2), 550–571. https://doi.org/10.1016/j.jfineco.2020.12.011

Pedersen, L. H., Fitzgibbons, S., & Pomorski, L. (2021). Responsible investing: The ESG-efficient frontier. *Journal of Financial Economics*, *142*(2), 572–597. https://doi.org/10.1016/j.jfineco.2020.11.001

Rambachan, A., & Roth, J. (2023). A more credible approach to parallel trends. *Review of Economic Studies*, *90*(5), 2555–2591. https://doi.org/10.1093/restud/rdad018

Roth, J. (2022). Pretest with caution: Event-study estimates after testing for parallel trends. *American Economic Review: Insights*, *4*(3), 305–322. https://doi.org/10.1257/aeri.20210236

Sahin, Ö., Bax, K., Paterlini, S., & Czado, C. (2023). The pitfalls of (non-definitive) environmental, social, and governance scoring methodology. *Global Finance Journal*, *56*, Article 100780. https://doi.org/10.1016/j.gfj.2022.100780

Sant'Anna, P. H. C., & Zhao, J. (2020). Doubly robust difference-in-differences estimators. *Journal of Econometrics*, *219*(1), 101–122. https://doi.org/10.1016/j.jeconom.2020.06.003

Shleifer, A. (1986). Do demand curves for stocks slope down? *Journal of Finance*, *41*(3), 579–590. https://doi.org/10.1111/j.1540-6261.1986.tb04518.x

Singapore Exchange. (2016). *SGX Mainboard Rules 711A and 711B: Sustainability report* (introduced in 2016 and applicable to financial years ending on or after 31 December 2017; the linked page shows the current, amended text). https://rulebook.sgx.com/rulebook/711a

S&P Global Market Intelligence. (2025). *Compustat Global, annual fundamentals, 2014–2024* [Data set].

Tsang, A., Wang, Y., Xiang, Y., & Yu, L. (2024). The rise of ESG rating agencies and management of corporate ESG violations. *Journal of Banking & Finance*, *169*, Article 107312. https://doi.org/10.1016/j.jbankfin.2024.107312

Tsang, A., Wang, Y., Xiang, Y., & Yu, L. (2025). ESG ratings and dividend changes: Evidence from the initiation of nonfinancial agency coverage. *Corporate Governance: An International Review*, *33*, 554–577. https://doi.org/10.1111/corg.12615


## Exhibits

### Table 1 Characteristics of scored firms in the year before their first LSEG ESG score and of never-scored firm-years

| Variable | Scored mean | Scored median | Scored N | Never-scored mean | Never-scored median | Never-scored N | Norm. diff. |
|---|---|---|---|---|---|---|---|
| Market-to-book ratio | 2.37 | 1.26 | 629 | 1.84 | 0.95 | 20,706 | 0.17 |
| Market capitalization (USD million) | 762.5 | 203.2 | 655 | 157.3 | 42.2 | 22,417 | 0.69 |
| Book leverage | 0.235 | 0.217 | 632 | 0.241 | 0.205 | 22,333 | −0.04 |
| Total assets (USD million) | 882.1 | 294.3 | 655 | 238.0 | 68.7 | 24,814 | 0.61 |
| Return on assets | 0.064 | 0.057 | 385 | 0.045 | 0.046 | 5,614 | 0.21 |

Note: Scored firms are measured in the year before their first LSEG ESG score; never-scored firms contribute all firm-years from 2014 to 2024. Norm. diff. is the difference in means divided by the square root of the average of the two variances.

Source: Authors' calculations from LSEG ESG scores and Compustat Global.

### Table 2 Average effect of the first LSEG ESG score over event years 0 to 3

| Outcome | ATT | SE | 95% CI | p-value | MDE | Pre-trend p | Scored firms | Control firms |
|---|---|---|---|---|---|---|---|---|
| ln(MTB) | 0.002 | 0.024 | [−0.046, 0.048] | 0.936 | 0.067 | 0.074 | 628 | 2,412 |
| ln(market cap) | −0.055 | 0.030 | [−0.109, 0.003] | 0.134 | 0.084 | 0.022 | 635 | 2,447 |
| Leverage (ratio) | 0.008 | 0.005 | [−0.001, 0.018] | 0.134 | 0.014 | 0.002 | 631 | 2,520 |
| ln(assets) | 0.044 | 0.018 | [0.007, 0.081] | 0.053 | 0.051 | 0.083 | 655 | 2,603 |

Note: ATT is the average effect over event years 0 to 3 (Eq. 6), with bootstrap standard errors and unadjusted 95% intervals; p-values of the three secondary outcomes are Holm-adjusted. MDE is the minimum detectable effect at 80% power, and pre-trend p is the joint test of Eq. (8).

Source: Authors' calculations from LSEG ESG scores and Compustat Global.

### Fig. 1 Event-time effects of the first LSEG ESG score on valuation, size, and leverage

[Figure image file: Fig1.png in this folder]

Note: Markers show the estimates of Eq. (5) relative to event year −1 (set to zero), with bootstrap 95% intervals; open markers and dotted bars are years before the first score. Controls are never-scored firms with the covariates of Eq. (3), and event year 4 is not part of Eq. (6).

Source: Authors' calculations from LSEG ESG scores and Compustat Global.

### Table 3 Robustness checks, timing of coverage, and heterogeneity by initial ESG score

| Specification | ln(MTB) | ln(market cap) | Leverage (ratio) | ln(assets) |
|---|---|---|---|---|
| Baseline | 0.002 (0.024) | −0.055* (0.030) | 0.008* (0.005) | 0.044** (0.018) |
| R1 Not-yet-scored in controls | −0.001 (0.024) | −0.053* (0.029) | 0.009* (0.005) | 0.040** (0.017) |
| R2 No covariates | 0.025 (0.022) | 0.016 (0.025) | 0.012*** (0.004) | 0.011 (0.015) |
| R3 No 2020–2021 cohorts | 0.031 (0.027) | −0.029 (0.036) | 0.004 (0.005) | 0.020 (0.019) |
| R4 Size-trimmed controls | 0.016 (0.025) | −0.007 (0.031) | 0.009* (0.005) | 0.101*** (0.017) |
| R5 Placebo, 3 years early | 0.059*** (0.023) | 0.134*** (0.028) | −0.002 (0.005) | 0.115*** (0.015) |
| R6 Two-way fixed effects | 0.064** (0.026) | 0.185*** (0.032) | 0.005 (0.005) | 0.117*** (0.022) |
| R7 Pre-trend removed | −0.052 (0.034) | −0.134*** (0.042) | 0.023*** (0.006) | 0.011 (0.023) |
| R8 Pre-coverage growth | 0.028 (0.025) | −0.034 (0.032) | 0.008 (0.005) | 0.043** (0.018) |
| R9 No Malaysia | −0.003 (0.035) | 0.037 (0.038) | 0.022*** (0.008) | 0.046 (0.029) |
| R10 Dated 1 year later | −0.068*** (0.024) | −0.073** (0.030) | 0.007 (0.005) | −0.006 (0.017) |
| R11 Cohorts to 2021 | −0.008 (0.033) | −0.030 (0.037) | 0.013* (0.007) | 0.082*** (0.027) |
| High initial score | −0.019 (0.030) | −0.029 (0.034) | 0.009 (0.006) | 0.038* (0.022) |
| Low initial score | 0.022 (0.033) | −0.081* (0.042) | 0.007 (0.006) | 0.049** (0.022) |
| High minus low | −0.041 (0.040) | 0.052 (0.047) | 0.002 (0.008) | −0.011 (0.025) |

Note: Cells show the average effect over event years 0 to 3 (0 to 2 in R5; the Eq. (11) coefficient in R6), with bootstrap standard errors in parentheses (firm-clustered in R6); R1 to R6 are pre-specified and R7 to R11 exploratory. *, **, and *** denote significance at 10%, 5%, and 1% (unadjusted p-values).

Source: Authors' calculations from LSEG ESG scores and Compustat Global.


## Supplemental Appendix exhibits

### Table S1 Leave-one-market-out estimates of the average effect of the first LSEG ESG score

| Sample | ln(MTB) | ln(market cap) | Leverage (ratio) | ln(assets) |
|---|---|---|---|---|
| Without Indonesia | 0.017 (0.024) | −0.030 (0.030) | 0.011** (0.005) | 0.037* (0.020) |
| Without Malaysia | −0.003 (0.035) | 0.037 (0.038) | 0.022*** (0.008) | 0.046 (0.029) |
| Without Philippines | −0.001 (0.025) | −0.066** (0.031) | 0.009* (0.005) | 0.031* (0.019) |
| Without Singapore | −0.007 (0.025) | −0.066** (0.032) | 0.005 (0.005) | 0.063*** (0.019) |
| Without Thailand | 0.004 (0.029) | −0.096** (0.037) | 0.004 (0.005) | 0.040* (0.021) |

Note: Cells show the average effect over event years 0 to 3 without the named market, with bootstrap standard errors in parentheses. *, **, and *** denote significance at 10%, 5%, and 1% (unadjusted p-values).

Source: Authors' calculations from LSEG ESG scores and Compustat Global.

### Table S2 Number of non-financial firms by year of first LSEG ESG score and market

| First score year | Indonesia | Malaysia | Philippines | Singapore | Thailand | Total |
|---|---|---|---|---|---|---|
| 2015 | 2 | 0 | 2 | 0 | 4 | 8 |
| 2016 | 3 | 2 | 1 | 1 | 2 | 9 |
| 2017 | 1 | 4 | 0 | 0 | 2 | 7 |
| 2018 | 2 | 3 | 1 | 0 | 2 | 8 |
| 2019 | 1 | 2 | 0 | 9 | 18 | 30 |
| 2020 | 3 | 5 | 1 | 34 | 47 | 90 |
| 2021 | 6 | 96 | 5 | 3 | 31 | 141 |
| 2022 | 13 | 193 | 4 | 1 | 26 | 237 |
| 2023 | 8 | 83 | 0 | 2 | 16 | 109 |
| 2024 | 3 | 16 | 0 | 0 | 17 | 36 |

Note: Firms first scored in 2014 are excluded because they have no pre-coverage year.

Source: Authors' calculations from LSEG ESG scores.

### Fig. S1 Number of non-financial firms by year of first LSEG ESG score

[Figure image file: FigIA1.png in this folder]

Note: Bars show the number of firms in the estimation sample first scored in each year, all five markets combined.

Source: Authors' calculations from LSEG ESG scores.

### Table S3 Estimates of the average effect of the first LSEG ESG score by market

| Market | ln(MTB) | ln(market cap) | Leverage (ratio) | ln(assets) | Scored firms |
|---|---|---|---|---|---|
| Indonesia | 0.054 (0.128) | −0.018 (0.109) | 0.023 (0.018) | 0.123* (0.070) | 39 |
| Malaysia | 0.009 (0.033) | −0.114** (0.048) | 0.002 (0.006) | 0.033 (0.024) | 372 |
| Philippines | −0.006 (0.109) | 0.101 (0.128) | 0.041 (0.028) | 0.025 (0.079) | 14 |
| Singapore | −0.037 (0.073) | 0.143* (0.087) | 0.048** (0.020) | 0.013 (0.084) | 46 |
| Thailand | 0.027 (0.047) | 0.059 (0.059) | 0.025* (0.013) | 0.017 (0.040) | 157 |

Note: Cells show the average effect over event years 0 to 3 estimated within each market, with bootstrap standard errors in parentheses. *, **, and *** denote significance at 10%, 5%, and 1% (unadjusted p-values).

Source: Authors' calculations from LSEG ESG scores and Compustat Global.

### Table S4 Firm-years and firms available for each outcome

| Outcome | Scored firm-years | Scored firms | Never-scored firm-years | Never-scored firms | Share missing |
|---|---|---|---|---|---|
| ln(MTB) | 6,482 | 674 | 20,706 | 2,552 | 0.248 |
| ln(market cap) | 6,710 | 675 | 22,417 | 2,576 | 0.195 |
| Leverage (ratio) | 6,524 | 672 | 22,333 | 2,547 | 0.202 |
| ln(assets) | 6,916 | 675 | 24,814 | 2,611 | 0.123 |

Note: Counts refer to the estimation sample; the last column is the share of firm-years with a missing outcome.

Source: Authors' calculations from LSEG ESG scores and Compustat Global.

### Table S5 Relative-magnitude bounds for the average effect of the first LSEG ESG score

| Outcome | M̄ | Max pre-period change | Bias bound | Robust 95% interval |
|---|---|---|---|---|
| ln(MTB) | 0.00 | 0.046 | 0.000 | [−0.046, 0.048] |
| ln(MTB) | 0.25 | 0.046 | 0.025 | [−0.071, 0.073] |
| ln(MTB) | 0.50 | 0.046 | 0.050 | [−0.096, 0.098] |
| ln(MTB) | 1.00 | 0.046 | 0.101 | [−0.147, 0.148] |
| ln(market cap) | 0.00 | 0.063 | 0.000 | [−0.109, 0.003] |
| ln(market cap) | 0.25 | 0.063 | 0.035 | [−0.144, 0.038] |
| ln(market cap) | 0.50 | 0.063 | 0.070 | [−0.179, 0.073] |
| ln(market cap) | 1.00 | 0.063 | 0.140 | [−0.249, 0.143] |
| Leverage (ratio) | 0.00 | 0.012 | 0.000 | [−0.001, 0.018] |
| Leverage (ratio) | 0.25 | 0.012 | 0.007 | [−0.007, 0.025] |
| Leverage (ratio) | 0.50 | 0.012 | 0.013 | [−0.014, 0.031] |
| Leverage (ratio) | 1.00 | 0.012 | 0.026 | [−0.027, 0.044] |
| ln(assets) | 0.00 | 0.035 | 0.000 | [0.007, 0.081] |
| ln(assets) | 0.25 | 0.035 | 0.020 | [−0.012, 0.101] |
| ln(assets) | 0.50 | 0.035 | 0.039 | [−0.032, 0.120] |
| ln(assets) | 1.00 | 0.035 | 0.078 | [−0.071, 0.159] |

Note: The bias bound is M̄ times the largest change between consecutive pre-coverage estimates times the weighted mean of (e + 1) over event years 0 to 3 (Eq. 10). The robust interval widens the bootstrap 95% interval by this bound.

Source: Authors' calculations from LSEG ESG scores and Compustat Global.

### Table S6 Scored firms and control firms by event year for ln(MTB)

| Event year | Scored firms | Cohorts | Control firms (range) |
|---|---|---|---|
| −5 | 497 | 6 | 1,420–1,732 |
| −4 | 521 | 7 | 1,431–1,800 |
| −3 | 549 | 8 | 1,444–1,899 |
| −2 | 581 | 9 | 1,455–2,065 |
| 0 | 615 | 10 | 1,453–2,189 |
| 1 | 578 | 9 | 1,442–2,034 |
| 2 | 483 | 8 | 1,430–1,895 |
| 3 | 270 | 7 | 1,418–1,796 |
| 4 | 141 | 6 | 1,407–1,732 |

Note: Scored firms are summed over cohorts; control firms are the smallest and largest number of never-scored firms across cohort cells.

Source: Authors' calculations from LSEG ESG scores and Compustat Global.
