-------------------------------------------------------------------------
--Script : createDBA.sql
--Objet  : Création de l'utilisateur DBA
-- Créateur : Dylan Monteiro
-------------------------------------------------------------------------

-- USER SQL
CREATE USER SGPC_DBA IDENTIFIED BY "Motdepasse1234"  
DEFAULT TABLESPACE "MKRD_TS"
TEMPORARY TABLESPACE "MKRD_TEMP";

-- QUOTAS

-- ROLES
GRANT "DBA" TO MKRD_DBA ;
ALTER USER MKRD_DBA DEFAULT ROLE "DBA";



EXIT;
