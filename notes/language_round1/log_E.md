# Language round 1, group E (Sections 6, 7, and 8): log

Skills applied: academic-paper (writing quality check, anti-patterns; revision discipline: no new claims, citations, or numbers), proofreading (checklist), and stop-slop (within the academic register, D14).

## Word counts (counted with the brief's command; placeholders count as one word)

| Part | Before | After | Target |
|---|---|---|---|
| 6. Discussion (with headings) | 965 | 719 | about 700 |
| 7. Limitations | 386 | 309 | about 290 |
| 8. Conclusion | 148 | 126 | about 110 |
| Total | 1,499 | 1,154 | about 1,100 |

Reduction: 345 words (23%). The total is 54 words above the target. The remaining length sits in the eight limitations and in the Discussion material that the brief lists as "must keep" (three readings, reversal evidence with its limits, R8 limits, bounds, foreign-ownership clause, CI-based implication, and scope statement). Further cuts would have removed required content.

## Deleted sentences or results

| Location | Deleted text (short) | Why safe |
|---|---|---|
| 6.2 ¶2 | "Price effects of index additions ... are concentrated around the announcement; part of them lasts (Chen et al., 2004; Shleifer, 1986) and part reverses (Harris & Gurel, 1986), and annual data cannot isolate an effect of that kind." | Repeats Section 5.6 ¶1 (annual ratios miss announcement effects that reverse; lasting vs temporary effects) and Section 5.3 (run-up resembles index additions). All three sources remain cited elsewhere. |
| 6.1 ¶2 | "which follow the relative-magnitudes idea of Rambachan and Roth (2023)" | Method attribution already given in Section 4.4 and Section 5.4 ¶3; Rambachan and Roth (2023) stays cited in 6.1 ¶1 and Section 7. |
| 6.1 ¶1 | "as the trend-adjusted estimate reads it" | Section 5.4 ¶2 already reports the R7 trend-adjusted estimate; the reading itself is kept. |
| 6.2 ¶1 | "we have not tested this explanation directly because the data contain no measures of ownership or investor attention" and "we observe neither the limits nor foreign holdings" | Merged into one sentence covering both explanations; no content lost. |
| 6.3 ¶2 | "whose valuation history differs from that of unscored firms" | Shortened to "with a distinct valuation history"; same meaning. |
| 7, Third | "rather than a first rating of any kind" | Implied by "the event is an additional score". |
| 8 | Country list "Indonesia, Malaysia, the Philippines, Singapore, and Thailand" | Replaced by "five Southeast Asian markets"; the countries are named in the title, abstract, and Section 3; "mostly Malaysian and Thai" is kept. |
| 8 | "and we detect no later gain" | Redundant with "did not gain in market-to-book ratio afterwards" in the first sentence of the Conclusion, which stays conditional on parallel trends. |

No result named in the brief's "must keep" list was deleted.

## Placeholders

Removed: none. Kept byte-exact: {{mtb_R6_pct}}, {{mtb_hi_pct}} (three times), {{pct_my_th_treated}}, {{mtb_mde}}, {{mtb_mde_pct}}, {{n_treated_all}}, {{mtb_att}}, {{mtb_lo}}, {{mtb_hi}}, {{mtb_R10}}. No typed numbers added. The structural years 2019 to 2022 and "80%" and "95%" are unchanged from the input.

Conclusion numbers checked against Results: {{mtb_att}} with {{mtb_lo}} to {{mtb_hi}} (Section 5.2, Table 2) and {{mtb_R10}} (Section 5.4, row R10); {{n_treated_all}} as in the input.

## Citations

Removed from this group: "(Chen et al., 2004; Shleifer, 1986)" and "(Harris & Gurel, 1986)" in the deleted 6.2 ¶2 sentence; the narrative "Rambachan and Roth (2023)" in 6.1 ¶2.
- Chen et al. (2004): still cited in 6.1 ¶1 and in Sections 5.1, 5.3, and 5.6.
- Shleifer (1986): still cited in Section 5.3 ¶1 and Section 2 (manuscript line 25).
- Harris and Gurel (1986): still cited in 6.1 ¶1 and Sections 5.3, 5.4, and 5.6.
- Rambachan and Roth (2023): still cited in 6.1 ¶1 and Section 7.

No citation added. All remaining citations are written exactly as in the input. The Discussion cites only authors cited earlier in the paper.

## Proofreading checklist findings fixed

- Structure (conclusion): the Conclusion keeps key quantitative results, conditions them on parallel trends, and adds no new content.
- Consistency with the review decision (M3): the ordering statement in 6.1 now reads "the first scored fiscal year" instead of "the first score".
- Pronoun reference: "The evidence does not speak to ..." keeps an explicit subject after a sentence that ends on the confidence interval.
- Ambiguity: "The third reading deserves weight" names which of the three readings is meant.
- Abbreviations: MTB, LSEG, ESG, and U.S. are defined earlier in the paper; no new abbreviations.
- Math notation: M̄ kept as plain text; no italics; "assumption (2)" kept.
- Statistical relevance: insignificant results, CI vs MDE distinction (Seventh limitation and 6.3), and the bound-based caveat remain.
- Parentheses: only APA citations, "(Table 1)", "assumption (2)", and one compact statistics group in the Conclusion remain. The former "(including foreign holdings and foreign-ownership limits)" and "(about {{mtb_mde_pct}} percent)" asides became plain clauses.
- No em dashes; no italics; American spelling; Oxford comma in all lists of three or more.

## Stop-slop patterns removed

- Wordy framing: "The last reading deserves weight:" setup, "The evidence therefore ... It shows that ..." two-step reveal merged into one sentence.
- Nominal padding: "the loss of coverage" to "losing coverage"; "the dispersion of scores across providers" to "dispersion across providers"; "the timing of coverage" to "coverage timing" where unambiguous.
- Hedge stacking and repetition: the two separate "we cannot test / we observe neither" statements merged; the Seventh limitation no longer repeats "but not smaller ones" after "excludes only".
- "reinforce this reading" replaced by "agree" (less emphatic, same claim).
- "most robust feature" replaced by "clearest result" to avoid the flagged non-statistical use of "robust".
- No intensifier adverbs, no "you", no "guarantee/prove/verify/ensure".

## Claim strength

No claim became stronger. Post-coverage statements remain conditional on parallel trends or assumption (2) at each place they were conditional in the input (6.1 ¶1 first reading, 6.3 ¶2, Seventh limitation, Conclusion). "Dominate the pooled estimates" (Sixth limitation) restates "weight those markets heavily" for a share of {{pct_my_th_treated}} percent.
