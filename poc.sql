-- phpMyAdmin SQL Dump
-- version 4.5.4.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Lun 04 Avril 2022 à 13:53
-- Version du serveur :  5.7.11
-- Version de PHP :  7.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `poc`
--

-- --------------------------------------------------------

--
-- Structure de la table `budget`
--

CREATE TABLE `budget` (
  `id` int(11) NOT NULL,
  `initial_value` int(11) NOT NULL,
  `consumed_value` int(11) NOT NULL,
  `to_do` int(11) NOT NULL,
  `landing_budget` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `budget`
--

INSERT INTO `budget` (`id`, `initial_value`, `consumed_value`, `to_do`, `landing_budget`) VALUES
(22, 50000, 35000, 15000, 50000),
(23, 50000, 35000, 15000, 50000),
(24, 50000, 35000, 15000, 50000);

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20220201140825', '2022-04-04 13:32:33', 61),
('DoctrineMigrations\\Version20220201152928', '2022-04-04 13:32:33', 31),
('DoctrineMigrations\\Version20220221124137', '2022-04-04 13:32:33', 24),
('DoctrineMigrations\\Version20220221125906', '2022-04-04 13:32:33', 117),
('DoctrineMigrations\\Version20220221151650', '2022-04-04 13:32:33', 26),
('DoctrineMigrations\\Version20220222105300', '2022-04-04 13:32:33', 42),
('DoctrineMigrations\\Version20220222105757', '2022-04-04 13:32:33', 23),
('DoctrineMigrations\\Version20220222110404', '2022-04-04 13:32:33', 32),
('DoctrineMigrations\\Version20220222125815', '2022-04-04 13:32:33', 143),
('DoctrineMigrations\\Version20220222130110', '2022-04-04 13:32:33', 19),
('DoctrineMigrations\\Version20220222132137', '2022-04-04 13:32:33', 25),
('DoctrineMigrations\\Version20220222132805', '2022-04-04 13:32:34', 23),
('DoctrineMigrations\\Version20220222133339', '2022-04-04 13:32:34', 0),
('DoctrineMigrations\\Version20220222133627', '2022-04-04 13:32:34', 109),
('DoctrineMigrations\\Version20220222134024', '2022-04-04 13:32:34', 1),
('DoctrineMigrations\\Version20220222134653', '2022-04-04 13:32:34', 110),
('DoctrineMigrations\\Version20220222140100', '2022-04-04 13:32:34', 194),
('DoctrineMigrations\\Version20220222140508', '2022-04-04 13:32:34', 93),
('DoctrineMigrations\\Version20220222140558', '2022-04-04 13:32:34', 59),
('DoctrineMigrations\\Version20220228095450', '2022-04-04 13:32:34', 1),
('DoctrineMigrations\\Version20220228110335', '2022-04-04 13:32:34', 128),
('DoctrineMigrations\\Version20220228125234', '2022-04-04 13:32:34', 125),
('DoctrineMigrations\\Version20220228132144', '2022-04-04 13:32:34', 108),
('DoctrineMigrations\\Version20220228133812', '2022-04-04 13:32:34', 0),
('DoctrineMigrations\\Version20220228141600', '2022-04-04 13:32:34', 56),
('DoctrineMigrations\\Version20220228142006', '2022-04-04 13:32:35', 107),
('DoctrineMigrations\\Version20220228142552', '2022-04-04 13:32:35', 126),
('DoctrineMigrations\\Version20220228142839', '2022-04-04 13:32:35', 1),
('DoctrineMigrations\\Version20220228144455', '2022-04-04 13:32:35', 70),
('DoctrineMigrations\\Version20220317091103', '2022-04-04 13:32:35', 48),
('DoctrineMigrations\\Version20220321135951', '2022-04-04 13:32:35', 48),
('DoctrineMigrations\\Version20220321141007', '2022-04-04 13:32:35', 46),
('DoctrineMigrations\\Version20220325090216', '2022-04-04 13:32:35', 45),
('DoctrineMigrations\\Version20220325092221', '2022-04-04 13:32:35', 115),
('DoctrineMigrations\\Version20220325092408', '2022-04-04 13:32:35', 136),
('DoctrineMigrations\\Version20220330134639', '2022-04-04 13:32:35', 56),
('DoctrineMigrations\\Version20220330135845', '2022-04-04 13:32:35', 47);

-- --------------------------------------------------------

--
-- Structure de la table `fact`
--

CREATE TABLE `fact` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `milestone_id` int(11) DEFAULT NULL,
  `is_confirmed` tinyint(1) NOT NULL,
  `project_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `fact`
--

INSERT INTO `fact` (`id`, `name`, `date`, `description`, `milestone_id`, `is_confirmed`, `project_id`) VALUES
(1, 'fact 0', '2022-04-04 13:47:16', 'random description', 23, 1, 37),
(2, 'fact 1', '2022-04-04 13:47:16', 'random description', 23, 1, 31),
(3, 'fact 2', '2022-04-04 13:47:16', 'random description', 24, 1, 31),
(4, 'fact 3', '2022-04-04 13:47:16', 'random description', 22, 1, 38),
(5, 'fact 4', '2022-04-04 13:47:16', 'random description', 22, 1, 39),
(6, 'fact 5', '2022-04-04 13:47:16', 'random description', 22, 1, 40),
(7, 'fact 6', '2022-04-04 13:47:16', 'random description', 22, 1, 33),
(8, 'fact 7', '2022-04-04 13:47:16', 'random description', 23, 1, 35),
(9, 'fact 8', '2022-04-04 13:47:16', 'random description', 23, 1, 36),
(10, 'fact 9', '2022-04-04 13:47:16', 'random description', 24, 1, 32);

-- --------------------------------------------------------

--
-- Structure de la table `milestone`
--

CREATE TABLE `milestone` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` int(11) NOT NULL,
  `state` tinyint(1) NOT NULL,
  `date_obtain` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `milestone`
--

INSERT INTO `milestone` (`id`, `name`, `value`, `state`, `date_obtain`) VALUES
(22, 'Début de conception', 1, 1, NULL),
(23, 'Fin de la conception', 2, 1, NULL),
(24, 'Livraison en préproduction', 3, 1, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `probability`
--

CREATE TABLE `probability` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `probability`
--

INSERT INTO `probability` (`id`, `name`, `level`) VALUES
(15, 'Prevu', 1),
(16, 'Terminé', 3);

-- --------------------------------------------------------

--
-- Structure de la table `project`
--

CREATE TABLE `project` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `started_at` date DEFAULT NULL,
  `ended_at` date DEFAULT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `status_id` int(11) DEFAULT NULL,
  `wallet_id` int(11) DEFAULT NULL,
  `production_team_id` int(11) DEFAULT NULL,
  `client_team_id` int(11) DEFAULT NULL,
  `budget_id` int(11) DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `archive` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `project`
--

INSERT INTO `project` (`id`, `name`, `description`, `started_at`, `ended_at`, `created_at`, `status_id`, `wallet_id`, `production_team_id`, `client_team_id`, `budget_id`, `code`, `archive`) VALUES
(31, 'test0', 'Premier test0', '2022-04-04', '2022-04-04', '2022-04-04 13:47:15', 22, NULL, 9, 10, 23, '1', 0),
(32, 'test1', 'Premier test1', '2022-04-04', '2022-04-04', '2022-04-04 13:47:15', 24, 4, 10, 9, 23, '1', 0),
(33, 'test2', 'Premier test2', '2022-04-04', '2022-04-04', '2022-04-04 13:47:15', 23, 3, 9, 9, 22, '1', 0),
(34, 'test3', 'Premier test3', '2022-04-04', '2022-04-04', '2022-04-04 13:47:15', 23, 4, 10, 10, 22, '1', 0),
(35, 'test4', 'Premier test4', '2022-04-04', '2022-04-04', '2022-04-04 13:47:15', 23, 3, 10, 10, 23, '1', 0),
(36, 'test5', 'Premier test5', '2022-04-04', '2022-04-04', '2022-04-04 13:47:15', 23, NULL, 10, 10, 24, '1', 0),
(37, 'test6', 'Premier test6', '2022-04-04', '2022-04-04', '2022-04-04 13:47:15', 23, 3, 10, 10, 23, '1', 0),
(38, 'test7', 'Premier test7', '2022-04-04', '2022-04-04', '2022-04-04 13:47:15', 23, NULL, 9, 10, 23, '1', 0),
(39, 'test8', 'Premier test8', '2022-04-04', '2022-04-04', '2022-04-04 13:47:15', 22, NULL, 10, 9, 23, '1', 0),
(40, 'test9', 'Premier test9', '2022-04-04', '2022-04-04', '2022-04-04 13:47:15', 23, 4, 9, 9, 24, '1', 0);

-- --------------------------------------------------------

--
-- Structure de la table `risk`
--

CREATE TABLE `risk` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `identification_date` datetime NOT NULL,
  `resolved_date` datetime NOT NULL,
  `project_id` int(11) DEFAULT NULL,
  `severity_id` int(11) DEFAULT NULL,
  `probability_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `risk`
--

INSERT INTO `risk` (`id`, `name`, `identification_date`, `resolved_date`, `project_id`, `severity_id`, `probability_id`) VALUES
(7, 'élevé0', '2022-04-04 13:47:15', '2022-04-04 13:47:15', 31, NULL, NULL),
(8, 'élevé1', '2022-04-04 13:47:15', '2022-04-04 13:47:15', 32, NULL, NULL),
(9, 'élevé2', '2022-04-04 13:47:15', '2022-04-04 13:47:15', 33, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `severity`
--

CREATE TABLE `severity` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `severity`
--

INSERT INTO `severity` (`id`, `name`, `level`) VALUES
(22, 'Mineur', 1),
(23, 'Modéré', 2),
(24, 'Majeur', 3);

-- --------------------------------------------------------

--
-- Structure de la table `status`
--

CREATE TABLE `status` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` int(11) NOT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `status`
--

INSERT INTO `status` (`id`, `name`, `slug`, `value`, `color`) VALUES
(22, 'Prevu', 'UPCOMING', 0, '#F63C14'),
(23, 'En cours', 'IN PROGRESS', 1, '#E5F614'),
(24, 'Terminé', 'FINISHED', 3, '#12E327');

-- --------------------------------------------------------

--
-- Structure de la table `team`
--

CREATE TABLE `team` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `manager_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `team`
--

INSERT INTO `team` (`id`, `name`, `manager_id`) VALUES
(9, 'Équipe 1', 72),
(10, 'Équipe 2', 76);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `team_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`, `first_name`, `last_name`, `team_id`) VALUES
(71, 'mlaribi@gmail.com', '["ROLE_ADMIN"]', '$2y$13$usutQH.8QvPgYgsSU4Lw.uwBqR.cqhHuYVrCgMbgWVGYOviisrxJy', 'Mehdi', 'Laribi', 10),
(72, 'user1@gmail.com', '[]', '$2y$13$rhnrIFMdX3AIyW2rTdO9au5HqkpHjF9NUN4AsoDNcXedrTdftfIgy', 'firstname1', 'lastname', NULL),
(73, 'user2@gmail.com', '[]', '$2y$13$Iiowi5fArHI48Xy0GIoqR.nd.8eUm8v.xDIceFcWaQSxqbqm.9Bdm', 'firstname2', 'lastname', 9),
(74, 'user3@gmail.com', '[]', '$2y$13$zHCBfpHmY/hL36E8Whh.pufSW8v9lE6LdXQ2z55jjTLgZm9sFXTbK', 'firstname3', 'lastname', 9),
(75, 'user4@gmail.com', '[]', '$2y$13$nk7w.cYPi4f1VU2XncxyseqyJSZWmWRvTDiwPMv6prjyed8/jJhDO', 'firstname4', 'lastname', NULL),
(76, 'user5@gmail.com', '[]', '$2y$13$7VUknMIatQ3/AeK4CP8OAOdtQ5n71nbNrDvgOre7okEe4D9w0eesG', 'firstname5', 'lastname', NULL),
(77, 'user6@gmail.com', '[]', '$2y$13$eghvy8zOBE9uvXy0mNCTjeEk7G7TdDLrBhYIrvFlQ5Ft7yosYmYEG', 'firstname6', 'lastname', 10),
(78, 'user7@gmail.com', '[]', '$2y$13$MTS6aqFvib9CRm8HMMAGIe4JWt/16s2quiuCsh1OmxDPXghEmzsjO', 'firstname7', 'lastname', 10),
(79, 'user8@gmail.com', '[]', '$2y$13$9QSzVif7.m/zPHl9sKCdueHRBgqp6b3pNO6hABJ2AXh13NzcbnVEW', 'firstname8', 'lastname', NULL),
(80, 'user9@gmail.com', '[]', '$2y$13$COmMnjS/IMrJ01nOBX2vM.RC8FYNv3jFWyC3Sez1uOwG9BAGp5D6u', 'firstname9', 'lastname', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `wallet`
--

CREATE TABLE `wallet` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `manager_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `wallet`
--

INSERT INTO `wallet` (`id`, `name`, `manager_id`) VALUES
(3, 'Premier projet', 72),
(4, 'Deuxième projet', 77);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `budget`
--
ALTER TABLE `budget`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `fact`
--
ALTER TABLE `fact`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_6FA45B954B3E2EDA` (`milestone_id`),
  ADD KEY `IDX_6FA45B95166D1F9C` (`project_id`);

--
-- Index pour la table `milestone`
--
ALTER TABLE `milestone`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `probability`
--
ALTER TABLE `probability`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_2FB3D0EE6BF700BD` (`status_id`),
  ADD KEY `IDX_2FB3D0EE712520F3` (`wallet_id`),
  ADD KEY `IDX_2FB3D0EE7B519CD3` (`client_team_id`),
  ADD KEY `IDX_2FB3D0EE36ABA6B8` (`budget_id`),
  ADD KEY `IDX_2FB3D0EE3C795573` (`production_team_id`);

--
-- Index pour la table `risk`
--
ALTER TABLE `risk`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_7906D541166D1F9C` (`project_id`),
  ADD KEY `IDX_7906D541F7527401` (`severity_id`),
  ADD KEY `IDX_7906D541D09E6F09` (`probability_id`);

--
-- Index pour la table `severity`
--
ALTER TABLE `severity`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_C4E0A61F783E3463` (`manager_id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`),
  ADD KEY `IDX_8D93D649296CD8AE` (`team_id`);

--
-- Index pour la table `wallet`
--
ALTER TABLE `wallet`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_7C68921F783E3463` (`manager_id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `budget`
--
ALTER TABLE `budget`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT pour la table `fact`
--
ALTER TABLE `fact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT pour la table `milestone`
--
ALTER TABLE `milestone`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT pour la table `probability`
--
ALTER TABLE `probability`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT pour la table `project`
--
ALTER TABLE `project`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT pour la table `risk`
--
ALTER TABLE `risk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT pour la table `severity`
--
ALTER TABLE `severity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT pour la table `status`
--
ALTER TABLE `status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT pour la table `team`
--
ALTER TABLE `team`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;
--
-- AUTO_INCREMENT pour la table `wallet`
--
ALTER TABLE `wallet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `fact`
--
ALTER TABLE `fact`
  ADD CONSTRAINT `FK_6FA45B95166D1F9C` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`),
  ADD CONSTRAINT `FK_6FA45B954B3E2EDA` FOREIGN KEY (`milestone_id`) REFERENCES `milestone` (`id`);

--
-- Contraintes pour la table `project`
--
ALTER TABLE `project`
  ADD CONSTRAINT `FK_2FB3D0EE36ABA6B8` FOREIGN KEY (`budget_id`) REFERENCES `budget` (`id`),
  ADD CONSTRAINT `FK_2FB3D0EE3C795573` FOREIGN KEY (`production_team_id`) REFERENCES `team` (`id`),
  ADD CONSTRAINT `FK_2FB3D0EE6BF700BD` FOREIGN KEY (`status_id`) REFERENCES `status` (`id`),
  ADD CONSTRAINT `FK_2FB3D0EE712520F3` FOREIGN KEY (`wallet_id`) REFERENCES `wallet` (`id`),
  ADD CONSTRAINT `FK_2FB3D0EE7B519CD3` FOREIGN KEY (`client_team_id`) REFERENCES `team` (`id`);

--
-- Contraintes pour la table `risk`
--
ALTER TABLE `risk`
  ADD CONSTRAINT `FK_7906D541166D1F9C` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`),
  ADD CONSTRAINT `FK_7906D541D09E6F09` FOREIGN KEY (`probability_id`) REFERENCES `probability` (`id`),
  ADD CONSTRAINT `FK_7906D541F7527401` FOREIGN KEY (`severity_id`) REFERENCES `severity` (`id`);

--
-- Contraintes pour la table `team`
--
ALTER TABLE `team`
  ADD CONSTRAINT `FK_C4E0A61F783E3463` FOREIGN KEY (`manager_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `FK_8D93D649296CD8AE` FOREIGN KEY (`team_id`) REFERENCES `team` (`id`);

--
-- Contraintes pour la table `wallet`
--
ALTER TABLE `wallet`
  ADD CONSTRAINT `FK_7C68921F783E3463` FOREIGN KEY (`manager_id`) REFERENCES `user` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
