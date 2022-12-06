import pandas as pd
import pymongo
import json
from helper_funcs import name2cid, cid2json




def pop_solvent_collection(CONNECTION_STRING, DB_name, collection_name, solv_list):

    mongoclient = pymongo.MongoClient(CONNECTION_STRING)
    db = mongoclient[DB_name]
    collection = db[collection_name]

    for solv in solv_list:
        cid = name2cid(solv)
        solv_json = cid2json(cid)
        solv_dict = json.loads(solv_json)
        solv_dict['_id'] = cid[0]
        collection.insert_one(solv_dict)
    return collection.count_documents({})


solvent_list = ['chloroform', 'chlorobenzene', '1,2-dichlorobenzene', 'toluene']
CONNECTION_STRING = "mongodb+srv://rvolkovinsky3:rbmNM5Jra9F3ZcQl@aliu319-gt.t7rt0.mongodb.net/test"
DB_name = 'ofet-db-v2'
collection_name = 'solvent'


# DELETE ALL DOCUMENTS IN DOI-TEST COLLECTION
# mongoclient = pymongo.MongoClient(CONNECTION_STRING)
# db = mongoclient[DB_name]
# collection = db[collection_name]
# collection.delete_many({})

pop_solvent_collection(CONNECTION_STRING, DB_name, collection_name, solvent_list)
