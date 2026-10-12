% Asian Academy of Management Journal of Accounting and Finance (AAMJAF, Penerbit USM) version: sections that differ
% from manuscript.md. Numbers are {{key}} placeholders filled from project_R/outputs/numbers.csv.
% Built by project_R/docx_build/build_aamjaf.py. Guidelines: ejournal.usm.my/aamjaf/submission-guidelines (D-61).
@@ abstract
Most listed firms in Southeast Asia have no environmental, social, and governance (ESG) score, so they sit outside the universe that ESG-screened investors can hold. We ask which firms enter London Stock Exchange Group (LSEG) ESG coverage and whether entry changes their valuation. We compare {{n_treated_all}} non-financial firms in Indonesia, Malaysia, the Philippines, Singapore, and Thailand that received a first score with {{n_never}} never-scored firms. Over the five years before the first score, the market-to-book (MTB) ratio of scored firms grew {{mtb_runup_m5}} percent more than that of never-scored firms, a run-up absent in a large Malaysian wave. Under parallel trends, we detect no MTB gain after the first score (estimate {{mtb_att}}; 95% interval {{mtb_lo}} to {{mtb_hi}}) and no difference between high- and low-score firms. ESG screens built on this provider's scores draw on firms that have often just outgrown their peers.

@@ keywords
Emerging markets; ESG ratings; Firm valuation; Rating coverage; Sustainable finance

@@ ai_declaration
The authors used Claude (Anthropic), through Claude Code, in September and October 2026 to screen research questions, draft the pre-analysis plan, write the R code, edit and revise the text, check references, and simulate referee reports. The authors reviewed every output, checked each reported number against the R output files, and take full responsibility for the content.

@@ cover_letter
Dear Editor,

We submit the manuscript "[[TITLE]]" for consideration in the Asian Academy of Management Journal of Accounting and Finance.

The paper asks which listed firms in Southeast Asia receive an environmental, social, and governance (ESG) score and whether receiving one changes how the equity market values them. We follow {{n_treated_all}} non-financial firms in Indonesia, Malaysia, the Philippines, Singapore, and Thailand that received a first LSEG ESG score and compare them with {{n_never}} never-scored firms. Scored firms had outgrown comparable never-scored firms before their first score, a pattern absent in the large Malaysian coverage wave of 2021 and 2022. Under parallel trends, we detect no rise in market-to-book ratios after the first score and no difference between high- and low-score firms, while a static two-way fixed effects regression on the same data would attribute a valuation gain of {{mtb_R6_pct}} percent to coverage. The paper fits the journal's interest in finance and governance in Asian capital markets and relates to the journal's earlier work on ESG coverage and credit ratings in Asia. We fixed the hypotheses, sample rules, estimator, and robustness checks in a pre-analysis plan before estimation and report all pre-specified results, including a placebo test that fails.

The manuscript is original, has not been published elsewhere, and is not under consideration by another journal. All authors have approved the submission and declare no competing interests. The manuscript file is anonymized; author names, affiliations, and declarations are on the separate cover page. Tables and figures follow the references, each on a separate page, and their positions are marked in the text; the supplementary material contains eight tables and two figures. The LSEG and Compustat data are licensed and cannot be redistributed; the R code, the pre-analysis plan, and all aggregate output files are available on request.

Sincerely,

Nguyen Van Trung, on behalf of Nguyen Thanh Binh, Ha Hong Hanh, and Nguyen Bach Diep
