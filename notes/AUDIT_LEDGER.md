# AUDIT LEDGER — Bài mới JF:IP từ dữ liệu ESG2

Quy ước: mỗi giai đoạn (S0–S11) một mục "Iter n"; quyết định đánh số D-x kèm lý do.
Người dùng đã uỷ quyền trước mọi checkpoint (CLAUDE.md §1b); mọi checkpoint "user must confirm" của ARS được
tự giải quyết bằng mặc định hợp lý nhất và ghi tại đây.

## Iter 0 — Bootstrap (2026-09-25)
- Sao chép vendor/academic-research-skills, vendor/proofreading, vendor/stop-slop, .claude/settings.json,
  .claude/hooks/force-ars.sh từ trungcandygit/B-i-stock-to-n (main); symlink skill vào .claude/skills/.
- HANDOFF.md = bản sao HANDOFF_NEW_PAPER_ESG.md của repo mẫu.
- D-1: Pipeline chạy chế độ "full" cho mọi skill (người dùng có kinh nghiệm, muốn sản phẩm cuối, đã uỷ quyền).
- D-2: Bài gốc dạng docx KHÔNG có trong repo (chỉ có file khoá ~$). Nguồn đọc bài gốc: bản quét GPTZero của
  manuscript v3 (`Báo cáo/GPTZero AI Scan - 2699-IJMS-20062_Revised_Manuscript_v3.pdf`, 33 trang, toàn văn),
  `Kết quả hồi quy/R_results.txt`, `Kết quả hồi quy/heck man.txt`, `Hình/`. Đủ để lập bản đồ vùng cấm trùng.

## Iter 1 — S0 đọc bài gốc, S1 chọn câu hỏi, S2 pre-analysis plan (2026-09-25)
- Skill: academic-pipeline (load 1 lần), deep-research (load 1 lần; mode review → lit-review/socratic → methodology).
- S0: `notes/00_original_paper_map.md` — bài gốc "GRI Adoption and Corporate Brownwashing: Board Governance Evidence
  from ASEAN-5" (IJMS 2699-IJMS-20062, minor revision vòng 2). Vùng cấm: GWI/GREENWASH/BROWNWASH/BW_dummy, GRI,
  FemD, SustCom, mẫu 1.506 firm-year, TWFE-LPM, Tables 1–6, Figures 1–3.
- D-3: Nhóm tác giả bài gốc KHÁC nhóm mặc định của HANDOFF (bài gốc: Nguyen Thanh Binh, Nguyen Van Trung*,
  Nguyen Anh Tuan — Foreign Trade University). Theo HANDOFF §5 và FORCE RULE G4 → dùng nhóm tác giả bài gốc, thứ tự
  Binh, Trung*, Tuan; email/ORCID lấy từ trang tác giả của bài gốc (Trung: kontrungcany@gmail.com, ORCID
  0009-0008-3307-6569; Binh: nguyenthanhbinhapd@apd.edu.vn, 0009-0007-0042-2835; Tuan: nguyenanhtuan17105@gmail.com,
  0009-0000-1901-1541).
- S1: `notes/01_candidate_RQs.md`. 3 ứng viên; D-4 chọn C1 "ESG rating coverage initiation → định giá và tài trợ"
  (điểm 19/20 so với 11 và 11). Lý do: khác bài gốc ở mọi chiều (biến phụ thuộc, biến xử lý, mẫu toàn vũ trụ
  ≈ 3.400 công ty phi tài chính, DiD so le Callaway–Sant'Anna), hợp JF:IP, đủ công suất (737 công ty được xử lý).
- Checkpoint "user must confirm" của deep-research Phase 1 và của pipeline Stage 1: tự giải quyết theo §1b.
- S2: `notes/02_analysis_plan.md` viết và commit TRƯỚC khi ước lượng kết quả (chỉ mới đếm cấu trúc độ phủ).
- D-5: Author Guidelines JF:IP: WebFetch bị proxy chặn (afajof.org, onlinelibrary.wiley.com); người dùng dán
  nguyên văn → lưu `notes/journal/JFIP_Author_Guidelines.md`. Ràng buộc: Insights, ≤ 7.000 từ − 200/exhibit,
  ≤ 5 exhibit, abstract ≤ 100 từ, ≤ 7 keywords, running title < 40 ký tự, single-anonymized, AI disclosure trong
  Methods, data citation trong References, word count PDF. Không có JEL trong guideline; vẫn thêm JEL theo FORCE C4.
- D-6: Vì phản biện single-anonymized, file nộp chính là bản có tên tác giả (07); bản ẩn danh (02) vẫn dựng và
  kiểm tra theo HANDOFF/G2 để dùng khi cần.
- Người dùng bổ sung FORCE RULES A–H → ghi vào CLAUDE.md §4.
