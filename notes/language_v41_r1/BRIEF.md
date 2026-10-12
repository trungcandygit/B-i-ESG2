# Language round 1 on v4.1: shared brief (independent section editors)

Manuscript: "Who Gets an ESG Score? Coverage Selection and Firm Value in Five Southeast Asian Markets" (v4.1,
manuscript/manuscript.md). Content revision is closed (Stage 4'); this round changes wording only.

Skills to load and follow (read each SKILL.md fully):
- .claude/skills/academic-paper/SKILL.md (revision discipline: no new claims, citations, or numbers)
- .claude/skills/proofreading/SKILL.md (checklist: abbreviations, notation, grammar and style, figures/tables, statistics)
- .claude/skills/stop-slop/SKILL.md (+ its references/) within academic register
- .claude/skills/sciwrite/SKILL.md: run its five passes in order (clutter; active voice and strong verbs; sentence
  structure; terminology consistency; numbers and citations). Repo rules override it: never an em dash.

Goal: clearer, tighter prose; no word target, but the section must not get longer (aim 5–10% shorter by cutting
clutter, never content). Long sentences (over about 35 words) should be split.

House style (mandatory): American English; "we", never "you"; no em dash (—); no filler/intensifier adverbs; no
"guarantee", "prove", "verify", "ensure"; "First, Second, Third"; Oxford comma; no italics (*...*) anywhere; minimize
parentheses (keep citations, equation numbers, compact statistics). Terms fixed in §3.1–3.2 stay exactly: "LSEG ESG
score", "scored", "unscored", "never-scored", "first scored year (g)", "base year (g − 1)", "run-up", "total assets",
"market capitalization", "coverage", "provider".

Hard constraints:
- {{key}} placeholders byte-exact; never type a number that is not already in the text.
- Citations byte-exact; never add one; drop one only if its sentence goes and it is cited elsewhere.
- Display equations, headings, "Section n", "Eq. (n)", "Table n", "Fig. n", "Table Sn", "Fig. Sn" references unchanged
  and still cited before the exhibit is discussed.
- Claims never stronger; keep all hedges, nulls, power/MDE statements, limitations, and parallel-trends conditionals.
- No content deletion of results.

Do NOT edit manuscript/manuscript.md. Write:
1. notes/language_v41_r1/output_<X>.md: your sections rewritten, same Markdown structure, ready to paste back.
2. notes/language_v41_r1/log_<X>.md: word count before/after; findings per skill (proofreading items, stop-slop
   patterns, sciwrite passes) with examples; any sentence deleted and why.
Word count: python3 -c "import sys,re;sys.path.insert(0,'project_R/docx_build');from checks import words;t=open(sys.argv[1]).read();t=re.sub(r'(?m)^(\$\$.*|@@.*)$','',t);print(words(t))" FILE
