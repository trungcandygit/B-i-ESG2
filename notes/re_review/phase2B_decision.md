# Phase 2B: Claim Matching (letter revealed), Stage 3' re-review, round stage3prime-round2

Contract 1.1 (#576 three-gate). This is the dedicated Journal-Fit Reviewer (`EIC` wire label) / synthesizer-function integration call. It is read-only with respect to the manuscript.

**Inputs read in this call:** `phase1_precommitment.{json,md}` (as `<phase1_output>`, data), `phase2A_verdicts.{json,md}` (as `<phase2a_output>`, committed; file sha256 `7c9ad466d1dae4d486abe295e96b196fdc7cb83e163a967e8e4fceb3ebe17fd1`, unchanged after this call), `phase1_inputs/` (roadmap and decision letter, configuration cards, traceability schema), `input/revised_manuscript_v2_1.md`, `phase2B_inputs/response_to_reviewers.md` (UNTRUSTED author persuasion), and `phase2B_inputs/title_page_statements_v2_1.md` (title-page statements and companion-study sentence of the submitted single-anonymized version; used as manuscript-side evidence only where the letter's pointer led there). No other repository file was read.

**Instruction/data boundary:** the response letter contains framing ("Addressed", "IRON RULE on citations", "ledger D-11/D-13") but no text directed at the verifier. Its content was used only to fill `authors_claim` and to follow pointers to manuscript text. No verdict moved on assertion alone.

**Sidecar:** `phase2B_traceability.json`. Validation against `phase1_inputs/traceability.schema.json` (python `jsonschema` 4.26.0, Draft 2020-12): **0 errors**. `verdict_record_hash` = `f31e873c8caf60f701177d074f70410d4073f6296a97d42e45d77bd824e4aaab` (sha256 over the sorted-key compact JSON of the 2A artifact; the artifact has no floats, so this equals the RFC 8785 JCS form). The raw-file sha256 above is a separate value. New-issue set: 5 records copied whole-record, byte-identical to 2A after canonical serialization (checked in-script: all 5 equal).

---

## 1. R&R Traceability Matrix (Schema 11)

Verified? mapping: FULLY→YES, PARTIALLY→PARTIAL, NOT_ADDRESSED→NO, MADE_WORSE→NO, CANNOT_VERIFY→CANNOT_VERIFY. Author triage is `will_address` for all 26 items, copied from the author-adjudication statement at the end of the roadmap file. No `author-adjudication/1.0` sidecar exists (see §7), so `authorized_targets` and `claim_strength_authorizations` are empty arrays. Cross-model is `not_configured` on every must_fix row.

### 1.1 must_fix: Required Revisions

| Ref | Item | Original review comment (roadmap) | Author triage | Author's claim (letter, condensed) | 2A verdict | Final status | Revision location | Verified? | Cross-model | Quality assessment |
|---|---|---|---|---|---|---|---|---|---|---|
| R1 | REV-RR-1 | Publication lag: re-date treatment (R10); post-publication average; treatment = first fiscal year with an LSEG score | will_address | §3.2 ¶3 lag; R10 −0.068 (p = 0.004); treatment "described throughout" as first fiscal year | PARTIALLY | PARTIALLY_ADDRESSED | §3.2 ¶2–¶3; §5.4 ¶1; Table 3 R10; §7; Abstract; §8 | PARTIAL | not_configured | Stands. No N for R10; abstract/§8 "arrives" wording. Drift CD-1 |
| R2 | REV-RR-2 | Relative-magnitude bounds and breakdown value; state HonestDiD not computed | will_address | Eq. (10), Table IA5, §5.4 ¶3; HonestDiD not computed (§4.4, §7) | PARTIALLY | PARTIALLY_ADDRESSED | §4.4; §5.4 ¶3; Table IA5; §7 | PARTIAL | not_configured | Stands. No breakdown value; §5.4 ¶3 last sentence contradicts the bounds. Residual must_fix. Drift CD-2 |
| R3 | REV-RR-3 | Mean-reversion counterfactual; R8 as reversal-aware check | will_address | §6.1 three readings; R8 0.028; claim weakened to "no specification detects a valuation gain" | PARTIALLY | PARTIALLY_ADDRESSED | §6.1; §5.4 ¶1–¶2; §8 | PARTIAL | not_configured | Stands. §5.4 ¶1 "neither implies a valuation gain", R8 limits unstated, §8 unconditional. Residual must_fix. Drift CD-3 |
| R4 | REV-RR-4 | Separate valuation (MTB) from size; returns/shares absent (limitation) | will_address | §3.3 ¶1; §7 fourth limitation; title/abstract; §5.3 issuance reading | PARTIALLY | PARTIALLY_ADDRESSED | Title; Abstract; §3.3; §5.3; §7; §1 ¶5 | PARTIAL | not_configured | Stands. Horizon still "five years" (§1 ¶5, §5.3 ¶1); letter silent |
| R5 | REV-RR-5 | Balanced cohorts (R11); exact aggregation weights | will_address | Eqs. (5)–(6); R11 −0.008 (p = 0.806) | PARTIALLY | PARTIALLY_ADDRESSED | §4.2; §5.4 ¶2; Table 3 R11 | PARTIAL | not_configured | Stands. Retained cohorts/firms for R11 not reported |
| R6 | REV-RR-6 | Per-market estimates; composition; cluster-bootstrap caveat | will_address | §3.1 ¶2; §4.3 ¶3; Table IA3; §5.5 ¶3; §6.1 ¶3 | PARTIALLY | PARTIALLY_ADDRESSED | §3.1 ¶2; §4.3 ¶3; §5.5 ¶3; §6.1 ¶3; IA1; IA3 | PARTIAL | not_configured | Stands. No too-narrow-CI caveat; "precise"/"unlikely" in §6.1 ¶3; breadth not qualified in abstract/§8 |
| R7 | REV-RR-7 | Treatment = first LSEG score; other ratings not observed; retitle | will_address | §3.1 ¶1 FTSE Russell (Bernama, 2022); new title; §7 third limitation | FULLY | FULLY_ADDRESSED | Title; §3.1 ¶1; §6.2 ¶1; §7 | YES | not_configured | Stands. Letter consistent with manuscript |
| R8 | REV-RR-8 | Correct positioning incl. non-U.S. work | will_address | §1 ¶3 rewritten; unverifiable non-U.S. candidates not cited | PARTIALLY | PARTIALLY_ADDRESSED | §1 ¶3 | PARTIAL | not_configured | Stands. Element (d) unmet; the letter gives a reason, not a rebuttal on the merits. Drift CD-12 |
| R9 | REV-RR-9 | Coverage rule: index membership and mandates (verified facts); index entry unobserved | will_address | §2.2; §3.1 SGX 711A–711B; §7 fourth limitation | PARTIALLY | PARTIALLY_ADDRESSED | §2.2 ¶1–¶2; §3.1; §7 | PARTIAL | not_configured | Stands. Provider policy unsourced; four mandates undated; SGX deadline sentence mis-dated. Drift CD-4 |
| R10 | REV-RR-10 | Conditional title/abstract/conclusion; limited practical advice | will_address | New title; abstract; "§1 ¶5"; §6.3 "bounded by the MDE"; §8 | PARTIALLY | PARTIALLY_ADDRESSED | Title; Abstract; §1 ¶5–¶6; §5.6 ¶2; §6.3; §8 | PARTIAL | not_configured | Stands. Abstract/§8 unconditional; §6.3 uses MDE as a bound. Drift CD-5 |

### 1.2 should_fix: Suggested Revisions

| # | Item | Original review comment (roadmap) | Author's claim (condensed) | 2A verdict | Final status | Notes |
|---|---|---|---|---|---|---|
| S1 | REV-RR-11 | Describe TWFE benchmark | Eq. (11): no covariates, all years, firm-clustered SEs | PARTIALLY | PARTIALLY_ADDRESSED | Gap still attributed only to staggered-timing bias (residual consider) |
| S2 | REV-RR-12 | MDE vs CI wording | §5.2 rewritten | MADE_WORSE | MADE_WORSE | Pointer (§5.2) already weighed at 2A; §7 adds "even under parallel trends", §6.3 ¶2 repeats MDE-as-bound. Drift CD-6 |
| S3 | REV-RR-13 | Placebo wording; registered vs exploratory; provide plan | §5.5 ¶2; §4.5 R1–R6 vs R7–R11; plan "in the replication package (IA introduction)" | PARTIALLY | PARTIALLY_ADDRESSED | No IA introduction exists; plan undated; §4.5 "five" checks lists six, omits R6 (residual should_fix). Drift CD-7 |
| S4 | REV-RR-14 | Observation counts and attrition | Table IA4; §3.2 ¶2 | PARTIALLY | PARTIALLY_ADDRESSED | Event-time counts, attrition/MTB ≤ 0 handling, "full grid" wording absent (residual consider) |
| S5 | REV-RR-15 | R4 lower bound only | §4.5 ¶2 | FULLY | FULLY_ADDRESSED | n/a |
| S6 | REV-RR-16 | Data/code availability and statements | Title page of submitted version carries the statements | CANNOT_VERIFY | **PARTIALLY_ADDRESSED (ADJ-1)** | Statements present; shareability of identifiers/derived variables/vintage not stated (residual should_fix). Drift CD-11 |
| S7 | REV-RR-17 | Data errors and pooled winsorization | §7 fifth limitation | PARTIALLY | PARTIALLY_ADDRESSED | Consequence for change-based estimates not noted (residual consider) |
| S8 | REV-RR-18 | Consistent significance stars | Table 2 no stars; Table 3 note | FULLY | FULLY_ADDRESSED | n/a |
| S9 | REV-RR-19 | Tsang et al. (2024) author names | Corrected | FULLY | FULLY_ADDRESSED | n/a |
| S10 | REV-RR-20 | Recast comparisons; analyst analogue; temporary vs permanent | §2.2 ¶3, §6.2 ¶1 as channels; §1 ¶2, §5.6 | PARTIALLY | PARTIALLY_ADDRESSED | §6.2 ¶1 does not cite Hartzmark and Sussman; §5.2 still "contrasts"; Shleifer cited for reversal (residual consider). Drift CD-8 |
| S11 | REV-RR-21 | Vintage, score field, non-definitive scores | §3.2 ¶1, ¶3; §5.5 ¶4; download date pending | PARTIALLY | PARTIALLY_ADDRESSED | Vintage absent; letter concedes (residual consider) |
| S12 | REV-RR-22 | Demand/disagreement/size-bias literature | §2.1 ¶2, §6.2 ¶2 | FULLY | FULLY_ADDRESSED | Minor letter pointer error, no verdict effect (CD-10) |
| S13 | REV-RR-23 | Recognition explanation labelled untested | §6.2 ¶1; foreign-ownership limits "not in the data (§7)" | PARTIALLY | PARTIALLY_ADDRESSED | Foreign-ownership limits appear nowhere in the manuscript (residual consider). Drift CD-9 |
| S14 | REV-RR-24 | Remove "first round of review" remark | Removed | FULLY | FULLY_ADDRESSED | See PLO-1 |
| S15 | REV-RR-25 | Companion study named in submitted version | Submitted §3.2 ¶1 names it | NOT_ADDRESSED | **FULLY_ADDRESSED (ADJ-2)** | Named with authors, title, journal; non-overlap sentences kept. Verified on the supplied excerpt |
| S16 | REV-RR-26 | Figure 1 note; report e = 4 | Note explains markers etc.; §5.3 ¶2 e = 4 MTB | PARTIALLY | PARTIALLY_ADDRESSED | Note lacks control group, covariates, N, reason for excluding e = 4; e = 4 market cap unreported (residual consider) |

### 1.3 consider items

None. The roadmap has no consider items.

### 1.4 New issues (frozen at Phase 2A `[EVIDENCE-COMMITTED]`, copied unchanged)

| # | Attribution | Severity | Location | Description (abridged; full frozen text in the sidecar) |
|---|---|---|---|---|
| NEW-1 | regression | major | §5.4 ¶1 (R10) | R10 is identified under parallel trends from base year g, the peak year; no pre-trend diagnostic or bound for R10; the abstract reports it unconditionally; §5.4 ¶3 calls the "including row R10" claim assumption-free |
| NEW-2 | regression | minor | §4.3 ¶2 | p/CI disagreement attributed to bootstrap asymmetry; in Table 2 it comes from Holm-adjusted p vs unadjusted CI |
| NEW-3 | regression | minor | §4.2 ¶2 | Poor size overlap is used to drop the propensity model, but it also affects the kept outcome regression; no overlap diagnostic |
| NEW-4 | regression | minor | §1 ¶5 | Double negative ("−0.132 log points lower") |
| NEW-5 | previously_missed | minor | Headings | Heading levels do not encode the section/subsection hierarchy |

---

## 2. Adjustment records (relaxation boundary)

Two verdicts differ from 2A. Both carry typed records with a basis from the closed set and manuscript-side anchors. No adjustment uses `valid_rebuttal`, so the critical-rebuttal check does not apply, and `pending_rebuttal_upgrades` is empty.

| ID | Item | From → To | Basis | Manuscript-side anchor | Rationale |
|---|---|---|---|---|---|
| ADJ-1 | REV-RR-16 (should_fix) | CANNOT_VERIFY → PARTIALLY_ADDRESSED | `author_pointer_located_evidence` | Title page, Data availability statement ("... licensed and cannot be redistributed by the authors ... the code and all output files are available as supporting material and will be deposited upon acceptance"); Funding, Conflict of interest, Ethics, Author contributions statements | 2A's CANNOT_VERIFY rested only on the title page being outside the input set. The letter pointed there, and the title page is part of the submitted package. The statements exist, but they do not say whether identifiers, derived variables, or the data vintage can be shared, as the Phase-1 pattern lists. Residual: should_fix |
| ADJ-2 | REV-RR-25 (should_fix) | NOT_ADDRESSED → FULLY_ADDRESSED | `author_pointer_located_evidence` | Submitted single-anonymized §3.2 ¶1: "... a companion study with a different research question (Nguyen Thanh Binh, Nguyen Van Trung, and Nguyen Anh Tuan, 'GRI Adoption and Corporate Brownwashing: Board Governance Evidence from ASEAN-5,' under review at the International Journal of Management and Sustainability)"; §3.2 ¶1 non-overlap sentence retained | The criterion targets the submitted single-anonymized version, which 2A did not have. The pointer leads to a real manuscript sentence that names the study; the non-overlap statement is kept. Caveat: verified on the supplied excerpt, not on the full single-anonymized file (PLO-6) |

**Letter pointers followed that did not change a verdict:**
- RR-12: §5.2 was already weighed at 2A. §7 and §6.3 still contradict it.
- RR-13: "IA introduction" does not exist in the manuscript.
- RR-23: §7 does not mention foreign ownership.
- RR-20: §6.2 ¶1 does not use Hartzmark and Sussman.
- RR-8: the stated reason for not citing non-U.S. work is not evidence that the literature is absent, so `valid_rebuttal` is not admissible.
- RR-2: the letter declines exact HonestDiD sets. The operationalization already accepts that limit, and the missing element (a breakdown value) is neither provided nor rebutted.
- RR-21: the letter says the vintage is still pending.

---

## 3. Claim drift (letter vs manuscript)

| ID | Item | Letter says | Manuscript shows |
|---|---|---|---|
| CD-1 | RR-1 | Treatment "described throughout as the first fiscal year with an LSEG score" | Abstract: "The first score arrives near a valuation peak"; §8: "The first LSEG score therefore arrives near a valuation peak". Both describe an arrival event. R10 has no N |
| CD-2 | RR-2 | "Addressed with a stated limit" | The stated limit (no HonestDiD sets) is disclosed. The roadmap-named breakdown value is neither reported nor declined. The letter does not mention §5.4 ¶3's last sentence ("does not depend on that assumption holding exactly"), which Table IA5 contradicts |
| CD-3 | RR-3 | "The claim is weakened to 'no specification detects a valuation gain'" | True in §6.1 ¶2 only. Abstract ("not before a gain"), §1 ¶5 ("do not gain afterwards"), §5.4 ¶1 ("neither implies a valuation gain"), and §8 ("rather than before a gain") remain unconditional |
| CD-4 | RR-9 | "Addressed / data limit" | The unmet elements need documentary sources, not data: the provider's coverage policy (unsourced), mandate dates for Malaysia, Thailand, Indonesia, and the Philippines. The SGX sentence describes a later reporting deadline than the 2016 rule it cites |
| CD-5 | RR-10 | "§1 ¶5 ('We do not claim...')", "§6.3 implications bounded by the MDE" | The sentence is §1 ¶6. Using the MDE as a bound is the error RR-12 targets, so the pointer shows the problem, not a fix. Abstract and §8 are not conditional |
| CD-6 | RR-12 | "Addressed" (§5.2 only) | §7 seventh limitation ("cannot rule out valuation effects smaller than about 7.0 percent even under parallel trends") and §6.3 ¶2 retain the MDE-as-bound statement |
| CD-7 | RR-13 | "Pre-analysis plan is in the replication package (IA introduction)"; "§4.5 separates pre-specified (R1–R6)" | The manuscript has no Internet Appendix introduction and no plan location or date. §4.5 lists six items as "five robustness checks" and does not name R6 as pre-specified. Only the Table 3 note uses R1–R6/R7–R11 |
| CD-8 | RR-20 | "§2.2 ¶3 and §6.2 ¶1 use ... Hartzmark and Sussman as channels" | §6.2 ¶1 does not cite Hartzmark and Sussman. §5.2 still says the estimate "contrasts with" their fund-flow evidence |
| CD-9 | RR-23 and "points of disagreement" | "Foreign-ownership limits are not in the data (§7)"; "stated as limitations (§7)" | The words "foreign" and "foreign-ownership" do not occur in the manuscript. §7 names only "ownership" |
| CD-10 | RR-22 | Dobrick et al. (2023) at "§2.1 ¶2 and §6.2 ¶2" | Dobrick et al. is in §2.2 ¶1, §4.2, and §5.1 (pointer error only; verdict unaffected) |
| CD-11 | RR-16 | "Addressed ... code availability in the replication package" | The title page says code is "available as supporting material and will be deposited upon acceptance" (no repository). It does not state whether identifiers, derived variables, or the vintage can be shared |
| CD-12 | RR-8 | "Addressed" | Element (d) (non-U.S. coverage-initiation evidence) is unmet. The letter's reason is non-verification of candidates, not absence of such work |
| CD-13 | aggregate | All 26 items marked "Addressed" (six with qualifiers) | Final verification: 7 FULLY_ADDRESSED, 18 PARTIALLY_ADDRESSED, 1 MADE_WORSE. For RR-4 (horizon), RR-5 (R11 N), RR-6 (CI caveat), RR-11, RR-14, RR-17, and RR-26 the letter describes what changed accurately but omits the unmet element |

---

## 4. Commitment Ledger Verification (Kong A1)

No Schema 11 row carries a `commitment_extracted` list: no `revision_coach_agent` Step 3.5 output and no author-adjudication sidecar exist. The formal pass is therefore vacuous: no `COMMITMENT_GAP` entries and no `EVIDENCE_TYPE_UNSPECIFIED` advisories. The letter contains three forward-looking commitments. They are recorded as advisory observation PLO-5 and have no decision effect:

1. Confirm and report the download date (RR-21): not fulfilled.
2. Shorten to the JF:IP limit: not fulfilled.
3. Deposit code "upon acceptance": future; no repository named.

---

## 5. Decision derivation

**Operands (final, post-2B verdicts):**
- must_fix (10): FULLY 1 (RR-7); PARTIALLY 9, with residual classes must_fix 2 (RR-2, RR-3) and should_fix 7 (RR-1, 4, 5, 6, 8, 9, 10). NOT_ADDRESSED, MADE_WORSE, and CANNOT_VERIFY are all 0. The driving severity is `major` for all 10; none is critical.
- should_fix (16): FULLY 6, PARTIALLY 9 (residual should_fix 2: RR-13, RR-16; consider 7), MADE_WORSE 1 (RR-12), NOT_ADDRESSED 0, CANNOT_VERIFY 0.
- `should_fix_addressed_rate` = |{FULLY, PARTIALLY}| / |should_fix| = 15/16 = 93.75%. On 2A verdicts it was 13/16 = 81.25%. The 2A summary figure of 5/16 used FULLY only and is not the protocol definition (PLO-8).
- New issues: regression NEW-1 (major), NEW-2, NEW-3, NEW-4 (minor). Non-regression NEW-5 (previously_missed; goalpost guard, not in the decision path).
- Escalations: none. Dissents: none. Cross-model: not configured.

**Step 1: gates**
- **G0: fires.** The input manifest is incomplete. Phase 1 carries a placeholder `input_manifest_hash` (64 zeros). No conforming `input_manifest.schema.json` 1.1 artifact binds the five hard-required inputs. The `revision_evidence_bundle` and the `author_adjudication/1.0` sidecar do not exist, because the revision was a full rewrite, which the authors recorded as a deliberate choice, and no patch 1.1/apply-report 1.3 chain was produced. `scripts/check_re_review_synthesis.py` cannot hash-load or replay the bundle. **Contract outcome: `[RE-REVIEW-ABORT: manifest_incomplete]`.** The sidecar records `decision_state: aborted`, `abort_reason: manifest_incomplete`, and omits `reject_recommended` (gated emission).
- G1: clean. Both verdict changes (RR-16, RR-25) carry `adjustment_id` (ADJ-1, ADJ-2). No silent change.
- G2: no pending state. There are no dissents, divergence rows, pending escalations, or G2(d) reapplications.

**Step 2: base decision.** Evaluated for the record so that the user sees the substantive outcome the gate withholds. Advisory; not the emitted state.
- B1: no. No must_fix MADE_WORSE, and no critical regression.
- B2: no. 0 of 10 must_fix items are in {NOT_ADDRESSED, MADE_WORSE}.
- **B3: fires (first match).** NEW-1 is a `regression`-attributed new issue with severity `major`.
- B4 would also fire: RR-2 and RR-3 are must_fix PARTIALLY_ADDRESSED with a `must_fix` residual. B5 conditions are also present: RR-12 should_fix MADE_WORSE; NEW-2, NEW-3, and NEW-4 are minor regressions. Both are superseded by B3.
- **Candidate base: Major Revision**, `reject_recommended: false`.

**Step 3: floors.** There are no approved escalation exceptions, so no floor applies. The candidate stays at Major Revision.

**Sensitivity:** the two adjustments do not move the decision. On the 2A verdicts, B3 fires identically, via NEW-1 and also via RR-2/RR-3 under B4. Removing NEW-1 would still give Major Revision via B4.

**Result:** the emitted contract state is `aborted (manifest_incomplete)`. The substantive candidate under Steps 2–3 is **Major Revision (rule B3; B4 also satisfied)**. Both lead to Stage 4' in practice. The manifest gap cannot be repaired retroactively for this round, because a full rewrite has no bundle. The orchestrator must surface the abort at the Stage 3' checkpoint and record in the ledger that the Major Revision candidate was not checker-replayed.

---

## 6. Judge Record (#539)

- **Verification judge:** Claude Opus 5.5 (`claude-opus-5-5`), Anthropic model family. This is the same session family that drove the revisions.
- **Round-1 panel provenance:** status `invalid`. Reason: the `review-panel-provenance/1.0` artifact the roadmap names (`07_panel_provenance.json`) was not in this call's input set, so it was not digest-verified or replay-validated. `artifact_sha256`, `normalized_manifest_sha256`, and `execution_topology_sha256` are unknown, and all six axes are `unknown`.
- **Blind cross-model pass:** `not_configured`. The run-level same-family disclosure applies.
- **Pre-committed criteria:** `precommitment_hash` = `f94157217ab092614a40e96e6c869dacae30579c319b65da9a5a1e85ba63df79`.
- **Prompt/rubric surfaces:** `academic-paper-reviewer/references/re_review_mode_protocol.md` (§ Three-Gate Orchestration / Phase 2B, § Decision Derivation, § Verifier Routing, § Commitment Ledger Verification, § Judge Provenance). Contract `shared/contracts/re_review/traceability.schema.json` 1.1. Skill v1.11.1.
- **Reviewer configuration:** `round1_cards_reused` (Round-1 Phase 0 cards, `reviewer_configuration_cards.md`).
- **Routing:** `[ROUTING-DEGRADED: unmapped labels — unparsed REV-RR-1 "R1-W1, R2-W1, DA-M4, EIC-W1"; unparsed REV-RR-2 "R1-W2, DA-C1, EIC-W1"; unparsed REV-RR-3 "R1-W3, DA-C1"; unparsed REV-RR-4 "R1-W4, EIC-W2, DA-M1"; unparsed REV-RR-5 "R1-W5"; unparsed REV-RR-6 "R1-W6, DA-m2, R3-W3"; unparsed REV-RR-7 "R2-W2, R3-W2, DA-M4"; unparsed REV-RR-8 "R2-W3, EIC-W3"; unparsed REV-RR-9 "R2-W4, R3-W1, EIC-W4, DA-M2"; unparsed REV-RR-10 "EIC-W1, R3-W6, DA-C1"; unparsed REV-RR-11 "R1-W7"; unparsed REV-RR-12 "R1-W8"; unparsed REV-RR-13 "R1-W9, DA-M3, EIC-W5"; unparsed REV-RR-14 "R1-W10"; unparsed REV-RR-15 "R1-W11"; unparsed REV-RR-16 "R1-W12, EIC-W8"; unparsed REV-RR-17 "R1-W13"; unparsed REV-RR-18 "R1-W14, EIC-W10"; unparsed REV-RR-19 "R2-W5"; unparsed REV-RR-20 "R2-W6, R2-W8"; unparsed REV-RR-21 "R2-W7"; unparsed REV-RR-22 "R2-W9"; unparsed REV-RR-23 "R3-W5, DA-m4"; unparsed REV-RR-24 "EIC-W7, DA-m5"; unparsed REV-RR-25 "EIC-W9"; unparsed REV-RR-26 "EIC-W11, DA-m3"]`
  - The roadmap Sources cells use finding IDs (`R1-W1`), not seat labels. Under the §10 whole-token grammar every token is dropped, so each item is a parse failure. Phase 1 normalized the labels by taking the prefix before "-". That rule is outside the grammar, and it yields the seats recorded in `verified_by`: RR-1–6 and RR-11–18 → R1; RR-7–9 and RR-19–22 → R2; RR-23 → R3; RR-10 and RR-24–26 → EIC.
  - The Phase 2A line "card_mapped" overstates the status. The seat assignments are substantively the intended ones, but they were not derived by the contract grammar.
- **Apply-report chain:** `apply_chain_witness: not_run_no_reports`. There are no apply reports: the revision was a full rewrite, and the diff `diff_v1_1_to_v2_1.patch` is the only change record.
- **Evidence seen by the judge:**
  - Phase 2A: revised and original manuscripts, diff, Fig1/FigIA1 PNGs, roadmap and decision letter, Round-1 reports and cards.
  - Phase 2B: the above via 2A artifacts, plus the revised manuscript re-read, the Response to Reviewers, and the title-page statements file.
  - Deviations: no revision-evidence bundle, no apply report, no author-adjudication sidecar, and no Round-1 provenance artifact.
- **Judging budget:** one Phase 2B integration call; about 200k input tokens read (protocol, schema, Phase 1/2A artifacts, revised manuscript, letter); no external or network calls.

This verification round ran on the same model family that drove the revisions; over-optimization to this judge's latent biases is possible (Ren et al. 2026, arXiv:2607.13104 §8.1.2).

**Known contract gaps (checker cannot replay: `manifest_incomplete`):**
1. No `revision-evidence-bundle/1.0` and no patch 1.1/apply-report 1.3. The full rewrite was recorded by the authors as a deliberate choice.
2. The `input_manifest_hash` in Phase 1 is a placeholder (all zeros), and no manifest 1.1 artifact exists.
3. No `author-adjudication/1.0` sidecar. Author triage was copied from the roadmap file's prose statement, and `authorized_targets` are empty because no block-scoped targets exist.
4. The Round-1 panel provenance was not replay-validated.
5. The routing grammar is degraded (above).
6. RR-16 and RR-25 were verified on an excerpt of the submitted single-anonymized version, not on the full file.

---

## 7. Post-letter observations (decision-inert; next-round seed)

- **PLO-1:** §4.6's "simulated referee reports that informed the revision" agrees with the 2A reading of RR-24. Keep the AI disclosure, and make sure the submitted text does not imply a prior journal round.
- **PLO-2:** Length. The letter gives about 7,200 words of main text; a crude count of §1–§8 gives about 8,200. The letter concedes the text exceeds the JF:IP limit. Venue compliance is unverified.
- **PLO-3:** Unverifiable letter statements: `rm_bounds()` in code, the plan's location, and "no new references in v2.1 relative to v2" (v2 is not in the inputs).
- **PLO-4:** The response letter cites internal "ledger D-11/D-13". Replace these with concrete statements.
- **PLO-5:** Three forward commitments are unfulfilled: vintage, length, and code deposit.
- **PLO-6:** Confirm that the file uploaded to the single-anonymized JF:IP system is the named-author version that carries the companion-study citation.
- **PLO-7:** The routing grammar is degraded (Judge Record).
- **PLO-8:** The 2A should_fix rate arithmetic was informational and non-protocol.

---

## 8. Consolidated revision list for Stage 4'

Minimum remedies only. Every new number must come from an R output CSV (FORCE RULE §2). Where the authors say the data do not exist (returns, shares outstanding, ownership, index membership, publication dates, other providers' ratings, foreign ownership), the acceptable remedy is an explicit, specific limitation. No analysis may be fabricated.

### 8.1 Residual must_fix (9)

| # | Item | Location | Minimum remedy |
|---|---|---|---|
| M1 | RR-2 (residual must_fix) | §5.4 ¶3 last sentence; Table IA5; §4.4 | (a) Delete or rewrite "whereas the absence of a positive effect ... does not depend on that assumption holding exactly". (b) Report a breakdown value of M̄ from the existing Eq. (10) code: the smallest M̄ at which the robust interval admits +5% (log 0.049) and the value at which it admits any positive effect. The baseline upper limit (0.048) already sits at the +5% edge, so state that. (c) Condition the headline post-coverage statement on these bounds |
| M2 | RR-3 (residual must_fix) | §5.4 ¶1 ("neither implies a valuation gain"); §5.4 ¶2 last sentence ("nets out the reversal"); §6.1 ¶2 first evidence; §8 | (a) Rewrite §5.4 ¶1: under the reversal reading, the R10 decline is compatible with a positive coverage effect that offsets part of the reversal. (b) State R8's limits: it conditions only on g−3 to g−1 market-cap growth, matching on pre-trends risks regression to the mean, and its CI (about −0.021 to 0.077) admits gains of several percent. (c) Replace "nets out" with "partly accounts for". (d) Make §8 and §1 ¶5 conditional ("under parallel trends, no gain is detected") |
| M3 | RR-1 | Abstract last sentence; §8 ¶1; Table 3 R10 (or IA) | Report N (scored/control firms) for R10 per outcome from R output. Replace "The first score arrives" with wording tied to the first scored fiscal year, for example "The first scored fiscal year coincides with a valuation peak" |
| M4 | RR-4 | §1 ¶5 ("five years earlier"); §5.3 ¶1 ("five years and four years before the base year"); Abstract sentence 2 | Correct the horizon: e = −5 and e = −4 are four and three years before the base year e = −1. Name the outcome in the abstract ("market capitalization and MTB grew faster") |
| M5 | RR-5 | §5.4 ¶2; Table 3 R11 | Report the number of cohorts and scored/control firms retained in R11 (from R output). Event-time weights are optional |
| M6 | RR-6 | §4.3 ¶3; §7 sixth limitation; §6.1 ¶3; Abstract; §8 | Add one sentence: the firm-level bootstrap does not account for correlation within market-level coverage waves, so CIs and pre-trend p-values may be too narrow. Remove "precise" for Thailand (SE 0.047) and soften "unlikely". In abstract/§8 say the scored sample is concentrated in Malaysia and Thailand (84.3%) |
| M7 | RR-8 | §1 ¶3 ("comes mainly from U.S. firms") | Search for and cite verified non-U.S. studies of ESG-coverage initiation with market outcomes. If none can be verified, narrow the sentence to what is cited ("the studies we cite use U.S. firms") and state the scope. Unverified citations are not acceptable |
| M8 | RR-9 | §2.2 ¶1 (provider policy); §3.1 ¶1 (SGX timing); §3.1 ¶2 / §6.1 ¶3 (other mandates) | (a) Cite LSEG's published ESG-score methodology/coverage document for the coverage-policy sentence, or relabel it as an assumption. (b) Correct the SGX sentence to the rule in force in the sample period, or cite the amendment with its date. (c) Date and cite the disclosure mandates for Malaysia, Thailand, Indonesia, and the Philippines, only from verified primary sources. If a mandate cannot be verified, say it is not documented. These are documentary facts, not data gaps |
| M9 | RR-10 | Abstract last sentence; §8 ¶1; §5.6 ¶2 ("any valuation effect ... is small"); §6.3 ¶2 | Condition the abstract and §8 conclusions on parallel trends and the RR-2 bounds. Add "under assumption (2)" in §5.6 ¶2. Replace the MDE-based firm advice in §6.3 with a CI-based statement. Add one sentence on what the evidence cannot speak to (effects below detection, small caps, non-valuation outcomes) |

### 8.2 Residual should_fix (10)

| # | Item | Location | Minimum remedy |
|---|---|---|---|
| S1 | RR-12 (MADE_WORSE) | §7 seventh limitation; §6.3 ¶2 | Delete "even under parallel trends" and the "cannot rule out effects smaller than about 7.0 percent" bound. State that under (2) the CI excludes effects above 4.9%, and that the MDE (0.067) is the effect detectable with 80% power |
| S2 | RR-13 | §1 ¶4; §4.5 ¶2; Table 3 note; Internet Appendix | Provide the pre-analysis plan with its date (IA section or repository link), or describe its provenance accurately without "before estimating any effect" if that cannot be documented. Fix "five robustness checks" (six items listed; R1 duplicated) and label R6 consistently with the Table 3 note |
| S3 | RR-16 | Title page, Data availability statement | Say whether firm identifiers, derived variables, and the data vintage can be shared under the licences, and name the repository (or say the code is supplied as supporting material now). Remove the "supporting material" / "deposited upon acceptance" ambiguity |
| S4 | RR-11 | §5.5 ¶2 last sentence | Add that part of the R6 (0.064) vs baseline (0.002) gap reflects covariates (R2 without covariates: 0.025) and the event window, not only staggered-timing bias |
| S5 | RR-14 | Table IA4 or new IA table; §3.2 ¶2 | Report treated/control counts by event time (R output). Add one sentence on delisting/attrition and on MTB ≤ 0 (negative book equity) set to missing. Call 36,168 the full firm-year grid |
| S6 | RR-17 | §7 fifth limitation | Add a clause: an erroneous value in g − 1 enters every group-time cell of that cohort, which winsorization does not correct |
| S7 | RR-20 | §5.2 ¶1 ("contrasts with ... Hartzmark and Sussman"); §6.2 ¶1 opening; §6.2 ¶2 (Shleifer) | Present Hartzmark and Sussman as a motivating channel (fund flows, not firm valuation). Rephrase "differs from" in §6.2. Cite Shleifer (1986) for the lasting effect and Harris and Gurel (1986) for reversal |
| S8 | RR-21 | §3.2 ¶1; References (LSEG, 2025) | Report the download date. If it cannot be recovered, state that the vintage is unknown and add it as a limitation (acceptable remedy) |
| S9 | RR-23 | §6.2 ¶1; §7 fourth limitation | Add a clause that foreign-ownership limits in some of these markets may mute the recognition channel, citing only verified sources. No data are needed. The data gap (no foreign-ownership data) can be stated in §7 |
| S10 | RR-26 | Fig. 1 note; §5.3 ¶2 | Add to the note: control group (never-scored), covariates, sample sizes (R output), and why e = 4 is plotted but excluded from Eq. (6). Report the e = 4 market-cap estimate in §5.3 ¶2 |

### 8.3 New issues (5)

| # | Item | Location | Minimum remedy |
|---|---|---|---|
| N1 | NEW-1 (major regression) | §5.4 ¶1; §5.4 ¶3; Abstract; §1 ¶5; §6.1 ¶2; §8 | Using the existing pipeline, report the R10 event-time profile or pre-trend test relative to base year g and its Eq. (10) bounds. At minimum, state that R10 is identified under parallel trends from the peak year and cannot separate reversal from a coverage effect. Remove "including row R10" from §5.4 ¶3 and condition the abstract clause |
| N2 | NEW-2 | §4.3 ¶2; Table 2 note | Attribute the Table 2 total-assets disagreement (CI [0.007, 0.081], p = 0.053) to the Holm adjustment of p but not of the CI. State in the Table 2 note that CIs are unadjusted |
| N3 | NEW-3 | §4.2 ¶2 | Report a size-overlap diagnostic at g − 1 (R output), or rephrase: poor overlap also makes the outcome regression extrapolate, and R4 trims only from below |
| N4 | NEW-4 | §1 ¶5 | Rewrite, for example: "their market capitalization was 0.132 log points lower (estimate −0.132) ..." |
| N5 | NEW-5 (previously_missed) | All headings | Use one level for sections (1–8) and a lower level for subsections (2.1 ...) |

### 8.4 Response-letter corrections (claim drift, 13)

Revise the response letter after the manuscript changes so that each entry matches the manuscript:

| # | Letter row | Minimum remedy |
|---|---|---|
| L1 (CD-1) | RR-1 | Drop "throughout" unless M3 is done; mention R10 N |
| L2 (CD-2) | RR-2 | State the breakdown value (M1) and the §5.4 ¶3 rewrite; do not call the item addressed without them |
| L3 (CD-3) | RR-3 | List every location of the weakened claim (abstract, §1, §5.4, §8) after M2 |
| L4 (CD-4) | RR-9 | Separate data limits (index entry, report dates) from documentary facts (policy source, mandate dates), which need citations (M8) |
| L5 (CD-5) | RR-10 | Correct the pointer to §1 ¶6. Remove "bounded by the MDE" once §6.3 is fixed (M9, S1) |
| L6 (CD-6) | RR-12 | Cite §5.2, §6.3 ¶2, and §7 after S1 |
| L7 (CD-7) | RR-13 | Point to the actual location and date of the plan (S2). Remove "IA introduction" unless one is added |
| L8 (CD-8) | RR-20 | Correct the section pointers after S7 |
| L9 (CD-9) | RR-23 and the disagreement bullet | Point to the new foreign-ownership clause (S9). Do not claim §7 already says it |
| L10 (CD-10) | RR-22 | Correct the Dobrick et al. location (§2.2 ¶1) |
| L11 (CD-11) | RR-16 | Quote the revised data-availability statement (S3) |
| L12 (CD-12) | RR-8 | Describe the literature search and its outcome (M7). Do not mark the item "Addressed" if element (d) remains a stated scope limit; say so |
| L13 (CD-13) | all rows | Use statuses that match verification ("Addressed", "Partly addressed: limitation stated", "Declined: reason"). Remove the internal ledger references (PLO-4) |

**Stage 4' list size: 37 entries** (9 residual must_fix + 10 residual should_fix + 5 new issues + 13 letter corrections). Two further advisory checks (PLO-2 length, PLO-6 upload version) are next-round seeds and not counted.

[MATRIX-COMMITTED]
