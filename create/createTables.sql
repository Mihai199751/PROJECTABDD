/*
-------------------------------------------------------------------------
Script : createTables.sql
Objet  : Création des tables
Créateur : Mihail, Drilon, Karim, Romain
-------------------------------------------------------------------------
*/
-----------------------------------------------------------------------------
      --TABLE : DKRM_CLIENT - Mihail
-----------------------------------------------------------------------------

connect MihailBRZNT/MihailBRZNT@esigloca;

CREATE TABLE DKRM_CLIENT (
    ID_CLIENT NUMBER(10) CONSTRAINT pkCLIENTID PRIMARY KEY,
    PRENOM_CLIENT VARCHAR2(32),
    USERNAME_CLIENT VARCHAR2(32),
    ADRESSE_CLIENT VARCHAR2(255), 
    VILLE_CLIENT VARCHAR2(200),
    CP_CLIENT VARCHAR2(20), 
    PAYS_CLIENT VARCHAR2(100),
    GENRE_CLIENT VARCHAR2(16), 
    EMAIL_CLIENT VARCHAR2(255), 
    TEL_CLIENT VARCHAR2(15), 
    DATE_NAISSANCE_CLIENT DATE,
    MDP_CLIENT VARCHAR2(255), 
    DATE_CREATION_CLIENT DATE, 
    IMAGEPATH VARCHAR2(255), 
    ISACTIVE VARCHAR2(1)
    
);

DISCONNECT;
-------------------------------------------------------------------------
--TABLE : DKRM_TYPE_COMPTE - Drilon
-------------------------------------------------------------------------
connect DrilonDMR/DrilonDMR@esigloca;

CREATE TABLE DKRM_TYPE_COMPTE (
    ID_TYPE_COMPTE NUMBER(10) CONSTRAINT pkTYPECOMPTEID PRIMARY KEY,
    NOM_TYPE_COMPTE VARCHAR2(50),
    DESCRIPTION_TYPE_COMPTE VARCHAR2(255),
    ISACTIVE VARCHAR2(1)
);

-------------------------------------------------------------------------
--TABLE : DKRM_COMPTE - Drilon
-------------------------------------------------------------------------

CREATE TABLE DKRM_COMPTE (
    ID_COMPTE NUMBER(10) CONSTRAINT pkCOMPTEID PRIMARY KEY,
    ID_TYPE_COMPTE NUMBER(10),
    ID_CLIENT NUMBER(10),
    SOLDE_COMPTE NUMBER(15, 2),
    STATUT_COMPTE VARCHAR2(32),
    ISACTIVE VARCHAR2(1),
    CONSTRAINT fkCOMPTE_TYPE FOREIGN KEY (ID_TYPE_COMPTE) REFERENCES DKRM_TYPE_COMPTE(ID_TYPE_COMPTE),
    CONSTRAINT fkCOMPTE_CLIENT FOREIGN KEY (ID_CLIENT) REFERENCES DKRM_CLIENT(ID_CLIENT)
);

DISCONNECT;
-----------------------------------------------------------------------------
      --TABLE : DKRM_OBJECTIF - Mihail
-----------------------------------------------------------------------------
connect MihailBRZNT/MihailBRZNT@esigloca;

CREATE TABLE DKRM_OBJECTIF (
    ID_OBJECTIF NUMBER(10) CONSTRAINT pkOBJECTIFID PRIMARY KEY,
    ID_CLIENT NUMBER(10),
    ID_COMPTE NUMBER(10),
    TITRE_OBJECTIF VARCHAR2(255) NOT NULL,
    DESCRIPTION_OBJECTIF VARCHAR2(4000),
    STATUS_OBJECTIF VARCHAR2(32),
    MONTANT_CIBLE_OBJECTIF NUMBER(15, 2),
    MONTANT_COTISER_OBJECTIF NUMBER(15, 2),
    DATE_CREATION_OBJECTIF DATE DEFAULT SYSDATE,
    DATE_FIN_OBJECTIF DATE,
    IMAGEPATH VARCHAR2(255),
    ISACTIVE VARCHAR2(1),
    CONSTRAINT fkOBJECTIF_CLIENT FOREIGN KEY (ID_CLIENT) REFERENCES DKRM_CLIENT(ID_CLIENT),
    CONSTRAINT fkOBJECTIF_COMPTE FOREIGN KEY (ID_COMPTE) REFERENCES DKRM_COMPTE(ID_COMPTE)
);

DISCONNECT;

-------------------------------------------------------------------------
--TABLE : DKRM_CATEGORIE_REVENU - Romain
-------------------------------------------------------------------------
connect RomainCMPNH/RomainCMPNH@esigloca;

CREATE TABLE DKRM_CATEGORIE_REVENU (
    ID_CATEGORIE_REVENU NUMBER(10) CONSTRAINT pkCATEGORIEREVENUID PRIMARY KEY,
    NOM_CATEGORIE_REVENU VARCHAR2(255),
    ISACTIVE VARCHAR2(1)
);

-------------------------------------------------------------------------
--TABLE : DKRM_REVENU - Romain
-------------------------------------------------------------------------

CREATE TABLE DKRM_REVENU (
    ID_REVENU NUMBER(10) CONSTRAINT pkREVENUID PRIMARY KEY,
    ID_COMPTE NUMBER(10),
    ID_CATEGORIE_REVENU NUMBER(10),
    LIBELLE_REVENU VARCHAR2(255),
    MONTANT_REVENU NUMBER(15, 2),
    RECURRENCE_REVENU VARCHAR2(32),
    DATE_REVENU DATE,
    ISACTIVE VARCHAR2(1),
    CONSTRAINT fkREVENU_COMPTE FOREIGN KEY (ID_COMPTE) REFERENCES DKRM_COMPTE(ID_COMPTE),
    CONSTRAINT fkREVENU_CATEGORIE FOREIGN KEY (ID_CATEGORIE_REVENU) REFERENCES DKRM_CATEGORIE_REVENU(ID_CATEGORIE_REVENU)
);

DISCONNECT;

-------------------------------------------------------------------------
--TABLE : DKRM_CATEGORIE_DEPENSE - Karim
-------------------------------------------------------------------------
connect KarimELMZR/KarimELMZR@esigloca;

CREATE TABLE DKRM_CATEGORIE_DEPENSE (
    ID_CATEGORIE_DEPENSE NUMBER(10) CONSTRAINT pkCATEGORIEDEPENSEID PRIMARY KEY,
    NOM_CATEGORIE_DEPENSE VARCHAR2(255),
    ISACTIVE VARCHAR2(1)
);

-------------------------------------------------------------------------
--TABLE : DKRM_ABONNEMENT - Karim
-------------------------------------------------------------------------

CREATE TABLE DKRM_ABONNEMENT (
    ID_ABONNEMENT NUMBER(10) CONSTRAINT pkABONNEMENTID PRIMARY KEY,
    TYPE_ABONNEMENT VARCHAR2(255),
    DESCRIPTION_ABONNEMENT VARCHAR2(4000),
    ISACTIVE VARCHAR2(1)
);

-------------------------------------------------------------------------
--TABLE : DKRM_DEPENSE - Karim
-------------------------------------------------------------------------

CREATE TABLE DKRM_DEPENSE (
    ID_DEPENSE NUMBER(10) CONSTRAINT pkDEPENSEID PRIMARY KEY,
    ID_COMPTE NUMBER(10),
    ID_CATEGORIE_DEPENSE NUMBER(10),
    ID_ABONNEMENT NUMBER(10),
    MONTANT_DEPENSE NUMBER(15, 2),
    DATE_DEPENSE DATE,
    IMAGEPATH VARCHAR2(255),
    ISACTIVE VARCHAR2(1),
    CONSTRAINT fkDEPENSE_COMPTE FOREIGN KEY (ID_COMPTE) REFERENCES DKRM_COMPTE(ID_COMPTE),
    CONSTRAINT fkDEPENSE_CATEGORIE FOREIGN KEY (ID_CATEGORIE_DEPENSE) REFERENCES DKRM_CATEGORIE_DEPENSE(ID_CATEGORIE_DEPENSE),
    CONSTRAINT fkDEPENSE_ABONNEMENT FOREIGN KEY (ID_ABONNEMENT) REFERENCES DKRM_ABONNEMENT(ID_ABONNEMENT)
);

DISCONNECT;




EXIT;
