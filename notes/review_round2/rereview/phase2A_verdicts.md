# Stage 3' re-review, Phase 2A: evidence verdicts (persuasion-blind)

Skill: `academic-paper-reviewer`, re-review mode, three-gate contract, `references/re_review_mode_protocol.md` § Phase 2A. Machine artifact: `phase2A_verdicts.json` (schema `shared/contracts/re_review/verdict_record.schema.json`, contract 1.1). Round id: `review_round2-rereview-1`. Date: 2026-10-12.

## Inputs and fences

Read: `phase1_precommitment.json`/`.md` (frozen criteria, applied as written); `input/original_manuscript_v3.md`, `input/revised_manuscript_v4.md`, `input/diff_v3_to_v4.patch`, figures `Fig1.png`, `Fig2.png`, `FigIA2.png` (v4); `06_editorial_decision.md` and round-1 seat reports for context; `project_R/outputs/*.csv` and `project_R/R/03b_round4.R` to check numbers. Not opened: `08_response_to_reviewers.md`, `notes/AUDIT_LEDGER.md`, any cover letter, commit messages, older review rounds. Each verdict was issued under the Phase-1 routed seat persona (`verified_by`).

Reference descriptions of newly added sources were spot-checked against published abstracts by web search: Berg, Heeb, and Kölbel (−2.37 percent one-year abnormal return after MSCI downgrades), Shanaev and Ghimire (MSCI rating changes, calendar-time portfolios), Serafeim and Yoon (disagreement weakens prediction and price reaction), Hawn et al. and Durand et al. (DJSI events have limited or no price effect against comparable firms; analyst following and long-term ownership in Durand et al.), Tsang et al. (2025) (CGIR 33(4), 554-577, DOI 10.1111/corg.12615; dividends rise after coverage). All match the in-text descriptions. Regulatory dates were checked only for internal consistency and source type.

## Hash chain and degraded states

- `precommitment_hash` = `dc03e03bcf65dc432c4214373e79a3751734d7f716363eafad328935fa45df52` (sha256 over sorted-key, no-whitespace UTF-8 JSON of `phase1_precommitment.json`; the artifact has no floats, so this equals the JCS form).
- Phase 1's degraded input manifest (no 1.1 manifest), absent Schema 7 roadmap, author sidecar, and revision-evidence bundle carry forward; no patch/apply reports were supplied, so the change summaries rest on `diff_v3_to_v4.patch` and direct v3/v4 comparison. `scripts/check_re_review_synthesis.py` was not run (Phase 2B and the full artifact chain do not exist yet).
- Dissents: none. Escalation exceptions: none.

## Verdict summary

| Item | Class | Seat | Verdict | Residual class |
|---|---|---|---|---|
| REV-RR2-1 | must_fix | EIC | PARTIALLY_ADDRESSED | consider |
| REV-RR2-2 | must_fix | R2 | FULLY_ADDRESSED |  |
| REV-RR2-3 | must_fix | R2 | PARTIALLY_ADDRESSED | should_fix |
| REV-RR2-4 | must_fix | R2 | PARTIALLY_ADDRESSED | consider |
| REV-RR2-5 | must_fix | R2 | PARTIALLY_ADDRESSED | should_fix |
| REV-RR2-6 | must_fix | R2 | PARTIALLY_ADDRESSED | should_fix |
| REV-RR2-7 | must_fix | R3 | FULLY_ADDRESSED |  |
| REV-RR2-8 | must_fix | R1 | PARTIALLY_ADDRESSED | should_fix |
| REV-RR2-9 | must_fix | R1 | PARTIALLY_ADDRESSED | should_fix |
| REV-RR2-10 | must_fix | R1 | PARTIALLY_ADDRESSED | should_fix |
| REV-RR2-11 | must_fix | R1 | PARTIALLY_ADDRESSED | should_fix |
| REV-RR2-12 | must_fix | R1 | FULLY_ADDRESSED |  |
| REV-RR2-13 | must_fix | R1 | PARTIALLY_ADDRESSED | should_fix |
| REV-RR2-14 | must_fix | R2 | FULLY_ADDRESSED |  |
| REV-RR2-15 | must_fix | R3 | PARTIALLY_ADDRESSED | should_fix |
| REV-RR2-16 | should_fix | EIC | PARTIALLY_ADDRESSED | consider |
| REV-RR2-17 | should_fix | R1 | PARTIALLY_ADDRESSED | should_fix |
| REV-RR2-18 | should_fix | EIC | NOT_ADDRESSED |  |
| REV-RR2-19 | should_fix | R2 | FULLY_ADDRESSED |  |
| REV-RR2-20 | should_fix | EIC | PARTIALLY_ADDRESSED | should_fix |

Counts. must_fix (15): FULLY_ADDRESSED 4, PARTIALLY_ADDRESSED 11 (residual should_fix 9, consider 2), NOT_ADDRESSED 0, MADE_WORSE 0, CANNOT_VERIFY 0. should_fix (5): FULLY_ADDRESSED 1, PARTIALLY_ADDRESSED 3 (residual should_fix 2, consider 1), NOT_ADDRESSED 1 (RR2-18). should_fix addressed rate on 2A verdicts: 4/5 = 80 percent.

## Per-item evidence

### REV-RR2-1 (must_fix; EIC): PARTIALLY_ADDRESSED

- **Change:** Title, running title, keywords, contribution paragraph and implications were reframed toward sustainable finance and 'The main implication is methodological' was deleted; the abstract Design field still names the estimator and the Purpose does not say why first coverage matters for ESG-screened capital.
- **Evidence (v4):**
  - text: Title, 'Who Gets an ESG Score? Coverage Selection and Firm Value in Five Southeast Asian Markets'
  - text: Running title, 'ESG score coverage and firm value'
  - text: Abstract, Design/methodology/approach, '...before and after the first score, using cohort-specific difference-in-differences estimators and a pre-analysis plan'
  - text: Abstract, Purpose, 'This study asks which listed firms enter the environmental, social, and governance (ESG) rated universe in emerging markets and whether entry changes their market valuation.'
  - text: Keywords, 'Emerging markets; ESG investing; ESG ratings; Firm valuation; Rating coverage; Sustainable finance'
  - text: Section 1, paragraph 7, 'The paper makes three contributions to sustainable finance.'
  - text: Section 6.3, paragraphs 1-6 (implications lead with rating providers; static TWFE point appears last, under empirical research)
- **Residual gap (consider):** Elements (i), (ii), (iv), (v), (vi) are met; element (iii) is not: the abstract Design field still uses estimator vocabulary ('cohort-specific difference-in-differences estimators') and the Purpose field does not state why first coverage matters for ESG-screened capital (that motivation appears only in Section 1, paragraph 1).

### REV-RR2-2 (must_fix; R2): FULLY_ADDRESSED

- **Change:** Section 2 was rebuilt into three strands (ratings and certification as information, ESG demand and price pressure, rater selection) with added rating-change and DJSI-inclusion references, Hartzmark and Sussman moved to Sections 1 and 2.1 and described as fund-level; descriptions of the added references were spot-checked against their published abstracts and match (MSCI data in Shanaev & Ghimire; matched-benchmark null in Hawn et al. and Durand et al.; disagreement weakening price reactions in Serafeim & Yoon; −2.37 percent in Berg, Heeb, et al.).
- **Evidence (v4):**
  - text: Section 2.1, paragraph 1, 'MSCI downgrades are followed by lower ownership by such funds and a one-year abnormal return of about −2.37 percent, with weaker effects for upgrades (Berg, Heeb, et al., 2022). Calendar-time portfolios of firms with rating changes give a similar asymmetry (Shanaev & Ghimire, 2022).'
  - text: Section 2.1, paragraph 1, 'Hartzmark and Sussman (2019) show that the publication of Morningstar sustainability ratings for mutual funds redirected fund flows; their ratings concern funds, so any effect on the stocks those funds hold is indirect.'
  - text: Section 2.1, paragraph 2, 'Certification by inclusion in a sustainability index is the closest analog to a first score ... (Hawn et al., 2018) ... (Durand et al., 2019). Sell-side coverage offers a second analog'
  - text: Section 2.2 'ESG demand, recognition, and price pressure' and Section 2.3 'Which firms providers score'
  - text: Section 1, paragraph 7, 'Second, it adds an extensive-margin event to the evidence on ratings and certification as price-relevant information'
  - text: References, entries Durand et al. (2019), Hawn et al. (2018), Serafeim & Yoon (2023), Shanaev & Ghimire (2022), Pástor et al. (2022), Drempetic et al. (2020)

### REV-RR2-3 (must_fix; R2): PARTIALLY_ADDRESSED

- **Change:** Channel predictions were restated with signs (including permanent versus transitory selection, carried into Section 6.1), and an exploratory size-, country-, and cohort-purged score split was added next to the median split; numbers match r4_h3_residual_score.csv and r4_h3_score_size.csv.
- **Evidence (v4):**
  - text: Section 2.4, H1, 'The recognition channel predicts an increase. The preference channel predicts an increase for firms with high scores and a decrease for firms with low scores. The selection view predicts relative growth before coverage and no effect after it if the growth was permanent, or a decline after it if the growth was transitory.'
  - text: Section 2.4, H3, 'This is the test that separates the preference channel from recognition, because only the preference channel depends on what the score says.'
  - text: Section 5.6, 'Table S7 therefore repeats the split after purging the score of base-year total assets, country, and cohort ... The difference is then −0.027 (standard error 0.040, p = 0.491) ... with minimum detectable differences of 0.113 and 0.111, neither test excludes moderate differences.'
  - table: Table S7, rows 'High residual initial score', 'Low residual initial score', 'High minus low' (note: all rows are exploratory)
  - text: Abstract, Findings, '...MTB ratios did not rise after the first score (estimate 0.002; 95% interval −0.046 to 0.048), whatever the level of the score.'
  - text: Section 1, paragraph 5, 'it does not differ between firms with high and low initial scores, before or after the scores are purged of firm size'
- **Residual gap (should_fix):** H3 is not presented in the abstract or Introduction as the preference-channel test with its estimate, its non-significance, and its minimum detectable effect: the abstract says only 'whatever the level of the score' and the Introduction says the effect 'does not differ' between high- and low-score firms, which reads a non-significant test (MDE 0.111 to 0.113) as equality. State the H3 estimate, p-value, and MDE where H3 is summarized and replace 'does not differ' / 'whatever the level of the score' with non-detection language.

### REV-RR2-4 (must_fix; R2): PARTIALLY_ADDRESSED

- **Change:** The Chen et al. (2004) mis-citation for partial reversal was removed, reversal is now sourced to Harris and Gurel (1986), the permanent-addition evidence is used to sharpen the recognition test in Section 6.1, the 'third reading deserves weight' sentence was deleted, and the correct Section 5.7 use of Chen et al. is kept.
- **Evidence (v4):**
  - text: Section 2.2, paragraph 1, 'The awareness evidence on index additions supports a lasting gain: S&P 500 additions raise prices permanently, while deletions do not lower them permanently (Chen et al., 2004).'
  - text: Section 2.2, paragraph 2, 'inclusion in the S&P 500 raises prices (Harris & Gurel, 1986; Shleifer, 1986), and part of the increase reverses within weeks (Harris & Gurel, 1986)'
  - text: Section 6.1, paragraph 2, 'The awareness evidence on index additions predicts a permanent gain from recognition (Chen et al., 2004), so a recognition effect of that kind should have appeared as a lasting rise after coverage; we detect none under assumption (2).'
  - text: Section 5.7, 'our estimates concern lasting revaluation of the kind a permanent rise in investor recognition would produce (Chen et al., 2004; Merton, 1987)'
  - text: Section 8, 'dating coverage one year later gives a decline of about −6.6 percent that may reflect a reversal of the run-up'
- **Residual gap (consider):** The Conclusion still offers only the reversal reading of the R10 decline ('may reflect a reversal of the run-up') without the alternative that coverage lowered valuations, so the conclusion leans on reversal while Sections 5.4 and 6.1 treat the two readings as inseparable.

### REV-RR2-5 (must_fix; R2): PARTIALLY_ADDRESSED

- **Change:** The event is renamed the initiation of LSEG ESG coverage with the FTSE Russell qualification and the 'scored at all' motivation dropped, and Section 6.2 now uses the MSCI fund-holdings evidence to interpret the null; Section 7 does not state the fund-holdings point as a limitation and no definitions of score, rating, coverage, rater, and provider were added.
- **Evidence (v4):**
  - text: Section 3.1, paragraph 2, 'The LSEG ESG score we study, formerly Refinitiv ESG, is a separate product built from company-reported data, so some newly covered firms may already have had FTSE Russell or other scores that our data do not record. We therefore describe our event as the initiation of LSEG ESG coverage, not as a firm's first ESG rating of any kind.'
  - text: Section 6.2, paragraph 1, 'the evidence that ESG funds trade on ratings concerns MSCI, the one rating that explains their holdings (Berg, Heeb, et al., 2022); entering the coverage of another provider may change little for these funds'
  - text: Section 7, Third limitation, 'we observe only LSEG coverage; for firms with earlier scores from other providers ... the event is an additional score'
  - text: Abstract, Purpose 'ESG rated universe'; Abstract, Findings 'comparable unscored firms'; Abstract, Design 'never-scored firms'
  - text: Abstract, Practical implications, 'ESG screens, indices, and ESG-premium studies in these markets draw on a scored universe tilted toward firms that have just grown'
- **Residual gap (should_fix):** Missing: (a) the statement that the LSEG score is not the rating tied to fund holdings appears only as an interpretation (Section 6.2), not as a limitation in Section 7; (b) score, rating, coverage, rater, and provider are not defined once and the LSEG product is not distinguished from MSCI-type ratings; (c) terminology still drifts ('ESG rated universe', 'scored universe', 'unscored', 'never-scored', 'comparable unscored firms'); (d) the abstract's Practical implications generalize from the LSEG scored universe to 'ESG screens, indices, and ESG-premium studies' in general, although Section 6.2 says ESG funds follow MSCI.

### REV-RR2-6 (must_fix; R2): PARTIALLY_ADDRESSED

- **Change:** Mandate dates for all five markets were added with regulator or exchange sources for four markets and a law-firm note for Thailand, and the dates are related to the Thai and Malaysian waves in one sentence.
- **Evidence (v4):**
  - text: Section 3.1, paragraph 1, 'Singapore requires every listed issuer ... (Singapore Exchange, 2016). Bursa Malaysia required a sustainability statement ... (Bursa Malaysia, 2015). In the Philippines ... (Securities and Exchange Commission Philippines, 2019). Indonesian listed companies ... (Otoritas Jasa Keuangan, 2017). Thai listed companies have reported sustainability information in the unified annual filing, the 56-1 One Report, since the fiscal year ending in 2021 (Tilleke & Gibbins, 2020).'
  - text: Section 3.1, paragraph 3, 'The waves do not line up with a single reporting rule: the Thai wave preceded the One Report, and the Malaysian wave began several years after Bursa Malaysia's rule was phased in.'
  - text: Section 7, Fourth limitation, 'The reporting rules in Section 3.1 are dated at the market level from regulatory sources, not observed for each firm.'
- **Residual gap (should_fix):** (a) The Thai date is sourced only to a secondary law-firm note (Tilleke & Gibbins, 2020), not to the Thai SEC or SET, and dates the 56-1 One Report, a consolidation of filings, rather than the onset of mandated sustainability disclosure in Thailand, so 'the Thai wave preceded the One Report' may misstate the ordering; Section 7 calls all dates 'from regulatory sources', which is not true for Thailand. (b) Whether first scores follow first mandated reports is stated only for Thailand and Malaysia, not for Singapore, Indonesia, and the Philippines (cohort-by-market counts are in Table S2). (c) Domestic ESG channels other than FTSE Russell (exchange sustainability indices, Shariah screens) are neither discussed nor stated as not examined.

### REV-RR2-7 (must_fix; R3): FULLY_ADDRESSED

- **Change:** Wave-level event-time profiles with intervals were added as main-text Fig. 2 and exploratory Table S7 rows, the never-scored Malaysian firms are described (565 firms, median total assets 3.3 times lower), the mechanism statement is restricted to the waves that show a run-up, and the November 2022 Bursa-LSEG arrangement is addressed; the wave numbers match r4_event_profiles.csv, r4_post.csv, r4_pretrend_tests.csv, r4_malaysia_never_scored.csv. (The characterization of the waves as 'wholesale' versus 'selective' is recorded separately as NEW-1 and NEW-2.)
- **Evidence (v4):**
  - figure: Fig. 2, event-time ln(MTB) and ln(market cap) with bootstrap 95% intervals for the Malaysian 2021-2022 wave, the Thai and Singaporean 2019-2020 wave, and all other cohorts
  - text: Section 5.3, paragraph 3, 'Selection on prior growth therefore appears where the provider added firms selectively, not where it extended coverage across a market.'
  - text: Section 5.1, 'In Malaysia, where the expansion was broadest, the 565 never-scored firms remained smaller than the scored ones, with median total assets 3.3 times lower.'
  - text: Section 3.1, paragraph 3, 'The Malaysian wave began in fiscal 2021, before the November 2022 agreement, which concerned FTSE Russell scores.'
  - table: Table S7, wave rows with pre-trend p-values (all rows exploratory)
  - text: Section 4.5, paragraph 2, 'separate estimates by coverage wave and by period of first score' listed as exploratory

### REV-RR2-8 (must_fix; R1): PARTIALLY_ADDRESSED

- **Change:** 'Peak' was removed from the title, abstract, and conclusion, the R10 event-time profile (Fig. S2B) and an R10 rerun with size at the original g − 1 (−0.074) were added, and Section 5.4 reconciles R10 with the baseline through within-cohort re-basing; the TWFE figure was dropped from the abstract but the R10 result and its fragility were not put there.
- **Evidence (v4):**
  - text: Title and Abstract, Originality/value (no 'peak' claim); Section 8 (no 'coincides with a valuation peak')
  - text: Section 5.4, paragraph 1, 'With the cluster bootstrap, its interval is −0.125 to −0.018 ... with M̄ = 0.25 in Eq. (10) its interval, from −0.138 to 0.002, includes zero; the decline loses significance once M̄ reaches 0.23. Holding total assets at the original base year gives −0.074 (p = 0.002)'
  - text: Section 5.4, paragraph 2, 'Fig. S2 of the Supplemental Appendix plots the event-time path under R10 ... Re-based within each cohort to the first scored year, the baseline estimates for event years 3 and 4 are −0.083 and −0.167'
  - figure: Fig. S2, panel B 'Event dated one year later' with 'Dated one year later, size at original g − 1'
  - text: Abstract, Findings (no R10 estimate and no statement of its fragility)
- **Residual gap (should_fix):** The abstract does not report the re-dated R10 result (−0.068, about −6.6 percent) or its fragility (interval includes zero at M̄ = 0.25; significance lost at M̄ = 0.23); the Introduction gives the R10 decline without its interval or fragility. Section 5.4 reconciles the two paths but does not say explicitly which specification governs the long-horizon reading.

### REV-RR2-9 (must_fix; R1): PARTIALLY_ADDRESSED

- **Change:** Covariate-free and g − 3 size variants were added with joint pre-trend tests (Table S7) and ln(MTB) profiles (Fig. S2A), and the text states that the MTB run-up survives, giving event-year −5 estimates in log points; values match r4_event_profiles.csv and r4_pretrend_tests.csv.
- **Evidence (v4):**
  - text: Section 5.5, paragraph 2, 'The MTB run-up is not an artifact of conditioning on base-year total assets: without covariates the MTB estimate for event year −5 is −0.064 (pre-trend p = 0.028), and with total assets measured two years before the base year it is −0.077, close to the baseline, although the joint test then gives p = 0.176.'
  - figure: Fig. S2, panel A, 'No covariates' and 'Size measured at g − 3' ln(MTB) profiles
  - table: Table S7, rows 'No covariates' and 'Size measured at g − 3', ln(MTB) and ln(market cap) pre-trend p
- **Residual gap (should_fix):** The explicit survival statement covers only the 10.0 percent MTB run-up and gives log-point estimates (−0.064 and −0.077), not the corresponding percentages; nothing is said about whether the 14.1 percent market-capitalization run-up survives (the outputs show it does: −0.215 without covariates and −0.185 with size at g − 3 in r4_event_profiles.csv), and no market-capitalization event-time profile is shown for the variants. The no-covariate MTB run-up (−0.064, about 6.6 percent; e = −5 p = 0.068) is weaker than the headline 10.0 percent and this is not stated.

### REV-RR2-10 (must_fix; R1): PARTIALLY_ADDRESSED

- **Change:** A 50-cluster market-by-industry bootstrap was added for the headline, R10, the run-up, and the joint pre-trend tests, side by side with the firm bootstrap (values match r4_cluster_bootstrap.csv and r4_cluster_pretrend.csv), and 'excludes' wording was removed from Section 5.2 and Section 7.
- **Evidence (v4):**
  - text: Section 4.3, paragraph 2, 'As an exploratory check, we also resample the 50 market-by-industry clusters instead of firms.'
  - text: Section 5.2, 'When we resample market-by-industry clusters instead of firms, the interval is −0.050 to 0.053.'
  - text: Section 5.3, 'with the cluster bootstrap, the tests give p = 0.001 and p = 0.225'
  - table: Table S7, rows 'Baseline, market-by-industry cluster bootstrap' and 'R10, market-by-industry cluster bootstrap'
  - text: Section 6.3, paragraph 6, 'the confidence interval excludes increases above 4.9 percent, but smaller effects remain possible'
- **Residual gap (should_fix):** The clustered headline interval is wider (upper limit 0.053, about 5.4 percent), yet Section 6.3 still states that 'the confidence interval excludes increases above 4.9 percent', based on the firm bootstrap only.

### REV-RR2-11 (must_fix; R1): PARTIALLY_ADDRESSED

- **Change:** Both checks were added (top-trim of scored firms at the 95th percentile of never-scored firms, 492 scored firms kept; quintile size indicators) with pre-trend tests in Table S7, and the text reports the headline MTB change; values match r4_post.csv and r4_pretrend_tests.csv.
- **Evidence (v4):**
  - text: Section 5.5, paragraph 2, 'Restricting scored firms to those no larger than the 95th percentile of never-scored firms in their cell keeps 492 scored firms and gives −0.021 (p = 0.426). The post-coverage MTB estimate therefore does not depend on extrapolating the size adjustment to the largest firms.'
  - text: Section 5.5, paragraph 2, 'The post-coverage MTB effect is −0.008 with total assets measured two years earlier and −0.010 with quintile indicators.'
  - table: Table S7, rows 'Size quintile indicators' and 'Scored firms within control size range' (ln(market cap) −0.096*** (0.035))
  - figure: Fig. S2, panel A, 'Scored firms within control size range'
- **Residual gap (should_fix):** (a) No note that the trimmed estimate is an ATT for the common-support population (estimand change); (b) the text does not say how the run-up changes under trimming or binning (the trimmed pre-trend p is 0.212 against 0.074 at baseline); (c) Table S7 reports a significant trimmed market-capitalization effect of −0.096 (p = 0.006), larger than the baseline −0.055, which the text does not mention.

### REV-RR2-12 (must_fix; R1): FULLY_ADDRESSED

- **Change:** A four-step bridge from the static TWFE (0.064) to the robust estimate (0.002) was added (Table S8; matches r4_twfe_bridge.csv: 0.064, 0.058, 0.025, 0.002, i.e. about 9, 53, and 37 percent of the 0.062 gap), 'most of the gap' was removed, and 'will' became 'can' in the Conclusion; the attribution in the text matches the bridge.
- **Evidence (v4):**
  - table: Table S8, 'Decomposition of the gap between the static two-way fixed effects estimate and the baseline estimate'
  - text: Section 5.5, paragraph 3, 'Restricting the regression to never-scored controls and event years −5 to 3 changes the estimate only to 0.058, while the heterogeneity-robust estimator gives 0.025 without covariates and 0.002 with them. Comparing each cohort with its own base year, rather than pooling all years, accounts for about half of the gap, conditioning on base-year total assets for most of the rest, and the choice of controls and window for little.'
  - text: Section 8, 'Comparisons of scored and unscored firms that ignore coverage timing can attribute this selection to the score.'
  - text: Section 6.3, paragraph 6, 'a static TWFE estimate, can reflect selection into coverage rather than an effect of scores (Table S8)'

### REV-RR2-13 (must_fix; R1): PARTIALLY_ADDRESSED

- **Change:** Run-up intervals were added in the Introduction and Conclusion (match r4_runup.csv: 1.9 to 18.2 and 3.1 to 25.3 percent), the Introduction now states that the MTB joint test does not reject at 5 percent, and Section 5.3 adds cluster-bootstrap run-up intervals.
- **Evidence (v4):**
  - text: Section 1, paragraph 5, 'their market capitalization grew 14.1 percent more (95% interval 3.1 to 25.3 percent) and their market-to-book (MTB) ratio 10.0 percent more (1.9 to 18.2 percent); the joint test of parallel pre-coverage trends rejects for market capitalization but not, at the 5% level, for MTB'
  - text: Section 8, 'by 10.0 percent in MTB (1.9 to 18.2 percent)'
  - text: Abstract, Findings, 'their market-to-book (MTB) ratio grew 10.0 percent more' (no interval)
  - text: Section 5.3, paragraph 1, 'rejects parallel pre-coverage trends for market capitalization (p = 0.022) but not at the 5% level for MTB (p = 0.074)'
- **Residual gap (should_fix):** The abstract still reports the 10.0 percent MTB run-up without its interval, and the Introduction states the MTB non-rejection without p = 0.074 and without the share-issuance caveat on the market-capitalization run-up (which appears only in Section 5.3).

### REV-RR2-14 (must_fix; R2): FULLY_ADDRESSED

- **Change:** The ordering of events is now presented as the finding, provider selection, disclosure onset, index entry, and equity issuance are named as consistent mechanisms without identification, the causal selection sentence in Section 5.3 was removed, and an untested strategic-disclosure reading was added to Section 6.1.
- **Evidence (v4):**
  - text: Section 6.1, paragraph 1, 'The clearest result is an ordering of events ... Several mechanisms fit this ordering. The provider may have added firms once they had grown large and visible enough ... Firms may have become scoreable by publishing a first sustainability report, joining an index, or issuing equity ... a strategic-disclosure reading that our data cannot test.'
  - text: Abstract, Findings, 'Firms that entered through selective coverage waves had outgrown comparable unscored firms beforehand'
  - text: Section 5.3 (the v3 sentence 'This run-up is the pattern that the selection view in Section 2.2 predicts' is deleted)

### REV-RR2-15 (must_fix; R3): PARTIALLY_ADDRESSED

- **Change:** Section 6.3 was rewritten into design-bounded implications for providers and data users, exchanges, regulators, ESG investors and index builders, and listed firms, each tied to an exhibit, with a hedged look-ahead-bias sentence; the abstract's Practical implications now address screens, indices, and exchanges.
- **Evidence (v4):**
  - text: Section 6.3, paragraph 1, 'The results have implications for five groups, each bounded by the design: one provider, annual data, five markets, and no data on ownership, returns, or publication dates.'
  - text: Section 6.3, paragraph 2, 'backtests around coverage initiation may suffer from look-ahead bias (Berg et al., 2020; Sahin et al., 2023)'
  - text: Section 6.3, paragraph 3, 'For exchanges, the Malaysian wave shows that coverage extended across a whole market does not carry the selection on prior growth that selective coverage does (Fig. 2). Exchange-provider arrangements of this kind (Bernama, 2022) broaden the scored universe toward smaller firms.'
  - text: Abstract, Practical implications, 'ESG screens, indices, and ESG-premium studies in these markets draw on a scored universe tilted toward firms that have just grown; exchange-wide coverage avoids that tilt.'
  - text: Section 6.3, paragraphs 4-6 (regulators; ESG investors and index builders; listed firms and empirical research)
- **Residual gap (should_fix):** The exchange implication is not bounded by the design: the abstract asserts that 'exchange-wide coverage avoids that tilt' and Section 6.3 attributes the Malaysian pattern to 'exchange-provider arrangements of this kind (Bernama, 2022)', although Section 3.1 states that the Malaysian LSEG wave began before the November 2022 agreement and that the agreement concerned FTSE Russell scores, and the paper's own counts (565 never-scored Malaysian firms) do not show exchange-wide coverage. The abstract's Practical implications also do not name rating providers.

### REV-RR2-16 (should_fix; EIC): PARTIALLY_ADDRESSED

- **Change:** A plain-language sentence explaining M̄ was added to Section 4.4, but the trend-removal, bias-bound, MDE, and Wald equations were not moved to the Supplemental Appendix.
- **Evidence (v4):**
  - text: Section 4.4, Eqs. (9) and (10) and Section 4.3, Eqs. (7) and (8) remain in the main text
  - text: Section 4.4, paragraph 2, 'In words, M̄ = 0.25 allows the post-coverage gap between scored and never-scored firms to drift each year by a quarter of the largest yearly change seen before coverage.'
- **Residual gap (consider):** The derivation equations (Eqs. 7 to 10) are still in the main text, and the plain-language translation sits in Methods and is not expressed in percent of MTB in the Discussion.

### REV-RR2-17 (should_fix; R1): PARTIALLY_ADDRESSED

- **Change:** The two-year re-dating, the calendar-year caveat, the corrected median statement, missing-MTB shares by group (match r4_missing_mtb.csv), and pre-/post-2020 cohort estimates were added; firm counts were not reconciled and 'comparable' remains in the abstract.
- **Evidence (v4):**
  - text: Section 5.4, paragraph 1, 'dating coverage two years later gives −0.048 (p = 0.057)'
  - text: Section 5.1, 'Because scored firms are concentrated in base years 2019 to 2022 while never-scored firm-years span 2014 to 2024, these level differences mix calendar effects with selection.'
  - text: Section 5.1, 'their median MTB ratio is also higher (1.26 against 0.95)'
  - text: Section 3.2, '28.0 percent of never-scored firm-years and 12.7 percent of scored firm-years lack a log MTB ratio'
  - table: Table S7, rows 'Cohorts first scored by 2019' and 'Cohorts first scored from 2020'
  - text: Abstract, Findings, 'had outgrown comparable unscored firms beforehand'
  - table: Table S6, event year 3, 270 scored firms; Section 5.4, paragraph 3, 'Row R11 ... with 273 scored'
- **Residual gap (should_fix):** Sub-items met: (3) calendar caveat and median correction, (4) missing MTB by group. Partly met: (1) two-year re-dating reported without a statement of how conclusions change; (5) pre-/post-2020 cohorts reported as averages and pre-trend p-values, not as pre-coverage profiles. Not met: (2) firm counts for the same population (Table S6 event year 3: 270; R11: 273) are not reconciled; (6) the abstract still says 'comparable unscored firms'.

### REV-RR2-18 (should_fix; EIC): NOT_ADDRESSED

- **Change:** No companion-study disclosure was added to the manuscript text; Section 3.2 describes the data sources only.
- **Evidence (v4):**
  - absence: no occurrence of 'companion' or any disclosure of shared data use in the revised manuscript text, Section 3.2, or declarations

### REV-RR2-19 (should_fix; R2): FULLY_ADDRESSED

- **Change:** The reference was kept with its issue number added; a web check confirms authors, title, journal, volume 33, issue 4, pages 554–577, and DOI, and the abstract reports that dividends rise after nonfinancial agency coverage begins, matching the in-text description.
- **Evidence (v4):**
  - text: References, 'Tsang, A., Wang, Y., Xiang, Y., & Yu, L. (2025). ESG ratings and dividend changes: Evidence from the initiation of nonfinancial agency coverage. Corporate Governance: An International Review, 33(4), 554–577. https://doi.org/10.1111/corg.12615'
  - text: Section 1, paragraph 3, 'and dividend increases (Tsang et al., 2025)'

### REV-RR2-20 (should_fix; EIC): PARTIALLY_ADDRESSED

- **Change:** Sentence-level editing reduced sentences of 44 words or more (script count 23 in v3 to 18 in v4, including heading-merged fragments), named the provider in selection sentences, defined the base year at first use in Section 1, and introduced no em dash; term drift and some long sentences remain.
- **Evidence (v4):**
  - text: Section 1, paragraph 5, 'From five years before the first score to the year before it, which we call the base year'
  - text: Section 1, paragraph 6, 'MTB declines by about −6.6 percent'; Section 8, 'a decline of about −6.6 percent'
  - text: Abstract, 'ESG rated universe', 'comparable unscored firms', 'never-scored firms'
  - text: Section 4.5, paragraph 2, 74-word sentence beginning 'They include the checks of Section 4.4'
- **Residual gap (should_fix):** Remaining: term drift for scored versus never-scored firms ('unscored' 7 occurrences, 'comparable' 9, 'rated universe' alongside 'scored universe'); several sentences of 44 words or more (Section 1 paragraphs 2, 4, 5; Section 4.5 paragraph 2 at 74 words; Section 5.5 paragraph 2; Section 5.7); a double negative 'declines by about −6.6 percent' / 'a decline of about −6.6 percent' in Section 1 and Section 8; hedging of the main null not aligned (Section 6.3 'excludes increases above 4.9 percent' versus the clustered interval in Section 5.2).

## New issues (frozen at this commit)

| # | Attribution | Severity | Seat | Conf. | Location | Nearest item |
|---|---|---|---|---|---|---|
| NEW-1 | regression | major | R3 | 4 | text: Abstract, Findings, 'Malaysian firms covered in a wholesale expansion in 2021 and 20... | REV-RR2-7 |
| NEW-2 | regression | major | R1 | 4 | text: Section 5.3, paragraph 3, 'The 278 firms in all other cohorts, which entered coverag... | REV-RR2-7 |
| NEW-3 | regression | minor | R1 | 5 | text: Abstract, Findings, 'Firms that entered through selective coverage waves had outgrow... | REV-RR2-13 |
| NEW-4 | regression | minor | R2 | 4 | text: Section 3.1, paragraph 3, 'The Malaysian wave began in fiscal 2021, before the Novem... | REV-RR2-7 |
| NEW-5 | regression | minor | R1 | 4 | text: Section 5.4, paragraph 2, 'Re-based within each cohort to the first scored year, the... | REV-RR2-8 |
| NEW-6 | regression | minor | R2 | 3 | text: Section 1, paragraph 2, 'Under ESG preferences, investors pay more for assets they c... | REV-RR2-3 |
| NEW-7 | regression | minor | EIC | 4 | text: Section 1, paragraph 1, 'London Stock Exchange Group (LSEG), one of the most widely ... | REV-RR2-20 |

**NEW-1 (major, regression).** The Malaysian 2021-2022 wave is characterized as 'a wholesale expansion' (abstract Findings), 'a wave that extended coverage across a whole market' (Section 1), 'the wholesale Malaysian expansion' (Section 6.1), and 'coverage extended across a whole market' (Section 6.3), and the abstract concludes that 'exchange-wide coverage avoids that tilt'. The manuscript's own counts contradict this: the wave covered 289 firms while 565 Malaysian non-financial firms were never scored (Section 5.1; r4_malaysia_never_scored.csv), and a further 83 Malaysian firms were first scored in 2023 (Table S2). The data do not record the provider's coverage rule (Section 3.1), so 'wholesale' versus 'selective' is an interpretation, not an observation. The selective-versus-wholesale contrast is the revision's main new framing, so the overstatement reaches the abstract, Introduction, Discussion, and implications. *Attribution evidence:* The wording 'wholesale expansion', 'across a whole market', and 'exchange-wide coverage' is absent from v3 (script count 0) and appears in v4 abstract, Section 1 paragraph 5, Section 6.1, and Section 6.3; diff_v3_to_v4.patch adds these lines. *Non-match:* RR2-7 asks for wave-level profiles and a mechanism statement conditional on them, which v4 provides; it does not cover a factual characterization of the wave's breadth that contradicts the manuscript's own counts. The exchange implication's lack of design bounds is graded under RR2-15; this record concerns the factual claim across all locations.

**NEW-2 (major, regression).** The 'selective waves' claim is not supported for the 'all other cohorts' group. Section 5.3 says these 278 firms 'entered coverage a few at a time' and 'show the same pattern', and Section 6.1 says that in selective waves firms entered 'after their MTB ratio and market capitalization had grown faster'. But Table S2 shows the group includes 109 firms first scored in 2023 (83 Malaysian) and 31 and 26 Thai firms in 2021 and 2022, so they did not enter a few at a time; their market-capitalization pre-trend test gives p = 0.652 with an event-year −5 estimate of −0.077 (p = 0.26), so no market-capitalization run-up is detected; and their MTB e = −5 estimate (−0.103, 95% interval −0.213 to 0.004) is no larger than the e = −2 estimate (−0.108), so the pattern is a gap that closes in the base year rather than the same gradual run-up (r4_event_profiles.csv, r4_pretrend_tests.csv). The wave boundaries (Malaysia 2021-2022 only; Thailand and Singapore 2019-2020 only) were set after seeing Table S2. *Attribution evidence:* The wave analysis and these sentences are new in v4 (Section 5.3 paragraph 3 and the rewritten Section 6.1 paragraph 1 are additions in diff_v3_to_v4.patch); v3 had no wave-level estimates. *Non-match:* RR2-7 requires wave-level profiles for the Malaysian, Thai/Singaporean, and remaining cohorts and a mechanism conditional on them; it does not cover whether the text describes the 'other cohorts' profile and composition accurately once reported.

**NEW-3 (minor, regression).** The abstract attributes the pooled MTB run-up to the selective waves: 'Firms that entered through selective coverage waves had outgrown comparable unscored firms beforehand: ... their market-to-book (MTB) ratio grew 10.0 percent more.' The 10.0 percent is the pooled estimate over all 675 firms, including the Malaysian wave the next sentence says had no run-up (r4_runup.csv); the selective-wave estimates are 33.1 percent (Thailand and Singapore) and 10.8 percent (other cohorts). Section 5.7 repeats the conflation ('the growth that precedes selective coverage' for the pooled run-up). *Attribution evidence:* v3 abstract attributed the 10.0 percent to 'scored firms' (all firms); the 'selective coverage waves' subject is added in v4 (diff_v3_to_v4.patch, abstract Findings). *Non-match:* RR2-13 concerns intervals and the MTB joint test where run-up figures appear; it does not cover attributing the pooled figure to a subgroup.

**NEW-4 (minor, regression).** Section 3.1 argues that the Malaysian wave is unrelated to the November 2022 Bursa-LSEG agreement because it 'began in fiscal 2021, before the November 2022 agreement'. Section 3.2 states that the first scored fiscal year can precede publication by one year or more and that history may have been filled in when a firm entered coverage, so fiscal-2021 and fiscal-2022 first scores may have been produced after November 2022. The timing argument therefore does not follow from the data as described. *Attribution evidence:* The sentence is added in v4 (diff_v3_to_v4.patch, Section 3.1 paragraph 3); v3 did not relate the wave to the agreement. *Non-match:* RR2-7 asks that the relation to the November 2022 arrangement be addressed with what is publicly known; v4 addresses it, and this record concerns the internal contradiction of the argument used, not the absence of the discussion.

**NEW-5 (minor, regression).** The within-cohort re-based baseline estimates (−0.083 and −0.167 for event years 3 and 4) are reported without standard errors or intervals (r4_rebased_within_cohort.csv contains point estimates only), yet Sections 5.4 and 6.1 draw an inferential conclusion from them: 'Both specifications therefore show that early cohorts lost value relative to never-scored firms in their third and fourth years of coverage.' *Attribution evidence:* The re-basing analysis and the sentence are new in v4 (diff_v3_to_v4.patch, Section 5.4 paragraph 2). *Non-match:* RR2-8 asks for the R10 profile, a g − 1 rerun, and which specification governs; it does not cover the inferential status of a new reconciliation estimate.

**NEW-6 (minor, regression).** The Introduction misdescribes the preference channel: 'Under ESG preferences, investors pay more for assets they can classify as sustainable and less for those they cannot (Pástor et al., 2021; Pedersen et al., 2021)'. The cited models price green versus brown assets, not classifiable versus unclassifiable assets; the next clause ('raise the value of firms revealed as green and lower the value of firms revealed as brown') states the cited prediction correctly, so the sentence is internally inconsistent. *Attribution evidence:* The sentence is new in v4 (Section 1 paragraph 2 rewritten in diff_v3_to_v4.patch); v3 stated that investors 'accept lower expected returns on assets they can classify as sustainable' without the unclassifiable contrast. *Non-match:* RR2-3 asks for per-channel predictions in the hypotheses; this record concerns a misdescription of a cited source in the Introduction, not the hypotheses' structure.

**NEW-7 (minor, regression).** New unsourced assertion: LSEG is described as 'one of the most widely used providers in research and practice' with no citation or evidence. *Attribution evidence:* Absent from v3; added in v4 (diff_v3_to_v4.patch, Section 1 paragraph 1). *Non-match:* RR2-20's criterion targets the unsupported assertions flagged in the round-1 writing audit (P5-8 to P5-10) in v3; this sentence did not exist in v3.

Counts: 2 major, 5 minor; all 7 attributed `regression` (content added by the revision). No previously-missed issue was recorded.

## Number checks against R outputs

Checked and matching after rounding: cluster bootstrap (r4_cluster_bootstrap.csv: headline −0.050 to 0.053; R10 −0.125 to −0.018; run-up 2.3 to 20.5 percent), cluster pre-trend p (0.225, 0.001), run-up intervals (r4_runup.csv), wave estimates and pre-trend p (r4_post.csv, r4_pretrend_tests.csv, r4_event_profiles.csv: 33.1, 57.3, 10.8 percent; 0.021, −0.009, −0.016; −0.146, p = 0.005; p = 0.549, 0.006, 0.006), R10 g − 1 rerun (−0.074, p = 0.002), two-year dating (−0.048, p = 0.057), R10 bounds (r10_rm_bounds.csv −0.138 to 0.002; rm_breakdown.csv 0.23), re-based estimates (r4_rebased_within_cohort.csv), purged-score split and R² (r4_h3_*.csv), TWFE bridge (r4_twfe_bridge.csv), missing MTB shares (r4_missing_mtb.csv), Malaysian never-scored firms (r4_malaysia_never_scored.csv: 565; exp(18.739 − 17.532) = 3.3), trimmed and binned rows (r4_post.csv), Table S2 sums (577, 289, 108, 278, 404, 84.3 percent). No number/text mismatch was found; the problems recorded above are interpretive (NEW-1 to NEW-3, NEW-5) or omissions (RR2-9, RR2-11).

[EVIDENCE-COMMITTED]
