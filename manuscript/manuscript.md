% JF:IP Insights manuscript, version 3 (Stage 4' revision after the three-gate re-review).
% Numbers are {{key}} placeholders filled from project_R/outputs/numbers.csv.
% [[COMPANION]] is replaced by the named or the blinded companion-study disclosure (manuscript/meta.md).
% Display equations: "$$latex <LaTeX> | (n)" are converted to Word equations (OMML) by the builder.
@@ title
Rated at the Peak? Firm Valuation around the First LSEG ESG Score in Five Southeast Asian Markets

@@ running_title
Valuation around first ESG scores

@@ abstract
Using the staggered first appearance of London Stock Exchange Group (LSEG) environmental, social, and governance (ESG) scores for {{n_treated_all}} non-financial firms in five Southeast Asian markets, mostly Malaysian and Thai, and {{n_never}} never-scored firms, we estimate heterogeneity-robust difference-in-differences effects on market-to-book ratios. Scored firms' market capitalization and market-to-book ratios grew faster than those of comparable firms before their first scored year. Under parallel trends, market-to-book ratios did not rise afterwards (estimate {{mtb_att}}; 95% interval {{mtb_lo}} to {{mtb_hi}}). The first scored year coincides with a valuation peak, and we detect no later gain.

@@ keywords
Difference-in-differences; ESG ratings; Firm valuation; Rating coverage; Selection; Southeast Asia; Staggered adoption

@@ jel
G14, G15, G32, M14, Q56

@@ body
# 1. Introduction

Environmental, social, and governance (ESG) scores now enter portfolio screens, index rules, and the mandates of sustainable funds. For a listed firm, the question of whether it is scored at all can matter as much as the level of its score. A firm without a score cannot enter a portfolio that holds only rated stocks, and a first score can, in principle, widen the set of investors who follow the stock. Merton (1987) shows that a larger investor base lowers the required return and raises the price of a stock. Models of sustainable investing add a preference channel: investors who value ESG attributes accept lower expected returns on assets they can classify as sustainable (Pástor et al., 2021; Pedersen et al., 2021). Evidence from mutual funds shows that investors respond strongly to newly published sustainability ratings (Hartzmark & Sussman, 2019). Together, these arguments predict that the initiation of ESG rating coverage raises a firm's market valuation.

A second prediction runs in the opposite direction of causality. Rating providers decide which firms to score, and a firm is likely to enter a provider's universe after it has become large, liquid, or visible enough to matter to the provider's clients, for example by joining an index, so coverage resembles an index addition. Additions to a major index raise prices around the announcement (Harris & Gurel, 1986; Shleifer, 1986), part of the effect reverses within weeks (Harris & Gurel, 1986), and a permanent component has been attributed to greater investor awareness (Chen et al., 2004). If coverage responds to past growth in market value, scored firms will look more valuable than unscored firms even when the score itself changes nothing. A static comparison of rated and unrated firms, or a regression that pools all years before and after coverage, then attributes past growth to the rating.

The studies of rating coverage that we build on use U.S. firms. Tsang et al. (2024) find that firms covered by more ESG rating agencies commit fewer ESG violations, and the same authors document dividend changes after the initiation of coverage by non-financial rating agencies (Tsang et al., 2025). Bikmetova and Pirinsky (2026) study the intensity of coverage among U.S. firms and find that additional coverage is followed by lower toxic emissions, better ratings, and higher ownership by institutions that prefer high-ESG stocks. Research on sell-side analysts offers a closer analogue for valuation: the loss of analyst coverage lowers prices (Kelly & Ljungqvist, 2012), and the first analyst report on a neglected stock earns a positive announcement return that is driven by favorable coverage rather than by coverage as such (Demiroglu & Ryngaert, 2010). What we do not know is whether the first appearance of a firm-level ESG score moves the valuation of firms in emerging equity markets, where most listed firms are unscored and where coverage has expanded in large waves.

We study this question in five Southeast Asian markets: Indonesia, Malaysia, the Philippines, Singapore, and Thailand. The London Stock Exchange Group (LSEG), whose ESG scores were previously distributed as Refinitiv ESG and earlier as ASSET4 scores, extended coverage in these markets in waves that differ by market: {{n_coh_2020_2023}} of the {{n_treated_all}} non-financial firms that entered coverage between {{n_coh_min_year}} and {{n_coh_max_year}} did so in 2020 to 2023. Most listed firms remained unscored and serve as comparison firms. We treat the first fiscal year with an LSEG ESG score as a staggered event and estimate group-time average treatment effects on the treated (ATT) with the estimator of Callaway and Sant'Anna (2021), which avoids the biases of two-way fixed effects regressions when treatment timing varies and effects differ across cohorts (Baker et al., 2022; Goodman-Bacon, 2021). The primary outcome is the natural logarithm of the market-to-book (MTB) ratio. We recorded the hypotheses, sample rules, estimator, and robustness checks in a pre-analysis plan, which was committed to the project's version-control history before the estimation code and is included in the replication package, and we label every analysis added afterwards as exploratory.

The evidence has three parts. First, scored firms grew faster than comparable never-scored firms in the years before their first scored year. From event year −5 to the base year, a span of four years, their market capitalization grew {{mcap_runup_m5}} percent more and their MTB ratio {{mtb_runup_m5}} percent more than those of comparable firms. Second, MTB ratios did not rise after coverage began. Under conditional parallel trends from the base year, the average effect over the first four years is {{mtb_att}} (standard error {{mtb_se}}), with a 95% confidence interval from {{mtb_lo}} to {{mtb_hi}}. Third, when we date coverage one year later, which allows for the time it takes to publish a score built from a firm's annual disclosures, the effect becomes {{mtb_R10}} (*p* {{mtb_R10_p_txt}}). This decline is measured from the first scored year, the year of peak valuation, so it cannot separate a reversal of the run-up from an effect of coverage. Under parallel trends, valuations therefore peak around the first scored year and do not rise afterwards. A static two-way fixed effects regression on the same data attributes a {{mtb_R6_pct}} percent MTB increase to coverage, which illustrates how a pooled design turns selection into an apparent rating effect.

We do not claim that coverage has no effect on valuation. The pre-coverage run-up casts doubt on the parallel-trends assumption that the post-coverage estimates need. When we allow post-coverage departures from parallel trends of up to a quarter of the largest year-to-year change observed before coverage, in the spirit of Rambachan and Roth (2023), the interval for the MTB effect widens to {{mtb_rm025_lo}} to {{mtb_rm025_hi}}. Because the upper limit of the unadjusted interval lies just below a 5 percent increase, any such departure admits positive effects of that size. What the data support is an ordering of events: the first score follows a period of relative growth and coincides with a valuation peak, and under parallel trends no specification detects a valuation gain after it.

The paper contributes to research on the financial consequences of ESG ratings. Ratings from different providers disagree widely (Berg, Kölbel, et al., 2022), disagreement rises with disclosure (Christensen et al., 2022), and it carries a return premium and affects demand (Avramov et al., 2022; Gibson Brandon et al., 2021). The historical scores of the provider we study have been rewritten on a large scale (Berg et al., 2020), and its recent scores remain subject to revision (Sahin et al., 2023). We add emerging-market evidence on the extensive margin of coverage, measured against a large group of never-scored firms, and show that selection into coverage matters for any comparison of rated and unrated firms. The results also illustrate how pre-trends in staggered designs can carry economic content (Roth, 2022).

The rest of the paper proceeds as follows. Section 2 reviews related work and states the hypotheses. Section 3 describes the institutional setting and the data. Section 4 presents the methods. Section 5 reports the results. Section 6 discusses them, Section 7 states the limitations, and Section 8 concludes.

# 2. Related Literature and Hypotheses

## 2.1. Ratings, investor demand, and valuation

Two mechanisms link the first ESG score to a firm's valuation. The first is investor recognition. In Merton (1987), investors hold only the stocks they know about, and a stock followed by fewer investors trades at a lower price because its idiosyncratic risk is borne by a small group. A first score makes the firm visible to investors who screen on ESG data. The second mechanism is preference: when some investors derive utility from holding sustainable assets, the prices of assets classified as sustainable rise and their expected returns fall (Pástor et al., 2021; Pedersen et al., 2021). Both channels predict a positive effect of coverage on valuation, and the second predicts a larger effect for firms that receive a high initial score.

The strength of either channel depends on whether investors act on the particular score. Fund investors react to fund-level sustainability ratings (Hartzmark & Sussman, 2019), and the holdings of ESG funds in the United States respond to the ratings of one provider more than to those of others (Berg, Heeb, et al., 2022). Scores from different providers disagree (Berg, Kölbel, et al., 2022), and disagreement is priced (Avramov et al., 2022; Gibson Brandon et al., 2021). A score from one provider may therefore be a weak signal for investors who follow another provider, which would weaken both mechanisms.

## 2.2. Coverage as a selection event

Rating coverage is not assigned at random. We expect providers to extend coverage to firms that belong to the indices their clients track and that disclose enough information to be scored; the provider's coverage rules are not part of our data. Mandatory sustainability reporting raises the amount of information available about listed firms (Krueger et al., 2024), which can make scoring feasible. The size of a firm also affects the score it receives: larger firms receive higher scores from the provider we study (Dobrick et al., 2023). If providers select firms that have grown, a comparison of the valuations of scored and unscored firms mixes the effect of coverage with the growth that led to it.

The setting matters for the size of these effects. Mandatory ESG disclosure raises stock liquidity most for firms with weaker information environments (Krueger et al., 2024), so a first ESG score could matter more in emerging markets than in the United States. But if providers score only firms that are already large and closely followed, the score adds least for the firms that receive it.

The analogy with sell-side coverage is instructive. Losing analyst coverage raises information asymmetry and lowers prices (Kelly & Ljungqvist, 2012), while the first coverage of a neglected stock raises its price only when the coverage is favorable (Demiroglu & Ryngaert, 2010). An ESG score differs from an analyst report because it rarely contains news about cash flows, and because it arrives with a delay after the firm's own disclosures. The analogy suggests that any valuation effect of a first ESG score should be concentrated in firms that receive favorable scores and in firms that were less visible before coverage.

## 2.3. Hypotheses

The pre-analysis plan states three hypotheses, tested two-sided.

H1 (primary): The initiation of LSEG ESG coverage changes the log MTB ratio of scored firms relative to comparable never-scored firms. The recognition and preference channels predict a positive effect (Merton, 1987; Pástor et al., 2021; Pedersen et al., 2021). The selection view predicts no effect after coverage, together with relative growth before coverage, as for firms that are added to an index after a period of growth (Chen et al., 2004).

H2 (secondary): Coverage changes log market capitalization, book leverage, and log total assets.

H3 (heterogeneity): The effect on log MTB differs between firms that receive an initial score above and below the median of their cohort, as the preference channel (Pedersen et al., 2021) and the evidence on favorable first coverage (Demiroglu & Ryngaert, 2010) suggest.

# 3. Institutional Setting and Data

## 3.1. ESG rating coverage in the five markets

The five markets differ in size, development, and disclosure rules. Singapore is the most developed of the five, and its exchange requires every listed issuer to publish an annual sustainability report on a comply-or-explain basis for financial years ending on or after 31 December 2017 (Singapore Exchange, 2016). In Malaysia, ESG scores of FTSE Russell, another part of LSEG, covered the constituents of the FTSE Bursa Malaysia EMAS index, about 30 percent of listed companies, until Bursa Malaysia and LSEG agreed in November 2022 to extend these scores to all companies on the Main and ACE Markets (Bernama, 2022). We do not document the timing of sustainability-reporting rules in Indonesia, Malaysia, the Philippines, and Thailand. This paper studies the LSEG ESG score, formerly Refinitiv ESG, which is a different product from the FTSE Russell scores. Some firms that enter LSEG coverage may therefore already have been scored by FTSE Russell or by other providers; our data do not record those scores.

Coverage entered the five markets in waves (Table IA2 and Fig. IA1 of the Internet Appendix). Thailand and Singapore account for {{n_th_sg_2019_2020}} first scores in 2019 and 2020, and Malaysia for {{n_my_2021_2022}} first scores in 2021 and 2022. Over the full period, Malaysian firms account for {{n_my_treated}} of the {{n_treated_all}} scored firms ({{pct_my_treated}} percent), and Malaysian and Thai firms together for {{pct_my_th_treated}} percent; Indonesia contributes {{n_id_treated}}, Singapore {{n_sg_treated}}, and the Philippines {{n_ph_treated}} scored firms. The pooled estimates are therefore weighted toward Malaysia and Thailand, and we report market-level estimates in the Internet Appendix. The data do not record why the provider expanded coverage in a given market and year; changes in disclosure rules (Singapore Exchange, 2016), which raise the information available about listed firms (Krueger et al., 2024), and changes in index membership are possible reasons that we cannot observe.

## 3.2. Sample and coverage timing

The data set covers all {{n_universe_firms}} firms listed in the five markets from 2014 to 2024 ({{n_universe_fy}} firm-years). It combines the annual LSEG ESG score (LSEG, 2025) with accounting and market data from Compustat Global (S&P Global Market Intelligence, 2025). We use the ESG score field, not the combined score that adjusts for controversies. The files do not record the date on which the scores were downloaded, so the vintage of the recent, revisable scores is not known exactly. [[COMPANION]] That study uses only firm-years with ESG and governance data and asks how reporting standards and board structure relate to the gap between ESG scores and controversy scores. The present paper uses the full listed universe, treats the first appearance of an ESG score as an event, and studies market valuation and financing. No outcome or treatment variable, estimate, table, or figure is shared between the two papers.

We drop financial firms, which leaves {{n_nonfin_firms}} firms. A firm's treatment year is the first fiscal year with a non-missing LSEG ESG score. Once a firm is scored, it almost always remains scored ({{n_cov_gap}} of the {{n_treated_all}} scored firms have a later year without a score), so we treat coverage as permanent, which is the staggered-adoption setting of Callaway and Sant'Anna (2021). We drop the {{n_cov2014}} firms that were already scored in 2014 because they have no pre-coverage year. The estimation sample has {{n_est_firms}} firms and {{n_est_fy}} firm-years: {{n_treated_all}} firms first scored between {{n_coh_min_year}} and {{n_coh_max_year}} and {{n_never}} firms never scored. This is the full firm-year grid; a firm-year enters an estimate only when the outcome is observed in both the base year and the comparison year, and MTB ratios at or below zero (negative book equity) are set to missing. Table IA4 of the Internet Appendix reports the number of firm-years available for each outcome, and Table IA6 the number of scored firms by event year. Of the {{n_attr_base}} scored firms in cohorts observed through event year 3 that have an MTB ratio in the base year, {{n_attr_e3}} ({{pct_attr_e3}} percent) also have one in event year 3; the others leave the sample through delisting or missing data. Never-scored firms are much smaller on average, and many trade thinly. Because the comparison rests on changes adjusted for size, country, and industry, it does not require similar levels, but it does require enough never-scored firms of comparable size, which the check that drops small control firms (Section 4.5) addresses.

The treatment year need not be the year in which investors could first see a score, for two reasons. First, the score for fiscal year *g* is built from the firm's reports for that year, which are published after the year ends; a score dated *g* reaches investors in year *g* + 1 at the earliest. Second, the provider has rewritten historical scores on a large scale (Berg et al., 2020), and scores for the five most recent fiscal years can change after publication (Sahin et al., 2023). If historical years were filled in when a firm entered coverage, the treatment year precedes the first published score by more than one year. Both features move the true publication date later, never earlier, so they cannot create the pre-coverage growth we report, but they can place pre-publication years in our post-coverage window. We address this with estimates that date coverage one year later (Section 5.4).

## 3.3. Outcomes

The primary outcome is the natural logarithm of the MTB ratio, the market value of equity divided by its book value. Three secondary outcomes describe size and financing: the logarithm of market capitalization, book leverage (total debt divided by total assets), and the logarithm of total assets. Market capitalization reflects both price changes and changes in the number of shares, and the data contain neither stock returns nor shares outstanding, so we use MTB for statements about valuation and market capitalization for statements about size. Monetary amounts are in U.S. dollars as recorded in the data set. We winsorize MTB, market capitalization, leverage, and total assets at the 1st and 99th percentiles of the pooled sample before taking logarithms.

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

# 5. Results

## 5.1. Which firms get scored

Table 1 compares scored firms in the year before their first score with never-scored firm-years. Scored firms are much larger: their median market capitalization is {{t1_mcap_tr_med}} million U.S. dollars against {{t1_mcap_nv_med}} million for never-scored firm-years, and their median total assets are {{t1_asset_ratio_med}} times those of never-scored firms. Their mean MTB ratio is {{t1_mtb_tr_mean}}, compared with {{t1_mtb_nv_mean}}, and their mean return on assets is {{t1_roa_tr_mean}}, compared with {{t1_roa_nv_mean}}. The normalized differences are largest for size ({{t1_mcap_nd}} for market capitalization and {{t1_asset_nd}} for total assets) and small for leverage ({{t1_lev_nd}}). These differences in levels fit the view that providers extend coverage to large and visible firms (Section 2.2), and the size gap matters for the scores themselves, because larger firms receive higher scores from this provider (Dobrick et al., 2023). They motivate the comparison of changes and the adjustment for size, country, and industry in Eq. (3).

The medians agree: the median MTB ratio is {{t1_mtb_tr_med}} for scored firms and {{t1_mtb_nv_med}} for never-scored firm-years, while median leverage is almost the same ({{t1_lev_tr_med}} and {{t1_lev_nv_med}}). Return on assets is available for far fewer firm-years (Table 1), so we use it only descriptively. The higher MTB level of scored firms fits the pre-coverage growth documented in Section 5.3, as for firms added to an index (Chen et al., 2004).

## 5.2. Average effects of the first score

Table 2 reports the headline estimates of Eq. (6). The effect on log MTB is {{mtb_att}}, with a standard error of {{mtb_se}} and a 95% confidence interval from {{mtb_lo}} to {{mtb_hi}}. In terms of the MTB ratio, the interval excludes changes outside the range from {{mtb_lo_pct}} to {{mtb_hi_pct}} percent under assumption (2). The minimum detectable effect from Eq. (7) is {{mtb_mde}}: an effect of about {{mtb_mde_pct}} percent on the MTB ratio would be detected with 80% probability. The range of effects compatible with the data under assumption (2) is given by the confidence interval, not by the MDE, and it includes increases of a few percent. The effect on log market capitalization is {{mcap_att}} (Holm-adjusted *p* {{mcap_pholm_txt}}). Total assets rise by {{asset_att}} log points after coverage (unadjusted *p* {{asset_p_txt}}; Holm-adjusted *p* {{asset_pholm_txt}}), and leverage rises by {{lev_att_pp}} percentage points (Holm-adjusted *p* {{lev_pholm_txt}}). None of the four outcomes shows a significant change at the 5% level after the Holm adjustment. Under assumption (2), the MTB estimate gives no sign of the positive effect that the recognition channel of Merton (1987) and the preference channel of Pástor et al. (2021) and Pedersen et al. (2021) predict. Hartzmark and Sussman (2019) show that fund flows respond strongly to newly published sustainability ratings; that channel concerns demand for funds, and our estimate indicates that it did not produce a lasting valuation gain for newly scored firms in these markets. U.S. studies find changes in firm conduct and financial policy after coverage (Bikmetova & Pirinsky, 2026; Tsang et al., 2024, 2025); our outcomes differ from theirs.

## 5.3. Dynamics before and after the first score

Fig. 1 plots the event-time estimates of Eq. (5) for all four outcomes. Before the first score, the coefficients for market capitalization and MTB are negative and rise toward zero. For market capitalization, the estimates for event years −5 and −4, four and three years before the base year, are {{mcap_em5}} and {{mcap_em4}}; for MTB, they are {{mtb_em5}} and {{mtb_em4}}. This run-up resembles the growth that precedes additions to a major index (Chen et al., 2004; Harris & Gurel, 1986; Shleifer, 1986) and is the pattern the selection view in Section 2.2 predicts. Over the four years from event year −5 to the base year, scored firms' market capitalization grew {{mcap_runup_m5}} percent more than that of comparable firms, and their MTB ratio {{mtb_runup_m5}} percent more. The joint test of Eq. (8) rejects parallel pre-trends for market capitalization (*p* {{mcap_pre_p_txt}}) but not at the 5% level for MTB (*p* {{mtb_pre_p_txt}}), although the individual MTB estimates for event years −5 and −4 are significant (*p* {{mtb_em5_p_txt}} and *p* {{mtb_em4_p_txt}}). Total assets follow a similar but weaker pattern, and leverage falls toward the base year (pre-trend *p* {{lev_pre_p_txt}}). As Roth (2022) cautions, a joint test that does not reject at the 5% level, as for MTB, is not evidence that pre-trends are absent.

After the first score, the MTB coefficients lie between {{mtb_e3}} and {{mtb_e2}} from event year 0 to event year 3, and none differs from zero at the 5% level. In event year 4, which only {{mtb_nfirms_e4}} scored firms from {{mtb_ncoh_e4}} cohorts reach, the MTB estimate is {{mtb_e4}} (*p* {{mtb_e4_p_txt}}) and the market capitalization estimate is {{mcap_e4}} (*p* {{mcap_e4_p_txt}}); we plot event year 4 but exclude it from Eq. (6) for this reason. For market capitalization, the estimate for event year 1 is {{mcap_e1}} (*p* {{mcap_e1_p_txt}}), and the estimates for later years are not significant. Total assets rise after coverage, with an estimate of {{asset_e3}} in event year 3, and leverage returns toward its earlier level. The valuation gap between scored and comparable firms thus widens before coverage and stops widening afterwards, with no mirror image of the price decline that follows a loss of analyst coverage (Kelly & Ljungqvist, 2012). Falling leverage before the base year and rising total assets fit firms that raise equity or grow their assets before they enter coverage. Without data on share issuance, we cannot tell whether the growth in market capitalization before coverage reflects rising prices, new shares, or both, which is why we base statements about valuation on the MTB ratio.

## 5.4. Timing of coverage and sensitivity to pre-trends

Table 3 reports the robustness checks, including those that address the timing of coverage and the pre-trends. When we date coverage one year after the first scored fiscal year (row R10), so that the base year is the first scored year and the post-coverage window starts when a score could first have been published, the MTB effect is {{mtb_R10}} (95% interval {{mtb_R10_lo}} to {{mtb_R10_hi}}; *p* {{mtb_R10_p_txt}}), a decline of about {{mtb_R10_pct}} percent, estimated from {{mtb_R10_ntr}} scored and {{mtb_R10_nco}} control firms. The market capitalization effect is {{mcap_R10}} (*p* {{mcap_R10_p_txt}}), and the asset effect is {{asset_R10}}. This estimate assumes parallel trends from the first scored year, which is the year of peak valuation. The joint pre-trend test for this dating gives *p* {{mtb_R10_pre_p_txt}}, and with M̄ = 0.25 in Eq. (10) its robust interval is {{mtb_R10_rm025_lo}} to {{mtb_R10_rm025_hi}}, which includes zero; the decline is no longer significant once M̄ reaches {{mtb_R10_bd0}}. Two readings fit the decline. If the provider selects firms after a period of unusually high valuation and part of that valuation later reverses, the decline measures the reversal, and it can hide a positive effect of coverage that offsets part of it. If valuations would otherwise have stayed at their peak, coverage lowered them. The data cannot separate the two readings. Because scores were backfilled or revised (Berg et al., 2020; Sahin et al., 2023), later dating also moves the base year closer to the end of the run-up.

Restricting the sample to the {{n_R11_cohorts}} cohorts first scored no later than 2021, which are observed through event year 3 (row R11; {{mtb_R11_ntr}} scored and {{mtb_R11_nco}} control firms), gives an MTB effect of {{mtb_R11}} (*p* {{mtb_R11_p_txt}}), so the change in cohort composition across event years does not explain the headline estimate, although the smaller sample widens the interval. Removing a linear pre-trend with Eq. (9) (row R7) changes the MTB effect to {{mtb_R7}} (95% interval {{mtb_R7_lo}} to {{mtb_R7_hi}}). The estimate is negative because a continued run-up would have raised valuations further; the interval includes zero. For market capitalization the same adjustment gives {{mcap_R7}} (*p* {{mcap_R7_p_txt}}): relative to a continued linear run-up, scored firms' market value grew more slowly after coverage. Conditioning on pre-coverage growth (row R8), which compares scored firms with never-scored firms that grew at a similar rate before coverage and that therefore share any tendency to revert, gives an MTB effect of {{mtb_R8}} (*p* {{mtb_R8_p_txt}}). If part of the pre-coverage growth reflected temporary demand of the kind documented around index additions, whose price effects partly reverse (Harris & Gurel, 1986), this comparison partly accounts for the reversal and shows no significant gain, but its interval, from {{mtb_R8_lo}} to {{mtb_R8_hi}}, admits gains of several percent. It conditions only on the growth of market capitalization from year *g* − 3 to year *g* − 1, and control firms matched on past growth can themselves revert, so it does not settle the reversal question.

Table IA5 of the Internet Appendix reports the bounds of Eq. (10), which follow the logic of the relative-magnitudes restriction of Rambachan and Roth (2023). The largest change between consecutive pre-coverage MTB estimates is {{mtb_rm_dmax}}. With M̄ = 0.25, the robust interval for the MTB effect is {{mtb_rm025_lo}} to {{mtb_rm025_hi}}; with M̄ = 0.5, it is {{mtb_rm050_lo}} to {{mtb_rm050_hi}}; and with M̄ = 1, it is {{mtb_rm100_lo}} to {{mtb_rm100_hi}}. Every interval includes zero, and none excludes effects of moderate size in either direction once departures from parallel trends of the size seen before coverage are allowed. The upper limit of the unadjusted interval, {{mtb_hi}}, lies just below a 5 percent increase in the MTB ratio ({{log105}} log points): any departure with M̄ of {{mtb_bd5}} or more admits an increase of 5 percent, and any departure at all admits a positive effect. The post-coverage null and the absence of a positive effect are therefore both conditional on assumption (2).

## 5.5. Robustness and heterogeneity

The pre-specified checks in rows R1 to R4 of Table 3 leave the valuation result unchanged, including the change of comparison group proposed by Callaway and Sant'Anna (2021) and the removal of the outcome-regression covariates of Sant'Anna and Zhao (2020). The effect on log MTB is {{mtb_R1}} when not-yet-scored firms join the control group, {{mtb_R2}} without covariates, {{mtb_R3}} without the 2020 and 2021 cohorts, and {{mtb_R4}} when control firms below the size range of scored firms are dropped; none differs from zero at the 10% level. The size results are less stable. The market capitalization effect shrinks to {{mcap_R4}} under the size restriction, and the asset effect ranges from {{asset_R2}} without covariates to {{asset_R4}} under the size restriction, so we do not read the asset estimate in Table 2 as evidence that coverage causes growth.

The placebo in row R5 dates coverage three years before the first score and uses only years before the actual score. It yields an effect of {{mtb_R5}} on log MTB (*p* {{mtb_R5_p_txt}}) and of {{mcap_R5}} on log market capitalization (*p* {{mcap_R5_p_txt}}). The placebo fails, and the failure restates the pre-coverage growth shown in Fig. 1 in a different form rather than adding independent evidence. Row R6 reports the static two-way fixed effects regression of Eq. (11). It attributes an increase of {{mtb_R6}} in log MTB (*p* {{mtb_R6_p_txt}}) and of {{mcap_R6}} in log market capitalization to coverage. Because it compares all post-coverage years with all earlier years, it counts part of the pre-coverage growth as an effect of the rating. Part of the gap between row R6 and the baseline reflects the covariates and the event window, since the heterogeneity-robust estimate without covariates is {{mtb_R2}} (row R2); the remainder is an example of the biases of static two-way fixed effects regressions under staggered timing described by Goodman-Bacon (2021) and Baker et al. (2022).

Row R9 and Table IA1 of the Internet Appendix exclude one market at a time. Across the five leave-one-market-out samples, the MTB effect ranges from {{mtb_lomo_min}} to {{mtb_lomo_max}}, and excluding Malaysia gives {{mtb_R9}} (*p* {{mtb_R9_p_txt}}). The market capitalization effect is less stable: it turns to {{mcap_R9}} when Malaysian firms are excluded, so the negative baseline estimate for market capitalization reflects the large Malaysian cohorts of 2021 and 2022. Estimated market by market (Table IA3), the MTB effect is {{mtb_pm_MY}} in Malaysia ({{mtb_pm_MY_ntr}} scored firms) and {{mtb_pm_TH}} in Thailand ({{mtb_pm_TH_ntr}} scored firms); the estimates for Indonesia, the Philippines, and Singapore rest on few scored firms and have wide confidence intervals. The Singaporean estimate, of interest because reporting became mandatory there from financial year 2017 (Krueger et al., 2024; Singapore Exchange, 2016), is small and imprecise.

The last three rows of Table 3 split scored firms at the median of the first ESG score within their cohort. The MTB effect is {{mtb_high}} for firms that enter coverage with a high score and {{mtb_low}} for firms with a low score. The difference of {{mtb_diff}} (standard error {{mtb_diff_se}}, *p* {{mtb_diff_p_txt}}) is not significant, and its minimum detectable value is {{mtb_diff_mde}}. We find no evidence that the content of the first score matters for valuation, but the test cannot exclude moderate differences. The preference channel (Pedersen et al., 2021) and the evidence on favorable first coverage (Demiroglu & Ryngaert, 2010) predict such a difference; a weak signal, given that providers disagree (Berg, Kölbel, et al., 2022; Christensen et al., 2022), is one reason it may be absent. Because recent scores can be revised after publication (Sahin et al., 2023), the initial scores used for this split may differ from those that investors saw.

## 5.6. Economic magnitude

Under assumption (2), the upper end of the headline interval corresponds to an increase of {{mtb_hi_pct}} percent in the MTB ratio. This is of the same order as the announcement return of 4.86 percent that Demiroglu and Ryngaert (2010) report for the first analyst coverage of neglected stocks, and larger than the price increase of more than 3 percent that Harris and Gurel (1986) report for additions to the S&P 500, most of which reversed within about two weeks. Annual ratios measured at fiscal year-end would miss an announcement effect of that size that reverses within weeks, so our estimates speak to lasting revaluation, as a permanent increase in investor recognition would produce (Chen et al., 2004; Merton, 1987), and not to temporary price pressure (Harris & Gurel, 1986).

The dynamics offer a second benchmark. Over the four years before the base year, scored firms' MTB ratio grew {{mtb_runup_m5}} percent more than that of comparable firms, and their market capitalization {{mcap_runup_m5}} percent more. Under assumption (2), a lasting valuation effect as large as half of the MTB run-up would lie just outside the headline interval, so any such effect is small relative to the growth that precedes coverage, which is consistent with a provider that covers firms after they have become visible to investors (Chen et al., 2004; Merton, 1987).

# 6. Discussion

## 6.1. Interpreting the post-coverage path

The flat MTB path after the first score admits three readings, which differ in how the pre-coverage trend would have evolved (Rambachan & Roth, 2023; Roth, 2022). Under parallel paths from the base year, coverage had no effect within the interval of Section 5.2. If the run-up would have continued, coverage lowered valuations relative to that trend, as the trend-adjusted estimate reads it. If instead the run-up was partly transitory and would have reversed, the flat path is consistent with a positive effect of coverage that offset the reversal. The last reading deserves weight: firms selected after relative growth are likely selected partly on transitory value, as the partial reversal of index-addition effects illustrates (Chen et al., 2004; Harris & Gurel, 1986).

Three pieces of evidence speak to the reversal reading. First, when coverage is dated one year later, MTB ratios decline after the first scored year. A reversal would produce such a decline, and a positive effect of coverage could offset part of it; the estimate cannot distinguish the two. Second, when scored firms are compared with never-scored firms that grew at a similar rate before coverage, and that are therefore subject to similar reversal, the MTB effect is small and insignificant, but that comparison conditions on a single measure of past growth and its interval admits gains of several percent. Third, the bounds in Section 5.4, built on the relative-magnitudes idea of Rambachan and Roth (2023), include zero for every value of M̄ we consider, but they also include effects of several percent in both directions. The evidence therefore does not show that coverage has no effect. It shows that no specification detects a valuation gain after the first score, although the bounds do not exclude one, and that the most robust feature of the data is the ordering of events: the first score follows a period of relative growth and coincides with a valuation peak.

The market-level estimates reinforce this reading. The two markets with the most scored firms, Malaysia and Thailand, both show MTB effects close to zero, and no market shows a significant positive effect. The coverage waves differ in timing across markets: the Thai and Singaporean waves came in 2019 and 2020, the Malaysian wave in 2021 and 2022. A single shock common to all five markets is therefore a less likely explanation of the pattern, although the waves may reflect market-specific changes in disclosure rules (Krueger et al., 2024; Singapore Exchange, 2016) or index composition that we do not observe.

## 6.2. Relation to prior evidence

The evidence on sell-side coverage suggests why a first ESG score might move prices: the loss of coverage lowers prices (Kelly & Ljungqvist, 2012), and the first report on a neglected stock raises prices when it is favorable (Demiroglu & Ryngaert, 2010). Hartzmark and Sussman (2019) document a demand channel through fund flows. Two features of ESG scores may explain why we detect no valuation gain. An ESG score rarely contains news about cash flows, and it arrives with a lag after the firm's own disclosures. In addition, the firms in our sample were already large and visible before their first LSEG score (Table 1), and some of them had been scored by FTSE Russell, so the recognition channel of Merton (1987) had less room to operate; we have not tested this explanation directly because the data contain no measures of ownership or investor attention. Limits on foreign ownership that apply to some listed firms in these markets could also mute a recognition channel that works through foreign ESG investors; we observe neither the limits nor foreign holdings.

The results also fit the evidence on rating disagreement. If ESG funds follow one provider more than others (Berg, Heeb, et al., 2022), coverage by a different provider may matter little for demand, and the dispersion of scores across providers (Berg, Kölbel, et al., 2022; Christensen et al., 2022) weakens the information content of any single score. Price effects of index additions, which the pre-coverage growth resembles, are concentrated around the announcement; part of them lasts (Chen et al., 2004; Shleifer, 1986) and part reverses (Harris & Gurel, 1986), and annual data cannot isolate an effect of that kind. Our evidence complements the U.S. findings that coverage changes firm conduct (Bikmetova & Pirinsky, 2026; Tsang et al., 2024) and financial policy (Tsang et al., 2025): we find no stable change in leverage or assets, and we observe no measures of conduct.

## 6.3. Implications

The main implication is methodological. A cross-sectional valuation premium of rated firms, or a static two-way fixed effects estimate, can reflect the selection of firms into coverage rather than an effect of ratings. In our data, the static regression suggests that coverage raises the MTB ratio by {{mtb_R6_pct}} percent, while the heterogeneity-robust estimator and its event-time profile attribute the gap to growth before coverage (Callaway & Sant'Anna, 2021; Roth, 2022). Studies that compare rated and unrated firms in these markets should model the timing of coverage and report pre-coverage dynamics.

For listed firms in the five markets, the estimates give no support to the expectation that a first LSEG score will raise the market valuation of their shares through investor recognition or preferences (Merton, 1987; Pástor et al., 2021), although the evidence is conditional on assumption (2). Under that assumption, the confidence interval excludes increases of more than {{mtb_hi_pct}} percent, and smaller effects remain possible. The evidence does not speak to short-lived price effects around publication, to firms outside the scored sample, or to outcomes other than valuation and financing. For investors and exchanges, scored firms are a selected group whose valuation history differs from that of unscored firms. Whether the same ordering holds in other markets or for other providers is a question these data cannot answer.

# 7. Limitations

The study has eight limitations. First, the provider chooses when to cover a firm, and we have no source of variation in coverage that is unrelated to firm performance. The post-coverage estimates rely on conditional parallel trends from the base year, an assumption that the pre-coverage estimates call into question. Our sensitivity analysis uses a linear trend and a simplified bound; we do not compute the confidence sets of Rambachan and Roth (2023). Second, the data are annual and may contain backfilled or revised scores, so we observe neither the date on which a first score was published nor announcement returns; dating coverage one year later addresses only part of this gap. Third, we observe coverage by LSEG only. Some firms had scores from other providers before their first LSEG score, including FTSE Russell scores for Malaysian index constituents (Bernama, 2022), and the event we study is then an additional score rather than a first rating of any kind. Fourth, the data contain no stock returns, shares outstanding, ownership (including foreign holdings and foreign-ownership limits), index membership, or dates of sustainability reports, so we cannot separate price changes from share issuance, test the recognition channel directly, or show whether first scores coincide with index entry or with a firm's first sustainability report. Fifth, a small number of market capitalization values in the source data are implausibly large, winsorization over the pooled sample limits their influence without correcting them, an erroneous value in a cohort's base year enters every group-time estimate of that cohort, and return on assets is available for a minority of firm-years. Sixth, Malaysian and Thai firms account for {{pct_my_th_treated}} percent of scored firms, so the pooled estimates weight those markets heavily, and the firm-level bootstrap does not account for correlation within market-level coverage waves, so the intervals may be too narrow. Seventh, the minimum detectable effect on log MTB is {{mtb_mde}} (about {{mtb_mde_pct}} percent), so smaller effects would be detected with less than 80% probability; under parallel trends, the confidence interval excludes increases above {{mtb_hi_pct}} percent but not smaller ones. Eighth, the download date of the scores is not recorded, so the vintage of revisable recent scores is not known exactly, and we do not document the timing of disclosure rules outside Singapore.

# 8. Conclusion

Using the staggered first appearance of LSEG ESG scores for {{n_treated_all}} non-financial firms in Indonesia, Malaysia, the Philippines, Singapore, and Thailand, we find that scored firms, most of them Malaysian and Thai, grew faster than comparable never-scored firms before their first scored year and that, under parallel trends, their market-to-book ratios did not rise afterwards. The headline effect is {{mtb_att}} (95% interval {{mtb_lo}} to {{mtb_hi}}), and dating coverage one year later gives {{mtb_R10}}, a decline that may reflect a reversal of the pre-coverage run-up. The first scored year therefore coincides with a valuation peak, and we detect no later gain, although departures from parallel trends of the size seen before coverage would admit effects of several percent in either direction. Analyses that compare rated and unrated firms without modeling the timing of coverage will attribute this selection to the rating.

@@ references
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

Dobrick, J., Klein, C., & Zwergel, B. (2023). Size bias in Refinitiv ESG data. *Finance Research Letters*, *55*, Article 104014.

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

Singapore Exchange. (2016). *SGX Mainboard Rules 711A and 711B: Sustainability report* (applicable to financial years ending on or after 31 December 2017). https://rulebook.sgx.com/rulebook/711a

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
note:=Cells show the average effect over event years 0 to 3, with bootstrap standard errors in parentheses (firm-clustered in R6); R1 to R6 are pre-specified and R7 to R11 exploratory. \*, \*\*, and \*\*\* denote significance at 10%, 5%, and 1% (unadjusted p-values).
source:=Authors' calculations from LSEG ESG scores and Compustat Global.

@@ ia_intro
This Internet Appendix accompanies "Rated at the Peak? Firm Valuation around the First LSEG ESG Score in Five Southeast Asian Markets." Table IA1 re-estimates the average effects of the first score over event years 0 to 3 after excluding one market at a time. Table IA2 and Fig. IA1 show the number of non-financial firms that received their first LSEG ESG score in each year, by market. Table IA3 reports the estimates for each market separately, Table IA4 the number of firm-years available for each outcome, Table IA5 the relative-magnitude bounds of Eq. (10) in the paper, and Table IA6 the number of scored and control firms by event year for ln MTB. The pre-analysis plan is provided with the replication package.

@@ exhibits_ia
kind:=table
caption:=Table IA1|Leave-one-market-out estimates of the average effect of the first LSEG ESG score
csvfile:=tableIA1_formatted.csv
widths:=1.9,1.15,1.15,1.15,1.15
note:=Cells show the average effect over event years 0 to 3 without the named market, with bootstrap standard errors in parentheses. \*, \*\*, and \*\*\* denote significance at 10%, 5%, and 1% (unadjusted p-values).
source:=Authors' calculations from LSEG ESG scores and Compustat Global.

kind:=table
caption:=Table IA2|Number of non-financial firms by year of first LSEG ESG score and market
csvfile:=tableIA2_formatted.csv
widths:=1.3,0.85,0.85,0.9,0.9,0.85,0.75
note:=Firms first scored in 2014 are excluded because they have no pre-coverage year.
source:=Authors' calculations from LSEG ESG scores.

kind:=figure
caption:=Fig. IA1|Number of non-financial firms by year of first LSEG ESG score
png:=FigIA1.png
note:=Bars show the number of firms in the estimation sample first scored in each year, all five markets combined.
source:=Authors' calculations from LSEG ESG scores.

kind:=table
caption:=Table IA3|Estimates of the average effect of the first LSEG ESG score by market
csvfile:=tableIA3_formatted.csv
widths:=1.2,1.1,1.1,1.1,1.1,0.9
note:=Cells show the average effect over event years 0 to 3 estimated within each market, with bootstrap standard errors in parentheses. \*, \*\*, and \*\*\* denote significance at 10%, 5%, and 1% (unadjusted p-values).
source:=Authors' calculations from LSEG ESG scores and Compustat Global.

kind:=table
caption:=Table IA4|Firm-years and firms available for each outcome
csvfile:=tableIA4_formatted.csv
widths:=1.7,1.0,0.9,1.0,0.9,1.0
note:=Counts refer to the estimation sample; the last column is the share of firm-years with a missing outcome.
source:=Authors' calculations from LSEG ESG scores and Compustat Global.

kind:=table
caption:=Table IA5|Relative-magnitude bounds for the average effect of the first LSEG ESG score
csvfile:=tableIA5_formatted.csv
widths:=1.7,0.6,1.2,0.9,1.6
note:=The bias bound is M̄ times the largest change between consecutive pre-coverage estimates times the weighted mean of (e + 1) over event years 0 to 3 (Eq. 10). The robust interval widens the bootstrap 95% interval by this bound.
source:=Authors' calculations from LSEG ESG scores and Compustat Global.

kind:=table
caption:=Table IA6|Scored firms and control firms by event year for ln(MTB)
csvfile:=tableIA6_formatted.csv
widths:=1.2,1.3,1.1,2.2
note:=Scored firms are summed over cohorts; control firms are the smallest and largest number of never-scored firms across cohort cells.
source:=Authors' calculations from LSEG ESG scores and Compustat Global.
