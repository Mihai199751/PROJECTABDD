/*
-------------------------------------------------------------------------
Script : createUsers.sql
Objet  : Création des utilisateurs
Créateur : Mihail, Drilon, Karim, Romain
-------------------------------------------------------------------------
*/

-- USER SQL

CREATE USER DrilonDMR IDENTIFIED BY "DrilonDMR"  
DEFAULT TABLESPACE MKRD_TS
TEMPORARY TABLESPACE MKRD_TEMP;
PROFILE "Profile_Developpeur";

CREATE USER MihailBRZNT IDENTIFIED BY "MihailBRZNT"  
DEFAULT TABLESPACE MKRD_TS
TEMPORARY TABLESPACE MKRD_TEMP;
PROFILE "Profile_Developpeur";

CREATE USER KarimELMZR IDENTIFIED BY "KarimELMZR"  
DEFAULT TABLESPACE MKRD_TS
TEMPORARY TABLESPACE MKRD_TEMP;
PROFILE "Profile_Developpeur";

CREATE USER RomainCMPNH IDENTIFIED BY "RomainCMPNH" 
DEFAULT TABLESPACE MKRD_TS
TEMPORARY TABLESPACE MKRD_TEMP;
PROFILE "Profile_Developpeur";

-- QUOTAS

ALTER USER DrilonDMR QUOTA UNLIMITED ON MKRD_TS;

ALTER USER MihailBRZNT QUOTA UNLIMITED ON MKRD_TS;

ALTER USER KarimELMZR QUOTA UNLIMITED ON MKRD_TS;

ALTER USER RomainCMPNH QUOTA UNLIMITED ON MKRD_TS;

-- ROLES

GRANT "Developpeur" TO DrilonDMR ;
ALTER USER DrilonDMR DEFAULT ROLE "Developpeur"


GRANT "Developpeur"  TO MihailBRZNT ;
ALTER USER MihailBRZNT DEFAULT ROLE "Developpeur"

GRANT "Developpeur"  TO KarimELMZR ;
ALTER USER KarimELMZR DEFAULT ROLE "Developpeur"

GRANT "Developpeur"  TO RomainCMPNH ;
ALTER USER RomainCMPNH DEFAULT ROLE "Developpeur"

-- SYSTEM PRIVILEGES

EXIT;