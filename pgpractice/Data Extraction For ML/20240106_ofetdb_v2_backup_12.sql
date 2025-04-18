PGDMP     0    2                 |         	   ofetdb_v2    15.4    15.2    e           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            f           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            g           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            h           1262    32551 	   ofetdb_v2    DATABASE     t   CREATE DATABASE ofetdb_v2 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';
    DROP DATABASE ofetdb_v2;
                mg200_ofetdb    false                        2615    2200    public    SCHEMA     2   -- *not* creating schema, since initdb creates it
 2   -- *not* dropping schema, since initdb creates it
                azure_pg_admin    false            i           0    0 4   FUNCTION pg_replication_origin_advance(text, pg_lsn)    ACL     `   GRANT ALL ON FUNCTION pg_catalog.pg_replication_origin_advance(text, pg_lsn) TO azure_pg_admin;
       
   pg_catalog          azuresu    false    261            j           0    0 +   FUNCTION pg_replication_origin_create(text)    ACL     W   GRANT ALL ON FUNCTION pg_catalog.pg_replication_origin_create(text) TO azure_pg_admin;
       
   pg_catalog          azuresu    false    266            k           0    0 )   FUNCTION pg_replication_origin_drop(text)    ACL     U   GRANT ALL ON FUNCTION pg_catalog.pg_replication_origin_drop(text) TO azure_pg_admin;
       
   pg_catalog          azuresu    false    260            l           0    0 (   FUNCTION pg_replication_origin_oid(text)    ACL     T   GRANT ALL ON FUNCTION pg_catalog.pg_replication_origin_oid(text) TO azure_pg_admin;
       
   pg_catalog          azuresu    false    263            m           0    0 6   FUNCTION pg_replication_origin_progress(text, boolean)    ACL     b   GRANT ALL ON FUNCTION pg_catalog.pg_replication_origin_progress(text, boolean) TO azure_pg_admin;
       
   pg_catalog          azuresu    false    262            n           0    0 1   FUNCTION pg_replication_origin_session_is_setup()    ACL     ]   GRANT ALL ON FUNCTION pg_catalog.pg_replication_origin_session_is_setup() TO azure_pg_admin;
       
   pg_catalog          azuresu    false    276            o           0    0 8   FUNCTION pg_replication_origin_session_progress(boolean)    ACL     d   GRANT ALL ON FUNCTION pg_catalog.pg_replication_origin_session_progress(boolean) TO azure_pg_admin;
       
   pg_catalog          azuresu    false    270            p           0    0 .   FUNCTION pg_replication_origin_session_reset()    ACL     Z   GRANT ALL ON FUNCTION pg_catalog.pg_replication_origin_session_reset() TO azure_pg_admin;
       
   pg_catalog          azuresu    false    271            q           0    0 2   FUNCTION pg_replication_origin_session_setup(text)    ACL     ^   GRANT ALL ON FUNCTION pg_catalog.pg_replication_origin_session_setup(text) TO azure_pg_admin;
       
   pg_catalog          azuresu    false    272            r           0    0 +   FUNCTION pg_replication_origin_xact_reset()    ACL     W   GRANT ALL ON FUNCTION pg_catalog.pg_replication_origin_xact_reset() TO azure_pg_admin;
       
   pg_catalog          azuresu    false    273            s           0    0 K   FUNCTION pg_replication_origin_xact_setup(pg_lsn, timestamp with time zone)    ACL     w   GRANT ALL ON FUNCTION pg_catalog.pg_replication_origin_xact_setup(pg_lsn, timestamp with time zone) TO azure_pg_admin;
       
   pg_catalog          azuresu    false    274            t           0    0    FUNCTION pg_show_replication_origin_status(OUT local_id oid, OUT external_id text, OUT remote_lsn pg_lsn, OUT local_lsn pg_lsn)    ACL     �   GRANT ALL ON FUNCTION pg_catalog.pg_show_replication_origin_status(OUT local_id oid, OUT external_id text, OUT remote_lsn pg_lsn, OUT local_lsn pg_lsn) TO azure_pg_admin;
       
   pg_catalog          azuresu    false    275            u           0    0    FUNCTION pg_stat_reset()    ACL     D   GRANT ALL ON FUNCTION pg_catalog.pg_stat_reset() TO azure_pg_admin;
       
   pg_catalog          azuresu    false    264            v           0    0 #   FUNCTION pg_stat_reset_shared(text)    ACL     O   GRANT ALL ON FUNCTION pg_catalog.pg_stat_reset_shared(text) TO azure_pg_admin;
       
   pg_catalog          azuresu    false    259            w           0    0 4   FUNCTION pg_stat_reset_single_function_counters(oid)    ACL     `   GRANT ALL ON FUNCTION pg_catalog.pg_stat_reset_single_function_counters(oid) TO azure_pg_admin;
       
   pg_catalog          azuresu    false    265            x           0    0 1   FUNCTION pg_stat_reset_single_table_counters(oid)    ACL     ]   GRANT ALL ON FUNCTION pg_catalog.pg_stat_reset_single_table_counters(oid) TO azure_pg_admin;
       
   pg_catalog          azuresu    false    258            y           0    0    COLUMN pg_config.name    ACL     D   GRANT SELECT(name) ON TABLE pg_catalog.pg_config TO azure_pg_admin;
       
   pg_catalog          azuresu    false    98            z           0    0    COLUMN pg_config.setting    ACL     G   GRANT SELECT(setting) ON TABLE pg_catalog.pg_config TO azure_pg_admin;
       
   pg_catalog          azuresu    false    98            {           0    0 $   COLUMN pg_hba_file_rules.line_number    ACL     S   GRANT SELECT(line_number) ON TABLE pg_catalog.pg_hba_file_rules TO azure_pg_admin;
       
   pg_catalog          azuresu    false    94            |           0    0    COLUMN pg_hba_file_rules.type    ACL     L   GRANT SELECT(type) ON TABLE pg_catalog.pg_hba_file_rules TO azure_pg_admin;
       
   pg_catalog          azuresu    false    94            }           0    0 !   COLUMN pg_hba_file_rules.database    ACL     P   GRANT SELECT(database) ON TABLE pg_catalog.pg_hba_file_rules TO azure_pg_admin;
       
   pg_catalog          azuresu    false    94            ~           0    0 "   COLUMN pg_hba_file_rules.user_name    ACL     Q   GRANT SELECT(user_name) ON TABLE pg_catalog.pg_hba_file_rules TO azure_pg_admin;
       
   pg_catalog          azuresu    false    94                       0    0     COLUMN pg_hba_file_rules.address    ACL     O   GRANT SELECT(address) ON TABLE pg_catalog.pg_hba_file_rules TO azure_pg_admin;
       
   pg_catalog          azuresu    false    94            �           0    0     COLUMN pg_hba_file_rules.netmask    ACL     O   GRANT SELECT(netmask) ON TABLE pg_catalog.pg_hba_file_rules TO azure_pg_admin;
       
   pg_catalog          azuresu    false    94            �           0    0 $   COLUMN pg_hba_file_rules.auth_method    ACL     S   GRANT SELECT(auth_method) ON TABLE pg_catalog.pg_hba_file_rules TO azure_pg_admin;
       
   pg_catalog          azuresu    false    94            �           0    0     COLUMN pg_hba_file_rules.options    ACL     O   GRANT SELECT(options) ON TABLE pg_catalog.pg_hba_file_rules TO azure_pg_admin;
       
   pg_catalog          azuresu    false    94            �           0    0    COLUMN pg_hba_file_rules.error    ACL     M   GRANT SELECT(error) ON TABLE pg_catalog.pg_hba_file_rules TO azure_pg_admin;
       
   pg_catalog          azuresu    false    94            �           0    0 ,   COLUMN pg_replication_origin_status.local_id    ACL     [   GRANT SELECT(local_id) ON TABLE pg_catalog.pg_replication_origin_status TO azure_pg_admin;
       
   pg_catalog          azuresu    false    143            �           0    0 /   COLUMN pg_replication_origin_status.external_id    ACL     ^   GRANT SELECT(external_id) ON TABLE pg_catalog.pg_replication_origin_status TO azure_pg_admin;
       
   pg_catalog          azuresu    false    143            �           0    0 .   COLUMN pg_replication_origin_status.remote_lsn    ACL     ]   GRANT SELECT(remote_lsn) ON TABLE pg_catalog.pg_replication_origin_status TO azure_pg_admin;
       
   pg_catalog          azuresu    false    143            �           0    0 -   COLUMN pg_replication_origin_status.local_lsn    ACL     \   GRANT SELECT(local_lsn) ON TABLE pg_catalog.pg_replication_origin_status TO azure_pg_admin;
       
   pg_catalog          azuresu    false    143            �           0    0     COLUMN pg_shmem_allocations.name    ACL     O   GRANT SELECT(name) ON TABLE pg_catalog.pg_shmem_allocations TO azure_pg_admin;
       
   pg_catalog          azuresu    false    99            �           0    0    COLUMN pg_shmem_allocations.off    ACL     N   GRANT SELECT(off) ON TABLE pg_catalog.pg_shmem_allocations TO azure_pg_admin;
       
   pg_catalog          azuresu    false    99            �           0    0     COLUMN pg_shmem_allocations.size    ACL     O   GRANT SELECT(size) ON TABLE pg_catalog.pg_shmem_allocations TO azure_pg_admin;
       
   pg_catalog          azuresu    false    99            �           0    0 *   COLUMN pg_shmem_allocations.allocated_size    ACL     Y   GRANT SELECT(allocated_size) ON TABLE pg_catalog.pg_shmem_allocations TO azure_pg_admin;
       
   pg_catalog          azuresu    false    99            �           0    0    COLUMN pg_statistic.starelid    ACL     K   GRANT SELECT(starelid) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;
       
   pg_catalog          azuresu    false    39            �           0    0    COLUMN pg_statistic.staattnum    ACL     L   GRANT SELECT(staattnum) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;
       
   pg_catalog          azuresu    false    39            �           0    0    COLUMN pg_statistic.stainherit    ACL     M   GRANT SELECT(stainherit) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;
       
   pg_catalog          azuresu    false    39            �           0    0    COLUMN pg_statistic.stanullfrac    ACL     N   GRANT SELECT(stanullfrac) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;
       
   pg_catalog          azuresu    false    39            �           0    0    COLUMN pg_statistic.stawidth    ACL     K   GRANT SELECT(stawidth) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;
       
   pg_catalog          azuresu    false    39            �           0    0    COLUMN pg_statistic.stadistinct    ACL     N   GRANT SELECT(stadistinct) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;
       
   pg_catalog          azuresu    false    39            �           0    0    COLUMN pg_statistic.stakind1    ACL     K   GRANT SELECT(stakind1) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;
       
   pg_catalog          azuresu    false    39            �           0    0    COLUMN pg_statistic.stakind2    ACL     K   GRANT SELECT(stakind2) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;
       
   pg_catalog          azuresu    false    39            �           0    0    COLUMN pg_statistic.stakind3    ACL     K   GRANT SELECT(stakind3) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;
       
   pg_catalog          azuresu    false    39            �           0    0    COLUMN pg_statistic.stakind4    ACL     K   GRANT SELECT(stakind4) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;
       
   pg_catalog          azuresu    false    39            �           0    0    COLUMN pg_statistic.stakind5    ACL     K   GRANT SELECT(stakind5) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;
       
   pg_catalog          azuresu    false    39            �           0    0    COLUMN pg_statistic.staop1    ACL     I   GRANT SELECT(staop1) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;
       
   pg_catalog          azuresu    false    39            �           0    0    COLUMN pg_statistic.staop2    ACL     I   GRANT SELECT(staop2) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;
       
   pg_catalog          azuresu    false    39            �           0    0    COLUMN pg_statistic.staop3    ACL     I   GRANT SELECT(staop3) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;
       
   pg_catalog          azuresu    false    39            �           0    0    COLUMN pg_statistic.staop4    ACL     I   GRANT SELECT(staop4) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;
       
   pg_catalog          azuresu    false    39            �           0    0    COLUMN pg_statistic.staop5    ACL     I   GRANT SELECT(staop5) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;
       
   pg_catalog          azuresu    false    39            �           0    0    COLUMN pg_statistic.stacoll1    ACL     K   GRANT SELECT(stacoll1) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;
       
   pg_catalog          azuresu    false    39            �           0    0    COLUMN pg_statistic.stacoll2    ACL     K   GRANT SELECT(stacoll2) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;
       
   pg_catalog          azuresu    false    39            �           0    0    COLUMN pg_statistic.stacoll3    ACL     K   GRANT SELECT(stacoll3) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;
       
   pg_catalog          azuresu    false    39            �           0    0    COLUMN pg_statistic.stacoll4    ACL     K   GRANT SELECT(stacoll4) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;
       
   pg_catalog          azuresu    false    39            �           0    0    COLUMN pg_statistic.stacoll5    ACL     K   GRANT SELECT(stacoll5) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;
       
   pg_catalog          azuresu    false    39            �           0    0    COLUMN pg_statistic.stanumbers1    ACL     N   GRANT SELECT(stanumbers1) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;
       
   pg_catalog          azuresu    false    39            �           0    0    COLUMN pg_statistic.stanumbers2    ACL     N   GRANT SELECT(stanumbers2) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;
       
   pg_catalog          azuresu    false    39            �           0    0    COLUMN pg_statistic.stanumbers3    ACL     N   GRANT SELECT(stanumbers3) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;
       
   pg_catalog          azuresu    false    39            �           0    0    COLUMN pg_statistic.stanumbers4    ACL     N   GRANT SELECT(stanumbers4) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;
       
   pg_catalog          azuresu    false    39            �           0    0    COLUMN pg_statistic.stanumbers5    ACL     N   GRANT SELECT(stanumbers5) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;
       
   pg_catalog          azuresu    false    39            �           0    0    COLUMN pg_statistic.stavalues1    ACL     M   GRANT SELECT(stavalues1) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;
       
   pg_catalog          azuresu    false    39            �           0    0    COLUMN pg_statistic.stavalues2    ACL     M   GRANT SELECT(stavalues2) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;
       
   pg_catalog          azuresu    false    39            �           0    0    COLUMN pg_statistic.stavalues3    ACL     M   GRANT SELECT(stavalues3) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;
       
   pg_catalog          azuresu    false    39            �           0    0    COLUMN pg_statistic.stavalues4    ACL     M   GRANT SELECT(stavalues4) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;
       
   pg_catalog          azuresu    false    39            �           0    0    COLUMN pg_statistic.stavalues5    ACL     M   GRANT SELECT(stavalues5) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;
       
   pg_catalog          azuresu    false    39            �           0    0    COLUMN pg_subscription.oid    ACL     I   GRANT SELECT(oid) ON TABLE pg_catalog.pg_subscription TO azure_pg_admin;
       
   pg_catalog          azuresu    false    64            �           0    0    COLUMN pg_subscription.subdbid    ACL     M   GRANT SELECT(subdbid) ON TABLE pg_catalog.pg_subscription TO azure_pg_admin;
       
   pg_catalog          azuresu    false    64            �           0    0    COLUMN pg_subscription.subname    ACL     M   GRANT SELECT(subname) ON TABLE pg_catalog.pg_subscription TO azure_pg_admin;
       
   pg_catalog          azuresu    false    64            �           0    0    COLUMN pg_subscription.subowner    ACL     N   GRANT SELECT(subowner) ON TABLE pg_catalog.pg_subscription TO azure_pg_admin;
       
   pg_catalog          azuresu    false    64            �           0    0 !   COLUMN pg_subscription.subenabled    ACL     P   GRANT SELECT(subenabled) ON TABLE pg_catalog.pg_subscription TO azure_pg_admin;
       
   pg_catalog          azuresu    false    64            �           0    0 "   COLUMN pg_subscription.subconninfo    ACL     Q   GRANT SELECT(subconninfo) ON TABLE pg_catalog.pg_subscription TO azure_pg_admin;
       
   pg_catalog          azuresu    false    64            �           0    0 "   COLUMN pg_subscription.subslotname    ACL     Q   GRANT SELECT(subslotname) ON TABLE pg_catalog.pg_subscription TO azure_pg_admin;
       
   pg_catalog          azuresu    false    64            �           0    0 $   COLUMN pg_subscription.subsynccommit    ACL     S   GRANT SELECT(subsynccommit) ON TABLE pg_catalog.pg_subscription TO azure_pg_admin;
       
   pg_catalog          azuresu    false    64            �           0    0 &   COLUMN pg_subscription.subpublications    ACL     U   GRANT SELECT(subpublications) ON TABLE pg_catalog.pg_subscription TO azure_pg_admin;
       
   pg_catalog          azuresu    false    64            �            1259    32552    device_fabrication    TABLE       CREATE TABLE public.device_fabrication (
    device_fab_id integer NOT NULL,
    params jsonb,
    meta jsonb,
    id bigint NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone
);
 &   DROP TABLE public.device_fabrication;
       public         heap    mg200_ofetdb    false    5            �            1259    32557 $   device_fabrication_device_fab_id_seq    SEQUENCE     �   CREATE SEQUENCE public.device_fabrication_device_fab_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.device_fabrication_device_fab_id_seq;
       public          mg200_ofetdb    false    214    5            �           0    0 $   device_fabrication_device_fab_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.device_fabrication_device_fab_id_seq OWNED BY public.device_fabrication.device_fab_id;
          public          mg200_ofetdb    false    215            �            1259    32558    device_fabrication_id_seq    SEQUENCE     �   CREATE SEQUENCE public.device_fabrication_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.device_fabrication_id_seq;
       public          mg200_ofetdb    false    214    5            �           0    0    device_fabrication_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.device_fabrication_id_seq OWNED BY public.device_fabrication.id;
          public          mg200_ofetdb    false    216            �            1259    32559    experiment_info    TABLE        CREATE TABLE public.experiment_info (
    exp_id integer NOT NULL,
    citation_type text,
    meta jsonb,
    id bigint NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone
);
 #   DROP TABLE public.experiment_info;
       public         heap    mg200_ofetdb    false    5            �            1259    32564    experiment_info_exp_id_seq    SEQUENCE     �   CREATE SEQUENCE public.experiment_info_exp_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.experiment_info_exp_id_seq;
       public          mg200_ofetdb    false    5    217            �           0    0    experiment_info_exp_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.experiment_info_exp_id_seq OWNED BY public.experiment_info.exp_id;
          public          mg200_ofetdb    false    218            �            1259    32565    experiment_info_id_seq    SEQUENCE        CREATE SEQUENCE public.experiment_info_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.experiment_info_id_seq;
       public          mg200_ofetdb    false    217    5            �           0    0    experiment_info_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.experiment_info_id_seq OWNED BY public.experiment_info.id;
          public          mg200_ofetdb    false    219            �            1259    32566    film_deposition    TABLE        CREATE TABLE public.film_deposition (
    film_deposition_id integer NOT NULL,
    deposition_type text,
    params jsonb,
    meta jsonb,
    id bigint NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone
);
 #   DROP TABLE public.film_deposition;
       public         heap    mg200_ofetdb    false    5            �            1259    32571 &   film_deposition_film_deposition_id_seq    SEQUENCE     �   CREATE SEQUENCE public.film_deposition_film_deposition_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public.film_deposition_film_deposition_id_seq;
       public          mg200_ofetdb    false    220    5            �           0    0 &   film_deposition_film_deposition_id_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public.film_deposition_film_deposition_id_seq OWNED BY public.film_deposition.film_deposition_id;
          public          mg200_ofetdb    false    221            �            1259    32572    film_deposition_id_seq    SEQUENCE        CREATE SEQUENCE public.film_deposition_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.film_deposition_id_seq;
       public          mg200_ofetdb    false    220    5            �           0    0    film_deposition_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.film_deposition_id_seq OWNED BY public.film_deposition.id;
          public          mg200_ofetdb    false    222            �            1259    32573    measurement    TABLE     �   CREATE TABLE public.measurement (
    measurement_id integer NOT NULL,
    sample_id integer,
    measurement_type character varying(30),
    data jsonb,
    meta jsonb
);
    DROP TABLE public.measurement;
       public         heap    mg200_ofetdb    false    5            �            1259    32578    measurement_measurement_id_seq    SEQUENCE     �   CREATE SEQUENCE public.measurement_measurement_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.measurement_measurement_id_seq;
       public          mg200_ofetdb    false    223    5            �           0    0    measurement_measurement_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.measurement_measurement_id_seq OWNED BY public.measurement.measurement_id;
          public          mg200_ofetdb    false    224            �            1259    32579    ofet_process    TABLE     �   CREATE TABLE public.ofet_process (
    process_id integer NOT NULL,
    solution_id integer,
    solution_treatment_id integer,
    device_fab_id integer,
    substrate_pretreat_id integer,
    film_deposition_id integer,
    postprocess_id integer
);
     DROP TABLE public.ofet_process;
       public         heap    mg200_ofetdb    false    5            �            1259    32582    ofet_process_process_id_seq    SEQUENCE     �   CREATE SEQUENCE public.ofet_process_process_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.ofet_process_process_id_seq;
       public          mg200_ofetdb    false    225    5            �           0    0    ofet_process_process_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.ofet_process_process_id_seq OWNED BY public.ofet_process.process_id;
          public          mg200_ofetdb    false    226            �            1259    32583    polymer    TABLE     Y  CREATE TABLE public.polymer (
    polymer_id integer NOT NULL,
    common_name text,
    iupac_name text,
    mn numeric,
    mw double precision,
    dispersity double precision,
    meta jsonb,
    id bigint NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone
);
    DROP TABLE public.polymer;
       public         heap    mg200_ofetdb    false    5            �            1259    32588    polymer_id_seq    SEQUENCE     w   CREATE SEQUENCE public.polymer_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.polymer_id_seq;
       public          mg200_ofetdb    false    5    227            �           0    0    polymer_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.polymer_id_seq OWNED BY public.polymer.id;
          public          mg200_ofetdb    false    228            �            1259    32589    polymer_polymer_id_seq    SEQUENCE     �   CREATE SEQUENCE public.polymer_polymer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.polymer_polymer_id_seq;
       public          mg200_ofetdb    false    5    227            �           0    0    polymer_polymer_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.polymer_polymer_id_seq OWNED BY public.polymer.polymer_id;
          public          mg200_ofetdb    false    229            �            1259    32590    postprocess    TABLE     I   CREATE TABLE public.postprocess (
    postprocess_id integer NOT NULL
);
    DROP TABLE public.postprocess;
       public         heap    mg200_ofetdb    false    5            �            1259    32593    postprocess_order    TABLE     �   CREATE TABLE public.postprocess_order (
    postprocess_id integer NOT NULL,
    process_order integer NOT NULL,
    postprocess_step_id integer
);
 %   DROP TABLE public.postprocess_order;
       public         heap    mg200_ofetdb    false    5            �            1259    32596    postprocess_postprocess_id_seq    SEQUENCE     �   CREATE SEQUENCE public.postprocess_postprocess_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.postprocess_postprocess_id_seq;
       public          mg200_ofetdb    false    230    5            �           0    0    postprocess_postprocess_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.postprocess_postprocess_id_seq OWNED BY public.postprocess.postprocess_id;
          public          mg200_ofetdb    false    232            �            1259    32597    postprocess_sequence    TABLE     v   CREATE TABLE public.postprocess_sequence (
    postprocess_id integer NOT NULL,
    postprocess_sequence integer[]
);
 (   DROP TABLE public.postprocess_sequence;
       public         heap    mg200_ofetdb    false    5            �            1259    32602 '   postprocess_sequence_postprocess_id_seq    SEQUENCE     �   CREATE SEQUENCE public.postprocess_sequence_postprocess_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public.postprocess_sequence_postprocess_id_seq;
       public          mg200_ofetdb    false    233    5            �           0    0 '   postprocess_sequence_postprocess_id_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public.postprocess_sequence_postprocess_id_seq OWNED BY public.postprocess_sequence.postprocess_id;
          public          mg200_ofetdb    false    234            �            1259    32603    postprocess_step    TABLE     �   CREATE TABLE public.postprocess_step (
    postprocess_step_id integer NOT NULL,
    treatment_type character varying(30),
    params jsonb,
    meta jsonb
);
 $   DROP TABLE public.postprocess_step;
       public         heap    mg200_ofetdb    false    5            �            1259    32608 (   postprocess_step_postprocess_step_id_seq    SEQUENCE     �   CREATE SEQUENCE public.postprocess_step_postprocess_step_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public.postprocess_step_postprocess_step_id_seq;
       public          mg200_ofetdb    false    5    235            �           0    0 (   postprocess_step_postprocess_step_id_seq    SEQUENCE OWNED BY     u   ALTER SEQUENCE public.postprocess_step_postprocess_step_id_seq OWNED BY public.postprocess_step.postprocess_step_id;
          public          mg200_ofetdb    false    236            �            1259    32609    sample    TABLE     {   CREATE TABLE public.sample (
    sample_id integer NOT NULL,
    exp_id integer,
    process_id integer,
    meta jsonb
);
    DROP TABLE public.sample;
       public         heap    mg200_ofetdb    false    5            �            1259    32614    sample_sample_id_seq    SEQUENCE     �   CREATE SEQUENCE public.sample_sample_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.sample_sample_id_seq;
       public          mg200_ofetdb    false    5    237            �           0    0    sample_sample_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.sample_sample_id_seq OWNED BY public.sample.sample_id;
          public          mg200_ofetdb    false    238            �            1259    32615    solution    TABLE     g   CREATE TABLE public.solution (
    solution_id integer NOT NULL,
    concentration double precision
);
    DROP TABLE public.solution;
       public         heap    mg200_ofetdb    false    5            �            1259    32618    solution_makeup_polymer    TABLE     �   CREATE TABLE public.solution_makeup_polymer (
    solution_id integer NOT NULL,
    polymer_id integer NOT NULL,
    wt_frac double precision
);
 +   DROP TABLE public.solution_makeup_polymer;
       public         heap    mg200_ofetdb    false    5            �            1259    32621    solution_makeup_solvent    TABLE     �   CREATE TABLE public.solution_makeup_solvent (
    solution_id integer NOT NULL,
    solvent_id integer NOT NULL,
    vol_frac double precision
);
 +   DROP TABLE public.solution_makeup_solvent;
       public         heap    mg200_ofetdb    false    5            �            1259    32624    solution_solution_id_seq    SEQUENCE     �   CREATE SEQUENCE public.solution_solution_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.solution_solution_id_seq;
       public          mg200_ofetdb    false    5    239            �           0    0    solution_solution_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.solution_solution_id_seq OWNED BY public.solution.solution_id;
          public          mg200_ofetdb    false    242            �            1259    32625    solution_treatment    TABLE     W   CREATE TABLE public.solution_treatment (
    solution_treatment_id integer NOT NULL
);
 &   DROP TABLE public.solution_treatment;
       public         heap    mg200_ofetdb    false    5            �            1259    32628    solution_treatment_order    TABLE     �   CREATE TABLE public.solution_treatment_order (
    solution_treatment_id integer NOT NULL,
    process_order integer NOT NULL,
    solution_treatment_step_id integer
);
 ,   DROP TABLE public.solution_treatment_order;
       public         heap    mg200_ofetdb    false    5            �            1259    32631    solution_treatment_sequence    TABLE     �   CREATE TABLE public.solution_treatment_sequence (
    solution_treatment_id integer NOT NULL,
    solution_treatment_sequence integer[]
);
 /   DROP TABLE public.solution_treatment_sequence;
       public         heap    mg200_ofetdb    false    5            �            1259    32636 5   solution_treatment_sequence_solution_treatment_id_seq    SEQUENCE     �   CREATE SEQUENCE public.solution_treatment_sequence_solution_treatment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 L   DROP SEQUENCE public.solution_treatment_sequence_solution_treatment_id_seq;
       public          mg200_ofetdb    false    245    5            �           0    0 5   solution_treatment_sequence_solution_treatment_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.solution_treatment_sequence_solution_treatment_id_seq OWNED BY public.solution_treatment_sequence.solution_treatment_id;
          public          mg200_ofetdb    false    246            �            1259    32637 ,   solution_treatment_solution_treatment_id_seq    SEQUENCE     �   CREATE SEQUENCE public.solution_treatment_solution_treatment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 C   DROP SEQUENCE public.solution_treatment_solution_treatment_id_seq;
       public          mg200_ofetdb    false    243    5            �           0    0 ,   solution_treatment_solution_treatment_id_seq    SEQUENCE OWNED BY     }   ALTER SEQUENCE public.solution_treatment_solution_treatment_id_seq OWNED BY public.solution_treatment.solution_treatment_id;
          public          mg200_ofetdb    false    247            �            1259    32638    solution_treatment_step    TABLE     �   CREATE TABLE public.solution_treatment_step (
    solution_treatment_step_id integer NOT NULL,
    treatment_type character varying(30),
    params jsonb,
    meta jsonb
);
 +   DROP TABLE public.solution_treatment_step;
       public         heap    mg200_ofetdb    false    5            �            1259    32643 6   solution_treatment_step_solution_treatment_step_id_seq    SEQUENCE     �   CREATE SEQUENCE public.solution_treatment_step_solution_treatment_step_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 M   DROP SEQUENCE public.solution_treatment_step_solution_treatment_step_id_seq;
       public          mg200_ofetdb    false    248    5            �           0    0 6   solution_treatment_step_solution_treatment_step_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.solution_treatment_step_solution_treatment_step_id_seq OWNED BY public.solution_treatment_step.solution_treatment_step_id;
          public          mg200_ofetdb    false    249            �            1259    32644    solvent    TABLE     h   CREATE TABLE public.solvent (
    pubchem_cid integer NOT NULL,
    iupac_name character varying(50)
);
    DROP TABLE public.solvent;
       public         heap    mg200_ofetdb    false    5            �            1259    32647    substrate_pretreat    TABLE     W   CREATE TABLE public.substrate_pretreat (
    substrate_pretreat_id integer NOT NULL
);
 &   DROP TABLE public.substrate_pretreat;
       public         heap    mg200_ofetdb    false    5            �            1259    32650    substrate_pretreat_order    TABLE     �   CREATE TABLE public.substrate_pretreat_order (
    substrate_pretreat_id integer NOT NULL,
    process_order integer NOT NULL,
    substrate_pretreat_step_id integer
);
 ,   DROP TABLE public.substrate_pretreat_order;
       public         heap    mg200_ofetdb    false    5            �            1259    32653    substrate_pretreat_sequence    TABLE     �   CREATE TABLE public.substrate_pretreat_sequence (
    substrate_pretreat_id integer NOT NULL,
    substrate_pretreat_sequence integer[]
);
 /   DROP TABLE public.substrate_pretreat_sequence;
       public         heap    mg200_ofetdb    false    5            �            1259    32658 5   substrate_pretreat_sequence_substrate_pretreat_id_seq    SEQUENCE     �   CREATE SEQUENCE public.substrate_pretreat_sequence_substrate_pretreat_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 L   DROP SEQUENCE public.substrate_pretreat_sequence_substrate_pretreat_id_seq;
       public          mg200_ofetdb    false    253    5            �           0    0 5   substrate_pretreat_sequence_substrate_pretreat_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.substrate_pretreat_sequence_substrate_pretreat_id_seq OWNED BY public.substrate_pretreat_sequence.substrate_pretreat_id;
          public          mg200_ofetdb    false    254            �            1259    32659    substrate_pretreat_step    TABLE     �   CREATE TABLE public.substrate_pretreat_step (
    substrate_pretreat_step_id integer NOT NULL,
    treatment_type character varying(20),
    params jsonb,
    meta jsonb
);
 +   DROP TABLE public.substrate_pretreat_step;
       public         heap    mg200_ofetdb    false    5                        1259    32664 6   substrate_pretreat_step_substrate_pretreat_step_id_seq    SEQUENCE     �   CREATE SEQUENCE public.substrate_pretreat_step_substrate_pretreat_step_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 M   DROP SEQUENCE public.substrate_pretreat_step_substrate_pretreat_step_id_seq;
       public          mg200_ofetdb    false    255    5            �           0    0 6   substrate_pretreat_step_substrate_pretreat_step_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.substrate_pretreat_step_substrate_pretreat_step_id_seq OWNED BY public.substrate_pretreat_step.substrate_pretreat_step_id;
          public          mg200_ofetdb    false    256                       1259    32665 ,   substrate_pretreat_substrate_pretreat_id_seq    SEQUENCE     �   CREATE SEQUENCE public.substrate_pretreat_substrate_pretreat_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 C   DROP SEQUENCE public.substrate_pretreat_substrate_pretreat_id_seq;
       public          mg200_ofetdb    false    251    5            �           0    0 ,   substrate_pretreat_substrate_pretreat_id_seq    SEQUENCE OWNED BY     }   ALTER SEQUENCE public.substrate_pretreat_substrate_pretreat_id_seq OWNED BY public.substrate_pretreat.substrate_pretreat_id;
          public          mg200_ofetdb    false    257            -           2604    32666     device_fabrication device_fab_id    DEFAULT     �   ALTER TABLE ONLY public.device_fabrication ALTER COLUMN device_fab_id SET DEFAULT nextval('public.device_fabrication_device_fab_id_seq'::regclass);
 O   ALTER TABLE public.device_fabrication ALTER COLUMN device_fab_id DROP DEFAULT;
       public          mg200_ofetdb    false    215    214            .           2604    32667    device_fabrication id    DEFAULT     ~   ALTER TABLE ONLY public.device_fabrication ALTER COLUMN id SET DEFAULT nextval('public.device_fabrication_id_seq'::regclass);
 D   ALTER TABLE public.device_fabrication ALTER COLUMN id DROP DEFAULT;
       public          mg200_ofetdb    false    216    214            /           2604    32668    experiment_info exp_id    DEFAULT     �   ALTER TABLE ONLY public.experiment_info ALTER COLUMN exp_id SET DEFAULT nextval('public.experiment_info_exp_id_seq'::regclass);
 E   ALTER TABLE public.experiment_info ALTER COLUMN exp_id DROP DEFAULT;
       public          mg200_ofetdb    false    218    217            0           2604    32669    experiment_info id    DEFAULT     x   ALTER TABLE ONLY public.experiment_info ALTER COLUMN id SET DEFAULT nextval('public.experiment_info_id_seq'::regclass);
 A   ALTER TABLE public.experiment_info ALTER COLUMN id DROP DEFAULT;
       public          mg200_ofetdb    false    219    217            1           2604    32670 "   film_deposition film_deposition_id    DEFAULT     �   ALTER TABLE ONLY public.film_deposition ALTER COLUMN film_deposition_id SET DEFAULT nextval('public.film_deposition_film_deposition_id_seq'::regclass);
 Q   ALTER TABLE public.film_deposition ALTER COLUMN film_deposition_id DROP DEFAULT;
       public          mg200_ofetdb    false    221    220            2           2604    32671    film_deposition id    DEFAULT     x   ALTER TABLE ONLY public.film_deposition ALTER COLUMN id SET DEFAULT nextval('public.film_deposition_id_seq'::regclass);
 A   ALTER TABLE public.film_deposition ALTER COLUMN id DROP DEFAULT;
       public          mg200_ofetdb    false    222    220            3           2604    32672    measurement measurement_id    DEFAULT     �   ALTER TABLE ONLY public.measurement ALTER COLUMN measurement_id SET DEFAULT nextval('public.measurement_measurement_id_seq'::regclass);
 I   ALTER TABLE public.measurement ALTER COLUMN measurement_id DROP DEFAULT;
       public          mg200_ofetdb    false    224    223            4           2604    32673    ofet_process process_id    DEFAULT     �   ALTER TABLE ONLY public.ofet_process ALTER COLUMN process_id SET DEFAULT nextval('public.ofet_process_process_id_seq'::regclass);
 F   ALTER TABLE public.ofet_process ALTER COLUMN process_id DROP DEFAULT;
       public          mg200_ofetdb    false    226    225            5           2604    32674    polymer polymer_id    DEFAULT     x   ALTER TABLE ONLY public.polymer ALTER COLUMN polymer_id SET DEFAULT nextval('public.polymer_polymer_id_seq'::regclass);
 A   ALTER TABLE public.polymer ALTER COLUMN polymer_id DROP DEFAULT;
       public          mg200_ofetdb    false    229    227            6           2604    32675 
   polymer id    DEFAULT     h   ALTER TABLE ONLY public.polymer ALTER COLUMN id SET DEFAULT nextval('public.polymer_id_seq'::regclass);
 9   ALTER TABLE public.polymer ALTER COLUMN id DROP DEFAULT;
       public          mg200_ofetdb    false    228    227            7           2604    32676    postprocess postprocess_id    DEFAULT     �   ALTER TABLE ONLY public.postprocess ALTER COLUMN postprocess_id SET DEFAULT nextval('public.postprocess_postprocess_id_seq'::regclass);
 I   ALTER TABLE public.postprocess ALTER COLUMN postprocess_id DROP DEFAULT;
       public          mg200_ofetdb    false    232    230            8           2604    32677 #   postprocess_sequence postprocess_id    DEFAULT     �   ALTER TABLE ONLY public.postprocess_sequence ALTER COLUMN postprocess_id SET DEFAULT nextval('public.postprocess_sequence_postprocess_id_seq'::regclass);
 R   ALTER TABLE public.postprocess_sequence ALTER COLUMN postprocess_id DROP DEFAULT;
       public          mg200_ofetdb    false    234    233            9           2604    32678 $   postprocess_step postprocess_step_id    DEFAULT     �   ALTER TABLE ONLY public.postprocess_step ALTER COLUMN postprocess_step_id SET DEFAULT nextval('public.postprocess_step_postprocess_step_id_seq'::regclass);
 S   ALTER TABLE public.postprocess_step ALTER COLUMN postprocess_step_id DROP DEFAULT;
       public          mg200_ofetdb    false    236    235            :           2604    32679    sample sample_id    DEFAULT     t   ALTER TABLE ONLY public.sample ALTER COLUMN sample_id SET DEFAULT nextval('public.sample_sample_id_seq'::regclass);
 ?   ALTER TABLE public.sample ALTER COLUMN sample_id DROP DEFAULT;
       public          mg200_ofetdb    false    238    237            ;           2604    32680    solution solution_id    DEFAULT     |   ALTER TABLE ONLY public.solution ALTER COLUMN solution_id SET DEFAULT nextval('public.solution_solution_id_seq'::regclass);
 C   ALTER TABLE public.solution ALTER COLUMN solution_id DROP DEFAULT;
       public          mg200_ofetdb    false    242    239            <           2604    32681 (   solution_treatment solution_treatment_id    DEFAULT     �   ALTER TABLE ONLY public.solution_treatment ALTER COLUMN solution_treatment_id SET DEFAULT nextval('public.solution_treatment_solution_treatment_id_seq'::regclass);
 W   ALTER TABLE public.solution_treatment ALTER COLUMN solution_treatment_id DROP DEFAULT;
       public          mg200_ofetdb    false    247    243            =           2604    32682 1   solution_treatment_sequence solution_treatment_id    DEFAULT     �   ALTER TABLE ONLY public.solution_treatment_sequence ALTER COLUMN solution_treatment_id SET DEFAULT nextval('public.solution_treatment_sequence_solution_treatment_id_seq'::regclass);
 `   ALTER TABLE public.solution_treatment_sequence ALTER COLUMN solution_treatment_id DROP DEFAULT;
       public          mg200_ofetdb    false    246    245            >           2604    32683 2   solution_treatment_step solution_treatment_step_id    DEFAULT     �   ALTER TABLE ONLY public.solution_treatment_step ALTER COLUMN solution_treatment_step_id SET DEFAULT nextval('public.solution_treatment_step_solution_treatment_step_id_seq'::regclass);
 a   ALTER TABLE public.solution_treatment_step ALTER COLUMN solution_treatment_step_id DROP DEFAULT;
       public          mg200_ofetdb    false    249    248            ?           2604    32684 (   substrate_pretreat substrate_pretreat_id    DEFAULT     �   ALTER TABLE ONLY public.substrate_pretreat ALTER COLUMN substrate_pretreat_id SET DEFAULT nextval('public.substrate_pretreat_substrate_pretreat_id_seq'::regclass);
 W   ALTER TABLE public.substrate_pretreat ALTER COLUMN substrate_pretreat_id DROP DEFAULT;
       public          mg200_ofetdb    false    257    251            @           2604    32685 1   substrate_pretreat_sequence substrate_pretreat_id    DEFAULT     �   ALTER TABLE ONLY public.substrate_pretreat_sequence ALTER COLUMN substrate_pretreat_id SET DEFAULT nextval('public.substrate_pretreat_sequence_substrate_pretreat_id_seq'::regclass);
 `   ALTER TABLE public.substrate_pretreat_sequence ALTER COLUMN substrate_pretreat_id DROP DEFAULT;
       public          mg200_ofetdb    false    254    253            A           2604    32686 2   substrate_pretreat_step substrate_pretreat_step_id    DEFAULT     �   ALTER TABLE ONLY public.substrate_pretreat_step ALTER COLUMN substrate_pretreat_step_id SET DEFAULT nextval('public.substrate_pretreat_step_substrate_pretreat_step_id_seq'::regclass);
 a   ALTER TABLE public.substrate_pretreat_step ALTER COLUMN substrate_pretreat_step_id DROP DEFAULT;
       public          mg200_ofetdb    false    256    255            7          0    32552    device_fabrication 
   TABLE DATA           q   COPY public.device_fabrication (device_fab_id, params, meta, id, created_at, updated_at, deleted_at) FROM stdin;
    public          mg200_ofetdb    false    214   �_      :          0    32559    experiment_info 
   TABLE DATA           n   COPY public.experiment_info (exp_id, citation_type, meta, id, created_at, updated_at, deleted_at) FROM stdin;
    public          mg200_ofetdb    false    217   �f      =          0    32566    film_deposition 
   TABLE DATA           �   COPY public.film_deposition (film_deposition_id, deposition_type, params, meta, id, created_at, updated_at, deleted_at) FROM stdin;
    public          mg200_ofetdb    false    220   1|      @          0    32573    measurement 
   TABLE DATA           ^   COPY public.measurement (measurement_id, sample_id, measurement_type, data, meta) FROM stdin;
    public          mg200_ofetdb    false    223   y�      B          0    32579    ofet_process 
   TABLE DATA           �   COPY public.ofet_process (process_id, solution_id, solution_treatment_id, device_fab_id, substrate_pretreat_id, film_deposition_id, postprocess_id) FROM stdin;
    public          mg200_ofetdb    false    225   ��      D          0    32583    polymer 
   TABLE DATA           �   COPY public.polymer (polymer_id, common_name, iupac_name, mn, mw, dispersity, meta, id, created_at, updated_at, deleted_at) FROM stdin;
    public          mg200_ofetdb    false    227   |�      G          0    32590    postprocess 
   TABLE DATA           5   COPY public.postprocess (postprocess_id) FROM stdin;
    public          mg200_ofetdb    false    230   L       H          0    32593    postprocess_order 
   TABLE DATA           _   COPY public.postprocess_order (postprocess_id, process_order, postprocess_step_id) FROM stdin;
    public          mg200_ofetdb    false    231   �       J          0    32597    postprocess_sequence 
   TABLE DATA           T   COPY public.postprocess_sequence (postprocess_id, postprocess_sequence) FROM stdin;
    public          mg200_ofetdb    false    233   �      L          0    32603    postprocess_step 
   TABLE DATA           ]   COPY public.postprocess_step (postprocess_step_id, treatment_type, params, meta) FROM stdin;
    public          mg200_ofetdb    false    235   �      N          0    32609    sample 
   TABLE DATA           E   COPY public.sample (sample_id, exp_id, process_id, meta) FROM stdin;
    public          mg200_ofetdb    false    237   �      P          0    32615    solution 
   TABLE DATA           >   COPY public.solution (solution_id, concentration) FROM stdin;
    public          mg200_ofetdb    false    239   �      Q          0    32618    solution_makeup_polymer 
   TABLE DATA           S   COPY public.solution_makeup_polymer (solution_id, polymer_id, wt_frac) FROM stdin;
    public          mg200_ofetdb    false    240   H      R          0    32621    solution_makeup_solvent 
   TABLE DATA           T   COPY public.solution_makeup_solvent (solution_id, solvent_id, vol_frac) FROM stdin;
    public          mg200_ofetdb    false    241   K#      T          0    32625    solution_treatment 
   TABLE DATA           C   COPY public.solution_treatment (solution_treatment_id) FROM stdin;
    public          mg200_ofetdb    false    243   H(      U          0    32628    solution_treatment_order 
   TABLE DATA           t   COPY public.solution_treatment_order (solution_treatment_id, process_order, solution_treatment_step_id) FROM stdin;
    public          mg200_ofetdb    false    244   �(      V          0    32631    solution_treatment_sequence 
   TABLE DATA           i   COPY public.solution_treatment_sequence (solution_treatment_id, solution_treatment_sequence) FROM stdin;
    public          mg200_ofetdb    false    245   G+      Y          0    32638    solution_treatment_step 
   TABLE DATA           k   COPY public.solution_treatment_step (solution_treatment_step_id, treatment_type, params, meta) FROM stdin;
    public          mg200_ofetdb    false    248   -      [          0    32644    solvent 
   TABLE DATA           :   COPY public.solvent (pubchem_cid, iupac_name) FROM stdin;
    public          mg200_ofetdb    false    250   3      \          0    32647    substrate_pretreat 
   TABLE DATA           C   COPY public.substrate_pretreat (substrate_pretreat_id) FROM stdin;
    public          mg200_ofetdb    false    251   �3      ]          0    32650    substrate_pretreat_order 
   TABLE DATA           t   COPY public.substrate_pretreat_order (substrate_pretreat_id, process_order, substrate_pretreat_step_id) FROM stdin;
    public          mg200_ofetdb    false    252   D4      ^          0    32653    substrate_pretreat_sequence 
   TABLE DATA           i   COPY public.substrate_pretreat_sequence (substrate_pretreat_id, substrate_pretreat_sequence) FROM stdin;
    public          mg200_ofetdb    false    253   �5      `          0    32659    substrate_pretreat_step 
   TABLE DATA           k   COPY public.substrate_pretreat_step (substrate_pretreat_step_id, treatment_type, params, meta) FROM stdin;
    public          mg200_ofetdb    false    255   �6      �           0    0 $   device_fabrication_device_fab_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.device_fabrication_device_fab_id_seq', 90, true);
          public          mg200_ofetdb    false    215            �           0    0    device_fabrication_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.device_fabrication_id_seq', 254, true);
          public          mg200_ofetdb    false    216            �           0    0    experiment_info_exp_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.experiment_info_exp_id_seq', 130, true);
          public          mg200_ofetdb    false    218            �           0    0    experiment_info_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.experiment_info_id_seq', 287, true);
          public          mg200_ofetdb    false    219            �           0    0 &   film_deposition_film_deposition_id_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('public.film_deposition_film_deposition_id_seq', 129, true);
          public          mg200_ofetdb    false    221            �           0    0    film_deposition_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.film_deposition_id_seq', 283, true);
          public          mg200_ofetdb    false    222            �           0    0    measurement_measurement_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.measurement_measurement_id_seq', 1633, true);
          public          mg200_ofetdb    false    224            �           0    0    ofet_process_process_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.ofet_process_process_id_seq', 829, true);
          public          mg200_ofetdb    false    226            �           0    0    polymer_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.polymer_id_seq', 307, true);
          public          mg200_ofetdb    false    228            �           0    0    polymer_polymer_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.polymer_polymer_id_seq', 307, true);
          public          mg200_ofetdb    false    229            �           0    0    postprocess_postprocess_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.postprocess_postprocess_id_seq', 69, false);
          public          mg200_ofetdb    false    232            �           0    0 '   postprocess_sequence_postprocess_id_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('public.postprocess_sequence_postprocess_id_seq', 1, false);
          public          mg200_ofetdb    false    234            �           0    0 (   postprocess_step_postprocess_step_id_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('public.postprocess_step_postprocess_step_id_seq', 69, false);
          public          mg200_ofetdb    false    236            �           0    0    sample_sample_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.sample_sample_id_seq', 872, true);
          public          mg200_ofetdb    false    238            �           0    0    solution_solution_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.solution_solution_id_seq', 470, true);
          public          mg200_ofetdb    false    242            �           0    0 5   solution_treatment_sequence_solution_treatment_id_seq    SEQUENCE SET     d   SELECT pg_catalog.setval('public.solution_treatment_sequence_solution_treatment_id_seq', 1, false);
          public          mg200_ofetdb    false    246            �           0    0 ,   solution_treatment_solution_treatment_id_seq    SEQUENCE SET     ]   SELECT pg_catalog.setval('public.solution_treatment_solution_treatment_id_seq', 107, false);
          public          mg200_ofetdb    false    247            �           0    0 6   solution_treatment_step_solution_treatment_step_id_seq    SEQUENCE SET     g   SELECT pg_catalog.setval('public.solution_treatment_step_solution_treatment_step_id_seq', 100, false);
          public          mg200_ofetdb    false    249            �           0    0 5   substrate_pretreat_sequence_substrate_pretreat_id_seq    SEQUENCE SET     d   SELECT pg_catalog.setval('public.substrate_pretreat_sequence_substrate_pretreat_id_seq', 1, false);
          public          mg200_ofetdb    false    254            �           0    0 6   substrate_pretreat_step_substrate_pretreat_step_id_seq    SEQUENCE SET     f   SELECT pg_catalog.setval('public.substrate_pretreat_step_substrate_pretreat_step_id_seq', 61, false);
          public          mg200_ofetdb    false    256            �           0    0 ,   substrate_pretreat_substrate_pretreat_id_seq    SEQUENCE SET     \   SELECT pg_catalog.setval('public.substrate_pretreat_substrate_pretreat_id_seq', 40, false);
          public          mg200_ofetdb    false    257            C           2606    32688 5   device_fabrication device_fabrication_params_meta_key 
   CONSTRAINT     x   ALTER TABLE ONLY public.device_fabrication
    ADD CONSTRAINT device_fabrication_params_meta_key UNIQUE (params, meta);
 _   ALTER TABLE ONLY public.device_fabrication DROP CONSTRAINT device_fabrication_params_meta_key;
       public            mg200_ofetdb    false    214    214            E           2606    32690 *   device_fabrication device_fabrication_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY public.device_fabrication
    ADD CONSTRAINT device_fabrication_pkey PRIMARY KEY (device_fab_id);
 T   ALTER TABLE ONLY public.device_fabrication DROP CONSTRAINT device_fabrication_pkey;
       public            mg200_ofetdb    false    214            H           2606    32692 6   experiment_info experiment_info_citation_type_meta_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.experiment_info
    ADD CONSTRAINT experiment_info_citation_type_meta_key UNIQUE (citation_type, meta);
 `   ALTER TABLE ONLY public.experiment_info DROP CONSTRAINT experiment_info_citation_type_meta_key;
       public            mg200_ofetdb    false    217    217            J           2606    32694 $   experiment_info experiment_info_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.experiment_info
    ADD CONSTRAINT experiment_info_pkey PRIMARY KEY (exp_id);
 N   ALTER TABLE ONLY public.experiment_info DROP CONSTRAINT experiment_info_pkey;
       public            mg200_ofetdb    false    217            M           2606    32696 ?   film_deposition film_deposition_deposition_type_params_meta_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.film_deposition
    ADD CONSTRAINT film_deposition_deposition_type_params_meta_key UNIQUE (deposition_type, params, meta);
 i   ALTER TABLE ONLY public.film_deposition DROP CONSTRAINT film_deposition_deposition_type_params_meta_key;
       public            mg200_ofetdb    false    220    220    220            O           2606    32698 $   film_deposition film_deposition_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.film_deposition
    ADD CONSTRAINT film_deposition_pkey PRIMARY KEY (film_deposition_id);
 N   ALTER TABLE ONLY public.film_deposition DROP CONSTRAINT film_deposition_pkey;
       public            mg200_ofetdb    false    220            R           2606    32700    measurement measurement_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.measurement
    ADD CONSTRAINT measurement_pkey PRIMARY KEY (measurement_id);
 F   ALTER TABLE ONLY public.measurement DROP CONSTRAINT measurement_pkey;
       public            mg200_ofetdb    false    223            T           2606    32702 @   measurement measurement_sample_id_measurement_type_data_meta_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.measurement
    ADD CONSTRAINT measurement_sample_id_measurement_type_data_meta_key UNIQUE (sample_id, measurement_type, data, meta);
 j   ALTER TABLE ONLY public.measurement DROP CONSTRAINT measurement_sample_id_measurement_type_data_meta_key;
       public            mg200_ofetdb    false    223    223    223    223            V           2606    32704    ofet_process ofet_process_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.ofet_process
    ADD CONSTRAINT ofet_process_pkey PRIMARY KEY (process_id);
 H   ALTER TABLE ONLY public.ofet_process DROP CONSTRAINT ofet_process_pkey;
       public            mg200_ofetdb    false    225            X           2606    32706 L   ofet_process ofet_process_solution_id_solution_treatment_id_device_fab_i_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.ofet_process
    ADD CONSTRAINT ofet_process_solution_id_solution_treatment_id_device_fab_i_key UNIQUE (solution_id, solution_treatment_id, device_fab_id, substrate_pretreat_id, film_deposition_id, postprocess_id);
 v   ALTER TABLE ONLY public.ofet_process DROP CONSTRAINT ofet_process_solution_id_solution_treatment_id_device_fab_i_key;
       public            mg200_ofetdb    false    225    225    225    225    225    225            Z           2606    32708 @   polymer polymer_common_name_iupac_name_mn_mw_dispersity_meta_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.polymer
    ADD CONSTRAINT polymer_common_name_iupac_name_mn_mw_dispersity_meta_key UNIQUE (common_name, iupac_name, mn, mw, dispersity, meta);
 j   ALTER TABLE ONLY public.polymer DROP CONSTRAINT polymer_common_name_iupac_name_mn_mw_dispersity_meta_key;
       public            mg200_ofetdb    false    227    227    227    227    227    227            \           2606    32710    polymer polymer_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.polymer
    ADD CONSTRAINT polymer_pkey PRIMARY KEY (polymer_id);
 >   ALTER TABLE ONLY public.polymer DROP CONSTRAINT polymer_pkey;
       public            mg200_ofetdb    false    227            `           2606    32712 (   postprocess_order postprocess_order_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.postprocess_order
    ADD CONSTRAINT postprocess_order_pkey PRIMARY KEY (postprocess_id, process_order);
 R   ALTER TABLE ONLY public.postprocess_order DROP CONSTRAINT postprocess_order_pkey;
       public            mg200_ofetdb    false    231    231            b           2606    32714 Q   postprocess_order postprocess_order_postprocess_id_process_order_postprocess__key 
   CONSTRAINT     �   ALTER TABLE ONLY public.postprocess_order
    ADD CONSTRAINT postprocess_order_postprocess_id_process_order_postprocess__key UNIQUE (postprocess_id, process_order, postprocess_step_id);
 {   ALTER TABLE ONLY public.postprocess_order DROP CONSTRAINT postprocess_order_postprocess_id_process_order_postprocess__key;
       public            mg200_ofetdb    false    231    231    231            ^           2606    32716    postprocess postprocess_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.postprocess
    ADD CONSTRAINT postprocess_pkey PRIMARY KEY (postprocess_id);
 F   ALTER TABLE ONLY public.postprocess DROP CONSTRAINT postprocess_pkey;
       public            mg200_ofetdb    false    230            d           2606    32718 .   postprocess_sequence postprocess_sequence_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.postprocess_sequence
    ADD CONSTRAINT postprocess_sequence_pkey PRIMARY KEY (postprocess_id);
 X   ALTER TABLE ONLY public.postprocess_sequence DROP CONSTRAINT postprocess_sequence_pkey;
       public            mg200_ofetdb    false    233            f           2606    32720 &   postprocess_step postprocess_step_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY public.postprocess_step
    ADD CONSTRAINT postprocess_step_pkey PRIMARY KEY (postprocess_step_id);
 P   ALTER TABLE ONLY public.postprocess_step DROP CONSTRAINT postprocess_step_pkey;
       public            mg200_ofetdb    false    235            h           2606    32722 @   postprocess_step postprocess_step_treatment_type_params_meta_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.postprocess_step
    ADD CONSTRAINT postprocess_step_treatment_type_params_meta_key UNIQUE (treatment_type, params, meta);
 j   ALTER TABLE ONLY public.postprocess_step DROP CONSTRAINT postprocess_step_treatment_type_params_meta_key;
       public            mg200_ofetdb    false    235    235    235            j           2606    32724 (   sample sample_exp_id_process_id_meta_key 
   CONSTRAINT     w   ALTER TABLE ONLY public.sample
    ADD CONSTRAINT sample_exp_id_process_id_meta_key UNIQUE (exp_id, process_id, meta);
 R   ALTER TABLE ONLY public.sample DROP CONSTRAINT sample_exp_id_process_id_meta_key;
       public            mg200_ofetdb    false    237    237    237            l           2606    32726    sample sample_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.sample
    ADD CONSTRAINT sample_pkey PRIMARY KEY (sample_id);
 <   ALTER TABLE ONLY public.sample DROP CONSTRAINT sample_pkey;
       public            mg200_ofetdb    false    237            p           2606    32728 4   solution_makeup_polymer solution_makeup_polymer_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.solution_makeup_polymer
    ADD CONSTRAINT solution_makeup_polymer_pkey PRIMARY KEY (solution_id, polymer_id);
 ^   ALTER TABLE ONLY public.solution_makeup_polymer DROP CONSTRAINT solution_makeup_polymer_pkey;
       public            mg200_ofetdb    false    240    240            r           2606    32730 R   solution_makeup_polymer solution_makeup_polymer_solution_id_polymer_id_wt_frac_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.solution_makeup_polymer
    ADD CONSTRAINT solution_makeup_polymer_solution_id_polymer_id_wt_frac_key UNIQUE (solution_id, polymer_id, wt_frac);
 |   ALTER TABLE ONLY public.solution_makeup_polymer DROP CONSTRAINT solution_makeup_polymer_solution_id_polymer_id_wt_frac_key;
       public            mg200_ofetdb    false    240    240    240            t           2606    32732 4   solution_makeup_solvent solution_makeup_solvent_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.solution_makeup_solvent
    ADD CONSTRAINT solution_makeup_solvent_pkey PRIMARY KEY (solution_id, solvent_id);
 ^   ALTER TABLE ONLY public.solution_makeup_solvent DROP CONSTRAINT solution_makeup_solvent_pkey;
       public            mg200_ofetdb    false    241    241            v           2606    32734 S   solution_makeup_solvent solution_makeup_solvent_solution_id_solvent_id_vol_frac_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.solution_makeup_solvent
    ADD CONSTRAINT solution_makeup_solvent_solution_id_solvent_id_vol_frac_key UNIQUE (solution_id, solvent_id, vol_frac);
 }   ALTER TABLE ONLY public.solution_makeup_solvent DROP CONSTRAINT solution_makeup_solvent_solution_id_solvent_id_vol_frac_key;
       public            mg200_ofetdb    false    241    241    241            n           2606    32736    solution solution_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.solution
    ADD CONSTRAINT solution_pkey PRIMARY KEY (solution_id);
 @   ALTER TABLE ONLY public.solution DROP CONSTRAINT solution_pkey;
       public            mg200_ofetdb    false    239            z           2606    32738 6   solution_treatment_order solution_treatment_order_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.solution_treatment_order
    ADD CONSTRAINT solution_treatment_order_pkey PRIMARY KEY (solution_treatment_id, process_order);
 `   ALTER TABLE ONLY public.solution_treatment_order DROP CONSTRAINT solution_treatment_order_pkey;
       public            mg200_ofetdb    false    244    244            |           2606    32740 X   solution_treatment_order solution_treatment_order_solution_treatment_id_process_orde_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.solution_treatment_order
    ADD CONSTRAINT solution_treatment_order_solution_treatment_id_process_orde_key UNIQUE (solution_treatment_id, process_order, solution_treatment_step_id);
 �   ALTER TABLE ONLY public.solution_treatment_order DROP CONSTRAINT solution_treatment_order_solution_treatment_id_process_orde_key;
       public            mg200_ofetdb    false    244    244    244            x           2606    32742 *   solution_treatment solution_treatment_pkey 
   CONSTRAINT     {   ALTER TABLE ONLY public.solution_treatment
    ADD CONSTRAINT solution_treatment_pkey PRIMARY KEY (solution_treatment_id);
 T   ALTER TABLE ONLY public.solution_treatment DROP CONSTRAINT solution_treatment_pkey;
       public            mg200_ofetdb    false    243            ~           2606    32744 <   solution_treatment_sequence solution_treatment_sequence_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.solution_treatment_sequence
    ADD CONSTRAINT solution_treatment_sequence_pkey PRIMARY KEY (solution_treatment_id);
 f   ALTER TABLE ONLY public.solution_treatment_sequence DROP CONSTRAINT solution_treatment_sequence_pkey;
       public            mg200_ofetdb    false    245            �           2606    32746 4   solution_treatment_step solution_treatment_step_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.solution_treatment_step
    ADD CONSTRAINT solution_treatment_step_pkey PRIMARY KEY (solution_treatment_step_id);
 ^   ALTER TABLE ONLY public.solution_treatment_step DROP CONSTRAINT solution_treatment_step_pkey;
       public            mg200_ofetdb    false    248            �           2606    32748 N   solution_treatment_step solution_treatment_step_treatment_type_params_meta_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.solution_treatment_step
    ADD CONSTRAINT solution_treatment_step_treatment_type_params_meta_key UNIQUE (treatment_type, params, meta);
 x   ALTER TABLE ONLY public.solution_treatment_step DROP CONSTRAINT solution_treatment_step_treatment_type_params_meta_key;
       public            mg200_ofetdb    false    248    248    248            �           2606    32750    solvent solvent_iupac_name_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.solvent
    ADD CONSTRAINT solvent_iupac_name_key UNIQUE (iupac_name);
 H   ALTER TABLE ONLY public.solvent DROP CONSTRAINT solvent_iupac_name_key;
       public            mg200_ofetdb    false    250            �           2606    32752    solvent solvent_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.solvent
    ADD CONSTRAINT solvent_pkey PRIMARY KEY (pubchem_cid);
 >   ALTER TABLE ONLY public.solvent DROP CONSTRAINT solvent_pkey;
       public            mg200_ofetdb    false    250            �           2606    32754 6   substrate_pretreat_order substrate_pretreat_order_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.substrate_pretreat_order
    ADD CONSTRAINT substrate_pretreat_order_pkey PRIMARY KEY (substrate_pretreat_id, process_order);
 `   ALTER TABLE ONLY public.substrate_pretreat_order DROP CONSTRAINT substrate_pretreat_order_pkey;
       public            mg200_ofetdb    false    252    252            �           2606    32756 X   substrate_pretreat_order substrate_pretreat_order_substrate_pretreat_id_process_orde_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.substrate_pretreat_order
    ADD CONSTRAINT substrate_pretreat_order_substrate_pretreat_id_process_orde_key UNIQUE (substrate_pretreat_id, process_order, substrate_pretreat_step_id);
 �   ALTER TABLE ONLY public.substrate_pretreat_order DROP CONSTRAINT substrate_pretreat_order_substrate_pretreat_id_process_orde_key;
       public            mg200_ofetdb    false    252    252    252            �           2606    32758 *   substrate_pretreat substrate_pretreat_pkey 
   CONSTRAINT     {   ALTER TABLE ONLY public.substrate_pretreat
    ADD CONSTRAINT substrate_pretreat_pkey PRIMARY KEY (substrate_pretreat_id);
 T   ALTER TABLE ONLY public.substrate_pretreat DROP CONSTRAINT substrate_pretreat_pkey;
       public            mg200_ofetdb    false    251            �           2606    32760 <   substrate_pretreat_sequence substrate_pretreat_sequence_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.substrate_pretreat_sequence
    ADD CONSTRAINT substrate_pretreat_sequence_pkey PRIMARY KEY (substrate_pretreat_id);
 f   ALTER TABLE ONLY public.substrate_pretreat_sequence DROP CONSTRAINT substrate_pretreat_sequence_pkey;
       public            mg200_ofetdb    false    253            �           2606    32762 4   substrate_pretreat_step substrate_pretreat_step_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.substrate_pretreat_step
    ADD CONSTRAINT substrate_pretreat_step_pkey PRIMARY KEY (substrate_pretreat_step_id);
 ^   ALTER TABLE ONLY public.substrate_pretreat_step DROP CONSTRAINT substrate_pretreat_step_pkey;
       public            mg200_ofetdb    false    255            �           2606    32764 N   substrate_pretreat_step substrate_pretreat_step_treatment_type_params_meta_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.substrate_pretreat_step
    ADD CONSTRAINT substrate_pretreat_step_treatment_type_params_meta_key UNIQUE (treatment_type, params, meta);
 x   ALTER TABLE ONLY public.substrate_pretreat_step DROP CONSTRAINT substrate_pretreat_step_treatment_type_params_meta_key;
       public            mg200_ofetdb    false    255    255    255            F           1259    32765 !   idx_device_fabrication_deleted_at    INDEX     f   CREATE INDEX idx_device_fabrication_deleted_at ON public.device_fabrication USING btree (deleted_at);
 5   DROP INDEX public.idx_device_fabrication_deleted_at;
       public            mg200_ofetdb    false    214            K           1259    32766    idx_experiment_info_deleted_at    INDEX     `   CREATE INDEX idx_experiment_info_deleted_at ON public.experiment_info USING btree (deleted_at);
 2   DROP INDEX public.idx_experiment_info_deleted_at;
       public            mg200_ofetdb    false    217            P           1259    32767    idx_film_deposition_deleted_at    INDEX     `   CREATE INDEX idx_film_deposition_deleted_at ON public.film_deposition USING btree (deleted_at);
 2   DROP INDEX public.idx_film_deposition_deleted_at;
       public            mg200_ofetdb    false    220            �           2606    32768 &   measurement measurement_sample_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.measurement
    ADD CONSTRAINT measurement_sample_id_fkey FOREIGN KEY (sample_id) REFERENCES public.sample(sample_id) ON UPDATE CASCADE ON DELETE SET NULL;
 P   ALTER TABLE ONLY public.measurement DROP CONSTRAINT measurement_sample_id_fkey;
       public          mg200_ofetdb    false    223    3948    237            �           2606    32773 ,   ofet_process ofet_process_device_fab_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ofet_process
    ADD CONSTRAINT ofet_process_device_fab_id_fkey FOREIGN KEY (device_fab_id) REFERENCES public.device_fabrication(device_fab_id) ON UPDATE CASCADE ON DELETE SET NULL;
 V   ALTER TABLE ONLY public.ofet_process DROP CONSTRAINT ofet_process_device_fab_id_fkey;
       public          mg200_ofetdb    false    225    3909    214            �           2606    32778 1   ofet_process ofet_process_film_deposition_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ofet_process
    ADD CONSTRAINT ofet_process_film_deposition_id_fkey FOREIGN KEY (film_deposition_id) REFERENCES public.film_deposition(film_deposition_id) ON UPDATE CASCADE ON DELETE SET NULL;
 [   ALTER TABLE ONLY public.ofet_process DROP CONSTRAINT ofet_process_film_deposition_id_fkey;
       public          mg200_ofetdb    false    220    225    3919            �           2606    32783 -   ofet_process ofet_process_postprocess_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ofet_process
    ADD CONSTRAINT ofet_process_postprocess_id_fkey FOREIGN KEY (postprocess_id) REFERENCES public.postprocess(postprocess_id) ON UPDATE CASCADE ON DELETE SET NULL;
 W   ALTER TABLE ONLY public.ofet_process DROP CONSTRAINT ofet_process_postprocess_id_fkey;
       public          mg200_ofetdb    false    3934    230    225            �           2606    32788 *   ofet_process ofet_process_solution_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ofet_process
    ADD CONSTRAINT ofet_process_solution_id_fkey FOREIGN KEY (solution_id) REFERENCES public.solution(solution_id) ON UPDATE CASCADE ON DELETE SET NULL;
 T   ALTER TABLE ONLY public.ofet_process DROP CONSTRAINT ofet_process_solution_id_fkey;
       public          mg200_ofetdb    false    239    225    3950            �           2606    32793 4   ofet_process ofet_process_solution_treatment_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ofet_process
    ADD CONSTRAINT ofet_process_solution_treatment_id_fkey FOREIGN KEY (solution_treatment_id) REFERENCES public.solution_treatment(solution_treatment_id) ON UPDATE CASCADE ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.ofet_process DROP CONSTRAINT ofet_process_solution_treatment_id_fkey;
       public          mg200_ofetdb    false    225    3960    243            �           2606    32798 4   ofet_process ofet_process_substrate_pretreat_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ofet_process
    ADD CONSTRAINT ofet_process_substrate_pretreat_id_fkey FOREIGN KEY (substrate_pretreat_id) REFERENCES public.substrate_pretreat(substrate_pretreat_id) ON UPDATE CASCADE ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.ofet_process DROP CONSTRAINT ofet_process_substrate_pretreat_id_fkey;
       public          mg200_ofetdb    false    225    251    3976            �           2606    32803 7   postprocess_order postprocess_order_postprocess_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.postprocess_order
    ADD CONSTRAINT postprocess_order_postprocess_id_fkey FOREIGN KEY (postprocess_id) REFERENCES public.postprocess(postprocess_id) ON UPDATE CASCADE ON DELETE SET NULL;
 a   ALTER TABLE ONLY public.postprocess_order DROP CONSTRAINT postprocess_order_postprocess_id_fkey;
       public          mg200_ofetdb    false    3934    231    230            �           2606    32808 <   postprocess_order postprocess_order_postprocess_step_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.postprocess_order
    ADD CONSTRAINT postprocess_order_postprocess_step_id_fkey FOREIGN KEY (postprocess_step_id) REFERENCES public.postprocess_step(postprocess_step_id) ON UPDATE CASCADE ON DELETE SET NULL;
 f   ALTER TABLE ONLY public.postprocess_order DROP CONSTRAINT postprocess_order_postprocess_step_id_fkey;
       public          mg200_ofetdb    false    231    3942    235            �           2606    32813 =   postprocess_sequence postprocess_sequence_postprocess_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.postprocess_sequence
    ADD CONSTRAINT postprocess_sequence_postprocess_id_fkey FOREIGN KEY (postprocess_id) REFERENCES public.postprocess(postprocess_id);
 g   ALTER TABLE ONLY public.postprocess_sequence DROP CONSTRAINT postprocess_sequence_postprocess_id_fkey;
       public          mg200_ofetdb    false    230    233    3934            �           2606    32818    sample sample_exp_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.sample
    ADD CONSTRAINT sample_exp_id_fkey FOREIGN KEY (exp_id) REFERENCES public.experiment_info(exp_id) ON UPDATE CASCADE ON DELETE SET NULL;
 C   ALTER TABLE ONLY public.sample DROP CONSTRAINT sample_exp_id_fkey;
       public          mg200_ofetdb    false    237    217    3914            �           2606    32823    sample sample_process_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.sample
    ADD CONSTRAINT sample_process_id_fkey FOREIGN KEY (process_id) REFERENCES public.ofet_process(process_id) ON UPDATE CASCADE ON DELETE SET NULL;
 G   ALTER TABLE ONLY public.sample DROP CONSTRAINT sample_process_id_fkey;
       public          mg200_ofetdb    false    237    225    3926            �           2606    32828 ?   solution_makeup_polymer solution_makeup_polymer_polymer_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.solution_makeup_polymer
    ADD CONSTRAINT solution_makeup_polymer_polymer_id_fkey FOREIGN KEY (polymer_id) REFERENCES public.polymer(polymer_id) ON UPDATE CASCADE ON DELETE SET NULL;
 i   ALTER TABLE ONLY public.solution_makeup_polymer DROP CONSTRAINT solution_makeup_polymer_polymer_id_fkey;
       public          mg200_ofetdb    false    3932    240    227            �           2606    32833 @   solution_makeup_polymer solution_makeup_polymer_solution_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.solution_makeup_polymer
    ADD CONSTRAINT solution_makeup_polymer_solution_id_fkey FOREIGN KEY (solution_id) REFERENCES public.solution(solution_id) ON UPDATE CASCADE ON DELETE SET NULL;
 j   ALTER TABLE ONLY public.solution_makeup_polymer DROP CONSTRAINT solution_makeup_polymer_solution_id_fkey;
       public          mg200_ofetdb    false    3950    240    239            �           2606    32838 @   solution_makeup_solvent solution_makeup_solvent_solution_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.solution_makeup_solvent
    ADD CONSTRAINT solution_makeup_solvent_solution_id_fkey FOREIGN KEY (solution_id) REFERENCES public.solution(solution_id) ON UPDATE CASCADE ON DELETE SET NULL;
 j   ALTER TABLE ONLY public.solution_makeup_solvent DROP CONSTRAINT solution_makeup_solvent_solution_id_fkey;
       public          mg200_ofetdb    false    3950    239    241            �           2606    32843 ?   solution_makeup_solvent solution_makeup_solvent_solvent_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.solution_makeup_solvent
    ADD CONSTRAINT solution_makeup_solvent_solvent_id_fkey FOREIGN KEY (solvent_id) REFERENCES public.solvent(pubchem_cid) ON UPDATE CASCADE ON DELETE SET NULL;
 i   ALTER TABLE ONLY public.solution_makeup_solvent DROP CONSTRAINT solution_makeup_solvent_solvent_id_fkey;
       public          mg200_ofetdb    false    250    241    3974            �           2606    32848 L   solution_treatment_order solution_treatment_order_solution_treatment_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.solution_treatment_order
    ADD CONSTRAINT solution_treatment_order_solution_treatment_id_fkey FOREIGN KEY (solution_treatment_id) REFERENCES public.solution_treatment(solution_treatment_id) ON UPDATE CASCADE ON DELETE SET NULL;
 v   ALTER TABLE ONLY public.solution_treatment_order DROP CONSTRAINT solution_treatment_order_solution_treatment_id_fkey;
       public          mg200_ofetdb    false    244    3960    243            �           2606    32853 Q   solution_treatment_order solution_treatment_order_solution_treatment_step_id_fkey    FK CONSTRAINT       ALTER TABLE ONLY public.solution_treatment_order
    ADD CONSTRAINT solution_treatment_order_solution_treatment_step_id_fkey FOREIGN KEY (solution_treatment_step_id) REFERENCES public.solution_treatment_step(solution_treatment_step_id) ON UPDATE CASCADE ON DELETE SET NULL;
 {   ALTER TABLE ONLY public.solution_treatment_order DROP CONSTRAINT solution_treatment_order_solution_treatment_step_id_fkey;
       public          mg200_ofetdb    false    3968    248    244            �           2606    32858 R   solution_treatment_sequence solution_treatment_sequence_solution_treatment_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.solution_treatment_sequence
    ADD CONSTRAINT solution_treatment_sequence_solution_treatment_id_fkey FOREIGN KEY (solution_treatment_id) REFERENCES public.solution_treatment(solution_treatment_id);
 |   ALTER TABLE ONLY public.solution_treatment_sequence DROP CONSTRAINT solution_treatment_sequence_solution_treatment_id_fkey;
       public          mg200_ofetdb    false    3960    245    243            �           2606    32863 L   substrate_pretreat_order substrate_pretreat_order_substrate_pretreat_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.substrate_pretreat_order
    ADD CONSTRAINT substrate_pretreat_order_substrate_pretreat_id_fkey FOREIGN KEY (substrate_pretreat_id) REFERENCES public.substrate_pretreat(substrate_pretreat_id) ON UPDATE CASCADE ON DELETE SET NULL;
 v   ALTER TABLE ONLY public.substrate_pretreat_order DROP CONSTRAINT substrate_pretreat_order_substrate_pretreat_id_fkey;
       public          mg200_ofetdb    false    3976    251    252            �           2606    32868 Q   substrate_pretreat_order substrate_pretreat_order_substrate_pretreat_step_id_fkey    FK CONSTRAINT       ALTER TABLE ONLY public.substrate_pretreat_order
    ADD CONSTRAINT substrate_pretreat_order_substrate_pretreat_step_id_fkey FOREIGN KEY (substrate_pretreat_step_id) REFERENCES public.substrate_pretreat_step(substrate_pretreat_step_id) ON UPDATE CASCADE ON DELETE SET NULL;
 {   ALTER TABLE ONLY public.substrate_pretreat_order DROP CONSTRAINT substrate_pretreat_order_substrate_pretreat_step_id_fkey;
       public          mg200_ofetdb    false    255    252    3984            �           2606    32873 R   substrate_pretreat_sequence substrate_pretreat_sequence_substrate_pretreat_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.substrate_pretreat_sequence
    ADD CONSTRAINT substrate_pretreat_sequence_substrate_pretreat_id_fkey FOREIGN KEY (substrate_pretreat_id) REFERENCES public.substrate_pretreat(substrate_pretreat_id);
 |   ALTER TABLE ONLY public.substrate_pretreat_sequence DROP CONSTRAINT substrate_pretreat_sequence_substrate_pretreat_id_fkey;
       public          mg200_ofetdb    false    251    253    3976            7   M  x���n�F���S�J����H*;�v��c
`�m�DA�c��]��$J�u���e���F`&)�s���P����d,����)����{Be���ߑ�C����ksu��<�ƫpJn��:�r�<\>l.���M�pN�u4ٻ�&�f����,�|Y�I����7�����$^�G�� ��e�	~�����΁7>���`L�4XN�L����z�����)C����vi]����`:���y�-\g��׽�k��	u��	ۍ�@�D��	��f�!<�)�b�^6���#P/w�],C��P�`��*�;�^���h�v��&�,������~?ة�}D��Mx��1��˵�h�)G����ls���o��7gH�>�FM�n�hw����ZN�U��b��ͫd�|�I���Wn�0�yM�*���6�C�z��J<�1�n]�|Q�����1ց�U|���y;� �H1|4�����B��H1n�;�N�ސG[���()��Zox�JCu�r?^�.�ʔ�q���-}�\%@%E����g[=�B�XI3�,�}�9QL�	fPzH2$3"2�}��D�7M ��Ɲ}��(�1�e�7�a#��e����<�䙼>&�K8\�7 �a�(L� �3��;���� %2�OhG����\���}\+ޅÔz z=�y�w��wL�=��	�a�?9ȫcY�(�b���n���aD'�e�ݐ/ó ÀN�۱�Z��-�ڶ8w����chP��ù��%8Yl�b�J�5��Ze]��v ]�ׁX5]�m�C���6��>�a�l�!q�m���*�",� ��8@��NUU�M��x��2/�5d,�0C�fU�I�\�h�34i��� ^�^�=Tnu��5GW�
J��*;?De?P�]�
{5Uԑ5&d�� u]4S�kY�u-��p|��}��W�E�W[Z��l��b�q����U/������@�����j�d�(i��8�IR��}�B� "�ɫ�U����D�D`��v�>Z^� u�:�W����H46�`X���� �H����A�;��O$ Yp
�K(v�'�H�JQ�	=	�F�v��: .�"�����{�u�v�H��$"sI��v�*u�cd�M6���Q���"�m�鴸�� �H�V�7����������h'e6S�] +.+���+ ����
~p�8��n`��4���.@W��'hfG�ʺ��1a3O _����<ACc ���UG������<��{K���������&�f���Z����V!�L�RTH�η���Wii��wEK����/�3�����"m�Gu�z�?�{��5��jz;��썊�(��HJ���x��m�� �x�а�~w�*�]o�2�ʑK�7�)�Ui4(�z�+��HyoV�1q���<Qغ�O���9�������v�����1�����n9+iX��~�~e;��ٕr��o$�1�j�u�l\������.I�?_8έ�j�����#e��4H��U��rA�����s�&O�:$wq:#�p'Q��|��$�`?�E�|!��`�duӗ|}����zR��K�\oI��s�F���,~�篿������Z=�\�a-�$��K��B��+ߓ`�F_C��qB��ۓ�U��{�Y�$�Ղ��k5!"	|,�g�$d��W� Qw�Nl�LH���ළ`������N��g[�(�g��~S7��4��K�,@-�&����G�d>�ٖC�T�>�y�A���I����zyv�<	��~��� ����{yoя�^�*b���L��#[����,.|��w-fm��V삡�윞���PS=      :      x��]�n�F�^'OA�6��f�MdɎ.���'4J�R�,6�A�%w� �<� �vV����f�7�̩"�]�H6i[����Eݪ�����N�N}���$]����M9{�T{��!�o�g����r��v�G��E�|�2M�Ղ����2�H8!q���>��+��/����͍c4"~2�:�(3t.tCG^�~��G?�nalv����c��%1]�c�Z���M���Ʊi:v�ƭM�vs����������2Kwz�co�qz̄��w�ף#gӑ�e@�b�`8�"<�1�ы���ke��&s`rf=Z�6�#��y���r.����:=�+]��.lc��2,��3�H!8ja��|��Z�^�[�@�a\�yz�Ψ��о����3�Ha4j�t� �d`��ӇBl���M�\]0T�>R���V��хBg����3	騐������A��\L"��ί&2����L�����(�GʹG�%>#��!�u��v��*��ۨ?'��0x���V��[�J���<�A8�����{���#pp�.���]�x]4�!,@]����^�u�b�s]C����뚢�B4�t�kʺ
��۽� <V ���umC�U�l���g6��{]1G�?w�늺�^�"��[��
�eE!�����G�* 5ZV�s���CR
��Nh8�p�](p7��E���c/�F����ED�!�td�\|�>-bq3'���+�P�f�����ď���b�D��z�"
1͖����X `�.=zRhlnS���M��1'�Bt�MA�t����p�]?�<��Q������� ��� �����J����{xS���Bu1&�<w �����{t���l��z]p�}d�����B����e,�����!qNX
��n�Й�3J�9�m��{Do��l�}�ǟ�g#�G�
��ff�F��*9��φ�	_Xr{t�P�j�8"�L�΍���[>-���bx=�j)�Zȭ ���1�Bk��ֺ3JP I�/ƃ_{������j,�n�>ː���ja5�����>��n'���Ӄ����Bh��Рh���
����a]w���'�J��~�0���=ZW(m�,�0�^1��~�V�l�P9#���>��P�n�r�!���`N����G��Խ�N���u@У��v�7���\�.R{�؏�	E��*�y�6��C:]f�7I:��\6����K+_��(�f�?�w�,B:��@�_���oc��`S��WС>A��孝�����	�XHAqv�i�lE�	Χ�m�^�r�A�.���k�(/�o�E��X_��n�9���B-1A'��a��6�Mٔ����a��/���0�.}:�^�S�h��H;���1��U��/�'O�3R�_j'��X#�T;��O�D;%1�X(�xe�E�C>[�B{����$J<N��ep9��k��J;jҠ���2�C� f:�z�i��.�L~�O�d	m���+r�B�8�,�'�U~�<L�vF��I��o��_Pٯ��5���7ȁ,>���7�]�],B:Y�Ij����;���FAB�̇�F�h���$`���W�go�ߞ>�v(oc\�
��d��$�ቶI����h����z��Y��\n+�Q�
��:8�UE;��U춅�v�	R��|� �^�JR�,b`D���1әDr���2�� 
�`�<�h:L�p� ~*0���vyI��	�A���3rE� �;�`y�}r� sCm���|��`ζK6hƨ���5��_,#_�0U�����#�����Q������̕��Y�qK�d��-�V@h� �;�@���c���O�O�\���>Kx�Q�2J�#�Y����"c	����?g0-���
���Cx竬'��e��2~�2|PE)�9�v�}�����_�*I㕶����E�:�a?�׮�j����T����ݲ�5[��``�U���(%�,�s�b��x�n9ȑ^�,�c;�.�%��(k������V��0_�I3�հz/�&L&��)Y�T��V�0���-ق��{���o��i���vA8h�s�{Ʀ(M��ԌI��>n���itO���b��z=�f]�����`�	bs��fA|���g/'{��*����	XH	�\��}i�(�k<��.#P�DǨ�c����.6��,:�|y�����j���ӅS�R���Z�~�e���1�-)����౦�R���2�"�ė�(��%����N*d���ł}3�q����dNA��x.|���6�Q�=�4�7�℥�+��\o�Aѵ�;��ڎ��c6�C.�����UYhC�U��}$J	]���E~@�X��ߊ,{N�6�Q���Q��ϧ�ޅ���E�=�|h�5�PV�qpe� ��4�շ┒���-ӻml5<`k�x?�[�B�7X({�TP�YN��2�L$>My�c!��}J�)I�߉��L��G3�-b� B�^�4_ȑ�,�7i�H�� r�R�*>���U����&�R�,(NA��1��B������4݈�3�	i��Y$�~YT�-�!�P��%S�C������>�τ�,{���A���qχ�1��:SAC����A���qJ��u�c�Lq����rݟ�8�~&A�e�����@5p��Ҕ����t�8��a&�����O�g|�P^��"*x���xﳩweKε�0�8e�ŵ��#p��u��.#Pb@�}h#p��@	)����NC
�GGm�`�'Ub���w��h���'͎���h��N5�=N���j��D�{��}<j�Am�}<n��z�{���G]���:���Ե�i��m�p;���V{MSro#�@Y�����+�}�Bq��>���c~�m/�GqL�Y�~�hC�n��k���n$b��L�h����w�1�,&�IJ�|���x�◑|��l�W*^ �d�z���Ż���㑎&�:�h��PF�ڞ"��������7�Ȟ"B�&��w��Pi�"}�&���,�[�ITk���`� �'gBs�̉Z�nl��,��)�I����Z�@�A@ș K��2�B={�:�����@Vf �DT�|�+�#�P���x�&�wf��7������v��b#ݞ�x��h}�B�#���^Q�j��!z"l�&�6)�;�O݌���,i�Rr�
�_��xh�?��j�������g�Z�'o�[֓�{le�S���/�ݻY�H�d9��NM���U���h����@�}�s�y�z�ܿ7��xVn<�R�K�c��{��N�9��	�o�HW�b��U�_N�6�F��m�;$З�6�iԻ/З�4HFD¿(�j?�6�v�N3���Ϯe<�1�wb�c��6e��ǛgyR8ni<U֣vyu�˜�'�$�۷G�f�~��x���X.�������skYNԇV�6|�����E�x/A�tC��2x�/)�EU���Te�'}ش�<�a�^�J�{����l	�[�i5��=]��[=�&���VΏ�K�$�dS���WN�f�u<?���ʃO;��5�p�?����χ?�~�硊�k����/3|��gv�=;�=�g�@I?i4Md�C}օL�����*�/����<\f0.R�^���>�Sh�AL���S�\�g`�(�~�d�?`v�����L�KJw��v O�f_��Nv|t7Ȏ��/�9{��?�!W;�>Ϗ�f�y|J�7�r�>���%�hs�K�~�#�-gHw�Ɵ�.i���\�BqӮ�}�R�BGⲤ.h����c�9Y}Rɏ3<�Z�����y�g3�Y$Q���$yJQ�~�'�I��`� g4K3~��L���v�v#��4��c}�\1;yZ�����G��G�i	<�9#K�g`ϩ�A�T���y�vI���v�����)4s����P�̙�v��l(���P��u�M6ގLϫ��rWs�>�Du��J=c#5IUo��Xs!�cU��\Z87\s;qj��#. [����/c *  ��_�"3ƫԌH��׹�0W�������s}��?��W�u���f��{&U�+S)����|rx�	�/��3�b������:�*�#`�$!1���I\�X��W�^$j=�Ok�?'�ҵ���,ݧZ��úӲ`b��X�qYX���˂
�bm�t�[��+��Fd ���g�P.{�V�e�H���^�5��(-�פ�l���*Y��W���4�����<�	�����K���6A~2�,����'�^%��w�fl��,��3"��ز�R�R���g�[U�}9��Oy��m�f��l�)��0�N\\s�ҙ�Ŵ�F�6�����<�S�7dUq�ؽ�cJ"*|yeZ��L�bP�y-~��L�fş#�����5wc����;0��j&%��t�+7R�:v]����UE��h`��	�0L��������?�aUE�&�p��2F������2�Bp�Q����Ѿ-��	bkB��a��H�v\+����n���3\b9�J���u�=�2	W�kx�)N}9�m������-}�X�Y�l�a�Cdz�}����p���0�L�4&S:�z_���ķs���$s�YN���$�{�7Ny��w!�e� �sZ\
>�� oL��hk�}��ߒ�����J���	���$d8?b䊪��%e�y����U����zC���O+Wvl��纳�-��l����lP�M�]'�]�Rt�R����#����|�L����}9�C[��S�)Fت�:ŭQ��������U�]c���p��uhb5/�G˰r��k;dح,�j�/NN��� "2{��@Mm��$Ņuw�������ٜFIv�I~�J��7��nH|GS.�Z_,�S\8�a�ʪ����e�����+�Yv�A׿g@}w�����l��R�x�2�n�-����=�
$���#�,O��ۭ�����_$�꯯I!W��Q���m��z��n�(D�xykv���Em���|Wě}�Q�}��(鼆�����[71����@���*ېl�@2�$Z���l$ ��O�r��I��>2�7b�#�
���jǭ���u�Woo����.	����������Y���V�l�����wny�Ŧ��Q	�'���π�Y����uDKz����w�;Ko��$l���Y ^YH.+������E ����OG��a�-��qm��6�����(v1K�5M����?M�.������EL��������F�ּ&ۼ(�1jriw�߭�7Xտ���:�6m}�WU��/ï����}�J      =   8  x��[Q��F~��
�V�`�]�oQ�i�*y��H'�Fw4>�.QU�w��|�3x1��Rtw"0;���7����,ߦ�ٿ���}��g�s]���ə'��i�Y?'��<��i6�:����+T�n)@���E�\>��2E#S�er���]����I��~󲚥�O'E�۪y[[C3;��Fh�9�-��[h�)��*�n�a#4���Ȍ��k���I�T��R�T�lO\��}�W�p"��"y�&F����U����)I�����b���>�&��<w�<]�Y�(�ͺ����x�JV��+����L�m�^���U��PUϧ�$���~7��z���{}O3�T�Oce`/�&���������N���&u
۪�U
Xˋ:����դ�d K	���N�l��$�)�\��]9>Ǫ���Q�p�D?��\I.d���ȶ@&�&�������H*0� ����"��2C�G�( �E�c�:���.�������1�^p��Ddw!s4�e֓X��^���BY��L&���=īT�/曬~"!�ds��@�H�0W�J�@=�JB<I�b�|�V� !�$Y��(�۴(!j|w�mV��bs_�6C;��������V"��C�w��2�����}.���ƨ�|\����=�>��-�ͶkE�ӫ�c�w�ѷ_%�B��C��t�YB!������>���L>&�T����^�:H��S� ����Ȅq�wr h�?[���R��/����KD�{�9@��ut$�s�xyy��@��	ģ W���I�,
�ZE� �m�WM�+�+���S��)���5銂�f�������Q5x�&=̿4+klZ�sN���O�$,�7�48�f�^$+���K���%�Ѭ����zL ~r����]�v@er�|�L��<-��������(+���I����>�?��l��c���W��d·۷��fB���W��0DN���"��&��+�g]-��|.��4^��<�S:���!]8��8�K���q|k�ꮑ�4r���P��0`�f�H�F&P`�5+���O0p�u����'M�*m�Z��� K׫$�o�"�nQ�����ǱoifH& ~I��띾�	��{���C4��S�j�^�buto�?C�K6>| ���9tR
�54PYȵ�Ɵ�p���4���%�H;\.,�H�J&}yIe��a(t��Yb�,�<]��M�y!�`���5�e���x�8��!|_#|���"�:�h�� wQ�}��"H��J�d�A^�8�_�*pl��/#�0�� ;Vc����+���k ,r
 gq�Rh���(6�Q(�q���讜�w蠂�����(A���N3��Ê/ĳ��Vù:=�r��Z�N���t�0YEQRD�t5��mXE�a���.Z��s�I��Uwʚwxx�՝�`������ڝ"Ӗx �t��݂`���5P&�%. 9�rK����!g�;h���)�4ؼ)�*��H0�*�ݬ[�d���K������?M����y��U7x~H�U�}[��c��w2>�ڢO{���ǥ=�fŷ�a�T��H���o�L�n�x\�r�L�Ў?a[��Q�����5l]S����N��ؚE��dh�[ֵe���(���G�C�v��H��>ݽ�c
΍��;i�ąc҃�z^�&�@qI�����@c����A��4y�=�9X���_����l�J�V:����p��S�ڔ�9hO���˖;u�onK��,o =%q��#��~޷�<)��ԵV	�\޾���U	ϳx"�RW��z���>���������      @      x���ݎ%Ir&v����U�����!�#��8��P����NLUe)�jf�D�Ե��|>�>�>����8��"��̓���Y]~�������3���������/o�]|���e�o��x�������>\}������߾��������T���oξ�������i���/��b����?�g���;�����o�zc���-_~���������oϯn�O����򇫏â��/_oο\]��p���/?�\ނ����r�����ө�?c:#ۆɕm���Qwb���7����N�}�����q���$�v�3������d'�O�#]G݈�׾	]
W��Gw����.�6b]e#����}����%�����3��H���X�ɠ���k�����%��I�ϰ���N�,��UU��sm�tZh��|���-�&�Ɣ���E�?]}�����S�n�f;-2ܺ��H��N-q>e��B�z����J�$�b�E�O����i�9;"�r�E��hw���H�͑(ӝ�}g�h~|1�H��>m���Ha��o���H	�>����&C��8�Ԓ���Rt�]��рӅ���Έ~$��:#2.�\P^ƅ�zʆE=b� .h�M�Ȏ�>�2.(6�Έ�fd(�l��ò!wFh�����O�-�Ω7�j2�\~�|yC�N"�SS�VuVd�)����@3��3�Y����J�@[��C3�y#����^x)�3�)
�����"��g�O���"���u�,tX�r<w(�#����J�Z
�Ș����nZ� L�܆Ί\1��Z���7@s`g��"��#�ڿ1+ޘ=��RgES�c�9Fz%�a�1wV���W��ҭ���Bӭ9�9�v�����;'�X�a�0�z!�vN��I�U[�ԛMd��	� +����;'��D�=<Y�s�g]��ǃ�;'|�%E�'�m�p������J�>��&sP�r無�R��4y�yaV�4C8��y�y�򾼹���2�͂F�;%�9�#'�9��M�YƠؖ�lK'm�۲�`�p۲�g�b[z�/�7�V�{7���r�gY�r_31N��|�}�γ����eZ��t��Y��&;�C�Y��ظ��i}��i�N�c�Yv�ȩ��V|�*�h���y�M.6�B���b-��%�g����zڱ���y��/O��0�2��	�L��pP]`��9;bV /ذ���ذ��]��4G��j�C��tA��L��헿݃��vA�ਹC�g�/Dg���3WY�#~)*�wA��n0�'z)
+tA�M�o-��´U��o���=)m�� u������c����j�@�Yk(�&�.H}�)Oj+������x����D�E��6��j?�HLު~"&~�#��>C�Ct�n��]�p$GL�e��@%Z�$ۃ�{;�������h�(}5yM�w]��̪wv1���Z��(,T8"q��}<�b��5G$.uQ�jsD�r������c�mO�Qoܸ��IuI��SsoA�%�S"�݃N�KR������6�%�Mbޏ����uI��?��I���U_��Q�$��Nǣ.vIh4��K]�vW��Q��$4�O���X��Q��,4�xę.�>ޕͶ�R��#R�,4��:�e���G�9tY_�hc����ԥ.���.wYh+��:�LG���ǻZ����Ͻm��e��ԋJ�g;��e2�u��ˤ�w��ˤ-t��L��5�mh���B/C��_١���ѿ2�⑈#<%)�Ҭ���@��6�c� E<�Ǻy$�<��L$�A�y�h�hCl����6�������A�|4��HL���xW��}T��7�*[����KO�Ꜫ�;������Ű����/�����[�b`�x�K%_f�l�����-��t������T�%M��kҒE}�.=?SxPڣ��TX\� 9���:�������U�ez�l�_���l��!C�b�NJ�'������u��UTXN����}���pۍ���ă�*v��:��x�˽�v������YSGn�c}�-���Av[�C��S�-/�%��2�H<���*��Xڤ>.�p�l����=�v;�6^?�`����;���C�*�;&;���KwҢ��1�:�����`����;&�j��6khi�� ��x��� �v�q����mN��kVM~�:m���ʆ��r.N�D9����2�$:�����*<��³�!x��ѧ���q�f����Y6H�8�+�����_ ����P�Jf����tT�1���u)ɘCT&:��ᩅ7��+S_�$��f3�P-zN��Y����p�v������"�D&�A�ߐ��V*��K��JF���9���|H�[ə���|�.�D�I���|M�\�?7�!AΘ���ɉ�Q�ѵ������}�K�~������[|������1���di��i�$k��Y����ϛ�Xڎ����~�B��I�+��[oc���i�&<��2"S���,��d�Hq�K�o�]�%Z�	�?>q��ϤI�dm�KQ$L��Y�s|~Y��σs�2�0R�r�I[IZt��`!K���V<����K�<
ӨH�l�5��Je��m7�d\N�/I�?��㒏>:c2��4B���{��	.C��*VDpw�Dkl�w6���r��2x��gg&�9R�I9Y��Q+D�Sfƀ�A5�B
U9�*7�܈�ld�2�^����b��yvV"���HAJ1�d|�)�+�U04�2a�հ,(�;�
�F�_�B�ӻh}�0�!y���Zq1������8���z"*C5:�#���m��ZHo�Mp[)]Ƕ�Ψ��o:8?ϯ2��P���� ���Te���j�P���TU���䙐�L܁@�O9���`Ҍy~�I�0�ૐ���v�ˌ�y2N��U]dOP2Ц	V)�z���*�b�V;�lD��R��hO(1k�&�'H��L�<�A��a]
S�fu���Ԃ`S�pu��IwjS�m��� B�?kp��T����3��P9�{cifnv#��"�'��̼B0!���ٚՂd�ܹ���&�.,0���͆=�� ���
(�x�*�4����e=R��j)�;j��✶lo5�Ez*LX�)�l�P#��Z#T�y6Yke��k8ku86�{��!�q|��!�㦕���%�z�B�RH^EOų=���K�BT�Κ��m��B������]�l�s�2���0��m��3�G����#��P� 2�}t�^������l�x`?�� �}"p�,a�V����鍁�%�XÈ�v�C�ge�&I#�l9�(�3�����|��D�V�Ua<7ۡ�;-�/�0�q�/P�p՜C��W������b��L�.����S����fD�!Dj� 9�;cs��r��E�Σ	) ��T�5�������)]����:pk�N�#R�e��|�(���)E�����>��L4A�$��!�엍�>�g� "1�3|��;q�=%�ak��ՊNX��;�%e �|��S�*��m0�����Y#�e�`N�	Q�[��V�!h��U^���������;e�t|v�<"���Ck;Ӂ�Oq(�	�J}~�ɑ
�s���ʉ�?8Q����2R��eDT#�Vv�MDl\T!X��M�	��Al�&���)@HD�Y1=��ix����]����� p�:"J,j��O��]a��.���#��F�OL4c "���VR�`:`5n6�V�����(�Qe�'�E�z��%��ZK�j!��
!���a3f"N��aOA�G�&&h��p΀����8
��
ma[�;��"�!�ْ	�s�����VDD,<��=z	>��	�5�9�]\"��(��N�j�mFJϦ���;�/]�3��3��Wgj�1�n�L\�5�]��b���"A0,�p�p�U�y���#�����|�t=BoMN	7�%X/<|��c����\���<1A�!�����[��JWo{�1q0BQ`�"p���W����cxx�%3#�(�Ҕ�����Q�t    g�	F%�~��2����懆x�����/��g���4,���P��B̫U6�?[�$�8ݼ51pZ� �J����O��N!�Ah��$E_Wj�]�-�>�X�^o)���H���L\`8��釺FYu�QҲ������Z��-1f;-�H��Y���I� E:�C�R��0��A�T��':�.�����)���h����-���zz�*���:���w_~�<Pqq�.{������.ο\��V��w=�[W�b��cI��.��2����D���C��N�N���+l�r�������(��A���__�>ӏ�{y{qs����������*�?��{G����#W	���a��r)Eӊ�Z�I2ߝ��%��v]Xz���Տ9�� �X;OG��|��Q3�(�v��a�M-N��!L����۫~�r����������L�>��~��79�ß]�'��vH���١I�x׵4#�/�_�~�@��+u��[?k�Y�[4I�߁��:3���G���~��#R_�H?��0�7"�!�=c~%�+Ҩr	�x�72�!����=1
�Ɓ.?�����<l?��q�}�~�W8*�@%��D'�VnN���r�l�B����W~�SE���
'��1?�bׂh'^!܄�).T:��xd%&7�GZץ~��a�y�L��elM�$�$hB�k}*��WXSZ�鄖d@��ǣ�\8�I�c�cl�(Rٸp|3�֚�B����gZ�7E*�l�C�����ͭ������N������)fE2�Gů�޶V�jT�n��>jT<n;��d@��n�oNԨ��6��"
5*~�ծ��rP��Z�Z�/=*~�U64?�Q��i�y(R��i�x(R1��N�O�C�J�T㲴��j���K2��+C&��?}d3��ddolҗ3�k�j�D�m��>(��)��}93�H:��^���I't�O�x�!�$nr`�_q"��m�pcZ�C$��bs*`��C�Uh��0B�i�*�vQ��x䴊���`A�8�k�窂���>�tH66�2�C��3#�
����Z4*�!�c�E��Mt�Ή������!I���6��!>��"��&2�9�c���%L�Mdx�!��&���t@�I�+��tR0�g-��m�*L:vE/�o�#�yn�zq�Б�Ky�~'tĥv�Mt@����NJj�o- 	ʔ7�vB�ӭ�z�:�͐�b�s
�7�uB�Y��T�T��Qͅ:�7�tJ�"��&B�Uy�C	1ԾƯ9a����Y�ጤ��Et����plLF�J��,�ni��&2�Q�=�~�5Ч��#)�b]*m�gڜhRiS����d@�J;:tP�EТ�Ƀz�FՂ�Pސ�R@ss2�Cy��Jj�F1n":�7�l�O�ɰ
:�7r���I���UС��n����Z��VZ���k�Rx������~6�L����5m�!h�c�>o�Yq|�7�0VA���p�d���UP���W�U|�Ȁ�獕*�`n��}�ئ�K��uF�2�j?��"��o��5F�¢�V�fcT����J�n�쭰�^���[���w�X?�ݱ+��p����f �K��K�Z� �%n��n�f��(,iO�V�9�I����
�Q`��������`�*��FZ��$@O�{��r�SU�Cyˑ�K^p�cPz�"����?�&n��n_�a�!����Ǡ��m@�����~��0�Z�N �ZS�%�Rq��߀&���5C,���.�nM	���!�:K����N�����jAԠ�)He�\F�#�]A��L�� T��k��__(Wik���t@��{���,�Ⱦ]*����""����S�����e�����0���CE� I���M_�J����-bnȾ%(�bķ�v	wP|r�Ej�l�qh:q�In������:��wvgӷ��V����2�7��(�LކcWU�������[�'nñ�9�wY\M隓�'n#Qv�!��-(;q���oA��;BV~�L����[�_��|l)�^�T���c�����Oc��t���Z�1���p0�o�����1wϩ��{7㕸����@�B�g��}��f��Ic��M뷣�@�\���!�1d�j}4Q���Ӛ
hqÈn]���p��|� C�5���W�.�L��=*ni/У�f��UWzT�+ҞР�F�	��Qd�)j	
T�'Һ��pf��K��OР��օՄ2�W�(�Z����Aķ��&�/o���ӓ�F��!�u?A�xiw�����T�BYL*.�(S��кE��f��ED5���Ц�) d\Zk��*�B�k��3��x��[_��* �\󻛡S��?ڗ�g�Ti���IZ�D3Ԫ�ad�dq �&J�W�=#�IMTB�W�]#�/Ҹi�)(Vq߈jݻKH.^�7��w����6�д��d@�:y9Kc(�k�Knپ>��������o�C�2���qCN�ߞ4��7nqj�d��"���`I����o���%�L�o������<��]֎Ĺ���]r������o4z�(p8�܅��}�d"���q2~>��j���ϔy���|��"8���v�Q���zPu���nz�7��ۯ�-�*�6�;�~�m0>�C���۠���~�ÜnЪ7� �ӽ���n)�o��E_�H�S�6����A�.�au��[JL짛">��s�e<l�-mө7���L5n���v�ZJ{��h�lҦ�l��.u��R��H��t��}��[J���6��~.s�{M۳�R
��=�5\ʾuw�[J,�եk�T�D4�J�RCO��8ΞK�	��v�+iw���!%�N-����MÃ��d{�7G�e�VlO�s J�?�Oq9���-5T��*g�K>s��2T��Z"�r2;����Q�[�$�Y�i�v`u��dTu�I4�R�Q��#Rh��.��D�떚���Q�5��[t�C��N��ڟZ�J����n�cJt�����c]'/vKmU�`h��	}�A�ZwI���tY���ƴ0/#|�9=� ˚>���ld[������s���r9��I�G��K���n�tzI�W��R-.�#���B*"�vzI�׈��8���r5�R;y���Tp��c�T;*'F\q�p���%ж"P0�(���\�֭�G9X���[e�1N��-��V�;m0K]�5��QNfb�W�.tG�vb�����X�x����FqԤ�h1<0-�B��K�ɍ�a��X����S;����*}�H��T-5bK���0UK��/�}�j�����k�A�Ű�vf��\��>�VX�I7�!��oM��(�E28�'�O!`KkB�#)�Aߊ�h�e���V�I+�!�ˠo��9�ʌ
�	�<������V�+j��E6�{z۹�AԝY�Ch�q-�Hl�x4�YX�y���9IyY�ڧ�1X�%̆Z3������J}c0�K0�b/)�Mo����,�jg�L���a���/,�UTv�|����}��}Z�3h�%��6�CE��"�=��>��F���$9��Ǫ��i�d�<�%��6���c{]����:��Zis�Y�O6<3g��i� Jڜ���ܸ�k��x�Qڜ����Ñ�u�;����H�ɔ��:z�6Wi	�ͦ%.����T��%x�FYd�}�MÿZB�i$�"�H6]��+a� �s4"e��a�dcp��4u3�3��Ѷo�'�P����,pw��&�*:c*T�qM�Y�+�TTVՇ��_Po��M���l���3|�5�r�Am��Ry�H������_X�K�{�V}������F����V�;6OH;��b�0K�<U8|:ð,��<?i��m��{6ߜ�A�/A�T);i��K(?Ջ#��kI��^B�����7ʄOn��/�<�:мKӗ�LC"�b�f/3���Pdi���:	P�Ks��+�P�KS�[*�**׭�|h�	��4��ޓ ���}rpˌm���.HU����`�P��&��r\F��yj�}n���e�D�$�o�O���5�<�h5�7�h��_Z]��	��    �m"0Kӭ�(Ir�ޒl��civ=X�]��7�W���y��r�$����k`��Fk׉�"�h�����,��%� �~�&0�[KH�uZ�DbU��e`��fb7q���w�7Kc��]�G"ji�v���}��ByfN��}0DK3��e	�J}�3sߵ�C�ԟ~�Aۛ����&��fҤ=A��;��wn��է�󛁑�<K����~BѤ�QN��t-,�Ҙ�QZ�)�bn�&3�4�F����FےK0K����d�G��n�%>�OAь��T�`	� >��)UzU�����={(ڦfl��_B驾�q���^�N n���is��2�t�5u�`Z
�mt�Zm����}E�!#x�QE����h��O�^�&~�x�Zu!!/�$�[+x�38B��ė1�������L�i�uk��KNJ>͋$'5;(��Ꮙ�3w|�O�;�+9j���x��x�}%�w0]rd	�kIa���W����<P�����W�C쀠��@I� ��p;�����XxI��;�Y-�\T�D�0顇�[@ ��pQÑ$�c��ᶀ�m	ޢ�Γ\��s�- �[m!{��)�$x�k�/h<� ����1V�����%*���js�-�2�A�P����0,�{�q^�A��e-�`��0*s����a���k0<D�=��$���5(U�P�w�hl`MI���‶�gנ~h�k���<�,v�ƠK !u_l;XSae���-�*��x����H��s�e�"�p1R���s.� ���-����$���{�a^��`���u�s�0�K�uQ��И�pw��S�0�e����)�@/�l0<�Ѧ�#��XF5�$(��D���E5�x,��r.�ST���{9d��,.�HTs����6o	��QV|�`Ж��Y�c�/���B5�z$�%�%��*}G��	Ff	��J���'}4�p�����d��~,�T�w$�`>�Z��ǡ�c�1�j~��^��R{}�Gr̇|�
XDԵPl؊�l��D�Js�� ,=��?`ط%؀Z��jJ��׽;�X�`;M��zB9�A�Ұ���pP����a����� �1Deu�h2�a�~�2ee �4��H�&ÓX1��''��Q����'�7��},�v�Lx����_ \;'�GJP�[��=(hM�����i����wG�ՄQ���r������� ]C��5�3�F�b|H�Ћ�t�f��քaf�lM��֤a��l'�"j�p��\�;��M��t���r��t/�s�.���I�:��r	� G��%��q.��a`<�|X��Y���Wpa<��C����E����9\~pkn��0��y�]	,�a�
]�����%�,cc��.px\l>w�����;���xܼ�]�ܯb��t�s���C�D��@�D��v�R��X�x2P/���!�0,I]b��0��kr�8�	�g��8g����7,�]���G� ��x������2�b>�Vh���~�w��.˂��C�Y^��q��e��+��/sD�<��e�ǉ۬�p7��ZI�	�2�7��@*C�X#l��`���/D7�覔�H���Us��7� �l�B͊p
Y��͑��X#DAsD�<V���Bq�	��Y�JqB	��Y�P�P�,h����pVD�W��$�$�bE��pE� 
���p�`J4+p-wY`�E�c�Y�k�&�M�����.ZI`����5Ѭ��\I`��ѭ�9Ѭ��\CI� �G��!�ȵ\I`����eH�eyp.lT�V��x���$X�R(A"K)�{E)��r/��H�/�Y���Lk�w�8jZ��8�wֿ�$�X����&�И�{X3�r��1������&R�J~��v���q��$Ir�Ǌ�5qD�I#hMQw$VK�Dа�'�:�S,�������(zuPޏ���H^io�H�c`��x�xܲ�h��熲��P�XnY��Bba�-+�V�1X#��0��o-,���[n���[V��\��e[�5�V��\A`e�G�F9`���5�^��X9`i�r䀥��5���.�@Xڻ\���)��|��|<�w���F��@XV�\��a�1�58V�\����.����/����|�r� 	债*�P��1	�Zy��b�埗k �p�r�J �k �8�\9`���+\���r���+��&OϬ?\���o���V�޿��|~q��隻"�v���VِU��j�����ֲ��?a���\w�T��p?�L��+.�
���"W�������%��@!��.�z (�@E��5P��r�k�S����-�@E����5�sJ��aZ�^�X��Fx�0���Q�qX#<�	�z�(��α2�E� *߱2���+�Z���w�j���Q8��\c�����g�ʠ�kp��j�g�J��k�p�\9`�O�5�V��\9`�O�$9�29H���� )*L��AR8SV��\�3e�(�58SV��\�3e�(�58SV��\�3e%)�5��JƔkp>�\L��*�d�4i�)+S������X�3e��58SVz�\�3e��58S^I���{�K���5�^r�X9`%w�5�� {�MTB�JC�k���U�\������+Q������+Q���u�4D�r LC$�_'LC$�_'LC$�_'LC$�_'LC$KŤ24��:a"��:a"��:a"��:a"��:a"9ȁ0�`�/63�k �جX9��f��/6+�PU1�o��/6+�@x����y�jf{\���4�iE�$���I�&/C ��8܃���Ē�h*��������ӳgSem�V�N�~�G��{�g�s��y^I�J����b��<� �\:�*H,�Ď�֤γ
�5�6�r{��7VAb�Fw�W�X�1���#k �r�r�U�X�����5�V9�c�QB��YՈ����X9`#k"���Z�B�J��k �TZ�r�+F,�@xň��+�V���Ri��+�V���Ri��+�V�2<+�V��F*a�P��Ri��+�V���Ri��+�V���*�5T_
���/��ru�������oW_�|w���_���q��m��Os�*M��D�C�/�OTt
�'Z��}�g��S(@�rc���P��Q�f*Ju½G���b��-��r��Yo�k4���y�uzxb�T����*������y!�Sq|�=/e`q���>�_�9_O�[�A8~��z�����r����_r�
em��~*�m_D0�^n��T���W!4��L�͋3h,I�_%\���JP��� ����#���Ja��Қ�����N�q�/Ԑ��+�?^�\~��|����3}�Ճ��&|[���������O��Og꙯}z�����:W���;1�Lm�*ǜi����~�,����7��>S�Nϣ���E�{4������9tF&����{Ӊ��T"w^�q�z��=����]��>�*�cq�s���V�&���'@�&�pM" �L  �5!��h��1 \c	@���p�' �@@ �5�� �k!��.K� �\��ly�ʁ72"ϳ�W���Ĥ� �Kp��E~@Q.
��pQ`��Ҁ� \� ٢�$�"= )�IA��H
�En�R.���pQ���… \�8�<�)���Fp�7� 9�p+�-\���M��qD��4C*��<���`)��Wt�!�xd~ͥ�>�#�nr�N'���{ޱ�������}��U�	���o�=
M&�n�D�i@���t�+�k2Bq�H|��n�eꅛ%�M/��p�$������V�9�v ��jh>���<�����̸ް��̋i(�|O(n&�)nB�x��s
�?���NB��C1s=��Bg�b��&J�h=3���ċ�8����u��P�i^H�܄������&ԂP�=���2�˜]Ȩ�/\nB}gx)��&4t���hG(>ϋ�v��F��2��B�Y�C�Ah#��N��    \5��XP�},hE)�6=���jP���2��2�����]'nF��ư)-y
��K�q����ا�SA)�/w؎R��Z]R
��Y9�����G|�]�^��Q���lz�H����"AB-�
\�V��@l�溪5.��ʚ��/ �߅�����^?
�+�sH����<�T��y�ѩP9�hgE(�����7Ӭ��lx���|��T(,�L��^�A�c���L8��X��8+Ӧr�w�����O']Zà̟i�P|������Yǌʜ7��P= 3mX$��X��j9���е���d��t|43��L.H�N��4����D� �	Wi��ݮN�g���E2��R��gU�{�u�
���-K���dc�&K�8X+������LE��s�.>����~��V`{������J�c9~8��x?\w���3��p�fi4hv:�4�<U&�i���O�iC��B��Bt6�i:�rSC��l����u}�g����j
�hv�����SX}~��y�8��OO��+urǤ�F�-�ͳ4S��`7' ���v��p����F�!������%�Q�#SN�k�2�Mv�%��0�~��9&���5��M8:�4�pA��	�Ȅ[�0�]J���Ȅ��������>��b���u��î8݇���x9�ui4t�o&����02rU�#ލ�����σ�����|uqv������돗_n~?��&�KO�=U��y�i��QO1��\u�j�:X�0�^l�~�������,�������u�%�Ԏ�z)%{��*�$��aW4�и.�4.��|�{A���K��R5i��QO1��|��H�}�A�J�M�$�����g���E��I����on6��h2J�b{<g��s������ׯ��j Ïd��@V�O�����xVG�Ý�\��8ҲqGP��A���g�|vǪEo $��<l�O�)$��� �Q��M(�C��B���m�/�m$ڑ��$�.���ILQo#я�<%wk��C~�wy��Ƒ�9��m��J-�n�����}摐''AH���[���v�~q�X�@!ݸVZ%e�QhGB�RH�ASe��B?�B�ol��z�)Ǒ����۴�v�,�qK�[g�Z���f6;J���˗:c�;���?�j�w�.s\���x���j>i7���AS�'7ј}h�'B����82��Wc�������$��ȃo,Wv&V/N�朂M����{Ҭ�"�je5,�Z�T��<	��^A�̸� ���O#Z�.��H�T_�R���".8aG'3�|q��;�8M�U����Ӵ����o��.���I����(3c�33;���L�r\pV� �c�⺟C�\��'�-���P���9��ǌ�DW�c�Dp���*��OS�<��}�Y�;Yu���d3���6�5)��q�tz��������f���A������)���ď�Sv&��ľ~�AHkSz喧��{����~��O|Ш&��2��ܔiO'U���q���o��۴�^@X���9y��,��FV��t�����A
�����rޛ��uϽ2-|�gwA�ԧ��壈�>m�[>��B������$�밓U.�8X�������5��X��﹡��s��YW�$K}/��2���nj�&]�<�O�g�����v�v��ݮ�~�#7y�>��q��~�c��ţ��������bZx`����.�ӌ��)��Ph����{J�����_?|��L~����Y쿿���˛�$�(��YG�K= 3�v�v4dQ�z֓m3k��Q���p�.�����/�۝�ޜ�
�hu���ǳ���=_<��"���Қ-w9��G ?Z$s��=�*�7Q�¯O[Z$|����Z��'�1r�J�'�N�epd�>��\�PPw�W�*�e�>��\Tt<�;d58����d}�w�pd��;�����rk�r�;d����
[�|�w��n��>��U�T/\[ݤ��?aIl-,ǼDpquw^��?8�K/W7�r�\"c�d��%������	K�S��	ۋ�D�ru/��ϢZK
��/��������Pѝ�rpou�V��)��5C>�n��έPs�F����m2�3iQ�$m��Ta��=*�
��w��
��i�v�0\/�ӹ��M�D�Lm��I��^Gx˦��<��hߚ/G2gp�M'�i��O����U�%#�
ç�z�&.�˜tѫ�1G8��4q���|l�Lt���ȑc0�ia<}���p�U�w#[֝@)�F��l��1r����	j��.W	��1�9��Mb�y��֙�#��4r�8�'K��9�I�}��F��;�R%����w��6y�x�G��[�^�&
f��q�6�6ylyb�i:D��9�a�m�7�'���B���b_sK��m?9��G�}id�Q�F�6	���h{��(��%�`${�$2~�57�GTDьlYw�}� M*in�?|%����~�Nο\�������i
]�{8B���d�ۄ���>��F���u$��$���i���0���'��$��N�T/��-N�ԍ������GUCI��9�1$�~�$������9r���&1�ӗ�'�>�J��F�l�С�L0ŮI>��sᤓQ)��9�)�$�����)g�un�M8�J#G��~X�ճB�[�p�QV#[֜Aya��77��7���ï�9�,��1G8��M���D�����ȑ#�p�x�8낟�B�sg];���3�ۤh���?&�����H	ĸ�iX��󜱧��Twu�������9�\�'�t&עE �Mt��|�.ErQ;ƛ�ڙ��]��6y�q��&Sm)�ou�٪�Z˝t�����"܏�$�fN^�&��p�<�Ƿw>���u���@���m�c�������w�Fᒯ�6��ʤ��F�S�>q�e�����N8���ş�l�7?di��y)�n�0�Y�z�VIb�����{SZ��'�T����۫~�r���+���і"�9&hAէ��d��t�SҺ����	��Ҥ#�J��<�5�:�+����ax�?��Ω��䲮M眕�ەN\���O��9��d�	$ ޳uZ�?^h�
z.1�Y-Q�#y��lId����OR�q*����7)���U��G<��:�L�ݍ��C^������HF�!���� Vh�ی(l7���H�$FC`Z$/S��X3���ϘE�������Փ�$���ϫ]�M�L�ur�E�K����K�� x}Z�@h�0�pAP�FI�+|~��*5�>�5g2��m��p*c��.��Z���3�<��kU�v�T��?o���)s)ń1q'x��w�8e��v�t�Gz7dgS�ӯ��q�6�J���U��I��#��veh����q~P����c�hbծ&�&�cz �&�I�A�ަ���q���K���4H(k���v�iW^�$���/UZ�e���@��
������F ����ն����wK<𦇟�7�S�<�Hfy;�V;���+��#4b?��ְu�_��)X?��Cˎ�IȐōI�PеB!D-�����L�9A�s�!xK�Hu���t��@�Θl]N��u�I�]�4G�!K�a,�_)J��$N��>�ƙ9�Ŏ'���*Rr�Mҗ�Ҹ鞦�d������>��i��G$?��:a�*��F 6\�!4��*��ԙ� �R����})q��&�H~y�������B׻�-7��	/:ã�2V;K��ˉQ�w��r')�����t�q!Z�\�j�gm(���o�\�p�b�y��Dh���J��n*�n�S�1�,��/���4v4��1�.�\!�O1z��S����a�8h/W,��e��j"�vQ �A���<������p�WG'�AE�2�J�����]!���)���s��J�8�AJ�{b��xj��<�r��������g�|y����7W����>��ms�G��"��]&���f'��'�� �l���B�}'k%��Td����Y�����Q%2eHq2�ځ�6��1YN�zE�B�����kkM2��� a��9Z��5\�df�f    w7uE1%��쵝�R5JK�2�Ô��d�=TB]V�i(�@�N]np��ʉ����O'm��$�043d:*Y����q,v'NZEx���3� U�qRg�9,+�"|��39�NQy�#b��5�?)I�!�Z�9���b����VK���L8��)j��� �kR����S|��̳H��#~��o���_
�*&����Υ�z�U.�:�F�X��<9�����?>���蔶�P��ȟ�=i��=��Z������_��o/�8�����*0/R�~�m"P�"KM���Q�j'��~y�M=���d�i]KG�S�%�.�^���X�+�;�C+(Oۭ�ﺸz
`Y��(,�>���~Ҙrv{���������_/�\ߜ}>�����9;�t���{��I2�E"?P�B���r��|�?'o��jg!N��!r��Z��	�7.`D�l2��~��a��ԝ��*�u�6lV>%|]�>З�Ϸ�Rjq�+�[wKidOnP���ތ*�8��2�)vq9�I�br��:7�ǃճ�	����h/�	�p�8.)�{.�%�����)�4=�L��F\�m�J������cW���¹�-�YUХ`3��Ћ�� �@�Zn�����[CJc���G�� ��u1Ze�������"0�W���y\�-��%��J���G��@������AL����040?Sۓ�%���b�J�jRҾ�S�����#�����	v.��{��=��sq�8�ק[<��A��8��25Hp��l=�2H�a &Ԩ�V>8�$���QfZ֌'��H춸ӗ� �i����J���R4�-�S�%\��a����E��EϝEh{��o�[����Ѽ�\�W`��\߄U��sJ�SksSSNe��ye�����	����U�Z�������_7�,�z\=c�l�~"Wn�U�y�kAļ�l��/��\2�`�ڰj�*��s�Z4��^��^��*�>Q�"��kc���2̓�̂s��l��xzir�/B��x���^O��u�B��/��p4t0�i5��~a��/���	t��[���z'|�kg("ݠʥ��I������8U.۔�e�*�S�u���Tw=?<�(�V��K�����_������f7�|�I�����w�������'\�x9A٥����
�p~�әǱ��o�����ǫ[�����?��~@}�Fj���BH������i���5I�jH=/,��f��_x����f�a�lf�L2)�i�z锵�"�aD��-�Z>�� ��T.Ӫ��R,���"�Ke$a�T6ӗ��&s)ͭ�I���h��
���Bڅ.�Wa�����RH|ݲ� dS���<"�1M`�ؐ��9�!Z�"�7G��X��N���W/�v��-�i[�s����"VoE{7��DO����3~>�.C��B�ز�*�{���?��6��]ٲ�_z�2�pʴHH��7��AV+j%`�%�˶�0�Λ��+?xD��E�4۔���'t�%�����s_5�4�oٓ�^{qCD�jZL�M*�f�O��z����6�����2~.���EL8��iME�z��7����^��:����&��l����H��4���ijU_h-OR�v�x�V����Nz���q��\�ߣ�A��	�N����|
�4(7:�2����nfZ~gK�kt���w�6�WB��N!��]u
4��ky��M�ӛ����k�E�U���1d=�wU��!]�)�ҠC!s
<��nW�nx����"�:����eh6���a�Ͽ�C�^����٤�m����A���}��Sp@rw��*�;�Y��_�x����!��X}o���澆��qntj�܍��W�0�cWr������M�=��*'w
���v����ŏ7�W�v��A�������0�[Tx���9�����	�Ԛ����_�o�W���8�r�����$k��K���J��9OA��]��4
4�p�\<"��x���	%�l9�w���[d��k��x
����V����>�sw�OV~F�Ա�}է��}�Rj�8��3X��2d�e��Z�a�]2�,�}�b����+.�q%�\�2ʭ0)J˵(6H3�&�qsï}Fi�W�
G�Nnfb$��G�J�⡲Z�p��6�𬅦tM�P����УӐ6�����kMI�!�]k�/��
�_�)��~ކ��u"������mCI�a]l�o푾�J�G:�E�ƴnC�S�l6�B�w�J��;=|����HoG;�9�S����R�ȕ�V���FBD
u{�V��Euqج��Wz�[�͊CM%i���	�͵h�|2�Ü�N�m��t~��G�����8,���c��
B�`�A��G���_KP`��:.S9y e{g��Q��|��a=)��w��vv�ɟ��c�ib�&�I�x���Р�I`��+����?�P,�o��g�^�&�Q�� Ʌ�A~�]ꍺ�ϰ�W$bmzP
�~�[�Wôt[�c�fV��jP�ꡅ��*�x�'�� 1/C�����^��r�	��o���!̴�~c�"���s��o�<�LA�|��ߗ�*Z�����wO�3���w�./�?����ށ����1�>*׸%�����P�)�aa�)�����n���u��ZU�HE��U����z�7*w�����ӻ۫��C`�ѭD|�w���~>�����d�of4�������:���#�ܻ�+�c����t�2W����r}�5�ƞ�9�������������~�D�R�����_�:�/x����\\����� 2��SW�z�jXӪ~:"�&T�m�`�+�7麷g��.�԰���|@�?�ߣm��?��j]���1O'R��e�G3v�����Yb��#E�dz;�2��r��]Dj7���`=|�װYh�������|R���}�Ipd\�k��+U����7�Aی���)$l/~곆�|��uG�uA�u�*��Y:�	���R��<ا���6XGG%W���>��V���9o��.ɴ3�4B�,��2�8Ɗ��߳���������=�o�׺]��ٙ���U�N�z.�|K�:T{�`*�b3V}P5��7w�&�^��i� ��X���A��F�z��]�]]���"�n{�J�^A�0�����W'ӯ�V��N�:z�����{�-��ck������1a��M:|�b�PT~���t4�G�MOF�������R���E�X/u����{ٍײp�a/� 6@#�q���Ϋ.���h7�CǺ�:Vk{�w�:.[�b�e��6�.�oxq��с�=P�|>��B<|���)�9�L�P�r�^����P�GǏ5	���:CfT]|�h�0*�bM[��Wƚ�`����&1g�ʳ�K?�<�;��K�hZ�KӴ��7���꩛�b���ΨZn��y;|~_OALV�:C�Srr�i��sy��L�T�P
�Ix3غԡ��0R�t�ɼ�T����v]F���� s)
��\��L�eX��j�z��˫/?~����5�*��oP�:kNUy��UnPb2�⩘�P�&���}`����m�z,�����|>��cS�K��ĨX-�'&{����J�	4�>h't'lKj/Rd�"Xa���\m�k��L��S՞�r������U'}xU6 ��_�*s4��o���E��Woa��E��2��k�����u�Q��a�֘���Y���v��^�B��:�'�lV#Eq5�*F�#���p
.ch�*�k���ҳa�Qq�T,�9zŽSi������O����_+�y���*C��UӀ���_ܯk]����qa�d�Kr��&oֱW'�{�գ��6u.���Gy��3���(Y�~^ch*�gI"�s
d-��N���3+�m'���r���87���s�O��\GȤA��%���R�"�핝q�\�{��i"s�%n�D��_�/7[���em��2��&�JE���E�&W$)���im�u�8�ا���U�φMu�v�6m)L�R�սF_Z��\��X�̿_������ӎ�ze�>)]O��T��%�v8�m*ɠU���J��M܌��<Z vU�:�^���ư�族.�'�O� �  �0�5=�XMǒ&�����U��LT��y�U��&M���-�R�]?����_y`F��aS].6V�1�^�#3Btfޡ:��5����W7ȴ�K-MUf�[�	�:l*+1N�k\%[���n|���iP��S�;fz�i�TOSbo��_�P������K0�A\g�(�U*����ɥ7S�za45/u�h����'��B�}�'y�<��f�O�o{�0�J].I���4%�0�c�����+=q���Ux�������p�N ��!� �>��DI�F	�>���4ϊI�&�����yRe���c���j/A^O��!7��ݾ� ��M�����ch�0寛5@5)p���M�U��6N�:�,�[g��x#�;ZO^�D��ܶd�}otc�N%Q|���i!����ں�5I�7v���=����5M�!�'V�P�D�|�PL?`����?c��>�X�-��q/���l�u;�4�!6x�3��?��a̮Π��	�z��W�Z��G%����Qu�	k�RF�oO.ơ	����R)���iEl�n�?���j���?A��Q�A�N�!�{b���|�Ć
6���6� V�z��yxLi{�u�9����H0!�֛�|�Ji��L��gG/5r��9A�G/�p�B8��'���ګN��!������ӓ{B��-̽�C���v{�[�{s�a��&�޹�y�������U�}n`��	Fw���t�==�'`��"����U,$�%�"��O��%��7��L<9HG�,v����'�%�ͷ��?��{l�����	n>`�\�ɰn�t�d��s��R#Hm�X�@j�۽'{�f����I�'5+��t��	�K��_�&������-=lkKÚ2v�&l�n��(��Xi�mm`e ������-����s1e��?7����-��3��o�h��Jn�q�� ��;{�"�J�nX3�`*/�ṻ����y�Ӻ3�C6ilb#}�#*Mz��:��iW��aQ/G�=�R���+���L�Z�x�����w���$�ہ�4�X�ɚ���f��怚��������dILF���|�%�#O���m�x�l�ߏ��Uhy z�#�֐U���wg���O����ۋ�O��g�o���<�xuqs}{q�����F���4ғGy����ϟ.o�$bл�?��4��}ŹwO���8������-��槳���o� D������������H�&��`�\�9���_MƲ�<�ح�	�}
<�17-��gbr�,�K6��&<|;�e���͚\����$�"�E��l�7����@D��Xn�R\�(.��b�+"��*�L�	����]�N@��_�i�ŘMmS�}]Hm2-�
s����3f��&M��&����-+4]�$U�i:C��ERd�n�f���?�d��}�VhC��A���ɡ��C"�� ��Sf	y--B���1�4xB�S��y�ߖ�N�'V�<Y�������b[�3�5��7>�N�=D�z0�� 
:eg��-�������<���{.i��a�e���*/�~GyY��s-߳F��k�M���N�R�k�-��٣i:a����A�l�������x��9�M��{gRV�9s�Ć#_�E|8+qJ'�1un�ɖ� ��Yt~ e���
�V�K���d������:섭�#O�E,?��)��9x
�E�<��	�ī�%���jI���z ��h9#�Z$f�b<eq�#O^������ ��;F���!�]pM*�g�����ŵ��>e��kr-療�̓4�d�sf{�F�����y,-b�Y�g�d���	�N-⟙�ĝ��'�r���j_�n�����~�z�����O��l���ȭ�����.z����I�W��o_��������.�~�9�W��۫OW�/?]\���ۛ�|O ϴ������^�\�]����������'���~�ᗫ��g��?������7_�~s}v��-N�l �3���ˏ�������o����c�����g��X}������g���%!`.��z~{������X�z���fX�kރ��i�_������3��~���̨���~d3|Bߠ�م�u���M����7q�C,	* �eD��;fq:��4�&2���-�(�=� ��'���hT[��Q�z��dE]����kf�C�hZ�TI��zE�+�=�3ݼyUW�l�xEk�)���K��^Q����d���V\QUa̯W����A5@sK�uY�4�e�D�^�\�����kf[�����\�_]�%�Q� s0�WuE	��o�yQM��-	Z�����ơ�4�jE|EɁڌ���ng8��v&������U�O8��|l�BArB�ߴ�3N|-�D0�~�P�ܺJ�1��o�tf�g
vj���%�]s�f���͊��9Q�ZZ<����n���rn\���IJ�WuJa�ʖ���s��8�G#���`��:&x�A"��Wŕ<pe��q�����@���H�"h������_/'4L˸\���2���Jvd�64���ה�	����gqs�=���V|s�����ʯ��8��B��ixM�R ��-i���sq�@���x*Oݜ�����a��	�)��6"��v�` te�#�9�"�9���_/Nqq_�E��k�816�kۅ����_e��B1��!��������#^�Ԇ5��y)}�@�C_+�4�\I������������-·���x)pd�_�|܊��pq��q�t!F�^�M�$�w� �o���#x<\��+t�x�&����ݕ��~�Hw7����b�v�s/���M���мCދH-��{Qq�������(_˽ ���U���� �p�#��7X%��H�?羚{avl��a��0�Cۋ���ظ��ܼ�{vl���¹q Gj.���<V�f~���kܞ����܋<�cý��<��Gi�
�B�<5O����+�������JUbl��Nh�QZ��{%�T	���_ܽ�S��7���0�6�      B      x�m�m��Dg-��������"v")�L׌�)P����?����G�+�����\�}ٞ˺/�s���x.�����}9��<�s_��R�eN�����\����Q�rE�44l@G�4n�D��7`р�ؓ-��mJ�������c�ie0 ��U���t��� ��S�K��]2>㯢��%0vZk���,Ag&KП�ti1��Sw��Z1��C���U��_k��j�a��&�d|J�e�Mvحy|��_���N���=f�`���=	�r��y�^O����g����0m�ͦiC��6�-��f#�6��V��\��`}�<��� JB��zW���o�O�O�B�=�É�Ϥ���&�\v�|�>����YV��}��,"��3��5����������4qL`��sg�|z����f�ج���c��ilV&�fe�ؼ�J�fe�ج:������^{u\��q�W��^{u\���e9�Bn�*���2Z-Z1vc��Ø~�4�(����S!&�~^���j0j�AO�/���C�3����NH��OW�>�|e.��iI�(_��K��&��J�:]�1<�7�
�g�P�xJ�]UB�n�)�w�N����1�q{\QH�.��=z�x�1�`~{��#B�
��_�
�g����h({�r�L>�z�^�_�9y6�0f���<G��3g�����N������e�����[��	�`6{ Ĭ �GR����Gr��#%@DF5@�H4~}$؉gDB�x$8#x�c�?���������/�3�l���2h�6�9�0f��(F�J�b��#-�U"��U#E��"��#�5"E�:#��"j��V�&�I�8�ZHխ=S�q���\!|q}q�1f�Tb%�����bS	^���J�����⻒E�-T��M%���TB�=V�l+�/6�P�*�`����R��+Wb�\���b�*����Ⱦ�_g]�p)���W���f1�n�Ί��E1T���O����$WQk�{�TC�\���K� �Y0U���rDL�3b����r���[�L`��u��PyV7fsC��V-�b�E��W����C�F@��@��k���h�z�1��c��T���i`�
hy�(5j'Gw��fx�"�F]�Z����u9k1.N����7F���:��QW�C��W-��U6ƋQecN(�l�E���!U����&`qX3WTC��ҝy#�W=C�f`��EֱK���Z������=S���?@)R���?�Fn�8O��Gz�Z�Y8�����P��<C���5��3�,��P�x<C���5��j�g�<�3�,��P��<C���\U7窃��爇s��ӹ�`q�:x9W)��\upv�:�8W\��n�Uw窃�U9}���~q1����|r[��=`�=���8�&���<��&n�Ƀ�k�`��K��;�v*��T>�*�����ZA�G����᩸9,���K�'��ᬘ"�4F���a��#t�bz��U�=7��	[�8|J3����;�Y�n�XJgr'�s{a��r# ��u��u
��ut]�և2�a��|����j�K��ڗR+|��Rj�@�m���2��6f��6&�-e�3k�h�	aGq�����Ƥ����@�mJ�L�m�p$hcx A_��1��Si~�kh��=�Z�ڬ�ֿ���C���򔭷���v���[�i~�k`#JM�6S�;&M�����PSô^?T��7�����2�Qz��XFG�]�xǤ��>��О�cj�55���8&�;��9$Pٴ[�62����²Ჰ~4�aiS�-�J��Ci�Te1�}S�j^,�iN,CiN,@+��4'�mKsb�h��#�0�^���Fh=�G�<#^��n	xE��*C�p~�\2T�2T��1\=`�F�4pFL�D��~�l-�Pفs���.O�� G����*i����JZ"Ӓ1,a����k�5�*;ص�(�V��ҦT,�J��cӒ,���mZ��7F�)O"����bJC�k��)�~�]!`(Ԝ����jC�f�-��1Tj^�b��İ�P�V�L�if�b(�\��X̤���8���c�$`,
R��[r=�*�u�P��*���1�1��`�L�1U�/��`���0�g�<�q��V⎂�myE1�cu�F1�Cu'r�H����<R��qrp�q~q�qy�qu���B��P��#Խ15�h}6�7�H�r����r<��1ݟ#�һ|��&Y���L����� �s����Y��b��B�e�>x&[������T9��:N&UJ�T�"���9,��^��R�^S��S*5�c1T��`�Q�1�s����6摮1��1�af�PY�i-m�i���cn���Q'�Q'�����ܳ���9`���)���k��4��K��win6�Xz�KS����,���R<�*wzWO= �/���AW��ᦸ8�W����0=��	;ħ����U�R<liN�kiN��g}�����tU��n�Ҝ��ӌx�7�1�VL��Y��c�}�X/���<dqc�!�g��a�l��R�&�=
��}�C�o�*u|�#�I�˅K~��Yzo3��{�q����W���t�]�*'��s��a/0UʅE1U�/Ŝ��KR��+_8o���rᢘ�W�pU����=�d�3F0�qϘ�@>C��P9V4�SL��Pm�c��8��rVk 1T�f$��٭��ܫ�@b�Ok 1TN�
0'�1.$Ẻ4[9��}�D���5b��f�C��RF��|u}I�=}�*eE����c��^�3�Y%b�\�v1J���r���r�i�P�f��7��yn�V�s'4E��\����[S�3}�ϥ�Dx|.��(�nQ�b{����q�A�s�"`����y���1T�1T�f{�*s��[�#b����<1�H�P���^�F��}����H<_"��Rm�/`�,-b�,=b��y���A4����3�1�ì���������S����ܞ���[�PY�	���PYG�P��]��ʓ����"�J���J���>0�c`~����^�FE�P	���17�F�ܜ�Ce���������"�J��P=�O]=���t㩇!���/ާ!����ߋ���pQ��������M�p�O���S�8�t�DH�	���}>x�J`���ብ>iT�.9�Vmi=E	�.�D\R˹�l��ν�o=�mu��O�r�.�#����]�$�sA����.F���������%��V~i4��­ˤ��%;��3Uŭ��.�՗;�߹�-�s!=��0=��Gc��T+7W�3{6֏�P� 3��\F��|W{���ˇ��T{�.F����R#��۞����l�\��z��]:�&��z���<�~�����dh�w|�|�����Wʑ38�O��^�\/��^^��.�#�;������*�)o�C/�����<�6~p�şȩW~p�]�3L�'O�C��?8T��'o?#��w#�,+�+8���;ǡw�om�޵?�qz�g$Ϲ�&w�:�0^Z�nw��0�_F��;)���g�vg���=��1�`��g"���NF��x���{87���g���8΀��z��7ϋ��yU><oʧ�]�x>�/��o]��1�Wׂp腶�g�m3{�/*^�C/w�������PW^=���~�?7��sQ�_�}=����x�<�������<�C���/=B�?K��1�J��"��v�RK��5W}C(:+`~.�"f�G�D_T���D���KT���D���kT���F���kTɈ���A��+�K?���`.�z,ͥ��
�b.�f��\��p��b%\�X	W�9T��P	�Bݘ��+BU���r~7���$�?8ׄ��g���R��o��c	p.~�t|ے�\&.���U9���;F�����<\�r�+}O�sg/j�Om��Y�_��\t_ɲ9����7�$ˇ�P~*���R>gV��g���9�ǫ���E��]^�������]^�������]^/�x*���`ԏ/�C�����#��gE>���e �   �3��i�>���g�3����>��%�^�I���_������z��%�^�I���_�x��^>�U/�9~�.�U/W��FN�F�7�Q�J���j^�n0Ó~�`�'���,O�u�y����:VyO1h�V��Xn�c���xm7~��-���!�A�����y���[F�T>��n�7�\̍S�Z��f]���xc�7����қ��ߨ��v��������l#��      D   �  x��]�nG>����%6 �NW��tn���!��6Zb,�)P̮�����{߇��>M^`_a�z$�jfTV�C��������W�?�M���h��ի�|9�|M����������dz|9<���d�a�^�_�V�����d�����d�h}:�.�4���]�^��{˭���t1}�6�YB�'6�����bƝ�Nf��ߎ>��v��i�ܔ�=5�s2�~JL��e���t�g��C�JĴAlGL>���Dk7h����P�K\Z�J�n7�1Y�g���Z��o18^Fi�
-ۊ�r��u���#D�Y%�r��oQ&&�-�j��ϴ2�2���s�.���x�LF�m�u���5J���N38N�� A�� �����<��P���tf���$�2\���gf��f�������Ю�֢�lf�Og�&sI�*�$2��LF����23|.�.u�r�\jCB3�g4�[6�Ԑ!���I��4�)�]ʩ���ol�1Av��[Q��Ƴ��׆�oE�C�d���鍆Oo���E�>��7>�Ɋ"��VZ���x�񒈧����/^~3~7��Ƽ����O's�rl�A~P��NfǓջ�����xL��.�o�o����aÃfR_�� M�4$�����xy��}�NVq��0�
�E����"��4�A�!�4eb9�5���� �;�;Y�c!;X�8H�m����oip�a8��Ҳ�g� �fn-` j[�7�I3i��*�q��#.�d(�I\*S�ԅ8h!:�}DgWq�>�ip�����~����-Dh�'G�y������������:�3$�șBr5'����l�?~�OV��%�o�S�O�����@Z^��2�@bI��#	���RZȴ=�o!�}��L%�8&�� �}���sU�����G2�KNަN��e8����g�U����
i���w�8�i�$��5|��V����A��Cz γO��I�^��0'��å��Ml����M7"�u΁2����FGك�" �>�LX�,?���Ɂ��Q���-]�H4ㅙ��,�pt}#9�#ג�ca���s�@����@Q�	I0�'{ZG7��Z�7��|9W����ި��ز��H\/�ε��(	JJ�1�9r�dh�йҡ���t�-g������<W�fzH\��J��Bc�w}Ѭ >J>�#S��]Ɓ)��)V(���20��6P��RHH��Mw�Fm�Uh�e�Y<��D�q<�VR���I!��&�*:��
-�
������c�X(�(�S��*�O��6��R�m��%����R�I+tt��pw /�����W{Y�Y�^�J^���!K-!e(�4l,?cNW�^jY�K%�w��n%��Q1��Da���9���בj���R;��hW��,��$�}����9��x�I�0�4���vJf����{�+mz�Eo.���m+�<R�]�y��T��J�HI.��C���%�
(Y)))���0��y�M̬��S��\`g�y�f��&Os�Lvy��;0(���3�dy���旤z�7%������7��x�u�� {%�k	�q�^q�-�Ѐ�^I`Mt��}�����P�{%�ѡ���J��AY۵[-�U .gޣg�?�VOfg�����b6_~�,��7k0��2�)s�����jzu�<p��k�z9O�$���2�~��z�o6�7�vY�lV)2���2��1��[�I&&C�s��i�}w�Ȁ_������?9;M�g'�z�FӋ�t�8�,by
f
�6�2-���;�o�F���[����<�
>R$��9	`�������r�C�6�nO�.~=?�Ϧ+9�i��l2z2?��8}x0j�?�mӆ��:�+{_�(�A����I��ζZ�)?���SPPl�7�%�upH����3���0������?m����n{�=����v`�6s�0t8`xF�|�O�׳���D����n�ԛ-�?\p>��'����O^�z���������zL{����b�F�%2�=�)-a�1]�Pe	��iO�:K���F���<�=�*-a0�����/iDXBbQ{�UZB�G�4",��S����H���I�m���f�e�����tt8]O���㎌X�
�����'��{5%�?&ǫ��d=��Z��nP�#���z����+��n��*2�;��l�Ǝ�"���#��2{o��N��W8I�>{o��������<==�C�� ���F�%䙋�H��MLFBy�4",!�\LFB݂4",!W\LFB��4",�ﻘY��a	}<��q�2H#��x��y��Gy�4",���1>��iDXB�c|UҸ�%�)H#��x��B�F�%��"��Qb �K�wc|�҈��>^��8
�a	}���q<�F�%��2���`_�����s{iDXB/c|�l����x/�K��e���I�4�o	�եa	}���q</���K��U�g�A���!����g켆����T�l�ׯMㇳ�|v�\M�xKȫ��JK��v6(-!��v6(-!�|�y���v���%�o��JK�+��+�%�� ������n���.:� ��o��5ܱ�ݼ���:��C��} �}�;A�nģ���쫾Y�,�{ 㻹DH��r������5�7kH|N��>�˔\��b�����~�{m�r���[�u�nn*2|�n	�$�/�T�xv��-Nf��Ģ���ʊ����E&�k+���F��h,�6Ji���f�<�mK���3�h�d�K>�tk����,�4bʴ�o��X(q�s�w���kS^P�.��>�9��Ͽ̦�M��uF�a�Y������\�o�g�����VVs�Ti�G����P�;ǐ���w!W#�L��is5��C# W�/w� �j�W��2������{�ΊB2z�ҽ�=�]\,����f�����r��e�:=�Gg��t6��!��;BB�/IY�������7�n������5Y�,�nn��a���oGE�������ó����ًoG�V�W�.5~0*t�b�k9M�Zi2���&�b��H��̛����.�F�����=�;Ƙ�cܨ�DJI_���]��Y�I�C
FmR���9��"衰aF"�;Ca��G�7(�ٖ��v(l�lI�l�a_��
��LaCeٯ+/�>��וPeF����U#�u�T�������B�nu�<�F�:�ޗ����8����G���a��4)��Lr�G��22�����h�X�2��R^�ʹ�����,��*=��L=��ʽ�/>f'�ޓ	gk�u���g���Hr�ܥY�N�:ԍ�5)J%I[0J�Q��}�H���>�(F��(F;m5(-P�F�H=P��PZ���Ť(�/I[=J	��!��E2iLi�"�:��z��RŻ%J7�Cp��d���E2u�0�@�LڲTZ��M�H2�Γ���@Q�IzM=P$���(��Cĩ�d�V��mT�$�DI[dJ��!�TE�&ik3)��r�������e�U����e;4�W[&�F��Vf�E��j�6����eˆ�v�5P���*LZ��;$�j��%m�%%PT�RG�=P$��ʒ(��CF��d��T�E2u�<�@�L��IZ��/S�$�?I[!I�ԡUEQ(ik )��L�:d�z�H&m�#-P$��$*9I[�]j=�O����}�oB�%����� umS�ҁ=���z�^MN/OV� �}�8�-?^˺^�7>~{��2���F�6բ؍`��7�_��{+:Ӭ���P���9��|6]�O������t>=^������p���f�O���u�\]X�lo��v�����ػ����a��:_����o_���jі:�G'��q��z�O�K�o��L[�;<l+#y[��S��|�~�Kw��{p��.Y������w�dqg{��������~Lw��{p�m$Y��c����a�����A�x�>x����V
-      G   p   x���!�����8@/�G��h°9\���Q�FA�6:�ⅅ�7����Z���,��PCm�P�^�h���t�7}�K1)�@!C69�2�c��f�w��~�Ar      H   �   x�=��m�0D����$�����X�g�$꣏��A�L�f�7��9���}ssn����UȀ�P"#*dF�i�)-dL��!��C؋{��@A؋$�E��	{1��X��؄�8��|H{)�^��WL�^i/���C��E��M��C٫��W��UP����hE٫���P�jQ�jS��������h{��N�^�-�kh�^�k|z���/���������0�3�9#�s&ϙd<g���~>��Y����� :YL)      J      x�%�An�0Dѵ}��I�N�қ�{��xD��H+�{�s����}�"Ew��t�6m��/s�-��/9��0sP��/�m���E�Ϳ���C��r�l��UX�Yj|�e��%JU�Ҵ4�iH7M�97�[sO��V�sc�Ә��hj��F��WBK���٧1J�˯|��d�r���C�!J�Ě��{LTVHf�n�m�����Qv�l�}}?g�=���=r�V�l؆m-Z�n�n��y�yu�Fm�l���<��Y|�      L   �  x��Xˎ�0<���rڕfP�`�{��hO#�������av���̓$<��	�pi䪮nW���Hɓ��+��ry��9���A\!����y�5cW��yy�νrJ�r��j�o�J�^�'#o��D>"���=Q}�*��z�)|\�t�\iXx�'��Z�bJ
^��r
:l��������I�t�����Ƨ�SЄ#�ܫ��L��Ow��q�{�$�O16�2�e�14��p�LK��FdҫbЧl�O��0�4��:2��*�VŊK�(��Ci��3LZć���w�Y��-@�#s�����/NO78z��=>����MSԗՇ�k?��𱇃�&���CC�C����`BxNW���hAЫ�< AG2T�j6���BcF(�ܥ������ N�z3x���V��k�?���M�ǄY�ͧ�b�,l@�7�|�* ��	Ы�@��g��@�MX�rc��>�-?����;&�������i�O�ox7#�b39v	��@²HG7�T�������X�5���2V�k��4�|h���YU���Ou�Cd�jCYl�=�!;��N�Nץ�)��З�5��D�J��^����1�_�&hd��5b����4Ƌ`W���2�n,x�ſ띀��Ͳ�`0�����ЛlZ����#a�e�K��m�I�"�;��';](�!IB���%o�R��E�k��"'a�.��yy����>ِ]�)	��*��O���/V�߷�+j}����l�$��r      N   �  x���]�%�E�ӣ=�P���$#04�C��@�瞽���oý���ꖏVUI���R�C�??��S��M��FW��1�nL5�K���Vc�q�8n�ǿ���.��R��%�_���t�T2Fnf�2��8e����v3c��fF���5�U�V�����js3���fF��͌V���.73Z�nf�z�6��Y�53Zt�Gk�i�E����ɝnF�-7�Ӷ��i�������t_���zu3�����3Z�nf�>��h}���\���o}�׾���w��v.}u3f����݌���=fcj������hc{6�7N�o>ig��32�i3�Z�s��3�ig�9�ΰs�=3�ܞz3�Γv�]���̸���qW}���͟wO��5�f	̴�V��Y;����ٽⳟ�㳋���Ϯigܝy�2��ig�=�θ{zA,V�J;��v����qϓv�=%�{j��d��{z����3�ɸ;㞌�Y�wgܓq�������d�C <�O�>����1�d�C<�O�?���s�';��@8�!Q*�Ei�Cx�!R&�IY*eC�(������/?�����~�����������/��oJƇn��n=�
���F�U����tkt�v��֝���Ӳ7���!N�b3ĉP0�8�F��E��(!C��P!.�r2�Ei�Ei�C%���G$���i���~�>"�iz�W=s���y^�,O��W|d/���(��C��M�B���+=ߟ��n�F��gFz��37D��ג�7K_�W'='H��t���v�.��������/����.f�����u�A鞖~/.�*�>^��������XF�X>�<��p�������{�B�9�E������{��9�C���ߛ���V���ey�~����I��H����� PM��/�X��ҳ�������|��|.*7���/V8���b��{�/Y���b�5IeNz��H��Iϒ���Ej��U#�닫��9z�P�U_�MX�K_�M�5���2�<�8Kϗa�I��-=_f!gt��e��t�TQ(A�*��_�~&�Т�/��W�_�ۯ*���= n��C�~U�����5\�}VÅ´\(M��A�X�8-*C��"�r��j�.*
C��*ᢲ0ē����}t,!����B�Z\(X�k}p�d�.ԬUe����,�H��0����.��\�<�I�B���s}C�Z��l¥?9�p�ó	??�p�#�	?E�pQ�e����
���'�ʓ|U�¥U!\t�
��wuE�X�!\��C�hE���VCM��}��.m@�� B�H$�K��>�7\�ǅg��q���v'����[�����&���oiG�-���wU���}�Q!�O��ǧ[L���]$��	q|��xIP��!���!\&.�-�^ԉK�/Wp�AU�����AUV�p��E���Z�\\k�eqQ���a�X{K�S�������Q^��q�m�&�ۑ�+���	ᩘ	a��	ᢘ	1�b&�x���)fB���	�7S�\��zp!�����o.�|{p!�ۃ9�\����Bη�u_��Bηr�=�������or^�4��9�3~� �b&��b&t��M���V��o��.��.��.~�h���M�T\��Vq!�[��ܗ����ƥ���o]������p�F.~�h��oM����	�w4�2�ꭑ�M���%�	ݴHB���E��ʀ8"-�G��`"��R#t�{��| \�H4d#��I-�.Z$!\�HB�h��p�"1��Z$!\�HB���obq�/c.�}�4mҴ-\HӶp!M�4mҴ-\HӶq!M�ƥ�ø��m�B���i�6.�i۸��m�B���ߞ����.�i;����0:�����֚���v��l玎�at^ض���g����N~������0���#?��x�D?~���}��@�JWڄx���1��]K&���L-�.Z2!\�dB�hɄp)������k}\��^q!?{Ņ���W\�Ϯ%3\��%�EK&���L��@�hɄ�W�"?��L-�.��a¥�B~����.�go�����B~����{F�����!\��p�¥/��!\��2
�˨.㎎�3�E.�H��3!\��&\��&\��&\���t!��3҄�3҄�3RD
wg�	g���IhA�8#M�8#M����i��i��i��)"_�3҄���Hs�ՆpqF�p���3҄�3҄�3҄�3R������4�q�_�6.�p�Bp�K
��@�h!�p�Bᢅ���Z&R�k!��w�	ᢅ�E!��B�orZ!>�i���&i�&{�/r��&�vh���,���7ķ@Mv��$���5�������d�I��`&\4�C�h��Hڡ��E�=��&{�~��e�O������B�Mv?^���6M�.��&�vh��p�d���E�=��&{�~)-.�v4\H��p!i�&��Hڡ��E�=��&{M�.��!\4�C��m�p��h�I��o�h@�P�ԡ�@3�����m�B�GSO�P�p�d���EA�ES߱Up��ᢩ�+�h�p��ᢩo������E'3���~��.��"-Gh�E�E�.��)Hq������~M�.��)dq��ᢩ�ES?���~M}S�ES?��.��!\4�C�l\:.������rp�\:.����e�rp�\.����e�rpq�.cA���2��| \f�p��e6��!\�p��\&.��K�e�RpY�\.l4��p)�,\
.���¥�p��,\*.���ƥ�q��l\*.���ƥ�q��l\.���ƥ�qi�\.������rpi�\.������rp�\:.��I���!\��p��E�B�g��S�"���E-�.��c��{zL�x[�K\��Ǆ���ra����ra���ƓI�N�\�,�\�,�w��e�k>�ݩe�]$�e�k>�ݩe�k>�ݩe�k>�ݩe�k>��9�e��S���;�,\���S���;�,\���S���;u�]���S'��;u�\���S���;W6�Lrw��`#w���b#x���O�wzW��-H�xcP
:|�7��;�=�%�;�C�5�;�I(��^�o��V� V�-��XyÐB2xz�P�+o����w�o����C.����C�	��-D. I��]D� ��y��2���D�x���D."I���D�"���E�6�@^�U,�X�y���b����Xy�Q�r��U�ɼʵ"�W�Vd�*׊p^�Z�Ϋ\+�y�kE>��GgЫ^+zy׌kl"zy�L+�q1���X�Xyǈ+rbzy[�KrrzyB+�b��A��s+�b��A����H\/ab�gA���V�Ib��.b��E�ڹ�U.b��E�z��Uo�Ep��/b��E����U_���"V�\�j<��Z��"V��D��r��r��r��r��f� Vޯ��[6�XMvq-�|y�f+��4���7�Xyg+o�b�}�A���3��ws�ʆN#V�Z�k]+R}�kE��u�������ֵ"ٗwy����=�X9ۃX9ۃX�r+g{+g��l_�� V�� V�� V�Z��k_+�}�kE��s���u�پε"�׹Vd�r���#ۗ�=���=���=���=���=��l.�\�`�x�����Vd�v���$۷�=��u���� Ov.�};ۃX�r+g{+g��l��� V�� V�� V�v׿d�v��r��r��ʎH#VwK�"�w�/
���lb�lb�lbU�پ�"�w�Vd�n׊l��Z���]+�}�kE��v���ݮپ۵"�w�Vd�n׊l��Z���_+�}�kE��~���ݱ�d���"V}\ĪϋX�u��/b�l�ގ���=�U�݈U�݈�`W�&�w�݈U�]�.پ��F���F���F���F���F��F4&[f7a��F4�� �w��9�d����l7b�l7b�l7b�l7b�l7���vc$�ӧO��X�      P   k  x�MV۵�(��܅_�41L�u�-%{�G$�l,�G1��K��'����~�����#{@t`����L99Pw�����s��Rli<���E>��,�g�_�)c�~d�<�l�3��{d.�	m&���fB�	�s�rN�cC�sy<��~�[Ϩ��ι���Y+z�޼���Ec�������Gܑ9��>2ZG�u������)♬3e�)cNsV��2�̓��d��*o/�f��JԔ����|��sWa��f��ߩ�T�j���?�)����̻�w5�z?��/[ZW��� ��3(I�>�.ٽ�In����Wzy�nMm�3x�	,��E�n� h@� ������H6$�ɆdC�!ِl	D�!ב��u.۹l��=��D�#�Ǳ�����L�I�C�B@��4#񱴝ljֆ"��r���E��@A:�$	���$�$U�*I��JR%��TI�U�*E��n
��1�v���uځ��ο�n4������Ⱦ	,�|$�7P�
4�Fۊ�x���/�˗�D���r��t` ϘIۏݝڏ2c/�	�����l�N)���Knk�4�hjXz�
K���݈��w#mQ�a��QP����oQm9h3m���-p�n����~}�D�H���M���� UhY�e��UZViY�e��UZViY�e��UZViY�e��բJQ��®�E��JQ�R�R�R�R�R�R�R�R�R�B��&	IIFrR�)IE��PE��fjl�&T�U�*B��RE��TQ�(U�*m�>_5��#�ڼ�T�8_�ٜ���jm�����X��[�Dw�A>ǫ�����j�l����fm���ǫ�
D2Z���Z�E8m�hN�9��"q�}�}ߐ�5�,�S���z�gQt�ἶ���Ɠ=v<9�X{z��I�'��4z��I�'}�
[@��
[(l�n� �tQC5tQC5tQC5tQGutQG���v` 0�D.�{�������9�|.�t�}���W\ŗqt����*�ʸ#�E���q���i������"ۿH�q��w�~��__p� ����=�����|ʎ"�؎�;
�(���ml��\:�(2�o;��������l�Nw;��l�����((�금:n�����Z�����      Q   �  x�UY���({�)f� ���V��ױ�,2�<���11�_��_������y�� � ޻�_�:��׿�g��g�Q��Ͽ�2*���y����Rj�)k����R��͂!0���W����+4k�V�r[�~�	4�>�R��t�������@�W�T�@���%��T0n�*�T�W_��K�j9*D�SU�
��}S�a�gR��Y�����)�kY,�%)����KP�;s�K�ĥ��|��K<�7ͩ�ԁ����o{�����6��b�u`nv�e���rY���,����C=,�尜���-���=�&��(���{6pr�)�[�i���f�.�ϗz&��F��`�TQ*�o�T
����E�Jx���Ϟ�:>G*�3�K��\��)�kY�Ϫ��2,�尜����v��ZK��s��2,�%����ܤ\�;%��<.��8*�@<�}��0���t��y�:`����� xV�@�6�
d]S���6��j
��U�U$jIHmM��5��( سĜ/�q8�s�o,!kvHk�h�L3qZd(i��i^MS�4�T�fC�>�d�M�i�X�-��&ӛ�m;�O��Ɯ�l,٘n�������8�c�9:V�1�s��*�q�!N>D�8����F��P6�v��+5]��u/ףA1�-�YT�/�4�\@yK��	�z��)l�
0C�dS?ل�	��E1�䨊��DD�$G]4��� ��c(OQ�v E�kP����u���׵:�\��(l��,�����:~�����T���~PúX����+T���%PǺ�@!3�(e� ����P(gCa�����6*�P(iC�����Qӆ��iCotԴ�W:j��%5�� \t#��i�:�mjZ�P�҄�Ʒ@; ��s��! �
5m*TԴ�PQіBE=[Z�liQT��EQ���u�6@�Z
Ei)��0��Ka��xN?sƙ3�xV�8b9�/'���d�����b���b���b���y�u+��'?|X���ĕ�׆{��GO\���\w�ɯ֦���Q��`��yσ��h�V=�Is����U=H�����-��q-�뢶���=c^3�K]�m�3�5��e�򼝭�?�OOl/��bao�X�[�s�鉷���s���<���[�m����G�)����yOy�?=w�;9.���|�ŗ�^��N����m�<oGO��q]�E渮�"s\W*�9�+o��ו-�a����0�u�q��2�8�w]|��|�ŗ8�w_|����/q7�}�%��/���|�ŗ����w��_�n���K��w_|�{�m���}[_.=?|^���P��]z~hU����ëY�/=?���q��a֭���j��u���6�ߗ�r�[.���|�ŗx�o��O�-_�i���K<ͷ\|�����/�4�r�%��[.���|�ŗx�o��O�_�e���K�̷^|���֋/�2�z�%^��/�E�o� ;7����<�u,���l[�1W�/��!}M��n�#�&�\�7��s��+�n�ҳρ���n��0�Z��^n��Wp����P��������>���D��V���
��R�ՖP?V~n��Ƌ��j|;���B�x~��A�॒�=t�m<��`�9�S^�0�&U㧽߶���8�v��\d��*�TbCE;̖ʫ}`S�U�l��2��@I��u�C�C�W?�b�A1"/f|�o���N�2��>�͙m��^�x����8e^�~������.��ĺबj}K�;vs5�{�M�6�ǻ���>{l�����xQG����^Oc�Eݛ����W�ul[0��46a�|	va�}	�a�~	�a���͢"�v��/FM�-�l�i�.�����{��ڒc���`��腏�\�r�륯���)��A���e�Ѫ��{����n��@ka��u��gv�G���~�9p�<��[̻r��ˆ��FY�L� ���7��z���z�a=��i=�\u���GV����7T�j=��l^%�c���ѭ'փ��
Ȍ:�D�]���'� +}��N��r�7�M��X8�.��g�[��X0�kU�ѻ�=�z,`��8�" ��E��� T׉@�A�Uy"�`�����'�Z�'NH<�F����Zx���@�'�1-�8�PHL�X�@Io�@JZ�˧���}��t��qQ�2���.
dT�5p2�����Nz�,�11����G�_���4]p������ڦA���zg�������uG0�      R   �  x�u�K��*D�U���>������N�t��R.��>[�د?�����~�8``EȄ4��P
՟�17jB]h̓����O�&W�*\e����#\(�x!�xש�M�_�v�y�����A����wj�;�o�q�
Ru$���N�wj���J�Uj��֪j��8���j�kjB]H{^��MMMM���������ц�<�!����������������c�c�c�c�c�c�c�c�c����6��"dB����BUH�]��c��JJ�V������z���O0�|�_΢E��2fYh�?��?n�r��q������3��0�q�)�1L�g[�s��9�E��PL4�-�-�-�-`���-a[q�:�-��w��`��^Fq*^N!^a5�	���@NI�U�g�a��m�x��g�\~@�%��d�Y��C�!��)��e /����y������nPˠ�A-�Z&�Lj��Mj��M�&l�)6/h@�F/	��v��K l4(N���?Ϛ�o��X<?��h!�� s�2���Y��l�o�x�ru+�O��hW�~�iX����`�E�/񠮠��-aK��+<�&6Z���m#�/�xa�2�	�@�\�\��J{��iV����a�^2���W�`Q�j��E]֦g��UG X��k��x�&�Hŭ �90�lVc���:>���ノ:>�����a�W�[���6`���E�ዎ/��n�ዎ/:����㋎/:�����>��ua����_|1��(��ҁ9|1���f�l���1�cإM���_�F��2��d"�����K�h>�@��JpM	��-PV��h���	h(�^��@N��9r�~�7!��`�9r
��b��x���=5�?�Q;�O�v��p�Doj�HW�|�7�V��p<��ٷ�r2�of��Nƞ�����2d�8�q �DƉ�'2Nd��8�q"�DƉ�'2Nd��8�q"��2�B۰p
nh@��g�����ܯ�7�	�f�~�2�����?C�������DIK������!�=�-�[��L4�+��I��<���A۝j_�~��WJ�|<�I����3��Je�R+�S:��	N*V�wʿRq��+�aIU_�@:�T�=ћ�=@�'+�﹪�M��>���w��>�:q���Rb�y9*=P�k�W�l1Ǎ�fr�Ln�� 魲]��`k�(��������fA      T   �   x��G@���qi����q�L`C'H�fXr(Q�F�n�p�O���_�#D�� �(��!�8�H�N��$�lr�%�2J�SA�AE55�RG-�頓~{�z�c��L0����̱Ɗu6�d�m��]�8��9\r�57���k<{�@��#�gb��� ��/�      U   8  x�E�Q�:C��b�W�-����:.��?/�mj�{>�#f�7ΌwƋ�1Q3zƆ-N[0c5�a�����6�6v`4���%�fV0�Y���N?�<o ���N?�p�����/�~�p�y��W��F�OO�'¤��.�Գ!ԁ�қz#�~�O_i戋`�Hֹ?�Z�:�h���>>5���M�čܰ]�ŝܱ�w�?{c�/ﰎ�����c�=�w7�?g�c�3��}Ưu�s�9������9�9N��.�-��f��.�x���Y��)�?=���%^�5|r�oq��ݸ��w}�r_�c濣�W'O���������[�H��\���+~�S����4�����̟�\�~�r's�F����<�Aj�S���#��x���L���<YH���d�ZH�.C��<Ϝ(櫍b�:(�_��^\���שBi�W5�Js�z�R::^�/q�w��x��o��7��m��ӯo�������C<�~�����O���|�W_�+_��)��U��h��o_��\j�C���/y{�����l�緺���b�����xo�����qك      V   �  x�=�I�� ��[�	Z�/���>)�pi�������n�zZ{�y=g8{oqvO�QN	���t�A5ޛÜ��Qj�Z}o��b�*�����l��Nw�ب
g��B�$�$!)�w��4	]B��H9�,��̵����NBoK��$�ޗ$���;�nKzJV��q;����s��Ai�w
M�q U���0�%]�~YQ/��(X%Xa�,�9`-�Z��\�1�42��Z�!M�.s�bę�d�G4���$Z>�}6�,����� 6�,�ǁs�N�K�ţ88��q[\�C�'�.��!cI��$��sIF����CD;�!B�˷�#�8��Hy��f��0 �|��8΀0 �Ǻ���K�:lI��r�=b�u|��8�f].?����4�8�f?.�2��-W��Mq\6�)�ĹG���=����W[7?��
}��b!������+���������      Y   �  x��ZKs�6>˿���l>�c'ish:���)3��$LH�);n&�=�$e+(Ѣ�C_l�߇]�+�I��^�*�y5�2�ۂǋ�gb�3�f���\��k2-��x#�E,���p���J+[x��pf��:������� �Y3̯wT��M���9�J�����_�����e�N��L<�ʅy$9]Gr��B0�hZKG��j����Z�|ɍ��sX4�vo���1]n+nC	�h~̞�������aKSwd�������?f7D�V�0��cGzFk�#�=�=���ޭ#�>��W������C�4�ڬ��|��s_�`�n�{9�)�@��ܑ[X�J��c��j�ynI��:�H4 ��|�=��&��ܬ���*πUѥFp�/4��7�����+6��*�1��ʟO	�vX����J��"��ȼy)+�.��Y�E����_@5��:ӯW�c�����Vhv	hf�v/�Z�/ �Y����W:�_;�دG�2n�,��]h�?�!1h�D�/2�����]9T�����;Ћgw=�vΈ`w�����k�ڥ�/�4e�e�q�Yֹ�oH���Lh"s�f���U��l�V�X��T�h�2����La�Hȶr�%}���a�흗�{����H�Т�Z�e*��R�|@�H�;���7�~O6�AGov/�BԹ�ՙ����-X�$���k�I�VK��+�� *����iq��R1�H_�gr��	3*����:Y�ܹ%Bv����"���;/��o>r�F���u��W*8𛝻�y׆�	,廓��Bj��?��'���K �v]mj���_�)Rr/yJTNR�F�� ��7��M�NG�~SN�����o��5c�P�b��u�ݑ�R��,��p
X-1�j�+2�/���Iו*�Z�*?�^�OuV���o�h�7?��	�g���e�6#vذ[�jB�n��d��Ѻ���P�7 ��t�����1DG}]u�lji$��8�E7�c��l�#�F��ols]`t5h_�;	F�w��I0���m%Mͅ��O��6��������l*zRm�ڮ7�Y��Z����&0�?��/e.*� �á8�7CN��}+ޱ(�F7�R���B�e��bH���(9��轪����3t��K�����p�7�"�+�]j 0��2����4� 9�
&�~�d{�EF�a^3a�}Ț	�Yd��j-r��Vjp�+���lq��
���=6{�l�Sj�ݽ�nk[�9u���T��7�Yd��5}�/Q���@{udN�NN��r��[ЧVi���Y���龽����uߖ� ���QG������F�=$��K��u���&��o�o�
�<M���iU�U$�:� [#��q�a,�UI2���?Nd����-�X&�Fb$�H*�p����yM����M�F�2��u��:^�?Է����݁/n�o�����m�����o�^�U"H0����%|�]]]}��      [   �   x�]PKn� ]�)z S16�.ٸ6����LN_>u�f7ox?�;�bXg�|�_f��P�@�@r�{0  iܻz٤� �&��=�h�LW���v�tؼv�G��%�-oɪ�@1�
F^X�����T��/���ܯP��������[?"5���5�rR�����\ ��f/�?��Lԣ$�Q��b��R�a�f
      \   I   x��A�0����DR��\�G� V��)�f�BBFA:�F�6޸��7���_�lR�K��|�R      ]   n  x�-�[��0��aV���2�?�v��H)�~@��ϰ�3mṬf���x�����yf�g�1��{g��	 �9�BO�s�c�Mڜ�lsns͹���\ݝ�$�$�/	X�嵼���x�$�D�Iį��Ń'���'�\�@�<H�:I�hY�*Q$�?u;$~Mb�K�'�n*�����8�c2Hd&	c�YOnr?y�#��_�(v��"v`a�K�,Nb� �v�!sz[dLE6O�����yGޑw�3�-�嵼���p�+�ʻ�K�-�SJ2�~����偓N^���ώ�gG|�k���άk��N��:���T��/�Kqֳ�r+�ߊ�����WI��d�jY�^U$N��.uH�7	��^����?�)��      ^   �   x�]�Q��0D��Y���Ļ�M��}�N���u�h��9۱��m6��<f���m��,i��W5 |�py����m��sz�w
t�Q����e!�l|1 �l�uِ���7�Un���!���S�/]�|(0�q�p\�+BA�T슮25��۪���`55���.��<�c~<�Z��$�K��������l�TYZ�1c��8ͨ�%���ʚ���J�C;�~Zk/r�      `   �  x��X]O�:�N�UiH�'��4E:���]lC���m�L�RK���8e�ﵝv��me��~����9%ɜ�>��r���)���꟠>�r�l3*�T,Y��%K	�J,��ͦ	��\�����|���-З6�|Ay��54�@���Mp��ؾ�àv�{vt2�I��G5Ah!���FӋ��v��ȫ�#���9��oT>�'�$�'�'�gO��Ȁd�V �My�K���(��Y���ib��댙�����d��c��Z����9c�{�]�O>��s��`As����+�Ͱ����SRfd*JdF��U��s�j9?���Q(,!����l�	+_T���Lp�M���+d%BX���3Z&˵,('�De��+8:"�*U��b5+�=�(�����?�<�M�P)��)q�LJ����ȅ"�m$�y!r�EzQ�F�@$-��Y�b��%Ӡ�0�ª�X�ȪP�^�� QW��Q���0�������G�^�ݗ��li��)�[��6�6����)G��]�}����""Yޫ2�*�O��j��	�Q�C�'�!mt�z�!�@��y;Pu��^�~FMW���~�̼�C���6�]^|����0@�R��讂:���U���#g�]7�M���Y�n�����ZN�SM{N�k	��s˞����K��K�+T��%z|��Y�a�����z�AK�g�$eB8���nn�����q
�K�hpkxn�Z;�[�k��������Q�֣\�%�C'ҭ�p&u����c�b��7�_°B�2���o�禎�s�����]���9%���sFәo�:���ο���b��L�[΀����)@Z��@�9�n|��V�K�K&WfR������B&��'Chf?���k/����rCl�ĺ��-{�N#n���)�#�� ��u,u��F�uo/&z��nO��gI����g���GsQ �A�,��*%�c�r/hok�s���p6���]r����2�TD��Jy=���\��@ov��֭�udts�f����=c��?]�������Ε�b݊�%I�*�j1[����^���ܡ6�����mW��㴐��P�8��:���?��o����h����\ �����8�t�&ǫF' �3�6I^;0=�"[^��6�~�z�_���     