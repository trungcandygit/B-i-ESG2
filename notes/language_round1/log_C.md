# Log, language round 1, group C (Section 4, Methods, 4.1 to 4.6)

Skills followed: academic-paper (revision discipline: no new claims, citations, or numbers), proofreading (checklist),
stop-slop (academic register per D14).

## Word count (brief's command; display equations excluded)

| Subsection | Before | After |
|---|---|---|
| 4.1 | 231 | about 165 |
| 4.2 | 501 | about 400 |
| 4.3 | 298 | about 250 |
| 4.4 | 235 | about 215 |
| 4.5 | 248 | about 180 |
| 4.6 | 99 | 97 |
| Total (incl. heading) | 1,614 | 1,274 (−21%) |

The target was about 1,200. About 70 of the remaining words are symbol definitions that the input lacked and that
the brief requires after every equation (β~g,t~, u~i,t~, β̂~g,t~, h, z~0.975~, z~0.80~, hatted SE, θ̂~pre~, V̂~pre~,
b̂, θ̃(e), s, Δ, α~i~, λ~t~, D~i,t~, ε~i,t~). Without them the section would be about 1,205 words. Cutting further would
remove required content (design choices, inference caveats, sensitivity methods, R1–R6 vs exploratory list, AI facts).

## Integrity checks

- All eleven display equations byte-identical to the input (diff of `$$` lines: no difference).
- Placeholders kept: {{pct_scored_above_p95}}, {{B_BOOT}} (same set as input; none removed).
- No em dash, no italics, no "you", no banned adverbs or verbs ("approved" in 4.6 is the only substring hit for "prove").
- Eq. (2), (3), (6), (11) cross-references valid; "Table 1", "Table 2", "Table 3", "Section 4.4" kept.

## Deleted sentences or content and why it is safe

| Deleted | Why safe |
|---|---|
| "Given the covariates, scored firms' outcomes would have changed ... as those of never-scored firms did" (4.1) | Verbal restatement of Eq. (2); the equation and its definitions remain |
| "(Callaway & Sant'Anna, 2021)" after Eq. (1) | Same source cited five more times in Section 4 |
| "the pre-trend test ... can have low power ... (Roth, 2022)" in 4.1 | Moved, not deleted: merged with the diagnostic sentence after Eq. (8) to remove a repeated idea |
| "This is the outcome-regression version of the group-time estimator of Callaway and Sant'Anna (2021)" | Eq. (3) and the citation of Sant'Anna and Zhao (2020) identify the estimator; the doubly robust omission is kept |
| "a variant of the simple aggregation in Callaway and Sant'Anna (2021)" | Eq. (6) states the exact weights |
| "a problem that Callaway and Sant'Anna (2021) and Baker et al. (2022) discuss for event-study aggregations" | Both sources cited elsewhere in 4.2 to 4.5; the composition fact and the R11 remedy remain |
| "one of the two comparison groups proposed by Callaway and Sant'Anna (2021)" and "the alternative comparison group of Callaway and Sant'Anna (2021)" | Results (Section 5) still names the Callaway and Sant'Anna comparison group; the design choice and check R1 remain |
| "as the pre-trend analysis of Roth (2022) presumes" | Justification only; Roth (2022) still cited in 4.3 |
| "Market-level differences in disclosure rules (Krueger et al., 2024; Singapore Exchange, 2016) are one reason ..." | Motivation in Methods; both sources cited in the Results paragraph on per-market estimates and elsewhere (6 and 5 manuscript occurrences) |
| Final citation "(Baker et al., 2022; Goodman-Bacon, 2021)" in 4.5 ¶1 | Both cited in the first sentence of the same paragraph |
| "a pre-trend test that fails to reject is weak evidence ... (Roth, 2022)" in 4.4 | Same idea now stated once, in 4.3 |
| "accessed" in 4.6; "also" kept | Wording only; every 4.6 fact kept (tool, vendor, interface, month, five uses, five instances with separate contexts, simulated referee reports, author review and approval before estimation, number checks, responsibility) |

Placeholders removed: none. Citations removed from this section: Krueger et al. (2024) and Singapore Exchange (2016)
(still cited in the Results paragraph on per-market estimates and elsewhere). No citation added.

## Proofreading checklist findings fixed

- Math notation (2.2): symbols undefined in the input now defined right after their equation (list above).
- Abbreviations: MDE defined at first use ("minimum detectable effect (MDE)"); the input used MDE only inside Eq. (7)
  while Results uses it in prose.
- Motivation scope (1.9): removed the disclosure-rules rationale from 4.3 and the repeated Roth power argument from 4.4.
- Italics removed from all symbols and "p-value" (author instruction).
- Parentheses: removed "(a lower bound only)" as a parenthetical; kept only citations, equation numbers, (MDE),
  (Anthropic), and function notation.

## Stop-slop patterns removed

- Redundant restatements (Eq. (1) gloss shortened, Eq. (2) verbal restatement cut).
- Stacked justification clauses ("so that ... as ... presumes"), repeated "we therefore also report".
- Passive where an actor exists: "the p-values are Holm-adjusted" now "we Holm-adjust"; "we do not use one" merged.
- Long list sentences in 4.5 shortened; sentence lengths varied.
