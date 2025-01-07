/*
-------------------------------------------------------------------------
Script : grantPermissionKarim.sql
Objet  : Attribution de droits pour les references et pour 
         le schema commun
Créateur : Karim EL MEZOURI
-------------------------------------------------------------------------
*/


GRANT select, update, insert on DKRM_DEPENSE TO SCHEMACOMMUNUSER with GRANT OPTION;
GRANT select, update, insert on DKRM_CATEGORIE_DEPENSE TO SCHEMACOMMUNUSER with GRANT OPTION;
GRANT select, update, insert on DKRM_ABONNEMENT TO SCHEMACOMMUNUSER with GRANT OPTION;

DISCONNECT;
EXIT;