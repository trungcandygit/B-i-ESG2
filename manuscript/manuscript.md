% JF:IP Insights manuscript. Numbers are {{key}} placeholders filled from project_R/outputs/numbers.csv.
% [[COMPANION]] is replaced by the named or the blinded companion-study disclosure (manuscript/meta.md).
@@ title
ESG Rating Coverage Follows Firm Value: Evidence from Five Southeast Asian Equity Markets

@@ running_title
ESG rating coverage and firm value

@@ abstract
Environmental, social, and governance (ESG) rating providers extended coverage to hundreds of listed firms in Indonesia, Malaysia, the Philippines, Singapore, and Thailand after 2018. Using the staggered first appearance of London Stock Exchange Group (LSEG) ESG scores for {{n_treated_all}} non-financial firms and {{n_never}} never-rated firms, we estimate heterogeneity-robust difference-in-differences effects. Rated firms' market capitalization grew {{mcap_runup_m5}} percent faster than that of comparable firms over the five years before their first score. After the first score, market-to-book ratios did not change (estimate {{mtb_att}}; 95% confidence interval {{mtb_lo}} to {{mtb_hi}}). Coverage follows firm value rather than raising it.

@@ keywords
Difference-in-differences; ESG ratings; Firm valuation; Investor recognition; Southeast Asia; Staggered adoption

@@ jel
G14, G32, M14, Q56

@@ body
# 1. Introduction

Environmental, social, and governance (ESG) ratings now shape portfolio screens, index membership, and the mandates of sustainable funds. Whether a firm is rated at all may therefore matter as much as the level of its rating. A firm without a score is invisible to investors who hold only rated stocks, and a first score can widen the firm's investor base. In Merton's (1987) model, a larger investor base lowers the required return and raises the price of a stock. Models of sustainable investing add a second channel: investors who value ESG attributes accept lower expected returns on assets they can identify as green (Pástor, Stambaugh, and Taylor, 2021; Pedersen, Fitzgibbons, and Pomorski, 2021). Hartzmark and Sussman (2019) show that fund investors respond strongly to newly published sustainability ratings. These arguments predict that the initiation of rating coverage raises firm value.

The opposite prediction is also plausible. Rating providers choose which firms to cover, and they tend to add firms that have become large or liquid enough to enter the indices their clients track. If coverage responds to past growth in market value, rated firms will look more valuable than unrated firms without coverage having caused any change. Evidence on coverage initiation so far comes from U.S. firms and concerns firm conduct rather than valuation. Tsang, Wang, Xiang, and Yu (2024) find that firms covered by more ESG rating agencies commit fewer ESG violations, and Bikmetova and Pirinsky (2026) find that coverage is followed by lower toxic emissions, better ratings, and higher ownership by ESG-oriented institutions.

We ask whether the first ESG score changes how equity markets value a firm, and we study the question in five Southeast Asian markets: Indonesia, Malaysia, the Philippines, Singapore, and Thailand. These markets offer a useful setting for two reasons. First, the London Stock Exchange Group (LSEG) extended its ESG coverage in these markets in large, market-specific waves: {{n_coh_2020_2023}} of the {{n_treated_all}} non-financial firms that entered coverage between {{n_coh_min_year}} and {{n_coh_max_year}} did so in 2020 to 2023. Second, most listed firms in these markets remain unrated, which supplies a large pool of never-rated comparison firms drawn from the same exchanges and years.

We use the year in which a firm first receives an LSEG ESG score as a staggered treatment and estimate group-time average treatment effects on the treated (ATT) with the estimator of Callaway and Sant'Anna (2021), which avoids the biases of two-way fixed effects regressions when treatment timing varies and effects are heterogeneous (Goodman-Bacon, 2021; Baker, Larcker, and Wang, 2022). The primary outcome is the natural logarithm of the market-to-book (MTB) ratio. We registered the hypotheses, sample rules, estimator, and robustness checks in a pre-analysis plan before estimating any effect.

We report two findings. First, coverage does not change valuation. The average effect on log MTB over the first four years of coverage is {{mtb_att}} (standard error {{mtb_se}}), and the 95% confidence interval excludes changes in the MTB ratio outside the range from {{mtb_lo_pct}} to {{mtb_hi_pct}} percent. Second, coverage arrives after a period of fast growth. Relative to never-rated firms with similar size, country, and industry, rated firms' market capitalization grew {{mcap_runup_m5}} percent and their MTB ratio {{mtb_runup_m5}} percent over the five years before the first score. After the first score, the valuation gap stops widening. The pattern fits a provider that follows market value rather than a rating that creates it.

The study contributes to research on the financial consequences of ESG ratings. Berg, Kölbel, and Rigobon (2022) show that ratings from different providers disagree widely, which raises the question of what investors learn from any single score. Our evidence adds that, in these five markets, the arrival of a first score carries no detectable valuation effect, while the selection of firms into coverage is strongly related to their prior market performance. The result warns against reading cross-sectional valuation premiums of rated firms as effects of ratings. It also illustrates how pre-trends in staggered designs can carry economic content rather than being a nuisance (Roth, 2022).

The rest of the paper proceeds as follows. Section 2 describes the data and the research design. Section 3 reports the results. Section 4 discusses the findings, states the limitations, and concludes.

# 2. Data and Research Design

## 2.1. Sample and coverage timing

The data set covers all {{n_universe_firms}} firms listed in Indonesia, Malaysia, the Philippines, Singapore, and Thailand from 2014 to 2024 ({{n_universe_fy}} firm-years). It combines annual LSEG ESG scores (LSEG, 2025) with accounting and market data from Compustat Global (S&P Global Market Intelligence, 2025). [[COMPANION]] That study uses only firm-years with ESG and governance data and asks how reporting standards and board structure relate to the gap between ESG scores and controversy scores. The present paper uses the full listed universe, treats the first appearance of an ESG score as an event, and studies market valuation and financing. No variable, estimate, table, or figure is shared between the two papers.

We drop financial firms, which leaves {{n_nonfin_firms}} firms. A firm's treatment year is the first fiscal year with a non-missing LSEG ESG score. Once a firm is scored, it almost always remains scored ({{n_cov_gap}} of the {{n_treated_all}} scored firms have a later year without a score), so we treat coverage as permanent. We drop the {{n_cov2014}} firms already scored in 2014 because they have no pre-coverage year. The estimation sample has {{n_est_firms}} firms and {{n_est_fy}} firm-years: {{n_treated_all}} firms first scored between {{n_coh_min_year}} and {{n_coh_max_year}} and {{n_never}} firms never scored. Coverage expanded in waves that differ by market. Thailand and Singapore account for {{n_th_sg_2019_2020}} first scores in 2019 and 2020, and Malaysia for {{n_my_2021_2022}} first scores in 2021 and 2022.

## 2.2. Outcomes

The primary outcome is the natural logarithm of the MTB ratio. Three secondary outcomes describe firm size and financing: the logarithm of market capitalization, book leverage (total debt divided by total assets), and the logarithm of total assets. Monetary amounts are in U.S. dollars as recorded in the data set. We winsorize MTB, market capitalization, leverage, and total assets at the 1st and 99th percentiles of the pooled sample before taking logarithms.

## 2.3. Estimation

For each cohort of firms first scored in year *g* and each year *t*, we compare the change in the outcome between year *g* − 1 and year *t* for firms in the cohort with the change for never-scored firms. Because rated firms are larger than unrated firms, we adjust for covariates measured in year *g* − 1 with an outcome regression (Sant'Anna and Zhao, 2020): we regress the change on country indicators, industry indicators, and a quadratic in log total assets among never-scored firms and use the fitted values as the counterfactual change for scored firms. The group-time effect is

$$ ATT(g,t) = mean over scored firms of [ΔY~i,t~ − ΔŶ~i,t~] | (1)

where ΔY~i,t~ is the change in the outcome of firm *i* from year *g* − 1 to year *t* and ΔŶ~i,t~ is its predicted change from the never-scored regression. We average the group-time effects by years since coverage, *e* = *t* − *g*, weighting each cohort by its number of scored firms. The headline estimate averages all effects from the year of the first score to three years later. Estimates for *e* ≤ −2 compare trends before coverage and are the pre-trend estimates.

Inference uses a bootstrap that resamples firms with replacement ({{B_BOOT}} replications, fixed seed), which keeps each firm's time series intact. We report bootstrap standard errors, percentile 95% confidence intervals, and the minimum detectable effect at 80% power and a 5% two-sided test (2.8 standard errors). We test the primary outcome at the 5% level and adjust the three secondary outcomes with the Holm method. The pre-analysis plan also fixed five robustness checks and one comparison: adding not-yet-scored firms to the controls, dropping the covariates, excluding the 2020 and 2021 cohorts, restricting controls to the size range of scored firms, dating coverage three years early as a placebo, and a static two-way fixed effects regression.

## 2.4. Use of generative AI

The authors used Claude (Anthropic), accessed through Claude Code in September 2026, to write and debug the R code, draft and edit the text, and search for and check references. The tool also screened candidate research questions and drafted the pre-analysis plan. The authors reviewed and approved the research question and the plan before any estimation, reviewed every output of the tool, checked each reported number against the R output files, and take full responsibility for the content.

# 3. Results

## 3.1. Who gets rated

Table 1 compares scored firms in the year before their first score with never-scored firm-years. Scored firms are much larger: their median market capitalization is {{t1_mcap_tr_med}} million U.S. dollars against {{t1_mcap_nv_med}} million, and their median total assets are {{t1_asset_ratio_med}} times those of never-scored firms. Their mean MTB ratio is {{t1_mtb_tr_mean}}, compared with {{t1_mtb_nv_mean}}. These differences in levels are the reason we compare changes rather than levels and adjust for size, country, and industry.

## 3.2. Coverage and valuation

Table 2 reports the average effects over the first four years of coverage. The effect on log MTB is {{mtb_att}} with a 95% confidence interval from {{mtb_lo}} to {{mtb_hi}}. The minimum detectable effect is {{mtb_mde}}, so an effect of about {{mtb_mde_pct}} percent on the MTB ratio would be detected with 80% probability. The effect on log market capitalization is {{mcap_att}} (Holm-adjusted *p* {{mcap_pholm_txt}}). Total assets rise by {{asset_att}} log points after coverage (unadjusted *p* {{asset_p_txt}}; Holm-adjusted *p* {{asset_pholm_txt}}), and leverage rises by {{lev_att_pp}} percentage points (Holm-adjusted *p* {{lev_pholm_txt}}).

Figure 1 shows the dynamics. Before the first score, the coefficients for market capitalization and MTB are negative and rise toward zero. For market capitalization, the estimates are {{mcap_em5}} five years and {{mcap_em4}} four years before the base year; for MTB, they are {{mtb_em5}} and {{mtb_em4}}. A negative pre-coverage coefficient means that the scored firms' outcome was lower, relative to its base-year level, than the path of comparable never-scored firms implies. Scored firms therefore gained value faster than comparable firms before they were rated. The joint test that all pre-coverage coefficients are zero gives *p* {{mcap_pre_p_txt}} for market capitalization and *p* {{mtb_pre_p_txt}} for MTB. From the year of the first score to three years later, the MTB coefficients lie between {{mtb_e3}} and {{mtb_e2}}, and none differs from zero at the 5% level. Leverage shows a different profile: it is higher before coverage relative to the base year (pre-trend *p* {{lev_pre_p_txt}}), dips in the base year, and returns to its earlier level afterwards.

## 3.3. Robustness and heterogeneity

Table 3 reports the pre-specified robustness checks. The valuation result does not depend on the choice of controls or covariates. The effect on log MTB is {{mtb_R1}} when not-yet-scored firms join the control group, {{mtb_R2}} without covariates, {{mtb_R3}} without the 2020 and 2021 cohorts, and {{mtb_R4}} when controls are restricted to the size range of scored firms; none differs from zero at the 10% level. The size results are less stable. The market capitalization effect shrinks to {{mcap_R4}} under the size restriction, and the asset effect falls to {{asset_R2}} without covariates and to {{asset_R3}} without the 2020 and 2021 cohorts but rises to {{asset_R4}} under the size restriction. We therefore do not read the asset estimate in Table 2 as evidence that coverage causes firms to grow.

The placebo in row R5 dates coverage three years before the first score and uses only years before the actual score. It yields an effect of {{mtb_R5}} on log MTB (*p* {{mtb_R5_p_txt}}) and of {{mcap_R5}} on log market capitalization (*p* {{mcap_R5_p_txt}}). The placebo fails, and it fails in the direction that Figure 1 predicts: the valuation gains that distinguish scored firms accrue before a rating provider covers them. Row R6 shows why the choice of estimator matters. A static two-way fixed effects regression compares all years after the first score with all years before it and therefore averages over the run-up. It attributes an increase of {{mtb_R6}} in log MTB (*p* {{mtb_R6_p_txt}}) and of {{mcap_R6}} in log market capitalization to coverage, which would support the conclusion that ratings raise firm value (Goodman-Bacon, 2021; Baker, Larcker, and Wang, 2022).

The last three rows of Table 3 split scored firms at the median of the first ESG score within their cohort. The MTB effect is {{mtb_high}} for firms that enter coverage with a high score and {{mtb_low}} for firms with a low score. The difference of {{mtb_diff}} (standard error {{mtb_diff_se}}, *p* {{mtb_diff_p_txt}}) is not significant, and its minimum detectable value is {{mtb_diff_mde}}. We find no evidence that the content of the first score matters for valuation, but the test cannot exclude moderate differences between the two groups.

# 4. Discussion and Conclusion

## 4.1. Interpretation

The event study supports two readings of the flat valuation path after the first score. If scored and never-scored firms would have followed parallel paths from the base year onward, coverage had no effect on valuation, and the confidence interval excludes changes outside the range from {{mtb_lo_pct}} to {{mtb_hi_pct}} percent. If instead the run-up in Figure 1 would have continued without coverage, the flat path implies that coverage lowered valuations relative to that trend. Neither reading supports the prediction that a first rating raises firm value. The more robust result is the ordering of events: rating coverage arrives after a period in which scored firms' market capitalization and MTB ratios grew faster than those of comparable firms.

This ordering fits a provider that adds firms once they become large or visible enough to matter to its clients. Table 1 shows that scored firms were already much larger than unscored firms before their first score, so they were probably known to many investors before coverage began. In Merton's (1987) framework, a first rating then adds little to the investor base. The result differs from the evidence of Kelly and Ljungqvist (2012), who show that losing analyst coverage lowers prices, and from the fund-level response to sustainability ratings documented by Hartzmark and Sussman (2019). One explanation consistent with our data is that an ESG score is a weaker information event than analyst coverage for these firms, especially given the disagreement among rating providers (Berg, Kölbel, and Rigobon, 2022). The U.S. evidence that coverage changes firm conduct (Tsang et al., 2024; Bikmetova and Pirinsky, 2026) concerns outcomes we do not observe, and our leverage and asset estimates do not show a stable financing response.

The results carry a methodological implication for studies that compare rated and unrated firms. A cross-sectional valuation premium of rated firms, or a static two-way fixed effects estimate, can reflect the selection of firms into coverage rather than an effect of ratings. In our sample, the static regression suggests that coverage raises MTB by {{mtb_R6_pct}} percent, while the heterogeneity-robust estimator and its event-time profile attribute the gap to growth that precedes coverage (Callaway and Sant'Anna, 2021; Roth, 2022). Whether the same ordering holds in other emerging markets, or for other rating providers, is a hypothesis that our data cannot test.

## 4.2. Limitations

The study has six limitations. First, the rating provider chooses when to cover a firm, and we have no source of variation in coverage that is unrelated to firm performance. The post-coverage estimates rely on conditional parallel trends from the base year, an assumption that the pre-coverage estimates call into question; the pre-analysis plan did not include sensitivity bounds for violations of parallel trends. Second, the data are annual, so we observe neither the date on which a first score was published nor announcement returns. Third, we observe coverage by LSEG only; some firms may have received scores from other providers earlier, which would bias the estimates toward zero. Fourth, a small number of market capitalization values in the source data are implausibly large; winsorization limits their influence but does not correct them, and return on assets is available for a minority of firm-years. Fifth, Malaysian firms account for most first scores in 2021 and 2022, so the average effect weights that market heavily. Sixth, the minimum detectable effect on log MTB is {{mtb_mde}}, so the design cannot rule out valuation effects smaller than about {{mtb_mde_pct}} percent.

## 4.3. Conclusion

Using the staggered first appearance of LSEG ESG scores for {{n_treated_all}} non-financial firms in Indonesia, Malaysia, the Philippines, Singapore, and Thailand, we find no change in market-to-book ratios after a firm is first rated. Rated firms had instead gained market value faster than comparable firms during the five years before their first score. Rating coverage in these markets follows firm value rather than creating it, and analyses that ignore this ordering will overstate the valuation benefit of being rated.

@@ references
Baker, Andrew C., David F. Larcker, and Charles C. Y. Wang, 2022, How much should we trust staggered difference-in-differences estimates?, *Journal of Financial Economics* 144(2), 370–395. https://doi.org/10.1016/j.jfineco.2022.01.004

Berg, Florian, Julian F. Kölbel, and Roberto Rigobon, 2022, Aggregate confusion: The divergence of ESG ratings, *Review of Finance* 26(6), 1315–1344. https://doi.org/10.1093/rof/rfac033

Bikmetova, Natalya, and Christo A. Pirinsky, 2026, Do ESG rating agencies improve ESG performance?, *Journal of Business Ethics* 204(2), 335–365. https://doi.org/10.1007/s10551-025-06063-0

Callaway, Brantly, and Pedro H. C. Sant'Anna, 2021, Difference-in-differences with multiple time periods, *Journal of Econometrics* 225(2), 200–230. https://doi.org/10.1016/j.jeconom.2020.12.001

Goodman-Bacon, Andrew, 2021, Difference-in-differences with variation in treatment timing, *Journal of Econometrics* 225(2), 254–277. https://doi.org/10.1016/j.jeconom.2021.03.014

Hartzmark, Samuel M., and Abigail B. Sussman, 2019, Do investors value sustainability? A natural experiment examining ranking and fund flows, *Journal of Finance* 74(6), 2789–2837. https://doi.org/10.1111/jofi.12841

Kelly, Bryan, and Alexander Ljungqvist, 2012, Testing asymmetric-information asset pricing models, *Review of Financial Studies* 25(5), 1366–1413. https://doi.org/10.1093/rfs/hhr134

LSEG, 2025, LSEG ESG Scores, annual, 2014–2024 [Data set], LSEG Workspace.

Merton, Robert C., 1987, A simple model of capital market equilibrium with incomplete information, *Journal of Finance* 42(3), 483–510. https://doi.org/10.1111/j.1540-6261.1987.tb04565.x

Pástor, Ľuboš, Robert F. Stambaugh, and Lucian A. Taylor, 2021, Sustainable investing in equilibrium, *Journal of Financial Economics* 142(2), 550–571. https://doi.org/10.1016/j.jfineco.2020.12.011

Pedersen, Lasse Heje, Shaun Fitzgibbons, and Lukasz Pomorski, 2021, Responsible investing: The ESG-efficient frontier, *Journal of Financial Economics* 142(2), 572–597. https://doi.org/10.1016/j.jfineco.2020.11.001

Roth, Jonathan, 2022, Pretest with caution: Event-study estimates after testing for parallel trends, *American Economic Review: Insights* 4(3), 305–322. https://doi.org/10.1257/aeri.20210236

S&P Global Market Intelligence, 2025, Compustat Global, annual fundamentals, 2014–2024 [Data set].

Sant'Anna, Pedro H. C., and Jun Zhao, 2020, Doubly robust difference-in-differences estimators, *Journal of Econometrics* 219(1), 101–122. https://doi.org/10.1016/j.jeconom.2020.06.003

Tsang, Albert, Yang Wang, Yan Xiang, and Li Yu, 2024, The rise of ESG rating agencies and management of corporate ESG violations, *Journal of Banking & Finance* 169, 107312. https://doi.org/10.1016/j.jbankfin.2024.107312

@@ exhibits
kind:=table
caption:=Table 1|Pre-coverage characteristics of scored firms and never-scored firms
csvfile:=table1_formatted.csv
note:=Scored firms are measured in the year before their first LSEG ESG score; never-scored firms contribute all firm-years from 2014 to 2024. The normalized difference is the difference in means divided by the square root of the average of the two variances.
source:=Authors' calculations from LSEG ESG scores and Compustat Global.

kind:=table
caption:=Table 2|Average effect of the first ESG score over event years 0 to 3
csvfile:=table2_formatted.csv
note:=ATT is the average treatment effect on the treated with 95% bootstrap confidence intervals; p-values for the three secondary outcomes are Holm-adjusted. MDE is the minimum detectable effect at 80% power, and pre-trend p is the joint test that event-time effects −5 to −2 are zero; *, **, and *** denote significance at the 10%, 5%, and 1% levels.
source:=Authors' calculations from LSEG ESG scores and Compustat Global.

kind:=figure
caption:=Fig. 1|Event-time effects of the first ESG score on valuation, size, and leverage
png:=Fig1.png
note:=Circles show point estimates and bars show 95% bootstrap confidence intervals; open circles with dotted bars are years before the first score and filled circles with solid bars are years after it. The year before the first score (−1) is the base year and is set to zero.
source:=Authors' calculations from LSEG ESG scores and Compustat Global.

kind:=table
caption:=Table 3|Robustness checks and heterogeneity by initial ESG score
csvfile:=table3_formatted.csv
note:=Each cell reports the average effect over event years 0 to 3 with the bootstrap standard error in parentheses (firm-clustered standard error in row R6). High and low initial scores split scored firms at the median first score of their cohort; *, **, and *** denote significance at the 10%, 5%, and 1% levels based on unadjusted p-values.
source:=Authors' calculations from LSEG ESG scores and Compustat Global.
