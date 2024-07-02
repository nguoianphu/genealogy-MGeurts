-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: mysql
-- Generation Time: Jul 02, 2024 at 11:11 AM
-- Server version: 8.0.32
-- PHP Version: 8.2.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `genealogy`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `id` bigint UNSIGNED NOT NULL,
  `log_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject_id` bigint UNSIGNED DEFAULT NULL,
  `event` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `causer_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `causer_id` bigint UNSIGNED DEFAULT NULL,
  `properties` json DEFAULT NULL,
  `batch_uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activity_log`
--

INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `subject_id`, `event`, `causer_type`, `causer_id`, `properties`, `batch_uuid`, `created_at`, `updated_at`) VALUES
(1, 'activity', 'created', 'App\\Models\\Person', 1, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"dob\": \"1926-04-21\", \"dod\": \"2022-09-08\", \"pob\": \"London (UK)\", \"pod\": \"Balmoral Castle (UK)\", \"sex\": \"f\", \"yob\": 1926, \"yod\": 2022, \"city\": null, \"phone\": null, \"photo\": \"1_001_demo.webp\", \"state\": null, \"number\": null, \"street\": null, \"surname\": \"Queen\", \"team_id\": 3, \"nickname\": null, \"province\": null, \"birthname\": null, \"father_id\": 32, \"firstname\": \"Elizabeth II\", \"gender_id\": null, \"mother_id\": 31, \"country_id\": null, \"parents_id\": 13, \"postal_code\": null}}', NULL, '2024-07-01 17:35:42', '2024-07-01 17:35:42'),
(2, 'activity', 'created', 'App\\Models\\Person', 2, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"dob\": \"1921-06-10\", \"dod\": \"2021-04-09\", \"pob\": \"Korfu (GR)\", \"pod\": \"Windsor Castle (UK)\", \"sex\": \"m\", \"yob\": 1921, \"yod\": 2021, \"city\": null, \"phone\": null, \"photo\": \"2_001_demo.webp\", \"state\": null, \"number\": null, \"street\": null, \"surname\": \"Duke of Edinburgh\", \"team_id\": 3, \"nickname\": null, \"province\": null, \"birthname\": null, \"father_id\": null, \"firstname\": \"Philip\", \"gender_id\": null, \"mother_id\": null, \"country_id\": null, \"parents_id\": null, \"postal_code\": null}}', NULL, '2024-07-01 17:35:42', '2024-07-01 17:35:42'),
(3, 'activity', 'created', 'App\\Models\\Person', 3, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"dob\": \"1948-11-14\", \"dod\": null, \"pob\": \"London (UK)\", \"pod\": null, \"sex\": \"m\", \"yob\": 1948, \"yod\": null, \"city\": null, \"phone\": null, \"photo\": \"3_001_demo.webp\", \"state\": null, \"number\": null, \"street\": null, \"surname\": \"King\", \"team_id\": 3, \"nickname\": null, \"province\": null, \"birthname\": null, \"father_id\": 2, \"firstname\": \"Charles III\", \"gender_id\": null, \"mother_id\": 1, \"country_id\": null, \"parents_id\": 1, \"postal_code\": null}}', NULL, '2024-07-01 17:35:42', '2024-07-01 17:35:42'),
(4, 'activity', 'created', 'App\\Models\\Person', 4, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"dob\": \"1950-08-15\", \"dod\": null, \"pob\": \"London (UK)\", \"pod\": null, \"sex\": \"f\", \"yob\": null, \"yod\": null, \"city\": null, \"phone\": null, \"photo\": \"4_001_demo.webp\", \"state\": null, \"number\": null, \"street\": null, \"surname\": \"Princess Royal\", \"team_id\": 3, \"nickname\": null, \"province\": null, \"birthname\": null, \"father_id\": 2, \"firstname\": \"Anne\", \"gender_id\": null, \"mother_id\": 1, \"country_id\": null, \"parents_id\": 1, \"postal_code\": null}}', NULL, '2024-07-01 17:35:42', '2024-07-01 17:35:42'),
(5, 'activity', 'created', 'App\\Models\\Person', 5, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"dob\": \"1960-02-16\", \"dod\": null, \"pob\": \"London (UK)\", \"pod\": null, \"sex\": \"m\", \"yob\": 1960, \"yod\": null, \"city\": null, \"phone\": null, \"photo\": \"5_001_demo.webp\", \"state\": null, \"number\": null, \"street\": null, \"surname\": \"Duke of York\", \"team_id\": 3, \"nickname\": null, \"province\": null, \"birthname\": null, \"father_id\": 2, \"firstname\": \"Andrew\", \"gender_id\": null, \"mother_id\": 1, \"country_id\": null, \"parents_id\": 1, \"postal_code\": null}}', NULL, '2024-07-01 17:35:42', '2024-07-01 17:35:42'),
(6, 'activity', 'created', 'App\\Models\\Person', 6, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"dob\": \"1964-03-10\", \"dod\": null, \"pob\": \"London (UK)\", \"pod\": null, \"sex\": \"m\", \"yob\": 1964, \"yod\": null, \"city\": null, \"phone\": null, \"photo\": \"6_001_demo.webp\", \"state\": null, \"number\": null, \"street\": null, \"surname\": \"Earl of Wessex\", \"team_id\": 3, \"nickname\": null, \"province\": null, \"birthname\": null, \"father_id\": 2, \"firstname\": \"Edward\", \"gender_id\": null, \"mother_id\": 1, \"country_id\": null, \"parents_id\": 1, \"postal_code\": null}}', NULL, '2024-07-01 17:35:42', '2024-07-01 17:35:42'),
(7, 'activity', 'created', 'App\\Models\\Person', 7, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"dob\": \"1961-07-01\", \"dod\": \"1997-08-31\", \"pob\": \"Sandringham (UK)\", \"pod\": \"Paris (F)\", \"sex\": \"f\", \"yob\": 1961, \"yod\": 1997, \"city\": null, \"phone\": null, \"photo\": \"7_001_demo.webp\", \"state\": null, \"number\": null, \"street\": null, \"surname\": \"Princess of Wales\", \"team_id\": 3, \"nickname\": \"Queen of people\'s hearts\", \"province\": null, \"birthname\": \"Spencer\", \"father_id\": 27, \"firstname\": \"Diana\", \"gender_id\": null, \"mother_id\": 28, \"country_id\": null, \"parents_id\": 11, \"postal_code\": null}}', NULL, '2024-07-01 17:35:42', '2024-07-01 17:35:42'),
(8, 'activity', 'created', 'App\\Models\\Person', 8, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"dob\": \"1982-06-21\", \"dod\": null, \"pob\": \"London (UK)\", \"pod\": null, \"sex\": \"m\", \"yob\": 1982, \"yod\": null, \"city\": null, \"phone\": null, \"photo\": \"8_001_demo.webp\", \"state\": null, \"number\": null, \"street\": null, \"surname\": \"Duke of Cambridge\", \"team_id\": 3, \"nickname\": null, \"province\": null, \"birthname\": null, \"father_id\": 3, \"firstname\": \"William\", \"gender_id\": null, \"mother_id\": 7, \"country_id\": null, \"parents_id\": 2, \"postal_code\": null}}', NULL, '2024-07-01 17:35:42', '2024-07-01 17:35:42'),
(9, 'activity', 'created', 'App\\Models\\Person', 9, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"dob\": \"1984-09-15\", \"dod\": null, \"pob\": \"London (UK)\", \"pod\": null, \"sex\": \"m\", \"yob\": 1984, \"yod\": null, \"city\": null, \"phone\": null, \"photo\": \"9_001_demo.webp\", \"state\": null, \"number\": null, \"street\": null, \"surname\": \"Duke of Sussex\", \"team_id\": 3, \"nickname\": \"Harry\", \"province\": null, \"birthname\": null, \"father_id\": 3, \"firstname\": \"Harry\", \"gender_id\": null, \"mother_id\": 7, \"country_id\": null, \"parents_id\": 2, \"postal_code\": null}}', NULL, '2024-07-01 17:35:42', '2024-07-01 17:35:42'),
(10, 'activity', 'created', 'App\\Models\\Person', 10, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"dob\": \"1947-07-17\", \"dod\": null, \"pob\": \"London\", \"pod\": null, \"sex\": \"f\", \"yob\": 1947, \"yod\": null, \"city\": null, \"phone\": null, \"photo\": \"10_001_demo.webp\", \"state\": null, \"number\": null, \"street\": null, \"surname\": \"Queen consort\", \"team_id\": 3, \"nickname\": null, \"province\": null, \"birthname\": \"Shand\", \"father_id\": 39, \"firstname\": \"Camilla\", \"gender_id\": null, \"mother_id\": 40, \"country_id\": null, \"parents_id\": 16, \"postal_code\": null}}', NULL, '2024-07-01 17:35:42', '2024-07-01 17:35:42'),
(11, 'activity', 'created', 'App\\Models\\Person', 11, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"dob\": \"1982-01-09\", \"dod\": null, \"pob\": \"Reading (UK)\", \"pod\": null, \"sex\": \"f\", \"yob\": 1982, \"yod\": null, \"city\": null, \"phone\": null, \"photo\": \"11_001_demo.webp\", \"state\": null, \"number\": null, \"street\": null, \"surname\": \"Duchess of Cambridge\", \"team_id\": 3, \"nickname\": \"Kate\", \"province\": null, \"birthname\": \"Middleton\", \"father_id\": 30, \"firstname\": \"Catherine\", \"gender_id\": null, \"mother_id\": 29, \"country_id\": null, \"parents_id\": 12, \"postal_code\": null}}', NULL, '2024-07-01 17:35:42', '2024-07-01 17:35:42'),
(12, 'activity', 'created', 'App\\Models\\Person', 12, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"dob\": \"1948-09-22\", \"dod\": null, \"pob\": \"Tetbury (UK)\", \"pod\": null, \"sex\": \"m\", \"yob\": 1948, \"yod\": null, \"city\": null, \"phone\": null, \"photo\": \"12_001_demo.webp\", \"state\": null, \"number\": null, \"street\": null, \"surname\": \"Phillips\", \"team_id\": 3, \"nickname\": null, \"province\": null, \"birthname\": null, \"father_id\": null, \"firstname\": \"Mark\", \"gender_id\": null, \"mother_id\": null, \"country_id\": null, \"parents_id\": null, \"postal_code\": null}}', NULL, '2024-07-01 17:35:42', '2024-07-01 17:35:42'),
(13, 'activity', 'created', 'App\\Models\\Person', 13, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"dob\": \"1977-11-15\", \"dod\": null, \"pob\": \"London (UK)\", \"pod\": null, \"sex\": \"m\", \"yob\": 1977, \"yod\": null, \"city\": null, \"phone\": null, \"photo\": \"13_001_demo.webp\", \"state\": null, \"number\": null, \"street\": null, \"surname\": \"Phillips\", \"team_id\": 3, \"nickname\": null, \"province\": null, \"birthname\": null, \"father_id\": 12, \"firstname\": \"Peter\", \"gender_id\": null, \"mother_id\": 4, \"country_id\": null, \"parents_id\": 4, \"postal_code\": null}}', NULL, '2024-07-01 17:35:42', '2024-07-01 17:35:42'),
(14, 'activity', 'created', 'App\\Models\\Person', 14, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"dob\": \"1978-05-03\", \"dod\": null, \"pob\": \"Montreal (CA)\", \"pod\": null, \"sex\": \"f\", \"yob\": 1978, \"yod\": null, \"city\": null, \"phone\": null, \"photo\": \"14_001_demo.webp\", \"state\": null, \"number\": null, \"street\": null, \"surname\": \"Phillips\", \"team_id\": 3, \"nickname\": null, \"province\": null, \"birthname\": \"Kelly\", \"father_id\": null, \"firstname\": \"Autumn\", \"gender_id\": null, \"mother_id\": null, \"country_id\": null, \"parents_id\": null, \"postal_code\": null}}', NULL, '2024-07-01 17:35:42', '2024-07-01 17:35:42'),
(15, 'activity', 'created', 'App\\Models\\Person', 15, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"dob\": \"2010-12-29\", \"dod\": null, \"pob\": \"Gloucester (UK)\", \"pod\": null, \"sex\": \"f\", \"yob\": 2010, \"yod\": null, \"city\": null, \"phone\": null, \"photo\": \"15_001_demo.webp\", \"state\": null, \"number\": null, \"street\": null, \"surname\": \"Phillips\", \"team_id\": 3, \"nickname\": null, \"province\": null, \"birthname\": null, \"father_id\": 13, \"firstname\": \"Savannah\", \"gender_id\": null, \"mother_id\": 14, \"country_id\": null, \"parents_id\": 5, \"postal_code\": null}}', NULL, '2024-07-01 17:35:42', '2024-07-01 17:35:42'),
(16, 'activity', 'created', 'App\\Models\\Person', 16, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"dob\": \"2012-03-31\", \"dod\": null, \"pob\": \"Gloucester (UK)\", \"pod\": null, \"sex\": \"f\", \"yob\": 2012, \"yod\": null, \"city\": null, \"phone\": null, \"photo\": \"16_001_demo.webp\", \"state\": null, \"number\": null, \"street\": null, \"surname\": \"Phillips\", \"team_id\": 3, \"nickname\": null, \"province\": null, \"birthname\": null, \"father_id\": 13, \"firstname\": \"Isla\", \"gender_id\": null, \"mother_id\": 14, \"country_id\": null, \"parents_id\": 5, \"postal_code\": null}}', NULL, '2024-07-01 17:35:42', '2024-07-01 17:35:42'),
(17, 'activity', 'created', 'App\\Models\\Person', 17, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"dob\": \"1955-03-01\", \"dod\": null, \"pob\": \"London (UK)\", \"pod\": null, \"sex\": \"m\", \"yob\": 1955, \"yod\": null, \"city\": null, \"phone\": null, \"photo\": \"17_001_demo.webp\", \"state\": null, \"number\": null, \"street\": null, \"surname\": \"Laurence\", \"team_id\": 3, \"nickname\": null, \"province\": null, \"birthname\": null, \"father_id\": null, \"firstname\": \"Timothy\", \"gender_id\": null, \"mother_id\": null, \"country_id\": null, \"parents_id\": null, \"postal_code\": null}}', NULL, '2024-07-01 17:35:42', '2024-07-01 17:35:42'),
(18, 'activity', 'created', 'App\\Models\\Person', 18, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"dob\": \"1959-10-15\", \"dod\": null, \"pob\": \"London (UK)\", \"pod\": null, \"sex\": \"f\", \"yob\": 1959, \"yod\": null, \"city\": null, \"phone\": null, \"photo\": \"18_001_demo.webp\", \"state\": null, \"number\": null, \"street\": null, \"surname\": \"Duchess of York\", \"team_id\": 3, \"nickname\": \"Fergie\", \"province\": null, \"birthname\": \"Ferguson\", \"father_id\": 44, \"firstname\": \"Sarah\", \"gender_id\": null, \"mother_id\": 45, \"country_id\": null, \"parents_id\": 18, \"postal_code\": null}}', NULL, '2024-07-01 17:35:42', '2024-07-01 17:35:42'),
(19, 'activity', 'created', 'App\\Models\\Person', 19, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"dob\": \"1988-08-08\", \"dod\": null, \"pob\": \"London (UK)\", \"pod\": null, \"sex\": \"f\", \"yob\": 1988, \"yod\": null, \"city\": null, \"phone\": null, \"photo\": \"19_001_demo.webp\", \"state\": null, \"number\": null, \"street\": null, \"surname\": \"Princess of York\", \"team_id\": 3, \"nickname\": null, \"province\": null, \"birthname\": null, \"father_id\": 5, \"firstname\": \"Beatrice\", \"gender_id\": null, \"mother_id\": 18, \"country_id\": null, \"parents_id\": 7, \"postal_code\": null}}', NULL, '2024-07-01 17:35:42', '2024-07-01 17:35:42'),
(20, 'activity', 'created', 'App\\Models\\Person', 20, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"dob\": \"1990-03-23\", \"dod\": null, \"pob\": \"London (UK)\", \"pod\": null, \"sex\": \"f\", \"yob\": 1990, \"yod\": null, \"city\": null, \"phone\": null, \"photo\": \"20_001_demo.webp\", \"state\": null, \"number\": null, \"street\": null, \"surname\": \"Princess of York\", \"team_id\": 3, \"nickname\": null, \"province\": null, \"birthname\": null, \"father_id\": 5, \"firstname\": \"Eugenie\", \"gender_id\": null, \"mother_id\": 18, \"country_id\": null, \"parents_id\": 7, \"postal_code\": null}}', NULL, '2024-07-01 17:35:42', '2024-07-01 17:35:42'),
(21, 'activity', 'created', 'App\\Models\\Person', 21, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"dob\": \"1981-05-15\", \"dod\": null, \"pob\": \"London (UK)\", \"pod\": null, \"sex\": \"f\", \"yob\": 1981, \"yod\": null, \"city\": null, \"phone\": null, \"photo\": \"21_001_demo.webp\", \"state\": null, \"number\": null, \"street\": null, \"surname\": \"Tindall\", \"team_id\": 3, \"nickname\": null, \"province\": null, \"birthname\": \"Phillips\", \"father_id\": 12, \"firstname\": \"Zara\", \"gender_id\": null, \"mother_id\": 4, \"country_id\": null, \"parents_id\": 4, \"postal_code\": null}}', NULL, '2024-07-01 17:35:42', '2024-07-01 17:35:42'),
(22, 'activity', 'created', 'App\\Models\\Person', 22, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"dob\": \"1978-10-18\", \"dod\": null, \"pob\": \"London (UK)\", \"pod\": null, \"sex\": \"m\", \"yob\": null, \"yod\": null, \"city\": null, \"phone\": null, \"photo\": \"22_001_demo.webp\", \"state\": null, \"number\": null, \"street\": null, \"surname\": \"Tindall\", \"team_id\": 3, \"nickname\": null, \"province\": null, \"birthname\": null, \"father_id\": null, \"firstname\": \"Mike\", \"gender_id\": null, \"mother_id\": null, \"country_id\": null, \"parents_id\": null, \"postal_code\": null}}', NULL, '2024-07-01 17:35:42', '2024-07-01 17:35:42'),
(23, 'activity', 'created', 'App\\Models\\Person', 23, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"dob\": \"1965-01-20\", \"dod\": null, \"pob\": \"Oxford (UK)\", \"pod\": null, \"sex\": \"f\", \"yob\": 1965, \"yod\": null, \"city\": null, \"phone\": null, \"photo\": \"23_001_demo.webp\", \"state\": null, \"number\": null, \"street\": null, \"surname\": \"Countess of Wessex\", \"team_id\": 3, \"nickname\": null, \"province\": null, \"birthname\": \"Rhys-Jones\", \"father_id\": null, \"firstname\": \"Sopie\", \"gender_id\": null, \"mother_id\": null, \"country_id\": null, \"parents_id\": null, \"postal_code\": null}}', NULL, '2024-07-01 17:35:42', '2024-07-01 17:35:42'),
(24, 'activity', 'created', 'App\\Models\\Person', 24, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"dob\": \"2003-11-08\", \"dod\": null, \"pob\": \"Frimley (UK)\", \"pod\": null, \"sex\": \"f\", \"yob\": 2003, \"yod\": null, \"city\": null, \"phone\": null, \"photo\": \"24_001_demo.webp\", \"state\": null, \"number\": null, \"street\": null, \"surname\": \"Lady of Windsdor\", \"team_id\": 3, \"nickname\": null, \"province\": null, \"birthname\": null, \"father_id\": 6, \"firstname\": \"Louise\", \"gender_id\": null, \"mother_id\": 23, \"country_id\": null, \"parents_id\": 9, \"postal_code\": null}}', NULL, '2024-07-01 17:35:42', '2024-07-01 17:35:42'),
(25, 'activity', 'created', 'App\\Models\\Person', 25, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"dob\": \"2007-12-17\", \"dod\": null, \"pob\": \"Frimley (UK)\", \"pod\": null, \"sex\": \"m\", \"yob\": 2007, \"yod\": null, \"city\": null, \"phone\": null, \"photo\": \"25_001_demo.webp\", \"state\": null, \"number\": null, \"street\": null, \"surname\": \"Viscount Severn\", \"team_id\": 3, \"nickname\": null, \"province\": null, \"birthname\": null, \"father_id\": 6, \"firstname\": \"James\", \"gender_id\": null, \"mother_id\": 23, \"country_id\": null, \"parents_id\": 9, \"postal_code\": null}}', NULL, '2024-07-01 17:35:42', '2024-07-01 17:35:42'),
(26, 'activity', 'created', 'App\\Models\\Person', 26, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"dob\": \"2013-07-22\", \"dod\": null, \"pob\": \"London (UK)\", \"pod\": null, \"sex\": \"m\", \"yob\": 2013, \"yod\": null, \"city\": null, \"phone\": null, \"photo\": \"26_001_demo.webp\", \"state\": null, \"number\": null, \"street\": null, \"surname\": \"Prince of Cambridge\", \"team_id\": 3, \"nickname\": null, \"province\": null, \"birthname\": null, \"father_id\": 8, \"firstname\": \"George\", \"gender_id\": null, \"mother_id\": 11, \"country_id\": null, \"parents_id\": 10, \"postal_code\": null}}', NULL, '2024-07-01 17:35:42', '2024-07-01 17:35:42'),
(27, 'activity', 'created', 'App\\Models\\Person', 27, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"dob\": \"1924-01-24\", \"dod\": \"1992-03-29\", \"pob\": \"London (UK)\", \"pod\": \"London (UK)\", \"sex\": \"m\", \"yob\": 1924, \"yod\": 1992, \"city\": null, \"phone\": null, \"photo\": \"27_001_demo.webp\", \"state\": null, \"number\": null, \"street\": null, \"surname\": \"Spencer\", \"team_id\": 3, \"nickname\": null, \"province\": null, \"birthname\": null, \"father_id\": null, \"firstname\": \"John\", \"gender_id\": null, \"mother_id\": null, \"country_id\": null, \"parents_id\": null, \"postal_code\": null}}', NULL, '2024-07-01 17:35:42', '2024-07-01 17:35:42'),
(28, 'activity', 'created', 'App\\Models\\Person', 28, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"dob\": \"1936-01-20\", \"dod\": \"2004-06-03\", \"pob\": null, \"pod\": null, \"sex\": \"f\", \"yob\": 1936, \"yod\": 2004, \"city\": null, \"phone\": null, \"photo\": \"28_001_demo.webp\", \"state\": null, \"number\": null, \"street\": null, \"surname\": \"Spencer\", \"team_id\": 3, \"nickname\": null, \"province\": null, \"birthname\": \"Roche\", \"father_id\": null, \"firstname\": \"Frances Ruth\", \"gender_id\": null, \"mother_id\": null, \"country_id\": null, \"parents_id\": null, \"postal_code\": null}}', NULL, '2024-07-01 17:35:42', '2024-07-01 17:35:42'),
(29, 'activity', 'created', 'App\\Models\\Person', 29, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"dob\": \"1955-01-31\", \"dod\": null, \"pob\": \"Perrivate (UK)\", \"pod\": null, \"sex\": \"f\", \"yob\": 1955, \"yod\": null, \"city\": null, \"phone\": null, \"photo\": \"29_001_demo.webp\", \"state\": null, \"number\": null, \"street\": null, \"surname\": \"Middleton\", \"team_id\": 3, \"nickname\": null, \"province\": null, \"birthname\": \"Goldsmith\", \"father_id\": null, \"firstname\": \"Carole\", \"gender_id\": null, \"mother_id\": null, \"country_id\": null, \"parents_id\": null, \"postal_code\": null}}', NULL, '2024-07-01 17:35:42', '2024-07-01 17:35:42'),
(30, 'activity', 'created', 'App\\Models\\Person', 30, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"dob\": \"1949-06-23\", \"dod\": null, \"pob\": \"Leeds (UK)\", \"pod\": null, \"sex\": \"m\", \"yob\": 1949, \"yod\": null, \"city\": null, \"phone\": null, \"photo\": \"30_001_demo.webp\", \"state\": null, \"number\": null, \"street\": null, \"surname\": \"Middleton\", \"team_id\": 3, \"nickname\": null, \"province\": null, \"birthname\": null, \"father_id\": null, \"firstname\": \"Michael\", \"gender_id\": null, \"mother_id\": null, \"country_id\": null, \"parents_id\": null, \"postal_code\": null}}', NULL, '2024-07-01 17:35:42', '2024-07-01 17:35:42'),
(31, 'activity', 'created', 'App\\Models\\Person', 31, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"dob\": \"1900-08-04\", \"dod\": \"2002-03-30\", \"pob\": \"London (UK)\", \"pod\": \"Windsor (UK)\", \"sex\": \"f\", \"yob\": 1900, \"yod\": 2002, \"city\": null, \"phone\": null, \"photo\": \"31_001_demo.webp\", \"state\": null, \"number\": null, \"street\": null, \"surname\": \"Bowes-Lyon\", \"team_id\": 3, \"nickname\": \"Queen Mum\", \"province\": null, \"birthname\": \"Bowes-Lyon\", \"father_id\": 35, \"firstname\": \"Elizabeth\", \"gender_id\": null, \"mother_id\": 34, \"country_id\": null, \"parents_id\": 14, \"postal_code\": null}}', NULL, '2024-07-01 17:35:42', '2024-07-01 17:35:42'),
(32, 'activity', 'created', 'App\\Models\\Person', 32, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"dob\": \"1895-12-14\", \"dod\": \"1952-02-06\", \"pob\": \"York Cottage (UK)\", \"pod\": \"Sandringham House (UK)\", \"sex\": \"m\", \"yob\": 1895, \"yod\": 1952, \"city\": null, \"phone\": null, \"photo\": \"32_001_demo.webp\", \"state\": null, \"number\": null, \"street\": null, \"surname\": \"King\", \"team_id\": 3, \"nickname\": null, \"province\": null, \"birthname\": null, \"father_id\": 37, \"firstname\": \"George VI\", \"gender_id\": null, \"mother_id\": 36, \"country_id\": null, \"parents_id\": 15, \"postal_code\": null}}', NULL, '2024-07-01 17:35:42', '2024-07-01 17:35:42'),
(33, 'activity', 'created', 'App\\Models\\Person', 33, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"dob\": \"1930-08-21\", \"dod\": \"2002-02-09\", \"pob\": \"Glamis Castle (UK)\", \"pod\": \"London (UK)\", \"sex\": \"f\", \"yob\": null, \"yod\": 2002, \"city\": null, \"phone\": null, \"photo\": \"33_001_demo.webp\", \"state\": null, \"number\": null, \"street\": null, \"surname\": \"Countess of Snowdon\", \"team_id\": 3, \"nickname\": null, \"province\": null, \"birthname\": null, \"father_id\": 32, \"firstname\": \"Margaret\", \"gender_id\": null, \"mother_id\": 31, \"country_id\": null, \"parents_id\": 13, \"postal_code\": null}}', NULL, '2024-07-01 17:35:42', '2024-07-01 17:35:42'),
(34, 'activity', 'created', 'App\\Models\\Person', 34, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"dob\": \"1862-09-11\", \"dod\": \"1938-06-23\", \"pob\": \"London (UK)\", \"pod\": \"London (UK)\", \"sex\": \"f\", \"yob\": 1862, \"yod\": 1938, \"city\": null, \"phone\": null, \"photo\": \"34_001_demo.webp\", \"state\": null, \"number\": null, \"street\": null, \"surname\": \"Bowes-Lyon\", \"team_id\": 3, \"nickname\": null, \"province\": null, \"birthname\": \"Cavendish-Bentinck\", \"father_id\": null, \"firstname\": \"Cecilia\", \"gender_id\": null, \"mother_id\": null, \"country_id\": null, \"parents_id\": null, \"postal_code\": null}}', NULL, '2024-07-01 17:35:42', '2024-07-01 17:35:42'),
(35, 'activity', 'created', 'App\\Models\\Person', 35, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"dob\": \"1855-03-14\", \"dod\": \"1944-11-07\", \"pob\": \"Chelsea (UK)\", \"pod\": \"Glamis Castle (UK)\", \"sex\": \"m\", \"yob\": 1855, \"yod\": 1944, \"city\": null, \"phone\": null, \"photo\": \"35_001_demo.webp\", \"state\": null, \"number\": null, \"street\": null, \"surname\": \"Bowes-Lyon\", \"team_id\": 3, \"nickname\": null, \"province\": null, \"birthname\": null, \"father_id\": null, \"firstname\": \"Claude\", \"gender_id\": null, \"mother_id\": null, \"country_id\": null, \"parents_id\": null, \"postal_code\": null}}', NULL, '2024-07-01 17:35:42', '2024-07-01 17:35:42'),
(36, 'activity', 'created', 'App\\Models\\Person', 36, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"dob\": \"1867-05-26\", \"dod\": \"1953-03-24\", \"pob\": \"London (UK)\", \"pod\": \"London (UK)\", \"sex\": \"f\", \"yob\": 1867, \"yod\": 1953, \"city\": null, \"phone\": null, \"photo\": \"36_001_demo.webp\", \"state\": null, \"number\": null, \"street\": null, \"surname\": \"of Teck\", \"team_id\": 3, \"nickname\": \"May\", \"province\": null, \"birthname\": null, \"father_id\": null, \"firstname\": \"Mary\", \"gender_id\": null, \"mother_id\": null, \"country_id\": null, \"parents_id\": null, \"postal_code\": null}}', NULL, '2024-07-01 17:35:42', '2024-07-01 17:35:42'),
(37, 'activity', 'created', 'App\\Models\\Person', 37, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"dob\": \"1865-06-03\", \"dod\": \"1936-01-20\", \"pob\": \"London (UK)\", \"pod\": null, \"sex\": \"m\", \"yob\": 1865, \"yod\": 1936, \"city\": null, \"phone\": null, \"photo\": \"37_001_demo.webp\", \"state\": null, \"number\": null, \"street\": null, \"surname\": \"King\", \"team_id\": 3, \"nickname\": null, \"province\": null, \"birthname\": null, \"father_id\": null, \"firstname\": \"George V\", \"gender_id\": null, \"mother_id\": null, \"country_id\": null, \"parents_id\": null, \"postal_code\": null}}', NULL, '2024-07-01 17:35:42', '2024-07-01 17:35:42'),
(38, 'activity', 'created', 'App\\Models\\Person', 38, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"dob\": \"2015-05-04\", \"dod\": null, \"pob\": \"London (UK)\", \"pod\": null, \"sex\": \"f\", \"yob\": 2015, \"yod\": null, \"city\": null, \"phone\": null, \"photo\": \"38_001_demo.webp\", \"state\": null, \"number\": null, \"street\": null, \"surname\": \"Princess of Cambridge\", \"team_id\": 3, \"nickname\": null, \"province\": null, \"birthname\": \"Princess of Cambridge\", \"father_id\": 8, \"firstname\": \"Charlotte\", \"gender_id\": null, \"mother_id\": 11, \"country_id\": null, \"parents_id\": 10, \"postal_code\": null}}', NULL, '2024-07-01 17:35:42', '2024-07-01 17:35:42'),
(39, 'activity', 'created', 'App\\Models\\Person', 39, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"dob\": \"1917-01-22\", \"dod\": \"2006-06-11\", \"pob\": \"London (UK)\", \"pod\": \"Stourpaine (UK)\", \"sex\": \"m\", \"yob\": null, \"yod\": null, \"city\": null, \"phone\": null, \"photo\": \"39_001_demo.webp\", \"state\": null, \"number\": null, \"street\": null, \"surname\": \"Shand\", \"team_id\": 3, \"nickname\": null, \"province\": null, \"birthname\": null, \"father_id\": null, \"firstname\": \"Bruce\", \"gender_id\": null, \"mother_id\": null, \"country_id\": null, \"parents_id\": null, \"postal_code\": null}}', NULL, '2024-07-01 17:35:42', '2024-07-01 17:35:42'),
(40, 'activity', 'created', 'App\\Models\\Person', 40, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"dob\": \"1921-08-11\", \"dod\": \"1994-07-14\", \"pob\": \"London (UK)\", \"pod\": \"Lewes (UK)\", \"sex\": \"f\", \"yob\": 1921, \"yod\": 1994, \"city\": null, \"phone\": null, \"photo\": \"40_001_demo.webp\", \"state\": null, \"number\": null, \"street\": null, \"surname\": \"Shand\", \"team_id\": 3, \"nickname\": null, \"province\": null, \"birthname\": \"Cubitt\", \"father_id\": null, \"firstname\": \"Rosalind\", \"gender_id\": null, \"mother_id\": null, \"country_id\": null, \"parents_id\": null, \"postal_code\": null}}', NULL, '2024-07-01 17:35:42', '2024-07-01 17:35:42'),
(41, 'activity', 'created', 'App\\Models\\Person', 41, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"dob\": \"1939-12-27\", \"dod\": null, \"pob\": \"Surrey (UK)\", \"pod\": null, \"sex\": \"m\", \"yob\": 1939, \"yod\": null, \"city\": null, \"phone\": null, \"photo\": \"41_001_demo.webp\", \"state\": null, \"number\": null, \"street\": null, \"surname\": \"Bowles\", \"team_id\": 3, \"nickname\": null, \"province\": null, \"birthname\": null, \"father_id\": null, \"firstname\": \"Andrew\", \"gender_id\": null, \"mother_id\": null, \"country_id\": null, \"parents_id\": null, \"postal_code\": null}}', NULL, '2024-07-01 17:35:42', '2024-07-01 17:35:42'),
(42, 'activity', 'created', 'App\\Models\\Person', 42, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"dob\": \"1974-12-18\", \"dod\": null, \"pob\": null, \"pod\": null, \"sex\": \"m\", \"yob\": null, \"yod\": null, \"city\": null, \"phone\": null, \"photo\": \"42_001_demo.webp\", \"state\": null, \"number\": null, \"street\": null, \"surname\": \"Bowles\", \"team_id\": 3, \"nickname\": null, \"province\": null, \"birthname\": null, \"father_id\": 41, \"firstname\": \"Tom\", \"gender_id\": null, \"mother_id\": 10, \"country_id\": null, \"parents_id\": 17, \"postal_code\": null}}', NULL, '2024-07-01 17:35:42', '2024-07-01 17:35:42'),
(43, 'activity', 'created', 'App\\Models\\Person', 43, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"dob\": \"1978-01-01\", \"dod\": null, \"pob\": null, \"pod\": null, \"sex\": \"f\", \"yob\": null, \"yod\": null, \"city\": null, \"phone\": null, \"photo\": \"43_001_demo.webp\", \"state\": null, \"number\": null, \"street\": null, \"surname\": \"Lopes\", \"team_id\": 3, \"nickname\": null, \"province\": null, \"birthname\": \"Bowles\", \"father_id\": 41, \"firstname\": \"Laura\", \"gender_id\": null, \"mother_id\": 10, \"country_id\": null, \"parents_id\": 17, \"postal_code\": null}}', NULL, '2024-07-01 17:35:42', '2024-07-01 17:35:42'),
(44, 'activity', 'created', 'App\\Models\\Person', 44, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"dob\": \"1931-10-10\", \"dod\": \"2003-03-16\", \"pob\": \"London (UK)\", \"pod\": \"Basingstoke (UK)\", \"sex\": \"m\", \"yob\": 1931, \"yod\": 2003, \"city\": null, \"phone\": null, \"photo\": \"44_001_demo.webp\", \"state\": null, \"number\": null, \"street\": null, \"surname\": \"Ferguson\", \"team_id\": 3, \"nickname\": null, \"province\": null, \"birthname\": null, \"father_id\": null, \"firstname\": \"Ronald\", \"gender_id\": null, \"mother_id\": null, \"country_id\": null, \"parents_id\": null, \"postal_code\": null}}', NULL, '2024-07-01 17:35:42', '2024-07-01 17:35:42'),
(45, 'activity', 'created', 'App\\Models\\Person', 45, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"dob\": \"1937-06-09\", \"dod\": \"1998-09-19\", \"pob\": \"Bramcote (UK)\", \"pod\": \"Tres Lomas (Argentinia)\", \"sex\": \"f\", \"yob\": 1937, \"yod\": 1998, \"city\": null, \"phone\": null, \"photo\": \"45_001_demo.webp\", \"state\": null, \"number\": null, \"street\": null, \"surname\": \"Ferguson\", \"team_id\": 3, \"nickname\": null, \"province\": null, \"birthname\": \"Wright\", \"father_id\": null, \"firstname\": \"Susan\", \"gender_id\": null, \"mother_id\": null, \"country_id\": null, \"parents_id\": null, \"postal_code\": null}}', NULL, '2024-07-01 17:35:43', '2024-07-01 17:35:43'),
(46, 'activity', 'created', 'App\\Models\\Person', 46, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"dob\": \"2018-04-23\", \"dod\": null, \"pob\": \"London (UK)\", \"pod\": null, \"sex\": \"m\", \"yob\": null, \"yod\": null, \"city\": null, \"phone\": null, \"photo\": \"46_001_demo.webp\", \"state\": null, \"number\": null, \"street\": null, \"surname\": \"Prince of Cambridge\", \"team_id\": 3, \"nickname\": null, \"province\": null, \"birthname\": null, \"father_id\": 8, \"firstname\": \"Louis\", \"gender_id\": null, \"mother_id\": 11, \"country_id\": null, \"parents_id\": 10, \"postal_code\": null}}', NULL, '2024-07-01 17:35:43', '2024-07-01 17:35:43'),
(47, 'activity', 'created', 'App\\Models\\Person', 47, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"dob\": \"1981-08-04\", \"dod\": null, \"pob\": \"Los Angeles (US)\", \"pod\": null, \"sex\": \"f\", \"yob\": null, \"yod\": null, \"city\": null, \"phone\": null, \"photo\": \"47_001_demo.webp\", \"state\": null, \"number\": null, \"street\": null, \"surname\": \"Duchess of Sussex\", \"team_id\": 3, \"nickname\": null, \"province\": null, \"birthname\": \"Markle\", \"father_id\": 50, \"firstname\": \"Meghan\", \"gender_id\": null, \"mother_id\": 49, \"country_id\": null, \"parents_id\": 21, \"postal_code\": null}}', NULL, '2024-07-01 17:35:43', '2024-07-01 17:35:43'),
(48, 'activity', 'created', 'App\\Models\\Person', 48, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"dob\": null, \"dod\": null, \"pob\": null, \"pod\": null, \"sex\": \"m\", \"yob\": 1977, \"yod\": null, \"city\": null, \"phone\": null, \"photo\": \"48_001_demo.webp\", \"state\": null, \"number\": null, \"street\": null, \"surname\": \"Engelson\", \"team_id\": 3, \"nickname\": null, \"province\": null, \"birthname\": null, \"father_id\": null, \"firstname\": \"Trevor\", \"gender_id\": null, \"mother_id\": null, \"country_id\": null, \"parents_id\": null, \"postal_code\": null}}', NULL, '2024-07-01 17:35:43', '2024-07-01 17:35:43'),
(49, 'activity', 'created', 'App\\Models\\Person', 49, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"dob\": null, \"dod\": null, \"pob\": null, \"pod\": null, \"sex\": \"f\", \"yob\": 1957, \"yod\": null, \"city\": null, \"phone\": null, \"photo\": \"49_001_demo.webp\", \"state\": null, \"number\": null, \"street\": null, \"surname\": \"Markle\", \"team_id\": 3, \"nickname\": null, \"province\": null, \"birthname\": \"Ragland\", \"father_id\": null, \"firstname\": \"Doria\", \"gender_id\": null, \"mother_id\": null, \"country_id\": null, \"parents_id\": null, \"postal_code\": null}}', NULL, '2024-07-01 17:35:43', '2024-07-01 17:35:43'),
(50, 'activity', 'created', 'App\\Models\\Person', 50, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"dob\": \"1944-07-18\", \"dod\": null, \"pob\": null, \"pod\": null, \"sex\": \"m\", \"yob\": null, \"yod\": null, \"city\": null, \"phone\": null, \"photo\": \"50_001_demo.webp\", \"state\": null, \"number\": null, \"street\": null, \"surname\": \"Markle\", \"team_id\": 3, \"nickname\": null, \"province\": null, \"birthname\": null, \"father_id\": null, \"firstname\": \"Thomas\", \"gender_id\": null, \"mother_id\": null, \"country_id\": null, \"parents_id\": null, \"postal_code\": null}}', NULL, '2024-07-01 17:35:43', '2024-07-01 17:35:43'),
(51, 'activity', 'created', 'App\\Models\\Person', 51, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"dob\": \"1945-10-30\", \"dod\": null, \"pob\": null, \"pod\": null, \"sex\": \"f\", \"yob\": 1945, \"yod\": null, \"city\": null, \"phone\": null, \"photo\": \"51_001_demo.webp\", \"state\": null, \"number\": null, \"street\": null, \"surname\": \"Markle\", \"team_id\": 3, \"nickname\": null, \"province\": null, \"birthname\": \"Loveless\", \"father_id\": null, \"firstname\": \"Roslyn\", \"gender_id\": null, \"mother_id\": null, \"country_id\": null, \"parents_id\": null, \"postal_code\": null}}', NULL, '2024-07-01 17:35:43', '2024-07-01 17:35:43'),
(52, 'activity', 'created', 'App\\Models\\Person', 52, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"dob\": \"1944-07-18\", \"dod\": null, \"pob\": \"Newport PA (USA)\", \"pod\": null, \"sex\": \"m\", \"yob\": 1944, \"yod\": null, \"city\": null, \"phone\": null, \"photo\": \"52_001_demo.webp\", \"state\": null, \"number\": null, \"street\": null, \"surname\": \"Markle\", \"team_id\": 3, \"nickname\": null, \"province\": null, \"birthname\": null, \"father_id\": 50, \"firstname\": \"Thomas Jr.\", \"gender_id\": null, \"mother_id\": 51, \"country_id\": null, \"parents_id\": 22, \"postal_code\": null}}', NULL, '2024-07-01 17:35:43', '2024-07-01 17:35:43'),
(53, 'activity', 'created', 'App\\Models\\Person', 53, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"dob\": null, \"dod\": null, \"pob\": null, \"pod\": null, \"sex\": \"f\", \"yob\": 1966, \"yod\": null, \"city\": null, \"phone\": null, \"photo\": \"53_001_demo.webp\", \"state\": null, \"number\": null, \"street\": null, \"surname\": \"Grant\", \"team_id\": 3, \"nickname\": null, \"province\": null, \"birthname\": \"Markle\", \"father_id\": 50, \"firstname\": \"Samantha\", \"gender_id\": null, \"mother_id\": 51, \"country_id\": null, \"parents_id\": 22, \"postal_code\": null}}', NULL, '2024-07-01 17:35:43', '2024-07-01 17:35:43'),
(54, 'activity', 'created', 'App\\Models\\Person', 54, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"dob\": \"2019-05-06\", \"dod\": null, \"pob\": \"London (UK)\", \"pod\": null, \"sex\": \"m\", \"yob\": 2019, \"yod\": null, \"city\": null, \"phone\": null, \"photo\": \"54_001_demo.webp\", \"state\": null, \"number\": null, \"street\": null, \"surname\": \"Mountbatten-Windsor\", \"team_id\": 3, \"nickname\": null, \"province\": null, \"birthname\": null, \"father_id\": 9, \"firstname\": \"Archie\", \"gender_id\": null, \"mother_id\": 47, \"country_id\": null, \"parents_id\": 19, \"postal_code\": null}}', NULL, '2024-07-01 17:35:43', '2024-07-01 17:35:43'),
(55, 'activity', 'created', 'App\\Models\\Person', 55, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"dob\": \"2014-01-17\", \"dod\": null, \"pob\": null, \"pod\": null, \"sex\": \"f\", \"yob\": 2014, \"yod\": null, \"city\": null, \"phone\": null, \"photo\": \"55_001_demo.webp\", \"state\": null, \"number\": null, \"street\": null, \"surname\": \"Tindall\", \"team_id\": 3, \"nickname\": null, \"province\": null, \"birthname\": null, \"father_id\": 22, \"firstname\": \"Mia Grace\", \"gender_id\": null, \"mother_id\": 21, \"country_id\": null, \"parents_id\": 8, \"postal_code\": null}}', NULL, '2024-07-01 17:35:43', '2024-07-01 17:35:43'),
(56, 'activity', 'created', 'App\\Models\\Person', 56, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"dob\": \"2018-06-18\", \"dod\": null, \"pob\": null, \"pod\": null, \"sex\": \"f\", \"yob\": 2018, \"yod\": null, \"city\": null, \"phone\": null, \"photo\": \"56_001_demo.webp\", \"state\": null, \"number\": null, \"street\": null, \"surname\": \"Tindall\", \"team_id\": 3, \"nickname\": null, \"province\": null, \"birthname\": null, \"father_id\": 22, \"firstname\": \"Lena\", \"gender_id\": null, \"mother_id\": 21, \"country_id\": null, \"parents_id\": 8, \"postal_code\": null}}', NULL, '2024-07-01 17:35:43', '2024-07-01 17:35:43'),
(57, 'activity', 'created', 'App\\Models\\Person', 57, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"dob\": null, \"dod\": null, \"pob\": null, \"pod\": null, \"sex\": \"m\", \"yob\": 1986, \"yod\": null, \"city\": null, \"phone\": null, \"photo\": \"57_001_demo.webp\", \"state\": null, \"number\": null, \"street\": null, \"surname\": \"Brooksbank\", \"team_id\": 3, \"nickname\": null, \"province\": null, \"birthname\": null, \"father_id\": null, \"firstname\": \"Jack\", \"gender_id\": null, \"mother_id\": null, \"country_id\": null, \"parents_id\": null, \"postal_code\": null}}', NULL, '2024-07-01 17:35:43', '2024-07-01 17:35:43'),
(58, 'activity', 'created', 'App\\Models\\Person', 58, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"dob\": \"1955-03-19\", \"dod\": null, \"pob\": null, \"pod\": null, \"sex\": \"f\", \"yob\": 1955, \"yod\": null, \"city\": null, \"phone\": null, \"photo\": \"58_001_demo.webp\", \"state\": null, \"number\": null, \"street\": null, \"surname\": \"McCorquodale\", \"team_id\": 3, \"nickname\": null, \"province\": null, \"birthname\": \"Spencer\", \"father_id\": 27, \"firstname\": \"Sarah\", \"gender_id\": null, \"mother_id\": 28, \"country_id\": null, \"parents_id\": 11, \"postal_code\": null}}', NULL, '2024-07-01 17:35:43', '2024-07-01 17:35:43'),
(59, 'activity', 'created', 'App\\Models\\Person', 59, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"dob\": \"1957-02-11\", \"dod\": null, \"pob\": null, \"pod\": null, \"sex\": \"f\", \"yob\": 1957, \"yod\": null, \"city\": null, \"phone\": null, \"photo\": \"59_001_demo.webp\", \"state\": null, \"number\": null, \"street\": null, \"surname\": \"Fellowes\", \"team_id\": 3, \"nickname\": null, \"province\": null, \"birthname\": \"Spencer\", \"father_id\": 27, \"firstname\": \"Jane\", \"gender_id\": null, \"mother_id\": 28, \"country_id\": null, \"parents_id\": 11, \"postal_code\": null}}', NULL, '2024-07-01 17:35:43', '2024-07-01 17:35:43'),
(60, 'activity', 'created', 'App\\Models\\Person', 60, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"dob\": \"1964-05-20\", \"dod\": null, \"pob\": null, \"pod\": null, \"sex\": \"m\", \"yob\": 1964, \"yod\": null, \"city\": null, \"phone\": null, \"photo\": \"60_001_demo.webp\", \"state\": null, \"number\": null, \"street\": null, \"surname\": \"Spencer\", \"team_id\": 3, \"nickname\": null, \"province\": null, \"birthname\": null, \"father_id\": 27, \"firstname\": \"Charles\", \"gender_id\": null, \"mother_id\": 28, \"country_id\": null, \"parents_id\": 11, \"postal_code\": null}}', NULL, '2024-07-01 17:35:43', '2024-07-01 17:35:43'),
(61, 'activity', 'created', 'App\\Models\\Person', 61, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"dob\": \"1960-01-12\", \"dod\": \"1960-01-12\", \"pob\": null, \"pod\": null, \"sex\": \"m\", \"yob\": 1960, \"yod\": 1960, \"city\": null, \"phone\": null, \"photo\": \"61_001_demo.webp\", \"state\": null, \"number\": null, \"street\": null, \"surname\": \"Spencer\", \"team_id\": 3, \"nickname\": null, \"province\": null, \"birthname\": null, \"father_id\": 27, \"firstname\": \"John Jr.\", \"gender_id\": null, \"mother_id\": 28, \"country_id\": null, \"parents_id\": 11, \"postal_code\": null}}', NULL, '2024-07-01 17:35:43', '2024-07-01 17:35:43'),
(62, 'activity', 'created', 'App\\Models\\PersonMetadata', 1, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"key\": \"cemetery_location_name\", \"value\": \"King George VI Memorial Chapel\", \"person_id\": 1}}', NULL, '2024-07-01 17:35:43', '2024-07-01 17:35:43'),
(63, 'activity', 'created', 'App\\Models\\PersonMetadata', 2, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"key\": \"cemetery_location_address\", \"value\": \"Castle, 2 The Cloisters\\nWindsor SL4 1NJ\\nUnited Kindgom\", \"person_id\": 1}}', NULL, '2024-07-01 17:35:43', '2024-07-01 17:35:43'),
(64, 'activity', 'created', 'App\\Models\\PersonMetadata', 3, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"key\": \"cemetery_location_latitude\", \"value\": \"51.483812\", \"person_id\": 1}}', NULL, '2024-07-01 17:35:43', '2024-07-01 17:35:43'),
(65, 'activity', 'created', 'App\\Models\\PersonMetadata', 4, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"key\": \"cemetery_location_longitude\", \"value\": \"-0.606639\", \"person_id\": 1}}', NULL, '2024-07-01 17:35:43', '2024-07-01 17:35:43'),
(66, 'activity', 'created', 'App\\Models\\PersonMetadata', 5, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"key\": \"cemetery_location_name\", \"value\": \"King George VI Memorial Chapel\", \"person_id\": 2}}', NULL, '2024-07-01 17:35:43', '2024-07-01 17:35:43'),
(67, 'activity', 'created', 'App\\Models\\PersonMetadata', 6, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"key\": \"cemetery_location_address\", \"value\": \"Castle, 2 The Cloisters\\nWindsor SL4 1NJ\\nUnited Kindgom\", \"person_id\": 2}}', NULL, '2024-07-01 17:35:43', '2024-07-01 17:35:43'),
(68, 'activity', 'created', 'App\\Models\\PersonMetadata', 7, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"key\": \"cemetery_location_latitude\", \"value\": \"51.483812\", \"person_id\": 2}}', NULL, '2024-07-01 17:35:43', '2024-07-01 17:35:43'),
(69, 'activity', 'created', 'App\\Models\\PersonMetadata', 8, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"key\": \"cemetery_location_longitude\", \"value\": \"-0.606639\", \"person_id\": 2}}', NULL, '2024-07-01 17:35:43', '2024-07-01 17:35:43'),
(70, 'activity', 'created', 'App\\Models\\PersonMetadata', 9, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"key\": \"cemetery_location_name\", \"value\": \"King George VI Memorial Chapel\", \"person_id\": 31}}', NULL, '2024-07-01 17:35:43', '2024-07-01 17:35:43'),
(71, 'activity', 'created', 'App\\Models\\PersonMetadata', 10, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"key\": \"cemetery_location_address\", \"value\": \"Castle, 2 The Cloisters\\nWindsor SL4 1NJ\\nUnited Kindgom\", \"person_id\": 31}}', NULL, '2024-07-01 17:35:43', '2024-07-01 17:35:43'),
(72, 'activity', 'created', 'App\\Models\\PersonMetadata', 11, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"key\": \"cemetery_location_latitude\", \"value\": \"51.483812\", \"person_id\": 31}}', NULL, '2024-07-01 17:35:43', '2024-07-01 17:35:43'),
(73, 'activity', 'created', 'App\\Models\\PersonMetadata', 12, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"key\": \"cemetery_location_longitude\", \"value\": \"-0.606639\", \"person_id\": 31}}', NULL, '2024-07-01 17:35:43', '2024-07-01 17:35:43'),
(74, 'activity', 'created', 'App\\Models\\PersonMetadata', 13, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"key\": \"cemetery_location_name\", \"value\": \"King George VI Memorial Chapel\", \"person_id\": 32}}', NULL, '2024-07-01 17:35:43', '2024-07-01 17:35:43'),
(75, 'activity', 'created', 'App\\Models\\PersonMetadata', 14, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"key\": \"cemetery_location_address\", \"value\": \"Castle, 2 The Cloisters\\nWindsor SL4 1NJ\\nUnited Kindgom\", \"person_id\": 32}}', NULL, '2024-07-01 17:35:43', '2024-07-01 17:35:43'),
(76, 'activity', 'created', 'App\\Models\\PersonMetadata', 15, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"key\": \"cemetery_location_latitude\", \"value\": \"51.483812\", \"person_id\": 32}}', NULL, '2024-07-01 17:35:43', '2024-07-01 17:35:43'),
(77, 'activity', 'created', 'App\\Models\\PersonMetadata', 16, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"key\": \"cemetery_location_longitude\", \"value\": \"-0.606639\", \"person_id\": 32}}', NULL, '2024-07-01 17:35:43', '2024-07-01 17:35:43'),
(78, 'activity', 'created', 'App\\Models\\PersonMetadata', 17, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"key\": \"cemetery_location_name\", \"value\": \"King George VI Memorial Chapel\", \"person_id\": 33}}', NULL, '2024-07-01 17:35:43', '2024-07-01 17:35:43'),
(79, 'activity', 'created', 'App\\Models\\PersonMetadata', 18, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"key\": \"cemetery_location_address\", \"value\": \"Castle, 2 The Cloisters\\nWindsor SL4 1NJ\\nUnited Kindgom\", \"person_id\": 33}}', NULL, '2024-07-01 17:35:43', '2024-07-01 17:35:43'),
(80, 'activity', 'created', 'App\\Models\\PersonMetadata', 19, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"key\": \"cemetery_location_latitude\", \"value\": \"51.483812\", \"person_id\": 33}}', NULL, '2024-07-01 17:35:43', '2024-07-01 17:35:43'),
(81, 'activity', 'created', 'App\\Models\\PersonMetadata', 20, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"key\": \"cemetery_location_longitude\", \"value\": \"-0.606639\", \"person_id\": 33}}', NULL, '2024-07-01 17:35:43', '2024-07-01 17:35:43'),
(82, 'activity', 'created', 'App\\Models\\PersonMetadata', 21, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"key\": \"cemetery_location_name\", \"value\": \"King George VI Memorial Chapel\", \"person_id\": 37}}', NULL, '2024-07-01 17:35:43', '2024-07-01 17:35:43'),
(83, 'activity', 'created', 'App\\Models\\PersonMetadata', 22, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"key\": \"cemetery_location_address\", \"value\": \"Castle, 2 The Cloisters\\nWindsor SL4 1NJ\\nUnited Kindgom\", \"person_id\": 37}}', NULL, '2024-07-01 17:35:43', '2024-07-01 17:35:43'),
(84, 'activity', 'created', 'App\\Models\\PersonMetadata', 23, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"key\": \"cemetery_location_latitude\", \"value\": \"51.483812\", \"person_id\": 37}}', NULL, '2024-07-01 17:35:43', '2024-07-01 17:35:43'),
(85, 'activity', 'created', 'App\\Models\\PersonMetadata', 24, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"key\": \"cemetery_location_longitude\", \"value\": \"-0.606639\", \"person_id\": 37}}', NULL, '2024-07-01 17:35:43', '2024-07-01 17:35:43'),
(86, 'activity', 'created', 'App\\Models\\PersonMetadata', 25, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"key\": \"cemetery_location_name\", \"value\": \"Althorp Park, Northamptonshire (UK)\", \"person_id\": 7}}', NULL, '2024-07-01 17:35:43', '2024-07-01 17:35:43'),
(87, 'activity', 'created', 'App\\Models\\PersonMetadata', 26, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"key\": \"cemetery_location_address\", \"value\": \"Northampton NN7 4HG\\nUnited Kingdom\", \"person_id\": 7}}', NULL, '2024-07-01 17:35:43', '2024-07-01 17:35:43'),
(88, 'activity', 'created', 'App\\Models\\PersonMetadata', 27, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"key\": \"cemetery_location_latitude\", \"value\": \"52.283112\", \"person_id\": 7}}', NULL, '2024-07-01 17:35:43', '2024-07-01 17:35:43'),
(89, 'activity', 'created', 'App\\Models\\PersonMetadata', 28, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"key\": \"cemetery_location_longitude\", \"value\": \"-1.000299\", \"person_id\": 7}}', NULL, '2024-07-01 17:35:43', '2024-07-01 17:35:43'),
(90, 'activity', 'created', 'App\\Models\\Couple', 1, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"team_id\": 3, \"date_end\": null, \"has_ended\": false, \"date_start\": \"1947-11-20\", \"is_married\": true, \"person1_id\": 2, \"person2_id\": 1}}', NULL, '2024-07-01 17:35:43', '2024-07-01 17:35:43'),
(91, 'activity', 'created', 'App\\Models\\Couple', 2, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"team_id\": 3, \"date_end\": \"1996-08-28\", \"has_ended\": true, \"date_start\": \"1981-07-29\", \"is_married\": true, \"person1_id\": 3, \"person2_id\": 7}}', NULL, '2024-07-01 17:35:43', '2024-07-01 17:35:43'),
(92, 'activity', 'created', 'App\\Models\\Couple', 3, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"team_id\": 3, \"date_end\": \"2008-04-09\", \"has_ended\": true, \"date_start\": \"2005-04-09\", \"is_married\": true, \"person1_id\": 3, \"person2_id\": 10}}', NULL, '2024-07-01 17:35:43', '2024-07-01 17:35:43');
INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `subject_id`, `event`, `causer_type`, `causer_id`, `properties`, `batch_uuid`, `created_at`, `updated_at`) VALUES
(93, 'activity', 'created', 'App\\Models\\Couple', 4, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"team_id\": 3, \"date_end\": \"1992-04-23\", \"has_ended\": true, \"date_start\": \"1973-11-14\", \"is_married\": true, \"person1_id\": 12, \"person2_id\": 4}}', NULL, '2024-07-01 17:35:43', '2024-07-01 17:35:43'),
(94, 'activity', 'created', 'App\\Models\\Couple', 5, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"team_id\": 3, \"date_end\": null, \"has_ended\": false, \"date_start\": \"2008-08-17\", \"is_married\": true, \"person1_id\": 13, \"person2_id\": 14}}', NULL, '2024-07-01 17:35:43', '2024-07-01 17:35:43'),
(95, 'activity', 'created', 'App\\Models\\Couple', 6, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"team_id\": 3, \"date_end\": null, \"has_ended\": false, \"date_start\": \"1992-12-12\", \"is_married\": true, \"person1_id\": 17, \"person2_id\": 4}}', NULL, '2024-07-01 17:35:43', '2024-07-01 17:35:43'),
(96, 'activity', 'created', 'App\\Models\\Couple', 7, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"team_id\": 3, \"date_end\": \"1996-05-30\", \"has_ended\": true, \"date_start\": \"1986-07-23\", \"is_married\": true, \"person1_id\": 5, \"person2_id\": 18}}', NULL, '2024-07-01 17:35:43', '2024-07-01 17:35:43'),
(97, 'activity', 'created', 'App\\Models\\Couple', 8, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"team_id\": 3, \"date_end\": null, \"has_ended\": false, \"date_start\": \"2011-06-30\", \"is_married\": true, \"person1_id\": 22, \"person2_id\": 21}}', NULL, '2024-07-01 17:35:43', '2024-07-01 17:35:43'),
(98, 'activity', 'created', 'App\\Models\\Couple', 9, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"team_id\": 3, \"date_end\": null, \"has_ended\": false, \"date_start\": \"1999-06-19\", \"is_married\": true, \"person1_id\": 6, \"person2_id\": 23}}', NULL, '2024-07-01 17:35:43', '2024-07-01 17:35:43'),
(99, 'activity', 'created', 'App\\Models\\Couple', 10, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"team_id\": 3, \"date_end\": null, \"has_ended\": false, \"date_start\": \"2011-04-29\", \"is_married\": true, \"person1_id\": 8, \"person2_id\": 11}}', NULL, '2024-07-01 17:35:43', '2024-07-01 17:35:43'),
(100, 'activity', 'created', 'App\\Models\\Couple', 11, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"team_id\": 3, \"date_end\": null, \"has_ended\": true, \"date_start\": \"1954-06-01\", \"is_married\": true, \"person1_id\": 27, \"person2_id\": 28}}', NULL, '2024-07-01 17:35:43', '2024-07-01 17:35:43'),
(101, 'activity', 'created', 'App\\Models\\Couple', 12, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"team_id\": 3, \"date_end\": null, \"has_ended\": false, \"date_start\": \"1980-06-21\", \"is_married\": true, \"person1_id\": 30, \"person2_id\": 29}}', NULL, '2024-07-01 17:35:43', '2024-07-01 17:35:43'),
(102, 'activity', 'created', 'App\\Models\\Couple', 13, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"team_id\": 3, \"date_end\": null, \"has_ended\": false, \"date_start\": \"1923-04-06\", \"is_married\": true, \"person1_id\": 32, \"person2_id\": 31}}', NULL, '2024-07-01 17:35:43', '2024-07-01 17:35:43'),
(103, 'activity', 'created', 'App\\Models\\Couple', 14, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"team_id\": 3, \"date_end\": null, \"has_ended\": false, \"date_start\": \"1881-07-16\", \"is_married\": true, \"person1_id\": 35, \"person2_id\": 34}}', NULL, '2024-07-01 17:35:43', '2024-07-01 17:35:43'),
(104, 'activity', 'created', 'App\\Models\\Couple', 15, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"team_id\": 3, \"date_end\": null, \"has_ended\": false, \"date_start\": \"1893-07-06\", \"is_married\": true, \"person1_id\": 37, \"person2_id\": 36}}', NULL, '2024-07-01 17:35:44', '2024-07-01 17:35:44'),
(105, 'activity', 'created', 'App\\Models\\Couple', 16, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"team_id\": 3, \"date_end\": null, \"has_ended\": false, \"date_start\": \"1946-01-02\", \"is_married\": true, \"person1_id\": 39, \"person2_id\": 40}}', NULL, '2024-07-01 17:35:44', '2024-07-01 17:35:44'),
(106, 'activity', 'created', 'App\\Models\\Couple', 17, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"team_id\": 3, \"date_end\": \"1995-01-11\", \"has_ended\": true, \"date_start\": \"1973-07-04\", \"is_married\": true, \"person1_id\": 41, \"person2_id\": 10}}', NULL, '2024-07-01 17:35:44', '2024-07-01 17:35:44'),
(107, 'activity', 'created', 'App\\Models\\Couple', 18, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"team_id\": 3, \"date_end\": null, \"has_ended\": true, \"date_start\": \"1956-01-17\", \"is_married\": true, \"person1_id\": 44, \"person2_id\": 45}}', NULL, '2024-07-01 17:35:44', '2024-07-01 17:35:44'),
(108, 'activity', 'created', 'App\\Models\\Couple', 19, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"team_id\": 3, \"date_end\": null, \"has_ended\": false, \"date_start\": \"2018-05-19\", \"is_married\": true, \"person1_id\": 9, \"person2_id\": 47}}', NULL, '2024-07-01 17:35:44', '2024-07-01 17:35:44'),
(109, 'activity', 'created', 'App\\Models\\Couple', 20, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"team_id\": 3, \"date_end\": \"2013-08-26\", \"has_ended\": true, \"date_start\": \"2011-08-26\", \"is_married\": true, \"person1_id\": 48, \"person2_id\": 47}}', NULL, '2024-07-01 17:35:44', '2024-07-01 17:35:44'),
(110, 'activity', 'created', 'App\\Models\\Couple', 21, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"team_id\": 3, \"date_end\": null, \"has_ended\": true, \"date_start\": \"1979-12-23\", \"is_married\": true, \"person1_id\": 50, \"person2_id\": 49}}', NULL, '2024-07-01 17:35:44', '2024-07-01 17:35:44'),
(111, 'activity', 'created', 'App\\Models\\Couple', 22, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"team_id\": 3, \"date_end\": null, \"has_ended\": true, \"date_start\": null, \"is_married\": true, \"person1_id\": 50, \"person2_id\": 51}}', NULL, '2024-07-01 17:35:44', '2024-07-01 17:35:44'),
(112, 'activity', 'created', 'App\\Models\\Couple', 23, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"team_id\": 3, \"date_end\": null, \"has_ended\": false, \"date_start\": \"2018-10-12\", \"is_married\": true, \"person1_id\": 57, \"person2_id\": 20}}', NULL, '2024-07-01 17:35:44', '2024-07-01 17:35:44'),
(113, 'activity', 'created', 'App\\Models\\Person', 101, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"dob\": \"1999-01-04\", \"dod\": null, \"pob\": null, \"pod\": null, \"sex\": \"m\", \"yob\": null, \"yod\": null, \"city\": null, \"phone\": null, \"photo\": null, \"state\": null, \"number\": null, \"street\": null, \"surname\": \"Only FATHER side\", \"team_id\": 3, \"nickname\": null, \"province\": null, \"birthname\": null, \"father_id\": 2, \"firstname\": \"Child\", \"gender_id\": null, \"mother_id\": null, \"country_id\": null, \"parents_id\": null, \"postal_code\": null}}', NULL, '2024-07-01 17:35:44', '2024-07-01 17:35:44'),
(114, 'activity', 'created', 'App\\Models\\Person', 102, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"dob\": null, \"dod\": null, \"pob\": null, \"pod\": null, \"sex\": \"m\", \"yob\": 1999, \"yod\": 2009, \"city\": null, \"phone\": null, \"photo\": null, \"state\": null, \"number\": null, \"street\": null, \"surname\": \"Only MOTHER side\", \"team_id\": 3, \"nickname\": null, \"province\": null, \"birthname\": null, \"father_id\": null, \"firstname\": \"Child\", \"gender_id\": null, \"mother_id\": 1, \"country_id\": null, \"parents_id\": null, \"postal_code\": null}}', NULL, '2024-07-01 17:35:44', '2024-07-01 17:35:44'),
(115, 'activity', 'created', 'App\\Models\\Person', 103, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"dob\": null, \"dod\": null, \"pob\": null, \"pod\": null, \"sex\": \"f\", \"yob\": 1999, \"yod\": null, \"city\": null, \"phone\": null, \"photo\": null, \"state\": null, \"number\": null, \"street\": null, \"surname\": \"Only through PARENTS\", \"team_id\": 3, \"nickname\": null, \"province\": null, \"birthname\": null, \"father_id\": null, \"firstname\": \"Child\", \"gender_id\": null, \"mother_id\": null, \"country_id\": null, \"parents_id\": 1, \"postal_code\": null}}', NULL, '2024-07-01 17:35:44', '2024-07-01 17:35:44'),
(116, 'activity', 'created', 'App\\Models\\Person', 201, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"dob\": \"1970-01-01\", \"dod\": null, \"pob\": null, \"pod\": null, \"sex\": \"f\", \"yob\": null, \"yod\": null, \"city\": null, \"phone\": null, \"photo\": null, \"state\": null, \"number\": null, \"street\": null, \"surname\": \"Gay\", \"team_id\": 3, \"nickname\": null, \"province\": null, \"birthname\": null, \"father_id\": null, \"firstname\": \"Parent 1\", \"gender_id\": null, \"mother_id\": null, \"country_id\": null, \"parents_id\": null, \"postal_code\": null}}', NULL, '2024-07-01 17:35:44', '2024-07-01 17:35:44'),
(117, 'activity', 'created', 'App\\Models\\Person', 202, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"dob\": \"1971-01-01\", \"dod\": null, \"pob\": null, \"pod\": null, \"sex\": \"f\", \"yob\": null, \"yod\": null, \"city\": null, \"phone\": null, \"photo\": null, \"state\": null, \"number\": null, \"street\": null, \"surname\": \"Gay\", \"team_id\": 3, \"nickname\": null, \"province\": null, \"birthname\": null, \"father_id\": null, \"firstname\": \"Parent 2\", \"gender_id\": null, \"mother_id\": null, \"country_id\": null, \"parents_id\": null, \"postal_code\": null}}', NULL, '2024-07-01 17:35:44', '2024-07-01 17:35:44'),
(118, 'activity', 'created', 'App\\Models\\Person', 203, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"dob\": \"2000-01-01\", \"dod\": null, \"pob\": null, \"pod\": null, \"sex\": \"m\", \"yob\": null, \"yod\": null, \"city\": null, \"phone\": null, \"photo\": null, \"state\": null, \"number\": null, \"street\": null, \"surname\": \"Gay parents\", \"team_id\": 3, \"nickname\": null, \"province\": null, \"birthname\": null, \"father_id\": null, \"firstname\": \"Child 1\", \"gender_id\": null, \"mother_id\": 201, \"country_id\": null, \"parents_id\": null, \"postal_code\": null}}', NULL, '2024-07-01 17:35:44', '2024-07-01 17:35:44'),
(119, 'activity', 'created', 'App\\Models\\Person', 204, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"dob\": \"2001-01-01\", \"dod\": null, \"pob\": null, \"pod\": null, \"sex\": \"m\", \"yob\": null, \"yod\": null, \"city\": null, \"phone\": null, \"photo\": null, \"state\": null, \"number\": null, \"street\": null, \"surname\": \"Gay parents\", \"team_id\": 3, \"nickname\": null, \"province\": null, \"birthname\": null, \"father_id\": null, \"firstname\": \"Child 2\", \"gender_id\": null, \"mother_id\": 201, \"country_id\": null, \"parents_id\": null, \"postal_code\": null}}', NULL, '2024-07-01 17:35:44', '2024-07-01 17:35:44'),
(120, 'activity', 'created', 'App\\Models\\Person', 205, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"dob\": \"1960-01-01\", \"dod\": null, \"pob\": null, \"pod\": null, \"sex\": \"m\", \"yob\": null, \"yod\": null, \"city\": null, \"phone\": null, \"photo\": null, \"state\": null, \"number\": null, \"street\": null, \"surname\": \"King Charles\", \"team_id\": 3, \"nickname\": null, \"province\": null, \"birthname\": null, \"father_id\": null, \"firstname\": \"New Partner\", \"gender_id\": null, \"mother_id\": null, \"country_id\": null, \"parents_id\": null, \"postal_code\": null}}', NULL, '2024-07-01 17:35:44', '2024-07-01 17:35:44'),
(121, 'activity', 'created', 'App\\Models\\Person', 206, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"dob\": \"2015-01-01\", \"dod\": null, \"pob\": null, \"pod\": null, \"sex\": \"m\", \"yob\": null, \"yod\": null, \"city\": null, \"phone\": null, \"photo\": null, \"state\": null, \"number\": null, \"street\": null, \"surname\": \"New Partner King Charles\", \"team_id\": 3, \"nickname\": null, \"province\": null, \"birthname\": null, \"father_id\": 205, \"firstname\": \"Child 1\", \"gender_id\": null, \"mother_id\": null, \"country_id\": null, \"parents_id\": null, \"postal_code\": null}}', NULL, '2024-07-01 17:35:44', '2024-07-01 17:35:44'),
(122, 'activity', 'created', 'App\\Models\\Couple', 101, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"team_id\": 3, \"date_end\": null, \"has_ended\": false, \"date_start\": \"1995-01-01\", \"is_married\": false, \"person1_id\": 201, \"person2_id\": 202}}', NULL, '2024-07-01 17:35:44', '2024-07-01 17:35:44'),
(123, 'activity', 'created', 'App\\Models\\Couple', 102, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"team_id\": 3, \"date_end\": null, \"has_ended\": false, \"date_start\": \"2010-01-01\", \"is_married\": false, \"person1_id\": 3, \"person2_id\": 205}}', NULL, '2024-07-01 17:35:44', '2024-07-01 17:35:44'),
(124, 'activity', 'created', 'App\\Models\\Person', 207, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"dob\": \"2002-01-01\", \"dod\": null, \"pob\": null, \"pod\": null, \"sex\": \"f\", \"yob\": null, \"yod\": null, \"city\": null, \"phone\": null, \"photo\": null, \"state\": null, \"number\": null, \"street\": null, \"surname\": \"Gay parents\", \"team_id\": 3, \"nickname\": null, \"province\": null, \"birthname\": null, \"father_id\": null, \"firstname\": \"Child 3\", \"gender_id\": null, \"mother_id\": null, \"country_id\": null, \"parents_id\": 101, \"postal_code\": null}}', NULL, '2024-07-01 17:35:44', '2024-07-01 17:35:44'),
(125, 'activity', 'created', 'App\\Models\\Person', 208, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"dob\": \"2003-01-01\", \"dod\": null, \"pob\": null, \"pod\": null, \"sex\": \"f\", \"yob\": null, \"yod\": null, \"city\": null, \"phone\": null, \"photo\": null, \"state\": null, \"number\": null, \"street\": null, \"surname\": \"Gay parents\", \"team_id\": 3, \"nickname\": null, \"province\": null, \"birthname\": null, \"father_id\": null, \"firstname\": \"Child 4\", \"gender_id\": null, \"mother_id\": null, \"country_id\": null, \"parents_id\": 101, \"postal_code\": null}}', NULL, '2024-07-01 17:35:44', '2024-07-01 17:35:44'),
(126, 'activity', 'created', 'App\\Models\\Couple', 201, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"team_id\": 3, \"date_end\": null, \"has_ended\": false, \"date_start\": \"2005-01-01\", \"is_married\": true, \"person1_id\": 5, \"person2_id\": 18}}', NULL, '2024-07-01 17:35:44', '2024-07-01 17:35:44'),
(127, 'activity', 'created', 'App\\Models\\Person', 209, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"dob\": \"1963-01-01\", \"dod\": null, \"pob\": null, \"pod\": null, \"sex\": \"m\", \"yob\": null, \"yod\": null, \"city\": null, \"phone\": null, \"photo\": \"209_001_demo.webp\", \"state\": null, \"number\": null, \"street\": null, \"surname\": \"DOE\", \"team_id\": 1, \"nickname\": null, \"province\": null, \"birthname\": null, \"father_id\": null, \"firstname\": \"John\", \"gender_id\": null, \"mother_id\": null, \"country_id\": null, \"parents_id\": null, \"postal_code\": null}}', NULL, '2024-07-01 17:35:44', '2024-07-01 17:35:44'),
(128, 'activity', 'created', 'App\\Models\\Person', 210, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"dob\": \"1963-01-01\", \"dod\": null, \"pob\": null, \"pod\": null, \"sex\": \"m\", \"yob\": null, \"yod\": null, \"city\": null, \"phone\": null, \"photo\": \"210_001_demo.webp\", \"state\": null, \"number\": null, \"street\": null, \"surname\": \"BAR\", \"team_id\": 1, \"nickname\": null, \"province\": null, \"birthname\": null, \"father_id\": null, \"firstname\": \"Fu\", \"gender_id\": null, \"mother_id\": null, \"country_id\": null, \"parents_id\": null, \"postal_code\": null}}', NULL, '2024-07-01 17:35:44', '2024-07-01 17:35:44'),
(129, 'activity', 'updated', 'App\\Models\\Person', 5, 'updated', 'App\\Models\\User', 1, '{\"old\": {\"city\": null, \"street\": null, \"country_id\": null, \"postal_code\": null}, \"attributes\": {\"city\": \"Windsor\", \"street\": \"Royal Lodge\", \"country_id\": 77, \"postal_code\": \"SL4 2JD\"}}', NULL, '2024-07-01 17:35:44', '2024-07-01 17:35:44'),
(130, 'activity', 'created', 'App\\Models\\Person', 501, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"dob\": \"1888-09-06\", \"dod\": \"1969-11-18\", \"pob\": null, \"pod\": null, \"sex\": \"m\", \"yob\": 1888, \"yod\": 1969, \"city\": null, \"phone\": null, \"photo\": \"501_001_demo.webp\", \"state\": null, \"number\": null, \"street\": null, \"surname\": \"Kennedy\", \"team_id\": 4, \"nickname\": \"Joe\", \"province\": null, \"birthname\": null, \"father_id\": null, \"firstname\": \"Joseph Patrick\", \"gender_id\": null, \"mother_id\": null, \"country_id\": null, \"parents_id\": null, \"postal_code\": null}}', NULL, '2024-07-01 17:35:44', '2024-07-01 17:35:44'),
(131, 'activity', 'created', 'App\\Models\\Person', 502, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"dob\": \"1890-07-22\", \"dod\": \"1995-01-22\", \"pob\": null, \"pod\": null, \"sex\": \"f\", \"yob\": 1890, \"yod\": 1995, \"city\": null, \"phone\": null, \"photo\": \"502_001_demo.webp\", \"state\": null, \"number\": null, \"street\": null, \"surname\": \"Fitzgerald\", \"team_id\": 4, \"nickname\": null, \"province\": null, \"birthname\": null, \"father_id\": null, \"firstname\": \"Rose Elizabeth\", \"gender_id\": null, \"mother_id\": null, \"country_id\": null, \"parents_id\": null, \"postal_code\": null}}', NULL, '2024-07-01 17:35:44', '2024-07-01 17:35:44'),
(132, 'activity', 'created', 'App\\Models\\Person', 503, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"dob\": \"1915-07-25\", \"dod\": \"1944-08-12\", \"pob\": null, \"pod\": null, \"sex\": \"m\", \"yob\": 1915, \"yod\": 1944, \"city\": null, \"phone\": null, \"photo\": \"503_001_demo.webp\", \"state\": null, \"number\": null, \"street\": null, \"surname\": \"Kennedy\", \"team_id\": 4, \"nickname\": null, \"province\": null, \"birthname\": null, \"father_id\": 501, \"firstname\": \"Joseph Patrick\", \"gender_id\": null, \"mother_id\": 502, \"country_id\": null, \"parents_id\": null, \"postal_code\": null}}', NULL, '2024-07-01 17:35:44', '2024-07-01 17:35:44'),
(133, 'activity', 'created', 'App\\Models\\Person', 504, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"dob\": \"1917-05-29\", \"dod\": \"1963-11-22\", \"pob\": null, \"pod\": \"Dallas, Texas, USA\", \"sex\": \"m\", \"yob\": 1917, \"yod\": 1963, \"city\": null, \"phone\": null, \"photo\": \"504_001_demo.webp\", \"state\": null, \"number\": null, \"street\": null, \"surname\": \"Kennedy\", \"team_id\": 4, \"nickname\": \"JFK or Jack\", \"province\": null, \"birthname\": null, \"father_id\": 501, \"firstname\": \"John Fitzgerald\", \"gender_id\": null, \"mother_id\": 502, \"country_id\": null, \"parents_id\": null, \"postal_code\": null}}', NULL, '2024-07-01 17:35:44', '2024-07-01 17:35:44'),
(134, 'activity', 'created', 'App\\Models\\Person', 505, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"dob\": \"1918-09-13\", \"dod\": \"2005-01-07\", \"pob\": null, \"pod\": null, \"sex\": \"f\", \"yob\": 1918, \"yod\": 2005, \"city\": null, \"phone\": null, \"photo\": \"505_001_demo.webp\", \"state\": null, \"number\": null, \"street\": null, \"surname\": \"Kennedy\", \"team_id\": 4, \"nickname\": \"Rosemary or Rosie\", \"province\": null, \"birthname\": null, \"father_id\": 501, \"firstname\": \"Rose Marie\", \"gender_id\": null, \"mother_id\": 502, \"country_id\": null, \"parents_id\": null, \"postal_code\": null}}', NULL, '2024-07-01 17:35:44', '2024-07-01 17:35:44'),
(135, 'activity', 'created', 'App\\Models\\Person', 506, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"dob\": \"1920-02-20\", \"dod\": null, \"pob\": \"Brookline, Massachusetts, USA\", \"pod\": null, \"sex\": \"f\", \"yob\": 1920, \"yod\": 1948, \"city\": null, \"phone\": null, \"photo\": \"506_001_demo.webp\", \"state\": null, \"number\": null, \"street\": null, \"surname\": \"Kennedy\", \"team_id\": 4, \"nickname\": \"Kick\", \"province\": null, \"birthname\": null, \"father_id\": 501, \"firstname\": \"Kathleen Agnes\", \"gender_id\": null, \"mother_id\": 502, \"country_id\": null, \"parents_id\": null, \"postal_code\": null}}', NULL, '2024-07-01 17:35:44', '2024-07-01 17:35:44'),
(136, 'activity', 'created', 'App\\Models\\Person', 507, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"dob\": \"1921-07-10\", \"dod\": \"2009-08-11\", \"pob\": \"Brookline, Massachusetts, USA\", \"pod\": \"Hyannis, Massachusetts, USA\", \"sex\": \"f\", \"yob\": 1921, \"yod\": 2009, \"city\": null, \"phone\": null, \"photo\": \"507_001_demo.webp\", \"state\": null, \"number\": null, \"street\": null, \"surname\": \"Kennedy\", \"team_id\": 4, \"nickname\": null, \"province\": null, \"birthname\": null, \"father_id\": 501, \"firstname\": \"Eunice Mary\", \"gender_id\": null, \"mother_id\": 502, \"country_id\": null, \"parents_id\": null, \"postal_code\": null}}', NULL, '2024-07-01 17:35:44', '2024-07-01 17:35:44'),
(137, 'activity', 'created', 'App\\Models\\Person', 508, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"dob\": \"1924-06-05\", \"dod\": \"2006-09-17\", \"pob\": \"Brookline, Massachusetts, USA\", \"pod\": \"New York, USA\", \"sex\": \"f\", \"yob\": 1924, \"yod\": 2006, \"city\": null, \"phone\": null, \"photo\": \"508_001_demo.webp\", \"state\": null, \"number\": null, \"street\": null, \"surname\": \"Kennedy\", \"team_id\": 4, \"nickname\": null, \"province\": null, \"birthname\": null, \"father_id\": 501, \"firstname\": \"Patricia Helen\", \"gender_id\": null, \"mother_id\": 502, \"country_id\": null, \"parents_id\": null, \"postal_code\": null}}', NULL, '2024-07-01 17:35:44', '2024-07-01 17:35:44'),
(138, 'activity', 'created', 'App\\Models\\Person', 509, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"dob\": \"1925-11-20\", \"dod\": \"1968-06-06\", \"pob\": \"Brookline, Massachusetts, USA\", \"pod\": null, \"sex\": \"m\", \"yob\": 1925, \"yod\": 1968, \"city\": null, \"phone\": null, \"photo\": \"509_001_demo.webp\", \"state\": null, \"number\": null, \"street\": null, \"surname\": \"Kennedy\", \"team_id\": 4, \"nickname\": \"Bobby\", \"province\": null, \"birthname\": null, \"father_id\": 501, \"firstname\": \"Robert Francis\", \"gender_id\": null, \"mother_id\": 502, \"country_id\": null, \"parents_id\": null, \"postal_code\": null}}', NULL, '2024-07-01 17:35:44', '2024-07-01 17:35:44'),
(139, 'activity', 'created', 'App\\Models\\Person', 510, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"dob\": \"1928-02-20\", \"dod\": \"2020-06-17\", \"pob\": null, \"pod\": null, \"sex\": \"f\", \"yob\": 1928, \"yod\": 2020, \"city\": null, \"phone\": null, \"photo\": \"510_001_demo.webp\", \"state\": null, \"number\": null, \"street\": null, \"surname\": \"Kennedy\", \"team_id\": 4, \"nickname\": null, \"province\": null, \"birthname\": null, \"father_id\": 501, \"firstname\": \"Jean Ann\", \"gender_id\": null, \"mother_id\": 502, \"country_id\": null, \"parents_id\": null, \"postal_code\": null}}', NULL, '2024-07-01 17:35:44', '2024-07-01 17:35:44'),
(140, 'activity', 'created', 'App\\Models\\Person', 511, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"dob\": \"1932-02-22\", \"dod\": \"2009-08-25\", \"pob\": \"Boston, Massachusetts, UAS\", \"pod\": \"Hyannis Port, Massachusetts, USA\", \"sex\": \"m\", \"yob\": 1932, \"yod\": 2009, \"city\": null, \"phone\": null, \"photo\": \"511_001_demo.webp\", \"state\": null, \"number\": null, \"street\": null, \"surname\": \"Kennedy\", \"team_id\": 4, \"nickname\": \"Ted\", \"province\": null, \"birthname\": null, \"father_id\": 501, \"firstname\": \"Edward Moore\", \"gender_id\": null, \"mother_id\": 502, \"country_id\": null, \"parents_id\": null, \"postal_code\": null}}', NULL, '2024-07-01 17:35:44', '2024-07-01 17:35:44'),
(141, 'activity', 'created', 'App\\Models\\Person', 512, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"dob\": \"1929-07-28\", \"dod\": \"1994-05-19\", \"pob\": \"Southampton, New York, USA\", \"pod\": \"New York Cyty, USA\", \"sex\": \"f\", \"yob\": 1929, \"yod\": 1994, \"city\": null, \"phone\": null, \"photo\": \"512_001_demo.webp\", \"state\": null, \"number\": null, \"street\": null, \"surname\": \"Bouvier\", \"team_id\": 4, \"nickname\": \"Jacky\", \"province\": null, \"birthname\": null, \"father_id\": null, \"firstname\": \"Jaqueline Lee\", \"gender_id\": null, \"mother_id\": null, \"country_id\": null, \"parents_id\": null, \"postal_code\": null}}', NULL, '2024-07-01 17:35:44', '2024-07-01 17:35:44'),
(142, 'activity', 'created', 'App\\Models\\Person', 513, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"dob\": \"1917-12-10\", \"dod\": \"1944-09-09\", \"pob\": \"London, England\", \"pod\": \"Heppen, Belgium\", \"sex\": \"m\", \"yob\": 1917, \"yod\": 1944, \"city\": null, \"phone\": null, \"photo\": \"513_001_demo.webp\", \"state\": null, \"number\": null, \"street\": null, \"surname\": \"Cavendish\", \"team_id\": 4, \"nickname\": \"Marquess of Hartington\", \"province\": null, \"birthname\": null, \"father_id\": null, \"firstname\": \"William\", \"gender_id\": null, \"mother_id\": null, \"country_id\": null, \"parents_id\": null, \"postal_code\": null}}', NULL, '2024-07-01 17:35:44', '2024-07-01 17:35:44'),
(143, 'activity', 'created', 'App\\Models\\Person', 514, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"dob\": \"1915-11-09\", \"dod\": \"2011-01-18\", \"pob\": null, \"pod\": null, \"sex\": \"m\", \"yob\": 1915, \"yod\": 2011, \"city\": null, \"phone\": null, \"photo\": \"514_001_demo.webp\", \"state\": null, \"number\": null, \"street\": null, \"surname\": \"Shriver\", \"team_id\": 4, \"nickname\": null, \"province\": null, \"birthname\": null, \"father_id\": null, \"firstname\": \"Robert Sargent Jr.\", \"gender_id\": null, \"mother_id\": null, \"country_id\": null, \"parents_id\": null, \"postal_code\": null}}', NULL, '2024-07-01 17:35:44', '2024-07-01 17:35:44'),
(144, 'activity', 'created', 'App\\Models\\Person', 515, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"dob\": \"1923-09-07\", \"dod\": \"1984-12-24\", \"pob\": \"London, England\", \"pod\": \"Los Angeles, California, USA\", \"sex\": \"m\", \"yob\": 1923, \"yod\": 1984, \"city\": null, \"phone\": null, \"photo\": \"515_001_demo.webp\", \"state\": null, \"number\": null, \"street\": null, \"surname\": \"Lawford\", \"team_id\": 4, \"nickname\": null, \"province\": null, \"birthname\": \"Aylen\", \"father_id\": null, \"firstname\": \"Peter Sydney Ernest\", \"gender_id\": null, \"mother_id\": null, \"country_id\": null, \"parents_id\": null, \"postal_code\": null}}', NULL, '2024-07-01 17:35:44', '2024-07-01 17:35:44'),
(145, 'activity', 'created', 'App\\Models\\Person', 516, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"dob\": \"1928-04-11\", \"dod\": null, \"pob\": \"Chicago, Illinois, USA\", \"pod\": null, \"sex\": \"f\", \"yob\": 1928, \"yod\": null, \"city\": null, \"phone\": null, \"photo\": \"516_001_demo.webp\", \"state\": null, \"number\": null, \"street\": null, \"surname\": \"Skakel\", \"team_id\": 4, \"nickname\": null, \"province\": null, \"birthname\": null, \"father_id\": null, \"firstname\": \"Ethel\", \"gender_id\": null, \"mother_id\": null, \"country_id\": null, \"parents_id\": null, \"postal_code\": null}}', NULL, '2024-07-01 17:35:44', '2024-07-01 17:35:44'),
(146, 'activity', 'created', 'App\\Models\\Person', 517, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"dob\": \"1927-09-24\", \"dod\": \"1990-08-19\", \"pob\": \"Bayport, Suffolk County, New York, USA\", \"pod\": \"Manhattan, New York County, New York, USA\", \"sex\": \"m\", \"yob\": 1927, \"yod\": 1990, \"city\": null, \"phone\": null, \"photo\": \"517_001_demo.webp\", \"state\": null, \"number\": null, \"street\": null, \"surname\": \"Smith\", \"team_id\": 4, \"nickname\": null, \"province\": null, \"birthname\": null, \"father_id\": null, \"firstname\": \"Stephen Edward\", \"gender_id\": null, \"mother_id\": null, \"country_id\": null, \"parents_id\": null, \"postal_code\": null}}', NULL, '2024-07-01 17:35:44', '2024-07-01 17:35:44'),
(147, 'activity', 'created', 'App\\Models\\Person', 518, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"dob\": \"1936-09-26\", \"dod\": null, \"pob\": \"New York City, USA\", \"pod\": null, \"sex\": \"f\", \"yob\": 1936, \"yod\": null, \"city\": null, \"phone\": null, \"photo\": \"518_001_demo.webp\", \"state\": null, \"number\": null, \"street\": null, \"surname\": \"Bennett\", \"team_id\": 4, \"nickname\": null, \"province\": null, \"birthname\": null, \"father_id\": null, \"firstname\": \"Virginia Joan\", \"gender_id\": null, \"mother_id\": null, \"country_id\": null, \"parents_id\": null, \"postal_code\": null}}', NULL, '2024-07-01 17:35:44', '2024-07-01 17:35:44'),
(148, 'activity', 'created', 'App\\Models\\Person', 519, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"dob\": \"1954-02-26\", \"dod\": null, \"pob\": null, \"pod\": null, \"sex\": \"f\", \"yob\": 1954, \"yod\": null, \"city\": null, \"phone\": null, \"photo\": \"519_001_demo.webp\", \"state\": null, \"number\": null, \"street\": null, \"surname\": \"Reggie\", \"team_id\": 4, \"nickname\": null, \"province\": null, \"birthname\": null, \"father_id\": null, \"firstname\": \"Victoria\", \"gender_id\": null, \"mother_id\": null, \"country_id\": null, \"parents_id\": null, \"postal_code\": null}}', NULL, '2024-07-01 17:35:44', '2024-07-01 17:35:44'),
(149, 'activity', 'created', 'App\\Models\\Person', 520, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"dob\": null, \"dod\": null, \"pob\": null, \"pod\": null, \"sex\": \"f\", \"yob\": 1956, \"yod\": 1956, \"city\": null, \"phone\": null, \"photo\": \"520_001_demo.webp\", \"state\": null, \"number\": null, \"street\": null, \"surname\": \"Kennedy\", \"team_id\": 4, \"nickname\": null, \"province\": null, \"birthname\": null, \"father_id\": 504, \"firstname\": \"Arabella\", \"gender_id\": null, \"mother_id\": 512, \"country_id\": null, \"parents_id\": null, \"postal_code\": null}}', NULL, '2024-07-01 17:35:44', '2024-07-01 17:35:44'),
(150, 'activity', 'created', 'App\\Models\\Person', 521, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"dob\": null, \"dod\": null, \"pob\": null, \"pod\": null, \"sex\": \"f\", \"yob\": 1957, \"yod\": null, \"city\": null, \"phone\": null, \"photo\": \"521_001_demo.webp\", \"state\": null, \"number\": null, \"street\": null, \"surname\": \"Kennedy\", \"team_id\": 4, \"nickname\": null, \"province\": null, \"birthname\": null, \"father_id\": 504, \"firstname\": \"Caroline Bouvier\", \"gender_id\": null, \"mother_id\": 512, \"country_id\": null, \"parents_id\": null, \"postal_code\": null}}', NULL, '2024-07-01 17:35:44', '2024-07-01 17:35:44'),
(151, 'activity', 'created', 'App\\Models\\Person', 522, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"dob\": null, \"dod\": null, \"pob\": null, \"pod\": null, \"sex\": \"m\", \"yob\": 1960, \"yod\": 1999, \"city\": null, \"phone\": null, \"photo\": \"522_001_demo.webp\", \"state\": null, \"number\": null, \"street\": null, \"surname\": \"Kennedy\", \"team_id\": 4, \"nickname\": \"John-John\", \"province\": null, \"birthname\": null, \"father_id\": 504, \"firstname\": \"John Fitzgeral Jr.\", \"gender_id\": null, \"mother_id\": 512, \"country_id\": null, \"parents_id\": null, \"postal_code\": null}}', NULL, '2024-07-01 17:35:44', '2024-07-01 17:35:44'),
(152, 'activity', 'created', 'App\\Models\\Person', 523, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"dob\": null, \"dod\": null, \"pob\": null, \"pod\": null, \"sex\": \"m\", \"yob\": 1963, \"yod\": 1963, \"city\": null, \"phone\": null, \"photo\": \"523_001_demo.webp\", \"state\": null, \"number\": null, \"street\": null, \"surname\": \"Kennedy\", \"team_id\": 4, \"nickname\": null, \"province\": null, \"birthname\": null, \"father_id\": 504, \"firstname\": \"Patrick Bouvier\", \"gender_id\": null, \"mother_id\": 512, \"country_id\": null, \"parents_id\": null, \"postal_code\": null}}', NULL, '2024-07-01 17:35:44', '2024-07-01 17:35:44'),
(153, 'activity', 'created', 'App\\Models\\Person', 524, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"dob\": null, \"dod\": null, \"pob\": null, \"pod\": null, \"sex\": \"m\", \"yob\": 1954, \"yod\": null, \"city\": null, \"phone\": null, \"photo\": \"524_001_demo.webp\", \"state\": null, \"number\": null, \"street\": null, \"surname\": \"Shriver\", \"team_id\": 4, \"nickname\": null, \"province\": null, \"birthname\": null, \"father_id\": 514, \"firstname\": \"Robert Sargent III\", \"gender_id\": null, \"mother_id\": 507, \"country_id\": null, \"parents_id\": null, \"postal_code\": null}}', NULL, '2024-07-01 17:35:45', '2024-07-01 17:35:45'),
(154, 'activity', 'created', 'App\\Models\\Person', 525, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"dob\": null, \"dod\": null, \"pob\": null, \"pod\": null, \"sex\": \"f\", \"yob\": 1955, \"yod\": null, \"city\": null, \"phone\": null, \"photo\": \"525_001_demo.webp\", \"state\": null, \"number\": null, \"street\": null, \"surname\": \"Shriver\", \"team_id\": 4, \"nickname\": null, \"province\": null, \"birthname\": null, \"father_id\": 514, \"firstname\": \"Maria Owings\", \"gender_id\": null, \"mother_id\": 507, \"country_id\": null, \"parents_id\": null, \"postal_code\": null}}', NULL, '2024-07-01 17:35:45', '2024-07-01 17:35:45'),
(155, 'activity', 'created', 'App\\Models\\Person', 526, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"dob\": null, \"dod\": null, \"pob\": null, \"pod\": null, \"sex\": \"m\", \"yob\": 1959, \"yod\": null, \"city\": null, \"phone\": null, \"photo\": \"526_001_demo.webp\", \"state\": null, \"number\": null, \"street\": null, \"surname\": \"Shriver\", \"team_id\": 4, \"nickname\": null, \"province\": null, \"birthname\": null, \"father_id\": 514, \"firstname\": \"Timothy Perry\", \"gender_id\": null, \"mother_id\": 507, \"country_id\": null, \"parents_id\": null, \"postal_code\": null}}', NULL, '2024-07-01 17:35:45', '2024-07-01 17:35:45'),
(156, 'activity', 'created', 'App\\Models\\Person', 527, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"dob\": null, \"dod\": null, \"pob\": null, \"pod\": null, \"sex\": \"f\", \"yob\": 1964, \"yod\": null, \"city\": null, \"phone\": null, \"photo\": \"527_001_demo.webp\", \"state\": null, \"number\": null, \"street\": null, \"surname\": \"Shriver\", \"team_id\": 4, \"nickname\": null, \"province\": null, \"birthname\": null, \"father_id\": 514, \"firstname\": \"Mark Kennedy\", \"gender_id\": null, \"mother_id\": 507, \"country_id\": null, \"parents_id\": null, \"postal_code\": null}}', NULL, '2024-07-01 17:35:45', '2024-07-01 17:35:45'),
(157, 'activity', 'created', 'App\\Models\\Person', 528, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"dob\": null, \"dod\": null, \"pob\": null, \"pod\": null, \"sex\": \"m\", \"yob\": 1965, \"yod\": null, \"city\": null, \"phone\": null, \"photo\": \"528_001_demo.webp\", \"state\": null, \"number\": null, \"street\": null, \"surname\": \"Shriver\", \"team_id\": 4, \"nickname\": null, \"province\": null, \"birthname\": null, \"father_id\": 514, \"firstname\": \"Anthony Paul Kennedy\", \"gender_id\": null, \"mother_id\": 507, \"country_id\": null, \"parents_id\": null, \"postal_code\": null}}', NULL, '2024-07-01 17:35:45', '2024-07-01 17:35:45'),
(158, 'activity', 'created', 'App\\Models\\Person', 529, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"dob\": null, \"dod\": null, \"pob\": null, \"pod\": null, \"sex\": \"m\", \"yob\": 1955, \"yod\": 2018, \"city\": null, \"phone\": null, \"photo\": \"529_001_demo.webp\", \"state\": null, \"number\": null, \"street\": null, \"surname\": \"Lawford\", \"team_id\": 4, \"nickname\": null, \"province\": null, \"birthname\": null, \"father_id\": 516, \"firstname\": \"Christopher Kennedy\", \"gender_id\": null, \"mother_id\": 508, \"country_id\": null, \"parents_id\": null, \"postal_code\": null}}', NULL, '2024-07-01 17:35:45', '2024-07-01 17:35:45'),
(159, 'activity', 'created', 'App\\Models\\Person', 530, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"dob\": null, \"dod\": null, \"pob\": null, \"pod\": null, \"sex\": \"f\", \"yob\": 1956, \"yod\": null, \"city\": null, \"phone\": null, \"photo\": \"530_001_demo.webp\", \"state\": null, \"number\": null, \"street\": null, \"surname\": \"Lawford\", \"team_id\": 4, \"nickname\": null, \"province\": null, \"birthname\": null, \"father_id\": 516, \"firstname\": \"Sidney Maleia\", \"gender_id\": null, \"mother_id\": 508, \"country_id\": null, \"parents_id\": null, \"postal_code\": null}}', NULL, '2024-07-01 17:35:45', '2024-07-01 17:35:45'),
(160, 'activity', 'created', 'App\\Models\\Person', 531, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"dob\": null, \"dod\": null, \"pob\": null, \"pod\": null, \"sex\": \"f\", \"yob\": 1958, \"yod\": null, \"city\": null, \"phone\": null, \"photo\": \"531_001_demo.webp\", \"state\": null, \"number\": null, \"street\": null, \"surname\": \"Lawford\", \"team_id\": 4, \"nickname\": null, \"province\": null, \"birthname\": null, \"father_id\": 516, \"firstname\": \"Victoria Francis\", \"gender_id\": null, \"mother_id\": 508, \"country_id\": null, \"parents_id\": null, \"postal_code\": null}}', NULL, '2024-07-01 17:35:45', '2024-07-01 17:35:45'),
(161, 'activity', 'created', 'App\\Models\\Person', 532, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"dob\": null, \"dod\": null, \"pob\": null, \"pod\": null, \"sex\": \"f\", \"yob\": 1961, \"yod\": null, \"city\": null, \"phone\": null, \"photo\": \"532_001_demo.webp\", \"state\": null, \"number\": null, \"street\": null, \"surname\": \"Lawford\", \"team_id\": 4, \"nickname\": null, \"province\": null, \"birthname\": null, \"father_id\": 516, \"firstname\": \"Robin Elizabeth\", \"gender_id\": null, \"mother_id\": 508, \"country_id\": null, \"parents_id\": null, \"postal_code\": null}}', NULL, '2024-07-01 17:35:45', '2024-07-01 17:35:45'),
(162, 'activity', 'created', 'App\\Models\\Person', 533, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"dob\": null, \"dod\": null, \"pob\": null, \"pod\": null, \"sex\": \"f\", \"yob\": 1951, \"yod\": null, \"city\": null, \"phone\": null, \"photo\": \"533_001_demo.webp\", \"state\": null, \"number\": null, \"street\": null, \"surname\": \"Kennedy\", \"team_id\": 4, \"nickname\": null, \"province\": null, \"birthname\": null, \"father_id\": 509, \"firstname\": \"Kathleen Hartington\", \"gender_id\": null, \"mother_id\": 516, \"country_id\": null, \"parents_id\": null, \"postal_code\": null}}', NULL, '2024-07-01 17:35:45', '2024-07-01 17:35:45'),
(163, 'activity', 'created', 'App\\Models\\Person', 534, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"dob\": null, \"dod\": null, \"pob\": null, \"pod\": null, \"sex\": \"m\", \"yob\": 1952, \"yod\": null, \"city\": null, \"phone\": null, \"photo\": \"534_001_demo.webp\", \"state\": null, \"number\": null, \"street\": null, \"surname\": \"Kennedy\", \"team_id\": 4, \"nickname\": null, \"province\": null, \"birthname\": null, \"father_id\": 509, \"firstname\": \"Joseph Patrick II\", \"gender_id\": null, \"mother_id\": 516, \"country_id\": null, \"parents_id\": null, \"postal_code\": null}}', NULL, '2024-07-01 17:35:45', '2024-07-01 17:35:45'),
(164, 'activity', 'created', 'App\\Models\\Person', 535, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"dob\": null, \"dod\": null, \"pob\": null, \"pod\": null, \"sex\": \"m\", \"yob\": 1954, \"yod\": null, \"city\": null, \"phone\": null, \"photo\": \"535_001_demo.webp\", \"state\": null, \"number\": null, \"street\": null, \"surname\": \"Kennedy\", \"team_id\": 4, \"nickname\": null, \"province\": null, \"birthname\": null, \"father_id\": 509, \"firstname\": \"Robert Francis Jr.\", \"gender_id\": null, \"mother_id\": 516, \"country_id\": null, \"parents_id\": null, \"postal_code\": null}}', NULL, '2024-07-01 17:35:45', '2024-07-01 17:35:45'),
(165, 'activity', 'created', 'App\\Models\\Person', 536, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"dob\": null, \"dod\": null, \"pob\": null, \"pod\": null, \"sex\": \"m\", \"yob\": 1955, \"yod\": 1984, \"city\": null, \"phone\": null, \"photo\": \"536_001_demo.webp\", \"state\": null, \"number\": null, \"street\": null, \"surname\": \"Kennedy\", \"team_id\": 4, \"nickname\": null, \"province\": null, \"birthname\": null, \"father_id\": 509, \"firstname\": \"David Anthony\", \"gender_id\": null, \"mother_id\": 516, \"country_id\": null, \"parents_id\": null, \"postal_code\": null}}', NULL, '2024-07-01 17:35:45', '2024-07-01 17:35:45'),
(166, 'activity', 'created', 'App\\Models\\Person', 537, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"dob\": null, \"dod\": null, \"pob\": null, \"pod\": null, \"sex\": \"f\", \"yob\": 1956, \"yod\": null, \"city\": null, \"phone\": null, \"photo\": \"537_001_demo.webp\", \"state\": null, \"number\": null, \"street\": null, \"surname\": \"Kennedy\", \"team_id\": 4, \"nickname\": null, \"province\": null, \"birthname\": null, \"father_id\": 509, \"firstname\": \"Mary Courtney\", \"gender_id\": null, \"mother_id\": 516, \"country_id\": null, \"parents_id\": null, \"postal_code\": null}}', NULL, '2024-07-01 17:35:45', '2024-07-01 17:35:45'),
(167, 'activity', 'created', 'App\\Models\\Person', 538, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"dob\": null, \"dod\": null, \"pob\": null, \"pod\": null, \"sex\": \"m\", \"yob\": 1958, \"yod\": 1997, \"city\": null, \"phone\": null, \"photo\": \"538_001_demo.webp\", \"state\": null, \"number\": null, \"street\": null, \"surname\": \"Kennedy\", \"team_id\": 4, \"nickname\": null, \"province\": null, \"birthname\": null, \"father_id\": 509, \"firstname\": \"Michael LeMoyne\", \"gender_id\": null, \"mother_id\": 516, \"country_id\": null, \"parents_id\": null, \"postal_code\": null}}', NULL, '2024-07-01 17:35:45', '2024-07-01 17:35:45'),
(168, 'activity', 'created', 'App\\Models\\Person', 539, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"dob\": null, \"dod\": null, \"pob\": null, \"pod\": null, \"sex\": \"f\", \"yob\": 1959, \"yod\": null, \"city\": null, \"phone\": null, \"photo\": \"539_001_demo.webp\", \"state\": null, \"number\": null, \"street\": null, \"surname\": \"Kennedy\", \"team_id\": 4, \"nickname\": null, \"province\": null, \"birthname\": null, \"father_id\": 509, \"firstname\": \"Marry Kerry\", \"gender_id\": null, \"mother_id\": 516, \"country_id\": null, \"parents_id\": null, \"postal_code\": null}}', NULL, '2024-07-01 17:35:45', '2024-07-01 17:35:45'),
(169, 'activity', 'created', 'App\\Models\\Person', 540, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"dob\": null, \"dod\": null, \"pob\": null, \"pod\": null, \"sex\": \"m\", \"yob\": 1963, \"yod\": null, \"city\": null, \"phone\": null, \"photo\": \"540_001_demo.webp\", \"state\": null, \"number\": null, \"street\": null, \"surname\": \"Kennedy\", \"team_id\": 4, \"nickname\": null, \"province\": null, \"birthname\": null, \"father_id\": 509, \"firstname\": \"Christopher George\", \"gender_id\": null, \"mother_id\": 516, \"country_id\": null, \"parents_id\": null, \"postal_code\": null}}', NULL, '2024-07-01 17:35:45', '2024-07-01 17:35:45'),
(170, 'activity', 'created', 'App\\Models\\Person', 541, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"dob\": null, \"dod\": null, \"pob\": null, \"pod\": null, \"sex\": \"m\", \"yob\": 1965, \"yod\": null, \"city\": null, \"phone\": null, \"photo\": \"541_001_demo.webp\", \"state\": null, \"number\": null, \"street\": null, \"surname\": \"Kennedy\", \"team_id\": 4, \"nickname\": \"Max\", \"province\": null, \"birthname\": null, \"father_id\": 509, \"firstname\": \"Mathew Maxell Taylor\", \"gender_id\": null, \"mother_id\": 516, \"country_id\": null, \"parents_id\": null, \"postal_code\": null}}', NULL, '2024-07-01 17:35:45', '2024-07-01 17:35:45'),
(171, 'activity', 'created', 'App\\Models\\Person', 542, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"dob\": null, \"dod\": null, \"pob\": null, \"pod\": null, \"sex\": \"m\", \"yob\": 1967, \"yod\": null, \"city\": null, \"phone\": null, \"photo\": \"542_001_demo.webp\", \"state\": null, \"number\": null, \"street\": null, \"surname\": \"Kennedy\", \"team_id\": 4, \"nickname\": null, \"province\": null, \"birthname\": null, \"father_id\": 509, \"firstname\": \"Douglas Harriman\", \"gender_id\": null, \"mother_id\": 516, \"country_id\": null, \"parents_id\": null, \"postal_code\": null}}', NULL, '2024-07-01 17:35:45', '2024-07-01 17:35:45'),
(172, 'activity', 'created', 'App\\Models\\Person', 543, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"dob\": null, \"dod\": null, \"pob\": null, \"pod\": null, \"sex\": \"f\", \"yob\": 1968, \"yod\": null, \"city\": null, \"phone\": null, \"photo\": \"543_001_demo.webp\", \"state\": null, \"number\": null, \"street\": null, \"surname\": \"Kennedy\", \"team_id\": 4, \"nickname\": null, \"province\": null, \"birthname\": null, \"father_id\": 509, \"firstname\": \"Rory Elizabeth\", \"gender_id\": null, \"mother_id\": 516, \"country_id\": null, \"parents_id\": null, \"postal_code\": null}}', NULL, '2024-07-01 17:35:45', '2024-07-01 17:35:45'),
(173, 'activity', 'created', 'App\\Models\\Person', 544, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"dob\": null, \"dod\": null, \"pob\": null, \"pod\": null, \"sex\": \"m\", \"yob\": 1957, \"yod\": null, \"city\": null, \"phone\": null, \"photo\": \"544_001_demo.webp\", \"state\": null, \"number\": null, \"street\": null, \"surname\": \"Smith\", \"team_id\": 4, \"nickname\": null, \"province\": null, \"birthname\": null, \"father_id\": 517, \"firstname\": \"Stephen Edward Jr.\", \"gender_id\": null, \"mother_id\": 510, \"country_id\": null, \"parents_id\": null, \"postal_code\": null}}', NULL, '2024-07-01 17:35:45', '2024-07-01 17:35:45'),
(174, 'activity', 'created', 'App\\Models\\Person', 545, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"dob\": null, \"dod\": null, \"pob\": null, \"pod\": null, \"sex\": \"m\", \"yob\": 1960, \"yod\": null, \"city\": null, \"phone\": null, \"photo\": \"545_001_demo.webp\", \"state\": null, \"number\": null, \"street\": null, \"surname\": \"Smith\", \"team_id\": 4, \"nickname\": null, \"province\": null, \"birthname\": null, \"father_id\": 517, \"firstname\": \"William Kennedy\", \"gender_id\": null, \"mother_id\": 510, \"country_id\": null, \"parents_id\": null, \"postal_code\": null}}', NULL, '2024-07-01 17:35:45', '2024-07-01 17:35:45'),
(175, 'activity', 'created', 'App\\Models\\Person', 546, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"dob\": null, \"dod\": null, \"pob\": null, \"pod\": null, \"sex\": \"f\", \"yob\": 1967, \"yod\": null, \"city\": null, \"phone\": null, \"photo\": \"546_001_demo.webp\", \"state\": null, \"number\": null, \"street\": null, \"surname\": \"Smith\", \"team_id\": 4, \"nickname\": null, \"province\": null, \"birthname\": null, \"father_id\": 517, \"firstname\": \"Amanda Mary\", \"gender_id\": null, \"mother_id\": 510, \"country_id\": null, \"parents_id\": null, \"postal_code\": null}}', NULL, '2024-07-01 17:35:45', '2024-07-01 17:35:45'),
(176, 'activity', 'created', 'App\\Models\\Person', 547, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"dob\": null, \"dod\": null, \"pob\": null, \"pod\": null, \"sex\": \"f\", \"yob\": 1972, \"yod\": null, \"city\": null, \"phone\": null, \"photo\": \"547_001_demo.webp\", \"state\": null, \"number\": null, \"street\": null, \"surname\": \"Smith\", \"team_id\": 4, \"nickname\": null, \"province\": null, \"birthname\": null, \"father_id\": 517, \"firstname\": \"Kym Maria\", \"gender_id\": null, \"mother_id\": 510, \"country_id\": null, \"parents_id\": null, \"postal_code\": null}}', NULL, '2024-07-01 17:35:45', '2024-07-01 17:35:45'),
(177, 'activity', 'created', 'App\\Models\\Person', 548, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"dob\": null, \"dod\": null, \"pob\": null, \"pod\": null, \"sex\": \"f\", \"yob\": 1960, \"yod\": null, \"city\": null, \"phone\": null, \"photo\": \"548_001_demo.webp\", \"state\": null, \"number\": null, \"street\": null, \"surname\": \"Kennedy\", \"team_id\": 4, \"nickname\": null, \"province\": null, \"birthname\": null, \"father_id\": 511, \"firstname\": \"Kara Anne\", \"gender_id\": null, \"mother_id\": 518, \"country_id\": null, \"parents_id\": null, \"postal_code\": null}}', NULL, '2024-07-01 17:35:45', '2024-07-01 17:35:45'),
(178, 'activity', 'created', 'App\\Models\\Person', 549, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"dob\": null, \"dod\": null, \"pob\": null, \"pod\": null, \"sex\": \"m\", \"yob\": 1961, \"yod\": null, \"city\": null, \"phone\": null, \"photo\": \"549_001_demo.webp\", \"state\": null, \"number\": null, \"street\": null, \"surname\": \"Kennedy\", \"team_id\": 4, \"nickname\": null, \"province\": null, \"birthname\": null, \"father_id\": 511, \"firstname\": \"Edward Moore Jr.\", \"gender_id\": null, \"mother_id\": 518, \"country_id\": null, \"parents_id\": null, \"postal_code\": null}}', NULL, '2024-07-01 17:35:45', '2024-07-01 17:35:45');
INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `subject_id`, `event`, `causer_type`, `causer_id`, `properties`, `batch_uuid`, `created_at`, `updated_at`) VALUES
(179, 'activity', 'created', 'App\\Models\\Person', 550, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"dob\": null, \"dod\": null, \"pob\": null, \"pod\": null, \"sex\": \"m\", \"yob\": 1967, \"yod\": null, \"city\": null, \"phone\": null, \"photo\": \"550_001_demo.webp\", \"state\": null, \"number\": null, \"street\": null, \"surname\": \"Kennedy\", \"team_id\": 4, \"nickname\": null, \"province\": null, \"birthname\": null, \"father_id\": 511, \"firstname\": \"Patrick Joseph\", \"gender_id\": null, \"mother_id\": 518, \"country_id\": null, \"parents_id\": null, \"postal_code\": null}}', NULL, '2024-07-01 17:35:45', '2024-07-01 17:35:45'),
(180, 'activity', 'created', 'App\\Models\\Person', 551, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"dob\": \"1947-07-30\", \"dod\": null, \"pob\": \"Thal, Styria, Austria\", \"pod\": null, \"sex\": \"m\", \"yob\": 1947, \"yod\": null, \"city\": null, \"phone\": null, \"photo\": \"551_001_demo.webp\", \"state\": null, \"number\": null, \"street\": null, \"surname\": \"Schwarzenegger\", \"team_id\": 4, \"nickname\": null, \"province\": null, \"birthname\": null, \"father_id\": null, \"firstname\": \"Arnold Alois\", \"gender_id\": null, \"mother_id\": null, \"country_id\": null, \"parents_id\": null, \"postal_code\": null}}', NULL, '2024-07-01 17:35:45', '2024-07-01 17:35:45'),
(181, 'activity', 'created', 'App\\Models\\Couple', 501, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"team_id\": 4, \"date_end\": null, \"has_ended\": false, \"date_start\": \"1914-10-07\", \"is_married\": true, \"person1_id\": 501, \"person2_id\": 502}}', NULL, '2024-07-01 17:35:45', '2024-07-01 17:35:45'),
(182, 'activity', 'created', 'App\\Models\\Couple', 502, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"team_id\": 4, \"date_end\": null, \"has_ended\": false, \"date_start\": \"1953-09-12\", \"is_married\": true, \"person1_id\": 504, \"person2_id\": 512}}', NULL, '2024-07-01 17:35:45', '2024-07-01 17:35:45'),
(183, 'activity', 'created', 'App\\Models\\Couple', 503, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"team_id\": 4, \"date_end\": null, \"has_ended\": false, \"date_start\": \"1944-05-06\", \"is_married\": true, \"person1_id\": 506, \"person2_id\": 513}}', NULL, '2024-07-01 17:35:45', '2024-07-01 17:35:45'),
(184, 'activity', 'created', 'App\\Models\\Couple', 504, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"team_id\": 4, \"date_end\": null, \"has_ended\": false, \"date_start\": \"1953-05-23\", \"is_married\": true, \"person1_id\": 507, \"person2_id\": 514}}', NULL, '2024-07-01 17:35:45', '2024-07-01 17:35:45'),
(185, 'activity', 'created', 'App\\Models\\Couple', 505, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"team_id\": 4, \"date_end\": null, \"has_ended\": false, \"date_start\": \"1954-04-23\", \"is_married\": true, \"person1_id\": 508, \"person2_id\": 515}}', NULL, '2024-07-01 17:35:45', '2024-07-01 17:35:45'),
(186, 'activity', 'created', 'App\\Models\\Couple', 506, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"team_id\": 4, \"date_end\": null, \"has_ended\": false, \"date_start\": \"1950-06-17\", \"is_married\": true, \"person1_id\": 509, \"person2_id\": 516}}', NULL, '2024-07-01 17:35:45', '2024-07-01 17:35:45'),
(187, 'activity', 'created', 'App\\Models\\Couple', 507, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"team_id\": 4, \"date_end\": null, \"has_ended\": false, \"date_start\": \"1956-05-19\", \"is_married\": true, \"person1_id\": 510, \"person2_id\": 517}}', NULL, '2024-07-01 17:35:45', '2024-07-01 17:35:45'),
(188, 'activity', 'created', 'App\\Models\\Couple', 508, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"team_id\": 4, \"date_end\": \"1982-12-06\", \"has_ended\": true, \"date_start\": \"1958-11-29\", \"is_married\": true, \"person1_id\": 511, \"person2_id\": 518}}', NULL, '2024-07-01 17:35:45', '2024-07-01 17:35:45'),
(189, 'activity', 'created', 'App\\Models\\Couple', 509, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"team_id\": 4, \"date_end\": null, \"has_ended\": false, \"date_start\": \"1992-10-05\", \"is_married\": true, \"person1_id\": 511, \"person2_id\": 519}}', NULL, '2024-07-01 17:35:45', '2024-07-01 17:35:45'),
(190, 'activity', 'created', 'App\\Models\\Couple', 510, 'created', 'App\\Models\\User', 1, '{\"attributes\": {\"team_id\": 4, \"date_end\": \"2021-12-28\", \"has_ended\": true, \"date_start\": \"1986-04-26\", \"is_married\": true, \"person1_id\": 525, \"person2_id\": 551}}', NULL, '2024-07-01 17:35:45', '2024-07-01 17:35:45');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('8f4c4c28f4a627ad6d46808caaa7ae79', 'i:1;', 1719917313),
('8f4c4c28f4a627ad6d46808caaa7ae79:timer', 'i:1719917313;', 1719917313);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint UNSIGNED NOT NULL,
  `iso2` char(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iso3` char(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_nl` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isd` varchar(8) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_eu` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `iso2`, `iso3`, `name`, `name_nl`, `isd`, `is_eu`, `created_at`, `updated_at`) VALUES
(1, 'AD', 'AND', 'Andorra', 'Andorra', '376', 0, NULL, NULL),
(2, 'AE', 'ARE', 'United Arab Emirates', 'Verenigde Arabische Emiraten', '971', 0, NULL, NULL),
(3, 'AF', 'AFG', 'Afghanistan', 'Afghanistan', '93', 0, NULL, NULL),
(4, 'AG', 'ATG', 'Antigua and Barbuda', 'Antigua en Barbuda', '1-268', 0, NULL, NULL),
(5, 'AI', 'AIA', 'Anguilla', 'Anguilla', '1-264', 0, NULL, NULL),
(6, 'AL', 'ALB', 'Albania', 'Albanië', '355', 0, NULL, NULL),
(7, 'AM', 'ARM', 'Armenia', 'Armenië', '374', 0, NULL, NULL),
(8, 'AO', 'AGO', 'Angola', 'Angola', '244', 0, NULL, NULL),
(9, 'AQ', 'ATA', 'Antarctica', 'Antarctica', '672', 0, NULL, NULL),
(10, 'AR', 'ARG', 'Argentina', 'Argentinië', '54', 0, NULL, NULL),
(11, 'AS', 'ASM', 'American Samoa', 'Amerikaans-Samoa', '1-684', 0, NULL, NULL),
(12, 'AT', 'AUT', 'Austria', 'Oostenrijk', '43', 1, NULL, NULL),
(13, 'AU', 'AUS', 'Australia', 'Australië', '61', 0, NULL, NULL),
(14, 'AW', 'ABW', 'Aruba', 'Aruba', '297', 0, NULL, NULL),
(15, 'AX', 'ALA', 'Åland Islands', 'Åland', '358', 0, NULL, NULL),
(16, 'AZ', 'AZE', 'Azerbaijan', 'Azerbeidzjan', '994', 0, NULL, NULL),
(17, 'BA', 'BIH', 'Bosnia and Herzegovina', 'Bosnië en Herzegovina', '387', 0, NULL, NULL),
(18, 'BB', 'BRB', 'Barbados', 'Barbados', '1-246', 0, NULL, NULL),
(19, 'BD', 'BGD', 'Bangladesh', 'Bangladesh', '880', 0, NULL, NULL),
(20, 'BE', 'BEL', 'Belgium', 'België', '32', 1, NULL, NULL),
(21, 'BF', 'BFA', 'Burkina Faso', 'Burkina Faso', '226', 0, NULL, NULL),
(22, 'BG', 'BGR', 'Bulgaria', 'Bulgarije', '359', 1, NULL, NULL),
(23, 'BH', 'BHR', 'Bahrain', 'Bahrein', '973', 0, NULL, NULL),
(24, 'BI', 'BDI', 'Burundi', 'Burundi', '257', 0, NULL, NULL),
(25, 'BJ', 'BEN', 'Benin', 'Benin', '229', 0, NULL, NULL),
(26, 'BL', 'BLM', 'Saint-Barthélemy', 'Saint-Barthélemy', '652', 0, NULL, NULL),
(27, 'BM', 'BMU', 'Bermuda', 'Bermuda', '1-441', 0, NULL, NULL),
(28, 'BN', 'BRN', 'Brunei Darussalam', 'Brunei', '673', 0, NULL, NULL),
(29, 'BO', 'BOL', 'Bolivia', 'Bolivia', '591', 0, NULL, NULL),
(30, 'BQ', 'BES', 'Bonaire, Sint Eustatius and Saba', 'Bonaire, Sint Eustatius and Saba', '599-7', 0, NULL, NULL),
(31, 'BR', 'BRA', 'Brazil', 'Brazilië', '55', 0, NULL, NULL),
(32, 'BS', 'BHS', 'Bahamas', 'Bahama\'s', '1-242', 0, NULL, NULL),
(33, 'BT', 'BTN', 'Bhutan', 'Bhutan', '975', 0, NULL, NULL),
(34, 'BV', 'BVT', 'Bouvet Island', 'Bouveteiland', '47', 0, NULL, NULL),
(35, 'BW', 'BWA', 'Botswana', 'Botswana', '267', 0, NULL, NULL),
(36, 'BY', 'BLR', 'Belarus', 'Wit-Rusland', '375', 0, NULL, NULL),
(37, 'BZ', 'BLZ', 'Belize', 'Belize', '501', 0, NULL, NULL),
(38, 'CA', 'CAN', 'Canada', 'Canada', '1', 0, NULL, NULL),
(39, 'CC', 'CCK', 'Cocos (Keeling) Islands', 'Cocoseilanden', '61', 0, NULL, NULL),
(40, 'CD', 'COD', 'Congo (DRC)', 'Congo (DRC)', '242', 0, NULL, NULL),
(41, 'CF', 'CAF', 'Central African Republic', 'Centraal-Afrikaanse Republiek', '236', 0, NULL, NULL),
(42, 'CG', 'COG', 'Congo-Brazzaville', 'Congo-Brazzaville', '178', 0, NULL, NULL),
(43, 'CH', 'CHE', 'Switzerland', 'Zwitserland', '41', 0, NULL, NULL),
(44, 'CI', 'CIV', 'Ivory Coast', 'Ivoorkust', '225', 0, NULL, NULL),
(45, 'CK', 'COK', 'Cook Islands', 'Cookeilanden', '682', 0, NULL, NULL),
(46, 'CL', 'CHL', 'Chile', 'Chili', '56', 0, NULL, NULL),
(47, 'CM', 'CMR', 'Cameroon', 'Kameroen', '237', 0, NULL, NULL),
(48, 'CN', 'CHN', 'China', 'China', '86', 0, NULL, NULL),
(49, 'CO', 'COL', 'Colombia', 'Colombia', '57', 0, NULL, NULL),
(50, 'CR', 'CRI', 'Costa Rica', 'Costa Rica', '506', 0, NULL, NULL),
(51, 'CU', 'CUB', 'Cuba', 'Cuba', '53', 0, NULL, NULL),
(52, 'CV', 'CPV', 'Cape Verde', 'Kaapverdië', '238', 0, NULL, NULL),
(53, 'CW', 'CUW', 'Curaçao', 'Curaçao', '599', 0, NULL, NULL),
(54, 'CX', 'CXR', 'Christmas Island', 'Christmaseiland', '61', 0, NULL, NULL),
(55, 'CY', 'CYP', 'Cyprus', 'Cyprus', '357', 1, NULL, NULL),
(56, 'CZ', 'CZE', 'Czechia', 'Tsjechië', '420', 1, NULL, NULL),
(57, 'DE', 'DEU', 'Germany', 'Duitsland', '49', 1, NULL, NULL),
(58, 'DJ', 'DJI', 'Djibouti', 'Djibouti', '253', 0, NULL, NULL),
(59, 'DK', 'DNK', 'Denmark', 'Denemarken', '45', 1, NULL, NULL),
(60, 'DM', 'DMA', 'Dominica', 'Dominica', '1-767', 0, NULL, NULL),
(61, 'DO', 'DOM', 'Dominican Republic', 'Dominicaanse Republiek', '1-809', 0, NULL, NULL),
(62, 'DZ', 'DZA', 'Algeria', 'Algerije', '213', 0, NULL, NULL),
(63, 'EC', 'ECU', 'Ecuador', 'Ecuador', '593', 0, NULL, NULL),
(64, 'EE', 'EST', 'Estonia', 'Estland', '372', 1, NULL, NULL),
(65, 'EG', 'EGY', 'Egypt', 'Egypte', '20', 0, NULL, NULL),
(66, 'EH', 'ESH', 'Western Sahara', 'Westelijke Sahara', '212', 0, NULL, NULL),
(67, 'ER', 'ERI', 'Eritrea', 'Eritrea', '291', 0, NULL, NULL),
(68, 'ES', 'ESP', 'Spain', 'Spanje', '34', 1, NULL, NULL),
(69, 'ET', 'ETH', 'Ethiopia', 'Ethiopië', '251', 0, NULL, NULL),
(70, 'FI', 'FIN', 'Finland', 'Finland', '358', 1, NULL, NULL),
(71, 'FJ', 'FJI', 'Fiji', 'Fiji', '679', 0, NULL, NULL),
(72, 'FK', 'FLK', 'Falkland Islands (Malvinas)', 'Falklandeilanden', '500', 0, NULL, NULL),
(73, 'FM', 'FSM', 'Micronesia, Federated States of', 'Micronesia', '691', 0, NULL, NULL),
(74, 'FO', 'FRO', 'Faroe Islands', 'Faeröer', '298', 0, NULL, NULL),
(75, 'FR', 'FRA', 'France', 'Frankrijk', '33', 1, NULL, NULL),
(76, 'GA', 'GAB', 'Gabon', 'Gabon', '241', 0, NULL, NULL),
(77, 'GB', 'GBR', 'United Kingdom', 'Verenigd Koninkrijk', '44', 1, NULL, NULL),
(78, 'GD', 'GRD', 'Grenada', 'Grenada', '1-473', 0, NULL, NULL),
(79, 'GE', 'GEO', 'Georgia', 'Georgië', '995', 0, NULL, NULL),
(80, 'GF', 'GUF', 'French Guiana', 'Frans-Guyana', '594', 0, NULL, NULL),
(81, 'GG', 'GGY', 'Guernsey', 'Guernsey', '44-1481', 0, NULL, NULL),
(82, 'GH', 'GHA', 'Ghana', 'Ghana', '233', 0, NULL, NULL),
(83, 'GI', 'GIB', 'Gibraltar', 'Gibraltar', '350', 0, NULL, NULL),
(84, 'GL', 'GRL', 'Greenland', 'Groenland', '299', 0, NULL, NULL),
(85, 'GM', 'GMB', 'Gambia', 'Gambia', '220', 0, NULL, NULL),
(86, 'GN', 'GIN', 'Guinea', 'Guinee', '224', 0, NULL, NULL),
(87, 'GP', 'GLP', 'Guadeloupe', 'Guadeloupe', '590', 0, NULL, NULL),
(88, 'GQ', 'GNQ', 'Equatorial Guinea', 'Equatoriaal-Guinea', '240', 0, NULL, NULL),
(89, 'GR', 'GRC', 'Greece', 'Griekenland', '30', 1, NULL, NULL),
(90, 'GS', 'SGS', 'South Georgia and the South Sandwich Islands', 'Zuid-Georgia en de Zuidelijke Sandwicheilanden', '500', 0, NULL, NULL),
(91, 'GT', 'GTM', 'Guatemala', 'Guatemala', '502', 0, NULL, NULL),
(92, 'GU', 'GUM', 'Guam', 'Guam', '1-671', 0, NULL, NULL),
(93, 'GW', 'GNB', 'Guinea-bissau', 'Guinee-Bissau', '245', 0, NULL, NULL),
(94, 'GY', 'GUY', 'Guyana', 'Guyana', '592', 0, NULL, NULL),
(95, 'HK', 'HKG', 'Hong Kong', 'Hongkong', '852', 0, NULL, NULL),
(96, 'HM', 'HMD', 'Heard Island and McDonald Islands', 'Heard en McDonaldeilanden', '011', 0, NULL, NULL),
(97, 'HN', 'HND', 'Honduras', 'Honduras', '504', 0, NULL, NULL),
(98, 'HR', 'HRV', 'Croatia', 'Kroatië', '385', 1, NULL, NULL),
(99, 'HT', 'HTI', 'Haiti', 'Haïti', '509', 0, NULL, NULL),
(100, 'HU', 'HUN', 'Hungary', 'Hongarije', '36', 1, NULL, NULL),
(101, 'ID', 'IDN', 'Indonesia', 'Indonesië', '62', 0, NULL, NULL),
(102, 'IE', 'IRL', 'Ireland', 'Ierland', '353', 1, NULL, NULL),
(103, 'IL', 'ISR', 'Israel', 'Israël', '972', 0, NULL, NULL),
(104, 'IM', 'IMN', 'Isle of Man', 'Man', '44-1624', 0, NULL, NULL),
(105, 'IN', 'IND', 'India', 'India', '91', 0, NULL, NULL),
(106, 'IO', 'IOT', 'British Indian Ocean Territory', 'Brits Indische Oceaanterritorium', '246', 0, NULL, NULL),
(107, 'IQ', 'IRQ', 'Iraq', 'Irak', '964', 0, NULL, NULL),
(108, 'IR', 'IRN', 'Iran (Islamic Republic of)', 'Iran', '98', 0, NULL, NULL),
(109, 'IS', 'ISL', 'Iceland', 'IJsland', '354', 0, NULL, NULL),
(110, 'IT', 'ITA', 'Italy', 'Italië', '39', 1, NULL, NULL),
(111, 'JE', 'JEY', 'Jersey', 'Jersey', '44-1534', 1, NULL, NULL),
(112, 'JM', 'JAM', 'Jamaica', 'Jamaica', '1-876', 0, NULL, NULL),
(113, 'JO', 'JOR', 'Jordan', 'Jordanië', '962', 0, NULL, NULL),
(114, 'JP', 'JPN', 'Japan', 'Japan', '81', 0, NULL, NULL),
(115, 'KE', 'KEN', 'Kenya', 'Kenia', '254', 0, NULL, NULL),
(116, 'KG', 'KGZ', 'Kyrgyzstan', 'Kirgizië', '996', 0, NULL, NULL),
(117, 'KH', 'KHM', 'Cambodia', 'Cambodja', '855', 0, NULL, NULL),
(118, 'KI', 'KIR', 'Kiribati', 'Kiribati', '686', 0, NULL, NULL),
(119, 'KM', 'COM', 'Comoros', 'Comoren', '269', 0, NULL, NULL),
(120, 'KN', 'KNA', 'Saint Kitts and Nevis', 'Saint Kitts en Nevis', '1-869', 0, NULL, NULL),
(121, 'KP', 'PRK', 'Democratic People\'s Republic of Korea (North Korea)', 'Noord-Korea', '850', 0, NULL, NULL),
(122, 'KR', 'KOR', 'Republic of Korea (South Korea)', 'Zuid-Korea', '82', 0, NULL, NULL),
(123, 'KW', 'KWT', 'Kuwait', 'Koeweit', '965', 0, NULL, NULL),
(124, 'KY', 'CYM', 'Cayman Islands', 'Kaaimaneilanden', '1-345', 0, NULL, NULL),
(125, 'KZ', 'KAZ', 'Kazakhstan', 'Kazachstan', '7', 0, NULL, NULL),
(126, 'LA', 'LAO', 'Lao People\'s Democratic Republic', 'Laos', '856', 0, NULL, NULL),
(127, 'LB', 'LBN', 'Lebanon', 'Libanon', '961', 0, NULL, NULL),
(128, 'LC', 'LCA', 'Saint Lucia', 'Saint Lucia', '1-758', 0, NULL, NULL),
(129, 'LI', 'LIE', 'Liechtenstein', 'Liechtenstein', '423', 0, NULL, NULL),
(130, 'LK', 'LKA', 'Sri Lanka', 'Sri Lanka', '94', 0, NULL, NULL),
(131, 'LR', 'LBR', 'Liberia', 'Liberia', '231', 0, NULL, NULL),
(132, 'LS', 'LSO', 'Lesotho', 'Lesotho', '266', 0, NULL, NULL),
(133, 'LT', 'LTU', 'Lithuania', 'Litouwen', '370', 1, NULL, NULL),
(134, 'LU', 'LUX', 'Luxembourg', 'Luxemburg', '352', 1, NULL, NULL),
(135, 'LV', 'LVA', 'Latvia', 'Letland', '371', 1, NULL, NULL),
(136, 'LY', 'LBY', 'Libya', 'Libië', '218', 0, NULL, NULL),
(137, 'MA', 'MAR', 'Morocco', 'Marokko', '212', 0, NULL, NULL),
(138, 'MC', 'MCO', 'Monaco', 'Monaco', '377', 0, NULL, NULL),
(139, 'MD', 'MDA', 'Moldova', 'Moldavië', '373', 0, NULL, NULL),
(140, 'ME', 'MNE', 'Montenegro', 'Montenegro', '382', 0, NULL, NULL),
(141, 'MF', 'MAF', 'Saint-Martin (French part)', 'Sint-Maarten', '663', 0, NULL, NULL),
(142, 'MG', 'MDG', 'Madagascar', 'Madagaskar', '261', 0, NULL, NULL),
(143, 'MH', 'MHL', 'Marshall Islands', 'Marshalleilanden', '692', 0, NULL, NULL),
(144, 'MK', 'MKD', 'North Macedonia', 'Noord-Macedonië', '389', 0, NULL, NULL),
(145, 'ML', 'MLI', 'Mali', 'Mali', '223', 0, NULL, NULL),
(146, 'MM', 'MMR', 'Myanmar', 'Myanmar', '95', 0, NULL, NULL),
(147, 'MN', 'MNG', 'Mongolia', 'Mongolië', '976', 0, NULL, NULL),
(148, 'MO', 'MAC', 'Macao', 'Macau', '853', 0, NULL, NULL),
(149, 'MP', 'MNP', 'Northern Mariana Islands', 'Noordelijke Marianen', '1-670', 0, NULL, NULL),
(150, 'MQ', 'MTQ', 'Martinique', 'Martinique', '596', 0, NULL, NULL),
(151, 'MR', 'MRT', 'Mauritania', 'Mauritanië', '222', 0, NULL, NULL),
(152, 'MS', 'MSR', 'Montserrat', 'Montserrat', '1-664', 0, NULL, NULL),
(153, 'MT', 'MLT', 'Malta', 'Malta', '356', 1, NULL, NULL),
(154, 'MU', 'MUS', 'Mauritius', 'Mauritius', '230', 0, NULL, NULL),
(155, 'MV', 'MDV', 'Maldives', 'Maldiven', '960', 0, NULL, NULL),
(156, 'MW', 'MWI', 'Malawi', 'Malawi', '265', 0, NULL, NULL),
(157, 'MX', 'MEX', 'Mexico', 'Mexico', '52', 0, NULL, NULL),
(158, 'MY', 'MYS', 'Malaysia', 'Maleisië', '60', 0, NULL, NULL),
(159, 'MZ', 'MOZ', 'Mozambique', 'Mozambique', '258', 0, NULL, NULL),
(160, 'NA', 'NAM', 'Namibia', 'Namibië', '264', 0, NULL, NULL),
(161, 'NC', 'NCL', 'New Caledonia', 'Nieuw-Caledonië', '687', 0, NULL, NULL),
(162, 'NE', 'NER', 'Niger', 'Niger', '227', 0, NULL, NULL),
(163, 'NF', 'NFK', 'Norfolk Island', 'Norfolk', '672', 0, NULL, NULL),
(164, 'NG', 'NGA', 'Nigeria', 'Nigeria', '234', 0, NULL, NULL),
(165, 'NI', 'NIC', 'Nicaragua', 'Nicaragua', '505', 0, NULL, NULL),
(166, 'NL', 'NLD', 'Netherlands', 'Nederland', '31', 1, NULL, NULL),
(167, 'NO', 'NOR', 'Norway', 'Noorwegen', '47', 0, NULL, NULL),
(168, 'NP', 'NPL', 'Nepal', 'Nepal', '977', 0, NULL, NULL),
(169, 'NR', 'NRU', 'Nauru', 'Nauru', '674', 0, NULL, NULL),
(170, 'NU', 'NIU', 'Niue', 'Niue', '683', 0, NULL, NULL),
(171, 'NZ', 'NZL', 'New Zealand', 'Nieuw-Zeeland', '64', 0, NULL, NULL),
(172, 'OM', 'OMN', 'Oman', 'Oman', '968', 0, NULL, NULL),
(173, 'PA', 'PAN', 'Panama', 'Panama', '507', 0, NULL, NULL),
(174, 'PE', 'PER', 'Peru', 'Peru', '51', 0, NULL, NULL),
(175, 'PF', 'PYF', 'French Polynesia', 'Frans-Polynesië', '689', 0, NULL, NULL),
(176, 'PG', 'PNG', 'Papua New Guinea', 'Papoea-Nieuw-Guinea', '675', 0, NULL, NULL),
(177, 'PH', 'PHL', 'Philippines', 'Filipijnen', '63', 0, NULL, NULL),
(178, 'PK', 'PAK', 'Pakistan', 'Pakistan', '92', 0, NULL, NULL),
(179, 'PL', 'POL', 'Poland', 'Polen', '48', 1, NULL, NULL),
(180, 'PM', 'SPM', 'St. Pierre and Miquelon', 'Saint-Pierre en Miquelon', '508', 0, NULL, NULL),
(181, 'PN', 'PCN', 'Pitcairn', 'Pitcairneilanden', '64', 0, NULL, NULL),
(182, 'PR', 'PRI', 'Puerto Rico', 'Puerto Rico', '1-787', 0, NULL, NULL),
(183, 'PS', 'PSE', 'Palestine', 'Palestina', '970', 0, NULL, NULL),
(184, 'PT', 'PRT', 'Portugal', 'Portugal', '351', 1, NULL, NULL),
(185, 'PW', 'PLW', 'Palau', 'Palau', '680', 0, NULL, NULL),
(186, 'PY', 'PRY', 'Paraguay', 'Paraguay', '595', 0, NULL, NULL),
(187, 'QA', 'QAT', 'Qatar', 'Qatar', '974', 0, NULL, NULL),
(188, 'RE', 'REU', 'Réunion', 'Réunion', '262', 0, NULL, NULL),
(189, 'RO', 'ROU', 'Romania', 'Roemenië', '40', 1, NULL, NULL),
(190, 'RS', 'SRB', 'Serbia', 'Servië', '381', 0, NULL, NULL),
(191, 'RU', 'RUS', 'Russian Federation', 'Rusland', '7', 0, NULL, NULL),
(192, 'RW', 'RWA', 'Rwanda', 'Rwanda', '250', 0, NULL, NULL),
(193, 'SA', 'SAU', 'Saudi Arabia', 'Saoedi-Arabië', '966', 0, NULL, NULL),
(194, 'SB', 'SLB', 'Solomon Islands', 'Salomonseilanden', '677', 0, NULL, NULL),
(195, 'SC', 'SYC', 'Seychelles', 'Seychellen', '248', 0, NULL, NULL),
(196, 'SD', 'SDN', 'Sudan', 'Soedan', '249', 0, NULL, NULL),
(197, 'SE', 'SWE', 'Sweden', 'Zweden', '46', 1, NULL, NULL),
(198, 'SG', 'SGP', 'Singapore', 'Singapore', '65', 0, NULL, NULL),
(199, 'SH', 'SHN', 'Saint Helena, Ascension and Tristan da Cunha', 'Sint-Helena, Ascension en Tristan da Cunha', '290', 0, NULL, NULL),
(200, 'SI', 'SVN', 'Slovenia', 'Slovenië', '386', 1, NULL, NULL),
(201, 'SJ', 'SJM', 'Svalbard and Jan Mayen Islands', 'Spitsbergen en Jan Mayen', '47', 0, NULL, NULL),
(202, 'SK', 'SVK', 'Slovakia', 'Slowakije', '421', 1, NULL, NULL),
(203, 'SL', 'SLE', 'Sierra Leone', 'Sierra Leone', '232', 0, NULL, NULL),
(204, 'SM', 'SMR', 'San Marino', 'San Marino', '378', 0, NULL, NULL),
(205, 'SN', 'SEN', 'Senegal', 'Senegal', '221', 0, NULL, NULL),
(206, 'SO', 'SOM', 'Somalia', 'Somalië', '252', 0, NULL, NULL),
(207, 'SR', 'SUR', 'Suriname', 'Suriname', '597', 0, NULL, NULL),
(208, 'SS', 'SSD', 'South Sudan', 'Zuid-Soedan', '728', 0, NULL, NULL),
(209, 'ST', 'STP', 'Sao Tome and Principe', 'Sao Tomé en Principe', '239', 0, NULL, NULL),
(210, 'SV', 'SLV', 'El Salvador', 'El Salvador', '503', 0, NULL, NULL),
(211, 'SX', 'SXM', 'Sint Maarten (Dutch part)', 'Sint Maarten (Nederlands deel)', '1-721', 0, NULL, NULL),
(212, 'SY', 'SYR', 'Syrian Arab Republic', 'Syrië', '963', 0, NULL, NULL),
(213, 'SZ', 'SWZ', 'Eswatini', 'Eswatini', '268', 0, NULL, NULL),
(214, 'TC', 'TCA', 'Turks and Caicos Islands', 'Turks- en Caicoseilanden', '1-649', 0, NULL, NULL),
(215, 'TD', 'TCD', 'Chad', 'Tsjaad', '235', 0, NULL, NULL),
(216, 'TF', 'ATF', 'French Southern Territories', 'Franse Zuidelijke en Antarctische Gebieden', '262', 0, NULL, NULL),
(217, 'TG', 'TGO', 'Togo', 'Togo', '228', 0, NULL, NULL),
(218, 'TH', 'THA', 'Thailand', 'Thailand', '66', 0, NULL, NULL),
(219, 'TJ', 'TJK', 'Tajikistan', 'Tadzjikistan', '992', 0, NULL, NULL),
(220, 'TK', 'TKL', 'Tokelau', 'Tokelau', '690', 0, NULL, NULL),
(221, 'TL', 'TLS', 'Timor-Leste', 'Oost-Timor', '670', 0, NULL, NULL),
(222, 'TM', 'TKM', 'Turkmenistan', 'Turkmenistan', '993', 0, NULL, NULL),
(223, 'TN', 'TUN', 'Tunisia', 'Tunesië', '216', 0, NULL, NULL),
(224, 'TO', 'TON', 'Tonga', 'Tonga', '676', 0, NULL, NULL),
(225, 'TR', 'TUR', 'Turkey', 'Turkije', '90', 0, NULL, NULL),
(226, 'TT', 'TTO', 'Trinidad and Tobago', 'Trinidad en Tobago', '1-868', 0, NULL, NULL),
(227, 'TV', 'TUV', 'Tuvalu', 'Tuvalu', '688', 0, NULL, NULL),
(228, 'TW', 'TWN', 'Taiwan', 'Taiwan', '886', 0, NULL, NULL),
(229, 'TZ', 'TZA', 'Tanzania, United Republic of', 'Tanzania', '255', 0, NULL, NULL),
(230, 'UA', 'UKR', 'Ukraine', 'Oekraïne', '380', 0, NULL, NULL),
(231, 'UG', 'UGA', 'Uganda', 'Oeganda', '256', 0, NULL, NULL),
(232, 'UM', 'UMI', 'United States Minor Outlying Islands', 'Kleine afgelegen eilanden van de Verenigde Staten', '246', 0, NULL, NULL),
(233, 'US', 'USA', 'United States of America', 'Verenigde Staten', '1', 0, NULL, NULL),
(234, 'UY', 'URY', 'Uruguay', 'Uruguay', '598', 0, NULL, NULL),
(235, 'UZ', 'UZB', 'Uzbekistan', 'Oezbekistan', '998', 0, NULL, NULL),
(236, 'VA', 'VAT', 'Vatican City State (Holy See)', 'Vaticaanstad', '379', 0, NULL, NULL),
(237, 'VC', 'VCT', 'Saint Vincent and the Grenadines', 'Saint Vincent en de Grenadines', '1-784', 0, NULL, NULL),
(238, 'VE', 'VEN', 'Venezuela', 'Venezuela', '58', 0, NULL, NULL),
(239, 'VG', 'VGB', 'Virgin Islands (British)', 'Britse Maagdeneilanden', '1-284', 0, NULL, NULL),
(240, 'VI', 'VIR', 'Virgin Islands (U.S.)', 'Amerikaanse Maagdeneilanden', '1-340', 0, NULL, NULL),
(241, 'VN', 'VNM', 'Vietnam', 'Vietnam', '84', 0, NULL, NULL),
(242, 'VU', 'VUT', 'Vanuatu', 'Vanuatu', '678', 0, NULL, NULL),
(243, 'WF', 'WLF', 'Wallis and Futuna', 'Wallis en Futuna', '681', 0, NULL, NULL),
(244, 'WS', 'WSM', 'Samoa', 'Samoa', '685', 0, NULL, NULL),
(245, 'YE', 'YEM', 'Yemen', 'Jemen', '967', 0, NULL, NULL),
(246, 'YT', 'MYT', 'Mayotte', 'Mayotte', '262', 0, NULL, NULL),
(247, 'ZA', 'ZAF', 'South Africa', 'Zuid-Afrika', '27', 0, NULL, NULL),
(248, 'ZM', 'ZMB', 'Zambia', 'Zambia', '260', 0, NULL, NULL),
(249, 'ZW', 'ZWE', 'Zimbabwe', 'Zimbabwe', '263', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `couples`
--

CREATE TABLE `couples` (
  `id` bigint UNSIGNED NOT NULL,
  `person1_id` bigint UNSIGNED NOT NULL,
  `person2_id` bigint UNSIGNED NOT NULL,
  `date_start` date DEFAULT NULL,
  `date_end` date DEFAULT NULL,
  `is_married` tinyint(1) NOT NULL DEFAULT '0',
  `has_ended` tinyint(1) NOT NULL DEFAULT '0',
  `team_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `couples`
--

INSERT INTO `couples` (`id`, `person1_id`, `person2_id`, `date_start`, `date_end`, `is_married`, `has_ended`, `team_id`, `created_at`, `updated_at`) VALUES
(1, 2, 1, '1947-11-20', NULL, 1, 0, 3, '2024-07-01 17:35:43', '2024-07-01 17:35:43'),
(2, 3, 7, '1981-07-29', '1996-08-28', 1, 1, 3, '2024-07-01 17:35:43', '2024-07-01 17:35:43'),
(3, 3, 10, '2005-04-09', '2008-04-09', 1, 1, 3, '2024-07-01 17:35:43', '2024-07-01 17:35:43'),
(4, 12, 4, '1973-11-14', '1992-04-23', 1, 1, 3, '2024-07-01 17:35:43', '2024-07-01 17:35:43'),
(5, 13, 14, '2008-08-17', NULL, 1, 0, 3, '2024-07-01 17:35:43', '2024-07-01 17:35:43'),
(6, 17, 4, '1992-12-12', NULL, 1, 0, 3, '2024-07-01 17:35:43', '2024-07-01 17:35:43'),
(7, 5, 18, '1986-07-23', '1996-05-30', 1, 1, 3, '2024-07-01 17:35:43', '2024-07-01 17:35:43'),
(8, 22, 21, '2011-06-30', NULL, 1, 0, 3, '2024-07-01 17:35:43', '2024-07-01 17:35:43'),
(9, 6, 23, '1999-06-19', NULL, 1, 0, 3, '2024-07-01 17:35:43', '2024-07-01 17:35:43'),
(10, 8, 11, '2011-04-29', NULL, 1, 0, 3, '2024-07-01 17:35:43', '2024-07-01 17:35:43'),
(11, 27, 28, '1954-06-01', NULL, 1, 1, 3, '2024-07-01 17:35:43', '2024-07-01 17:35:43'),
(12, 30, 29, '1980-06-21', NULL, 1, 0, 3, '2024-07-01 17:35:43', '2024-07-01 17:35:43'),
(13, 32, 31, '1923-04-06', NULL, 1, 0, 3, '2024-07-01 17:35:43', '2024-07-01 17:35:43'),
(14, 35, 34, '1881-07-16', NULL, 1, 0, 3, '2024-07-01 17:35:43', '2024-07-01 17:35:43'),
(15, 37, 36, '1893-07-06', NULL, 1, 0, 3, '2024-07-01 17:35:44', '2024-07-01 17:35:44'),
(16, 39, 40, '1946-01-02', NULL, 1, 0, 3, '2024-07-01 17:35:44', '2024-07-01 17:35:44'),
(17, 41, 10, '1973-07-04', '1995-01-11', 1, 1, 3, '2024-07-01 17:35:44', '2024-07-01 17:35:44'),
(18, 44, 45, '1956-01-17', NULL, 1, 1, 3, '2024-07-01 17:35:44', '2024-07-01 17:35:44'),
(19, 9, 47, '2018-05-19', NULL, 1, 0, 3, '2024-07-01 17:35:44', '2024-07-01 17:35:44'),
(20, 48, 47, '2011-08-26', '2013-08-26', 1, 1, 3, '2024-07-01 17:35:44', '2024-07-01 17:35:44'),
(21, 50, 49, '1979-12-23', NULL, 1, 1, 3, '2024-07-01 17:35:44', '2024-07-01 17:35:44'),
(22, 50, 51, NULL, NULL, 1, 1, 3, '2024-07-01 17:35:44', '2024-07-01 17:35:44'),
(23, 57, 20, '2018-10-12', NULL, 1, 0, 3, '2024-07-01 17:35:44', '2024-07-01 17:35:44'),
(101, 201, 202, '1995-01-01', NULL, 0, 0, 3, '2024-07-01 17:35:44', '2024-07-01 17:35:44'),
(102, 3, 205, '2010-01-01', NULL, 0, 0, 3, '2024-07-01 17:35:44', '2024-07-01 17:35:44'),
(201, 5, 18, '2005-01-01', NULL, 1, 0, 3, '2024-07-01 17:35:44', '2024-07-01 17:35:44'),
(501, 501, 502, '1914-10-07', NULL, 1, 0, 4, '2024-07-01 17:35:45', '2024-07-01 17:35:45'),
(502, 504, 512, '1953-09-12', NULL, 1, 0, 4, '2024-07-01 17:35:45', '2024-07-01 17:35:45'),
(503, 506, 513, '1944-05-06', NULL, 1, 0, 4, '2024-07-01 17:35:45', '2024-07-01 17:35:45'),
(504, 507, 514, '1953-05-23', NULL, 1, 0, 4, '2024-07-01 17:35:45', '2024-07-01 17:35:45'),
(505, 508, 515, '1954-04-23', NULL, 1, 0, 4, '2024-07-01 17:35:45', '2024-07-01 17:35:45'),
(506, 509, 516, '1950-06-17', NULL, 1, 0, 4, '2024-07-01 17:35:45', '2024-07-01 17:35:45'),
(507, 510, 517, '1956-05-19', NULL, 1, 0, 4, '2024-07-01 17:35:45', '2024-07-01 17:35:45'),
(508, 511, 518, '1958-11-29', '1982-12-06', 1, 1, 4, '2024-07-01 17:35:45', '2024-07-01 17:35:45'),
(509, 511, 519, '1992-10-05', NULL, 1, 0, 4, '2024-07-01 17:35:45', '2024-07-01 17:35:45'),
(510, 525, 551, '1986-04-26', '2021-12-28', 1, 1, 4, '2024-07-01 17:35:45', '2024-07-01 17:35:45');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `genders`
--

CREATE TABLE `genders` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `genders`
--

INSERT INTO `genders` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Agender', NULL, NULL),
(2, 'Androgyne', NULL, NULL),
(3, 'Androgynous', NULL, NULL),
(4, 'Bigender', NULL, NULL),
(5, 'Cis', NULL, NULL),
(6, 'Cisgender', NULL, NULL),
(7, 'Cis Female', NULL, NULL),
(8, 'Cis Male', NULL, NULL),
(9, 'Cis Man', NULL, NULL),
(10, 'Cis Woman', NULL, NULL),
(11, 'Cisgender Female', NULL, NULL),
(12, 'Cisgender Male', NULL, NULL),
(13, 'Cisgender Man', NULL, NULL),
(14, 'Cisgender Woman', NULL, NULL),
(15, 'Female to Male', NULL, NULL),
(16, 'FTM', NULL, NULL),
(17, 'Gender Fluid', NULL, NULL),
(18, 'Gender Nonconforming', NULL, NULL),
(19, 'Gender Questioning', NULL, NULL),
(20, 'Gender Variant', NULL, NULL),
(21, 'Genderqueer', NULL, NULL),
(22, 'Intersex', NULL, NULL),
(23, 'Male to Female', NULL, NULL),
(24, 'MTF', NULL, NULL),
(25, 'Neither', NULL, NULL),
(26, 'Neutrois', NULL, NULL),
(27, 'Non-binary', NULL, NULL),
(28, 'Other', NULL, NULL),
(29, 'Pangender', NULL, NULL),
(30, 'Trans', NULL, NULL),
(31, 'Trans*', NULL, NULL),
(32, 'Trans Female', NULL, NULL),
(33, 'Trans* Female', NULL, NULL),
(34, 'Trans Male', NULL, NULL),
(35, 'Trans* Male', NULL, NULL),
(36, 'Trans Man', NULL, NULL),
(37, 'Trans* Man', NULL, NULL),
(38, 'Trans Person', NULL, NULL),
(39, 'Trans* Person', NULL, NULL),
(40, 'Trans Woman', NULL, NULL),
(41, 'Trans* Woman', NULL, NULL),
(42, 'Transfeminine', NULL, NULL),
(43, 'Transgender', NULL, NULL),
(44, 'Transgender Female', NULL, NULL),
(45, 'Transgender Male', NULL, NULL),
(46, 'Transgender Man', NULL, NULL),
(47, 'Transgender Person', NULL, NULL),
(48, 'Transgender Woman', NULL, NULL),
(49, 'Transmasculine', NULL, NULL),
(50, 'Transsexual', NULL, NULL),
(51, 'Transsexual Female', NULL, NULL),
(52, 'Transsexual Male', NULL, NULL),
(53, 'Transsexual Man', NULL, NULL),
(54, 'Transsexual Person', NULL, NULL),
(55, 'Transsexual Woman', NULL, NULL),
(56, 'Two-Spirit', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `conversions_disk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` bigint UNSIGNED NOT NULL,
  `manipulations` json NOT NULL,
  `custom_properties` json NOT NULL,
  `generated_conversions` json NOT NULL,
  `responsive_images` json NOT NULL,
  `order_column` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000001_create_users_table', 1),
(2, '0001_01_01_000002_create_userlogs_table', 1),
(3, '0001_01_01_000003_create_cache_table', 1),
(4, '0001_01_01_000004_create_jobs_table', 1),
(5, '2024_01_01_000001_add_two_factor_columns_to_users_table', 1),
(6, '2024_01_01_000002_create_personal_access_tokens_table', 1),
(7, '2024_01_01_100001_create_teams_table', 1),
(8, '2024_01_01_100002_create_team_user_table', 1),
(9, '2024_01_01_100003_create_team_invitations_table', 1),
(10, '2024_03_03_200001_create_genders_table', 1),
(11, '2024_03_03_200002_create_countries_table', 1),
(12, '2024_03_03_300001_create_people_table', 1),
(13, '2024_03_03_300002_create_person_metadata_table', 1),
(14, '2024_03_03_300003_create_couples_table', 1),
(15, '2024_04_04_100001_create_activity_log_table', 1),
(16, '2024_05_05_100001_create_media_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `people`
--

CREATE TABLE `people` (
  `id` bigint UNSIGNED NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `surname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nickname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sex` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'm',
  `gender_id` bigint UNSIGNED DEFAULT NULL,
  `father_id` bigint UNSIGNED DEFAULT NULL,
  `mother_id` bigint UNSIGNED DEFAULT NULL,
  `parents_id` bigint UNSIGNED DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `yob` int DEFAULT NULL,
  `pob` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dod` date DEFAULT NULL,
  `yod` int DEFAULT NULL,
  `pod` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `street` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `province` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` bigint UNSIGNED DEFAULT NULL,
  `phone` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `team_id` bigint UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `people`
--

INSERT INTO `people` (`id`, `firstname`, `surname`, `birthname`, `nickname`, `sex`, `gender_id`, `father_id`, `mother_id`, `parents_id`, `dob`, `yob`, `pob`, `dod`, `yod`, `pod`, `street`, `number`, `postal_code`, `city`, `province`, `state`, `country_id`, `phone`, `photo`, `team_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Elizabeth II', 'Queen', NULL, NULL, 'f', NULL, 32, 31, 13, '1926-04-21', 1926, 'London (UK)', '2022-09-08', 2022, 'Balmoral Castle (UK)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1_001_demo.webp', 3, NULL, '2024-07-01 17:35:42', '2024-07-01 17:35:42'),
(2, 'Philip', 'Duke of Edinburgh', NULL, NULL, 'm', NULL, NULL, NULL, NULL, '1921-06-10', 1921, 'Korfu (GR)', '2021-04-09', 2021, 'Windsor Castle (UK)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2_001_demo.webp', 3, NULL, '2024-07-01 17:35:42', '2024-07-01 17:35:42'),
(3, 'Charles III', 'King', NULL, NULL, 'm', NULL, 2, 1, 1, '1948-11-14', 1948, 'London (UK)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3_001_demo.webp', 3, NULL, '2024-07-01 17:35:42', '2024-07-01 17:35:42'),
(4, 'Anne', 'Princess Royal', NULL, NULL, 'f', NULL, 2, 1, 1, '1950-08-15', NULL, 'London (UK)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4_001_demo.webp', 3, NULL, '2024-07-01 17:35:42', '2024-07-01 17:35:42'),
(5, 'Andrew', 'Duke of York', NULL, NULL, 'm', NULL, 2, 1, 1, '1960-02-16', 1960, 'London (UK)', NULL, NULL, NULL, 'Royal Lodge', NULL, 'SL4 2JD', 'Windsor', NULL, NULL, 77, NULL, '5_001_demo.webp', 3, NULL, '2024-07-01 17:35:42', '2024-07-01 17:35:44'),
(6, 'Edward', 'Earl of Wessex', NULL, NULL, 'm', NULL, 2, 1, 1, '1964-03-10', 1964, 'London (UK)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '6_001_demo.webp', 3, NULL, '2024-07-01 17:35:42', '2024-07-01 17:35:42'),
(7, 'Diana', 'Princess of Wales', 'Spencer', 'Queen of people\'s hearts', 'f', NULL, 27, 28, 11, '1961-07-01', 1961, 'Sandringham (UK)', '1997-08-31', 1997, 'Paris (F)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '7_001_demo.webp', 3, NULL, '2024-07-01 17:35:42', '2024-07-01 17:35:42'),
(8, 'William', 'Duke of Cambridge', NULL, NULL, 'm', NULL, 3, 7, 2, '1982-06-21', 1982, 'London (UK)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '8_001_demo.webp', 3, NULL, '2024-07-01 17:35:42', '2024-07-01 17:35:42'),
(9, 'Harry', 'Duke of Sussex', NULL, 'Harry', 'm', NULL, 3, 7, 2, '1984-09-15', 1984, 'London (UK)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9_001_demo.webp', 3, NULL, '2024-07-01 17:35:42', '2024-07-01 17:35:42'),
(10, 'Camilla', 'Queen consort', 'Shand', NULL, 'f', NULL, 39, 40, 16, '1947-07-17', 1947, 'London', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10_001_demo.webp', 3, NULL, '2024-07-01 17:35:42', '2024-07-01 17:35:42'),
(11, 'Catherine', 'Duchess of Cambridge', 'Middleton', 'Kate', 'f', NULL, 30, 29, 12, '1982-01-09', 1982, 'Reading (UK)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '11_001_demo.webp', 3, NULL, '2024-07-01 17:35:42', '2024-07-01 17:35:42'),
(12, 'Mark', 'Phillips', NULL, NULL, 'm', NULL, NULL, NULL, NULL, '1948-09-22', 1948, 'Tetbury (UK)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12_001_demo.webp', 3, NULL, '2024-07-01 17:35:42', '2024-07-01 17:35:42'),
(13, 'Peter', 'Phillips', NULL, NULL, 'm', NULL, 12, 4, 4, '1977-11-15', 1977, 'London (UK)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '13_001_demo.webp', 3, NULL, '2024-07-01 17:35:42', '2024-07-01 17:35:42'),
(14, 'Autumn', 'Phillips', 'Kelly', NULL, 'f', NULL, NULL, NULL, NULL, '1978-05-03', 1978, 'Montreal (CA)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '14_001_demo.webp', 3, NULL, '2024-07-01 17:35:42', '2024-07-01 17:35:42'),
(15, 'Savannah', 'Phillips', NULL, NULL, 'f', NULL, 13, 14, 5, '2010-12-29', 2010, 'Gloucester (UK)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '15_001_demo.webp', 3, NULL, '2024-07-01 17:35:42', '2024-07-01 17:35:42'),
(16, 'Isla', 'Phillips', NULL, NULL, 'f', NULL, 13, 14, 5, '2012-03-31', 2012, 'Gloucester (UK)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '16_001_demo.webp', 3, NULL, '2024-07-01 17:35:42', '2024-07-01 17:35:42'),
(17, 'Timothy', 'Laurence', NULL, NULL, 'm', NULL, NULL, NULL, NULL, '1955-03-01', 1955, 'London (UK)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '17_001_demo.webp', 3, NULL, '2024-07-01 17:35:42', '2024-07-01 17:35:42'),
(18, 'Sarah', 'Duchess of York', 'Ferguson', 'Fergie', 'f', NULL, 44, 45, 18, '1959-10-15', 1959, 'London (UK)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '18_001_demo.webp', 3, NULL, '2024-07-01 17:35:42', '2024-07-01 17:35:42'),
(19, 'Beatrice', 'Princess of York', NULL, NULL, 'f', NULL, 5, 18, 7, '1988-08-08', 1988, 'London (UK)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '19_001_demo.webp', 3, NULL, '2024-07-01 17:35:42', '2024-07-01 17:35:42'),
(20, 'Eugenie', 'Princess of York', NULL, NULL, 'f', NULL, 5, 18, 7, '1990-03-23', 1990, 'London (UK)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '20_001_demo.webp', 3, NULL, '2024-07-01 17:35:42', '2024-07-01 17:35:42'),
(21, 'Zara', 'Tindall', 'Phillips', NULL, 'f', NULL, 12, 4, 4, '1981-05-15', 1981, 'London (UK)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '21_001_demo.webp', 3, NULL, '2024-07-01 17:35:42', '2024-07-01 17:35:42'),
(22, 'Mike', 'Tindall', NULL, NULL, 'm', NULL, NULL, NULL, NULL, '1978-10-18', NULL, 'London (UK)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '22_001_demo.webp', 3, NULL, '2024-07-01 17:35:42', '2024-07-01 17:35:42'),
(23, 'Sopie', 'Countess of Wessex', 'Rhys-Jones', NULL, 'f', NULL, NULL, NULL, NULL, '1965-01-20', 1965, 'Oxford (UK)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '23_001_demo.webp', 3, NULL, '2024-07-01 17:35:42', '2024-07-01 17:35:42'),
(24, 'Louise', 'Lady of Windsdor', NULL, NULL, 'f', NULL, 6, 23, 9, '2003-11-08', 2003, 'Frimley (UK)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '24_001_demo.webp', 3, NULL, '2024-07-01 17:35:42', '2024-07-01 17:35:42'),
(25, 'James', 'Viscount Severn', NULL, NULL, 'm', NULL, 6, 23, 9, '2007-12-17', 2007, 'Frimley (UK)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '25_001_demo.webp', 3, NULL, '2024-07-01 17:35:42', '2024-07-01 17:35:42'),
(26, 'George', 'Prince of Cambridge', NULL, NULL, 'm', NULL, 8, 11, 10, '2013-07-22', 2013, 'London (UK)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '26_001_demo.webp', 3, NULL, '2024-07-01 17:35:42', '2024-07-01 17:35:42'),
(27, 'John', 'Spencer', NULL, NULL, 'm', NULL, NULL, NULL, NULL, '1924-01-24', 1924, 'London (UK)', '1992-03-29', 1992, 'London (UK)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '27_001_demo.webp', 3, NULL, '2024-07-01 17:35:42', '2024-07-01 17:35:42'),
(28, 'Frances Ruth', 'Spencer', 'Roche', NULL, 'f', NULL, NULL, NULL, NULL, '1936-01-20', 1936, NULL, '2004-06-03', 2004, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '28_001_demo.webp', 3, NULL, '2024-07-01 17:35:42', '2024-07-01 17:35:42'),
(29, 'Carole', 'Middleton', 'Goldsmith', NULL, 'f', NULL, NULL, NULL, NULL, '1955-01-31', 1955, 'Perrivate (UK)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '29_001_demo.webp', 3, NULL, '2024-07-01 17:35:42', '2024-07-01 17:35:42'),
(30, 'Michael', 'Middleton', NULL, NULL, 'm', NULL, NULL, NULL, NULL, '1949-06-23', 1949, 'Leeds (UK)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '30_001_demo.webp', 3, NULL, '2024-07-01 17:35:42', '2024-07-01 17:35:42'),
(31, 'Elizabeth', 'Bowes-Lyon', 'Bowes-Lyon', 'Queen Mum', 'f', NULL, 35, 34, 14, '1900-08-04', 1900, 'London (UK)', '2002-03-30', 2002, 'Windsor (UK)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '31_001_demo.webp', 3, NULL, '2024-07-01 17:35:42', '2024-07-01 17:35:42'),
(32, 'George VI', 'King', NULL, NULL, 'm', NULL, 37, 36, 15, '1895-12-14', 1895, 'York Cottage (UK)', '1952-02-06', 1952, 'Sandringham House (UK)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '32_001_demo.webp', 3, NULL, '2024-07-01 17:35:42', '2024-07-01 17:35:42'),
(33, 'Margaret', 'Countess of Snowdon', NULL, NULL, 'f', NULL, 32, 31, 13, '1930-08-21', NULL, 'Glamis Castle (UK)', '2002-02-09', 2002, 'London (UK)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '33_001_demo.webp', 3, NULL, '2024-07-01 17:35:42', '2024-07-01 17:35:42'),
(34, 'Cecilia', 'Bowes-Lyon', 'Cavendish-Bentinck', NULL, 'f', NULL, NULL, NULL, NULL, '1862-09-11', 1862, 'London (UK)', '1938-06-23', 1938, 'London (UK)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '34_001_demo.webp', 3, NULL, '2024-07-01 17:35:42', '2024-07-01 17:35:42'),
(35, 'Claude', 'Bowes-Lyon', NULL, NULL, 'm', NULL, NULL, NULL, NULL, '1855-03-14', 1855, 'Chelsea (UK)', '1944-11-07', 1944, 'Glamis Castle (UK)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '35_001_demo.webp', 3, NULL, '2024-07-01 17:35:42', '2024-07-01 17:35:42'),
(36, 'Mary', 'of Teck', NULL, 'May', 'f', NULL, NULL, NULL, NULL, '1867-05-26', 1867, 'London (UK)', '1953-03-24', 1953, 'London (UK)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '36_001_demo.webp', 3, NULL, '2024-07-01 17:35:42', '2024-07-01 17:35:42'),
(37, 'George V', 'King', NULL, NULL, 'm', NULL, NULL, NULL, NULL, '1865-06-03', 1865, 'London (UK)', '1936-01-20', 1936, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '37_001_demo.webp', 3, NULL, '2024-07-01 17:35:42', '2024-07-01 17:35:42'),
(38, 'Charlotte', 'Princess of Cambridge', 'Princess of Cambridge', NULL, 'f', NULL, 8, 11, 10, '2015-05-04', 2015, 'London (UK)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '38_001_demo.webp', 3, NULL, '2024-07-01 17:35:42', '2024-07-01 17:35:42'),
(39, 'Bruce', 'Shand', NULL, NULL, 'm', NULL, NULL, NULL, NULL, '1917-01-22', NULL, 'London (UK)', '2006-06-11', NULL, 'Stourpaine (UK)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '39_001_demo.webp', 3, NULL, '2024-07-01 17:35:42', '2024-07-01 17:35:42'),
(40, 'Rosalind', 'Shand', 'Cubitt', NULL, 'f', NULL, NULL, NULL, NULL, '1921-08-11', 1921, 'London (UK)', '1994-07-14', 1994, 'Lewes (UK)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '40_001_demo.webp', 3, NULL, '2024-07-01 17:35:42', '2024-07-01 17:35:42'),
(41, 'Andrew', 'Bowles', NULL, NULL, 'm', NULL, NULL, NULL, NULL, '1939-12-27', 1939, 'Surrey (UK)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '41_001_demo.webp', 3, NULL, '2024-07-01 17:35:42', '2024-07-01 17:35:42'),
(42, 'Tom', 'Bowles', NULL, NULL, 'm', NULL, 41, 10, 17, '1974-12-18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '42_001_demo.webp', 3, NULL, '2024-07-01 17:35:42', '2024-07-01 17:35:42'),
(43, 'Laura', 'Lopes', 'Bowles', NULL, 'f', NULL, 41, 10, 17, '1978-01-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '43_001_demo.webp', 3, NULL, '2024-07-01 17:35:42', '2024-07-01 17:35:42'),
(44, 'Ronald', 'Ferguson', NULL, NULL, 'm', NULL, NULL, NULL, NULL, '1931-10-10', 1931, 'London (UK)', '2003-03-16', 2003, 'Basingstoke (UK)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '44_001_demo.webp', 3, NULL, '2024-07-01 17:35:42', '2024-07-01 17:35:42'),
(45, 'Susan', 'Ferguson', 'Wright', NULL, 'f', NULL, NULL, NULL, NULL, '1937-06-09', 1937, 'Bramcote (UK)', '1998-09-19', 1998, 'Tres Lomas (Argentinia)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '45_001_demo.webp', 3, NULL, '2024-07-01 17:35:43', '2024-07-01 17:35:43'),
(46, 'Louis', 'Prince of Cambridge', NULL, NULL, 'm', NULL, 8, 11, 10, '2018-04-23', NULL, 'London (UK)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '46_001_demo.webp', 3, NULL, '2024-07-01 17:35:43', '2024-07-01 17:35:43'),
(47, 'Meghan', 'Duchess of Sussex', 'Markle', NULL, 'f', NULL, 50, 49, 21, '1981-08-04', NULL, 'Los Angeles (US)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '47_001_demo.webp', 3, NULL, '2024-07-01 17:35:43', '2024-07-01 17:35:43'),
(48, 'Trevor', 'Engelson', NULL, NULL, 'm', NULL, NULL, NULL, NULL, NULL, 1977, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '48_001_demo.webp', 3, NULL, '2024-07-01 17:35:43', '2024-07-01 17:35:43'),
(49, 'Doria', 'Markle', 'Ragland', NULL, 'f', NULL, NULL, NULL, NULL, NULL, 1957, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '49_001_demo.webp', 3, NULL, '2024-07-01 17:35:43', '2024-07-01 17:35:43'),
(50, 'Thomas', 'Markle', NULL, NULL, 'm', NULL, NULL, NULL, NULL, '1944-07-18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '50_001_demo.webp', 3, NULL, '2024-07-01 17:35:43', '2024-07-01 17:35:43'),
(51, 'Roslyn', 'Markle', 'Loveless', NULL, 'f', NULL, NULL, NULL, NULL, '1945-10-30', 1945, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '51_001_demo.webp', 3, NULL, '2024-07-01 17:35:43', '2024-07-01 17:35:43'),
(52, 'Thomas Jr.', 'Markle', NULL, NULL, 'm', NULL, 50, 51, 22, '1944-07-18', 1944, 'Newport PA (USA)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '52_001_demo.webp', 3, NULL, '2024-07-01 17:35:43', '2024-07-01 17:35:43'),
(53, 'Samantha', 'Grant', 'Markle', NULL, 'f', NULL, 50, 51, 22, NULL, 1966, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '53_001_demo.webp', 3, NULL, '2024-07-01 17:35:43', '2024-07-01 17:35:43'),
(54, 'Archie', 'Mountbatten-Windsor', NULL, NULL, 'm', NULL, 9, 47, 19, '2019-05-06', 2019, 'London (UK)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '54_001_demo.webp', 3, NULL, '2024-07-01 17:35:43', '2024-07-01 17:35:43'),
(55, 'Mia Grace', 'Tindall', NULL, NULL, 'f', NULL, 22, 21, 8, '2014-01-17', 2014, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '55_001_demo.webp', 3, NULL, '2024-07-01 17:35:43', '2024-07-01 17:35:43'),
(56, 'Lena', 'Tindall', NULL, NULL, 'f', NULL, 22, 21, 8, '2018-06-18', 2018, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '56_001_demo.webp', 3, NULL, '2024-07-01 17:35:43', '2024-07-01 17:35:43'),
(57, 'Jack', 'Brooksbank', NULL, NULL, 'm', NULL, NULL, NULL, NULL, NULL, 1986, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '57_001_demo.webp', 3, NULL, '2024-07-01 17:35:43', '2024-07-01 17:35:43'),
(58, 'Sarah', 'McCorquodale', 'Spencer', NULL, 'f', NULL, 27, 28, 11, '1955-03-19', 1955, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '58_001_demo.webp', 3, NULL, '2024-07-01 17:35:43', '2024-07-01 17:35:43'),
(59, 'Jane', 'Fellowes', 'Spencer', NULL, 'f', NULL, 27, 28, 11, '1957-02-11', 1957, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '59_001_demo.webp', 3, NULL, '2024-07-01 17:35:43', '2024-07-01 17:35:43'),
(60, 'Charles', 'Spencer', NULL, NULL, 'm', NULL, 27, 28, 11, '1964-05-20', 1964, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '60_001_demo.webp', 3, NULL, '2024-07-01 17:35:43', '2024-07-01 17:35:43'),
(61, 'John Jr.', 'Spencer', NULL, NULL, 'm', NULL, 27, 28, 11, '1960-01-12', 1960, NULL, '1960-01-12', 1960, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '61_001_demo.webp', 3, NULL, '2024-07-01 17:35:43', '2024-07-01 17:35:43'),
(101, 'Child', 'Only FATHER side', NULL, NULL, 'm', NULL, 2, NULL, NULL, '1999-01-04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, '2024-07-01 17:35:44', '2024-07-01 17:35:44'),
(102, 'Child', 'Only MOTHER side', NULL, NULL, 'm', NULL, NULL, 1, NULL, NULL, 1999, NULL, NULL, 2009, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, '2024-07-01 17:35:44', '2024-07-01 17:35:44'),
(103, 'Child', 'Only through PARENTS', NULL, NULL, 'f', NULL, NULL, NULL, 1, NULL, 1999, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, '2024-07-01 17:35:44', '2024-07-01 17:35:44'),
(201, 'Parent 1', 'Gay', NULL, NULL, 'f', NULL, NULL, NULL, NULL, '1970-01-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, '2024-07-01 17:35:44', '2024-07-01 17:35:44'),
(202, 'Parent 2', 'Gay', NULL, NULL, 'f', NULL, NULL, NULL, NULL, '1971-01-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, '2024-07-01 17:35:44', '2024-07-01 17:35:44'),
(203, 'Child 1', 'Gay parents', NULL, NULL, 'm', NULL, NULL, 201, NULL, '2000-01-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, '2024-07-01 17:35:44', '2024-07-01 17:35:44'),
(204, 'Child 2', 'Gay parents', NULL, NULL, 'm', NULL, NULL, 201, NULL, '2001-01-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, '2024-07-01 17:35:44', '2024-07-01 17:35:44'),
(205, 'New Partner', 'King Charles', NULL, NULL, 'm', NULL, NULL, NULL, NULL, '1960-01-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, '2024-07-01 17:35:44', '2024-07-01 17:35:44'),
(206, 'Child 1', 'New Partner King Charles', NULL, NULL, 'm', NULL, 205, NULL, NULL, '2015-01-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, '2024-07-01 17:35:44', '2024-07-01 17:35:44'),
(207, 'Child 3', 'Gay parents', NULL, NULL, 'f', NULL, NULL, NULL, 101, '2002-01-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, '2024-07-01 17:35:44', '2024-07-01 17:35:44'),
(208, 'Child 4', 'Gay parents', NULL, NULL, 'f', NULL, NULL, NULL, 101, '2003-01-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, '2024-07-01 17:35:44', '2024-07-01 17:35:44'),
(209, 'John', 'DOE', NULL, NULL, 'm', NULL, NULL, NULL, NULL, '1963-01-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '209_001_demo.webp', 1, NULL, '2024-07-01 17:35:44', '2024-07-01 17:35:44'),
(210, 'Fu', 'BAR', NULL, NULL, 'm', NULL, NULL, NULL, NULL, '1963-01-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '210_001_demo.webp', 1, NULL, '2024-07-01 17:35:44', '2024-07-01 17:35:44'),
(501, 'Joseph Patrick', 'Kennedy', NULL, 'Joe', 'm', NULL, NULL, NULL, NULL, '1888-09-06', 1888, NULL, '1969-11-18', 1969, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '501_001_demo.webp', 4, NULL, '2024-07-01 17:35:44', '2024-07-01 17:35:44'),
(502, 'Rose Elizabeth', 'Fitzgerald', NULL, NULL, 'f', NULL, NULL, NULL, NULL, '1890-07-22', 1890, NULL, '1995-01-22', 1995, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '502_001_demo.webp', 4, NULL, '2024-07-01 17:35:44', '2024-07-01 17:35:44'),
(503, 'Joseph Patrick', 'Kennedy', NULL, NULL, 'm', NULL, 501, 502, NULL, '1915-07-25', 1915, NULL, '1944-08-12', 1944, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '503_001_demo.webp', 4, NULL, '2024-07-01 17:35:44', '2024-07-01 17:35:44'),
(504, 'John Fitzgerald', 'Kennedy', NULL, 'JFK or Jack', 'm', NULL, 501, 502, NULL, '1917-05-29', 1917, NULL, '1963-11-22', 1963, 'Dallas, Texas, USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '504_001_demo.webp', 4, NULL, '2024-07-01 17:35:44', '2024-07-01 17:35:44'),
(505, 'Rose Marie', 'Kennedy', NULL, 'Rosemary or Rosie', 'f', NULL, 501, 502, NULL, '1918-09-13', 1918, NULL, '2005-01-07', 2005, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '505_001_demo.webp', 4, NULL, '2024-07-01 17:35:44', '2024-07-01 17:35:44'),
(506, 'Kathleen Agnes', 'Kennedy', NULL, 'Kick', 'f', NULL, 501, 502, NULL, '1920-02-20', 1920, 'Brookline, Massachusetts, USA', NULL, 1948, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '506_001_demo.webp', 4, NULL, '2024-07-01 17:35:44', '2024-07-01 17:35:44'),
(507, 'Eunice Mary', 'Kennedy', NULL, NULL, 'f', NULL, 501, 502, NULL, '1921-07-10', 1921, 'Brookline, Massachusetts, USA', '2009-08-11', 2009, 'Hyannis, Massachusetts, USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '507_001_demo.webp', 4, NULL, '2024-07-01 17:35:44', '2024-07-01 17:35:44'),
(508, 'Patricia Helen', 'Kennedy', NULL, NULL, 'f', NULL, 501, 502, NULL, '1924-06-05', 1924, 'Brookline, Massachusetts, USA', '2006-09-17', 2006, 'New York, USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '508_001_demo.webp', 4, NULL, '2024-07-01 17:35:44', '2024-07-01 17:35:44'),
(509, 'Robert Francis', 'Kennedy', NULL, 'Bobby', 'm', NULL, 501, 502, NULL, '1925-11-20', 1925, 'Brookline, Massachusetts, USA', '1968-06-06', 1968, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '509_001_demo.webp', 4, NULL, '2024-07-01 17:35:44', '2024-07-01 17:35:44'),
(510, 'Jean Ann', 'Kennedy', NULL, NULL, 'f', NULL, 501, 502, NULL, '1928-02-20', 1928, NULL, '2020-06-17', 2020, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '510_001_demo.webp', 4, NULL, '2024-07-01 17:35:44', '2024-07-01 17:35:44'),
(511, 'Edward Moore', 'Kennedy', NULL, 'Ted', 'm', NULL, 501, 502, NULL, '1932-02-22', 1932, 'Boston, Massachusetts, UAS', '2009-08-25', 2009, 'Hyannis Port, Massachusetts, USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '511_001_demo.webp', 4, NULL, '2024-07-01 17:35:44', '2024-07-01 17:35:44'),
(512, 'Jaqueline Lee', 'Bouvier', NULL, 'Jacky', 'f', NULL, NULL, NULL, NULL, '1929-07-28', 1929, 'Southampton, New York, USA', '1994-05-19', 1994, 'New York Cyty, USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '512_001_demo.webp', 4, NULL, '2024-07-01 17:35:44', '2024-07-01 17:35:44'),
(513, 'William', 'Cavendish', NULL, 'Marquess of Hartington', 'm', NULL, NULL, NULL, NULL, '1917-12-10', 1917, 'London, England', '1944-09-09', 1944, 'Heppen, Belgium', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '513_001_demo.webp', 4, NULL, '2024-07-01 17:35:44', '2024-07-01 17:35:44'),
(514, 'Robert Sargent Jr.', 'Shriver', NULL, NULL, 'm', NULL, NULL, NULL, NULL, '1915-11-09', 1915, NULL, '2011-01-18', 2011, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '514_001_demo.webp', 4, NULL, '2024-07-01 17:35:44', '2024-07-01 17:35:44'),
(515, 'Peter Sydney Ernest', 'Lawford', 'Aylen', NULL, 'm', NULL, NULL, NULL, NULL, '1923-09-07', 1923, 'London, England', '1984-12-24', 1984, 'Los Angeles, California, USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '515_001_demo.webp', 4, NULL, '2024-07-01 17:35:44', '2024-07-01 17:35:44'),
(516, 'Ethel', 'Skakel', NULL, NULL, 'f', NULL, NULL, NULL, NULL, '1928-04-11', 1928, 'Chicago, Illinois, USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '516_001_demo.webp', 4, NULL, '2024-07-01 17:35:44', '2024-07-01 17:35:44'),
(517, 'Stephen Edward', 'Smith', NULL, NULL, 'm', NULL, NULL, NULL, NULL, '1927-09-24', 1927, 'Bayport, Suffolk County, New York, USA', '1990-08-19', 1990, 'Manhattan, New York County, New York, USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '517_001_demo.webp', 4, NULL, '2024-07-01 17:35:44', '2024-07-01 17:35:44'),
(518, 'Virginia Joan', 'Bennett', NULL, NULL, 'f', NULL, NULL, NULL, NULL, '1936-09-26', 1936, 'New York City, USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '518_001_demo.webp', 4, NULL, '2024-07-01 17:35:44', '2024-07-01 17:35:44'),
(519, 'Victoria', 'Reggie', NULL, NULL, 'f', NULL, NULL, NULL, NULL, '1954-02-26', 1954, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '519_001_demo.webp', 4, NULL, '2024-07-01 17:35:44', '2024-07-01 17:35:44'),
(520, 'Arabella', 'Kennedy', NULL, NULL, 'f', NULL, 504, 512, NULL, NULL, 1956, NULL, NULL, 1956, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '520_001_demo.webp', 4, NULL, '2024-07-01 17:35:44', '2024-07-01 17:35:44'),
(521, 'Caroline Bouvier', 'Kennedy', NULL, NULL, 'f', NULL, 504, 512, NULL, NULL, 1957, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '521_001_demo.webp', 4, NULL, '2024-07-01 17:35:44', '2024-07-01 17:35:44'),
(522, 'John Fitzgeral Jr.', 'Kennedy', NULL, 'John-John', 'm', NULL, 504, 512, NULL, NULL, 1960, NULL, NULL, 1999, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '522_001_demo.webp', 4, NULL, '2024-07-01 17:35:44', '2024-07-01 17:35:44'),
(523, 'Patrick Bouvier', 'Kennedy', NULL, NULL, 'm', NULL, 504, 512, NULL, NULL, 1963, NULL, NULL, 1963, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '523_001_demo.webp', 4, NULL, '2024-07-01 17:35:44', '2024-07-01 17:35:44'),
(524, 'Robert Sargent III', 'Shriver', NULL, NULL, 'm', NULL, 514, 507, NULL, NULL, 1954, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '524_001_demo.webp', 4, NULL, '2024-07-01 17:35:45', '2024-07-01 17:35:45'),
(525, 'Maria Owings', 'Shriver', NULL, NULL, 'f', NULL, 514, 507, NULL, NULL, 1955, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '525_001_demo.webp', 4, NULL, '2024-07-01 17:35:45', '2024-07-01 17:35:45'),
(526, 'Timothy Perry', 'Shriver', NULL, NULL, 'm', NULL, 514, 507, NULL, NULL, 1959, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '526_001_demo.webp', 4, NULL, '2024-07-01 17:35:45', '2024-07-01 17:35:45'),
(527, 'Mark Kennedy', 'Shriver', NULL, NULL, 'f', NULL, 514, 507, NULL, NULL, 1964, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '527_001_demo.webp', 4, NULL, '2024-07-01 17:35:45', '2024-07-01 17:35:45'),
(528, 'Anthony Paul Kennedy', 'Shriver', NULL, NULL, 'm', NULL, 514, 507, NULL, NULL, 1965, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '528_001_demo.webp', 4, NULL, '2024-07-01 17:35:45', '2024-07-01 17:35:45'),
(529, 'Christopher Kennedy', 'Lawford', NULL, NULL, 'm', NULL, 516, 508, NULL, NULL, 1955, NULL, NULL, 2018, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '529_001_demo.webp', 4, NULL, '2024-07-01 17:35:45', '2024-07-01 17:35:45'),
(530, 'Sidney Maleia', 'Lawford', NULL, NULL, 'f', NULL, 516, 508, NULL, NULL, 1956, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '530_001_demo.webp', 4, NULL, '2024-07-01 17:35:45', '2024-07-01 17:35:45'),
(531, 'Victoria Francis', 'Lawford', NULL, NULL, 'f', NULL, 516, 508, NULL, NULL, 1958, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '531_001_demo.webp', 4, NULL, '2024-07-01 17:35:45', '2024-07-01 17:35:45'),
(532, 'Robin Elizabeth', 'Lawford', NULL, NULL, 'f', NULL, 516, 508, NULL, NULL, 1961, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '532_001_demo.webp', 4, NULL, '2024-07-01 17:35:45', '2024-07-01 17:35:45'),
(533, 'Kathleen Hartington', 'Kennedy', NULL, NULL, 'f', NULL, 509, 516, NULL, NULL, 1951, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '533_001_demo.webp', 4, NULL, '2024-07-01 17:35:45', '2024-07-01 17:35:45'),
(534, 'Joseph Patrick II', 'Kennedy', NULL, NULL, 'm', NULL, 509, 516, NULL, NULL, 1952, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '534_001_demo.webp', 4, NULL, '2024-07-01 17:35:45', '2024-07-01 17:35:45'),
(535, 'Robert Francis Jr.', 'Kennedy', NULL, NULL, 'm', NULL, 509, 516, NULL, NULL, 1954, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '535_001_demo.webp', 4, NULL, '2024-07-01 17:35:45', '2024-07-01 17:35:45'),
(536, 'David Anthony', 'Kennedy', NULL, NULL, 'm', NULL, 509, 516, NULL, NULL, 1955, NULL, NULL, 1984, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '536_001_demo.webp', 4, NULL, '2024-07-01 17:35:45', '2024-07-01 17:35:45'),
(537, 'Mary Courtney', 'Kennedy', NULL, NULL, 'f', NULL, 509, 516, NULL, NULL, 1956, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '537_001_demo.webp', 4, NULL, '2024-07-01 17:35:45', '2024-07-01 17:35:45'),
(538, 'Michael LeMoyne', 'Kennedy', NULL, NULL, 'm', NULL, 509, 516, NULL, NULL, 1958, NULL, NULL, 1997, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '538_001_demo.webp', 4, NULL, '2024-07-01 17:35:45', '2024-07-01 17:35:45'),
(539, 'Marry Kerry', 'Kennedy', NULL, NULL, 'f', NULL, 509, 516, NULL, NULL, 1959, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '539_001_demo.webp', 4, NULL, '2024-07-01 17:35:45', '2024-07-01 17:35:45'),
(540, 'Christopher George', 'Kennedy', NULL, NULL, 'm', NULL, 509, 516, NULL, NULL, 1963, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '540_001_demo.webp', 4, NULL, '2024-07-01 17:35:45', '2024-07-01 17:35:45'),
(541, 'Mathew Maxell Taylor', 'Kennedy', NULL, 'Max', 'm', NULL, 509, 516, NULL, NULL, 1965, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '541_001_demo.webp', 4, NULL, '2024-07-01 17:35:45', '2024-07-01 17:35:45'),
(542, 'Douglas Harriman', 'Kennedy', NULL, NULL, 'm', NULL, 509, 516, NULL, NULL, 1967, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '542_001_demo.webp', 4, NULL, '2024-07-01 17:35:45', '2024-07-01 17:35:45'),
(543, 'Rory Elizabeth', 'Kennedy', NULL, NULL, 'f', NULL, 509, 516, NULL, NULL, 1968, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '543_001_demo.webp', 4, NULL, '2024-07-01 17:35:45', '2024-07-01 17:35:45'),
(544, 'Stephen Edward Jr.', 'Smith', NULL, NULL, 'm', NULL, 517, 510, NULL, NULL, 1957, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '544_001_demo.webp', 4, NULL, '2024-07-01 17:35:45', '2024-07-01 17:35:45'),
(545, 'William Kennedy', 'Smith', NULL, NULL, 'm', NULL, 517, 510, NULL, NULL, 1960, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '545_001_demo.webp', 4, NULL, '2024-07-01 17:35:45', '2024-07-01 17:35:45'),
(546, 'Amanda Mary', 'Smith', NULL, NULL, 'f', NULL, 517, 510, NULL, NULL, 1967, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '546_001_demo.webp', 4, NULL, '2024-07-01 17:35:45', '2024-07-01 17:35:45'),
(547, 'Kym Maria', 'Smith', NULL, NULL, 'f', NULL, 517, 510, NULL, NULL, 1972, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '547_001_demo.webp', 4, NULL, '2024-07-01 17:35:45', '2024-07-01 17:35:45'),
(548, 'Kara Anne', 'Kennedy', NULL, NULL, 'f', NULL, 511, 518, NULL, NULL, 1960, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '548_001_demo.webp', 4, NULL, '2024-07-01 17:35:45', '2024-07-01 17:35:45'),
(549, 'Edward Moore Jr.', 'Kennedy', NULL, NULL, 'm', NULL, 511, 518, NULL, NULL, 1961, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '549_001_demo.webp', 4, NULL, '2024-07-01 17:35:45', '2024-07-01 17:35:45'),
(550, 'Patrick Joseph', 'Kennedy', NULL, NULL, 'm', NULL, 511, 518, NULL, NULL, 1967, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '550_001_demo.webp', 4, NULL, '2024-07-01 17:35:45', '2024-07-01 17:35:45'),
(551, 'Arnold Alois', 'Schwarzenegger', NULL, NULL, 'm', NULL, NULL, NULL, NULL, '1947-07-30', 1947, 'Thal, Styria, Austria', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '551_001_demo.webp', 4, NULL, '2024-07-01 17:35:45', '2024-07-01 17:35:45');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `person_metadata`
--

CREATE TABLE `person_metadata` (
  `id` bigint UNSIGNED NOT NULL,
  `person_id` bigint UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `person_metadata`
--

INSERT INTO `person_metadata` (`id`, `person_id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 1, 'cemetery_location_name', 'King George VI Memorial Chapel', '2024-07-01 17:35:43', '2024-07-01 17:35:43'),
(2, 1, 'cemetery_location_address', 'Castle, 2 The Cloisters\nWindsor SL4 1NJ\nUnited Kindgom', '2024-07-01 17:35:43', '2024-07-01 17:35:43'),
(3, 1, 'cemetery_location_latitude', '51.483812', '2024-07-01 17:35:43', '2024-07-01 17:35:43'),
(4, 1, 'cemetery_location_longitude', '-0.606639', '2024-07-01 17:35:43', '2024-07-01 17:35:43'),
(5, 2, 'cemetery_location_name', 'King George VI Memorial Chapel', '2024-07-01 17:35:43', '2024-07-01 17:35:43'),
(6, 2, 'cemetery_location_address', 'Castle, 2 The Cloisters\nWindsor SL4 1NJ\nUnited Kindgom', '2024-07-01 17:35:43', '2024-07-01 17:35:43'),
(7, 2, 'cemetery_location_latitude', '51.483812', '2024-07-01 17:35:43', '2024-07-01 17:35:43'),
(8, 2, 'cemetery_location_longitude', '-0.606639', '2024-07-01 17:35:43', '2024-07-01 17:35:43'),
(9, 31, 'cemetery_location_name', 'King George VI Memorial Chapel', '2024-07-01 17:35:43', '2024-07-01 17:35:43'),
(10, 31, 'cemetery_location_address', 'Castle, 2 The Cloisters\nWindsor SL4 1NJ\nUnited Kindgom', '2024-07-01 17:35:43', '2024-07-01 17:35:43'),
(11, 31, 'cemetery_location_latitude', '51.483812', '2024-07-01 17:35:43', '2024-07-01 17:35:43'),
(12, 31, 'cemetery_location_longitude', '-0.606639', '2024-07-01 17:35:43', '2024-07-01 17:35:43'),
(13, 32, 'cemetery_location_name', 'King George VI Memorial Chapel', '2024-07-01 17:35:43', '2024-07-01 17:35:43'),
(14, 32, 'cemetery_location_address', 'Castle, 2 The Cloisters\nWindsor SL4 1NJ\nUnited Kindgom', '2024-07-01 17:35:43', '2024-07-01 17:35:43'),
(15, 32, 'cemetery_location_latitude', '51.483812', '2024-07-01 17:35:43', '2024-07-01 17:35:43'),
(16, 32, 'cemetery_location_longitude', '-0.606639', '2024-07-01 17:35:43', '2024-07-01 17:35:43'),
(17, 33, 'cemetery_location_name', 'King George VI Memorial Chapel', '2024-07-01 17:35:43', '2024-07-01 17:35:43'),
(18, 33, 'cemetery_location_address', 'Castle, 2 The Cloisters\nWindsor SL4 1NJ\nUnited Kindgom', '2024-07-01 17:35:43', '2024-07-01 17:35:43'),
(19, 33, 'cemetery_location_latitude', '51.483812', '2024-07-01 17:35:43', '2024-07-01 17:35:43'),
(20, 33, 'cemetery_location_longitude', '-0.606639', '2024-07-01 17:35:43', '2024-07-01 17:35:43'),
(21, 37, 'cemetery_location_name', 'King George VI Memorial Chapel', '2024-07-01 17:35:43', '2024-07-01 17:35:43'),
(22, 37, 'cemetery_location_address', 'Castle, 2 The Cloisters\nWindsor SL4 1NJ\nUnited Kindgom', '2024-07-01 17:35:43', '2024-07-01 17:35:43'),
(23, 37, 'cemetery_location_latitude', '51.483812', '2024-07-01 17:35:43', '2024-07-01 17:35:43'),
(24, 37, 'cemetery_location_longitude', '-0.606639', '2024-07-01 17:35:43', '2024-07-01 17:35:43'),
(25, 7, 'cemetery_location_name', 'Althorp Park, Northamptonshire (UK)', '2024-07-01 17:35:43', '2024-07-01 17:35:43'),
(26, 7, 'cemetery_location_address', 'Northampton NN7 4HG\nUnited Kingdom', '2024-07-01 17:35:43', '2024-07-01 17:35:43'),
(27, 7, 'cemetery_location_latitude', '52.283112', '2024-07-01 17:35:43', '2024-07-01 17:35:43'),
(28, 7, 'cemetery_location_longitude', '-1.000299', '2024-07-01 17:35:43', '2024-07-01 17:35:43');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('3z0kTJeksyu5elWG0CztOhmX2BmxY4Ldeo11AdKS', 2, '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/115.0', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiS2RxV1U1aGp6NkdBY3EyR1BxTzd3QlpIdk9vWXpMSXhEYjVINFZDRyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjM6Imh0dHA6Ly9sb2NhbGhvc3Qvc2VhcmNoIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MjtzOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyeSQxMiRTZWhUdm1CbmJvMWxSb01IdUtaTHcuR2ZHSG9sOUlpMFZYZDdQL2d3VXhWbDdhOFNyNVB2dSI7czoxMjoibHc0MjQzODExOTkxIjtOO30=', 1719896642),
('uR07lgl6h1oiVnfQ1WO7iNkelVLXlpUqshyDyvwB', 2, '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/115.0', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiVjhlRWFOakJ2c3F0ZFRaTm1XSjJaeFJOY25XT0JSaHBIR1B3WHJZOCI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjIzOiJodHRwOi8vbG9jYWxob3N0L3NlYXJjaCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjI7czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTIkU2VoVHZtQm5ibzFsUm9NSHVLWkx3LkdmR0hvbDlJaTBWWGQ3UC9nd1V4Vmw3YThTcjVQdnUiO3M6MTI6Imx3NDI0MzgxMTk5MSI7Tjt9', 1719917254);

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `personal_team` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `user_id`, `name`, `description`, `personal_team`, `created_at`, `updated_at`) VALUES
(1, 1, 'Team _ Developer', 'Personal Team', 1, '2024-07-01 17:35:32', '2024-07-01 17:35:32'),
(2, 2, 'Team _ Administrator', 'Personal Team', 1, '2024-07-01 17:35:33', '2024-07-01 17:35:33'),
(3, 2, 'BRITISH ROYALS', 'Part of the British Royal family around Queen Elizabeth II', 0, '2024-07-01 17:35:33', '2024-07-01 17:35:33'),
(4, 2, 'KENNEDY', 'Part of the Kennedy family around former US President John Fitzgerald Kennedy', 0, '2024-07-01 17:35:33', '2024-07-01 17:35:33'),
(5, 3, 'Team _ Manager', 'Personal Team', 1, '2024-07-01 17:35:34', '2024-07-01 17:35:34'),
(6, 4, 'Team _ Editor', 'Personal Team', 1, '2024-07-01 17:35:35', '2024-07-01 17:35:35'),
(7, 5, 'Team __ Member 1', 'Personal Team', 1, '2024-07-01 17:35:35', '2024-07-01 17:35:35'),
(8, 6, 'Team __ Member 2', 'Personal Team', 1, '2024-07-01 17:35:36', '2024-07-01 17:35:36'),
(9, 7, 'Team __ Member 3', 'Personal Team', 1, '2024-07-01 17:35:37', '2024-07-01 17:35:37'),
(10, 8, 'Team __ Member 4', 'Personal Team', 1, '2024-07-01 17:35:37', '2024-07-01 17:35:37'),
(11, 9, 'Team __ Member 5', 'Personal Team', 1, '2024-07-01 17:35:38', '2024-07-01 17:35:38'),
(12, 10, 'Team __ Member 6', 'Personal Team', 1, '2024-07-01 17:35:39', '2024-07-01 17:35:39'),
(13, 11, 'Team ___ Member 7', 'Personal Team', 1, '2024-07-01 17:35:39', '2024-07-01 17:35:39'),
(14, 12, 'Team ___ Member 8', 'Personal Team', 1, '2024-07-01 17:35:40', '2024-07-01 17:35:40'),
(15, 13, 'Team ___ Member 9', 'Personal Team', 1, '2024-07-01 17:35:41', '2024-07-01 17:35:41'),
(16, 14, 'Team ___ Member 10', 'Personal Team', 1, '2024-07-01 17:35:41', '2024-07-01 17:35:41');

-- --------------------------------------------------------

--
-- Table structure for table `team_invitations`
--

CREATE TABLE `team_invitations` (
  `id` bigint UNSIGNED NOT NULL,
  `team_id` bigint UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `team_user`
--

CREATE TABLE `team_user` (
  `id` bigint UNSIGNED NOT NULL,
  `team_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `team_user`
--

INSERT INTO `team_user` (`id`, `team_id`, `user_id`, `role`, `created_at`, `updated_at`) VALUES
(1, 3, 2, 'administrator', '2024-07-01 17:35:33', '2024-07-01 17:35:33'),
(2, 4, 2, 'administrator', '2024-07-01 17:35:33', '2024-07-01 17:35:33'),
(3, 3, 3, 'manager', '2024-07-01 17:35:34', '2024-07-01 17:35:34'),
(4, 4, 4, 'editor', '2024-07-01 17:35:35', '2024-07-01 17:35:35'),
(5, 3, 5, 'member', '2024-07-01 17:35:36', '2024-07-01 17:35:36'),
(6, 3, 6, 'member', '2024-07-01 17:35:36', '2024-07-01 17:35:36'),
(7, 3, 7, 'member', '2024-07-01 17:35:37', '2024-07-01 17:35:37'),
(8, 4, 8, 'member', '2024-07-01 17:35:38', '2024-07-01 17:35:38'),
(9, 4, 9, 'member', '2024-07-01 17:35:38', '2024-07-01 17:35:38'),
(10, 4, 10, 'member', '2024-07-01 17:35:39', '2024-07-01 17:35:39');

-- --------------------------------------------------------

--
-- Table structure for table `userlogs`
--

CREATE TABLE `userlogs` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `country_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_code` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `userlogs`
--

INSERT INTO `userlogs` (`id`, `user_id`, `country_name`, `country_code`, `created_at`, `updated_at`) VALUES
(1, 1, 'Afghanistan', 'TO', '2023-01-30 18:35:22', '2024-07-01 17:35:32'),
(2, 1, 'Gibraltar', 'MA', '2023-10-03 05:54:45', '2024-07-01 17:35:33'),
(3, 1, 'Kuwait', 'YT', '2023-01-06 06:41:40', '2024-07-01 17:35:33'),
(4, 1, 'Dominican Republic', 'BZ', '2023-06-12 13:54:47', '2024-07-01 17:35:33'),
(5, 1, 'Netherlands', 'SD', '2024-04-02 03:46:04', '2024-07-01 17:35:33'),
(6, 1, 'Swaziland', 'SV', '2023-08-23 15:26:13', '2024-07-01 17:35:33'),
(7, 1, 'Korea', 'LR', '2024-02-02 21:29:36', '2024-07-01 17:35:33'),
(8, 1, 'Georgia', 'BA', '2022-12-30 19:40:47', '2024-07-01 17:35:33'),
(9, 1, 'Saint Lucia', 'PN', '2023-03-17 08:23:48', '2024-07-01 17:35:33'),
(10, 1, 'United States Virgin Islands', 'ES', '2024-02-05 12:59:03', '2024-07-01 17:35:33'),
(11, 1, 'Italy', 'GN', '2024-05-17 18:33:42', '2024-07-01 17:35:33'),
(12, 1, 'Ghana', 'BY', '2023-04-21 23:17:03', '2024-07-01 17:35:33'),
(13, 1, 'Kyrgyz Republic', 'HR', '2023-04-24 22:56:39', '2024-07-01 17:35:33'),
(14, 1, 'Bolivia', 'SN', '2023-01-01 04:42:47', '2024-07-01 17:35:33'),
(15, 1, 'Kenya', 'ZW', '2023-07-07 14:20:05', '2024-07-01 17:35:33'),
(16, 1, 'Uzbekistan', 'VG', '2024-01-10 03:48:18', '2024-07-01 17:35:33'),
(17, 1, 'Gabon', 'TN', '2023-12-20 04:47:30', '2024-07-01 17:35:33'),
(18, 1, 'Moldova', 'CZ', '2024-06-11 18:15:42', '2024-07-01 17:35:33'),
(19, 1, 'Chad', 'AO', '2023-01-08 01:52:35', '2024-07-01 17:35:33'),
(20, 1, 'Mayotte', 'VC', '2024-05-20 13:54:01', '2024-07-01 17:35:33'),
(21, 1, 'Saint Vincent and the Grenadines', 'TL', '2024-01-19 03:45:04', '2024-07-01 17:35:33'),
(22, 1, 'Ukraine', 'VG', '2023-03-28 23:56:29', '2024-07-01 17:35:33'),
(23, 1, 'Saudi Arabia', 'GG', '2022-09-08 21:01:22', '2024-07-01 17:35:33'),
(24, 1, 'Anguilla', 'MV', '2023-12-23 05:01:49', '2024-07-01 17:35:33'),
(25, 1, 'Guinea-Bissau', 'GT', '2022-12-07 08:57:03', '2024-07-01 17:35:33'),
(26, 1, 'South Africa', 'PH', '2022-12-21 12:04:11', '2024-07-01 17:35:33'),
(27, 1, 'Bosnia and Herzegovina', 'TG', '2024-05-04 11:18:23', '2024-07-01 17:35:33'),
(28, 1, 'Djibouti', 'FJ', '2022-09-03 14:08:01', '2024-07-01 17:35:33'),
(29, 1, 'Uzbekistan', 'CX', '2023-02-25 10:15:11', '2024-07-01 17:35:33'),
(30, 1, 'Armenia', 'JP', '2024-01-04 12:46:57', '2024-07-01 17:35:33'),
(31, 1, 'Belgium', 'LI', '2023-07-28 09:08:13', '2024-07-01 17:35:33'),
(32, 1, 'Bahrain', 'AD', '2023-02-15 10:19:33', '2024-07-01 17:35:33'),
(33, 1, 'Saint Lucia', 'PM', '2023-06-12 06:31:15', '2024-07-01 17:35:33'),
(34, 1, 'South Africa', 'PT', '2023-02-07 22:54:36', '2024-07-01 17:35:33'),
(35, 1, 'Barbados', 'KE', '2022-11-15 10:53:07', '2024-07-01 17:35:33'),
(36, 2, 'Saint Martin', 'CX', '2024-06-06 21:54:58', '2024-07-01 17:35:33'),
(37, 2, 'Argentina', 'TL', '2022-09-19 18:15:28', '2024-07-01 17:35:33'),
(38, 2, 'United Arab Emirates', 'RW', '2023-10-21 09:52:41', '2024-07-01 17:35:33'),
(39, 2, 'Iraq', 'GL', '2022-09-17 05:46:01', '2024-07-01 17:35:33'),
(40, 2, 'Bahrain', 'AZ', '2023-08-12 22:45:27', '2024-07-01 17:35:33'),
(41, 2, 'Serbia', 'TJ', '2023-02-08 22:08:49', '2024-07-01 17:35:33'),
(42, 2, 'Korea', 'BS', '2022-11-16 04:53:23', '2024-07-01 17:35:33'),
(43, 2, 'Mayotte', 'AW', '2023-06-03 01:59:21', '2024-07-01 17:35:33'),
(44, 2, 'Guatemala', 'BF', '2024-02-28 10:21:29', '2024-07-01 17:35:33'),
(45, 2, 'Georgia', 'AW', '2024-02-23 06:03:58', '2024-07-01 17:35:33'),
(46, 2, 'Benin', 'TV', '2022-10-08 11:36:49', '2024-07-01 17:35:33'),
(47, 2, 'Belize', 'FR', '2024-06-19 15:21:48', '2024-07-01 17:35:33'),
(48, 2, 'Saint Martin', 'KR', '2023-06-04 03:26:53', '2024-07-01 17:35:33'),
(49, 2, 'Botswana', 'MZ', '2023-07-11 18:48:31', '2024-07-01 17:35:33'),
(50, 2, 'Bahrain', 'EC', '2024-04-28 18:55:26', '2024-07-01 17:35:33'),
(51, 2, 'Greenland', 'MW', '2024-01-17 18:13:35', '2024-07-01 17:35:33'),
(52, 2, 'Montserrat', 'GD', '2022-08-18 05:10:52', '2024-07-01 17:35:33'),
(53, 2, 'Senegal', 'CH', '2023-02-16 20:38:49', '2024-07-01 17:35:33'),
(54, 2, 'United States Minor Outlying Islands', 'BL', '2023-06-07 13:31:02', '2024-07-01 17:35:33'),
(55, 2, 'Palau', 'BL', '2024-04-15 11:29:53', '2024-07-01 17:35:33'),
(56, 2, 'Timor-Leste', 'AO', '2023-07-30 04:47:18', '2024-07-01 17:35:33'),
(57, 2, 'Spain', 'LK', '2023-03-16 05:53:07', '2024-07-01 17:35:33'),
(58, 2, 'Chad', 'SC', '2023-03-24 03:14:11', '2024-07-01 17:35:33'),
(59, 2, 'Guyana', 'VI', '2024-01-21 00:48:32', '2024-07-01 17:35:33'),
(60, 2, 'Bahamas', 'MS', '2023-09-30 00:40:12', '2024-07-01 17:35:33'),
(61, 2, 'Jamaica', 'VC', '2023-06-02 23:11:26', '2024-07-01 17:35:33'),
(62, 2, 'Kyrgyz Republic', 'GN', '2022-07-06 22:09:41', '2024-07-01 17:35:33'),
(63, 2, 'Malta', 'PE', '2022-11-21 22:35:22', '2024-07-01 17:35:33'),
(64, 2, 'Christmas Island', 'SJ', '2023-02-22 21:57:17', '2024-07-01 17:35:33'),
(65, 3, 'Djibouti', 'LK', '2023-10-11 05:36:46', '2024-07-01 17:35:34'),
(66, 3, 'Seychelles', 'BL', '2022-11-20 19:16:51', '2024-07-01 17:35:34'),
(67, 3, 'Haiti', 'VI', '2022-11-25 15:19:03', '2024-07-01 17:35:34'),
(68, 3, 'Luxembourg', 'MH', '2023-01-31 17:07:50', '2024-07-01 17:35:34'),
(69, 3, 'Guyana', 'PR', '2023-02-24 03:18:43', '2024-07-01 17:35:34'),
(70, 3, 'Timor-Leste', 'SI', '2024-01-30 01:20:00', '2024-07-01 17:35:34'),
(71, 3, 'Monaco', 'HK', '2024-05-23 19:49:55', '2024-07-01 17:35:34'),
(72, 3, 'Saint Lucia', 'MW', '2022-08-13 05:25:21', '2024-07-01 17:35:34'),
(73, 3, 'Cape Verde', 'SK', '2022-08-14 09:43:34', '2024-07-01 17:35:34'),
(74, 3, 'Iceland', 'GW', '2023-02-04 14:41:15', '2024-07-01 17:35:34'),
(75, 3, 'Bulgaria', 'NC', '2024-03-05 02:19:34', '2024-07-01 17:35:34'),
(76, 3, 'Kyrgyz Republic', 'RW', '2022-10-27 17:59:29', '2024-07-01 17:35:34'),
(77, 3, 'Senegal', 'FO', '2022-11-16 01:04:09', '2024-07-01 17:35:34'),
(78, 3, 'Egypt', 'AR', '2022-10-16 23:58:03', '2024-07-01 17:35:34'),
(79, 3, 'Iceland', 'GM', '2024-03-22 19:00:52', '2024-07-01 17:35:34'),
(80, 3, 'Burkina Faso', 'AM', '2022-10-26 18:47:13', '2024-07-01 17:35:34'),
(81, 3, 'Spain', 'KH', '2024-06-04 07:45:21', '2024-07-01 17:35:34'),
(82, 3, 'Tonga', 'CA', '2024-02-03 04:51:11', '2024-07-01 17:35:34'),
(83, 3, 'French Southern Territories', 'PF', '2023-12-11 23:05:05', '2024-07-01 17:35:34'),
(84, 3, 'Jersey', 'SD', '2023-05-07 16:04:25', '2024-07-01 17:35:34'),
(85, 3, 'Norway', 'VC', '2022-07-17 12:13:20', '2024-07-01 17:35:34'),
(86, 3, 'United States Virgin Islands', 'LA', '2024-02-22 01:25:31', '2024-07-01 17:35:34'),
(87, 3, 'Guernsey', 'CC', '2024-03-26 10:48:57', '2024-07-01 17:35:34'),
(88, 3, 'Honduras', 'BY', '2023-04-17 04:30:45', '2024-07-01 17:35:34'),
(89, 3, 'Tajikistan', 'GI', '2023-07-05 04:32:31', '2024-07-01 17:35:34'),
(90, 3, 'Heard Island and McDonald Islands', 'KW', '2023-05-10 08:47:12', '2024-07-01 17:35:34'),
(91, 3, 'United States Minor Outlying Islands', 'WF', '2023-04-03 19:51:00', '2024-07-01 17:35:34'),
(92, 3, 'El Salvador', 'FR', '2022-09-04 19:26:16', '2024-07-01 17:35:34'),
(93, 3, 'Sri Lanka', 'BF', '2023-08-22 22:14:20', '2024-07-01 17:35:34'),
(94, 3, 'Afghanistan', 'AO', '2024-05-27 06:38:26', '2024-07-01 17:35:34'),
(95, 3, 'Ghana', 'CO', '2022-08-16 03:42:14', '2024-07-01 17:35:34'),
(96, 4, 'Northern Mariana Islands', 'CR', '2023-06-22 09:19:01', '2024-07-01 17:35:35'),
(97, 4, 'Palau', 'KM', '2024-02-05 02:42:06', '2024-07-01 17:35:35'),
(98, 4, 'Sri Lanka', 'AL', '2024-06-19 20:02:34', '2024-07-01 17:35:35'),
(99, 4, 'Costa Rica', 'VA', '2022-12-29 15:37:21', '2024-07-01 17:35:35'),
(100, 4, 'Indonesia', 'HK', '2024-06-18 03:41:05', '2024-07-01 17:35:35'),
(101, 4, 'El Salvador', 'US', '2024-05-06 08:08:53', '2024-07-01 17:35:35'),
(102, 4, 'Puerto Rico', 'JO', '2023-08-22 00:36:28', '2024-07-01 17:35:35'),
(103, 4, 'Colombia', 'NC', '2022-08-24 06:23:38', '2024-07-01 17:35:35'),
(104, 4, 'Niger', 'MC', '2024-04-09 17:02:58', '2024-07-01 17:35:35'),
(105, 4, 'Barbados', 'BO', '2022-11-16 08:03:51', '2024-07-01 17:35:35'),
(106, 4, 'Mauritania', 'MU', '2022-08-11 18:58:33', '2024-07-01 17:35:35'),
(107, 4, 'Sweden', 'US', '2023-08-19 10:06:28', '2024-07-01 17:35:35'),
(108, 4, 'Tonga', 'WS', '2023-03-18 17:58:48', '2024-07-01 17:35:35'),
(109, 4, 'Albania', 'DZ', '2023-04-05 10:45:10', '2024-07-01 17:35:35'),
(110, 4, 'Vietnam', 'CV', '2022-10-10 19:57:51', '2024-07-01 17:35:35'),
(111, 4, 'Djibouti', 'ET', '2024-03-08 04:07:08', '2024-07-01 17:35:35'),
(112, 4, 'Dominica', 'GF', '2022-11-17 10:59:50', '2024-07-01 17:35:35'),
(113, 4, 'Central African Republic', 'CW', '2022-07-15 14:38:28', '2024-07-01 17:35:35'),
(114, 4, 'Qatar', 'GG', '2023-12-09 08:09:23', '2024-07-01 17:35:35'),
(115, 4, 'Liechtenstein', 'PR', '2022-12-02 17:33:05', '2024-07-01 17:35:35'),
(116, 4, 'El Salvador', 'HK', '2023-07-01 12:40:19', '2024-07-01 17:35:35'),
(117, 4, 'Tajikistan', 'BJ', '2023-08-17 22:02:55', '2024-07-01 17:35:35'),
(118, 4, 'Somalia', 'IR', '2023-10-04 15:07:51', '2024-07-01 17:35:35'),
(119, 4, 'Reunion', 'OM', '2024-06-24 18:22:40', '2024-07-01 17:35:35'),
(120, 4, 'Eritrea', 'GN', '2022-08-04 15:16:26', '2024-07-01 17:35:35'),
(121, 5, 'Mongolia', 'BI', '2022-11-03 08:37:13', '2024-07-01 17:35:35'),
(122, 5, 'Hong Kong', 'GE', '2022-11-04 10:52:50', '2024-07-01 17:35:35'),
(123, 5, 'South Africa', 'BD', '2023-12-05 18:38:04', '2024-07-01 17:35:35'),
(124, 5, 'Liberia', 'CW', '2024-02-02 03:46:25', '2024-07-01 17:35:35'),
(125, 5, 'Indonesia', 'OM', '2024-04-19 06:41:25', '2024-07-01 17:35:35'),
(126, 5, 'New Zealand', 'VN', '2023-09-25 20:34:27', '2024-07-01 17:35:35'),
(127, 5, 'Ukraine', 'RO', '2022-09-05 18:55:41', '2024-07-01 17:35:35'),
(128, 5, 'Jordan', 'LB', '2024-05-29 11:37:50', '2024-07-01 17:35:35'),
(129, 5, 'New Caledonia', 'JM', '2022-08-27 21:22:51', '2024-07-01 17:35:35'),
(130, 5, 'China', 'AO', '2024-02-18 06:12:54', '2024-07-01 17:35:35'),
(131, 5, 'Guam', 'IN', '2023-12-14 07:37:07', '2024-07-01 17:35:35'),
(132, 5, 'Australia', 'MW', '2024-06-12 12:33:01', '2024-07-01 17:35:35'),
(133, 5, 'Nepal', 'PE', '2022-10-23 02:22:24', '2024-07-01 17:35:35'),
(134, 5, 'Belarus', 'GG', '2023-04-01 13:02:25', '2024-07-01 17:35:35'),
(135, 5, 'Myanmar', 'MY', '2024-02-09 13:01:30', '2024-07-01 17:35:35'),
(136, 5, 'Rwanda', 'BO', '2024-01-07 14:23:14', '2024-07-01 17:35:35'),
(137, 5, 'Norway', 'WS', '2024-01-03 05:33:41', '2024-07-01 17:35:35'),
(138, 5, 'Tunisia', 'CW', '2023-08-17 05:15:20', '2024-07-01 17:35:35'),
(139, 5, 'Kenya', 'DO', '2023-03-28 15:55:11', '2024-07-01 17:35:35'),
(140, 5, 'Norway', 'BT', '2023-12-31 00:25:11', '2024-07-01 17:35:35'),
(141, 5, 'Latvia', 'MG', '2023-09-16 09:54:32', '2024-07-01 17:35:35'),
(142, 5, 'Botswana', 'UG', '2023-01-20 16:00:29', '2024-07-01 17:35:35'),
(143, 5, 'Comoros', 'CY', '2023-06-13 15:54:36', '2024-07-01 17:35:35'),
(144, 5, 'Portugal', 'MV', '2022-12-04 20:44:29', '2024-07-01 17:35:35'),
(145, 5, 'Malta', 'HR', '2023-09-22 04:36:03', '2024-07-01 17:35:35'),
(146, 5, 'Kazakhstan', 'CW', '2023-06-09 05:43:38', '2024-07-01 17:35:35'),
(147, 5, 'Honduras', 'SZ', '2023-04-06 15:15:32', '2024-07-01 17:35:35'),
(148, 5, 'Falkland Islands (Malvinas)', 'SN', '2024-03-06 23:17:54', '2024-07-01 17:35:35'),
(149, 5, 'Burkina Faso', 'PA', '2024-06-25 18:31:20', '2024-07-01 17:35:35'),
(150, 5, 'Myanmar', 'TF', '2023-10-23 20:15:30', '2024-07-01 17:35:35'),
(151, 5, 'Gabon', 'KM', '2023-11-08 06:28:52', '2024-07-01 17:35:35'),
(152, 5, 'Liberia', 'JP', '2022-09-13 16:27:37', '2024-07-01 17:35:35'),
(153, 5, 'Qatar', 'GA', '2022-09-06 22:55:04', '2024-07-01 17:35:35'),
(154, 5, 'Benin', 'TM', '2023-08-13 02:05:30', '2024-07-01 17:35:36'),
(155, 5, 'Saint Vincent and the Grenadines', 'CG', '2023-12-26 17:03:29', '2024-07-01 17:35:36'),
(156, 5, 'Western Sahara', 'KG', '2023-06-29 18:41:12', '2024-07-01 17:35:36'),
(157, 5, 'Suriname', 'BS', '2023-10-25 19:14:35', '2024-07-01 17:35:36'),
(158, 5, 'Peru', 'UY', '2022-10-04 15:51:48', '2024-07-01 17:35:36'),
(159, 6, 'Belarus', 'BD', '2023-12-25 18:16:52', '2024-07-01 17:35:36'),
(160, 6, 'French Guiana', 'TH', '2023-07-09 12:37:17', '2024-07-01 17:35:36'),
(161, 6, 'Saint Vincent and the Grenadines', 'NF', '2024-05-18 06:05:42', '2024-07-01 17:35:36'),
(162, 6, 'Equatorial Guinea', 'IO', '2023-11-23 00:34:28', '2024-07-01 17:35:36'),
(163, 6, 'Saint Martin', 'BY', '2024-01-20 21:44:00', '2024-07-01 17:35:36'),
(164, 6, 'Comoros', 'TJ', '2022-12-12 00:56:21', '2024-07-01 17:35:36'),
(165, 6, 'Egypt', 'CU', '2022-10-21 08:22:00', '2024-07-01 17:35:36'),
(166, 6, 'Japan', 'VG', '2023-07-01 05:10:47', '2024-07-01 17:35:36'),
(167, 6, 'Gabon', 'YE', '2023-05-06 04:25:39', '2024-07-01 17:35:36'),
(168, 6, 'Barbados', 'KW', '2023-03-06 22:06:01', '2024-07-01 17:35:36'),
(169, 6, 'Cameroon', 'ME', '2022-08-28 20:38:32', '2024-07-01 17:35:36'),
(170, 6, 'Bosnia and Herzegovina', 'MO', '2023-06-21 23:39:40', '2024-07-01 17:35:36'),
(171, 6, 'Faroe Islands', 'LT', '2023-01-14 09:28:23', '2024-07-01 17:35:36'),
(172, 6, 'Thailand', 'VA', '2024-06-16 07:39:17', '2024-07-01 17:35:36'),
(173, 6, 'Guernsey', 'US', '2024-04-26 19:01:51', '2024-07-01 17:35:36'),
(174, 6, 'Macao', 'AU', '2024-05-30 12:31:37', '2024-07-01 17:35:36'),
(175, 6, 'Korea', 'AE', '2022-08-28 13:37:02', '2024-07-01 17:35:36'),
(176, 6, 'Latvia', 'AZ', '2022-12-02 19:37:24', '2024-07-01 17:35:36'),
(177, 6, 'Kuwait', 'ZM', '2023-09-19 06:49:31', '2024-07-01 17:35:36'),
(178, 6, 'Guam', 'RS', '2024-02-25 05:45:29', '2024-07-01 17:35:36'),
(179, 6, 'Saint Vincent and the Grenadines', 'SN', '2023-11-10 21:37:45', '2024-07-01 17:35:36'),
(180, 6, 'Korea', 'BO', '2024-01-15 20:17:43', '2024-07-01 17:35:36'),
(181, 6, 'Holy See (Vatican City State)', 'BM', '2022-10-14 04:30:33', '2024-07-01 17:35:36'),
(182, 6, 'Solomon Islands', 'SI', '2022-09-24 10:10:01', '2024-07-01 17:35:36'),
(183, 6, 'Greenland', 'YE', '2023-02-11 11:27:59', '2024-07-01 17:35:36'),
(184, 6, 'Aruba', 'DZ', '2022-08-15 18:38:42', '2024-07-01 17:35:36'),
(185, 6, 'Monaco', 'LR', '2024-05-17 01:39:41', '2024-07-01 17:35:36'),
(186, 6, 'Panama', 'PT', '2024-04-23 18:47:43', '2024-07-01 17:35:36'),
(187, 6, 'Grenada', 'MO', '2023-01-14 23:39:07', '2024-07-01 17:35:36'),
(188, 6, 'Turkey', 'LY', '2024-02-27 19:50:19', '2024-07-01 17:35:36'),
(189, 6, 'Netherlands', 'AG', '2023-12-18 12:50:27', '2024-07-01 17:35:36'),
(190, 6, 'Antarctica (the territory South of 60 deg S)', 'DO', '2023-01-18 13:02:12', '2024-07-01 17:35:36'),
(191, 6, 'Barbados', 'AX', '2023-04-28 22:57:34', '2024-07-01 17:35:36'),
(192, 6, 'Cyprus', 'DO', '2023-08-25 17:39:04', '2024-07-01 17:35:36'),
(193, 6, 'Zimbabwe', 'SN', '2022-10-12 02:05:53', '2024-07-01 17:35:36'),
(194, 6, 'Greenland', 'TL', '2024-01-14 08:18:19', '2024-07-01 17:35:36'),
(195, 6, 'Palestinian Territories', 'KH', '2022-09-30 18:14:11', '2024-07-01 17:35:36'),
(196, 6, 'Niue', 'AU', '2022-11-14 07:13:58', '2024-07-01 17:35:36'),
(197, 7, 'Guatemala', 'AS', '2023-07-25 02:23:07', '2024-07-01 17:35:37'),
(198, 7, 'Korea', 'CV', '2023-12-19 10:00:13', '2024-07-01 17:35:37'),
(199, 7, 'Nicaragua', 'AR', '2022-10-08 09:34:01', '2024-07-01 17:35:37'),
(200, 7, 'Tunisia', 'SB', '2024-02-25 23:55:08', '2024-07-01 17:35:37'),
(201, 7, 'Saint Lucia', 'MS', '2023-05-28 02:04:13', '2024-07-01 17:35:37'),
(202, 7, 'Central African Republic', 'PS', '2024-01-14 20:59:52', '2024-07-01 17:35:37'),
(203, 7, 'Senegal', 'HT', '2024-05-15 17:51:51', '2024-07-01 17:35:37'),
(204, 7, 'Congo', 'ER', '2023-07-23 16:38:16', '2024-07-01 17:35:37'),
(205, 7, 'United States of America', 'CI', '2024-02-09 06:15:23', '2024-07-01 17:35:37'),
(206, 7, 'Benin', 'TK', '2024-01-12 14:33:19', '2024-07-01 17:35:37'),
(207, 7, 'South Georgia and the South Sandwich Islands', 'LV', '2022-09-27 07:03:08', '2024-07-01 17:35:37'),
(208, 7, 'Cambodia', 'EG', '2022-10-09 04:18:35', '2024-07-01 17:35:37'),
(209, 7, 'Saint Lucia', 'JP', '2023-10-20 19:12:17', '2024-07-01 17:35:37'),
(210, 7, 'Zambia', 'KR', '2023-10-21 10:18:30', '2024-07-01 17:35:37'),
(211, 7, 'Kenya', 'PY', '2023-04-17 01:29:43', '2024-07-01 17:35:37'),
(212, 7, 'Benin', 'LR', '2023-10-26 21:08:33', '2024-07-01 17:35:37'),
(213, 7, 'Cyprus', 'EG', '2022-09-01 23:36:58', '2024-07-01 17:35:37'),
(214, 7, 'Christmas Island', 'VE', '2024-05-27 19:06:17', '2024-07-01 17:35:37'),
(215, 7, 'Senegal', 'GD', '2024-05-03 11:31:28', '2024-07-01 17:35:37'),
(216, 7, 'Moldova', 'GA', '2023-01-16 14:35:06', '2024-07-01 17:35:37'),
(217, 7, 'Argentina', 'LC', '2023-04-19 19:50:59', '2024-07-01 17:35:37'),
(218, 7, 'Albania', 'BF', '2024-05-26 13:18:13', '2024-07-01 17:35:37'),
(219, 7, 'Dominican Republic', 'TK', '2024-02-11 03:59:26', '2024-07-01 17:35:37'),
(220, 7, 'Lao People\'s Democratic Republic', 'SA', '2023-06-28 07:54:20', '2024-07-01 17:35:37'),
(221, 7, 'Antigua and Barbuda', 'EC', '2023-10-25 05:15:16', '2024-07-01 17:35:37'),
(222, 7, 'Malawi', 'MS', '2022-07-08 00:40:50', '2024-07-01 17:35:37'),
(223, 7, 'Macao', 'SG', '2024-03-19 16:23:10', '2024-07-01 17:35:37'),
(224, 7, 'Cote d\'Ivoire', 'SS', '2023-11-13 02:20:38', '2024-07-01 17:35:37'),
(225, 7, 'Korea', 'BY', '2022-12-10 15:23:10', '2024-07-01 17:35:37'),
(226, 7, 'Syrian Arab Republic', 'GQ', '2023-08-18 09:26:51', '2024-07-01 17:35:37'),
(227, 7, 'Northern Mariana Islands', 'MG', '2023-08-08 19:45:51', '2024-07-01 17:35:37'),
(228, 7, 'Serbia', 'SG', '2022-12-26 18:11:38', '2024-07-01 17:35:37'),
(229, 7, 'Indonesia', 'CI', '2023-06-07 19:06:00', '2024-07-01 17:35:37'),
(230, 7, 'Micronesia', 'QA', '2023-11-28 06:01:16', '2024-07-01 17:35:37'),
(231, 7, 'Monaco', 'BM', '2022-07-23 11:21:34', '2024-07-01 17:35:37'),
(232, 7, 'Suriname', 'JE', '2023-11-27 11:56:01', '2024-07-01 17:35:37'),
(233, 7, 'Portugal', 'SD', '2022-12-02 01:46:39', '2024-07-01 17:35:37'),
(234, 7, 'Nepal', 'FK', '2024-05-12 09:32:30', '2024-07-01 17:35:37'),
(235, 7, 'Japan', 'BD', '2023-04-03 22:24:27', '2024-07-01 17:35:37'),
(236, 8, 'Saudi Arabia', 'IM', '2022-08-20 23:59:20', '2024-07-01 17:35:37'),
(237, 8, 'Tokelau', 'CD', '2023-12-19 15:50:56', '2024-07-01 17:35:37'),
(238, 8, 'Armenia', 'RO', '2023-08-26 02:11:13', '2024-07-01 17:35:37'),
(239, 8, 'Afghanistan', 'MC', '2023-05-01 05:55:18', '2024-07-01 17:35:37'),
(240, 8, 'Ethiopia', 'PT', '2022-11-11 00:00:17', '2024-07-01 17:35:37'),
(241, 8, 'Benin', 'SY', '2024-06-01 18:13:44', '2024-07-01 17:35:37'),
(242, 8, 'Mongolia', 'CG', '2024-06-25 07:21:46', '2024-07-01 17:35:37'),
(243, 8, 'Tonga', 'VE', '2024-06-17 08:54:56', '2024-07-01 17:35:37'),
(244, 8, 'Nicaragua', 'VE', '2022-11-11 08:02:50', '2024-07-01 17:35:37'),
(245, 8, 'Indonesia', 'LK', '2023-02-07 00:06:26', '2024-07-01 17:35:37'),
(246, 8, 'Norway', 'YT', '2024-03-26 15:15:59', '2024-07-01 17:35:37'),
(247, 8, 'Belize', 'GR', '2024-03-11 20:09:29', '2024-07-01 17:35:37'),
(248, 8, 'Dominica', 'MK', '2023-12-03 02:01:59', '2024-07-01 17:35:37'),
(249, 8, 'Wallis and Futuna', 'BQ', '2022-12-26 03:01:56', '2024-07-01 17:35:37'),
(250, 8, 'Switzerland', 'AQ', '2024-02-03 02:35:43', '2024-07-01 17:35:37'),
(251, 8, 'Equatorial Guinea', 'PG', '2024-03-16 10:50:05', '2024-07-01 17:35:37'),
(252, 8, 'Mali', 'MM', '2024-01-22 09:17:43', '2024-07-01 17:35:37'),
(253, 8, 'Japan', 'BF', '2023-03-08 18:10:25', '2024-07-01 17:35:37'),
(254, 8, 'Guinea-Bissau', 'JM', '2024-01-28 22:34:22', '2024-07-01 17:35:37'),
(255, 8, 'Bermuda', 'UZ', '2022-08-28 11:24:34', '2024-07-01 17:35:37'),
(256, 8, 'Uganda', 'SA', '2023-08-28 06:54:41', '2024-07-01 17:35:37'),
(257, 8, 'Saint Vincent and the Grenadines', 'LK', '2022-09-06 14:04:05', '2024-07-01 17:35:37'),
(258, 8, 'Guam', 'CN', '2024-03-30 03:54:17', '2024-07-01 17:35:37'),
(259, 8, 'Lesotho', 'IS', '2023-04-28 07:35:05', '2024-07-01 17:35:37'),
(260, 8, 'Portugal', 'BA', '2024-01-26 12:37:24', '2024-07-01 17:35:37'),
(261, 8, 'Belarus', 'US', '2023-03-13 12:06:13', '2024-07-01 17:35:37'),
(262, 8, 'Djibouti', 'TR', '2023-07-21 09:47:43', '2024-07-01 17:35:37'),
(263, 8, 'New Caledonia', 'SX', '2022-10-09 15:14:06', '2024-07-01 17:35:38'),
(264, 8, 'Anguilla', 'EE', '2022-07-20 20:53:44', '2024-07-01 17:35:38'),
(265, 8, 'Gabon', 'BD', '2022-07-03 08:32:40', '2024-07-01 17:35:38'),
(266, 8, 'Timor-Leste', 'PR', '2023-01-16 08:08:50', '2024-07-01 17:35:38'),
(267, 8, 'Macedonia', 'AD', '2023-09-05 21:09:40', '2024-07-01 17:35:38'),
(268, 8, 'Singapore', 'KM', '2022-12-12 23:37:07', '2024-07-01 17:35:38'),
(269, 8, 'Korea', 'ZA', '2024-04-27 15:11:44', '2024-07-01 17:35:38'),
(270, 8, 'New Caledonia', 'KR', '2024-02-27 08:16:04', '2024-07-01 17:35:38'),
(271, 8, 'New Caledonia', 'TR', '2023-10-13 11:23:17', '2024-07-01 17:35:38'),
(272, 8, 'Mali', 'LS', '2024-03-26 12:45:04', '2024-07-01 17:35:38'),
(273, 8, 'Ukraine', 'WS', '2023-02-26 08:42:50', '2024-07-01 17:35:38'),
(274, 8, 'Jordan', 'PE', '2023-09-18 19:50:46', '2024-07-01 17:35:38'),
(275, 8, 'Suriname', 'KR', '2023-09-07 08:16:34', '2024-07-01 17:35:38'),
(276, 8, 'Syrian Arab Republic', 'CZ', '2024-05-14 23:30:34', '2024-07-01 17:35:38'),
(277, 9, 'American Samoa', 'AG', '2022-12-26 10:15:12', '2024-07-01 17:35:38'),
(278, 9, 'Nicaragua', 'PA', '2023-04-06 15:02:15', '2024-07-01 17:35:38'),
(279, 9, 'Azerbaijan', 'CZ', '2024-02-28 02:46:43', '2024-07-01 17:35:38'),
(280, 9, 'South Georgia and the South Sandwich Islands', 'MK', '2023-09-13 19:37:06', '2024-07-01 17:35:38'),
(281, 9, 'Guernsey', 'LY', '2024-06-16 09:58:52', '2024-07-01 17:35:38'),
(282, 9, 'Saudi Arabia', 'CO', '2023-09-30 01:27:15', '2024-07-01 17:35:38'),
(283, 9, 'Turkey', 'AD', '2023-03-22 23:00:56', '2024-07-01 17:35:38'),
(284, 9, 'Sri Lanka', 'PK', '2023-02-09 09:32:58', '2024-07-01 17:35:38'),
(285, 9, 'Germany', 'EH', '2023-02-15 18:04:36', '2024-07-01 17:35:38'),
(286, 9, 'Austria', 'SZ', '2023-05-07 10:41:42', '2024-07-01 17:35:38'),
(287, 9, 'Armenia', 'SM', '2024-04-02 04:18:00', '2024-07-01 17:35:38'),
(288, 9, 'Kazakhstan', 'CK', '2023-02-16 14:48:13', '2024-07-01 17:35:38'),
(289, 9, 'Tokelau', 'NA', '2023-11-06 00:54:10', '2024-07-01 17:35:38'),
(290, 9, 'Solomon Islands', 'NA', '2023-03-18 16:38:58', '2024-07-01 17:35:38'),
(291, 9, 'Tuvalu', 'LT', '2022-09-24 19:11:40', '2024-07-01 17:35:38'),
(292, 9, 'Micronesia', 'BO', '2024-03-14 02:47:38', '2024-07-01 17:35:38'),
(293, 9, 'Montenegro', 'CC', '2023-11-05 18:15:08', '2024-07-01 17:35:38'),
(294, 9, 'Guam', 'CY', '2023-07-09 01:53:07', '2024-07-01 17:35:38'),
(295, 9, 'Maldives', 'TN', '2023-03-15 15:23:46', '2024-07-01 17:35:38'),
(296, 9, 'Kenya', 'TK', '2023-08-29 10:09:54', '2024-07-01 17:35:38'),
(297, 9, 'Italy', 'FJ', '2022-10-08 12:19:41', '2024-07-01 17:35:38'),
(298, 9, 'Cyprus', 'HT', '2023-05-18 15:52:15', '2024-07-01 17:35:38'),
(299, 9, 'Guernsey', 'EH', '2022-09-22 20:10:12', '2024-07-01 17:35:38'),
(300, 9, 'Guinea-Bissau', 'MC', '2023-05-05 02:32:56', '2024-07-01 17:35:38'),
(301, 9, 'India', 'LY', '2022-08-15 20:31:16', '2024-07-01 17:35:38'),
(302, 9, 'Namibia', 'SO', '2023-06-13 04:42:33', '2024-07-01 17:35:38'),
(303, 9, 'Bosnia and Herzegovina', 'IL', '2024-06-25 21:23:21', '2024-07-01 17:35:38'),
(304, 9, 'Pakistan', 'GN', '2022-09-07 11:32:09', '2024-07-01 17:35:38'),
(305, 9, 'Svalbard & Jan Mayen Islands', 'AD', '2024-03-03 12:37:04', '2024-07-01 17:35:38'),
(306, 9, 'Denmark', 'UG', '2023-09-28 11:45:18', '2024-07-01 17:35:38'),
(307, 9, 'Djibouti', 'TW', '2023-08-09 17:41:44', '2024-07-01 17:35:38'),
(308, 9, 'Svalbard & Jan Mayen Islands', 'AM', '2023-02-27 09:46:48', '2024-07-01 17:35:38'),
(309, 9, 'Georgia', 'WS', '2024-05-23 05:01:00', '2024-07-01 17:35:38'),
(310, 9, 'Slovakia (Slovak Republic)', 'TV', '2023-12-08 18:04:57', '2024-07-01 17:35:38'),
(311, 9, 'Sao Tome and Principe', 'MX', '2023-08-07 08:53:19', '2024-07-01 17:35:38'),
(312, 9, 'Mauritius', 'BH', '2022-10-08 23:02:54', '2024-07-01 17:35:38'),
(313, 10, 'Korea', 'IQ', '2022-09-06 00:34:11', '2024-07-01 17:35:39'),
(314, 10, 'Liechtenstein', 'PM', '2022-08-18 19:25:37', '2024-07-01 17:35:39'),
(315, 10, 'Niger', 'HU', '2024-05-30 22:30:47', '2024-07-01 17:35:39'),
(316, 10, 'Bouvet Island (Bouvetoya)', 'AW', '2022-09-24 07:49:18', '2024-07-01 17:35:39'),
(317, 10, 'Colombia', 'TJ', '2022-08-12 19:30:19', '2024-07-01 17:35:39'),
(318, 10, 'Algeria', 'DM', '2024-04-22 01:01:02', '2024-07-01 17:35:39'),
(319, 10, 'Belize', 'PK', '2023-12-29 22:07:46', '2024-07-01 17:35:39'),
(320, 10, 'Latvia', 'BW', '2023-05-16 05:51:33', '2024-07-01 17:35:39'),
(321, 10, 'Burundi', 'PA', '2023-01-08 15:39:13', '2024-07-01 17:35:39'),
(322, 10, 'Somalia', 'KP', '2024-05-22 01:11:33', '2024-07-01 17:35:39'),
(323, 10, 'Djibouti', 'LC', '2023-09-30 14:31:51', '2024-07-01 17:35:39'),
(324, 10, 'Bosnia and Herzegovina', 'GP', '2023-08-06 06:14:45', '2024-07-01 17:35:39'),
(325, 10, 'Kuwait', 'PK', '2023-01-17 20:26:16', '2024-07-01 17:35:39'),
(326, 10, 'Germany', 'AE', '2024-01-06 21:16:20', '2024-07-01 17:35:39'),
(327, 10, 'Morocco', 'MY', '2022-07-20 00:14:25', '2024-07-01 17:35:39'),
(328, 10, 'Ukraine', 'ML', '2024-06-07 00:08:30', '2024-07-01 17:35:39'),
(329, 10, 'American Samoa', 'SR', '2024-06-10 13:42:05', '2024-07-01 17:35:39'),
(330, 10, 'United States of America', 'LV', '2022-11-06 08:30:37', '2024-07-01 17:35:39'),
(331, 10, 'Norway', 'KR', '2022-11-14 18:54:08', '2024-07-01 17:35:39'),
(332, 10, 'Svalbard & Jan Mayen Islands', 'UZ', '2024-02-08 23:14:57', '2024-07-01 17:35:39'),
(333, 10, 'Fiji', 'GN', '2022-08-19 10:24:31', '2024-07-01 17:35:39'),
(334, 10, 'Northern Mariana Islands', 'BL', '2022-10-26 11:33:00', '2024-07-01 17:35:39'),
(335, 10, 'Egypt', 'HT', '2023-08-04 19:41:18', '2024-07-01 17:35:39'),
(336, 10, 'Saint Lucia', 'AM', '2023-02-17 13:48:17', '2024-07-01 17:35:39'),
(337, 10, 'Mongolia', 'MR', '2022-08-12 22:58:02', '2024-07-01 17:35:39'),
(338, 10, 'Turkey', 'FR', '2023-09-16 04:43:00', '2024-07-01 17:35:39'),
(339, 10, 'Algeria', 'PK', '2024-02-29 00:27:11', '2024-07-01 17:35:39'),
(340, 10, 'Cayman Islands', 'QA', '2023-03-11 08:47:02', '2024-07-01 17:35:39'),
(341, 10, 'Mayotte', 'FO', '2023-04-01 13:04:54', '2024-07-01 17:35:39'),
(342, 10, 'Saint Martin', 'SM', '2023-02-26 02:47:54', '2024-07-01 17:35:39'),
(343, 10, 'Libyan Arab Jamahiriya', 'BZ', '2024-03-18 11:44:31', '2024-07-01 17:35:39'),
(344, 10, 'Reunion', 'MV', '2022-09-12 05:43:40', '2024-07-01 17:35:39'),
(345, 11, 'Monaco', 'GS', '2024-02-15 04:42:29', '2024-07-01 17:35:39'),
(346, 11, 'Antigua and Barbuda', 'IL', '2024-06-24 23:23:09', '2024-07-01 17:35:39'),
(347, 11, 'Palestinian Territories', 'CH', '2022-07-17 21:30:43', '2024-07-01 17:35:39'),
(348, 11, 'Mexico', 'TD', '2023-05-18 20:30:22', '2024-07-01 17:35:39'),
(349, 11, 'Fiji', 'BW', '2023-09-29 20:58:33', '2024-07-01 17:35:39'),
(350, 11, 'France', 'MN', '2023-11-19 19:15:22', '2024-07-01 17:35:39'),
(351, 11, 'Bolivia', 'ME', '2022-11-07 10:56:02', '2024-07-01 17:35:39'),
(352, 11, 'Liechtenstein', 'BY', '2024-05-02 05:19:12', '2024-07-01 17:35:39'),
(353, 11, 'France', 'HU', '2023-01-27 22:15:06', '2024-07-01 17:35:39'),
(354, 11, 'Niue', 'UA', '2022-08-02 10:39:56', '2024-07-01 17:35:39'),
(355, 11, 'Liberia', 'ML', '2022-12-09 23:54:43', '2024-07-01 17:35:39'),
(356, 11, 'Turks and Caicos Islands', 'IQ', '2024-06-21 00:04:24', '2024-07-01 17:35:39'),
(357, 11, 'Serbia', 'CA', '2024-04-03 01:01:55', '2024-07-01 17:35:39'),
(358, 11, 'Marshall Islands', 'LY', '2022-11-27 08:25:45', '2024-07-01 17:35:39'),
(359, 11, 'Guatemala', 'IE', '2022-08-10 03:36:56', '2024-07-01 17:35:39'),
(360, 11, 'American Samoa', 'UA', '2023-02-07 11:11:59', '2024-07-01 17:35:39'),
(361, 11, 'Luxembourg', 'SX', '2023-10-16 10:14:18', '2024-07-01 17:35:40'),
(362, 11, 'Ireland', 'NE', '2023-01-04 20:00:58', '2024-07-01 17:35:40'),
(363, 11, 'Yemen', 'MK', '2022-11-16 01:04:14', '2024-07-01 17:35:40'),
(364, 11, 'Macedonia', 'PR', '2024-03-18 00:40:57', '2024-07-01 17:35:40'),
(365, 11, 'Reunion', 'KM', '2022-08-01 11:19:24', '2024-07-01 17:35:40'),
(366, 11, 'Lesotho', 'PY', '2023-11-20 11:30:22', '2024-07-01 17:35:40'),
(367, 11, 'Korea', 'CH', '2024-05-03 14:48:40', '2024-07-01 17:35:40'),
(368, 11, 'Pitcairn Islands', 'IM', '2023-07-27 21:24:05', '2024-07-01 17:35:40'),
(369, 11, 'Seychelles', 'DM', '2023-11-09 16:36:05', '2024-07-01 17:35:40'),
(370, 11, 'Faroe Islands', 'GL', '2024-04-15 21:50:52', '2024-07-01 17:35:40'),
(371, 11, 'Fiji', 'ME', '2023-03-28 23:10:05', '2024-07-01 17:35:40'),
(372, 11, 'Lebanon', 'CV', '2024-03-14 17:35:25', '2024-07-01 17:35:40'),
(373, 11, 'Andorra', 'TT', '2022-07-24 14:09:51', '2024-07-01 17:35:40'),
(374, 11, 'Luxembourg', 'BG', '2022-10-01 04:09:58', '2024-07-01 17:35:40'),
(375, 11, 'Uganda', 'GA', '2022-10-29 21:43:36', '2024-07-01 17:35:40'),
(376, 11, 'Reunion', 'RO', '2024-02-26 06:53:12', '2024-07-01 17:35:40'),
(377, 11, 'Mongolia', 'KG', '2023-10-11 18:15:01', '2024-07-01 17:35:40'),
(378, 11, 'American Samoa', 'SH', '2023-08-27 14:03:07', '2024-07-01 17:35:40'),
(379, 11, 'Zimbabwe', 'US', '2024-03-23 09:53:20', '2024-07-01 17:35:40'),
(380, 11, 'Bolivia', 'NR', '2024-01-23 02:29:55', '2024-07-01 17:35:40'),
(381, 11, 'Turks and Caicos Islands', 'ML', '2022-09-21 00:07:10', '2024-07-01 17:35:40'),
(382, 11, 'Northern Mariana Islands', 'GD', '2022-10-13 20:36:21', '2024-07-01 17:35:40'),
(383, 12, 'Canada', 'GQ', '2023-08-09 00:41:54', '2024-07-01 17:35:40'),
(384, 12, 'Estonia', 'HU', '2023-10-09 20:27:28', '2024-07-01 17:35:40'),
(385, 12, 'Turks and Caicos Islands', 'IM', '2024-02-17 14:22:45', '2024-07-01 17:35:40'),
(386, 12, 'Kenya', 'IT', '2023-09-10 06:03:44', '2024-07-01 17:35:40'),
(387, 12, 'Chile', 'MF', '2023-06-19 18:46:16', '2024-07-01 17:35:40'),
(388, 12, 'Brunei Darussalam', 'UY', '2022-07-29 18:53:30', '2024-07-01 17:35:40'),
(389, 12, 'Nepal', 'PG', '2023-09-27 10:49:52', '2024-07-01 17:35:40'),
(390, 12, 'Greece', 'SB', '2023-05-01 16:53:35', '2024-07-01 17:35:40'),
(391, 12, 'Nauru', 'PS', '2023-12-13 15:13:11', '2024-07-01 17:35:40'),
(392, 12, 'Greenland', 'TF', '2022-08-29 15:15:08', '2024-07-01 17:35:40'),
(393, 12, 'Peru', 'GN', '2024-05-25 03:35:48', '2024-07-01 17:35:40'),
(394, 12, 'Uganda', 'NO', '2023-05-23 19:07:11', '2024-07-01 17:35:40'),
(395, 12, 'Guam', 'MM', '2023-07-07 19:40:24', '2024-07-01 17:35:40'),
(396, 12, 'Vietnam', 'SK', '2023-04-24 03:15:51', '2024-07-01 17:35:40'),
(397, 12, 'New Zealand', 'RW', '2023-11-02 01:55:08', '2024-07-01 17:35:40'),
(398, 12, 'Azerbaijan', 'UA', '2022-11-22 10:34:14', '2024-07-01 17:35:40'),
(399, 12, 'Singapore', 'CN', '2023-07-22 21:08:30', '2024-07-01 17:35:40'),
(400, 12, 'Svalbard & Jan Mayen Islands', 'MT', '2022-12-10 17:30:49', '2024-07-01 17:35:40'),
(401, 12, 'Taiwan', 'AL', '2023-12-18 21:13:55', '2024-07-01 17:35:40'),
(402, 12, 'Northern Mariana Islands', 'NI', '2023-04-18 16:44:53', '2024-07-01 17:35:40'),
(403, 12, 'Isle of Man', 'AD', '2023-06-09 13:22:55', '2024-07-01 17:35:40'),
(404, 12, 'Cuba', 'BB', '2023-07-22 06:26:27', '2024-07-01 17:35:40'),
(405, 12, 'Mali', 'GF', '2022-08-11 13:38:16', '2024-07-01 17:35:40'),
(406, 12, 'South Georgia and the South Sandwich Islands', 'AM', '2024-01-29 08:42:46', '2024-07-01 17:35:40'),
(407, 12, 'Denmark', 'CN', '2023-08-30 14:27:07', '2024-07-01 17:35:40'),
(408, 12, 'Slovenia', 'NP', '2023-05-29 20:58:18', '2024-07-01 17:35:40'),
(409, 12, 'American Samoa', 'VI', '2024-03-02 10:49:03', '2024-07-01 17:35:40'),
(410, 12, 'Saint Barthelemy', 'AL', '2023-09-01 12:24:51', '2024-07-01 17:35:40'),
(411, 12, 'Somalia', 'FM', '2022-07-08 19:40:06', '2024-07-01 17:35:40'),
(412, 12, 'Jordan', 'EE', '2024-05-07 03:02:12', '2024-07-01 17:35:40'),
(413, 12, 'Cayman Islands', 'SL', '2022-09-04 12:42:46', '2024-07-01 17:35:40'),
(414, 12, 'Portugal', 'AQ', '2022-07-12 15:11:13', '2024-07-01 17:35:40'),
(415, 12, 'United States Minor Outlying Islands', 'BB', '2023-03-21 12:36:17', '2024-07-01 17:35:40'),
(416, 13, 'Spain', 'DZ', '2023-10-22 13:48:36', '2024-07-01 17:35:41'),
(417, 13, 'Slovenia', 'TM', '2023-08-08 02:13:25', '2024-07-01 17:35:41'),
(418, 13, 'Bouvet Island (Bouvetoya)', 'RE', '2024-05-17 17:23:52', '2024-07-01 17:35:41'),
(419, 13, 'Malta', 'NA', '2024-06-01 23:51:32', '2024-07-01 17:35:41'),
(420, 13, 'Lesotho', 'GL', '2024-04-23 14:19:03', '2024-07-01 17:35:41'),
(421, 13, 'Lao People\'s Democratic Republic', 'BB', '2023-03-14 06:39:49', '2024-07-01 17:35:41'),
(422, 13, 'United Arab Emirates', 'CL', '2023-04-30 01:51:52', '2024-07-01 17:35:41'),
(423, 13, 'Guam', 'MT', '2023-02-06 20:50:53', '2024-07-01 17:35:41'),
(424, 13, 'Romania', 'LS', '2023-04-02 19:34:56', '2024-07-01 17:35:41'),
(425, 13, 'Namibia', 'CD', '2022-10-24 14:07:32', '2024-07-01 17:35:41'),
(426, 13, 'Saint Lucia', 'DE', '2023-10-15 20:36:17', '2024-07-01 17:35:41'),
(427, 13, 'Bolivia', 'EG', '2023-02-27 23:42:51', '2024-07-01 17:35:41'),
(428, 13, 'Jamaica', 'TV', '2022-08-22 17:16:29', '2024-07-01 17:35:41'),
(429, 13, 'Congo', 'TN', '2023-10-02 18:09:38', '2024-07-01 17:35:41'),
(430, 13, 'Dominica', 'AU', '2024-06-06 07:34:39', '2024-07-01 17:35:41'),
(431, 13, 'Brunei Darussalam', 'TL', '2023-02-05 23:56:29', '2024-07-01 17:35:41'),
(432, 13, 'Ethiopia', 'NI', '2024-05-04 03:40:33', '2024-07-01 17:35:41'),
(433, 13, 'Maldives', 'DK', '2024-02-03 10:02:34', '2024-07-01 17:35:41'),
(434, 13, 'Cayman Islands', 'VI', '2024-03-20 09:31:01', '2024-07-01 17:35:41'),
(435, 13, 'Uruguay', 'LB', '2023-01-02 21:51:43', '2024-07-01 17:35:41'),
(436, 13, 'Oman', 'TR', '2023-08-21 11:29:17', '2024-07-01 17:35:41'),
(437, 13, 'Qatar', 'NU', '2024-04-14 12:13:37', '2024-07-01 17:35:41'),
(438, 13, 'French Polynesia', 'LI', '2023-04-22 20:22:38', '2024-07-01 17:35:41'),
(439, 13, 'New Caledonia', 'CG', '2023-06-18 20:07:36', '2024-07-01 17:35:41'),
(440, 13, 'Pakistan', 'CX', '2024-02-06 20:58:43', '2024-07-01 17:35:41'),
(441, 13, 'India', 'VC', '2023-05-17 04:39:47', '2024-07-01 17:35:41'),
(442, 13, 'South Georgia and the South Sandwich Islands', 'ES', '2022-10-05 03:29:45', '2024-07-01 17:35:41'),
(443, 13, 'Central African Republic', 'LK', '2023-01-19 06:10:00', '2024-07-01 17:35:41'),
(444, 13, 'Canada', 'NZ', '2024-06-07 14:03:18', '2024-07-01 17:35:41'),
(445, 13, 'United Kingdom', 'AT', '2023-02-16 05:33:49', '2024-07-01 17:35:41'),
(446, 13, 'Kuwait', 'KZ', '2024-06-12 17:49:51', '2024-07-01 17:35:41'),
(447, 13, 'Burkina Faso', 'MU', '2023-07-20 23:29:29', '2024-07-01 17:35:41'),
(448, 14, 'Ecuador', 'SG', '2023-05-25 18:35:30', '2024-07-01 17:35:41'),
(449, 14, 'Uruguay', 'TO', '2023-11-01 06:02:45', '2024-07-01 17:35:41'),
(450, 14, 'Turkmenistan', 'NC', '2023-03-23 08:02:22', '2024-07-01 17:35:41'),
(451, 14, 'Cayman Islands', 'TN', '2023-02-14 03:04:49', '2024-07-01 17:35:41'),
(452, 14, 'Mexico', 'SV', '2022-09-27 23:06:24', '2024-07-01 17:35:41'),
(453, 14, 'Spain', 'CD', '2023-03-19 18:32:16', '2024-07-01 17:35:41'),
(454, 14, 'Tunisia', 'PW', '2022-07-23 21:45:11', '2024-07-01 17:35:41'),
(455, 14, 'Bolivia', 'ER', '2024-06-12 11:32:06', '2024-07-01 17:35:41'),
(456, 14, 'Puerto Rico', 'TZ', '2022-09-04 07:02:28', '2024-07-01 17:35:41'),
(457, 14, 'Burkina Faso', 'ES', '2024-06-17 18:58:22', '2024-07-01 17:35:41'),
(458, 14, 'Palestinian Territories', 'VE', '2023-01-01 15:00:09', '2024-07-01 17:35:41'),
(459, 14, 'Mozambique', 'EH', '2022-11-17 05:00:41', '2024-07-01 17:35:41'),
(460, 14, 'South Georgia and the South Sandwich Islands', 'LC', '2023-12-18 12:35:41', '2024-07-01 17:35:41'),
(461, 14, 'Norway', 'UY', '2024-05-07 15:26:49', '2024-07-01 17:35:41'),
(462, 14, 'Macao', 'FK', '2023-08-11 14:11:35', '2024-07-01 17:35:41'),
(463, 14, 'Somalia', 'IM', '2023-07-01 01:14:08', '2024-07-01 17:35:41'),
(464, 14, 'Slovakia (Slovak Republic)', 'OM', '2023-04-30 10:28:16', '2024-07-01 17:35:41'),
(465, 14, 'Nigeria', 'LT', '2023-12-29 04:54:12', '2024-07-01 17:35:41'),
(466, 14, 'France', 'MH', '2024-06-19 06:41:45', '2024-07-01 17:35:41'),
(467, 14, 'Iraq', 'RE', '2022-11-28 13:22:55', '2024-07-01 17:35:41'),
(468, 14, 'Myanmar', 'SS', '2022-11-02 02:37:31', '2024-07-01 17:35:41'),
(469, 14, 'Bulgaria', 'FR', '2024-06-06 08:40:21', '2024-07-01 17:35:41'),
(470, 14, 'Togo', 'MZ', '2024-02-13 23:31:35', '2024-07-01 17:35:41'),
(471, 14, 'Reunion', 'KR', '2024-05-18 02:02:01', '2024-07-01 17:35:42'),
(472, 14, 'Maldives', 'MQ', '2023-02-05 07:35:42', '2024-07-01 17:35:42'),
(473, 14, 'Bahamas', 'RS', '2023-01-15 16:56:47', '2024-07-01 17:35:42'),
(474, 14, 'Cambodia', 'AX', '2023-07-27 04:59:43', '2024-07-01 17:35:42'),
(475, 14, 'Togo', 'FI', '2024-03-25 02:55:04', '2024-07-01 17:35:42'),
(476, 14, 'Netherlands', 'GT', '2022-08-14 23:43:30', '2024-07-01 17:35:42'),
(477, 14, 'Libyan Arab Jamahiriya', 'KZ', '2023-05-10 03:34:28', '2024-07-01 17:35:42'),
(478, 14, 'Croatia', 'CV', '2022-09-17 12:55:11', '2024-07-01 17:35:42'),
(479, 14, 'Guinea', 'PG', '2022-12-03 15:51:46', '2024-07-01 17:35:42'),
(480, 14, 'Samoa', 'DE', '2024-03-07 07:12:14', '2024-07-01 17:35:42'),
(481, 14, 'Estonia', 'SE', '2023-09-09 19:53:31', '2024-07-01 17:35:42'),
(482, 14, 'Singapore', 'KY', '2024-05-01 03:12:32', '2024-07-01 17:35:42'),
(483, 14, 'Ecuador', 'CF', '2023-08-10 21:10:00', '2024-07-01 17:35:42'),
(484, 14, 'Yemen', 'GF', '2024-02-20 05:02:13', '2024-07-01 17:35:42'),
(485, 14, 'Germany', 'SN', '2024-04-29 18:11:06', '2024-07-01 17:35:42'),
(486, 14, 'Armenia', 'ID', '2024-02-23 02:59:56', '2024-07-01 17:35:42'),
(487, 14, 'Sudan', 'GW', '2024-03-18 17:27:34', '2024-07-01 17:35:42'),
(488, 14, 'Indonesia', 'MW', '2023-01-13 15:55:32', '2024-07-01 17:35:42'),
(489, 14, 'Nigeria', 'CC', '2023-09-08 17:47:00', '2024-07-01 17:35:42');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `surname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  `timezone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'UTC',
  `is_developer` tinyint(1) NOT NULL DEFAULT '0',
  `seen_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `surname`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `language`, `timezone`, `is_developer`, `seen_at`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '_', 'Developer', 'developer@genealogy.test', '2024-07-01 17:35:32', '$2y$12$8G2uSDDqYNXcerhuJgolp.dneVcM7TxVZ/2FxZn0r8CAc.J4awk6G', NULL, NULL, NULL, 'tKPV1i2zI7', NULL, NULL, 'en', 'Europe/Brussels', 1, NULL, '2024-07-01 17:35:32', '2024-07-01 17:35:32', NULL),
(2, '_', 'Administrator', 'administrator@genealogy.test', '2024-07-01 17:35:33', '$2y$12$SehTvmBnbo1lRoMHuKZLw.GfGHol9Ii0VXd7P/gwUxVl7a8Sr5Pvu', NULL, NULL, NULL, 'atZC06OFry', 3, NULL, 'en', 'UTC', 0, '2024-07-02 10:47:33', '2024-07-01 17:35:33', '2024-07-01 17:35:33', NULL),
(3, '_', 'Manager', 'manager@genealogy.test', '2024-07-01 17:35:34', '$2y$12$VFDh1dOegY3zIlCfoZonGOaCos74lgLPM/EeheyBX4py2rKE6DCZ6', NULL, NULL, NULL, 'DtElJfKfuY', 3, NULL, 'en', 'UTC', 0, NULL, '2024-07-01 17:35:34', '2024-07-01 17:35:34', NULL),
(4, '_', 'Editor', 'editor@genealogy.test', '2024-07-01 17:35:34', '$2y$12$VGF1mds7k.YtyJxiv.33u.hdqpcw.qlVBMELxd/saCqeNaVUUjZlu', NULL, NULL, NULL, '6fKqzJLvBb', 4, NULL, 'en', 'UTC', 0, NULL, '2024-07-01 17:35:34', '2024-07-01 17:35:34', NULL),
(5, '__', 'Member 1', 'member_1@genealogy.test', '2024-07-01 17:35:35', '$2y$12$1xxWFs65XGnNcymvlcYOe.u/ZutulFyCFiamVEPOJ4S4/PIdcTWWO', NULL, NULL, NULL, '8zg9FKq8fA', 3, NULL, 'en', 'UTC', 0, NULL, '2024-07-01 17:35:35', '2024-07-01 17:35:35', NULL),
(6, '__', 'Member 2', 'member_2@genealogy.test', '2024-07-01 17:35:36', '$2y$12$Iv6gEtoiru4Wgv/OVmFZPuudcQ5zpsuxGB.0sxwNyNUNHQc36MSNi', NULL, NULL, NULL, '8UxC6TnRCe', 3, NULL, 'en', 'UTC', 0, NULL, '2024-07-01 17:35:36', '2024-07-01 17:35:36', NULL),
(7, '__', 'Member 3', 'member_3@genealogy.test', '2024-07-01 17:35:36', '$2y$12$C.SdOK7IGUoF67MLmVwzteWlGXimW6OtIzCmp0RHM6te2M84N679S', NULL, NULL, NULL, 'SpHqEPNO8W', 3, NULL, 'en', 'UTC', 0, NULL, '2024-07-01 17:35:37', '2024-07-01 17:35:37', NULL),
(8, '__', 'Member 4', 'member_4@genealogy.test', '2024-07-01 17:35:37', '$2y$12$1iDrgtib4wIpWuldM8amaOLnyhbSNfoF/Bl.K0uWj4MywnSGwLOe6', NULL, NULL, NULL, 'nm1Gknx8OW', 4, NULL, 'en', 'UTC', 0, NULL, '2024-07-01 17:35:37', '2024-07-01 17:35:37', NULL),
(9, '__', 'Member 5', 'member_5@genealogy.test', '2024-07-01 17:35:38', '$2y$12$AcLg1u3EBcVNEH0EOzeSieXuWiCEJ8Sw60R/0u1FlulxgJubGXOh.', NULL, NULL, NULL, '8d7toNtzyN', 4, NULL, 'en', 'UTC', 0, NULL, '2024-07-01 17:35:38', '2024-07-01 17:35:38', NULL),
(10, '__', 'Member 6', 'member_6@genealogy.test', '2024-07-01 17:35:38', '$2y$12$Efa4TqMr28WmMCU4tZ212OcQUpbq7dRADoaFO3a9x09tpRNiR7nQO', NULL, NULL, NULL, 'vMynFFbuDB', 4, NULL, 'en', 'UTC', 0, NULL, '2024-07-01 17:35:39', '2024-07-01 17:35:39', NULL),
(11, '___', 'Member 7', 'member_7@genealogy.test', '2024-07-01 17:35:39', '$2y$12$QNS2D11o1.M33Z1ZZYl/7OVQJshx/TJRNZEoovWWAwH83hV9r3/Kq', NULL, NULL, NULL, 'KanHVkUO8D', NULL, NULL, 'en', 'UTC', 0, NULL, '2024-07-01 17:35:39', '2024-07-01 17:35:39', NULL),
(12, '___', 'Member 8', 'member_8@genealogy.test', '2024-07-01 17:35:40', '$2y$12$e1P20.xfy11s7E5.lJOwCO3VE3sF8b2qEyYv88kongBro8t4QomFS', NULL, NULL, NULL, 'PvrszalaCO', NULL, NULL, 'en', 'UTC', 0, NULL, '2024-07-01 17:35:40', '2024-07-01 17:35:40', NULL),
(13, '___', 'Member 9', 'member_9@genealogy.test', '2024-07-01 17:35:40', '$2y$12$XoyFu2RCdrUBgQpIMwIxjezNpl.17cRTW5iAunA.PlpY4ITM2tKGq', NULL, NULL, NULL, 'jeQb9O4g6p', NULL, NULL, 'en', 'UTC', 0, NULL, '2024-07-01 17:35:41', '2024-07-01 17:35:41', NULL),
(14, '___', 'Member 10', 'member_10@genealogy.test', '2024-07-01 17:35:41', '$2y$12$mgtoJ9Ke21ZtJkd/3g4JhepnDUjHMvet3UlBrkgHHQOXCQ3iXz89G', NULL, NULL, NULL, 'rIwcv0A1Pw', NULL, NULL, 'en', 'UTC', 0, NULL, '2024-07-01 17:35:41', '2024-07-01 17:35:41', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject` (`subject_type`,`subject_id`),
  ADD KEY `causer` (`causer_type`,`causer_id`),
  ADD KEY `activity_log_log_name_index` (`log_name`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `countries_iso2_unique` (`iso2`),
  ADD UNIQUE KEY `countries_iso3_unique` (`iso3`),
  ADD KEY `countries_name_index` (`name`),
  ADD KEY `countries_name_nl_index` (`name_nl`),
  ADD KEY `countries_is_eu_index` (`is_eu`);

--
-- Indexes for table `couples`
--
ALTER TABLE `couples`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `couples_person1_id_person2_id_date_start_unique` (`person1_id`,`person2_id`,`date_start`),
  ADD KEY `couples_person1_id_index` (`person1_id`),
  ADD KEY `couples_person2_id_index` (`person2_id`),
  ADD KEY `couples_date_start_index` (`date_start`),
  ADD KEY `couples_team_id_index` (`team_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `genders`
--
ALTER TABLE `genders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `genders_name_index` (`name`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `media_uuid_unique` (`uuid`),
  ADD KEY `media_model_type_model_id_index` (`model_type`,`model_id`),
  ADD KEY `media_order_column_index` (`order_column`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `people`
--
ALTER TABLE `people`
  ADD PRIMARY KEY (`id`),
  ADD KEY `people_gender_id_foreign` (`gender_id`),
  ADD KEY `people_country_id_foreign` (`country_id`),
  ADD KEY `people_sex_index` (`sex`),
  ADD KEY `people_father_id_index` (`father_id`),
  ADD KEY `people_mother_id_index` (`mother_id`),
  ADD KEY `people_parents_id_index` (`parents_id`),
  ADD KEY `people_team_id_index` (`team_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `person_metadata`
--
ALTER TABLE `person_metadata`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `person_metadata_person_id_key_unique` (`person_id`,`key`),
  ADD KEY `person_metadata_key_index` (`key`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teams_user_id_index` (`user_id`);

--
-- Indexes for table `team_invitations`
--
ALTER TABLE `team_invitations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `team_invitations_team_id_email_unique` (`team_id`,`email`);

--
-- Indexes for table `team_user`
--
ALTER TABLE `team_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `team_user_team_id_user_id_unique` (`team_id`,`user_id`);

--
-- Indexes for table `userlogs`
--
ALTER TABLE `userlogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userlogs_user_id_foreign` (`user_id`),
  ADD KEY `userlogs_country_name_index` (`country_name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_deleted_at_index` (`deleted_at`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=191;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=250;

--
-- AUTO_INCREMENT for table `couples`
--
ALTER TABLE `couples`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=511;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `genders`
--
ALTER TABLE `genders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `people`
--
ALTER TABLE `people`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=552;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `person_metadata`
--
ALTER TABLE `person_metadata`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `team_invitations`
--
ALTER TABLE `team_invitations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `team_user`
--
ALTER TABLE `team_user`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `userlogs`
--
ALTER TABLE `userlogs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=490;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `people`
--
ALTER TABLE `people`
  ADD CONSTRAINT `people_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `people_gender_id_foreign` FOREIGN KEY (`gender_id`) REFERENCES `genders` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Constraints for table `person_metadata`
--
ALTER TABLE `person_metadata`
  ADD CONSTRAINT `person_metadata_person_id_foreign` FOREIGN KEY (`person_id`) REFERENCES `people` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `team_invitations`
--
ALTER TABLE `team_invitations`
  ADD CONSTRAINT `team_invitations_team_id_foreign` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `userlogs`
--
ALTER TABLE `userlogs`
  ADD CONSTRAINT `userlogs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
