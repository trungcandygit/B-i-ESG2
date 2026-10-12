## Contract Paraphrase

D1 methodology_rigor (mandatory; owner: methodology). From the methodology seat, this dimension asks whether the research design can identify the quantity the paper claims to estimate, whether the sample and variables are constructed transparently and reproducibly, whether the estimators and inference procedures fit the data structure (panel, clustering, staggered timing), and whether uncertainty is reported so a reader can judge precision and power. Reproducibility affordances (code, seeds, data provenance, a pre-analysis plan) count toward this dimension; the bar is that an applied econometrician could rerun the analysis and obtain the same numbers.

D2 domain_accuracy (mandatory; owner: domain). This dimension concerns whether claims agree with the current evidence in the substantive field, whether prior studies are represented correctly, and whether domain terms and facts are used accurately. It is outside the methodology seat's remit; I do not score it.

D3 argumentative_coherence (mandatory; owner: devil's advocate, methodology also eligible). From the methodology seat, this dimension asks whether the inferential chain from estimates to conclusions holds: whether the language about effects matches what the design can support (association versus causation), whether null or imprecise results are interpreted without overreach, whether alternative explanations that the design cannot exclude are acknowledged, and whether headline numbers in abstract, introduction and conclusion match the reported estimates.

D4 cross_disciplinary_relevance (high; owner: perspective). This dimension concerns accessibility of framing and definitions to adjacent fields and whether interdisciplinary claims are substantiated. It is outside the methodology seat's remit; I do not score it.

D5 writing_and_structure (normal; owner: journal-fit editor). This dimension concerns organisation, clarity, exhibit quality and venue conventions. It is outside the methodology seat's remit; I do not score it, though I may note exhibit errors that affect inference under D1.

D6 venue_fit_and_contribution (mandatory; owner: journal-fit editor). This dimension concerns fit to the configured venue and the originality and significance of the contribution for its readership. It is outside the methodology seat's remit; I do not score it.

## Scoring Plan

### D1: methodology_rigor
dimension_id: D1
what_to_look_for: A clearly stated estimand and identifying assumption; a treatment-timing design whose estimator is robust to heterogeneous effects under staggered adoption; explicit control group definition (never-treated or not-yet-treated); pre-trend diagnostics with formal sensitivity bounds; clustered inference at the level of treatment assignment with the number of clusters reported; sample construction and attrition documented; outcome and covariate definitions with units; effect sizes with confidence intervals and a minimum detectable effect or power statement for nulls; multiple-testing awareness across outcomes and horizons; code, seed and data provenance sufficient to reproduce every reported number.
what_triggers_block: A repairable but decision-relevant design or inference flaw, such as an estimator known to be biased under staggered timing used as the main result without a robust alternative, inference that ignores within-firm or within-cohort dependence, an undocumented or inconsistent sample definition that changes headline estimates, or a mismatch between the described method and the code that produced the reported numbers.
what_triggers_warn: Reporting or robustness gaps that leave the main estimates interpretable, such as missing confidence intervals or power statements for some results, unreported cluster counts, incomplete pre-trend sensitivity, unstated control-group choice in a secondary analysis, or minor inconsistencies between text, tables and outputs.
what_triggers_fatal: The design cannot identify the claimed quantity at all, for example the treatment indicator is mechanically determined by the outcome or by sample selection on the outcome, reported estimates cannot be reproduced from the stated data and code, or the data needed for the core analysis are fabricated or unavailable.

### D3: argumentative_coherence
dimension_id: D3
what_to_look_for: Whether causal or quasi-causal language is limited to what the identification strategy supports; whether a statistically insignificant estimate is described with its interval and power rather than as evidence of no effect; whether competing explanations for any pre-period movement (selection into treatment, anticipation, mean reversion) are named and confronted; whether numbers quoted in abstract, introduction and conclusion equal those in the results exhibits; whether the conclusions follow from the main specification rather than from a selected robustness check.
what_triggers_block: The central interpretation rests on a reading the evidence cannot distinguish from a named alternative, such as attributing a pre-period pattern to one mechanism when the design cannot separate it from selection, or the headline conclusion depends on treating an imprecise null as a demonstrated zero.
what_triggers_warn: Localized overreach or inconsistency that does not overturn the central thesis, such as isolated causal verbs, an alternative explanation acknowledged only briefly, or a quoted number in summary sections that differs from the exhibit by rounding or by specification.
what_triggers_fatal: The main conclusion contradicts the paper's own reported estimates, or the argument is internally inconsistent in a way that no rewording can fix because the stated thesis is not supported by any reported analysis.

criteria_binding_unavailable

[CONTRACT-ACKNOWLEDGED]
