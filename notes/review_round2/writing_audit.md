# Writing Audit, Round 2: sciwrite (full-review) and paper-writing gates

Input: `notes/review_round2/input/manuscript_for_review.md` (461 lines; numbers filled), plus `Fig1.png` for the figure checks.
Skills applied: `vendor/sciwrite/SKILL.md` (full-review mode, five passes); `vendor/paper-writing/SKILL.md` with `author_profile/gate_mechanical.md` (M1 to M18), `gate_semantic.md` (S1 to S31), `craft_reference.md`, `compression_patterns.md`, `editorial_principles.md`, `section_rhetorical_moves/introduction.md`, and `writing_checklists/intro_questions.md`.

Repo overrides applied (CLAUDE.md sections 1 and 4): no em dashes, so sciwrite's advice to use a dash for parentheticals is ignored. American English. Academic "we", never "you". No hype and no causal language beyond what the design supports (F2). Conventional Methods passives are kept, and only passives that hide a relevant actor are flagged; paper-writing's zero-passive rule (M11) is not applied mechanically. Following the brief, the 34-question brainstorming was not run and no `project_context.md` was created. No scientific content, number, or citation is changed. Where a claim looks too strong, the issue is filed as a **content note** with wording that keeps the number and the citation.

Locations use the manuscript's section numbers (Abstract, §1 Introduction ¶1 to ¶8, §2.1 to §8, Table n, Fig. n). Every finding quotes the original text and gives a concrete revision.

---

# Part A. sciwrite report

## Writing Quality Review: "Rated at the Peak? Firm Valuation around the First LSEG ESG Score in Five Southeast Asian Markets"

### Summary

The prose is mostly clean and disciplined. There are no em dashes, no "you", no throat-clearing openers, and no promotional adjectives, and most claims are scoped to "under assumption (2)". The main problems fall into four groups:
1. **Terminology drift around the paper's central constructs.** The treatment year, the base year, the run-up, "size", and scored vs. rated firms each carry two to six names. In one case, "size", the same word refers to different variables.
2. **Very long sentences in Results, the Abstract, and the Conclusion.** Mean sentence length is 23.6 words against a target of about 21. Fourteen sentences run to 44 words or more (counted in Part B, M12 row), the longest at 71 words in §5.5.
3. **A few parse ambiguities and forward references** that a first-time reader cannot resolve.
4. **Uneven hedging of the methodological implication.** The Abstract, Introduction, and Conclusion state it more strongly than §6.3.

Overall clarity: good at the paragraph level, and fragile at the cross-section level.

### Pass 1: Clutter — 11 issues found

**P1-1 [MINOR] §3.2, ¶2**
- Original: "Of the 274 scored firms with a base-year MTB ratio in cohorts observed through event year 3, 271, or 98.9 percent, still have one in event year 3; the others have no MTB ratio in event year 3."
- Revision: "Of the 274 scored firms with a base-year MTB ratio in cohorts observed through event year 3, 271 (98.9 percent) still have one in event year 3."
- Rationale: the final clause restates the arithmetic, and the "271, or 98.9 percent," apposition splits the subject from its verb.

**P1-2 [MINOR] §4.2, ¶3**
- Original: "Three design choices need comment. First, ..."
- Revision: "Three design choices affect how the estimates are read. First, ..." Alternatively, delete the sentence and open with "First, the baseline controls ...".
- Rationale: a placeholder setup sentence (M8 pattern).

**P1-3 [MINOR] §5.1**
- Original: "Scored firms are much larger: their median market capitalization is 203.2 million ..."
- Revision: "Scored firms are larger: their median market capitalization is 203.2 million ..."
- Rationale: the numbers that follow carry the size of the gap, so "much" adds nothing (M13).

**P1-4 [MINOR] §5.1**
- Original: "...while leverage barely differs (normalized difference −0.04)."
- Revision: "...while leverage differs little (normalized difference −0.04)."
- Rationale: weak qualifier (M13). The number carries the claim.

**P1-5 [MINOR] §5.1**
- Original: "Return on assets is available for far fewer firm-years, so we use it only descriptively."
- Revision: "Return on assets is available for only 385 scored and 5,614 never-scored firm-years (Table 1), so we use it only descriptively."
- Rationale: replaces a vague quantifier with the numbers already in Table 1.

**P1-6 [MINOR] §5.2**
- Original: "...which under assumption (2) excludes changes in the MTB ratio outside −4.5 to 4.9 percent."
- Revision: "...which, under assumption (2), limits the change in the MTB ratio to between −4.5 and 4.9 percent."
- Rationale: the double negative ("excludes ... outside") makes the reader invert the claim.

**P1-7 [MINOR] §5.2**
- Original: "...the confidence interval, not the MDE, gives the effects compatible with the data, and it includes increases of a few percent." Later in the same paragraph: "...although the interval admits gains of up to 4.9 percent."
- Revision: "...the confidence interval, not the MDE, gives the effects compatible with the data." Keep the precise "up to 4.9 percent" at the end of the paragraph.
- Rationale: the same point is made twice in one paragraph, first vaguely and then precisely.

**P1-8 [MINOR] §4.4, ¶2**
- Original: "The second bounds the bias, in the spirit of the relative-magnitudes restriction of Rambachan and Roth (2023)."
- Revision: "The second bounds the bias with a simplified version of the relative-magnitudes restriction of Rambachan and Roth (2023)."
- Rationale: "in the spirit of" is vague. The same paragraph and §7 already say "simplified".

**P1-9 [MINOR] §3.2, ¶3 and §6.2, ¶1**
- Original: "Both features move the true publication date later" and "Two features may explain the absence of a gain."
- Revision: "Both delays move the true publication date later" and "Two facts may explain the absence of a gain."
- Rationale: M16 lists "feature" as a vague noun. Name the referent.

**P1-10 [MINOR] §5.4, ¶2**
- Original: "This comparison partly accounts for any reversal of temporary demand, like the partly reversing price effects of index additions (Harris & Gurel, 1986), and shows no significant gain, but its interval, from −0.021 to 0.077, admits gains of several percent."
- Revision: "This comparison accounts for part of any reversal of temporary demand, such as the partial reversal of index-addition price effects (Harris & Gurel, 1986). It shows no significant gain, but its interval, from −0.021 to 0.077, admits gains of several percent."
- Rationale: "partly ... partly" repeats within one clause, and "like" is used where "such as" is meant.

**P1-11 [MINOR] §5.3, ¶1**
- Original: "...the MTB estimates are −0.095 and −0.082 (p = 0.015 and p = 0.015)."
- Revision: "...the MTB estimates are −0.095 and −0.082 (p = 0.015 for both)."

### Pass 2: Voice and Verbs — 13 issues found

**P2-1 [MAJOR] §2.2, ¶1 (passive hides the actor the argument is about)**
- Original: "Rating coverage is not assigned at random."
- Revision: "Providers do not assign coverage at random."
- Rationale: the whole selection argument rests on the provider's choice, so the actor should be the subject.

**P2-2 [MINOR] §3.2, ¶3**
- Original: "...if historical years were filled in when a firm entered coverage, the gap exceeds one year."
- Revision: "...if the provider filled in historical years when a firm entered coverage, the gap exceeds one year."

**P2-3 [MINOR] §5.4, ¶1**
- Original: "...because scores were backfilled or revised (Berg et al., 2020; Sahin et al., 2023)..." and "If firms are selected at an unusually high valuation that later partly reverses..."
- Revision: "...because the provider backfilled or revised scores (Berg et al., 2020; Sahin et al., 2023)..." and "If the provider selects firms at an unusually high valuation that later partly reverses..."

**P2-4 [MINOR] §5.5, ¶4**
- Original: "The split also uses initial scores that may have been revised since publication (Sahin et al., 2023)."
- Revision: "The split also uses initial scores that the provider may have revised since publication (Sahin et al., 2023)."

**P2-5 [MINOR] §1, ¶5 (Introduction, "Third")**
- Original: "...because this decline is measured from the year of peak valuation, it cannot separate..."
- Revision: "...because we measure this decline from the year of peak valuation, it cannot separate..."

**P2-6 [MINOR] §3.2, ¶2**
- Original: "MTB ratios at or below zero, which reflect negative book equity, are set to missing."
- Revision: "We set MTB ratios at or below zero, which reflect negative book equity, to missing."
- Rationale: this is a sample-construction decision made by the authors, and the active voice makes that visible.

**P2-7 [MINOR] §5.5, ¶1**
- Original: "...and 0.016 when control firms below the size range of scored firms are dropped..."
- Revision: "...and 0.016 when we drop control firms below the size range of scored firms..."

**P2-8 [MINOR] §5.5, ¶3 (an inanimate subject performs the authors' action)**
- Original: "When row R9 and Table S1 of the Supplemental Appendix exclude one market at a time, ..."
- Revision: "When we exclude one market at a time (row R9 of Table 3 and Table S1 of the Supplemental Appendix), ..."

**P2-9 [MINOR] §5.2 (dangling participle)**
- Original: "The minimum detectable effect from Eq. (7) is 0.067, about 7.0 percent, detected with 80% probability;"
- Revision: "The minimum detectable effect from Eq. (7), the effect the design detects with 80% probability, is 0.067, about 7.0 percent;"

**P2-10 [MINOR] §7, "Seventh"**
- Original: "...so smaller effects would be detected with less than 80% probability;"
- Revision: "...so the design detects smaller effects with less than 80% probability;"

**P2-11 [MINOR] §1, ¶1 (nominalization)**
- Original: "Both arguments predict that the initiation of ESG coverage raises a firm's valuation."
- Revision: "Both arguments predict that a first ESG score raises a firm's valuation."

**P2-12 [MINOR] §1, ¶2 and §3.2, ¶2 (nominalization "comparison of")**
- Original: "...a comparison of rated and unrated firms, or a regression pooling all years around coverage, attributes past growth to the rating." and "The comparison of changes adjusted for size, country, and industry does not need similar levels, but it needs enough never-scored firms of comparable size..."
- Revision: "...comparing scored and unscored firms, or pooling all years around coverage in one regression, attributes past growth to the score." and "Comparing changes adjusted for size, country, and industry does not require similar levels, but it requires enough never-scored firms of comparable size..."

**P2-13 [MINOR] §2.3, H~1~ (nominalization)**
- Original: "The initiation of LSEG ESG coverage changes the log MTB ratio..."
- Revision: "A first LSEG ESG score changes the log MTB ratio..."
- Rationale: if H~1~ quotes the pre-analysis plan verbatim, keep it and add "(wording of the pre-analysis plan)".

Passives kept as conventional or actor-irrelevant (no action needed):
- §4.2: "β̂~g,t~ is estimated from Eq. (3)", "Cohorts first scored after 2021 are not observed for all four post-coverage years", "the covariates are measured at the end of any run-up".
- §5.4: "rows R1 to R6 were pre-specified".
- Table and figure notes: "are measured", "are excluded", "are summed".
- §1, ¶1 and ¶3: "is scored", "are unscored" (adjectival).
- §2.1: "are priced" (the market is the obvious actor).

### Pass 3: Sentence Architecture — 15 issues found

**P3-1 [MAJOR] Abstract, Design/methodology/approach (55 words; 40-word participial opener before the subject; list ambiguity)**
- Original: "Using the staggered first appearance of London Stock Exchange Group (LSEG) ESG scores for 675 non-financial firms in Indonesia, Malaysia, the Philippines, Singapore, and Thailand and 2,613 never-scored firms from 2014 to 2024, the study estimates heterogeneity-robust difference-in-differences effects on the market-to-book (MTB) ratio, market capitalization, leverage, and total assets, following a pre-analysis plan."
- Revision: "The study uses the staggered first appearance of London Stock Exchange Group (LSEG) ESG scores for 675 non-financial firms in Indonesia, Malaysia, the Philippines, Singapore, and Thailand from 2014 to 2024, with 2,613 never-scored firms as the comparison group. Following a pre-analysis plan, it estimates heterogeneity-robust difference-in-differences effects on the market-to-book (MTB) ratio, market capitalization, leverage, and total assets."
- Rationale: "Thailand and 2,613 never-scored firms" briefly reads as a sixth list member.

**P3-2 [MAJOR] §1, ¶4 (buried predicate: 16 words between "plan" and "records")**
- Original: "A pre-analysis plan, committed to version control before the estimation code and included in the replication package, records the hypotheses, sample rules, estimator, and robustness checks, and we label every later analysis as exploratory."
- Revision: "A pre-analysis plan records the hypotheses, sample rules, estimator, and robustness checks. We committed it to version control before the estimation code, include it in the replication package, and label every later analysis as exploratory."

**P3-3 [MAJOR] §1, ¶5, "Third" (49 words: result, design, and caveat in one sentence)**
- Original: "Third, when we date coverage one year later to allow for the time needed to publish a score, the effect becomes −0.068 (p = 0.004); because this decline is measured from the year of peak valuation, it cannot separate a reversal of the run-up from an effect of coverage."
- Revision: "Third, when we date coverage one year later to allow for the time needed to publish a score, the effect becomes −0.068 (p = 0.004). Because we measure this decline from the year of peak valuation, it cannot separate a reversal of the run-up from an effect of coverage."

**P3-4 [MAJOR] §5.5, ¶1 (71 words, the longest sentence in the paper)**
- Original: "In the pre-specified rows R1 to R4, the effect on log MTB is −0.001 when not-yet-scored firms join the controls, as Callaway and Sant'Anna (2021) propose, 0.025 without the outcome-regression covariates of Sant'Anna and Zhao (2020), 0.031 without the 2020 and 2021 cohorts, and 0.016 when control firms below the size range of scored firms are dropped; none differs from zero at the 10% level, so the valuation result is unchanged."
- Revision: "The pre-specified rows R1 to R4 leave the effect on log MTB close to zero. It is −0.001 when not-yet-scored firms join the controls, as Callaway and Sant'Anna (2021) propose; 0.025 without the outcome-regression covariates of Sant'Anna and Zhao (2020); 0.031 without the 2020 and 2021 cohorts; and 0.016 when we drop control firms below the size range of scored firms. None differs from zero at the 10% level."

**P3-5 [MAJOR] §5.6 (67 words)**
- Original: "Under assumption (2), the largest increase compatible with the headline interval is of the same order as the announcement return of 4.86 percent that Demiroglu and Ryngaert (2010) report for the first analyst coverage of neglected stocks, and it exceeds the increase of more than 3 percent that Harris and Gurel (1986) report for additions to the S&P 500, most of which reversed within about two weeks."
- Revision: "Under assumption (2), the largest increase compatible with the headline interval is of the same order as the announcement return of 4.86 percent that Demiroglu and Ryngaert (2010) report for the first analyst coverage of neglected stocks. It also exceeds the increase of more than 3 percent that Harris and Gurel (1986) report for additions to the S&P 500, most of which reversed within about two weeks."

**P3-6 [MAJOR] §5.5, ¶3 (54 words; causal-sounding "reflects")**
- Original: "When row R9 and Table S1 of the Supplemental Appendix exclude one market at a time, the MTB effect ranges from −0.007 to 0.017 and is −0.003 without Malaysia (p = 0.940), whereas the market capitalization effect turns to 0.037, so its negative baseline estimate reflects the large Malaysian cohorts of 2021 and 2022."
- Revision: "When we exclude one market at a time (row R9 of Table 3 and Table S1 of the Supplemental Appendix), the MTB effect ranges from −0.007 to 0.017 and is −0.003 without Malaysia (p = 0.940). Without Malaysia, the market capitalization effect turns to 0.037, so the negative headline estimate for market capitalization depends on the large Malaysian cohorts of 2021 and 2022."

**P3-7 [MAJOR] §5.4, ¶2 (two coordinated "and" clauses with different subjects; parse failure)**
- Original: "Row R8 compares scored firms with never-scored firms that grew at a similar rate before coverage, and so share any tendency to revert, and gives an MTB effect of 0.028 (p = 0.265)."
- Revision: "Row R8 compares scored firms with never-scored firms that grew at a similar rate before coverage and so share any tendency to revert. It gives an MTB effect of 0.028 (p = 0.265)."
- Rationale: in the original, "and so share" belongs to the never-scored firms and "and gives" belongs to Row R8.

**P3-8 [MAJOR] §8, first sentence (57 words; 26-word opener)**
- Original: "Using the staggered first appearance of LSEG ESG scores for 675 non-financial firms in five Southeast Asian markets, we find that scored firms, mostly Malaysian and Thai, grew faster than comparable never-scored firms before their first scored year and, under parallel trends, did not gain in market-to-book ratio afterwards (headline effect 0.002; 95% interval −0.046 to 0.048)."
- Revision: "Using the staggered first appearance of LSEG ESG scores for 675 non-financial firms in five Southeast Asian markets, we find that scored firms, mostly Malaysian and Thai, grew faster than comparable never-scored firms before their first scored year. Under parallel trends, their market-to-book ratio did not rise afterwards (headline effect 0.002; 95% interval −0.046 to 0.048)."

**P3-9 [MAJOR] §6.2, ¶1 (non-parallel list: the third item is not sell-side evidence)**
- Original: "Sell-side evidence suggests why a first ESG score might move prices: losing coverage lowers prices (Kelly & Ljungqvist, 2012), a favorable first report on a neglected stock raises them (Demiroglu & Ryngaert, 2010), and Hartzmark and Sussman (2019) document a demand channel through fund flows."
- Revision: "Prior evidence suggests why a first ESG score might move prices. Among sell-side analysts, losing coverage lowers prices (Kelly & Ljungqvist, 2012), and a favorable first report on a neglected stock raises them (Demiroglu & Ryngaert, 2010). For sustainability ratings, Hartzmark and Sussman (2019) document a demand channel through fund flows."

**P3-10 [MAJOR] §5.2 (rhythm: all six sentences run 33 to 47 words except the first)**
- Original sentence lengths: 9, 37, 37, 47, 33, 36. The paragraph has 201 words.
- Revision: split the Holm sentence after the colon:
  - "No outcome changes significantly at the 5% level once the secondary outcomes are Holm-adjusted. Log market capitalization changes by −0.055 log points (p = 0.134), leverage by 0.8 percentage points (p = 0.134), and total assets by 0.044 log points (p = 0.053, against an unadjusted p = 0.018)."
  - Split the Hartzmark sentence at the semicolon into two sentences.

**P3-11 [MINOR] §4.1, ¶1 (53-word definitional sentence)**
- Original: "In the notation of Callaway and Sant'Anna (2021), let G~i~ be the first year in which firm i has an LSEG ESG score, with G~i~ = ∞ if it is never scored, and let Y~i,t~(g) be the potential outcome..."
- Revision: "...with G~i~ = ∞ if it is never scored. Let Y~i,t~(g) be the potential outcome..."

**P3-12 [MINOR] §4.2, ¶3 "Third" (45 words)**
- Original: "Because the provider's scores rise with firm size (Dobrick et al., 2023), conditioning on base-year size matches scored firms to never-scored firms of similar size and can absorb part of the run-up, so we also report estimates without covariates and estimates that condition on pre-coverage growth."
- Revision: "...can absorb part of the run-up. We therefore also report estimates without covariates and estimates that condition on pre-coverage growth."
- Also see P4-1 on "size".

**P3-13 [MINOR] §4.3, ¶2 (43 words)**
- Original: "We test the primary outcome at the 5% level and Holm-adjust the p-values of the three secondary outcomes but not the confidence intervals, so an interval that excludes zero can accompany an adjusted p-value above 5%, as for total assets in Table 2."
- Revision: "We test the primary outcome at the 5% level and Holm-adjust the p-values, but not the confidence intervals, of the three secondary outcomes. An interval that excludes zero can therefore accompany an adjusted p-value above 5%, as for total assets in Table 2."

**P3-14 [MINOR] §2.1 (48-word final sentence) and §6.1, ¶3 (50 words)**
- §2.1 original: "Both also require investors to act on this particular score, yet U.S. ESG funds respond more to one provider's ratings than to those of others (Berg, Heeb, et al., 2022), and providers disagree (Berg, Kölbel, et al., 2022) in ways that are priced (Avramov et al., 2022; Gibson Brandon et al., 2021)."
- §2.1 revision: "Both also require investors to act on this particular score. Yet U.S. ESG funds respond more to one provider's ratings than to those of others (Berg, Heeb, et al., 2022), and providers disagree (Berg, Kölbel, et al., 2022) in ways that are priced (Avramov et al., 2022; Gibson Brandon et al., 2021)."
- §6.1, ¶3 revision: split at ", although the waves may reflect" into a new sentence: "The waves may, however, reflect market-specific disclosure rules (...) or unobserved index changes."

**P3-15 [MINOR] §7 (wall of text: one 299-word paragraph; sentences 30 to 41 words, a monotone rhythm)**
- Original: "The study has eight limitations. First, the provider chooses ... Eighth, the unrecorded download date ..."
- Revision: keep the eight items but break them into two paragraphs:
  - Identification and timing: First, Second, Third, and Eighth.
  - Data and inference: Fourth to Seventh.
- Alternatively, set the items as a numbered list if the journal style allows it. Shorten the "Fourth" sentence (41 words) by moving the list of missing variables into a parenthesis-free second sentence: "Fourth, the data contain no stock returns, shares outstanding, ownership, foreign holdings, foreign-ownership limits, index membership, or sustainability report dates. We therefore cannot separate ..."

### Pass 4: Terminology — 22 issues found

(The full term-drift table is in Part E.)

**P4-1 [CRITICAL] "size" names two different variables**
- §3.3 fixes the meaning: "...so we use MTB for valuation and market capitalization for size."
- §4.1, §4.2, and §4.5 then use "size" for log total assets (the covariate in X~i~):
  - "size overlap is poor: 24.6 percent of scored firms are larger in the base year than the 95th percentile of never-scored firms"
  - "conditioning on base-year size"
  - R4 "Size-trimmed controls" (trimmed on log total assets)
- §5.5 "The size results are less stable" refers to market capitalization and total assets together.
- Revision:
  - §3.3: "...we use MTB for valuation and market capitalization for equity size."
  - §4.2: "overlap in log total assets is poor: 24.6 percent of scored firms have larger total assets in the base year than the 95th percentile of never-scored firms". Confirm that this is the variable in the R script.
  - §4.2: "conditioning on base-year log total assets".
  - Table 3: "R4 Asset-trimmed controls".
  - §5.5: "The market capitalization and total assets results are less stable."
- Rationale: a reader following §3.3 will think the overlap statistic and the R4 trim use market capitalization.

**P4-2 [MAJOR] scored/never-scored (Methods) vs. rated/unrated (framing sentences)**
- Abstract, Practical implications: "Comparisons of rated and unrated firms that ignore coverage timing attribute selection into coverage to the rating."
- The same pair appears in §1 ¶2, §1 ¶7, §6.3, and §8.
- Revision: use "scored and unscored firms" and "the score" throughout. If the broader "rated" is intended to generalize beyond LSEG, define the relation once in §1 ¶1: "We call firms with an LSEG ESG score *scored* (rated) and firms without one *unscored*."

**P4-3 [MAJOR] "later-scored firms" (§4.2) vs. "not-yet-scored firms" (§4.5, §5.5, Table 3 R1)**
- Original §4.2: "...later-scored firms, which may also be growing toward the provider's universe, join them only in check R1."
- Revision: "...not-yet-scored firms, which may also be growing toward the provider's universe, join them only in check R1 (Section 4.5)."

**P4-4 [MAJOR] treatment-year cluster (six names for g)**
- The six names are "treatment year, g" (§3.2), "first fiscal year with an LSEG ESG score" (§1 ¶4, §3.2), "first scored year" (Abstract, §4.2, §5.4, §6.1, §8), "first scored fiscal year" (§5.4, §6.1), "First score year" (Table S2 header), and "year of first LSEG ESG score" (Table S2 caption, Fig. S1 caption).
- Revision: in §3.2, write "A firm's first scored year, g, is its first fiscal year with an LSEG ESG score". Use "first scored year" everywhere after that, including the Table S2 header ("First scored year") and the captions ("by first scored year").

**P4-5 [MAJOR] "base year" used before it is defined, and it has synonyms**
- The term is first used in §1 ¶5 ("from event year −5 to the base year") and in §3.2. It is defined only in §4.2: "use year g − 1 as the base year".
- Synonyms: "the year before coverage" (§4.1), "the year before their first LSEG ESG score" (Table 1), "event year −1" (Fig. 1 note), and "base year = −1" (Fig. 1 x-axis).
- Revision:
  - Define it in §3.2 after the treatment-year sentence: "We call year g − 1, the last year before the first scored year, the base year."
  - In §1 ¶5, write "from event year −5 to the base year (the year before the first score)".
  - In §4.1, write "relative to the base year, g − 1".

**P4-6 [MAJOR] run-up cluster: "run-up", "pre-coverage growth", "relative growth", "the valuation gap widens", "MTB run-up"**
- "Run-up" first appears in §1 ¶5 ("a reversal of the run-up") without a gloss. §6.1 and §8 alternate between "relative growth" and "run-up".
- Revision:
  - At first use in §1 ¶5, write "a reversal of this pre-coverage run-up".
  - Use "run-up" for the pattern from then on.
  - Keep "pre-coverage growth" only for the R8 covariate ("growth of log market capitalization from year g − 3 to g − 1").
  - In §5.3 ¶2, replace "The valuation gap thus widens before coverage and stops widening afterwards" with "The MTB gap thus widens during the run-up and stops widening after the first score".

**P4-7 [MAJOR] thesis refrain stated in four different wordings (S7)**
- Abstract: "the first scored year coincides with a valuation peak".
- §1 ¶6: "the first score follows relative growth and coincides with a valuation peak".
- §6.1: "the first scored fiscal year follows relative growth and coincides with a valuation peak".
- §8: "The first scored year thus coincides with a valuation peak".
- Revision: one fixed sentence everywhere: "The first scored year follows the run-up and coincides with a valuation peak."

**P4-8 [MINOR] "baseline" overloaded, and a synonym of "headline"**
- Uses: "the baseline controls are never-scored firms" (§4.2), Table 3 row "Baseline", "its gap to the baseline" and "its negative baseline estimate" (§5.5), and "headline estimate" (§4.2, §5.2, §5.6, §8) for the same number.
- Revision:
  - §4.2: "the main control group is never-scored firms".
  - Table 3 row: "Headline (Table 2)".
  - §5.5: "its gap to the headline estimate".

**P4-9 [MINOR] two-way fixed effects cluster**
- Variants: "static two-way fixed effects regression" (§1, §4.5, §5.5, §6.3), "benchmark regression" (§4.5 heading), "static regression" (§5.5, §6.3), "R6 Two-way fixed effects" (Table 3), and "pooling" (§1 ¶5: "showing how pooling turns selection...").
- Revision: use "static two-way fixed effects regression" in all places and "R6 Static two-way fixed effects" in Table 3. In §1 ¶5, write "showing how the static regression can turn..." (see P5-12).

**P4-10 [MINOR] "ATT" names both the group-time effect and the aggregate**
- §1 ¶4 and Eq. (1) define ATT(g,t) as the group-time effect. The Table 2 column "ATT" holds the aggregate θ̂~post~ of Eq. (6).
- Revision: Table 2 header "Average effect (θ̂~post~)". Keep the note.

**P4-11 [MINOR] §5.5, ¶4: "minimum detectable value"**
- Original: "...with a minimum detectable value of 0.113..."
- Revision: "...with a minimum detectable difference of 0.113 (Eq. 7)..."
- Rationale: §4.3 defines "minimum detectable effect".

**P4-12 [MINOR] interval names**
- Variants: "confidence interval", "95% interval", "95% CI" (Table 2), "interval", "robust interval" (§5.4), and "Robust 95% interval" (Table S5).
- "Robust" also appears in "heterogeneity-robust" and "robustness checks", so it now names three unrelated things.
- Revision: use "95% confidence interval" at first mention in each paragraph, then "interval". In Table S5 and §5.4, write "bias-adjusted 95% interval".

**P4-13 [MINOR] channel names introduced only implicitly**
- §2.1 introduces "Under investor recognition" and "Under investor preference". Later sections use "recognition channel" and "preference channel" (H~1~, H~3~, §5.2, §5.5, §6.2, §6.3).
- Revision (§2.1): "Under the recognition channel, ..." and "Under the preference channel, ..."

**P4-14 [MINOR] "selection view" named only in H~1~**
- §1 ¶2 says "A second prediction". §2.2 is titled "Coverage as a selection event". H~1~ and §5.3 say "the selection view".
- Revision: §1 ¶2: "A second view, the selection view, reverses the direction of causality." In §2.2, end the first paragraph with "We call this the selection view."

**P4-15 [MINOR] provider vocabulary**
- §1 ¶3 uses "more ESG raters" and "non-financial rating agencies". Elsewhere the paper uses "provider" and "rating provider".
- "Non-financial rating agencies" also collides with the paper's "non-financial firms".
- Revision: "coverage by more ESG rating providers" and "after ESG (non-financial) rating agencies begin coverage (Tsang et al., 2025)".

**P4-16 [MINOR] log notation and outcome labels**
- Text uses "log MTB", "log market capitalization", and "log total assets". Tables and Fig. 1 use "ln(MTB)", "ln(market cap)", and "ln(assets)".
- Table 1 says "Book leverage", while Tables 2 and 3, S1, S3 to S5, and Fig. 1 say "Leverage (ratio)".
- Revision: add "ln denotes the natural logarithm" to the Table 2 note, and use "Book leverage" in all exhibits.

**P4-17 [MINOR] "event year" vs. "years since coverage" vs. Fig. 1's "Years relative to the first LSEG ESG score"**
- Original §4.2: "We average by years since coverage, e = t − g, ..."
- Revision: "We average by event year e = t − g, the number of years since the first scored year, ..."
- Fig. 1 x-axis: "Event year (years relative to the first scored year; base year = −1)".

**P4-18 [MINOR] row-label style**
- §4.2 says "check R4" and "check R1", while §5 says "row R4".
- Table 3 has "R5 Placebo, 3 years early" and "R10 Dated 1 year later", while the text says "three years early" and "one year later".
- §5.3 and §5.4 have "6 cohorts" and "7 cohorts", while elsewhere the text spells out "four years".
- Revision: write "row R1" and "row R4" in §4.2, plus "R5 Placebo, three years early", "R10 Dated one year later", "six cohorts", and "seven cohorts".

**P4-19 [MINOR] Fig. 1 caption lists three outcomes for four panels**
- Original: "Event-time effects of the first LSEG ESG score on valuation, size, and leverage"
- Revision: "Event-time effects of the first LSEG ESG score on the market-to-book ratio, market capitalization, leverage, and total assets"

**P4-20 [MINOR] "valuation" used for market value in §1 ¶2**
- Original: "If coverage follows growth in market value, ..."
- Revision: "If coverage follows growth in market capitalization, ..."
- Rationale: this matches the convention fixed in §3.3.

**P4-21 [MINOR] undefined or nonstandard abbreviations and terms**
- "CI" (Table 2 header): add "CI, confidence interval" to the note.
- "USD" (Table 1) vs. "U.S. dollars" (§3.3, §5.1): pick one.
- "extensive margin" (Abstract, §1 ¶7) is used without a gloss. In §1 ¶7, write "the extensive margin of coverage (whether a firm is scored at all)".
- "country indicators" vs. "markets": in §4.1, write "country (market) indicators" once.

**P4-22 [MINOR] American English**
- Original §1 ¶3: "sell-side analysts offer a closer analogue"
- Revision: "a closer analog"

### Pass 5: Numbers and Citations — 13 issues found

**P5-1 [MAJOR] §5.4, ¶3: the parenthetical value reads as the interval limit, which Table 2 gives as 0.048**
- Original: "The upper limit of the unadjusted interval lies just below a 5 percent increase in the MTB ratio (0.049 log points): any departure with M̄ above about 0.01 admits an increase of 5 percent, and any departure at all admits a positive effect."
- Revision: "The upper limit of the unadjusted interval, 0.048, lies just below the 0.049 log points that correspond to a 5 percent increase in the MTB ratio. Any departure with M̄ above about 0.01 therefore admits an increase of 5 percent, and any departure at all admits a positive effect."

**P5-2 [MAJOR] four counts for the cohorts observed through event year 3, with no reconciliation**
- §3.2: "274 scored firms with a base-year MTB ratio ... 271 ... still have one in event year 3."
- Table S6: 270 scored firms at event year 3, 7 cohorts.
- §5.4 R11: "273 scored and 2,032 control firms."
- Revision: add one clause to §5.4 R11 naming the definition behind 273 (for example, "firms entering at least one R11 cell"). Also add a sentence to the Table S6 note saying why event-year-3 cells hold 270 rather than 271. Verify against the R CSVs; do not change any number.

**P5-3 [MINOR] "6.6 percent" names two different estimates with opposite signs**
- The two-way fixed effects increase is 0.064, reported as "a 6.6 percent MTB increase" in the Abstract, §1 ¶5, and §6.3.
- The R10 decline is −0.068, reported as "a change of about −6.6 percent" in §5.4.
- Revision: give the log estimate beside the percentage at each first use, for example "a 6.6 percent MTB increase (0.064 log points)". A reader comparing sections may otherwise suspect a copy error.

**P5-4 [MINOR] §5.5, ¶2: R5 p-value at the star threshold**
- The text reads "0.059 on log MTB (p = 0.010)", but Table 3 marks 0.059*** (p < 0.01).
- Revision: report the p-value as "p < 0.01" or to the precision that shows it is below 0.01, read from the CSV.

**P5-5 [MINOR] §5.2: mixed units for effect sizes in one list**
- Original: "log market capitalization changes by −0.055 (p = 0.134), leverage by 0.8 percentage points (p = 0.134), and total assets by 0.044 log points..."
- Revision: "log market capitalization changes by −0.055 log points (p = 0.134), leverage by 0.8 percentage points (p = 0.134), and log total assets by 0.044 log points..."

**P5-6 [MINOR] §5.1: "agree" reads as "are equal"**
- Original: "Their mean MTB ratio is 2.37 against 1.84, and the medians agree, while leverage barely differs"
- Revision: "Their mean MTB ratio is 2.37 against 1.84, and the medians show the same ordering (1.26 against 0.95), while leverage differs little"

**P5-7 [MINOR] the headline sample size is never stated in the text**
- The Abstract and §3.2 report 675 scored firms. The MTB headline uses 628 scored and 2,412 control firms (Table 2), and Table 1 reports MTB N = 629. Section 5.4 states the R10 sample, but §5.2 does not state the headline sample.
- Revision (§5.2): "The effect on log MTB, estimated from 628 scored and 2,412 control firms, is 0.002, ..."

**P5-8 [MAJOR] content note, §3.2: an unsupported empirical claim**
- Original: "Never-scored firms are much smaller on average, and many trade thinly."
- §3.3 states that the data contain no returns or shares outstanding, and the paper reports no trading-volume variable.
- Revision: "Never-scored firms are smaller on average (Table 1)." Delete "and many trade thinly", or add a verified source.

**P5-9 [MAJOR] content note, §6.2: an uncited universal claim (editorial Principle 14; S18)**
- Original: "ESG scores rarely carry cash-flow news and arrive after the firm's own disclosures."
- Revision: "ESG scores may carry little cash-flow news, and the score for fiscal year g arrives after the firm's own reports for that year (Section 3.2)."

**P5-10 [MINOR] content note, §3.1: an uncited evaluative claim**
- Original: "Singapore, the most developed market, requires..."
- Revision: "Singapore requires..." Delete the appositive, or cite a market-classification source.

**P5-11 [MINOR] citation characterization, §1 ¶7**
- Original: "pre-coverage dynamics, which pre-trend tests treat as a nuisance (Roth, 2022), can be the economic finding."
- Roth (2022) studies distortions from pre-testing. "Treat as a nuisance" is the authors' framing attributed to the source (a telephone-game risk).
- Revision: "pre-coverage dynamics, which event studies usually examine only as a test of identification (Roth, 2022), can be the economic finding."

**P5-12 [MAJOR] content note, §1 ¶5: overstates relative to §5.5 (S18; repo rule F9)**
- Original: "A static two-way fixed effects regression on the same data attributes a 6.6 percent MTB increase to coverage, showing how pooling turns selection into an apparent rating effect."
- Section 5.5 says that "Part of its gap to the baseline reflects the covariates and the event window".
- Revision: "...showing how pooling can turn part of the pre-coverage run-up into an apparent rating effect."

**P5-13 [MAJOR] content note: hedging of the methodological implication varies across sections (F2, F9)**
- Abstract, Practical implications: "Comparisons of rated and unrated firms that ignore coverage timing attribute selection into coverage to the rating."
- §1 ¶7: "selection into coverage matters for any comparison of rated and unrated firms".
- §8: "Comparisons of rated and unrated firms that ignore coverage timing will attribute this selection to the rating."
- §6.3, more carefully: "can reflect selection into coverage rather than an effect of ratings".
- Revision: use the §6.3 calibration everywhere:
  - Abstract: "Comparisons of scored and unscored firms that ignore coverage timing can attribute selection into coverage to the score."
  - §1 ¶7: "...selection into coverage matters for comparisons of scored and unscored firms in these markets."
  - §8: "...can attribute this selection to the score."

### Top 5 Priority Revisions

1. **Unify the core vocabulary (P4-1, P4-2, P4-4, P4-5, P4-6, P4-7).** Fix one name each for the first scored year (g), the base year (g − 1, defined in §3.2 before any use), the run-up, and scored vs. unscored firms. Use "size" only with a named variable. The thesis sentence should read identically in the Abstract, §1, §6.1, and §8.
2. **Align the hedging of the main implication across the Abstract, §1, §6.3, and §8 (P5-12, P5-13).** The Abstract, Introduction, and Conclusion currently make stronger claims ("any comparison", "will attribute", "turns selection into") than §5.5 and §6.3 support.
3. **Split the 44-to-71-word sentences in §5.2, §5.4, §5.5, §5.6, the Abstract, and §8 (P3-1 to P3-10).** In particular, fix the R8 parse failure (P3-7) and the non-parallel list in §6.2 (P3-9).
4. **Repair the numeric presentation in §5.4 and the cohort counts (P5-1, P5-2, P5-3).** The "(0.049 log points)" parenthetical, the 270/271/273/274 counts, and the two opposite-sign "6.6 percent" figures each invite a reviewer to suspect an error.
5. **Remove unsupported assertions (P5-8, P5-9, P5-10).** These are "many trade thinly", "ESG scores rarely carry cash-flow news", and "the most developed market". Also restore the provider as the actor in the selection sentences (P2-1 to P2-4), since the paper's argument is about who chooses coverage.

---

# Part B. paper-writing mechanical gate (M1 to M18 and Part B)

Scope of the greps: `scratchpad/body.md`, which holds manuscript lines 1 to 221 (Title through §8) and 288 to 461 (exhibits and Supplemental exhibits). References (lines 223 to 286) are excluded because they hold bibliographic text. The grep patterns are those of `gate_mechanical.md` Part C with `sections/*.tex` replaced by the file. Line numbers below are **manuscript** lines.

| Check | Command (abridged) | Hits | Disposition |
|---|---|---|---|
| **M1** em dash | Python count of U+2014, U+2013, and ` -- ` | Em dash (—): **0**. En dash (–): 10, all numeric ranges in exhibits (Table 3 "R3 No 2020–2021 cohorts"; Table S6 "1,420–1,732" ... "1,407–1,732"). `---`: 9, all Markdown table rules. Minus sign (U+2212): 67, all negative numbers. | PASS. En dashes in numeric ranges are not dashes. Optional consistency fix: the text writes "2020 and 2021 cohorts", while Table 3 writes "2020–2021". |
| **M2** antithesis | `grep -noE ",? not [0-9A-Za-z\\]\|rather than\|not only .* but\|..."` | 42 (2 "rather than", 40 "not"). | All inspected. Factual negations are kept: "We use the ESG score, not the controversy-adjusted combined score" (§3.2); "a simplified bound, not the confidence sets" (§7); "driven by favorable coverage rather than by coverage itself" (§1 ¶3); "can reflect selection into coverage rather than an effect of ratings" (§6.3); "the confidence interval, not the MDE, gives the effects compatible with the data" (§5.2). One rhetorical candidate: §1 ¶6 opens "We do not claim that coverage has no effect on valuation." It is kept because rule F2 requires that not rejecting H0 never be presented as no effect; see S20 for an optional positive reframe. |
| **M3/M4/M8/M9** editorializing, intensifiers, grandiose setups, metaphor | `grep -noiE "in effect\|in a sense\|at (its\|the) (heart\|core)\|in essence\|truly\|genuinely\|indeed\|in fact\|..."` plus `simply\|essentially\|fundamentally\|really\|actually\|exactly` | **0** | PASS. One M8-adjacent setup was found by reading: "Three design choices need comment." (P1-2). |
| **M5** banned adjectives | `grep -noiE "novel\|significant\|substantial\|...\|robust\|leverag\|..."` | 46 lines: "robust/robustness" 15, "significant(ly)" 5, "leverag" 26. | Justified. Every "leverag" hit is the outcome variable (book leverage). "Significant" is always statistical ("at the 5% level"). "Robust" is technical ("heterogeneity-robust", "robustness checks", "robust interval"), but P4-12 recommends renaming "robust interval" because the word is overloaded. |
| **M6** throat-clearing openers | `grep -noE "(^\|\. )(Moreover\|Furthermore\|Additionally\|Notably\|Importantly\|Indeed\|Ultimately\|Crucially\|In turn\|That said)"` | **0** | PASS. Discourse markers: "so" 31 (mostly result clauses), "also" 14, "therefore" 7, "thus" 2. These carry logical moves and are not flagged. |
| **M7** rule-of-three | `grep -noE "\w+, \w+, (and\|or) \w+"` | 13 triads plus several four-item lists | All members are distinct and load-bearing (for example, "portfolio screens, index rules, and fund mandates" in §1 ¶1, and the four outcomes). One mismatch: the Fig. 1 caption says "valuation, size, and leverage" for four panels (P4-19). |
| **M10** hype verbs | `grep -noiE "promises to\|stands? to\|is poised to\|opens the door to\|is set to\|has the potential to\|keeps .* from\|unlocks\|powers"` | **0** | PASS |
| **M11** passive (over-catching) | `grep -noiE "\b(is\|are\|was\|were\|be\|been\|being)\s+(\w+ly\s+)?(\w+ed\|done\|made\|...)\b"` | 22: L25 is scored, L29 are unscored, L33 is measured, L45 are priced, L49 is not assigned, L49 be scored, L75 is observed, L75 are set, L77 were filled, L107 is estimated, L115 are not observed, L117 are measured, L173 been published, L173 were backfilled, L173 are selected, L181 are dropped, L181 is unchanged, L187 been revised, L217 be detected, L300 are measured (Table 1 note), L381 are excluded (Table S2 note), L459 are summed (Table S6 note). | Repo rule: flag only passives that hide the actor. **Flagged (10): L49 "is not assigned" (MAJOR, P2-1), L77, L173 ×2, L187, L75 "are set", L181 "are dropped", L33, L217, plus L163 "detected with 80% probability" (dangling).** Justified (12): L25, L29 (adjectival); L45 (market is the actor); L49 "be scored"; L75 "is observed"; L107, L115, L117 (Methods convention); L181 "is unchanged" (adjectival); and three table notes. |
| **M12** needless words | `grep -noE "the fact that\|as to whether\|in order to\|in terms of\|one of the most\|a number of\|it is (worth\|important) ..."` | **0** | PASS on the listed phrases. Sentence length was counted separately (Python sentence split, 264 sentences): **mean 23.6 words** against craft_reference's ~21 target; **max 71 (§5.5)**; 14 sentences of 44 words or more, at manuscript lines 9 (55), 29 (44), 33 (49), 45 (48), 117 (44, 45), 153 (44, 44), 163 (47), 181 (71), 183 (50), 185 (54), 191 (67), 205 (45), 221 (57). See Pass 3. |
| **M13** weak qualifiers | `grep -noiE "\b(rather\|very\|pretty\|little\|quite\|somewhat\|fairly\|certainly\|much\|far\|barely\|just\|likely)\b"` | 13: L25 much (as much as), L27 likely, L29 rather (than), L35 just (below), L75 much (smaller), L159 much (larger), L159 barely, L159 far (fewer), L177 just (below), L197 likely, L201 likely, L207 little (matter little), L211 rather (than). | Fix 4: L75, L159 ×3 (P1-3 to P1-5, P5-8). Keep 9: "rather than" is M2-factual; "just below" is a numeric comparison; the "likely" hedges at L27, L197, and L201 are calibrated per S18; "as much as" and "matter little" are idiomatic and precise. |
| **M14** false ordinals and coined adverbs | `grep -noiE "thusly\|muchly\|overly\|firstly\|secondly\|thirdly\|[a-z]+wise\b"` | 1 (L173 "otherwise") | False positive. PASS. Ordinals use First/Second/Third (rule F7). |
| **M15** exclamation and rhetorical questions | `grep -n "!"` ; `grep -n "?"` | "!": 0. "?": 1, the title ("Rated at the Peak?") | PASS. One question in the title is acceptable. |
| **M16** pompous or vague words | the M5/M16 grep | "feature(s)": 2 (L77 "Both features", L205 "Two features"). "impact", "currently", "factor", "meaningful", "possess": 0. | Fix 2 (P1-9). |
| **M17** fancy verbs | `grep -noiE "pit\|dispatch\|chip away at\|marshal\|orchestrat\|wrangl\|harness\|forge\|weav\|delve into\|usher in\|grapple with\|anew\|afresh"` | **0** | PASS |
| **M18** content-free openers | `grep -noE "In this (paper\|section\|study), we\|This (paper\|study) (examines\|provides\|investigates)"` | 1 (L7 "This study examines" in the Abstract Purpose field) | Justified: the Emerald structured abstract requires a purpose statement. The §1 ¶8 roadmap ("Section 2 reviews ...") is a placeholder signpost under craft_reference, but repo rule C2 requires a roadmap, so it is kept. |
| **Part B** precision pairs | `grep -noiE "comprised of\|data (is\|was\|has\|does)\|different than\|very unique\|due to\|less than [0-9]\|fewer\|less\|which\|affect\|imply\|infer"` | "comprised of", "data is", "different than", "due to": **0**. "Data" is plural throughout ("the data are annual", "The data cover"). "fewer": 2, both correct for count nouns. "less": 5, correct for mass or comparative use. "which": 22, all nonrestrictive with a comma or preposition-led ("in which"), none misused for "that". "affect": 1, a verb, correct. | PASS |
| American spelling (repo F7) | `grep -noiE "\w+(isation\|ise[ds]?\|our\|yse[ds]?\|ogue\|tre)\b"` minus exceptions | 1 (L29 "analogue") | Fix to "analog" (P4-22). |
| Oxford comma (repo F7) | `grep -noE "\w+, \w+( \w+)? (and\|or) \w+"` | 8 candidates; all are proper-name pairs ("Malaysian and Thai", "Rambachan and Roth") or correct serial commas. | PASS. The Abstract's "Singapore, and Thailand and 2,613" is a parse ambiguity, not a comma error (P3-1). |
| "you" (repo F7) | `grep -noiwE "you\|your"` | **0** ("we": 55) | PASS |
| Numeral style | `grep -noE "\b[1-9] (year\|cohort\|market\|firm)s?\b"` | 4 (L169 "6 cohorts", L175 "7 cohorts", Table 3 "3 years", "1 year") | Fix for consistency with the spelled-out "four years" and "three years" in the text (P4-18). |
| Term drift (Part C (a)/(b)) | `for t in ...; grep -oiE "$t"` (Part E) | See Part E | 6 MAJOR or CRITICAL clusters |
| Decomposition cardinality | `grep -noE "\b(three\|four\|five\|six\|seven\|eight)\b (parts\|hypotheses\|limitations\|readings\|results\|design choices\|robustness checks\|analyses\|outcomes)"` | "three parts" (§1 ¶5: First/Second/Third, 3 ✓); "three hypotheses" (§2.3: H1 to H3 ✓); "three secondary outcomes" ✓; "four robustness checks, a placebo, and the benchmark" = R1 to R6 ✓; "four analyses are exploratory" = R10, R11, R9/Table S1, and Table S3 ✓; "eight limitations" (First to Eighth ✓); "three readings" (§6.1, 3 ✓); "Three results bear on reversal" (3 ✓); "two exploratory checks" (§4.4: R7, R8 ✓). | PASS on cardinality. One mismatch: §5.4 says "rows R7 to R11 are exploratory" (5 rows), while §4.5 counts "the checks in Section 4.4" (2) plus four exploratory analyses (4, of which only R9, R10, and R11 are Table 3 rows). The total is consistent but split differently; consider "rows R7 to R11 (Sections 4.4 and 4.5) are exploratory". |

Mechanical summary: **M1 to M18 clean or justified except** M11 (10 actor-hiding passives), M12 (sentence length), M13 (4 qualifiers), M16 (2), M18 (justified), the American-spelling check (1), and numeral style (4). No em dashes.

---

# Part C. paper-writing semantic gate: failing S-checks

Lens: a fresh reader at a finance journal. Severity follows gate_semantic.md (MAJOR = visible to a reviewer; CRITICAL = structural or logical incoherence).

| S | Severity | Evidence (quoted) | Fix |
|---|---|---|---|
| **S1** define before use | MAJOR | "base year" in §1 ¶5 ("from event year −5 to the base year") and §3.2, defined only in §4.2. "event year" in §1 ¶5, defined in §4.2 as "years since coverage, e = t − g". "run-up" in §1 ¶5 ("a reversal of the run-up") without a gloss. "extensive margin" (Abstract, §1 ¶7) without a gloss. | P4-5, P4-6, P4-17, P4-21. In §1 ¶5: "from five years before the first score (event year −5) to the year before it (the base year)". |
| **S2** term-introduction order | MAJOR | "check R4 trims controls only from below" (§4.2) and "join them only in check R1" (§4.2) use R-labels that §4.5 defines later. | "the size-trimming check in Section 4.5 (row R4 of Table 3)"; "only in row R1 (Section 4.5)". |
| **S3** acronyms | MINOR | "CI" (Table 2 header) is not expanded. "USD" (Table 1) vs. "U.S. dollars". "FTSE", "EMAS", and "ACE" are proper names (acceptable). "TWFE" is not used (good). | P4-21 |
| **S4** recursive followability | MAJOR | §4.1 "the size differences in Table 1 do not violate it" and §4.3 "as for total assets in Table 2" refer to results before §5 introduces them. §1 does not reference Fig. 1, so the run-up numbers in §1 ¶5 have no visible anchor. | Add "(Fig. 1)" after "The evidence has three parts." In §4.1, write "the size differences between scored and never-scored firms (Section 5.1, Table 1)". |
| **S5** parse accessibility | MAJOR | H~1~: "the selection view predicts no effect after coverage and relative growth before it" can parse as "no effect after (coverage and relative growth)". R8 sentence (P3-7). Abstract list (P3-1). §6.1: "With parallel paths from the base year, coverage had no effect within the interval of Section 5.2." | H~1~: "the selection view predicts relative growth before coverage and no effect after it." §6.1: "With parallel paths from the base year, the coverage effect lies within the interval of Section 5.2." |
| **S7** thesis-tie, fixed vocabulary | MAJOR | The controlling idea is restated in four wordings (P4-7). The key abstraction moves between "selection into coverage", "ordering of events", "pre-coverage dynamics", "run-up", and "valuation peak". | Fix one refrain (P4-7) and one name for the abstraction (Part D, Move 3). |
| **S8** lexical consistency | CRITICAL | "size" (P4-1); scored/rated (P4-2); later-scored/not-yet-scored (P4-3); "Under assumption (2)" (5×), "under parallel trends" (4×), "under conditional parallel trends from the base year" (3×), and "conditional on assumption (2)" for one condition. | Part E table. For the identifying condition, use "under assumption (2)" in §5 and §6, and "under parallel trends" only in the Abstract, §1, and §8. |
| **S9** cross-section term map and decomposition | MAJOR | Treatment-year cluster of six names (P4-4). Fig. 1 caption has three categories for four outcomes (P4-19). Exploratory rows R7 to R11 are counted differently in §4.5 and §5.4 (Part B). | P4-4, P4-19 |
| **S10** non-duplication | MINOR | "the firm-level bootstrap does not account for correlation within market-level coverage waves, so the confidence intervals ... may be too narrow" appears nearly verbatim in §4.3 and §7 (Sixth). "larger firms receive higher scores from the provider (Dobrick et al., 2023)" appears three times (§2.2, §4.2, §5.1). The 4.9 percent bound appears four times (§5.2 twice, §6.3, §7). MDE 0.067 appears in §5.2 and §7. | Keep the full statement in its home section (§4.3; §2.2 for Dobrick). Elsewhere cross-reference ("see Section 4.3"). Remove the second 4.9 mention in §5.2. The §7 repetition is acceptable if shortened. |
| **S11** referents | MINOR | §5.5 "The size results are less stable" (than what?). §5.3 "The valuation gap thus widens" (which gap?). §6.1 ¶3 "Market-level MTB effects agree" (with what?). | "...less stable than the MTB result"; "The MTB gap between scored and comparable never-scored firms thus widens"; "Market-level MTB effects agree with the pooled estimate". |
| **S13** gloss pile-ups | MINOR | §1 ¶4: "The London Stock Exchange Group (LSEG), whose scores were earlier distributed as Refinitiv ESG and ASSET4, extended coverage in market-specific waves: 577 of the 675 ..." (acronym, relative clause, and colon payload in one sentence). §3.1: "In Malaysia, FTSE Russell, another part of LSEG, scored only the FTSE Bursa Malaysia EMAS constituents, about 30 percent of listed companies, until ..." (two appositives). | §1 ¶4: "LSEG scores were earlier distributed as Refinitiv ESG and ASSET4. LSEG extended coverage in market-specific waves: ..." §3.1: "In Malaysia, FTSE Russell, which is also part of LSEG, scored only the constituents of the FTSE Bursa Malaysia EMAS index (about 30 percent of listed companies) until ..." |
| **S14** dangling modifiers | MINOR | §5.2 "...is 0.067, about 7.0 percent, detected with 80% probability". The Abstract's "Using ..., the study estimates" is borderline. | P2-9, P3-1 |
| **S15** mappability | MINOR | "grew 14.1 percent more" (Abstract, §1 ¶5, §5.3) for market capitalization has no table cell. Readers can read only about −0.13 from Fig. 1, and the conversion to 14.1 percent is not shown. | Add the event-time point estimates to the Supplemental Appendix, or state "(−0.132 log points in event year −5; Fig. 1)". Take the value from the R CSV. |
| **S18** hedge scan | MAJOR | P5-12 ("showing how pooling turns selection into an apparent rating effect"); P5-13 ("any comparison", "will attribute"); P5-9 ("ESG scores rarely carry cash-flow news"); P5-8 ("many trade thinly"); P3-6 ("so its negative baseline estimate reflects the large Malaysian cohorts"). | As given in each item. |
| **S20** positives-first | MINOR | §1 ¶6 opens with a disclaimer: "We do not claim that coverage has no effect on valuation." | "The run-up casts doubt on the parallel-trends assumption behind the post-coverage estimates, so we do not read the null as an absence of effect." The F2 content is kept, with the claim first. |
| **S23** claim-first headings | MINOR (venue convention) | Topic headings: "5.2. Average effects of the first score", "5.3. Dynamics before and after the first score". | Optional claim headings: "5.3. Valuations rise before the first score and stay flat after it"; "5.4. Later dating yields a decline from the valuation peak". Keep the top-level IMRaD headings, as rule C2 requires. |
| **S24** wall of text | MINOR | §7: one 299-word paragraph. §5.4 ¶1 has 186 words and ¶2 has 188 words, each holding several results. | P3-15. §5.4: give R10, R11, and R7/R8 one paragraph each. |
| **S28** figure legibility (inspected Fig1.png) | MINOR | The figure is legible in black and white (open/filled markers, dotted/solid bars), has no title, and the legend does not cover the data. Two issues: the x-axis label "Years relative to the first LSEG ESG score (base year = −1)" uses a third name for event time, and the y-axis label mixes units ("log points; leverage: ratio"). | Label the x-axis "Event year (base year = −1)" to match the text, or rename the text term to match the figure. Moving the leverage unit to the facet strip ("Leverage (ratio)", already present) would simplify the y-axis label to "Effect relative to base year". |

Checks passed: S6, S12, S16 (not applicable), S17 (no degenerate input flagged; mapping to R outputs is out of scope here), S19 (H~1~ to §5.2, H~2~ to §5.2 and Table 2, H~3~ to §5.5 and Table 3; all closed), S21 (prior work positioned as building upon, deltas stated in §1 ¶3), S22 (not applicable), S25, S26 (not applicable), and S27. S29 to S31 are process checks. This audit is one independent lens. Closure requires a re-run after revisions.

---

# Part D. Introduction rhetorical-move check (section_rhetorical_moves/introduction.md; intro_questions.md)

Paragraph map: ¶1 stakes and the two value predictions; ¶2 selection prediction; ¶3 literature gap; ¶4 setting and design; ¶5 three results; ¶6 caveat and bounds; ¶7 contributions; ¶8 roadmap.

| Move | Present? | Evidence | Assessment and fix |
|---|---|---|---|
| **1 Stakes** | Yes, ¶1 | "ESG scores enter portfolio screens, index rules, and fund mandates, so whether a listed firm is scored at all can matter as much as its score." | Problem-first, no method in the opening, and named mechanisms (screens, index rules, mandates). The opening has no concrete anchor number. Moving the fact that most listed firms are unscored into ¶1 would anchor it, using numbers already in the paper: "In five Southeast Asian markets, 675 of 3,423 listed non-financial firms received a first LSEG ESG score between 2015 and 2024." Check that the wording matches the sample definition. MINOR. |
| **2 Problem gap** | Yes, ¶2 and ¶3 | ¶2 states a structural gap: "If coverage follows growth in market value, a comparison of rated and unrated firms, or a regression pooling all years around coverage, attributes past growth to the rating." ¶3 names prior work (Tsang et al., 2024; Bikmetova & Pirinsky, 2026; Kelly & Ljungqvist, 2012; Demiroglu & Ryngaert, 2010) and states the delta (U.S. firms, non-valuation outcomes). | The gap is structural and the approaches are named, so the move passes. The limitations are not numbered, which is acceptable in a finance venue. The two gaps (identification in ¶2, evidence base in ¶3) are not tied together: ¶3 ends with "We do not know whether a first ESG score moves valuations in emerging markets", without the identification problem of ¶2. Fix: "We do not know whether a first ESG score moves valuations in emerging markets once selection into coverage is taken into account." MINOR. |
| **3 Key abstraction** | Weak | Candidate names are scattered: title "Rated at the Peak?", "selection into coverage" (¶7), "ordering of events" (¶6), "pre-coverage dynamics" (¶7), "run-up" (¶5), and "valuation peak" (Abstract). | The paper's core insight, that the first score arrives at the end of a relative valuation run-up, has no single citable name. Pick one name (for example, "the pre-coverage run-up" or "rated at the peak"), introduce it once in ¶5 with a gloss, and use it in the Abstract Findings, ¶6, ¶7, §6.1, and §8. MAJOR (links to S7 and P4-6/P4-7). |
| **4 Design intuition** | Yes, ¶4 | "We treat the first fiscal year with an LSEG ESG score as a staggered event and estimate group-time average treatment effects on the treated (ATT) with the estimator of Callaway and Sant'Anna (2021)." ¶4 also explains why the estimator is needed, names the primary outcome, and mentions the pre-analysis plan. | The move passes, but the ¶4 paragraph has 160 words and mixes setting facts (waves, country shares) with design. Fix: end ¶4 with the setting and move the design sentences into the opening of ¶5, or split ¶4 in two. Buried predicate P3-2. MINOR. |
| **5 Contributions** | Yes, ¶7 (prose) | "We contribute to research on the financial consequences of ESG ratings with emerging-market evidence on the extensive margin of coverage, and we show that selection into coverage matters for any comparison of rated and unrated firms. The results also show that pre-coverage dynamics ... can be the economic finding." | The contributions are claims ("we show"), not processes, so the move passes. They are not numbered or bold-labeled, which follows the finance convention (the venue adaptation in the move guide). Two defects: (a) overgeneralization in "any comparison" (P5-13); (b) the contributions come after the results preview and the caveat, so a skim reader meets them late. Optional reorder: ¶7 before ¶6, or merge ¶7 into the end of ¶5. MINOR. |
| **6 Results preview** | Yes, ¶5 and ¶6 | Headline numbers: 14.1 percent, 10.0 percent, 0.002 [−0.046, 0.048], −0.068 (p = 0.004), and 6.6 percent; bounds −0.071 to 0.073. | Specific and matched to Results (checked against §5.2 to §5.4, Table 2, Table 3, and Table S5). The preview does not reference a headline figure; add "(Fig. 1)" to ¶5. MINOR. |
| Roadmap ¶8 | Present | "Section 2 reviews the literature ... Section 8 concludes." | Matches the actual numbering (§2 to §8), so it passes (rule C2). |

intro_questions.md checklist:
- First sentence names the domain problem ✓.
- No ML/AI in ¶1 or ¶2 ✓.
- Gap is structural ✓.
- Approaches are named ✓.
- Named abstraction ✗ (Move 3).
- Overview figure ✗; Fig. 1 is not referenced in §1.
- Contributions as claims ✓, numbered ✗ (venue-acceptable).
- Headline number ✓.
- Introduction promises exactly what the Results deliver: ✗ in two places. "pooling turns selection into an apparent rating effect" (§5.5 attributes part of the gap to covariates and the event window) and "any comparison" (P5-12, P5-13).
- Skim test (first sentences of ¶1 to ¶7): the argument reconstructs except at ¶6, whose first sentence is a negation ("We do not claim ...") rather than the claim (S20).

---

# Part E. Term-drift table

Counts come from `grep -oiE` on the body plus exhibits (Part B scope). The canonical source is the Methods definition (§3.2, §3.3, §4) unless noted.

| Concept | Methods term (where defined) | Variants elsewhere (location, count) | Severity | Recommended canonical form |
|---|---|---|---|---|
| Treatment year g | "treatment year, g ... its first fiscal year with an LSEG ESG score" (§3.2) | "first scored year" (Abstract, §4.2, §5.4, §6.1, §8; 7); "first scored fiscal year" (§5.4, §6.1; 2); "first fiscal year with an LSEG ESG score" (§1 ¶4); "First score year" (Table S2 header); "year of first LSEG ESG score" (Table S2 caption, Fig. S1 caption); "first score" used as a time (§5.3 "Before the first score"; Fig. 1 legend "Before/After first score") | MAJOR | "first scored year (g)" |
| Base year g − 1 | "use year g − 1 as the base year" (§4.2) | "the year before coverage" (§4.1); "the year before their first LSEG ESG score" (Table 1 caption, §5.1); "event year −1" (Fig. 1 note); "base year = −1" (Fig. 1 axis). Used before definition in §1 ¶5 and §3.2. | MAJOR | "base year (g − 1)", defined in §3.2 |
| Event time e | "years since coverage, e = t − g" (§4.2) | "event year" (28 uses: §1, §3.2, §5, Tables 2, 3, S6); "Years relative to the first LSEG ESG score" (Fig. 1 x-axis) | MINOR | "event year e" |
| Treated firms | "scored firms" (§3.2; 63 uses) | "rated firms" (Abstract PI, §1 ¶2, ¶7, §6.3, §8; 6); "covered firms"/"newly covered firms" (§3.1; 1); "high-score and low-score entrants" (§5.5; 1); "treated" (only in the ATT definition) | MAJOR | "scored firms" |
| Control firms | "never-scored firms" (§3.2; 27) | "unscored firms" (§1 ¶1, ¶3, ¶4, §2.2, §6.3; 5, sometimes meaning all firms without a score); "unrated firms" (5); "control firms" (Tables 2, S6, §5.4; 10); "comparable firms" (§5.3; 1); "comparable never-scored firms" (5) | MAJOR (unrated); MINOR (others) | "never-scored firms" for the control group; "unscored" only for the population without a score; drop "unrated" |
| Late-treated controls | "not-yet-scored firms" (§4.5, Table 3 R1, §5.5; 3) | "later-scored firms" (§4.2; 1) | MAJOR | "not-yet-scored firms" |
| Pre-coverage pattern | none defined; "run-up" first appears in §1 ¶5 | "run-up" (13); "pre-coverage growth" (9; also names the R8 covariate); "relative growth" (§1 ¶6, H~1~, §6.1; 4); "MTB run-up" (§5.6); "the valuation gap ... widens" (§5.3); "pre-coverage dynamics" (§1 ¶7) | MAJOR | "run-up" for the pattern; "pre-coverage growth in log market capitalization" only for the R8 covariate |
| Thesis refrain | n/a | "first scored year coincides with a valuation peak" (Abstract); "first score follows relative growth and coincides with a valuation peak" (§1 ¶6); "first scored fiscal year follows relative growth and coincides with a valuation peak" (§6.1); "first scored year thus coincides with a valuation peak" (§8); "the year of peak valuation" (§1 ¶5, §5.4) | MAJOR | "The first scored year follows the run-up and coincides with a valuation peak." |
| Size | "market capitalization for size" (§3.3) | "size" = log total assets in X~i~ (§4.1, §4.2 "size overlap", "base-year size"; §4.5 R4 "Size-trimmed"); "size" = market cap and assets (§5.5 "The size results"); "size" in the Fig. 1 caption (two outcomes) | **CRITICAL** | "equity size" (market cap) vs. "log total assets"; never bare "size" for a variable |
| Valuation | "we use MTB for valuation" (§3.3) | "market value" (§1 ¶2 "growth in market value"); "valuation" applied to market capitalization growth in §1 ¶2 | MINOR | "valuation" = MTB only |
| Primary outcome | "natural logarithm of the MTB ratio" (§3.3) | "log MTB" (7); "ln(MTB)" (all tables, Fig. 1); "log MTB ratio" (H~1~); "MTB ratio" (13); "market-to-book ratio" (4) | MINOR | "log MTB" in text; "ln(MTB)" in exhibits with a note "ln, natural logarithm" |
| Secondary outcomes | "log market capitalization, log total assets, and book leverage" (§3.3) | "ln(market cap)", "ln(assets)", "Leverage (ratio)" (exhibits); "Book leverage" (Table 1 only); "total assets" unlogged in §5.2 ("total assets by 0.044 log points") | MINOR | "Book leverage" in all exhibits; "log total assets" in text |
| Headline estimate θ̂~post~ | "The headline estimate averages all cells ..." (§4.2, Eq. 6) | "ATT" (Table 2 header); "average effect" (Table captions); "Baseline" (Table 3 row); "baseline estimate" (§5.5); "headline effect" (§8) | MINOR | "headline estimate" in text; "Average effect (θ̂~post~)" in Table 2 |
| Control group label | "the baseline controls are never-scored firms" (§4.2) | "Baseline" also = headline estimate (Table 3, §5.5) | MINOR | "main control group" |
| Benchmark regression | "static two-way fixed effects regression" (§4.5, Eq. 11) | "benchmark" (§4.5 heading, §4.5 ¶2; 3); "static regression" (§5.5, §6.3); "Two-way fixed effects" (Table 3 R6); "pooling" / "a regression pooling all years" (§1 ¶2, ¶5) | MINOR | "static two-way fixed effects regression" |
| Confidence interval | "percentile 95% confidence interval" (§4.3) | "95% interval" (8); "95% CI" (Table 2); "interval"; "robust interval" (§5.4); "Robust 95% interval" (Table S5) | MINOR | "95% confidence interval"; for Table S5, "bias-adjusted 95% interval" |
| Bounds | "bounds the bias ... relative-magnitudes restriction" (§4.4) | "bias bound" (Table S5); "bounds" (7); "Relative-magnitude bounds" (Table S5 caption, singular "magnitude"); "relative-magnitudes logic" (§5.4) | MINOR | "relative-magnitudes bounds" |
| MDE | "minimum detectable effect (MDE)" (§4.3) | "minimum detectable value" (§5.5; 1) | MINOR | "minimum detectable effect" (or "minimum detectable difference" for H~3~) |
| Mechanism names | "investor recognition", "investor preference" (§2.1) | "recognition channel" (3), "preference channel" (4) | MINOR | "recognition channel", "preference channel", named in §2.1 |
| Selection mechanism | "Coverage as a selection event" (§2.2 heading) | "A second prediction" (§1 ¶2); "selection view" (H~1~, §5.3); "selection into coverage" (3) | MINOR | "selection view" for the hypothesis; "selection into coverage" for the phenomenon |
| Rating source | "the provider" (§2.2, §3.2) | "rating provider" (Abstract); "raters" (§1 ¶3); "rating agencies"/"non-financial rating agencies" (§1 ¶3); "LSEG" | MINOR | "provider" (LSEG) and "ESG rating providers" (in general) |
| Coverage event | "first fiscal year with an LSEG ESG score" (§3.2) | "initiation of ESG coverage" (§1 ¶1); "initiation of LSEG ESG coverage" (H~1~); "entered coverage" (2); "first score" (31); "first LSEG ESG score" (10); "first LSEG score" (§6.3; 1); "first ESG score" (6) | MINOR | "first LSEG ESG score" at first use in each section, then "first score" |
| Later-dating check | "dating coverage one year later" (§4.5) | "Dated 1 year later" (Table 3 R10); "dates coverage one year after" (§5.4); "later dating" (§7) | MINOR | "dating coverage one year later"; Table 3 "R10 Dated one year later" |
| Placebo | "dates coverage three years early" (§4.5) | "Placebo, 3 years early" (Table 3 R5) | MINOR | "three years early" |
| Robustness labels | R1 to R11 (§4.5) | "check R1", "check R4" (§4.2); "row R..." (§5) | MINOR | "row R1" |
| Markets | "the five markets" (Title, §3.1) | "country indicators" (§4.1, §4.3); "adjusted for size, country, and industry" (§3.2, §5.1) | MINOR | "country (market) indicators" once, then "market" |

---

## Severity totals (Part A findings)

| Pass | CRITICAL | MAJOR | MINOR | Total |
|---|---|---|---|---|
| 1 Clutter | 0 | 0 | 11 | 11 |
| 2 Voice and verbs | 0 | 1 | 12 | 13 |
| 3 Sentence architecture | 0 | 10 | 5 | 15 |
| 4 Terminology | 1 | 6 | 15 | 22 |
| 5 Numbers and citations | 0 | 6 | 7 | 13 |
| **Total** | **1** | **23** | **50** | **74** |

Part C semantic gate: 18 failing S-checks. One is CRITICAL (S8), seven are MAJOR (S1, S2, S4, S5, S7, S9, S18), and ten are MINOR. Part D adds one more MAJOR finding: the missing key abstraction (Move 3). Most overlap with Part A items. Part B mechanical gate: no em dashes. Ten actor-hiding passives, 14 sentences of 44 words or more, 4 qualifiers, 2 vague words, 1 British spelling, and 4 numeral-style hits remain to fix.
