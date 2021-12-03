-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: Dec 03, 2021 at 09:06 AM
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
-- Table structure for table `feedbacks`
--

DROP TABLE IF EXISTS `feedbacks`;
CREATE TABLE IF NOT EXISTS `feedbacks` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_user` int NOT NULL,
  `feedback` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `feedbacks`
--

INSERT INTO `feedbacks` (`id`, `id_user`, `feedback`, `created_at`, `updated_at`) VALUES
(1, 2, 'Saran saya aplikasi ini lebih dipercepat lagi. Terima Kasih.', '2021-12-02 07:12:42', '2021-12-02 07:12:42'),
(2, 2, 'Kedepannya beri animasi yang bagus.', '2021-12-02 07:13:17', '2021-12-02 07:13:17');

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
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(11, 'Tahu', '100 gram', 'Sutra', 'tahu-sutra.jpg', 8.00, 2.00, 115.00, 9.00, '2021-11-29 07:45:59', '2021-11-29 07:45:59'),
(12, 'BBB', '1', 'Makan', 'bulgogi-pasta.PNG', 11.00, 1.00, 1.00, 1.00, '2021-12-03 04:57:52', '2021-12-03 04:58:04');

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
-- Table structure for table `penggunaan_aplikasi`
--

DROP TABLE IF EXISTS `penggunaan_aplikasi`;
CREATE TABLE IF NOT EXISTS `penggunaan_aplikasi` (
  `judul` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `penggunaan_aplikasi` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `penggunaan_aplikasi`
--

INSERT INTO `penggunaan_aplikasi` (`judul`, `penggunaan_aplikasi`) VALUES
('Penggunaan Aplikasi', 'Anda menyatakan dan menjamin bahwa anda adalah individu yang secara hukum berhak dan cakap untuk mengadakan dan mengikatkan diri dalam perjanjian berdasarkan hukum Negara Republik Indonesia, khususnya Ketentuan Penggunaan, untuk menggunakan Aplikasi. Apabila ketentuan tersebut tidak terpenuhi, Kami atau afiliasi Kami atau Mitra Kami, berhak berdasarkan hukum untuk membatalkan setiap perjanjian yang dibuat dengan anda. Anda selanjutnya menyatakan dan menjamin bahwa anda memiliki hak, wewenang dan kapasitas untuk menggunakan Layanan dan mematuhi Ketentuan Penggunaan. Jika anda mendaftarkan untuk dan atas nama suatu institusi, anda juga menyatakan dan menjamin bahwa anda berwenang untuk bertindak untuk dan atas nama institusi tersebut dalam mengadakan serta mengikatkan institusi tersebut pada Ketentuan Penggunaan ini dan mendaftarkan institusi tersebut untuk penggunaan Layanan dalam\r\n\r\nKami mengumpulkan dan memproses informasi dan Data Pribadi anda seperti nama, alamat, nomor kartu identitas, nomor telepon, alamat surat elektronik, tanggal lahir dan lokasi anda ketika anda mendaftarkan diri pada Aplikasi. Anda wajib untuk memberikan informasi yang akurat dan lengkap serta memperbaharui informasi tersebut dari waktu ke waktu dan setuju untuk memberikan kepada Kami bukti identitas apapun yang secara wajar Kami minta agar Kami dapat menyediakan Layanan secara lengkap dan maksimal kepada anda.\r\n\r\nDalam hal terjadi pengungkapan kata sandi atas akun Aplikasi anda dengan cara apapun yang terjadi bukan atas kesalahan Kami dan mengakibatkan penggunaan yang tidak sah dan/atau tanpa kewenangan atas akun Aplikasi anda, permintaan informasi yang dilakukan melalui Aplikasi akan tetap dianggap sebagai permintaan yang sah kecuali anda memberitahu Kami tentang hal tersebut sebelum Kami memberikan Layanan yang diminta tersebut.\r\n\r\nAnda wajib melaporkan kepada Kami bila anda kehilangan kendali atas akun Aplikasi anda. Anda bertanggung jawab atas setiap penggunaan akun Aplikasi anda meskipun jika akun tersebut telah disalahgunakan oleh pihak lain.\r\n\r\nAnda dapat melakukan pengunggahan informasi, foto, video, konten, penilaian, komentar dalam fitur produk review yang terdapat dalam Aplikasi, dimana hasil unggahan anda akan dapat dikonsumsi oleh pengguna Aplikasi lainnya. Anda dilarang untuk melakukan pengunggahan yang mengandung unsur suku, agama, ras dan antargolongan (“SARA”), pornografi, pelanggaran hak kekayaan intelektual. Kami berhak untuk melakukan penghapusan atau pemblokiran atas hasil unggahan anda apabila unggahan tersebut melanggar Ketentuan Penggunaan.\r\n\r\nAnda tidak diperkenankan untuk membahayakan, menyalahgunakan, mengubah atau memodifikasi Aplikasi dengan cara apapun. Kami berhak untuk menghentikan penggunaan atas akun Aplikasi anda lebih lanjut jika anda menggunakan Aplikasi tanpa mematuhi Ketentuan Penggunaan.\r\n\r\nAnda hanya diizinkan untuk menggunakan Aplikasi ini untuk mempergunakan Layanan yang disediakan dalam Aplikasi ini dan keperluan lain sesuai peraturan perundang-undangan yang berlaku. Untuk lebih tegasnya, anda dilarang menggunakan Aplikasi ini untuk melakukan penipuan dalam bentuk apapun dan/atau membuat ketidaknyamanan terhadap pihak lain maupun pihak yang menyediakan Layanan, menyalahgunakan segala informasi yang anda peroleh dari penggunaan Layanan, serta melakukan tindakan apapun yang melecehkan atau mengancam pihak yang menyediakan Layanan.\r\n\r\nInformasi yang diberikan oleh Kami dan/atau Mitra Kami tidak dapat diartikan sebagai suatu penawaran mengikat atau saran. Keputusan untuk menggunakan Layanan sepenuhnya berada dalam kekuasaan anda. Setiap hal yang anda putuskan dan/atau lakukan atas dasar kebergantungan pada informasi dalam Aplikasi ini merupakan risiko yang ditanggung oleh anda sendiri sepenuhnya.\r\n\r\nAnda memahami dan setuju bahwa penggunaan Aplikasi oleh anda tunduk pula pada Kebijakan Privasi Kami sebagaimana dapat diubah dari waktu ke waktu. Dengan menggunakan Aplikasi, anda dianggap memberikan persetujuan yang diatur dalam Kebijakan Privasi Kami.\r\n\r\nAnda dilarang menggunakan Layanan dalam Aplikasi untuk hal-hal yang dilarang oleh hukum dan peraturan perundang-undangan yang berlaku.');

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
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\User', 1, 'Login Token', '602619b4fa4fd9f2330e0078b2bfd5d8031e7c593ad8e583a3b134f235914578', '[\"*\"]', '2021-12-03 03:48:15', '2021-11-12 20:29:01', '2021-12-03 03:48:15'),
(2, 'App\\User', 2, 'Register Token', '95cc4db4acccc3f1495cffc94f1b6cb5fad5eace400dc23edb686cb1ae1ebeca', '[\"*\"]', NULL, '2021-11-12 22:22:51', '2021-11-12 22:22:51');

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
-- Table structure for table `report_bugs`
--

DROP TABLE IF EXISTS `report_bugs`;
CREATE TABLE IF NOT EXISTS `report_bugs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_user` int NOT NULL,
  `report_bug` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `report_bugs`
--

INSERT INTO `report_bugs` (`id`, `id_user`, `report_bug`, `created_at`, `updated_at`) VALUES
(1, 2, 'Pada rekomendasi makanan terdapat bug', '2021-12-02 07:26:22', '2021-12-02 07:26:22'),
(2, 2, 'Bug pada laporan bug', '2021-12-02 07:27:00', '2021-12-02 07:27:00');

-- --------------------------------------------------------

--
-- Table structure for table `tentang_kami`
--

DROP TABLE IF EXISTS `tentang_kami`;
CREATE TABLE IF NOT EXISTS `tentang_kami` (
  `judul` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tentang_kami` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tentang_kami`
--

INSERT INTO `tentang_kami` (`judul`, `tentang_kami`) VALUES
('Tentang Kami', 'Kesehatan tubuh manusia akan selalu berubah, dan penyebabnya selalu karena pola makan. karena itulah Calorilin ada.\r\nMenjadi platform dan karya anak bangsa.\r\nMemberi kemudahan pada pengguna dalam memngelola pola makan.\r\n\r\nSekarang adalah masa dimana era digital semakin berkembang.\r\nsegala aktivitas manusia semakin mudah karena teknologi.\r\n\r\nMari menjadi pelopor pola hidup sehat.\r\nBerkiblat pada nilai kesehatan makanan dan nilai kemudahan, mendorong setiap orang agar dapat hidup sehat.\r\n\r\nSemoga apa yang tersaji di Calorilin ikut memberi kemudahan dan manfaat bagi setiap orang yang menggunakannya.\r\n\r\nSalam kami,\r\n\r\nTim Calorilin');

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
