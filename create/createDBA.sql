-------------------------------------------------------------------------
-- Script : createDBA.sql
-- Objet  : Création d'un DBA
-- Créateur : Drilon Demiri
-------------------------------------------------------------------------

-- USER SQL
CREATE USER DKRM_DBA IDENTIFIED BY "Motdepasse1234"  
DEFAULT TABLESPACE "DKRM_TS"
TEMPORARY TABLESPACE "DKRM_TEMP";

-- QUOTAS
ALTER USER DKRM_DBA QUOTA UNLIMITED ON DKRM_TS;

-- ROLES
GRANT DBA TO DKRM_DBA ;
ALTER USER DKRM_DBA DEFAULT ROLE "AppAdmin";



EXIT;
