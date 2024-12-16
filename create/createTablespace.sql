-------------------------------------------------------------------------
------//Script : create_ts_mkrd.sql
------//Objet  : Création du tablespace
------//Créateur : Mihail, Karim, Romain, Drilon
-------------------------------------------------------------------------

CREATE SMALLFILE TABLESPACE MKRD_TS
    DATAFILE
        'C:\ESIGUsers\ESIGLOCA\Data\create_ts_mkrd.sql' SIZE 2097152 REUSE AUTOEXTEND ON NEXT 1048576 MAXSIZE UNLIMITED
    SEGMENT SPACE MANAGEMENT AUTO
    EXTENT MANAGEMENT LOCAL UNIFORM SIZE 40960;

EXIT;