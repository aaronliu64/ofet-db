import pandas as pd

file = r"db_feed\new_template_v3.xlsx"
template_sheetnames = pd.ExcelFile(file).sheet_names
template_dict = {key:None for key in template_sheetnames}

def col_check(x):
    cols_toinclude = ['KEY', 'VALUE', 'UNIT', 'NOTE', 'INSTRUCTIONS', 'UNCERTAINTY TYPE', 'UNCERTAINTY VALUE', 'DATAFILE']
    for col in cols_toinclude:
        if col in x: return True
        else: continue

for SN in template_sheetnames:
    temp_df = pd.read_excel(file, sheet_name=SN, usecols=col_check)
    dropkey = '#'
    #remove nan rows
    temp_df.dropna(axis=0, how='all', inplace=True)
    # if df contains '#' in key col, remove that row.
    temp_df = temp_df[~temp_df['KEY'].str.contains('#', na=False)]
    template_dict[SN] = temp_df
del template_dict['Dropdown Items']