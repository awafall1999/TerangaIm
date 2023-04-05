-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : dim. 26 mars 2023 à 15:50
-- Version du serveur : 10.4.27-MariaDB
-- Version de PHP : 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `terangaimmo`
--

-- --------------------------------------------------------

--
-- Structure de la table `annonces`
--

CREATE TABLE `annonces` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titre` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `photo` varchar(255) NOT NULL,
  `adresse` varchar(255) NOT NULL,
  `video` varchar(255) NOT NULL,
  `montant` double DEFAULT NULL,
  `etat` int(11) NOT NULL DEFAULT 1,
  `booster` int(11) NOT NULL DEFAULT 0,
  `date_limite` datetime NOT NULL,
  `categorie_id` bigint(20) UNSIGNED NOT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `annonce_etat_annonces`
--

CREATE TABLE `annonce_etat_annonces` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `annonce_id` bigint(20) UNSIGNED NOT NULL,
  `etat_annonce_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(255) NOT NULL,
  `etat` int(11) NOT NULL DEFAULT 1,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom_complet` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `etat_annonces`
--

CREATE TABLE `etat_annonces` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `etat_annonces`
--

INSERT INTO `etat_annonces` (`id`, `nom`, `created_at`, `updated_at`) VALUES
(1, 'Publier', '2023-03-26 12:17:25', '2023-03-26 12:17:25'),
(2, 'Non publier', '2023-03-26 12:17:25', '2023-03-26 12:17:25'),
(3, 'Bloquer', '2023-03-26 12:17:25', '2023-03-26 12:17:25'),
(4, 'Désactiver', '2023-03-26 12:17:26', '2023-03-26 12:17:26');

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(61, '2013_03_19_145539_create_nationalites_table', 1),
(62, '2014_10_12_000000_create_users_table', 1),
(63, '2014_10_12_100000_create_password_resets_table', 1),
(64, '2019_08_19_000000_create_failed_jobs_table', 1),
(65, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(66, '2023_03_19_142021_create_categories_table', 1),
(67, '2023_03_19_143424_create_annonces_table', 1),
(68, '2023_03_19_144518_create_transactions_table', 1),
(69, '2023_03_19_145051_create_contacts_table', 1),
(70, '2023_03_19_145135_create_notes_table', 1),
(71, '2023_03_19_145206_create_roles_table', 1),
(72, '2023_03_19_145241_create_user_roles_table', 1),
(73, '2023_03_19_145309_create_etat_annonces_table', 1),
(74, '2023_03_19_145412_create_annonce_etat_annonces_table', 1),
(75, '2023_03_19_145457_create_sous_categories_table', 1);

-- --------------------------------------------------------

--
-- Structure de la table `nationalites`
--

CREATE TABLE `nationalites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `nationalites`
--

INSERT INTO `nationalites` (`id`, `nom`, `created_at`, `updated_at`) VALUES
(1, 'Afghane (Afghanistan)', '2023-03-26 12:17:26', '2023-03-26 12:17:26'),
(2, 'Albanaise (Albanie)', '2023-03-26 12:17:26', '2023-03-26 12:17:26'),
(3, 'Algérienne (Algérie)', '2023-03-26 12:17:26', '2023-03-26 12:17:26'),
(4, 'Allemande (Allemagne)', '2023-03-26 12:17:26', '2023-03-26 12:17:26'),
(5, 'Americaine (États-Unis)', '2023-03-26 12:17:26', '2023-03-26 12:17:26'),
(6, 'Andorrane (Andorre)', '2023-03-26 12:17:26', '2023-03-26 12:17:26'),
(7, 'Angolaise (Angola)', '2023-03-26 12:17:26', '2023-03-26 12:17:26'),
(8, 'Antiguaise-et-Barbudienne (Antigua-et-Barbuda)', '2023-03-26 12:17:26', '2023-03-26 12:17:26'),
(9, 'Argentine (Argentine)', '2023-03-26 12:17:26', '2023-03-26 12:17:26'),
(10, 'Armenienne (Arménie)', '2023-03-26 12:17:26', '2023-03-26 12:17:26'),
(11, 'Australienne (Australie)', '2023-03-26 12:17:26', '2023-03-26 12:17:26'),
(12, 'Autrichienne (Autriche)', '2023-03-26 12:17:27', '2023-03-26 12:17:27'),
(13, 'Azerbaïdjanaise (Azerbaïdjan)', '2023-03-26 12:17:27', '2023-03-26 12:17:27'),
(14, 'Bahamienne (Bahamas)', '2023-03-26 12:17:27', '2023-03-26 12:17:27'),
(15, 'Bahreinienne (Bahreïn)', '2023-03-26 12:17:27', '2023-03-26 12:17:27'),
(16, 'Bangladaise (Bangladesh)', '2023-03-26 12:17:27', '2023-03-26 12:17:27'),
(17, 'Barbadienne (Barbade)', '2023-03-26 12:17:27', '2023-03-26 12:17:27'),
(18, 'Belge (Belgique)', '2023-03-26 12:17:27', '2023-03-26 12:17:27'),
(19, 'Belizienne (Belize)', '2023-03-26 12:17:27', '2023-03-26 12:17:27'),
(20, 'Béninoise (Bénin)', '2023-03-26 12:17:27', '2023-03-26 12:17:27'),
(21, 'Bhoutanaise (Bhoutan)', '2023-03-26 12:17:27', '2023-03-26 12:17:27'),
(22, 'Biélorusse (Biélorussie)', '2023-03-26 12:17:28', '2023-03-26 12:17:28'),
(23, 'Birmane (Birmanie)', '2023-03-26 12:17:28', '2023-03-26 12:17:28'),
(24, 'Bissau-Guinéenne (Guinée-Bissau)', '2023-03-26 12:17:28', '2023-03-26 12:17:28'),
(25, 'Bolivienne (Bolivie)', '2023-03-26 12:17:28', '2023-03-26 12:17:28'),
(26, 'Bosnienne (Bosnie-Herzégovine)', '2023-03-26 12:17:28', '2023-03-26 12:17:28'),
(27, 'Botswanaise (Botswana)', '2023-03-26 12:17:28', '2023-03-26 12:17:28'),
(28, 'Brésilienne (Brésil)', '2023-03-26 12:17:28', '2023-03-26 12:17:28'),
(29, 'Britannique (Royaume-Uni)', '2023-03-26 12:17:28', '2023-03-26 12:17:28'),
(30, 'Brunéienne (Brunéi)', '2023-03-26 12:17:28', '2023-03-26 12:17:28'),
(31, 'Bulgare (Bulgarie)', '2023-03-26 12:17:28', '2023-03-26 12:17:28'),
(32, 'Burkinabée (Burkina)', '2023-03-26 12:17:28', '2023-03-26 12:17:28'),
(33, 'Burundaise (Burundi)', '2023-03-26 12:17:28', '2023-03-26 12:17:28'),
(34, 'Cambodgienne (Cambodge)', '2023-03-26 12:17:28', '2023-03-26 12:17:28'),
(35, 'Camerounaise (Cameroun)', '2023-03-26 12:17:29', '2023-03-26 12:17:29'),
(36, 'Canadienne (Canada)', '2023-03-26 12:17:29', '2023-03-26 12:17:29'),
(37, 'Cap-verdienne (Cap-Vert)', '2023-03-26 12:17:29', '2023-03-26 12:17:29'),
(38, 'Centrafricaine (Centrafrique)', '2023-03-26 12:17:29', '2023-03-26 12:17:29'),
(39, 'Chilienne (Chili)', '2023-03-26 12:17:29', '2023-03-26 12:17:29'),
(40, 'Chinoise (Chine)', '2023-03-26 12:17:29', '2023-03-26 12:17:29'),
(41, 'Chypriote (Chypre)', '2023-03-26 12:17:29', '2023-03-26 12:17:29'),
(42, 'Colombienne (Colombie)', '2023-03-26 12:17:29', '2023-03-26 12:17:29'),
(43, 'Comorienne (Comores)', '2023-03-26 12:17:30', '2023-03-26 12:17:30'),
(44, 'Congolaise (Congo-Brazzaville)', '2023-03-26 12:17:30', '2023-03-26 12:17:30'),
(45, 'Congolaise (Congo-Kinshasa)', '2023-03-26 12:17:30', '2023-03-26 12:17:30'),
(46, 'Cookienne (Îles Cook)', '2023-03-26 12:17:30', '2023-03-26 12:17:30'),
(47, 'Costaricaine (Costa Rica)', '2023-03-26 12:17:30', '2023-03-26 12:17:30'),
(48, 'Croate (Croatie)', '2023-03-26 12:17:30', '2023-03-26 12:17:30'),
(49, 'Cubaine (Cuba)', '2023-03-26 12:17:30', '2023-03-26 12:17:30'),
(50, 'Danoise (Danemark)', '2023-03-26 12:17:30', '2023-03-26 12:17:30'),
(51, 'Djiboutienne (Djibouti)', '2023-03-26 12:17:30', '2023-03-26 12:17:30'),
(52, 'Dominicaine (République dominicaine)', '2023-03-26 12:17:30', '2023-03-26 12:17:30'),
(53, 'Dominiquaise (Dominique)', '2023-03-26 12:17:30', '2023-03-26 12:17:30'),
(54, 'Égyptienne (Égypte)', '2023-03-26 12:17:30', '2023-03-26 12:17:30'),
(55, 'Émirienne (Émirats arabes unis)', '2023-03-26 12:17:30', '2023-03-26 12:17:30'),
(56, 'Équato-guineenne (Guinée équatoriale)', '2023-03-26 12:17:30', '2023-03-26 12:17:30'),
(57, 'Équatorienne (Équateur)', '2023-03-26 12:17:30', '2023-03-26 12:17:30'),
(58, 'Érythréenne (Érythrée)', '2023-03-26 12:17:31', '2023-03-26 12:17:31'),
(59, 'Espagnole (Espagne)', '2023-03-26 12:17:31', '2023-03-26 12:17:31'),
(60, 'Est-timoraise (Timor-Leste)', '2023-03-26 12:17:31', '2023-03-26 12:17:31'),
(61, 'Estonienne (Estonie)', '2023-03-26 12:17:31', '2023-03-26 12:17:31'),
(62, 'Éthiopienne (Éthiopie)', '2023-03-26 12:17:31', '2023-03-26 12:17:31'),
(63, 'Fidjienne (Fidji)', '2023-03-26 12:17:31', '2023-03-26 12:17:31'),
(64, 'Finlandaise (Finlande)', '2023-03-26 12:17:31', '2023-03-26 12:17:31'),
(65, 'Française (France)', '2023-03-26 12:17:31', '2023-03-26 12:17:31'),
(66, 'Gabonaise (Gabon)', '2023-03-26 12:17:31', '2023-03-26 12:17:31'),
(67, 'Gambienne (Gambie)', '2023-03-26 12:17:31', '2023-03-26 12:17:31'),
(68, 'Georgienne (Géorgie)', '2023-03-26 12:17:31', '2023-03-26 12:17:31'),
(69, 'Ghanéenne (Ghana)', '2023-03-26 12:17:31', '2023-03-26 12:17:31'),
(70, 'Grenadienne (Grenade)', '2023-03-26 12:17:31', '2023-03-26 12:17:31'),
(71, 'Guatémaltèque (Guatemala)', '2023-03-26 12:17:31', '2023-03-26 12:17:31'),
(72, 'Guinéenne (Guinée)', '2023-03-26 12:17:31', '2023-03-26 12:17:31'),
(73, 'Guyanienne (Guyana)', '2023-03-26 12:17:31', '2023-03-26 12:17:31'),
(74, 'Haïtienne (Haïti)', '2023-03-26 12:17:31', '2023-03-26 12:17:31'),
(75, 'Hellénique (Grèce)', '2023-03-26 12:17:32', '2023-03-26 12:17:32'),
(76, 'Hondurienne (Honduras)', '2023-03-26 12:17:32', '2023-03-26 12:17:32'),
(77, 'Hongroise (Hongrie)', '2023-03-26 12:17:32', '2023-03-26 12:17:32'),
(78, 'Indienne (Inde)', '2023-03-26 12:17:32', '2023-03-26 12:17:32'),
(79, 'Indonésienne (Indonésie)', '2023-03-26 12:17:32', '2023-03-26 12:17:32'),
(80, 'Irakienne (Iraq)', '2023-03-26 12:17:32', '2023-03-26 12:17:32'),
(81, 'Iranienne (Iran)', '2023-03-26 12:17:32', '2023-03-26 12:17:32'),
(82, 'Irlandaise (Irlande)', '2023-03-26 12:17:32', '2023-03-26 12:17:32'),
(83, 'Islandaise (Islande)', '2023-03-26 12:17:32', '2023-03-26 12:17:32'),
(84, 'Israélienne (Israël)', '2023-03-26 12:17:32', '2023-03-26 12:17:32'),
(85, 'Italienne (Italie)', '2023-03-26 12:17:32', '2023-03-26 12:17:32'),
(86, 'Ivoirienne (Côte d\'Ivoire)', '2023-03-26 12:17:32', '2023-03-26 12:17:32'),
(87, 'Jamaïcaine (Jamaïque)', '2023-03-26 12:17:32', '2023-03-26 12:17:32'),
(88, 'Japonaise (Japon)', '2023-03-26 12:17:32', '2023-03-26 12:17:32'),
(89, 'Jordanienne (Jordanie)', '2023-03-26 12:17:32', '2023-03-26 12:17:32'),
(90, 'Kazakhstanaise (Kazakhstan)', '2023-03-26 12:17:32', '2023-03-26 12:17:32'),
(91, 'Kenyane (Kenya)', '2023-03-26 12:17:32', '2023-03-26 12:17:32'),
(92, 'Kirghize (Kirghizistan)', '2023-03-26 12:17:32', '2023-03-26 12:17:32'),
(93, 'Kiribatienne (Kiribati)', '2023-03-26 12:17:32', '2023-03-26 12:17:32'),
(94, 'Kittitienne et Névicienne (Saint-Christophe-et-Niévès)', '2023-03-26 12:17:32', '2023-03-26 12:17:32'),
(95, 'Koweïtienne (Koweït)', '2023-03-26 12:17:32', '2023-03-26 12:17:32'),
(96, 'Laotienne (Laos)', '2023-03-26 12:17:32', '2023-03-26 12:17:32'),
(97, 'Lesothane (Lesotho)', '2023-03-26 12:17:33', '2023-03-26 12:17:33'),
(98, 'Lettone (Lettonie)', '2023-03-26 12:17:33', '2023-03-26 12:17:33'),
(99, 'Libanaise (Liban)', '2023-03-26 12:17:33', '2023-03-26 12:17:33'),
(100, 'Libérienne (Libéria)', '2023-03-26 12:17:33', '2023-03-26 12:17:33'),
(101, 'Libyenne (Libye)', '2023-03-26 12:17:33', '2023-03-26 12:17:33'),
(102, 'Liechtensteinoise (Liechtenstein)', '2023-03-26 12:17:33', '2023-03-26 12:17:33'),
(103, 'Lituanienne (Lituanie)', '2023-03-26 12:17:33', '2023-03-26 12:17:33'),
(104, 'Luxembourgeoise (Luxembourg)', '2023-03-26 12:17:33', '2023-03-26 12:17:33'),
(105, 'Macédonienne (Macédoine)', '2023-03-26 12:17:33', '2023-03-26 12:17:33'),
(106, 'Malaisienne (Malaisie)', '2023-03-26 12:17:33', '2023-03-26 12:17:33'),
(107, 'Malawienne (Malawi)', '2023-03-26 12:17:33', '2023-03-26 12:17:33'),
(108, 'Maldivienne (Maldives)', '2023-03-26 12:17:33', '2023-03-26 12:17:33'),
(109, 'Malgache (Madagascar)', '2023-03-26 12:17:33', '2023-03-26 12:17:33'),
(110, 'Maliennes (Mali)', '2023-03-26 12:17:33', '2023-03-26 12:17:33'),
(111, 'Maltaise (Malte)', '2023-03-26 12:17:33', '2023-03-26 12:17:33'),
(112, 'Marocaine (Maroc)', '2023-03-26 12:17:33', '2023-03-26 12:17:33'),
(113, 'Marshallaise (Îles Marshall)', '2023-03-26 12:17:33', '2023-03-26 12:17:33'),
(114, 'Mauricienne (Maurice)', '2023-03-26 12:17:34', '2023-03-26 12:17:34'),
(115, 'Mauritanienne (Mauritanie)', '2023-03-26 12:17:34', '2023-03-26 12:17:34'),
(116, 'Mexicaine (Mexique)', '2023-03-26 12:17:34', '2023-03-26 12:17:34'),
(117, 'Micronésienne (Micronésie)', '2023-03-26 12:17:34', '2023-03-26 12:17:34'),
(118, 'Moldave (Moldovie)', '2023-03-26 12:17:34', '2023-03-26 12:17:34'),
(119, 'Monegasque (Monaco)', '2023-03-26 12:17:34', '2023-03-26 12:17:34'),
(120, 'Mongole (Mongolie)', '2023-03-26 12:17:34', '2023-03-26 12:17:34'),
(121, 'Monténégrine (Monténégro)', '2023-03-26 12:17:34', '2023-03-26 12:17:34'),
(122, 'Mozambicaine (Mozambique)', '2023-03-26 12:17:34', '2023-03-26 12:17:34'),
(123, 'Namibienne (Namibie)', '2023-03-26 12:17:34', '2023-03-26 12:17:34'),
(124, 'Nauruane (Nauru)', '2023-03-26 12:17:34', '2023-03-26 12:17:34'),
(125, 'Néerlandaise (Pays-Bas)', '2023-03-26 12:17:35', '2023-03-26 12:17:35'),
(126, 'Néo-Zélandaise (Nouvelle-Zélande)', '2023-03-26 12:17:35', '2023-03-26 12:17:35'),
(127, 'Népalaise (Népal)', '2023-03-26 12:17:35', '2023-03-26 12:17:35'),
(128, 'Nicaraguayenne (Nicaragua)', '2023-03-26 12:17:35', '2023-03-26 12:17:35'),
(129, 'Nigériane (Nigéria)', '2023-03-26 12:17:35', '2023-03-26 12:17:35'),
(130, 'Nigérienne (Niger)', '2023-03-26 12:17:35', '2023-03-26 12:17:35'),
(131, 'Niuéenne (Niue)', '2023-03-26 12:17:35', '2023-03-26 12:17:35'),
(132, 'Nord-coréenne (Corée du Nord)', '2023-03-26 12:17:35', '2023-03-26 12:17:35'),
(133, 'Norvégienne (Norvège)', '2023-03-26 12:17:35', '2023-03-26 12:17:35'),
(134, 'Omanaise (Oman)', '2023-03-26 12:17:35', '2023-03-26 12:17:35'),
(135, 'Ougandaise (Ouganda)', '2023-03-26 12:17:35', '2023-03-26 12:17:35'),
(136, 'Ouzbéke (Ouzbékistan)', '2023-03-26 12:17:35', '2023-03-26 12:17:35'),
(137, 'Pakistanaise (Pakistan)', '2023-03-26 12:17:35', '2023-03-26 12:17:35'),
(138, 'Palaosienne (Palaos)', '2023-03-26 12:17:35', '2023-03-26 12:17:35'),
(139, 'Palestinienne (Palestine)', '2023-03-26 12:17:35', '2023-03-26 12:17:35'),
(140, 'Panaméenne (Panama)', '2023-03-26 12:17:35', '2023-03-26 12:17:35'),
(141, 'Papouane-Néo-Guinéenne (Papouasie-Nouvelle-Guinée)', '2023-03-26 12:17:35', '2023-03-26 12:17:35'),
(142, 'Paraguayenne (Paraguay)', '2023-03-26 12:17:36', '2023-03-26 12:17:36'),
(143, 'Péruvienne (Pérou)', '2023-03-26 12:17:36', '2023-03-26 12:17:36'),
(144, 'Philippine (Philippines)', '2023-03-26 12:17:36', '2023-03-26 12:17:36'),
(145, 'Polonaise (Pologne)', '2023-03-26 12:17:36', '2023-03-26 12:17:36'),
(146, 'Portugaise (Portugal)', '2023-03-26 12:17:36', '2023-03-26 12:17:36'),
(147, 'Qatarienne (Qatar)', '2023-03-26 12:17:36', '2023-03-26 12:17:36'),
(148, 'Roumaine (Roumanie)', '2023-03-26 12:17:36', '2023-03-26 12:17:36'),
(149, 'Russe (Russie)', '2023-03-26 12:17:36', '2023-03-26 12:17:36'),
(150, 'Rwandaise (Rwanda)', '2023-03-26 12:17:36', '2023-03-26 12:17:36'),
(151, 'Saint-Lucienne (Sainte-Lucie)', '2023-03-26 12:17:36', '2023-03-26 12:17:36'),
(152, 'Saint-Marinaise (Saint-Marin)', '2023-03-26 12:17:36', '2023-03-26 12:17:36'),
(153, 'Saint-Vincentaise et Grenadine (Saint-Vincent-et-les Grenadines)', '2023-03-26 12:17:36', '2023-03-26 12:17:36'),
(154, 'Salomonaise (Îles Salomon)', '2023-03-26 12:17:36', '2023-03-26 12:17:36'),
(155, 'Salvadorienne (Salvador)', '2023-03-26 12:17:36', '2023-03-26 12:17:36'),
(156, 'Samoane (Samoa)', '2023-03-26 12:17:37', '2023-03-26 12:17:37'),
(157, 'Santoméenne (Sao Tomé-et-Principe)', '2023-03-26 12:17:37', '2023-03-26 12:17:37'),
(158, 'Saoudienne (Arabie saoudite)', '2023-03-26 12:17:37', '2023-03-26 12:17:37'),
(159, 'Sénégalaise (Sénégal)', '2023-03-26 12:17:37', '2023-03-26 12:17:37'),
(160, 'Serbe (Serbie)', '2023-03-26 12:17:37', '2023-03-26 12:17:37'),
(161, 'Seychelloise (Seychelles)', '2023-03-26 12:17:37', '2023-03-26 12:17:37'),
(162, 'Sierra-Léonaise (Sierra Leone)', '2023-03-26 12:17:37', '2023-03-26 12:17:37'),
(163, 'Singapourienne (Singapour)', '2023-03-26 12:17:37', '2023-03-26 12:17:37'),
(164, 'Slovaque (Slovaquie)', '2023-03-26 12:17:37', '2023-03-26 12:17:37'),
(165, 'Slovène (Slovénie)', '2023-03-26 12:17:37', '2023-03-26 12:17:37'),
(166, 'Somalienne (Somalie)', '2023-03-26 12:17:37', '2023-03-26 12:17:37'),
(167, 'Soudanaise (Soudan)', '2023-03-26 12:17:37', '2023-03-26 12:17:37'),
(168, 'Sri-Lankaise (Sri Lanka)', '2023-03-26 12:17:37', '2023-03-26 12:17:37'),
(169, 'Sud-Africaine (Afrique du Sud)', '2023-03-26 12:17:37', '2023-03-26 12:17:37'),
(170, 'Sud-Coréenne (Corée du Sud)', '2023-03-26 12:17:38', '2023-03-26 12:17:38'),
(171, 'Sud-Soudanaise (Soudan du Sud)', '2023-03-26 12:17:38', '2023-03-26 12:17:38'),
(172, 'Suédoise (Suède)', '2023-03-26 12:17:38', '2023-03-26 12:17:38'),
(173, 'Suisse (Suisse)', '2023-03-26 12:17:38', '2023-03-26 12:17:38'),
(174, 'Surinamaise (Suriname)', '2023-03-26 12:17:38', '2023-03-26 12:17:38'),
(175, 'Swazie (Swaziland)', '2023-03-26 12:17:38', '2023-03-26 12:17:38'),
(176, 'Syrienne (Syrie)', '2023-03-26 12:17:38', '2023-03-26 12:17:38'),
(177, 'Tadjike (Tadjikistan)', '2023-03-26 12:17:38', '2023-03-26 12:17:38'),
(178, 'Tanzanienne (Tanzanie)', '2023-03-26 12:17:38', '2023-03-26 12:17:38'),
(179, 'Tchadienne (Tchad)', '2023-03-26 12:17:38', '2023-03-26 12:17:38'),
(180, 'Tchèque (Tchéquie)', '2023-03-26 12:17:38', '2023-03-26 12:17:38'),
(181, 'Thaïlandaise (Thaïlande)', '2023-03-26 12:17:38', '2023-03-26 12:17:38'),
(182, 'Togolaise (Togo)', '2023-03-26 12:17:38', '2023-03-26 12:17:38'),
(183, 'Tonguienne (Tonga)', '2023-03-26 12:17:38', '2023-03-26 12:17:38'),
(184, 'Trinidadienne (Trinité-et-Tobago)', '2023-03-26 12:17:38', '2023-03-26 12:17:38'),
(185, 'Tunisienne (Tunisie)', '2023-03-26 12:17:38', '2023-03-26 12:17:38'),
(186, 'Turkmène (Turkménistan)', '2023-03-26 12:17:38', '2023-03-26 12:17:38'),
(187, 'Turque (Turquie)', '2023-03-26 12:17:38', '2023-03-26 12:17:38'),
(188, 'Tuvaluane (Tuvalu)', '2023-03-26 12:17:38', '2023-03-26 12:17:38'),
(189, 'Ukrainienne (Ukraine)', '2023-03-26 12:17:39', '2023-03-26 12:17:39'),
(190, 'Uruguayenne (Uruguay)', '2023-03-26 12:17:39', '2023-03-26 12:17:39'),
(191, 'Vanuatuane (Vanuatu)', '2023-03-26 12:17:39', '2023-03-26 12:17:39'),
(192, 'Vaticane (Vatican)', '2023-03-26 12:17:39', '2023-03-26 12:17:39'),
(193, 'Vénézuélienne (Venezuela)', '2023-03-26 12:17:39', '2023-03-26 12:17:39'),
(194, 'Vietnamienne (Viêt Nam)', '2023-03-26 12:17:39', '2023-03-26 12:17:39'),
(195, 'Yéménite (Yémen)', '2023-03-26 12:17:39', '2023-03-26 12:17:39'),
(196, 'Zambienne (Zambie)', '2023-03-26 12:17:39', '2023-03-26 12:17:39'),
(197, 'Zimbabwéenne (Zimbabwe)', '2023-03-26 12:17:39', '2023-03-26 12:17:39');

-- --------------------------------------------------------

--
-- Structure de la table `notes`
--

CREATE TABLE `notes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `note` int(11) NOT NULL,
  `commentaire` varchar(255) NOT NULL,
  `annonce_id` bigint(20) UNSIGNED NOT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `roles`
--

INSERT INTO `roles` (`id`, `nom`, `created_at`, `updated_at`) VALUES
(1, 'SUPER ADMIN', '2023-03-26 12:17:25', '2023-03-26 12:17:25'),
(2, 'ADMIN', '2023-03-26 12:17:25', '2023-03-26 12:17:25'),
(3, 'CLIENT', '2023-03-26 12:17:25', '2023-03-26 12:17:25');

-- --------------------------------------------------------

--
-- Structure de la table `sous_categories`
--

CREATE TABLE `sous_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(255) NOT NULL,
  `categorie_id` bigint(20) UNSIGNED NOT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transactionid` varchar(255) NOT NULL,
  `montant` double NOT NULL,
  `annonce_id` bigint(20) UNSIGNED NOT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `prenom` varchar(255) DEFAULT NULL,
  `adresse` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fixe` varchar(255) DEFAULT NULL,
  `cni` varchar(255) DEFAULT NULL,
  `ville` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `ninea` varchar(255) DEFAULT NULL,
  `etat` int(11) NOT NULL DEFAULT 1,
  `dateNaissance` varchar(255) DEFAULT NULL,
  `nationalite_id` bigint(20) UNSIGNED DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `prenom`, `adresse`, `email`, `telephone`, `fixe`, `cni`, `ville`, `photo`, `ninea`, `etat`, `dateNaissance`, `nationalite_id`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Test', NULL, NULL, 'test@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '$2y$10$hBxPloyGky/Mnj7gl99zrucORM0dlgetGwjqU/ldwUf6VPiIYnUlu', NULL, '2023-03-26 12:16:49', '2023-03-26 12:16:49');

-- --------------------------------------------------------

--
-- Structure de la table `user_roles`
--

CREATE TABLE `user_roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `annonces`
--
ALTER TABLE `annonces`
  ADD PRIMARY KEY (`id`),
  ADD KEY `annonces_categorie_id_foreign` (`categorie_id`),
  ADD KEY `annonces_created_by_foreign` (`created_by`),
  ADD KEY `annonces_updated_by_foreign` (`updated_by`);

--
-- Index pour la table `annonce_etat_annonces`
--
ALTER TABLE `annonce_etat_annonces`
  ADD PRIMARY KEY (`id`),
  ADD KEY `annonce_etat_annonces_annonce_id_foreign` (`annonce_id`),
  ADD KEY `annonce_etat_annonces_etat_annonce_id_foreign` (`etat_annonce_id`),
  ADD KEY `annonce_etat_annonces_created_by_foreign` (`created_by`),
  ADD KEY `annonce_etat_annonces_updated_by_foreign` (`updated_by`);

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_created_by_foreign` (`created_by`),
  ADD KEY `categories_updated_by_foreign` (`updated_by`);

--
-- Index pour la table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contacts_created_by_foreign` (`created_by`),
  ADD KEY `contacts_updated_by_foreign` (`updated_by`);

--
-- Index pour la table `etat_annonces`
--
ALTER TABLE `etat_annonces`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `nationalites`
--
ALTER TABLE `nationalites`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notes_annonce_id_foreign` (`annonce_id`),
  ADD KEY `notes_created_by_foreign` (`created_by`),
  ADD KEY `notes_updated_by_foreign` (`updated_by`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `sous_categories`
--
ALTER TABLE `sous_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sous_categories_categorie_id_foreign` (`categorie_id`),
  ADD KEY `sous_categories_created_by_foreign` (`created_by`),
  ADD KEY `sous_categories_updated_by_foreign` (`updated_by`);

--
-- Index pour la table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_annonce_id_foreign` (`annonce_id`),
  ADD KEY `transactions_created_by_foreign` (`created_by`),
  ADD KEY `transactions_updated_by_foreign` (`updated_by`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_nationalite_id_foreign` (`nationalite_id`);

--
-- Index pour la table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_roles_user_id_foreign` (`user_id`),
  ADD KEY `user_roles_role_id_foreign` (`role_id`),
  ADD KEY `user_roles_created_by_foreign` (`created_by`),
  ADD KEY `user_roles_updated_by_foreign` (`updated_by`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `annonces`
--
ALTER TABLE `annonces`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `annonce_etat_annonces`
--
ALTER TABLE `annonce_etat_annonces`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `etat_annonces`
--
ALTER TABLE `etat_annonces`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT pour la table `nationalites`
--
ALTER TABLE `nationalites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=198;

--
-- AUTO_INCREMENT pour la table `notes`
--
ALTER TABLE `notes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `sous_categories`
--
ALTER TABLE `sous_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `annonces`
--
ALTER TABLE `annonces`
  ADD CONSTRAINT `annonces_categorie_id_foreign` FOREIGN KEY (`categorie_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `annonces_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `annonces_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `annonce_etat_annonces`
--
ALTER TABLE `annonce_etat_annonces`
  ADD CONSTRAINT `annonce_etat_annonces_annonce_id_foreign` FOREIGN KEY (`annonce_id`) REFERENCES `annonces` (`id`),
  ADD CONSTRAINT `annonce_etat_annonces_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `annonce_etat_annonces_etat_annonce_id_foreign` FOREIGN KEY (`etat_annonce_id`) REFERENCES `etat_annonces` (`id`),
  ADD CONSTRAINT `annonce_etat_annonces_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `categories_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `contacts`
--
ALTER TABLE `contacts`
  ADD CONSTRAINT `contacts_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `contacts_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `notes`
--
ALTER TABLE `notes`
  ADD CONSTRAINT `notes_annonce_id_foreign` FOREIGN KEY (`annonce_id`) REFERENCES `annonces` (`id`),
  ADD CONSTRAINT `notes_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `notes_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `sous_categories`
--
ALTER TABLE `sous_categories`
  ADD CONSTRAINT `sous_categories_categorie_id_foreign` FOREIGN KEY (`categorie_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `sous_categories_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `sous_categories_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_annonce_id_foreign` FOREIGN KEY (`annonce_id`) REFERENCES `annonces` (`id`),
  ADD CONSTRAINT `transactions_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `transactions_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_nationalite_id_foreign` FOREIGN KEY (`nationalite_id`) REFERENCES `nationalites` (`id`);

--
-- Contraintes pour la table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `user_roles_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
