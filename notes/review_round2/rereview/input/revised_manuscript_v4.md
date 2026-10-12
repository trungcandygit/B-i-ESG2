# Who Gets an ESG Score? Coverage Selection and Firm Value in Five Southeast Asian Markets

Running title: ESG score coverage and firm value

## Abstract

**Purpose**: This study asks which listed firms enter the environmental, social, and governance (ESG) rated universe in emerging markets and whether entry changes their market valuation.

**Design/methodology/approach**: The study compares 675 non-financial firms in Indonesia, Malaysia, the Philippines, Singapore, and Thailand that received a first London Stock Exchange Group (LSEG) ESG score in 2015 to 2024 with 2,613 never-scored firms, before and after the first score, using cohort-specific difference-in-differences estimators and a pre-analysis plan.

**Findings**: Firms that entered through selective coverage waves had outgrown comparable unscored firms beforehand: from five years before the first score to the year before it, their market-to-book (MTB) ratio grew 10.0 percent more. Malaysian firms covered in a wholesale expansion in 2021 and 2022 show no such run-up. Under parallel trends, MTB ratios did not rise after the first score (estimate 0.002; 95% interval −0.046 to 0.048), whatever the level of the score.

**Research limitations/implications**: The provider chooses when to cover a firm, the data are annual, and departures from parallel trends like those before coverage admit effects of several percent in either direction.

**Practical implications**: ESG screens, indices, and ESG-premium studies in these markets draw on a scored universe tilted toward firms that have just grown; exchange-wide coverage avoids that tilt.

**Originality/value**: The study documents selection into ESG rating coverage and its valuation consequences in emerging markets, an event that evidence on rating changes does not cover.

Keywords: Emerging markets; ESG investing; ESG ratings; Firm valuation; Rating coverage; Sustainable finance

JEL classification: G14, G15, G32, M14, Q56

## 1. Introduction

Environmental, social, and governance (ESG) scores decide which firms ESG-screened investors can hold. A fund restricted to scored stocks, an index built from scored constituents, or a mandate with a minimum score cannot buy a firm that no provider covers. In the five largest Southeast Asian equity markets, most listed firms had no score from London Stock Exchange Group (LSEG), one of the most widely used providers in research and practice, at any point between 2014 and 2024. Entry into the scored universe is therefore an event in its own right, and it raises two questions for sustainable finance: which firms get scored, and does entering the scored universe change how the market values them?

Theory gives no single answer to the second question. Under investor recognition, a first score makes a firm visible to investors who screen on ESG data, and a broader investor base raises its price (Merton, 1987). Under ESG preferences, investors pay more for assets they can classify as sustainable and less for those they cannot (Pástor et al., 2021; Pedersen et al., 2021), so a first score should raise the value of firms revealed as green and lower the value of firms revealed as brown. Evidence on ESG certification events is mixed: additions to the Dow Jones Sustainability Index have little price effect once comparable firms are used as benchmarks (Durand et al., 2019; Hawn et al., 2018), whereas downgrades of existing ratings are followed by negative abnormal returns and upgrades by weaker positive ones (Berg, Heeb, et al., 2022; Shanaev & Ghimire, 2022). Fund investors respond to sustainability ratings when these are new and salient (Hartzmark & Sussman, 2019).

The first question matters because providers choose whom to score. They are likely to add a firm once it is large, liquid, or disclosing enough to be scored, and the scores themselves rise with firm size (Dobrick et al., 2023; Drempetic et al., 2020). If coverage follows growth in market value, a comparison of scored and unscored firms, or a regression that pools all years around coverage, attributes past growth to the score. Studies of rating coverage in the United States link coverage by more raters to fewer ESG violations (Tsang et al., 2024), lower emissions and more ownership by high-ESG institutions (Bikmetova & Pirinsky, 2026), and dividend increases (Tsang et al., 2025). None of these studies examines valuation in emerging markets, where most firms are unscored and coverage has expanded in waves.

We study Indonesia, Malaysia, the Philippines, Singapore, and Thailand. LSEG, whose scores were earlier distributed as Refinitiv ESG and ASSET4, extended coverage in market-specific waves: 577 of the 675 non-financial firms that entered coverage between 2015 and 2024 did so in 2020 to 2023, and 289 of them were Malaysian firms first scored in 2021 or 2022. We compare firms that entered LSEG ESG coverage with 2,613 firms that were never scored, before and after each firm's first scored fiscal year. The estimator of Callaway and Sant'Anna (2021) makes this comparison cohort by cohort and avoids the biases of two-way fixed effects regressions under staggered timing (Baker et al., 2022; Goodman-Bacon, 2021). A pre-analysis plan, committed to version control before the estimation code, records the hypotheses, sample rules, estimator, and robustness checks; we label every later analysis as exploratory.

The evidence has four parts. First, scored firms had outgrown comparable never-scored firms before their first scored year (Fig. 1). From five years before the first score to the year before it, which we call the base year, their market capitalization grew 14.1 percent more (95% interval 3.1 to 25.3 percent) and their market-to-book (MTB) ratio 10.0 percent more (1.9 to 18.2 percent); the joint test of parallel pre-coverage trends rejects for market capitalization but not, at the 5% level, for MTB. Second, the run-up depends on how firms entered coverage (Fig. 2). It is large in the Thai and Singaporean cohorts of 2019 and 2020 and in the remaining smaller cohorts, but absent in the 289 Malaysian firms first scored in 2021 and 2022, a wave that extended coverage across a whole market. Third, under parallel trends from the base year, the average effect on log MTB over the first four years is 0.002 (95% interval −0.046 to 0.048), and it does not differ between firms with high and low initial scores, before or after the scores are purged of firm size. Fourth, a static two-way fixed effects regression on the same data attributes a 6.6 percent MTB increase to coverage.

We do not claim that coverage has no effect on valuation. When we date coverage one year later, to the first year in which investors could have seen a score, MTB declines by about −6.6 percent relative to never-scored firms. This decline is measured from the end of the run-up, so it cannot separate a reversal of earlier growth from an effect of coverage. When post-coverage departures from parallel trends may reach a quarter of the largest pre-coverage year-to-year change (Rambachan & Roth, 2023), the interval for the headline estimate widens to −0.071 to 0.073.

The paper makes three contributions to sustainable finance. First, it adds valuation and an emerging-market setting to the rating-coverage literature (Bikmetova & Pirinsky, 2026; Tsang et al., 2024, 2025) and documents which firms a major provider brought into the scored universe: in selective waves, firms that had just outgrown their peers. Second, it adds an extensive-margin event to the evidence on ratings and certification as price-relevant information: entering LSEG coverage, unlike a downgrade of an MSCI rating (Berg, Heeb, et al., 2022), was not followed by a detectable revaluation, whatever the score. Third, for empirical work on ESG premiums, it shows how selection into the scored universe can make scored firms look more valuable than they became because of the score.

Section 2 reviews the literature and states the hypotheses. Section 3 describes the setting and data, Section 4 the methods, and Section 5 the results. Section 6 discusses mechanisms and implications, Section 7 states the limitations, and Section 8 concludes.

## 2. Related Literature and Hypotheses

### 2.1. ESG ratings as information and certification

ESG ratings can move prices when they change what investors know or which investors may hold a stock. The evidence on changes to existing ratings points to both channels. U.S. funds with ESG mandates hold firms according to their MSCI rating, and MSCI downgrades are followed by lower ownership by such funds and a one-year abnormal return of about −2.37 percent, with weaker effects for upgrades (Berg, Heeb, et al., 2022). Calendar-time portfolios of firms with rating changes give a similar asymmetry (Shanaev & Ghimire, 2022). Consensus ratings predict future ESG news, but disagreement among providers weakens both this predictive power and the price reaction to the news (Serafeim & Yoon, 2023). Hartzmark and Sussman (2019) show that the publication of Morningstar sustainability ratings for mutual funds redirected fund flows; their ratings concern funds, so any effect on the stocks those funds hold is indirect.

Certification by inclusion in a sustainability index is the closest analog to a first score. Additions to the Dow Jones Sustainability Index have limited price effects once firms are compared with similar firms outside the index (Hawn et al., 2018), and a replication finds no price effect but more analyst following after addition and more long-term ownership after continued membership (Durand et al., 2019). Sell-side coverage offers a second analog: losing analyst coverage lowers prices (Kelly & Ljungqvist, 2012), and the first report on a neglected stock raises its price when the report is favorable (Demiroglu & Ryngaert, 2010).

### 2.2. ESG demand, recognition, and price pressure

Two channels predict a valuation response to a first score, and they differ in sign. Under investor recognition, a stock known to few investors trades at a discount because a small group bears its idiosyncratic risk (Merton, 1987). A first score makes the firm visible to ESG-screening investors, so recognition predicts a gain for every newly scored firm. The awareness evidence on index additions supports a lasting gain: S&P 500 additions raise prices permanently, while deletions do not lower them permanently (Chen et al., 2004). Under ESG preferences, investors accept lower expected returns on assets they classify as sustainable (Pástor et al., 2021; Pedersen et al., 2021). A first score reveals where a firm stands, so the preference channel predicts gains for firms revealed as green and losses for firms revealed as brown. A pooled average can therefore be close to zero when the two signs offset.

Demand shocks also shape realized prices before any rating event. Pástor et al. (2022) show that the high realized returns of green assets reflect unexpected increases in ESG concern rather than high expected returns. In the same way, inclusion in the S&P 500 raises prices (Harris & Gurel, 1986; Shleifer, 1986), and part of the increase reverses within weeks (Harris & Gurel, 1986). A run-up in value before coverage, followed by a flat path, is consistent with a demand shift that ended, with selection on growth, or with both.

### 2.3. Which firms providers score

Rating coverage is not assigned at random. We expect providers to cover firms in the indices their clients track and firms that disclose enough to be scored, although our data do not include the provider's coverage rules. Mandatory sustainability reporting increases the information available about listed firms (Krueger et al., 2024). The provider we study gives higher scores to larger firms, a bias first documented for its ASSET4 scores (Drempetic et al., 2020) and still present in its Refinitiv scores (Dobrick et al., 2023). Providers disagree about the same firm (Berg, Kölbel, et al., 2022; Christensen et al., 2022), the disagreement is priced (Avramov et al., 2022; Gibson Brandon et al., 2021), and the provider has rewritten historical scores on a large scale (Berg et al., 2020). If providers select firms that have grown, a comparison of scored and unscored firms mixes the effect of coverage with the growth that led to it.

### 2.4. Hypotheses

The pre-analysis plan states three hypotheses, each tested two-sided.

H~1~ (primary): The initiation of LSEG ESG coverage changes the log MTB ratio of scored firms relative to comparable never-scored firms. The recognition channel predicts an increase. The preference channel predicts an increase for firms with high scores and a decrease for firms with low scores. The selection view predicts relative growth before coverage and no effect after it if the growth was permanent, or a decline after it if the growth was transitory.

H~2~ (secondary): Coverage changes log market capitalization, book leverage, and log total assets.

H~3~ (heterogeneity): The effect on log MTB differs between firms with initial scores above and below their cohort median. This is the test that separates the preference channel from recognition, because only the preference channel depends on what the score says.

## 3. Institutional Setting and Data

### 3.1. ESG disclosure and rating coverage in the five markets

All five markets introduced sustainability reporting rules for listed firms during the sample period, at different times. Singapore requires every listed issuer to publish a comply-or-explain sustainability report for financial years ending on or after 31 December 2017 (Singapore Exchange, 2016). Bursa Malaysia required a sustainability statement in annual reports from financial years ending on or after 31 December 2016, starting with the largest companies and phasing in the others over the following two years (Bursa Malaysia, 2015). In the Philippines, listed companies have attached a sustainability report on a comply-or-explain basis to their annual reports since the reports for 2019, filed in 2020 (Securities and Exchange Commission Philippines, 2019). Indonesian listed companies must publish sustainability reports under a 2017 regulation whose obligation for listed companies began with 2020 (Otoritas Jasa Keuangan, 2017). Thai listed companies have reported sustainability information in the unified annual filing, the 56-1 One Report, since the fiscal year ending in 2021 (Tilleke & Gibbins, 2020).

Several providers score firms in these markets. In Malaysia, FTSE Russell, another part of LSEG, scored only the constituents of the FTSE Bursa Malaysia EMAS index, about 30 percent of listed companies, until Bursa Malaysia and LSEG agreed in November 2022 to extend its scores to all Main and ACE Market companies (Bernama, 2022). The LSEG ESG score we study, formerly Refinitiv ESG, is a separate product built from company-reported data, so some newly covered firms may already have had FTSE Russell or other scores that our data do not record. We therefore describe our event as the initiation of LSEG ESG coverage, not as a firm's first ESG rating of any kind.

Table S2 and Fig. S1 of the Supplemental Appendix show that coverage arrived in waves: 108 first scores in Thailand and Singapore in 2019 and 2020, and 289 in Malaysia in 2021 and 2022. Of the 675 scored firms, 404, or 59.9 percent, are Malaysian, and Malaysian and Thai firms together make up 84.3 percent. The Malaysian wave began in fiscal 2021, before the November 2022 agreement, which concerned FTSE Russell scores. The waves do not line up with a single reporting rule: the Thai wave preceded the One Report, and the Malaysian wave began several years after Bursa Malaysia's rule was phased in. The data do not record why the provider expanded coverage when it did. The pooled estimates are weighted toward Malaysia and Thailand, and we report estimates by market and by wave.

### 3.2. Sample and coverage timing

The data cover all 3,709 firms listed in the five markets from 2014 to 2024, or 40,799 firm-years. They combine the annual LSEG ESG score (LSEG, 2025) with accounting and market data from Compustat Global (S&P Global Market Intelligence, 2025). We use the ESG score, not the controversy-adjusted combined score. The files do not record the download date, so the vintage of recent, revisable scores is unknown.

Dropping financial firms leaves 3,423 firms. A firm's first scored year, g, is its first fiscal year with an LSEG ESG score, and its base year is g − 1. Only 17 of the 675 scored firms have a later year without a score, so we treat coverage as permanent, the staggered-adoption setting of Callaway and Sant'Anna (2021). Excluding the 135 firms scored in 2014, which have no pre-coverage year, leaves 3,288 firms and 36,168 firm-years: 675 firms first scored between 2015 and 2024 and 2,613 never-scored firms. A firm-year enters an estimate only if its outcome is observed in both the base year and the comparison year. MTB ratios at or below zero, which reflect negative book equity, are set to missing; 28.0 percent of never-scored firm-years and 12.7 percent of scored firm-years lack a log MTB ratio. Table S4 of the Supplemental Appendix reports firm-years by outcome, and Table S6 reports scored firms by event year. Never-scored firms are smaller on average, and a check in Section 4.5 restricts scored firms to the size range of the controls.

The first scored year may precede the year in which investors first see a score. First, the score for fiscal year g draws on reports published after the year ends, so it reaches investors in year g + 1 at the earliest. Second, the provider has rewritten historical scores on a large scale (Berg et al., 2020), and scores for the five most recent fiscal years can change after publication (Sahin et al., 2023). If the provider filled in historical years when a firm entered coverage, the gap exceeds one year. Both features move the true publication date later, never earlier, so they cannot create the pre-coverage growth we report but can place pre-publication years in our post-coverage window. Section 5.4 therefore also dates coverage one and two years later.

### 3.3. Outcomes

The primary outcome is the natural logarithm of the MTB ratio, the market value of equity divided by its book value. The secondary outcomes are log market capitalization, log total assets, and book leverage, defined as total debt divided by total assets. Market capitalization moves with prices and with the number of shares, which the data cannot separate because they contain neither stock returns nor shares outstanding. We therefore use MTB for valuation and report market capitalization and total assets as measures of firm scale. Amounts are in U.S. dollars as recorded in the data set. We winsorize MTB, market capitalization, leverage, and total assets at the 1st and 99th percentiles of the pooled sample before taking logarithms.

## 4. Methods

### 4.1. Target parameter and identification

In the notation of Callaway and Sant'Anna (2021), let G~i~ be the first year in which firm i has an LSEG ESG score, with G~i~ = ∞ if it is never scored, and let Y~i,t~(g) be the potential outcome of firm i in year t if it were first scored in year g. The group-time average treatment effect on the treated (ATT) is

$$latex \mathrm{ATT}(g,t)=\mathbb{E}\left[Y_{i,t}(g)-Y_{i,t}(\infty)\mid G_i=g\right] | (1)

the average effect in year t for firms first scored in year g. We identify it under conditional parallel trends relative to the base year:

$$latex \mathbb{E}\left[Y_{i,t}(\infty)-Y_{i,g-1}(\infty)\mid X_i,G_i=g\right]=\mathbb{E}\left[Y_{i,t}(\infty)-Y_{i,g-1}(\infty)\mid X_i,G_i=\infty\right] | (2)

where X~i~ contains country and industry indicators and log total assets and its square, measured in the base year. Because assumption (2) concerns changes in outcomes, level differences between scored and never-scored firms (Table 1) do not violate it, but a different growth path before coverage would. We examine this implication with the pre-coverage estimates but do not rely on the test alone.

### 4.2. Estimation

For each cohort g and year t, we regress the long difference ΔY~i,t~ = Y~i,t~ − Y~i,g−1~ on X~i~ among never-scored firms (Sant'Anna & Zhao, 2020):

$$latex \Delta Y_{i,t}=X_i'\beta_{g,t}+u_{i,t},\qquad G_i=\infty | (3)

where β~g,t~ is the cell's coefficient vector and u~i,t~ the error. We omit the propensity-score model of the doubly robust estimator because overlap in total assets is poor: 24.6 percent of scored firms have larger base-year total assets than the 95th percentile of never-scored firms. The estimated group-time effect is

$$latex \widehat{\mathrm{ATT}}(g,t)=\frac{1}{N_{g,t}}\sum_{i:\,G_i=g}\left(\Delta Y_{i,t}-X_i'\hat{\beta}_{g,t}\right) | (4)

where N~g,t~ is the number of firms first scored in year g with data in years g − 1 and t, and β̂~g,t~ is estimated from Eq. (3). We average by event year, e = t − g, weighting cohorts by their number of scored firms (Callaway & Sant'Anna, 2021):

$$latex \hat{\theta}(e)=\sum_{g}\frac{N_{g,g+e}}{\sum_{h}N_{h,h+e}}\,\widehat{\mathrm{ATT}}(g,g+e) | (5)

where h indexes cohorts. The headline estimate averages all cells from the first scored year to three years later with the same weights:

$$latex \hat{\theta}_{\mathrm{post}}=\frac{\sum_{(g,t):\,0\le t-g\le 3}N_{g,t}\,\widehat{\mathrm{ATT}}(g,t)}{\sum_{(g,t):\,0\le t-g\le 3}N_{g,t}} | (6)

Cohorts first scored after 2021 are not observed for all four post-coverage years, so cohort composition changes across event years. We therefore also report estimates for the cohorts observed through event year 3.

The design involves three choices. First, the baseline controls are never-scored firms; later-scored firms, which may also be growing toward the provider's universe, join them only in check R1 (Section 4.5). Second, all comparisons, including pre-coverage ones, use the base year, so a negative estimate θ̂(e) for e ≤ −2 means that scored firms grew faster than comparable never-scored firms from year g + e to the base year. Third, the covariates are measured in the base year, at the end of any run-up. Because the provider's scores rise with firm size (Dobrick et al., 2023), conditioning on base-year total assets matches scored firms to never-scored firms of similar size and can absorb part of the run-up. We therefore also report estimates without covariates, with total assets measured two years before the base year, and with indicators for quintiles of total assets instead of the quadratic.

### 4.3. Inference

We bootstrap the aggregated effects by resampling firms with their full time series, a nonparametric alternative to the multiplier bootstrap of Callaway and Sant'Anna (2021). All specifications share the same 999 draws and fixed seed, so differences between specifications have a valid joint distribution. We report the bootstrap standard error, the percentile 95% confidence interval, and a normal-approximation two-sided p-value. The minimum detectable effect (MDE) at 80% power in a two-sided 5% test is

$$latex \mathrm{MDE}=(z_{0.975}+z_{0.80})\,\widehat{\mathrm{SE}}\approx 2.8\,\widehat{\mathrm{SE}} | (7)

where z~0.975~ and z~0.80~ are standard normal quantiles and the hatted SE is the bootstrap standard error. We test the primary outcome at the 5% level and Holm-adjust the p-values of the three secondary outcomes but not the confidence intervals, so an interval that excludes zero can accompany an adjusted p-value above 5%, as for log total assets in Table 2. The joint test of parallel pre-coverage trends is

$$latex W=\hat{\theta}_{\mathrm{pre}}'\,\hat{V}_{\mathrm{pre}}^{-1}\,\hat{\theta}_{\mathrm{pre}}\ \sim\ \chi^2_{4} | (8)

where θ̂~pre~ stacks the estimates for e = −5 to −2 and V̂~pre~ is their bootstrap covariance matrix. Because pre-trend tests can have low power and conditioning on them can distort inference (Roth, 2022), we report W as a diagnostic and do not condition the analysis on it.

Coverage arrived in market-level waves, so a shock common to a market or an industry can affect many scored firms at once. The country indicators in Eq. (3) absorb market-wide changes within each cell, but five markets are too few clusters for a market-level bootstrap. As an exploratory check, we also resample the 50 market-by-industry clusters instead of firms.

### 4.4. Sensitivity to departures from parallel trends

Because the pre-coverage estimates cast doubt on assumption (2), we add two exploratory checks that the pre-analysis plan did not contain. The first removes a linear pre-coverage trend that passes through zero in the base year:

$$latex \hat{b}=\frac{\sum_{e=-5}^{-1}(e+1)\,\hat{\theta}(e)}{\sum_{e=-5}^{-1}(e+1)^{2}},\qquad \tilde{\theta}(e)=\hat{\theta}(e)-\hat{b}\,(e+1) | (9)

where b̂ is the fitted slope and θ̃(e) is the trend-adjusted estimate, which we average over e = 0 to 3 with the weights of Eq. (6). The second bounds the bias, in the spirit of the relative-magnitudes restriction of Rambachan and Roth (2023). Let δ(e) denote the post-coverage violation of assumption (2) in event year e. We assume that it changes from year to year by at most M̄ times Δ, the largest change between consecutive pre-coverage estimates:

$$latex \left|\delta(e)-\delta(e-1)\right|\le \bar{M}\,\max_{s\le -1}\left|\hat{\theta}(s)-\hat{\theta}(s-1)\right|\equiv \bar{M}\,\Delta,\qquad \delta(-1)=0 | (10)

where s indexes pre-coverage event years. The bias for event year e is then at most M̄Δ(e + 1), and we widen the headline confidence interval by the weighted average of this bound. In words, M̄ = 0.25 allows the post-coverage gap between scored and never-scored firms to drift each year by a quarter of the largest yearly change seen before coverage. This construction is conservative and simpler than the confidence sets of Rambachan and Roth (2023), which we do not compute. We also add to X~i~ the growth of log market capitalization from year g − 3 to the base year, which compares scored firms with never-scored firms of similar pre-coverage growth.

### 4.5. Benchmark regression and robustness checks

As a benchmark, we estimate on scored and never-scored firms the static two-way fixed effects (TWFE) regression that Goodman-Bacon (2021) and Baker et al. (2022) analyze:

$$latex Y_{i,t}=\alpha_i+\lambda_t+\beta\,D_{i,t}+\varepsilon_{i,t},\qquad D_{i,t}=\mathbf{1}\left[t\ge G_i\right] | (11)

where α~i~ and λ~t~ are firm and year effects, D~i,t~ marks years from the first score onward, and ε~i,t~ is the error. We use no covariates and all event years and cluster standard errors by firm. The coefficient β compares all post-coverage with all pre-coverage years, so it averages over any run-up, and with staggered timing it uses already-scored firms as controls for later cohorts.

The pre-analysis plan fixed rows R1 to R6 of Table 3: four robustness checks, a placebo, and the benchmark of Eq. (11). The checks add not-yet-scored firms to the controls; drop the covariates; exclude the 2020 and 2021 cohorts; and keep only control firms whose base-year log total assets reach the 10th percentile of the cohort's scored firms. The placebo dates coverage three years early and uses only years before the actual score. Rows R7 to R11 and all of Tables S7 and S8 of the Supplemental Appendix are exploratory. They include the checks of Section 4.4, dating coverage one or two years later, restricting the sample to cohorts observed through event year 3, excluding or isolating one market at a time, separate estimates by coverage wave and by period of first score, alternative timing and functional form of the size covariate, a restriction of scored firms to the size range of the controls, the cluster bootstrap, a decomposition of the gap between Eq. (11) and Eq. (6), and an initial-score split with the score purged of size, country, and cohort.

## 5. Results

### 5.1. Which firms get scored

Table 1 compares scored firms in the base year with never-scored firm-years. Scored firms are much larger: their median market capitalization is 203.2 million U.S. dollars against 42.2 million, and their median total assets are 4.3 times as large, with normalized differences of 0.69 and 0.61. Their mean MTB ratio is 2.37 against 1.84, and their median MTB ratio is also higher (1.26 against 0.95), while leverage differs little (normalized difference −0.04). Because scored firms are concentrated in base years 2019 to 2022 while never-scored firm-years span 2014 to 2024, these level differences mix calendar effects with selection. Return on assets is available for fewer than half of the firm-years, so we use it only descriptively. The gaps fit a provider that covers large and visible firms (Section 2.3). In Malaysia, where the expansion was broadest, the 565 never-scored firms remained smaller than the scored ones, with median total assets 3.3 times lower. Because scores rise with total assets in this provider's data (Dobrick et al., 2023), we compare changes and adjust for size, country, and industry in Eq. (3).

### 5.2. Average effects of the first score

Table 2 reports the headline estimates of Eq. (6). The effect on log MTB is 0.002, with a standard error of 0.024 and a 95% confidence interval from −0.046 to 0.048. Under assumption (2), the data are compatible with changes in the MTB ratio from −4.5 to 4.9 percent, so increases of a few percent remain possible. The minimum detectable effect from Eq. (7) is 0.067, about 7.0 percent. When we resample market-by-industry clusters instead of firms, the interval is −0.050 to 0.053.

No secondary outcome changes significantly at the 5% level once its p-value is Holm-adjusted. Log market capitalization changes by −0.055 (p = 0.134), leverage by 0.8 percentage points (p = 0.134), and log total assets by 0.044 (p = 0.053, against an unadjusted p = 0.018). Under assumption (2), the MTB estimate gives no sign of the gain that the recognition channel predicts (Merton, 1987). It also gives no sign of the demand response to newly published sustainability ratings that Hartzmark and Sussman (2019) document for funds, although the interval admits gains of up to 4.9 percent.

### 5.3. Dynamics before and after the first score

Fig. 1 plots the event-time estimates of Eq. (5) for all four outcomes. Before the first score, the estimates for market capitalization and MTB are negative and rise toward zero. In event years −5 and −4, the MTB estimates are −0.095 and −0.082 (p = 0.015 and p = 0.015). From event year −5 to the base year, scored firms' market capitalization grew 14.1 percent more than that of comparable never-scored firms, and their MTB ratio 10.0 percent more; with the cluster bootstrap, the 95% interval for the MTB run-up is 2.3 to 20.5 percent. We call this relative growth the run-up. The joint test of Eq. (8) rejects parallel pre-coverage trends for market capitalization (p = 0.022) but not at the 5% level for MTB (p = 0.074); with the cluster bootstrap, the tests give p = 0.001 and p = 0.225. As Roth (2022) cautions, a non-rejection is not evidence that pre-coverage trends are parallel. Log total assets follow a weaker version of the pattern, and leverage falls toward the base year (pre-trend p = 0.002).

After the first score, the MTB estimates for event years 0 to 3 lie between −0.044 and 0.017, and none differs from zero at the 5% level. The market capitalization estimate is −0.072 in event year 1 (p = 0.029) and not significant later. Only 141 scored firms from 6 cohorts reach event year 4, so we plot that year but exclude it from Eq. (6); its estimates are −0.077 for MTB (p = 0.209) and 0.088 for market capitalization (p = 0.153). Log total assets rise to 0.090 by event year 3, and leverage returns toward its earlier level. The MTB gap between scored and never-scored firms thus widens before coverage and stops widening afterwards. Without data on share issuance, we cannot tell whether the pre-coverage growth in market capitalization reflects rising prices, new shares, or both, so we base statements about valuation on the MTB ratio.

Fig. 2 separates the three coverage waves. The 108 Thai and Singaporean firms first scored in 2019 and 2020 show the largest run-up: from event year −5 to the base year, their MTB ratio grew 33.1 percent and their market capitalization 57.3 percent more than those of never-scored firms (pre-trend p = 0.006 and p < 0.001). The 278 firms in all other cohorts, which entered coverage a few at a time, show the same pattern, with MTB growth of 10.8 percent (pre-trend p = 0.006). The 289 Malaysian firms first scored in 2021 and 2022 show no run-up: their pre-coverage MTB estimates range from −0.027 in event year −5 to 0.041 in event year −2 (pre-trend p = 0.549). Selection on prior growth therefore appears where the provider added firms selectively, not where it extended coverage across a market. After the first score, no wave shows an MTB gain: the estimates of Eq. (6) are 0.021 for the Malaysian wave, −0.009 for the Thai and Singaporean wave, and −0.016 for the other cohorts. Market capitalization fell after coverage in the Malaysian wave (−0.146, p = 0.005), which accounts for the negative pooled estimate.

### 5.4. Timing of coverage and sensitivity to pre-trends

Table 3 reports the robustness checks; rows R1 to R6 were pre-specified, and rows R7 to R11 are exploratory. Row R10 dates coverage one year after the first scored fiscal year, when a score could first have been published. Because scores were backfilled or revised (Berg et al., 2020; Sahin et al., 2023), this also moves the base year closer to the end of the run-up. The MTB effect is then −0.068, a change of about −6.6 percent (95% interval −0.116 to −0.020; p = 0.004), estimated from 646 scored and 2,412 control firms. With the cluster bootstrap, its interval is −0.125 to −0.018. Its joint pre-trend test gives p = 0.072, and with M̄ = 0.25 in Eq. (10) its interval, from −0.138 to 0.002, includes zero; the decline loses significance once M̄ reaches 0.23. Holding total assets at the original base year gives −0.074 (p = 0.002), and dating coverage two years later gives −0.048 (p = 0.057).

Fig. S2 of the Supplemental Appendix plots the event-time path under R10. The decline grows with time since coverage, from −0.039 in the re-dated event year 0 to −0.200 in event year 3. The baseline path in Fig. 1 does not show this because its later event years come from early cohorts while its first post-coverage years pool all cohorts. Re-based within each cohort to the first scored year, the baseline estimates for event years 3 and 4 are −0.083 and −0.167, much closer to the corresponding R10 estimates of −0.138 and −0.200 than the pooled baseline path suggests. Both specifications therefore show that early cohorts lost value relative to never-scored firms in their third and fourth years of coverage. If firms are selected at an unusually high valuation that later partly reverses, the decline measures the reversal and can hide an offsetting positive effect of coverage; if valuations would otherwise have stayed at their pre-coverage peak, coverage lowered them. The data cannot separate the two readings.

Row R11 keeps the 7 cohorts first scored by 2021 and observed through event year 3, with 273 scored and 2,032 control firms. Its MTB effect of −0.008 (p = 0.806) shows that changing cohort composition does not explain the headline estimate. Row R7 removes a linear pre-trend with Eq. (9); the MTB effect becomes −0.052, with a 95% interval from −0.118 to 0.014, negative because a continued run-up would have raised valuations further. Row R8 compares scored firms with never-scored firms that grew at a similar rate before coverage, and so share any tendency to revert. It gives an MTB effect of 0.028 (p = 0.265), with an interval from −0.021 to 0.077 that admits gains of several percent. It conditions only on market capitalization growth from year g − 3 to the base year, and control firms matched on past growth can themselves revert, so it does not settle the reversal question.

Table S5 of the Supplemental Appendix reports the bounds of Eq. (10). With a largest change of 0.046 between consecutive pre-coverage MTB estimates, the interval for the MTB effect is −0.071 to 0.073 with M̄ = 0.25 and widens to −0.147 to 0.148 with M̄ = 1. Every interval includes zero and admits moderate effects in either direction. The upper limit of the unadjusted interval lies just below a 5 percent increase in the MTB ratio, so any departure with M̄ above about 0.01 admits an increase of 5 percent, and any departure at all admits a positive effect. The absence of a detected positive effect is therefore conditional on assumption (2).

### 5.5. Robustness

In the pre-specified rows R1 to R4, the effect on log MTB is −0.001 when not-yet-scored firms join the controls, as Callaway and Sant'Anna (2021) propose, 0.025 without the covariates of Eq. (3), 0.031 without the 2020 and 2021 cohorts, and 0.016 when control firms below the size range of scored firms are dropped; none differs from zero at the 10% level. The market capitalization and total assets results are less stable than the MTB result. Under the size restriction, the market capitalization effect shrinks to −0.007 and the total assets effect is 0.101, against 0.011 without covariates, so we do not read the total assets estimate in Table 2 as evidence that coverage causes growth.

Table S7 and Fig. S2 of the Supplemental Appendix vary the size covariate and the support. The MTB run-up is not an artifact of conditioning on base-year total assets: without covariates the MTB estimate for event year −5 is −0.064 (pre-trend p = 0.028), and with total assets measured two years before the base year it is −0.077, close to the baseline, although the joint test then gives p = 0.176. The post-coverage MTB effect is −0.008 with total assets measured two years earlier and −0.010 with quintile indicators. Restricting scored firms to those no larger than the 95th percentile of never-scored firms in their cell keeps 492 scored firms and gives −0.021 (p = 0.426). The post-coverage MTB estimate therefore does not depend on extrapolating the size adjustment to the largest firms.

The placebo in row R5, which dates coverage three years before the first score within pre-score years, yields 0.059 on log MTB (p = 0.010) and 0.134 on log market capitalization (p < 0.001). This failure restates the pre-coverage growth of Fig. 1 and adds no independent evidence. The static TWFE regression of Eq. (11) in row R6 attributes increases of 0.064 in log MTB (p = 0.014) and 0.185 in log market capitalization to coverage. Table S8 decomposes the MTB gap. Restricting the regression to never-scored controls and event years −5 to 3 changes the estimate only to 0.058, while the heterogeneity-robust estimator gives 0.025 without covariates and 0.002 with them. Comparing each cohort with its own base year, rather than pooling all years, accounts for about half of the gap, conditioning on base-year total assets for most of the rest, and the choice of controls and window for little.

When row R9 and Table S1 of the Supplemental Appendix exclude one market at a time, the MTB effect ranges from −0.007 to 0.017 and is −0.003 without Malaysia (p = 0.940), whereas the market capitalization effect turns to 0.037. Estimated market by market in Table S3, the MTB effect is 0.009 in Malaysia, with 372 scored firms, and 0.027 in Thailand, with 157. Indonesia, the Philippines, and Singapore have few scored firms and imprecise estimates. The 58 firms first scored by 2019 show a positive post-coverage MTB estimate of 0.094 (p = 0.047; 95% interval 0.002 to 0.185), and the larger group first scored from 2020 shows −0.010 (p = 0.687). The early estimate rests on few firms, is one of many exploratory comparisons, and is not adjusted for multiple testing, so we do not read it as evidence of a gain for early entrants.

### 5.6. Does the score itself matter?

The last three rows of Table 3 split scored firms at the cohort median of their first ESG score. The MTB effect is −0.019 for high-score and 0.022 for low-score entrants, and the difference of −0.041 (standard error 0.040, p = 0.307) is not significant. Because the score rises with firm size (correlation 0.35 with base-year log total assets), a split on the raw score partly separates large from small firms. Table S7 therefore repeats the split after purging the score of base-year total assets, country, and cohort, which together explain 0.23 of its variance. The difference is then −0.027 (standard error 0.040, p = 0.491). Neither split supports the sign pattern that the preference channel predicts, but with minimum detectable differences of 0.113 and 0.111, neither test excludes moderate differences. Disagreement among providers (Berg, Kölbel, et al., 2022; Christensen et al., 2022) and revisions of initial scores (Sahin et al., 2023) weaken the signal in any single score.

### 5.7. Economic magnitude

Under assumption (2), the largest increase compatible with the headline interval is of the same order as the announcement return of 4.86 percent that Demiroglu and Ryngaert (2010) report for the first analyst coverage of neglected stocks, and twice the one-year abnormal return that follows an MSCI downgrade (Berg, Heeb, et al., 2022). Annual year-end ratios would miss short-lived price pressure, so our estimates concern lasting revaluation of the kind a permanent rise in investor recognition would produce (Chen et al., 2004; Merton, 1987). A lasting effect half as large as the MTB run-up would lie at the upper end of the headline interval, so any such effect is small relative to the growth that precedes selective coverage.

## 6. Discussion

### 6.1. What the ordering of events shows

The clearest result is an ordering of events. In selective coverage waves, firms entered the scored universe after their MTB ratio and market capitalization had grown faster than those of comparable unscored firms, and their MTB ratio stopped gaining afterwards. In the wholesale Malaysian expansion, there was no run-up and no later gain. Several mechanisms fit this ordering. The provider may have added firms once they had grown large and visible enough to matter to its clients (Section 2.3). Firms may have become scoreable by publishing a first sustainability report, joining an index, or issuing equity, any of which can coincide with rising value; the fall in leverage toward the base year is consistent with equity issuance. Firms may also have started or expanded sustainability reporting when they were doing well or planned to raise capital, a strategic-disclosure reading that our data cannot test. Each of these mechanisms implies the same lesson for empirical work: entry into a provider's coverage marks the end of a period of relative growth, not a random draw.

The flat post-coverage MTB path in the baseline admits three readings, depending on the counterfactual trend (Rambachan & Roth, 2023; Roth, 2022). With parallel paths from the base year, coverage had no effect within the interval of Section 5.2. With a continued run-up, coverage lowered valuations relative to trend. With a partly transitory run-up, the flat path is consistent with a positive coverage effect that offset a reversal. The awareness evidence on index additions predicts a permanent gain from recognition (Chen et al., 2004), so a recognition effect of that kind should have appeared as a lasting rise after coverage; we detect none under assumption (2). The publication-dated estimates and the within-cohort re-basing in Section 5.4 show a decline in the third and fourth years of coverage for early cohorts, which a reversal would produce and a positive coverage effect could partly offset. The evidence therefore does not show that coverage has no effect: no heterogeneity-robust specification detects a valuation gain, and the bounds do not exclude one.

### 6.2. Relation to evidence on ESG ratings and certification

The absence of a detected gain fits the evidence on certification by sustainability indices, where additions have little price effect once comparable firms are used as benchmarks (Durand et al., 2019; Hawn et al., 2018). It contrasts with the price effects of MSCI downgrades (Berg, Heeb, et al., 2022; Shanaev & Ghimire, 2022). Two features of our setting may explain the difference. First, the evidence that ESG funds trade on ratings concerns MSCI, the one rating that explains their holdings (Berg, Heeb, et al., 2022); entering the coverage of another provider may change little for these funds. Second, scored firms were large and visible before coverage (Table 1), and some may have had FTSE Russell scores, which leaves less room for recognition (Merton, 1987). Disagreement among providers (Berg, Kölbel, et al., 2022; Serafeim & Yoon, 2023) further weakens the information in any single score. U.S. studies find that coverage changes firm conduct (Bikmetova & Pirinsky, 2026; Tsang et al., 2024) and payout (Tsang et al., 2025); we find no stable change in leverage or total assets and observe no measures of conduct.

The pre-coverage run-up also bears on the evidence on ESG demand. Pástor et al. (2022) show that realized green returns can reflect unexpected shifts in demand. A run-up followed by a flat path is what a one-time demand shift, or selection after one, would produce. Without ownership data, we cannot tell whether ESG investors bought these firms before or after coverage.

### 6.3. Implications

The results have implications for five groups, each bounded by the design: one provider, annual data, five markets, and no data on ownership, returns, or publication dates.

For rating providers and data users, the scored universe in these markets tilts toward large firms that have just outgrown their peers (Table 1, Figs. 1 and 2). Investors and researchers who use the provider's history should know that the first scored fiscal year can precede publication and that history may have been filled in, so backtests around coverage initiation may suffer from look-ahead bias (Berg et al., 2020; Sahin et al., 2023).

For exchanges, the Malaysian wave shows that coverage extended across a whole market does not carry the selection on prior growth that selective coverage does (Fig. 2). Exchange-provider arrangements of this kind (Bernama, 2022) broaden the scored universe toward smaller firms. Our data do not show whether such arrangements raise the value of the firms they cover; in the Malaysian wave, we detect no MTB gain.

For regulators, our evidence gives no support, under assumption (2), to using rating coverage as a lever for issuer valuation. The composition of the scored universe, tilted toward firms that have already grown, is relevant to policies on coverage gaps for smaller issuers.

For ESG investors and index builders, screens restricted to scored stocks admit firms after a valuation run-up, in selective waves. Our annual MTB data cannot speak to the returns of a strategy that buys newly scored firms.

For listed firms in the five markets, the estimates give no support, under assumption (2), to the expectation that a first LSEG score will raise their valuation through investor recognition or preferences (Merton, 1987; Pástor et al., 2021); the confidence interval excludes increases above 4.9 percent, but smaller effects remain possible. For empirical research, a cross-sectional valuation premium of scored firms, or a static TWFE estimate, can reflect selection into coverage rather than an effect of scores (Table S8). Studies comparing scored and unscored firms in these markets should model coverage timing and report pre-coverage dynamics. These data cannot show whether the ordering extends to other markets or providers.

## 7. Limitations

The study has eight limitations. First, the provider chooses when to cover a firm, and we have no coverage variation unrelated to firm performance. The post-coverage estimates rest on conditional parallel trends from the base year, which the pre-coverage estimates question, and our sensitivity analysis uses a linear trend and a simplified bound, not the confidence sets of Rambachan and Roth (2023). Second, the data are annual and may contain backfilled or revised scores, so we observe neither first-score publication dates nor announcement returns; later dating closes only part of this gap. Third, we observe only LSEG coverage; for firms with earlier scores from other providers, such as FTSE Russell scores for Malaysian index constituents (Bernama, 2022), the event is an additional score. Fourth, without stock returns, shares outstanding, ownership, foreign holdings, foreign-ownership limits, index membership, or firm-level sustainability report dates, we cannot separate price changes from share issuance, test the recognition channel directly, or link first scores to index entry or first sustainability reports. The reporting rules in Section 3.1 are dated at the market level from regulatory sources, not observed for each firm. Fifth, a few market capitalization values are implausibly large; pooled winsorization limits but does not correct them, and return on assets covers a minority of firm-years. Sixth, Malaysian and Thai firms make up 84.3 percent of scored firms and dominate the pooled estimates; resampling market-by-industry clusters addresses part of the dependence within coverage waves, but five markets are too few for market-level inference. Seventh, the minimum detectable effect on log MTB is 0.067, about 7.0 percent, so smaller effects would be detected with less than 80% probability. Eighth, the unrecorded download date leaves the vintage of revisable recent scores uncertain.

## 8. Conclusion

Entry into LSEG ESG coverage in five Southeast Asian markets followed relative growth when the provider added firms selectively, and it was not followed by a detected rise in market-to-book ratios. Scored firms grew faster than comparable never-scored firms before their first scored year, by 10.0 percent in MTB (1.9 to 18.2 percent), while the Malaysian firms covered in a wholesale expansion showed no such run-up. Under parallel trends, the headline effect is 0.002 (95% interval −0.046 to 0.048), with no difference by the level of the score, and dating coverage one year later gives a decline of about −6.6 percent that may reflect a reversal of the run-up. Departures from parallel trends like those before coverage would admit effects of several percent in either direction. Comparisons of scored and unscored firms that ignore coverage timing can attribute this selection to the score.

## References

Avramov, D., Cheng, S., Lioui, A., & Tarelli, A. (2022). Sustainable investing with ESG rating uncertainty. *Journal of Financial Economics*, *145*(2), 642–664. https://doi.org/10.1016/j.jfineco.2021.09.009

Baker, A. C., Larcker, D. F., & Wang, C. C. Y. (2022). How much should we trust staggered difference-in-differences estimates? *Journal of Financial Economics*, *144*(2), 370–395. https://doi.org/10.1016/j.jfineco.2022.01.004

Berg, F., Fabisik, K., & Sautner, Z. (2020). *Is history repeating itself? The (un)predictable past of ESG ratings* (Finance Working Paper No. 708/2020). European Corporate Governance Institute. https://ssrn.com/abstract=3722087

Berg, F., Heeb, F., & Kölbel, J. F. (2022). *The economic impact of ESG ratings* (SAFE Working Paper No. 439). Leibniz Institute for Financial Research SAFE. https://ssrn.com/abstract=4088545

Berg, F., Kölbel, J. F., & Rigobon, R. (2022). Aggregate confusion: The divergence of ESG ratings. *Review of Finance*, *26*(6), 1315–1344. https://doi.org/10.1093/rof/rfac033

Bernama. (2022, November 2). *Bursa Malaysia signs sustainability MoU with London Stock Exchange Group*. https://www.bernama.com/en/news.php?id=2134522

Bikmetova, N., & Pirinsky, C. A. (2026). Do ESG rating agencies improve ESG performance? *Journal of Business Ethics*, *204*(2), 335–365. https://doi.org/10.1007/s10551-025-06063-0

Bursa Malaysia. (2015). *Sustainability reporting guide*. Bursa Malaysia Berhad.

Callaway, B., & Sant'Anna, P. H. C. (2021). Difference-in-differences with multiple time periods. *Journal of Econometrics*, *225*(2), 200–230. https://doi.org/10.1016/j.jeconom.2020.12.001

Chen, H., Noronha, G., & Singal, V. (2004). The price response to S&P 500 index additions and deletions: Evidence of asymmetry and a new explanation. *The Journal of Finance*, *59*(4), 1901–1929. https://doi.org/10.1111/j.1540-6261.2004.00683.x

Christensen, D. M., Serafeim, G., & Sikochi, A. (2022). Why is corporate virtue in the eye of the beholder? The case of ESG ratings. *The Accounting Review*, *97*(1), 147–175. https://doi.org/10.2308/TAR-2019-0506

Demiroglu, C., & Ryngaert, M. D. (2010). The first analyst coverage of neglected stocks. *Financial Management*, *39*(2), 555–584. https://doi.org/10.1111/j.1755-053X.2010.01084.x

Dobrick, J., Klein, C., & Zwergel, B. (2023). Size bias in Refinitiv ESG data. *Finance Research Letters*, *55*, Article 104014. https://doi.org/10.1016/j.frl.2023.104014

Drempetic, S., Klein, C., & Zwergel, B. (2020). The influence of firm size on the ESG score: Corporate sustainability ratings under review. *Journal of Business Ethics*, *167*(2), 333–360. https://doi.org/10.1007/s10551-019-04164-1

Durand, R., Paugam, L., & Stolowy, H. (2019). Do investors actually value sustainability indices? Replication, development, and new evidence on CSR visibility. *Strategic Management Journal*, *40*(9), 1471–1490. https://doi.org/10.1002/smj.3035

Gibson Brandon, R., Krueger, P., & Schmidt, P. S. (2021). ESG rating disagreement and stock returns. *Financial Analysts Journal*, *77*(4), 104–127. https://doi.org/10.1080/0015198X.2021.1963186

Goodman-Bacon, A. (2021). Difference-in-differences with variation in treatment timing. *Journal of Econometrics*, *225*(2), 254–277. https://doi.org/10.1016/j.jeconom.2021.03.014

Harris, L., & Gurel, E. (1986). Price and volume effects associated with changes in the S&P 500 list: New evidence for the existence of price pressures. *The Journal of Finance*, *41*(4), 815–829. https://doi.org/10.1111/j.1540-6261.1986.tb04550.x

Hartzmark, S. M., & Sussman, A. B. (2019). Do investors value sustainability? A natural experiment examining ranking and fund flows. *The Journal of Finance*, *74*(6), 2789–2837. https://doi.org/10.1111/jofi.12841

Hawn, O., Chatterji, A. K., & Mitchell, W. (2018). Do investors actually value sustainability? New evidence from investor reactions to the Dow Jones Sustainability Index (DJSI). *Strategic Management Journal*, *39*(4), 949–976. https://doi.org/10.1002/smj.2752

Kelly, B., & Ljungqvist, A. (2012). Testing asymmetric-information asset pricing models. *The Review of Financial Studies*, *25*(5), 1366–1413. https://doi.org/10.1093/rfs/hhr134

Krueger, P., Sautner, Z., Tang, D. Y., & Zhong, R. (2024). The effects of mandatory ESG disclosure around the world. *Journal of Accounting Research*, *62*(5), 1795–1847. https://doi.org/10.1111/1475-679X.12548

LSEG. (2025). *LSEG ESG scores (ESG score field), annual, 2014–2024* [Data set]. LSEG Workspace.

Merton, R. C. (1987). A simple model of capital market equilibrium with incomplete information. *The Journal of Finance*, *42*(3), 483–510. https://doi.org/10.1111/j.1540-6261.1987.tb04565.x

Otoritas Jasa Keuangan. (2017). *Peraturan Otoritas Jasa Keuangan Nomor 51/POJK.03/2017 tentang penerapan keuangan berkelanjutan bagi lembaga jasa keuangan, emiten, dan perusahaan publik* [Regulation on the application of sustainable finance to financial services institutions, issuers, and public companies].

Pástor, Ľ., Stambaugh, R. F., & Taylor, L. A. (2021). Sustainable investing in equilibrium. *Journal of Financial Economics*, *142*(2), 550–571. https://doi.org/10.1016/j.jfineco.2020.12.011

Pástor, Ľ., Stambaugh, R. F., & Taylor, L. A. (2022). Dissecting green returns. *Journal of Financial Economics*, *146*(2), 403–424. https://doi.org/10.1016/j.jfineco.2022.07.007

Pedersen, L. H., Fitzgibbons, S., & Pomorski, L. (2021). Responsible investing: The ESG-efficient frontier. *Journal of Financial Economics*, *142*(2), 572–597. https://doi.org/10.1016/j.jfineco.2020.11.001

Rambachan, A., & Roth, J. (2023). A more credible approach to parallel trends. *The Review of Economic Studies*, *90*(5), 2555–2591. https://doi.org/10.1093/restud/rdad018

Roth, J. (2022). Pretest with caution: Event-study estimates after testing for parallel trends. *American Economic Review: Insights*, *4*(3), 305–322. https://doi.org/10.1257/aeri.20210236

Sahin, Ö., Bax, K., Paterlini, S., & Czado, C. (2023). The pitfalls of (non-definitive) environmental, social, and governance scoring methodology. *Global Finance Journal*, *56*, Article 100780. https://doi.org/10.1016/j.gfj.2022.100780

Sant'Anna, P. H. C., & Zhao, J. (2020). Doubly robust difference-in-differences estimators. *Journal of Econometrics*, *219*(1), 101–122. https://doi.org/10.1016/j.jeconom.2020.06.003

Securities and Exchange Commission Philippines. (2019). *Memorandum Circular No. 4, series of 2019: Sustainability reporting guidelines for publicly-listed companies*. https://www.sec.gov.ph/wp-content/uploads/2020/09/2019MCNo4.pdf

Serafeim, G., & Yoon, A. (2023). Stock price reactions to ESG news: The role of ESG ratings and disagreement. *Review of Accounting Studies*, *28*(3), 1500–1530. https://doi.org/10.1007/s11142-022-09675-3

Shanaev, S., & Ghimire, B. (2022). When ESG meets AAA: The effect of ESG rating changes on stock returns. *Finance Research Letters*, *46*(Part A), Article 102302. https://doi.org/10.1016/j.frl.2021.102302

Shleifer, A. (1986). Do demand curves for stocks slope down? *The Journal of Finance*, *41*(3), 579–590. https://doi.org/10.1111/j.1540-6261.1986.tb04518.x

Singapore Exchange. (2016). *SGX Mainboard Rules 711A and 711B: Sustainability report* [Listing rules]. SGX Rulebook. https://rulebook.sgx.com/rulebook/711a

S&P Global Market Intelligence. (2025). *Compustat Global, annual fundamentals, 2014–2024* [Data set].

Tilleke & Gibbins. (2020, September). *Thailand's SEC unifies annual report for listed companies*. https://www.tilleke.com/insights/thailands-sec-unifies-annual-report-listed-companies/

Tsang, A., Wang, Y., Xiang, Y., & Yu, L. (2024). The rise of ESG rating agencies and management of corporate ESG violations. *Journal of Banking & Finance*, *169*, Article 107312. https://doi.org/10.1016/j.jbankfin.2024.107312

Tsang, A., Wang, Y., Xiang, Y., & Yu, L. (2025). ESG ratings and dividend changes: Evidence from the initiation of nonfinancial agency coverage. *Corporate Governance: An International Review*, *33*(4), 554–577. https://doi.org/10.1111/corg.12615


## Exhibits

### Table 1 Characteristics of scored firms in the base year and of never-scored firm-years

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

Note: ATT is the average effect over event years 0 to 3 (Eq. 6), with bootstrap standard errors and unadjusted 95% confidence intervals (CI); p-values of the three secondary outcomes are Holm-adjusted. MDE is the minimum detectable effect at 80% power, and pre-trend p is the joint test of Eq. (8).

Source: Authors' calculations from LSEG ESG scores and Compustat Global.

### Fig. 1 Event-time effects of the first LSEG ESG score on market-to-book ratio, market capitalization, leverage, and total assets

[Figure image file: Fig1.png in this folder]

Note: Markers show the estimates of Eq. (5) relative to event year −1 (set to zero), with bootstrap 95% intervals; open markers and dotted bars are years before the first score. Event year 4 is not part of Eq. (6).

Source: Authors' calculations from LSEG ESG scores and Compustat Global.

### Fig. 2 Event-time effects on market-to-book ratio and market capitalization by coverage wave

[Figure image file: Fig2.png in this folder]

Note: Markers show the estimates of Eq. (5) for each wave against all never-scored firms, with bootstrap 95% intervals; marker shape and line type identify the wave. All other cohorts are firms first scored outside the two waves.

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

### Table S7 Alternative specifications, inference, and initial-score splits for the average effect of the first LSEG ESG score

| Specification | ln(MTB) | Pre-trend p | ln(market cap) | Pre-trend p  |
|---|---|---|---|---|
| Baseline | 0.002 (0.024) | 0.074 | −0.055* (0.030) | 0.022 |
| Baseline, market-by-industry cluster bootstrap | 0.002 (0.027) | 0.225 | −0.055 (0.037) | 0.001 |
| R10, market-by-industry cluster bootstrap | −0.068*** (0.026) | 0.237 | −0.073** (0.031) | 0.002 |
| No covariates | 0.025 (0.022) | 0.028 | 0.016 (0.025) | <0.001 |
| Size measured at g − 3 | −0.008 (0.025) | 0.176 | −0.059* (0.032) | <0.001 |
| Size quintile indicators | −0.010 (0.023) | 0.072 | −0.053* (0.029) | 0.016 |
| Scored firms within control size range | −0.021 (0.026) | 0.212 | −0.096*** (0.035) | 0.133 |
| Dated one year later (R10) | −0.068*** (0.024) | 0.072 | −0.073** (0.030) | 0.002 |
| R10, size at original g − 1 | −0.074*** (0.024) | 0.066 | −0.060** (0.029) | 0.005 |
| Dated two years later | −0.048* (0.025) | 0.023 | −0.022 (0.028) | 0.076 |
| Malaysia, first scored 2021–2022 | 0.021 (0.037) | 0.549 | −0.146*** (0.051) | 0.491 |
| Thailand and Singapore, 2019–2020 | −0.009 (0.048) | 0.006 | 0.041 (0.052) | <0.001 |
| All other cohorts | −0.016 (0.034) | 0.006 | 0.005 (0.037) | 0.652 |
| Cohorts first scored by 2019 | 0.094** (0.047) | 0.003 | 0.185*** (0.052) | <0.001 |
| Cohorts first scored from 2020 | −0.010 (0.026) | 0.199 | −0.087*** (0.033) | 0.106 |
| High residual initial score | −0.012 (0.029) |  | −0.051 (0.035) |  |
| Low residual initial score | 0.016 (0.033) |  | −0.059 (0.041) |  |
| High minus low | −0.027 (0.040) |  | 0.008 (0.046) |  |

Note: Cells show the average effect over event years 0 to 3 with bootstrap standard errors in parentheses and the joint pre-trend p-value of Eq. (8); all rows are exploratory. *, **, and *** denote significance at 10%, 5%, and 1% (unadjusted p-values).

Source: Authors' calculations from LSEG ESG scores and Compustat Global.

### Table S8 Decomposition of the gap between the static two-way fixed effects estimate and the baseline estimate

| Estimator | ln(MTB) | ln(market cap) |
|---|---|---|
| Static TWFE, all firm-years (R6) | 0.064** (0.026) | 0.185*** (0.032) |
| Static TWFE, never-scored controls, event years −5 to 3 | 0.058** (0.025) | 0.149*** (0.030) |
| Heterogeneity-robust, no covariates (R2) | 0.025 (0.022) | 0.016 (0.025) |
| Heterogeneity-robust baseline | 0.002 (0.024) | −0.055* (0.030) |

Note: Rows move step by step from Eq. (11) on all firm-years to the baseline of Eq. (6), with standard errors in parentheses (firm-clustered for TWFE, bootstrap otherwise). *, **, and *** denote significance at 10%, 5%, and 1%.

Source: Authors' calculations from LSEG ESG scores and Compustat Global.

### Fig. S2 Event-time effects on ln(MTB) under alternative specifications and dating

[Figure image file: FigIA2.png in this folder]

Note: Panel A varies the size covariate and the support with the first scored fiscal year as event; panel B dates the event one year later. Marker shape and line type identify the specification, and bars are bootstrap 95% intervals.

Source: Authors' calculations from LSEG ESG scores and Compustat Global.
