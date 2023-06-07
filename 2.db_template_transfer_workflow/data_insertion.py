# -*- coding: utf-8 -*-

import psycopg2 as pg
import pprint as pp
from psycopg2.extras import Json
import numpy as np
import pandas as pd

### Template Reader Functions

def remove_emptyrows(df):
    '''    

    Parameters
    ----------
    df : dataframe object
        Works with any dataframe, but intended as a df from a sheet

    Returns
    -------
    df[nan_mask] : dataframe object
        The dataframe that removes rows that have no value in the second column

    '''
    
    nan_mask = ~df.iloc[:,1].isna() #remove rows that have no value in the second column
    return df[nan_mask]

def read_sheet(filepath, sheet_name, ordering=False, usecols="A,B,D", meas=False):
    
    """
    Parameters
    ----------
    filepath : file name of the completed experimental template
        Works with any dataframe, but intended as a df from a sheet
    sheet_name : Name of the template sheet (e.g., 'Solution Makeup', etc.)
        
    Returns
    -------
    sheet_dict : the desired format of a dictionary
        The dataframe that removes rows that have no value in the second column

    
    """
    
    ## Read Experimental Source Info
    df = pd.read_excel(
        filepath,
        sheet_name=sheet_name,
        usecols=usecols
    )
    
    #remove empty rows
    df_ = remove_emptyrows(df)
    
    sheet_dict = dict()

    if ordering==True:
        df_list = split_df(df_)
        for i, df in enumerate(df_list):
            sheet_dict[i] = table_to_dict(df)
    else:
        sheet_dict = table_to_dict(df_)
    
    return sheet_dict #returns a dataframe

def split_df(df_):
    
    """
    Parameters
    ----------
    df_ : 
        
    Returns
    -------
    df_list : 
        
    """
    
    split_idx_mask = df_.iloc[:,0].str.contains('#') #Find the object splits
    w = df_[split_idx_mask].index.values
    
    df_list = []
    
    for i in range(len(w)-1):
        next_df = df_.loc[w[i]+1:w[i+1]-1,:]
        df_list.append(next_df)    
    
    return df_list

def table_to_dict(df_):
    """

    Parameters
    ----------
    df_ : TYPE
        DESCRIPTION.

    Returns
    -------
    step_dict : TYPE
        DESCRIPTION.

    """
    
    main_mask = pd.isna(df_.JSON)
    step_dict = dict(df_[main_mask].iloc[:,:2].values)

    for json_field in pd.unique(df_.JSON):

        if pd.isna(json_field):
            continue
        elif json_field=='data':
            data_mask = df_.JSON=='data'
            
            # lump key:value pairs into a second nested data dict
            step_dict['data'] = dict()
            
            for i, s in df_[data_mask].iterrows():
                step_dict['data'][s[s.index[0]]] = s['value':'error_type'].dropna().to_dict()
        else:
            json_mask = df_.JSON==json_field
            step_dict[json_field] = dict(df_[json_mask].iloc[:,:2].values)

    return step_dict


### Data Conversion

def insert_from_template(fpath):
    
    pass