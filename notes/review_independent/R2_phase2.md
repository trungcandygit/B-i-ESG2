# Domain Review Report (Peer Reviewer 2, seat R2)

Manuscript: "Rated Firms Gain Value Before, Not After, Their First ESG Score: Evidence from Five Southeast Asian Markets" (notes/review_independent/input/manuscript_for_review.md, with Fig1.png and FigIA1.png). Contract: reviewer/reviewer_full/v2. Phase 1 record: notes/review_independent/R2_phase1.md. Binding: criteria_binding_unavailable, so this card makes no venue-alignment claim.

contract_role: domain

## Dimension Scores

### D1: methodology_rigor
score: not_assessed

### D2: domain_accuracy
score: block
trigger: "a coverage-initiation construct whose validity is not established and whose failure would change the interpretation of the main result"
block_class: repairable

### D3: argumentative_coherence
score: not_assessed

### D4: cross_disciplinary_relevance
score: not_assessed

### D5: writing_and_structure
score: not_assessed

### D6: venue_fit_and_contribution
score: not_assessed

## Review Body

### Reviewer Identity
Sustainable-finance researcher working on ESG ratings, rating disagreement and investor demand (configuration card row R2). My remit is literature positioning, whether cited work is represented correctly, facts about rating providers and data, and whether "coverage initiation" is a valid construct. I do not assess the econometrics except where a provider fact determines what an estimate means.

### Overall Recommendation
Major Revision (seat signal only; the synthesizer decides).

### Confidence Score
4. I know the ESG-rating literature and the Refinitiv/LSEG data well. I have less first-hand knowledge of how LSEG chose which ASEAN firms to cover, and I say so below where it matters.

### Calibration Status
`NOT_CALIBRATED`

### Criterion-Bound Judgements
| Dimension / criterion | Criterion source | Judgement | Evidence anchors | Rationale | Uncertainty or scope limit | Decision bearing? |
|---|---|---|---|---|---|---|
| D2: validity of the coverage-initiation construct | Contract D2 plus Phase 1 block trigger | DOES_NOT_MEET | see W1, W2 | The event date is the first fiscal year with a score, not the date the score was published. For many firms the event is also not their first ESG rating. | The size of the publication lag differs by firm and could not be measured from the paper | yes: it changes how the post-coverage null should be read |
| D2: facts about the provider and data | Contract D2 | PARTLY_MEETS | see W4, W7, S1 | Score rewriting is described correctly. How coverage expands, which product and vintage were used, and the fact that recent scores are not final are left out or treated as unknowable. | I relied on secondary descriptions of the Refinitiv methodology because the proxy blocked the primary documents | partly |
| D2: cited works represented faithfully | Contract D2 | PARTLY_MEETS | see W3, W6, W8, S2 | Most citations are accurate. The claim about what is known on coverage initiation is wrong, and two comparisons are not like for like. | none identified | yes, for the contribution claim |
| D2: bibliographic accuracy | Contract D2 | PARTLY_MEETS | see W5 | All 16 non-data references exist. Metadata is correct for 15. One reference has two co-authors' given names wrong. | Crossref was not reachable; checked through publisher, RePEc, SSRN and Wiley listings via web search | no |
| D2: coverage of key literature | Contract D2 | PARTLY_MEETS | see W9 | Work on the investor-demand channel, analyst-initiation analogues, rating disagreement and data quality in the Refinitiv scores is missing. | none identified | no, taken alone |

These judgements are not totalled or mapped mechanically to the recommendation.

### Summary Assessment
The paper asks a good, narrow question. Does the first appearance of a firm-level ESG score change market valuation? The ASEAN setting has two advantages: coverage expanded in waves, and many firms were never rated. The empirical message is that valuation rises before the first LSEG score and is flat afterwards. That message is interesting, and the paper links it well to the warning about static two-way fixed effects. Most of the literature it cites is represented accurately. The discussion of how Refinitiv rewrote historical scores is a real strength.

The domain problems sit in the construct itself. First, the treatment date is the first fiscal year with a score in a 2025 download. LSEG scores are built from disclosures that firms publish after the fiscal year ends, so that date comes before publication by construction, not only when scores were backfilled. The "not after" half of the title therefore rests on an event window whose first year or years come before any investor could see the score. Second, "first ESG score" in fact means first coverage by one product, LSEG's own score (formerly Refinitiv). In at least Malaysia and Thailand, many firms already had ratings from other raters, including FTSE Russell, which LSEG also owns. The paper states that prior evidence on coverage initiation is only from the U.S. and only about firm conduct. That is not correct. It also treats the provider's coverage rule as unknowable, although the provider documents a rule driven by index membership and by whether enough disclosure exists. All of these can be fixed, but they change how the central claim should be worded and read.

### Strengths

#### S1: Correct and candid treatment of score rewriting
The paper correctly reports that Refinitiv/ASSET4 historical scores were rewritten on a large scale. It also correctly works out which inferences backfilling can and cannot affect. I confirmed that the source exists as cited: ECGI Finance WP 708/2020, SSRN 3722087.
**Evidence Anchor**: text: §2.1 "Berg, Fabisik, and Sautner (2020) document that the provider rewrote historical scores on a large scale."

#### S2: Accurate use of the rating-disagreement benchmark
Berg, Kölbel and Rigobon (2022) is cited with correct metadata (Review of Finance 26(6), 1315–1344). The paper uses it for what it shows: providers disagree widely.
**Evidence Anchor**: text: §1 "Berg, Kölbel, and Rigobon (2022) show that ratings from different providers disagree widely"

#### S3: Coverage waves reported transparently
The table of first scores by market and year allowed me to check every aggregate in the text. The totals are 675; 577 in 2020–2023; 108 for Thailand and Singapore in 2019–2020; 289 for Malaysia in 2021–2022. All are consistent.
**Evidence Anchor**: table: Table IA2

#### S4: A sensible domain reading of pre-trends
The paper treats selection into rating coverage as an economic fact worth documenting, not as a nuisance. This is a useful point for the literature that compares rated and unrated firms.
**Evidence Anchor**: text: §1 "It also illustrates how pre-trends in staggered designs can carry economic content rather than being a nuisance"

### Weaknesses

### W1: The event date is a fiscal year, not the date the score was published
The paper puts the gap between treatment year and publication down to backfilling alone (§2.1, §4.2). There is a more basic, structural lag. An LSEG score for fiscal year g is built from the firm's reports for year g. Those reports appear after year-end. For example, SGX-listed firms must publish their sustainability report within five months of the financial year-end, and within twelve months for a first report. A score dated g can therefore reach investors in g+1 at the earliest, and later when backfilling occurred. As a result, event year 0, and perhaps year 1, comes before publication. The headline average over event years 0–3 thus mixes years before and after publication. So the "not after" claim in the title and abstract is not tested as stated. The pre-coverage run-up still comes before publication, so the ordering finding survives, and could even be stronger. What is wrong is the interpretation of the post-coverage null (e.g., §4.1 "coverage had no effect on valuation").
**Fix**: (a) Describe the treatment as "first fiscal year scored" and state the lag from reporting to publication explicitly. (b) Recover publication timing where the data allow. Options are archived download vintages, as in Berg, Fabisik and Sautner, or any score-date or update-date field in the authors' LSEG entitlement. Where that is impossible, re-centre event time at g+1 as a sensitivity check. (c) Report the post-publication average separately, for example over e = 1 to 3 or e = 2 to 4. (d) Reword the title and abstract so that "after" refers to a date investors could actually see.
**Severity**: Major
**Evidence Anchor**: text: §2.1 and Abstract, "The treatment year is the first year for which the downloaded data contain a score" and "Rated firms gained value before, not after, their first score."
**Confidence**: 4. That the fiscal-year basis and publication timing are standard features of disclosure-based scores is well established. The exact LSEG lag for these firms is not verified.

### W2: "First ESG score" means first LSEG-product coverage, not a firm's first ESG rating
The title, abstract and conclusion speak of "rated firms" and a "first ESG score". The treatment is in fact the first appearance of one product. In these markets, other ratings existed earlier:
- FTSE Russell ESG ratings. FTSE Russell is also part of LSEG. Its ratings have underpinned the FTSE4Good Bursa Malaysia Index since December 2014. According to The Edge Malaysia, they covered FBM EMAS constituents, about 30% of Malaysian PLCs, before the November 2022 Bursa–LSEG MoU extended FTSE Russell ESG scores to all Main and ACE Market PLCs.
- The SET's Thailand Sustainability Investment list, published from 2015 and renamed SET ESG Ratings in 2023.
- The global raters: MSCI, Sustainalytics and S&P.

The paper mentions this only as a limitation that "would bias the estimates toward zero" (§4.2). That understates the problem. For a large share of treated firms, the event is an additional rating, which is the design of Bikmetova and Pirinsky (2026), not the move from unrated to rated. The Merton (1987) investor-recognition logic and the "invisible to investors" argument in §1 apply only to the truly unrated. The ambiguity also runs inside LSEG: the Malaysian wave of 2021–2022 overlaps with LSEG's own expansion of FTSE Russell scoring in Malaysia. Finally, LSEG launched a new Sustainability Ratings product in March 2026 and is moving its existing ESG scores to legacy status. Readers will need to know which "LSEG ESG score" the paper means.
**Fix**: Rename the treatment ("first LSEG D&A/Refinitiv-methodology ESG score") in the title and throughout. Document which treated firms already held FTSE Russell ratings, local exchange ratings or constituent status in an ESG index, using FTSE4Good Bursa Malaysia constituents and SET THSI / SET ESG Ratings lists, both of which are public. Then either restrict to firms first rated by any provider, or estimate the effect separately for previously rated and previously unrated firms. Replace "rated firms" with "LSEG-scored firms" unless prior ratings are ruled out.
**Severity**: Major
**Evidence Anchor**: text: §4.2 "some firms may have received scores from other providers earlier, which would bias the estimates toward zero"
**Confidence**: 4. The Malaysian and Thai rating facts are verified. How many sample firms overlap with those ratings is not known to me.

### W3: Prior evidence on coverage initiation is mis-described
The introduction states that evidence on coverage initiation is only from the U.S. and concerns firm conduct, not valuation. Three problems:
1. Bikmetova and Pirinsky (2026) study additional coverage among firms that already hold some ratings, not initiation. They also report higher institutional ownership, which is a market outcome, not conduct.
2. Tsang, Wang, Xiang and Yu (2024) is a U.S. study, correctly described. The same authors also have a second initiation study with a financial-policy outcome: Tsang, Wang, Xiang and Yu (2025), Corporate Governance: An International Review 33, 554–577, doi 10.1111/corg.12615, which studies dividend changes after initiation of non-financial rating agency coverage.
3. A literature on ESG rating-agency coverage outside the U.S. exists, with market outcomes. Examples are Chinese evidence on analysts' earnings forecasts (Emerging Markets Finance and Trade 61(11), 2025, doi 10.1080/1540496X.2025.2479637) and on investors' reactions to earnings news (China Journal of Accounting Research 21(1), 2025). There is also work on stock price crash risk (Corporate Governance: An International Review, 2026, doi 10.1111/corg.70005).

The novelty claim should be narrowed to what is actually new: the valuation effect of LSEG coverage initiation in ASEAN markets.
**Fix**: Rewrite the positioning paragraph (§1, second paragraph) and the contribution paragraph. Describe Bikmetova and Pirinsky as evidence on the intensive margin. Cite the 2025 initiation study. Acknowledge the non-U.S. coverage literature with market outcomes, and say how a valuation outcome in ASEAN adds to it.
**Severity**: Major
**Evidence Anchor**: text: §1 "Evidence on coverage initiation so far comes from U.S. firms and concerns firm conduct rather than valuation."
**Confidence**: 4. For the three items in point 3, only existence, title, venue and DOI are verified; I did not verify their authors (see Missing Key References).

### W4: The provider's coverage rule is treated as unknowable, although it is partly documented
The paper says the data do not record why coverage expanded, and §4.1 infers only that the provider adds firms once they are "large or visible enough". Refinitiv's methodology describes how coverage grows: constituents of major indices are reviewed quarterly and added, and additions depend on enough public information being available. This is from secondary summaries of the methodology document; the proxy blocked the primary file. Two consequences:
1. Coverage timing is partly driven by index membership. The index-addition channel the paper raises in §1 (Shleifer; Harris and Gurel) is then a confounder that can be measured, not just a story.
2. Coverage timing is partly driven by disclosure. Singapore's wave (2019–2020 first scores) comes after SGX made sustainability reporting mandatory for financial years ending on or after 31 December 2017. The first score may therefore mark the firm's first usable sustainability report, not a decision by the rater. Mandatory ESG disclosure has its own documented capital-market effects (Krueger, Sautner, Tang and Zhong, 2024).

The paper interprets the run-up as selection by the provider. That reading cannot be separated from selection through growing into an index, or from the firm's own disclosure event, unless these are measured.
**Fix**: Cite the provider's stated coverage policy. Code membership in the main benchmark indices (for example MSCI Emerging Markets and the FTSE ASEAN and local indices) and the market-level timing of disclosure mandates. Show whether first scores cluster at index entry or at a firm's first sustainability report. Then say which selection channel the run-up reflects. This is a domain fact-finding task and needs no new identification strategy.
**Severity**: Major
**Evidence Anchor**: text: §2.1 "The data do not record why the provider expanded coverage in a given market and year."
**Confidence**: 3. The index-constituent and disclosure-contingent coverage policy comes from secondary summaries of the Refinitiv methodology, which I could not read in full.

### W5: Two co-author names are wrong in one reference
The published article lists the authors as Albert Tsang, Yujie Wang, Yi Xiang and Li Yu (Journal of Banking & Finance 169, 107312, 2024). The manuscript gives "Yang Wang" and "Yan Xiang". The title, journal, volume, article number and DOI are correct.
**Fix**: Correct to "Tsang, Albert, Yujie Wang, Yi Xiang, and Li Yu".
**Severity**: Minor
**Evidence Anchor**: text: References "Tsang, Albert, Yang Wang, Yan Xiang, and Li Yu, 2024"
**Confidence**: 5. Author list verified through the RePEc and publisher listings.

### W6: The two "differs from" comparisons are not like for like
Kelly and Ljungqvist (2012) study the loss of sell-side coverage caused by brokerage closures, and their mechanism is information asymmetry priced through liquidity. Hartzmark and Sussman (2019) study flows into mutual funds that received Morningstar sustainability ratings, which are fund-level ratings, not firm-level ones. Neither result predicts a firm-level valuation response to a new firm ESG score. Presenting the null as "differing from" them overstates the tension. The closer analogue is the initiation of analyst coverage for neglected stocks. Demiroglu and Ryngaert (2010) find a +4.86% abnormal return at initiation, driven by positive coverage rather than coverage as such. That speaks directly to the paper's split by high versus low initial score.
**Fix**: Recast §4.1 so that these papers motivate channels, not contradictions. Add the analyst-initiation analogue and compare against it.
**Severity**: Minor
**Evidence Anchor**: text: §4.1 "The result differs from the evidence of Kelly and Ljungqvist (2012), who show that losing analyst coverage lowers prices"
**Confidence**: 4. Both cited papers' designs are verified.

### W7: Data vintage and product are unspecified, although recent scores can still change
The data citation gives no download date and does not say which score was used (the ESG score or the ESG Combined score, which includes controversies). Refinitiv scores for the five most recent fiscal years are non-definitive and can change after publication (Sahin, Bax, Paterlini and Czado, 2023). In a 2025 download whose latest year is 2024, FY2020–2024 scores are non-definitive. By Table IA2, those years hold 613 of the 675 first scores (90.8%). The initial-score split in Table 3 therefore uses mostly revisable values, and in principle so do some treatment dates.
**Fix**: Report the download date, the product and the exact score field in the data citation and in §2.1. State the non-definitive window. If a second vintage can be downloaded, report how many treatment years and high/low assignments change.
**Severity**: Minor
**Evidence Anchor**: dataset: LSEG (2025) "LSEG ESG Scores, annual, 2014–2024 [Data set], LSEG Workspace"
**Confidence**: 4. The non-definitive rule is verified via Sahin et al. (2023). The count is my own arithmetic from Table IA2.

### W8: The index-addition analogy cites a temporary price effect for an annual-horizon argument
Harris and Gurel (1986) find that the price increase on S&P 500 addition is almost fully reversed within about two weeks. Shleifer (1986) finds a more lasting effect. For the paper's argument that a first score arriving with index membership "could coincide with price effects" at annual frequency, the relevant evidence is on permanent effects and investor awareness. Chen, Noronha and Singal (2004) is that evidence, and it is also the natural bridge to Merton (1987).
**Fix**: State the temporary-versus-permanent distinction and cite Chen, Noronha and Singal (2004).
**Severity**: Minor
**Evidence Anchor**: text: §1 "additions to a major index raise prices around the announcement (Shleifer, 1986; Harris and Gurel, 1986)"
**Confidence**: 4. Both papers' findings are verified.

### W9: Evidence on the investor-demand channel and on rating disagreement is missing
The introduction's mechanism (a first score widens the investor base) and the §4.1 explanation (the score is a weak information event given disagreement) both have direct empirical counterparts that the paper does not use:
- Berg, Heeb and Kölbel find that only MSCI ESG ratings explain U.S. ESG-fund holdings, and that MSCI downgrades move holdings and returns. If demand from ESG funds follows another rater, LSEG coverage should matter little, which is consistent with the null.
- Christensen, Serafeim and Sikochi (2022) show that more disclosure increases disagreement between raters.
- Gibson Brandon, Krueger and Schmidt (2021) and Avramov, Cheng, Lioui and Tarelli (2022) link disagreement to returns and demand.
- Dobrick, Klein and Zwergel (2023) document a size bias in Refinitiv scores. This matters because the scored and never-scored groups differ mainly in size (Table 1).
**Fix**: Add these in one compact paragraph and use them to sharpen the interpretation in §4.1. If data permit, test for an ownership response, as Bikmetova and Pirinsky do.
**Severity**: Minor
**Evidence Anchor**: absence: Introduction and §4.1 literature discussion — expected evidence on whether ESG ratings move fund holdings and prices, and on rating disagreement's pricing consequences; checked Introduction, Section 4.1, References
**Confidence**: 4. All suggested works verified (see below).

### Detailed Comments

#### Literature Review
- **Coverage**: The theory is sound: Merton; Pástor, Stambaugh and Taylor; Pedersen et al. The staggered-DiD methods literature is complete. Missing are the empirical ESG-rating literature on demand and disagreement (W9), the coverage-initiation literature outside the U.S. and the 2025 initiation paper (W3), and the analogues from analyst and index coverage (W6, W8).
- **Integration quality**: The literature is used to derive competing predictions, which is good for a short-format paper.
- **Research gap argument**: It currently rests partly on an inaccurate statement (W3). A correct version still leaves a real gap: the valuation effect of LSEG initiation in ASEAN.

#### Theoretical Framework
- **Appropriateness**: Investor recognition and ESG-preference asset pricing are the right frameworks.
- **Application depth**: Merton's model implies the effect should be largest for the least visible firms. The paper uses this only informally (via Table 1). A split by prior visibility (size, foreign ownership, analyst coverage, prior ratings from other raters) would put the framework to work, and it links to W2.
- **Alternative frameworks**: The disclosure-mandate channel (W4) is a competing explanation for when coverage starts and should be named.

#### Academic Argument Quality
- **Factual accuracy**: Of 16 non-data references, all exist. Authors, year, journal, volume, pages and DOI are correct for 15. The Tsang et al. (2024) author names are wrong (W5). Berg, Fabisik and Sautner is correctly cited as ECGI WP 708/2020. I found no journal version. The substantive facts about providers are addressed in W1, W2, W4 and W7.
- **Argument logic**: The ordering claim ("before") holds up against the domain issues. The "not after" claim does not, until W1 and W2 are addressed.
- **Terminology precision**: The paper uses "rated firms", "scored firms", "coverage" and "first ESG score" interchangeably. They are not the same thing (W2). "LSEG ESG score" is now ambiguous given the March 2026 product change.

#### Contribution to the Field
- **Incremental contribution**: This is the first valuation evidence I know of on LSEG/Refinitiv coverage initiation in ASEAN. It also offers a clean demonstration that the rated-firm premium can be selection.
- **Positioning**: Needs the corrections in W3.
- **Overclaiming**: The title and the conclusion ("the evidence gives no reason to expect a first ESG score to raise the market value") go beyond a design in which the event is a single provider's first scored fiscal year.

#### Missing Key References (each verified to exist; metadata as found)
- Berg, Florian, Florian Heeb, and Julian F. Kölbel, 2024, The economic impact of ESG ratings, SAFE Working Paper No. 439 (SSRN 4088545).
- Tsang, Albert, Yujie Wang, Yi Xiang, and Li Yu, 2025, ESG ratings and dividend changes: Evidence from the initiation of nonfinancial agency coverage, *Corporate Governance: An International Review* 33, 554–577. https://doi.org/10.1111/corg.12615
- Demiroglu, Cem, and Michael D. Ryngaert, 2010, The first analyst coverage of neglected stocks, *Financial Management* 39(2), 555–584. https://doi.org/10.1111/j.1755-053X.2010.01084.x
- Chen, Honghui, Gregory Noronha, and Vijay Singal, 2004, The price response to S&P 500 index additions and deletions: Evidence of asymmetry and a new explanation, *Journal of Finance* 59(4), 1901–1929. https://doi.org/10.1111/j.1540-6261.2004.00683.x
- Christensen, Dane M., George Serafeim, and Anywhere Sikochi, 2022, Why is corporate virtue in the eye of the beholder? The case of ESG ratings, *The Accounting Review* 97(1), 147–175. https://doi.org/10.2308/TAR-2019-0506
- Gibson Brandon, Rajna, Philipp Krueger, and Peter Steffen Schmidt, 2021, ESG rating disagreement and stock returns, *Financial Analysts Journal* 77(4), 104–127. https://doi.org/10.1080/0015198X.2021.1963186
- Avramov, Doron, Si Cheng, Abraham Lioui, and Andrea Tarelli, 2022, Sustainable investing with ESG rating uncertainty, *Journal of Financial Economics* 145(2), 642–664.
- Krueger, Philipp, Zacharias Sautner, Dragon Yongjun Tang, and Rui Zhong, 2024, The effects of mandatory ESG disclosure around the world, *Journal of Accounting Research* 62(5), 1795–1847. https://doi.org/10.1111/1475-679X.12548
- Sahin, Özge, Karoline Bax, Sandra Paterlini, and Claudia Czado, 2023, The pitfalls of (non-definitive) Environmental, Social, and Governance scoring methodology, *Global Finance Journal* 56, 100780.
- Dobrick, Juris, Christian Klein, and Bernhard Zwergel, 2023, Size bias in Refinitiv ESG data, *Finance Research Letters* 55, 104014.
- Search leads [UNVERIFIED authors; title, venue and identifier verified]: "ESG Rating Agency Coverage and Analysts' Earnings Forecasts: Evidence from China", *Emerging Markets Finance and Trade* 61(11), 2025, doi 10.1080/1540496X.2025.2479637; "ESG rating agencies and investors' reactions to earnings news", *China Journal of Accounting Research* 21(1), 2025; "The Rise of Environmental, Social, and Governance Rating Agencies and Stock Price Crash Risk", *Corporate Governance: An International Review*, 2026, doi 10.1111/corg.70005.

#### Questions for Authors
1. For a firm first scored for fiscal year g, when did the score first become visible in LSEG Workspace? Do you have any vintage or date field to check this?
2. Which LSEG field is the treatment variable: the ESG score or the ESG Combined score? What is the download date?
3. How many of the 675 treated firms had an FTSE Russell ESG rating, SET THSI / SET ESG Ratings status, or FTSE4Good Bursa Malaysia constituency before their first LSEG score?
4. Do first scores cluster at entry into benchmark indices, or at the firm's first sustainability report?
5. Can you observe institutional or foreign ownership? It is the mechanism outcome the investor-recognition argument predicts.

#### Minor Issues
- The abstract says "ESG rating providers extended coverage", but only one provider is observed. Say "LSEG extended coverage".
- The keyword "Investor recognition" names a mechanism the paper does not test directly.

### Sources consulted for verification (web search, 2026-09-25)
- Bikmetova and Pirinsky (2026): https://link.springer.com/article/10.1007/s10551-025-06063-0
- Tsang et al. (2024) authors: https://ideas.repec.org/a/eee/jbfina/v169y2024ics0378426624002267.html ; https://ouci.dntb.gov.ua/en/works/7PGzQL19/
- Tsang et al. (2025): https://onlinelibrary.wiley.com/doi/10.1111/corg.12615
- Berg, Fabisik, Sautner: https://papers.ssrn.com/sol3/papers.cfm?abstract_id=3722087
- Berg, Heeb, Kölbel: https://papers.ssrn.com/sol3/papers.cfm?abstract_id=4088545
- Sahin et al. (2023): https://www.sciencedirect.com/science/article/abs/pii/S1044028322000825
- Dobrick et al. (2023): https://econpapers.repec.org/RePEc:eee:finlet:v:55:y:2023:i:pb:s1544612323003860
- LSEG March 2026 product change: https://news.ballotpedia.org/2026/03/17/london-stock-exchange-group-launches-new-esg-scores-2/ ; https://a-teaminsight.com/blog/lseg-rebuilds-esg-scoring-from-scratch/
- Bursa–LSEG MoU and FTSE Russell Malaysian coverage: https://www.crowdfundinsider.com/2022/11/198315-bursa-malaysia-london-stock-exchange-group-to-expand-esg-collaboration/ ; https://theedgemalaysia.com/article/ftse-esg-scores-now-available-all-public-listed-companies
- FTSE4Good Bursa Malaysia (Dec 2014): https://www.greenfinanceplatform.org/policies-and-regulations/ftse4good-bursa-malaysia-index
- SET THSI / SET ESG Ratings: https://www.set.or.th/en/market/news-and-alert/newsdetails?id=84240400&symbol=SET
- SGX sustainability reporting: https://rulebook.sgx.com/rulebook/practice-note-76-sustainability-reporting-guide
- Other cited and suggested works: publisher, RePEc/EconPapers and SSRN listings returned by the searches above (Baker et al.; Callaway and Sant'Anna; Goodman-Bacon; Harris and Gurel; Hartzmark and Sussman; Kelly and Ljungqvist; Merton; Pástor et al.; Pedersen et al.; Rambachan and Roth; Roth; Sant'Anna and Zhao; Shleifer; Demiroglu and Ryngaert; Chen et al.; Christensen et al.; Gibson Brandon et al.; Avramov et al.; Krueger et al.).
