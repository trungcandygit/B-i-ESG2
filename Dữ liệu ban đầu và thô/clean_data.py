import pandas as pd
import numpy as np

# 1. Đọc file dữ liệu gốc
df = pd.read_excel("DATA GW2.xlsx")

# 2. Tạo các biến phái sinh
df['greenwashing'] = df['ESG_Score'] - df['ESGC_Score']
df['female_critical_mass'] = (df['female_board'] >= 30).astype(int) 
df['log_co2'] = np.log(df['co'].replace(0, np.nan))
df['leverage'] = df['debt'] / df['asset']
df['firm_size'] = np.log(df['asset'].replace(0, np.nan))

# 3. Các biến chính đưa vào mô hình
main_vars = [
    'greenwashing', 'board_size', 'board_ind', 'female_board', 'female_critical_mass',
    'sus_comp', 'firm_size', 'leverage', 'roa', 'mtb'
]

# 4. Lọc mẫu Main (không chứa CO2) và loại bỏ ngành tài chính
df_main = df.dropna(subset=main_vars).copy()
df_main_nonfin = df_main[~df_main['industry_code'].str.lower().str.contains('fin', na=False)].copy()

# 5. Lọc mẫu CO2 subsample và loại bỏ ngành tài chính
df_co2 = df.dropna(subset=main_vars + ['log_co2']).copy()
df_co2_nonfin = df_co2[~df_co2['industry_code'].str.lower().str.contains('fin', na=False)].copy()

# 6. Hàm Winsorize (Cắt xén 1% - 99%)
def winsorize_series(series):
    lower = series.quantile(0.01)
    upper = series.quantile(0.99)
    return series.clip(lower=lower, upper=upper)

# Thực hiện Winsorize cho mẫu Main
for var in ['roa', 'leverage', 'mtb']:
    df_main_nonfin[f'{var}_raw'] = df_main_nonfin[var] # Giữ lại biến gốc
    df_main_nonfin[var] = winsorize_series(df_main_nonfin[var])

# Thực hiện Winsorize cho mẫu CO2
for var in ['roa', 'leverage', 'mtb', 'log_co2']:
    df_co2_nonfin[f'{var}_raw'] = df_co2_nonfin[var] # Giữ lại biến gốc
    df_co2_nonfin[var] = winsorize_series(df_co2_nonfin[var])

# 7. Xuất file Excel với 2 sheet riêng biệt
with pd.ExcelWriter("Processed_Data_GW2.xlsx") as writer:
    df_main_nonfin.to_excel(writer, sheet_name="Main_Sample", index=False)
    df_co2_nonfin.to_excel(writer, sheet_name="CO2_Subsample", index=False)

print("Đã tạo thành công file Processed_Data_GW2.xlsx chuẩn khoa học!")