-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 09, 2019 at 03:19 AM
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
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(11) NOT NULL,
  `name` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `user_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `shop_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `dob` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `nrc` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `town` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `profile` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `name`, `user_name`, `shop_name`, `phone_number`, `address`, `dob`, `nrc`, `town`, `path`, `profile`, `status`) VALUES
(1, 'Ma Ni', 'nini20190806_101209', 'U Hton', ' 09912345678', 'Yangon', ' 08/06/91', '12/ABC(N)123456', 'Mayangone', 'uploads/nini20190806_101209.jpg', 'uploads/profilenini20190806_101209.jpg', 0),
(2, 'ko ko', 'koko20190806_152550', 'ko', ' 04646', 'gaah', ' 08/06/19', 'yqiq8', 'uaiw', 'uploads/koko20190806_152550.jpg', 'uploads/profilekoko20190806_152550.jpg', 0),
(3, 'nyi nyi', 'nyinyi20190806_160916', 'nyi', ' 0964654264', 'yangon', ' 08/06/19', '13quq', 'yangon', 'uploads/nyinyi20190806_160916.jpg', NULL, 0),
(4, 'Ma Ma ', 'mama20190807_150857', 'Shwe Sg', ' 09996636', 'yangon', ' 08/08/19', '12', 'yabgon', 'uploads/mama20190807_150857.jpg', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `fruits`
--

CREATE TABLE `fruits` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fruits`
--

INSERT INTO `fruits` (`id`, `name`, `address`) VALUES
(1, 'apple', 'yangon'),
(2, 'orange', 'Mandalay'),
(3, 'Mango', 'Maubin'),
(4, 'banana', 'Taunggyi');

-- --------------------------------------------------------

--
-- Table structure for table `imageinfo`
--

CREATE TABLE `imageinfo` (
  `id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `imageinfo`
--

INSERT INTO `imageinfo` (`id`, `title`, `path`) VALUES
(6, 'oppo', 'uploads/oppo.jpg'),
(7, 'samsung', 'uploads/samsung.jpg'),
(8, 'vivo', 'uploads/vivo.jpg'),
(10, '', 'uploads/.jpg'),
(11, 'persent', 'uploads/persent.jpg'),
(12, 'vivovbjkk', 'uploads/vivovbjkk.jpg'),
(13, '', 'uploads/.jpg'),
(14, 'nnnnn', 'uploads/nnnnn.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `imageinfo1`
--

CREATE TABLE `imageinfo1` (
  `customer_id` int(11) NOT NULL,
  `name` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `user_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `shop_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `dob` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `nrc` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `town` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `imageinfo1`
--

INSERT INTO `imageinfo1` (`customer_id`, `name`, `user_name`, `shop_name`, `phone_number`, `address`, `dob`, `nrc`, `town`, `path`) VALUES
(1, 'Jj', 'hzjs', 'vzbz', ' 7679', '', ' yaha', 'haha', 'yaha', 'uploads/hzjs.jpg'),
(2, 'Jj', 'hzjs', 'vzbz', ' 7679', '', ' yaha', 'haha', 'yaha', 'uploads/hzjs.jpg'),
(3, 'Jj', 'hzjs', 'vzbz', ' 7679', '', ' yaha', 'haha', 'yaha', 'uploads/hzjs.jpg'),
(4, 'Jj', 'hzjs', 'vzbz', ' 7679', '', ' yaha', 'haha', 'yaha', 'uploads/hzjs.jpg'),
(5, 'Jj', 'hzjs', 'vzbz', ' 7679', '', ' yaha', 'haha', 'yaha', 'uploads/hzjs.jpg'),
(6, 'ppoo', 'ppoo', 'popo', ' 9494646', '', ' 07/31/19', 'yahs', 'gagags', 'uploads/ppoo.jpg'),
(7, 'ppoo', 'ppoo', 'popo', ' 9494646', '', ' 07/31/19', 'yahs', 'gagags', 'uploads/ppoo.jpg'),
(8, 'ppoo', 'ppoo', 'popo', ' 9494646', '', ' 07/31/19', 'yahs', 'gagags', 'uploads/ppoo.jpg'),
(9, 'hduf', 'yojgi', 'fuf', ' 5365', '', ' 07/31/19', 'fuf', 'duyx', 'uploads/yojgi.jpg'),
(10, 'hduf', 'yojgi', 'fuf', ' 5365', '', ' 07/31/19', 'fuf', 'duyx', 'uploads/yojgi.jpg'),
(11, 'ahwj', 'uwjs', 'uaja', ' 678740', '', ' 07/31/19', 'yaha', 'Hha', 'uploads/uwjs.jpg'),
(12, 'ahwj', 'uwjs', 'uaja', ' 678740', '', ' 07/31/19', 'yaha', 'Hha', 'uploads/uwjs.jpg'),
(13, 'ahwj', 'uwjs', 'uaja', ' 678740', '', ' 07/31/19', 'yaha', 'Hha', 'uploads/uwjs.jpg'),
(14, 'ahwj', 'uwjs', 'uaja', ' 678740', '', ' 07/31/19', 'yaha', 'Hha', 'uploads/uwjs.jpg'),
(15, 'fuf7', 'ufgugi', 'r6f', ' 838', '', ' ufu', 'd6d', 'd7d', 'uploads/ufgugi.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `login_info`
--

CREATE TABLE `login_info` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_password` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `login_info`
--

INSERT INTO `login_info` (`id`, `name`, `user_name`, `user_password`) VALUES
(1, 'Mg Mg', 'mgmg@gmail.com', 'mgmg12345'),
(2, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `notification__groups`
--

CREATE TABLE `notification__groups` (
  `id` int(11) NOT NULL,
  `title` varchar(225) COLLATE utf8_unicode_ci DEFAULT NULL,
  `noti_group` text COLLATE utf8_unicode_ci NOT NULL,
  `cust_id` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `noti_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `notification__groups`
--

INSERT INTO `notification__groups` (`id`, `title`, `noti_group`, `cust_id`, `noti_date`) VALUES
(1, 'first promotion', 'hello everybody', '', '2019-08-04'),
(2, 'second Promotion', 'hello eveybody go to rest', '', '2019-08-05');

-- --------------------------------------------------------

--
-- Table structure for table `notification__onces`
--

CREATE TABLE `notification__onces` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `title` varchar(225) COLLATE utf8_unicode_ci DEFAULT NULL,
  `noti_one` text COLLATE utf8_unicode_ci NOT NULL,
  `noti_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `notification__onces`
--

INSERT INTO `notification__onces` (`id`, `customer_id`, `title`, `noti_one`, `noti_date`) VALUES
(1, 16, 'First Promotion', 'promotion one', '2019-08-04'),
(2, 1, 'Second Promotion', 'go to rest', '2019-08-05'),
(3, 16, 'Second Promotion', 'go to rest', '2019-08-04');

-- --------------------------------------------------------

--
-- Table structure for table `order_invoices`
--

CREATE TABLE `order_invoices` (
  `id` int(11) NOT NULL,
  `sale_user_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `voucher_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order_date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
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
-- Dumping data for table `order_invoices`
--

INSERT INTO `order_invoices` (`id`, `sale_user_name`, `voucher_number`, `order_date`, `qty`, `point_eight`, `total_ayot`, `kyat`, `pal`, `yae`, `gram`, `cupon_code`, `customer_id`, `ring`, `ring_number`, `ring_point_eight`, `ring_kyat`, `ring_pal`, `ring_yae`, `bangles`, `bangles_number`, `bangles_point_eight`, `bangles_kyat`, `bangles_pal`, `bangles_yae`, `necklace`, `necklace_number`, `necklace_point_eight`, `necklace_kyat`, `necklace_pal`, `necklace_yae`, `earring`, `earring_number`, `earring_point_eight`, `earring_kyat`, `earring_pal`, `earring_yae`) VALUES
(2, 'kyaw kyaw', '0500', '08/08/19', '20', '2', '8.5', '24', '4', '1', '402.69', 'may427268', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `name` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `user_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `dob` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `profile` varchar(225) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `name`, `user_name`, `address`, `phone_number`, `dob`, `profile`) VALUES
(1, 'kyaw kyaw', 'kyaw kyaw', 'yangon', '096014111234', '8/5/2000', 'uploads/kyaw kyaw.jpg'),
(2, 'naung naung', 'naung naung', 'mandalay', '09890876543', '9/10/16', ''),
(3, 'aung aung', 'aung aung', 'mandalay', '09890876543', '9/10/16', '');

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

-- --------------------------------------------------------

--
-- Table structure for table `vegitables`
--

CREATE TABLE `vegitables` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vegitables`
--

INSERT INTO `vegitables` (`id`, `name`, `address`) VALUES
(1, 'Cabbage', 'Yangon'),
(2, 'Carrots', 'Mandalay'),
(3, 'potatoes', 'Maubin'),
(4, 'Corn', 'Taunggyi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `imageinfo`
--
ALTER TABLE `imageinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `imageinfo1`
--
ALTER TABLE `imageinfo1`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `login_info`
--
ALTER TABLE `login_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification__groups`
--
ALTER TABLE `notification__groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification__onces`
--
ALTER TABLE `notification__onces`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_invoices`
--
ALTER TABLE `order_invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sale_invoices`
--
ALTER TABLE `sale_invoices`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `imageinfo`
--
ALTER TABLE `imageinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `imageinfo1`
--
ALTER TABLE `imageinfo1`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `login_info`
--
ALTER TABLE `login_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `notification__groups`
--
ALTER TABLE `notification__groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `notification__onces`
--
ALTER TABLE `notification__onces`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `order_invoices`
--
ALTER TABLE `order_invoices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sale_invoices`
--
ALTER TABLE `sale_invoices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
