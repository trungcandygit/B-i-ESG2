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
