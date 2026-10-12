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
trigger: "Implications or institutional context that are thin, generic, or unevenly calibrated"

### D5: writing_and_structure
score: not_assessed

### D6: venue_fit_and_contribution
score: not_assessed

## Review Body

Seat: R3 Perspective (emerging-markets capital-markets scholar: ASEAN exchanges, index inclusion, disclosure mandates). Calibration status: NOT_CALIBRATED. Criteria binding: unavailable, so this card makes no venue-alignment claim.

Judgement on D4 against the Phase 1 plan. The core framing is interpretable to adjacent readers: the paper defines its event (first fiscal year with an LSEG ESG score), its outcome (log MTB), and its comparison group, and it states the external-validity limit plainly. That rules out the block trigger: no implication asserts a causal or welfare conclusion the design cannot carry, and the central construct is defined. The warn trigger applies because the stakeholder implications are thin and unevenly calibrated. The only stakeholder-facing sentences in Section 6.3 address listed firms and, in one sentence, "investors and exchanges"; rating providers and regulators are not addressed, and the abstract's "Practical implications" is a methodological statement for researchers. The institutional driver of the largest coverage wave (Malaysia, about 60 percent of scored firms) is left unexplained, although it determines what the selection finding means for exchanges and providers. The calibration that is present (Section 6.3 on listed firms) is careful; the calibration that is missing is the stakeholder breadth a sustainable-finance readership expects. My reading of the desk rejection (rejection_letter.md gives no reasons, so this is an inference) is that the paper currently reads as an identification note on staggered DiD with an ESG event, and that W1, W2, and W5 are the reframing levers available without new data.

Assumption audit. Explicit: providers select firms after growth (stated as an expectation in Section 2.2, with no coverage rules observed). Implicit: (a) a single provider's first score is the relevant visibility event for the marginal investor in these markets; (b) the five markets are one setting, although 84.3 percent of scored firms are Malaysian or Thai; (c) provider choice, not exchange or index policy, drives coverage timing. Assumptions (a) and (c) are the ones an ASEAN capital-markets reader would challenge first (W2, W4).

External facts checked by WebSearch (2026-10-12). First, the Bursa Malaysia and LSEG MoU of 2 November 2022 concerned FTSE Russell ESG scores being extended from FTSE Bursa Malaysia EMAS constituents (about 30 percent of PLCs) to Main and ACE Market companies (Mondo Visione, https://mondovisione.com/media-and-resources/news/bursa-malaysia-signs-sustainability-mou-with-london-stock-exchange-group-2022112/ ; The Edge Malaysia, https://theedgemalaysia.com/article/ftse-esg-scores-now-available-all-public-listed-companies). This matches the manuscript's Section 3.1 description. Second, the Monetary Authority of Singapore published a Code of Conduct for ESG Rating and Data Product Providers on 6 December 2023, built on IOSCO recommendations and adopted voluntarily, with emphasis on transparency of methodologies and data sources (MAS media release, https://www.mas.gov.sg/news/media-releases/2023/mas-publishes-code-of-conduct-for-providers-of-esg-rating-and-data-products ; Linklaters, https://sustainablefutures.linklaters.com/post/102iwo0/singapore-finalises-code-of-conduct-for-esg-rating-and-data-product-providers). I did not verify any other institutional fact; items in W4 are posed as questions for the authors.

### W1: Stakeholder implications are thin and omit rating providers and regulators
**Severity**: Major
**Evidence Anchor**: text: §6.3 "For investors and exchanges, scored firms are a selected group with a distinct valuation history."
**Confidence**: 4 (ASEAN capital-markets and ESG-market-structure expertise; reading of Sections 6.3 and abstract)

The paper's results have a direct, design-consistent meaning for four stakeholder groups, but Section 6.3 states one sentence for two of them and none for the others. Rating providers: coverage that arrives after relative growth implies that a rated universe in these markets tilts toward firms at the end of a run-up and away from smaller issuers; that is a statement about coverage composition, which the descriptive evidence (Table 1, Fig. 1) supports without any causal claim. The data-vintage problem (Section 3.2) bears on the transparency expectations that the MAS Code of Conduct (December 2023, verified above) places on providers; flagging that initiation dates and backfill status are not recoverable from the delivered files is a practical point for providers and data users. Exchanges: exchange-provider partnerships such as the Bursa and LSEG arrangement expand coverage by listing segment rather than by firm growth; the paper can say what its design predicts for such waves (less pre-coverage selection) and whether its market-level results are consistent with that, without claiming effects it cannot estimate. Regulators: the paper can say that its evidence does not support using rating coverage as a lever for issuer valuation, and that the observed coverage composition is relevant to policies on coverage gaps for smaller issuers; it should not make welfare claims. ESG investors and index builders: screens restricted to rated stocks admit firms after a valuation run-up; the paper should state that annual MTB data cannot speak to returns of a strategy that buys newly scored firms. Concrete fix: replace the single sentence with one short paragraph per stakeholder group, each sentence tied to a specific result (Table 1, Fig. 1, Table 2 interval, Section 3.2 vintage issue) and each bounded by the design (no returns, no publication dates, one provider). Rewrite the abstract's "Practical implications" to name at least providers, exchanges, and investors.

### W2: The institutional driver of the largest coverage wave is unexplained, and selection is not shown wave by wave
**Severity**: Major
**Evidence Anchor**: text: §3.1 "The data do not record why coverage expanded when it did."
**Confidence**: 3 (institutional knowledge of Bursa Malaysia; cannot verify LSEG's internal coverage rules)

Of 675 scored firms, 289 Malaysian firms entered in fiscal 2021 and 2022 (Table S2), and the market-capitalization result changes sign without Malaysia (Table S1). The interpretive core, that the provider "chooses when to cover a firm" after growth, is plausible for trickle entry of large firms but less obviously for a wave that covers a whole listing segment. If the Malaysian wave reflects a market-wide universe expansion (for example tied to index membership or to an exchange arrangement), the selection-on-growth reading and its stakeholder meaning differ between waves. The paper reports market-level average effects (Table S3) but no market-level or wave-level pre-coverage profiles, so readers cannot tell whether the run-up that defines the title is present in the Malaysian wave, in the Thai and Singaporean 2019 and 2020 wave, or only in the non-wave cohorts. Concrete fix: (i) document from public sources what is known about LSEG (Refinitiv) ESG universe expansions for these markets in 2019 to 2022, and ask whether the Malaysian wave is related to the FTSE Russell arrangement or is a separate product decision (the manuscript states they are separate products; the authors should say what, if anything, links the timing); (ii) report the event-time MTB and market-capitalization profiles separately for the Malaysian 2021 and 2022 cohorts, the Thai and Singaporean 2019 and 2020 cohorts, and the remaining cohorts, labelled exploratory, in the Supplemental Appendix; (iii) state the implications for exchanges conditional on what (ii) shows.

### W3: The practical implication is stated more universally than the design supports
**Severity**: Minor
**Evidence Anchor**: text: Abstract "Comparisons of rated and unrated firms that ignore coverage timing attribute selection into coverage to the rating."
**Confidence**: 4 (wording check against Sections 5.5 and 6.3)

Section 5.5 notes that "Part of its gap to the baseline reflects the covariates and the event window", and the evidence comes from one provider in five markets. The abstract states the implication as a general fact, and the Conclusion says such comparisons "will attribute" selection to the rating. Fix: "can attribute part of the selection into coverage to the rating", restricted to "in these markets", consistent with Section 6.3.

### W4: Domestic ESG channels in the five markets are not discussed
**Severity**: Minor
**Evidence Anchor**: absence: §2.2, §3.1 and §6.2 — expected discussion of domestic ESG index, rating, and Shariah-screening channels that compete with a foreign provider's score for investor attention; checked Sections 1 to 3, 6.2, 7, and References
**Confidence**: 3 (regional familiarity; specific programme facts not verified, posed as questions)

For domestic investors, who dominate trading in several of these markets, visibility may come from exchange-run sustainability indices, domestic ESG ratings or awards, and Shariah-compliance screens (relevant in Malaysia and Indonesia) rather than from an LSEG score. Section 6.2 mentions foreign-ownership limits only speculatively. Questions for the authors: Which exchange-sponsored ESG indices or domestic rating programmes operated in each market over 2014 to 2024, and did their inclusion dates coincide with LSEG first scores? Fix: one paragraph in Section 3.1 with verified sources, and a sentence in Section 6.2 noting that if domestic channels already conferred visibility, the recognition channel of a first LSEG score would be weaker, consistent with the null.

### W5: The sustainable-finance meaning of the finding is under-stated relative to the econometric framing
**Severity**: Minor
**Evidence Anchor**: text: §1 "We contribute to research on the financial consequences of ESG ratings with emerging-market evidence on the extensive margin of coverage"
**Confidence**: 3 (perspective on sustainable-finance readership; venue-fit judgement belongs to the EIC seat)

The contribution paragraph places the second contribution on pre-trend methodology ("pre-coverage dynamics ... can be the economic finding"). For a sustainable-finance reader, the substantive point is about the market structure of ESG information in emerging markets: who gets rated, when, and with what consequence for which firms are visible to ESG capital. Fix (no new data): lead the contribution and Section 6.3 with the coverage-composition finding as an ESG-market-structure result (selected, size-tilted, post-growth coverage in markets where most firms are unscored), and present the TWFE contrast as supporting evidence for that point rather than as the main implication.

### W6: Sensitivity analysis is hard for adjacent readers to translate into economic terms
**Severity**: Minor
**Evidence Anchor**: text: §4.4 "We assume that it changes from year to year by at most M̄ times Δ, the largest change between consecutive pre-coverage estimates"
**Confidence**: 3 (accessibility judgement; statistical validity is R1's remit)

Practitioners and policy readers will not map M̄ to an economic statement. Section 5.4 already gives the key translation (any departure above about M̄ = 0.01 admits a 5 percent increase). Fix: one plain-language sentence in Section 6.1 stating, in percent of MTB, what range of effects remains possible if post-coverage trends drift by a quarter of the largest pre-coverage change; consider moving Eqs. (9) and (10) to the Supplemental Appendix.

### W7: The score-vintage problem has an unstated implication for data users
**Severity**: Minor
**Evidence Anchor**: text: §3.2 "Both features move the true publication date later, never earlier"
**Confidence**: 3 (practice of ESG data use in research and investment)

The paper documents that first scored years can precede publication. For investors and researchers who backtest on provider histories, this implies possible look-ahead bias around coverage initiation. Fix: one hedged sentence in Section 6.3 (the authors do not observe publication dates, so they should say "may" and cite Berg et al., 2020, already in the references).

### S1: Calibrated statement of the null for issuers
**Evidence Anchor**: text: §6.3 "the confidence interval excludes increases above 4.9 percent, but smaller effects remain possible"

The issuer-facing implication is stated at the strength the design allows, with the interval and the conditioning assumption, which practitioners can use directly.

### S2: Concrete institutional anchors for two markets
**Evidence Anchor**: text: §3.1 "until Bursa Malaysia and LSEG agreed in November 2022 to score all Main and ACE Market companies"

The Malaysian and Singaporean disclosure and coverage facts are specific and, for the Bursa arrangement, match public reports (verified above). The paper also distinguishes FTSE Russell scores from the LSEG ESG score it studies.

### S3: Explicit external-validity boundary
**Evidence Anchor**: text: §6.3 "These data cannot show whether the ordering extends to other markets or providers."

The paper does not generalize beyond its provider and markets, and Limitation 6 reports the Malaysian and Thai weighting.

### S4: Market-level transparency
**Evidence Anchor**: table: Table S1 and Table S3

Leave-one-market-out and within-market estimates let regional readers see that the pooled MTB null is not driven by one market, and that the market-capitalization result is.

Recommendation (narrative, for the synthesizer): major revision from the perspective seat. D4 scores warn; the two Major items (W1, W2) need rewriting of Section 6.3 and the abstract plus one exploratory descriptive exhibit by coverage wave, using existing data.
