-------------------------------------------------------------------------
-- Script : createRole.sql
-- Objet  : Création des rôles et attribution des privilèges
-- Créateur : Drilon Demiri
-------------------------------------------------------------------------

-----------------------------------------------------
-- Create roles
-----------------------------------------------------

CREATE ROLE Developpeur;
CREATE ROLE AppAdmin;
CREATE ROLE UtilisateurFinal;
CREATE ROLE SchemaCommun;

-----------------------------------------------------
-- Privileges Objet
-----------------------------------------------------

-- Developpeur:
GRANT CONNECT TO Developpeur;

-- AppAdmin: DBA role
GRANT ALL PRIVILEGES TO AppAdmin;

-- UtilisateurFinal:
GRANT CONNECT TO UtilisateurFinal;
GRANT SELECT ANY TABLE TO UtilisateurFinal;

-- SchemaCommun:
GRANT CREATE VIEW TO SchemaCommun;

-----------------------------------------------------
-- Privileges Système
-----------------------------------------------------

-- AppAdmin: accès illimité
GRANT UNLIMITED TABLESPACE TO AppAdmin;

-- Developpeur: création d'objets spécifiques
GRANT CREATE VIEW TO Developpeur;
GRANT CREATE TABLE TO Developpeur;
GRANT CREATE SYNONYM TO Developpeur;

EXIT;
