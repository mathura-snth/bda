-- ==== MFB =======================================================================================================================
-------- La Donnée e-s-t le monde du futur ; Les données et le monde de l'avenir
-------- The Data is the world of the future ;  The Data and the future's world

-------- Think DIFFERENTLY, BIGGER and SMARTER ! The Excellence in Data Use !
-------- La Data ; The Data : Data Management & Machine Learning
  
-- ==== MFB =======================================================================================================================
-- ==== MFB =======================================================================================================================
--   Auteur            : Dr. M. Faouzi BOUFARÈS, MCF-HDR Informatique
-- ==== MFB =======================================================================================================================
-- ==== MFB =======================================================================================================================
-- Bonjour = Hello = Buongiorno = Guten Tag = おはよう    = صباح الخير             
-- ==== MFB =======================================================================================================================
-- Salut   = Hi    =  Ciao      = Hi        = こんにちは   = سلام                    
-- ==== MFB =======================================================================================================================

-- ==== MFB =======================================================================================================================
SET SERVEROUTPUT ON;

-- Format de la date
ALTER SESSION SET NLS_DATE_FORMAT = 'YYYY-MM-DD' ;

-- Paramétrage de l'affichage sous oracle
SET PAGES 1000
SET LINES 1000

COLUMN FORMATIONDEMANDEE          FORMAT A50
COLUMN DOMAINEDEFORMATION         FORMAT A70
COLUMN SOUSDOMAINEDEFORMATION     FORMAT A70
COLUMN SOUSSOUSDOMAINEDEFORMATION FORMAT A70
COLUMN CHAINEACOMPARER            FORMAT A70
COLUMN CLE_INDEXAGE_MFB           FORMAT A50
COLUMN REFDOMAINEF                FORMAT A20
COLUMN REFSOUSDOMAINEF            FORMAT A20
COLUMN REFSOUSSOUSDOMAINEF        FORMAT A20

COLUMN EDS FORMAT 9999.9999
COLUMN JWS FORMAT 9999.9999
COLUMN QG1 FORMAT 9999.9999
-- ==== MFB =======================================================================================================================

-- ==== MFB =======================================================================================================================
CREATE OR REPLACE FUNCTION Count_words(p_string IN VARCHAR2) RETURN NUMBER IS
-- La Count_words fonction permet de compter le nombre de mots dans une chaine de caractères
    v_word_count NUMBER := 0;
BEGIN --Count_words
    -- Vérifie si la chaîne n'est pas vide
    IF p_string IS NOT NULL THEN
        -- Utilise la fonction REGEXP_COUNT pour compter les mots
        v_word_count := REGEXP_COUNT(p_string, '\S+', 1, 'i');
    END IF;

    RETURN v_word_count;
END Count_words;
/

-- TESTS
DECLARE
    v_input_string VARCHAR2(100) := 'Ceci est un exemple.';
    v_result NUMBER;
BEGIN
    v_result := count_words(v_input_string);
    DBMS_OUTPUT.PUT_LINE('La chaîne est : ' || v_input_string);
    DBMS_OUTPUT.PUT_LINE('Le nombre de mots dans la chaîne est : ' || v_result);
    
    v_input_string := 'a bb ccc dddd e ffff 6';
    v_result := count_words(v_input_string);
    DBMS_OUTPUT.PUT_LINE('La chaîne est : ' || v_input_string);
    DBMS_OUTPUT.PUT_LINE('Le nombre de mots dans la chaîne est : ' || v_result);
	
	v_input_string := '';
    v_result := count_words(v_input_string);
    DBMS_OUTPUT.PUT_LINE('La chaîne est : ' || v_input_string);
    DBMS_OUTPUT.PUT_LINE('Le nombre de mots dans la chaîne est : ' || v_result);
END;
/

-- ==== MFB =======================================================================================================================
CREATE OR REPLACE FUNCTION Concatener_premieres_lettres(p_texte IN VARCHAR2) RETURN VARCHAR2 IS
/*
La fonction concatener_premieres_lettres_sans_articles commence par découper le texte en mots 
à l'aide d'une expression régulière et utilise ensuite une boucle FOR pour traiter chaque mot. 
Elle exclut les articles mentionnés et concatène les k premières lettres de chaque mot.
*/
  -- C'est arbitraire/intuitif le nombre de lettres à extraire de chaque mot du texte selon le nombre de mots dans celui-ci
  v_UnMot			NUMBER := 5;
  v_DeuxMots		NUMBER := 3;
  v_PlusieursMots	NUMBER := 2;
  
  -- le nombre de lettres à extraire depuis un mot dans le texte
  v_k				NUMBER := 0;
  
  v_texte    	VARCHAR2(4000);
  v_resultat 	VARCHAR2(4000);
BEGIN --Concatener_premieres_lettres (v_k lettres selon le nombre de mots dans le texte)
  v_k := Count_words(p_texte);
  IF v_k = 1 THEN 
	 v_k := v_UnMot;
  ELSE IF v_k = 2 THEN 
		  v_k := v_DeuxMots;
		  ELSE IF v_k > 2 THEN 
			      v_k := v_PlusieursMots;
			    END IF;
		END IF;
  END IF;
  
  v_texte := LOWER(p_texte);
  v_resultat := '';
  FOR word IN (SELECT regexp_substr(v_texte, '\w+', 1, LEVEL) AS mot
               FROM dual
               CONNECT BY LEVEL <= regexp_count(v_texte, '\w+'))
  LOOP
    IF word.mot NOT IN ('le', 'la', 'les', 'l''', 'de', 'du', 'des', 'd''', 'à', 'au', 'aux', 'un', 'une', 'uns', 'unes') THEN
      v_resultat := v_resultat || SUBSTR(word.mot, 1, v_k);
    END IF;
  END LOOP;
  RETURN v_resultat;
END; --Concatener_premieres_lettres
/
-- TESTS
DECLARE
  v_resultat VARCHAR2(4000);
BEGIN
  v_resultat := Concatener_premieres_lettres('Les tableaux croisés dynamiques');
  DBMS_OUTPUT.PUT_LINE('Résultat : ' || v_resultat);
  v_resultat := Concatener_premieres_lettres('tableaux croisés dynamiques');
  DBMS_OUTPUT.PUT_LINE('Résultat : ' || v_resultat);
  v_resultat := Concatener_premieres_lettres('power bi');
  DBMS_OUTPUT.PUT_LINE('Résultat : ' || v_resultat);
  v_resultat := Concatener_premieres_lettres('L''enfant de la prairie');
  DBMS_OUTPUT.PUT_LINE('Résultat : ' || v_resultat);
  v_resultat := Concatener_premieres_lettres('La MSN');
  DBMS_OUTPUT.PUT_LINE('Résultat : ' || v_resultat);
  v_resultat := Concatener_premieres_lettres('Charles du cateau');
  DBMS_OUTPUT.PUT_LINE('Résultat : ' || v_resultat);
  v_resultat := Concatener_premieres_lettres('la formation est réalisée par un expert de l''université de la sorbonne paris nord');
  DBMS_OUTPUT.PUT_LINE('Résultat : ' || v_resultat);
  v_resultat := Concatener_premieres_lettres('droit');
  DBMS_OUTPUT.PUT_LINE('Résultat : ' || v_resultat);
  v_resultat := Concatener_premieres_lettres('excellence');
  DBMS_OUTPUT.PUT_LINE('Résultat : ' || v_resultat);
END;
/

--===== MFB =======================================================================================================================
CREATE OR REPLACE FUNCTION TransformerChaine(Chaine IN VARCHAR2) RETURN VARCHAR2 IS
-- La fonction TransformerChaine permet de transformer les chaines de caractères en supprimant des caractères 
-- et en remplaçant des caractères comme indiqué ci-dessous
	V_String VARCHAR2(1000);
	CaractereAsupprimer  VARCHAR2(200) := '[''_.(){}* +:,;/!?#€$£®…-]';
	CaractereAremplacer1 VARCHAR2(200) := 'éèùàêïîçôüÀÁÂÃÄÅàáâãäåÇçÈÉÊËèéêëÎÏÜÔ';
	CaractereAremplacer2 VARCHAR2(200) := 'eeuaeiicouAAAAAAAAaaaaaaCcEEEEeeeeIIUO';

BEGIN
	V_String := UPPER(TRANSLATE(REGEXP_REPLACE(Chaine, CaractereAsupprimer, ''), CaractereAremplacer1, CaractereAremplacer2));
	RETURN V_String;
END;
/
-- TESTS
SELECT TransformerChaine('Faouzi (--)çèéïÏ') FROM DUAL;

-- ==== MFB =======================================================================================================================
CREATE OR REPLACE FUNCTION CompareStr_QGram_Similar1(p_string1 IN VARCHAR2, p_string2 IN VARCHAR2) RETURN NUMBER IS
-- La fonction CompareStr_QGram_Similar1 permet de comparer 2 chaines selon le principe de Q-GRAM
-- Q-Gram1 : Première méthode / algorithme
    v_qgram_size NUMBER := 2; -- Taille des Q-Grammes
    v_string1_length NUMBER := LENGTH(p_string1);
    v_string2_length NUMBER := LENGTH(p_string2);
    v_qgram_count NUMBER := v_string1_length + v_string2_length - v_qgram_size + 1;
    v_common_qgrams NUMBER := 0;
    v_similarity  NUMBER;
	pp_string1 VARCHAR2(1000);
    pp_string2 VARCHAR2(1000);
BEGIN
    pp_string1 := UPPER(p_string1);
	pp_string2 := UPPER(p_string2);
	IF pp_string1 = pp_string2 THEN v_similarity := 1;
	ELSE
		FOR i IN 1..v_qgram_count LOOP
			IF INSTR(pp_string2, SUBSTR(pp_string1, i, v_qgram_size)) > 0 THEN
				v_common_qgrams := v_common_qgrams + 1;
			END IF;
		END LOOP;
		v_similarity := (v_common_qgrams * 2) / (v_string1_length + v_string2_length);
	END IF;
    -- Calcul de la similarité
	v_similarity := v_similarity * 100;
	RETURN v_similarity;
    --DBMS_OUTPUT.PUT_LINE('Similarity: ' || v_similarity);
END;
/

-- TESTS
SELECT 'LEV:', UTL_MATCH.edit_distance_similarity('Power BI', 'Poser BI') AS Distance FROM DUAL;
SELECT 'JW: ', UTL_MATCH.jaro_winkler_similarity('Power BI', 'Poser BI') AS Distance FROM DUAL;
SELECT 'Q-GRAM: ', CompareStr_QGram_Similar1('Power BI', 'Poser BI') AS Distance FROM DUAL;

SELECT
'Power BI', 'Poser BI',
UTL_MATCH.edit_distance_similarity('Power BI', 'Poser BI') AS Distance_LV, 
UTL_MATCH.jaro_winkler_similarity('Power BI', 'Poser BI') AS Distance_JW,
CompareStr_QGram_Similar1('Power BI', 'Poser BI') AS Distance_QG
FROM DUAL;

SELECT
'Audit-Conseil', 'Conseil-Audit',
UTL_MATCH.edit_distance_similarity('Audit-Conseil', 'Conseil-Audit') AS Distance_LV, 
UTL_MATCH.jaro_winkler_similarity('Audit-Conseil', 'Conseil-Audit') AS Distance_JW,
CompareStr_QGram_Similar1('Audit-Conseil', 'Conseil-Audit') AS Distance_QG
FROM DUAL;

SELECT
'Audit-Formation-Conseil', 'Conseil-Audit-Formation',
UTL_MATCH.edit_distance_similarity('Audit-Formation-Conseil', 'Conseil-Audit-Formation') AS Distance_LV, 
UTL_MATCH.jaro_winkler_similarity('Audit-Formation-Conseil', 'Conseil-Audit-Formation') AS Distance_JW,
CompareStr_QGram_Similar1('Audit-Formation-Conseil', 'Conseil-Audit-Formation') AS Distance_QG
FROM DUAL;

SELECT
'Tableaux croisés dynamiques', 'Tableau croisé dynamique',
UTL_MATCH.edit_distance_similarity('Tableaux croisés dynamiques', 'Tableau croisé dynamique') AS Distance_LV, 
UTL_MATCH.jaro_winkler_similarity('Tableaux croisés dynamiques', 'Tableau croisé dynamique') AS Distance_JW,
CompareStr_QGram_Similar1('Tableaux croisés dynamiques', 'Tableau croisé dynamique') AS Distance_QG
FROM DUAL;

SELECT
'Tableaux croisés dynamiques', 'Tableau croisé dynamique', Concatener_premieres_lettres('Tableaux croisés dynamiques'), Concatener_premieres_lettres('Tableau croisé dynamique'),
UTL_MATCH.edit_distance_similarity(Concatener_premieres_lettres('Tableaux croisés dynamiques'), Concatener_premieres_lettres('Tableau croisé dynamique')) AS Distance_LV, 
UTL_MATCH.jaro_winkler_similarity(Concatener_premieres_lettres('Tableaux croisés dynamiques'), Concatener_premieres_lettres('Tableau croisé dynamique')) AS Distance_JW,
CompareStr_QGram_Similar1(Concatener_premieres_lettres('Tableaux croisés dynamiques'), Concatener_premieres_lettres('Tableau croisé dynamique')) AS Distance_QG
FROM DUAL;

-- ==== MFB =======================================================================================================================

-- ==== MFB =======================================================================================================================
-- ==== MFB ===== Recherches d'information avancées ============ recherche intelligente ! =========================================
-- Une fonction pour effectuer des recherches très élaborées... !!! L'équivalent d'un CTRL-F élaboré
-- "S'écrit comme" selon une distance de similarité ou selon des synonymes etc...
-- CTRL-F élaboré : CONTROL-FIND ---->>>> CONTROL_F_MFB
-- ==== MFB =======================================================================================================================

-- ==== MFB =======================================================================================================================
CREATE OR REPLACE PROCEDURE CONTROL_F_MFB (NUMTAB NUMBER, LAFORMATIONDEMANDEE VARCHAR2, SEUIL1 NUMBER, SEUIL2 NUMBER) IS
-- La fonction CONTROL_F_MFB permet de réaliser des Recherches d'information avancées (recherches intelligentes)
-- dans une colonne d'une table dans une BD !
   REQ     		   VARCHAR2(2000);
   LAFORMATION     VARCHAR2(200);
   LATABLE		   VARCHAR2(200);
   LESCOLONNES_W1  VARCHAR2(200);
   LESCOLONNES_W3  VARCHAR2(200);
   LESCOLONNES_W4  VARCHAR2(200);
   NBREREPONSES    NUMBER;
   
BEGIN --CONTROL_F_MFB
  -- Quelle table et quelles colonnes utiliser (1.Domaine, 2.SousDomaine, 3.SousSousDomaine) ?
  IF NUMTAB = 1 THEN
    LATABLE        := 'DOMAINESFORMATION';
    LESCOLONNES_W1 := 'SELECT REFDOMAINEF, DOMAINEDEFORMATION, CHAINEACOMPARER, ';
    LESCOLONNES_W3 := 'SELECT REFDOMAINEF, DOMAINEDEFORMATION, CHAINEACOMPARER, NULL, NULL, NULL ';
    LESCOLONNES_W4 := 'SELECT DISTINCT REFDOMAINEF, DOMAINEDEFORMATION FROM W4 ';
	ELSE IF NUMTAB = 2 THEN
			 LATABLE        := 'SOUSDOMAINESFORMATION';
			 LESCOLONNES_W1 := 'SELECT REFDOMAINEF, SOUSDOMAINEDEFORMATION, CHAINEACOMPARER, ';
			 LESCOLONNES_W3 := 'SELECT REFDOMAINEF, SOUSDOMAINEDEFORMATION, CHAINEACOMPARER, NULL, NULL, NULL ';
			 LESCOLONNES_W4 := 'SELECT DISTINCT REFDOMAINEF, SOUSDOMAINEDEFORMATION FROM W4 ';
			ELSE IF NUMTAB = 3 THEN
					 LATABLE        := 'SOUSSOUSDOMAINESFORMATION';
					 LESCOLONNES_W1 := 'SELECT REFSOUSSOUSDOMAINEF, SOUSSOUSDOMAINEDEFORMATION, CHAINEACOMPARER, ';
					 LESCOLONNES_W3 := 'SELECT REFSOUSSOUSDOMAINEF, SOUSSOUSDOMAINEDEFORMATION, CHAINEACOMPARER, NULL, NULL, NULL ';
					 LESCOLONNES_W4 := 'SELECT DISTINCT REFSOUSSOUSDOMAINEF, SOUSSOUSDOMAINEDEFORMATION FROM W4 ';	
					END IF;
		END IF;
	END IF;
	
  -- Enlever les caratères inutiles dans la comparaison (La LAFORMATIONDEMANDEE devient la LAFORMATION)
  LAFORMATION := TransformerChaine(LAFORMATIONDEMANDEE);
  
  -- Calculer les distances de similarités (LV, JW, QG) de la LAFORMATION (saisie par le client) avec
  -- le contenu de la BD dans la colonne CHAINEACOMPARER
  -- W1 contient toutes les distances de similarité
  REQ := 'CREATE OR REPLACE VIEW W1 AS ' || LESCOLONNES_W1 ||
	 'UTL_MATCH.edit_distance_similarity(CHAINEACOMPARER, ' || CHR(39) || LAFORMATION || CHR(39) || ') EDS, ' ||
	 'UTL_MATCH.jaro_winkler_similarity (CHAINEACOMPARER, ' || CHR(39) || LAFORMATION || CHR(39) || ') JWS, ' ||
	 'CompareStr_QGram_Similar1(CHAINEACOMPARER, ' || CHR(39) || LAFORMATION || CHR(39) || ') QG1   
  FROM ' || LATABLE;
  DBMS_OUTPUT.PUT_LINE('Requête: ' || REQ);
  EXECUTE IMMEDIATE REQ;
  
  -- W2 contient seulement les distances de similarité supérieures à certains seuils
  -- Première partie du résulat 
  REQ := 'CREATE OR REPLACE VIEW W2 AS SELECT * FROM W1 
  WHERE 
  (EDS >= ' || SEUIL1 || ' OR JWS >= '  || SEUIL1 || ' OR  QG1 >= '  || SEUIL1 || ') 
  AND 
  (EDS >= ' || SEUIL2 || ' AND JWS >= ' || SEUIL2 || ' AND QG1 >= '  || SEUIL2 || ')';
  EXECUTE IMMEDIATE REQ;
  
  -- W3 donne les valeurs  qui contiennent TOUT le mot demandé LAFORMATION avec LIKE %???% indépendamment de sa position
  -- Deuxième partie du résulat 
  -------------->>>>>>>>>>>>>>>>>>>>>> WHERE REGEXP_LIKE(SOUSSOUSDOMAINEDEFORMATION, 'Tableau croisé dynamique', 'i');
  REQ := 'CREATE OR REPLACE VIEW W3(A, B, C, D, E, F) AS ' || LESCOLONNES_W3 ||
  ' FROM ' || LATABLE ||
  ' WHERE CHAINEACOMPARER LIKE ' || CHR(39) || '%' || LAFORMATION || '%' || CHR(39) ;  
  --DBMS_OUTPUT.PUT_LINE('Requête: ' || REQ);
  EXECUTE IMMEDIATE REQ;

  -- W4 contient l'ensemble des valeurs similaires retouvées AVEC éventuellement des doublons
  REQ := 'CREATE OR REPLACE VIEW W4 AS SELECT * FROM W2 UNION  SELECT * FROM W3'; 
  EXECUTE IMMEDIATE REQ;
  
  -- W5 contient l'ensemble des valeurs similaires retouvées SANS les doublons
  REQ := 'CREATE OR REPLACE VIEW W5 AS ' || LESCOLONNES_W4; 
  EXECUTE IMMEDIATE REQ;
  
  -- Comptabiliser le nombre de réponses
  REQ := 'SELECT COUNT(*) FROM W5'; 
  EXECUTE IMMEDIATE REQ INTO NBREREPONSES ;
  DBMS_OUTPUT.PUT_LINE('Le nombre de réponse(s) : [à propos de : -->>' || LAFORMATIONDEMANDEE || '<<--] est : ' || NBREREPONSES);

END; --CONTROL_F_MFB
/


-- ==== MFB =======================================================================================================================
-- ==== MFB =======================================================================================================================


-- ==== MFB =======================================================================================================================
-- ==== MFB =========================== Recherche avancée de texte dans Oracle ====================================================
/*
La fonction CONTAINS est utilisée dans le contexte d'Oracle Text, un composant d'Oracle Database 
qui permet de réaliser des recherches textuelles avancées. Pour utiliser CONTAINS, 
vous devez avoir activé Oracle Text sur votre base de données et configuré un index textuel approprié sur la colonne que vous souhaitez rechercher. 
Voici comment utiliser la fonction CONTAINS dans Oracle Text :

Activer Oracle Text : Assurez-vous que Oracle Text est activé sur votre base de données. 
Vous pouvez l'activer en exécutant la commande suivante en tant qu'administrateur de base de données :

sql - Copy code
EXEC CTX_DDL.CREATE_PREFERENCE('GLOBAL_DATASTORE', 'FILE_DATASTORE');

Créer un index textuel : Vous devez créer un index textuel sur la colonne que vous souhaitez rechercher. 
Par exemple, si votre colonne de formation s'appelle formation_nom et qu'elle est dans la table liste_formations, 
vous pouvez créer un index comme ceci :

sql - Copy code
CREATE INDEX formation_text_index ON liste_formations(formation_nom)
INDEXTYPE IS CTXSYS.CONTEXT;

Effectuer une recherche avec CONTAINS : Une fois que vous avez activé Oracle Text et créé un index, 
vous pouvez utiliser CONTAINS pour effectuer des recherches textuelles. 
Par exemple, pour rechercher des formations contenant les mots "Excel", "Tableaux croisés dynamiques" 
avec une tolérance de 70 % de similarité (pour gérer des erreurs de frappe ou des abréviations), vous pouvez exécuter la requête suivante :

sql - Copy code
SELECT formation_nom
FROM liste_formations
WHERE CONTAINS(formation_nom, 'Excel Tableaux~0.7 croisées~0.7 dynamiques~0.7', 1) > 0;

formation_nom est la colonne que vous recherchez.
'Excel Tableaux~0.7 croisées~0.7 dynamiques~0.7' est la chaîne de recherche avec la tolérance de similarité.
1 est le nombre de colonnes que vous recherchez.
Interpréter les résultats : La requête renverra les formations correspondant à votre recherche, 
en tenant compte de la similarité. Les résultats sont triés en fonction de leur pertinence par rapport à votre recherche.

Gestion des stopwords et des thésaurus : Vous pouvez également gérer les stopwords (mots courants ignorés) et 
les thésaurus (synonymes) pour affiner davantage votre recherche.

Oracle Text offre de nombreuses fonctionnalités avancées pour la recherche textuelle, 
et la configuration peut être complexe en fonction de vos besoins. Assurez-vous de consulter la documentation d'Oracle 
pour plus de détails sur la configuration et l'utilisation d'Oracle Text dans votre environnement spécifique.


Il existe des méthodes plus avancées pour effectuer des recherches avancées de texte en utilisant des techniques d'intelligence artificielle. 
Voici deux approches courantes qui peuvent être plus astucieuses :

Recherche sémantique : Plutôt que de dépendre strictement de correspondances de mots ou d'expressions, 
la recherche sémantique vise à comprendre le sens du texte. Cela peut être réalisé en utilisant 
des modèles de traitement automatique du langage naturel (NLP) tels que BERT, GPT, 
ou d'autres modèles avancés. Ces modèles peuvent interpréter le contexte et la signification des mots dans une phrase, 
ce qui permet de trouver des résultats plus pertinents, même en cas d'erreurs de frappe ou d'abréviations. 
Ces modèles sont généralement entraînés sur de vastes ensembles de données textuelles et peuvent fournir des résultats de recherche de haute qualité.

Recherche par similarité de vecteurs de mots : Une autre approche basée sur l'IA consiste à utiliser des représentations vectorielles de mots 
(Word Embeddings) pour mesurer la similarité sémantique entre le texte de la demande de l'utilisateur et les textes de formation. 
Vous pouvez utiliser des modèles de Word Embeddings pré-entraînés comme Word2Vec, FastText ou les couches d'embedding de modèles NLP avancés. 
En mesurant la similarité des vecteurs, vous pouvez trouver des formations qui sont sémantiquement proches de la demande de l'utilisateur.

Ces méthodes nécessitent généralement des compétences en apprentissage automatique et en traitement du langage naturel pour les mettre en œuvre. 
Voici comment cela pourrait fonctionner en utilisant un modèle de Word Embeddings :

Entraînement du modèle de Word Embeddings : Entraînez un modèle de Word Embeddings sur un grand corpus de textes, y compris la liste des formations.

Transformation des requêtes de l'utilisateur en vecteurs : Lorsqu'un utilisateur soumet une demande, 
transformez le texte en vecteurs de mots en utilisant le modèle de Word Embeddings.

Calcul de la similarité : Comparez les vecteurs de la demande de l'utilisateur avec les vecteurs de textes de formation pour mesurer leur similarité.
Vous pouvez utiliser des mesures de similarité telles que la similarité cosinus.

Sélection des formations les plus similaires : Sélectionnez les formations qui ont les vecteurs les plus similaires à la demande de l'utilisateur.

Cette approche basée sur l'IA peut offrir des résultats de recherche plus robustes et adaptés à l'intention de l'utilisateur. 
Cependant, sa mise en œuvre est plus complexe que les méthodes traditionnelles de recherche de texte. 
Elle nécessite également des ressources matérielles et logicielles pour l'entraînement des modèles et leur utilisation en production.
*/

-- Création d'un index textuel afin d'utiliser la fonction CONTAINS
EXEC CTX_DDL.CREATE_PREFERENCE('GLOBAL_DATASTORE', 'FILE_DATASTORE');
CREATE INDEX ndx_soussousform2 ON SOUSSOUSDOMAINESFORMATION(SOUSSOUSDOMAINEDEFORMATION)
INDEXTYPE IS CTXSYS.CONTEXT;


SELECT SOUSSOUSDOMAINEDEFORMATION
FROM SOUSSOUSDOMAINESFORMATION
WHERE REGEXP_LIKE(SOUSSOUSDOMAINEDEFORMATION, 'Excel.*Tableaux croisés dynamiques', 'i');

SELECT SOUSSOUSDOMAINEDEFORMATION
FROM SOUSSOUSDOMAINESFORMATION
WHERE REGEXP_LIKE(SOUSSOUSDOMAINEDEFORMATION, 'Tableau croisé dynamique', 'i');

SELECT SOUSSOUSDOMAINEDEFORMATION
FROM SOUSSOUSDOMAINESFORMATION
WHERE REGEXP_LIKE(SOUSSOUSDOMAINEDEFORMATION, 'Tableaux croisé', 'i');

SELECT SOUSSOUSDOMAINEDEFORMATION
FROM SOUSSOUSDOMAINESFORMATION
WHERE REGEXP_LIKE(SOUSSOUSDOMAINEDEFORMATION, '*Tableau*croisé*dynamique*', 'i');

SELECT SOUSSOUSDOMAINEDEFORMATION
FROM SOUSSOUSDOMAINESFORMATION
WHERE REGEXP_LIKE(SOUSSOUSDOMAINEDEFORMATION, 'Tableau croisé dynamique', 'i');

SELECT SOUSSOUSDOMAINEDEFORMATION
FROM SOUSSOUSDOMAINESFORMATION
WHERE REGEXP_LIKE(SOUSSOUSDOMAINEDEFORMATION, 'Tableaux croisé', 'i');

SELECT SOUSSOUSDOMAINEDEFORMATION
FROM SOUSSOUSDOMAINESFORMATION
WHERE REGEXP_LIKE(SOUSSOUSDOMAINEDEFORMATION, 'Power', 'i');

SELECT SOUSSOUSDOMAINEDEFORMATION
FROM SOUSSOUSDOMAINESFORMATION
WHERE REGEXP_LIKE(SOUSSOUSDOMAINEDEFORMATION, 'Power B', 'i');


SELECT SOUSSOUSDOMAINEDEFORMATION
FROM SOUSSOUSDOMAINESFORMATION
WHERE REGEXP_LIKE(SOUSSOUSDOMAINEDEFORMATION, 'Excel.*Tableaux croisés dynamiques', 'i');

SELECT SOUSSOUSDOMAINEDEFORMATION
FROM SOUSSOUSDOMAINESFORMATION
WHERE REGEXP_LIKE(SOUSSOUSDOMAINEDEFORMATION, 'Tableau croisé dynamique', 'i');

SELECT SOUSSOUSDOMAINEDEFORMATION
FROM SOUSSOUSDOMAINESFORMATION
WHERE CONTAINS(SOUSSOUSDOMAINEDEFORMATION, 'Excel Tableaux~0.7 croisées~0.7 dynamiques~0.7', 1) > 0;

SELECT SOUSSOUSDOMAINEDEFORMATION
FROM SOUSSOUSDOMAINESFORMATION
WHERE CONTAINS(SOUSSOUSDOMAINEDEFORMATION, 'Excel Tableau~0.7 croisé~0.7 dynamique~0.7', 1) > 0;

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

-- ==== MFB =======================================================================================================================
----- Jointure des TROIS tables de données de la BD EN SQL
-- ==== MFB =======================================================================================================================
CREATE OR REPLACE VIEW TOUTESLESFORMATIONS AS 
SELECT 
DOMAINESFORMATION.SIREN_ORGANISME,     
DOMAINESFORMATION.REFDOMAINEF,
DOMAINESFORMATION.DOMAINEDEFORMATION,
DOMAINESFORMATION.CHAINEACOMPARER AS DOMAINEFORM,

SOUSDOMAINESFORMATION.REFSOUSDOMAINEF,
SOUSDOMAINESFORMATION.SOUSDOMAINEDEFORMATION,
SOUSDOMAINESFORMATION.CHAINEACOMPARER AS SOUSDOMAINEFORM,

SOUSSOUSDOMAINESFORMATION.REFSOUSSOUSDOMAINEF,
SOUSSOUSDOMAINESFORMATION.SOUSSOUSDOMAINEDEFORMATION,
SOUSSOUSDOMAINESFORMATION.CHAINEACOMPARER AS SOUSSOUSDOMAINEFORM,
SOUSSOUSDOMAINESFORMATION.DUREEFORMATIONENJOUR,
SOUSSOUSDOMAINESFORMATION.NOTEFORMATIONSURCINQ,
SOUSSOUSDOMAINESFORMATION.NOMBREAVISFORMATION,
SOUSSOUSDOMAINESFORMATION.COUTFORMATION,
SOUSSOUSDOMAINESFORMATION.DATEDEBUT1FORMATION,
SOUSSOUSDOMAINESFORMATION.DATEFIN1FORMATION,
SOUSSOUSDOMAINESFORMATION.DATEDEBUT2FORMATION,
SOUSSOUSDOMAINESFORMATION.DATEFIN2FORMATION

FROM DOMAINESFORMATION, SOUSDOMAINESFORMATION, SOUSSOUSDOMAINESFORMATION
WHERE DOMAINESFORMATION.REFDOMAINEF = SOUSDOMAINESFORMATION.REFDOMAINEF
AND SOUSDOMAINESFORMATION.REFSOUSDOMAINEF = SOUSSOUSDOMAINESFORMATION.REFSOUSDOMAINEF ;

SELECT * FROM TOUTESLESFORMATIONS;
-- ==== MFB =======================================================================================================================
CREATE OR REPLACE VIEW TOUTESLESFORMATIONS AS 
SELECT 
DOMAINESFORMATION.SIREN_ORGANISME,     
DOMAINESFORMATION.REFDOMAINEF,
DOMAINESFORMATION.DOMAINEDEFORMATION,
--DOMAINESFORMATION.CHAINEACOMPARER,

SOUSDOMAINESFORMATION.REFSOUSDOMAINEF,
SOUSDOMAINESFORMATION.SOUSDOMAINEDEFORMATION,
--SOUSDOMAINESFORMATION.CHAINEACOMPARER,

SOUSSOUSDOMAINESFORMATION.REFSOUSSOUSDOMAINEF,
SOUSSOUSDOMAINESFORMATION.SOUSSOUSDOMAINEDEFORMATION

FROM DOMAINESFORMATION, SOUSDOMAINESFORMATION, SOUSSOUSDOMAINESFORMATION
WHERE DOMAINESFORMATION.REFDOMAINEF = SOUSDOMAINESFORMATION.REFDOMAINEF
AND SOUSDOMAINESFORMATION.REFSOUSDOMAINEF = SOUSSOUSDOMAINESFORMATION.REFSOUSDOMAINEF ;

SELECT * FROM TOUTESLESFORMATIONS;
-- ==== MFB =======================================================================================================================
----- Jointure des TROIS tables de données de la BD EN SQL
-- ==== MFB =======================================================================================================================


-- ==== MFB =======================================================================================================================
----- Destruction des tables de la BD de la palteforme
-- ==== MFB =======================================================================================================================

DROP TABLE CLIENTS_FORMATION;
DROP TABLE ORGANISMES_FORMATION;
DROP TABLE DOMAINESFORMATION;
DROP TABLE SOUSDOMAINESFORMATION;
DROP TABLE SOUSSOUSDOMAINESFORMATION;

-- ==== MFB =======================================================================================================================
----- Création des tables de la BD de la palteforme : Création des tables du projet (Big Plateforme de formation)
-- ==== MFB =======================================================================================================================

-- ==== MFB =======================================================================================================================
----- >> Tables : ORGANISMES ; CLIENTS ; FORMATEURS... et d'autres tables ?!
              
----- >> Les mégas tables des formations proposées par tous les organismes à la fois
----- >> Tables des formations rcensées : 1.DOMAINESFORMATION ; 2.SOUSDOMAINESFORMATION ; 3.SOUSSOUSDOMAINESFORMATION                            
-- ==== MFB =======================================================================================================================
/*
CREATE TABLE CLIENTS_FORMATION 
(

);
*/

CREATE TABLE ORGANISMES_FORMATION 
(
RAISON_SOCIALE_ORGANISME	VARCHAR2(100),
SIREN_ORGANISME     		VARCHAR2(15), -- représente des numériques à voir si SIRET ou SIREN
NUM_DA_ORGANISME			VARCHAR2(15),
EFFECTIF_ORGANISME			NUMBER(4),
ADR_VOIE_ORGANISME			VARCHAR2(100),		
ADR_CODEPOSTAL_ORGANISME	VARCHAR2(5),
ADR_VILLE_ORGANISME			VARCHAR2(100),
CONSTRAINT PK_ORGANISMES_FORMATION PRIMARY KEY (SIREN_ORGANISME)
);

CREATE TABLE DOMAINESFORMATION 
(
SIREN_ORGANISME     VARCHAR2(15), -- représente des numériques à voir si SIRET ou SIREN
REFDOMAINEF         VARCHAR2(50),
DOMAINEDEFORMATION  VARCHAR2(200),
CHAINEACOMPARER		VARCHAR2(200), -- Colonne des formations transformée avec la fonction TransformerChaine (DOMAINEDEFORMATION)
CLE_INDEXAGE_MFB	VARCHAR2(200), -- Colonne des formations transformée avec la fonction Concatener_premieres_lettres(SOUSSOUSDOMAINEDEFORMATION)
CONSTRAINT PK_DOMAINESFORMATION PRIMARY KEY (REFDOMAINEF)
--CONSTRAINT FK_DOMFORM FOREIGN KEY (SIREN_ORGANISME) REFERENCES ORGANISME
);

CREATE TABLE SOUSDOMAINESFORMATION 
(
REFDOMAINEF         	VARCHAR2(50),
REFSOUSDOMAINEF         VARCHAR2(50),
SOUSDOMAINEDEFORMATION  VARCHAR2(200),
CHAINEACOMPARER			VARCHAR2(200), -- Colonne des formations transformée avec la fonction TransformerChaine (SOUSDOMAINEDEFORMATION)
CLE_INDEXAGE_MFB		VARCHAR2(200), -- Colonne des formations transformée avec la fonction Concatener_premieres_lettres(SOUSSOUSDOMAINEDEFORMATION)
CONSTRAINT PK_SOUSDOMAINESFORMATION PRIMARY KEY (REFSOUSDOMAINEF)
--CONSTRAINT FK_SOUSDOMFORM FOREIGN KEY (REFDOMAINEF) REFERENCES DOMAINESFORMATION(REFDOMAINEF)
);

CREATE TABLE SOUSSOUSDOMAINESFORMATION 
(
REFSOUSDOMAINEF         	VARCHAR2(50),
REFSOUSSOUSDOMAINEF         VARCHAR2(50),
SOUSSOUSDOMAINEDEFORMATION  VARCHAR2(200),
DUREEFORMATIONENJOUR		NUMBER,
NOTEFORMATIONSURCINQ		NUMBER,
NOMBREAVISFORMATION			NUMBER,
COUTFORMATION				NUMBER,
DATEDEBUT1FORMATION			DATE,
DATEFIN1FORMATION			DATE,
DATEDEBUT2FORMATION			DATE,
DATEFIN2FORMATION			DATE,
CHAINEACOMPARER				VARCHAR2(200), -- Colonne des formations transformée avec la fonction TransformerChaine (SOUSSOUSDOMAINEDEFORMATION)
CLE_INDEXAGE_MFB			VARCHAR2(200), -- Colonne des formations transformée avec la fonction Concatener_premieres_lettres(SOUSSOUSDOMAINEDEFORMATION)
CONSTRAINT PK_SOUSSOUSDOMAINESFORMATION PRIMARY KEY (REFSOUSSOUSDOMAINEF)
--CONSTRAINT FK_SOUSSOUSDOMFORM FOREIGN KEY (REFSOUSSOUSDOMAINEF) REFERENCES SOUSDOMAINESFORMATION(REFSOUSDOMAINEF)
);

--CREATE INDEX ndx_soussousform ON SOUSSOUSDOMAINESFORMATION(SOUSSOUSDOMAINEDEFORMATION);

-- ==== MFB =======================================================================================================================
----- Insertion des données de la BD EN SQL : Création des données du projet de la plateforme de formation 
-- ==== MFB =======================================================================================================================

-- ==== MFB =======================================================================================================================
----- >> Insertion dans la Table : ORGANISMES
-- ==== MFB =======================================================================================================================

/*
RAISON_SOCIALE_ORGANISME	VARCHAR2(100),
SIREN_ORGANISME     		VARCHAR2(15),
NUM_DA_ORGANISME			VARCHAR2(15),
EFFECTIF_ORGANISME			NUMBER(4),
ADR_VOIE_ORGANISME			VARCHAR2(100),		
ADR_CODEPOSTAL_ORGANISME	VARCHAR2(5),
ADR_VILLE_ORGANISME			VARCHAR2(100),
*/
INSERT INTO ORGANISMES_FORMATION VALUES ('CEGOS', '552024671', '77777777777', 555, NULL, NULL, 'Paris');
INSERT INTO ORGANISMES_FORMATION VALUES ('MYMOOC', '552024672', '77777777777', 555, NULL, NULL, 'Paris');
INSERT INTO ORGANISMES_FORMATION VALUES ('COURSERA', '552024673', '77777777777', 555, NULL, NULL, 'Paris');
INSERT INTO ORGANISMES_FORMATION VALUES ('MA FORMATION', '552024674', '77777777777', 555, NULL, NULL, 'Paris');
INSERT INTO ORGANISMES_FORMATION VALUES ('T. LEARN', '552024675', '77777777777', 555, NULL, NULL, 'Paris');
INSERT INTO ORGANISMES_FORMATION VALUES ('UDEMY', '552024676', '77777777777', 555, NULL, NULL, 'Paris');
COMMIT;
SELECT * FROM ORGANISMES_FORMATION ORDER BY 1, 7;

-- ==== MFB =======================================================================================================================
----- >> Insertion dans la Table 1 : DOMAINESFORMATION
-- ==== MFB =======================================================================================================================

INSERT INTO DOMAINESFORMATION VALUES ('552024671', 'CEGOS_DOMAINEF-01', 'Achats', NULL, NULL);
INSERT INTO DOMAINESFORMATION VALUES ('552024671', 'CEGOS_DOMAINEF-02', 'Assistant(e)', NULL, NULL);
INSERT INTO DOMAINESFORMATION VALUES ('552024671', 'CEGOS_DOMAINEF-03', 'Audit - Organisation - Conseil', NULL, NULL);
INSERT INTO DOMAINESFORMATION VALUES ('552024671', 'CEGOS_DOMAINEF-04', 'Banque', NULL, NULL);
INSERT INTO DOMAINESFORMATION VALUES ('552024671', 'CEGOS_DOMAINEF-05', 'Bureautique - PAO/CAO', NULL, NULL);
INSERT INTO DOMAINESFORMATION VALUES ('552024671', 'CEGOS_DOMAINEF-06', 'Certifications par domaine', NULL, NULL);
INSERT INTO DOMAINESFORMATION VALUES ('552024671', 'CEGOS_DOMAINEF-07', 'Certifications par partenaires', NULL, NULL);
INSERT INTO DOMAINESFORMATION VALUES ('552024671', 'CEGOS_DOMAINEF-08', 'Coaching', NULL, NULL);
INSERT INTO DOMAINESFORMATION VALUES ('552024671', 'CEGOS_DOMAINEF-09', 'Commercial - Ventes', NULL, NULL);
INSERT INTO DOMAINESFORMATION VALUES ('552024671', 'CEGOS_DOMAINEF-10', 'Communication', NULL, NULL);
INSERT INTO DOMAINESFORMATION VALUES ('552024671', 'CEGOS_DOMAINEF-11', 'Comptabilité - Fiscalité', NULL, NULL);
INSERT INTO DOMAINESFORMATION VALUES ('552024671', 'CEGOS_DOMAINEF-12', 'Conduite du changement', NULL, NULL);
INSERT INTO DOMAINESFORMATION VALUES ('552024671', 'CEGOS_DOMAINEF-13', 'Contrôle de gestion', NULL, NULL);
INSERT INTO DOMAINESFORMATION VALUES ('552024671', 'CEGOS_DOMAINEF-14', 'Création d’entreprise', NULL, NULL);
INSERT INTO DOMAINESFORMATION VALUES ('552024671', 'CEGOS_DOMAINEF-15', 'Digital', NULL, NULL);
INSERT INTO DOMAINESFORMATION VALUES ('552024671', 'CEGOS_DOMAINEF-16', 'Direction', NULL, NULL);
INSERT INTO DOMAINESFORMATION VALUES ('552024671', 'CEGOS_DOMAINEF-17', 'Droit', NULL, NULL);
INSERT INTO DOMAINESFORMATION VALUES ('552024671', 'CEGOS_DOMAINEF-18', 'Droit des affaires', NULL, NULL);
INSERT INTO DOMAINESFORMATION VALUES ('552024671', 'CEGOS_DOMAINEF-19', 'Développement personnel', NULL, NULL);
INSERT INTO DOMAINESFORMATION VALUES ('552024671', 'CEGOS_DOMAINEF-20', 'Efficacité professionnelle', NULL, NULL);
INSERT INTO DOMAINESFORMATION VALUES ('552024671', 'CEGOS_DOMAINEF-21', 'Finance - Trésorerie', NULL, NULL);
INSERT INTO DOMAINESFORMATION VALUES ('552024671', 'CEGOS_DOMAINEF-22', 'Formation', NULL, NULL);
INSERT INTO DOMAINESFORMATION VALUES ('552024671', 'CEGOS_DOMAINEF-23', 'Formations OPCOMMERCE', NULL, NULL);
INSERT INTO DOMAINESFORMATION VALUES ('552024671', 'CEGOS_DOMAINEF-24', 'Gestion du temps', NULL, NULL);
INSERT INTO DOMAINESFORMATION VALUES ('552024671', 'CEGOS_DOMAINEF-25', 'Immo', NULL, NULL);
INSERT INTO DOMAINESFORMATION VALUES ('552024671', 'CEGOS_DOMAINEF-26', 'Informatique - Système d''Information', NULL, NULL);
INSERT INTO DOMAINESFORMATION VALUES ('552024671', 'CEGOS_DOMAINEF-27', 'Innovation', NULL, NULL);
INSERT INTO DOMAINESFORMATION VALUES ('552024671', 'CEGOS_DOMAINEF-28', 'International', NULL, NULL);
INSERT INTO DOMAINESFORMATION VALUES ('552024671', 'CEGOS_DOMAINEF-29', 'Logistique', NULL, NULL);
INSERT INTO DOMAINESFORMATION VALUES ('552024671', 'CEGOS_DOMAINEF-30', 'Management et leadership', NULL, NULL);
INSERT INTO DOMAINESFORMATION VALUES ('552024671', 'CEGOS_DOMAINEF-31', 'Marketing - Marketing digital', NULL, NULL);
INSERT INTO DOMAINESFORMATION VALUES ('552024671', 'CEGOS_DOMAINEF-32', 'Paie/Admin.', NULL, NULL);
INSERT INTO DOMAINESFORMATION VALUES ('552024671', 'CEGOS_DOMAINEF-33', 'Production - Lean', NULL, NULL);
INSERT INTO DOMAINESFORMATION VALUES ('552024671', 'CEGOS_DOMAINEF-34', 'Projet', NULL, NULL);
INSERT INTO DOMAINESFORMATION VALUES ('552024671', 'CEGOS_DOMAINEF-35', 'QSE', NULL, NULL);
INSERT INTO DOMAINESFORMATION VALUES ('552024671', 'CEGOS_DOMAINEF-36', 'QVT', NULL, NULL);
INSERT INTO DOMAINESFORMATION VALUES ('552024671', 'CEGOS_DOMAINEF-37', 'RSE', NULL, NULL);
INSERT INTO DOMAINESFORMATION VALUES ('552024671', 'CEGOS_DOMAINEF-38', 'Relation client', NULL, NULL);
INSERT INTO DOMAINESFORMATION VALUES ('552024671', 'CEGOS_DOMAINEF-39', 'Ressources humaines', NULL, NULL);
INSERT INTO DOMAINESFORMATION VALUES ('552024671', 'CEGOS_DOMAINEF-40', 'Secteur public', NULL, NULL);
INSERT INTO DOMAINESFORMATION VALUES ('552024671', 'CEGOS_DOMAINEF-41', 'Soft skills', NULL, NULL);
INSERT INTO DOMAINESFORMATION VALUES ('552024671', 'CEGOS_DOMAINEF-42', 'Travail à distance', NULL, NULL);
INSERT INTO DOMAINESFORMATION VALUES ('552024671', 'CEGOS_DOMAINEF-43', 'Web', NULL, NULL);

INSERT INTO DOMAINESFORMATION VALUES ('MFB1', 'MFB1_DOMAINEF-01', 'Achats - Ventes', NULL, NULL);
INSERT INTO DOMAINESFORMATION VALUES ('MFB1', 'MFB1_DOMAINEF-03', 'Conseil - Audit - Organisation', NULL, NULL);
INSERT INTO DOMAINESFORMATION VALUES ('MFB1', 'MFB1_DOMAINEF-04', 'Banques', NULL, NULL);
INSERT INTO DOMAINESFORMATION VALUES ('MFB1', 'MFB1_DOMAINEF-05', 'Bureautique - Pagination Assistée par Ordinateur PAO - Conception Assistée par Ordinateur CAO', NULL, NULL);
INSERT INTO DOMAINESFORMATION VALUES ('MFB1', 'MFB1_DOMAINEF-06', 'Certifications', NULL, NULL);
INSERT INTO DOMAINESFORMATION VALUES ('MFB1', 'MFB1_DOMAINEF-08', 'Coaching', NULL, NULL);
INSERT INTO DOMAINESFORMATION VALUES ('MFB1', 'MFB1_DOMAINEF-09', 'Commercial - Ventes', NULL, NULL);
INSERT INTO DOMAINESFORMATION VALUES ('MFB1', 'MFB1_DOMAINEF-10', 'Communication', NULL, NULL);
INSERT INTO DOMAINESFORMATION VALUES ('MFB1', 'MFB1_DOMAINEF-11', 'Fiscalité - Comptabilité', NULL, NULL);
INSERT INTO DOMAINESFORMATION VALUES ('MFB1', 'MFB1_DOMAINEF-12', 'Conduite du changement', NULL, NULL);
INSERT INTO DOMAINESFORMATION VALUES ('MFB1', 'MFB1_DOMAINEF-13', 'Contrôle de gestion', NULL, NULL);
INSERT INTO DOMAINESFORMATION VALUES ('MFB1', 'MFB1_DOMAINEF-14', 'Création d’entreprise - Entrepenariat', NULL, NULL);
INSERT INTO DOMAINESFORMATION VALUES ('MFB1', 'MFB1_DOMAINEF-15', 'Digital - Numérique', NULL, NULL);
INSERT INTO DOMAINESFORMATION VALUES ('MFB1', 'MFB1_DOMAINEF-18', 'Droit des affaires', NULL, NULL);
INSERT INTO DOMAINESFORMATION VALUES ('MFB1', 'MFB1_DOMAINEF-19', 'Développement personnel', NULL, NULL);
INSERT INTO DOMAINESFORMATION VALUES ('MFB1', 'MFB1_DOMAINEF-20', 'Efficacité professionnelle', NULL, NULL);
INSERT INTO DOMAINESFORMATION VALUES ('MFB1', 'MFB1_DOMAINEF-21', 'Finance - Trésorerie', NULL, NULL);
INSERT INTO DOMAINESFORMATION VALUES ('MFB1', 'MFB1_DOMAINEF-22', 'Formation', NULL, NULL);
INSERT INTO DOMAINESFORMATION VALUES ('MFB1', 'MFB1_DOMAINEF-23', 'Formations OPCOMMERCE', NULL, NULL);
INSERT INTO DOMAINESFORMATION VALUES ('MFB1', 'MFB1_DOMAINEF-24', 'Gestion du temps', NULL, NULL);
INSERT INTO DOMAINESFORMATION VALUES ('MFB1', 'MFB1_DOMAINEF-25', 'DOODLE', NULL, NULL);
INSERT INTO DOMAINESFORMATION VALUES ('MFB1', 'MFB1_DOMAINEF-26', 'Informatique - Traitement numérique des données - SI', NULL, NULL);
INSERT INTO DOMAINESFORMATION VALUES ('MFB1', 'MFB1_DOMAINEF-27', 'Innovation - Brevets', NULL, NULL);
INSERT INTO DOMAINESFORMATION VALUES ('MFB1', 'MFB1_DOMAINEF-28', 'Gestion des ressources huamines', NULL, NULL);
INSERT INTO DOMAINESFORMATION VALUES ('MFB1', 'MFB1_DOMAINEF-29', 'Logistique', NULL, NULL);
INSERT INTO DOMAINESFORMATION VALUES ('MFB1', 'MFB1_DOMAINEF-30', 'Management et leadership', NULL, NULL);
INSERT INTO DOMAINESFORMATION VALUES ('MFB1', 'MFB1_DOMAINEF-31', 'Marketing - Marketing digital', NULL, NULL);
INSERT INTO DOMAINESFORMATION VALUES ('MFB1', 'MFB1_DOMAINEF-32', 'Paie - Administration de la paie - GRH', NULL, NULL);
INSERT INTO DOMAINESFORMATION VALUES ('MFB1', 'MFB1_DOMAINEF-33', 'Production - Lean', NULL, NULL);
INSERT INTO DOMAINESFORMATION VALUES ('MFB1', 'MFB1_DOMAINEF-34', 'Projet', NULL, NULL);
INSERT INTO DOMAINESFORMATION VALUES ('MFB1', 'MFB1_DOMAINEF-35', 'QSE', NULL, NULL);
INSERT INTO DOMAINESFORMATION VALUES ('MFB1', 'MFB1_DOMAINEF-36', 'QVT', NULL, NULL);
INSERT INTO DOMAINESFORMATION VALUES ('MFB1', 'MFB1_DOMAINEF-37', 'RSE', NULL, NULL);
INSERT INTO DOMAINESFORMATION VALUES ('MFB1', 'MFB1_DOMAINEF-38', 'CRM', NULL, NULL);
INSERT INTO DOMAINESFORMATION VALUES ('MFB1', 'MFB1_DOMAINEF-39', 'RH', NULL, NULL);
INSERT INTO DOMAINESFORMATION VALUES ('MFB1', 'MFB1_DOMAINEF-40', 'Secteur public', NULL, NULL);
INSERT INTO DOMAINESFORMATION VALUES ('MFB1', 'MFB1_DOMAINEF-41', 'Compétences générales', NULL, NULL);
INSERT INTO DOMAINESFORMATION VALUES ('MFB1', 'MFB1_DOMAINEF-42', 'Télétravail', NULL, NULL);
INSERT INTO DOMAINESFORMATION VALUES ('MFB1', 'MFB1_DOMAINEF-43', 'WWW', NULL, NULL);
COMMIT;
SELECT * FROM DOMAINESFORMATION ORDER BY 1, 2;

UPDATE DOMAINESFORMATION SET CHAINEACOMPARER = TransformerChaine(DOMAINEDEFORMATION);
UPDATE DOMAINESFORMATION SET CLE_INDEXAGE_MFB = Concatener_premieres_lettres(DOMAINEDEFORMATION);
UPDATE DOMAINESFORMATION SET CLE_INDEXAGE_MFB = TransformerChaine(CLE_INDEXAGE_MFB);
COMMIT;
SELECT * FROM DOMAINESFORMATION ORDER BY 1, 2;

-- ==== MFB =======================================================================================================================
----- >> Insertion dans la Table 2 : SOUSDOMAINESFORMATION
-- ==== MFB =======================================================================================================================

INSERT INTO SOUSDOMAINESFORMATION VALUES ('CEGOS_DOMAINEF-04', 'CEGOS_DOMAINEF-04-01', 'Gestion d''actifs', NULL, NULL);
INSERT INTO SOUSDOMAINESFORMATION VALUES ('CEGOS_DOMAINEF-04', 'CEGOS_DOMAINEF-04-02', 'Gestion du Patrimoine', NULL, NULL);
INSERT INTO SOUSDOMAINESFORMATION VALUES ('CEGOS_DOMAINEF-04', 'CEGOS_DOMAINEF-04-03', 'Gestion des risques et Bâle III', NULL, NULL);
INSERT INTO SOUSDOMAINESFORMATION VALUES ('CEGOS_DOMAINEF-04', 'CEGOS_DOMAINEF-04-04', 'Contrôle interne et conformité', NULL, NULL);
INSERT INTO SOUSDOMAINESFORMATION VALUES ('CEGOS_DOMAINEF-04', 'CEGOS_DOMAINEF-04-05', 'Comptabilité, normes IFRS, contrôle de gestion', NULL, NULL);
INSERT INTO SOUSDOMAINESFORMATION VALUES ('CEGOS_DOMAINEF-04', 'CEGOS_DOMAINEF-04-06', 'Recouvrement et contentieux', NULL, NULL);
INSERT INTO SOUSDOMAINESFORMATION VALUES ('CEGOS_DOMAINEF-04', 'CEGOS_DOMAINEF-04-07', 'Marchés des entreprises', NULL, NULL);
INSERT INTO SOUSDOMAINESFORMATION VALUES ('CEGOS_DOMAINEF-05', 'CEGOS_DOMAINEF-05-01', 'Logiciels bureautique', NULL, NULL);
INSERT INTO SOUSDOMAINESFORMATION VALUES ('CEGOS_DOMAINEF-05', 'CEGOS_DOMAINEF-05-02', 'Outils collaboratifs', NULL, NULL);
INSERT INTO SOUSDOMAINESFORMATION VALUES ('CEGOS_DOMAINEF-05', 'CEGOS_DOMAINEF-05-03', 'Logiciels PAO - CAO', NULL, NULL);
INSERT INTO SOUSDOMAINESFORMATION VALUES ('CEGOS_DOMAINEF-17', 'CEGOS_DOMAINEF-17-01', 'Droit du travail et relations sociales', NULL, NULL);
INSERT INTO SOUSDOMAINESFORMATION VALUES ('CEGOS_DOMAINEF-17', 'CEGOS_DOMAINEF-17-02', 'Relations sociales', NULL, NULL);
INSERT INTO SOUSDOMAINESFORMATION VALUES ('CEGOS_DOMAINEF-17', 'CEGOS_DOMAINEF-17-03', 'Formation des élu(e)s : CSE, CSSCT…', NULL, NULL);
INSERT INTO SOUSDOMAINESFORMATION VALUES ('CEGOS_DOMAINEF-17', 'CEGOS_DOMAINEF-17-04', 'Santé et qualité de vie au travail, risques psychosociaux', NULL, NULL);
INSERT INTO SOUSDOMAINESFORMATION VALUES ('CEGOS_DOMAINEF-26', 'CEGOS_DOMAINEF-26-01', 'Direction informatique', NULL, NULL);
INSERT INTO SOUSDOMAINESFORMATION VALUES ('CEGOS_DOMAINEF-26', 'CEGOS_DOMAINEF-26-02', 'Transformation Digitale', NULL, NULL);
INSERT INTO SOUSDOMAINESFORMATION VALUES ('CEGOS_DOMAINEF-26', 'CEGOS_DOMAINEF-26-03', 'Sécurité - Cybersécurité - RGPD. DPO. Cybersécurité', NULL, NULL);
INSERT INTO SOUSDOMAINESFORMATION VALUES ('CEGOS_DOMAINEF-26', 'CEGOS_DOMAINEF-26-04', 'Méthodes Agiles', NULL, NULL);
INSERT INTO SOUSDOMAINESFORMATION VALUES ('CEGOS_DOMAINEF-26', 'CEGOS_DOMAINEF-26-05', 'Projets informatiques', NULL, NULL);
COMMIT;
SELECT * FROM SOUSDOMAINESFORMATION ORDER BY 1, 2;

UPDATE SOUSDOMAINESFORMATION SET CHAINEACOMPARER = TransformerChaine(SOUSDOMAINEDEFORMATION);
UPDATE SOUSDOMAINESFORMATION SET CLE_INDEXAGE_MFB = Concatener_premieres_lettres(SOUSDOMAINEDEFORMATION);
UPDATE SOUSDOMAINESFORMATION SET CLE_INDEXAGE_MFB = TransformerChaine(CLE_INDEXAGE_MFB);
COMMIT;
SELECT * FROM SOUSDOMAINESFORMATION ORDER BY 1, 2;

-- ==== MFB =======================================================================================================================
----- >> Insertion dans la Table 3 : SOUSSOUSDOMAINESFORMATION
-- ==== MFB =======================================================================================================================

INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('CEGOS_DOMAINEF-05-01', 'CEGOS_DOMAINEF-05-01-01', 'Les fondamentaux - S''initier à la bureautique',  20, 44, 18,2095,'2024-03-15','2024-03-17','2024-05-14','2024-05-16', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('CEGOS_DOMAINEF-05-01', 'CEGOS_DOMAINEF-05-01-02', 'Les fondamentaux - Préparation à la certification TOSA® DigComp',  20, NULL, NULL,2445,'2024-05-17','2024-05-19','2024-07-16','2024-07-18', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('CEGOS_DOMAINEF-05-01', 'CEGOS_DOMAINEF-05-01-03', 'Les fondamentaux - L''essentiel de Word, Excel et PowerPoint',  30, 47, 77,2287,'2024-04-11','2024-04-14','2024-06-10','2024-06-13', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('CEGOS_DOMAINEF-05-01', 'CEGOS_DOMAINEF-05-01-04', 'Les fondamentaux - Spécial Assistant(e)s : Maîtriser Word, Excel et PowerPoint',  30, 48, 86,2526,'2024-03-07','2024-03-10','2024-05-06','2024-05-09', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('CEGOS_DOMAINEF-05-01', 'CEGOS_DOMAINEF-05-01-05', 'Les fondamentaux - LibreOffice - Writer, Calc, Impress',  30, NULL, NULL,1760,'2024-03-16','2024-03-19','2024-05-15','2024-05-18', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('CEGOS_DOMAINEF-05-01', 'CEGOS_DOMAINEF-05-01-06', 'Excel - Débutant',  30, 46, 287,2185,'2024-06-02','2024-06-05','2024-08-01','2024-08-04', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('CEGOS_DOMAINEF-05-01', 'CEGOS_DOMAINEF-05-01-07', 'Excel - Consolider ses connaissances pour autodidactes',  10, 47, 91,2434,'2024-05-29','2024-05-30','2024-07-28','2024-07-29', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('CEGOS_DOMAINEF-05-01', 'CEGOS_DOMAINEF-05-01-08', 'Excel - Intermédiaire',  20, 46, 489,2418,'2024-03-24','2024-03-26','2024-05-23','2024-05-25', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('CEGOS_DOMAINEF-05-01', 'CEGOS_DOMAINEF-05-01-09', 'Excel - Avancé',  20, 47, 149,2849,'2024-02-04','2024-02-06','2024-04-04','2024-04-06', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('CEGOS_DOMAINEF-05-01', 'CEGOS_DOMAINEF-05-01-10', 'Excel - 3h chrono pour créer des graphiques avec Excel',  5, NULL, NULL,2951,'2024-02-09','2024-02-14','2024-04-09','2024-04-14', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('CEGOS_DOMAINEF-05-01', 'CEGOS_DOMAINEF-05-01-11', 'Excel - 3h chrono pour maîtriser la fonction Recherche dans Excel',  5, NULL, NULL,2691,'2024-03-02','2024-03-07','2024-05-01','2024-05-06', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('CEGOS_DOMAINEF-05-01', 'CEGOS_DOMAINEF-05-01-12', 'Excel - 3h chrono pour manipuler du texte, des dates et des heures dans Excel',  5, NULL, NULL,1952,'2024-02-14','2024-02-19','2024-04-14','2024-04-19', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('CEGOS_DOMAINEF-05-01', 'CEGOS_DOMAINEF-05-01-13', 'Excel - 3h chrono pour maîtriser les fonctions conditionnelles d’Excel',  5, NULL, NULL,1534,'2024-06-11','2024-06-16','2024-08-10','2024-08-15', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('CEGOS_DOMAINEF-05-01', 'CEGOS_DOMAINEF-05-01-14', 'Excel - 3h chrono pour créer un planning avec Excel',  5, NULL, NULL,1839,'2024-06-13','2024-06-18','2024-08-12','2024-08-17', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('CEGOS_DOMAINEF-05-01', 'CEGOS_DOMAINEF-05-01-15', 'Excel - 3h chrono pour exploiter les outils gain de temps d''Excel',  5, NULL, NULL,1907,'2024-03-28','2024-04-02','2024-05-27','2024-06-01', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('CEGOS_DOMAINEF-05-01', 'CEGOS_DOMAINEF-05-01-16', 'Excel - Tableaux croisés dynamiques - Niveau 1',  10, 47, 100,2952,'2024-05-11','2024-05-12','2024-07-10','2024-07-11', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('CEGOS_DOMAINEF-05-01', 'CEGOS_DOMAINEF-05-01-17', 'Excel - Tableaux croisés dynamiques - Niveau 2',  10, 45, 22,1734,'2024-02-01','2024-02-02','2024-04-01','2024-04-02', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('CEGOS_DOMAINEF-05-01', 'CEGOS_DOMAINEF-05-01-18', 'Excel - 3h chrono pour créer vos premiers tableaux croisés dynamiques',  5, 46, 102,2844,'2024-03-25','2024-03-30','2024-05-24','2024-05-29', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('CEGOS_DOMAINEF-05-01', 'CEGOS_DOMAINEF-05-01-19', 'Excel - Excel Macros VBA - Niveau 1',  30, 47, 402,1728,'2024-01-23','2024-01-26','2024-03-23','2024-03-26', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('CEGOS_DOMAINEF-05-01', 'CEGOS_DOMAINEF-05-01-20', 'Excel - Excel Macros VBA - Niveau 2',  30, 47, 102,1555,'2024-04-18','2024-04-21','2024-06-17','2024-06-20', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('CEGOS_DOMAINEF-05-01', 'CEGOS_DOMAINEF-05-01-21', 'Power BI - Analyse et Datavisualisation - Power BI Desktop - Analyse de données et tableaux de bord',  30, 44, 36,2002,'2024-01-27','2024-01-30','2024-03-27','2024-03-30', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('CEGOS_DOMAINEF-05-01', 'CEGOS_DOMAINEF-05-01-22', 'Power BI - Analyse et Datavisualisation - Power BI - Avancé',  20, NULL, NULL,1978,'2024-05-30','2024-06-01','2024-07-29','2024-07-31', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('CEGOS_DOMAINEF-05-01', 'CEGOS_DOMAINEF-05-01-23', 'Power BI - Analyse et Datavisualisation - Analyse et visualisation de données avec Excel',  20, NULL, NULL,1743,'2024-06-02','2024-06-04','2024-08-01','2024-08-03', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('CEGOS_DOMAINEF-05-01', 'CEGOS_DOMAINEF-05-01-24', 'Access - Les bases',  30, 47, 62,1514,'2024-04-04','2024-04-07','2024-06-03','2024-06-06', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('CEGOS_DOMAINEF-05-01', 'CEGOS_DOMAINEF-05-01-25', 'Word - Débutant',  20, 45, 46,2784,'2024-06-09','2024-06-11','2024-08-08','2024-08-10', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('CEGOS_DOMAINEF-05-01', 'CEGOS_DOMAINEF-05-01-26', 'Word - Avancé',  20, 47, 44,2206,'2024-03-17','2024-03-19','2024-05-16','2024-05-18', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('CEGOS_DOMAINEF-05-01', 'CEGOS_DOMAINEF-05-01-27', 'Word - Rapports, comptes rendus, mémoires',  20, 48, 16,2979,'2024-02-27','2024-02-29','2024-04-27','2024-04-29', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('CEGOS_DOMAINEF-05-01', 'CEGOS_DOMAINEF-05-01-28', 'Word - Consolider ses connaissances pour autodidactes',  10, NULL, NULL,2080,'2024-06-03','2024-06-04','2024-08-02','2024-08-03', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('CEGOS_DOMAINEF-05-01', 'CEGOS_DOMAINEF-05-01-29', 'PowerPoint - Débutant',  20, 47, 103,2371,'2024-03-11','2024-03-13','2024-05-10','2024-05-12', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('CEGOS_DOMAINEF-05-01', 'CEGOS_DOMAINEF-05-01-30', 'PowerPoint - Avancé',  20, 47, 71,2732,'2024-01-16','2024-01-18','2024-03-16','2024-03-18', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('CEGOS_DOMAINEF-05-01', 'CEGOS_DOMAINEF-05-01-31', 'PowerPoint - Concevoir des visuels percutants',  20, 46, 83,2649,'2024-04-20','2024-04-22','2024-06-19','2024-06-21', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('CEGOS_DOMAINEF-05-01', 'CEGOS_DOMAINEF-05-01-32', 'PowerPoint - 3h chrono pour concevoir un tutoriel',  5, 35, 30,2982,'2024-03-22','2024-03-27','2024-05-21','2024-05-26', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('CEGOS_DOMAINEF-05-01', 'CEGOS_DOMAINEF-05-01-33', 'PowerPoint - 3h chrono pour maîtriser les masques sur PowerPoint',  5, NULL, NULL,1528,'2024-02-20','2024-02-25','2024-04-20','2024-04-25', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('CEGOS_DOMAINEF-05-01', 'CEGOS_DOMAINEF-05-01-34', 'PowerPoint - Consolider ses connaissances pour autodidactes',  10, NULL, NULL,2196,'2024-05-22','2024-05-23','2024-07-21','2024-07-22', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('CEGOS_DOMAINEF-05-01', 'CEGOS_DOMAINEF-05-01-35', 'Outlook et OneNote - Gagner du temps et s''organiser avec Outlook',  20, 45, 50,1962,'2024-01-28','2024-01-30','2024-03-28','2024-03-30', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('CEGOS_DOMAINEF-05-01', 'CEGOS_DOMAINEF-05-01-36', 'Outlook et OneNote - 3h chrono pour organiser et partager vos notes dans OneNote',  5, 43, 48,1684,'2024-04-01','2024-04-06','2024-05-31','2024-06-05', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('CEGOS_DOMAINEF-05-02', 'CEGOS_DOMAINEF-05-02-01', 'Microsoft 365® - Exploiter les outils collaboratifs en ligne',  20, 46, 41,2012,'2024-05-27','2024-05-29','2024-07-26','2024-07-28', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('CEGOS_DOMAINEF-05-02', 'CEGOS_DOMAINEF-05-02-02', 'Microsoft 365® - 3h chrono pour prendre en main Teams (Microsoft 365®)',  5, 32, 66,1521,'2024-06-05','2024-06-10','2024-08-04','2024-08-09', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('CEGOS_DOMAINEF-05-02', 'CEGOS_DOMAINEF-05-02-03', 'Microsoft 365® -  3h chrono pour gérer vos documents OneDrive (Microsoft 365®)',  5, NULL, NULL,1623,'2024-06-03','2024-06-08','2024-08-02','2024-08-07', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('CEGOS_DOMAINEF-05-02', 'CEGOS_DOMAINEF-05-02-04', 'Microsoft 365® - Collaborer en mode projet avec Teams et Tasks',  10, NULL, NULL,2587,'2024-06-02','2024-06-03','2024-08-01','2024-08-02', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('CEGOS_DOMAINEF-05-02', 'CEGOS_DOMAINEF-05-02-05', 'Sharepoint - SharePoint Online - Microsoft 365®',  20, 45, 22,2426,'2024-02-11','2024-02-13','2024-04-11','2024-04-13', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('CEGOS_DOMAINEF-05-02', 'CEGOS_DOMAINEF-05-02-06', 'Sharepoint - 3h chrono pour découvrir SharePoint',  5, NULL, NULL,1787,'2024-04-05','2024-04-10','2024-06-04','2024-06-09', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('CEGOS_DOMAINEF-05-02', 'CEGOS_DOMAINEF-05-02-07', 'Google Workspace - Collaborer en ligne',  20, NULL, NULL,2511,'2024-04-04','2024-04-06','2024-06-03','2024-06-05', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('CEGOS_DOMAINEF-05-02', 'CEGOS_DOMAINEF-05-02-08', 'Web - Réseaux sociaux - Réseaux sociaux niveau 1 - Les fondamentaux du digital et des médias sociaux',  20, 45, 271,1536,'2024-05-30','2024-06-01','2024-07-29','2024-07-31', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('CEGOS_DOMAINEF-05-02', 'CEGOS_DOMAINEF-05-02-09', 'Web - Réseaux sociaux - Préparation à la certification TOSA® DigComp',  30, NULL, NULL,2848,'2024-05-13','2024-05-16','2024-07-12','2024-07-15', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('CEGOS_DOMAINEF-05-02', 'CEGOS_DOMAINEF-05-02-10', 'Web - Réseaux sociaux - 3h chrono pour développer sa visibilité sur LinkedIn',  5, 35, 24,2495,'2024-05-16','2024-05-21','2024-07-15','2024-07-20', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('CEGOS_DOMAINEF-05-02', 'CEGOS_DOMAINEF-05-02-11', 'Web - Réseaux sociaux - Créer des contenus visuels pour le web et les réseaux sociaux',  20, 47, 43,1864,'2024-04-18','2024-04-20','2024-06-17','2024-06-19', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('CEGOS_DOMAINEF-05-02', 'CEGOS_DOMAINEF-05-02-12', 'Web - Réseaux sociaux - 3h chrono pour concevoir sa première infographie',  5, NULL, NULL,2712,'2024-03-14','2024-03-19','2024-05-13','2024-05-18', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('CEGOS_DOMAINEF-05-03', 'CEGOS_DOMAINEF-05-03-01', 'Photoshop, InDesign, Illustrator… - Les essentiels de la PAO : Photoshop, Illustrator, InDesign',  30, 48, 118,2841,'2024-03-29','2024-04-01','2024-05-28','2024-05-31', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('CEGOS_DOMAINEF-05-03', 'CEGOS_DOMAINEF-05-03-02', 'Photoshop, InDesign, Illustrator… - Graphiste-maquettiste',  90, NULL, NULL,1874,'2024-03-14','2024-03-23','2024-05-13','2024-05-22', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('CEGOS_DOMAINEF-05-03', 'CEGOS_DOMAINEF-05-03-03', 'Photoshop, InDesign, Illustrator… - Culture graphique',  20, 48, 39,2549,'2024-04-28','2024-04-30','2024-06-27','2024-06-29', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('CEGOS_DOMAINEF-05-03', 'CEGOS_DOMAINEF-05-03-04', 'Photoshop, InDesign, Illustrator… - InDesign - Niveau 1',  30, 48, 192,1982,'2024-06-15','2024-06-18','2024-08-14','2024-08-17', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('CEGOS_DOMAINEF-05-03', 'CEGOS_DOMAINEF-05-03-05', 'Photoshop, InDesign, Illustrator… - InDesign - Niveau 2',  30, 46, 38,2831,'2024-06-06','2024-06-09','2024-08-05','2024-08-08', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('CEGOS_DOMAINEF-05-03', 'CEGOS_DOMAINEF-05-03-06', 'Photoshop, InDesign, Illustrator… - Photoshop - Niveau 1',  30, 48, 140,2257,'2024-05-27','2024-05-30','2024-07-26','2024-07-29', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('CEGOS_DOMAINEF-05-03', 'CEGOS_DOMAINEF-05-03-07', 'Photoshop, InDesign, Illustrator… - Photoshop - Niveau 2',  30, 45, 40,2155,'2024-03-26','2024-03-29','2024-05-25','2024-05-28', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('CEGOS_DOMAINEF-05-03', 'CEGOS_DOMAINEF-05-03-08', 'Photoshop, InDesign, Illustrator… - Affinity Photo',  30, NULL, NULL,1743,'2024-06-08','2024-06-11','2024-08-07','2024-08-10', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('CEGOS_DOMAINEF-05-03', 'CEGOS_DOMAINEF-05-03-09', 'Photoshop, InDesign, Illustrator… - Affinity Publisher',  30, NULL, NULL,1687,'2024-04-18','2024-04-21','2024-06-17','2024-06-20', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('CEGOS_DOMAINEF-05-03', 'CEGOS_DOMAINEF-05-03-10', 'Photoshop, InDesign, Illustrator… - Illustrator',  30, 46, 62,1637,'2024-03-05','2024-03-08','2024-05-04','2024-05-07', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('CEGOS_DOMAINEF-05-03', 'CEGOS_DOMAINEF-05-03-11', 'CAO - Dessin technique - AUTOCAD/AUTOCAD LT - Niveau 1',  40, 47, 92,2263,'2024-03-16','2024-03-20','2024-05-15','2024-05-19', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('CEGOS_DOMAINEF-05-03', 'CEGOS_DOMAINEF-05-03-12', 'CAO - Dessin technique - AUTOCAD perfectionnement',  30, 44, 24,2608,'2024-01-29','2024-02-01','2024-03-29','2024-04-01', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('CEGOS_DOMAINEF-05-03', 'CEGOS_DOMAINEF-05-03-13', 'CAO - Dessin technique - Revit Architecture',  40, NULL, NULL,1530,'2024-04-04','2024-04-08','2024-06-03','2024-06-07', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('CEGOS_DOMAINEF-05-03', 'CEGOS_DOMAINEF-05-03-14', 'CAO - Dessin technique - Sketchup',  30, 47, 14,1570,'2024-06-19','2024-06-22','2024-08-18','2024-08-21', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('CEGOS_DOMAINEF-26-03', 'CEGOS_DOMAINEF-26-03-01', 'Protection des données personnelles - RGPD',  10, 44, 29,2713,'2024-01-20','2024-01-21','2024-03-20','2024-03-21', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('CEGOS_DOMAINEF-26-03', 'CEGOS_DOMAINEF-26-03-02', 'Data Protection Officer',  50, NULL, NULL,1935,'2024-01-28','2024-02-02','2024-03-28','2024-04-02', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('CEGOS_DOMAINEF-26-03', 'CEGOS_DOMAINEF-26-03-03', 'Cybersécurité : enjeux et plan d''actions',  20, 47, 10,2958,'2024-04-12','2024-04-14','2024-06-11','2024-06-13', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('CEGOS_DOMAINEF-26-03', 'CEGOS_DOMAINEF-26-03-04', '3h chrono pour acquérir les réflexes en matière de cybersécurité',  5, 39, 14,2559,'2024-01-30','2024-02-04','2024-03-30','2024-04-04', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('CEGOS_DOMAINEF-26-04', 'CEGOS_DOMAINEF-26-04-01', 'Initiation aux méthodes Agiles',  10, 41, 70,2097,'2024-06-02','2024-06-03','2024-08-01','2024-08-02', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('CEGOS_DOMAINEF-26-04', 'CEGOS_DOMAINEF-26-04-02', 'Devenir coach agile',  30, NULL, NULL,2234,'2024-06-15','2024-06-18','2024-08-14','2024-08-17', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('CEGOS_DOMAINEF-26-04', 'CEGOS_DOMAINEF-26-04-03', 'Mettre en place une démarche Agile',  10, 45, 27,1985,'2024-03-09','2024-03-10','2024-05-08','2024-05-09', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('CEGOS_DOMAINEF-26-04', 'CEGOS_DOMAINEF-26-04-04', 'Formation certifiante Scrum Master',  20, 46, 37,1508,'2024-01-28','2024-01-30','2024-03-28','2024-03-30', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('CEGOS_DOMAINEF-26-04', 'CEGOS_DOMAINEF-26-04-05', 'Formation certifiante Scrum Product Owner',  20, 40, 44,1790,'2024-05-01','2024-05-03','2024-06-30','2024-07-02', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('CEGOS_DOMAINEF-26-04', 'CEGOS_DOMAINEF-26-04-06', 'Disciplined agile® Scrum Master (DASM)',  20, NULL, NULL,2896,'2024-01-30','2024-02-01','2024-03-30','2024-04-01', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('CEGOS_DOMAINEF-26-04', 'CEGOS_DOMAINEF-26-04-07', 'Obtenir la Certification AgilePM® - Agile Project Management Foundation',  30, 44, 89,2298,'2024-05-27','2024-05-30','2024-07-26','2024-07-29', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('CEGOS_DOMAINEF-26-04', 'CEGOS_DOMAINEF-26-04-08', 'Obtenir la Certification AgilePM® - Agile Project Management Practitioner',  20, NULL, NULL,1531,'2024-02-09','2024-02-11','2024-04-09','2024-04-11', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('CEGOS_DOMAINEF-26-04', 'CEGOS_DOMAINEF-26-04-09', 'DevOps Foundation',  30, NULL, NULL,1643,'2024-02-04','2024-02-07','2024-04-04','2024-04-07', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('CEGOS_DOMAINEF-26-04', 'CEGOS_DOMAINEF-26-04-10', 'Leading SAFe® : certification SAFe Agilist',  20, NULL, NULL,2494,'2024-04-29','2024-05-01','2024-06-28','2024-06-30', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('CEGOS_DOMAINEF-26-04', 'CEGOS_DOMAINEF-26-04-11', 'Gestion de projet : gagner en agilité avec une approche hybride',  20, 44, 31,1544,'2024-01-27','2024-01-29','2024-03-27','2024-03-29', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('CEGOS_DOMAINEF-26-05', 'CEGOS_DOMAINEF-26-05-01', 'Acquérir une culture informatique pour mieux collaborer',  20, 47, 32,2355,'2024-01-20','2024-01-22','2024-03-20','2024-03-22', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('CEGOS_DOMAINEF-26-05', 'CEGOS_DOMAINEF-26-05-02', 'Manager un projet informatique',  30, 48, 68,2934,'2024-05-22','2024-05-25','2024-07-21','2024-07-24', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('CEGOS_DOMAINEF-26-05', 'CEGOS_DOMAINEF-26-05-03', 'Business analyst',  30, 42, 36,2680,'2024-02-21','2024-02-24','2024-04-21','2024-04-24', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('CEGOS_DOMAINEF-26-05', 'CEGOS_DOMAINEF-26-05-04', 'Chef de projet informatique',  80, 47, 15,2246,'2024-03-14','2024-03-22','2024-05-13','2024-05-21', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('CEGOS_DOMAINEF-26-05', 'CEGOS_DOMAINEF-26-05-05', 'PRINCE2® Practitioner',  20, 41, 28,2568,'2024-05-28','2024-05-30','2024-07-27','2024-07-29', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('CEGOS_DOMAINEF-26-05', 'CEGOS_DOMAINEF-26-05-06', 'PRINCE2® Foundation',  30, 45, 126,2580,'2024-01-17','2024-01-20','2024-03-17','2024-03-20', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('CEGOS_DOMAINEF-26-05', 'CEGOS_DOMAINEF-26-05-07', 'Obtenir la certification PMP® (Inscription à l''examen PMI® incluse)',  50, 45, 41,2615,'2024-04-02','2024-04-07','2024-06-01','2024-06-06', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('CEGOS_DOMAINEF-26-05', 'CEGOS_DOMAINEF-26-05-08', 'Chef de projet digital',  90, 40, 14,2196,'2024-06-05','2024-06-14','2024-08-04','2024-08-13', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('CEGOS_DOMAINEF-26-05', 'CEGOS_DOMAINEF-26-05-09', 'Du cahier des charges à la recette informatique',  20, NULL, NULL,2781,'2024-05-12','2024-05-14','2024-07-11','2024-07-13', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('CEGOS_DOMAINEF-26-05', 'CEGOS_DOMAINEF-26-05-10', 'Microsoft® Project : les fondamentaux',  30, 42, 27,2806,'2024-02-01','2024-02-04','2024-04-01','2024-04-04', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('CEGOS_DOMAINEF-26-05', 'CEGOS_DOMAINEF-26-05-11', 'Microsoft 365® - Collaborer en mode projet avec Teams et Tasks',  10, NULL, NULL,2536,'2024-03-19','2024-03-20','2024-05-18','2024-05-19', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('CEGOS_DOMAINEF-26-05', 'CEGOS_DOMAINEF-26-05-12', '3h chrono pour pratiquer 3 outils de la gestion de projet agile',  5, 31, 15,2132,'2024-04-02','2024-04-07','2024-06-01','2024-06-06', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('CEGOS_DOMAINEF-26-05', 'CEGOS_DOMAINEF-26-05-13', 'ITIL® Foundation',  30, 40, 52,2814,'2024-03-20','2024-03-23','2024-05-19','2024-05-22', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('CEGOS_DOMAINEF-26-05', 'CEGOS_DOMAINEF-26-05-14', 'Sensibilisation à la démarche ITIL® 4',  10, NULL, NULL,1974,'2024-05-03','2024-05-04','2024-07-02','2024-07-03', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('CEGOS_DOMAINEF-26-05', 'CEGOS_DOMAINEF-26-05-15', 'Mettre en œuvre la méthode agile KANBAN',  20, NULL, NULL,2503,'2024-02-28','2024-03-01','2024-04-28','2024-04-30', NULL, NULL);
COMMIT;

INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('MFB_DOMAINEF-05-01', 'MFB_DOMAINEF-05-01-01', 'Initiation à la bureautique',  20, 44, 18,2095,'2024-03-15','2024-03-17','2024-05-14','2024-05-16', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('MFB_DOMAINEF-05-01', 'MFB_DOMAINEF-05-01-02', 'Préparation à la certification TOSA DigComp',  20, NULL, NULL,2445,'2024-05-17','2024-05-19','2024-07-16','2024-07-18', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('MFB_DOMAINEF-05-01', 'MFB_DOMAINEF-05-01-03', 'Les Bases : Word, Excel et PowerPoint',  30, 47, 77,2287,'2024-04-11','2024-04-14','2024-06-10','2024-06-13', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('MFB_DOMAINEF-05-01', 'MFB_DOMAINEF-05-01-04', 'Maîtriser Word, Excel et PowerPoint',  30, 48, 86,2526,'2024-03-07','2024-03-10','2024-05-06','2024-05-09', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('MFB_DOMAINEF-05-01', 'MFB_DOMAINEF-05-01-05', 'LibreOffice - Writer, Calc, Impress',  30, NULL, NULL,1760,'2024-03-16','2024-03-19','2024-05-15','2024-05-18', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('MFB_DOMAINEF-05-01', 'MFB_DOMAINEF-05-01-06', 'Excel - Débutant',  30, 46, 287,2185,'2024-06-02','2024-06-05','2024-08-01','2024-08-04', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('MFB_DOMAINEF-05-01', 'MFB_DOMAINEF-05-01-07', 'Excel - Consolider ses connaissances pour autodidactes',  10, 47, 91,2434,'2024-05-29','2024-05-30','2024-07-28','2024-07-29', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('MFB_DOMAINEF-05-01', 'MFB_DOMAINEF-05-01-08', 'Excel - Intermédiaire',  20, 46, 489,2418,'2024-03-24','2024-03-26','2024-05-23','2024-05-25', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('MFB_DOMAINEF-05-01', 'MFB_DOMAINEF-05-01-09', 'Excel - Avancé',  20, 47, 149,2849,'2024-02-04','2024-02-06','2024-04-04','2024-04-06', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('MFB_DOMAINEF-05-01', 'MFB_DOMAINEF-05-01-10', 'Créer des graphiques avec Excel',  5, NULL, NULL,2951,'2024-02-09','2024-02-14','2024-04-09','2024-04-14', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('MFB_DOMAINEF-05-01', 'MFB_DOMAINEF-05-01-11', 'Maîtriser la fonction Recherche dans Excel',  5, NULL, NULL,2691,'2024-03-02','2024-03-07','2024-05-01','2024-05-06', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('MFB_DOMAINEF-05-01', 'MFB_DOMAINEF-05-01-12', 'Manipuler du texte, des dates et des heures dans Excel',  5, NULL, NULL,1952,'2024-02-14','2024-02-19','2024-04-14','2024-04-19', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('MFB_DOMAINEF-05-01', 'MFB_DOMAINEF-05-01-13', 'Maîtriser les fonctions conditionnelles d’Excel',  5, NULL, NULL,1534,'2024-06-11','2024-06-16','2024-08-10','2024-08-15', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('MFB_DOMAINEF-05-01', 'MFB_DOMAINEF-05-01-14', 'Créer un planning avec Excel',  5, NULL, NULL,1839,'2024-06-13','2024-06-18','2024-08-12','2024-08-17', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('MFB_DOMAINEF-05-01', 'MFB_DOMAINEF-05-01-16', 'Tableaux croisés dynamiques dans Excel Niveau 1',  10, 47, 100,2952,'2024-05-11','2024-05-12','2024-07-10','2024-07-11', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('MFB_DOMAINEF-05-01', 'MFB_DOMAINEF-05-01-17', 'Tableaux croisés dynamiques dans Excel Niveau 2',  10, 45, 22,1734,'2024-02-01','2024-02-02','2024-04-01','2024-04-02', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('MFB_DOMAINEF-05-01', 'MFB_DOMAINEF-05-01-18', 'Créer vos premiers tableaux croisés dynamiques  dans Excel ',  5, 46, 102,2844,'2024-03-25','2024-03-30','2024-05-24','2024-05-29', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('MFB_DOMAINEF-05-01', 'MFB_DOMAINEF-05-01-19', 'Excel - Excel Macros VBA - Niveau 1',  30, 47, 402,1728,'2024-01-23','2024-01-26','2024-03-23','2024-03-26', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('MFB_DOMAINEF-05-01', 'MFB_DOMAINEF-05-01-20', 'Excel - Excel Macros VBA - Niveau 2',  30, 47, 102,1555,'2024-04-18','2024-04-21','2024-06-17','2024-06-20', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('MFB_DOMAINEF-05-01', 'MFB_DOMAINEF-05-01-21', 'Power BI - Analyse et Datavisualisation - Power BI Desktop - Analyse de données et tableaux de bord',  30, 44, 36,2002,'2024-01-27','2024-01-30','2024-03-27','2024-03-30', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('MFB_DOMAINEF-05-01', 'MFB_DOMAINEF-05-01-22', 'Power BI - Analyse et Datavisualisation - Power BI - Avancé',  20, NULL, NULL,1978,'2024-05-30','2024-06-01','2024-07-29','2024-07-31', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('MFB_DOMAINEF-05-01', 'MFB_DOMAINEF-05-01-23', 'Power BI - Analyse et Datavisualisation - Analyse et visualisation de données avec Excel',  20, NULL, NULL,1743,'2024-06-02','2024-06-04','2024-08-01','2024-08-03', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('MFB_DOMAINEF-05-01', 'MFB_DOMAINEF-05-01-24', 'Les bases dans Access',  30, 47, 62,1514,'2024-04-04','2024-04-07','2024-06-03','2024-06-06', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('MFB_DOMAINEF-05-01', 'MFB_DOMAINEF-05-01-25', 'Word - Débutant',  20, 45, 46,2784,'2024-06-09','2024-06-11','2024-08-08','2024-08-10', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('MFB_DOMAINEF-05-01', 'MFB_DOMAINEF-05-01-26', 'Word - Avancé',  20, 47, 44,2206,'2024-03-17','2024-03-19','2024-05-16','2024-05-18', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('MFB_DOMAINEF-05-01', 'MFB_DOMAINEF-05-01-27', 'Word - Rapports, comptes rendus, mémoires',  20, 48, 16,2979,'2024-02-27','2024-02-29','2024-04-27','2024-04-29', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('MFB_DOMAINEF-05-01', 'MFB_DOMAINEF-05-01-29', 'PowerPoint - Débutant',  20, 47, 103,2371,'2024-03-11','2024-03-13','2024-05-10','2024-05-12', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('MFB_DOMAINEF-05-01', 'MFB_DOMAINEF-05-01-30', 'PowerPoint - Avancé',  20, 47, 71,2732,'2024-01-16','2024-01-18','2024-03-16','2024-03-18', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('MFB_DOMAINEF-05-01', 'MFB_DOMAINEF-05-01-31', 'PowerPoint - Concevoir des visuels percutants',  20, 46, 83,2649,'2024-04-20','2024-04-22','2024-06-19','2024-06-21', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('MFB_DOMAINEF-05-01', 'MFB_DOMAINEF-05-01-32', 'PowerPoint - Concevoir un tutoriel',  5, 35, 30,2982,'2024-03-22','2024-03-27','2024-05-21','2024-05-26', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('MFB_DOMAINEF-05-01', 'MFB_DOMAINEF-05-01-33', 'PowerPoint - Maîtriser les masques sur PowerPoint',  5, NULL, NULL,1528,'2024-02-20','2024-02-25','2024-04-20','2024-04-25', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('MFB_DOMAINEF-05-01', 'MFB_DOMAINEF-05-01-34', 'PowerPoint - Consolider ses connaissances pour autodidactes',  10, NULL, NULL,2196,'2024-05-22','2024-05-23','2024-07-21','2024-07-22', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('MFB_DOMAINEF-05-01', 'MFB_DOMAINEF-05-01-35', 'Outlook et OneNote - Gagner du temps et Organiser avec Outlook',  20, 45, 50,1962,'2024-01-28','2024-01-30','2024-03-28','2024-03-30', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('MFB_DOMAINEF-05-01', 'MFB_DOMAINEF-05-01-36', 'Outlook et OneNote - Organiser et partager vos notes dans OneNote',  5, 43, 48,1684,'2024-04-01','2024-04-06','2024-05-31','2024-06-05', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('MFB_DOMAINEF-05-02', 'MFB_DOMAINEF-05-02-01', 'Microsoft 365 - Exploiter les outils collaboratifs en ligne',  20, 46, 41,2012,'2024-05-27','2024-05-29','2024-07-26','2024-07-28', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('MFB_DOMAINEF-05-02', 'MFB_DOMAINEF-05-02-02', 'Microsoft 365 - Prendre en main Teams (Microsoft 365)',  5, 32, 66,1521,'2024-06-05','2024-06-10','2024-08-04','2024-08-09', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('MFB_DOMAINEF-05-02', 'MFB_DOMAINEF-05-02-03', 'Microsoft 365 - Gérer vos documents OneDrive (Microsoft 365)',  5, NULL, NULL,1623,'2024-06-03','2024-06-08','2024-08-02','2024-08-07', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('MFB_DOMAINEF-05-02', 'MFB_DOMAINEF-05-02-04', 'Microsoft 365 - Collaborer en mode projet avec Teams et Tasks',  10, NULL, NULL,2587,'2024-06-02','2024-06-03','2024-08-01','2024-08-02', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('MFB_DOMAINEF-05-02', 'MFB_DOMAINEF-05-02-05', 'Sharepoint - Microsoft 365',  20, 45, 22,2426,'2024-02-11','2024-02-13','2024-04-11','2024-04-13', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('MFB_DOMAINEF-05-02', 'MFB_DOMAINEF-05-02-06', 'Sharepoint - Découvrir SharePoint',  5, NULL, NULL,1787,'2024-04-05','2024-04-10','2024-06-04','2024-06-09', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('MFB_DOMAINEF-05-02', 'MFB_DOMAINEF-05-02-07', 'Google Workspace - Collaborer en ligne',  20, NULL, NULL,2511,'2024-04-04','2024-04-06','2024-06-03','2024-06-05', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('MFB_DOMAINEF-05-02', 'MFB_DOMAINEF-05-02-08', 'Web - Réseaux sociaux - Réseaux sociaux niveau 1 - Les fondamentaux du digital et des médias sociaux',  20, 45, 271,1536,'2024-05-30','2024-06-01','2024-07-29','2024-07-31', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('MFB_DOMAINEF-05-02', 'MFB_DOMAINEF-05-02-09', 'Web - Réseaux sociaux - Préparation à la certification TOSA DigComp',  30, NULL, NULL,2848,'2024-05-13','2024-05-16','2024-07-12','2024-07-15', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('MFB_DOMAINEF-05-02', 'MFB_DOMAINEF-05-02-10', 'Web - Réseaux sociaux - Développer sa visibilité sur LinkedIn',  5, 35, 24,2495,'2024-05-16','2024-05-21','2024-07-15','2024-07-20', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('MFB_DOMAINEF-05-02', 'MFB_DOMAINEF-05-02-11', 'Web - Réseaux sociaux - Créer des contenus visuels pour le web et les réseaux sociaux',  20, 47, 43,1864,'2024-04-18','2024-04-20','2024-06-17','2024-06-19', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('MFB_DOMAINEF-05-02', 'MFB_DOMAINEF-05-02-12', 'Web - Réseaux sociaux - Concevoir sa première infographie',  5, NULL, NULL,2712,'2024-03-14','2024-03-19','2024-05-13','2024-05-18', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('MFB_DOMAINEF-05-03', 'MFB_DOMAINEF-05-03-01', 'Photoshop, InDesign, Illustrator… - Les essentiels de la PAO : Photoshop, Illustrator, InDesign',  30, 48, 118,2841,'2024-03-29','2024-04-01','2024-05-28','2024-05-31', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('MFB_DOMAINEF-05-03', 'MFB_DOMAINEF-05-03-02', 'Photoshop, InDesign, Illustrator… - Graphiste-maquettiste',  90, NULL, NULL,1874,'2024-03-14','2024-03-23','2024-05-13','2024-05-22', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('MFB_DOMAINEF-05-03', 'MFB_DOMAINEF-05-03-03', 'Photoshop, InDesign, Illustrator… - Culture graphique',  20, 48, 39,2549,'2024-04-28','2024-04-30','2024-06-27','2024-06-29', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('MFB_DOMAINEF-05-03', 'MFB_DOMAINEF-05-03-04', 'Photoshop, InDesign, Illustrator… - InDesign - Niveau 1',  30, 48, 192,1982,'2024-06-15','2024-06-18','2024-08-14','2024-08-17', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('MFB_DOMAINEF-05-03', 'MFB_DOMAINEF-05-03-05', 'Photoshop, InDesign, Illustrator… - InDesign - Niveau 2',  30, 46, 38,2831,'2024-06-06','2024-06-09','2024-08-05','2024-08-08', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('MFB_DOMAINEF-05-03', 'MFB_DOMAINEF-05-03-06', 'Photoshop, InDesign, Illustrator… - Photoshop - Niveau 1',  30, 48, 140,2257,'2024-05-27','2024-05-30','2024-07-26','2024-07-29', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('MFB_DOMAINEF-05-03', 'MFB_DOMAINEF-05-03-07', 'Photoshop, InDesign, Illustrator… - Photoshop - Niveau 2',  30, 45, 40,2155,'2024-03-26','2024-03-29','2024-05-25','2024-05-28', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('MFB_DOMAINEF-05-03', 'MFB_DOMAINEF-05-03-08', 'Photoshop, InDesign, Illustrator… - Affinity Photo',  30, NULL, NULL,1743,'2024-06-08','2024-06-11','2024-08-07','2024-08-10', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('MFB_DOMAINEF-05-03', 'MFB_DOMAINEF-05-03-09', 'Photoshop, InDesign, Illustrator… - Affinity Publisher',  30, NULL, NULL,1687,'2024-04-18','2024-04-21','2024-06-17','2024-06-20', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('MFB_DOMAINEF-05-03', 'MFB_DOMAINEF-05-03-10', 'Photoshop, InDesign, Illustrator… - Illustrator',  30, 46, 62,1637,'2024-03-05','2024-03-08','2024-05-04','2024-05-07', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('MFB_DOMAINEF-05-03', 'MFB_DOMAINEF-05-03-11', 'CAO - Dessin technique - AUTOCAD/AUTOCAD LT - Niveau 1',  40, 47, 92,2263,'2024-03-16','2024-03-20','2024-05-15','2024-05-19', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('MFB_DOMAINEF-05-03', 'MFB_DOMAINEF-05-03-12', 'CAO - Dessin technique - AUTOCAD perfectionnement',  30, 44, 24,2608,'2024-01-29','2024-02-01','2024-03-29','2024-04-01', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('MFB_DOMAINEF-05-03', 'MFB_DOMAINEF-05-03-13', 'CAO - Dessin technique - Revit Architecture',  40, NULL, NULL,1530,'2024-04-04','2024-04-08','2024-06-03','2024-06-07', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('MFB_DOMAINEF-05-03', 'MFB_DOMAINEF-05-03-14', 'CAO - Dessin technique - Sketchup',  30, 47, 14,1570,'2024-06-19','2024-06-22','2024-08-18','2024-08-21', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('MFB_DOMAINEF-26-03', 'MFB_DOMAINEF-26-03-01', 'Protection des données personnelles - RGPD',  10, 44, 29,2713,'2024-01-20','2024-01-21','2024-03-20','2024-03-21', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('MFB_DOMAINEF-26-03', 'MFB_DOMAINEF-26-03-02', 'Data Protection Officer',  50, NULL, NULL,1935,'2024-01-28','2024-02-02','2024-03-28','2024-04-02', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('MFB_DOMAINEF-26-03', 'MFB_DOMAINEF-26-03-03', 'Cybersécurité : enjeux et plan d''actions',  20, 47, 10,2958,'2024-04-12','2024-04-14','2024-06-11','2024-06-13', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('MFB_DOMAINEF-26-03', 'MFB_DOMAINEF-26-03-04', 'Acquérir les réflexes en matière de cybersécurité',  5, 39, 14,2559,'2024-01-30','2024-02-04','2024-03-30','2024-04-04', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('MFB_DOMAINEF-26-04', 'MFB_DOMAINEF-26-04-01', 'Initiation aux méthodes Agiles',  10, 41, 70,2097,'2024-06-02','2024-06-03','2024-08-01','2024-08-02', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('MFB_DOMAINEF-26-04', 'MFB_DOMAINEF-26-04-02', 'Devenir coach agile',  30, NULL, NULL,2234,'2024-06-15','2024-06-18','2024-08-14','2024-08-17', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('MFB_DOMAINEF-26-04', 'MFB_DOMAINEF-26-04-03', 'Mettre en place une démarche Agile',  10, 45, 27,1985,'2024-03-09','2024-03-10','2024-05-08','2024-05-09', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('MFB_DOMAINEF-26-04', 'MFB_DOMAINEF-26-04-04', 'Formation certifiante Scrum Master',  20, 46, 37,1508,'2024-01-28','2024-01-30','2024-03-28','2024-03-30', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('MFB_DOMAINEF-26-04', 'MFB_DOMAINEF-26-04-05', 'Formation certifiante Scrum Product Owner',  20, 40, 44,1790,'2024-05-01','2024-05-03','2024-06-30','2024-07-02', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('MFB_DOMAINEF-26-04', 'MFB_DOMAINEF-26-04-06', 'Disciplined agile Scrum Master (DASM)',  20, NULL, NULL,2896,'2024-01-30','2024-02-01','2024-03-30','2024-04-01', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('MFB_DOMAINEF-26-04', 'MFB_DOMAINEF-26-04-07', 'Obtenir la Certification AgilePM - Agile Project Management Foundation',  30, 44, 89,2298,'2024-05-27','2024-05-30','2024-07-26','2024-07-29', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('MFB_DOMAINEF-26-04', 'MFB_DOMAINEF-26-04-08', 'Obtenir la Certification AgilePM - Agile Project Management Practitioner',  20, NULL, NULL,1531,'2024-02-09','2024-02-11','2024-04-09','2024-04-11', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('MFB_DOMAINEF-26-04', 'MFB_DOMAINEF-26-04-09', 'DevOps Foundation',  30, NULL, NULL,1643,'2024-02-04','2024-02-07','2024-04-04','2024-04-07', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('MFB_DOMAINEF-26-04', 'MFB_DOMAINEF-26-04-10', 'Leading SAFe : certification SAFe Agilist',  20, NULL, NULL,2494,'2024-04-29','2024-05-01','2024-06-28','2024-06-30', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('MFB_DOMAINEF-26-04', 'MFB_DOMAINEF-26-04-11', 'Gestion de projet : gagner en agilité avec une approche hybride',  20, 44, 31,1544,'2024-01-27','2024-01-29','2024-03-27','2024-03-29', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('MFB_DOMAINEF-26-05', 'MFB_DOMAINEF-26-05-01', 'Acquérir une culture informatique pour mieux collaborer',  20, 47, 32,2355,'2024-01-20','2024-01-22','2024-03-20','2024-03-22', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('MFB_DOMAINEF-26-05', 'MFB_DOMAINEF-26-05-02', 'Manager un projet informatique',  30, 48, 68,2934,'2024-05-22','2024-05-25','2024-07-21','2024-07-24', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('MFB_DOMAINEF-26-05', 'MFB_DOMAINEF-26-05-03', 'Business analyst',  30, 42, 36,2680,'2024-02-21','2024-02-24','2024-04-21','2024-04-24', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('MFB_DOMAINEF-26-05', 'MFB_DOMAINEF-26-05-04', 'Chef de projet informatique',  80, 47, 15,2246,'2024-03-14','2024-03-22','2024-05-13','2024-05-21', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('MFB_DOMAINEF-26-05', 'MFB_DOMAINEF-26-05-05', 'PRINCE2 Practitioner',  20, 41, 28,2568,'2024-05-28','2024-05-30','2024-07-27','2024-07-29', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('MFB_DOMAINEF-26-05', 'MFB_DOMAINEF-26-05-06', 'PRINCE2 Foundation',  30, 45, 126,2580,'2024-01-17','2024-01-20','2024-03-17','2024-03-20', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('MFB_DOMAINEF-26-05', 'MFB_DOMAINEF-26-05-07', 'Obtenir la certification PMP (Inscription à l''examen PMI incluse)',  50, 45, 41,2615,'2024-04-02','2024-04-07','2024-06-01','2024-06-06', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('MFB_DOMAINEF-26-05', 'MFB_DOMAINEF-26-05-08', 'Chef de projet digital',  90, 40, 14,2196,'2024-06-05','2024-06-14','2024-08-04','2024-08-13', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('MFB_DOMAINEF-26-05', 'MFB_DOMAINEF-26-05-09', 'Du cahier des charges à la recette informatique',  20, NULL, NULL,2781,'2024-05-12','2024-05-14','2024-07-11','2024-07-13', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('MFB_DOMAINEF-26-05', 'MFB_DOMAINEF-26-05-10', 'Microsoft Project : les fondamentaux',  30, 42, 27,2806,'2024-02-01','2024-02-04','2024-04-01','2024-04-04', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('MFB_DOMAINEF-26-05', 'MFB_DOMAINEF-26-05-11', 'Microsoft 365 - Collaborer en mode projet avec Teams et Tasks',  10, NULL, NULL,2536,'2024-03-19','2024-03-20','2024-05-18','2024-05-19', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('MFB_DOMAINEF-26-05', 'MFB_DOMAINEF-26-05-12', 'Les outils de la gestion de projet agile',  5, 31, 15,2132,'2024-04-02','2024-04-07','2024-06-01','2024-06-06', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('MFB_DOMAINEF-26-05', 'MFB_DOMAINEF-26-05-13', 'ITIL Foundation',  30, 40, 52,2814,'2024-03-20','2024-03-23','2024-05-19','2024-05-22', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('MFB_DOMAINEF-26-05', 'MFB_DOMAINEF-26-05-14', 'Sensibilisation à la démarche ITIL 4',  10, NULL, NULL,1974,'2024-05-03','2024-05-04','2024-07-02','2024-07-03', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('MFB_DOMAINEF-26-05', 'MFB_DOMAINEF-26-05-15', 'Mettre en œuvre la méthode agile KANBAN',  20, NULL, NULL,2503,'2024-02-28','2024-03-01','2024-04-28','2024-04-30', NULL, NULL);

INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('MFB_DOMAINEF-26-05', 'MFB_DOMAINEF-26-05-16', 'Power BI',  20, NULL, NULL,2503,'2024-02-28','2024-03-01','2024-04-28','2024-04-30', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('MFB_DOMAINEF-26-05', 'MFB_DOMAINEF-26-05-17', 'Quelque chose avant Power BI',  20, NULL, NULL,2503,'2024-02-28','2024-03-01','2024-04-28','2024-04-30', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('MFB_DOMAINEF-26-05', 'MFB_DOMAINEF-26-05-18', 'Power BI Quelque chose après',  20, NULL, NULL,2503,'2024-02-28','2024-03-01','2024-04-28','2024-04-30', NULL, NULL);
INSERT INTO SOUSSOUSDOMAINESFORMATION VALUES ('MFB_DOMAINEF-26-05', 'MFB_DOMAINEF-26-05-19', 'Quelque chose avant Power BI Quelque chose après',  20, NULL, NULL,2503,'2024-02-28','2024-03-01','2024-04-28','2024-04-30', NULL, NULL);

COMMIT;
SELECT * FROM SOUSSOUSDOMAINESFORMATION ORDER BY 1, 2;

UPDATE SOUSSOUSDOMAINESFORMATION SET CHAINEACOMPARER  = TransformerChaine(SOUSSOUSDOMAINEDEFORMATION);
UPDATE SOUSSOUSDOMAINESFORMATION SET CLE_INDEXAGE_MFB = Concatener_premieres_lettres(SOUSSOUSDOMAINEDEFORMATION);
UPDATE SOUSSOUSDOMAINESFORMATION SET CLE_INDEXAGE_MFB = TransformerChaine(CLE_INDEXAGE_MFB);
COMMIT;
SELECT * FROM SOUSSOUSDOMAINESFORMATION ORDER BY 1, 2;




--===== MFB =======================================================================================================================
--===== MFB =======================================================================================================================
--===== MFB =======================================================================================================================
--- Fonctions testées

CREATE OR REPLACE FUNCTION supprimer_articles(texte IN VARCHAR2)
RETURN VARCHAR2
IS
  texte_a_modifier    VARCHAR2(4000);
  texte_sans_articles VARCHAR2(4000);
BEGIN
  texte_a_modifier := lower(texte);
  -- Remplace les articles suivants par une chaîne vide dans le texte d'entrée
  texte_sans_articles := REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE
  (texte_a_modifier, ' le ', ' '), ' la ', ' '), ' les ', ' '), ' l''', ' '), ' de ', ' '), ' du ', ' '), ' des ', ' '), ' à ', ' '), ' aux ', ' '), ' un ', ' '), ' une ', ' '), ' uns ', ' '), ' unes ', ' ');
  texte_sans_articles := REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(texte_sans_articles, 'le ', ''), 'la ', ''), 'les ', ''), 'l''', ''), 'de ', ''), 'du ', ''), 'des ', '');
  DBMS_OUTPUT.PUT_LINE('Texte SANS les articles : ' || texte_sans_articles);
  RETURN texte_sans_articles;
END supprimer_articles;
/
SELECT supprimer_articles('Les tableaux') FROM dual; -- Renvoie 'tableaux'
SELECT supprimer_articles('Les tableaux croisés dynamiques') FROM dual;
SELECT supprimer_articles('tableaux croisés dynamiques') FROM dual;
SELECT supprimer_articles('L''enfant de la prairie') FROM dual; -- Renvoie 'enfant prairie'
SELECT supprimer_articles('La MSN') FROM dual;
SELECT supprimer_articles('Charles') FROM dual;
SELECT supprimer_articles('Charles ') FROM dual;


CREATE OR REPLACE FUNCTION foncfb(p_texte IN VARCHAR2, p_k IN NUMBER)
RETURN VARCHAR2
IS
  v_resultat VARCHAR2(100);
BEGIN
  -- Supprimer les articles du texte
  v_resultat := TRIM(BOTH ' ' FROM 
  REGEXP_REPLACE(p_texte, '\b(le|la|les|de|du|des|à|aux|un|une|uns|unes)\b', '', 1, 0, 'i'));

  -- Diviser le texte en mots
  v_resultat := REPLACE(v_resultat, ' ', '');

  -- Concaténer les k premières lettres de chaque mot
  FOR i IN 1..p_k LOOP
    v_resultat := v_resultat || SUBSTR(v_resultat, i, 1);
  END LOOP;

  RETURN v_resultat;
END;
/

DECLARE
  v_texte VARCHAR2(100) := 'Les tableaux croisés dynamiques';
  v_k NUMBER := 3;
  v_resultat VARCHAR2(100);
BEGIN
  v_resultat := foncfb(v_texte, v_k);
  DBMS_OUTPUT.PUT_LINE('Résultat : ' || v_resultat);
END;
/


CREATE OR REPLACE FUNCTION traiter_texte(texte IN VARCHAR2)
RETURN SYS.ODCIVARCHAR2LIST
IS
  texte_sans_articles VARCHAR2(4000);
  mots SYS.ODCIVARCHAR2LIST := SYS.ODCIVARCHAR2LIST();
BEGIN
  -- Remplace les articles spécifiés par une chaîne vide dans le texte d'entrée
  texte_sans_articles := 
  REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(texte, ' le ', ' '), ' la ', ' '), ' les ', ' '), ' l''', ' '), ' de ', ' '), ' du ', ' '), ' des ', ' '), ' à ', ' '), ' aux ', ' '), ' un ', ' '), ' une ', ' '), ' uns ', ' '), ' unes ', ' ');

  -- Divise le texte en mots en utilisant l'espace comme séparateur
  FOR mot IN (SELECT REGEXP_SUBSTR(texte_sans_articles, '[^ ]+', 1, LEVEL) AS mot
              FROM dual
              CONNECT BY REGEXP_SUBSTR(texte_sans_articles, '[^ ]+', 1, LEVEL) IS NOT NULL)
  LOOP
    mots.EXTEND;
    mots(mots.COUNT) := mot.mot;
  END LOOP;

  RETURN mots;
END traiter_texte;
/
SELECT COLUMN_VALUE FROM TABLE(traiter_texte('Les tableaux')); -- Renvoie chaque mot séparément
SELECT COLUMN_VALUE FROM TABLE(traiter_texte('L''enfant de la prairie')); -- Renvoie chaque mot séparément

CREATE OR REPLACE TYPE t_tab_mots AS TABLE OF VARCHAR2(100);
CREATE OR REPLACE FUNCTION traiter_texte(texte IN VARCHAR2)
RETURN t_tab_mots
IS
  texte_sans_articles VARCHAR2(4000);
  mots t_tab_mots := t_tab_mots();
BEGIN
  -- Remplace les articles spécifiés par une chaîne vide dans le texte d'entrée
  texte_sans_articles := 
  REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(
  texte, ' le ', ' '), ' la ', ' '), ' les ', ' '), ' l''', ' '), ' de ', ' '), ' du ', ' '), ' des ', ' '), ' à ', ' '), ' aux ', ' '), ' un ', ' '), ' une ', ' '), ' uns ', ' '), ' unes ', ' ');

  -- Divise le texte en mots en utilisant l'espace comme séparateur
  FOR mot IN (SELECT REGEXP_SUBSTR(texte_sans_articles, '[^ ]+', 1, LEVEL) AS mot
              FROM dual
              CONNECT BY REGEXP_SUBSTR(texte_sans_articles, '[^ ]+', 1, LEVEL) IS NOT NULL)
  LOOP
    mots.EXTEND;
    mots(mots.COUNT) := mot.mot;
  END LOOP;

  RETURN mots;
END traiter_texte;
/
SELECT * FROM TABLE(traiter_texte('Les tableaux')); -- Renvoie un tableau de mots
SELECT * FROM TABLE(traiter_texte('L''enfant de la prairie')); -- Renvoie un tableau de mots


--===== MFB =======================================================================================================================

CREATE OR REPLACE FUNCTION Concatener_premieres_lettres(p_texte IN VARCHAR2, p_k IN NUMBER) RETURN VARCHAR2 IS
/*
La fonction concatener_premieres_lettres_sans_articles commence par découper le texte en mots 
à l'aide d'une expression régulière et utilise ensuite une boucle FOR pour traiter chaque mot. 
Elle exclut les articles mentionnés et concatène les k premières lettres de chaque mot.
*/
  v_UnMot			NUMBER := 5;
  v_DeuxMots		NUMBER := 3;
  v_PlusieursMots	NUMBER := 2;
  
  v_texte    	VARCHAR2(4000);
  v_resultat 	VARCHAR2(4000);
BEGIN --Concatener_premieres_lettres
  v_texte := LOWER(p_texte);
  v_resultat := '';
  FOR word IN (SELECT regexp_substr(v_texte, '\w+', 1, level) AS mot
               FROM dual
               CONNECT BY level <= regexp_count(v_texte, '\w+'))
  LOOP
    IF word.mot NOT IN ('le', 'la', 'les', 'l''', 'de', 'du', 'des', 'd''', 'à', 'au', 'aux', 'un', 'une', 'uns', 'unes') THEN
      v_resultat := v_resultat || SUBSTR(word.mot, 1, p_k);
    END IF;
  END LOOP;
  RETURN v_resultat;
END; --Concatener_premieres_lettres
/


CREATE OR REPLACE PROCEDURE COMPARER_CHAINES (LAFORMATIONDEMANDEE VARCHAR, SEUIL1 NUMBER, SEUIL2 NUMBER) IS
   REQ     		VARCHAR2(2000);
   LAFORMATION  VARCHAR2(200);
   NBREREPONSES NUMBER;
BEGIN --COMPARER_CHAINES
  LAFORMATION := TransformerChaine(LAFORMATIONDEMANDEE);

  REQ := 'CREATE OR REPLACE VIEW W1 AS
  SELECT 
     REFDOMAINEF, DOMAINEDEFORMATION, CHAINEACOMPARER,
	 UTL_MATCH.edit_distance_similarity(CHAINEACOMPARER, ' || CHR(39) || LAFORMATION || CHR(39) || ') EDS,
	 UTL_MATCH.jaro_winkler_similarity (CHAINEACOMPARER, ' || CHR(39) || LAFORMATION || CHR(39) || ') JWS,
	 CompareStr_QGram_Similar1(CHAINEACOMPARER,          ' || CHR(39) || LAFORMATION || CHR(39) || ') QG1
  FROM DOMAINESFORMATION';
  EXECUTE IMMEDIATE REQ;
  
  REQ := 'CREATE OR REPLACE VIEW W2 AS SELECT * FROM W1 
  WHERE 
  (EDS >= ' || SEUIL1 || ' OR JWS >= '  || SEUIL1 || ' OR  QG1 >= '  || SEUIL1 || ') 
  AND 
  (EDS >= ' || SEUIL2 || ' AND JWS >= ' || SEUIL2 || ' AND QG1 >= '  || SEUIL2 || ')';
  EXECUTE IMMEDIATE REQ;
  
  REQ := 'CREATE OR REPLACE VIEW W3(A, B, C, D, E, F) AS 
  SELECT REFDOMAINEF, DOMAINEDEFORMATION, CHAINEACOMPARER, NULL, NULL, NULL
  FROM DOMAINESFORMATION
  WHERE CHAINEACOMPARER LIKE ' || CHR(39) || '%' || LAFORMATION || '%' || CHR(39) ;  
  --DBMS_OUTPUT.PUT_LINE('Requête: ' || REQ);
  EXECUTE IMMEDIATE REQ;
  
  REQ := 'CREATE OR REPLACE VIEW W4 AS SELECT * FROM W2 UNION  SELECT * FROM W3'; 
  EXECUTE IMMEDIATE REQ;
  
  REQ := 'CREATE OR REPLACE VIEW W5 AS SELECT DISTINCT REFDOMAINEF, DOMAINEDEFORMATION FROM W4'; 
  EXECUTE IMMEDIATE REQ;
  
  REQ := 'SELECT COUNT(*) FROM W5'; 
  EXECUTE IMMEDIATE REQ INTO NBREREPONSES ;
  DBMS_OUTPUT.PUT_LINE('Nombre de réponses : ' || NBREREPONSES);
  
END; --COMPARER_CHAINES
/

CREATE OR REPLACE PROCEDURE COMPARER_CHAINES_2 (LAFORMATIONDEMANDEE VARCHAR, SEUIL1 NUMBER, SEUIL2 NUMBER) IS
   REQ     		VARCHAR2(2000);
   LAFORMATION  VARCHAR2(200);
   NBREREPONSES NUMBER;
BEGIN --COMPARER_CHAINES
  LAFORMATION := TransformerChaine(LAFORMATIONDEMANDEE);

  REQ := 'CREATE OR REPLACE VIEW W1 AS
  SELECT
     REFSOUSSOUSDOMAINEF, SOUSSOUSDOMAINEDEFORMATION, CHAINEACOMPARER,
	 UTL_MATCH.edit_distance_similarity(CHAINEACOMPARER, ' || CHR(39) || LAFORMATION || CHR(39) || ') EDS,
	 UTL_MATCH.jaro_winkler_similarity (CHAINEACOMPARER, ' || CHR(39) || LAFORMATION || CHR(39) || ') JWS,
	 CompareStr_QGram_Similar1(CHAINEACOMPARER,          ' || CHR(39) || LAFORMATION || CHR(39) || ') QG1
  FROM SOUSSOUSDOMAINESFORMATION';
  EXECUTE IMMEDIATE REQ;
  
  REQ := 'CREATE OR REPLACE VIEW W2 AS SELECT * FROM W1 
  WHERE 
  (EDS >= ' || SEUIL1 || ' OR JWS >= ' || SEUIL1 || ' OR QG1 >= '   || SEUIL1 || ') 
  AND 
  (EDS >= ' || SEUIL2 || ' AND JWS >= ' || SEUIL2 || ' AND QG1 >= ' || SEUIL2 || ')';
  EXECUTE IMMEDIATE REQ;
  
  REQ := 'CREATE OR REPLACE VIEW W3(A, B, C, D, E, F) AS 
  SELECT REFSOUSSOUSDOMAINEF, SOUSSOUSDOMAINEDEFORMATION, CHAINEACOMPARER, NULL, NULL, NULL
  FROM SOUSSOUSDOMAINESFORMATION
  WHERE CHAINEACOMPARER LIKE ' || CHR(39) || '%' || LAFORMATION || '%' || CHR(39) ;  
  --DBMS_OUTPUT.PUT_LINE('Requête: ' || REQ);
  EXECUTE IMMEDIATE REQ;
  
  REQ := 'CREATE OR REPLACE VIEW W4 AS SELECT * FROM W2 UNION  SELECT * FROM W3'; 
  EXECUTE IMMEDIATE REQ;
  
  REQ := 'CREATE OR REPLACE VIEW W5 AS SELECT DISTINCT REFSOUSSOUSDOMAINEF, SOUSSOUSDOMAINEDEFORMATION FROM W4'; 
  EXECUTE IMMEDIATE REQ;
  
  REQ := 'SELECT COUNT(*) FROM W5'; 
  EXECUTE IMMEDIATE REQ INTO NBREREPONSES ;
  DBMS_OUTPUT.PUT_LINE('Nombre de réponses : ' || NBREREPONSES);
  
END; --COMPARER_CHAINES_2
/



-- TESTS
-- ==== MFB =======================================================================================================================
----- Interrogation des données de la BD EN SQL
-- ==== MFB =======================================================================================================================
-- ==== MFB =======================================================================================================================
-- Recherches dans la table 1 : DOMAINESFORMATION
EXEC CONTROL_F_MFB(1, 'PROduction-Lean', 75,35);
SELECT * FROM W5 ORDER BY 1;
SELECT 'PROduction-Lean' AS FORMATIONDEMANDEE, DOMAINEDEFORMATION, REFDOMAINEF, EDS, JWS, QG1, CHAINEACOMPARER FROM W4 ORDER BY 3;
---
EXEC CONTROL_F_MFB(1, 'Certificasion pas domaine', 75,35);
SELECT * FROM W5 ORDER BY 1;
SELECT 'Certificasion pas domaine' AS FORMATIONDEMANDEE, DOMAINEDEFORMATION, REFDOMAINEF, EDS, JWS, QG1, CHAINEACOMPARER FROM W4 ORDER BY 3;
---
EXEC CONTROL_F_MFB(1, 'droit', 75,35);
SELECT * FROM W5 ORDER BY 1;
SELECT 'droit' AS FORMATIONDEMANDEE, DOMAINEDEFORMATION, REFDOMAINEF, EDS, JWS, QG1, CHAINEACOMPARER FROM W4 ORDER BY 3;
---
EXEC CONTROL_F_MFB(1, 'droit_international', 75,35);
SELECT * FROM W5 ORDER BY 1;
SELECT 'droit_international' AS FORMATIONDEMANDEE, DOMAINEDEFORMATION, REFDOMAINEF, EDS, JWS, QG1, CHAINEACOMPARER FROM W4 ORDER BY 3;
---
EXEC CONTROL_F_MFB(1, 'droit des société', 75,35);
SELECT * FROM W5 ORDER BY 1;
SELECT 'droit des société' AS FORMATIONDEMANDEE, DOMAINEDEFORMATION, REFDOMAINEF, EDS, JWS, QG1, CHAINEACOMPARER FROM W4 ORDER BY 3;
---
EXEC CONTROL_F_MFB(1, 'Conseil - Organisation - Audit', 75,35);
SELECT * FROM W5 ORDER BY 1;
SELECT 'Conseil - Organisation - Audit' AS FORMATIONDEMANDEE, DOMAINEDEFORMATION, REFDOMAINEF, EDS, JWS, QG1, CHAINEACOMPARER FROM W4 ORDER BY 3;
---
EXEC CONTROL_F_MFB(1, 'PAO', 75,35);
SELECT * FROM W5 ORDER BY 1;
SELECT 'PAO' AS FORMATIONDEMANDEE, DOMAINEDEFORMATION, REFDOMAINEF, EDS, JWS, QG1, CHAINEACOMPARER FROM W4 ORDER BY 3;
---
EXEC CONTROL_F_MFB(1, 'Pagination assisté', 75,35);
SELECT * FROM W5 ORDER BY 1;
SELECT 'Pagination assisté' AS FORMATIONDEMANDEE, DOMAINEDEFORMATION, REFDOMAINEF, EDS, JWS, QG1, CHAINEACOMPARER FROM W4 ORDER BY 3;
---
EXEC CONTROL_F_MFB(1, 'Pagination assiste', 75,35);
SELECT * FROM W5 ORDER BY 1;
SELECT 'Pagination assiste' AS FORMATIONDEMANDEE, DOMAINEDEFORMATION, REFDOMAINEF, EDS, JWS, QG1, CHAINEACOMPARER FROM W4 ORDER BY 3;
---
EXEC CONTROL_F_MFB(1, 'Pagination assité', 75,35);
SELECT * FROM W5 ORDER BY 1;
SELECT 'Pagination assité' AS FORMATIONDEMANDEE, DOMAINEDEFORMATION, REFDOMAINEF, EDS, JWS, QG1, CHAINEACOMPARER FROM W4 ORDER BY 3;
--- >>>>> !!!
---

-- ==== MFB =======================================================================================================================
-- Recherches dans la table 3 SOUSSOUSDOMAINESFORMATION
---
EXEC CONTROL_F_MFB(3, 'Certification agile', 75,35);
SELECT * FROM W5 ORDER BY 1;
SELECT 'Certification agile' AS FORMATIONDEMANDEE, SOUSSOUSDOMAINEDEFORMATION, REFSOUSSOUSDOMAINEF, EDS, JWS, QG1, CHAINEACOMPARER FROM W4 ORDER BY 3;
---
EXEC CONTROL_F_MFB(3, 'agile', 75,35);
SELECT * FROM W5 ORDER BY 1;
SELECT 'agile' AS FORMATIONDEMANDEE, SOUSSOUSDOMAINEDEFORMATION, REFSOUSSOUSDOMAINEF, EDS, JWS, QG1, CHAINEACOMPARER FROM W4 ORDER BY 3;
---
EXEC CONTROL_F_MFB(3, 'power bi', 75,35);
SELECT * FROM W1 ORDER BY 1;
SELECT 'power bi' AS FORMATIONDEMANDEE, SOUSSOUSDOMAINEDEFORMATION, REFSOUSSOUSDOMAINEF, EDS, JWS, QG1, CHAINEACOMPARER FROM W4 ORDER BY 3;
---
EXEC CONTROL_F_MFB(3, 'excel', 75,35);
SELECT * FROM W5 ORDER BY 1;
SELECT 'excel' AS FORMATIONDEMANDEE, SOUSSOUSDOMAINEDEFORMATION, REFSOUSSOUSDOMAINEF, EDS, JWS, QG1, CHAINEACOMPARER FROM W4 ORDER BY 3;
---
EXEC CONTROL_F_MFB(3, 'Tableaux croisés dynamiques', 75,35);
SELECT * FROM W5 ORDER BY 1;
SELECT 'Tableaux croisés dynamiques' AS FORMATIONDEMANDEE, SOUSSOUSDOMAINEDEFORMATION, REFSOUSSOUSDOMAINEF, EDS, JWS, QG1, CHAINEACOMPARER FROM W4 ORDER BY 3;
---
EXEC CONTROL_F_MFB(3, 'Tableau croisé dynamique', 75,35);
SELECT * FROM W5 ORDER BY 1;
SELECT 'Tableau croisé dynamique' AS FORMATIONDEMANDEE, SOUSSOUSDOMAINEDEFORMATION, REFSOUSSOUSDOMAINEF, EDS, JWS, QG1, CHAINEACOMPARER FROM W4 ORDER BY 3;
---
EXEC CONTROL_F_MFB(3, 'poser bi', 75,35);
SELECT * FROM W1 ORDER BY 1;
SELECT 'poser bi' AS FORMATIONDEMANDEE, SOUSSOUSDOMAINEDEFORMATION, REFSOUSSOUSDOMAINEF, EDS, JWS, QG1, CHAINEACOMPARER FROM W4 ORDER BY 3;

--- >>>>> !!!
---