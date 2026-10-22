-- ==== MFB =======================================================================================================================
-------- Université Sorbonne Paris Nord , Institut Galiée
-------- Master 2 Informatique (M2 EID2 = Exploration Informatique des Données et Décisionnel), Ingénieurs
-- ==== MFB =======================================================================================================================
-- Binome = Groupe de Travail N° xy  : Bxy (Exemple B01, B02,... B09, B10, B11...)
-- ==== MFB =======================================================================================================================
-- Numéro du GroupeDeTravail            --->>>> : Bxy
-- NOM1 PRENOM1                         --->>>> : np1
-- NOM2 PRENOM2...                      --->>>> : np2

-- ====>>> Vos fichiers sql devront s'appeler : Bxy-NomDuFichier.sql            (NomDuFichier = MetaDon)  
-- ==== MFB =======================================================================================================================
-- MFB MFB MFB MFB MFB MFB MFB MFB MFB MFB MFB MFB MFB MFB MFB MFB MFB MFB MFB MFB MFB MFB MFB MFB MFB MFB MFB MFB MFB MFB MFB MFB 
-- ==== MFB =======================================================================================================================

-- ==== MFB =======================================================================================================================
-- MFB MFB MFB MFB MFB MFB MFB MFB MFB MFB MFB MFB MFB MFB MFB MFB MFB MFB MFB MFB MFB MFB MFB MFB MFB MFB MFB MFB MFB MFB MFB MFB 
-- Date dernière mise à jour : 21 octobre 2026
-- Ce fichier contient les métadonnées : Data Dictionaries, Data Reports...
-- Exemple d'application : Gestion des commandes et des factures de l'entreprise ALBABAZONES-CLICKANDCOLLECT
-- ==== MFB =======================================================================================================================

-- ==== MFB =======================================================================================================================
--   Auteur            : Dr. M. Faouzi BOUFARÈS, MCF-HDR Informatique
--   Page Web          : http://www.lipn.univ-paris13.fr/~boufares     
--   Lieu              : Université Sorbonne Paris Nord, Institut Galiée
--                     : Laboratoire LIPN ; MSN         
--   Dates             : 17/09/2026 -- 30/09/2027
----------------------------+++---------------------------------------------------
-------- Enseignant-Chercheur Responsable ; Créateur du cas   
-- M. Faouzi Boufarès,
-- Maître de Conférences en Informatique ; Habilité à Diriger des Recherches
-- Université Sorbonne Paris Nord
-- Laboratory LIPN UMR CNRS 7030
-- 99 avenue Jean-Baptiste Clément
-- F-93430 Villetaneuse, France
-- Office: Y204
-- Phone: [+33 1]/[01] 49 40 xy zt
-- Fax:   [+33 1]/[01] 48 26 07 12
-- Email1: faouzi.boufares@sorbonne-paris-nord.fr
-- Email2: faouzi.boufares@lipn.univ-paris13.fr
-- Web: http://lipn.univ-paris13.fr/~boufares/
----------------------------+++---------------------------------------------------
-- ==== MFB =======================================================================================================================

-- ==== MFB =======================================================================================================================
----==== DATA BASE, DATA WAREHOUSE, MASTER DATA, DATA LAKE, BIG DATA ====---------
--   Structured data;      Semi-structured data;      NON-structured data
--   Données structurées ; Données Semi-structurées ; Données NON structurées

--   More semantics to better manage, use, exploit, explore and correct data
--   Plus de sémantique afin de mieux : 
--             gérer, utiliser, exploiter, explorer et corriger les données
-- ==== MFB =======================================================================================================================
--   Nom du SGBD/DBMS  : ORACLE  (MySQL/MongoDB/PostGRES/SQLServer...)    
-- ==== MFB =======================================================================================================================



-- ==== MFB =======================================================================================================================
-------- La Data ; The Data : Data Management & Machine Learning
-------- La Donnée e-s-t le monde du futur ; Les données et le monde de l'avenir
-------- The Data is the world of the future ;  The Data and the future's world
--       Think DIFFERENTLY, BIGGER and SMARTER ! The Excellence in Data Use !
-- ==== MFB =======================================================================================================================
-------- Bases de Données Avancées = Advanced Databases (BDA)
-------- Entrepôts de Données      = Data Warehouses (DWH, EDON)
-------- Lacs de Données           = Data Lakes (LD, DL)
-------- Référentiel de Données    = Master Data (RD, MD)
-------- Directeur du projet       :  Dr. M. Faouzi Boufarès (MFB)
-- ==== MFB =======================================================================================================================

-- ==== MFB =======================================================================================================================
--   Projet : Gestion des Ventes (Commandes & Factures) ; Marketing : GesCOM-GesFAC
--            Sales Management (Orders & Invoices) 
--            ALBABAZONES-CLICKANDCOLLECT -->>> MFB DATABASE

-- ETES-VOUS Un EXPERT EN DATA ??? Un DATA-LOGUE ??? Un Smart DATAT ??? Un SQL EXPERT ?   
--                  MISSION IMPOSSIBLE OU POSSIBLE ????? !!!!!!!!!!!
--   Votre mission, si vous l'acceptez, est : The Excellence in Data Use !
--   Si vous échouez, nous nierons avoir eu connaissance de vos agissements !

--                  MISSION IMPOSSIBLE OU POSSIBLE ????? !!!!!!!!!!!
--   Votre mission, si vous l'acceptez, est de : Nettoyer et manipluere la BD !
-->>>>>>>>> Détecter et Corriger... les anoamlies
-->>>>>>>>> Enrichir...             les nuls, les valeurs manquantes
-->>>>>>>>> Valider...              la normalisation et les dépendances fonctionnelles
-->>>>>>>>> Eliminer...             les doubles et les similaires
-- ==== MFB =======================================================================================================================

-- ==== MFB =======================================================================================================================
-- Data Management & Machine Learning = Gestion des Données & Apprentissage artificiel
----------------------------+++---------------------------------------------------
--   Data definition              - Défintion des données
--   Data Manipulation (DM)       - Manipulation de Données
--   Data Integration (DI)        - Intégration de Données
--   Master Data Management (MDM) - Gestion des Données de Référence
--   Data Quality Managment (DQM) - Gestion de la qualité des données
--   Data Cleaning                - Nettayage des données
--   Data deduplication           - Elimination des doubles et des similaires
--   Data Sicience                - Sicence des données
-- ==== MFB =======================================================================================================================
-- DBMS -- ETL -- MDM -- DI -- DQ -- ML -- DS
-- Data Base Management System ; Extract-Transform-Load ; Master Data Managment
-- Data Integration ; Data Quality ; Machine Learning ; Data Science
-- ==== MFB =======================================================================================================================
-- ==== MFB =======================================================================================================================
-- Big Data & Clound Computing : Think DIFFERENTLY, BIGGER and SMARTER !
-- The Excellence in Data Use !
-- EID : L'Excellence dans l'Investigation des Données
-- EID : Excellence in Data Investigation
-- ==== MFB =======================================================================================================================

-- ==== MFB =======================================================================================================================
-- Bonjour = Hello = Buongiorno = Guten Tag = ????    = ???? ?????             
-- ==== MFB =======================================================================================================================
-- Salut   = Hi    =  Ciao      = Hi        = ?????   = ????                    
-- ==== MFB =======================================================================================================================

-- SMART DATA --->>> iDQMS = intelligent Data Quality Management System
-- Ingénierie des Données, Science des Données ; Data Engineering, Data Science
-- DATALOG : Ingénieur des Données ; Data Engineer ; Data Sci... Data Scientist

-- ==== MFB =======================================================================================================================

-- ==== MFB =======================================================================================================================
-- ==== MFB =======================================================================================================================

-- Problématique :  mieux gérer, utiliser, exploiter, explorer et corriger les données

--   Intégration de données hétérogènes
--   Traitement des anomalies éventuelles
--      Plusieurs types d'anomalies INTRA-COLONNE ; INTER-COLONNES ; INTER-LIGNES
--      Standardisation/homogénéisation de données hétérogènes
--      Traitement des valeurs invalides syntaxiquement et sémantiquement
--      Traitement des valeurs manquantes (nulles,NULL)
--      Traitement des formes normales (1FN...)
--      Traitement des redondances sémantiques (Dépendances fonctionnelles)
--      Elimination des doubles et similaires

-- ==== MFB =======================================================================================================================
-- ==== MFB =======================================================================================================================
--       SQL 2 --     SQL 2 -- --       SQL 2 --     SQL 2 -- 
--       SQL 2 --     SQL 2 -- --       SQL 2 --     SQL 2 --   
-- ==== MFB =======================================================================================================================

SET SERVEROUTPUT ON;
-- SPOOL fichier.lst ou SPOOL fichier.txt... SPOOL OFF

-- ==== MFB =======================================================================================================================
----- Initialisations : le type/format de la date, la langue...
-- ==== MFB =======================================================================================================================
--  FORMATS de la date :
--  Format de la date : Jour/mois/année ; Permet d initialiser le FORMAT de la date jj/mm/aaaa
--  Exemple  de date  : '19/06/2001' ; le format est 'DD/MM/YYYY'
--  ALTER SESSION SET NLS_DATE_FORMAT = '???? HiHi HaHa' ; ???
--  ALTER SESSION SET NLS_DATE_FORMAT = 'DD/MM/YYYY';
--  ALTER SESSION SET NLS_DATE_FORMAT = 'DAY DD-MONTH-YYYY' ;
--  ALTER SESSION SET NLS_DATE_FORMAT = 'DAY DD-MONTH-YYYY HH24:MI:SS' ;
--  Exemple  de date  : '2001-06-19' ; le format est 'YYYY-MM-DD'
--  ALTER SESSION SET NLS_DATE_FORMAT = 'YYYY-MM-DD' ;

-- ALTER SESSION SET    Quel format de la date ?
ALTER SESSION SET NLS_DATE_FORMAT = 'DD-MM-YYYY' ;

-- ALTER SESSION SET    Quelle langue ?
ALTER SESSION SET NLS_LANGUAGE=ENGLISH;

SET TIMING ON;
SET LINES 1000
SET PAGES 1000

-- ==== MFB =======================================================================================================================

-- ==== MFB =======================================================================================================================
CREATE OR REPLACE PROCEDURE AJOUTECOLONNE (NOMTAB IN VARCHAR2, LeMagasin in VARCHAR2) IS
-- La procédure AJOUTECOLONNE permet d'ajouter à une table "NOMTAB" une colonne qui porte le nom MAGASIN
-- En entrée le nom de la table et le contenu de la colonne 
-- En sortie une nouvelle table dont le nom est le nom de la table en entrée concaténé au _NUMMAG 
-- Le contenu de cette colonne est l'identifiant du magasin NUMMAG
  TableEntrepot VARCHAR2(50);
BEGIN
TableEntrepot := NOMTAB ||'_'|| LeMagasin ;
--EXECUTE IMMEDIATE 'DROP TABLE '|| TableEntrepot;
EXECUTE IMMEDIATE 'CREATE TABLE '|| TableEntrepot ||' AS SELECT * FROM '|| NOMTAB; 
EXECUTE IMMEDIATE 'ALTER TABLE '|| TableEntrepot ||' ADD (MAGASIN VARCHAR2(25))';
EXECUTE IMMEDIATE 'UPDATE '|| TableEntrepot ||' SET MAGASIN = :1' USING LeMagasin;
END;
/
-- ==== MFB =======================================================================================================================
-- L'exécution de la procédure permet donc d'affecter les données à un seul magasin
-- On considère que les données dans les tables CLIENTS, ARTICLES, COMMANDES et DETAILCOM sont rattachées à un magasin 
-- tel que celui identifié par FR01 ou FR02.
-- ==== MFB =======================================================================================================================

-- ==== MFB =======================================================================================================================
-- Définition des données, en SQL2, de : ==== CLIENTS, ARTICLES, COMMANDES et DETAILCOM ==================== DEBUT    =============
-- INTEGRATION DE DONNEES ; DATA INTEGRATION
-- QUALITE DES DONNEES ; DATA QUALITY
-- ==== MFB =======================================================================================================================
-- L'entreprise ALBABAZONES-CLICKANDCOLLECT est une entreprise internationale ayant plusieurs magasins dans le monde
-- ==== MFB =======================================================================================================================

-- ==== MFB =======================================================================================================================
-- Création des données du ============= Magasin FR01 ====== PARIS  FR  ===========================================================
-- Création des données du ============= Magasin FR02 ====== PARIS  FR  ===========================================================
-- Création des données du ============= Magasin TN02 ====== SOUSSE TN  ===========================================================
/*

    +----------------------------------------------------------------------------------------+
    |  +-------------+                 +-------------+                     +--------------+  |                +--------------+
	|  | CLIENTS     |                 | COMMANDES   |      PorterSur      | ARTICLES     |  |  Appartenir à  | MAGASINS     | 
    |  +-------------+    Passer       +-------------+      Détails        +--------------+  |----------------+--------------+
    |  | CODCLI      |-----------------| NUMCOM      |---------------------| REFART       |  |                | NUMMAG       |
    |  | CIVCLI      |0..*            1| CODCLI      |1..*      |      1..*| NOMART       |	 |                | ...          |
    |  | NOMCLI      |                 | DATCOM      |          |          | ...	      |  |                +--------------+
    |  | ...         |                 +-------------+          |          +--------------+  |       
    |  +-------------+                                          |                            |
    |                                                  +------------------+                  |                    
	|                                                  |  DETAILCOM       |                  |                 
    |                                                  +------------------+                  |                        
    |                                                  | NUMCOM           |                  |
	|               				                   | REFART           |                  |
	|												   | QTCOM            |                  |
	|Une BD_i										   | PUART, REMISE    |                  |
	|BD_i est rattachée à un magasin i !               +------------------+                  |
	+----------------------------------------------------------------------------------------+
	
	L'entrepôt de Données sera construit à partir de : BD_FR01 + BD_FR02 + ... + BD_TN02 + ... + 
	
	TOUSCLIENTS    = CLIENTS_FR01   Union CLIENTS_FR02   Union CLIENTS_TN01   Union CLIENTS_TN02   Union ...
	TOUSARTICLES   = ARTICLES_FR01  Union ARTICLES_FR02  Union ARTICLES_TN01  Union ARTICLES_TN02  Union ...
    TOUSCOMMANDES  = COMMANDES_FR01 Union COMMANDES_FR02 Union COMMANDES_TN01 Union COMMANDES_TN02 Union ...
	TOUSDETAILSCOM = DETAILCOM_FR01 Union DETAILCOM_TN02 Union DETAILCOM_TN01 Union DETAILCOM_TN02 Union ...
	
	FAIT_VENTES
	DIM_CLIENTS
	DIM_ARTICLES
	DIM_REGIONS
	DIM_TEMPS
	DIM_MAGASINS
	et éventuellement des HIERARCHIES HIR_...
	
*/
-- ==== MFB =======================================================================================================================
-- Creation d'une nouvelle TABLE/FAIT/VUE/VUE_MATERIALISEE de nom FAIT_VENTES
-- Afin d'analyser en détail les ventes de chaque article (par région, par période, par article, par client...)
-- ==== MFB =======================================================================================================================
/*
Le schéma en étoile : Where is the house ?

       +--------------------+                            +--------------+
	   |     DIM_CLIENTS    |                            | DIM_ARTICLES |
       +--------------------+                            +--------------+
       | IDCLIENT           |                            | IDARTICLE    |
       | CIVILCLIENT        |                            |  ...         |	
       | NOMCLIENT          |                            +--------------+
       | ...                |                                   |
       +--------------------+                            	    |
                |                                               |
                |                                               |
                |                 +--------------------+        |                                     
	            |                 |     FAIT_VENTES    |        |                                    
                |                 +--------------------+        |                                      
                |                 | IDARTICLE          |        |
				+-----------------| IDTIME             |--------+
                                  | IDCLIENT           |   
                                  | IDREGION           |   
                +-----------------|    ...             |--------+
                |                 | QUANTITE           |        |
                |                 | MONTANT ... REMISE |        |
				|				  +--------------------+        |
                |                          |                    |
                |                          |                    |
       +---------------------+    +------------------+    +-----------------+                    
	   |     DIM_TEMPS       |    | DIM_MAGASINS     |    | DIM_REGIONS     +                        
       +---------------------+    +------------------+    +-----------------+                       
       | IDTIME              |    | ...              |    | IDREGION        |                    
       | ....                |    +------------------+    | ...             |                     
       | ...                 |                            +-----------------+                       
       +---------------------+  
TOP 5 des clients
TOP 3 des magasins
TOP 10 des articles ...	   
*/
-- ==== MFB =======================================================================================================================


-- ==== MFB =======================================================================================================================
--======================== Liste des magasins de l'entreprise ALBABAZONES-CLICKANDCOLLECT 
-- ==== MFB =======================================================================================================================
----- >> Table : MAGASINS
-- ==== MFB =======================================================================================================================
DROP TABLE MAGASINS;
CREATE TABLE MAGASINS
(
	NUMMAG		  VARCHAR2(20),
	NOMMAG		  VARCHAR2(50),
	TELMAG		  VARCHAR2(15),
	ADRNUMMAG	  VARCHAR2(10),
	ADRRUEMAG	  VARCHAR2(50),
	ADRCPMAG	  VARCHAR2(10),
	ADRVILLEMAG   VARCHAR2(50),
	ADRPAYSMAG	  VARCHAR2(50), 
	CONTINENTMAG  VARCHAR2(30),  	
	SURFACEMAG    NUMBER(4),  
   	CONSTRAINT PK_MAGASINS 				PRIMARY KEY(NUMMAG),
	CONSTRAINT NN_MAGASINS_NOMMAG		CHECK(NOMMAG      IS NOT NULL),
	CONSTRAINT CK_MAGASINS_ADRVILLEMAG	CHECK(ADRVILLEMAG = UPPER(ADRVILLEMAG)),
	CONSTRAINT CK_MAGASINS_ADRPAYSMAG	CHECK(ADRPAYSMAG  = UPPER(ADRPAYSMAG))
);
-- ==== MFB =======================================================================================================================
----- >> Insertion dans la Table : MAGASINS
-- ==== MFB =======================================================================================================================
INSERT INTO MAGASINS (NUMMAG, NOMMAG, TELMAG, ADRNUMMAG, ADRRUEMAG, ADRCPMAG, ADRVILLEMAG, ADRPAYSMAG, CONTINENTMAG, SURFACEMAG)
VALUES ('FR01',  'BB-BE KIND', '0142586485', '18', 'AVENUE FOCH', '91000', 'PARIS', 'FRANCE', 'EUROPE', 300);
INSERT INTO MAGASINS (NUMMAG, NOMMAG, TELMAG, ADRNUMMAG, ADRRUEMAG, ADRCPMAG, ADRVILLEMAG, ADRPAYSMAG, CONTINENTMAG, SURFACEMAG)
VALUES ('FR02', 'BB-SAY PLEASE', '+33153800796', '21', 'AVENUE D ITALIE', '75013', 'PARIS', 'FRANCE', 'EUROPE', 180);
INSERT INTO MAGASINS (NUMMAG, NOMMAG, TELMAG, ADRNUMMAG, ADRRUEMAG, ADRCPMAG, ADRVILLEMAG, ADRPAYSMAG, CONTINENTMAG, SURFACEMAG)
VALUES ('FR03', 'BB-SAY THANK YOU','0254974410', '77', 'RUE DE LA LIBERTE', '13001', 'MARSEILLE', 'FRANCE', 'EUROPE', 200);
INSERT INTO MAGASINS (NUMMAG, NOMMAG, TELMAG, ADRNUMMAG, ADRRUEMAG, ADRCPMAG, ADRVILLEMAG, ADRPAYSMAG, CONTINENTMAG, SURFACEMAG)
VALUES ('FR04', 'BB-WORK HARD', '0657985246', '8 BIS', 'BOULEVARD FOCH', '93800', 'EPINAY-SUR-SEINE', 'FRANCE', 'EUROPE', 100);
INSERT INTO MAGASINS (NUMMAG, NOMMAG, TELMAG, ADRNUMMAG, ADRRUEMAG, ADRCPMAG, ADRVILLEMAG, ADRPAYSMAG, CONTINENTMAG, SURFACEMAG)
VALUES ('FR05', 'BB-ENCOURAGE EACH OTHER', '0546874430', '55', 'RUE DU JAPON', '94310', 'ORLY-VILLE', 'FRANCE', 'EUROPE', 100);
INSERT INTO MAGASINS (NUMMAG, NOMMAG, TELMAG, ADRNUMMAG, ADRRUEMAG, ADRCPMAG, ADRVILLEMAG, ADRPAYSMAG, CONTINENTMAG, SURFACEMAG)
VALUES ('FR06','BB-SAY I M SORRY', '0549876546', '18', 'BOULEVARD FOCH', '93800', 'LYON', 'FRANCE', 'EUROPE', 120);
INSERT INTO MAGASINS (NUMMAG, NOMMAG, TELMAG, ADRNUMMAG, ADRRUEMAG, ADRCPMAG, ADRVILLEMAG, ADRPAYSMAG, CONTINENTMAG, SURFACEMAG)
VALUES ('FR07', 'BB-LIBERTE EGALITE FRATERNITE', '0466468720', '6', 'RUE DE LA ROSIERE', '75015', 'PARIS', 'FRANCE', 'EUROPE', 100);
INSERT INTO MAGASINS (NUMMAG, NOMMAG, TELMAG, ADRNUMMAG, ADRRUEMAG, ADRCPMAG, ADRVILLEMAG, ADRPAYSMAG, CONTINENTMAG, SURFACEMAG)
VALUES ('FR08', 'BB-GRANDE BLEUE','0254974444', '77', 'QUAI DU SOLEIL', '13001', 'MARSEILLE', 'FRANCE', 'EUROPE', 100);
INSERT INTO MAGASINS (NUMMAG, NOMMAG, TELMAG, ADRNUMMAG, ADRRUEMAG, ADRCPMAG, ADRVILLEMAG, ADRPAYSMAG, CONTINENTMAG, SURFACEMAG)
VALUES ('FR09', 'BB-LABLANCHE','0254975555', '7', 'BD DALGER', '13002', 'MARSEILLE', 'FRANCE', 'EUROPE', 180);
INSERT INTO MAGASINS (NUMMAG, NOMMAG, TELMAG, ADRNUMMAG, ADRRUEMAG, ADRCPMAG, ADRVILLEMAG, ADRPAYSMAG, CONTINENTMAG, SURFACEMAG)
VALUES ('BE01', 'BB-YES WEEK-END', '003257446571', '13', 'RUE DE LA PAIX', '99999', 'BRUXELLES', 'BELGIQUE', 'EUROPE', 100);
INSERT INTO MAGASINS (NUMMAG, NOMMAG, TELMAG, ADRNUMMAG, ADRRUEMAG, ADRCPMAG, ADRVILLEMAG, ADRPAYSMAG, CONTINENTMAG, SURFACEMAG)
VALUES ('BE02', 'BB-FAMILY RULES', '003254987541', '5', 'RUE DE BELLEVILLE', '99999', 'BRUXELLES', 'BELGIQUE', 'EUROPE', 100);
INSERT INTO MAGASINS (NUMMAG, NOMMAG, TELMAG, ADRNUMMAG, ADRRUEMAG, ADRCPMAG, ADRVILLEMAG, ADRPAYSMAG, CONTINENTMAG, SURFACEMAG)
VALUES ('BE03', 'BB-DO YOUR BEST', '0032546713274', '16', 'AVENUE FOCH', '99998', 'ANDERLECK', 'BELGIQUE', 'EUROPE', 120);
INSERT INTO MAGASINS (NUMMAG, NOMMAG, TELMAG, ADRNUMMAG, ADRRUEMAG, ADRCPMAG, ADRVILLEMAG, ADRPAYSMAG, CONTINENTMAG, SURFACEMAG)
VALUES ('BE04', 'BB-FORGIVE OTHERS', '003264787542', '77', 'RUE DE LA LIBERTE', '99998', 'ANDERLECK', 'BELGIQUE', 'EUROPE', 100);
INSERT INTO MAGASINS (NUMMAG, NOMMAG, TELMAG, ADRNUMMAG, ADRRUEMAG, ADRCPMAG, ADRVILLEMAG, ADRPAYSMAG, CONTINENTMAG, SURFACEMAG)
VALUES ('BE05', 'BB-SERVICES', '0032448746842', '134', 'AVENUE DES LILAS', '99999', 'BRUXELLES', 'BELGIQUE', 'EUROPE', 130);
INSERT INTO MAGASINS (NUMMAG, NOMMAG, TELMAG, ADRNUMMAG, ADRRUEMAG, ADRCPMAG, ADRVILLEMAG, ADRPAYSMAG, CONTINENTMAG, SURFACEMAG)
VALUES ('TN01', 'BB-AZIZ M@M@', '009967687745', '1', 'AVENUE DE CARTAGE', '99000', 'TUNIS', 'TUNISIE', 'AFRIQUE', 100);
INSERT INTO MAGASINS (NUMMAG, NOMMAG, TELMAG, ADRNUMMAG, ADRRUEMAG, ADRCPMAG, ADRVILLEMAG, ADRPAYSMAG, CONTINENTMAG, SURFACEMAG)
VALUES ('TN02', '  BB-SALEM ALIK', '+21624888222', '11', 'BOULEVARD DU 14 JANVIER 2011', '4001', 'SOUSSE', 'TUNISIE', 'AFRIQ', 150);
INSERT INTO MAGASINS (NUMMAG, NOMMAG, TELMAG, ADRNUMMAG, ADRRUEMAG, ADRCPMAG, ADRVILLEMAG, ADRPAYSMAG, CONTINENTMAG, SURFACEMAG)
VALUES ('IT01', 'BB-BELLA CIAO    ', '0099241564315', '1', 'AVENUE DE ROME', '99001', 'ROME', 'ITALIE', 'EUROPE', 100);
INSERT INTO MAGASINS (NUMMAG, NOMMAG, TELMAG, ADRNUMMAG, ADRRUEMAG, ADRCPMAG, ADRVILLEMAG, ADRPAYSMAG, CONTINENTMAG, SURFACEMAG)
VALUES ('FR044', 'BB-WORK HARD', '0657985246', '8 BIS', 'BOULEVARD FOCH', '93800', 'EPINAY SUR SEINE', 'FRANCE', 'EUROPE', 100);
INSERT INTO MAGASINS (NUMMAG, NOMMAG, TELMAG, ADRNUMMAG, ADRRUEMAG, ADRCPMAG, ADRVILLEMAG, ADRPAYSMAG, CONTINENTMAG, SURFACEMAG)
VALUES ('CH001', 'BB-ASIA1', '-', '-', '-', '-', 'PEKIN', 'CHINE', 'ASIE', 100);
INSERT INTO MAGASINS (NUMMAG, NOMMAG, TELMAG, ADRNUMMAG, ADRRUEMAG, ADRCPMAG, ADRVILLEMAG, ADRPAYSMAG, CONTINENTMAG, SURFACEMAG)
VALUES ('CH002', 'BB-ASIA2', '-', '-', '-', '-', 'WUHAN', 'CHINE    ', 'ASIE', 100);
INSERT INTO MAGASINS (NUMMAG, NOMMAG, TELMAG, ADRNUMMAG, ADRRUEMAG, ADRCPMAG, ADRVILLEMAG, ADRPAYSMAG, CONTINENTMAG, SURFACEMAG)
VALUES ('UK001', 'BB-BABY1', '-', '-', '-', '-', 'LONDON', 'UNITED-KINGDOM', 'EUROP', 100);
INSERT INTO MAGASINS (NUMMAG, NOMMAG, TELMAG, ADRNUMMAG, ADRRUEMAG, ADRCPMAG, ADRVILLEMAG, ADRPAYSMAG, CONTINENTMAG, SURFACEMAG)
VALUES ('UK002', 'BB-BABY2', '-', '-', '-', '-', 'OXFORD', 'UNITED-KINGDOM    ', 'EUROPE', 100);
INSERT INTO MAGASINS (NUMMAG, NOMMAG, TELMAG, ADRNUMMAG, ADRRUEMAG, ADRCPMAG, ADRVILLEMAG, ADRPAYSMAG, CONTINENTMAG, SURFACEMAG)
VALUES ('UK003', 'BB-BABY3', '-', '-', '-', '-', 'MANCHESTER', 'UNITED-KINGDOM    ', 'EROPE', 100);
COMMIT;
-- ==== MFB =======================================================================================================================
-- Préparation (mise en forme) de l'affichage (taille des lignes et des pages) dans SQLplus
SET LINES 1000
SET PAGES 1000

COLUMN CODCLI       FORMAT A10
COLUMN CIVCLI       FORMAT A12
COLUMN NOMCLI       FORMAT A20
COLUMN PRENCLI      FORMAT A15
COLUMN CATCLI       FORMAT 99
COLUMN ADNCLI       FORMAT A6
COLUMN ADRCLI       FORMAT A40
COLUMN CPCLI        FORMAT A10
COLUMN VILCLI       FORMAT A30
COLUMN PAYSCLI      FORMAT A20
COLUMN MAILCLI      FORMAT A30
COLUMN TELCLI       FORMAT A15
COLUMN KEYWORDSCLI  FORMAT A100

COLUMN NUMCOM  FORMAT A20
COLUMN DATCOM  FORMAT A28
COLUMN REFART  FORMAT A8
COLUMN NOMART  FORMAT A30
COLUMN PVART   FORMAT 999.99
COLUMN QSART   FORMAT 99999
COLUMN PAART   FORMAT 999.99
COLUMN QTCOM   FORMAT 9999
COLUMN PUART   FORMAT 999.99
COLUMN REMISE  FORMAT 999.99

COLUMN NUMMAG		FORMAT A10
COLUMN NOMMAG		FORMAT A30
COLUMN TELMAG		FORMAT A15
COLUMN ADRNUMMAG	FORMAT A10
COLUMN ADRRUEMAG	FORMAT A30
COLUMN ADRCPMAG		FORMAT A10
COLUMN ADRVILLEMAG	FORMAT A20
COLUMN ADRPAYSMAG	FORMAT A20
COLUMN MAILMAG	    FORMAT A30
COLUMN CONTINENTMAG FORMAT A10

COLUMN MAGASIN      FORMAT A10

COLUMN PAART FORMAT A10
COLUMN QSART FORMAT A10
COLUMN PVART FORMAT A10

-- ==== MFB =======================================================================================================================
-- Affichage des données selon les continents, les pays et les villes
SELECT CONTINENTMAG, ADRPAYSMAG, ADRVILLEMAG, NUMMAG, NOMMAG, TELMAG, ADRNUMMAG, ADRRUEMAG, ADRCPMAG, SURFACEMAG
FROM MAGASINS ORDER BY ADRPAYSMAG, ADRVILLEMAG, NUMMAG;
/*
-- >>>>>>>>>>>>>>>>>>>>>>>>>> -- Résultat généré:
CONTINENTM ADRPAYSMAG           ADRVILLEMAG          NUMMAG     NOMMAG                         TELMAG          ADRNUMMAG  ADRRUEMAG                      ADRCPMAG   SURFACEMAG
---------- -------------------- -------------------- ---------- ------------------------------ --------------- ---------- ------------------------------ ---------- ----------
EUROPE     BELGIQUE             ANDERLECK            BE03       BB-DO YOUR BEST                0032546713274   16         AVENUE FOCH                    99998             120
EUROPE     BELGIQUE             ANDERLECK            BE04       BB-FORGIVE OTHERS              003264787542    77         RUE DE LA LIBERTE              99998             100
EUROPE     BELGIQUE             BRUXELLES            BE01       BB-YES WEEK-END                003257446571    13         RUE DE LA PAIX                 99999             100
EUROPE     BELGIQUE             BRUXELLES            BE02       BB-FAMILY RULES                003254987541    5          RUE DE BELLEVILLE              99999             100
EUROPE     BELGIQUE             BRUXELLES            BE05       BB-SERVICES                    0032448746842   134        AVENUE DES LILAS               99999             130
ASIE       CHINE                PEKIN                CH001      BB-ASIA1                       -               -          -                              -                 100
ASIE       CHINE                WUHAN                CH002      BB-ASIA2                       -               -          -                              -                 100
EUROPE     FRANCE               EPINAY SUR SEINE     FR044      BB-WORK HARD                   0657985246      8 BIS      BOULEVARD FOCH                 93800             100
EUROPE     FRANCE               EPINAY-SUR-SEINE     FR04       BB-WORK HARD                   0657985246      8 BIS      BOULEVARD FOCH                 93800             100
EUROPE     FRANCE               LYON                 FR06       BB-SAY I M SORRY               0549876546      18         BOULEVARD FOCH                 93800             120
EUROPE     FRANCE               MARSEILLE            FR03       BB-SAY THANK YOU               0254974410      77         RUE DE LA LIBERTE              13001             200
EUROPE     FRANCE               MARSEILLE            FR08       BB-GRANDE BLEUE                0254974444      77         QUAI DU SOLEIL                 13001             100
EUROPE     FRANCE               MARSEILLE            FR09       BB-LABLANCHE                   0254975555      7          BD DALGER                      13002             180
EUROPE     FRANCE               ORLY-VILLE           FR05       BB-ENCOURAGE EACH OTHER        0546874430      55         RUE DU JAPON                   94310             100
EUROPE     FRANCE               PARIS                FR01       BB-BE KIND                     0142586485      18         AVENUE FOCH                    91000             300
EUROPE     FRANCE               PARIS                FR02       BB-SAY PLEASE                  +33153800796    21         AVENUE D ITALIE                75013             180
EUROPE     FRANCE               PARIS                FR07       BB-LIBERTE EGALITE FRATERNITE  0466468720      6          RUE DE LA ROSIERE              75015             100
EUROPE     ITALIE               ROME                 IT01       BB-BELLA CIAO                  0099241564315   1          AVENUE DE ROME                 99001             100
AFRIQ      TUNISIE              SOUSSE               TN02         BB-SALEM ALIK                +21624888222    11         BOULEVARD DU 14 JANVIER 2011   4001              150
AFRIQUE    TUNISIE              TUNIS                TN01       BB-AZIZ M@M@                   009967687745    1          AVENUE DE CARTAGE              99000             100
EUROP      UNITED-KINGDOM       LONDON               UK001      BB-BABY1                       -               -          -                              -                 100
EROPE      UNITED-KINGDOM       MANCHESTER           UK003      BB-BABY3                       -               -          -                              -                 100
EUROPE     UNITED-KINGDOM       OXFORD               UK002      BB-BABY2                       -               -          -                              -                 100
 23 lignes sélectionnées 
*/

/*
QUE FAIRE pour homogénéiser ?
*/

-- ==== MFB =======================================================================================================================
---------==============>>>>>>>>>>>>>>>>> Les données du magasin FR01 c est celui de Paris en France                                  
-- ==== MFB =======================================================================================================================
DROP TABLE DETAILCOM;
DROP TABLE ARTICLES;
DROP TABLE COMMANDES;
DROP TABLE CLIENTS;
-- ==== MFB =======================================================================================================================
----- >> Table : CLIENTS                                             
-- ==== MFB =======================================================================================================================
CREATE TABLE CLIENTS
(   -- Descriptions des colonnes
	CODCLI		VARCHAR2(20), 
	CIVCLI		VARCHAR2(20),
	NOMCLI		VARCHAR2(50),
	PRENCLI		VARCHAR2(50),
	CATCLI		NUMBER(2),
	ADNCLI		VARCHAR2(10),
	ADRCLI		VARCHAR2(50),
	CPCLI		VARCHAR2(10),
	VILCLI		VARCHAR2(50),
	PAYSCLI		VARCHAR2(50),
	MAILCLI		VARCHAR2(50),
	TELCLI		VARCHAR2(20),
	DATNAISCLI       DATE,
	DPREMCONTACTCLI  DATE,
	OBSCLI		VARCHAR2(200),
	REMCLI		VARCHAR2(200),
	GENRECLI	VARCHAR2(2),
	GSCLI		VARCHAR2(5),
	KEYWORDSCLI  VARCHAR2(100),
	-- Descriptions des contraintes
	CONSTRAINT PK_CLIENTS			    PRIMARY KEY(CODCLI),
	CONSTRAINT CK_CLIENTS_CIVCLI		CHECK(UPPER(CIVCLI)   IN ('MADEMOISELLE', 'MADAME', 'MONSIEUR')),
	CONSTRAINT CK_CLIENTS_CATCLI		CHECK(CATCLI   < 10 ),
	CONSTRAINT NN_CLIENTS_NOMCLI		CHECK(NOMCLI   IS NOT NULL),
	CONSTRAINT NN_CLIENTS_PRENCLI		CHECK(PRENCLI  IS NOT NULL),
	CONSTRAINT NN_CLIENTS_CATCLI		CHECK(CATCLI   IS NOT NULL)
);
-- ==== MFB =======================================================================================================================
----- >> Table : COMMANDES
-- ==== MFB =======================================================================================================================
CREATE TABLE COMMANDES
(
	NUMCOM 		VARCHAR2(20), 
	CODCLI		VARCHAR2(20),
	DATCOM		DATE,
	--NUMFAC      VARCHAR2(10), 
	--ANNULCOM    VARCHAR2(1) DEFAULT 'N',
	--DATPAIEM    DATE,
	CONSTRAINT PK_COMMANDES			 		PRIMARY KEY(NUMCOM),
	CONSTRAINT NN_COMMANDES_DATCOM			CHECK(DATCOM IS NOT NULL),
	CONSTRAINT FK_COMMANDES_CODCLI_CLIENTS	FOREIGN KEY(CODCLI)	REFERENCES CLIENTS(CODCLI) -- ON DELETE CASCADE -- ON DELETE SET NULL
);
-- ==== MFB =======================================================================================================================
----- >> Table : ARTICLES
-- ==== MFB =======================================================================================================================
CREATE TABLE ARTICLES
(
	REFART 		VARCHAR2(20), 
	NOMART		VARCHAR2(50),
	PVART		NUMBER(10, 2),          -- Prix de vente
	QSART		NUMBER(5),              -- Quantité en stock
	PAART		NUMBER(10, 2),          -- Prix d'achat
	CONSTRAINT PK_ARTICLES				PRIMARY KEY(REFART),
	CONSTRAINT NN_ARTICLES_NOMART		CHECK(NOMART IS NOT NULL),
	CONSTRAINT CK_ARTICLES_QSART		CHECK(QSART < 5000)
);
-- ==== MFB =======================================================================================================================
----- >> Table : DETAILCOM
-- ==== MFB =======================================================================================================================
CREATE TABLE DETAILCOM
(
	NUMCOM 		VARCHAR2(20), 
	REFART		VARCHAR2(20),
	QTCOM		NUMBER(3),                  -- Quantité commandée
	PUART		NUMBER(10, 2),              -- PUART = PVART, Prix à la commande
	REMISE		NUMBER(4, 2),
	CONSTRAINT PK_DETAILCOM					PRIMARY KEY(NUMCOM, REFART),
	CONSTRAINT CK_DETAILCOM_QTCOM			CHECK(QTCOM  < 1000),
	CONSTRAINT NN_DETAILCOM_QTCOM			CHECK(QTCOM  IS NOT NULL),
	CONSTRAINT NN_DETAILCOM_PUART			CHECK(PUART  IS NOT NULL),
	CONSTRAINT NN_DETAILCOM_REMISE			CHECK(REMISE IS NOT NULL),
	CONSTRAINT FK_DETAILCOM_NUMCOM_COM		FOREIGN KEY(NUMCOM)	REFERENCES COMMANDES(NUMCOM),    --ON DELETE CASCADE -- ON DELETE SET NULL
	CONSTRAINT FK_DETAILCOM_REFART_ARTICLES	FOREIGN KEY(REFART)	REFERENCES ARTICLES(REFART)      --ON DELETE CASCADE -- ON DELETE SET NULL
);
-- ==== MFB =======================================================================================================================
-- ==== MFB =======================================================================================================================

-- ==== MFB =======================================================================================================================
-- Insertion des données du magasin identifié par FR01  
-- ==== MFB =======================================================================================================================

-- ==== MFB =======================================================================================================================
-- >> Insertion dans la Table : CLIENTS du magasin identifié par FR01  
-- ==== MFB =======================================================================================================================
INSERT INTO CLIENTS (CODCLI, CIVCLI, NOMCLI, PRENCLI, CATCLI, ADNCLI, ADRCLI, CPCLI, VILCLI, PAYSCLI, MAILCLI, TELCLI)
VALUES ('C001', 'Madame', 'CLEMENT', 'EVE', 1, '18', 'BOULEVARD FOCH', '91000', 'EPINAY-SUR-ORGE', 'FRANCE','eve.clement@gmail.com', '+33777889911');

INSERT INTO CLIENTS (CODCLI, CIVCLI, NOMCLI, PRENCLI, CATCLI, ADNCLI, ADRCLI, CPCLI, VILCLI, PAYSCLI, MAILCLI, TELCLI)
VALUES ('C002', 'Madame', 'LESEUL', 'MARIE', 1, '21', 'AVENUE D ITALIE', '75013', 'PARIS', 'FRANCE','marieleseul@yahoo.fr', '0617586565');

INSERT INTO CLIENTS (CODCLI, CIVCLI, NOMCLI, PRENCLI, CATCLI, ADNCLI, ADRCLI, CPCLI, VILCLI, PAYSCLI, MAILCLI, TELCLI)
VALUES ('C003', 'Madame', 'UNIQUE', 'MARINE', 2, '77', 'RUE DE LA LIBERTE', '13001', 'MARSEILLE', 'FRANCE','munique@gmail.com   ', '+33777889922');

INSERT INTO CLIENTS (CODCLI, CIVCLI, NOMCLI, PRENCLI, CATCLI, ADNCLI, ADRCLI, CPCLI, VILCLI, PAYSCLI, MAILCLI, TELCLI)
VALUES ('C004', 'Madame', 'CLEMENCE', 'EVELYNE', 3, '8 BIS', 'BOULEVARD FOCH', '93800', 'EPINAY-SUR-SEINE', 'FRANCE','clemence evelyne@gmail.com', '+33777889933');

INSERT INTO CLIENTS (CODCLI, CIVCLI, NOMCLI, PRENCLI, CATCLI, ADNCLI, ADRCLI, CPCLI, VILCLI, PAYSCLI, MAILCLI, TELCLI)
VALUES ('C005', 'Madame', 'FORT', 'JEANNE', 3, '55', 'RUE DU JAPON', '94310', 'ORLY-VILLE', 'FRANCE','jfort@hotmail.fr', '+33777889944');

INSERT INTO CLIENTS (CODCLI, CIVCLI, NOMCLI, PRENCLI, CATCLI, ADNCLI, ADRCLI, CPCLI, VILCLI, PAYSCLI, MAILCLI, TELCLI)
VALUES ('C006', 'Mademoiselle', 'LE BON', 'CLEMENCE', 1, '18', 'BOULEVARD FOCH', '93800', 'EPINAY-SUR-SEINE', 'FRANCE','clemence.lebon@cfo.fr', '0033777889955');

INSERT INTO CLIENTS (CODCLI, CIVCLI, NOMCLI, PRENCLI, CATCLI, ADNCLI, ADRCLI, CPCLI, VILCLI, PAYSCLI, MAILCLI, TELCLI)
VALUES ('C007', 'Mademoiselle', 'TRAIFOR', 'ALICE', 2, '6', 'RUE DE LA ROSIERE', '75015', 'PARIS', 'FRANCE','   alice.traifor@yahoo.fr', '+33777889966');

INSERT INTO CLIENTS (CODCLI, CIVCLI, NOMCLI, PRENCLI, CATCLI, ADNCLI, ADRCLI, CPCLI, VILCLI, PAYSCLI, MAILCLI, TELCLI)
VALUES ('C008', 'Monsieur', 'VIVANT', 'JEAN-BAPTISTE', 1, '13', 'RUE DE LA PAIX', '93800', 'EPINAY-SUR-SEINE', 'FRANCE','jeanbaptiste@', '0607');

INSERT INTO CLIENTS (CODCLI, CIVCLI, NOMCLI, PRENCLI, CATCLI, ADNCLI, ADRCLI, CPCLI, VILCLI, PAYSCLI, MAILCLI, TELCLI)
VALUES ('C009', 'Monsieur', 'CLEMENCE', 'ALEXANDRE', 1, '5', 'RUE DE BELLEVILLE', '75019', 'PARIS', 'FRANCE','alexandre.clemence@up13.fr', '+33149404071');

INSERT INTO CLIENTS (CODCLI, CIVCLI, NOMCLI, PRENCLI, CATCLI, ADNCLI, ADRCLI, CPCLI, VILCLI, PAYSCLI, MAILCLI, TELCLI)
VALUES ('C010', 'Monsieur', 'TRAIFOR', 'ALEXANDRE', 1, '16', 'AVENUE FOCH', '75016', 'PARIS', 'FRA','alexandre.traifor@up13.fr', '06070809');

INSERT INTO CLIENTS (CODCLI, CIVCLI, NOMCLI, PRENCLI, CATCLI, ADNCLI, ADRCLI, CPCLI, VILCLI, PAYSCLI, MAILCLI, TELCLI)
VALUES ('C011', 'Monsieur', 'PREMIER', 'JOSEPH', 2, '77', 'RUE DE LA LIBERTE', '13001', 'MARCHEILLE', 'FRANCE','josef@premier.fr', '+33777889977');

INSERT INTO CLIENTS (CODCLI, CIVCLI, NOMCLI, PRENCLI, CATCLI, ADNCLI, ADRCLI, CPCLI, VILCLI, PAYSCLI, MAILCLI, TELCLI)
VALUES ('C012', 'Monsieur', 'CLEMENT', 'ADAM', 2, '13', 'AVENUE JEAN BAPTISTE CLEMENT', '9430', 'VILLETANEUSE', 'FRANCE','adam.clement@gmail.com', '+33149404072');

INSERT INTO CLIENTS (CODCLI, CIVCLI, NOMCLI, PRENCLI, CATCLI, ADNCLI, ADRCLI, CPCLI, VILCLI, PAYSCLI, MAILCLI, TELCLI)
VALUES ('C013', 'Monsieur', 'FORT', 'Gabriel', 5, '1', 'AVENUE DE CARTAGE', '99000', 'TUNIS', 'TUNISIE','gabriel.fort@yahoo.fr       ', '+21624801777');

INSERT INTO CLIENTS (CODCLI, CIVCLI, NOMCLI, PRENCLI, CATCLI, ADNCLI, ADRCLI, CPCLI, VILCLI, PAYSCLI, MAILCLI, TELCLI)
VALUES ('C014', 'Monsieur', 'ADAM', 'DAVID', 5, '1', 'AVENUE DE ROME', '99001', 'ROME', 'ITALIE','david.adamé@gmail com', '');

INSERT INTO CLIENTS (CODCLI, CIVCLI, NOMCLI, PRENCLI, CATCLI, ADNCLI, ADRCLI, CPCLI, VILCLI, PAYSCLI, MAILCLI, TELCLI)
VALUES ('C015', 'Monsieur', 'Labsent', 'pala', 7, '1', 'rue des absents', '000', 'BAGDAD', 'IRAQ','pala-labsent@paici', '');

INSERT INTO CLIENTS (CODCLI, CIVCLI, NOMCLI, PRENCLI, CATCLI, ADNCLI, ADRCLI, CPCLI, VILCLI, PAYSCLI, MAILCLI, TELCLI)
VALUES ('C016', 'Madame', 'obsolete', 'kadym', 7, '1', 'rue des anciens', '000', 'CARTHAGE', 'IFRIQIA','inexistant', 'inexistant');

INSERT INTO CLIENTS (CODCLI, CIVCLI, NOMCLI, PRENCLI, CATCLI, ADNCLI, ADRCLI, CPCLI, VILCLI, PAYSCLI, MAILCLI, TELCLI)
VALUES ('C017', 'Madame', 'RAHYM', 'KARYM', 1, '1', 'RUE DES GENTILS', '1000', 'CARTHAGE', 'TUNISIE','karym.rahym@gmail.com', '+21624808444');
COMMIT;
-- ==== MFB =======================================================================================================================
-- >> Insertion dans la Table : COMMANDES du magasin identifié par FR01  
-- ==== MFB =======================================================================================================================
ALTER SESSION SET NLS_DATE_FORMAT = 'DAY DD-MONTH-YYYY' ;
INSERT INTO COMMANDES (NUMCOM, CODCLI, DATCOM) VALUES ('20001AB', 'C012', 'SUNDAY 17-SEPTEMBER-2000');
INSERT INTO COMMANDES (NUMCOM, CODCLI, DATCOM) VALUES ('20002AB', 'C001', 'SUNDAY 17-SEPTEMBER-2000');
INSERT INTO COMMANDES (NUMCOM, CODCLI, DATCOM) VALUES ('20003AB', 'C006', ' MONDAY 16-OCTOBER-2000');
INSERT INTO COMMANDES (NUMCOM, CODCLI, DATCOM) VALUES ('20004AB', 'C006', 'TUESDAY 24-OCTOBER-2000');
INSERT INTO COMMANDES (NUMCOM, CODCLI, DATCOM) VALUES ('20011RB', 'C012', 'MONDAY 22-JANUARY-2001');
INSERT INTO COMMANDES (NUMCOM, CODCLI, DATCOM) VALUES ('20012RB', 'C012', 'TUESDAY 13-MARCH-2001');
INSERT INTO COMMANDES (NUMCOM, CODCLI, DATCOM) VALUES ('20031FB', 'C001', 'FRIDAY 14-FEBRUARY-2003');
INSERT INTO COMMANDES (NUMCOM, CODCLI, DATCOM) VALUES ('20051FB', 'C003', 'FRIDAY 07-JANUARY-2005');
INSERT INTO COMMANDES (NUMCOM, CODCLI, DATCOM) VALUES ('20052FB', 'C003', 'Wednesday 12-JANUARY-2005');
INSERT INTO COMMANDES (NUMCOM, CODCLI, DATCOM) VALUES ('20053FB', 'C012', 'THURSDAY 10-MARCH-2005');
INSERT INTO COMMANDES (NUMCOM, CODCLI, DATCOM) VALUES ('20054FB', 'C007', 'MONDAY 14-MARCH-2005');
INSERT INTO COMMANDES (NUMCOM, CODCLI, DATCOM) VALUES ('20055FB', 'C012', 'FRIDAY 11-MARCH-2005');
INSERT INTO COMMANDES (NUMCOM, CODCLI, DATCOM) VALUES ('20056FB', 'C013', 'MONDAY 14-MARCH-2005');
INSERT INTO COMMANDES (NUMCOM, CODCLI, DATCOM) VALUES ('20057FB', 'C014', 'FRIDAY 11-MARCH-2005');
INSERT INTO COMMANDES (NUMCOM, CODCLI, DATCOM) VALUES ('20061FB', 'C010', 'FRIDAY 14-FEBRUARY-2003');
INSERT INTO COMMANDES (NUMCOM, CODCLI, DATCOM) VALUES ('20062FB', 'C009', 'FRIDAY 14-FEBRUARY-2003');
INSERT INTO COMMANDES (NUMCOM, CODCLI, DATCOM) VALUES ('20065FB', 'C007', 'FRIDAY 14-FEBRUARY-2003');
INSERT INTO COMMANDES (NUMCOM, CODCLI, DATCOM) VALUES ('20066FB', 'C002', 'FRIDAY 14-FEBRUARY-2003');
INSERT INTO COMMANDES (NUMCOM, CODCLI, DATCOM) VALUES ('20067FB', 'C002', 'FRIDAY 14-FEBRUARY-2003');
INSERT INTO COMMANDES (NUMCOM, CODCLI, DATCOM) VALUES ('20068FB', 'C002', 'FRIDAY 14-FEBRUARY-2003');
INSERT INTO COMMANDES (NUMCOM, CODCLI, DATCOM) VALUES ('20069FB', 'C002', 'TUESDAY 30-JANUARY-2007');
INSERT INTO COMMANDES (NUMCOM, CODCLI, DATCOM) VALUES ('20070FB', 'C002', 'TUESDAY 30-JANUARY-2007');
INSERT INTO COMMANDES (NUMCOM, CODCLI, DATCOM) VALUES ('20071FB', 'C013', 'TUESDAY 30-JANUARY-2007');
INSERT INTO COMMANDES (NUMCOM, CODCLI, DATCOM) VALUES ('20072FB', 'C013', 'TUESDAY 30-JANUARY-2007');
INSERT INTO COMMANDES (NUMCOM, CODCLI, DATCOM) VALUES ('20073FB', 'C014', 'TUESDAY 30-JANUARY-2007');
INSERT INTO COMMANDES (NUMCOM, CODCLI, DATCOM) VALUES ('20074FB', 'C014', 'TUESDAY 30-JANUARY-2007');
INSERT INTO COMMANDES (NUMCOM, CODCLI, DATCOM) VALUES ('20184FB', 'C014', 'MONDAY 17-SEPTEMBER-2018');
INSERT INTO COMMANDES (NUMCOM, CODCLI, DATCOM) VALUES ('20181AB', 'C012', 'MONDAY 17-SEPTEMBER-2018');
INSERT INTO COMMANDES (NUMCOM, CODCLI, DATCOM) VALUES ('20201BB', 'C001', 'FRIDAY 13-NOVEMBER-2020');
COMMIT;
-- ==== MFB =======================================================================================================================
-- >> Insertion dans la Table : ARTICLES du magasin identifié par FR01  
-- ==== MFB =======================================================================================================================
INSERT INTO ARTICLES (REFART, NOMART, PVART, QSART, PAART) VALUES ('F1.001', 'SIEGE DE TABLE', 35.00, 10, 26.43);
INSERT INTO ARTICLES (REFART, NOMART, PVART, QSART, PAART) VALUES ('F1.002', 'CASQUE CYCLISTE PROTECTION', 27.00, 20, 20.00);
INSERT INTO ARTICLES (REFART, NOMART, PVART, QSART, PAART) VALUES ('F1.003', 'BONNET PARE-CHOCS', 10.71, 100, 5.71);
INSERT INTO ARTICLES (REFART, NOMART, PVART, QSART, PAART) VALUES ('F1.004', 'STORE DE PROTECTION', 7.43, 5, 4.29);
INSERT INTO ARTICLES (REFART, NOMART, PVART, QSART, PAART) VALUES ('F1.005', 'COINS DE PROTECTION', 4.00, 100, 1.71);
INSERT INTO ARTICLES (REFART, NOMART, PVART, QSART, PAART) VALUES ('F1.006', 'CACHE PRISE DE COURANT', 2.29, 500, 0.71);
INSERT INTO ARTICLES (REFART, NOMART, PVART, QSART, PAART) VALUES ('F1.007', 'BLOQUE PORTE', 5.00, 4, 2.29);
INSERT INTO ARTICLES (REFART, NOMART, PVART, QSART, PAART) VALUES ('F1.008', 'BANDE DE FERMETURE', 3.29, 4, 1.71);
INSERT INTO ARTICLES (REFART, NOMART, PVART, QSART, PAART) VALUES ('F1.009', 'PROTECTION DE FOUR', 37.86, 10, 26.43);
INSERT INTO ARTICLES (REFART, NOMART, PVART, QSART, PAART) VALUES ('F1.010', 'PROTECTION DE CUISINIERE', 30.71, 10, 22.86);
INSERT INTO ARTICLES (REFART, NOMART, PVART, QSART, PAART) VALUES ('F1.011', 'BABY PHONE', 80.71, 3, 45.71);
INSERT INTO ARTICLES (REFART, NOMART, PVART, QSART, PAART) VALUES ('F1.012', 'BRETELLE DE SECURITE', 15.57, 8, 11.43);
INSERT INTO ARTICLES (REFART, NOMART, PVART, QSART, PAART) VALUES ('F1.013', 'HAUSSE-CHAISE', 42.71, 1, 25.43);
INSERT INTO ARTICLES (REFART, NOMART, PVART, QSART, PAART) VALUES ('F1.014', 'COUVRE ROBINETTERIE', 7.86, 12, 4.29);
INSERT INTO ARTICLES (REFART, NOMART, PVART, QSART, PAART) VALUES ('F2.001', 'BARRIERE DE PORTE, EN BOIS', 32.71, 2, 25.71);
INSERT INTO ARTICLES (REFART, NOMART, PVART, QSART, PAART) VALUES ('F2.002', 'BARRIERE DE PORTE, EN METAL', 49.14, 3, 28.43);
INSERT INTO ARTICLES (REFART, NOMART, PVART, QSART, PAART) VALUES ('F2.003', 'BARRIERE DE LIT', 23.71, 10, 15.71);
INSERT INTO ARTICLES (REFART, NOMART, PVART, QSART, PAART) VALUES ('F2.004', 'PORTE-BEBE', 44.86, 6, 34.29);
INSERT INTO ARTICLES (REFART, NOMART, PVART, QSART, PAART) VALUES ('F2.005', 'SIEGE-AUTO COSMOS', 126.86, 2, 71.43);
INSERT INTO ARTICLES (REFART, NOMART, PVART, QSART, PAART) VALUES ('F2.006', 'SIEGE-AUTO EUROSEAT', 121.29, 2, 71.43);
INSERT INTO ARTICLES (REFART, NOMART, PVART, QSART, PAART) VALUES ('FB.001', 'DVD-SPIRIT', 24.90, 2, 12.00);
INSERT INTO ARTICLES (REFART, NOMART, PVART, QSART, PAART) VALUES ('FB.002', 'DVD-SPIDER MAN', 24.90, 2, 12.00);
INSERT INTO ARTICLES (REFART, NOMART, PVART, QSART, PAART) VALUES ('FB.003', 'DVD-SPIDER MAN 2', 24.90, 2, 12.00);
INSERT INTO ARTICLES (REFART, NOMART, PVART, QSART, PAART) VALUES ('WD.001', 'K7 VIDEO-TOY STORY', 21.29, 10, 9.29);
INSERT INTO ARTICLES (REFART, NOMART, PVART, QSART, PAART) VALUES ('WD.002', 'DVD-TOY STORY 2', 34.29, 10, 12.14);
INSERT INTO ARTICLES (REFART, NOMART, PVART, QSART, PAART) VALUES ('WD.003', 'K7 VIDEO-WINNIE L OURSON', 22.86, 5, 9.29);
INSERT INTO ARTICLES (REFART, NOMART, PVART, QSART, PAART) VALUES ('WD.004', 'DVD-FRERES DES OURS', 35.00, 3, 13.00);
INSERT INTO ARTICLES (REFART, NOMART, PVART, QSART, PAART) VALUES ('WD.005', 'K7 VIDEO-LE ROI LION', 30.00, 1, 13.00);
INSERT INTO ARTICLES (REFART, NOMART, PVART, QSART, PAART) VALUES ('WD.006', 'K7 VIDEO-LE ROI LION 2', 30.00, 4, 13.00);
INSERT INTO ARTICLES (REFART, NOMART, PVART, QSART, PAART) VALUES ('WD.007', 'K7 VIDEO-LE ROI LION 3', 30.00, 3, 13.00);
INSERT INTO ARTICLES (REFART, NOMART, PVART, QSART, PAART) VALUES ('PR.001', 'MASQUE CHIRURGICAL', 27.00, 1000, 5.00);
COMMIT;

-- ==== MFB =======================================================================================================================
-- >> Insertion dans la Table : DETAILCOM du magasin identifié par FR01  
-- ==== MFB =======================================================================================================================
INSERT INTO DETAILCOM (NUMCOM, REFART, QTCOM, PUART, REMISE) VALUES ('20001AB', 'F1.001', 2, 35.00, 2.50);
INSERT INTO DETAILCOM (NUMCOM, REFART, QTCOM, PUART, REMISE) VALUES ('20001AB', 'F1.003', 4, 10.71, 3.00);
INSERT INTO DETAILCOM (NUMCOM, REFART, QTCOM, PUART, REMISE) VALUES ('20001AB', 'F1.013', 2, 49.14, 0.00);
INSERT INTO DETAILCOM (NUMCOM, REFART, QTCOM, PUART, REMISE) VALUES ('20001AB', 'WD.001', 1, 21.29, 0.00);
INSERT INTO DETAILCOM (NUMCOM, REFART, QTCOM, PUART, REMISE) VALUES ('20002AB', 'F1.001', 2, 33.00, 3.00);
INSERT INTO DETAILCOM (NUMCOM, REFART, QTCOM, PUART, REMISE) VALUES ('20002AB', 'WD.001', 1, 21.29, 0.00);
INSERT INTO DETAILCOM (NUMCOM, REFART, QTCOM, PUART, REMISE) VALUES ('20002AB', 'WD.002', 1, 34.29, 0.00);
INSERT INTO DETAILCOM (NUMCOM, REFART, QTCOM, PUART, REMISE) VALUES ('20002AB', 'WD.003', 1, 22.86, 0.00);
INSERT INTO DETAILCOM (NUMCOM, REFART, QTCOM, PUART, REMISE) VALUES ('20003AB', 'FB.001', 5, 21.00, 4.00);
INSERT INTO DETAILCOM (NUMCOM, REFART, QTCOM, PUART, REMISE) VALUES ('20003AB', 'WD.002', 1, 34.29, 0.00);
INSERT INTO DETAILCOM (NUMCOM, REFART, QTCOM, PUART, REMISE) VALUES ('20003AB', 'WD.003', 1, 22.86, 0.00);
INSERT INTO DETAILCOM (NUMCOM, REFART, QTCOM, PUART, REMISE) VALUES ('20004AB', 'F1.008', 2, 3.29, 3.50);
INSERT INTO DETAILCOM (NUMCOM, REFART, QTCOM, PUART, REMISE) VALUES ('20004AB', 'WD.001', 1, 21.29, 2.50);
INSERT INTO DETAILCOM (NUMCOM, REFART, QTCOM, PUART, REMISE) VALUES ('20012RB', 'F1.007', 5, 5.00, 3.00);
INSERT INTO DETAILCOM (NUMCOM, REFART, QTCOM, PUART, REMISE) VALUES ('20012RB', 'F1.009', 1, 37.86, 0.00);
INSERT INTO DETAILCOM (NUMCOM, REFART, QTCOM, PUART, REMISE) VALUES ('20012RB', 'FB.003', 5, 24.00, 0.00);
INSERT INTO DETAILCOM (NUMCOM, REFART, QTCOM, PUART, REMISE) VALUES ('20031FB', 'F1.008', 2, 3.29, 3.00);
INSERT INTO DETAILCOM (NUMCOM, REFART, QTCOM, PUART, REMISE) VALUES ('20031FB', 'F2.001', 1, 30.71, 0.00);
INSERT INTO DETAILCOM (NUMCOM, REFART, QTCOM, PUART, REMISE) VALUES ('20031FB', 'FB.001', 5, 21.00, 0.00);
INSERT INTO DETAILCOM (NUMCOM, REFART, QTCOM, PUART, REMISE) VALUES ('20051FB', 'F1.008', 2, 3.29, 0.00);
INSERT INTO DETAILCOM (NUMCOM, REFART, QTCOM, PUART, REMISE) VALUES ('20051FB', 'FB.001', 5, 21.00, 4.00);
INSERT INTO DETAILCOM (NUMCOM, REFART, QTCOM, PUART, REMISE) VALUES ('20052FB', 'F1.001', 2, 35.00, 0.00);
INSERT INTO DETAILCOM (NUMCOM, REFART, QTCOM, PUART, REMISE) VALUES ('20052FB', 'F1.003', 4, 10.71, 0.00);
INSERT INTO DETAILCOM (NUMCOM, REFART, QTCOM, PUART, REMISE) VALUES ('20052FB', 'F1.013', 2, 49.14, 3.50);
INSERT INTO DETAILCOM (NUMCOM, REFART, QTCOM, PUART, REMISE) VALUES ('20052FB', 'WD.001', 1, 21.29, 0.00);
INSERT INTO DETAILCOM (NUMCOM, REFART, QTCOM, PUART, REMISE) VALUES ('20052FB', 'WD.003', 1, 22.86, 0.00);
INSERT INTO DETAILCOM (NUMCOM, REFART, QTCOM, PUART, REMISE) VALUES ('20053FB', 'WD.003', 1, 22.86, 0.00);
INSERT INTO DETAILCOM (NUMCOM, REFART, QTCOM, PUART, REMISE) VALUES ('20054FB', 'WD.003', 1, 22.86, 0.00);
INSERT INTO DETAILCOM (NUMCOM, REFART, QTCOM, PUART, REMISE) VALUES ('20055FB', 'F1.008', 5, 3.29, 0.00);
INSERT INTO DETAILCOM (NUMCOM, REFART, QTCOM, PUART, REMISE) VALUES ('20055FB', 'F1.009', 1, 37.86, 0.00);
INSERT INTO DETAILCOM (NUMCOM, REFART, QTCOM, PUART, REMISE) VALUES ('20055FB', 'F1.011', 2, 80.71, 0.00);
INSERT INTO DETAILCOM (NUMCOM, REFART, QTCOM, PUART, REMISE) VALUES ('20055FB', 'F2.001', 1, 30.71, 0.00);
INSERT INTO DETAILCOM (NUMCOM, REFART, QTCOM, PUART, REMISE) VALUES ('20056FB', 'F1.011', 2, 80.71, 0.00);
INSERT INTO DETAILCOM (NUMCOM, REFART, QTCOM, PUART, REMISE) VALUES ('20057FB', 'F2.001', 1, 30.71, 0.00);
INSERT INTO DETAILCOM (NUMCOM, REFART, QTCOM, PUART, REMISE) VALUES ('20061FB', 'FB.003', 5, 24.00, 0.00);
INSERT INTO DETAILCOM (NUMCOM, REFART, QTCOM, PUART, REMISE) VALUES ('20062FB', 'FB.003', 5, 24.00, 0.00);
INSERT INTO DETAILCOM (NUMCOM, REFART, QTCOM, PUART, REMISE) VALUES ('20065FB', 'FB.003', 5, 24.00, 0.00);
INSERT INTO DETAILCOM (NUMCOM, REFART, QTCOM, PUART, REMISE) VALUES ('20066FB', 'FB.003', 5, 24.00, 0.00);
INSERT INTO DETAILCOM (NUMCOM, REFART, QTCOM, PUART, REMISE) VALUES ('20067FB', 'FB.001', 22, 24.00, 0.00);
INSERT INTO DETAILCOM (NUMCOM, REFART, QTCOM, PUART, REMISE) VALUES ('20068FB', 'FB.001', 22, 24.00, 0.00);
INSERT INTO DETAILCOM (NUMCOM, REFART, QTCOM, PUART, REMISE) VALUES ('20069FB', 'FB.001', 25, 58.00, 0.00);
INSERT INTO DETAILCOM (NUMCOM, REFART, QTCOM, PUART, REMISE) VALUES ('20070FB', 'FB.001', 50, 24.00, 0.00);
INSERT INTO DETAILCOM (NUMCOM, REFART, QTCOM, PUART, REMISE) VALUES ('20071FB', 'FB.001', 37, 27.90, 0.00);
INSERT INTO DETAILCOM (NUMCOM, REFART, QTCOM, PUART, REMISE) VALUES ('20072FB', 'FB.001', 8, 34.00, 0.00);
INSERT INTO DETAILCOM (NUMCOM, REFART, QTCOM, PUART, REMISE) VALUES ('20073FB', 'FB.001', 35, 15.50, 0.00);
INSERT INTO DETAILCOM (NUMCOM, REFART, QTCOM, PUART, REMISE) VALUES ('20074FB', 'FB.001', 12, 19.99, 0.00);
INSERT INTO DETAILCOM (NUMCOM, REFART, QTCOM, PUART, REMISE) VALUES ('20181AB', 'FB.001', 7, 17.77, 0.00);
INSERT INTO DETAILCOM (NUMCOM, REFART, QTCOM, PUART, REMISE) VALUES ('20201BB', 'PR.001', 7, 27.00, 0.00);
COMMIT;

-- ==== MFB =======================================================================================================================
-- Affichage des données, Affichage des lignes dans les tables ======= en SQL 2 ===================================================
-- ==== MFB =======================================================================================================================
SELECT * FROM CLIENTS;
SELECT * FROM COMMANDES;
SELECT * FROM ARTICLES;
SELECT * FROM DETAILCOM;
-- ==== MFB =======================================================================================================================

-- ==== MFB =======================================================================================================================
-- L'exécution de la procédure AJOUTECOLONNE permet donc d'affecter les données à un seul magasin
-- On considère, pour commencer, que les données dans les tables CLIENTS, ARTICLES, COMMANDES et DETAILCOM sont celles du magasin FR01
-- ==== MFB =======================================================================================================================
-- Création des données du magasin FR01 c est celui de Paris en France
DROP TABLE CLIENTS_FR01;
DROP TABLE COMMANDES_FR01;
DROP TABLE DETAILCOM_FR01;
DROP TABLE ARTICLES_FR01;
-- Afin de faciliter notre tâche... on pourrait oublier les historiques 
DROP TABLE HISTORIQUE_MVTS_CLIENTS_FR01;
DROP TABLE HISTORIQUE_MVTS_ARTICLES_FR01;

EXEC AJOUTECOLONNE('CLIENTS', 'FR01');
EXEC AJOUTECOLONNE('COMMANDES', 'FR01');
EXEC AJOUTECOLONNE('DETAILCOM', 'FR01');
EXEC AJOUTECOLONNE('ARTICLES', 'FR01');
-- Afin de faciliter notre tâche... on pourrait oublier les historiques
EXEC AJOUTECOLONNE('HISTORIQUE_MVTS_CLIENTS','FR01');
EXEC AJOUTECOLONNE('HISTORIQUE_MVTS_ARTICLES','FR01');

/*
-- Afficher des données des tables du magasin FR01
-- Corriger le contenu des nouvelles tables; Comment savoir si elles contiennent des anomalies et lesquelles ? 
*/

SELECT 'Liste des client.e.s de l''entreprise ALBABAZONES-CLICKANDCOLLECT' AS CLIENT_E_S FROM DUAL;
SELECT * FROM CLIENTS_FR01;

SELECT 'Liste des commandes faites auprès de l''entreprise ALBABAZONES-CLICKANDCOLLECT' AS COMMANDES FROM DUAL;
SELECT * FROM COMMANDES_FR01;

SELECT 'Liste des articles de l''entreprise ALBABAZONES-CLICKANDCOLLECT' AS ARTICLES FROM DUAL;
SELECT * FROM ARTICLES_FR01;

SELECT 'Liste des détails des commandes faites auprès de l''entreprise ALBABAZONES-CLICKANDCOLLECT' AS DETAILS_DES_COMMANDES FROM DUAL;
SELECT * FROM DETAILCOM_FR01;

SELECT 'Liste des magasins gérés par l''entreprise ALBABAZONES-CLICKANDCOLLECT' AS MAGASINS FROM DUAL;
SELECT * FROM MAGASINS;

-- ==== MFB =======================================================================================================================
---------==============>>>>>>>>>>>>>>>>> Les données du magasin FR02 c est celui de Paris en France                                  
-- ==== MFB =======================================================================================================================
DROP TABLE DETAILCOM;
DROP TABLE ARTICLES;
DROP TABLE COMMANDES;
DROP TABLE CLIENTS;

DESCRIBE CLIENTS;
/*
Nom             NULL     Type          
--------------- -------- ------------- 
CODCLI          NOT NULL VARCHAR2(20)  
CIVCLI                   VARCHAR2(20)  
NOMCLI                   VARCHAR2(50)  
PRENCLI                  VARCHAR2(50)  
CATCLI                   NUMBER(2)     
ADNCLI                   VARCHAR2(10)  
ADRCLI                   VARCHAR2(50)  
CPCLI                    VARCHAR2(10)  
VILCLI                   VARCHAR2(50)  
PAYSCLI                  VARCHAR2(50)  
MAILCLI                  VARCHAR2(50)  
TELCLI                   VARCHAR2(20)  
DATNAISCLI               DATE          
DPREMCONTACTCLI          DATE          
OBSCLI                   VARCHAR2(200) 
REMCLI                   VARCHAR2(200) 
GENRECLI                 VARCHAR2(2)   
GSCLI                    VARCHAR2(5)   
KEYWORDSCLI              VARCHAR2(100) 
*/

/*
Nouvelle description des clients  car les tables sont hétérogènes entre BD_FR01 et BD_FR02

Dans BD_FR01 : CLIENTS (CODCLI, CIVCLI, NOMCLI, PRENCLI, CATCLI, ADNCLI, ADRCLI, CPCLI, VILCLI, PAYSCLI, MAILCLI, TELCLI)

CODCLI, CIVCLI, NOMCLI, PRENCLI, CATCLI, ADNCLI + ADRCLI, CPCLI, VILCLI, PAYSCLI, MAILCLI, TELCLI, DATNAISCLI, DPREMCONTACTCLI, OBSCLI, REMCLI, GENRECLI, GSCLI, KEYWORDSCLI
Dans BD_FR02 :
COL1  , COL2  , COL3  , COL4  ,  COL5 ,  COL6           , COL7 , COL8  , COL9   , COL10  , COL11,  COL12,      COL13,           COL14,  COL15,  COL16,    COL17, COL18,      COL19

CREATE TABLE CLIENTS (COL1 VARCHAR(50), COL2 VARCHAR(50), COL3 VARCHAR(50), COL4 VARCHAR(50), COL5 VARCHAR(50), 
                      Col6 VARCHAR(50), COL7 VARCHAR(50), COL8 VARCHAR(50), COL9 VARCHAR(50), COL10 VARCHAR(50), 
					  COL11 VARCHAR(20), COL12 VARCHAR(50), COL13 VARCHAR(50), COL14 VARCHAR(50), COL15 VARCHAR(50),
					  COL16 VARCHAR(20), COL17 VARCHAR(50), COL18 VARCHAR(50), COL19 VARCHAR(100));
*/		
-- On va travailler sur les 11 premières colonnes				
CREATE TABLE CLIENTS (COL1 VARCHAR(50), COL2 VARCHAR(50), COL3 VARCHAR(50), COL4 VARCHAR(50), 
                      COL5 VARCHAR(50), Col6 VARCHAR(50), 
					  COL7 VARCHAR(50), COL8 VARCHAR(50), COL9 VARCHAR(50), COL10 VARCHAR(50), COL11 VARCHAR(20));

--Nouvelle description des articles
--REFART, NOMART, PVART, QSART, PAART	
--COL1    COL2    COL3   COL4   COL5
CREATE TABLE ARTICLES  (COL1 VARCHAR(50), COL2 VARCHAR(50), COL3 VARCHAR(50), COL4 VARCHAR(50), COL5 VARCHAR(50));

--Nouvelle description des commandes
--NUMCOM, CODCLI, DATCOM
--COL1,   COL2,   COL3
CREATE TABLE COMMANDES (COL1 VARCHAR(50), COL2 VARCHAR(50), COL3 VARCHAR(50));

--Nouvelle description des détails des commandes
--NUMCOM, REFART, QTCOM, PUART, REMISE
--COL1,   COL2 ,  COL3,  COL4,  COL5
CREATE TABLE DETAILCOM (COL1 VARCHAR(50), COL2 VARCHAR(50), COL3 VARCHAR(50), COL4 VARCHAR(50), COL5 VARCHAR(50));

-- ==== MFB =======================================================================================================================
-- Insertion des données du magasin identifié par FR02 
-- ==== MFB =======================================================================================================================
-- >> Insertion dans la Table : CLIENTS du magasin identifié par FR02 
-- Les clients du magasin FR02 c est celui de Paris en France
-- ==== MFB =======================================================================================================================
INSERT INTO CLIENTS VALUES ('2994570', 'Madame', 'RAHMA', 'CLEMENCE', '3', '8, BOULEVARD FOCH', '93800', 'EPINAY-SUR-SEINE', 'FRANCE', 'clemence.rahma@up13.fr', '+33617586565');
INSERT INTO CLIENTS VALUES ('2996100', 'Monsieur', 'CLEMENCE', 'ALEXANDRE', '1', '5, RUE DE BELLEVILLE', '75019', 'PARIS', 'FRANCE', 'alexandre.clemence@up13.fr', '+33617586566');
INSERT INTO CLIENTS VALUES ('2997007', 'Monsieur', 'TRAIFOR', 'ADAM', '2', '13, AVENUE J. B. CLEMENT', '93430', 'VILLETANEUSE', 'FRANCE', 'adam.traifor@up13.fr', '+33617586567');
INSERT INTO CLIENTS VALUES ('2997777', 'Mademoiselle', 'LE BON', 'CLEMENTINE', '1', '18, BOULEVARD FOCH', '93800', 'EPINAY-SUR-SEINE', '', 'clementine.le bon@up13.fr', '+33617586568');
INSERT INTO CLIENTS VALUES ('2998500', 'Monsieur', 'CHEVALIER', 'INES', '1', '13, RUE DE LA PAIX', '93800', 'EPINAY SUR SEINE', 'FRANCE', 'ines.chevalier@up13.fr', '0717586560');
INSERT INTO CLIENTS VALUES ('3001777', 'Monsieur', 'LE BON', 'Adam', '1', '186, AVENUE D''ITALIE', '75013', 'PARIS', 'FRANCE', 'adam.le bon@up13.fr', '0717586561');
INSERT INTO CLIENTS VALUES ('2998505', 'Mademoiselle', 'TRAIFOR', 'ALICE', '2', '6, RUE DE LA ROSIERE', '75015', 'PARIS', '', 'alice.traifor@up13.fr', '0717586562');
INSERT INTO CLIENTS VALUES ('3000106', 'Monsieur', 'HARISSA', 'FORD', '1', '16, AVENUE FOCH', '75016', 'PARIS', 'FRANCE', 'ford.harissa@up13.fr', '0606');
INSERT INTO CLIENTS VALUES ('3000107', 'MO NSIEUR', 'ONRI', 'PANDA', '2', '77, RUE DE LA LIBERTE', '13001', 'MARSEILLE', 'FRANCE', 'panda.onri@up13.fr', '+33');
INSERT INTO CLIENTS VALUES ('3000108', 'Madame', 'EDITE', 'FIAT', '1', '21, AVENUE D ITALIE', '75013', 'PARIS', '', 'fiat.edite@up13.fr', '');
INSERT INTO CLIENTS VALUES ('3000109', 'Madame', 'TOYOTA', 'JACKSON', '3', '55, RUE DU JAPON', '94310', 'ORLY VILLE', 'FRANCE', 'jackson.toyota@up13.fr', '');
INSERT INTO CLIENTS VALUES ('3000110', 'MADAME', 'ONRI', 'HONDA', '2', '77, RUE DE LA LIBERTE', '13001', 'MARSEILLE', 'FRANC', 'honda.onri@up13.fr', '');
INSERT INTO CLIENTS VALUES ('3000111', 'Madame', 'GENEREUX', 'EVE', '1', '18, BOULEVARD KELLERMAN', '75013', 'PARYS', 'FR', 'eve.genereux@up13.fr', '');
INSERT INTO CLIENTS VALUES ('299PPPP', 'Mlle', 'BON', 'CLEMENTINE', '1', '18, BOULEVARD FOCH', '93800', 'EPINAY-SUR-SEINE', 'FRANCE', 'clementine.bon@up13.fr', '+21624801801');
INSERT INTO CLIENTS VALUES ('3001', 'M.', 'LE BON', 'Adam', '1', '186, AVENUE D ITALIE', '75013', 'Paris', '', 'adam.le bon@up13.fr', '');
INSERT INTO CLIENTS VALUES ('3001777', 'Mr', 'LE BON', 'Adem', '1', '186, AVENUE D''ITALIE', '75013', 'PARIS', 'france', 'adem.le  bon@up13.fr', '');
INSERT INTO CLIENTS VALUES ('3001778', 'Mr', 'COURTOIS', 'Bruno', '1', '', '', 'Bruxelles', 'Belgique', 'bruno.courtois@gmail.com', '');
INSERT INTO CLIENTS VALUES ('3001779', 'Monsieur', 'VANDERHOTE', 'Ivan', '1', '', '', 'Bruxelles', 'Belgique', 'ivan.vanderhote@gmail.com', '');
INSERT INTO CLIENTS VALUES ('3001780', 'Monsieur', 'Hollanda', 'Francis', '1', '', '', 'Bruxelles', 'Belgique', 'francis.hollanda@gmail.com', '');
INSERT INTO CLIENTS VALUES ('3001781', 'Monsieur', 'Bernard', 'Hugues', '1', '', '', 'Bruxelles', 'Belgique', 'hugues.bernard@gmail.com', '');
INSERT INTO CLIENTS VALUES ('3001782', 'Monsieur', 'LATIFOU', 'Ilyas', '1', '', '', 'Brusselle', 'Belgic', 'ilyas.latifou@gmail.com', '');
INSERT INTO CLIENTS VALUES ('3001783', 'Madame', 'LALLEMAND', 'Ines', '1', '', '', 'Berlin', 'ALLEMANGNE', 'ines.lallemand@gmail.com', '');
INSERT INTO CLIENTS VALUES ('3001784', 'Monsieur', 'DEUTCH', 'Hans', '1', '', '', 'Berlin', 'ALLEMANGNE', 'hans.deutch@gmail.com', '');
INSERT INTO CLIENTS VALUES ('3001785', 'Madame', 'ALMANI', 'Eve', '1', '', '', 'Berlin', 'ALLEMANGNE', 'eve.almani@gmail.com', '');
INSERT INTO CLIENTS VALUES ('3001786', 'Madame', 'MERQUELLE', 'Ange', '1', '', '', 'Dublin', 'ALEMANGNE', 'angela.merquelle@gmail.com', '');
INSERT INTO CLIENTS VALUES ('4001001', 'Mister', 'TROMPE', 'Ronald', '1', '', '', 'LONDON', 'UNITED-KINGDOM', 'm1@gmail.com        ', '');
INSERT INTO CLIENTS VALUES ('4001002', 'Mister', 'HOBAMA', 'Mbarek', '1', '', '', 'LONDON', 'UNITED-KINGDOM', 'm2@gmail.com        ', '!');
INSERT INTO CLIENTS VALUES ('4001003', 'Mister', 'MOUCHE', 'Gorge', '1', '', '', 'LONDON', 'UNITED-KINGDOM', 'm3@gmail.com     ', '');
INSERT INTO CLIENTS VALUES ('4001004', 'Miss', 'BIDON', 'Jo', '2', '', '', 'MANCHESTER', 'UNITED-KINGDOM', 'm4@gmail.com', '');
INSERT INTO CLIENTS VALUES ('4001005', 'Miss', 'LANGLET', 'Jane', '2', '', '', 'OXFORD', 'ROYAUME-UNI', 'm5@gmail.com', '');
INSERT INTO CLIENTS VALUES ('4001006', 'Miss', 'CLEANTOOON', 'Hilally', '2', '', '', 'OXFORD', 'UNITED-KINGDOM', 'm6@gmail.com', '');
COMMIT;
-- ==== MFB =======================================================================================================================
-- >> Insertion dans la Table : ARTICLES du magasin identifié par FR02 
-- ==== MFB =======================================================================================================================
-- Les articles du magasin FR02 c est celui de Paris en France
INSERT INTO ARTICLES VALUES ('00.37291', 'SIEGE DE TABLE', '55.00 €', '10', '26.43 €');
INSERT INTO ARTICLES VALUES ('00.37325', 'CASQUE CYCLISTE PROTECTION', '27.00 €', '20', '20.00 €');
INSERT INTO ARTICLES VALUES ('00.37341', 'BONNET PARE-CHOCS', '10.71 €', '100', '05.71 €');
INSERT INTO ARTICLES VALUES ('00.37366', 'STORE DE PROTECTION', '07.43 €', '5', '04.29 €');
INSERT INTO ARTICLES VALUES ('00.37408', 'COINS DE PROTECTION', '04.00 €', '100', '01.71 €');
INSERT INTO ARTICLES VALUES ('00.37424', 'CACHE PRISE DE COURANT', '02.29 €', '500', '00.71 €');
INSERT INTO ARTICLES VALUES ('00.37432', 'BLOQUE PORTE', '05.00 €', '4', '02.29 €');
INSERT INTO ARTICLES VALUES ('00.37457', 'BANDE DE FERMETURE', '02.29 €', '4', '01.71 €');
INSERT INTO ARTICLES VALUES ('00.37465', 'PROTECTION DE FOUR', '37.86 €', '10', '26.43 €');
INSERT INTO ARTICLES VALUES ('00.37473', 'PROTECTION DE CUISINIERE', '30.71 €', '10', '22.86 €');
INSERT INTO ARTICLES VALUES ('00.37515', 'BABY PHONE', '80.71 €', '3', '45.71 €');
INSERT INTO ARTICLES VALUES ('00.37630', 'BRETELLE DE SECURITE REMOND', '15.57 €', '8', '11.43 €');
INSERT INTO ARTICLES VALUES ('00.39321', 'HAUSSE-CHAISE', '42.71 €', '1', '25.43 €');
INSERT INTO ARTICLES VALUES ('00.39495', 'COUVRE ROBINETTERIE', '07.86 €', '12', '04.29 €');
INSERT INTO ARTICLES VALUES ('11.36613', 'BARRIERE DE PORTE, EN BOIS', '32.71 €', '2', '25.71 €');
INSERT INTO ARTICLES VALUES ('11.36639', 'BARRIERE DE PORTE, EN METAL', '79.14 €', '3', '28.43 €');
INSERT INTO ARTICLES VALUES ('11.36860', 'BARRIERE DE LIT', '23.71 €', '10', '15.71 €');
INSERT INTO ARTICLES VALUES ('11.37108', 'PORTE-BEBE', '44.86 €', '6', '34.29 €');
INSERT INTO ARTICLES VALUES ('11.37173', 'SIEGE-AUTO COSMOS', '126.86 €', '2', '71.43 €');
INSERT INTO ARTICLES VALUES ('11.37280', 'SIEGE-AUTO EUROSEAT', '121.29 €', '2', '71.43 €');
INSERT INTO ARTICLES VALUES ('WD.001',   'K7 VIDEO - TOY STORY', '21.29 €', '10', '09.29 €');
INSERT INTO ARTICLES VALUES ('WD.002',   'DVD - TOY STORY 2', '34.29 €', '10', '12.14 €');
INSERT INTO ARTICLES VALUES ('WD.003',   'K7 VIDEO - WINNIE L OURSON', '32.86 €', '5', '09.29 €');
INSERT INTO ARTICLES VALUES ('MV.001',   'Jeux Vidéo PS4 SPIDER-MAN', '59.00 €', '250', '19.00 €');
COMMIT;
-- ==== MFB =======================================================================================================================
-- >> Insertion dans la Table : COMMANDES du magasin identifié par FR02 
-- ==== MFB =======================================================================================================================
-- Les commandes du magasin FR02 c est celui de Paris en France
INSERT INTO COMMANDES VALUES ('20150917BB0001', '2997007', '17/09/2015');
INSERT INTO COMMANDES VALUES ('20150917BB0002', '2998500', '17/09/2015');
INSERT INTO COMMANDES VALUES ('20151016BB0001', '2996100', '16/10/2015');
INSERT INTO COMMANDES VALUES ('20151024BB0001', '2996100', '24/10/2015');
INSERT INTO COMMANDES VALUES ('20120156BB0001', '2996100', '16/01/2012');
INSERT INTO COMMANDES VALUES ('20120157BB0007', '2996100', '17/01/2012');
INSERT INTO COMMANDES VALUES ('20180917BB0007', '3001777', '17/09/2018');
COMMIT;
-- ==== MFB =======================================================================================================================
-- >> Insertion dans la Table : DETAILCOM du magasin identifié par FR02 
-- ==== MFB =======================================================================================================================
-- Les commandes du magasin FR02 c est celui de Paris en France
-- Les détails des commandes du magasin FR02 c est celui de Paris en France
INSERT INTO DETAILCOM VALUES ('20150917BB0001', '00.37291', '2', '35.00 €', '10.00%');
INSERT INTO DETAILCOM VALUES ('20150917BB0001', '00.37341', '4', '10.71 €', '10.00%');
INSERT INTO DETAILCOM VALUES ('20150917BB0001', '11.36639', '2', '49.14 €', '00.00%');
INSERT INTO DETAILCOM VALUES ('20150917BB0001', 'WD.001', '1', '21.29 €', '00.00%');
INSERT INTO DETAILCOM VALUES ('20150917BB0002', '00.37291', '2', '35.00 €', '00.00%');
INSERT INTO DETAILCOM VALUES ('20150917BB0002', 'WD.001', '1', '21.29 €', '00.00%');
INSERT INTO DETAILCOM VALUES ('20150917BB0002', 'WD.002', '1', '34.29 €', '00.00%');
INSERT INTO DETAILCOM VALUES ('20150917BB0002', 'WD.003', '1', '22.86 €', '00.00%');
INSERT INTO DETAILCOM VALUES ('20151016BB0001', 'WD.001', '1', '21.29 €', '20.00%');
INSERT INTO DETAILCOM VALUES ('20151016BB0001', 'WD.002', '1', '34.29 €', '00.00%');
INSERT INTO DETAILCOM VALUES ('20151016BB0001', 'WD.003', '1', '22.86 €', '00.00%');
INSERT INTO DETAILCOM VALUES ('20151024BB0001', '00.37457', '2', '03.29 €', '00.00%');
INSERT INTO DETAILCOM VALUES ('20120156BB0001', 'WD.003', '2', '25.00 €', '00.00%');
INSERT INTO DETAILCOM VALUES ('20120157BB0007', 'WD.001', '5', '22.00 €', '50.00%');
INSERT INTO DETAILCOM VALUES ('20120157BB0007', 'WD.002', '10', '34.29 €', '50.00%');
INSERT INTO DETAILCOM VALUES ('20180917BB0007', 'MV.001', '2', '59.00 €', '10.00%');
COMMIT;
-- ==== MFB =======================================================================================================================
-- L'exécution de la procédure AJOUTECOLONNE permet donc d'affecter les données à un seul magasin
-- On considère que les données dans les tables CLIENTS, ARTICLES, COMMANDES et DETAILCOM sont celles du magasin FR02
-- ==== MFB =======================================================================================================================

DROP TABLE CLIENTS_FR02;
DROP TABLE COMMANDES_FR02;
DROP TABLE DETAILCOM_FR02;
DROP TABLE ARTICLES_FR02;
DROP TABLE HISTORIQUE_MVTS_CLIENTS_FR02;
DROP TABLE HISTORIQUE_MVTS_ARTICLES_FR02;

EXEC AJOUTECOLONNE('CLIENTS', 'FR02');
EXEC AJOUTECOLONNE('COMMANDES', 'FR02');
EXEC AJOUTECOLONNE('DETAILCOM', 'FR02');
EXEC AJOUTECOLONNE('ARTICLES', 'FR02');
EXEC AJOUTECOLONNE('HISTORIQUE_MVTS_CLIENTS','FR02');
EXEC AJOUTECOLONNE('HISTORIQUE_MVTS_ARTICLES','FR02');

/*
-- Afficher des données des tables du magasin FR02
-- Corriger le contenu des nouvelles tables; Comment savoir si elles contiennent des anomalies et lesquelles ? 
*/

SELECT 'Liste des client.e.s de l''entreprise ALBABAZONES-CLICKANDCOLLECT' AS CLIENT_E_S FROM DUAL;
SELECT * FROM CLIENTS_FR02;

SELECT 'Liste des commandes faites auprès de l''entreprise ALBABAZONES-CLICKANDCOLLECT' AS COMMANDES FROM DUAL;
SELECT * FROM COMMANDES_FR02;

SELECT 'Liste des articles de l''entreprise ALBABAZONES-CLICKANDCOLLECT' AS ARTICLES FROM DUAL;
SELECT * FROM ARTICLES_FR02;

SELECT 'Liste des détails des commandes faites auprès de l''entreprise ALBABAZONES-CLICKANDCOLLECT' AS DETAILS_DES_COMMANDES FROM DUAL;
SELECT * FROM DETAILCOM_FR02;

-- ==== MFB =======================================================================================================================
---------==============>>>>>>>>>>>>>>>>> Les données du magasin TN02 c est celui de Sousse en Tunisie                                 
-- ==== MFB =======================================================================================================================
DROP TABLE DETAILCOM;
DROP TABLE ARTICLES;
DROP TABLE COMMANDES;
DROP TABLE CLIENTS;

/*
Nouvelle description des clients  car les tables sont hétérogènes entre BD_FR01 et BD_TN02

Dans BD_FR01 : CLIENTS (CODCLI, CIVCLI, NOMCLI, PRENCLI, CATCLI, ADNCLI, ADRCLI, CPCLI, VILCLI, PAYSCLI, MAILCLI, TELCLI)

CODCLI, CIVCLI, NOMCLI, PRENCLI, CATCLI, ADNCLI + ADRCLI, CPCLI, VILCLI, PAYSCLI, MAILCLI, TELCLI, DATNAISCLI, DPREMCONTACTCLI, OBSCLI, REMCLI, GENRECLI, GSCLI, KEYWORDSCLI
Dans BD_TN02 :
COL1  , COL2  , COL3  , COL4  ,  COL5 ,  COL6           , COL7 , COL8  , COL9   , COL10  , COL11,  COL12,      COL13,           COL14,  COL15,  COL16,    COL17, COL18,      COL19

CREATE TABLE CLIENTS (COL1 VARCHAR(50), COL2 VARCHAR(50), COL3 VARCHAR(50), COL4 VARCHAR(50), COL5 VARCHAR(50), 
                      Col6 VARCHAR(50), COL7 VARCHAR(50), COL8 VARCHAR(50), COL9 VARCHAR(50), COL10 VARCHAR(50), 
					  COL11 VARCHAR(20), COL12 VARCHAR(50), COL13 VARCHAR(50), COL14 VARCHAR(50), COL15 VARCHAR(50),
					  COL16 VARCHAR(20), COL17 VARCHAR(50), COL18 VARCHAR(50), COL19 VARCHAR(100));
*/
-- On va travailler sur les 11 premières colonnes
CREATE TABLE CLIENTS (COL1 VARCHAR(50), COL2 VARCHAR(50), COL3 VARCHAR(50), COL4 VARCHAR(50), 
                      COL5 VARCHAR(50), Col6 VARCHAR(50), 
					  COL7 VARCHAR(50), COL8 VARCHAR(50), COL9 VARCHAR(50), COL10 VARCHAR(50), COL11 VARCHAR(20));				
--Nouvelle description des articles
--REFART, NOMART, PVART, QSART, PAART	
--COL1    COL2    COL3   COL4   COL5
CREATE TABLE ARTICLES (COL1 VARCHAR(50), COL2 VARCHAR(50), COL3 VARCHAR(50), COL4 VARCHAR(50), COL5 VARCHAR(50));

--Nouvelle description des commandes
--NUMCOM, CODCLI, DATCOM
--COL1,   COL2,   COL3
CREATE TABLE COMMANDES (COL1 VARCHAR(50), COL2 VARCHAR(50), COL3 VARCHAR(50));

--Nouvelle description des détails des commandes
--NUMCOM, REFART, QTCOM, PUART, REMISE
--COL1,   COL2 ,  COL3,  COL4,  COL5
CREATE TABLE DETAILCOM (COL1 VARCHAR(50), COL2 VARCHAR(50), COL3 VARCHAR(50), COL4 VARCHAR(50), COL5 VARCHAR(50));

-- Insertion des données du magasin identifié par TN02 
-- ==== MFB =======================================================================================================================
-- >> Insertion dans la Table : CLIENTS du magasin identifié par TN02 
-- ==== MFB =======================================================================================================================
/*
Les données sont récupérées au format CSV
EXEC P01_AFFICHAGECSV('CLIENTS', 'COL1,COL2,COL3,COL4,COL5,COL6,COL7,COL8,COL9,COL10,COL11');
SELECT * FROM VCSV;
IL FAUT LES CHARGER AVEC LE SQLLOADER DU SGBD ORACLE
COLCSV                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           
-----------------------------------------------------------------------------------------------------------------------------------
TN0001;Madame;RAHMA;LINA;3;;;TUNIS;TUNISIE;lina.rahma@gmail.com;+21624801801                                                                                                                                                                                                                                                                                                                                                                                                                                                                      
TN0002;Madame;SFAXI;KENZA;3;;;SOUSSE;TUNISIE;kenza.sfaxi@gmail.com;+21624801801                                                                                                                                                                                                                                                                                                                                                                                                                                                                   
TN0003;Madame;GARROU;LINDA;3;;;SOUSSE;Italie;linda.garrou@gmail.com;+21624801801                                                                                                                                                                                                                                                                                                                                                                                                                                                                  
TN0004;Madame;FARES;LEILA;3;;;SOUSSE;TUNISIE;leila.fares@gmail.com;+21624801801                                                                                                                                                                                                                                                                                                                                                                                                                                                                   
TN0005;Madame;FARES;INES;3;;;SOUSSE;TUNISIE;ines.fares@gmail.com;+21624801801                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
TN0006;Madame;FARES;INES;3;;;SOUSSE;TUNISIE;ines.fares@gmail.com;+21624801801                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
TN0007;Madame;FARES;MARIA;3;;;SOUSSE;TUNISIE;maria.fares@gmail.com;+21624801801                                                                                                                                                                                                                                                                                                                                                                                                                                                                   
TN0008;Madame;FARES;INES;1;;;SOUSSE;TUNISIE;ines.fares@gmail.com;+21624801801                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
TN0009;Madame;DIAB;SONIA;2;;;SOUSSE;TUNISIE;sonia.diab@gmail.com;+21624801801                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
TN0010;Madame;MAGREBI;HAYET;1;;;SOUSSE;TUNISIE;hayet.magrebi@gmail.com;+21624801801                                                                                                                                                                                                                                                                                                                                                                                                                                                               
TN0011;Madame;SLIMANE;AZIZA;3;;;SOUSSE;TUNISIE;aziza.slimane@gmail.com;+21624801801                                                                                                                                                                                                                                                                                                                                                                                                                                                               
TN0012;Madame;SLIMANE;BEYYA;2;;;BIZERTE;TUNISIE;beyya.slimane@gmail.com;+21624801801                                                                                                                                                                                                                                                                                                                                                                                                                                                              
TN0013;Madame;SAHLOUL;MERIAM;1;;;BIZERTE;TUNISIE;meriam.sahloul@gmail.com;+21624801801                                                                                                                                                                                                                                                                                                                                                                                                                                                            
TN0014;Monsieur;BONBON;FAOUZI;1;;;BIZERTE;TUNISIE;faouzi.bonbon@gmail.com;+21624801801                                                                                                                                                                                                                                                                                                                                                                                                                                                            
TN0015;Monsieur;ZIZOU;ADAM;1;;;BIZERTE;TUNISIE;adam.zizou@gmail.com;+21624801801                                                                                                                                                                                                                                                                                                                                                                                                                                                                  
TN0016;Monsieur;TOUNSI;ADEM;1;;;BIZERTE;TUNISIE;adem.tounsi@gmail.com;+21624801801                                                                                                                                                                                                                                                                                                                                                                                                                                                                
TN0017;Monsieur;ZATLA;SERGIO;1;;;DJERBA;France;sergio.zatla@gmail.com;+21624801801                                                                                                                                                                                                                                                                                                                                                                                                                                                                
TN0018;Monsieur;ZIDANE;ALI;1;;;HAMMAMET;TUNISIE;ali.zidane@gmail.com;+21624801801                                                                                                                                                                                                                                                                                                                                                                                                                                                                 
TN0019;Monsieur;MOHAMED;MOHAMED;1;;;HAMMAMET;TUNISIE;mohamed.mohamed@gmail.com;+21624801801                                                                                                                                                                                                                                                                                                                                                                                                                                                       
TN0020;Monsieur;LATIFOU;ELIAS;1;;;HAMMAMET;TUNISIE;elias.latifou@gmail.com;+21624801801                                                                                                                                                                                                                                                                                                                                                                                                                                                           
TN0021;Monsieur;LATIFOU;ABDERRAOUF;1;;;HAMMAMET;TUNISIE;abderraouf.latifou@gmail.com;+21624801801                                                                                                                                                                                                                                                                                                                                                                                                                                                 
TN0022;Monsieur;SOUSSI;KARIM;1;;;SOUSSE;TUNISIE;karim.soussi@gmail.com;+21624801801                                                                                                                                                                                                                                                                                                                                                                                                                                                               
TN0023;Monsieur;SOURIR;FATHI;1;;;SOUSSE;TUNISIE;fathi.sourir@gmail.com;+21624801801                                                                                                                                                                                                                                                                                                                                                                                                                                                               
TN0024;Monsieur;BAJBOUJ;BEJI;1;;;SOUSSE;TUNISIE;beji.bajbouj@gmail.com;+21624801801                                                                                                                                                                                                                                                                                                                                                                                                                                                               
TN0025;Monsieur;RAIS;TAFI;1;;;TUNIS;TUNISIE;tafi.rais@gmail.com     ;+21624801801                                                                                                                                                                                                                                                                                                                                                                                                                                                                      
2997007;Monsieur;TRAIFOR;ADAM;2;13, AVENUE J. B. CLEMENT;93430;VILLETANEUSE;FRANCE;adam.traifor@uspn-up13.fr;+33617586567                                                                                                                                                                                                                                                                                                                                                                                                                         
 26 lignes sélectionnées 
*/
-- Les clients du magasin TN02 c est celui de Sousse en Tunisie
INSERT INTO CLIENTS VALUES ('TN0001', 'Madame', 'RAHMA', 'LINA', '3', '', '', 'TUNIS', 'TUNISIE', 'lina.rahma@gmail.com', '+21624801801');
INSERT INTO CLIENTS VALUES ('TN0002', 'Madame', 'SFAXI', 'KENZA', '3', '', '', 'SOUSSE', 'TUNISIE', 'kenza.sfaxi@gmail.com', '+21624801801');
INSERT INTO CLIENTS VALUES ('TN0003', 'Madame', 'GARROU', 'LINDA', '3', '', '', 'SOUSSE', 'Italie', 'linda.garrou@gmail.com', '+21624801801');
INSERT INTO CLIENTS VALUES ('TN0004', 'Madame', 'FARES', 'LEILA', '3', '', '', 'SOUSSE', 'TUNISIE', 'leila.fares@gmail.com', '+21624801801');
INSERT INTO CLIENTS VALUES ('TN0005', 'Madame', 'FARES', 'INES', '3', '', '', 'SOUSSE', 'TUNISIE', 'ines.fares@gmail.com', '+21624801801');
INSERT INTO CLIENTS VALUES ('TN0006', 'Madame', 'FARES', 'INES', '3', '', '', 'SOUSSE', 'TUNISIE', 'ines.fares@gmail.com', '+21624801801');
INSERT INTO CLIENTS VALUES ('TN0007', 'Madame', 'FARES', 'MARIA', '3', '', '', 'SOUSSE', 'TUNISIE', 'maria.fares@gmail.com', '+21624801801');
INSERT INTO CLIENTS VALUES ('TN0008', 'Madame', 'FARES', 'INES', '1', '', '', 'SOUSSE', 'TUNISIE', 'ines.fares@gmail.com', '+21624801801');
INSERT INTO CLIENTS VALUES ('TN0009', 'Madame', 'DIAB', 'SONIA', '2', '', '', 'SOUSSE', 'TUNISIE', 'sonia.diab@gmail.com', '+21624801801');
INSERT INTO CLIENTS VALUES ('TN0010', 'Madame', 'MAGREBI', 'HAYET', '1', '', '', 'SOUSSE', 'TUNISIE', 'hayet.magrebi@gmail.com', '+21624801801');
INSERT INTO CLIENTS VALUES ('TN0011', 'Madame', 'SLIMANE', 'AZIZA', '3', '', '', 'SOUSSE', 'TUNISIE', 'aziza.slimane@gmail.com', '+21624801801');
INSERT INTO CLIENTS VALUES ('TN0012', 'Madame', 'SLIMANE', 'BEYYA', '2', '', '', 'BIZERTE', 'TUNISIE', 'beyya.slimane@gmail.com', '+21624801801');
INSERT INTO CLIENTS VALUES ('TN0013', 'Madame', 'SAHLOUL', 'MERIAM', '1', '', '', 'BIZERTE', 'TUNISIE', 'meriam.sahloul@gmail.com', '+21624801801');
INSERT INTO CLIENTS VALUES ('TN0014', 'Monsieur', 'BONBON', 'FAOUZI', '1', '', '', 'BIZERTE', 'TUNISIE', 'faouzi.bonbon@gmail.com', '+21624801801');
INSERT INTO CLIENTS VALUES ('TN0015', 'Monsieur', 'ZIZOU', 'ADAM', '1', '', '', 'BIZERTE', 'TUNISIE', 'adam.zizou@gmail.com', '+21624801801');
INSERT INTO CLIENTS VALUES ('TN0016', 'Monsieur', 'TOUNSI', 'ADEM', '1', '', '', 'BIZERTE', 'TUNISIE', 'adem.tounsi@gmail.com', '+21624801801');
INSERT INTO CLIENTS VALUES ('TN0017', 'Monsieur', 'ZATLA', 'SERGIO', '1', '', '', 'DJERBA', 'France', 'sergio.zatla@gmail.com', '+21624801801');
INSERT INTO CLIENTS VALUES ('TN0018', 'Monsieur', 'ZIDANE', 'ALI', '1', '', '', 'HAMMAMET', 'TUNISIE', 'ali.zidane@gmail.com', '+21624801801');
INSERT INTO CLIENTS VALUES ('TN0019', 'Monsieur', 'MOHAMED', 'MOHAMED', '1', '', '', 'HAMMAMET', 'TUNISIE', 'mohamed.mohamed@gmail.com', '+21624801801');
INSERT INTO CLIENTS VALUES ('TN0020', 'Monsieur', 'LATIFOU', 'ELIAS', '1', '', '', 'HAMMAMET', 'TUNISIE', 'elias.latifou@gmail.com', '+21624801801');
INSERT INTO CLIENTS VALUES ('TN0021', 'Monsieur', 'LATIFOU', 'ABDERRAOUF', '1', '', '', 'HAMMAMET', 'TUNISIE', 'abderraouf.latifou@gmail.com', '+21624801801');
INSERT INTO CLIENTS VALUES ('TN0022', 'Monsieur', 'SOUSSI', 'KARIM', '1', '', '', 'SOUSSE', 'TUNISIE', 'karim.soussi@gmail.com', '+21624801801');
INSERT INTO CLIENTS VALUES ('TN0023', 'Monsieur', 'SOURIR', 'FATHI', '1', '', '', 'SOUSSE', 'TUNISIE', 'fathi.sourir@gmail.com', '+21624801801');
INSERT INTO CLIENTS VALUES ('TN0024', 'Monsieur', 'BAJBOUJ', 'BEJI', '1', '', '', 'SOUSSE', 'TUNISIE', 'beji.bajbouj@gmail.com', '+21624801801');
INSERT INTO CLIENTS VALUES ('TN0025', 'Monsieur', 'RAIS', 'TAFI', '1', '', '', 'TUNIS', 'TUNISIE', 'tafi.rais@gmail.com     ', '+21624801801');
INSERT INTO CLIENTS VALUES ('2997007', 'Monsieur', 'TRAIFOR', 'ADAM', '2', '13, AVENUE J. B. CLEMENT', '93430', 'VILLETANEUSE', 'FRANCE', 'adam.traifor@uspn-up13.fr', '+33617586567');
COMMIT;
-- ==== MFB =======================================================================================================================
-- >> Insertion dans la Table : ARTICLES du magasin identifié par TN02 
-- ==== MFB =======================================================================================================================
-- Les articles du magasin TN02 c est celui de Sousse en Tunisie
/*
Les données sont récupérées au format CSV
EXEC P01_AFFICHAGECSV('ARTICLES', 'COL1,COL2,COL3,COL4,COL5');
SELECT * FROM VCSV;
IL FAUT LES CHARGER AVEC LE SQLLOADER DU SGBD ORACLE
COLCSV     
-----------------------------------------------------------------------------------------------------------------------------------                                                                                                                                                                                                                                                  
00.37291;SIEGE DE TABLE;79.29 Dt;10;95.15 Dt                                                                                                                                                                                                                  
00.37325;CASQUE CYCLISTE PROTECTION;60.00 Dt;20;72.00 Dt                                                                                                                                                                                                      
00.37341;BONNET PARE-CHOCS;17.13 Dt;100;20.56 Dt                                                                                                                                                                                                              
00.37366;STORE DE PROTECTION;12.87 Dt;5;15.44 Dt                                                                                                                                                                                                              
00.37408;COINS DE PROTECTION;05.13 Dt;100;06.16 Dt                                                                                                                                                                                                            
00.37424;CACHE PRISE DE COURANT;02.13 Dt;500;02.56 Dt                                                                                                                                                                                                         
00.37432;BLOQUE PORTE;06.87 Dt;4;08.24 Dt                                                                                                                                                                                                                     
00.37457;BANDE DE FERMETURE;05.13 Dt;4;06.16 Dt                                                                                                                                                                                                               
00.37465;PROTECTION DE FOUR;79.29 Dt;10;95.15 Dt                                                                                                                                                                                                              
00.37473;PROTECTION DE CUISINIERE;68.58 Dt;10;82.30 Dt                                                                                                                                                                                                        
00.37515;BABY PHONE;137.13 Dt;3;164.56 Dt                                                                                                                                                                                                                     
00.37630;BRETELLE DE SECURITE REMOND;34.29 Dt;8;41.15 Dt                                                                                                                                                                                                      
00.39321;HAUSSE-CHAISE;76.29 Dt;1;91.55 Dt                                                                                                                                                                                                                    
00.39495;COUVRE ROBINETTERIE;12.87 Dt;12;15.44 Dt                                                                                                                                                                                                             
11.36613;BARRIERE DE PORTE, EN BOIS;77.13 Dt;2;92.56 Dt                                                                                                                                                                                                       
11.36639;BARRIERE DE PORTE, EN METAL;85.29 Dt;3;102.35 Dt                                                                                                                                                                                                     
11.36860;BARRIERE DE LIT;47.13 Dt;10;56.56 Dt                                                                                                                                                                                                                 
11.37108;PORTE-BEBE;102.87 Dt;6;123.44 Dt                                                                                                                                                                                                                     
11.37173;SIEGE-AUTO COSMOS;214.29 Dt;2;257.15 Dt                                                                                                                                                                                                              
11.37280;SIEGE-AUTO EUROSEAT;214.29 Dt;2;257.15 Dt                                                                                                                                                                                                            
WD.001;K7 VIDEO - TOY STORY;27.87 Dt;10;33.44 Dt                                                                                                                                                                                                              
WD.002;DVD - TOY STORY 2;36.42 Dt;10;43.70 Dt                                                                                                                                                                                                                 
WD.003;K7 VIDEO - WINNIE L OURSON;27.87 Dt;5;33.44 Dt                                                                                                                                                                                                         
MV.001;Jeu Vidéo PS4 SPIDER-MAN;57.00 Dt;250;68.40 Dt                                                                                                                                                                                                         
 24 lignes sélectionnées 
*/
INSERT INTO ARTICLES VALUES ('00.37291', 'SIEGE DE TABLE', '79.29 Dt', '10', '95.15 Dt');
INSERT INTO ARTICLES VALUES ('00.37325', 'CASQUE CYCLISTE PROTECTION', '60.00 Dt', '20', '72.00 Dt');
INSERT INTO ARTICLES VALUES ('00.37341', 'BONNET PARE-CHOCS', '17.13 Dt', '100', '20.56 Dt');
INSERT INTO ARTICLES VALUES ('00.37366', 'STORE DE PROTECTION', '12.87 Dt', '5', '15.44 Dt');
INSERT INTO ARTICLES VALUES ('00.37408', 'COINS DE PROTECTION', '05.13 Dt', '100', '06.16 Dt');
INSERT INTO ARTICLES VALUES ('00.37424', 'CACHE PRISE DE COURANT', '02.13 Dt', '500', '02.56 Dt');
INSERT INTO ARTICLES VALUES ('00.37432', 'BLOQUE PORTE', '06.87 Dt', '4', '08.24 Dt');
INSERT INTO ARTICLES VALUES ('00.37457', 'BANDE DE FERMETURE', '05.13 Dt', '4', '06.16 Dt');
INSERT INTO ARTICLES VALUES ('00.37465', 'PROTECTION DE FOUR', '79.29 Dt', '10', '95.15 Dt');
INSERT INTO ARTICLES VALUES ('00.37473', 'PROTECTION DE CUISINIERE', '68.58 Dt', '10', '82.30 Dt');
INSERT INTO ARTICLES VALUES ('00.37515', 'BABY PHONE', '137.13 Dt', '3', '164.56 Dt');
INSERT INTO ARTICLES VALUES ('00.37630', 'BRETELLE DE SECURITE REMOND', '34.29 Dt', '8', '41.15 Dt');
INSERT INTO ARTICLES VALUES ('00.39321', 'HAUSSE-CHAISE', '76.29 Dt', '1', '91.55 Dt');
INSERT INTO ARTICLES VALUES ('00.39495', 'COUVRE ROBINETTERIE', '12.87 Dt', '12', '15.44 Dt');
INSERT INTO ARTICLES VALUES ('11.36613', 'BARRIERE DE PORTE, EN BOIS', '77.13 Dt', '2', '92.56 Dt');
INSERT INTO ARTICLES VALUES ('11.36639', 'BARRIERE DE PORTE, EN METAL', '85.29 Dt', '3', '102.35 Dt');
INSERT INTO ARTICLES VALUES ('11.36860', 'BARRIERE DE LIT', '47.13 Dt', '10', '56.56 Dt');
INSERT INTO ARTICLES VALUES ('11.37108', 'PORTE-BEBE', '102.87 Dt', '6', '123.44 Dt');
INSERT INTO ARTICLES VALUES ('11.37173', 'SIEGE-AUTO COSMOS', '214.29 Dt', '2', '257.15 Dt');
INSERT INTO ARTICLES VALUES ('11.37280', 'SIEGE-AUTO EUROSEAT', '214.29 Dt', '2', '257.15 Dt');
INSERT INTO ARTICLES VALUES ('WD.001', 'K7 VIDEO - TOY STORY', '27.87 Dt', '10', '33.44 Dt');
INSERT INTO ARTICLES VALUES ('WD.002', 'DVD - TOY STORY 2', '36.42 Dt', '10', '43.70 Dt');
INSERT INTO ARTICLES VALUES ('WD.003', 'K7 VIDEO - WINNIE L OURSON', '27.87 Dt', '5', '33.44 Dt');
INSERT INTO ARTICLES VALUES ('MV.001', 'Jeu Vidéo PS4 SPIDER-MAN', '57.00 Dt', '250', '68.40 Dt');
COMMIT;
-- ==== MFB =======================================================================================================================
-- >> Insertion dans la Table : COMMANDES du magasin identifié par TN02 
-- ==== MFB =======================================================================================================================
-- Les commandes du magasin TN02 c est celui de Sousse en Tunisie
/*
/*
Les données sont récupérées au format CSV
EXEC P01_AFFICHAGECSV('COMMANDES', 'COL1,COL2,COL3');
SELECT * FROM VCSV;
IL FAUT LES CHARGER AVEC LE SQLLOADER DU SGBD ORACLE
COLCSV   
-----------------------------------------------------------------------------------------------------------------------------------                                                                                                                                              
KTN001;TN0001;17/09/2015                                                                                                                                
KTN002;TN0002;17/09/2015                                                                                                                                
KTN003;TN0003;16/10/2015                                                                                                                                
KTN004;TN0004;24/10/2015                                                                                                                                
KTN005;TN0001;16/01/2012                                                                                                                                
KTN006;TN0022;17/01/2017                                                                                                                                
KTN007;TN0022;17/09/2018                                                                                                                                
KTN011;TN0001;17/09/2019                                                                                                                                
KTN012;TN0001;17/09/2020                                                                                                                                
KTN013;TN0001;17/09/2021                                                                                                                                
KTN014;TN0001;22/02/2022                                                                                                                                
KTN015;TN0001;17/09/2023                                                                                                                                
KTN016;TN0001;06/03/2024                                                                                                                                
 13 lignes sélectionnées 
*/
INSERT INTO COMMANDES VALUES ('KTN001', 'TN0001', '17/09/2015');
INSERT INTO COMMANDES VALUES ('KTN002', 'TN0002', '17/09/2015');
INSERT INTO COMMANDES VALUES ('KTN003', 'TN0003', '16/10/2015');
INSERT INTO COMMANDES VALUES ('KTN004', 'TN0004', '24/10/2015');
INSERT INTO COMMANDES VALUES ('KTN005', 'TN0001', '16/01/2012');
INSERT INTO COMMANDES VALUES ('KTN006', 'TN0022', '17/01/2017');
INSERT INTO COMMANDES VALUES ('KTN007', 'TN0022', '17/09/2018');
INSERT INTO COMMANDES VALUES ('KTN011', 'TN0001', '17/09/2019');
INSERT INTO COMMANDES VALUES ('KTN012', 'TN0001', '17/09/2020');
INSERT INTO COMMANDES VALUES ('KTN013', 'TN0001', '17/09/2021');
INSERT INTO COMMANDES VALUES ('KTN014', 'TN0001', '22/02/2022');
INSERT INTO COMMANDES VALUES ('KTN015', 'TN0001', '17/09/2023');
INSERT INTO COMMANDES VALUES ('KTN016', 'TN0001', '06/03/2024');
COMMIT;
-- ==== MFB =======================================================================================================================
-- >> Insertion dans la Table : DETAILCOM du magasin identifié par TN02 
-- ==== MFB =======================================================================================================================
-- Les détails des commandes du magasin TN02 c est celui de Sousse en Tunisie
/*
Les données sont récupérées au format CSV
EXEC P01_AFFICHAGECSV('DETAILCOM', 'COL1,COL2,COL3,COL4,COL5');
SELECT * FROM VCSV;
IL FAUT LES CHARGER AVEC LE SQLLOADER DU SGBD ORACLE
COLCSV    
-----------------------------------------------------------------------------------------------------------------------------------                                                                                                                                                                                                                                                   
KTN001;00.37291;2;95.15 Dt;30.00%                                                                                                                                                                                                                             
KTN001;00.37341;4;20.56 Dt;30.00%                                                                                                                                                                                                                             
KTN001;11.36639;2;102.35 Dt;30.00%                                                                                                                                                                                                                            
KTN001;WD.001;1;33.44 Dt;30.00%                                                                                                                                                                                                                               
KTN002;00.37291;2;95.15 Dt;30.00%                                                                                                                                                                                                                             
KTN002;WD.001;1;33.44 Dt;30.00%                                                                                                                                                                                                                               
KTN002;WD.002;1;43.70 Dt;30.00%                                                                                                                                                                                                                               
KTN002;WD.003;1;33.44 Dt;30.00%                                                                                                                                                                                                                               
KTN001;WD.001;1;33.44 Dt;30.00%                                                                                                                                                                                                                               
KTN001;WD.002;1;43.70 Dt;30.00%                                                                                                                                                                                                                               
KTN001;WD.003;1;33.44 Dt;30.00%                                                                                                                                                                                                                               
KTN001;00.37457;2;06.16 Dt;30.00%                                                                                                                                                                                                                             
KTN001;WD.003;2;33.44 Dt;30.00%                                                                                                                                                                                                                               
KTN005;WD.001;5;33.44 Dt;30.00%                                                                                                                                                                                                                               
KTN007;WD.002;10;43.70 Dt;30.00%                                                                                                                                                                                                                              
KTN007;MV.001;2;68.40 Dt;30.00%                                                                                                                                                                                                                               
KTN011;MV.001;2;68.40 Dt;30.00%                                                                                                                                                                                                                               
KTN012;MV.001;2;68.40 Dt;30.00%                                                                                                                                                                                                                               
KTN013;MV.001;2;68.40 Dt;30.00%                                                                                                                                                                                                                               
KTN014;MV.001;2;68.40 Dt;50.00%                                                                                                                                                                                                                               
KTN015;MV.001;2;68.40 Dt;50.00%                                                                                                                                                                                                                               
KTN016;MV.001;2;68.40 Dt;50.00%                                                                                                                                                                                                                               
 22 lignes sélectionnées 
*/
INSERT INTO DETAILCOM VALUES ('KTN001', '00.37291', '2', '95.15 Dt', '30.00%');
INSERT INTO DETAILCOM VALUES ('KTN001', '00.37341', '4', '20.56 Dt', '30.00%');
INSERT INTO DETAILCOM VALUES ('KTN001', '11.36639', '2', '102.35 Dt', '30.00%');
INSERT INTO DETAILCOM VALUES ('KTN001', 'WD.001', '1', '33.44 Dt', '30.00%');
INSERT INTO DETAILCOM VALUES ('KTN002', '00.37291', '2', '95.15 Dt', '30.00%');
INSERT INTO DETAILCOM VALUES ('KTN002', 'WD.001', '1', '33.44 Dt', '30.00%');
INSERT INTO DETAILCOM VALUES ('KTN002', 'WD.002', '1', '43.70 Dt', '30.00%');
INSERT INTO DETAILCOM VALUES ('KTN002', 'WD.003', '1', '33.44 Dt', '30.00%');
INSERT INTO DETAILCOM VALUES ('KTN001', 'WD.001', '1', '33.44 Dt', '30.00%');
INSERT INTO DETAILCOM VALUES ('KTN001', 'WD.002', '1', '43.70 Dt', '30.00%');
INSERT INTO DETAILCOM VALUES ('KTN001', 'WD.003', '1', '33.44 Dt', '30.00%');
INSERT INTO DETAILCOM VALUES ('KTN001', '00.37457', '2', '06.16 Dt', '30.00%');
INSERT INTO DETAILCOM VALUES ('KTN001', 'WD.003', '2', '33.44 Dt', '30.00%');
INSERT INTO DETAILCOM VALUES ('KTN005', 'WD.001', '5', '33.44 Dt', '30.00%');
INSERT INTO DETAILCOM VALUES ('KTN007', 'WD.002', '10', '43.70 Dt', '30.00%');
INSERT INTO DETAILCOM VALUES ('KTN007', 'MV.001', '2', '68.40 Dt', '30.00%');
INSERT INTO DETAILCOM VALUES ('KTN011', 'MV.001', '2', '68.40 Dt', '30.00%');
INSERT INTO DETAILCOM VALUES ('KTN012', 'MV.001', '2', '68.40 Dt', '30.00%');
INSERT INTO DETAILCOM VALUES ('KTN013', 'MV.001', '2', '68.40 Dt', '30.00%');
INSERT INTO DETAILCOM VALUES ('KTN014', 'MV.001', '2', '68.40 Dt', '50.00%');
INSERT INTO DETAILCOM VALUES ('KTN015', 'MV.001', '2', '68.40 Dt', '50.00%');
INSERT INTO DETAILCOM VALUES ('KTN016', 'MV.001', '2', '68.40 Dt', '50.00%');
COMMIT;
-- ==== MFB =======================================================================================================================
-- L'exécution de la procédure AJOUTECOLONNE permet donc d'affecter les données à un seul magasin
-- On considère que les données dans les tables CLIENTS, ARTICLES, COMMANDES et DETAILCOM sont celles du magasin TN02
-- ==== MFB =======================================================================================================================
-- Les clients du magasin TN02 c est celui de Sousse en Tunisie
DROP TABLE CLIENTS_TN02;
DROP TABLE COMMANDES_TN02;
DROP TABLE DETAILCOM_TN02;
DROP TABLE ARTICLES_TN02;
DROP TABLE HISTORIQUE_MVTS_CLIENTS_TN02;
DROP TABLE HISTORIQUE_MVTS_ARTICLES_TN02;

EXEC AJOUTECOLONNE('CLIENTS', 'TN02');
EXEC AJOUTECOLONNE('COMMANDES', 'TN02');
EXEC AJOUTECOLONNE('DETAILCOM', 'TN02');
EXEC AJOUTECOLONNE('ARTICLES', 'TN02');
EXEC AJOUTECOLONNE('HISTORIQUE_MVTS_CLIENTS','TN02');
EXEC AJOUTECOLONNE('HISTORIQUE_MVTS_ARTICLES','TN02');

/*
-- Afficher des données des tables du magasin TN02
-- Corriger le contenu des nouvelles tables; Comment savoir si elles contiennent des anomalies et lesquelles ? 
*/

SELECT 'Liste des client.e.s de l''entreprise ALBABAZONES-CLICKANDCOLLECT' AS CLIENT_E_S FROM DUAL;
SELECT * FROM CLIENTS_TN02;

SELECT 'Liste des commandes faites auprès de l''entreprise ALBABAZONES-CLICKANDCOLLECT' AS COMMANDES FROM DUAL;
SELECT * FROM COMMANDES_TN02;

SELECT 'Liste des articles de l''entreprise ALBABAZONES-CLICKANDCOLLECT' AS ARTICLES FROM DUAL;
SELECT * FROM ARTICLES_TN02;

SELECT 'Liste des détails des commandes faites auprès de l''entreprise ALBABAZONES-CLICKANDCOLLECT' AS DETAILS_DES_COMMANDES FROM DUAL;
SELECT * FROM DETAILCOM_TN02;


-- ==== MFB =======================================================================================================================
--======================= INTEGRATION DE DONNEES === ENTREPOTS DE DONNEES =========================================================
-- Assemblez (intégrer, fusionner) dans une nouvelle BDDWBD l'ensemble des tables des différents magasins et tout le nécessaire
-- ==== MFB =======================================================================================================================

-- ==== MFB =======================================================================================================================
-- Assembler (intégrer, fusionner) dans une nouvelle table, de nom TOUSCLIENTS, tous les clients des différents magasins
-- ==== MFB =======================================================================================================================

-- ? ATTENTION à l'hétérogénéité des structures et des types  ????????
DESCRIBE CLIENTS_FR01;
DESCRIBE CLIENTS_FR02;
DESCRIBE CLIENTS_TN02;
/*
-- >>>>>>>>>>>>>>>>>>>>>>>>>> -- Résultat généré:
Nom             NULL Type          
--------------- ---- ------------- 
CODCLI               VARCHAR2(20)  
CIVCLI               VARCHAR2(20)  
NOMCLI               VARCHAR2(50)  
PRENCLI              VARCHAR2(50)  
CATCLI               NUMBER(2)     
ADNCLI               VARCHAR2(10)  
ADRCLI               VARCHAR2(50)  
CPCLI                VARCHAR2(10)  
VILCLI               VARCHAR2(50)  
PAYSCLI              VARCHAR2(50)  
MAILCLI              VARCHAR2(50)  
TELCLI               VARCHAR2(20)  
DATNAISCLI           DATE          
DPREMCONTACTCLI      DATE          
OBSCLI               VARCHAR2(200) 
REMCLI               VARCHAR2(200) 
GENRECLI             VARCHAR2(2)   
GSCLI                VARCHAR2(5)   
KEYWORDSCLI          VARCHAR2(100) 
MAGASIN              VARCHAR2(25)  
Nom     NULL Type         
------- ---- ------------ 
COL1         VARCHAR2(50) 
COL2         VARCHAR2(50) 
COL3         VARCHAR2(50) 
COL4         VARCHAR2(50) 
COL5         VARCHAR2(50) 
COL6         VARCHAR2(50) 
COL7         VARCHAR2(50) 
COL8         VARCHAR2(50) 
COL9         VARCHAR2(50) 
COL10        VARCHAR2(50) 
COL11        VARCHAR2(20) 
MAGASIN      VARCHAR2(25) 
Nom     NULL Type         
------- ---- ------------ 
COL1         VARCHAR2(50) 
COL2         VARCHAR2(50) 
COL3         VARCHAR2(50) 
COL4         VARCHAR2(50) 
COL5         VARCHAR2(50) 
COL6         VARCHAR2(50) 
COL7         VARCHAR2(50) 
COL8         VARCHAR2(50) 
COL9         VARCHAR2(50) 
COL10        VARCHAR2(50) 
COL11        VARCHAR2(20) 
MAGASIN      VARCHAR2(25) 
*/

-- ? ATTENTION à l'hétérogénéité des structures et des types  ????????
SELECT  CODCLI, CIVCLI, NOMCLI, PRENCLI, 
CATCLI, 
ADNCLI,
ADRCLI,
CPCLI, VILCLI, PAYSCLI, MAILCLI, TELCLI, MAGASIN
FROM CLIENTS_FR01;

SELECT  COL1,COL2,COL3,COL4,
CAST(COL5 AS NUMBER(1))          AS COL5_CATCLI,    -- CATCLI  -- From CHAR To Number
SUBSTR(COL6,1,INSTR(COL6,',')-1) AS COL6_ADNCLI,    -- ADNCLI
SUBSTR(COL6,INSTR(COL6,',',-1)+1)AS COL6_ADRCLI ,   -- ADRCLI
COL7,COL8,COL9,COL10,COL11,MAGASIN 
FROM CLIENTS_FR02;

SELECT  COL1,COL2,COL3,COL4,
CAST(COL5 AS NUMBER(1))          AS COL5_CATCLI,    -- CATCLI  -- From CHAR To Number
SUBSTR(COL6,1,INSTR(COL6,',')-1) AS COL6_ADNCLI,    -- ADNCLI
SUBSTR(COL6,INSTR(COL6,',',-1)+1)AS COL6_ADRCLI ,   -- ADRCLI
COL7,COL8,COL9,COL10,COL11,MAGASIN 
FROM CLIENTS_TN02;

-- ==== MFB =======================================================================================================================
-- Première version
-- ==== MFB =======================================================================================================================
DROP TABLE TOUSCLIENTS;
CREATE TABLE TOUSCLIENTS (CODCLI, CIVCLI, NOMCLI, PRENCLI, CATCLI, ADNCLI, ADRCLI, CPCLI, VILCLI, PAYSCLI, MAILCLI, TELCLI, MAGASIN) AS
(
SELECT  CODCLI, CIVCLI, NOMCLI, PRENCLI, 
CATCLI, ADNCLI, ADRCLI, 
CPCLI, VILCLI, PAYSCLI, MAILCLI, TELCLI, MAGASIN
FROM CLIENTS_FR01
UNION ALL 
SELECT  COL1,COL2,COL3,COL4,
CAST(COL5 AS NUMBER(1)),
SUBSTR(COL6,1,INSTR(COL6,',')-1),
SUBSTR(COL6,INSTR(COL6,',',-1)+1),
COL7,COL8,COL9,COL10,COL11,MAGASIN 
FROM CLIENTS_FR02
UNION ALL
SELECT  COL1,COL2,COL3,COL4,
CAST(COL5 AS NUMBER(1)),SUBSTR(COL6,1,INSTR(COL6,',')-1),SUBSTR(COL6,INSTR(COL6,',',-1)+1),
COL7,COL8,COL9,COL10,COL11,MAGASIN 
FROM CLIENTS_TN02
);

DESCRIBE TOUSCLIENTS;
/*
-- >>>>>>>>>>>>>>>>>>>>>>>>>> -- Résultat généré:
Nom     NULL Type         
------- ---- ------------ 
CODCLI       VARCHAR2(50) 
CIVCLI       VARCHAR2(50) 
NOMCLI       VARCHAR2(50) 
PRENCLI      VARCHAR2(50) 
CATCLI       NUMBER       
ADNCLI       VARCHAR2(50) 
ADRCLI       VARCHAR2(50) 
CPCLI        VARCHAR2(50) 
VILCLI       VARCHAR2(50) 
PAYSCLI      VARCHAR2(50) 
MAILCLI      VARCHAR2(50) 
TELCLI       VARCHAR2(20) 
MAGASIN      VARCHAR2(25) 
*/
SELECT * FROM  TOUSCLIENTS;
SELECT MAGASIN, CODCLI, CIVCLI, NOMCLI, PRENCLI, CATCLI, ADNCLI, ADRCLI, CPCLI, VILCLI, PAYSCLI, MAILCLI, TELCLI FROM  TOUSCLIENTS ORDER BY MAGASIN;

-- ==== MFB =======================================================================================================================
-- Deuxième version
-- ==== MFB =======================================================================================================================
DROP TABLE TOUSCLIENTS;
CREATE TABLE TOUSCLIENTS (CODCLI, CIVCLI, NOMCLI, PRENCLI, CATCLI, ADRCLI, CPCLI, VILCLI, PAYSCLI, MAILCLI, TELCLI, MAGASIN) AS 
(
SELECT  CODCLI,CIVCLI,NOMCLI,PRENCLI,
CATCLI,
CONCAT(CONCAT(ADNCLI,', '),ADRCLI) AS ADRCLI,
CPCLI,VILCLI,PAYSCLI,MAILCLI,TELCLI,MAGASIN   
FROM CLIENTS_FR01
UNION ALL 
SELECT  COL1,COL2,COL3,COL4,
CAST(COL5 AS NUMBER(1)),
COL6,
COL7,COL8,COL9,COL10,COL11,MAGASIN 
FROM CLIENTS_FR02
UNION ALL
SELECT  COL1,COL2,COL3,COL4,
CAST(COL5 AS NUMBER(1)),
COL6,
COL7,COL8,COL9,COL10,COL11,MAGASIN 
FROM CLIENTS_TN02);

SELECT * FROM  TOUSCLIENTS;
SELECT MAGASIN, CODCLI, CIVCLI, NOMCLI, PRENCLI, CATCLI, ADRCLI, CPCLI, VILCLI, PAYSCLI, MAILCLI, TELCLI FROM  TOUSCLIENTS ORDER BY MAGASIN;
-- ==== MFB =======================================================================================================================
-- Pour simplifier, nous n'allons pas traiter les mouvements des clients dans le temps
DROP TABLE TOUS_HISTORIQUE_MVT_CLIENTS;
CREATE TABLE TOUS_HISTORIQUE_MVT_CLIENTS AS 
(SELECT 
NOMUSER, TYPEMVT, CODCLI, OLDCIVCLI, OLDNOMCLI, OLDPRENCLI, OLDCATCLI,CONCAT(CONCAT(OLDADNCLI,', '),OLDADRCLI) AS OLDADRCLI, 
OLDCPCLI, OLDVILCLI, OLDPAYSCLI,OLDMAILCLI, OLDTELCLI, NEWCIVCLI, NEWNOMCLI, NEWPRENCLI, NEWCATCLI,
CONCAT(CONCAT(NEWADNCLI,', '),NEWADRCLI) AS NEWADRCLI , NEWCPCLI, NEWVILCLI, NEWPAYSCLI, NEWMAILCLI, NEWTELCLI, DATMVT,MAGASIN 
FROM MOUVEMENTS_CLIENTS_FR01
UNION ALL 
SELECT NOMUSER, TYPEMVT, CODCLI, OLDCIVCLI, OLDNOMCLI, OLDPRENCLI, CAST(OLDCATCLI AS NUMBER(1)), OLDADRCLI, 
OLDCPCLI, OLDVILCLI, OLDPAYSCLI,OLDMAILCLI, OLDTELCLI, NEWCIVCLI, NEWNOMCLI, NEWPRENCLI, CAST(NEWCATCLI AS NUMBER(1)), 
NEWADRCLI, NEWCPCLI, NEWVILCLI, NEWPAYSCLI, NEWMAILCLI, NEWTELCLI, DATMVT,MAGASIN 
FROM MOUVEMENTS_CLIENTS_FR02
UNION ALL
SELECT NOMUSER, TYPEMVT, CODCLI, OLDCIVCLI, OLDNOMCLI, OLDPRENCLI, CAST(OLDCATCLI AS NUMBER(1)), OLDADRCLI, 
OLDCPCLI, OLDVILCLI, OLDPAYSCLI,OLDMAILCLI, OLDTELCLI, NEWCIVCLI, NEWNOMCLI, NEWPRENCLI, CAST(NEWCATCLI AS NUMBER(1)), 
NEWADRCLI, NEWCPCLI, NEWVILCLI, NEWPAYSCLI, NEWMAILCLI, NEWTELCLI, DATMVT,MAGASIN 
FROM MOUVEMENTS_CLIENTS_TN02);
-- ==== MFB =======================================================================================================================
-- Afficher TOUS les clients de tous les magasins
SELECT MAGASIN, CODCLI, CIVCLI, NOMCLI, PRENCLI, CATCLI, ADRCLI, CPCLI, VILCLI, PAYSCLI, MAILCLI, TELCLI FROM  TOUSCLIENTS ORDER BY MAGASIN;
/*
-- >>>>>>>>>>>>>>>>>>>>>>>>>> -- Résultat généré:
MAGASIN    CODCLI     CIVCLI       NOMCLI               PRENCLI         CATCLI ADRCLI                                   CPCLI      VILCLI                         PAYSCLI              MAILCLI                        TELCLI        
---------- ---------- ------------ -------------------- --------------- ------ ---------------------------------------- ---------- ------------------------------ -------------------- ------------------------------ ---------------
FR01       C001       Madame       CLEMENT              EVE                  1 18, BOULEVARD FOCH                       91000      EPINAY-SUR-ORGE                FRANCE               eve.clement@gmail.com          +33777889911   
FR01       C017       Madame       RAHYM                KARYM                1 1, RUE DES GENTILS                       1000       CARTHAGE                       TUNISIE              karym.rahym@gmail.com          +21624808444   
FR01       C003       Madame       UNIQUE               MARINE               2 77, RUE DE LA LIBERTE                    13001      MARSEILLE                      FRANCE               munique@gmail.com              +33777889922   
FR01       C004       Madame       CLEMENCE             EVELYNE              3 8 BIS, BOULEVARD FOCH                    93800      EPINAY-SUR-SEINE               FRANCE               clemence evelyne@gmail.com     +33777889933   
FR01       C005       Madame       FORT                 JEANNE               3 55, RUE DU JAPON                         94310      ORLY-VILLE                     FRANCE               jfort@hotmail.fr               +33777889944   
FR01       C006       Mademoiselle LE BON               CLEMENCE             1 18, BOULEVARD FOCH                       93800      EPINAY-SUR-SEINE               FRANCE               clemence.lebon@cfo.fr          0033777889955  
FR01       C007       Mademoiselle TRAIFOR              ALICE                2 6, RUE DE LA ROSIERE                     75015      PARIS                          FRANCE                  alice.traifor@yahoo.fr      +33777889966   
FR01       C008       Monsieur     VIVANT               JEAN-BAPTISTE        1 13, RUE DE LA PAIX                       93800      EPINAY-SUR-SEINE               FRANCE               jeanbaptiste@                  0607           
FR01       C009       Monsieur     CLEMENCE             ALEXANDRE            1 5, RUE DE BELLEVILLE                     75019      PARIS                          FRANCE               alexandre.clemence@up13.fr     +33149404071   
FR01       C010       Monsieur     TRAIFOR              ALEXANDRE            1 16, AVENUE FOCH                          75016      PARIS                          FRA                  alexandre.traifor@up13.fr      06070809       
FR01       C011       Monsieur     PREMIER              JOSEPH               2 77, RUE DE LA LIBERTE                    13001      MARCHEILLE                     FRANCE               josef@premier.fr               +33777889977   
FR01       C012       Monsieur     CLEMENT              ADAM                 2 13, AVENUE JEAN BAPTISTE CLEMENT         9430       VILLETANEUSE                   FRANCE               adam.clement@gmail.com         +33149404072   
FR01       C013       Monsieur     FORT                 Gabriel              5 1, AVENUE DE CARTAGE                     99000      TUNIS                          TUNISIE              gabriel.fort@yahoo.fr          +21624801777   
FR01       C014       Monsieur     ADAM                 DAVID                5 1, AVENUE DE ROME                        99001      ROME                           ITALIE               david.adamé@gmail com                         
FR01       C015       Monsieur     Labsent              pala                 7 1, rue des absents                       000        BAGDAD                         IRAQ                 pala-labsent@paici                            
FR01       C016       Madame       obsolete             kadym                7 1, rue des anciens                       000        CARTHAGE                       IFRIQIA              inexistant                     inexistant     
FR01       C002       Madame       LESEUL               MARIE                1 21, AVENUE D ITALIE                      75013      PARIS                          FRANCE               marieleseul@yahoo.fr           0617586565     
FR02       2994570    Madame       RAHMA                CLEMENCE             3 8, BOULEVARD FOCH                        93800      EPINAY-SUR-SEINE               FRANCE               clemence.rahma@up13.fr         +33617586565   
FR02       2996100    Monsieur     CLEMENCE             ALEXANDRE            1 5, RUE DE BELLEVILLE                     75019      PARIS                          FRANCE               alexandre.clemence@up13.fr     +33617586566   
FR02       2997007    Monsieur     TRAIFOR              ADAM                 2 13, AVENUE J. B. CLEMENT                 93430      VILLETANEUSE                   FRANCE               adam.traifor@up13.fr           +33617586567   
FR02       2997777    Mademoiselle LE BON               CLEMENTINE           1 18, BOULEVARD FOCH                       93800      EPINAY-SUR-SEINE                                    clementine.le bon@up13.fr      +33617586568   
FR02       2998500    Monsieur     CHEVALIER            INES                 1 13, RUE DE LA PAIX                       93800      EPINAY SUR SEINE               FRANCE               ines.chevalier@up13.fr         0717586560     
FR02       3001777    Monsieur     LE BON               Adam                 1 186, AVENUE D'ITALIE                     75013      PARIS                          FRANCE               adam.le bon@up13.fr            0717586561     
FR02       2998505    Mademoiselle TRAIFOR              ALICE                2 6, RUE DE LA ROSIERE                     75015      PARIS                                               alice.traifor@up13.fr          0717586562     
FR02       3000106    Monsieur     HARISSA              FORD                 1 16, AVENUE FOCH                          75016      PARIS                          FRANCE               ford.harissa@up13.fr           0606           
FR02       3000107    MO NSIEUR    ONRI                 PANDA                2 77, RUE DE LA LIBERTE                    13001      MARSEILLE                      FRANCE               panda.onri@up13.fr             +33            
FR02       3000108    Madame       EDITE                FIAT                 1 21, AVENUE D ITALIE                      75013      PARIS                                               fiat.edite@up13.fr                            
FR02       3000109    Madame       TOYOTA               JACKSON              3 55, RUE DU JAPON                         94310      ORLY VILLE                     FRANCE               jackson.toyota@up13.fr                        
FR02       3000110    MADAME       ONRI                 HONDA                2 77, RUE DE LA LIBERTE                    13001      MARSEILLE                      FRANC                honda.onri@up13.fr                            
FR02       3000111    Madame       GENEREUX             EVE                  1 18, BOULEVARD KELLERMAN                  75013      PARYS                          FR                   eve.genereux@up13.fr                          
FR02       299PPPP    Mlle         BON                  CLEMENTINE           1 18, BOULEVARD FOCH                       93800      EPINAY-SUR-SEINE               FRANCE               clementine.bon@up13.fr         +21624801801   
FR02       3001       M.           LE BON               Adam                 1 186, AVENUE D ITALIE                     75013      Paris                                               adam.le bon@up13.fr                           
FR02       3001777    Mr           LE BON               Adem                 1 186, AVENUE D'ITALIE                     75013      PARIS                          france               adem.le  bon@up13.fr                          
FR02       3001778    Mr           COURTOIS             Bruno                1                                                     Bruxelles                      Belgique             bruno.courtois@gmail.com                      
FR02       3001779    Monsieur     VANDERHOTE           Ivan                 1                                                     Bruxelles                      Belgique             ivan.vanderhote@gmail.com                     
FR02       3001780    Monsieur     Hollanda             Francis              1                                                     Bruxelles                      Belgique             francis.hollanda@gmail.com                    
FR02       3001781    Monsieur     Bernard              Hugues               1                                                     Bruxelles                      Belgique             hugues.bernard@gmail.com                      
FR02       3001782    Monsieur     LATIFOU              Ilyas                1                                                     Brusselle                      Belgic               ilyas.latifou@gmail.com                       
FR02       3001783    Madame       LALLEMAND            Ines                 1                                                     Berlin                         ALLEMANGNE           ines.lallemand@gmail.com                      
FR02       3001784    Monsieur     DEUTCH               Hans                 1                                                     Berlin                         ALLEMANGNE           hans.deutch@gmail.com                         
FR02       3001785    Madame       ALMANI               Eve                  1                                                     Berlin                         ALLEMANGNE           eve.almani@gmail.com                          
FR02       3001786    Madame       MERQUELLE            Ange                 1                                                     Dublin                         ALEMANGNE            angela.merquelle@gmail.com                    
FR02       4001001    Mister       TROMPE               Ronald               1                                                     LONDON                         UNITED-KINGDOM       m1@gmail.com                                  
FR02       4001002    Mister       HOBAMA               Mbarek               1                                                     LONDON                         UNITED-KINGDOM       m2@gmail.com                   !              
FR02       4001003    Mister       MOUCHE               Gorge                1                                                     LONDON                         UNITED-KINGDOM       m3@gmail.com                                  
FR02       4001004    Miss         BIDON                Jo                   2                                                     MANCHESTER                     UNITED-KINGDOM       m4@gmail.com                                  
FR02       4001005    Miss         LANGLET              Jane                 2                                                     OXFORD                         ROYAUME-UNI          m5@gmail.com                                  
FR02       4001006    Miss         CLEANTOOON           Hilally              2                                                     OXFORD                         UNITED-KINGDOM       m6@gmail.com                                  
TN02       TN0001     Madame       RAHMA                LINA                 3                                                     TUNIS                          TUNISIE              lina.rahma@gmail.com           +21624801801   
TN02       2997007    Monsieur     TRAIFOR              ADAM                 2 13, AVENUE J. B. CLEMENT                 93430      VILLETANEUSE                   FRANCE               adam.traifor@uspn-up13.fr      +33617586567   
TN02       TN0003     Madame       GARROU               LINDA                3                                                     SOUSSE                         Italie               linda.garrou@gmail.com         +21624801801   
TN02       TN0004     Madame       FARES                LEILA                3                                                     SOUSSE                         TUNISIE              leila.fares@gmail.com          +21624801801   
TN02       TN0005     Madame       FARES                INES                 3                                                     SOUSSE                         TUNISIE              ines.fares@gmail.com           +21624801801   
TN02       TN0006     Madame       FARES                INES                 3                                                     SOUSSE                         TUNISIE              ines.fares@gmail.com           +21624801801   
TN02       TN0007     Madame       FARES                MARIA                3                                                     SOUSSE                         TUNISIE              maria.fares@gmail.com          +21624801801   
TN02       TN0008     Madame       FARES                INES                 1                                                     SOUSSE                         TUNISIE              ines.fares@gmail.com           +21624801801   
TN02       TN0009     Madame       DIAB                 SONIA                2                                                     SOUSSE                         TUNISIE              sonia.diab@gmail.com           +21624801801   
TN02       TN0010     Madame       MAGREBI              HAYET                1                                                     SOUSSE                         TUNISIE              hayet.magrebi@gmail.com        +21624801801   
TN02       TN0011     Madame       SLIMANE              AZIZA                3                                                     SOUSSE                         TUNISIE              aziza.slimane@gmail.com        +21624801801   
TN02       TN0012     Madame       SLIMANE              BEYYA                2                                                     BIZERTE                        TUNISIE              beyya.slimane@gmail.com        +21624801801   
TN02       TN0013     Madame       SAHLOUL              MERIAM               1                                                     BIZERTE                        TUNISIE              meriam.sahloul@gmail.com       +21624801801   
TN02       TN0014     Monsieur     BONBON               FAOUZI               1                                                     BIZERTE                        TUNISIE              faouzi.bonbon@gmail.com        +21624801801   
TN02       TN0015     Monsieur     ZIZOU                ADAM                 1                                                     BIZERTE                        TUNISIE              adam.zizou@gmail.com           +21624801801   
TN02       TN0016     Monsieur     TOUNSI               ADEM                 1                                                     BIZERTE                        TUNISIE              adem.tounsi@gmail.com          +21624801801   
TN02       TN0017     Monsieur     ZATLA                SERGIO               1                                                     DJERBA                         France               sergio.zatla@gmail.com         +21624801801   
TN02       TN0018     Monsieur     ZIDANE               ALI                  1                                                     HAMMAMET                       TUNISIE              ali.zidane@gmail.com           +21624801801   
TN02       TN0019     Monsieur     MOHAMED              MOHAMED              1                                                     HAMMAMET                       TUNISIE              mohamed.mohamed@gmail.com      +21624801801   
TN02       TN0020     Monsieur     LATIFOU              ELIAS                1                                                     HAMMAMET                       TUNISIE              elias.latifou@gmail.com        +21624801801   
TN02       TN0021     Monsieur     LATIFOU              ABDERRAOUF           1                                                     HAMMAMET                       TUNISIE              abderraouf.latifou@gmail.com   +21624801801   
TN02       TN0022     Monsieur     SOUSSI               KARIM                1                                                     SOUSSE                         TUNISIE              karim.soussi@gmail.com         +21624801801   
TN02       TN0023     Monsieur     SOURIR               FATHI                1                                                     SOUSSE                         TUNISIE              fathi.sourir@gmail.com         +21624801801   
TN02       TN0024     Monsieur     BAJBOUJ              BEJI                 1                                                     SOUSSE                         TUNISIE              beji.bajbouj@gmail.com         +21624801801   
TN02       TN0025     Monsieur     RAIS                 TAFI                 1                                                     TUNIS                          TUNISIE              tafi.rais@gmail.com            +21624801801   
TN02       TN0002     Madame       SFAXI                KENZA                3                                                     SOUSSE                         TUNISIE              kenza.sfaxi@gmail.com          +21624801801   
 74 lignes sélectionnées 
*/
-- ==== MFB =======================================================================================================================
-- Corrigez le contenu de la nouvelle table TOUSCLIENTS ; Comment savoir si elle contient des anomalies et lesquelles ? 
-- ATTENTION aux règles d'écriture détaillées qui devraient se trouver dans les dictionnaires "METADONNEES"
-- ==== MFB =======================================================================================================================
------------->>>>>>>>>>>>>>> Quelques actions de nettoyage !
-- ==== MFB =======================================================================================================================
-- ==== MFB ============================== Quelques règles d'écriture de validation des données ===================================
/*
Les données (CIVCLI, VILCLI, PAYSCLI) doivent être HOMOGENES et doivent contenir le minimum d'anomalies possible :
La civilité (CIVCLI) : Pas d'espace superflu, Première lettre en Majuscule
La ville (VILCLI) : Pas d'espace superflu, Toutes les lettres en Majuscule
Le pays (PAYSCLI) : Pas d'espace superflu, Toutes les lettres en Majuscule

Homogénéiser les valeurs manquantes : ---->>>>>> ('-', '!', '?', '', ' ', '  ', 'NULL') ---->>>>>> DEVIENT ---->>>>>> NULL
*/

/*
Questions : Créer les métadonnées pour décrire au mieux les règles d'écriture !
 ---->>>>>> CREATE TABLE METADON_... ( ... ) ;
 ---->>>>>> INSERT INTO METADON_... VALUES ( ... ) ;
 
*/
-- ==== MFB ============================== Quelques règles d'écriture de validation des données ===================================
-- ==== MFB =======================================================================================================================

/*
Les données (MAGASIN, CODCLI, CIVCLI, VILCLI, PAYSCLI) doivent respecter la règle Min/MAJ
Les données (MAGASIN, CODCLI, CIVCLI, VILCLI, PAYSCLI) ne doivent pas contenir des espaces superflus !
La ville (VILCLI) : Pas d'espace superflu, Toutes les lettres en Majuscule, Les espaces ne sont pas autorisés, ils sont remplacés par des tirets
La ville (VILCLI) : traduites en français
*/

UPDATE TOUSCLIENTS SET MAGASIN = UPPER(enlever_espaces_superflus(MAGASIN));
UPDATE TOUSCLIENTS SET CODCLI  = UPPER(enlever_espaces_superflus(CODCLI));
UPDATE TOUSCLIENTS SET CIVCLI  = INITCAP(enlever_espaces_superflus(CIVCLI));
UPDATE TOUSCLIENTS SET NOMCLI  = UPPER(enlever_espaces_superflus(NOMCLI));
UPDATE TOUSCLIENTS SET PRENCLI = INITCAP(enlever_espaces_superflus(PRENCLI));
UPDATE TOUSCLIENTS SET CPCLI   = UPPER(enlever_espaces_superflus(CPCLI));
UPDATE TOUSCLIENTS SET VILCLI  = UPPER(enlever_espaces_superflus(VILCLI));
UPDATE TOUSCLIENTS SET PAYSCLI = UPPER(enlever_espaces_superflus(PAYSCLI));
UPDATE TOUSCLIENTS SET MAILCLI = LOWER(enlever_espaces_superflus(MAILCLI));
UPDATE TOUSCLIENTS SET TELCLI  = UPPER(enlever_espaces_superflus(TELCLI));

UPDATE TOUSCLIENTS SET VILCLI = remplacer_espace_par_tiret(VILCLI);

-- Homogénéiser les valeurs manquantes dans toutes les colonnes
UPDATE TOUSCLIENTS SET MAGASIN  = NULL WHERE MAGASIN IS NULL OR MAGASIN IN ('-', '!', '?', '', ' ', '  ', 'NULL');
UPDATE TOUSCLIENTS SET CODCLI   = NULL WHERE CODCLI  IS NULL OR CODCLI  IN ('-', '!', '?', '', ' ', '  ', 'NULL');
UPDATE TOUSCLIENTS SET CIVCLI   = NULL WHERE CIVCLI  IS NULL OR CIVCLI  IN ('-', '!', '?', '', ' ', '  ', 'NULL');
UPDATE TOUSCLIENTS SET NOMCLI   = NULL WHERE NOMCLI  IS NULL OR NOMCLI  IN ('-', '!', '?', '', ' ', '  ', 'NULL');
UPDATE TOUSCLIENTS SET PRENCLI  = NULL WHERE PRENCLI IS NULL OR PRENCLI IN ('-', '!', '?', '', ' ', '  ', 'NULL');
UPDATE TOUSCLIENTS SET CPCLI    = NULL WHERE CPCLI   IS NULL OR CPCLI   IN ('-', '!', '?', '', ' ', '  ', 'NULL');
UPDATE TOUSCLIENTS SET VILCLI   = NULL WHERE VILCLI  IS NULL OR VILCLI  IN ('-', '!', '?', '', ' ', '  ', 'NULL');
UPDATE TOUSCLIENTS SET PAYSCLI  = NULL WHERE PAYSCLI IS NULL OR PAYSCLI IN ('-', '!', '?', '', ' ', '  ', 'NULL');
UPDATE TOUSCLIENTS SET MAILCLI  = NULL WHERE MAILCLI IS NULL OR MAILCLI IN ('-', '!', '?', '', ' ', '  ', 'NULL');
UPDATE TOUSCLIENTS SET TELCLI   = NULL WHERE TELCLI  IS NULL OR TELCLI  IN ('-', '!', '?', '', ' ', '  ', 'NULL');

-- Homogénéiser les valeurs manquantes dans toutes les colonnes d'un seul appel toutes les colonnes de la table
EXEC updateColumnsValues('TOUSCLIENTS', 'MAGASIN, CODCLI, CIVCLI, NOMCLI, PRENCLI, CATCLI, CPCLI, VILCLI, PAYSCLI, MAILCLI, TELCLI', NULL);


SELECT 'Affichage des données mises à jour : ', 
MAGASIN, CODCLI, CIVCLI, NOMCLI, PRENCLI, CATCLI, CPCLI, VILCLI, PAYSCLI, MAILCLI, TELCLI  
FROM TOUSCLIENTS ORDER BY MAGASIN;

-- ==== MFB =======================================================================================================================
-- Faire quelques comptages pour détecter certaines anomalies (à propos de la civilité du client)
SELECT CIVCLI,  COUNT(*) NBR FROM TOUSCLIENTS GROUP BY CIVCLI ORDER BY 1;
/*
-- >>>>>>>>>>>>>>>>>>>>>>>>>> -- Résultat généré:
CIVCLI              NBR
------------ ----------
M.                    1
Madame               28
Mademoiselle          4
Miss                  3
Mister                3
Mlle                  1
Monsieur             31
Mo Nsieur             1
Mr                    2
 9 lignes sélectionnées 
*/

-- La civilité doit être Madame ou Monsieur
UPDATE TOUSCLIENTS SET CIVCLI  = 'Madame'   WHERE CIVCLI IN ('Madam', 'Mademoisele',  'Mademoiselle', 'Mlle', 'Miss');
UPDATE TOUSCLIENTS SET CIVCLI  = 'Monsieur' WHERE CIVCLI IN ('Monsieuur', 'Monsiieur', 'M.', 'Mister', 'Mo Nsieur', 'Mr');

SELECT CIVCLI,  COUNT(*) NBR FROM TOUSCLIENTS GROUP BY CIVCLI ORDER BY 1;
/*
-- >>>>>>>>>>>>>>>>>>>>>>>>>> -- Résultat généré:
CIVCLI              NBR
------------ ----------
Madame               36
Monsieur             38
 2 lignes sélectionnées 
*/
-- ==== MFB =======================================================================================================================
-- Faire quelques comptages pour détecter certaines anomalies (à propos de la ville du client)
SELECT VILCLI,  COUNT(*) NBR FROM TOUSCLIENTS GROUP BY VILCLI ORDER BY 1;
/*
-- >>>>>>>>>>>>>>>>>>>>>>>>>> -- Résultat généré:
VILCLI                                NBR
------------------------------ ----------
BAGDAD                                  1
BERLIN                                  3
BIZERTE                                 5
BRUSSELLE                               1
BRUXELLES                               4
CARTHAGE                                2
DJERBA                                  1
DUBLIN                                  1
EPINAY-SUR-ORGE                         1
EPINAY-SUR-SEINE                        7
HAMMAMET                                4
LONDON                                  3
MANCHESTER                              1
MARCHEILLE                              1
MARSEILLE                               3
ORLY-VILLE                              2
OXFORD                                  2
PARIS                                  11
PARYS                                   1
ROME                                    1
SOUSSE                                 13
TUNIS                                   3
VILLETANEUSE                            3
 23 lignes sélectionnées 
*/
UPDATE TOUSCLIENTS SET VILCLI  = 'BRUXELLES'   WHERE VILCLI IN ('BRUSSELLE');
UPDATE TOUSCLIENTS SET VILCLI  = 'MARSEILLE'   WHERE VILCLI IN ('MARCHEILLE');
UPDATE TOUSCLIENTS SET VILCLI  = 'PARIS'       WHERE VILCLI IN ('PARYS');

--SELECT Translate_String('ENGLISH_TO_FRENCH', 'City', 'LONDON') FROM DUAL;
UPDATE TOUSCLIENTS SET VILCLI = Translate_String('ENGLISH_TO_FRENCH', 'City', VILCLI);
SELECT VILCLI,  COUNT(*) NBR FROM TOUSCLIENTS GROUP BY VILCLI ORDER BY 1;
/*
-- >>>>>>>>>>>>>>>>>>>>>>>>>> -- Résultat généré:
VILCLI                                NBR
------------------------------ ----------
BAGDAD                                  1
BERLIN                                  3
BIZERTE                                 5
BRUXELLES                               5
CARTHAGE                                2
DJERBA                                  1
DUBLIN                                  1
EPINAY-SUR-ORGE                         1
EPINAY-SUR-SEINE                        7
HAMMAMET                                4
LONDRES                                 3
MANCHESTER                              1
MARSEILLE                               4
ORLY-VILLE                              2
OXFORD                                  2
PARIS                                  12
ROME                                    1
SOUSSE                                 13
TUNIS                                   3
VILLETANEUSE                            3
 20 lignes sélectionnées 
*/

/*
------------>>>>>>>>>>> Compléter le nettoyage
*/



-- ==== MFB =======================================================================================================================
-- ==== MFB =======================================================================================================================
-- Faire de même pour les toutes les autres tables de l'entrepôt de données!!!
-- ==== MFB =======================================================================================================================
-- ==== MFB =======================================================================================================================


-- ==== MFB =======================================================================================================================
-- Assembler (intégrer, fusionner) dans une nouvelle table, de nom TOUSCOMMANDES, toutes les commandes des différents magasins
-- ==== MFB =======================================================================================================================
-- ==== MFB =======================================================================================================================
-- Assembler (intégrer, fusionner) dans une nouvelle table, de nom TOUSDCOMMANDES, toutes les commandes dans les différents magasins
-- ==== MFB =======================================================================================================================

DESCRIBE COMMANDES_FR01;
DESCRIBE COMMANDES_FR02;
DESCRIBE COMMANDES_TN02;
/*
Nom     NULL Type         
------- ---- ------------ 
NUMCOM       VARCHAR2(20) 
CODCLI       VARCHAR2(20) 
DATCOM       DATE         ------->>>>>>> IL FAUT HOMOGENEISER les dates, ici elle est au format : DAY DD-MONTH-YYYY
MAGASIN      VARCHAR2(25) 

Nom     NULL Type         
------- ---- ------------ 
COL1         VARCHAR2(50) 
COL2         VARCHAR2(50)
COL3         VARCHAR2(50) ------->>>>>>> IL FAUT HOMOGENEISER les dates, ici elle est au format : DD/MM/YYYY
MAGASIN      VARCHAR2(25) 

Nom     NULL Type         
------- ---- ------------ 
COL1         VARCHAR2(50) 
COL2         VARCHAR2(50) 
COL3         VARCHAR2(50) ------->>>>>>> IL FAUT HOMOGENEISER les dates, ici elle est au format : DD/MM/YYYY
MAGASIN      VARCHAR2(25) 
*/

DROP TABLE TOUSCOMMANDES;
CREATE TABLE TOUSCOMMANDES(MAGASIN, NUMCOM, CODCLI, DATCOM) AS
SELECT  MAGASIN, NUMCOM, CODCLI, DATCOM 
FROM    COMMANDES_FR01
UNION ALL
SELECT  MAGASIN, COL1,COL2, TO_DATE(TO_DATE(COL3,'DD/MM/YYYY'),'DAY DD-MONTH-YYYY')
FROM    COMMANDES_FR02
UNION ALL 
SELECT  MAGASIN, COL1,COL2, TO_DATE(TO_DATE(COL3,'DD/MM/YYYY'),'DAY DD-MONTH-YYYY')
FROM    COMMANDES_TN02;
-- ==== MFB =======================================================================================================================
-- Afficher TOUTES les commandes de tous les magasins
SELECT * FROM TOUSCOMMANDES;
SELECT MAGASIN, NUMCOM, CODCLI, DATCOM FROM TOUSCOMMANDES ORDER BY MAGASIN, DATCOM, NUMCOM, CODCLI;
/*
-- >>>>>>>>>>>>>>>>>>>>>>>>>> -- Résultat généré:
MAGASIN    NUMCOM               CODCLI     DATCOM                     
---------- -------------------- ---------- ----------------------------
FR01       20001AB              C012       SUNDAY    17-SEPTEMBER-2000 
FR01       20002AB              C001       SUNDAY    17-SEPTEMBER-2000 
FR01       20003AB              C006       MONDAY    16-OCTOBER  -2000 
FR01       20004AB              C006       TUESDAY   24-OCTOBER  -2000 
FR01       20011RB              C012       MONDAY    22-JANUARY  -2001 
FR01       20012RB              C012       TUESDAY   13-MARCH    -2001 
FR01       20031FB              C001       FRIDAY    14-FEBRUARY -2003 
FR01       20061FB              C010       FRIDAY    14-FEBRUARY -2003 
FR01       20062FB              C009       FRIDAY    14-FEBRUARY -2003 
FR01       20065FB              C007       FRIDAY    14-FEBRUARY -2003 
FR01       20066FB              C002       FRIDAY    14-FEBRUARY -2003 
FR01       20067FB              C002       FRIDAY    14-FEBRUARY -2003 
FR01       20068FB              C002       FRIDAY    14-FEBRUARY -2003 
FR01       20051FB              C003       FRIDAY    07-JANUARY  -2005 
FR01       20052FB              C003       WEDNESDAY 12-JANUARY  -2005 
FR01       20053FB              C012       THURSDAY  10-MARCH    -2005 
FR01       20055FB              C012       FRIDAY    11-MARCH    -2005 
FR01       20057FB              C014       FRIDAY    11-MARCH    -2005 
FR01       20054FB              C007       MONDAY    14-MARCH    -2005 
FR01       20056FB              C013       MONDAY    14-MARCH    -2005 
FR01       20069FB              C002       TUESDAY   30-JANUARY  -2007 
FR01       20070FB              C002       TUESDAY   30-JANUARY  -2007 
FR01       20071FB              C013       TUESDAY   30-JANUARY  -2007 
FR01       20072FB              C013       TUESDAY   30-JANUARY  -2007 
FR01       20073FB              C014       TUESDAY   30-JANUARY  -2007 
FR01       20074FB              C014       TUESDAY   30-JANUARY  -2007 
FR01       20181AB              C012       MONDAY    17-SEPTEMBER-2018 
FR01       20184FB              C014       MONDAY    17-SEPTEMBER-2018 
FR01       20201BB              C001       FRIDAY    13-NOVEMBER -2020 
FR02       20120156BB0001       2996100    MONDAY    16-JANUARY  -2012 
FR02       20120157BB0007       2996100    TUESDAY   17-JANUARY  -2012 
FR02       20150917BB0001       2997007    THURSDAY  17-SEPTEMBER-2015 
FR02       20150917BB0002       2998500    THURSDAY  17-SEPTEMBER-2015 
FR02       20151016BB0001       2996100    FRIDAY    16-OCTOBER  -2015 
FR02       20151024BB0001       2996100    SATURDAY  24-OCTOBER  -2015 
FR02       20180917BB0007       3001777    MONDAY    17-SEPTEMBER-2018 
TN02       KTN005               TN0001     MONDAY    16-JANUARY  -2012 
TN02       KTN001               TN0001     THURSDAY  17-SEPTEMBER-2015 
TN02       KTN002               TN0002     THURSDAY  17-SEPTEMBER-2015 
TN02       KTN003               TN0003     FRIDAY    16-OCTOBER  -2015 
TN02       KTN004               TN0004     SATURDAY  24-OCTOBER  -2015 
TN02       KTN006               TN0022     TUESDAY   17-JANUARY  -2017 
TN02       KTN007               TN0022     MONDAY    17-SEPTEMBER-2018 
TN02       KTN011               TN0001     TUESDAY   17-SEPTEMBER-2019 
TN02       KTN012               TN0001     THURSDAY  17-SEPTEMBER-2020 
TN02       KTN013               TN0001     FRIDAY    17-SEPTEMBER-2021 
TN02       KTN014               TN0001     TUESDAY   22-FEBRUARY -2022 
TN02       KTN015               TN0001     SUNDAY    17-SEPTEMBER-2023 
TN02       KTN016               TN0001     WEDNESDAY 06-MARCH    -2024 
 49 lignes sélectionnées 
*/

-- ==== MFB =======================================================================================================================
-- Assembler (intégrer, fusionner) dans une nouvelle table, de nom TOUSARTICLES, tous les articles des différents magasins
-- ==== MFB =======================================================================================================================
-- Is there a problem --->>> Yes!

DROP TABLE TOUSARTICLES;
CREATE TABLE TOUSARTICLES(REFART, NOMART, PVART, QSART, PAART, MAGASIN) AS 
SELECT  
REFART, NOMART,
TO_CHAR(PVART), -- Attention Convertir les numériques vers caractères
TO_CHAR(QSART), -- Attention Convertir les numériques vers caractères
TO_CHAR(PAART), -- Attention Convertir les numériques vers caractères
MAGASIN  
FROM ARTICLES_FR01
UNION ALL
SELECT COL1, COL2, COL3, COL4, COL5, MAGASIN
FROM ARTICLES_FR02
UNION ALL
SELECT COL1, COL2, COL3, COL4, COL5, MAGASIN
FROM ARTICLES_TN02;

SELECT * FROM TOUSARTICLES;
SELECT MAGASIN, REFART, NOMART, QSART, PVART, PAART FROM TOUSARTICLES ORDER BY NOMART;
-- Remarque : Les données sont hétérogènes :
-- Les décimales sont sparées par le point et par la virgule
-- Les monnaies sont différentes : rien (cela sous entend l'euro €), € et Dt
/*
-- >>>>>>>>>>>>>>>>>>>>>>>>>> -- Résultat généré:
MAGASIN    REFART   NOMART                         QSART      PVART      PAART    
---------- -------- ------------------------------ ---------- ---------- ----------
TN02       00.37515 BABY PHONE                     3          137.13 Dt  164.56 Dt 
FR01       F1.011   BABY PHONE                     3          80,71      45,71     
FR02       00.37515 BABY PHONE                     3          80.71 €    45.71 €   
FR02       00.37457 BANDE DE FERMETURE             4          02.29 €    01.71 €   
FR01       F1.008   BANDE DE FERMETURE             4          3,29       1,71      
TN02       00.37457 BANDE DE FERMETURE             4          05.13 Dt   06.16 Dt  
TN02       11.36860 BARRIERE DE LIT                10         47.13 Dt   56.56 Dt  
FR01       F2.003   BARRIERE DE LIT                10         23,71      15,71     
FR02       11.36860 BARRIERE DE LIT                10         23.71 €    15.71 €   
FR02       11.36613 BARRIERE DE PORTE, EN BOIS     2          32.71 €    25.71 €   
FR01       F2.001   BARRIERE DE PORTE, EN BOIS     2          32,71      25,71     
TN02       11.36613 BARRIERE DE PORTE, EN BOIS     2          77.13 Dt   92.56 Dt  
FR01       F2.002   BARRIERE DE PORTE, EN METAL    3          49,14      28,43     
FR02       11.36639 BARRIERE DE PORTE, EN METAL    3          79.14 €    28.43 €   
TN02       11.36639 BARRIERE DE PORTE, EN METAL    3          85.29 Dt   102.35 Dt 
FR01       F1.007   BLOQUE PORTE                   4          5          2,29      
FR02       00.37432 BLOQUE PORTE                   4          05.00 €    02.29 €   
TN02       00.37432 BLOQUE PORTE                   4          06.87 Dt   08.24 Dt  
FR01       F1.003   BONNET PARE-CHOCS              100        10,71      5,71      
TN02       00.37341 BONNET PARE-CHOCS              100        17.13 Dt   20.56 Dt  
FR02       00.37341 BONNET PARE-CHOCS              100        10.71 €    05.71 €   
FR01       F1.012   BRETELLE DE SECURITE           8          15,57      11,43     
FR02       00.37630 BRETELLE DE SECURITE REMOND    8          15.57 €    11.43 €   
TN02       00.37630 BRETELLE DE SECURITE REMOND    8          34.29 Dt   41.15 Dt  
FR02       00.37424 CACHE PRISE DE COURANT         500        02.29 €    00.71 €   
FR01       F1.006   CACHE PRISE DE COURANT         500        2,29       ,71       
TN02       00.37424 CACHE PRISE DE COURANT         500        02.13 Dt   02.56 Dt  
FR02       00.37325 CASQUE CYCLISTE PROTECTION     20         27.00 €    20.00 €   
FR01       F1.002   CASQUE CYCLISTE PROTECTION     20         27         20        
TN02       00.37325 CASQUE CYCLISTE PROTECTION     20         60.00 Dt   72.00 Dt  
TN02       00.37408 COINS DE PROTECTION            100        05.13 Dt   06.16 Dt  
FR01       F1.005   COINS DE PROTECTION            100        4          1,71      
FR02       00.37408 COINS DE PROTECTION            100        04.00 €    01.71 €   
FR01       F1.014   COUVRE ROBINETTERIE            12         7,86       4,29      
TN02       00.39495 COUVRE ROBINETTERIE            12         12.87 Dt   15.44 Dt  
FR02       00.39495 COUVRE ROBINETTERIE            12         07.86 €    04.29 €   
FR02       WD.002   DVD - TOY STORY 2              10         34.29 €    12.14 €   
TN02       WD.002   DVD - TOY STORY 2              10         36.42 Dt   43.70 Dt  
FR01       WD.004   DVD-FRERES DES OURS            3          35         13        
FR01       FB.002   DVD-SPIDER MAN                 2          24,9       12        
FR01       FB.003   DVD-SPIDER MAN 2               2          24,9       12        
FR01       FB.001   DVD-SPIRIT                     2          24,9       12        
FR01       WD.002   DVD-TOY STORY 2                10         34,29      12,14     
TN02       00.39321 HAUSSE-CHAISE                  1          76.29 Dt   91.55 Dt  
FR02       00.39321 HAUSSE-CHAISE                  1          42.71 €    25.43 €   
FR01       F1.013   HAUSSE-CHAISE                  1          42,71      25,43     
TN02       MV.001   Jeu Vidéo PS4 SPIDER-MAN       250        57.00 Dt   68.40 Dt  
FR02       MV.001   Jeux Vidéo PS4 SPIDER-MAN      250        59.00 €    19.00 €   
FR02       WD.001   K7 VIDEO - TOY STORY           10         21.29 €    09.29 €   
TN02       WD.001   K7 VIDEO - TOY STORY           10         27.87 Dt   33.44 Dt  
FR02       WD.003   K7 VIDEO - WINNIE L OURSON     5          32.86 €    09.29 €   
TN02       WD.003   K7 VIDEO - WINNIE L OURSON     5          27.87 Dt   33.44 Dt  
FR01       WD.005   K7 VIDEO-LE ROI LION           1          30         13        
FR01       WD.006   K7 VIDEO-LE ROI LION 2         4          30         13        
FR01       WD.007   K7 VIDEO-LE ROI LION 3         3          30         13        
FR01       WD.001   K7 VIDEO-TOY STORY             10         21,29      9,29      
FR01       WD.003   K7 VIDEO-WINNIE L OURSON       5          22,86      9,29      
FR01       PR.001   MASQUE CHIRURGICAL             1000       27         5         
TN02       11.37108 PORTE-BEBE                     6          102.87 Dt  123.44 Dt 
FR01       F2.004   PORTE-BEBE                     6          44,86      34,29     
FR02       11.37108 PORTE-BEBE                     6          44.86 €    34.29 €   
FR02       00.37473 PROTECTION DE CUISINIERE       10         30.71 €    22.86 €   
TN02       00.37473 PROTECTION DE CUISINIERE       10         68.58 Dt   82.30 Dt  
FR01       F1.010   PROTECTION DE CUISINIERE       10         30,71      22,86     
FR01       F1.009   PROTECTION DE FOUR             10         37,86      26,43     
FR02       00.37465 PROTECTION DE FOUR             10         37.86 €    26.43 €   
TN02       00.37465 PROTECTION DE FOUR             10         79.29 Dt   95.15 Dt  
FR02       00.37291 SIEGE DE TABLE                 10         55.00 €    26.43 €   
TN02       00.37291 SIEGE DE TABLE                 10         79.29 Dt   95.15 Dt  
FR01       F1.001   SIEGE DE TABLE                 10         35         26,43     
FR01       F2.005   SIEGE-AUTO COSMOS              2          126,86     71,43     
FR02       11.37173 SIEGE-AUTO COSMOS              2          126.86 €   71.43 €   
TN02       11.37173 SIEGE-AUTO COSMOS              2          214.29 Dt  257.15 Dt 
FR01       F2.006   SIEGE-AUTO EUROSEAT            2          121,29     71,43     
FR02       11.37280 SIEGE-AUTO EUROSEAT            2          121.29 €   71.43 €   
TN02       11.37280 SIEGE-AUTO EUROSEAT            2          214.29 Dt  257.15 Dt 
TN02       00.37366 STORE DE PROTECTION            5          12.87 Dt   15.44 Dt  
FR01       F1.004   STORE DE PROTECTION            5          7,43       4,29      
FR02       00.37366 STORE DE PROTECTION            5          07.43 €    04.29 €   
 79 lignes sélectionnées 
*/

-- Il y a des espaces invisibles ! IL FAUT LES ENLEVER
UPDATE TOUSARTICLES SET PVART = UPPER(enlever_espaces_superflus(PVART));
UPDATE TOUSARTICLES SET PAART = UPPER(enlever_espaces_superflus(PAART));

-- Les monnaies sont différentes !
-- Attention : IL FAUT CONVERTIR en une seule monnaie (exemple l'euro €)
UPDATE TOUSARTICLES SET PVART = enleverMonnaie(PVART);
UPDATE TOUSARTICLES SET PAART = enleverMonnaie(PAART);

SELECT MAGASIN, REFART, NOMART, QSART, PVART, PAART FROM TOUSARTICLES ORDER BY NOMART;
/*
-- >>>>>>>>>>>>>>>>>>>>>>>>>> -- Résultat généré:
MAGASIN    REFART   NOMART                         QSART      PVART      PAART    
---------- -------- ------------------------------ ---------- ---------- ----------
TN02       00.37515 BABY PHONE                     3          137,13     164,56    
FR01       F1.011   BABY PHONE                     3          80,71      45,71     
FR02       00.37515 BABY PHONE                     3          80,71      45,71     
FR02       00.37457 BANDE DE FERMETURE             4          2,29       1,71      
FR01       F1.008   BANDE DE FERMETURE             4          3,29       1,71      
TN02       00.37457 BANDE DE FERMETURE             4          5,13       6,16      
TN02       11.36860 BARRIERE DE LIT                10         47,13      56,56     
FR01       F2.003   BARRIERE DE LIT                10         23,71      15,71     
FR02       11.36860 BARRIERE DE LIT                10         23,71      15,71     
FR02       11.36613 BARRIERE DE PORTE, EN BOIS     2          32,71      25,71     
FR01       F2.001   BARRIERE DE PORTE, EN BOIS     2          32,71      25,71     
TN02       11.36613 BARRIERE DE PORTE, EN BOIS     2          77,13      92,56     
FR01       F2.002   BARRIERE DE PORTE, EN METAL    3          49,14      28,43     
FR02       11.36639 BARRIERE DE PORTE, EN METAL    3          79,14      28,43     
TN02       11.36639 BARRIERE DE PORTE, EN METAL    3          85,29      102,35    
FR01       F1.007   BLOQUE PORTE                   4          5          2,29      
FR02       00.37432 BLOQUE PORTE                   4          5          2,29      
TN02       00.37432 BLOQUE PORTE                   4          6,87       8,24      
FR01       F1.003   BONNET PARE-CHOCS              100        10,71      5,71      
TN02       00.37341 BONNET PARE-CHOCS              100        17,13      20,56     
FR02       00.37341 BONNET PARE-CHOCS              100        10,71      5,71      
FR01       F1.012   BRETELLE DE SECURITE           8          15,57      11,43     
FR02       00.37630 BRETELLE DE SECURITE REMOND    8          15,57      11,43     
TN02       00.37630 BRETELLE DE SECURITE REMOND    8          34,29      41,15     
FR02       00.37424 CACHE PRISE DE COURANT         500        2,29       ,71       
FR01       F1.006   CACHE PRISE DE COURANT         500        2,29       ,71       
TN02       00.37424 CACHE PRISE DE COURANT         500        2,13       2,56      
FR02       00.37325 CASQUE CYCLISTE PROTECTION     20         27         20        
FR01       F1.002   CASQUE CYCLISTE PROTECTION     20         27         20        
TN02       00.37325 CASQUE CYCLISTE PROTECTION     20         60         72        
TN02       00.37408 COINS DE PROTECTION            100        5,13       6,16      
FR01       F1.005   COINS DE PROTECTION            100        4          1,71      
FR02       00.37408 COINS DE PROTECTION            100        4          1,71      
FR01       F1.014   COUVRE ROBINETTERIE            12         7,86       4,29      
TN02       00.39495 COUVRE ROBINETTERIE            12         12,87      15,44     
FR02       00.39495 COUVRE ROBINETTERIE            12         7,86       4,29      
FR02       WD.002   DVD - TOY STORY 2              10         34,29      12,14     
TN02       WD.002   DVD - TOY STORY 2              10         36,42      43,7      
FR01       WD.004   DVD-FRERES DES OURS            3          35         13        
FR01       FB.002   DVD-SPIDER MAN                 2          24,9       12        
FR01       FB.003   DVD-SPIDER MAN 2               2          24,9       12        
FR01       FB.001   DVD-SPIRIT                     2          24,9       12        
FR01       WD.002   DVD-TOY STORY 2                10         34,29      12,14     
TN02       00.39321 HAUSSE-CHAISE                  1          76,29      91,55     
FR02       00.39321 HAUSSE-CHAISE                  1          42,71      25,43     
FR01       F1.013   HAUSSE-CHAISE                  1          42,71      25,43     
TN02       MV.001   Jeu Vidéo PS4 SPIDER-MAN       250        57         68,4      
FR02       MV.001   Jeux Vidéo PS4 SPIDER-MAN      250        59         19        
FR02       WD.001   K7 VIDEO - TOY STORY           10         21,29      9,29      
TN02       WD.001   K7 VIDEO - TOY STORY           10         27,87      33,44     
FR02       WD.003   K7 VIDEO - WINNIE L OURSON     5          32,86      9,29      
TN02       WD.003   K7 VIDEO - WINNIE L OURSON     5          27,87      33,44     
FR01       WD.005   K7 VIDEO-LE ROI LION           1          30         13        
FR01       WD.006   K7 VIDEO-LE ROI LION 2         4          30         13        
FR01       WD.007   K7 VIDEO-LE ROI LION 3         3          30         13        
FR01       WD.001   K7 VIDEO-TOY STORY             10         21,29      9,29      
FR01       WD.003   K7 VIDEO-WINNIE L OURSON       5          22,86      9,29      
FR01       PR.001   MASQUE CHIRURGICAL             1000       27         5         
TN02       11.37108 PORTE-BEBE                     6          102,87     123,44    
FR01       F2.004   PORTE-BEBE                     6          44,86      34,29     
FR02       11.37108 PORTE-BEBE                     6          44,86      34,29     
FR02       00.37473 PROTECTION DE CUISINIERE       10         30,71      22,86     
TN02       00.37473 PROTECTION DE CUISINIERE       10         68,58      82,3      
FR01       F1.010   PROTECTION DE CUISINIERE       10         30,71      22,86     
FR01       F1.009   PROTECTION DE FOUR             10         37,86      26,43     
FR02       00.37465 PROTECTION DE FOUR             10         37,86      26,43     
TN02       00.37465 PROTECTION DE FOUR             10         79,29      95,15     
FR02       00.37291 SIEGE DE TABLE                 10         55         26,43     
TN02       00.37291 SIEGE DE TABLE                 10         79,29      95,15     
FR01       F1.001   SIEGE DE TABLE                 10         35         26,43     
FR01       F2.005   SIEGE-AUTO COSMOS              2          126,86     71,43     
FR02       11.37173 SIEGE-AUTO COSMOS              2          126,86     71,43     
TN02       11.37173 SIEGE-AUTO COSMOS              2          214,29     257,15    
FR01       F2.006   SIEGE-AUTO EUROSEAT            2          121,29     71,43     
FR02       11.37280 SIEGE-AUTO EUROSEAT            2          121,29     71,43     
TN02       11.37280 SIEGE-AUTO EUROSEAT            2          214,29     257,15    
TN02       00.37366 STORE DE PROTECTION            5          12,87      15,44     
FR01       F1.004   STORE DE PROTECTION            5          7,43       4,29      
FR02       00.37366 STORE DE PROTECTION            5          7,43       4,29      
 79 lignes sélectionnées 
*/

-- DESCRIBE TOUSARTICLES;
SELECT MAGASIN, REFART, NOMART, QSART, PVART, PAART FROM TOUSARTICLES ORDER BY MAGASIN, PVART DESC;

-- Vérifier les dépendances sémantiques entre les colonnes
-- Exemple : 
-- Est-ce que les prix de ventes sont toujours supérieurs aux prix d'achats ?

SELECT MAGASIN, REFART, NOMART, QSART, PVART, PAART FROM TOUSARTICLES WHERE TO_NUMBER(PVART) <= TO_NUMBER(PAART) AND MAGASIN IN ('FR01', 'FR02', 'TN02');
/*
-- >>>>>>>>>>>>>>>>>>>>>>>>>> -- Résultat généré:
MAGASIN    REFART   NOMART                         QSART      PVART      PAART    
---------- -------- ------------------------------ ---------- ---------- ----------
TN02       00.37291 SIEGE DE TABLE                 10         79,29      95,15     
TN02       00.37325 CASQUE CYCLISTE PROTECTION     20         60         72        
TN02       00.37341 BONNET PARE-CHOCS              100        17,13      20,56     
TN02       00.37366 STORE DE PROTECTION            5          12,87      15,44     
TN02       00.37408 COINS DE PROTECTION            100        5,13       6,16      
TN02       00.37424 CACHE PRISE DE COURANT         500        2,13       2,56      
TN02       00.37432 BLOQUE PORTE                   4          6,87       8,24      
TN02       00.37457 BANDE DE FERMETURE             4          5,13       6,16      
TN02       00.37465 PROTECTION DE FOUR             10         79,29      95,15     
TN02       00.37473 PROTECTION DE CUISINIERE       10         68,58      82,3      
TN02       00.37515 BABY PHONE                     3          137,13     164,56    
TN02       00.37630 BRETELLE DE SECURITE REMOND    8          34,29      41,15     
TN02       00.39321 HAUSSE-CHAISE                  1          76,29      91,55     
TN02       00.39495 COUVRE ROBINETTERIE            12         12,87      15,44     
TN02       11.36613 BARRIERE DE PORTE, EN BOIS     2          77,13      92,56     
TN02       11.36639 BARRIERE DE PORTE, EN METAL    3          85,29      102,35    
TN02       11.36860 BARRIERE DE LIT                10         47,13      56,56     
TN02       11.37108 PORTE-BEBE                     6          102,87     123,44    
TN02       11.37173 SIEGE-AUTO COSMOS              2          214,29     257,15    
TN02       11.37280 SIEGE-AUTO EUROSEAT            2          214,29     257,15    
TN02       WD.001   K7 VIDEO - TOY STORY           10         27,87      33,44     
TN02       WD.002   DVD - TOY STORY 2              10         36,42      43,7      
TN02       WD.003   K7 VIDEO - WINNIE L OURSON     5          27,87      33,44     
TN02       MV.001   Jeu Vidéo PS4 SPIDER-MAN       250        57         68,4      
 24 lignes sélectionnées 
*/

-- REMARQUE : IL EXISTE UNE ANOMALIE DANS LE FICHIER CSV DU MAGASIN TN02 CAR LE PVART (COL3) EST TOUJOURS INFERIEUR AU PAART (COL5)
-- IL FAUT VERIFIER A LA SOURCE, PEUT-ÊTRE L'ORDRE DES COLONNES !

-- Recréation de la table TOUSARTICLES
DROP TABLE TOUSARTICLES;
CREATE TABLE TOUSARTICLES(REFART, NOMART, PVART, QSART, PAART, MAGASIN) AS 
SELECT  
REFART, NOMART,
TO_CHAR(PVART), -- Attention Convertir les numériques vers caractères
TO_CHAR(QSART), -- Attention Convertir les numériques vers caractères
TO_CHAR(PAART), -- Attention Convertir les numériques vers caractères
MAGASIN  
FROM ARTICLES_FR01
UNION ALL
SELECT COL1, COL2, COL3, COL4, COL5, MAGASIN
FROM ARTICLES_FR02
UNION ALL
SELECT COL1, COL2, COL5, COL4, COL3, MAGASIN          ----->>> COL1, COL2, COL3, COL4, COL5, MAGASIN
FROM ARTICLES_TN02;

-- Il y a des espaces invisibles ! IL FAUT LES ENLEVER
UPDATE TOUSARTICLES SET PVART = UPPER(enlever_espaces_superflus(PVART));
UPDATE TOUSARTICLES SET PAART = UPPER(enlever_espaces_superflus(PAART));

-- Les monnaies sont différentes !
-- Attention : IL FAUT CONVERTIR en une seule monnaie (exemple l'euro €)
UPDATE TOUSARTICLES SET PVART = enleverMonnaie(PVART);
UPDATE TOUSARTICLES SET PAART = enleverMonnaie(PAART);
-- Anoamlies PVART et PAART
SELECT MAGASIN, REFART, NOMART, QSART, PVART, PAART FROM TOUSARTICLES WHERE TO_NUMBER(PVART) <= TO_NUMBER(PAART) AND MAGASIN IN ('FR01', 'FR02', 'TN02');
/*
-- >>>>>>>>>>>>>>>>>>>>>>>>>> -- Résultat généré:
aucune ligne sélectionnée
*/

-- ==== MFB =======================================================================================================================
-- ==== MFB =================== La fonction CAST d'Oracle =========================================================================
-- La fonction CAST permet de convertir les données d'un type vers l'autre quand ceci  est possible !
-- ATTENTION à la compatibilité des types de données !

--Les données de types : NUMERIQUE
SELECT CAST('17,9' AS NUMBER(4,1)) AS convertir FROM DUAL;

SELECT CAST('17.9' AS NUMBER(4,1)) AS convertir FROM DUAL;
-->>>>> Message d'erreur d'oracle : "invalid number"

--Les données de types : DATE
ALTER SESSION SET NLS_DATE_FORMAT = 'DD-MM-YYYY' ;

SELECT CAST('17-09-2021' AS DATE)  AS convertir FROM DUAL;
SELECT CAST('17-9-2021'  AS DATE)  AS convertir FROM DUAL;
SELECT CAST('7-9-2021'   AS DATE)  AS convertir FROM DUAL;

SELECT CAST('17-09-2021' AS DATE) C1, CAST('17-9-2021'  AS DATE) C2, CAST('7-9-2021'   AS DATE) C3 FROM DUAL;
/*
Résultats affichés
C1         C2         C3       
---------- ---------- ----------
17-09-2021 17-09-2021 07-09-2021
*/

ALTER SESSION SET NLS_DATE_FORMAT = 'DAY DD-MONTH-YYYY' ;

SELECT CAST('17-09-2021' AS DATE)   AS convertir FROM DUAL;
-->>>>> Message d'erreur d'oracle : "not a valid day of the week"

SELECT CAST('FRIDAY 19-NOVEMBER-2021' AS DATE)   AS convertir FROM DUAL;
SELECT CAST('VENDREDI 19-NOVEMBRE-2021' AS DATE) AS convertir FROM DUAL;

-- ==== MFB =================== La fonction CAST d'Oracle =========================================================================
-- ==== MFB =======================================================================================================================
-- La table ARTICLES_TN02 devrait être transformée car la monnaie n'est pas en euros
COLUMN COL1 FORMAT A10
COLUMN COL2 FORMAT A30
COLUMN COL3 FORMAT A10
COLUMN COL4 FORMAT A10
COLUMN COL5 FORMAT A10

SELECT
MAGASIN,
COL1,COL2,
COL4,      -- Convertir de caractères vers numériques : QSART
COL5,      -- Convertir ?                             : PVART
COL3       -- Convertir ?                             : PAART
FROM ARTICLES_TN02;
/*
-- >>>>>>>>>>>>>>>>>>>>>>>>>> -- Résultat généré:
MAGASIN    COL1       COL2                           COL4       COL5       COL3     
---------- ---------- ------------------------------ ---------- ---------- ----------
TN02       00.37291   SIEGE DE TABLE                 10         95.15 Dt   79.29 Dt  
TN02       00.37325   CASQUE CYCLISTE PROTECTION     20         72.00 Dt   60.00 Dt  
TN02       00.37341   BONNET PARE-CHOCS              100        20.56 Dt   17.13 Dt  
TN02       00.37366   STORE DE PROTECTION            5          15.44 Dt   12.87 Dt  
TN02       00.37408   COINS DE PROTECTION            100        06.16 Dt   05.13 Dt  
TN02       00.37424   CACHE PRISE DE COURANT         500        02.56 Dt   02.13 Dt  
TN02       00.37432   BLOQUE PORTE                   4          08.24 Dt   06.87 Dt  
TN02       00.37457   BANDE DE FERMETURE             4          06.16 Dt   05.13 Dt  
TN02       00.37465   PROTECTION DE FOUR             10         95.15 Dt   79.29 Dt  
TN02       00.37473   PROTECTION DE CUISINIERE       10         82.30 Dt   68.58 Dt  
TN02       00.37515   BABY PHONE                     3          164.56 Dt  137.13 Dt 
TN02       00.37630   BRETELLE DE SECURITE REMOND    8          41.15 Dt   34.29 Dt  
TN02       00.39321   HAUSSE-CHAISE                  1          91.55 Dt   76.29 Dt  
TN02       00.39495   COUVRE ROBINETTERIE            12         15.44 Dt   12.87 Dt  
TN02       11.36613   BARRIERE DE PORTE, EN BOIS     2          92.56 Dt   77.13 Dt  
TN02       11.36639   BARRIERE DE PORTE, EN METAL    3          102.35 Dt  85.29 Dt  
TN02       11.36860   BARRIERE DE LIT                10         56.56 Dt   47.13 Dt  
TN02       11.37108   PORTE-BEBE                     6          123.44 Dt  102.87 Dt 
TN02       11.37173   SIEGE-AUTO COSMOS              2          257.15 Dt  214.29 Dt 
TN02       11.37280   SIEGE-AUTO EUROSEAT            2          257.15 Dt  214.29 Dt 
TN02       WD.001     K7 VIDEO - TOY STORY           10         33.44 Dt   27.87 Dt  
TN02       WD.002     DVD - TOY STORY 2              10         43.70 Dt   36.42 Dt  
TN02       WD.003     K7 VIDEO - WINNIE L OURSON     5          33.44 Dt   27.87 Dt  
TN02       MV.001     Jeu Vidéo PS4 SPIDER-MAN       250        68.40 Dt   57.00 Dt  
 24 lignes sélectionnées 
*/

SELECT
MAGASIN,
COL1,COL2,
CAST(COL4 AS NUMBER(3))          AS COL4,      -- Convertir de caractères vers numériques : QSART
SUBSTR(COL5,1,INSTR(COL5,' ')-1) AS COL5,      -- Convertir ?                             : PVART
SUBSTR(COL3,1,INSTR(COL3,' ')-1) AS COL3       -- Convertir ?                             : PAART
FROM ARTICLES_TN02;
/*
-- >>>>>>>>>>>>>>>>>>>>>>>>>> -- Résultat généré:
MAGASIN    COL1       COL2                                 COL4 COL5       COL3     
---------- ---------- ------------------------------ ---------- ---------- ----------
TN02       00.37291   SIEGE DE TABLE                         10 95.15      79.29     
TN02       00.37325   CASQUE CYCLISTE PROTECTION             20 72.00      60.00     
TN02       00.37341   BONNET PARE-CHOCS                     100 20.56      17.13     
TN02       00.37366   STORE DE PROTECTION                     5 15.44      12.87     
TN02       00.37408   COINS DE PROTECTION                   100 06.16      05.13     
TN02       00.37424   CACHE PRISE DE COURANT                500 02.56      02.13     
TN02       00.37432   BLOQUE PORTE                            4 08.24      06.87     
TN02       00.37457   BANDE DE FERMETURE                      4 06.16      05.13     
TN02       00.37465   PROTECTION DE FOUR                     10 95.15      79.29     
TN02       00.37473   PROTECTION DE CUISINIERE               10 82.30      68.58     
TN02       00.37515   BABY PHONE                              3 164.56     137.13    
TN02       00.37630   BRETELLE DE SECURITE REMOND             8 41.15      34.29     
TN02       00.39321   HAUSSE-CHAISE                           1 91.55      76.29     
TN02       00.39495   COUVRE ROBINETTERIE                    12 15.44      12.87     
TN02       11.36613   BARRIERE DE PORTE, EN BOIS              2 92.56      77.13     
TN02       11.36639   BARRIERE DE PORTE, EN METAL             3 102.35     85.29     
TN02       11.36860   BARRIERE DE LIT                        10 56.56      47.13     
TN02       11.37108   PORTE-BEBE                              6 123.44     102.87    
TN02       11.37173   SIEGE-AUTO COSMOS                       2 257.15     214.29    
TN02       11.37280   SIEGE-AUTO EUROSEAT                     2 257.15     214.29    
TN02       WD.001     K7 VIDEO - TOY STORY                   10 33.44      27.87     
TN02       WD.002     DVD - TOY STORY 2                      10 43.70      36.42     
TN02       WD.003     K7 VIDEO - WINNIE L OURSON              5 33.44      27.87     
TN02       MV.001     Jeu Vidéo PS4 SPIDER-MAN              250 68.40      57.00     
 24 lignes sélectionnées 
*/

-- Deuxième solution : Enlever le symbole de la monnaie ET ensuite...
-- Convertir depuis la monnaie de départ vers celle d'arrivée avec un taux de change fixé à 3,5 par exemple
UPDATE ARTICLES_TN02 SET COL3 = enleverMonnaie(COL3);
UPDATE ARTICLES_TN02 SET COL5 = enleverMonnaie(COL5);
SELECT MAGASIN, COL1,COL2, COL4, COL5, COL3 FROM ARTICLES_TN02;
/*
-- >>>>>>>>>>>>>>>>>>>>>>>>>> -- Résultat généré:
MAGASIN    COL1       COL2                           COL4       COL5       COL3     
---------- ---------- ------------------------------ ---------- ---------- ----------
TN02       00.37291   SIEGE DE TABLE                 10         95,15      79,29     
TN02       00.37325   CASQUE CYCLISTE PROTECTION     20         72         60        
TN02       00.37341   BONNET PARE-CHOCS              100        20,56      17,13     
TN02       00.37366   STORE DE PROTECTION            5          15,44      12,87     
TN02       00.37408   COINS DE PROTECTION            100        6,16       5,13      
TN02       00.37424   CACHE PRISE DE COURANT         500        2,56       2,13      
TN02       00.37432   BLOQUE PORTE                   4          8,24       6,87      
TN02       00.37457   BANDE DE FERMETURE             4          6,16       5,13      
TN02       00.37465   PROTECTION DE FOUR             10         95,15      79,29     
TN02       00.37473   PROTECTION DE CUISINIERE       10         82,3       68,58     
TN02       00.37515   BABY PHONE                     3          164,56     137,13    
TN02       00.37630   BRETELLE DE SECURITE REMOND    8          41,15      34,29     
TN02       00.39321   HAUSSE-CHAISE                  1          91,55      76,29     
TN02       00.39495   COUVRE ROBINETTERIE            12         15,44      12,87     
TN02       11.36613   BARRIERE DE PORTE, EN BOIS     2          92,56      77,13     
TN02       11.36639   BARRIERE DE PORTE, EN METAL    3          102,35     85,29     
TN02       11.36860   BARRIERE DE LIT                10         56,56      47,13     
TN02       11.37108   PORTE-BEBE                     6          123,44     102,87    
TN02       11.37173   SIEGE-AUTO COSMOS              2          257,15     214,29    
TN02       11.37280   SIEGE-AUTO EUROSEAT            2          257,15     214,29    
TN02       WD.001     K7 VIDEO - TOY STORY           10         33,44      27,87     
TN02       WD.002     DVD - TOY STORY 2              10         43,7       36,42     
TN02       WD.003     K7 VIDEO - WINNIE L OURSON     5          33,44      27,87     
TN02       MV.001     Jeu Vidéo PS4 SPIDER-MAN       250        68,4       57        
 24 lignes sélectionnées 
*/

UPDATE ARTICLES_TN02 SET COL3 = convertir_devise(TO_NUMBER(COL3), 3.5);
UPDATE ARTICLES_TN02 SET COL5 = convertir_devise(TO_NUMBER(COL5), 3.5);
SELECT MAGASIN, COL1,COL2, COL4, COL5, COL3 FROM ARTICLES_TN02;
/*
-- >>>>>>>>>>>>>>>>>>>>>>>>>> -- Résultat généré:
MAGASIN    COL1       COL2                           COL4       COL5       COL3     
---------- ---------- ------------------------------ ---------- ---------- ----------
TN02       00.37291   SIEGE DE TABLE                 10         27,186     22,654    
TN02       00.37325   CASQUE CYCLISTE PROTECTION     20         20,571     17,143    
TN02       00.37341   BONNET PARE-CHOCS              100        5,874      4,894     
TN02       00.37366   STORE DE PROTECTION            5          4,411      3,677     
TN02       00.37408   COINS DE PROTECTION            100        1,76       1,466     
TN02       00.37424   CACHE PRISE DE COURANT         500        ,731       ,609      
TN02       00.37432   BLOQUE PORTE                   4          2,354      1,963     
TN02       00.37457   BANDE DE FERMETURE             4          1,76       1,466     
TN02       00.37465   PROTECTION DE FOUR             10         27,186     22,654    
TN02       00.37473   PROTECTION DE CUISINIERE       10         23,514     19,594    
TN02       00.37515   BABY PHONE                     3          47,017     39,18     
TN02       00.37630   BRETELLE DE SECURITE REMOND    8          11,757     9,797     
TN02       00.39321   HAUSSE-CHAISE                  1          26,157     21,797    
TN02       00.39495   COUVRE ROBINETTERIE            12         4,411      3,677     
TN02       11.36613   BARRIERE DE PORTE, EN BOIS     2          26,446     22,037    
TN02       11.36639   BARRIERE DE PORTE, EN METAL    3          29,243     24,369    
TN02       11.36860   BARRIERE DE LIT                10         16,16      13,466    
TN02       11.37108   PORTE-BEBE                     6          35,269     29,391    
TN02       11.37173   SIEGE-AUTO COSMOS              2          73,471     61,226    
TN02       11.37280   SIEGE-AUTO EUROSEAT            2          73,471     61,226    
TN02       WD.001     K7 VIDEO - TOY STORY           10         9,554      7,963     
TN02       WD.002     DVD - TOY STORY 2              10         12,486     10,406    
TN02       WD.003     K7 VIDEO - WINNIE L OURSON     5          9,554      7,963     
TN02       MV.001     Jeu Vidéo PS4 SPIDER-MAN       250        19,543     16,286    
 24 lignes sélectionnées 
*/

UPDATE ARTICLES_FR02 SET COL3 = enleverMonnaie(COL3);
UPDATE ARTICLES_FR02 SET COL5 = enleverMonnaie(COL5);
SELECT MAGASIN, COL1,COL2, COL4, COL5, COL3 FROM ARTICLES_FR02;

-- La table de TOUS les articles sera alors reconstruite comme suit :
DESCRIBE ARTICLES_FR01;
DESCRIBE ARTICLES_FR02;
DESCRIBE ARTICLES_TN02;
/*
-- >>>>>>>>>>>>>>>>>>>>>>>>>> -- Résultat généré:
Nom     NULL Type         
------- ---- ------------ 
REFART       VARCHAR2(20) 
NOMART       VARCHAR2(50) 
PVART        NUMBER(10,2) 
QSART        NUMBER(5)    
PAART        NUMBER(10,2) 
MAGASIN      VARCHAR2(25) 
Nom     NULL Type         
------- ---- ------------ 
COL1         VARCHAR2(50) 
COL2         VARCHAR2(50) 
COL3         VARCHAR2(50) 
COL4         VARCHAR2(50) 
COL5         VARCHAR2(50) 
MAGASIN      VARCHAR2(25) 
Nom     NULL Type         
------- ---- ------------ 
COL1         VARCHAR2(50) 
COL2         VARCHAR2(50) 
COL3         VARCHAR2(50) 
COL4         VARCHAR2(50) 
COL5         VARCHAR2(50) 
MAGASIN      VARCHAR2(25) 
*/
DROP TABLE TOUSARTICLES;
CREATE TABLE TOUSARTICLES(MAGASIN, REFART, NOMART, QSART, PVART, PAART) AS 
SELECT MAGASIN, REFART, NOMART, TO_CHAR(QSART), TO_CHAR(PVART), TO_CHAR(PAART) FROM ARTICLES_FR01
UNION ALL
SELECT MAGASIN, COL1,   COL2,   COL4,           COL3,           COL5           FROM ARTICLES_FR02
UNION ALL
SELECT MAGASIN, COL1,   COL2,   COL4,           COL5,           COL3           FROM ARTICLES_TN02;
SELECT MAGASIN, REFART, NOMART, QSART, PVART, PAART FROM TOUSARTICLES;
/*
-- >>>>>>>>>>>>>>>>>>>>>>>>>> -- Résultat généré:
MAGASIN    REFART   NOMART                         QSART      PVART      PAART    
---------- -------- ------------------------------ ---------- ---------- ----------
FR01       F1.001   SIEGE DE TABLE                 10         35         26,43     
FR01       F1.002   CASQUE CYCLISTE PROTECTION     20         27         20        
FR01       F1.003   BONNET PARE-CHOCS              100        10,71      5,71      
FR01       F1.004   STORE DE PROTECTION            5          7,43       4,29      
FR01       F1.005   COINS DE PROTECTION            100        4          1,71      
FR01       F1.006   CACHE PRISE DE COURANT         500        2,29       ,71       
FR01       F1.007   BLOQUE PORTE                   4          5          2,29      
FR01       F1.008   BANDE DE FERMETURE             4          3,29       1,71      
FR01       F1.009   PROTECTION DE FOUR             10         37,86      26,43     
FR01       F1.010   PROTECTION DE CUISINIERE       10         30,71      22,86     
FR01       F1.011   BABY PHONE                     3          80,71      45,71     
FR01       F1.012   BRETELLE DE SECURITE           8          15,57      11,43     
FR01       F1.013   HAUSSE-CHAISE                  1          42,71      25,43     
FR01       F1.014   COUVRE ROBINETTERIE            12         7,86       4,29      
FR01       F2.001   BARRIERE DE PORTE, EN BOIS     2          32,71      25,71     
FR01       F2.002   BARRIERE DE PORTE, EN METAL    3          49,14      28,43     
FR01       F2.003   BARRIERE DE LIT                10         23,71      15,71     
FR01       F2.004   PORTE-BEBE                     6          44,86      34,29     
FR01       F2.005   SIEGE-AUTO COSMOS              2          126,86     71,43     
FR01       F2.006   SIEGE-AUTO EUROSEAT            2          121,29     71,43     
FR01       FB.001   DVD-SPIRIT                     2          24,9       12        
FR01       FB.002   DVD-SPIDER MAN                 2          24,9       12        
FR01       FB.003   DVD-SPIDER MAN 2               2          24,9       12        
FR01       WD.001   K7 VIDEO-TOY STORY             10         21,29      9,29      
FR01       WD.002   DVD-TOY STORY 2                10         34,29      12,14     
FR01       WD.003   K7 VIDEO-WINNIE L OURSON       5          22,86      9,29      
FR01       WD.004   DVD-FRERES DES OURS            3          35         13        
FR01       WD.005   K7 VIDEO-LE ROI LION           1          30         13        
FR01       WD.006   K7 VIDEO-LE ROI LION 2         4          30         13        
FR01       WD.007   K7 VIDEO-LE ROI LION 3         3          30         13        
FR01       PR.001   MASQUE CHIRURGICAL             1000       27         5         
FR02       00.37291 SIEGE DE TABLE                 10         55         26,43     
FR02       00.37325 CASQUE CYCLISTE PROTECTION     20         27         20        
FR02       00.37341 BONNET PARE-CHOCS              100        10,71      5,71      
FR02       00.37366 STORE DE PROTECTION            5          7,43       4,29      
FR02       00.37408 COINS DE PROTECTION            100        4          1,71      
FR02       00.37424 CACHE PRISE DE COURANT         500        2,29       ,71       
FR02       00.37432 BLOQUE PORTE                   4          5          2,29      
FR02       00.37457 BANDE DE FERMETURE             4          2,29       1,71      
FR02       00.37465 PROTECTION DE FOUR             10         37,86      26,43     
FR02       00.37473 PROTECTION DE CUISINIERE       10         30,71      22,86     
FR02       00.37515 BABY PHONE                     3          80,71      45,71     
FR02       00.37630 BRETELLE DE SECURITE REMOND    8          15,57      11,43     
FR02       00.39321 HAUSSE-CHAISE                  1          42,71      25,43     
FR02       00.39495 COUVRE ROBINETTERIE            12         7,86       4,29      
FR02       11.36613 BARRIERE DE PORTE, EN BOIS     2          32,71      25,71     
FR02       11.36639 BARRIERE DE PORTE, EN METAL    3          79,14      28,43     
FR02       11.36860 BARRIERE DE LIT                10         23,71      15,71     
FR02       11.37108 PORTE-BEBE                     6          44,86      34,29     
FR02       11.37173 SIEGE-AUTO COSMOS              2          126,86     71,43     
FR02       11.37280 SIEGE-AUTO EUROSEAT            2          121,29     71,43     
FR02       WD.001   K7 VIDEO - TOY STORY           10         21,29      9,29      
FR02       WD.002   DVD - TOY STORY 2              10         34,29      12,14     
FR02       WD.003   K7 VIDEO - WINNIE L OURSON     5          32,86      9,29      
FR02       MV.001   Jeux Vidéo PS4 SPIDER-MAN      250        59         19        
TN02       00.37291 SIEGE DE TABLE                 10         27,186     22,654    
TN02       00.37325 CASQUE CYCLISTE PROTECTION     20         20,571     17,143    
TN02       00.37341 BONNET PARE-CHOCS              100        5,874      4,894     
TN02       00.37366 STORE DE PROTECTION            5          4,411      3,677     
TN02       00.37408 COINS DE PROTECTION            100        1,76       1,466     
TN02       00.37424 CACHE PRISE DE COURANT         500        ,731       ,609      
TN02       00.37432 BLOQUE PORTE                   4          2,354      1,963     
TN02       00.37457 BANDE DE FERMETURE             4          1,76       1,466     
TN02       00.37465 PROTECTION DE FOUR             10         27,186     22,654    
TN02       00.37473 PROTECTION DE CUISINIERE       10         23,514     19,594    
TN02       00.37515 BABY PHONE                     3          47,017     39,18     
TN02       00.37630 BRETELLE DE SECURITE REMOND    8          11,757     9,797     
TN02       00.39321 HAUSSE-CHAISE                  1          26,157     21,797    
TN02       00.39495 COUVRE ROBINETTERIE            12         4,411      3,677     
TN02       11.36613 BARRIERE DE PORTE, EN BOIS     2          26,446     22,037    
TN02       11.36639 BARRIERE DE PORTE, EN METAL    3          29,243     24,369    
TN02       11.36860 BARRIERE DE LIT                10         16,16      13,466    
TN02       11.37108 PORTE-BEBE                     6          35,269     29,391    
TN02       11.37173 SIEGE-AUTO COSMOS              2          73,471     61,226    
TN02       11.37280 SIEGE-AUTO EUROSEAT            2          73,471     61,226    
TN02       WD.001   K7 VIDEO - TOY STORY           10         9,554      7,963     
TN02       WD.002   DVD - TOY STORY 2              10         12,486     10,406    
TN02       WD.003   K7 VIDEO - WINNIE L OURSON     5          9,554      7,963     
TN02       MV.001   Jeu Vidéo PS4 SPIDER-MAN       250        19,543     16,286    
 79 lignes sélectionnées 
*/
-- Anoamlies éventuelles entre PVART et PAART
SELECT MAGASIN, REFART, NOMART, QSART, PVART, PAART FROM TOUSARTICLES WHERE TO_NUMBER(PVART) <= TO_NUMBER(PAART) AND MAGASIN IN ('FR01', 'FR02', 'TN02');
/*
-- >>>>>>>>>>>>>>>>>>>>>>>>>> -- Résultat généré:
aucune ligne sélectionnée
*/

/* 
D'autres possibilités :
SELECT COL1,COL2,
CAST(SUBSTR(REPLACE(COL3, '.', ','),1,INSTR(COL3,' ')-1) AS NUMBER(10,2)) AS COL3,
CAST(COL4 AS NUMBER(3))                                                   AS COL4,
CAST(SUBSTR(REPLACE(COL5, '.', ','),1,INSTR(COL5,' ')-1) AS NUMBER(10,2)) AS COL5,
MAGASIN  
FROM ARTICLES_FR02;

SELECT COL1,COL2,
CAST(REPLACE(SUBSTR(COL3,1,INSTR(COL3,' ')-1), '.', ',') AS NUMBER(10,2)) AS COL3,
CAST(COL4 AS NUMBER(3))                                                   AS COL4,
CAST(REPLACE(SUBSTR(COL5,1,INSTR(COL5,' ')-1), '.', ',') AS NUMBER(10,2)) AS COL5,
MAGASIN  
FROM ARTICLES_FR02;
*/

-- ==== MFB =======================================================================================================================
-- Assembler (intégrer, fusionner) dans une nouvelle table, de nom TOUSDETAILCOM, tous les détails des commandes des différents magasins
-- ==== MFB =======================================================================================================================

-- ==== MFB =======================================================================================================================
/*
--   A CORRIGER

DROP TABLE TOUSDETAILCOM;
CREATE TABLE TOUSDETAILCOM AS
SELECT  * 
FROM DETAILCOM_fr01
UNION ALL
SELECT COL1,COL2,
CAST(COL3 AS NUMBER(3))                                AS COL3,
CAST(SUBSTR(COL4,1,INSTR(COL4,' ')-1) AS NUMBER(10,2)) AS COL4,
CAST(SUBSTR(COL5,1,INSTR(COL5,'%')-1) AS NUMBER(4,2))  AS COL5,
MAGASIN 
FROM DETAILCOM_FR02
UNION ALL
SELECT COL1,COL2,
CAST(COL3 AS NUMBER(3))                                                      AS COL3,
CAST(SUBSTR(UPPER(COL4),1,INSTR(UPPER(COL4),UPPER('Dt'))-1) AS NUMBER(10,2)) AS COL4,
CAST(SUBSTR(COL5,1,INSTR(COL5,'%')-1) AS NUMBER(4,2))                        AS COL5,
MAGASIN 
FROM DETAILCOM_TN02;

SELECT * FROM TOUSDETAILCOM;
*/

-- ==== MFB =======================================================================================================================
/*
--   A CORRIGER
DROP TABLE TOUSDETAILCOM;
CREATE TABLE TOUSDETAILCOM AS
SELECT  * 
FROM DETAILCOM_fr01
UNION ALL
SELECT COL1,COL2,
CAST(COL3 AS NUMBER(3))                                                   AS COL3,
CAST(REPLACE(SUBSTR(COL4,1,INSTR(COL4,' ')-1), '.', ',') AS NUMBER(10,2)) AS COL4,
CAST(REPLACE(SUBSTR(COL5,1,INSTR(COL5,'%')-1), '.', ',') AS NUMBER(4,2))  AS COL5,
MAGASIN 
FROM DETAILCOM_FR02
UNION ALL
SELECT COL1,COL2,
CAST(COL3 AS NUMBER(3))                                                              AS COL3,
CAST(REPLACE(SUBSTR(UPPER(COL4),1,INSTR(UPPER(COL4),UPPER('Dt'))-1), '.', ',') AS NUMBER(10,2)) AS COL4,
CAST(REPLACE(SUBSTR(COL5,1,INSTR(COL5,'%')-1), '.', ',')                       AS NUMBER(4,2))  AS COL5,
MAGASIN 
FROM DETAILCOM_TN02;

SELECT * FROM TOUSDETAILCOM;

ALTER SESSION SET NLS_DATE_FORMAT = 'YYYY-MM-DD' ;
SELECT * 
FROM TOUSCOMMANDES K,TOUSDETAILCOM D WHERE K.NUMCOM=D.NUMCOM;
SELECT K.MAGASIN, K.NUMCOM, K. CODCLI, K.DATCOM, D.REFART, D.QTCOM, D.PUART, D.REMISE, 'QuelleRégion?' AS REGION
FROM TOUSCOMMANDES K,TOUSDETAILCOM D WHERE K.NUMCOM=D.NUMCOM;
SELECT K.MAGASIN, K.NUMCOM, K. CODCLI, K.DATCOM, D.REFART, D.QTCOM, D.PUART, D.REMISE, D.QTCOM*D.PUART*(1-D.REMISE/100) AS MTTVENTE, 'QuelleRégion?' AS REGION
FROM TOUSCOMMANDES K,TOUSDETAILCOM D WHERE K.NUMCOM=D.NUMCOM;

CREATE OR REPLACE VIEW V(ANNEE, MTTVENTE)  AS
SELECT EXTRACT(YEAR FROM K.DATCOM) AS ANNEE, D.QTCOM*D.PUART*(1-D.REMISE/100) AS MTTVENTE 
FROM TOUSCOMMANDES K,TOUSDETAILCOM D WHERE K.NUMCOM=D.NUMCOM ;

SELECT ANNEE, SUM(MTTVENTE) AS TOTALVENTES FROM V
GROUP BY ANNEE ORDER BY 1;
*/
-- ==== MFB =======================================================================================================================

-- ==== MFB =======================================================================================================================
-- ==== MFB =======================================================================================================================
-- NOUVELLES DONNEES NETTOYEES == NOUVELLES DONNEES NETTOYEES == NOUVELLES DONNEES NETTOYEES
-- ==== MFB =======================================================================================================================
-- ==== MFB =======================================================================================================================
-- ==== MFB =======================================================================================================================
-- Le résultat est : 
-- ++ TOUSCLIENTS  (sans ou avec l'historique des mouvements), 
-- ++ TOUSARTICLES (sans ou avec l'historique des mouvements), 
-- ++ TOUSCOMMANDES, TOUSDETAILSCOM, etc...
-- ++ TOUSMAGASINS (sans ou avec l'historique des mouvements)
-- ==== MFB =======================================================================================================================

-- ==== MFB =======================================================================================================================
/*
L'entrepôt de données : Schéma en étoile ou en flocon...
*/
-- ==== MFB =======================================================================================================================

-- ==== MFB =======================================================================================================================
-- Intégration/Assemblage/Fusion/Union des données afin de construire un entrepôt de données (magasin de données, lac de données...)
-- Les schémas en étoile : à la belle étoile ! Where is the Data ? Is it in the House or in the Lake?
-- Des bases aux entrepôts des données !
-- ==== MFB =======================================================================================================================
-- Création d'une nouvelle Base de Données (entrepôt de données) qui sera l'intégration de toutes les bases de données des différents magasins
-- Le schéma sera appelé un SCHEMA en ETOILE 
-- Une table au milieu (TABLE DE FAITs) entourée par plusieurs tables (TABLEs DE DIMENSIONs) :
-- La table de FAITs sera appelée FAIT_VENTES
-- Les tables de dimensions seront appelées :  DIM_REGIONS, DIM_CLIENTS, DIM_TEMPS, DIM_ARTICLES...
-- ==== MFB =======================================================================================================================

-- ==== MFB =======================================================================================================================
-- Creation d'une nouvelle TABLE/DIMENSION/VUE/VUE_MATERIALISEE de nom DIM_REGIONS
-- DIM_REGIONS(IDREGION, VILLEREGION, PAYSREGION, CONTINENTREGION)
-- ==== MFB =======================================================================================================================

-- Table DIM_REGIONS avec un début de : homogénéisation, standardisation, correction
COLUMN IDREGION        FORMAT A15
COLUMN VILLEREGION     FORMAT A20
COLUMN PAYSREGION      FORMAT A20
COLUMN CONTINENTREGION FORMAT A20

DROP TABLE REGION;
CREATE TABLE REGION(IDREGION, VILLEREGION, PAYSREGION, CONTINENTREGION) AS
SELECT '               ', VILCLI,      PAYSCLI,    '               ' FROM TOUSCLIENTS
UNION
SELECT '               ', ADRVILLEMAG, ADRPAYSMAG, CONTINENTMAG      FROM MAGASINS;

-- Pas d'espace superflu et en majuscule
UPDATE REGION SET VILLEREGION     = UPPER(enlever_espaces_superflus(VILLEREGION));
UPDATE REGION SET PAYSREGION      = UPPER(enlever_espaces_superflus(PAYSREGION));
UPDATE REGION SET CONTINENTREGION = UPPER(enlever_espaces_superflus(CONTINENTREGION));
-- Pas de tiret dans les noms des villes
UPDATE REGION SET VILLEREGION = remplacer_espace_par_tiret(VILLEREGION);
-- Homogénéiser les valeurs manquantes dans toutes les colonnes
UPDATE REGION SET VILLEREGION     = NULL WHERE VILLEREGION     IS NULL OR VILLEREGION IN ('-', '!', '?', '', ' ', '  ', 'NULL');
UPDATE REGION SET PAYSREGION      = NULL WHERE PAYSREGION      IS NULL OR PAYSREGION IN ('-', '!', '?', '', ' ', '  ', 'NULL');
UPDATE REGION SET CONTINENTREGION = NULL WHERE CONTINENTREGION IS NULL OR CONTINENTREGION IN ('-', '!', '?', '', ' ', '  ', 'NULL');
SELECT * FROM REGION ;
/*
-- >>>>>>>>>>>>>>>>>>>>>>>>>> -- Résultat généré:
IDREGION        VILLEREGION          PAYSREGION           CONTINENTREGION    
--------------- -------------------- -------------------- --------------------
                ANDERLECK            BELGIQUE             EUROPE              
                BAGDAD               IRAQ                                     
                BERLIN               ALLEMANGNE                               
                BIZERTE              TUNISIE                                  
                BRUXELLES            BELGIC                                   
                BRUXELLES            BELGIQUE                                 
                BRUXELLES            BELGIQUE             EUROPE              
                CARTHAGE             IFRIQIA                                  
                CARTHAGE             TUNISIE                                  
                DJERBA               FRANCE                                   
                DUBLIN               ALEMANGNE                                
                EPINAY-SUR-SEINE     FRANCE               EUROPE              
                EPINAY-SUR-ORGE      FRANCE                                   
                EPINAY-SUR-SEINE     FRANCE                                   
                EPINAY-SUR-SEINE     FRANCE               EUROPE              
                EPINAY-SUR-SEINE                                              
                HAMMAMET             TUNISIE                                  
                LONDON               UNITED-KINGDOM       EUROP               
                LONDRES              UNITED-KINGDOM                           
                LYON                 FRANCE               EUROPE              
                MANCHESTER           UNITED-KINGDOM                           
                MANCHESTER           UNITED-KINGDOM       EROPE               
                MARSEILLE            FRANC                                    
                MARSEILLE            FRANCE                                   
                MARSEILLE            FRANCE               EUROPE              
                ORLY-VILLE           FRANCE                                   
                ORLY-VILLE           FRANCE               EUROPE              
                OXFORD               ROYAUME-UNI                              
                OXFORD               UNITED-KINGDOM                           
                OXFORD               UNITED-KINGDOM       EUROPE              
                PARIS                FR                                       
                PARIS                FRA                                      
                PARIS                FRANCE                                   
                PARIS                FRANCE               EUROPE              
                PARIS                                                         
                PEKIN                CHINE                ASIE                
                ROME                 ITALIE                                   
                ROME                 ITALIE               EUROPE              
                SOUSSE               ITALIE                                   
                SOUSSE               TUNISIE                                  
                SOUSSE               TUNISIE              AFRIQ               
                TUNIS                TUNISIE                                  
                TUNIS                TUNISIE              AFRIQUE             
                VILLETANEUSE         FRANCE                                   
                WUHAN                CHINE                ASIE                
 45 lignes sélectionnées 
*/
-- Quelques comptages pour détecter les anomalies
SELECT VILLEREGION, COUNT(*) AS NBRV FROM REGION GROUP BY VILLEREGION ORDER BY VILLEREGION;
/*
-- >>>>>>>>>>>>>>>>>>>>>>>>>> -- Résultat généré:
VILLEREGION                NBRV
-------------------- ----------
ANDERLECK                     1
BAGDAD                        1
BERLIN                        1
BIZERTE                       1
BRUXELLES                     3
CARTHAGE                      2
DJERBA                        1
DUBLIN                        1
EPINAY-SUR-ORGE               1
EPINAY-SUR-SEINE              4
HAMMAMET                      1
LONDON                        1
LONDRES                       1
LYON                          1
MANCHESTER                    2
MARSEILLE                     3
ORLY-VILLE                    2
OXFORD                        3
PARIS                         5
PEKIN                         1
ROME                          2
SOUSSE                        3
TUNIS                         2
VILLETANEUSE                  1
WUHAN                         1
 25 lignes sélectionnées 
*/
UPDATE REGION SET VILLEREGION = 'LONDRES' WHERE VILLEREGION = 'LONDON';
-- Quelques comptages pour détecter les anomalies
SELECT PAYSREGION, COUNT(*) AS NBRP FROM REGION GROUP BY PAYSREGION ORDER BY PAYSREGION;
/*
-- >>>>>>>>>>>>>>>>>>>>>>>>>> -- Résultat généré:
PAYSREGION                 NBRP
-------------------- ----------
ALEMANGNE                     1
ALLEMANGNE                    1
BELGIC                        1
BELGIQUE                      3
CHINE                         2
FR                            1
FRA                           1
FRANC                         1
FRANCE                       13
IFRIQIA                       1
IRAQ                          1
ITALIE                        3
ROYAUME-UNI                   1
TUNISIE                       7
UNITED-KINGDOM                6
                              2
 16 lignes sélectionnées 
*/
UPDATE REGION SET PAYSREGION = 'ALLEMAGNE'   WHERE PAYSREGION IN ('ALEMANGNE', 'ALLEMANGNE');
UPDATE REGION SET PAYSREGION = 'BELGIQUE'    WHERE PAYSREGION IN ('BELGIC');
UPDATE REGION SET PAYSREGION = 'FRANCE'      WHERE PAYSREGION IN ('FR', 'FRA', 'FRANC');
UPDATE REGION SET PAYSREGION = 'TUNISIE'     WHERE PAYSREGION IN ('IFRIQIA');
UPDATE REGION SET PAYSREGION = 'ROYAUME-UNI' WHERE PAYSREGION IN ('UNITED-KINGDOM');
-- Quelques comptages pour détecter les anomalies
SELECT CONTINENTREGION, COUNT(*) AS NBRC FROM REGION GROUP BY CONTINENTREGION ORDER BY CONTINENTREGION;
/*
-- >>>>>>>>>>>>>>>>>>>>>>>>>> -- Résultat généré:
CONTINENTREGION            NBRC
-------------------- ----------
AFRIQ                         1
AFRIQUE                       1
ASIE                          2
EROPE                         1
EUROP                         1
EUROPE                       10
                             29
 7 lignes sélectionnées 
*/
UPDATE REGION SET CONTINENTREGION = 'AFRIQUE'    WHERE CONTINENTREGION IN ('AFRIQ');
UPDATE REGION SET CONTINENTREGION = 'EUROPE'     WHERE CONTINENTREGION IN ('EROPE', 'EUROP');
-- Appliquer le principe du DATA CLEANING...
-- Quelques dépendances focntionnelles : VILLEREGION -DF- PAYSREGION -DF- CONTINENTREGION
-- Etudier les dépendances sémantiques entre certaines colonnes
CREATE OR REPLACE VIEW DF_VILLE_PAYS (VILLEREGION, PAYSREGION) AS
SELECT DISTINCT VILLEREGION, PAYSREGION FROM REGION;
SELECT * FROM DF_VILLE_PAYS ORDER BY PAYSREGION, VILLEREGION;
CREATE OR REPLACE VIEW NONDF_VILLE_PAYS (VILLEREGION, N) AS
SELECT VILLEREGION, COUNT(*) FROM DF_VILLE_PAYS GROUP BY VILLEREGION HAVING COUNT(*) > 1 ORDER BY VILLEREGION;
SELECT * FROM NONDF_VILLE_PAYS;
/*
-- >>>>>>>>>>>>>>>>>>>>>>>>>> -- Résultat généré:
VILLEREGION                   N
-------------------- ----------
EPINAY-SUR-SEINE              2
PARIS                         2
SOUSSE                        2
*/
SELECT A.VILLEREGION, B.PAYSREGION FROM NONDF_VILLE_PAYS A, DF_VILLE_PAYS B  WHERE A.VILLEREGION = B.VILLEREGION ORDER BY A.VILLEREGION;
/*
-- >>>>>>>>>>>>>>>>>>>>>>>>>> -- Résultat généré:
VILLEREGION          PAYSREGION         
-------------------- --------------------
EPINAY-SUR-SEINE     FRANCE              
EPINAY-SUR-SEINE                         
PARIS                                    
PARIS                FRANCE              
SOUSSE               ITALIE              
SOUSSE               TUNISIE             
 6 lignes sélectionnées 
*/
UPDATE REGION SET PAYSREGION = 'FRANCE'   WHERE VILLEREGION IN ('EPINAY-SUR-SEINE', 'PARIS');
UPDATE REGION SET PAYSREGION = 'TUNISIE'  WHERE VILLEREGION IN ('SOUSSE');
SELECT * FROM REGION ORDER BY 3, 2, 1;
/*
-- >>>>>>>>>>>>>>>>>>>>>>>>>> -- Résultat généré:
IDREGION        VILLEREGION          PAYSREGION           CONTINENTREGION    
--------------- -------------------- -------------------- --------------------
                BERLIN               ALLEMAGNE                                
                DUBLIN               ALLEMAGNE                                
                ANDERLECK            BELGIQUE             EUROPE              
                BRUXELLES            BELGIQUE                                 
                BRUXELLES            BELGIQUE             EUROPE              
                BRUXELLES            BELGIQUE                                 
                PEKIN                CHINE                ASIE                
                WUHAN                CHINE                ASIE                
                DJERBA               FRANCE                                   
                EPINAY-SUR-ORGE      FRANCE                                   
                EPINAY-SUR-SEINE     FRANCE                                   
                EPINAY-SUR-SEINE     FRANCE               EUROPE              
                EPINAY-SUR-SEINE     FRANCE                                   
                EPINAY-SUR-SEINE     FRANCE               EUROPE              
                LYON                 FRANCE               EUROPE              
                MARSEILLE            FRANCE               EUROPE              
                MARSEILLE            FRANCE                                   
                MARSEILLE            FRANCE                                   
                ORLY-VILLE           FRANCE               EUROPE              
                ORLY-VILLE           FRANCE                                   
                PARIS                FRANCE                                   
                PARIS                FRANCE                                   
                PARIS                FRANCE               EUROPE              
                PARIS                FRANCE                                   
                PARIS                FRANCE                                   
                VILLETANEUSE         FRANCE                                   
                BAGDAD               IRAQ                                     
                ROME                 ITALIE                                   
                ROME                 ITALIE               EUROPE              
                LONDRES              ROYAUME-UNI                              
                LONDRES              ROYAUME-UNI          EUROPE              
                MANCHESTER           ROYAUME-UNI                              
                MANCHESTER           ROYAUME-UNI          EUROPE              
                OXFORD               ROYAUME-UNI          EUROPE              
                OXFORD               ROYAUME-UNI                              
                OXFORD               ROYAUME-UNI                              
                BIZERTE              TUNISIE                                  
                CARTHAGE             TUNISIE                                  
                CARTHAGE             TUNISIE                                  
                HAMMAMET             TUNISIE                                  
                SOUSSE               TUNISIE                                  
                SOUSSE               TUNISIE                                  
                SOUSSE               TUNISIE              AFRIQUE             
                TUNIS                TUNISIE                                  
                TUNIS                TUNISIE              AFRIQUE             
 45 lignes sélectionnées 
*/

--- ??? DJERBA ?????????????? DUBLIN ------ Comment le savoir ?
UPDATE REGION SET PAYSREGION = 'TUNISIE'   WHERE VILLEREGION = 'DJERBA';
UPDATE REGION SET PAYSREGION = 'IRLANDE'   WHERE VILLEREGION = 'DUBLIN';

UPDATE REGION SET CONTINENTREGION = 'AFRIQUE'   WHERE PAYSREGION IN ('TUNISIE');
UPDATE REGION SET CONTINENTREGION = 'ASIE'      WHERE PAYSREGION IN ('CHINE', 'IRAQ');
UPDATE REGION SET CONTINENTREGION = 'EUROPE'    WHERE PAYSREGION IN ('ALLEMAGNE', 'BELGIQUE', 'FRANCE', 'ITALIE', 'IRLANDE', 'ROYAUME-UNI');

SELECT DISTINCT * FROM REGION ORDER BY 3, 2, 1;
/*
-- >>>>>>>>>>>>>>>>>>>>>>>>>> -- Résultat généré:
IDREGION        VILLEREGION          PAYSREGION           CONTINENTREGION    
--------------- -------------------- -------------------- --------------------
                BERLIN               ALLEMAGNE            EUROPE              
                ANDERLECK            BELGIQUE             EUROPE              
                BRUXELLES            BELGIQUE             EUROPE              
                PEKIN                CHINE                ASIE                
                WUHAN                CHINE                ASIE                
                EPINAY-SUR-ORGE      FRANCE               EUROPE              
                EPINAY-SUR-SEINE     FRANCE               EUROPE              
                LYON                 FRANCE               EUROPE              
                MARSEILLE            FRANCE               EUROPE              
                ORLY-VILLE           FRANCE               EUROPE              
                PARIS                FRANCE               EUROPE              
                VILLETANEUSE         FRANCE               EUROPE              
                BAGDAD               IRAQ                 ASIE                
                DUBLIN               IRLANDE              EUROPE              
                ROME                 ITALIE               EUROPE              
                LONDRES              ROYAUME-UNI          EUROPE              
                MANCHESTER           ROYAUME-UNI          EUROPE              
                OXFORD               ROYAUME-UNI          EUROPE              
                BIZERTE              TUNISIE              AFRIQUE             
                CARTHAGE             TUNISIE              AFRIQUE             
                DJERBA               TUNISIE              AFRIQUE             
                HAMMAMET             TUNISIE              AFRIQUE             
                SOUSSE               TUNISIE              AFRIQUE             
                TUNIS                TUNISIE              AFRIQUE             
 24 lignes sélectionnées 
*/
DROP TABLE REGION_SD;
CREATE TABLE REGION_SD AS SELECT DISTINCT * FROM REGION;
ALTER TABLE REGION_SD MODIFY IDREGION VARCHAR2(20);
UPDATE REGION_SD SET IDREGION = extraire_premieres_lettres(CONTINENTREGION, PAYSREGION, VILLEREGION,3);
UPDATE REGION_SD SET IDREGION = IDREGION || TO_CHAR(ROWNUM); -- Afin de ne pas avoir de doublons dans la clé primaire IDREGION

SELECT ' Table DIM_REGIONS avec un début de : homogénéisation, standardisation, correction' AS LAREGION FROM DUAL;
DROP TABLE DIM_REGIONS;
CREATE TABLE DIM_REGIONS(IDREGION, VILLEREGION, PAYSREGION, CONTINENTREGION) AS SELECT * FROM REGION_SD;
SELECT * FROM DIM_REGIONS ORDER BY 1;
/*
-- >>>>>>>>>>>>>>>>>>>>>>>>>> -- Résultat généré:
IDREGION        VILLEREGION          PAYSREGION           CONTINENTREGION    
--------------- -------------------- -------------------- --------------------
AFRTUNBIZ1      BIZERTE              TUNISIE              AFRIQUE             
AFRTUNCAR14     CARTHAGE             TUNISIE              AFRIQUE             
AFRTUNDJE12     DJERBA               TUNISIE              AFRIQUE             
AFRTUNHAM21     HAMMAMET             TUNISIE              AFRIQUE             
AFRTUNSOU6      SOUSSE               TUNISIE              AFRIQUE             
AFRTUNTUN11     TUNIS                TUNISIE              AFRIQUE             
ASICHIPEK23     PEKIN                CHINE                ASIE                
ASICHIWUH7      WUHAN                CHINE                ASIE                
ASIIRABAG19     BAGDAD               IRAQ                 ASIE                
EURALLBER4      BERLIN               ALLEMAGNE            EUROPE              
EURBELAND3      ANDERLECK            BELGIQUE             EUROPE              
EURBELBRU8      BRUXELLES            BELGIQUE             EUROPE              
EURFRAEPI15     EPINAY-SUR-ORGE      FRANCE               EUROPE              
EURFRAEPI9      EPINAY-SUR-SEINE     FRANCE               EUROPE              
EURFRALYO16     LYON                 FRANCE               EUROPE              
EURFRAMAR13     MARSEILLE            FRANCE               EUROPE              
EURFRAORL5      ORLY-VILLE           FRANCE               EUROPE              
EURFRAPAR17     PARIS                FRANCE               EUROPE              
EURFRAVIL18     VILLETANEUSE         FRANCE               EUROPE              
EURIRLDUB20     DUBLIN               IRLANDE              EUROPE              
EURITAROM24     ROME                 ITALIE               EUROPE              
EURROYLON22     LONDRES              ROYAUME-UNI          EUROPE              
EURROYMAN2      MANCHESTER           ROYAUME-UNI          EUROPE              
EURROYOXF10     OXFORD               ROYAUME-UNI          EUROPE              
 24 lignes sélectionnées 
*/

-- ==== MFB =======================================================================================================================
-- Creation d'une nouvelle TABLE/DIMENSION/VUE/VUE_MATERIALISEE de nom DIM_CLIENTS
-- DIM_CLIENTS(IDCLIENT, MAGASIN, CIVILCLIENT, NOMCLIENT, PRENCLIENT, CATEGCLIENT, MAILCLEINT, ..., VILLECLIENT, ... ? PAYSCLIENT, CONTINENTCLIENT)
-- ==== MFB =======================================================================================================================

-- Table DIM_CLIENTS avec un début de : homogénéisation, standardisation, correction
COLUMN IDCLIENT        FORMAT A15
COLUMN CIVILCLIENT     FORMAT A15
COLUMN NOMCLIENT       FORMAT A15
COLUMN PRENCLIENT      FORMAT A15
COLUMN VILLECLIENT     FORMAT A20
COLUMN PAYSCLIENT      FORMAT A20
COLUMN CONTINENTCLIENT FORMAT A20
/*
DESC TOUSCLIENTS;
Nom     NULL Type         
------- ---- ------------ 
CODCLI       VARCHAR2(50) 
CIVCLI       VARCHAR2(50) 
NOMCLI       VARCHAR2(50) 
PRENCLI      VARCHAR2(50) 
CATCLI       NUMBER       
ADRCLI       VARCHAR2(62) 
CPCLI        VARCHAR2(50) 
VILCLI       VARCHAR2(50) 
PAYSCLI      VARCHAR2(50) 
MAILCLI      VARCHAR2(50) 
TELCLI       VARCHAR2(20) 
MAGASIN      VARCHAR2(25)
*/
DROP TABLE DIM_CLIENTS;
CREATE TABLE DIM_CLIENTS (
IDCLIENT, MAGASIN, 
CODECLI, CIVILCLIENT, NOMCLIENT, PRENCLIENT, CATEGCLIENT, 
MAILCLIENT, TELCLIENT,
VILLECLIENT, CPCLIENT, DEPARTEMENTCLIENT, 
PAYSCLIENT, CONTINENTCLIENT, -- Le pays et le continenet ne sont plus nécessaires car l'information se trouve dans la DIM_REGIONS puisque la ville y est !
ADRESSECLIENT
) AS
SELECT 
MAGASIN || '-' || CODCLI, MAGASIN,
CODCLI, CIVCLI, NOMCLI, PRENCLI, CATCLI, 
MAILCLI, TELCLI,
VILCLI, CPCLI, SUBSTR(CPCLI, 1, 2),
PAYSCLI, 'CONTINENT',      -- Le pays et le continenet ne sont plus nécessaires
ADRCLI
FROM TOUSCLIENTS;

SELECT * FROM DIM_CLIENTS;
-- Y-a-t-il encore des doublons ?
SELECT * FROM DIM_CLIENTS ORDER BY NOMCLIENT, PRENCLIENT ;

-- ==== MFB =======================================================================================================================
-- Creation d'une nouvelle TABLE/DIMENSION/VUE/VUE_MATERIALISEE de nom DIM_TEMPS
-- ==== MFB =======================================================================================================================

/*
DESCRIBE TOUSCOMMANDES;
Nom     NULL Type         
------- ---- ------------ 
MAGASIN      VARCHAR2(25) 
NUMCOM       VARCHAR2(50) 
CODCLI       VARCHAR2(50) 
DATCOM       DATE         ------->>>>>>> Le format qui a été retenu est : DAY DD-MONTH-YYYY 
*/
DROP TABLE DIM_TEMPS_AVECDOUBLONS;
CREATE TABLE DIM_TEMPS_AVECDOUBLONS(IDDATE, LADATE, ANNEE, NUMEROMOIS, NOMMOIS, NUMEOJOUR, NOMJOUR) AS
SELECT TO_CHAR(DATCOM,'YYYY-MM-DD'), TO_CHAR(DATCOM,'DAY DD-MONTH-YYYY'), TO_CHAR(DATCOM, 'YYYY'), TO_CHAR(DATCOM, 'MM'), TO_CHAR(DATCOM, 'MONTH'), TO_CHAR(DATCOM, 'DD'), TO_CHAR(DATCOM, 'DAY')
FROM TOUSCOMMANDES;
DROP TABLE DIM_TEMPS;
CREATE TABLE DIM_TEMPS(IDDATE, LADATE, ANNEE, NUMEROMOIS, NOMMOIS, NUMEOJOUR, NOMJOUR) AS
SELECT DISTINCT * FROM DIM_TEMPS_AVECDOUBLONS;

SELECT DISTINCT * FROM DIM_TEMPS ORDER BY IDDATE;

/*
IDDATE     LADATE                      ANNE NU NOMMOIS   NU NOMJOUR 
---------- --------------------------- ---- -- --------- -- ---------
2000-09-17 SUNDAY    17-SEPTEMBER-2000 2000 09 SEPTEMBER 17 SUNDAY   
2000-10-16 MONDAY    16-OCTOBER  -2000 2000 10 OCTOBER   16 MONDAY   
2000-10-24 TUESDAY   24-OCTOBER  -2000 2000 10 OCTOBER   24 TUESDAY  
2001-01-22 MONDAY    22-JANUARY  -2001 2001 01 JANUARY   22 MONDAY   
2001-03-13 TUESDAY   13-MARCH    -2001 2001 03 MARCH     13 TUESDAY  
2003-02-14 FRIDAY    14-FEBRUARY -2003 2003 02 FEBRUARY  14 FRIDAY   
2005-01-07 FRIDAY    07-JANUARY  -2005 2005 01 JANUARY   07 FRIDAY   
2005-01-12 WEDNESDAY 12-JANUARY  -2005 2005 01 JANUARY   12 WEDNESDAY
2005-03-10 THURSDAY  10-MARCH    -2005 2005 03 MARCH     10 THURSDAY 
2005-03-11 FRIDAY    11-MARCH    -2005 2005 03 MARCH     11 FRIDAY   
2005-03-14 MONDAY    14-MARCH    -2005 2005 03 MARCH     14 MONDAY   
2007-01-30 TUESDAY   30-JANUARY  -2007 2007 01 JANUARY   30 TUESDAY  
2012-01-16 MONDAY    16-JANUARY  -2012 2012 01 JANUARY   16 MONDAY   
2012-01-17 TUESDAY   17-JANUARY  -2012 2012 01 JANUARY   17 TUESDAY  
2015-09-17 THURSDAY  17-SEPTEMBER-2015 2015 09 SEPTEMBER 17 THURSDAY 
2015-10-16 FRIDAY    16-OCTOBER  -2015 2015 10 OCTOBER   16 FRIDAY   
2015-10-24 SATURDAY  24-OCTOBER  -2015 2015 10 OCTOBER   24 SATURDAY 
2017-01-17 TUESDAY   17-JANUARY  -2017 2017 01 JANUARY   17 TUESDAY  
2018-09-17 MONDAY    17-SEPTEMBER-2018 2018 09 SEPTEMBER 17 MONDAY   
2019-09-17 TUESDAY   17-SEPTEMBER-2019 2019 09 SEPTEMBER 17 TUESDAY  
2020-09-17 THURSDAY  17-SEPTEMBER-2020 2020 09 SEPTEMBER 17 THURSDAY 
2020-11-13 FRIDAY    13-NOVEMBER -2020 2020 11 NOVEMBER  13 FRIDAY   
2021-09-17 FRIDAY    17-SEPTEMBER-2021 2021 09 SEPTEMBER 17 FRIDAY   
2022-02-22 TUESDAY   22-FEBRUARY -2022 2022 02 FEBRUARY  22 TUESDAY  
2023-09-17 SUNDAY    17-SEPTEMBER-2023 2023 09 SEPTEMBER 17 SUNDAY   
2024-03-06 WEDNESDAY 06-MARCH    -2024 2024 03 MARCH     06 WEDNESDAY
 26 lignes sélectionnées 
*/
-- ==== MFB =======================================================================================================================
-- Creation d'une nouvelle TABLE/DIMENSION/VUE/VUE_MATERIALISEE de nom DIM_ARTICLES
-- ==== MFB =======================================================================================================================
DESCRIBE TOUSARTICLES;
/*
Nom     NULL Type         
------- ---- ------------ 
MAGASIN      VARCHAR2(25) 
REFART       VARCHAR2(50) 
NOMART       VARCHAR2(50) 
QSART        VARCHAR2(50) 
PVART        VARCHAR2(50) 
PAART        VARCHAR2(50) 
*/
SELECT MAGASIN, REFART, NOMART, QSART, PVART, PAART FROM TOUSARTICLES ORDER BY NOMART;

COLUMN IDARTICLE FORMAT A20
DROP TABLE DIM_ARTICLES;
CREATE TABLE DIM_ARTICLES(IDARTICLE, MAGASIN, REFART, NOMART) AS
SELECT MAGASIN || '-' || REFART, MAGASIN, REFART, NOMART
FROM TOUSARTICLES;
SELECT * FROM DIM_ARTICLES;

-- ==== MFB =======================================================================================================================
-- Creation d'une nouvelle TABLE/FAIT/VUE/VUE_MATERIALISEE de nom FAIT_VENTES
-- Afin d'analyser en détail les ventes de chaque article par exemple (par région, par période, par article, par client...)
-- TOP 5 des clients
-- TOP 3 des magasins
-- TOP 10 des articles ...	   etc
-- ==== MFB =======================================================================================================================



/*
-- FB FB FB FB FB FB A compléter
*/

-- ==== MFB =======================================================================================================================
-- ==== MFB =======================================================================================================================
CREATE OR REPLACE FUNCTION enleverMonnaie(p_prix IN VARCHAR2) RETURN NUMBER IS
  v_prix NUMBER;
BEGIN
  -- Supprimer le symbole de la monnaie, transformer le point en virgule si nécessaire
  v_prix := TO_NUMBER(REPLACE(REGEXP_REPLACE(p_prix, '[^0-9,.]', ''), '.', ','), '999999999D999', 'NLS_NUMERIC_CHARACTERS='',.''');

  RETURN v_prix;
EXCEPTION
  WHEN OTHERS THEN
    -- Gérer les erreurs ici si nécessaire
    RETURN NULL;
END enleverMonnaie;
/
-- Tests
SELECT enleverMonnaie('555.55 €'), enleverMonnaie('$555,55'), enleverMonnaie('555.55 Dt')  FROM DUAL;
SELECT enleverMonnaie('555 €'), enleverMonnaie('$555'), enleverMonnaie('555 Dt')  FROM DUAL;
SELECT enleverMonnaie('35'), enleverMonnaie('26,43'), enleverMonnaie('4'), enleverMonnaie('1,71'), enleverMonnaie('5'), enleverMonnaie('2,29') FROM DUAL;

-- ==== MFB =======================================================================================================================
CREATE OR REPLACE FUNCTION convertir_devise(p_montant NUMBER, p_taux_change NUMBER) RETURN NUMBER IS
  v_montant_converti NUMBER;
BEGIN
  -- Conversion du montant selon le taux de change fourni et arrondi à 3 chiffres après la virgule
  v_montant_converti := ROUND(p_montant / p_taux_change, 3);

  -- Retourner le montant converti
  RETURN v_montant_converti;
END convertir_devise;
/
-- Tests
UPDATE ARTICLES_TN02 SET COL3 = convertir_devise(TO_NUMBER(COL3), 3.5);
UPDATE ARTICLES_TN02 SET COL5 = convertir_devise(TO_NUMBER(COL5), 3.5);
SELECT MAGASIN, COL1,COL2, COL4, COL5, COL3 FROM ARTICLES_TN02;

-- ==== MFB =======================================================================================================================
CREATE OR REPLACE FUNCTION extraire_premieres_lettres(mot1 IN VARCHAR2, mot2 IN VARCHAR2, mot3 IN VARCHAR2, nbLettres IN NUMBER
)
RETURN VARCHAR2
IS
    resultat VARCHAR2(30); -- Nombre total de lettres possibles (3 mots * nbLettres)
BEGIN
    resultat := SUBSTR(mot1, 1, nbLettres) || SUBSTR(mot2, 1, nbLettres) || SUBSTR(mot3, 1, nbLettres);
    RETURN resultat;
END;
/
-- Tests
SELECT extraire_premieres_lettres('Bonjour', 'Ordinateur', 'Programmation', 3) FROM DUAL;

-- ==== MFB =======================================================================================================================
CREATE OR REPLACE FUNCTION decomposer_date(p_date IN DATE)
  RETURN VARCHAR2
IS
  v_annee     VARCHAR2(4);
  v_mois_num  VARCHAR2(2);
  v_mois_nom  VARCHAR2(20);
  v_jour_num  VARCHAR2(2);
  v_jour_nom  VARCHAR2(20);
BEGIN
  -- Extraire l'année
  v_annee := TO_CHAR(p_date, 'YYYY');

  -- Extraire le mois (numéro et nom)
  v_mois_num := TO_CHAR(p_date, 'MM');
  v_mois_nom := TO_CHAR(p_date, 'Month');

  -- Extraire le jour (numéro et nom)
  v_jour_num := TO_CHAR(p_date, 'DD');
  v_jour_nom := TO_CHAR(p_date, 'Day');

  -- Retourner la chaîne formatée
  RETURN 'Année: ' || v_annee || ', Mois (numéro): ' || v_mois_num || ', Mois (nom): ' || v_mois_nom ||
         ', Jour (numéro): ' || v_jour_num || ', Jour (nom): ' || v_jour_nom;
END decomposer_date;
/
--Tests
SELECT decomposer_date(SYSDATE) FROM DUAL;
/*
DECOMPOSER_DATE(SYSDATE)    -- à la date du 22/02/2024                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           
------------------------------------------------------------------------------------------------
Année: 2024, Mois (numéro): 02, Mois (nom): February , Jour (numéro): 22, Jour (nom): Thursday    
*/

-- ==== MFB =======================================================================================================================
CREATE OR REPLACE PROCEDURE updateColumnValue(
    p_table_name   IN VARCHAR2,
    p_column_name  IN VARCHAR2,
    p_new_value    IN VARCHAR2
)
IS
    v_sql_statement VARCHAR2(4000);
BEGIN
    -- Construire la requête dynamique
    v_sql_statement := 'UPDATE ' || p_table_name ||
                       ' SET ' || p_column_name || ' = :new_value ' ||
                       ' WHERE ' || p_column_name || ' IS NULL OR ' ||
                       p_column_name || ' IN (''-'' , ''!'' , ''?'' , '''' , '' '' , ''  '', ''NULL'')';

    -- Exécuter la requête dynamique
    EXECUTE IMMEDIATE v_sql_statement USING p_new_value;

    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        -- Gérer les erreurs, par exemple, afficher un message ou enregistrer dans un journal
        DBMS_OUTPUT.PUT_LINE('Erreur lors de la mise à jour : ' || SQLERRM);
        ROLLBACK;
END updateColumnValue;
/
-- Tests
BEGIN
    updateColumnValue('TOUSCLIENTS', 'MAGASIN', NULL);
END;
/

CREATE OR REPLACE PROCEDURE updateColumnsValues(
    p_table_name   IN VARCHAR2,
    p_column_names IN VARCHAR2, -- Liste de noms de colonnes séparés par des virgules
    p_new_value    IN VARCHAR2
)
IS
    v_sql_statement VARCHAR2(4000);
    v_column_array  SYS.ODCIVARCHAR2LIST;
BEGIN
    -- Convertir la liste de noms de colonnes en un tableau
    v_column_array := SYS.ODCIVARCHAR2LIST();
    v_column_array.EXTEND(REGEXP_COUNT(p_column_names, ',') + 1);
    v_column_array := SYS.ODCIVARCHAR2LIST(SUBSTR(p_column_names || ',', 1, INSTR(p_column_names || ',', ',', 1, v_column_array.COUNT) - 1));

    -- Boucler sur le tableau des colonnes
    FOR i IN 1..v_column_array.COUNT LOOP
        -- Construire la requête dynamique
        v_sql_statement := 'UPDATE ' || p_table_name ||
                           ' SET ' || v_column_array(i) || ' = :new_value ' ||
                           ' WHERE ' || v_column_array(i) || ' IS NULL OR ' ||
                           v_column_array(i) || ' IN (''-'' , ''!'' , ''?'' , '''' , '' '' , ''  '', ''NULL'')';

        -- Exécuter la requête dynamique
        EXECUTE IMMEDIATE v_sql_statement USING p_new_value;

        COMMIT;
    END LOOP;
EXCEPTION
    WHEN OTHERS THEN
        -- Gérer les erreurs, par exemple, afficher un message ou enregistrer dans un journal
        DBMS_OUTPUT.PUT_LINE('Erreur lors de la mise à jour : ' || SQLERRM);
        ROLLBACK;
END updateColumnsValues;
/
--Tests
BEGIN
    updateColumnsValues('TOUSCLIENTS', 'MAGASIN, CODCLI, CIVCLI, NOMCLI, PRENCLI, CATCLI, CPCLI, VILCLI, PAYSCLI, MAILCLI, TELCLI', NULL);
END;
/


-- ==== MFB =======================================================================================================================
-- ==== MFB =======================================================================================================================

-- BON COURAGE ---------->>>>> SOURIEZ VOUS ETES NOTéS ET FILMéS...

-- ==== MFB =======================================================================================================================

-- ==== MFB =======================================================================================================================
/*
Le Sport est générateur de confiance !
                                      $"   *.      
              mfbmfbmfbmfb             \J $&learning J
                   dwh                     4r  "
                   def                    .db
                  g   s                  d" $
         ..ec.. .i     m.              at   $.machin
     .^        3*b.     a.           .a" .@"4F      eB
   ."         d"  ^b.    *r        .$"  d"   $         O
  /          P      $.    "t      d"   @     3r         U
 4        .eE........$r===e$$$$eeP    $       *..        F
 $       $$$$$       $   4$$DB$$$     F       data.      A
 $       DATA        $   4$DBMS$$     A       *$$$"      R
 4         "      ""3P ===$$DWH$"     O                  E
  *                 $       """        U                S
   ".             .P                    Z              @
     %.         z*"&smart ;!?            I MFB Mfb^%. DATA
        "*==*""                             ^"*==*""   
*/ 
-- ==== MFB =======================================================================================================================

-- ==== MFB =======================================================================================================================
-- Les dictons du jour !
--
-- Aujourd'hui, j'arrête de fumer : Le TABAC t'ABAT
-- Fumer nuit grâvement à ta santé et à celle de ton entourage
--
-- M   T   Dents  ;  SMILE and the World SMILES with you !
--
-- MANGER + MANGER = GROSSIR (??? M, A, N, G, E, R, O, S, S, I)
--
-- Manger & Bouger, 
-- Pour votre santé mangez 5 fruits et légumes par jour
-- Pour votre santé ne mangez pas trop gras, trop salé, trop sucré
-- Pour votre santé faites une activité physique régulière
-- Pour votre santé faites 30 mn de marche par jour
-- Pour votre santé faites des BD !!!
--
-- Dr. M. Faouzi Boufarès

-- ==== MFB =======================================================================================================================


