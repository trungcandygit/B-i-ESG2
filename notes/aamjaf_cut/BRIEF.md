# Cut to the AAMJAF length limit: shared brief (independent section editors)

The Asian Academy of Management Journal of Accounting and Finance (AAMJAF) requires "Manuscript length ... within 7500
words". We read this as abstract plus main text (Introduction to Conclusion), excluding references, tables, figures,
and the supplementary appendix. The main text is now about 8,550 words; it must fall to about 7,300. The text has just
been edited by a native English speaker; keep that wording wherever you do not cut.

Skills: read and follow .claude/skills/academic-paper/SKILL.md (revision discipline), .claude/skills/stop-slop/SKILL.md,
and the copy-editing cut-to-length method (cut in tiers: repetition, then hedges repeated elsewhere, then secondary
detail; log every cut with the words saved).

Tools to save words without losing content:
1. Delete repetition across paragraphs and sections (the same number or caveat stated twice).
2. Move secondary robustness detail to the supplementary appendix: write it as plain paragraphs in your
   `supp_<X>.md` output, and leave one sentence in the main text that states the result and points to the
   appendix ("Appendix B reports ..."). The appendix text keeps the numbers and wording you moved.
3. Compress lists and long sentences.

Must stay in the main text: every hypothesis; sample counts; the definitions of score/rating/coverage/provider and
scored/unscored/never-scored; the run-up numbers and pre-trend tests; the wave split (Fig. 2) with its main numbers;
the headline estimate, interval, MDE, cluster-bootstrap interval; the high/low score difference with p and MDE; R10
with its interval, pre-trend p, the M̄ = 0.25 result, and the two readings (reversal vs negative effect); R11; R7; R8;
the M̄ bounds and the "absence of a detected positive effect is conditional on assumption (2)" statement; the TWFE
benchmark and that cohort-by-base-year comparison plus size conditioning explain the gap; the placebo failure; all
eight limitations (may be shortened); every exhibit citation (Table 1–3, Fig. 1–2) before discussion; the
pre-specified (R1–R6) vs exploratory (R7–R11) distinction; every display equation and Eq. (n) reference.

Hard constraints: {{key}} placeholders byte-exact (never type a number not already in the text); citations byte-exact,
never add; drop a citation only if its sentence goes and the source is cited elsewhere in the body (list it in the
log); headings unchanged; "Section n" references must still point to existing sections; no em dash; no italics; "we";
no "guarantee/prove/verify/ensure"; terms fixed as before ("first scored year", "never-scored", "base year", "run-up");
claims never stronger; American English; use "%" after numerals (already applied).

Supplementary appendix numbering: group C uses "Appendix B" for moved robustness text; groups A and B use "Appendix C"
if they move anything (unlikely). Supplementary tables keep their labels (Table S1–S8, Fig. S1–S2).

Do NOT edit manuscript/manuscript.md. Write:
- notes/aamjaf_cut/output_<X>.md (sections, same Markdown structure)
- notes/aamjaf_cut/supp_<X>.md (moved text, or empty)
- notes/aamjaf_cut/log_<X>.md (word counts before/after; each cut with words saved; moved items; dropped citations)
Word count: python3 -c "import sys,re;sys.path.insert(0,'project_R/docx_build');from checks import words;t=open(sys.argv[1]).read();t=re.sub(r'(?m)^(\$\$.*|@@.*)$','',t);print(words(t))" FILE
