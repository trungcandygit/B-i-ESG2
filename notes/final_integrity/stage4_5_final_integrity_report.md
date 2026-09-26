# Academic Integrity Verification Report — Stage 4.5 (Final Verification, Mode 2)

Agent: ARS `academic-pipeline` integrity_verification_agent, Mode 2 (post-revision final check).
Date: 2026-09-26. Repository HEAD at check time: `ff2d3da`.
Verified draft: `notes/final_integrity/input/manuscript_v3_blinded.md` (SHA-256 prefix `9d590dcd5340e7c1`, 11,490 words incl. exhibits).
Prior draft for E6: `notes/re_review/input/revised_manuscript_v2_1.md` (`614e749ca345b449`).
Placeholder source: `manuscript/manuscript.md` (`1d7d32f668a58b1e`); numbers: `project_R/outputs/numbers.csv` (`d82ca84066675783`).
Roadmap used for E6 authorization: `notes/re_review/phase2B_decision.md` §8 (M1–M9, S1–S10, N1–N5) and `notes/review_independent/06_editorial_decision.md`.
The Stage 2.5 report (`notes/05_integrity_stage2_5.md`) and earlier reference notes were not used as evidence. Every Phase A verdict below comes from a fresh WebSearch in this session.

## Verification Mode
Final Verification (Mode 2, Stage 4.5).

## Verdict
**FAIL**. Rule applied (agent file, Verdict Criteria): "Any SERIOUS or MEDIUM issues, or any MAJOR_DISTORTION, or any UNVERIFIABLE → FAIL". This check found 0 SERIOUS, 3 MEDIUM, and 14 MINOR issues. The 3 MEDIUM issues alone require FAIL. None concerns a fabricated reference or a wrong number. All three are text-level fixes: one citation attribution and two overstated sentences. All 31 references exist. Every number in the text and exhibits matches the R outputs.

In addition, two E6 rows (ADV-E6-1, ADV-E6-2) are STRENGTH-DRIFTED and close the checkpoint until each has a disposition (`restore` / `authorize_with_reason` / `pause`). One 7-mode item (Mode 2) is SUSPECTED because of IL-MEDIUM-1, which blocks until acknowledged.

## Verification Summary

| Category | Total | Passed | Issues |
|---|---|---|---|
| Reference Existence (A1) | 31 | 31 VERIFIED | 0 NOT_FOUND / 0 MISMATCH |
| Bibliographic Accuracy (A2) | 31 | 29 | 2 MINOR (Chen et al. end page conflicting across sources; Dobrick et al. DOI missing) |
| Ghost Citations (A3) | -- | -- | 0 orphan / 0 dangling |
| Citation Context Accuracy (B) | 31 sources, 100% of in-text citation contexts (≈150 instances) | 28 sources clean | 1 MEDIUM (pre-addition run-up attribution), 2 MINOR_DISTORTION (Roth 2022 "economic content"; Callaway–Sant'Anna "as recommended") |
| Statistical Data Accuracy (C1/C2) | 146 distinct placeholder keys (≈230 numeric instances in prose) + 9 exhibit tables (82 rows) + 2 figures | all values equal numbers.csv / table CSVs | 0 numeric mismatches; 3 MINOR verbal-arithmetic issues |
| Internal Consistency (C2/D) | -- | Fail | 2 MEDIUM (IL-MEDIUM-2, IL-MEDIUM-3), 4 MINOR |
| Originality Check (D1) | 5 characteristic sentences WebSearched (exact phrase) + script 8-gram audit of 100% of paragraphs vs companion study | all | 0 CLOSE_MATCH / 0 VERBATIM |
| Self-Plagiarism / companion study (D2) | 12 sections | 12 (0 shared 8-grams) | 1 MINOR (repo audit artifacts stale / missing) |
| Claim Verification (E) | Mode 2: ALL_REGISTERED = 42 (semantic extraction coverage: not_machine_detectable; E1.1 candidate gaps: not run, see E1.1) | 32 VERIFIED | 0 MAJOR_DISTORTION, 0 UNVERIFIABLE, 1 UNVERIFIABLE_ACCESS (C-12), 9 MINOR_DISTORTION / overstatement (C-10, C-11, C-19, C-21, C-24, C-28, C-31, C-33, C-35) |

## Phase A: Reference Verification (fresh, 31/31)

A0 (Semantic Scholar / Crossref batch): **API_UNAVAILABLE**. `api.crossref.org` returned 403 from the egress proxy, and WebFetch was also blocked (EGRESS_BLOCKED). As the protocol requires, every reference went to A1 WebSearch. No DOI could be resolved directly. Each DOI below was confirmed as the DOI that the publisher page or RePEc/EconPapers record returned in search results.

| # | Reference (as in manuscript) | Verdict | Evidence (top source from WebSearch) | Field check |
|---|---|---|---|---|
| 1 | Avramov, Cheng, Lioui, Tarelli 2022, JFE 145(2) 642–664, 10.1016/j.jfineco.2021.09.009 | VERIFIED | EconPapers RePEc:eee:jfinec:v:145:y:2022:i:2:p:642-664; ScienceDirect S0304405X21003974 | all match |
| 2 | Baker, Larcker, Wang 2022, JFE 144(2) 370–395 | VERIFIED | Stanford GSB publication page; SSRN 3794018 | all match |
| 3 | Berg, Fabisik, Sautner 2020, ECGI Finance WP 708/2020, SSRN 3722087 | VERIFIED | SSRN 3722087; ECGI working paper page | match (ECGI lists revision Aug 2021; series number 708/2020 correct) |
| 4 | Berg, Heeb, Kölbel 2022, SAFE WP 439, SSRN 4088545 | VERIFIED | SSRN 4088545; RePEc zbw:safewp:308045 | match |
| 5 | Berg, Kölbel, Rigobon 2022, RoF 26(6) 1315–1344, 10.1093/rof/rfac033 | VERIFIED | academic.oup.com/rof/article/26/6/1315/6590670 | match |
| 6 | Bernama 2022, "Bursa Malaysia signs sustainability MoU with London Stock Exchange Group", 2 Nov 2022 | VERIFIED | bernama.com/en/news.php?id=2134522 (title matches); The Star and The Edge 2 Nov 2022 | match |
| 7 | Bikmetova, Pirinsky 2026, JBE 204(2) 335–365, 10.1007/s10551-025-06063-0 | VERIFIED | RePEc kap:jbuset:v204y2026i2; Springer link | match |
| 8 | Callaway, Sant'Anna 2021, JEconom 225(2) 200–230 | VERIFIED | RePEc eee:econom:v225y2021i2p200-230 | match |
| 9 | Chen, Noronha, Singal 2004, JF 59(4) 1901–1929, 10.1111/j.1540-6261.2004.00683.x | VERIFIED (pages: MINOR) | Wiley DOI page; RePEc handle `...v:59:y:2004:i:4:p:1901-1930`; another Wiley-derived listing gives 1901–1929 | end page conflicting (1929 vs 1930) → IL-MINOR-1 |
| 10 | Christensen, Serafeim, Sikochi 2022, TAR 97(1) 147–175, 10.2308/TAR-2019-0506 | VERIFIED | publications.aaahq.org article 97/1/147 | match |
| 11 | Demiroglu, Ryngaert 2010, FM 39(2) 555–584 | VERIFIED | EconPapers blafinmgt v39 i2 p555-584; Wiley DOI | match |
| 12 | Dobrick, Klein, Zwergel 2023, FRL 55, 104014 | VERIFIED (DOI missing: MINOR) | ScienceDirect S1544612323003860; RePEc eee:finlet:v:55:y:2023 | no DOI in reference, unlike all other journal entries → IL-MINOR-2 |
| 13 | Gibson Brandon, Krueger, Schmidt 2021, FAJ 77(4) 104–127 | VERIFIED | tandfonline 10.1080/0015198X.2021.1963186; CFA Institute page | match |
| 14 | Goodman-Bacon 2021, JEconom 225(2) 254–277 | VERIFIED | EconPapers RePEc:eee:econom:v:225:y:2021:i:2:p:254-277 | match |
| 15 | Harris, Gurel 1986, JF 41(4) 815–829 | VERIFIED | RePEc bla:jfinan:v41y1986i4p815-29; Wiley DOI | match |
| 16 | Hartzmark, Sussman 2019, JF 74(6) 2789–2837, 10.1111/jofi.12841 | VERIFIED | Wiley DOI page; SSRN 3016092 | match |
| 17 | Kelly, Ljungqvist 2012, RFS 25(5) 1366–1413 | VERIFIED | RePEc oup:rfinst:v25y2012i5p1366-1413 | match |
| 18 | Krueger, Sautner, Tang, Zhong 2024, JAR 62(5) 1795–1847 | VERIFIED | Wiley 10.1111/1475-679X.12548 | match |
| 19 | LSEG 2025, LSEG ESG Scores [Data set] | VERIFIED (data product) | product exists; data citation, no persistent ID; vintage unknown, disclosed in §3.2 and §7 | acceptable for a licensed data set |
| 20 | Merton 1987, JF 42(3) 483–510 | VERIFIED | RePEc bla:jfinan:v42y1987i3p483-510 | match |
| 21 | Pástor, Stambaugh, Taylor 2021, JFE 142(2) 550–571 | VERIFIED | EconPapers eee:jfinec:v:142:y:2021:i:2:p:550-571 | match |
| 22 | Pedersen, Fitzgibbons, Pomorski 2021, JFE 142(2) 572–597 | VERIFIED | EconPapers eee:jfinec:v:142:y:2021:i:2:p:572-597 | match |
| 23 | Rambachan, Roth 2023, REStud 90(5) 2555–2591 | VERIFIED | academic.oup.com/restud/article/90/5/2555/7039335 | match |
| 24 | Roth 2022, AER: Insights 4(3) 305–322 | VERIFIED | aeaweb.org 10.1257/aeri.20210236; EconPapers p:305-22 | match |
| 25 | S&P Global Market Intelligence 2025, Compustat Global [Data set] | VERIFIED (data product) | product exists | acceptable |
| 26 | Sahin, Bax, Paterlini, Czado 2023, GFJ 56, 100780 | VERIFIED | TUM portal; SSRN 4020354 (GFJ vol. 56, May 2023, art. 100780) | match |
| 27 | Sant'Anna, Zhao 2020, JEconom 219(1) 101–122 | VERIFIED | RePEc eee:econom:v219y2020i1p101-122 | match |
| 28 | Shleifer 1986, JF 41(3) 579–590 | VERIFIED | RePEc bla:jfinan:v41y1986i3p579-90 | match |
| 29 | Singapore Exchange 2016, SGX Mainboard Rules 711A and 711B, FY ending on/after 31 Dec 2017 | VERIFIED | rulebook.sgx.com/rulebook/711a; Conventus Law summary (rules effective 20 July 2016, FY ending on/after 31 Dec 2017, comply-or-explain via 711B) | match; the URL shows the current, amended rule text (IL-MINOR-13) |
| 30 | Tsang, Wang, Xiang, Yu 2024, JBF 169, 107312 | VERIFIED | RePEc eee:jbfina:v169y2024ics0378426624002267; ScienceDirect | match |
| 31 | Tsang, Wang, Xiang, Yu 2025, CGIR 33, 554–577, 10.1111/corg.12615 | VERIFIED | Wiley 10.1111/corg.12615 ("Tsang – 2025 – CGIR"; vol. 33, pp. 554–577) | match |

A3 ghost citations: I checked every author–year string in the body and exhibit notes against the list by script. All 31 entries are cited 1–13 times, with no orphan references and no dangling citations. Cross-check of similar references (anti-hallucination rule 4): Berg et al. ×3 are three distinct papers with distinct co-authors and venues, and Tsang et al. 2024 and 2025 are distinct papers in different journals.

## Phase B: Citation Context Verification (100% of citation contexts)

Sources were checked against the publisher or repository abstracts returned by WebSearch. Full texts could not be fetched because of the egress block.

| Source | Claim(s) in manuscript (locations) | Verdict |
|---|---|---|
| Merton 1987 | larger investor base lowers required return, raises price; investors hold only known stocks (§1 ¶1, §2.1, H1, §5.2, §5.6, §6.2, §6.3) | VERIFIED |
| Pástor et al. 2021; Pedersen et al. 2021 | preference channel, lower expected returns for green assets (§1, §2.1, H1, H3, §5.2, §5.5, §6.3) | VERIFIED |
| Hartzmark & Sussman 2019 | fund investors respond strongly to newly published (fund-level) sustainability ratings (§1, §2.1, §5.2, §6.2) | VERIFIED as attribution; the inference drawn from it in §5.2 overreaches (IL-MEDIUM-3) |
| Shleifer 1986; Harris & Gurel 1986 | addition announcement raises prices (§1 ¶2); >3% increase, nearly reversed within ~2 weeks (§5.6); part lasts (Shleifer) / part reverses (H&G) (§6.2) | VERIFIED (H&G abstract: "prices increase by more than 3 percent... nearly fully reversed after 2 weeks"; Shleifer: abnormal returns persist ≥10 days) |
| Shleifer 1986; Harris & Gurel 1986; Chen et al. 2004 | "This run-up resembles the growth that **precedes** additions to a major index" (§5.3 ¶1); Chen et al. alone cited for pre-addition growth in H1 (§2.3), §4.1, §5.1 ¶2 | **UNVERIFIABLE_ACCESS → IL-MEDIUM-1**. The abstracts document announcement and post-announcement effects and the awareness explanation. None documents multi-year growth before addition. The pre-inclusion run-up literature is a different source (search returned Kasch and Sarkar, FRBNY Staff Report 484: "increase in market capitalization in the two years preceding inclusion ... averaging 56%") |
| Chen et al. 2004 | permanent component attributed to investor awareness (§1 ¶2, §5.6, §6.2) | VERIFIED |
| Tsang et al. 2024 | firms covered by more ESG rating agencies commit fewer ESG violations (§1 ¶3) | VERIFIED (8.77% lower violation probability; U.S. firms 2000–2018) |
| Tsang et al. 2025 | dividend changes after initiation of NFR agency coverage (§1 ¶3) | VERIFIED |
| Bikmetova & Pirinsky 2026 | intensity of coverage → lower toxic emissions, better ratings, more ESG-preferring institutional ownership (§1 ¶3) | VERIFIED (abstract matches almost term for term) |
| Kelly & Ljungqvist 2012 | loss of analyst coverage raises asymmetry, lowers prices (§1, §2.2, §5.3, §6.2) | VERIFIED |
| Demiroglu & Ryngaert 2010 | first coverage of neglected stocks: +4.86% announcement return, driven by favorable coverage (§1, §2.2, H3, §5.5, §5.6, §6.2) | VERIFIED (549 stocks, +4.86%, "driven by positive coverage and not the mere introduction") |
| Berg, Kölbel, Rigobon 2022 | ratings disagree widely (§1, §2.1, §5.5, §6.2) | VERIFIED |
| Christensen et al. 2022 | disagreement rises with disclosure (§1, §5.5, §6.2) | VERIFIED |
| Gibson Brandon et al. 2021; Avramov et al. 2022 | disagreement carries a return premium and affects demand (§1, §2.1) | VERIFIED |
| Berg, Heeb, Kölbel 2022 | U.S. ESG fund holdings respond to one provider's ratings more than others' (§2.1, §6.2) | VERIFIED (only MSCI explains U.S. ESG-fund holdings) |
| Berg, Fabisik, Sautner 2020 | the provider's historical scores rewritten on a large scale (§1, §3.2, §5.4) | VERIFIED (Refinitiv/ASSET4 rewriting) |
| Sahin et al. 2023 | recent scores subject to revision; the five most recent fiscal years can change after publication (§1, §3.2, §5.4, §5.5) | VERIFIED |
| Krueger et al. 2024 | mandatory disclosure raises information and liquidity, most for weak information environments (§2.2, §3.1, §4.3, §5.5, §6.1) | VERIFIED |
| Dobrick et al. 2023 | larger firms receive higher Refinitiv scores (§2.2, §4.2, §5.1) | VERIFIED |
| Callaway & Sant'Anna 2021 | ATT(g,t), never/not-yet-treated comparison groups, aggregation, composition caveat (§1, §3.2, §4.1–4.5, §5.5) | VERIFIED; "Inference uses a bootstrap, as recommended by Callaway and Sant'Anna (2021)" (§4.3) is loose because C&S propose a multiplier bootstrap and the paper uses a nonparametric firm-cluster bootstrap → MINOR_DISTORTION (IL-MINOR-12) |
| Goodman-Bacon 2021; Baker et al. 2022 | TWFE bias under staggered timing (§1, §4.2, §4.5, §5.5) | VERIFIED |
| Sant'Anna & Zhao 2020 | outcome-regression vs doubly robust DiD (§4.2, §5.5) | VERIFIED |
| Roth 2022 | pre-trend tests low power; conditioning distorts (§4.1, §4.3, §5.3, §6.1, §6.3) | VERIFIED. "pre-trends in staggered designs can carry economic content (Roth, 2022)" (§1 ¶7) is not what Roth (2022) argues → MINOR_DISTORTION (IL-MINOR-11) |
| Rambachan & Roth 2023 | relative-magnitudes restriction; the simplified bound is described as "in the spirit of" and the confidence sets as "not computed" (§1, §4.4, §5.4, §6.1, §7) | VERIFIED (attribution is appropriately hedged) |
| Bernama 2022 | FTSE Russell scores covered EMAS constituents (~30% of PLCs); Nov 2022 MoU to extend to all Main and ACE Market PLCs (§3.1, §7) | VERIFIED (the source says the MoU "would expand" coverage; "until ... agreed" is acceptable) |
| Singapore Exchange 2016 | annual sustainability report, comply-or-explain, FY ending on/after 31 Dec 2017 (§3.1, §4.3, §5.5, §6.1) | VERIFIED |
| LSEG 2025; S&P Global 2025 | data sources (§3.2) | VERIFIED (data citations) |

B2 format: the author–year style is consistent. "Sahin et al." and "Tsang et al." appear in short form after the first full citation, which is consistent with *Journal of Finance* style.

## Phase C: Data Verification

**C1 (source numbers):** 4.86% (Demiroglu and Ryngaert), ">3%, reversed within about two weeks" (Harris and Gurel), and "about 30 percent" (Bernama) all match the sources.

**C2 (internal numbers) — method:**
1. I resolved every `{{key}}` in `manuscript/manuscript.md` from `numbers.csv` (146 distinct keys, 0 missing) and compared the result with the blinded v3 paragraph by paragraph. All prose paragraphs match exactly. The only difference is the expected `[[COMPANION]]` disclosure line.
2. I compared all 82 exhibit rows (Tables 1, 2, 3, IA1–IA6) with `table*_formatted.csv` by script: 0 mismatches.
3. I recomputed the key numbers from the raw CSVs and `05_numbers.R` / `04_tables_figures.R`.
4. Fig. 1 and Fig. IA1 (PNG) agree with `event_study.csv` and `cohort_sizes.csv`: point positions, CI ends, open markers before and filled markers after, dotted bars before and solid bars after, and e = −1 fixed at 0.

Recomputations and verbal-claim checks (✓ = arithmetically true given the CSVs):
- 577 = 90+141+237+109 ✓; 108 = TH(18+47)+SG(9+34) ✓; 289 = 96+193 ✓; MY 404/675 = 59.85% → 59.9 ✓; (404+165)/675 = 84.3% ✓; ID 42, SG 50, PH 14 ✓ (sum 675 ✓).
- 36,168 = 3,288 × 11 (the full grid) ✓; 3,709 / 40,799 / 3,423 / 135 / 2,613 ✓ (`sample_flow.csv`); 17 coverage gaps ✓; 24.6% above p95 ✓ (0.2458); attrition 274 → 271 = 98.9% ✓.
- Run-up: exp(0.1320)−1 = 14.1% ✓; exp(0.0949)−1 = 9.95% → 10.0% ✓. "From event year −5 to the base year, a span of four years" ✓ (−5 → −1).
- Headline 0.002 (SE 0.024; CI −0.046 to 0.048; p 0.936) ✓; exp(−0.0460)−1 = −4.5%, exp(0.0476)−1 = 4.87% → 4.9 ✓; MDE 2.8 × 0.02409 = 0.0675 → 0.067, exp(.0675)−1 = 6.98% → 7.0 ✓.
- Holm p: mcap 0.134, leverage 0.134, assets 0.053 (unadjusted 0.018) ✓. "None of the four outcomes shows a significant change at the 5% level after the Holm adjustment" ✓. The asset CI [0.007, 0.081] excludes zero and the text and Table 2 note explain why ✓.
- Event study: MTB −0.095/−0.082 (p 0.015/0.015), mcap −0.132/−0.125 ✓, monotone rise toward zero ✓. Pre-trend p: mcap 0.022, MTB 0.074, leverage 0.002 (0.0015), assets 0.083 ✓. Post MTB e0–e3 ∈ [−0.044, 0.017], all p ≥ 0.34 ✓. e4: 141 firms / 6 cohorts, −0.077 (p 0.209), mcap 0.088 (p 0.153) ✓. mcap e1 −0.072 (p 0.029), later years n.s. ✓. Asset e3 0.090 ✓.
- R10: −0.068 [−0.116, −0.020], p 0.004, exp(−0.0685)−1 = −6.6% ✓; N 646/2,412 ✓; mcap −0.073 (p 0.016), assets −0.006 ✓; pre-trend p 0.072 ✓; M̄ = 0.25 interval [−0.138, 0.002] ✓ includes zero ✓; breakdown 0.228 → "0.23" ✓.
- R11: 7 cohorts (2015–2021) ✓, 273/2,032 ✓, −0.008 (p 0.806) ✓. R7: −0.052 [−0.118, 0.014] ✓; mcap −0.134 (p 0.001) ✓. R8: 0.028 (p 0.265) [−0.021, 0.077] ✓; exp(.077)−1 = 8.0% ("several percent") ✓.
- Bounds: dmax 0.046; ±0.071/0.073, 0.096/0.098, 0.147/0.148 ✓; "every interval includes zero" ✓.
- R1–R4 MTB −0.001/0.025/0.031/0.016, all p > 0.10 ✓; mcap R4 −0.007 ✓; assets 0.011–0.101 across R1–R4 ✓. R5 0.059 (p 0.00987, printed 0.010, *** since < 0.01) ✓; mcap 0.134 (p < 0.001) ✓. R6 0.064 (p 0.014) → 6.6% ✓, mcap 0.185 ✓.
- Leave-one-market-out MTB range [−0.007, 0.017] ✓; ex-MY −0.003 (p 0.940) ✓, mcap 0.037 ✓. Per market MY 0.009 (372), TH 0.027 (157) ✓; SG −0.037 (SE 0.073) "small and imprecise" ✓; "no market shows a significant positive effect" ✓ (all p > 0.5).
- H3: −0.019 / 0.022 / −0.041 (SE 0.040, p 0.307), MDE 0.113 ✓.
- Table 1: all 40 cells ✓; median asset ratio 294.3/68.7 = 4.28 → 4.3 ✓; ND 0.69/0.61/−0.04 ✓.
- Stars in Table 3 / IA1 / IA3 follow unadjusted p (spot-recomputed for 24 cells) ✓.
- Pre-specified vs exploratory: `notes/02_analysis_plan.md` was committed once (62c2152, 2026-09-25 07:41:24) and never modified afterwards. The first estimation code came later (a18d2b1, 08:04:00). The plan fixes H1–H3, the never-treated control group, the g−1 base, the outcome-regression covariates, e ∈ [−5, 4], the post average over 0–3, B = 999, the seed, Holm for H2, the Wald test on −5..−2, and R1–R6. The manuscript labels R1–R6 and H3 as pre-specified and R7–R11, §4.4 and the four §4.5 additions as exploratory. **This labeling matches the plan and the git history ✓.** The plan's §7 rule (no causal language if pre-trends or the placebo are significant) is followed: effects are framed "under assumption (2)", and "coverage lowered them" appears only inside an explicitly conditional reading.

**Verbal-arithmetic findings (MINOR):**
- §5.4 ¶3: "any departure with M̄ of 0.01 or more admits an increase of 5 percent". The breakdown value is 0.01207 (`rm_breakdown.csv`). The robust upper limit is 0.04758 + 0.1006·M̄. At M̄ = 0.010 it is 0.04858, which is below log 1.05 = 0.04879, so the statement is false for M̄ ∈ [0.010, 0.012) → IL-MINOR-3.
- §5.6 ¶2: "a lasting valuation effect as large as half of the MTB run-up would lie just outside the headline interval". This is true on the percent scale (half of 10.0% = 5.0% > 4.87%) but false on the estimation (log) scale (half of 0.0949 = 0.0475 < CI upper limit 0.0476). The claim depends on the scale by 0.0001 log points → IL-MINOR-4 (also ADV-E6-1).
- §5.4 ¶1: "a decline of about −6.6 percent" is a double negative → IL-MINOR-8.

**Numbers not traceable to CSV:** none in the analysis. The hard-coded numbers are either design constants (M̄ = 0.25/0.5/1, 10th percentile, 999, 2.8, 5%/80%) or source figures (4.86%, 3%, 30%), all verified.

**R re-run (Mode 1/3 evidence):** RERUN_PLACEHOLDER

## Phase C3/C4 (figure trace, experiment provenance)
No Figure Package with `figure_table_trace[]` and no passport with `experiment_provenance[]` were supplied, so I treated these as legacy / trace-unavailable. I checked caption fidelity by hand instead. The Fig. 1 note ("open circles with dotted bars are years before... filled circles with solid bars...; event year 4 is shown but not included in Eq. (6)") matches the rendered PNG and the code. The Fig. IA1 note matches `cohort_sizes.csv`. Result: trace-unavailable note (advisory), with no caption-claim failure. Table 3 note: see IL-MINOR-5.

This check verifies disclosure and claim-to-provenance fidelity. It does not judge whether the experiment was correctly designed, run, statistically adequate, or reproducible by ARS.

## Phase D: Originality Verification

| Grade | Paragraph count | Proportion |
|---|---|---|
| ORIGINAL | 5 sampled by WebSearch (exact phrase, one each from §1, §2.2, §4.2, §6.1, §6.3) + all 62 body paragraphs by n-gram script | 100% |
| COMMON_KNOWLEDGE / PARAPHRASE / CLOSE_MATCH / VERBATIM | 0 | 0% |

D1: none of the five exact-phrase searches returned a match. The Phase D sampling rate is 100% by script; the WebSearch sample is 5 paragraphs. Newly added or modified v3 paragraphs are all covered by the script.

D2 (companion study, `project_R/overlap/original_ESG2_text.txt`): I recomputed on v3 in this session with the same tokenization and n-gram metric as `overlap_audit.R`, without writing any file. Shared 8-grams are 0 in every section: Title, Abstract, §1–§8, Exhibits, and the Internet Appendix. Shared 5-grams: §1 4, §3 2, §6 1, all others 0. **PASS.** Two repository artifacts are out of date:
- `project_R/outputs/overlap/overlap_by_section.csv` dates from the v2 run (02:50; sections still named "Empirical Design", 8,346 words).
- `notes/09_overlap_audit.md`, which CLAUDE.md §3/B2 requires, does not exist in the repository.
Both are recorded as IL-MINOR-14 (process). Companion-study disclosure: §3.2 carries the blinded wording and states that no variable, estimate, table or figure is shared ✓.

## Phase E: Claim Verification

E1 registry: 42 claims, tier ALL (Mode 2). I could not persist a `claim-registry/1.0` artifact with byte spans because this dispatch permits exactly one output file. The table below is the rendered view. Semantic extraction coverage: `not_machine_detectable`.

E1.1 (#737): `scripts/claim_registry_coverage.py` was not run because there is no persisted registry to bind → **E1-COVERAGE-UNRESOLVED** (advisory). The orchestrator must re-run E1/E1.1 with persisted artifacts if the contract is to be satisfied.

| ID | Location | Claim (abridged) | Evidence | Verdict |
|---|---|---|---|---|
| C-01 | Abstract, §1, §8 | 675 scored / 2,613 never-scored non-financial firms, mostly Malaysian and Thai | sample_flow, cohort_sizes | VERIFIED |
| C-02 | Abstract, §1 ¶5, §5.3 | scored firms' mcap and MTB grew faster before first scored year (14.1%, 10.0%) | event_study | VERIFIED |
| C-03 | Abstract, §1, §5.2, §8 | under parallel trends MTB did not rise afterwards: 0.002 [−0.046, 0.048] | att_main | VERIFIED |
| C-04 | Abstract, §1 ¶6, §8 | first scored year coincides with a valuation peak; no later gain detected | event_study (e0–e3 flat vs −1), R10 decline | VERIFIED (relative to comparable firms, under (2); wording authorized by M3/N1) |
| C-05 | §1 ¶4 | 577 of 675 entered 2020–2023 | cohort_sizes | VERIFIED |
| C-06 | §1 ¶4, §4.5, Table 3 note | PAP committed before estimation code; later analyses labeled exploratory | git 62c2152 < a18d2b1 | VERIFIED |
| C-07 | §1 ¶5, §5.4 | R10 −0.068 (p 0.004) cannot separate reversal from a coverage effect | robustness_revision2 | VERIFIED |
| C-08 | §1 ¶5, §6.3 | static TWFE attributes 6.6% | twfe_static | VERIFIED |
| C-09 | §1 ¶6, §5.4 | M̄ = 0.25 interval −0.071 to 0.073 | rm_bounds | VERIFIED |
| C-10 | §1 ¶6 | "under parallel trends no specification detects a valuation gain after it" | Table 3 R6: 0.064, p 0.014 | **OVERSTATEMENT → IL-MEDIUM-2** (MINOR_DISTORTION class; see issue) |
| C-11 | §1 ¶7 | pre-trends can carry economic content (Roth, 2022) | Roth abstract | MINOR_DISTORTION (IL-MINOR-11) |
| C-12 | H1, §4.1, §5.1, §5.3 | index additions are preceded by growth (Chen et al.; Shleifer; H&G) | abstracts do not contain it | **UNVERIFIABLE_ACCESS → IL-MEDIUM-1** |
| C-13 | §2.2 | larger firms get higher scores (Dobrick et al.) | source | VERIFIED |
| C-14 | §3.1 | SGX rule timing; EMAS ~30%; Nov 2022 MoU | SGX, Bernama | VERIFIED |
| C-15 | §3.1 | 108 TH+SG in 2019–20; 289 MY in 2021–22; 59.9%, 84.3% | cohort_sizes | VERIFIED |
| C-16 | §3.2 | 3,709 firms / 40,799 firm-years; 3,423; 135; 3,288 / 36,168 | sample_flow | VERIFIED |
| C-17 | §3.2 | 17 of 675 have a later gap | coverage_gaps | VERIFIED |
| C-18 | §3.2 | 274 → 271 (98.9%) | attrition_e3 | VERIFIED |
| C-19 | §3.2 | "the others leave the sample through delisting or missing data" | no delisting variable; full grid | MINOR_DISTORTION (IL-MINOR-6) |
| C-20 | §3.2 | publication-lag features move true date later, cannot create the run-up | logic of recorded first year | VERIFIED |
| C-21 | §3.1 / §6.2 / §7 | some sampled firms were already scored by FTSE Russell | not in data; §3.1 says "may" | MINOR_DISTORTION (IL-MINOR-7) |
| C-22 | §4.2 | 24.6% of scored firms above never-scored p95 | size_overlap | VERIFIED |
| C-23 | §4.2–4.5 | estimator, bootstrap, Holm, Wald, bounds as described | 02_cs_did.R, 03_estimate.R | VERIFIED |
| C-24 | Table 3 note | "Each cell reports the average effect over event years 0 to 3" | R5 uses fake event years 0–2 (`post_max = 2`); R6 is static | MINOR_DISTORTION (IL-MINOR-5) |
| C-25 | §5.1 | Table 1 levels, ratios, NDs | table1_raw | VERIFIED |
| C-26 | §5.2 | MDE 0.067 ≈ 7.0%; CI admits increases of a few percent | att_main | VERIFIED |
| C-27 | §5.2 | Holm-adjusted p: 0.134 / 0.053 / 0.134; none significant after Holm | att_main | VERIFIED |
| C-28 | §5.2 | Hartzmark–Sussman channel "did not produce a lasting valuation gain" | CI admits +4.9%; §6.3 "smaller effects remain possible" | **OVERSTATEMENT → IL-MEDIUM-3** |
| C-29 | §5.3 | pre-trend tests: mcap reject (0.022), MTB not (0.074), leverage 0.002 | pretrend_tests | VERIFIED |
| C-30 | §5.3 | post MTB −0.044..0.017 none significant; e4 values; mcap e1 | event_study | VERIFIED |
| C-31 | §5.4 ¶3 | "M̄ of 0.01 or more admits +5%"; "absence of a positive effect ... conditional on (2)" | rm_breakdown 0.0121; CI under (2) admits positive effects | MINOR_DISTORTION (IL-MINOR-3, IL-MINOR-10) |
| C-32 | §5.4 | R10 N, pre-trend p, bounds, breakdown 0.23 | r10_* CSVs | VERIFIED |
| C-33 | §5.6 ¶2 | half of MTB run-up "just outside" the headline interval | scale-dependent | MINOR_DISTORTION (IL-MINOR-4; ADV-E6-1) |
| C-34 | §5.4 | R11, R7, R8 values and intervals | robustness_revision(2) | VERIFIED |
| C-35 | §6.3 ¶1 | "the heterogeneity-robust estimator ... attribute[s] the gap to growth before coverage" | §5.5: part of the gap reflects covariates and event window (R2 0.025) | MINOR_DISTORTION (IL-MINOR-9) |
| C-36 | §5.5 | R1–R4 unchanged; none significant at 10% | robustness | VERIFIED |
| C-37 | §5.5 | placebo fails (0.059, p 0.010; mcap 0.134) | robustness | VERIFIED |
| C-38 | §5.5 | leave-one-market-out range; ex-MY; per-market MY/TH | lomo, per_market | VERIFIED |
| C-39 | §5.5 | H3 difference −0.041 (SE 0.040, p 0.307), MDE 0.113 | heterogeneity | VERIFIED |
| C-40 | §5.6 ¶1 | 4.86% (D&R), >3% reversed within two weeks (H&G) | sources | VERIFIED |
| C-41 | §6.1 | coverage waves TH/SG 2019–20, MY 2021–22; common shock "less likely" | cohort_sizes | VERIFIED (Thai first scores continue in 2021–24; "wave" wording acceptable) |
| C-42 | §4.6 | AI disclosure: Claude via Claude Code, Sept 2026; five instances produced simulated referee reports | notes/review_independent (EIC, R1, R2, R3, DA) | VERIFIED |

| Verdict | Claim count | Proportion |
|---|---|---|
| VERIFIED | 32 | 76.2% |
| MINOR_DISTORTION / overstatement | 9 (C-10, C-11, C-19, C-21, C-24, C-28, C-31, C-33, C-35) | 21.4% |
| MAJOR_DISTORTION | 0 | 0% |
| UNVERIFIABLE | 0 | 0% |
| UNVERIFIABLE_ACCESS | 1 (C-12) | 2.4% |

C-10 and C-28 have the claim verdict MINOR_DISTORTION. Their issue severity is raised to MEDIUM (IL-MEDIUM-2, IL-MEDIUM-3) because each contradicts the paper's own exhibits or interval-based statements at headline or section level. C-12 (UNVERIFIABLE_ACCESS) maps to MEDIUM (IL-MEDIUM-1). No claim is MAJOR_DISTORTION: every overstated claim is stated correctly elsewhere in the paper (§5.2 ¶1, §6.3 ¶2, §7 seventh limitation), so none misrepresents the evidence as a whole.

Evidence rows (#656): not persisted, because this dispatch permits a single output file. `LEGACY — EVIDENCE ROWS UNAVAILABLE` does not apply (this is a current-producer run), so this is an explicit contract gap for the orchestrator.

**E4 scope advisory (#547):** no RQ Brief scope was supplied → `[E4-SKIPPED: no scope context]`. Informally, the claims stay within the five markets; the §6.3 statement on other markets and providers is phrased as an open question.

**E5 novelty (#548):** one primacy-type claim: "We add emerging-market evidence on the extensive margin of coverage" (§1 ¶7). Its wording is relative, not "first". The literature search in `phase2B` M7 concluded that the cited studies are U.S.-based, and §1 ¶3 now says so ("The studies of rating coverage that we build on use U.S. firms").

| ID | Location | Wording | Classification | Note |
|---|---|---|---|---|
| ADV-E5-1 | §1 ¶7 | "We add emerging-market evidence on the extensive margin of coverage" | UNRESOLVED (no Schema 2 search_strategy with last_searched_at supplied) | wording is already bounded; no absolute primacy claim |

**Cache staleness (#541):** no cache used (live WebSearch only). No rows.

### E6 claim-strength drift (v2.1 → v3)

I compared v2.1 and v3 sentence by sentence (132 sentences removed, 137 added). No revision patch sidecars were supplied, so the diff is the evidence bundle. I could not persist the `claim-strength-drift-findings/1.0` companion artifact under the single-file constraint; rows are rendered here. Detection is semantic and model-mediated. An absent row means none was detected by this review, not that there is none.

Flagged (unauthorized strength moves; each closes the checkpoint until a disposition is recorded):

| ID | Round | Claim location | Prior rung → current rung (or dropped qualifier) | Roadmap items the op claimed | Direction |
|---|---|---|---|---|---|
| ADV-E6-1 | Stage 4' (v2.1→v3) | §5.6 ¶2 | "A lasting valuation effect as large as half of this run-up would lie **at the upper end of** the headline interval" → "would lie **just outside** the headline interval, so any such effect is small relative to the growth" (the effect moves from admitted to excluded) | M9 authorized only adding "under assumption (2)" in §5.6 ¶2 | up |
| ADV-E6-2 | Stage 4' (v2.1→v3) | §5.2 ¶1 | "[the MTB estimate] contrasts with the strong response of fund flows ... (Hartzmark and Sussman, 2019)" → "that channel concerns demand for funds, and **our estimate indicates that it did not produce a lasting valuation gain** for newly scored firms" (contrast becomes an inferred null for the channel) | S7 authorized presenting H&S as a motivating channel, which is a weakening | up |
| ADV-E6-3 | Stage 4' (v2.1→v3) | §1 ¶2 | "a firm **usually** enters a provider's universe after..." → "a firm **is likely to** enter..." | none explicitly (M8 covers the parallel sentence in §2.2 only) | down (benign; `authorize_with_reason` citing M8 by analogy is appropriate) |

Recorded and closed (authorized moves): abstract, §1 ¶6, §8 conditioned on parallel trends (M2(d), M9); §5.4 ¶3 "does not depend on that assumption" deleted (M1(a)); §5.4 ¶1 and §6.1 ¶2 reversal reading now admits an offsetting positive effect (M2(a)); R8 "nets out" → "partly accounts for", with its interval admitting gains (M2(b,c)); "first score arrives near a valuation peak" → "first scored year coincides with a valuation peak" (M3); "year of peak valuation" / "peak year" (N1); "precise estimates" and "unlikely" → "most scored firms" and "less likely" (M6); MDE-based "cannot rule out effects smaller than 7.0%" → CI-based "excludes increases above 4.9%" (S1, M9); "Providers extend coverage" → "We expect providers to extend coverage" (M8(a)); §6.2 "differs from" → "suggests why" (S7); R6 gap now partly attributed to covariates and window (S4).

Disposition sidecar: none yet. Author action required per row (`restore` / `authorize_with_reason` / `pause`). There is no default.

**Token-conservation advisory (#570):** script not run (no patch sidecars). No rows.

## AI Research Failure Mode Checklist (7 modes, Stage 4.5)

| Mode | Status | Evidence |
|---|---|---|
| 1 Implementation bug | CLEAR | `outputs/validation.csv`: 8 ATT(g,t) cells recomputed with manual `lm()` match the pipeline to ≤5e−11, and 3 simulations recover the true ATT and run-up. My code review of `01_data.R`–`05_numbers.R` found no defect: the base-year join, the weighting, the placebo window, and a shift of G by 1 with the filter `G ≤ max(year)+1`. Fresh re-run: see Phase C "R re-run". CIs vary across specifications and are not suspiciously round. |
| 2 Hallucinated citation | **SUSPECTED (narrow)** | All 31 references exist with correct metadata (2 MINOR field issues). One finding is attributed to sources whose accessible content does not contain it: pre-addition growth attributed to Chen et al. / Shleifer / Harris & Gurel (IL-MEDIUM-1). This is a misattribution, not a fabricated reference. It is resolved by re-attributing or rephrasing. |
| 3 Hallucinated result | CLEAR | 146/146 placeholders resolve to `numbers.csv`, the prose equals the resolved source, and 82/82 table rows equal the formatted CSVs. Every key traces to a raw CSV through `05_numbers.R`. |
| 4 Shortcut reliance | CLEAR | not an ML setting. The main threat (selection or pre-trend) is tested directly through event-time pre-coefficients, the placebo, trend adjustment, relative-magnitude bounds and R10, and is reported as the paper's central caveat. |
| 5 Bug reframed as insight | CLEAR | no "surprisingly/unexpectedly" framing. The headline pattern (run-up, then flat) was the competing prediction (b) in the pre-registered plan and is recovered in the simulation with a known run-up. |
| 6 Methodology fabrication | CLEAR (with MINOR notes) | Methods match the code: covariates at g−1, the Eq. (6) weights, B = 999 with a shared bootstrap matrix, the Holm set, the Wald test on −5..−2, the Eq. (9)–(10) constructions, the R1–R11 definitions, and MTB ≤ 0 set to missing. Discrepancies: the Table 3 note window for R5/R6 (IL-MINOR-5) and the delisting attribution (IL-MINOR-6). |
| 7 Frame-lock | CLEAR | the research question and design were fixed in the plan and remained appropriate after review. The revisions weakened rather than defended the initial framing. |

Stage 2.5 comparison (supplementary): the Stage 2.5 report listed no open issues, so none carry forward. Stage 3' `previously_missed` / `indeterminate` records (phase2B §1.4, NEW-1..NEW-5): NEW-1 is resolved (R10 event study, pre-trend test and bounds are reported); NEW-2 is resolved (Table 2 note, §4.3); NEW-3 is resolved (24.6% overlap diagnostic, R4 caveat); NEW-4 is resolved (horizon wording); NEW-5 is resolved (heading levels 1–8, 2.1...).

## Issue List (Sorted by Severity)

### SERIOUS (Must Fix)
None.

### MEDIUM (Must Fix)
| ID | # | Category | Location | Issue Description | Correct Information / Required Fix | Source |
|---|---|---|---|---|---|---|
| IL-MEDIUM-1 | 1 | Citation context (Phase B/E, C-12) | §5.3 ¶1 ("This run-up resembles the growth that precedes additions to a major index (Shleifer, 1986; Harris and Gurel, 1986; Chen, Noronha, and Singal, 2004)"); also §2.3 H1 ("as for firms that are added to an index after a period of growth (Chen, Noronha, and Singal, 2004)"), §4.1 ("a period of growth of the kind that precedes index additions (Chen, Noronha, and Singal, 2004)"), §5.1 ¶2 ("as for firms added to an index (Chen, Noronha, and Singal, 2004)") | The three sources study announcement-window and post-addition price effects (price pressure, investor awareness). None of their verified abstracts documents growth in the years before addition. Four sentences therefore attribute to them a finding that could not be located. | Either (a) cite a verified source that documents pre-inclusion growth (WebSearch surfaced Kasch and Sarkar, "Is There an S&P 500 Index Effect?", FRBNY Staff Report 484; verify the full bibliographic record before adding, per rule B4), or (b) rephrase so the cited papers support only what they show. Example: "coverage resembles an index addition, whose price effects are partly permanent (Chen, Noronha, and Singal, 2004) and partly reverse (Harris and Gurel, 1986)", with the pre-coverage growth claim resting on the paper's own Fig. 1. Do not keep Shleifer / Harris & Gurel as support for "growth that precedes additions". | Wiley / RePEc abstracts of the three papers; search result on pre-inclusion growth (FRBNY SR 484) |
| IL-MEDIUM-2 | 2 | Claim beyond evidence / internal contradiction (C-10) | §1 ¶6 "under parallel trends no specification detects a valuation gain after it"; §6.1 ¶2 "It shows that no specification detects a valuation gain after the first score" | Table 3 row R6 (static TWFE, a reported specification) detects a significant MTB gain: 0.064, p = 0.014, 6.6%. The paper itself quotes this in §1 ¶5 and §6.3. The universal "no specification" is contradicted by the paper's own Table 3. | Restrict the quantifier, e.g., "no heterogeneity-robust specification (Tables 2–3, rows R1–R4 and R7–R11, Table IA1, Table IA3) detects a valuation gain after it", or "apart from the static regression in row R6, which pools pre-coverage growth, ...". | Table 3 / `twfe_static.csv` |
| IL-MEDIUM-3 | 3 | Overstatement / unauthorized upward drift (C-28, ADV-E6-2) | §5.2 ¶1: "that channel concerns demand for funds, and our estimate indicates that it did not produce a lasting valuation gain for newly scored firms in these markets" | Under assumption (2), the CI admits MTB increases up to 4.9%, and the MDE is 7.0% (§5.2, §6.3 "smaller effects remain possible", §7 seventh limitation). A null MTB estimate cannot show that a fund-flow channel "did not produce" a gain. The sentence contradicts the paper's own interval-based reading, and roadmap S7 asked for a weaker framing. | Rephrase within the interval, e.g., "that channel concerns demand for funds; under assumption (2) we detect no lasting valuation gain for newly scored firms, and the interval excludes gains above 4.9 percent but not smaller ones." Or restore the v2.1 contrast sentence in S7-compliant form. | `att_main.csv`; §6.3; roadmap S7 |

### MINOR (Recommended Fix)
| ID | # | Category | Location | Issue Description | Suggestion |
|---|---|---|---|---|---|
| IL-MINOR-1 | 1 | Bibliographic | References, Chen et al. 2004 | End page 1929 conflicts with the RePEc handle (p:1901-1930); another listing gives 1901–1929 | Check the Wiley article page or PDF and use the publisher's range |
| IL-MINOR-2 | 2 | Bibliographic | References, Dobrick et al. 2023 | Only journal entry without a DOI | Add the DOI after confirming it on ScienceDirect (article S1544612323003860) |
| IL-MINOR-3 | 3 | Verbal arithmetic | §5.4 ¶3 | "any departure with M̄ of 0.01 or more admits an increase of 5 percent" is false for M̄ ∈ [0.010, 0.012); the breakdown is 0.0121 | Report "0.012" (add a 3-decimal key) or write "with M̄ above about 0.01" |
| IL-MINOR-4 | 4 | Verbal arithmetic / E6 | §5.6 ¶2 | "half of the MTB run-up would lie just outside the headline interval" holds on the percent scale (5.0% vs 4.87%) but not in log points (0.0475 < 0.0476) | Restore "at the upper end of the headline interval" (v2.1) or state the scale ("an increase of 5.0 percent, half the 10.0 percent run-up, lies just above the interval's 4.9 percent upper end") |
| IL-MINOR-5 | 5 | Table note fidelity | Table 3 note | "Each cell reports the average effect over event years 0 to 3" does not hold for R5 (placebo averages fake event years 0–2; code `post_max = 2`) or R6 (static, all years) | Add "(0 to 2 in row R5; row R6 is the static coefficient of Eq. (11))" |
| IL-MINOR-6 | 6 | Unverifiable causal detail | §3.2 ¶2 | "the others leave the sample through delisting or missing data": the data have no delisting indicator and the grid is complete | "the others have no MTB ratio in event year 3" |
| IL-MINOR-7 | 7 | Consistency | §6.2 ¶1 ("some of them had been scored by FTSE Russell"); §7 third limitation ("Some firms had scores from other providers") vs §3.1 ("may therefore already have been scored") | Stated as fact, but the data do not record it | Use "may have been" throughout |
| IL-MINOR-8 | 8 | Wording | §5.4 ¶1 | "a decline of about −6.6 percent" is a double negative | "a decline of about 6.6 percent" (needs a key without the sign, or "a change of about −6.6 percent") |
| IL-MINOR-9 | 9 | Consistency | §6.3 ¶1 | "the heterogeneity-robust estimator and its event-time profile attribute the gap to growth before coverage", while §5.5 says part of the R6 gap reflects covariates and the event window | "attribute most of the gap to ..." or add "together with the covariates and event window (Section 5.5)" |
| IL-MINOR-10 | 10 | Precision | §5.4 ¶3 | "the absence of a positive effect [is] conditional on assumption (2)": even under (2) the interval admits positive effects up to 4.9% | "the absence of a detected positive effect" |
| IL-MINOR-11 | 11 | Citation context (MINOR_DISTORTION) | §1 ¶7 | Roth (2022) is about pretest power and distortion, not about pre-trends having economic content | "The results also show that pre-coverage dynamics, which pre-trend tests treat as a nuisance (Roth, 2022), can be the economic finding" or drop the citation |
| IL-MINOR-12 | 12 | Citation context (MINOR_DISTORTION) | §4.3 ¶1 | "Inference uses a bootstrap, as recommended by Callaway and Sant'Anna (2021)": C&S propose a multiplier bootstrap, while the paper uses a nonparametric firm-cluster bootstrap | "Inference uses a firm-cluster bootstrap; Callaway and Sant'Anna (2021) use a multiplier bootstrap for the same aggregated parameters" |
| IL-MINOR-13 | 13 | Reference currency | References, Singapore Exchange 2016 | The URL shows the current, amended rule text (amended 2022 and later), not the 2016 version | Add "(as introduced 20 July 2016)" or cite the 2016 rule amendment notice; add an access date |
| IL-MINOR-14 | 14 | Process / reproducibility artifacts (not manuscript text) | `project_R/outputs/run_log.txt`; `project_R/outputs/overlap/`; `notes/09_overlap_audit.md` | `run_log.txt` (02:49) predates the round-3 outputs (07:36) and has no "Revision 3" block. The overlap CSV is from v2. `notes/09_overlap_audit.md`, which CLAUDE.md B2 requires, is absent. This session's v3 recomputation shows 0 shared 8-grams. | Re-run `run_all.R` with the log saved, re-run `export_sections.py` + `overlap_audit.R` on v3, and write `notes/09_overlap_audit.md` |

## Tool Limitation Disclaimer
The originality check (Phase D) uses WebSearch for heuristic comparison and is not professional plagiarism-detection software (such as Turnitin or iThenticate). Coverage is limited to publicly searchable literature: 5 exact-phrase web samples, plus a 100% n-gram comparison with the companion manuscript. Missed detection remains possible. Before formal submission, run a professional plagiarism-detection tool. Direct DOI resolution (Crossref) and page fetches were blocked by the network egress proxy. Every Phase A verdict and Phase B context check therefore rests on search-result metadata and abstracts, not full texts. Hence C-12 is UNVERIFIABLE_ACCESS rather than UNVERIFIABLE.

## Verification Audit Trail
Phase A queries (one per reference; top result → determination): each query had the form `"<authors>" "<title>" <journal> <vol>(<issue>) <pages>`. The top results are listed in the Phase A table. Additional queries:
(i) Chen et al. pages: `"Chen" "Noronha" "Singal" ... "1901-1930" OR "1901-1929"`, `ideas.repec.org jfinan v59y2004i4 ...`, `jstor ... "pp. 1901"`, `"Chen, H., Noronha, G., & Singal, V. (2004)" "Journal of Finance, 59(4)"` → RePEc 1901–1930 vs one listing 1901–1929 → MINOR.
(ii) Tsang 2025 volume and pages: `"ESG Ratings and Dividend Changes" ... volume 33 ... 554` → 33, 554–577 ✓.
(iii) Context: Tsang 2024 abstract (fewer violations ✓); Sahin et al. five-year non-definitive scores ✓; Chen et al. pre-announcement run-up (two queries, not found in the abstract); S&P pre-inclusion growth (FRBNY SR 484) → IL-MEDIUM-1.
(iv) Phase D exact phrases: 5 queries, 0 matches.
(v) Crossref API and WebFetch: 403 / EGRESS_BLOCKED (logged as A0 API_UNAVAILABLE).
Scripts run (read-only; outputs only in the session scratchpad):
- placeholder resolution and paragraph diff;
- exhibit-row vs CSV diff;
- sentence-level v2.1→v3 diff;
- ghost-citation count;
- 8-gram/5-gram overlap on v3;
- full `run_all.R` re-run on a scratch copy.
