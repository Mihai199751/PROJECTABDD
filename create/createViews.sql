-------------------------------------------------------------------------
--Script : createViews.sql
--Objet  : Création des vues
-- Créateur : Dylan Monteiro, Kevin Bonga, Michael Sanz
-------------------------------------------------------------------------

-----------------------------------------------------------------------------
      -- Création des views concernant les tables de Michael
-----------------------------------------------------------------------------

CREATE VIEW SGPC_UTILISATEUR_VIEW AS
    SELECT UTI_ID, UTI_PRENOM, UTI_NOM, UTI_DATENAISSANCE, UTI_MOTDEPASSE, 
            UTI_EMAIL , UTI_NUMEROTEL, UTI_ADRESSE,  UTI_NUMERORUE, UTI_CODEPOSTAL, UTI_LOCALITE, UTI_ISADMIN, UTI_ISDELETED 
    FROM MIKEDEVELOPPEUR.SGPC_UTILISATEUR;
	
CREATE VIEW SGPC_MARQUE_VIEW AS
	SELECT MAR_ID, MAR_NOM, MAR_IS_ACTIVE
	FROM MIKEDEVELOPPEUR.SGPC_MARQUE;

CREATE VIEW SGPC_CATEGORIE_VIEW AS
	SELECT CAT_ID, CAT_NOM, CAT_IS_ACTIVE
	FROM MIKEDEVELOPPEUR.SGPC_CATEGORIE;

-----------------------------------------------------------------------------
      -- Création des views concernant les tables de Dylan
-----------------------------------------------------------------------------

CREATE VIEW SGPC_RESERVATION_VIEW AS 
    SELECT r.RES_ID, r.RES_UTI_ID, r.RES_DEV_ID, r.RES_SER_ID, r.RES_COM_ID, r.RES_DATE, r.RES_STATUT, u.UTI_PRENOM, u.UTI_NOM, s.SER_NOM, d.DEV_DATE, com.COM_DATE
    FROM DYLANDEVELOPPEUR.SGPC_RESERVATION r
    INNER JOIN DYLANDEVELOPPEUR.SGPC_DEVIS d ON r.RES_DEV_ID=d.DEV_ID
    INNER JOIN DYLANDEVELOPPEUR.SGPC_SERVICE s ON r.RES_SER_ID=S.SER_ID
    INNER JOIN MIKEDEVELOPPEUR.SGPC_UTILISATEUR u ON r.RES_UTI_ID=u.UTI_ID
    INNER JOIN KEVINDEVELOPPEUR.SGPC_COMMANDE com ON r.RES_COM_ID=com.COM_ID;
	
CREATE VIEW SGPC_SERVICE_VIEW AS
	SELECT SER_ID, SER_NOM, SER_PRIX_STANDARD, SER_DESCRIPTION
	FROM DYLANDEVELOPPEUR.SGPC_SERVICE;
	
CREATE VIEW SGPC_DEVIS_VIEW AS
	SELECT DEV_ID, DEV_UTI_ID, DEV_DATE
	FROM DYLANDEVELOPPEUR.SGPC_DEVIS d
	INNER JOIN MIKEDEVELOPPEUR.SGPC_UTILISATEUR u ON d.DEV_UTI_ID=u.UTI_ID;
	
CREATE VIEW SGPC_ASSO_SER_DEV_VIEW AS
	SELECT d.DEV_ID, s.SER_NOM, a.ASD_PRIX_EFFECTIF, a.ASD_COMMENTAIRE
	FROM DYLANDEVELOPPEUR.SGPC_ASSO_SER_DEV a
	JOIN DYLANDEVELOPPEUR.SGPC_DEVIS d ON a.ASD_DEV_ID=d.DEV_ID
	JOIN DYLANDEVELOPPEUR.SGPC_SERVICE s ON a.ASD_SER_ID=S.SER_ID;
	
-----------------------------------------------------------------------------
      -- Création des views concernant les tables de Kevin
-----------------------------------------------------------------------------

CREATE VIEW SGPC_COMMANDE_VIEW AS
    SELECT COM_ID, COM_DATE, COM_STATUT, COM_NUMEROSUIVI, COM_FACTURE_DATE, COM_FACTURE_STATUT, COM_FRAIS_LIVRAISON, u.UTI_NOM, u.UTI_PRENOM
    FROM KEVINDEVELOPPEUR.SGPC_COMMANDE com
	JOIN MIKEDEVELOPPEUR.SGPC_UTILISATEUR u ON com.COM_UTI_ID=u.UTI_ID;

	
CREATE VIEW SGPC_PRODUIT_VIEW AS
	SELECT PRO_ID, m.MAR_NOM, PRO_NOM, cat.CAT_NOM, PRO_DESCRIPTION, PRO_PRIX_CATALOGUE, PRO_QUANTITESTOCK, PRO_IMAGE, PRO_IS_ACTIVE
	FROM KEVINDEVELOPPEUR.SGPC_PRODUIT p
	JOIN MIKEDEVELOPPEUR.SGPC_MARQUE m on p.PRO_MAR_ID=m.MAR_ID
	JOIN MIKEDEVELOPPEUR.SGPC_CATEGORIE cat on p.PRO_CAT_ID=cat.CAT_ID; 

CREATE VIEW SGPC_ASSO_COM_PRO_VIEW AS
	SELECT  u.UTI_NOM, u.UTI_PRENOM, c.COM_ID, p.PRO_NOM, a.ACP_QUANTITE, a.ACP_PRIX_VENTE, a.ACP_TAUX_TVA
	FROM KEVINDEVELOPPEUR.SGPC_ASSO_COM_PRO a
	JOIN KEVINDEVELOPPEUR.SGPC_PRODUIT p ON a.ACP_PRO_ID=p.PRO_ID
	JOIN KEVINDEVELOPPEUR.SGPC_COMMANDE c ON a.ACP_COM_ID=c.COM_ID
	JOIN MIKEDEVELOPPEUR.SGPC_UTILISATEUR u ON c.COM_UTI_ID=u.UTI_ID; 


-----------------------------------------------------------------------------
      -- Grant sur les views au Power User des tables de Michael
-----------------------------------------------------------------------------

GRANT INSERT, UPDATE, SELECT on SCHEMACOMMUNUSER.SGPC_UTILISATEUR_VIEW to PUA_STEEVEGOMES;
GRANT INSERT, UPDATE, SELECT on SCHEMACOMMUNUSER.SGPC_MARQUE_VIEW to PUA_STEEVEGOMES; 
GRANT INSERT, UPDATE, SELECT on SCHEMACOMMUNUSER.SGPC_CATEGORIE_VIEW to PUA_STEEVEGOMES;


-----------------------------------------------------------------------------
      -- Grant sur les views au Power User des tables de Dylan
-----------------------------------------------------------------------------
 
GRANT INSERT, UPDATE, SELECT on SCHEMACOMMUNUSER.SGPC_RESERVATION_VIEW to PUA_STEEVEGOMES;
GRANT INSERT, UPDATE, SELECT on SCHEMACOMMUNUSER.SGPC_SERVICE_VIEW to PUA_STEEVEGOMES; 
GRANT INSERT, UPDATE, SELECT on SCHEMACOMMUNUSER.SGPC_DEVIS_VIEW to PUA_STEEVEGOMES; 
GRANT INSERT, UPDATE, SELECT on SCHEMACOMMUNUSER.SGPC_ASSO_SER_DEV_VIEW to PUA_STEEVEGOMES; 

-----------------------------------------------------------------------------
      -- Grant sur les views au Power User des tables de Kevin
-----------------------------------------------------------------------------

GRANT INSERT, UPDATE, SELECT on SCHEMACOMMUNUSER.SGPC_COMMANDE_VIEW to PUA_STEEVEGOMES;
GRANT INSERT, UPDATE, SELECT on SCHEMACOMMUNUSER.SGPC_PRODUIT_VIEW to PUA_STEEVEGOMES;
GRANT INSERT, UPDATE, SELECT on SCHEMACOMMUNUSER.SGPC_ASSO_COM_PRO_VIEW to PUA_STEEVEGOMES;


-----------------------------------------------------------------------------
      -- Grant sur les views au Base User
-----------------------------------------------------------------------------

grant select, insert on SGPC_RESERVATION_VIEW to ClientXavierPero; 
grant select, insert on SGPC_COMMANDE_VIEW to ClientXavierPero;
grant select on SGPC_SERVICE_VIEW to ClientXavierPero;
grant select on SGPC_PRODUIT_VIEW to ClientXavierPero;
grant select, insert on SGPC_ASSO_COM_PRO_VIEW to ClientXavierPero;

DISCONNECT;
EXIT;