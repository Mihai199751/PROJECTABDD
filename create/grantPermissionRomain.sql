/*
-------------------------------------------------------------------------
Script : grantPermissionRomain.sql
Objet  : Attribution de droits pour les references et pour 
         le schema commun
Créateur : Romain CAMPANHA
-------------------------------------------------------------------------
*/


GRANT select, update, insert on DKRM_REVENU TO SCHEMACOMMUNUSER with GRANT OPTION;
GRANT select, update, insert on DKRM_CATEGORIE_REVENU TO SCHEMACOMMUNUSER with GRANT OPTION;

DISCONNECT;
EXIT;