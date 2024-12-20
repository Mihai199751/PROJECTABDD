


-----------------------------------------------------------------------------
      --TABLE : CLIENT - MIHAIL
-----------------------------------------------------------------------------

ALTER TABLE CLIENT
  DROP CONSTRAINT FK_ID_CLIENT;

-----------------------------------------------------------------------------
      --TABLE : OBJECTIF - MIHAIL
----------------------------------------------------------------------------

ALTER TABLE OBJECTIF
  DROP CONSTRAINT FK_ID_OBJECTIF_CLIENT;
ALTER TABLE OBJECTIF
  DROP CONSTRAINT FK_ID_CLIENT;
ALTER TABLE OBJECTIF
  DROP CONSTRAINT FK_ID_COMPTE;

  
-----------------------------------------------------------------------------
      --TABLE : TYPECOMPTE - DRILLLON
----------------------------------------------------------------------------
ALTER TABLE TYPE_COMPTE
  DROP CONSTRAINT FK_ID_TYPE_COMPTE;

-----------------------------------------------------------------------------
      --TABLE : COMPTE - DRILLLON
----------------------------------------------------------------------------

ALTER TABLE COMPTE
  DROP CONSTRAINT FK_ID_COMPTE;
ALTER TABLE COMPTE
  DROP CONSTRAINT FK_ID_TYPE_COMPTE;
ALTER TABLE COMPTE
  DROP CONSTRAINT FK_ID_CLIENT;

    
-----------------------------------------------------------------------------
      --TABLE : DEPENSE - KARIM
----------------------------------------------------------------------------
ALTER TABLE DEPENSE
  DROP CONSTRAINT FK_ID_DEPENSE;

ALTER TABLE TYPE_COMPTE
  DROP CONSTRAINT FK_ID_ABONNEMENT;

ALTER TABLE TYPE_COMPTE
  DROP CONSTRAINT FK_ID_COMPTE;

ALTER TABLE TYPE_COMPTE
  DROP CONSTRAINT FK_ID_CATEGORIE_DEPENSE;

-----------------------------------------------------------------------------
      --TABLE : ABONNEMENT - KARIM
----------------------------------------------------------------------------$
ALTER TABLE ABONNEMENT
  DROP CONSTRAINT FK_ID_ABONNEMENT;

-----------------------------------------------------------------------------
      --TABLE : CATEGORIE_DEPENSE - KARIM
----------------------------------------------------------------------------$
ALTER TABLE CATEGORIE_DEPENSE
  DROP CONSTRAINT FK_ID_CATEGORIE_DEPENSE;
