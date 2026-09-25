# Phase 1 — Paper-content-blind pre-commitment (contract paraphrase + scoring plans)

Written from the contract JSON and paper metadata (title, field, word count ≈ 2,800, 4 exhibits) only, before the
Phase 2 reading. Provenance caveat: all five seats run in the same model context as the authoring session
(see 07_panel_provenance.json); blindness to paper content is procedural, not enforced by separate contexts.

## Contract paraphrase (all seats)
D1 methodology_rigor (mandatory; owner R1): design, data handling, inference and reproducibility at the level a
finance referee expects. D2 domain_accuracy (mandatory; owner R2): prior work and facts about ESG rating providers
are represented correctly. D3 argumentative_coherence (mandatory; owner DA, eligible R1): the thesis follows from
the evidence without fallacy. D4 cross_disciplinary_relevance (high; owner R3): framing and implications are
accessible and substantiated for adjacent readers. D5 writing_and_structure (normal; owner EIC): organisation,
clarity, exhibits, venue conventions. D6 venue_fit_and_contribution (mandatory; owner EIC): fit with JF:IP Insights
and an original, significant contribution. Failure conditions: F1 fatal on any mandatory → reject; F2 block on any
mandatory → major; F3 ≥ 2 mandatory at warn or worse → major; F4 block on high → major; F5 any warn → minor;
F0 all pass → accept.

## Scoring plans
### EIC — D5, D6
- D5 look for: numbered sections, roadmap, exhibits cited before shown, one-page exhibits, notes ≤ 3 sentences, word
  limit. block: exhibit or word limit exceeded. warn: unclear exhibits or structure defects. fatal: n/a (normal).
- D6 look for: a single sharp finding, credible identification, novelty relative to existing coverage-initiation
  work. block: no contribution beyond known facts. warn: contribution real but framed too narrowly or thinly
  evidenced. fatal: out of scope for a finance journal.
### R1 — D1, D3
- D1 look for: estimator matched to staggered timing, pre-trend handling, inference that respects dependence,
  reproducibility. block: identification of the headline estimate fails without acknowledged sensitivity analysis.
  warn: missing sensitivity or robustness that a referee would expect. fatal: estimates wrong or not reproducible.
- D3 look for: headline claims consistent with estimates. block: causal claim not supported. warn: interpretation
  stretches beyond what the design identifies. fatal: conclusion contradicts results.
### R2 — D2
- look for: correct representation of cited work, facts about LSEG coverage/score history, missing core literature.
  block: misrepresentation of prior work or of the data. warn: missing relevant literature or unaddressed data-
  vendor issues (e.g., backfilled scores). fatal: fabricated or non-existent references.
### R3 — D4
- look for: institutional explanation of coverage waves, external validity statements, implications for investors
  and regulators. block: implications unsupported. warn: missing institutional context. fatal: n/a (high).
### DA — D3
- look for: alternative explanations for the run-up (index inclusion, mechanical size selection), whether the null
  is interpretable, overgeneralization. block: central claim has an unaddressed alternative that explains all the
  evidence. warn: alternative acknowledged but not tested. fatal: central claim logically invalid.

[PRE-COMMITMENT-ACKNOWLEDGED]
