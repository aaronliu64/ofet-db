import pandas as pd
import pymongo

#this function takes a formatted excel file and returns a list of dictionaries where each dictionary has the key value pairs specified by the excel sheet
def template_todict(filepath):

    template_sheetnames = pd.ExcelFile(filepath).sheet_names
    template_dict = {key:None for key in template_sheetnames}

    def col_check(x):
        cols_toinclude = ['KEY', 'VALUE', 'UNIT', 'NOTE', 'INSTRUCTIONS', 'UNCERTAINTY TYPE', 'UNCERTAINTY VALUE', 'DATAFILE']
        for col in cols_toinclude:
            if col in x: return True
            else: continue

    for SN in template_sheetnames:
        temp_df = pd.read_excel(filepath, sheet_name=SN, usecols=col_check)

        #remove empty rows
        temp_df.dropna(axis=0, how='all', inplace=True)
        # if the sheet contains a # in the first column of any row, remove that row.
        dropkey = '#'
        temp_df = temp_df[~temp_df['KEY'].str.contains('#', na=False)]
        #set the first column as the keys of the df
        temp_df.set_index('KEY', inplace=True)

        template_dict[SN] = temp_df
    del template_dict['Dropdown Items']

    return template_dict

def sheet_tomongo(sheet_dict, CONNECTION_STRING, DB_name, collection_name):
    mongoclient = pymongo.MongoClient(CONNECTION_STRING)
    db = mongoclient[DB_name]
    collection = db[collection_name]

#    add experiment + doi unique id to all items in each collection.
    experiment_doi = sheet_dict['1. Data Origin'].loc['DOI']['VALUE']
    experiment_id = db.collection.count_documents({'doi': experiment_doi})
    unique_id = str(experiment_id) + '_' + str(experiment_doi)

#    For sheets 2/2b, have a polymer collection, solvent collection, then combined solution collection
    # if collection_name == 'solvent':

    # elif collection_name == 'polymer':
    
    # elif collection_name == 'solution':

filepath = r"db_feed\new_template_v3.xlsx"
sheet_dict = template_todict(filepath)
CONNECTION_STRING = "mongodb+srv://rvolkovinsky3:rbmNM5Jra9F3ZcQl@aliu319-gt.t7rt0.mongodb.net/test"
DB_name = 'ofet-db-v2'
collection_name = 'solvent'

sheet_tomongo(sheet_dict, CONNECTION_STRING, DB_name, collection_name)
