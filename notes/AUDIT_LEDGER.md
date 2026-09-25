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

## Iter 2 — S3 thực nghiệm R, S4 viết bài (2026-09-25)
- Môi trường: R 4.3.3 qua apt (r-base-core, dplyr, tidyr, ggplot2, readxl, plm, sandwich, lmtest, data.table,
  stringdist). Không có `fixest`/`did` trên apt → tự cài đặt ước lượng Callaway–Sant'Anna (outcome regression,
  base period g−1, never-treated) trong `project_R/R/02_cs_did.R`; bootstrap cụm theo công ty bằng trọng số tần suất,
  B = 999, seed 20260925; ma trận trọng số dùng chung cho mọi đặc tả (cho phép kiểm định chênh lệch H3).
- Pipeline: `project_R/run_all.R` → 00_setup, 01_data, 02_cs_did, 03_estimate, 04_tables_figures, 05_numbers.
  Chạy ~6 phút (4 lõi, mclapply; kết quả không phụ thuộc số lõi vì trọng số bootstrap tính trước).
- D-7: Đơn vị tiền tệ: kiểm tra chéo DBS, BCA, SM Investments (2023) → giá trị hợp lý theo USD; ghi "U.S. dollars
  as recorded in the data set". Một số market cap bất thường (vd. Chandra Asri 2019: 1,14e12) → winsorize 1/99
  theo PAP; nêu ở Limitations.
- DEVIATION (kỹ thuật, không đổi ước lượng): (i) trimws khi ghi CSV; (ii) mclapply cho bootstrap; (iii) đổi nhãn
  "treated/covered" → "scored" trong bảng/hình cho khớp văn bản; (iv) thêm số công ty có năm trống độ phủ.
- Kết quả chính (outputs/att_main.csv): ATT ln(MTB) 0.002 (SE 0.024; KTC [−0.046, 0.048]; MDE 0.067) → H1 không
  bác bỏ; ln(mcap) −0.055 (Holm p 0.134); leverage 0.008 (Holm p 0.134); ln(asset) 0.044 (p 0.018; Holm 0.053).
  Pre-trend: ln(mcap) e−5 −0.132, e−4 −0.125 (Wald p 0.022); ln(MTB) e−5 −0.095, e−4 −0.082 (Wald p 0.074).
  Placebo R5 có ý nghĩa (MTB 0.059, mcap 0.134) → theo PAP §7 KHÔNG diễn giải nhân quả; thông điệp chính:
  "coverage follows firm value". TWFE tĩnh R6: MTB 0.064 (p 0.014) → minh hoạ sai lệch của TWFE.
  H3: chênh lệch high−low −0.041 (p 0.307) → không có bằng chứng.
- S4: academic-paper (load 1 lần, mode full). Paper Configuration Record: `notes/04_paper_config.md` (D-8, tự xác
  nhận theo §1b). Bản thảo nguồn: `manuscript/manuscript.md` + `manuscript/meta.md`; mọi số là placeholder
  {{key}} lấy từ `project_R/outputs/numbers.csv`; bảng lấy từ `table*_formatted.csv`.
  Dựng DOCX: `project_R/docx_build/build_manuscript.py`; kiểm tra: `project_R/docx_build/checks.py`.
- D-9: AI disclosure (guideline: trong Methods) → mục 2.4; nêu trung thực Claude đã sàng lọc câu hỏi, soạn PAP,
  viết code, soạn và sửa văn bản, kiểm tra tài liệu. Chỉ dùng Claude trong phiên này (không dùng Gemini).
  CẦN tác giả xác nhận câu "The authors reviewed and approved the research question and the plan".
- D-10: Funding ("did not receive any specific grant"), CRediT, COI mặc định → CẦN tác giả xác nhận trước khi nộp.
- Số từ vòng S4: thân bài 2.755 từ (giới hạn 6.200 với 4 exhibit); abstract 96 từ.

## Iter 3 — S5 integrity (Stage 2.5) + phản biện sơ bộ trong context (2026-09-25)
- S5: `notes/05_integrity_stage2_5.md` PASS; `project_R/validation/validate_estimator.R` (8 ô ATT(g,t) khớp lm() tới
  1e−10; mô phỏng 3 kịch bản khôi phục ATT và run-up) → outputs/validation.csv. Failure-mode checklist 7/7 CLEAR.
- LibreOffice thiếu Writer → cài `libreoffice-writer`, `poppler-utils` qua apt để render PDF kiểm tra bố cục.
- S6 (sơ bộ): panel 5 ghế chạy TRONG CÙNG CONTEXT (`notes/review_full/`), provenance PASS nhưng
  fresh_context=false, blind_to_peer_outputs=false. Quyết định: Major revision (F3). Roadmap RR-1…RR-10.
- D-11: năm truy xuất dữ liệu trong data citation ("2025") cần tác giả xác nhận.

## Iter 4 — Vòng sửa theo phản biện sơ bộ + chuyển sang phản biện độc lập (2026-09-25)
- DEVIATION (exploratory, sau PAP, theo RR-1…RR-3): R7 loại xu hướng tuyến tính trước coverage; R8 thêm tăng trưởng
  ln(mcap) g−3→g−1 vào hiệp biến; R9 bỏ Malaysia; bảng leave-one-market-out (Internet Appendix Table IA1).
  Kết quả: ln(MTB) R7 −0.052 (p 0.126), R8 0.028 (p 0.265), R9 −0.003; LOMO MTB từ −0.007 đến 0.017.
  ln(mcap) R7 −0.134 (p 0.001) → đã báo cáo trong 3.3; mcap bỏ Malaysia +0.037 → hiệu ứng mcap âm do cohort Malaysia.
- Văn bản: đổi tiêu đề (RR-6) → "Rated Firms Gain Value Before, Not After, Their First ESG Score: Evidence from
  Five Southeast Asian Markets"; thêm backfilling (Berg, Fabisik & Sautner 2020, ECGI WP 708/2020), index inclusion
  (Shleifer 1986; Harris & Gurel 1986), Rambachan & Roth (2023); Eq. (1) dạng ký hiệu; Internet Appendix
  (Table IA1, IA2, Fig. IA1). 4 tài liệu mới đã xác minh (notes/05 #14–#17). checks.py 74/74 PASS; 3.365 từ.
- Người dùng yêu cầu (2026-09-25): "tuân thủ tuyệt đối skill… phải sub agent độc lập". D-12: phản biện chính thức
  Stage 3 chạy lại bằng 5 SUBAGENT ĐỘC LẬP (context riêng, không thấy output của nhau, cấm đọc notes/review_full)
  trên bản v1.1 đã xuất ẩn danh `notes/review_independent/input/manuscript_for_review.md`. Panel trong context
  (notes/review_full) chỉ còn giá trị là phản biện nội bộ sơ bộ, không dùng làm căn cứ quyết định.
- Đã gửi người dùng bản thảo DOCX hiện tại + Internet Appendix.
