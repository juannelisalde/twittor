from commons.data_process.dataManager import dataManager
df = dataManager('MHT_MAIN_MAR', 'full_bd_c1')
table = df.table
# table
# table.astype({col: str for col in table.columns})
table = table.astype(dtype=float, errors='ignore').style.format(precision=2, na_rep='MISSING')
# table = table[table.columns].fillna(0).round(2)
table


import pandas as pd
import numpy as np
df = pd.DataFrame({"1": [1.0, 2], 'col2': [3, 4]}).astype(float)
df
# df = df.style.format(precision=2, na_rep='MISSING')