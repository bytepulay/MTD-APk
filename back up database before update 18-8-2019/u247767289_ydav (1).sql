-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 18, 2019 at 02:50 PM
-- Server version: 5.7.27-0ubuntu0.16.04.1
-- PHP Version: 7.0.33-0ubuntu0.16.04.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
  `status` tinyint(1) NOT NULL,
  `debit_kyat` varchar(225) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `debit_pal` varchar(225) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `debit_yae` varchar(225) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `password` varchar(225) COLLATE utf8_unicode_ci DEFAULT NULL,
  `voucher_number` varchar(225) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sale_date` varchar(225) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sale_name` varchar(225) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `name`, `user_name`, `shop_name`, `phone_number`, `address`, `dob`, `nrc`, `town`, `path`, `profile`, `status`, `debit_kyat`, `debit_pal`, `debit_yae`, `password`, `voucher_number`, `sale_date`, `sale_name`, `created_at`) VALUES
(1, 'Ma Ni', 'nini20190806_101209', 'U Hton', ' 09912345678', 'Yangon', ' 08/06/91', '12/ABC(N)123456', 'Mayangone', 'uploads/nini20190806_101209.jpg', 'uploads/profilenini20190806_101209.jpg', 0, '8', '0', '4.32', '234567890', '001', '08/08/2019', 'naung naung', NULL),
(2, 'ko ko', 'koko20190806_152550', 'ko', ' 04646', 'gaah', ' 08/06/19', 'yqiq8', 'uaiw', 'uploads/koko20190806_152550.jpg', 'uploads/profilekoko20190806_152550.jpg', 0, '0', '0', '0', NULL, '', '', '', NULL),
(3, 'nyi nyi', 'nyinyi20190806_160916', 'nyi', ' 0964654264', 'yangon', ' 08/06/19', '13quq', 'yangon', 'uploads/nyinyi20190806_160916.jpg', NULL, 0, '0', '0', '0', NULL, '', '', '', NULL),
(4, 'Ma Ma ', 'mama20190807_150857', 'Shwe Sg', ' 09996636', 'yangon', ' 08/08/19', '12', 'yabgon', 'uploads/mama20190807_150857.jpg', NULL, 0, '4', '0', '1.08', NULL, '', '', '', NULL);

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
  `sale_user_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `voucher_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_kyat` varchar(225) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `total_pal` varchar(225) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `total_yae` varchar(225) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `qty` varchar(225) COLLATE utf8_unicode_ci DEFAULT NULL,
  `point_eight` varchar(225) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_ayot_kyat` varchar(225) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_ayot_pal` varchar(225) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_ayot_yae` varchar(225) COLLATE utf8_unicode_ci DEFAULT NULL,
  `kyat` varchar(225) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pal` varchar(225) COLLATE utf8_unicode_ci DEFAULT NULL,
  `yae` varchar(225) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gram` varchar(225) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cupon_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_id` varchar(225) COLLATE utf8_unicode_ci DEFAULT NULL,
  `previous_remain_kyat` varchar(225) COLLATE utf8_unicode_ci DEFAULT '0',
  `previous_remain_pal` varchar(225) COLLATE utf8_unicode_ci DEFAULT '0',
  `previous_remain_yae` varchar(225) COLLATE utf8_unicode_ci DEFAULT '0',
  `buy_debit_kyat` varchar(225) COLLATE utf8_unicode_ci DEFAULT '0',
  `buy_debit_pal` varchar(225) COLLATE utf8_unicode_ci DEFAULT '0',
  `buy_debit_yae` varchar(225) COLLATE utf8_unicode_ci DEFAULT '0',
  `payment_kyat` varchar(225) COLLATE utf8_unicode_ci DEFAULT '0',
  `payment_pal` varchar(225) COLLATE utf8_unicode_ci DEFAULT '0',
  `payment_yae` varchar(225) COLLATE utf8_unicode_ci DEFAULT '0',
  `now_remain_kyat` varchar(225) COLLATE utf8_unicode_ci DEFAULT '0',
  `now_remain_pal` varchar(225) COLLATE utf8_unicode_ci DEFAULT '0',
  `now_remain_yae` varchar(225) COLLATE utf8_unicode_ci DEFAULT '0',
  `note` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `order_invoices`
--

INSERT INTO `order_invoices` (`id`, `sale_user_name`, `voucher_number`, `order_date`, `total_kyat`, `total_pal`, `total_yae`, `qty`, `point_eight`, `total_ayot_kyat`, `total_ayot_pal`, `total_ayot_yae`, `kyat`, `pal`, `yae`, `gram`, `cupon_code`, `customer_id`, `previous_remain_kyat`, `previous_remain_pal`, `previous_remain_yae`, `buy_debit_kyat`, `buy_debit_pal`, `buy_debit_yae`, `payment_kyat`, `payment_pal`, `payment_yae`, `now_remain_kyat`, `now_remain_pal`, `now_remain_yae`, `note`) VALUES
(2, 'kyaw kyaw', 'O100', '08/13/19', '0', '0', '0', '20', '1', '2', '1', '1', '24', '4', '1.08', '402.69', 'haua', '1', '6', '0', '1.08', '30', '4', '2.16', '20', '4', '0', '10', '0', '2.16', ''),
(3, 'kyaw kyaw', 'vah', '08/13/19', '0', '0', '0', '', '', '', '', '', '24', '4', '1.08', '402.69', '', '1', '10', '0', '2.16', '34', '4', '3.24', '20', '4', '00797', '14', '0', '3.24', ''),
(11, 'naung naung', '4567890', '08/18/19', '25', '1', '1', '20', '2', '1', '1', '1', '24', '4', '1.08', '402.69', '444', '1', '3', '0', '4.32', '28', '1', '5.32', '20', '1', '1', '8', '0', '4.32', ''),
(14, 'naung naung', '600', '', '1', '13', '1', '18', '2', '1', '1', '0', '1', '12', '7.33', '30', '', '1', '8', '0', '4.32', '9', '13', '5.32', '1', '13', '0', '8', '0', '5.32', NULL),
(17, 'naung naung', 'y700', '', '4', '15', '2', '18', '5', '1', '1', '1', '4', '13', '0.87', '80', 'w000', '1', '8', '0', '4.32', '12', '15', '6.32', '8', '15', '0', '4', '0', '6.32', '12313');

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
  `total_kyat` varchar(225) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `total_pal` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `total_yae` varchar(225) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `qty` varchar(225) COLLATE utf8_unicode_ci DEFAULT NULL,
  `point_eight` varchar(225) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_ayot_kyat` varchar(225) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_ayot_pal` varchar(225) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_ayot_yae` varchar(225) COLLATE utf8_unicode_ci DEFAULT NULL,
  `kyat` varchar(225) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pal` varchar(225) COLLATE utf8_unicode_ci DEFAULT NULL,
  `yae` varchar(225) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gram` varchar(225) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cupon_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_id` varchar(225) COLLATE utf8_unicode_ci DEFAULT NULL,
  `previous_remain_kyat` varchar(225) COLLATE utf8_unicode_ci DEFAULT '0',
  `previous_remain_pal` varchar(225) COLLATE utf8_unicode_ci DEFAULT '0',
  `previous_remain_yae` varchar(225) COLLATE utf8_unicode_ci DEFAULT '0',
  `buy_debit_kyat` varchar(225) COLLATE utf8_unicode_ci DEFAULT '0',
  `buy_debit_pal` varchar(225) COLLATE utf8_unicode_ci DEFAULT '0',
  `buy_debit_yae` varchar(225) COLLATE utf8_unicode_ci DEFAULT '0',
  `payment_kyat` varchar(225) COLLATE utf8_unicode_ci DEFAULT '0',
  `payment_pal` varchar(225) COLLATE utf8_unicode_ci DEFAULT '0',
  `payment_yae` varchar(225) COLLATE utf8_unicode_ci DEFAULT '0',
  `now_remain_kyat` varchar(225) COLLATE utf8_unicode_ci DEFAULT '0',
  `now_remain_pal` varchar(225) COLLATE utf8_unicode_ci DEFAULT '0',
  `now_remain_yae` varchar(225) COLLATE utf8_unicode_ci DEFAULT '0',
  `note` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sale_invoices`
--

INSERT INTO `sale_invoices` (`id`, `sale_user_name`, `voucher_number`, `sale_date`, `total_kyat`, `total_pal`, `total_yae`, `qty`, `point_eight`, `total_ayot_kyat`, `total_ayot_pal`, `total_ayot_yae`, `kyat`, `pal`, `yae`, `gram`, `cupon_code`, `customer_id`, `previous_remain_kyat`, `previous_remain_pal`, `previous_remain_yae`, `buy_debit_kyat`, `buy_debit_pal`, `buy_debit_yae`, `payment_kyat`, `payment_pal`, `payment_yae`, `now_remain_kyat`, `now_remain_pal`, `now_remain_yae`, `note`) VALUES
(2, 'kyaw kyaw', 'MTD1001', '08/06/19', '0', '0', '0', '20', '4', '18', NULL, NULL, '10', '30', '12', '100', '', '1', '5', '15', '6', '5', '15', '6', '', '', '', '', '', '', NULL),
(3, 'kyaw kyaw', 'mrd134', '08/07/19', '0', '0', '0', '80', '5', '78', NULL, NULL, '15', '5', '4', '18', '', '1', '15', '5', '4', '', '', '', '15', '5', '5', '', '', '', NULL),
(4, 'naung naung', '7000', '08/08/19', '0', '0', '0', '20', '8', '25', '10', '7', '5', '12', '6', '100', '848496', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'naung naung', '300', '08/08/19', '0', '0', '0', '12', '2', '21', '5', '3', '1', '13', '6', '30', '12', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'naung naung', 'n900', '08/08/19', '0', '0', '0', '20', '2', '20', '3', '1', '24', '4', '1', '402.69', '849404', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'kyaw kyaw', '001', '9/3/2019', '0', '0', '0', '', '20', '2', '2', '2', '25', '14', '6', '20', 'july0034', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'kyaw kyaw', '001', '9/3/2019', '0', '0', '0', '', '20', '2', '2', '2', '25', '14', '6', '20', 'july0034', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'kyaw kyaw', '001', '9/3/2019', '0', '0', '0', '10001', '20', '2', '2', '2', '25', '14', '6', '20', 'july0034', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'tun tun', '0010', '9/3/2019', '0', '0', '0', '1000', '20', '2', '2', '2', '25', '14', '6', '20', 'july0034', '1', '2', '0', '0', '27', '14', '6', '20', '14', '6', '7', '0', '0', NULL),
(11, 'tun tun', '0010', '9/3/2019', '0', '0', '0', '1000', '20', '2', '2', '2', '25', '14', '6', '20', 'july0034', '1', '2', '0', '0', '27', '14', '6', '20', '14', '6', '7', '0', '0', NULL),
(12, 'tun tun', '0010', '9/3/2019', '0', '0', '0', '1000', '20', '2', '2', '2', '25', '14', '6', '20', 'july0034', '1', '2', '0', '0', '27', '14', '6', '20', '14', '6', '7', '12', '6', NULL),
(13, 'mgmgmgmgm', '001', '9/3/2019', '0', '0', '0', '1000', '20', '2', '2', '2', '25', '14', '6', '20', 'july0034', '1', '2', '0', '0', '27', '14', '6', '20', '14', '6', '7', '0', '0', NULL),
(14, '', '', '', '0', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL),
(15, 'naung naung', 'n1000', '08/13/19', '0', '0', '0', '20', '2', '1', '0', '0', '24', '4', '1.08', '402.69', '100', '1', '7', '0', '0', '', '', '', '20', '0', '0', '11', '4', '1.08', NULL),
(16, 'naung naung', 'n1000', '08/13/19', '0', '0', '0', '20', '2', '1', '0', '0', '24', '4', '1.08', '402.69', '100', '1', '7', '0', '0', '', '', '', '20', '0', '0', '11', '4', '1.08', NULL),
(17, 'naung naung', '001', '9/3/2019', '0', '0', '0', '10001', '20', '2', '2', '2', '25', '14', '6', '20', 'july0034', '1', '2', '0', '0', '27', '14', '6', '20', '14', '6', '7', '0', '0', NULL),
(18, 'naung naung', 'n200', '08/13/19', '0', '0', '0', '20', '2', '1', '2', '2', '24', '4', '1.08', '402.69', '87946', '1', '7', '0', '0', '', '', '', '25', '5', '0', '6', '0', '1.08', NULL),
(19, 'naung naung', 'n200', '08/13/19', '0', '0', '0', '20', '2', '1', '2', '2', '24', '4', '1.08', '402.69', '87946', '1', '7', '0', '0', '31', '4', '1.08', '25', '5', '0', '6', '0', '1.08', NULL),
(20, 'kyaw kyaw', '600', '08/13/19', '0', '0', '0', '80', '5', '2', '0', '0', '24', '4', '1.08', '402.69', '6464', '1', '14', '0', '3.24', '38', '4', '4.32', '30', '4', '0', '8', '0', '4.32', NULL),
(26, '', '', '', '0', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL),
(27, 'kyaw kyaw', '500', '08/16/19', '0', '0', '0', '20', '2', '2', '2', '2', '24', '4', '1.08', '402.69', '6764', '4', '0', '0', '0', '24', '4', '1.08', '20', '4', '0', '4', '0', '1.08', NULL),
(28, '', '', '', '0', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL),
(29, 'naung naung', '123456', '08/18/19', '0', '0', '0', '20', '5', '1', '1', '0', '24', '4', '1.08', '402.69', '15166', '1', '8', '0', '4.32', '33', '1', '5.32', '30', '1', '1', '3', '0', '4.32', NULL),
(30, 'naung naung', '123456', '08/18/19', '25', '1', '1', '20', '5', '1', '1', '0', '24', '4', '1.08', '402.69', '15166', '1', '8', '0', '4.32', '33', '1', '5.32', '30', '1', '1', '3', '0', '4.32', NULL),
(31, 'naung naung', '', '', '6', '2', '2', '18', '5', '1', '1', '1', '5', '0', '0.00', '83', '', '1', '8', '0', '4.32', '14', '2', '6.32', '10', '1', '1', '4', '1', '5.32', NULL),
(32, 'naung naung', 't700', '08/18/19', '5', '1', '1', '18', '2', '1', '1', '1', '5', '0', '0.00', '83', '123333', '1', '8', '0', '4.32', '13', '1', '5.32', '10', '3', '0', '2', '14', '5.32', NULL),
(33, 'naung naung', 't700', '08/18/19', '5', '1', '1', '18', '2', '1', '1', '1', '5', '0', '0.00', '83', '123333', '1', '8', '0', '4.32', '13', '1', '5.32', '10', '3', '0', '2', '14', '5.32', '54664');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `sale_invoices`
--
ALTER TABLE `sale_invoices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
