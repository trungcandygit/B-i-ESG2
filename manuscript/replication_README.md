# Replication package — "Rated Firms Gain Value Before, Not After, Their First ESG Score"

## Requirements
R 4.3 or later with packages readxl, dplyr, tidyr, ggplot2, plm, sandwich (parallel is part of base R).
The licensed input file `DATA GW2.xlsx` (LSEG ESG scores and Compustat Global fundamentals, ASEAN-5, 2014–2024) is not
included; place it at `../Dữ liệu ban đầu và thô/DATA GW2.xlsx` relative to this folder (path set in `R/00_setup.R`).

## Run
    LANG=C.UTF-8 Rscript run_all.R        # about 10 minutes on 4 cores; seed 20260925; B = 999
    LANG=C.UTF-8 Rscript validation/validate_estimator.R   # estimator checks (optional)
Reruns reproduce every CSV byte for byte.

## Exhibit ↔ output map
| Manuscript item | Output file |
|---|---|
| Table 1 | outputs/table1_formatted.csv (raw: table1_raw.csv) |
| Table 2 | outputs/table2_formatted.csv (raw: att_main.csv, pretrend_tests.csv) |
| Figure 1 | outputs/figures/Fig1.eps, Fig1.png (data: event_study.csv) |
| Table 3 | outputs/table3_formatted.csv (raw: att_main.csv, robustness.csv, twfe_static.csv, robustness_revision.csv, heterogeneity_initial_score.csv) |
| Table IA1 | outputs/tableIA1_formatted.csv (raw: leave_one_market_out.csv) |
| Table IA2, Figure IA1 | outputs/tableIA2_formatted.csv, outputs/figures/FigIA1.* (raw: cohort_sizes.csv) |
| Numbers quoted in the text | outputs/numbers.csv (key → formatted value) |
| Sample construction | outputs/sample_flow.csv, coverage_gaps.csv |
| Group-time effects | outputs/att_gt.csv |
| Estimator validation | outputs/validation.csv |

## Pre-analysis plan
`pre_analysis_plan.md` was committed before any effect was estimated. Checks R7–R9 and Table IA1 were added after
the first review round and are labeled exploratory in the paper.
