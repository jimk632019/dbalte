-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Φιλοξενητής: 127.0.0.1:3306
-- Χρόνος δημιουργίας: 22 Απρ 2020 στις 11:15:34
-- Έκδοση διακομιστή: 5.7.23
-- Έκδοση PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Βάση δεδομένων: `dbaworks`
--
CREATE DATABASE IF NOT EXISTS `dbaworks` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `dbaworks`;

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `buildings`
--

DROP TABLE IF EXISTS `buildings`;
CREATE TABLE IF NOT EXISTS `buildings` (
  `bi_id` int(11) NOT NULL AUTO_INCREMENT,
  `bi_map` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `bi_address` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`bi_id`)
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Άδειασμα δεδομένων του πίνακα `buildings`
--

INSERT INTO `buildings` (`bi_id`, `bi_map`, `bi_address`) VALUES
(1, '', ''),
(2, 'https://goo.gl/maps/w7hkrwQTfTo', 'ΡΟΔΟΥ 181, ΣΕΠΟΛΙΑ, 104 43'),
(3, 'https://goo.gl/maps/zUAyQWiauyQ2', 'ΣΑΜΟΥ 95, ΑΘΗΝΑ, 104 40'),
(4, 'https://goo.gl/maps/9RS44jCUZ352', 'ΔΙΔΥΜΟΥ 21, ΑΘΗΝΑ, 104 40'),
(5, 'https://goo.gl/maps/WgbtrrQSJvq', 'ΔΟΜΟΚΟΥ 2, ΣΤΑΘΜΟΣ ΛΑΡΙΣΗΣ, 104 40'),
(19, 'https://goo.gl/maps/PQRBwj6fXF92', 'ΘΕΜΙΣΤΟΚΛΕΟΥΣ 71, ΕΞΑΡΧΕΙΑ, 106 83'),
(20, 'https://goo.gl/maps/38sTwCz1hUS2', 'ΛΥΣΙΟΥ 3, ΠΛΑΚΑ, 105 56'),
(21, 'https://goo.gl/maps/23CCxMU7V9q', 'ΜΑΥΡΟΜΙΧΑΛΗ 63, ΝΕΑΠΟΛΗ, 106 80'),
(22, 'https://goo.gl/maps/sv2Q858y1Dy', 'ΜΙΧΑΗΛ ΒΟΔΑ 30, ΠΛ.ΒΑΘΗ, 104 39'),
(23, 'https://goo.gl/maps/R9bh2BaqJ772', 'ΝΟΤΑΡΑ 34 & ΔΕΛΗΓΙΑΝΝΗ, ΕΞΑΡΧΕΙΑ, 106 83'),
(24, 'https://goo.gl/maps/76P8fTb8iG42', 'ΠΕΙΡΑΙΩΣ 51, ΠΛ.ΚΟΥΜΟΥΝΔΟΥΡΟΥ, 105 53'),
(25, 'https://goo.gl/maps/df3ivWjL3sj', 'ΤΣΑΜΗ ΚΑΡΑΤΑΣΟΥ 64, ΚΟΥΚΑΚΙ, 117 41'),
(26, 'https://goo.gl/maps/fjTFoMW83yp', 'ΦΑΒΙΕΡΟΥ 17Α, ΠΛ. ΒΑΘΗ, 104 38'),
(27, 'https://goo.gl/maps/qx9qpVQssi12', 'ΑΝΑΞΑΡΧΟΥ 6, ΑΓ. ΑΡΤΕΜΙΟΣ ΓΟΥΒΑΣ, 116 31'),
(28, 'https://goo.gl/maps/2seC3UvaEJs', 'ΒΑΘΥΚΛΕΟΥΣ 17, ΑΓΙΟΣ ΑΡΤΕΜΙΟΣ, 116 31'),
(29, 'https://goo.gl/maps/aytzknCohX62', 'ΒΙΝΚΕΛΜΑΝ 4, ΑΓ. ΑΡΤΕΜΙΟΣ ΓΟΥΒΑΣ, 116 32'),
(30, 'https://goo.gl/maps/uHiZzUZwugN2', 'ΛΑΓΟΥΜΙΤΖΗ & ΘΥΜΟΧΑΡΟΥΣ, ΝΕΟΣ ΚΟΣΜΟΣ, 117 45'),
(31, 'https://goo.gl/maps/ANagYy3JSPU2', 'ΕΡΓΟΤΙΜΟΥ 22 & ΙΟΦΩΝΤΟΣ 3, ΠΑΓΚΡΑΤΙ, 116 34'),
(32, 'https://goo.gl/maps/KzGFzNqYgEn', 'ΠΡΩΤΑΓΟΡΟΥ 1 & ΑΡΑΤΟΥ, ΠΑΓΚΡΑΤΙ-ΣΤΑΔΙΟ, 116 35'),
(33, 'https://goo.gl/maps/RPsDTXzvDE72', 'ΠΥΘΕΟΥ & ΑΓΚΥΛΗΣ 30, ΚΥΝΟΣΑΡΓΟΥΣ, 117 43'),
(34, 'https://goo.gl/maps/kzJpPhZRStC2', 'ΚΡΙΝΑΓΟΡΟΥ 9, ΝΕΟΣ  ΚΟΣΜΟΣ, 117 45'),
(35, 'https://goo.gl/maps/fW7yvAGoREP2', 'ΚΡΙΝΑΓΟΡΟΥ 11, ΝΕΟΣ ΚΟΣΜΟΣ, 117 45'),
(36, 'https://goo.gl/maps/YWn8Ywar8hm', 'ΚΡΙΝΑΓΟΡΟΥ 13, ΝΕΟΣ  ΚΟΣΜΟΣ, 117 45'),
(37, 'https://goo.gl/maps/HL2qBbWjVxK2', 'ΝΙΚΟΣΘΕΝΟΥΣ 40, ΠΑΓΚΡΑΤΙ, 116 35'),
(38, 'https://goo.gl/maps/uRPi7bAhKXv', 'ΑΘΗΝΟΔΩΡΟΥ 61, Κ. ΠΕΤΡΑΛΩΝΑ, 118 53'),
(39, 'https://goo.gl/maps/Xm22me5owsk', 'ΑΛΟΠΗΣ 40, Κ. ΠΕΤΡΑΛΩΝΑ, 118 53'),
(40, 'https://goo.gl/maps/HM7AoEbW6L32', 'ΚΥΚΛΩΠΩΝ 9, Α. ΠΕΤΡΑΛΩΝΑ, 118 52'),
(41, 'https://goo.gl/maps/pKp8t9qqADz', 'ΠΕΡΣΕΩΣ 2 & ΣΥΜΜΑΧΙΔΩΝ, Κ. ΠΕΤΡΑΛΩΝΑ, 118 54'),
(42, 'https://goo.gl/maps/CQiW1CNtGbs', 'ΣΠΥΡΟΥ ΠΑΤΣΗ 56, ΒΟΤΑΝΙΚΟΣ, 118 55'),
(43, 'https://goo.gl/maps/KJZSSgU2HLA2', 'ΤΡΩΩΝ 45, Α. ΠΕΤΡΑΛΩΝΑ, 118 51'),
(44, 'https://goo.gl/maps/MzKGPtKy9Y22', 'ΘΕΡΜΟΠΥΛΩΝ ΚΑΙ ΛΕΩΝΙΔΟΥ, ΑΘΗΝΑ, 104 35'),
(45, 'https://goo.gl/maps/9boCPb23bwM2', 'ΣΙΩΚΟΥ 13 & ΑΥΛΩΝΟΣ, ΣΕΠΟΛΙΑ, 104 43'),
(46, 'https://goo.gl/maps/RyQqUDHWT3M2', 'ΓΕΡΑΚΗ 28, ΚΑΤΩ ΠΑΤΗΣΙΑ, 104 45'),
(47, 'https://goo.gl/maps/6Yvx28TRSoK2', 'ΕΠΙΔΑΥΡΟΥ 21, ΚΟΛΩΝΟΣ, 104 44'),
(48, 'https://goo.gl/maps/vk55bScJ7zs', 'ΕΠΙΔΑΥΡΟΥ 69, ΚΟΛΩΝΟΣ, 104 44'),
(49, 'https://goo.gl/maps/4MN4HMvtMg22', 'ΕΥΑΛΚΙΔΟΥ 55, ΛΟΦΟΣ ΣΚΟΥΖΕ, 104 44'),
(50, 'https://goo.gl/maps/gxLw4aboyX62', 'ΕΥΑΛΚΙΔΟΥ 53, ΛΟΦΟΣ ΣΚΟΥΖΕ, 104 44'),
(51, 'https://goo.gl/maps/GRtni1dGfiS2', 'ΙΩΑΝΝΙΝΩΝ 81, ΛΟΦΟΣ ΣΚΟΥΖΕ, 104 44'),
(52, 'https://goo.gl/maps/vU1z6xV2MVC2', 'ΛΕΑΝΔΡΟΥ & ΙΦΙΓΕΝΕΙΑΣ 54, ΚΟΛΟΚΥΝΘΟΥ, 104 43'),
(53, 'https://goo.gl/maps/6H6b4ngjNst', 'ΜΑΝΟΥΣΟΓΙΑΝΝΗ 3, ΘΥΜΑΡΑΚΙΑ, 104 45'),
(54, 'https://goo.gl/maps/Ah8SWxrnZWw', 'ΜΕΤΡΩΝ 22 & ΤΜΩΛΟΥ, ΣΕΠΟΛΙΑ, 104 43'),
(55, 'https://goo.gl/maps/CTa5CxgoynN2', 'ΜΙΧΑΗΛ ΚΟΡΑΚΑ 11, ΑΧΑΡΝΩΝ-ΘΥΜΑΡΑΚΙΑ, 104 45'),
(56, 'https://goo.gl/maps/zmdWdMVwKgv', 'ΜΟΝΑΣΤΗΡΙΟΥ & ΠΑΛΑΜΗΔΙΟΥ, ΑΚ. ΠΛΑΤΩΝΟΣ, 104 41'),
(57, 'https://goo.gl/maps/UoULKU3fVzn', 'ΠΥΡΛΑ 21, ΚΑΤΩ ΠΑΤΗΣΙΑ, 111 45'),
(58, 'https://goo.gl/maps/a6RePaufGrP2', 'ΣΜΟΛΙΚΑ 23-25, ΣΕΠΟΛΙΑ, 104 43'),
(59, 'https://goo.gl/maps/ZS89M25o9D82', 'ΤΙΜΑΙΟΥ 2 & ΠΑΛΑΜΗΔΙΟΥ, ΑΚ. ΠΛΑΤΩΝΟΣ, 104 41'),
(60, 'https://goo.gl/maps/NLVJ22GEHzN2', 'ΜΑΛΑΚΑΣΗ 7, ΑΓ.ΕΛΕΥΘΕΡΙΟΣ, 111 43'),
(61, 'https://goo.gl/maps/4TKTGsZZcAG2', 'ΑΓΙΑΣ ΛΑΥΡΑΣ & ΡΟΣΤΑΝ 32, ΑΝΩ ΠΑΤΗΣΙΑ, 111 41'),
(62, 'https://goo.gl/maps/a2fnyFgv9bx', 'ΑΜΑΣΙΟΥ 19, ΡΙΖΟΥΠΟΛΗ-ΠΡΟΜΠΟΝΑΣ, 111 43'),
(63, 'https://goo.gl/maps/k2xUNomPiYB2', 'ΑΜΑΣΙΟΥ 21, ΡΙΖΟΥΠΟΛΗ-ΠΡΟΜΠΟΝΑΣ, 111 43'),
(64, 'https://goo.gl/maps/DYBdYxYNuZA2', 'ΑΞΙΟΥΠΟΛΕΩΣ 33, ΡΙΖΟΥΠΟΛΗ, 111 42'),
(65, 'https://goo.gl/maps/9YSW211mAr42', 'ΔΗΜΗΤΡΙΟΥ ΡΑΛΛΗ 8, ΚΑΤΩ ΠΑΤΗΣΙΑ, 111 44'),
(66, 'https://goo.gl/maps/KCYJXayQovt', 'ΕΡΜΙΠΠΟΥ 11, ΠΡΟΜΠΟΝΑΣ, 111 43'),
(67, 'https://goo.gl/maps/xdW9JYRVWFB2', 'ΗΡΑΚΛΕΙΟΥ 58 & ΑΓ.ΛΑΥΡΑΣ, ΑΝΩ ΠΑΤΗΣΙΑ, 111 41'),
(68, 'https://goo.gl/maps/aSw2JJgwiLR2', 'ΝΕΪΓΥ 62, ΑΝΩ ΠΑΤΗΣΙΑ, 111 43'),
(69, 'https://goo.gl/maps/KJLJxnbw1fm', 'ΡΟΣΤΑΝ 28 & ΠΟΛΥΛΑ 1, ΑΝΩ ΠΑΤΗΣΙΑ, 111 41'),
(70, 'https://goo.gl/maps/gm3yCykkZYU2', 'ΧΑΛΕΠΑ 7, ΑΝΩ ΠΑΤΗΣΙΑ, 111 41'),
(71, 'https://goo.gl/maps/kC6QYU9yY9z', 'ΔΟΜΟΚΟΥ 2 & ΠΑΙΩΝΙΟΥ, ΣΤΑΘΜΟΣ ΛΑΡΙΣΗΣ, 104 40'),
(72, 'https://goo.gl/maps/F2JTcbjHniq', 'ΘΑΥΜΑΝΤΟΣ 10, ΚΥΨΕΛΗ, 113 64'),
(73, 'https://goo.gl/maps/oHbNbiQRhmN2', 'ΚΡΙΣΣΗΣ 54, ΑΝΩ ΚΥΨΕΛΗ, 113 64'),
(74, 'https://goo.gl/maps/eMFCH7Xy83t', 'ΚΡΙΣΣΗΣ 15, ΑΝΩ ΚΥΨΕΛΗ, 113 64'),
(75, 'https://goo.gl/maps/KiHjkPGR3ns', 'ΚΥΚΛΑΔΩΝ 30, ΚΥΨΕΛΗ, 113 61'),
(76, 'https://goo.gl/maps/wVVKgZ67HcT2', 'ΛΕΣΒΟΥ 19, ΚΥΨΕΛΗ-ΑΝΙΑΤΩΝ, 112 56'),
(77, 'https://goo.gl/maps/dguDi5vru162', 'Λ.ΙΩΝΙΑΣ 86, ΑΓ.ΝΙΚΟΛΑΟΣ-ΑΧΑΡΝΩΝ, 104 46'),
(78, 'https://goo.gl/maps/tbD4gC6A89m', 'ΝΕΟΧΩΡΙΟΥ 5, ΚΥΨΕΛΗ, 113 63'),
(79, 'https://goo.gl/maps/mYZKS98Ba5F2', 'ΞΕΝΑΓΟΡΑ 6, ΛΕΒΙΔΙ - ΑΧΑΡΝΩΝ, 112 52'),
(80, 'https://goo.gl/maps/aescpeAz7CB2', 'ΠΥΘΙΑΣ 8, ΚΥΨΕΛΗ, 113 64'),
(81, 'https://goo.gl/maps/G4T7gyNXekH2', 'ΣΟΛΙΩΤΗ - ΑΛΑΣΤΩΡΟΣ & ΚΟΥΤΣΙΚΑΡΗ 49, ΑΘΗΝΑ, 115 22'),
(82, 'https://goo.gl/maps/GASeBpjcymN2', 'ΕΥΣΤΑΘΙΟΥ 12, ΠΟΛΥΓΩΝΟ, 115 24'),
(83, 'https://goo.gl/maps/QpMDMejsiKD2', 'ΛΕΩΦ. ΚΗΦΙΣΙΑΣ 128, ΕΛΛΗΝΟΡΩΣΩΝ, 115 26'),
(85, 'https://goo.gl/maps/CnkCWfA4cf92', 'ΚΟΤΥΑΙΟΥ 1, ΑΜΠΕΛΟΚΗΠΟΙ, 115 21'),
(86, 'https://goo.gl/maps/CoTjatS9qbu', 'ΛΑΜΨΑ & ΦΛΩΡΟΥ, ΓΗΡΟΚΟΜΕΙΟ, 115 24'),
(88, 'https://goo.gl/maps/PS2WFSa9UWU2', 'ΛΥΚΑΙΟΥ 67-73, ΓΚΥΖΗ, 114 76'),
(89, 'https://goo.gl/maps/WBRUFsBat6N2', 'ΜΕΣΟΓΕΙΩΝ 96, ΑΜΠΕΛΟΚΗΠΟΙ-ΕΡΥΘΡΟΣ, 115 27'),
(90, 'https://goo.gl/maps/ix1WA5K4nU32', 'ΣΕΒΑΣΤΟΥΠΟΛΕΩΣ 135, ΑΜΠΕΛΟΚΗΠΟΙ, 115 26'),
(91, 'https://goo.gl/maps/9Essq9xpixn', 'ΝΟΡΝΤΑΟΥ 2, ΓΚΥΖΗ, 114 74'),
(93, 'https://goo.gl/maps/MLdWqLg17FG2', 'ΦΘΙΩΤΙΔΟΣ 25, ΑΜΠΕΛΟΚΗΠΟΙ, 115 23'),
(96, 'https://goo.gl/maps/MKyGxJVMeVN2', 'ΛΑΚΩΝΟΣ 9 & ΤΡΙΦΥΛΛΙΑΣ, ΠΑΡΚΟ ΚΑΠΑΨ, ΠΑΝΟΡΜΟΥ, 115 24'),
(97, 'https://goo.gl/maps/fjTFoMW83yp', 'ΦΑΒΙΕΡΟΥ 17Α, ΠΛ. ΒΑΘΗ, 104 38');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `failed_jobs`
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
-- Δομή πίνακα για τον πίνακα `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Άδειασμα δεδομένων του πίνακα `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(31, '2014_10_12_000000_create_users_table', 2),
(24, '2014_10_12_100000_create_password_resets_table', 1),
(32, '2019_08_19_000000_create_failed_jobs_table', 2),
(26, '2020_02_20_111319_create_works_table', 1),
(33, '2020_04_06_054100_create_permission_tables', 2);

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `model_has_permissions`
--

DROP TABLE IF EXISTS `model_has_permissions`;
CREATE TABLE IF NOT EXISTS `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `model_has_roles`
--

DROP TABLE IF EXISTS `model_has_roles`;
CREATE TABLE IF NOT EXISTS `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Άδειασμα δεδομένων του πίνακα `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\User', 1),
(2, 'App\\User', 3),
(3, 'App\\User', 4);

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `password_resets`
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
-- Δομή πίνακα για τον πίνακα `permissions`
--

DROP TABLE IF EXISTS `permissions`;
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Άδειασμα δεδομένων του πίνακα `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'role-list', 'web', '2020-04-06 03:53:11', '2020-04-06 03:53:11'),
(2, 'role-create', 'web', '2020-04-06 03:53:11', '2020-04-06 03:53:11'),
(3, 'role-edit', 'web', '2020-04-06 03:53:11', '2020-04-06 03:53:11'),
(4, 'role-delete', 'web', '2020-04-06 03:53:11', '2020-04-06 03:53:11'),
(13, 'create-account', 'web', '2020-04-21 21:00:00', '2020-04-21 21:00:00'),
(9, 'work-list', 'web', '2020-04-06 00:53:11', '2020-04-06 00:53:11'),
(10, 'work-create', 'web', '2020-04-06 00:53:11', '2020-04-06 00:53:11'),
(11, 'work-edit', 'web', '2020-04-06 00:53:11', '2020-04-06 00:53:11'),
(12, 'work-delete', 'web', '2020-04-06 00:53:11', '2020-04-06 00:53:11');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Άδειασμα δεδομένων του πίνακα `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2020-04-06 03:53:40', '2020-04-06 03:53:40'),
(2, 'user', 'web', '2020-04-06 03:57:10', '2020-04-06 03:57:10'),
(3, 'guest', 'web', '2020-04-22 00:57:10', '2020-04-22 00:57:10');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `role_has_permissions`
--

DROP TABLE IF EXISTS `role_has_permissions`;
CREATE TABLE IF NOT EXISTS `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Άδειασμα δεδομένων του πίνακα `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(9, 1),
(9, 2),
(9, 3),
(10, 1),
(10, 2),
(11, 1),
(11, 2),
(12, 1),
(13, 1);

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `stations`
--

DROP TABLE IF EXISTS `stations`;
CREATE TABLE IF NOT EXISTS `stations` (
  `st_id` int(11) NOT NULL AUTO_INCREMENT,
  `st_mn` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `st_type` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `st_build` int(11) UNSIGNED NOT NULL DEFAULT '1',
  `st_dk` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `st_order` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `st_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `st_phone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `st_email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `st_closed` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`st_id`)
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Άδειασμα δεδομένων του πίνακα `stations`
--

INSERT INTO `stations` (`st_id`, `st_mn`, `st_type`, `st_build`, `st_dk`, `st_order`, `st_name`, `st_phone`, `st_email`, `st_closed`) VALUES
(1, 0, 2, 2, 0, '001', 'ΑΥΤΟΤΕΛΕΣ ΤΜΗΜΑ ΔΙΟΙΚΗΣΗΣ', '210 5135736', 'dimvrefa@cosmotemail.gr', 0),
(2, 1, 3, 2, 0, '002', 'ΓΡΑΦΕΙΟ ΓΡΑΜΜΑΤΕΙΑΣ ΠΡΟΕΔΡΟΥ-ΑΝΤΙΠΡΟΕΔΡΟΥ', '210 5150446', '', 0),
(3, 1, 3, 2, 0, '003', 'ΓΡΑΦΕΙΟ ΕΠΙΚΟΙΝΩΝΙΑΣ & ΔΗΜΟΣΙΩΝ ΣΧΕΣΕΩΝ', '210 5148426', '', 0),
(4, 1, 3, 2, 0, '004', 'ΓΡΑΦΕΙΟ ΙΣΤΟΡΙΚΟΥ ΑΡΧΕΙΟΥ', '', 'dba.ha@cosmotemail.gr', 0),
(5, 0, 2, 2, 0, '005', 'ΑΥΤΟΤΕΛΕΣ ΤΜΗΜΑ ΝΟΜΙΚΗΣ ΥΠΟΣΤΗΡΙΞΗΣ', '210 5127765', 'dbany@otenet.gr', 0),
(6, 0, 2, 2, 0, '006', 'ΔΙΕΥΘΥΝΣΗ ΔΙΟΙΚΗΤΙΚΟΥ-ΠΡΟΣΩΠΙΚΟΥ', '210 5151543', 'dbadad@otenet.gr', 0),
(7, 6, 3, 2, 0, '007', 'ΤΜΗΜΑ ΠΡΟΣΩΠΙΚΟΥ', '210 5144598', 'dbaorgp1@otenet.gr', 0),
(8, 6, 3, 2, 0, '008', 'ΤΜΗΜΑ ΜΙΣΘΟΔΟΣΙΑΣ', '210 5129165', 'dbamist@otenet.gr', 0),
(9, 6, 3, 2, 0, '009', 'ΤΜΗΜΑ ΓΡΑΜΜΑΤΕΙΑΣ Δ.Σ. & Ε.Ε.', '210 5143018', 'dbadsee@otenet.gr', 0),
(10, 6, 3, 2, 0, '010', 'ΤΜΗΜΑ ΔΙΟΙΚΗΤΙΚΗΣ ΜΕΡΙΜΝΑΣ, ΠΡΩΤΟΚΟΛΛΟΥ & ΔΙΕΚΠΕΡΑΙΩΣΗΣ', '210 5121236', 'dbaprot@otenet.gr', 0),
(11, 6, 3, 2, 0, '011', 'ΤΜΗΜΑ ΜΕΤΑΦΟΡΙΚΩΝ ΜΕΣΩΝ', '210 5140788', 'dbauto@otenet.gr', 0),
(12, 0, 2, 2, 0, '012', 'ΔΙΕΥΘΥΝΣΗ Π. Ο. Π. & Α. Α. Π.', '210 5145705', 'dbaadmin@otenet.gr', 0),
(13, 12, 3, 2, 0, '013', 'ΤΜΗΜΑ ΠΡΟΓΡΑΜΜΑΤΙΣΜΟΥ ΚΑΙ ΟΡΓΑΝΩΣΗΣ', '210 5138420', 'dba_ee@otenet.gr', 0),
(14, 12, 3, 2, 0, '014', 'ΤΜΗΜΑ ΠΑΙΔΑΓΩΓΙΚΟΥ ΠΡΟΓΡΑΜΜΑΤΙΣΜΟΥ', '', 'dbatpaid@otenet.gr', 0),
(15, 12, 3, 2, 0, '015', 'ΤΜΗΜΑ ΑΝΑΠΤΥΞΗΣ ΑΝΘΡΩΠΙΝΩΝ ΠΟΡΩΝ', '210 5144648', 'dbaeap@otenet.gr', 0),
(16, 12, 3, 2, 0, '016', 'ΤΜΗΜΑ ΠΛΗΡΟΦΟΡΙΚΗΣ', '210 5146145', 'dba.it@cosmotemail.gr', 0),
(17, 0, 2, 2, 0, '017', 'ΔΙΕΥΘΥΝΣΗ ΠΑΙΔΙΚΩΝ ΣΤΑΘΜΩΝ', '210 5124692', 'dbadps@otenet.gr', 0),
(18, 17, 3, 2, 0, '018', 'ΤΜΗΜΑ ΕΠΙΛΟΓΗΣ ΑΙΤΗΣΕΩΝ ΚΑΙ ΠΑΡΑΚΟΛΟΥΘΗΣΗΣ ΕΓΓΡΑΦΩΝ', '210 5124692', 'dbatps@otenet.gr', 0),
(19, 17, 3, 19, 1, '119', '1 Δ.Κ. ΘΕΜΙΣΤΟΚΛΕΟΥΣ', '210 3300880', 'dba.1dk.themistokleous@cosmotemail.gr', 0),
(20, 17, 3, 20, 1, '120', '1 Δ.Κ. ΛΥΣΙΟΥ', '210 3225681', 'dba.1dk.lisiou@cosmotemail.gr', 0),
(21, 17, 3, 21, 1, '121', '1 Δ.Κ. ΜΑΥΡΟΜΙΧΑΛΗ', '210 3604668', 'dba.1dk.mavromichali@cosmotemail.gr', 0),
(22, 17, 3, 22, 1, '122', '1 Δ.Κ. ΜΙΧΑΗΛ ΒΟΔΑ', '210 8219574', 'dba.1dk.m.voda@cosmotemail.gr', 0),
(23, 17, 3, 23, 1, '123', '1 Δ.Κ. ΝΟΤΑΡΑ & ΔΕΛΗΓΙΑΝΝΗ', '210 8222588', 'dba.1dk.notara@cosmotemail.gr', 0),
(24, 17, 3, 24, 1, '124', '1 Δ.Κ. ΠΕΙΡΑΙΩΣ', '210 3252158', 'dba.1dk.peiraios@cosmotemail.gr', 0),
(25, 17, 3, 25, 1, '125', '1 Δ.Κ. ΤΣΑΜΗ ΚΑΡΑΤΑΣΟΥ', '210 9235086', 'dba.1dk.ts.katarasou@cosmotemail.gr', 0),
(26, 17, 3, 26, 1, '126', '1 Δ.Κ. ΦΑΒΙΕΡΟΥ', '210 5225292', 'dba.1dk.favierou@cosmotemail.gr', 0),
(27, 17, 3, 27, 2, '227', '2 Δ.Κ. ΑΝΑΞΑΡΧΟΥ', '210 7564531', 'dba.2dk.anaxarchou@cosmotemail.gr', 0),
(28, 17, 3, 28, 2, '228', '2 Δ.Κ. ΒΑΘΥΚΛΕΟΥΣ', '210 7514742', 'dba.2dk.vathikleous@cosmotemail.gr', 0),
(29, 17, 3, 29, 2, '229', '2 Δ.Κ. ΒΙΝΚΕΛΜΑΝ', '210 7512666', 'dba.2dk.vinkelman@cosmotemail.gr', 0),
(30, 17, 3, 30, 2, '230', '2 Δ.Κ. ΛΑΓΟΥΜΙΤΖΗ', '210 9017300', 'dba.2dk.lagoumitzi@cosmotemail.gr', 0),
(31, 17, 3, 31, 2, '231', '2 Δ.Κ. ΠΑΓΚΡΑΤΙΟΥ', '210 7221123', 'dba.2dk.pagratiou@cosmotemail.gr', 0),
(32, 17, 3, 32, 2, '232', '2 Δ.Κ. ΠΡΩΤΑΓΟΡΑ', '210 7525002', 'dba.2dk.protagora@cosmotemail.gr', 0),
(33, 17, 3, 33, 2, '233', '2 Δ.Κ. ΠΥΘΕΟΥ', '210 9239200', 'dba.2dk.pitheou@cosmotemail.gr', 0),
(34, 17, 3, 34, 2, '234', '2 Δ.Κ. ΚΡΙΝΑΓΟΡΟΥ Α', '210 9010336', 'dba.2dk.krinagorou.a@cosmotemail.gr', 0),
(35, 17, 3, 35, 2, '235', '2 Δ.Κ. ΚΡΙΝΑΓΟΡΟΥ Β', '210 9017341', 'dba.2dk.krinagorou.b@cosmotemail.gr', 0),
(36, 17, 3, 36, 2, '236', '2 Δ.Κ. ΚΡΙΝΑΓΟΡΟΥ Γ', '210 9012773', 'dba.2dk.krinagorou.c@cosmotemail.gr', 0),
(37, 17, 3, 37, 2, '237', '2 Δ.Κ. ΝΙΚΟΣΘΕΝΟΥΣ', '210 7241205', 'dba.2dk.nikosthenous@cosmotemail.gr', 0),
(38, 17, 3, 38, 3, '338', '3 Δ.Κ. ΑΘΗΝΟΔΩΡΟΥ', '210 3424987', 'dba.3dk.athinodorou@cosmotemail.gr', 0),
(39, 17, 3, 39, 3, '339', '3 Δ.Κ. ΑΛΟΠΗΣ', '210 5229242', 'dba.3dk.alopis@cosmotemail.gr', 0),
(40, 17, 3, 40, 3, '340', '3 Δ.Κ. ΚΥΚΛΩΠΩΝ', '210 3466588', 'dba.3dk.kiklopon@cosmotemail.gr', 0),
(41, 17, 3, 41, 3, '341', '3 Δ.Κ. ΠΕΡΣΕΩΣ', '210 3422361', 'dba.3dk.perseos@cosmotemail.gr', 0),
(42, 17, 3, 42, 3, '342', '3 Δ.Κ. ΣΠΥΡΟΥ ΠΑΤΣΗ', '210 3462958', 'dba.3dk.s.patsi@cosmotemail.gr', 0),
(43, 17, 3, 43, 3, '343', '3 Δ.Κ. ΤΡΩΩΝ', '210 3470275', 'dba.3dk.troon@cosmotemail.gr', 0),
(44, 17, 3, 44, 3, '344', '3 Δ.Κ. ΘΕΡΜΟΠΥΛΩΝ', '210 5150761', 'dba.3dk.thermopylon@cosmotemail.gr', 0),
(45, 17, 3, 45, 4, '445', '4 Δ.Κ. Α ΣΕΠΟΛΙΩΝ', '210 5154225', 'dba.4dk.a.sepolion@cosmotemail.gr', 0),
(46, 17, 3, 46, 4, '446', '4 Δ.Κ. ΓΕΡΑΚΗ', '210 8320098', 'dba.4dk.geraki@cosmotemail.gr', 0),
(47, 17, 3, 47, 4, '447', '4 Δ.Κ. ΕΠΙΔΑΥΡΟΥ Α', '210 5125837', 'dba.4dk.epidavrou.a@cosmotemail.gr', 0),
(48, 17, 3, 48, 4, '448', '4 Δ.Κ. ΕΠΙΔΑΥΡΟΥ Β', '210 5125039', 'dba.4dk.epidavrou.b@cosmotemail.gr', 0),
(49, 17, 3, 49, 4, '449', '4 Δ.Κ. ΕΥΑΛΚΙΔΟΥ Α', '210 5152656', 'dba.4dk.evalkidou.a@cosmotemail.gr', 0),
(50, 17, 3, 50, 4, '450', '4 Δ.Κ. ΕΥΑΛΚΙΔΟΥ Β', '210 5134870', 'dba.4dk.evalkidou.b@cosmotemail.gr', 0),
(51, 17, 3, 51, 4, '451', '4 Δ.Κ. ΙΩΑΝΝΙΝΩΝ', '210 5155620', 'dba.4dk.ioanninon@cosmotemail.gr', 0),
(52, 17, 3, 52, 4, '452', '4 Δ.Κ. ΛΕΝΟΡΜΑΝ', '210 5125634', 'dba.4dk.lenorman@cosmotemail.gr', 0),
(53, 17, 3, 53, 4, '453', '4 Δ.Κ. ΜΑΝΟΥΣΟΓΙΑΝΝΗ', '210 8313747', 'dba.4dk.manousogianni@cosmotemail.gr', 0),
(54, 17, 3, 54, 4, '454', '4 Δ.Κ. ΜΕΤΡΩΝ', '210 5127294', 'dba.4dk.metron@cosmotemail.gr', 0),
(55, 17, 3, 55, 4, '455', '4 Δ.Κ. ΜΙΧΑΗΛ ΚΟΡΑΚΑ', '210 8311169', 'dba.4dk.m.koraka@cosmotemail.gr', 0),
(56, 17, 3, 56, 4, '456', '4 Δ.Κ. ΠΑΛΑΜΗΔΙΟΥ', '210 5140662', 'dba.4dk.palamidiou@cosmotemail.gr', 0),
(57, 17, 3, 57, 4, '457', '4 Δ.Κ. ΠΥΡΛΑ', '210 8313626', 'dba.4dk.pirla@cosmotemail.gr', 0),
(58, 17, 3, 58, 4, '458', '4 Δ.Κ. ΣΜΟΛΙΚΑ', '210 5126519', 'dba.4dk.smolika@cosmotemail.gr', 0),
(59, 17, 3, 59, 4, '459', '4 Δ.Κ. ΤΙΜΑΙΟΥ', '210 5134426', 'dba.4dk.timeou@cosmotemail.gr', 0),
(60, 17, 3, 60, 5, '560', '5 Δ.Κ. ΑΓΙΟΥ ΕΛΕΥΘΕΡΙΟΥ', '210 2017710', 'dba.5dk.ag.eleftheriou@cosmotemail.gr', 0),
(61, 17, 3, 61, 5, '561', '5 Δ.Κ. ΑΓΙΑΣ ΛΑΥΡΑΣ', '210 2023217', 'dba.5dk.ag.lavras@cosmotemail.gr', 0),
(62, 17, 3, 62, 5, '562', '5 Δ.Κ. ΑΜΑΣΙΟΥ Α', '210 2518086', 'dba.5dk.amasiou.a@cosmotemail.gr', 0),
(63, 17, 3, 63, 5, '563', '5 Δ.Κ. ΑΜΑΣΙΟΥ Β', '210 2518010', 'dba.5dk.amasiou.b@cosmotemail.gr', 0),
(64, 17, 3, 64, 5, '564', '5 Δ.Κ. ΑΞΙΟΥΠΟΛΕΩΣ', '210 2584831', 'dba.5dk.axioupoleos@cosmotemail.gr', 0),
(65, 17, 3, 65, 5, '565', '5 Δ.Κ. ΔΗΜΗΤΡΙΟΥ ΡΑΛΛΗ', '210 2232105', 'dba.5dk.d.ralli@cosmotemail.gr', 0),
(66, 17, 3, 66, 5, '566', '5 Δ.Κ. ΕΡΜΙΠΠΟΥ', '210 2526265', 'dba.5dk.ermippou@cosmotemail.gr', 0),
(67, 17, 3, 67, 5, '567', '5 Δ.Κ. ΗΡΑΚΛΕΙΟΥ', '210 2234126', 'dba.5dk.irakliou@cosmotemail.gr', 0),
(68, 17, 3, 68, 5, '568', '5 Δ.Κ. ΝΕΪΓΥ', '210 2529566', 'dba.5dk.neigi@cosmotemail.gr', 0),
(69, 17, 3, 69, 5, '569', '5 Δ.Κ. ΡΟΣΤΑΝ & ΠΟΛΥΛΑ', '210 2285800', 'dba.5dk.polila@cosmotemail.gr', 0),
(70, 17, 3, 70, 5, '570', '5 Δ.Κ. ΧΑΛΕΠΑ', '210 2230808', 'dba.5dk.chalepa@cosmotemail.gr', 0),
(71, 17, 3, 71, 6, '671', '6 Δ.Κ. ΑΥΞΕΝΤΙΟΥ', '210 8222245', 'dba.6dk.afxentiou@cosmotemail.gr', 0),
(72, 17, 3, 72, 6, '672', '6 Δ.Κ. ΘΑΥΜΑΝΤΟΣ', '210 8612743', 'dba.6dk.thavmantos@cosmotemail.gr', 0),
(73, 17, 3, 73, 6, '673', '6 Δ.Κ. ΚΡΙΣΣΗΣ Α', '210 8659279', 'dba.6dk.krissis.a@cosmotemail.gr', 0),
(74, 17, 3, 74, 6, '674', '6 Δ.Κ. ΚΡΙΣΣΗΣ Β', '210 8625679', 'dba.6dk.krissis.b@cosmotemail.gr', 0),
(75, 17, 3, 75, 6, '675', '6 Δ.Κ. ΚΥΚΛΑΔΩΝ', '210 8811244', 'dba.6dk.kikladon@cosmotemail.gr', 0),
(76, 17, 3, 76, 6, '676', '6 Δ.Κ. ΛΕΣΒΟΥ', '210 8678882', 'dba.6dk.lesvou@cosmotemail.gr', 0),
(77, 17, 3, 77, 6, '677', '6 Δ.Κ. ΛΕΩΦΟΡΟΣ ΙΩΝΙΑΣ', '210 8655044', 'dba.6dk.l.ionias@cosmotemail.gr', 0),
(78, 17, 3, 78, 6, '678', '6 Δ.Κ. ΝΕΟΧΩΡΙΟΥ', '210 5133565', 'dba.6dk.neochoriou@cosmotemail.gr', 0),
(79, 17, 3, 79, 6, '679', '6 Δ.Κ. ΞΕΝΑΓΟΡΑ', '210 8674237', 'dba.6dk.xenagora@cosmotemail.gr', 0),
(80, 17, 3, 80, 6, '680', '6 Δ.Κ. ΠΥΘΙΑΣ', '210 8658900', 'dba.6dk.pithias@cosmotemail.gr', 0),
(81, 17, 3, 81, 7, '781', '7 Δ.Κ. ΑΛΑΣΤΩΡΟΣ', '210 6440231', 'dba.7dk.alastoros@cosmotemail.gr', 0),
(82, 17, 3, 82, 7, '782', '7 Δ.Κ. ΕΥΣΤΑΘΙΟΥ', '210 6913330', 'dba.7dk.efstathiou@cosmotemail.gr', 1),
(83, 17, 3, 83, 7, '783', '7 Δ.Κ. ΚΗΦΙΣΙΑΣ Α', '210 6927017', 'dba.7dk.kifisias.a@cosmotemail.gr', 0),
(84, 17, 3, 83, 7, '784', '7 Δ.Κ. ΚΗΦΙΣΙΑΣ Β', '210 6913057', 'dba.7dk.kifisias.b@cosmotemail.gr', 0),
(85, 17, 3, 85, 7, '785', '7 Δ.Κ. ΚΟΤΥΑΙΟΥ', '210 6425121', 'dba.7dk.kotieou@cosmotemail.gr', 0),
(86, 17, 3, 86, 7, '786', '7 Δ.Κ. ΛΑΜΨΑ Α', '210 6925028', 'dba.7dk.lampsa.a@cosmotemail.gr', 0),
(87, 17, 3, 86, 7, '787', '7 Δ.Κ. ΛΑΜΨΑ Β', '210 6926380', 'dba.7dk.lampsa.b@cosmotemail.gr', 0),
(88, 17, 3, 88, 7, '788', '7 Δ.Κ. ΛΥΚΑΙΟΥ', '210 6411120', 'dba.7dk.likeou@cosmotemail.gr', 0),
(89, 17, 3, 89, 7, '789', '7 Δ.Κ. ΜΕΣΟΓΕΙΩΝ', '210 7777105', 'dba.7dk.mesogeion@cosmotemail.gr', 0),
(90, 17, 3, 90, 7, '790', '7 Δ.Κ. ΜΙΚΡΟ ΧΡΙΣΤΟΔΟΥΛΑΚΕΙΟ', '210 6911219', 'dba.7dk.m.christodoulakeio@cosmotemail.gr', 0),
(91, 17, 3, 91, 7, '791', '7 Δ.Κ. ΝΟΡΝΤΑΟΥ', '210 6423602', 'dba.7dk.norntaou@cosmotemail.gr', 0),
(92, 17, 3, 90, 7, '792', '7 Δ.Κ. ΣΕΒΑΣΤΟΥΠΟΛΕΩΣ', '210 6917664', 'dba.7dk.sevastoupoleos@cosmotemail.gr', 0),
(93, 17, 3, 93, 7, '793', '7 Δ.Κ. ΦΘΙΩΤΙΔΟΣ', '210 6455368', 'dba.7dk.fthiotidos@cosmotemail.gr', 0),
(94, 17, 3, 90, 7, '794', '7 Δ.Κ. ΧΡΙΣΤΟΔΟΥΛΑΚΕΙΟ', '210 6927895', 'dba.7dk.christodoulakeio@cosmotemail.gr', 0),
(95, 17, 3, 2, 0, '095', 'ΤΜΗΜΑ ΥΠΗΡΕΣΙΩΝ ΙΑΤΡΙΚΗΣ ΚΑΙ ΔΗΜΟΣΙΑΣ ΥΓΕΙΑΣ', '210 5150635', 'dbaped@otenet.gr', 0),
(96, 17, 3, 96, 0, '096', 'ΤΜΗΜΑ ΨΥΧΟΛΟΓΙΚΗΣ ΥΠΟΣΤΗΡΙΞΗΣ ΚΑΙ ΣΥΜΒΟΥΛΕΥΤΙΚΗΣ', '', 'dbacounc@otenet.gr', 0),
(97, 17, 3, 97, 0, '097', 'ΤΜΗΜΑ ΚΟΙΝΩΝΙΚΗΣ ΥΠΟΣΤΗΡΙΞΗΣ', '210 5142576', 'dbakinyp@otenet.gr', 0),
(98, 17, 3, 3, 0, '098', 'ΤΜΗΜΑ ΣΥΝΤΗΡΗΣΗΣ ΚΑΙ ΑΥΤΕΠΙΣΤΑΣΙΑΣ', '210 5121928', 'dbatech@otenet.gr', 0),
(99, 17, 3, 4, 0, '099', 'ΞΥΛΟΥΡΓΕΙΟ', '210 8838951', 'dbawood@otenet.gr', 0),
(100, 17, 3, 1, 0, '010', '1ο ΤΜΗΜΑ ΔΙΟΙΚΗΣΗΣ ΠΑΙΔΙΚΩΝ ΣΤΑΘΜΩΝ', '210 3479412', 'dba1td@otenet.gr', 0),
(101, 17, 3, 1, 0, '010', '2ο ΤΜΗΜΑ ΔΙΟΙΚΗΣΗΣ ΠΑΙΔΙΚΩΝ ΣΤΑΘΜΩΝ', '210 9235085', 'dba2td@otenet.gr', 0),
(102, 17, 3, 1, 0, '010', '3ο ΤΜΗΜΑ ΔΙΟΙΚΗΣΗΣ ΠΑΙΔΙΚΩΝ ΣΤΑΘΜΩΝ', '210 5147678', 'dba3td@otenet.gr', 0),
(103, 17, 3, 1, 0, '010', '4ο ΤΜΗΜΑ ΔΙΟΙΚΗΣΗΣ ΠΑΙΔΙΚΩΝ ΣΤΑΘΜΩΝ', '210 2528731', 'dba4td@otenet.gr', 0),
(104, 17, 3, 1, 0, '010', '5ο ΤΜΗΜΑ ΔΙΟΙΚΗΣΗΣ ΠΑΙΔΙΚΩΝ ΣΤΑΘΜΩΝ', '210 8831400', 'dba5td@otenet.gr', 0),
(105, 0, 2, 2, 0, '010', 'ΔΙΕΥΘΥΝΣΗ ΠΡΟΜΗΘΕΙΩΝ, ΔΙΑΧΕΙΡΙΣΗΣ ΥΛΙΚΩΝ ΚΑΙ ΕΣΤΙΑΣΗΣ', '', 'dbadprom@otenet.gr', 0),
(106, 105, 3, 2, 0, '010', 'ΤΜΗΜΑ ΠΡΟΜΗΘΕΙΩΝ ΚΑΙ ΔΗΜΟΠΡΑΣΙΩΝ', '210 5123524', 'dbasup@otenet.gr', 0),
(107, 105, 3, 2, 0, '010', 'ΤΜΗΜΑ ΑΠΟΘΗΚΗΣ ΚΑΙ ΔΙΑΧΕΙΡΙΣΗΣ ΥΛΙΚΩΝ', '210 8222379', 'dbadypa@otenet.gr', 0),
(108, 105, 3, 5, 0, '010', 'Αποθήκη 1 (Στ. Λαρίσης)', '', 'dbadypa@otenet.gr', 0),
(109, 105, 3, 2, 0, '010', 'Αποθήκη 2 (Ρόδου) ', '', 'dbadypa@otenet.gr', 0),
(110, 105, 3, 2, 0, '011', 'ΤΜΗΜΑ ΕΣΤΙΑΣΗΣ', '210 5151428', 'dbadysa@otenet.gr', 0),
(111, 105, 3, 2, 0, '011', 'Μαγειρείο Α', '', 'dbafooda@otenet.gr', 0),
(112, 105, 3, 92, 0, '011', 'Μαγειρείο Β', '', 'dbafoodb@otenet.gr', 0),
(113, 0, 2, 2, 0, '011', 'ΔΙΕΥΘΥΝΣΗ ΟΙΚΟΝΟΜΙΚΩΝ ΚΑΙ ΠΕΡΙΟΥΣΙΑΣ', '210 5121953', 'dbaoik@otenet.gr', 0),
(114, 113, 3, 2, 0, '011', 'ΤΜΗΜΑ ΠΡΟΫΠΟΛΟΓΙΣΜΟΥ', '210 5144574', 'dbbudget@otenet.gr', 0),
(115, 113, 3, 2, 0, '011', 'ΤΜΗΜΑ ΛΟΓΙΣΤΗΡΙΟΥ', '', 'dba_log@otenet.gr', 0),
(116, 113, 3, 2, 0, '011', 'ΤΜΗΜΑ ΕΚΚΑΘΑΡΙΣΗΣ ΚΑΙ ΕΝΤΟΛΗΣ ΔΑΠΑΝΩΝ', '210 5152119', 'dbateked@otenet.gr', 0),
(117, 113, 3, 2, 0, '011', 'ΤΜΗΜΑ ΤΑΜΕΙΑΚΗΣ ΥΠΗΡΕΣΙΑΣ', '210 5147891', 'dbatayp@otenet.gr', 0),
(118, 113, 3, 2, 0, '011', 'ΤΜΗΜΑ ΕΣΟΔΩΝ', '', 'dbapros@otenet.gr', 0),
(119, 113, 3, 2, 0, '011', 'ΤΜΗΜΑ ΠΕΡΙΟΥΣΙΑΣ', '', 'dba_klir@otenet.gr', 0);

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Άδειασμα δεδομένων του πίνακα `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'ΚΟΥΡΛΑΣ Δ.', 'jimk', 'jimk@gmail.com', NULL, '$2y$10$W5ZVFzk4woRcKUd/oDKZ2unxJm5xm5pZ0oTFD7yz4TGrm//ira/Tq', NULL, '2020-04-06 03:13:08', '2020-04-06 03:13:08'),
(3, 'user', NULL, 'user@gmail.com', NULL, '$2y$10$mSJqSuDYIY3nohtHeeHDJuEUokzE6aRMzwFrRcSdm/OrHX5xzRdu.', NULL, '2020-04-22 07:42:21', '2020-04-22 07:42:21'),
(4, 'guest', NULL, 'guest@gmail.com', NULL, '$2y$10$47XDTaXzDxVQUy9bK/P5.uYp5Sc96pdmpXqo18L2PdGcb1whLTSZW', NULL, '2020-04-22 07:42:42', '2020-04-22 07:42:42');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `worklevel`
--

DROP TABLE IF EXISTS `worklevel`;
CREATE TABLE IF NOT EXISTS `worklevel` (
  `wl_id` int(11) NOT NULL,
  `wl_name` varchar(30) DEFAULT NULL,
  `wl_icon` varchar(30) NOT NULL,
  PRIMARY KEY (`wl_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Άδειασμα δεδομένων του πίνακα `worklevel`
--

INSERT INTO `worklevel` (`wl_id`, `wl_name`, `wl_icon`) VALUES
(1, 'Κανονική', 'fa fa-star-o'),
(2, 'Επείγον', 'fa-star-half-o'),
(3, 'Εξ. Επείγον', 'fa fa-star');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `workmovement`
--

DROP TABLE IF EXISTS `workmovement`;
CREATE TABLE IF NOT EXISTS `workmovement` (
  `mov_id` int(11) NOT NULL AUTO_INCREMENT,
  `mov_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `mov_glyphicon` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`mov_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Άδειασμα δεδομένων του πίνακα `workmovement`
--

INSERT INTO `workmovement` (`mov_id`, `mov_name`, `mov_glyphicon`) VALUES
(1, 'Αυτοκίνητο, απλή μετάβαση', 'fa-taxi'),
(2, 'Αυτοκίνητο, με επιστροφή', 'fa-truck'),
(3, 'Προσωπική μετακίνηση', 'fa-male'),
(4, 'Αναμονή', 'fa-bed'),
(5, 'Τηλέφωνο πρώτα', 'fa-phone'),
(6, 'Επείγον', 'fa-ambulance');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `works`
--

DROP TABLE IF EXISTS `works`;
CREATE TABLE IF NOT EXISTS `works` (
  `wrk_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `wrk_par_id` bigint(20) NOT NULL DEFAULT '0',
  `wrk_st_id` bigint(20) NOT NULL DEFAULT '0',
  `wrk_title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `wrk_datestart` date DEFAULT NULL,
  `wrk_dateend` date DEFAULT NULL,
  `wrk_rems` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `wrk_status` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `wrk_movement` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `wrk_level` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`wrk_id`)
) ENGINE=MyISAM AUTO_INCREMENT=81 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Άδειασμα δεδομένων του πίνακα `works`
--

INSERT INTO `works` (`wrk_id`, `wrk_par_id`, `wrk_st_id`, `wrk_title`, `wrk_datestart`, `wrk_dateend`, `wrk_rems`, `wrk_status`, `wrk_movement`, `wrk_level`, `created_at`, `updated_at`) VALUES
(1, 0, 16, 'Διαγωνισμός εκτυπωτών (παραλαβή)', '2017-08-20', '2017-08-20', 'Ενημερώθηκε η επιτροπή παραλαβής.\r\n', 2, 1, 1, '2017-08-19 21:00:00', '2017-08-19 21:00:00'),
(2, 0, 1, 'Παραλαβή router από ΟΤΕ', '2017-07-20', '2017-08-31', 'Αρ. ζητήματος ΟΤΕ: 19072693381\r\nΑρ. αποστολής: ZG062989559GR στις 09-08-2017\r\n14-08-2017 Έγινε εγκατάσταση στο γραφείο. Να δω με τον ζαννή για το dsl.', 2, 1, 1, '2017-07-19 21:00:00', '2017-08-30 21:00:00'),
(3, 0, 94, 'Παραλαβή router από ΟΤΕ', '2017-08-03', '2017-09-07', 'Με ενημέρωσε στις 08-08-2017 ο Γιάννης.', 2, 1, 1, '2017-08-02 21:00:00', '2017-09-06 21:00:00'),
(4, 0, 119, 'Εγκατάσταση εκτυπωτών Cannon ir2020 και ir3035', '2017-08-15', '2017-08-15', 'Έγινε εγκατάσταση στον υπολογιστή της Βόγλη.', 2, 1, 1, '2017-08-14 21:00:00', '2017-08-14 21:00:00'),
(5, 0, 8, 'Παράδοση εκτυπωτή Lexmark E360dn ', '2017-08-15', '2017-08-15', 'Παραδόθηκε από Καλαπόδη (διαγωνισμός)', 2, 1, 1, '2017-08-14 21:00:00', '2017-08-14 21:00:00'),
(6, 0, 8, 'Παράδοση εκτυπωτή Kyocera FS6020', '2017-08-16', '2017-08-16', 'Παραδόθηκε από Καλαπόδη (διαγωνισμός)', 2, 1, 1, '2017-08-15 21:00:00', '2017-08-15 21:00:00'),
(7, 0, 8, 'Επισκευή εκτυπωτή OKI', '2017-08-20', '2017-08-20', 'Έγινε η συντήρηση στον χώρο του Τμήματος', 2, 1, 1, '2017-08-19 21:00:00', '2017-08-19 21:00:00'),
(8, 0, 18, 'Παράδοση εκτυπωτή Lexmark E360dn', '2017-08-17', '2017-08-17', 'Παραδόθηκε από Καλαπόδη (διαγωνισμός)\r\nΈγινε και εγκατάσταση στον υπολογιστή της Καραγιάννη.\r\nΈγινε και επανεγκατάσταση του Canon ir3225 που βρίσκεται στον διάδρομο, στον υπολογιστή της Καραγιάννη.', 2, 1, 1, '2017-08-16 21:00:00', '2017-08-16 21:00:00'),
(9, 0, 16, 'Ενημέρωση κ. Ευθυμίου Ειρ-Πολ.', '2017-09-03', '2017-09-03', 'Ενημέρωση μέλους επιτροπής παραλαβής συντήρησης εκτυπωτών κ. Ευθυμίου Ειρ-Πολ. για υπογραφή τιμολογίων.', 2, 3, 1, '2017-09-02 21:00:00', '2017-09-02 21:00:00'),
(11, 0, 16, 'Να ερωτηθεί η Διευθύντρια Παιδικών Σταθμών για τους Η/Υ στην αίθουσα Δ.Σ.', '2017-08-28', NULL, 'Μας ενημέρωσε ότι χρειάζεται την αίθουσα. θα μας ενημερώσει.', 2, 3, 1, '2017-08-27 21:00:00', NULL),
(12, 0, 78, 'Δεν εμφανίζει τίποτα το outlook', '2017-08-29', '2017-08-30', 'Εντάξει. Έβλεπε το παλιό.', 2, 1, 1, '2017-08-28 21:00:00', '2017-08-29 21:00:00'),
(13, 0, 16, 'Σύνδεση υπολογιστών στα Χριστοδουλάκεια', '2017-08-31', '2017-09-06', '', 2, 1, 1, '2017-08-30 21:00:00', '2017-09-05 21:00:00'),
(14, 0, 98, 'Εκκίνηση παλαιού υπολογιστή ', '2017-08-27', '2017-08-30', 'Εντάξει. Ο κωδικός 1982.\r\n', 2, 3, 1, '2017-08-26 21:00:00', '2017-08-29 21:00:00'),
(15, 0, 16, 'dbda.gr Domain Name Expiration Warning', '2017-08-30', '2017-09-10', 'Το παρακάτω όνομα χώρου [.gr] πλησιάζει στην λήξη της περιόδου εκχώρησής του. \r\nΑριθ. Πρωτοκόλλου: 1221765\r\nΗμ/νία Λήξης: 03/10/17 11:59PM UTC\r\nΌνομα: ΔΗΜΟΤΙΚΟ ΒΡΕΦΟΚΟΜΕΙΟ ΑΘΗΝΩΝ\r\nEmail: dbamix@otenet.gr\r\nΚωδικός Επαφής: 575_100261\r\nWEB AND ART SOLUTIONS +30.2102757087\r\n11-09-2017: Έγινε η πληρωμή.', 2, 3, 1, '2017-08-29 21:00:00', '2017-09-09 21:00:00'),
(16, 0, 24, 'Πρόβλημα router', '2017-08-31', '2017-09-24', 'Θα επικοινωνήσει με τον ΟΤΕ για νέο.\r\nΠαρέλαβε το νέο και λειτουργεί κανονικά. Έγινε και ρύθμιση του eset.', 2, 1, 1, '2017-08-30 21:00:00', '2017-09-23 21:00:00'),
(17, 0, 29, 'Εγκατάσταση νέου εκτυπωτή', '2017-09-07', '2017-10-11', 'Έγινε η εγκατάσταση του HP Deskjet 2310', 2, 1, 1, '2017-09-06 21:00:00', '2017-10-10 21:00:00'),
(18, 0, 33, 'Πρόβλημα με το e-mail', '2017-09-04', '2017-09-18', 'Χάνονται e-mail που αναγνώστηκαν. Μεταφέρθηκε ο πύργος στο τμήμα.\r\n11-09-2017: ελέγχθηκε και δεν βρέθηκε κάποιο πρόβλημα.\r\n19-09-2017: παραδόθηκε ο πύργος ', 2, 1, 1, '2017-09-03 21:00:00', '2017-09-17 21:00:00'),
(19, 0, 17, 'Πρόβλημα σύνδεσης internet', '2017-09-11', '2017-09-11', 'Το καλώδιο που έρχεται από το Αυτοτελές Τμήμα Νομικής Υποστήριξης καταστράφηκε λόγω κλεισίματος παραθύρου. Αντικαταστάθηκε και λειτουργεί.\r\nΕνημερώθηκε ο κ. Γεωργακόπουλος για να ανοίξουν τρύπες να περάσει.', 2, 3, 1, '2017-09-10 21:00:00', '2017-09-10 21:00:00'),
(20, 0, 78, 'Σύνδεση εκτυπωτή', '2017-09-11', '2017-09-14', '', 2, 1, 1, '2017-09-10 21:00:00', '2017-09-13 21:00:00'),
(21, 0, 79, 'Πρόβλημα με το excel', '2017-09-13', '2017-09-24', 'Αποκαταστάθηκε. Έγινε αλλαγή κωδικού παρουσιολογίου και υπολογιστή', 2, 1, 1, '2017-09-12 21:00:00', '2017-09-23 21:00:00'),
(22, 0, 106, 'Να γίνει φορματ στον υπολογιστή της Καλύβα', '2017-09-12', '2017-09-13', '14-09-2017: Ολοκληρώθηκε αλλά δεν βρέθηκαν τα έγραφα', 2, 3, 1, '2017-09-11 21:00:00', '2017-09-12 21:00:00'),
(23, 0, 96, 'Πρόβλημα με το internet (και το e-mail)', '2017-09-17', '2017-09-24', 'Αποκαταστάθηκε το πρόβλημα ρυθμίζοντας το eset', 2, 1, 1, '2017-09-16 21:00:00', '2017-09-23 21:00:00'),
(24, 0, 13, 'Εγκατάσταση scanner fujitsu', '2017-09-20', '2017-09-20', 'Εγκατάσταση scanner fujitsu ScanSnap S1500 στον Η/Υ της Ωραιοπούλου', 2, 3, 1, '2017-09-19 21:00:00', '2017-09-19 21:00:00'),
(25, 0, 33, 'Πρόβλημα εισόδου στο παρουσιολόγιο', '2017-09-21', '2017-09-21', 'Έγινε ανάκτηση του κωδικού εισόδου.', 2, 1, 1, '2017-09-20 21:00:00', '2017-09-20 21:00:00'),
(26, 0, 25, 'Πρόβλημα με το e-mail (γεμάτο mailbox)', '2017-09-24', '2017-10-18', 'Έσβησε κάποια παλιά και λειτουργεί (ενημέρωση από τηλέφωνο).', 2, 5, 1, '2017-09-23 21:00:00', '2017-10-17 21:00:00'),
(27, 0, 46, 'Πρόβλημα internet', '2017-09-25', '2017-09-25', 'Ήταν πρόβλημα ΟΤΕ. Μετά από επικοινωνία, αποκαταστάθηκε.', 2, 1, 1, '2017-09-24 21:00:00', '2017-09-24 21:00:00'),
(28, 0, 116, 'Μεταφορά Outlook σε άλλο Η/Υ', '2017-09-26', '2017-09-27', 'Έγινε μεταφορά των αρχείων του Outlook στον Η/Υ του Γράψα, μεταφορά του κοινού στον Η/Υ της Σταμούλη, δημιουργία συντομεύσεων στους άλλους δύο και εγκατάστασης του Lexmark 360dn στον Η/Υ της Μαμάη.', 2, 3, 1, '2017-09-25 21:00:00', '2017-09-26 21:00:00'),
(29, 0, 37, 'Πρόβλημα internet', '2017-09-27', '2017-09-27', 'Έγινε επανεκκίνηση του router και αποκαταστάθηκε.', 2, 1, 1, '2017-09-26 21:00:00', '2017-09-26 21:00:00'),
(30, 0, 84, 'Πρόβλημα υπολογιστή (μυρίζει)', '2017-09-27', '2017-10-10', 'Κατά την επίσκεψή στις 11-10-2017 ήταν όλα φυσιολογικά.', 2, 1, 1, '2017-09-26 21:00:00', '2017-10-09 21:00:00'),
(31, 0, 37, 'Πρόβλημα router', '2017-09-28', '2017-10-09', 'Χρειάζεται επανεκκίνηση για λειτουργήσει. Ζήτησε αντικατάσταση από τον ΟΤΕ.\r\nΈγιναν οι ρυθμίσεις στο νέο και λειτουργεί.', 2, 1, 1, '2017-09-27 21:00:00', '2017-10-08 21:00:00'),
(32, 0, 9, 'Δημιουργία αντιγράφων ασφαλείας (backup)', '2017-10-02', '2017-10-02', 'Ζήτησε να γίνει στις 03-10-2017.\r\nΚρατήθηκαν τα αντίγραφα ασφαλείας σε usb στικάκι.', 2, 3, 1, '2017-10-01 21:00:00', '2017-10-01 21:00:00'),
(33, 0, 91, 'Πρόβλημα Η/Υ', '2017-10-02', '2017-10-09', 'Δεν λειτουργεί μετά από πτώση ρεύματος.\r\nΈγιναν οι απαραίτητες ρυθμίσεις και αποκαταστάθηκε.', 2, 1, 1, '2017-10-01 21:00:00', '2017-10-08 21:00:00'),
(34, 0, 94, 'Έλεγχος e-mail', '2017-10-03', '2017-10-10', 'Να γίνει έλεγχος των e-mail, 7ΔΚ Χριστοδουλάκειο και 7ΔΚ Μικρό Χριστοδουλάκειο.\r\nΕϊχε το e-mail του Μικρού. Αποκαταστάθηκε.', 2, 1, 1, '2017-10-02 21:00:00', '2017-10-09 21:00:00'),
(35, 0, 116, 'Δεν ενημερώνεται (update) ο Η/Υ του Γράψα.', '2017-10-04', '2017-10-04', 'Μετά από απαραίτητες ρυθμίσεις ενημερώνεται κανονικά', 2, 3, 1, '2017-10-03 21:00:00', '2017-10-03 21:00:00'),
(36, 0, 107, 'Μεταφορά εκτυπωτή Lexmark E360dn', '2017-10-01', '2017-10-04', 'Έγινε μεταφορά από το γραφείου της Κλείτου στο άλλο γραφείο.\r\nΠαρουσιάζει πρόβλημα στην εκτύπωση.', 2, 3, 1, '2017-09-30 21:00:00', '2017-10-03 21:00:00'),
(37, 0, 18, 'Πρόβλημα εκτυπωτή στην αίθουσα Δ.Σ.', '2017-10-04', '2017-10-04', 'Μετά από επανεκκίνηση αποκαταστάθηκε το πρόβλημα.\r\nΖήτησα εφεδρικό toner από τον Καλαπόδη (Παναγιώτης)', 2, 3, 1, '2017-10-03 21:00:00', '2017-10-03 21:00:00'),
(38, 0, 106, 'Παραλαβή usb stick από Datarecall', '2017-10-03', '2017-10-08', 'Σουλίου & Χαλανδρίου 16Α , 153 43 Aγ. Παρασκευή, Αθήνα\r\nhttps://goo.gl/maps/sQiyuf4hiGM2\r\nΤηλ: +30.210.6016930 \r\nΠαρελήφθη και παραδόθηκε στο Τμήμα Προμηθειών και Δημοπρασιών', 2, 3, 1, '2017-10-02 21:00:00', '2017-10-07 21:00:00'),
(39, 0, 116, 'Σύνδεση της νέας συναδέλφου με τον κοινό φάκελο του τμήματος', '2017-10-10', '2017-10-10', 'Ολοκληρώθηκε.', 2, 3, 1, '2017-10-09 21:00:00', '2017-10-09 21:00:00'),
(40, 0, 91, 'Πρόβλημα Η/Υ  (έτοιμος για μεταφορά)', '2017-10-10', NULL, 'Είναι έτοιμος για μεταφορά.', 1, 2, 1, '2017-10-09 21:00:00', NULL),
(41, 0, 73, 'Ρύθμιση Eset', '2017-10-11', '2017-11-08', 'Έγινε ρύθμιση, ενημέρωση του Η/Υ και εγκατάσταση του νέου e-mail.', 2, 1, 1, '2017-10-10 21:00:00', '2017-11-07 22:00:00'),
(42, 0, 98, 'Μεταφορά ρολογιού προσωπικού από Ισιδώρου', '2017-10-11', NULL, 'Πρέπει να μεταφερθεί το switch από την Ισιδώρου.\r\n', 1, 4, 1, '2017-10-10 21:00:00', NULL),
(43, 0, 116, 'Σύνδεση νέας υπαλλήλου με εκτυπωτές', '2017-10-10', '2017-10-11', 'Έγινε εγκατάσταση του Lexmark E360dn του τμήματος και του Canon IR3035 διαδρόμου', 2, 3, 1, '2017-10-09 21:00:00', '2017-10-10 21:00:00'),
(44, 0, 10, 'Σύνδεση Papyros με Outlook για την διακίνηση της αλληλογραφίας από τον Δήμο', '2017-10-12', '2017-10-12', 'Έγινε η σύνδεση του Papyros με Outlook στον Η/Υ της Βούλας.', 2, 3, 1, '2017-10-11 21:00:00', '2017-10-11 21:00:00'),
(45, 0, 57, 'Πρόβλημα Η/Υ', '2017-10-15', '2017-10-15', 'Έγινε επανεκκίνηση και αποκαταστάθηκε.', 2, 1, 1, '2017-10-14 21:00:00', '2017-10-14 21:00:00'),
(46, 0, 49, 'Μεταφορά Η/Υ σε άλλο γραφείο', '2017-10-15', '2017-10-18', 'Μεταφέρθηκε στο γραφείο της προϊσταμένης.', 2, 3, 1, '2017-10-14 21:00:00', '2017-10-17 21:00:00'),
(47, 0, 18, 'Εισαγωγή των email των ΠΣ στο Outlook και ομαδοποίηση', '2017-10-12', '2017-10-15', 'Ολοκληρώθηκε', 2, 3, 1, '2017-10-11 21:00:00', '2017-10-14 21:00:00'),
(48, 0, 37, 'Πρόβλημα internet', '2017-10-17', NULL, 'Μετά από διακοπή από τη ΔΕΗ.', 1, 1, 1, '2017-10-16 21:00:00', NULL),
(49, 0, 78, 'Πρόβλημα Outlook', '2017-10-17', '2017-11-14', '', 2, 1, 1, '2017-10-16 21:00:00', '2017-11-13 22:00:00'),
(50, 0, 71, 'Πρόβλημα Eset', '2017-10-19', '2017-10-31', 'Εμφανίζει ιούς. Καθαρίστηκε και μπήκαν εκ νέου οι ρυθμίσεις. Έγινε αλλαγή κωδικού πρόσβασης.', 2, 1, 1, '2017-10-18 21:00:00', '2017-10-30 22:00:00'),
(51, 0, 70, 'Πρόβλημα Η/Υ (πρέπει να έρθει στα κεντρικά)', '2017-10-22', '2017-11-28', 'Δεν ξεκινάει. Το τακτοποίησε μια μαμά', 2, 2, 1, '2017-10-21 21:00:00', '2017-11-27 22:00:00'),
(52, 0, 34, 'Πρόβλημα Word', '2017-10-23', NULL, 'Παγώνει και δεν επιτρέπει να συνεχίσει. θα γίνει έρευνα.', 1, 4, 1, '2017-10-22 21:00:00', NULL),
(53, 0, 75, 'Πρόβλημα Word', '2017-10-30', '2017-11-07', 'Έγινε ρύθμιση του eset, ενημέρωση υπολογιστή και εγκατάσταση του νεου e-mail.', 2, 1, 1, '2017-10-29 22:00:00', '2017-11-06 22:00:00'),
(54, 0, 44, 'Έχει υιό (SOS)', '2017-10-31', '2017-11-05', 'Έγινε εγκατάσταση του eset της υπηρεσίας και έγινε σκανάρισμα και εκκαθάριση.', 2, 1, 1, '2017-10-30 22:00:00', '2017-11-04 22:00:00'),
(55, 0, 57, 'Πρόβλημα υπολογιστή, παγώνει στην έναρξη', '2017-11-01', '2017-11-02', 'Έγινε επαναφορά προηγούμενης ενημέρωσης (update 10/10/2017) και ξεκίνησε κανονικά.', 2, 3, 1, '2017-10-31 22:00:00', '2017-11-01 22:00:00'),
(56, 0, 82, 'Κλείνει ο Π.Σ.', '2017-11-06', '2017-11-26', 'Έγινε η παραλαβή υλικού πληροφορικής.\r\n08/11/2017 Διεγράφη από την ιστοσελίδα κατόπιν μηνύματος ηλεκτρονικής αλληλογραφίας της Δ/νσης Π.Σ.', 2, 4, 1, '2017-11-05 22:00:00', '2017-11-25 22:00:00'),
(57, 0, 90, 'Πρόβλημα Outlook', '2017-11-09', '2017-11-12', 'Έγιναν οι απαραίτητες ρυθμίσεις. Είχε πρόβλημα το eset.', 2, 2, 1, '2017-11-08 22:00:00', '2017-11-11 22:00:00'),
(58, 0, 17, 'Αλλαγή υπολογιστή Διεύθυνσης', '2017-11-08', '2017-11-19', 'Παραδόθηκε ένας από το Τμήμα Πρωτοκόλλου', 2, 3, 1, '2017-11-07 22:00:00', '2017-11-18 22:00:00'),
(59, 0, 72, 'Πρόβλημα οθόνης', '2017-11-12', '2017-11-12', 'Ο πύργος και το router λειτουργούν αλλά η οθόνη όχι. Θα επικοινωνήσει πάλι.\r\nΑποκαταστάθηκε τηλεφωνικά', 2, 1, 1, '2017-11-11 22:00:00', '2017-11-11 22:00:00'),
(60, 0, 42, 'Πρόβλημα e-mail', '2017-11-12', '2017-11-12', 'Έγινε εκκαθάριση του e-mail. Υπάρχει πρόβλημα στα εξερχόμενα.\r\nΑποκαταστάθηκε.', 2, 4, 1, '2017-11-11 22:00:00', '2017-11-11 22:00:00'),
(61, 0, 63, 'Πρόβλημα εκκίνησης', '2017-11-12', '2017-11-12', 'Αποκαταστάθηκε τηλεφωνικά', 2, 1, 1, '2017-11-11 22:00:00', '2017-11-11 22:00:00'),
(62, 0, 98, 'Εργασίες δικτύου', '2017-11-13', NULL, '15/11/2017 έγινε ενοποίηση δικτύου, δημιουργία backup φακέλου στον Η/Υ του Γεωργακόπουλου.', 1, 1, 1, '2017-11-12 22:00:00', NULL),
(63, 0, 13, 'Δημιουργία email για την υπάλληλο Ωραιοπούλου', '2017-11-14', '2017-11-14', 'Δημιουργήθηκε το k.oraiopoulou@cosmotemail.gr και ενημερώθηκε προσωπικά.\r\nΕνημερώθηκε και το Α.Τ.Δ.', 2, 1, 1, '2017-11-13 22:00:00', '2017-11-13 22:00:00'),
(64, 0, 63, 'Πρόβλημα σύνδεσης Η/Υ στο internet', '2017-11-15', NULL, '', 1, 1, 1, '2017-11-14 22:00:00', NULL),
(65, 0, 55, 'Πρόβλημα Outlook', '2017-11-15', '2017-11-27', 'Αποκαταστάθηκε. Εγκαταστάθηκε το νέο email.', 2, 1, 1, '2017-11-14 22:00:00', '2017-11-26 22:00:00'),
(66, 0, 67, 'Πρόβλημα e-mail', '2017-11-16', '2017-11-20', 'Αποκαταστάθηκε με το teamviewer', 2, 1, 1, '2017-11-15 22:00:00', '2017-11-19 22:00:00'),
(67, 0, 25, 'Πρόβλημα e-mail', '2017-11-19', '2017-11-22', 'Αποκαταστάθηκε μέσω απομακρυσμένης διαχείρισης.', 2, 1, 1, '2017-11-18 22:00:00', '2017-11-21 22:00:00'),
(68, 0, 26, 'Πρόβλημα σύνδεσης Η/Υ στο internet', '2017-11-19', '2017-11-27', 'Αποκαταστάθηκε.', 2, 1, 1, '2017-11-18 22:00:00', '2017-11-26 22:00:00'),
(69, 0, 92, 'Πρόβλημα Outlook', '2017-11-19', '2017-11-28', 'Αποκαταστάθηκε.', 2, 1, 1, '2017-11-18 22:00:00', '2017-11-27 22:00:00'),
(70, 0, 59, 'Πρόβλημα σύνδεσης Η/Υ στο internet', '2017-11-20', '2017-11-29', 'Αποκαταστάθηκε, Έγινε εγκατάσταση του νέου email.', 2, 1, 1, '2017-11-19 22:00:00', '2017-11-28 22:00:00'),
(71, 0, 87, 'Πρόβλημα Outlook', '2017-11-26', '2017-12-05', 'Αποκαταστάθηκε τηλεφωνικά.', 2, 1, 1, '2017-11-25 22:00:00', '2017-12-04 22:00:00'),
(72, 0, 52, 'Πρόβλημα Outlook', '2017-11-27', '2017-11-27', 'Αποκαταστάθηκε. Εγκαταστάθηκε το νέο email.', 2, 3, 1, '2017-11-26 22:00:00', '2017-11-26 22:00:00'),
(73, 0, 58, 'Πρόβλημα Outlook', '2017-11-27', '2017-11-27', 'Αποκαταστάθηκε. Εγκαταστάθηκε το νέο email.', 2, 3, 1, '2017-11-26 22:00:00', '2017-11-26 22:00:00'),
(74, 0, 69, 'Έγινε επαναφορά σε εργοστασιακή κατάσταση', '2017-11-21', '2017-11-28', 'Έγιναν όλες οι απαραίτητες εγκαταστάσεις και ρυθμίσεις.', 2, 4, 1, '2017-11-20 22:00:00', '2017-11-27 22:00:00'),
(75, 0, 42, 'Πρόβλημα internet', '2017-11-28', '2017-11-28', 'Αποκαταστάθηκε.', 2, 1, 1, '2017-11-27 22:00:00', '2020-02-23 22:00:00'),
(76, 0, 27, 'Πρόβλημα Outlook', '2017-11-28', NULL, '', 1, 1, 1, '2017-11-27 22:00:00', '2020-02-23 22:00:00'),
(77, 0, 56, 'Πρόβλημα Outlook', '2017-11-29', '2017-11-29', 'Αποκαταστάθηκε. (admadm). Αποκαταστάθηκε, Έγινε εγκατάσταση του νέου email.', 2, 1, 1, '2017-11-28 22:00:00', '2020-02-24 09:55:12'),
(78, 0, 42, 'Πρόβλημα Outlook', '2017-11-30', NULL, 'Αποκαταστάθηκε....', 2, 1, 1, '2017-11-29 22:00:00', '2020-02-24 09:45:38'),
(79, 0, 69, 'Πρόβλημα Η/Υ', '2017-04-12', '2017-04-12', 'Είναι έτοιμος. Να τον πάμε στον Π.Σ.\r\n12/12/2017: Παραδόθηκε', 2, 2, 1, '2017-12-03 22:00:00', '2020-02-24 13:45:32'),
(80, 0, 62, 'Πρόβλημα internet', '2017-11-12', '2017-11-12', '', 1, 1, 1, '2017-12-10 22:00:00', '2020-02-24 08:25:47');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `workstatus`
--

DROP TABLE IF EXISTS `workstatus`;
CREATE TABLE IF NOT EXISTS `workstatus` (
  `ws_id` int(11) NOT NULL AUTO_INCREMENT,
  `ws_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `ws_icon` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ws_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Άδειασμα δεδομένων του πίνακα `workstatus`
--

INSERT INTO `workstatus` (`ws_id`, `ws_name`, `ws_icon`) VALUES
(1, 'Εκκρεμεί', 'fa fa-question'),
(2, 'Ολοκληρωμένη', 'fa fa-check'),
(3, 'Ακυρώθηκε', 'fa fa-times');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
