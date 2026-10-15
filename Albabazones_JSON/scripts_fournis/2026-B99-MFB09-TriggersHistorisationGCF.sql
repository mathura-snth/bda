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
-- Date dernière mise à jour : 07 octobre 2026
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
-- Office: Y204  +  MSN
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
-- Bonjour = Hello = Buongiorno = Guten Tag = おはよう    = صباح الخير             
-- ==== MFB =======================================================================================================================
-- Salut   = Hi    =  Ciao      = Hi        = こんにちは   = سلام                    
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
-- ETES-VOUS UN SQL EXPERT ?        ===  ETES-VOUS UN SQL EXPERT ? ===============
-- SQL AVANCé SQL AVANCé SQL AVANCé === SQL AVANCé SQL AVANCé SQL AVANCé =========
-- ==== MFB =======================================================================================================================


-- ==== MFB =======================================================================================================================
-- Définition de la structure des données en SQL 2 ================ Enrichissement de la description des données ======== DEBUT ===
-- Création des tables ============= Magasin FR01 ====== PARIS   ==================================================================
-- ==== MFB =======================================================================================================================

-- ==== MFB =======================================================================================================================
----- Destruction des tables de la BD de l'entreprise ALBABAZONES-CLICKANDCOLLECT -->>> MFB DATABASE
-- ==== MFB =======================================================================================================================

DROP TABLE DETAILCOM;
DROP TABLE ARTICLES;
DROP TABLE COMMANDES;
DROP TABLE CLIENTS;
DROP TABLE MAGASINS;

-- ==== MFB =======================================================================================================================
----- Création des tables de la BD de l'entreprise ALBABAZONES-CLICKANDCOLLECT -->>> MFB DATABASE, Première Version
-- ==== MFB =======================================================================================================================

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

--CREATE TABLE COMMANDES-FACTURES
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
-- L'entreprise ALBABAZONES-CLICKANDCOLLECT est une entreprise internationale ayant plusieurs magasins dans le monde
--======================== Liste des magasins de l'entreprise ALBABAZONES-CLICKANDCOLLECT 
----- >> Table : MAGASINS
-- ==== MFB =======================================================================================================================

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
-- Enrichissement de la définition du schéma d'une BD : ====================================================================>>>>>>>
-- Enrichissement des définitions des données ================================================== DEBUT ============================
-- 1. Commentaires	: Penser aux métadonnées
-- 2. Chemins d'accès rapides aux données : Penser à l'optimisation, Indexer les tables
-- 3. Partager les données : Créer des profils et des rôles à attribuer aux utilisateurs
-- 4. Garder des traces des changements des données, Historiser, créer plusieurs versions, penser à des déclencheurs de traitements
-- ==== MFB =======================================================================================================================

-- ==== MFB =======================================================================================================================
-- ==== MFB >>> 1 ----------- AJOUT DE COMMENTAIRES -  AJOUT DE COMMENTAIRES ===============================================>>>>>>>
/*
-- COMMENT ou NO-COMMENT ? ======================================================================>>>>>>>
-- Commenter avec SQL (les commentaires seront stockés dans le dictionnaire du SGBD)
-- vos tables et vos colonnes : il s'agit des méta-informations (méta-données) très utiles pour les autres utilisateurs
-- Les méta-tables concernées : user_tab_comments ! user_col_comments !
-- COMMENT ou NO-COMMENT ? ======================================================================>>>>>>>

-- La description de la table des commentaires sur les tables "user_tab_comments" est :
Nom        NULL     Type           
---------- -------- -------------- 
TABLE_NAME NOT NULL VARCHAR2(30)   
TABLE_TYPE          VARCHAR2(11)   
COMMENTS            VARCHAR2(4000) 

-- La description de la table des commentaires sur les colonnes  "user_tab_comments" est :
DESC user_col_comments
Nom         NULL     Type           
----------- -------- -------------- 
TABLE_NAME  NOT NULL VARCHAR2(30)   
COLUMN_NAME NOT NULL VARCHAR2(30)   
COMMENTS             VARCHAR2(4000) 
*/

-- Créer des commentaires pour les tables :
COMMENT ON TABLE CLIENTS 	     IS 'Cette table regroupe les informations des clients';

COLUMN TABLE_NAME FORMAT A10
COLUMN COMMENTS   FORMAT A50
SELECT  table_name, comments FROM user_tab_comments WHERE table_name LIKE 'CLIE%';

-- Créer des commentaires pour les colonnes de la table CLIENTS :
COMMENT ON COLUMN CLIENTS.CODCLI  IS 'Code du client (Unique par client)';
COMMENT ON COLUMN CLIENTS.CIVCLI  IS 'Civilité du client, Mademoiselle, Madame, Monsieur';
COMMENT ON COLUMN CLIENTS.NOMCLI  IS 'Nom du Client, Non vide, en majuscule, alphabétique et avec -';
COMMENT ON COLUMN CLIENTS.PRENCLI IS 'Prénom du client, seule la première lettre est en majuscule, alphabétique et avec -';
COMMENT ON COLUMN CLIENTS.CATCLI  IS 'Catégorie du client';
COMMENT ON COLUMN CLIENTS.ADRCLI  IS 'Adresse du client';
COMMENT ON COLUMN CLIENTS.CPCLI   IS 'Code Postal du client';
COMMENT ON COLUMN CLIENTS.VILCLI  IS 'Ville du client';
COMMENT ON COLUMN CLIENTS.PAYSCLI IS 'Pays du client';
COMMENT ON COLUMN CLIENTS.MAILCLI IS 'Mail du client';
COMMENT ON COLUMN CLIENTS.TELCLI  IS 'Telephone du client, avec l''indicatif de l''international +33... +216... +212... +213... ';

SET LINES 1000
SET PAGES 100
COLUMN TABLE_NAME  FORMAT A20
COLUMN COLUMN_NAME FORMAT A20
COLUMN COMMENTS    FORMAT A200
SELECT * FROM user_col_comments WHERE table_name = 'CLIENTS';  --Tous les noms des objets (TABLE, VUE, COLONNE...) Oracle sont en majuscule;

-- Créer des commentaires pour les tables:
COMMENT ON TABLE ARTICLES 	IS 'Cette table regroupe les informations sur les articles';
COMMENT ON TABLE COMMANDES 	IS 'Cette table regroupe les commandes passées par les clients';
COMMENT ON TABLE DETAILCOM	IS 'Cette table regroupe les articles de chaque commande avec les quantitées commandées et les remises éventuelles';

SELECT  table_name, comments FROM user_tab_comments;

-- ==== MFB =======================================================================================================================
-- ==== MFB >>> 2 ----------- Création des accélérateurs des traitements : Les INDEXs ======================================>>>>>>>
/*
-- INDEX ou NO-INDEX ? ====================================================================================>>>>>>>
-- Les accélérateurs des traitements (Les indexs) sont à créer, à détruire ou à reconstruire afin
-- d'améliorer les temps de réponse : CREATE INDEX NomIndex ... ; DROP INDEX NomIndex ... ;
-- ATTENTION Il faut vérifier si un INDEX est créé automatiquement sur la clé primaire !
-- CREATION D'INDEX ? =====================================================================================>>>>>>>
*/

CREATE INDEX Ndexcli ON CLIENTS (PAYSCLI);

COLUMN OWNER          FORMAT A10         
COLUMN INDEX_NAME     FORMAT A20            
COLUMN INDEX_TYPE     FORMAT A20                     
COLUMN TABLE_OWNER    FORMAT A20           
COLUMN TABLE_NAME     FORMAT A20           
COLUMN TABLE_TYPE     FORMAT A5                       
COLUMN UNIQUENESS     FORMAT A10
SELECT OWNER, TABLE_OWNER, TABLE_NAME, TABLE_TYPE, INDEX_NAME, INDEX_TYPE, UNIQUENESS FROM ALL_INDEXES WHERE TABLE_NAME = 'CLIENTS';
/*
OWNER      TABLE_OWNER          TABLE_NAME           TABLE INDEX_NAME           INDEX_TYPE           UNIQUENESS
---------- -------------------- -------------------- ----- -------------------- -------------------- ----------
DD         DD                   CLIENTS              TABLE PK_CLIENTS           NORMAL               UNIQUE    
DD         DD                   CLIENTS              TABLE NDEXCLI              NORMAL               NONUNIQUE 
*/

-- ==== MFB =======================================================================================================================
-- ==== MFB >>>> 3 -- Partage de données, Création des rôles et des profils qui seront affectés aux utilisateurs ===========>>>>>>>
/*
CREATE PROFILE NomProfile ...;           CREATE ROLE NomRole ;
-- CREATION DE PROFIL ? ====================================================>>>>>>>
*/
-- L'administrateur d'une base de données (DBA : Data Base Administrator) pourrait faire les commandes ci-dessous
CREATE PROFILE app_user 
LIMIT 
SESSIONS_PER_USER          UNLIMITED --définir le nombre maximal de sessions qu'un utilisateur pourra ouvrir.
CPU_PER_SESSION            UNLIMITED --définir le temps de processeur maximum en centièmes de secondes qu'une session pourra utiliser.
CPU_PER_CALL               3000      --définir le temps de processeur maximum en centièmes de secondes qu'une execution de requête ou la recupération d'une requête (FETCH) pourra utiliser.
CONNECT_TIME               45        --définir le temps en minutes pour la durée de connexion maximale d'une session.
LOGICAL_READS_PER_SESSION  DEFAULT   --définir le nombre maximal de blocs lus durant une session.
LOGICAL_READS_PER_CALL     1000      --définir le nombre maximal de blocs lus durant un "appel serveur"
PRIVATE_SGA                15K       --définir la taille en Kbytes ou MBytes que pourra utiliser une session.
COMPOSITE_LIMIT            5000000;  --définir le coût total des limitations autorisée pour une session. 

-- Assigner un profil à un user de nom : CQUI qui doit être créé avant 
ALTER USER CQUI PROFILE app_user;

-- Créer un rôle et l'alimenter par des priviléges
CREATE ROLE rolesurclients ;
GRANT SELECT, INSERT, UPDATE, DELETE ON CLIENTS TO rolesurclients ;

-- Assigner le rôle à un user
GRANT rolesurclients TO CQUI ;

-- ==== MFB =======================================================================================================================
-- ==== MFB >>> 4 -- Dans le monde du Big Data, des entrepôts de données et des montagnes de données à créer/gérer =========>>>>>>>
---- il est souvent nécessaire de garder plusieurs versions des données et donc des historiques/traces =====================>>>>>>>
-- Il est donc nécessaire de créer une "table historique" qui permet de garder une trace sur/des les données avant leurs mises-à-jour.
-- Les déclencheurs (TRIGGERs) constituent un excellent outil pour atteindre cet objectif !
/*
-- ==== MFB =======================================================================================================================
Exemple 1 : -- Première proposition pour un déclencheur sur la table des ARTICLES :
--->>>> Trigger sur la mise à jour des prix des articles (on veut garder trace de tous les prix) !
--->>>> Le principe est de créer une table HISTORIQUE_PRIX_ARTICLES qui permet de garder le prix des articles avant leurs mises à jour.
-- C'est une table qui peut avoir comme colonnes (certaines colonnes de la table des articles) :
-- la référence, le nom, le prix d'achat, le prix de vente (prix catalogue) de l article avant la mise-à-jour et la date de la mise à jour.
-- DEUX NOUVELLES COLONNES SONT TRES UTILES : La date de mise à jour, et l'AUTEUR de mise à jour
*/

-- ==== MFB =======================================================================================================================
ALTER SESSION SET NLS_DATE_FORMAT = 'DAY DD-MONTH-YYYY HH24:MI:SS' ;
DROP TABLE ARTICLES;
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

DROP TABLE HISTORIQUE_PRIX_ARTICLES;
CREATE TABLE HISTORIQUE_PRIX_ARTICLES -- Première proposition
(
	REFART 		VARCHAR2(10), 
	NOMART		VARCHAR2(50),
	PVART		NUMBER(10, 2),
	PAART		NUMBER(10, 2),
	DATMAJ		DATE,
	AUTEURMAJ   VARCHAR2(30),
	CONSTRAINT	NN_HISTOPRIX_ARTICLES_NOMART	CHECK(NOMART IS NOT NULL)
);
-- ==== MFB =======================================================================================================================
-- Suppression et création du trigger (= déclencheur) sur les mouvements des articles >>> Version 1
-- ==== MFB =======================================================================================================================
CREATE OR REPLACE TRIGGER MAJ_PRIX_ARTICLES -- Première proposition
	AFTER UPDATE ON ARTICLES
	FOR EACH ROW
DECLARE
	V_REFART	VARCHAR2(10)  := :OLD.REFART;
	V_NOMART	VARCHAR2(50)  := :OLD.NOMART;
	V_PVART		NUMBER(10, 2) := :OLD.PVART;
	V_PAART		NUMBER(10, 2) := :OLD.PAART;

BEGIN
	INSERT INTO HISTORIQUE_PRIX_ARTICLES (REFART, NOMART, PVART, PAART, DATMAJ, AUTEURMAJ)
	VALUES (V_REFART, V_NOMART, V_PVART, V_PAART, SYSDATE, USER);
END;
/
-- ==== MFB ===== Tests ===========================================================================================================
--DELETE FROM ARTICLES;
INSERT INTO ARTICLES (REFART, NOMART, PVART, QSART, PAART) VALUES ('MFB1', 'BALLE1', 55.55, 10, 25.50);
INSERT INTO ARTICLES (REFART, NOMART, PVART, QSART, PAART) VALUES ('MFB2', 'BALLE2', 77.77, 10, 30.50);
COMMIT;
COLUMN REFART 	FORMAT A10 
COLUMN NOMART	FORMAT A30 
COLUMN PVART	FORMAT 9999.99
COLUMN QSART	FORMAT 99
COLUMN PAART	FORMAT 9999.99
COLUMN DATMAJ   FORMAT A50 
SELECT * FROM   ARTICLES;
/*
REFART     NOMART                            PVART QSART    PAART
---------- ------------------------------ -------- ----- --------
MFB1       BALLE1                            55.55    10    25.50
MFB2       BALLE2                            77.77    10    30.50
*/
UPDATE ARTICLES SET PVART = 155 WHERE REFART = 'MFB1';
COMMIT;
SELECT * FROM   ARTICLES;
/*
REFART     NOMART                            PVART QSART    PAART
---------- ------------------------------ -------- ----- --------
MFB1       BALLE1                           155.00    10    25.50
MFB2       BALLE2                            77.77    10    30.50
*/
SELECT * FROM   HISTORIQUE_PRIX_ARTICLES;
/*
REFART     NOMART                            PVART    PAART DATMAJ                                             AUTEURMAJ                    
---------- ------------------------------ -------- -------- -------------------------------------------------- ------------------------------
MFB1       BALLE1                            55.55    25.50 THURSDAY  21-JANUARY  -2021 17:13:42               DD        
*/
UPDATE ARTICLES SET PVART = 255 WHERE REFART = 'MFB1';
UPDATE ARTICLES SET PAART = 33  WHERE REFART = 'MFB1';
COMMIT;
SELECT * FROM   ARTICLES;
/*
--- ARTICLES au catalogue !
REFART     NOMART                            PVART QSART    PAART
---------- ------------------------------ -------- ----- --------
MFB1       BALLE1                           255.00    10    33.00
MFB2       BALLE2                            77.77    10    30.50
*/
SELECT * FROM   HISTORIQUE_PRIX_ARTICLES;
/*
--- HISTORIQUE_PRIX_ARTICLES
REFART     NOMART                            PVART    PAART DATMAJ                                             AUTEURMAJ                    
---------- ------------------------------ -------- -------- -------------------------------------------------- ------------------------------
MFB1       BALLE1                            55.55    25.50 THURSDAY  21-JANUARY  -2021 17:13:42               DD                            
MFB1       BALLE1                           155.00    25.50 THURSDAY  21-JANUARY  -2021 17:14:32               DD                            
MFB1       BALLE1                           255.00    25.50 THURSDAY  21-JANUARY  -2021 17:14:32               DD                            
*/

-- ==== MFB =======================================================================================================================
/*
Exemple 2 : -- Deuxième proposition pour un déclencheur sur la table des ARTICLES :
--->>>> Trigger sur la mise à jour des prix des articles (on veut garder trace de tous les prix) !
--->>>> Le principe est de créer une table HISTORIQUE_MVTS_ARTICLES qui permet de garder le prix des articles avant leurs mises à jour.
-- C'est une table qui peut avoir comme colonnes (certaines colonnes de la table des articles) :
-- la référence, le nom, le prix d'achat, le prix de vente (prix catalogue) de l article avant la mise-à-jour et la date de la mise à jour.
*/
-- ==== MFB =======================================================================================================================
ALTER SESSION SET NLS_DATE_FORMAT = 'DAY DD-MONTH-YYYY HH24:MI:SS' ;
DROP TABLE ARTICLES;
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

DROP TABLE HISTORIQUE_MVTS_ARTICLES;
CREATE TABLE HISTORIQUE_MVTS_ARTICLES -- Deuxième proposition pour les déclencheurs
(
	NOMUSER		VARCHAR2(15),   -- AUTEUR de la MAJ, du mouvement
	TYPEMVT		VARCHAR2(15), 
	DATMVT		DATE,
	REFART 		VARCHAR2(20), 
	NOMART		VARCHAR2(50),
	PVART		NUMBER(10, 2),
	PAART		NUMBER(10, 2),
	QSART		NUMBER(3),
	CONSTRAINT NN_HIST_ARTICLES_NOMART	    CHECK(NOMART IS NOT NULL),
	CONSTRAINT NN_HIST_ARTICLES_NOMUSER	    CHECK(NOMUSER IS NOT NULL),
	CONSTRAINT NN_HIST_ARTICLES_NOMTYPEMVT	CHECK(TYPEMVT IS NOT NULL)
);

-- ==== MFB =======================================================================================================================
-- Suppression et création du trigger (= déclencheur) sur les mouvements des articles >>> Version 2
-- ==== MFB =======================================================================================================================
CREATE OR REPLACE TRIGGER TR_MOUVEMENTS_ARTICLES
	AFTER UPDATE OR INSERT OR DELETE ON ARTICLES
	FOR EACH ROW
	-- Déclencher une insertion dans HISTORIQUE_MVTS_ARTICLES selon l'action d'UPDATING ou de DELETING ou encore d'INSERTING
DECLARE
	V_REFART	VARCHAR2(20)	:= :OLD.REFART;
	V_NOMART	VARCHAR2(50)	:= :OLD.NOMART;
	V_PVART		NUMBER(10, 2)	:= :OLD.PVART;
	V_PAART		NUMBER(10, 2)	:= :OLD.PAART;
	V_QSART		NUMBER(3)		:= :OLD.QSART;

	VI_REFART	VARCHAR2(20)	:= :NEW.REFART;
	VI_NOMART	VARCHAR2(50)	:= :NEW.NOMART;
	VI_PVART	NUMBER(10, 2)	:= :NEW.PVART;
	VI_PAART	NUMBER(10, 2)	:= :NEW.PAART;
	VI_QSART	NUMBER(3)		:= :NEW.QSART;
	
BEGIN -- TRAVAIL A FAIRE ---- Compléter et tester le déclencheur TR_MOUVEMENTS_ARTICLES sur les mouvements dans les articles
	IF UPDATING THEN
		INSERT INTO HISTORIQUE_MVTS_ARTICLES (NOMUSER, TYPEMVT, DATMVT, REFART, NOMART, PVART, PAART, QSART)
		VALUES (USER, 'UPDATE', SYSDATE, V_REFART, V_NOMART, V_PVART, V_PAART, V_QSART);
	END IF;
	IF DELETING THEN 
		INSERT INTO HISTORIQUE_MVTS_ARTICLES (NOMUSER, TYPEMVT, DATMVT, REFART, NOMART, PVART, PAART, QSART)
		VALUES (USER, 'DELETE', SYSDATE, V_REFART, V_NOMART, V_PVART, V_PAART, V_QSART);
	END IF;
	IF INSERTING THEN 
		INSERT INTO HISTORIQUE_MVTS_ARTICLES (NOMUSER, TYPEMVT, DATMVT, REFART, NOMART, PVART, PAART, QSART)
		VALUES (USER, 'INSERT', SYSDATE, VI_REFART, VI_NOMART, VI_PVART, VI_PAART, VI_QSART);
	END IF;
END;
/

-- ==== MFB =======================================================================================================================
CREATE OR REPLACE TRIGGER TR_MOUVEMENTS_ARTICLES
	AFTER UPDATE OR INSERT OR DELETE ON ARTICLES
	FOR EACH ROW
	-- Déclencher une insertion dans HISTORIQUE_MVTS_ARTICLES selon l'action d'UPDATING ou de DELETING ou encore d'INSERTING
DECLARE
	V_REFART	VARCHAR2(20)	:= :OLD.REFART;
	V_NOMART	VARCHAR2(50)	:= :OLD.NOMART;
	V_PVART		NUMBER(10, 2)	:= :OLD.PVART;
	V_PAART		NUMBER(10, 2)	:= :OLD.PAART;
	V_QSART		NUMBER(3)		:= :OLD.QSART;

	VI_REFART	VARCHAR2(20)	:= :NEW.REFART;
	VI_NOMART	VARCHAR2(50)	:= :NEW.NOMART;
	VI_PVART	NUMBER(10, 2)	:= :NEW.PVART;
	VI_PAART	NUMBER(10, 2)	:= :NEW.PAART;
	VI_QSART	NUMBER(3)		:= :NEW.QSART;
	
BEGIN -- TRAVAIl A FAIRE ---- Compléter et tester le déclencheur TR_MOUVEMENTS_ARTICLES sur les mouvements dans les articles
	IF UPDATING THEN
		INSERT INTO HISTORIQUE_MVTS_ARTICLES (NOMUSER, TYPEMVT, DATMVT, REFART, NOMART, PVART, PAART, QSART)
		VALUES (USER, 'UPDATE', SYSDATE, V_REFART, V_NOMART, V_PVART, V_PAART, V_QSART);
	ELSIF DELETING THEN 
			INSERT INTO HISTORIQUE_MVTS_ARTICLES (NOMUSER, TYPEMVT, DATMVT, REFART, NOMART, PVART, PAART, QSART)
			VALUES (USER, 'DELETE', SYSDATE, V_REFART, V_NOMART, V_PVART, V_PAART, V_QSART);
	ELSE -- INSERTING  
			INSERT INTO HISTORIQUE_MVTS_ARTICLES (NOMUSER, TYPEMVT, DATMVT, REFART, NOMART, PVART, PAART, QSART)
			VALUES (USER, 'INSERT', SYSDATE, VI_REFART, VI_NOMART, VI_PVART, VI_PAART, VI_QSART);
	END IF;
END;
/
-- ==== MFB ===== Tests ===========================================================================================================
--DELETE FROM ARTICLES;
INSERT INTO ARTICLES (REFART, NOMART, PVART, QSART, PAART) VALUES ('MFB1', 'BALLE1', 55.55, 10, 25.50);
INSERT INTO ARTICLES (REFART, NOMART, PVART, QSART, PAART) VALUES ('MFB2', 'BALLE2', 77.77, 10, 30.50);
COLUMN REFART 	FORMAT A10 
COLUMN TYPEMVT  FORMAT A30 
COLUMN NOMART	FORMAT A30 
COLUMN PVART	FORMAT 9999.99
COLUMN QSART	FORMAT 99
COLUMN PAART	FORMAT 9999.99
COLUMN DATMVT   FORMAT A50 
SELECT * FROM   ARTICLES;
/*
REFART     NOMART                            PVART QSART    PAART
---------- ------------------------------ -------- ----- --------
MFB1       BALLE1                            55.55    10    25.50
MFB2       BALLE2                            77.77    10    30.50
*/
UPDATE ARTICLES SET PVART = 155 WHERE REFART = 'MFB1';
DELETE FROM ARTICLES WHERE REFART = 'MFB2';
SELECT * FROM   ARTICLES;
/*
REFART     NOMART                            PVART QSART    PAART
---------- ------------------------------ -------- ----- --------
MFB1       BALLE1                           155.00    10    25.50
*/
SELECT * FROM   HISTORIQUE_MVTS_ARTICLES;
/*
NOMUSER         TYPEMVT                        DATMVT                                             REFART     NOMART                            PVART    PAART QSART
--------------- ------------------------------ -------------------------------------------------- ---------- ------------------------------ -------- -------- -----
DD              INSERT                         THURSDAY  21-JANUARY  -2021 17:15:48               MFB1       BALLE1                            55.55    25.50    10
DD              INSERT                         THURSDAY  21-JANUARY  -2021 17:15:48               MFB2       BALLE2                            77.77    30.50    10
DD              UPDATE                         THURSDAY  21-JANUARY  -2021 17:15:48               MFB1       BALLE1                            55.55    25.50    10
DD              DELETE                         THURSDAY  21-JANUARY  -2021 17:15:48               MFB2       BALLE2                            77.77    30.50    10
*/
UPDATE ARTICLES SET PVART = 255 WHERE REFART = 'MFB1';
UPDATE ARTICLES SET PAART = 33  WHERE REFART = 'MFB1';
SELECT * FROM   ARTICLES;
/*
REFART     NOMART                            PVART QSART    PAART
---------- ------------------------------ -------- ----- --------
MFB1       BALLE1                           255.00    10    33.00
*/
SELECT * FROM   HISTORIQUE_MVTS_ARTICLES;
/*
NOMUSER         TYPEMVT                        DATMVT                                             REFART     NOMART                            PVART    PAART QSART
--------------- ------------------------------ -------------------------------------------------- ---------- ------------------------------ -------- -------- -----
DD              INSERT                         THURSDAY  21-JANUARY  -2021 17:15:48               MFB1       BALLE1                            55.55    25.50    10
DD              INSERT                         THURSDAY  21-JANUARY  -2021 17:15:48               MFB2       BALLE2                            77.77    30.50    10
DD              UPDATE                         THURSDAY  21-JANUARY  -2021 17:15:48               MFB1       BALLE1                            55.55    25.50    10
DD              DELETE                         THURSDAY  21-JANUARY  -2021 17:15:48               MFB2       BALLE2                            77.77    30.50    10
DD              UPDATE                         THURSDAY  21-JANUARY  -2021 17:16:30               MFB1       BALLE1                           155.00    25.50    10
DD              UPDATE                         THURSDAY  21-JANUARY  -2021 17:16:30               MFB1       BALLE1                           255.00    25.50    10
*/
-- ==== MFB =======================================================================================================================
/*
-- TRAVAIl A FAIRE ---- Développer un déclencheur TR_MOUVEMENTS_CLIENTS sur les mouvements dans les clients
-- Déclenchement d'actions automatiques pour garder trace de toutes les mises à jour des données, garder plusieurs versions...
-- Développer le nécessaire pour tracer tous les changements effectués dans la table des Clients !
-- Ceci pourrait permettre de faire un meilleur suivi de la clientèle...
*/
-- ==== MFB =======================================================================================================================
ALTER SESSION SET NLS_DATE_FORMAT = 'DAY DD-MONTH-YYYY HH24:MI:SS' ;
ALTER SESSION SET NLS_DATE_FORMAT = 'DD-MM-YYYY' ;
DROP TABLE CLIENTS;
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
DROP TABLE HISTORIQUE_MVTS_CLIENTS;
CREATE TABLE HISTORIQUE_MVTS_CLIENTS
(
	NOMUSER	        VARCHAR2(15), 
	TYPEMVT	        VARCHAR2(15), 
	DATMVT	 	    DATE,
	
	CODCLI          VARCHAR2(20), 
	
	OLDCIVCLI	 	VARCHAR2(20),
	OLDNOMCLI	 	VARCHAR2(50),
	OLDPRENCLI 		VARCHAR2(50),
	OLDCATCLI 		NUMBER(2),
	OLDADNCLI	 	VARCHAR2(10),
	OLDADRCLI	 	VARCHAR2(50),
	OLDCPCLI	 	VARCHAR2(10),
	OLDVILCLI	 	VARCHAR2(50),
	OLDPAYSCLI	 	VARCHAR2(50),
	OLDMAILCLI	 	VARCHAR2(50),
	OLDTELCLI	 	VARCHAR2(20), 
	OLDDATNAISCLI   	DATE,
	OLDDPREMCONTACTCLI  DATE,
	OLDOBSCLI		VARCHAR2(200),
	OLDREMCLI		VARCHAR2(200),
	OLDGENRECLI		VARCHAR2(2),
	OLDGSCLI		VARCHAR2(5),
	OLDKEYWORDSCLI  VARCHAR2(100),
	
	NEWCIVCLI	 	VARCHAR2(20),
	NEWNOMCLI	 	VARCHAR2(50),
	NEWPRENCLI 		VARCHAR2(50),
	NEWCATCLI 		NUMBER(2),
	NEWADNCLI	 	VARCHAR2(10),
	NEWADRCLI	 	VARCHAR2(50),
	NEWCPCLI	 	VARCHAR2(10),
	NEWVILCLI	 	VARCHAR2(50),
	NEWPAYSCLI	 	VARCHAR2(50),
	NEWMAILCLI	 	VARCHAR2(50),
	NEWTELCLI	 	VARCHAR2(20),
	NEWDATNAISCLI   	DATE,
	NEWDPREMCONTACTCLI  DATE,
	NEWOBSCLI		VARCHAR2(200),
	NEWREMCLI		VARCHAR2(200),
	NEWGENRECLI		VARCHAR2(2),
	NEWGSCLI		VARCHAR2(5),
	NEWKEYWORDSCLI  VARCHAR2(100),
	
	CONSTRAINT NN_HIST_CLIENTS_NOMUSER 	CHECK(NOMUSER IS NOT NULL),
	CONSTRAINT NN_HIST_CLIENTS_TYPEMVT 	CHECK(TYPEMVT IS NOT NULL)
);

CREATE OR REPLACE TRIGGER MOUVEMENTS_CLIENTS
	AFTER UPDATE OR INSERT OR DELETE ON CLIENTS
	FOR EACH ROW
DECLARE
	V_CODCLI        VARCHAR2(20) 	:= :OLD.CODCLI; 
	V_CIVCLI	 	VARCHAR2(12) 	:= :OLD.CIVCLI;
	V_NOMCLI	 	VARCHAR2(50) 	:= :OLD.NOMCLI;
	V_PRENCLI 		VARCHAR2(50)	:= :OLD.PRENCLI;
	V_CATCLI 		NUMBER(2)   	:= :OLD.CATCLI;
	V_ADNCLI	 	VARCHAR2(10)	:= :OLD.ADNCLI;
	V_ADRCLI	 	VARCHAR2(50)	:= :OLD.ADRCLI;
	V_CPCLI 	 	VARCHAR2(10)	:= :OLD.CPCLI;
	V_VILCLI	 	VARCHAR2(50) 	:= :OLD.VILCLI;
	V_PAYSCLI	 	VARCHAR2(50) 	:= :OLD.PAYSCLI;
	V_MAILCLI	 	VARCHAR2(50)	:= :OLD.MAILCLI;
	V_TELCLI	 	VARCHAR2(20) 	:= :OLD.TELCLI;
	V_DATNAISCLI		DATE		:= :OLD.DATNAISCLI;
	V_DPREMCONTACTCLI	DATE		:= :OLD.DPREMCONTACTCLI;
	V_OBSCLI		VARCHAR2(200)	:= :OLD.OBSCLI;
	V_REMCLI		VARCHAR2(200)	:= :OLD.REMCLI;
	V_GENRECLI		VARCHAR2(2)		:= :OLD.GENRECLI;
	V_GSCLI			VARCHAR2(5)		:= :OLD.GSCLI;
	V_KEYWORDSCLI 	VARCHAR2(100) 	:= :OLD.KEYWORDSCLI;

	VI_CODCLI       VARCHAR2(20) 	:= :NEW.CODCLI; 
	VI_CIVCLI	 	VARCHAR2(12) 	:= :NEW.CIVCLI;
	VI_NOMCLI	 	VARCHAR2(50) 	:= :NEW.NOMCLI;
	VI_PRENCLI 		VARCHAR2(50) 	:= :NEW.PRENCLI;
	VI_CATCLI 		NUMBER(2)    	:= :NEW.CATCLI;
	VI_ADNCLI	 	VARCHAR2(10)	:= :NEW.ADNCLI;
	VI_ADRCLI	 	VARCHAR2(50)	:= :NEW.ADRCLI;
	VI_CPCLI 	 	VARCHAR2(10)	:= :NEW.CPCLI;
	VI_VILCLI	 	VARCHAR2(50) 	:= :NEW.VILCLI;
	VI_PAYSCLI	 	VARCHAR2(50) 	:= :NEW.PAYSCLI;
	VI_MAILCLI	 	VARCHAR2(50)	:= :NEW.MAILCLI;
	VI_TELCLI	 	VARCHAR2(20)	:= :NEW.TELCLI;
	VI_DATNAISCLI		DATE		:= :NEW.DATNAISCLI;
	VI_DPREMCONTACTCLI	DATE		:= :NEW.DPREMCONTACTCLI;
	VI_OBSCLI		VARCHAR2(200)	:= :NEW.OBSCLI;
	VI_REMCLI		VARCHAR2(200)	:= :NEW.REMCLI;
	VI_GENRECLI		VARCHAR2(2)		:= :NEW.GENRECLI;
	VI_GSCLI		VARCHAR2(5)		:= :NEW.GSCLI;
	VI_KEYWORDSCLI 	VARCHAR2(100) 	:= :NEW.KEYWORDSCLI;
	
BEGIN
	IF UPDATING THEN
		INSERT INTO HISTORIQUE_MVTS_CLIENTS (NOMUSER, TYPEMVT, DATMVT, 
		CODCLI, OLDCIVCLI, OLDNOMCLI, OLDPRENCLI, OLDCATCLI, OLDADNCLI, OLDADRCLI, OLDCPCLI, OLDVILCLI, OLDPAYSCLI, OLDMAILCLI, OLDTELCLI, OLDDATNAISCLI, OLDDPREMCONTACTCLI, OLDOBSCLI, OLDREMCLI, OLDGENRECLI, OLDGSCLI, OLDKEYWORDSCLI, 
		        NEWCIVCLI, NEWNOMCLI, NEWPRENCLI, NEWCATCLI, NEWADNCLI, NEWADRCLI, NEWCPCLI, NEWVILCLI, NEWPAYSCLI, NEWMAILCLI, NEWTELCLI, NEWDATNAISCLI, NEWDPREMCONTACTCLI, NEWOBSCLI, NEWREMCLI, NEWGENRECLI, NEWGSCLI, NEWKEYWORDSCLI)
		VALUES (USER, 'UPDATE', SYSDATE, 
		V_CODCLI, V_CIVCLI, V_NOMCLI, V_PRENCLI, V_CATCLI, V_ADNCLI, V_ADRCLI, V_CPCLI, V_VILCLI, V_PAYSCLI, V_MAILCLI, V_TELCLI, V_DATNAISCLI, V_DPREMCONTACTCLI, V_OBSCLI, V_REMCLI, V_GENRECLI, V_GSCLI, V_KEYWORDSCLI, 
		          VI_CIVCLI, VI_NOMCLI, VI_PRENCLI, VI_CATCLI, VI_ADNCLI, VI_ADRCLI, VI_CPCLI, VI_VILCLI, VI_PAYSCLI, VI_MAILCLI, VI_TELCLI, VI_DATNAISCLI, VI_DPREMCONTACTCLI, VI_OBSCLI, VI_REMCLI, VI_GENRECLI, VI_GSCLI, VI_KEYWORDSCLI);
	END IF;

	IF DELETING THEN 
		INSERT INTO HISTORIQUE_MVTS_CLIENTS (NOMUSER, TYPEMVT, DATMVT, 
		CODCLI, OLDCIVCLI, OLDNOMCLI, OLDPRENCLI, OLDCATCLI, OLDADNCLI, OLDADRCLI, OLDCPCLI, OLDVILCLI, OLDPAYSCLI, OLDMAILCLI, OLDTELCLI, OLDDATNAISCLI, OLDDPREMCONTACTCLI, OLDOBSCLI, OLDREMCLI, OLDGENRECLI, OLDGSCLI, OLDKEYWORDSCLI)
		VALUES (USER, 'DELETE', SYSDATE, 
		V_CODCLI, V_CIVCLI, V_NOMCLI, V_PRENCLI, V_CATCLI, V_ADNCLI, V_ADRCLI, V_CPCLI, V_VILCLI, V_PAYSCLI, V_MAILCLI, V_TELCLI, V_DATNAISCLI, V_DPREMCONTACTCLI, V_OBSCLI, V_REMCLI, V_GENRECLI, V_GSCLI, V_KEYWORDSCLI);
	END IF;
		
	IF INSERTING THEN 
		INSERT INTO HISTORIQUE_MVTS_CLIENTS (NOMUSER, TYPEMVT, DATMVT, 
		CODCLI, NEWCIVCLI, NEWNOMCLI, NEWPRENCLI, NEWCATCLI, NEWADNCLI, NEWADRCLI, NEWCPCLI, NEWVILCLI, NEWPAYSCLI, NEWMAILCLI, NEWTELCLI, NEWDATNAISCLI, NEWDPREMCONTACTCLI, NEWOBSCLI, NEWREMCLI, NEWGENRECLI, NEWGSCLI, NEWKEYWORDSCLI)
		VALUES (USER, 'INSERT', SYSDATE, 
		VI_CODCLI, VI_CIVCLI, VI_NOMCLI, VI_PRENCLI, VI_CATCLI, VI_ADNCLI, VI_ADRCLI, VI_CPCLI, VI_VILCLI, VI_PAYSCLI, VI_MAILCLI, VI_TELCLI, VI_DATNAISCLI, VI_DPREMCONTACTCLI, VI_OBSCLI, VI_REMCLI, VI_GENRECLI, VI_GSCLI, VI_KEYWORDSCLI);
	END IF;

END;
/

ALTER SESSION SET NLS_DATE_FORMAT = 'DD-MM-YYYY' ;
INSERT INTO CLIENTS (CODCLI, CIVCLI, NOMCLI, PRENCLI, CATCLI, ADNCLI, ADRCLI, CPCLI, VILCLI, PAYSCLI, MAILCLI, TELCLI, DATNAISCLI, DPREMCONTACTCLI, OBSCLI, REMCLI, GENRECLI, GSCLI, KEYWORDSCLI)
VALUES ('C006', 'Mademoiselle', 'LE BON', 'Clémence', 1, '18', 'BOULEVARD FOCH', '93800', 'EPINAY-SUR-SEINE', 'FRANCE','clemence.le bon@cfo.fr', '0033777889955', '16-10-1996', '18-10-2018', '', '', 'F', NULL, NULL);

INSERT INTO CLIENTS (CODCLI, CIVCLI, NOMCLI, PRENCLI, CATCLI, ADNCLI, ADRCLI, CPCLI, VILCLI, PAYSCLI, MAILCLI, TELCLI, DATNAISCLI, DPREMCONTACTCLI, OBSCLI, REMCLI, GENRECLI, GSCLI, KEYWORDSCLI)
VALUES ('C007', 'Mademoiselle', 'TRAIFOR', 'Alice', 2, '6', '    DE LA ROSIERE', '75015', 'PARIS', 'FRANCE','alice.traifor@yahoo.fr', '+33777889966', '23-02-1998', '', '', '', 'F', NULL, NULL);
SELECT * FROM CLIENTS;
/*
-- >>>>>>>>>>>>>>>>>>>>>>>>>> -- Résultat généré: ???

CODCLI  CIVCLI       NOMCLI       PRENCLI      CATCLI   ADNCLI     ADRCLI         CPCLI      VILCLI                                             PAYSCLI                                            MAILCLI                                            TELCLI               DATNAISCLI DPREMCONTACTCLI OBSCLI                                                                                                                                                                                                   REMCLI                                                                                                                                                                                                   GE GSCLI KEYWORDSCLI                                                                                        
-------------------- ------------ ------------ -------- ---------- -------------- ---------- --------------------- -------------------------------------------------- -------------------------------------------------- -------------------------------------------------- -------------------- ---------- --------------- -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- -- ----- ----------------------------------------------------------------------------------------------------
C006    Mademoiselle LE BON       Clémence     1 		18         BOULEVARD FOCH 93800      EPINAY-SUR-SEINE                                   FRANCE                                             clemence.le bon@cfo.fr                             0033777889955        16-10-1996 18-10-2018                                                                                                                                                                                                                                                                                                                                                                                                                        F                                                                                                            
C007    Mademoiselle TRAIFOR      Alice        2 		6          DE LA ROSIERE  75015      PARIS                                              FRANCE                                             alice.traifor@yahoo.fr                             +33777889966         23-02-1998                                                                                                                                                                                                                                                                                                                                                                                                                                   F                                                                                                            
*/
ALTER SESSION SET NLS_DATE_FORMAT = 'DAY DD-MONTH-YYYY HH24:MI:SS' ;
SELECT * FROM HISTORIQUE_MVTS_CLIENTS;
/*
DD	INSERT	FRIDAY    22-JANUARY  -2021 18:29:26	C006 Mademoiselle	LE BON	Clémence	1	18	BOULEVARD FOCH	93800	EPINAY-SUR-SEINE	FRANCE	clemence.le bon@cfo.fr	0033777889955	WEDNESDAY 16-OCTOBER  -1996 00:00:00	THURSDAY  18-OCTOBER  -2018 00:00:00			F		
DD	INSERT	FRIDAY    22-JANUARY  -2021 18:29:26	C007 Mademoiselle	TRAIFOR	Alice	    2	6	DE LA ROSIERE	75015	PARIS				FRANCE	alice.traifor@yahoo.fr	+33777889966	MONDAY    23-FEBRUARY -1998 00:00:00													F		
*/
-- ATTENTION La Cliente C006 a changé de ville !
UPDATE CLIENTS SET CATCLI = 2, VILCLI = 'BARCELONE', PAYSCLI = 'ESPAGNE' WHERE CODCLI = 'C006';
COMMIT;
SELECT * FROM CLIENTS;
/*
CODCLI               CIVCLI               NOMCLI                                             PRENCLI                                                CATCLI ADNCLI     ADRCLI                                             CPCLI      VILCLI                                             PAYSCLI                                            MAILCLI                                            TELCLI               DATNAISCLI                 DPREMCONTACTCLI            OBSCLI                                                                                                                                                                                                   REMCLI                                                                                                                                                                                                   GE GSCLI KEYWORDSCLI                                                                                        
-------------------- -------------------- -------------------------------------------------- -------------------------------------------------- ---------- ---------- -------------------------------------------------- ---------- -------------------------------------------------- -------------------------------------------------- -------------------------------------------------- -------------------- -------------------------- -------------------------- -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- -- ----- -------------
C006                 Mademoiselle         LE BON                                             Clémence                                                    2 18         BOULEVARD FOCH                                     93800      BARCELONE                                          ESPAGNE                                            clemence.le bon@cfo.fr                             0033777889955        WEDNESDAY 16-OCTOBER  -199 THURSDAY  18-OCTOBER  -201                                                                                                                                                                                                                                                                                                                                                                                                                   F                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      6 00:00:00                 8 00:00:00                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
C007                 Mademoiselle         TRAIFOR                                            Alice                                                       2 6              DE LA ROSIERE                                  75015      PARIS                                              FRANCE                                             alice.traifor@yahoo.fr                             +33777889966         MONDAY    23-FEBRUARY -199                                                                                                                                                                                                                                                                                                                                                                                                                                              F                                                                                                            
*/
SELECT * FROM HISTORIQUE_MVTS_CLIENTS;
/*
DD	INSERT	FRIDAY    22-JANUARY  -2021 18:29:26	C006	Mademoiselle	LE BON	Clémence	1	18	BOULEVARD FOCH	93800	EPINAY-SUR-SEINE	FRANCE	clemence.le bon@cfo.fr	0033777889955	WEDNESDAY 16-OCTOBER  -1996 00:00:00	THURSDAY  18-OCTOBER  -2018 00:00:00			F		
DD	INSERT	FRIDAY    22-JANUARY  -2021 18:29:26	C007	Mademoiselle	TRAIFOR	Alice		2	6	DE LA ROSIERE	75015	PARIS	FRANCE	alice.traifor@yahoo.fr	+33777889966	MONDAY    23-FEBRUARY -1998 00:00:00				F		
DD	UPDATE	FRIDAY    22-JANUARY  -2021 18:35:18	C006	Mademoiselle	LE BON	Clémence	1	18	BOULEVARD FOCH	93800	EPINAY-SUR-SEINE	FRANCE	clemence.le bon@cfo.fr	0033777889955	WEDNESDAY 16-OCTOBER  -1996 00:00:00	THURSDAY  18-OCTOBER  -2018 00:00:00			F			Mademoiselle	LE BON	Clémence	2	18	BOULEVARD FOCH	93800	BARCELONE	ESPAGNE	clemence.le bon@cfo.fr	0033777889955	WEDNESDAY 16-OCTOBER  -1996 00:00:00	THURSDAY  18-OCTOBER  -2018 00:00:00			F		
*/

-- ==== MFB =======================================================================================================================
-- Définition de la structure des données en SQL 2 ================ Enrichissement de la description des données ======== FIN =====
-- Création des tables ============= Magasin FR01 ====== PARIS   ==================================================================
-- ==== MFB =======================================================================================================================





-- ==== MFB =======================================================================================================================
-- -- Insertion des données, Insertion des lignes dans les tables ========= en SQL 2 ======== DEBUT ===============================
-- ==== MFB ============================== Magasin FR01 ====== PARIS   ============================================================
-- ==== MFB =======================================================================================================================
-- ==== MFB ========= Repartir depuis le début avec des données correctes !  ======================================================
-- Plusieurs vérifications, homogénéisations et standardisations sont nécessaires
DELETE FROM CLIENTS;
DELETE FROM COMMANDES;
DELETE FROM ARTICLES;
DELETE FROM DETAILCOM;
DELETE FROM MAGASINS;

-- ==== MFB =======================================================================================================================
-- -- Insertion des données, Insertion des lignes dans les tables ========= en SQL 2 ======== FIN =================================
-- ==== MFB ============================== Magasin FR01 ====== PARIS   ============================================================
-- ==== MFB =======================================================================================================================
ALTER SESSION SET NLS_DATE_FORMAT = 'DD-MM-YYYY' ;


-- ==== MFB =======================================================================================================================
-- Affichage des données ========== en SQL 2 ================================================ DEBUT ===============================
-- Affichage des lignes dans les tables ; Affichage des tables de la BD MFB =======================================================
-- ==== MFB =======================================================================================================================

SET TIMING ON;

-- Préparation (mise en forme) de l'affichage (taille des lignes et des pages)
SET LINES 1000
SET PAGES 1000

-- Préparation (mise en forme) de l'affichage (taille des colonnes)
COLUMN CODCLI  FORMAT A10
COLUMN CIVCLI  FORMAT A12
COLUMN NOMCLI  FORMAT A20
COLUMN PRENCLI FORMAT A20
COLUMN CATCLI  FORMAT 99
COLUMN ADNCLI  FORMAT A6
COLUMN ADRCLI  FORMAT A30
COLUMN CPCLI   FORMAT A10
COLUMN VILCLI  FORMAT A30
COLUMN PAYSCLI FORMAT A30
COLUMN MAILCLI FORMAT A30
COLUMN TELCLI  FORMAT A15
COLUMN DATNAISCLI       FORMAT A30
COLUMN DPREMCONTACTCLI  FORMAT A30 
COLUMN OBSCLI           FORMAT A30
COLUMN REMCLI           FORMAT A30
COLUMN GENRECLI         FORMAT A3
COLUMN GSCLI            FORMAT A3
COLUMN KeyWordsCli      FORMAT A200

COLUMN NUMCOM  FORMAT A10
COLUMN DATCOM  FORMAT A30
COLUMN REFART  FORMAT A8
COLUMN NOMART  FORMAT A30
COLUMN PVART   FORMAT 999.99
COLUMN QSART   FORMAT 9999
COLUMN PAART   FORMAT 999.99
COLUMN QTCOM   FORMAT 999
COLUMN PUART   FORMAT 999.99
COLUMN REMISE  FORMAT 999.99

COLUMN NUMMAG		FORMAT A10
COLUMN NOMMAG		FORMAT A30
COLUMN TELMAG		FORMAT A15
COLUMN ADRNUMMAG	FORMAT A10
COLUMN ADRRUEMAG	FORMAT A30
COLUMN ADRCPMAG		FORMAT A10
COLUMN ADRVILLEMAG	FORMAT A30
COLUMN ADRPAYSMAG	FORMAT A30
COLUMN MAILMAG	    FORMAT A30
COLUMN CONTINENTMAG	    FORMAT A30
COLUMN SURFACEMAG       FORMAT 9999


-- Affichage des données des tables

SELECT 'Liste des client.e.s de l''entreprise ALBABAZONES-CLICKANDCOLLECT' AS CLIENT_E_S FROM DUAL;
SELECT * FROM CLIENTS;

SELECT 'Liste des commandes faites auprès de l''entreprise ALBABAZONES-CLICKANDCOLLECT' AS COMMANDES FROM DUAL;
SELECT * FROM COMMANDES;

SELECT 'Liste des articles de l''entreprise ALBABAZONES-CLICKANDCOLLECT' AS ARTICLES FROM DUAL;
SELECT * FROM ARTICLES;

SELECT 'Liste des détails des commandes faites auprès de l''entreprise ALBABAZONES-CLICKANDCOLLECT' AS DETAILS_DES_COMMANDES FROM DUAL;
SELECT * FROM DETAILCOM;

SELECT 'Liste des magasins gérés par l''entreprise ALBABAZONES-CLICKANDCOLLECT' AS MAGASINS FROM DUAL;
SELECT * FROM MAGASINS;

-- Affichage des données des clients sous forme CSV avec ; comme séparateur
SELECT 'Liste des client.e.s de l''entreprise ALBABAZONES-CLICKANDCOLLECT' AS CLIENT_E_S FROM DUAL;
SELECT 
 CODCLI  || ';' ||
 CIVCLI  || ';' ||
 NOMCLI  || ';' ||
 PRENCLI || ';' ||
 CATCLI  || ';' ||
 ADNCLI  || ';' ||
 ADRCLI  || ';' ||
 CPCLI   || ';' ||
 VILCLI  || ';' ||
 PAYSCLI || ';' ||
 MAILCLI || ';' ||
 TELCLI  || ';' ||
 DATNAISCLI       || ';' ||
 DPREMCONTACTCLI
--OBSCLI, REMCLI, GENRECLI, GSCLI, KeyWordsCli
FROM CLIENTS;

-- Affichage des données des magasins sous forme CSV avec ; comme séparateur
SELECT 'Liste des magasins gérés par l''entreprise BB BoBo' AS MAGASINS FROM DUAL;
SELECT 
NUMMAG       || ';' ||
NOMMAG       || ';' ||
TELMAG       || ';' ||
ADRNUMMAG    || ';' ||
ADRRUEMAG    || ';' ||
ADRCPMAG     || ';' ||
ADRVILLEMAG  || ';' ||
ADRPAYSMAG   || ';' ||
CONTINENTMAG || ';' ||
SURFACEMAG
FROM MAGASINS;
	
-- Affichage des données sous forme de commandes SQL (recréer les commandes INSERT INTO...!)
SELECT 'Commandes de re-création des client-e-s gérés par l''entreprise ALBABAZONES-CLICKANDCOLLECT' AS CLIENT_E_S FROM DUAL;
CREATE OR REPLACE VIEW ScriptSQLInsertData_CLI(SQL_ORDER) AS
SELECT 
'INSERT INTO CLIENTS VALUES (' ||
CHR(39) || CODCLI            || CHR(39) || ', '  ||
CHR(39) || CIVCLI            || CHR(39) || ', '  ||
CHR(39) || NOMCLI            || CHR(39) || ', '  ||
CHR(39) || PRENCLI           || CHR(39) || ', '  ||
           CATCLI            ||            ', '  ||
CHR(39) || ADNCLI            || CHR(39) || ', '  ||
CHR(39) || ADRCLI            || CHR(39) || ', '  ||
CHR(39) || CPCLI             || CHR(39) || ', '  ||
CHR(39) || PAYSCLI           || CHR(39) || ', '  ||
CHR(39) || MAILCLI           || CHR(39) || ', '  ||
CHR(39) || TELCLI            || CHR(39) || ', '  ||
CHR(39) || DATNAISCLI        || CHR(39) || ', '  ||
CHR(39) || DPREMCONTACTCLI   || CHR(39) || ', '  ||
CHR(39) || OBSCLI			 || CHR(39) || ', '  ||
CHR(39) || REMCLI			 || CHR(39) || ', '  ||
CHR(39) || GENRECLI			 || CHR(39) || ', '  ||
CHR(39) || GSCLI             || CHR(39) || ', '  ||
CHR(39) || KeyWordsCli       || CHR(39) || 
');' 
FROM CLIENTS;
SELECT * FROM ScriptSQLInsertData_CLI;

/*                                                                                 
------------------------------------------------------------------------------------------
Commandes de re-création des client-e-s gérés par l'entreprise ALBABAZONES-CLICKANDCOLLECT
View SCRIPTSQLINSERTDATA_CLI créé(e).
SQL_ORDER                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO CLIENTS VALUES ('C001', 'Madame', 'CLEM@ENT', 'EVE', 1, '18', 'BOULEVARD FOCH', '91000', 'FRANCE', 'eve.clement@gmail.com', '+33777889911', '17-06-1951', '12-12-2012', '', '', 'F', 'A+', 'Voyages, Mangas, BasketBall, Musique, SuDOKU, Informatque, Bases de Données, Entrepôts de Données, Data, FOOTBALL');                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
INSERT INTO CLIENTS VALUES ('C002', 'Madame', 'LESEUL', 'M@RIE', 1, '17', 'AVENUE D ITALIE', '75013', 'FRANCE', 'marieleseul@yahoo.fr', '0617586565', '05-08-1983', '05-08-1983', '', '', 'F', 'A+', 'Natation, Dessin, Voyages, Bandes Dessinees');                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
INSERT INTO CLIENTS VALUES ('C003', 'Madame', 'UNIQUE', 'Inès', 2, '77', 'RUE DE LA LIBERTE', '13001', 'FRANCE', 'munique@gmail.com', '+33717889922', '22-11-1969', '12-12-2012', '', '', 'F', 'B+', 'Cinema, football, Yoga, Mangas, SuDOKU, BASKETbal, Arts Martiaux, Haute couture');                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
INSERT INTO CLIENTS VALUES ('C004', 'Madame', 'CLEMENCE', 'EVELYNE', 4, '8 BIS', 'FOCH', '93800', 'FRANCE', 'clemence evelyne@gmail.com', '+33777889933', '', '', '', '', 'F', 'B+', 'Mangas, football , Theatre, Cinema, Musique, Plongee sous marine');                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
INSERT INTO CLIENTS VALUES ('C005', 'Madame', 'FORT', 'anne marie', 3, '55', 'RUE DU JAPON', '94310', 'FRANCE', 'jfort\@hotmail.fr', '+33777889944', '11-11-2000', '', '', '', 'F', 'A-', 'Bandes Dessinees, Handball, Musique, Manga, foot, BasketBall');                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              
INSERT INTO CLIENTS VALUES ('C006', 'Mademoiselle', 'LE BON', 'Clémence', 1, '18', 'BOULEVARD FOCH', '93800', 'FRANCE', 'clemence.le bon@cfo.fr', '0033777889955', '16-10-1996', '18-10-2018', '', '', 'F', 'A+', 'Plongee sous marine, Mangas, Cinema, FOOTBALL, SuDOKU');                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             
INSERT INTO CLIENTS VALUES ('C007', 'Mademoiselle', 'TRAIFOR', 'Alice', 2, '6', '    DE LA ROSIERE', '75015', 'FRANCE', 'alice.traifor@yahoo.fr', '+33777889966', '23-02-1998', '', '', '', 'F', 'A+', 'Bandes Dessinees, football , Musique, Handball, Voyages, Bandes Dessinees, football , Musique, Handball, Voyages, FOOTBALL');                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   
INSERT INTO CLIENTS VALUES ('C008', 'Monsieur', 'VIVANT', 'JEAN-BAPTISTE', 1, '13', 'RUE DE LA PAIX', '93800', 'FRANCE', 'jeanbaptiste@', '0607', '17-09-1958', '17-09-2000', '', '', 'F', 'A+', 'Handball, football, BasketBall, FOOTBALL');                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           
INSERT INTO CLIENTS VALUES ('C009', 'Monsieur', 'CLEMENCE', 'Alexandre', 1, '5', 'Rue De Belleville', '75019', '', 'alexandre.clemence@up13.fr', '+33149404071', '19-09-1999', '20-10-2020', '', '', 'F', '  ', 'BasketBall, Bandes Dessinees, football , Musique, Handball, Voyages, Bandes Dessinees, football , Musique, Handball, Voyages, FOOTBALL, BasketBall, Informatique');                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
INSERT INTO CLIENTS VALUES ('C010', 'Monsieur', 'TRAIFOR', 'Alexandre', 1, '17', 'AVENUE FOCH', '75016', 'FRA', 'alexandre.traifor@up13.fr', '06070809', '17-07-1967', '17-09-2000', '', '', 'F', 'B+', 'Handball, Theatre, Voyages, FOOTBALL');                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
INSERT INTO CLIENTS VALUES ('C011', 'Monsieur', 'PREMIER', 'JOS//EPH', 2, '77//', 'RUE// DE LA LIBERTE', '13001', 'FRANCE', 'josef@premier', '+33777889977', '01-01-2000', '20-10-2020', '', '', 'F', 'B+', 'Voyages, Mangas');                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         
INSERT INTO CLIENTS VALUES ('C012', 'Monsieur', 'CLEMENT', 'Adam', 2, '13', 'AVENUE JEAN BAPTISTE CLEMENT', '9430', 'FRANCE', 'adam.clement@gmail.com', '+33149404072', '19-06-2001', '', '', '', 'F', 'B+', 'Voyages, FOOTBALL, BasketBall, Mangas');                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  
INSERT INTO CLIENTS VALUES ('C013', 'Monsieur', 'FORT', 'Gabriel', 5, '1', 'AVENUE DE CARTAGE', '99000', 'TUNISIE', 'gabriel.fort@yahoo.fr', '+21624801777', '05-05-1985', '17-09-2000', '', '', 'F', 'A+', 'Plongee sous marine, , Natation, , Cinema');                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
INSERT INTO CLIENTS VALUES ('C014', 'Monsieur', 'ADAM', 'ADAMO', 5, '1', 'AVENUE DE ROME', '99001', 'ITALIE', 'adamo.adamé@gmail com', '', '12-12-2000', '20-10-2020', '', '', 'F', 'AB+', 'Foot, Natation, Mangas, Cinema');                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           
INSERT INTO CLIENTS VALUES ('C015', 'Monsieur', 'Labsent', 'pala', 7, '1', 'rue des absents', '000', 'IRAQ', 'pala-labsent@paici', '', '', '', '', '', 'F', 'A+', 'FootBALL, Natation, Mangas, Cinema');                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
INSERT INTO CLIENTS VALUES ('C016', 'Madame', 'obsolete', 'kadym', 7, '1', 'rue des anciens', '000', 'IFRIQIA', 'inexistant', 'inexistant', '', '', '', '', 'F', 'A+', 'PARIS, SUDOKU');                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
INSERT INTO CLIENTS VALUES ('C017', 'Madame', 'RAHYM', 'Karym', 1, '1', 'RUE DES GENTILS', '1000', 'TUNISIE', 'karym.rahym@gmail.com', '+21624808444', '01-01-1990', '05-01-2021', '', '', 'F', 'AB+', 'Plongee sous marine, Voyages, FOOTBALL, Cinema, SUDOKU, Arts martiaux, Voyages, Mangas, BasketBall, Musique, 
Informatique, Bases de Données, Entrepôts de Données, Data Cleaning, FOOTBALL');                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   
INSERT INTO CLIENTS VALUES ('C018', 'Madame', 'GENIE', 'ADAM', 6, '8', 'BOULEVARD FOCH', '93800', 'FRANCE', 'adam.génie@gmail.com', '+33777889911', '01-01-1990', '11-11-2011', '', '', 'F', 'Ab+', 'FootBALL, BasketBall, Natation, Mangas, Cinema');                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  
INSERT INTO CLIENTS VALUES ('C019', 'Madame', 'GENIE', 'GENIALE', 3, '16', 'AVENUE FOCH', '75016', 'FRANCE', 'genialegenie@gmail.com', '+33777889900', '17-09-1988', '11-11-2011', '', '', 'F', '', 'BasketBall, FootBALL, Informatique, Data Management, Machine Learning');                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           
INSERT INTO CLIENTS VALUES ('C020', 'Madame', 'GENIe', 'GENIAL', 3, '16', 'AVENUE FOCH', '75016', 'FRENCE', 'genialegenie@gmail.com', '0777889900', '17-09-1988', '11-11-2011', '', '', 'F', '', '');                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   
INSERT INTO CLIENTS VALUES ('C021', 'Madame', 'LAPARISIENNE', 'Belle', 3, '26', 'AVENUE FOCH', '75016', '', 'belle.laparisienne@gmail.com', '+33777889977', '17-09-1988', '11-11-2011', '', '', 'F', '', '');                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           
INSERT INTO CLIENTS VALUES ('C022', 'Mademoiselle', 'AFRICAINE', 'Belle', 9, '26', 'AVENUE FOCH', '75016', '', 'belle.africaine@hotmail.com', '+33777889911', '17-09-1988', '11-11-2011', '', '', 'F', '', '');                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         
INSERT INTO CLIENTS VALUES ('C023', 'Mademoiselle', 'AFRICAINE', 'Belle', 9, '26', 'AVENUE FOCH', '75016', '', 'africaineb@gmail.com', '+33777889922', '17-09-1988', '11-11-2011', '', '', 'F', '', '');                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
INSERT INTO CLIENTS VALUES ('C118', 'Madame', 'GENIE', 'Adam', 3, '8', 'BOULEVARD FOCH', '93800', 'FRANCE', 'adam.génie@gmail.com', '+33777889911', '17-09-1988', '', '', '', 'F', '', '');                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             
INSERT INTO CLIENTS VALUES ('C119', 'MadamE', 'UNE', 'Marie', 6, '17', 'AVENUE D ITALIE', '75013', '   FRANCE', 'marieune@gmail.com', '0617586575', '01-01-1991', '', '', '', 'F', '', '');                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             
INSERT INTO CLIENTS VALUES ('C120', 'MADAME', '1', 'MARIE', 1, '17', 'AVENUE D ITALIE', '75013', 'FRANCE', 'MARIEUNE@GMAIL.COM', '0617586575', '01-01-1991', '', '', '', 'F', '', '');                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  
INSERT INTO CLIENTS VALUES ('C121', 'Monsieur', '2 PAR 2', 'Girard', 1, '27', 'AVENUE D ITALIE', '75013', 'FRANCE', '2PAR2@GMAIL.COM', '0617586577', '02-02-1982', '', '', '', 'F', '', '');                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
INSERT INTO CLIENTS VALUES ('C122', 'Monsieur', 'DE PAR DE', 'GIRARD', 1, '27', 'AVENUE D-ITALIE', '75013', 'FRANCE', '2PAR2@GMAIL.COM', '0617586577', '02-02-1982', '', '', '', 'F', '', '');                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          
INSERT INTO CLIENTS VALUES ('C123', 'Monsieur', 'DE PAR DE', 'GIRARD', 1, '27', 'AVENUE D''ITALIE', '75013', '   FRANCE       ', '2PAR2@GMAIL.COM', '0617586577', '', '', '', '', 'F', '', '');                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          
INSERT INTO CLIENTS VALUES ('C124', 'Monsieur', 'DE    PAR       DE', 'Girard', 1, '27', 'AVENUE D_ITALIE', '75013', 'FRANCE', '2PAR2@GMAIL.COM', '0617586577', '02-02-1982', '', '', '', 'F', '', '');                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 
INSERT INTO CLIENTS VALUES ('C125', 'Monsieur', '       DE PAR DE', 'Girard', 1, '27', 'AVENUE D_ITALIE', '75013', 'france', '2PAR2@GMAIL.COM', '0617586577', '02-02-1982', '', '', '', 'F', '', '');                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   
INSERT INTO CLIENTS VALUES ('C126', 'Monsieur', '       DE PAR DE', 'Gir@rd', 1, '27', 'AVENUE@D_ITALIE/', '75013', 'france', '2PAR2@GMAIL.COM', '0617586577', '02-02-1982', '', '', '', 'F', '', '');                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  
INSERT INTO CLIENTS VALUES ('C127', 'Monsieur', 'SMITH', 'John', 1, '', '', '', 'United-Kingdom', '', '', '03-03-1983', '', '', '', 'F', '', '');                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
INSERT INTO CLIENTS VALUES ('C128', 'Monsieur', 'BIDON', 'Jade', 1, '', '', '', 'United-KINGDOM', '', '', '17-07-1977', '', '', '', 'F', '', '');                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
INSERT INTO CLIENTS VALUES ('C129', 'Monsieur', 'STOne', 'Brakeur', 1, '', '', '', 'United-KINGDOM', '', '', '18-08-1988', '', '', '', 'F', '', '');                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
INSERT INTO CLIENTS VALUES ('C130', 'MADAMe', 'STOne', 'Jane', 1, '', '', '', 'United KINGDOM', '', '', '', '', '', '', 'F', '', '');                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   
INSERT INTO CLIENTS VALUES ('C131', 'MONsieur', 'CATS', 'BiLL', 9, '', 'Maison Planchhhe', '', 'UNITED-STATS-OF-AMERICA', '', '', '17-09-1978', '', '', '', 'F', '', '');                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
INSERT INTO CLIENTS VALUES ('C295', 'MONSIEUr', 'MOUCHE', 'Gorge', 3, '-', '-', '-', '-', 'usapresident@labas.com', '-', '02-02-1950', '20-01-1991', '', '', 'F', 'x-', '');                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
INSERT INTO CLIENTS VALUES ('C296', 'MONSIEUR', 'MOUBARAK', 'OOObana', 3, '-', '-', '-', '-', '-', '-', '15-05-1965', '20-01-2008', '', '', 'F', 'A', '');                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              
INSERT INTO CLIENTS VALUES ('C297', 'MADAME', 'CLEANTOOON', 'Hilally', 3, '-', '-', '-', '-', '-', '-', '15-05-1966', '20-01-2016', '', '', 'F', 'B+-', '');                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
INSERT INTO CLIENTS VALUES ('C298     ', 'monsieur', 'TROMPE.', 'Ronald', -3, '-', '-', '-', '-', 'usapresident@labas.com', '-', '10-10-1945', '20-01-2016', '', '', '', '', '');                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
INSERT INTO CLIENTS VALUES ('     C299', 'MONSIEUR', 'BIDON!', 'Joie', 3, '-', '-', '-', '-', '-', '-', '10-10-1941', '03-11-2020', '-', '', 'F', '', '');                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              
INSERT INTO CLIENTS VALUES ('C300', 'MONSIEUR', 'HOBAAAMA', 'M''Barek', 3, '-', '-', '-', '-', '-', '-', '10-10-1985', '20-01-2008', '-', '', 'F', 'o+', 'BasketBall, Handball, FOOTBALL');                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              
INSERT INTO CLIENTS VALUES ('C554', 'Monsieur', 'ALIBABA', 'Mystere', 1, '55', 'Rue De Belleville', '75019', 'FRANCE', 'sezameouvretoi.alibaba.myster@gmail.com', '0697837311', '12-12-1992', '', '', '', 'F', '', '');                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 
INSERT INTO CLIENTS VALUES ('C555', 'Madame', 'SMART', 'Data', 2, '55', 'RUE DE BELLEVILLE', '75019', 'FRANCE', 'smartdata@gmail.com', '+33755555555', '', '', '', '', 'F', 'B+', 'FOOTBALL, SMART DATA');                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              
*/

SELECT 'Commandes de re-création des articles gérés par l''entreprise ALBABAZONES-CLICKANDCOLLECT' AS ARTICLES FROM DUAL;
CREATE OR REPLACE VIEW ScriptSQLInsertData_ART(SQL_ORDER) AS
SELECT 
'INSERT INTO ARTICLES VALUES (' ||
CHR(39) || REFART            || CHR(39) || ', '  ||
CHR(39) || NOMART            || CHR(39) || ', '  ||
           PVART             ||            ', '  ||
		   QSART             ||            ', '  ||
           PAART             ||           
');' 
FROM ARTICLES;
SELECT * FROM ScriptSQLInsertData_ART;

-- ==== MFB =======================================================================================================================
-- Affichage des données ========== en SQL 2 ================================================ FIN =================================
-- Affichage des lignes dans les tables ; Affichage des tables de la BD MFB =======================================================
-- ==== MFB =======================================================================================================================


-- ==== MFB =======================================================================================================================
-- Manipulations-Interrogations des données ========== en SQL 2 ===================================== DEBUT =======================
-- Requêtes dans les tables tables de la BD MFB ===================================================================================
-- ==== MFB =======================================================================================================================
ALTER SESSION SET NLS_DATE_FORMAT = 'DAY DD-MONTH-YYYY HH24:MI:SS' ;

-- ==== MFB    Historique des mouvements des articles =============================================================================
-- ==== MFB    CORRELATION ENTTRE LES PRIX DES ARTICLES ET LE CHIFFRE D'AFFAIRES  ======== C INTELLIGENT ! ========================

-- Manipulations pour vérifier le TRIGGER - table des Articles
-- Exemple avec 2 insertions et 2 mises à jour dans la table ARTICLES
--DELETE	FROM	ARTICLES WHERE	REFART = 'FB.777';
DELETE	FROM	ARTICLES;
INSERT INTO ARTICLES (REFART, NOMART, PVART, QSART, PAART) VALUES ('FB.777', 'Exemple Article 1', 30.00, 3, 13.00);
--DELETE	FROM	ARTICLES WHERE	REFART = 'FB.778';
INSERT INTO ARTICLES (REFART, NOMART, PVART, QSART, PAART) VALUES ('FB.778', 'Exemple Article 2', 30.00, 3, 13.00);
COLUMN REFART	FORMAT A20
COLUMN NOMART	FORMAT A50
COLUMN PVART	FORMAT 9999.99
COLUMN QSMART	FORMAT 999
COLUMN PAART	FORMAT 9999.99
COLUMN DATMAJ	FORMAT A50
-- Visualisation des articles insérés dans ARTICLES
SELECT	* FROM	ARTICLES WHERE	REFART IN ('FB.777', 'FB.778');
/*
-- >>>>>>>>>>>>>>>>>>>>>>>>>> -- Résultat généré:
Visualisation des articles insérés dans ARTICLES                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
REFART NOMART                     PVART QSART  PAART
------ ------------------------- ------ ----- ------
FB.777 Exemple Article 1          30.00     3  13.00
FB.778 Exemple Article 2          30.00     3  13.00
*/
-- MAJ des articles dans ARTICLES
UPDATE	ARTICLES SET PVART = 45.00, PAART = 15.00 WHERE	REFART = 'FB.777';
UPDATE	ARTICLES SET PVART = 2.00                 WHERE	REFART = 'FB.778';
-- Visualisation des articles modifiés dans ARTICLES
SELECT	* FROM	ARTICLES WHERE	REFART IN ('FB.777', 'FB.778');

/*
-- >>>>>>>>>>>>>>>>>>>>>>>>>> -- Résultat généré:
Visualisation des articles modifiés dans ARTICLES
REFART NOMART                     PVART QSART  PAART
------ ------------------------- ------ ----- ------
FB.777 Exemple Article 1          45.00     3  15.00
FB.778 Exemple Article 2           2.00     3  13.00
 */
-- Visualisation de la table HISTORIQUE_PRIX_ARTICLES  -->>> Trigger !
SELECT	* FROM	HISTORIQUE_PRIX_ARTICLES;
/*
-- >>>>>>>>>>>>>>>>>>>>>>>>>> -- Résultat généré:
Visualisation de la table HISTORIQUE_PRIX_ARTICLES
REFART NOMART                     PVART  PAART DATMAJ                         AUTEURMAJ                    
------ ------------------------- ------ ------ ------------------------------ ------------------------------
FB.777 Exemple Article 1          30.00  13.00 WEDNESDAY 04-NOVEMBER -2020    DD                            
FB.777 Exemple Article 1          45.00  15.00 WEDNESDAY 04-NOVEMBER -2020    DD                            
FB.778 Exemple Article 2          30.00  13.00 WEDNESDAY 04-NOVEMBER -2020    DD       
*/
-- Suppression et Insertion dans la table ARTICLES (par user-DD par exemple)
DELETE FROM	ARTICLES WHERE	REFART = 'FB.779';
INSERT INTO ARTICLES (REFART, NOMART, PVART, QSART, PAART) VALUES ('FB.779', 'Exemple Article 3', 25.00, 5, 10.00);
-- Visualisation de la table HISTORIQUE_MVTS_ARTICLES
SELECT	* FROM	HISTORIQUE_MVTS_ARTICLES;
/*
-- >>>>>>>>>>>>>>>>>>>>>>>>>> -- Résultat généré:
--      Visualisation de la table HISTORIQUE_MVTS_ARTICLES
*/
-- Suppression et insertion dans la table ARTICLES.
-- DELETE	FROM	ARTICLES WHERE	REFART = 'FB.800';
INSERT INTO ARTICLES (REFART, NOMART, PVART, QSART, PAART) VALUES ('FB.800', 'Le roi de la jungle 1', 29.99, 5, 13.00);
INSERT INTO ARTICLES (REFART, NOMART, PVART, QSART, PAART) VALUES ('FB.801', 'Le roi de la jungle 2', 39.99, 5, 21.00);
COMMIT;
SELECT	* FROM	HISTORIQUE_MVTS_ARTICLES;
/*
-- >>>>>>>>>>>>>>>>>>>>>>>>>> -- Résultat généré:
--      Visualisation de la table HISTORIQUE_MVTS_ARTICLES
*/

-- ==== MFB =======================================================================================================================
-- Suppression et creation de la table COMPARAISON_ART;
-- Cette table va permettre de stocker les mouvements dans la table ARTICLES, pendant une période. 
-- Tout ça pour pouvoir ensuite étudier l'impact de ces mouvements sur le chiffre d affaires durant la période considérée.
-- ==== MFB =======================================================================================================================

DROP TABLE COMPARAISON_ART;

CREATE TABLE COMPARAISON_ART
(
	REFART 		    VARCHAR2(10), 
	PVART		    NUMBER(10, 2),
	PAART		    NUMBER(10, 2),
	QSART		    NUMBER(3),
	A_DATE_DEBUT	INTEGER,
	A_DATE_FIN	    INTEGER
);

-- ==== MFB =======================================================================================================================
-- Suppression et création de la table COMPARAISON_CHIFFRE_AFFAIRES.
-- Cette table va permettre de stocker les informations concernant le chiffre d affaires moyen des différents pays avant la période où
-- l on a décidé de regarder l impact des mouvements effectués sur la table ARTICLES. De garder aussi le chiffre d affaires durant
-- la période considérée. Et aussi, d inscrire la variation au niveau des chiffres d affaires.
-- ==== MFB =======================================================================================================================

DROP TABLE COMPARAISON_CHIFFRE_AFFAIRES;

CREATE TABLE COMPARAISON_CHIFFRE_AFFAIRES
(
	PAYS		    VARCHAR2(20),
	A_DATE_DEBUT	INTEGER,
	A_DATE_FIN	    INTEGER,
	CA_AVANT	    NUMBER(10, 2),
	CA_APRES	    NUMBER(10, 2),
	VARIATION	    NUMBER(10, 2)
);

-- ==== MFB =======================================================================================================================
-- Création de la vue VUE_ART permettant de garder pour chaque article de la table ARTICLES 
-- son prix de vente moyen, son prix d achat moyen et sa quantité en stock moyen.
-- ==== MFB =======================================================================================================================

CREATE OR REPLACE VIEW VUE_ART (REFART, A_PVART, A_PAART, A_QSART) AS
(
	SELECT		DISTINCT REFART, AVG(PVART), AVG(PAART), AVG(QSART)
	FROM		ARTICLES
	GROUP BY 	REFART
);

-- ==== MFB =======================================================================================================================
-- Création de la vue VUE_MVTS_ART permettant de garder pour chaque article de la table HISTORIQUE_MVTS_ARTICLES 
-- son prix de vente moyen, son prix d achat moyen et sa quantité en stock moyen. 
-- ==== MFB =======================================================================================================================

CREATE OR REPLACE VIEW VUE_MVTS_ART (REFART, A_PVART, A_PAART, A_QSART) AS
(
	SELECT		DISTINCT REFART, AVG(PVART), AVG(PAART), AVG(QSART)
	FROM		HISTORIQUE_MVTS_ARTICLES
	WHERE		TYPEMVT = 'UPDATE'
	AND			EXTRACT(YEAR FROM DATMVT) BETWEEN 2016 AND 20020
	GROUP BY 	REFART
);


-- ==== MFB =======================================================================================================================
-- Creation de la vue CHIFFRE_AFFAIRES_AVANT permettant de calculer le chiffre d affaires de chaque pays avant une période considérée.
-- ==== MFB =======================================================================================================================

CREATE OR REPLACE VIEW CHIFFRE_AFFAIRES_AVANT(PAYSCLI, CHIFFAFF) AS
(
	SELECT	cl.PAYSCLI, SUM((d.PUART*d.QTCOM) * (1-(d.REMISE/100)))
	FROM	DETAILCOM d, CLIENTS cl, COMMANDES c
	WHERE	d.NUMCOM  = c.NUMCOM
	AND	cl.CODCLI = c.CODCLI
	AND	EXTRACT(YEAR FROM c.DATCOM) < 2016
	GROUP BY cl.PAYSCLI
);

-- ==== MFB =======================================================================================================================
-- Création de vue CHIFFRE_AFFAIRES_APRES permettant de calculer le chiffre d affaires de chaque pays durant la période considérée.
-- ==== MFB =======================================================================================================================

CREATE OR REPLACE VIEW CHIFFRE_AFFAIRES_APRES (PAYSCLI, CHIFFAFF) AS 
(
	SELECT	cl.PAYSCLI, SUM((d.PUART*d.QTCOM) * (1-(d.REMISE/100)))
	FROM	DETAILCOM d, CLIENTS cl, COMMANDES c
	WHERE	d.NUMCOM  = c.NUMCOM
	AND	cl.CODCLI = c.CODCLI
	AND	EXTRACT(YEAR FROM c.DATCOM) BETWEEN 2016 AND 2020
	GROUP BY cl.PAYSCLI
);

-- ==== MFB =======================================================================================================================
-- Création de procedure MOYENNE_PRIX_ART permettant de calculer le prix moyen d achat et de vente, 
-- et la quantité moyenne en stock de chaque article. 
-- Et ensuite de calculer le chiffre d affaires avant et pendant une période considérée. Tout cela pour savoir si les mouvements
-- effectués, durant une période considérée, sur la table ARTICLES ont apporté plus ou moins d argent.
-- ==== MFB =======================================================================================================================

CREATE OR REPLACE PROCEDURE MOYENNE_PRIX_ART IS
	CURSOR curseur IS 
		SELECT	DISTINCT REFART 
		FROM	VUE_MVTS_ART;

	CURSOR curseurBIS IS 
		SELECT	DISTINCT PAYSCLI 
		FROM	CLIENTS;

		
	V_REFART 	VARCHAR2(10); 
	V_PVART		NUMBER(10, 2);
	V_PAART		NUMBER(10, 2);
	V_QSART		NUMBER(3);
	V_CA_AVANT	NUMBER(10, 2);
	V_CA_APRES	NUMBER(10, 2);
	V_VARIATION	NUMBER(10, 2);
	V_PAYS		VARCHAR2(20);
		
	V1_PVART	NUMBER(10, 2);
	V1_PAART	NUMBER(10, 2);
	V1_QSART	NUMBER(3);
	
	V2_PVART	NUMBER(10, 2);
	V2_PAART	NUMBER(10, 2);
	V2_QSART	NUMBER(3);
BEGIN
	FOR c IN curseur LOOP
		SELECT	REFART, A_PVART, A_PAART, A_QSART INTO V_REFART, V1_PVART, V1_PAART, V1_QSART
		FROM	VUE_MVTS_ART
		WHERE	REFART = c.REFART;	
		
		SELECT	REFART, A_PVART, A_PAART, A_QSART INTO V_REFART, V2_PVART, V2_PAART, V2_QSART
		FROM	VUE_ART
		WHERE	REFART = c.REFART;	
		
		V_PVART := (V1_PVART + V2_PVART) /2;
		V_PAART := (V1_PAART + V2_PAART) /2;
		V_QSART := (V1_QSART + V2_QSART) /2;
	
		INSERT INTO COMPARAISON_ART
		VALUES (V_REFART, V_PVART, V_PAART, V_QSART, 2016, 2020);
		
	END LOOP;

	FOR cBIS IN curseurBIS LOOP
		SELECT	PAYSCLI, CHIFFAFF INTO V_PAYS, V_CA_AVANT
		FROM	CHIFFRE_AFFAIRES_AVANT
		WHERE	PAYSCLI = cBIS.PAYSCLI;
			
		SELECT	PAYSCLI, CHIFFAFF INTO V_PAYS, V_CA_APRES
		FROM	CHIFFRE_AFFAIRES_APRES
		WHERE	PAYSCLI = cBIS.PAYSCLI;
		
		V_VARIATION := V_CA_APRES - V_CA_AVANT;		
		
		INSERT INTO COMPARAISON_CHIFFRE_AFFAIRES
		VALUES (V_PAYS, 2016, 2020, V_CA_AVANT, V_CA_APRES, V_VARIATION); 
	END LOOP;
END;
/

-- Execution de la procédure et vérifications
EXECUTE MOYENNE_PRIX_ART;

-- ==== MFB =======================================================================================================================
-- Visualisation des tables COMPARAISON_ART et COMPARAISON_CHIFFRE_AFFAIRES
-- ==== MFB =======================================================================================================================

SELECT * FROM COMPARAISON_ART;

/*
-- >>>>>>>>>>>>>>>>>>>>>>>>>> -- Résultat généré: ???
*/

SELECT * FROM COMPARAISON_CHIFFRE_AFFAIRES;  

/*
-- >>>>>>>>>>>>>>>>>>>>>>>>>> -- Résultat généré: ???
*/

-- ==== MFB =======================================================================================================================
-- ==== MFB =======================================================================================================================


-- ==== MFB =======================================================================================================================
-- >> Requete  : Articles toujours commandés ensemble
-- ==== MFB =======================================================================================================================

/*
-- >>>>>>>>>>>>>>>>>>>>>>>>>> -- Résultat généré: ???
-- FB FB FB FB FB FB A compléter
-- Le(s) les articles qui sont toujours commandés ensemble sont :
*/


-- ==== MFB    Historique des mouvements des clients= =============================================================================
-- ==== MFB    Comment définir DEUX CLIENTS "PROCHES" "SEMBLABLES" "AYANT LE MÊME PROFIL"  ======== C INTELLIGENT ! ===============


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
