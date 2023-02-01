# %%

import pandas as pd
import numpy as np
import psycopg2 as pg
import os
# %%
fname = '../db_feed/DPPDTT/DPPDTT_dataset_feed_D6_ALcopy.xlsx'
df = pd.read_excel(fname)


# %% 
literature = pd.unique(df['doi'])

labmask = ~pd.isna(df.lab_notebook_id)
lab_raw = pd.unique(df.lab_notebook_id[labmask])

lab_id_split = np.vstack([[s.split('_',2)[0]+'_'+s.split('_',2)[1], s.split('_',2)[2]] for s in lab_raw])

lab_notebook_id = np.unique(lab_id_split[:,0])
sample_id = lab_id_split[:,1]
# %%

# Add unique DOIs to ofetdb


# Add unique experiments to ofetdb