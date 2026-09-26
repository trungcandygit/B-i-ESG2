# 05_numbers.R: every number quoted in the manuscript text, formatted once here (same rounding as the tables).
# Output: outputs/numbers.csv (key, value). The DOCX builder refuses any placeholder not found in this file.
ab <- c(ln_mtb = "mtb", ln_mcap = "mcap", leverage = "lev", ln_asset = "asset")
nums <- list()
put <- function(k, v) nums[[k]] <<- v
pct <- function(b) fmt(100 * (exp(b) - 1), 1)       # log points -> percent change
pp  <- function(b) fmt(100 * b, 1)                   # ratio -> percentage points

sf <- read.csv(file.path(OUT, "sample_flow.csv"))
put("n_universe_firms", fmtn(sf$firms[1])); put("n_universe_fy", fmtn(sf$firm_years[1]))
put("n_nonfin_firms", fmtn(sf$firms[2])); put("n_cov2014", fmtn(sf$firms[3]))
put("n_est_firms", fmtn(sf$firms[4])); put("n_est_fy", fmtn(sf$firm_years[4]))
put("n_treated_all", fmtn(sf$firms[5])); put("n_never", fmtn(sf$firms[6]))

put("n_cov_gap", fmtn(read.csv(file.path(OUT, "coverage_gaps.csv"))$n_cov_gap))
cs <- read.csv(file.path(OUT, "cohort_sizes.csv"))
put("n_coh_2020_2023", fmtn(sum(cs$total[cs$G %in% 2020:2023])))
put("pct_coh_2020_2023", fmt(100 * sum(cs$total[cs$G %in% 2020:2023]) / sum(cs$total), 1))
put("n_my_2021_2022", fmtn(sum(cs$MY[cs$G %in% 2021:2022])))
put("n_th_sg_2019_2020", fmtn(sum(cs$TH[cs$G %in% 2019:2020]) + sum(cs$SG[cs$G %in% 2019:2020])))
put("n_coh_min_year", as.character(min(cs$G))); put("n_coh_max_year", as.character(max(cs$G)))

mt <- read.csv(file.path(OUT, "att_main.csv")); pre <- read.csv(file.path(OUT, "pretrend_tests.csv"))
for (i in seq_len(nrow(mt))) {
  a <- ab[[mt$outcome[i]]]
  put(paste0(a, "_att"), fmt(mt$est[i])); put(paste0(a, "_se"), fmt(mt$se[i]))
  put(paste0(a, "_lo"), fmt(mt$ci_lo[i])); put(paste0(a, "_hi"), fmt(mt$ci_hi[i]))
  put(paste0(a, "_p"), fmtp(mt$p[i])); put(paste0(a, "_pholm"), fmtp(mt$p_holm[i]))
  put(paste0(a, "_mde"), fmt(mt$mde80[i]))
  put(paste0(a, "_ntr"), fmtn(mt$n_treated_firms[i])); put(paste0(a, "_nco"), fmtn(mt$n_control_firms[i]))
  put(paste0(a, "_att_pct"), pct(mt$est[i])); put(paste0(a, "_mde_pct"), pct(mt$mde80[i]))
  put(paste0(a, "_lo_pct"), pct(mt$ci_lo[i])); put(paste0(a, "_hi_pct"), pct(mt$ci_hi[i]))
  put(paste0(a, "_att_pp"), pp(mt$est[i])); put(paste0(a, "_mde_pp"), pp(mt$mde80[i]))
  j <- which(pre$outcome == mt$outcome[i])
  put(paste0(a, "_pre_p"), fmtp(pre$p[j])); put(paste0(a, "_pre_wald"), fmt(pre$wald[j], 2))
}

ev <- read.csv(file.path(OUT, "event_study.csv"))
for (i in seq_len(nrow(ev))) {
  a <- ab[[ev$outcome[i]]]; e <- ev$term[i]; tag <- ifelse(e < 0, paste0("m", -e), as.character(e))
  put(paste0(a, "_e", tag), fmt(ev$est[i])); put(paste0(a, "_e", tag, "_se"), fmt(ev$se[i]))
  put(paste0(a, "_e", tag, "_lo"), fmt(ev$ci_lo[i])); put(paste0(a, "_e", tag, "_hi"), fmt(ev$ci_hi[i]))
  put(paste0(a, "_e", tag, "_p"), fmtp(ev$p[i])); put(paste0(a, "_e", tag, "_pct"), pct(ev$est[i]))
  put(paste0(a, "_e", tag, "_pp"), pp(ev$est[i]))
  if (e < 0) put(paste0(a, "_runup_", tag), pct(-ev$est[i]))   # growth from e to the base year -1
}

rb <- read.csv(file.path(OUT, "robustness.csv")); tw <- read.csv(file.path(OUT, "twfe_static.csv"))
for (i in seq_len(nrow(rb))) {
  a <- ab[[rb$outcome[i]]]; k <- sub("_.*", "", rb$spec[i])
  put(paste0(a, "_", k), fmt(rb$est[i])); put(paste0(a, "_", k, "_se"), fmt(rb$se[i]))
  put(paste0(a, "_", k, "_p"), fmtp(rb$p[i])); put(paste0(a, "_", k, "_pct"), pct(rb$est[i]))
  put(paste0(a, "_", k, "_lo"), fmt(rb$ci_lo[i])); put(paste0(a, "_", k, "_hi"), fmt(rb$ci_hi[i]))
}
for (i in seq_len(nrow(tw))) {
  a <- ab[[tw$outcome[i]]]
  put(paste0(a, "_R6"), fmt(tw$est[i])); put(paste0(a, "_R6_pct"), pct(tw$est[i])); put(paste0(a, "_R6_se"), fmt(tw$se[i])); put(paste0(a, "_R6_p"), fmtp(tw$p[i]))
}

rv <- read.csv(file.path(OUT, "robustness_revision.csv"))
for (i in seq_len(nrow(rv))) {
  a <- ab[[rv$outcome[i]]]; k <- sub("_.*", "", rv$spec[i])
  put(paste0(a, "_", k), fmt(rv$est[i])); put(paste0(a, "_", k, "_se"), fmt(rv$se[i]))
  put(paste0(a, "_", k, "_p"), fmtp(rv$p[i])); put(paste0(a, "_", k, "_pct"), pct(rv$est[i]))
  put(paste0(a, "_", k, "_lo"), fmt(rv$ci_lo[i])); put(paste0(a, "_", k, "_hi"), fmt(rv$ci_hi[i]))
  put(paste0(a, "_", k, "_lo_pct"), pct(rv$ci_lo[i])); put(paste0(a, "_", k, "_hi_pct"), pct(rv$ci_hi[i]))
  if (!is.na(rv$slope[i])) put(paste0(a, "_", k, "_slope"), fmt(rv$slope[i]))
  put(paste0(a, "_", k, "_ntr"), fmtn(rv$n_treated_firms[i]))
}
rv2 <- read.csv(file.path(OUT, "robustness_revision2.csv"))
for (i in seq_len(nrow(rv2))) {
  a <- ab[[rv2$outcome[i]]]; k <- sub("_.*", "", rv2$spec[i])
  put(paste0(a, "_", k), fmt(rv2$est[i])); put(paste0(a, "_", k, "_se"), fmt(rv2$se[i]))
  put(paste0(a, "_", k, "_p"), fmtp(rv2$p[i])); put(paste0(a, "_", k, "_pct"), pct(rv2$est[i]))
  put(paste0(a, "_", k, "_lo"), fmt(rv2$ci_lo[i])); put(paste0(a, "_", k, "_hi"), fmt(rv2$ci_hi[i]))
  put(paste0(a, "_", k, "_ntr"), fmtn(rv2$n_treated_firms[i]))
}
pm <- read.csv(file.path(OUT, "per_market.csv"))
for (i in seq_len(nrow(pm))) {
  a <- ab[[pm$outcome[i]]]
  put(paste0(a, "_pm_", pm$market[i]), fmt(pm$est[i])); put(paste0(a, "_pm_", pm$market[i], "_se"), fmt(pm$se[i]))
  put(paste0(a, "_pm_", pm$market[i], "_p"), fmtp(pm$p[i])); put(paste0(a, "_pm_", pm$market[i], "_ntr"), fmtn(pm$n_treated_firms[i]))
}
rmb <- read.csv(file.path(OUT, "rm_bounds.csv"))
for (i in seq_len(nrow(rmb))) {
  a <- ab[[rmb$outcome[i]]]; m <- gsub("\\.", "", formatC(rmb$Mbar[i], digits = 2, format = "f"))
  put(paste0(a, "_rm", m, "_lo"), fmt(rmb$robust_lo[i])); put(paste0(a, "_rm", m, "_hi"), fmt(rmb$robust_hi[i]))
  put(paste0(a, "_rm", m, "_lo_pct"), pct(rmb$robust_lo[i])); put(paste0(a, "_rm", m, "_hi_pct"), pct(rmb$robust_hi[i]))
  put(paste0(a, "_rm_dmax"), fmt(rmb$dmax[i]))
}
tot <- sum(cs$total)
put("n_my_treated", fmtn(sum(cs$MY))); put("pct_my_treated", fmt(100 * sum(cs$MY) / tot, 1))
put("n_th_treated", fmtn(sum(cs$TH))); put("pct_my_th_treated", fmt(100 * (sum(cs$MY) + sum(cs$TH)) / tot, 1))
put("n_sg_treated", fmtn(sum(cs$SG))); put("n_id_treated", fmtn(sum(cs$ID))); put("n_ph_treated", fmtn(sum(cs$PH)))
lm_ <- read.csv(file.path(OUT, "leave_one_market_out.csv"))
for (i in seq_len(nrow(lm_))) {
  a <- ab[[lm_$outcome[i]]]
  put(paste0(a, "_lomo_", lm_$excluded[i]), fmt(lm_$est[i])); put(paste0(a, "_lomo_", lm_$excluded[i], "_p"), fmtp(lm_$p[i]))
}
put("mtb_lomo_min", fmt(min(lm_$est[lm_$outcome == "ln_mtb"]))); put("mtb_lomo_max", fmt(max(lm_$est[lm_$outcome == "ln_mtb"])))
put("mtb_lomo_minp", fmtp(min(lm_$p[lm_$outcome == "ln_mtb"])))
ht <- read.csv(file.path(OUT, "heterogeneity_initial_score.csv"))
for (i in seq_len(nrow(ht))) {
  a <- ab[[ht$outcome[i]]]; g <- c(high_initial_score = "high", low_initial_score = "low",
                                  difference_high_minus_low = "diff")[[ht$group[i]]]
  put(paste0(a, "_", g), fmt(ht$est[i])); put(paste0(a, "_", g, "_se"), fmt(ht$se[i]))
  put(paste0(a, "_", g, "_p"), fmtp(ht$p[i])); put(paste0(a, "_", g, "_mde"), fmt(ht$mde80[i]))
  if (!is.na(ht$n_treated_firms[i])) put(paste0(a, "_", g, "_n"), fmtn(ht$n_treated_firms[i]))
}

t1 <- read.csv(file.path(OUT, "table1_raw.csv"))
key1 <- c("mtb", "mcap", "lev", "asset", "roa"); dig1 <- c(2, 1, 3, 1, 3)
for (i in seq_len(nrow(t1))) {
  put(paste0("t1_", key1[i], "_tr_mean"), fmt(t1$tr_mean[i], dig1[i])); put(paste0("t1_", key1[i], "_nv_mean"), fmt(t1$nv_mean[i], dig1[i]))
  put(paste0("t1_", key1[i], "_tr_med"), fmt(t1$tr_median[i], dig1[i])); put(paste0("t1_", key1[i], "_nv_med"), fmt(t1$nv_median[i], dig1[i]))
  put(paste0("t1_", key1[i], "_nd"), fmt(t1$norm_diff[i], 2))
}
put("t1_mcap_ratio_med", fmt(t1$tr_median[2] / t1$nv_median[2], 1))
put("t1_asset_ratio_med", fmt(t1$tr_median[4] / t1$nv_median[4], 1))
put("B_BOOT", fmtn(B_BOOT)); put("SEED", as.character(SEED))

# Text form of every p-value: "= 0.xxx" or "< 0.001", so that "*p* {{key_txt}}" reads correctly.
for (k in grep("_p$|_pholm$|_pre_p$", names(nums), value = TRUE))
  put(paste0(k, "_txt"), ifelse(nums[[k]] == "<0.001", "< 0.001", paste("=", nums[[k]])))
numbers <- data.frame(key = names(nums), value = unlist(nums), row.names = NULL)
write.csv(numbers[order(numbers$key), ], file.path(OUT, "numbers.csv"), row.names = FALSE)
