# Response to Reviewers: revision after the independent five-seat review and the three-gate re-review

Manuscript v3: "Rated at the Peak? Firm Valuation around the First LSEG ESG Score in Five Southeast Asian Markets"
(first-round title: "Rated Firms Gain Value Before, Not After, Their First ESG Score: Evidence from Five Southeast
Asian Markets"). Roadmap: `06_editorial_decision.md` (RR-1 to RR-26). Re-review: `notes/re_review/phase2B_decision.md`
(Section 8, 37 entries). Section and paragraph numbers refer to v3. Status vocabulary: **Addressed**; **Partly
addressed: limitation stated** (the part that needs data we do not have is stated as a limitation); **Declined:
reason**. Where the data cannot support a requested analysis we say so rather than approximate it.

The revision changes the claim. The first draft stated that scored firms gain value "before, not after" their first
score, as if the post-coverage null were established. Version 3 states every post-coverage result as conditional on
parallel trends from the base year, reports how far the conclusion survives departures from that assumption
(including the breakdown value of M̄), gives the later dating (R10) its own pre-trend test and bounds, and restates
the robust finding as an ordering of events: growth before the first scored year, a valuation peak in that year,
and no detected gain afterwards.

| RR | Status | What changed and where (v3) |
|---|---|---|
| RR-1 publication lag | Addressed | §3.2 ¶3 explains the fiscal-year lag and backfilling and the direction of the bias. Row R10 dates coverage one year later; §5.4 ¶1 reports its estimate, 95% interval, *p*-value, the numbers of scored and control firms, its pre-trend test and its M̄ = 0.25 bound. The abstract and §8 no longer say that a score "arrives"; they refer to the first scored year. |
| RR-2 sensitivity to pre-trends | Addressed | §4.4 Eq. (10); Table S5; §5.4 ¶3 now reports the breakdown value (the smallest M̄ at which the robust interval admits a 5 percent increase) and states that any departure admits a positive effect because the unadjusted upper limit lies just below 5 percent. The earlier sentence claiming that the absence of a positive effect does not depend on the assumption is deleted. §1 ¶6 states the same. Exact HonestDiD sets are not computed (§4.4, §7). |
| RR-3 mean reversion | Addressed | §5.4 ¶1 gives both readings of the R10 decline, including that a reversal can hide an offsetting positive effect. §5.4 ¶2 states the limits of R8 (single growth measure, reversion among matched controls, interval admitting gains of several percent) and replaces "nets out" with "partly accounts for". The conditional wording is carried to the abstract, §1 ¶5 and ¶6, §6.1 ¶2 and §8. |
| RR-4 value vs size | Partly addressed: limitation stated | §3.3: MTB for valuation, market capitalization for size. The horizon of the pre-coverage estimates is corrected (event years −5 and −4 are four and three years before the base year; §1 ¶5, §5.3 ¶1). The abstract names both outcomes. Returns and shares outstanding are not in the data (§7, fourth limitation). |
| RR-5 cohort composition | Addressed | §4.2 Eqs. (5)–(6) give the weights; §5.4 ¶2 reports R11 with its number of cohorts and of scored and control firms; Table S6 gives scored firms by event year. |
| RR-6 market waves | Addressed | §4.3 ¶3 and §7 (sixth limitation) state that the firm-level bootstrap does not account for correlation within market waves, so intervals may be too narrow. §6.1 ¶3 no longer calls the Thai estimate precise and softens the common-shock sentence. The abstract and §8 state that scored firms are mostly Malaysian and Thai. Table S3 gives per-market estimates. |
| RR-7 other ratings | Partly addressed: limitation stated | §3.1 ¶1 documents FTSE Russell coverage of FBM EMAS constituents before November 2022 (Bernama, 2022); other providers' scores are not in the data (§7, third limitation). |
| RR-8 positioning | Partly addressed: scope stated | §1 ¶3 now says that the coverage studies we build on use U.S. firms, rather than characterizing the whole literature. At the authors' instruction, the revision cites only references verified in earlier rounds, so no non-U.S. study of coverage initiation is added; we state the scope instead of claiming the literature is U.S.-only. |
| RR-9 coverage rule | Partly addressed: limitation stated | §2.2 ¶1 labels the provider's coverage rule as an expectation and states that the rules are not in our data. §3.1 ¶1 keeps the dated Singapore rule (Singapore Exchange, 2016) and deletes the report-timing sentence, which belonged to a later amendment. §3.1 ¶1 and §7 (eighth limitation) state that we do not document the timing of disclosure rules in the other four markets. Index membership and report dates are not in the data (§7, fourth limitation). |
| RR-10 claims and implications | Addressed | Abstract, §1 ¶6 ("We do not claim that coverage has no effect"), §5.6 ¶2 ("Under assumption (2)"), §6.3 ¶2 (confidence-interval statement replaces the MDE statement; what the evidence cannot speak to is listed), §8. |
| RR-11 TWFE description | Addressed | §4.5 Eq. (11); §5.5 ¶2 adds that part of the R6 gap reflects covariates and the event window (R2). |
| RR-12 MDE vs CI | Addressed | §5.2 ¶1, §6.3 ¶2 and §7 (seventh limitation) state the confidence interval as the range compatible with the data under (2) and the MDE as the effect detected with 80% probability; the phrase "cannot rule out effects smaller than the MDE ... even under parallel trends" is deleted. |
| RR-13 placebo, registration | Addressed | §5.5 ¶2: the placebo restates the pre-trend. §4.5 ¶2: rows R1 to R6 (four checks, placebo, benchmark) were pre-specified; R7 to R11 are exploratory. §1 ¶4: the plan was committed to version control before the estimation code and is in the replication package (Supplemental Appendix introduction). |
| RR-14 counts and attrition | Addressed | §3.2 ¶2: full firm-year grid, negative book equity set to missing, attrition of scored firms by event year 3; Table S4 (by outcome) and Table S6 (by event year). |
| RR-15 R4 description | Addressed | §4.5 ¶2 (lower bound only); §4.2 notes that R4 trims controls only from below. |
| RR-16 statements | Addressed | Title page: the data availability statement now says that the licences bar redistribution of the data, firm identifiers and derived firm-level variables, that the download date was not recorded, and that code, pre-analysis plan and aggregate outputs are supplied now and will be deposited in a public repository upon acceptance. |
| RR-17 data errors | Addressed as limitation | §7, fifth limitation, adds that an erroneous base-year value enters every group-time estimate of its cohort. |
| RR-18 stars | Addressed | Table 2 has no stars; Table 3 notes that stars use unadjusted *p*-values; the Table 2 note states that intervals are not adjusted. |
| RR-19 author names | Addressed | Tsang, Albert, Yujie Wang, Yi Xiang, and Li Yu (2024; 2025). |
| RR-20 comparisons | Addressed | §5.2 ¶1 presents Hartzmark and Sussman (2019) as a fund-demand channel rather than a contradiction; §6.2 ¶1 presents sell-side coverage as the reason an effect might be expected; §6.2 ¶2 separates the lasting (Shleifer, 1986; Chen, Noronha, and Singal, 2004) and reversing (Harris and Gurel, 1986) parts of index effects. |
| RR-21 vintage, field, revisions | Partly addressed: limitation stated | §3.2 ¶1 (ESG score field; download date not recorded), §3.2 ¶3 and §5.5 ¶4 (revisable recent scores), §7 eighth limitation. |
| RR-22 demand and disagreement literature | Addressed | §2.1 ¶2 and §6.2 ¶2 (Berg, Heeb, and Kölbel, 2022; Berg, Kölbel, and Rigobon, 2022; Christensen, Serafeim, and Sikochi, 2022; Gibson Brandon, Krueger, and Schmidt, 2021; Avramov et al., 2022); Dobrick et al. (2023) in §2.2 ¶1 and §4.2. |
| RR-23 recognition channel | Partly addressed: limitation stated | §6.2 ¶1 labels the Merton explanation as untested and adds that foreign-ownership limits could mute a recognition channel through foreign ESG investors; §7 fourth limitation states that foreign holdings and ownership limits are not in the data. |
| RR-24 "first round" remark | Addressed | Removed; §4.4 and §4.5 describe exploratory analyses as added after the pre-analysis plan. |
| RR-25 companion study | Addressed | The submitted single-anonymized version names the companion study in §3.2 ¶1; the blinded wording is used only in the anonymized file. |
| RR-26 Figure 1 note, e = 4 | Addressed | Fig. 1 note: markers, bars, base year, units, control group, covariates, sample size, and why event year 4 is excluded from Eq. (6); §5.3 ¶2 reports the event-year-4 MTB and market capitalization estimates and the number of firms. |

New issues raised in the re-review:
- NEW-1 (R10 identification): §5.4 ¶1 now reports the R10 pre-trend test and M̄ = 0.25 bound and states that R10 is identified under parallel trends from the peak year; the abstract no longer reports R10, and §1 ¶5 and §8 state its limits.
- NEW-2 (interval vs *p*-value): §4.3 ¶2 attributes the Table 2 total-assets disagreement to the Holm adjustment of *p* but not of the interval; the Table 2 note says so.
- NEW-3 (overlap): §4.2 ¶2 reports the share of scored firms above the 95th percentile of never-scored firms in size and notes that the outcome regression extrapolates for them.
- NEW-4 (double negative): §1 ¶5 now reports the run-up as percentage growth.
- NEW-5 (heading levels): the review copy uses one level for sections and a lower level for subsections.

Points we decline or cannot address:
- Exact HonestDiD confidence sets are not computed (package unavailable offline); §4.4 and §7 say so, and the conservative bound and its breakdown value are reported.
- Prior FTSE Russell or other ratings, index entry, report dates, returns, shares outstanding, ownership and foreign-ownership limits are not in the data; §7 states these limits.
- Non-U.S. studies of coverage initiation are not added (RR-8, above).

Length: the full text is within the 8,500 to 10,000 words that the authors set for this draft; the main text exceeds the
JF:IP limit, and the authors will shorten it before submission.
