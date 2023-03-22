import os
import psycopg2
import JSON

#connect to db and create cursor object
conn = psycopg2.connect("dbname = user= password=")
cur = conn.cursor()

#this function uses python to convert an arbitrary file to binary, then hexadecimal form
def file_tobin(path):
    with open(path, 'rb') as file:
        f = file.read()
        b = bytes(f).hex()
        return b

def create_sampletable():
    #creates a table with columns: meas_id, sample_id(foreign key), type, filename, data, metadata
    #foreign key currently references placeholder_id column in placeholder table
    sql = ("""
                CREATE TABLE sample_table(
                    meas_id serial PRIMARY KEY,
                    FOREIGN KEY (placeholder_id)
                        REFERENCES placeholder (placeholder_id)
                        ON UPDATE CASCADE
                        ON DELETE CASCADE,
                    type VARCHAR(50),
                    filename VARCHAR(50),
                    data BYTEA NOT NULL,
                    metadata JSONB
                )
                """)
    try:
        cur.execute(sql)
        conn.commit()
        conn.close()
    except(Exception, psycopg2.DatabaseError) as error:
        print(error)

def samplefile_totable(folder_filepath):
    #get all file names in directory, assume they all can be converted to binary
    file_list  = os.listdir(folder_filepath)
    bin_list = []
    for file_name in file_list:
        #type (inferred from filetype, ie images AFM, vgp XPS, etc.)
        bin_list.append('placeholder type')
        #filename
        bin_list.append(file_name)
        #data
        bin_list.append(file_tobin(folder_filepath + '\\' + file_name))
        #metadata, empty json for now
        bin_list.append(json.loads('{}'))
    #convert list to list of tuples for psycopg2, assume 4 cols other than ID cols
    it = [iter(bin_list)] * 4
    bin_tuple = list(zip(*it))



    #create query
    #assume all cols other than data may just be interpreted as strings in the sql query
    #not sure if above assumption holds for jsonb, may depend on how metadata is handled
    sql = """INSERT INTO sample_table(type, filename, data, metadata)
             VALUES(%s, %s, decode(%s, 'hex'), %s)"""
    try:
        #need to open bin_tuple zip
        cur.executemany(sql, bin_tuple)
        conn.commit()
        count = cur.rowcount
        cur.close()
        print (count, " samples inserted successfully into table")
    except (Exception, psycopg2.DatabaseError) as error:
        print(error)