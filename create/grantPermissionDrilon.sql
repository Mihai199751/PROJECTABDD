/*
-------------------------------------------------------------------------
Script : grantPermissionDrilon.sql
Objet  : Attribution de droits pour les references et pour 
         le schema commun
Créateur : Drilon DEMIRI
-------------------------------------------------------------------------
*/

GRANT REFERENCES on DKRM_COMPTE TO MihailBRZNT;
GRANT REFERENCES on DKRM_COMPTE TO KarimELMZR;
GRANT REFERENCES on DKRM_COMPTE TO RomainCMPNH;


GRANT select, update, insert on DKRM_COMPTE TO SCHEMACOMMUNUSER with GRANT OPTION;
GRANT select, update, insert on DKRM_TYPE_COMPTE TO SCHEMACOMMUNUSER with GRANT OPTION;

DISCONNECT;
EXIT;