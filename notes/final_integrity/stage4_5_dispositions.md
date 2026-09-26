# Stage 4.5 dispositions (applied 2026-09-26 on the merged language-round-1 text)

Verdict of the fresh final check: FAIL (0 SERIOUS, 3 MEDIUM, 14 MINOR); all 31 references exist; every number matches R.

| ID | Disposition | Change |
|---|---|---|
| IL-MEDIUM-1 | Fixed (rephrase, option b) | Pre-coverage growth is no longer attributed to Chen et al. (2004), Shleifer (1986) or Harris and Gurel (1986): §2.3 H1, §4.1, §5.1 ¶2 and §5.3 ¶1 rephrased; the growth claim rests on Fig. 1. No new reference added (user instruction: no new authors; Kasch and Sarkar not added). |
| IL-MEDIUM-2 | Fixed | "no specification" → "no heterogeneity-robust specification" (§1, §6.1). |
| IL-MEDIUM-3 | Fixed | §5.2: Hartzmark and Sussman sentence restated within the interval ("we detect no lasting valuation gain ... although the interval admits gains of up to 4.9 percent"). |
| IL-MINOR-1 | No change | Publisher page range 1901–1929 confirmed by WebSearch (Wiley). |
| IL-MINOR-2 | Fixed | Dobrick et al. DOI added (verified). |
| IL-MINOR-3 | Fixed | "M̄ above about 0.01". |
| IL-MINOR-4 | Fixed (restore) | "at the upper end of the headline interval". |
| IL-MINOR-5 | Fixed | Table 3 note: R5 averages event years 0–2; R6 is the Eq. (11) coefficient. |
| IL-MINOR-6 | Fixed | Attrition: "the others have no MTB ratio in event year 3". |
| IL-MINOR-7 | Fixed | §6.2 "some may have had FTSE Russell scores"; §7 third limitation already conditional. |
| IL-MINOR-8 | Fixed | "a change of about −6.6 percent". |
| IL-MINOR-9 | Fixed | §6.3 "trace most of the gap ... with the covariates and event window accounting for the rest (Section 5.5)". |
| IL-MINOR-10 | Fixed | "absence of a detected positive effect". |
| IL-MINOR-11 | Fixed | Roth (2022) cited for pre-trend tests treating dynamics as a nuisance. |
| IL-MINOR-12 | Fixed | Firm-cluster bootstrap described as a nonparametric alternative to the multiplier bootstrap of Callaway and Sant'Anna (2021). |
| IL-MINOR-13 | Fixed | SGX reference notes that the linked page shows the current, amended text. |
| IL-MINOR-14 | Partly | Final full run_all.R rerun with the log saved is scheduled at the final check; S9 overlap rerun and notes/09 not done per user instruction (ledger D-23). |

E6 claim-strength drift:
| Row | Disposition | Reason |
|---|---|---|
| ADV-E6-1 | restore | v2.1 wording "at the upper end of the headline interval" restored (IL-MINOR-4). |
| ADV-E6-2 | restore | Upward drift removed (IL-MEDIUM-3); sentence now weaker than v2.1 and within the interval. |
| ADV-E6-3 | authorize_with_reason | "usually" → "is likely to" is a weakening, parallel to roadmap item M8 (§2.2); the sentence was later removed in language round 1. |

The E6 disposition sidecar script (`scripts/claim_strength_drift_disposition.py`) requires run-local raw session-event
artifacts that this orchestration does not produce; dispositions are recorded here and in the ledger instead.
7-mode Mode 2 (SUSPECTED, narrow) is resolved by IL-MEDIUM-1.
