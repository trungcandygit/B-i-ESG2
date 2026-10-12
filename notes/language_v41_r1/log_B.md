# Language round 1 on v4.1: log for group B (Sections 3–4, data and methods)

Editor: independent section editor B. Input: `input_B.md` (identical to manuscript.md lines 66–159). Output: `output_B.md`.
Skills read (SKILL.md, not invoked): academic-paper (revision discipline), proofreading, stop-slop (+ references/), sciwrite.

## Word count (brief's script, display-equation lines removed)

| | Words |
|---|---|
| Before (input_B.md) | 2,616 |
| After (output_B.md) | 2,596 |
| Change | −20 (−0.8%) |

The section is not longer, but it misses the 5–10% aim. Sections 3–4 carried little clutter; most sentences state a sample
rule, a definition, or an estimator choice that cannot go without losing content. Splitting the 13 sentences over 35 words
also cost connecting words. The remaining sentences over 35 words by a naive count all run through a display equation and
its "where" clause, so they read as separate units.

## Integrity checks (script, all PASS)

- {{key}} placeholders: 23 in, 23 out, same multiset; no number typed that was not already in the text.
- Display equations: 11 `$$latex` lines byte-exact and in the same order.
- Headings (10), "Section n" (5), "Eq. (n)" (6), "Table n/Sn" (7), "Fig. S1" (1): unchanged, same positions relative to discussion.
- Citations: 21 author-year citations, same multiset; none added or dropped. The Bernama (2022) citation now closes the second of
  the two sentences it supports (same paragraph).
- No em dash, no en dash, no italics, no "you", none of guarantee/prove/verify/ensure.
- Fixed terms unchanged: LSEG ESG score, scored, unscored, never-scored, first scored year, base year, run-up, total assets,
  market capitalization, coverage, provider.
- Hedges kept: "may precede", "may already have had", "can absorb part of", "in the spirit of", "cast doubt on", "exploratory",
  "do not rely on the test alone", "do not condition the analysis on it", MDE definition, Holm note.

## Sentences deleted

None. One sentence was merged: "Counts differ slightly across tables because each counts the firms with the outcome observed in
the base year and in the year concerned" repeated the rule stated two sentences earlier ("A firm-year enters an estimate only
if its outcome is observed in both the base year and the comparison year"). The table sentence now follows that rule and ends
"counts differ slightly across tables because of this requirement".

## sciwrite passes (in order)

Pass 1, clutter.
- "two exploratory checks that the pre-analysis plan did not contain" → "two exploratory checks not in the pre-analysis plan".
- "In words, M̄ = 0.25 allows" → "Setting M̄ = 0.25 allows" (meta-opener removed).
- Duplicate count explanation in §3.2 merged (see above).
- "phasing in the others over the following two years, starting with the largest companies" condensed to "phased in from the
  largest companies over the following two years".
- "the reports for 2019, filed in 2020" → "the 2019 reports, filed in 2020"; "whose obligation for listed companies began with
  2020" → "that applied to them from 2020".

Pass 2, voice and verbs.
- "the data cannot tell whether the Malaysian wave was linked" → "we cannot tell whether" (false agency, actor named).
- "Market capitalization moves with prices ..., which the data cannot separate" → "which we cannot separate because the data
  contain neither".
- "MTB ratios at or below zero ... are set to missing" → "We set MTB ratios at or below zero ... to missing".
- "the covariates are measured in the base year" → "we measure the covariates in the base year".
- "Cohorts first scored after 2021 are not observed" → "We do not observe cohorts first scored after 2021".
- "We use no covariates and all event years and cluster standard errors by firm" → "We include no covariates, use all event
  years, and cluster standard errors by firm" (parallel verbs, Oxford comma).
- "..., which compares scored firms with never-scored firms" (a clause doing the comparing) → "; this specification compares".
- Robustness list in §4.5 rewritten from a mix of gerunds and nouns into parallel verb phrases ("exclude or isolate",
  "estimate separately", "change", "restrict", "apply", "decompose", "split").

Pass 3, sentence architecture (13 sentences over 35 words in the input).
- §4.1 opening (51 words) split into the notation sentence for G~i~ and a separate sentence for Y~i,t~(g).
- Definitions of score, rating, coverage, and provider (45 words, three semicolons) split into three sentences.
- FTSE Russell sentence (47 words) split at the November 2022 agreement.
- Holm sentence (44 words) split: adjusted p-values in one sentence, unadjusted intervals and the Table 2 example in the next.
- Robustness list (91 words) split into three sentences; the four pre-registered checks (36 words) split into "the first three"
  and "the fourth".
- §4.5 TWFE lead-in: buried predicate "we estimate on scored and never-scored firms the static ... regression" → "we use scored
  and never-scored firms to estimate the static ... regression"; the β sentence split at "With staggered timing".
- Thai rule sentence split at the semicolon; "Second, all comparisons ... use the base year, so a negative estimate ..." split
  into two ("are relative to the base year" / "A negative estimate ... thus means").

Pass 4, terminology.
- "first scored fiscal years" (§3.1) → "first scored years" to match the term fixed in §3.2.
- "the latter form the comparison group" → "these firms form the comparison group" (clear antecedent: never-scored firms).
- "the cell's coefficient vector" and "the cohort's scored firms" → "the coefficient vector of the cell" and "scored firms of the
  same cohort" (no possessive on non-person nouns, proofreading 5.5).
- Abbreviations: ATT, MDE, TWFE defined at first use in the body and unchanged; MTB defined in the Introduction and in §3.3.

Pass 5, numbers and citations. Placeholders, equation numbers, and citations checked by script (above). No numbers moved
between sentences in a way that changes what they describe.

## proofreading checklist

- Abbreviations (Check 6): ATT, MDE, TWFE introduced as "full term (ABBREV)"; no re-expansion after first use.
- Math notation (Check 2): every symbol in Eqs. (1)–(11) is defined in the adjacent "where" clause or before the equation;
  δ(e) is now the explicit subject of the assumption sentence before Eq. (10) instead of "it".
- Equation integration (2.5): each display equation still follows a colon or a sentence that flows into it ("is", ":").
- Grammar and style (Check 5): American English; Oxford comma in the new §4.5 list "We include no covariates, use all event years, and cluster standard errors by firm"; "First, Second, Third"
  kept in §4.2; no "very", "quite", "rather", "utilize".
- Statistics (Check 3): standard errors, percentile intervals, p-values, MDE, Holm adjustment, and the W diagnostic are
  described unchanged.
- Motivation scope (1.9): Methods do not restate motivation; the only "because" clauses in §4 justify an estimator choice
  (overlap, pre-trend power, size and scores), which the brief allows.
- Figures and tables: Table 1, Table 2, Table 3, Table S2, Table S4, Table S6, Tables S7 and S8, Fig. S1 still cited in the same
  places.

## stop-slop patterns (academic register)

- False agency: "the data cannot tell" → "we cannot tell"; "which compares" → "this specification compares".
- Meta-commentary: "In words," removed.
- Rhythm: long definitional sentences split; short sentences such as "Several providers score firms in these markets." kept.
- No binary-contrast or throat-clearing patterns found; "not as a firm's first ESG rating of any kind" and "not the
  controversy-adjusted combined score" are definitional contrasts and stay.
- Adverbs: no filler adverbs present; technical adverbs ("on average", "at the earliest", "together") kept.
- Passive voice kept where the actor is the data provider or irrelevant ("is observed", "is estimated from Eq. (3)", "are
  weighted toward Malaysia and Thailand"), as sciwrite allows for Methods.

## Items left alone (deliberately)

- "Amounts are in U.S. dollars as recorded in the data set": the qualifier says we did not convert currencies.
- "in the spirit of the relative-magnitudes restriction": a hedge, kept.
- "This construction is conservative and simpler than the confidence sets of Rambachan and Roth (2023)": not strengthened.
- "the hatted SE": kept, since the brief keeps the equation and the text needs a name for the symbol.
