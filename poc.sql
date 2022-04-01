-- phpMyAdmin SQL Dump
-- version 4.5.4.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Ven 01 Avril 2022 à 12:40
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
(34, 500000, 35000, 15000, 500000),
(35, 400000, 35000, 15000, 400000),
(36, 300000, 35000, 15000, 300000);

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
('DoctrineMigrations\\Version20220201140825', '2022-02-01 14:17:08', 69),
('DoctrineMigrations\\Version20220201152928', '2022-02-01 15:29:34', 136),
('DoctrineMigrations\\Version20220221124137', '2022-02-21 12:41:54', 61),
('DoctrineMigrations\\Version20220221125906', '2022-02-21 12:59:17', 194),
('DoctrineMigrations\\Version20220221151650', '2022-02-21 15:17:00', 74),
('DoctrineMigrations\\Version20220222105300', '2022-02-22 10:53:11', 141),
('DoctrineMigrations\\Version20220222105757', '2022-02-22 10:58:01', 64),
('DoctrineMigrations\\Version20220222110404', '2022-02-22 11:04:08', 56),
('DoctrineMigrations\\Version20220222125815', '2022-02-22 12:58:22', 377),
('DoctrineMigrations\\Version20220222130110', '2022-02-22 13:01:15', 59),
('DoctrineMigrations\\Version20220222132137', '2022-02-22 13:21:43', 81),
('DoctrineMigrations\\Version20220222132805', '2022-02-22 13:28:09', 74),
('DoctrineMigrations\\Version20220222133339', '2022-02-22 13:33:42', 192),
('DoctrineMigrations\\Version20220222133627', '2022-02-22 13:36:30', 141),
('DoctrineMigrations\\Version20220222134024', '2022-02-22 13:40:26', 145),
('DoctrineMigrations\\Version20220222134653', '2022-02-22 13:46:56', 166),
('DoctrineMigrations\\Version20220222140100', '2022-02-22 14:01:04', 292),
('DoctrineMigrations\\Version20220222140508', '2022-02-22 14:05:11', 242),
('DoctrineMigrations\\Version20220222140558', '2022-02-22 14:06:02', 172),
('DoctrineMigrations\\Version20220228095450', '2022-02-28 09:55:01', 1925),
('DoctrineMigrations\\Version20220228110335', '2022-02-28 11:03:40', 251),
('DoctrineMigrations\\Version20220228125234', '2022-02-28 12:52:38', 193),
('DoctrineMigrations\\Version20220228132144', '2022-02-28 13:21:47', 149),
('DoctrineMigrations\\Version20220228133812', '2022-02-28 13:38:14', 205),
('DoctrineMigrations\\Version20220228141600', '2022-02-28 14:16:07', 157),
('DoctrineMigrations\\Version20220228142006', '2022-02-28 14:20:09', 199),
('DoctrineMigrations\\Version20220228142552', '2022-02-28 14:25:56', 157),
('DoctrineMigrations\\Version20220228142839', '2022-02-28 14:28:42', 22),
('DoctrineMigrations\\Version20220228144455', '2022-02-28 14:44:58', 165),
('DoctrineMigrations\\Version20220317091103', '2022-03-17 09:11:19', 508),
('DoctrineMigrations\\Version20220321135951', '2022-03-21 14:00:09', 482),
('DoctrineMigrations\\Version20220321141007', '2022-03-21 14:10:10', 191),
('DoctrineMigrations\\Version20220325090216', '2022-03-25 09:02:25', 240),
('DoctrineMigrations\\Version20220325092221', '2022-03-25 09:22:25', 230),
('DoctrineMigrations\\Version20220325092408', '2022-03-25 09:24:11', 220),
('DoctrineMigrations\\Version20220330134639', '2022-03-30 13:46:43', 376),
('DoctrineMigrations\\Version20220330135845', '2022-03-30 13:58:51', 127);

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
  `project_id` int(11) DEFAULT NULL,
  `is_confirmed` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `fact`
--

INSERT INTO `fact` (`id`, `name`, `date`, `description`, `milestone_id`, `project_id`, `is_confirmed`) VALUES
(4, 'fact 0', '2022-02-28 13:55:12', 'Bug ', 20, 81, 1),
(5, 'fact 1', '2022-01-28 00:00:00', 'Arrêt brusque', 21, 89, 1),
(7, 'fact 3', '2022-02-28 00:00:00', 'Réglage des conventions', 21, 83, 1),
(8, 'fact 4', '2021-01-18 00:00:00', 'Problème de récupération des données', 19, 89, 1),
(9, 'fact 5', '2022-02-28 13:55:12', 'Amélioration de la page d\'accueil', 19, 85, 1),
(10, 'Fact 6', '2022-03-16 08:20:00', 'Souci d\'installation de dépendance', 20, 81, 0),
(11, 'fact 8', '2022-01-01 00:00:00', 'Amélioration du visuel', 19, NULL, 0),
(12, 'fact 8', '2021-04-12 00:00:00', 'Long chargement d\'une page', 22, NULL, 0);

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
(19, 'Début de conception', 1, 1, '2022-03-10'),
(20, 'Fin de la conception', 2, 1, '2022-04-06'),
(21, 'Livraison en préproduction', 3, 1, '2022-05-26'),
(22, 'Début des développements', 4, 0, '2021-01-16'),
(23, 'Fin des développements', 5, 0, '2022-03-12');

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
(1, 'Peu probable', 1),
(2, 'Probable', 2),
(3, 'Très probable', 3);

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
  `state` tinyint(1) NOT NULL,
  `archive` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `project`
--

INSERT INTO `project` (`id`, `name`, `description`, `started_at`, `ended_at`, `created_at`, `status_id`, `wallet_id`, `production_team_id`, `client_team_id`, `budget_id`, `code`, `state`, `archive`) VALUES
(81, 'Application mobile', 'Réalisation d\'une app mobile en C#', '2022-02-28', '2022-03-22', '2019-02-14 13:55:11', 72, 12, 10, 10, 36, '1a', 1, 0),
(82, 'Site Internet', 'Réalisation d\'un site Wordpress', '2022-02-28', '2022-04-23', '2022-02-28 13:55:11', 71, 12, 9, 10, 34, '2b', 1, 1),
(83, 'Création d\'une VM', 'Création d\'une machine virtuelle', '2022-02-28', '2022-09-28', '2022-02-28 13:55:11', 71, 11, 11, 10, 34, '3c', 1, 1),
(85, 'Site Wordpress', 'Réalisation d\'un site marchand', '2022-02-28', '2022-05-31', '2022-02-28 13:55:11', 73, 13, 12, 10, 35, '5e', 1, 1),
(88, 'Création Logiciel', 'Création d\'un logiciel en Pyhton', '2018-02-28', '2019-11-20', '2022-02-28 13:55:11', 73, 12, 10, 11, 35, '8h', 1, 0),
(89, 'Site Symfony', 'Réalisation d\'un site en Symfony', '2022-02-28', '2023-07-21', '2022-02-28 13:55:11', 72, 13, 11, 9, 35, '9i', 1, 0),
(90, 'Jeu en Python', 'Réalisation d\'un Jeu Mario en Python', '2022-05-07', '2021-06-13', '2022-03-30 14:13:44', 72, 11, 9, 9, 34, 'z26', 1, 0);

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
(25, 'Risque 1', '2022-02-28 13:55:11', '2022-02-28 13:55:11', 81, 1, 1),
(26, 'Risque 2', '2022-02-28 13:55:12', '2022-02-28 13:55:12', 82, 2, 2),
(27, 'Risque 3', '2022-02-28 13:55:12', '2022-02-28 13:55:12', 83, 3, 3);

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
(1, 'Mineur', 1),
(2, 'Modéré', 2),
(3, 'Majeur', 3);

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
(71, 'Prévu', 'UPCOMING', 0, '#FF0000'),
(72, 'En cours', 'IN PROGRESS', 1, '#FFFF00'),
(73, 'Terminé', 'FINISHED', 3, '#33ff33');

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
(9, 'Équipe 1', 182),
(10, 'Équipe 2', 183),
(11, 'Equipe 3', 184),
(12, 'Equipe 4 ', 185);

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
(178, 'mlaribi@gmail.com', '["ROLE_ADMIN"]', '$2y$13$AVp3zXo1GidbVANBpJiT8efspHLwteX.YftVu9l0lgrvKjWl6Ghy6', 'Mehdi', 'Laribi', 9),
(179, 'tlegrand@gmail.com', '[]', '$2y$13$5yl9L7go352GITeMzQd9NuSuckSCsHjokf2AJHOz3xpWVRcKtcfKq', 'Thomas', 'Legrand', 9),
(180, 'pdublier@gmail.com', '[]', '$2y$13$MoGGp4zdm9T6p0YSkxfLCOQFHYUG5md7sML8FwlJ6PtM1ugo55jom', 'Paul', 'Dubier', 10),
(181, 'elebeau@gmail.com', '[]', '$2y$13$JLz.wAMZ19/rHwEADnX3IuK903YanJdpYWE7Zk13LIsGRoLKO7pnm', 'Emilie', 'Lebeau', 11),
(182, 'gdupres@gmail.com', '[]', '$2y$13$YE3WGEcbjTKFCWjqPPExH.m0bDJIBfm4YTeTKtKNa4vuBAcY4.0vi', 'Grégory', 'Duprès', 12),
(183, 'aperron@gmail.com', '[]', '$2y$13$tIGBsfVu1kBqZpUlKFF22ur4v4UFLVsEm96X7x6LnKKhKLw6D.MXa', 'Anna', 'Perron', 10),
(184, 'kgarnot@gmail.com', '[]', '$2y$13$sWalKR9tKYcvm..mLqT/SO99a1Gm95GklgR4I.8TYHCJ1cBDynW4u', 'Kevin', 'Garnot', 11),
(185, 'jberin@gmail.com', '[]', '$2y$13$PuaaH2dMWsMrC7HD2bu.V.v12YuaDBx7C6EQxADNsCEZ6nMmUVMem', 'Julien', 'Berin', 12),
(186, 'swarme@gmail.com', '[]', '$2y$13$Xb0VMHg0dMZNhFCMALhPterLD2vW1VM/x712WVlXZGVsbZWn7iW.e', 'Solange', 'Warme', 9);

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
(11, 'Premier portefeuille', 179),
(12, 'Deuxième portefeuille', 184),
(13, 'Troisième portfeuille', 180);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT pour la table `fact`
--
ALTER TABLE `fact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT pour la table `milestone`
--
ALTER TABLE `milestone`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT pour la table `probability`
--
ALTER TABLE `probability`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `project`
--
ALTER TABLE `project`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;
--
-- AUTO_INCREMENT pour la table `risk`
--
ALTER TABLE `risk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT pour la table `severity`
--
ALTER TABLE `severity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `status`
--
ALTER TABLE `status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;
--
-- AUTO_INCREMENT pour la table `team`
--
ALTER TABLE `team`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=187;
--
-- AUTO_INCREMENT pour la table `wallet`
--
ALTER TABLE `wallet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
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
