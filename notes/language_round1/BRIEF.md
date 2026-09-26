# Language round 1: shared brief for section editors (independent agents)

Goal: rewrite ONE section group of the manuscript "Rated at the Peak? Firm Valuation around the First LSEG ESG Score
in Five Southeast Asian Markets" (target journal: Journal of Finance: Insights and Perspectives, JF:IP) so that it is
about 25% shorter, tighter, and cleaner, with no loss of substance. The authors require the main text to fit the
JF:IP limit (6,200 words with 4 exhibits).

Skills you must load and follow (read each SKILL.md and the files it points to that are relevant to editing prose):
- /home/user/B-i-ESG2/.claude/skills/academic-paper/SKILL.md (writing quality check, anti-patterns, IRON RULES;
  revision discipline: no new claims, no new citations, no new numbers)
- /home/user/B-i-ESG2/.claude/skills/proofreading/SKILL.md (checklist: abbreviations, math notation, introduction
  structure, grammar and style, figures and tables, statistical relevance)
- /home/user/B-i-ESG2/.claude/skills/stop-slop/SKILL.md (remove AI writing patterns)

House style (mandatory):
- American English; academic register; use "we", never "you"; no em dash (—) anywhere; no filler or intensifier
  adverbs ("genuinely", "strictly", "markedly", "fundamentally", "crucial", "critical", "robustly", "delve"); keep
  technical adverbs; do not use "guarantee", "prove", "verify", "ensure"; "First, Second, Third" (not "Firstly").
- Oxford comma. No repetition of the same idea across paragraphs.
- NO italics anywhere in your output (author instruction): remove every *...* emphasis, including around symbols and
  statistics. Write p, g, e, t, X~i~, *p*-value as plain "p", "g", "e", "t", "X~i~", "p-value" (keep ~sub~ and
  ^sup^ markup). The display equations are untouched.
- The authors complain that parentheses are used too freely. Keep parentheses only for APA citations, equation
  numbers, and compact statistics where a sentence would be clumsier (e.g., "(p {{mtb_R10_p_txt}})"). Turn other
  parenthetical asides into plain clauses or delete them. Do not put two parenthetical groups in one sentence
  when one can be avoided.
- Citations are APA 7 and must be kept exactly as written, e.g. "(Chen et al., 2004; Merton, 1987)", "Kelly and
  Ljungqvist (2012)". You may drop a citation only if the sentence it supports is deleted and the same source is still
  cited elsewhere in YOUR section or in another section (the editor will check reference coverage); never add one.
- Numbers appear as {{key}} placeholders filled from project_R/outputs/numbers.csv. Keep every placeholder you keep
  byte-exact; never type a number that is not a placeholder, except structural integers already in the text (event
  years like −5, "four years", 2014, 2021, 80%, 5%, 95%, "M̄ = 0.25", "0.5", "1"). You may delete a sentence with
  placeholders if the result it reports is not needed, but the results named in "Must keep" below must stay.
- Keep display equations ($$latex ... | (n)) byte-exact and keep every "Eq. (n)" reference valid. Keep headings,
  "Section n" cross-references, "Table n"/"Fig. n"/"Table IAn" mentions (every exhibit must still be cited before
  it is discussed), and the [[COMPANION]] anchor if present.
- Claims must not become stronger. Every post-coverage statement stays conditional on parallel trends (assumption (2))
  where it is now; keep hedges, limitations, and null results; no causal language beyond what the design allows.

Must keep (content required by the review rounds; compress wording only):
- Pre-coverage run-up facts, headline MTB estimate with its interval, R10 (later dating) with its pre-trend test,
  M̄ = 0.25 bound, and the statement that it cannot separate reversal from a coverage effect; breakdown statement
  (upper limit just below 5 percent; any departure admits a positive effect); R8 limits; R11 sample; attrition; size
  overlap; firm-level bootstrap does not capture market-wave correlation; Malaysia/Thailand concentration; CI vs MDE
  distinction; Holm-adjusted p vs unadjusted CI; pre-specified (R1–R6) vs exploratory (R7–R11); AI-use disclosure
  (Section 4.6, keep all facts); companion-study sentence; all eight limitations; data limits (no returns, shares,
  ownership, index membership, report dates, other providers' scores, download date).
- Context for what the reviewers required is in /home/user/B-i-ESG2/notes/re_review/phase2B_decision.md Section 8.

Read the full manuscript for context (read-only): /home/user/B-i-ESG2/manuscript/manuscript.md (placeholder values:
/home/user/B-i-ESG2/project_R/outputs/numbers.csv). Do NOT edit any file except your own outputs.

Word count command (count your output body; placeholders count as one word, like the filled numbers):
python3 -c "import sys,re;sys.path.insert(0,'/home/user/B-i-ESG2/project_R/docx_build');from checks import words;t=open(sys.argv[1]).read();t=re.sub(r'(?m)^(\\$\\$.*|@@.*)$','',t);print(words(t))" FILE

Outputs (write exactly these two files):
1. notes/language_round1/output_<X>.md: the rewritten section group, same Markdown conventions and same structure
   as the input (headings, @@ markers if present), ready to paste back.
2. notes/language_round1/log_<X>.md: word count before and after; a table of every deleted sentence or result
   and why it is safe to delete; placeholders removed (list) and citations removed (list with where else they are
   cited); proofreading checklist findings fixed; stop-slop patterns removed.
