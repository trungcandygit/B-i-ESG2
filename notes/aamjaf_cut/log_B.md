# Cut log, group B (Sections 3 and 4)

Counting: the brief's command (display-equation `$$` lines and `@@` lines removed; `checks.words`).

- Before (input_B.md): 2,335 words
- After (output_B.md): 2,049 words (target at most 2,050)
- Saved: 286 words

Moved to the supplementary appendix: nothing (supp_B.md is empty).
Dropped citations: none. All in-text citations of input_B.md remain except one repeated mention of Rambachan and Roth (2023) in Section 4.4 (the source is still cited earlier in the same paragraph and in Section 7).

Integrity checks (script): 11 display equations byte-identical to input; headings identical; placeholder set identical ({{key}} set unchanged); no em dash; no "guarantee/prove/verify/ensure"; no new numbers.

## Cuts (approximate words saved, by tier)

Tier 1: repetition across sections
1. 3.2: removed "The files do not record the download date; therefore, the vintage of recent, revisable scores is unknown." The same caveat is Limitation 8 in Section 7. (−16)
2. 4.1: removed "We examine this implication with pre-coverage estimates but do not rely on the test alone." Section 4.3 (Roth, 2022 sentence) makes the same point. (−14)
3. 4.4: removed "This construction is conservative and simpler than the confidence sets of Rambachan and Roth (2023), which we do not compute." Section 7, Limitation 1, states the same. (−19)
4. 4.5: replaced the list of exploratory checks (R7 to R11, Tables S7 and S8) with "Section 5 describes each check with its results." Each check is described in Sections 5.4 to 5.6 where it is reported; the pre-specified (R1 to R6) and exploratory (R7 to R11) split stays. (−70)
5. 3.3: shortened the market capitalization caveat (price vs share changes); Section 5.3 and Limitation 4 repeat it. (−10)
6. 3.1: "built from company-reported data" removed from the LSEG product sentence; the score definition in the same paragraph says "built from company disclosures". (−5)
7. 4.2: list of size-covariate variants shortened to one sentence ("Checks therefore drop the covariates, ..."); Section 5.5 reports them. (−8)

Tier 3: compression of long sentences and lists
8. 3.1 rules paragraph: tightened the five market sentences, kept every date, rule, and citation; reordered by year. (−30)
9. 3.1 FTSE Russell sentences merged; "Throughout ..." definitions merged into one sentence with semicolons; all four definitions (score, rating, coverage, provider) kept. (−15)
10. 3.1 wave paragraph: tightened the November 2022 sentence ("cannot link"), "years after Bursa Malaysia's rule", removed "(Table S2)" duplicate pointer and "when it did". (−15)
11. 3.2: merged data-source sentences; counts sentence merged with the cohort split; Tables S4 and S6 pointer shortened; MTB missing-value sentence shortened; backfill clause shortened. (−30)
12. 3.3: "as recorded in the data set" removed; winsorization list replaced by "all four variables". (−9)
13. 4.1: potential-outcome definition and the ATT gloss moved before Eq. (1), removing a dangling clause. (−4)
14. 4.2: overlap clause, Eq. (6) cohort-composition sentence (now names row R11). (−6)
15. 4.3: Holm sentence merged; "do not condition the analysis on it" to "only as a diagnostic"; cluster paragraph from three sentences to two. (−17)
16. 4.4: "two exploratory checks" to "exploratory checks" (three follow, so also more accurate); M̄ = 0.25 gloss shortened; growth covariate now labeled row R8. (−8)
17. 4.5: TWFE sentence and last two sentences merged; R1 to R5 labeled in place of "The first three checks ... The fourth". (−10)

## Cross-reference changes
- 3.2: "a check in Section 4.5 restricts scored firms to the size range of the controls" now points to Section 5.5, because the 4.5 list that described this check was cut and Section 5.5 reports it.
- No other Section, Table, Fig., or Eq. reference was removed except the duplicate "Eq. (11) and Eq. (6)" mention and "Section 4.4" inside the cut list (Section 4.4 still exists and is referenced from Section 6.2).

## What the reader loses
- The one-paragraph inventory of exploratory checks in Section 4.5 (each check is still defined in Section 5 where it is reported).
- The explicit statement in Section 3 that the score vintage is unknown (kept in Section 7).
- The statement in Section 4.4 that the bound is simpler than Rambachan and Roth's confidence sets (kept in Section 7).
