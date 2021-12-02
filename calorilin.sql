-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: Dec 02, 2021 at 04:57 AM
-- Server version: 8.0.21
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `calorilin`
--

-- --------------------------------------------------------

--
-- Table structure for table `control_calories`
--

DROP TABLE IF EXISTS `control_calories`;
CREATE TABLE IF NOT EXISTS `control_calories` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_calory` double(8,2) DEFAULT NULL,
  `id_user` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `control_calories_id_user_foreign` (`id_user`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `control_calories`
--

INSERT INTO `control_calories` (`id`, `user_calory`, `id_user`, `created_at`, `updated_at`) VALUES
(1, 448.00, 1, '2021-11-27 09:54:14', '2021-11-29 06:48:39'),
(2, 327.00, 2, '2021-12-02 04:51:37', '2021-12-02 04:53:28');

-- --------------------------------------------------------

--
-- Table structure for table `daily_healthy`
--

DROP TABLE IF EXISTS `daily_healthy`;
CREATE TABLE IF NOT EXISTS `daily_healthy` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_user` int NOT NULL,
  `push_up` tinyint(1) DEFAULT NULL,
  `sit_up` tinyint(1) DEFAULT NULL,
  `run` tinyint(1) DEFAULT NULL,
  `drinks` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `daily_healthy`
--

INSERT INTO `daily_healthy` (`id`, `id_user`, `push_up`, `sit_up`, `run`, `drinks`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1, 2, '2021-12-02 00:59:49', '2021-12-02 00:59:49'),
(2, 2, 0, 0, 0, 0, '2021-12-02 04:51:37', '2021-12-02 04:51:37');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `food_materials`
--

DROP TABLE IF EXISTS `food_materials`;
CREATE TABLE IF NOT EXISTS `food_materials` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `serve` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fat` double(8,2) NOT NULL,
  `carbo` double(8,2) NOT NULL,
  `calory` double(8,2) NOT NULL,
  `protein` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `food_materials`
--

INSERT INTO `food_materials` (`id`, `name`, `serve`, `type`, `image`, `fat`, `carbo`, `calory`, `protein`, `created_at`, `updated_at`) VALUES
(1, 'Daging Ayam', '100 gram', 'Dada', 'dada-ayam.jpg', 3.60, 0.00, 165.00, 31.00, '2021-11-29 06:57:43', '2021-11-29 06:57:43'),
(2, 'Daging Ayam', '100 gram', 'Paha', 'paha-ayam.jpg', 8.00, 0.00, 177.00, 24.00, '2021-11-29 06:59:23', '2021-11-29 06:59:23'),
(3, 'Telur Ayam', '100 gram', 'Negeri', 'telur-ayam-negeri.png', 10.00, 1.00, 150.00, 12.50, '2021-11-29 07:18:22', '2021-11-29 07:18:22'),
(4, 'Telur Ayam', '100 gram', 'Kampung', 'telur-ayam-kampung.jpg', 10.00, 1.50, 150.00, 13.00, '2021-11-29 07:20:08', '2021-11-29 07:20:08'),
(5, 'Telur Bebek', '100 gram', NULL, 'telur-bebek.jpg', 14.20, 3.00, 187.00, 11.80, '2021-11-29 07:25:53', '2021-11-29 07:25:53'),
(6, 'Cokelat', '100 gram', 'Cokelat Hitam', 'dark-chocolate.jpg', 31.00, 61.00, 546.00, 4.80, '2021-11-29 07:30:12', '2021-11-29 07:30:12'),
(7, 'Cokelat', '100 gram', 'Cokelat Putih', 'white-chocolate.png', 32.00, 59.00, 539.00, 6.00, '2021-11-29 07:31:29', '2021-11-29 07:31:29'),
(8, 'Cokelat', '100 gram', 'Cokelat Susu', 'milk-chocolate.jpg', 30.00, 59.00, 535.00, 8.00, '2021-11-29 07:32:45', '2021-11-29 07:32:45'),
(9, 'Alpukat', '100 gram', NULL, 'alpukat.jpg', 15.00, 9.00, 160.00, 2.00, '2021-11-29 07:40:19', '2021-11-29 07:40:19'),
(10, 'Almond', '28 gram', NULL, 'almond.jpg', 14.20, 6.10, 164.00, 6.00, '2021-11-29 07:42:29', '2021-11-29 07:42:29'),
(11, 'Tahu', '100 gram', 'Sutra', 'tahu-sutra.jpg', 8.00, 2.00, 115.00, 9.00, '2021-11-29 07:45:59', '2021-11-29 07:45:59');

-- --------------------------------------------------------

--
-- Table structure for table `food_material_favorites`
--

DROP TABLE IF EXISTS `food_material_favorites`;
CREATE TABLE IF NOT EXISTS `food_material_favorites` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_user` bigint UNSIGNED NOT NULL,
  `id_food_material` bigint UNSIGNED NOT NULL,
  `time_show` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `food_material_favorites_id_user_foreign` (`id_user`),
  KEY `food_material_favorites_id_food_material_foreign` (`id_food_material`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `food_material_favorites`
--

INSERT INTO `food_material_favorites` (`id`, `id_user`, `id_food_material`, `time_show`, `created_at`, `updated_at`) VALUES
(1, 2, 2, 'Siang', '2021-12-02 04:53:14', '2021-12-02 04:53:14'),
(2, 2, 4, 'Malam', '2021-12-02 04:53:28', '2021-12-02 04:53:28');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_09_26_153114_create_food_materials_table', 1),
(6, '2021_09_27_145751_create_control_calories_table', 1),
(7, '2021_11_12_024003_create_user_detail_table', 1),
(8, '2021_11_12_060423_create_recipe_table', 1),
(9, '2021_11_12_060526_create_recipe_detail_table', 1),
(10, '2021_11_12_071006_create_recipe_favorites_table', 1),
(11, '2021_11_12_071205_create_food_material_favorites_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=MyISAM AUTO_INCREMENT=207 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\User', 1, 'Login Token', '602619b4fa4fd9f2330e0078b2bfd5d8031e7c593ad8e583a3b134f235914578', '[\"*\"]', '2021-12-02 04:53:28', '2021-11-12 20:29:01', '2021-12-02 04:53:28'),
(2, 'App\\User', 2, 'Register Token', '95cc4db4acccc3f1495cffc94f1b6cb5fad5eace400dc23edb686cb1ae1ebeca', '[\"*\"]', NULL, '2021-11-12 22:22:51', '2021-11-12 22:22:51'),
(3, 'App\\User', 3, 'Register Token', 'e55363915b041ee5ff6973ccef42e6a6c971ec2e9ba2a27f6113f7194a4c1b16', '[\"*\"]', NULL, '2021-11-12 22:38:20', '2021-11-12 22:38:20'),
(4, 'App\\User', 4, 'Register Token', 'f0acbbfd3668b2cc02f93a16258d770c0e22e75feb2b8149d3005dcc508176cf', '[\"*\"]', NULL, '2021-11-12 23:36:41', '2021-11-12 23:36:41'),
(5, 'App\\User', 1, 'Login Token', 'b3e877e8900c108772ea27612832f675e57ac0a93702b2ea6a1ab77879444bb7', '[\"*\"]', '2021-11-13 06:43:12', '2021-11-13 06:32:54', '2021-11-13 06:43:12'),
(6, 'App\\User', 1, 'Login Token', 'c5937b3993de9069b29fed256f37985672ec07fc6cd6ddcafbca74e70d1783af', '[\"*\"]', NULL, '2021-11-13 06:44:13', '2021-11-13 06:44:13'),
(7, 'App\\User', 4, 'Login Token', '153a7aaf0e0145a7a21663e7b627faba466b0eb3e022f65665ca9fb6ec44b695', '[\"*\"]', NULL, '2021-11-13 06:47:10', '2021-11-13 06:47:10'),
(8, 'App\\User', 4, 'Login Token', '39c34ccfc742707cdb06316b43d9776527dfbe8500d242eddf2d58cd11a3e784', '[\"*\"]', NULL, '2021-11-13 06:50:06', '2021-11-13 06:50:06'),
(9, 'App\\User', 4, 'Login Token', '71f84063cbb6cb1cde4ccf6b7a8e58dbd12c2009c6ed1da4a072f93a224d8cf5', '[\"*\"]', NULL, '2021-11-13 06:52:35', '2021-11-13 06:52:35'),
(10, 'App\\User', 1, 'Login Token', 'ad60e0897dc7c620d28f3527f7c0a2b8da8bf7e2d9693b88b557a50a3fc4e70d', '[\"*\"]', '2021-11-13 06:59:44', '2021-11-13 06:55:55', '2021-11-13 06:59:44'),
(11, 'App\\User', 1, 'Login Token', '1d84c56cd4fe48b33e652d8885dee33210ba204f4aa860a60f994a4559eecc6a', '[\"*\"]', '2021-11-13 07:21:38', '2021-11-13 06:59:57', '2021-11-13 07:21:38'),
(12, 'App\\User', 1, 'Login Token', 'bbd021ad0bf2b744cef7d9aedd006bd5143bc9c77f35d833a707b23e6128c84a', '[\"*\"]', NULL, '2021-11-13 22:37:54', '2021-11-13 22:37:54'),
(13, 'App\\User', 1, 'Login Token', 'b1806231b434d5ff92299874d20b21e7271807bafd34b4834ef2d475881c5b83', '[\"*\"]', NULL, '2021-11-13 22:45:22', '2021-11-13 22:45:22'),
(14, 'App\\User', 1, 'Login Token', 'c8138def0123e73928a09cfd4f0bb2a5229bb82ae72011bb470a1cb29a69c950', '[\"*\"]', NULL, '2021-11-13 23:08:33', '2021-11-13 23:08:33'),
(15, 'App\\User', 1, 'Login Token', 'a507f7329fae26d716990f2c75118347ac7cd19fb9efd09b853de7c104472042', '[\"*\"]', NULL, '2021-11-13 23:15:32', '2021-11-13 23:15:32'),
(16, 'App\\User', 1, 'Login Token', 'ac3779a88b181ea91c17fc9b241f771238456755f6c998ab7c964080f92c91dd', '[\"*\"]', NULL, '2021-11-13 23:19:59', '2021-11-13 23:19:59'),
(17, 'App\\User', 5, 'Register Token', '8e84ab18d0d76d19440a5ff477de40ed4d78b0137640531b96a844f9ea3b49ec', '[\"*\"]', NULL, '2021-11-13 23:22:02', '2021-11-13 23:22:02'),
(18, 'App\\User', 6, 'Register Token', '819d011e9ed61984f6445c4dae53144ee4332c414a846175b0fd6061f191db73', '[\"*\"]', NULL, '2021-11-13 23:25:47', '2021-11-13 23:25:47'),
(19, 'App\\User', 1, 'Login Token', 'c1c1a58c1da33a90ecf623cd3237e09cbcf114e6a4693d5b984b786ee2c8386e', '[\"*\"]', NULL, '2021-11-14 00:54:05', '2021-11-14 00:54:05'),
(20, 'App\\User', 1, 'Login Token', '30fc07ef3004ad202782b2b4339c2d07d6dac4c45553da703c1719b56fe768fe', '[\"*\"]', NULL, '2021-11-14 00:54:23', '2021-11-14 00:54:23'),
(21, 'App\\User', 1, 'Login Token', 'c657bc20d1fd977aaad9ea683311413f77a558a4431cfd65d870ec380f14bceb', '[\"*\"]', NULL, '2021-11-14 00:56:13', '2021-11-14 00:56:13'),
(22, 'App\\User', 1, 'Login Token', '26b762c137948d58dc7e658a40dc286c0ab4d6766654d0f8fe85d6fbe3572a7d', '[\"*\"]', NULL, '2021-11-14 01:02:08', '2021-11-14 01:02:08'),
(23, 'App\\User', 1, 'Login Token', 'e3d7afbbbdf4887170eeb1b3bf9714eb7996219475b1972ba086a387559af989', '[\"*\"]', NULL, '2021-11-14 01:05:55', '2021-11-14 01:05:55'),
(24, 'App\\User', 1, 'Login Token', '64ca5b7df9457ce89fe51da536662e25eca528af2b1b3d8cf90edd9ee473d635', '[\"*\"]', NULL, '2021-11-14 01:11:58', '2021-11-14 01:11:58'),
(25, 'App\\User', 1, 'Login Token', 'b763a767db8da8bf0b1084d28625a599986b235b9e00c83755f171069ed85836', '[\"*\"]', NULL, '2021-11-14 01:13:11', '2021-11-14 01:13:11'),
(26, 'App\\User', 7, 'Register Token', '6dd4be4c5782b9ad60ab470dcfba6d4775aee8ccd4b5d546e2696140a928a9a6', '[\"*\"]', NULL, '2021-11-14 01:19:38', '2021-11-14 01:19:38'),
(27, 'App\\User', 7, 'Login Token', 'bee64a1579188eff3708b6bc78c75a8b8f09deb69bcd02bed20e90cff6a907d8', '[\"*\"]', NULL, '2021-11-14 01:19:52', '2021-11-14 01:19:52'),
(28, 'App\\User', 1, 'Login Token', 'f84928f9522b7058f075033ad2e1571bf481d72ca39c44205aefcb3d64c2c64b', '[\"*\"]', NULL, '2021-11-14 02:47:36', '2021-11-14 02:47:36'),
(29, 'App\\User', 1, 'Login Token', 'f4f9097be4b57385c3cdd7e231ff0167fdfd7aba885717959272ea750ac621d4', '[\"*\"]', NULL, '2021-11-14 02:47:37', '2021-11-14 02:47:37'),
(30, 'App\\User', 1, 'Login Token', '2415eafe0fed012c6339e01403396e149e1fccb26583271fb0600c7a511575f3', '[\"*\"]', NULL, '2021-11-14 02:47:57', '2021-11-14 02:47:57'),
(31, 'App\\User', 1, 'Login Token', '1cad2f751c2ab6e0008b0b5632c6339d099244b700e0f8fa806ebc1f56b225a9', '[\"*\"]', NULL, '2021-11-14 02:49:37', '2021-11-14 02:49:37'),
(32, 'App\\User', 1, 'Login Token', '2186c3e4baa078d651b631586b940da02507473eb63b939c1ec8fd5c740f30b3', '[\"*\"]', NULL, '2021-11-14 02:51:37', '2021-11-14 02:51:37'),
(33, 'App\\User', 1, 'Login Token', 'dcdb46b4c6a017439808394b67e2cf1d6fc200e6af68580369e69673c22dfe96', '[\"*\"]', NULL, '2021-11-14 03:00:16', '2021-11-14 03:00:16'),
(34, 'App\\User', 1, 'Login Token', 'f79a4accc57b8e1350c65344f1bd8b3ebdc4a2e531cd2718fa3cfed3b352ac8a', '[\"*\"]', NULL, '2021-11-14 03:02:43', '2021-11-14 03:02:43'),
(35, 'App\\User', 1, 'Login Token', '04e6c4727cfe837f40f0716f9f84763f42ac51370915e328b1dbe55b4561ade0', '[\"*\"]', NULL, '2021-11-14 03:05:44', '2021-11-14 03:05:44'),
(36, 'App\\User', 1, 'Login Token', 'e0be58de3647efa4575a15dd07635c694b923e7cc8591d17627b2edceede1b33', '[\"*\"]', NULL, '2021-11-14 03:27:39', '2021-11-14 03:27:39'),
(37, 'App\\User', 1, 'Login Token', 'cfd9747d6a907c4194c32b380d20bcc8164f504be8bbded04679fe8622fc6c10', '[\"*\"]', NULL, '2021-11-14 03:29:06', '2021-11-14 03:29:06'),
(38, 'App\\User', 1, 'Login Token', '51c2073a386ede3489221003879e558cc6726a4f9c571d3956f74dc901b651ef', '[\"*\"]', NULL, '2021-11-14 03:29:26', '2021-11-14 03:29:26'),
(39, 'App\\User', 1, 'Login Token', 'd7941e90e04d3d508ee535f9ee9ba5a5eea8a613b9d70df1b609dfafb8cae2bd', '[\"*\"]', NULL, '2021-11-14 03:30:14', '2021-11-14 03:30:14'),
(40, 'App\\User', 1, 'Login Token', 'b9a6ad8be8f644f55094bbbe9eaa1cb988d8ea8cce242531f32e36dabde9a84a', '[\"*\"]', '2021-11-14 18:22:40', '2021-11-14 03:36:43', '2021-11-14 18:22:40'),
(41, 'App\\User', 1, 'Login Token', '1d6927085fbda2505a3af9e94ba9bb6fbbba4dbe1cb3e5068d415a47e5012dac', '[\"*\"]', '2021-11-14 18:22:42', '2021-11-14 18:22:41', '2021-11-14 18:22:42'),
(42, 'App\\User', 1, 'Login Token', '1b2911b62e43312caba7caa9ca58de43a76885f26141bbadab58607e05f975cf', '[\"*\"]', NULL, '2021-11-14 18:25:14', '2021-11-14 18:25:14'),
(43, 'App\\User', 1, 'Login Token', '189d4443a281523ea055a18fd2e2f209baf735edbd40c0a00385154f984d6ee3', '[\"*\"]', NULL, '2021-11-14 18:25:34', '2021-11-14 18:25:34'),
(44, 'App\\User', 1, 'Login Token', '03faaece9951b83c153b716779fba3b314c4fc9ec042d4e9d4ba47ad4637fa89', '[\"*\"]', NULL, '2021-11-14 18:26:39', '2021-11-14 18:26:39'),
(45, 'App\\User', 1, 'Login Token', 'a1fe22bcc31ff88942bcfa20b041ccdaa82115d41feea27fb93af40e34f27903', '[\"*\"]', '2021-11-14 18:33:59', '2021-11-14 18:33:58', '2021-11-14 18:33:59'),
(46, 'App\\User', 8, 'Register Token', '5dd50259436f371f19c571aeeee7c76a6df00034f62a4864e5851c0682acaf99', '[\"*\"]', NULL, '2021-11-14 18:34:32', '2021-11-14 18:34:32'),
(47, 'App\\User', 8, 'Login Token', '50a96655fa58fc24ff0522852e1dc89f71baefe4b28a660bde549c5850b01b85', '[\"*\"]', '2021-11-14 18:34:48', '2021-11-14 18:34:47', '2021-11-14 18:34:48'),
(48, 'App\\User', 1, 'Login Token', '7e24b605d7ce66844a61b29eb328311134e1d17ffec827e5b24f1cd3baa230cf', '[\"*\"]', '2021-11-15 07:51:37', '2021-11-14 21:07:23', '2021-11-15 07:51:37'),
(49, 'App\\User', 1, 'Login Token', '7d23304808612d4b61dfc53d5412fb61bfe362944d676e25e5281f16b9e1f2db', '[\"*\"]', '2021-11-14 21:13:39', '2021-11-14 21:13:38', '2021-11-14 21:13:39'),
(50, 'App\\User', 1, 'Login Token', 'cf208860429aa51a94f38ef3db6aa48721eb396a4ae646abe2f16f331034175d', '[\"*\"]', '2021-11-14 21:14:10', '2021-11-14 21:14:09', '2021-11-14 21:14:10'),
(51, 'App\\User', 1, 'Login Token', 'a6a9375ae93c0fd1d013fb1b65cc2bcd68d9e4d5e17120c5d23bc85561a3c9a5', '[\"*\"]', '2021-11-14 21:15:24', '2021-11-14 21:15:23', '2021-11-14 21:15:24'),
(52, 'App\\User', 1, 'Login Token', 'a49cd106dc6176bde5b38b4c7497c07de968048c978aae758cf9575909222e38', '[\"*\"]', '2021-11-14 21:16:10', '2021-11-14 21:16:09', '2021-11-14 21:16:10'),
(53, 'App\\User', 1, 'Login Token', '15de57809190e156afa5a0077d39af10f24de22307f37779f98294ef98ec3c75', '[\"*\"]', '2021-11-14 21:20:18', '2021-11-14 21:17:11', '2021-11-14 21:20:18'),
(54, 'App\\User', 1, 'Login Token', 'dc8b0b204bbb4c7a058f29155cf9eaa11f131a3826d5457f107051660537735e', '[\"*\"]', '2021-11-14 21:21:53', '2021-11-14 21:21:53', '2021-11-14 21:21:53'),
(55, 'App\\User', 1, 'Login Token', 'a2e6a86ab1f9937a5bc6af82066061e2ac61dbc35c3a4e6c2170e659a99476e6', '[\"*\"]', '2021-11-14 21:23:52', '2021-11-14 21:23:51', '2021-11-14 21:23:52'),
(56, 'App\\User', 1, 'Login Token', 'b351e984a8e44a2f9b4a84d286edfb25ff7452070ad7e1a26ba43531e29149b7', '[\"*\"]', '2021-11-14 21:24:08', '2021-11-14 21:24:08', '2021-11-14 21:24:08'),
(57, 'App\\User', 1, 'Login Token', '2268e278fc36763a6acbaaa57fa645117d445c7557d88ac4141d3e01047e27f1', '[\"*\"]', '2021-11-14 21:25:08', '2021-11-14 21:25:07', '2021-11-14 21:25:08'),
(58, 'App\\User', 1, 'Login Token', 'e390e0d3182ba322c8fe3ffcd48e6fc70fb0252d01151592f354dc53485e3ee1', '[\"*\"]', '2021-11-14 21:25:21', '2021-11-14 21:25:21', '2021-11-14 21:25:21'),
(59, 'App\\User', 1, 'Login Token', '544b4604acb08902e556303986a875589364d8f6a8cd5cf8f0920295d3fa3d08', '[\"*\"]', '2021-11-14 22:02:44', '2021-11-14 22:02:39', '2021-11-14 22:02:44'),
(60, 'App\\User', 1, 'Login Token', '3043f02f93371292dda463c5f69ad235d82cacca05d7d43ec87d4f22c5bef503', '[\"*\"]', '2021-11-14 22:06:58', '2021-11-14 22:06:26', '2021-11-14 22:06:58'),
(61, 'App\\User', 1, 'Login Token', '30ae3066c1702e9483922d3dbc1ece984719f5e33d4be311a8c41009989b438c', '[\"*\"]', '2021-11-14 22:54:14', '2021-11-14 22:06:37', '2021-11-14 22:54:14'),
(62, 'App\\User', 1, 'Login Token', '6dfdde5c14a30c10d99985529d9c3f6c3992ea00bf2a685b4b68e84517f590bf', '[\"*\"]', '2021-11-14 22:08:39', '2021-11-14 22:08:15', '2021-11-14 22:08:39'),
(63, 'App\\User', 1, 'Login Token', 'a5bafe5b03c81bf499700e541f659f307b3fcc4f73402ea2174f60d712c0aefd', '[\"*\"]', '2021-11-14 22:11:00', '2021-11-14 22:10:26', '2021-11-14 22:11:00'),
(64, 'App\\User', 1, 'Login Token', '1fb8fb552bb37c60559d6fefb5cf1ee1cf48fd94e08e4106d5429532e2bcb60f', '[\"*\"]', '2021-11-14 22:14:56', '2021-11-14 22:14:56', '2021-11-14 22:14:56'),
(65, 'App\\User', 1, 'Login Token', 'a4536ca2263dd8559afdd0c5d295043d10080ef99d7639f7bc934d10a4a914b1', '[\"*\"]', '2021-11-14 22:38:36', '2021-11-14 22:35:36', '2021-11-14 22:38:36'),
(66, 'App\\User', 1, 'Login Token', '3d7e0c0fddfd0bb3ff1b10fce2064e674ab58cf35385ac86342215cb518a5025', '[\"*\"]', '2021-11-14 22:41:36', '2021-11-14 22:41:35', '2021-11-14 22:41:36'),
(67, 'App\\User', 1, 'Login Token', '66cd7ac9bfdac14987495bfbd9ff469ddea28011ce3f3b410764b0ffa3785b9d', '[\"*\"]', '2021-11-14 22:57:27', '2021-11-14 22:57:26', '2021-11-14 22:57:27'),
(68, 'App\\User', 1, 'Login Token', '872923ecce3dd93f66499b69ea8d0d56cd70b4d1864310063400591f34923f1e', '[\"*\"]', '2021-11-14 23:05:31', '2021-11-14 23:05:30', '2021-11-14 23:05:31'),
(69, 'App\\User', 1, 'Login Token', '379feb7fdd1f93a2d920709c438a6f4612327bb4790a0bf3a2b4c94a1373f15d', '[\"*\"]', '2021-11-14 23:10:19', '2021-11-14 23:10:19', '2021-11-14 23:10:19'),
(70, 'App\\User', 1, 'Login Token', 'f4f6c1e9849c8b3671cf722857362de4ada964895bbc045a5d2a08fc770343f6', '[\"*\"]', '2021-11-15 00:03:36', '2021-11-15 00:03:35', '2021-11-15 00:03:36'),
(71, 'App\\User', 1, 'Login Token', 'd2d376f9c5526d367c1796cefca39c327fbdbe3f71e35b8fc3ac4484e3bfc60c', '[\"*\"]', '2021-11-15 00:05:07', '2021-11-15 00:05:06', '2021-11-15 00:05:07'),
(72, 'App\\User', 1, 'Login Token', '004133dc8a23fe2933aa3893bb9f8f99ce10d377467b57a1b67e70fc3a035830', '[\"*\"]', '2021-11-15 00:09:20', '2021-11-15 00:08:46', '2021-11-15 00:09:20'),
(73, 'App\\User', 1, 'Login Token', '9064248c53b0f3aeb41e5e7a0e77a7c411b21a149587dc530f2ca7e5e399cdfd', '[\"*\"]', '2021-11-15 00:17:13', '2021-11-15 00:17:12', '2021-11-15 00:17:13'),
(74, 'App\\User', 1, 'Login Token', '3566df61a1d265373ff99c57d9b9e5bbf651292ae8558335ed91dd80c138a7bf', '[\"*\"]', '2021-11-15 00:19:17', '2021-11-15 00:19:16', '2021-11-15 00:19:17'),
(75, 'App\\User', 1, 'Login Token', '18e9da00863b0ee7e208dd6a2e6d5536d6b18c9d8be075b179f80792ca4e3674', '[\"*\"]', '2021-11-15 00:19:56', '2021-11-15 00:19:55', '2021-11-15 00:19:56'),
(76, 'App\\User', 1, 'Login Token', 'cd110213b750c5584fbb054e0942887ce502f2936fdcd9a686691df4acf86579', '[\"*\"]', '2021-11-15 00:21:42', '2021-11-15 00:21:42', '2021-11-15 00:21:42'),
(77, 'App\\User', 1, 'Login Token', '29739bdc690df117fad2cbfae2ed7cd1e8e8a55b2f3e67f21e4d20a6c5ad9f85', '[\"*\"]', '2021-11-15 00:26:18', '2021-11-15 00:26:18', '2021-11-15 00:26:18'),
(78, 'App\\User', 1, 'Login Token', '2127c92aefc0d9020ba5c42e5605a535f148d0dc1e180ca01cb29ccd6971c24a', '[\"*\"]', '2021-11-15 04:19:19', '2021-11-15 04:19:18', '2021-11-15 04:19:19'),
(79, 'App\\User', 1, 'Login Token', 'c6e3c7eed94f46d8cce1464551dc6dda7e0afa44ad812748fca465790aff3322', '[\"*\"]', '2021-11-15 06:01:04', '2021-11-15 05:53:32', '2021-11-15 06:01:04'),
(80, 'App\\User', 1, 'Login Token', '6dfc70253024b7f43372714080e284aa13b19c94ffb2c38870a81504b0151894', '[\"*\"]', '2021-11-15 06:37:36', '2021-11-15 06:37:17', '2021-11-15 06:37:36'),
(81, 'App\\User', 1, 'Login Token', 'd4997c6a256bad732cead49cf17c409a69e2b09fb64c32d95b334921e87c4a27', '[\"*\"]', '2021-11-15 06:38:00', '2021-11-15 06:37:50', '2021-11-15 06:38:00'),
(82, 'App\\User', 1, 'Login Token', '06b642dd3d5ddc278dbf8cc380c88ae64b59fcc20e0f8b456cfe59214a14ee33', '[\"*\"]', '2021-11-15 06:41:32', '2021-11-15 06:41:22', '2021-11-15 06:41:32'),
(83, 'App\\User', 1, 'Login Token', '9b7e6dc759b7901e83a1c07d319e144cb9e0cb99bec3007a3a22dac5dff8a50e', '[\"*\"]', '2021-11-15 06:58:27', '2021-11-15 06:58:11', '2021-11-15 06:58:27'),
(84, 'App\\User', 1, 'Login Token', 'b5245a5d5f85d62ae25ef3c5b39b23c2b4f80816d82846d17f2e6fde4f35c128', '[\"*\"]', '2021-11-15 07:00:14', '2021-11-15 07:00:00', '2021-11-15 07:00:14'),
(85, 'App\\User', 1, 'Login Token', 'cfaff4ed5d0e2f11d9c4591600343ee75214a7645f340ba5c14343165c56b11e', '[\"*\"]', '2021-11-15 07:15:41', '2021-11-15 07:07:44', '2021-11-15 07:15:41'),
(86, 'App\\User', 1, 'Login Token', 'c31f97cc814e4c53fcba7f2a2bbfb626c71bb3b244d3e53cc477f96fa6503395', '[\"*\"]', '2021-11-15 07:32:31', '2021-11-15 07:32:25', '2021-11-15 07:32:31'),
(87, 'App\\User', 1, 'Login Token', '9616c32df2e6f6cbf10bc7b91c8701106f4ac5580dae254ad375d2f074c7aab3', '[\"*\"]', '2021-11-15 07:38:18', '2021-11-15 07:38:15', '2021-11-15 07:38:18'),
(88, 'App\\User', 1, 'Login Token', '2a487650cb09a3a07fb23f598d8068c33968cce011613efbd3155296dfa6794b', '[\"*\"]', '2021-11-15 08:02:45', '2021-11-15 07:57:51', '2021-11-15 08:02:45'),
(89, 'App\\User', 1, 'Login Token', '5f178393cf687460193992dfb630095d7aeae9abc96d12b648c0c310b8f6c22d', '[\"*\"]', '2021-11-15 08:08:21', '2021-11-15 08:08:15', '2021-11-15 08:08:21'),
(90, 'App\\User', 1, 'Login Token', 'fd58bc7d43a9aabd10c0ece48d8f8f9cf6e2f3c916109b3013485c85feee7461', '[\"*\"]', '2021-11-15 08:10:40', '2021-11-15 08:08:42', '2021-11-15 08:10:40'),
(91, 'App\\User', 1, 'Login Token', '993a7d5e9dd70d52073d51a7ce6cc4b7317b33938af08e5c127f4fe01fff6849', '[\"*\"]', '2021-11-15 08:26:40', '2021-11-15 08:10:30', '2021-11-15 08:26:40'),
(92, 'App\\User', 1, 'Login Token', '236ddb762db0604b1240b6c266ba3f439fdd13f2afc1de3a81a115e392030851', '[\"*\"]', '2021-11-15 09:01:11', '2021-11-15 08:27:45', '2021-11-15 09:01:11'),
(93, 'App\\User', 1, 'Login Token', '9a92186c66fe82987bff2b21a20fea3858fcbf36ab800b9e52373772a443cce1', '[\"*\"]', '2021-11-15 08:40:53', '2021-11-15 08:39:38', '2021-11-15 08:40:53'),
(94, 'App\\User', 1, 'Login Token', 'f8568cd637c77169551696909bf364ce2920f4dbfad9ab8a2afbd0a36d56b757', '[\"*\"]', '2021-11-15 08:40:57', '2021-11-15 08:40:56', '2021-11-15 08:40:57'),
(95, 'App\\User', 1, 'Login Token', '9a206d245a19a2c839c770d98ce69bf7ed96863c7fd174b92738e3873700a04d', '[\"*\"]', '2021-11-15 09:49:16', '2021-11-15 09:08:00', '2021-11-15 09:49:16'),
(96, 'App\\User', 1, 'Login Token', 'e787747102435ad22b89a530a4c13a880f8c52f5560ed9f3d2c4eb57cb03679f', '[\"*\"]', '2021-11-15 09:27:41', '2021-11-15 09:27:31', '2021-11-15 09:27:41'),
(97, 'App\\User', 1, 'Login Token', '889c43d32c204aecaa803c5249d649718bf11b10e3c1967b548e8d6b60691999', '[\"*\"]', '2021-11-15 09:29:02', '2021-11-15 09:28:43', '2021-11-15 09:29:02'),
(98, 'App\\User', 1, 'Login Token', '47f7d62abeb2662b99eb0ba76279e4c7eee1058261c4745c1755fdcf8e61c50f', '[\"*\"]', '2021-11-15 09:30:35', '2021-11-15 09:30:24', '2021-11-15 09:30:35'),
(99, 'App\\User', 1, 'Login Token', 'f92b8c21df1e41b5c208729906d374b0fa4bf2151b7728b26f9ec1635953b2ed', '[\"*\"]', '2021-11-15 09:32:53', '2021-11-15 09:32:39', '2021-11-15 09:32:53'),
(100, 'App\\User', 1, 'Login Token', '32391bdd987dae44ddf17a5c0389ee5bb084c5f761008f5d66db769fbdd524f4', '[\"*\"]', '2021-11-15 09:40:14', '2021-11-15 09:39:44', '2021-11-15 09:40:14'),
(101, 'App\\User', 9, 'Register Token', 'b3857883842b532eddd46255a7419a56483521e78125141e0d191972daa027e1', '[\"*\"]', NULL, '2021-11-15 09:48:38', '2021-11-15 09:48:38'),
(102, 'App\\User', 9, 'Login Token', '94bf8d4165ce68795f83bbf1b5d0f148725c9acaa138efac69f54ce913541b7b', '[\"*\"]', '2021-11-15 09:51:04', '2021-11-15 09:48:49', '2021-11-15 09:51:04'),
(103, 'App\\User', 1, 'Login Token', '48b56cd123cb9c1a6f263962760dda5155afa291d8cf75cf55d850a1d9815b57', '[\"*\"]', '2021-11-15 21:00:49', '2021-11-15 21:00:29', '2021-11-15 21:00:49'),
(104, 'App\\User', 1, 'Login Token', 'da9e031b23088a5ed6b3d9e21874d91181f0a82581c335e669835913bd8709b1', '[\"*\"]', '2021-11-15 21:57:01', '2021-11-15 21:09:02', '2021-11-15 21:57:01'),
(105, 'App\\User', 1, 'Login Token', '7f6e040377eac405fa96e57db688df37d6088fee23e08c383f09a42417b91324', '[\"*\"]', '2021-11-15 22:38:58', '2021-11-15 22:36:52', '2021-11-15 22:38:58'),
(106, 'App\\User', 1, 'Login Token', 'b9e335063a3171462c61f8ead926202020e04d4f8b4c1559235860061b8b1b6f', '[\"*\"]', '2021-11-15 23:24:47', '2021-11-15 23:24:43', '2021-11-15 23:24:47'),
(107, 'App\\User', 1, 'Login Token', '9877fd97fa20495a0d9d7a4747a6181a052b8e9723ca0aaad1ee2b93f14c3f16', '[\"*\"]', '2021-11-15 23:37:18', '2021-11-15 23:28:51', '2021-11-15 23:37:18'),
(108, 'App\\User', 1, 'Login Token', '673c41d06c770e943075d768d2cd47c506af66299dd327c7dcea3bf69eceb6e0', '[\"*\"]', '2021-11-17 09:15:02', '2021-11-17 09:15:00', '2021-11-17 09:15:02'),
(109, 'App\\User', 10, 'Register Token', '72eaeb284ddd881089478983885b67939c67432f41504aa10b35ea3fa366ca1c', '[\"*\"]', NULL, '2021-11-17 09:18:01', '2021-11-17 09:18:01'),
(110, 'App\\User', 1, 'Login Token', '30df6d0e78d291104d2a853235f8f7cf4436af37d8b805b4fa05c106833108f0', '[\"*\"]', '2021-11-17 09:20:25', '2021-11-17 09:20:24', '2021-11-17 09:20:25'),
(111, 'App\\User', 1, 'Login Token', '44f56e53b26f7c1eb4e0d1423cc4f5289b99fa135e0d6b3efd4091867512cbf8', '[\"*\"]', '2021-11-18 04:15:27', '2021-11-18 03:40:45', '2021-11-18 04:15:27'),
(112, 'App\\User', 1, 'Login Token', '7f7d1d1857fae90068f6f893176bedacdb5e9174cb7f9a0586bd7826a38b432e', '[\"*\"]', '2021-11-19 01:32:33', '2021-11-19 01:32:31', '2021-11-19 01:32:33'),
(113, 'App\\User', 1, 'Login Token', 'efd012eb8e38c304dac8604fcb365031b6400138bf92854f98cded7a97f5117b', '[\"*\"]', '2021-11-19 01:38:02', '2021-11-19 01:37:50', '2021-11-19 01:38:02'),
(114, 'App\\User', 1, 'Login Token', '649a72de75bd17bb3defe4eb4e3a4ba93a943ca4bb5f16a2efa3b3c76428b9d4', '[\"*\"]', '2021-11-19 01:43:28', '2021-11-19 01:38:04', '2021-11-19 01:43:28'),
(115, 'App\\User', 1, 'Login Token', '746fe827dcbfa888dc6f8ff51b14961e3de99f88d1fb2d69045366f28427bfef', '[\"*\"]', '2021-11-19 01:43:41', '2021-11-19 01:43:31', '2021-11-19 01:43:41'),
(116, 'App\\User', 1, 'Login Token', 'c47ba6272ec8b466d6d5871575e0e137c276d8724cc691ec4e76017e1e4e4db6', '[\"*\"]', '2021-11-19 01:44:00', '2021-11-19 01:43:47', '2021-11-19 01:44:00'),
(117, 'App\\User', 1, 'Login Token', 'ee129f52d8ed95449751838156ee706484860fa4b579505c48a92ac559e24efd', '[\"*\"]', '2021-11-19 01:48:32', '2021-11-19 01:48:31', '2021-11-19 01:48:32'),
(118, 'App\\User', 1, 'Login Token', 'beff3cdb6d9617e4ac87005fe4a043c20d1dce42029af8e656a3b519daac9add', '[\"*\"]', '2021-11-19 02:02:24', '2021-11-19 01:58:17', '2021-11-19 02:02:24'),
(119, 'App\\User', 1, 'Login Token', '6fc378a60ef0b80c724945e4dbbc1f457f9b252c8a4a49be8880ef20a4f36e0f', '[\"*\"]', NULL, '2021-11-19 02:08:32', '2021-11-19 02:08:32'),
(120, 'App\\User', 1, 'Login Token', '51aebe01ddb6246eb2313736af9b53439428cbcb0263ff8e685f7bb243026fdf', '[\"*\"]', NULL, '2021-11-19 02:08:32', '2021-11-19 02:08:32'),
(121, 'App\\User', 1, 'Login Token', 'e34af35c1347e003dc4ce009e874a509614402c15cb8960e77a83945101cded1', '[\"*\"]', NULL, '2021-11-19 02:08:32', '2021-11-19 02:08:32'),
(122, 'App\\User', 1, 'Login Token', '1871cc7815c05e41b6430335358d98b2656f7456688cd09a07ec24354843f380', '[\"*\"]', '2021-11-19 02:09:08', '2021-11-19 02:08:44', '2021-11-19 02:09:08'),
(123, 'App\\User', 1, 'Login Token', 'fcb10719459ffe8a4c8dba8d700e43596c2e3e220518abb86a0964b573ab6914', '[\"*\"]', '2021-11-21 07:24:26', '2021-11-21 06:22:46', '2021-11-21 07:24:26'),
(124, 'App\\User', 1, 'Login Token', '520e44dbfe16df8debb8c19c253695225fd7816228fe5ba8d99eda43496e66b6', '[\"*\"]', '2021-11-21 06:40:07', '2021-11-21 06:39:56', '2021-11-21 06:40:07'),
(125, 'App\\User', 1, 'Login Token', '0207f1d3c7e44a820e3c75e3df2ddbe85a5d946db204942aecfdcb1d35b7dff8', '[\"*\"]', '2021-11-22 00:34:18', '2021-11-22 00:34:17', '2021-11-22 00:34:18'),
(126, 'App\\User', 1, 'Login Token', '212a20fb782e9a98ef25f1c7d1a0a90d98b04fdd3759dc977df7f065848ceec6', '[\"*\"]', '2021-11-22 00:34:38', '2021-11-22 00:34:37', '2021-11-22 00:34:38'),
(127, 'App\\User', 1, 'Login Token', 'f0fd99d855bff243ce69be0242e8ae63bc9c2d9732e59e53eb946190ae9913e1', '[\"*\"]', '2021-11-22 15:55:18', '2021-11-22 14:24:46', '2021-11-22 15:55:18'),
(128, 'App\\User', 1, 'Login Token', 'fdbf847ae19d3e520c9b4e344328e76faabd613558ec3dbd0e3ddadef86c3a92', '[\"*\"]', '2021-11-23 02:19:16', '2021-11-23 02:19:15', '2021-11-23 02:19:16'),
(129, 'App\\User', 1, 'Login Token', '23c7ad13ed62d7667164d72a9432e68dc66b1c3b2dfd6c3e9a73599fe0f6d6eb', '[\"*\"]', '2021-11-23 02:21:18', '2021-11-23 02:21:05', '2021-11-23 02:21:18'),
(130, 'App\\User', 1, 'Login Token', 'be2a1256a910193ac0f0f49417609f5f5d5abe397571b5271a9d21c62124ce60', '[\"*\"]', '2021-11-23 02:47:50', '2021-11-23 02:47:49', '2021-11-23 02:47:50'),
(131, 'App\\User', 1, 'Login Token', 'bb6978ceeff33e73f5c6937d3782b6b4a4c2c1836364818327cbf1c4345d9a07', '[\"*\"]', '2021-11-23 04:05:07', '2021-11-23 03:14:04', '2021-11-23 04:05:07'),
(132, 'App\\User', 1, 'Login Token', 'c0061eebd018ade4311d12dbd0aa3b6317fff10a7b1e9ca5bfadc4211e2cd206', '[\"*\"]', '2021-11-23 03:47:45', '2021-11-23 03:33:58', '2021-11-23 03:47:45'),
(133, 'App\\User', 1, 'Login Token', '09b769dde58bed74f53dba1a0af1e004440bfca8d1aa854e1225e885242f4146', '[\"*\"]', '2021-11-23 03:35:45', '2021-11-23 03:35:44', '2021-11-23 03:35:45'),
(134, 'App\\User', 1, 'Login Token', '8fbfd5309697811ecd09e0bb8e30314180774861f8af6d07b90095c57e14f056', '[\"*\"]', '2021-11-23 03:38:31', '2021-11-23 03:38:30', '2021-11-23 03:38:31'),
(135, 'App\\User', 1, 'Login Token', 'd5202d3c8817294f7099a939e2314251858575e01e9d957624a4ad49adcc86a3', '[\"*\"]', '2021-11-23 03:44:21', '2021-11-23 03:44:20', '2021-11-23 03:44:21'),
(136, 'App\\User', 1, 'Login Token', '25ab144b890d6d922e0d00eda967846761af85e515dc9ad4cc9217dc98886c01', '[\"*\"]', '2021-11-23 04:00:35', '2021-11-23 04:00:34', '2021-11-23 04:00:35'),
(137, 'App\\User', 1, 'Login Token', '791e2a368ed76b2534e3a6777d13395dc4fe22433419a7450044dc9a7b28bb0a', '[\"*\"]', '2021-11-23 04:10:39', '2021-11-23 04:10:38', '2021-11-23 04:10:39'),
(138, 'App\\User', 1, 'Login Token', '9e7ae7f59134b4523ab575fc6c60b69ba1886b31c381d7f26ea28cbbc2b74b5c', '[\"*\"]', '2021-11-23 04:11:39', '2021-11-23 04:11:38', '2021-11-23 04:11:39'),
(139, 'App\\User', 1, 'Login Token', 'fd0fe2bf2248d6bef391188d1d24749f4fd25bcd8b1106d183cf932247b20217', '[\"*\"]', '2021-11-23 04:13:14', '2021-11-23 04:13:13', '2021-11-23 04:13:14'),
(140, 'App\\User', 1, 'Login Token', '50a5becf1226cb69749962c6bdb7198a73960c4192445aaa7036403cd6d1c72f', '[\"*\"]', '2021-11-23 04:13:44', '2021-11-23 04:13:43', '2021-11-23 04:13:44'),
(141, 'App\\User', 1, 'Login Token', 'd2c6f8f7d2c4e6c2756fec37f7a964367e493d1709dc654a1153bc7f79f9b6d8', '[\"*\"]', '2021-11-23 04:14:09', '2021-11-23 04:14:09', '2021-11-23 04:14:09'),
(142, 'App\\User', 1, 'Login Token', '1f543bd82f201f306ca66c6f5019dd2770d1a4e44877ad1ff8c57957629e6b92', '[\"*\"]', '2021-11-23 04:17:34', '2021-11-23 04:17:34', '2021-11-23 04:17:34'),
(143, 'App\\User', 1, 'Login Token', '98e101cc536794d4e0538aee29058d5bf4fa5da6dbd50493fe635bb6cdba7e8e', '[\"*\"]', '2021-11-23 04:20:36', '2021-11-23 04:19:16', '2021-11-23 04:20:36'),
(144, 'App\\User', 1, 'Login Token', 'fa25d28e3364c01e9a0e72610104c816d20b8d17e6852c155ba0a892c491cddc', '[\"*\"]', '2021-11-24 10:03:48', '2021-11-24 10:02:48', '2021-11-24 10:03:48'),
(145, 'App\\User', 1, 'Login Token', '91fa6f1a6fd0dc1cb13997cf7733df0c16e2eea24a23e28e0a2e1e6f80460338', '[\"*\"]', '2021-11-25 02:35:33', '2021-11-25 02:34:38', '2021-11-25 02:35:33'),
(146, 'App\\User', 1, 'Login Token', '59d5cc854842cfabc872cf10c918b84124541fe30303074de883d61d3a085406', '[\"*\"]', NULL, '2021-11-25 02:58:29', '2021-11-25 02:58:29'),
(147, 'App\\User', 1, 'Login Token', '29790964ea5ff738ab29bf6900c7a7bc95eaa7b9937023aa58f84e6348a59617', '[\"*\"]', NULL, '2021-11-25 02:58:39', '2021-11-25 02:58:39'),
(148, 'App\\User', 1, 'Login Token', '88fe0301fff6a8142684e562c9ba105cce52dd2b8b065407f6e8f74b784a2f29', '[\"*\"]', '2021-11-25 03:23:06', '2021-11-25 03:22:51', '2021-11-25 03:23:06'),
(149, 'App\\User', 1, 'Login Token', 'fafbb267775a5a0d074b435787211cf799f9e28dea3024e12e957109f1bea951', '[\"*\"]', '2021-11-25 03:29:36', '2021-11-25 03:29:34', '2021-11-25 03:29:36'),
(150, 'App\\User', 1, 'Login Token', '259b06fb52bde296a55dbf24a1e68e838b445cd33b5ed251d3eeb980ae41ba8d', '[\"*\"]', '2021-11-25 03:30:00', '2021-11-25 03:30:00', '2021-11-25 03:30:00'),
(151, 'App\\User', 1, 'Login Token', '4d027b0bad2a1cca22eb0b3bcf1671d6f29f22145d9a44baa7005fbc0e8f96f5', '[\"*\"]', '2021-11-25 03:32:38', '2021-11-25 03:31:32', '2021-11-25 03:32:38'),
(152, 'App\\User', 1, 'Login Token', 'c251f01d693afa69d8cae6c8d19e898bc956a50dbc85eb853f84064a7fa7d32d', '[\"*\"]', NULL, '2021-11-25 03:48:40', '2021-11-25 03:48:40'),
(153, 'App\\User', 1, 'Login Token', '963e5f0cf3b5ebe27c5a81875879fd14f9f592d045f5aed585cee02e7e7f9fc8', '[\"*\"]', '2021-11-25 04:07:25', '2021-11-25 03:57:18', '2021-11-25 04:07:25'),
(154, 'App\\User', 1, 'Login Token', '570b1957f5232d815006504c417fcf45f2b1cd5d8a3da7b48bd765e80aaec62b', '[\"*\"]', '2021-11-25 04:28:43', '2021-11-25 04:10:14', '2021-11-25 04:28:43'),
(155, 'App\\User', 1, 'Login Token', 'c50a5d8c79b8d58d628b51eee3d12164abe868c4dfb92b98aa0693b1d769c5d6', '[\"*\"]', '2021-11-25 06:33:00', '2021-11-25 04:31:38', '2021-11-25 06:33:00'),
(156, 'App\\User', 1, 'Login Token', '6695f92187e3485cabc74ac23ea915bc65f594f58127ab802d8341b2008aa490', '[\"*\"]', '2021-11-25 06:34:50', '2021-11-25 06:34:49', '2021-11-25 06:34:50'),
(157, 'App\\User', 1, 'Login Token', '83e340e8399b85be3188e0d3fc5bdbef64537b307b59e315935bfe76e9baffcc', '[\"*\"]', '2021-11-25 06:35:30', '2021-11-25 06:35:29', '2021-11-25 06:35:30'),
(158, 'App\\User', 1, 'Login Token', '0591cfde36905f3f00372ee663152ee29102a6d0487373af3be7f70f795f4a52', '[\"*\"]', '2021-11-25 06:48:04', '2021-11-25 06:48:00', '2021-11-25 06:48:04'),
(159, 'App\\User', 1, 'Login Token', '83e75542dce89a4a9c886801b91c2f2ca5aa80186fed0eed61a575bf44e8b439', '[\"*\"]', '2021-11-25 06:48:06', '2021-11-25 06:48:05', '2021-11-25 06:48:06'),
(160, 'App\\User', 1, 'Login Token', 'd59e36723abb48c5f52be90935b025777ea713d765f367fa3354cc09da2decef', '[\"*\"]', '2021-11-25 06:48:13', '2021-11-25 06:48:12', '2021-11-25 06:48:13'),
(161, 'App\\User', 1, 'Login Token', 'fdd6cebec461727725beea6002716dba42a06333481337ffbbff1bdc22b695e6', '[\"*\"]', '2021-11-25 06:49:23', '2021-11-25 06:49:22', '2021-11-25 06:49:23'),
(162, 'App\\User', 1, 'Login Token', '3dcc10b7bfc13c35e8498a56affc3d9e9677805b94971045c6036b99102664c5', '[\"*\"]', '2021-11-25 06:50:29', '2021-11-25 06:50:29', '2021-11-25 06:50:29'),
(163, 'App\\User', 1, 'Login Token', '0c9071b04df40b9b807ddc9a7713aa58929b503a92ee0aab18aea55ff48a1747', '[\"*\"]', '2021-11-25 06:55:03', '2021-11-25 06:55:03', '2021-11-25 06:55:03'),
(164, 'App\\User', 1, 'Login Token', 'bbaf67da61d62b8b6d82a1ad9943b2560c6bdb430a51e43f7c15f07dbc7c7c00', '[\"*\"]', '2021-11-25 07:44:05', '2021-11-25 07:39:25', '2021-11-25 07:44:05'),
(165, 'App\\User', 1, 'Login Token', '737606195a473b6025175756e00a71141f1de3f0c6120c63bfc77cccf0c3522a', '[\"*\"]', '2021-11-25 07:39:36', '2021-11-25 07:39:36', '2021-11-25 07:39:36'),
(166, 'App\\User', 1, 'Login Token', 'd877f1d1f4f3e0fca41b303b72146ab83a973d1a0314bc33cd836324497d3b53', '[\"*\"]', '2021-11-25 07:44:49', '2021-11-25 07:44:49', '2021-11-25 07:44:49'),
(167, 'App\\User', 1, 'Login Token', '57a58d3cf056d2a4db183ed98838a9024b30349f46180735cf1c3f49df401d24', '[\"*\"]', '2021-11-25 09:23:27', '2021-11-25 07:49:42', '2021-11-25 09:23:27'),
(168, 'App\\User', 1, 'Login Token', 'a7768ca84305b6113b1059a31f350c3435d7ad9daca6349e417f51c233b0b52d', '[\"*\"]', '2021-11-25 08:47:25', '2021-11-25 08:46:16', '2021-11-25 08:47:25'),
(169, 'App\\User', 1, 'Login Token', '7e3cfdcba5e17ed59f46bccdcdf7fa4235b18e7d77942f87214b29a6327cbf1c', '[\"*\"]', '2021-11-25 08:51:01', '2021-11-25 08:51:00', '2021-11-25 08:51:01'),
(170, 'App\\User', 1, 'Login Token', 'e0eb5883c0a4780c05259b6318c536074506798a1d9d92c0e3168c0318ae13f2', '[\"*\"]', '2021-11-25 08:52:48', '2021-11-25 08:52:48', '2021-11-25 08:52:48'),
(171, 'App\\User', 1, 'Login Token', '2f08a3ef4c25e969f25e573bbe3094beecfb7cc3269843bc6669cf5e258828c8', '[\"*\"]', '2021-11-25 12:46:19', '2021-11-25 12:45:42', '2021-11-25 12:46:19'),
(172, 'App\\User', 1, 'Login Token', '44ee3d9270f0a517ec14807c12a9e18564adeb37fb2a3fd0be113ff8301127ff', '[\"*\"]', '2021-11-25 13:12:41', '2021-11-25 13:11:25', '2021-11-25 13:12:41'),
(173, 'App\\User', 1, 'Login Token', '4d549f2134969e420d1d97265ac8cc5bea9bc9611d39d78fd3a2ae864c635e30', '[\"*\"]', '2021-11-26 04:22:27', '2021-11-26 02:45:01', '2021-11-26 04:22:27'),
(174, 'App\\User', 1, 'Login Token', 'b40aefb9b5ab57449757cc83de5990d6dc16c8eb144d68684b5f6be1945d179a', '[\"*\"]', '2021-11-26 14:13:22', '2021-11-26 14:13:20', '2021-11-26 14:13:22'),
(175, 'App\\User', 1, 'Login Token', '6c41a98f3cf5a1e9539860d3e901741383dba9ba2251a1d6f9bcf41e1a993e8b', '[\"*\"]', '2021-11-26 14:48:25', '2021-11-26 14:15:21', '2021-11-26 14:48:25'),
(176, 'App\\User', 1, 'Login Token', '431a639e63058cb4b618f53b2293e9d2ee9b22faee4e4370db967684bd7999b6', '[\"*\"]', '2021-11-26 17:15:01', '2021-11-26 15:00:43', '2021-11-26 17:15:01'),
(177, 'App\\User', 1, 'Login Token', 'a0618457e4730b2a634b5ad7560547b3e836676c4d9fde64f71962be1d2ed6f7', '[\"*\"]', '2021-11-26 17:15:19', '2021-11-26 17:15:06', '2021-11-26 17:15:19'),
(178, 'App\\User', 1, 'Login Token', 'fb7904749966a2bcf1712e783e21ac92d9e8f8218bf58531ab507115067d50ec', '[\"*\"]', '2021-11-27 01:24:11', '2021-11-27 01:24:08', '2021-11-27 01:24:11'),
(179, 'App\\User', 1, 'Login Token', 'c7cd65a159211ff8e6716852ace9be33f833ea91c49c906fd3061e83c017f007', '[\"*\"]', '2021-11-27 09:25:30', '2021-11-27 09:25:30', '2021-11-27 09:25:30'),
(180, 'App\\User', 1, 'Login Token', '9e427582feee8ea86a378c0b6d8c0cb498881b6606c63b3bc834aaa26c3ca3ca', '[\"*\"]', '2021-11-27 09:28:13', '2021-11-27 09:27:30', '2021-11-27 09:28:13'),
(181, 'App\\User', 1, 'Login Token', '15d95f49f12466cb3d90820ef23d8fb79e419ee2e8f7c322df92777c1427d13a', '[\"*\"]', '2021-11-27 13:12:37', '2021-11-27 13:12:35', '2021-11-27 13:12:37'),
(182, 'App\\User', 1, 'Login Token', 'b914a33beea50c27b47a83f75d82ad3f41e4cfee74747b7c3358381497d28c94', '[\"*\"]', '2021-11-27 13:15:41', '2021-11-27 13:15:27', '2021-11-27 13:15:41'),
(183, 'App\\User', 1, 'Login Token', '0d6049fe6595810119bab06da6531a03c5f13c72e78a3c179be6bd174eb53f0b', '[\"*\"]', '2021-11-27 13:18:34', '2021-11-27 13:18:08', '2021-11-27 13:18:34'),
(184, 'App\\User', 1, 'Login Token', '0c3d7bafd2d742a44047cca9d2a7c3434886a504b89e3b961b5fe675174de556', '[\"*\"]', '2021-11-27 13:19:09', '2021-11-27 13:18:43', '2021-11-27 13:19:09'),
(185, 'App\\User', 1, 'Login Token', '1a39548d6dce2ea2b30314413b5ed54ffc9293662c0736f26abc40450cffa72c', '[\"*\"]', '2021-11-27 13:20:51', '2021-11-27 13:20:48', '2021-11-27 13:20:51'),
(186, 'App\\User', 1, 'Login Token', '54a06e387e5010d1ca9eb3120c1bea718882cc713924b0e3f36c3d909d50fa28', '[\"*\"]', '2021-11-27 13:30:14', '2021-11-27 13:29:34', '2021-11-27 13:30:14'),
(187, 'App\\User', 1, 'Login Token', 'af8fe5a0c10de0fdded8ed5d6224e4aec376cf71715bb3bef3be7df28d85b86a', '[\"*\"]', '2021-11-27 13:35:44', '2021-11-27 13:35:13', '2021-11-27 13:35:44'),
(188, 'App\\User', 1, 'Login Token', '7121a014dad9459ddd2b61d52434ccb722635c2745a5a8e66f1083e9e6655f14', '[\"*\"]', '2021-11-27 14:01:29', '2021-11-27 14:01:12', '2021-11-27 14:01:29'),
(189, 'App\\User', 1, 'Login Token', '0b7e4b62e43f026d5bbaaeed6209a665764ae3ac3875d33ef7ba4a38b105b8fa', '[\"*\"]', '2021-11-28 07:45:12', '2021-11-28 07:44:30', '2021-11-28 07:45:12'),
(190, 'App\\User', 1, 'Login Token', '6b8bb09bea35b4dd973d653016d57e64e01b7bff1244881a70804164eba1d838', '[\"*\"]', '2021-11-28 07:45:16', '2021-11-28 07:45:15', '2021-11-28 07:45:16'),
(191, 'App\\User', 1, 'Login Token', '17f7fe27ea29fb248ff3374684e57820fd4c620dcb93e0786c6e7f215d929dae', '[\"*\"]', '2021-11-28 07:46:37', '2021-11-28 07:46:35', '2021-11-28 07:46:37'),
(192, 'App\\User', 1, 'Login Token', 'fcdd2183622c0ab9b4eee50a2d434b87abc3405911a94d35dc87b420c64c0d15', '[\"*\"]', '2021-11-28 11:20:39', '2021-11-28 11:20:29', '2021-11-28 11:20:39'),
(193, 'App\\User', 1, 'Login Token', '246321b40b831c18ccd8a3fd5f0243f8c4dec13958db99ad12dde21c58ef10d4', '[\"*\"]', '2021-11-28 11:21:26', '2021-11-28 11:21:03', '2021-11-28 11:21:26'),
(194, 'App\\User', 1, 'Login Token', 'd148ac3899c55f4787579676bb32d5f9b2d4175d65f2b3296a84879374f71148', '[\"*\"]', '2021-11-28 11:31:45', '2021-11-28 11:31:40', '2021-11-28 11:31:45'),
(195, 'App\\User', 1, 'Login Token', 'afd039166630706145b10c37d7f4a79ecde68329923c66b42cac16e184d5ef61', '[\"*\"]', '2021-11-28 11:41:35', '2021-11-28 11:41:22', '2021-11-28 11:41:35'),
(196, 'App\\User', 1, 'Login Token', '35d8849703e771b83de1029f7e9058f0ed153f2c66a4fbf9d1be75813acf302a', '[\"*\"]', '2021-11-28 11:45:49', '2021-11-28 11:45:45', '2021-11-28 11:45:49'),
(197, 'App\\User', 1, 'Login Token', '7b060ae0ce7f502b4a983dea5a08568a810331e8bcb736c31f5bdd0e3e424c92', '[\"*\"]', '2021-11-28 11:47:34', '2021-11-28 11:47:32', '2021-11-28 11:47:34'),
(198, 'App\\User', 1, 'Login Token', '892d890cf2c477ddf6b500c14e71e0a909fd1702be8a632b01047b90a9fb1a93', '[\"*\"]', '2021-11-28 11:47:48', '2021-11-28 11:47:36', '2021-11-28 11:47:48'),
(199, 'App\\User', 1, 'Login Token', '974eda70ac3fdcaa38f5fd90398abfba1942296bc62f33f5f2e1324f54c34c0c', '[\"*\"]', '2021-11-28 11:55:37', '2021-11-28 11:55:28', '2021-11-28 11:55:37'),
(200, 'App\\User', 1, 'Login Token', '63cf91a4696e3c7532931c21885fb1737174d1d02ad44114f5443e5e09175d98', '[\"*\"]', '2021-11-28 11:58:44', '2021-11-28 11:58:37', '2021-11-28 11:58:44'),
(201, 'App\\User', 1, 'Login Token', '164446c31255373e19655ab1f050ebff027877b890ba889cb324bc81be6d36c7', '[\"*\"]', '2021-11-28 11:59:31', '2021-11-28 11:59:26', '2021-11-28 11:59:31'),
(202, 'App\\User', 1, 'Login Token', 'ccb11122a25099ab615a0750bdaa4c132335c8d98fa49251f80f1d8842357abe', '[\"*\"]', '2021-11-29 03:15:58', '2021-11-29 02:51:49', '2021-11-29 03:15:58'),
(203, 'App\\User', 1, 'Login Token', 'ae78ebae85bf1b29a4d6aff9f9f121ba472237ea6684a8c22bbff7a1d917b71c', '[\"*\"]', NULL, '2021-12-02 03:24:06', '2021-12-02 03:24:06'),
(204, 'App\\User', 1, 'Login Token', '58bb28cc4ee6c511509f15c59df64e0e3c2d4f8e4c19bd5017fc8fc5c7cb7d85', '[\"*\"]', '2021-12-02 04:38:17', '2021-12-02 03:48:21', '2021-12-02 04:38:17'),
(205, 'App\\User', 1, 'Login Token', '92fd0d15ef1b1b6a2656f4d80e7ba8e876c9acdecd89031edfbf9d7db4f7628f', '[\"*\"]', '2021-12-02 04:39:27', '2021-12-02 04:37:42', '2021-12-02 04:39:27'),
(206, 'App\\User', 2, 'Register Token', 'c0a9acb2c61863fc4b034500d345c0daeb9fa93a1adb79c5bdbf077dec9eda00', '[\"*\"]', NULL, '2021-12-02 04:51:37', '2021-12-02 04:51:37');

-- --------------------------------------------------------

--
-- Table structure for table `recipes`
--

DROP TABLE IF EXISTS `recipes`;
CREATE TABLE IF NOT EXISTS `recipes` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `made_by` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `level_of_difficult` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `publish_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `recipes`
--

INSERT INTO `recipes` (`id`, `name`, `made_by`, `level_of_difficult`, `category`, `publish_date`, `created_at`, `updated_at`) VALUES
(1, 'Creamy Braised Salmon & Broccoli', 'Pura Kitchen', 'Mudah', 'Makanan Sehat', '2021-07-18', '2021-11-27 03:31:47', '2021-11-27 03:31:47'),
(2, 'Chicken Egg Roll', 'Pura Kitchen', 'Sedang', 'Makanan Ringan', '2021-07-18', '2021-11-27 04:34:28', '2021-11-27 04:34:28'),
(3, 'Opor Ayam', 'Pura Kitchen', 'Sulit', 'Makanan Berat', '2021-05-22', '2021-11-27 04:40:19', '2021-11-27 04:40:19'),
(4, 'Siomay Bandung', 'Pura Kitchen', 'Sedang', 'Makanan Ringan', '2021-04-24', '2021-11-27 04:44:10', '2021-11-27 04:44:10'),
(5, 'Avocado Banana Chocolate Dessert', 'Pura Kitchen', 'Sedang', 'Makanan Ringan', '2021-04-11', '2021-11-27 04:48:44', '2021-11-27 04:48:44'),
(6, 'Lodeh Salmon Kale', 'Pura Kitchen', 'Mudah', 'Makanan Sehat', '2021-03-13', '2021-11-27 04:53:42', '2021-11-27 04:53:42'),
(7, 'Low Carbs Eggplant Lasagna', 'Pura Kitchen', 'Sedang', 'Makanan Sehat', '2021-01-15', '2021-11-27 04:56:48', '2021-11-27 04:56:48'),
(8, 'Almond Milk', 'Pura Kitchen', 'Mudah', 'Minuman', '2020-12-19', '2021-11-27 05:00:43', '2021-11-27 05:00:43'),
(9, 'Zuppa Soup', 'Pura Kitchen', 'Sedang', 'Makanan Berat', '2020-12-04', '2021-11-27 08:58:48', '2021-11-27 08:58:48'),
(10, 'Sundubu Jjigae', 'Pura Kitchen', 'Mudah', 'Makanan Berat', '2020-11-20', '2021-11-27 09:12:14', '2021-11-27 09:12:14'),
(11, 'Caesar Salad', 'Pura Kitchen', 'Mudah', 'Makanan Sehat', '2020-11-07', '2021-11-27 09:16:31', '2021-11-27 09:16:31'),
(12, 'Stir Fried Bhok Coy & Mushroom', 'Pura Kitchen', 'Mudah', 'Makanan Sehat', '2020-10-23', '2021-11-27 09:20:08', '2021-11-27 09:20:08'),
(13, 'Lime Avocado Pie', 'Pura Kitchen', 'Sulit', 'Makanan Sehat', '2020-10-09', '2021-11-27 09:22:47', '2021-11-27 09:22:47'),
(14, 'Crispy Garlic Wings', 'Pura Kitchen', 'Sedang', 'Makanan Ringan', '2020-09-18', '2021-11-27 09:24:55', '2021-11-27 09:24:55'),
(15, 'Egg Drop Soup with Bamboo Shoot and Mushroom', 'Pura Kitchen', 'Mudah', 'Makanan Berat', '2020-09-11', '2021-11-27 09:28:25', '2021-11-27 09:28:25'),
(16, 'Bakso Sapi', 'Pura Kitchen', 'Sedang', 'Makanan Sehat', '2020-08-28', '2021-11-27 09:31:35', '2021-11-27 09:31:35'),
(17, 'Korean Homemade Kimchi', 'Pura Kitchen', 'Sulit', 'Makanan Berat', '2020-08-21', '2021-11-27 09:35:00', '2021-11-27 09:35:00'),
(18, 'Korean Cream Cheese Garlic Bread', 'Pura Kitchen', 'Sulit', 'Makanan Sehat', '2020-08-14', '2021-11-27 09:37:22', '2021-11-27 09:37:22');

-- --------------------------------------------------------

--
-- Table structure for table `recipe_details`
--

DROP TABLE IF EXISTS `recipe_details`;
CREATE TABLE IF NOT EXISTS `recipe_details` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_recipe` bigint UNSIGNED NOT NULL,
  `short_description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recipe_image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `duration` int NOT NULL,
  `total_eater` int NOT NULL,
  `total_calory` int NOT NULL,
  `compositions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `steps_of_make` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `cholesterol` tinyint(1) NOT NULL,
  `diabetes` tinyint(1) NOT NULL,
  `uric_acid` tinyint(1) NOT NULL,
  `stomach_acid` tinyint(1) NOT NULL,
  `hyper_tension` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `recipe_details_id_recipe_foreign` (`id_recipe`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `recipe_details`
--

INSERT INTO `recipe_details` (`id`, `id_recipe`, `short_description`, `recipe_image`, `duration`, `total_eater`, `total_calory`, `compositions`, `steps_of_make`, `cholesterol`, `diabetes`, `uric_acid`, `stomach_acid`, `hyper_tension`, `created_at`, `updated_at`) VALUES
(1, 1, 'Salmon tinggi akan kalium sehingga dapat mengontrol tekanan darah', 'creamy-braised-salmon-brocoli.jpg', 20, 2, 448, '½  sdt PURA Coarse Sea Salt by @PuraIndonesia\n½  sdt PURA Seasoning Chicken by @PuraIndonesia\n200 gram Ikan Salmon / Salmon Fish sayat bagian kulit \n1 sdm Air Lemon / Lemon Juice \n200 gram Brokoli / Broccoli potong kecil\n​1 sdm Minyak Zaitun / Olive Oil potong kecil \n¼  sdt PURA Coarse Sea Salt by @PuraIndonesia\n½  sdt PURA Seasoning Chicken by @PuraIndonesia\n150 ml Susu / Milk \n100 ml Air / Water \n2 siung Bawang Putih / Garlic cincang halus \n½  buah Bawang Bombay / Onion cincang halus\n½  sdt Rosemary \n½  sdt thyme \n1 sdm Minyak Zaitun / Olive Oil', 'Prepare : \n1. bawang putih, cincang halus \n2. bawang bombay, cincang halus \n3. brokoli, potong kecil \n4. salmon, sayat bagian kulit \nStep : \n1. siapkan ikan salmon, beri : \n- PURA Coarse Sea Salt \n- PURA Seasoning Chicken \n- air lemon. marinasi 10 menit \n2. siapkan wajan, panaskan minyak zaitun lalu masak salmon (kulit dahulu) 3. setelah salmon kecoklatan, angkat dan sisihkan. (bersihkan wajan) 4. dengan wajan yang sama, panaskan minyak lalu tumis bahan : - bawang putih \n- bawang bombay, masak hingga harum \n5. setelah harum, masukan bahan : \n- susu \n- air \n- PURA Coarse Sea Salt \n- PURA Seasoning Chicken \n- rosemary \n- thyme. aduk rata. masak hingga mendidih \n6. setelah mendidih, masukan bahan : \n- salmon \n- brokoli. masak dengan api sedang hingga mendidih dan kuah mengental. 7. setelah matang, lalu tuang ke piring. Sajikan', 1, 1, 1, 1, 1, '2021-11-27 03:31:47', '2021-11-27 03:31:47'),
(2, 2, 'Perpaduan ayam dan telur dan dilengkapi dengan salad sebagai resep makanan nikmat untuk Anda', 'chicken-egg-roll.jpg', 45, 24, 70, 'Campuran Ayam : \n1 sdt PURA Fine Sea Salt  by @PuraIndonesia\n1 sdt PURA Seasoning Chicken  by @PuraIndonesia\n300 gram Ayam / Chicken Giling \n1 butir Telur / Egg untuk campuran ayam \n3 butir Telur / Egg Dadar \n1 sdt Gula Kelapa / Coconut Sugar  \n2 siung Bawang Putih / Garlic cincang halus \n5 gram Daun Bawang / Spring Onion iris tipis \n15 sdm Tepung Tapioka / Tapioca Flour  \n3 lembar Daun Pisang / Banana Leaf Untuk membungkus \n\nSalad / Pendamping : \n2 sdm Minyak Kelapa / Coconut Oil Untuk Pan Fry \n50 gram Kubis / Cabbage iris tipis \n50 gram Wortel / Carrot iris tipis \n2 sdm Mayonnaise', 'Prepare : \n1. bawang putih, cincang halus \n2. daun bawang, iris tipis \n3. kubis, iris tipis \n4. wortel, iris tipis \n5. daun pisang, potong kotak, bakar hingga lentur Step :\n1. siapkan mangkuk, campur bahan : \n- ayam giling \n- PURA Fine Sea Salt \n- PURA Seasoning Chicken \n- telur (1 butir) \n- gula kelapa \n- bawang putih \n- daun bawang \n- tepung tapioka, aduk rata. \n2. siapkan wajan anti lengket, masak telur dadar \n3. siapkan daun pisang, tata telur dadar dan isian ayam. gulung dan padatkan \n4. kukus campuran ayam selama 10 menit (api sedang) \n5. setelah matang, keluarkan dan dinginkan sebentar \n6. setelah dingin, buka chicken egg roll, iris tipis \n7. pan fry chicken egg roll hingga kecoklatan lalu angkat dan tata di piring \n8. sajikan chicken egg roll dengan salad.', 0, 1, 1, 1, 1, '2021-11-27 04:34:28', '2021-11-27 04:34:28'),
(3, 3, 'Masakan opor ayam cocok untuk lebaran atau acara rumah', 'opor-ayam.jpg', 90, 5, 275, 'Bahan :\n1 sdt Pura Fine Sea Salt by Pura Indonesia\n1 sdm PURA Seasoning Chicken by Pura Indonesia\n500 gram Ayam / Chicken 1 ekor potong jadi 10\n800 ml Air / Water\n200 ml Santan / Coconut Milk\n2 sdm Minyak Kelapa / Coconut Oil\n2 lembar Daun Salam / Indonesian Bay Leaf\n1 buah Sereh / Lemon Grass geprek, bentuk simpul\n3 gram Lengkuas / Galangal kupas, geprek\n1 sdm Gula Kelapa / Coconut Sugar\n\nBumbu Halus :\n8 siung Bawang Merah / Shallot\n6 siung Bawang Putih / Garlic\n3 butir Kemiri / Candlenut\n3 gram Jahe / Ginger\n1/2 sdt Lada Putih / White Pepper biji\n1 sdt Ketumbar biji / Coriander Seed\n50 ml Air / Water', 'Prepare :\n1. ayam, 1 ekor potong jadi 10\n2. sereh, kupas lalu geprek\n3. lengkuas, kupas lalu geprek.\n\nStep :\n1. [bumbu halus] siapkan blender, haluskan bahan :\n- bawang merah\n- bawang putih\n- kemari\n- jahe\n- lada putih\n- ketumbar\n- air. haluskan\n2. siapkan wajan, panaskan minyak kelapa lalu tumis bahan :\n- bumbu halus\n- daun salam\n- sereh\n- lengkuas. aduk rata. masak hingga harum dan mengering\n3. setelah harum, masukan ayam. aduk rata.\n4. setelah tercampur rata, masukan bahan :\n- air\n- santan\n- pura fine sea salt\n- pura seasoning chicken\n- gula kelapa. aduk rata. simmer hingga empuk (45-60 menit)\n5. setelah matang, angkat dan sajikan', 0, 1, 1, 1, 1, '2021-11-27 04:40:19', '2021-11-27 04:40:19'),
(4, 4, 'Jajanan khas Bandung yang nikmat', 'siomay-bandung.jpg', 45, 4, 464, 'Isian Siomay : \n1 sdt PURA Fine Sea Salt  by @PuraIndonesia\n1 sdt PURA Seasoning Chicken  by @PuraIndonesa\n300 gram Ikan Tenggiri / Mackerel fillet, potong kasar \n1 buah Bawang Pre / Leek potong kasar \n1 butir Putih Telur / Egg White  \n30 gram Tepung Tapioka / Tapioca Flour  \n1 sdm Gula Kelapa / Coconut Sugar  \n25 ml Air / Water (es / dingin) \n\nBahan : \n8 lembar Kubis / Cabbage  \n300 gram Tahu / Tofu potong kotak memanjang \n8 lembar Kulit Pangsit / Wonton Skin  \n4 buah Kentang / Potato rebus, kupas, potong kotak \nBumbu Kacang : \n1 sdt PURA Fine Sea Salt by @PuraIndonesia \n200 gram Kacang tanah / Peanut sangrai \n2 buah Cabai merah / Red Chili potong kasar \n2 siung Bawang Putih / Garlic  \n4 butir Bawang Merah / Shallot  \n3 sdm Gula Kelapa / Coconut Sugar  \n300 ml Air / Water', 'Prepare : \n1. ikan tenggiri, fillet potong kasar \n2. bawang pre, potong kasar \n3. telur, ambil bagian putihnya saja \n4. kubis, potong per lembar, lalu rebus hingga lentur (-+ 2 menit) \n5. tahu, potong kotak memanjang \n6. kentang, kupas, rebus, potong kotak \n7. kacang tanah, sangrai \n8. cabai merah, potong kasar \n\nStep : \n1. Siapkan food processor, masukan bahan : \n- ikan tenggiri \n- PURA Fine Sea Salt \n- PURA Seasoning Chicken \n- bawang pre \n- putih telur \n- tepung tapioka \n- gula kelapa. giling hingga halus dan tercampur rata. \n2. setelah tercampur rata, masukan air dingin. aduk rata. \n3. siapkan bahan : \n- kubis \n- tahu \n- kulit pangsit, isi dengan bahan isian tenggiri lalu kukus -+ 10 menit 4. setelah matang, angkat dan sisihkan \n5. Siapkan blender, masukan bahan : \n- kacang tanah \n- PURA Fine Sea Salt \n- cabai merah \n- bawang putih \n- bawang merah \n- gula kelapa \n- air. haluskan \n6. siapkan wajan, masak saus kacang yang sudah dihaluskan. \n7. masak dengan api sedang hingga warna menua dan mengental. \n8. siapkan piring, \n- siomay \n- kubis isi \n- tahu isi \n- kentang rebus. sajikan dengan saus kacang', 0, 1, 1, 1, 1, '2021-11-27 04:44:10', '2021-11-27 04:44:10'),
(5, 5, 'Resep Dessert Sehat', 'avocado-banana-dessert.jpg', 45, 4, 331, 'Chocolate :\n¼ sdt PURA Coarse Sea Salt by Pura Indonesia\n100 gram Dark Chocolate potong kasar\n70.0 gram Susu / Milk\n\nAvocado :\n200 gram Alpukat / Avocado potong kotak\n20 gram Kacang Almond / Almond sangrai, cincang kasar\n1 sdm Madu / Honey\n\nBanana Yogurt :\n200 gram Pisang / Banana potong kasar\n50 gram Greek Yogurt\n1 sdm Madu / Honey', 'Prepare :\n1. dark chocolate, potong kasar\n2. alpukat, potong kotak\n3. pisang, potong kasar\n\nStep :\n1. [avocado mixture] : siapkan mangkuk, masukan alpukat lalu haluskan\n​ 2. setelah halus, masukan bahan :\n- kacang almond\n- madu. aduk rata.\n3. [banana yogurt mixture] siapkan mangkuk, masukan pisang lalu haluskan\n​4. setelah halus, masukan bahan :\n- yogurt\n- madu, aduk rata.\n5. [chocolate ganache] siapkan panci, rebus air hingga mendidih lalu kecilkan\n​6. letakan mangkuk tahan panas di atas panci, lalu masukan bahan :\n- coklat\n- susu\n- PURA Coarse Sea Salt. aduk rata. masak hingga leleh\n7. setelah leleh, dinginkan chocolate ganache hingga agak mengental\n​8. siapkan gelas / cup, tuang bahan :\n- avocado mixture\n- banana yogurt mixture\n- chocolate ganache\n- kacang almond cincang\n9. simpan dessert di kulkas -+ 30 menit.\n10. setelah 30 menit, keluarkan lalu beri sedikit taburan PURA Coarse Sea Salt. sajikan', 1, 1, 1, 1, 1, '2021-11-27 04:48:44', '2021-11-27 04:48:44'),
(6, 6, 'Resep salmon dengan kuah lodeh dan kale yang sehat untuk Anda', 'lodeh-salmon-kale.jpg', 30, 4, 288, 'Bahan : \n2 sdt PURA Fine Sea Salt by @puraindonesia \n1/2 sdt PURA Anchovy Powder  by @puraindonesia\n2 sdt PURA Seasoning Chicken  by @puraindonesia\n1 sdm Gula Kelapa / Coconut Sugar \n200 gram Ikan Salmon / Salmon Fish potong tipis memanjang \n​100 gram Tempe / Tempeh potong kotak \n100 gram Labu Siam / Chayote potong katik \n50 gram Kale / Kale buang batang, potong kasar 400 ml Air / Water \n200 ml Santan / Coconut Milk (Fresh) \n1 sdm Minyak Kelapa / Coconut Oil \n2 lembar Daun Jeruk / Lime Leaf \n\n​Bumbu Halus :\n​2 lembar Daun Salam / Indonesian Bay Leaf \n5 gram Lengkuas / Galangal kupas, geprek \n1 buah Sereh / Lemon Grass geprek, ikat simpul \n5 gram Kunyit / Turmeric \n6 siung Bawang Merah / Shallot \n4 siung Bawang Putih / Garlic \n2 butir Kemiri / Candlenut \n2 buah Cabai merah / Red Chili \n50 ml Air / Water Untuk Blender', 'Prepare : \n1. salmon, potong memanjang \n2. tempeh, potong memanjang \n3. labu siam, kupas, potong katik \n4. kale, potong kasar \n5. lengkuas, kupas, geprek \n6. sereh, geprek, ikat simpul \n\nStep : \n1. siapkan blender, haluskan bahan : \n- kunyit \n- bawang merah \n- bawang putih \n- kemiri \n- cabai merah \n- air. \n2. bumbui salmon dengan pura fine sea salt dan lada hitam \n3. siapkan wajan, panaskan minyak kelapa lalu pan fry salmon hingga matang lalu angkat \n4. dengan wajan yang sama, tumis bahan : \n- bumbu halus \n- daun jeruk \n- daun salam \n- lengkuas \n- sereh, aduk rata. masak hingga harum \n5. setelah harum, masukan bahan : \n- air \n- tempe \n- labu siam \n- PURA Fine Sea Salt \n- PURA Anchovy Powder \n- PURA Seasoning Chicken \n- gula kelapa, aduk rata. masak dengan api kecil 15 menit', 1, 1, 1, 1, 1, '2021-11-27 04:53:42', '2021-11-27 04:53:42'),
(7, 7, 'Lasagna dengan buah terong dan karbohidrat rendah', 'eggplant-lasagna.jpg', 60, 6, 118, 'Bahan : \n2 buah Terong / Egg Plant iris tipis \n150 gram Keju Mozzarella / Mozzarella Cheese parut \n\nSauce : \n½ sdt PURA Himalayan Salt  \nby Pura Indonesia\n1 sdm PURA Seasoning Beef by Pura Indonesia\n200 gram Daging sapi giling / Ground Beef  \n3 siung Bawang Putih / Garlic cincang halus \n1 buah Bawang Bombay / Onion cincang halus \n4 buah Tomat / Tomato blender \n20 gram Seledri / Celery cincang halus \n1 buah Wortel / Carrot cincang halus \n¼  sdt Rosemary  \n¼  sdt Oregano  \n¼  sdt Thyme  \n2 lembar Bayleaf', 'Prepare : \n1. terong, iris tipis \n2. keju mozzarella, parut \n3. bawang putih, cincang halus \n4. bawang bombay, cincang halus \n5. tomat, blender \n6. seledri, cincang halus \n7. wortel, cincang halus \n8. siapkan loyang kaca / pyrex (ukuran di cek) \n\nStep : \n1. siapkan panci, panaskan minyak zaitun \n2. tumis daging giling sampai berubah warna \n3. masukan bahan : \n - bawang putih \n - bawang bombay \n - tomat \n - seledri \n - wortel, aduk rata \n4. masukan bahan : \n - rosemary \n - oregano \n - thyme \n - bayleaf \n - PURA Himalayan Salt \n - PURA Seasoning Beef, aduk rata \n5. masak (simmer) sampai air mengering. (aduk sesekali) \n6. tata bahan : \n - bolognese \n - mozzarella \n - terong \n - bolognese \n - mozzarella \n - terong \n - bolognese \n - taburi dengan daun seledri \n7. bake lasagna dengan suhu 190* selama 30 menit \n8. setelah matang, keluarkan. potong 6 potong. Sajikan', 0, 0, 0, 0, 0, '2021-11-27 04:56:48', '2021-11-27 04:56:48'),
(8, 8, 'Resep Susu Almond Buatan Rumah', 'almond-milk.jpg', 15, 4, 100, 'Bahan : \nPinch of PURA Himalayan Salt by Pura Indonesia\n150 gram Kacang Almond / Almond \n500 ml Air / Water Matang. untuk merendam almond \n1,000 ml Air / Water Matang. untuk blender \n4 buah Kurma / Dates buang biji \n½  sdt Vanilla', 'Prepare : \n1. Almond, rendam dengan air matang overnight \n2. kurma, buang biji 3. siapkan saringan kain cheese cloth \n\nStep : \n1. setelah 1 hari merendam almond, buang air rendaman, lalu bilas dengan air bersih / matang \n2. siapkan blender, \nmasukan bahan : \n- almond yang sudah direndam dan dibilas \n- PURA Himalayan Salt \n- air (1000ml) \n- kurma \n- vanilla extract. blender hingga halus dan lembut. 3. setelah halus dan lembut, saring blenderan almond \n4. setelah semua susu almond tersaring, simpan dalam botol \n5. homemade almond milk dapat disimpan dalam lemari pendingin selama 3 hari.', 1, 1, 1, 1, 1, '2021-11-27 05:00:43', '2021-11-27 05:00:43'),
(9, 9, 'Resep soup nikmat dengan perpaduan ayam, sayuran serta roti pastry', 'zuppa-soup.jpg', 45, 2, 423, 'Bahan : \n2  lembar Puff Pastry u \n1 sdm Minyak Zaitun / Olive Oil  \n50 gram Ayam Dada / Chicken Breast potong kotak kecil \n30 gram Bawang Bombay / Onion cincang halus \n30 gram Wortel / Carrot potong kotak kecil \n10 gram Seledri / Celery iris tipis \n2 sdm Tepung terigu / Wheat Flour  \n400 ml Air / Water  \n100 ml Susu / Milk  \n1/4 sdt PURA Himalayan Salt by Pura Indonesia \n1.0 sdm PURA Seasoning Chicken by Pura Indonesia\nPinch of Lada Hitam / Black Pepper \nPinch of Pala Bubuk / Nutmeg Powder \n\nEgg Wash : \n1 butir Kuning telur / Egg Yolk  \n1 sdm Susu / Milk', 'Prepare : \n1. Pre-Heat oven 200*c \n2. siapkan mangkuk sup tahan panas \n3. puff pastry, ukuran 15x15 cm \n4. wortel, potong kotak kecil \n5. bombay, cincang halus \n6. seledri, iris tipis \n7. ayam, potong kotak kecil \n8. egg wash, campur kuning telur dengan 1 sdm susu \n\nStep : \n1. siapkan panci, panaskan minyak zaitun lalu tumis bahan : \n- ayam dada \n- bawang bombay \n- wortel \n- seledri, masak sampai harum dan layu \n2. setelah harum dan layu, masukan tepung terigu, aduk rata \n3. setelah tercampur rata, masukan susu dan air, aduk rata \n4. beri seasoning : \n- PURA Himalayan Salt \n- PURA Seasoning Chicken \n- lada hitam \n- pala bubuk, aduk rata. masak (api kecil) sampai mengental \n5. setelah mengental angkat, tuang ke mangkuk \n6. siapkan puff pastry, tutup mangkuk yang sudah diisi sup \n7. oleskan puff pastry dengan egg wash secara merata \n8. bake sup dengan suhu 200*c selama 20 menit (sampai golden brown) \n9. setelah matang, keluarkan dari oven lalu sajikan (hati-hati mangkuk panas)', 1, 1, 1, 1, 1, '2021-11-27 08:58:48', '2021-11-27 08:58:48'),
(10, 10, 'Sup Tahu Sutera dari Korea berkuah Pedas namun juga Gurih', 'sundubu-jjigae.jpg', 20, 2, 255, '1/4 sdt PURA Himalayan Salt by @puraindonesia \n1 sdt PURA Seasoning Chicken by @puraindonesia \n1/2 sdt PURA Anchovy Powder by @puraindonesia\n200 gram Tahu Sutra / Silken Tofu potong tebal \n4 buah Udang / Prawn buang kepala, bersihkan punggung \n100 gram Jamur Enoki / Enoki Mushroom suwir \n1 sdm Gochugaru / Korean Chili Pepper Flake \n2 siung Bawang Putih / Garlic cincang halus \n1/4 buah Bawang Bombay / Onion cincang halus \n1 buah Bawang Pre / Leek iris tipis \n100 gram Kimchi potong bite size \n250 ml Air / Water \n1 sdm Minyak Kelapa / Coconut Oil', 'Prepare :\n1. tahu sutra, potong tebal\n2. udang, buang kepala & kaki, bersihkan punggung\n3. jamur enoki, suwir\n4. bawang putih, cincang halus\n5. bawang bombay, cincang halus\n6. bawang pre :\n- bagian putih, iris tipis (untuk ditumis)\n- bagian daun, iris tipis (untuk taburan)\n7. kimchi, potong bite size \n\nStep :\n1. siapkan hot pot / panci, panaskan minyak kelapa lalu tumis :\n- bawang putih\n- bawang bombay\n- bawang pre (bagian putih). tumis dengan api kecil hingga harum dan layu\n2. setelah harum, masukan bahan :\n- kimchi\n- Pura Himalayan Salt\n- Pura Seasoning Chicken\n- Pura Anchovy Powder\n- gochugaru. aduk rata.\n3. setelah tercampur rata, tata bahan :\n- udang\n- jamur enoki\n- tahu sutra\n- air. tutup hot pot, masak dengan api kecil 5-7 menit\n4. setelah matang, sajikan dengan taburan daun bawang pre.', 1, 1, 1, 1, 1, '2021-11-27 09:12:14', '2021-11-27 09:12:14'),
(11, 11, 'Resep masakan salad sehat dan lezat', 'caesar-salad.jpg', 25, 2, 284, 'Bahan : \n150 gram Selada Romaine / Romaine Lettuce potong kasar \n10 buah Cherry Tomato belah 2 \n2 sdm Keju Permesan / Parmesan Cheese 1 sdm/ porsi \n\nCroutons : \n2 lembar Roti Gandum / Whole Wheat Bread potong kotak kecil \n1 sdm Butter \n5 gram Petersely / Parsley cincang halus \n\nDressing : \n100 gram Yogurt Plain \n1/2 sdt PURA Sea Salt by @puraindonesia \n1/2 sdt PURA Anchovy Powder by @puraindonesia \n1 siung Bawang Putih / Garlic cincang halus \n1 sdm Madu / Honey \n1 sdm Air Lemon / Lemon Juice', 'Prepare :\n1. selada romaine, potong kasar\n2. cherry tomato, belah dua\n3. roti gandum, potong kotak\n4. parsley, cincang halus\n5. bawang putih, cincang halus \n\nStep [Croutons] :\n1. siapkan wajan, lelehkan butter\n2. setelah meleleh, masukan roti dan taburi dengan parsley, aduk rata\n3. masak dengan api kecil hingga kecoklatan dan kering, angkat sisihkan \n\n[Dressing]:\n4. siapkan mangkuk, campur bahan :\n- yogurt\n- Pura Himalayan Salt \n- Pura Anchovy Powder\n- bawang putih\n- madu\n- air lemon, aduk rata. sisihkan untuk nanti \n\n[Caesar Salad]\n5. siapkan mangkuk/piring besar, tata bahan :\n- selada romaine\n- cherry tomato\n- croutons\n- dressing\n- keju parmesan, aduk rata. sajikan', 1, 1, 1, 1, 1, '2021-11-27 09:16:31', '2021-11-27 09:16:31'),
(12, 12, 'Resep masakan sehat dengan bahan bhok coy dan jamur', 'bok-choy-mushroom.jpg', 20, 4, 69, 'Bahan : \n1/4 sdt PURA Sea Salt by @puraindonesia  \n1/2 sdt PURA Anchovy Powder by @Puraindonesia \n2 buah Pok Coy / Bhok Coy potong akar, uraikan \n75 gram Jamur Shimeji / Shimeji Mushroom potong akar, uraikan \n3 siung Bawang Putih / Garlic cincang halus \n3 gram Jahe / Ginger cincang halus \n1 sdt Minyak Wijen / Sesame Oil \n1 sdt Biji Wijen / Sesame Seed sangrai sampai kecoklatan \n100 ml Air / Water \n1 sdm Minyak Kelapa / Coconut Oil', 'Prepare :\n1. pok coy, potong pangkal, uraikan lalu cuci bersih\n2. jamur shimeji, potong akar, uraikan\n3. bawang putih, cincang halus\n4. jahe, kupas cincang halus\n5. biji wijen, sangrai sampai kecoklatan \n\nStep :\n1. siapkan wajan, panaskan minyak kelapa\n2. setelah panas, tumis bahan : \n- bawang putih\n- jahe\n- jamur shimeji, aduk rata\n3. setelah tercampur rata, masukan pok coy, masak -+ 2 menit (sampai agak layu)\n4. setelah agak layu, masukan bahan : \n- Pura Sea Salt\n- Pura Anchovy Powder \n- minyak wijen\n- air, masak sampai air agak mengering\n5. setelah matang, angkat lalu tuang ke dalam piring\n6. sajikan dengan taburan biji wijen yang', 1, 1, 1, 1, 1, '2021-11-27 09:20:08', '2021-11-27 09:20:08'),
(13, 13, 'Resep masakan sehat untuk vegetarian bebas gluten', 'lime-avocado-pie.jpg', 90, 8, 245, 'Kulit Pie : \n75 gram Tepung Almond / Almond Flour \n50 gram Kacang Mente / Cashewnut sangrai api kecil sampai coklat \n30 gram Tepung Kelapa / Coconut Flour \n50 gram Maple Syrup \n1 sdm Minyak Kelapa / Coconut Oil \n1/4 sdt PURA Himalayan Salt by @puraindonesia \nLime Avocado Filling : \n200 gram Alpukat / Avocado kupas, ambil dagingnya, potong kotak \n50 ml Minyak Kelapa / Coconut Oil Extra Virgin \n1 sdt Jeruk Nipis / Lime juice \n1 buah Jeruk Nipis / Lime zest \n50 ml Susu Almond / Almond Milk \n30 gram Maple Syrup', 'Prepare :\n1. kacang mente, sangrai api kecil sampai coklat\n2. jeruk nipis peras airnya\n\nStep :\n[Kulit Pie]\n1. siapkan food processor, masukan bahan :\n- tepung almond\n- kacang mente\n- tepung kelapa\n- maple syrup\n- minyak kelapa\n- pura himalayan salt, haluskan\n2. siapkan loyang bulat, masukan campuran kulit pie\n3. ratakan lalu tekan-tekan dengan benda datar\n4. simpan kulit pie di freezer, lalu lanjut proses bahan filling\n\n[Filling]\n5. siapkan blender, masukan bahan :\n- alpukat\n- minyak kelapa\n- juice jeruk nipis\n- susu almond\n- maple syrup, blender sampai halus\n6. keluarkan kulit pie dari kulkas, tuang bahan filling kedalam kulit pie\n7. hentakan lalu ratakan 8. simpan dalam freezer sampai agak mengeras (minimal 1 jam)\n9. setelah mengeras, keluarkan.\n10. beri taburan kulit jeruk nipis, potong jadi 8, sajikan', 1, 1, 1, 1, 1, '2021-11-27 09:22:47', '2021-11-27 09:22:47'),
(14, 14, 'Resep makanan dengan bahan ayam dan bumbu garlic', 'crispy-garlic-wings.jpg', 50, 4, 421, '10 pcs Sayap Ayam / Chicken Wings potong jadi 2 \n5 siung Bawang Putih / Garlic cincang halus \n1/2 sdt PURA Sea Salt by @puraindonesia \n1 sdt PURA Seasoning Chicken by @puraindonesia\n2 sdt Bawang Putih Bubuk / Garlic Powder \n1 sdt Kecap Asin / Soy Sauce \n1 sdt Minyak Wijen / Sesame Oil \n2 sdm Tepung Maizena / Cornstarch \n100 gram Tepung terigu / Wheat Flour\n200 gram PURA Tomato Sauce untuk saus cocolan', 'Prepare :\n1. sayap ayam, potong jadi 2\n2. bawang putih, cincang halus\n3. siapkan airfryer, pre-heat 160*c \n\nStep :\n1. siapkan mangkuk, campur bahan : \n- sayap ayam\n- bawang putih\n- Pura Sea Salt\n- pura seasoning chicken\n- bawang putih bubuk\n- kecap asin\n- minyak wijen\n- tepung maizena, aduk rata. marinasi simpan dalam kulkas 15 menit\n2. setelah 15 menit, keluarkan dari kulkas\n3. siapkan tepung terigu, balur sayap ayam dengan tepung\n4. masukan sayap ayam ke dalam keranjang airfryer\n5. goreng dengan airfryer dengan suhu 160*c selama 15 menit\n6. setelah 15menit, balik ayam, goreng lagi 10 menit\n7. setelah matang, keluarkan 8. sajikan dengan Pura Homemade Tomato Sauce', 1, 1, 1, 1, 1, '2021-11-27 09:24:55', '2021-11-27 09:24:55'),
(15, 15, 'Resep soup lezat rendah kalori', 'egg-drop-soup.jpg', 30, 4, 120, '1/2 sdt PURA Himalayan Salt by @puraindonesia\n1 sdm PURA Seasoning Chicken by @puraindonesia\n1/2 sdt PURA Anchovy Powder by @puraindonesia\n100 gram Rebung / Bamboo Shoot iris tipis\n2 buah Jamur Shiitake / Shiitake Mushroom rendam, iris tipis\n100 gram Tahu / Tofu potong kotak\n1 butir Putih Telur / Egg White\n2 siung Bawang Putih / Garlic cincang halus\n2 gram Jahe / Ginger cincang halus\n700 ml Air / Water\n3 sdm Gula Kelapa / Coconut Sugar\n1 sdt Minyak Wijen / Sesame Oil\n3 sdm Tepung Maizena / Cornstarch campur dengan 2sdm air\n5 gram Daun Ketumbar / Coriander Leaf untuk taburan', 'Prepare :\n1. rebung, rebus matang, iris tipis memanjang\n2. jamur shiitake, iris tipis memanjang\n3. tahu, iris tipis agak lebar\n4. bawang putih, cincang halus\n5. jahe, cincang halus\n6. daun ketumbar, petik daun\n7. telur, pisahkan putihnya\n8. tepung maizena, campur dengan 2sdm air\n​\nStep :\n1. siapkan panci, rebus air sampai mendidih\n2. setelah mendidih, masuakan bahan :\n- bawang putih\n- jahe\n- rebung\n- jamur shiitake\n- pura himalayan salt\n- pura seasoning chicken\n- pura anchovy powder - gula kelapa, aduk rata. simmer 15 menit\n3. setelah 15 menit dan kuah mendidih, masukan maizena, aduk sampai mengental\n4. setelah mengental, masukan putih telur sambil diaduk\n5. setelah putih telur jadi, masukan minyak wijen, aduk rata lalu angkat\n6. tuang ke dalam mangkuk, sajikan dengan taburan daun ketumbar', 1, 1, 1, 1, 1, '2021-11-27 09:28:25', '2021-11-27 09:28:25'),
(16, 16, 'Resep bakso daging sapi sehat', 'bakso-sapi.jpg', 60, 4, 331, 'Bahan : \n200 gram Bihun / Vermicelli \n\nAdonan Bakso:\n300 gram Daging sapi giling / Ground Beef tanpa lemak \n1 sdm Bawang Merah Goreng / Fried Shallot \n1 sdm Bawang Putih Goreng / Fried Garlic \n1/2 sdt PURA Sea Salt by @puraindonesia\n1 sdt PURA Seasoning Beef by @puraindonesia\n1 sdt Gula Kelapa / Coconut Sugar \n1/4 sdt Lada Putih / White Pepper \n70 gram Tepung Tapioka / Tapioca Flour \n20 gram Putih Telur / Egg White \n100 gram Es Batu / Ice Cube hancurkan, bagi 2 (50gr - 50gr) \n\nKuah Kaldu\n1.000 ml Air / Water \n1 sdt PURA Sea Salt by @puraindonesia \n1 sdm PURA Seasoning Beef by @puraindonesia\n5 siung Bawang Putih / Garlic kupas, geprek \n1/2 buah Bawang Bombay / Onion kupas, biarkan utuh \n1/2 buah Wortel / Carrot kupas, potong kasar \n30 gram Daun Bawang / Spring Onion ikat', 'PREPARE :\n1. telur, pisahkan putihnya\n2. es batu, hancurkan kasar\n3. bawang putih, geprek\n4. wortel, kupas potong kasar\n5. daun bawang : \n- 20gr utuh lalu ikat\n- 10gr iris tipis untuk taburan\n6. rebus air sampai mendidih (untuk merebus baso)\n7. bihun, rebus sampai matang -+ 4-5 menit \n\nSTEP :\n1. [Kuah Kaldu]\nsiapkan panci, masukan bahan :\n- air (1000 ml)\n- wortel\n- bawang putih\n- daun bawang\n- bawang bombay\n- Pura Sea Salt\n- Pura Seasoning Beef. masak api kecil (simmer) -+ 30 menit.\n2. [Baso]\nsiapkan food processor, masukan bahan :\n- daging sapi giling\n- bawang putih goreng\n- bawang merah goreng\n- Pura Sea Salt\n- Pura Seasoning Beef\n- gula kelapa \n- lada putih\n- es batu (50gr) blender sampai tercampur rata\n3. setelah itu, masukan bahan :\n- tepung tapioka\n- es batu\n- putih telur, blender lagi hingga tercampur rata dan halus.\n4. setelah halus, pindahkan adonan ke mangkuk\n5. siapkan air yang mendidih tadi, matikan api\n6. siapkan adonan bakso, bentuk bulat dengan tangan\n7. setelah bentuk bulat, ambil dengan sendok basah agar tidak lengket\n8. masukan bakso kedalam air panas, lanjutkan sampai adonan habis\n9. setelah adonan habis, simmer sampai bakso mengapung\n10. siapkan mangkuk saji, tata bahan : \n- bihun\n- bakso\n- kuah kaldu\n- taburan daun bawang, sajikan', 1, 1, 1, 1, 1, '2021-11-27 09:31:35', '2021-11-27 09:31:35'),
(17, 17, 'Resep buatan rumah kimchi khas Korea', 'kimchi.jpg', 2880, 12, 76, 'Bahan : \n60 gram PURA  Sea Salt by @puraindonesia\n1,5 kg Sawi Putih / Nappa Cabbage \n200 gram Lobak / Radish kupas, potong katik \n200 gram Wortel / Carrot kupas, potong katik \n30 gram Daun Bawang / Spring Onion potong 4cm\n\nSeasoning & Spices : \n2 sdt PURA Anchovy Powder by @puraindonesia\n50 gram Gochugaru / Korean Chili Pepper Flake \n15 siung Bawang Putih / Garlic kupas \n1 buah Bawang Bombay / Onion kupas, potong kasar \n15 gram Jahe / Ginger kupas, potong kasar\n\nPorridge Mixture : \n20 gram Tepung Ketan / Glutinous Rice Flour \n400 ml Air / Water \n50 gram Gula Kelapa / Coconut Sugar', 'Prepare :\n1. siapkan kotak kedap udara ukuran 3 Liter atau lebih\n2. sawi putih, belah 4, bilas\n3. lobak, kupas iris tipis katik\n4. wortel, kupas, iris tipis katik\n5. daun bawang, potong 4cm\n6. bawang putih, kupas\n7. bawang putih, potong kasar\n8. jahe, kupas\n​\nStep :\n1. siapkan sawi putih, lumuri merata dengan pura himalayan salt\n2. letakan di wadah, diamkan 90 menit hingga mengeluarkan air *balik sawi setiap 30 menit.\n3. [campuran bubur]\nsiapkan panci, masukan bahan:\n- tepung ketan\n- air\n- gula kelapa, aduk rata. masak dengan api kecil hingga mendidh. dinginkan\n4. siapkan food processor, haluskan bahan:\n- bawang putih\n- bawang bombay\n- jahe. setelah halus, sisihkan untuk nanti\n5. setelah 90 menit sawi putih direndam, bilas dengan air matang, tiriskan\n6. siapkan mangkuk besar, masukan bahan:\n- bawang putih, bombay dan jahe yang sudah dihaluskan\n- campuran bubur\n- pura anchovy powder\n- gochugaru\n- lobak\n- wortel\n- daun bawang, aduk rata.\n7. lumuri sawi putih dengan bumbu rendaman secara merata, lembar demi lembar\n8. setelah terlumuri, letakan di wadah kedap udara, tekan agar padat.\n9. tutup kotak. simpan di suhu ruangan selama 2 hari', 1, 1, 1, 1, 1, '2021-11-27 09:35:00', '2021-11-27 09:35:00'),
(18, 18, 'Resep Cream Cheese Garlic Bread Korea Sehat', 'korean-cream-cheese-garlic-bread.jpg', 160, 4, 355, 'Bahan : \nRolled Bread : \n1/4 sdt PURA Sea Salt by @puraindonesia\n25 gram Gula Kelapa / Coconut Sugar \n50 gram Susu / Milk suam suam kuku \n5 gram Ragi Instan / Yeast \n1/2 butir Telur / Egg \n10 gram Butter soft \n125 gram Tepung terigu / Wheat Flour (High Protein Flour) \n\nCream Cheese Filling : \n100 gram Krim Keju / Cream Cheese soft \n1 sdm Gula Kelapa / Coconut Sugar \n15 gram Susu / Milk \n\nGarlic Butter : \n1/2 butir Telur / Egg \n30 gram Butter melted \n5 siung Bawang Putih / Garlic cincang halus \n1 sdm Petersely / Parsley (kering) \n25 ml Susu / Milk \n1 sdm Gula Kelapa / Coconut Sugar \n1/4 sdt Pura Himalayan Salt', 'Prepare :\n1. pre-heat oven 180*c (minimal 15 menit sebelum memanggang)\n2. siapkan loyan dan lapisi dengan parchment paper\n3. telur, kocok lali bagi dua (1/2 untuk adonan 1/2 untuk garlic butter)\n4. krim keju, lembutkan di suhu ruangan\n5. butter untuk adonan roti, lembutkan di suhu ruangan\n6. butter untuk garlic butter, lelehkan\n7. bawang putih, cincang halus \n\nStep :\n1. [adonan roti]\nsiapkan mangkuk, campur bahan :\n- susu\n- gula kelapa\n- ragi, aduk rata.\n2. setelah tercampur rata, masukan bahan :\n- telur\n- tepung terigu\n- pura himalayan salt, aduk rata. lalu uleni hingga menjadi adonan\n3. setelah menjadi adonan, pipihkan sedikit lalu masukan butter, uleni lagi hingga kalis\n4. setelah kalis, bulatkan dan simpan dalam mangkuk, tutupi dengan kain (proofing 1 jam)\n5. [cream cheese] selagi menunggu adonan roti, aduk krim keju hingga lembut\n6. setelah lembut, masukan bahan :\n- gula kelapa\n- susu, aduk rata. lalu masukan ke dalam piping bag. simpan dalam lemari pendingin\n\n7. [garlic butter]\nsiapkan mangkuk, campur bahan :\n- telur\n- butter (melted)\n- bawang putih\n- parsley kering\n- susu\n- gula kelapa\n- Pura Sea Salt, aduk rata\n8. setelah 1 jam, bagi adonan jadi 4. bulatkan lalu tata diloyang \n9. istirahatkan kembali selama 30 menit.\n10. setelah 30 menit, bake roti dengan suhu 180*c selama 20-25 menit. \n11. setelah roti matang, keluarkan dan dinginkan 10 menit \n12. setelah roti dingin, belah roti menjadi 6 (tidak sampai putus) \n13. isi selah selah roti dengan campuran cream cheese.\n14. oleskan roti dengan campuran garlic butter secara merata\n15. bake kembali roti dengan suhu 180*c selama 10 menit.\n16. setelah matang, keluarkan dan sajikan', 1, 1, 1, 1, 1, '2021-11-27 09:37:22', '2021-11-27 09:37:22');

-- --------------------------------------------------------

--
-- Table structure for table `recipe_favorites`
--

DROP TABLE IF EXISTS `recipe_favorites`;
CREATE TABLE IF NOT EXISTS `recipe_favorites` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_user` bigint UNSIGNED NOT NULL,
  `id_recipe` bigint UNSIGNED NOT NULL,
  `time_show` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `recipe_favorites_id_user_foreign` (`id_user`),
  KEY `recipe_favorites_id_recipe_foreign` (`id_recipe`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `recipe_favorites`
--

INSERT INTO `recipe_favorites` (`id`, `id_user`, `id_recipe`, `time_show`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Pagi', '2021-11-27 10:24:32', '2021-11-27 10:24:32');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `check` tinyint(1) DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `check`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Calorilin', 'admin@admin.com', NULL, '$2y$10$vXNWGdLA8e.R2qQkF0ZJt.08VyW/4zO9DLYRTXmKrD2OTCA00uWeu', 1, NULL, '2021-11-12 08:57:27', '2021-11-12 08:57:27'),
(2, 'Fabyan Kindarya', 'fabyan@calorilin.com', NULL, '$2y$10$Q3fkKcLjsgqgNgiQyP3TaOxTcBiLOrM7hT/zhphsgLBSPZv0D7u2q', 0, NULL, '2021-12-02 04:51:37', '2021-12-02 04:51:37');

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

DROP TABLE IF EXISTS `user_details`;
CREATE TABLE IF NOT EXISTS `user_details` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_user` bigint UNSIGNED NOT NULL,
  `born_date` date DEFAULT NULL,
  `phone_number` varchar(13) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body_mass_index` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` double(8,2) DEFAULT NULL,
  `height` double(8,2) DEFAULT NULL,
  `tension` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cholesterol` tinyint(1) DEFAULT NULL,
  `diabetes` tinyint(1) DEFAULT NULL,
  `uric_acid` tinyint(1) DEFAULT NULL,
  `stomach_acid` tinyint(1) DEFAULT NULL,
  `hyper_tension` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_details_id_user_foreign` (`id_user`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`id`, `id_user`, `born_date`, `phone_number`, `image`, `body_mass_index`, `weight`, `height`, `tension`, `cholesterol`, `diabetes`, `uric_acid`, `stomach_acid`, `hyper_tension`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-12-12', '08xxx', 'calorilin.jpeg', 'Berat Badan Kurang', 55.00, 175.00, '130/85', 1, 1, 0, 1, 0, '2021-11-12 09:49:19', '2021-11-29 01:22:21'),
(2, 2, '2001-09-15', '085157766074', 'Foto Jas.jpg', 'Ideal', 60.00, 180.00, '130/85', 1, 0, 0, 0, 1, '2021-12-02 04:51:37', '2021-12-02 04:52:42');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
