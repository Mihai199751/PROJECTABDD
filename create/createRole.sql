-------------------------------------------------------------------------
--Script : createRole.sql
--Objet  : Création des roles
-- Créateur : Drilon Demiri
-------------------------------------------------------------------------

-- Create role

CREATE ROLE Developpeur;
CREATE ROLE AppAdmin;
CREATE ROLE SchemaCommun;

-- ROLES
GRANT "CONNECT" TO SchemaCommun ;

-- SYSTEM PRIVILEGES
GRANT CREATE VIEW TO SchemaCommun ;


-- Grant privileges

GRANT ALL PRIVILEGES TO AppAdmin;

EXIT;