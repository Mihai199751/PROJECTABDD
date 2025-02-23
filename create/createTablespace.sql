/*
-------------------------------------------------------------------------
Script : createTablespace.sql
Objet  : Création des tablespaces
Créateur : Mihail, Drilon, Karim, Romain
-------------------------------------------------------------------------
*/

CREATE SMALLFILE TABLESPACE DKRM_TS
    DATAFILE
        'C:\ESIGUsers\ESIGLOCA\Data\DKRM_TS.dbf' SIZE 2097152 REUSE AUTOEXTEND ON NEXT 1048576 MAXSIZE UNLIMITED
    SEGMENT SPACE MANAGEMENT AUTO
    EXTENT MANAGEMENT LOCAL UNIFORM SIZE 40960;

CREATE SMALLFILE TEMPORARY TABLESPACE DKRM_TS
    DATAFILE
        'C:\ESIGUsers\ESIGLOCA\Data\DKRM_TEMP.dbf' SIZE 2097152 REUSE AUTOEXTEND ON NEXT 1048576 MAXSIZE UNLIMITED
    SEGMENT SPACE MANAGEMENT AUTO
    EXTENT MANAGEMENT LOCAL UNIFORM SIZE 40960; -- à corriger la taille 

EXIT;