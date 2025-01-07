/*
-------------------------------------------------------------------------
Script : grantPermissionMihail.sql
Objet  : Attribution de droits pour les references et pour 
         le schema commun
Créateur : Mihail BEREZANTEV
-------------------------------------------------------------------------
*/

GRANT REFERENCES on DKRM_CLIENT TO DrilonDMR;

GRANT select, update, insert on DKRM_CLIENT TO SCHEMACOMMUNUSER with GRANT OPTION;
GRANT select, update, insert on DKRM_OBJECTIF TO SCHEMACOMMUNUSER with GRANT OPTION;

DISCONNECT;
EXIT;