# Language round 1, group B log (Section 2 and Section 3)

Skills applied: academic-paper (revision discipline: no new claims, citations, or numbers), proofreading checklist,
stop-slop (academic register, D14).

## Word count (brief's command, placeholders count as one word)

| | Words |
|---|---|
| Before (input_B.md) | 1,704 |
| After (output_B.md) | 1,276 |
| Change | −428 (−25.1%) |

The target was about 1,200. We stopped at 1,276 because further cuts would remove must-keep content: coverage
rules, sample counts, attrition, vintage, backfilling, the companion-study sentences, or the M8 documentary facts.

## Deleted sentences or results

| Deleted (input location) | Why it is safe |
|---|---|
| §2.1 "Fund investors react to fund-level sustainability ratings (Hartzmark & Sussman, 2019)" | Same point is made in §1 ¶1 and §6.2 ¶1, both of which cite Hartzmark and Sussman (2019). F4 still holds because §1 cites it before the Discussion. |
| §2.1 "A score from one provider may therefore be a weak signal ... which would weaken both mechanisms" | Folded into the preceding sentence ("Both also require investors to act on this particular score, yet ..."). |
| §2.2 ¶2 entire paragraph (setting: Krueger et al. liquidity result, emerging vs. U.S., "adds least for the firms that receive it") | Motivation for emerging markets appears in §1 ¶3. Krueger et al. (2024) is still cited in §2.2 ¶1 and in §6.1. The size and visibility point returns in §6.2 ¶1. |
| §2.2 ¶3 "An ESG score differs from an analyst report because it rarely contains news about cash flows, and because it arrives with a delay ..." | Stated in full in §6.2 ¶1. Keeping it in both places repeated the idea (F7). |
| §2.3 H1 and H3 repeated citations (Merton, 1987; Pástor et al., 2021; Pedersen et al., 2021; Demiroglu & Ryngaert, 2010) | All four are cited a few lines above in §2.1 and §2.2. The hypothesis wording is unchanged in substance. |
| §3.1 ¶2 clause "changes in disclosure rules (Singapore Exchange, 2016), which raise the information available about listed firms (Krueger et al., 2024), and changes in index membership are possible reasons that we cannot observe" | §6.1 ¶3 gives the same caveat with the same two citations. §3.1 keeps the data limit ("The data do not record why coverage expanded when it did"). |
| §3.1 ¶2 per-market counts for Indonesia, Singapore, and the Philippines | Reported in Table IA2, which the paragraph cites. The Malaysia/Thailand concentration (must-keep) stays with its counts and percentages. |
| §3.1 ¶1 opening "The five markets differ in size, development, and disclosure rules." | Replaced by "Disclosure rules differ across the five markets." Development is still noted for Singapore. |

No result required by the brief's must-keep list was deleted. H1, H2, and H3 remain stated hypotheses. The
[[COMPANION]] anchor and the three sentences after it are byte-identical to the input.

## Placeholders removed

- {{n_id_treated}}, {{n_sg_treated}}, {{n_ph_treated}}: these are the per-market counts for the three smaller markets.
  They appear only in §3.1 of the manuscript. Table IA2 reports them.

All other placeholders are kept byte-exact, and none were added.

## Citations removed from this section

| Citation | Still cited in |
|---|---|
| Hartzmark & Sussman (2019) | §1 ¶1, §6.2 ¶1 |
| Singapore Exchange (2016), second instance | §3.1 ¶1 (kept), §6.1 ¶3 |
| Krueger et al. (2024), second and third instances | §2.2 ¶1 (kept), §6.1 ¶3 |
| Merton (1987), Pástor et al. (2021), Pedersen et al. (2021), Demiroglu & Ryngaert (2010), second instances in §2.3 | §2.1 and §2.2 (kept) |

No citation was added. Every citation kept is unchanged.

## Proofreading checklist findings fixed

- Math notation: the symbol g appeared in §3.2 ¶3 without a local definition. It is now defined where it first
  appears ("A firm's treatment year, g, ..."). Italics were removed from g and g + 1, following the brief.
- Grammar and style: "tested two-sided" kept with "each". The appositive inside the secondary-outcome list was
  ambiguous, so the leverage definition now follows the list ("defined as total debt divided by total assets").
- Parentheses: "(Table IA2 and Fig. IA1 of the Internet Appendix)" became a main clause; "(negative book equity)",
  "(… of the {{n_treated_all}} scored firms have a later year without a score)", "({{pct_my_treated}} percent)",
  "({{n_universe_fy}} firm-years)", "({{pct_attr_e3}} percent)", "(total debt divided by total assets)", and
  "(Section 4.5)" became plain clauses. Only APA citations and the H1 to H3 labels keep parentheses.
- Structure: the related-work subsections stay thematic. §2.2 now ends on the analogy's prediction, which leads
  into H3.
- Tense and consistency: the H2 outcome order is unchanged. §3.3 lists the outcomes in a different order so that
  the leverage definition can come last. The substance is the same.

## Stop-slop patterns removed

- Evaluative opener "The analogy with sell-side coverage is instructive" became "Sell-side coverage offers an
  analogy".
- Padding: "The setting matters for the size of these effects", "Once a firm is scored, it almost always remains
  scored", "for two reasons", and "The files do not record the date on which the scores were downloaded" (now
  "download date").
- The "But if ..." sentence opener was removed together with its paragraph.
- Hedges kept: "We expect", "may", and "suggests". "Never earlier" is kept because it is a technical statement
  about direction, not an intensifier.
- No em dashes, italics, "you", or banned adverbs or verbs (checked by grep).

## Could not do

- We did not reach about 1,200 words. The output has 1,276, a 25% cut. The remaining text is must-keep content or
  documentary facts that reviewers required (M8, S5, S8).
