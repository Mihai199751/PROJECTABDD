/*
-------------------------------------------------------------------------
Script : createRole.sql
Objet  : Création des rôles et attribution des privilèges
Créateur : Drilon Demiri
-------------------------------------------------------------------------
*/

-----------------------------------------------------
-- Create roles
-----------------------------------------------------

CREATE ROLE Developpeur;
CREATE ROLE UtilisateurFinal;
CREATE ROLE Employe;
CREATE ROLE SchemaCommun;

-----------------------------------------------------
-- Privileges
-----------------------------------------------------

-- Developpeur:
GRANT CONNECT TO Developpeur;
GRANT RESOURCE TO Developpeur;
GRANT CREATE TABLE TO Developpeur;
GRANT CREATE VIEW TO Developpeur;
GRANT CREATE SYNONYM TO Developpeur;

-- UtilisateurFinal:
GRANT CONNECT TO UtilisateurFinal;

-- Employe
GRANT CONNECT TO Employe;
GRANT SELECT ANY TABLE TO Employe;

-- SchemaCommun:
GRANT CONNECT TO SchemaCommun ;
GRANT CREATE ANY VIEW TO SchemaCommun ;
GRANT SELECT ANY TABLE TO SchemaCommun;

EXIT;
