# CLAUDE.md — Quy tắc bắt buộc cho repo B-i-ESG2

## 0. FORCE RULE — Bài mới, không trùng lặp + AUTO

- Repo này viết một bài MỚI THẬT SỰ từ bộ dữ liệu của bài ESG2 gốc để gửi **Journal of Finance: Insights and
  Perspectives (JF:IP)**: câu hỏi nghiên cứu khác, phân tích khác, kết quả khác; cấm paraphrase / tái sử dụng văn bản,
  bảng, hình của bài gốc; công khai việc dùng chung dữ liệu (companion study). Bài gốc chỉ đọc, không sửa.
- AUTO: ở task đầu tiên của mỗi phiên, load `academic-pipeline`, đọc toàn bộ `HANDOFF.md` và `notes/AUDIT_LEDGER.md`,
  xác định giai đoạn tiếp theo chưa xong (S0→S11) và tự làm tiếp tới Definition of Done; xong thì push lên main.
- Nếu không có câu hỏi nào thật sự khác mà dữ liệu trả lời được: dừng, ghi ledger, báo người dùng.
- "Không hỏi lại" KHÔNG cho phép bỏ qua liêm chính, trích dẫn thật, khớp R.

## 1. FORCE RULE — Luôn load skill academic-research-skills (ARS)

**Bắt buộc 100%, không ngoại lệ.** Mọi task (kể cả task nhỏ) phải làm theo skill ARS phù hợp.
**Tự động load:** ở task đầu tiên của phiên — hoặc khi cần một skill ARS chưa load trong phiên — gọi `Skill` tool;
skill đã load còn hiệu lực cả phiên, **không gọi lại**.

| Loại task | Skill phải gọi |
|---|---|
| Viết / sửa / hoàn thiện bài báo, citation check, abstract, format | `academic-paper` |
| Phản biện / review bài báo | `academic-paper-reviewer` |
| Nghiên cứu, tổng quan tài liệu, fact-check, thiết kế phương pháp | `deep-research` |
| Quy trình trọn gói, **hoặc không chắc chọn skill nào** | `academic-pipeline` (mặc định) |

- Skill vendor tại `vendor/academic-research-skills/`, link vào `.claude/skills/`.
- Hook `.claude/settings.json` (`SessionStart` + `UserPromptSubmit`) gọi `.claude/hooks/force-ars.sh`. Không được xoá/tắt hook.
- Vòng ngôn ngữ (sau tối đa 2 vòng revision của ARS): 2 vòng `proofreading` (vendor/proofreading) + `stop-slop`
  (vendor/stop-slop); mỗi vòng qua cổng kiểm tra của `academic-paper` (số liệu khớp R, trích dẫn, giới hạn từ, quy định tạp chí).
- Văn phong: stop-slop trong khuôn khổ học thuật (D14): dùng "we", không "you", bỏ trạng từ đệm / phóng đại,
  giữ trạng từ kỹ thuật, không em dash.

## 1b. FORCE RULE — Không hỏi lại

- Người dùng đã ủy quyền trước: không hỏi lại, không dừng chờ xác nhận — kể cả checkpoint "user must confirm" của
  skill. Tự chọn mặc định hợp lý nhất theo skill, ghi quyết định + lý do vào `notes/AUDIT_LEDGER.md`.
- Không dùng AskUserQuestion. Chỉ dừng khi thật sự bị chặn — ghi ledger và vẫn hoàn thành mọi phần còn lại.

## 2. FORCE RULE — Thực nghiệm bằng R

- Mọi thực nghiệm, bảng, hình mới làm bằng **R** (`Rscript`) trong `project_R/`, có `run_all.R`, cố định seed,
  output ghi vào `project_R/outputs/`. Code Python cũ (`Dữ liệu ban đầu và thô/clean_data.py`) chỉ để tham chiếu.
- **Khớp 100%:** mọi con số trong bài truy được về một file output R. Lệch thì sửa bài hoặc code và ghi ledger.
- Gói R cài qua `apt install r-cran-<gói>` (CRAN bị chặn).

## 3. Bài báo — đường dẫn

- Bài gốc (chỉ đọc; companion study): "GRI Adoption and Corporate Brownwashing: Board Governance Evidence from
  ASEAN-5", International Journal of Management and Sustainability, Article No. 2699-IJMS-20062 (under review,
  minor revision round 2). Nguồn trong repo: `Báo cáo/` (bản quét GPTZero của manuscript v3, review form),
  `Kết quả hồi quy/`, `Hình/`. Dữ liệu: `Dữ liệu ban đầu và thô/DATA GW2.xlsx`.
- Bản đồ vùng cấm trùng: `notes/00_original_paper_map.md`.
- Bài mới (bản thảo làm việc): `manuscript/` ; bộ hồ sơ nộp: `submission/JFIP_submission/`
  (dựng bằng `project_R/docx_build/build_submission.py`).
- Nhật ký: `notes/AUDIT_LEDGER.md`. Kiểm tra trùng lặp: `notes/09_overlap_audit.md`.
- Tác giả: theo nhóm tác giả của bài gốc (xem ledger D-3).

## 4. FORCE RULES A–H của người dùng (2026-09-25, bắt buộc 100%)

A. Cách làm việc: A1 cứ làm, không hỏi lại (chỉ dừng khi thiếu dữ liệu hoặc vi phạm liêm chính → ghi ledger, làm
hết phần còn lại, báo 1 lần). A2 đọc HANDOFF trước; academic-pipeline điều phối; mỗi skill load 1 lần/phiên.
A3 1 phản biện full → sửa → re-review (≤ 2 vòng revision) → 2 vòng proofreading + stop-slop; tự đi S0→S11.
A4 R: project_R/run_all.R, seed cố định, outputs/; mọi số truy về CSV; chạy lại → CSV byte-identical.
A5 xong: commit, push main, gửi tóm tắt + lệnh git pull.

B. Liêm chính: B1 khác bài gốc ở câu hỏi/phân tích/kết quả; công khai companion study (bản ẩn danh: "a companion
study (details withheld for anonymous review)"; cover letter ghi rõ bài gốc + tình trạng). B2 overlap audit bằng R
(8-gram theo mục ≈ 0% ở Intro/Lit/Results/Discussion) + bảng đối chiếu → notes/09_overlap_audit.md. B3 không bịa dữ
liệu; biến không có thì bỏ phân tích, ghi hạn chế. B4 không bịa trích dẫn (kiểm tra bằng WebSearch; không xác minh
được thì bỏ); không bịa số liệu tạp chí. B5 khai báo AI đúng công cụ đã dùng.

C. Tạp chí & cấu trúc: C1 theo Author Guidelines thật (notes/journal/JFIP_Author_Guidelines.md). C2 Title–Abstract–
Introduction–Data/Methods–Results–Discussion/Conclusion; đánh số mục nhất quán; roadmap khớp; không pseudo-heading.
C3 đếm từ bằng script, ghi ledger mỗi vòng; abstract đếm riêng; kết quả phụ → Internet Appendix. C4 keywords đúng số
lượng, xếp chữ cái; có JEL codes.

D. Bảng: D1 nhắc và diễn giải trước khi xuất hiện. D2 caption "Table n" đậm + mô tả đúng nội dung (script kiểm).
D3 note ≤ 2–3 câu + dòng "Source: …"; không giải thích phương pháp trong note. D4 bảng gọn, thập phân nhất quán,
dấu âm "−", ký hiệu ý nghĩa giải thích 1 lần, có SE/KTC. D5 mọi ô số điền tự động từ CSV R, so tự động văn/bảng với
CSV. D6 số trong văn khớp số làm tròn trong bảng.

E. Hình: E1 nhắc trước; caption "Fig. n"; note ≤ 2–3 câu giải thích nét/ký hiệu/vùng tô + "Source". E2 đủ nhãn
trục (đơn vị), legend không che, không tiêu đề trong hình. E3 đọc được đen trắng (nét + marker). E4 ggplot2, EPS
cairo_ps + PNG 600 dpi, Fig1.eps…; Greek bằng plotmath; xem PNG trước khi chèn. E5 không vượt giới hạn exhibit.

F. Văn bản: F1 ít ký hiệu toán, công thức đánh số, định nghĩa ký hiệu ngay. F2 không phóng đại, không nhân quả khi
thiết kế không cho phép, không khái quát; không bác bỏ H0 ≠ không có tác động (báo cáo power). F3 báo cáo kết quả
không ý nghĩa + mục Limitations riêng. F4 Discussion chỉ trích dẫn tác giả đã nhắc trước. F5 Methods không lặp động
cơ; không "guarantee/prove/verify/ensure". F6 viết tắt định nghĩa ở abstract và lần đầu trong thân bài. F7 American
English; stop-slop học thuật; không em dash; First/Second/Third; Oxford comma nhất quán; không lặp ý. F8 tham chiếu
chéo tồn tại (script). F9 số trong abstract/intro/conclusion khớp Results.

G. Docx & hồ sơ: G1 lxml, giữ OMML, sub/superscript đúng, validate, render PDF (nhắc mở Word kiểm tra công thức).
G2 bản ẩn danh sạch (text, docProps, people.xml, Author contributions chỉ ở Title Page; script assert). G3 bộ hồ sơ
submission/JFIP_submission/ 00–08 (checklist tiếng Việt). G4 tác giả theo bài gốc nếu khác (ledger D-3). G5 form:
họ ở Family, tên ở Given, đệm ở Middle.

H. Kiểm tra cuối bằng script (ghi ledger, tất cả PASS): số từ; bảng/hình nhắc trước; note ≤ 3 câu; caption khớp;
số = CSV; CSV byte-identical; trích dẫn ↔ References đã xác minh; tham chiếu chéo; viết tắt; không em dash; ẩn danh
sạch; overlap PASS; docx validate PASS; đúng Author Guidelines.
