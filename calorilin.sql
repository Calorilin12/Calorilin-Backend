-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 16, 2021 at 06:04 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.31

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `foods`
--

CREATE TABLE `foods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publish` date NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alarm` time NOT NULL,
  `steps` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `compositions` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `protein` double(8,2) NOT NULL,
  `check` tinyint(1) NOT NULL,
  `made` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `carbo` double(8,2) NOT NULL,
  `fat` double(8,2) NOT NULL,
  `calory` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `foods`
--

INSERT INTO `foods` (`id`, `name`, `publish`, `category`, `level`, `image`, `video`, `alarm`, `steps`, `compositions`, `protein`, `check`, `made`, `carbo`, `fat`, `calory`, `created_at`, `updated_at`) VALUES
(1, 'Salmon dan brokoli dengan taburan sea salt dan seasoning chicken', '2021-10-03', 'Menu Utama', 'Mudah', 'public/food-images/blXnZCjBjD3xZK1cfB1IivNFiYvHxJ9wZdxPqPzb.jpg', 'Qwq3XNL5dts', '09:00:00', 'Siapkan wajan, panaskan minyak zaitu lalu masak salmon (kulit dahulu)', '200 gram Ikan Salmon / Salmon Fish sayat bagian kulit,1 sdm Air Lemon / Lemon Juice,200 gram Brokoli / Broccoli potong kecil,150 ml Susu / Milk,100 ml Air / Water,2 siung Bawang Putih / Garlic cincang halus,½ buah Bawang Bombay / Onion cincang halus,½ sdt Rosemary,½ sdt thyme,1 sdm Minyak Zaitun / Olive Oil', 7.00, 0, 'Pura Kitchen', 8.00, 6.00, 107.00, '2021-10-04 08:05:31', '2021-10-04 08:05:31');

-- --------------------------------------------------------

--
-- Table structure for table `food_combined`
--

CREATE TABLE `food_combined` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_food` bigint(20) UNSIGNED NOT NULL,
  `id_food_material` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `food_materials`
--

CREATE TABLE `food_materials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descriptions` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fat` double(8,2) DEFAULT NULL,
  `carbo` double(8,2) DEFAULT NULL,
  `calory` double(8,2) DEFAULT NULL,
  `protein` double(8,2) DEFAULT NULL,
  `cycling` double(8,2) DEFAULT NULL,
  `running` double(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `food_schedules`
--

CREATE TABLE `food_schedules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `schedule_date` date NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `id_food` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `food_schedules`
--

INSERT INTO `food_schedules` (`id`, `schedule_date`, `id_user`, `id_food`, `created_at`, `updated_at`) VALUES
(1, '2021-10-04', 1, 1, '2021-10-04 09:16:36', '2021-10-04 09:16:36'),
(2, '2021-10-14', 1, 1, '2021-10-13 09:20:09', '2021-10-13 09:20:09');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_09_26_152724_create_foods_table', 1),
(6, '2021_09_26_153114_create_food_materials_table', 1),
(7, '2021_09_27_145751_create_control_calories_table', 1),
(8, '2021_09_27_150002_create_food_schedules_table', 1),
(9, '2021_09_27_152225_create_food_combined_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(9, 'App\\User', 1, 'CalorilinTokenLogin', 'b2ddfc909b8bddba9e632f598a60f5cabf3373ed95180ff3afc45398a07cd4cb', '[\"*\"]', '2021-10-13 09:20:09', '2021-10-13 09:19:33', '2021-10-13 09:20:09'),
(10, 'App\\User', 1, 'CalorilinTokenLogin', '7276dff18403a1e6728637beb6333f75f3c73e9b69af8abeffef17b1b28518de', '[\"*\"]', '2021-10-14 20:54:39', '2021-10-14 19:03:16', '2021-10-14 20:54:39'),
(12, 'App\\User', 5, 'CalorilinToken', 'd3ef134ad298818e3c011bf77ea60ea70011736a554ba4ce99e9c3f75c659371', '[\"*\"]', NULL, '2021-10-14 20:49:02', '2021-10-14 20:49:02'),
(13, 'App\\User', 6, 'CalorilinToken', '302e6804de6d01b0c49efa146dbef0d19027b25cf274f1859ff091c56ce94111', '[\"*\"]', NULL, '2021-10-14 20:50:10', '2021-10-14 20:50:10');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `born` date NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `check` tinyint(1) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `phone`, `born`, `email`, `email_verified_at`, `password`, `image`, `check`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Fabyan Kindarya', '0851577808074', '2001-09-15', 'fkindarya@email.com', NULL, '$2y$10$Zl80feVY1iLkY.kOflQ.ZesioHWIGpUThXiz91voTWya9gT6QLlFa', 'public/storage/CIzBQJ1yeDY3faLD0M593TsshnMFUJKXuhyfR5as.jpg', 0, NULL, '2021-10-04 07:44:43', '2021-10-10 06:10:01'),
(2, 'Faiq Kukli', '082136311241', '0200-09-15', 'Faikukli@gmail.com', NULL, '$2y$10$DAumsdnZtV69vuWHp6Du9OgbxpHXSUxwyOHFfeayzTaOY6qqyelby', NULL, 0, NULL, '2021-10-09 21:51:36', '2021-10-09 21:51:36'),
(6, 'Made Rahano', '082136311241', '2000-09-15', 'rakukli@gmail.com', NULL, '$2y$10$OIgNIEByhqpQvy0WKf7uKete2whtNeWa9lFiqP8Zc3SSlxaSURAHq', 'Foto Jas.jpg', 0, NULL, '2021-10-14 20:50:10', '2021-10-14 20:50:10');

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
-- Indexes for table `foods`
--
ALTER TABLE `foods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `food_combined`
--
ALTER TABLE `food_combined`
  ADD PRIMARY KEY (`id`),
  ADD KEY `food_combined_id_food_foreign` (`id_food`),
  ADD KEY `food_combined_id_food_material_foreign` (`id_food_material`);

--
-- Indexes for table `food_materials`
--
ALTER TABLE `food_materials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `food_schedules`
--
ALTER TABLE `food_schedules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `food_schedules_id_user_foreign` (`id_user`),
  ADD KEY `food_schedules_id_food_foreign` (`id_food`);

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `control_calories`
--
ALTER TABLE `control_calories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `foods`
--
ALTER TABLE `foods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `food_combined`
--
ALTER TABLE `food_combined`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `food_materials`
--
ALTER TABLE `food_materials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `food_schedules`
--
ALTER TABLE `food_schedules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `control_calories`
--
ALTER TABLE `control_calories`
  ADD CONSTRAINT `control_calories_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);

--
-- Constraints for table `food_combined`
--
ALTER TABLE `food_combined`
  ADD CONSTRAINT `food_combined_id_food_foreign` FOREIGN KEY (`id_food`) REFERENCES `foods` (`id`),
  ADD CONSTRAINT `food_combined_id_food_material_foreign` FOREIGN KEY (`id_food_material`) REFERENCES `food_materials` (`id`);

--
-- Constraints for table `food_schedules`
--
ALTER TABLE `food_schedules`
  ADD CONSTRAINT `food_schedules_id_food_foreign` FOREIGN KEY (`id_food`) REFERENCES `foods` (`id`),
  ADD CONSTRAINT `food_schedules_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
