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

## Iter 5 — Phản biện độc lập Stage 3 + vòng sửa Stage 4 (2026-09-25/26)
- Stage 3: 5 subagent độc lập (context riêng, không thấy output của nhau; provenance fresh_context = true,
  blind_to_peer_outputs = true, correlated-error disclosure: cùng họ model Claude). Báo cáo trong
  `notes/review_independent/`. Tất cả 5 ghế: Major Revision. D1, D2, D3, D6 block (repairable) → F2 → major_revision.
  DA CRITICAL C1 (post-coverage null không được nhận diện; bỏ qua kịch bản đảo chiều) → VALIDATED, repairable.
- Conformance: lỗi thẻ Phase 1 do dispatcher (tôi) hướng dẫn `[PRE-COMMITMENT-ACKNOWLEDGED]` thay vì
  `[CONTRACT-ACKNOWLEDGED]`; bản chuẩn hoá trong `conformance/` → EIC, R1, R2, R3 PASS; DA lỗi DA-TABLE-PARSE (định
  dạng bảng), nội dung vẫn dùng. File gốc của phản biện viên không sửa.
- Phiên mới (2026-09-26, hook SessionStart): load lại academic-pipeline + academic-paper (1 lần/phiên).
- Người dùng yêu cầu (2026-09-26): "Phần phương pháp phải có công thức toán; bài full text 8.500–10.000 từ; lát tôi
  cắt sau; skill có bước nào phải làm hết; không rút gọn; không hỏi lại".
- D-13: Full text mục tiêu 8.500–10.000 từ (vượt giới hạn JF:IP 6.200 từ thân bài; người dùng sẽ cắt sau). checks.py:
  full text là tiêu chí PASS; giới hạn JF:IP báo WARN (không FAIL). Vòng này: full text 8.695 từ; thân bài 7.174.
- D-14: Vòng sửa viết lại toàn văn (tái cấu trúc 8 mục + 11 phương trình đánh số OMML qua pandoc), KHÔNG dùng quy
  trình patch 1.1 (#390) của academic-paper revision mode, vì người dùng yêu cầu mở rộng và tái cấu trúc toàn bài.
  Hệ quả: không có revision-evidence-bundle/patch/apply-report → checker `check_re_review_synthesis.py` của Stage 3'
  không thể replay (manifest_incomplete). Ba cổng của Stage 3' vẫn chạy đầy đủ bằng subagent độc lập; claim drift
  được đối chiếu thủ công trong Response to Reviewers.
- Phân tích mới (exploratory, sau PAP): R10 dời năm xử lý +1 (MTB −0.068, p 0.004), R11 cohort cân bằng ≤ 2021
  (MTB −0.008), per-market (Table IA3), cận relative-magnitude (Table IA5; M̄ 0.25: [−0.071, 0.073]), số quan sát theo
  biến (Table IA4). Table 3 thêm R10, R11. Table 2 bỏ dấu sao (chỉ có p Holm). EPS bỏ dòng %%CreationDate để chạy
  lại byte-identical.
- Tài liệu mới xác minh #18–#29 (notes/05). Sửa tên tác giả Tsang et al. (Yujie Wang, Yi Xiang). Không dùng tài liệu
  không xác minh được tác giả (Hu et al. 2026; bài EMFT/CJAR 2025).
- Tiêu đề mới: "Rated at the Peak? Firm Valuation around the First LSEG ESG Score in Five Southeast Asian Markets";
  running title "Valuation around first ESG scores" (33 ký tự); 7 keywords (xếp chữ cái); JEL G14, G15, G32, M14, Q56.
- Response to Reviewers: `notes/review_independent/08_response_to_reviewers.md` (26/26 mục có trạng thái).

## Iter 6 — v2.1 bổ sung trích dẫn + Stage 3' Phase 1 (2026-09-26)
- Người dùng yêu cầu (2026-09-26): "phải trích dẫn đầy đủ ở trong các mục… liên hệ kết quả nghiên cứu, có trích dẫn
  các tác giả khác. Phương pháp cũng vậy. Không tìm thêm tác giả mà trích dẫn các tác giả đã có sẵn". v2.1: thêm trích
  dẫn (chỉ dùng 31 tài liệu đã có, không thêm tài liệu mới) vào §2, §3, §4 (mọi tiểu mục), §5.1–5.6, §6.
- academic-paper citation_compliance_agent (Phase 5a): `notes/05b_citation_compliance_v2_1.md` → PASS; 31 tài liệu,
  0 orphan hai chiều, 67% từ 2021+; retraction screening = not_checked (không có Crossref/Retraction Watch offline).
- checks.py 96/96 PASS; full text 9.730 từ (D-13 PASS); thân bài 8.209 (JF:IP WARN).
- Stage 3' Phase 1 (subagent độc lập, mù bài): `notes/re_review/phase1_precommitment.{json,md}`; 26 bản ghi
  (10 must_fix RR-1…RR-10, 16 should_fix RR-11…RR-26), JSON hợp lệ theo precommitment.schema.json; thẻ cuối
  [CONTRACT-ACKNOWLEDGED]. Lệch checker đã ghi nhận: input_manifest_hash = placeholder 64 số 0 (không có manifest,
  D-14); nhãn ghế lấy từ tiền tố "R1-W1" vì bảng Sources không theo ngữ pháp §10; letter_text trích đoạn thư gần nhất
  (thư vòng 1 không có khối acceptance criteria). NS-1 (advisory): CI cho con số pre-trend 14.1%/10.0%.
- Xuất lại bản sửa v2.1 cho Phase 2: `notes/re_review/input/revised_manuscript_v2_1.md` + `diff_v1_1_to_v2_1.patch`
  (thay bản v2 xuất trước khi thêm trích dẫn).
- D-15 (2026-09-26): người dùng dán checklist tiền nộp của Springer Nature (Figures and tables; Structure and layout;
  trang của Asia-Pacific Financial Markets). Không có chỉ thị đổi tạp chí → tạp chí đích vẫn là JF:IP (CLAUDE.md §0);
  checklist được lưu (`notes/journal/Springer_presubmission_checklist.md`) và áp dụng như chuẩn trình bày bổ sung:
  (i) nhắc hình trong văn đổi "Figure n" → "Fig. n" cho khớp caption (checks.py thêm kiểm tra); (ii) §4 đổi tên
  "Empirical Design" → "Methods" (khớp cấu trúc Title–Abstract–Introduction–Methods–Results–Discussion);
  (iii) đơn vị (log points, ratio) ghi trong note Table 2, 3, IA1, IA3, IA5; (iv) đệm ô bảng (tblCellMar) và nới cột
  Table 3/IA1/IA3 để ô số không xuống dòng (đã render PDF kiểm tra); (v) Table IA3 cột đầu "Market" (sửa trong R
  04_tables_figures.R, chạy lại run_all.R). Các sửa này đến sau ảnh chụp Phase 2A (chỉ trình bày, không đổi số/ý) và
  sẽ được Stage 4.5 xem trên bản cuối.
- D-16 (2026-09-26): người dùng hỏi "phản biện phải 5 sub agent". Vòng 1 (Stage 3, full review) đã chạy 5 subagent
  độc lập (notes/review_independent/{EIC,R1,R2,R3,DA}_phase1/2.md). Vòng phản biện lại (Stage 3', re-review mode)
  theo re_review_mode_protocol.md dòng 186: "routing changes the PERSONA, not the call count — the three gates stay
  three sequential fenced calls" → Phase 1 / 2A / 2B là 3 subagent độc lập, mỗi mục chấm dưới persona ghế
  EIC/R1/R2/R3 đã định tuyến. Giữ đúng skill; không thêm panel 5 ghế ngoài quy trình.

## Iter 7 — Stage 3' Phase 2A/2B + quyết định phản biện lại (2026-09-26)
- Phase 2A (subagent độc lập, mù thư phản hồi): `notes/re_review/phase2A_verdicts.{json,md}` (hợp lệ schema; 0 dissent,
  0 escalation). must_fix: 1 FULLY, 9 PARTIALLY; should_fix: 5 FULLY, 8 PARTIALLY, 1 NOT, 1 MADE_WORSE (RR-12), 1
  CANNOT_VERIFY (RR-16). 5 new issue (NEW-1 major regression: R10 thiếu chẩn đoán pre-trend/cận; NEW-2..5 minor).
- Phase 2B (subagent độc lập, thấy thư + trang tiêu đề bản nộp single-anonymized):
  `notes/re_review/phase2B_traceability.json` (hợp lệ schema) + `phase2B_decision.md`. 2 adjustment
  (author_pointer_located_evidence): RR-16 → PARTIALLY, RR-25 → FULLY. 13 claim drift (CD-1..13). should_fix rate
  15/16. Quyết định nội dung: Major Revision (rule B3: NEW-1 major regression; B4 cũng thoả: RR-2, RR-3 residual
  must_fix). Contract outcome: [RE-REVIEW-ABORT: manifest_incomplete] (D-14). Routing: [ROUTING-DEGRADED].
- Checker `check_re_review_synthesis.py` đã gọi: `notes/re_review/checker_run.txt` → manifest_incomplete, exit 2 (dự
  kiến theo D-14; không có manifest/bundle/sidecar).
- D-17: theo academic-pipeline, 3' Major → Stage 4' (vòng revision thứ 2, cuối cùng theo giới hạn ≤ 2 vòng).
  Danh sách sửa 37 mục trong phase2B_decision.md; làm hết, rồi Stage 4.5.
- Chạy lại toàn bộ run_all.R (16,9 phút) sau D-15: mọi file trong project_R/outputs giống hệt từng byte so với lần chạy
  trước (md5), trừ tableIA3_formatted.csv (đổi tiêu đề cột "Market", có chủ đích). → FORCE A4 byte-identical PASS.

## Iter 8 — Stage 4' (vòng revision thứ 2, cuối) (2026-09-26)
- Làm 37 mục của phase2B_decision.md §8 (9 must_fix dư, 10 should_fix dư, 5 new issue, 13 sửa thư). Bản v3.
- R vòng 3 (03_estimate.R, exploratory): R10 event study + pre-trend (MTB p = 0.072) + cận Eq. (10) (M̄ 0.25:
  [−0.138, 0.002], chứa 0; breakdown M̄ = 0.23), breakdown M̄ baseline (5%: 0.01; dương: 0), số hãng theo event
  time (Table IA6 mới), trùng lắp quy mô (24.6% hãng được chấm lớn hơn P95 của nhóm chưa chấm), attrition (271/274
  đến e = 3). Chạy lại toàn bộ: mọi output cũ giống từng byte; numbers.csv: 0 key đổi giá trị, 203 key mới.
- D-18: RR-8 (tài liệu ngoài Mỹ) và RR-9 (nguồn quy định công bố ở MY/TH/ID/PH, chính sách coverage của LSEG):
  theo chỉ thị người dùng "không tìm thêm tác giả, chỉ trích dẫn tài liệu đã có" → không thêm tài liệu mới; thu hẹp
  câu (§1 ¶3), gắn nhãn kỳ vọng (§2.2), bỏ câu thời hạn nộp SGX (thuộc bản sửa đổi sau 2016), ghi hạn chế (§3.1,
  §7 thứ tám). Thư phản hồi ghi "Partly addressed: scope/limitation stated".
- Data availability statement (meta.md) viết lại: giấy phép cấm phân phối dữ liệu, mã hãng, biến cấp hãng; ngày
  tải không được ghi lại; code + PAP + output tổng hợp nộp kèm, lưu kho công khai khi được chấp nhận.
- Script xuất bản phản biện: sửa cấp tiêu đề (NEW-5).
- Độ dài: sau khi sửa lên 10.598 từ → cắt các đoạn lặp ý (§2.2 ¶2, §3.2, §4.1–4.3, §5.1 ¶2, §5.3, §5.5, §5.6,
  §6.1–6.3) → 9.990 từ (D-13 PASS); thân bài 8.407. checks.py 97/97 PASS.
- Thư phản hồi v3 (`notes/review_independent/08_response_to_reviewers.md`): trạng thái theo thực tế, bỏ tham chiếu
  ledger nội bộ, sửa con trỏ mục.
- D-19 (2026-09-26): người dùng dán lại Author Guidelines JF:IP (Last Updated 22 Dec 2025), nội dung trùng với bản đã
  lưu (`notes/journal/JFIP_Author_Guidelines.md`). JF:IP dùng Free Format: không có template bắt buộc. "Template" của
  bài = bố cục do build_manuscript.py dựng theo các điểm ràng buộc: Times New Roman 12 pt, giãn dòng 1.5, lề trái/phải
  1 inch, trên/dưới 1.5 inch (theo quy định cho bản PDF); thứ tự Title page → Abstract (≤100 từ) → Keywords (≤7) →
  Main text → References → Tables → Figures (legend dưới hình); Supplemental Appendix = Internet Appendix riêng.
  Nhãn hình giữ "Fig. n" (CLAUDE.md E1; Free Format chỉ yêu cầu nhất quán). Bộ hồ sơ S10 sẽ thêm Plain Language
  Summary và Suggested X post (tuỳ chọn).
- D-20 (2026-09-26): người dùng hỏi vì sao bảng/hình ở cuối. JF:IP quy định thứ tự file chính: title page → abstract →
  keywords → main text → references → tables → figures → nên bản nộp giữ nguyên. Thêm bản đọc
  `manuscript/Reading_Copy_Exhibits_in_Text.docx` (mỗi bảng/hình đặt sau đoạn nhắc đến nó lần đầu, sang trang mới)
  để đọc/duyệt; không dùng để nộp.
- D-21 (2026-09-26): kiểu tài liệu tham khảo. JF:IP: "There is no submission requirement for formatting references"
  (Free Format) → không bắt buộc APA. Bài dùng kiểu author-year của Journal of Finance (tạp chí anh em cùng AFA):
  "Tác giả, Năm, Tên bài, *Tạp chí* Tập(Số), trang. DOI" — nhất quán, đủ các trường JF:IP yêu cầu. Giữ nguyên.
- D-21b (2026-09-26): người dùng yêu cầu "Chuyển sang APA". Thay D-21: References + trích dẫn trong văn theo APA 7
  (≥ 3 tác giả → "et al." từ lần đầu; "&" trong ngoặc, "and" khi trích dẫn tường thuật; nhiều nguồn trong ngoặc xếp
  theo chữ cái, bỏ dấu khi xếp; cùng tác giả gộp năm "Tsang et al., 2024, 2025"; hai Berg 2022 phân biệt "Berg,
  Heeb, et al." / "Berg, Kölbel, et al."; danh sách: Họ, T. T. (Năm). Tên bài. *Tạp chí*, *Tập*(Số), trang. DOI;
  working paper, tin báo, dữ liệu theo mẫu APA). checks.py thêm 2 kiểm tra APA. Câu công bố companion study viết theo
  dạng APA.
- D-22 (2026-09-26): người dùng: note bảng/hình tối đa 2 câu, bảng bớt chữ. Viết lại mọi note (≤ 2 câu; checks.py
  ngưỡng 2); rút gọn nhãn hàng/cột trong R (04_tables_figures.R, OUTCOMES trong 01_data.R: "ln(market cap)",
  "Leverage (ratio)", "ln(assets)"; hàng Table 3 ngắn; IA "Without <market>", "Sample", "Market"...). Dựng lại bảng
  và Fig. 1 bằng R (chỉ phần 04/05 từ output ước lượng đã lưu; numbers.csv không đổi).
- D-23 (2026-09-26): người dùng: "BỎ BƯỚC S9". Không làm S9 (notes/09_overlap_audit.md và chạy lại overlap_audit.R
  trên bản cuối). Kết quả overlap gần nhất (bản v2): 0% 8-gram ở mọi mục (project_R/outputs/overlap). Ghi rõ trong
  tóm tắt cuối rằng mục H "overlap PASS" dựa trên lần chạy v2, không chạy lại trên bản cuối.
- D-24 (2026-09-26): người dùng: vòng hoàn thiện ngôn ngữ phải chạy kỹ, nhiều task, agent độc lập load đủ skill,
  cắt 20–30% số từ. Thay D-13: mục tiêu thân bài ≈ 6.100–6.200 từ (cắt ~25% từ 8.316; khớp giới hạn JF:IP 6.200 với 4
  exhibit). checks.py: tiêu chí từ chuyển sang giới hạn JF:IP (FAIL nếu vượt), bỏ tiêu chí 8.500–10.000.
  Vòng 1: 5 agent độc lập song song, mỗi agent một nhóm mục, load academic-paper + proofreading + stop-slop, viết lại
  có mục tiêu số từ, giữ nguyên placeholder/trích dẫn/phương trình; tôi ghép và chạy cổng academic-paper. Vòng 2:
  agent độc lập proofreading (report) + stop-slop (audit) trên toàn bài, rồi áp dụng sửa, chạy lại cổng.
- D-25 (2026-09-26): người dùng: "không có in nghiêng và dùng dấu () vô tội vạ". Bỏ mọi chữ nghiêng trong tóm tắt, thân
  bài, note bảng/hình, câu companion (ký hiệu p, g, e, t viết thường, không nghiêng; phương trình OMML giữ nguyên).
  Tên tạp chí/tập trong References giữ nghiêng vì APA 7 bắt buộc (người dùng yêu cầu APA). checks.py thêm kiểm tra
  "no italics". Ngoặc đơn: chỉ giữ cho trích dẫn APA, số phương trình, thống kê gọn; các agent vòng 1 chuyển phần
  chú thích trong ngoặc thành mệnh đề thường.

## Iter 9 — Vòng ngôn ngữ 1 (proofreading + stop-slop + cắt gọn) (2026-09-26)
- 5 agent độc lập song song (A: abstract + §1; B: §2–3; C: §4; D: §5; E: §6–8), mỗi agent load academic-paper,
  proofreading, stop-slop; brief chung `notes/language_round1/BRIEF.md`; log từng nhóm `log_<X>.md` (câu bị xoá và lý
  do, placeholder/trích dẫn bị bỏ và nơi còn trích dẫn). Kết quả: §1 1.189→861; §2–3 1.704→1.276; §4 1.614→1.274;
  §5 2.391→1.819 (wc); §6–8 1.499→1.154. Ghép vào manuscript.md (bản trước: manuscript_v3_before_language_r1.md).
- Cổng academic-paper sau vòng 1: checks.py 98/99 PASS; thân bài 6.313 từ (−24% so với 8.316); FAIL duy nhất là giới
  hạn JF:IP 6.200 → vòng 2 cắt tiếp.
- D-26 (2026-09-26): người dùng hỏi vì sao tên bảng "IA". Đổi theo thuật ngữ JF:IP ("Supplemental Appendix"):
  Internet Appendix → Supplemental Appendix (file Supplemental_Appendix.docx), Table IA1–IA6 → Table S1–S6,
  Fig. IA1 → Fig. S1. Tên file CSV/PNG nội bộ (tableIA*.csv, FigIA1.png) giữ nguyên để không phải chạy lại R.
- Stage 4.5 (subagent độc lập, Mode 2 final): FAIL (0 SERIOUS, 3 MEDIUM, 14 MINOR; 31/31 tài liệu tồn tại; mọi số khớp
  R). Đã sửa toàn bộ trên bản đã ghép vòng 1: `notes/final_integrity/stage4_5_dispositions.md` (MEDIUM-1 viết lại không
  thêm tài liệu; E6: 2 restore, 1 authorize_with_reason). checks.py 99/100 (còn FAIL số từ JF:IP → vòng 2).
- 2026-09-26: người dùng dừng cả 3 agent vòng ngôn ngữ 2 (proofreading, stop-slop, coherence) trước khi chúng ghi báo
  cáo; không có file báo cáo nào. Không tự khởi chạy lại. Trạng thái bản thảo: sau vòng 1 + sửa Stage 4.5; thân bài
  6.313 từ (vượt giới hạn JF:IP 6.200); checks.py 99/100 PASS.

## Iter 10 — Hoàn tất S10 bộ hồ sơ nộp + dọn repo (2026-09-26)
- D-27 (người dùng): "Không cần TRIM gì hết, trim 4.6 là được". Bỏ các cắt gọn vòng 2 đã thử; chỉ rút gọn §4.6 (khai báo
  AI vẫn nằm ở Methods vì Author Guidelines JF:IP bắt buộc) còn 2 câu. Người dùng: xoá đoạn phân biệt với bài
  "Nguyen, Nguyen, & Nguyen" (cùng nhóm tác giả) → bỏ câu [[COMPANION]] và 2 câu so sánh ở §3.2 trong cả hai bản thảo.
  Cover letter giữ MỘT câu trung tính báo biên tập viên rằng bộ dữ liệu cũng dùng cho một bản thảo khác của cùng
  tác giả đang được phản biện ở IJMS, với câu hỏi, biến và phương pháp khác (Wiley/COPE yêu cầu báo cho biên tập
  viên; cover letter không chuyển cho phản biện). Người dùng có thể xoá câu này nếu muốn.
  Thân bài 6.165 từ ≤ 6.200 (JF:IP, 4 exhibit).
- D-28 (người dùng, theo skill docx): nhãn giả thuyết viết chỉ số dưới H₁, H₂, H₃ (checks.py kiểm tra). Sửa lỗi schema
  OOXML cố hữu do python-docx/pandoc sinh ra (thứ tự m:scr/m:sty, m:sepChr, tblCellMar và phần tử con, tblLayout lặp,
  w:zoom thiếu percent) bằng save_doc() → mọi docx qua validate.py của skill docx.
- D-29 (người dùng: "APA thì tên tạp chí phải in nghiêng"): tên tạp chí + số tập đã in nghiêng; kiểm tra lại toàn bộ
  danh mục theo APA 7: dùng đúng tên chính thức "The Journal of Finance", "The Review of Financial Studies",
  "The Review of Economic Studies"; mục Singapore Exchange bỏ chú thích trong ngoặc, dùng mô tả [Listing rules].
  checks.py thêm kiểm tra "tên tạp chí và số tập in nghiêng trong mọi tài liệu có DOI".
- Cover letter cũ sai tiêu đề và con trỏ mục (Section 2.1/2.4) → viết lại, tiêu đề và số liệu điền tự động.
- S10: dựng `submission/JFIP_submission/` (00 checklist tiếng Việt, 01–09); gói replication không còn thư mục overlap.
  checks.py 102/102 PASS; validate.py PASS cho 11 docx. R không chạy lại vì không đổi code hay số liệu (numbers.csv
  giữ nguyên); ghi nhận: không kiểm tra lại byte-identical trong phiên này.
- Dọn repo theo yêu cầu người dùng ("xoá bài cũ, xoá nhầm hơn bỏ sót"): xoá Báo cáo/, Check AI + Review tạp chí/,
  Hình/, Kết quả hồi quy/, TLTK/, file khoá ~$*.docx, .DS_Store, dữ liệu trung gian của bài gốc (Final_Data_Cleaned.csv,
  Processed_Data_GW2.xlsx, clean_data.py), các bản thảo trung gian manuscript_v*.md, notes/language_round2, __pycache__.
  Giữ `Dữ liệu ban đầu và thô/DATA GW2.xlsx` (run_all.R cần). Mọi file đã xoá vẫn còn trong lịch sử git.
- D-30 (2026-09-26, người dùng): "bỏ câu đó đi, vì bản đó chưa tính đăng ở đâu". Xoá câu về bản thảo khác khỏi cover
  letter theo quyết định của tác giả; bài mới không còn nhắc tới bài kia ở bất kỳ file nộp nào.
- D-31 (2026-09-26, người dùng): thay nhóm tác giả (thay D-3): Nguyen Thanh Binh^a^, Nguyen Van Trung^a,*^ (liên hệ,
  15233582@st.neu.edu.vn), Ha Hong Hanh^b^ (School of Accounting and Auditing, NEU), Nguyen Bach Diep^a^; email, ORCID
  theo người dùng. Cập nhật meta.md, COI, cover letter, token ẩn danh. Author contributions của Ha Hong Hanh
  (Methodology, Validation, Writing – review and editing) và Nguyen Bach Diep (Data curation, Validation, Writing –
  review and editing) là mặc định do Claude đặt, cần tác giả xác nhận.
- D-32 (2026-09-26, người dùng): tác giả tự sửa định dạng trong Word và gửi lại 01, 02, 04, 06, 07; các file này thay
  thế bản do script dựng (từ nay chạy lại build_submission.py sẽ ghi đè các chỉnh sửa định dạng thủ công). Nội dung
  thay đổi so với bản dựng: email tác giả liên hệ đổi lại kontrungcany@gmail.com; bỏ mục 4.6 Use of generative AI ở
  cả 02 và 07; dấu phẩy trên (X′) trong Eq. (4). Đã đồng bộ meta.md, manuscript.md, build_submission.py, checks.py.
  Xoá cp:lastModifiedBy ("Tatyana Bardeen") khỏi docProps của 02 để giữ ẩn danh; không đổi nội dung. Kiểm tra: 02
  không còn tên, email, ORCID, đơn vị; không có people.xml; 5 file qua validate.py.
  Lưu ý chưa xử lý (chờ tác giả): (1) JF:IP yêu cầu khai báo AI trong Methods, bản hiện tại không còn khai báo nào;
  (2) cover letter 06 vẫn viết "described in Section 4.6".
