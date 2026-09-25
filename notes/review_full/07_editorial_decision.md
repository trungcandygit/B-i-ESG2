# Editorial Decision Letter and Revision Roadmap (editorial_synthesizer_agent)

Contract reviewer/reviewer_full/v2. Panel provenance: 08_panel_provenance.json (all five seats share one model
context; same model family and provider; peer outputs visible — correlated-error disclosure applies: the five
reports are role-separated perspectives, not independent reviews).

## Per-dimension matrix (eligible seats)
| Dim | Priority | Eligible seats and judgements | Dimension verdict |
|---|---|---|---|
| D1 methodology_rigor | mandatory | R1 warn | warn |
| D2 domain_accuracy | mandatory | R2 warn | warn |
| D3 argumentative_coherence | mandatory | DA warn, R1 pass (owner DA) | warn (owner decides a 1–1 split) |
| D4 cross_disciplinary_relevance | high | R3 warn | warn |
| D5 writing_and_structure | normal | EIC pass | pass |
| D6 venue_fit_and_contribution | mandatory | EIC warn | warn |

Failure conditions: F1 no fatal. F2 no block. **F3 fires** (four mandatory dimensions at warn). F4 no. F5 fires.
Severity precedence → **editorial_decision = major_revision**. DA CRITICAL issues: none (DA-CRITICAL-VS-ACCEPT
gate not triggered).

## Decision
**Major revision.** The design and honesty of the paper are strengths. The revision must (1) supply sensitivity
evidence for the post-coverage null, (2) address score backfilling and the timing of treatment, (3) frame the
selection result against index-inclusion evidence, and (4) test that no single market drives the result.

## Revision Roadmap (immutable; source-ordered)
| ID | Source | Severity | Obligation | Item |
|---|---|---|---|---|
| RR-1 | R1-W1, DA-2, EIC-W2 | major | required | Trend-robust sensitivity for post-coverage effects (linear pre-trend extrapolation with bootstrap inference; exploratory, labeled as PAP deviation) |
| RR-2 | R1-W2, DA-2 | major | required | Condition on pre-coverage growth (Δ log market cap g−3→g−1) in the outcome regression (exploratory) |
| RR-3 | R1-W3 | major | required | Leave-one-market-out (at least excluding Malaysia) |
| RR-4 | R2-W1, DA-1, R1-W4 | major | required | Discuss backfilled/rewritten LSEG scores (Berg, Fabisik, and Sautner, ECGI WP 708/2020): treatment date, H3 split, direction of bias |
| RR-5 | R2-W2, EIC-W1 | major | required | Frame the selection finding with index-inclusion evidence (Shleifer, 1986; Harris and Gurel, 1986) |
| RR-6 | DA-3 | minor | required | Title/abstract/conclusion: describe an ordering of events, not the provider's decision rule |
| RR-7 | R3-W1 | minor | required | Show cohort-by-market waves (Internet Appendix); state reasons are not observed |
| RR-8 | EIC-W3 | minor | optional | Write Eq. (1) in notation |
| RR-9 | R2-W3 | minor | optional | Note LSEG = former Refinitiv/ASSET4 |
| RR-10 | R3-W2 | minor | optional | One or two concrete implications |

Author adjudication (auto-resolved per CLAUDE.md §1b; recorded in ledger Iter 3): will_address RR-1 … RR-10.
