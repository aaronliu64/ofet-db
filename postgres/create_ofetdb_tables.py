# -*- coding: utf-8 -*-

# %% Import psycopg2

import psycopg2

kwargs = {
    'database': 'ofetdb_v2',
    'user': 'postgres',
    'password': 'password',
    'host': '127.0.0.1',
    'port': '5432'
}

# %% Create Tables for EXPERIMENT_INFO

conn = psycopg2.connect(**kwargs)

print("Connnection Successful")

cur = conn.cursor()
cur.execute(
    '''
    CREATE TABLE IF NOT EXISTS EXPERIMENT_INFO (
        exp_id          SERIAL          PRIMARY KEY,
        source_type     VARCHAR(20)     NOT NULL        
    );
    
    CREATE TABLE IF NOT EXISTS LABORATORY (
        exp_id          INT             DEFAULT NULL,
        source_data     JSONB,
        PRIMARY KEY(exp_id),
        FOREIGN KEY(exp_id) REFERENCES EXPERIMENT_INFO(exp_id)
            ON DELETE SET NULL ON UPDATE CASCADE        
    );
    
    CREATE TABLE IF NOT EXISTS LITERATURE (
        exp_id          INT             DEFAULT NULL,
        doi             VARCHAR(50)     UNIQUE,
        source_data     JSONB,
        PRIMARY KEY(exp_id),
        FOREIGN KEY(exp_id) REFERENCES EXPERIMENT_INFO(exp_id)
            ON DELETE SET NULL ON UPDATE CASCADE
    );
      '''
)

print("Table(s) created successfully")
conn.commit()

print("Operation successful")
conn.close()
# %% Create Tables for SOLUTION MAKEUP

conn = psycopg2.connect(**kwargs)

print("Connnection Successful")

cur = conn.cursor()
cur.execute(
    '''
    CREATE TABLE IF NOT EXISTS SOLUTION (
        solution_id             SERIAL          PRIMARY KEY,
        concentration_mg_ml     FLOAT                  
    );
    
    CREATE TABLE IF NOT EXISTS SOLVENT (
        solvent_id              SERIAL          PRIMARY KEY,
        pubchem_CID             INT,
        iupac_name              VARCHAR(50),
        metadata                JSONB                  
    );
    
    CREATE TABLE IF NOT EXISTS POLYMER (
        polymer_id              SERIAL          PRIMARY KEY,
        polymer_name            VARCHAR(500),
        Mn_kDa                  FLOAT,
        Mw_kDa                  FLOAT,
        dispersity              FLOAT,
        metadata                JSONB              
    );
    
    CREATE TABLE IF NOT EXISTS SOLUTION_MAKEUP_SOLVENT (
        solution_id             INT             NOT NULL,
        solvent_id              INT             NOT NULL,
        solvent_vol_pct         FLOAT,
        
        PRIMARY KEY(solution_id, solvent_id),
        FOREIGN KEY(solvent_id) REFERENCES SOLVENT(solvent_id)
            ON DELETE SET NULL ON UPDATE CASCADE,
        FOREIGN KEY(solution_id) REFERENCES SOLUTION(solution_id)
            ON DELETE SET NULL ON UPDATE CASCADE
    );

    CREATE TABLE IF NOT EXISTS SOLUTION_MAKEUP_POLYMER (
        solution_id             INT,
        polymer_id              INT,
        polymer_wt_pct          FLOAT,
        
        PRIMARY KEY(solution_id, polymer_id),
        FOREIGN KEY(polymer_id) REFERENCES POLYMER(polymer_id)
            ON DELETE SET NULL ON UPDATE CASCADE,
        FOREIGN KEY(solution_id) REFERENCES SOLUTION(solution_id)
            ON DELETE SET NULL ON UPDATE CASCADE
    );
      '''
)

print("Table(s) created successfully")
conn.commit()

print("Operation successful")
conn.close()

# %% Create Tables for SOLUTION_TREATMENT

conn = psycopg2.connect(**kwargs)

print("Connnection Successful")

cur = conn.cursor()
cur.execute(
    '''
    
    CREATE TABLE IF NOT EXISTS SOLUTION_TREATMENT (
        solution_treatment_id           SERIAL          PRIMARY KEY
    );
    
    CREATE TABLE IF NOT EXISTS SOLUTION_TREATMENT_STEP (
        solution_treatment_step_id      SERIAL          PRIMARY KEY,
        treatment_type                  VARCHAR(20),
        parameters                      JSONB,
        metadata                        JSONB
    );
    
    CREATE TABLE IF NOT EXISTS SOLUTION_TREATMENT_ORDER (
        solution_treatment_id           INT,
        process_order                   INT,
        solution_treatment_step_id      INT,

        FOREIGN KEY(solution_treatment_id) REFERENCES SOLUTION_TREATMENT(solution_treatment_id)
            ON DELETE SET NULL ON UPDATE CASCADE,        
        FOREIGN KEY(solution_treatment_step_id) REFERENCES SOLUTION_TREATMENT_STEP(solution_treatment_step_id)
            ON DELETE SET NULL ON UPDATE CASCADE,
        PRIMARY KEY(solution_treatment_id, process_order)
    );
    

      '''
)

print("Table(s) created successfully")
conn.commit()

print("Operation successful")
conn.close()

# %% Create Tables for DEVICE_FABRICATION

conn = psycopg2.connect(**kwargs)

print("Connnection Successful")

cur = conn.cursor()
cur.execute(
    '''
    
    CREATE TABLE IF NOT EXISTS DEVICE_FABRICATION (
        device_fab_id       SERIAL      PRIMARY KEY,
        parameters          JSONB,
        metadata            JSONB
    );


      '''
)

print("Table(s) created successfully")
conn.commit()

print("Operation successful")
conn.close()

# %% Create Tables for SUBSTRATE_PRETREAT

conn = psycopg2.connect(**kwargs)

print("Connnection Successful")

cur = conn.cursor()
cur.execute(
    '''
    
    CREATE TABLE IF NOT EXISTS SUBSTRATE_PRETREAT (
        substrate_pretreat_id           SERIAL          PRIMARY KEY
    );
    
    CREATE TABLE IF NOT EXISTS SUBSTRATE_PRETREAT_STEP (
        substrate_pretreat_step_id      SERIAL          PRIMARY KEY,
        treatment_type                  VARCHAR(20),
        parameters                      JSONB,
        metadata                        JSONB
    );
    
    CREATE TABLE IF NOT EXISTS SUBSTRATE_PRETREAT_ORDER (
        substrate_pretreat_id           INT,
        process_order                   INT,
        substrate_pretreat_step_id      INT,
        
        FOREIGN KEY(substrate_pretreat_id) REFERENCES SUBSTRATE_PRETREAT(substrate_pretreat_id)
            ON DELETE SET NULL ON UPDATE CASCADE,
        FOREIGN KEY(substrate_pretreat_step_id) REFERENCES SUBSTRATE_PRETREAT_STEP(substrate_pretreat_step_id)
            ON DELETE SET NULL ON UPDATE CASCADE,
        PRIMARY KEY(substrate_pretreat_id, process_order)
    );

      '''
)

print("Table(s) created successfully")
conn.commit()

print("Operation successful")
conn.close()

# %% Create Tables for FILM_DEPOSITION

conn = psycopg2.connect(**kwargs)

print("Connnection Successful")

cur = conn.cursor()
cur.execute(
    '''
    
    CREATE TABLE IF NOT EXISTS FILM_DEPOSITION (
        film_deposition_id      SERIAL          PRIMARY KEY,
        deposition_type         VARCHAR(30),
        parameters              JSONB,
        metadata                JSONB
    );

      '''
)

print("Table(s) created successfully")
conn.commit()

print("Operation successful")
conn.close()

# %% Create Tables for POSTPROCESS

conn = psycopg2.connect(**kwargs)

print("Connnection Successful")

cur = conn.cursor()
cur.execute(
    '''

    CREATE TABLE IF NOT EXISTS POSTPROCESS (
        postprocess_id                  SERIAL          PRIMARY KEY
    );

    CREATE TABLE IF NOT EXISTS POSTPROCESS_STEP (
        postprocess_step_id             SERIAL          PRIMARY KEY,
        treatment_type                  VARCHAR(30),
        parameters                      JSONB,
        metadata                        JSONB
    );
    
    CREATE TABLE IF NOT EXISTS POSTPROCESS_ORDER (
        postprocess_id                  INT,
        process_order                   INT,
        postprocess_step_id             INT,
        
        FOREIGN KEY(postprocess_id) REFERENCES POSTPROCESS(postprocess_id)
            ON DELETE SET NULL ON UPDATE CASCADE,
        FOREIGN KEY(postprocess_step_id) REFERENCES POSTPROCESS_STEP(postprocess_step_id)
            ON DELETE SET NULL ON UPDATE CASCADE,
        PRIMARY KEY(postprocess_id, process_order)
    );

      '''
)

print("Table(s) created successfully")
conn.commit()

print("Operation successful")
conn.close()

# %% Create OFET_PROCESS Table

conn = psycopg2.connect(**kwargs)

print("Connnection Successful")

cur = conn.cursor()
cur.execute(
    '''
    
    CREATE TABLE IF NOT EXISTS OFET_PROCESS (
        process_id              SERIAL          PRIMARY KEY,
        solution_id             INT,
        solution_treatment_id   INT,
        device_fab_id           INT,
        substrate_pretreat_id   INT,
        film_deposition_id      INT,
        postprocess_id          INT,
        metadata                JSONB,
        
        FOREIGN KEY(solution_id) REFERENCES SOLUTION(solution_id)
            ON DELETE SET NULL ON UPDATE CASCADE,
        FOREIGN KEY(solution_treatment_id) REFERENCES SOLUTION_TREATMENT(solution_treatment_id)
            ON DELETE SET NULL ON UPDATE CASCADE,
        FOREIGN KEY(device_fab_id) REFERENCES DEVICE_FABRICATION(device_fab_id)
            ON DELETE SET NULL ON UPDATE CASCADE,
        FOREIGN KEY(substrate_pretreat_id) REFERENCES SUBSTRATE_PRETREAT(substrate_pretreat_id)
            ON DELETE SET NULL ON UPDATE CASCADE,
        FOREIGN KEY(film_deposition_id) REFERENCES FILM_DEPOSITION(film_deposition_id)
            ON DELETE SET NULL ON UPDATE CASCADE,
        FOREIGN KEY(postprocess_id) REFERENCES POSTPROCESS(postprocess_id)
            ON DELETE SET NULL ON UPDATE CASCADE
    );
    

      '''
)

print("Table(s) created successfully")
conn.commit()

print("Operation successful")
conn.close()

# %% Create SAMPLE Table

conn = psycopg2.connect(**kwargs)

print("Connnection Successful")

cur = conn.cursor()
cur.execute(
    '''
    
    CREATE TABLE IF NOT EXISTS SAMPLE (
        sample_id       SERIAL          PRIMARY KEY,
        exp_id          INT,
        process_id      INT,
        metadata        JSONB,
        
        FOREIGN KEY(exp_id) REFERENCES EXPERIMENT_INFO(exp_id)
            ON DELETE SET NULL ON UPDATE CASCADE,
        FOREIGN KEY(process_id) REFERENCES OFET_PROCESS(process_id)
            ON DELETE SET NULL ON UPDATE CASCADE

    );
    

      '''
)

print("Table(s) created successfully")
conn.commit()

print("Operation successful")
conn.close()

# %% Create MEASUREMENT Table

conn = psycopg2.connect(**kwargs)

print("Connnection Successful")

cur = conn.cursor()
cur.execute(
    '''
    
    CREATE TABLE IF NOT EXISTS MEASUREMENT (
        measurement_id      SERIAL          PRIMARY KEY,
        sample_id           INT,
        measurement_type    VARCHAR(30),
        filepath            VARCHAR(500),
        data                JSONB,
        metadata            JSONB,
        
        FOREIGN KEY(sample_id) REFERENCES SAMPLE(sample_id)
            ON DELETE SET NULL ON UPDATE CASCADE

    );
    

      '''
)

print("Table(s) created successfully")
conn.commit()

print("Operation successful")
conn.close()