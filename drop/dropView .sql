-------------------------------------------------------------------------
--Script : dropViews.sql
--Objet  : Suppression des vues
-- Créateur : Dylan Monteiro, Kevin Bonga, Michael Sanz
-------------------------------------------------------------------------

connect schemaCommunUser/Motdepasse1234@esigloca;

-----------------------------------------------------------------------------
-- drop des views concernant les tables de Mihai
-----------------------------------------------------------------------------
DROP VIEW CIENT_VIEW;

DROP VIEW OBJECTIF_VIEW;

-----------------------------------------------------------------------------
-- drop des views concernant les tables de Karim
-----------------------------------------------------------------------------

DROP VIEW DEPENSE_VIEW;

DROP VIEW ABONNEMENT_VIEW;

DROP VIEW CATEGORIE_VIEW;

-----------------------------------------------------------------------------
-- drop des views concernant les tables de Drilon
-----------------------------------------------------------------------------

DROP VIEW TYPE_COMPTE_VIEW;

DROP VIEW COMPTE_VIEW;

-----------------------------------------------------------------------------
-- drop des views concernant les tables de Romain
-----------------------------------------------------------------------------

DROP VIEW REVENU_VIEW;

DROP VIEW CATEGORIE_REVENU_VIEW;

DISCONNECT;

EXIT;