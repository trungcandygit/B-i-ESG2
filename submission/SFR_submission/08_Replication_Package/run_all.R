# run_all.R: reproduces every number, table and figure in the JF:IP manuscript.
# Usage (from project_R/):  LANG=C.UTF-8 Rscript run_all.R
t0 <- Sys.time()
source("R/00_setup.R")
source("R/01_data.R")
source("R/02_cs_did.R")
source("R/03_estimate.R")
source("R/04_tables_figures.R")
source("R/05_numbers.R")
writeLines(capture.output(sessionInfo()), file.path(OUT, "sessionInfo.txt"))
cat("Done in", round(as.numeric(difftime(Sys.time(), t0, units = "mins")), 1), "minutes\n")
