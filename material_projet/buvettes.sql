-- phpMyAdmin SQL Dump
-- version 4.6.0
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Ven 08 Avril 2016 à 08:49
-- Version du serveur :  5.7.11
-- Version de PHP :  5.5.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `buvettes`
--

-- --------------------------------------------------------

--
-- Structure de la table `Buvette`
--

CREATE TABLE `Buvette` (
  `idB` int(11) NOT NULL,
  `nomB` tinytext NOT NULL,
  `emplacement` tinytext NOT NULL,
  `responsable` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `Buvette`
--

INSERT INTO `Buvette` (`idB`, `nomB`, `emplacement`, `responsable`) VALUES
(1, 'bsmey', 'Stade de France', 23),
(2, 'cavwv', 'Stade de France', 20),
(3, 'lixpp', 'Stade de France', 6),
(4, 'qtord', 'Stade de France', 5),
(5, 'lbfua', 'Stade de France', 22),
(6, 'mqgoc', 'Parc des princes', 15),
(7, 'oswfc', 'Parc des princes', 18),
(8, 'pjmmq', 'Parc des princes', 15),
(9, 'blhao', 'Parc des princes', 15),
(10, 'hjfey', 'Parc des princes', 29),
(11, 'cchwc', 'Stade Vélodrome', 8),
(12, 'pbeeu', 'Stade Vélodrome', 25),
(13, 'ojiht', 'Stade Vélodrome', 13),
(14, 'wfrli', 'Stade Vélodrome', 11),
(15, 'ufvxv', 'Stade Vélodrome', 9),
(16, 'zquec', 'Allianz Riviera', 10),
(17, 'bhrzz', 'Allianz Riviera', 19),
(18, 'xxxsi', 'Allianz Riviera', 21),
(19, 'tttqf', 'Allianz Riviera', 10),
(20, 'erlve', 'Allianz Riviera', 10),
(21, 'ymwbg', 'Stade Geoffroy-Guichard', 12),
(22, 'ydicf', 'Stade Geoffroy-Guichard', 4),
(23, 'qkhjy', 'Stade Geoffroy-Guichard', 30),
(24, 'rtjmp', 'Stade Geoffroy-Guichard', 8),
(25, 'zhred', 'Stade Geoffroy-Guichard', 25),
(26, 'qlzbg', 'Stadium', 11),
(27, 'txaee', 'Stadium', 16),
(28, 'agsli', 'Stadium', 2),
(29, 'bnmil', 'Stadium', 23),
(30, 'ijdfi', 'Stadium', 27),
(31, 'pedfs', 'Nouveaux Stade de Bordeaux', 25),
(32, 'yhlgl', 'Nouveaux Stade de Bordeaux', 6),
(33, 'brjcj', 'Nouveaux Stade de Bordeaux', 12),
(34, 'joxoy', 'Nouveaux Stade de Bordeaux', 11),
(35, 'uxogh', 'Nouveaux Stade de Bordeaux', 6),
(36, 'pofrz', 'Stade Bollaert', 7),
(37, 'awtbw', 'Stade Bollaert', 13),
(38, 'styiy', 'Stade Bollaert', 9),
(39, 'ckgbp', 'Stade Bollaert', 22),
(40, 'znvhv', 'Stade Bollaert', 15),
(41, 'csxji', 'Stade Pierre Mauroy', 26),
(42, 'psppa', 'Stade Pierre Mauroy', 10),
(43, 'kjuje', 'Stade Pierre Mauroy', 27),
(44, 'mtfzz', 'Stade Pierre Mauroy', 27),
(45, 'znlhs', 'Stade Pierre Mauroy', 10),
(46, 'kzpgh', 'Stade des lumières', 23),
(47, 'aizhy', 'Stade des lumières', 16),
(48, 'ozosj', 'Stade des lumières', 5),
(49, 'virpm', 'Stade des lumières', 25),
(50, 'upebq', 'Stade des lumières', 8);

-- --------------------------------------------------------

--
-- Structure de la table `Equipe`
--

CREATE TABLE `Equipe` (
  `idE` varchar(5) NOT NULL,
  `pays` tinytext NOT NULL,
  `drapeau` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `Equipe`
--

INSERT INTO `Equipe` (`idE`, `pays`, `drapeau`) VALUES
('al', 'ALLEMAGNE', 'img/al.png'),
('alb', 'ALBANIE', 'img/alb.png'),
('an', 'ANGLETERRE', 'img/an.png'),
('au', 'AUTRICHE', 'img/au.png'),
('be', 'BELGIQUE', 'img/be.png'),
('cr', 'CROATIE', 'img/cr.png'),
('es', 'ESPAGNE', 'img/es.png'),
('fr', 'FRANCE', 'img/fr.png'),
('ga', 'GALLES', 'img/ga.png'),
('ir', 'IRLANDE', 'img/ir.png'),
('it', 'ITALIE', 'img/it.png'),
('po', 'PORTUGAL', 'img/po.png'),
('ro', 'ROUMANIE', 'img/ro.png'),
('rt', 'REPUBLIQUE TCHEQUE', 'img/rt.png'),
('ru', 'RUSSIE', 'img/ru.png'),
('sl', 'SLOVENIE', 'img/sl.png'),
('su', 'SUEDE', 'img/su.png'),
('tu', 'TURQUIE', 'img/tu.png'),
('uk', 'UKRAINE', 'img/uk.png');

-- --------------------------------------------------------

--
-- Structure de la table `Est_ouverte`
--

CREATE TABLE `Est_ouverte` (
  `idB` int(11) NOT NULL,
  `idM` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `Est_ouverte`
--

INSERT INTO `Est_ouverte` (`idB`, `idM`) VALUES
(1, 1),
(4, 1),
(5, 1),
(36, 2),
(40, 2),
(31, 3),
(34, 3),
(13, 4),
(14, 4),
(15, 4),
(8, 5),
(16, 6),
(18, 6),
(41, 7),
(42, 7),
(27, 8),
(2, 9),
(3, 9),
(49, 10);

-- --------------------------------------------------------

--
-- Structure de la table `Est_present`
--

CREATE TABLE `Est_present` (
  `idV` int(11) NOT NULL,
  `idB` int(11) NOT NULL,
  `idM` int(11) NOT NULL,
  `hdeb` int(11) NOT NULL,
  `hfin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `Est_present`
--

INSERT INTO `Est_present` (`idV`, `idB`, `idM`, `hdeb`, `hfin`) VALUES
(1, 5, 1, 17, 23),
(1, 15, 4, 18, 23),
(1, 16, 6, 19, 23),
(1, 27, 8, 19, 22),
(2, 14, 4, 18, 23),
(2, 15, 4, 19, 21),
(2, 31, 3, 18, 21),
(2, 41, 7, 17, 23),
(3, 5, 1, 17, 23),
(3, 15, 4, 19, 23),
(3, 18, 6, 18, 21),
(3, 49, 10, 19, 23),
(4, 8, 5, 19, 23),
(4, 13, 4, 18, 23),
(4, 27, 8, 17, 21),
(4, 49, 10, 17, 21),
(5, 2, 9, 17, 23),
(5, 14, 4, 19, 21),
(5, 34, 3, 19, 22),
(5, 36, 2, 17, 22),
(6, 4, 1, 19, 22),
(6, 5, 1, 19, 21),
(6, 8, 5, 17, 21),
(6, 18, 6, 17, 21),
(6, 27, 8, 19, 23),
(6, 40, 2, 17, 21),
(6, 42, 7, 18, 21),
(7, 31, 3, 19, 21),
(7, 41, 7, 19, 23),
(7, 42, 7, 18, 22),
(8, 4, 1, 19, 23),
(8, 8, 5, 19, 22),
(8, 13, 4, 19, 23),
(8, 15, 4, 19, 21),
(8, 16, 6, 17, 21),
(8, 34, 3, 17, 21),
(8, 36, 2, 19, 22),
(8, 41, 7, 17, 22),
(9, 3, 9, 18, 22),
(9, 34, 3, 19, 21),
(10, 13, 4, 18, 23),
(10, 14, 4, 19, 21),
(10, 41, 7, 19, 21),
(11, 3, 9, 18, 22),
(11, 5, 1, 17, 22),
(11, 40, 2, 19, 23),
(11, 42, 7, 18, 23),
(12, 3, 9, 19, 22),
(12, 15, 4, 19, 23),
(13, 3, 9, 19, 22),
(13, 13, 4, 18, 21),
(13, 16, 6, 17, 21),
(13, 49, 10, 18, 23),
(14, 8, 5, 19, 23),
(14, 18, 6, 17, 22),
(14, 42, 7, 17, 23),
(15, 1, 1, 18, 22),
(15, 2, 9, 18, 22),
(15, 5, 1, 17, 22),
(15, 14, 4, 18, 21),
(15, 27, 8, 19, 23),
(15, 34, 3, 19, 23),
(15, 36, 2, 19, 23),
(15, 40, 2, 19, 23),
(15, 41, 7, 19, 21),
(16, 4, 1, 17, 23),
(16, 8, 5, 17, 21),
(16, 13, 4, 19, 21),
(16, 14, 4, 17, 22),
(17, 2, 9, 18, 21),
(17, 3, 9, 17, 22),
(17, 8, 5, 17, 22),
(17, 31, 3, 19, 22),
(18, 2, 9, 19, 22),
(18, 4, 1, 18, 21),
(18, 42, 7, 19, 22),
(19, 2, 9, 18, 23),
(19, 8, 5, 17, 22),
(19, 16, 6, 17, 21),
(19, 34, 3, 18, 21),
(19, 36, 2, 17, 22),
(19, 40, 2, 17, 21),
(20, 2, 9, 19, 22),
(20, 4, 1, 19, 22),
(20, 5, 1, 19, 23),
(20, 14, 4, 17, 23),
(20, 18, 6, 19, 22),
(20, 36, 2, 18, 22),
(20, 40, 2, 17, 21),
(20, 41, 7, 18, 23),
(20, 49, 10, 19, 21),
(21, 5, 1, 17, 22),
(21, 15, 4, 17, 21),
(21, 18, 6, 18, 21),
(21, 36, 2, 18, 22),
(21, 41, 7, 17, 23),
(22, 40, 2, 17, 23),
(23, 4, 1, 19, 23),
(23, 5, 1, 17, 22),
(23, 16, 6, 19, 22),
(25, 3, 9, 19, 23),
(25, 14, 4, 18, 21),
(25, 27, 8, 18, 22),
(25, 42, 7, 18, 22),
(26, 16, 6, 17, 23),
(26, 36, 2, 18, 23),
(26, 40, 2, 17, 21),
(27, 14, 4, 18, 23),
(28, 15, 4, 19, 23),
(28, 16, 6, 17, 23),
(28, 27, 8, 19, 22),
(28, 31, 3, 18, 23),
(29, 1, 1, 18, 23),
(29, 4, 1, 19, 23),
(29, 8, 5, 19, 23),
(29, 18, 6, 17, 23),
(29, 31, 3, 18, 22),
(29, 36, 2, 17, 22),
(29, 40, 2, 19, 21),
(30, 1, 1, 17, 23),
(30, 2, 9, 18, 22),
(30, 14, 4, 19, 21),
(30, 15, 4, 18, 23),
(30, 36, 2, 18, 22),
(30, 40, 2, 19, 22);

-- --------------------------------------------------------

--
-- Structure de la table `Match`
--

CREATE TABLE `Match` (
  `idM` int(11) NOT NULL,
  `date` date NOT NULL,
  `eqA` varchar(20) NOT NULL,
  `eqB` varchar(20) NOT NULL,
  `scoreA` int(11) DEFAULT NULL,
  `scoreB` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `Match`
--

INSERT INTO `Match` (`idM`, `date`, `eqA`, `eqB`, `scoreA`, `scoreB`) VALUES
(1, '2016-06-10', 'fr', 'ro', NULL, NULL),
(2, '2016-06-11', 'alb', 'su', NULL, NULL),
(3, '2016-06-11', 'ga', 'sl', NULL, NULL),
(4, '2016-06-11', 'an', 'ru', NULL, NULL),
(5, '2016-06-12', 'tu', 'cr', NULL, NULL),
(6, '2016-06-12', 'po', 'ir', NULL, NULL),
(7, '2016-06-12', 'al', 'uk', NULL, NULL),
(8, '2016-06-13', 'es', 'rt', NULL, NULL),
(9, '2016-06-13', 'ir', 'su', NULL, NULL),
(10, '2016-06-13', 'be', 'it', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `Volontaire`
--

CREATE TABLE `Volontaire` (
  `idV` int(5) NOT NULL,
  `nomV` varchar(40) NOT NULL,
  `age` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `Volontaire`
--

INSERT INTO `Volontaire` (`idV`, `nomV`, `age`) VALUES
(1, 'Belva Lindgren', 30),
(2, 'Yandel Spinka', 44),
(3, 'Mr. Wilburn Greenfelder', 49),
(4, 'Willie Kris', 42),
(5, 'Carson Runte', 18),
(6, 'Miss Ica Kassulke DDS', 39),
(7, 'Amado Pollich', 50),
(8, 'Santo Homenick', 43),
(9, 'Lilliana Gutmann', 18),
(10, 'Yaritza Dickinson', 16),
(11, 'Ally Kirlin', 26),
(12, 'Kash Halvorson', 17),
(13, 'Miss Valentina Berge', 34),
(14, 'Danniel Reinger', 40),
(15, 'Mrs. Ilene Murphy PhD', 17),
(16, 'Dr. Odis Sauer', 40),
(17, 'Missy Boehm', 47),
(18, 'Chanda Bergstrom', 45),
(19, 'Dink Walter PhD', 37),
(20, 'Dr. Cap Olson PhD', 37),
(21, 'Vernelle Kuhn', 35),
(22, 'Betha Hudson', 46),
(23, 'Riley Spencer', 17),
(24, 'Mrs. Lucile Smith', 20),
(25, 'Ms. Fleta Weber', 29),
(26, 'Joesph Gutkowski', 26),
(27, 'Treena Romaguera', 46),
(28, 'Vita Monahan', 47),
(29, 'Kia Bernier', 44),
(30, 'Destry Jaskolski', 37);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `Buvette`
--
ALTER TABLE `Buvette`
  ADD PRIMARY KEY (`idB`),
  ADD KEY `fk_buvette_responsable` (`responsable`);

--
-- Index pour la table `Equipe`
--
ALTER TABLE `Equipe`
  ADD PRIMARY KEY (`idE`);

--
-- Index pour la table `Est_ouverte`
--
ALTER TABLE `Est_ouverte`
  ADD PRIMARY KEY (`idB`,`idM`),
  ADD KEY `fk_estouverte_idm` (`idM`);

--
-- Index pour la table `Est_present`
--
ALTER TABLE `Est_present`
  ADD PRIMARY KEY (`idV`,`idB`,`idM`),
  ADD KEY `fk_estpresent_idb` (`idB`),
  ADD KEY `fk_estpresent_idm` (`idM`);

--
-- Index pour la table `Match`
--
ALTER TABLE `Match`
  ADD PRIMARY KEY (`idM`),
  ADD KEY `fk_match_eqa` (`eqA`),
  ADD KEY `fk_match_eqb` (`eqB`);

--
-- Index pour la table `Volontaire`
--
ALTER TABLE `Volontaire`
  ADD PRIMARY KEY (`idV`);

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `Buvette`
--
ALTER TABLE `Buvette`
  ADD CONSTRAINT `fk_buvette_responsable` FOREIGN KEY (`responsable`) REFERENCES `Volontaire` (`idV`);

--
-- Contraintes pour la table `Est_ouverte`
--
ALTER TABLE `Est_ouverte`
  ADD CONSTRAINT `fk_estouverte_idb` FOREIGN KEY (`idB`) REFERENCES `Buvette` (`idB`),
  ADD CONSTRAINT `fk_estouverte_idm` FOREIGN KEY (`idM`) REFERENCES `Match` (`idM`);

--
-- Contraintes pour la table `Est_present`
--
ALTER TABLE `Est_present`
  ADD CONSTRAINT `fk_estpresent_idb` FOREIGN KEY (`idB`) REFERENCES `Buvette` (`idB`),
  ADD CONSTRAINT `fk_estpresent_idm` FOREIGN KEY (`idM`) REFERENCES `Match` (`idM`),
  ADD CONSTRAINT `fk_estpresent_idv` FOREIGN KEY (`idV`) REFERENCES `Volontaire` (`idV`);

--
-- Contraintes pour la table `Match`
--
ALTER TABLE `Match`
  ADD CONSTRAINT `fk_match_eqa` FOREIGN KEY (`eqA`) REFERENCES `Equipe` (`idE`),
  ADD CONSTRAINT `fk_match_eqb` FOREIGN KEY (`eqB`) REFERENCES `Equipe` (`idE`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
