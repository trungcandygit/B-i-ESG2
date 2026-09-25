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
