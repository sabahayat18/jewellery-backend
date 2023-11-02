-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 21, 2023 at 12:32 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jewellery_data`
--

-- --------------------------------------------------------

--
-- Table structure for table `all_products`
--

CREATE TABLE `all_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `price` int(11) NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `pictures` text NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `all_products`
--

INSERT INTO `all_products` (`id`, `name`, `price`, `category_id`, `pictures`, `description`) VALUES
(1, 'Diamond Ring', 10000, 1, 'https://pcchandraindia.com/storage/product/medium/18KVJVTR56_1.png?v=98.7', '18k Gold and Diamond Ring'),
(2, 'Diamond Ring', 12000, 1, 'https://cdn.caratlane.com/media/catalog/product/J/R/JR05980-1RP900_1_lar.jpg', 'Intertwined Glim Diamond Ring'),
(3, 'Diamond Ring', 10000, 1, 'https://cdn.caratlane.com/media/catalog/product/J/R/JR05980-1RP900_1_lar.jpg', '18k Gold Ring'),
(4, 'Diamond Ring', 12000, 1, 'https://kinclimg5.bluestone.com/f_webp,c_scale,w_1024,b_rgb:f0f0f0/giproduct/BIAR0097R13_YAA18DIG6XXXXXXXX_ABCD00-PICS-00001-1024-64527.png', 'Triune Sparkle Diamond Ring.'),
(5, 'Diamond Ring', 10000, 1, 'https://kinclimg8.bluestone.com/f_webp,c_scale,w_1024,b_rgb:f0f0f0/giproduct/BISK0368R03_YAA18DIG6XXXXXXXX_ABCD00-PICS-00001-1024-66176.png', 'The Ayane Band Ring.\r\n'),
(6, 'Diamond Earring', 12000, 1, 'https://kinclimg0.bluestone.com/f_webp,c_scale,w_1024,b_rgb:f0f0f0/giproduct/BISP0356H19_YAA18DIG6SYRUXXXX_ABCD00-PICS-00004-1024-18356.png', 'Madesha Drop Earrings.'),
(7, 'Diamond Earring', 12000, 1, 'https://kinclimg0.bluestone.com/f_webp,c_scale,w_1024,b_rgb:f0f0f0/giproduct/BISP0356H19_YAA18DIG6SYRUXXXX_ABCD00-PICS-00004-1024-18356.png', '18k Gold Ring.'),
(8, 'Diamond Earring', 12000, 1, 'https://cdn.caratlane.com/media/catalog/product/J/E/JE07604-1YP6P0_1_lar.jpg', '18k Gold Ring.'),
(9, 'Diamond Necklace', 120000, 1, 'https://cdn.caratlane.com/media/catalog/product/S/L/SL00020-WGP900_1_lar.jpg', 'Diamond Necklace Quarter Solitaire.'),
(10, 'Diamond Necklace', 120000, 1, 'https://cdn.caratlane.com/media/catalog/product/S/L/SL00026-YGP900_1_lar.jpg', 'Diamond Necklace Quarter Solitaire.'),
(11, 'Gold Ring', 10000, 2, 'https://www.tanishq.co.in/dw/image/v2/BKCK_PRD/on/demandware.static/-/Sites-Tanishq-product-catalog/default/dwc22a8166/images/hi-res/51T340FAMAA00_1.jpg?sw=360&sh=360', '18K Gold Ring.'),
(12, 'Gold Ring', 12000, 2, 'https://www.tanishq.co.in/dw/image/v2/BKCK_PRD/on/demandware.static/-/Sites-Tanishq-product-catalog/default/dwc22a8166/images/hi-res/51T340FAMAA00_1.jpg?sw=360&sh=360', '18K Gold Ring.'),
(13, 'Gold Ring', 15000, 2, 'https://www.tanishq.co.in/dw/image/v2/BKCK_PRD/on/demandware.static/-/Sites-Tanishq-product-catalog/default/dw128654aa/images/hi-res/51D3B1FXWAA00_1.jpg?sw=360&sh=360', '22K Gold Ring.'),
(14, 'Gold Necklace', 15000, 2, 'https://www.tanishq.co.in/dw/image/v2/BKCK_PRD/on/demandware.static/-/Sites-Tanishq-product-catalog/default/dw0a49d3cc/images/hi-res/51D3B1NIVAA00_1.jpg?sw=360&sh=360', '22K Gold Necklace.'),
(15, 'Gold Necklace', 12000, 2, 'https://www.tanishq.co.in/dw/image/v2/BKCK_PRD/on/demandware.static/-/Sites-Tanishq-product-catalog/default/dw37aec4a6/images/hi-res/512311NCLAA00_1.jpg?sw=360&sh=360', '22K Gold Necklace.'),
(16, 'Gold Necklace', 12000, 2, 'https://www.tanishq.co.in/dw/image/v2/BKCK_PRD/on/demandware.static/-/Sites-Tanishq-product-catalog/default/dw545619e5/images/hi-res/512113NSSAA00_1.jpg?sw=360&sh=360', '24K Gold Necklace.'),
(17, 'Gold Earring', 20000, 2, 'https://www.tanishq.co.in/dw/image/v2/BKCK_PRD/on/demandware.static/-/Sites-Tanishq-product-catalog/default/dw66a4bc0f/images/hi-res/502D18SBVAGA00_1.jpg?sw=360&sh=360', '24k Gold Earring.'),
(18, 'Gold Earring', 30000, 2, 'https://www.tanishq.co.in/dw/image/v2/BKCK_PRD/on/demandware.static/-/Sites-Tanishq-product-catalog/default/dw32c9b1a1/images/hi-res/510115SMAAGA00_1.jpg?sw=360&sh=360', '18k Gold Earring.'),
(19, 'Gold Earring', 40000, 2, 'https://www.tanishq.co.in/dw/image/v2/BKCK_PRD/on/demandware.static/-/Sites-Tanishq-product-catalog/default/dwb7602ebe/images/hi-res/51D3A1DBSABA00_1.jpg?sw=360&sh=360', '18k Gold Earring.'),
(20, 'Gold Earring', 20000, 2, 'https://www.tanishq.co.in/dw/image/v2/BKCK_PRD/on/demandware.static/-/Sites-Tanishq-product-catalog/default/dw25c6cbfb/images/hi-res/51D3MEDHCABA00_1.jpg?sw=360&sh=360', '18k Gold Earring.'),
(21, 'Silver Ring', 10000, 3, 'https://www.tanishq.co.in/dw/image/v2/BKCK_PRD/on/demandware.static/-/Sites-Tanishq-product-catalog/default/dw9d510818/images/hi-res/50O3I1FMLAA09_1.jpg?sw=360&sh=360', 'Silver Finger Ring.'),
(22, 'Silver Ring', 12000, 3, 'https://www.tanishq.co.in/dw/image/v2/BKCK_PRD/on/demandware.static/-/Sites-Tanishq-product-catalog/default/dw64f3ec57/images/hi-res/T43115FAOAQ04_1.jpg?sw=360&sh=360', 'Silver Finger Ring.'),
(23, 'Silver Ring', 10000, 3, 'https://www.tanishq.co.in/dw/image/v2/BKCK_PRD/on/demandware.static/-/Sites-Tanishq-product-catalog/default/dw64f3ec57/images/hi-res/T43115FAOAQ04_1.jpg?sw=360&sh=360', 'Silver Finger Ring.'),
(24, 'Silver Ring', 10000, 3, 'https://www.tanishq.co.in/dw/image/v2/BKCK_PRD/on/demandware.static/-/Sites-Tanishq-product-catalog/default/dw1168e9e1/images/hi-res/741188FVLAA09_1.jpg?sw=360&sh=360', 'Silver Finger Ring.'),
(25, 'Silver Necklace', 30000, 3, 'https://pcchandraindia.com/storage/product/medium/SV105SH1156_1.png?v=98.69', 'Silver Necklace.'),
(26, 'Silver Necklace', 2000, 3, 'https://pcchandraindia.com/storage/product/medium/SV105SN76_1.png?v=98.69', 'Silver Necklace.'),
(27, 'Silver Necklace', 2000, 3, 'https://pcchandraindia.com/storage/product/medium/SV105SH1149_1.png?v=98.69', 'Silver Necklace.'),
(28, 'Silver Earring', 30000, 3, 'https://pcchandraindia.com/storage/product/medium/SV105SPA1219_1.png?v=98.69', 'Silver Earring.'),
(29, 'Silver Earring', 4000, 3, 'https://pcchandraindia.com/storage/product/medium/SV105SPA1216_1.png?v=98.69', 'Silver Earring.'),
(30, 'Silver Earring', 2000, 3, 'https://pcchandraindia.com/storage/product/medium/SV105SPA1220_1.png?v=98.69', 'Silver Earring.');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `name`) VALUES
(1, 'Diamond '),
(2, 'Gold'),
(3, 'Silver');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `contact_id` int(11) UNSIGNED NOT NULL,
  `username` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `message` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`contact_id`, `username`, `email`, `message`) VALUES
(1, 'Shirin Hayat', 'shirin@gmail.com', 'xyzxyz........'),
(2, 'koi naam nahi', 'noemail@email.com', 'no message!!!!'),
(3, 'john', 'john@hmail.com', 'asdfgl;lkjhgghjkkbnm'),
(4, 'undefined', 'undefined', 'undefined'),
(5, 'undefined', 'undefined', 'undefined'),
(6, 'undefined', 'undefined', 'undefined'),
(7, 'undefined', 'undefined', 'undefined'),
(8, 'undefined', 'undefined', 'undefined'),
(9, 'john xyyy', 'johsdfgn@hmail.com', 'aaaaaa'),
(10, 'undefined', 'undefined', 'undefined'),
(12, 'Anjum Nasim', 'nasim@gmail.com', 'abcdef.......');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `email`, `password`) VALUES
(1, 'sabahayat18@gmail.com', 'saba18'),
(3, 'saba18@gmail.com', 'saba18');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `reg_id` int(10) UNSIGNED NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` text NOT NULL,
  `confirmPassword` text NOT NULL,
  `contact` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`reg_id`, `user_name`, `email`, `password`, `confirmPassword`, `contact`) VALUES
(1, 'shirin', 'shirin1@gmail.com', 's1234', 's1234', '7003123456'),
(2, 'saba ', 'saba18@gmail.com', 'saba18', 'undefined', '7044123455'),
(3, 'xyz', 'xyz@gmail.com', 'xyz123', 'xyz123', '123456789111'),
(4, 'Faiz Hayat', 'faiz@gmail.com', 'faiz1', 'faiz1', '9090909090'),
(5, 'Shahbaz Hayat', 'shahbaz@gmail.com', 'shahbaz9', 'shahbaz9', '12345678987'),
(6, 'shirin', 'shirin12@gmail.com', '1234s', 'undefined', '9898989899'),
(7, 'shirin', 'shirin12@gmail.com', '1234s', 'undefined', '9898989899'),
(8, 'shirin', 'shirin12@gmail.com', '1234s', 'undefined', '9898989899'),
(9, 'shirin', 'shirin12@gmail.com', '1234s', '1234s', '9898989899'),
(10, 'asas', 'asas@gmail.com', '12345', '12345', '1234567890'),
(11, 'shirin', 'shirin12@gmail.com', '1234s', '1234s', '9898989899'),
(12, 'shirin', 'shirin12@gmail.com', '1234s', '1234s', '9898989899'),
(13, 'abc', 'abc@gmail.com', '1234s', '1234s', '9898989899');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `all_products`
--
ALTER TABLE `all_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`reg_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `all_products`
--
ALTER TABLE `all_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `contact_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `reg_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
