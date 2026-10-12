contract_role: domain
## Dimension Scores

### D1: methodology_rigor
score: not_assessed

### D2: domain_accuracy
score: block
trigger: "a material misrepresentation or omission of a core sustainable-finance literature that changes the interpretation of the main result"
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

Seat: R2 Domain (sustainable finance: ESG ratings, rating coverage and disagreement, investor demand). Calibration status: NOT_CALIBRATED. Criteria binding: unavailable, so I make no claim about alignment with a named venue's criteria. Citation checks below used web search on 2026-10-12; Crossref was not reachable from this environment.

Judgement against my Phase 1 plan for D2. Most facts about the provider and the cited works are accurate. Three points check out: the FTSE Russell / Bursa Malaysia agreement of November 2022 (FTSE Russell scores previously covered only FTSE Bursa Malaysia EMAS constituents, about 30 percent of listed firms), the rewriting of Refinitiv/ASSET4 history (Berg, Fabisik, and Sautner, still an ECGI working paper), and the size bias of the score (Dobrick et al., 2023). Demiroglu and Ryngaert (2010) is described correctly: the abstract reports +4.86 percent and attributes it to the content of coverage, not to initiation as such. The block comes from how the paper positions itself in sustainable finance. Two problems change how the main null and the run-up should be read. First, the theory section misstates what the investor-preference models predict about coverage. Second, the paper omits the literatures that have already studied ESG ratings and ESG certification events as price-relevant information. In their place it uses sell-side analyst coverage and S&P 500 additions as its benchmarks. One of those benchmarks (Chen et al., 2004) is cited for the opposite of what it finds. The paper also defines its treatment as the first score from one data vendor but motivates it as "being scored at all", and that vendor is not the rating that the cited evidence links to fund holdings. Revision can fix all of this without new data, so the block is repairable, not fatal. This combination is the most likely reason a sustainable-finance editor read the paper as a staggered-DiD exercise on a generic corporate event.

Fit diagnosis from the domain side. A sustainable-finance reader wants to know what the paper teaches about ESG ratings as information or certification, investor demand for ESG, and how raters select the firms they cover. The manuscript already holds the ingredients: provider selection, size bias, backfilling, disagreement, and the Malaysian disclosure and rating push. But it frames the contribution as a methodological warning about comparing rated and unrated firms (§6.3, "The main implication is methodological"). Reframing around rater selection and certification, against the literature in W1, would make this a sustainable-finance paper on the same estimates.

### W1: The paper omits the literature on ESG ratings and ESG certification as price-relevant events and benchmarks against analyst coverage and S&P 500 additions instead
**Severity**: Major
**Evidence Anchor**: text: §1 ¶3 "For valuation, sell-side analysts offer a closer analogue"
**Confidence**: 4 (sustainable-finance literature; items below verified via search)
The closest analogues to a first ESG score are ESG rating changes and ESG index or certification events, not analyst initiations. The paper cites Berg, Heeb, and Kölbel only for fund behaviour. It does not report that paper's price result: MSCI downgrades are followed by a one-year abnormal return of about −2.37 percent, and upgrades by a weaker positive effect (SAFE WP 439; verified via search, sustainablefinancealliance.org and SAFE pages). Missing items, each verified via search:
- Shanaev and Ghimire (2022, Finance Research Letters 46, 102302) on stock returns after ESG rating changes.
- Serafeim and Yoon (2023, Review of Accounting Studies 28(3), 1500–1530) on ratings, disagreement, and price reactions to ESG news.
- Hawn, Chatterji, and Mitchell (2018, Strategic Management Journal 39(4), 949–976), who find limited price effects of DJSI additions after controls.
- Durand, Paugam, and Stolowy (2019, SMJ), who replicate the DJSI result and report more analyst following and more long-term holders after inclusion. This is directly relevant to the recognition channel.
- For Malaysia, an event study of FTSE4Good Bursa Malaysia inclusion and exclusion announcements (Mohd Sabri et al., 2022, Management and Accounting Review 21(3); verified via search, mar.uitm.edu.my).
- Pástor, Stambaugh, and Taylor (2022, "Dissecting green returns," Journal of Financial Economics 146(2), 403–424), who show that realized returns on green assets reflect unexpected shifts in ESG demand. This literature bears directly on reading a pre-coverage run-up followed by a flat path.
Fix: rewrite §2 around three strands (ratings as information or certification, ESG-demand price pressure, rater selection). State plainly where the null adds to the mostly small or mixed certification-event evidence. Keep the analyst and index analogies as secondary.

### W2: The theory section misstates what the preference channel predicts for coverage
**Severity**: Major
**Evidence Anchor**: text: §1 ¶1 "Both arguments predict that the initiation of ESG coverage raises a firm's valuation."
**Confidence**: 4 (asset-pricing models of ESG preferences)
In Pástor et al. (2021) and Pedersen et al. (2021), ESG preferences raise the prices of greener assets and lower those of browner ones relative to the market. A first score therefore reveals the firm's position, and the predicted valuation effect depends on its sign. A firm revealed as brown should lose value. Only the recognition channel (Merton, 1987) unambiguously predicts a gain. §2.1 partly concedes this ("the second more so for firms with a high initial score"), but H1 still pools both channels into a positive prediction. The heterogeneity split is also relative to the cohort median, not to the market or industry average that the models use. Given the documented size bias of this score (Dobrick et al., 2023, cited, and the original ASSET4 evidence in Drempetic, Klein, and Zwergel, 2020, Journal of Business Ethics 167(2), 333–360, verified via search), a high-score split largely separates large firms from small ones. Fix: restate the predictions by channel, and note that a null average is consistent with offsetting signs. Define high and low scores relative to industry or market peers, or residualize them on size. Present H3 as the direct test of the preference channel.

### W3: The treatment is the first score from one vendor, but the paper motivates it as being scored at all, and the cited evidence ties fund demand to a different rater
**Severity**: Major
**Evidence Anchor**: text: §1 ¶1 "whether a listed firm is scored at all can matter as much as its score"
**Confidence**: 4 (rating-market structure; Berg, Heeb, and Kölbel finding verified via search)
Among the five ratings that Berg, Heeb, and Kölbel study, only MSCI explains the holdings of U.S. ESG-mandated funds. In Malaysia, the FTSE Russell score is the one that underlies the FTSE4Good Bursa Malaysia index. Under the November 2022 agreement, FTSE Russell scores were to cover all Main and ACE Market companies (Bernama, The Edge, Mondo Visione; verified via search). The paper's largest Malaysian LSEG cohorts (2021: 96, 2022: 193; Table S2) fall in the same window. The manuscript says the two products are separate (§3.1) but does not establish whether the LSEG wave was linked to the same exchange initiative. If it was, the event bundles two ratings. The screening mechanism in §1 (an unscored firm cannot enter a rated-only portfolio) also applies to a firm's first rating from any major provider, not to its first LSEG score. Fix: describe the treatment throughout as "initiation of LSEG ESG coverage", a data-vendor score that is widely used in research. Drop or qualify the "scored at all" motivation. Document from LSEG's public methodology and press material how the coverage universe was expanded (for example, through index membership or exchange partnerships). State explicitly that, by the paper's own cited evidence, this score is not the one shown to drive fund holdings. That is both a limitation and an interpretation of the null.

### W4: Chen et al. (2004) is cited for the reversal of index-addition effects, but it finds that addition effects are permanent
**Severity**: Major
**Evidence Anchor**: text: §6.1 "as the partial reversal of index-addition effects illustrates (Chen et al., 2004; Harris & Gurel, 1986)"
**Confidence**: 5 (abstract verified via search)
Chen, Noronha, and Singal (2004) report a permanent price increase for S&P 500 additions and no permanent decline for deletions, which they attribute to investor awareness. Their evidence supports a lasting recognition gain, the opposite of the transitory-value reading that §6.1 says "deserves weight". This citation carries the paper's preferred interpretation of the flat post-coverage path, so the error bears on the result. (§5.6 cites the same paper correctly, for lasting revaluation.) Kumar et al. (2023, Journal of Banking & Finance 154; verified via search) report permanent effects for both additions and deletions, which strengthens the point. Fix: cite Harris and Gurel (1986) alone for partial reversal. Acknowledge that the awareness evidence predicts a persistent gain, which makes the post-coverage null more, not less, informative against the recognition channel under assumption (2). Revisit the claim that the third reading deserves weight.

### W5: The paper does not document disclosure-mandate timing in four of the five markets, although the cited source records it and the selection story depends on it
**Severity**: Major
**Evidence Anchor**: text: §3.1 "We do not document the timing of reporting rules in the other four markets."
**Confidence**: 3 (dates from secondary sources; regulator texts not read)
A disclosure-based scorer can only cover firms that publish ESG data, so mandate timing is a first-order candidate for the market-level waves that the paper attributes to provider selection. Secondary sources (verified via search, eco-business.com) give the following dates, which the authors should confirm against regulator texts and against Krueger et al. (2024), whom they already cite:
- Malaysia: sustainability statements required for listed companies from 2016, phased in.
- Indonesia: listed companies from 2020 (POJK 51/2017).
- Philippines: comply-or-explain guidelines for listed companies from 2019.
- Thailand: the One Report from 2022.
Without these dates, the claim that coverage follows firms' own growth cannot be separated from coverage following newly available disclosures. Selection on disclosure is itself a central sustainable-finance topic (rater selection and disclosure-driven scoring). Fix: add a short table of mandate effective dates by market, relate them to Table S2, and discuss whether first scores follow first mandated reports.

### W6: Hartzmark and Sussman (2019) is presented as evidence about rating-driven demand for firms, but it concerns fund-level ratings
**Severity**: Minor
**Evidence Anchor**: text: §5.2 "Hartzmark and Sussman (2019) show that fund flows respond to newly published sustainability ratings"
**Confidence**: 5
The study uses Morningstar sustainability ratings of mutual funds. The step from fund flows to demand for newly rated stocks needs a sentence stating that the ratings were fund-level and that any stock-level effect is indirect.

### W7: The paper does not discuss rater selection on disclosure volume or the possibility of strategic disclosure before coverage
**Severity**: Minor
**Evidence Anchor**: absence: §2.2 and §6.2 — expected discussion of disclosure-driven scoring and of firms timing sustainability disclosure; checked §1, §2.1–2.2, §5.1, §6.1–6.3, §7
**Confidence**: 3
The paper's own facts invite this reading: the score rewards size and disclosure, disagreement rises with disclosure (Christensen et al., 2022, cited), and firms are scored at a valuation peak with share issuance unobserved. Firms may begin sustainability reporting when they are doing well or are about to raise equity, which would link "rated at the peak" to the greenwashing and impression-management literature. A paragraph in §6, presented as an untested interpretation consistent with the stated data limits, would strengthen the sustainable-finance framing.

### W8: Terminology varies between score, rating, coverage, and provider
**Severity**: Minor
**Evidence Anchor**: text: Abstract "the first environmental, social, and governance (ESG) score that a rating provider assigns"
**Confidence**: 4
LSEG markets its product as ESG scores built from company-reported data. The literature distinguishes data-vendor scores from ratings agencies' opinions, and the paper moves between "rating", "score", "coverage", "rater", and "provider". Use "LSEG ESG score" and "coverage initiation" consistently, and define once how this product differs from MSCI-type ratings.

### W9: One reference could not be verified by this seat
**Severity**: Minor
**Evidence Anchor**: text: References "ESG ratings and dividend changes: Evidence from the initiation of nonfinancial agency coverage"
**Confidence**: 2 (search did not return the item; may be an indexing gap)
Tsang et al. (2025, Corporate Governance: An International Review) did not appear in title or DOI searches. Bikmetova and Pirinsky (2026) resolves through its Springer DOI, and the abstract matches the description. The citation-integrity check should confirm the Tsang et al. (2025) record before resubmission.

### Strengths

### S1: The paper is candid about provider-chosen timing and about overlapping coverage by another product of the same group
**Evidence Anchor**: text: §3.1 "some newly covered firms may already have had FTSE Russell or other scores that our data do not record"
The facts about FTSE Russell's prior coverage of EMAS constituents are accurate, as verified via search.

### S2: Data-vintage problems specific to this provider are identified and dated correctly
**Evidence Anchor**: text: §3.2 "the provider has rewritten historical scores on a large scale (Berg et al., 2020)"
The backfilling and revision literature is used to sign the timing bias. The paper argues the bias moves publication later, never earlier, so it cannot produce the pre-coverage run-up. This reasoning is sound from the domain side.

### S3: The size bias of the score is recognized and used in the design
**Evidence Anchor**: text: §4.2 "Because the provider's scores rise with firm size (Dobrick et al., 2023)"
The paper uses this to justify reporting estimates without covariates and estimates that condition on pre-coverage growth.

### S4: The rating-disagreement and analyst-coverage literature is represented accurately
**Evidence Anchor**: text: §2.2 "the first coverage of a neglected stock raises its price only when the coverage is favorable"
The descriptions of Demiroglu and Ryngaert (2010), Berg, Kölbel, and Rigobon (2022), and Gibson Brandon et al. (2021) match the sources.

### Recommendation (seat-level, advisory to the synthesizer)

Major revision. D2 is a repairable block. Fixing W1 to W5 needs no new data: rebuild §2 and §6 around the sustainable-finance literature on ratings as certification, ESG demand, and rater selection; restate the channel predictions; correct the Chen et al. (2004) citation; narrow the treatment construct; and document disclosure-mandate timing. Together these changes would also address the most likely cause of the fit-based desk rejection.
