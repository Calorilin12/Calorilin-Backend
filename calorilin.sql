-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: Dec 24, 2021 at 08:02 AM
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
  `total_calory` float(6,2) NOT NULL,
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
(1, 1, 'Perpaduan ikan salmon dan sayur brokoli merupakan kombinasi yang bagus untuk kamu yang ingin menjaga kesehatan tubuh melalui pola makan yang baik.', 'creamy-braised-salmon-brocoli.jpg', 20, 2, 448.00, '½  sdt PURA Coarse Sea Salt by @PuraIndonesia\r\n½  sdt PURA Seasoning Chicken by @PuraIndonesia\r\n200 gram Ikan Salmon / Salmon Fish sayat bagian kulit \r\n1 sdm Air Lemon / Lemon Juice \r\n200 gram Brokoli / Broccoli potong kecil\r\n​1 sdm Minyak Zaitun / Olive Oil potong kecil \r\n¼  sdt PURA Coarse Sea Salt by @PuraIndonesia\r\n½  sdt PURA Seasoning Chicken by @PuraIndonesia\r\n150 ml Susu / Milk \r\n100 ml Air / Water \r\n2 siung Bawang Putih / Garlic cincang halus \r\n½  buah Bawang Bombay / Onion cincang halus\r\n½  sdt Rosemary \r\n½  sdt thyme \r\n1 sdm Minyak Zaitun / Olive Oil', 'Prepare : \r\n1. bawang putih, cincang halus \r\n2. bawang bombay, cincang halus \r\n3. brokoli, potong kecil \r\n4. salmon, sayat bagian kulit \r\nStep : \r\n1. siapkan ikan salmon, beri : \r\n     - PURA Coarse Sea Salt \r\n     - PURA Seasoning Chicken \r\n     - air lemon. marinasi 10 menit \r\n2. siapkan wajan, panaskan minyak zaitun lalu masak salmon (kulit dahulu)\r\n3. setelah salmon kecoklatan, angkat dan sisihkan. (bersihkan wajan)\r\n4. dengan wajan yang sama, panaskan minyak lalu tumis bahan : - bawang putih \r\n     - bawang bombay, masak hingga harum \r\n5. setelah harum, masukan bahan : \r\n     - susu \r\n     - air \r\n     - PURA Coarse Sea Salt \r\n     - PURA Seasoning Chicken \r\n     - rosemary \r\n     - thyme. aduk rata. masak hingga mendidih \r\n6. setelah mendidih, masukan bahan : \r\n     - salmon \r\n     - brokoli. masak dengan api sedang hingga mendidih dan kuah mengental.\r\n7. setelah matang, lalu tuang ke piring. Sajikan', 0, 0, 0, 0, 0, '2021-11-26 20:31:47', '2021-12-24 06:46:37'),
(2, 2, 'Perpaduan ayam dengan telur dan dilengkapi salad sangat cocok digunakan sebagai makanan ringan disela - sela kesibukan anda.', 'chicken-egg-roll.jpg', 45, 24, 70.00, 'Campuran Ayam : \r\n1 sdt PURA Fine Sea Salt  by @PuraIndonesia\r\n1 sdt PURA Seasoning Chicken  by @PuraIndonesia\r\n300 gram Ayam / Chicken Giling \r\n1 butir Telur / Egg untuk campuran ayam \r\n3 butir Telur / Egg Dadar \r\n1 sdt Gula Kelapa / Coconut Sugar  \r\n2 siung Bawang Putih / Garlic cincang halus \r\n5 gram Daun Bawang / Spring Onion iris tipis \r\n15 sdm Tepung Tapioka / Tapioca Flour  \r\n3 lembar Daun Pisang / Banana Leaf Untuk membungkus \r\n\r\nSalad / Pendamping : \r\n2 sdm Minyak Kelapa / Coconut Oil Untuk Pan Fry \r\n50 gram Kubis / Cabbage iris tipis \r\n50 gram Wortel / Carrot iris tipis \r\n2 sdm Mayonnaise', 'Prepare : \r\n1. bawang putih, cincang halus \r\n2. daun bawang, iris tipis \r\n3. kubis, iris tipis \r\n4. wortel, iris tipis \r\n5. daun pisang, potong kotak, bakar hingga lentur Step :\r\n1. siapkan mangkuk, campur bahan : \r\n     - ayam giling \r\n     - PURA Fine Sea Salt \r\n     - PURA Seasoning Chicken \r\n     - telur (1 butir) \r\n     - gula kelapa \r\n     - bawang putih \r\n     - daun bawang \r\n     - tepung tapioka, aduk rata. \r\n2. siapkan wajan anti lengket, masak telur dadar \r\n3. siapkan daun pisang, tata telur dadar dan isian ayam. gulung dan padatkan \r\n4. kukus campuran ayam selama 10 menit (api sedang) \r\n5. setelah matang, keluarkan dan dinginkan sebentar \r\n6. setelah dingin, buka chicken egg roll, iris tipis \r\n7. pan fry chicken egg roll hingga kecoklatan lalu angkat dan tata di piring \r\n8. sajikan chicken egg roll dengan salad.', 1, 0, 0, 0, 0, '2021-11-26 21:34:28', '2021-12-24 06:47:13'),
(3, 3, 'Resep opor ayam ini sangat mudah diikuti dan cocok untuk menu ketika lebaran dan acara lainnya.', 'opor-ayam.jpg', 90, 5, 275.00, 'Bahan :\r\n1 sdt Pura Fine Sea Salt by Pura Indonesia\r\n1 sdm PURA Seasoning Chicken by Pura Indonesia\r\n500 gram Ayam / Chicken 1 ekor potong jadi 10\r\n800 ml Air / Water\r\n200 ml Santan / Coconut Milk\r\n2 sdm Minyak Kelapa / Coconut Oil\r\n2 lembar Daun Salam / Indonesian Bay Leaf\r\n1 buah Sereh / Lemon Grass geprek, bentuk simpul\r\n3 gram Lengkuas / Galangal kupas, geprek\r\n1 sdm Gula Kelapa / Coconut Sugar\r\n\r\nBumbu Halus :\r\n8 siung Bawang Merah / Shallot\r\n6 siung Bawang Putih / Garlic\r\n3 butir Kemiri / Candlenut\r\n3 gram Jahe / Ginger\r\n1/2 sdt Lada Putih / White Pepper biji\r\n1 sdt Ketumbar biji / Coriander Seed\r\n50 ml Air / Water', 'Prepare :\r\n1. ayam, 1 ekor potong jadi 10\r\n2. sereh, kupas lalu geprek\r\n3. lengkuas, kupas lalu geprek.\r\n\r\nStep :\r\n1. [bumbu halus] siapkan blender, haluskan bahan :\r\n     - bawang merah\r\n     - bawang putih\r\n     - kemari\r\n     - jahe\r\n     - lada putih\r\n     - ketumbar\r\n     - air. haluskan\r\n2. siapkan wajan, panaskan minyak kelapa lalu tumis bahan :\r\n     - bumbu halus\r\n     - daun salam\r\n     - sereh\r\n     - lengkuas. aduk rata. masak hingga harum dan mengering\r\n3. setelah harum, masukan ayam. aduk rata.\r\n4. setelah tercampur rata, masukan bahan :\r\n     - air\r\n     - santan\r\n     - pura fine sea salt\r\n     - pura seasoning chicken\r\n     - gula kelapa. aduk rata. simmer hingga empuk (45-60 menit)\r\n5. setelah matang, angkat dan sajikan', 1, 1, 1, 1, 1, '2021-11-26 21:40:19', '2021-12-24 06:48:01'),
(4, 4, 'Salah satu jajanan khas Bandung yang paling banyak penikmatnya ini sangat mudah diikuti pembuatannya dan tentunya juga sehat untuk dikonsumsi.', 'siomay-bandung.jpg', 45, 4, 464.00, 'Isian Siomay : \r\n1 sdt PURA Fine Sea Salt  by @PuraIndonesia\r\n1 sdt PURA Seasoning Chicken  by @PuraIndonesa\r\n300 gram Ikan Tenggiri / Mackerel fillet, potong kasar \r\n1 buah Bawang Pre / Leek potong kasar \r\n1 butir Putih Telur / Egg White  \r\n30 gram Tepung Tapioka / Tapioca Flour  \r\n1 sdm Gula Kelapa / Coconut Sugar  \r\n25 ml Air / Water (es / dingin) \r\n\r\nBahan : \r\n8 lembar Kubis / Cabbage  \r\n300 gram Tahu / Tofu potong kotak memanjang \r\n8 lembar Kulit Pangsit / Wonton Skin  \r\n4 buah Kentang / Potato rebus, kupas, potong kotak \r\nBumbu Kacang : \r\n1 sdt PURA Fine Sea Salt by @PuraIndonesia \r\n200 gram Kacang tanah / Peanut sangrai \r\n2 buah Cabai merah / Red Chili potong kasar \r\n2 siung Bawang Putih / Garlic  \r\n4 butir Bawang Merah / Shallot  \r\n3 sdm Gula Kelapa / Coconut Sugar  \r\n300 ml Air / Water', 'Prepare : \r\n1. ikan tenggiri, fillet potong kasar \r\n2. bawang pre, potong kasar \r\n3. telur, ambil bagian putihnya saja \r\n4. kubis, potong per lembar, lalu rebus hingga lentur (-+ 2 menit) \r\n5. tahu, potong kotak memanjang \r\n6. kentang, kupas, rebus, potong kotak \r\n7. kacang tanah, sangrai \r\n8. cabai merah, potong kasar \r\n\r\nStep : \r\n1. Siapkan food processor, masukan bahan : \r\n     - ikan tenggiri \r\n     - PURA Fine Sea Salt \r\n     - PURA Seasoning Chicken \r\n     - bawang pre \r\n     - putih telur \r\n     - tepung tapioka \r\n     - gula kelapa. giling hingga halus dan tercampur rata. \r\n2. setelah tercampur rata, masukan air dingin. aduk rata. \r\n3. siapkan bahan : \r\n     - kubis \r\n     - tahu \r\n     - kulit pangsit, isi dengan bahan isian tenggiri lalu kukus -+ 10 menit 4. setelah matang, angkat dan sisihkan \r\n5. Siapkan blender, masukan bahan : \r\n     - kacang tanah \r\n     - PURA Fine Sea Salt \r\n     - cabai merah \r\n     - bawang putih \r\n     - bawang merah \r\n     - gula kelapa \r\n     - air. haluskan \r\n6. siapkan wajan, masak saus kacang yang sudah dihaluskan. \r\n7. masak dengan api sedang hingga warna menua dan mengental. \r\n8. siapkan piring, \r\n     - siomay \r\n     - kubis isi \r\n     - tahu isi \r\n     - kentang rebus. sajikan dengan saus kacang', 0, 0, 0, 0, 0, '2021-11-26 21:44:10', '2021-12-24 06:49:10'),
(5, 5, 'Resep dessert sehat yang dibuat dari olahan buah pisang, alpukat, cokelat dan juga yogurt. Resep ini bisa memanjakan lidah kalian.', 'avocado-banana-dessert.jpg', 45, 4, 331.00, 'Chocolate :\r\n¼ sdt PURA Coarse Sea Salt by Pura Indonesia\r\n100 gram Dark Chocolate potong kasar\r\n70.0 gram Susu / Milk\r\n\r\nAvocado :\r\n200 gram Alpukat / Avocado potong kotak\r\n20 gram Kacang Almond / Almond sangrai, cincang kasar\r\n1 sdm Madu / Honey\r\n\r\nBanana Yogurt :\r\n200 gram Pisang / Banana potong kasar\r\n50 gram Greek Yogurt\r\n1 sdm Madu / Honey', 'Prepare :\r\n1. dark chocolate, potong kasar\r\n2. alpukat, potong kotak\r\n3. pisang, potong kasar\r\n\r\nStep :\r\n1. [avocado mixture] : siapkan mangkuk, masukan alpukat lalu haluskan\r\n​2. setelah halus, masukan bahan :\r\n     - kacang almond\r\n     - madu. aduk rata.\r\n3. [banana yogurt mixture] siapkan mangkuk, masukan pisang lalu haluskan\r\n​4. setelah halus, masukan bahan :\r\n     - yogurt\r\n     - madu, aduk rata.\r\n5. [chocolate ganache] siapkan panci, rebus air hingga mendidih lalu kecilkan\r\n​6. letakan mangkuk tahan panas di atas panci, lalu masukan bahan :\r\n     - coklat\r\n     - susu\r\n     - PURA Coarse Sea Salt. aduk rata. masak hingga leleh\r\n7. setelah leleh, dinginkan chocolate ganache hingga agak mengental\r\n​8. siapkan gelas / cup, tuang bahan :\r\n     - avocado mixture\r\n     - banana yogurt mixture\r\n     - chocolate ganache\r\n     - kacang almond cincang\r\n9. simpan dessert di kulkas -+ 30 menit.\r\n10. setelah 30 menit, keluarkan lalu beri sedikit taburan PURA Coarse Sea Salt. sajikan', 0, 0, 0, 0, 0, '2021-11-26 21:48:44', '2021-12-24 06:49:50'),
(6, 6, 'Resep salmon dengan kuah lodeh dan kale yang sehat untuk Anda. Daun kale bisa mencegah penyakit jantung, mampu mengurangi risiko resistensi insulin.', 'lodeh-salmon-kale.jpg', 30, 4, 288.00, 'Bahan : \r\n2 sdt PURA Fine Sea Salt by @puraindonesia \r\n1/2 sdt PURA Anchovy Powder  by @puraindonesia\r\n2 sdt PURA Seasoning Chicken  by @puraindonesia\r\n1 sdm Gula Kelapa / Coconut Sugar \r\n200 gram Ikan Salmon / Salmon Fish potong tipis memanjang \r\n​100 gram Tempe / Tempeh potong kotak \r\n100 gram Labu Siam / Chayote potong katik \r\n50 gram Kale / Kale buang batang, potong kasar 400 ml Air / Water \r\n200 ml Santan / Coconut Milk (Fresh) \r\n1 sdm Minyak Kelapa / Coconut Oil \r\n2 lembar Daun Jeruk / Lime Leaf \r\n\r\n​Bumbu Halus :\r\n​2 lembar Daun Salam / Indonesian Bay Leaf \r\n5 gram Lengkuas / Galangal kupas, geprek \r\n1 buah Sereh / Lemon Grass geprek, ikat simpul \r\n5 gram Kunyit / Turmeric \r\n6 siung Bawang Merah / Shallot \r\n4 siung Bawang Putih / Garlic \r\n2 butir Kemiri / Candlenut \r\n2 buah Cabai merah / Red Chili \r\n50 ml Air / Water Untuk Blender', 'Prepare : \r\n1. salmon, potong memanjang \r\n2. tempeh, potong memanjang \r\n3. labu siam, kupas, potong katik \r\n4. kale, potong kasar \r\n5. lengkuas, kupas, geprek \r\n6. sereh, geprek, ikat simpul \r\n\r\nStep : \r\n1. siapkan blender, haluskan bahan : \r\n     - kunyit \r\n     - bawang merah \r\n     - bawang putih \r\n     - kemiri \r\n     - cabai merah \r\n     - air. \r\n2. bumbui salmon dengan pura fine sea salt dan lada hitam \r\n3. siapkan wajan, panaskan minyak kelapa lalu pan fry salmon hingga matang lalu angkat \r\n4. dengan wajan yang sama, tumis bahan : \r\n     - bumbu halus \r\n     - daun jeruk \r\n     - daun salam \r\n     - lengkuas \r\n     - sereh, aduk rata. masak hingga harum \r\n5. setelah harum, masukan bahan : \r\n     - air \r\n     - tempe \r\n     - labu siam \r\n     - PURA Fine Sea Salt \r\n     - PURA Anchovy Powder \r\n     - PURA Seasoning Chicken \r\n     - gula kelapa, aduk rata. masak dengan api kecil 15 menit', 0, 0, 0, 0, 0, '2021-11-26 21:53:42', '2021-12-24 06:50:45'),
(7, 7, 'Resep Lasagna dengan buah terong dan karbohidrat rendah ini cocok untuk anda yang ingin menikmati makanan Eropa dengan sajian yang sehat.', 'eggplant-lasagna.jpg', 60, 6, 118.00, 'Bahan : \r\n2 buah Terong / Egg Plant iris tipis \r\n150 gram Keju Mozzarella / Mozzarella Cheese parut \r\n\r\nSauce : \r\n½ sdt PURA Himalayan Salt  \r\nby Pura Indonesia\r\n1 sdm PURA Seasoning Beef by Pura Indonesia\r\n200 gram Daging sapi giling / Ground Beef  \r\n3 siung Bawang Putih / Garlic cincang halus \r\n1 buah Bawang Bombay / Onion cincang halus \r\n4 buah Tomat / Tomato blender \r\n20 gram Seledri / Celery cincang halus \r\n1 buah Wortel / Carrot cincang halus \r\n¼  sdt Rosemary  \r\n¼  sdt Oregano  \r\n¼  sdt Thyme  \r\n2 lembar Bayleaf', 'Prepare : \r\n1. terong, iris tipis \r\n2. keju mozzarella, parut \r\n3. bawang putih, cincang halus \r\n4. bawang bombay, cincang halus \r\n5. tomat, blender \r\n6. seledri, cincang halus \r\n7. wortel, cincang halus \r\n8. siapkan loyang kaca / pyrex (ukuran di cek) \r\n\r\nStep : \r\n1. siapkan panci, panaskan minyak zaitun \r\n2. tumis daging giling sampai berubah warna \r\n3. masukan bahan : \r\n     - bawang putih \r\n     - bawang bombay \r\n     - tomat \r\n     - seledri \r\n     - wortel, aduk rata \r\n4. masukan bahan : \r\n     - rosemary \r\n     - oregano \r\n     - thyme \r\n     - bayleaf \r\n     - PURA Himalayan Salt \r\n     - PURA Seasoning Beef, aduk rata \r\n5. masak (simmer) sampai air mengering. (aduk sesekali) \r\n6. tata bahan : \r\n     - bolognese \r\n     - mozzarella \r\n     - terong \r\n     - bolognese \r\n     - mozzarella \r\n     - terong \r\n     - bolognese \r\n     - taburi dengan daun seledri \r\n7. bake lasagna dengan suhu 190* selama 30 menit \r\n8. setelah matang, keluarkan. potong 6 potong. Sajikan', 0, 0, 0, 0, 0, '2021-11-26 21:56:48', '2021-12-24 06:51:58'),
(8, 8, 'Almond bisa menstabilkan gula darah, menurunkan tekanan darah, menurunkan kadar kolesterol, dan aman dimakan oleh orang dengan asam urat bila dikonsumsi dalam takaran yang tepat.', 'almond-milk.jpg', 15, 4, 100.00, 'Bahan : \r\nPinch of PURA Himalayan Salt by Pura Indonesia\r\n150 gram Kacang Almond / Almond \r\n500 ml Air / Water Matang. untuk merendam almond \r\n1,000 ml Air / Water Matang. untuk blender \r\n4 buah Kurma / Dates buang biji \r\n½  sdt Vanilla', 'Prepare : \r\n1. Almond, rendam dengan air matang overnight \r\n2. kurma, buang biji 3. siapkan saringan kain cheese cloth \r\n\r\nStep : \r\n1. setelah 1 hari merendam almond, buang air rendaman, lalu bilas dengan air bersih / matang \r\n2. siapkan blender, \r\nmasukan bahan : \r\n     - almond yang sudah direndam dan dibilas \r\n     - PURA Himalayan Salt \r\n     - air (1000ml) \r\n     - kurma \r\n     - vanilla extract. blender hingga halus dan lembut. 3. setelah halus dan lembut, saring blenderan almond \r\n4. setelah semua susu almond tersaring, simpan dalam botol \r\n5. homemade almond milk dapat disimpan dalam lemari pendingin selama 3 hari.', 0, 0, 0, 0, 0, '2021-11-26 22:00:43', '2021-12-24 06:52:26'),
(9, 9, 'Resep soup nikmat dengan perpaduan ayam, sayuran serta roti pastry.', 'zuppa-soup.jpg', 45, 2, 423.00, 'Bahan : \r\n2  lembar Puff Pastry u \r\n1 sdm Minyak Zaitun / Olive Oil  \r\n50 gram Ayam Dada / Chicken Breast potong kotak kecil \r\n30 gram Bawang Bombay / Onion cincang halus \r\n30 gram Wortel / Carrot potong kotak kecil \r\n10 gram Seledri / Celery iris tipis \r\n2 sdm Tepung terigu / Wheat Flour  \r\n400 ml Air / Water  \r\n100 ml Susu / Milk  \r\n1/4 sdt PURA Himalayan Salt by Pura Indonesia \r\n1.0 sdm PURA Seasoning Chicken by Pura Indonesia\r\nPinch of Lada Hitam / Black Pepper \r\nPinch of Pala Bubuk / Nutmeg Powder \r\n\r\nEgg Wash : \r\n1 butir Kuning telur / Egg Yolk  \r\n1 sdm Susu / Milk', 'Prepare : \r\n1. Pre-Heat oven 200*c \r\n2. siapkan mangkuk sup tahan panas \r\n3. puff pastry, ukuran 15x15 cm \r\n4. wortel, potong kotak kecil \r\n5. bombay, cincang halus \r\n6. seledri, iris tipis \r\n7. ayam, potong kotak kecil \r\n8. egg wash, campur kuning telur dengan 1 sdm susu \r\n\r\nStep : \r\n1. siapkan panci, panaskan minyak zaitun lalu tumis bahan : \r\n     - ayam dada \r\n     - bawang bombay \r\n     - wortel \r\n     - seledri, masak sampai harum dan layu \r\n2. setelah harum dan layu, masukan tepung terigu, aduk rata \r\n3. setelah tercampur rata, masukan susu dan air, aduk rata \r\n4. beri seasoning : \r\n     - PURA Himalayan Salt \r\n     - PURA Seasoning Chicken \r\n     - lada hitam \r\n     - pala bubuk, aduk rata. masak (api kecil) sampai mengental \r\n5. setelah mengental angkat, tuang ke mangkuk \r\n6. siapkan puff pastry, tutup mangkuk yang sudah diisi sup \r\n7. oleskan puff pastry dengan egg wash secara merata \r\n8. bake sup dengan suhu 200*c selama 20 menit (sampai golden brown) \r\n9. setelah matang, keluarkan dari oven lalu sajikan (hati-hati mangkuk panas)', 0, 0, 0, 0, 0, '2021-11-27 01:58:48', '2021-12-24 06:53:18'),
(10, 10, 'Sup Tahu Sutera dari Korea berkuah pedas namun juga gurih. Resep ini tidak direkomendasikan untuk anda para penderita penyakit asam lambung.', 'sundubu-jjigae.jpg', 20, 2, 255.00, '1/4 sdt PURA Himalayan Salt by @puraindonesia \r\n1 sdt PURA Seasoning Chicken by @puraindonesia \r\n1/2 sdt PURA Anchovy Powder by @puraindonesia\r\n200 gram Tahu Sutra / Silken Tofu potong tebal \r\n4 buah Udang / Prawn buang kepala, bersihkan punggung \r\n100 gram Jamur Enoki / Enoki Mushroom suwir \r\n1 sdm Gochugaru / Korean Chili Pepper Flake \r\n2 siung Bawang Putih / Garlic cincang halus \r\n1/4 buah Bawang Bombay / Onion cincang halus \r\n1 buah Bawang Pre / Leek iris tipis \r\n100 gram Kimchi potong bite size \r\n250 ml Air / Water \r\n1 sdm Minyak Kelapa / Coconut Oil', 'Prepare :\r\n1. tahu sutra, potong tebal\r\n2. udang, buang kepala & kaki, bersihkan punggung\r\n3. jamur enoki, suwir\r\n4. bawang putih, cincang halus\r\n5. bawang bombay, cincang halus\r\n6. bawang pre :\r\n     - bagian putih, iris tipis (untuk ditumis)\r\n     - bagian daun, iris tipis (untuk taburan)\r\n7. kimchi, potong bite size \r\n\r\nStep :\r\n1. siapkan hot pot / panci, panaskan minyak kelapa lalu tumis :\r\n     - bawang putih\r\n     - bawang bombay\r\n     - bawang pre (bagian putih). tumis dengan api kecil hingga harum dan layu\r\n2. setelah harum, masukan bahan :\r\n     - kimchi\r\n     - Pura Himalayan Salt\r\n     - Pura Seasoning Chicken\r\n     - Pura Anchovy Powder\r\n     - gochugaru. aduk rata.\r\n3. setelah tercampur rata, tata bahan :\r\n     - udang\r\n     - jamur enoki\r\n     - tahu sutra\r\n     - air. tutup hot pot, masak dengan api kecil 5-7 menit\r\n4. setelah matang, sajikan dengan taburan daun bawang pre.', 0, 0, 0, 1, 0, '2021-11-27 02:12:14', '2021-12-24 06:53:55'),
(11, 11, 'Resep salad sehat dan lezat dengan kombinasi roti gandum ini sangat direkomendasikan untuk kamu terutama yang sedang menjalankan program diet karena roti gandum mengandung serat yang tinggi.', 'caesar-salad.jpg', 25, 2, 284.00, 'Bahan : \r\n150 gram Selada Romaine / Romaine Lettuce potong kasar \r\n10 buah Cherry Tomato belah 2 \r\n2 sdm Keju Permesan / Parmesan Cheese 1 sdm/ porsi \r\n\r\nCroutons : \r\n2 lembar Roti Gandum / Whole Wheat Bread potong kotak kecil \r\n1 sdm Butter \r\n5 gram Petersely / Parsley cincang halus \r\n\r\nDressing : \r\n100 gram Yogurt Plain \r\n1/2 sdt PURA Sea Salt by @puraindonesia \r\n1/2 sdt PURA Anchovy Powder by @puraindonesia \r\n1 siung Bawang Putih / Garlic cincang halus \r\n1 sdm Madu / Honey \r\n1 sdm Air Lemon / Lemon Juice', 'Prepare :\r\n1. selada romaine, potong kasar\r\n2. cherry tomato, belah dua\r\n3. roti gandum, potong kotak\r\n4. parsley, cincang halus\r\n5. bawang putih, cincang halus \r\n\r\nStep [Croutons] :\r\n1. siapkan wajan, lelehkan butter\r\n2. setelah meleleh, masukan roti dan taburi dengan parsley, aduk rata\r\n3. masak dengan api kecil hingga kecoklatan dan kering, angkat sisihkan \r\n\r\n[Dressing]:\r\n4. siapkan mangkuk, campur bahan :\r\n     - yogurt\r\n     - Pura Himalayan Salt \r\n     - Pura Anchovy Powder\r\n     - bawang putih\r\n     - madu\r\n     - air lemon, aduk rata. sisihkan untuk nanti \r\n\r\n[Caesar Salad]\r\n5. siapkan mangkuk/piring besar, tata bahan :\r\n     - selada romaine\r\n     - cherry tomato\r\n     - croutons\r\n     - dressing\r\n     - keju parmesan, aduk rata. sajikan', 0, 0, 0, 0, 0, '2021-11-27 02:16:31', '2021-12-24 06:54:31'),
(12, 12, 'Resep ini mengandung jamur shimeji yang merupakan makanan terbaik untuk mengontrol berat badan dan juga menurunkan kolesterol.', 'bok-choy-mushroom.jpg', 20, 4, 69.00, 'Bahan : \r\n1/4 sdt PURA Sea Salt by @puraindonesia  \r\n1/2 sdt PURA Anchovy Powder by @Puraindonesia \r\n2 buah Pok Coy / Bhok Coy potong akar, uraikan \r\n75 gram Jamur Shimeji / Shimeji Mushroom potong akar, uraikan \r\n3 siung Bawang Putih / Garlic cincang halus \r\n3 gram Jahe / Ginger cincang halus \r\n1 sdt Minyak Wijen / Sesame Oil \r\n1 sdt Biji Wijen / Sesame Seed sangrai sampai kecoklatan \r\n100 ml Air / Water \r\n1 sdm Minyak Kelapa / Coconut Oil', 'Prepare :\r\n1. pok coy, potong pangkal, uraikan lalu cuci bersih\r\n2. jamur shimeji, potong akar, uraikan\r\n3. bawang putih, cincang halus\r\n4. jahe, kupas cincang halus\r\n5. biji wijen, sangrai sampai kecoklatan \r\n\r\nStep :\r\n1. siapkan wajan, panaskan minyak kelapa\r\n2. setelah panas, tumis bahan : \r\n     - bawang putih\r\n     - jahe\r\n     - jamur shimeji, aduk rata\r\n3. setelah tercampur rata, masukan pok coy, masak -+ 2 menit (sampai agak layu)\r\n4. setelah agak layu, masukan bahan : \r\n     - Pura Sea Salt\r\n     - Pura Anchovy Powder \r\n     - minyak wijen\r\n     - air, masak sampai air agak mengering\r\n5. setelah matang, angkat lalu tuang ke dalam piring\r\n6. sajikan dengan taburan biji wijen yang', 0, 0, 1, 0, 0, '2021-11-27 02:20:08', '2021-12-24 06:55:02'),
(13, 13, 'Resep masakan sehat untuk vegetarian bebas gluten. Makanan ini bisa menemani anda ketika bersantai, kerja maupun acara.', 'lime-avocado-pie.jpg', 90, 8, 245.00, 'Kulit Pie : \r\n75 gram Tepung Almond / Almond Flour \r\n50 gram Kacang Mente / Cashewnut sangrai api kecil sampai coklat \r\n30 gram Tepung Kelapa / Coconut Flour \r\n50 gram Maple Syrup \r\n1 sdm Minyak Kelapa / Coconut Oil \r\n1/4 sdt PURA Himalayan Salt by @puraindonesia \r\nLime Avocado Filling : \r\n200 gram Alpukat / Avocado kupas, ambil dagingnya, potong kotak \r\n50 ml Minyak Kelapa / Coconut Oil Extra Virgin \r\n1 sdt Jeruk Nipis / Lime juice \r\n1 buah Jeruk Nipis / Lime zest \r\n50 ml Susu Almond / Almond Milk \r\n30 gram Maple Syrup', 'Prepare :\r\n1. kacang mente, sangrai api kecil sampai coklat\r\n2. jeruk nipis peras airnya\r\n\r\nStep :\r\n[Kulit Pie]\r\n1. siapkan food processor, masukan bahan :\r\n     - tepung almond\r\n     - kacang mente\r\n     - tepung kelapa\r\n     - maple syrup\r\n     - minyak kelapa\r\n     - pura himalayan salt, haluskan\r\n2. siapkan loyang bulat, masukan campuran kulit pie\r\n3. ratakan lalu tekan-tekan dengan benda datar\r\n4. simpan kulit pie di freezer, lalu lanjut proses bahan filling\r\n\r\n[Filling]\r\n5. siapkan blender, masukan bahan :\r\n     - alpukat\r\n     - minyak kelapa\r\n     - juice jeruk nipis\r\n     - susu almond\r\n     - maple syrup, blender sampai halus\r\n6. keluarkan kulit pie dari kulkas, tuang bahan filling kedalam kulit pie\r\n7. hentakan lalu ratakan 8. simpan dalam freezer sampai agak mengeras (minimal 1 jam)\r\n9. setelah mengeras, keluarkan.\r\n10. beri taburan kulit jeruk nipis, potong jadi 8, sajikan', 0, 0, 0, 0, 0, '2021-11-27 02:22:47', '2021-12-24 06:55:30'),
(14, 14, 'Resep makanan dengan bahan ayam dan bumbu garlic ini sangat memanjakan lidah anda, dengan bahan yang mudah didapatkan dan mudah untuk diolah.', 'crispy-garlic-wings.jpg', 50, 4, 421.00, '10 pcs Sayap Ayam / Chicken Wings potong jadi 2 \r\n5 siung Bawang Putih / Garlic cincang halus \r\n1/2 sdt PURA Sea Salt by @puraindonesia \r\n1 sdt PURA Seasoning Chicken by @puraindonesia\r\n2 sdt Bawang Putih Bubuk / Garlic Powder \r\n1 sdt Kecap Asin / Soy Sauce \r\n1 sdt Minyak Wijen / Sesame Oil \r\n2 sdm Tepung Maizena / Cornstarch \r\n100 gram Tepung terigu / Wheat Flour\r\n200 gram PURA Tomato Sauce untuk saus cocolan', 'Prepare :\r\n1. sayap ayam, potong jadi 2\r\n2. bawang putih, cincang halus\r\n3. siapkan airfryer, pre-heat 160*c \r\n\r\nStep :\r\n1. siapkan mangkuk, campur bahan : \r\n     - sayap ayam\r\n     - bawang putih\r\n     - Pura Sea Salt\r\n     - pura seasoning chicken\r\n     - bawang putih bubuk\r\n     - kecap asin\r\n     - minyak wijen\r\n     - tepung maizena, aduk rata. marinasi simpan dalam kulkas 15 menit\r\n2. setelah 15 menit, keluarkan dari kulkas\r\n3. siapkan tepung terigu, balur sayap ayam dengan tepung\r\n4. masukan sayap ayam ke dalam keranjang airfryer\r\n5. goreng dengan airfryer dengan suhu 160*c selama 15 menit\r\n6. setelah 15menit, balik ayam, goreng lagi 10 menit\r\n7. setelah matang, keluarkan 8. sajikan dengan Pura Homemade Tomato Sauce', 1, 0, 0, 0, 0, '2021-11-27 02:24:55', '2021-12-24 06:56:00'),
(15, 15, 'Resep soup lezat dengan bahan jamur, tofu, dan rebung ini rendah kalori. Resep yang cocok dibuat saat musim penghujan untuk menghangatkan tubuh.', 'egg-drop-soup.jpg', 30, 4, 120.00, '1/2 sdt PURA Himalayan Salt by @puraindonesia\r\n1 sdm PURA Seasoning Chicken by @puraindonesia\r\n1/2 sdt PURA Anchovy Powder by @puraindonesia\r\n100 gram Rebung / Bamboo Shoot iris tipis\r\n2 buah Jamur Shiitake / Shiitake Mushroom rendam, iris tipis\r\n100 gram Tahu / Tofu potong kotak\r\n1 butir Putih Telur / Egg White\r\n2 siung Bawang Putih / Garlic cincang halus\r\n2 gram Jahe / Ginger cincang halus\r\n700 ml Air / Water\r\n3 sdm Gula Kelapa / Coconut Sugar\r\n1 sdt Minyak Wijen / Sesame Oil\r\n3 sdm Tepung Maizena / Cornstarch campur dengan 2sdm air\r\n5 gram Daun Ketumbar / Coriander Leaf untuk taburan', 'Prepare :\r\n1. rebung, rebus matang, iris tipis memanjang\r\n2. jamur shiitake, iris tipis memanjang\r\n3. tahu, iris tipis agak lebar\r\n4. bawang putih, cincang halus\r\n5. jahe, cincang halus\r\n6. daun ketumbar, petik daun\r\n7. telur, pisahkan putihnya\r\n8. tepung maizena, campur dengan 2sdm air\r\n​\r\nStep :\r\n1. siapkan panci, rebus air sampai mendidih\r\n2. setelah mendidih, masuakan bahan :\r\n     - bawang putih\r\n     - jahe\r\n     - rebung\r\n     - jamur shiitake\r\n     - pura himalayan salt\r\n     - pura seasoning chicken\r\n     - pura anchovy powder - gula kelapa, aduk rata. simmer 15 menit\r\n3. setelah 15 menit dan kuah mendidih, masukan maizena, aduk sampai mengental\r\n4. setelah mengental, masukan putih telur sambil diaduk\r\n5. setelah putih telur jadi, masukan minyak wijen, aduk rata lalu angkat\r\n6. tuang ke dalam mangkuk, sajikan dengan taburan daun ketumbar', 0, 0, 0, 0, 0, '2021-11-27 02:28:25', '2021-12-24 06:56:24'),
(16, 16, 'Resep bakso sapi yang mudah untuk diikuti dan sangat rekomended untuk dicoba di rumah.', 'bakso-sapi.jpg', 60, 4, 331.00, 'Bahan : \r\n200 gram Bihun / Vermicelli \r\n\r\nAdonan Bakso:\r\n300 gram Daging sapi giling / Ground Beef tanpa lemak \r\n1 sdm Bawang Merah Goreng / Fried Shallot \r\n1 sdm Bawang Putih Goreng / Fried Garlic \r\n1/2 sdt PURA Sea Salt by @puraindonesia\r\n1 sdt PURA Seasoning Beef by @puraindonesia\r\n1 sdt Gula Kelapa / Coconut Sugar \r\n1/4 sdt Lada Putih / White Pepper \r\n70 gram Tepung Tapioka / Tapioca Flour \r\n20 gram Putih Telur / Egg White \r\n100 gram Es Batu / Ice Cube hancurkan, bagi 2 (50gr - 50gr) \r\n\r\nKuah Kaldu\r\n1.000 ml Air / Water \r\n1 sdt PURA Sea Salt by @puraindonesia \r\n1 sdm PURA Seasoning Beef by @puraindonesia\r\n5 siung Bawang Putih / Garlic kupas, geprek \r\n1/2 buah Bawang Bombay / Onion kupas, biarkan utuh \r\n1/2 buah Wortel / Carrot kupas, potong kasar \r\n30 gram Daun Bawang / Spring Onion ikat', 'PREPARE :\r\n1. telur, pisahkan putihnya\r\n2. es batu, hancurkan kasar\r\n3. bawang putih, geprek\r\n4. wortel, kupas potong kasar\r\n5. daun bawang : \r\n     - 20gr utuh lalu ikat\r\n     - 10gr iris tipis untuk taburan\r\n6. rebus air sampai mendidih (untuk merebus baso)\r\n7. bihun, rebus sampai matang -+ 4-5 menit \r\n\r\nSTEP :\r\n1. [Kuah Kaldu]\r\nsiapkan panci, masukan bahan :\r\n     - air (1000 ml)\r\n     - wortel\r\n     - bawang putih\r\n     - daun bawang\r\n     - bawang bombay\r\n     - Pura Sea Salt\r\n     - Pura Seasoning Beef. masak api kecil (simmer) -+ 30 menit.\r\n2. [Baso]\r\nsiapkan food processor, masukan bahan :\r\n     - daging sapi giling\r\n     - bawang putih goreng\r\n     - bawang merah goreng\r\n     - Pura Sea Salt\r\n     - Pura Seasoning Beef\r\n     - gula kelapa \r\n     - lada putih\r\n     - es batu (50gr) blender sampai tercampur rata\r\n3. setelah itu, masukan bahan :\r\n     - tepung tapioka\r\n     - es batu\r\n     - putih telur, blender lagi hingga tercampur rata dan halus.\r\n4. setelah halus, pindahkan adonan ke mangkuk\r\n5. siapkan air yang mendidih tadi, matikan api\r\n6. siapkan adonan bakso, bentuk bulat dengan tangan\r\n7. setelah bentuk bulat, ambil dengan sendok basah agar tidak lengket\r\n8. masukan bakso kedalam air panas, lanjutkan sampai adonan habis\r\n9. setelah adonan habis, simmer sampai bakso mengapung\r\n10. siapkan mangkuk saji, tata bahan : \r\n     - bihun\r\n     - bakso\r\n     - kuah kaldu\r\n     - taburan daun bawang, sajikan', 1, 0, 1, 0, 0, '2021-11-27 02:31:35', '2021-12-24 06:57:23'),
(17, 17, 'Resep kimchi home made khas Korea yang tidak kalah lezat. Banyak manfaat dari mengkonsumsi kimchi yaitu menjaga kesehatan jantung, membantu menurunkan berat badan, dan lain - lain.', 'kimchi.jpg', 2880, 12, 76.00, 'Bahan : \r\n60 gram PURA  Sea Salt by @puraindonesia\r\n1,5 kg Sawi Putih / Nappa Cabbage \r\n200 gram Lobak / Radish kupas, potong katik \r\n200 gram Wortel / Carrot kupas, potong katik \r\n30 gram Daun Bawang / Spring Onion potong 4cm\r\n\r\nSeasoning & Spices : \r\n2 sdt PURA Anchovy Powder by @puraindonesia\r\n50 gram Gochugaru / Korean Chili Pepper Flake \r\n15 siung Bawang Putih / Garlic kupas \r\n1 buah Bawang Bombay / Onion kupas, potong kasar \r\n15 gram Jahe / Ginger kupas, potong kasar\r\n\r\nPorridge Mixture : \r\n20 gram Tepung Ketan / Glutinous Rice Flour \r\n400 ml Air / Water \r\n50 gram Gula Kelapa / Coconut Sugar', 'Prepare :\r\n1. siapkan kotak kedap udara ukuran 3 Liter atau lebih\r\n2. sawi putih, belah 4, bilas\r\n3. lobak, kupas iris tipis katik\r\n4. wortel, kupas, iris tipis katik\r\n5. daun bawang, potong 4cm\r\n6. bawang putih, kupas\r\n7. bawang putih, potong kasar\r\n8. jahe, kupas\r\n​\r\nStep :\r\n1. siapkan sawi putih, lumuri merata dengan pura himalayan salt\r\n2. letakan di wadah, diamkan 90 menit hingga mengeluarkan air *balik sawi setiap 30 menit.\r\n3. [campuran bubur]\r\nsiapkan panci, masukan bahan:\r\n     - tepung ketan\r\n     - air\r\n     - gula kelapa, aduk rata. masak dengan api kecil hingga mendidh. dinginkan\r\n4. siapkan food processor, haluskan bahan:\r\n     - bawang putih\r\n     - bawang bombay\r\n     - jahe. setelah halus, sisihkan untuk nanti\r\n5. setelah 90 menit sawi putih direndam, bilas dengan air matang, tiriskan\r\n6. siapkan mangkuk besar, masukan bahan:\r\n     - bawang putih, bombay dan jahe yang sudah dihaluskan\r\n     - campuran bubur\r\n     - pura anchovy powder\r\n     - gochugaru\r\n     - lobak\r\n     - wortel\r\n     - daun bawang, aduk rata.\r\n7. lumuri sawi putih dengan bumbu rendaman secara merata, lembar demi lembar\r\n8. setelah terlumuri, letakan di wadah kedap udara, tekan agar padat.\r\n9. tutup kotak. simpan di suhu ruangan selama 2 hari', 0, 0, 0, 1, 0, '2021-11-27 02:35:00', '2021-12-24 06:58:01'),
(18, 18, 'Roti yang dibelah bagian tengahnya ini diisi dengan krim keju dan campuran bawang putih yang menggoda selera. Rotinya yang lembut serta isiannya yang creamy menjadi perpaduan yang sempurna.', 'korean-cream-cheese-garlic-bread.jpg', 160, 4, 355.00, 'Bahan : \r\nRolled Bread : \r\n1/4 sdt PURA Sea Salt by @puraindonesia\r\n25 gram Gula Kelapa / Coconut Sugar \r\n50 gram Susu / Milk suam suam kuku \r\n5 gram Ragi Instan / Yeast \r\n1/2 butir Telur / Egg \r\n10 gram Butter soft \r\n125 gram Tepung terigu / Wheat Flour (High Protein Flour) \r\n\r\nCream Cheese Filling : \r\n100 gram Krim Keju / Cream Cheese soft \r\n1 sdm Gula Kelapa / Coconut Sugar \r\n15 gram Susu / Milk \r\n\r\nGarlic Butter : \r\n1/2 butir Telur / Egg \r\n30 gram Butter melted \r\n5 siung Bawang Putih / Garlic cincang halus \r\n1 sdm Petersely / Parsley (kering) \r\n25 ml Susu / Milk \r\n1 sdm Gula Kelapa / Coconut Sugar \r\n1/4 sdt Pura Himalayan Salt', 'Prepare :\r\n1. pre-heat oven 180*c (minimal 15 menit sebelum memanggang)\r\n2. siapkan loyan dan lapisi dengan parchment paper\r\n3. telur, kocok lali bagi dua (1/2 untuk adonan 1/2 untuk garlic butter)\r\n4. krim keju, lembutkan di suhu ruangan\r\n5. butter untuk adonan roti, lembutkan di suhu ruangan\r\n6. butter untuk garlic butter, lelehkan\r\n7. bawang putih, cincang halus \r\n\r\nStep :\r\n1. [adonan roti]\r\nsiapkan mangkuk, campur bahan :\r\n     - susu\r\n     - gula kelapa\r\n     - ragi, aduk rata.\r\n2. setelah tercampur rata, masukan bahan :\r\n     - telur\r\n     - tepung terigu\r\n     - pura himalayan salt, aduk rata. lalu uleni hingga menjadi adonan\r\n3. setelah menjadi adonan, pipihkan sedikit lalu masukan butter, uleni lagi hingga kalis\r\n4. setelah kalis, bulatkan dan simpan dalam mangkuk, tutupi dengan kain (proofing 1 jam)\r\n5. [cream cheese] selagi menunggu adonan roti, aduk krim keju hingga lembut\r\n6. setelah lembut, masukan bahan :\r\n     - gula kelapa\r\n     - susu, aduk rata. lalu masukan ke dalam piping bag. simpan dalam lemari pendingin\r\n7. [garlic butter]\r\nsiapkan mangkuk, campur bahan :\r\n     - telur\r\n     - butter (melted)\r\n     - bawang putih\r\n     - parsley kering\r\n     - susu\r\n     - gula kelapa\r\n     - Pura Sea Salt, aduk rata\r\n8. setelah 1 jam, bagi adonan jadi 4. bulatkan lalu tata diloyang \r\n9. istirahatkan kembali selama 30 menit.\r\n10. setelah 30 menit, bake roti dengan suhu 180*c selama 20-25 menit. \r\n11. setelah roti matang, keluarkan dan dinginkan 10 menit \r\n12. setelah roti dingin, belah roti menjadi 6 (tidak sampai putus) \r\n13. isi selah selah roti dengan campuran cream cheese.\r\n14. oleskan roti dengan campuran garlic butter secara merata\r\n15. bake kembali roti dengan suhu 180*c selama 10 menit.\r\n16. setelah matang, keluarkan dan sajikan', 0, 0, 0, 0, 0, '2021-11-27 02:37:22', '2021-12-24 06:58:50');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
