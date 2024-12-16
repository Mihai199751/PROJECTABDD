-------------------------------------------------------------------------
--Script : dropViews.sql
--Objet  : Suppression des vues
-- Créateur : Dylan Monteiro, Kevin Bonga, Michael Sanz
-------------------------------------------------------------------------

connect schemaCommunUser/Motdepasse1234@esigloca;
-----------------------------------------------------------------------------
      -- drop des views concernant les tables de Michael
-----------------------------------------------------------------------------
DROP VIEW SGPC_UTILISATEUR_VIEW;
DROP VIEW SGPC_MARQUE_VIEW;
DROP VIEW SGPC_CATEGORIE_VIEW;

-----------------------------------------------------------------------------
      -- drop des views concernant les tables de Dylan
-----------------------------------------------------------------------------

DROP VIEW SGPC_RESERVATION_VIEW;
DROP VIEW SGPC_SERVICE_VIEW;
DROP VIEW SGPC_DEVIS_VIEW;
DROP VIEW SGPC_ASSO_SER_DEV_VIEW;

-----------------------------------------------------------------------------
      -- drop des views concernant les tables de Kevin
-----------------------------------------------------------------------------

DROP VIEW SGPC_COMMANDE_VIEW;
DROP VIEW SGPC_PRODUIT_VIEW;
DROP VIEW SGPC_ASSO_COM_PRO_VIEW;

DISCONNECT;
EXIT;