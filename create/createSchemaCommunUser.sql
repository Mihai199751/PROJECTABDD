/*
-------------------------------------------------------------------------
Script : createSchemaCommunUser.sql
Objet  : Création de l'utilisateur du schema commun
Créateur : Drilon Demiri
-------------------------------------------------------------------------
*/

-- USER SQL
CREATE USER schemaCommunUser IDENTIFIED BY "Motdepasse1234!"  
DEFAULT TABLESPACE "DKRM_TS"
TEMPORARY TABLESPACE "DKRM_TEMP";

-- QUOTAS
ALTER USER schemaCommunUser QUOTA UNLIMITED ON DKRM_TS;

-- ROLES
GRANT "SchemaCommun" TO schemaCommunUser;
ALTER USER schemaCommunUser DEFAULT ROLE "SchemaCommun";

-- SYSTEM PRIVILEGES
GRANT CREATE SESSION TO schemaCommunUser;

EXIT;
