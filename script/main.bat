@ECHO OFF
ECHO
ECHO
ECHO ██╗  ██╗███████╗    ██████╗ ██████╗     ███╗   ███╗    ███╗   ██╗██████╗ 
ECHO ██║ ██╔╝██╔════╝    ██╔═══╝ ██╔══██╗    ████╗ ████║    ████╗  ██║██╔══██╗
ECHO █████╔╝ █████╗      █████╗  ██████╔╝    ██╔████╔██║    ██╔██╗ ██║██║  ██║
ECHO ██╔═██╗ ██╔══╝      ██╔══╝  ██╔═══╝     ██║╚██╔╝██║    ██║╚██╗██║██║  ██║
ECHO ██║  ██╗███████╗    ██║     ██║         ██║ ╚═╝ ██║    ██║ ╚████║██████╔╝
ECHO ╚═╝  ╚═╝╚══════╝    ╚═╝     ╚═╝         ╚═╝     ╚═╝    ╚═╝  ╚═══╝╚═════╝ 
ECHO
PAUSE
ECHO
CLS
:MENU
CLS
ECHO.
ECHO ..........................................................
ECHO Entrez 1 pour DROP | 2 pour CREATE | 3 pour --Quitter--
ECHO ..........................................................
ECHO.
SET /P M=Entrez 1, 2, ou 3 et appuyez sur ENTER:
IF %M%==1 GOTO DROP
IF %M%==2 GOTO CREATE
IF %M%==3 GOTO EOF
:DROP
ECHO LANCEMENT DROP TABLES
CALL VIEWS/drop_views.bat
ECHO ================== >> log.txt
CALL ALTER_TABLES/reset_tables.bat
ECHO ================== >> log.txt
CALL REFERENCES/revoke_refs.bat
ECHO ================== >> log.txt
CALL SYNONYMES/drop_syn.bat
ECHO ================== >> log.txt
CALL TABLES/drop_tables.bat
ECHO ================== >> log.txt
CALL ENVIRONMENT/drop_env.bat
SET /P M=Appuyez sur ENTER pour continuer:
GOTO MENU