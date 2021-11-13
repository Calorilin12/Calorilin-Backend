-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: Nov 13, 2021 at 02:06 PM
-- Server version: 8.0.21
-- PHP Version: 7.3.21

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
  `user_calory` double(8,2) NOT NULL,
  `reminder` date NOT NULL,
  `id_user` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `control_calories_id_user_foreign` (`id_user`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `serve` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fat` double(8,2) NOT NULL,
  `carbo` double(8,2) NOT NULL,
  `calory` double(8,2) NOT NULL,
  `protein` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `food_materials`
--

INSERT INTO `food_materials` (`id`, `name`, `serve`, `image`, `fat`, `carbo`, `calory`, `protein`, `created_at`, `updated_at`) VALUES
(2, 'Telur ceplok', '1 butir', 'egg.png', 28.50, 1.20, 480.00, 6.50, '2021-11-13 06:28:53', '2021-11-13 06:28:53');

-- --------------------------------------------------------

--
-- Table structure for table `food_material_favorites`
--

DROP TABLE IF EXISTS `food_material_favorites`;
CREATE TABLE IF NOT EXISTS `food_material_favorites` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_user` bigint UNSIGNED NOT NULL,
  `id_food_material` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `food_material_favorites_id_user_foreign` (`id_user`),
  KEY `food_material_favorites_id_food_material_foreign` (`id_food_material`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
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
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\User', 1, 'Login Token', '602619b4fa4fd9f2330e0078b2bfd5d8031e7c593ad8e583a3b134f235914578', '[\"*\"]', '2021-11-13 07:00:51', '2021-11-12 20:29:01', '2021-11-13 07:00:51'),
(2, 'App\\User', 2, 'Register Token', '95cc4db4acccc3f1495cffc94f1b6cb5fad5eace400dc23edb686cb1ae1ebeca', '[\"*\"]', NULL, '2021-11-12 22:22:51', '2021-11-12 22:22:51'),
(3, 'App\\User', 3, 'Register Token', 'e55363915b041ee5ff6973ccef42e6a6c971ec2e9ba2a27f6113f7194a4c1b16', '[\"*\"]', NULL, '2021-11-12 22:38:20', '2021-11-12 22:38:20'),
(4, 'App\\User', 4, 'Register Token', 'f0acbbfd3668b2cc02f93a16258d770c0e22e75feb2b8149d3005dcc508176cf', '[\"*\"]', NULL, '2021-11-12 23:36:41', '2021-11-12 23:36:41'),
(5, 'App\\User', 1, 'Login Token', 'b3e877e8900c108772ea27612832f675e57ac0a93702b2ea6a1ab77879444bb7', '[\"*\"]', '2021-11-13 06:43:12', '2021-11-13 06:32:54', '2021-11-13 06:43:12'),
(6, 'App\\User', 1, 'Login Token', 'c5937b3993de9069b29fed256f37985672ec07fc6cd6ddcafbca74e70d1783af', '[\"*\"]', NULL, '2021-11-13 06:44:13', '2021-11-13 06:44:13'),
(7, 'App\\User', 4, 'Login Token', '153a7aaf0e0145a7a21663e7b627faba466b0eb3e022f65665ca9fb6ec44b695', '[\"*\"]', NULL, '2021-11-13 06:47:10', '2021-11-13 06:47:10'),
(8, 'App\\User', 4, 'Login Token', '39c34ccfc742707cdb06316b43d9776527dfbe8500d242eddf2d58cd11a3e784', '[\"*\"]', NULL, '2021-11-13 06:50:06', '2021-11-13 06:50:06'),
(9, 'App\\User', 4, 'Login Token', '71f84063cbb6cb1cde4ccf6b7a8e58dbd12c2009c6ed1da4a072f93a224d8cf5', '[\"*\"]', NULL, '2021-11-13 06:52:35', '2021-11-13 06:52:35'),
(10, 'App\\User', 1, 'Login Token', 'ad60e0897dc7c620d28f3527f7c0a2b8da8bf7e2d9693b88b557a50a3fc4e70d', '[\"*\"]', '2021-11-13 06:59:44', '2021-11-13 06:55:55', '2021-11-13 06:59:44'),
(11, 'App\\User', 1, 'Login Token', '1d84c56cd4fe48b33e652d8885dee33210ba204f4aa860a60f994a4559eecc6a', '[\"*\"]', '2021-11-13 07:03:54', '2021-11-13 06:59:57', '2021-11-13 07:03:54');

-- --------------------------------------------------------

--
-- Table structure for table `recipes`
--

DROP TABLE IF EXISTS `recipes`;
CREATE TABLE IF NOT EXISTS `recipes` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `made_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level_of_difficult` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publish_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `recipes`
--

INSERT INTO `recipes` (`id`, `name`, `made_by`, `level_of_difficult`, `publish_date`, `created_at`, `updated_at`) VALUES
(2, 'Pudding Jeruk dengan Topping Buah', 'Pura Kitchen', 'Mudah', '2021-05-20', '2021-11-13 03:02:35', '2021-11-13 03:02:35');

-- --------------------------------------------------------

--
-- Table structure for table `recipe_details`
--

DROP TABLE IF EXISTS `recipe_details`;
CREATE TABLE IF NOT EXISTS `recipe_details` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_recipe` bigint UNSIGNED NOT NULL,
  `recipe_image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `duration` int NOT NULL,
  `total_eater` int NOT NULL,
  `total_calory` int NOT NULL,
  `compositions` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `steps_of_make` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `cholesterol` tinyint(1) NOT NULL,
  `diabetes` tinyint(1) NOT NULL,
  `uric_acid` tinyint(1) NOT NULL,
  `stomach_acid` tinyint(1) NOT NULL,
  `hyper_tension` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `recipe_details_id_recipe_foreign` (`id_recipe`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `recipe_details`
--

INSERT INTO `recipe_details` (`id`, `id_recipe`, `recipe_image`, `duration`, `total_eater`, `total_calory`, `compositions`, `steps_of_make`, `cholesterol`, `diabetes`, `uric_acid`, `stomach_acid`, `hyper_tension`, `created_at`, `updated_at`) VALUES
(2, 2, 'pudding-jeruk.jpg', 30, 2, 80, '5 buah jeruk sunkist\n200ml perasan jeruk sunkist\n1 bungkus besar nutrijel rasa jeruk\n500ml air\n100 gram gula', 'Siapkan semua bahan. Isi jeruk diperas, ambil sarinya 200ml\nMasak air lalu masukkan agar - agar dan gula sambil diaduk hingga mendidih. Gunakan api kecil\nMatikan api kompor. Sesaat sebelum diangkat tuang air perasan jeruk  lalu diaduk\nMasukkan kedalam cetakan lalu  letakkan potongan jeruk dan diamkan hingga set. Simpan dalam kulkas agar lebih segar.\nPudding jeruk siap disajikan.', 0, 0, 0, 0, 0, '2021-11-13 03:02:35', '2021-11-13 03:02:35');

-- --------------------------------------------------------

--
-- Table structure for table `recipe_favorites`
--

DROP TABLE IF EXISTS `recipe_favorites`;
CREATE TABLE IF NOT EXISTS `recipe_favorites` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_user` bigint UNSIGNED NOT NULL,
  `id_recipe` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `recipe_favorites_id_user_foreign` (`id_user`),
  KEY `recipe_favorites_id_recipe_foreign` (`id_recipe`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `check`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Calorilin', 'admin@admin.com', NULL, '$2y$10$vXNWGdLA8e.R2qQkF0ZJt.08VyW/4zO9DLYRTXmKrD2OTCA00uWeu', 1, NULL, '2021-11-12 08:57:27', '2021-11-12 08:57:27'),
(4, 'Fabyan Kindarya', 'fabyan@calorilin.com', NULL, '$2y$10$VH3QXGn5zirM0vGbE7X.m.EJ7UFBuQLLjyAw3Hhl05ja0adlGNmb2', 0, NULL, '2021-11-12 23:36:41', '2021-11-12 23:36:41');

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

DROP TABLE IF EXISTS `user_details`;
CREATE TABLE IF NOT EXISTS `user_details` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_user` bigint UNSIGNED NOT NULL,
  `born_date` date DEFAULT NULL,
  `phone_number` int DEFAULT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` double(8,2) DEFAULT NULL,
  `height` double(8,2) DEFAULT NULL,
  `tension` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_details_id_user_foreign` (`id_user`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`id`, `id_user`, `born_date`, `phone_number`, `image`, `weight`, `height`, `tension`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-12-12', 820211212, '', 65.00, 175.00, '130/85', '2021-11-12 09:49:19', '2021-11-12 23:32:11'),
(4, 4, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-12 23:36:41', '2021-11-12 23:36:41');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
