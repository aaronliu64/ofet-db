import csv
import json
import pprint

import bibtexparser
import pandas as pd
import pubchempy as pcpy
import pymongo
import requests


#doi2dict is a simple helper function that converts a doi list into a list of dictionaries of the doi metadata. The function expects a list of doi strings
def doi2dict(doi_list):
    doi_dict_list = [{}]*len(doi_list)
    doi_count = 0
    for doi in doi_list:
        #check if doi is nan
        if doi != doi:
            continue
        else:
            #create url
            url = "http://dx.doi.org/" + doi

            #create dictionary of http bibtex headers that requests will retrieve from the url
            headers = {"accept": "application/x-bibtex"}

            #reqeusts information specified by bibtex from url
            r = requests.get(url, headers = headers).text    

            #parse the returned bibtex text to a dictionary
            #NOTE: USE bibtexparser.customization to split strings into list, etc. (https://bibtexparser.readthedocs.io/en/master/bibtexparser.html?highlight=bparser#module-bibtexparser.bparser)
            bibdata = bibtexparser.bparser.BibTexParser().parse(r)
            
            # add dict to list
            doi_dict_list[doi_count] = bibdata.entries[0]
            doi_count = doi_count + 1
            # # print doi metadata to console
            # pp = pprint.PrettyPrinter(indent=4)
            # pp.pprint(bibdata.entries[0])

            # #create json file with corresponding doi id, dump info into file.
            # with open(bibdata.entries[0]['ID'] + '.json', 'w+') as outfile:
            #     json.dump(bibdata.entries[0], outfile, ensure_ascii = 'false')   
    doi_dict_list = list(filter(None, doi_dict_list))
    return doi_dict_list

#This helper function upserts a new document to a specified mongodb collection, and returns the amount of documents that were modified.
def doiCollection_updatemany(doilist_to_add, CONNECTION_URI, DB_name, collection_name):
    doidict_list = doi2dict(doilist_to_add)
    
    mongoclient = pymongo.MongoClient(CONNECTION_STRING)
    db = mongoclient[DB_name]
    collection = db[test_collection_name]
    
    doi_idx = collection.create_index('doi', unique=True)
    iter_id = collection.count_documents({})
    
    for doi in doidict_list:
        if collection.count_documents({ 'doi': doi['doi'] }, limit = 1) != 0:
            continue
        else:
            doi['_id'] = iter_id
            iter_id = iter_id + 1
            inserted_dict = collection.insert_one(doi)
    return inserted_dict

def name2cid(chemName):
    cid = pcpy.get_cids(chemName)
    #if chemname isn't valid, cid will return an empty array. if so, this if statement will return an error message.
    if not cid:
        return 'Please enter a valid name.'
    else:
        return cid

def cid2json(cid):

    #this code uses the PUG REST api to retrieve the 'simple' properties such as IUPAC name, formula, smiles, etc.
    simple_props_json = requests.get('https://pubchem.ncbi.nlm.nih.gov/rest/pug/compound/cid/' + str(cid[0]) + '/property/IUPACName,MolecularFormula,CanonicalSMILES/JSON').text
    simple_props_dict = json.loads(simple_props_json)
    simple_props_dict = simple_props_dict['PropertyTable']['Properties'][0]
    
    #the boiling point is nontrivial to retrieve, as experimental properties are not at all included in any API. therefore I have to manually retrieve the pubchem data as a JSON,
    #from there, I load the json data into a dictionary and use some filters to get all the way down to the boiling point info
    data_JSON = requests.get('https://pubchem.ncbi.nlm.nih.gov/rest/pug_view/data/compound/' + str(cid[0]) + '/JSON')
    data_dict = json.loads(data_JSON.text)
    data_sections = data_dict['Record']['Section']
    props_list = list(filter(lambda section: section['TOCHeading'] == 'Chemical and Physical Properties', data_sections))
    experimentalprops_list = list(filter(lambda section: section['TOCHeading'] == 'Experimental Properties', props_list[0]['Section']))
    
    #there are multiple sources for the boiling points, often in different units. for now I've chosen to leave all the information in, but this can be tweaked
    bplist = list(filter(lambda section: section['TOCHeading'] in 'Boiling Point', experimentalprops_list[0]['Section']))
    bpdict = {}
    bpdict[bplist[0]['TOCHeading']] = bplist[0]['Information']
    
    #merge the two dictionaries
    props_dict = {**simple_props_dict, **bpdict}
    #convert dictionary to json
    props_json = json.dumps(props_dict)
    
    return props_json

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