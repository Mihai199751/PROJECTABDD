-------------------------------------------------------------------------
--Script : dropTables.sql
--Objet  : Suppression des tables 
-- Créateur : Mihail, Drilon
-------------------------------------------------------------------------

---------------------------------------------
-- Suppression des tables de Mihail
---------------------------------------------

connect MihailBRZNT/MihailBRZNT@esigloca;
DROP TABLE OBJECTIF; 
DROP TABLE CLIENT;   
disconnect;

---------------------------------------------
-- Suppression des tables de Karim
---------------------------------------------

connect KarimELMZR/KarimELMZR@esigloca;
DROP TABLE DEPENSE;                
DROP TABLE ABONNEMENT;             
DROP TABLE CATEGORIE_DEPENSE;      
disconnect;

---------------------------------------------
-- Suppression des tables de Drilon
---------------------------------------------

connect DrilonDMR/DrilonDMR@esigloca;
DROP TABLE COMPTE;                 
DROP TABLE TYPE_COMPTE;            
disconnect;

---------------------------------------------
-- Suppression des tables de Romain
---------------------------------------------

connect RomainCMPNH/RomainCMPNH@esigloca;
DROP TABLE REVENU;                 
DROP TABLE CATEGORIE_REVENU;       
disconnect;

EXIT;
