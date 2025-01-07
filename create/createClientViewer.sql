/*
-------------------------------------------------------------------------
Script : createClientViewer.sql
Objet  : Création de l'utilisateur Client
Créateur : Drilon DEMIRI
-------------------------------------------------------------------------
*/

-- USER SQL
CREATE USER ClientUser IDENTIFIED BY "Motdepasse1234"  
DEFAULT TABLESPACE "DKRM_TS"
TEMPORARY TABLESPACE "DKRM_TEMP";

-- QUOTAS

-- ROLES
GRANT "UtilisateurFinal" TO ClientUser ;
ALTER USER ClientUser DEFAULT ROLE "UtilisateurFinal";

-- SYSTEM PRIVILEGES

EXIT;