contract_role: eic

## Dimension Scores

### D1: methodology_rigor
score: not_assessed

### D2: domain_accuracy
score: not_assessed

### D3: argumentative_coherence
score: not_assessed

### D4: cross_disciplinary_relevance
score: not_assessed

### D5: writing_and_structure
score: warn
trigger: "a title or abstract dominated by method jargon, keywords that omit the sustainability vocabulary of the venue"

### D6: venue_fit_and_contribution
score: block
trigger: "The paper's question and contribution are framed primarily as a corporate-finance, valuation or econometric-design exercise in which the sustainability content is incidental"
block_class: repairable

## Review Body

Reviewer identity: associate editor of a sustainability-focused finance journal (Reviewer Configuration Card, EIC seat). Calibration status: `NOT_CALIBRATED`. Confidence in this card: 4 (journal-fit and framing judgement; I do not assess the econometrics).

Summary assessment. The manuscript asks whether a firm's first LSEG ESG score changes its equity valuation, using staggered first coverage of 675 non-financial firms in five ASEAN markets. The underlying question is squarely a sustainable-finance one: rating coverage is the gate through which ESG-screened capital reaches a firm, and the opening paragraph says so. The rest of the paper, however, tells a sustainability-finance editor that this is an applied-econometrics note on staggered difference-in-differences. The ESG score enters only as a date; its content (what it measures, how high it is) appears in a single heterogeneity split. The abstract's design paragraph is an estimator description, two of six keywords are method terms, the contribution paragraph ends on a point about pre-trend testing, and the Discussion states outright that the main implication is methodological. Read together, these features make the desk decision at the reference venue predictable. None of them requires new data or new references to fix: the paper already cites the ESG-demand, rating-disagreement and rating-coverage literatures and already contains the institutional facts (Bursa Malaysia's 2022 agreement to score all listed firms, Singapore's mandatory reporting) that a sustainability-finance reader would care about. On fit (D6) I therefore score a repairable block; on presentation (D5) a warn. My advisory seat recommendation is Major Revision: a reframing of title, abstract, introduction, contribution statement, keywords and implications around what rating coverage does and does not deliver for sustainable finance in emerging markets, with method detail moved behind the substantive story.

### W1: (EIC-W1) Main implication is declared methodological, not sustainability-financial
**Severity**: Major
**Evidence Anchor**: text: Section 6.3, first sentence "The main implication is methodological."
**Confidence**: 5 (direct editorial reading of the stated implication)
Location: Section 6.3. A sustainability-finance editor reads this as the authors' own statement that the paper's lesson is for econometricians. Fix: reorder Section 6.3 so it leads with the sustainable-finance implications the results already support: (a) the rated universe from which ESG funds and indices draw is a selected set of firms that had just outgrown their peers, so "ESG premium" comparisons of rated versus unrated firms in these markets partly price that selection; (b) under parallel trends, expanding coverage to a firm did not deliver a lasting valuation gain, which bears on the expectation that being rated attracts sustainability-motivated capital; (c) the methodological warning about static two-way fixed effects then follows as the reason (a) matters for empirical ESG work. Delete or rephrase "main implication is methodological".

### W2: (EIC-W2) Title signals a valuation event study and names a vendor rather than a sustainability question
**Severity**: Minor
**Evidence Anchor**: text: title "Rated at the Peak? Firm Valuation around the First LSEG ESG Score in Five Southeast Asian Markets"
**Confidence**: 4 (title screening is a core desk-editor task)
Location: title and running title. The title puts firm valuation and a data product at the front; nothing signals ESG investing, rating coverage as access to sustainable capital, or the emerging-market rating gap. Fix: retitle around the substantive question, for example a form such as "Who gets an ESG rating? Coverage selection and firm valuation in Southeast Asian markets" or "Does entering the ESG-rated universe raise firm value? Evidence from Southeast Asia", and keep the provider name in the abstract and data section.

### W3: (EIC-W3) Abstract design and findings sentences are written for econometricians
**Severity**: Major
**Evidence Anchor**: text: Abstract, Design/methodology/approach "the study estimates heterogeneity-robust difference-in-differences effects on the market-to-book (MTB) ratio, market capitalization, leverage, and total assets, following a pre-analysis plan"
**Confidence**: 4 (desk screening relies on the structured abstract)
Location: Abstract (Purpose, Design, Findings, Originality). The Purpose sentence does not say why first coverage matters for sustainable finance; the Design sentence is estimator vocabulary; the Findings lead with "Under parallel trends" and a two-way fixed-effects contrast; Originality speaks of "the extensive margin of ESG rating coverage", a phrase from the econometrics of ratings rather than from the venue's readership. Fix without new data: Purpose states that ESG ratings determine which firms ESG-screened investors can hold and that most firms in these markets are unrated; Design names the comparison in plain words (firms entering LSEG ESG coverage versus never-rated firms, before and after coverage, 2014 to 2024) and drops estimator names to the body; Findings state the selection result (rated firms had outgrown peers before rating) and the absence of a detected post-rating valuation gain with its interval; Practical implications address ESG investors, index and rating providers and exchanges (see W7).

### W4: (EIC-W4) Keywords and JEL codes lead with method terms
**Severity**: Minor
**Evidence Anchor**: text: Keywords line "Keywords: Difference-in-differences; ESG ratings; Firm valuation; Rating coverage; Southeast Asia; Staggered adoption"
**Confidence**: 4 (keyword routing at submission)
Location: front matter. Two of six keywords are design terms and none says sustainable finance, ESG investing or emerging markets. Fix: replace "Difference-in-differences" and "Staggered adoption" with venue-vocabulary terms such as "ESG investing", "Sustainable finance" or "Emerging markets", keep alphabetical order, and list Q56 and G15 ahead of G14 if the venue orders JEL codes by relevance.

### W5: (EIC-W5) Contribution statement ends on an econometric point
**Severity**: Major
**Evidence Anchor**: text: Section 1, contribution paragraph "The results also show that pre-coverage dynamics, which pre-trend tests treat as a nuisance (Roth, 2022), can be the economic finding."
**Confidence**: 4 (contribution framing is the main fit signal after the abstract)
Location: Section 1, penultimate paragraph. The contribution paragraph has two sentences: one generic ("emerging-market evidence on the extensive margin of coverage") and one addressed to the pre-trend-testing literature. Fix: rewrite as two or three contributions to sustainable finance using references already cited: (i) to the ESG-demand literature (Pástor et al., 2021; Pedersen et al., 2021; Hartzmark & Sussman, 2019), first coverage in markets where most firms are unrated provides no detected lasting valuation gain under parallel trends; (ii) to the rating-coverage literature (Tsang et al., 2024, 2025; Bikmetova & Pirinsky, 2026), which studies U.S. conduct and payout, the paper adds valuation and an emerging-market setting and documents which firms providers select; (iii) to empirical ESG-premium work, selection into coverage biases rated-versus-unrated comparisons. Move the pre-trend remark to the Discussion.

### W6: (EIC-W6) The ESG score's sustainability content is treated as a date, so readers learn little about sustainability
**Severity**: Major
**Evidence Anchor**: text: Section 1 "We treat the first fiscal year with an LSEG ESG score as a staggered event"
**Confidence**: 4 (editorial judgement of what the venue's readers take away)
Location: Sections 1, 2.1, 5.5. The only analysis that uses what the score says is the high/low initial-score split (H3), reported in the last rows of Table 3 and one paragraph of Section 5.5. For a sustainability readership this is the test that distinguishes the preference channel from mere visibility. Fix within existing results: present H3 as the sustainability test in the introduction's evidence paragraph and the abstract (with its non-significant difference and its minimum detectable value stated plainly), and state explicitly in Section 1 that the paper studies the rating infrastructure (who is rated and when) rather than firms' sustainability performance, so readers are not led to expect the latter.

### W7: (EIC-W7) Practical implications speak to empirical researchers only
**Severity**: Minor
**Evidence Anchor**: text: Abstract, Practical implications "Comparisons of rated and unrated firms that ignore coverage timing attribute selection into coverage to the rating."
**Confidence**: 4 (Emerald structured-abstract convention)
Location: Abstract and Section 6.3, second paragraph. The paper already contains material for practitioner and policy implications: the Bursa Malaysia agreement to score all Main and ACE Market companies (Section 3.1), Singapore's mandatory reporting, and the observation that scored firms are a selected group. Fix: state, with the existing caveats, what the evidence implies for exchanges promoting universal ESG scoring (coverage alone was not followed by a detected lasting valuation gain), for ESG index and fund providers (the rated universe tilts toward recently grown firms), and for listed firms seeking coverage. Keep the non-causal wording.

### W8: (EIC-W8) Method exposition dominates the main text for the target readership
**Severity**: Minor
**Evidence Anchor**: text: Section 4.4 "This construction is conservative and simpler than the confidence sets of Rambachan and Roth (2023), which we do not compute."
**Confidence**: 3 (presentation judgement; methodological adequacy is for R1)
Location: Section 4 (eleven numbered equations). For a sustainability-finance journal, the derivations of the trend removal (Eq. 9) and bias bound (Eq. 10), the MDE formula and the Wald statistic signal a methods paper. Fix: keep Eqs. (1) to (6) and (11) in the text; move Eqs. (7) to (10) and their discussion to the Supplemental Appendix with a one-sentence pointer each.

### W9: (EIC-W9) The closest sustainability-demand evidence enters only in Results
**Severity**: Minor
**Evidence Anchor**: text: Section 5.2 "Hartzmark and Sussman (2019) show that fund flows respond to newly published sustainability ratings"
**Confidence**: 4 (literature placement)
Location: Sections 1 and 2.1 versus 5.2. The study that most directly motivates a demand response to newly published sustainability ratings is first cited in Results, so the introduction's motivation rests on general asset-pricing theory (Merton, 1987). Fix: cite it in the first paragraph of Section 1 and in Section 2.1 as the empirical basis for the demand channel, so that F4-style Discussion citations are introduced earlier.

### W10: (EIC-W10) Data-sharing disclosure not visible in the reviewed text
**Severity**: Minor
**Evidence Anchor**: absence: main text and front matter — expected a statement that the data set is shared with a companion study (anonymized if needed); checked title block, Abstract, Section 3.2, Limitations, Conclusion
**Confidence**: 3 (the statement may sit on the separate title page or cover letter, which I did not receive)
Location: Section 3.2 or a footnote. Editors screen for overlapping submissions from one data set. Fix: add one sentence noting that the data set is also used in a companion study with a different question (details withheld for anonymous review), and make sure the cover letter names it.

### W11: (EIC-W11) Running title repeats the valuation-event framing
**Severity**: Minor
**Evidence Anchor**: text: front matter "Running title: Valuation around first ESG scores"
**Confidence**: 3 (minor presentation)
Location: front matter. Fix: align the running title with the reframed title (for example "ESG rating coverage and firm value").

### S1: Opening paragraph already states a sustainable-finance problem
**Evidence Anchor**: text: Section 1, first sentence "Environmental, social, and governance (ESG) scores enter portfolio screens, index rules, and fund mandates"
The first paragraph frames coverage as access to ESG-screened capital. This is the hook the rest of the paper should keep returning to.

### S2: Honest, interval-based reporting of a null with explicit limits
**Evidence Anchor**: text: Section 1 "We do not claim that coverage has no effect on valuation."
The paper avoids overclaiming, reports minimum detectable effects and sensitivity bounds, and has a separate Limitations section, which fits venues that value transparent sustainable-finance evidence.

### S3: Emerging-market setting and institutional detail are relevant to sustainability readers
**Evidence Anchor**: text: Section 3.1 "Bursa Malaysia and LSEG agreed in November 2022 to score all Main and ACE Market companies"
The ASEAN coverage waves, the Bursa agreement and Singapore's reporting rule give the paper practical content that most U.S.-based rating-coverage studies lack.

### S4: Pre-analysis plan and labelled exploratory analyses
**Evidence Anchor**: text: Section 1 "A pre-analysis plan, committed to version control before the estimation code and included in the replication package"
Separating pre-specified from exploratory rows (Table 3) is uncommon in this literature and strengthens credibility.

### S5: Exhibits are clean and readable in black and white
**Evidence Anchor**: figure: Fig. 1, four-panel event-time plot
Open and filled markers with dotted and solid bars separate pre- and post-coverage years without colour; axes carry units; captions are descriptive and notes are short. The structured Emerald-style abstract is complete.

Seat recommendation (advisory, for the synthesizer): Major Revision. The fit failure is a framing failure, repairable with the existing data, results and reference list; the block on D6 is repairable, not fatal, because the paper does pose a sustainable-finance question (whether entering the ESG-rated universe changes firm value) and its contribution is distinct from the U.S. coverage literature.
