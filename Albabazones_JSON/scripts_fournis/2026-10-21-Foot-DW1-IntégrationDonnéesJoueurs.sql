-- ==== MFB =======================================================================================================================
-------- Université Sorbonne Paris Nord , Institut Galiée
-------- Master 2 Informatique (M2 EID2 = Exploration Informatique des Données et Décisionnel), Ingénieurs
-- ==== MFB =======================================================================================================================
-- Octobre 2026
/*
L'intégration des données dans le processus de construction d'un entrepôt de données consiste à collecter, 
transformer et charger (ETL ou ELT) des données provenant de différentes sources pour les centraliser 
dans un référentiel unique. Cela permet une analyse cohérente et optimisée pour la prise de décision.

Étapes primordiales de l'intégration des données :
Extraction (E - Extraction) : Récupération des données depuis différentes sources (bases de données, fichiers, API, etc.).
Transformation (T - Transformation) : Nettoyage, standardisation, déduplication et enrichissement des données pour assurer 
leur qualité et cohérence.
Chargement (L - Loading) : Insertion des données transformées dans l’entrepôt de données en mode batch (périodique) 
ou temps réel.
Gouvernance et Qualité des Données : Mise en place de règles de contrôle pour garantir l’exactitude, la conformité 
et la sécurité des données.
Automatisation et Orchestration : Utilisation d'outils comme ETL (Talend, Informatica, SSIS) 
ou ELT (Azure Data Factory, Snowflake, BigQuery) pour automatiser les flux de données.
L’objectif final est de fournir une source unique de vérité (Single Source of Truth - SSOT)
pour améliorer l’analyse et la prise de décision en entreprise.
*/
--
-- ==== MFB =======================================================================================================================
-- Binome = Groupe de Travail N° xy  : Bxy (Exemple B01, B02,... B09, B10, B11...)
-- ==== MFB =======================================================================================================================
-- Numéro du Binôme (= GroupeDeTravail) --->>>> : Bxy
-- NOM1 PRENOM1                         --->>>> : np1
-- NOM2 PRENOM2                         --->>>> : np2

-- ====>>> Vos fichiers sql devront s'appeler : Bxy-NomDuFichier.sql
-- ==== MFB =======================================================================================================================
-- MFB MFB MFB MFB MFB MFB MFB MFB MFB MFB MFB MFB MFB MFB MFB MFB MFB MFB MFB MFB MFB MFB MFB MFB MFB MFB MFB MFB MFB MFB MFB MFB 
-- ==== MFB =======================================================================================================================

-- ==== MFB =======================================================================================================================
----==== DATA BASE, DATA WAREHOUSE, MASTER DATA, DATA LAKE, BIG DATA ====---------
--   Structured data;      Semi-structured data;      NON-structured data
--   Données structurées ; Données Semi-structurées ; Données NON structurées
--   More semantics to better manage, use, exploit, explore and correct data
--   Plus de sémantique afin de mieux : gérer, utiliser, exploiter, explorer et corriger les données
-- ==== MFB =======================================================================================================================
--   Nom du SGBD/DBMS  : ORACLE  
-- ==== MFB =======================================================================================================================

-- ==== MFB =======================================================================================================================
-- Bonjour = Hello = Buongiorno = Guten Tag = おはよう    = صباح الخير             
-- ==== MFB =======================================================================================================================
-- Salut   = Hi    =  Ciao      = Hi        = こんにちは   = سلام                    
-- ==== MFB =======================================================================================================================

-- ==== MFB =======================================================================================================================
----- Création des tables/Dimensions et des données de l'entrepôt de données SPORT
-- ==== MFB =======================================================================================================================
/*
OBjectif du TP : INTEGRER/FUSIONNER les tables Bxy_T_i (i=1,n) 
ci-dessous pour en faire une table de référence Bxy_TDim ou Bxy_TDim_P
qui contient la liste mondiale des joueuses/joueurs (Football PLAYERS) de football !

On pourra évidemment construire d'autres tables de références telles que celles des pays, des villes 
ou encore des postes occupés sur un terrain de football ou les différents types de blessures etc...
*/

-- ==== MFB =======================================================================================================================
-- ==== MFB ============================  Bibliothèque de fonctions  et de procédures PL/SQL ======================================
-- ==== MFB =======================================================================================================================
 
CREATE OR REPLACE FUNCTION enlever_espaces_superflus(Ch_Str IN VARCHAR2) RETURN VARCHAR2
IS
BEGIN
  -- Enlever_espaces_superflus
  RETURN RTRIM(LTRIM(REGEXP_REPLACE(Ch_Str, '( ){2,}', ' ')));
END; -- enlever_espaces_superflus
/

CREATE OR REPLACE FUNCTION remplacer_espace_par_tiret(Ch_Str IN VARCHAR2) RETURN VARCHAR2
IS
BEGIN
   -- Remplacer les espaces par des tirets
   RETURN REPLACE(Ch_Str, ' ', '-');
END; --remplacer_espace_par_tiret
/

-- Eventuellement plusieurs autres fonctions et/ou procédures afin réaliser la bonne intégration !
CREATE OR REPLACE FUNCTION nomfonction(listeparamètres IN VARCHAR2) RETURN NUMBER
IS
BEGIN
  -- commentaire
  RETURN 0;
END;  -- nomfonction
/

-- ==== MFB =======================================================================================================================
-- ==== MFB ============================  Bibliothèque de fonctions  et de procédures PL/SQL ======================================
-- ==== MFB =======================================================================================================================

-- ==== MFB =======================================================================================================================
----- >> Table : Bxy_T1_Joueurs                                             
-- ==== MFB =======================================================================================================================

DROP TABLE Bxy_T1_Joueurs;

CREATE TABLE Bxy_T1_Joueurs
(
ID					VARCHAR2(20),
NOM					VARCHAR2(20),
Prenom				VARCHAR2(20),
Poste				VARCHAR2(20),
PaysDorigine		VARCHAR2(20),
Annee2Naissance		VARCHAR2(20)
);

INSERT INTO Bxy_T1_Joueurs VALUES ('1991AlgMah', 'Mahrez', 'Riyad', 'Milieu', 'Algérie', '1991');
INSERT INTO Bxy_T1_Joueurs VALUES ('1986AllNeu', 'Neuer', 'Manuel', 'Gardien', 'Allemagne', '1986');
INSERT INTO Bxy_T1_Joueurs VALUES ('1989AllMül', 'Müller', 'Thomas', 'Milieu', 'Allemagne', '1989');
INSERT INTO Bxy_T1_Joueurs VALUES ('1989AllÖzi', 'Özil', 'Mesut', 'Milieu', 'Allemagne', '1989');
INSERT INTO Bxy_T1_Joueurs VALUES ('1989AllReu', 'Reus', 'Marco', 'Attaquant', 'Allemagne', '1989');
INSERT INTO Bxy_T1_Joueurs VALUES ('1990AllKro', 'Kroos', 'Toni', 'Milieu', 'Allemagne', '1990');
INSERT INTO Bxy_T1_Joueurs VALUES ('1991AllGün', 'Gündoğan', 'Ilkay', 'Milieu', 'Allemagne', '1991');
INSERT INTO Bxy_T1_Joueurs VALUES ('1993AllTer', 'Ter Stegen', 'Marc-André', 'Gardien', 'Allemagne', '1993');
INSERT INTO Bxy_T1_Joueurs VALUES ('1995AllKim', 'Kimmich', 'Joshua', 'Milieu', 'Allemagne', '1995');
INSERT INTO Bxy_T1_Joueurs VALUES ('1996AllSan', 'Sané', 'Leroy', 'Attaquant', 'Allemagne', '1996');
INSERT INTO Bxy_T1_Joueurs VALUES ('1997AllGna', 'Gnabry', 'Serge', 'Attaquant', 'Allemagne', '1997');
INSERT INTO Bxy_T1_Joueurs VALUES ('2003AllWir', 'Wirtz', 'Florian', 'Milieu', 'Allemagne', '2003');
INSERT INTO Bxy_T1_Joueurs VALUES ('2004AllMus', 'Musiala', 'Jamal', 'Milieu', 'Allemagne', '2004');
INSERT INTO Bxy_T1_Joueurs VALUES ('2005AllMou', 'Moukoko', 'Youssoufa', 'Attaquant', 'Allemagne', '2005');
INSERT INTO Bxy_T1_Joueurs VALUES ('1978AngLam', 'Lampard', 'Frank', 'Milieu', 'Angleterre', '1978');
INSERT INTO Bxy_T1_Joueurs VALUES ('1980AngGer', 'Gerrard', 'Steven', 'Milieu', 'Angleterre', '1980');
INSERT INTO Bxy_T1_Joueurs VALUES ('1992AngPop', 'Pope', 'Nick', 'Gardien', 'Angleterre', '1992');
INSERT INTO Bxy_T1_Joueurs VALUES ('1993AngKan', 'Kane', 'Harry', 'Attaquant', 'Angleterre', '1993');
INSERT INTO Bxy_T1_Joueurs VALUES ('1994AngPic', 'Pickford', 'Jordan', 'Gardien', 'Angleterre', '1994');
INSERT INTO Bxy_T1_Joueurs VALUES ('1995AngSte', 'Sterling', 'Raheem', 'Attaquant', 'Angleterre', '1995');
INSERT INTO Bxy_T1_Joueurs VALUES ('1997AngRas', 'Rashford', 'Marcus', 'Attaquant', 'Angleterre', '1997');
INSERT INTO Bxy_T1_Joueurs VALUES ('1999AngAle', 'Alexander-Arnold', 'Trent', 'Défenseur', 'Angleterre', '1999');
INSERT INTO Bxy_T1_Joueurs VALUES ('1999AngRam', 'Ramsdale', 'Aaron', 'Gardien', 'Angleterre', '1999');
INSERT INTO Bxy_T1_Joueurs VALUES ('2000AngFod', 'Foden', 'Phil', 'Milieu', 'Angleterre', '2000');
INSERT INTO Bxy_T1_Joueurs VALUES ('2000AngMou', 'Mount', 'Mason', 'Milieu', 'Angleterre', '2000');
INSERT INTO Bxy_T1_Joueurs VALUES ('2003AngBel', 'Bellingham', 'Jude', 'Milieu', 'Angleterre', '2003');
INSERT INTO Bxy_T1_Joueurs VALUES ('2004AngChu', 'Chukwuemeka', 'Carney', 'Milieu', 'Angleterre', '2004');
INSERT INTO Bxy_T1_Joueurs VALUES ('1987ArgMes', 'Messi', 'Lionel', 'Attaquant', 'Argentine', '1987');
INSERT INTO Bxy_T1_Joueurs VALUES ('1988ArgDi ', 'Di Maria', 'Ãngel', 'Milieu', 'Argentine', '1988');
INSERT INTO Bxy_T1_Joueurs VALUES ('1993ArgMar', 'Martínez', 'Emiliano', 'Gardien', 'Argentine', '1993');
INSERT INTO Bxy_T1_Joueurs VALUES ('1994ArgDyb', 'Dybala', 'Paulo', 'Attaquant', 'Argentine', '1994');
INSERT INTO Bxy_T1_Joueurs VALUES ('1998ArgLau', 'Lautaro', 'Martínez', 'Attaquant', 'Argentine', '1998');
INSERT INTO Bxy_T1_Joueurs VALUES ('1998ArgMar', 'Martínez', 'Lautaro', 'Attaquant', 'Argentine', '1998');
INSERT INTO Bxy_T1_Joueurs VALUES ('2002ArgAlm', 'Almada', 'Thiago', 'Milieu', 'Argentine', '2002');
INSERT INTO Bxy_T1_Joueurs VALUES ('2003ArgMed', 'Medina', 'Facundo', 'Défenseur', 'Argentine', '2003');
INSERT INTO Bxy_T1_Joueurs VALUES ('2005ArgGar', 'Garnacho', 'Alejandro', 'Attaquant', 'Argentine', '2005');
INSERT INTO Bxy_T1_Joueurs VALUES ('1993AutAla', 'Alaba', 'David', 'Défenseur', 'Autriche', '1993');
INSERT INTO Bxy_T1_Joueurs VALUES ('1991BelDe ', 'De Bruyne', 'Kevin', 'Milieu', 'Belgique', '1991');
INSERT INTO Bxy_T1_Joueurs VALUES ('1992BelCou', 'Courtois', 'Thibaut', 'Gardien', 'Belgique', '1992');
INSERT INTO Bxy_T1_Joueurs VALUES ('1993BelLuk', 'Lukaku', 'Romelu', 'Attaquant', 'Belgique', '1993');
INSERT INTO Bxy_T1_Joueurs VALUES ('2003BelLav', 'Lavia', 'Roméo', 'Milieu', 'Belgique', '2003');
INSERT INTO Bxy_T1_Joueurs VALUES ('1984BréThi', 'Thiago', 'Silva', 'Défenseur', 'Brésil', '1984');
INSERT INTO Bxy_T1_Joueurs VALUES ('1992BréAli', 'Alisson', 'Becker', 'Gardien', 'Brésil', '1992');
INSERT INTO Bxy_T1_Joueurs VALUES ('1992BréCas', 'Casemiro', 'Carlos', 'Milieu', 'Brésil', '1992');
INSERT INTO Bxy_T1_Joueurs VALUES ('1992BréNey', 'Neymar', 'Junior', 'Attaquant', 'Brésil', '1992');
INSERT INTO Bxy_T1_Joueurs VALUES ('1993BréFab', 'Fabinho', 'Fabio', 'Milieu', 'Brésil', '1993');
INSERT INTO Bxy_T1_Joueurs VALUES ('1994BréEde', 'Ederson', 'Moraes', 'Gardien', 'Brésil', '1994');
INSERT INTO Bxy_T1_Joueurs VALUES ('1995BréMar', 'Marquinhos', 'Marcos', 'Défenseur', 'Brésil', '1995');
INSERT INTO Bxy_T1_Joueurs VALUES ('1997BréJes', 'Jesus', 'Gabriel', 'Attaquant', 'Brésil', '1997');
INSERT INTO Bxy_T1_Joueurs VALUES ('1998BréRic', 'Richarlison', 'Richarlison', 'Attaquant', 'Brésil', '1998');
INSERT INTO Bxy_T1_Joueurs VALUES ('2001BréPai', 'Paixão', 'Gabriel', 'Milieu', 'Brésil', '2001');
INSERT INTO Bxy_T1_Joueurs VALUES ('2001BréRod', 'Rodrygo', 'Rodrygo', 'Attaquant', 'Brésil', '2001');
INSERT INTO Bxy_T1_Joueurs VALUES ('2001BréVin', 'Vini Jr.', 'Vinícius', 'Attaquant', 'Brésil', '2001');
INSERT INTO Bxy_T1_Joueurs VALUES ('2007BréEnd', 'Endrick', 'Endrick', 'Attaquant', 'Brésil', '2007');
INSERT INTO Bxy_T1_Joueurs VALUES ('1982CamEto', 'Eto''o', 'Samuel', 'Attaquant', 'Cameroun', '1982');
INSERT INTO Bxy_T1_Joueurs VALUES ('1996CamOna', 'Onana', 'André', 'Gardien', 'Cameroun', '1996');
INSERT INTO Bxy_T1_Joueurs VALUES ('2001CanDav', 'Davies', 'Alphonso', 'Défenseur', 'Canada', '2001');
INSERT INTO Bxy_T1_Joueurs VALUES ('1992CorSon', 'Son', 'Heung-min', 'Attaquant', 'Corée-du-Sud', '1992');
INSERT INTO Bxy_T1_Joueurs VALUES ('1987CosNav', 'Navas', 'Keylor', 'Gardien', 'Costa-Rica', '1987');
INSERT INTO Bxy_T1_Joueurs VALUES ('2002CôtCai', 'Caicedo', 'Moisés', 'Milieu', 'Côte-d''Ivoire', '2002');
INSERT INTO Bxy_T1_Joueurs VALUES ('2002CôtDio', 'Diomandé', 'Odilon', 'Défenseur', 'Côte-d''Ivoire', '2002');
INSERT INTO Bxy_T1_Joueurs VALUES ('1986CroMod', 'Modrić', 'Luka', 'Milieu', 'Croatie', '1986');
INSERT INTO Bxy_T1_Joueurs VALUES ('1995CroLiv', 'Livaković', 'Dominik', 'Gardien', 'Croatie', '1995');
INSERT INTO Bxy_T1_Joueurs VALUES ('2002CroGva', 'Gvardiol', 'Joško', 'Défenseur', 'Croatie', '2002');
INSERT INTO Bxy_T1_Joueurs VALUES ('2003DanHøj', 'Højlund', 'Rasmus', 'Attaquant', 'Danemark', '2003');
INSERT INTO Bxy_T1_Joueurs VALUES ('1994ÉcoRob', 'Robertson', 'Andrew', 'Défenseur', 'Écosse', '1994');
INSERT INTO Bxy_T1_Joueurs VALUES ('1992ÉgySal', 'Salah', 'Mohamed', 'Attaquant', 'Égypte', '1992');
INSERT INTO Bxy_T1_Joueurs VALUES ('2003ÉquHin', 'Hincapié', 'Piero', 'Défenseur', 'Équateur', '2003');
INSERT INTO Bxy_T1_Joueurs VALUES ('1981EspXav', 'Xavi', 'Xavier', 'Milieu', 'Espagne', '1981');
INSERT INTO Bxy_T1_Joueurs VALUES ('1984EspIni', 'Iniesta', 'Andrés', 'Milieu', 'Espagne', '1984');
INSERT INTO Bxy_T1_Joueurs VALUES ('1986EspRam', 'Ramos', 'Sergio', 'Défenseur', 'Espagne', '1986');
INSERT INTO Bxy_T1_Joueurs VALUES ('1987EspPiq', 'Piqué', 'Gerard', 'Défenseur', 'Espagne', '1987');
INSERT INTO Bxy_T1_Joueurs VALUES ('1988EspBus', 'Busquets', 'Sergio', 'Milieu', 'Espagne', '1988');
INSERT INTO Bxy_T1_Joueurs VALUES ('1989EspAlb', 'Alba', 'Jordi', 'Défenseur', 'Espagne', '1989');
INSERT INTO Bxy_T1_Joueurs VALUES ('1994EspLap', 'Laporte', 'Aymeric', 'Défenseur', 'Espagne', '1994');
INSERT INTO Bxy_T1_Joueurs VALUES ('1996EspRod', 'Rodri', 'Hernández', 'Milieu', 'Espagne', '1996');
INSERT INTO Bxy_T1_Joueurs VALUES ('1999EspOlm', 'Olmo', 'Dani', 'Milieu', 'Espagne', '1999');
INSERT INTO Bxy_T1_Joueurs VALUES ('2002EspGil', 'Gil', 'Bryan', 'Milieu', 'Espagne', '2002');
INSERT INTO Bxy_T1_Joueurs VALUES ('2002EspRic', 'Rico', 'Nico', 'Attaquant', 'Espagne', '2002');
INSERT INTO Bxy_T1_Joueurs VALUES ('2003EspFat', 'Fati', 'Ansu', 'Attaquant', 'Espagne', '2003');
INSERT INTO Bxy_T1_Joueurs VALUES ('2003EspPed', 'Pedri', 'Pedro', 'Milieu', 'Espagne', '2003');
INSERT INTO Bxy_T1_Joueurs VALUES ('2004EspBal', 'Balde', 'Alejandro', 'Défenseur', 'Espagne', '2004');
INSERT INTO Bxy_T1_Joueurs VALUES ('2004EspPin', 'Pino', 'Yeremy', 'Attaquant', 'Espagne', '2004');
INSERT INTO Bxy_T1_Joueurs VALUES ('2005EspGav', 'Gavi', 'Pablo', 'Milieu', 'Espagne', '2005');
INSERT INTO Bxy_T1_Joueurs VALUES ('2008EspYam', 'Yamal', 'Lamine', 'Attaquant', 'Espagne', '2008');
INSERT INTO Bxy_T1_Joueurs VALUES ('2002ÉtaBal', 'Balogun', 'Folarin', 'Attaquant', 'États-Unis', '2002');
INSERT INTO Bxy_T1_Joueurs VALUES ('1987FraLlo', 'Lloris', 'Hugo', 'Gardien', 'France', '1987');
INSERT INTO Bxy_T1_Joueurs VALUES ('1988FraBen', 'Benzema', 'Karim', 'Attaquant', 'France', '1988');
INSERT INTO Bxy_T1_Joueurs VALUES ('1991FraGri', 'Griezmann', 'Antoine', 'Attaquant', 'France', '1991');
INSERT INTO Bxy_T1_Joueurs VALUES ('1991FraKan', 'Kanté', 'N''Golo', 'Milieu', 'France', '1991');
INSERT INTO Bxy_T1_Joueurs VALUES ('1993FraPog', 'Pogba', 'Paul', 'Milieu', 'France', '1993');
INSERT INTO Bxy_T1_Joueurs VALUES ('1993FraVar', 'Varane', 'Raphaël', 'Défenseur', 'France', '1993');
INSERT INTO Bxy_T1_Joueurs VALUES ('1995FraRab', 'Rabiot', 'Adrien', 'Milieu', 'France', '1995');
INSERT INTO Bxy_T1_Joueurs VALUES ('1996FraMai', 'Maignan', 'Mike', 'Gardien', 'France', '1996');
INSERT INTO Bxy_T1_Joueurs VALUES ('1997FraCom', 'Coman', 'Kingsley', 'Attaquant', 'France', '1997');
INSERT INTO Bxy_T1_Joueurs VALUES ('1998FraUpa', 'Upamecano', 'Dayot', 'Défenseur', 'France', '1998');
INSERT INTO Bxy_T1_Joueurs VALUES ('1999FraMba', 'Mbappé', 'Kylian', 'Attaquant', 'France', '1999');
INSERT INTO Bxy_T1_Joueurs VALUES ('2000FraDem', 'Dembélé', 'Ousmane', 'Milieu', 'France', '2000');
INSERT INTO Bxy_T1_Joueurs VALUES ('2000FraKon', 'Konaté', 'Ibrahima', 'Défenseur', 'France', '2000');
INSERT INTO Bxy_T1_Joueurs VALUES ('2001FraTch', 'Tchouaméni', 'Aurélien', 'Milieu', 'France', '2001');
INSERT INTO Bxy_T1_Joueurs VALUES ('2002FraTch', 'Tchouaméni', 'Aurélien', 'Milieu', 'France', '2002');
INSERT INTO Bxy_T1_Joueurs VALUES ('2003FraCam', 'Camavinga', 'Eduardo', 'Milieu', 'France', '2003');
INSERT INTO Bxy_T1_Joueurs VALUES ('2004FraChe', 'Cherki', 'Rayan', 'Attaquant', 'France', '2004');
INSERT INTO Bxy_T1_Joueurs VALUES ('2001GéoKva', 'Kvaratskhelia', 'Khvicha', 'Attaquant', 'Géorgie', '2001');
INSERT INTO Bxy_T1_Joueurs VALUES ('2001HonSzo', 'Szoboszlai', 'Dominik', 'Milieu', 'Hongrie', '2001');
INSERT INTO Bxy_T1_Joueurs VALUES ('2005IrlFer', 'Ferguson', 'Evan', 'Attaquant', 'Irlande', '2005');
INSERT INTO Bxy_T1_Joueurs VALUES ('1980ItaPir', 'Pirlo', 'Andrea', 'Milieu', 'Italie', '1980');
INSERT INTO Bxy_T1_Joueurs VALUES ('1985ItaChi', 'Chiellini', 'Giorgio', 'Défenseur', 'Italie', '1985');
INSERT INTO Bxy_T1_Joueurs VALUES ('1987ItaBon', 'Bonucci', 'Leonardo', 'Défenseur', 'Italie', '1987');
INSERT INTO Bxy_T1_Joueurs VALUES ('1990ItaIns', 'Insigne', 'Lorenzo', 'Attaquant', 'Italie', '1990');
INSERT INTO Bxy_T1_Joueurs VALUES ('1992ItaJor', 'Jorginho', 'Jorge', 'Milieu', 'Italie', '1992');
INSERT INTO Bxy_T1_Joueurs VALUES ('1993ItaVer', 'Verratti', 'Marco', 'Milieu', 'Italie', '1993');
INSERT INTO Bxy_T1_Joueurs VALUES ('1994ItaSpi', 'Spinazzola', 'Leonardo', 'Défenseur', 'Italie', '1994');
INSERT INTO Bxy_T1_Joueurs VALUES ('1997ItaBar', 'Barella', 'Nicolò', 'Milieu', 'Italie', '1997');
INSERT INTO Bxy_T1_Joueurs VALUES ('1998ItaChi', 'Chiesa', 'Federico', 'Attaquant', 'Italie', '1998');
INSERT INTO Bxy_T1_Joueurs VALUES ('1999ItaDon', 'Donnarumma', 'Gianluigi', 'Gardien', 'Italie', '1999');
INSERT INTO Bxy_T1_Joueurs VALUES ('2003ItaAnt', 'Antonio', 'Antonio', 'Défenseur', 'Italie', '2003');
INSERT INTO Bxy_T1_Joueurs VALUES ('2004ItaMir', 'Miretti', 'Fabio', 'Milieu', 'Italie', '2004');
INSERT INTO Bxy_T1_Joueurs VALUES ('2004ItaSca', 'Scalvini', 'Giorgio', 'Défenseur', 'Italie', '2004');
INSERT INTO Bxy_T1_Joueurs VALUES ('1994MarZiy', 'Ziyech', 'Hakim', 'Milieu', 'Maroc', '1994');
INSERT INTO Bxy_T1_Joueurs VALUES ('1999MarHak', 'Hakimi', 'Achraf', 'Défenseur', 'Maroc', '1999');
INSERT INTO Bxy_T1_Joueurs VALUES ('1986MexOch', 'Ochoa', 'Guillermo', 'Gardien', 'Mexique', '1986');
INSERT INTO Bxy_T1_Joueurs VALUES ('1999NigOsi', 'Osimhen', 'Victor', 'Attaquant', 'Nigeria', '1999');
INSERT INTO Bxy_T1_Joueurs VALUES ('2000NorHaa', 'Haaland', 'Erling', 'Attaquant', 'Norvège', '2000');
INSERT INTO Bxy_T1_Joueurs VALUES ('1990PayBal', 'Bale', 'Gareth', 'Attaquant', 'Pays de Galles', '1990');
INSERT INTO Bxy_T1_Joueurs VALUES ('1985PayRob', 'Robben', 'Arjen', 'Attaquant', 'Pays-Bas', '1985');
INSERT INTO Bxy_T1_Joueurs VALUES ('1991PayVan', 'Van Dijk', 'Virgil', 'Défenseur', 'Pays-Bas', '1991');
INSERT INTO Bxy_T1_Joueurs VALUES ('1994PayDep', 'Depay', 'Memphis', 'Attaquant', 'Pays-Bas', '1994');
INSERT INTO Bxy_T1_Joueurs VALUES ('2002PayTim', 'Timber', 'Jurrien', 'Défenseur', 'Pays-Bas', '2002');
INSERT INTO Bxy_T1_Joueurs VALUES ('2002PayZir', 'Zirkzee', 'Joshua', 'Attaquant', 'Pays-Bas', '2002');
INSERT INTO Bxy_T1_Joueurs VALUES ('2003PayGra', 'Gravenberch', 'Ryan', 'Milieu', 'Pays-Bas', '2003');
INSERT INTO Bxy_T1_Joueurs VALUES ('2004PaySim', 'Simons', 'Xavi', 'Milieu', 'Pays-Bas', '2004');
INSERT INTO Bxy_T1_Joueurs VALUES ('1988PolLew', 'Lewandowski', 'Robert', 'Attaquant', 'Pologne', '1988');
INSERT INTO Bxy_T1_Joueurs VALUES ('1991PolSzc', 'Szczęsny', 'Wojciech', 'Gardien', 'Pologne', '1991');
INSERT INTO Bxy_T1_Joueurs VALUES ('1985PorRon', 'Ronaldo', 'Cristiano', 'Attaquant', 'Portugal', '1985');
INSERT INTO Bxy_T1_Joueurs VALUES ('1994PorBer', 'Bernardo', 'Silva', 'Milieu', 'Portugal', '1994');
INSERT INTO Bxy_T1_Joueurs VALUES ('1995PorFer', 'Fernandes', 'Bruno', 'Milieu', 'Portugal', '1995');
INSERT INTO Bxy_T1_Joueurs VALUES ('1997PorDia', 'Dias', 'Rúben', 'Défenseur', 'Portugal', '1997');
INSERT INTO Bxy_T1_Joueurs VALUES ('1997PorFáb', 'Fábio Vieira', 'Fábio', 'Attaquant', 'Portugal', '1997');
INSERT INTO Bxy_T1_Joueurs VALUES ('2000PorLea', 'Leao', 'Rafael', 'Attaquant', 'Portugal', '2000');
INSERT INTO Bxy_T1_Joueurs VALUES ('2001PorNun', 'Nuno', 'Nuno', 'Défenseur', 'Portugal', '2001');
INSERT INTO Bxy_T1_Joueurs VALUES ('2001PorVit', 'Vitinha', 'Vítor', 'Milieu', 'Portugal', '2001');
INSERT INTO Bxy_T1_Joueurs VALUES ('2002PorRam', 'Ramos', 'Gonçalo', 'Attaquant', 'Portugal', '2002');
INSERT INTO Bxy_T1_Joueurs VALUES ('1987SerKol', 'Kolarov', 'Aleksandar', 'Défenseur', 'Serbie', '1987');
INSERT INTO Bxy_T1_Joueurs VALUES ('1989SerTad', 'Tadic', 'Dusan', 'Milieu', 'Serbie', '1989');
INSERT INTO Bxy_T1_Joueurs VALUES ('1995SerJov', 'Jović', 'Luka', 'Attaquant', 'Serbie', '1995');
INSERT INTO Bxy_T1_Joueurs VALUES ('1993SloObl', 'Oblak', 'Jan', 'Gardien', 'Slovénie', '1993');
INSERT INTO Bxy_T1_Joueurs VALUES ('1982SuèIbr', 'Ibrahimović', 'Zlatan', 'Attaquant', 'Suède', '1982');
INSERT INTO Bxy_T1_Joueurs VALUES ('1999SuèKul', 'Kulusevski', 'Dejan', 'Attaquant', 'Suède', '1999');
INSERT INTO Bxy_T1_Joueurs VALUES ('1989SuiSom', 'Sommer', 'Yann', 'Gardien', 'Suisse', '1989');
INSERT INTO Bxy_T1_Joueurs VALUES ('2001UkrMud', 'Mudryk', 'Mykhailo', 'Attaquant', 'Ukraine', '2001');
INSERT INTO Bxy_T1_Joueurs VALUES ('2002UkrTru', 'Trubin', 'Anatoliy', 'Gardien', 'Ukraine', '2002');
INSERT INTO Bxy_T1_Joueurs VALUES ('1987UruSuá', 'Suárez', 'Luis', 'Attaquant', 'Uruguay', '1987');
INSERT INTO Bxy_T1_Joueurs VALUES ('1988UruCav', 'Cavani', 'Edinson', 'Attaquant', 'Uruguay', '1988');
INSERT INTO Bxy_T1_Joueurs VALUES ('1998UruVal', 'Valverde', 'Federico', 'Milieu', 'Uruguay', '1998');
INSERT INTO Bxy_T1_Joueurs VALUES ('2002UruUga', 'Ugarte', 'Manuel', 'Milieu', 'Uruguay', '2002');
COMMIT;

SELECT * FROM Bxy_T1_Joueurs;

-- ==== MFB =======================================================================================================================
----- >> Table : Bxy_T2_Goalkeeper                                             
-- ==== MFB =======================================================================================================================

DROP TABLE Bxy_T2_Goalkeeper;

CREATE TABLE Bxy_T2_Goalkeeper
(
ID					VARCHAR2(20),
FirstName			VARCHAR2(20),
LastName			VARCHAR2(20),
Position			VARCHAR2(20),
Country_Origin		VARCHAR2(20)
);

INSERT INTO Bxy_T2_Goalkeeper VALUES ('GERGK01', 'Manuel', 'NEUER', 'Goalkeeper', 'GERMANY');
INSERT INTO Bxy_T2_Goalkeeper VALUES ('GERGK02', '    Marc-André', 'TER     STEGEN', 'Goalkeeper', 'GERMANY');
INSERT INTO Bxy_T2_Goalkeeper VALUES ('ENGGK03', 'Nick', 'POPE', 'Goalkeeper', 'ENGLAND');
INSERT INTO Bxy_T2_Goalkeeper VALUES ('ENGGK04', 'Jordan', 'PICKFORD', 'Goalkeeper', 'ENGLAND');
INSERT INTO Bxy_T2_Goalkeeper VALUES ('ENGGK05', 'Aaron', 'RAMSDALE', 'Goalkeeper', 'ENGLAND');
INSERT INTO Bxy_T2_Goalkeeper VALUES ('ARGGK06', 'Emiliano', 'MARTÍNEZ', 'Goalkeeper', 'ARGENTINA');
INSERT INTO Bxy_T2_Goalkeeper VALUES ('BELGK07', 'Thibaut', 'COURTOIS', 'Goalkeeper', 'BELGIUM');
INSERT INTO Bxy_T2_Goalkeeper VALUES ('BRAGK08', 'Becker', 'ALISSON', 'Goalkeeper', 'BRAZIL');
INSERT INTO Bxy_T2_Goalkeeper VALUES ('BRAGK09', 'Moraes', 'EDERSON', 'Goalkeeper', 'BRAZIL');
INSERT INTO Bxy_T2_Goalkeeper VALUES ('CAMGK10', 'André', 'ONANA', 'Goalkeeper', 'CAMEROON');
INSERT INTO Bxy_T2_Goalkeeper VALUES ('COSGK11', 'Keylor', 'NAVAS', 'Goalkeeper', 'COSTA RICA');
INSERT INTO Bxy_T2_Goalkeeper VALUES ('CROGK12', 'Dominik', 'LIVAKOVIĆ', 'Goalkeeper', 'CROATIA');
INSERT INTO Bxy_T2_Goalkeeper VALUES ('FRAGK13', 'Hugo', 'LLORIS', 'Goalkeeper', 'FRANCE');
INSERT INTO Bxy_T2_Goalkeeper VALUES ('FRAGK14', 'Mike', 'MAIGNAN', 'Goalkeeper', 'FRANCE');
INSERT INTO Bxy_T2_Goalkeeper VALUES ('ITAGK15', 'Gianluigi', 'DONNARUMMA', 'Goalkeeper', 'ITALY');
INSERT INTO Bxy_T2_Goalkeeper VALUES ('MEXGK16', 'Guillermo', 'OCHOA', 'Goalkeeper', 'MEXICO');
INSERT INTO Bxy_T2_Goalkeeper VALUES ('POLGK17', 'Wojciech', 'SZCZĘSNY', 'Goalkeeper', 'POLAND');
INSERT INTO Bxy_T2_Goalkeeper VALUES ('SLOGK18', 'Jan', 'OBLAK', 'Goalkeeper', 'SLOVENIA');
INSERT INTO Bxy_T2_Goalkeeper VALUES ('SWIGK19', 'Yann', 'SOMMER', 'Goalkeeper', 'SWITZERLAND');
INSERT INTO Bxy_T2_Goalkeeper VALUES ('UKRGK20', 'Anatoliy', 'TRUBIN', 'Goalkeeper', 'UKRAINE');
COMMIT;

SELECT * FROM Bxy_T2_Goalkeeper;

-- ==== MFB =======================================================================================================================
----- >> Table : Bxy_T3_TOP10_JoueursFoot                                             
-- ==== MFB =======================================================================================================================

DROP TABLE Bxy_T3_TOP10_JoueursFoot;

CREATE TABLE Bxy_T3_TOP10_JoueursFoot
(
ID					VARCHAR2(20),
NOM					VARCHAR2(20),
Prenom				VARCHAR2(20),
Poste				VARCHAR2(20),
Pays2Naissance		VARCHAR2(20),
Annee2Naissance		VARCHAR2(20)
);

INSERT INTO Bxy_T3_TOP10_JoueursFoot VALUES ('1', 'Di Stéfano', 'Alfredo', 'Attaquant', 'Argentine', '1926');	
INSERT INTO Bxy_T3_TOP10_JoueursFoot VALUES ('2', 'Yashin', 'Lev', 'Gardien', 'Russie', '1929');	
INSERT INTO Bxy_T3_TOP10_JoueursFoot VALUES ('3', 'Banks', 'Gordon', 'Gardien', 'Angleterre', '1937');	
INSERT INTO Bxy_T3_TOP10_JoueursFoot VALUES ('4', 'Pelé', 'Edson', 'Attaquant', 'Brésil', '1940');	
INSERT INTO Bxy_T3_TOP10_JoueursFoot VALUES ('5', 'Zoff', 'Dino', 'Gardien', 'Italie', '1942');	
INSERT INTO Bxy_T3_TOP10_JoueursFoot VALUES ('6', 'Beckenbauer', 'Franz', 'Défenseur', 'Allemagne', '1945');	
INSERT INTO Bxy_T3_TOP10_JoueursFoot VALUES ('7', 'Cruyff', 'Johan', 'Milieu', 'Pays-Bas', '1947');	
INSERT INTO Bxy_T3_TOP10_JoueursFoot VALUES ('8', 'Arconada', 'Luis', 'Gardien', 'Espagne', '1954');	
INSERT INTO Bxy_T3_TOP10_JoueursFoot VALUES ('9', 'Platini', 'Michel', 'Milieu', 'France', '1955');	
INSERT INTO Bxy_T3_TOP10_JoueursFoot VALUES ('10', 'Maradona', 'Diego', 'Attaquant', 'Argentine', '1960');	
INSERT INTO Bxy_T3_TOP10_JoueursFoot VALUES ('11', 'Schmeichel', 'Peter', 'Gardien', 'Danemark', '1963');	
INSERT INTO Bxy_T3_TOP10_JoueursFoot VALUES ('12', 'Taffarel', 'Cláudio', 'Gardien', 'Brésil', '1966');	
INSERT INTO Bxy_T3_TOP10_JoueursFoot VALUES ('13', 'Kahn', 'Oliver', 'Gardien', 'Allemagne', '1969');	
INSERT INTO Bxy_T3_TOP10_JoueursFoot VALUES ('14', 'Zidane', 'Zinedine', 'Milieu', 'France', '1972');	
INSERT INTO Bxy_T3_TOP10_JoueursFoot VALUES ('15', 'Ronaldo', 'Nazário', 'Attaquant', 'Brésil', '1976');	
INSERT INTO Bxy_T3_TOP10_JoueursFoot VALUES ('16', 'Buffon', 'Gianluigi', 'Gardien', 'Italie', '1978');	
INSERT INTO Bxy_T3_TOP10_JoueursFoot VALUES ('17', 'Casillas', 'Iker', 'Gardien', 'Espagne', '1981');	
INSERT INTO Bxy_T3_TOP10_JoueursFoot VALUES ('18', 'Ronaldo', 'Cristiano', 'Attaquant', 'Portugal', '1985');	
INSERT INTO Bxy_T3_TOP10_JoueursFoot VALUES ('19', 'Neuer', 'Manuel', 'Gardien', 'Allemagne', '1986');	
INSERT INTO Bxy_T3_TOP10_JoueursFoot VALUES ('20', 'Messi', 'Lionel', 'Attaquant', 'Argentine', '1987');	
COMMIT;

SELECT * FROM Bxy_T3_TOP10_JoueursFoot;

-- ==== MFB =======================================================================================================================
----- >> Table : Bxy_T4_BlessuresJoueurs                                             
-- ==== MFB =======================================================================================================================

DROP TABLE Bxy_T4_BlessuresJoueurs;

CREATE TABLE Bxy_T4_BlessuresJoueurs
(
Prenom					VARCHAR2(20),
NOM						VARCHAR2(20),
Type2Blessure_Grave		VARCHAR2(200)
);

INSERT INTO Bxy_T4_BlessuresJoueurs VALUES ('Rodri', 'Hernández', 'Rupture du ligament croisé du genou ');
INSERT INTO Bxy_T4_BlessuresJoueurs VALUES ('Dani  ', '  Carvajal', 'Rupture du ligament croisé du genou ');
INSERT INTO Bxy_T4_BlessuresJoueurs VALUES ('Eder', 'Militão', 'Rupture du ligament croisé du genou ');
INSERT INTO Bxy_T4_BlessuresJoueurs VALUES ('Mauro', 'Icardi', 'Rupture du ligament croisé du genou ');
INSERT INTO Bxy_T4_BlessuresJoueurs VALUES ('Gianluca', 'Scamacca', 'Rupture du ligament croisé du genou ');
INSERT INTO Bxy_T4_BlessuresJoueurs VALUES ('Gleison', 'Bremer', 'Rupture du ligament croisé du genou ');
INSERT INTO Bxy_T4_BlessuresJoueurs VALUES ('Alessandro', 'Florenzi', 'Rupture du ligament croisé du genou ');
INSERT INTO Bxy_T4_BlessuresJoueurs VALUES ('Sven', 'Botman', 'Rupture du ligament croisé du genou ');
INSERT INTO Bxy_T4_BlessuresJoueurs VALUES ('Duván', 'Zapata', 'Rupture du ligament croisé du genou ');
INSERT INTO Bxy_T4_BlessuresJoueurs VALUES ('Terem', 'Moffi', 'Rupture du ligament croisé ');
INSERT INTO Bxy_T4_BlessuresJoueurs VALUES ('Tiago', 'Santos', 'Rupture du ligament croisé ');
INSERT INTO Bxy_T4_BlessuresJoueurs VALUES ('Moïse', 'Sahi Dion', 'Rupture du tendon d''Achille ');
INSERT INTO Bxy_T4_BlessuresJoueurs VALUES ('Abdoulaye', 'Touré', 'Côte fracturée ');
INSERT INTO Bxy_T4_BlessuresJoueurs VALUES ('Elysée', 'Logbo', 'Blessure de l''épaule ');
INSERT INTO Bxy_T4_BlessuresJoueurs VALUES ('Lucas', 'Mincarelli', 'Blessure musculaire ');
INSERT INTO Bxy_T4_BlessuresJoueurs VALUES ('Glenn', 'Ngosso', 'Rupture du ligament croisé ');
INSERT INTO Bxy_T4_BlessuresJoueurs VALUES ('Tino', 'Kadewere', 'Blessure à la cuisse ');
INSERT INTO Bxy_T4_BlessuresJoueurs VALUES ('Samuel', 'Umtiti', 'Opération du genou ');
INSERT INTO Bxy_T4_BlessuresJoueurs VALUES ('Nabil', 'Bentaleb', 'Problème de cœur ');
INSERT INTO Bxy_T4_BlessuresJoueurs VALUES ('Matias', 'Fernandez-Pardo', 'Déchirure des ligaments de la cheville ');
INSERT INTO Bxy_T4_BlessuresJoueurs VALUES ('Daler', 'Kuzyaev', 'Blessure au mollet ');
INSERT INTO Bxy_T4_BlessuresJoueurs VALUES ('Sidiki', 'Chérif', 'Blessure musculaire ');
INSERT INTO Bxy_T4_BlessuresJoueurs VALUES ('Aïmen', 'Moueffek', 'Maladie ');
INSERT INTO Bxy_T4_BlessuresJoueurs VALUES ('Yvann', 'Maçon', 'Blessure au genou ');
INSERT INTO Bxy_T4_BlessuresJoueurs VALUES ('Folarin', 'Balogun', 'Blessure de l''épaule ');
INSERT INTO Bxy_T4_BlessuresJoueurs VALUES ('Lasso', 'Coulibaly', 'Blessure au ligament croisé ');
INSERT INTO Bxy_T4_BlessuresJoueurs VALUES ('Rémy', 'Labeau Lascary', 'Rupture du ligament croisé ');
INSERT INTO Bxy_T4_BlessuresJoueurs VALUES ('Nikola', 'Maksimović', 'Blessure à l''ischio ');
INSERT INTO Bxy_T4_BlessuresJoueurs VALUES ('Valentín', 'Carboni', 'Rupture du ligament croisé ');
INSERT INTO Bxy_T4_BlessuresJoueurs VALUES ('Nathan', 'Buayi-Kiala', 'Blessure au ligament croisé ');
INSERT INTO Bxy_T4_BlessuresJoueurs VALUES ('Gabriel', 'Jesús', 'Rupture du ligament croisé antérieur du genou');
INSERT INTO Bxy_T4_BlessuresJoueurs VALUES ('Raphaël', 'Varane', 'Blessures récurrentes au genou');
INSERT INTO Bxy_T4_BlessuresJoueurs VALUES ('José', 'Gragera', 'Hallux rigidus nécessitant une intervention chirurgicale');
INSERT INTO Bxy_T4_BlessuresJoueurs VALUES ('José Luis', 'Catalá', 'Rupture du ligament croisé antérieur et lésion du ménisque externe de la rodilla droite');
INSERT INTO Bxy_T4_BlessuresJoueurs VALUES ('Marc-André', 'ter Stegen', 'Blessure grave non spécifiée');
INSERT INTO Bxy_T4_BlessuresJoueurs VALUES ('Rodri', 'Hernández', 'Blessure grave non spécifiée');
INSERT INTO Bxy_T4_BlessuresJoueurs VALUES ('Dani', 'Carvajal', 'Rupture des ligaments croisés du genou');
INSERT INTO Bxy_T4_BlessuresJoueurs VALUES ('Eder', 'Militão', 'Rupture des ligaments croisés du genou');
INSERT INTO Bxy_T4_BlessuresJoueurs VALUES ('Mauro', 'Icardi', 'Rupture des ligaments croisés du genou');
INSERT INTO Bxy_T4_BlessuresJoueurs VALUES ('Gianluca', 'Scamacca', 'Rupture des ligaments croisés du genou');
INSERT INTO Bxy_T4_BlessuresJoueurs VALUES ('Gleison', 'Bremer', 'Rupture des ligaments croisés du genou');
INSERT INTO Bxy_T4_BlessuresJoueurs VALUES ('Alessandro', 'Florenzi', 'Rupture des ligaments croisés du genou');
INSERT INTO Bxy_T4_BlessuresJoueurs VALUES ('Sven', 'Botman', 'Rupture des ligaments croisés du genou');
INSERT INTO Bxy_T4_BlessuresJoueurs VALUES ('Duván', 'Zapata', 'Rupture des ligaments croisés du genou');
INSERT INTO Bxy_T4_BlessuresJoueurs VALUES ('Terem', 'Moffi', 'Rupture des ligaments croisés du genou');
INSERT INTO Bxy_T4_BlessuresJoueurs VALUES ('Tiago', 'Santos', 'Rupture des ligaments croisés du genou');
INSERT INTO Bxy_T4_BlessuresJoueurs VALUES ('Moïse', 'Sahi Dion', 'Rupture du tendon d''Achille');
INSERT INTO Bxy_T4_BlessuresJoueurs VALUES ('Abdoulaye', 'Touré', 'Côte fracturée');
INSERT INTO Bxy_T4_BlessuresJoueurs VALUES ('Elysée', 'Logbo', 'Blessure de l''épaule');
INSERT INTO Bxy_T4_BlessuresJoueurs VALUES ('Lucas', 'Mincarelli', 'Blessure musculaire');
INSERT INTO Bxy_T4_BlessuresJoueurs VALUES ('Glenn', 'Ngosso', 'Rupture des ligaments croisés du genou');
INSERT INTO Bxy_T4_BlessuresJoueurs VALUES ('Tino', 'Kadewere', 'Blessure à la cuisse');
COMMIT;

SELECT * FROM Bxy_T4_BlessuresJoueurs;

-- ==== MFB =======================================================================================================================
----- >> Table : Bxy_T5_JoueusesFoot                                             
-- ==== MFB =======================================================================================================================

DROP TABLE Bxy_T5_JoueusesFoot;

CREATE TABLE Bxy_T5_JoueusesFoot
(
Name_First_Last			VARCHAR2(20),
Nationality				VARCHAR2(20),
Position				VARCHAR2(20),
Club					VARCHAR2(200),
Caps					VARCHAR2(20),
Goals					VARCHAR2(20),
DateofBirth				VARCHAR2(20)
);

INSERT INTO Bxy_T5_JoueusesFoot VALUES ('Alex Morgan', 'USA', 'Forward', 'San Diego Wave', '200', '120', '21/04/1989');
INSERT INTO Bxy_T5_JoueusesFoot VALUES ('Megan Rapinoe', 'USA', 'Winger', 'OL Reign', '185', '75', '27/09/1985');
INSERT INTO Bxy_T5_JoueusesFoot VALUES ('Sam Kerr', 'Australia', 'Forward', 'Chelsea', '150', '110', '15/09/1993');
INSERT INTO Bxy_T5_JoueusesFoot VALUES ('Lucy Bronze', 'England', 'Defender', 'Barcelona', '130', '12', '06/10/1991');
INSERT INTO Bxy_T5_JoueusesFoot VALUES ('Amandine Henry', 'France', 'Midfielder', 'Olympique Lyonnais', '150', '25', '15/12/1989');
INSERT INTO Bxy_T5_JoueusesFoot VALUES ('Marta Vieira da Silva', 'Brazil', 'Forward', 'Orlando Pride', '180', '112', '05/02/1986');
INSERT INTO Bxy_T5_JoueusesFoot VALUES ('Christine Sinclair', 'Canada', 'Forward', 'Portland Thorns', '300', '190', '19/01/1983');
INSERT INTO Bxy_T5_JoueusesFoot VALUES ('Vivianne Miedema', 'Netherlands', 'Forward', 'Arsenal', '110', '90', '05/06/1996');
INSERT INTO Bxy_T5_JoueusesFoot VALUES ('Fran Kirby', 'England', 'Midfielder', 'Chelsea', '80', '50', '07/10/1993');
INSERT INTO Bxy_T5_JoueusesFoot VALUES ('Ada Hegerberg', 'Norway', 'Forward', 'Olympique Lyonnais', '85', '55', '13/09/1995');
INSERT INTO Bxy_T5_JoueusesFoot VALUES ('Dzsenifer Marozsán', 'Germany', 'Midfielder', 'OL Reign', '115', '30', '02/12/1992');
INSERT INTO Bxy_T5_JoueusesFoot VALUES ('Wendie Renard', 'France', 'Defender', 'Olympique Lyonnais', '140', '25', '02/12/1990');
INSERT INTO Bxy_T5_JoueusesFoot VALUES ('Julie Ertz', 'USA', 'Midfielder', 'Chicago Red Stars', '120', '20', '14/09/1992');
INSERT INTO Bxy_T5_JoueusesFoot VALUES ('Carli Lloyd', 'USA', 'Midfielder', 'NJ/NY Gotham FC', '310', '130', '23/03/1982');
INSERT INTO Bxy_T5_JoueusesFoot VALUES ('Tobin Heath', 'USA', 'Winger', 'Racing Louisville', '190', '65', '10/07/1988');
INSERT INTO Bxy_T5_JoueusesFoot VALUES ('Rose Lavelle', 'USA', 'Midfielder', 'OL Reign', '95', '25', '28/08/1995');
INSERT INTO Bxy_T5_JoueusesFoot VALUES ('Pernille Harder', 'Denmark', 'Forward', 'Bayern Munich', '150', '105', '28/08/1992');
INSERT INTO Bxy_T5_JoueusesFoot VALUES ('Lieke Martens', 'Netherlands', 'Midfielder', 'Barcelona', '115', '60', '27/02/1993');
INSERT INTO Bxy_T5_JoueusesFoot VALUES ('Saki Kumagai', 'Japan', 'Defender', 'Bayern Munich', '120', '10', '01/11/1990');
INSERT INTO Bxy_T5_JoueusesFoot VALUES ('Ji So-yun', 'South Korea', 'Midfielder', 'Chelsea', '145', '40', '13/10/1991');
INSERT INTO Bxy_T5_JoueusesFoot VALUES ('Kadeisha Buchanan', 'Canada', 'Defender', 'Chelsea', '135', '10', '06/12/1995');
INSERT INTO Bxy_T5_JoueusesFoot VALUES ('Alexia Putellas', 'Spain', 'Midfielder', 'Barcelona', '125', '80', '01/06/1994');
INSERT INTO Bxy_T5_JoueusesFoot VALUES ('Irene Paredes', 'Spain', 'Defender', 'Barcelona', '118', '15', '05/08/1991');
INSERT INTO Bxy_T5_JoueusesFoot VALUES ('Patri Guijarro', 'Spain', 'Midfielder', 'Barcelona', '90', '20', '15/06/1998');
INSERT INTO Bxy_T5_JoueusesFoot VALUES ('Marie-Antoinette Katoto', 'France', 'Forward', 'Paris Saint-Germain', '100', '70', '14/06/1998');
INSERT INTO Bxy_T5_JoueusesFoot VALUES ('Delphine Cascarino', 'France', 'Winger', 'Olympique Lyonnais', '95', '25', '15/09/1997');
INSERT INTO Bxy_T5_JoueusesFoot VALUES ('Asisat Oshoala', 'Nigeria', 'Forward', 'Barcelona', '110', '90', '02/06/1994');
INSERT INTO Bxy_T5_JoueusesFoot VALUES ('Sam Mewis', 'USA', 'Midfielder', 'Kansas City Current', '85', '30', '17/06/1992');
INSERT INTO Bxy_T5_JoueusesFoot VALUES ('Beth Mead', 'England', 'Winger', 'Arsenal', '140', '50', '25/01/1995');
INSERT INTO Bxy_T5_JoueusesFoot VALUES ('Leah Williamson', 'England', 'Defender', 'Arsenal', '75', '5', '18/02/1997');
COMMIT;

SELECT * FROM Bxy_T5_JoueusesFoot;

-- ==== MFB =======================================================================================================================
----- >> Table : Bxy_PaysCountry                                             
-- ==== MFB =======================================================================================================================

DROP TABLE Bxy_PaysCountry;

CREATE TABLE Bxy_PaysCountry
(
ID					VARCHAR2(5),
CountryFrenchName	VARCHAR2(30),
CountryEnglishName	VARCHAR2(30)
);

INSERT INTO Bxy_PaysCountry VALUES ('DZ', 'Algérie', 'Algeria');
INSERT INTO Bxy_PaysCountry VALUES ('DE', 'Allemagne', 'Germany');
INSERT INTO Bxy_PaysCountry VALUES ('GB', 'Angleterre', 'England');
INSERT INTO Bxy_PaysCountry VALUES ('AR', 'Argentine', 'Argentina');
INSERT INTO Bxy_PaysCountry VALUES ('AT', 'Autriche', 'Austria');
INSERT INTO Bxy_PaysCountry VALUES ('BE', 'Belgique', 'Belgium');
INSERT INTO Bxy_PaysCountry VALUES ('BR', 'Brésil', 'Brazil');
INSERT INTO Bxy_PaysCountry VALUES ('CM', 'Cameroun', 'Cameroon');
INSERT INTO Bxy_PaysCountry VALUES ('CA', 'Canada', 'Canada');
INSERT INTO Bxy_PaysCountry VALUES ('KR', 'Corée-du-Sud', 'South-Korea');
INSERT INTO Bxy_PaysCountry VALUES ('CR', 'Costa-Rica', 'Costa-Rica');
INSERT INTO Bxy_PaysCountry VALUES ('CI', 'Côte-d''Ivoire', 'Ivory-Coast');
INSERT INTO Bxy_PaysCountry VALUES ('HR', 'Croatie', 'Croatia');
INSERT INTO Bxy_PaysCountry VALUES ('DK', 'Danemark', 'Denmark');
INSERT INTO Bxy_PaysCountry VALUES ('GB1', 'Écosse', 'Scotland');
INSERT INTO Bxy_PaysCountry VALUES ('EG', 'Égypte', 'Egypt');
INSERT INTO Bxy_PaysCountry VALUES ('EC', 'Équateur', 'Ecuador');
INSERT INTO Bxy_PaysCountry VALUES ('ES', 'Espagne', 'Spain');
INSERT INTO Bxy_PaysCountry VALUES ('USA', 'États-Unis-d''Amérique', 'United-States-of-America');
INSERT INTO Bxy_PaysCountry VALUES ('FR', 'France', 'France');
INSERT INTO Bxy_PaysCountry VALUES ('GE', 'Géorgie', 'Georgia');
INSERT INTO Bxy_PaysCountry VALUES ('HU', 'Hongrie', 'Hungary');
INSERT INTO Bxy_PaysCountry VALUES ('IE', 'Irlande', 'Ireland');
INSERT INTO Bxy_PaysCountry VALUES ('IT', 'Italie', 'Italy');
INSERT INTO Bxy_PaysCountry VALUES ('JP', 'Japon', 'Japan');
INSERT INTO Bxy_PaysCountry VALUES ('MA', 'Maroc', 'Morocco');
INSERT INTO Bxy_PaysCountry VALUES ('MX', 'Mexique', 'Mexico');
INSERT INTO Bxy_PaysCountry VALUES ('NG', 'Nigeria', 'Nigeria');
INSERT INTO Bxy_PaysCountry VALUES ('NO', 'Norvège', 'Norway');
INSERT INTO Bxy_PaysCountry VALUES ('GB2', 'Pays-de-Galles', 'Wales');
INSERT INTO Bxy_PaysCountry VALUES ('NL', 'Pays-Bas', 'Netherlands');
INSERT INTO Bxy_PaysCountry VALUES ('PL', 'Pologne', 'Poland');
INSERT INTO Bxy_PaysCountry VALUES ('PT', 'Portugal', 'Portugal');
INSERT INTO Bxy_PaysCountry VALUES ('RU', 'Russie', 'Russia');
INSERT INTO Bxy_PaysCountry VALUES ('SN', 'Sénégal', 'Senegal');
INSERT INTO Bxy_PaysCountry VALUES ('RS', 'Serbie', 'Serbia');
INSERT INTO Bxy_PaysCountry VALUES ('SI', 'Slovénie', 'Slovenia');
INSERT INTO Bxy_PaysCountry VALUES ('SE', 'Suède', 'Sweden');
INSERT INTO Bxy_PaysCountry VALUES ('CH', 'Suisse', 'Switzerland');
INSERT INTO Bxy_PaysCountry VALUES ('TN', 'Tunisie', 'Tunisia');
INSERT INTO Bxy_PaysCountry VALUES ('UA', 'Ukraine', 'Ukraine');
INSERT INTO Bxy_PaysCountry VALUES ('UY', 'Uruguay', 'Uruguay');
COMMIT;

SELECT * FROM Bxy_PostePosition;

-- ==== MFB =======================================================================================================================
----- >> Table : Bxy_PostePosition                                             
-- ==== MFB =======================================================================================================================

DROP TABLE Bxy_PostePosition;

CREATE TABLE Bxy_PostePosition
(
ID			VARCHAR2(5),
Poste		VARCHAR2(30),
Position	VARCHAR2(30)
);

INSERT INTO Bxy_PostePosition VALUES ('M_A', 'Attaquant', 'Forward');
INSERT INTO Bxy_PostePosition VALUES ('M_M', 'Milieu', 'Midfielder');
INSERT INTO Bxy_PostePosition VALUES ('M_D', 'Défenseur', 'Defender');
INSERT INTO Bxy_PostePosition VALUES ('M_G', 'Gardien', 'Goalkeeper');
INSERT INTO Bxy_PostePosition VALUES ('M_X1', 'Ailier', 'Winger');
INSERT INTO Bxy_PostePosition VALUES ('F_A', 'Attaquante', 'Forward');
INSERT INTO Bxy_PostePosition VALUES ('F_M', 'Milieu de terrain', 'Midfielder');
INSERT INTO Bxy_PostePosition VALUES ('F_D', 'Défenseure', 'Defender');
INSERT INTO Bxy_PostePosition VALUES ('F_G', 'Gardienne', 'Goalkeeper');
INSERT INTO Bxy_PostePosition VALUES ('F_X2', 'Ailière', 'Winger');
INSERT INTO Bxy_PostePosition VALUES ('F_G', 'Gardienne', 'Goalkeeper');
COMMIT;

SELECT * FROM Bxy_PostePosition;

-- ==== MFB =======================================================================================================================
----- >> Processus de Création de l'entrepôt de données de nom SPORT                                           
-- ==== MFB =======================================================================================================================

-- ==== MFB ==================== Table Bxy_S1 issue de la table Bxy_T1 ====================
/*
A partir de la table Bxy_T1_Joueurs on va Créer les tables intermédiaires
Bxy_S1_A, Bxy_S1_B, Bxy_S1_C pour arriver à créer Bxy_S1
car il faut homogénéiser les données et donc traduire :
le POSTE occupé en POSITION et le PAYSDORIGINE en COUNTRY_ORIGIN
*/

DROP TABLE Bxy_S1_A;
CREATE TABLE Bxy_S1_A
(
TABSOURCE		,
IDPLAYER		,
GENDER			,
FIRSTNAME		,
LASTTNAME		,
POSITION		,
COUNTRY_ORIGIN	,
YEAROFBIRTH,
NB_OCC
)
AS SELECT
'Bxy_T1_Joueurs'	,
ID					,
'M'					,
enlever_espaces_superflus(INITCAP(Prenom))	,
enlever_espaces_superflus(UPPER(NOM))		,
enlever_espaces_superflus(Poste)				,
remplacer_espace_par_tiret(enlever_espaces_superflus(PaysDorigine))		,
enlever_espaces_superflus(Annee2Naissance),
ROW_NUMBER() OVER(PARTITION BY UPPER(enlever_espaces_superflus(NOM)), INITCAP(enlever_espaces_superflus(Prenom)) ORDER BY Annee2Naissance DESC) as num_ligne
FROM Bxy_T1_Joueurs;

DELETE FROM Bxy_S1_A WHERE NB_OCC > 1;
ALTER TABLE Bxy_S1_A
DROP COLUMN NB_OCC;

UPDATE Bxy_S1_A SET COUNTRY_ORIGIN = 'États-Unis-d''Amérique' WHERE COUNTRY_ORIGIN = 'États-Unis';
SELECT * FROM Bxy_S1_A;

DROP TABLE Bxy_S1_B;
CREATE TABLE Bxy_S1_B
(
TABSOURCE		,
IDPLAYER		,
GENDER			,
FIRSTNAME		,
LASTTNAME		,
POSITION		,
COUNTRY_ORIGINF	,
COUNTRY_ORIGINE	,
YEAROFBIRTH		
)
AS SELECT 
TABSOURCE		,
IDPLAYER		,
GENDER			,
FIRSTNAME		,
LASTTNAME		,
POSITION		,
UPPER(X1.COUNTRY_ORIGIN),
UPPER(X2.CountryEnglishName), 
YEAROFBIRTH		
FROM Bxy_S1_A X1, Bxy_PaysCountry X2
WHERE X1.COUNTRY_ORIGIN = X2.CountryFrenchName ;

SELECT * FROM Bxy_S1_B;

DROP TABLE Bxy_S1_C;
CREATE TABLE Bxy_S1_C
(
TABSOURCE		,
IDPLAYER		,
GENDER			,
FIRSTNAME		,
LASTTNAME		,
POSITIONF		,
POSITIONE		,
COUNTRY_ORIGIN	,
YEAROFBIRTH		
)
AS SELECT 
TABSOURCE		,
IDPLAYER		,
GENDER			,
FIRSTNAME		,
LASTTNAME		,
INITCAP(X1.POSITION),
INITCAP(X2.POSITION),
COUNTRY_ORIGINE	, 
YEAROFBIRTH		
FROM Bxy_S1_B X1, Bxy_PostePosition X2
WHERE X1.POSITION = X2.Poste ;

SELECT * FROM Bxy_S1_C;

DROP TABLE Bxy_S1;
CREATE TABLE Bxy_S1
(
TABSOURCE		,
IDPLAYER		,
GENDER			,
FIRSTNAME		,
LASTTNAME		,
POSITION		,
COUNTRY_ORIGIN	,
YEAROFBIRTH		
)
AS SELECT 
TABSOURCE				,
IDPLAYER				,
UPPER(GENDER)			,
INITCAP(FIRSTNAME)		,
UPPER(LASTTNAME)		,
INITCAP(POSITIONE)		,
UPPER(COUNTRY_ORIGIN)	, 
YEAROFBIRTH		
FROM Bxy_S1_C ;

SELECT * FROM Bxy_S1;
-- ==== MFB ==================== Table Bxy_S1 issue de la table Bxy_T1 ====================

-- ==== MFB ==================== Table Bxy_S2 issue de la table Bxy_T2 ====================
/*
A partir de la table Bxy_T2_Goalkeeper on va Créer la table Bxy_S2
On doit évidemment garder le même schéma (la même structure à l'arrivée que la table Bxy_S1
afin de pouvoir faire l'union de toutes ces tables pour créer la table résultante de référence
homogène, normalisée, sans doublon et en ayant construit des règles de validation telles que des expressions régulières
pour chaque colonne !
Exemples de règles de métadonnées : 
Espaces superflus, Lettres qui se suivent et se répètent plus de 2 fois, Lettres admises, 
Espace (tiret, apostrophe) autorisé ou non dans le nom et/ou le prénom...
*/
DROP TABLE Bxy_S2;
CREATE TABLE Bxy_S2
(
TABSOURCE		,
IDPLAYER		,
GENDER			,
FIRSTNAME		,
LASTTNAME		,
POSITION		,
COUNTRY_ORIGIN	,
YEAROFBIRTH		
)
AS SELECT 
'Bxy_T2_Goalkeeper'		,
ID						,
'M'						,
INITCAP(FIRSTNAME)		,
UPPER(LASTNAME)			,
INITCAP(POSITION)		,
UPPER(COUNTRY_ORIGIN)	, 
'NULL'		
FROM Bxy_T2_Goalkeeper ;

SELECT * FROM Bxy_S2 ;
-- ==== MFB ==================== Table Bxy_S2 issue de la table Bxy_T2 ====================

-- ==== MFB ==================== Table Bxy_S3 issue de la table Bxy_T3 ====================
SELECT * FROM Bxy_S3 ;
-- ==== MFB ==================== Table Bxy_S3 issue de la table Bxy_T3 ====================

-- ==== MFB ==================== Table Bxy_S4 issue de la table Bxy_T4 ====================
SELECT * FROM Bxy_S4 ;
-- ==== MFB ==================== Table Bxy_S4 issue de la table Bxy_T4 ====================

-- ==== MFB ==================== Table Bxy_S5 issue de la table Bxy_T5 ====================
SELECT * FROM Bxy_S5 ;
-- ==== MFB ==================== Table Bxy_S5 issue de la table Bxy_T5 ====================

-- ==== MFB =======================================================================================================================
-- ==== MFB ==================== Table résultante Bxy_TDim_P issue de la l'intégration/fusion des S_i ====================
-- ==== MFB =======================================================================================================================

DROP TABLE Bxy_TDim_P1;
CREATE TABLE Bxy_TDim_P1 
AS 
SELECT * FROM Bxy_S1
UNION
SELECT * FROM Bxy_S2
;

SELECT * FROM Bxy_TDim_P1 ORDER BY 1, 7, 5, 4;


DROP TABLE Bxy_TDim_P2;
CREATE TABLE Bxy_TDim_P2
(
IDPLAYER		,
GENDER			,
FIRSTNAME		,
LASTTNAME		,
POSITION		,
COUNTRY_ORIGIN	,
YEAROFBIRTH
)		
AS SELECT
ROWNUM			,
GENDER			,
FIRSTNAME		,
LASTTNAME		,
POSITION		,
COUNTRY_ORIGIN	,
YEAROFBIRTH	
FROM Bxy_TDim_P1;	

SELECT * FROM Bxy_TDim_P2 ORDER BY 2, 6, 4, 3;

-- ==== MFB =======================================================================================================================
-- ==== MFB ==================== Table résultante Bxy_TDim_P issue de la l'intégration/fusion des S_i ====================
-- ==== MFB =======================================================================================================================


-- ==== MFB =======================================================================================================================
----- >> Requêtes de validation                                          
-- ==== MFB =======================================================================================================================

-- R1 : Nombre de joueuses/joueurs
SELECT 'R1 : Le nombre TOTAL de joueuses/joueurs est de : ', COUNT(*) AS NBJ FROM Bxy_TDim_P ;
/* Résultats affichés :
R1 : Le nombre TOTAL de joueuses/joueurs est de : 	233
*/

-- R2 : Nombre de joueuses (Femmes)
SELECT 'R2 : Le nombre TOTAL de joueuses est de : ', COUNT(*) AS NBJF FROM Bxy_TDim_P WHERE UPPER(GENDER) = 'F' ;
/* Résultats affichés :
R2 : Le nombre TOTAL de joueuses est de : 	30
*/

-- R3 : Nombre de joueurs (Hommes)
SELECT 'R3 : Le nombre TOTAL de joueurs est de : ', COUNT(*) AS NBJH FROM Bxy_TDim_P WHERE UPPER(GENDER) = 'M' ;
/* Résultats affichés :
R3 : Le nombre TOTAL de joueurs est de : 	203
*/

-- R4 : Nombre de joueuses (Femmes) par genre et par pays, résultat classé par pays
SELECT 'R4 : Nombre de joueuses (Femmes) par genre et par pays est : ',
GENDER, COUNTRY_ORIGIN, COUNT(*) AS NBJF 
FROM Bxy_TDim_P 
WHERE UPPER(GENDER) = 'F' 
GROUP BY GENDER, COUNTRY_ORIGIN
ORDER BY 3;
/* Résultats affichés :

*/

-- R5 : Nombre de joueurs (Hommes) par genre et par pays, résultat classé par pays
SELECT 'R5 : Nombre de joueurs (Hommes) par genre et par pays est : ',
GENDER, COUNTRY_ORIGIN, COUNT(*) AS NBJH 
FROM Bxy_TDim_P 
WHERE UPPER(GENDER) = 'M' 
GROUP BY GENDER, COUNTRY_ORIGIN
ORDER BY 3;
/* Résultats affichés :

*/

-- R6 : Nombre de joueuses/joueurs par genre et par pays, résultat classé par pays
SELECT 'R6 : Nombre de joueuses/joueurs par genre et par pays est : ',
GENDER, COUNTRY_ORIGIN, COUNT(*) AS NBJH 
FROM Bxy_TDim_P 
GROUP BY ROLLUP(GENDER, COUNTRY_ORIGIN)
ORDER BY 3;
/* Résultats affichés :

*/

-- R7 : Nombre de joueuses/joueurs par genre et par pays, résultat classé par pays
SELECT 'R7 : Nombre de joueuses/joueurs par genre et par pays est : ',
GENDER, COUNTRY_ORIGIN, COUNT(*) AS NBJH 
FROM Bxy_TDim_P 
GROUP BY CUBE(GENDER, COUNTRY_ORIGIN)
ORDER BY 3;
/* Résultats affichés :

*/

-- R8 : Nombre de joueurs à "enrichir !" (tenter de remplir les valeurs manquantes)


/* Résultats affichés :

*/

-- R9 : Enrichissemnt des données : Chercher les lignes qui contiennent des valeurs manquantes


/* Résultats affichés :

*/


-- ==== MFB =======================================================================================================================
/*
Le Sport est générateur de confiance !
                                      $"   *.      
              mfbmfbmfbmfb             \J $&learning J
                   dwh                     DB"
                   def                    .IA
                  g   s                  d" $
         ..ec.. .i     m.              at   $.machin
     .^        3*b.     a.           .a" .@"4F      eB
   ."         d"  ^b.    *r        .$"  d"   $         O
  /          P      $.    "t      d"   @     3r         U
 4        .eE........$r===e$IA-IA$    $       *..        F
 $       $$$$$       $   4DATA$$      F       data.      A
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