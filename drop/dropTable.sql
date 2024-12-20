-------------------------------------------------------------------------
--Script : dropTable.sql
--Objet  : Suppression des tables 
-- Créateur : MIHAIL
-------------------------------------------------------------------------

-------------------------------------------------------------------------
-- Suppression table de Mihail
-------------------------------------------------------------------------

connect MihailBRZNT/MihailBRZNT@esigloca;
DROP TABLE CLIENT;
DROP TABLE OBJECTIF;
disconnect;
-------------------------------------------------------------------------
-- Suppression table de KARIM
-------------------------------------------------------------------------
connect KarimELMZR/KarimELMZR@esigloca;
DROP TABLE DEPENSE;
DROP TABLE ABONNEMENT;
DROP TABLE CATEGORIE_DEPANSE;
disconnect;
-------------------------------------------------------------------------
-- Suppression table de DRILLON
-------------------------------------------------------------------------
connect DrilonDMR/DrilonDMR@esigloca;
DROP TABLE TYPE_COMPTE;
DROP TABLE COMPTE;
disconnect;
-------------------------------------------------------------------------
-- Suppression table de ROMAIN
-------------------------------------------------------------------------
connect RomainCMPNH/RomainCMPNH@esigloca;
DROP TABLE TYPE_COMPTE;
DROP TABLE COMPTE;
disconnect;

EXIT;