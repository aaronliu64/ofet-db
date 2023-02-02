# %%

import pandas as pd
import numpy as np
import psycopg2 as pg
import os
# %%
fname = '../db_feed/DPPDTT/DPPDTT_dataset_feed_D6_ALcopy.xlsx'
df = pd.read_excel(fname, sheet_name='renamed')


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