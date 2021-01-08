-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  sam. 18 juil. 2020 à 16:52
-- Version du serveur :  5.7.26
-- Version de PHP :  7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `pfav1.0`
--

-- --------------------------------------------------------

--
-- Structure de la table `admins`
--

DROP TABLE IF EXISTS `admins`;
CREATE TABLE IF NOT EXISTS `admins` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_super` tinyint(1) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `cours`
--

DROP TABLE IF EXISTS `cours`;
CREATE TABLE IF NOT EXISTS `cours` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `titre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lien` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `module_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `downloadCount` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cours_module_id_foreign` (`module_id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `cours`
--

INSERT INTO `cours` (`id`, `titre`, `lien`, `module_id`, `created_at`, `updated_at`, `downloadCount`) VALUES
(9, 'l\'héritage', 'Génie informatique/2020/Structure de données et programmation avancée en C/BADI/cours/c/Rntjx4dnRTQZRNOX3B2ZCHhqC1IXj5SfkzKZBvIu.jpeg', 12, '2020-06-03 09:26:20', '2020-06-03 09:26:20', NULL),
(23, 'les exceptions', 'Génie informatique/2020/Java/smasi/cours/Class abstrait/qrns2Hw2iTUp6RqFzADrFrLaoHyBXCjAfLan5lFd.pdf', 1, '2020-07-11 16:35:26', '2020-07-16 17:15:11', 2),
(24, 'Classe abstraite', 'Génie informatique/2020/Java/boucharaf/cours/Classe abstraite/17qh5uG91ZZWstNN8o96DjwDIBO1i1vSqMLkOriJ.pdf', 1, '2020-07-11 16:42:54', '2020-07-11 16:42:54', 0),
(16, 'les interfaces', 'Génie informatique/2020/Java/BADI/cours/Apprentissage Statistique/XG3FBle7i5lbexq1Be8cLUguTiCgPcD9y200lMs4.docx', 1, '2020-06-03 15:00:14', '2020-06-08 23:15:21', 2),
(18, 'valorisation energitique de la biomasse', 'Génie Civil/2020/beton armé/smasi/cours/valorisation energitique de la biomasse/J4nzxBApKk1Q51b53XbdpwmEH5A310UEDAFaZ2PS.png', 2, '2020-06-04 11:45:45', '2020-06-04 11:45:54', 1),
(19, 'les énumérations', 'Génie informatique/2020/Java/BADI/cours/POO/417lVgDjnseeQnPvm8XQk18CtjxPtYy3OcoTFhnO.pdf', 1, '2020-06-05 08:45:12', '2020-06-08 23:15:24', 1),
(21, 'Structure de contrôle', 'Génie informatique/2020/Java/boucharaf/cours/zip/eXGJyPISxbU2BRjvqDMm7tdUR3zecBdmL2iI5HTP.zip', 1, '2020-06-05 08:55:15', '2020-06-05 08:55:29', 1),
(22, 'boucle', 'Génie informatique/2020/Structure de données et programmation avancée en C/smasi/cours/boucle/YOPInYJKfLybcBugwaMQJrVlyMpoy5q2nMYZasKr.pdf', 12, '2020-07-11 14:57:33', '2020-07-11 14:57:43', 1),
(25, 'Initiation', 'Génie informatique/2020/IA/DIMANE/cours/Initiation/4KenxrSPokvFJZ0ijBnycLfVP59nqj9YsxyAQPGP.pdf', 3, '2020-07-11 22:22:16', '2020-07-11 22:22:16', 0),
(26, 'Routage', 'Génie informatique/2020/Réseaux informatiques/M. EL BORJI/cours/Routage/5EFb6crA1GWrxWyd5pnoTmQgl9ZLvJvWfKL3DqKq.pdf', 16, '2020-07-11 22:24:49', '2020-07-11 22:24:49', 0),
(28, 'SQL', 'Génie informatique/2020/Systèmes d’Information et Bases de Données/BADI/cours/SQL/86EcDZjvOGZkslWX92PNHKgkGSfp7geSpf3qUim2.pdf', 15, '2020-07-16 17:07:55', '2020-07-16 17:14:34', 1);

-- --------------------------------------------------------

--
-- Structure de la table `departements`
--

DROP TABLE IF EXISTS `departements`;
CREATE TABLE IF NOT EXISTS `departements` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `libelle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `departements`
--

INSERT INTO `departements` (`id`, `libelle`, `created_at`, `updated_at`) VALUES
(1, 'Mathématiques et Informatique', NULL, NULL),
(2, 'Génie Civil Energétique et Environnement (GCEE)', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `departement_enseignant`
--

DROP TABLE IF EXISTS `departement_enseignant`;
CREATE TABLE IF NOT EXISTS `departement_enseignant` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `departement_id` int(10) UNSIGNED NOT NULL,
  `enseignant_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `departement_enseignant`
--

INSERT INTO `departement_enseignant` (`id`, `departement_id`, `enseignant_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 2, 2, NULL, NULL),
(3, 1, 3, NULL, NULL),
(4, 1, 4, NULL, NULL),
(5, 1, 5, NULL, NULL),
(6, 1, 6, NULL, NULL),
(7, 1, 7, NULL, NULL),
(8, 2, 8, NULL, NULL),
(9, 2, 9, NULL, NULL),
(10, 2, 10, NULL, NULL),
(11, 2, 11, NULL, NULL),
(12, 2, 12, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `enseignants`
--

DROP TABLE IF EXISTS `enseignants`;
CREATE TABLE IF NOT EXISTS `enseignants` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prenom` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CNI` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lien_cv` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `enseignants`
--

INSERT INTO `enseignants` (`id`, `nom`, `prenom`, `CNI`, `lien_cv`, `created_at`, `updated_at`) VALUES
(1, 'smasi', 'ahmed', 'S546541', '', NULL, NULL),
(2, 'boucharaf', 'issam', 't686889', '', NULL, NULL),
(3, 'ABOU EL HANOUNE', 'YOUNES', 'S55625', '', NULL, NULL),
(4, 'ADDAM', 'MOHAMED', 'Q654984', '', NULL, NULL),
(5, 'EL ALLAOUI', 'AHMAD', 'D98798', '', NULL, NULL),
(6, 'BADI', 'IMAD', 'K24654', '', NULL, NULL),
(7, 'BAHRI', 'ABDELKHALAK', 'M542654', '', NULL, NULL),
(8, 'BEGHDADI', 'EL HASSAN', 'Z69844', '', NULL, NULL),
(9, 'BOULANOUAR', 'ABDERRAHIM', 'D958798', '', NULL, NULL),
(10, 'BOUAJAJ', 'AHMED', 'S987984', '', NULL, NULL),
(11, 'DIMANE', 'FOUAD', 'F549464', '', NULL, NULL),
(12, 'DRIOUCH', 'ISMAEL', 'Q99849', '', NULL, NULL),
(13, 'M. KHAMJANE ', 'AZIZ', 'R65465465', '', NULL, NULL),
(14, 'M. EL BORJI', 'YASSINE', '', '', NULL, NULL),
(15, 'BOUDAA', 'TARIK', '', '', NULL, NULL),
(16, 'M. BAHRI', 'ABDELKHALEK', '', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `enseignant_module`
--

DROP TABLE IF EXISTS `enseignant_module`;
CREATE TABLE IF NOT EXISTS `enseignant_module` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `module_id` int(10) UNSIGNED NOT NULL,
  `enseignant_id` int(10) UNSIGNED NOT NULL,
  `annee` year(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `enseignant_module`
--

INSERT INTO `enseignant_module` (`id`, `module_id`, `enseignant_id`, `annee`, `created_at`, `updated_at`) VALUES
(1, 1, 16, 2020, NULL, NULL),
(2, 2, 1, 2020, NULL, NULL),
(3, 3, 13, 2020, NULL, NULL),
(4, 4, 6, 2020, NULL, NULL),
(5, 6, 4, 2020, NULL, NULL),
(6, 7, 5, 2020, NULL, NULL),
(7, 8, 8, 2020, NULL, NULL),
(8, 12, 6, 2020, NULL, NULL),
(9, 12, 11, 2020, NULL, NULL),
(10, 14, 3, 2020, NULL, NULL),
(13, 17, 20, 2020, NULL, NULL),
(14, 13, 8, 2020, NULL, NULL),
(15, 16, 14, 2020, NULL, NULL),
(16, 15, 6, 2020, NULL, NULL),
(17, 17, 15, 2020, NULL, NULL),
(18, 18, 13, 2020, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8_unicode_ci NOT NULL,
  `queue` text COLLATE utf8_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `filliers`
--

DROP TABLE IF EXISTS `filliers`;
CREATE TABLE IF NOT EXISTS `filliers` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `libelle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `departement_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `filliers_departement_id_foreign` (`departement_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `filliers`
--

INSERT INTO `filliers` (`id`, `libelle`, `departement_id`, `created_at`, `updated_at`) VALUES
(1, 'Génie informatique', 1, NULL, NULL),
(2, 'Génie Civil', 2, NULL, NULL),
(3, 'Génie Energitiques et Energies Renouvelables', 2, NULL, NULL),
(4, 'Génie de l’Eau et de l’Environnement', 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=246 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(225, '2014_10_12_000000_create_users_table', 1),
(226, '2014_10_12_100000_create_password_resets_table', 1),
(227, '2019_08_19_000000_create_failed_jobs_table', 1),
(228, '2020_04_29_134116_create_satuts_table', 1),
(229, '2020_04_29_135708_create_cours_table', 1),
(230, '2020_04_29_140119_create_modules_table', 1),
(231, '2020_04_29_142406_create_filliers_table', 1),
(232, '2020_04_29_142612_create_departements_table', 1),
(233, '2020_04_29_143806_create_tds_table', 1),
(234, '2020_04_29_143910_create_tps_table', 1),
(235, '2020_04_29_144451_create_enseignants_table', 1),
(236, '2020_04_29_152733_create_departement_enseignant_table', 1),
(237, '2020_04_29_153216_create_enseignant_module_table', 1),
(238, '2020_04_30_153829_create_admins_table', 1),
(239, '2020_05_13_152905_add_numero_to_tds_table', 1),
(240, '2020_05_13_154647_add_numero_to_tps_table', 1),
(241, '2020_05_31_020253_add_download_count_to_cours_table', 1),
(242, '2020_05_31_021829_add_download_count_to_tds_table', 1),
(243, '2020_05_31_022100_add_download_count_to_tps_table', 1),
(244, '2020_05_31_204035_add__c_i_n_to_users_table', 1),
(245, '2020_05_31_204542_add_link_photo_to_users_table', 1);

-- --------------------------------------------------------

--
-- Structure de la table `modules`
--

DROP TABLE IF EXISTS `modules`;
CREATE TABLE IF NOT EXISTS `modules` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `libelle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fillier_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `modules_fillier_id_foreign` (`fillier_id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `modules`
--

INSERT INTO `modules` (`id`, `libelle`, `fillier_id`, `created_at`, `updated_at`) VALUES
(1, 'Java', 1, NULL, NULL),
(2, 'beton armé', 2, NULL, NULL),
(3, 'IA', 1, NULL, NULL),
(4, 'Mathématiques de l\'ingénieur', 2, NULL, NULL),
(5, 'Programmation événementielle et Initiations aux bases de données', 2, NULL, NULL),
(6, 'Mécanique des Fluides et des Solides', 2, NULL, NULL),
(7, 'Probabilité Statistiques et Recherche Opérationnelle', 2, NULL, NULL),
(8, 'Mécanique des Fluides et des Solides', 2, NULL, NULL),
(9, 'Dessin, architecture', 2, NULL, NULL),
(10, 'Urbanisme, Topographie', 2, NULL, NULL),
(11, 'Langues et Communication 3', 2, NULL, NULL),
(12, 'Structure de données et programmation avancée en C', 1, NULL, NULL),
(13, 'Architecture des ordinateurs', 1, NULL, NULL),
(14, 'Méthodes numériques pour l’ingénieur et Analyse des Données', 1, NULL, NULL),
(15, 'Systèmes d’Information et Bases de Données', 1, NULL, NULL),
(16, 'Réseaux informatiques', 1, NULL, NULL),
(17, 'Programmation Orientée Objet en C++', 1, NULL, NULL),
(18, 'Algorithmique avancée et complexité', 1, NULL, NULL),
(19, 'Comptabilité et contrôle de gestion', 3, NULL, NULL),
(20, 'Mathématiques pour l’ingénieur 1', 3, NULL, NULL),
(21, 'Management de l\'énergie', 3, NULL, NULL),
(22, 'Programmation et outils informatiques', 4, NULL, NULL),
(23, 'Biologie pour l’ingénieur', 4, NULL, NULL),
(24, 'Chimie organique, cinétique et catalyse', 4, NULL, NULL),
(25, 'Mécanique des fluides et hydraulique', 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `statuts`
--

DROP TABLE IF EXISTS `statuts`;
CREATE TABLE IF NOT EXISTS `statuts` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `libelle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `tds`
--

DROP TABLE IF EXISTS `tds`;
CREATE TABLE IF NOT EXISTS `tds` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `lien_ennonce` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lien_correction` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cour_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `numero` int(11) DEFAULT NULL,
  `download_count` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tds_cour_id_foreign` (`cour_id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `tds`
--

INSERT INTO `tds` (`id`, `lien_ennonce`, `lien_correction`, `cour_id`, `created_at`, `updated_at`, `numero`, `download_count`) VALUES
(1, 'GI2/2020/Java/boucharaf/cours/Apprentissage Statistique/TDs/enonnce_TD1.pdf', 'GI2/2020/Java/boucharaf/cours/Apprentissage Statistique/TDs/correction_TD1.docx', 8, '2020-06-03 09:27:43', '2020-06-03 09:32:37', 1, 2),
(2, 'GI2/2020/Java/boucharaf/cours/Apprentissage Statistique/TDs/enonnce_TD2.pdf', NULL, 8, '2020-06-03 09:29:52', '2020-06-03 09:29:52', 2, NULL),
(3, 'GI2/2020/Java/boucharaf/cours/Apprentissage Statistique/TDs/enonnce_TD4.jpg', NULL, 8, '2020-06-03 09:30:33', '2020-06-03 09:30:33', 4, NULL),
(4, 'Génie informatique/2020/Java/BADI/cours/Problème de téléchargement/publication d\'un document/TDs/enonnce_TD1.jpeg', 'Génie informatique/2020/Java/BADI/cours/Problème de téléchargement/publication d\'un document/TDs/correction_TD1.png', 15, '2020-06-03 15:10:35', '2020-06-08 23:10:24', 1, 3),
(5, 'Génie Civil/2020/beton armé/smasi/cours/valorisation energitique de la biomasse/TDs/enonnce_TD1.docx', NULL, 18, '2020-06-04 11:46:15', '2020-06-04 11:46:15', 1, NULL),
(6, 'Génie informatique/2020/Java/smasi/cours/Class abstrait/TDs/enonnce_TD1.pdf', 'Génie informatique/2020/Java/smasi/cours/Class abstrait/TDs/correction_TD1.jpeg', 23, '2020-07-11 18:21:58', '2020-07-16 17:15:26', 1, 4),
(7, 'Génie informatique/2020/Java/smasi/cours/Class abstrait/TDs/enonnce_TD2.pdf', 'Génie informatique/2020/Java/smasi/cours/Class abstrait/TDs/correction_TD2.pdf', 23, '2020-07-11 18:22:19', '2020-07-11 18:24:06', 2, NULL),
(8, 'Génie informatique/2020/Java/smasi/cours/Class abstrait/TDs/enonnce_TD3.pdf', NULL, 23, '2020-07-11 18:22:36', '2020-07-11 18:22:36', 3, NULL),
(9, 'Génie informatique/2020/Java/boucharaf/cours/Classe abstraite/TDs/enonnce_TD1.pdf', 'Génie informatique/2020/Java/boucharaf/cours/Classe abstraite/TDs/correction_TD1.pdf', 24, '2020-07-11 18:33:41', '2020-07-11 18:34:21', 1, NULL),
(10, 'Génie informatique/2020/Java/boucharaf/cours/Classe abstraite/TDs/enonnce_TD2.pdf', NULL, 24, '2020-07-11 18:33:59', '2020-07-11 18:33:59', 2, NULL),
(11, 'Génie informatique/2020/Java/BADI/cours/POO/TDs/enonnce_TD1.pdf', 'Génie informatique/2020/Java/BADI/cours/POO/TDs/correction_TD1.docx', 19, '2020-07-11 19:50:14', '2020-07-11 19:50:52', 1, NULL),
(12, 'Génie informatique/2020/Java/BADI/cours/POO/TDs/enonnce_TD2.pdf', NULL, 19, '2020-07-11 22:11:38', '2020-07-11 22:11:38', 2, NULL),
(13, 'Génie informatique/2020/Java/BADI/cours/POO/TDs/enonnce_TD3.pdf', NULL, 19, '2020-07-11 22:11:52', '2020-07-11 22:11:52', 3, NULL),
(14, 'Génie informatique/2020/Systèmes d’Information et Bases de Données/BADI/cours/SQL/TDs/enonnce_TD1.docx', NULL, 27, '2020-07-16 17:02:37', '2020-07-16 17:02:37', 1, NULL),
(15, 'Génie informatique/2020/Systèmes d’Information et Bases de Données/BADI/cours/SQL/TDs/enonnce_TD1.docx', NULL, 28, '2020-07-16 17:08:59', '2020-07-16 17:14:52', 1, 2);

-- --------------------------------------------------------

--
-- Structure de la table `tps`
--

DROP TABLE IF EXISTS `tps`;
CREATE TABLE IF NOT EXISTS `tps` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `lien_ennonce` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lien_correction` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cour_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `numero` int(11) DEFAULT NULL,
  `download_count` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tps_cour_id_foreign` (`cour_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `tps`
--

INSERT INTO `tps` (`id`, `lien_ennonce`, `lien_correction`, `cour_id`, `created_at`, `updated_at`, `numero`, `download_count`) VALUES
(1, 'Génie Civil/2020/beton armé/smasi/cours/valorisation energitique de la biomasse/TPs/enonnce_TP5.pdf', NULL, 18, '2020-07-09 17:07:39', '2020-07-09 17:07:39', 5, NULL),
(2, 'Génie informatique/2020/Structure de données et programmation avancée en C/smasi/cours/boucle/TPs/enonnce_TP1.pdf', NULL, 22, '2020-07-11 15:02:48', '2020-07-11 15:03:01', 1, 1),
(3, 'Génie informatique/2020/Java/smasi/cours/Class abstrait/TPs/enonnce_TP1.jpeg', NULL, 23, '2020-07-11 18:23:02', '2020-07-11 18:23:02', 1, NULL),
(4, 'Génie informatique/2020/Java/BADI/cours/Apprentissage Statistique/TPs/enonnce_TP1.pdf', 'Génie informatique/2020/Java/BADI/cours/Apprentissage Statistique/TPs/correction_TP1.pdf', 16, '2020-07-11 22:08:57', '2020-07-11 22:09:31', 1, NULL),
(5, 'Génie informatique/2020/Java/BADI/cours/Apprentissage Statistique/TPs/enonnce_TP2.pdf', NULL, 16, '2020-07-11 22:10:29', '2020-07-11 22:10:29', 2, NULL),
(6, 'Génie informatique/2020/Java/smasi/cours/Class abstrait/TPs/enonnce_TP2.docx', 'Génie informatique/2020/Java/smasi/cours/Class abstrait/TPs/correction_TP2.pdf', 23, '2020-07-11 22:34:08', '2020-07-11 22:34:36', 2, NULL),
(7, 'Génie informatique/2020/Systèmes d’Information et Bases de Données/BADI/cours/SQL/TPs/enonnce_TP1.docx', NULL, 28, '2020-07-16 17:09:21', '2020-07-16 17:09:21', 1, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `fillier_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `annee` year(4) DEFAULT NULL,
  `prenom` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CNE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) DEFAULT NULL,
  `is_represantant` tinyint(1) DEFAULT NULL,
  `CIN` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `linkPhoto` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `users_fillier_id_foreign` (`fillier_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `fillier_id`, `name`, `annee`, `prenom`, `CNE`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `is_admin`, `is_represantant`, `CIN`, `linkPhoto`) VALUES
(1, NULL, 'Admin', NULL, NULL, NULL, 'admin1@Class.com', NULL, '$2y$10$EMYpn0xI8Tc1/6x25AMY0uahiXkIypRk/C6OpVHmpVVYZqDq1HsJm', NULL, '2020-05-12 17:05:13', '2020-07-16 16:49:53', 1, NULL, '', 'public/photos/JdOwtE7ssvSj1uFywCEPN6IAVSEauX3VNZNzD9NC.png'),
(2, 1, 'Zakariae', NULL, 'Akkad', 'S654646465', 'user@ENSAH.com', NULL, '$2y$10$P7TeQeoueAzu0PIjStCLlOgGQqcSLGebh5bi0N7EwQJ4AlKrsNada', NULL, '2020-05-12 17:05:13', '2020-07-12 00:16:23', 0, NULL, 'R65546', 'public/photos/WRaTbfL8nfjMiPOyRUD4y8RLixiLQSt63Fnci5xN.png'),
(3, 1, 'Cherqi', NULL, 'Alae eddine', 'S139164966', 'cherqi.alae1@gmail.com', NULL, '$2y$10$WVLfFrMuLt/BPkfAplCb9ejmUCOBL2TrxrODpcKOLOrUT6qo0URvy', NULL, '2020-05-12 17:05:13', '2020-07-16 17:11:37', NULL, 1, 'R365225', 'public/photos/z15dQ4spqiD02rgO0U7QHuUmbS1WG1Qunzz4fEZ2.png'),
(4, 2, 'achhbar', NULL, 'hakim', 'S123321', 'RepCIVIL@gmail.com', NULL, '$2y$10$.uoTTuuqWXAts3PB699BUegVKrMN7.wMYPpad2JxVlEiNrZKEstXW', NULL, NULL, '2020-07-16 16:47:59', NULL, 0, NULL, NULL),
(5, 3, 'issam', NULL, 'achhbar', 'S13898985', 'RepEner@gmail.com', NULL, '$2y$10$4rRlMgpScctDZ1R.ZlUTUOQahd9gyJJhBr5twqDKBYUrg2NNbyMUy', NULL, NULL, '2020-07-11 16:30:10', NULL, 0, NULL, NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
