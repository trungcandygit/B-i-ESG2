---
name: journal-fit-finder
description: Evidence-backed academic journal matching for manuscripts, abstracts, keywords, full papers, theses converted to articles, and article placement strategy. Use when the user asks to find suitable journals, rank journal targets, evaluate manuscript-journal fit, compare aims and scope, estimate acceptance/rejection risk, check acceptance rates or turnaround claims, avoid predatory journals, or recommend revisions before submission.
---

# Journal Fit Finder

## Purpose

Match an academic manuscript to suitable journals using evidence, transparent fit scoring, and conservative uncertainty handling. Support both short inputs (title, abstract, keywords) and full manuscripts.

## Core Rules

- Treat this as decision support, not a guarantee of acceptance.
- Use current web research when available; journal scope, APCs, indexing, editors, turnaround, and policies change.
- Prefer primary sources: journal website, publisher page, author guidelines, aims and scope, ethics policy, APC page, indexing page, recent issue pages, Scopus/WoS/DOAJ/COPE/Crossref/ISSN records when accessible.
- Do not invent acceptance rates, impact metrics, indexing, APCs, review times, or quartiles. Mark missing data as `Not found from reliable sources`.
- Report journal quartiles only with source, year, database, and subject category; distinguish Scopus/SJR quartiles from Web of Science/JCR quartiles.
- Distinguish `source-backed`, `inferred`, and `unverified` claims.
- Flag predatory or questionable signals instead of recommending a journal only because it appears easy.
- Consider the user's constraints: discipline, target indexes, language, publication fee budget, open access preference, geography, urgency, career stage, and institutional requirements.
- Detect manuscript language and separate it from target publication language; recommend translation or rewriting when the best journal targets require another language.
- If the user provides confidential or unpublished work, avoid exposing unnecessary manuscript details in search queries. Search with topic phrases and keywords, not copied sensitive passages.

## Workflow

### 0. Handle Manuscript Inputs

Accept manuscript content as pasted text or as files such as `.docx`, `.pdf`, `.tex`, `.md`, `.txt`, or extracted submission packages.

For files:

- Extract body text, title, abstract, keywords, headings, captions, table text, figure captions, references, declarations, and appendices when available.
- Preserve enough structure to identify sections such as introduction, literature review, methods, results, discussion, conclusion, limitations, ethics, data availability, and references.
- If extraction misses tables, equations, figures, or scanned pages, say which evidence is unavailable and lower confidence.
- For full papers, inspect methods, results, discussion, limitations, declarations, and reference alignment before recommending journals.
- Do not upload unpublished manuscripts to external journal finder tools unless the user explicitly asks and accepts confidentiality implications.

### 1. Parse the Manuscript

If a full paper is provided, extract:

- title
- abstract
- keywords
- research field and subfield
- article type: empirical, review, systematic review, meta-analysis, theoretical, methodological, case study, short communication, protocol, replication, data paper, perspective
- research question or objective
- methods, sample, data source, instruments, analysis approach
- major findings and contribution
- geographic or institutional scope
- target readership
- disciplinary boundary: narrow specialist, interdisciplinary, applied/professional, regional
- manuscript constraints: word count, references, tables/figures, ethics approval, trial registration, data availability
- manuscript language and target publication language
- country/region relevance and any institutional index requirements

If only abstract/keywords are provided, infer the same profile with lower confidence and state what cannot be assessed.

### 2. Route By Language, Region, And Index Requirement

Before searching, choose one or more routing profiles:

- `International English route`: for English manuscripts or manuscripts intended for international submission. Prioritize Scopus, Web of Science/JCR, Scimago/SJR, DOAJ, major publishers, society journals, and field-specific indexes.
- `Turkish route`: for Turkish manuscripts or users targeting Turkish publication. Prioritize TR Dizin, DergiPark, ULAKBIM-linked records, university/society journals, Turkish field indexes, and journals accepting Turkish manuscripts. Still include international options if the manuscript can be translated.
- `Regional route`: for manuscripts with a strong regional focus or user preference. Search relevant regional databases and publishers, such as SciELO/Latindex/Redalyc for Latin America, AJOL for Africa, CNKI/KCI/J-STAGE and regional Asian platforms where relevant, ERIH PLUS/CEEOL/EconBiz and European society journals for Europe, and SSRN/RePEc/EconLit for economics/finance discovery.
- `Open access route`: for users requiring OA or no-fee publication. Check DOAJ, publisher APC pages, waiver policies, and diamond OA society/university journals.
- `Index-constrained route`: for explicit requirements such as `TR Dizin`, `Scopus Q1-Q2`, `SSCI`, `ESCI`, `PubMed`, `IEEE`, `ABS`, `ABDC`, or institutional promotion lists. Treat these as hard filters and explain exclusions.

If user constraints are missing, infer reasonable defaults from manuscript language and field, then state the assumption.

### 3. Build a Journal Search Strategy

Generate search queries from the manuscript profile:

- exact phrase searches for the core construct/topic
- method plus field searches
- recent article title/theme searches
- publisher and database searches
- `site:journal-domain aims scope` only after a candidate journal is identified

Use a broad first pass, then narrow by field and manuscript type. Include both strong-fit and realistic-fit journals; do not only list famous journals.

Apply a publisher-diversity check during discovery:

- Search across at least 4-6 publisher/index ecosystems when web access is available, such as Elsevier/ScienceDirect, Springer Nature, Wiley, Taylor & Francis, Sage, MDPI, Frontiers, Oxford/Cambridge, IEEE/ACM, Emerald, Inderscience, society journals, Scopus/WoS/JCR/SJR/DOAJ, TR Dizin/DergiPark for Turkish-language routes, and field-specific databases.
- Do not let the initial shortlist come from one publisher unless the field is genuinely dominated by that publisher and you state this limitation.
- Prefer no more than 2-3 journals from the same publisher in the ranked shortlist unless their fit is clearly stronger than alternatives.
- Include a short `Publisher diversity check` note in the final report.

### 4. Screen Candidate Journals

For each candidate, collect evidence for:

- aims and scope match
- accepted publication languages
- relevant index coverage for the chosen route
- article types accepted
- recent similar articles from the last 2-5 years where available
- indexing and legitimacy signals
- known quartile/rank information, including database, year, and category
- APC or subscription model
- peer review model and publication ethics
- acceptance rate or review time only if reliably published
- word limits, format constraints, special issue fit
- publisher reputation and red flags

Read `references/source-policy.md` when deciding whether evidence is reliable.

### 5. Score Fit

Use the rubric in `references/evaluation-rubric.md`.

Calculate an overall fit band:

- `Strong fit`: likely in scope, clear recent precedent, journal audience matches contribution.
- `Good fit`: in scope with manageable positioning or formatting changes.
- `Stretch fit`: prestigious, narrow, or methodologically demanding; possible but rejection risk is high.
- `Backup fit`: acceptable but less ideal due to scope breadth, audience, visibility, or constraints.
- `Avoid`: scope mismatch, weak legitimacy, predatory signals, incompatible article type, or user constraints conflict.

Never present the score as an objective probability of acceptance.

### 6. Produce Recommendations

Use the output structure in `references/output-template.md`.

Always include:

- manuscript profile
- language/index route used
- ranked journal table
- evidence notes for each journal
- fit rationale
- risk profile
- acceptance-rate status
- quartile/rank status
- suggested abstract/keyword/title positioning changes
- submission strategy: first target, second wave, backup options
- data gaps and verification checklist
- publisher diversity check
- language and translation/rewrite recommendation

For Turkish users, answer in Turkish unless the user asks otherwise; keep journal titles, database names, and quoted policy labels in their original language.

## Handling Full Papers

When a full manuscript is available:

- Analyze the whole paper, not just the abstract.
- Compare the claimed contribution in the introduction and discussion against the abstract.
- Identify hidden fit constraints: method rigor, sample size, local-only contribution, missing ethics/data statements, weak theoretical framing, article type mismatch.
- Recommend journal-specific positioning edits before submission.
- If the manuscript is long, summarize section-by-section first, then match journals.

## Acceptance And Rejection Analysis

Acceptance rates are rarely public. Handle them as follows:

- If the journal or publisher publishes a rate, cite it and label it `source-backed`.
- If only third-party claims exist, label them `unverified third-party claim`.
- If no reliable rate exists, write `Not found from reliable sources`.
- Use qualitative risk signals instead: selectivity, scope specificity, recent article similarity, indexing tier, article type fit, methodological expectations, publication volume, and desk-rejection triggers.

## Quartile And Ranking Analysis

Quartile values are useful but easy to misuse. Handle them as follows:

- Prefer official or recognized sources: Clarivate Journal Citation Reports for Web of Science quartiles; Scimago/SJR or Scopus sources for Scopus-derived quartiles; DOAJ only for open-access/indexing status, not quartile.
- Always report `database`, `year`, and `subject category`, for example: `Scopus/SJR 2025, Energy: Q1`.
- If a journal has multiple categories, list the most relevant category for the manuscript and mention if other categories differ.
- Do not merge Scopus and Web of Science quartiles into one generic `Q` value.
- If current quartile data is paywalled or not reliably accessible, write `Quartile: Not found from reliable sources` and provide a verification checklist.
- Do not rank a journal above a better-fitting journal solely because it has a higher quartile. Treat quartile as a strategic constraint, not as proof of manuscript fit.
- If the user specifies an institutional requirement such as `Scopus Q1/Q2 only` or `WoS SSCI only`, apply it as a hard filter and explain any otherwise-good journals excluded by the filter.

## Language And Index Filtering

Language fit can determine whether a journal is realistic. Handle it as follows:

- If the manuscript is Turkish and the user has not requested international publication, include Turkish-language journals and TR Dizin/DergiPark options.
- If the manuscript is Turkish but the strongest targets publish in English, state that translation is not enough when the paper also needs field-positioning, methods, and contribution rewriting for the target journal.
- If a journal accepts both Turkish and English, mention which language is strategically stronger for visibility and indexing.
- If the user needs TR Dizin, Scopus, WoS, SSCI, ESCI, PubMed, IEEE, ABS, ABDC, DOAJ, or another index, filter the candidate list accordingly.
- If index status cannot be verified from reliable current sources, mark it `Index status: verify before submission`.
- Do not treat DergiPark presence as equivalent to TR Dizin indexing; verify the journal's index page or TR Dizin record when available.

Common rejection risks to inspect:

- out of scope despite keyword overlap
- insufficient novelty for the journal tier
- local case without international contribution
- mismatch between article type and journal formats
- weak method transparency
- missing ethics, consent, trial registration, or data availability details
- language or structure below journal expectations
- excessive length or figures
- references not aligned with the target journal's conversation

## Red Flags

Recommend `Avoid` or `Verify before submitting` when signals include:

- fake or unverifiable indexing claims
- unclear APCs or surprise fees
- missing editorial board affiliations
- unrealistic acceptance or review-time promises
- spam invitation patterns
- cloned journal or misleading title
- no transparent peer-review or ethics policy
- publisher not discoverable through reliable records

Do not call a journal predatory as a definitive legal claim unless strong sources support it. Prefer: `shows red flags`, `requires verification`, or `not recommended`.

## References

- `references/evaluation-rubric.md`: scoring categories and weights.
- `references/source-policy.md`: source reliability and citation rules.
- `references/output-template.md`: final report format.
