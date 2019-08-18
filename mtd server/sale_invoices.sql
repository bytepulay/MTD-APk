-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 09, 2019 at 03:18 AM
-- Server version: 10.2.25-MariaDB
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u247767289_ydav`
--

-- --------------------------------------------------------

--
-- Table structure for table `sale_invoices`
--

CREATE TABLE `sale_invoices` (
  `id` int(11) NOT NULL,
  `sale_user_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `voucher_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sale_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qty` varchar(225) COLLATE utf8_unicode_ci DEFAULT NULL,
  `point_eight` varchar(225) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_ayot` varchar(225) COLLATE utf8_unicode_ci DEFAULT NULL,
  `kyat` varchar(225) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pal` varchar(225) COLLATE utf8_unicode_ci DEFAULT NULL,
  `yae` varchar(225) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gram` varchar(225) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cupon_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_id` varchar(225) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ring` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ring_number` varchar(225) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ring_point_eight` varchar(225) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ring_kyat` varchar(225) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ring_pal` varchar(225) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ring_yae` varchar(225) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bangles` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bangles_number` varchar(225) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bangles_point_eight` varchar(225) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bangles_kyat` varchar(225) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bangles_pal` varchar(225) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bangles_yae` varchar(225) COLLATE utf8_unicode_ci DEFAULT NULL,
  `necklace` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `necklace_number` varchar(225) COLLATE utf8_unicode_ci DEFAULT NULL,
  `necklace_point_eight` varchar(225) COLLATE utf8_unicode_ci DEFAULT NULL,
  `necklace_kyat` varchar(225) COLLATE utf8_unicode_ci DEFAULT NULL,
  `necklace_pal` varchar(225) COLLATE utf8_unicode_ci DEFAULT NULL,
  `necklace_yae` varchar(225) COLLATE utf8_unicode_ci DEFAULT NULL,
  `earring` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `earring_number` varchar(225) COLLATE utf8_unicode_ci DEFAULT NULL,
  `earring_point_eight` varchar(225) COLLATE utf8_unicode_ci DEFAULT NULL,
  `earring_kyat` varchar(225) COLLATE utf8_unicode_ci DEFAULT NULL,
  `earring_pal` varchar(225) COLLATE utf8_unicode_ci DEFAULT NULL,
  `earring_yae` varchar(225) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sale_invoices`
--

INSERT INTO `sale_invoices` (`id`, `sale_user_name`, `voucher_number`, `sale_date`, `qty`, `point_eight`, `total_ayot`, `kyat`, `pal`, `yae`, `gram`, `cupon_code`, `customer_id`, `ring`, `ring_number`, `ring_point_eight`, `ring_kyat`, `ring_pal`, `ring_yae`, `bangles`, `bangles_number`, `bangles_point_eight`, `bangles_kyat`, `bangles_pal`, `bangles_yae`, `necklace`, `necklace_number`, `necklace_point_eight`, `necklace_kyat`, `necklace_pal`, `necklace_yae`, `earring`, `earring_number`, `earring_point_eight`, `earring_kyat`, `earring_pal`, `earring_yae`) VALUES
(2, 'kyaw kyaw', 'MTD1001', '08/06/19', '20', '4', '18', '10', '30', '12', '100', '', '1', 'rings', '10', '2', '5', '15', '6', 'bangles', '10', '2', '5', '15', '6', '', '', '', '', '', '', '', '', '', '', '', ''),
(3, 'kyaw kyaw', 'mrd134', '08/07/19', '80', '5', '78', '15', '5', '4', '18', '', '1', 'sil er', '80', '5', '15', '5', '4', '', '', '', '', '', '', 'fyhh', '50', '', '15', '5', '5', '', '', '', '', '', ''),
(4, 'naung naung', '7000', '08/08/19', '20', '8', '25', '5', '12', '6', '100', '848496', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'naung naung', '300', '08/08/19', '12', '2', '21', '1', '13', '6', '30', '12', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'naung naung', 'n900', '08/08/19', '20', '2', '20', '24', '4', '1', '402.69', '849404', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sale_invoices`
--
ALTER TABLE `sale_invoices`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sale_invoices`
--
ALTER TABLE `sale_invoices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
