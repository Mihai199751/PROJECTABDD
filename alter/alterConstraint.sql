/*
-------------------------------------------------------------------------
Script : alterConstraint.sql
Objet  : Contraintes des Foreign Keys
Créateur : Mihail, Drilon, Karim, Romain
-------------------------------------------------------------------------
*/

--------------------------------------------------
-- Table : DKRM_OBJECTIF (Mihail)
--------------------------------------------------

connect MihailBRZNT/MihailBRZNT@esigloca;

ALTER TABLE DKRM_OBJECTIF ADD CONSTRAINT fkOBJECTIF_CLIENT FOREIGN KEY (ID_CLIENT) REFERENCES DKRM_CLIENT(ID_CLIENT);
ALTER TABLE DKRM_OBJECTIF ADD CONSTRAINT fkOBJECTIF_COMPTE FOREIGN KEY (ID_COMPTE) REFERENCES DKRM_COMPTE(ID_COMPTE);

DISCONNECT;

--------------------------------------------------
-- Table : DKRM_COMPTE (Drilon)
--------------------------------------------------

connect DrilonDMR/DrilonDMR@esigloca;

ALTER TABLE DKRM_COMPTE ADD CONSTRAINT fkCOMPTE_TYPE FOREIGN KEY (ID_TYPE_COMPTE) REFERENCES DKRM_TYPE_COMPTE(ID_TYPE_COMPTE);
ALTER TABLE DKRM_COMPTE ADD CONSTRAINT fkCOMPTE_CLIENT FOREIGN KEY (ID_CLIENT) REFERENCES DKRM_CLIENT(ID_CLIENT);

DISCONNECT;

--------------------------------------------------
-- Table : DKRM_DEPENSE (Karim)
--------------------------------------------------

connect KarimELMZR/KarimELMZR@esigloca;

ALTER TABLE DKRM_DEPENSE ADD CONSTRAINT fkDEPENSE_COMPTE FOREIGN KEY (ID_COMPTE) REFERENCES DKRM_COMPTE(ID_COMPTE);
ALTER TABLE DKRM_DEPENSE ADD CONSTRAINT fkDEPENSE_CATEGORIE FOREIGN KEY (ID_CATEGORIE_DEPENSE) REFERENCES DKRM_CATEGORIE_DEPENSE(ID_CATEGORIE_DEPENSE);
ALTER TABLE DKRM_DEPENSE ADD CONSTRAINT fkDEPENSE_ABONNEMENT FOREIGN KEY (ID_ABONNEMENT) REFERENCES DKRM_ABONNEMENT(ID_ABONNEMENT);

DISCONNECT;

--------------------------------------------------
-- Table : DKRM_REVENU (Romain)
--------------------------------------------------

connect RomainCMPNH/RomainCMPNH@esigloca;

ALTER TABLE DKRM_REVENU ADD CONSTRAINT fkREVENU_COMPTE FOREIGN KEY (ID_COMPTE) REFERENCES DKRM_COMPTE(ID_COMPTE);
ALTER TABLE DKRM_REVENU ADD CONSTRAINT fkREVENU_CATEGORIE FOREIGN KEY (ID_CATEGORIE_REVENU) REFERENCES DKRM_CATEGORIE_REVENU(ID_CATEGORIE_REVENU);

DISCONNECT;

EXIT;