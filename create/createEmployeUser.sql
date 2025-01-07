/*
-------------------------------------------------------------------------
Script : createEmployeUser.sql
Objet  : Création de l'utilisateur Employé
Créateur : Drilon DEMIRI
-------------------------------------------------------------------------
*/

-- USER SQL
CREATE USER EmployeAdmin IDENTIFIED BY "Motdepasse1234"  
DEFAULT TABLESPACE "DKRM_TS"
TEMPORARY TABLESPACE "DKRM_TEMP";
PROFILE "Profile_Utilisateur_Final";

-- QUOTAS

-- ROLES
GRANT "Employe" TO EmployeAdmin ;
ALTER USER EmployeAdmin DEFAULT ROLE "Employe";

-- SYSTEM PRIVILEGES

EXIT;