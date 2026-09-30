SET DEFINE OFF;
-- ==== MFB =======================================================================================================================
-------- Université Sorbonne Paris Nord , Institut Galiée
-------- Master 2 Informatique (M2 EID2 = Exploration Informatique des Données et Décisionnel), Ingénieurs
-- ==== MFB =======================================================================================================================
-- Binome = Groupe de Travail N° 03  : B03 (Exemple B01, B02,... B09, B10, B11...)
-- ==== MFB =======================================================================================================================
-- Numéro du Binôme (= GroupeDeTravail) --->>>> : B03
-- SANTHALINGAM Mathura                 --->>>> : np1
-- PARAKARAN Vidur                      --->>>> : np2
-- BEN SALEM Tesnime                    --->>>> : np3
-- CHARAF Hassan                        --->>>> : np4
-- BENAMARA Amine                       --->>>> : np5


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
-- DD : Data Dictionaries --->>> METAxy_DD_nomtab
-- Les données (les méta-données) dont l'outil de détection et de correction des anomalies SmartDATA a besoin en entrée 
-- pour réaliser la gestion de la qualité des données
-- ==== MFB =======================================================================================================================

-- ==== MFB =======================================================================================================================
-- META01_DD_PARAMETRAGES
-- Les différentes codifications des valeurs manquantes (MISSING VALUES) :
-- Le séparateur ; ...
DROP   TABLE META01_DD_PARAMETRAGES ;
CREATE TABLE META01_DD_PARAMETRAGES ( ID_PARAMETRE VARCHAR2(10), COMMENTAIRE_PARAM VARCHAR2(500), VALEUR_PARAM VARCHAR2(500) );
INSERT INTO META01_DD_PARAMETRAGES VALUES ( 'Param1', 'Le Séparateur CSV', ';' ) ;
INSERT INTO META01_DD_PARAMETRAGES VALUES ( 'Param2', 'Les différentes codifications des valeurs manquantes : MISSING VALUES', ' IN (''MISSINGVALUE'',''NULL'', ''-'', ''='', ''!'', ''?'', '''')'  );
INSERT INTO META01_DD_PARAMETRAGES VALUES ( 'Param3', 'Unification de la codification du message des valeurs manquantes', '<?MISSINGVALUE>' ) ;
INSERT INTO META01_DD_PARAMETRAGES VALUES ( 'Param4', 'Message d''erreur pour une anoamlie INTRACOLONNE et INTER-COLONNES syntaxique sémantique', ' <?!+ANOMALY>' ) ; -- + 1,2,3,3...
INSERT INTO META01_DD_PARAMETRAGES VALUES ( 'Param5', 'Message d''erreur pour une anoamlie INTRACOLONNE doublon', ' <?!DANOMALY>' ) ;

INSERT INTO META01_DD_PARAMETRAGES VALUES ( 'Param6', 'Message d''erreur pour une anoamlie INTER-COLONNES', ' <?!2ANOMALY>' ) ;-- n'existe plus

INSERT INTO META01_DD_PARAMETRAGES VALUES ( 'Param9', 'Format par défaut de la date Homogénéisation', 'YYYY-MM-DD') ;
INSERT INTO META01_DD_PARAMETRAGES VALUES ( 'Param10', 'Nouvelle Largeur des colonnes augmentée de ', '100') ;

INSERT INTO META01_DD_PARAMETRAGES VALUES ( 'Param13', 'Contrainte négative par défaut (Pas d''espace superflu)', 'NS0001') ;

INSERT INTO META01_DD_PARAMETRAGES VALUES ( 'Param15', 'List of characters to be removed from a mail', '!?+$\/|,;=<^>"#()[]{}°%*$£€') ;
INSERT INTO META01_DD_PARAMETRAGES VALUES ( 'Param16', 'List of characters to be removed', '!?@-+_$\/|.,;=<^>"#()[]{}°%*$£€') ;
INSERT INTO META01_DD_PARAMETRAGES VALUES ( 'Param17', 'List of characters to be removed', '!?@+_$\/|.,;=<^>"#()[]{}°%*$£€1234567890') ;

INSERT INTO META01_DD_PARAMETRAGES VALUES ( 'Param30', 'List of characters with accent to be changed a', 'aàâ') ;
INSERT INTO META01_DD_PARAMETRAGES VALUES ( 'Param31', 'List of characters with accent to be changed c', 'cç') ;
INSERT INTO META01_DD_PARAMETRAGES VALUES ( 'Param32', 'List of characters with accent to be changed e', 'eèéê') ;
INSERT INTO META01_DD_PARAMETRAGES VALUES ( 'Param33', 'List of characters with accent to be changed i', 'iïî') ;
INSERT INTO META01_DD_PARAMETRAGES VALUES ( 'Param34', 'List of characters with accent to be changed o', 'oô') ;
INSERT INTO META01_DD_PARAMETRAGES VALUES ( 'Param35', 'List of characters with accent to be changed u', 'uùüû') ;

COMMIT;
SELECT * FROM META01_DD_PARAMETRAGES;

-- ==== MFB =======================================================================================================================

-- ==== MFB =======================================================================================================================
-- Les Mesures réalisées pour une table et pour chacune des colonnes
-- META02_DD_MESURES
DROP   TABLE META02_DD_MESURES ;
CREATE TABLE META02_DD_MESURES ( MESUREIDENTIFIER VARCHAR2(10), MESUREDESCRIPTION VARCHAR2(500) );
INSERT INTO META02_DD_MESURES VALUES ('M000', 'Number of rows in the data source DS');
INSERT INTO META02_DD_MESURES VALUES ('M001', 'Number of columns in the Data Source DS');

INSERT INTO META02_DD_MESURES VALUES ('M090', 'Column in first normal form');
INSERT INTO META02_DD_MESURES VALUES ('M091', 'Column NON in first normal form');

INSERT INTO META02_DD_MESURES VALUES ('M100', 'Number of MISSING (NULL) values in the column');
INSERT INTO META02_DD_MESURES VALUES ('M101', 'Number of NON-MISSING (NON-NULL) values in the column');

INSERT INTO META02_DD_MESURES VALUES ('M102', 'Number of different values in the column');
INSERT INTO META02_DD_MESURES VALUES ('M103', 'Number of ANOMALIES in the column');
INSERT INTO META02_DD_MESURES VALUES ('M104', 'Heterogeneity rate of the data type; Number of data types');
INSERT INTO META02_DD_MESURES VALUES ('M105', 'Heterogeneity rate of the data subtype; Number of data subtypes');
INSERT INTO META02_DD_MESURES VALUES ('M106', 'Heterogeneity rate of the semantic category; Number of semantic categories');
INSERT INTO META02_DD_MESURES VALUES ('M107', 'Heterogeneity rate of the semantic sub-category; Number of semantic sub-categories');

INSERT INTO META02_DD_MESURES VALUES ('M108', 'Minimum length of strings in the column');
INSERT INTO META02_DD_MESURES VALUES ('M109', 'MAXIMUM length of strings in the column');
INSERT INTO META02_DD_MESURES VALUES ('M110', 'Number of words in the column');

INSERT INTO META02_DD_MESURES VALUES ('M111A', 'Number of values of type STRING in the column');
INSERT INTO META02_DD_MESURES VALUES ('M111B', 'Number of values of sub-type STRING-ALPHABETICUPPER in the column');
INSERT INTO META02_DD_MESURES VALUES ('M111C', 'Number of values of sub-type STRING-ALPHABETICLOWER in the column');
INSERT INTO META02_DD_MESURES VALUES ('M111D', 'Number of values of sub-type STRING-ALPHABETICUPPLOW in the column');
INSERT INTO META02_DD_MESURES VALUES ('M111E', 'Number of values of sub-type STRING-ALPHANUMERICLOWER in the column');
INSERT INTO META02_DD_MESURES VALUES ('M111F', 'Number of values of sub-type STRING-ALPHANUMERICUPPER in the column');
INSERT INTO META02_DD_MESURES VALUES ('M111G', 'Number of values of sub-type STRING-ALPHANUMERICSPECIALCHAR in the column');

INSERT INTO META02_DD_MESURES VALUES ('M112A', 'Number of values of type DATE in the column');
INSERT INTO META02_DD_MESURES VALUES ('M112B', 'Number of values of sub-type DATE-FRENCH in the column');
INSERT INTO META02_DD_MESURES VALUES ('M112C', 'Number of values of sub-type DATE-ENGLISH in the column');

INSERT INTO META02_DD_MESURES VALUES ('M113A', 'Number of values of type HOUR in the column');
INSERT INTO META02_DD_MESURES VALUES ('M113B', 'Number of values of sub-type HOUR-HOURH24 in the column');
INSERT INTO META02_DD_MESURES VALUES ('M113C', 'Number of values of sub-type HOUR-HOURH12 in the column');

INSERT INTO META02_DD_MESURES VALUES ('M114A', 'Number of values of type DATEHOUR in the column');
INSERT INTO META02_DD_MESURES VALUES ('M114B', 'Number of values of sub-type DATEHOUR-DATEHOURH24 in the column');
INSERT INTO META02_DD_MESURES VALUES ('M114C', 'Number of values of sub-type DATEHOUR-DATEHOURH12 in the column');

INSERT INTO META02_DD_MESURES VALUES ('M115A', 'Number of values of type NUMBER in the column');
INSERT INTO META02_DD_MESURES VALUES ('M115B', 'Number of values of sub-type NUMBER-INTEGER in the column');
INSERT INTO META02_DD_MESURES VALUES ('M115C', 'Number of values of sub-type NUMBER-REAL in the column');

INSERT INTO META02_DD_MESURES VALUES ('M120', 'The DOMINANT SYNTAX TYPE of the column');
INSERT INTO META02_DD_MESURES VALUES ('M121', 'The DOMINANT SYNTAX SUB-TYPE of the column');
INSERT INTO META02_DD_MESURES VALUES ('M122', 'The number of SYNTAX anomalies');

INSERT INTO META02_DD_MESURES VALUES ('M130', 'The DOMINANT category of the column');
INSERT INTO META02_DD_MESURES VALUES ('M131', 'The DOMINANT sub-category of the column');
INSERT INTO META02_DD_MESURES VALUES ('M132', 'The number of SEMANTIC anomalies in the column');

INSERT INTO META02_DD_MESURES VALUES ('M160', 'The average length of strings in a column');
INSERT INTO META02_DD_MESURES VALUES ('M161', 'The minimum value of the numbers (numerics) in a column');
INSERT INTO META02_DD_MESURES VALUES ('M162', 'The maximum value of the numbers (numerics) in a column');
INSERT INTO META02_DD_MESURES VALUES ('M163', 'The mean (average) value of the numbers (numerics) in a column');
INSERT INTO META02_DD_MESURES VALUES ('M164', 'The median value of the numbers (numerics) in a column');
INSERT INTO META02_DD_MESURES VALUES ('M165', 'FRANCAIS La valeur de l écart type des numériques dans une colonne');
INSERT INTO META02_DD_MESURES VALUES ('M166', 'Minimum value of dates (oldest) in a column');
INSERT INTO META02_DD_MESURES VALUES ('M167', 'Maximum value of dates (most recent) in a column');
COMMIT;
SELECT * FROM META02_DD_MESURES;


-- ==== MFB =======================================================================================================================
-- META03_DD_CONSTRAINTS;
-- ==== MFB =======================================================================================================================
-- Création d'un dictionnaire des données pour gérer les contraintes à définir sur les données    ---- Début
-- ==== MFB =======================================================================================================================
DROP TABLE META03_DD_CONSTRAINTS;
CREATE TABLE META03_DD_CONSTRAINTS
(
IDCONSTRAINT                                VARCHAR2(20),
CATEGORY 							    	VARCHAR2(300), 
SUBCATEGORY 						    	VARCHAR2(500), 
CONTRAINTE	 							    VARCHAR2(500),
COMMENTAIRE                                 VARCHAR2(300),
CONSTRAINT META03_DD_CONSTRAINTS			PRIMARY KEY(IDCONSTRAINT)
);

-- Negative Constraints / Contraintes négatives INTRA-COL++ONNE >>>> Numérique
INSERT INTO META03_DD_CONSTRAINTS VALUES ('NN0001', 'NUMERIQUE',   'NUMERIQUE',    '^[[:digit:]]+$',   'Des numériques');

-- Negative Constraints / Contraintes négatives INTRA-COL++ONNE >>>> Date
INSERT INTO META03_DD_CONSTRAINTS VALUES ('ND0001', 'DATE', 'A date in DD-MM-YYYY format = Une date au format DD-MM-YYYY',                         
'REGEXP_LIKE (<@COLONNE_ADEF>,''^(([0-2][0-9]|3[0-1])-(0[0-9]|1[0-2])-[0-9]{4})$'')', '');

INSERT INTO META03_DD_CONSTRAINTS VALUES ('ND0002', 'DATE', 'A date in YYYY-MM-DD format = Une date au format YYYY-MM-DD',                         
'REGEXP_LIKE (COL++,''^([0-9]{4}-(0[0-9]|1[0-2])-([0-2][0-9]|3[0-1]))$'')', '');

-- Negative Constraints / Contraintes négatives INTRA-COL++ONNE >>>> String Varchar, Char
INSERT INTO META03_DD_CONSTRAINTS VALUES ('NS0001', 'NO_UNNECESSARY_SPACE', 'No unnecessary space = Pas d''espace superflu',                    
'RTRIM(LTRIM(REGEXP_REPLACE(<@COLONNE_ADEF>, ''( ){2,}'', '' ''))) = <@COLONNE_ADEF>' , '');

INSERT INTO META03_DD_CONSTRAINTS VALUES ('NS2500', 'STRING',  'Aplabetic string with space = Lettres de l''alphabet latin avec espace',                       
'REGEXP_LIKE (<@COLONNE_ADEF>,''^[[:alpha:]]+$'')', '');

INSERT INTO META03_DD_CONSTRAINTS VALUES ('NS2505', 'STRING',  'Letters of the Latin alphabet with dashe = Lettres de l''alphabet latin avec tiret',                                            
'REGEXP_LIKE (COL++,''^[[:alpha:]-]+$'')' , '');

INSERT INTO META03_DD_CONSTRAINTS VALUES ('NS2510', 'STRING', 'Letters of the Latin alphabet with space, dash and apostrophe = Lettres de l''alphabet latin avec espace, tiret et apostrophe',      
'REGEXP_LIKE (<@COLONNE_ADEF>,''^[[:alpha:]-'''' ]+$'')' , '');

INSERT INTO META03_DD_CONSTRAINTS VALUES ('NS2515', 'STRING', 'Letters of the Latin alphabet with space and dash = Lettres de l''alphabet latin avec espace et tiret',      
'REGEXP_LIKE (COL++,''^[[:alpha:]- ]+$'')' , '');

INSERT INTO META03_DD_CONSTRAINTS VALUES ('NS2600', 'STRING', 'Uppercase string = Une chaine de caractères majuscules',                                              
'<@COLONNE_ADEF> = UPPER(<@COLONNE_ADEF>)' , '');

INSERT INTO META03_DD_CONSTRAINTS VALUES ('NS2605', 'STRING', 'A string of characters with only the first one in capital letter = Une chaine de caractères avec seulement la première en lettre majuscule',  
'<@COLONNE_ADEF> = INITCAP(<@COLONNE_ADEF>)' , '');

INSERT INTO META03_DD_CONSTRAINTS VALUES ('NS2700', 'STRING', 'No repetition of more than 3 characters = Pas de répétition de plus de 3 caractères', 
'UPPER(REGEXP_COUNT(UPPER(<@COLONNE_ADEF>), ''A{3,}|B{3,}|C{3,}|D{3,}|E{3,}|F{3,}|G{3,}|H{3,}|I{3,}|J{3,}|K{3,}|L{3,}|M{3,}|N{3,}|O{3,}|P{3,}|Q{3,}|R{3,}|S{3,}|T{3,}|U{3,}|V{3,}|W{3,}|X{3,}|Y{3,}|Z{3,}|É{3,}|È{3,}'')) < 1' , '');

INSERT INTO META03_DD_CONSTRAINTS VALUES ('NS2705', 'STRING', 'No repetition of more than 4 characters = Pas de répétition de plus de 4 caractères', 
'UPPER(REGEXP_COUNT(UPPER(COL++), ''A{4,}|B{4,}|C{4,}|D{4,}|E{4,}|F{4,}|G{4,}|H{4,}|I{4,}|J{4,}|K{4,}|L{4,}|M{4,}|N{4,}|O{4,}|P{4,}|Q{4,}|R{4,}|S{4,}|T{4,}|U{4,}|V{4,}|W{4,}|X{4,}|Y{4,}|Z{4,}|É{4,}|È{4,}'')) < 1' , '');

INSERT INTO META03_DD_CONSTRAINTS VALUES ('NS2710', 'STRING', 'No repetition of more than 5 characters = Pas de répétition de plus de 5 caractères', 
'UPPER(REGEXP_COUNT(UPPER(COL++), ''A{5,}|B{5,}|C{5,}|D{5,}|E{5,}|F{5,}|G{5,}|H{5,}|I{5,}|J{5,}|K{5,}|L{5,}|M{5,}|N{5,}|O{5,}|P{5,}|Q{5,}|R{5,}|S{5,}|T{5,}|U{5,}|V{5,}|W{5,}|X{5,}|Y{5,}|Z{5,}|É{5,}|È{5,}'')) < 1' , '');


INSERT INTO META03_DD_CONSTRAINTS VALUES ('NS3000', 'CIVILITY_PERSON', 'Civility in French, uppercase = La civilité en français, majuscule',                               
'REGEXP_LIKE (COL++,''MADAME|MADEMOISELLE|MONSIEUR'')', '');

INSERT INTO META03_DD_CONSTRAINTS VALUES ('NS3001', 'CIVILITY_PERSON', 'Civility in French, the first letter is in capital letters = La civilité en français, la première lettre est en majuscule',  
'REGEXP_LIKE (<@COLONNE_ADEF>,''Madame|Mademoiselle|Monsieur'')', '');

INSERT INTO META03_DD_CONSTRAINTS VALUES ('NS3002', 'CIVILITY_PERSON', 'Civility in French, uppercase = La civilité en français, majuscule',                               
'REGEXP_LIKE (COL++,''MADAME|MONSIEUR'')', '');

INSERT INTO META03_DD_CONSTRAINTS VALUES ('NS3003', 'CIVILITY_PERSON', 'Civility in French, the first letter is in capital letters = La civilité en français, la première lettre est en majuscule',  
'REGEXP_LIKE (COL++,''Madame|Monsieur'')', '');

INSERT INTO META03_DD_CONSTRAINTS VALUES ('NS3004', 'CIVILITY_PERSON', 'Civility in French, uppercase = La civilité en français, majuscule',                               
'REGEXP_LIKE (COL++,''MME|MLLE|MR'')', '');

INSERT INTO META03_DD_CONSTRAINTS VALUES ('NS3005', 'CIVILITY_PERSON', 'Civility in French, the first letter is in capital letters = La civilité en français, la première lettre est en majuscule',  
'REGEXP_LIKE (COL++,''Mme|Mlle|Mr'')', '');

INSERT INTO META03_DD_CONSTRAINTS VALUES ('N3006', 'CIVILITY_PERSON', 'Civility in French, uppercase = La civilité en français, majuscule',                               
'REGEXP_LIKE (COL++,''MME|MR'')', '');

INSERT INTO META03_DD_CONSTRAINTS VALUES ('NS3007', 'CIVILITY_PERSON', 'Civility in French, the first letter is in capital letters = La civilité en français, la première lettre est en majuscule',  
'REGEXP_LIKE (COL++,''Mme|Mr'')', '');

INSERT INTO META03_DD_CONSTRAINTS VALUES ('NS3100', 'GENDER_SEX', 'The gender-sex in French, uppercase = Le genre-sexe en français, majuscule',                               
'REGEXP_LIKE (COL++,''FEMELLE|MALE'')', '');
INSERT INTO META03_DD_CONSTRAINTS VALUES ('NS3101', 'GENDER_SEX', 'The gender-sex in French, Upper1 = Le genre-sexe en français, Majuscule1',                               
'REGEXP_LIKE (COL++,''Femelle|Male'')', '');
INSERT INTO META03_DD_CONSTRAINTS VALUES ('NS3102', 'GENDER_SEX', 'The gender-sex in French, Upper1 = Le genre-sexe en français, Majuscule1',                               
'REGEXP_LIKE (<@COLONNE_ADEF>,''F|M'')', '');

--INSERT INTO META03_DD_CONSTRAINTS VALUES ('NS3500', 'BLOOD_GROUP', 'A blood group = Un groupe sanguin',                               
--'REGEXP_LIKE (COL++,''(A|B|AB|O)(\+|\-)'')', '');
--INSERT INTO META03_DD_CONSTRAINTS VALUES ('NS3500', 'BLOOD_GROUP', 'A blood group = Un groupe sanguin',                               
--'REGEXP_LIKE (COL++,''A\+|A\-|B\+|B\-|AB\+|AB\-|O\+|O\-'')', ''); /(A|B|AB|O)[+-]/

INSERT INTO META03_DD_CONSTRAINTS VALUES ('NS3500', 'BLOOD_GROUP', 'A blood group = Un groupe sanguin',                               
'REGEXP_LIKE (COL++,''^(A|B|AB|O)[+-]$'')', ''); 

INSERT INTO META03_DD_CONSTRAINTS VALUES ('NS3900', 'CLIENT_CATEGORY', 'Client Categories = Catégories des clients',          
'REGEXP_LIKE (COL++,''1|2|3|4|5|6|7|8|9'')', '');

INSERT INTO META03_DD_CONSTRAINTS VALUES ('NS4000', 'WAYNUMBER_ADDRESS', 'The number in the way in the address = Le numéro dans la voie dans l''adresse', 
'REGEXP_LIKE (COL++,''^[0-9]+( BIS| TER)?$'')', '');
INSERT INTO META03_DD_CONSTRAINTS VALUES ('NS4001', 'WAYNUMBER_ADDRESS', 'The number in the way in the address = Le numéro dans la voie dans l''adresse', 
'REGEXP_LIKE (<@COLONNE_ADEF>,''^[0-9]+( Bis| Ter)?$'')', '');
INSERT INTO META03_DD_CONSTRAINTS VALUES ('NS4010', 'WAYNAME_ADDRESS', 'The name of the way in the address = Le nom de la voie dans l''adresse', 
'REGEXP_LIKE (UPPER(<@COLONNE_ADEF>),''^[RUE|BOULEVARD|AVENUE|QUAI|IMPASSE|PONT|PLACE|SQUARE|ALLEE|ALLÉE|ALLEES|ALLÉES|VOIE|MONTEE|MONTÉE|ESPLANADE|ROUTE|VOIRIE|CITE|CITÉ|CHEMIN|PARVIS][a-zA-Z-'''' ]+$'')' , '');
INSERT INTO META03_DD_CONSTRAINTS VALUES ('NS4011', 'WAYNAME_ADDRESS', 'The name of the way in the address = Le nom de la voie dans l''adresse', 
'REGEXP_LIKE (UPPER(COL++),''^[Rue|Boulevard|Avenue|Quai|Impasse|Pont|Place|Square|Allee|Allée|Allees|Allées|Voie|Montee|Montée|Esplanade|Route|Voirie|Cite|Cité|Chemin|Parvis][a-zA-Z-'''' ]+$'')' , '');

INSERT INTO META03_DD_CONSTRAINTS VALUES ('NS4050', 'ZIPCODEFR', 'The French zip code = Le code postal français',                         
'REGEXP_LIKE (F16_TOWARDS_NUMBER(<@COLONNE_ADEF>),''^(\d){5}$'')', '');

INSERT INTO META03_DD_CONSTRAINTS VALUES ('NS5000', 'EMAIL', 'An email address = Une adresse mail',                         
'REGEXP_LIKE (<@COLONNE_ADEF>,''^[A-Za-z]+[A-Za-z0-9.]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,4}$'')', '');

INSERT INTO META03_DD_CONSTRAINTS VALUES ('NS5100', 'TELEPHONE_FR_INTERNATIONAL', 'A French telephone with international country code = Un téléphone français avec l''indicatif de l''international',                         
'REGEXP_LIKE (<@COLONNE_ADEF>,''^(([\+]|[0]{2})([3]{2}))[1-9]([0-9]{8})$'')', '');

INSERT INTO META03_DD_CONSTRAINTS VALUES ('NS5101', 'TELEPHONE_FR_NATIONAL', 'A French telephone without international country code = Un téléphone français sans l''indicatif de l''international',                         
'REGEXP_LIKE (<@COLONNE_ADEF>,''^[0][1-9][0-9]{8}$'')', ''); --'^[0][1-9][0-9]{8}$',

INSERT INTO META03_DD_CONSTRAINTS VALUES ('NSTNI01', 'TELEPHONE_TN_INTERNATIONAL', 'A Tunisian telephone international',
'REGEXP_LIKE (COL++,''^(([\+]|[0]{2})([2]{1}[1]{1}[6]{1}))[0-9]{8}$'')', '');


-- Negative Constraints / Contraintes négatives INTER-COL++ONNES >>>> String Varchar, Char
INSERT INTO META03_DD_CONSTRAINTS VALUES ('NS9200', 'INTER_COLUMNS', 'Conjonction/disjonction (AND/OR) de plusieurs conditions sur deux COLonnes A et B',                         
'( (<@COLONNE_ADEF_1> = ''Madame'' AND <@COLONNE_ADEF_2> IN (''2'', ''4'', ''6'')) OR (<@COLONNE_ADEF_1> = ''Monsieur'' AND <@COLONNE_ADEF_2> IN (''1'', ''3'', ''5'')) )', '');

INSERT INTO META03_DD_CONSTRAINTS VALUES ('NS9201', 'INTER_COL++UMNS', 'Conjonction/disjonction (AND/OR) de plusieurs conditions sur deux COL++onnes A et B',                         
'( <@COLONNE_ADEF_1>  < <@COLONNE_ADEF_2>  )', '');

INSERT INTO META03_DD_CONSTRAINTS VALUES ('NS9300', 'INTER_COL++UMNS', 'Conjonction/disjonction (AND/OR) de plusieurs conditions sur plusieurs COL++onnes A et B',                         
'( NOT (<@COLONNE_ADEF_1>  = ''Mademoiselle'' AND <@COLONNE_ADEF_2>  = ''AFRICAINE'' AND <@COLONNE_ADEF_3>  = ''PARIS'') )', '');


-- Positive constraints / Contraintes positives INTRA-COL++ONNE >>>> String Varchar, Char
INSERT INTO META03_DD_CONSTRAINTS VALUES ('P0001', 'Unnecessary spaces', 'Function for removing superfluous spaces',                         
'RTRIM(LTRIM(REGEXP_REPLACE(COL++, ''( ){2,}'', '' '')))' , '');

COMMIT;
SELECT * FROM META03_DD_CONSTRAINTS;

-- ==== MFB =======================================================================================================================
-- META04_DD_DATASTRUCTURES1;		-- META04_DD_DATASTRUCTURES2;
-- ==== MFB =======================================================================================================================
-- Création d'un dictionnaire des données pour gérer les strucrures des données    ---- Début
-- META04_DD_DATASTRUCTURES1;	Contraintes INTRACOLONNE
-- META04_DD_DATASTRUCTURES2;	Contraintes INTERCOLONNES
-- ==== MFB =======================================================================================================================

DROP TABLE META04_DD_DATASTRUCTURES1; 
CREATE TABLE META04_DD_DATASTRUCTURES1(DATASOURCENAME VARCHAR2(50), COLUMNIDENTIFIER VARCHAR2(50), 
COLUMNNAME VARCHAR2(50), DATATYPE VARCHAR2(50), DATALENGTH NUMBER, 
NEGCONSTRAINTSINTRACOL VARCHAR2(50), DOUBLEALLOWED VARCHAR2(50), POSCONSTRAINTSINTRACOL VARCHAR2(50));

INSERT INTO META04_DD_DATASTRUCTURES1 VALUES ('CLIENTS', 'COL01', 'CODCLI', 'VARCHAR2',15, 'NS0001', 'No', 'No_Unnecessary_Space(COL)');
INSERT INTO META04_DD_DATASTRUCTURES1 VALUES ('CLIENTS', 'COL02', 'CIVCLI', 'VARCHAR2',12, 'NS3001', 'Yes', 'F57_Civility_Correct(COL,''1_INITCAP'',''FRENCH'')');
INSERT INTO META04_DD_DATASTRUCTURES1 VALUES ('CLIENTS', 'COL03', 'NOMCLI', 'VARCHAR2',50, 'NS2510-NS2600-NS2700', 'Yes', 'F51_NamePerson_Correct(COL, ''UPPER'')');
INSERT INTO META04_DD_DATASTRUCTURES1 VALUES ('CLIENTS', 'COL04', 'PRENCLI', 'VARCHAR2',50, 'NS2500-NS2605-NS2700', 'Yes', 'F52_FirstNamePerson_Correct(COL,''Initcap'')');
INSERT INTO META04_DD_DATASTRUCTURES1 VALUES ('CLIENTS', 'COL05', 'CATCLI', 'NUMBER',2, 'NS3900', 'Yes', 'F59_Category_Correct(COL,''1'')');
INSERT INTO META04_DD_DATASTRUCTURES1 VALUES ('CLIENTS', 'COL06', 'ADNCLI', 'VARCHAR2',10, 'NS4001', 'Yes', '');
INSERT INTO META04_DD_DATASTRUCTURES1 VALUES ('CLIENTS', 'COL07', 'ADRCLI', 'VARCHAR2',50, 'NS2600-NS2700-NS4010', 'Yes', '');
INSERT INTO META04_DD_DATASTRUCTURES1 VALUES ('CLIENTS', 'COL08', 'CPCLI', 'VARCHAR2',5, 'NS4050', 'Yes', '');
INSERT INTO META04_DD_DATASTRUCTURES1 VALUES ('CLIENTS', 'COL09', 'VILCLI', 'VARCHAR2',50, 'NS2510-NS2600-NS2700', 'Yes', 'F54_NameCity_Correct(COL, ''UPPER'')');
INSERT INTO META04_DD_DATASTRUCTURES1 VALUES ('CLIENTS', 'COL10', 'PAYSCLI', 'VARCHAR2',50, 'NS2515-NS2600-NS2700', 'Yes', 'F53_NameCountry_Correct(COL, ''UPPER'')');
INSERT INTO META04_DD_DATASTRUCTURES1 VALUES ('CLIENTS', 'COL11', 'MAILCLI', 'VARCHAR2',50, 'NS0001-NS5000', 'No', 'F50_Mail_Correct(COL)');
INSERT INTO META04_DD_DATASTRUCTURES1 VALUES ('CLIENTS', 'COL12', 'TELCLI', 'VARCHAR2',15, 'NS5100', 'Yes', '');
INSERT INTO META04_DD_DATASTRUCTURES1 VALUES ('CLIENTS', 'COL13', 'DATNAISCLI', 'DATE',10, 'ND0001', 'Yes', '');
INSERT INTO META04_DD_DATASTRUCTURES1 VALUES ('CLIENTS', 'COL14', 'DPREMCONTACTCLI', 'DATE',10, 'ND0002', 'Yes', '');
INSERT INTO META04_DD_DATASTRUCTURES1 VALUES ('CLIENTS', 'COL15', 'OBSCLI', 'VARCHAR2',200, 'NS0001-NS2600', 'Yes', '');
INSERT INTO META04_DD_DATASTRUCTURES1 VALUES ('CLIENTS', 'COL16', 'REMCLI', 'VARCHAR2',200, 'NS0001-NS2600', 'Yes', '');
INSERT INTO META04_DD_DATASTRUCTURES1 VALUES ('CLIENTS', 'COL17', 'GENRECLI', 'VARCHAR2',1, 'NS3102', 'Yes', 'F58_Gender_Correct(COL,''2_UPPER'',''ENGL-FREN'')');
INSERT INTO META04_DD_DATASTRUCTURES1 VALUES ('CLIENTS', 'COL18', 'GSCLI', 'VARCHAR2',3, 'NS3500', 'Yes', 'F56_BloodGroup_Correct(COL)');
INSERT INTO META04_DD_DATASTRUCTURES1 VALUES ('CLIENTS', 'COL19', 'KEYWORDSCLI', 'VARCHAR2',300, 'NS0001-NS2600', 'Yes', '');
INSERT INTO META04_DD_DATASTRUCTURES1 VALUES ('ARTICLES', 'COL01', 'REFART ', 'VARCHAR2',15, '', 'No', '');
INSERT INTO META04_DD_DATASTRUCTURES1 VALUES ('ARTICLES', 'COL02', 'NOMART', 'VARCHAR2',50, '', 'Yes', '');
INSERT INTO META04_DD_DATASTRUCTURES1 VALUES ('ARTICLES', 'COL03', 'PVART', 'NUMBER',10, '', 'Yes', '');
INSERT INTO META04_DD_DATASTRUCTURES1 VALUES ('ARTICLES', 'COL04', 'QSART', 'NUMBER',5, '', 'Yes', '');
INSERT INTO META04_DD_DATASTRUCTURES1 VALUES ('ARTICLES', 'COL05', 'PAART', 'NUMBER',10, '', 'Yes', '');
INSERT INTO META04_DD_DATASTRUCTURES1 VALUES ('COMMANDES', 'COL01', 'NUMCOM', 'VARCHAR2',15, '', 'Yes', '');
INSERT INTO META04_DD_DATASTRUCTURES1 VALUES ('COMMANDES', 'COL02', 'CODCLI', 'VARCHAR2',15, '', 'Yes', '');
INSERT INTO META04_DD_DATASTRUCTURES1 VALUES ('COMMANDES', 'COL03', 'DATCOM', 'DATE',10, '', 'Yes', '');
INSERT INTO META04_DD_DATASTRUCTURES1 VALUES ('DETAILCOM', 'COL01', 'NUMCOM', 'VARCHAR2',15, '', 'Yes', '');
INSERT INTO META04_DD_DATASTRUCTURES1 VALUES ('DETAILCOM', 'COL02', 'REFART ', 'VARCHAR2',15, '', 'Yes', '');
INSERT INTO META04_DD_DATASTRUCTURES1 VALUES ('DETAILCOM', 'COL03', 'PUART', 'NUMBER',10, '', 'Yes', '');
INSERT INTO META04_DD_DATASTRUCTURES1 VALUES ('DETAILCOM', 'COL04', 'PUART', 'NUMBER',10, '', 'Yes', '');
INSERT INTO META04_DD_DATASTRUCTURES1 VALUES ('DETAILCOM', 'COL05', 'PUART', 'NUMBER',10, '', 'Yes', '');
COMMIT;
SELECT * FROM META04_DD_DATASTRUCTURES1;


DROP TABLE META04_DD_DATASTRUCTURES2; 
CREATE TABLE META04_DD_DATASTRUCTURES2(DATASOURCENAME VARCHAR2(50), COLUMNSA VARCHAR2(200), NEGCONSTRAINTSINTERCOL VARCHAR2(200));
INSERT INTO META04_DD_DATASTRUCTURES2 VALUES ('CLIENTS', 'COL02_CIVCLI,COL05_CATCLI', 'NS9200');
INSERT INTO META04_DD_DATASTRUCTURES2 VALUES ('CLIENTS', 'COL13_DATNAISCLI,COL14_DPREMCONTACTCLI', 'NS9201');
INSERT INTO META04_DD_DATASTRUCTURES2 VALUES ('CLIENTS', 'COL02_CIVCLI,COL03_NOMCLI,COL09_VILCLI', 'NS9300');
INSERT INTO META04_DD_DATASTRUCTURES2 VALUES ('ARTICLES', 'COL01_REFART,COL02_NOMART', 'NS9700');
COMMIT;
SELECT * FROM META04_DD_DATASTRUCTURES2;

-- ==== MFB =======================================================================================================================
-- Création d'un dictionnaire des données pour gérer les strucrures des données    ---- Fin
-- META04_DD_DATASTRUCTURES1;	Contraintes INTRACOLONNE
-- META04_DD_DATASTRUCTURES2;	Contraintes INTERCOLONNES
-- ==== MFB =======================================================================================================================







-- ==== MFB =======================================================================================================================
-- METAxy
-- Les différentes codifications des valeurs manquantes (MISSING VALUES) :
-- Le séparateur ; ...

COMMIT;
--SELECT * FROM METAxy;
-- ==== MFB =======================================================================================================================



-- ==== MFB =======================================================================================================================
-- METAxy
-- Les différentes codifications des valeurs manquantes (MISSING VALUES) :
-- Le séparateur ; ...

COMMIT;
--SELECT * FROM METAxy;
-- ==== MFB =======================================================================================================================


-- ==== MFB =======================================================================================================================
-- META TABLES NECESAIRES POUR L'EXECUTION DE CERTAINES PROCEDURES
-- -- +++ Dépendances sémantiques entre colonnes : Dépendance Fonctionnelle (DF) 
DROP TABLE LISTAVERIFIER_DF0; 	CREATE TABLE LISTAVERIFIER_DF0 (COL1 VARCHAR2(10), COL2 VARCHAR2(10)); INSERT INTO  LISTAVERIFIER_DF0 VALUES (NULL, NULL);
DROP TABLE LISTAVERIFIER_DF1; 	CREATE TABLE LISTAVERIFIER_DF1 (COL1 VARCHAR2(10), COL2 VARCHAR2(10)); INSERT INTO  LISTAVERIFIER_DF1 VALUES (NULL, NULL);
DROP TABLE VERIFDF;				CREATE TABLE VERIFDF (LEFTCOL VARCHAR2(10), NBROCC NUMBER);            INSERT INTO  VERIFDF VALUES (NULL, NULL);
COMMIT;
-- ==== MFB =======================================================================================================================


-- ==== MFB =======================================================================================================================
-- DR : Data Reports --->>> METAxy_DR_nomtab
-- Les données (les méta-données) dont l'outil de détection et de correction des anomalies SmartDATA construit 
-- pour réaliser la gestion de la qualité des données
-- ==== MFB =======================================================================================================================
-- ==== MFB =======================================================================================================================
-- META50_DR_ANOMALYSELECTUPDATE Stockage des ordres SQL SELECT_UPDATE_OPERATIONS
DROP TABLE META50_DR_ANOMALYSELECTUPDATE; 
CREATE TABLE META50_DR_ANOMALYSELECTUPDATE(SELECT_UPDATE_OPERATIONS VARCHAR2(2000));

-- META51_DR_GOLBALDIAGNOSTICS;
-- Diagonostiquer /profiler
DROP TABLE META51_DR_GOLBALDIAGNOSTICS;
CREATE TABLE META51_DR_GOLBALDIAGNOSTICS 
(DIAGNOSTICDATE DATE, USERNAME VARCHAR2(50), NOMTAB VARCHAR2(50), COLNAME VARCHAR2(50), 
NBRVALUES NUMBER, NBRINVALIDVALUES NUMBER, NBRVALIDVALUES NUMBER, NBRMISSINGVALUES NUMBER, NBREXISTINGVALUES NUMBER, 
NBRANOMALIES1 NUMBER, NBRANOMALIES2 NUMBER, NBRANOMALIES3 NUMBER, NBRANOMALIESD NUMBER, DISTINCTVALUES NUMBER, 
INVALIDValuesRate  NUMBER, VALIDValuesRate    NUMBER, MissingValuesRate  NUMBER, ExistingValuesRate NUMBER, AnomaliesRate      NUMBER,
LISTOFCONSTRAINTS VARCHAR2(2000),
NBRUPPER NUMBER, NBRLOWER NUMBER, NBRINITCAP NUMBER,
LGMIN NUMBER, LGMAX NUMBER, LGAVG NUMBER);

-- ==== MFB =======================================================================================================================
-- Liste des continents du monde
DROP TABLE META0001_DDVS_CONTINENT ;
CREATE TABLE META0001_DDVS_CONTINENT (IDCONTINENT VARCHAR2(20), NOMCONTINENTFRANCAIS VARCHAR2(50), NOMCONTINENTANGLAIS VARCHAR2(50));
INSERT INTO META0001_DDVS_CONTINENT VALUES ('CONTINENT01', 'AFRIQUE', 'AFRICA');
INSERT INTO META0001_DDVS_CONTINENT VALUES ('CONTINENT02', 'AMERIQUE', 'AMERICA');
--INSERT INTO META0001_DDVS_CONTINENT VALUES ('CONTINENT03', 'AMÉRIQUE', 'AMERICA');
INSERT INTO META0001_DDVS_CONTINENT VALUES ('CONTINENT04', 'ANTARCTIQUE', 'ANTARCTICA');
INSERT INTO META0001_DDVS_CONTINENT VALUES ('CONTINENT05', 'ASIE', 'ASIA');
INSERT INTO META0001_DDVS_CONTINENT VALUES ('CONTINENT06', 'AUSTRALIE', 'AUSTRALIA');
INSERT INTO META0001_DDVS_CONTINENT VALUES ('CONTINENT07', 'EUROPE', 'EUROPE');
INSERT INTO META0001_DDVS_CONTINENT VALUES ('CONTINENT08', 'OCEANIE', 'OCEANIA');
INSERT INTO META0001_DDVS_CONTINENT VALUES ('CONTINENT09', 'OCÉANIE', 'OCEANIA');
COMMIT;

-- ==== MFB =======================================================================================================================
-- Liste des pays du monde pour tous les continents
DROP TABLE META0002_DDVS_PAYSCONTINENT ;
CREATE TABLE META0002_DDVS_PAYSCONTINENT (IDPAYS VARCHAR2(20), NOMPAYSFRANCAIS VARCHAR2(50), NOMPAYSANGLAIS VARCHAR2(50), CONTINENT VARCHAR2(20),
CONSTRAINT PK_PAYSCONTINENT  PRIMARY KEY (IDPAYS));

INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('EUROPE001', 'ALBANIE', 'ALBANIA', 'EUROPE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('EUROPE002', 'ALLEMAGNE', 'GERMANY', 'EUROPE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('EUROPE003', 'ANDORRE', 'ANDORRA', 'EUROPE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('EUROPE004', 'AUTRICHE', 'AUSTRIA', 'EUROPE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('EUROPE005', 'BELGIQUE', 'BELGIUM', 'EUROPE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('EUROPE006', 'BIÉLORUSSIE', 'BELARUS', 'EUROPE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('EUROPE007', 'BOSNIE-HERZÉGOVINE', 'BOSNIA-AND-HERZEGOVINA', 'EUROPE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('EUROPE008', 'BULGARIE', 'BULGARIA', 'EUROPE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('EUROPE009', 'CHYPRE', 'CYPRUS', 'EUROPE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('EUROPE010', 'CROATIE', 'CROATIA', 'EUROPE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('EUROPE011', 'DANEMARK', 'DENMARK', 'EUROPE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('EUROPE012', 'ESPAGNE', 'SPAIN', 'EUROPE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('EUROPE013', 'ESTONIE', 'ESTONIA', 'EUROPE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('EUROPE014', 'FINLANDE', 'FINLAND', 'EUROPE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('EUROPE015', 'FRANCE', 'FRANCE', 'EUROPE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('EUROPE016', 'GRÈCE', 'GREECE', 'EUROPE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('EUROPE017', 'HONGRIE', 'HUNGARY', 'EUROPE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('EUROPE018', 'IRLANDE', 'IRELAND', 'EUROPE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('EUROPE019', 'ISLANDE', 'ICELAND', 'EUROPE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('EUROPE020', 'ITALIE', 'ITALY', 'EUROPE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('EUROPE021', 'KOSOVO', 'KOSOVO', 'EUROPE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('EUROPE022', 'LETTONIE', 'LATVIA', 'EUROPE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('EUROPE023', 'LIECHTENSTEIN', 'LIECHTENSTEIN', 'EUROPE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('EUROPE024', 'LITUANIE', 'LITHUANIA', 'EUROPE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('EUROPE025', 'LUXEMBOURG', 'LUXEMBOURG', 'EUROPE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('EUROPE026', 'MACÉDOINE-DU-NORD', 'NORTHERN-MACEDONIA', 'EUROPE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('EUROPE027', 'MALTE', 'MALTA', 'EUROPE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('EUROPE028', 'MOLDAVIE', 'MOLDOVA', 'EUROPE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('EUROPE029', 'MONACO', 'MONACO', 'EUROPE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('EUROPE030', 'MONTÉNÉGRO', 'MONTENEGRO', 'EUROPE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('EUROPE031', 'NORVÈGE', 'NORWAY', 'EUROPE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('EUROPE032', 'PAYS-BAS', 'THE-NETHERLANDS', 'EUROPE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('EUROPE033', 'POLOGNE', 'POLAND', 'EUROPE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('EUROPE034', 'PORTUGAL', 'PORTUGAL', 'EUROPE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('EUROPE035', 'RÉPUBLIQUE-TCHÈQUE', 'CZECH REPUBLIC', 'EUROPE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('EUROPE036', 'ROUMANIE', 'ROMANIA', 'EUROPE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('EUROPE037', 'ROYAUME-UNI', 'UNITED-KINGDOM', 'EUROPE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('EUROPE038', 'SAINT-MARIN', 'SAN MARINO', 'EUROPE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('EUROPE039', 'SERBIE', 'SERBIA', 'EUROPE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('EUROPE040', 'SLOVAQUIE', 'SLOVAKIA', 'EUROPE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('EUROPE041', 'SLOVÉNIE', 'SLOVENIA', 'EUROPE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('EUROPE042', 'SUÈDE', 'SWEDEN', 'EUROPE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('EUROPE043', 'SUISSE', 'SWITZERLAND', 'EUROPE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('EUROPE044', 'TURQUIE', 'TURKEY', 'EUROPE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('EUROPE045', 'UKRAINE', 'UKRAINE', 'EUROPE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('EUROPE046', 'VATICAN', 'VATICAN', 'EUROPE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('AFRIQUE001', 'AFRIQUE-DU-SUD', 'SOUTH-AFRICA', 'AFRIQUE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('AFRIQUE002', 'ALGÉRIE', 'ALGERIA', 'AFRIQUE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('AFRIQUE003', 'ANGOLA', 'ANGOLA', 'AFRIQUE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('AFRIQUE004', 'BÉNIN', 'BENIN', 'AFRIQUE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('AFRIQUE005', 'BOTSWANA', 'BOTSWANA', 'AFRIQUE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('AFRIQUE006', 'BURKINA-FASO', 'BURKINA-FASO', 'AFRIQUE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('AFRIQUE007', 'BURUNDI', 'BURUNDI', 'AFRIQUE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('AFRIQUE008', 'CAMEROUN', 'CAMEROON', 'AFRIQUE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('AFRIQUE009', 'CAP-VERT', 'CAPE-VERDE', 'AFRIQUE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('AFRIQUE010', 'COMORES', 'COMOROS', 'AFRIQUE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('AFRIQUE011', 'CÔTE-D’IVOIRE', 'IVORY-COAST', 'AFRIQUE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('AFRIQUE012', 'DJIBOUTI', 'DJIBOUTI', 'AFRIQUE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('AFRIQUE013', 'ÉGYPTE', 'EGYPT', 'AFRIQUE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('AFRIQUE014', 'ÉRYTHRÉE', 'ERITREA', 'AFRIQUE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('AFRIQUE015', 'ESWATINI', 'ESWATINI', 'AFRIQUE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('AFRIQUE016', 'ÉTHIOPIE', 'ETHIOPIA', 'AFRIQUE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('AFRIQUE017', 'GABON', 'GABON', 'AFRIQUE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('AFRIQUE018', 'GAMBIE', 'GAMBIA', 'AFRIQUE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('AFRIQUE019', 'GHANA', 'GHANA', 'AFRIQUE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('AFRIQUE020', 'GUINÉE', 'GUINEA', 'AFRIQUE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('AFRIQUE021', 'GUINÉE-ÉQUATORIALE', 'EQUATORIAL-GUINEA', 'AFRIQUE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('AFRIQUE022', 'GUINÉE-BISSAU', 'GUINEA-BISSAU', 'AFRIQUE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('AFRIQUE023', 'KENYA', 'KENYA', 'AFRIQUE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('AFRIQUE024', 'LESOTHO', 'LESOTHO', 'AFRIQUE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('AFRIQUE025', 'LIBERIA', 'LIBERIA', 'AFRIQUE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('AFRIQUE026', 'LIBYE', 'LIBYA', 'AFRIQUE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('AFRIQUE027', 'MADAGASCAR', 'MADAGASCAR', 'AFRIQUE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('AFRIQUE028', 'MALAWI', 'MALAWI', 'AFRIQUE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('AFRIQUE029', 'MALI', 'MALI', 'AFRIQUE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('AFRIQUE030', 'MAROC', 'MOROCCO', 'AFRIQUE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('AFRIQUE031', 'MAURICE', 'MAURITIUS', 'AFRIQUE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('AFRIQUE032', 'MAURITANIE', 'MAURITANIA', 'AFRIQUE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('AFRIQUE033', 'MOZAMBIQUE', 'MOZAMBIQUE', 'AFRIQUE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('AFRIQUE034', 'NAMIBIE', 'NAMIBIA', 'AFRIQUE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('AFRIQUE035', 'NIGER', 'NIGER', 'AFRIQUE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('AFRIQUE036', 'NIGERIA', 'NIGERIA', 'AFRIQUE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('AFRIQUE037', 'OUGANDA', 'UGANDA', 'AFRIQUE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('AFRIQUE038', 'RÉPUBLIQUE-CENTRAFRICAINE', 'CENTRAL-AFRICAN-REPUBLIC', 'AFRIQUE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('AFRIQUE039', 'RÉPUBLIQUE-DÉMOCRATIQUE-DU-CONGO', 'REPUBLIC-DEMOCRATIC-CONGOLESE-REPUBLIC', 'AFRIQUE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('AFRIQUE040', 'RÉPUBLIQUE-DU-CONGO', 'REPUBLIC-OF-CONGO', 'AFRIQUE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('AFRIQUE041', 'RWANDA', 'RWANDA', 'AFRIQUE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('AFRIQUE042', 'SÃO-TOMÉ-ET-PRINCIPE', 'SÃO-TOMÉ-ET-PRINCIPE', 'AFRIQUE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('AFRIQUE043', 'SÉNÉGAL', 'SENEGAL', 'AFRIQUE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('AFRIQUE044', 'SEYCHELLES', 'SEYCHELLES', 'AFRIQUE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('AFRIQUE045', 'SIERRA-LEONE', 'SIERRA-LEONE', 'AFRIQUE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('AFRIQUE046', 'SOMALIE', 'SOMALIA', 'AFRIQUE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('AFRIQUE047', 'SOUDAN', 'SUDAN', 'AFRIQUE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('AFRIQUE048', 'SOUDAN-DU-SUD', 'SUDAN-DU-SUD', 'AFRIQUE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('AFRIQUE049', 'TANZANIE', 'TANZANIA', 'AFRIQUE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('AFRIQUE050', 'TCHAD', 'CHAD', 'AFRIQUE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('AFRIQUE051', 'TOGO', 'TOGO', 'AFRIQUE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('AFRIQUE052', 'TUNISIE', 'TUNISIA', 'AFRIQUE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('AFRIQUE053', 'ZAMBIE', 'ZAMBIA', 'AFRIQUE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('AFRIQUE054', 'ZIMBABWE', 'ZIMBABWE', 'AFRIQUE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('ASIE001', 'AFGHANISTAN', 'AFGHANISTAN', 'ASIE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('ASIE002', 'ARABIE-SAOUDITE', 'SAUDI-ARABIA', 'ASIE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('ASIE003', 'ARMÉNIE', 'ARMENIA', 'ASIE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('ASIE004', 'AZERBAÏDJAN', 'AZERBAIJAN', 'ASIE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('ASIE005', 'BAHREÏN', 'BAHRAIN', 'ASIE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('ASIE006', 'BANGLADESH', 'BANGLADESH', 'ASIE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('ASIE007', 'BHOUTAN', 'BHOUTAN', 'ASIE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('ASIE008', 'BIRMANIE', 'BURMA', 'ASIE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('ASIE009', 'BRUNEI', 'BRUNEI', 'ASIE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('ASIE010', 'CAMBODGE', 'CAMBODIA', 'ASIE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('ASIE011', 'CHINE', 'CHINA', 'ASIE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('ASIE012', 'CORÉE-DU-NORD', 'NORTH-KOREA', 'ASIE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('ASIE013', 'CORÉE-DU-SUD', 'SOUTH-KOREA', 'ASIE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('ASIE014', 'ÉMIRATS-ARABES-UNIS', 'UNITED-ARAB-EMIRATES', 'ASIE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('ASIE015', 'GÉORGIE', 'GEORGIA', 'ASIE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('ASIE016', 'INDE', 'INDIA', 'ASIE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('ASIE017', 'INDONÉSIE', 'INDONESIA', 'ASIE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('ASIE018', 'IRAK', 'IRAQ', 'ASIE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('ASIE019', 'IRAN', 'IRAN', 'ASIE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('ASIE020', 'ISRAËL', 'ISRAEL', 'ASIE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('ASIE021', 'JAPON', 'JAPAN', 'ASIE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('ASIE022', 'JORDANIE', 'JORDAN', 'ASIE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('ASIE023', 'KAZAKHSTAN', 'KAZAKHSTAN', 'ASIE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('ASIE024', 'KIRGHIZISTAN', 'KIRGHIZISTAN', 'ASIE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('ASIE025', 'KOWEÏT', 'KUWAIT', 'ASIE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('ASIE026', 'LAOS', 'LAOS', 'ASIE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('ASIE027', 'LIBAN', 'LEBANON', 'ASIE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('ASIE028', 'MALAISIE', 'MALAYSIA', 'ASIE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('ASIE029', 'MALDIVES', 'MALDIVES', 'ASIE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('ASIE030', 'MONGOLIE', 'MONGOLIA', 'ASIE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('ASIE031', 'NÉPAL', 'NÉPAL', 'ASIE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('ASIE032', 'OMAN', 'OMAN', 'ASIE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('ASIE033', 'OUZBÉKISTAN', 'UZBEKISTAN', 'ASIE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('ASIE034', 'PAKISTAN', 'PAKISTAN', 'ASIE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('ASIE035', 'PALESTINE', 'PALESTINE', 'ASIE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('ASIE036', 'PHILIPPINES', 'PHILIPPINES', 'ASIE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('ASIE037', 'QATAR', 'QATAR', 'ASIE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('ASIE038', 'SINGAPOUR', 'SINGAPORE', 'ASIE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('ASIE039', 'SRI-LANKA', 'SRI-LANKA', 'ASIE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('ASIE040', 'SYRIE', 'SYRIA', 'ASIE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('ASIE041', 'TADJIKISTAN', 'TADJIKISTAN', 'ASIE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('ASIE042', 'THAÏLANDE', 'THAILAND', 'ASIE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('ASIE043', 'TIMOR-ORIENTAL', 'TIMOR-ORIENTAL', 'ASIE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('ASIE044', 'TURKMÉNISTAN', 'TURKMENISTAN', 'ASIE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('ASIE045', 'TURQUIE', 'TURKEY', 'ASIE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('ASIE046', 'VIÊT-NAM', 'VIÊT-NAM', 'ASIE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('ASIE047', 'YÉMEN', 'YÉMEN', 'ASIE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('AMERIQUE001', 'AMÉRIQUE-CENTRALE', 'CENTRAL-AMERICA', 'AMERIQUE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('AMERIQUE002', 'AMÉRIQUE-DU-SUD', 'SOUTH-AMERICA', 'AMERIQUE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('AMERIQUE003', 'ANGUILLA', 'ANGUILLA', 'AMERIQUE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('AMERIQUE004', 'ANTIGUA-ET-BARBUDA', 'ANTIGUA-AND-BARBUDA', 'AMERIQUE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('AMERIQUE005', 'ARGENTINE', 'ARGENTINA', 'AMERIQUE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('AMERIQUE006', 'ARUBA', 'ARUBA', 'AMERIQUE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('AMERIQUE007', 'BAHAMAS', 'BAHAMAS', 'AMERIQUE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('AMERIQUE008', 'BARBADE', 'BARBADOS', 'AMERIQUE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('AMERIQUE009', 'BELIZE', 'BELIZE', 'AMERIQUE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('AMERIQUE010', 'BERMUDES', 'BERMUDES', 'AMERIQUE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('AMERIQUE011', 'BOLIVIE', 'BOLIVIA', 'AMERIQUE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('AMERIQUE012', 'BONAIRE', 'BONUS', 'AMERIQUE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('AMERIQUE013', 'BRÉSIL', 'BRAZIL', 'AMERIQUE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('AMERIQUE014', 'CANADA', 'CANADA', 'AMERIQUE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('AMERIQUE015', 'CARAÏBES', 'CARIBBEAN', 'AMERIQUE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('AMERIQUE016', 'CHILI', 'CHILE', 'AMERIQUE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('AMERIQUE017', 'COLOMBIE', 'COLOMBIA', 'AMERIQUE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('AMERIQUE018', 'COSTA-RICA', 'COSTA-RICA', 'AMERIQUE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('AMERIQUE019', 'CUBA', 'CUBA', 'AMERIQUE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('AMERIQUE020', 'CURAÇAO', 'CURAÇAO', 'AMERIQUE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('AMERIQUE021', 'DOMINIQUE', 'DOMINIQUE', 'AMERIQUE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('AMERIQUE022', 'ÉQUATEUR', 'ECUADOR', 'AMERIQUE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('AMERIQUE023', 'ÉTATS-UNIS', 'UNITED-STATES', 'AMERIQUE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('AMERIQUE024', 'GÉORGIE-DU-SUD-ET-LES-ÎLES-SANDWICH-DU-SUD', 'SOUTH-GEORGIA-AND-THE-SOUTH-SANDWICH-ISLANDS', 'AMERIQUE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('AMERIQUE025', 'GRENADE', 'GRENADA', 'AMERIQUE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('AMERIQUE026', 'GROENLAND', 'GROENLAND', 'AMERIQUE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('AMERIQUE027', 'GUADELOUPE', 'GUADELOUPE', 'AMERIQUE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('AMERIQUE028', 'GUATEMALA', 'GUATEMALA', 'AMERIQUE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('AMERIQUE029', 'GUYANA', 'GUYANA', 'AMERIQUE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('AMERIQUE030', 'GUYANE', 'GUYANA', 'AMERIQUE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('AMERIQUE031', 'HAÏTI', 'HAITI', 'AMERIQUE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('AMERIQUE032', 'HONDURAS', 'HONDURAS', 'AMERIQUE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('AMERIQUE033', 'ÎLES-CAÏMANS', 'CAYMAN-ISLANDS', 'AMERIQUE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('AMERIQUE034', 'ÎLES-TURQUES-ET-CAÏQUES', 'TURKISH-AND-CAICOS-ISLANDS', 'AMERIQUE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('AMERIQUE035', 'ÎLES-VIERGES-BRITANNIQUES', 'BRITISH-VIRGIN-ISLANDS', 'AMERIQUE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('AMERIQUE036', 'ÎLES-VIERGES-DES-ÉTATS-UNIS', 'UNITED-STATES-VIRGIN-ISLANDS', 'AMERIQUE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('AMERIQUE037', 'JAMAÏQUE', 'JAMAICA', 'AMERIQUE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('AMERIQUE038', 'MALOUINES', 'MALOUINES', 'AMERIQUE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('AMERIQUE039', 'MARTINIQUE', 'MARTINIQUE', 'AMERIQUE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('AMERIQUE040', 'MEXIQUE', 'MEXICO', 'AMERIQUE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('AMERIQUE041', 'MONTSERRAT', 'MONTSERRAT', 'AMERIQUE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('AMERIQUE042', 'NICARAGUA', 'NICARAGUA', 'AMERIQUE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('AMERIQUE043', 'PANAMA', 'PANAMA', 'AMERIQUE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('AMERIQUE044', 'PARAGUAY', 'PARAGUAY', 'AMERIQUE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('AMERIQUE045', 'PÉROU', 'PERU', 'AMERIQUE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('AMERIQUE046', 'PORTO-RICO', 'PORTO-RICO', 'AMERIQUE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('AMERIQUE047', 'RÉPUBLIQUE-DOMINICAINE', 'DOMINICAN-REPUBLIC', 'AMERIQUE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('AMERIQUE048', 'SABA', 'SABA', 'AMERIQUE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('AMERIQUE049', 'SAINT-BARTHÉLEMY', 'SAINT-BARTHÉLEMY', 'AMERIQUE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('AMERIQUE050', 'SAINT-CHRISTOPHE-ET-NIÉVÈS', 'SAINT-CHRISTOPHER-AND-NEVIS', 'AMERIQUE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('AMERIQUE051', 'SAINTE-LUCIE', 'SAINTE-LUCIE', 'AMERIQUE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('AMERIQUE052', 'SAINT-EUSTACHE', 'SAINT-EUSTACHE', 'AMERIQUE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('AMERIQUE053', 'SAINT-MARTIN', 'SAINT-MARTIN', 'AMERIQUE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('AMERIQUE054', 'SAINT-MARTIN', 'SAINT-MARTIN', 'AMERIQUE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('AMERIQUE055', 'SAINT-PIERRE-ET-MIQUELON', 'SAINT-PIERRE-ET-MIQUELON', 'AMERIQUE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('AMERIQUE056', 'SAINT-VINCENT-ET-LES-GRENADINES', 'SAINT-VINCENT-AND-THE-GRENADINES', 'AMERIQUE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('AMERIQUE057', 'SALVADOR', 'SALVADOR', 'AMERIQUE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('AMERIQUE058', 'SURINAME', 'SURINAME', 'AMERIQUE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('AMERIQUE059', 'TRINITÉ-ET-TOBAGO', 'TRINIDAD-AND-TOBAGO', 'AMERIQUE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('AMERIQUE060', 'URUGUAY', 'URUGUAY', 'AMERIQUE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('AMERIQUE061', 'VENEZUELA', 'VENEZUELA', 'AMERIQUE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('AUSTRALIE001', 'AUSTRALIE‎', 'AUSTRALIA', 'AUSTRALIE-OCEANIE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('AUSTRALIE002', 'ÉTATS-FÉDÉRÉS-DE-MICRONÉSIE‎', 'FEDERATED-STATES-OF-MICRONESIA', 'AUSTRALIE-OCEANIE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('AUSTRALIE003', 'FIDJI‎', 'FIDJI', 'AUSTRALIE-OCEANIE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('AUSTRALIE004', 'ÎLES-COOK', 'COOK-ISLANDS', 'AUSTRALIE-OCEANIE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('AUSTRALIE005', 'ÎLES-MARSHALL‎', 'MARSHALL-ISLANDS', 'AUSTRALIE-OCEANIE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('AUSTRALIE006', 'ÎLES-SALOMON', 'SOLOMON-ISLANDS', 'AUSTRALIE-OCEANIE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('AUSTRALIE007', 'INDONÉSIE‎', 'INDONESIA', 'AUSTRALIE-OCEANIE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('AUSTRALIE008', 'KIRIBATI‎', 'KIRIBATI', 'AUSTRALIE-OCEANIE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('AUSTRALIE009', 'NAURU‎', 'NAURU', 'AUSTRALIE-OCEANIE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('AUSTRALIE010', 'NIUE‎', 'NIUE', 'AUSTRALIE-OCEANIE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('AUSTRALIE011', 'NOUVELLE-ZÉLANDE', 'NEW-ZEALAND', 'AUSTRALIE-OCEANIE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('AUSTRALIE012', 'PALAOS', 'PALAOS', 'AUSTRALIE-OCEANIE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('AUSTRALIE013', 'PAPOUASIE-NOUVELLE-GUINÉE‎', 'PAPUA-NEW-GUINEA', 'AUSTRALIE-OCEANIE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('AUSTRALIE014', 'SAMOA‎', 'SAMOA', 'AUSTRALIE-OCEANIE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('AUSTRALIE015', 'SAMOA-AMÉRICAINES‎', 'AMERICAN-SAMOA', 'AUSTRALIE-OCEANIE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('AUSTRALIE016', 'TONGA', 'TONGA', 'AUSTRALIE-OCEANIE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('AUSTRALIE017', 'TUVALU', 'TUVALU', 'AUSTRALIE-OCEANIE');
INSERT INTO META0002_DDVS_PAYSCONTINENT VALUES ('AUSTRALIE018', 'VANUATU', 'VANUATU', 'AUSTRALIE-OCEANIE');
COMMIT;

SELECT COUNT(*) AS NbrPays FROM META0002_DDVS_PAYSCONTINENT;
SELECT CONTINENT, COUNT(*) AS NbrPays FROM META0002_DDVS_PAYSCONTINENT GROUP BY CONTINENT ORDER BY 1;



SELECT NOMPAYSFRANCAIS FROM META0002_DDVS_PAYSCONTINENT WHERE 
UTL_MATCH.jaro_winkler_similarity(UPPER(NOMPAYSFRANCAIS), UPPER('Tunisi')) > 95
AND 
UTL_MATCH.edit_distance_similarity(UPPER(NOMPAYSFRANCAIS), UPPER('Tunisi')) > 95
OR 
SOUNDEX(UPPER(NOMPAYSFRANCAIS)) = SOUNDEX(UPPER('Tunisi'));			

SELECT NOMPAYSFRANCAIS, 
UTL_MATCH.jaro_winkler_similarity(UPPER(NOMPAYSFRANCAIS), UPPER('Tunisi')),
UTL_MATCH.edit_distance_similarity(UPPER(NOMPAYSFRANCAIS), UPPER('Tunisi'))
FROM META0002_DDVS_PAYSCONTINENT WHERE 
UTL_MATCH.jaro_winkler_similarity(UPPER(NOMPAYSFRANCAIS), UPPER('Tunisi')) > 80
AND 
UTL_MATCH.edit_distance_similarity(UPPER(NOMPAYSFRANCAIS), UPPER('Tunisi')) > 80
;

SELECT NOMPAYSFRANCAIS FROM META0002_DDVS_PAYSCONTINENT WHERE 
UTL_MATCH.jaro_winkler_similarity(UPPER(NOMPAYSFRANCAIS), UPPER('SOUNTH AFRCI')) > 90;

SELECT NOMPAYSFRANCAIS FROM META0002_DDVS_PAYSCONTINENT WHERE 
UTL_MATCH.jaro_winkler_similarity(UPPER(NOMPAYSFRANCAIS), UPPER('SOUNTH AFRIc')) > 90
OR
UTL_MATCH.jaro_winkler_similarity(UPPER(NOMPAYSANGLAIS), UPPER('SOUNTH AFRic')) > 90
;

DROP   TABLE DS;
CREATE TABLE DS 
(
COL01 VARCHAR2(20), COL02 VARCHAR2(20), COL03 VARCHAR2(20), COL04 VARCHAR2(20), COL05 VARCHAR2(20), COL06 VARCHAR2(20), 
COL07 VARCHAR2(20), COL08 VARCHAR2(20),COL09 VARCHAR2(20), COL10 VARCHAR2(20), COL11 VARCHAR2(100) 
);

INSERT INTO DS VALUES ('LAMEME', 'Lina', '22/02/2002', 'Lille', 'France', 'F', 'AB+', '155cm', '69Kg', '+33 7 77 77 77 77', 'lina.lameme@gmail.com');
INSERT INTO DS VALUES ('CLEMENT', 'Adam', '10/06/1996', 'Paris', 'France', 'M', 'B+', '172cm', '71', '+33617716698', 'adam.clement@gmail.com');
INSERT INTO DS VALUES ('LABELLE', 'Eve', '17/06/1990', 'Paris', 'Fr', 'F', 'B', '169cm', '', '669964916', 'eve.la belle@gmail.com');
INSERT INTO DS VALUES ('CLEMENT', 'Clémence', '01/10/1920', 'Marseille', 'France', 'F', 'A+', '1,68m', '68kg', '684071896', 'clémence.clement@gmail.com');
INSERT INTO DS VALUES ('TRAIFOR', 'Adam', '19/06/2001', 'Lyon', 'France', 'M', 'B+', '1700mm', '71kg', '(+33) 06 30 50 19 16', 'adam.traifor@gmail.com');
INSERT INTO DS VALUES ('EVE', 'Evelyne', '22 novembre 1969', NULL, '', '?', '', '', '', '687844442', 'evelyne!?/eve@gmail.com');
INSERT INTO DS VALUES ('NANNOU', 'Inès', '22 novembre 1969', 'Nice', 'France', 'F', 'B+', '1,69m', '70KG', '678466837', 'ines.nan@nou@gmail.com');
INSERT INTO DS VALUES ('GRAND', 'Adam', '16 octobre 1996', 'Paris', '', 'M', 'b+', '1920mm', '71KiloG', '646532809', 'adam.grand@gmail.com');
INSERT INTO DS VALUES ('LAMEME', 'Lina', 'février', 'Lille', 'France', 'F', 'x+', '155cm', '69KG', '+33 7 77 77 77 77', 'lina@lameme@gmail.com');
INSERT INTO DS VALUES ('LAMEME', 'Lina', '22 février 2002', 'Lille', 'France', 'F', 'AB+', '155cm', '69KG', '+33 7 77 77 77 77', '');
INSERT INTO DS VALUES ('LAMEME', 'Lina', '22 février 2002', 'Lille', 'France', 'F', 'AB+', '155cm', '69KG', '', 'lina.lameme@gmail.com');
INSERT INTO DS VALUES ('LAMEME', 'L.', '22 février 2002', 'Lille', 'France', 'F', 'ab+', '155cm', '69KG', '', 'lina.lameme@gmail.com');
INSERT INTO DS VALUES ('lameme', 'lina', '22 février 2002', 'NULL', '', 'f', '', '155cm', '69kg', '+33 7 77 77 77 77', 'lina.lameme@gmail.com');
INSERT INTO DS VALUES ('lameme', 'lina', '22 février 2002', 'lille', 'franc', 'f', 'ab+', '155cm', '69kg', '+33 7 77 77 77 77', 'lina.lameme@gmail');
INSERT INTO DS VALUES ('CLEMENT', 'Clémence', '11 novembre 2011', 'Barcelone', 'Espagne', 'F', 'A+', '111cm', '13kg', '', 'fcb-clement@yahoo.fr');
INSERT INTO DS VALUES ('CLEMENT', 'Clémence', '11 novembre 2011', 'Barcelone', 'Espagne', 'F', 'A+', '1,11m', '13000g', '', 'fcb-clement@yahoo.fr');
INSERT INTO DS VALUES ('CLEMENT', 'clemence', '2011-novembre-11', NULL, 'Espagne', 'F', 'A+', '1,11m', '13000g', '', 'fcb-clement@yahoo.fr');
COMMIT;

-- ==== MFB =======================================================================================================================
-- Table nettoyée (sauf dates)
-- ==== MFB =======================================================================================================================

DROP TABLE CLIENTS_TEST CASCADE CONSTRAINTS;
CREATE TABLE CLIENTS_TEST
(   -- Descriptions des colonnes
	CODCLI		VARCHAR2(20), 
	CIVCLI		VARCHAR2(20),
	NOMCLI		VARCHAR2(50),
	PRENCLI		VARCHAR2(50),
	CATCLI		VARCHAR2(200),
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
	-- Descriptions des contraintes
	CONSTRAINT PK_CLIENTS_TEST			    PRIMARY KEY(CODCLI),
	--CONSTRAINT CK_CLIENTS_CIVCLI		CHECK(UPPER(CIVCLI)   IN ('MADEMOISELLE', 'MADAME', 'MONSIEUR')),
	CONSTRAINT CK_CLIENTS_TEST_CATCLI		CHECK(CATCLI   < 10 ),
	CONSTRAINT NN_CLIENTS_TEST_NOMCLI		CHECK(NOMCLI   IS NOT NULL),
	CONSTRAINT NN_CLIENTS_TEST_PRENCLI		CHECK(PRENCLI  IS NOT NULL),
	CONSTRAINT NN_CLIENTS_TEST_CATCLI		CHECK(CATCLI   IS NOT NULL)
);



INSERT INTO CLIENTS_TEST (CODCLI, CIVCLI, NOMCLI, PRENCLI, CATCLI, ADNCLI, ADRCLI, CPCLI, VILCLI, PAYSCLI, MAILCLI, TELCLI, DATNAISCLI, DPREMCONTACTCLI, OBSCLI, REMCLI, GENRECLI)
VALUES ('C001', 'Madame', 'CLEM@ENT', 'EVE', 1, '18', 'BOULEVARD FOCH', '91000', 'EPINAY-SUR-ORGE', 'FRANCE','eve.clement@gmail.com', '+33777889911', '17-06-1951', '12-12-2012', '', '', 'F');

INSERT INTO CLIENTS_TEST (CODCLI, CIVCLI, NOMCLI, PRENCLI, CATCLI, ADNCLI, ADRCLI, CPCLI, VILCLI, PAYSCLI, MAILCLI, TELCLI, DATNAISCLI, DPREMCONTACTCLI, OBSCLI, REMCLI, GENRECLI)
VALUES ('C002', 'Madame', 'LESEUL', 'M@RIE', 1, '17', 'AVENUE D ITALIE', '75013', 'PARIS', 'FRANCE','marieleseul@yahoo.fr', '0617586565', '05-08-1983', '05-08-1983', '', '', 'F');

INSERT INTO CLIENTS_TEST (CODCLI, CIVCLI, NOMCLI, PRENCLI, CATCLI, ADNCLI, ADRCLI, CPCLI, VILCLI, PAYSCLI, MAILCLI, TELCLI, DATNAISCLI, DPREMCONTACTCLI, OBSCLI, REMCLI, GENRECLI)
VALUES ('C003', 'Madame', 'UNIQUE', 'Inès', 2, '77', 'RUE DE LA LIBERTE', '13001', 'MARCHEILLLE', 'FRANCE','munique@gmail.com', '+33717889922', '22-11-1969', '12-12-2012', '', '', 'F');

INSERT INTO CLIENTS_TEST (CODCLI, CIVCLI, NOMCLI, PRENCLI, CATCLI, ADNCLI, ADRCLI, CPCLI, VILCLI, PAYSCLI, MAILCLI, TELCLI, DATNAISCLI, DPREMCONTACTCLI, OBSCLI, REMCLI, GENRECLI)
VALUES ('C004', 'Madame', 'CLEMENCE', 'EVELYNE', 4, '8 BIS', 'FOCH', '93800', 'EPINAY-SUR-SEINE', 'FRANCE','clemence evelyne@gmail.com', '+33777889933', '', '', '', '', 'F');

INSERT INTO CLIENTS_TEST (CODCLI, CIVCLI, NOMCLI, PRENCLI, CATCLI, ADNCLI, ADRCLI, CPCLI, VILCLI, PAYSCLI, MAILCLI, TELCLI, DATNAISCLI, DPREMCONTACTCLI, OBSCLI, REMCLI, GENRECLI)
VALUES ('C005', 'Madam', 'FORT', 'anne marie', 3, '55', 'RUE DU JAPON', '94310', 'ORLY-VILLE', 'FRANCE','jfort\@hotmail.fr', '+33777889944', '11-11-2000', '', '', '', 'F');

INSERT INTO CLIENTS_TEST (CODCLI, CIVCLI, NOMCLI, PRENCLI, CATCLI, ADNCLI, ADRCLI, CPCLI, VILCLI, PAYSCLI, MAILCLI, TELCLI, DATNAISCLI, DPREMCONTACTCLI, OBSCLI, REMCLI, GENRECLI)
VALUES ('C006', 'Mademoisele', 'LE BON', 'Clémence', 1, '18', 'BOULEVARD FOCH', '93800', 'EPINAY-SUR-SEINE', 'FRANCE','clemence.le bon@cfo.fr', '0033777889955', '16-10-1996', '18-10-2018', '', '', 'F');

INSERT INTO CLIENTS_TEST (CODCLI, CIVCLI, NOMCLI, PRENCLI, CATCLI, ADNCLI, ADRCLI, CPCLI, VILCLI, PAYSCLI, MAILCLI, TELCLI, DATNAISCLI, DPREMCONTACTCLI, OBSCLI, REMCLI, GENRECLI)
VALUES ('C007', 'Mademoiselle', 'TRAIFOR', 'Alice', 2, '6', '    DE LA ROSIERE', '75015', 'PARIS', 'FRANCE','alice.traifor@yahoo.fr', '+33777889966', '23-02-1998', '', '', '', 'F');

INSERT INTO CLIENTS_TEST (CODCLI, CIVCLI, NOMCLI, PRENCLI, CATCLI, ADNCLI, ADRCLI, CPCLI, VILCLI, PAYSCLI, MAILCLI, TELCLI, DATNAISCLI, DPREMCONTACTCLI, OBSCLI, REMCLI, GENRECLI)
VALUES ('C008', 'Monsieur', 'VIVANT', 'JEAN-BAPTISTE', 1, '13', 'RUE DE LA PAIX', '93800', 'EPINAY-SUR-SEINE', 'FRANCE','jeanbaptiste@', '0607', '17-09-1958', '17-09-2000', '', '', 'F');

INSERT INTO CLIENTS_TEST (CODCLI, CIVCLI, NOMCLI, PRENCLI, CATCLI, ADNCLI, ADRCLI, CPCLI, VILCLI, PAYSCLI, MAILCLI, TELCLI, DATNAISCLI, DPREMCONTACTCLI, OBSCLI, REMCLI, GENRECLI)
VALUES ('C009', 'Monsieur', 'CLEMENCE', 'Alexandre', 1, '5', 'Rue De Belleville', '75019', 'PARIS', NULL,'alexandre.clemence@up13.fr', '+33149404071', '19-09-1999', '20-10-2020', '', '', 'F');

INSERT INTO CLIENTS_TEST (CODCLI, CIVCLI, NOMCLI, PRENCLI, CATCLI, ADNCLI, ADRCLI, CPCLI, VILCLI, PAYSCLI, MAILCLI, TELCLI, DATNAISCLI, DPREMCONTACTCLI, OBSCLI, REMCLI, GENRECLI)
VALUES ('C010', 'Monsieur', 'TRAIFOR', 'Alexandre', 1, '17', 'AVENUE FOCH', '75016', 'PARIS', 'FRA','alexandre.traifor@up13.fr', '06070809', '17-07-1967', '17-09-2000', '', '', 'F');

INSERT INTO CLIENTS_TEST (CODCLI, CIVCLI, NOMCLI, PRENCLI, CATCLI, ADNCLI, ADRCLI, CPCLI, VILCLI, PAYSCLI, MAILCLI, TELCLI, DATNAISCLI, DPREMCONTACTCLI, OBSCLI, REMCLI, GENRECLI)
VALUES ('C011', 'Monsiieur', 'PREMIER', 'JOS//EPH', 2, '77//', 'RUE// DE LA LIBERTE', '13001', 'MARCHEILLE', 'FRANCE','josef@premier', '+33777889977', '01-01-2000', '20-10-2020', '', '', 'F');

INSERT INTO CLIENTS_TEST (CODCLI, CIVCLI, NOMCLI, PRENCLI, CATCLI, ADNCLI, ADRCLI, CPCLI, VILCLI, PAYSCLI, MAILCLI, TELCLI, DATNAISCLI, DPREMCONTACTCLI, OBSCLI, REMCLI, GENRECLI)
VALUES ('C012', 'Monsieur', 'CLEMENT', 'Adam', 2, '13', 'AVENUE JEAN BAPTISTE CLEMENT', '9430', 'VILLETANEUSE', 'FRANCE','adam.clement@gmail.com', '+33149404072', '19-06-2001', '', '', '', 'F');

INSERT INTO CLIENTS_TEST (CODCLI, CIVCLI, NOMCLI, PRENCLI, CATCLI, ADNCLI, ADRCLI, CPCLI, VILCLI, PAYSCLI, MAILCLI, TELCLI, DATNAISCLI, DPREMCONTACTCLI, OBSCLI, REMCLI, GENRECLI)
VALUES ('C013', 'Monsieur', 'FORT', 'Gabriel', 5, '1', 'AVENUE DE CARTAGE', '99000', 'TUNIS', 'TUNISIE','gabriel.fort@yahoo.fr', '+21624801777', '05-05-1985', '17-09-2000', '', '', 'F');

INSERT INTO CLIENTS_TEST (CODCLI, CIVCLI, NOMCLI, PRENCLI, CATCLI, ADNCLI, ADRCLI, CPCLI, VILCLI, PAYSCLI, MAILCLI, TELCLI, DATNAISCLI, DPREMCONTACTCLI, OBSCLI, REMCLI, GENRECLI)
VALUES ('C014', 'Monsieur', 'ADAM', 'ADAMO', 5, '1', 'AVENUE DE ROME', '99001', 'ROME', 'ITALIE','adamo.adamé@gmail com', '', '12-12-2000', '20-10-2020', '', '', 'F');

INSERT INTO CLIENTS_TEST (CODCLI, CIVCLI, NOMCLI, PRENCLI, CATCLI, ADNCLI, ADRCLI, CPCLI, VILCLI, PAYSCLI, MAILCLI, TELCLI, DATNAISCLI, DPREMCONTACTCLI, OBSCLI, REMCLI, GENRECLI)
VALUES ('C015', 'Monsieur', 'Labsent', 'pala', 7, '1', 'rue des absents', '000', 'BAGDAD', 'IRAQ','pala-labsent@paici', '', '', '', '', '', 'F');

INSERT INTO CLIENTS_TEST (CODCLI, CIVCLI, NOMCLI, PRENCLI, CATCLI, ADNCLI, ADRCLI, CPCLI, VILCLI, PAYSCLI, MAILCLI, TELCLI, DATNAISCLI, DPREMCONTACTCLI, OBSCLI, REMCLI, GENRECLI)
VALUES ('C016', 'Madame', 'obsolete', 'kadym', 7, '1', 'rue des anciens', '000', 'CARTHAGE', 'IFRIQIA','inexistant', 'inexistant', '', '', '', '', 'F');

INSERT INTO CLIENTS_TEST (CODCLI, CIVCLI, NOMCLI, PRENCLI, CATCLI, ADNCLI, ADRCLI, CPCLI, VILCLI, PAYSCLI, MAILCLI, TELCLI, DATNAISCLI, DPREMCONTACTCLI, OBSCLI, REMCLI, GENRECLI)
VALUES ('C017', 'Madame', 'RAHYM', 'Karym', 1, '1', 'RUE DES GENTILS', '1000', 'CARTHAGE', 'TUNISIE','karym.rahym@gmail.com', '+21624808444', '01-01-1990', '05-01-2021', '', '', 'F');

INSERT INTO CLIENTS_TEST (CODCLI, CIVCLI, NOMCLI, PRENCLI, CATCLI, ADNCLI, ADRCLI, CPCLI, VILCLI, PAYSCLI, MAILCLI, TELCLI, DATNAISCLI, DPREMCONTACTCLI, OBSCLI, REMCLI, GENRECLI)
VALUES ('C018', 'Madame', 'GENIE', 'ADAM', 6, '8', 'BOULEVARD FOCH', '93800', 'EPINAY SUR SEINE', 'FRANCE','adam.génie@gmail.com', '+33777889911', '01-01-1990', '11-11-2011', '', '', 'F');

INSERT INTO CLIENTS_TEST (CODCLI, CIVCLI, NOMCLI, PRENCLI, CATCLI, ADNCLI, ADRCLI, CPCLI, VILCLI, PAYSCLI, MAILCLI, TELCLI, DATNAISCLI, DPREMCONTACTCLI, OBSCLI, REMCLI, GENRECLI)
VALUES ('C019', 'Madame', 'GENIE', 'GENIALE', 3, '16', 'AVENUE FOCH', '75016', 'PARIS', 'FRANCE','genialegenie@gmail.com', '+33777889900', '17-09-1988', '11-11-2011', '', '', 'F');

INSERT INTO CLIENTS_TEST (CODCLI, CIVCLI, NOMCLI, PRENCLI, CATCLI, ADNCLI, ADRCLI, CPCLI, VILCLI, PAYSCLI, MAILCLI, TELCLI, DATNAISCLI, DPREMCONTACTCLI, OBSCLI, REMCLI, GENRECLI)
VALUES ('C020', 'Madame', 'GENIe', 'GENIAL', 3, '16', 'AVENUE FOCH', '75016', 'PARIS', 'FRENCE','genialegenie@gmail.com', '0777889900', '17-09-1988', '11-11-2011', '', '', 'F');

INSERT INTO CLIENTS_TEST (CODCLI, CIVCLI, NOMCLI, PRENCLI, CATCLI, ADNCLI, ADRCLI, CPCLI, VILCLI, PAYSCLI, MAILCLI, TELCLI, DATNAISCLI, DPREMCONTACTCLI, OBSCLI, REMCLI, GENRECLI)
VALUES ('C021', 'Madame', 'LAPARISIENNE', 'Belle', 3, '26', 'AVENUE FOCH', '75016', 'PARIS', '','belle.laparisienne@gmail.com', '+33777889977', '17-09-1988', '11-11-2011', '', '', 'F');

INSERT INTO CLIENTS_TEST (CODCLI, CIVCLI, NOMCLI, PRENCLI, CATCLI, ADNCLI, ADRCLI, CPCLI, VILCLI, PAYSCLI, MAILCLI, TELCLI, DATNAISCLI, DPREMCONTACTCLI, OBSCLI, REMCLI, GENRECLI)
VALUES ('C022', 'Mademoiselle', 'AFRICAINE', 'Belle', 9, '26', 'AVENUE FOCH', '75016', 'PARIS', '','belle.africaine@hotmail.com', '+33777889911', '17-09-1988', '11-11-2011', '', '', 'F');

INSERT INTO CLIENTS_TEST (CODCLI, CIVCLI, NOMCLI, PRENCLI, CATCLI, ADNCLI, ADRCLI, CPCLI, VILCLI, PAYSCLI, MAILCLI, TELCLI, DATNAISCLI, DPREMCONTACTCLI, OBSCLI, REMCLI, GENRECLI)
VALUES ('C023', 'Mademoiselle', 'AFRICAINE', 'Belle', 9, '26', 'AVENUE FOCH', '75016', 'DAKAR', '','africaineb@gmail.com', '+33777889922', '17-09-1988', '11-11-2011', '', '', 'F');

COMMIT;

INSERT INTO CLIENTS_TEST (CODCLI, CIVCLI, NOMCLI, PRENCLI, CATCLI, ADNCLI, ADRCLI, CPCLI, VILCLI, PAYSCLI, MAILCLI, TELCLI, DATNAISCLI, DPREMCONTACTCLI, OBSCLI, REMCLI, GENRECLI)
VALUES ('C118', 'Madame', 'GENIE', 'Adam', 3, '8', 'BOULEVARD FOCH', '93800', '     EPINAY    SUR     SEINE', 'FRANCE','adam.génie@gmail.com', '+33777889911', '17-09-1988', '', '', '', 'F');

INSERT INTO CLIENTS_TEST (CODCLI, CIVCLI, NOMCLI, PRENCLI, CATCLI, ADNCLI, ADRCLI, CPCLI, VILCLI, PAYSCLI, MAILCLI, TELCLI, DATNAISCLI, DPREMCONTACTCLI, OBSCLI, REMCLI, GENRECLI)
VALUES ('C119', 'MadamE', 'UNE', 'Marie', 6, '17', 'AVENUE D ITALIE', '75013', 'PARIS', '   FRANCE','marieune@gmail.com', '0617586575', '01-01-1991', '', '', '', 'F');

INSERT INTO CLIENTS_TEST (CODCLI, CIVCLI, NOMCLI, PRENCLI, CATCLI, ADNCLI, ADRCLI, CPCLI, VILCLI, PAYSCLI, MAILCLI, TELCLI, DATNAISCLI, DPREMCONTACTCLI, OBSCLI, REMCLI, GENRECLI)
VALUES ('C120', 'MADAME', '1', 'MARIE', 1, '17', 'AVENUE D ITALIE', '75013', 'PARIS', 'FRANCE','MARIEUNE@GMAIL.COM', '0617586575', '01-01-1991', '', '', '', 'F');

INSERT INTO CLIENTS_TEST (CODCLI, CIVCLI, NOMCLI, PRENCLI, CATCLI, ADNCLI, ADRCLI, CPCLI, VILCLI, PAYSCLI, MAILCLI, TELCLI, DATNAISCLI, DPREMCONTACTCLI, OBSCLI, REMCLI, GENRECLI)
VALUES ('C121', 'Monsieur', '2 PAR 2', 'Girard', 1, '27', 'AVENUE D ITALIE', '75013', 'PARIS', 'FRANCE','2PAR2@GMAIL.COM', '0617586577', '02-02-1982', '', '', '', 'F');

INSERT INTO CLIENTS_TEST (CODCLI, CIVCLI, NOMCLI, PRENCLI, CATCLI, ADNCLI, ADRCLI, CPCLI, VILCLI, PAYSCLI, MAILCLI, TELCLI, DATNAISCLI, DPREMCONTACTCLI, OBSCLI, REMCLI, GENRECLI)
VALUES ('C122', 'Monsieur', 'DE PAR DE', 'GIRARD', 1, '27', 'AVENUE D-ITALIE', '75013', '     PARIS     ', 'FRANCE','2PAR2@GMAIL.COM', '0617586577', '02-02-1982', '', '', '', 'F');

INSERT INTO CLIENTS_TEST (CODCLI, CIVCLI, NOMCLI, PRENCLI, CATCLI, ADNCLI, ADRCLI, CPCLI, VILCLI, PAYSCLI, MAILCLI, TELCLI, DATNAISCLI, DPREMCONTACTCLI, OBSCLI, REMCLI, GENRECLI)
VALUES ('C123', 'Monsieur', 'DE PAR DE', 'GIRARD', 1, '27', 'AVENUE D''ITALIE', '75013', '     PARIS     ', '   FRANCE       ','2PAR2@GMAIL.COM', '0617586577', '', '', '', '', 'F');

INSERT INTO CLIENTS_TEST (CODCLI, CIVCLI, NOMCLI, PRENCLI, CATCLI, ADNCLI, ADRCLI, CPCLI, VILCLI, PAYSCLI, MAILCLI, TELCLI, DATNAISCLI, DPREMCONTACTCLI, OBSCLI, REMCLI, GENRECLI)
VALUES ('C124', 'Monsieur', 'DE    PAR       DE', 'Girard', 1, '27', 'AVENUE D_ITALIE', '75013', '     PARIS     ', 'FRANCE','2PAR2@GMAIL.COM', '0617586577', '02-02-1982', '', '', '', 'F');

INSERT INTO CLIENTS_TEST (CODCLI, CIVCLI, NOMCLI, PRENCLI, CATCLI, ADNCLI, ADRCLI, CPCLI, VILCLI, PAYSCLI, MAILCLI, TELCLI, DATNAISCLI, DPREMCONTACTCLI, OBSCLI, REMCLI, GENRECLI)
VALUES ('C125', 'Monsieur', '       DE PAR DE', 'Girard', 1, '27', 'AVENUE D_ITALIE', '75013', '     PARIS     ', 'france','2PAR2@GMAIL.COM', '0617586577', '02-02-1982', '', '', '', 'F');

INSERT INTO CLIENTS_TEST (CODCLI, CIVCLI, NOMCLI, PRENCLI, CATCLI, ADNCLI, ADRCLI, CPCLI, VILCLI, PAYSCLI, MAILCLI, TELCLI, DATNAISCLI, DPREMCONTACTCLI, OBSCLI, REMCLI, GENRECLI)
VALUES ('C126', 'Monsieur', '       DE PAR DE', 'Gir@rd', 1, '27', 'AVENUE@D_ITALIE/', '75013', '     paris     ', 'france','2PAR2@GMAIL.COM', '0617586577', '02-02-1982', '', '', '', 'F');

INSERT INTO CLIENTS_TEST (CODCLI, CIVCLI, NOMCLI, PRENCLI, CATCLI, ADNCLI, ADRCLI, CPCLI, VILCLI, PAYSCLI, MAILCLI, TELCLI, DATNAISCLI, DPREMCONTACTCLI, OBSCLI, REMCLI, GENRECLI)
VALUES ('C127', 'Monsieur', 'SMITH', 'John', 1, '', '', '', 'LONDON', 'United-Kingdom','', '', '03-03-1983', '', '', '', 'F');

INSERT INTO CLIENTS_TEST (CODCLI, CIVCLI, NOMCLI, PRENCLI, CATCLI, ADNCLI, ADRCLI, CPCLI, VILCLI, PAYSCLI, MAILCLI, TELCLI, DATNAISCLI, DPREMCONTACTCLI, OBSCLI, REMCLI, GENRECLI)
VALUES ('C128', 'Monsieur', 'BIDON', 'Jade', 1, '', '', '', 'LONDON', 'United-KINGDOM','', '', '17-07-1977', '', '', '', 'F');

INSERT INTO CLIENTS_TEST (CODCLI, CIVCLI, NOMCLI, PRENCLI, CATCLI, ADNCLI, ADRCLI, CPCLI, VILCLI, PAYSCLI, MAILCLI, TELCLI, DATNAISCLI, DPREMCONTACTCLI, OBSCLI, REMCLI, GENRECLI)
VALUES ('C129', 'Monsieur', 'STOne', 'Brakeur', 1, '', '', '', 'LONDON', 'United-KINGDOM','', '', '18-08-1988', '', '', '', 'F');

INSERT INTO CLIENTS_TEST (CODCLI, CIVCLI, NOMCLI, PRENCLI, CATCLI, ADNCLI, ADRCLI, CPCLI, VILCLI, PAYSCLI, MAILCLI, TELCLI, DATNAISCLI, DPREMCONTACTCLI, OBSCLI, REMCLI, GENRECLI)
VALUES ('C130', 'MADAM', 'STOne', 'Jane', 1, '', '', '', 'Oxford', 'United KINGDOM','', '', '', '', '', '', 'F');

INSERT INTO CLIENTS_TEST (CODCLI, CIVCLI, NOMCLI, PRENCLI, CATCLI, ADNCLI, ADRCLI, CPCLI, VILCLI, PAYSCLI, MAILCLI, TELCLI, DATNAISCLI, DPREMCONTACTCLI, OBSCLI, REMCLI, GENRECLI)
VALUES ('C131', 'MONsieur', 'CATS', 'BiLL', 9, '', 'Maison Planchhhe', '', 'NEW-YORk', 'UNITED-STATS-AMERICA','', '', '17-09-1978', '', '', '', 'F');

COMMIT;

INSERT INTO CLIENTS_TEST (CODCLI, CIVCLI, NOMCLI, PRENCLI, CATCLI, ADNCLI, ADRCLI, CPCLI, VILCLI, PAYSCLI, MAILCLI, TELCLI, DATNAISCLI, DPREMCONTACTCLI, OBSCLI, REMCLI, GENRECLI)
VALUES ('C295', 'MONSIEUr', 'MOUCHE', 'Gorge', 3, '-', '-', '-', 'L''Hay-Les-Roses', '-','usapresident@labas.com', '-', '02-02-1950', '20-01-1991', NULL, '', 'F');

INSERT INTO CLIENTS_TEST (CODCLI, CIVCLI, NOMCLI, PRENCLI, CATCLI, ADNCLI, ADRCLI, CPCLI, VILCLI, PAYSCLI, MAILCLI, TELCLI, DATNAISCLI, DPREMCONTACTCLI, OBSCLI, REMCLI, GENRECLI)
VALUES ('C296', 'MONSIEUR', 'MOUBARAK', 'OOObana', 3, '-', '-', '-', '-', '-', '-', '-', '15-05-1965', '20-01-2008', '', '', 'F');

INSERT INTO CLIENTS_TEST (CODCLI, CIVCLI, NOMCLI, PRENCLI, CATCLI, ADNCLI, ADRCLI, CPCLI, VILCLI, PAYSCLI, MAILCLI, TELCLI, DATNAISCLI, DPREMCONTACTCLI, OBSCLI, REMCLI, GENRECLI)
VALUES ('C297', 'MADAME', 'CLEANTOOON', 'Hilally', 3, '-', '-', '-', '-', '-', '-', '-', '15-05-1966', '20-01-2016', '', '', 'F');

INSERT INTO CLIENTS_TEST (CODCLI, CIVCLI, NOMCLI, PRENCLI, CATCLI, ADNCLI, ADRCLI, CPCLI, VILCLI, PAYSCLI, MAILCLI, TELCLI, DATNAISCLI, DPREMCONTACTCLI, OBSCLI, REMCLI, GENRECLI)
VALUES ('C298     ', 'monsieur', 'TROMPE.', 'Ronald', -3, '-', '-', '-', '-', '-','usapresident@labas.com', '-', '10-10-1945', '20-01-2016', NULL, '', NULL);

INSERT INTO CLIENTS_TEST (CODCLI, CIVCLI, NOMCLI, PRENCLI, CATCLI, ADNCLI, ADRCLI, CPCLI, VILCLI, PAYSCLI, MAILCLI, TELCLI, DATNAISCLI, DPREMCONTACTCLI, OBSCLI, REMCLI, GENRECLI)
VALUES ('     C299', 'MONSIEUuR    ', 'BIDON!', 'Joie', 3, '-', '-', '-', '-', '-', '-', '-', '10-10-1941', '03-11-2020', '-', '', 'F');

INSERT INTO CLIENTS_TEST (CODCLI, CIVCLI, NOMCLI, PRENCLI, CATCLI, ADNCLI, ADRCLI, CPCLI, VILCLI, PAYSCLI, MAILCLI, TELCLI, DATNAISCLI, DPREMCONTACTCLI, OBSCLI, REMCLI, GENRECLI)
VALUES ('C300', 'MONSIEUR', 'HOBAAAMA', 'M''Barek', 3, '-', '-', '-', '-', '-', '-', '-', '10-10-1985', '20-01-2008', '-', '', 'F');

INSERT INTO CLIENTS_TEST (CODCLI, CIVCLI, NOMCLI, PRENCLI, CATCLI, ADNCLI, ADRCLI, CPCLI, VILCLI, PAYSCLI, MAILCLI, TELCLI, DATNAISCLI, DPREMCONTACTCLI, OBSCLI, REMCLI, GENRECLI)
VALUES ('C554', 'Monsieur', 'ALIBABA', 'Mystere', 1, '55', 'Rue De Belleville', '75019', 'PARIS', 'FRANCE','sezameouvretoi.alibaba.myster@gmail.com', '0697837311', '12-12-1992', '', '', '', 'F');

INSERT INTO CLIENTS_TEST (CODCLI, CIVCLI, NOMCLI, PRENCLI, CATCLI, ADNCLI, ADRCLI, CPCLI, VILCLI, PAYSCLI, MAILCLI, TELCLI, DATNAISCLI, DPREMCONTACTCLI, OBSCLI, REMCLI, GENRECLI)
VALUES ('C555', 'Madame', 'SMART', 'Data', 2, '55', 'RUE DE BELLEVILLE', '75019', 'PARIS', 'FRANCE','smartdata@gmail.com', '+33755555555', '', '', '', '', 'F');

COMMIT;


ALTER TABLE CLIENTS_TEST MODIFY CODCLI VARCHAR2(100);
ALTER TABLE CLIENTS_TEST MODIFY CIVCLI VARCHAR2(100);
ALTER TABLE CLIENTS_TEST MODIFY NOMCLI VARCHAR2(150);
ALTER TABLE CLIENTS_TEST MODIFY MAILCLI VARCHAR2(150);
ALTER TABLE CLIENTS_TEST MODIFY PRENCLI VARCHAR2(100);
ALTER TABLE CLIENTS_TEST MODIFY CATCLI VARCHAR2(100);
ALTER TABLE CLIENTS_TEST MODIFY ADNCLI VARCHAR2(100);
ALTER TABLE CLIENTS_TEST MODIFY ADRCLI VARCHAR2(200);
ALTER TABLE CLIENTS_TEST MODIFY CPCLI VARCHAR2(100);
ALTER TABLE CLIENTS_TEST MODIFY VILCLI VARCHAR2(100);
ALTER TABLE CLIENTS_TEST MODIFY PAYSCLI VARCHAR2(100);
ALTER TABLE CLIENTS_TEST MODIFY TELCLI VARCHAR2(100);
ALTER TABLE CLIENTS_TEST MODIFY GENRECLI VARCHAR2(100);
ALTER TABLE CLIENTS_TEST MODIFY DATNAISCLI VARCHAR2(100);
ALTER TABLE CLIENTS_TEST MODIFY DPREMCONTACTCLI VARCHAR2(100);

ALTER TABLE CLIENTS_TEST DROP CONSTRAINT CK_CLIENTS_TEST_CATCLI;


INSERT INTO META_KITS VALUES ('KIT_TEXTE_BASE', 'NS0001');
INSERT INTO META_KITS VALUES ('KIT_TEXTE_BASE', 'NS2700');

-- 2. KIT_NOM_PRENOM (Socle partagé pour NOM et PRENOM)
INSERT INTO META_KITS VALUES ('KIT_NOM_PRENOM', 'NS0001');
INSERT INTO META_KITS  VALUES ('KIT_NOM_PRENOM', 'NS2700');
INSERT INTO META_KITS VALUES ('KIT_NOM_PRENOM', 'NS2510');

-- 3. KIT_LIEU (Socle partagé pour VILLE et PAYS)
INSERT INTO META_KITS VALUES ('KIT_LIEU', 'NS0001');
INSERT INTO META_KITS VALUES ('KIT_LIEU', 'NS2700');
INSERT INTO META_KITS VALUES ('KIT_LIEU', 'NS2510');

-- 4. KIT_VOIE_ADRESSE (Intitulé de la voie)
INSERT INTO META_KITS VALUES ('KIT_VOIE_ADRESSE', 'NS0001');
INSERT INTO META_KITS VALUES ('KIT_VOIE_ADRESSE', 'NS2700');
INSERT INTO META_KITS VALUES ('KIT_VOIE_ADRESSE', 'NS4010');

-- 5. KIT_NUMERO_VOIE (Numéro dans la voie)
INSERT INTO META_KITS VALUES ('KIT_NUMERO_VOIE', 'NS0001');
INSERT INTO META_KITS  VALUES ('KIT_NUMERO_VOIE', 'NS4001');

-- 6. KIT_CODE_POSTAL (Code postal français)
INSERT INTO META_KITS VALUES ('KIT_CODE_POSTAL', 'NS0001');
INSERT INTO META_KITS VALUES ('KIT_CODE_POSTAL', 'NS4050');

-- 7. KIT_EMAIL (Adresse mail)
INSERT INTO META_KITS (NOM_KIT, IDCONTRAINTE) VALUES ('KIT_EMAIL', 'NS0001');
INSERT INTO META_KITS (NOM_KIT, IDCONTRAINTE) VALUES ('KIT_EMAIL', 'NS5000');

-- 8. KIT_GENRE (Genre / Sexe F/M)
INSERT INTO META_KITS  VALUES ('KIT_GENRE', 'NS0001');
INSERT INTO META_KITS VALUES ('KIT_GENRE', 'NS3102');

-- 9. KIT_GROUPE_SANGUIN (Groupe sanguin)
INSERT INTO META_KITS VALUES ('KIT_GROUPE_SANGUIN', 'NS0001');
INSERT INTO META_KITS VALUES ('KIT_GROUPE_SANGUIN', 'NS3500');

-- 10. KIT_CATEGORIE_CLIENT
INSERT INTO META_KITS  VALUES ('KIT_CATEGORIE_CLIENT', 'NS0001');
INSERT INTO META_KITS  VALUES ('KIT_CATEGORIE_CLIENT', 'NS3900');

-- 11. KIT_NUMERIQUE
INSERT INTO META_KITS (NOM_KIT, IDCONTRAINTE) VALUES ('KIT_NUMERIQUE', 'NS0001');
INSERT INTO META_KITS (NOM_KIT, IDCONTRAINTE) VALUES ('KIT_NUMERIQUE', 'NN0001');