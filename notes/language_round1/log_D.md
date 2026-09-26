# Language round 1, group D (Section 5, Results 5.1 to 5.6): editing log

Skills followed: academic-paper (revision discipline: no new claims, citations, or numbers; anti-patterns), proofreading
(Check 3 statistical relevance, Check 4 figures and tables, Check 5 grammar and style, Check 6 abbreviations),
stop-slop (filler, formulaic structures, rhythm, no em dash).

## Word counts

| Counter | Before (input_D.md) | After (output_D.md) | Change |
|---|---|---|---|
| Brief script (`checks.words`) | 2,611 | 2,001 | −23.4% |
| `wc -w` (the count behind the "about 2,380" target) | 2,391 | 1,819 | −23.9% |

By subsection (`wc`-style): 5.1 215→152; 5.2 261→183; 5.3 418→324; 5.4 640→500; 5.5 595→483; 5.6 220→135.
Target was about 1,750 (`wc`); the output is about 70 words above it. Further cuts would have removed must-keep items
(R10 pre-trend test and bound, R8 limits, R11 sample, breakdown, Holm vs unadjusted p, event year 4 estimates) or
the links to cited work the authors asked for.

## Deleted sentences or results

| Deleted | Why safe |
|---|---|
| 5.1 median leverage values ({{t1_lev_tr_med}}, {{t1_lev_nv_med}}) | Shown in Table 1; the normalized difference {{t1_lev_nd}} still states that leverage barely differs |
| 5.1 median MTB values ({{t1_mtb_tr_med}}, {{t1_mtb_nv_med}}) | Shown in Table 1; replaced by "the medians agree"; mean gap kept |
| 5.1 mean ROA values ({{t1_roa_tr_mean}}, {{t1_roa_nv_mean}}) | ROA is used only descriptively and is in Table 1; the sentence on its limited availability is kept |
| 5.1 "The medians agree" paragraph merged into ¶1 | Same content, no repetition |
| 5.2 "U.S. studies find changes in firm conduct and financial policy after coverage (Bikmetova & Pirinsky, 2026; Tsang et al., 2024, 2025); our outcomes differ from theirs." | Not a confirm/contradict link; Section 6.2 makes the same comparison with the same citations |
| 5.3 market capitalization estimates for event years −5 and −4 ({{mcap_em5}}, {{mcap_em4}}) | Plotted in Fig. 1; the market capitalization run-up is stated once as {{mcap_runup_m5}} percent, and its pre-trend test is kept |
| 5.3 "although the individual MTB estimates for event years −5 and −4 are significant" | The p-values ({{mtb_em5_p_txt}}, {{mtb_em4_p_txt}}) now appear with the estimates in the preceding sentence |
| 5.3 "Falling leverage before the base year and rising total assets fit firms that raise equity or grow their assets before they enter coverage." | Interpretive; the data limit that follows (no share issuance data, so valuation claims rest on MTB) is kept |
| 5.4 R10 market capitalization and asset effects ({{mcap_R10}}, {{mcap_R10_p_txt}}, {{asset_R10}}) | Reported in Table 3; R10 is a valuation check, and its MTB estimate, interval, N, pre-trend test, M̄ = 0.25 bound, and breakdown value are all kept |
| 5.4 R7 market capitalization result ({{mcap_R7}}, {{mcap_R7_p_txt}}) and its interpretation | In Table 3; not used elsewhere in the paper; the MTB trend-adjusted estimate that Section 6.1 relies on is kept |
| 5.4 M̄ = 0.5 interval ({{mtb_rm050_lo}}, {{mtb_rm050_hi}}) | In Table IA5; the text keeps M̄ = 0.25 (must keep) and M̄ = 1 and states that every interval includes zero |
| 5.4 repeat of {{mtb_hi}} in the breakdown sentence | Reported once in 5.2; the sentence now refers to "the upper limit of the unadjusted interval" |
| 5.6 ¶2 repeat of the run-up percentages ({{mtb_runup_m5}}, {{mcap_runup_m5}}) and repeat of {{mtb_hi_pct}} in ¶1 | Each reported once (5.3 and 5.2); 5.6 now refers back to Section 5.3 and "the headline interval" |
| 5.6 second "(Harris & Gurel, 1986)" and second "(Chen et al., 2004; Merton, 1987)" | Same sources cited earlier in the same subsection; 5.6 merged into one paragraph |

## Placeholders removed (all remain in numbers.csv and in the tables or IA)

asset_R10, mcap_R10, mcap_R10_p_txt, mcap_R7, mcap_R7_p_txt, mcap_em4, mcap_em5, mtb_rm050_lo, mtb_rm050_hi,
t1_lev_nv_med, t1_lev_tr_med, t1_mtb_nv_med, t1_mtb_tr_med, t1_roa_nv_mean, t1_roa_tr_mean.
No placeholder was edited or added; all kept placeholders are byte-identical. No typed number was added (4.86 and
"more than 3 percent" are pre-existing cited figures).

## Citations removed

| Citation | Still cited in |
|---|---|
| Bikmetova & Pirinsky, 2026 | Section 6.2 ¶2 (and Section 1/2 per manuscript search: 3 occurrences outside Section 5) |
| Tsang et al., 2024, 2025 | Section 6.2 ¶2 ("Tsang et al., 2024" and "Tsang et al., 2025"), plus other sections |

All other citations are kept in their original form (narrative or parenthetical, spelling, order).

## Must-keep items (brief) present in output

Run-up facts (5.3); headline MTB estimate and 95% CI (5.2); R10 with N, pre-trend p, M̄ = 0.25 bound, breakdown
M̄, and the two readings the data cannot separate (5.4); breakdown statement: upper limit just below 5 percent,
M̄ of {{mtb_bd5}} admits +5%, any departure admits a positive effect (5.4); R8 limits (only g − 3 to g − 1 growth,
matched controls can revert, CI admits several-percent gains) (5.4); R11 cohorts and N (5.4); size overlap
(R4 results, size instability) (5.5); Malaysia/Thailand concentration via per-market N (5.5); CI vs MDE (5.2);
Holm-adjusted vs unadjusted p for total assets (5.2); pre-specified R1–R6 vs exploratory R7–R11 (5.4 ¶1, new
wording of an existing fact from Section 4.5); event year 4 estimates for MTB and market capitalization (5.3); R6 gap
partly due to covariates and window (5.5); every post-coverage statement conditional on assumption (2).

## Proofreading checklist findings fixed

- Italics removed everywhere (*p*, *g*); now plain p, g.
- Check 4: each exhibit (Table 1, Table 2, Fig. 1, Table 3, Tables IA1, IA3, IA5) introduced and interpreted before
  its details; Table 3 now opens with what its rows are (pre-specified vs exploratory) before R10.
- Check 5.9 redundancy: repeated estimates (mtb_hi, mtb_hi_pct, run-up percentages) reported once.
- Check 5.2 tense: figures and tables in present tense.
- Check 5.4: Oxford comma kept in lists; no em dash.
- Two parenthetical groups per sentence reduced (R7 sentence, R10 sentence, 5.1 leverage, market-by-market sentence);
  remaining parentheses are citations, equation numbers, or compact statistics.
- Ambiguous pronoun fixed ("we plot that year but exclude it").
- Check 6: abbreviations MTB, MDE, ESG, S&P used as defined earlier in the manuscript.

## Stop-slop patterns removed

- Intensifier "strongly" (Hartzmark and Sussman sentence) removed.
- Stacked restatement ("The placebo fails, and the failure restates ... in a different form") shortened.
- Filler framings ("which is why", "This estimate assumes ... which is the year of", "Two readings fit the decline.")
  folded into direct statements.
- Formulaic closing sentence of 5.6 ¶2 appended clause ("which is consistent with a provider that ...") dropped, since
  Section 2.2 and 5.1 already make the selection point.

## Could not do

- Target of about 1,750 words (`wc`) missed by about 70 words (1,819); see note under Word counts.
