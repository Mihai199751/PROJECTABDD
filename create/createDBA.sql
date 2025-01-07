-------------------------------------------------------------------------
-- Script : createDBA.sql
-- Objet  : Création d'un DBA
-- Créateur : Drilon Demiri
-------------------------------------------------------------------------

-- USER SQL
CREATE USER DKRM_DBA IDENTIFIED BY "DKRM_DBA"  
DEFAULT TABLESPACE "DKRM_TS"
TEMPORARY TABLESPACE "DKRM_TEMP";

-- QUOTAS

-- ROLES
GRANT DBA TO DKRM_DBA ;



EXIT;
