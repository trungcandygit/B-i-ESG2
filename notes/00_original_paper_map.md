# S0 — Bản đồ bài gốc (vùng cấm trùng)

Skill: deep-research (mode `review`, chỉ đọc). Nguồn: bản quét toàn văn manuscript v3 trong
`Báo cáo/GPTZero AI Scan - 2699-IJMS-20062_Revised_Manuscript_v3.pdf` (ngày 2026-08-19),
`Kết quả hồi quy/R_results.txt`, `Kết quả hồi quy/heck man.txt`, `Hình/Khung PTICH.pdf`,
`Hình/figure1_final.png`, `Hình/figure2_final.png`, review form vòng 2 của IJMS.

## 1. Định danh
- Tiêu đề: "GRI Adoption and Corporate Brownwashing: Board Governance Evidence from ASEAN-5".
- Tạp chí: International Journal of Management and Sustainability (IJMS), Article No. 2699-IJMS-20062.
- Tình trạng: under review, vòng 2, quyết định "Requires Minor revision".
- Tác giả: Nguyen Thanh Binh (APD), Nguyen Van Trung* (APD), Nguyen Anh Tuan (Foreign Trade University).

## 2. Câu hỏi nghiên cứu và giả thuyết (VÙNG CẤM)
- RQ: việc áp dụng GRI (bên ngoài) và quản trị nội bộ (nữ trong HĐQT, uỷ ban bền vững) ảnh hưởng thế nào đến
  **brownwashing** (báo cáo thấp hơn thực tế) ở biên mở rộng (có/không) và biên thâm canh (mức độ).
- H1: GRI → giảm brownwashing. H2: FemD → giảm brownwashing. H3: SustCom → giảm brownwashing.
  H4: SustCom → tăng xác suất áp dụng GRI.
- Khung lý thuyết: neoinstitutional (decoupling), stakeholder-agency, gender socialization, resource dependence;
  "information discipline" vs "narrative camouflage".

## 3. Biến và đo lường (VÙNG CẤM ở vai trò biến phụ thuộc / biến chính)
- GWI = z(ESG_Score) − z(ESGC_Score); GREENWASH = max(GWI,0); BROWNWASH = max(−GWI,0); BW_dummy = 1[GWI<0].
- Biến giải thích chính: GRI_{t−1}, FemD_{t−1}, SustCom_{t−1}; phụ: CM, Blau, Shannon (chỉ mô tả).
- Kiểm soát (trễ 1 năm): BSize, InD, Size = ln(asset), Lev, ROA, MTB, log_co2.
- ESGC_Score được dùng như "điểm thực hành (controversy-adjusted)" để tạo khoảng cách GWI.

## 4. Mẫu
- LSEG Workspace (ESG), BoardEx + công bố (quản trị), Compustat Global (tài chính); ASEAN-5, 2014–2024.
- Vũ trụ 40.799 firm-year / 3.709 công ty → 1.995 firm-year đủ dữ liệu (bỏ ngành tài chính, bỏ công ty không báo
  cáo CO2) → sau trễ 1 năm: **1.506 firm-year, 385 công ty** (MY 459, TH 435, SG 299, ID 179, PH 134).
- Winsorize 1%/99% ROA, Lev, MTB, log_co2.

## 5. Phương pháp (VÙNG CẤM ở cùng biến phụ thuộc)
- TWFE (firm + year FE), SE cụm theo firm; LPM cho biên mở rộng; OLS FE trên tiểu mẫu GWI<0 cho biên thâm canh;
  tương tác GRI×SustCom; mô hình tiền đề GRI ~ SustCom_{t−1}; SE cụm hai chiều; mẫu switchers (71) và
  clean switchers (62); FE ngành–quốc gia–năm thay FE công ty; Heckman hai bước (loại trừ: tỷ lệ GRI leave-one-out).

## 6. Bảng và hình của bài gốc (KHÔNG được trùng)
| Mã | Nội dung |
|---|---|
| Table 1 | Phân bố mẫu theo quốc gia (firms, firm-years, %) cho mẫu 1.506 |
| Table 2 | Định nghĩa biến (GWI, GREENWASH, BROWNWASH, ESG, ESGC, FemD, CM, Blau, Shannon, ...) |
| Table 3 | Thống kê mô tả (mean, SD, min, median, max, tần suất) mẫu 1.506 |
| Table 4 | Biên mở rộng / thâm canh của GRI lên brownwashing (3 cột) |
| Table 5 | Cơ chế, độ nhạy, nội sinh: GRI×SustCom, cụm 2 chiều, switchers, FE thay thế, Heckman |
| Table 6 | Kiểm định tiền đề SustCom → GRI (4 mô hình) |
| Figure 1 | Khung khái niệm (GRI, FemD, InD, SustCom → brownwashing; H1–H4) |
| Figure 2 | Xu hướng áp dụng GRI và thời điểm switchers 2014–2024 |
| Figure 3 | Hệ số GRI qua 7 đặc tả robustness |

## 7. Kết luận chính (các hệ số không được đăng lại)
- GRI_{t−1}: −0.2146 (pooled BROWNWASH), −0.1337 (BW_dummy), −0.1285 (intensive), GREENWASH intensive −0.5246 (ns).
- FemD, SustCom không ý nghĩa; GRI×SustCom 0.1169 (p=0.507); SustCom → GRI 0.0141 (p=0.461).
- Switchers −0.0974 (p=0.062); clean switchers −0.0821 (p=0.156); FE thay thế −0.2810; Heckman −0.2799.
- Thống kê mô tả: FemD trung bình 18.97%, GRI 85.16%, GREENWASH 45.56% / BROWNWASH 54.44%.

## 8. Hệ quả cho bài mới (ranh giới)
1. Không dùng GWI / GREENWASH / BROWNWASH / BW_dummy làm biến phụ thuộc hay biến chính; không dùng GRI làm biến
   giải thích chính hay biến phụ thuộc; không kiểm định vai trò FemD / SustCom lên decoupling.
2. Không dùng mẫu 1.506 làm mẫu ước lượng chính với cùng đặc tả TWFE-LPM; không tái tạo Table 1/3 cùng mẫu.
3. Không dùng khung neoinstitutional decoupling / information discipline làm khung lý thuyết chính.
4. Được phép: dùng cùng nguồn dữ liệu (DATA GW2.xlsx), các biến gốc (ESG_Score, ESGC_Score, marketcap, mtb, ...)
   ở vai trò khác, với câu hỏi tài chính khác và thiết kế nhận diện khác; phải công khai companion study.
