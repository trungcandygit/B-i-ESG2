# Peer Review Report: Journal-Fit Reviewer (EIC seat)

- **Title**: Rated Firms Gain Value Before, Not After, Their First ESG Score: Evidence from Five Southeast Asian Markets
- **Target venue / article type**: Journal of Finance: Insights and Perspectives, Insights
- **Contract**: reviewer/reviewer_full/v2 (Phase 2, paper-visible; Phase 1 commitment in EIC_phase1.md)
- **Review date**: 2026-09-25
- **Reviewer role**: Journal-Fit Reviewer
- **Reviewer identity**: Associate editor of a short-format finance journal who wants one clear finding, clean identification and exhibits that stand alone, and who is strict on length and on over-claiming.
- **Review focus**: Whether the paper's single message is accurate and new enough for a general finance readership in the Insights format, and whether the manuscript meets JF:IP presentation and submission conventions. I do not re-score the econometrics (that belongs to R1). I raise design points only where they change what the title, abstract and conclusion can claim.

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
trigger: "missing keywords or title-page statements"

### D6: venue_fit_and_contribution
score: block
trigger: "The contribution is materially overstated relative to what the evidence supports"
block_class: repairable

## Review Body

### Overall Recommendation

**Recommendation signal: Major Revision** (major).

Confidence: 4 (I am a finance editor. ESG-rating institutional detail and the staggered-DiD technicalities belong to R2 and R1). Calibration Status: `NOT_CALIBRATED`.

### Dimension Judgement Table

| Dimension | Eligible | Judgement | Phase 1 trigger bound | Main anchors | Decision bearing? |
|---|---|---|---|---|---|
| D1 methodology_rigor | no | not_assessed | none | none | no, owned by the methodology seat |
| D2 domain_accuracy | no | not_assessed | none | none | no, owned by the domain seat |
| D3 argumentative_coherence | no | not_assessed | none | none | no, owned by the DA and methodology seats |
| D4 cross_disciplinary_relevance | no | not_assessed | none | none | no, owned by the perspective seat |
| D5 writing_and_structure | yes | warn | warn: "missing keywords or title-page statements" (also "exhibits lacking complete notes or readable labels") | W7 to W11 | yes, minor-revision level. No hard length or exhibit rule is broken |
| D6 venue_fit_and_contribution | yes | block (repairable) | block: "The contribution is materially overstated relative to what the evidence supports" | W1 to W4, W12 | yes. Under F2 a mandatory block means major revision |

### Criterion-Bound Judgements

| Dimension / criterion | Criterion source | Judgement | Evidence anchors | Rationale | Uncertainty or scope limit | Decision bearing? |
|---|---|---|---|---|---|---|
| Length: at most 7,000 words minus 200 per exhibit | JF:IP Author Guidelines, Insights length restrictions | MEETS | text: §1 to §4.3 (my count is about 3,380 words including headings), 4 main exhibits | The limit with 4 exhibits is 6,200 words, and the paper is well under it | Counted on markdown, not on a word-count PDF | no |
| Exhibits: at most 5, one page each | JF:IP Author Guidelines | MEETS | table: Tables 1 to 3 and Fig. 1 | 4 exhibits, and each should fit on a page | Page fit not checked on a typeset PDF | no |
| Abstract of 100 words or fewer, up to 7 keywords | JF:IP Author Guidelines, Main Document | MEETS | text: Abstract (98 words), 6 keywords | Compliant, with little room to spare | none identified | no |
| Title page items and statements | JF:IP Author Guidelines, Title Page | DOES_NOT_MEET | absence (W8) | No authors, affiliations, data availability, COI or funding statements | These may have been stripped for the panel copy | yes (minor) |
| AI disclosure in Methods | JF:IP Author Guidelines, AI section | MEETS | text: §2.4 | The disclosure is detailed and placed in Methods | none identified | no |
| Data citation in references | JF:IP Author Guidelines, Data citation | MEETS | text: References "LSEG, 2025" and "S&P Global Market Intelligence, 2025" | Both data sources are cited | none identified | no |
| Self-contained without the supplement | JF:IP Author Guidelines, Main Document | MEETS | text: §2.1 | The coverage waves are described in the text. IA tables only support the text | none identified | no |
| One clear, accurately stated finding | Card #1 identity and D6 | DOES_NOT_MEET | W1, W2 | The title and abstract state as settled a timing claim that the paper's own §4.1 to §4.2 treat as conditional | Depends partly on R1's view of the design | yes |
| Originality and positioning | D6 | PARTLY_MEETS | W3, W4 | The setting and the honest null are useful. The positioning leaves out close work and the selection mechanism is not examined | My literature check was a targeted search, not a systematic one | yes |

### Summary Assessment

The paper uses the staggered first appearance of LSEG ESG scores for 675 non-financial firms in five ASEAN markets, compared against 2,613 never-rated firms, and a Callaway and Sant'Anna estimator to ask whether a first ESG score changes equity valuation. The pre-specified primary estimate is a precise null for log MTB (0.002, CI −0.046 to 0.048). Event-time estimates show that rated firms' market capitalization, and less clearly their MTB, rose faster than controls' in the years before coverage. A naive static TWFE regression would have credited that rise to the rating.

The paper is short, disciplined and open about its limitations. It reports its failed placebo, its MDE and its unstable secondary outcomes, and all of that is a good fit for the Insights format. The problem is the headline. The title, abstract and conclusion state "before, not after" as an established ordering. But the "not after" half depends on a counterfactual that the paper's own pre-trend tests reject (§4.2). The "gain value before" half rests mainly on log market capitalization, which is not shareholder value, while the MTB pre-trend is not significant at 5% (Table 2). The contribution statement also leaves out closely related work that uses Refinitiv coverage expansion as a shock, and it does not examine the obvious selection mechanism (index membership or the provider's universe policy). Examining that mechanism is what would turn "coverage follows growth" from a diagnostic into a finding. All of this is repairable within the word budget: about 2,800 words are unused. It needs reframing plus a small amount of new analysis (returns-based outcomes, sensitivity bounds, an index-entry test). Recommendation: major revision.

### Strengths

#### S1: The primary null is informative, not just insignificant
The paper reports the CI, the bootstrap SE and the minimum detectable effect for the primary outcome, so readers can see which effect sizes are ruled out. Few ESG-valuation papers do this.
- **Evidence Anchor**: table: Table 2, row ln(MTB) (ATT 0.002, CI [−0.046, 0.048], MDE 0.067)

#### S2: Candid reporting of an unfavourable placebo and a useful estimator contrast
The failed placebo (R5) and the static-TWFE row (R6) are reported rather than buried. Together they show concretely how a standard design would produce a spurious "ratings raise value" result. This is a clear methodological lesson for the ESG literature.
- **Evidence Anchor**: table: Table 3, rows R5 and R6

#### S3: A good setting with a large never-rated comparison pool
Most listed firms in these markets remain unrated, and coverage arrived in market-specific waves. That gives a large same-exchange control group that U.S. studies lack.
- **Evidence Anchor**: text: §2.1 "675 firms first scored between 2015 and 2024 and 2,613 firms never scored"

#### S4: Honest and specific limitations
The limitations section states the identification threat, backfilling, single-provider coverage, data errors, Malaysian weighting and power, each with its consequence.
- **Evidence Anchor**: text: §4.2 "The study has six limitations."

#### S5: Compliance with the Insights format and disclosure rules
The paper has 4 exhibits, a main text well under the 6,200-word allowance and a 98-word abstract. The AI disclosure sits in Methods as JF:IP requires, and both data sets are cited in the reference list.
- **Evidence Anchor**: text: §2.4 "The authors used Claude (Anthropic), accessed through Claude Code in September 2026"

### Weaknesses

### W1: The headline states a conditional "not after" result as settled fact
**Severity**: Major
**Evidence Anchor**: text: Title "Rated Firms Gain Value Before, Not After, Their First ESG Score"
**Confidence**: 4 (editorial reading of claim against the paper's own caveats; design detail deferred to R1)

**What is wrong**: The post-coverage null is identified only under conditional parallel trends from g−1. The paper itself says of this assumption that "the pre-coverage estimates call into question" it (§4.2). §4.1 considers two counterfactuals: parallel paths, which give a null, and a continued linear run-up, which gives a negative effect. It concludes that neither supports a gain. It does not consider the natural third case for a provider that selects on past performance. If firms are added after a transitory run-up, their outcomes would have mean-reverted without coverage, and then a flat post-coverage path implies a positive effect. R8 (conditioning on pre-growth) points slightly positive (0.028). No Rambachan-Roth bounds are reported. So the "not after" half of the title is weaker than the title, the abstract's last sentence and §4.3 imply. For a short-format paper whose value is one accurate message, this is the central editorial problem.

**Fix**: (a) Retitle around what is robust, which is the ordering and selection. For example: "ESG Rating Coverage Follows Firm Growth: Evidence from Five Southeast Asian Markets" (the configuration card lists a similar earlier title). (b) Report Rambachan-Roth relative-magnitude or smoothness bounds for log MTB. Give the breakdown value at which the post-coverage CI first admits a 5% or 10% gain, and report it in Table 2 or Table 3. (c) Rewrite the abstract's last sentence and §4.3 so that "no valuation gain after coverage" is stated as conditional on the stated counterfactual. (d) Add mean reversion to the §4.1 list of counterfactuals.

### W2: "Gain value" is measured by market capitalization, not by shareholder returns
**Severity**: Major
**Evidence Anchor**: text: Abstract "Rated firms' market capitalization grew 14.1 percent faster than that of comparable firms over the five years before their first score."
**Confidence**: 4 (standard finance measurement convention)

**What is wrong**: For a finance readership, "firms gain value" means their shareholders earned (abnormal) returns. Log market capitalization changes combine returns with share issuance, free-float and listing changes, and USD translation. The paper's own secondary results show asset growth around coverage (Table 2, ln(total assets) 0.044). The valuation measure that does not scale with size, MTB, has a pre-trend that is not significant at 5% (Table 2, pre-trend p = 0.074). So the "before" half of the title rests on the measure least suited to the word "value". The paper never uses stock returns, even though they are the natural outcome in a finance journal and would also allow tighter timing within a year.

**Fix**: Add cumulative (size- and country-adjusted) buy-and-hold returns for event years −5 to +3 as an outcome, estimated in the same framework. Split the market-cap run-up into a price component and a shares-outstanding component. If returns show the run-up, the "before" claim becomes much stronger. If they do not, the title must change. This needs one extra panel in Fig. 1 or one row block in Table 2, so it fits within the exhibit cap.

### W3: The contribution is positioned against an incomplete literature
**Severity**: Major
**Evidence Anchor**: text: §1 "Evidence on coverage initiation so far comes from U.S. firms and concerns firm conduct rather than valuation."
**Confidence**: 3 (targeted search, not a systematic review)

**What is wrong**: This sentence is the paper's novelty claim, and it is too strong. Work on ESG-coverage initiation already studies market outcomes. Hu (2026, *Corporate Governance: An International Review* 34(1), 71–95) uses the 2017 expansion of Refinitiv ASSET4 coverage, the same provider lineage as this paper, as a shock and finds lower stock price crash risk. A 2025 article in the *Journal of Contemporary Accounting and Economics* (21(1), "ESG rating agencies and investors' reactions to earnings news") links coverage initiation to stronger earnings response coefficients. Two older strands are also missing:
- The analyst-coverage literature has long documented that coverage selects on past performance (McNichols and O'Brien, 1997), and that first coverage of neglected stocks carries price effects (Demiroglu and Ryngaert, 2010). This is the direct precedent for "coverage follows growth".
- The size bias of ESG scores (Drempetic, Klein and Zwergel, 2020, *Journal of Business Ethics*) is also absent.

Without these, a reader cannot judge what is new beyond the region.

**Fix**: Rewrite the contribution paragraph (§1, paragraph 5) around three specific increments, if they hold after the new citations: (i) valuation rather than crash risk, ERCs or conduct; (ii) evidence that a provider's coverage expansion is itself selected on prior growth, which challenges designs that treat such expansions as exogenous shocks (Hu, 2026 is the direct foil); (iii) an emerging-market setting with a large never-rated pool. Point (ii) is the most interesting to a general finance readership and should lead.

### W4: The selection mechanism behind the "more robust result" is not examined
**Severity**: Major
**Evidence Anchor**: text: §2.1 "The data do not record why the provider expanded coverage in a given market and year."
**Confidence**: 4 (editorial judgement about what makes the finding a contribution)

**What is wrong**: §4.1 calls the ordering of events "the more robust result", which makes it the paper's substantive contribution. But the paper stops at describing it. The introduction itself proposes the likeliest mechanism, "a first ESG score that arrives with index membership" (§1). One market's 2021–2022 wave (289 of 675 firms, Table IA2) dominates the sample and drives the market-cap estimate (R9). If coverage expansions follow index-constituent lists, then "coverage follows value" is really "index inclusion follows value, and coverage follows index inclusion". That changes both the interpretation and the policy message in §4.1.

**Fix**: Merge historical constituent lists of the main benchmark indices for the five markets (global EM indices and the local flagship indices). Report the share of first scores that coincide with index entry, and estimate a simple hazard or linear-probability model of first coverage on lagged returns, size and index entry. One compact table would do, and it can replace Table 1 or be merged into it to stay at 4 or 5 exhibits. Even a negative answer (coverage does not track index entry) would sharpen the contribution.

### W5: The pre-registration claim cannot be verified
**Severity**: Minor
**Evidence Anchor**: text: §1 "We registered the hypotheses, sample rules, estimator, and robustness checks in a pre-analysis plan before estimating any effect."
**Confidence**: 4 (straightforward check of the manuscript)

**What is wrong**: The paper leans on pre-registration to separate confirmatory from exploratory analyses (§2.3), but gives no registry, identifier or timestamp. §2.4 dates the tool that "drafted the pre-analysis plan" to September 2026, so readers cannot see when the plan was fixed relative to data access (the data are dated 2025).

**Fix**: Cite the registry entry (for example, OSF or the AEA RCT Registry) with a DOI or URL and the registration date, and state when the data were first downloaded. If no timestamped registration exists, replace "registered" with "specified in an internal analysis plan dated …" and soften the confirmatory framing.

### W6: Pre-trend magnitudes are stated as facts without uncertainty, over an imprecise horizon
**Severity**: Minor
**Evidence Anchor**: text: §1 "their MTB ratio 10.0 percent over the five years before the first score"
**Confidence**: 4 (arithmetic check against Fig. 1 and Table 2)

**What is wrong**: The 10.0% MTB figure comes from a single event-time point estimate (−0.095 at e = −5). Its joint pre-trend test is p = 0.074 (Table 2), yet the introduction and abstract present it without uncertainty. The e = −5 estimate measures the change from g−5 to g−1, which is four annual changes, not growth "over the five years before".

**Fix**: Report CIs with the 14.1% and 10.0% figures, describe the MTB run-up as imprecise, and write "between five years and one year before the first score".

### W7: The main text refers to an earlier review round
**Severity**: Minor
**Evidence Anchor**: text: §2.3 "After the first round of review we added three exploratory checks that the plan did not contain."
**Confidence**: 5 (verbatim)

**What is wrong**: For a submission to this journal, the phrase leaks review history, which readers and referees cannot place. The useful information is only that these checks were not pre-specified.

**Fix**: Write "Three further checks, not in the pre-analysis plan, are exploratory:" and label R7 to R9 as exploratory in the Table 3 note, as the text already does.

### W8: The title page and required statements are missing
**Severity**: Minor
**Evidence Anchor**: absence: front matter and end matter — expected author names, affiliations, data availability statement, conflict-of-interest disclosure and funding statement required by the JF:IP title-page rules; checked title block, running title, abstract, keywords, JEL line, §2.4 and the text preceding References
**Confidence**: 3 (the panel copy may have been stripped deliberately)

**What is wrong**: JF:IP requires these items on the title page. The data availability statement matters especially here because the LSEG and Compustat data are licensed, and the journal mandates code and data sharing.

**Fix**: Add the full title page with all statements. The data availability statement should say what can be shared (code, firm identifiers, derived variables) given the license terms.

### W9: A companion study is withheld under a single-anonymized review model
**Severity**: Minor
**Evidence Anchor**: text: §2.1 "details withheld for anonymous review"
**Confidence**: 4 (the venue guidelines state single-anonymized review)

**What is wrong**: JF:IP uses single-anonymized review, so withholding the companion study serves no anonymity purpose. It also prevents the editor from checking the overlap that the authors themselves describe (the same data set).

**Fix**: Cite the companion paper, or at least provide it to the editor, and keep the non-overlap statement.

### W10: Significance-star conventions conflict for the same baseline estimates
**Severity**: Minor
**Evidence Anchor**: table: Table 2 row ln(market capitalization) versus Table 3 row "Baseline", column ln(market capitalization)
**Confidence**: 5 (direct comparison of exhibits)

**What is wrong**: The same estimate, −0.055, has no star in Table 2 (Holm-adjusted p = 0.134) and one star in Table 3 (unadjusted). Likewise, ln(total assets) 0.044 has one star in Table 2 and two in Table 3. A reader skimming the exhibits, which is how short-format papers are read, gets two different answers.

**Fix**: Use Holm-adjusted inference for the secondary outcomes in both tables, or drop the stars from Table 3 and report p-values, and state the convention in both notes.

### W11: Figure 1 does not stand alone
**Severity**: Minor
**Evidence Anchor**: figure: Fig. 1, legend and note
**Confidence**: 4 (inspection of Fig1.png and note)

**What is wrong**: The note does not name the estimator, the control group, the covariates, the number of scored firms per panel, or why event year 4 appears although the headline averages years 0 to 3. One y-axis label covers log outcomes and a ratio. The label "Fig. 1" also differs from the journal's "Figure 1" convention, and heading levels are inconsistent ("# 1. Introduction" against "## 2."). The panels are legible and the before/after marker coding is clear.

**Fix**: Expand the note to cover the estimator, controls, covariates, N, and the fact that e = 4 is shown but excluded from the average. Give the leverage panel its own axis label. Use "Figure 1" and consistent heading levels.

### W12: Practical implications go further than the design allows
**Severity**: Minor
**Evidence Anchor**: text: §4.1 "For listed firms, the evidence gives no reason to expect a first ESG score to raise the market value of their shares."
**Confidence**: 4 (editorial reading against MDE and W1)

**What is wrong**: The MDE is about 7% (§4.2), the post-coverage null is conditional (W1), and the outcome is not returns (W2). The design cannot rule out an economically meaningful gain of 3–6%, so this sentence reads as practical advice the evidence does not support.

**Fix**: Qualify the sentence: "effects larger than about 7 percent are unlikely under the parallel-trends assumption". Move the policy emphasis to the robust message: rated/unrated comparisons and static TWFE estimates mix selection with effects.

### Detailed Comments

#### Journal Fit
The topic (ESG ratings and valuation) and the style (one design, a few exhibits, an explicit null with its MDE) suit JF:IP Insights well, and the length is far inside the limit. The fit problem is the message, not the scope. At present the paper is a well-executed null plus an identification diagnostic. To interest the journal's general readers it should lead with a claim that survives the diagnostics: providers expand coverage to firms that have already grown, so coverage expansions are not clean shocks and rated/unrated comparisons are confounded. It then needs the mechanism (W4) and the returns evidence (W2) behind that claim.

#### Originality
The originality is moderate. The setting (ASEAN, a large never-rated pool) and the valuation outcome are new relative to the conduct-focused U.S. papers cited. But "coverage follows performance" has a close precedent in analyst coverage, and the use of Refinitiv coverage expansions as quasi-exogenous shocks (Hu, 2026) is the natural foil the paper should engage (W3).

#### Significance
If sharpened as above, the significance is methodological and fairly broad: it warns a growing literature that treats ESG-coverage initiation as a shock. As framed now ("a first score does not raise value in five markets"), the significance is regional and rests on a conditional null.

#### Structural Coherence
The flow from introduction to data, results and discussion is clean and each section does one job. The body is more careful than the frame: §4.1 and §4.2 correctly present two readings, while the title, the abstract's last sentence and §4.3 collapse them into one (W1).

#### Title & Abstract
The abstract is compliant (98 words) and gives numbers, which is good. Its two quantitative statements are a point estimate without uncertainty (W6) and a market-cap figure used for "value" (W2). The title overstates the claim (W1). The running title (34 characters) is compliant.

#### Conclusion
§4.3 restates the title claim without the conditioning that §4.1 supplies. It should end on the robust ordering, with the caveat on the post-coverage counterfactual.

### Questions for Authors
1. Does LSEG's coverage expansion in these markets follow index-constituent lists (and which indices)? Can the first-score year be matched to an index-entry year?
2. What do cumulative stock returns (not market capitalization) look like over event years −5 to +3?
3. Where and when was the pre-analysis plan registered, and when were the data first downloaded?
4. Under Rambachan-Roth relative-magnitude bounds, at what M̄ does the post-coverage CI for log MTB first include +5%?
5. How much of the pre-coverage market-cap growth comes from changes in shares outstanding?

### Minor Issues
- §1: "the 95% confidence interval excludes changes in the MTB ratio outside the range from −4.5 to 4.9 percent" is a double negative. Write "rules out changes larger than".
- §3.2: "about 7.0 percent" (exp(0.067) − 1 = 6.9%). Report 6.9% or "about 7 percent".
- Table 1: scored firms are measured at g−1, but never-scored firms contribute all firm-years from 2014 to 2024, so the two groups cover different calendar years. Consider calendar-matched never-scored firm-years. ROA is available for only 385 and 5,614 observations. Say why it is shown.
- Table 2 note: state that the CIs are percentile bootstrap intervals (the text says so, the note does not).
- Keywords: consider adding "Emerging markets" (6 of 7 slots are used).
