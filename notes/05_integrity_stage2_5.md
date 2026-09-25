# S5 — Integrity check trước phản biện (academic-pipeline Stage 2.5; academic-paper citation-check)

Ngày: 2026-09-25. Bản kiểm tra: `manuscript/manuscript.md` @ commit sau a18d2b1; DOCX dựng bởi build_manuscript.py.

## Phase A — Tài liệu tham khảo (13 bài + 2 data citation)
Mẫu số: 15/15 mục trong References. Mỗi mục bài báo đã xác minh bằng WebSearch (tác giả, năm, tên bài, tạp chí,
tập/số, trang, DOI) — chi tiết và URL nguồn ở `notes/05_references_verified.md`. DOI của 13/13 bài có trong file
xác minh (checks.py). Data citation LSEG và Compustat Global: nguồn dữ liệu thật của bộ dữ liệu (theo bài gốc);
năm "2025" là năm truy xuất ước định — CẦN tác giả xác nhận năm truy xuất (ledger D-11). Kết quả: PASS.

## Phase B — Ngữ cảnh trích dẫn (claim ↔ nguồn)
| Trích dẫn | Tuyên bố trong bài | Khớp với nội dung nguồn (theo tóm tắt đã đọc) |
|---|---|---|
| Merton (1987) | investor base lớn hơn → required return thấp, giá cao | Có (mô hình incomplete information) |
| Pástor et al. (2021); Pedersen et al. (2021) | nhà đầu tư ưa ESG chấp nhận lợi suất kỳ vọng thấp hơn | Có |
| Hartzmark & Sussman (2019) | nhà đầu tư quỹ phản ứng mạnh với rating bền vững mới công bố | Có (Morningstar globes, dòng tiền) |
| Tsang et al. (2024) | công ty được nhiều agency phủ → ít vi phạm ESG hơn | Có |
| Bikmetova & Pirinsky (2026) | coverage → giảm phát thải độc hại, rating tốt hơn, sở hữu tổ chức ESG cao hơn | Có |
| Berg et al. (2022) | rating giữa các nhà cung cấp bất đồng lớn | Có |
| Kelly & Ljungqvist (2012) | mất coverage phân tích → giá giảm | Có (brokerage closures) |
| Callaway & Sant'Anna (2021); Goodman-Bacon (2021); Baker et al. (2022) | TWFE thiên lệch khi thời điểm so le và hiệu ứng dị biệt | Có |
| Sant'Anna & Zhao (2020) | outcome regression / doubly robust DiD | Có |
| Roth (2022) | kiểm định pre-trend có công suất thấp, cần thận trọng | Có |
Kết quả: PASS (không có trích dẫn "vibe citing").

## Phase C — Số liệu báo cáo
- Mọi số thập phân trong abstract và thân bài là placeholder lấy từ `project_R/outputs/numbers.csv`
  (checks.py mục 10: PASS; chỉ trừ hằng số 2,8 = hệ số MDE). Mọi ô bảng lấy từ `table*_formatted.csv`.
- Làm tròn trong văn = làm tròn trong bảng (cùng hàm fmt trong R).

## Phase D — Độc lập / trùng lặp
Kiểm tra trùng lặp chi tiết với bài gốc ở S9 (`notes/09_overlap_audit.md`). Bài mới viết từ đầu, không mở file
văn bản bài gốc khi viết (chỉ bản đồ ở notes/00).

## Phase E — Tuyên bố (claims)
- Không có tuyên bố nhân quả dương: bài nói "coverage follows firm value"; placebo R5 và pre-trend có ý nghĩa
  được báo cáo rõ; hai cách đọc kết quả sau coverage được trình bày (4.1).
- Không khái quát ra ngoài 5 thị trường; khả năng áp dụng cho thị trường khác nêu như giả thuyết.

## AI Research Failure Mode Checklist (7 modes)
| Mode | Kết quả | Bằng chứng |
|---|---|---|
| 1 Citation hallucination | CLEAR | 13/13 xác minh WebSearch; DOI khớp |
| 2 Implementation bug | CLEAR | `project_R/validation/validate_estimator.R`: 8/8 ô ATT(g,t) tính lại bằng lm() khớp tới 1e−10; mô phỏng 3 kịch bản khôi phục đúng ATT và run-up (outputs/validation.csv) |
| 3 Hallucinated results | CLEAR | mọi số từ CSV; checks.py |
| 4 Shortcut reliance | CLEAR | ước lượng bền vững + 6 robustness định sẵn, không chọn đặc tả sau khi xem kết quả |
| 5 Bug as insight | CLEAR | phát hiện chính (run-up trước coverage) được tái tạo trong mô phỏng có run-up biết trước; ô (2022, 2017) tính tay khớp |
| 6 Methodology fabrication | CLEAR | phương pháp mô tả khớp code; PAP commit 62c2152 trước ước lượng |
| 7 Frame-lock | CLEAR | PAP có dự đoán cạnh tranh (a)/(b); kết quả ủng hộ (b), báo cáo trung thực |

Kết luận Stage 2.5: PASS → chuyển S6 (phản biện). Checkpoint MANDATORY của pipeline được tự giải quyết theo
CLAUDE.md §1b (người dùng đã uỷ quyền), ghi ledger Iter 3.
