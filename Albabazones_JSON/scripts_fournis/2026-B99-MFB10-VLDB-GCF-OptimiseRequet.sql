-- ==== MFB =======================================================================================================================
-------- Université Sorbonne Paris Nord , Institut Galiée
-------- Master 2 Informatique (M2 EID2 = Exploration Informatique des Données et Décisionnel), Ingénieurs
-- ==== MFB =======================================================================================================================
-- Binome = Groupe de Travail N° xy  : Bxy (Exemple B01, B02,... B09, B10, B11...)
-- ==== MFB =======================================================================================================================
-- Numéro du Binôme (= GroupeDeTravail) --->>>> : Bxy
-- NOM1 PRENOM1                         --->>>> : np1
-- NOM2 PRENOM2                         --->>>> : np2

-- ====>>> Vos fichiers sql devront s'appeler : Bxy-NomDuFichier.sql            (NomDuFichier = MetaDon)
-- ==== MFB =======================================================================================================================
-- MFB MFB MFB MFB MFB MFB MFB MFB MFB MFB MFB MFB MFB MFB MFB MFB MFB MFB MFB MFB MFB MFB MFB MFB MFB MFB MFB MFB MFB MFB MFB MFB 
-- ==== MFB =======================================================================================================================

-- ==== MFB =======================================================================================================================
-- MFB MFB MFB MFB MFB MFB MFB MFB MFB MFB MFB MFB MFB MFB MFB MFB MFB MFB MFB MFB MFB MFB MFB MFB MFB MFB MFB MFB MFB MFB MFB MFB 
-- Date dernière mise à jour : 13 octobre 2026
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
-- Office: Y204   + MSN
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
-- ==== MFB =======================================================================================================================

-- ==== MFB =======================================================================================================================
--===== Génération aléatoire des données dans la BD (Gros volumes de données : Big or Small Data ! ========= DEBUT ================
--===== Introduction to Very Large Databases (VLDB)
-- ==== MFB =======================================================================================================================
-- OPTIMISATIONS -- OPTIMISATIONS -- OPTIMISATIONS : Données et/ou Traitements ?
-- ==== MFB =======================================================================================================================
------ Partitionnment des données -PARTITION- (Une sorte de fragmentation/découpage horizontal des tables)
------ Gestion des chemins d'accès rapides aux données -INDEX- (Création, Suppression, Reconstruction)
------ Création de vues matérialisées (VIEW, MATERIALIZED VIEW, SNAPSHOT)
------ Stokage de résultats partiels réutilisables sous forme physique (de tables) attention aux rafraîchissements
       /*
		CREATE MATERIALIZED VIEW nom_vue
		[PARTITION BY ...]
		BUILD IMMEDIATE       -- quand la construire (DEFERED)
		REFRESH FORCE         -- mode de rafraîchissement (COMPLETE, FAST) 
		ON DEMAND             -- quand la rafraîchir (COMMIT)
		ENABLE QUERY REWRITE  -- utilisable pour l'optimisation automatique de requêtes (DISABLE)
		AS SELECT ... FROM ...
	   */
------ Optimisation/réécriture des requêtes : Ordre des opérations / Plan d'exécution des requêtes / Le parallélisme / Le HINT "un indice"
------ SELECT /* + HINT(table) */ column1, column2... FROM table1, table2... WHERE condition1 AND/OR condition2... ;
       /* 
	    -- HINT pour les chemins d'accès : 
		        INDEX (nomindex) pour forcer l'utilisation de l'index "nomindex".
                INDEX pour calculer le coût pour chaque index disponible et utilise le meilleur.
		-- HINT pour les transformations de requêtes ; HINT pour les opérations de SQL jointure
		-- HINT pour l'exécution parallèle : NOPARALLEL, PARALLEL, NOPARALLEL_INDEX, PARALLEL_INDEX...
	   */
-- ==== MFB =======================================================================================================================

DROP TABLE VILLEPAYSCONTINENT;
CREATE TABLE VILLEPAYSCONTINENT(ID  NUMBER PRIMARY KEY, VILLE VARCHAR2(50), PAYS VARCHAR2(50), CONTINENT VARCHAR2(50));
INSERT INTO VILLEPAYSCONTINENT VALUES(1, 'BIZERTE', 'TUNISIE', 'AFRIQUE');
INSERT INTO VILLEPAYSCONTINENT VALUES(2, 'CARTHAGE', 'TUNISIE', 'AFRIQUE');
INSERT INTO VILLEPAYSCONTINENT VALUES(3, 'TUNIS', 'TUNISIE', 'AFRIQUE');
INSERT INTO VILLEPAYSCONTINENT VALUES(4, 'HAMMAMET', 'TUNISIE', 'AFRIQUE');
INSERT INTO VILLEPAYSCONTINENT VALUES(5, 'NABEUL', 'TUNISIE', 'AFRIQUE');
INSERT INTO VILLEPAYSCONTINENT VALUES(6, 'SOUSSE', 'TUNISIE', 'AFRIQUE');
INSERT INTO VILLEPAYSCONTINENT VALUES(7, 'DJERBA', 'TUNISIE', 'AFRIQUE');
INSERT INTO VILLEPAYSCONTINENT VALUES(8, 'TOZEUR', 'TUNISIE', 'AFRIQUE');
INSERT INTO VILLEPAYSCONTINENT VALUES(9, 'TATAOUINE', 'TUNISIE', 'AFRIQUE');
INSERT INTO VILLEPAYSCONTINENT VALUES(10, 'ALGER', 'ALGERIE', 'AFRIQUE');
INSERT INTO VILLEPAYSCONTINENT VALUES(11, 'RABAT', 'MAROC', 'AFRIQUE');
INSERT INTO VILLEPAYSCONTINENT VALUES(12, 'CAIRE', 'EGYPTE', 'AFRIQUE');
INSERT INTO VILLEPAYSCONTINENT VALUES(13, 'ALEXANDRIE', 'EGYPTE', 'AFRIQUE');
INSERT INTO VILLEPAYSCONTINENT VALUES(14, 'DAKAR', 'SENEGAL', 'AFRIQUE');
INSERT INTO VILLEPAYSCONTINENT VALUES(15, 'ABIDJAN', 'CÔTE D''VOIRE', 'AFRIQUE');
INSERT INTO VILLEPAYSCONTINENT VALUES(16, 'KHARTOUM', 'SOUDAN', 'AFRIQUE');
INSERT INTO VILLEPAYSCONTINENT VALUES(17, 'DAKAR', 'SENEGAL', 'AFRIQUE');
INSERT INTO VILLEPAYSCONTINENT VALUES(18, 'BAMAKO', 'MALI', 'AFRIQUE');
INSERT INTO VILLEPAYSCONTINENT VALUES(19, 'LIBREVILLE', 'GABON', 'AFRIQUE');
INSERT INTO VILLEPAYSCONTINENT VALUES(20, 'ADDIS-ABEBA', 'ETHIOPIE', 'AFRIQUE');

INSERT INTO VILLEPAYSCONTINENT VALUES(21, 'ANDERLECK', 'BELGIQUE', 'EUROPE');
INSERT INTO VILLEPAYSCONTINENT VALUES(22, 'BRUXELLES', 'BELGIQUE', 'EUROPE');
INSERT INTO VILLEPAYSCONTINENT VALUES(23, 'ROME', 'ITALIE', 'EUROPE');
INSERT INTO VILLEPAYSCONTINENT VALUES(24, 'MILAN', 'ITALIE', 'EUROPE');
INSERT INTO VILLEPAYSCONTINENT VALUES(25, 'BARCELONE', 'ESPAGNE', 'EUROPE');
INSERT INTO VILLEPAYSCONTINENT VALUES(26, 'MADIRD', 'ESPAGNE', 'EUROPE');
INSERT INTO VILLEPAYSCONTINENT VALUES(27, 'MALAGA', 'ESPAGNE', 'EUROPE');
INSERT INTO VILLEPAYSCONTINENT VALUES(28, 'LISBONNE', 'PORTUGAL', 'EUROPE');
INSERT INTO VILLEPAYSCONTINENT VALUES(29, 'PORTO', 'PORTUGAL', 'EUROPE');
INSERT INTO VILLEPAYSCONTINENT VALUES(30, 'BERLIN', 'ALLEMANGNE', 'EUROPE');
INSERT INTO VILLEPAYSCONTINENT VALUES(31, 'MUNICH', 'ALLEMANGNE', 'EUROPE');
INSERT INTO VILLEPAYSCONTINENT VALUES(32, 'EPINAY-SUR-SEINE', 'FRANCE', 'EUROPE');
INSERT INTO VILLEPAYSCONTINENT VALUES(33, 'LYON', 'FRANCE', 'EUROPE');
INSERT INTO VILLEPAYSCONTINENT VALUES(34, 'MARSEILLE', 'FRANCE', 'EUROPE');
INSERT INTO VILLEPAYSCONTINENT VALUES(35, 'ORLY-VILLE', 'FRANCE', 'EUROPE');
INSERT INTO VILLEPAYSCONTINENT VALUES(36, 'PARIS', 'FRANCE', 'EUROPE');
INSERT INTO VILLEPAYSCONTINENT VALUES(37, 'VILLETANEUSE', 'FRANCE', 'EUROPE');
INSERT INTO VILLEPAYSCONTINENT VALUES(38, 'LONDRES', 'ROYAUME-UNI', 'EUROPE');
INSERT INTO VILLEPAYSCONTINENT VALUES(39, 'OXFORD', 'ROYAUME-UNI', 'EUROPE');
INSERT INTO VILLEPAYSCONTINENT VALUES(40, 'MANCHESTER', 'ROYAUME-UNI', 'EUROPE');
INSERT INTO VILLEPAYSCONTINENT VALUES(41, 'LIVERPOOL', 'ROYAUME-UNI', 'EUROPE');

INSERT INTO VILLEPAYSCONTINENT VALUES(42, 'PEKIN', 'CHINE', 'ASIE');
INSERT INTO VILLEPAYSCONTINENT VALUES(43, 'WUHAN', 'CHINE', 'ASIE');
INSERT INTO VILLEPAYSCONTINENT VALUES(44, 'TOKYO', 'JAPON', 'ASIE');
INSERT INTO VILLEPAYSCONTINENT VALUES(45, 'SEOUL', 'COREE-DU-SUD', 'ASIE');
INSERT INTO VILLEPAYSCONTINENT VALUES(46, 'TEHERAN', 'IRAN', 'ASIE');
INSERT INTO VILLEPAYSCONTINENT VALUES(47, 'DAMAS', 'SYRIE', 'ASIE');
INSERT INTO VILLEPAYSCONTINENT VALUES(48, 'MOSCOU', 'RUSSIE', 'ASIE');
INSERT INTO VILLEPAYSCONTINENT VALUES(49, 'DOHA', 'QATAR', 'ASIE');
INSERT INTO VILLEPAYSCONTINENT VALUES(50, 'NEW-DELHI', 'INDE', 'ASIE');

COMMIT;

SELECT * FROM VILLEPAYSCONTINENT;

-- ==== MFB =======================================================================================================================

DROP TABLE CLIENTS_ALEA;
CREATE TABLE CLIENTS_ALEA (CODCLI NUMBER, CIVCLI VARCHAR2(20), NOMCLI VARCHAR2(30), PRENCLI	VARCHAR2(30), CATCLI NUMBER(2), ADNADRCLI VARCHAR2(100), 
                           CPCLI VARCHAR2(10), VILCLI VARCHAR2(50), PAYSCLI	VARCHAR2(50), MAILCLI VARCHAR2(50), TELCLI VARCHAR2(20),
						   CONSTRAINT PK_CLI PRIMARY KEY (CODCLI));

CREATE OR REPLACE PROCEDURE GENERATEUR_CLIENTS (NBRCLI NUMBER, AVIDER VARCHAR2) IS
-- La procédure GENERATEUR_CLIENTS permet de créer un certain nombre (NBRCLI) de client.e.s aléatoirement ;
  Query               VARCHAR2(2000);
  V_CODECLIENT        NUMBER;
  V_ALEA              NUMBER;
  V_CIVILITY          VARCHAR2(50);
  V_NOM               VARCHAR2(50);
  V_PRENOM            VARCHAR2(50);
  V_CATEGORY          NUMBER;
  V_ADRESSE           VARCHAR2(100);
  V_CP                VARCHAR2(50);
  V_VILLE             VARCHAR2(50);
  V_PAYS              VARCHAR2(50);
  V_CONTINENT         VARCHAR2(50);
  V_OPERATEUR         VARCHAR2(50);
  V_MAIL              VARCHAR2(50);
  V_TEL               VARCHAR2(50);
  V_NUMVILLE          NUMBER;
  NBRMAXOCC           NUMBER;
  V_NBRCLIEXIST       NUMBER;
BEGIN -- Début de la procédure GENERATEUR_CLIENTS
  SELECT COUNT(*) INTO NBRMAXOCC FROM VILLEPAYSCONTINENT;  -- Nbr max de villes afin de constituer aléatoirement les coordonnées d'un.e. client.e.
  
  V_NBRCLIEXIST := 0;
  IF UPPER(AVIDER) = 'Y'  THEN        -- Créer les lignes depuis zéro, de nouveaux clients
     Query := 'DROP TABLE CLIENTS_ALEA';
     EXECUTE IMMEDIATE Query;
     Query := 'CREATE TABLE CLIENTS_ALEA (CODCLI NUMBER, CIVCLI VARCHAR2(20), NOMCLI VARCHAR2(30), PRENCLI	VARCHAR2(30), CATCLI NUMBER(2), ADNADRCLI VARCHAR2(100), 
              CPCLI VARCHAR2(10), VILCLI VARCHAR2(50), PAYSCLI VARCHAR2(50), MAILCLI VARCHAR2(50), TELCLI VARCHAR2(20), CONSTRAINT PK_CLI PRIMARY KEY (CODCLI) )';
     EXECUTE IMMEDIATE Query;
  ELSE                              -- Ajouter des client.e.s à ceux qui sont déjà dans la table
     SELECT COUNT(*) INTO V_NBRCLIEXIST FROM CLIENTS_ALEA;
  END IF;
  
  FOR i IN 1..NBRCLI LOOP   -- Boucle pour construire et créer un.e. client.e.
      V_CODECLIENT := i + V_NBRCLIEXIST;  
	  V_ALEA       := TRUNC(DBMS_RANDOM.VALUE(1,4)); 
	  IF V_ALEA = 1 THEN 
	     V_CIVILITY  := 'Monsieur'; 
		 V_OPERATEUR := '@gmail.com';
	     ELSE IF V_ALEA = 2 THEN 
		         V_CIVILITY := 'Madame';  
				 V_OPERATEUR := '@yahoo.fr';
	          ELSE 
			     V_CIVILITY := 'Mademoiselle'; 
				 V_OPERATEUR := '@hotmail.com';
		      END IF; 
	  END IF;
	  V_NOM        := 'NOM' || V_CODECLIENT;
	  V_PRENOM     := 'Prenom' || V_CODECLIENT;
	  V_ALEA       := TRUNC(DBMS_RANDOM.VALUE(1,10)); 
	  V_CATEGORY   := V_ALEA;
	  V_ADRESSE    := 'ADRESSE' || V_CODECLIENT;
	  V_CP         := 'CP' || V_CODECLIENT;
      V_NUMVILLE := TRUNC(DBMS_RANDOM.VALUE(1,NBRMAXOCC+1));
	  IF V_NUMVILLE > NBRMAXOCC THEN V_NUMVILLE := NBRMAXOCC; END IF; 
      Query        := 'SELECT VILLE, PAYS, CONTINENT FROM VILLEPAYSCONTINENT WHERE ID = ' || V_NUMVILLE;
	  --DBMS_OUTPUT.PUT_LINE(Query);
	  EXECUTE IMMEDIATE Query  INTO V_VILLE, V_PAYS, V_CONTINENT ;
	  V_MAIL       := LOWER(V_PRENOM || '.' || V_NOM || V_OPERATEUR);
	  V_TEL        := 'TEL' || V_CODECLIENT;	  
      INSERT INTO CLIENTS_ALEA VALUES (V_CODECLIENT, V_CIVILITY, V_NOM, V_PRENOM, V_CATEGORY, V_ADRESSE, V_CP, V_VILLE, V_PAYS, V_MAIL, V_TEL)	 ;
	  COMMIT;
  END LOOP;
END; -- Fin de la procédure GENERATEUR_CLIENTS
/
--Tests de la procédure
EXEC GENERATEUR_CLIENTS(50000,'Y');
EXEC GENERATEUR_CLIENTS(10,'N');
SELECT * FROM CLIENTS_ALEA ORDER BY 1;
SELECT COUNT(*) NBRCLI FROM CLIENTS_ALEA;

-- Création d'accélérateur de traitement !
CREATE INDEX XALEACLI1 ON CLIENTS_ALEA(PAYSCLI);
CREATE INDEX XALEACLI2 ON CLIENTS_ALEA(VILCLI);

-- ==== MFB =======================================================================================================================
DROP TABLE ARTICLES_ALEA;
CREATE TABLE ARTICLES_ALEA (REFART NUMBER, NOMART VARCHAR2(50), PVART NUMBER(10,2), QSART NUMBER, PAART NUMBER(10,2), CONSTRAINT PK_ART PRIMARY KEY (REFART) );

CREATE OR REPLACE PROCEDURE GENERATEUR_ARTICLES (NBRART NUMBER, AVIDER VARCHAR2) IS
-- La procédure GENERATEUR_ARTICLES permet de créer un certain nombre (NBRART) d'articles aléatoirement ;
  Query             VARCHAR2(2000);
  V_REFART          NUMBER;
  V_NOMART          VARCHAR2(50);
  V_QSART           NUMBER;
  V_PAART           NUMBER;
  V_PVART           NUMBER;
  V_COEF            NUMBER;
  V_NBRARTEXIST     NUMBER;
BEGIN -- Début de la procédure GENERATEUR_ARTICLES
  V_NBRARTEXIST := 0;
  IF UPPER(AVIDER) = 'Y'  THEN        -- Créer les lignes depuis zéro, de nouveaux articles
     Query := 'DROP TABLE ARTICLES_ALEA';
     EXECUTE IMMEDIATE Query;
     Query := 'CREATE TABLE ARTICLES_ALEA (REFART NUMBER, NOMART VARCHAR2(50), PVART NUMBER(10,2), QSART NUMBER, PAART NUMBER(10,2), CONSTRAINT PK_ART PRIMARY KEY (REFART) )';
     EXECUTE IMMEDIATE Query;
    ELSE                              -- Ajouter des articles à ceux qui sont déjà dans la table
     SELECT COUNT(*) INTO V_NBRARTEXIST FROM ARTICLES_ALEA;
  END IF;
  
  FOR i IN 1..NBRART LOOP      -- Boucle pour construire et créer un article
      V_REFART := i + V_NBRARTEXIST;  
      V_NOMART := 'NOMART' || V_REFART;
	  V_QSART  := TRUNC(DBMS_RANDOM.VALUE(1,500));
      V_PAART  := DBMS_RANDOM.VALUE(1,500);
	  V_COEF   := DBMS_RANDOM.VALUE(1,11); 
	  V_PVART  := V_PAART * V_COEF;
      --DBMS_OUTPUT.PUT_LINE(V_REFART || '  ' || V_NOMART || '  ' || V_PVART || '  ' || V_QSART || '  ' || V_PAART);	  
      INSERT INTO ARTICLES_ALEA VALUES (V_REFART, V_NOMART, V_PVART, V_QSART, V_PAART) ;
	  COMMIT;
  END LOOP;
END; -- Fin de la procédure GENERATEUR_ARTICLES
/
EXEC GENERATEUR_ARTICLES(50000,'Y');
EXEC GENERATEUR_ARTICLES(10,'N');
SELECT * FROM ARTICLES_ALEA ORDER BY 1;
SELECT COUNT(*) NBRART FROM ARTICLES_ALEA;

-- ==== MFB =======================================================================================================================
DROP TABLE COMMANDES_ALEA;
CREATE TABLE COMMANDES_ALEA (NUMCOM NUMBER, CODCLI NUMBER, DATCOM DATE);
DROP TABLE DETAILCOM_ALEA;
CREATE TABLE DETAILCOM_ALEA (NUMCOM NUMBER, REFART NUMBER, QTCOM NUMBER, PUART NUMBER(10,2), REMISE NUMBER(4,2) );

ALTER SESSION SET NLS_DATE_FORMAT = 'YYYY-MM-DD';

CREATE OR REPLACE PROCEDURE GENERATEUR_COMMANDES (NBRCOM NUMBER, ANDEB NUMBER, ANFIN NUMBER, AVIDER VARCHAR2) IS
-- La procédure GENERATEUR_COMMANDES permet de créer un certain nombre (NBRCOM) de commandes et de lignes commandes (détails) aléatoirement ;
  Query               VARCHAR2(2000);
  V_NUMCOM            NUMBER;
  V_CODECLI           NUMBER;
  V_NBRMAXCLI         NUMBER;
  V_NBRMAXART         NUMBER;
  V_ARTACOMD          NUMBER;
  V_DATE              DATE;
  V_DATECHAR          VARCHAR2(20);
  V_DATEPARTITION1    VARCHAR2(20);
  V_DATEPARTITION2    VARCHAR2(20);
  V_FORMAT            VARCHAR2(20); 
  V_NBRCOMEXIST       NUMBER;
-- ==== MFB =======================================================================================================================
  PROCEDURE GENERATEUR_DETAILSCOMMANDES (NUMEROCOM NUMBER, NOMBREART NUMBER) IS
  -- La procédure GENERATEUR_DETAILSCOMMANDES permet de créer un certain nombre (NBRCOM) d'articles aléatoirement dans une commande;
    V_QTCOM           NUMBER;
    V_QSART           NUMBER;
    V_REMISE          NUMBER;
    V_REFART          NUMBER;
    V_PUART           NUMBER;
  BEGIN -- Début de la procédure GENERATEUR_DETAILSCOMMANDES
    FOR j IN 1..NOMBREART LOOP -- Boucle pour construire et créer le détail d'une commande (ses articles)
	  --V_REFART := j;
	  V_QTCOM  := TRUNC(DBMS_RANDOM.VALUE(1,10));
      V_REMISE := DBMS_RANDOM.VALUE(1,30)/100;
      V_REFART := TRUNC(DBMS_RANDOM.VALUE(1,V_NBRMAXART+1));
	  Query    := 'SELECT PVART, QSART FROM ARTICLES_ALEA WHERE REFART = ' || V_REFART;
	  --DBMS_OUTPUT.PUT_LINE(Query);
	  EXECUTE IMMEDIATE Query  INTO V_PUART, V_QSART ;
	  INSERT INTO DETAILCOM_ALEA VALUES (NUMEROCOM, V_REFART, V_QTCOM, V_PUART, V_REMISE);
    END LOOP;
  END;  -- Fin de la procédure GENERATEUR_DETAILSCOMMANDES;
-- ==== MFB =======================================================================================================================
  
BEGIN -- Début de la procédure GENERATEUR_COMMANDES
  V_NBRCOMEXIST := 0;
  V_DATEPARTITION1 := '2010-01-01';
  V_DATEPARTITION2 := '2030-01-01';
  V_FORMAT         := 'YYYY-MM-DD';
  SELECT COUNT(*) INTO V_NBRMAXART FROM ARTICLES_ALEA;	
  SELECT COUNT(*) INTO V_NBRMAXCLI FROM CLIENTS_ALEA;
  
  IF UPPER(AVIDER) = 'Y'  THEN        -- Créer les lignes depuis zéro, de nouvelles commandes
     --SELECT COUNT(*) INTO V_NBRMAXART FROM ARTICLES_ALEA;	
     Query := 'DROP TABLE DETAILCOM_ALEA';
     EXECUTE IMMEDIATE Query;
     Query := 'CREATE TABLE DETAILCOM_ALEA (NUMCOM NUMBER, REFART NUMBER, QTCOM NUMBER, PUART NUMBER(10,2), REMISE NUMBER(4,2))';
     EXECUTE IMMEDIATE Query;

     --SELECT COUNT(*) INTO V_NBRMAXCLI FROM CLIENTS_ALEA;	
     Query := 'DROP TABLE COMMANDES_ALEA';
     EXECUTE IMMEDIATE Query;
	 -- Création de table sans partition pour l'optimisation des requêtes :
     -- Query := 'CREATE TABLE COMMANDES_ALEA (NUMCOM NUMBER, CODCLI NUMBER, DATCOM DATE)';
	 
	   -- Création de table avec des partitions pour l'optimisation des requêtes : Découpage/Fragmentation/PARTITIONnement de table
    /* Exemple 1 de partitionnement de la table COMMANDES_ALEA : PARTITION BY RANGE(DATCOM)
     DROP TABLE COMMANDES_ALEA;
     CREATE TABLE COMMANDES_ALEA (NUMCOM NUMBER, CODCLI NUMBER, DATCOM DATE) PARTITION BY RANGE(DATCOM)
           (  PARTITION CMDP1 VALUES LESS THAN (TO_DATE('2010-01-01','YYYY-MM-DD')),     -- V_DATEPARTITION1
              PARTITION CMDP2 VALUES LESS THAN (TO_DATE('2030-01-01','YYYY-MM-DD')) );   -- V_DATEPARTITION2
			  
         INSERT INTO COMMANDES_ALEA VALUES (9,  9,  '2009-9-9');
         INSERT INTO COMMANDES_ALEA VALUES (5,  5,  '2010-5-5');
         INSERT INTO COMMANDES_ALEA VALUES (7,  7,  '2017-7-5');
         INSERT INTO COMMANDES_ALEA VALUES (2,  2,  '2002-2-2');
         INSERT INTO COMMANDES_ALEA VALUES (30, 1,  '2029-12-30');
         INSERT INTO COMMANDES_ALEA VALUES (1,  1,  '1900-1-1');
         INSERT INTO COMMANDES_ALEA VALUES (20, 11, '2020-11-20');
		 
         SELECT * FROM COMMANDES_ALEA PARTITION (CMDP1);
         SELECT * FROM COMMANDES_ALEA PARTITION (CMDP2);
    */
    /* Exemple 2 de partitionnement de la table COMMANDES_ALEA : PARTITION BY RANGE(NUMCOM)
       Query := 'CREATE TABLE COMMANDES_ALEA (NUMCOM NUMBER, CODCLI NUMBER, DATCOM DATE) PARTITION BY RANGE(NUMCOM)
              (  PARTITION CMDP1 VALUES LESS THAN (100),  
			     PARTITION CMDP2 VALUES LESS THAN (300)  )';
	   EXECUTE IMMEDIATE Query;
    */

     Query := 'CREATE TABLE COMMANDES_ALEA (NUMCOM NUMBER, CODCLI NUMBER, DATCOM DATE) PARTITION BY RANGE(DATCOM)
            (  PARTITION CMDP1 VALUES LESS THAN (TO_DATE(' || CHR(39) || V_DATEPARTITION1 || CHR(39) || ',' || CHR(39) || V_FORMAT || CHR(39) || ')), ' ||
              'PARTITION CMDP2 VALUES LESS THAN (TO_DATE(' || CHR(39) || V_DATEPARTITION2 || CHR(39) || ',' || CHR(39) || V_FORMAT || CHR(39) || ')) )';
     --DBMS_OUTPUT.PUT_LINE(Query);	
     EXECUTE IMMEDIATE Query;
  ELSE                              -- Ajouter des commandes à celles qui sont déjà dans la table
       SELECT COUNT(*) INTO V_NBRCOMEXIST FROM COMMANDES_ALEA;
  END IF;
  
  FOR i IN 1..NBRCOM LOOP                               -- Boucle pour construire et créer une commande
      V_NUMCOM := i + V_NBRCOMEXIST;
      V_CODECLI := TRUNC(DBMS_RANDOM.VALUE(1,V_NBRMAXCLI+1));
	  IF V_CODECLI > V_NBRMAXCLI THEN V_CODECLI := V_NBRMAXCLI; END IF; 
	  V_DATECHAR := TO_CHAR(TRUNC(DBMS_RANDOM.VALUE(ANDEB,ANFIN))) || '-' || TO_CHAR(TRUNC(DBMS_RANDOM.VALUE(1,12))) 
	  || '-' || TO_CHAR(TRUNC(DBMS_RANDOM.VALUE(1,28)));
	  V_DATE := TO_DATE(V_DATECHAR,V_FORMAT);
      --DBMS_OUTPUT.PUT_LINE(V_DATECHAR || '          ' || V_DATE);	
	  INSERT INTO COMMANDES_ALEA VALUES (V_NUMCOM, V_CODECLI, V_DATE)	 ;
	  V_ARTACOMD := TRUNC(DBMS_RANDOM.VALUE(1,16));     -- On suppose que le nombre maximum d'articles par commande est de 15
	  GENERATEUR_DETAILSCOMMANDES(V_NUMCOM, V_ARTACOMD);
	  COMMIT;
  END LOOP;

END; -- Fin de la procédure GENERATEUR_COMMANDES
/
EXEC GENERATEUR_COMMANDES(500000,2000,2021,'Y');

EXEC GENERATEUR_COMMANDES(10,2000,2021,'N');
EXEC GENERATEUR_COMMANDES(20000,2000,2021,'N');

SELECT * FROM COMMANDES_ALEA ORDER BY 1;
SELECT COUNT(*) NBRCOM FROM COMMANDES_ALEA;
SELECT * FROM COMMANDES_ALEA PARTITION (CMDP1);
SELECT * FROM COMMANDES_ALEA PARTITION (CMDP2);
SELECT COUNT(*) NBRCOMCOM FROM COMMANDES_ALEA;
SELECT * FROM DETAILCOM_ALEA ORDER BY 1;
SELECT COUNT(*) NBRLIGCOM FROM DETAILCOM_ALEA;

--============================== Requêtes sur de gros volumes de données !

SET LINES 1000
SET PAGES 1000
COLUMN CA FORMAT 999999999999.999
COLUMN PAYS     FORMAT A20
COLUMN VILLE    FORMAT A20
COLUMN CIVILITE FORMAT A20

SET TIMING ON
SELECT * FROM COMMANDES_ALEA, DETAILCOM_ALEA WHERE COMMANDES_ALEA.NUMCOM = DETAILCOM_ALEA.NUMCOM ORDER BY 1;
SET TIMING OFF 
 
SELECT 'Les commandes des client-e-s français-es de 2010 à 2020' AS ListeCommandes FROM DUAL;
SET TIMING ON
SELECT * FROM CLIENTS_ALEA C, COMMANDES_ALEA K WHERE C.CODCLI=K.CODCLI 
AND UPPER(C.PAYSCLI) = 'FRANCE' AND K.DATCOM >= '2010-01-01' AND K.DATCOM <= '2020-12-31';
SET TIMING OFF

SELECT 'Le nombre de commandes des client-e-s français-es de 2010 à 2020' AS NombreCommandes FROM DUAL;
SET TIMING ON
SELECT COUNT(*) N_FR FROM CLIENTS_ALEA C, COMMANDES_ALEA K WHERE C.CODCLI=K.CODCLI 
AND UPPER(C.PAYSCLI) = 'FRANCE' AND K.DATCOM >= '2010-01-01' AND K.DATCOM <= '2020-12-31';
SET TIMING OFF

SELECT 'Le CA des client-e-s français-es de Paris de 2010 à 2020' AS CA FROM DUAL;
SET TIMING ON
SELECT SUM(QTCOM*PUART*(1-REMISE/100)) CA 
FROM CLIENTS_ALEA C, COMMANDES_ALEA K, DETAILCOM_ALEA D
WHERE C.CODCLI=K.CODCLI AND K.NUMCOM=D.NUMCOM
AND 
UPPER(C.PAYSCLI) = 'FRANCE' AND UPPER(C.VILCLI) = 'PARIS' AND K.DATCOM >= '2010-01-01' AND K.DATCOM <= '2020-12-31';
SET TIMING OFF

SELECT 'Le CA des client-e-s français-es de Marseille de 2010 à 2020' AS CA FROM DUAL;
SET TIMING ON
SELECT SUM(QTCOM*PUART*(1-REMISE/100)) CA 
FROM CLIENTS_ALEA C, COMMANDES_ALEA K, DETAILCOM_ALEA D
WHERE C.CODCLI=K.CODCLI AND K.NUMCOM=D.NUMCOM
AND 
UPPER(C.PAYSCLI) = 'FRANCE' AND UPPER(C.VILCLI) = 'MARSEILLE' AND K.DATCOM >= '2010-01-01' AND K.DATCOM <= '2020-12-31';
SET TIMING OFF

SELECT 'Le CA des client-e-s français-es par ville de 2010 à 2020' AS CA FROM DUAL;
SET TIMING ON
SELECT C.VILCLI VILLE, SUM(D.QTCOM*D.PUART*(1-D.REMISE/100)) CA 
FROM CLIENTS_ALEA C, COMMANDES_ALEA K, DETAILCOM_ALEA D
WHERE C.CODCLI=K.CODCLI AND K.NUMCOM=D.NUMCOM
AND UPPER(C.PAYSCLI) = 'FRANCE' AND K.DATCOM >= '2010-01-01' AND K.DATCOM <= '2020-12-31'
GROUP BY C.VILCLI ORDER BY 1;
SET TIMING OFF

SELECT 'Le CA des client-e-s français-es par pays et par ville de 2010 à 2020' AS CA FROM DUAL;
SET TIMING ON
SELECT C.PAYSCLI PAYS, C.VILCLI VILLE, SUM(D.QTCOM*D.PUART*(1-D.REMISE/100)) CA 
FROM CLIENTS_ALEA C, COMMANDES_ALEA K, DETAILCOM_ALEA D
WHERE C.CODCLI=K.CODCLI AND K.NUMCOM=D.NUMCOM
AND K.DATCOM >= '2010-01-01' AND K.DATCOM <= '2020-12-31'
GROUP BY CUBE(C.VILCLI,C.PAYSCLI) ORDER BY 1;
SET TIMING OFF

SELECT 'Le CA des client-e-s français-es par pays et par ville de 2010 à 2020' AS CA FROM DUAL;
SET TIMING ON
SELECT C.PAYSCLI PAYS, C.VILCLI VILLE, SUM(D.QTCOM*D.PUART*(1-D.REMISE/100)) CA 
FROM CLIENTS_ALEA C, COMMANDES_ALEA K, DETAILCOM_ALEA D
WHERE C.CODCLI=K.CODCLI AND K.NUMCOM=D.NUMCOM
AND K.DATCOM >= '2010-01-01' AND K.DATCOM <= '2020-12-31'
GROUP BY ROLLUP(C.VILCLI,C.PAYSCLI) ORDER BY 1;
SET TIMING OFF


SELECT 'Le CA des client-e-s français-es par pays et par ville et par genre de 2010 à 2020' AS CA FROM DUAL;
SET TIMING ON
SELECT C.PAYSCLI PAYS, C.VILCLI VILLE, C.CIVCLI CIVILITE, SUM(D.QTCOM*D.PUART*(1-D.REMISE/100)) CA 
FROM CLIENTS_ALEA C, COMMANDES_ALEA K, DETAILCOM_ALEA D
WHERE C.CODCLI=K.CODCLI AND K.NUMCOM=D.NUMCOM
AND K.DATCOM >= '2010-01-01' AND K.DATCOM <= '2020-12-31'
GROUP BY CUBE(C.PAYSCLI,C.VILCLI,C.CIVCLI) ORDER BY 1, 2, 3;
SET TIMING OFF
/*
Elapsed: 00:00:05.436
*/
/*
Après création de l'index 1
Elapsed: 00:00:03.897
*/
/*
Après création de l'index 2
Elapsed: 00:00:03.815
*/

-- Requête : MFB Le CA des client-e-s français-es par pays et par ville et par genre de 2010 à 2020'
SELECT 'Le CA des client-e-s français-es par pays et par ville et par genre de 2010 à 2020' AS CA FROM DUAL;
SET TIMING ON
SELECT /*+PARALLEL(C) */ C.PAYSCLI PAYS, C.VILCLI VILLE, C.CIVCLI CIVILITE, SUM(D.QTCOM*D.PUART*(1-D.REMISE/100)) CA 
FROM CLIENTS_ALEA C, COMMANDES_ALEA K, DETAILCOM_ALEA D
WHERE C.CODCLI=K.CODCLI AND K.NUMCOM=D.NUMCOM
AND K.DATCOM >= '2010-01-01' AND K.DATCOM <= '2020-12-31'
GROUP BY CUBE(C.PAYSCLI,C.VILCLI,C.CIVCLI) ORDER BY 1, 2, 3;
SET TIMING OFF

/*
Avec l'utilisation du HINT parallèle
Elapsed: 00:00:02.736
*/

SELECT 'Le CA des client-e-s français-es par pays, par ville et par genre de 2010 à 2020' AS CA FROM DUAL;
SET TIMING ON
SELECT /*+ PARALLEL(C) PARALLEL(K) PARALLEL(D)*/ C.PAYSCLI PAYS, C.VILCLI VILLE, C.CIVCLI CIVILITE, SUM(D.QTCOM*D.PUART*(1-D.REMISE/100)) CA 
FROM CLIENTS_ALEA C, COMMANDES_ALEA K, DETAILCOM_ALEA D
WHERE C.CODCLI=K.CODCLI AND K.NUMCOM=D.NUMCOM
AND K.DATCOM >= '2010-01-01' AND K.DATCOM <= '2020-12-31'
GROUP BY CUBE(C.PAYSCLI,C.VILCLI,C.CIVCLI) ORDER BY 1, 2, 3;
SET TIMING OFF
/*
Avec l'utilisation du HINT parallèle
Elapsed: 00:00:01.584
*/

SELECT 'Le CA des client-e-s français-es par pays et par ville et par genre de 2005 à 2015' AS CA FROM DUAL;
SET TIMING ON
SELECT C.PAYSCLI PAYS, C.VILCLI VILLE, C.CIVCLI CIVILITE, SUM(D.QTCOM*D.PUART*(1-D.REMISE/100)) CA 
FROM CLIENTS_ALEA C, COMMANDES_ALEA K, DETAILCOM_ALEA D
WHERE C.CODCLI=K.CODCLI AND K.NUMCOM=D.NUMCOM
AND K.DATCOM >= '2005-01-01' AND K.DATCOM <= '2015-12-31'
GROUP BY CUBE(C.PAYSCLI,C.VILCLI,C.CIVCLI) ORDER BY 1, 2, 3;
SET TIMING OFF
/*
Elapsed: 00:00:05.591
*/

SELECT 'Le CA des client-e-s français-es par pays et par ville et par genre de 2010 à 2020' AS CA FROM DUAL;
SET TIMING ON
SELECT C.PAYSCLI PAYS, C.VILCLI VILLE, C.CIVCLI CIVILITE, SUM(D.QTCOM*D.PUART*(1-D.REMISE/100)) CA 
FROM CLIENTS_ALEA C, DETAILCOM_ALEA D, (SELECT * FROM COMMANDES_ALEA WHERE DATCOM >= '2010-01-01' AND DATCOM <= '2020-12-31') K
WHERE C.CODCLI=K.CODCLI AND K.NUMCOM=D.NUMCOM
GROUP BY CUBE(C.PAYSCLI,C.VILCLI,C.CIVCLI) ORDER BY 1, 2, 3;
SET TIMING OFF
/*
Elapsed: 00:00:03.891
*/

SELECT 'Le CA des client-e-s français-es par pays et par ville et par genre de 2005 à 2015' AS CA FROM DUAL;
SET TIMING ON
SELECT /*+ INDEX(CLIENTS_ALEA XALEACLI1)*/ C.PAYSCLI PAYS, C.VILCLI VILLE, C.CIVCLI CIVILITE, SUM(D.QTCOM*D.PUART*(1-D.REMISE/100)) CA 
FROM CLIENTS_ALEA C, (SELECT * FROM COMMANDES_ALEA WHERE DATCOM >= '2005-01-01' AND DATCOM <= '2015-12-31') K, DETAILCOM_ALEA D
WHERE C.CODCLI=K.CODCLI AND K.NUMCOM=D.NUMCOM
GROUP BY CUBE(C.PAYSCLI,C.VILCLI,C.CIVCLI) ORDER BY 1, 2, 3;
SET TIMING OFF
/*
Elapsed: 00:00:05.081
*/

SELECT 'Le CA des client-e-s français-es par pays et par ville et par genre de 2005 à 2015' AS CA FROM DUAL;
SET TIMING ON
SELECT /*ORDERED*/ C.PAYSCLI PAYS, C.VILCLI VILLE, C.CIVCLI CIVILITE, SUM(D.QTCOM*D.PUART*(1-D.REMISE/100)) CA 
FROM (SELECT * FROM COMMANDES_ALEA WHERE DATCOM >= '2005-01-01' AND DATCOM <= '2015-12-31') K, CLIENTS_ALEA C, DETAILCOM_ALEA D
WHERE C.CODCLI=K.CODCLI AND K.NUMCOM=D.NUMCOM
GROUP BY CUBE(C.PAYSCLI,C.VILCLI,C.CIVCLI) ORDER BY 1, 2, 3;
SET TIMING OFF
/*
Elapsed: 00:00:06.281
*/

-- ==== MFB =======================================================================================================================
DROP TABLE COMMANDES_ALEA1;
CREATE TABLE COMMANDES_ALEA1 (NUMCOM NUMBER, CODCLI NUMBER, DATCOM DATE);
DROP TABLE DETAILCOM_ALEA1;
CREATE TABLE DETAILCOM_ALEA1 (NUMCOM NUMBER, REFART NUMBER, QTCOM NUMBER, PUART NUMBER(10,2), REMISE NUMBER(4,2) );

ALTER SESSION SET NLS_DATE_FORMAT = 'YYYY-MM-DD';

CREATE OR REPLACE PROCEDURE GENERATEUR_COMMANDES1 (NBRCOM NUMBER, ANDEB NUMBER, ANFIN NUMBER) IS
-- La procédure GENERATEUR_COMMANDES permet de créer un certain nombre (NBRCOM) de commandes aléatoirement ;
  Query               VARCHAR2(2000);
  V_CODECLI           NUMBER;
  V_NBRMAXCLI         NUMBER;
  V_NBRMAXART         NUMBER;
  V_ARTACOMD          NUMBER;
  V_DATE              DATE;
  V_DATECHAR          VARCHAR2(20);
  V_DATEPARTITION1    VARCHAR2(20);
  V_DATEPARTITION2    VARCHAR2(20);
  V_FORMAT            VARCHAR2(20); 
-- ==== MFB =======================================================================================================================
  PROCEDURE GENERATEUR_DETAILSCOMMANDES1 (NUMEROCOM NUMBER, NOMBREART NUMBER) IS
  -- La procédure GENERATEUR_DETAILSCOMMANDES1 permet de créer un certain nombre (NBRCOM) d'articles aléatoirement dans une commande;
    V_QTCOM           NUMBER;
    V_QSART           NUMBER;
    V_REMISE          NUMBER;
    V_REFART          NUMBER;
    V_PUART           NUMBER;
  BEGIN -- Début de la procédure GENERATEUR_DETAILSCOMMANDES1
    FOR j IN 1..NOMBREART LOOP
	  --V_REFART := j;
	  V_QTCOM  := TRUNC(DBMS_RANDOM.VALUE(1,10));
      V_REMISE := DBMS_RANDOM.VALUE(1,30)/100;
      V_REFART := TRUNC(DBMS_RANDOM.VALUE(1,V_NBRMAXART+1));
	  Query    := 'SELECT PVART, QSART FROM ARTICLES_ALEA WHERE REFART = ' || V_REFART;
	  --DBMS_OUTPUT.PUT_LINE(Query);
	  EXECUTE IMMEDIATE Query  INTO V_PUART, V_QSART ;
	  INSERT INTO DETAILCOM_ALEA1 VALUES (NUMEROCOM, V_REFART, V_QTCOM, V_PUART, V_REMISE)	 ;
    END LOOP;
  END;  -- Fin de la procédure GENERATEUR_DETAILSCOMMANDES1
-- ==== MFB =======================================================================================================================
  
BEGIN -- Début de la procédure GENERATEUR_COMMANDES1
  SELECT COUNT(*) INTO V_NBRMAXART FROM ARTICLES_ALEA;	
  Query := 'DROP TABLE DETAILCOM_ALEA1';
  EXECUTE IMMEDIATE Query;
  Query := 'CREATE TABLE DETAILCOM_ALEA1 (NUMCOM NUMBER, REFART NUMBER, QTCOM NUMBER, PUART NUMBER(10,2), REMISE NUMBER(4,2))';
  EXECUTE IMMEDIATE Query;

  SELECT COUNT(*) INTO V_NBRMAXCLI FROM CLIENTS_ALEA;	
  Query := 'DROP TABLE COMMANDES_ALEA1';
  EXECUTE IMMEDIATE Query;
  Query := 'CREATE TABLE COMMANDES_ALEA1 (NUMCOM NUMBER, CODCLI NUMBER, DATCOM DATE)';
  V_DATEPARTITION1 := '2010-01-01';
  V_DATEPARTITION2 := '2030-01-01';
  V_FORMAT         := 'YYYY-MM-DD';
    EXECUTE IMMEDIATE Query;
  
  FOR i IN 1..NBRCOM LOOP
      V_CODECLI := TRUNC(DBMS_RANDOM.VALUE(1,V_NBRMAXCLI+1));
	  IF V_CODECLI > V_NBRMAXCLI THEN V_CODECLI := V_NBRMAXCLI; END IF; 
	  V_DATECHAR := TO_CHAR(TRUNC(DBMS_RANDOM.VALUE(ANDEB,ANFIN))) || '-' || TO_CHAR(TRUNC(DBMS_RANDOM.VALUE(1,12))) 
	  || '-' || TO_CHAR(TRUNC(DBMS_RANDOM.VALUE(1,28)));
	  V_DATE := TO_DATE(V_DATECHAR,V_FORMAT);
      --DBMS_OUTPUT.PUT_LINE(V_DATECHAR || '          ' || V_DATE);	
	  INSERT INTO COMMANDES_ALEA1 VALUES (i, V_CODECLI, V_DATE)	 ;
	  V_ARTACOMD := TRUNC(DBMS_RANDOM.VALUE(1,16));
	  GENERATEUR_DETAILSCOMMANDES1(i, V_ARTACOMD);
	  COMMIT;
  END LOOP;

END; -- Fin de la procédure GENERATEUR_COMMANDES1
/
EXEC GENERATEUR_COMMANDES1(500000,2000,2021);

SELECT * FROM COMMANDES_ALEA1 ORDER BY 1;
SELECT COUNT(*) NBRCOM FROM COMMANDES_ALEA1;
SELECT * FROM COMMANDES_ALEA1 PARTITION (CMDP1);
SELECT * FROM COMMANDES_ALEA1 PARTITION (CMDP2);
SELECT COUNT(*) NBRCOMCOM FROM COMMANDES_ALEA1;
SELECT * FROM DETAILCOM_ALEA1 ORDER BY 1;
SELECT COUNT(*) NBRLIGCOM FROM DETAILCOM_ALEA1;

SET LINES 1000
SET PAGES 1000
COLUMN CA FORMAT 999999999999.999
COLUMN PAYS     FORMAT A20
COLUMN VILLE    FORMAT A20
COLUMN CIVILITE FORMAT A20

SELECT 'Le CA des client-e-s français-es par pays et par ville et par genre de 2010 à 2020' AS CA FROM DUAL;
SET TIMING ON
SELECT C.PAYSCLI PAYS, C.VILCLI VILLE, C.CIVCLI CIVILITE, SUM(D.QTCOM*D.PUART*(1-D.REMISE/100)) CA 
FROM CLIENTS_ALEA C, COMMANDES_ALEA1 K, DETAILCOM_ALEA1 D
WHERE C.CODCLI=K.CODCLI AND K.NUMCOM=D.NUMCOM
AND K.DATCOM >= '2010-01-01' AND K.DATCOM <= '2020-12-31'
GROUP BY CUBE(C.PAYSCLI,C.VILCLI,C.CIVCLI) ORDER BY 1, 2, 3;
SET TIMING OFF
/*
Elapsed: 00:00:05.565
*/

SELECT 'Le CA des client-e-s français-es par pays et par ville et par genre de 2005 à 2015' AS CA FROM DUAL;
SET TIMING ON
SELECT /*INDEXED*/ C.PAYSCLI PAYS, C.VILCLI VILLE, C.CIVCLI CIVILITE, SUM(D.QTCOM*D.PUART*(1-D.REMISE/100)) CA 
FROM (SELECT * FROM COMMANDES_ALEA1 WHERE DATCOM >= '2005-01-01' AND DATCOM <= '2015-12-31') K, CLIENTS_ALEA C, DETAILCOM_ALEA1 D
WHERE C.CODCLI=K.CODCLI AND K.NUMCOM=D.NUMCOM
GROUP BY CUBE(C.PAYSCLI,C.VILCLI,C.CIVCLI) ORDER BY 1, 2, 3;
SET TIMING OFF
/*
Elapsed: 00:00:03.090
*/

-- ==== MFB =======================================================================================================================
--===== Génération aléatoire des données dans la BD (Gros volumes de données : Big or Small Data ! ========= FIN ==================
--===== Introduction to Very Large Databases (VLDB)
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