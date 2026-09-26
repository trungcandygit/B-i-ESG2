# Springer Nature pre-submission checklist: Figures and tables; Structure and layout (user-provided, 2026-09-26)

Source: pages that the user pasted into the session from link.springer.com/pre-submission (journalId=10690, Asia-Pacific
Financial Markets). Target journal is unchanged (JF:IP, CLAUDE.md §0); this checklist is applied as an additional
presentation standard (ledger D-15).

## Figures and tables (verbatim essentials)
- "Avoid submission delays by ensuring that all your figures, tables and illustrations are annotated in line with the
  journal submission guidelines."
- "Legends and numbering must be consistent with any mentions in the text."
- A well-designed table should have: clear and concise legends and captions; sufficient spacing between columns and
  rows; clear units; font type and size that are legible.
- "Poorly presented tables and figures, missing legends and citations in the text, will cause your manuscript to be
  delayed and sent back to you for amendments."

## Structure and layout (verbatim essentials)
- "Your manuscript should follow a simple structure under the following headings: Title, Abstract, Introduction,
  Methods, Results, Discussion."
- "Check your target journal's submission guidelines to find more details about manuscript structure."

## Mapping to the manuscript (how each point is met, checked by checks.py or by rendering)
| Item | Implementation | Check |
|---|---|---|
| Legends/numbering consistent with text | Captions "Table n" / "Fig. n"; text mentions use the same form ("Fig. 1", "Fig. IA1") | checks.py: exhibits cited in text, in order; "figure mentions match caption label" |
| Every exhibit cited in text | Each table and figure is cited and interpreted before it appears | checks.py |
| Clear, concise captions | One-line caption stating content; note ≤ 3 sentences + Source line | checks.py |
| Spacing between rows and columns | Cell padding 2 pt top/bottom, 4.25 pt left/right; fixed column widths so numeric cells do not wrap | rendered PDF inspected (Table 3, Table IA3) |
| Clear units | Table 1 names units in row labels (USD million, ratios); Table 2, Table 3, Table IA1, Table IA3 notes state "log points" and "ratio"; Fig. 1 axis label states units | checks.py + visual |
| Legible font | Times New Roman 12 pt text; tables 9 pt; notes 10 pt; figures 10 pt base size at 6.5 in width, 600 dpi | visual |
| Structure | 1 Introduction; 2 Related Literature and Hypotheses; 3 Institutional Setting and Data; 4 Methods; 5 Results; 6 Discussion; 7 Limitations; 8 Conclusion | checks.py section cross-references |
