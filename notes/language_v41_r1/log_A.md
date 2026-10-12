# Language round 1 on v4.1, group A (Sections 1–2): editor log

Input: notes/language_v41_r1/input_A.md (identical to manuscript/manuscript.md lines 20–65). Output:
notes/language_v41_r1/output_A.md. Skills read: academic-paper, proofreading, stop-slop (+ references), sciwrite.

## Word count (BRIEF script)

| | Words |
|---|---|
| Before | 1911 |
| After | 1844 |
| Change | −67 (−3.5%) |

The 5–10% aim was not reached. Sections 1–2 carried little clutter, and the remaining long sentences hold
citations, placeholders, or hedges that the brief protects. Further cuts would have removed content (e.g., the
mechanism lists in 2.2–2.3 or the contribution statements), so we stopped at −3.5%.

## Integrity checks (script: placeholder, citation, number, cross-reference, heading multisets)

- {{key}} placeholders: identical multiset before/after (27 distinct keys, none added, none dropped).
- Citations: identical multiset; none added, none dropped. "Berg, Heeb, et al., 2022" stays attached to the
  sentence that reports its results (2.1 split, see below).
- Typed numbers (2014, 2024, 2019, 2020, 2021, 2022, 2023, 5%, 95%, −2.37, S&P 500, etc.): identical multiset.
- "Section n", "Fig. 1", "Fig. 2" references and all headings: unchanged; Fig. 1 and Fig. 2 still cited where first
  discussed.
- Em dashes 0; italics 0; "you" 0; guarantee/prove/verify/ensure 0.
- Hedges kept: "may partly reflect new shares", "cannot exclude a moderate one", "We do not claim that coverage has
  no effect", "cannot separate a reversal ... from an effect of coverage", "about a quarter", MDE statement,
  "under parallel trends", "can be close to zero", "is consistent with".

## sciwrite passes

Pass 1, clutter (MINOR):
- "investors who screen on ESG data" → "ESG-screening investors" (also aligns with 2.2, see Pass 4).
- "Studies of rating coverage in the United States link" → "U.S. studies of rating coverage link".
- "the publication of Morningstar sustainability ratings" → "publishing Morningstar sustainability ratings".
- "once firms are compared with similar firms outside the index" → "relative to similar firms outside the index".
- "The evidence on changes to existing ratings points to both channels" → "Evidence on rating changes points to
  both channels" (matches "firms with rating changes" in the next sentence).
- "Entry into the scored universe is therefore an event in its own right. It raises ..." → "Entry into the scored
  universe therefore raises ..."; "does entering the scored universe change" → "does entry change".
- H~1~ selection sentence: "no effect after it if ... or a decline after it if ..." → "after it, no effect if ...
  or a decline if it was transitory" (removes the repeated "after it").
- H~3~: "This is the test that separates" → "This test separates".

Pass 2, active voice and verbs (MAJOR where noted):
- "This decline is measured from the end of the run-up" → "We measure this decline from the end of the run-up".
- "once comparable firms are used as benchmarks" → "once comparable firms serve as benchmarks".
- "give a similar asymmetry" → "show a similar asymmetry".
- "the test of the preference channel" (nominal) → "which tests the preference channel".
- Kept passives where the actor is the provider or the market and the sentence reads better with the object first
  ("are followed by", "is not assigned at random"), per sciwrite's "do not mechanically convert".

Pass 3, sentence architecture (MAJOR): split every sentence over about 35 prose words.
- Intro ¶1, 44-word sentence with a buried LSEG relative clause split in two: the score gap, then "Much of the
  academic literature on ESG ratings uses LSEG scores (...)".
- Intro ¶2, ESG-preference sentence (38 words) and the 55-word certification-evidence sentence split into three.
- Intro ¶4, coverage-waves sentence split; placeholder clause now opens with "Of the {{n_treated_all}} ...".
- Intro ¶5, base-year definition moved to its own sentence ("We call the year before the first score the base
  year."); pre-trend test and new-shares caveat split; high/low difference and MDE split.
- Intro ¶6, the "about a quarter" condition was stated twice in adjacent sentences (proofreading 5.9 redundancy).
  Merged into one statement: the decline loses significance at about a quarter; at a quarter the headline interval
  widens. Consistent with Section 5.4 (breakdown value mtb_R10_bd0 = 0.23; R10 interval includes zero at
  M̄ = 0.25) and Section 4.4. No claim strengthened.
- Contributions: first and second items split (43 and 45 words).
- 2.1: Berg, Heeb, et al. sentence (45 words) split into holding pattern + downgrade result; Hawn/Durand sentence
  split; Hartzmark and Sussman semicolon replaced by a period.
- 2.3: disagreement and score-rewriting sentence split; "the provider" made explicit with "has also".
Remaining sentences over 35 tokens are 35–36 only because of citations or placeholders.

Pass 4, terminology:
- "first scored fiscal year" (¶4) → "first scored year", the fixed §3.2 term (g is defined there as the first
  fiscal year with a score, so meaning is unchanged).
- "{{n_never}} firms that were never scored" → "{{n_never}} never-scored firms" (fixed term).
- "ESG-screening investors" now used in both §1 and §2.2.
- "base year", "run-up", "scored", "unscored", "never-scored", "coverage", "provider", "market capitalization",
  "total assets" unchanged elsewhere. "high-score firms"/"low-score firms" in H~1~ match "initial scores" in H~3~.

Pass 5, numbers and citations: no number typed or changed; all placeholders verified against
project_R/outputs/numbers.csv for context (e.g., n_my_2021_2022 = 289 ≤ n_coh_2020_2023 = 577 ≤ n_treated_all = 675,
so "{{n_my_2021_2022}} were Malaysian firms first scored in 2021 or 2022" reads correctly with "Of the
{{n_treated_all}} ..."). No secondary-source statistic introduced.

## proofreading checklist

- Check 1 (structure): intro has motivation, gap ("None of these studies examines valuation in emerging markets"),
  approach, explicit "three contributions" with First/Second/Third, and a roadmap that matches Sections 2–8
  (manuscript headings checked). Related work is thematic (2.1–2.3) and ends with a gap statement; hypotheses are
  explicit (2.4). No change needed.
- Check 2 (notation): g − 1 etc. not used in these sections; H~1~–H~3~ subscripts kept.
- Check 3 (statistics): every comparative claim in §1 carries an interval or p value; MDE kept.
- Check 5 (grammar/style): American English; Oxford comma present in all lists of three; no "very/quite/rather",
  no "utilize"; "Likewise" replaces "In the same way"; tense: literature in present/past as before.
- Check 6 (abbreviations): ESG, LSEG, MTB defined at first body use in §1; U.S. and S&P 500 standard; MSCI, ASSET4
  are names. "two-way fixed effects" left unabbreviated here (TWFE is defined in §4.5, its first abbreviated use).

## stop-slop

- Quotable/announcement phrase removed: "an event in its own right".
- Wh- opener "When we date coverage ..." → "With coverage dated ...".
- No binary-contrast or throat-clearing patterns found beyond the above. "We do not claim that coverage has no
  effect on valuation" is a substantive hedge (F2), not a rhetorical setup, so it stays.
- Adverbs: "permanently" (×2), "partly", "therefore" are technical/logical and kept per D14.
- Score (academic register): Directness 8, Rhythm 8, Trust 8, Authenticity 8, Density 8 = 40/50.

## Sentences deleted

None. One sentence was merged (Intro ¶6, duplicate "quarter" condition); its content survives in the merged pair.
