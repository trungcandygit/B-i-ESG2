# S2 — Pre-analysis plan (viết và commit TRƯỚC khi ước lượng bất kỳ kết quả nào)

Skill: deep-research (methodology / research_architect). Ngày khoá kế hoạch: 2026-09-25.
Mọi thay đổi sau khi nhìn kết quả phải ghi vào ledger với nhãn "DEVIATION".

## 1. Câu hỏi và giả thuyết
RQ: Việc LSEG bắt đầu chấm điểm ESG (coverage initiation) có làm thay đổi định giá và cấu trúc tài trợ của công ty
niêm yết ASEAN-5 không?

- H1 (chính, hai phía): ATT của coverage initiation lên ln(MTB) khác 0.
  Dự đoán cạnh tranh: (a) investor recognition / ESG demand (Merton, 1987; Pástor et al., 2021) → dương;
  (b) coverage chỉ ghi nhận công ty đã lớn/đã tăng giá (selection) → ATT ≈ 0 sau khi kiểm soát xu hướng, và
  hệ số tiền xử lý khác 0.
- H2 (phụ): ATT lên ln(market cap), đòn bẩy sổ sách, ln(tổng tài sản) khác 0.
- H3 (dị biệt): ATT lên ln(MTB) khác nhau giữa công ty có điểm ESG ban đầu cao và thấp (so với trung vị của cohort).

## 2. Dữ liệu và mẫu
- Nguồn: `Dữ liệu ban đầu và thô/DATA GW2.xlsx` (40.799 firm-year, 3.709 công ty, 2014–2024).
- Loại ngành tài chính (`industry_code == "financials"`).
- Thời điểm xử lý G_i = năm đầu tiên ESG_Score không thiếu. Loại công ty có G_i = 2014 (đã được phủ từ đầu,
  không có năm tiền xử lý). Nhóm xử lý: G_i ∈ {2015,…,2024}. Nhóm đối chứng chính: chưa bao giờ được phủ.
- Không yêu cầu bảng cân bằng; mỗi ô 2×2 (g,t) dùng các công ty có dữ liệu ở cả năm gốc g−1 và năm t.

## 3. Biến
- Y1 (chính) ln(MTB); Y2 ln(market cap); Y3 đòn bẩy sổ sách = debt/asset; Y4 ln(total assets).
- Winsorize 1%/99% trên toàn mẫu gộp cho MTB (trước log), market cap (trước log), đòn bẩy, tổng tài sản (trước log).
- Hiệp biến (đo ở năm gốc g−1): dummy quốc gia, dummy ngành, ln(total assets)_{g−1} và bình phương của nó.
- ESG_Score chỉ dùng để (i) xác định G_i và (ii) chia nhóm H3 theo điểm năm G_i. Không dùng ESGC, GRI, FemD,
  SustCom, GWI (vùng cấm, xem 00_original_paper_map.md).

## 4. Ước lượng
- Callaway & Sant'Anna (2021), nhóm đối chứng never-treated, năm gốc cố định g−1 (universal base period).
- Với mỗi (g,t): ΔY_i = Y_{i,t} − Y_{i,g−1}. Điều chỉnh hồi quy (outcome regression): hồi quy ΔY lên X trên nhóm
  đối chứng, dự báo cho nhóm xử lý; ATT(g,t) = trung bình (ΔY − dự báo) trên nhóm xử lý.
- Tổng hợp: ATT(e) = bình quân ATT(g,g+e) có trọng số số công ty xử lý trong ô; e ∈ [−5, 4].
  Ước lượng chính: ATT_post = bình quân có trọng số của mọi ATT(g,t) với 0 ≤ t−g ≤ 3.
- Suy luận: bootstrap theo cụm công ty (lấy mẫu lại công ty, giữ nguyên chuỗi năm), B = 999, seed 20260925.
  Báo cáo SE bootstrap, KTC 95% phân vị, p hai phía (xấp xỉ chuẩn).
- Kiểm định xu hướng trước: Wald chung cho ATT(e), e ∈ {−5,…,−2}, dùng hiệp phương sai bootstrap. Theo Roth (2022),
  không coi "không bác bỏ" là bằng chứng song song; báo cáo cỡ hiệu ứng tiền xử lý kèm KTC.
- Ngưỡng: α = 0.05 hai phía cho H1. H2: điều chỉnh Holm cho 3 kết quả phụ. H3: kiểm định chênh lệch hai ATT_post
  bằng bootstrap.

## 5. Robustness (định sẵn)
R1 đối chứng not-yet-treated (thêm never-treated); R2 bỏ hiệp biến; R3 bỏ cohort 2020–2021 (COVID);
R4 hỗ trợ chung: chỉ giữ đối chứng có ln(asset)_{g−1} ≥ phân vị 10 của nhóm xử lý cùng cohort;
R5 placebo: gán thời điểm giả G_i − 3 cho nhóm xử lý, chỉ dùng các năm < G_i;
R6 so sánh với TWFE tĩnh (firm + year FE) để minh hoạ khác biệt với ước lượng bền vững (Goodman-Bacon, 2021).

## 6. Exhibit dự kiến (JF:IP ≤ 5; mỗi exhibit trừ 200 từ)
Table 1 mẫu và thống kê năm gốc theo nhóm; Table 2 ATT chính (Y1–Y4); Figure 1 event study Y1 (và Y2);
Table 3 robustness + dị biệt. Kết quả phụ khác → Internet Appendix.

## 7. Diễn giải
- Không nói nhân quả nếu pre-trend có ý nghĩa hoặc R5 placebo có ý nghĩa; khi đó mô tả là "coverage đi kèm /
  theo sau" thay đổi định giá.
- Không khái quát ra toàn ASEAN hay thị trường mới nổi; chỉ nói về 5 thị trường trong mẫu.
- Báo cáo mọi kết quả, kể cả không có ý nghĩa.
