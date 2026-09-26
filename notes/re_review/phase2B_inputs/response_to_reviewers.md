# Response to Reviewers — revision round after the independent five-seat review

Manuscript v2: "Rated at the Peak? Firm Valuation around the First LSEG ESG Score in Five Southeast Asian Markets"
(previous title: "Rated Firms Gain Value Before, Not After, Their First ESG Score: Evidence from Five Southeast Asian
Markets"). Roadmap: `06_editorial_decision.md` (RR-1 … RR-26). Section numbers refer to the revised manuscript.
Where the data cannot support a requested analysis, we say so and treat the point as a limitation rather than
invent data.

We thank the panel. The revision changes the paper's claim: the first draft stated that scored firms gain value
"before, not after" their first score, as if the post-coverage null were established. The revision reports the
post-coverage estimates as conditional on parallel trends, adds a publication-lag dating (MTB effect −0.068,
p = 0.004), relative-magnitude bounds, a reversal-aware comparison, balanced cohorts, per-market estimates, and
restates the robust finding as an ordering of events (growth before the first scored year, a valuation peak around
it, no gain after it).

| RR | Status | What changed and where |
|---|---|---|
| RR-1 (R1-W1, R2-W1, DA-M4, EIC-W1) publication lag | Addressed | §3.2 ¶3 explains the fiscal-year lag and backfilling and the direction of the resulting bias. New row R10 dates coverage one year later (base year = first scored year): MTB −0.068 (95% CI −0.116 to −0.020; p = 0.004); §5.4 ¶1; abstract, §1, §8. The treatment is described throughout as the first fiscal year with an LSEG score. |
| RR-2 (R1-W2, DA-C1, EIC-W1) sensitivity to pre-trends | Addressed with a stated limit | §4.4 Eq. (10) relative-magnitude bound in the spirit of Rambachan and Roth (2023); Table IA5; §5.4 ¶3 (M̄ = 0.25: −0.071 to 0.073). We state that the exact HonestDiD confidence sets are not computed (§4.4, §7), because the package is not available in our R environment; the conservative bound is documented in code (`rm_bounds()`). |
| RR-3 (R1-W3, DA-C1) mean reversion | Addressed | §6.1 now gives three readings (parallel, continued run-up, reversal) and three pieces of evidence on the reversal reading: R10 decline, R8 pre-growth-matched comparison (0.028, p = 0.265), bounds. The claim is weakened to "no specification detects a valuation gain". |
| RR-4 (R1-W4, EIC-W2, DA-M1) value vs size | Addressed / data limit | §3.3 ¶1: MTB for valuation, market capitalization for size; returns and shares outstanding are not in the data (§7, fourth limitation). Title and abstract no longer say "gain value" for market capitalization; abstract says "grew faster". §5.3 notes the equity-issuance reading of the balance-sheet paths. |
| RR-5 (R1-W5) cohort composition, weights | Addressed | §4.2 Eqs. (5)–(6) state the cell-size weights exactly; new row R11 (cohorts ≤ 2021 observed through e = 3): MTB −0.008 (p = 0.806); §5.4 ¶2. |
| RR-6 (R1-W6, DA-m2, R3-W3) market waves | Addressed | §3.1 ¶2 gives market composition (Malaysia 404 of 675, Malaysia + Thailand 84.3%); §4.3 ¶3 explains why a market-cluster bootstrap with five markets is not used; Table IA3 per-market estimates; §5.5 ¶3; §6.1 ¶3. |
| RR-7 (R2-W2, R3-W2, DA-M4) other ratings | Addressed / data limit | §3.1 ¶1 documents FTSE Russell coverage of FBM EMAS constituents (~30% of Malaysian listed firms) before the November 2022 Bursa–LSEG agreement (Bernama, 2022) and states that other providers' scores are not observed; title now says "First LSEG ESG Score"; §7 third limitation. We could not construct prior-rating indicators because the data do not contain them. |
| RR-8 (R2-W3, EIC-W3) positioning | Addressed | §1 ¶3 rewritten: Tsang et al. (2024) and Tsang et al. (2025, dividends after initiation), Bikmetova and Pirinsky (2026) described as intensive-margin evidence including ownership; analyst-initiation analogues (Kelly and Ljungqvist, 2012; Demiroglu and Ryngaert, 2010). Non-U.S. papers suggested by R2 whose authors we could not verify are not cited (IRON RULE on citations). |
| RR-9 (R2-W4, R3-W1, EIC-W4, DA-M2) coverage rule | Addressed / data limit | §2.2 (index membership, disclosure mandates with Krueger et al., 2024; size bias, Dobrick et al., 2023); §3.1 SGX Rules 711A–711B (FY ending on or after 31 Dec 2017); §7 fourth limitation: index membership and report dates are not in the data. |
| RR-10 (EIC-W1, R3-W6, DA-C1, EIC-W12, DA-M5, R3-W4) claims and implications | Addressed | New title (question form), abstract, §1 ¶5 ("We do not claim that coverage has no effect"), §6.3 implications bounded by the MDE, §8. |
| RR-11 (R1-W7) TWFE description | Addressed | §4.5 Eq. (11): no covariates, all event years, firm-clustered SEs. |
| RR-12 (R1-W8) MDE vs CI wording | Addressed | §5.2: interval stated as the range under assumption (2); MDE stated as the effect detected with 80% probability; "effects of a few percent cannot be ruled out". |
| RR-13 (R1-W9, DA-M3, EIC-W5) placebo, registration | Addressed | §5.5 ¶2: the placebo restates the pre-trend and is not independent evidence; §4.5 separates pre-specified (R1–R6) and exploratory (R7–R11) checks; Table 3 note says so; the pre-analysis plan is in the replication package (IA introduction). |
| RR-14 (R1-W10) counts and attrition | Addressed | Table IA4 (firm-years and firms per outcome, share missing); §3.2 ¶2 points to it. |
| RR-15 (R1-W11) R4 description | Addressed | §4.5 ¶2 states the lower bound only. |
| RR-16 (R1-W12, EIC-W8) statements | Addressed | The submitted version (single-anonymized) carries the title page with data availability, funding, conflict of interest, ethics and author contributions; code availability in the replication package. |
| RR-17 (R1-W13) data errors, winsorization | Addressed as limitation | §7 fifth limitation. |
| RR-18 (R1-W14, EIC-W10) stars | Addressed | Table 2 shows no stars (it reports Holm-adjusted p-values); Table 3 notes that stars use unadjusted p-values. |
| RR-19 (R2-W5) author names | Addressed | Tsang, Albert, Yujie Wang, Yi Xiang, and Li Yu (2024; 2025). |
| RR-20 (R2-W6, R2-W8) comparisons | Addressed | §2.2 ¶3 and §6.2 ¶1 use Kelly and Ljungqvist and Hartzmark and Sussman as channels, not contradictions; temporary vs permanent index effects (Harris and Gurel, 1986; Chen, Noronha, and Singal, 2004) in §1 ¶2 and §5.6. |
| RR-21 (R2-W7) vintage, field, revisions | Addressed / partly author-dependent | §3.2 ¶1 (ESG score field, not the combined score); §3.2 ¶3 and §5.5 ¶4 (non-definitive recent scores, Sahin et al., 2023). The download date must be confirmed by the authors (ledger D-11). |
| RR-22 (R2-W9) demand and disagreement literature | Addressed | §2.1 ¶2 and §6.2 ¶2: Berg, Heeb, and Kölbel (2022); Christensen, Serafeim, and Sikochi (2022); Gibson Brandon, Krueger, and Schmidt (2021); Avramov et al. (2022); Dobrick et al. (2023). |
| RR-23 (R3-W5, DA-m4) recognition channel untested | Addressed | §6.2 ¶1 labels the Merton explanation as untested for lack of ownership or attention data; foreign-ownership limits are not in the data (§7). |
| RR-24 (EIC-W7, DA-m5) "first round of review" remark | Addressed | Removed; §4.4–4.5 describe exploratory analyses as added after the pre-analysis plan. |
| RR-25 (EIC-W9) companion study | Addressed | The submitted (single-anonymized) version names the companion study (§3.2 ¶1); the blinded wording is used only in the anonymized file. |
| RR-26 (EIC-W11, DA-m3) Figure 1 note, e = 4 | Addressed | Figure 1 note explains markers, bars, base year and units; §5.3 ¶2 reports e = 4 (MTB −0.077, p = 0.209). |

Points on which we disagree or cannot comply:
- R1/DA request for exact HonestDiD sets: not computed (package unavailable offline); we report a conservative
  bound and say so (§4.4, §7).
- R2 request to code prior FTSE Russell/SET ratings and index entry, R3 request to analyse foreign-ownership
  limits, EIC request to decompose market capitalization into price and shares: the data do not contain these
  variables; stated as limitations (§7) rather than approximated.

The full text grew from about 3,400 to about 7,200 words of main text at the authors' request; the authors will
shorten it to the JF:IP limit before submission (ledger D-13).
