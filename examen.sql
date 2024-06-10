-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 03 juin 2024 à 12:08
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `examen`
--

-- --------------------------------------------------------

--
-- Structure de la table `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `titre` varchar(255) DEFAULT NULL,
  `note` double DEFAULT NULL,
  `id_reponses` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `questions`
--

INSERT INTO `questions` (`id`, `titre`, `note`, `id_reponses`) VALUES
(1, 'Lequel des éléments suivants n\'est pas un cadre ORM ? ', 1, 4),
(2, 'Lequel des énoncés suivants est vrai à propos du composant de configuration d\'Hibernate ?', 1, 7),
(3, 'Session.createQuery crée une nouvelle instance de Query pour la chaîne de requête HQL donnée.', 0.5, NULL),
(4, 'Session.createQuery crée une nouvelle instance de Query pour la chaîne de requête HQL donnée.', 0.5, NULL),
(5, 'Quelle méthode est utilisée pour mettre à jour l\'état d\'une instance donnée à partir de la base de données sous-jacente', 1, NULL),
(6, 'Parmi les éléments suivants, quel est celui qui fait correspondre la propriété java.util.List à hibernate', 1, 16),
(7, 'Parmi les éléments suivants, lequel est utilisé pour représenter une relation de type un à un dans Hibernate', 0.5, 22),
(8, 'Parmi les bases de données suivantes, laquelle est prise en charge par Hibernate', 1, 25),
(9, 'L\'attribut name de l\'annotation @Column permet de spécifier explicitement le nom de la colonne', 0.5, 27),
(10, 'Quelle est la différence entre les méthodes save() et persist() de l\'objet session', 1, 30),
(11, 'Laquelle des affirmations suivantes est vraie à propos de JDBC', 1, 34),
(12, 'Laquelle des affirmations suivantes est vraie à propos d\'Hibernate', 1, 38),
(13, 'Parmi les éléments suivants, quel est celui qui fait correspondre la propriété java.util.Set à Hibernate ', 0.5, 42),
(14, 'Que signifie JDBC ?', 0.5, 45),
(15, 'Parmi les éléments suivants, lequel est utilisé pour représenter une relation de type plusieurs à un dans Hibernate ?', 1, 48);

-- --------------------------------------------------------

--
-- Structure de la table `suggestions`
--

CREATE TABLE `suggestions` (
  `id` int(11) NOT NULL,
  `id_question` int(11) NOT NULL,
  `titre_suggestion` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `suggestions`
--

INSERT INTO `suggestions` (`id`, `id_question`, `titre_suggestion`) VALUES
(1, 1, 'a. Castor'),
(2, 1, 'b. Spring DAO'),
(3, 1, 'c. Hibernate'),
(4, 1, 'd. NoSQL'),
(5, 2, 'a. L\'objet Configuration est le premier objet Hibernate que vous créez dans une application Hibernate'),
(6, 2, 'b. L\'objet Configuration n\'est généralement créé qu\'une seule fois lors de l\'initialisation de l\'application.'),
(7, 2, 'c. L\'objet Configuration représente un fichier de configuration ou de propriétés requis par Hibernate.'),
(8, 2, 'd. Toutes ces réponses.'),
(9, 3, 'a. Vrais'),
(10, 3, 'b. Faux'),
(11, 4, 'a. Session.store()'),
(12, 4, 'b. Session.keep()'),
(13, 4, 'c. Session.update()'),
(14, 4, 'd. Session.load()'),
(15, 6, 'a. <set>'),
(16, 6, 'b. <list>'),
(17, 6, 'c. <bag>'),
(18, 6, 'd. <map>'),
(19, 7, 'a. <many-to-one>'),
(20, 7, 'b. <many-one>'),
(21, 7, 'c. <ManyToOne>'),
(22, 7, 'd. Aucune des réponses ci-dessus.'),
(23, 8, 'a. DB2/NT'),
(24, 8, 'b. PostgreSQL'),
(25, 8, 'c. Sybase SQL Server'),
(26, 8, 'd. Toutes ces réponses'),
(27, 9, 'a. Vraie'),
(28, 9, 'b. Faux'),
(29, 10, 'a. Il n\'y a pas de différence.'),
(30, 10, 'b. save sauvegarde l\'objet et renvoie l\'état alors que persist stocke l\'état dans une variable différente.'),
(31, 10, 'c. save sauvegarde l\'objet et renvoie l\'identifiant de l\'instance alors que persist ne renvoie rien après avoir sauvegardé l\'instance.'),
(32, 10, 'd.  Aucune de ces réponses'),
(33, 11, 'a. JDBC est l\'abréviation de Java Database Connectivity.'),
(34, 11, 'b. JDBC fournit un ensemble d\'API Java permettant d\'accéder aux bases de données relationnelles à partir d\'un programme Java.'),
(35, 11, 'c. Les API JDBC permettent aux programmes Java d\'exécuter des instructions SQL et d\'interagir avec toute base de données compatible SQL.'),
(36, 11, 'd. Toutes ces réponses.'),
(37, 12, 'a. Hibernate ne nécessite pas de serveur d\'application pour fonctionner.'),
(38, 12, 'b. Hibernate manipule des associations complexes d\'objets de votre base de données.'),
(39, 12, 'c. Hibernate minimise l\'accès à la base de données grâce à des stratégies de récupération intelligentes.'),
(40, 12, 'd. Toutes ces réponses.'),
(41, 13, 'a. <list>'),
(42, 13, 'b. <bag>'),
(43, 13, 'c. <map>'),
(44, 14, 'a. Java DB Connectivity'),
(45, 14, 'b. Java Database Connectivity'),
(46, 14, 'c. Java Data Bind Connect'),
(47, 14, 'c. Java Data Bind Connector'),
(48, 15, 'a. <many-to-one>'),
(49, 15, 'b. <many-one>'),
(50, 15, 'c. <ManyToOne>'),
(51, 15, 'c. Aucune des réponses ci-dessus.');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `matricule` int(111) NOT NULL,
  `nom` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `matricule`, `nom`) VALUES
(1, 30153, 'Rahalahifaliako Tholde Navajoh');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `suggestions`
--
ALTER TABLE `suggestions`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT pour la table `suggestions`
--
ALTER TABLE `suggestions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
