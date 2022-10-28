# %%

import pandas as pd
import numpy as np
from pymongo import MongoClient
import json
from bson.objectid import ObjectId
import functools

###

def get_dicts(fpath):

    # with open(self.path) as file:
    #     f = csv.reader(file)
        
    #     #skip header to avoid indexing errors
    #     header = next(f)

    df = pd.read_excel(fpath)
    

    pass