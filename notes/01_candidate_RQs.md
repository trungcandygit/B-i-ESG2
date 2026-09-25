# S1 — Câu hỏi nghiên cứu ứng viên

Skill: deep-research (lit-review + socratic, tự trả lời theo mặc định; user uỷ quyền, xem ledger Iter 1).
Ràng buộc: khác bài gốc (xem `00_original_paper_map.md` §8); trả lời được bằng `DATA GW2.xlsx`; hợp JF:IP
(một phát hiện thực nghiệm rõ, có chiến lược nhận diện, ≤ 7.000 từ, ≤ 5 exhibit).

## Khảo sát khả thi dữ liệu (chỉ đếm cấu trúc, CHƯA nhìn biến kết quả)
Chạy bằng R (script khám phá, không phải kết quả bài):
- Vũ trụ 40.799 firm-year, 3.709 công ty niêm yết ASEAN-5, 2014–2024. Market cap có cho 33.401 firm-year,
  MTB 31.300, tổng tài sản 36.147.
- 901 công ty từng có điểm ESG của LSEG; 2.808 chưa bao giờ có. Năm bắt đầu có điểm: 2014: 164, 2015: 8, 2016: 9,
  2017: 8, 2018: 9, 2019: 34, 2020: 99, 2021: 151, 2022: 263, 2023: 119, 2024: 37 (so le, tập trung 2020–2023).
- Độ phủ gần như hấp thụ (chỉ 19 công ty có năm trống sau khi đã được phủ).
- 118 công ty từng có điểm controversy < 100; 102 lần khởi phát sau năm phủ đầu tiên.

## Ứng viên

| | C1. ESG rating coverage initiation → định giá & tài trợ | C2. Khởi phát ESG controversy → định giá, ESG cao có "bảo hiểm" không | C3. Cú sốc COVID-2020: ESG cao có giữ giá trị không |
|---|---|---|---|
| Câu hỏi | Khi LSEG bắt đầu chấm điểm ESG một công ty, giá trị thị trường (ln MTB, ln market cap), đòn bẩy và tăng trưởng tài sản có thay đổi không? Mức điểm ban đầu có quan trọng không? | Năm đầu có controversy làm giảm định giá bao nhiêu; hiệu ứng có nhỏ hơn ở công ty điểm ESG cao? | Chênh lệch định giá 2019→2020 giữa công ty ESG cao/thấp |
| Thiết kế | DiD so le, ước lượng Callaway–Sant'Anna (2021) với nhóm chưa bao giờ được phủ; event study; placebo | DiD so le trên 102 sự kiện | Cross-section/DiD một cú sốc |
| Mẫu | Toàn vũ trụ phi tài chính (≈ 3.000 công ty) — khác hẳn mẫu 1.506 của bài gốc | Chỉ 901 công ty được phủ | ≈ 330 công ty được phủ năm 2019 |
| Độ mới (1–5) | 4: bằng chứng coverage initiation hiện chủ yếu ở Mỹ (Tsang et al., 2024; Bikmetova & Pirinsky, 2026); chưa có cho ASEAN, chưa xét định giá với ước lượng bền vững cho DiD so le | 3: nhiều nghiên cứu controversy–giá trị | 2: đã có nhiều bài COVID–ESG |
| Khả thi (1–5) | 5: 737 công ty được xử lý, 2.808 đối chứng | 2: 102 sự kiện, ít công suất | 3: mẫu nhỏ, một năm |
| Hợp JF:IP (1–5) | 5: câu hỏi tài chính (investor recognition, ESG demand), nhận diện rõ | 3 | 2 |
| Khoảng cách với bài gốc (1–5) | 5: biến phụ thuộc, biến xử lý, mẫu, phương pháp, lý thuyết đều khác; không dùng GWI/GRI/FemD/SustCom | 3: dùng ESGC, gần vùng "decoupling" | 4 |
| **Tổng** | **19** | 11 | 11 |

## Quyết định
**Chọn C1** (ledger D-4). Câu hỏi: *Does the initiation of ESG rating coverage change how equity markets value
firms and how firms finance themselves? Evidence from the staggered expansion of LSEG ESG coverage in ASEAN-5.*

Câu hỏi con:
- RQ1: Hiệu ứng trung bình trên nhóm được xử lý (ATT) của việc bắt đầu được chấm điểm lên ln(MTB) (kết quả chính).
- RQ2: Hiệu ứng lên ln(market cap), đòn bẩy sổ sách, tăng trưởng tài sản (kết quả phụ).
- RQ3: Hiệu ứng có khác nhau theo mức điểm ESG ban đầu (trên/dưới trung vị của cohort) — "coverage hay content"?

Kiểm tra với bài gốc: bài gốc hỏi về brownwashing (khoảng cách ESG–controversy) và vai trò GRI/HĐQT trên
1.506 firm-year đã được phủ. C1 hỏi về hậu quả thị trường vốn của việc *được phủ* trên toàn vũ trụ niêm yết,
không dùng bất kỳ biến phụ thuộc, biến xử lý, bảng hay hình nào của bài gốc. Chỉ trùng nguồn dữ liệu → công khai.

## Tài liệu nền (đã kiểm tra tồn tại bằng WebSearch; chi tiết DOI ở S5)
- Tsang, Wang, Xiang & Yu (2024), Journal of Banking & Finance 169, 107312 — coverage ESG agencies và vi phạm ESG.
- Bikmetova & Pirinsky (2026), Journal of Business Ethics 204(2) — coverage initiation cải thiện hiệu quả ESG.
- Merton (1987) investor recognition; Hong & Kacperczyk (2009); Pástor, Stambaugh & Taylor (2021);
  Pedersen, Fitzgibbons & Pomorski (2021); Hartzmark & Sussman (2019); Berg, Kölbel & Rigobon (2022);
  Callaway & Sant'Anna (2021); Goodman-Bacon (2021); Sun & Abraham (2021); Baker, Larcker & Wang (2022); Roth (2022).
