-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 24, 2021 at 11:36 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

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

CREATE TABLE `control_calories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_calory` double(8,2) NOT NULL,
  `reminder` date NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `food_materials`
--

CREATE TABLE `food_materials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `serve` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fat` double(8,2) NOT NULL,
  `carbo` double(8,2) NOT NULL,
  `calory` double(8,2) NOT NULL,
  `protein` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `food_materials`
--

INSERT INTO `food_materials` (`id`, `name`, `serve`, `type`, `image`, `fat`, `carbo`, `calory`, `protein`, `created_at`, `updated_at`) VALUES
(2, 'Telur Ceplok', '1 Butir', 'Telur Ayam', 'egg-ceplok.jpg', 28.50, 1.20, 480.00, 6.50, '2021-11-13 06:28:53', '2021-11-24 10:35:39'),
(8, 'Susu', '100 gram', NULL, 'susu.png', 1.00, 0.00, 42.00, 3.40, '2021-11-15 00:16:56', '2021-11-15 00:16:56');

-- --------------------------------------------------------

--
-- Table structure for table `food_material_favorites`
--

CREATE TABLE `food_material_favorites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `id_food_material` bigint(20) UNSIGNED NOT NULL,
  `time_show` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `food_material_favorites`
--

INSERT INTO `food_material_favorites` (`id`, `id_user`, `id_food_material`, `time_show`, `created_at`, `updated_at`) VALUES
(3, 8, 2, 'Pagi', '2021-11-14 21:22:01', '2021-11-14 21:22:01');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\User', 1, 'Login Token', '602619b4fa4fd9f2330e0078b2bfd5d8031e7c593ad8e583a3b134f235914578', '[\"*\"]', '2021-11-24 10:35:59', '2021-11-12 20:29:01', '2021-11-24 10:35:59'),
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
(144, 'App\\User', 1, 'Login Token', 'fa25d28e3364c01e9a0e72610104c816d20b8d17e6852c155ba0a892c491cddc', '[\"*\"]', '2021-11-24 10:03:48', '2021-11-24 10:02:48', '2021-11-24 10:03:48');

-- --------------------------------------------------------

--
-- Table structure for table `recipes`
--

CREATE TABLE `recipes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `made_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level_of_difficult` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publish_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `recipes`
--

INSERT INTO `recipes` (`id`, `name`, `made_by`, `level_of_difficult`, `publish_date`, `created_at`, `updated_at`) VALUES
(25, 'Pempek Ikan + Kuah Cuko', 'Pura Kitchen', 'Sedang', '2021-03-27', '2021-11-19 14:47:04', '2021-11-19 14:47:04'),
(3, 'Stir Fry Chicken Noodles Spesial', 'Pura Kitchen Bali', 'Sedang', '2019-01-31', '2021-11-14 01:44:48', '2021-11-22 15:54:51'),
(4, 'Steamed Fish', 'Pura Kitchen', 'Mudah', '2019-02-01', '2021-11-14 01:47:18', '2021-11-23 01:04:45'),
(5, 'Shrimp Dumpling', 'Pura Kitchen', 'Sulit', '2019-02-02', '2021-11-14 01:49:33', '2021-11-14 01:49:33'),
(6, 'Prawn & Chicken Siomai', 'Pura Kitchen', 'Sedang', '2019-02-04', '2021-11-14 01:54:13', '2021-11-14 01:54:13'),
(7, 'Honey BBQ Chicken', 'Pura Kitchen', 'Sedang', '2019-02-05', '2021-11-14 01:56:19', '2021-11-14 01:56:19'),
(8, 'Vegetables Spring Roll', 'Pura Kitchen', 'Mudah', '2019-02-06', '2021-11-14 01:58:46', '2021-11-14 01:58:46'),
(9, 'Rawon Daging Sapi', 'Pura Kitchen', 'Mudah', '2019-02-08', '2021-11-14 02:05:08', '2021-11-14 02:05:08'),
(10, 'Udang Saus Padang', 'Pura Kitchen', 'Sulit', '2019-02-08', '2021-11-14 02:09:07', '2021-11-14 02:09:07'),
(11, 'Sayur Asem khas Nusantara', 'Pura Kitchen', 'Sedang', '2019-02-09', '2021-11-14 02:12:15', '2021-11-14 02:12:15'),
(13, 'Ayam Goreng Bumbu Kuning - Tanpa Santan', 'Pura Kitchen', 'Sulit', '2019-02-11', '2021-11-14 08:26:59', '2021-11-14 08:26:59'),
(14, 'Tumis Buncis Tempe', 'Pura Kitchen', 'Mudah', '2019-02-12', '2021-11-14 08:29:57', '2021-11-14 08:29:57'),
(15, 'Nasi Goreng Hong Kong', 'Pura Kitchen', 'Mudah', '2019-02-13', '2021-11-14 08:32:36', '2021-11-14 08:32:36'),
(16, 'Miso Soup', 'Pura Kitchen', 'Sedang', '2019-02-14', '2021-11-14 08:36:53', '2021-11-14 08:36:53'),
(17, 'Chicken Kaarage', 'Pura Kitchen', 'Sedang', '2019-02-15', '2021-11-16 02:03:20', '2021-11-16 02:03:20'),
(18, 'Bakso Sehat Daging Sapi', 'Pura Kitchen', 'Sulit', '2019-03-17', '2021-11-17 11:07:48', '2021-11-17 11:07:48'),
(19, 'Egg Drop Soup with Bamboo Shoot and Mushroom', 'Pura Kitchen', 'Sedang', '2020-09-11', '2021-11-17 11:13:25', '2021-11-17 11:13:25'),
(20, 'Caesar Salad', 'Pura Kitchen', 'Sedang', '2020-11-07', '2021-11-17 11:17:41', '2021-11-17 11:17:41'),
(21, 'LowCarbs EggPlant Lasagna', 'Pura Kitchen', 'Sedang', '2021-01-15', '2021-11-17 11:23:32', '2021-11-17 11:23:32'),
(22, 'Lodeh Salmon', 'Pura Kitchen', 'Sedang', '2021-01-15', '2021-11-17 11:27:37', '2021-11-17 11:27:37'),
(23, 'Spicy Bulgogi Pasta', 'Pura Kitchen', 'Mudah', '2021-11-18', '2021-11-18 03:56:20', '2021-11-18 03:56:20'),
(30, 'Kue Sus Spesial', 'Dapur Umami', 'Sedang', '2021-11-23', '2021-11-23 03:35:46', '2021-11-23 03:38:14'),
(29, 'Salmon & Brokoli Rebus Krim', 'Pura Kitchen', 'Sedang', '2021-07-18', '2021-11-22 03:41:51', '2021-11-22 03:41:51'),
(31, 'Bulgogi Pasta', 'Dapur Umami', 'Sedang', '2021-11-23', '2021-11-23 03:41:17', '2021-11-23 03:41:17'),
(32, 'Bulgogi Pasta Spesial', 'Pura Kitchen', 'Sedang', '2021-11-23', '2021-11-23 03:41:58', '2021-11-23 03:46:30');

-- --------------------------------------------------------

--
-- Table structure for table `recipe_details`
--

CREATE TABLE `recipe_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_recipe` bigint(20) UNSIGNED NOT NULL,
  `short_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recipe_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `duration` int(11) NOT NULL,
  `total_eater` int(11) NOT NULL,
  `total_calory` int(11) NOT NULL,
  `compositions` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `steps_of_make` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `cholesterol` tinyint(1) NOT NULL,
  `diabetes` tinyint(1) NOT NULL,
  `uric_acid` tinyint(1) NOT NULL,
  `stomach_acid` tinyint(1) NOT NULL,
  `hyper_tension` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `recipe_details`
--

INSERT INTO `recipe_details` (`id`, `id_recipe`, `short_description`, `recipe_image`, `duration`, `total_eater`, `total_calory`, `compositions`, `steps_of_make`, `cholesterol`, `diabetes`, `uric_acid`, `stomach_acid`, `hyper_tension`, `created_at`, `updated_at`) VALUES
(3, 3, NULL, 'bulgogi-pasta.PNG', 25, 2, 880, '400gr Mie Kuning / Egg Noodle\r\n1 tbsp Canola Oil\r\n2 siung Bawang Putih / Garlic\r\n2 butir Telur / Eggs\r\n50gr Daya Ayam / Chicken Breast\r\n50gr Bakso Sapi / Meatball\r\n50gr Udang / Shrimp\r\n50gr Pok Coy / Bhok Coy\r\n50gr Wortel / Carrot\r\n100ml Air / Water\r\n2 tsp PURA Himalayan Salt\r\n1gr Lada Purih / White Pepper\r\n2 tsp Gula Putih / White Sugar\r\n2 tsp PURA Chicken Extract\r\n2 tsp Kecap Ikan / Fish Sauce\r\n2 tsp Saus Tiram / Oyster Sauce\r\n2 tbsp Kecap Manis / Sweet Soy Sauce\r\n2 tsp Minyak Wijen / Sesame Oil', '1. panaskan minyak di wajan, masukan telur, aduk sebentar\r\n2. masukan bawang putih, baso sapi, ayam dan udang, aduk sampai warna daging berubah\r\n3. masukan pok coy dan wortel. aduk rata\r\n4. masukan air, pura himalayan salt, chicken extract, lada putih, gula, kecap ikan, saus tiram dan kecap manis, aduk rata\r\n5. masukan mie, aduk rata sampai air mengering lalu masukan minyak wijen', 1, 0, 0, 0, 0, '2021-11-14 01:44:48', '2021-11-22 15:54:51'),
(4, 4, 'Ikan dapat menyebabkan asam urat', 'steamed-fish.jpg', 20, 2, 80, '5 buah jeruk sunkist\n200ml perasan jeruk sunkist\n1 bungkus besar nutrijel rasa jeruk\n500ml air\n100 gram gula', 'Siapkan semua bahan. Isi jeruk diperas, ambil sarinya 200ml\nMasak air lalu masukkan agar - agar dan gula sambil diaduk hingga mendidih. Gunakan api kecil\nMatikan api kompor. Sesaat sebelum diangkat tuang air perasan jeruk  lalu diaduk\nMasukkan kedalam cetakan lalu  letakkan potongan jeruk dan diamkan hingga set. Simpan dalam kulkas agar lebih segar.\nPudding jeruk siap disajikan.', 0, 0, 1, 0, 0, '2021-11-14 01:47:18', '2021-11-23 01:04:45'),
(30, 30, NULL, 'bulgogi-pasta.PNG', 45, 10, 80, 'Tepung Terigu', 'Aduk bahan hingga merata', 1, 0, 0, 0, 0, '2021-11-23 03:35:46', '2021-11-23 03:38:14'),
(31, 31, NULL, 'bulgogi-pasta.PNG', 30, 2, 100, 'Mie', 'Rebus Mie', 1, 0, 0, 0, 0, '2021-11-23 03:41:17', '2021-11-23 03:41:17'),
(32, 32, NULL, 'bulgogi-pasta.PNG', 30, 2, 50, 'Mie', 'Rebus Mie', 0, 1, 1, 1, 1, '2021-11-23 03:41:58', '2021-11-24 10:03:44'),
(5, 5, NULL, 'shrimp-dumpling.jpg', 40, 2, 80, '10.0 lembar Kulit Pangsit / Wonton Skin\n1 lt Minyak Kanola / Canola Oil (untuk Menggoreng)\n250 gram Udang / Prawn Potong Kasar\n2 gram Daun Bawang / Spring Onion Iris tipis\n2 siung Bawang Putih / Garlic cincang halus\n2 sdm Tepung Tapioka / Tapioca Flour cincang halus\n1/2 sdt PURA Himalayan Salt\n1/2 sdt PURA Chicken Extract\n1 sdm Gula Putih / White Sugar\n1 sdm Minyak Wijen / Sesame Oil', '1. masukan udang kedalam mangkuk\n2. masukan bawang putih, daun bawang, tepung tapioka, pura himalayan salt, chicken extract, gula dan minyak wijen. aduk sampai tercampur rata\n3. bungkus udang dengan kulit pangsit sesuai instruksi *lihat video*\n4. panaskan minyak 5 menit, atur api sedang\n5. goreng pangsit udang dengan api sedang selama 5-7 menit atau sampai warna kulit berubah', 0, 0, 1, 0, 0, '2021-11-14 01:49:33', '2021-11-14 01:49:33'),
(6, 6, NULL, 'Chicken-Siomai.jpg', 45, 2, 80, '15 lembar Kulit Pangsit / Wonton Skin\n50 gram Wortel / Carrot cincang halus\n300 gram Ayam Paha / Chicken Thigh Giling Halus\n150 gram Udang / Prawn potong kecil kasar\n2 sdm Tepung Tapioka / Tapioca Flour\nDaun Bawang / Spring Onion iris tipis\n2.0 sdt PURA Himalayan Salt\n2.0 sdt PURA Chicken Extract\n2.0 sdm Gula Putih / White Sugar\n1.0 sdm Minyak Wijen / Sesame Oil', '1. campur ayam, udang dan daun bawang kedalam mangkuk\n2. masukan pura himalayan salt, chicken extract, gula, minyak wijen dan tepung tapioka. aduk sampai tercampurn rata\n3. tutup mangkuk dengan plastic wrap, simpan di dalam kulkas selama 10-15 menit sampai campuran daging agak mengeras agar lebih mudah dibentuk.\n4. siapkan kulit pangsing, dan bentuk campuran daging dengan kulit pangsit\n5. oleskan minyak di dasar besek bambu, lalu susun siumay yg sudah dibentuk. taburi cincangan wortel di atas siumay\n6. kukus siumay selama 7-10 menit. angkat dan sajikan\"', 0, 0, 0, 0, 0, '2021-11-14 01:54:13', '2021-11-14 01:54:13'),
(7, 7, NULL, 'honey-bbq-chicken.jpg', 50, 2, 282, '500gr Paha Ayam tanpa tulang\n100gr Pok Coy 1 lembar jadi 2\n6 tbsp Madu\n3 tbsp Gula\n1 tsp PURA Himalayan Salt\n1 tsp PURA Chicken Extract\n1 tsp Saus Tiram\n1/2 tsp Ngoh Yong\n1 tbsp Kecap Asin\n1 tsp Kecap hitam\n2 tbsp Tahu Merah\n1 tbsp Air Tahu Merah\n1 tbsp Hoisin', '1. masukan ayam kedalam mangkuk\n2. masukan madu, gula, pura himalayan salt, pura chicken extract, saus tiram, gohiong, kecap asin, kecap hitam, tahu merah, cairan tahu merah dan hoisin kedalam mangkuk.\n3. tutup mangkuk dengan plastik wrap, simpan didalam kulkas minimal 3 - 6 jam\n4. panaskan oven dengan suhu 150*c\n5. tata ayam di loyang dengan baking/cooling rack. simpan bahan marinasi untuk olesan\n6. oven ayam selama 40 menit, 20 menit setiap sisi\n7. oleskan bahan marinasi setiap 10 menit\n8. setelah matang, potong ayam sesuai selera dan sajikan dengan sayur pok coy', 0, 0, 0, 1, 0, '2021-11-14 01:56:19', '2021-11-14 01:56:19'),
(8, 8, NULL, 'vegetable-spring-rolls.jpg', 50, 2, 95, '20 pcs Kulit Lumpia\n1 tbsp Minyak Kanola\n2 cloves Bawang Putih\n200gr Rebung\n150gr Wortel\n100gr Tauge kacang hijau\n350gr Kubis\n30gr Daun Bawang\n2 tsp PURA Himalayan Salt\n1 tsp PURA Chicken Extract (optional for vegan)\n1gr Lada Putih\n2 tsp Gula Putih\n1 tsp Saus Tiram\n1 tsp Kecap Ikan\n1 tsp Minyak Wijen\nPerekat Kulit\n3 tbsp Tepung terigu\n1 tbsp Air', '1. panaskan minyak, tumis bawng putih sampai harum\n2. masukan rebung, wortel, tauge, kubis dan daun bawang, aduk rata\n3. masukan pura himalayan salt, chicken extract, lada putih, gula, saus tiram kecap ikan. aduk rata masak sampai tumisan mengering.\n4. tambahkan minyak wijen, aduk sebentar angkat dan dinginkan\n5. siapkan kulit lumpia, letakan tumis sayuran kedalam kulit lumpia, gulung\n6. goreng lumpia -+ 5 menit, sampai warna berubah kecoklatan, angkat tiriskan', 0, 0, 0, 0, 0, '2021-11-14 01:58:46', '2021-11-14 01:58:46'),
(9, 9, NULL, 'rawon-daging-sapi.jpg', 240, 4, 252, '250 gram Daging Sapi /.Beef potong dadu\n1.5 Lt. Air / Water Untuk merebus rawon\n2 lembar Daun Jeruk / Lime Leaf\n2 lembar Daun Salam / Indonesian Bay Leaf\n1 buah Sereh / Lemon Grass Geprek, ikat\n1 sdm Asam Jawa / Tamarind larutkan dengan air\n2 butir Kemiri / Candlenut\n1 sdt Ketumbar biji / Coriander Seed\n1 sdt Jinten / Cumin\n5 gram Kunyit / Turmeric kupas\n5 gram Lengkuas / Galangal kupas\n5 gram Kencur / kaempferia galanga kupas\n5 gram Jahe / Ginger kupas\n3 gram Terasi / Shrimp Cake\n4 siung Bawang Putih / Garlic kupas\n4 siung Bawang Merah / Shallot kupas\n8 buah Kluwak\n2 sdt Gula Putih / White Sugar\n2 sdt PURA Himalayan Salt\n1/2 sdt Lada Putih / White Pepper\n1 sdt PURA Beef Extract\n1 sdm Minyak Kanola / Canola Oil untuk menumis', '1. didihkan air, masak daging selama 10 menit sampai daging berubah warna. tiriskan dan buang airnya.\n2. tumis bumbu halus sampai harum\n3. masukan daging, daun jeruk, daun salam, sereh, dan asam jawa aduk rata. lalu masukan air dan kluwek aduk rata\n4. masukan gula, pura himalayan salt, lada putih, pura beef extract, aduk rata\n5. masak sampai daging empuk -+ 3-4 jam', 0, 0, 0, 0, 1, '2021-11-14 02:05:08', '2021-11-14 02:05:08'),
(10, 10, NULL, 'udang-saus-padang.jpg', 158, 4, 252, '1 sdm Canola Oil untuk menumis\n300 gram Udang / Prawn Butterfly\n50 gram Bawang Bombay / Onion iris tipis\n20 gram Bawang Pre / Leek iris tipis\n100 ml Air / Water\n1 sdm Jeruk Nipis / Lime peras juice\n4 siung Bawang Putih / Garlic haluskan dengan food processor\n4 siung Bawang Merah / Shallot haluskan dengan food processor\n5 buah Cabai merah / Red Chili haluskan dengan food processor\n5 gram Jahe / Ginger haluskan dengan food processor\n1 sdt PURA Himalayan Salt\n1/2 sdt Lada Putih / White Pepper\n1 sdt Gula Putih / White Sugar\n1 sdm Tepung Maizena / Cornstarch campurkan dengan air', '1. tumis bawang bombay dan bawang pre sampai harum\n2. masukan bumbu halus, tumis sampai harum\n3. masuykan air, aduk rata sampai tercampur rata\n4. masukan udang lalu pura himalayan salt, lada putih, gula dan perasasan jeruk nipis\n5. masak sampai udang matang.\n6. terakhir panaskan saus sampai mendidih lalu masukan tepung maizena, aduk rata sampai saus mengental.', 0, 0, 1, 0, 0, '2021-11-14 02:09:07', '2021-11-14 02:09:07'),
(11, 11, NULL, 'sayur-asem.jpg', 35, 4, 161, '1 sdm Minyak Kanola / Canola Oil untuk menumis\n1 Lt Air / Water untuk merebus\n100 gram Jagung Manis / Sweet Corn potong tebal\n100 gram Labu Siam / Chayote potong dadu\n100 gram Kacang Panjang / Yardlong Bean potong 3 cm\n50 gram Kacang tanah / Peanut\n20 gram Asam Jawa / Tamarind larutkan dengan air\n4 siung Bawang Putih / Garlic iris tipis\n4 siung Bawang Merah / Shallot iris tipis\n4 sdm Gula Putih / White Sugar\n2 sdt PURA Himalayan Salt\n1/2 sdt Lada Putih / White Pepper\n1 sdt PURA Chicken Extract', '1. tumis bawang merah dan putih sampai harum\n2. masukan air, masak sampai mendidih\n3. masukan jagung dan kacang terlebih dahulu, masak sampai mendidih\n4. setelah itu masukan kacang panjang dan labu siam.\n5. masukan gula, pura himalayan salt, lada putih, pura chicken extract dan asam jawa, aduk sampai tercampur rata\n6. masak -+ 10 menit sampai sayuran matang', 0, 0, 0, 0, 0, '2021-11-14 02:12:15', '2021-11-14 02:12:15'),
(13, 13, NULL, 'ayam-bumbu-kuning.jpg', 30, 4, 538, '1 buah Ayam / Chicken potong jadi 4 bagian\n1 sdm Minyak Kanola / Canola Oil untuk menumis\n1 lt  Minyak Kanola / Canola Oil untuk menggoreng\n1 lt Air / Water\n10 siung Bawang Putih / Garlic\n10 siung Bawang Merah / Shallot\n10 gram Kunyit / Turmeric\n1 sdt Ketumbar biji / Coriander Seed\n1 sdt Jinten / Cumin\n1 buah Sereh / Lemon Grass geprek lalu ikat\n1 lembar Daun Jeruk / Lime Leaf\n1 lembar Daun Salam / Indonesian Bay Leaf\n2 sdt PURA Himalayan Salt\n2 sdt PURA Chicken Extract\n2 sdt Gula Putih / White Sugar\n1 sdt Lada Putih / White Pepper', '1. tumis bumbu halus sampai harum\n2. masukan sereh, daun jeruk dan daun salam\n3. masukan air dan ayam, aduk sampai ayam terendam.\n4. masukan pura himalayan salt, chicken extract, gula dan lada putih.\n5. masak ayam -+ 30 menit, aduk berkala agar bumbu merata\n6. setelah 30 menit, angkat dan tiriskan ayam.\n7. panaskan minyak, lalu goreng ayam sampai warna berubah kecoklatan.\n8. sajikan dengan sambal bajak', 1, 0, 0, 1, 1, '2021-11-14 08:26:59', '2021-11-14 08:26:59'),
(14, 14, NULL, 'tumis-buncis-tempe.jpg', 20, 4, 302, '300 gram Buncis / Green Bean Potong 4 cm\n200 gram Tempe / Tempeh potong dadu\n1 buah Cabai merah / Red Chili iris tipis\n1 sdm Minyak Kanola / Canola Oil untuk menumis\n1 Lt Minyak Kanola / Canola Oil unutk menggoreng\n2 siung Bawang Putih / Garlic cincang halus\n2 siung Bawang Merah / Shallot cincang halus\n2 sdm Ebi kering / Dried Shrimp cincang halus\n1 sdm Kecap Manis / Sweet Soy Sauce\n1/2 sdt PURA Himalayan Salt\n1/2 sdt PURA Chicken Extract\n1 sdt Gula Putih / White Sugar\n1/2 sdt Lada Putih / White Pepper\n100 ml Air / Water', '1. panaskan wajan, tuang minyak\n2. tumis bawang merah, putih, ebi kering dan irisan cabai merah sampai harum\n3. masukan buncis dan tempe, aduk rata\n4. masukan air, kecap manis, pura himalayan salt, chicken extract gula dan lada putih, aduk rata. masak', 0, 0, 0, 0, 0, '2021-11-14 08:29:57', '2021-11-14 08:29:57'),
(15, 15, NULL, 'nasi-goreng-hong-kong.jpg', 20, 3, 390, '300gr Nasi dingin\n1 tsbp Canola Oil untuk menumis\n2 cloves Bawang Putih cincang halus\n1 pc Telur kocok\n30gr Dada Ayam potong dadu kecil\n30gr Udang potong dadu kecil\n10gr Wortel potong kecil, rebus\n10gr Jagung Manis rebus\n1 tsbp Daun Bawang iris tipis\n1 tsp PURA Himalayan Salt\n1 tsp PURA Chicken Extract\n1/2 tsp Lada Putih / White Pepper\n1 tbsp Mentega', '1. cincang halus bawang putih, iris tipis daun bawang\n2. potong wortel kotak kecil, kupas jagung manis, rebus 5 menit\n3. potong ayam dan udang\n4. panaskan wajan / teflon, tuang minyak\n5. kocok telur, masukan ke teflon aduk aduk sebentar lalu masukan bawang putih\n6. masukan ayam dan udang, aduk rata\n7. masukan nasi, aduk dan tekan dengan spatula sampai rata dan nasi terurai\n8. masukan wortel dan jagung\n9. masukan pura himalayan salt, chicken extract, lada putih, aduk rata\n10. masukan daun bawang dan mentega, aduk rata lalu sajikan', 0, 1, 0, 0, 0, '2021-11-14 08:32:36', '2021-11-14 08:32:36'),
(16, 16, NULL, 'miso-soup.jpg', 20, 8, 47, 'Dashi\n30 gr Ikan Cakalang Kering \n1 lt Air\n200gr Tahu Jepang\n4 tbsp Miso Paste\n1 tbsp Daun Bawang\n1 tsp PURA Himalayan Salt.', '1. panaskan dashi sampai mendidih\n2. masukan miso paste, aduk sampai larut\n3. masukan tahu jepang dan pura himalayan salt. cicipi untuk rasa\n4. taburin daun bawang, masak dengan api kecil selama 5 menit.\n5. sajikan', 0, 0, 0, 0, 1, '2021-11-14 08:36:53', '2021-11-14 08:36:53'),
(17, 17, NULL, 'karaage.jpg', 25, 5, 415, '300 gram Ayam Paha / Chicken Thigh potong kotak besar\n7 sdm Tepung Tapioka / Tapioca Flour\n1 Lt. Canola Oil untuk menggoreng\n2 siung Bawang Putih / Garlic Cincang Halus\n10 gram Jahe / Ginger Cincang Halus\n1/2 sdt PURA Himalayan Salt\n1/2 sdt PURA Chicken Extract\n2 sdt Gula Putih / White Sugar\n3 sdm Kecap Asin / Soy Sauce\n2 sdt Minyak Wijen / Sesame Oil\n4 sdm Tepung Tapioka / Tapioca Flour\n1 buah Lemon potong jadi 4 untuk garnish\n2 lembar Petersely / Parsley untuk garnish', '1. potong paha ayam ukuran bite size\n2. cincang halus jahe dan bawang putih\nSTEP :\n1. campur paha ayam, bawang putih dan jahe di dalam mangkuk\n2. masukan pura himalayan salt, chicken extract, gula putih, kecap asin, minyak wijen dan 4 sendok makan tepung tapioka. aduk sampai semua bahan tercampur rata, tutup dengan plastik wrap simpan di dalam kulkas selama 10 menit.\n3. panaskan minyak dengan api sedang selama 10 menit\n4. siapkan paha ayam yg sudah di bumbui. tabur dengan 7 sendok makan tepung tapioka aduk rata sampai permukaan paham ayam tidak terlalu basah\n5. masukan ayam kedalam minyak panas, goreng dengan api rendah-sedang selama 5-10 menit, atau sampai warna berubah kecoklatan. angkat dan tiriskan\n6. sajikan dengan potongan lemon dan daun parsley untuk hiasan', 1, 0, 0, 0, 0, '2021-11-16 02:03:20', '2021-11-16 02:03:20'),
(18, 18, NULL, 'bakso-sapi.jpg', 60, 4, 331, '200 gram Bihun / Vermicelli\n300 gram Daging sapi giling / Ground Beef tanpa lemak \n1 sdm Bawang Merah Goreng / Fried Shallot \n1 sdm Bawang Putih Goreng / Fried Garlic \n1/2 sdt PURA Sea Salt by @puraindonesia\n1 sdt PURA Seasoning Beef by @puraindonesia\n1 sdt Gula Kelapa / Coconut Sugar \n1/4 sdt Lada Putih / White Pepper \n70 gram Tepung Tapioka / Tapioca Flour \n20 gram Putih Telur / Egg White \n100 gram Es Batu / Ice Cube hancurkan, bagi 2 (50gr - 50gr)\n1.000 ml Air / Water \n1 sdt PURA Sea Salt by @puraindonesia \n1 sdm PURA Seasoning Beef by @puraindonesia\n5 siung Bawang Putih / Garlic kupas, geprek \n1/2 buah Bawang Bombay / Onion kupas, biarkan utuh \n1/2 buah Wortel / Carrot kupas, potong kasar \n30 gram Daun Bawang / Spring Onion ikat', '1. [Kuah Kaldu]\nsiapkan panci, masukan bahan :\n- air (1000 ml)\n- wortel\n- bawang putih\n- daun bawang\n- bawang bombay\n- Pura Sea Salt\n- Pura Seasoning Beef. masak api kecil (simmer) -+ 30 menit.\n2. [Baso]\nsiapkan food processor, masukan bahan :\n- daging sapi giling\n- bawang putih goreng\n- bawang merah goreng\n- Pura Sea Salt\n- Pura Seasoning Beef\n- gula kelapa \n- lada putih\n- es batu (50gr) blender sampai tercampur rata\n3. setelah itu, masukan bahan :\n- tepung tapioka\n- es batu\n- putih telur, blender lagi hingga tercampur rata dan halus.\n4. setelah halus, pindahkan adonan ke mangkuk\n5. siapkan air yang mendidih tadi, matikan api\n6. siapkan adonan bakso, bentuk bulat dengan tangan\n7. setelah bentuk bulat, ambil dengan sendok basah agar tidak lengket\n8. masukan bakso kedalam air panas, lanjutkan sampai adonan habis\n9. setelah adonan habis, simmer sampai bakso mengapung\n10. siapkan mangkuk saji, tata bahan : \n- bihun\n- bakso\n- kuah kaldu\n- taburan daun bawang, sajikan', 0, 0, 0, 0, 1, '2021-11-17 11:07:48', '2021-11-17 11:07:48'),
(19, 19, NULL, 'sup-rebung.jpg', 30, 4, 120, '1/2 sdt PURA Himalayan Salt by @puraindonesia\n1 sdm PURA Seasoning Chicken by @puraindonesia\n1/2 sdt PURA Anchovy Powder by @puraindonesia\n100 gram Rebung / Bamboo Shoot iris tipis\n2 buah Jamur Shiitake / Shiitake Mushroom rendam, iris tipis\n100 gram Tahu / Tofu potong kotak\n1 butir Putih Telur / Egg White\n2 siung Bawang Putih / Garlic cincang halus\n2 gram Jahe / Ginger cincang halus\n700 ml Air / Water\n3 sdm Gula Kelapa / Coconut Sugar\n1 sdt Minyak Wijen / Sesame Oil\n3 sdm Tepung Maizena / Cornstarch campur dengan 2sdm air\n5 gram Daun Ketumbar / Coriander Leaf untuk taburan', '1. siapkan panci, rebus air sampai mendidih\n2. setelah mendidih, masuakan bahan :\n- bawang putih\n- jahe\n- rebung\n- jamur shiitake\n- pura himalayan salt\n- pura seasoning chicken\n- pura anchovy powder - gula kelapa, aduk rata. simmer 15 menit\n3. setelah 15 menit dan kuah mendidih, masukan maizena, aduk sampai mengental\n4. setelah mengental, masukan putih telur sambil diaduk\n5. setelah putih telur jadi, masukan minyak wijen, aduk rata lalu angkat\n6. tuang ke dalam mangkuk, sajikan dengan taburan daun ketumbar', 0, 0, 0, 0, 0, '2021-11-17 11:13:25', '2021-11-17 11:13:25'),
(20, 20, NULL, 'caesar-salad.jpg', 25, 2, 284, '150 gram Selada Romaine / Romaine Lettuce potong kasar \n10 buah Cherry Tomato belah 2 \n2 sdm Keju Permesan / Parmesan Cheese 1 sdm/ porsi\n2 lembar Roti Gandum / Whole Wheat Bread potong kotak kecil \n1 sdm Butter \n5 gram Petersely / Parsley cincang halus\n100 gram Yogurt Plain \n1/2 sdt PURA Sea Salt by @puraindonesia \n1/2 sdt PURA Anchovy Powder by @puraindonesia \n1 siung Bawang Putih / Garlic cincang halus \n1 sdm Madu / Honey \n1 sdm Air Lemon / Lemon Juice', '[Croutons] :\n1. siapkan wajan, lelehkan butter\n2. setelah meleleh, masukan roti dan taburi dengan parsley, aduk rata\n3. masak dengan api kecil hingga kecoklatan dan kering, angkat sisihkan \n\n[Dressing]:\n4. siapkan mangkuk, campur bahan :\n- yogurt\n- Pura Himalayan Salt \n- Pura Anchovy Powder\n- bawang putih\n- madu\n- air lemon, aduk rata. sisihkan untuk nanti \n\n[Caesar Salad]\n5. siapkan mangkuk/piring besar, tata bahan :\n- selada romaine\n- cherry tomato\n- croutons\n- dressing\n- keju parmesan, aduk rata. sajikan', 0, 0, 0, 0, 0, '2021-11-17 11:17:41', '2021-11-17 11:17:41'),
(21, 21, NULL, 'Low-carb-Eggplant-Lasagna.jpg', 60, 6, 118, '2 buah Terong / Egg Plant iris tipis \n150 gram Keju Mozzarella / Mozzarella Cheese parut\n½ sdt PURA Himalayan Salt  \nby Pura Indonesia\n1 sdm PURA Seasoning Beef by Pura Indonesia\n200 gram Daging sapi giling / Ground Beef  \n3 siung Bawang Putih / Garlic cincang halus \n1 buah Bawang Bombay / Onion cincang halus \n4 buah Tomat / Tomato blender \n20 gram Seledri / Celery cincang halus \n1 buah Wortel / Carrot cincang halus \n¼  sdt Rosemary  \n¼  sdt Oregano  \n¼  sdt Thyme  \n2 lembar Bayleaf', '1. siapkan panci, panaskan minyak zaitun \n2. tumis daging giling sampai berubah warna \n3. masukan bahan : \n - bawang putih \n - bawang bombay \n - tomat \n - seledri \n - wortel, aduk rata \n4. masukan bahan : \n - rosemary \n - oregano \n - thyme \n - bayleaf \n - PURA Himalayan Salt \n - PURA Seasoning Beef, aduk rata \n5. masak (simmer) sampai air mengering. (aduk sesekali) \n6. tata bahan : \n - bolognese \n - mozzarella \n - terong \n - bolognese \n - mozzarella \n - terong \n - bolognese \n - taburi dengan daun seledri \n7. bake lasagna dengan suhu 190* selama 30 menit \n8. setelah matang, keluarkan. potong 6 potong. Sajikan', 0, 0, 0, 1, 0, '2021-11-17 11:23:32', '2021-11-17 11:23:32'),
(22, 22, NULL, 'salmon-lodeh.jpg', 30, 4, 288, '2 sdt PURA Fine Sea Salt by @puraindonesia \n1/2 sdt PURA Anchovy Powder  by @puraindonesia\n2 sdt PURA Seasoning Chicken  by @puraindonesia\n1 sdm Gula Kelapa / Coconut Sugar \n200 gram Ikan Salmon / Salmon Fish potong tipis memanjang \n​100 gram Tempe / Tempeh potong kotak \n100 gram Labu Siam / Chayote potong katik \n50 gram Kale / Kale buang batang, potong kasar \n400 ml Air / Water \n200 ml Santan / Coconut Milk (Fresh) \n1 sdm Minyak Kelapa / Coconut Oil \n2 lembar Daun Jeruk / Lime Leaf\n2 lembar Daun Salam / Indonesian Bay Leaf \n5 gram Lengkuas / Galangal kupas, geprek \n1 buah Sereh / Lemon Grass geprek, ikat simpul \n5 gram Kunyit / Turmeric \n6 siung Bawang Merah / Shallot \n4 siung Bawang Putih / Garlic \n2 butir Kemiri / Candlenut \n2 buah Cabai merah / Red Chili \n50 ml Air / Water Untuk Blender', '1. siapkan blender, haluskan bahan : \n- kunyit \n- bawang merah \n- bawang putih \n- kemiri \n- cabai merah \n- air. \n2. bumbui salmon dengan pura fine sea salt dan lada hitam \n3. siapkan wajan, panaskan minyak kelapa lalu pan fry salmon hingga matang lalu angkat \n4. dengan wajan yang sama, tumis bahan : \n- bumbu halus \n- daun jeruk \n- daun salam \n- lengkuas \n- sereh, aduk rata. masak hingga harum \n5. setelah harum, masukan bahan : \n- air \n- tempe \n- labu siam \n- PURA Fine Sea Salt \n- PURA Anchovy Powder \n- PURA Seasoning Chicken \n- gula kelapa, aduk rata. masak dengan api kecil 15 menit', 0, 0, 0, 0, 0, '2021-11-17 11:27:37', '2021-11-17 11:27:37'),
(23, 23, NULL, 'bulgogi-pasta.PNG', 20, 2, 494, '1/2 sdt PURA Fine Sea Salt by @puraindonesia\r\n1 sdt PURA Seasoning Beef by @puraindonesia\r\n1 sdt PURA Anchovy Powder by @puraindonesia\r\n100 gram Pasta (Fettuccine)\r\n100 gram Daging Sapi /Beef (Shortplate)\r\n2 siung Bawang Putih / Garlic cincang halus\r\n1/2 buah Bawang Bombay / Onion iris tipis\r\n1 buah Bawang Pre / Leek iris tipis\r\n1 sdm Gochujang / Korean Red Chili Paste\r\n1 sdm Gochugaru / Korean Chili Pepper Flake\r\n2 sdm Gula Kelapa / Coconut Sugar\r\n1 sdt Minyak WIjen / Sesame Oil\r\n1 sdm Minyak Kelapa / Coconut Oil\r\n1,000 ml Air / Water (untuk merebus pasta)\r\n1 sdt Biji Wijen / Sesame Seed', '1. siapkan mangkuk, campur bahan :\r\n- daging sapi\r\n- bawang putih\r\n- bawang bombay\r\n- bawang pre\r\n- pura fine sea salt\r\n- pura seasoning beef\r\n- pura anchovy powder\r\n- gochujang\r\n- gochugaru\r\n- gula kelapa\r\n- minyak wijen. aduk rata rendam 10 menit\r\n2. selagi menunggu daging, rebus air lalu masak pasta hingga matang\r\n3. setelah matang, angkat dan tiriskan. ambil 100 ml air rebusan pasta\r\n4. siapakan wajan, panaskan minyak kelapa lalu tumis daging\r\n5. aduk rata, masak hingga daging terurai.\r\n6. setelah daging terurai, masukan pasta dan air rebusan past, aduk rata\r\n7. masak hingga mengering lalu angkat dan tuang ke piring\r\n8. sajikan dengan taburan biji wijen dan irisan daun bawang pre.', 0, 0, 0, 0, 0, '2021-11-18 03:56:20', '2021-11-18 03:56:20'),
(25, 25, 'Tidak cocok untuk pengidap kolesterol karena bahannya ikan tenggiri mengandung kolesterol sebanyak 54mg', 'pempek-cuko.jpg', 40, 4, 378, '1/2 sdt PURA Sea Salt \n1 sdt PURA Seasoning Chicken \n200 gram Ikan Tenggiri / Mackerel\n70 gram Tepung Tapioka / Tapioca Flour untuk adonan\n50 gram Tepung Tapioka / Tapioca Flour untuk baluran\n75 ml Air / Water Dingin\n3 sdm Minyak Kelapa / Coconut Oil\n1 sdt PURA Sea Salt \n100 gram Gula Jawa\n250 ml Air / Water\n5 gram Asam Jawa / Tamarind\n5 buah Cabai Rawit / Hot Chili\n3 siung Bawang Putih / Garlic\n50 gram Mie Telur / Egg Noodles rebus matang\n1/2 buah Timun / Cucumber potong kotak kecil', '1. siapkan food processor, haluskan bahan :\n- ikan tenggiri\n- air es.\n2. setelah halus, masukan bahan :\n- Pura Sea Salt\n- Pura Seasoning Chicken\n- tepung tapioka (70gram). haluskan hingga tercampur rata\n3. bagi adonan jadi 4, lalu bentuk silinder memanjang\n4. siapkan panci atau wajan, rebus air hingga mendidih\n5. setelah mendidih, masukan adonan pempek yang sudah dibentuk\n6. rebus -+ 10 menit hingga matang\n7. [saus pempek] siapkan cobek, haluskan bahan :\n- bawang putih\n- cabai rawit\n8. siapkan panci, masukan bahan :\n- gula jawa\n- pura himalayan salt\n- air\n- asam jawa\n- cabai rawit dan bawang putih halus.\n9. masak saus pempek dengan api kecil hingga gula jawa larut.\n10. setelah larut, angkat lalu saring\n11. siapkan wajan, panaskan minyak kelapa lalu pan fry pempek\n12. setelah kecoklatan angkat lalu iris tipis\n13. sajikan pempek dengan mie, timun dan saus.', 1, 0, 0, 0, 0, '2021-11-19 14:47:04', '2021-11-19 14:47:04'),
(29, 29, 'Salmon atlantik liar mengandung kolesterol yang termasuk tinggi, yakni 20,1 miligram per satu ons.', 'salmon-brokoli.jpg', 20, 2, 448, '½  sdt PURA Coarse Sea Salt by @PuraIndonesia\n½  sdt PURA Seasoning Chicken by @PuraIndonesia\n200 gram Ikan Salmon / Salmon Fish sayat bagian kulit \n1 sdm Air Lemon / Lemon Juice \n200 gram Brokoli / Broccoli potong kecil\n​1 sdm Minyak Zaitun / Olive Oil potong kecil \n¼  sdt PURA Coarse Sea Salt by @PuraIndonesia\n½  sdt PURA Seasoning Chicken by @PuraIndonesia\n150 ml Susu / Milk \n100 ml Air / Water \n2 siung Bawang Putih / Garlic cincang halus \n½  buah Bawang Bombay / Onion cincang halus \n½  sdt Rosemary \n½  sdt thyme \n1 sdm Minyak Zaitun / Olive Oil', 'Prepare : \n1. bawang putih, cincang halus \n2. bawang bombay, cincang halus \n3. brokoli, potong kecil \n4. salmon, sayat bagian kulit \nStep : \n1. siapkan ikan salmon, beri : \n- PURA Coarse Sea Salt \n- PURA Seasoning Chicken \n- air lemon. marinasi 10 menit \n2. siapkan wajan, panaskan minyak zaitun lalu masak salmon (kulit dahulu) 3. setelah salmon kecoklatan, angkat dan sisihkan. (bersihkan wajan) 4. dengan wajan yang sama, panaskan minyak lalu tumis bahan : - bawang putih \n- bawang bombay, masak hingga harum \n5. setelah harum, masukan bahan : \n- susu \n- air \n- PURA Coarse Sea Salt \n- PURA Seasoning Chicken \n- rosemary \n- thyme. aduk rata. masak hingga mendidih \n6. setelah mendidih, masukan bahan : \n- salmon \n- brokoli. masak dengan api sedang hingga mendidih dan kuah mengental. 7. setelah matang, lalu tuang ke piring. Sajikan', 1, 0, 0, 0, 0, '2021-11-22 03:41:52', '2021-11-22 03:41:52');

-- --------------------------------------------------------

--
-- Table structure for table `recipe_favorites`
--

CREATE TABLE `recipe_favorites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `id_recipe` bigint(20) UNSIGNED NOT NULL,
  `time_show` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `recipe_favorites`
--

INSERT INTO `recipe_favorites` (`id`, `id_user`, `id_recipe`, `time_show`, `created_at`, `updated_at`) VALUES
(2, 4, 15, 'Pagi', '2021-11-18 03:51:11', '2021-11-18 03:51:11');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `check` tinyint(1) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `check`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Calorilin', 'admin@admin.com', NULL, '$2y$10$vXNWGdLA8e.R2qQkF0ZJt.08VyW/4zO9DLYRTXmKrD2OTCA00uWeu', 1, NULL, '2021-11-12 08:57:27', '2021-11-12 08:57:27'),
(4, 'Fabyan Kindarya', 'fabyan@calorilin.com', NULL, '$2y$10$VH3QXGn5zirM0vGbE7X.m.EJ7UFBuQLLjyAw3Hhl05ja0adlGNmb2', 0, NULL, '2021-11-12 23:36:41', '2021-11-12 23:36:41'),
(6, 'testt', 'test12@gmail.com', NULL, '$2y$10$jRES8wWLjgT7Mn6S.8xk3ePvBarM.VziOcLJZQXQJBe2X9jb.QjhW', 0, NULL, '2021-11-13 23:25:47', '2021-11-13 23:25:47'),
(7, 'Zaid Abdillah', 'zaidabdillah18@gmail.com', NULL, '$2y$10$BSu3KrzeDIh393fkQ7JnkuKFeSjEfGYXDpgso7dfF/zB5MJqQf4ny', 0, NULL, '2021-11-14 01:19:38', '2021-11-23 01:05:46'),
(8, 'faiq', 'faiq@ganteng.com', NULL, '$2y$10$XBlRWzAyU7uHxw9rm5XuOO8QtS4iVslBdePyahhP0.U3YnNB9czXG', 0, NULL, '2021-11-14 18:34:32', '2021-11-14 18:34:32'),
(9, 'Stefanus Irgy', 'stefanus@irgy.com', NULL, '$2y$10$Dm1pF8EiZ.BP5H09jgtY9uWFt8zb5f1258JPbLqTJRYvGJUfADf3q', 0, NULL, '2021-11-15 09:48:38', '2021-11-15 09:48:38'),
(10, 'zero', 'zerotiertes@ttt.com', NULL, '$2y$10$tWeHxqWUtMEjo/prlG1JROEj0WuEuXbH2/n6hJI4LDr2yvUa/mG8q', 0, NULL, '2021-11-17 09:18:01', '2021-11-17 09:18:01');

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `born_date` date DEFAULT NULL,
  `phone_number` varchar(13) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body_mass_index` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` double(8,2) DEFAULT NULL,
  `height` double(8,2) DEFAULT NULL,
  `tension` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cholesterol` tinyint(1) DEFAULT NULL,
  `diabetes` tinyint(1) DEFAULT NULL,
  `uric_acid` tinyint(1) DEFAULT NULL,
  `stomach_acid` tinyint(1) DEFAULT NULL,
  `hyper_tension` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`id`, `id_user`, `born_date`, `phone_number`, `image`, `body_mass_index`, `weight`, `height`, `tension`, `cholesterol`, `diabetes`, `uric_acid`, `stomach_acid`, `hyper_tension`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-12-12', '820211212', '', 'Berat Badan Kurang', 55.00, 175.00, '130/85', NULL, NULL, NULL, NULL, NULL, '2021-11-12 09:49:19', '2021-11-15 06:15:06'),
(4, 4, '2001-09-15', '085157766074', NULL, 'Berat Badan Normal', 60.00, 175.00, '130/85', NULL, NULL, NULL, NULL, NULL, '2021-11-12 23:36:41', '2021-11-16 09:17:27'),
(5, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-13 23:22:02', '2021-11-13 23:22:02'),
(6, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-13 23:25:47', '2021-11-13 23:25:47'),
(7, 7, '2000-03-20', '081331913558', 'funny-baby.jpeg', 'Berat Badan Berlebih', 80.00, 170.00, '120/80', 0, 1, 0, 0, 0, '2021-11-14 01:19:38', '2021-11-24 10:09:47'),
(8, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-14 18:34:32', '2021-11-14 18:34:32'),
(9, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-15 09:48:38', '2021-11-15 09:48:38'),
(10, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-17 09:18:01', '2021-11-17 09:18:01');

-- --------------------------------------------------------

--
-- Stand-in structure for view `viewuser`
-- (See below for the actual view)
--
CREATE TABLE `viewuser` (
`count(users)` bigint(21)
,`count(food_materials)` bigint(21)
,`count(recipes)` bigint(21)
);

-- --------------------------------------------------------

--
-- Structure for view `viewuser`
--
DROP TABLE IF EXISTS `viewuser`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `viewuser`  AS SELECT count(`users`.`id`) AS `count(users)`, count(`food_materials`.`id`) AS `count(food_materials)`, count(`recipes`.`id`) AS `count(recipes)` FROM ((`users` join `food_materials`) join `recipes`) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `control_calories`
--
ALTER TABLE `control_calories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `control_calories_id_user_foreign` (`id_user`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `food_materials`
--
ALTER TABLE `food_materials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `food_material_favorites`
--
ALTER TABLE `food_material_favorites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `food_material_favorites_id_user_foreign` (`id_user`),
  ADD KEY `food_material_favorites_id_food_material_foreign` (`id_food_material`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `recipes`
--
ALTER TABLE `recipes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `recipe_details`
--
ALTER TABLE `recipe_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `recipe_details_id_recipe_foreign` (`id_recipe`);

--
-- Indexes for table `recipe_favorites`
--
ALTER TABLE `recipe_favorites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `recipe_favorites_id_user_foreign` (`id_user`),
  ADD KEY `recipe_favorites_id_recipe_foreign` (`id_recipe`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_details_id_user_foreign` (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `control_calories`
--
ALTER TABLE `control_calories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `food_materials`
--
ALTER TABLE `food_materials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `food_material_favorites`
--
ALTER TABLE `food_material_favorites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;

--
-- AUTO_INCREMENT for table `recipes`
--
ALTER TABLE `recipes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `recipe_details`
--
ALTER TABLE `recipe_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `recipe_favorites`
--
ALTER TABLE `recipe_favorites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user_details`
--
ALTER TABLE `user_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
