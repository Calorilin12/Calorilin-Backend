-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: Dec 22, 2021 at 10:53 AM
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
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `food_materials`
--

INSERT INTO `food_materials` (`id`, `name`, `serve`, `type`, `image`, `fat`, `carbo`, `calory`, `protein`, `created_at`, `updated_at`) VALUES
(1, 'Daging Ayam', '100 gram', 'Dada', 'dada-ayam.jpg', 7.72, 0.00, 195.00, 29.55, '2021-11-29 06:57:43', '2021-12-06 06:22:45'),
(2, 'Daging Ayam', '100 gram', 'Paha', 'paha-ayam.jpg', 15.36, 0.00, 245.00, 24.85, '2021-11-29 06:59:23', '2021-12-06 06:25:34'),
(3, 'Telur Rebus', '1 buah', 'Telur Ayam', 'telur-rebus.jpg', 5.28, 0.56, 77.00, 6.26, '2021-11-29 07:18:22', '2021-12-06 08:05:40'),
(4, 'Telur Ceplok', '1 buah', 'Telur Ayam', 'telur-ceplok.jpeg', 7.04, 0.40, 92.00, 6.27, '2021-11-29 07:20:08', '2021-12-06 08:07:36'),
(5, 'Telur Asin', '1 buah', 'Telur Bebek', 'telur-bebek.jpg', 10.23, 1.08, 137.00, 9.51, '2021-11-29 07:25:53', '2021-12-06 08:02:20'),
(6, 'Telur Dadar', '1 buah', 'Telur Ayam', 'telurdadar.jpg', 7.33, 0.42, 93.00, 6.48, '2021-11-29 07:30:12', '2021-12-06 08:10:16'),
(7, 'Lele Goreng', '100 gram', NULL, 'lele-goreng.jpg', 2.85, 0.00, 105.00, 18.47, '2021-11-29 07:31:29', '2021-12-06 08:30:16'),
(8, 'Udang Kukus / Rebus', '1 sedang (dikupas)', NULL, 'udang-kukus.jpg', 0.11, 0.06, 7.00, 1.33, '2021-11-29 07:32:45', '2021-12-06 08:35:03'),
(9, 'Alpukat', '1 buah', 'null', 'alpukat.jpg', 29.47, 17.15, 322.00, 4.02, '2021-11-29 07:40:19', '2021-12-06 06:27:16'),
(10, 'Almond', '1 biji', 'null', 'almond.jpg', 0.61, 0.24, 7.00, 0.26, '2021-11-29 07:42:29', '2021-12-06 06:30:54'),
(11, 'Tahu Goreng', '1 buah', NULL, 'tahu-goreng.jpg', 2.62, 1.36, 35.00, 2.23, '2021-11-29 07:45:59', '2021-12-06 08:12:45'),
(13, 'Tahu Kukus', '100 gram', NULL, 'tahu-kukus.jpeg', 4.34, 1.93, 78.00, 7.97, '2021-12-06 08:14:57', '2021-12-06 08:14:57'),
(14, 'Tempe Goreng', '1 buah', NULL, 'tempe-goreng.jpg', 2.28, 1.79, 34.00, 2.00, '2021-12-06 08:17:56', '2021-12-06 08:17:56'),
(15, 'Pisang', '1 buah', 'Sunpride', 'pisangsingle.png', 0.00, 22.00, 90.00, 1.00, '2021-12-06 08:23:02', '2021-12-06 08:23:29'),
(16, 'Pepaya', '100 gram', NULL, 'Pepaya.jpeg', 0.14, 9.81, 39.00, 0.61, '2021-12-06 08:24:57', '2021-12-06 08:24:57');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
