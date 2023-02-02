# %%

import pandas as pd
import numpy as np
import psycopg2 as pg
from psycopg2.extras import Json
import os
import requests
import json
import bibtexparser
import pprint

# %%
param_dict = {
    "host"      : "127.0.0.1",
    "database"  : "ofetdb_v2",
    "user"      : "postgres",
    "password"  : "password",
    "port"      : "5432",
}

def connect(params_dict):
    """ Connect to the PostgreSQL database server """
    conn = None
    try:
        # connect to the PostgreSQL server
        print('Connecting to the PostgreSQL database...')
        conn = pg.connect(**params_dict)
    except (Exception, pg.DatabaseError) as error:
        print(error)
        sys.exit(1) 
    print("Connection successful")
    return conn

def doi2dict(doi):
    #create url
    url = "http://dx.doi.org/" + doi
    
    #create dictionary of http bibtex headers that requests will retrieve from the url
    headers = {"accept": "application/x-bibtex"}
    
    #reqeusts information specified by bibtex from url
    r = requests.get(url, headers = headers).text    
    
    #parse the returned bibtex text to a dictionary
    #NOTE: USE bibtexparser.customization to split strings into list, etc. (https://bibtexparser.readthedocs.io/en/master/bibtexparser.html?highlight=bparser#module-bibtexparser.bparser)
    bibdata = bibtexparser.bparser.BibTexParser().parse(r)
    
    # # print doi metadata
    # pp = pprint.PrettyPrinter(indent=4)
    # pp.pprint(bibdata.entries[0])
    
    #return dict of metadata
    return bibdata.entries[0]


# %%
fname = '../db_feed/DPPDTT/DPPDTT_dataset_feed_D6_ALcopy.xlsx'
df = pd.read_excel(fname, sheet_name='sample')


# %% 
literature = pd.unique(df['doi'])

labmask = ~pd.isna(df.lab_notebook_id)
lab_raw = pd.unique(df.lab_notebook_id[labmask])

lab_id_split = np.vstack([[s.split('_',2)[0]+'_'+s.split('_',2)[1], s.split('_',2)[2]] for s in lab_raw])

lab_notebook_id = np.unique(lab_id_split[:,0])
sample_id = lab_id_split[:,1]
# %%

param_dic = {
    "host"      : "127.0.0.1",
    "database"  : "ofetdb_v2",
    "user"      : "postgres",
    "password"  : "password",
    "port"      : "5432",
}

def connect(params_dic):
    """ Connect to the PostgreSQL database server """
    conn = None
    try:
        # connect to the PostgreSQL server
        print('Connecting to the PostgreSQL database...')
        conn = pg.connect(**params_dic)
    except (Exception, pg.DatabaseError) as error:
        print(error)
        sys.exit(1) 
    print("Connection successful")
    return conn

conn = connect(param_dic)

# Add unique DOIs to ofetdb


# Add unique experiments to ofetdb