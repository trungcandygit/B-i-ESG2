contract_role: perspective

## Dimension Scores

### D1: methodology_rigor
score: not_assessed

### D2: domain_accuracy
score: not_assessed

### D3: argumentative_coherence
score: not_assessed

### D4: cross_disciplinary_relevance
score: warn
trigger: "Institutional context, construct definitions or cross-market heterogeneity are thin or missing"

### D5: writing_and_structure
score: not_assessed

### D6: venue_fit_and_contribution
score: not_assessed

## Review Body

### Perspective Review Report (Peer Reviewer 3)

**Reviewer identity.** I study emerging-market capital markets: ASEAN exchanges, index inclusion and foreign investor access. I read this paper as a finance-adjacent outsider to sustainable-finance econometrics. I leave identification and inference to the methodology seat and the ESG-ratings literature to the domain seat.

**Overall recommendation (perspective seat only).** Major Revision. My D4 judgement is `warn`, not `block`: the paper's implications are not misleading, and the text limits its claims to "these markets". Still, the three Major weaknesses below need new data work (institutional variables, market-level estimates), which goes beyond rewording.

**Confidence score.** 4. I know the institutional facts about the five markets well. I did not audit the estimates.

**Calibration status.** `NOT_CALIBRATED`

Confidence reflects uncertainty and scope only. It does not change consensus counts, severity, decision bearing or arbitration.

### Criterion-Bound Judgements

| Dimension / criterion | Criterion source | Judgement | Evidence anchors | Rationale | Uncertainty or scope limit | Decision bearing? |
|---|---|---|---|---|---|---|
| D4: institutional context of the five markets | Contract D4; my Phase 1 plan (what_to_look_for) | DOES_NOT_MEET | see W1, W2 | The paper never explains what drove the coverage waves: disclosure mandates, index membership, the provider's corporate events or exchange-provider agreements. | I verified these institutional facts but did not link them to the paper's firms. | yes: this finding sets the D4 warn |
| D4: construct definitions accessible to adjacent readers | Contract D4 | PARTLY_MEETS | see S3, W2 | Event-time coefficients are explained well. "First ESG score" is used more broadly than the data support. | none identified | yes: part of the warn |
| D4: cross-market heterogeneity / external validity | Contract D4 | PARTLY_MEETS | see W3, S2 | Results are reported only as leave-one-market-out estimates. Malaysia and Thailand make up most of the treated sample. | none identified | yes: part of the warn |
| D4: stakeholder implications bounded by evidence | Contract D4 | PARTLY_MEETS | see W4, S4 | The implications do not contradict the evidence, but they are thin and do not engage with the policies exchanges actually pursue. | none identified | no on its own |
| D4: interdisciplinary claims substantiated | Contract D4 | PARTLY_MEETS | see W5 | The investor-recognition channel is invoked but not measured in a setting with foreign-ownership limits. | none identified | no on its own |

These judgements are not totalled, weighted or mapped mechanically to the recommendation.

### Summary Assessment

The paper asks a question that matters to ASEAN markets: does being brought into a global ESG data product change how the market values a listed firm? The answer, a flat post-coverage path after a pre-coverage run-up, is stated clearly and cautiously. From an emerging-markets perspective, the main gap is institutional. The coverage waves are the paper's source of variation, yet the manuscript treats them as a black box ("The data do not record why..."). The waves are strongly market-specific: 404 of 675 treated firms are Malaysian, and most of those were first scored in 2021-2023. The period also saw verifiable institutional changes in these markets and at the provider: LSEG completed its acquisition of Refinitiv on 29 January 2021; Bursa Malaysia and LSEG signed an MoU on 2 November 2022 to extend FTSE Russell ESG scores from FBM EMAS constituents to all Main and ACE Market companies; and sustainability-disclosure mandates were phased in at SGX, SEC Thailand, OJK and SEC Philippines. These facts do not overturn the headline result. They do support a different reading of the pre-coverage run-up: firms may cross index-eligibility or disclosure thresholds, rather than being picked by the provider after growing. They also show that in Malaysia the "first ESG score" is often not the first. Practitioner implications (for exchanges promoting universal ESG scoring, for regulators and for foreign investors facing ownership limits) are either missing or held to one sentence each. The results cover mostly Malaysia and Thailand, and the "five Southeast Asian markets" framing claims more breadth than that.

### S1: Under-studied setting with a real never-rated comparison pool

The paper chooses markets where most listed firms are unrated, so the comparison group comes from the same exchanges and years. For readers in emerging-markets finance this is a real advantage over U.S. coverage studies, where nearly every investable firm is already rated.
**Evidence Anchor**: text: §1 "most listed firms in these markets remain unrated"

### S2: Explicit external-validity boundary

The authors decline to generalise to other emerging markets or other providers. Many ESG-valuation papers do not show that restraint.
**Evidence Anchor**: text: §4.1 "Whether the same ordering holds in other emerging markets, or for other rating providers, is a hypothesis that our data cannot test."

### S3: Accessible explanation of the event-time coefficients

The text translates the sign of the pre-coverage coefficients into plain language. Practitioner readers (exchange staff, index analysts) usually misread this point.
**Evidence Anchor**: text: §3.2 "A negative pre-coverage coefficient means that the scored firms' outcome was lower, relative to its base-year level"

### S4: A practical warning about naive rated-versus-unrated comparisons

Placing the static TWFE estimate next to the robust estimator gives investors and data vendors a concrete, transferable lesson: marketing claims of a "rated-firm premium" can simply reflect selection.
**Evidence Anchor**: table: Table 3, row R6 (static two-way fixed effects) versus Baseline row

### W1: The institutional drivers of the coverage waves are left as a black box, although they are observable and bear on how the run-up should be read

**What is wrong.** The whole design rests on market-specific coverage waves (Table IA2), yet the paper says the reasons are unknown. It then reads the run-up as a provider that "adds firms once they become large or visible enough to matter to its clients" (§4.1). Several institutional mechanisms that can be verified and that differ by market could produce the same ordering, and each has a different economic meaning:
(a) *Index-eligibility thresholds.* Provider coverage has historically been tied to index constituents and expanded systematically by size and location. A firm that enters a benchmark index (FBM EMAS, SET100, an MSCI or FTSE global EM index) has, almost by construction, just risen in market value. The run-up is then mechanical threshold-crossing, not a sign that the provider "follows value". Index inclusion also brings its own price effects, which the paper cites (Shleifer, 1986; Harris and Gurel, 1986) but never measures.
(b) *Availability of disclosure.* The provider's methodology makes additions conditional on enough public information. Sustainability reporting mandates arrived at different times: SGX Listing Rules 711A/711B for financial years ending on or after 31 December 2017; Philippine SEC Memorandum Circular No. 4 (2019), applying to the 2019 annual reports filed in 2020; OJK Regulation 51/POJK.03/2017, with large issuers' first report due April 2021 and extended to April 2022; and Thailand's Form 56-1 One Report for fiscal years ending 31 December 2021. Coverage may follow a firm's first standalone sustainability report, and larger, growing firms produce those reports first.
(c) *Provider-side corporate events.* The Refinitiv-to-LSEG ownership change completed on 29 January 2021, just before the 2021-2022 wave. A supply-side expansion of this kind is closer to exogenous than firm-level selection, and it would change how the design should be viewed.
**Why it matters for D4.** Readers in market microstructure, index policy and disclosure regulation will want to know which of these mechanisms applies. Only (c) comes close to the "provider picks winners" story, and (a) and (b) have direct policy content.
**Concrete fix.** (i) Add a one-paragraph institutional setting, or a compact exhibit, listing by market: the disclosure mandate and its effective date, the main local and global index memberships, and any exchange-provider ESG arrangement. (ii) Collect, for treated and control firms, the year of index entry (at least FBM EMAS, SET100 and MSCI/FTSE global EM standard indices) and the year of the first sustainability report. Report what share of first scores fall within ±1 year of index entry or first report. (iii) Re-estimate the pre-trends separately for firms whose first score coincides with index entry. If the run-up is concentrated there, reframe the finding as index-threshold selection. I cannot verify the provider's exact coverage-selection rule for these markets and years, so the authors should cite the methodology version that applied.
**Severity**: Major
**Evidence Anchor**: text: §2.1 "The data do not record why the provider expanded coverage in a given market and year."
**Confidence**: 4 — institutional facts verified (SGX Rule 711A, SEC Thailand 56-1 One Report, OJK 51/2017, SEC PH MC 4/2019, LSEG–Refinitiv completion date); their link to the specific cohorts is my hypothesis, not a verified fact

### W2: "First ESG score" is broader than the treatment, and the gap is largest in Malaysia, where most treated firms sit

**What is wrong.** The treatment is the first year with an LSEG (ex-Refinitiv/ASSET4) ESG score. The title and much of the text say "first ESG score". In Malaysia, FTSE Russell, LSEG's index business, already provided ESG scores to FBM EMAS constituents, about 30 percent of Malaysian listed companies, before the Bursa Malaysia–LSEG MoU of 2 November 2022 extended coverage to all Main and ACE Market companies. The LSEG-scored Malaysian firms are large (Table 1 medians), so many of them are likely FBM EMAS constituents that already had a FTSE Russell ESG score. For them, the LSEG score is a second score from the same corporate group, not a first rating. Limitation 3 notes that other providers may have scored firms earlier. The Malaysian case goes further than that caveat, because 60 percent of the treated sample is Malaysian and the earlier coverage is institutionally documented, not hypothetical.
**Why it matters for D4.** Readers from ASEAN practice will know that Malaysian listed companies were already ESG-rated through Bursa's FTSE4Good programme. They will read the title's "first" as a factual error about the setting. The Merton-style argument that a first score widens the investor base (§1) is weakest precisely where the sample is concentrated.
**Concrete fix.** (i) Call the treatment "first LSEG ESG score" in the title, abstract and §1. (ii) Add a paragraph on FTSE Russell coverage of FBM EMAS in Malaysia. (iii) Using FBM EMAS membership in year *g* − 1 as a proxy for prior FTSE Russell coverage, report the estimates separately for Malaysian firms with and without prior FTSE coverage. If the null holds in both groups, the paper gains a sharper result: neither a first nor a second score moves valuation.
**Severity**: Major
**Evidence Anchor**: text: §2.1 "A firm's treatment year is the first fiscal year with a non-missing LSEG ESG score."
**Confidence**: 4 — MoU date, its scope and the ~30% FBM EMAS pre-MoU coverage verified from exchange/press reporting; overlap between FBM EMAS and the paper's treated firms is inferred, not verified

### W3: "Five Southeast Asian markets" is in substance Malaysia plus Thailand, with one developed market pooled into four emerging ones

**What is wrong.** Summing Table IA2 by market: Malaysia 404, Thailand 165, Singapore 50, Indonesia 42 and the Philippines 14 of the 675 treated firms. Malaysia and Thailand together are 84 percent of the treated sample. Heterogeneity is reported only as leave-one-market-out estimates (Table IA1). Dropping the 14 Philippine firms cannot be informative, and there are no market-specific estimates. Singapore is classified as a Developed Market by MSCI, while the other four are Emerging Markets. Its investor base, foreign access and index exposure differ in kind, yet the paper pools it without comment. Limitation 5 notes that Malaysia is weighted heavily, but the title, abstract and conclusion still speak of "five Southeast Asian markets".
**Why it matters for D4.** An EM reader or an ASEAN regulator will take the result as evidence about Indonesia or the Philippines, where the paper has almost no treated firms. This is an external-validity overstatement, not an error in the estimates.
**Concrete fix.** (i) Report market-specific ATTs for Malaysia and Thailand and one pooled estimate for the other three, with MDEs. (ii) Move the market-by-cohort composition (Table IA2 or a one-line summary of shares) into the main text. (iii) Rephrase the abstract and conclusion, for example "concentrated in Malaysia and Thailand". (iv) State Singapore's developed-market status and show the result without Singapore in the main text, not only in the appendix. If the Malaysian estimate drives everything, say so plainly. That is still a useful finding for Bursa Malaysia's policy debate (W4).
**Severity**: Major
**Evidence Anchor**: table: Table IA2, market columns (Malaysia 404 of 675 treated firms; Philippines 14)
**Confidence**: 5 — counts computed directly from the paper's own exhibit; MSCI classification verified

### W4: Stakeholder implications are thin and miss the policy debate the result speaks to most directly

**What is wrong.** The implications (§4.1) are one sentence for listed firms and one for investors and exchanges. Firms in these markets do not choose LSEG coverage; the decisions they actually control are disclosure and index-eligibility (free float, liquidity). Exchanges have acted to extend ESG scoring to all their listed companies, for example the Bursa Malaysia–LSEG MoU. The paper's evidence bears directly on what such a programme should be expected to deliver, but it is not discussed. The treated firms are large (median market capitalization USD 203 million against 42 million for controls), so universal-coverage programmes aimed at small caps sit outside the paper's support. Nor can the paper rule out effects below the MDE of about 7 percent, which may be economically relevant for small firms.
**Concrete fix.** Add a short "Implications" paragraph that (i) addresses exchanges and regulators running universal-scoring or disclosure programmes and says what the evidence implies and what it cannot speak to (small caps, effects under 7 percent, non-valuation outcomes such as foreign ownership or cost of debt); (ii) tells listed firms that the lever is disclosure quality and index eligibility, not coverage as such; (iii) tells investors and index providers that rated-versus-unrated screens in these markets carry a size and momentum tilt. JF:IP is a short format, so this can be four or five sentences.
**Severity**: Minor
**Evidence Anchor**: text: §4.1 "For listed firms, the evidence gives no reason to expect a first ESG score to raise the market value of their shares."
**Confidence**: 4 — practitioner knowledge of ASEAN exchange ESG programmes; MoU verified

### W5: The investor-recognition channel is asserted rather than examined in markets with foreign-ownership limits

**What is wrong.** The paper motivates the question with Merton (1987) and dismisses the channel by saying rated firms were "probably known to many investors". In ASEAN markets, the marginal ESG-screening investor is usually a foreign institution. Foreign access is constrained: for most SET-listed companies the foreign ownership limit is 49 percent, and foreigners buy beyond it through non-voting NVDRs. Whether a first score widens the investor base is therefore an empirical question about foreign and institutional ownership, and the paper does not observe it.
**Concrete fix.** Where available, add foreign-ownership share (or NVDR holdings for Thailand) as a descriptive outcome around coverage, or at least state that the channel is untested and that foreign-ownership limits may mute it. Reword "probably known to many investors" as a hypothesis.
**Severity**: Minor
**Evidence Anchor**: text: §4.1 "so they were probably known to many investors before coverage began"
**Confidence**: 3 — Thai FOL/NVDR mechanism verified; availability of ownership data for all five markets not verified

### W6: The title states a general law from a sample-specific result

**What is wrong.** "Rated Firms Gain Value..." is present tense, generic and unqualified. The body limits the finding to LSEG coverage in these markets. It also concerns market capitalization more than MTB: the MTB pre-trend joint test gives p = 0.074, against p = 0.022 for market capitalization (Table 2).
**Concrete fix.** Scope the title, for example "Firms Gain Market Value Before, Not After, Their First LSEG ESG Score: Evidence from Southeast Asia". This fixes both the scope and the construct in W2.
**Severity**: Minor
**Evidence Anchor**: text: Title "Rated Firms Gain Value Before, Not After, Their First ESG Score"
**Confidence**: 4 — reading of title against §4.3 and Table 2

### Detailed Comments

**Assumption audit.** *Explicit:* coverage is permanent once granted (17 exceptions), which is reasonable. *Implicit:* (1) the provider's selection is firm-level and performance-driven, when institutional rules (index membership, disclosure availability, exchange agreements) may be the operative selectors (W1); (2) an LSEG score is the firm's first ESG signal to the market (W2); (3) the five markets form one comparable institutional block (W3). *Paradigmatic:* valuation is the only outcome that counts. In EM practice the more likely margins are foreign ownership, index weights and liquidity, which the paper leaves aside (W5).

**Cross-disciplinary connections.** The literature on index inclusion and investor recognition in emerging markets, and the literature on foreign-ownership limits and market access, offer ready tools. The event-study around index reconstitution dates in particular would let the authors separate an index effect from a rating effect.

**Practical impact.** The finding could matter to exchanges and regulators in the region. That depends on W1 and W4: once the institutional drivers are identified, the paper can speak to policy, and without them it speaks only to econometricians.

**Broader implications.** Universal-scoring programmes could widen the gap between large and small listed firms if investors screen on score levels. The paper's split by initial score (Table 3) begins to address this and could be linked to the policy debate. Equity and access for small caps is the natural next question.

### Cross-Disciplinary Reading Recommendations

I verified the following institutional sources during this review:
- SGX Mainboard Listing Rules 711A and 711B: sustainability reporting, "comply or explain", for financial years ending on or after 31 December 2017.
- Securities and Exchange Commission, Thailand: Form 56-1 One Report, effective for fiscal years ending 31 December 2021, with ESG content.
- OJK Regulation No. 51/POJK.03/2017 on sustainable finance, with sustainability reports phased in by issuer size.
- SEC Philippines Memorandum Circular No. 4, Series of 2019: Sustainability Reporting Guidelines for Publicly-Listed Companies.
- Bursa Malaysia–LSEG Memorandum of Understanding (2 November 2022): FTSE Russell ESG scores extended from FBM EMAS constituents to all Main and ACE Market companies.
- LSEG announcement of completion of the Refinitiv acquisition (29 January 2021).
- LSEG/Refinitiv "Environmental, Social and Governance Scores" methodology document, for the coverage-universe rules; the authors should cite the version in force for their download.

Search leads, not verified citations:
- [UNVERIFIED] Studies of price and ownership effects of MSCI/FTSE emerging-market index inclusion in ASEAN markets.
- [UNVERIFIED] Studies on foreign-ownership limits and NVDR trading in Thailand.

### Questions for Authors

1. What share of first LSEG scores fall within a year of the firm's entry into FBM EMAS, SET100 or a global EM index, or of its first standalone sustainability report?
2. How many of the 404 Malaysian treated firms were FBM EMAS constituents, and so FTSE Russell-scored, before their first LSEG score?
3. Do the Malaysia-only and Thailand-only estimates both show the flat post-coverage path?
4. Is the 2021-2022 wave visible in other markets covered by the same provider? That would point to a provider-side expansion after the change of ownership rather than firm-level selection.

### Minor Issues

- §1 says LSEG extended coverage "in large, market-specific waves". Please name the waves by market in the main text (Malaysia 2021-2023; Thailand and Singapore 2019-2020).
- The abstract's "hundreds of listed firms ... after 2018" is accurate for LSEG only. Say "one major provider" to avoid implying industry-wide coverage.
