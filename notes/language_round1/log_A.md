# Language round 1, group A (abstract and Section 1): edit log

Skills applied: academic-paper (revision discipline, with no new claims, citations, or numbers), proofreading (checklist),
and stop-slop (academic register per D14). The word counts come from the brief's command (`checks.words`, with @@ lines stripped).

## Word counts

| Part | Before | After | Target |
|---|---|---|---|
| Abstract | 98 | 98 | at most 100 |
| Section 1 (heading and body) | 1,189 | 861 | about 830 |
| Total file | 1,287 | 959 | |

Section 1 is 27.6% shorter. It ends 31 words above the 830 target. We kept the remaining sentences because each one carries a must-keep item or a citation that the gap statement needs. The abstract was already within its limit. We only reordered its second sentence and kept all required content: the sample, the method, the run-up, the conditional headline estimate with its interval, the peak ordering, and the Malaysian and Thai concentration.

## Deleted sentences or results

| Deleted content (input location) | Why the deletion is safe |
|---|---|
| ¶1 "Evidence from mutual funds shows that investors respond strongly to newly published sustainability ratings (Hartzmark & Sussman, 2019)." | This is a fund-flow channel. §2.1 ¶2 already states it and §6.2 cites it. S7 asks that it be presented only as a motivating channel, which §2.1 does. |
| ¶1 "Models of sustainable investing add a preference channel:" (frame) | The citation and the claim stay. Only the framing words were cut. |
| ¶2 "and a permanent component has been attributed to greater investor awareness (Chen et al., 2004)" | §2.3 (H1), §5, and §6 cite Chen et al. (2004) for the same point. |
| ¶2 "so coverage resembles an index addition" | This is implied by "for example after it joins an index" and the index-addition sentence that follows. |
| ¶2 "scored firms will look more valuable than unscored firms even when the score itself changes nothing" | We merged it into the next sentence, which carries the same consequence. |
| ¶5 "Scored firms grew faster than comparable never-scored firms in the years before their first scored year." | The next sentence states the same fact with the numbers. |
| ¶5 "Second, MTB ratios did not rise after coverage began." | The same sentence now reports the estimate directly, conditional on parallel trends. |
| ¶5 "Under parallel trends, valuations therefore peak around the first scored year and do not rise afterwards." | This repeated the last sentence of ¶6, which keeps the ordering statement under parallel trends. |
| ¶5 standard error "(standard error {{mtb_se}})" | The headline estimate and its 95% interval stay. The SE is reported in Table 2 and §5.2. |
| ¶7 "Ratings from different providers disagree widely (Berg, Kölbel, et al., 2022), disagreement rises with disclosure (Christensen et al., 2022), and it carries a return premium and affects demand (Avramov et al., 2022; Gibson Brandon et al., 2021)." | This is background already covered in §2.1 ¶2. The contribution sentence stays. |
| ¶7 "The historical scores of the provider we study have been rewritten on a large scale (Berg et al., 2020), and its recent scores remain subject to revision (Sahin et al., 2023)." | §3.2 ¶3 states the same facts with the same citations, and §7 lists them as limitations. |
| ¶7 "measured against a large group of never-scored firms" | ¶4 already states that the unscored firms serve as comparison firms. |
| ¶8 "The rest of the paper proceeds as follows." | This is a meta-joiner (stop-slop). The roadmap sentences stay and match the headings. |

## Placeholders removed

- `{{mtb_se}}`: it is still reported in §5.2 and Table 2. Every other placeholder is kept byte-exact: n_treated_all (twice), n_never, mtb_att (twice), mtb_lo (twice), mtb_hi (twice), n_coh_2020_2023, n_coh_min_year, n_coh_max_year, mcap_runup_m5, mtb_runup_m5, mtb_R10, mtb_R10_p_txt, mtb_R6_pct, mtb_rm025_lo, and mtb_rm025_hi.

## Citations removed from Section 1 (other places each one is cited)

| Citation | Still cited in |
|---|---|
| Hartzmark & Sussman (2019) | §2.1 ¶2, §6.2 |
| Chen et al. (2004) | §2.3 H1, §5.3/§5.4, §6.1, §6.2 |
| Berg, Kölbel, et al. (2022) | §2.1 ¶2 |
| Christensen et al. (2022) | §5.5, §6.2 |
| Avramov et al. (2022); Gibson Brandon et al. (2021) | §2.1 ¶2 |
| Berg et al. (2020) | §3.2 ¶3, §5.4 |
| Sahin et al. (2023) | §3.2 ¶3, §5.4, §5.5 |

All retained citations keep their original form: narrative ones stay narrative, for example "Merton (1987)", "Tsang et al. (2024)", "Bikmetova and Pirinsky (2026)", "Callaway and Sant'Anna (2021)", and "Rambachan and Roth (2023)". Parenthetical ones stay parenthetical. We added no citations.

## Must-keep items in this group (checked)

- Run-up facts: ¶5, First.
- Headline MTB estimate with its interval, conditional on parallel trends: the abstract and ¶5, Second.
- R10 later dating: ¶5, Third. It keeps the statement that R10 cannot separate a reversal from a coverage effect. The R10 pre-trend test is reported in §5.4, not in the input to Section 1, so we added nothing here.
- M̄ = 0.25 bound, stated as "a quarter of the largest pre-coverage year-to-year change", and the breakdown statement "just below a 5 percent increase; any such departure admits positive effects": ¶6.
- Malaysian and Thai concentration: the abstract and ¶4.
- Pre-analysis plan provenance: version control, before the estimation code, included in the replication package. Later analyses are labeled exploratory (¶4).
- Every post-coverage statement stays conditional on parallel trends. "We do not claim that coverage has no effect" is kept, and no claim became stronger. "Merton (1987) shows that a larger investor base raises a stock's price" drops the "lowers the required return" half, which is the same mechanism. "likely add a firm" keeps the hedge of "is likely to enter".

## Proofreading checklist findings fixed

- Abbreviations: ESG, LSEG, and MTB are defined in the abstract and again at first use in the body. We kept ATT's definition because §4 uses ATT without defining it.
- Introduction structure: motivation (¶1–2), U.S. literature and an explicit gap sentence ("We do not know whether ...", ¶3), approach (¶4), results (¶5–6), contribution with "contribute" (¶7), and roadmap (¶8).
- The roadmap matches the headings: Section 2 "Related Literature and Hypotheses", Section 3 "Institutional Setting and Data", Section 4 "Methods", Section 5 "Results", Section 6 "Discussion", Section 7 "Limitations", and Section 8 "Conclusion". It is in the present tense.
- Grammar: we split the ¶4 sentence that held three parenthetical groups, (ATT), (MTB), and the Baker/Goodman-Bacon citation, into three sentences. We also split a run-on colon clause in ¶4.
- Italics removed: "*p*" is now "p".
- Parentheses cut: "(standard error ...)" was removed. Parentheses remain only for citations, the abbreviation definitions that F6 requires, and one compact statistic "(p ...)". The abstract keeps its compact "(estimate ...; 95% interval ...)".

## Stop-slop patterns removed

- Adverbs and intensifiers: "now", "in principle", "widely", "strongly", "therefore", "Together".
- Meta-joiner: "The rest of the paper proceeds as follows."
- A Wh-opener in the gap sentence ("What we do not know is whether ...") became "We do not know whether ...".
- Clauses tightened: the R10 caveat is now a "because" clause in the R10 sentence, and it is still passive. "We recorded ... in a pre-analysis plan, which was committed" became "A pre-analysis plan ... records".
- Repeated idea: we removed the duplicate peak-ordering sentence (¶5 against ¶6).
- The text has no em dashes and no "you". The house-style banned words (guarantee, prove, verify, ensure, crucial, critical, delve) do not appear.

## Not done

- Section 1 is at 861 words, not 830 (31 over). Further cuts would remove required content or citations that support the gap statement.
