# 03_estimate.R: main ATTs (H1, H2), event studies, pre-trend tests, robustness R1-R6, heterogeneity (H3).
main <- list(); main_rows <- list(); ev_rows <- list(); pre_rows <- list(); gt_rows <- list()
for (y in names(OUTCOMES)) {
  cat("Main:", y, "\n")
  r <- run_cs(y, control = "never", covars = TRUE)
  main[[y]] <- r
  s <- summ(r)
  main_rows[[y]] <- cbind(outcome = y, s[s$term == "post", ], n_treated_firms = r$n_treated_firms,
                          n_control_firms = r$n_control_firms)
  ev_rows[[y]] <- cbind(outcome = y, s[s$term != "post", ])
  pre_rows[[y]] <- cbind(outcome = y, pretrend_wald(r))
  gt_rows[[y]] <- cbind(outcome = y, r$gt)
}
main_tab <- bind_rows(main_rows)
# Holm adjustment across the three secondary outcomes (H2); the primary outcome is tested alone (H1).
sec <- main_tab$outcome != "ln_mtb"
main_tab$p_holm <- NA_real_
main_tab$p_holm[sec] <- p.adjust(main_tab$p[sec], method = "holm")
main_tab$p_holm[!sec] <- main_tab$p[!sec]
write_out(main_tab, "att_main.csv")
write_out(bind_rows(ev_rows), "event_study.csv")
write_out(bind_rows(pre_rows), "pretrend_tests.csv")
write_out(bind_rows(gt_rows), "att_gt.csv")

# Robustness (pre-analysis plan Section 5).
specs <- list(
  R1_notyet     = list(control = "notyet", covars = TRUE),
  R2_nocovars   = list(control = "never", covars = FALSE),
  R3_dropcovid  = list(control = "never", covars = TRUE, drop_cohorts = c(2020, 2021)),
  R4_support    = list(control = "never", covars = TRUE, support = TRUE),
  R5_placebo    = list(control = "never", covars = TRUE, placebo = TRUE))
rob_rows <- list()
for (y in names(OUTCOMES)) for (sp in names(specs)) {
  cat("Robustness:", y, sp, "\n")
  r <- do.call(run_cs, c(list(y = y), specs[[sp]]))
  s <- summ(r, "post")
  rob_rows[[paste(y, sp)]] <- cbind(outcome = y, spec = sp, s, n_treated_firms = r$n_treated_firms,
                                    n_control_firms = r$n_control_firms)
}
twfe_tab <- bind_rows(lapply(names(OUTCOMES), run_twfe))
rob_tab <- bind_rows(rob_rows)
write_out(rob_tab, "robustness.csv")
write_out(twfe_tab, "twfe_static.csv")

# Heterogeneity by initial ESG score (H3), same bootstrap draws for both groups.
het_rows <- list()
for (y in names(OUTCOMES)) {
  cat("Heterogeneity:", y, "\n")
  rh <- run_cs(y, control = "never", covars = TRUE, treated_subset = TRUE)
  rl <- run_cs(y, control = "never", covars = TRUE, treated_subset = FALSE)
  dd <- rh$est["post"] - rl$est["post"]
  dd_draws <- rh$draws[, "post"] - rl$draws[, "post"]
  se <- sd(dd_draws)
  het_rows[[y]] <- rbind(
    cbind(outcome = y, group = "high_initial_score", summ(rh, "post"), n_treated_firms = rh$n_treated_firms),
    cbind(outcome = y, group = "low_initial_score", summ(rl, "post"), n_treated_firms = rl$n_treated_firms),
    data.frame(outcome = y, group = "difference_high_minus_low", term = "post", est = dd, se = se,
               ci_lo = quantile(dd_draws, 0.025, names = FALSE), ci_hi = quantile(dd_draws, 0.975, names = FALSE),
               p = 2 * pnorm(-abs(dd / se)), mde80 = 2.8 * se, n_treated_firms = NA))
}
write_out(bind_rows(het_rows), "heterogeneity_initial_score.csv")

# ---- Revision round 1 (exploratory; deviations from the pre-analysis plan, see notes/AUDIT_LEDGER.md Iter 4) ----
rev_rows <- list(); lomo_rows <- list()
for (y in names(OUTCOMES)) {
  cat("Revision:", y, "\n")
  ta <- trend_adjust(main[[y]])
  s <- summ(list(est = ta$est, draws = ta$draws), "post")
  rev_rows[[paste(y, "R7")]] <- cbind(outcome = y, spec = "R7_trendadj", s, slope = ta$est[["slope"]],
                                      n_treated_firms = main[[y]]$n_treated_firms, n_control_firms = main[[y]]$n_control_firms)
  r8 <- run_cs(y, control = "never", covars = TRUE, pregrowth = TRUE)
  rev_rows[[paste(y, "R8")]] <- cbind(outcome = y, spec = "R8_pregrowth", summ(r8, "post"), slope = NA,
                                      n_treated_firms = r8$n_treated_firms, n_control_firms = r8$n_control_firms)
  for (cc in sort(unique(panel$country))) {
    rl <- run_cs(y, control = "never", covars = TRUE, exclude_country = cc)
    lomo_rows[[paste(y, cc)]] <- cbind(outcome = y, excluded = cc, summ(rl, "post"),
                                       n_treated_firms = rl$n_treated_firms, n_control_firms = rl$n_control_firms)
  }
}
lomo_tab <- bind_rows(lomo_rows)
rev_tab <- bind_rows(c(rev_rows, list(
  lomo_tab %>% filter(excluded == "MY") %>% mutate(spec = "R9_excludeMY", slope = NA) %>% select(-excluded))))
write_out(rev_tab, "robustness_revision.csv")
write_out(lomo_tab, "leave_one_market_out.csv")
