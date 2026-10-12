# Language round 1 on v4.1: log for group C (Sections 5 to 8)

Editor: independent section editor C. Input: `input_C.md` (identical to manuscript.md lines 160 to 242, checked by diff).
Output: `output_C.md`. No other file edited; no git commands run.

Skills read (SKILL.md, not invoked through the Skill tool): academic-paper (revision discipline, anti-patterns 1 to 8,
no new claims, citations, or numbers), proofreading (checks 1.8, 4, 5, 6), stop-slop (SKILL.md + references/phrases.md,
structures.md, examples.md; applied within the academic register: "we", passive kept where the actor is the provider or
unknown), sciwrite (five passes in order; repo rule overrides its dash advice, so no em dash).

## Word count (project_R/docx_build/checks.py `words`)

| | Words |
|---|---|
| Before (input_C.md) | 4412 |
| After (output_C.md) | 4375 |
| Change | −37 (−0.8%) |

The section did not get longer (hard constraint met). The 5 to 10% aim was not reached: Sections 5 to 8 are already
dense with placeholder statistics, hedges, power statements, and parallel-trends conditionals that the brief protects.
After the clutter cuts below, the remaining candidates for deletion were content (for example, the second "provider
disagreement" sentence in 6.2, which carries Serafeim & Yoon, or the Discussion restatement of the Malaysian null), so
we left them in place. Many sentence splits cost a word each ("so" or "; " replaced by a period and "therefore").

## Integrity checks (script, all PASS)

- {{key}} placeholders: multiset identical to input (byte-exact, none added or removed).
- Citations: multiset of parenthetical and narrative citations identical; none added or dropped.
- Typed numbers outside placeholders: multiset identical (no new number).
- Headings: identical. Exhibit and cross-references (Table n, Table Sn, Fig. n, Fig. Sn, Figs. 1 and 2, Eq. (n),
  Section n.n, assumption (2), rows R1 to R11): all retained; order of first mention unchanged.
- Em dash: 0. Italics/asterisks: 0. "guarantee/prove/verify/ensure": 0. "you": 0.
- Hedges, nulls, MDE/power statements, "Under assumption (2)" conditionals, and the Limitations list (eight items,
  First to Eighth) all retained.

## sciwrite passes

Pass 1, clutter (MINOR unless noted)
- "of the Supplemental Appendix" dropped after Table S1, S5, S7 and Fig. S2 (4 times); the "S" prefix and the first
  mention in Section 3.1 already identify the appendix.
- "Return on assets is available for fewer than half" → "Return on assets covers fewer than half".
- "once comparable firms are used as benchmarks" → "relative to comparable firms" (6.2; same claim, no passive).
- "We do not observe what caused that wave, and we cannot attribute" → "... and cannot attribute".
- "Scored firms are much larger" → "Scored firms are larger" (intensifier; numbers carry the size).
- "much closer to the corresponding R10 estimates" → "closer" (intensifier; weaker, not stronger).
- "Each of these mechanisms implies" → "Each mechanism implies".
- Two MTB sentences in 5.1 merged into one ("Their MTB ratio is also higher, with a mean of ... and a median of ..."),
  removing a parenthetical pair.

Pass 2, voice and verbs
- "No secondary outcome changes significantly ... once its p-value is Holm-adjusted" → "After Holm adjustment, no
  secondary outcome changes significantly ...".
- "a demand shift of a few percent after coverage cannot be excluded" → "we cannot exclude a demand shift ...".
- "A run-up followed by a flat path is what a one-time demand shift ... would produce" → "A one-time demand shift, or
  selection after one, would produce a run-up followed by a flat path" (also removes a Wh- construction, stop-slop).
- "smaller effects would be detected with less than 80% probability" → "our design would detect smaller effects with
  less than 80% probability".
- "The reporting rules in Section 3.1 are dated at the market level ... not observed for each firm" → "We date the
  reporting rules in Section 3.1 by market, not by firm, from ...".
- "when control firms below the size range of scored firms are dropped" → "when we drop control firms ...".
- Kept passives where the actor is the provider or is irrelevant ("scores were backfilled or revised", "firms are
  selected"), per sciwrite's exception list.

Pass 3, sentence architecture (MAJOR: sentences over about 35 words split)
- 5.3: semicolon chains split (run-up definition; joint test and cluster p-values; event year 4; Fig. 2 wave boundaries;
  Thai/Singaporean run-up; remaining cohorts, now three sentences).
- 5.4: "Table 3 ...; rows R1 to R6 ..." split; R10 bound sentence split; re-based estimates sentence (about 55 words)
  split into three; reversal-versus-effect sentence split at the semicolon; R7 and R8 sentences split; Table S5 bound
  sentence restructured so the Δ value comes first, then M̄ = 0.25 and M̄ = 1; upper-limit sentence split.
- 5.5: R1 to R4 sentence (about 60 words) restructured: verdict first ("None of the pre-specified rows R1 to R4 ..."),
  then the four estimates in two sentences; trimmed-sample sentence split; Table S8 decomposition split.
- 5.7: Demiroglu and Ryngaert / MSCI comparison split into two sentences.
- 6.1, 6.2, 6.3, 7, 8: semicolon chains split into sentences (e.g., Limitations items First, Second, Third, Fourth,
  Sixth; Conclusion sentence 2).
- Retained over 35 words (each a list or carries a citation that cannot move without loss): 5.5 no-covariate run-up
  (36), 5.5 early-entrant caveat (37), 5.7 first sentence (37), 5.7 last sentence (36), 6.3 opener (40, a colon list
  of design bounds), 6.3 providers sentence (36), 6.3 listed-firms sentence (38).

Pass 4, terminology (Banana rule)
- "first scored fiscal year" → "first scored year" in 5.4 and 6.3 (fixed term of Section 3.2, which defines it as the
  first fiscal year with a score).
- "The LSEG score is not the rating ..." → "The LSEG ESG score is not the rating ..." (fixed term).
- "When we resample market-by-industry clusters instead of firms" → "With the cluster bootstrap" (5.2), the term used
  everywhere else in Sections 5 to 7.
- "minimum detectable effect" → "MDE" in 5.2 and Limitations (abbreviation defined in Section 4.3; proofreading 6.4).
  "minimum detectable differences" in 5.6 left spelled out because MDE is defined for effects, not differences.
- "run-up" was used in 5.3 before the sentence that defines it ("We call this relative growth the run-up"); reordered so
  the definition precedes the cluster-bootstrap interval for the MTB run-up.

Pass 5, numbers and citations
- No number changed or added; no citation changed. Numbers in Conclusion (mtb_runup_m5, mtb_att, mtb_lo/hi,
  mtb_R10_pct) match the Results placeholders (F9).
- Discussion citations checked against Sections 1 to 4: Durand, Hawn, Berg Heeb, Shanaev & Ghimire, Berg Kölbel,
  Serafeim & Yoon, Bikmetova & Pirinsky, Tsang (2024, 2025), Pástor (2021, 2022), Merton, Chen, Rambachan & Roth, Roth,
  Berg (2020), Sahin, Bernama: all cited earlier (F4 PASS).

## proofreading checklist (relevant checks)

- 5.2 tense: figures and tables referenced in present tense throughout (PASS).
- 5.3 English variant: American. Fixed "afterwards" → "afterward" (2 instances, 5.3 and 6.1).
- 5.4 Oxford comma: PASS in all lists checked ("size, country, and industry"; "rising prices, new shares, or both").
- 5.4 restrictive "which"/"that": "never-scored firms that grew at a similar rate before coverage, and so share ..." →
  removed the comma (restrictive clause continues).
- 5.5 prohibited words: no "very/quite/rather" intensifiers; "much" removed twice.
- 5.10 strong claims: none added; "cannot" statements are all data-availability statements ("we cannot tell",
  "cannot exclude").
- 6 abbreviations: MTB, MDE, TWFE, LSEG, ESG, MSCI, U.S. all defined earlier in the body; MDE now used after its
  definition. FTSE Russell is a proper name.
- 1.8 conclusion: contains key quantitative results; introduces no new content.

## stop-slop patterns found

- Intensifiers: "much larger", "much closer" (cut).
- Wh- construction: "is what a one-time demand shift ... would produce" (restructured).
- Double preposition: "bears on the evidence on ESG demand" → "relates to the evidence on ESG demand".
- Binary contrast "not a random draw" (6.1) and "not the confidence sets of ..." (7) kept: each states a substantive
  distinction, not a rhetorical pivot.
- No throat-clearing, no meta-commentary, no em dashes, no quotable endings found.

## Sentences deleted

None. Every sentence of the input survives in the output, split or reworded.

## Content notes for the lead editor (not changed, wording-only round)

1. 6.3 opens "The results have implications for five groups", but the paragraphs address rating providers and data
   users, exchanges, regulators, ESG investors and index builders, listed firms, and empirical research (six if
   "empirical research" counts separately; it shares the listed-firms paragraph). Either change "five" or attach
   empirical research to "data users".
2. Fig. S2 is cited in 5.4 as "the event-time path under R10" and in 5.5 (with Table S7) as varying "the size covariate
   and the support". Check that one figure holds both, or correct one reference.
3. 6.1 "With parallel paths from the base year, coverage had no effect within the interval of Section 5.2" reads as a
   firm null; the following sentences and 5.2 hedge it. Consider "coverage had an effect within the interval of
   Section 5.2" if that is the intended meaning. Left unchanged.
4. 5.1 "median total assets {{my_asset_ratio_med}} times lower" is a ratio phrased as "times lower"; "a fraction
   1/{{...}}" or "{{...}} times smaller" may be clearer. Left unchanged.
