-------------------------------------------------------------------------
--Script : createViews.sql
--Objet  : Création des vues
-- Créateur : Dylan Monteiro, Kevin Bonga, Michael Sanz
-------------------------------------------------------------------------

-----------------------------------------------------------------------------
-- Création des views concernant les tables de Mihai
-----------------------------------------------------------------------------

CREATE VIEW CIENT_VIEW AS
	SELECT
		ID_CLIENT,
		NOM_CLIENT,
		PRENOM_CLIENT,
		USERNAME_CLIENT,
		DESCRIPTION_CLIENT,
		ADRESSE_CLIENT,
		VILLE_CLIENT,
		CP__CLIENT,
		PAYS_CLIENT,
		GENRE_CLIENT,
		EMAIL_CLIENT,
		TEL_CLIENT,
		DATE_NAISSANCE_CLIENT,
		MDP_CLIENT,
		DATE_CREATION_CLIENT,
		IMAGEPATH,
		ISACTIVE
	FROM
		MIHAILBRZNT.SGPC_CIENT;

INNER JOIN MIHAILBRZNT.SGPC_OBJECTIF O ON ID_CLIENT=O.ID_OBJECTIF

CREATE VIEW OBJECTIF_VIEW AS
	SELECT
		ID_OBJECTIF,
		ID_CLIENT,
		ID_COMPTE,
		TITRE_OBJECTIF,
		DESCRIPTION_OBJECTIF,
		STATUT_OBJECTIF,
		MONTANT_CIBLE_OBJECTIF,
		MONTANT_COTISER_OBJECTIF,
		DATE_CREATION_OBJECTIF,
		DATE_FIN_OBJECTIF,
		MAGEPATH,
		ISACTIVE
	FROM
		MIHAILBRZNT.OBJECTIF;

INNER JOIN MIHAILBRZNT.SGPC_COMPTE COM ON ID_COMPTE=COM.ID_COMPTE
INNER JOIN MIHAILBRZNT.SGPC_CLIENT CLI ON ID_CLIENT=CLI.ID_CLIENT

-----------------------------------------------------------------------------
-- Création des views concernant les tables de Mihai
-----------------------------------------------------------------------------



DISCONNECT;

EXIT;