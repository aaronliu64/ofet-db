# %%

import pandas as pd
import pymongo

# %% 
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

#   check if a document with all of the same values exists; if so don't add it to collection
    
    #for solvent; rather than just key-value pair from excel sheet, use sovlent info from sheet to fill solution collection. create solvent collection with pre-filled information
    # if collection_name == 'solvent':
    #     solvent_mask = pd.Series(sheet_dict['2. Solution'].index.str.contains('Solvent'), name='bools')
    #     solvent_dict = sheet_dict['2. Solution'][solvent_mask.values].to_dict()
    #     query = solvent_dict['VALUE']
    #     num_equivalent_solvents = collection.count_documents(query)
    #     if num_equivalent_solvents < 1:
    #         query['_id'] = unique_id
    #         final_doc = query
    #         collection.insert_one(final_doc)

    #same approach as for solvent, separate polymer semiconductor and insulators    
    if collection_name == 'polymer':
        polysemi_mask = pd.Series(sheet_dict['2. Solution'].index.str.contains('Polymer Semiconductor'), name='bools')
        polysemi_dict = sheet_dict['2. Solution'][polysemi_mask.values].to_dict()
        semi_query = polysemi_dict['VALUE']
        num_equivalent_polysemi = collection.count_documents(semi_query)
        if num_equivalent_polysemi < 1:
            query['_id'] = unique_id
            final_doc = query
            collection.insert_one(final_doc)
            polysemi_mask = pd.Series(sheet_dict['2. Solution'].index.str.contains('Polymer Semiconductor'), name='bools')
        
        polyins_mask = pd.Series(sheet_dict['2. Solution'].index.str.contains('Polymer Insulator'), name='bools')
        polyins_dict = sheet_dict['2. Solution'][polyins_mask.values].to_dict()
        ins_query = polyins_dict['VALUE']
        num_equivalent_polyins = collection.count_documents(ins_query)
        if num_equivalent_polyins < 1:
            query['_id'] = unique_id
            final_doc = query
            collection.insert_one(final_doc)
    #solution can just reference polymer_id, solvent_id, then soln information
    elif collection_name == 'solution':
        print('hello')


    elif collection_name == 'Solution-Pretreatment':
        spt_mask = pd.Series(sheet_dict['2b. Solution Pre-treatment'].index.str.contains('Solvent|Cooling|UV Irradiation|Aging|Sonication'), name='bools')
        spt_dict = sheet_dict['2b. Solution Pre-treatment'][spt_mask.values].to_dict()
        query = spt_dict['VALUE']
        num_equivalent_spt = collection.count_documents(query)
        if num_equivalent_spt < 1:
            query['_id'] = unique_id
            final_doc = query
            collection.insert_one(final_doc)
    elif collection_name == 'substrate':
        sub_mask = pd.Series(sheet_dict['3. Substrate'].index.str.contains('Substrate|Dielectric|Electrode|Gate|Surface'), name='bools')
        sub_dict = sheet_dict['3. Substrate'][sub_mask.values].to_dict()
        query = sub_dict['VALUE']
        num_equivalent_sub = collection.count_documents(query)
        if num_equivalent_sub < 1:
            query['_id'] = unique_id
            final_doc = query
            collection.insert_one(final_doc)
    elif collection_name == 'Coating-Process':
        coat_mask = pd.Series(sheet_dict['4. Coating Process'].index.str.contains('Deposition|Annealing|Spin|Blade|Drop|Other'), name='bools')
        coat_dict = sheet_dict['4. Coating Process'][coat_mask.values].to_dict()
        query = coat_dict['VALUE']
        num_equivalent_coat = collection.count_documents(query)
        if num_equivalent_coat < 1:
            query['_id'] = unique_id
            final_doc = query
            collection.insert_one(final_doc)
    elif collection_name == 'Device-Performance':
        perf_mask = pd.Series(sheet_dict['5. Device Performance'].index.str.contains('Device|Hole|Electron|Threshold|On_off|Transfer|Output|Subthreshold'), name='bools')
        perf_dict = sheet_dict['5. Device Performance'][perf_mask.values].to_dict()
        query = perf_dict['VALUE']
        num_equivalent_perf = collection.count_documents(query)
        if num_equivalent_perf < 1:
            query['_id'] = unique_id
            final_doc = query
            collection.insert_one(final_doc)
    elif collection_name == 'Struct-Info':
        struct_mask = pd.Series(sheet_dict['6. Structural Information'].index.str.contains('UV|Film|Solution|AFM|Film|GIWAXS|Thickness'), name='bools')
        struct_dict = sheet_dict['6. Structural Information'][struct_mask.values].to_dict()
        query = struct_dict['VALUE']
        num_equivalent_struct = collection.count_documents(query)
        if num_equivalent_struct < 1:
            query['_id'] = unique_id
            final_doc = query
            collection.insert_one(final_doc)    
        

filepath = r"db_feed\new_template_v3.xlsx"
sheet_dict = template_todict(filepath)
CONNECTION_STRING = "mongodb+srv://rvolkovinsky3:rbmNM5Jra9F3ZcQl@aliu319-gt.t7rt0.mongodb.net/test"
DB_name = 'ofet-db-v2'
collection_name = 'Solution-Pretreatment'

sheet_tomongo(sheet_dict, CONNECTION_STRING, DB_name, collection_name)
