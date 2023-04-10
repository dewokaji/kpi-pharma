-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 10, 2023 at 11:58 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fima`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `id` int(11) NOT NULL,
  `vUsername` varchar(100) NOT NULL,
  `vAction` varchar(50) NOT NULL,
  `vFileName` varchar(100) NOT NULL,
  `dDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `mcompany`
--

CREATE TABLE `mcompany` (
  `compId` int(2) NOT NULL,
  `compCode` varchar(15) NOT NULL,
  `compName` varchar(100) NOT NULL,
  `compImgPath` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mcompany`
--

INSERT INTO `mcompany` (`compId`, `compCode`, `compName`, `compImgPath`) VALUES
(1, 'KF', 'Kalbe Farma tbk.', 'assets/images/companies/kalbe1.png'),
(2, 'DF', 'Dankos Farma PT.', 'assets/images/companies/dankos1.png'),
(3, 'HJ', 'Hexaparm Jaya PT.', 'assets/images/companies/hexa1.png'),
(4, 'FM', 'Finosol Pharma PT.', 'assets/images/companies/fima1.png'),
(5, 'GF', 'Global Ongkology Pharma PT.', 'assets/images/companies/gof.png');

-- --------------------------------------------------------

--
-- Table structure for table `mdatapertanyaanhse`
--

CREATE TABLE `mdatapertanyaanhse` (
  `id` int(11) NOT NULL,
  `vKet` text NOT NULL,
  `mTipe` varchar(25) NOT NULL,
  `mForm` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `mline`
--

CREATE TABLE `mline` (
  `lineId` int(11) NOT NULL,
  `compId` int(2) NOT NULL,
  `lineCode` varchar(50) DEFAULT NULL,
  `lineName` varchar(150) NOT NULL,
  `lineDescription` varchar(255) DEFAULT NULL,
  `group1` varchar(100) DEFAULT NULL,
  `group2` varchar(100) DEFAULT NULL,
  `iUsed` tinyint(1) NOT NULL DEFAULT 1,
  `dCreated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mline`
--

INSERT INTO `mline` (`lineId`, `compId`, `lineCode`, `lineName`, `lineDescription`, `group1`, `group2`, `iUsed`, `dCreated`) VALUES
(1, 1, NULL, 'Line 1-11', NULL, 'Tablet', NULL, 1, '2023-04-06 04:36:34'),
(2, 1, NULL, 'Line 2', NULL, 'Tablet', NULL, 1, '2023-04-06 04:36:34'),
(3, 1, NULL, 'Line 3', NULL, 'Tablet', NULL, 1, '2023-04-06 04:36:34'),
(4, 1, NULL, 'Line 4', NULL, 'Tablet', NULL, 1, '2023-04-06 04:36:34'),
(5, 1, NULL, 'Line 5-12 (Liquid)', NULL, 'Liquid', NULL, 1, '2023-04-06 04:36:35'),
(6, 1, NULL, 'Line 6 (Sterile)', NULL, 'Steril', NULL, 1, '2023-04-06 04:36:35'),
(7, 1, NULL, 'Line 7 (Suppo)', NULL, 'Semisolid', NULL, 1, '2023-04-06 04:36:35'),
(8, 1, NULL, 'Line 7-13 (Semisolid)', NULL, 'Semisolid', NULL, 1, '2023-04-06 04:36:35'),
(9, 1, NULL, 'Line 8A', NULL, 'Tablet', NULL, 1, '2023-04-06 04:36:35'),
(10, 1, NULL, 'Line 8B (Dry Syrup)', NULL, NULL, NULL, 1, '2023-04-06 04:36:35'),
(11, 1, NULL, 'Line 8B', NULL, 'Tablet', NULL, 1, '2023-04-06 04:36:35'),
(12, 1, NULL, 'Line 14', NULL, 'Tablet', NULL, 1, '2023-04-06 04:36:35'),
(13, 1, NULL, 'Line 8B ( + premix)', NULL, NULL, NULL, 1, '2023-04-06 04:36:35'),
(14, 1, NULL, 'Line 14 (+ premix)', NULL, NULL, NULL, 1, '2023-04-06 04:36:35'),
(15, 2, NULL, 'Line 1 - Tablet', NULL, 'Line 1 (NBL Non Mxg)', 'NBL Non Sterile', 1, '2023-04-06 04:36:35'),
(16, 2, NULL, 'Line 1 - Liquid / Suspension', NULL, 'Line 1 (NBL Non Mxg)', 'NBL Non Sterile', 1, '2023-04-06 04:36:35'),
(17, 2, NULL, 'Line 1 - NBL Granule', NULL, 'Line 1 (NBL Non Mxg)', 'NBL Non Sterile', 1, '2023-04-06 04:36:35'),
(18, 2, NULL, 'Line 1 - NBL Hard Capsules', NULL, 'Line 1 (NBL Non Mxg)', 'NBL Non Sterile', 1, '2023-04-06 04:36:35'),
(19, 2, NULL, 'Line 1 - NBL Soft Capsule', NULL, 'Line 1 (NBL Non Mxg)', 'NBL Non Sterile', 1, '2023-04-06 04:36:35'),
(20, 2, NULL, 'Line 2 - Ampoule Injection', NULL, 'Line 2 (Inj Kav 37)', 'NBL Sterile', 1, '2023-04-06 04:36:35'),
(21, 2, NULL, 'Line 2 - Lyo Injection', NULL, 'Line 2 (Inj Kav 37)', 'NBL Sterile', 1, '2023-04-06 04:36:35'),
(22, 2, NULL, 'Line 3 - Mixagrip', NULL, 'Line 3 (Mxg)', 'NBL Non Sterile', 1, '2023-04-06 04:36:35'),
(23, 2, NULL, 'Line 4 - Pen DS', NULL, 'Line 4 (Pen)', 'Line 4 (Pen)', 1, '2023-04-06 04:36:35'),
(24, 2, NULL, 'Line 4 - Pen Tablet', NULL, 'Line 4 (Pen)', 'Line 4 (Pen)', 1, '2023-04-06 04:36:35'),
(25, 2, NULL, 'Line 5 - Cepha DS', NULL, 'Line 5 (Cepha)', 'Line 5 (Cepha)', 1, '2023-04-06 04:36:35'),
(26, 2, NULL, 'Line 5 - Cepha Hard Capsules', NULL, 'Line 5 (Cepha)', 'Line 5 (Cepha)', 1, '2023-04-06 04:36:35'),
(27, 2, NULL, 'Line 5 - Cepha Tablet', NULL, 'Line 5 (Cepha)', 'Line 5 (Cepha)', 1, '2023-04-06 04:36:35'),
(28, 2, NULL, 'Line 5 - Cepha Injection', NULL, 'Line 5 (Cepha)', 'Line 5 (Cepha)', 1, '2023-04-06 04:36:35'),
(29, 2, NULL, 'Line 7 - Kav 39 Injection', NULL, 'Line 7 (Inj Kav 39)', 'NBL Sterile', 1, '2023-04-06 04:36:35'),
(30, 3, NULL, 'Line 1', NULL, NULL, NULL, 1, '2023-04-06 04:36:35'),
(31, 3, NULL, 'Line 2', NULL, NULL, NULL, 1, '2023-04-06 04:36:35'),
(32, 3, NULL, 'Line 3', NULL, NULL, NULL, 1, '2023-04-06 04:36:35'),
(33, 3, NULL, 'Line 4', NULL, NULL, NULL, 1, '2023-04-06 04:36:35'),
(34, 3, NULL, 'Line 5', NULL, NULL, NULL, 1, '2023-04-06 04:36:35'),
(35, 3, NULL, 'Line 6', NULL, NULL, NULL, 1, '2023-04-06 04:36:35'),
(36, 3, NULL, 'Line 7', NULL, NULL, NULL, 1, '2023-04-06 04:36:35'),
(37, 4, NULL, 'Line 1', NULL, 'Botol', NULL, 1, '2023-04-06 04:36:35'),
(38, 4, NULL, 'Line 2', NULL, 'Flexy Bag', NULL, 1, '2023-04-06 04:36:35'),
(39, 4, NULL, 'Line 4', NULL, 'Flexy Bag', NULL, 1, '2023-04-06 04:36:35'),
(40, 5, NULL, 'Liquid Injection', NULL, 'Sterile', NULL, 1, '2023-04-06 04:36:35'),
(41, 5, NULL, 'Lyo injection', NULL, 'Sterile', NULL, 1, '2023-04-06 04:36:35'),
(42, 5, NULL, 'Tablet', NULL, 'Tablet', NULL, 1, '2023-04-06 04:36:35');

-- --------------------------------------------------------

--
-- Table structure for table `mline_bu`
--

CREATE TABLE `mline_bu` (
  `lineId` int(11) NOT NULL,
  `compId` int(2) NOT NULL,
  `lineCode` varchar(50) NOT NULL,
  `lineName` varchar(150) NOT NULL,
  `lineDescription` varchar(255) NOT NULL,
  `group1` varchar(100) NOT NULL,
  `group2` varchar(100) NOT NULL,
  `iUsed` tinyint(1) NOT NULL DEFAULT 1,
  `dCreated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mline_bu`
--

INSERT INTO `mline_bu` (`lineId`, `compId`, `lineCode`, `lineName`, `lineDescription`, `group1`, `group2`, `iUsed`, `dCreated`) VALUES
(1, 1, '', 'Line 1-11', '', 'Tablet', '', 1, '2023-04-06 03:33:18'),
(2, 1, '', 'Line 2', '', 'Tablet', '', 1, '2023-04-06 03:33:18'),
(3, 1, '', 'Line 3', '', 'Tablet', '', 1, '2023-04-06 03:33:18'),
(4, 1, '', 'Line 4', '', 'Tablet', '', 1, '2023-04-06 03:33:18'),
(5, 1, '', 'Line 5-12 (Liquid)', '', 'Liquid', '', 1, '2023-04-06 03:33:18'),
(6, 1, '', 'Line 6 (Sterile)', '', 'Steril', '', 1, '2023-04-06 03:33:18'),
(7, 1, '', 'Line 7 (Suppo)', '', 'Semisolid', '', 1, '2023-04-06 03:33:18'),
(8, 1, '', 'Line 7-13 (Semisolid)', '', 'Semisolid', '', 1, '2023-04-06 03:33:18'),
(9, 1, '', 'Line 8A', '', 'Tablet', '', 1, '2023-04-06 03:33:18'),
(10, 1, '', 'Line 8B (Dry Syrup)', '', '', '', 1, '2023-03-24 06:00:41'),
(11, 1, '', 'Line 8B', '', 'Tablet', '', 1, '2023-04-06 03:33:18'),
(12, 1, '', 'Line 14', '', 'Tablet', '', 1, '2023-04-06 03:33:18'),
(13, 1, '', 'Line 8B ( + premix)', '', '', '', 1, '2023-03-24 06:00:41'),
(14, 1, '', 'Line 14 (+ premix)', '', '', '', 1, '2023-03-24 06:00:41'),
(15, 2, '', 'Line 1 - Tablet', '', 'Line 1 (NBL Non Mxg)', 'NBL Non Sterile', 1, '2023-04-06 03:33:18'),
(16, 2, '', 'Line 1 - Liquid / Suspension', '', 'Line 1 (NBL Non Mxg)', 'NBL Non Sterile', 1, '2023-04-06 03:33:18'),
(17, 2, '', 'Line 1 - NBL Granule', '', 'Line 1 (NBL Non Mxg)', 'NBL Non Sterile', 1, '2023-04-06 03:33:18'),
(18, 2, '', 'Line 1 - NBL Hard Capsules', '', 'Line 1 (NBL Non Mxg)', 'NBL Non Sterile', 1, '2023-04-06 03:33:18'),
(19, 2, '', 'Line 1 - NBL Soft Capsule', '', 'Line 1 (NBL Non Mxg)', 'NBL Non Sterile', 1, '2023-04-06 03:33:18'),
(20, 2, '', 'Line 2 - Ampoule Injection', '', 'Line 2 (Inj Kav 37)', 'NBL Sterile', 1, '2023-04-06 03:33:18'),
(21, 2, '', 'Line 2 - Lyo Injection', '', 'Line 2 (Inj Kav 37)', 'NBL Sterile', 1, '2023-04-06 03:33:18'),
(22, 2, '', 'Line 3 - Mixagrip', '', 'Line 3 (Mxg)', 'NBL Non Sterile', 1, '2023-04-06 03:33:18'),
(23, 2, '', 'Line 4 - Pen DS', '', 'Line 4 (Pen)', 'Line 4 (Pen)', 1, '2023-04-06 03:33:18'),
(24, 2, '', 'Line 4 - Pen Tablet', '', 'Line 4 (Pen)', 'Line 4 (Pen)', 1, '2023-04-06 03:33:18'),
(25, 2, '', 'Line 5 - Cepha DS', '', 'Line 5 (Cepha)', 'Line 5 (Cepha)', 1, '2023-04-06 03:33:18'),
(26, 2, '', 'Line 5 - Cepha Hard Capsules', '', 'Line 5 (Cepha)', 'Line 5 (Cepha)', 1, '2023-04-06 03:33:18'),
(27, 2, '', 'Line 5 - Cepha Tablet', '', 'Line 5 (Cepha)', 'Line 5 (Cepha)', 1, '2023-04-06 03:33:18'),
(28, 2, '', 'Line 5 - Cepha Injection', '', 'Line 5 (Cepha)', 'Line 5 (Cepha)', 1, '2023-04-06 03:33:18'),
(29, 2, '', 'Line 7 - Kav 39 Injection', '', 'Line 7 (Inj Kav 39)', 'NBL Sterile', 1, '2023-04-06 03:33:18'),
(30, 3, '', 'Line 1', '', '', '', 1, '2023-03-24 06:00:41'),
(31, 3, '', 'Line 2', '', '', '', 1, '2023-03-24 06:00:41'),
(32, 3, '', 'Line 3', '', '', '', 1, '2023-03-24 06:00:41'),
(33, 3, '', 'Line 4', '', '', '', 1, '2023-03-24 06:00:41'),
(34, 3, '', 'Line 5', '', '', '', 1, '2023-03-24 06:00:41'),
(35, 3, '', 'Line 6', '', '', '', 1, '2023-03-24 06:00:41'),
(36, 3, '', 'Line 7', '', '', '', 1, '2023-03-24 06:00:41'),
(37, 4, '', 'Line 1', '', 'Botol', '', 1, '2023-04-06 03:33:18'),
(38, 4, '', 'Line 2', '', 'Flexy Bag', '', 1, '2023-04-06 03:33:18'),
(39, 4, '', 'Line 4', '', 'Flexy Bag', '', 1, '2023-04-06 03:33:18'),
(40, 5, '', 'Liquid Injection', '', 'Sterile', '', 1, '2023-04-06 03:33:18'),
(41, 5, '', 'Lyo injection', '', 'Sterile', '', 1, '2023-04-06 03:33:18'),
(42, 5, '', 'Tablet', '', 'Tablet', '', 1, '2023-04-06 03:33:18');

-- --------------------------------------------------------

--
-- Table structure for table `mlogin`
--

CREATE TABLE `mlogin` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `namaUser` varchar(100) NOT NULL,
  `mpassword` varchar(50) NOT NULL,
  `compId` int(11) NOT NULL,
  `dept` varchar(50) NOT NULL,
  `iUsed` int(1) NOT NULL,
  `dCreate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mlogin`
--

INSERT INTO `mlogin` (`id`, `email`, `namaUser`, `mpassword`, `compId`, `dept`, `iUsed`, `dCreate`) VALUES
(1, 'suwandi.leonard@fimafarma.com', 'suwandi', '12345678', 4, 'MSTD', 1, '2022-05-29 09:44:40'),
(2, 'mayakurniasari2@gmail.com', 'mayamaya26', 'Maya2605', 4, 'MSTD', 1, '2022-06-02 08:03:19'),
(3, 'rezica.sidabutar@fimafarma.com', 'Rezica Deslianty Sidabutar', 'fimafarma12345', 4, 'HSE', 1, '2022-06-22 12:52:28'),
(4, 'fernandopatrick520@gmail.com', 'patrick541', 'Araliahy286', 4, 'MSTD', 1, '2023-02-20 11:40:30'),
(5, 'fernandopatrick520@gmail.com', 'patrick541', 'Araliahy286', 4, 'MSTD', 1, '2023-02-21 07:18:27'),
(6, 'fernandopatrick520@gmail.com', 'patrick541', 'Araliahy286', 4, 'MSTD', 1, '2023-02-22 01:53:37'),
(7, 'mstd-kf@kalbe.co.id', 'MSTD Kalbe Farma', '12345678', 1, 'MSTD', 1, '2022-05-29 09:44:40'),
(8, 'mstd-df@dankos.co.id', 'MSTD Dankos Farma', '12345678', 2, 'MSTD', 1, '2022-05-29 09:44:40'),
(9, 'mstd-hj@hj.co.id', 'MSTD Hexajaya Pharma', '12345678', 3, 'MSTD', 1, '2022-05-29 09:44:40'),
(10, 'mstd-gof@gof.co.id', 'MSTD Global Onkology Farma', '12345678', 5, 'MSTD', 1, '2022-05-29 09:44:40'),
(11, 'mstd-fima@fimafarma.com', 'MSTD FIMA Farma', '12345678', 4, 'MSTD', 1, '2022-05-29 09:44:40');

-- --------------------------------------------------------

--
-- Table structure for table `mlogin-bu`
--

CREATE TABLE `mlogin-bu` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `namaUser` varchar(100) NOT NULL,
  `mpassword` varchar(50) NOT NULL,
  `dept` varchar(50) NOT NULL,
  `iUsed` int(1) NOT NULL,
  `dCreate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mlogin-bu`
--

INSERT INTO `mlogin-bu` (`id`, `email`, `namaUser`, `mpassword`, `dept`, `iUsed`, `dCreate`) VALUES
(1, 'suwandi.leonard@fimafarma.com', 'suwandi', '12345678', 'MSTD', 1, '2022-05-29 09:44:40'),
(2, 'mayakurniasari2@gmail.com', 'mayamaya26', 'Maya2605', 'MSTD', 1, '2022-06-02 08:03:19'),
(3, 'rezica.sidabutar@fimafarma.com', 'Rezica Deslianty Sidabutar', 'fimafarma12345', 'HSE', 1, '2022-06-22 12:52:28'),
(4, 'fernandopatrick520@gmail.com', 'patrick541', 'Araliahy286', 'MSTD', 1, '2023-02-20 11:40:30'),
(5, 'fernandopatrick520@gmail.com', 'patrick541', 'Araliahy286', 'MSTD', 1, '2023-02-21 07:18:27'),
(6, 'fernandopatrick520@gmail.com', 'patrick541', 'Araliahy286', 'MSTD', 1, '2023-02-22 01:53:37');

-- --------------------------------------------------------

--
-- Table structure for table `mproductitem`
--

CREATE TABLE `mproductitem` (
  `pItemId` int(11) NOT NULL,
  `pItemCode` varchar(50) NOT NULL,
  `pItemName` varchar(150) NOT NULL,
  `pItemDescription` varchar(255) NOT NULL,
  `iUsed` tinyint(1) NOT NULL DEFAULT 1,
  `dCreated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mproductitem`
--

INSERT INTO `mproductitem` (`pItemId`, `pItemCode`, `pItemName`, `pItemDescription`, `iUsed`, `dCreated`) VALUES
(1, 'DSP', 'Dry Sirup', '', 1, '2023-04-01 06:57:12'),
(2, 'INJ', 'Injeksi', '', 1, '2023-04-01 06:57:15'),
(3, 'CAP', 'Kapsul', '', 1, '2023-04-01 06:52:46'),
(4, 'SCA', 'Soft Kapsul', '', 1, '2023-04-01 06:52:46'),
(5, 'LQD', 'Liquid', '', 1, '2023-04-01 06:53:40'),
(6, 'BTB', 'Butiran ( Tablet )', '', 1, '2023-04-01 06:53:40'),
(7, 'BTL', 'Botol', '', 1, '2023-04-01 06:54:12'),
(8, 'AMP', 'Ampul', '', 1, '2023-04-01 06:54:12'),
(9, 'BAG', 'Bag', '', 1, '2023-04-01 06:55:20'),
(10, 'NST', 'Non Steril', '', 1, '2023-04-01 06:55:20'),
(11, 'GRN', 'Granule', '', 1, '2023-04-01 06:55:50'),
(12, 'CRM', 'Cream', '', 1, '2023-04-01 06:55:50'),
(13, 'RPC', 'Product Repack line 10 (pcs)', '', 1, '2023-04-01 06:56:38'),
(14, 'ASP', 'Aseptis', '', 1, '2023-04-01 06:56:38');

-- --------------------------------------------------------

--
-- Table structure for table `mrawdata`
--

CREATE TABLE `mrawdata` (
  `id` int(11) NOT NULL,
  `vKet` varchar(255) NOT NULL,
  `vNote` varchar(255) NOT NULL,
  `dept` varchar(20) NOT NULL,
  `vCategory` varchar(5) NOT NULL,
  `dEffectiveDate` date NOT NULL DEFAULT '2023-03-01',
  `iUsed` int(11) NOT NULL DEFAULT 1,
  `dCreate` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mrawdata`
--

INSERT INTO `mrawdata` (`id`, `vKet`, `vNote`, `dept`, `vCategory`, `dEffectiveDate`, `iUsed`, `dCreate`) VALUES
(8, 'COGM Total Standard (Inhouse)', '', 'FA', 'C', '2022-05-01', 1, '2022-05-17 02:54:43'),
(9, 'RM Cost Standard', '', 'FA', 'C', '2022-05-01', 1, '2022-05-17 02:54:43'),
(10, 'PM Cost Standard', '', 'FA', 'C', '2022-05-01', 1, '2022-05-17 02:54:43'),
(11, 'FOH Cost Standard', '', 'FA', 'C', '2022-05-01', 1, '2022-05-17 02:54:43'),
(12, 'DL Cost Standard', '', 'FA', 'C', '2022-05-01', 1, '2022-05-17 02:54:43'),
(13, 'COGM Total Actual (Inhouse)', '', 'FA', 'C', '2022-05-01', 1, '2022-05-17 02:54:43'),
(14, 'RM Cost Actual', '', 'FA', 'C', '2022-05-01', 1, '2022-05-17 02:54:43'),
(15, 'PM Cost Actual', '', 'FA', 'C', '2022-05-01', 1, '2022-05-17 02:54:43'),
(16, 'FOH Cost Actual', '', 'FA', 'C', '2022-05-01', 1, '2022-05-17 02:54:43'),
(17, 'DL Cost Actual', '', 'FA', 'C', '2022-05-01', 1, '2022-05-17 02:54:43'),
(18, 'COGM Total Actual Last Year (Inhouse)', '', 'FA', 'C', '2022-05-01', 1, '2022-05-17 02:54:43'),
(19, 'RM Cost Actual Last Year', '', 'FA', 'C', '2022-05-01', 1, '2022-05-17 02:54:43'),
(20, 'PM Cost Actual Last Year', '', 'FA', 'C', '2022-05-01', 1, '2022-05-17 02:54:43'),
(21, 'FOH Cost Actual Last Year', '', 'FA', 'C', '2022-05-01', 1, '2022-05-17 02:54:43'),
(22, 'DL Cost Actual Last Year', '', 'FA', 'C', '2022-05-01', 1, '2022-05-17 02:54:43'),
(23, 'Unit Produced Budget', '', 'FA', 'C', '2022-05-01', 1, '2022-05-17 02:54:43'),
(24, 'Unit Produced Budget Last Year', '', 'FA', 'C', '2022-05-01', 1, '2022-05-17 02:54:43'),
(25, 'Unit Produced Actual', '', 'FA', 'C', '2022-05-01', 1, '2022-05-17 02:54:43'),
(26, 'Unit Produced Actual Last Year', '', 'FA', 'C', '2022-05-01', 1, '2022-05-17 02:54:43'),
(27, 'Man Hours Actual', '', 'FA', 'C', '2022-05-01', 1, '2022-05-17 02:54:43'),
(28, 'Man Hours Budget', '', 'FA', 'C', '2022-05-01', 1, '2022-05-17 02:54:43'),
(29, 'Man Hours Actual Last Year', '', 'FA', 'C', '2022-05-01', 1, '2022-05-17 02:54:43'),
(30, 'Machine Hours Actual', '', 'FA', 'C', '2022-05-01', 1, '2022-05-17 02:54:43'),
(31, 'Machine Hours Budget', '', 'FA', 'C', '2022-05-01', 1, '2022-05-17 02:54:43'),
(32, 'Machine Hours Actual Last Year', '', 'FA', 'C', '2022-05-01', 1, '2022-05-17 02:54:43'),
(33, 'Net Sales (SI) Budget', '', 'FA', 'C', '2022-05-01', 1, '2022-05-17 02:54:43'),
(34, 'Net Sales (SI) Actual', '', 'FA', 'C', '2022-05-01', 1, '2022-05-17 02:54:43'),
(35, 'Net Sales (SI) Actual Last Year', '', 'FA', 'C', '2022-05-01', 1, '2022-05-17 02:54:43'),
(36, 'COGS (Excluded FG Buy) Budget', '', 'FA', 'C', '2022-05-01', 1, '2022-05-17 02:54:43'),
(37, 'COGS (Excluded FG Buy) Actual', '', 'FA', 'C', '2022-05-01', 1, '2022-05-17 02:54:43'),
(38, 'COGS (Excluded FG Buy) Actual Last Year', '', 'FA', 'C', '2022-05-01', 1, '2022-05-17 02:54:43'),
(39, 'Gross Profit Budget', '', 'FA', 'C', '2022-05-01', 1, '2022-05-17 02:54:43'),
(40, 'Gross Profit Actual', '', 'FA', 'C', '2022-05-01', 1, '2022-05-17 02:54:43'),
(41, 'Gross Profit Actual Last Year', '', 'FA', 'C', '2022-05-01', 1, '2022-05-17 02:54:43'),
(42, 'HR Cost Budget', '', 'FA', 'C', '2022-05-01', 1, '2022-05-17 02:54:43'),
(43, 'HR Cost Actual', '', 'FA', 'C', '2022-05-01', 1, '2022-05-17 02:54:43'),
(44, 'HR Cost Actual Last Year', '', 'FA', 'C', '2022-05-01', 1, '2022-05-17 02:54:43'),
(45, 'Cost Saving Target', '', 'FA', 'C', '2022-05-01', 1, '2022-05-17 02:54:43'),
(46, 'Cost Saving Actual', '', 'FA', 'C', '2022-05-01', 1, '2022-05-17 02:54:43'),
(47, 'Failure Cost (Value) Last Year', '', 'QA', 'C', '2022-05-01', 1, '2022-05-17 02:54:43'),
(48, 'Failure Cost (Value) Actual', '', 'QA', 'C', '2022-05-01', 1, '2022-05-17 02:54:43'),
(49, 'Failure Cost (Value) Target', '', 'QA', 'C', '2022-05-01', 1, '2022-05-17 02:54:43'),
(50, 'Failure Cost (Time) Last Year', '', 'QA', 'Q', '2022-05-01', 1, '2022-05-17 02:54:43'),
(51, 'Failure Cost (Time) Actual', '', 'QA', 'Q', '2022-05-01', 1, '2022-05-17 02:54:43'),
(52, 'Failure Cost (Time) Target', '', 'QA', 'Q', '2022-05-01', 1, '2022-05-17 02:54:43'),
(53, 'Total Batch Produced Actual', '', 'QA', 'Q', '2022-05-01', 1, '2022-05-17 02:54:43'),
(54, 'Total Batch Produced Actual exclude Validation', '', 'QA', 'Q', '2022-05-01', 1, '2022-05-17 02:54:43'),
(55, 'Total Rework', '', 'QA', 'Q', '2022-05-01', 1, '2022-05-17 02:54:43'),
(56, 'Total Batch with Deviation', '', 'QA', 'Q', '2022-05-01', 1, '2022-05-17 02:54:43'),
(57, 'Total Batch Produced Last Year', '', 'QA', 'Q', '2022-05-01', 1, '2022-05-17 02:54:43'),
(58, 'Total Rework Last Year', '', 'QA', 'Q', '2022-05-01', 1, '2022-05-17 02:54:43'),
(59, 'Total Batch with Deviation Last Year', '', 'QA', 'Q', '2022-05-01', 1, '2022-05-17 02:54:43'),
(60, 'Deviation Actual', '', 'QA', 'Q', '2022-05-01', 1, '2022-05-17 02:54:43'),
(61, 'Deviation Actual Last Year', '', 'QA', 'Q', '2022-05-01', 1, '2022-05-17 02:54:43'),
(62, '% OPE', '', 'PROD', 'P', '2022-05-01', 1, '2022-05-17 02:54:43'),
(63, '% Yield to Standard', '', 'FA', 'P', '2022-05-01', 1, '2022-05-17 02:54:43'),
(64, '% OPE Last Year', '', 'PROD', 'P', '2022-05-01', 1, '2022-05-17 02:54:43'),
(65, '% Yield to Standard Last Year', '', 'FA', 'P', '2022-05-01', 1, '2022-05-17 02:54:43'),
(66, 'Plant Cycle Time Sterile', '', 'MSTD', 'P', '2022-05-01', 1, '2022-05-17 02:54:43'),
(67, 'Plant Cycle Time Non Sterile', '', '', 'P', '2022-05-01', 1, '2022-05-17 02:54:43'),
(68, 'Plant Cycle Time Sterile Last Year', '', 'MSTD', 'P', '2022-05-01', 1, '2022-05-17 02:54:43'),
(69, 'Plant Cycle Time Non Sterile Last Year', '', '', 'P', '2022-05-01', 1, '2022-05-17 02:54:43'),
(70, '% Order Fulfillment Actual', '', 'PPIC', 'P', '2022-05-01', 1, '2022-05-17 02:54:43'),
(71, '% Order Fulfillment Last Year', '', 'PPIC', 'P', '2022-05-01', 1, '2022-05-17 02:54:43'),
(72, 'Recall', '', 'QS', 'Q', '2022-05-01', 1, '2022-05-17 02:54:43'),
(73, 'Fully Rejected Batch', '', 'QA', 'Q', '2022-05-01', 1, '2022-05-17 02:54:43'),
(74, 'Critical Finding', '', 'QS', 'Q', '2022-05-01', 1, '2022-05-17 02:54:43'),
(75, 'Critical Customer Complaint', '', 'QS', 'Q', '2022-05-01', 1, '2022-05-17 02:54:43'),
(76, 'Customer Complaint (unit) Actual', '', 'QS', 'Q', '2022-05-01', 1, '2022-05-17 02:54:43'),
(77, 'Customer Complaint (unit) Last Year', '', 'QS', 'Q', '2022-05-01', 1, '2022-05-17 02:54:43'),
(78, 'Loss Time Accident Actual', '', 'HSE', 'I', '2022-05-01', 1, '2022-05-17 02:54:43'),
(79, 'Loss Time Accident Actual Last Year', '', 'HSE', 'I', '2022-05-01', 1, '2022-05-17 02:54:43'),
(80, 'Non Loss Time Accident Actual', '', 'HSE', 'I', '2022-05-01', 1, '2022-05-17 02:54:43'),
(81, 'Non Loss Time Accident Actual Last Year', '', 'HSE', 'I', '2022-05-01', 1, '2022-05-17 02:54:43'),
(82, 'First Aid Accident Actual', '', 'HSE', 'I', '2022-05-01', 1, '2022-05-17 02:54:43'),
(83, 'First Aid Accident Actual Last Year', '', 'HSE', 'I', '2022-05-01', 1, '2022-05-17 02:54:43'),
(84, 'HAV IDP Progress YTD', '', 'HRD', 'L', '2022-05-01', 1, '2022-05-17 02:54:43'),
(85, 'Culture Transformation Progress MTD', '', 'HRD', 'L', '2022-05-01', 1, '2022-05-17 02:54:43'),
(86, 'Culture Transformation Progress YTD', '', 'HRD', 'L', '2022-05-01', 1, '2022-05-17 02:54:43'),
(87, 'Upskilling Progress MTD', '', 'HRD', 'L', '2022-05-01', 1, '2022-05-17 02:54:43'),
(88, 'Upskilling Progress YTD', '', 'HRD', 'L', '2022-05-01', 1, '2022-05-17 02:54:43'),
(89, 'Deviation Actual 2020', '', '', 'Q', '2022-05-01', 1, '2022-05-17 02:54:43'),
(90, 'Failure Cost (Value) 2020', '', '', 'C', '2022-05-01', 1, '2022-05-17 02:54:43'),
(91, 'Failure Cost (Time) 2020', '', '', 'Q', '2022-05-01', 1, '2022-05-17 02:54:43'),
(93, 'Dry Sirup', 'Production output in Unit Actual', 'PROD', 'P', '2023-03-01', 1, '2023-03-30 10:10:48'),
(94, 'Injeksi', 'Production output in Unit Actual', 'PROD', 'P', '2023-03-01', 1, '2023-03-30 10:10:48'),
(95, 'Kapsul', 'Production output in Unit Actual', 'PROD', 'P', '2023-03-01', 1, '2023-03-30 10:10:48'),
(96, 'Soft kapsul', 'Production output in Unit Actual', 'PROD', 'P', '2023-03-01', 1, '2023-03-30 10:10:48'),
(97, 'Liquid', 'Production output in Unit Actual', 'PROD', 'P', '2023-03-01', 1, '2023-03-30 10:10:48'),
(98, 'Butiran (tablet)', 'Production output in Unit Actual', 'PROD', 'P', '2023-03-01', 1, '2023-03-30 10:10:48'),
(99, 'Botol', 'Production output in Unit Actual', 'PROD', 'P', '2023-03-01', 1, '2023-03-30 10:10:48'),
(100, 'Ampul', 'Production output in Unit Actual', 'PROD', 'P', '2023-03-01', 1, '2023-03-30 10:10:48'),
(101, 'Bag', 'Production output in Unit Actual', 'PROD', 'P', '2023-03-01', 1, '2023-03-30 10:10:48'),
(102, 'Non steril', 'Production output in Unit Actual', 'PROD', 'P', '2023-03-01', 1, '2023-03-30 10:10:48'),
(103, 'Granule', 'Production output in Unit Actual', 'PROD', 'P', '2023-03-01', 1, '2023-03-30 10:10:48'),
(104, 'Cream', 'Production output in Unit Actual', 'PROD', 'P', '2023-03-01', 1, '2023-03-30 10:10:48'),
(105, 'Produk repack line 10 (pcs)', 'Production output in Unit Actual', 'PROD', 'P', '2023-03-01', 1, '2023-03-30 10:10:48'),
(106, 'Aseptis', 'Production output in Unit Actual', 'PROD', 'P', '2023-03-01', 1, '2023-03-30 10:10:48'),
(107, 'Dry Sirup', 'Production output in Unit Budget', 'PPIC', 'P', '2023-03-01', 1, '2023-03-30 10:10:48'),
(108, 'Injeksi', 'Production output in Unit Budget', 'PPIC', 'P', '2023-03-01', 1, '2023-03-30 10:10:48'),
(109, 'Kapsul', 'Production output in Unit Budget', 'PPIC', 'P', '2023-03-01', 1, '2023-03-30 10:10:48'),
(110, 'Soft kapsul', 'Production output in Unit Budget', 'PPIC', 'P', '2023-03-01', 1, '2023-03-30 10:10:48'),
(111, 'Liquid', 'Production output in Unit Budget', 'PPIC', 'P', '2023-03-01', 1, '2023-03-30 10:10:48'),
(112, 'Butiran (tablet)', 'Production output in Unit Budget', 'PPIC', 'P', '2023-03-01', 1, '2023-03-30 10:10:48'),
(113, 'Botol', 'Production output in Unit Budget', 'PPIC', 'P', '2023-03-01', 1, '2023-03-30 10:10:48'),
(114, 'Ampul', 'Production output in Unit Budget', 'PPIC', 'P', '2023-03-01', 1, '2023-03-30 10:10:48'),
(115, 'Bag', 'Production output in Unit Budget', 'PPIC', 'P', '2023-03-01', 1, '2023-03-30 10:10:48'),
(116, 'Non steril', 'Production output in Unit Budget', 'PPIC', 'P', '2023-03-01', 1, '2023-03-30 10:10:48'),
(117, 'Granule', 'Production output in Unit Budget', 'PPIC', 'P', '2023-03-01', 1, '2023-03-30 10:10:48'),
(118, 'Cream', 'Production output in Unit Budget', 'PPIC', 'P', '2023-03-01', 1, '2023-03-30 10:10:48'),
(119, 'Produk repack line 10 (pcs)', 'Production output in Unit Budget', 'PPIC', 'P', '2023-03-01', 1, '2023-03-30 10:10:48'),
(120, 'Aseptis', 'Production output in Unit Budget', 'PPIC', 'P', '2023-03-01', 1, '2023-03-30 10:10:48');

-- --------------------------------------------------------

--
-- Table structure for table `mrumusgrafik`
--

CREATE TABLE `mrumusgrafik` (
  `id` int(11) NOT NULL,
  `vKet` varchar(255) NOT NULL,
  `mRumusMTD` text NOT NULL,
  `mRumusYTD` text NOT NULL,
  `dCreate` datetime NOT NULL,
  `iUsed` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mrumusgrafik`
--

INSERT INTO `mrumusgrafik` (`id`, `vKet`, `mRumusMTD`, `mRumusYTD`, `dCreate`, `iUsed`) VALUES
(1, 'COGM Unit To Standard', 'select (SELECT `tresult` FROM `tresultrawdata` WHERE idrawdata = 13 and tMonth= bulan and tYear= tahun and compId= site)/\r\n    (select `tResult` from tresultrawdata where idRawData = 25 and tMonth= bulan and tYear= tahun and compId= site) as result from DUAL', 'select (SELECT sum(`tresult`) FROM `tresultrawdata` WHERE idrawdata = 13 and tMonth BETWEEN 1 and bulan and tYear= tahun and compId= site)/\r\n    (select sum(`tresult`) from tresultrawdata where idRawData = 25 and tMonth BETWEEN 1 and bulan and tYear= tahun and compId= site) as result from DUAL', '2022-06-02 07:45:09', 1),
(2, 'FOH Unit', 'select ((SELECT `tresult` FROM `tresultrawdata` WHERE idrawdata = 16 and tMonth= bulan and tYear= tahun and compId= site)/(select `tResult` from tresultrawdata where idRawData = 25 and tMonth= bulan and tYear= tahun and compId= site)) as result from DUAL\n', 'select (SELECT sum(`tresult`) FROM `tresultrawdata` WHERE idrawdata = 16 and tMonth BETWEEN 1 and bulan and tYear= tahun and compId= site)/(select sum(`tResult`) from tresultrawdata where idRawData = 25 and tMonth BETWEEN 1 and bulan and tYear= tahun and compId= site) as result from DUAL\n', '2022-06-02 09:14:32', 1),
(3, 'DL Unit', 'select ((SELECT `tresult` FROM `tresultrawdata` WHERE idrawdata = 17 and tMonth= bulan and tYear= tahun and compId= site)/(select `tResult` from tresultrawdata where idRawData = 25 and tMonth= bulan and tYear= tahun and compId= site)) as result from DUAL\n', 'select (SELECT sum(`tresult`) FROM `tresultrawdata` WHERE idrawdata = 17 and tMonth BETWEEN 1 and bulan and tYear= tahun and compId= site)/(select sum(`tResult`) from tresultrawdata where idRawData = 25 and tMonth BETWEEN 1 and bulan and tYear= tahun and compId= site) as result from DUAL\r\n', '2022-06-02 09:14:32', 1),
(4, 'Order Fulfillment', 'select ((SELECT `tresult` FROM `tresultrawdata` WHERE idrawdata = 70 and tMonth= bulan and tYear= tahun and compId= site)) as result from DUAL\r\n', 'select (SELECT avg(`tresult`) FROM `tresultrawdata` WHERE idrawdata = 70 and tMonth BETWEEN 1 and bulan and tYear= tahun and compId= site) as result from DUAL\r\n', '2022-09-13 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mrumusgrafik_bu`
--

CREATE TABLE `mrumusgrafik_bu` (
  `id` int(11) NOT NULL,
  `vKet` varchar(255) NOT NULL,
  `mRumusMTD` text NOT NULL,
  `mRumusYTD` text NOT NULL,
  `dCreate` datetime NOT NULL,
  `iUsed` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mrumusgrafik_bu`
--

INSERT INTO `mrumusgrafik_bu` (`id`, `vKet`, `mRumusMTD`, `mRumusYTD`, `dCreate`, `iUsed`) VALUES
(1, 'COGM Unit To Standard', 'select (SELECT `tresult` FROM `tresultrawdata` WHERE idrawdata = 13 and tMonth= bulan and tYear= tahun)/\r\n    (select `tResult` from tresultrawdata where idRawData = 25 and tMonth= bulan and tYear= tahun) as result from DUAL', 'select (SELECT sum(`tresult`) FROM `tresultrawdata` WHERE idrawdata = 13 and tMonth BETWEEN 1 and bulan and tYear= tahun)/\r\n    (select sum(`tresult`) from tresultrawdata where idRawData = 25 and tMonth BETWEEN 1 and bulan and tYear= tahun) as result from DUAL', '2022-06-02 07:45:09', 1),
(2, 'FOH Unit', 'select ((SELECT `tresult` FROM `tresultrawdata` WHERE idrawdata = 16 and tMonth= bulan and tYear= tahun)/(select `tResult` from tresultrawdata where idRawData = 25 and tMonth= bulan and tYear= tahun)) as result from DUAL\n', 'select (SELECT sum(`tresult`) FROM `tresultrawdata` WHERE idrawdata = 16 and tMonth BETWEEN 1 and bulan and tYear= tahun)/(select sum(`tResult`) from tresultrawdata where idRawData = 25 and tMonth BETWEEN 1 and bulan and tYear= tahun) as result from DUAL\n', '2022-06-02 09:14:32', 1),
(3, 'DL Unit', 'select ((SELECT `tresult` FROM `tresultrawdata` WHERE idrawdata = 17 and tMonth= bulan and tYear= tahun)/(select `tResult` from tresultrawdata where idRawData = 25 and tMonth= bulan and tYear= tahun)) as result from DUAL\n', 'select (SELECT sum(`tresult`) FROM `tresultrawdata` WHERE idrawdata = 17 and tMonth BETWEEN 1 and bulan and tYear= tahun)/(select sum(`tResult`) from tresultrawdata where idRawData = 25 and tMonth BETWEEN 1 and bulan and tYear= tahun) as result from DUAL\r\n', '2022-06-02 09:14:32', 1),
(4, 'Order Fulfillment', 'select ((SELECT `tresult` FROM `tresultrawdata` WHERE idrawdata = 70 and tMonth= bulan and tYear= tahun)) as result from DUAL\r\n', 'select (SELECT avg(`tresult`) FROM `tresultrawdata` WHERE idrawdata = 70 and tMonth BETWEEN 1 and bulan and tYear= tahun) as result from DUAL\r\n', '2022-09-13 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mrumuskpi`
--

CREATE TABLE `mrumuskpi` (
  `id` int(11) NOT NULL,
  `vKet` varchar(255) NOT NULL,
  `mRumusMTD` text NOT NULL,
  `mRumusYTD` text NOT NULL,
  `dCreate` datetime NOT NULL,
  `iUsed` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mrumuskpi`
--

INSERT INTO `mrumuskpi` (`id`, `vKet`, `mRumusMTD`, `mRumusYTD`, `dCreate`, `iUsed`) VALUES
(1, 'Customer Complaint (PPM)', 'select ((SELECT `tresult` FROM `tresultrawdata` WHERE idrawdata = 76 and tMonth= bulan and tYear= tahun and compId= site)/(select `tResult` from tresultrawdata where idRawData = 25 and tMonth= bulan and tYear= tahun and compId= site)) * 1000000 as result from DUAL', 'select ((SELECT sum(`tresult`)tresult FROM `tresultrawdata` WHERE idrawdata = 76 and tMonth between 1 and bulan and tYear= tahun and compId= site)/(select sum(`tResult`)tResult from tresultrawdata where idRawData = 25 and tMonth between 1 and bulan and tYear= tahun and compId= site)) * 1000000 as result from DUAL', '2022-05-19 00:00:00', 1),
(2, 'Critical Customer Complaint  (#)', 'select tresult as result from tresultrawdata where idrawdata = 75 and tmonth = bulan and tyear = tahun and compId= site', 'select sum(tresult) as result from tresultrawdata where idrawdata = 75 and tmonth between 1 and bulan and tyear = tahun and compId= site', '2022-05-19 00:00:00', 1),
(3, 'Product Recall (#)', 'select tresult as result from tresultrawdata where idrawdata = 72 and tmonth = bulan and tyear = tahun and compId= site', 'select sum(tresult) as result from tresultrawdata where idrawdata = 72 and tmonth between 1 and bulan and tyear = tahun and compId= site', '2022-05-19 00:00:00', 1),
(4, 'Critical Finding (#)', 'select tresult as result from tresultrawdata where idrawdata = 74 and tmonth = bulan and tyear = tahun and compId= site', 'select sum(tresult) as result from tresultrawdata where idrawdata = 74 and tmonth between 1 and bulan and tyear = tahun and compId= site', '2022-05-19 00:00:00', 1),
(5, 'BRFT (%)', 'select (\n    ((SELECT `tresult` FROM `tresultrawdata` WHERE idrawdata = 54 and tMonth = bulan and tYear= tahun and compId= site)\n    - (SELECT `tresult` FROM `tresultrawdata` WHERE idrawdata = 56 and tMonth = bulan and tYear= tahun and compId= site))\n	/(select `tResult` from tresultrawdata where idRawData = 54 and tMonth = bulan and tYear= tahun and compId= site) * 100) \n    as result \nfrom DUAL', 'select (\r\n    ((SELECT sum(`tresult`) FROM `tresultrawdata` WHERE idrawdata = 54 and tMonth BETWEEN 1 and bulan and tYear= tahun and compId= site)\r\n    - (SELECT sum(`tresult`) FROM `tresultrawdata` WHERE idrawdata = 56 and tMonth BETWEEN 1 and bulan and tYear= tahun and compId= site))\r\n	/(select sum(`tResult`) from tresultrawdata where idRawData = 54 and tMonth BETWEEN 1 and bulan and tYear= tahun and compId= site) * 100) \r\n    as result \r\nfrom DUAL', '2022-05-19 00:00:00', 1),
(6, 'Reduced Deviation (%)', 'select ((SELECT `tresult` FROM `tresultrawdata` WHERE idrawdata = 60 and tMonth= bulan and tYear= tahun and compId= site)/(select `tResult` from tresultrawdata where idRawData = 61 and tMonth= bulan and tYear= tahun and compId= site) - 1)*100 as result from DUAL', 'select ((SELECT sum(`tresult`) FROM `tresultrawdata` WHERE idrawdata = 60 and tMonth BETWEEN 1 and bulan and tYear= tahun and compId= site)/(select sum(`tResult`) from tresultrawdata where idRawData = 61 and tMonth BETWEEN 1 and bulan and tYear= tahun and compId= site)- 1 )*100 as result from DUAL', '2022-05-19 00:00:00', 1),
(7, 'Reduce Internal Failure Cost (Time)(%)', 'select ((SELECT `tresult` FROM `tresultrawdata` WHERE idrawdata = 51 and tMonth= bulan and tYear= tahun and compId= site)/(select `tResult` from tresultrawdata where idRawData = 50 and tMonth= bulan and tYear= tahun and compId= site) - 1)*100 as result from DUAL', 'select ((SELECT sum(`tresult`) FROM `tresultrawdata` WHERE idrawdata = 51 and tMonth between 1 and bulan and tYear= tahun and compId= site)/(select sum(`tresult`) from tresultrawdata where idRawData = 50 and tMonth BETWEEN 1 and bulan and tYear= tahun and compId= site) - 1)*100 as result from DUAL', '2022-05-19 00:00:00', 1),
(8, '% Rework', 'select ((SELECT `tresult` FROM `tresultrawdata` WHERE idrawdata = 55 and tMonth= bulan and tYear= tahun and compId= site)/(select `tResult` from tresultrawdata where idRawData = 53 and tMonth= bulan and tYear= tahun and compId= site))*100 as result from DUAL', 'select ((SELECT sum(`tresult`) FROM `tresultrawdata` WHERE idrawdata = 55 and tMonth BETWEEN 1 and bulan and tYear= tahun and compId= site)/(select sum(`tresult`) from tresultrawdata where idRawData = 53 and tMonth BETWEEN 1 and bulan and tYear= tahun and compId= site))*100 as result from DUAL', '2022-05-19 00:00:00', 1),
(9, 'Fully Rejected Batch', 'select tresult as result from tresultrawdata where idrawdata = 73 and tmonth = bulan and tyear = tahun and compId= site', 'select sum(tresult) as result from tresultrawdata where idrawdata = 73 and tmonth between 1 and bulan and tyear = tahun and compId= site', '2022-05-19 00:00:00', 1),
(10, 'COGM/Unit (%) to Standard', 'select ((SELECT `tresult` FROM `tresultrawdata` WHERE idrawdata = 13 and tMonth= bulan and tYear= tahun and compId= site)/(select `tResult` from tresultrawdata where idRawData = 8 and tMonth= bulan and tYear= tahun and compId= site)) * 100 as result from DUAL', 'select ((SELECT sum(`tresult`) FROM `tresultrawdata` WHERE idrawdata = 13 and tMonth BETWEEN 1 and bulan and tYear= tahun and compId= site)/(select sum(`tResult`) from tresultrawdata where idRawData = 8 and tMonth BETWEEN 1 and bulan and tYear= tahun and compId= site)) * 100 as result from DUAL', '2022-05-19 00:00:00', 1),
(11, 'COGM/Unit (%) to Last Year', 'select ((\r\n    (SELECT `tresult` FROM `tresultrawdata` WHERE idrawdata = 13 and tMonth= bulan and tYear= tahun and compId= site)/\r\n    (select `tResult` from tresultrawdata where idRawData = 25 and tMonth= bulan and tYear= tahun and compId= site)\r\n)/((SELECT `tresult` FROM `tresultrawdata` WHERE idrawdata = 18 and tMonth= bulan and tYear= tahun and compId= site)/\r\n    (select `tResult` from tresultrawdata where idRawData = 26 and tMonth= bulan and tYear= tahun and compId= site))) * 100 as result from DUAL', 'select ((\r\n    (SELECT sum(`tresult`) FROM `tresultrawdata` WHERE idrawdata = 13 and tMonth BETWEEN 1 and bulan and tYear= tahun and compId= site)/\r\n    (select sum(`tresult`) from tresultrawdata where idRawData = 25 and tMonth BETWEEN 1 and bulan and tYear= tahun and compId= site)\r\n)/((SELECT sum(`tresult`) FROM `tresultrawdata` WHERE idrawdata = 18 and tMonth BETWEEN 1 and bulan and tYear= tahun and compId= site)/\r\n    (select sum(`tresult`) from tresultrawdata where idRawData = 26 and tMonth BETWEEN 1 and bulan and tYear= tahun and compId= site))) * 100 as result from DUAL', '2022-05-19 00:00:00', 1),
(12, 'DL/Unit (%) to Last Year', 'select ((\n    (SELECT `tresult` FROM `tresultrawdata` WHERE idrawdata = 17 and tMonth= bulan and tYear= tahun and compId= site)/\n    (select `tResult` from tresultrawdata where idRawData = 25 and tMonth= bulan and tYear= tahun and compId= site)\n)/((SELECT `tresult` FROM `tresultrawdata` WHERE idrawdata = 22 and tMonth= bulan and tYear= tahun and compId= site)/\n    (select `tResult` from tresultrawdata where idRawData = 26 and tMonth= bulan and tYear= tahun and compId= site))) * 100 as result from DUAL', 'select ((\n    (SELECT sum(`tresult`) FROM `tresultrawdata` WHERE idrawdata = 17 and tMonth BETWEEN 1 and bulan and tYear= tahun and compId= site)/\n    (select sum(`tResult`) from tresultrawdata where idRawData = 25 and tMonth BETWEEN 1 and bulan and tYear= tahun and compId= site)\n)/((SELECT sum(`tresult`) FROM `tresultrawdata` WHERE idrawdata = 22 and tMonth BETWEEN 1 and bulan and tYear= tahun and compId= site)/\n    (select sum(`tResult`) from tresultrawdata where idRawData = 26 and tMonth BETWEEN 1 and bulan and tYear= tahun and compId= site))) * 100 as result from DUAL', '2022-05-19 00:00:00', 1),
(13, 'FOH/Unit (%) to Last Year', 'select ((\r\n    (SELECT `tresult` FROM `tresultrawdata` WHERE idrawdata = 16 and tMonth= bulan and tYear= tahun and compId= site)/\r\n    (select `tResult` from tresultrawdata where idRawData = 25 and tMonth= bulan and tYear= tahun and compId= site)\r\n)/((SELECT `tresult` FROM `tresultrawdata` WHERE idrawdata = 21 and tMonth= bulan and tYear= tahun and compId= site)/\r\n    (select `tResult` from tresultrawdata where idRawData = 26 and tMonth= bulan and tYear= tahun and compId= site))) * 100 as result from DUAL', 'select ((\r\n    (SELECT sum(`tresult`) FROM `tresultrawdata` WHERE idrawdata = 16 and tMonth BETWEEN 1 and bulan and tYear= tahun and compId= site)/\r\n    (select sum(`tResult`) from tresultrawdata where idRawData = 25 and tMonth BETWEEN 1 and bulan and tYear= tahun and compId= site)\r\n)/((SELECT sum(`tresult`) FROM `tresultrawdata` WHERE idrawdata = 21 and tMonth BETWEEN 1 and bulan and tYear= tahun and compId= site)/\r\n    (select sum(`tResult`) from tresultrawdata where idRawData = 26 and tMonth BETWEEN 1 and bulan and tYear= tahun and compId= site))) * 100 as result from DUAL', '2022-05-19 00:00:00', 1),
(14, 'Cost Saving (Billion Rupiah)', 'select tresult as result from tresultrawdata where idrawdata = 46 and tmonth = bulan and tyear = tahun and compId= site', 'select sum(tresult) as result from tresultrawdata where idrawdata = 46 and tmonth between 1 and bulan and tyear = tahun and compId= site', '2022-05-19 00:00:00', 1),
(15, 'Reduce Internal Failure Cost (Value)', 'select ((SELECT `tresult` FROM `tresultrawdata` WHERE idrawdata = 48 and tMonth= bulan and tYear= tahun and compId= site)/(select `tResult` from tresultrawdata where idRawData = 47 and tMonth= bulan and tYear= tahun and compId= site) - 1)*100 as result from DUAL', 'select ((SELECT sum(`tresult`) FROM `tresultrawdata` WHERE idrawdata = 48 and tMonth BETWEEN 1 and bulan and tYear= tahun and compId= site)/(select sum(`tResult`) from tresultrawdata where idRawData = 47 and tMonth BETWEEN 1 and bulan and tYear= tahun and compId= site) - 1 )*100 as result from DUAL', '2022-05-19 00:00:00', 1),
(16, 'Overall Plant Effectiveness (%)', 'select tresult as result from tresultrawdata where idrawdata = 62 and tmonth = bulan and tyear = tahun and compId= site', 'select AVG(tresult) as result from tresultrawdata where idrawdata = 62 and tmonth between 1 and bulan and tyear = tahun and compId= site', '2022-05-19 00:00:00', 1),
(17, 'Yield (%)', 'select tresult as result from tresultrawdata where idrawdata = 63 and tmonth = bulan and tyear = tahun and compId= site', 'select AVG(tresult) as result from tresultrawdata where idrawdata = 63 and tmonth between 1 and bulan and tyear = tahun and compId= site', '2022-05-19 00:00:00', 1),
(18, 'Output / Manhours Actual', 'select ((SELECT `tresult` FROM `tresultrawdata` WHERE idrawdata = 25 and tMonth= bulan and tYear= tahun and compId= site)/(select `tResult` from tresultrawdata where idRawData = 27 and tMonth= bulan and tYear= tahun and compId= site)) as result from DUAL', 'select ((SELECT sum(`tresult`) FROM `tresultrawdata` WHERE idrawdata = 25 and tMonth BETWEEN 1 and bulan and tYear= tahun and compId= site)/(select sum(`tResult`) from tresultrawdata where idRawData = 27 and tMonth BETWEEN 1 and bulan and tYear= tahun and compId= site) ) as result from DUAL', '2022-05-19 00:00:00', 1),
(19, 'Order Fulfillment (%)', 'select tresult as result from tresultrawdata where idrawdata = 70 and tmonth = bulan and tyear = tahun and compId= site', 'select AVG(tresult) as result from tresultrawdata where idrawdata = 70 and tmonth between 1 and bulan and tyear = tahun and compId= site', '2022-05-19 00:00:00', 1),
(20, 'Plant Cycle Time Sterile (days)', 'select tresult as result from tresultrawdata where idrawdata = 66 and tmonth = bulan and tyear = tahun and compId= site', 'select AVG(tresult) as result from tresultrawdata where idrawdata = 66 and tmonth between 1 and bulan and tyear = tahun and compId= site', '2022-05-19 00:00:00', 1),
(21, 'Plant Cycle Time Non Sterile (days)', 'select tresult as result from tresultrawdata where idrawdata = 67 and tmonth = bulan and tyear = tahun and compId= site', 'select AVG(tresult) as result from tresultrawdata where idrawdata = 67 and tmonth between 1 and bulan and tyear = tahun and compId= site', '2022-05-19 00:00:00', 1),
(22, 'Loss Time Accident (#)', 'select tresult as result from tresultrawdata where idrawdata = 78 and tmonth = bulan and tyear = tahun and compId= site', 'select SUM(tresult) as result from tresultrawdata where idrawdata = 78 and tmonth between 1 and bulan and tyear = tahun and compId= site', '2022-05-19 00:00:00', 1),
(23, 'Non Loss Time Accident Reduction (%)', 'select ((SELECT `tresult` FROM `tresultrawdata` WHERE idrawdata = 80 and tMonth= bulan and tYear= tahun and compId= site)/(select `tResult` from tresultrawdata where idRawData = 81 and tMonth= bulan and tYear= tahun and compId= site) - 1)*100 as result from DUAL', 'select ((SELECT sum(`tresult`) FROM `tresultrawdata` WHERE idrawdata = 80 and tMonth BETWEEN 1 and bulan and tYear= tahun and compId= site)/(select sum(`tResult`) from tresultrawdata where idRawData = 81 and tMonth BETWEEN 1 and bulan and tYear= tahun and compId= site) - 1 )*100 as result from DUAL', '2022-05-19 00:00:00', 1),
(24, 'First Aid Reduction (%)', 'select ((SELECT `tresult` FROM `tresultrawdata` WHERE idrawdata = 82 and tMonth= bulan and tYear= tahun and compId= site)/(select `tResult` from tresultrawdata where idRawData = 83 and tMonth= bulan and tYear= tahun and compId= site) - 1)*100 as result from DUAL', 'select ((SELECT sum(`tresult`) FROM `tresultrawdata` WHERE idrawdata = 82 and tMonth BETWEEN 1 and bulan and tYear= tahun and compId= site)/(select sum(`tResult`) from tresultrawdata where idRawData = 83 and tMonth BETWEEN 1 and bulan and tYear= tahun and compId= site) - 1 )*100 as result from DUAL', '2022-05-19 00:00:00', 1),
(25, 'GP/HR Cost Actual', 'select ((SELECT `tresult` FROM `tresultrawdata` WHERE idrawdata = 40 and tMonth= bulan and tYear= tahun and compId= site)/(select `tResult` from tresultrawdata where idRawData = 43 and tMonth= bulan and tYear= tahun and compId= site)) as result from DUAL', 'select ((SELECT sum(`tresult`) FROM `tresultrawdata` WHERE idrawdata = 40 and tMonth BETWEEN 1 and bulan and tYear= tahun and compId= site)/(select sum(`tResult`) from tresultrawdata where idRawData = 43 and tMonth BETWEEN 1 and bulan and tYear= tahun and compId= site)) as result from DUAL', '2022-05-19 00:00:00', 1),
(26, 'GP/HR Cost Budget', 'select ((SELECT `tresult` FROM `tresultrawdata` WHERE idrawdata = 39 and tMonth= bulan and tYear= tahun and compId= site)/(select `tResult` from tresultrawdata where idRawData = 42 and tMonth= bulan and tYear= tahun and compId= site)) as result from DUAL', 'select ((SELECT sum(`tresult`) FROM `tresultrawdata` WHERE idrawdata = 39 and tMonth BETWEEN 1 and bulan and tYear= tahun and compId= site)/(select sum(`tResult`) from tresultrawdata where idRawData = 42 and tMonth BETWEEN 1 and bulan and tYear= tahun and compId= site)) as result from DUAL', '2022-05-19 00:00:00', 1),
(27, 'Output / Manhours Budget', 'select ((SELECT `tresult` FROM `tresultrawdata` WHERE idrawdata = 23 and tMonth= bulan and tYear= tahun and compId= site)/(select `tResult` from tresultrawdata where idRawData = 28 and tMonth= bulan and tYear= tahun and compId= site)) as result from DUAL', 'select ((SELECT sum(`tresult`) FROM `tresultrawdata` WHERE idrawdata = 23 and tMonth BETWEEN 1 and bulan and tYear= tahun and compId= site)/(select sum(`tResult`) from tresultrawdata where idRawData = 28 and tMonth BETWEEN 1 and bulan and tYear= tahun and compId= site)) as result from DUAL', '2022-05-19 00:00:00', 1),
(28, 'Cost Saving Target', 'select tresult as result from tresultrawdata where idrawdata = 45 and tmonth = bulan and tyear = tahun and compId= site', 'select SUM(tresult) as result from tresultrawdata where idrawdata = 45 and tmonth between 1 and bulan and tyear = tahun and compId= site', '2022-05-19 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mrumuskpi_bu`
--

CREATE TABLE `mrumuskpi_bu` (
  `id` int(11) NOT NULL,
  `vKet` varchar(255) NOT NULL,
  `mRumusMTD` text NOT NULL,
  `mRumusYTD` text NOT NULL,
  `dCreate` datetime NOT NULL,
  `iUsed` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mrumuskpi_bu`
--

INSERT INTO `mrumuskpi_bu` (`id`, `vKet`, `mRumusMTD`, `mRumusYTD`, `dCreate`, `iUsed`) VALUES
(1, 'Customer Complaint (PPM)', 'select ((SELECT `tresult` FROM `tresultrawdata` WHERE idrawdata = 76 and tMonth= bulan and tYear= tahun)/(select `tResult` from tresultrawdata where idRawData = 25 and tMonth= bulan and tYear= tahun)) * 1000000 as result from DUAL', 'select ((SELECT sum(`tresult`)tresult FROM `tresultrawdata` WHERE idrawdata = 76 and tMonth between 1 and bulan and tYear= tahun)/(select sum(`tResult`)tResult from tresultrawdata where idRawData = 25 and tMonth between 1 and bulan and tYear= tahun)) * 1000000 as result from DUAL', '2022-05-19 00:00:00', 1),
(2, 'Critical Customer Complaint  (#)', 'select tresult as result from tresultrawdata where idrawdata = 75 and tmonth = bulan and tyear = tahun', 'select sum(tresult) as result from tresultrawdata where idrawdata = 75 and tmonth between 1 and bulan and tyear = tahun', '2022-05-19 00:00:00', 1),
(3, 'Product Recall (#)', 'select tresult as result from tresultrawdata where idrawdata = 72 and tmonth = bulan and tyear = tahun', 'select sum(tresult) as result from tresultrawdata where idrawdata = 72 and tmonth between 1 and bulan and tyear = tahun', '2022-05-19 00:00:00', 1),
(4, 'Critical Finding (#)', 'select tresult as result from tresultrawdata where idrawdata = 74 and tmonth = bulan and tyear = tahun', 'select sum(tresult) as result from tresultrawdata where idrawdata = 74 and tmonth between 1 and bulan and tyear = tahun', '2022-05-19 00:00:00', 1),
(5, 'BRFT (%)', 'select (\n    ((SELECT `tresult` FROM `tresultrawdata` WHERE idrawdata = 54 and tMonth = bulan and tYear= tahun)\n    - (SELECT `tresult` FROM `tresultrawdata` WHERE idrawdata = 56 and tMonth = bulan and tYear= tahun))\n	/(select `tResult` from tresultrawdata where idRawData = 54 and tMonth = bulan and tYear= tahun) * 100) \n    as result \nfrom DUAL', 'select (\r\n    ((SELECT sum(`tresult`) FROM `tresultrawdata` WHERE idrawdata = 54 and tMonth BETWEEN 1 and bulan and tYear= tahun)\r\n    - (SELECT sum(`tresult`) FROM `tresultrawdata` WHERE idrawdata = 56 and tMonth BETWEEN 1 and bulan and tYear= tahun))\r\n	/(select sum(`tResult`) from tresultrawdata where idRawData = 54 and tMonth BETWEEN 1 and bulan and tYear= tahun) * 100) \r\n    as result \r\nfrom DUAL', '2022-05-19 00:00:00', 1),
(6, 'Reduced Deviation (%)', 'select ((SELECT `tresult` FROM `tresultrawdata` WHERE idrawdata = 60 and tMonth= bulan and tYear= tahun)/(select `tResult` from tresultrawdata where idRawData = 61 and tMonth= bulan and tYear= tahun) - 1)*100 as result from DUAL', 'select ((SELECT sum(`tresult`) FROM `tresultrawdata` WHERE idrawdata = 60 and tMonth BETWEEN 1 and bulan and tYear= tahun)/(select sum(`tResult`) from tresultrawdata where idRawData = 61 and tMonth BETWEEN 1 and bulan and tYear= tahun)- 1 )*100 as result from DUAL', '2022-05-19 00:00:00', 1),
(7, 'Reduce Internal Failure Cost (Time)(%)', 'select ((SELECT `tresult` FROM `tresultrawdata` WHERE idrawdata = 51 and tMonth= bulan and tYear= tahun)/(select `tResult` from tresultrawdata where idRawData = 50 and tMonth= bulan and tYear= tahun) - 1)*100 as result from DUAL', 'select ((SELECT sum(`tresult`) FROM `tresultrawdata` WHERE idrawdata = 51 and tMonth between 1 and bulan and tYear= tahun)/(select sum(`tresult`) from tresultrawdata where idRawData = 50 and tMonth BETWEEN 1 and bulan and tYear= tahun) - 1)*100 as result from DUAL', '2022-05-19 00:00:00', 1),
(8, '% Rework', 'select ((SELECT `tresult` FROM `tresultrawdata` WHERE idrawdata = 55 and tMonth= bulan and tYear= tahun)/(select `tResult` from tresultrawdata where idRawData = 53 and tMonth= bulan and tYear= tahun))*100 as result from DUAL', 'select ((SELECT sum(`tresult`) FROM `tresultrawdata` WHERE idrawdata = 55 and tMonth BETWEEN 1 and bulan and tYear= tahun)/(select sum(`tresult`) from tresultrawdata where idRawData = 53 and tMonth BETWEEN 1 and bulan and tYear= tahun))*100 as result from DUAL', '2022-05-19 00:00:00', 1),
(9, 'Fully Rejected Batch', 'select tresult as result from tresultrawdata where idrawdata = 73 and tmonth = bulan and tyear = tahun', 'select sum(tresult) as result from tresultrawdata where idrawdata = 73 and tmonth between 1 and bulan and tyear = tahun', '2022-05-19 00:00:00', 1),
(10, 'COGM/Unit (%) to Standard', 'select ((SELECT `tresult` FROM `tresultrawdata` WHERE idrawdata = 13 and tMonth= bulan and tYear= tahun)/(select `tResult` from tresultrawdata where idRawData = 8 and tMonth= bulan and tYear= tahun)) * 100 as result from DUAL', 'select ((SELECT sum(`tresult`) FROM `tresultrawdata` WHERE idrawdata = 13 and tMonth BETWEEN 1 and bulan and tYear= tahun)/(select sum(`tResult`) from tresultrawdata where idRawData = 8 and tMonth BETWEEN 1 and bulan and tYear= tahun)) * 100 as result from DUAL', '2022-05-19 00:00:00', 1),
(11, 'COGM/Unit (%) to Last Year', 'select ((\r\n    (SELECT `tresult` FROM `tresultrawdata` WHERE idrawdata = 13 and tMonth= bulan and tYear= tahun)/\r\n    (select `tResult` from tresultrawdata where idRawData = 25 and tMonth= bulan and tYear= tahun)\r\n)/((SELECT `tresult` FROM `tresultrawdata` WHERE idrawdata = 18 and tMonth= bulan and tYear= tahun)/\r\n    (select `tResult` from tresultrawdata where idRawData = 26 and tMonth= bulan and tYear= tahun))) * 100 as result from DUAL', 'select ((\r\n    (SELECT sum(`tresult`) FROM `tresultrawdata` WHERE idrawdata = 13 and tMonth BETWEEN 1 and bulan and tYear= tahun)/\r\n    (select sum(`tresult`) from tresultrawdata where idRawData = 25 and tMonth BETWEEN 1 and bulan and tYear= tahun)\r\n)/((SELECT sum(`tresult`) FROM `tresultrawdata` WHERE idrawdata = 18 and tMonth BETWEEN 1 and bulan and tYear= tahun)/\r\n    (select sum(`tresult`) from tresultrawdata where idRawData = 26 and tMonth BETWEEN 1 and bulan and tYear= tahun))) * 100 as result from DUAL', '2022-05-19 00:00:00', 1),
(12, 'DL/Unit (%) to Last Year', 'select ((\n    (SELECT `tresult` FROM `tresultrawdata` WHERE idrawdata = 17 and tMonth= bulan and tYear= tahun)/\n    (select `tResult` from tresultrawdata where idRawData = 25 and tMonth= bulan and tYear= tahun)\n)/((SELECT `tresult` FROM `tresultrawdata` WHERE idrawdata = 22 and tMonth= bulan and tYear= tahun)/\n    (select `tResult` from tresultrawdata where idRawData = 26 and tMonth= bulan and tYear= tahun))) * 100 as result from DUAL', 'select ((\n    (SELECT sum(`tresult`) FROM `tresultrawdata` WHERE idrawdata = 17 and tMonth BETWEEN 1 and bulan and tYear= tahun)/\n    (select sum(`tResult`) from tresultrawdata where idRawData = 25 and tMonth BETWEEN 1 and bulan and tYear= tahun)\n)/((SELECT sum(`tresult`) FROM `tresultrawdata` WHERE idrawdata = 22 and tMonth BETWEEN 1 and bulan and tYear= tahun)/\n    (select sum(`tResult`) from tresultrawdata where idRawData = 26 and tMonth BETWEEN 1 and bulan and tYear= tahun))) * 100 as result from DUAL', '2022-05-19 00:00:00', 1),
(13, 'FOH/Unit (%) to Last Year', 'select ((\r\n    (SELECT `tresult` FROM `tresultrawdata` WHERE idrawdata = 16 and tMonth= bulan and tYear= tahun)/\r\n    (select `tResult` from tresultrawdata where idRawData = 25 and tMonth= bulan and tYear= tahun)\r\n)/((SELECT `tresult` FROM `tresultrawdata` WHERE idrawdata = 21 and tMonth= bulan and tYear= tahun)/\r\n    (select `tResult` from tresultrawdata where idRawData = 26 and tMonth= bulan and tYear= tahun))) * 100 as result from DUAL', 'select ((\r\n    (SELECT sum(`tresult`) FROM `tresultrawdata` WHERE idrawdata = 16 and tMonth BETWEEN 1 and bulan and tYear= tahun)/\r\n    (select sum(`tResult`) from tresultrawdata where idRawData = 25 and tMonth BETWEEN 1 and bulan and tYear= tahun)\r\n)/((SELECT sum(`tresult`) FROM `tresultrawdata` WHERE idrawdata = 21 and tMonth BETWEEN 1 and bulan and tYear= tahun)/\r\n    (select sum(`tResult`) from tresultrawdata where idRawData = 26 and tMonth BETWEEN 1 and bulan and tYear= tahun))) * 100 as result from DUAL', '2022-05-19 00:00:00', 1),
(14, 'Cost Saving (Billion Rupiah)', 'select tresult as result from tresultrawdata where idrawdata = 46 and tmonth = bulan and tyear = tahun', 'select sum(tresult) as result from tresultrawdata where idrawdata = 46 and tmonth between 1 and bulan and tyear = tahun', '2022-05-19 00:00:00', 1),
(15, 'Reduce Internal Failure Cost (Value)', 'select ((SELECT `tresult` FROM `tresultrawdata` WHERE idrawdata = 48 and tMonth= bulan and tYear= tahun)/(select `tResult` from tresultrawdata where idRawData = 47 and tMonth= bulan and tYear= tahun) - 1)*100 as result from DUAL', 'select ((SELECT sum(`tresult`) FROM `tresultrawdata` WHERE idrawdata = 48 and tMonth BETWEEN 1 and bulan and tYear= tahun)/(select sum(`tResult`) from tresultrawdata where idRawData = 47 and tMonth BETWEEN 1 and bulan and tYear= tahun) - 1 )*100 as result from DUAL', '2022-05-19 00:00:00', 1),
(16, 'Overall Plant Effectiveness (%)', 'select tresult as result from tresultrawdata where idrawdata = 62 and tmonth = bulan and tyear = tahun', 'select AVG(tresult) as result from tresultrawdata where idrawdata = 62 and tmonth between 1 and bulan and tyear = tahun', '2022-05-19 00:00:00', 1),
(17, 'Yield (%)', 'select tresult as result from tresultrawdata where idrawdata = 63 and tmonth = bulan and tyear = tahun', 'select AVG(tresult) as result from tresultrawdata where idrawdata = 63 and tmonth between 1 and bulan and tyear = tahun', '2022-05-19 00:00:00', 1),
(18, 'Output / Manhours Actual', 'select ((SELECT `tresult` FROM `tresultrawdata` WHERE idrawdata = 25 and tMonth= bulan and tYear= tahun)/(select `tResult` from tresultrawdata where idRawData = 27 and tMonth= bulan and tYear= tahun)) as result from DUAL', 'select ((SELECT sum(`tresult`) FROM `tresultrawdata` WHERE idrawdata = 25 and tMonth BETWEEN 1 and bulan and tYear= tahun)/(select sum(`tResult`) from tresultrawdata where idRawData = 27 and tMonth BETWEEN 1 and bulan and tYear= tahun) ) as result from DUAL', '2022-05-19 00:00:00', 1),
(19, 'Order Fulfillment (%)', 'select tresult as result from tresultrawdata where idrawdata = 70 and tmonth = bulan and tyear = tahun', 'select AVG(tresult) as result from tresultrawdata where idrawdata = 70 and tmonth between 1 and bulan and tyear = tahun', '2022-05-19 00:00:00', 1),
(20, 'Plant Cycle Time Sterile (days)', 'select tresult as result from tresultrawdata where idrawdata = 66 and tmonth = bulan and tyear = tahun', 'select AVG(tresult) as result from tresultrawdata where idrawdata = 66 and tmonth between 1 and bulan and tyear = tahun', '2022-05-19 00:00:00', 1),
(21, 'Plant Cycle Time Non Sterile (days)', 'select tresult as result from tresultrawdata where idrawdata = 67 and tmonth = bulan and tyear = tahun', 'select AVG(tresult) as result from tresultrawdata where idrawdata = 67 and tmonth between 1 and bulan and tyear = tahun', '2022-05-19 00:00:00', 1),
(22, 'Loss Time Accident (#)', 'select tresult as result from tresultrawdata where idrawdata = 78 and tmonth = bulan and tyear = tahun', 'select SUM(tresult) as result from tresultrawdata where idrawdata = 78 and tmonth between 1 and bulan and tyear = tahun', '2022-05-19 00:00:00', 1),
(23, 'Non Loss Time Accident Reduction (%)', 'select ((SELECT `tresult` FROM `tresultrawdata` WHERE idrawdata = 80 and tMonth= bulan and tYear= tahun)/(select `tResult` from tresultrawdata where idRawData = 81 and tMonth= bulan and tYear= tahun) - 1)*100 as result from DUAL', 'select ((SELECT sum(`tresult`) FROM `tresultrawdata` WHERE idrawdata = 80 and tMonth BETWEEN 1 and bulan and tYear= tahun)/(select sum(`tResult`) from tresultrawdata where idRawData = 81 and tMonth BETWEEN 1 and bulan and tYear= tahun) - 1 )*100 as result from DUAL', '2022-05-19 00:00:00', 1),
(24, 'First Aid Reduction (%)', 'select ((SELECT `tresult` FROM `tresultrawdata` WHERE idrawdata = 82 and tMonth= bulan and tYear= tahun)/(select `tResult` from tresultrawdata where idRawData = 83 and tMonth= bulan and tYear= tahun) - 1)*100 as result from DUAL', 'select ((SELECT sum(`tresult`) FROM `tresultrawdata` WHERE idrawdata = 82 and tMonth BETWEEN 1 and bulan and tYear= tahun)/(select sum(`tResult`) from tresultrawdata where idRawData = 83 and tMonth BETWEEN 1 and bulan and tYear= tahun) - 1 )*100 as result from DUAL', '2022-05-19 00:00:00', 1),
(25, 'GP/HR Cost Actual', 'select ((SELECT `tresult` FROM `tresultrawdata` WHERE idrawdata = 40 and tMonth= bulan and tYear= tahun)/(select `tResult` from tresultrawdata where idRawData = 43 and tMonth= bulan and tYear= tahun)) as result from DUAL', 'select ((SELECT sum(`tresult`) FROM `tresultrawdata` WHERE idrawdata = 40 and tMonth BETWEEN 1 and bulan and tYear= tahun)/(select sum(`tResult`) from tresultrawdata where idRawData = 43 and tMonth BETWEEN 1 and bulan and tYear= tahun)) as result from DUAL', '2022-05-19 00:00:00', 1),
(26, 'GP/HR Cost Budget', 'select ((SELECT `tresult` FROM `tresultrawdata` WHERE idrawdata = 39 and tMonth= bulan and tYear= tahun)/(select `tResult` from tresultrawdata where idRawData = 42 and tMonth= bulan and tYear= tahun)) as result from DUAL', 'select ((SELECT sum(`tresult`) FROM `tresultrawdata` WHERE idrawdata = 39 and tMonth BETWEEN 1 and bulan and tYear= tahun)/(select sum(`tResult`) from tresultrawdata where idRawData = 42 and tMonth BETWEEN 1 and bulan and tYear= tahun)) as result from DUAL', '2022-05-19 00:00:00', 1),
(27, 'Output / Manhours Budget', 'select ((SELECT `tresult` FROM `tresultrawdata` WHERE idrawdata = 23 and tMonth= bulan and tYear= tahun)/(select `tResult` from tresultrawdata where idRawData = 28 and tMonth= bulan and tYear= tahun)) as result from DUAL', 'select ((SELECT sum(`tresult`) FROM `tresultrawdata` WHERE idrawdata = 23 and tMonth BETWEEN 1 and bulan and tYear= tahun)/(select sum(`tResult`) from tresultrawdata where idRawData = 28 and tMonth BETWEEN 1 and bulan and tYear= tahun)) as result from DUAL', '2022-05-19 00:00:00', 1),
(28, 'Cost Saving Target', 'select tresult as result from tresultrawdata where idrawdata = 45 and tmonth = bulan and tyear = tahun', 'select SUM(tresult) as result from tresultrawdata where idrawdata = 45 and tmonth between 1 and bulan and tyear = tahun', '2022-05-19 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `msteppertanyaanhse`
--

CREATE TABLE `msteppertanyaanhse` (
  `id` int(11) NOT NULL,
  `idDataPertanyaanHSE` int(11) NOT NULL,
  `iUrutPertanyaanHSE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tresultgrafik`
--

CREATE TABLE `tresultgrafik` (
  `id` int(11) NOT NULL,
  `compId` int(11) NOT NULL DEFAULT 4,
  `idRawData` int(11) NOT NULL,
  `tResultMTD` double NOT NULL,
  `tResultYTD` double NOT NULL,
  `tMonth` double NOT NULL,
  `tYear` double NOT NULL,
  `dCreate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tresultgrafik`
--

INSERT INTO `tresultgrafik` (`id`, `compId`, `idRawData`, `tResultMTD`, `tResultYTD`, `tMonth`, `tYear`, `dCreate`) VALUES
(224, 4, 1, 20987.005465079, 20987.005465079, 1, 2022, '2022-10-06 05:13:04'),
(225, 4, 2, 6866.90416825, 6866.90416825, 1, 2022, '2022-10-06 05:13:04'),
(226, 4, 3, 1269.398188537, 1269.398188537, 1, 2022, '2022-10-06 05:13:04'),
(227, 4, 4, 99.92, 99.92, 1, 2022, '2022-10-06 05:13:04'),
(228, 4, 1, 18105.732908412, 19510.737648935, 2, 2022, '2022-10-06 05:13:09'),
(229, 4, 2, 6341.180770512, 6597.541059759, 2, 2022, '2022-10-06 05:13:09'),
(230, 4, 3, 1235.711290761, 1252.138147345, 2, 2022, '2022-10-06 05:13:09'),
(231, 4, 4, 99.63, 99.775, 2, 2022, '2022-10-06 05:13:09'),
(236, 4, 1, 19454.42533648, 20281.465178066, 4, 2022, '2022-10-06 05:13:17'),
(237, 4, 2, 5804.598455448, 5429.392859784, 4, 2022, '2022-10-06 05:13:17'),
(238, 4, 3, 1017.499176548, 1224.450744605, 4, 2022, '2022-10-06 05:13:17'),
(239, 4, 4, 98.15, 99.1525, 4, 2022, '2022-10-06 05:13:17'),
(240, 4, 1, 22658.363590595, 20641.687260907, 5, 2022, '2022-10-06 05:13:21'),
(241, 4, 2, 3117.89692535, 5079.08260858, 5, 2022, '2022-10-06 05:13:21'),
(242, 4, 3, 904.741196967, 1175.998341866, 5, 2022, '2022-10-06 05:13:21'),
(243, 4, 4, 100.09, 99.34, 5, 2022, '2022-10-06 05:13:21'),
(284, 4, 1, 20256.027596725, 19701.480404332, 10, 2022, '2022-11-06 09:10:11'),
(285, 4, 2, 5097.069273181, 5462.41145229, 10, 2022, '2022-11-06 09:10:11'),
(286, 4, 3, 884.646133485, 1105.455000658, 10, 2022, '2022-11-06 09:10:11'),
(287, 4, 4, 99.14, 98.148, 10, 2022, '2022-11-06 09:10:11'),
(288, 4, 1, 19020.845705611, 19638.589139509, 9, 2022, '2022-11-06 09:10:22'),
(289, 4, 2, 5798.246762343, 5503.844953446, 9, 2022, '2022-11-06 09:10:23'),
(290, 4, 3, 963.313877368, 1130.496961255, 9, 2022, '2022-11-06 09:10:23'),
(291, 4, 4, 99.84, 98.037777777, 9, 2022, '2022-11-06 09:10:23'),
(292, 4, 1, 18794.84852155, 19720.099166034, 8, 2022, '2022-11-06 09:10:33'),
(293, 4, 2, 6170.471309121, 5464.999215984, 8, 2022, '2022-11-06 09:10:33'),
(294, 4, 3, 929.796842883, 1152.556439113, 8, 2022, '2022-11-06 09:10:33'),
(295, 4, 4, 98, 97.8125, 8, 2022, '2022-11-06 09:10:33'),
(296, 4, 1, 16800.862474501, 19878.948202751, 7, 2022, '2022-11-06 09:10:43'),
(297, 4, 2, 5568.964351981, 5343.882237473, 7, 2022, '2022-11-06 09:10:43'),
(298, 4, 3, 937.706945087, 1190.800289567, 7, 2022, '2022-11-06 09:10:43'),
(299, 4, 4, 96, 97.785714285, 7, 2022, '2022-11-06 09:10:43'),
(300, 4, 1, 19861.597898013, 20493.963242998, 6, 2022, '2022-11-06 09:10:51'),
(301, 4, 2, 6239.928960056, 5298.90984296, 6, 2022, '2022-11-06 09:10:51'),
(302, 4, 3, 1521.204946941, 1241.369450788, 6, 2022, '2022-11-06 09:10:51'),
(303, 4, 4, 91.8, 98.083333333, 6, 2022, '2022-11-06 09:10:51'),
(308, 4, 1, 37271.713473196, 21072.942038664, 11, 2022, '2022-12-08 12:21:08'),
(309, 4, 2, 13627.494143316, 6099.744924646, 11, 2022, '2022-12-08 12:21:08'),
(310, 4, 3, 1820.237195692, 1161.248020224, 11, 2022, '2022-12-08 12:21:08'),
(311, 4, 4, 96.16, 97.967272727, 11, 2022, '2022-12-08 12:21:08'),
(316, 4, 1, 30961.476921602, 22000.720425214, 12, 2022, '2023-01-08 11:01:24'),
(317, 4, 2, 11235.024479031, 6581.555570596, 12, 2022, '2023-01-08 11:01:24'),
(318, 4, 3, 1181.697136155, 1163.166630818, 12, 2022, '2023-01-08 11:01:24'),
(319, 4, 4, 95.66, 97.775, 12, 2022, '2023-01-08 11:01:24'),
(352, 4, 1, 0, 20903.268317264, 2, 2023, '2023-03-19 08:52:44'),
(353, 4, 2, 0, 6853.045111845, 2, 2023, '2023-03-19 08:52:44'),
(354, 4, 3, 0, 1327.508866667, 2, 2023, '2023-03-19 08:52:44'),
(355, 4, 4, 0, 97.88, 2, 2023, '2023-03-19 08:52:44'),
(376, 2, 1, 0, 0, 2, 2023, '2023-03-28 07:25:24'),
(377, 2, 2, 0, 0, 2, 2023, '2023-03-28 07:25:24'),
(378, 2, 3, 0, 0, 2, 2023, '2023-03-28 07:25:24'),
(379, 2, 4, 0, 0, 2, 2023, '2023-03-28 07:25:24'),
(380, 2, 1, 0, 0, 1, 2021, '2023-03-28 07:27:54'),
(381, 2, 2, 0, 0, 1, 2021, '2023-03-28 07:27:54'),
(382, 2, 3, 0, 0, 1, 2021, '2023-03-28 07:27:54'),
(383, 2, 4, 0, 0, 1, 2021, '2023-03-28 07:27:54'),
(384, 2, 1, 0, 0, 2, 2021, '2023-03-28 07:27:59'),
(385, 2, 2, 0, 0, 2, 2021, '2023-03-28 07:27:59'),
(386, 2, 3, 0, 0, 2, 2021, '2023-03-28 07:27:59'),
(387, 2, 4, 0, 0, 2, 2021, '2023-03-28 07:27:59'),
(388, 2, 1, 0, 0, 3, 2021, '2023-03-28 07:28:04'),
(389, 2, 2, 0, 0, 3, 2021, '2023-03-28 07:28:04'),
(390, 2, 3, 0, 0, 3, 2021, '2023-03-28 07:28:04'),
(391, 2, 4, 0, 0, 3, 2021, '2023-03-28 07:28:04'),
(392, 2, 1, 0, 0, 4, 2021, '2023-03-28 07:28:10'),
(393, 2, 2, 0, 0, 4, 2021, '2023-03-28 07:28:10'),
(394, 2, 3, 0, 0, 4, 2021, '2023-03-28 07:28:10'),
(395, 2, 4, 0, 0, 4, 2021, '2023-03-28 07:28:10'),
(400, 1, 1, 0, 0, 2, 2023, '2023-03-28 07:29:09'),
(401, 1, 2, 0, 0, 2, 2023, '2023-03-28 07:29:09'),
(402, 1, 3, 0, 0, 2, 2023, '2023-03-28 07:29:09'),
(403, 1, 4, 0, 0, 2, 2023, '2023-03-28 07:29:09');

-- --------------------------------------------------------

--
-- Table structure for table `tresultkpi`
--

CREATE TABLE `tresultkpi` (
  `id` int(11) NOT NULL,
  `compId` int(11) NOT NULL DEFAULT 4,
  `idRawData` varchar(255) NOT NULL,
  `tResultMTD` double NOT NULL,
  `tResultYTD` double NOT NULL,
  `tMonth` double NOT NULL,
  `tYear` double NOT NULL,
  `dCreate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tresultkpi`
--

INSERT INTO `tresultkpi` (`id`, `compId`, `idRawData`, `tResultMTD`, `tResultYTD`, `tMonth`, `tYear`, `dCreate`) VALUES
(2516, 4, '1', 2.152199225, 2.152199225, 1, 2022, '2022-10-06 05:13:03'),
(2517, 4, '2', 0, 0, 1, 2022, '2022-10-06 05:13:03'),
(2518, 4, '3', 0, 0, 1, 2022, '2022-10-06 05:13:03'),
(2519, 4, '4', 0, 0, 1, 2022, '2022-10-06 05:13:03'),
(2520, 4, '5', 97.142857143, 97.142857143, 1, 2022, '2022-10-06 05:13:03'),
(2521, 4, '6', -25, -25, 1, 2022, '2022-10-06 05:13:03'),
(2522, 4, '7', -57.843137255, -57.843137255, 1, 2022, '2022-10-06 05:13:04'),
(2523, 4, '8', 0, 0, 1, 2022, '2022-10-06 05:13:04'),
(2524, 4, '9', 0, 0, 1, 2022, '2022-10-06 05:13:04'),
(2525, 4, '10', 103.590073017, 103.590073017, 1, 2022, '2022-10-06 05:13:04'),
(2526, 4, '11', 98.8487246383172, 98.8487246383172, 1, 2022, '2022-10-06 05:13:04'),
(2527, 4, '12', 98.6725969647053, 98.6725969647053, 1, 2022, '2022-10-06 05:13:04'),
(2528, 4, '13', 90.0684280807469, 90.0684280807469, 1, 2022, '2022-10-06 05:13:04'),
(2529, 4, '14', 931723421, 931723421, 1, 2022, '2022-10-06 05:13:04'),
(2530, 4, '15', -90.285689267, -90.285689267, 1, 2022, '2022-10-06 05:13:04'),
(2531, 4, '16', 88.5, 88.5, 1, 2022, '2022-10-06 05:13:04'),
(2532, 4, '17', 98, 98, 1, 2022, '2022-10-06 05:13:04'),
(2533, 4, '18', 85.413361618, 85.413361618, 1, 2022, '2022-10-06 05:13:04'),
(2534, 4, '19', 99.92, 99.92, 1, 2022, '2022-10-06 05:13:04'),
(2535, 4, '20', 15.55, 15.55, 1, 2022, '2022-10-06 05:13:04'),
(2536, 4, '21', 0, 0, 1, 2022, '2022-10-06 05:13:04'),
(2537, 4, '22', 0, 0, 1, 2022, '2022-10-06 05:13:04'),
(2538, 4, '23', 0, 0, 1, 2022, '2022-10-06 05:13:04'),
(2539, 4, '24', -100, -100, 1, 2022, '2022-10-06 05:13:04'),
(2540, 4, '25', 3.920853559, 3.920853559, 1, 2022, '2022-10-06 05:13:04'),
(2541, 4, '26', 4.075022224, 4.075022224, 1, 2022, '2022-10-06 05:13:04'),
(2542, 4, '27', 78.612925124, 78.612925124, 1, 2022, '2022-10-06 05:13:04'),
(2543, 4, '28', 789101215.25, 789101215.25, 1, 2022, '2022-10-06 05:13:04'),
(2544, 4, '1', 2.048307279, 2.098968462, 2, 2022, '2022-10-06 05:13:08'),
(2545, 4, '2', 0, 0, 2, 2022, '2022-10-06 05:13:08'),
(2546, 4, '3', 0, 0, 2, 2022, '2022-10-06 05:13:08'),
(2547, 4, '4', 0, 0, 2, 2022, '2022-10-06 05:13:08'),
(2548, 4, '5', 93.939393939, 95.588235294, 2, 2022, '2022-10-06 05:13:08'),
(2549, 4, '6', -40, -33.333333333, 2, 2022, '2022-10-06 05:13:08'),
(2550, 4, '7', -33.823529412, -45.833333333, 2, 2022, '2022-10-06 05:13:08'),
(2551, 4, '8', 0, 0, 2, 2022, '2022-10-06 05:13:08'),
(2552, 4, '9', 0, 0, 2, 2022, '2022-10-06 05:13:08'),
(2553, 4, '10', 108.380069143, 105.813642121, 2, 2022, '2022-10-06 05:13:08'),
(2554, 4, '11', 78.0361486735599, 88.2104578681699, 2, 2022, '2022-10-06 05:13:08'),
(2555, 4, '12', 67.2725991086251, 81.6126570395495, 2, 2022, '2022-10-06 05:13:08'),
(2556, 4, '13', 87.5180411271577, 88.5136779480065, 2, 2022, '2022-10-06 05:13:08'),
(2557, 4, '14', 1219352222.72, 2151075643.72, 2, 2022, '2022-10-06 05:13:08'),
(2558, 4, '15', -41.317128413, -65.80140884, 2, 2022, '2022-10-06 05:13:08'),
(2559, 4, '16', 90.5, 89.5, 2, 2022, '2022-10-06 05:13:08'),
(2560, 4, '17', 99.4, 98.7, 2, 2022, '2022-10-06 05:13:08'),
(2561, 4, '18', 98.597004978, 91.695392178, 2, 2022, '2022-10-06 05:13:08'),
(2562, 4, '19', 99.63, 99.775, 2, 2022, '2022-10-06 05:13:08'),
(2563, 4, '20', 15.72, 15.635, 2, 2022, '2022-10-06 05:13:08'),
(2564, 4, '21', 0, 0, 2, 2022, '2022-10-06 05:13:09'),
(2565, 4, '22', 0, 0, 2, 2022, '2022-10-06 05:13:09'),
(2566, 4, '23', 0, 0, 2, 2022, '2022-10-06 05:13:09'),
(2567, 4, '24', -100, -100, 2, 2022, '2022-10-06 05:13:09'),
(2568, 4, '25', 3.167477591, 3.490368418, 2, 2022, '2022-10-06 05:13:09'),
(2569, 4, '26', 4.377974371, 4.219458155, 2, 2022, '2022-10-06 05:13:09'),
(2570, 4, '27', 75.416359331, 77.230977186, 2, 2022, '2022-10-06 05:13:09'),
(2571, 4, '28', 680159338.25, 1469260553.5, 2, 2022, '2022-10-06 05:13:09'),
(2600, 4, '1', 4.882415168, 2.987483936, 4, 2022, '2022-10-06 05:13:16'),
(2601, 4, '2', 0, 0, 4, 2022, '2022-10-06 05:13:16'),
(2602, 4, '3', 0, 0, 4, 2022, '2022-10-06 05:13:16'),
(2603, 4, '4', 0, 0, 4, 2022, '2022-10-06 05:13:16'),
(2604, 4, '5', 97.435897436, 97.080291971, 4, 2022, '2022-10-06 05:13:16'),
(2605, 4, '6', -42.857142857, -57.142857143, 4, 2022, '2022-10-06 05:13:16'),
(2606, 4, '7', -84.31372549, -63.970588235, 4, 2022, '2022-10-06 05:13:16'),
(2607, 4, '8', 0, 0, 4, 2022, '2022-10-06 05:13:16'),
(2608, 4, '9', 0, 0, 4, 2022, '2022-10-06 05:13:16'),
(2609, 4, '10', 118.519485805, 109.96590519, 4, 2022, '2022-10-06 05:13:16'),
(2610, 4, '11', 101.3268368620823, 98.0967177887016, 4, 2022, '2022-10-06 05:13:16'),
(2611, 4, '12', 88.7562183553721, 95.5388688544825, 4, 2022, '2022-10-06 05:13:16'),
(2612, 4, '13', 112.0610635838124, 89.3475018971969, 4, 2022, '2022-10-06 05:13:17'),
(2613, 4, '14', 1410551449.67, 4901882168.23, 4, 2022, '2022-10-06 05:13:17'),
(2614, 4, '15', -98.257567158, -79.016581509, 4, 2022, '2022-10-06 05:13:17'),
(2615, 4, '16', 90.6, 89.95, 4, 2022, '2022-10-06 05:13:17'),
(2616, 4, '17', 99.4, 98.95, 4, 2022, '2022-10-06 05:13:17'),
(2617, 4, '18', 98.564324671, 88.92802617, 4, 2022, '2022-10-06 05:13:17'),
(2618, 4, '19', 98.15, 99.1525, 4, 2022, '2022-10-06 05:13:17'),
(2619, 4, '20', 15.45, 15.5725, 4, 2022, '2022-10-06 05:13:17'),
(2620, 4, '21', 0, 0, 4, 2022, '2022-10-06 05:13:17'),
(2621, 4, '22', 0, 0, 4, 2022, '2022-10-06 05:13:17'),
(2622, 4, '23', 0, 0, 4, 2022, '2022-10-06 05:13:17'),
(2623, 4, '24', -100, -87.5, 4, 2022, '2022-10-06 05:13:17'),
(2624, 4, '25', 5.792112054, 4.686301413, 4, 2022, '2022-10-06 05:13:17'),
(2625, 4, '26', 4.928859857, 4.602041965, 4, 2022, '2022-10-06 05:13:17'),
(2626, 4, '27', 76.73853254, 77.014072733, 4, 2022, '2022-10-06 05:13:17'),
(2627, 4, '28', 1641191993.85, 4360815346.2, 4, 2022, '2022-10-06 05:13:17'),
(2628, 4, '1', 0, 2.534726813, 5, 2022, '2022-10-06 05:13:20'),
(2629, 4, '2', 0, 0, 5, 2022, '2022-10-06 05:13:20'),
(2630, 4, '3', 0, 0, 5, 2022, '2022-10-06 05:13:20'),
(2631, 4, '4', 0, 0, 5, 2022, '2022-10-06 05:13:20'),
(2632, 4, '5', 93.333333333, 96.407185629, 5, 2022, '2022-10-06 05:13:20'),
(2633, 4, '6', 0, -45.714285714, 5, 2022, '2022-10-06 05:13:20'),
(2634, 4, '7', -58.921568627, -62.960784314, 5, 2022, '2022-10-06 05:13:20'),
(2635, 4, '8', 0, 0, 5, 2022, '2022-10-06 05:13:20'),
(2636, 4, '9', 0, 0, 5, 2022, '2022-10-06 05:13:20'),
(2637, 4, '10', 124.585175271, 112.155290226, 5, 2022, '2022-10-06 05:13:21'),
(2638, 4, '11', 123.7721335073593, 102.3682184857414, 5, 2022, '2022-10-06 05:13:21'),
(2639, 4, '12', 81.8471072297152, 94.5625580389722, 5, 2022, '2022-10-06 05:13:21'),
(2640, 4, '13', 80.4914049366453, 90.6726946877612, 5, 2022, '2022-10-06 05:13:21'),
(2641, 4, '14', 1335482047.82, 6237364216.05, 5, 2022, '2022-10-06 05:13:21'),
(2642, 4, '15', -5.608061949, -64.334877597, 5, 2022, '2022-10-06 05:13:21'),
(2643, 4, '16', 83.7, 88.7, 5, 2022, '2022-10-06 05:13:21'),
(2644, 4, '17', 100.1, 99.18, 5, 2022, '2022-10-06 05:13:21'),
(2645, 4, '18', 77.909216673, 87.061930765, 5, 2022, '2022-10-06 05:13:21'),
(2646, 4, '19', 100.09, 99.34, 5, 2022, '2022-10-06 05:13:21'),
(2647, 4, '20', 15.63, 15.584, 5, 2022, '2022-10-06 05:13:21'),
(2648, 4, '21', 0, 0, 5, 2022, '2022-10-06 05:13:21'),
(2649, 4, '22', 0, 0, 5, 2022, '2022-10-06 05:13:21'),
(2650, 4, '23', 0, 0, 5, 2022, '2022-10-06 05:13:21'),
(2651, 4, '24', -100, -90, 5, 2022, '2022-10-06 05:13:21'),
(2652, 4, '25', 9.609339131, 5.226237831, 5, 2022, '2022-10-06 05:13:21'),
(2653, 4, '26', 4.899394122, 4.654927184, 5, 2022, '2022-10-06 05:13:21'),
(2654, 4, '27', 77.967427614, 77.176341668, 5, 2022, '2022-10-06 05:13:21'),
(2655, 4, '28', 1617064393.85, 5977879740.05, 5, 2022, '2022-10-06 05:13:21'),
(2936, 4, '1', 7.590406485, 21.261523504, 10, 2022, '2022-11-06 09:10:10'),
(2937, 4, '2', 0, 0, 10, 2022, '2022-11-06 09:10:10'),
(2938, 4, '3', 0, 0, 10, 2022, '2022-11-06 09:10:10'),
(2939, 4, '4', 0, 0, 10, 2022, '2022-11-06 09:10:10'),
(2940, 4, '5', 95.454545455, 96.378830084, 10, 2022, '2022-11-06 09:10:10'),
(2941, 4, '6', 0, -53.246753247, 10, 2022, '2022-11-06 09:10:10'),
(2942, 4, '7', -82.764705882, -74.153921569, 10, 2022, '2022-11-06 09:10:10'),
(2943, 4, '8', 0, 0, 10, 2022, '2022-11-06 09:10:10'),
(2944, 4, '9', 0, 0, 10, 2022, '2022-11-06 09:10:10'),
(2945, 4, '10', 94.932429729, 110.894047919, 10, 2022, '2022-11-06 09:10:10'),
(2946, 4, '11', 92.1331270329728, 99.4527480288709, 10, 2022, '2022-11-06 09:10:10'),
(2947, 4, '12', 98.9995961283383, 94.5286571290058, 10, 2022, '2022-11-06 09:10:10'),
(2948, 4, '13', 59.0520569925113, 91.9935107326262, 10, 2022, '2022-11-06 09:10:10'),
(2949, 4, '14', 1745220351.74, 17082142996.32, 10, 2022, '2022-11-06 09:10:10'),
(2950, 4, '15', -86.317639003, -76.403800229, 10, 2022, '2022-11-06 09:10:10'),
(2951, 4, '16', 91.4, 89.73, 10, 2022, '2022-11-06 09:10:10'),
(2952, 4, '17', 100.4, 99.66, 10, 2022, '2022-11-06 09:10:10'),
(2953, 4, '18', 86.007664261, 91.755710407, 10, 2022, '2022-11-06 09:10:11'),
(2954, 4, '19', 99.14, 98.148, 10, 2022, '2022-11-06 09:10:11'),
(2955, 4, '20', 15.37, 15.544, 10, 2022, '2022-11-06 09:10:11'),
(2956, 4, '21', 0, 0, 10, 2022, '2022-11-06 09:10:11'),
(2957, 4, '22', 0, 0, 10, 2022, '2022-11-06 09:10:11'),
(2958, 4, '23', 0, -50, 10, 2022, '2022-11-06 09:10:11'),
(2959, 4, '24', 0, -50, 10, 2022, '2022-11-06 09:10:11'),
(2960, 4, '25', 7.503905446, 5.870564208, 10, 2022, '2022-11-06 09:10:11'),
(2961, 4, '26', 5.527439169, 5.060771161, 10, 2022, '2022-11-06 09:10:11'),
(2962, 4, '27', 87.671754146, 80.207878412, 10, 2022, '2022-11-06 09:10:11'),
(2963, 4, '28', 1700000000, 14637895123.59, 10, 2022, '2022-11-06 09:10:11'),
(2964, 4, '1', 64.617253545, 22.811966555, 9, 2022, '2022-11-06 09:10:21'),
(2965, 4, '2', 0, 0, 9, 2022, '2022-11-06 09:10:21'),
(2966, 4, '3', 0, 0, 9, 2022, '2022-11-06 09:10:21'),
(2967, 4, '4', 0, 0, 9, 2022, '2022-11-06 09:10:22'),
(2968, 4, '5', 100, 96.507936508, 9, 2022, '2022-11-06 09:10:22'),
(2969, 4, '6', -66.666666667, -57.746478873, 9, 2022, '2022-11-06 09:10:22'),
(2970, 4, '7', -94.117647059, -73.197167756, 9, 2022, '2022-11-06 09:10:22'),
(2971, 4, '8', 0, 0, 9, 2022, '2022-11-06 09:10:22'),
(2972, 4, '9', 0, 0, 9, 2022, '2022-11-06 09:10:22'),
(2973, 4, '10', 98.309463655, 113.118859065, 9, 2022, '2022-11-06 09:10:22'),
(2974, 4, '11', 98.1246017748412, 100.4216494165245, 9, 2022, '2022-11-06 09:10:22'),
(2975, 4, '12', 85.4623213018011, 94.0816556216641, 9, 2022, '2022-11-06 09:10:22'),
(2976, 4, '13', 95.4034559283199, 97.8695571244812, 9, 2022, '2022-11-06 09:10:22'),
(2977, 4, '14', 1706674985.29, 15336922644.58, 9, 2022, '2022-11-06 09:10:22'),
(2978, 4, '15', -97.960872189, -75.302262588, 9, 2022, '2022-11-06 09:10:22'),
(2979, 4, '16', 90.3, 89.544444444, 9, 2022, '2022-11-06 09:10:22'),
(2980, 4, '17', 100, 99.577777777, 9, 2022, '2022-11-06 09:10:22'),
(2981, 4, '18', 102.126428004, 92.456475149, 9, 2022, '2022-11-06 09:10:22'),
(2982, 4, '19', 99.84, 98.037777777, 9, 2022, '2022-11-06 09:10:22'),
(2983, 4, '20', 15.56, 15.563333333, 9, 2022, '2022-11-06 09:10:22'),
(2984, 4, '21', 0, 0, 9, 2022, '2022-11-06 09:10:22'),
(2985, 4, '22', 0, 0, 9, 2022, '2022-11-06 09:10:22'),
(2986, 4, '23', -100, -50, 9, 2022, '2022-11-06 09:10:22'),
(2987, 4, '24', 0, -58.333333333, 9, 2022, '2022-11-06 09:10:22'),
(2988, 4, '25', 7.874670448, 5.693742888, 9, 2022, '2022-11-06 09:10:22'),
(2989, 4, '26', 5.673511396, 5.012646178, 9, 2022, '2022-11-06 09:10:22'),
(2990, 4, '27', 86.706541558, 79.233549706, 9, 2022, '2022-11-06 09:10:22'),
(2991, 4, '28', 1575320168.18, 12937895123.59, 9, 2022, '2022-11-06 09:10:22'),
(2992, 4, '1', 54.863298947, 17.295841471, 8, 2022, '2022-11-06 09:10:32'),
(2993, 4, '2', 0, 0, 8, 2022, '2022-11-06 09:10:32'),
(2994, 4, '3', 0, 0, 8, 2022, '2022-11-06 09:10:32'),
(2995, 4, '4', 0, 0, 8, 2022, '2022-11-06 09:10:32'),
(2996, 4, '5', 91.891891892, 95.98540146, 8, 2022, '2022-11-06 09:10:32'),
(2997, 4, '6', -40, -56.923076923, 8, 2022, '2022-11-06 09:10:32'),
(2998, 4, '7', -69.705882353, -70.582107843, 8, 2022, '2022-11-06 09:10:32'),
(2999, 4, '8', 0, 0, 8, 2022, '2022-11-06 09:10:32'),
(3000, 4, '9', 0, 0, 8, 2022, '2022-11-06 09:10:32'),
(3001, 4, '10', 114.317549996, 115.329955848, 8, 2022, '2022-11-06 09:10:32'),
(3002, 4, '11', 100.3624442338509, 100.743970942152, 8, 2022, '2022-11-06 09:10:32'),
(3003, 4, '12', 91.383862254772, 95.2871967822348, 8, 2022, '2022-11-06 09:10:32'),
(3004, 4, '13', 104.9422979518412, 98.0237357234482, 8, 2022, '2022-11-06 09:10:32'),
(3005, 4, '14', 2282524755.75, 13630247659.29, 8, 2022, '2022-11-06 09:10:32'),
(3006, 4, '15', -69.194205899, -72.469936388, 8, 2022, '2022-11-06 09:10:32'),
(3007, 4, '16', 90, 89.45, 8, 2022, '2022-11-06 09:10:32'),
(3008, 4, '17', 100, 99.525, 8, 2022, '2022-11-06 09:10:32'),
(3009, 4, '18', 100.541238966, 91.315610462, 8, 2022, '2022-11-06 09:10:32'),
(3010, 4, '19', 98, 97.8125, 8, 2022, '2022-11-06 09:10:32'),
(3011, 4, '20', 15.61, 15.56375, 8, 2022, '2022-11-06 09:10:33'),
(3012, 4, '21', 0, 0, 8, 2022, '2022-11-06 09:10:33'),
(3013, 4, '22', 0, 0, 8, 2022, '2022-11-06 09:10:33'),
(3014, 4, '23', 0, -33.333333333, 8, 2022, '2022-11-06 09:10:33'),
(3015, 4, '24', 0, -58.333333333, 8, 2022, '2022-11-06 09:10:33'),
(3016, 4, '25', 6.09136166, 5.436480976, 8, 2022, '2022-11-06 09:10:33'),
(3017, 4, '26', 5.572218354, 4.936658466, 8, 2022, '2022-11-06 09:10:33'),
(3018, 4, '27', 84.107956872, 78.306405618, 8, 2022, '2022-11-06 09:10:33'),
(3019, 4, '28', 1574378263.18, 11362574955.41, 8, 2022, '2022-11-06 09:10:33'),
(3020, 4, '1', 53.132503895, 10.84617892, 7, 2022, '2022-11-06 09:10:41'),
(3021, 4, '2', 0, 0, 7, 2022, '2022-11-06 09:10:41'),
(3022, 4, '3', 0, 0, 7, 2022, '2022-11-06 09:10:42'),
(3023, 4, '4', 0, 0, 7, 2022, '2022-11-06 09:10:42'),
(3024, 4, '5', 97.56097561, 96.624472574, 7, 2022, '2022-11-06 09:10:42'),
(3025, 4, '6', -81.818181818, -60, 7, 2022, '2022-11-06 09:10:42'),
(3026, 4, '7', -90.196078431, -70.707282913, 7, 2022, '2022-11-06 09:10:42'),
(3027, 4, '8', 0, 0, 7, 2022, '2022-11-06 09:10:42'),
(3028, 4, '9', 0, 0, 7, 2022, '2022-11-06 09:10:42'),
(3029, 4, '10', 134.842494368, 115.495983044, 7, 2022, '2022-11-06 09:10:42'),
(3030, 4, '11', 95.8326629940115, 100.8551209220728, 7, 2022, '2022-11-06 09:10:42'),
(3031, 4, '12', 91.6073090783634, 96.0035478804159, 7, 2022, '2022-11-06 09:10:42'),
(3032, 4, '13', 118.6220006166416, 96.6989185537722, 7, 2022, '2022-11-06 09:10:42'),
(3033, 4, '14', 1831894203.19, 11347722903.54, 7, 2022, '2022-11-06 09:10:42'),
(3034, 4, '15', -100, -72.937897886, 7, 2022, '2022-11-06 09:10:42'),
(3035, 4, '16', 90, 89.371428571, 7, 2022, '2022-11-06 09:10:42'),
(3036, 4, '17', 100, 99.457142857, 7, 2022, '2022-11-06 09:10:42'),
(3037, 4, '18', 99.227367812, 89.899381013, 7, 2022, '2022-11-06 09:10:42'),
(3038, 4, '19', 96, 97.785714285, 7, 2022, '2022-11-06 09:10:42'),
(3039, 4, '20', 15.33, 15.557142857, 7, 2022, '2022-11-06 09:10:42'),
(3040, 4, '21', 0, 0, 7, 2022, '2022-11-06 09:10:42'),
(3041, 4, '22', 0, 0, 7, 2022, '2022-11-06 09:10:42'),
(3042, 4, '23', -100, -33.333333333, 7, 2022, '2022-11-06 09:10:42'),
(3043, 4, '24', 0, -75, 7, 2022, '2022-11-06 09:10:43'),
(3044, 4, '25', 5.107584201, 5.339231933, 7, 2022, '2022-11-06 09:10:43'),
(3045, 4, '26', 5.323041814, 4.853886427, 7, 2022, '2022-11-06 09:10:43'),
(3046, 4, '27', 77.433927182, 77.434956644, 7, 2022, '2022-11-06 09:10:43'),
(3047, 4, '28', 1310316952.18, 9788196692.23, 7, 2022, '2022-11-06 09:10:43'),
(3048, 4, '1', 1.808409829, 2.397185567, 6, 2022, '2022-11-06 09:10:50'),
(3049, 4, '2', 0, 0, 6, 2022, '2022-11-06 09:10:50'),
(3050, 4, '3', 0, 0, 6, 2022, '2022-11-06 09:10:50'),
(3051, 4, '4', 0, 0, 6, 2022, '2022-11-06 09:10:50'),
(3052, 4, '5', 96.551724138, 96.428571429, 6, 2022, '2022-11-06 09:10:50'),
(3053, 4, '6', -88.888888889, -54.545454545, 6, 2022, '2022-11-06 09:10:50'),
(3054, 4, '7', -89.950980392, -67.459150327, 6, 2022, '2022-11-06 09:10:50'),
(3055, 4, '8', 0, 0, 6, 2022, '2022-11-06 09:10:50'),
(3056, 4, '9', 0, 0, 6, 2022, '2022-11-06 09:10:50'),
(3057, 4, '10', 116.013563693, 112.84403423, 6, 2022, '2022-11-06 09:10:50'),
(3058, 4, '11', 100.2120552697517, 101.8894937673235, 6, 2022, '2022-11-06 09:10:50'),
(3059, 4, '12', 101.6417012215613, 96.9432594338858, 6, 2022, '2022-11-06 09:10:50'),
(3060, 4, '13', 101.5998161367667, 93.2855609686577, 6, 2022, '2022-11-06 09:10:50'),
(3061, 4, '14', 3278464484.3, 9515828700.35, 6, 2022, '2022-11-06 09:10:50'),
(3062, 4, '15', -88.890897219, -68.427547534, 6, 2022, '2022-11-06 09:10:50'),
(3063, 4, '16', 92.1, 89.266666666, 6, 2022, '2022-11-06 09:10:50'),
(3064, 4, '17', 100.3, 99.366666666, 6, 2022, '2022-11-06 09:10:50'),
(3065, 4, '18', 93.677070487, 88.241945831, 6, 2022, '2022-11-06 09:10:51'),
(3066, 4, '19', 91.8, 98.083333333, 6, 2022, '2022-11-06 09:10:51'),
(3067, 4, '20', 15.65, 15.595, 6, 2022, '2022-11-06 09:10:51'),
(3068, 4, '21', 0, 0, 6, 2022, '2022-11-06 09:10:51'),
(3069, 4, '22', 0, 0, 6, 2022, '2022-11-06 09:10:51'),
(3070, 4, '23', 100, 100, 6, 2022, '2022-11-06 09:10:51'),
(3071, 4, '24', 0, -90, 6, 2022, '2022-11-06 09:10:51'),
(3072, 4, '25', 6.155155458, 5.377221169, 6, 2022, '2022-11-06 09:10:51'),
(3073, 4, '26', 5.478381191, 4.780327233, 6, 2022, '2022-11-06 09:10:51'),
(3074, 4, '27', 78.918132298, 77.435139887, 6, 2022, '2022-11-06 09:10:51'),
(3075, 4, '28', 2500000000, 8477879740.05, 6, 2022, '2022-11-06 09:10:51'),
(3104, 4, '1', 65.155949647, 24.687745637, 11, 2022, '2022-12-08 12:21:07'),
(3105, 4, '2', 0, 0, 11, 2022, '2022-12-08 12:21:07'),
(3106, 4, '3', 0, 0, 11, 2022, '2022-12-08 12:21:07'),
(3107, 4, '4', 0, 0, 11, 2022, '2022-12-08 12:21:07'),
(3108, 4, '5', 100, 96.733668342, 11, 2022, '2022-12-08 12:21:07'),
(3109, 4, '6', -25, -51.851851852, 11, 2022, '2022-12-08 12:21:07'),
(3110, 4, '7', -87.254901961, -75.344919786, 11, 2022, '2022-12-08 12:21:07'),
(3111, 4, '8', 0, 0, 11, 2022, '2022-12-08 12:21:07'),
(3112, 4, '9', 0, 0, 11, 2022, '2022-12-08 12:21:07'),
(3113, 4, '10', 136.925138276, 113.883066756, 11, 2022, '2022-12-08 12:21:07'),
(3114, 4, '11', 200.6352571572077, 107.1303436729498, 11, 2022, '2022-12-08 12:21:07'),
(3115, 4, '12', 254.8974840029695, 103.8757973301572, 11, 2022, '2022-12-08 12:21:07'),
(3116, 4, '13', 163.9598746634363, 98.2816365759181, 11, 2022, '2022-12-08 12:21:07'),
(3117, 4, '14', 442962899.75581, 17525105896.07581, 11, 2022, '2022-12-08 12:21:07'),
(3118, 4, '15', -95.068449711, -78.100586546, 11, 2022, '2022-12-08 12:21:07'),
(3119, 4, '16', 95.5, 90.254545454, 11, 2022, '2022-12-08 12:21:07'),
(3120, 4, '17', 100, 99.69090909, 11, 2022, '2022-12-08 12:21:08'),
(3121, 4, '18', 81.134105976, 90.827576719, 11, 2022, '2022-12-08 12:21:08'),
(3122, 4, '19', 96.16, 97.967272727, 11, 2022, '2022-12-08 12:21:08'),
(3123, 4, '20', 15.47, 15.537272727, 11, 2022, '2022-12-08 12:21:08'),
(3124, 4, '21', 0, 0, 11, 2022, '2022-12-08 12:21:08'),
(3125, 4, '22', 0, 0, 11, 2022, '2022-12-08 12:21:08'),
(3126, 4, '23', -100, -60, 11, 2022, '2022-12-08 12:21:08'),
(3127, 4, '24', 0, -25, 11, 2022, '2022-12-08 12:21:08'),
(3128, 4, '25', 9.598259161, 6.18169514, 11, 2022, '2022-12-08 12:21:08'),
(3129, 4, '26', 5.477496417, 5.096397836, 11, 2022, '2022-12-08 12:21:08'),
(3130, 4, '27', 86.281307476, 80.755455441, 11, 2022, '2022-12-08 12:21:08'),
(3131, 4, '28', 1700000000, 16337895123.59, 11, 2022, '2022-12-08 12:21:08'),
(3160, 4, '1', 0, 22.371451354, 12, 2022, '2023-01-08 11:01:23'),
(3161, 4, '2', 0, 0, 12, 2022, '2023-01-08 11:01:23'),
(3162, 4, '3', 0, 0, 12, 2022, '2023-01-08 11:01:23'),
(3163, 4, '4', 0, 0, 12, 2022, '2023-01-08 11:01:23'),
(3164, 4, '5', 95, 96.575342466, 12, 2022, '2023-01-08 11:01:23'),
(3165, 4, '6', 133.333333333, -45.238095238, 12, 2022, '2023-01-08 11:01:23'),
(3166, 4, '7', -64.705882353, -74.458333333, 12, 2022, '2023-01-08 11:01:23'),
(3167, 4, '8', 0, 0, 12, 2022, '2023-01-08 11:01:23'),
(3168, 4, '9', 0, 0, 12, 2022, '2023-01-08 11:01:23'),
(3169, 4, '10', 116.403593619, 114.209597902, 12, 2022, '2023-01-08 11:01:23'),
(3170, 4, '11', 134.5644399598029, 110.757788972787, 12, 2022, '2023-01-08 11:01:23'),
(3171, 4, '12', 103.3015918789477, 103.9073381453004, 12, 2022, '2023-01-08 11:01:23'),
(3172, 4, '13', 135.757795998448, 104.0347639233356, 12, 2022, '2023-01-08 11:01:23'),
(3173, 4, '14', 839925672.56, 18365031568.63581, 12, 2022, '2023-01-08 11:01:23'),
(3174, 4, '15', -16.272428289, -72.948240025, 12, 2022, '2023-01-08 11:01:23'),
(3175, 4, '16', 92, 90.4, 12, 2022, '2023-01-08 11:01:23'),
(3176, 4, '17', 100, 99.716666666, 12, 2022, '2023-01-08 11:01:23'),
(3177, 4, '18', 86.015932303, 90.353366114, 12, 2022, '2023-01-08 11:01:23'),
(3178, 4, '19', 95.66, 97.775, 12, 2022, '2023-01-08 11:01:23'),
(3179, 4, '20', 15.57, 15.54, 12, 2022, '2023-01-08 11:01:23'),
(3180, 4, '21', 0, 0, 12, 2022, '2023-01-08 11:01:23'),
(3181, 4, '22', 0, 0, 12, 2022, '2023-01-08 11:01:23'),
(3182, 4, '23', 0, -60, 12, 2022, '2023-01-08 11:01:23'),
(3183, 4, '24', 0, -25, 12, 2022, '2023-01-08 11:01:24'),
(3184, 4, '25', 4.486736915, 6.021631577, 12, 2022, '2023-01-08 11:01:24'),
(3185, 4, '26', 4.939710577, 5.084057342, 12, 2022, '2023-01-08 11:01:24'),
(3186, 4, '27', 88.701264497, 81.311233151, 12, 2022, '2023-01-08 11:01:24'),
(3187, 4, '28', 1700000000, 18037895123.59, 12, 2022, '2023-01-08 11:01:24'),
(3524, 4, '1', 0, 8.284695268, 2, 2023, '2023-03-19 08:40:05'),
(3525, 4, '2', 0, 0, 2, 2023, '2023-03-19 08:40:05'),
(3526, 4, '3', 0, 0, 2, 2023, '2023-03-19 08:40:05'),
(3527, 4, '4', 0, 0, 2, 2023, '2023-03-19 08:40:05'),
(3528, 4, '5', 0, 95.652173913, 2, 2023, '2023-03-19 08:40:05'),
(3529, 4, '6', 0, 0, 2, 2023, '2023-03-19 08:40:05'),
(3530, 4, '7', 0, -75.327386601, 2, 2023, '2023-03-19 08:40:05'),
(3531, 4, '8', 0, 0, 2, 2023, '2023-03-19 08:40:05'),
(3532, 4, '9', 0, 0, 2, 2023, '2023-03-19 08:40:05'),
(3533, 4, '10', 0, 120.859890447, 2, 2023, '2023-03-19 08:40:05'),
(3534, 4, '11', 0, 99.6010047838753, 2, 2023, '2023-03-19 08:40:05'),
(3535, 4, '12', 0, 104.5778132227922, 2, 2023, '2023-03-19 08:40:05'),
(3536, 4, '13', 0, 99.7981760621113, 2, 2023, '2023-03-19 08:40:05'),
(3537, 4, '14', 0, 2083304620.91521, 2, 2023, '2023-03-19 08:40:05'),
(3538, 4, '15', 0, -95.622226321, 2, 2023, '2023-03-19 08:40:05'),
(3539, 4, '16', 0, 87.7, 2, 2023, '2023-03-19 08:40:05'),
(3540, 4, '17', 0, 100, 2, 2023, '2023-03-19 08:40:05'),
(3541, 4, '18', 0, 103.860194075, 2, 2023, '2023-03-19 08:40:05'),
(3542, 4, '19', 0, 97.88, 2, 2023, '2023-03-19 08:40:05'),
(3543, 4, '20', 0, 15.5, 2, 2023, '2023-03-19 08:40:05'),
(3544, 4, '21', 0, 0, 2, 2023, '2023-03-19 08:40:05'),
(3545, 4, '22', 0, 0, 2, 2023, '2023-03-19 08:40:05'),
(3546, 4, '23', 0, 0, 2, 2023, '2023-03-19 08:40:05'),
(3547, 4, '24', 0, -100, 2, 2023, '2023-03-19 08:40:05'),
(3548, 4, '25', 0, 4.701710289, 2, 2023, '2023-03-19 08:40:05'),
(3549, 4, '26', 0, 4.290412494, 2, 2023, '2023-03-19 08:40:05'),
(3550, 4, '27', 0, 87.053500273, 2, 2023, '2023-03-19 08:40:05'),
(3551, 4, '28', 0, 1903059781.41521, 2, 2023, '2023-03-19 08:40:05'),
(3636, 2, '1', 0, 0, 2, 2023, '2023-03-28 07:25:24'),
(3637, 2, '2', 0, 0, 2, 2023, '2023-03-28 07:25:24'),
(3638, 2, '3', 0, 0, 2, 2023, '2023-03-28 07:25:24'),
(3639, 2, '4', 0, 0, 2, 2023, '2023-03-28 07:25:24'),
(3640, 2, '5', 0, 0, 2, 2023, '2023-03-28 07:25:24'),
(3641, 2, '6', 0, 0, 2, 2023, '2023-03-28 07:25:24'),
(3642, 2, '7', 0, 0, 2, 2023, '2023-03-28 07:25:24'),
(3643, 2, '8', 0, 0, 2, 2023, '2023-03-28 07:25:24'),
(3644, 2, '9', 0, 0, 2, 2023, '2023-03-28 07:25:24'),
(3645, 2, '10', 0, 0, 2, 2023, '2023-03-28 07:25:24'),
(3646, 2, '11', 0, 0, 2, 2023, '2023-03-28 07:25:24'),
(3647, 2, '12', 0, 0, 2, 2023, '2023-03-28 07:25:24'),
(3648, 2, '13', 0, 0, 2, 2023, '2023-03-28 07:25:24'),
(3649, 2, '14', 0, 0, 2, 2023, '2023-03-28 07:25:24'),
(3650, 2, '15', 0, 0, 2, 2023, '2023-03-28 07:25:24'),
(3651, 2, '16', 0, 0, 2, 2023, '2023-03-28 07:25:24'),
(3652, 2, '17', 0, 0, 2, 2023, '2023-03-28 07:25:24'),
(3653, 2, '18', 0, 0, 2, 2023, '2023-03-28 07:25:24'),
(3654, 2, '19', 0, 0, 2, 2023, '2023-03-28 07:25:24'),
(3655, 2, '20', 0, 0, 2, 2023, '2023-03-28 07:25:24'),
(3656, 2, '21', 0, 0, 2, 2023, '2023-03-28 07:25:24'),
(3657, 2, '22', 0, 0, 2, 2023, '2023-03-28 07:25:24'),
(3658, 2, '23', 0, 0, 2, 2023, '2023-03-28 07:25:24'),
(3659, 2, '24', 0, 0, 2, 2023, '2023-03-28 07:25:24'),
(3660, 2, '25', 0, 0, 2, 2023, '2023-03-28 07:25:24'),
(3661, 2, '26', 0, 0, 2, 2023, '2023-03-28 07:25:24'),
(3662, 2, '27', 0, 0, 2, 2023, '2023-03-28 07:25:24'),
(3663, 2, '28', 0, 0, 2, 2023, '2023-03-28 07:25:24'),
(3664, 2, '1', 0, 0, 1, 2021, '2023-03-28 07:27:54'),
(3665, 2, '2', 0, 0, 1, 2021, '2023-03-28 07:27:54'),
(3666, 2, '3', 0, 0, 1, 2021, '2023-03-28 07:27:54'),
(3667, 2, '4', 0, 0, 1, 2021, '2023-03-28 07:27:54'),
(3668, 2, '5', 0, 0, 1, 2021, '2023-03-28 07:27:54'),
(3669, 2, '6', 0, 0, 1, 2021, '2023-03-28 07:27:54'),
(3670, 2, '7', 0, 0, 1, 2021, '2023-03-28 07:27:54'),
(3671, 2, '8', 0, 0, 1, 2021, '2023-03-28 07:27:54'),
(3672, 2, '9', 0, 0, 1, 2021, '2023-03-28 07:27:54'),
(3673, 2, '10', 0, 0, 1, 2021, '2023-03-28 07:27:54'),
(3674, 2, '11', 0, 0, 1, 2021, '2023-03-28 07:27:54'),
(3675, 2, '12', 0, 0, 1, 2021, '2023-03-28 07:27:54'),
(3676, 2, '13', 0, 0, 1, 2021, '2023-03-28 07:27:54'),
(3677, 2, '14', 0, 0, 1, 2021, '2023-03-28 07:27:54'),
(3678, 2, '15', 0, 0, 1, 2021, '2023-03-28 07:27:54'),
(3679, 2, '16', 0, 0, 1, 2021, '2023-03-28 07:27:54'),
(3680, 2, '17', 0, 0, 1, 2021, '2023-03-28 07:27:54'),
(3681, 2, '18', 0, 0, 1, 2021, '2023-03-28 07:27:54'),
(3682, 2, '19', 0, 0, 1, 2021, '2023-03-28 07:27:54'),
(3683, 2, '20', 0, 0, 1, 2021, '2023-03-28 07:27:54'),
(3684, 2, '21', 0, 0, 1, 2021, '2023-03-28 07:27:54'),
(3685, 2, '22', 0, 0, 1, 2021, '2023-03-28 07:27:54'),
(3686, 2, '23', 0, 0, 1, 2021, '2023-03-28 07:27:54'),
(3687, 2, '24', 0, 0, 1, 2021, '2023-03-28 07:27:54'),
(3688, 2, '25', 0, 0, 1, 2021, '2023-03-28 07:27:54'),
(3689, 2, '26', 0, 0, 1, 2021, '2023-03-28 07:27:54'),
(3690, 2, '27', 0, 0, 1, 2021, '2023-03-28 07:27:54'),
(3691, 2, '28', 0, 0, 1, 2021, '2023-03-28 07:27:54'),
(3692, 2, '1', 0, 0, 2, 2021, '2023-03-28 07:27:59'),
(3693, 2, '2', 0, 0, 2, 2021, '2023-03-28 07:27:59'),
(3694, 2, '3', 0, 0, 2, 2021, '2023-03-28 07:27:59'),
(3695, 2, '4', 0, 0, 2, 2021, '2023-03-28 07:27:59'),
(3696, 2, '5', 0, 0, 2, 2021, '2023-03-28 07:27:59'),
(3697, 2, '6', 0, 0, 2, 2021, '2023-03-28 07:27:59'),
(3698, 2, '7', 0, 0, 2, 2021, '2023-03-28 07:27:59'),
(3699, 2, '8', 0, 0, 2, 2021, '2023-03-28 07:27:59'),
(3700, 2, '9', 0, 0, 2, 2021, '2023-03-28 07:27:59'),
(3701, 2, '10', 0, 0, 2, 2021, '2023-03-28 07:27:59'),
(3702, 2, '11', 0, 0, 2, 2021, '2023-03-28 07:27:59'),
(3703, 2, '12', 0, 0, 2, 2021, '2023-03-28 07:27:59'),
(3704, 2, '13', 0, 0, 2, 2021, '2023-03-28 07:27:59'),
(3705, 2, '14', 0, 0, 2, 2021, '2023-03-28 07:27:59'),
(3706, 2, '15', 0, 0, 2, 2021, '2023-03-28 07:27:59'),
(3707, 2, '16', 0, 0, 2, 2021, '2023-03-28 07:27:59'),
(3708, 2, '17', 0, 0, 2, 2021, '2023-03-28 07:27:59'),
(3709, 2, '18', 0, 0, 2, 2021, '2023-03-28 07:27:59'),
(3710, 2, '19', 0, 0, 2, 2021, '2023-03-28 07:27:59'),
(3711, 2, '20', 0, 0, 2, 2021, '2023-03-28 07:27:59'),
(3712, 2, '21', 0, 0, 2, 2021, '2023-03-28 07:27:59'),
(3713, 2, '22', 0, 0, 2, 2021, '2023-03-28 07:27:59'),
(3714, 2, '23', 0, 0, 2, 2021, '2023-03-28 07:27:59'),
(3715, 2, '24', 0, 0, 2, 2021, '2023-03-28 07:27:59'),
(3716, 2, '25', 0, 0, 2, 2021, '2023-03-28 07:27:59'),
(3717, 2, '26', 0, 0, 2, 2021, '2023-03-28 07:27:59'),
(3718, 2, '27', 0, 0, 2, 2021, '2023-03-28 07:27:59'),
(3719, 2, '28', 0, 0, 2, 2021, '2023-03-28 07:27:59'),
(3720, 2, '1', 0, 0, 3, 2021, '2023-03-28 07:28:04'),
(3721, 2, '2', 0, 0, 3, 2021, '2023-03-28 07:28:04'),
(3722, 2, '3', 0, 0, 3, 2021, '2023-03-28 07:28:04'),
(3723, 2, '4', 0, 0, 3, 2021, '2023-03-28 07:28:04'),
(3724, 2, '5', 0, 0, 3, 2021, '2023-03-28 07:28:04'),
(3725, 2, '6', 0, 0, 3, 2021, '2023-03-28 07:28:04'),
(3726, 2, '7', 0, 0, 3, 2021, '2023-03-28 07:28:04'),
(3727, 2, '8', 0, 0, 3, 2021, '2023-03-28 07:28:04'),
(3728, 2, '9', 0, 0, 3, 2021, '2023-03-28 07:28:04'),
(3729, 2, '10', 0, 0, 3, 2021, '2023-03-28 07:28:04'),
(3730, 2, '11', 0, 0, 3, 2021, '2023-03-28 07:28:04'),
(3731, 2, '12', 0, 0, 3, 2021, '2023-03-28 07:28:04'),
(3732, 2, '13', 0, 0, 3, 2021, '2023-03-28 07:28:04'),
(3733, 2, '14', 0, 0, 3, 2021, '2023-03-28 07:28:04'),
(3734, 2, '15', 0, 0, 3, 2021, '2023-03-28 07:28:04'),
(3735, 2, '16', 0, 0, 3, 2021, '2023-03-28 07:28:04'),
(3736, 2, '17', 0, 0, 3, 2021, '2023-03-28 07:28:04'),
(3737, 2, '18', 0, 0, 3, 2021, '2023-03-28 07:28:04'),
(3738, 2, '19', 0, 0, 3, 2021, '2023-03-28 07:28:04'),
(3739, 2, '20', 0, 0, 3, 2021, '2023-03-28 07:28:04'),
(3740, 2, '21', 0, 0, 3, 2021, '2023-03-28 07:28:04'),
(3741, 2, '22', 0, 0, 3, 2021, '2023-03-28 07:28:04'),
(3742, 2, '23', 0, 0, 3, 2021, '2023-03-28 07:28:04'),
(3743, 2, '24', 0, 0, 3, 2021, '2023-03-28 07:28:04'),
(3744, 2, '25', 0, 0, 3, 2021, '2023-03-28 07:28:04'),
(3745, 2, '26', 0, 0, 3, 2021, '2023-03-28 07:28:04'),
(3746, 2, '27', 0, 0, 3, 2021, '2023-03-28 07:28:04'),
(3747, 2, '28', 0, 0, 3, 2021, '2023-03-28 07:28:04'),
(3748, 2, '1', 0, 0, 4, 2021, '2023-03-28 07:28:10'),
(3749, 2, '2', 0, 0, 4, 2021, '2023-03-28 07:28:10'),
(3750, 2, '3', 0, 0, 4, 2021, '2023-03-28 07:28:10'),
(3751, 2, '4', 0, 0, 4, 2021, '2023-03-28 07:28:10'),
(3752, 2, '5', 0, 0, 4, 2021, '2023-03-28 07:28:10'),
(3753, 2, '6', 0, 0, 4, 2021, '2023-03-28 07:28:10'),
(3754, 2, '7', 0, 0, 4, 2021, '2023-03-28 07:28:10'),
(3755, 2, '8', 0, 0, 4, 2021, '2023-03-28 07:28:10'),
(3756, 2, '9', 0, 0, 4, 2021, '2023-03-28 07:28:10'),
(3757, 2, '10', 0, 0, 4, 2021, '2023-03-28 07:28:10'),
(3758, 2, '11', 0, 0, 4, 2021, '2023-03-28 07:28:10'),
(3759, 2, '12', 0, 0, 4, 2021, '2023-03-28 07:28:10'),
(3760, 2, '13', 0, 0, 4, 2021, '2023-03-28 07:28:10'),
(3761, 2, '14', 0, 0, 4, 2021, '2023-03-28 07:28:10'),
(3762, 2, '15', 0, 0, 4, 2021, '2023-03-28 07:28:10'),
(3763, 2, '16', 0, 0, 4, 2021, '2023-03-28 07:28:10'),
(3764, 2, '17', 0, 0, 4, 2021, '2023-03-28 07:28:10'),
(3765, 2, '18', 0, 0, 4, 2021, '2023-03-28 07:28:10'),
(3766, 2, '19', 0, 0, 4, 2021, '2023-03-28 07:28:10'),
(3767, 2, '20', 0, 0, 4, 2021, '2023-03-28 07:28:10'),
(3768, 2, '21', 0, 0, 4, 2021, '2023-03-28 07:28:10'),
(3769, 2, '22', 0, 0, 4, 2021, '2023-03-28 07:28:10'),
(3770, 2, '23', 0, 0, 4, 2021, '2023-03-28 07:28:10'),
(3771, 2, '24', 0, 0, 4, 2021, '2023-03-28 07:28:10'),
(3772, 2, '25', 0, 0, 4, 2021, '2023-03-28 07:28:10'),
(3773, 2, '26', 0, 0, 4, 2021, '2023-03-28 07:28:10'),
(3774, 2, '27', 0, 0, 4, 2021, '2023-03-28 07:28:10'),
(3775, 2, '28', 0, 0, 4, 2021, '2023-03-28 07:28:10'),
(3804, 1, '1', 0, 0, 2, 2023, '2023-03-28 07:29:09'),
(3805, 1, '2', 0, 0, 2, 2023, '2023-03-28 07:29:09'),
(3806, 1, '3', 0, 0, 2, 2023, '2023-03-28 07:29:09'),
(3807, 1, '4', 0, 0, 2, 2023, '2023-03-28 07:29:09'),
(3808, 1, '5', 0, 0, 2, 2023, '2023-03-28 07:29:09'),
(3809, 1, '6', 0, 0, 2, 2023, '2023-03-28 07:29:09'),
(3810, 1, '7', 0, 0, 2, 2023, '2023-03-28 07:29:09'),
(3811, 1, '8', 0, 0, 2, 2023, '2023-03-28 07:29:09'),
(3812, 1, '9', 0, 0, 2, 2023, '2023-03-28 07:29:09'),
(3813, 1, '10', 0, 0, 2, 2023, '2023-03-28 07:29:09'),
(3814, 1, '11', 0, 0, 2, 2023, '2023-03-28 07:29:09'),
(3815, 1, '12', 0, 0, 2, 2023, '2023-03-28 07:29:09'),
(3816, 1, '13', 0, 0, 2, 2023, '2023-03-28 07:29:09'),
(3817, 1, '14', 0, 0, 2, 2023, '2023-03-28 07:29:09'),
(3818, 1, '15', 0, 0, 2, 2023, '2023-03-28 07:29:09'),
(3819, 1, '16', 0, 0, 2, 2023, '2023-03-28 07:29:09'),
(3820, 1, '17', 0, 0, 2, 2023, '2023-03-28 07:29:09'),
(3821, 1, '18', 0, 0, 2, 2023, '2023-03-28 07:29:09'),
(3822, 1, '19', 0, 0, 2, 2023, '2023-03-28 07:29:09'),
(3823, 1, '20', 0, 0, 2, 2023, '2023-03-28 07:29:09'),
(3824, 1, '21', 0, 0, 2, 2023, '2023-03-28 07:29:09'),
(3825, 1, '22', 0, 0, 2, 2023, '2023-03-28 07:29:09'),
(3826, 1, '23', 0, 0, 2, 2023, '2023-03-28 07:29:09'),
(3827, 1, '24', 0, 0, 2, 2023, '2023-03-28 07:29:09'),
(3828, 1, '25', 0, 0, 2, 2023, '2023-03-28 07:29:09'),
(3829, 1, '26', 0, 0, 2, 2023, '2023-03-28 07:29:09'),
(3830, 1, '27', 0, 0, 2, 2023, '2023-03-28 07:29:09'),
(3831, 1, '28', 0, 0, 2, 2023, '2023-03-28 07:29:09');

-- --------------------------------------------------------

--
-- Table structure for table `tresultproductitem`
--

CREATE TABLE `tresultproductitem` (
  `id` int(11) NOT NULL,
  `compId` int(11) NOT NULL,
  `pItemId` int(11) NOT NULL,
  `pOutputActual` decimal(20,5) NOT NULL,
  `pOutputBudget` decimal(20,5) NOT NULL DEFAULT 0.00000,
  `pUtil` decimal(10,4) NOT NULL,
  `tMonth` double NOT NULL,
  `tYear` double NOT NULL,
  `dCreate` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tresultproductitem`
--

INSERT INTO `tresultproductitem` (`id`, `compId`, `pItemId`, `pOutputActual`, `pOutputBudget`, `pUtil`, `tMonth`, `tYear`, `dCreate`) VALUES
(1, 1, 1, '0.00000', '17072.00000', '0.0000', 1, 2023, '2023-04-01 14:47:05'),
(2, 1, 2, '0.00000', '0.00000', '0.0000', 1, 2023, '2023-04-01 14:47:05'),
(3, 1, 3, '5237900.00000', '4895130.00000', '107.0000', 1, 2023, '2023-04-01 14:47:05'),
(4, 1, 4, '0.00000', '0.00000', '0.0000', 1, 2023, '2023-04-01 14:47:05'),
(5, 1, 5, '2244801.00000', '1741449.00000', '128.9000', 1, 2023, '2023-04-01 14:47:05'),
(6, 1, 6, '254807224.00000', '224066292.00000', '113.7200', 1, 2023, '2023-04-01 14:47:05'),
(7, 1, 7, '0.00000', '0.00000', '0.0000', 1, 2023, '2023-04-01 14:47:05'),
(8, 1, 8, '205015.00000', '0.00000', '0.0000', 1, 2023, '2023-04-01 14:47:05'),
(9, 1, 9, '0.00000', '0.00000', '0.0000', 1, 2023, '2023-04-01 14:47:05'),
(10, 1, 10, '0.00000', '0.00000', '0.0000', 1, 2023, '2023-04-01 14:47:05'),
(11, 1, 11, '0.00000', '0.00000', '0.0000', 1, 2023, '2023-04-01 14:47:05'),
(12, 1, 12, '2117247.00000', '2299540.00000', '92.0700', 1, 2023, '2023-04-01 14:47:05'),
(13, 1, 13, '198568.00000', '425790.00000', '46.6400', 1, 2023, '2023-04-01 14:47:05'),
(14, 1, 14, '0.00000', '0.00000', '0.0000', 1, 2023, '2023-04-01 14:47:05'),
(15, 1, 1, '200.00000', '12804.00000', '0.0000', 2, 2023, '2023-04-03 03:56:19'),
(16, 1, 2, '0.00000', '0.00000', '0.0000', 2, 2023, '2023-04-01 14:47:05'),
(17, 1, 3, '0.00000', '6683460.00000', '0.0000', 2, 2023, '2023-04-01 14:47:05'),
(18, 1, 4, '0.00000', '0.00000', '0.0000', 2, 2023, '2023-04-01 14:47:05'),
(19, 1, 5, '0.00000', '2205411.00000', '0.0000', 2, 2023, '2023-04-01 14:47:05'),
(20, 1, 6, '0.00000', '236404726.00000', '0.0000', 2, 2023, '2023-04-01 14:47:05'),
(21, 1, 7, '0.00000', '0.00000', '0.0000', 2, 2023, '2023-04-01 14:47:05'),
(22, 1, 8, '0.00000', '0.00000', '0.0000', 2, 2023, '2023-04-01 14:47:05'),
(23, 1, 9, '0.00000', '0.00000', '0.0000', 2, 2023, '2023-04-01 14:47:05'),
(24, 1, 10, '0.00000', '0.00000', '0.0000', 2, 2023, '2023-04-01 14:47:05'),
(25, 1, 11, '0.00000', '0.00000', '0.0000', 2, 2023, '2023-04-01 14:47:05'),
(26, 1, 12, '0.00000', '2451087.00000', '0.0000', 2, 2023, '2023-04-01 14:47:05'),
(27, 1, 13, '0.00000', '135481.00000', '0.0000', 2, 2023, '2023-04-01 14:47:05'),
(28, 1, 14, '0.00000', '0.00000', '0.0000', 2, 2023, '2023-04-01 14:47:05'),
(30, 1, 2, '0.00000', '0.00000', '0.0000', 3, 2023, '2023-04-01 14:47:05'),
(31, 1, 3, '0.00000', '4973240.00000', '0.0000', 3, 2023, '2023-04-01 14:47:05'),
(32, 1, 4, '0.00000', '0.00000', '0.0000', 3, 2023, '2023-04-01 14:47:05'),
(33, 1, 5, '0.00000', '1476978.00000', '0.0000', 3, 2023, '2023-04-01 14:47:05'),
(34, 1, 6, '0.00000', '206281800.00000', '0.0000', 3, 2023, '2023-04-01 14:47:05'),
(35, 1, 7, '0.00000', '0.00000', '0.0000', 3, 2023, '2023-04-01 14:47:05'),
(36, 1, 8, '0.00000', '0.00000', '0.0000', 3, 2023, '2023-04-01 14:47:05'),
(37, 1, 9, '0.00000', '0.00000', '0.0000', 3, 2023, '2023-04-01 14:47:05'),
(38, 1, 10, '0.00000', '0.00000', '0.0000', 3, 2023, '2023-04-01 14:47:05'),
(39, 1, 11, '0.00000', '0.00000', '0.0000', 3, 2023, '2023-04-01 14:47:05'),
(40, 1, 12, '0.00000', '2487449.00000', '0.0000', 3, 2023, '2023-04-01 14:47:05'),
(41, 1, 13, '0.00000', '193844.00000', '0.0000', 3, 2023, '2023-04-01 14:47:05'),
(42, 1, 14, '0.00000', '0.00000', '0.0000', 3, 2023, '2023-04-01 14:47:05'),
(43, 1, 1, '0.00000', '12804.00000', '0.0000', 4, 2023, '2023-04-01 14:47:05'),
(44, 1, 2, '0.00000', '0.00000', '0.0000', 4, 2023, '2023-04-01 14:47:05'),
(45, 1, 3, '0.00000', '5386860.00000', '0.0000', 4, 2023, '2023-04-01 14:47:05'),
(46, 1, 4, '0.00000', '0.00000', '0.0000', 4, 2023, '2023-04-01 14:47:05'),
(47, 1, 5, '0.00000', '1730969.00000', '0.0000', 4, 2023, '2023-04-01 14:47:05'),
(48, 1, 6, '0.00000', '196337862.00000', '0.0000', 4, 2023, '2023-04-01 14:47:05'),
(49, 1, 7, '0.00000', '0.00000', '0.0000', 4, 2023, '2023-04-01 14:47:05'),
(50, 1, 8, '0.00000', '0.00000', '0.0000', 4, 2023, '2023-04-01 14:47:05'),
(51, 1, 9, '0.00000', '0.00000', '0.0000', 4, 2023, '2023-04-01 14:47:05'),
(52, 1, 10, '0.00000', '0.00000', '0.0000', 4, 2023, '2023-04-01 14:47:05'),
(53, 1, 11, '0.00000', '0.00000', '0.0000', 4, 2023, '2023-04-01 14:47:05'),
(54, 1, 12, '0.00000', '2239403.00000', '0.0000', 4, 2023, '2023-04-01 14:47:05'),
(55, 1, 13, '0.00000', '144436.00000', '0.0000', 4, 2023, '2023-04-01 14:47:05'),
(56, 1, 14, '0.00000', '0.00000', '0.0000', 4, 2023, '2023-04-01 14:47:05'),
(57, 1, 1, '0.00000', '17072.00000', '0.0000', 5, 2023, '2023-04-01 14:47:05'),
(58, 1, 2, '0.00000', '0.00000', '0.0000', 5, 2023, '2023-04-01 14:47:05'),
(59, 1, 3, '0.00000', '4722120.00000', '0.0000', 5, 2023, '2023-04-01 14:47:05'),
(60, 1, 4, '0.00000', '0.00000', '0.0000', 5, 2023, '2023-04-01 14:47:05'),
(61, 1, 5, '0.00000', '1578528.00000', '0.0000', 5, 2023, '2023-04-01 14:47:05'),
(62, 1, 6, '0.00000', '214611696.00000', '0.0000', 5, 2023, '2023-04-01 14:47:05'),
(63, 1, 7, '0.00000', '0.00000', '0.0000', 5, 2023, '2023-04-01 14:47:05'),
(64, 1, 8, '0.00000', '0.00000', '0.0000', 5, 2023, '2023-04-01 14:47:05'),
(65, 1, 9, '0.00000', '0.00000', '0.0000', 5, 2023, '2023-04-01 14:47:05'),
(66, 1, 10, '0.00000', '0.00000', '0.0000', 5, 2023, '2023-04-01 14:47:05'),
(67, 1, 11, '0.00000', '0.00000', '0.0000', 5, 2023, '2023-04-01 14:47:05'),
(68, 1, 12, '0.00000', '2359122.00000', '0.0000', 5, 2023, '2023-04-01 14:47:05'),
(69, 1, 13, '0.00000', '112992.00000', '0.0000', 5, 2023, '2023-04-01 14:47:05'),
(70, 1, 14, '0.00000', '0.00000', '0.0000', 5, 2023, '2023-04-01 14:47:05'),
(71, 1, 1, '0.00000', '17072.00000', '0.0000', 6, 2023, '2023-04-01 14:47:05'),
(72, 1, 2, '0.00000', '0.00000', '0.0000', 6, 2023, '2023-04-01 14:47:05'),
(73, 1, 3, '0.00000', '6210290.00000', '0.0000', 6, 2023, '2023-04-01 14:47:05'),
(74, 1, 4, '0.00000', '0.00000', '0.0000', 6, 2023, '2023-04-01 14:47:05'),
(75, 1, 5, '0.00000', '1786608.00000', '0.0000', 6, 2023, '2023-04-01 14:47:05'),
(76, 1, 6, '0.00000', '238326814.00000', '0.0000', 6, 2023, '2023-04-01 14:47:05'),
(77, 1, 7, '0.00000', '0.00000', '0.0000', 6, 2023, '2023-04-01 14:47:05'),
(78, 1, 8, '0.00000', '0.00000', '0.0000', 6, 2023, '2023-04-01 14:47:05'),
(79, 1, 9, '0.00000', '0.00000', '0.0000', 6, 2023, '2023-04-01 14:47:05'),
(80, 1, 10, '0.00000', '0.00000', '0.0000', 6, 2023, '2023-04-01 14:47:05'),
(81, 1, 11, '0.00000', '0.00000', '0.0000', 6, 2023, '2023-04-01 14:47:05'),
(82, 1, 12, '0.00000', '2295781.00000', '0.0000', 6, 2023, '2023-04-01 14:47:05'),
(83, 1, 13, '0.00000', '88721.00000', '0.0000', 6, 2023, '2023-04-01 14:47:05'),
(84, 1, 14, '0.00000', '0.00000', '0.0000', 6, 2023, '2023-04-01 14:47:05'),
(85, 1, 1, '0.00000', '17072.00000', '0.0000', 7, 2023, '2023-04-01 14:47:05'),
(86, 1, 2, '0.00000', '0.00000', '0.0000', 7, 2023, '2023-04-01 14:47:05'),
(87, 1, 3, '0.00000', '5244100.00000', '0.0000', 7, 2023, '2023-04-01 14:47:05'),
(88, 1, 4, '0.00000', '0.00000', '0.0000', 7, 2023, '2023-04-01 14:47:05'),
(89, 1, 5, '0.00000', '2114422.00000', '0.0000', 7, 2023, '2023-04-01 14:47:05'),
(90, 1, 6, '0.00000', '219453522.00000', '0.0000', 7, 2023, '2023-04-01 14:47:05'),
(91, 1, 7, '0.00000', '0.00000', '0.0000', 7, 2023, '2023-04-01 14:47:05'),
(92, 1, 8, '0.00000', '0.00000', '0.0000', 7, 2023, '2023-04-01 14:47:05'),
(93, 1, 9, '0.00000', '0.00000', '0.0000', 7, 2023, '2023-04-01 14:47:05'),
(94, 1, 10, '0.00000', '0.00000', '0.0000', 7, 2023, '2023-04-01 14:47:05'),
(95, 1, 11, '0.00000', '0.00000', '0.0000', 7, 2023, '2023-04-01 14:47:05'),
(96, 1, 12, '0.00000', '2419584.00000', '0.0000', 7, 2023, '2023-04-01 14:47:05'),
(97, 1, 13, '0.00000', '161710.00000', '0.0000', 7, 2023, '2023-04-01 14:47:05'),
(98, 1, 14, '0.00000', '0.00000', '0.0000', 7, 2023, '2023-04-01 14:47:05'),
(99, 1, 1, '0.00000', '17072.00000', '0.0000', 8, 2023, '2023-04-01 14:47:05'),
(100, 1, 2, '0.00000', '0.00000', '0.0000', 8, 2023, '2023-04-01 14:47:05'),
(101, 1, 3, '0.00000', '6565640.00000', '0.0000', 8, 2023, '2023-04-01 14:47:05'),
(102, 1, 4, '0.00000', '0.00000', '0.0000', 8, 2023, '2023-04-01 14:47:05'),
(103, 1, 5, '0.00000', '1686378.00000', '0.0000', 8, 2023, '2023-04-01 14:47:05'),
(104, 1, 6, '0.00000', '227572758.00000', '0.0000', 8, 2023, '2023-04-01 14:47:05'),
(105, 1, 7, '0.00000', '0.00000', '0.0000', 8, 2023, '2023-04-01 14:47:05'),
(106, 1, 8, '0.00000', '0.00000', '0.0000', 8, 2023, '2023-04-01 14:47:05'),
(107, 1, 9, '0.00000', '0.00000', '0.0000', 8, 2023, '2023-04-01 14:47:05'),
(108, 1, 10, '0.00000', '0.00000', '0.0000', 8, 2023, '2023-04-01 14:47:05'),
(109, 1, 11, '0.00000', '0.00000', '0.0000', 8, 2023, '2023-04-01 14:47:05'),
(110, 1, 12, '0.00000', '2547921.00000', '0.0000', 8, 2023, '2023-04-01 14:47:05'),
(111, 1, 13, '0.00000', '707071.00000', '0.0000', 8, 2023, '2023-04-01 14:47:05'),
(112, 1, 14, '0.00000', '0.00000', '0.0000', 8, 2023, '2023-04-01 14:47:05'),
(113, 1, 1, '0.00000', '17072.00000', '0.0000', 9, 2023, '2023-04-01 14:47:05'),
(114, 1, 2, '0.00000', '0.00000', '0.0000', 9, 2023, '2023-04-01 14:47:05'),
(115, 1, 3, '0.00000', '5796210.00000', '0.0000', 9, 2023, '2023-04-01 14:47:05'),
(116, 1, 4, '0.00000', '0.00000', '0.0000', 9, 2023, '2023-04-01 14:47:05'),
(117, 1, 5, '0.00000', '1852870.00000', '0.0000', 9, 2023, '2023-04-01 14:47:05'),
(118, 1, 6, '0.00000', '251731980.00000', '0.0000', 9, 2023, '2023-04-01 14:47:05'),
(119, 1, 7, '0.00000', '0.00000', '0.0000', 9, 2023, '2023-04-01 14:47:05'),
(120, 1, 8, '0.00000', '0.00000', '0.0000', 9, 2023, '2023-04-01 14:47:05'),
(121, 1, 9, '0.00000', '0.00000', '0.0000', 9, 2023, '2023-04-01 14:47:05'),
(122, 1, 10, '0.00000', '0.00000', '0.0000', 9, 2023, '2023-04-01 14:47:05'),
(123, 1, 11, '0.00000', '0.00000', '0.0000', 9, 2023, '2023-04-01 14:47:05'),
(124, 1, 12, '0.00000', '2642620.00000', '0.0000', 9, 2023, '2023-04-01 14:47:05'),
(125, 1, 13, '0.00000', '83082.00000', '0.0000', 9, 2023, '2023-04-01 14:47:05'),
(126, 1, 14, '0.00000', '0.00000', '0.0000', 9, 2023, '2023-04-01 14:47:05'),
(127, 1, 1, '0.00000', '17072.00000', '0.0000', 10, 2023, '2023-04-01 14:47:05'),
(128, 1, 2, '0.00000', '0.00000', '0.0000', 10, 2023, '2023-04-01 14:47:05'),
(129, 1, 3, '0.00000', '5689550.00000', '0.0000', 10, 2023, '2023-04-01 14:47:05'),
(130, 1, 4, '0.00000', '0.00000', '0.0000', 10, 2023, '2023-04-01 14:47:05'),
(131, 1, 5, '0.00000', '1816255.00000', '0.0000', 10, 2023, '2023-04-01 14:47:05'),
(132, 1, 6, '0.00000', '251652682.00000', '0.0000', 10, 2023, '2023-04-01 14:47:05'),
(133, 1, 7, '0.00000', '0.00000', '0.0000', 10, 2023, '2023-04-01 14:47:05'),
(134, 1, 8, '0.00000', '0.00000', '0.0000', 10, 2023, '2023-04-01 14:47:05'),
(135, 1, 9, '0.00000', '0.00000', '0.0000', 10, 2023, '2023-04-01 14:47:05'),
(136, 1, 10, '0.00000', '0.00000', '0.0000', 10, 2023, '2023-04-01 14:47:05'),
(137, 1, 11, '0.00000', '0.00000', '0.0000', 10, 2023, '2023-04-01 14:47:05'),
(138, 1, 12, '0.00000', '2690501.00000', '0.0000', 10, 2023, '2023-04-01 14:47:05'),
(139, 1, 13, '0.00000', '165384.00000', '0.0000', 10, 2023, '2023-04-01 14:47:05'),
(140, 1, 14, '0.00000', '0.00000', '0.0000', 10, 2023, '2023-04-01 14:47:05'),
(141, 1, 1, '0.00000', '17072.00000', '0.0000', 11, 2023, '2023-04-01 14:47:05'),
(142, 1, 2, '0.00000', '4000.00000', '0.0000', 11, 2023, '2023-04-03 04:15:07'),
(143, 1, 3, '0.00000', '5748310.00000', '0.0000', 11, 2023, '2023-04-01 14:47:05'),
(144, 1, 4, '0.00000', '0.00000', '0.0000', 11, 2023, '2023-04-01 14:47:05'),
(145, 1, 5, '0.00000', '1712660.00000', '0.0000', 11, 2023, '2023-04-01 14:47:05'),
(146, 1, 6, '0.00000', '254909194.00000', '0.0000', 11, 2023, '2023-04-01 14:47:05'),
(147, 1, 7, '0.00000', '0.00000', '0.0000', 11, 2023, '2023-04-01 14:47:05'),
(148, 1, 8, '0.00000', '0.00000', '0.0000', 11, 2023, '2023-04-01 14:47:05'),
(149, 1, 9, '0.00000', '0.00000', '0.0000', 11, 2023, '2023-04-01 14:47:05'),
(150, 1, 10, '0.00000', '0.00000', '0.0000', 11, 2023, '2023-04-01 14:47:05'),
(151, 1, 11, '0.00000', '0.00000', '0.0000', 11, 2023, '2023-04-01 14:47:05'),
(152, 1, 12, '0.00000', '2679741.00000', '0.0000', 11, 2023, '2023-04-01 14:47:05'),
(153, 1, 13, '0.00000', '407104.00000', '0.0000', 11, 2023, '2023-04-01 14:47:05'),
(154, 1, 14, '0.00000', '0.00000', '0.0000', 11, 2023, '2023-04-01 14:47:05'),
(155, 1, 1, '0.00000', '17072.00000', '0.0000', 12, 2023, '2023-04-01 14:47:05'),
(156, 1, 2, '0.00000', '0.00000', '0.0000', 12, 2023, '2023-04-01 14:47:05'),
(157, 1, 3, '0.00000', '5105530.00000', '0.0000', 12, 2023, '2023-04-01 14:47:05'),
(158, 1, 4, '0.00000', '0.00000', '0.0000', 12, 2023, '2023-04-01 14:47:05'),
(159, 1, 5, '0.00000', '1617138.00000', '0.0000', 12, 2023, '2023-04-01 14:47:05'),
(160, 1, 6, '0.00000', '254992768.00000', '0.0000', 12, 2023, '2023-04-01 14:47:05'),
(161, 1, 7, '0.00000', '0.00000', '0.0000', 12, 2023, '2023-04-01 14:47:05'),
(162, 1, 8, '0.00000', '0.00000', '0.0000', 12, 2023, '2023-04-01 14:47:05'),
(163, 1, 9, '0.00000', '0.00000', '0.0000', 12, 2023, '2023-04-01 14:47:05'),
(164, 1, 10, '0.00000', '0.00000', '0.0000', 12, 2023, '2023-04-01 14:47:05'),
(165, 1, 11, '0.00000', '0.00000', '0.0000', 12, 2023, '2023-04-01 14:47:05'),
(166, 1, 12, '0.00000', '2317123.00000', '0.0000', 12, 2023, '2023-04-01 14:47:05'),
(167, 1, 13, '0.00000', '84901.00000', '0.0000', 12, 2023, '2023-04-01 14:47:05'),
(168, 1, 14, '0.00000', '0.00000', '0.0000', 12, 2023, '2023-04-01 14:47:05'),
(169, 1, 1, '0.00000', '8580.00000', '0.0000', 1, 2022, '2023-04-01 14:47:05'),
(170, 1, 2, '0.00000', '0.00000', '0.0000', 1, 2022, '2023-04-01 14:47:05'),
(171, 1, 3, '4065950.00000', '4404770.00000', '92.3100', 1, 2022, '2023-04-01 14:47:05'),
(172, 1, 4, '0.00000', '0.00000', '0.0000', 1, 2022, '2023-04-01 14:47:05'),
(173, 1, 5, '2290658.00000', '2075399.00000', '110.3700', 1, 2022, '2023-04-01 14:47:05'),
(174, 1, 6, '256966166.00000', '232610988.00000', '110.4700', 1, 2022, '2023-04-01 14:47:05'),
(175, 1, 7, '0.00000', '0.00000', '0.0000', 1, 2022, '2023-04-01 14:47:05'),
(176, 1, 8, '193805.00000', '205340.00000', '94.3800', 1, 2022, '2023-04-01 14:47:05'),
(177, 1, 9, '0.00000', '0.00000', '0.0000', 1, 2022, '2023-04-01 14:47:05'),
(178, 1, 10, '0.00000', '0.00000', '0.0000', 1, 2022, '2023-04-01 14:47:05'),
(179, 1, 11, '0.00000', '0.00000', '0.0000', 1, 2022, '2023-04-01 14:47:05'),
(180, 1, 12, '2255010.00000', '2529968.00000', '89.1300', 1, 2022, '2023-04-01 14:47:05'),
(181, 1, 13, '138831.00000', '116091.00000', '119.5900', 1, 2022, '2023-04-01 14:47:05'),
(182, 1, 14, '0.00000', '0.00000', '0.0000', 1, 2022, '2023-04-01 14:47:05'),
(183, 1, 1, '0.00000', '8580.00000', '0.0000', 2, 2022, '2023-04-01 14:47:05'),
(184, 1, 2, '0.00000', '0.00000', '0.0000', 2, 2022, '2023-04-01 14:47:05'),
(185, 1, 3, '4065950.00000', '4472130.00000', '90.9200', 2, 2022, '2023-04-01 14:47:05'),
(186, 1, 4, '0.00000', '0.00000', '0.0000', 2, 2022, '2023-04-01 14:47:05'),
(187, 1, 5, '2290658.00000', '2025838.00000', '113.0700', 2, 2022, '2023-04-01 14:47:05'),
(188, 1, 6, '256966166.00000', '209168782.00000', '122.8500', 2, 2022, '2023-04-01 14:47:05'),
(189, 1, 7, '0.00000', '0.00000', '0.0000', 2, 2022, '2023-04-01 14:47:05'),
(190, 1, 8, '193805.00000', '204850.00000', '94.6100', 2, 2022, '2023-04-01 14:47:05'),
(191, 1, 9, '0.00000', '0.00000', '0.0000', 2, 2022, '2023-04-01 14:47:05'),
(192, 1, 10, '0.00000', '0.00000', '0.0000', 2, 2022, '2023-04-01 14:47:05'),
(193, 1, 11, '0.00000', '0.00000', '0.0000', 2, 2022, '2023-04-01 14:47:05'),
(194, 1, 12, '2255010.00000', '2413337.00000', '93.4400', 2, 2022, '2023-04-01 14:47:05'),
(195, 1, 13, '138831.00000', '80106.00000', '173.3100', 2, 2022, '2023-04-01 14:47:05'),
(196, 1, 14, '0.00000', '0.00000', '0.0000', 2, 2022, '2023-04-01 14:47:05'),
(197, 1, 1, '0.00000', '8580.00000', '0.0000', 3, 2022, '2023-04-01 14:47:05'),
(198, 1, 2, '0.00000', '0.00000', '0.0000', 3, 2022, '2023-04-01 14:47:05'),
(199, 1, 3, '7002140.00000', '4839740.00000', '144.6800', 3, 2022, '2023-04-01 14:47:05'),
(200, 1, 4, '0.00000', '0.00000', '0.0000', 3, 2022, '2023-04-01 14:47:05'),
(201, 1, 5, '2042539.00000', '487929.00000', '418.6100', 3, 2022, '2023-04-01 14:47:05'),
(202, 1, 6, '264319774.00000', '206497150.00000', '128.0000', 3, 2022, '2023-04-01 14:47:05'),
(203, 1, 7, '0.00000', '0.00000', '0.0000', 3, 2022, '2023-04-01 14:47:05'),
(204, 1, 8, '394765.00000', '181310.00000', '217.7300', 3, 2022, '2023-04-01 14:47:05'),
(205, 1, 9, '0.00000', '0.00000', '0.0000', 3, 2022, '2023-04-01 14:47:05'),
(206, 1, 10, '0.00000', '0.00000', '0.0000', 3, 2022, '2023-04-01 14:47:05'),
(207, 1, 11, '0.00000', '0.00000', '0.0000', 3, 2022, '2023-04-01 14:47:05'),
(208, 1, 12, '2235257.00000', '1886961.00000', '118.4600', 3, 2022, '2023-04-01 14:47:05'),
(209, 1, 13, '102215.00000', '408952.00000', '24.9900', 3, 2022, '2023-04-01 14:47:05'),
(210, 1, 14, '0.00000', '0.00000', '0.0000', 3, 2022, '2023-04-01 14:47:05'),
(211, 1, 1, '0.00000', '8580.00000', '0.0000', 4, 2022, '2023-04-01 14:47:05'),
(212, 1, 2, '0.00000', '0.00000', '0.0000', 4, 2022, '2023-04-01 14:47:05'),
(213, 1, 3, '4633320.00000', '6249830.00000', '74.1400', 4, 2022, '2023-04-01 14:47:05'),
(214, 1, 4, '0.00000', '0.00000', '0.0000', 4, 2022, '2023-04-01 14:47:05'),
(215, 1, 5, '2649426.00000', '1514952.00000', '174.8900', 4, 2022, '2023-04-01 14:47:05'),
(216, 1, 6, '265667016.00000', '181519554.00000', '146.3600', 4, 2022, '2023-04-01 14:47:05'),
(217, 1, 7, '0.00000', '0.00000', '0.0000', 4, 2022, '2023-04-01 14:47:05'),
(218, 1, 8, '436085.00000', '182680.00000', '238.7200', 4, 2022, '2023-04-01 14:47:05'),
(219, 1, 9, '0.00000', '0.00000', '0.0000', 4, 2022, '2023-04-01 14:47:05'),
(220, 1, 10, '0.00000', '0.00000', '0.0000', 4, 2022, '2023-04-01 14:47:05'),
(221, 1, 11, '0.00000', '0.00000', '0.0000', 4, 2022, '2023-04-01 14:47:05'),
(222, 1, 12, '2098306.00000', '2082302.00000', '100.7700', 4, 2022, '2023-04-01 14:47:05'),
(223, 1, 13, '29044.00000', '118336.00000', '24.5400', 4, 2022, '2023-04-01 14:47:05'),
(224, 1, 14, '0.00000', '0.00000', '0.0000', 4, 2022, '2023-04-01 14:47:05'),
(225, 1, 1, '0.00000', '8580.00000', '0.0000', 5, 2022, '2023-04-01 14:47:05'),
(226, 1, 2, '0.00000', '0.00000', '0.0000', 5, 2022, '2023-04-01 14:47:05'),
(227, 1, 3, '6746640.00000', '3731820.00000', '180.7900', 5, 2022, '2023-04-01 14:47:05'),
(228, 1, 4, '0.00000', '0.00000', '0.0000', 5, 2022, '2023-04-01 14:47:05'),
(229, 1, 5, '1921529.00000', '1536364.00000', '125.0700', 5, 2022, '2023-04-01 14:47:05'),
(230, 1, 6, '222180740.00000', '174593540.00000', '127.2600', 5, 2022, '2023-04-01 14:47:05'),
(231, 1, 7, '0.00000', '0.00000', '0.0000', 5, 2022, '2023-04-01 14:47:05'),
(232, 1, 8, '233930.00000', '70280.00000', '332.8500', 5, 2022, '2023-04-01 14:47:05'),
(233, 1, 9, '0.00000', '0.00000', '0.0000', 5, 2022, '2023-04-01 14:47:05'),
(234, 1, 10, '0.00000', '0.00000', '0.0000', 5, 2022, '2023-04-01 14:47:05'),
(235, 1, 11, '0.00000', '0.00000', '0.0000', 5, 2022, '2023-04-01 14:47:05'),
(236, 1, 12, '2025536.00000', '1979137.00000', '102.3400', 5, 2022, '2023-04-01 14:47:05'),
(237, 1, 13, '304118.00000', '76188.00000', '399.1700', 5, 2022, '2023-04-01 14:47:05'),
(238, 1, 14, '0.00000', '0.00000', '0.0000', 5, 2022, '2023-04-01 14:47:05'),
(239, 1, 1, '0.00000', '17160.00000', '0.0000', 6, 2022, '2023-04-01 14:47:05'),
(240, 1, 2, '0.00000', '0.00000', '0.0000', 6, 2022, '2023-04-01 14:47:05'),
(241, 1, 3, '6426360.00000', '4660220.00000', '137.9000', 6, 2022, '2023-04-01 14:47:05'),
(242, 1, 4, '0.00000', '0.00000', '0.0000', 6, 2022, '2023-04-01 14:47:05'),
(243, 1, 5, '2335577.00000', '1896753.00000', '123.1400', 6, 2022, '2023-04-01 14:47:05'),
(244, 1, 6, '204832074.00000', '186964316.00000', '109.5600', 6, 2022, '2023-04-01 14:47:05'),
(245, 1, 7, '0.00000', '0.00000', '0.0000', 6, 2022, '2023-04-01 14:47:05'),
(246, 1, 8, '233880.00000', '191430.00000', '122.1800', 6, 2022, '2023-04-01 14:47:05'),
(247, 1, 9, '0.00000', '0.00000', '0.0000', 6, 2022, '2023-04-01 14:47:05'),
(248, 1, 10, '0.00000', '0.00000', '0.0000', 6, 2022, '2023-04-01 14:47:05'),
(249, 1, 11, '0.00000', '0.00000', '0.0000', 6, 2022, '2023-04-01 14:47:05'),
(250, 1, 12, '2900747.00000', '2173417.00000', '133.4600', 6, 2022, '2023-04-01 14:47:05'),
(251, 1, 13, '141558.00000', '134242.00000', '105.4500', 6, 2022, '2023-04-01 14:47:05'),
(252, 1, 14, '0.00000', '0.00000', '0.0000', 6, 2022, '2023-04-01 14:47:05'),
(253, 1, 1, '0.00000', '12870.00000', '0.0000', 7, 2022, '2023-04-01 14:47:05'),
(254, 1, 2, '0.00000', '0.00000', '0.0000', 7, 2022, '2023-04-01 14:47:05'),
(255, 1, 3, '3267860.00000', '5109160.00000', '63.9600', 7, 2022, '2023-04-01 14:47:05'),
(256, 1, 4, '0.00000', '0.00000', '0.0000', 7, 2022, '2023-04-01 14:47:05'),
(257, 1, 5, '2516461.00000', '1486994.00000', '169.2300', 7, 2022, '2023-04-01 14:47:05'),
(258, 1, 6, '226338990.00000', '184038314.00000', '122.9800', 7, 2022, '2023-04-01 14:47:05'),
(259, 1, 7, '0.00000', '0.00000', '0.0000', 7, 2022, '2023-04-01 14:47:05'),
(260, 1, 8, '292315.00000', '99840.00000', '292.7800', 7, 2022, '2023-04-01 14:47:05'),
(261, 1, 9, '0.00000', '0.00000', '0.0000', 7, 2022, '2023-04-01 14:47:05'),
(262, 1, 10, '0.00000', '0.00000', '0.0000', 7, 2022, '2023-04-01 14:47:05'),
(263, 1, 11, '0.00000', '0.00000', '0.0000', 7, 2022, '2023-04-01 14:47:05'),
(264, 1, 12, '2594994.00000', '2200173.00000', '117.9400', 7, 2022, '2023-04-01 14:47:05'),
(265, 1, 13, '367943.00000', '118336.00000', '310.9300', 7, 2022, '2023-04-01 14:47:05'),
(266, 1, 14, '0.00000', '0.00000', '0.0000', 7, 2022, '2023-04-01 14:47:05'),
(267, 1, 1, '0.00000', '12870.00000', '0.0000', 8, 2022, '2023-04-01 14:47:05'),
(268, 1, 2, '0.00000', '0.00000', '0.0000', 8, 2022, '2023-04-01 14:47:05'),
(269, 1, 3, '3989480.00000', '5524600.00000', '72.2100', 8, 2022, '2023-04-01 14:47:05'),
(270, 1, 4, '0.00000', '0.00000', '0.0000', 8, 2022, '2023-04-01 14:47:05'),
(271, 1, 5, '2158388.00000', '1549355.00000', '139.3100', 8, 2022, '2023-04-01 14:47:05'),
(272, 1, 6, '230564620.00000', '186658632.00000', '123.5200', 8, 2022, '2023-04-01 14:47:05'),
(273, 1, 7, '0.00000', '0.00000', '0.0000', 8, 2022, '2023-04-01 14:47:05'),
(274, 1, 8, '261565.00000', '10720.00000', '2439.9700', 8, 2022, '2023-04-01 14:47:05'),
(275, 1, 9, '0.00000', '0.00000', '0.0000', 8, 2022, '2023-04-01 14:47:05'),
(276, 1, 10, '0.00000', '0.00000', '0.0000', 8, 2022, '2023-04-01 14:47:05'),
(277, 1, 11, '0.00000', '0.00000', '0.0000', 8, 2022, '2023-04-01 14:47:05'),
(278, 1, 12, '1934204.00000', '2293759.00000', '84.3200', 8, 2022, '2023-04-01 14:47:05'),
(279, 1, 13, '382101.00000', '81471.00000', '469.0000', 8, 2022, '2023-04-01 14:47:05'),
(280, 1, 14, '0.00000', '0.00000', '0.0000', 8, 2022, '2023-04-01 14:47:05'),
(281, 1, 1, '0.00000', '4290.00000', '0.0000', 9, 2022, '2023-04-01 14:47:05'),
(282, 1, 2, '0.00000', '0.00000', '0.0000', 9, 2022, '2023-04-01 14:47:05'),
(283, 1, 3, '4097450.00000', '5945150.00000', '68.9200', 9, 2022, '2023-04-01 14:47:05'),
(284, 1, 4, '0.00000', '0.00000', '0.0000', 9, 2022, '2023-04-01 14:47:05'),
(285, 1, 5, '1376768.00000', '1903038.00000', '72.3500', 9, 2022, '2023-04-01 14:47:05'),
(286, 1, 6, '230122448.00000', '187352454.00000', '122.8300', 9, 2022, '2023-04-01 14:47:05'),
(287, 1, 7, '0.00000', '0.00000', '0.0000', 9, 2022, '2023-04-01 14:47:05'),
(288, 1, 8, '379060.00000', '50080.00000', '756.9100', 9, 2022, '2023-04-01 14:47:05'),
(289, 1, 9, '0.00000', '0.00000', '0.0000', 9, 2022, '2023-04-01 14:47:05'),
(290, 1, 10, '0.00000', '0.00000', '0.0000', 9, 2022, '2023-04-01 14:47:05'),
(291, 1, 11, '0.00000', '0.00000', '0.0000', 9, 2022, '2023-04-01 14:47:05'),
(292, 1, 12, '2469495.00000', '2151601.00000', '114.7700', 9, 2022, '2023-04-01 14:47:05'),
(293, 1, 13, '57957.00000', '82587.00000', '70.1800', 9, 2022, '2023-04-01 14:47:05'),
(294, 1, 14, '0.00000', '0.00000', '0.0000', 9, 2022, '2023-04-01 14:47:05'),
(295, 1, 1, '0.00000', '17160.00000', '0.0000', 10, 2022, '2023-04-01 14:47:05'),
(296, 1, 2, '0.00000', '0.00000', '0.0000', 10, 2022, '2023-04-01 14:47:05'),
(297, 1, 3, '4719230.00000', '5298810.00000', '89.0600', 10, 2022, '2023-04-01 14:47:05'),
(298, 1, 4, '0.00000', '0.00000', '0.0000', 10, 2022, '2023-04-01 14:47:05'),
(299, 1, 5, '903763.00000', '1531394.00000', '59.0200', 10, 2022, '2023-04-01 14:47:05'),
(300, 1, 6, '234160700.00000', '207258760.00000', '112.9800', 10, 2022, '2023-04-01 14:47:05'),
(301, 1, 7, '0.00000', '0.00000', '0.0000', 10, 2022, '2023-04-01 14:47:05'),
(302, 1, 8, '312790.00000', '0.00000', '0.0000', 10, 2022, '2023-04-01 14:47:05'),
(303, 1, 9, '0.00000', '0.00000', '0.0000', 10, 2022, '2023-04-01 14:47:05'),
(304, 1, 10, '0.00000', '0.00000', '0.0000', 10, 2022, '2023-04-01 14:47:05'),
(305, 1, 11, '0.00000', '0.00000', '0.0000', 10, 2022, '2023-04-01 14:47:05'),
(306, 1, 12, '1806737.00000', '2384839.00000', '75.7600', 10, 2022, '2023-04-01 14:47:05'),
(307, 1, 13, '407499.00000', '460092.00000', '88.5700', 10, 2022, '2023-04-01 14:47:05'),
(308, 1, 14, '0.00000', '0.00000', '0.0000', 10, 2022, '2023-04-01 14:47:05'),
(309, 1, 1, '0.00000', '12870.00000', '0.0000', 11, 2022, '2023-04-01 14:47:05'),
(310, 1, 2, '0.00000', '0.00000', '0.0000', 11, 2022, '2023-04-01 14:47:05'),
(311, 1, 3, '4890740.00000', '6654080.00000', '73.5000', 11, 2022, '2023-04-01 14:47:05'),
(312, 1, 4, '0.00000', '0.00000', '0.0000', 11, 2022, '2023-04-01 14:47:05'),
(313, 1, 5, '447226.00000', '1557298.00000', '28.7200', 11, 2022, '2023-04-01 14:47:05'),
(314, 1, 6, '221037322.00000', '208879944.00000', '105.8200', 11, 2022, '2023-04-01 14:47:05'),
(315, 1, 7, '0.00000', '0.00000', '0.0000', 11, 2022, '2023-04-01 14:47:05'),
(316, 1, 8, '445235.00000', '0.00000', '0.0000', 11, 2022, '2023-04-01 14:47:05'),
(317, 1, 9, '0.00000', '0.00000', '0.0000', 11, 2022, '2023-04-01 14:47:05'),
(318, 1, 10, '0.00000', '0.00000', '0.0000', 11, 2022, '2023-04-01 14:47:05'),
(319, 1, 11, '0.00000', '0.00000', '0.0000', 11, 2022, '2023-04-01 14:47:05'),
(320, 1, 12, '2120816.00000', '2229047.00000', '95.1400', 11, 2022, '2023-04-01 14:47:05'),
(321, 1, 13, '105305.00000', '406925.00000', '25.8800', 11, 2022, '2023-04-01 14:47:05'),
(322, 1, 14, '0.00000', '0.00000', '0.0000', 11, 2022, '2023-04-01 14:47:05'),
(323, 1, 1, '0.00000', '12870.00000', '0.0000', 12, 2022, '2023-04-01 14:47:05'),
(324, 1, 2, '0.00000', '0.00000', '0.0000', 12, 2022, '2023-04-01 14:47:05'),
(325, 1, 3, '6815750.00000', '4694010.00000', '145.2000', 12, 2022, '2023-04-01 14:47:05'),
(326, 1, 4, '0.00000', '0.00000', '0.0000', 12, 2022, '2023-04-01 14:47:05'),
(327, 1, 5, '2414143.00000', '1605357.00000', '150.3800', 12, 2022, '2023-04-01 14:47:05'),
(328, 1, 6, '243305842.00000', '195640192.00000', '124.3600', 12, 2022, '2023-04-01 14:47:05'),
(329, 1, 7, '0.00000', '0.00000', '0.0000', 12, 2022, '2023-04-01 14:47:05'),
(330, 1, 8, '382465.00000', '21375.00000', '1789.3100', 12, 2022, '2023-04-01 14:47:05'),
(331, 1, 9, '0.00000', '0.00000', '0.0000', 12, 2022, '2023-04-01 14:47:05'),
(332, 1, 10, '0.00000', '0.00000', '0.0000', 12, 2022, '2023-04-01 14:47:05'),
(333, 1, 11, '0.00000', '0.00000', '0.0000', 12, 2022, '2023-04-01 14:47:05'),
(334, 1, 12, '2724688.00000', '2089303.00000', '130.4100', 12, 2022, '2023-04-01 14:47:05'),
(335, 1, 13, '150154.00000', '80048.00000', '187.5800', 12, 2022, '2023-04-01 14:47:05'),
(336, 1, 14, '0.00000', '0.00000', '0.0000', 12, 2022, '2023-04-01 14:47:05'),
(340, 1, 1, '100.00000', '100.00000', '0.0000', 3, 2023, '2023-04-03 03:55:51');

-- --------------------------------------------------------

--
-- Table structure for table `tresultrawdata`
--

CREATE TABLE `tresultrawdata` (
  `id` int(11) NOT NULL,
  `compId` int(11) NOT NULL,
  `idRawData` int(11) NOT NULL,
  `tResult` decimal(20,5) NOT NULL DEFAULT 0.00000,
  `tMonth` double NOT NULL,
  `tYear` double NOT NULL,
  `dCreate` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tresultrawdata`
--

INSERT INTO `tresultrawdata` (`id`, `compId`, `idRawData`, `tResult`, `tMonth`, `tYear`, `dCreate`) VALUES
(1718, 4, 8, '9413472664.18000', 1, 2022, '2022-09-13 00:00:00'),
(1719, 4, 9, '2140266141.45000', 1, 2022, '2022-09-13 00:00:00'),
(1720, 4, 10, '2288149387.26000', 1, 2022, '2022-09-13 00:00:00'),
(1721, 4, 11, '2740105154.72000', 1, 2022, '2022-09-13 00:00:00'),
(1722, 4, 12, '510661773.19000', 1, 2022, '2022-09-13 00:00:00'),
(1723, 4, 13, '9751423206.30000', 1, 2022, '2022-09-13 00:00:00'),
(1724, 4, 14, '2026040541.11000', 1, 2022, '2022-09-13 00:00:00'),
(1725, 4, 15, '2152790419.75000', 1, 2022, '2022-09-13 00:00:00'),
(1726, 4, 16, '3190645219.64000', 1, 2022, '2022-09-13 00:00:00'),
(1727, 4, 17, '589814443.72000', 1, 2022, '2022-09-13 00:00:00'),
(1728, 4, 18, '10852682965.60000', 1, 2022, '2022-09-13 00:00:00'),
(1729, 4, 19, '1557735485.31000', 1, 2022, '2022-09-13 00:00:00'),
(1730, 4, 20, '3110391296.20000', 1, 2022, '2022-09-13 00:00:00'),
(1731, 4, 21, '3897140958.65000', 1, 2022, '2022-09-13 00:00:00'),
(1732, 4, 22, '657595793.98000', 1, 2022, '2022-09-13 00:00:00'),
(1733, 4, 23, '691337.00000', 1, 2022, '2022-09-13 00:00:00'),
(1734, 4, 24, '362665.00000', 1, 2022, '2022-09-13 00:00:00'),
(1735, 4, 25, '464641.00000', 1, 2022, '2022-09-13 00:00:00'),
(1736, 4, 26, '511161.00000', 1, 2022, '2022-09-13 00:00:00'),
(1737, 4, 27, '5439.91000', 1, 2022, '2022-09-13 00:00:00'),
(1738, 4, 28, '8794.19000', 1, 2022, '2022-09-13 00:00:00'),
(1739, 4, 29, '7418.77000', 1, 2022, '2022-09-13 00:00:00'),
(1740, 4, 30, '2473.67000', 1, 2022, '2022-09-13 00:00:00'),
(1741, 4, 31, '4956.49000', 1, 2022, '2022-09-13 00:00:00'),
(1742, 4, 32, '3851.27000', 1, 2022, '2022-09-13 00:00:00'),
(1743, 4, 33, '46010660611.85000', 1, 2022, '2022-09-13 00:00:00'),
(1744, 4, 34, '43218042478.00000', 1, 2022, '2022-09-13 00:00:00'),
(1745, 4, 35, '33025601600.00000', 1, 2022, '2022-09-13 00:00:00'),
(1746, 4, 36, '10433030035.82000', 1, 2022, '2022-09-13 00:00:00'),
(1747, 4, 37, '9928381852.51000', 1, 2022, '2022-09-13 00:00:00'),
(1748, 4, 38, '11397804824.01000', 1, 2022, '2022-09-13 00:00:00'),
(1749, 4, 39, '12096556957.50000', 1, 2022, '2022-09-13 00:00:00'),
(1750, 4, 40, '9226520523.00000', 1, 2022, '2022-09-13 00:00:00'),
(1751, 4, 41, '8920580612.00000', 1, 2022, '2022-09-13 00:00:00'),
(1752, 4, 42, '2968464045.58000', 1, 2022, '2022-09-13 00:00:00'),
(1753, 4, 43, '2353191820.00000', 1, 2022, '2022-09-13 00:00:00'),
(1754, 4, 44, '2126505463.00000', 1, 2022, '2022-09-13 00:00:00'),
(1755, 4, 45, '789101215.25000', 1, 2022, '2022-09-13 00:00:00'),
(1756, 4, 46, '931723421.00000', 1, 2022, '2022-09-13 00:00:00'),
(1757, 4, 47, '24188478.88000', 1, 2022, '2022-09-13 00:00:00'),
(1758, 4, 48, '2349744.00000', 1, 2022, '2022-09-13 00:00:00'),
(1759, 4, 49, '12094239.44000', 1, 2022, '2022-09-13 00:00:00'),
(1760, 4, 50, '102.00000', 1, 2022, '2022-09-13 00:00:00'),
(1761, 4, 51, '43.00000', 1, 2022, '2022-09-13 00:00:00'),
(1762, 4, 52, '51.00000', 1, 2022, '2022-09-13 00:00:00'),
(1763, 4, 53, '35.00000', 1, 2022, '2022-09-13 00:00:00'),
(1764, 4, 54, '35.00000', 1, 2022, '2022-09-13 00:00:00'),
(1765, 4, 55, '0.00000', 1, 2022, '2022-09-13 00:00:00'),
(1766, 4, 56, '1.00000', 1, 2022, '2022-09-13 00:00:00'),
(1767, 4, 57, '41.00000', 1, 2022, '2022-09-13 00:00:00'),
(1768, 4, 58, '0.00000', 1, 2022, '2022-09-13 00:00:00'),
(1769, 4, 59, '1.00000', 1, 2022, '2022-09-13 00:00:00'),
(1770, 4, 60, '3.00000', 1, 2022, '2022-09-13 00:00:00'),
(1771, 4, 61, '4.00000', 1, 2022, '2022-09-13 00:00:00'),
(1772, 4, 62, '88.50000', 1, 2022, '2022-09-13 00:00:00'),
(1773, 4, 63, '98.00000', 1, 2022, '2022-09-13 00:00:00'),
(1774, 4, 64, '81.65000', 1, 2022, '2022-09-13 00:00:00'),
(1775, 4, 65, '102.42000', 1, 2022, '2022-09-13 00:00:00'),
(1776, 4, 66, '15.55000', 1, 2022, '2022-09-13 00:00:00'),
(1777, 4, 67, '0.00000', 1, 2022, '2022-09-13 00:00:00'),
(1778, 4, 68, '18.32000', 1, 2022, '2022-09-13 00:00:00'),
(1779, 4, 69, '0.00000', 1, 2022, '2022-09-13 00:00:00'),
(1780, 4, 70, '99.92000', 1, 2022, '2022-09-13 00:00:00'),
(1781, 4, 71, '90.90000', 1, 2022, '2022-09-13 00:00:00'),
(1782, 4, 72, '0.00000', 1, 2022, '2022-09-13 00:00:00'),
(1783, 4, 73, '0.00000', 1, 2022, '2022-09-13 00:00:00'),
(1784, 4, 74, '0.00000', 1, 2022, '2022-09-13 00:00:00'),
(1785, 4, 75, '0.00000', 1, 2022, '2022-09-13 00:00:00'),
(1786, 4, 76, '1.00000', 1, 2022, '2022-09-13 00:00:00'),
(1787, 4, 77, '15.00000', 1, 2022, '2022-09-13 00:00:00'),
(1788, 4, 78, '0.00000', 1, 2022, '2022-09-13 00:00:00'),
(1789, 4, 79, '0.00000', 1, 2022, '2022-09-13 00:00:00'),
(1790, 4, 80, '0.00000', 1, 2022, '2022-09-13 00:00:00'),
(1791, 4, 81, '0.00000', 1, 2022, '2022-09-13 00:00:00'),
(1792, 4, 82, '0.00000', 1, 2022, '2022-09-13 00:00:00'),
(1793, 4, 83, '1.00000', 1, 2022, '2022-09-13 00:00:00'),
(1794, 4, 84, '100.00000', 1, 2022, '2022-09-13 00:00:00'),
(1795, 4, 85, '200.00000', 1, 2022, '2022-09-13 00:00:00'),
(1796, 4, 86, '200.00000', 1, 2022, '2022-09-13 00:00:00'),
(1797, 4, 87, '100.00000', 1, 2022, '2022-09-13 00:00:00'),
(1798, 4, 88, '100.00000', 1, 2022, '2022-09-13 00:00:00'),
(1799, 4, 89, '34.00000', 1, 2022, '2022-09-13 00:00:00'),
(1800, 4, 90, '90640550.65000', 1, 2022, '2022-09-13 00:00:00'),
(1801, 4, 91, '259.90000', 1, 2022, '2022-09-13 00:00:00'),
(1802, 4, 8, '8155894087.98000', 2, 2022, '2022-09-13 00:00:00'),
(1803, 4, 9, '1363090252.68000', 2, 2022, '2022-09-13 00:00:00'),
(1804, 4, 10, '2162976186.27000', 2, 2022, '2022-09-13 00:00:00'),
(1805, 4, 11, '2560085514.88000', 2, 2022, '2022-09-13 00:00:00'),
(1806, 4, 12, '474313888.03000', 2, 2022, '2022-09-13 00:00:00'),
(1807, 4, 13, '8839363651.75000', 2, 2022, '2022-09-13 00:00:00'),
(1808, 4, 14, '1307810170.82000', 2, 2022, '2022-09-13 00:00:00'),
(1809, 4, 15, '2035638816.95000', 2, 2022, '2022-09-13 00:00:00'),
(1810, 4, 16, '3095815181.61000', 2, 2022, '2022-09-13 00:00:00'),
(1811, 4, 17, '603284137.84000', 2, 2022, '2022-09-13 00:00:00'),
(1812, 4, 18, '9710014876.31000', 2, 2022, '2022-09-13 00:00:00'),
(1813, 4, 19, '1790823466.20000', 2, 2022, '2022-09-13 00:00:00'),
(1814, 4, 20, '2485309901.12000', 2, 2022, '2022-09-13 00:00:00'),
(1815, 4, 21, '3032299949.82000', 2, 2022, '2022-09-13 00:00:00'),
(1816, 4, 22, '768738126.49000', 2, 2022, '2022-09-13 00:00:00'),
(1817, 4, 23, '505089.00000', 2, 2022, '2022-09-13 00:00:00'),
(1818, 4, 24, '388045.00000', 2, 2022, '2022-09-13 00:00:00'),
(1819, 4, 25, '488208.00000', 2, 2022, '2022-09-13 00:00:00'),
(1820, 4, 26, '418504.00000', 2, 2022, '2022-09-13 00:00:00'),
(1821, 4, 27, '4951.55000', 2, 2022, '2022-09-13 00:00:00'),
(1822, 4, 28, '6697.34000', 2, 2022, '2022-09-13 00:00:00'),
(1823, 4, 29, '7225.13000', 2, 2022, '2022-09-13 00:00:00'),
(1824, 4, 30, '2384.27000', 2, 2022, '2022-09-13 00:00:00'),
(1825, 4, 31, '3842.35000', 2, 2022, '2022-09-13 00:00:00'),
(1826, 4, 32, '3646.54000', 2, 2022, '2022-09-13 00:00:00'),
(1827, 4, 33, '45152980649.00000', 2, 2022, '2022-09-13 00:00:00'),
(1828, 4, 34, '43250091087.00000', 2, 2022, '2022-09-13 00:00:00'),
(1829, 4, 35, '41123861602.90000', 2, 2022, '2022-09-13 00:00:00'),
(1830, 4, 36, '10359955594.59000', 2, 2022, '2022-09-13 00:00:00'),
(1831, 4, 37, '9263766933.86000', 2, 2022, '2022-09-13 00:00:00'),
(1832, 4, 38, '10145704724.30000', 2, 2022, '2022-09-13 00:00:00'),
(1833, 4, 39, '11841495627.00000', 2, 2022, '2022-09-13 00:00:00'),
(1834, 4, 40, '9937413004.90000', 2, 2022, '2022-09-13 00:00:00'),
(1835, 4, 41, '13813102856.00000', 2, 2022, '2022-09-13 00:00:00'),
(1836, 4, 42, '2704788704.64000', 2, 2022, '2022-09-13 00:00:00'),
(1837, 4, 43, '3137327012.00000', 2, 2022, '2022-09-13 00:00:00'),
(1838, 4, 44, '2706488516.00000', 2, 2022, '2022-09-13 00:00:00'),
(1839, 4, 45, '680159338.25000', 2, 2022, '2022-09-13 00:00:00'),
(1840, 4, 46, '1219352222.72000', 2, 2022, '2022-09-13 00:00:00'),
(1841, 4, 47, '24188478.88000', 2, 2022, '2022-09-13 00:00:00'),
(1842, 4, 48, '14194494.00000', 2, 2022, '2022-09-13 00:00:00'),
(1843, 4, 49, '12094239.44000', 2, 2022, '2022-09-13 00:00:00'),
(1844, 4, 50, '102.00000', 2, 2022, '2022-09-13 00:00:00'),
(1845, 4, 51, '67.50000', 2, 2022, '2022-09-13 00:00:00'),
(1846, 4, 52, '51.00000', 2, 2022, '2022-09-13 00:00:00'),
(1847, 4, 53, '33.00000', 2, 2022, '2022-09-13 00:00:00'),
(1848, 4, 54, '33.00000', 2, 2022, '2022-09-13 00:00:00'),
(1849, 4, 55, '0.00000', 2, 2022, '2022-09-13 00:00:00'),
(1850, 4, 56, '2.00000', 2, 2022, '2022-09-13 00:00:00'),
(1851, 4, 57, '44.00000', 2, 2022, '2022-09-13 00:00:00'),
(1852, 4, 58, '0.00000', 2, 2022, '2022-09-13 00:00:00'),
(1853, 4, 59, '2.00000', 2, 2022, '2022-09-13 00:00:00'),
(1854, 4, 60, '3.00000', 2, 2022, '2022-09-13 00:00:00'),
(1855, 4, 61, '5.00000', 2, 2022, '2022-09-13 00:00:00'),
(1856, 4, 62, '90.50000', 2, 2022, '2022-09-13 00:00:00'),
(1857, 4, 63, '99.40000', 2, 2022, '2022-09-13 00:00:00'),
(1858, 4, 64, '88.69000', 2, 2022, '2022-09-13 00:00:00'),
(1859, 4, 65, '102.57000', 2, 2022, '2022-09-13 00:00:00'),
(1860, 4, 66, '15.72000', 2, 2022, '2022-09-13 00:00:00'),
(1861, 4, 67, '0.00000', 2, 2022, '2022-09-13 00:00:00'),
(1862, 4, 68, '16.89000', 2, 2022, '2022-09-13 00:00:00'),
(1863, 4, 69, '0.00000', 2, 2022, '2022-09-13 00:00:00'),
(1864, 4, 70, '99.63000', 2, 2022, '2022-09-13 00:00:00'),
(1865, 4, 71, '81.52000', 2, 2022, '2022-09-13 00:00:00'),
(1866, 4, 72, '0.00000', 2, 2022, '2022-09-13 00:00:00'),
(1867, 4, 73, '0.00000', 2, 2022, '2022-09-13 00:00:00'),
(1868, 4, 74, '0.00000', 2, 2022, '2022-09-13 00:00:00'),
(1869, 4, 75, '0.00000', 2, 2022, '2022-09-13 00:00:00'),
(1870, 4, 76, '1.00000', 2, 2022, '2022-09-13 00:00:00'),
(1871, 4, 77, '0.00000', 2, 2022, '2022-09-13 00:00:00'),
(1872, 4, 78, '0.00000', 2, 2022, '2022-09-13 00:00:00'),
(1873, 4, 79, '0.00000', 2, 2022, '2022-09-13 00:00:00'),
(1874, 4, 80, '0.00000', 2, 2022, '2022-09-13 00:00:00'),
(1875, 4, 81, '0.00000', 2, 2022, '2022-09-13 00:00:00'),
(1876, 4, 82, '0.00000', 2, 2022, '2022-09-13 00:00:00'),
(1877, 4, 83, '2.00000', 2, 2022, '2022-09-13 00:00:00'),
(1878, 4, 84, '100.00000', 2, 2022, '2022-09-13 00:00:00'),
(1879, 4, 85, '100.00000', 2, 2022, '2022-09-13 00:00:00'),
(1880, 4, 86, '100.00000', 2, 2022, '2022-09-13 00:00:00'),
(1881, 4, 87, '50.00000', 2, 2022, '2022-09-13 00:00:00'),
(1882, 4, 88, '80.00000', 2, 2022, '2022-09-13 00:00:00'),
(1883, 4, 89, '9.00000', 2, 2022, '2022-09-13 00:00:00'),
(1884, 4, 90, '90640550.65000', 2, 2022, '2022-09-13 00:00:00'),
(1885, 4, 91, '259.90000', 2, 2022, '2022-09-13 00:00:00'),
(1970, 4, 8, '10085912512.00000', 4, 2022, '2022-09-13 00:00:00'),
(1971, 4, 9, '2841592060.46000', 4, 2022, '2022-09-13 00:00:00'),
(1972, 4, 10, '2448576306.65000', 4, 2022, '2022-09-13 00:00:00'),
(1973, 4, 11, '2616922761.79000', 4, 2022, '2022-09-13 00:00:00'),
(1974, 4, 12, '557820321.87000', 4, 2022, '2022-09-13 00:00:00'),
(1975, 4, 13, '11953771648.00000', 4, 2022, '2022-09-13 00:00:00'),
(1976, 4, 14, '2857376949.10000', 4, 2022, '2022-09-13 00:00:00'),
(1977, 4, 15, '3003850118.11000', 4, 2022, '2022-09-13 00:00:00'),
(1978, 4, 16, '3566635520.95000', 4, 2022, '2022-09-13 00:00:00'),
(1979, 4, 17, '625202369.03000', 4, 2022, '2022-09-13 00:00:00'),
(1980, 4, 18, '13427313271.42000', 4, 2022, '2022-09-13 00:00:00'),
(1981, 4, 19, '3012906807.05000', 4, 2022, '2022-09-13 00:00:00'),
(1982, 4, 20, '4317024013.32000', 4, 2022, '2022-09-13 00:00:00'),
(1983, 4, 21, '3622535432.55000', 4, 2022, '2022-09-13 00:00:00'),
(1984, 4, 22, '801734323.30000', 4, 2022, '2022-09-13 00:00:00'),
(1985, 4, 23, '540735.00000', 4, 2022, '2022-09-13 00:00:00'),
(1986, 4, 24, '516866.00000', 4, 2022, '2022-09-13 00:00:00'),
(1987, 4, 25, '614450.00000', 4, 2022, '2022-09-13 00:00:00'),
(1988, 4, 26, '699351.00000', 4, 2022, '2022-09-13 00:00:00'),
(1989, 4, 27, '6234.00000', 4, 2022, '2022-09-13 00:00:00'),
(1990, 4, 28, '7046.46000', 4, 2022, '2022-09-13 00:00:00'),
(1991, 4, 29, '7121.60000', 4, 2022, '2022-09-13 00:00:00'),
(1992, 4, 30, '2747.06000', 4, 2022, '2022-09-13 00:00:00'),
(1993, 4, 31, '3969.05000', 4, 2022, '2022-09-13 00:00:00'),
(1994, 4, 32, '3682.21000', 4, 2022, '2022-09-13 00:00:00'),
(1995, 4, 33, '48210336601.00000', 4, 2022, '2022-09-13 00:00:00'),
(1996, 4, 34, '47688062907.00000', 4, 2022, '2022-09-13 00:00:00'),
(1997, 4, 35, '55262100656.60000', 4, 2022, '2022-09-13 00:00:00'),
(1998, 4, 36, '10861862575.21000', 4, 2022, '2022-09-13 00:00:00'),
(1999, 4, 37, '10071573312.02000', 4, 2022, '2022-09-13 00:00:00'),
(2000, 4, 38, '14298808604.10000', 4, 2022, '2022-09-13 00:00:00'),
(2001, 4, 39, '12684469111.00000', 4, 2022, '2022-09-13 00:00:00'),
(2002, 4, 40, '13011847120.00000', 4, 2022, '2022-09-13 00:00:00'),
(2003, 4, 41, '16600214893.00000', 4, 2022, '2022-09-13 00:00:00'),
(2004, 4, 42, '2573509793.18000', 4, 2022, '2022-09-13 00:00:00'),
(2005, 4, 43, '2246477105.00000', 4, 2022, '2022-09-13 00:00:00'),
(2006, 4, 44, '2424788014.00000', 4, 2022, '2022-09-13 00:00:00'),
(2007, 4, 45, '1641191993.85000', 4, 2022, '2022-09-13 00:00:00'),
(2008, 4, 46, '1410551449.67000', 4, 2022, '2022-09-13 00:00:00'),
(2009, 4, 47, '24188478.88000', 4, 2022, '2022-09-13 00:00:00'),
(2010, 4, 48, '421468.00000', 4, 2022, '2022-09-13 00:00:00'),
(2011, 4, 49, '12094239.44000', 4, 2022, '2022-09-13 00:00:00'),
(2012, 4, 50, '102.00000', 4, 2022, '2022-09-13 00:00:00'),
(2013, 4, 51, '16.00000', 4, 2022, '2022-09-13 00:00:00'),
(2014, 4, 52, '51.00000', 4, 2022, '2022-09-13 00:00:00'),
(2015, 4, 53, '39.00000', 4, 2022, '2022-09-13 00:00:00'),
(2016, 4, 54, '39.00000', 4, 2022, '2022-09-13 00:00:00'),
(2017, 4, 55, '0.00000', 4, 2022, '2022-09-13 00:00:00'),
(2018, 4, 56, '1.00000', 4, 2022, '2022-09-13 00:00:00'),
(2019, 4, 57, '64.00000', 4, 2022, '2022-09-13 00:00:00'),
(2020, 4, 58, '0.00000', 4, 2022, '2022-09-13 00:00:00'),
(2021, 4, 59, '2.00000', 4, 2022, '2022-09-13 00:00:00'),
(2022, 4, 60, '4.00000', 4, 2022, '2022-09-13 00:00:00'),
(2023, 4, 61, '7.00000', 4, 2022, '2022-09-13 00:00:00'),
(2024, 4, 62, '90.60000', 4, 2022, '2022-09-13 00:00:00'),
(2025, 4, 63, '99.40000', 4, 2022, '2022-09-13 00:00:00'),
(2026, 4, 64, '87.24000', 4, 2022, '2022-09-13 00:00:00'),
(2027, 4, 65, '102.47000', 4, 2022, '2022-09-13 00:00:00'),
(2028, 4, 66, '15.45000', 4, 2022, '2022-09-13 00:00:00'),
(2029, 4, 67, '0.00000', 4, 2022, '2022-09-13 00:00:00'),
(2030, 4, 68, '16.44000', 4, 2022, '2022-09-13 00:00:00'),
(2031, 4, 69, '0.00000', 4, 2022, '2022-09-13 00:00:00'),
(2032, 4, 70, '98.15000', 4, 2022, '2022-09-13 00:00:00'),
(2033, 4, 71, '99.45000', 4, 2022, '2022-09-13 00:00:00'),
(2034, 4, 72, '0.00000', 4, 2022, '2022-09-13 00:00:00'),
(2035, 4, 73, '0.00000', 4, 2022, '2022-09-13 00:00:00'),
(2036, 4, 74, '0.00000', 4, 2022, '2022-09-13 00:00:00'),
(2037, 4, 75, '0.00000', 4, 2022, '2022-09-13 00:00:00'),
(2038, 4, 76, '3.00000', 4, 2022, '2022-09-13 00:00:00'),
(2039, 4, 77, '1.00000', 4, 2022, '2022-09-13 00:00:00'),
(2040, 4, 78, '0.00000', 4, 2022, '2022-09-13 00:00:00'),
(2041, 4, 79, '0.00000', 4, 2022, '2022-09-13 00:00:00'),
(2042, 4, 80, '0.00000', 4, 2022, '2022-09-13 00:00:00'),
(2043, 4, 81, '0.00000', 4, 2022, '2022-09-13 00:00:00'),
(2044, 4, 82, '0.00000', 4, 2022, '2022-09-13 00:00:00'),
(2045, 4, 83, '1.00000', 4, 2022, '2022-09-13 00:00:00'),
(2046, 4, 84, '104.00000', 4, 2022, '2022-09-13 00:00:00'),
(2047, 4, 85, '100.00000', 4, 2022, '2022-09-13 00:00:00'),
(2048, 4, 86, '100.00000', 4, 2022, '2022-09-13 00:00:00'),
(2049, 4, 87, '100.00000', 4, 2022, '2022-09-13 00:00:00'),
(2050, 4, 88, '102.00000', 4, 2022, '2022-09-13 00:00:00'),
(2051, 4, 89, '11.00000', 4, 2022, '2022-09-13 00:00:00'),
(2052, 4, 90, '90640550.65000', 4, 2022, '2022-09-13 00:00:00'),
(2053, 4, 91, '259.90000', 4, 2022, '2022-09-13 00:00:00'),
(2054, 4, 8, '6524421013.02000', 5, 2022, '2022-09-13 00:00:00'),
(2055, 4, 9, '2077798314.68000', 5, 2022, '2022-09-13 00:00:00'),
(2056, 4, 10, '1516187122.20000', 5, 2022, '2022-09-13 00:00:00'),
(2057, 4, 11, '1630488272.14000', 5, 2022, '2022-09-13 00:00:00'),
(2058, 4, 12, '316503818.31000', 5, 2022, '2022-09-13 00:00:00'),
(2059, 4, 13, '8128461354.49000', 5, 2022, '2022-09-13 00:00:00'),
(2060, 4, 14, '2922622763.27000', 5, 2022, '2022-09-13 00:00:00'),
(2061, 4, 15, '1940742624.30000', 5, 2022, '2022-09-13 00:00:00'),
(2062, 4, 16, '1118514343.00000', 5, 2022, '2022-09-13 00:00:00'),
(2063, 4, 17, '324566857.00000', 5, 2022, '2022-09-13 00:00:00'),
(2064, 4, 18, '11889605210.50000', 5, 2022, '2022-09-13 00:00:00'),
(2065, 4, 19, '2554334335.30000', 5, 2022, '2022-09-13 00:00:00'),
(2066, 4, 20, '4532618799.31000', 5, 2022, '2022-09-13 00:00:00'),
(2067, 4, 21, '2515787852.49000', 5, 2022, '2022-09-13 00:00:00'),
(2068, 4, 22, '717931157.31000', 5, 2022, '2022-09-13 00:00:00'),
(2069, 4, 23, '494340.00000', 5, 2022, '2022-09-13 00:00:00'),
(2070, 4, 24, '186021.00000', 5, 2022, '2022-09-13 00:00:00'),
(2071, 4, 25, '358740.00000', 5, 2022, '2022-09-13 00:00:00'),
(2072, 4, 26, '649474.00000', 5, 2022, '2022-09-13 00:00:00'),
(2073, 4, 27, '4604.59000', 5, 2022, '2022-09-13 00:00:00'),
(2074, 4, 28, '6340.34000', 5, 2022, '2022-09-13 00:00:00'),
(2075, 4, 29, '6364.04000', 5, 2022, '2022-09-13 00:00:00'),
(2076, 4, 30, '2181.38000', 5, 2022, '2022-09-13 00:00:00'),
(2077, 4, 31, '3444.72000', 5, 2022, '2022-09-13 00:00:00'),
(2078, 4, 32, '3694.52000', 5, 2022, '2022-09-13 00:00:00'),
(2079, 4, 33, '43703999085.00000', 5, 2022, '2022-09-13 00:00:00'),
(2080, 4, 34, '38109838935.00000', 5, 2022, '2022-09-13 00:00:00'),
(2081, 4, 35, '46288927344.40000', 5, 2022, '2022-09-13 00:00:00'),
(2082, 4, 36, '10173664622.67000', 5, 2022, '2022-09-13 00:00:00'),
(2083, 4, 37, '8614584580.22000', 5, 2022, '2022-09-13 00:00:00'),
(2084, 4, 38, '11796082828.10000', 5, 2022, '2022-09-13 00:00:00'),
(2085, 4, 39, '11426087644.00000', 5, 2022, '2022-09-13 00:00:00'),
(2086, 4, 40, '11878907940.00000', 5, 2022, '2022-09-13 00:00:00'),
(2087, 4, 41, '14400766615.00000', 5, 2022, '2022-09-13 00:00:00'),
(2088, 4, 42, '2332142987.41000', 5, 2022, '2022-09-13 00:00:00'),
(2089, 4, 43, '1236183652.00000', 5, 2022, '2022-09-13 00:00:00'),
(2090, 4, 44, '2158834648.00000', 5, 2022, '2022-09-13 00:00:00'),
(2091, 4, 45, '1617064393.85000', 5, 2022, '2022-09-13 00:00:00'),
(2092, 4, 46, '1335482047.82000', 5, 2022, '2022-09-13 00:00:00'),
(2093, 4, 47, '24188478.88000', 5, 2022, '2022-09-13 00:00:00'),
(2094, 4, 48, '22831974.00000', 5, 2022, '2022-09-13 00:00:00'),
(2095, 4, 49, '12094239.44000', 5, 2022, '2022-09-13 00:00:00'),
(2096, 4, 50, '102.00000', 5, 2022, '2022-09-13 00:00:00'),
(2097, 4, 51, '41.90000', 5, 2022, '2022-09-13 00:00:00'),
(2098, 4, 52, '51.00000', 5, 2022, '2022-09-13 00:00:00'),
(2099, 4, 53, '30.00000', 5, 2022, '2022-09-13 00:00:00'),
(2100, 4, 54, '30.00000', 5, 2022, '2022-09-13 00:00:00'),
(2101, 4, 55, '0.00000', 5, 2022, '2022-09-13 00:00:00'),
(2102, 4, 56, '2.00000', 5, 2022, '2022-09-13 00:00:00'),
(2103, 4, 57, '58.00000', 5, 2022, '2022-09-13 00:00:00'),
(2104, 4, 58, '0.00000', 5, 2022, '2022-09-13 00:00:00'),
(2105, 4, 59, '3.00000', 5, 2022, '2022-09-13 00:00:00'),
(2106, 4, 60, '7.00000', 5, 2022, '2022-09-13 00:00:00'),
(2107, 4, 61, '7.00000', 5, 2022, '2022-09-13 00:00:00'),
(2108, 4, 62, '83.70000', 5, 2022, '2022-09-13 00:00:00'),
(2109, 4, 63, '100.10000', 5, 2022, '2022-09-13 00:00:00'),
(2110, 4, 64, '85.63000', 5, 2022, '2022-09-13 00:00:00'),
(2111, 4, 65, '103.16000', 5, 2022, '2022-09-13 00:00:00'),
(2112, 4, 66, '15.63000', 5, 2022, '2022-09-13 00:00:00'),
(2113, 4, 67, '0.00000', 5, 2022, '2022-09-13 00:00:00'),
(2114, 4, 68, '17.13000', 5, 2022, '2022-09-13 00:00:00'),
(2115, 4, 69, '0.00000', 5, 2022, '2022-09-13 00:00:00'),
(2116, 4, 70, '100.09000', 5, 2022, '2022-09-13 00:00:00'),
(2117, 4, 71, '93.58000', 5, 2022, '2022-09-13 00:00:00'),
(2118, 4, 72, '0.00000', 5, 2022, '2022-09-13 00:00:00'),
(2119, 4, 73, '0.00000', 5, 2022, '2022-09-13 00:00:00'),
(2120, 4, 74, '0.00000', 5, 2022, '2022-09-13 00:00:00'),
(2121, 4, 75, '0.00000', 5, 2022, '2022-09-13 00:00:00'),
(2122, 4, 76, '0.00000', 5, 2022, '2022-09-13 00:00:00'),
(2123, 4, 77, '39.00000', 5, 2022, '2022-09-13 00:00:00'),
(2124, 4, 78, '0.00000', 5, 2022, '2022-09-13 00:00:00'),
(2125, 4, 79, '0.00000', 5, 2022, '2022-09-13 00:00:00'),
(2126, 4, 80, '0.00000', 5, 2022, '2022-09-13 00:00:00'),
(2127, 4, 81, '0.00000', 5, 2022, '2022-09-13 00:00:00'),
(2128, 4, 82, '0.00000', 5, 2022, '2022-09-13 00:00:00'),
(2129, 4, 83, '2.00000', 5, 2022, '2022-09-13 00:00:00'),
(2130, 4, 84, '102.50000', 5, 2022, '2022-09-13 00:00:00'),
(2131, 4, 85, '100.00000', 5, 2022, '2022-09-13 00:00:00'),
(2132, 4, 86, '100.00000', 5, 2022, '2022-09-13 00:00:00'),
(2133, 4, 87, '150.00000', 5, 2022, '2022-09-13 00:00:00'),
(2134, 4, 88, '102.00000', 5, 2022, '2022-09-13 00:00:00'),
(2135, 4, 89, '4.00000', 5, 2022, '2022-09-13 00:00:00'),
(2136, 4, 90, '90640550.65000', 5, 2022, '2022-09-13 00:00:00'),
(2137, 4, 91, '259.90000', 5, 2022, '2022-09-13 00:00:00'),
(2138, 4, 8, '9466916766.63000', 6, 2022, '2022-09-13 00:00:00'),
(2139, 4, 9, '2437044488.44000', 6, 2022, '2022-09-13 00:00:00'),
(2140, 4, 10, '2275171796.44000', 6, 2022, '2022-09-13 00:00:00'),
(2141, 4, 11, '2599796442.33000', 6, 2022, '2022-09-13 00:00:00'),
(2142, 4, 12, '522082972.73000', 6, 2022, '2022-09-13 00:00:00'),
(2143, 4, 13, '10982907512.86000', 6, 2022, '2022-09-13 00:00:00'),
(2144, 4, 14, '2290681860.43000', 6, 2022, '2022-09-13 00:00:00'),
(2145, 4, 15, '2577773574.70000', 6, 2022, '2022-09-13 00:00:00'),
(2146, 4, 16, '3450505996.90000', 6, 2022, '2022-09-13 00:00:00'),
(2147, 4, 17, '841183741.92000', 6, 2022, '2022-09-13 00:00:00'),
(2148, 4, 18, '10188011844.30000', 6, 2022, '2022-09-13 00:00:00'),
(2149, 4, 19, '1425773324.89000', 6, 2022, '2022-09-13 00:00:00'),
(2150, 4, 20, '3156347961.08000', 6, 2022, '2022-09-13 00:00:00'),
(2151, 4, 21, '3157053550.62000', 6, 2022, '2022-09-13 00:00:00'),
(2152, 4, 22, '769327096.18000', 6, 2022, '2022-09-13 00:00:00'),
(2153, 4, 23, '513016.00000', 6, 2022, '2022-09-13 00:00:00'),
(2154, 4, 24, '309471.00000', 6, 2022, '2022-09-13 00:00:00'),
(2155, 4, 25, '552972.00000', 6, 2022, '2022-09-13 00:00:00'),
(2156, 4, 26, '514038.00000', 6, 2022, '2022-09-13 00:00:00'),
(2157, 4, 27, '5902.96000', 6, 2022, '2022-09-13 00:00:00'),
(2158, 4, 28, '6500.61000', 6, 2022, '2022-09-13 00:00:00'),
(2159, 4, 29, '3294.50000', 6, 2022, '2022-09-13 00:00:00'),
(2160, 4, 30, '2669.86000', 6, 2022, '2022-09-13 00:00:00'),
(2161, 4, 31, '3399.50000', 6, 2022, '2022-09-13 00:00:00'),
(2162, 4, 32, '1697.00000', 6, 2022, '2022-09-13 00:00:00'),
(2163, 4, 33, '49482013846.12000', 6, 2022, '2022-09-13 00:00:00'),
(2164, 4, 34, '42941386764.00000', 6, 2022, '2022-09-13 00:00:00'),
(2165, 4, 35, '47396644808.80000', 6, 2022, '2022-09-13 00:00:00'),
(2166, 4, 36, '11659580564.91000', 6, 2022, '2022-09-13 00:00:00'),
(2167, 4, 37, '8639733752.33000', 6, 2022, '2022-09-13 00:00:00'),
(2168, 4, 38, '12486157953.50000', 6, 2022, '2022-09-13 00:00:00'),
(2169, 4, 39, '12904848865.06000', 6, 2022, '2022-09-13 00:00:00'),
(2170, 4, 40, '13464761822.00000', 6, 2022, '2022-09-13 00:00:00'),
(2171, 4, 41, '13668399521.00000', 6, 2022, '2022-09-13 00:00:00'),
(2172, 4, 42, '2355595278.04000', 6, 2022, '2022-09-13 00:00:00'),
(2173, 4, 43, '2187558367.00000', 6, 2022, '2022-09-13 00:00:00'),
(2174, 4, 44, '2351414017.00000', 6, 2022, '2022-09-13 00:00:00'),
(2175, 4, 45, '2500000000.00000', 6, 2022, '2022-09-13 00:00:00'),
(2176, 4, 46, '3278464484.30000', 6, 2022, '2022-09-13 00:00:00'),
(2177, 4, 47, '24188478.88000', 6, 2022, '2022-09-13 00:00:00'),
(2178, 4, 48, '2687122.98000', 6, 2022, '2022-09-13 00:00:00'),
(2179, 4, 49, '12094239.44000', 6, 2022, '2022-09-13 00:00:00'),
(2180, 4, 50, '102.00000', 6, 2022, '2022-09-13 00:00:00'),
(2181, 4, 51, '10.25000', 6, 2022, '2022-09-13 00:00:00'),
(2182, 4, 52, '51.00000', 6, 2022, '2022-09-13 00:00:00'),
(2183, 4, 53, '29.00000', 6, 2022, '2022-09-13 00:00:00'),
(2184, 4, 54, '29.00000', 6, 2022, '2022-09-13 00:00:00'),
(2185, 4, 55, '0.00000', 6, 2022, '2022-09-13 00:00:00'),
(2186, 4, 56, '1.00000', 6, 2022, '2022-09-13 00:00:00'),
(2187, 4, 57, '56.00000', 6, 2022, '2022-09-13 00:00:00'),
(2188, 4, 58, '0.00000', 6, 2022, '2022-09-13 00:00:00'),
(2189, 4, 59, '1.00000', 6, 2022, '2022-09-13 00:00:00'),
(2190, 4, 60, '1.00000', 6, 2022, '2022-09-13 00:00:00'),
(2191, 4, 61, '9.00000', 6, 2022, '2022-09-13 00:00:00'),
(2192, 4, 62, '92.10000', 6, 2022, '2022-09-13 00:00:00'),
(2193, 4, 63, '100.30000', 6, 2022, '2022-09-13 00:00:00'),
(2194, 4, 64, '85.81000', 6, 2022, '2022-09-13 00:00:00'),
(2195, 4, 65, '102.59000', 6, 2022, '2022-09-13 00:00:00'),
(2196, 4, 66, '15.65000', 6, 2022, '2022-09-13 00:00:00'),
(2197, 4, 67, '0.00000', 6, 2022, '2022-09-13 00:00:00'),
(2198, 4, 68, '16.40000', 6, 2022, '2022-09-13 00:00:00'),
(2199, 4, 69, '0.00000', 6, 2022, '2022-09-13 00:00:00'),
(2200, 4, 70, '91.80000', 6, 2022, '2022-09-13 00:00:00'),
(2201, 4, 71, '93.45000', 6, 2022, '2022-09-13 00:00:00'),
(2202, 4, 72, '0.00000', 6, 2022, '2022-09-13 00:00:00'),
(2203, 4, 73, '0.00000', 6, 2022, '2022-09-13 00:00:00'),
(2204, 4, 74, '0.00000', 6, 2022, '2022-09-13 00:00:00'),
(2205, 4, 75, '0.00000', 6, 2022, '2022-09-13 00:00:00'),
(2206, 4, 76, '1.00000', 6, 2022, '2022-09-13 00:00:00'),
(2207, 4, 77, '1.00000', 6, 2022, '2022-09-13 00:00:00'),
(2208, 4, 78, '0.00000', 6, 2022, '2022-09-13 00:00:00'),
(2209, 4, 79, '0.00000', 6, 2022, '2022-09-13 00:00:00'),
(2210, 4, 80, '2.00000', 6, 2022, '2022-09-13 00:00:00'),
(2211, 4, 81, '1.00000', 6, 2022, '2022-09-13 00:00:00'),
(2212, 4, 82, '0.00000', 6, 2022, '2022-09-13 00:00:00'),
(2213, 4, 83, '0.00000', 6, 2022, '2022-09-13 00:00:00'),
(2214, 4, 84, '107.00000', 6, 2022, '2022-09-13 00:00:00'),
(2215, 4, 85, '100.00000', 6, 2022, '2022-09-13 00:00:00'),
(2216, 4, 86, '100.00000', 6, 2022, '2022-09-13 00:00:00'),
(2217, 4, 87, '100.00000', 6, 2022, '2022-09-13 00:00:00'),
(2218, 4, 88, '100.00000', 6, 2022, '2022-09-13 00:00:00'),
(2219, 4, 89, '17.00000', 6, 2022, '2022-09-13 00:00:00'),
(2220, 4, 90, '90640550.65000', 6, 2022, '2022-09-13 00:00:00'),
(2221, 4, 91, '259.90000', 6, 2022, '2022-09-13 00:00:00'),
(2222, 4, 8, '7269527943.79000', 7, 2022, '2022-09-13 00:00:00'),
(2223, 4, 9, '1810090816.10000', 7, 2022, '2022-09-13 00:00:00'),
(2224, 4, 10, '1810489367.52000', 7, 2022, '2022-09-13 00:00:00'),
(2225, 4, 11, '1992271666.47000', 7, 2022, '2022-09-13 00:00:00'),
(2226, 4, 12, '418710549.97000', 7, 2022, '2022-09-13 00:00:00'),
(2227, 4, 13, '9802412808.16000', 7, 2022, '2022-09-13 00:00:00'),
(2228, 4, 14, '1771542527.39000', 7, 2022, '2022-09-13 00:00:00'),
(2229, 4, 15, '2417141696.74000', 7, 2022, '2022-09-13 00:00:00'),
(2230, 4, 16, '3249195544.27000', 7, 2022, '2022-09-13 00:00:00'),
(2231, 4, 17, '547102303.99000', 7, 2022, '2022-09-13 00:00:00'),
(2232, 4, 18, '11445604800.37000', 7, 2022, '2022-09-13 00:00:00'),
(2233, 4, 19, '1347344410.30000', 7, 2022, '2022-09-13 00:00:00'),
(2234, 4, 20, '4698704183.71000', 7, 2022, '2022-09-13 00:00:00'),
(2235, 4, 21, '3064996052.08000', 7, 2022, '2022-09-13 00:00:00'),
(2236, 4, 22, '668278874.29000', 7, 2022, '2022-09-13 00:00:00'),
(2237, 4, 23, '603026.00000', 7, 2022, '2022-09-13 00:00:00'),
(2238, 4, 24, '318019.00000', 7, 2022, '2022-09-13 00:00:00'),
(2239, 4, 25, '583447.00000', 7, 2022, '2022-09-13 00:00:00'),
(2240, 4, 26, '652861.00000', 7, 2022, '2022-09-13 00:00:00'),
(2241, 4, 27, '5879.90000', 7, 2022, '2022-09-13 00:00:00'),
(2242, 4, 28, '7787.62000', 7, 2022, '2022-09-13 00:00:00'),
(2243, 4, 29, '3451.18000', 7, 2022, '2022-09-13 00:00:00'),
(2244, 4, 30, '2722.10000', 7, 2022, '2022-09-13 00:00:00'),
(2245, 4, 31, '4267.11000', 7, 2022, '2022-09-13 00:00:00'),
(2246, 4, 32, '1545.82000', 7, 2022, '2022-09-13 00:00:00'),
(2247, 4, 33, '49241329821.40000', 7, 2022, '2022-09-13 00:00:00'),
(2248, 4, 34, '42006974894.00000', 7, 2022, '2022-09-13 00:00:00'),
(2249, 4, 35, '52958252249.00000', 7, 2022, '2022-09-13 00:00:00'),
(2250, 4, 36, '11309931304.76000', 7, 2022, '2022-09-13 00:00:00'),
(2251, 4, 37, '9128162465.00000', 7, 2022, '2022-09-13 00:00:00'),
(2252, 4, 38, '12772296160.34000', 7, 2022, '2022-09-13 00:00:00'),
(2253, 4, 39, '12909887026.90000', 7, 2022, '2022-09-13 00:00:00'),
(2254, 4, 40, '11273424933.00000', 7, 2022, '2022-09-13 00:00:00'),
(2255, 4, 41, '16962709998.00000', 7, 2022, '2022-09-13 00:00:00'),
(2256, 4, 42, '2425283790.40000', 7, 2022, '2022-09-13 00:00:00'),
(2257, 4, 43, '2207193164.00000', 7, 2022, '2022-09-13 00:00:00'),
(2258, 4, 44, '2173565151.00000', 7, 2022, '2022-09-13 00:00:00'),
(2259, 4, 45, '1310316952.18000', 7, 2022, '2022-09-13 00:00:00'),
(2260, 4, 46, '1831894203.19000', 7, 2022, '2022-09-13 00:00:00'),
(2261, 4, 47, '24188478.88000', 7, 2022, '2022-09-13 00:00:00'),
(2262, 4, 48, '0.00000', 7, 2022, '2022-09-13 00:00:00'),
(2263, 4, 49, '12094239.44000', 7, 2022, '2022-09-13 00:00:00'),
(2264, 4, 50, '102.00000', 7, 2022, '2022-09-13 00:00:00'),
(2265, 4, 51, '10.00000', 7, 2022, '2022-09-13 00:00:00'),
(2266, 4, 52, '51.00000', 7, 2022, '2022-09-13 00:00:00'),
(2267, 4, 53, '41.00000', 7, 2022, '2022-09-13 00:00:00'),
(2268, 4, 54, '41.00000', 7, 2022, '2022-09-13 00:00:00'),
(2269, 4, 55, '0.00000', 7, 2022, '2022-09-13 00:00:00'),
(2270, 4, 56, '1.00000', 7, 2022, '2022-09-13 00:00:00'),
(2271, 4, 57, '48.00000', 7, 2022, '2022-09-13 00:00:00'),
(2272, 4, 58, '0.00000', 7, 2022, '2022-09-13 00:00:00'),
(2273, 4, 59, '1.00000', 7, 2022, '2022-09-13 00:00:00'),
(2274, 4, 60, '2.00000', 7, 2022, '2022-09-13 00:00:00'),
(2275, 4, 61, '11.00000', 7, 2022, '2022-09-13 00:00:00'),
(2276, 4, 62, '90.00000', 7, 2022, '2022-09-13 00:00:00'),
(2277, 4, 63, '100.00000', 7, 2022, '2022-09-13 00:00:00'),
(2278, 4, 64, '81.08000', 7, 2022, '2022-09-13 00:00:00'),
(2279, 4, 65, '103.43000', 7, 2022, '2022-09-13 00:00:00'),
(2280, 4, 66, '15.33000', 7, 2022, '2022-09-13 00:00:00'),
(2281, 4, 67, '0.00000', 7, 2022, '2022-09-13 00:00:00'),
(2282, 4, 68, '16.35000', 7, 2022, '2022-09-13 00:00:00'),
(2283, 4, 69, '0.00000', 7, 2022, '2022-09-13 00:00:00'),
(2284, 4, 70, '96.00000', 7, 2022, '2022-09-13 00:00:00'),
(2285, 4, 71, '89.37000', 7, 2022, '2022-09-13 00:00:00'),
(2286, 4, 72, '0.00000', 7, 2022, '2022-09-13 00:00:00'),
(2287, 4, 73, '0.00000', 7, 2022, '2022-09-13 00:00:00'),
(2288, 4, 74, '0.00000', 7, 2022, '2022-09-13 00:00:00'),
(2289, 4, 75, '0.00000', 7, 2022, '2022-09-13 00:00:00'),
(2290, 4, 76, '31.00000', 7, 2022, '2022-09-13 00:00:00'),
(2291, 4, 77, '1.00000', 7, 2022, '2022-09-13 00:00:00'),
(2292, 4, 78, '0.00000', 7, 2022, '2022-09-13 00:00:00'),
(2293, 4, 79, '0.00000', 7, 2022, '2022-09-13 00:00:00'),
(2294, 4, 80, '0.00000', 7, 2022, '2022-09-13 00:00:00'),
(2295, 4, 81, '2.00000', 7, 2022, '2022-09-13 00:00:00'),
(2296, 4, 82, '2.00000', 7, 2022, '2022-09-13 00:00:00'),
(2297, 4, 83, '2.00000', 7, 2022, '2022-09-13 00:00:00'),
(2298, 4, 84, '100.00000', 7, 2022, '2022-09-13 00:00:00'),
(2299, 4, 85, '100.00000', 7, 2022, '2022-09-13 00:00:00'),
(2300, 4, 86, '100.00000', 7, 2022, '2022-09-13 00:00:00'),
(2301, 4, 87, '100.00000', 7, 2022, '2022-09-13 00:00:00'),
(2302, 4, 88, '100.00000', 7, 2022, '2022-09-13 00:00:00'),
(2303, 4, 89, '10.00000', 7, 2022, '2022-09-13 00:00:00'),
(2304, 4, 90, '90640550.65000', 7, 2022, '2022-09-13 00:00:00'),
(2305, 4, 91, '259.90000', 7, 2022, '2022-09-13 00:00:00'),
(2306, 4, 8, '9889126745.51000', 8, 2022, '2022-09-13 00:00:00'),
(2307, 4, 9, '2651011648.18000', 8, 2022, '2022-09-13 00:00:00'),
(2308, 4, 10, '2336507450.76000', 8, 2022, '2022-09-13 00:00:00'),
(2309, 4, 11, '2677408117.56000', 8, 2022, '2022-09-13 00:00:00'),
(2310, 4, 12, '534892725.67000', 8, 2022, '2022-09-13 00:00:00'),
(2311, 4, 13, '11305007411.47000', 8, 2022, '2022-09-13 00:00:00'),
(2312, 4, 14, '2442888552.31000', 8, 2022, '2022-09-13 00:00:00'),
(2313, 4, 15, '2726017885.73000', 8, 2022, '2022-09-13 00:00:00'),
(2314, 4, 16, '3711507640.08000', 8, 2022, '2022-09-13 00:00:00'),
(2315, 4, 17, '559268152.01000', 8, 2022, '2022-09-13 00:00:00'),
(2316, 4, 18, '12549918869.12000', 8, 2022, '2022-09-13 00:00:00'),
(2317, 4, 19, '2841094627.09000', 8, 2022, '2022-09-13 00:00:00'),
(2318, 4, 20, '3392988471.70000', 8, 2022, '2022-09-13 00:00:00'),
(2319, 4, 21, '3940407032.68000', 8, 2022, '2022-09-13 00:00:00'),
(2320, 4, 22, '681854759.12000', 8, 2022, '2022-09-13 00:00:00'),
(2321, 4, 23, '651131.00000', 8, 2022, '2022-09-13 00:00:00'),
(2322, 4, 24, '374059.00000', 8, 2022, '2022-09-13 00:00:00'),
(2323, 4, 25, '601495.00000', 8, 2022, '2022-09-13 00:00:00'),
(2324, 4, 26, '670152.00000', 8, 2022, '2022-09-13 00:00:00'),
(2325, 4, 27, '5982.57000', 8, 2022, '2022-09-13 00:00:00'),
(2326, 4, 28, '7741.61000', 8, 2022, '2022-09-13 00:00:00'),
(2327, 4, 29, '3064.00000', 8, 2022, '2022-09-13 00:00:00'),
(2328, 4, 30, '2753.13000', 8, 2022, '2022-09-13 00:00:00'),
(2329, 4, 31, '4308.33000', 8, 2022, '2022-09-13 00:00:00'),
(2330, 4, 32, '1347.00000', 8, 2022, '2022-09-13 00:00:00'),
(2331, 4, 33, '49615999068.07000', 8, 2022, '2022-09-13 00:00:00'),
(2332, 4, 34, '48600598654.00000', 8, 2022, '2022-09-13 00:00:00'),
(2333, 4, 35, '48430361085.60000', 8, 2022, '2022-09-13 00:00:00'),
(2334, 4, 36, '11485058544.33000', 8, 2022, '2022-09-13 00:00:00'),
(2335, 4, 37, '10083685400.00000', 8, 2022, '2022-09-13 00:00:00'),
(2336, 4, 38, '10033137190.89000', 8, 2022, '2022-09-13 00:00:00'),
(2337, 4, 39, '12985312261.53000', 8, 2022, '2022-09-13 00:00:00'),
(2338, 4, 40, '14170877875.00000', 8, 2022, '2022-09-13 00:00:00'),
(2339, 4, 41, '15669958524.00000', 8, 2022, '2022-09-13 00:00:00'),
(2340, 4, 42, '2330366729.60000', 8, 2022, '2022-09-13 00:00:00'),
(2341, 4, 43, '2326389183.00000', 8, 2022, '2022-09-13 00:00:00'),
(2342, 4, 44, '2276909864.00000', 8, 2022, '2022-09-13 00:00:00'),
(2343, 4, 45, '1574378263.18000', 8, 2022, '2022-09-13 00:00:00'),
(2344, 4, 46, '2282524755.75000', 8, 2022, '2022-09-13 00:00:00'),
(2345, 4, 47, '24188478.88000', 8, 2022, '2022-09-13 00:00:00'),
(2346, 4, 48, '7451453.00000', 8, 2022, '2022-09-13 00:00:00'),
(2347, 4, 49, '12094239.44000', 8, 2022, '2022-09-13 00:00:00'),
(2348, 4, 50, '102.00000', 8, 2022, '2022-09-13 00:00:00'),
(2349, 4, 51, '30.90000', 8, 2022, '2022-09-13 00:00:00'),
(2350, 4, 52, '51.00000', 8, 2022, '2022-09-13 00:00:00'),
(2351, 4, 53, '37.00000', 8, 2022, '2022-09-13 00:00:00'),
(2352, 4, 54, '37.00000', 8, 2022, '2022-09-13 00:00:00'),
(2353, 4, 55, '0.00000', 8, 2022, '2022-09-13 00:00:00'),
(2354, 4, 56, '3.00000', 8, 2022, '2022-09-13 00:00:00'),
(2355, 4, 57, '53.00000', 8, 2022, '2022-09-13 00:00:00'),
(2356, 4, 58, '0.00000', 8, 2022, '2022-09-13 00:00:00'),
(2357, 4, 59, '2.00000', 8, 2022, '2022-09-13 00:00:00'),
(2358, 4, 60, '6.00000', 8, 2022, '2022-09-13 00:00:00'),
(2359, 4, 61, '10.00000', 8, 2022, '2022-09-13 00:00:00'),
(2360, 4, 62, '90.00000', 8, 2022, '2022-09-13 00:00:00'),
(2361, 4, 63, '100.00000', 8, 2022, '2022-09-13 00:00:00'),
(2362, 4, 64, '83.85000', 8, 2022, '2022-09-13 00:00:00'),
(2363, 4, 65, '103.48000', 8, 2022, '2022-09-13 00:00:00'),
(2364, 4, 66, '15.61000', 8, 2022, '2022-09-13 00:00:00'),
(2365, 4, 67, '0.00000', 8, 2022, '2022-09-13 00:00:00'),
(2366, 4, 68, '15.82000', 8, 2022, '2022-09-13 00:00:00'),
(2367, 4, 69, '0.00000', 8, 2022, '2022-09-13 00:00:00'),
(2368, 4, 70, '98.00000', 8, 2022, '2022-09-13 00:00:00'),
(2369, 4, 71, '94.50000', 8, 2022, '2022-09-13 00:00:00'),
(2370, 4, 72, '0.00000', 8, 2022, '2022-09-13 00:00:00'),
(2371, 4, 73, '0.00000', 8, 2022, '2022-09-13 00:00:00'),
(2372, 4, 74, '0.00000', 8, 2022, '2022-09-13 00:00:00'),
(2373, 4, 75, '0.00000', 8, 2022, '2022-09-13 00:00:00'),
(2374, 4, 76, '33.00000', 8, 2022, '2022-09-13 00:00:00'),
(2375, 4, 77, '2.00000', 8, 2022, '2022-09-13 00:00:00'),
(2376, 4, 78, '0.00000', 8, 2022, '2022-09-13 00:00:00'),
(2377, 4, 79, '0.00000', 8, 2022, '2022-09-13 00:00:00'),
(2378, 4, 80, '0.00000', 8, 2022, '2022-09-13 00:00:00'),
(2379, 4, 81, '0.00000', 8, 2022, '2022-09-13 00:00:00'),
(2380, 4, 82, '2.00000', 8, 2022, '2022-09-13 00:00:00'),
(2381, 4, 83, '0.00000', 8, 2022, '2022-09-13 00:00:00'),
(2382, 4, 84, '100.00000', 8, 2022, '2022-09-13 00:00:00'),
(2383, 4, 85, '100.00000', 8, 2022, '2022-09-13 00:00:00'),
(2384, 4, 86, '100.00000', 8, 2022, '2022-09-13 00:00:00'),
(2385, 4, 87, '100.00000', 8, 2022, '2022-09-13 00:00:00'),
(2386, 4, 88, '100.00000', 8, 2022, '2022-09-13 00:00:00'),
(2387, 4, 89, '5.00000', 8, 2022, '2022-09-13 00:00:00'),
(2388, 4, 90, '90640550.65000', 8, 2022, '2022-09-13 00:00:00'),
(2389, 4, 91, '259.90000', 8, 2022, '2022-09-13 00:00:00'),
(2474, 4, 8, '10479825353.79000', 9, 2022, '2022-10-07 00:00:00'),
(2475, 4, 9, '2687855109.87000', 9, 2022, '2022-10-07 00:00:00'),
(2476, 4, 10, '2381394976.31000', 9, 2022, '2022-10-07 00:00:00'),
(2477, 4, 11, '2965822590.04000', 9, 2022, '2022-10-07 00:00:00'),
(2478, 4, 12, '550246594.49000', 9, 2022, '2022-10-07 00:00:00'),
(2479, 4, 13, '10302660097.29000', 9, 2022, '2022-10-07 00:00:00'),
(2480, 4, 14, '2390392316.79000', 9, 2022, '2022-10-07 00:00:00'),
(2481, 4, 15, '2383169261.50000', 9, 2022, '2022-10-07 00:00:00'),
(2482, 4, 16, '3140626157.07000', 9, 2022, '2022-10-07 00:00:00'),
(2483, 4, 17, '521779924.99000', 9, 2022, '2022-10-07 00:00:00'),
(2484, 4, 18, '10035816916.97000', 9, 2022, '2022-10-07 00:00:00'),
(2485, 4, 19, '2469127831.73000', 9, 2022, '2022-10-07 00:00:00'),
(2486, 4, 20, '2146961150.20000', 9, 2022, '2022-10-07 00:00:00'),
(2487, 4, 21, '3146541047.51000', 9, 2022, '2022-10-07 00:00:00'),
(2488, 4, 22, '583571328.50000', 9, 2022, '2022-10-07 00:00:00'),
(2489, 4, 23, '637698.00000', 9, 2022, '2022-10-07 00:00:00'),
(2490, 4, 24, '339434.00000', 9, 2022, '2022-10-07 00:00:00'),
(2491, 4, 25, '541651.00000', 9, 2022, '2022-10-07 00:00:00'),
(2492, 4, 26, '517727.00000', 9, 2022, '2022-10-07 00:00:00'),
(2493, 4, 27, '5303.73000', 9, 2022, '2022-10-07 00:00:00'),
(2494, 4, 28, '7354.67000', 9, 2022, '2022-10-07 00:00:00'),
(2495, 4, 29, '5433.18000', 9, 2022, '2022-10-07 00:00:00'),
(2496, 4, 30, '2607.30000', 9, 2022, '2022-10-07 00:00:00'),
(2497, 4, 31, '4172.03000', 9, 2022, '2022-10-07 00:00:00'),
(2498, 4, 32, '2667.94000', 9, 2022, '2022-10-07 00:00:00'),
(2499, 4, 33, '50761645530.64000', 9, 2022, '2022-10-07 00:00:00'),
(2500, 4, 34, '50522428366.00000', 9, 2022, '2022-10-07 00:00:00'),
(2501, 4, 35, '44590785247.00000', 9, 2022, '2022-10-07 00:00:00'),
(2502, 4, 36, '12120293244.57000', 9, 2022, '2022-10-07 00:00:00'),
(2503, 4, 37, '10019478134.00000', 9, 2022, '2022-10-07 00:00:00'),
(2504, 4, 38, '10706405693.75000', 9, 2022, '2022-10-07 00:00:00'),
(2505, 4, 39, '13193140719.21000', 9, 2022, '2022-10-07 00:00:00'),
(2506, 4, 40, '16713077439.00000', 9, 2022, '2022-10-07 00:00:00'),
(2507, 4, 41, '13311471606.00000', 9, 2022, '2022-10-07 00:00:00'),
(2508, 4, 42, '2325392477.20000', 9, 2022, '2022-10-07 00:00:00'),
(2509, 4, 43, '2122384365.00000', 9, 2022, '2022-10-07 00:00:00'),
(2510, 4, 44, '1973119720.00000', 9, 2022, '2022-10-07 00:00:00'),
(2511, 4, 45, '1575320168.18000', 9, 2022, '2022-10-07 00:00:00'),
(2512, 4, 46, '1706674985.29000', 9, 2022, '2022-10-07 00:00:00'),
(2513, 4, 47, '24188478.88000', 9, 2022, '2022-10-07 00:00:00'),
(2514, 4, 48, '493234.00000', 9, 2022, '2022-10-07 00:00:00'),
(2515, 4, 49, '12094239.44000', 9, 2022, '2022-10-07 00:00:00'),
(2516, 4, 50, '102.00000', 9, 2022, '2022-10-07 00:00:00'),
(2517, 4, 51, '6.00000', 9, 2022, '2022-10-07 00:00:00'),
(2518, 4, 52, '51.00000', 9, 2022, '2022-10-07 00:00:00'),
(2519, 4, 53, '41.00000', 9, 2022, '2022-10-07 00:00:00'),
(2520, 4, 54, '41.00000', 9, 2022, '2022-10-07 00:00:00'),
(2521, 4, 55, '0.00000', 9, 2022, '2022-10-07 00:00:00'),
(2522, 4, 56, '0.00000', 9, 2022, '2022-10-07 00:00:00'),
(2523, 4, 57, '46.00000', 9, 2022, '2022-10-07 00:00:00'),
(2524, 4, 58, '0.00000', 9, 2022, '2022-10-07 00:00:00'),
(2525, 4, 59, '1.00000', 9, 2022, '2022-10-07 00:00:00'),
(2526, 4, 60, '2.00000', 9, 2022, '2022-10-07 00:00:00'),
(2527, 4, 61, '6.00000', 9, 2022, '2022-10-07 00:00:00'),
(2528, 4, 62, '90.30000', 9, 2022, '2022-10-07 00:00:00'),
(2529, 4, 63, '100.00000', 9, 2022, '2022-10-07 00:00:00'),
(2530, 4, 64, '90.40000', 9, 2022, '2022-10-07 00:00:00'),
(2531, 4, 65, '99.58000', 9, 2022, '2022-10-07 00:00:00'),
(2532, 4, 66, '15.56000', 9, 2022, '2022-10-07 00:00:00'),
(2533, 4, 67, '0.00000', 9, 2022, '2022-10-07 00:00:00'),
(2534, 4, 68, '15.64000', 9, 2022, '2022-10-07 00:00:00'),
(2535, 4, 69, '0.00000', 9, 2022, '2022-10-07 00:00:00'),
(2536, 4, 70, '99.84000', 9, 2022, '2022-10-07 00:00:00'),
(2537, 4, 71, '100.86000', 9, 2022, '2022-10-07 00:00:00'),
(2538, 4, 72, '0.00000', 9, 2022, '2022-10-07 00:00:00'),
(2539, 4, 73, '0.00000', 9, 2022, '2022-10-07 00:00:00'),
(2540, 4, 74, '0.00000', 9, 2022, '2022-10-07 00:00:00'),
(2541, 4, 75, '0.00000', 9, 2022, '2022-10-07 00:00:00'),
(2543, 4, 77, '30.00000', 9, 2022, '2022-10-07 00:00:00'),
(2544, 4, 78, '0.00000', 9, 2022, '2022-10-07 00:00:00'),
(2545, 4, 79, '0.00000', 9, 2022, '2022-10-07 00:00:00'),
(2546, 4, 80, '0.00000', 9, 2022, '2022-10-07 00:00:00'),
(2547, 4, 81, '1.00000', 9, 2022, '2022-10-07 00:00:00'),
(2548, 4, 82, '0.00000', 9, 2022, '2022-10-07 00:00:00'),
(2549, 4, 83, '0.00000', 9, 2022, '2022-10-07 00:00:00'),
(2550, 4, 84, '88.00000', 9, 2022, '2022-10-07 00:00:00'),
(2551, 4, 85, '100.00000', 9, 2022, '2022-10-07 00:00:00'),
(2552, 4, 86, '100.00000', 9, 2022, '2022-10-07 00:00:00'),
(2553, 4, 87, '160.00000', 9, 2022, '2022-10-07 00:00:00'),
(2554, 4, 88, '103.00000', 9, 2022, '2022-10-07 00:00:00'),
(2555, 4, 89, '7.00000', 9, 2022, '2022-10-07 00:00:00'),
(2556, 4, 90, '90640550.65000', 9, 2022, '2022-10-07 00:00:00'),
(2557, 4, 91, '259.90000', 9, 2022, '2022-10-07 00:00:00'),
(2558, 4, 76, '35.00000', 9, 2022, '2022-10-11 04:24:33'),
(2560, 4, 8, '11244357391.24000', 10, 2022, '2022-11-07 00:00:00'),
(2561, 4, 9, '3317437917.33000', 10, 2022, '2022-11-07 00:00:00'),
(2562, 4, 10, '2653164530.03000', 10, 2022, '2022-11-07 00:00:00'),
(2563, 4, 11, '2877516135.03000', 10, 2022, '2022-11-07 00:00:00'),
(2564, 4, 12, '605294530.44000', 10, 2022, '2022-11-07 00:00:00'),
(2565, 4, 13, '10674541678.95000', 10, 2022, '2022-11-07 00:00:00'),
(2566, 4, 14, '3025662606.80000', 10, 2022, '2022-11-07 00:00:00'),
(2567, 4, 15, '2713083652.39000', 10, 2022, '2022-11-07 00:00:00'),
(2568, 4, 16, '2686058662.65000', 10, 2022, '2022-11-07 00:00:00'),
(2569, 4, 17, '466191704.07000', 10, 2022, '2022-11-07 00:00:00'),
(2570, 4, 18, '13760110119.13000', 10, 2022, '2022-11-07 00:00:00'),
(2571, 4, 19, '3275623096.14000', 10, 2022, '2022-11-07 00:00:00'),
(2572, 4, 20, '2713717040.94000', 10, 2022, '2022-11-07 00:00:00'),
(2573, 4, 21, '5402178707.07000', 10, 2022, '2022-11-07 00:00:00'),
(2574, 4, 22, '559267524.89000', 10, 2022, '2022-11-07 00:00:00'),
(2575, 4, 23, '762611.00000', 10, 2022, '2022-11-07 00:00:00'),
(2576, 4, 24, '297683.00000', 10, 2022, '2022-11-07 00:00:00'),
(2577, 4, 25, '526981.00000', 10, 2022, '2022-11-07 00:00:00'),
(2578, 4, 26, '625869.00000', 10, 2022, '2022-11-07 00:00:00'),
(2579, 4, 27, '6127.14000', 10, 2022, '2022-11-07 00:00:00'),
(2580, 4, 28, '8698.48000', 10, 2022, '2022-11-07 00:00:00'),
(2581, 4, 29, '4215.56000', 10, 2022, '2022-11-07 00:00:00'),
(2582, 4, 30, '2763.69000', 10, 2022, '2022-11-07 00:00:00'),
(2583, 4, 31, '4814.72000', 10, 2022, '2022-11-07 00:00:00'),
(2584, 4, 32, '2367.54000', 10, 2022, '2022-11-07 00:00:00'),
(2585, 4, 33, '49274307719.43000', 10, 2022, '2022-11-07 00:00:00'),
(2586, 4, 34, '50432999279.00000', 10, 2022, '2022-11-07 00:00:00'),
(2587, 4, 35, '39986752620.80000', 10, 2022, '2022-11-07 00:00:00'),
(2588, 4, 36, '11535865286.49000', 10, 2022, '2022-11-07 00:00:00'),
(2589, 4, 37, '10496360338.00000', 10, 2022, '2022-11-07 00:00:00'),
(2590, 4, 38, '9087568843.97000', 10, 2022, '2022-11-07 00:00:00'),
(2591, 4, 39, '12853465462.07000', 10, 2022, '2022-11-07 00:00:00'),
(2592, 4, 40, '16340338505.00000', 10, 2022, '2022-11-07 00:00:00'),
(2593, 4, 41, '10686094605.00000', 10, 2022, '2022-11-07 00:00:00'),
(2594, 4, 42, '2325392477.20000', 10, 2022, '2022-11-07 00:00:00'),
(2595, 4, 43, '2177577879.00000', 10, 2022, '2022-11-07 00:00:00'),
(2596, 4, 44, '1948411947.00000', 10, 2022, '2022-11-07 00:00:00'),
(2597, 4, 45, '1700000000.00000', 10, 2022, '2022-11-07 00:00:00'),
(2598, 4, 46, '1745220351.74000', 10, 2022, '2022-11-07 00:00:00'),
(2599, 4, 47, '24188478.88000', 10, 2022, '2022-11-07 00:00:00'),
(2600, 4, 48, '3309555.00000', 10, 2022, '2022-11-07 00:00:00'),
(2601, 4, 49, '12094239.44000', 10, 2022, '2022-11-07 00:00:00'),
(2602, 4, 50, '102.00000', 10, 2022, '2022-11-07 00:00:00'),
(2603, 4, 51, '17.58000', 10, 2022, '2022-11-07 00:00:00'),
(2604, 4, 52, '51.00000', 10, 2022, '2022-11-07 00:00:00'),
(2605, 4, 53, '44.00000', 10, 2022, '2022-11-07 00:00:00'),
(2606, 4, 54, '44.00000', 10, 2022, '2022-11-07 00:00:00'),
(2607, 4, 55, '0.00000', 10, 2022, '2022-11-07 00:00:00'),
(2608, 4, 56, '2.00000', 10, 2022, '2022-11-07 00:00:00'),
(2609, 4, 57, '39.00000', 10, 2022, '2022-11-07 00:00:00'),
(2610, 4, 58, '0.00000', 10, 2022, '2022-11-07 00:00:00'),
(2611, 4, 59, '0.00000', 10, 2022, '2022-11-07 00:00:00'),
(2612, 4, 60, '6.00000', 10, 2022, '2022-11-07 00:00:00'),
(2613, 4, 61, '6.00000', 10, 2022, '2022-11-07 00:00:00'),
(2614, 4, 62, '91.40000', 10, 2022, '2022-11-07 00:00:00'),
(2615, 4, 63, '100.40000', 10, 2022, '2022-11-07 00:00:00'),
(2616, 4, 64, '88.60000', 10, 2022, '2022-11-07 00:00:00'),
(2617, 4, 65, '99.58000', 10, 2022, '2022-11-07 00:00:00'),
(2618, 4, 66, '15.37000', 10, 2022, '2022-11-07 00:00:00'),
(2619, 4, 67, '0.00000', 10, 2022, '2022-11-07 00:00:00'),
(2620, 4, 68, '15.73000', 10, 2022, '2022-11-07 00:00:00'),
(2621, 4, 69, '0.00000', 10, 2022, '2022-11-07 00:00:00'),
(2622, 4, 70, '99.14000', 10, 2022, '2022-11-07 00:00:00'),
(2623, 4, 71, '102.28000', 10, 2022, '2022-11-07 00:00:00'),
(2624, 4, 72, '0.00000', 10, 2022, '2022-11-07 00:00:00'),
(2625, 4, 73, '0.00000', 10, 2022, '2022-11-07 00:00:00'),
(2626, 4, 74, '0.00000', 10, 2022, '2022-11-07 00:00:00'),
(2627, 4, 75, '0.00000', 10, 2022, '2022-11-07 00:00:00'),
(2628, 4, 76, '4.00000', 10, 2022, '2022-11-07 00:00:00'),
(2629, 4, 77, '1.00000', 10, 2022, '2022-11-07 00:00:00'),
(2630, 4, 78, '0.00000', 10, 2022, '2022-11-07 00:00:00'),
(2631, 4, 79, '0.00000', 10, 2022, '2022-11-07 00:00:00'),
(2632, 4, 80, '0.00000', 10, 2022, '2022-11-07 00:00:00'),
(2633, 4, 81, '0.00000', 10, 2022, '2022-11-07 00:00:00'),
(2634, 4, 82, '1.00000', 10, 2022, '2022-11-07 00:00:00'),
(2635, 4, 83, '0.00000', 10, 2022, '2022-11-07 00:00:00'),
(2636, 4, 84, '100.00000', 10, 2022, '2022-11-07 00:00:00'),
(2637, 4, 85, '100.00000', 10, 2022, '2022-11-07 00:00:00'),
(2638, 4, 86, '103.00000', 10, 2022, '2022-11-07 00:00:00'),
(2639, 4, 87, '166.67000', 10, 2022, '2022-11-07 00:00:00'),
(2640, 4, 88, '109.10000', 10, 2022, '2022-11-07 00:00:00'),
(2641, 4, 89, '7.00000', 10, 2022, '2022-11-07 00:00:00'),
(2642, 4, 90, '90640550.65000', 10, 2022, '2022-11-07 00:00:00'),
(2643, 4, 91, '259.90000', 10, 2022, '2022-11-07 00:00:00'),
(2644, 4, 8, '11923288719.22000', 11, 2022, '2022-12-08 00:00:00'),
(2645, 4, 9, '3117633657.41000', 11, 2022, '2022-12-08 00:00:00'),
(2646, 4, 10, '3158010658.17000', 11, 2022, '2022-12-08 00:00:00'),
(2647, 4, 11, '3171024435.72000', 11, 2022, '2022-12-08 00:00:00'),
(2648, 4, 12, '631795226.80000', 11, 2022, '2022-12-08 00:00:00'),
(2649, 4, 13, '16325979565.81000', 11, 2022, '2022-12-08 00:00:00'),
(2650, 4, 14, '3248864561.28000', 11, 2022, '2022-12-08 00:00:00'),
(2651, 4, 15, '3549286109.30000', 11, 2022, '2022-12-08 00:00:00'),
(2652, 4, 16, '5969196749.62000', 11, 2022, '2022-12-08 00:00:00'),
(2653, 4, 17, '797311217.88000', 11, 2022, '2022-12-08 00:00:00'),
(2654, 4, 18, '14201501280.34000', 11, 2022, '2022-12-08 00:00:00'),
(2655, 4, 19, '2391413609.71000', 11, 2022, '2022-12-08 00:00:00'),
(2656, 4, 20, '3084907712.98000', 11, 2022, '2022-12-08 00:00:00'),
(2657, 4, 21, '6353902960.47000', 11, 2022, '2022-12-08 00:00:00'),
(2658, 4, 22, '545914446.80000', 11, 2022, '2022-12-08 00:00:00'),
(2659, 4, 23, '644096.00000', 11, 2022, '2022-12-08 00:00:00'),
(2660, 4, 24, '301955.00000', 11, 2022, '2022-12-08 00:00:00'),
(2661, 4, 25, '438026.00000', 11, 2022, '2022-12-08 00:00:00'),
(2662, 4, 26, '764473.00000', 11, 2022, '2022-12-08 00:00:00'),
(2663, 4, 27, '5398.79000', 11, 2022, '2022-12-08 00:00:00'),
(2664, 4, 28, '7465.07000', 11, 2022, '2022-12-08 00:00:00'),
(2665, 4, 29, '432.32000', 11, 2022, '2022-12-08 00:00:00'),
(2666, 4, 30, '2230.08000', 11, 2022, '2022-12-08 00:00:00'),
(2667, 4, 31, '4182.04000', 11, 2022, '2022-12-08 00:00:00'),
(2668, 4, 32, '74.11000', 11, 2022, '2022-12-08 00:00:00'),
(2669, 4, 33, '49005312154.46000', 11, 2022, '2022-12-08 00:00:00'),
(2670, 4, 34, '62074826313.00000', 11, 2022, '2022-12-08 00:00:00'),
(2671, 4, 35, '42904248687.40000', 11, 2022, '2022-12-08 00:00:00'),
(2672, 4, 36, '11699666358.76000', 11, 2022, '2022-12-08 00:00:00'),
(2673, 4, 37, '12154101870.00000', 11, 2022, '2022-12-08 00:00:00'),
(2674, 4, 38, '12823329878.49000', 11, 2022, '2022-12-08 00:00:00'),
(2675, 4, 39, '12737328960.87000', 11, 2022, '2022-12-08 00:00:00'),
(2676, 4, 40, '19485104775.00000', 11, 2022, '2022-12-08 00:00:00'),
(2677, 4, 41, '8788040188.00000', 11, 2022, '2022-12-08 00:00:00'),
(2678, 4, 42, '2325392477.20000', 11, 2022, '2022-12-08 00:00:00'),
(2679, 4, 43, '2030066541.00000', 11, 2022, '2022-12-08 00:00:00'),
(2680, 4, 44, '1961157479.00000', 11, 2022, '2022-12-08 00:00:00'),
(2681, 4, 45, '1700000000.00000', 11, 2022, '2022-12-08 00:00:00'),
(2682, 4, 46, '442962899.75581', 11, 2022, '2022-12-08 00:00:00'),
(2683, 4, 47, '24188478.88000', 11, 2022, '2022-12-08 00:00:00'),
(2684, 4, 48, '1192867.00000', 11, 2022, '2022-12-08 00:00:00'),
(2685, 4, 49, '12094239.44000', 11, 2022, '2022-12-08 00:00:00'),
(2686, 4, 50, '102.00000', 11, 2022, '2022-12-08 00:00:00'),
(2687, 4, 51, '13.00000', 11, 2022, '2022-12-08 00:00:00'),
(2688, 4, 52, '51.00000', 11, 2022, '2022-12-08 00:00:00'),
(2689, 4, 53, '39.00000', 11, 2022, '2022-12-08 00:00:00'),
(2690, 4, 54, '39.00000', 11, 2022, '2022-12-08 00:00:00'),
(2691, 4, 55, '0.00000', 11, 2022, '2022-12-08 00:00:00'),
(2692, 4, 56, '0.00000', 11, 2022, '2022-12-08 00:00:00'),
(2693, 4, 57, '50.00000', 11, 2022, '2022-12-08 00:00:00'),
(2694, 4, 58, '0.00000', 11, 2022, '2022-12-08 00:00:00'),
(2695, 4, 59, '3.00000', 11, 2022, '2022-12-08 00:00:00'),
(2696, 4, 60, '3.00000', 11, 2022, '2022-12-08 00:00:00'),
(2697, 4, 61, '4.00000', 11, 2022, '2022-12-08 00:00:00'),
(2698, 4, 62, '95.50000', 11, 2022, '2022-12-08 00:00:00'),
(2699, 4, 63, '100.00000', 11, 2022, '2022-12-08 00:00:00'),
(2700, 4, 64, '83.20000', 11, 2022, '2022-12-08 00:00:00'),
(2701, 4, 65, '100.70000', 11, 2022, '2022-12-08 00:00:00'),
(2702, 4, 66, '15.47000', 11, 2022, '2022-12-08 00:00:00'),
(2703, 4, 67, '0.00000', 11, 2022, '2022-12-08 00:00:00'),
(2704, 4, 68, '15.54000', 11, 2022, '2022-12-08 00:00:00'),
(2705, 4, 69, '0.00000', 11, 2022, '2022-12-08 00:00:00'),
(2706, 4, 70, '96.16000', 11, 2022, '2022-12-08 00:00:00'),
(2707, 4, 71, '103.23000', 11, 2022, '2022-12-08 00:00:00'),
(2708, 4, 72, '0.00000', 11, 2022, '2022-12-08 00:00:00'),
(2709, 4, 73, '0.00000', 11, 2022, '2022-12-08 00:00:00'),
(2710, 4, 74, '0.00000', 11, 2022, '2022-12-08 00:00:00'),
(2711, 4, 75, '0.00000', 11, 2022, '2022-12-08 00:00:00');
INSERT INTO `tresultrawdata` (`id`, `compId`, `idRawData`, `tResult`, `tMonth`, `tYear`, `dCreate`) VALUES
(2712, 4, 76, '28.54000', 11, 2022, '2022-12-08 00:00:00'),
(2713, 4, 77, '8.00000', 11, 2022, '2022-12-08 00:00:00'),
(2714, 4, 78, '0.00000', 11, 2022, '2022-12-08 00:00:00'),
(2715, 4, 79, '0.00000', 11, 2022, '2022-12-08 00:00:00'),
(2716, 4, 80, '0.00000', 11, 2022, '2022-12-08 00:00:00'),
(2717, 4, 81, '1.00000', 11, 2022, '2022-12-08 00:00:00'),
(2718, 4, 82, '3.00000', 11, 2022, '2022-12-08 00:00:00'),
(2719, 4, 83, '0.00000', 11, 2022, '2022-12-08 00:00:00'),
(2720, 4, 84, '100.00000', 11, 2022, '2022-12-08 00:00:00'),
(2721, 4, 85, '100.00000', 11, 2022, '2022-12-08 00:00:00'),
(2722, 4, 86, '100.00000', 11, 2022, '2022-12-08 00:00:00'),
(2723, 4, 87, '100.00000', 11, 2022, '2022-12-08 00:00:00'),
(2724, 4, 88, '100.00000', 11, 2022, '2022-12-08 00:00:00'),
(2725, 4, 89, '3.00000', 11, 2022, '2022-12-08 00:00:00'),
(2726, 4, 90, '90640550.65000', 11, 2022, '2022-12-08 00:00:00'),
(2727, 4, 91, '259.90000', 11, 2022, '2022-12-08 00:00:00'),
(2728, 4, 8, '15454273915.56000', 12, 2022, '2023-01-09 00:00:00'),
(2729, 4, 9, '4476792900.22000', 12, 2022, '2023-01-09 00:00:00'),
(2730, 4, 10, '3929986386.05000', 12, 2022, '2023-01-09 00:00:00'),
(2731, 4, 11, '4003085416.18000', 12, 2022, '2023-01-09 00:00:00'),
(2732, 4, 12, '794873000.39000', 12, 2022, '2023-01-09 00:00:00'),
(2733, 4, 13, '17989330205.42000', 12, 2022, '2023-01-09 00:00:00'),
(2734, 4, 14, '4717472115.31000', 12, 2022, '2023-01-09 00:00:00'),
(2735, 4, 15, '3852410796.17000', 12, 2022, '2023-01-09 00:00:00'),
(2736, 4, 16, '6527807627.88000', 12, 2022, '2023-01-09 00:00:00'),
(2737, 4, 17, '686593215.14000', 12, 2022, '2023-01-09 00:00:00'),
(2738, 4, 18, '9562077731.52000', 12, 2022, '2023-01-09 00:00:00'),
(2739, 4, 19, '1966129516.64000', 12, 2022, '2023-01-09 00:00:00'),
(2740, 4, 20, '1863055278.95000', 12, 2022, '2023-01-09 00:00:00'),
(2741, 4, 21, '3439300740.56000', 12, 2022, '2023-01-09 00:00:00'),
(2742, 4, 22, '475400985.69000', 12, 2022, '2023-01-09 00:00:00'),
(2743, 4, 23, '552341.00000', 12, 2022, '2023-01-09 00:00:00'),
(2744, 4, 24, '266323.00000', 12, 2022, '2023-01-09 00:00:00'),
(2745, 4, 25, '581023.00000', 12, 2022, '2023-01-09 00:00:00'),
(2746, 4, 26, '415586.00000', 12, 2022, '2023-01-09 00:00:00'),
(2747, 4, 27, '6754.83000', 12, 2022, '2023-01-09 00:00:00'),
(2748, 4, 28, '6226.98000', 12, 2022, '2023-01-09 00:00:00'),
(2749, 4, 29, '4020.92000', 12, 2022, '2023-01-09 00:00:00'),
(2750, 4, 30, '3049.32000', 12, 2022, '2023-01-09 00:00:00'),
(2751, 4, 31, '3589.67000', 12, 2022, '2023-01-09 00:00:00'),
(2752, 4, 32, '1760.34000', 12, 2022, '2023-01-09 00:00:00'),
(2753, 4, 33, '43932461628.55000', 12, 2022, '2023-01-09 00:00:00'),
(2754, 4, 34, '44134203250.00000', 12, 2022, '2023-01-09 00:00:00'),
(2755, 4, 35, '37237393465.00000', 12, 2022, '2023-01-09 00:00:00'),
(2756, 4, 36, '10175981789.93000', 12, 2022, '2023-01-09 00:00:00'),
(2757, 4, 37, '9580657941.00000', 12, 2022, '2023-01-09 00:00:00'),
(2758, 4, 38, '10168329646.14000', 12, 2022, '2023-01-09 00:00:00'),
(2759, 4, 39, '11486765814.87000', 12, 2022, '2023-01-09 00:00:00'),
(2760, 4, 40, '11380254046.00000', 12, 2022, '2023-01-09 00:00:00'),
(2761, 4, 41, '7577567552.00000', 12, 2022, '2023-01-09 00:00:00'),
(2762, 4, 42, '2325392477.20000', 12, 2022, '2023-01-09 00:00:00'),
(2763, 4, 43, '2536421070.00000', 12, 2022, '2023-01-09 00:00:00'),
(2764, 4, 44, '2062027668.00000', 12, 2022, '2023-01-09 00:00:00'),
(2765, 4, 45, '1700000000.00000', 12, 2022, '2023-01-09 00:00:00'),
(2766, 4, 46, '839925672.56000', 12, 2022, '2023-01-09 00:00:00'),
(2767, 4, 47, '24188478.88000', 12, 2022, '2023-01-09 00:00:00'),
(2768, 4, 48, '20252426.00000', 12, 2022, '2023-01-09 00:00:00'),
(2769, 4, 49, '12094239.44000', 12, 2022, '2023-01-09 00:00:00'),
(2770, 4, 50, '102.00000', 12, 2022, '2023-01-09 00:00:00'),
(2771, 4, 51, '36.00000', 12, 2022, '2023-01-09 00:00:00'),
(2772, 4, 52, '51.00000', 12, 2022, '2023-01-09 00:00:00'),
(2773, 4, 53, '43.00000', 12, 2022, '2023-01-09 00:00:00'),
(2774, 4, 54, '40.00000', 12, 2022, '2023-01-09 00:00:00'),
(2775, 4, 55, '0.00000', 12, 2022, '2023-01-09 00:00:00'),
(2776, 4, 56, '2.00000', 12, 2022, '2023-01-09 00:00:00'),
(2777, 4, 57, '24.00000', 12, 2022, '2023-01-09 00:00:00'),
(2778, 4, 58, '0.00000', 12, 2022, '2023-01-09 00:00:00'),
(2779, 4, 59, '1.00000', 12, 2022, '2023-01-09 00:00:00'),
(2780, 4, 60, '7.00000', 12, 2022, '2023-01-09 00:00:00'),
(2781, 4, 61, '3.00000', 12, 2022, '2023-01-09 00:00:00'),
(2782, 4, 62, '92.00000', 12, 2022, '2023-01-09 00:00:00'),
(2783, 4, 63, '100.00000', 12, 2022, '2023-01-09 00:00:00'),
(2784, 4, 64, '81.00000', 12, 2022, '2023-01-09 00:00:00'),
(2785, 4, 65, '100.20000', 12, 2022, '2023-01-09 00:00:00'),
(2786, 4, 66, '15.57000', 12, 2022, '2023-01-09 00:00:00'),
(2787, 4, 67, '0.00000', 12, 2022, '2023-01-09 00:00:00'),
(2788, 4, 68, '15.59000', 12, 2022, '2023-01-09 00:00:00'),
(2789, 4, 69, '0.00000', 12, 2022, '2023-01-09 00:00:00'),
(2790, 4, 70, '95.66000', 12, 2022, '2023-01-09 00:00:00'),
(2791, 4, 71, '103.64000', 12, 2022, '2023-01-09 00:00:00'),
(2792, 4, 72, '0.00000', 12, 2022, '2023-01-09 00:00:00'),
(2793, 4, 73, '0.00000', 12, 2022, '2023-01-09 00:00:00'),
(2794, 4, 74, '0.00000', 12, 2022, '2023-01-09 00:00:00'),
(2795, 4, 75, '0.00000', 12, 2022, '2023-01-09 00:00:00'),
(2796, 4, 76, '0.00000', 12, 2022, '2023-01-09 00:00:00'),
(2797, 4, 77, '0.00000', 12, 2022, '2023-01-09 00:00:00'),
(2798, 4, 78, '0.00000', 12, 2022, '2023-01-09 00:00:00'),
(2799, 4, 79, '0.00000', 12, 2022, '2023-01-09 00:00:00'),
(2800, 4, 80, '0.00000', 12, 2022, '2023-01-09 00:00:00'),
(2801, 4, 81, '0.00000', 12, 2022, '2023-01-09 00:00:00'),
(2802, 4, 82, '0.00000', 12, 2022, '2023-01-09 00:00:00'),
(2803, 4, 83, '0.00000', 12, 2022, '2023-01-09 00:00:00'),
(2804, 4, 84, '100.00000', 12, 2022, '2023-01-09 00:00:00'),
(2805, 4, 85, '100.00000', 12, 2022, '2023-01-09 00:00:00'),
(2806, 4, 86, '100.00000', 12, 2022, '2023-01-09 00:00:00'),
(2807, 4, 87, '100.00000', 12, 2022, '2023-01-09 00:00:00'),
(2808, 4, 88, '100.00000', 12, 2022, '2023-01-09 00:00:00'),
(2809, 4, 89, '11.00000', 12, 2022, '2023-01-09 00:00:00'),
(2810, 4, 90, '90640550.65000', 12, 2022, '2023-01-09 00:00:00'),
(2811, 4, 91, '259.90000', 12, 2022, '2023-01-09 00:00:00'),
(2812, 4, 8, '8250557133.80053', 1, 2023, '2023-02-09 07:51:46'),
(2813, 4, 9, '2180218307.71044', 1, 2023, '2023-02-09 07:52:08'),
(2814, 4, 10, '2432574320.40872', 1, 2023, '2023-02-09 07:52:32'),
(2815, 4, 11, '2212897339.87732', 1, 2023, '2023-02-09 07:52:45'),
(2816, 4, 12, '187750548.64947', 1, 2023, '2023-02-09 08:05:08'),
(2817, 4, 13, '10092474202.40480', 1, 2023, '2023-02-09 08:05:08'),
(2818, 4, 14, '2089625658.37784', 1, 2023, '2023-02-09 08:05:08'),
(2819, 4, 15, '2132594549.43411', 1, 2023, '2023-02-09 08:05:08'),
(2820, 4, 16, '3308773534.81095', 1, 2023, '2023-02-09 08:05:08'),
(2821, 4, 17, '640945175.98622', 1, 2023, '2023-02-09 08:05:08'),
(2822, 4, 18, '9751423206.29910', 1, 2023, '2023-02-09 08:05:08'),
(2823, 4, 19, '2026040541.11401', 1, 2023, '2023-02-09 08:05:08'),
(2824, 4, 20, '2152790419.75110', 1, 2023, '2023-02-09 08:05:08'),
(2825, 4, 21, '3190645219.63927', 1, 2023, '2023-02-09 08:05:08'),
(2826, 4, 22, '589814443.72217', 1, 2023, '2023-02-09 08:05:08'),
(2827, 4, 23, '830177.00000', 1, 2023, '2023-02-09 08:05:08'),
(2828, 4, 24, '691337.00000', 1, 2023, '2023-02-09 08:05:08'),
(2829, 4, 25, '482818.00000', 1, 2023, '2023-02-09 08:05:08'),
(2830, 4, 26, '464641.00000', 1, 2023, '2023-02-09 08:05:08'),
(2831, 4, 27, '4648.73000', 1, 2023, '2023-02-09 08:05:08'),
(2832, 4, 28, '9536.40000', 1, 2023, '2023-02-09 08:05:08'),
(2833, 4, 29, '5439.91000', 1, 2023, '2023-02-09 08:05:08'),
(2834, 4, 30, '2307.38000', 1, 2023, '2023-02-09 08:05:08'),
(2835, 4, 31, '6114.15000', 1, 2023, '2023-02-09 08:05:08'),
(2836, 4, 32, '2473.67000', 1, 2023, '2023-02-09 08:05:08'),
(2837, 4, 33, '48663750576.59000', 1, 2023, '2023-02-09 08:05:09'),
(2838, 4, 34, '50289486534.00000', 1, 2023, '2023-02-09 08:05:09'),
(2839, 4, 35, '43218042478.00000', 1, 2023, '2023-02-09 08:05:09'),
(2840, 4, 36, '36054836669.69000', 1, 2023, '2023-02-09 08:05:09'),
(2841, 4, 37, '11397416490.00000', 1, 2023, '2023-02-09 08:05:09'),
(2842, 4, 38, '9928381852.51348', 1, 2023, '2023-02-09 08:05:09'),
(2843, 4, 39, '12608913906.90000', 1, 2023, '2023-02-09 08:05:09'),
(2844, 4, 40, '13126346112.00000', 1, 2023, '2023-02-09 08:05:09'),
(2845, 4, 41, '9226520522.99999', 1, 2023, '2023-02-09 08:05:09'),
(2846, 4, 42, '2938858192.75131', 1, 2023, '2023-02-09 08:05:09'),
(2847, 4, 43, '2791823678.00000', 1, 2023, '2023-02-09 08:05:09'),
(2848, 4, 44, '2353191820.00000', 1, 2023, '2023-02-09 08:05:09'),
(2849, 4, 45, '1903059781.41521', 1, 2023, '2023-02-09 08:05:09'),
(2850, 4, 46, '2083304620.91521', 1, 2023, '2023-02-09 08:05:09'),
(2859, 4, 55, '0.00000', 1, 2023, '2023-02-09 08:10:50'),
(2862, 4, 58, '0.00000', 1, 2023, '2023-02-09 08:10:50'),
(2864, 4, 60, '0.00000', 1, 2023, '2023-02-09 08:10:50'),
(2865, 4, 61, '0.00000', 1, 2023, '2023-02-09 08:10:50'),
(2871, 4, 67, '0.00000', 1, 2023, '2023-02-09 08:10:50'),
(2873, 4, 69, '0.00000', 1, 2023, '2023-02-09 08:10:50'),
(2876, 4, 72, '0.00000', 1, 2023, '2023-02-09 08:10:50'),
(2877, 4, 73, '0.00000', 1, 2023, '2023-02-09 08:10:51'),
(2878, 4, 74, '0.00000', 1, 2023, '2023-02-09 08:10:51'),
(2879, 4, 75, '0.00000', 1, 2023, '2023-02-09 08:10:51'),
(2882, 4, 78, '0.00000', 1, 2023, '2023-02-09 08:10:51'),
(2883, 4, 79, '0.00000', 1, 2023, '2023-02-09 08:10:51'),
(2884, 4, 80, '0.00000', 1, 2023, '2023-02-09 08:10:51'),
(2885, 4, 81, '0.00000', 1, 2023, '2023-02-09 08:10:51'),
(2886, 4, 82, '0.00000', 1, 2023, '2023-02-09 08:10:51'),
(2893, 4, 89, '0.00000', 1, 2023, '2023-02-09 08:10:51'),
(2894, 4, 90, '0.00000', 1, 2023, '2023-02-09 08:10:51'),
(2896, 4, 62, '87.70000', 1, 2023, '2023-02-08 07:25:03'),
(2897, 4, 63, '100.00000', 1, 2023, '2023-02-08 07:25:19'),
(2898, 4, 64, '89.00000', 1, 2023, '2023-02-08 07:25:34'),
(2899, 4, 65, '98.00000', 1, 2023, '2023-02-08 07:25:51'),
(2900, 4, 66, '15.50000', 1, 2023, '2023-02-08 07:26:09'),
(2901, 4, 68, '15.60000', 1, 2023, '2023-02-08 07:26:27'),
(2902, 4, 70, '97.88000', 1, 2023, '2023-02-08 07:26:41'),
(2903, 4, 71, '99.92000', 1, 2023, '2023-02-08 07:26:54'),
(2904, 4, 76, '4.00000', 1, 2023, '2023-02-08 07:27:36'),
(2905, 4, 77, '1.00000', 1, 2023, '2023-02-08 07:27:46'),
(2906, 4, 47, '6509427.41500', 1, 2023, '2023-02-08 07:29:07'),
(2907, 4, 48, '284968.00000', 1, 2023, '2023-02-08 07:29:25'),
(2908, 4, 49, '5207541.93200', 1, 2023, '2023-02-08 07:29:48'),
(2909, 4, 50, '26.34500', 1, 2023, '2023-02-08 07:30:57'),
(2910, 4, 51, '6.50000', 1, 2023, '2023-02-08 07:31:16'),
(2911, 4, 52, '21.00000', 1, 2023, '2023-02-08 07:31:31'),
(2912, 4, 53, '46.00000', 1, 2023, '2023-02-08 07:31:56'),
(2913, 4, 54, '46.00000', 1, 2023, '2023-02-08 07:32:14'),
(2914, 4, 56, '2.00000', 1, 2023, '2023-02-08 07:32:42'),
(2915, 4, 57, '35.00000', 1, 2023, '2023-02-08 07:32:55'),
(2916, 4, 59, '1.00000', 1, 2023, '2023-02-08 07:33:53'),
(2917, 4, 83, '1.00000', 1, 2023, '2023-02-08 07:34:47'),
(2918, 4, 84, '100.00000', 1, 2023, '2023-02-08 07:35:08'),
(2919, 4, 85, '100.00000', 1, 2023, '2023-02-08 07:35:17'),
(2920, 4, 86, '100.00000', 1, 2023, '2023-02-08 07:35:27'),
(2921, 4, 87, '100.00000', 1, 2023, '2023-02-08 07:35:46'),
(2922, 4, 88, '100.00000', 1, 2023, '2023-02-08 07:35:56'),
(2932, 4, 93, '0.00000', 1, 2023, '2023-03-30 10:46:12'),
(2933, 4, 95, '5237900.00000', 1, 2023, '2023-03-30 10:46:12'),
(2934, 4, 97, '2244801.00000', 1, 2023, '2023-03-30 10:46:12'),
(2935, 4, 98, '254807224.00000', 1, 2023, '2023-03-30 10:46:12'),
(2936, 4, 100, '205015.00000', 1, 2023, '2023-03-30 10:46:12'),
(2937, 4, 104, '2117247.00000', 1, 2023, '2023-03-30 10:46:12'),
(2938, 4, 105, '198568.00000', 1, 2023, '2023-03-30 10:46:12'),
(2939, 4, 93, '0.00000', 1, 2022, '2023-03-30 10:46:12'),
(2940, 4, 95, '4065950.00000', 1, 2022, '2023-03-30 10:46:12'),
(2941, 4, 97, '2290658.00000', 1, 2022, '2023-03-30 10:46:12'),
(2942, 4, 98, '256966166.00000', 1, 2022, '2023-03-30 10:46:12'),
(2943, 4, 100, '193805.00000', 1, 2022, '2023-03-30 10:46:12'),
(2944, 4, 104, '2255010.00000', 1, 2022, '2023-03-30 10:46:12'),
(2945, 4, 105, '138831.00000', 1, 2022, '2023-03-30 10:46:12'),
(2946, 4, 93, '0.00000', 2, 2022, '2023-03-30 10:46:12'),
(2947, 4, 95, '3990420.00000', 2, 2022, '2023-03-30 10:46:12'),
(2948, 4, 97, '1750431.00000', 2, 2022, '2023-03-30 10:46:12'),
(2949, 4, 98, '208986094.00000', 2, 2022, '2023-03-30 10:46:12'),
(2950, 4, 100, '232880.00000', 2, 2022, '2023-03-30 10:46:12'),
(2951, 4, 104, '2152512.00000', 2, 2022, '2023-03-30 10:46:12'),
(2952, 4, 105, '650312.00000', 2, 2022, '2023-03-30 10:46:12'),
(2953, 4, 107, '17072.00000', 1, 2023, '2023-03-30 10:46:12'),
(2954, 4, 109, '4895130.00000', 1, 2023, '2023-03-30 10:46:12'),
(2955, 4, 111, '1741449.00000', 1, 2023, '2023-03-30 10:46:12'),
(2956, 4, 112, '224066292.00000', 1, 2023, '2023-03-30 10:46:12'),
(2957, 4, 114, '0.00000', 1, 2023, '2023-03-30 10:46:12'),
(2958, 4, 93, '0.00000', 1, 2023, '2023-03-30 10:48:38'),
(2959, 4, 94, '0.00000', 1, 2023, '2023-03-30 10:48:38'),
(2960, 4, 95, '5237900.00000', 1, 2023, '2023-03-30 10:48:38'),
(2961, 4, 96, '0.00000', 1, 2023, '2023-03-30 10:48:38'),
(2962, 4, 97, '2244801.00000', 1, 2023, '2023-03-30 10:48:38'),
(2963, 4, 98, '254807224.00000', 1, 2023, '2023-03-30 10:48:38'),
(2964, 4, 99, '0.00000', 1, 2023, '2023-03-30 10:48:38'),
(2965, 4, 100, '205015.00000', 1, 2023, '2023-03-30 10:48:38'),
(2966, 4, 101, '0.00000', 1, 2023, '2023-03-30 10:48:38'),
(2967, 4, 102, '0.00000', 1, 2023, '2023-03-30 10:48:38'),
(2968, 4, 103, '0.00000', 1, 2023, '2023-03-30 10:48:38'),
(2969, 4, 104, '2117247.00000', 1, 2023, '2023-03-30 10:48:38'),
(2970, 4, 105, '198568.00000', 1, 2023, '2023-03-30 10:48:38'),
(2971, 4, 106, '0.00000', 1, 2023, '2023-03-30 10:48:38'),
(2972, 4, 93, '0.00000', 1, 2022, '2023-03-30 10:48:38'),
(2973, 4, 94, '0.00000', 1, 2022, '2023-03-30 10:48:38'),
(2974, 4, 95, '4065950.00000', 1, 2022, '2023-03-30 10:48:38'),
(2975, 4, 96, '0.00000', 1, 2022, '2023-03-30 10:48:38'),
(2976, 4, 97, '2290658.00000', 1, 2022, '2023-03-30 10:48:38'),
(2977, 4, 98, '256966166.00000', 1, 2022, '2023-03-30 10:48:38'),
(2978, 4, 99, '0.00000', 1, 2022, '2023-03-30 10:48:38'),
(2979, 4, 100, '193805.00000', 1, 2022, '2023-03-30 10:48:38'),
(2980, 4, 101, '0.00000', 1, 2022, '2023-03-30 10:48:38'),
(2981, 4, 102, '0.00000', 1, 2022, '2023-03-30 10:48:38'),
(2982, 4, 103, '0.00000', 1, 2022, '2023-03-30 10:48:38'),
(2983, 4, 104, '2255010.00000', 1, 2022, '2023-03-30 10:48:38'),
(2984, 4, 105, '138831.00000', 1, 2022, '2023-03-30 10:48:38'),
(2985, 4, 106, '0.00000', 1, 2022, '2023-03-30 10:48:38'),
(2986, 4, 93, '0.00000', 2, 2022, '2023-03-30 10:48:38'),
(2987, 4, 94, '0.00000', 2, 2022, '2023-03-30 10:48:38'),
(2988, 4, 95, '3990420.00000', 2, 2022, '2023-03-30 10:48:38'),
(2989, 4, 96, '0.00000', 2, 2022, '2023-03-30 10:48:38'),
(2990, 4, 97, '1750431.00000', 2, 2022, '2023-03-30 10:48:38'),
(2991, 4, 98, '208986094.00000', 2, 2022, '2023-03-30 10:48:38'),
(2992, 4, 99, '0.00000', 2, 2022, '2023-03-30 10:48:38'),
(2993, 4, 100, '232880.00000', 2, 2022, '2023-03-30 10:48:38'),
(2994, 4, 101, '0.00000', 2, 2022, '2023-03-30 10:48:38'),
(2995, 4, 102, '0.00000', 2, 2022, '2023-03-30 10:48:38'),
(2996, 4, 103, '0.00000', 2, 2022, '2023-03-30 10:48:38'),
(2997, 4, 104, '2152512.00000', 2, 2022, '2023-03-30 10:48:38'),
(2998, 4, 105, '650312.00000', 2, 2022, '2023-03-30 10:48:38'),
(2999, 4, 106, '0.00000', 2, 2022, '2023-03-30 10:48:38'),
(3000, 4, 107, '17072.00000', 1, 2023, '2023-03-30 10:48:38'),
(3001, 4, 108, '0.00000', 1, 2023, '2023-03-30 10:48:38'),
(3002, 4, 109, '4895130.00000', 1, 2023, '2023-03-30 10:48:38'),
(3003, 4, 110, '0.00000', 1, 2023, '2023-03-30 10:48:38'),
(3004, 4, 111, '1741449.00000', 1, 2023, '2023-03-30 10:48:38'),
(3005, 4, 112, '224066292.00000', 1, 2023, '2023-03-30 10:48:38'),
(3006, 4, 113, '0.00000', 1, 2023, '2023-03-30 10:48:38'),
(3007, 4, 114, '0.00000', 1, 2023, '2023-03-30 10:48:38'),
(3008, 4, 115, '0.00000', 1, 2023, '2023-03-30 10:48:38'),
(3009, 4, 116, '0.00000', 1, 2023, '2023-03-30 10:48:38'),
(3010, 4, 117, '0.00000', 1, 2023, '2023-03-30 10:48:38'),
(3011, 4, 118, '2299540.00000', 1, 2023, '2023-03-30 10:48:38'),
(3012, 4, 119, '425790.00000', 1, 2023, '2023-03-30 10:48:38'),
(3013, 4, 120, '0.00000', 1, 2023, '2023-03-30 10:48:38'),
(3014, 4, 107, '8580.00000', 1, 2022, '2023-03-30 10:48:38'),
(3015, 4, 108, '0.00000', 1, 2022, '2023-03-30 10:48:38'),
(3016, 4, 109, '4404770.00000', 1, 2022, '2023-03-30 10:48:38'),
(3017, 4, 110, '0.00000', 1, 2022, '2023-03-30 10:48:38'),
(3018, 4, 111, '2075399.00000', 1, 2022, '2023-03-30 10:48:38'),
(3019, 4, 112, '232610988.00000', 1, 2022, '2023-03-30 10:48:38'),
(3020, 4, 113, '0.00000', 1, 2022, '2023-03-30 10:48:38'),
(3021, 4, 114, '205340.00000', 1, 2022, '2023-03-30 10:48:38'),
(3022, 4, 115, '0.00000', 1, 2022, '2023-03-30 10:48:38'),
(3023, 4, 116, '0.00000', 1, 2022, '2023-03-30 10:48:38'),
(3024, 4, 117, '0.00000', 1, 2022, '2023-03-30 10:48:38'),
(3025, 4, 118, '2529968.00000', 1, 2022, '2023-03-30 10:48:38'),
(3026, 4, 119, '116091.00000', 1, 2022, '2023-03-30 10:48:38'),
(3027, 4, 120, '0.00000', 1, 2022, '2023-03-30 10:48:38'),
(3028, 4, 107, '8580.00000', 2, 2022, '2023-03-30 10:48:38'),
(3029, 4, 108, '0.00000', 2, 2022, '2023-03-30 10:48:38'),
(3030, 4, 109, '4472130.00000', 2, 2022, '2023-03-30 10:48:38'),
(3031, 4, 110, '0.00000', 2, 2022, '2023-03-30 10:48:38'),
(3032, 4, 111, '2025838.00000', 2, 2022, '2023-03-30 10:48:38'),
(3033, 4, 112, '209168782.00000', 2, 2022, '2023-03-30 10:48:38'),
(3034, 4, 113, '0.00000', 2, 2022, '2023-03-30 10:48:38'),
(3035, 4, 114, '204850.00000', 2, 2022, '2023-03-30 10:48:38'),
(3036, 4, 115, '0.00000', 2, 2022, '2023-03-30 10:48:38'),
(3037, 4, 116, '0.00000', 2, 2022, '2023-03-30 10:48:38'),
(3038, 4, 117, '0.00000', 2, 2022, '2023-03-30 10:48:38'),
(3039, 4, 118, '2413337.00000', 2, 2022, '2023-03-30 10:48:38'),
(3040, 4, 119, '80106.00000', 2, 2022, '2023-03-30 10:48:38'),
(3041, 4, 120, '0.00000', 2, 2022, '2023-03-30 10:48:38');

-- --------------------------------------------------------

--
-- Table structure for table `tresultutil`
--

CREATE TABLE `tresultutil` (
  `id` int(11) NOT NULL,
  `compId` int(11) NOT NULL,
  `lineId` int(11) NOT NULL,
  `tCapacity` decimal(20,5) NOT NULL,
  `tResult` decimal(20,5) NOT NULL DEFAULT 0.00000,
  `tUtil` decimal(10,4) NOT NULL,
  `tMonth` double NOT NULL,
  `tYear` double NOT NULL,
  `dCreate` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tresultutil`
--

INSERT INTO `tresultutil` (`id`, `compId`, `lineId`, `tCapacity`, `tResult`, `tUtil`, `tMonth`, `tYear`, `dCreate`) VALUES
(1, 1, 1, '177457021.00000', '116648280.00000', '0.6600', 1, 2022, '2023-03-27 14:03:59'),
(2, 1, 1, '152106017.75000', '152064000.00000', '1.0000', 2, 2022, '2023-03-27 14:03:59'),
(3, 1, 1, '185907355.00000', '149755200.00000', '0.8100', 3, 2022, '2023-03-27 14:03:59'),
(4, 1, 1, '169006686.00000', '139752480.00000', '0.8300', 4, 2022, '2023-03-27 14:03:59'),
(5, 1, 1, '152106017.75000', '120888720.00000', '0.7900', 5, 2022, '2023-03-27 14:03:59'),
(6, 1, 1, '177457021.00000', '129367680.00000', '0.7300', 6, 2022, '2023-03-27 14:03:59'),
(7, 1, 1, '177457021.00000', '125758920.00000', '0.7100', 7, 2022, '2023-03-27 14:03:59'),
(8, 1, 1, '0.00000', '0.00000', '0.0000', 8, 2022, '2023-03-27 14:03:59'),
(9, 1, 1, '0.00000', '0.00000', '0.0000', 9, 2022, '2023-03-27 14:03:59'),
(10, 1, 1, '0.00000', '0.00000', '0.0000', 10, 2022, '2023-03-27 14:03:59'),
(11, 1, 1, '0.00000', '0.00000', '0.0000', 11, 2022, '2023-03-27 14:03:59'),
(12, 1, 1, '0.00000', '0.00000', '0.0000', 12, 2022, '2023-03-27 14:03:59'),
(13, 1, 2, '24377419.00000', '28024240.00000', '1.1500', 1, 2022, '2023-03-27 14:03:59'),
(14, 1, 2, '23158548.00000', '15106180.00000', '0.6500', 2, 2022, '2023-03-27 14:03:59'),
(15, 1, 2, '26815161.00000', '18394680.00000', '0.6900', 3, 2022, '2023-03-27 14:03:59'),
(16, 1, 2, '25596290.00000', '14406340.00000', '0.5600', 4, 2022, '2023-03-27 14:03:59'),
(17, 1, 2, '20720806.00000', '11826300.00000', '0.5700', 5, 2022, '2023-03-27 14:03:59'),
(18, 1, 2, '25596290.00000', '6850120.00000', '0.2700', 6, 2022, '2023-03-27 14:03:59'),
(19, 1, 2, '25596290.00000', '8173320.00000', '0.3200', 7, 2022, '2023-03-27 14:03:59'),
(20, 1, 2, '0.00000', '0.00000', '0.0000', 8, 2022, '2023-03-27 14:03:59'),
(21, 1, 2, '0.00000', '0.00000', '0.0000', 9, 2022, '2023-03-27 14:03:59'),
(22, 1, 2, '0.00000', '0.00000', '0.0000', 10, 2022, '2023-03-27 14:03:59'),
(23, 1, 2, '0.00000', '0.00000', '0.0000', 11, 2022, '2023-03-27 14:03:59'),
(24, 1, 2, '0.00000', '0.00000', '0.0000', 12, 2022, '2023-03-27 14:03:59'),
(25, 1, 3, '37191516.00000', '44994430.00000', '1.2100', 1, 2022, '2023-03-27 14:03:59'),
(26, 1, 3, '35331940.00000', '38869220.00000', '1.1000', 2, 2022, '2023-03-27 14:03:59'),
(27, 1, 3, '40910668.00000', '28823470.00000', '0.7000', 3, 2022, '2023-03-27 14:03:59'),
(28, 1, 3, '39051092.00000', '38136280.00000', '0.9800', 4, 2022, '2023-03-27 14:03:59'),
(29, 1, 3, '31612789.00000', '32862460.00000', '1.0400', 5, 2022, '2023-03-27 14:03:59'),
(30, 1, 3, '39051092.00000', '25172210.00000', '0.6400', 6, 2022, '2023-03-27 14:03:59'),
(31, 1, 3, '39051092.00000', '26318520.00000', '0.6700', 7, 2022, '2023-03-27 14:03:59'),
(32, 1, 3, '0.00000', '0.00000', '0.0000', 8, 2022, '2023-03-27 14:03:59'),
(33, 1, 3, '0.00000', '0.00000', '0.0000', 9, 2022, '2023-03-27 14:03:59'),
(34, 1, 3, '0.00000', '0.00000', '0.0000', 10, 2022, '2023-03-27 14:03:59'),
(35, 1, 3, '0.00000', '0.00000', '0.0000', 11, 2022, '2023-03-27 14:03:59'),
(36, 1, 3, '0.00000', '0.00000', '0.0000', 12, 2022, '2023-03-27 14:03:59'),
(37, 1, 4, '46223898.00000', '28352146.00000', '0.6100', 1, 2022, '2023-03-27 14:03:59'),
(38, 1, 4, '43912703.00000', '33012117.00000', '0.7500', 2, 2022, '2023-03-27 14:03:59'),
(39, 1, 4, '50846288.00000', '27732050.00000', '0.5500', 3, 2022, '2023-03-27 14:03:59'),
(40, 1, 4, '48535093.00000', '31454664.00000', '0.6500', 4, 2022, '2023-03-27 14:03:59'),
(41, 1, 4, '39290314.00000', '26900424.00000', '0.6800', 5, 2022, '2023-03-27 14:03:59'),
(42, 1, 4, '48535093.00000', '22335882.00000', '0.4600', 6, 2022, '2023-03-27 14:03:59'),
(43, 1, 4, '48535093.00000', '20814438.00000', '0.4300', 7, 2022, '2023-03-27 14:03:59'),
(44, 1, 4, '0.00000', '0.00000', '0.0000', 8, 2022, '2023-03-27 14:03:59'),
(45, 1, 4, '0.00000', '0.00000', '0.0000', 9, 2022, '2023-03-27 14:03:59'),
(46, 1, 4, '0.00000', '0.00000', '0.0000', 10, 2022, '2023-03-27 14:03:59'),
(47, 1, 4, '0.00000', '0.00000', '0.0000', 11, 2022, '2023-03-27 14:03:59'),
(48, 1, 4, '0.00000', '0.00000', '0.0000', 12, 2022, '2023-03-27 14:03:59'),
(49, 1, 5, '4010346.00000', '2290658.00000', '0.5700', 1, 2022, '2023-03-27 14:03:59'),
(50, 1, 5, '3809828.00000', '2383316.00000', '0.6300', 2, 2022, '2023-03-27 14:03:59'),
(51, 1, 5, '4411380.00000', '2014139.00000', '0.4600', 3, 2022, '2023-03-27 14:03:59'),
(52, 1, 5, '4210863.00000', '2623963.00000', '0.6200', 4, 2022, '2023-03-27 14:03:59'),
(53, 1, 5, '3408794.00000', '1921461.00000', '0.5600', 5, 2022, '2023-03-27 14:03:59'),
(54, 1, 5, '4210863.00000', '2309859.00000', '0.5500', 6, 2022, '2023-03-27 14:03:59'),
(55, 1, 5, '4210863.00000', '2507863.00000', '0.6000', 7, 2022, '2023-03-27 14:03:59'),
(56, 1, 5, '0.00000', '0.00000', '0.0000', 8, 2022, '2023-03-27 14:03:59'),
(57, 1, 5, '0.00000', '0.00000', '0.0000', 9, 2022, '2023-03-27 14:03:59'),
(58, 1, 5, '0.00000', '0.00000', '0.0000', 10, 2022, '2023-03-27 14:03:59'),
(59, 1, 5, '0.00000', '0.00000', '0.0000', 11, 2022, '2023-03-27 14:03:59'),
(60, 1, 5, '0.00000', '0.00000', '0.0000', 12, 2022, '2023-03-27 14:03:59'),
(61, 1, 6, '775131.00000', '193805.00000', '0.2500', 1, 2022, '2023-03-27 14:03:59'),
(62, 1, 6, '775131.00000', '342740.00000', '0.4400', 2, 2022, '2023-03-27 14:03:59'),
(63, 1, 6, '897520.00000', '394765.00000', '0.4400', 3, 2022, '2023-03-27 14:03:59'),
(64, 1, 6, '856724.00000', '436085.00000', '0.5100', 4, 2022, '2023-03-27 14:03:59'),
(65, 1, 6, '693538.00000', '233930.00000', '0.3400', 5, 2022, '2023-03-27 14:03:59'),
(66, 1, 6, '856724.00000', '233880.00000', '0.2700', 6, 2022, '2023-03-27 14:03:59'),
(67, 1, 6, '856724.00000', '292315.00000', '0.3400', 7, 2022, '2023-03-27 14:03:59'),
(68, 1, 6, '0.00000', '0.00000', '0.0000', 8, 2022, '2023-03-27 14:03:59'),
(69, 1, 6, '0.00000', '0.00000', '0.0000', 9, 2022, '2023-03-27 14:03:59'),
(70, 1, 6, '0.00000', '0.00000', '0.0000', 10, 2022, '2023-03-27 14:03:59'),
(71, 1, 6, '0.00000', '0.00000', '0.0000', 11, 2022, '2023-03-27 14:03:59'),
(72, 1, 6, '0.00000', '0.00000', '0.0000', 12, 2022, '2023-03-27 14:03:59'),
(73, 1, 7, '662359.00000', '204010.00000', '0.3100', 1, 2022, '2023-03-27 14:03:59'),
(74, 1, 7, '629241.00000', '188040.00000', '0.3000', 2, 2022, '2023-03-27 14:03:59'),
(75, 1, 7, '728595.00000', '251480.00000', '0.3500', 3, 2022, '2023-03-27 14:03:59'),
(76, 1, 7, '695477.00000', '200430.00000', '0.2900', 4, 2022, '2023-03-27 14:03:59'),
(77, 1, 7, '563005.00000', '90650.00000', '0.1600', 5, 2022, '2023-03-27 14:03:59'),
(78, 1, 7, '695477.00000', '213050.00000', '0.3100', 6, 2022, '2023-03-27 14:03:59'),
(79, 1, 7, '695477.00000', '173570.00000', '0.2500', 7, 2022, '2023-03-27 14:03:59'),
(80, 1, 7, '0.00000', '0.00000', '0.0000', 8, 2022, '2023-03-27 14:03:59'),
(81, 1, 7, '0.00000', '0.00000', '0.0000', 9, 2022, '2023-03-27 14:03:59'),
(82, 1, 7, '0.00000', '0.00000', '0.0000', 10, 2022, '2023-03-27 14:03:59'),
(83, 1, 7, '0.00000', '0.00000', '0.0000', 11, 2022, '2023-03-27 14:03:59'),
(84, 1, 7, '0.00000', '0.00000', '0.0000', 12, 2022, '2023-03-27 14:03:59'),
(85, 1, 8, '5783494.00000', '2051000.00000', '0.3500', 1, 2022, '2023-03-27 14:03:59'),
(86, 1, 8, '5494319.00000', '2169794.00000', '0.3900', 2, 2022, '2023-03-27 14:03:59'),
(87, 1, 8, '6361844.00000', '1983777.00000', '0.3100', 3, 2022, '2023-03-27 14:03:59'),
(88, 1, 8, '6072669.00000', '1897876.00000', '0.3100', 4, 2022, '2023-03-27 14:03:59'),
(89, 1, 8, '4915970.00000', '1934886.00000', '0.3900', 5, 2022, '2023-03-27 14:03:59'),
(90, 1, 8, '6072669.00000', '1618072.00000', '0.2700', 6, 2022, '2023-03-27 14:03:59'),
(91, 1, 8, '6072669.00000', '2421424.00000', '0.4000', 7, 2022, '2023-03-27 14:03:59'),
(92, 1, 8, '0.00000', '0.00000', '0.0000', 8, 2022, '2023-03-27 14:03:59'),
(93, 1, 8, '0.00000', '0.00000', '0.0000', 9, 2022, '2023-03-27 14:03:59'),
(94, 1, 8, '0.00000', '0.00000', '0.0000', 10, 2022, '2023-03-27 14:03:59'),
(95, 1, 8, '0.00000', '0.00000', '0.0000', 11, 2022, '2023-03-27 14:03:59'),
(96, 1, 8, '0.00000', '0.00000', '0.0000', 12, 2022, '2023-03-27 14:03:59'),
(97, 1, 9, '16396956.00000', '17094700.00000', '1.0400', 1, 2022, '2023-03-27 14:03:59'),
(98, 1, 9, '15577108.00000', '12031840.00000', '0.7700', 2, 2022, '2023-03-27 14:03:59'),
(99, 1, 9, '18036651.00000', '15783904.00000', '0.8800', 3, 2022, '2023-03-27 14:03:59'),
(100, 1, 9, '17216804.00000', '12970010.00000', '0.7500', 4, 2022, '2023-03-27 14:03:59'),
(101, 1, 9, '13937412.00000', '11594470.00000', '0.8300', 5, 2022, '2023-03-27 14:03:59'),
(102, 1, 9, '17216804.00000', '10875472.00000', '0.6300', 6, 2022, '2023-03-27 14:03:59'),
(103, 1, 9, '17216804.00000', '13691702.00000', '0.8000', 7, 2022, '2023-03-27 14:03:59'),
(104, 1, 9, '0.00000', '0.00000', '0.0000', 8, 2022, '2023-03-27 14:03:59'),
(105, 1, 9, '0.00000', '0.00000', '0.0000', 9, 2022, '2023-03-27 14:03:59'),
(106, 1, 9, '0.00000', '0.00000', '0.0000', 10, 2022, '2023-03-27 14:03:59'),
(107, 1, 9, '0.00000', '0.00000', '0.0000', 11, 2022, '2023-03-27 14:03:59'),
(108, 1, 9, '0.00000', '0.00000', '0.0000', 12, 2022, '2023-03-27 14:03:59'),
(109, 1, 10, '0.00000', '0.00000', '0.0000', 1, 2022, '2023-03-27 14:03:59'),
(110, 1, 10, '346927.00000', '12870.00000', '0.0400', 2, 2022, '2023-03-27 14:03:59'),
(111, 1, 10, '765558.00000', '28400.00000', '0.0400', 3, 2022, '2023-03-27 14:03:59'),
(112, 1, 10, '686387.00000', '25463.00000', '0.0400', 4, 2022, '2023-03-27 14:03:59'),
(113, 1, 10, '345957.00000', '12834.00000', '0.0400', 5, 2022, '2023-03-27 14:03:59'),
(114, 1, 10, '693261.00000', '25718.00000', '0.0400', 6, 2022, '2023-03-27 14:03:59'),
(115, 1, 10, '231770.00000', '8598.00000', '0.0400', 7, 2022, '2023-03-27 14:03:59'),
(116, 1, 10, '0.00000', '0.00000', '0.0000', 8, 2022, '2023-03-27 14:03:59'),
(117, 1, 10, '0.00000', '0.00000', '0.0000', 9, 2022, '2023-03-27 14:03:59'),
(118, 1, 10, '0.00000', '0.00000', '0.0000', 10, 2022, '2023-03-27 14:03:59'),
(119, 1, 10, '0.00000', '0.00000', '0.0000', 11, 2022, '2023-03-27 14:03:59'),
(120, 1, 10, '0.00000', '0.00000', '0.0000', 12, 2022, '2023-03-27 14:03:59'),
(121, 1, 11, '14970171.00000', '6235400.00000', '0.4200', 1, 2022, '2023-03-27 14:03:59'),
(122, 1, 11, '14221662.00000', '6961022.00000', '0.4900', 2, 2022, '2023-03-27 14:03:59'),
(123, 1, 11, '16467188.00000', '6578190.00000', '0.4000', 3, 2022, '2023-03-27 14:03:59'),
(124, 1, 11, '15718679.00000', '8419502.00000', '0.5400', 4, 2022, '2023-03-27 14:03:59'),
(125, 1, 11, '12724645.00000', '6882466.00000', '0.5400', 5, 2022, '2023-03-27 14:03:59'),
(126, 1, 11, '15718679.00000', '5266610.00000', '0.3400', 6, 2022, '2023-03-27 14:03:59'),
(127, 1, 11, '15718679.00000', '5661190.00000', '0.3600', 7, 2022, '2023-03-27 14:03:59'),
(128, 1, 11, '0.00000', '0.00000', '0.0000', 8, 2022, '2023-03-27 14:03:59'),
(129, 1, 11, '0.00000', '0.00000', '0.0000', 9, 2022, '2023-03-27 14:03:59'),
(130, 1, 11, '0.00000', '0.00000', '0.0000', 10, 2022, '2023-03-27 14:03:59'),
(131, 1, 11, '0.00000', '0.00000', '0.0000', 11, 2022, '2023-03-27 14:03:59'),
(132, 1, 11, '0.00000', '0.00000', '0.0000', 12, 2022, '2023-03-27 14:03:59'),
(133, 1, 12, '44788211.00000', '23197250.00000', '0.5200', 1, 2022, '2023-03-27 14:03:59'),
(134, 1, 12, '42565471.00000', '21796975.00000', '0.5100', 2, 2022, '2023-03-27 14:03:59'),
(135, 1, 12, '49289260.00000', '32496940.00000', '0.6600', 3, 2022, '2023-03-27 14:03:59'),
(136, 1, 12, '47233225.00000', '25161060.00000', '0.5300', 4, 2022, '2023-03-27 14:03:59'),
(137, 1, 12, '38342265.00000', '17972540.00000', '0.4700', 5, 2022, '2023-03-27 14:03:59'),
(138, 1, 12, '47010951.00000', '13152960.00000', '0.2800', 6, 2022, '2023-03-27 14:03:59'),
(139, 1, 12, '47010951.00000', '29188760.00000', '0.6200', 7, 2022, '2023-03-27 14:03:59'),
(140, 1, 13, '0.00000', '0.00000', '0.0000', 1, 2022, '2023-03-27 14:03:59'),
(141, 1, 13, '0.00000', '0.00000', '0.0000', 2, 2022, '2023-03-27 14:03:59'),
(142, 1, 13, '0.00000', '0.00000', '0.0000', 3, 2022, '2023-03-27 14:03:59'),
(143, 1, 13, '0.00000', '0.00000', '0.0000', 4, 2022, '2023-03-27 14:03:59'),
(144, 1, 13, '0.00000', '0.00000', '0.0000', 5, 2022, '2023-03-27 14:03:59'),
(145, 1, 13, '0.00000', '0.00000', '0.0000', 6, 2022, '2023-03-27 14:03:59'),
(146, 1, 13, '0.00000', '0.00000', '0.0000', 7, 2022, '2023-03-27 14:03:59'),
(147, 1, 14, '0.00000', '0.00000', '0.0000', 1, 2022, '2023-03-27 14:03:59'),
(148, 1, 14, '0.00000', '0.00000', '0.0000', 2, 2022, '2023-03-27 14:03:59'),
(149, 1, 14, '0.00000', '0.00000', '0.0000', 3, 2022, '2023-03-27 14:03:59'),
(150, 1, 14, '0.00000', '0.00000', '0.0000', 4, 2022, '2023-03-27 14:03:59'),
(151, 1, 14, '0.00000', '0.00000', '0.0000', 5, 2022, '2023-03-27 14:03:59'),
(152, 1, 14, '0.00000', '0.00000', '0.0000', 6, 2022, '2023-03-27 14:03:59'),
(153, 1, 14, '0.00000', '0.00000', '0.0000', 7, 2022, '2023-03-27 14:03:59'),
(154, 2, 15, '65500000.00000', '31568112.00000', '0.4800', 1, 2022, '2023-03-27 14:03:59'),
(155, 2, 15, '65500000.00000', '35939420.00000', '0.5500', 2, 2022, '2023-03-27 14:03:59'),
(156, 2, 15, '65500000.00000', '41300686.00000', '0.6300', 3, 2022, '2023-03-27 14:03:59'),
(157, 2, 15, '65500000.00000', '43901752.00000', '0.6700', 4, 2022, '2023-03-27 14:03:59'),
(158, 2, 15, '65500000.00000', '38841230.00000', '0.5900', 5, 2022, '2023-03-27 14:03:59'),
(159, 2, 15, '65500000.00000', '44705220.00000', '0.6800', 6, 2022, '2023-03-27 14:03:59'),
(160, 2, 15, '65499999.96000', '41360550.00000', '0.6300', 7, 2022, '2023-03-27 14:03:59'),
(161, 2, 15, '65499999.96000', '42187550.00000', '0.6400', 8, 2022, '2023-03-27 14:03:59'),
(162, 2, 15, '65499999.96000', '43597830.00000', '0.6700', 9, 2022, '2023-03-27 14:03:59'),
(163, 2, 15, '65499999.96000', '0.00000', '0.0000', 10, 2022, '2023-03-27 14:03:59'),
(164, 2, 15, '65499999.96000', '0.00000', '0.0000', 11, 2022, '2023-03-27 14:03:59'),
(165, 2, 15, '65499999.96000', '0.00000', '0.0000', 12, 2022, '2023-03-27 14:03:59'),
(166, 2, 16, '1697040.00000', '7195.00000', '0.0000', 1, 2022, '2023-03-27 14:03:59'),
(167, 2, 16, '1697040.00000', '4760.00000', '0.0000', 2, 2022, '2023-03-27 14:03:59'),
(168, 2, 16, '1697040.00000', '4779.00000', '0.0000', 3, 2022, '2023-03-27 14:03:59'),
(169, 2, 16, '141420.00000', '9644.00000', '0.0700', 4, 2022, '2023-03-27 14:03:59'),
(170, 2, 16, '141420.00000', '7228.00000', '0.0500', 5, 2022, '2023-03-27 14:03:59'),
(171, 2, 16, '141420.00000', '0.00000', '0.0000', 6, 2022, '2023-03-27 14:03:59'),
(172, 2, 16, '141420.00000', '4734.00000', '0.0300', 7, 2022, '2023-03-27 14:03:59'),
(173, 2, 16, '141420.00000', '16777.00000', '0.1200', 8, 2022, '2023-03-27 14:03:59'),
(174, 2, 16, '141420.00000', '9608.00000', '0.0700', 9, 2022, '2023-03-27 14:03:59'),
(175, 2, 16, '141420.00000', '0.00000', '0.0000', 10, 2022, '2023-03-27 14:03:59'),
(176, 2, 16, '141420.00000', '0.00000', '0.0000', 11, 2022, '2023-03-27 14:03:59'),
(177, 2, 16, '141420.00000', '0.00000', '0.0000', 12, 2022, '2023-03-27 14:03:59'),
(178, 2, 17, '101188.00000', '22755.00000', '0.2200', 1, 2022, '2023-03-27 14:03:59'),
(179, 2, 17, '101188.00000', '0.00000', '0.0000', 2, 2022, '2023-03-27 14:03:59'),
(180, 2, 17, '101188.00000', '0.00000', '0.0000', 3, 2022, '2023-03-27 14:03:59'),
(181, 2, 17, '101188.00000', '68965.00000', '0.6800', 4, 2022, '2023-03-27 14:03:59'),
(182, 2, 17, '101188.00000', '0.00000', '0.0000', 5, 2022, '2023-03-27 14:03:59'),
(183, 2, 17, '101188.00000', '0.00000', '0.0000', 6, 2022, '2023-03-27 14:03:59'),
(184, 2, 17, '101188.00000', '0.00000', '0.0000', 7, 2022, '2023-03-27 14:03:59'),
(185, 2, 17, '101188.00000', '0.00000', '0.0000', 8, 2022, '2023-03-27 14:03:59'),
(186, 2, 17, '101188.00000', '22905.00000', '0.2300', 9, 2022, '2023-03-27 14:03:59'),
(187, 2, 17, '101188.00000', '0.00000', '0.0000', 10, 2022, '2023-03-27 14:03:59'),
(188, 2, 17, '101188.00000', '0.00000', '0.0000', 11, 2022, '2023-03-27 14:03:59'),
(189, 2, 17, '101188.00000', '0.00000', '0.0000', 12, 2022, '2023-03-27 14:03:59'),
(190, 2, 18, '33150000.00000', '12863194.00000', '0.3900', 1, 2022, '2023-03-27 14:03:59'),
(191, 2, 18, '33150000.00000', '22292594.00000', '0.6700', 2, 2022, '2023-03-27 14:03:59'),
(192, 2, 18, '33150000.00000', '23313338.00000', '0.7000', 3, 2022, '2023-03-27 14:03:59'),
(193, 2, 18, '33150000.00000', '32028912.00000', '0.9700', 4, 2022, '2023-03-27 14:03:59'),
(194, 2, 18, '33150000.00000', '27481396.00000', '0.8300', 5, 2022, '2023-03-27 14:03:59'),
(195, 2, 18, '33150000.00000', '33413700.00000', '1.0100', 6, 2022, '2023-03-27 14:03:59'),
(196, 2, 18, '33150000.00000', '38233010.00000', '1.1500', 7, 2022, '2023-03-27 14:03:59'),
(197, 2, 18, '33150000.00000', '37399542.00000', '1.1300', 8, 2022, '2023-03-27 14:03:59'),
(198, 2, 18, '33150000.00000', '38139170.00000', '1.1500', 9, 2022, '2023-03-27 14:03:59'),
(199, 2, 18, '33150000.00000', '0.00000', '0.0000', 10, 2022, '2023-03-27 14:03:59'),
(200, 2, 18, '33150000.00000', '0.00000', '0.0000', 11, 2022, '2023-03-27 14:03:59'),
(201, 2, 18, '33150000.00000', '0.00000', '0.0000', 12, 2022, '2023-03-27 14:03:59'),
(202, 2, 19, '3600000.00000', '634080.00000', '0.1800', 1, 2022, '2023-03-27 14:03:59'),
(203, 2, 19, '3600000.00000', '219570.00000', '0.0600', 2, 2022, '2023-03-27 14:03:59'),
(204, 2, 19, '3600000.00000', '650370.00000', '0.1800', 3, 2022, '2023-03-27 14:03:59'),
(205, 2, 19, '3600000.00000', '1032120.00000', '0.2900', 4, 2022, '2023-03-27 14:03:59'),
(206, 2, 19, '3600000.00000', '381630.00000', '0.1100', 5, 2022, '2023-03-27 14:03:59'),
(207, 2, 19, '3600000.00000', '586230.00000', '0.1600', 6, 2022, '2023-03-27 14:03:59'),
(208, 2, 19, '3600000.00000', '1200360.00000', '0.3300', 7, 2022, '2023-03-27 14:03:59'),
(209, 2, 19, '3600000.00000', '419280.00000', '0.1200', 8, 2022, '2023-03-27 14:03:59'),
(210, 2, 19, '3600000.00000', '442380.00000', '0.1200', 9, 2022, '2023-03-27 14:03:59'),
(211, 2, 19, '3600000.00000', '0.00000', '0.0000', 10, 2022, '2023-03-27 14:03:59'),
(212, 2, 19, '3600000.00000', '0.00000', '0.0000', 11, 2022, '2023-03-27 14:03:59'),
(213, 2, 19, '3600000.00000', '0.00000', '0.0000', 12, 2022, '2023-03-27 14:03:59'),
(214, 2, 20, '1650000.00000', '208707.00000', '0.1300', 1, 2022, '2023-03-27 14:03:59'),
(215, 2, 20, '1650000.00000', '232661.00000', '0.1400', 2, 2022, '2023-03-27 14:03:59'),
(216, 2, 20, '1650000.00000', '813084.00000', '0.4900', 3, 2022, '2023-03-27 14:03:59'),
(217, 2, 20, '1650000.00000', '1105855.00000', '0.6700', 4, 2022, '2023-03-27 14:03:59'),
(218, 2, 20, '1650000.00000', '317769.00000', '0.1900', 5, 2022, '2023-03-27 14:03:59'),
(219, 2, 20, '1650000.00000', '1569553.00000', '0.9500', 6, 2022, '2023-03-27 14:03:59'),
(220, 2, 20, '1650000.00000', '1090289.00000', '0.6600', 7, 2022, '2023-03-27 14:03:59'),
(221, 2, 20, '1650000.00000', '1169216.00000', '0.7100', 8, 2022, '2023-03-27 14:03:59'),
(222, 2, 20, '1650000.00000', '890610.00000', '0.5400', 9, 2022, '2023-03-27 14:03:59'),
(223, 2, 20, '1650000.00000', '0.00000', '0.0000', 10, 2022, '2023-03-27 14:03:59'),
(224, 2, 20, '1650000.00000', '0.00000', '0.0000', 11, 2022, '2023-03-27 14:03:59'),
(225, 2, 20, '1650000.00000', '0.00000', '0.0000', 12, 2022, '2023-03-27 14:03:59'),
(226, 2, 21, '115000.00000', '140755.00000', '1.2200', 1, 2022, '2023-03-27 14:03:59'),
(227, 2, 21, '115000.00000', '120181.00000', '1.0500', 2, 2022, '2023-03-27 14:03:59'),
(228, 2, 21, '115000.00000', '96116.00000', '0.8400', 3, 2022, '2023-03-27 14:03:59'),
(229, 2, 21, '115000.00000', '145205.00000', '1.2600', 4, 2022, '2023-03-27 14:03:59'),
(230, 2, 21, '115000.00000', '120380.00000', '1.0500', 5, 2022, '2023-03-27 14:03:59'),
(231, 2, 21, '115000.00000', '95518.00000', '0.8300', 6, 2022, '2023-03-27 14:03:59'),
(232, 2, 21, '115000.00000', '104015.00000', '0.9000', 7, 2022, '2023-03-27 14:03:59'),
(233, 2, 21, '115000.00000', '68316.00000', '0.5900', 8, 2022, '2023-03-27 14:03:59'),
(234, 2, 21, '115000.00000', '134713.00000', '1.1700', 9, 2022, '2023-03-27 14:03:59'),
(235, 2, 21, '115000.00000', '0.00000', '0.0000', 10, 2022, '2023-03-27 14:03:59'),
(236, 2, 21, '115000.00000', '0.00000', '0.0000', 11, 2022, '2023-03-27 14:03:59'),
(237, 2, 21, '115000.00000', '0.00000', '0.0000', 12, 2022, '2023-03-27 14:03:59'),
(238, 2, 22, '71076517.00000', '40489000.00000', '0.5700', 1, 2022, '2023-03-27 14:03:59'),
(239, 2, 22, '71076517.00000', '51727000.00000', '0.7300', 2, 2022, '2023-03-27 14:03:59'),
(240, 2, 22, '71076517.00000', '69069900.00000', '0.9700', 3, 2022, '2023-03-27 14:03:59'),
(241, 2, 22, '71076517.00000', '69719300.00000', '0.9800', 4, 2022, '2023-03-27 14:03:59'),
(242, 2, 22, '71076517.00000', '75319700.00000', '1.0600', 5, 2022, '2023-03-27 14:03:59'),
(243, 2, 22, '71076517.00000', '77545200.00000', '1.0900', 6, 2022, '2023-03-27 14:03:59'),
(244, 2, 22, '71076517.00000', '63030300.00000', '0.8900', 7, 2022, '2023-03-27 14:03:59'),
(245, 2, 22, '71076517.00000', '73364600.00000', '1.0300', 8, 2022, '2023-03-27 14:03:59'),
(246, 2, 22, '71076517.00000', '75441500.00000', '1.0600', 9, 2022, '2023-03-27 14:03:59'),
(247, 2, 22, '71076517.00000', '0.00000', '0.0000', 10, 2022, '2023-03-27 14:03:59'),
(248, 2, 22, '71076517.00000', '0.00000', '0.0000', 11, 2022, '2023-03-27 14:03:59'),
(249, 2, 22, '71076517.00000', '0.00000', '0.0000', 12, 2022, '2023-03-27 14:03:59'),
(250, 2, 23, '297917.00000', '9739.00000', '0.0300', 1, 2022, '2023-03-27 14:03:59'),
(251, 2, 23, '297917.00000', '3098.00000', '0.0100', 2, 2022, '2023-03-27 14:04:00'),
(252, 2, 23, '297917.00000', '0.00000', '0.0000', 3, 2022, '2023-03-27 14:04:00'),
(253, 2, 23, '297917.00000', '3098.00000', '0.0100', 4, 2022, '2023-03-27 14:04:00'),
(254, 2, 23, '297917.00000', '0.00000', '0.0000', 5, 2022, '2023-03-27 14:04:00'),
(255, 2, 23, '297917.00000', '3264.00000', '0.0100', 6, 2022, '2023-03-27 14:04:00'),
(256, 2, 23, '297917.00000', '0.00000', '0.0000', 7, 2022, '2023-03-27 14:04:00'),
(257, 2, 23, '297917.00000', '3224.00000', '0.0100', 8, 2022, '2023-03-27 14:04:00'),
(258, 2, 23, '297917.00000', '9739.00000', '0.0300', 9, 2022, '2023-03-27 14:04:00'),
(259, 2, 23, '297917.00000', '0.00000', '0.0000', 10, 2022, '2023-03-27 14:04:00'),
(260, 2, 23, '297917.00000', '0.00000', '0.0000', 11, 2022, '2023-03-27 14:04:00'),
(261, 2, 23, '297917.00000', '0.00000', '0.0000', 12, 2022, '2023-03-27 14:04:00'),
(262, 2, 24, '60148500.00000', '60830140.00000', '1.0100', 1, 2022, '2023-03-27 14:04:00'),
(263, 2, 24, '60148500.00000', '52797760.00000', '0.8800', 2, 2022, '2023-03-27 14:04:00'),
(264, 2, 24, '60148500.00000', '63416310.00000', '1.0500', 3, 2022, '2023-03-27 14:04:00'),
(265, 2, 24, '60148500.00000', '63096570.00000', '1.0500', 4, 2022, '2023-03-27 14:04:00'),
(266, 2, 24, '60148500.00000', '36516230.00000', '0.6100', 5, 2022, '2023-03-27 14:04:00'),
(267, 2, 24, '60148500.00000', '61487990.00000', '1.0200', 6, 2022, '2023-03-27 14:04:00'),
(268, 2, 24, '60148500.00000', '67985370.00000', '1.1300', 7, 2022, '2023-03-27 14:04:00'),
(269, 2, 24, '60148500.00000', '66792720.00000', '1.1100', 8, 2022, '2023-03-27 14:04:00'),
(270, 2, 24, '60148500.00000', '66345880.00000', '1.1000', 9, 2022, '2023-03-27 14:04:00'),
(271, 2, 24, '60148500.00000', '0.00000', '0.0000', 10, 2022, '2023-03-27 14:04:00'),
(272, 2, 24, '60148500.00000', '0.00000', '0.0000', 11, 2022, '2023-03-27 14:04:00'),
(273, 2, 24, '60148500.00000', '0.00000', '0.0000', 12, 2022, '2023-03-27 14:04:00'),
(274, 2, 25, '223052.00000', '48920.00000', '0.2200', 1, 2022, '2023-03-27 14:04:00'),
(275, 2, 25, '223052.00000', '175601.00000', '0.7900', 2, 2022, '2023-03-27 14:04:00'),
(276, 2, 25, '223052.00000', '265486.00000', '1.1900', 3, 2022, '2023-03-27 14:04:00'),
(277, 2, 25, '223052.00000', '235594.00000', '1.0600', 4, 2022, '2023-03-27 14:04:00'),
(278, 2, 25, '223052.00000', '175388.00000', '0.7900', 5, 2022, '2023-03-27 14:04:00'),
(279, 2, 25, '223052.00000', '143414.00000', '0.6400', 6, 2022, '2023-03-27 14:04:00'),
(280, 2, 25, '223052.00000', '159158.00000', '0.7100', 7, 2022, '2023-03-27 14:04:00'),
(281, 2, 25, '223052.00000', '178641.00000', '0.8000', 8, 2022, '2023-03-27 14:04:00'),
(282, 2, 25, '223052.00000', '205302.00000', '0.9200', 9, 2022, '2023-03-27 14:04:00'),
(283, 2, 25, '223052.00000', '0.00000', '0.0000', 10, 2022, '2023-03-27 14:04:00'),
(284, 2, 25, '223052.00000', '0.00000', '0.0000', 11, 2022, '2023-03-27 14:04:00'),
(285, 2, 25, '223052.00000', '0.00000', '0.0000', 12, 2022, '2023-03-27 14:04:00'),
(286, 2, 26, '14432913.00000', '16369100.00000', '1.1300', 1, 2022, '2023-03-27 14:04:00'),
(287, 2, 26, '14432913.00000', '10901700.00000', '0.7600', 2, 2022, '2023-03-27 14:04:00'),
(288, 2, 26, '14432913.00000', '15239450.00000', '1.0600', 3, 2022, '2023-03-27 14:04:00'),
(289, 2, 26, '14432913.00000', '16646350.00000', '1.1500', 4, 2022, '2023-03-27 14:04:00'),
(290, 2, 26, '14432913.00000', '13843230.00000', '0.9600', 5, 2022, '2023-03-27 14:04:00'),
(291, 2, 26, '14432913.00000', '22222230.00000', '1.5400', 6, 2022, '2023-03-27 14:04:00'),
(292, 2, 26, '14432913.00000', '19905850.00000', '1.3800', 7, 2022, '2023-03-27 14:04:00'),
(293, 2, 26, '14432913.00000', '16460660.00000', '1.1400', 8, 2022, '2023-03-27 14:04:00'),
(294, 2, 26, '14432913.00000', '17726740.00000', '1.2300', 9, 2022, '2023-03-27 14:04:00'),
(295, 2, 26, '14432913.00000', '0.00000', '0.0000', 10, 2022, '2023-03-27 14:04:00'),
(296, 2, 26, '14432913.00000', '0.00000', '0.0000', 11, 2022, '2023-03-27 14:04:00'),
(297, 2, 26, '14432913.00000', '0.00000', '0.0000', 12, 2022, '2023-03-27 14:04:00'),
(298, 2, 27, '1748548.00000', '1575790.00000', '0.9000', 1, 2022, '2023-03-27 14:04:00'),
(299, 2, 27, '1748548.00000', '1434590.00000', '0.8200', 2, 2022, '2023-03-27 14:04:00'),
(300, 2, 27, '1748548.00000', '1552380.00000', '0.8900', 3, 2022, '2023-03-27 14:04:00'),
(301, 2, 27, '1748548.00000', '1724810.00000', '0.9900', 4, 2022, '2023-03-27 14:04:00'),
(302, 2, 27, '1748548.00000', '1505230.00000', '0.8600', 5, 2022, '2023-03-27 14:04:00'),
(303, 2, 27, '1748548.00000', '3041890.00000', '1.7400', 6, 2022, '2023-03-27 14:04:00'),
(304, 2, 27, '1748548.00000', '2714150.00000', '1.5500', 7, 2022, '2023-03-27 14:04:00'),
(305, 2, 27, '1748548.00000', '1752050.00000', '1.0000', 8, 2022, '2023-03-27 14:04:00'),
(306, 2, 27, '1748548.00000', '1753700.00000', '1.0000', 9, 2022, '2023-03-27 14:04:00'),
(307, 2, 27, '1748548.00000', '0.00000', '0.0000', 10, 2022, '2023-03-27 14:04:00'),
(308, 2, 27, '1748548.00000', '0.00000', '0.0000', 11, 2022, '2023-03-27 14:04:00'),
(309, 2, 27, '1748548.00000', '0.00000', '0.0000', 12, 2022, '2023-03-27 14:04:00'),
(310, 2, 28, '2033812.00000', '1600102.00000', '0.7900', 1, 2022, '2023-03-27 14:04:00'),
(311, 2, 28, '2033812.00000', '1212779.00000', '0.6000', 2, 2022, '2023-03-27 14:04:00'),
(312, 2, 28, '2033812.00000', '1766615.00000', '0.8700', 3, 2022, '2023-03-27 14:04:00'),
(313, 2, 28, '2033812.00000', '2033989.00000', '1.0000', 4, 2022, '2023-03-27 14:04:00'),
(314, 2, 28, '2033812.00000', '1404198.00000', '0.6900', 5, 2022, '2023-03-27 14:04:00'),
(315, 2, 28, '2033812.00000', '1643806.00000', '0.8100', 6, 2022, '2023-03-27 14:04:00'),
(316, 2, 28, '2033812.00000', '2855784.00000', '1.4000', 7, 2022, '2023-03-27 14:04:00'),
(317, 2, 28, '2033812.00000', '2711027.00000', '1.3300', 8, 2022, '2023-03-27 14:04:00'),
(318, 2, 28, '2033812.00000', '2180655.00000', '1.0700', 9, 2022, '2023-03-27 14:04:00'),
(319, 2, 28, '2033812.00000', '0.00000', '0.0000', 10, 2022, '2023-03-27 14:04:00'),
(320, 2, 28, '2033812.00000', '0.00000', '0.0000', 11, 2022, '2023-03-27 14:04:00'),
(321, 2, 28, '2033812.00000', '0.00000', '0.0000', 12, 2022, '2023-03-27 14:04:00'),
(322, 2, 29, '3424403.00000', '3281038.00000', '0.9600', 1, 2022, '2023-03-27 14:04:00'),
(323, 2, 29, '3424403.00000', '3036430.00000', '0.8900', 2, 2022, '2023-03-27 14:04:00'),
(324, 2, 29, '3424403.00000', '4173584.00000', '1.2200', 3, 2022, '2023-03-27 14:04:00'),
(325, 2, 29, '3424403.00000', '3425612.00000', '1.0000', 4, 2022, '2023-03-27 14:04:00'),
(326, 2, 29, '3424403.00000', '2858246.00000', '0.8300', 5, 2022, '2023-03-27 14:04:00'),
(327, 2, 29, '3424403.00000', '3467144.00000', '1.0100', 6, 2022, '2023-03-27 14:04:00'),
(328, 2, 29, '3424403.00000', '3259678.00000', '0.9500', 7, 2022, '2023-03-27 14:04:00'),
(329, 2, 29, '3424403.00000', '2657697.00000', '0.7800', 8, 2022, '2023-03-27 14:04:00'),
(330, 2, 29, '3424403.00000', '2153014.00000', '0.6300', 9, 2022, '2023-03-27 14:04:00'),
(331, 2, 29, '3424403.00000', '0.00000', '0.0000', 10, 2022, '2023-03-27 14:04:00'),
(332, 2, 29, '3424403.00000', '0.00000', '0.0000', 11, 2022, '2023-03-27 14:04:00'),
(333, 2, 29, '3424403.00000', '0.00000', '0.0000', 12, 2022, '2023-03-27 14:04:00'),
(334, 3, 30, '15936820.00000', '14931550.00000', '0.9400', 1, 2022, '2023-03-27 14:04:00'),
(335, 3, 30, '13039197.00000', '14273400.00000', '1.0900', 2, 2022, '2023-03-27 14:04:00'),
(336, 3, 30, '16079432.00000', '15928400.00000', '0.9900', 3, 2022, '2023-03-27 14:04:00'),
(337, 3, 30, '12212247.00000', '8206500.00000', '0.6700', 4, 2022, '2023-03-27 14:04:00'),
(338, 3, 30, '14768873.00000', '8835000.00000', '0.6000', 5, 2022, '2023-03-27 14:04:00'),
(339, 3, 30, '14921997.00000', '10124200.00000', '0.6800', 6, 2022, '2023-03-27 14:04:00'),
(340, 3, 30, '16403440.00000', '16097000.00000', '0.9800', 7, 2022, '2023-03-27 14:04:00'),
(341, 3, 30, '15553934.00000', '16744200.00000', '1.0800', 8, 2022, '2023-03-27 14:04:00'),
(342, 3, 30, '15372915.00000', '14421250.00000', '0.9400', 9, 2022, '2023-03-27 14:04:00'),
(343, 3, 30, '0.00000', '0.00000', '0.0000', 10, 2022, '2023-03-27 14:04:00'),
(344, 3, 30, '0.00000', '0.00000', '0.0000', 11, 2022, '2023-03-27 14:04:00'),
(345, 3, 30, '0.00000', '0.00000', '0.0000', 12, 2022, '2023-03-27 14:04:00'),
(346, 3, 31, '27443006.00000', '35109050.00000', '1.2800', 1, 2022, '2023-03-27 14:04:00'),
(347, 3, 31, '35816040.00000', '33399400.00000', '0.9300', 2, 2022, '2023-03-27 14:04:00'),
(348, 3, 31, '39457771.00000', '36344750.00000', '0.9200', 3, 2022, '2023-03-27 14:04:00'),
(349, 3, 31, '25439137.00000', '37819800.00000', '1.4900', 4, 2022, '2023-03-27 14:04:00'),
(350, 3, 31, '24976582.00000', '33494050.00000', '1.3400', 5, 2022, '2023-03-27 14:04:00'),
(351, 3, 31, '49889326.00000', '52240700.00000', '1.0500', 6, 2022, '2023-03-27 14:04:00'),
(352, 3, 31, '52228702.00000', '56110350.00000', '1.0700', 7, 2022, '2023-03-27 14:04:00'),
(353, 3, 31, '44849355.00000', '49737200.00000', '1.1100', 8, 2022, '2023-03-27 14:04:00'),
(354, 3, 31, '43855739.00000', '48008900.00000', '1.0900', 9, 2022, '2023-03-27 14:04:00'),
(355, 3, 31, '0.00000', '0.00000', '0.0000', 10, 2022, '2023-03-27 14:04:00'),
(356, 3, 31, '0.00000', '0.00000', '0.0000', 11, 2022, '2023-03-27 14:04:00'),
(357, 3, 31, '0.00000', '0.00000', '0.0000', 12, 2022, '2023-03-27 14:04:00'),
(358, 3, 32, '41639075.00000', '74260500.00000', '1.7800', 1, 2022, '2023-03-27 14:04:00'),
(359, 3, 32, '39350994.00000', '58484300.00000', '1.4900', 2, 2022, '2023-03-27 14:04:00'),
(360, 3, 32, '34003757.00000', '55338080.00000', '1.6300', 3, 2022, '2023-03-27 14:04:00'),
(361, 3, 32, '34709583.00000', '64700400.00000', '1.8600', 4, 2022, '2023-03-27 14:04:00'),
(362, 3, 32, '43446742.00000', '50470500.00000', '1.1600', 5, 2022, '2023-03-27 14:04:00'),
(363, 3, 32, '45006794.00000', '46694000.00000', '1.0400', 6, 2022, '2023-03-27 14:04:00'),
(364, 3, 32, '41495657.00000', '44714000.00000', '1.0800', 7, 2022, '2023-03-27 14:04:00'),
(365, 3, 32, '45389535.00000', '42032900.00000', '0.9300', 8, 2022, '2023-03-27 14:04:00'),
(366, 3, 32, '56823979.00000', '56483600.00000', '0.9900', 9, 2022, '2023-03-27 14:04:00'),
(367, 3, 32, '0.00000', '0.00000', '0.0000', 10, 2022, '2023-03-27 14:04:00'),
(368, 3, 32, '0.00000', '0.00000', '0.0000', 11, 2022, '2023-03-27 14:04:00'),
(369, 3, 32, '0.00000', '0.00000', '0.0000', 12, 2022, '2023-03-27 14:04:00'),
(370, 3, 33, '76797635.00000', '90906750.00000', '1.1800', 1, 2022, '2023-03-27 14:04:00'),
(371, 3, 33, '70092802.00000', '58522420.00000', '0.8300', 2, 2022, '2023-03-27 14:04:00'),
(372, 3, 33, '61372413.00000', '71540450.00000', '1.1700', 3, 2022, '2023-03-27 14:04:00'),
(373, 3, 33, '51130467.00000', '76785900.00000', '1.5000', 4, 2022, '2023-03-27 14:04:00'),
(374, 3, 33, '71601255.00000', '70182650.00000', '0.9800', 5, 2022, '2023-03-27 14:04:00'),
(375, 3, 33, '84683933.00000', '89285220.00000', '1.0500', 6, 2022, '2023-03-27 14:04:00'),
(376, 3, 33, '72537175.00000', '70216500.00000', '0.9700', 7, 2022, '2023-03-27 14:04:00'),
(377, 3, 33, '70067356.00000', '91596100.00000', '1.3100', 8, 2022, '2023-03-27 14:04:00'),
(378, 3, 33, '75431315.00000', '89635840.00000', '1.1900', 9, 2022, '2023-03-27 14:04:00'),
(379, 3, 33, '0.00000', '0.00000', '0.0000', 10, 2022, '2023-03-27 14:04:00'),
(380, 3, 33, '0.00000', '0.00000', '0.0000', 11, 2022, '2023-03-27 14:04:00'),
(381, 3, 33, '0.00000', '0.00000', '0.0000', 12, 2022, '2023-03-27 14:04:00'),
(382, 3, 34, '43766056.00000', '41631300.00000', '0.9500', 1, 2022, '2023-03-27 14:04:00'),
(383, 3, 34, '38348873.00000', '31064300.00000', '0.8100', 2, 2022, '2023-03-27 14:04:00'),
(384, 3, 34, '44142565.00000', '40134000.00000', '0.9100', 3, 2022, '2023-03-27 14:04:00'),
(385, 3, 34, '37165079.00000', '34471800.00000', '0.9300', 4, 2022, '2023-03-27 14:04:00'),
(386, 3, 34, '29180409.00000', '29275200.00000', '1.0000', 5, 2022, '2023-03-27 14:04:00'),
(387, 3, 34, '42239355.00000', '40005500.00000', '0.9500', 6, 2022, '2023-03-27 14:04:00'),
(388, 3, 34, '40403998.00000', '31686800.00000', '0.7800', 7, 2022, '2023-03-27 14:04:00'),
(389, 3, 34, '35272163.00000', '31465400.00000', '0.8900', 8, 2022, '2023-03-27 14:04:00'),
(390, 3, 34, '38874635.00000', '40395200.00000', '1.0400', 9, 2022, '2023-03-27 14:04:00'),
(391, 3, 34, '0.00000', '0.00000', '0.0000', 10, 2022, '2023-03-27 14:04:00'),
(392, 3, 34, '0.00000', '0.00000', '0.0000', 11, 2022, '2023-03-27 14:04:00'),
(393, 3, 34, '0.00000', '0.00000', '0.0000', 12, 2022, '2023-03-27 14:04:00'),
(394, 3, 35, '57843732.00000', '75870000.00000', '1.3100', 1, 2022, '2023-03-27 14:04:00'),
(395, 3, 35, '58900996.00000', '91927550.00000', '1.5600', 2, 2022, '2023-03-27 14:04:00'),
(396, 3, 35, '111677905.00000', '128204500.00000', '1.1500', 3, 2022, '2023-03-27 14:04:00'),
(397, 3, 35, '111503775.00000', '59076600.00000', '0.5300', 4, 2022, '2023-03-27 14:04:00'),
(398, 3, 35, '93888009.00000', '60140200.00000', '0.6400', 5, 2022, '2023-03-27 14:04:00'),
(399, 3, 35, '70909132.00000', '64950900.00000', '0.9200', 6, 2022, '2023-03-27 14:04:00'),
(400, 3, 35, '70909132.00000', '75733400.00000', '1.0700', 7, 2022, '2023-03-27 14:04:00'),
(401, 3, 35, '73542486.00000', '75909300.00000', '1.0300', 8, 2022, '2023-03-27 14:04:00'),
(402, 3, 35, '74861378.00000', '68970400.00000', '0.9200', 9, 2022, '2023-03-27 14:04:00'),
(403, 3, 35, '0.00000', '0.00000', '0.0000', 10, 2022, '2023-03-27 14:04:00'),
(404, 3, 35, '0.00000', '0.00000', '0.0000', 11, 2022, '2023-03-27 14:04:00'),
(405, 3, 35, '0.00000', '0.00000', '0.0000', 12, 2022, '2023-03-27 14:04:00'),
(406, 3, 36, '28295635.00000', '33153100.00000', '1.1700', 1, 2022, '2023-03-27 14:04:00'),
(407, 3, 36, '36693333.00000', '970200.00000', '0.0300', 2, 2022, '2023-03-27 14:04:00'),
(408, 3, 36, '38350452.00000', '19074300.00000', '0.5000', 3, 2022, '2023-03-27 14:04:00'),
(409, 3, 36, '69291517.00000', '64401200.00000', '0.9300', 4, 2022, '2023-03-27 14:04:00'),
(410, 3, 36, '86426191.00000', '46572050.00000', '0.5400', 5, 2022, '2023-03-27 14:04:00'),
(411, 3, 36, '83279197.00000', '52916150.00000', '0.6400', 6, 2022, '2023-03-27 14:04:00'),
(412, 3, 36, '83279197.00000', '54054650.00000', '0.6500', 7, 2022, '2023-03-27 14:04:00'),
(413, 3, 36, '84446572.00000', '58861100.00000', '0.7000', 8, 2022, '2023-03-27 14:04:00'),
(414, 3, 36, '77841069.00000', '54193250.00000', '0.7000', 9, 2022, '2023-03-27 14:04:00'),
(415, 3, 36, '0.00000', '0.00000', '0.0000', 10, 2022, '2023-03-27 14:04:00'),
(416, 3, 36, '0.00000', '0.00000', '0.0000', 11, 2022, '2023-03-27 14:04:00'),
(417, 3, 36, '0.00000', '0.00000', '0.0000', 12, 2022, '2023-03-27 14:04:00'),
(418, 4, 37, '300000.00000', '80841.00000', '0.2700', 1, 2022, '2023-03-27 14:04:00'),
(419, 4, 37, '300000.00000', '67933.00000', '0.2300', 2, 2022, '2023-03-27 14:04:00'),
(420, 4, 37, '300000.00000', '114077.00000', '0.3800', 3, 2022, '2023-03-27 14:04:00'),
(421, 4, 37, '300000.00000', '148623.00000', '0.5000', 4, 2022, '2023-03-27 14:04:00'),
(422, 4, 37, '300000.00000', '55369.00000', '0.1800', 5, 2022, '2023-03-27 14:04:00'),
(423, 4, 37, '300000.00000', '110515.00000', '0.3700', 6, 2022, '2023-03-27 14:04:00'),
(424, 4, 37, '300000.00000', '108868.00000', '0.3600', 7, 2022, '2023-03-27 14:04:00'),
(425, 4, 37, '0.00000', '0.00000', '0.0000', 8, 2022, '2023-03-27 14:04:00'),
(426, 4, 37, '0.00000', '0.00000', '0.0000', 9, 2022, '2023-03-27 14:04:00'),
(427, 4, 37, '0.00000', '0.00000', '0.0000', 10, 2022, '2023-03-27 14:04:00'),
(428, 4, 37, '0.00000', '0.00000', '0.0000', 11, 2022, '2023-03-27 14:04:00'),
(429, 4, 37, '0.00000', '0.00000', '0.0000', 12, 2022, '2023-03-27 14:04:00'),
(430, 4, 38, '395600.00000', '7674.00000', '0.0200', 1, 2022, '2023-03-27 14:04:00'),
(431, 4, 38, '395600.00000', '10117.00000', '0.0300', 2, 2022, '2023-03-27 14:04:00'),
(432, 4, 38, '395600.00000', '5190.00000', '0.0100', 3, 2022, '2023-03-27 14:04:00'),
(433, 4, 38, '395600.00000', '0.00000', '0.0000', 4, 2022, '2023-03-27 14:04:00'),
(434, 4, 38, '395600.00000', '15885.00000', '0.0400', 5, 2022, '2023-03-27 14:04:00'),
(437, 4, 38, '0.00000', '0.00000', '0.0000', 8, 2022, '2023-03-27 14:04:00'),
(438, 4, 38, '0.00000', '0.00000', '0.0000', 9, 2022, '2023-03-27 14:04:00'),
(439, 4, 38, '0.00000', '0.00000', '0.0000', 10, 2022, '2023-03-27 14:04:00'),
(440, 4, 38, '0.00000', '0.00000', '0.0000', 11, 2022, '2023-03-27 14:04:00'),
(441, 4, 38, '0.00000', '0.00000', '0.0000', 12, 2022, '2023-03-27 14:04:00'),
(442, 4, 39, '513400.00000', '376126.00000', '0.7300', 1, 2022, '2023-03-27 14:04:00'),
(443, 4, 39, '513400.00000', '410158.00000', '0.8000', 2, 2022, '2023-03-27 14:04:00'),
(444, 4, 39, '513400.00000', '321813.00000', '0.6300', 3, 2022, '2023-03-27 14:04:00'),
(445, 4, 39, '513400.00000', '465827.00000', '0.9100', 4, 2022, '2023-03-27 14:04:00'),
(446, 4, 39, '513400.00000', '287486.00000', '0.5600', 5, 2022, '2023-03-27 14:04:00'),
(447, 4, 39, '513400.00000', '442457.00000', '0.8600', 6, 2022, '2023-03-27 14:04:00'),
(448, 4, 39, '0.00000', '0.00000', '0.0000', 7, 2022, '2023-03-27 14:04:00'),
(449, 4, 39, '0.00000', '0.00000', '0.0000', 8, 2022, '2023-03-27 14:04:00'),
(450, 4, 39, '0.00000', '0.00000', '0.0000', 9, 2022, '2023-03-27 14:04:00'),
(451, 4, 39, '0.00000', '0.00000', '0.0000', 10, 2022, '2023-03-27 14:04:00'),
(452, 4, 39, '0.00000', '0.00000', '0.0000', 11, 2022, '2023-03-27 14:04:00'),
(453, 4, 39, '0.00000', '0.00000', '0.0000', 12, 2022, '2023-03-27 14:04:00'),
(454, 5, 40, '170048.00000', '109334.00000', '0.6400', 1, 2022, '2023-03-27 14:04:00'),
(455, 5, 40, '170048.00000', '165459.00000', '0.9700', 2, 2022, '2023-03-27 14:04:00'),
(456, 5, 40, '170048.00000', '71868.00000', '0.4200', 3, 2022, '2023-03-27 14:04:00'),
(457, 5, 40, '170048.00000', '98774.00000', '0.5800', 4, 2022, '2023-03-27 14:04:00'),
(458, 5, 40, '170048.00000', '117495.00000', '0.6900', 5, 2022, '2023-03-27 14:04:00'),
(459, 5, 40, '170048.00000', '173519.00000', '1.0200', 6, 2022, '2023-03-27 14:04:00'),
(460, 5, 40, '170048.00000', '178802.00000', '1.0500', 7, 2022, '2023-03-27 14:04:00'),
(461, 5, 40, '170048.00000', '161445.00000', '0.9500', 8, 2022, '2023-03-27 14:04:00'),
(462, 5, 40, '170048.00000', '140735.00000', '0.8300', 9, 2022, '2023-03-27 14:04:00'),
(463, 5, 40, '0.00000', '0.00000', '0.0000', 10, 2022, '2023-03-27 14:04:00'),
(464, 5, 40, '0.00000', '0.00000', '0.0000', 11, 2022, '2023-03-27 14:04:00'),
(465, 5, 40, '0.00000', '0.00000', '0.0000', 12, 2022, '2023-03-27 14:04:00'),
(466, 5, 41, '13086.00000', '6041.00000', '0.4600', 1, 2022, '2023-03-27 14:04:00'),
(467, 5, 41, '13086.00000', '6774.00000', '0.5200', 2, 2022, '2023-03-27 14:04:00'),
(468, 5, 41, '13086.00000', '17316.00000', '1.3200', 3, 2022, '2023-03-27 14:04:00'),
(469, 5, 41, '13086.00000', '14647.00000', '1.1200', 4, 2022, '2023-03-27 14:04:00'),
(470, 5, 41, '13086.00000', '1685.00000', '0.1300', 5, 2022, '2023-03-27 14:04:00'),
(471, 5, 41, '13086.00000', '9155.00000', '0.7000', 6, 2022, '2023-03-27 14:04:00'),
(472, 5, 41, '13086.00000', '11942.00000', '0.9100', 7, 2022, '2023-03-27 14:04:00'),
(473, 5, 41, '13086.00000', '4500.00000', '0.3400', 8, 2022, '2023-03-27 14:04:00'),
(474, 5, 41, '13086.00000', '3392.00000', '0.2600', 9, 2022, '2023-03-27 14:04:00'),
(475, 5, 41, '0.00000', '0.00000', '0.0000', 10, 2022, '2023-03-27 14:04:00'),
(476, 5, 41, '0.00000', '0.00000', '0.0000', 11, 2022, '2023-03-27 14:04:00'),
(477, 5, 41, '0.00000', '0.00000', '0.0000', 12, 2022, '2023-03-27 14:04:00'),
(478, 5, 42, '2878030.00000', '1435030.00000', '0.5000', 1, 2022, '2023-03-27 14:04:00'),
(479, 5, 42, '2878030.00000', '1805590.00000', '0.6300', 2, 2022, '2023-03-27 14:04:00'),
(480, 5, 42, '2878030.00000', '1691660.00000', '0.5900', 3, 2022, '2023-03-27 14:04:00'),
(481, 5, 42, '2878030.00000', '1969880.00000', '0.6800', 4, 2022, '2023-03-27 14:04:00'),
(482, 5, 42, '2878030.00000', '1592080.00000', '0.5500', 5, 2022, '2023-03-27 14:04:00'),
(483, 5, 42, '2878030.00000', '1901334.00000', '0.6600', 6, 2022, '2023-03-27 14:04:00'),
(484, 5, 42, '2878030.00000', '1863440.00000', '0.6500', 7, 2022, '2023-03-27 14:04:00'),
(485, 5, 42, '2878030.00000', '1643760.00000', '0.5700', 8, 2022, '2023-03-27 14:04:00'),
(486, 5, 42, '2878030.00000', '2207400.00000', '0.7700', 9, 2022, '2023-03-27 14:04:00'),
(487, 5, 42, '0.00000', '0.00000', '0.0000', 10, 2022, '2023-03-27 14:04:00'),
(488, 5, 42, '0.00000', '0.00000', '0.0000', 11, 2022, '2023-03-27 14:04:00'),
(489, 5, 42, '0.00000', '0.00000', '0.0000', 12, 2022, '2023-03-27 14:04:00'),
(490, 1, 1, '223377904.59000', '149252160.00000', '0.6700', 1, 2023, '2023-03-27 14:04:00'),
(491, 1, 1, '203953739.00000', '143095560.00000', '0.7000', 2, 2023, '2023-03-27 14:04:00'),
(492, 1, 2, '32444950.00000', '13095920.00000', '0.4000', 1, 2023, '2023-03-27 14:04:00'),
(493, 1, 2, '29623650.00000', '6778380.00000', '0.2300', 2, 2023, '2023-03-27 14:04:00'),
(494, 1, 3, '42239500.00000', '38116480.00000', '0.9000', 1, 2023, '2023-03-27 14:04:00'),
(495, 1, 3, '38566500.00000', '43369040.00000', '1.1200', 2, 2023, '2023-03-27 14:04:00'),
(496, 1, 4, '47040750.00000', '27007272.00000', '0.5700', 1, 2023, '2023-03-27 14:04:00'),
(497, 1, 4, '42950250.00000', '22089036.00000', '0.5100', 2, 2023, '2023-03-27 14:04:00'),
(498, 1, 5, '4759288.99000', '2350441.00000', '0.4900', 1, 2023, '2023-03-27 14:04:00'),
(499, 1, 5, '4345438.00000', '2087282.00000', '0.4800', 2, 2023, '2023-03-27 14:04:00'),
(500, 1, 6, '1110814.71000', '344630.00000', '0.3100', 1, 2023, '2023-03-27 14:04:00'),
(501, 1, 6, '1014222.00000', '0.00000', '0.0000', 2, 2023, '2023-03-27 14:04:00'),
(502, 1, 7, '1294233.58000', '254880.00000', '0.2000', 1, 2023, '2023-03-27 14:04:00'),
(503, 1, 7, '1181692.00000', '196430.00000', '0.1700', 2, 2023, '2023-03-27 14:04:00'),
(504, 1, 8, '7617889.42000', '666845.00000', '0.0900', 1, 2023, '2023-03-27 14:04:00'),
(505, 1, 8, '6955464.00000', '1940185.00000', '0.2800', 2, 2023, '2023-03-27 14:04:00'),
(506, 1, 9, '35783614.67000', '15940814.00000', '0.4500', 1, 2023, '2023-03-27 14:04:00'),
(507, 1, 9, '32671996.00000', '13460300.00000', '0.4100', 2, 2023, '2023-03-27 14:04:00'),
(508, 1, 10, '127715.17000', '17127.00000', '0.1300', 1, 2023, '2023-03-27 14:04:00'),
(509, 1, 10, '116610.00000', '0.00000', '0.0000', 2, 2023, '2023-03-27 14:04:00'),
(510, 1, 11, '15108107.75000', '7119196.00000', '0.4700', 1, 2023, '2023-03-27 14:04:00'),
(511, 1, 11, '13794359.00000', '6860762.00000', '0.5000', 2, 2023, '2023-03-27 14:04:00'),
(512, 1, 12, '34298924.23000', '23042790.00000', '0.6700', 1, 2023, '2023-03-27 14:04:00'),
(513, 1, 12, '31316409.00000', '16326320.00000', '0.5200', 2, 2023, '2023-03-27 14:04:00'),
(514, 1, 13, '0.00000', '0.00000', '0.0000', 1, 2023, '2023-03-27 14:04:00'),
(515, 1, 13, '13794359.00000', '6860762.00000', '0.5000', 2, 2023, '2023-03-27 14:04:00'),
(516, 1, 14, '0.00000', '0.00000', '0.0000', 1, 2023, '2023-03-27 14:04:00'),
(517, 1, 14, '31316409.00000', '52607220.00000', '1.6800', 2, 2023, '2023-03-27 14:04:00'),
(518, 2, 15, '67865000.00000', '48438490.00000', '0.7100', 1, 2023, '2023-03-27 14:04:00'),
(519, 2, 15, '67865000.00000', '39043050.00000', '0.5800', 2, 2023, '2023-03-27 14:04:00'),
(520, 2, 16, '40500.00000', '0.00000', '0.0000', 1, 2023, '2023-03-27 14:04:00'),
(521, 2, 16, '40500.00000', '0.00000', '0.0000', 2, 2023, '2023-03-27 14:04:00'),
(522, 2, 17, '33729.42000', '0.00000', '0.0000', 1, 2023, '2023-03-27 14:04:00'),
(523, 2, 17, '33729.42000', '0.00000', '0.0000', 2, 2023, '2023-03-27 14:04:00'),
(524, 2, 18, '46410000.00000', '35919944.00000', '0.7700', 1, 2023, '2023-03-27 14:04:00'),
(525, 2, 18, '46410000.00000', '38111402.00000', '0.8200', 2, 2023, '2023-03-27 14:04:00'),
(526, 2, 19, '3600000.00000', '764700.00000', '0.2100', 1, 2023, '2023-03-27 14:04:00'),
(527, 2, 19, '3600000.00000', '660570.00000', '0.1800', 2, 2023, '2023-03-27 14:04:00'),
(528, 2, 20, '2295796.92000', '716185.00000', '0.3100', 1, 2023, '2023-03-27 14:04:00'),
(529, 2, 20, '2295796.92000', '924571.00000', '0.4000', 2, 2023, '2023-03-27 14:04:00'),
(530, 2, 21, '150450.00000', '110374.00000', '0.7300', 1, 2023, '2023-03-27 14:04:00'),
(531, 2, 21, '150450.00000', '129385.00000', '0.8600', 2, 2023, '2023-03-27 14:04:00'),
(532, 2, 22, '77000000.00000', '29761900.00000', '0.3900', 1, 2023, '2023-03-27 14:04:00'),
(533, 2, 22, '77000000.00000', '18398200.00000', '0.2400', 2, 2023, '2023-03-27 14:04:00'),
(534, 2, 23, '223051.92000', '0.00000', '0.0000', 1, 2023, '2023-03-27 14:04:00'),
(535, 2, 23, '223051.92000', '0.00000', '0.0000', 2, 2023, '2023-03-27 14:04:00'),
(536, 2, 24, '74368200.00000', '61947470.00000', '0.8300', 1, 2023, '2023-03-27 14:04:00'),
(537, 2, 24, '74368200.00000', '63036190.00000', '0.8500', 2, 2023, '2023-03-27 14:04:00'),
(538, 2, 25, '238665.58000', '93933.00000', '0.3900', 1, 2023, '2023-03-27 14:04:00'),
(539, 2, 25, '238665.58000', '191304.00000', '0.8000', 2, 2023, '2023-03-27 14:04:00'),
(540, 2, 26, '15443217.00000', '17873400.00000', '1.1600', 1, 2023, '2023-03-27 14:04:00'),
(541, 2, 26, '15443217.00000', '15532780.00000', '1.0100', 2, 2023, '2023-03-27 14:04:00'),
(542, 2, 27, '1870946.42000', '3240800.00000', '1.7300', 1, 2023, '2023-03-27 14:04:00'),
(543, 2, 27, '1870946.42000', '2965070.00000', '1.5800', 2, 2023, '2023-03-27 14:04:00'),
(544, 2, 28, '2556995.42000', '2306563.00000', '0.9000', 1, 2023, '2023-03-27 14:04:00'),
(545, 2, 28, '2556995.42000', '1796777.00000', '0.7000', 2, 2023, '2023-03-27 14:04:00'),
(546, 2, 29, '3666666.67000', '1525599.00000', '0.4200', 1, 2023, '2023-03-27 14:04:00'),
(547, 2, 29, '3666666.67000', '1870150.00000', '0.5100', 2, 2023, '2023-03-27 14:04:00'),
(548, 3, 30, '19609139.00000', '14536200.00000', '0.7400', 1, 2023, '2023-03-27 14:04:00'),
(549, 3, 30, '16579253.00000', '14100450.00000', '0.8500', 2, 2023, '2023-03-27 14:04:00'),
(550, 3, 31, '42268509.00000', '46996950.00000', '1.1100', 1, 2023, '2023-03-27 14:04:00'),
(551, 3, 31, '45312777.00000', '50292550.00000', '1.1100', 2, 2023, '2023-03-27 14:04:00'),
(552, 3, 32, '55382067.00000', '52944400.00000', '0.9600', 1, 2023, '2023-03-27 14:04:00'),
(553, 3, 32, '39456833.00000', '33261100.00000', '0.8400', 2, 2023, '2023-03-27 14:04:00'),
(554, 3, 33, '82561442.00000', '69058020.00000', '0.8400', 1, 2023, '2023-03-27 14:04:00'),
(555, 3, 33, '64956403.00000', '71473100.00000', '1.1000', 2, 2023, '2023-03-27 14:04:00'),
(556, 3, 34, '40854479.00000', '39261200.00000', '0.9600', 1, 2023, '2023-03-27 14:04:00'),
(557, 3, 34, '37783652.00000', '40855400.00000', '1.0800', 2, 2023, '2023-03-27 14:04:00'),
(558, 3, 35, '67437699.00000', '67103100.00000', '1.0000', 1, 2023, '2023-03-27 14:04:00'),
(559, 3, 35, '67759763.00000', '61223800.00000', '0.9000', 2, 2023, '2023-03-27 14:04:00'),
(560, 3, 36, '77999346.00000', '50990050.00000', '0.6500', 1, 2023, '2023-03-27 14:04:00'),
(561, 3, 36, '95305980.00000', '59931750.00000', '0.6300', 2, 2023, '2023-03-27 14:04:00'),
(562, 4, 37, '300000.00000', '39311.00000', '0.1300', 1, 2023, '2023-03-27 14:04:00'),
(563, 4, 37, '300000.00000', '4614.00000', '0.0200', 2, 2023, '2023-03-27 14:04:00'),
(564, 4, 38, '395600.00000', '0.00000', '0.0000', 1, 2023, '2023-03-27 14:04:00'),
(565, 4, 38, '395600.00000', '5412.00000', '0.0100', 2, 2023, '2023-03-27 14:04:00'),
(566, 4, 39, '513400.00000', '443507.00000', '0.8600', 1, 2023, '2023-03-27 14:04:00'),
(567, 4, 39, '513400.00000', '410681.00000', '0.8000', 2, 2023, '2023-03-27 14:04:00'),
(568, 5, 40, '170047.83000', '146423.00000', '0.8600', 1, 2023, '2023-03-27 14:04:00'),
(569, 5, 40, '170047.83000', '197728.00000', '1.1600', 2, 2023, '2023-03-27 14:04:00'),
(570, 5, 41, '13086.00000', '0.00000', '0.0000', 1, 2023, '2023-03-27 14:04:00'),
(571, 5, 41, '13086.00000', '0.00000', '0.0000', 2, 2023, '2023-03-27 14:04:00'),
(572, 5, 42, '2878030.39000', '378350.00000', '0.1300', 1, 2023, '2023-03-27 14:04:00'),
(573, 5, 42, '2878030.39000', '1441730.00000', '0.5000', 2, 2023, '2023-03-27 14:04:00'),
(574, 4, 38, '2000.00000', '4000.00000', '0.0000', 6, 2022, '2023-03-27 10:58:42'),
(575, 4, 38, '1000000.00000', '2000000.00000', '0.0000', 7, 2022, '2023-03-27 11:05:25'),
(576, 1, 2, '1000000.00000', '2000000.00000', '0.0000', 3, 2023, '2023-03-28 01:04:39');

-- --------------------------------------------------------

--
-- Table structure for table `tresultutilyear`
--

CREATE TABLE `tresultutilyear` (
  `id` int(11) NOT NULL,
  `compId` int(11) NOT NULL,
  `lineId` int(11) NOT NULL,
  `tCapacity` decimal(20,5) NOT NULL,
  `tResult` decimal(20,5) NOT NULL DEFAULT 0.00000,
  `tUtil` decimal(10,4) NOT NULL,
  `tYear` double NOT NULL,
  `dCreate` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tresultutilyear`
--

INSERT INTO `tresultutilyear` (`id`, `compId`, `lineId`, `tCapacity`, `tResult`, `tUtil`, `tYear`, `dCreate`) VALUES
(1, 1, 1, '177457021.00000', '116648280.00000', '0.6573', 2022, '2023-03-24 14:20:48'),
(2, 1, 1, '152106017.80000', '152064000.00000', '0.9997', 2022, '2023-03-24 14:20:48'),
(3, 1, 1, '185907355.00000', '149755200.00000', '0.8055', 2022, '2023-03-24 14:20:48'),
(4, 1, 1, '169006686.00000', '139752480.00000', '0.8269', 2022, '2023-03-24 14:20:48'),
(5, 1, 1, '152106017.80000', '120888720.00000', '0.7948', 2022, '2023-03-24 14:20:48'),
(6, 1, 1, '177457021.00000', '129367680.00000', '0.7290', 2022, '2023-03-24 14:20:48'),
(7, 1, 1, '177457021.00000', '125758920.00000', '0.7087', 2022, '2023-03-24 14:20:48'),
(8, 1, 1, '0.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(9, 1, 1, '0.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(10, 1, 1, '0.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(11, 1, 1, '0.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(12, 1, 1, '0.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(13, 1, 2, '24377419.00000', '28024240.00000', '1.1496', 2022, '2023-03-24 14:20:48'),
(14, 1, 2, '23158548.00000', '15106180.00000', '0.6523', 2022, '2023-03-24 14:20:48'),
(15, 1, 2, '26815161.00000', '18394680.00000', '0.6860', 2022, '2023-03-24 14:20:48'),
(16, 1, 2, '25596290.00000', '14406340.00000', '0.5628', 2022, '2023-03-24 14:20:48'),
(17, 1, 2, '20720806.00000', '11826300.00000', '0.5707', 2022, '2023-03-24 14:20:48'),
(18, 1, 2, '25596290.00000', '6850120.00000', '0.2676', 2022, '2023-03-24 14:20:48'),
(19, 1, 2, '25596290.00000', '8173320.00000', '0.3193', 2022, '2023-03-24 14:20:48'),
(20, 1, 2, '0.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(21, 1, 2, '0.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(22, 1, 2, '0.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(23, 1, 2, '0.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(24, 1, 2, '0.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(25, 1, 3, '37191516.00000', '44994430.00000', '1.2098', 2022, '2023-03-24 14:20:48'),
(26, 1, 3, '35331940.00000', '38869220.00000', '1.1001', 2022, '2023-03-24 14:20:48'),
(27, 1, 3, '40910668.00000', '28823470.00000', '0.7045', 2022, '2023-03-24 14:20:48'),
(28, 1, 3, '39051092.00000', '38136280.00000', '0.9766', 2022, '2023-03-24 14:20:48'),
(29, 1, 3, '31612789.00000', '32862460.00000', '1.0395', 2022, '2023-03-24 14:20:48'),
(30, 1, 3, '39051092.00000', '25172210.00000', '0.6446', 2022, '2023-03-24 14:20:48'),
(31, 1, 3, '39051092.00000', '26318520.00000', '0.6740', 2022, '2023-03-24 14:20:48'),
(32, 1, 3, '0.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(33, 1, 3, '0.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(34, 1, 3, '0.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(35, 1, 3, '0.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(36, 1, 3, '0.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(37, 1, 4, '46223898.00000', '28352146.00000', '0.6134', 2022, '2023-03-24 14:20:48'),
(38, 1, 4, '43912703.00000', '33012117.00000', '0.7518', 2022, '2023-03-24 14:20:48'),
(39, 1, 4, '50846288.00000', '27732050.00000', '0.5454', 2022, '2023-03-24 14:20:48'),
(40, 1, 4, '48535093.00000', '31454664.00000', '0.6481', 2022, '2023-03-24 14:20:48'),
(41, 1, 4, '39290314.00000', '26900424.00000', '0.6847', 2022, '2023-03-24 14:20:48'),
(42, 1, 4, '48535093.00000', '22335882.00000', '0.4602', 2022, '2023-03-24 14:20:48'),
(43, 1, 4, '48535093.00000', '20814438.00000', '0.4289', 2022, '2023-03-24 14:20:48'),
(44, 1, 4, '0.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(45, 1, 4, '0.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(46, 1, 4, '0.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(47, 1, 4, '0.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(48, 1, 4, '0.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(49, 1, 5, '4010346.00000', '2290658.00000', '0.5712', 2022, '2023-03-24 14:20:48'),
(50, 1, 5, '3809828.00000', '2383316.00000', '0.6256', 2022, '2023-03-24 14:20:48'),
(51, 1, 5, '4411380.00000', '2014139.00000', '0.4566', 2022, '2023-03-24 14:20:48'),
(52, 1, 5, '4210863.00000', '2623963.00000', '0.6231', 2022, '2023-03-24 14:20:48'),
(53, 1, 5, '3408794.00000', '1921461.00000', '0.5637', 2022, '2023-03-24 14:20:48'),
(54, 1, 5, '4210863.00000', '2309859.00000', '0.5485', 2022, '2023-03-24 14:20:48'),
(55, 1, 5, '4210863.00000', '2507863.00000', '0.5956', 2022, '2023-03-24 14:20:48'),
(56, 1, 5, '0.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(57, 1, 5, '0.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(58, 1, 5, '0.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(59, 1, 5, '0.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(60, 1, 5, '0.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(61, 1, 6, '775131.00000', '193805.00000', '0.2500', 2022, '2023-03-24 14:20:48'),
(62, 1, 6, '775131.00000', '342740.00000', '0.4422', 2022, '2023-03-24 14:20:48'),
(63, 1, 6, '897520.00000', '394765.00000', '0.4398', 2022, '2023-03-24 14:20:48'),
(64, 1, 6, '856724.00000', '436085.00000', '0.5090', 2022, '2023-03-24 14:20:48'),
(65, 1, 6, '693538.00000', '233930.00000', '0.3373', 2022, '2023-03-24 14:20:48'),
(66, 1, 6, '856724.00000', '233880.00000', '0.2730', 2022, '2023-03-24 14:20:48'),
(67, 1, 6, '856724.00000', '292315.00000', '0.3412', 2022, '2023-03-24 14:20:48'),
(68, 1, 6, '0.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(69, 1, 6, '0.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(70, 1, 6, '0.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(71, 1, 6, '0.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(72, 1, 6, '0.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(73, 1, 7, '662359.00000', '204010.00000', '0.3080', 2022, '2023-03-24 14:20:48'),
(74, 1, 7, '629241.00000', '188040.00000', '0.2988', 2022, '2023-03-24 14:20:48'),
(75, 1, 7, '728595.00000', '251480.00000', '0.3452', 2022, '2023-03-24 14:20:48'),
(76, 1, 7, '695477.00000', '200430.00000', '0.2882', 2022, '2023-03-24 14:20:48'),
(77, 1, 7, '563005.00000', '90650.00000', '0.1610', 2022, '2023-03-24 14:20:48'),
(78, 1, 7, '695477.00000', '213050.00000', '0.3063', 2022, '2023-03-24 14:20:48'),
(79, 1, 7, '695477.00000', '173570.00000', '0.2496', 2022, '2023-03-24 14:20:48'),
(80, 1, 7, '0.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(81, 1, 7, '0.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(82, 1, 7, '0.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(83, 1, 7, '0.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(84, 1, 7, '0.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(85, 1, 8, '5783494.00000', '2051000.00000', '0.3546', 2022, '2023-03-24 14:20:48'),
(86, 1, 8, '5494319.00000', '2169794.00000', '0.3949', 2022, '2023-03-24 14:20:48'),
(87, 1, 8, '6361844.00000', '1983777.00000', '0.3118', 2022, '2023-03-24 14:20:48'),
(88, 1, 8, '6072669.00000', '1897876.00000', '0.3125', 2022, '2023-03-24 14:20:48'),
(89, 1, 8, '4915970.00000', '1934886.00000', '0.3936', 2022, '2023-03-24 14:20:48'),
(90, 1, 8, '6072669.00000', '1618072.00000', '0.2665', 2022, '2023-03-24 14:20:48'),
(91, 1, 8, '6072669.00000', '2421424.00000', '0.3987', 2022, '2023-03-24 14:20:48'),
(92, 1, 8, '0.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(93, 1, 8, '0.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(94, 1, 8, '0.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(95, 1, 8, '0.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(96, 1, 8, '0.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(97, 1, 9, '16396956.00000', '17094700.00000', '1.0426', 2022, '2023-03-24 14:20:48'),
(98, 1, 9, '15577108.00000', '12031840.00000', '0.7724', 2022, '2023-03-24 14:20:48'),
(99, 1, 9, '18036651.00000', '15783904.00000', '0.8751', 2022, '2023-03-24 14:20:48'),
(100, 1, 9, '17216804.00000', '12970010.00000', '0.7533', 2022, '2023-03-24 14:20:48'),
(101, 1, 9, '13937412.00000', '11594470.00000', '0.8319', 2022, '2023-03-24 14:20:48'),
(102, 1, 9, '17216804.00000', '10875472.00000', '0.6317', 2022, '2023-03-24 14:20:48'),
(103, 1, 9, '17216804.00000', '13691702.00000', '0.7953', 2022, '2023-03-24 14:20:48'),
(104, 1, 9, '0.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(105, 1, 9, '0.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(106, 1, 9, '0.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(107, 1, 9, '0.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(108, 1, 9, '0.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(109, 1, 10, '0.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(110, 1, 10, '346927.00000', '12870.00000', '0.0371', 2022, '2023-03-24 14:20:48'),
(111, 1, 10, '765558.00000', '28400.00000', '0.0371', 2022, '2023-03-24 14:20:48'),
(112, 1, 10, '686387.00000', '25463.00000', '0.0371', 2022, '2023-03-24 14:20:48'),
(113, 1, 10, '345957.00000', '12834.00000', '0.0371', 2022, '2023-03-24 14:20:48'),
(114, 1, 10, '693261.00000', '25718.00000', '0.0371', 2022, '2023-03-24 14:20:48'),
(115, 1, 10, '231770.00000', '8598.00000', '0.0371', 2022, '2023-03-24 14:20:48'),
(116, 1, 10, '0.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(117, 1, 10, '0.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(118, 1, 10, '0.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(119, 1, 10, '0.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(120, 1, 10, '0.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(121, 1, 11, '14970171.00000', '6235400.00000', '0.4165', 2022, '2023-03-24 14:20:48'),
(122, 1, 11, '14221662.00000', '6961022.00000', '0.4895', 2022, '2023-03-24 14:20:48'),
(123, 1, 11, '16467188.00000', '6578190.00000', '0.3995', 2022, '2023-03-24 14:20:48'),
(124, 1, 11, '15718679.00000', '8419502.00000', '0.5356', 2022, '2023-03-24 14:20:48'),
(125, 1, 11, '12724645.00000', '6882466.00000', '0.5409', 2022, '2023-03-24 14:20:48'),
(126, 1, 11, '15718679.00000', '5266610.00000', '0.3351', 2022, '2023-03-24 14:20:48'),
(127, 1, 11, '15718679.00000', '5661190.00000', '0.3602', 2022, '2023-03-24 14:20:48'),
(128, 1, 11, '0.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(129, 1, 11, '0.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(130, 1, 11, '0.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(131, 1, 11, '0.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(132, 1, 11, '0.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(133, 1, 12, '44788211.00000', '23197250.00000', '0.5179', 2022, '2023-03-24 14:20:48'),
(134, 1, 12, '42565471.00000', '21796975.00000', '0.5121', 2022, '2023-03-24 14:20:48'),
(135, 1, 12, '49289260.00000', '32496940.00000', '0.6593', 2022, '2023-03-24 14:20:48'),
(136, 1, 12, '47233225.00000', '25161060.00000', '0.5327', 2022, '2023-03-24 14:20:48'),
(137, 1, 12, '38342265.00000', '17972540.00000', '0.4687', 2022, '2023-03-24 14:20:48'),
(138, 1, 12, '47010951.00000', '13152960.00000', '0.2798', 2022, '2023-03-24 14:20:48'),
(139, 1, 12, '47010951.00000', '29188760.00000', '0.6209', 2022, '2023-03-24 14:20:48'),
(140, 1, 13, '0.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(141, 1, 13, '0.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(142, 1, 13, '0.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(143, 1, 13, '0.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(144, 1, 13, '0.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(145, 1, 13, '0.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(146, 1, 13, '0.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(147, 1, 14, '0.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(148, 1, 14, '0.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(149, 1, 14, '0.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(150, 1, 14, '0.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(151, 1, 14, '0.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(152, 1, 14, '0.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(153, 1, 14, '0.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(154, 2, 15, '65500000.00000', '31568112.00000', '0.4820', 2022, '2023-03-24 14:20:48'),
(155, 2, 15, '65500000.00000', '35939420.00000', '0.5487', 2022, '2023-03-24 14:20:48'),
(156, 2, 15, '65500000.00000', '41300686.00000', '0.6305', 2022, '2023-03-24 14:20:48'),
(157, 2, 15, '65500000.00000', '43901752.00000', '0.6703', 2022, '2023-03-24 14:20:48'),
(158, 2, 15, '65500000.00000', '38841230.00000', '0.5930', 2022, '2023-03-24 14:20:48'),
(159, 2, 15, '65500000.00000', '44705220.00000', '0.6825', 2022, '2023-03-24 14:20:48'),
(160, 2, 15, '65499999.96000', '41360550.00000', '0.6315', 2022, '2023-03-24 14:20:48'),
(161, 2, 15, '65499999.96000', '42187550.00000', '0.6441', 2022, '2023-03-24 14:20:48'),
(162, 2, 15, '65499999.96000', '43597830.00000', '0.6656', 2022, '2023-03-24 14:20:48'),
(163, 2, 15, '65499999.96000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(164, 2, 15, '65499999.96000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(165, 2, 15, '65499999.96000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(166, 2, 16, '1697040.00000', '7195.00000', '0.0042', 2022, '2023-03-24 14:20:48'),
(167, 2, 16, '1697040.00000', '4760.00000', '0.0028', 2022, '2023-03-24 14:20:48'),
(168, 2, 16, '1697040.00000', '4779.00000', '0.0028', 2022, '2023-03-24 14:20:48'),
(169, 2, 16, '141420.00000', '9644.00000', '0.0682', 2022, '2023-03-24 14:20:48'),
(170, 2, 16, '141420.00000', '7228.00000', '0.0511', 2022, '2023-03-24 14:20:48'),
(171, 2, 16, '141420.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(172, 2, 16, '141420.00000', '4734.00000', '0.0335', 2022, '2023-03-24 14:20:48'),
(173, 2, 16, '141420.00000', '16777.00000', '0.1186', 2022, '2023-03-24 14:20:48'),
(174, 2, 16, '141420.00000', '9608.00000', '0.0679', 2022, '2023-03-24 14:20:48'),
(175, 2, 16, '141420.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(176, 2, 16, '141420.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(177, 2, 16, '141420.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(178, 2, 17, '101188.00000', '22755.00000', '0.2249', 2022, '2023-03-24 14:20:48'),
(179, 2, 17, '101188.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(180, 2, 17, '101188.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(181, 2, 17, '101188.00000', '68965.00000', '0.6816', 2022, '2023-03-24 14:20:48'),
(182, 2, 17, '101188.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(183, 2, 17, '101188.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(184, 2, 17, '101188.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(185, 2, 17, '101188.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(186, 2, 17, '101188.00000', '22905.00000', '0.2264', 2022, '2023-03-24 14:20:48'),
(187, 2, 17, '101188.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(188, 2, 17, '101188.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(189, 2, 17, '101188.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(190, 2, 18, '33150000.00000', '12863194.00000', '0.3880', 2022, '2023-03-24 14:20:48'),
(191, 2, 18, '33150000.00000', '22292594.00000', '0.6725', 2022, '2023-03-24 14:20:48'),
(192, 2, 18, '33150000.00000', '23313338.00000', '0.7033', 2022, '2023-03-24 14:20:48'),
(193, 2, 18, '33150000.00000', '32028912.00000', '0.9662', 2022, '2023-03-24 14:20:48'),
(194, 2, 18, '33150000.00000', '27481396.00000', '0.8290', 2022, '2023-03-24 14:20:48'),
(195, 2, 18, '33150000.00000', '33413700.00000', '1.0080', 2022, '2023-03-24 14:20:48'),
(196, 2, 18, '33150000.00000', '38233010.00000', '1.1533', 2022, '2023-03-24 14:20:48'),
(197, 2, 18, '33150000.00000', '37399542.00000', '1.1282', 2022, '2023-03-24 14:20:48'),
(198, 2, 18, '33150000.00000', '38139170.00000', '1.1505', 2022, '2023-03-24 14:20:48'),
(199, 2, 18, '33150000.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(200, 2, 18, '33150000.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(201, 2, 18, '33150000.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(202, 2, 19, '3600000.00000', '634080.00000', '0.1761', 2022, '2023-03-24 14:20:48'),
(203, 2, 19, '3600000.00000', '219570.00000', '0.0610', 2022, '2023-03-24 14:20:48'),
(204, 2, 19, '3600000.00000', '650370.00000', '0.1807', 2022, '2023-03-24 14:20:48'),
(205, 2, 19, '3600000.00000', '1032120.00000', '0.2867', 2022, '2023-03-24 14:20:48'),
(206, 2, 19, '3600000.00000', '381630.00000', '0.1060', 2022, '2023-03-24 14:20:48'),
(207, 2, 19, '3600000.00000', '586230.00000', '0.1628', 2022, '2023-03-24 14:20:48'),
(208, 2, 19, '3600000.00000', '1200360.00000', '0.3334', 2022, '2023-03-24 14:20:48'),
(209, 2, 19, '3600000.00000', '419280.00000', '0.1165', 2022, '2023-03-24 14:20:48'),
(210, 2, 19, '3600000.00000', '442380.00000', '0.1229', 2022, '2023-03-24 14:20:48'),
(211, 2, 19, '3600000.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(212, 2, 19, '3600000.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(213, 2, 19, '3600000.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(214, 2, 20, '1650000.00000', '208707.00000', '0.1265', 2022, '2023-03-24 14:20:48'),
(215, 2, 20, '1650000.00000', '232661.00000', '0.1410', 2022, '2023-03-24 14:20:48'),
(216, 2, 20, '1650000.00000', '813084.00000', '0.4928', 2022, '2023-03-24 14:20:48'),
(217, 2, 20, '1650000.00000', '1105855.00000', '0.6702', 2022, '2023-03-24 14:20:48'),
(218, 2, 20, '1650000.00000', '317769.00000', '0.1926', 2022, '2023-03-24 14:20:48'),
(219, 2, 20, '1650000.00000', '1569553.00000', '0.9512', 2022, '2023-03-24 14:20:48'),
(220, 2, 20, '1650000.00000', '1090289.00000', '0.6608', 2022, '2023-03-24 14:20:48'),
(221, 2, 20, '1650000.00000', '1169216.00000', '0.7086', 2022, '2023-03-24 14:20:48'),
(222, 2, 20, '1650000.00000', '890610.00000', '0.5398', 2022, '2023-03-24 14:20:48'),
(223, 2, 20, '1650000.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(224, 2, 20, '1650000.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(225, 2, 20, '1650000.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(226, 2, 21, '115000.00000', '140755.00000', '1.2240', 2022, '2023-03-24 14:20:48'),
(227, 2, 21, '115000.00000', '120181.00000', '1.0451', 2022, '2023-03-24 14:20:48'),
(228, 2, 21, '115000.00000', '96116.00000', '0.8358', 2022, '2023-03-24 14:20:48'),
(229, 2, 21, '115000.00000', '145205.00000', '1.2627', 2022, '2023-03-24 14:20:48'),
(230, 2, 21, '115000.00000', '120380.00000', '1.0468', 2022, '2023-03-24 14:20:48'),
(231, 2, 21, '115000.00000', '95518.00000', '0.8306', 2022, '2023-03-24 14:20:48'),
(232, 2, 21, '115000.00000', '104015.00000', '0.9045', 2022, '2023-03-24 14:20:48'),
(233, 2, 21, '115000.00000', '68316.00000', '0.5941', 2022, '2023-03-24 14:20:48'),
(234, 2, 21, '115000.00000', '134713.00000', '1.1714', 2022, '2023-03-24 14:20:48'),
(235, 2, 21, '115000.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(236, 2, 21, '115000.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(237, 2, 21, '115000.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(238, 2, 22, '71076517.00000', '40489000.00000', '0.5697', 2022, '2023-03-24 14:20:48'),
(239, 2, 22, '71076517.00000', '51727000.00000', '0.7278', 2022, '2023-03-24 14:20:48'),
(240, 2, 22, '71076517.00000', '69069900.00000', '0.9718', 2022, '2023-03-24 14:20:48'),
(241, 2, 22, '71076517.00000', '69719300.00000', '0.9809', 2022, '2023-03-24 14:20:48'),
(242, 2, 22, '71076517.00000', '75319700.00000', '1.0597', 2022, '2023-03-24 14:20:48'),
(243, 2, 22, '71076517.00000', '77545200.00000', '1.0910', 2022, '2023-03-24 14:20:48'),
(244, 2, 22, '71076517.00000', '63030300.00000', '0.8868', 2022, '2023-03-24 14:20:48'),
(245, 2, 22, '71076517.00000', '73364600.00000', '1.0322', 2022, '2023-03-24 14:20:48'),
(246, 2, 22, '71076517.00000', '75441500.00000', '1.0614', 2022, '2023-03-24 14:20:48'),
(247, 2, 22, '71076517.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(248, 2, 22, '71076517.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(249, 2, 22, '71076517.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(250, 2, 23, '297917.00000', '9739.00000', '0.0327', 2022, '2023-03-24 14:20:48'),
(251, 2, 23, '297917.00000', '3098.00000', '0.0104', 2022, '2023-03-24 14:20:48'),
(252, 2, 23, '297917.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(253, 2, 23, '297917.00000', '3098.00000', '0.0104', 2022, '2023-03-24 14:20:48'),
(254, 2, 23, '297917.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(255, 2, 23, '297917.00000', '3264.00000', '0.0110', 2022, '2023-03-24 14:20:48'),
(256, 2, 23, '297917.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(257, 2, 23, '297917.00000', '3224.00000', '0.0108', 2022, '2023-03-24 14:20:48'),
(258, 2, 23, '297917.00000', '9739.00000', '0.0327', 2022, '2023-03-24 14:20:48'),
(259, 2, 23, '297917.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(260, 2, 23, '297917.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(261, 2, 23, '297917.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(262, 2, 24, '60148500.00000', '60830140.00000', '1.0113', 2022, '2023-03-24 14:20:48'),
(263, 2, 24, '60148500.00000', '52797760.00000', '0.8778', 2022, '2023-03-24 14:20:48'),
(264, 2, 24, '60148500.00000', '63416310.00000', '1.0543', 2022, '2023-03-24 14:20:48'),
(265, 2, 24, '60148500.00000', '63096570.00000', '1.0490', 2022, '2023-03-24 14:20:48'),
(266, 2, 24, '60148500.00000', '36516230.00000', '0.6071', 2022, '2023-03-24 14:20:48'),
(267, 2, 24, '60148500.00000', '61487990.00000', '1.0223', 2022, '2023-03-24 14:20:48'),
(268, 2, 24, '60148500.00000', '67985370.00000', '1.1303', 2022, '2023-03-24 14:20:48'),
(269, 2, 24, '60148500.00000', '66792720.00000', '1.1105', 2022, '2023-03-24 14:20:48'),
(270, 2, 24, '60148500.00000', '66345880.00000', '1.1030', 2022, '2023-03-24 14:20:48'),
(271, 2, 24, '60148500.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(272, 2, 24, '60148500.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(273, 2, 24, '60148500.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(274, 2, 25, '223052.00000', '48920.00000', '0.2193', 2022, '2023-03-24 14:20:48'),
(275, 2, 25, '223052.00000', '175601.00000', '0.7873', 2022, '2023-03-24 14:20:48'),
(276, 2, 25, '223052.00000', '265486.00000', '1.1902', 2022, '2023-03-24 14:20:48'),
(277, 2, 25, '223052.00000', '235594.00000', '1.0562', 2022, '2023-03-24 14:20:48'),
(278, 2, 25, '223052.00000', '175388.00000', '0.7863', 2022, '2023-03-24 14:20:48'),
(279, 2, 25, '223052.00000', '143414.00000', '0.6430', 2022, '2023-03-24 14:20:48'),
(280, 2, 25, '223052.00000', '159158.00000', '0.7135', 2022, '2023-03-24 14:20:48'),
(281, 2, 25, '223052.00000', '178641.00000', '0.8009', 2022, '2023-03-24 14:20:48'),
(282, 2, 25, '223052.00000', '205302.00000', '0.9204', 2022, '2023-03-24 14:20:48'),
(283, 2, 25, '223052.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(284, 2, 25, '223052.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(285, 2, 25, '223052.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(286, 2, 26, '14432913.00000', '16369100.00000', '1.1342', 2022, '2023-03-24 14:20:48'),
(287, 2, 26, '14432913.00000', '10901700.00000', '0.7553', 2022, '2023-03-24 14:20:48'),
(288, 2, 26, '14432913.00000', '15239450.00000', '1.0559', 2022, '2023-03-24 14:20:48'),
(289, 2, 26, '14432913.00000', '16646350.00000', '1.1534', 2022, '2023-03-24 14:20:48'),
(290, 2, 26, '14432913.00000', '13843230.00000', '0.9591', 2022, '2023-03-24 14:20:48'),
(291, 2, 26, '14432913.00000', '22222230.00000', '1.5397', 2022, '2023-03-24 14:20:48'),
(292, 2, 26, '14432913.00000', '19905850.00000', '1.3792', 2022, '2023-03-24 14:20:48'),
(293, 2, 26, '14432913.00000', '16460660.00000', '1.1405', 2022, '2023-03-24 14:20:48'),
(294, 2, 26, '14432913.00000', '17726740.00000', '1.2282', 2022, '2023-03-24 14:20:48'),
(295, 2, 26, '14432913.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(296, 2, 26, '14432913.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(297, 2, 26, '14432913.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(298, 2, 27, '1748548.00000', '1575790.00000', '0.9012', 2022, '2023-03-24 14:20:48'),
(299, 2, 27, '1748548.00000', '1434590.00000', '0.8204', 2022, '2023-03-24 14:20:48'),
(300, 2, 27, '1748548.00000', '1552380.00000', '0.8878', 2022, '2023-03-24 14:20:48'),
(301, 2, 27, '1748548.00000', '1724810.00000', '0.9864', 2022, '2023-03-24 14:20:48'),
(302, 2, 27, '1748548.00000', '1505230.00000', '0.8608', 2022, '2023-03-24 14:20:48'),
(303, 2, 27, '1748548.00000', '3041890.00000', '1.7397', 2022, '2023-03-24 14:20:48'),
(304, 2, 27, '1748548.00000', '2714150.00000', '1.5522', 2022, '2023-03-24 14:20:48'),
(305, 2, 27, '1748548.00000', '1752050.00000', '1.0020', 2022, '2023-03-24 14:20:48'),
(306, 2, 27, '1748548.00000', '1753700.00000', '1.0029', 2022, '2023-03-24 14:20:48'),
(307, 2, 27, '1748548.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(308, 2, 27, '1748548.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(309, 2, 27, '1748548.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(310, 2, 28, '2033812.00000', '1600102.00000', '0.7868', 2022, '2023-03-24 14:20:48'),
(311, 2, 28, '2033812.00000', '1212779.00000', '0.5963', 2022, '2023-03-24 14:20:48'),
(312, 2, 28, '2033812.00000', '1766615.00000', '0.8686', 2022, '2023-03-24 14:20:48'),
(313, 2, 28, '2033812.00000', '2033989.00000', '1.0001', 2022, '2023-03-24 14:20:48'),
(314, 2, 28, '2033812.00000', '1404198.00000', '0.6904', 2022, '2023-03-24 14:20:48'),
(315, 2, 28, '2033812.00000', '1643806.00000', '0.8082', 2022, '2023-03-24 14:20:48'),
(316, 2, 28, '2033812.00000', '2855784.00000', '1.4042', 2022, '2023-03-24 14:20:48'),
(317, 2, 28, '2033812.00000', '2711027.00000', '1.3330', 2022, '2023-03-24 14:20:48'),
(318, 2, 28, '2033812.00000', '2180655.00000', '1.0722', 2022, '2023-03-24 14:20:48'),
(319, 2, 28, '2033812.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(320, 2, 28, '2033812.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(321, 2, 28, '2033812.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(322, 2, 29, '3424403.00000', '3281038.00000', '0.9581', 2022, '2023-03-24 14:20:48'),
(323, 2, 29, '3424403.00000', '3036430.00000', '0.8867', 2022, '2023-03-24 14:20:48'),
(324, 2, 29, '3424403.00000', '4173584.00000', '1.2188', 2022, '2023-03-24 14:20:48'),
(325, 2, 29, '3424403.00000', '3425612.00000', '1.0004', 2022, '2023-03-24 14:20:48'),
(326, 2, 29, '3424403.00000', '2858246.00000', '0.8347', 2022, '2023-03-24 14:20:48'),
(327, 2, 29, '3424403.00000', '3467144.00000', '1.0125', 2022, '2023-03-24 14:20:48'),
(328, 2, 29, '3424403.00000', '3259678.00000', '0.9519', 2022, '2023-03-24 14:20:48'),
(329, 2, 29, '3424403.00000', '2657697.00000', '0.7761', 2022, '2023-03-24 14:20:48'),
(330, 2, 29, '3424403.00000', '2153014.00000', '0.6287', 2022, '2023-03-24 14:20:48'),
(331, 2, 29, '3424403.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(332, 2, 29, '3424403.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(333, 2, 29, '3424403.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(334, 3, 30, '15936820.00000', '14931550.00000', '0.9369', 2022, '2023-03-24 14:20:48'),
(335, 3, 30, '13039197.00000', '14273400.00000', '1.0947', 2022, '2023-03-24 14:20:48'),
(336, 3, 30, '16079432.00000', '15928400.00000', '0.9906', 2022, '2023-03-24 14:20:48'),
(337, 3, 30, '12212247.00000', '8206500.00000', '0.6720', 2022, '2023-03-24 14:20:48'),
(338, 3, 30, '14768873.00000', '8835000.00000', '0.5982', 2022, '2023-03-24 14:20:48'),
(339, 3, 30, '14921997.00000', '10124200.00000', '0.6785', 2022, '2023-03-24 14:20:48'),
(340, 3, 30, '16403440.00000', '16097000.00000', '0.9813', 2022, '2023-03-24 14:20:48'),
(341, 3, 30, '15553934.00000', '16744200.00000', '1.0765', 2022, '2023-03-24 14:20:48'),
(342, 3, 30, '15372915.00000', '14421250.00000', '0.9381', 2022, '2023-03-24 14:20:48'),
(343, 3, 30, '0.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(344, 3, 30, '0.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(345, 3, 30, '0.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(346, 3, 31, '27443006.00000', '35109050.00000', '1.2793', 2022, '2023-03-24 14:20:48'),
(347, 3, 31, '35816040.00000', '33399400.00000', '0.9325', 2022, '2023-03-24 14:20:48'),
(348, 3, 31, '39457771.00000', '36344750.00000', '0.9211', 2022, '2023-03-24 14:20:48'),
(349, 3, 31, '25439137.00000', '37819800.00000', '1.4867', 2022, '2023-03-24 14:20:48'),
(350, 3, 31, '24976582.00000', '33494050.00000', '1.3410', 2022, '2023-03-24 14:20:48'),
(351, 3, 31, '49889326.00000', '52240700.00000', '1.0471', 2022, '2023-03-24 14:20:48'),
(352, 3, 31, '52228702.00000', '56110350.00000', '1.0743', 2022, '2023-03-24 14:20:48'),
(353, 3, 31, '44849355.00000', '49737200.00000', '1.1090', 2022, '2023-03-24 14:20:48'),
(354, 3, 31, '43855739.00000', '48008900.00000', '1.0947', 2022, '2023-03-24 14:20:48'),
(355, 3, 31, '0.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(356, 3, 31, '0.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(357, 3, 31, '0.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(358, 3, 32, '41639075.00000', '74260500.00000', '1.7834', 2022, '2023-03-24 14:20:48'),
(359, 3, 32, '39350994.00000', '58484300.00000', '1.4862', 2022, '2023-03-24 14:20:48'),
(360, 3, 32, '34003757.00000', '55338080.00000', '1.6274', 2022, '2023-03-24 14:20:48'),
(361, 3, 32, '34709583.00000', '64700400.00000', '1.8641', 2022, '2023-03-24 14:20:48'),
(362, 3, 32, '43446742.00000', '50470500.00000', '1.1617', 2022, '2023-03-24 14:20:48'),
(363, 3, 32, '45006794.00000', '46694000.00000', '1.0375', 2022, '2023-03-24 14:20:48'),
(364, 3, 32, '41495657.00000', '44714000.00000', '1.0776', 2022, '2023-03-24 14:20:48'),
(365, 3, 32, '45389535.00000', '42032900.00000', '0.9260', 2022, '2023-03-24 14:20:48'),
(366, 3, 32, '56823979.00000', '56483600.00000', '0.9940', 2022, '2023-03-24 14:20:48'),
(367, 3, 32, '0.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(368, 3, 32, '0.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(369, 3, 32, '0.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(370, 3, 33, '76797635.00000', '90906750.00000', '1.1837', 2022, '2023-03-24 14:20:48'),
(371, 3, 33, '70092802.00000', '58522420.00000', '0.8349', 2022, '2023-03-24 14:20:48'),
(372, 3, 33, '61372413.00000', '71540450.00000', '1.1657', 2022, '2023-03-24 14:20:48'),
(373, 3, 33, '51130467.00000', '76785900.00000', '1.5018', 2022, '2023-03-24 14:20:48'),
(374, 3, 33, '71601255.00000', '70182650.00000', '0.9802', 2022, '2023-03-24 14:20:48'),
(375, 3, 33, '84683933.00000', '89285220.00000', '1.0543', 2022, '2023-03-24 14:20:48'),
(376, 3, 33, '72537175.00000', '70216500.00000', '0.9680', 2022, '2023-03-24 14:20:48'),
(377, 3, 33, '70067356.00000', '91596100.00000', '1.3073', 2022, '2023-03-24 14:20:48'),
(378, 3, 33, '75431315.00000', '89635840.00000', '1.1883', 2022, '2023-03-24 14:20:48'),
(379, 3, 33, '0.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(380, 3, 33, '0.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(381, 3, 33, '0.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(382, 3, 34, '43766056.00000', '41631300.00000', '0.9512', 2022, '2023-03-24 14:20:48'),
(383, 3, 34, '38348873.00000', '31064300.00000', '0.8100', 2022, '2023-03-24 14:20:48'),
(384, 3, 34, '44142565.00000', '40134000.00000', '0.9092', 2022, '2023-03-24 14:20:48'),
(385, 3, 34, '37165079.00000', '34471800.00000', '0.9275', 2022, '2023-03-24 14:20:48'),
(386, 3, 34, '29180409.00000', '29275200.00000', '1.0032', 2022, '2023-03-24 14:20:48'),
(387, 3, 34, '42239355.00000', '40005500.00000', '0.9471', 2022, '2023-03-24 14:20:48'),
(388, 3, 34, '40403998.00000', '31686800.00000', '0.7842', 2022, '2023-03-24 14:20:48'),
(389, 3, 34, '35272163.00000', '31465400.00000', '0.8921', 2022, '2023-03-24 14:20:48'),
(390, 3, 34, '38874635.00000', '40395200.00000', '1.0391', 2022, '2023-03-24 14:20:48'),
(391, 3, 34, '0.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(392, 3, 34, '0.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(393, 3, 34, '0.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(394, 3, 35, '57843732.00000', '75870000.00000', '1.3116', 2022, '2023-03-24 14:20:48'),
(395, 3, 35, '58900996.00000', '91927550.00000', '1.5607', 2022, '2023-03-24 14:20:48'),
(396, 3, 35, '111677905.00000', '128204500.00000', '1.1480', 2022, '2023-03-24 14:20:48'),
(397, 3, 35, '111503775.00000', '59076600.00000', '0.5298', 2022, '2023-03-24 14:20:48'),
(398, 3, 35, '93888009.00000', '60140200.00000', '0.6406', 2022, '2023-03-24 14:20:48'),
(399, 3, 35, '70909132.00000', '64950900.00000', '0.9160', 2022, '2023-03-24 14:20:48'),
(400, 3, 35, '70909132.00000', '75733400.00000', '1.0680', 2022, '2023-03-24 14:20:48'),
(401, 3, 35, '73542486.00000', '75909300.00000', '1.0322', 2022, '2023-03-24 14:20:48'),
(402, 3, 35, '74861378.00000', '68970400.00000', '0.9213', 2022, '2023-03-24 14:20:48'),
(403, 3, 35, '0.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(404, 3, 35, '0.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(405, 3, 35, '0.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(406, 3, 36, '28295635.00000', '33153100.00000', '1.1717', 2022, '2023-03-24 14:20:48'),
(407, 3, 36, '36693333.00000', '970200.00000', '0.0264', 2022, '2023-03-24 14:20:48'),
(408, 3, 36, '38350452.00000', '19074300.00000', '0.4974', 2022, '2023-03-24 14:20:48'),
(409, 3, 36, '69291517.00000', '64401200.00000', '0.9294', 2022, '2023-03-24 14:20:48'),
(410, 3, 36, '86426191.00000', '46572050.00000', '0.5389', 2022, '2023-03-24 14:20:48'),
(411, 3, 36, '83279197.00000', '52916150.00000', '0.6354', 2022, '2023-03-24 14:20:48'),
(412, 3, 36, '83279197.00000', '54054650.00000', '0.6491', 2022, '2023-03-24 14:20:48'),
(413, 3, 36, '84446572.00000', '58861100.00000', '0.6970', 2022, '2023-03-24 14:20:48'),
(414, 3, 36, '77841069.00000', '54193250.00000', '0.6962', 2022, '2023-03-24 14:20:48'),
(415, 3, 36, '0.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(416, 3, 36, '0.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(417, 3, 36, '0.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(418, 4, 37, '300000.00000', '80841.00000', '0.2695', 2022, '2023-03-24 14:20:48'),
(419, 4, 37, '300000.00000', '67933.00000', '0.2264', 2022, '2023-03-24 14:20:48'),
(420, 4, 37, '300000.00000', '114077.00000', '0.3803', 2022, '2023-03-24 14:20:48'),
(421, 4, 37, '300000.00000', '148623.00000', '0.4954', 2022, '2023-03-24 14:20:48'),
(422, 4, 37, '300000.00000', '55369.00000', '0.1846', 2022, '2023-03-24 14:20:48'),
(423, 4, 37, '300000.00000', '110515.00000', '0.3684', 2022, '2023-03-24 14:20:48'),
(424, 4, 37, '300000.00000', '108868.00000', '0.3629', 2022, '2023-03-24 14:20:48'),
(426, 4, 37, '0.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(427, 4, 37, '0.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(428, 4, 37, '0.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(429, 4, 37, '0.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(430, 4, 38, '395600.00000', '7674.00000', '0.0194', 2022, '2023-03-24 14:20:48'),
(431, 4, 38, '395600.00000', '10117.00000', '0.0256', 2022, '2023-03-24 14:20:48'),
(432, 4, 38, '395600.00000', '5190.00000', '0.0131', 2022, '2023-03-24 14:20:48'),
(433, 4, 38, '395600.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(434, 4, 38, '395600.00000', '15885.00000', '0.0402', 2022, '2023-03-24 14:20:48'),
(437, 4, 38, '0.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(438, 4, 38, '0.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(439, 4, 38, '0.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(440, 4, 38, '0.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(441, 4, 38, '0.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(442, 4, 39, '513400.00000', '376126.00000', '0.7326', 2022, '2023-03-24 14:20:48'),
(443, 4, 39, '513400.00000', '410158.00000', '0.7989', 2022, '2023-03-24 14:20:48'),
(444, 4, 39, '513400.00000', '321813.00000', '0.6268', 2022, '2023-03-24 14:20:48'),
(445, 4, 39, '513400.00000', '465827.00000', '0.9073', 2022, '2023-03-24 14:20:48'),
(446, 4, 39, '513400.00000', '287486.00000', '0.5600', 2022, '2023-03-24 14:20:48'),
(447, 4, 39, '513400.00000', '442457.00000', '0.8618', 2022, '2023-03-24 14:20:48'),
(449, 4, 39, '0.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(450, 4, 39, '0.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(451, 4, 39, '0.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(452, 4, 39, '0.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(453, 4, 39, '0.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(454, 5, 40, '170048.00000', '109334.00000', '0.6430', 2022, '2023-03-24 14:20:48'),
(455, 5, 40, '170048.00000', '165459.00000', '0.9730', 2022, '2023-03-24 14:20:48'),
(456, 5, 40, '170048.00000', '71868.00000', '0.4226', 2022, '2023-03-24 14:20:48'),
(457, 5, 40, '170048.00000', '98774.00000', '0.5809', 2022, '2023-03-24 14:20:48'),
(458, 5, 40, '170048.00000', '117495.00000', '0.6910', 2022, '2023-03-24 14:20:48'),
(459, 5, 40, '170048.00000', '173519.00000', '1.0204', 2022, '2023-03-24 14:20:48'),
(460, 5, 40, '170048.00000', '178802.00000', '1.0515', 2022, '2023-03-24 14:20:48'),
(461, 5, 40, '170048.00000', '161445.00000', '0.9494', 2022, '2023-03-24 14:20:48'),
(462, 5, 40, '170048.00000', '140735.00000', '0.8276', 2022, '2023-03-24 14:20:48'),
(463, 5, 40, '0.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(464, 5, 40, '0.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(465, 5, 40, '0.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(466, 5, 41, '13086.00000', '6041.00000', '0.4616', 2022, '2023-03-24 14:20:48'),
(467, 5, 41, '13086.00000', '6774.00000', '0.5177', 2022, '2023-03-24 14:20:48'),
(468, 5, 41, '13086.00000', '17316.00000', '1.3232', 2022, '2023-03-24 14:20:48'),
(469, 5, 41, '13086.00000', '14647.00000', '1.1193', 2022, '2023-03-24 14:20:48'),
(470, 5, 41, '13086.00000', '1685.00000', '0.1288', 2022, '2023-03-24 14:20:48'),
(471, 5, 41, '13086.00000', '9155.00000', '0.6996', 2022, '2023-03-24 14:20:48'),
(472, 5, 41, '13086.00000', '11942.00000', '0.9126', 2022, '2023-03-24 14:20:48'),
(473, 5, 41, '13086.00000', '4500.00000', '0.3439', 2022, '2023-03-24 14:20:48'),
(474, 5, 41, '13086.00000', '3392.00000', '0.2592', 2022, '2023-03-24 14:20:48'),
(475, 5, 41, '0.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(476, 5, 41, '0.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(477, 5, 41, '0.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(478, 5, 42, '2878030.00000', '1435030.00000', '0.4986', 2022, '2023-03-24 14:20:48'),
(479, 5, 42, '2878030.00000', '1805590.00000', '0.6274', 2022, '2023-03-24 14:20:48'),
(480, 5, 42, '2878030.00000', '1691660.00000', '0.5878', 2022, '2023-03-24 14:20:48'),
(481, 5, 42, '2878030.00000', '1969880.00000', '0.6845', 2022, '2023-03-24 14:20:48'),
(482, 5, 42, '2878030.00000', '1592080.00000', '0.5532', 2022, '2023-03-24 14:20:48'),
(483, 5, 42, '2878030.00000', '1901334.00000', '0.6606', 2022, '2023-03-24 14:20:48'),
(484, 5, 42, '2878030.00000', '1863440.00000', '0.6475', 2022, '2023-03-24 14:20:48'),
(485, 5, 42, '2878030.00000', '1643760.00000', '0.5711', 2022, '2023-03-24 14:20:48'),
(486, 5, 42, '2878030.00000', '2207400.00000', '0.7670', 2022, '2023-03-24 14:20:48'),
(487, 5, 42, '0.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(488, 5, 42, '0.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(489, 5, 42, '0.00000', '0.00000', '0.0000', 2022, '2023-03-24 14:20:48'),
(492, 4, 37, '1000.00000', '500.00000', '0.0000', 2022, '2023-03-26 10:39:47'),
(493, 4, 38, '1000.00000', '500.00000', '0.0000', 2022, '2023-03-26 10:59:00'),
(494, 4, 38, '1000.00000', '1100.00000', '0.0000', 2022, '2023-03-26 10:59:16'),
(496, 4, 39, '1000.00000', '1200.00000', '0.0000', 2022, '2023-03-26 11:04:26');

-- --------------------------------------------------------

--
-- Stand-in structure for view `vdata`
-- (See below for the actual view)
--
CREATE TABLE `vdata` (
`id` int(11)
,`vKet` varchar(255)
,`dept` varchar(20)
,`tYear` double
,`result` blob
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vdataraw`
-- (See below for the actual view)
--
CREATE TABLE `vdataraw` (
`id` int(11)
,`compId` int(11)
,`vKet` varchar(255)
,`dept` varchar(20)
,`tYear` double
,`mJan` decimal(42,5)
,`mFeb` decimal(42,5)
,`mMar` decimal(42,5)
,`mApr` decimal(42,5)
,`mMei` decimal(42,5)
,`mJun` decimal(42,5)
,`mJul` decimal(42,5)
,`mAug` decimal(42,5)
,`mSep` decimal(42,5)
,`mOct` decimal(42,5)
,`mNov` decimal(42,5)
,`mDec` decimal(42,5)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vdata_site`
-- (See below for the actual view)
--
CREATE TABLE `vdata_site` (
`id` int(11)
,`vKet` varchar(255)
,`dept` varchar(20)
,`tYear` double
,`compId` int(11)
,`result` blob
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vgroup2_result_util`
-- (See below for the actual view)
--
CREATE TABLE `vgroup2_result_util` (
`group2` varchar(100)
,`compId` int(2)
,`tYear` double
,`tCapacity` decimal(42,5)
,`tResult` decimal(42,5)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vgroup_year_util`
-- (See below for the actual view)
--
CREATE TABLE `vgroup_year_util` (
`lineId` int(11)
,`group1` varchar(100)
,`group2` varchar(100)
,`compId` int(2)
,`tYear` double
,`tCapacity` decimal(42,5)
,`tResult` decimal(42,5)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vkpitotarget`
-- (See below for the actual view)
--
CREATE TABLE `vkpitotarget` (
`id` int(11)
,`vKet` varchar(255)
,`tYear` double
,`tResultMTDJan` double
,`tResultYTDJan` double
,`tResultMTDfeb` double
,`tResultYTDFeb` double
,`tResultMTDMar` double
,`tResultYTDMar` double
,`tResultMTDApr` double
,`tResultYTDApr` double
,`tResultMTDMei` double
,`tResultYTDMei` double
,`tResultMTDJun` double
,`tResultYTDJun` double
,`tResultMTDJul` double
,`tResultYTDJul` double
,`tResultMTDAug` double
,`tResultYTDAug` double
,`tResultMTDSep` double
,`tResultYTDSep` double
,`tResultMTDOkt` double
,`tResultYTDOkt` double
,`tResultMTDNov` double
,`tResultYTDNov` double
,`tResultMTDDes` double
,`tResultYTDDes` double
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vkpitotargetdata`
-- (See below for the actual view)
--
CREATE TABLE `vkpitotargetdata` (
`id` int(11)
,`vKet` varchar(255)
,`tYear` double
,`MTD` varbinary(287)
,`YTD` varbinary(287)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vkpitotargetdata_site`
-- (See below for the actual view)
--
CREATE TABLE `vkpitotargetdata_site` (
`id` int(11)
,`vKet` varchar(255)
,`tYear` double
,`compId` int(11)
,`MTD` varbinary(287)
,`YTD` varbinary(287)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vline_result_util`
-- (See below for the actual view)
--
CREATE TABLE `vline_result_util` (
`lineId` int(11)
,`compId` int(2)
,`lineName` varchar(150)
,`tYear` double
,`tCapacity` decimal(42,5)
,`tResult` decimal(42,5)
,`tUtil` decimal(32,9)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vrawdata`
-- (See below for the actual view)
--
CREATE TABLE `vrawdata` (
`id` int(11)
,`vKet` varchar(255)
,`dept` varchar(20)
,`tYear` double
,`mJan` decimal(42,5)
,`mFeb` decimal(42,5)
,`mMar` decimal(42,5)
,`mApr` decimal(42,5)
,`mMei` decimal(42,5)
,`mJun` decimal(42,5)
,`mJul` decimal(42,5)
,`mAug` decimal(42,5)
,`mSep` decimal(42,5)
,`mOct` decimal(42,5)
,`mNov` decimal(42,5)
,`mDec` decimal(42,5)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vresult_prod_output`
-- (See below for the actual view)
--
CREATE TABLE `vresult_prod_output` (
`pItemId` int(11)
,`pItemName` varchar(150)
,`compId` int(11)
,`tYear` double
,`mJan` decimal(42,5)
,`mJan2` decimal(42,5)
,`mFeb` decimal(42,5)
,`mFeb2` decimal(42,5)
,`mMar` decimal(42,5)
,`mMar2` decimal(42,5)
,`mApr` decimal(42,5)
,`mApr2` decimal(42,5)
,`mMei` decimal(42,5)
,`mMei2` decimal(42,5)
,`mJun` decimal(42,5)
,`mJun2` decimal(42,5)
,`mJul` decimal(42,5)
,`mJul2` decimal(42,5)
,`mAug` decimal(42,5)
,`mAug2` decimal(42,5)
,`mSep` decimal(42,5)
,`mSep2` decimal(42,5)
,`mOct` decimal(42,5)
,`mOct2` decimal(42,5)
,`mNov` decimal(42,5)
,`mNov2` decimal(42,5)
,`mDec` decimal(42,5)
,`mDec2` decimal(42,5)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vresult_util`
-- (See below for the actual view)
--
CREATE TABLE `vresult_util` (
`lineId` int(11)
,`compId` int(11)
,`lineName` varchar(150)
,`tYear` double
,`mJan` decimal(54,9)
,`mFeb` decimal(54,9)
,`mMar` decimal(54,9)
,`mApr` decimal(54,9)
,`mMei` decimal(54,9)
,`mJun` decimal(54,9)
,`mJul` decimal(54,9)
,`mAug` decimal(54,9)
,`mSep` decimal(54,9)
,`mOct` decimal(54,9)
,`mNov` decimal(54,9)
,`mDec` decimal(54,9)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vresult_util_detail`
-- (See below for the actual view)
--
CREATE TABLE `vresult_util_detail` (
`lineId` int(11)
,`compId` int(11)
,`lineName` varchar(150)
,`tYear` double
,`mJan` decimal(42,5)
,`mJan2` decimal(42,5)
,`mFeb` decimal(42,5)
,`mFeb2` decimal(42,5)
,`mMar` decimal(42,5)
,`mMar2` decimal(42,5)
,`mApr` decimal(42,5)
,`mApr2` decimal(42,5)
,`mMei` decimal(42,5)
,`mMei2` decimal(42,5)
,`mJun` decimal(42,5)
,`mJun2` decimal(42,5)
,`mJul` decimal(42,5)
,`mJul2` decimal(42,5)
,`mAug` decimal(42,5)
,`mAug2` decimal(42,5)
,`mSep` decimal(42,5)
,`mSep2` decimal(42,5)
,`mOct` decimal(42,5)
,`mOct2` decimal(42,5)
,`mNov` decimal(42,5)
,`mNov2` decimal(42,5)
,`mDec` decimal(42,5)
,`mDec2` decimal(42,5)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vresult_util_group1`
-- (See below for the actual view)
--
CREATE TABLE `vresult_util_group1` (
`group1` varchar(100)
,`compId` int(11)
,`tYear` double
,`mJan` decimal(42,5)
,`mJan2` decimal(42,5)
,`mFeb` decimal(42,5)
,`mFeb2` decimal(42,5)
,`mMar` decimal(42,5)
,`mMar2` decimal(42,5)
,`mApr` decimal(42,5)
,`mApr2` decimal(42,5)
,`mMei` decimal(42,5)
,`mMei2` decimal(42,5)
,`mJun` decimal(42,5)
,`mJun2` decimal(42,5)
,`mJul` decimal(42,5)
,`mJul2` decimal(42,5)
,`mAug` decimal(42,5)
,`mAug2` decimal(42,5)
,`mSep` decimal(42,5)
,`mSep2` decimal(42,5)
,`mOct` decimal(42,5)
,`mOct2` decimal(42,5)
,`mNov` decimal(42,5)
,`mNov2` decimal(42,5)
,`mDec` decimal(42,5)
,`mDec2` decimal(42,5)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vresult_util_group2`
-- (See below for the actual view)
--
CREATE TABLE `vresult_util_group2` (
`group2` varchar(100)
,`compId` int(11)
,`tYear` double
,`mJan` decimal(42,5)
,`mJan2` decimal(42,5)
,`mFeb` decimal(42,5)
,`mFeb2` decimal(42,5)
,`mMar` decimal(42,5)
,`mMar2` decimal(42,5)
,`mApr` decimal(42,5)
,`mApr2` decimal(42,5)
,`mMei` decimal(42,5)
,`mMei2` decimal(42,5)
,`mJun` decimal(42,5)
,`mJun2` decimal(42,5)
,`mJul` decimal(42,5)
,`mJul2` decimal(42,5)
,`mAug` decimal(42,5)
,`mAug2` decimal(42,5)
,`mSep` decimal(42,5)
,`mSep2` decimal(42,5)
,`mOct` decimal(42,5)
,`mOct2` decimal(42,5)
,`mNov` decimal(42,5)
,`mNov2` decimal(42,5)
,`mDec` decimal(42,5)
,`mDec2` decimal(42,5)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_datarow`
-- (See below for the actual view)
--
CREATE TABLE `v_datarow` (
`id` int(11)
,`compId` int(11)
,`vKet` varchar(255)
,`dept` varchar(20)
,`tYear` double
,`mJan` decimal(42,5)
,`mFeb` decimal(42,5)
,`mMar` decimal(42,5)
,`mApr` decimal(42,5)
,`mMei` decimal(42,5)
,`mJun` decimal(42,5)
,`mJul` decimal(42,5)
,`mAug` decimal(42,5)
,`mSep` decimal(42,5)
,`mOct` decimal(42,5)
,`mNov` decimal(42,5)
,`mDec` decimal(42,5)
);

-- --------------------------------------------------------

--
-- Structure for view `vdata`
--
DROP TABLE IF EXISTS `vdata`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vdata`  AS SELECT `a`.`id` AS `id`, `a`.`vKet` AS `vKet`, `a`.`dept` AS `dept`, `a`.`tYear` AS `tYear`, concat(sum(`a`.`mJan`),',',sum(`a`.`mFeb`),',',sum(`a`.`mMar`),',',sum(`a`.`mApr`),',',sum(`a`.`mMei`),',',sum(`a`.`mJun`),',',sum(`a`.`mJul`),',',sum(`a`.`mAug`),',',sum(`a`.`mSep`),',',sum(`a`.`mOct`),',',sum(`a`.`mNov`),',',sum(`a`.`mDec`)) AS `result` FROM (select `a`.`id` AS `id`,`a`.`vKet` AS `vKet`,`a`.`dept` AS `dept`,`b`.`tYear` AS `tYear`,`b`.`tResult` AS `mJan`,0 AS `mFeb`,0 AS `mMar`,0 AS `mApr`,0 AS `mMei`,0 AS `mJun`,0 AS `mJul`,0 AS `mAug`,0 AS `mSep`,0 AS `mOct`,0 AS `mNov`,0 AS `mDec` from (`mrawdata` `a` left join `tresultrawdata` `b` on(`a`.`id` = `b`.`idRawData` and `b`.`tMonth` = 1)) union all select `a`.`id` AS `id`,`a`.`vKet` AS `vKet`,`a`.`dept` AS `dept`,`b`.`tYear` AS `tYear`,0 AS `mJan`,`b`.`tResult` AS `mFeb`,0 AS `mMar`,0 AS `mApr`,0 AS `mMei`,0 AS `mJun`,0 AS `mJul`,0 AS `mAug`,0 AS `mSep`,0 AS `mOct`,0 AS `mNov`,0 AS `mDec` from (`mrawdata` `a` left join `tresultrawdata` `b` on(`a`.`id` = `b`.`idRawData` and `b`.`tMonth` = 2)) union all select `a`.`id` AS `id`,`a`.`vKet` AS `vKet`,`a`.`dept` AS `dept`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mFeb`,`b`.`tResult` AS `mMar`,0 AS `mApr`,0 AS `mMei`,0 AS `mJun`,0 AS `mJul`,0 AS `mAug`,0 AS `mSep`,0 AS `mOct`,0 AS `mNov`,0 AS `mDec` from (`mrawdata` `a` left join `tresultrawdata` `b` on(`a`.`id` = `b`.`idRawData` and `b`.`tMonth` = 3)) union all select `a`.`id` AS `id`,`a`.`vKet` AS `vKet`,`a`.`dept` AS `dept`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mFeb`,0 AS `mMar`,`b`.`tResult` AS `mApr`,0 AS `mMei`,0 AS `mJun`,0 AS `mJul`,0 AS `mAug`,0 AS `mSep`,0 AS `mOct`,0 AS `mNov`,0 AS `mDec` from (`mrawdata` `a` left join `tresultrawdata` `b` on(`a`.`id` = `b`.`idRawData` and `b`.`tMonth` = 4)) union all select `a`.`id` AS `id`,`a`.`vKet` AS `vKet`,`a`.`dept` AS `dept`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mFeb`,0 AS `mMar`,0 AS `mApr`,`b`.`tResult` AS `mMei`,0 AS `mJun`,0 AS `mJul`,0 AS `mAug`,0 AS `mSep`,0 AS `mOct`,0 AS `mNov`,0 AS `mDec` from (`mrawdata` `a` left join `tresultrawdata` `b` on(`a`.`id` = `b`.`idRawData` and `b`.`tMonth` = 5)) union all select `a`.`id` AS `id`,`a`.`vKet` AS `vKet`,`a`.`dept` AS `dept`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mFeb`,0 AS `mMar`,0 AS `mApr`,0 AS `mMei`,`b`.`tResult` AS `mJun`,0 AS `mJul`,0 AS `mAug`,0 AS `mSep`,0 AS `mOct`,0 AS `mNov`,0 AS `mDec` from (`mrawdata` `a` left join `tresultrawdata` `b` on(`a`.`id` = `b`.`idRawData` and `b`.`tMonth` = 6)) union all select `a`.`id` AS `id`,`a`.`vKet` AS `vKet`,`a`.`dept` AS `dept`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mFeb`,0 AS `mMar`,0 AS `mApr`,0 AS `mMei`,0 AS `mJun`,`b`.`tResult` AS `mJul`,0 AS `mAug`,0 AS `mSep`,0 AS `mOct`,0 AS `mNov`,0 AS `mDec` from (`mrawdata` `a` left join `tresultrawdata` `b` on(`a`.`id` = `b`.`idRawData` and `b`.`tMonth` = 7)) union all select `a`.`id` AS `id`,`a`.`vKet` AS `vKet`,`a`.`dept` AS `dept`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mFeb`,0 AS `mMar`,0 AS `mApr`,0 AS `mMei`,0 AS `mJun`,0 AS `mJul`,`b`.`tResult` AS `mAug`,0 AS `mSep`,0 AS `mOct`,0 AS `mNov`,0 AS `mDec` from (`mrawdata` `a` left join `tresultrawdata` `b` on(`a`.`id` = `b`.`idRawData` and `b`.`tMonth` = 8)) union all select `a`.`id` AS `id`,`a`.`vKet` AS `vKet`,`a`.`dept` AS `dept`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mFeb`,0 AS `mMar`,0 AS `mApr`,0 AS `mMei`,0 AS `mJun`,0 AS `mJul`,0 AS `mAug`,`b`.`tResult` AS `mSep`,0 AS `mOct`,0 AS `mNov`,0 AS `mDec` from (`mrawdata` `a` left join `tresultrawdata` `b` on(`a`.`id` = `b`.`idRawData` and `b`.`tMonth` = 9)) union all select `a`.`id` AS `id`,`a`.`vKet` AS `vKet`,`a`.`dept` AS `dept`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mFeb`,0 AS `mMar`,0 AS `mApr`,0 AS `mMei`,0 AS `mJun`,0 AS `mJul`,0 AS `mAug`,0 AS `mSep`,`b`.`tResult` AS `mOct`,0 AS `mNov`,0 AS `mDec` from (`mrawdata` `a` left join `tresultrawdata` `b` on(`a`.`id` = `b`.`idRawData` and `b`.`tMonth` = 10)) union all select `a`.`id` AS `id`,`a`.`vKet` AS `vKet`,`a`.`dept` AS `dept`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mFeb`,0 AS `mMar`,0 AS `mApr`,0 AS `mMei`,0 AS `mJun`,0 AS `mJul`,0 AS `mAug`,0 AS `mSep`,0 AS `mOct`,`b`.`tResult` AS `mNov`,0 AS `mDec` from (`mrawdata` `a` left join `tresultrawdata` `b` on(`a`.`id` = `b`.`idRawData` and `b`.`tMonth` = 11)) union all select `a`.`id` AS `id`,`a`.`vKet` AS `vKet`,`a`.`dept` AS `dept`,`b`.`tYear` AS `tYear`,`b`.`tResult` AS `mJan`,0 AS `mFeb`,0 AS `mMar`,0 AS `mApr`,0 AS `mMei`,0 AS `mJun`,0 AS `mJul`,0 AS `mAug`,0 AS `mSep`,0 AS `mOct`,0 AS `mNov`,`b`.`tResult` AS `mDec` from (`mrawdata` `a` left join `tresultrawdata` `b` on(`a`.`id` = `b`.`idRawData` and `b`.`tMonth` = 12))) AS `a` WHERE `a`.`tYear` is not null GROUP BY `a`.`id`, `a`.`vKet`, `a`.`tYear` ;

-- --------------------------------------------------------

--
-- Structure for view `vdataraw`
--
DROP TABLE IF EXISTS `vdataraw`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vdataraw`  AS SELECT `a`.`id` AS `id`, `a`.`compId` AS `compId`, `a`.`vKet` AS `vKet`, `a`.`dept` AS `dept`, `a`.`tYear` AS `tYear`, sum(`a`.`mJan`) AS `mJan`, sum(`a`.`mFeb`) AS `mFeb`, sum(`a`.`mMar`) AS `mMar`, sum(`a`.`mApr`) AS `mApr`, sum(`a`.`mMei`) AS `mMei`, sum(`a`.`mJun`) AS `mJun`, sum(`a`.`mJul`) AS `mJul`, sum(`a`.`mAug`) AS `mAug`, sum(`a`.`mSep`) AS `mSep`, sum(`a`.`mOct`) AS `mOct`, sum(`a`.`mNov`) AS `mNov`, sum(`a`.`mDec`) AS `mDec` FROM (select `a`.`id` AS `id`,`b`.`compId` AS `compId`,`a`.`vKet` AS `vKet`,`a`.`dept` AS `dept`,`b`.`tYear` AS `tYear`,`b`.`tResult` AS `mJan`,0 AS `mFeb`,0 AS `mMar`,0 AS `mApr`,0 AS `mMei`,0 AS `mJun`,0 AS `mJul`,0 AS `mAug`,0 AS `mSep`,0 AS `mOct`,0 AS `mNov`,0 AS `mDec` from (`mrawdata` `a` left join `tresultrawdata` `b` on(`a`.`id` = `b`.`idRawData` and `b`.`tMonth` = 1)) union all select `a`.`id` AS `id`,`b`.`compId` AS `compId`,`a`.`vKet` AS `vKet`,`a`.`dept` AS `dept`,`b`.`tYear` AS `tYear`,0 AS `mJan`,`b`.`tResult` AS `mFeb`,0 AS `mMar`,0 AS `mApr`,0 AS `mMei`,0 AS `mJun`,0 AS `mJul`,0 AS `mAug`,0 AS `mSep`,0 AS `mOct`,0 AS `mNov`,0 AS `mDec` from (`mrawdata` `a` left join `tresultrawdata` `b` on(`a`.`id` = `b`.`idRawData` and `b`.`tMonth` = 2)) union all select `a`.`id` AS `id`,`b`.`compId` AS `compId`,`a`.`vKet` AS `vKet`,`a`.`dept` AS `dept`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mFeb`,`b`.`tResult` AS `mMar`,0 AS `mApr`,0 AS `mMei`,0 AS `mJun`,0 AS `mJul`,0 AS `mAug`,0 AS `mSep`,0 AS `mOct`,0 AS `mNov`,0 AS `mDec` from (`mrawdata` `a` left join `tresultrawdata` `b` on(`a`.`id` = `b`.`idRawData` and `b`.`tMonth` = 3)) union all select `a`.`id` AS `id`,`b`.`compId` AS `compId`,`a`.`vKet` AS `vKet`,`a`.`dept` AS `dept`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mFeb`,0 AS `mMar`,`b`.`tResult` AS `mApr`,0 AS `mMei`,0 AS `mJun`,0 AS `mJul`,0 AS `mAug`,0 AS `mSep`,0 AS `mOct`,0 AS `mNov`,0 AS `mDec` from (`mrawdata` `a` left join `tresultrawdata` `b` on(`a`.`id` = `b`.`idRawData` and `b`.`tMonth` = 4)) union all select `a`.`id` AS `id`,`b`.`compId` AS `compId`,`a`.`vKet` AS `vKet`,`a`.`dept` AS `dept`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mFeb`,0 AS `mMar`,0 AS `mApr`,`b`.`tResult` AS `mMei`,0 AS `mJun`,0 AS `mJul`,0 AS `mAug`,0 AS `mSep`,0 AS `mOct`,0 AS `mNov`,0 AS `mDec` from (`mrawdata` `a` left join `tresultrawdata` `b` on(`a`.`id` = `b`.`idRawData` and `b`.`tMonth` = 5)) union all select `a`.`id` AS `id`,`b`.`compId` AS `compId`,`a`.`vKet` AS `vKet`,`a`.`dept` AS `dept`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mFeb`,0 AS `mMar`,0 AS `mApr`,0 AS `mMei`,`b`.`tResult` AS `mJun`,0 AS `mJul`,0 AS `mAug`,0 AS `mSep`,0 AS `mOct`,0 AS `mNov`,0 AS `mDec` from (`mrawdata` `a` left join `tresultrawdata` `b` on(`a`.`id` = `b`.`idRawData` and `b`.`tMonth` = 6)) union all select `a`.`id` AS `id`,`b`.`compId` AS `compId`,`a`.`vKet` AS `vKet`,`a`.`dept` AS `dept`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mFeb`,0 AS `mMar`,0 AS `mApr`,0 AS `mMei`,0 AS `mJun`,`b`.`tResult` AS `mJul`,0 AS `mAug`,0 AS `mSep`,0 AS `mOct`,0 AS `mNov`,0 AS `mDec` from (`mrawdata` `a` left join `tresultrawdata` `b` on(`a`.`id` = `b`.`idRawData` and `b`.`tMonth` = 7)) union all select `a`.`id` AS `id`,`b`.`compId` AS `compId`,`a`.`vKet` AS `vKet`,`a`.`dept` AS `dept`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mFeb`,0 AS `mMar`,0 AS `mApr`,0 AS `mMei`,0 AS `mJun`,0 AS `mJul`,`b`.`tResult` AS `mAug`,0 AS `mSep`,0 AS `mOct`,0 AS `mNov`,0 AS `mDec` from (`mrawdata` `a` left join `tresultrawdata` `b` on(`a`.`id` = `b`.`idRawData` and `b`.`tMonth` = 8)) union all select `a`.`id` AS `id`,`b`.`compId` AS `compId`,`a`.`vKet` AS `vKet`,`a`.`dept` AS `dept`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mFeb`,0 AS `mMar`,0 AS `mApr`,0 AS `mMei`,0 AS `mJun`,0 AS `mJul`,0 AS `mAug`,`b`.`tResult` AS `mSep`,0 AS `mOct`,0 AS `mNov`,0 AS `mDec` from (`mrawdata` `a` left join `tresultrawdata` `b` on(`a`.`id` = `b`.`idRawData` and `b`.`tMonth` = 9)) union all select `a`.`id` AS `id`,`b`.`compId` AS `compId`,`a`.`vKet` AS `vKet`,`a`.`dept` AS `dept`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mFeb`,0 AS `mMar`,0 AS `mApr`,0 AS `mMei`,0 AS `mJun`,0 AS `mJul`,0 AS `mAug`,0 AS `mSep`,`b`.`tResult` AS `mOct`,0 AS `mNov`,0 AS `mDec` from (`mrawdata` `a` left join `tresultrawdata` `b` on(`a`.`id` = `b`.`idRawData` and `b`.`tMonth` = 10)) union all select `a`.`id` AS `id`,`b`.`compId` AS `compId`,`a`.`vKet` AS `vKet`,`a`.`dept` AS `dept`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mFeb`,0 AS `mMar`,0 AS `mApr`,0 AS `mMei`,0 AS `mJun`,0 AS `mJul`,0 AS `mAug`,0 AS `mSep`,0 AS `mOct`,`b`.`tResult` AS `mNov`,0 AS `mDec` from (`mrawdata` `a` left join `tresultrawdata` `b` on(`a`.`id` = `b`.`idRawData` and `b`.`tMonth` = 11)) union all select `a`.`id` AS `id`,`b`.`compId` AS `compId`,`a`.`vKet` AS `vKet`,`a`.`dept` AS `dept`,`b`.`tYear` AS `tYear`,`b`.`tResult` AS `mJan`,0 AS `mFeb`,0 AS `mMar`,0 AS `mApr`,0 AS `mMei`,0 AS `mJun`,0 AS `mJul`,0 AS `mAug`,0 AS `mSep`,0 AS `mOct`,0 AS `mNov`,`b`.`tResult` AS `mDec` from (`mrawdata` `a` left join `tresultrawdata` `b` on(`a`.`id` = `b`.`idRawData` and `b`.`tMonth` = 12))) AS `a` WHERE `a`.`tYear` is not null GROUP BY `a`.`id`, `a`.`vKet`, `a`.`tYear` ;

-- --------------------------------------------------------

--
-- Structure for view `vdata_site`
--
DROP TABLE IF EXISTS `vdata_site`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vdata_site`  AS SELECT `a`.`id` AS `id`, `a`.`vKet` AS `vKet`, `a`.`dept` AS `dept`, `a`.`tYear` AS `tYear`, `a`.`compId` AS `compId`, concat(sum(`a`.`mJan`),',',sum(`a`.`mFeb`),',',sum(`a`.`mMar`),',',sum(`a`.`mApr`),',',sum(`a`.`mMei`),',',sum(`a`.`mJun`),',',sum(`a`.`mJul`),',',sum(`a`.`mAug`),',',sum(`a`.`mSep`),',',sum(`a`.`mOct`),',',sum(`a`.`mNov`),',',sum(`a`.`mDec`)) AS `result` FROM (select `a`.`id` AS `id`,`a`.`vKet` AS `vKet`,`a`.`dept` AS `dept`,`b`.`compId` AS `compId`,`b`.`tYear` AS `tYear`,`b`.`tResult` AS `mJan`,0 AS `mFeb`,0 AS `mMar`,0 AS `mApr`,0 AS `mMei`,0 AS `mJun`,0 AS `mJul`,0 AS `mAug`,0 AS `mSep`,0 AS `mOct`,0 AS `mNov`,0 AS `mDec` from (`mrawdata` `a` left join `tresultrawdata` `b` on(`a`.`id` = `b`.`idRawData` and `b`.`tMonth` = 1)) union all select `a`.`id` AS `id`,`a`.`vKet` AS `vKet`,`a`.`dept` AS `dept`,`b`.`compId` AS `compId`,`b`.`tYear` AS `tYear`,0 AS `mJan`,`b`.`tResult` AS `mFeb`,0 AS `mMar`,0 AS `mApr`,0 AS `mMei`,0 AS `mJun`,0 AS `mJul`,0 AS `mAug`,0 AS `mSep`,0 AS `mOct`,0 AS `mNov`,0 AS `mDec` from (`mrawdata` `a` left join `tresultrawdata` `b` on(`a`.`id` = `b`.`idRawData` and `b`.`tMonth` = 2)) union all select `a`.`id` AS `id`,`a`.`vKet` AS `vKet`,`a`.`dept` AS `dept`,`b`.`compId` AS `compId`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mFeb`,`b`.`tResult` AS `mMar`,0 AS `mApr`,0 AS `mMei`,0 AS `mJun`,0 AS `mJul`,0 AS `mAug`,0 AS `mSep`,0 AS `mOct`,0 AS `mNov`,0 AS `mDec` from (`mrawdata` `a` left join `tresultrawdata` `b` on(`a`.`id` = `b`.`idRawData` and `b`.`tMonth` = 3)) union all select `a`.`id` AS `id`,`a`.`vKet` AS `vKet`,`a`.`dept` AS `dept`,`b`.`compId` AS `compId`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mFeb`,0 AS `mMar`,`b`.`tResult` AS `mApr`,0 AS `mMei`,0 AS `mJun`,0 AS `mJul`,0 AS `mAug`,0 AS `mSep`,0 AS `mOct`,0 AS `mNov`,0 AS `mDec` from (`mrawdata` `a` left join `tresultrawdata` `b` on(`a`.`id` = `b`.`idRawData` and `b`.`tMonth` = 4)) union all select `a`.`id` AS `id`,`a`.`vKet` AS `vKet`,`a`.`dept` AS `dept`,`b`.`compId` AS `compId`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mFeb`,0 AS `mMar`,0 AS `mApr`,`b`.`tResult` AS `mMei`,0 AS `mJun`,0 AS `mJul`,0 AS `mAug`,0 AS `mSep`,0 AS `mOct`,0 AS `mNov`,0 AS `mDec` from (`mrawdata` `a` left join `tresultrawdata` `b` on(`a`.`id` = `b`.`idRawData` and `b`.`tMonth` = 5)) union all select `a`.`id` AS `id`,`a`.`vKet` AS `vKet`,`a`.`dept` AS `dept`,`b`.`compId` AS `compId`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mFeb`,0 AS `mMar`,0 AS `mApr`,0 AS `mMei`,`b`.`tResult` AS `mJun`,0 AS `mJul`,0 AS `mAug`,0 AS `mSep`,0 AS `mOct`,0 AS `mNov`,0 AS `mDec` from (`mrawdata` `a` left join `tresultrawdata` `b` on(`a`.`id` = `b`.`idRawData` and `b`.`tMonth` = 6)) union all select `a`.`id` AS `id`,`a`.`vKet` AS `vKet`,`a`.`dept` AS `dept`,`b`.`compId` AS `compId`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mFeb`,0 AS `mMar`,0 AS `mApr`,0 AS `mMei`,0 AS `mJun`,`b`.`tResult` AS `mJul`,0 AS `mAug`,0 AS `mSep`,0 AS `mOct`,0 AS `mNov`,0 AS `mDec` from (`mrawdata` `a` left join `tresultrawdata` `b` on(`a`.`id` = `b`.`idRawData` and `b`.`tMonth` = 7)) union all select `a`.`id` AS `id`,`a`.`vKet` AS `vKet`,`a`.`dept` AS `dept`,`b`.`compId` AS `compId`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mFeb`,0 AS `mMar`,0 AS `mApr`,0 AS `mMei`,0 AS `mJun`,0 AS `mJul`,`b`.`tResult` AS `mAug`,0 AS `mSep`,0 AS `mOct`,0 AS `mNov`,0 AS `mDec` from (`mrawdata` `a` left join `tresultrawdata` `b` on(`a`.`id` = `b`.`idRawData` and `b`.`tMonth` = 8)) union all select `a`.`id` AS `id`,`a`.`vKet` AS `vKet`,`a`.`dept` AS `dept`,`b`.`compId` AS `compId`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mFeb`,0 AS `mMar`,0 AS `mApr`,0 AS `mMei`,0 AS `mJun`,0 AS `mJul`,0 AS `mAug`,`b`.`tResult` AS `mSep`,0 AS `mOct`,0 AS `mNov`,0 AS `mDec` from (`mrawdata` `a` left join `tresultrawdata` `b` on(`a`.`id` = `b`.`idRawData` and `b`.`tMonth` = 9)) union all select `a`.`id` AS `id`,`a`.`vKet` AS `vKet`,`a`.`dept` AS `dept`,`b`.`compId` AS `compId`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mFeb`,0 AS `mMar`,0 AS `mApr`,0 AS `mMei`,0 AS `mJun`,0 AS `mJul`,0 AS `mAug`,0 AS `mSep`,`b`.`tResult` AS `mOct`,0 AS `mNov`,0 AS `mDec` from (`mrawdata` `a` left join `tresultrawdata` `b` on(`a`.`id` = `b`.`idRawData` and `b`.`tMonth` = 10)) union all select `a`.`id` AS `id`,`a`.`vKet` AS `vKet`,`a`.`dept` AS `dept`,`b`.`compId` AS `compId`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mFeb`,0 AS `mMar`,0 AS `mApr`,0 AS `mMei`,0 AS `mJun`,0 AS `mJul`,0 AS `mAug`,0 AS `mSep`,0 AS `mOct`,`b`.`tResult` AS `mNov`,0 AS `mDec` from (`mrawdata` `a` left join `tresultrawdata` `b` on(`a`.`id` = `b`.`idRawData` and `b`.`tMonth` = 11)) union all select `a`.`id` AS `id`,`a`.`vKet` AS `vKet`,`a`.`dept` AS `dept`,`b`.`compId` AS `compId`,`b`.`tYear` AS `tYear`,`b`.`tResult` AS `mJan`,0 AS `mFeb`,0 AS `mMar`,0 AS `mApr`,0 AS `mMei`,0 AS `mJun`,0 AS `mJul`,0 AS `mAug`,0 AS `mSep`,0 AS `mOct`,0 AS `mNov`,`b`.`tResult` AS `mDec` from (`mrawdata` `a` left join `tresultrawdata` `b` on(`a`.`id` = `b`.`idRawData` and `b`.`tMonth` = 12))) AS `a` WHERE `a`.`tYear` is not null GROUP BY `a`.`id`, `a`.`vKet`, `a`.`tYear` ;

-- --------------------------------------------------------

--
-- Structure for view `vgroup2_result_util`
--
DROP TABLE IF EXISTS `vgroup2_result_util`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vgroup2_result_util`  AS SELECT `a`.`group2` AS `group2`, `a`.`compId` AS `compId`, `b`.`tYear` AS `tYear`, sum(`b`.`tCapacity`) AS `tCapacity`, sum(`b`.`tResult`) AS `tResult` FROM (`mline` `a` left join `tresultutil` `b` on(`a`.`lineId` = `b`.`lineId`)) WHERE `b`.`tYear` is not null AND `a`.`group2` is not null GROUP BY `a`.`group2`, `b`.`tYear` ;

-- --------------------------------------------------------

--
-- Structure for view `vgroup_year_util`
--
DROP TABLE IF EXISTS `vgroup_year_util`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vgroup_year_util`  AS SELECT `a`.`lineId` AS `lineId`, `a`.`group1` AS `group1`, `a`.`group2` AS `group2`, `a`.`compId` AS `compId`, `b`.`tYear` AS `tYear`, sum(`b`.`tCapacity`) AS `tCapacity`, sum(`b`.`tResult`) AS `tResult` FROM (`mline` `a` left join `tresultutil` `b` on(`a`.`lineId` = `b`.`lineId`)) WHERE `b`.`tYear` is not null GROUP BY `a`.`lineId`, `b`.`tYear` ;

-- --------------------------------------------------------

--
-- Structure for view `vkpitotarget`
--
DROP TABLE IF EXISTS `vkpitotarget`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vkpitotarget`  AS SELECT `a`.`id` AS `id`, `a`.`vKet` AS `vKet`, `a`.`tYear` AS `tYear`, sum(`a`.`tResultMTDJan`) AS `tResultMTDJan`, sum(`a`.`tResultYTDJan`) AS `tResultYTDJan`, sum(`a`.`tResultMTDfeb`) AS `tResultMTDfeb`, sum(`a`.`tResultYTDFeb`) AS `tResultYTDFeb`, sum(`a`.`tResultMTDMar`) AS `tResultMTDMar`, sum(`a`.`tResultYTDMar`) AS `tResultYTDMar`, sum(`a`.`tResultMTDApr`) AS `tResultMTDApr`, sum(`a`.`tResultYTDApr`) AS `tResultYTDApr`, sum(`a`.`tResultMTDMei`) AS `tResultMTDMei`, sum(`a`.`tResultYTDMei`) AS `tResultYTDMei`, sum(`a`.`tResultMTDJun`) AS `tResultMTDJun`, sum(`a`.`tResultYTDJun`) AS `tResultYTDJun`, sum(`a`.`tResultMTDJul`) AS `tResultMTDJul`, sum(`a`.`tResultYTDJul`) AS `tResultYTDJul`, sum(`a`.`tResultMTDAug`) AS `tResultMTDAug`, sum(`a`.`tResultYTDAug`) AS `tResultYTDAug`, sum(`a`.`tResultMTDSep`) AS `tResultMTDSep`, sum(`a`.`tResultYTDSep`) AS `tResultYTDSep`, sum(`a`.`tResultMTDOkt`) AS `tResultMTDOkt`, sum(`a`.`tResultYTDOkt`) AS `tResultYTDOkt`, sum(`a`.`tResultMTDNov`) AS `tResultMTDNov`, sum(`a`.`tResultYTDNov`) AS `tResultYTDNov`, sum(`a`.`tResultMTDDes`) AS `tResultMTDDes`, sum(`a`.`tResultYTDDes`) AS `tResultYTDDes` FROM (select `mrk`.`id` AS `id`,`mrk`.`vKet` AS `vKet`,`trk`.`tYear` AS `tYear`,`trk`.`tResultMTD` AS `tResultMTDJan`,`trk`.`tResultYTD` AS `tResultYTDJan`,0 AS `tResultMTDfeb`,0 AS `tResultYTDFeb`,0 AS `tResultMTDMar`,0 AS `tResultYTDMar`,0 AS `tResultMTDApr`,0 AS `tResultYTDApr`,0 AS `tResultMTDMei`,0 AS `tResultYTDMei`,0 AS `tResultMTDJun`,0 AS `tResultYTDJun`,0 AS `tResultMTDJul`,0 AS `tResultYTDJul`,0 AS `tResultMTDAug`,0 AS `tResultYTDAug`,0 AS `tResultMTDSep`,0 AS `tResultYTDSep`,0 AS `tResultMTDOkt`,0 AS `tResultYTDOkt`,0 AS `tResultMTDNov`,0 AS `tResultYTDNov`,0 AS `tResultMTDDes`,0 AS `tResultYTDDes` from (`mrumuskpi` `mrk` left join `tresultkpi` `trk` on(`mrk`.`id` = `trk`.`idRawData` and `trk`.`tMonth` = 1)) union all select `mrk`.`id` AS `id`,`mrk`.`vKet` AS `vKet`,`trk`.`tYear` AS `tYear`,0 AS `tResultMTDJan`,0 AS `tResultYTDJan`,`trk`.`tResultMTD` AS `tResultMTDfeb`,`trk`.`tResultYTD` AS `tResultYTDFeb`,0 AS `tResultMTDMar`,0 AS `tResultYTDMar`,0 AS `tResultMTDApr`,0 AS `tResultYTDApr`,0 AS `tResultMTDMei`,0 AS `tResultYTDMei`,0 AS `tResultMTDJun`,0 AS `tResultYTDJun`,0 AS `tResultMTDJul`,0 AS `tResultYTDJul`,0 AS `tResultMTDAug`,0 AS `tResultYTDAug`,0 AS `tResultMTDSep`,0 AS `tResultYTDSep`,0 AS `tResultMTDOkt`,0 AS `tResultYTDOkt`,0 AS `tResultMTDNov`,0 AS `tResultYTDNov`,0 AS `tResultMTDDes`,0 AS `tResultYTDDes` from (`mrumuskpi` `mrk` left join `tresultkpi` `trk` on(`mrk`.`id` = `trk`.`idRawData` and `trk`.`tMonth` = 2)) union all select `mrk`.`id` AS `id`,`mrk`.`vKet` AS `vKet`,`trk`.`tYear` AS `tYear`,0 AS `tResultMTDJan`,0 AS `tResultYTDJan`,0 AS `tResultMTDfeb`,0 AS `tResultYTDFeb`,`trk`.`tResultMTD` AS `tResultMTDMar`,`trk`.`tResultYTD` AS `tResultYTDMar`,0 AS `tResultMTDApr`,0 AS `tResultYTDApr`,0 AS `tResultMTDMei`,0 AS `tResultYTDMei`,0 AS `tResultMTDJun`,0 AS `tResultYTDJun`,0 AS `tResultMTDJul`,0 AS `tResultYTDJul`,0 AS `tResultMTDAug`,0 AS `tResultYTDAug`,0 AS `tResultMTDSep`,0 AS `tResultYTDSep`,0 AS `tResultMTDOkt`,0 AS `tResultYTDOkt`,0 AS `tResultMTDNov`,0 AS `tResultYTDNov`,0 AS `tResultMTDDes`,0 AS `tResultYTDDes` from (`mrumuskpi` `mrk` left join `tresultkpi` `trk` on(`mrk`.`id` = `trk`.`idRawData` and `trk`.`tMonth` = 3)) union all select `mrk`.`id` AS `id`,`mrk`.`vKet` AS `vKet`,`trk`.`tYear` AS `tYear`,0 AS `tResultMTDJan`,0 AS `tResultYTDJan`,0 AS `tResultMTDfeb`,0 AS `tResultYTDFeb`,0 AS `tResultMTDMar`,0 AS `tResultYTDMar`,`trk`.`tResultMTD` AS `tResultMTDApr`,`trk`.`tResultYTD` AS `tResultYTDApr`,0 AS `tResultMTDMei`,0 AS `tResultYTDMei`,0 AS `tResultMTDJun`,0 AS `tResultYTDJun`,0 AS `tResultMTDJul`,0 AS `tResultYTDJul`,0 AS `tResultMTDAug`,0 AS `tResultYTDAug`,0 AS `tResultMTDSep`,0 AS `tResultYTDSep`,0 AS `tResultMTDOkt`,0 AS `tResultYTDOkt`,0 AS `tResultMTDNov`,0 AS `tResultYTDNov`,0 AS `tResultMTDDes`,0 AS `tResultYTDDes` from (`mrumuskpi` `mrk` left join `tresultkpi` `trk` on(`mrk`.`id` = `trk`.`idRawData` and `trk`.`tMonth` = 4)) union all select `mrk`.`id` AS `id`,`mrk`.`vKet` AS `vKet`,`trk`.`tYear` AS `tYear`,0 AS `tResultMTDJan`,0 AS `tResultYTDJan`,0 AS `tResultMTDfeb`,0 AS `tResultYTDFeb`,0 AS `tResultMTDMar`,0 AS `tResultYTDMar`,0 AS `tResultMTDApr`,0 AS `tResultYTDApr`,`trk`.`tResultMTD` AS `tResultMTDMei`,`trk`.`tResultYTD` AS `tResultYTDMei`,0 AS `tResultMTDJun`,0 AS `tResultYTDJun`,0 AS `tResultMTDJul`,0 AS `tResultYTDJul`,0 AS `tResultMTDAug`,0 AS `tResultYTDAug`,0 AS `tResultMTDSep`,0 AS `tResultYTDSep`,0 AS `tResultMTDOkt`,0 AS `tResultYTDOkt`,0 AS `tResultMTDNov`,0 AS `tResultYTDNov`,0 AS `tResultMTDDes`,0 AS `tResultYTDDes` from (`mrumuskpi` `mrk` left join `tresultkpi` `trk` on(`mrk`.`id` = `trk`.`idRawData` and `trk`.`tMonth` = 5)) union all select `mrk`.`id` AS `id`,`mrk`.`vKet` AS `vKet`,`trk`.`tYear` AS `tYear`,0 AS `tResultMTDJan`,0 AS `tResultYTDJan`,0 AS `tResultMTDfeb`,0 AS `tResultYTDFeb`,0 AS `tResultMTDMar`,0 AS `tResultYTDMar`,0 AS `tResultMTDApr`,0 AS `tResultYTDApr`,0 AS `tResultMTDMei`,0 AS `tResultYTDMei`,`trk`.`tResultMTD` AS `tResultMTDJun`,`trk`.`tResultYTD` AS `tResultYTDJun`,0 AS `tResultMTDJul`,0 AS `tResultYTDJul`,0 AS `tResultMTDAug`,0 AS `tResultYTDAug`,0 AS `tResultMTDSep`,0 AS `tResultYTDSep`,0 AS `tResultMTDOkt`,0 AS `tResultYTDOkt`,0 AS `tResultMTDNov`,0 AS `tResultYTDNov`,0 AS `tResultMTDDes`,0 AS `tResultYTDDes` from (`mrumuskpi` `mrk` left join `tresultkpi` `trk` on(`mrk`.`id` = `trk`.`idRawData` and `trk`.`tMonth` = 6)) union all select `mrk`.`id` AS `id`,`mrk`.`vKet` AS `vKet`,`trk`.`tYear` AS `tYear`,0 AS `tResultMTDJan`,0 AS `tResultYTDJan`,0 AS `tResultMTDfeb`,0 AS `tResultYTDFeb`,0 AS `tResultMTDMar`,0 AS `tResultYTDMar`,0 AS `tResultMTDApr`,0 AS `tResultYTDApr`,0 AS `tResultMTDMei`,0 AS `tResultYTDMei`,0 AS `tResultMTDJun`,0 AS `tResultYTDJun`,`trk`.`tResultMTD` AS `tResultMTDJul`,`trk`.`tResultYTD` AS `tResultYTDJul`,0 AS `tResultMTDAug`,0 AS `tResultYTDAug`,0 AS `tResultMTDSep`,0 AS `tResultYTDSep`,0 AS `tResultMTDOkt`,0 AS `tResultYTDOkt`,0 AS `tResultMTDNov`,0 AS `tResultYTDNov`,0 AS `tResultMTDDes`,0 AS `tResultYTDDes` from (`mrumuskpi` `mrk` left join `tresultkpi` `trk` on(`mrk`.`id` = `trk`.`idRawData` and `trk`.`tMonth` = 7)) union all select `mrk`.`id` AS `id`,`mrk`.`vKet` AS `vKet`,`trk`.`tYear` AS `tYear`,0 AS `tResultMTDJan`,0 AS `tResultYTDJan`,0 AS `tResultMTDfeb`,0 AS `tResultYTDFeb`,0 AS `tResultMTDMar`,0 AS `tResultYTDMar`,0 AS `tResultMTDApr`,0 AS `tResultYTDApr`,0 AS `tResultMTDMei`,0 AS `tResultYTDMei`,0 AS `tResultMTDJun`,0 AS `tResultYTDJun`,0 AS `tResultMTDJul`,0 AS `tResultYTDJul`,`trk`.`tResultMTD` AS `tResultMTDAug`,`trk`.`tResultYTD` AS `tResultYTDAug`,0 AS `tResultMTDSep`,0 AS `tResultYTDSep`,0 AS `tResultMTDOkt`,0 AS `tResultYTDOkt`,0 AS `tResultMTDNov`,0 AS `tResultYTDNov`,0 AS `tResultMTDDes`,0 AS `tResultYTDDes` from (`mrumuskpi` `mrk` left join `tresultkpi` `trk` on(`mrk`.`id` = `trk`.`idRawData` and `trk`.`tMonth` = 8)) union all select `mrk`.`id` AS `id`,`mrk`.`vKet` AS `vKet`,`trk`.`tYear` AS `tYear`,0 AS `tResultMTDJan`,0 AS `tResultYTDJan`,0 AS `tResultMTDfeb`,0 AS `tResultYTDFeb`,0 AS `tResultMTDMar`,0 AS `tResultYTDMar`,0 AS `tResultMTDApr`,0 AS `tResultYTDApr`,0 AS `tResultMTDMei`,0 AS `tResultYTDMei`,0 AS `tResultMTDJun`,0 AS `tResultYTDJun`,0 AS `tResultMTDJul`,0 AS `tResultYTDJul`,0 AS `tResultMTDAug`,0 AS `tResultYTDAug`,`trk`.`tResultMTD` AS `tResultMTDSep`,`trk`.`tResultYTD` AS `tResultYTDSep`,0 AS `tResultMTDOkt`,0 AS `tResultYTDOkt`,0 AS `tResultMTDNov`,0 AS `tResultYTDNov`,0 AS `tResultMTDDes`,0 AS `tResultYTDDes` from (`mrumuskpi` `mrk` left join `tresultkpi` `trk` on(`mrk`.`id` = `trk`.`idRawData` and `trk`.`tMonth` = 9)) union all select `mrk`.`id` AS `id`,`mrk`.`vKet` AS `vKet`,`trk`.`tYear` AS `tYear`,0 AS `tResultMTDJan`,0 AS `tResultYTDJan`,0 AS `tResultMTDfeb`,0 AS `tResultYTDFeb`,0 AS `tResultMTDMar`,0 AS `tResultYTDMar`,0 AS `tResultMTDApr`,0 AS `tResultYTDApr`,0 AS `tResultMTDMei`,0 AS `tResultYTDMei`,0 AS `tResultMTDJun`,0 AS `tResultYTDJun`,0 AS `tResultMTDJul`,0 AS `tResultYTDJul`,0 AS `tResultMTDAug`,0 AS `tResultYTDAug`,0 AS `tResultMTDSep`,0 AS `tResultYTDSep`,`trk`.`tResultMTD` AS `tResultMTDOkt`,`trk`.`tResultYTD` AS `tResultYTDOkt`,0 AS `tResultMTDNov`,0 AS `tResultYTDNov`,0 AS `tResultMTDDes`,0 AS `tResultYTDDes` from (`mrumuskpi` `mrk` left join `tresultkpi` `trk` on(`mrk`.`id` = `trk`.`idRawData` and `trk`.`tMonth` = 10)) union all select `mrk`.`id` AS `id`,`mrk`.`vKet` AS `vKet`,`trk`.`tYear` AS `tYear`,0 AS `tResultMTDJan`,0 AS `tResultYTDJan`,0 AS `tResultMTDfeb`,0 AS `tResultYTDFeb`,0 AS `tResultMTDMar`,0 AS `tResultYTDMar`,0 AS `tResultMTDApr`,0 AS `tResultYTDApr`,0 AS `tResultMTDMei`,0 AS `tResultYTDMei`,0 AS `tResultMTDJun`,0 AS `tResultYTDJun`,0 AS `tResultMTDJul`,0 AS `tResultYTDJul`,0 AS `tResultMTDAug`,0 AS `tResultYTDAug`,0 AS `tResultMTDSep`,0 AS `tResultYTDSep`,0 AS `tResultMTDOkt`,0 AS `tResultYTDOkt`,`trk`.`tResultMTD` AS `tResultMTDNov`,`trk`.`tResultYTD` AS `tResultYTDNov`,0 AS `tResultMTDDes`,0 AS `tResultYTDDes` from (`mrumuskpi` `mrk` left join `tresultkpi` `trk` on(`mrk`.`id` = `trk`.`idRawData` and `trk`.`tMonth` = 11)) union all select `mrk`.`id` AS `id`,`mrk`.`vKet` AS `vKet`,`trk`.`tYear` AS `tYear`,0 AS `tResultMTDJan`,0 AS `tResultYTDJan`,0 AS `tResultMTDfeb`,0 AS `tResultYTDFeb`,0 AS `tResultMTDMar`,0 AS `tResultYTDMar`,0 AS `tResultMTDApr`,0 AS `tResultYTDApr`,0 AS `tResultMTDMei`,0 AS `tResultYTDMei`,0 AS `tResultMTDJun`,0 AS `tResultYTDJun`,0 AS `tResultMTDJul`,0 AS `tResultYTDJul`,0 AS `tResultMTDAug`,0 AS `tResultYTDAug`,0 AS `tResultMTDSep`,0 AS `tResultYTDSep`,0 AS `tResultMTDOkt`,0 AS `tResultYTDOkt`,0 AS `tResultMTDNov`,0 AS `tResultYTDNov`,`trk`.`tResultMTD` AS `tResultMTDDes`,`trk`.`tResultYTD` AS `tResultYTDDes` from (`mrumuskpi` `mrk` left join `tresultkpi` `trk` on(`mrk`.`id` = `trk`.`idRawData` and `trk`.`tMonth` = 12))) AS `a` WHERE `a`.`tYear` is not null GROUP BY `a`.`id`, `a`.`vKet`, `a`.`tYear` ;

-- --------------------------------------------------------

--
-- Structure for view `vkpitotargetdata`
--
DROP TABLE IF EXISTS `vkpitotargetdata`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vkpitotargetdata`  AS SELECT `a`.`id` AS `id`, `a`.`vKet` AS `vKet`, `a`.`tYear` AS `tYear`, concat(sum(`a`.`tResultMTDJan`),',',sum(`a`.`tResultMTDfeb`),',',sum(`a`.`tResultMTDMar`),',',sum(`a`.`tResultMTDApr`),',',sum(`a`.`tResultMTDMei`),',',sum(`a`.`tResultMTDJun`),',',sum(`a`.`tResultMTDJul`),',',sum(`a`.`tResultMTDAug`),',',sum(`a`.`tResultMTDSep`),',',sum(`a`.`tResultMTDOkt`),',',sum(`a`.`tResultMTDNov`),',',sum(`a`.`tResultMTDDes`)) AS `MTD`, concat(sum(`a`.`tResultYTDJan`),',',sum(`a`.`tResultYTDFeb`),',',sum(`a`.`tResultYTDMar`),',',sum(`a`.`tResultYTDApr`),',',sum(`a`.`tResultYTDMei`),',',sum(`a`.`tResultYTDJun`),',',sum(`a`.`tResultYTDJul`),',',sum(`a`.`tResultYTDAug`),',',sum(`a`.`tResultYTDSep`),',',sum(`a`.`tResultYTDOkt`),',',sum(`a`.`tResultYTDNov`),',',sum(`a`.`tResultYTDDes`)) AS `YTD` FROM (select `mrk`.`id` AS `id`,`mrk`.`vKet` AS `vKet`,`trk`.`tYear` AS `tYear`,`trk`.`tResultMTD` AS `tResultMTDJan`,`trk`.`tResultYTD` AS `tResultYTDJan`,0 AS `tResultMTDfeb`,0 AS `tResultYTDFeb`,0 AS `tResultMTDMar`,0 AS `tResultYTDMar`,0 AS `tResultMTDApr`,0 AS `tResultYTDApr`,0 AS `tResultMTDMei`,0 AS `tResultYTDMei`,0 AS `tResultMTDJun`,0 AS `tResultYTDJun`,0 AS `tResultMTDJul`,0 AS `tResultYTDJul`,0 AS `tResultMTDAug`,0 AS `tResultYTDAug`,0 AS `tResultMTDSep`,0 AS `tResultYTDSep`,0 AS `tResultMTDOkt`,0 AS `tResultYTDOkt`,0 AS `tResultMTDNov`,0 AS `tResultYTDNov`,0 AS `tResultMTDDes`,0 AS `tResultYTDDes` from (`mrumusgrafik` `mrk` left join `tresultgrafik` `trk` on(`mrk`.`id` = `trk`.`idRawData` and `trk`.`tMonth` = 1)) union all select `mrk`.`id` AS `id`,`mrk`.`vKet` AS `vKet`,`trk`.`tYear` AS `tYear`,0 AS `tResultMTDJan`,0 AS `tResultYTDJan`,`trk`.`tResultMTD` AS `tResultMTDfeb`,`trk`.`tResultYTD` AS `tResultYTDFeb`,0 AS `tResultMTDMar`,0 AS `tResultYTDMar`,0 AS `tResultMTDApr`,0 AS `tResultYTDApr`,0 AS `tResultMTDMei`,0 AS `tResultYTDMei`,0 AS `tResultMTDJun`,0 AS `tResultYTDJun`,0 AS `tResultMTDJul`,0 AS `tResultYTDJul`,0 AS `tResultMTDAug`,0 AS `tResultYTDAug`,0 AS `tResultMTDSep`,0 AS `tResultYTDSep`,0 AS `tResultMTDOkt`,0 AS `tResultYTDOkt`,0 AS `tResultMTDNov`,0 AS `tResultYTDNov`,0 AS `tResultMTDDes`,0 AS `tResultYTDDes` from (`mrumusgrafik` `mrk` left join `tresultgrafik` `trk` on(`mrk`.`id` = `trk`.`idRawData` and `trk`.`tMonth` = 2)) union all select `mrk`.`id` AS `id`,`mrk`.`vKet` AS `vKet`,`trk`.`tYear` AS `tYear`,0 AS `tResultMTDJan`,0 AS `tResultYTDJan`,0 AS `tResultMTDfeb`,0 AS `tResultYTDFeb`,`trk`.`tResultMTD` AS `tResultMTDMar`,`trk`.`tResultYTD` AS `tResultYTDMar`,0 AS `tResultMTDApr`,0 AS `tResultYTDApr`,0 AS `tResultMTDMei`,0 AS `tResultYTDMei`,0 AS `tResultMTDJun`,0 AS `tResultYTDJun`,0 AS `tResultMTDJul`,0 AS `tResultYTDJul`,0 AS `tResultMTDAug`,0 AS `tResultYTDAug`,0 AS `tResultMTDSep`,0 AS `tResultYTDSep`,0 AS `tResultMTDOkt`,0 AS `tResultYTDOkt`,0 AS `tResultMTDNov`,0 AS `tResultYTDNov`,0 AS `tResultMTDDes`,0 AS `tResultYTDDes` from (`mrumusgrafik` `mrk` left join `tresultgrafik` `trk` on(`mrk`.`id` = `trk`.`idRawData` and `trk`.`tMonth` = 3)) union all select `mrk`.`id` AS `id`,`mrk`.`vKet` AS `vKet`,`trk`.`tYear` AS `tYear`,0 AS `tResultMTDJan`,0 AS `tResultYTDJan`,0 AS `tResultMTDfeb`,0 AS `tResultYTDFeb`,0 AS `tResultMTDMar`,0 AS `tResultYTDMar`,`trk`.`tResultMTD` AS `tResultMTDApr`,`trk`.`tResultYTD` AS `tResultYTDApr`,0 AS `tResultMTDMei`,0 AS `tResultYTDMei`,0 AS `tResultMTDJun`,0 AS `tResultYTDJun`,0 AS `tResultMTDJul`,0 AS `tResultYTDJul`,0 AS `tResultMTDAug`,0 AS `tResultYTDAug`,0 AS `tResultMTDSep`,0 AS `tResultYTDSep`,0 AS `tResultMTDOkt`,0 AS `tResultYTDOkt`,0 AS `tResultMTDNov`,0 AS `tResultYTDNov`,0 AS `tResultMTDDes`,0 AS `tResultYTDDes` from (`mrumusgrafik` `mrk` left join `tresultgrafik` `trk` on(`mrk`.`id` = `trk`.`idRawData` and `trk`.`tMonth` = 4)) union all select `mrk`.`id` AS `id`,`mrk`.`vKet` AS `vKet`,`trk`.`tYear` AS `tYear`,0 AS `tResultMTDJan`,0 AS `tResultYTDJan`,0 AS `tResultMTDfeb`,0 AS `tResultYTDFeb`,0 AS `tResultMTDMar`,0 AS `tResultYTDMar`,0 AS `tResultMTDApr`,0 AS `tResultYTDApr`,`trk`.`tResultMTD` AS `tResultMTDMei`,`trk`.`tResultYTD` AS `tResultYTDMei`,0 AS `tResultMTDJun`,0 AS `tResultYTDJun`,0 AS `tResultMTDJul`,0 AS `tResultYTDJul`,0 AS `tResultMTDAug`,0 AS `tResultYTDAug`,0 AS `tResultMTDSep`,0 AS `tResultYTDSep`,0 AS `tResultMTDOkt`,0 AS `tResultYTDOkt`,0 AS `tResultMTDNov`,0 AS `tResultYTDNov`,0 AS `tResultMTDDes`,0 AS `tResultYTDDes` from (`mrumusgrafik` `mrk` left join `tresultgrafik` `trk` on(`mrk`.`id` = `trk`.`idRawData` and `trk`.`tMonth` = 5)) union all select `mrk`.`id` AS `id`,`mrk`.`vKet` AS `vKet`,`trk`.`tYear` AS `tYear`,0 AS `tResultMTDJan`,0 AS `tResultYTDJan`,0 AS `tResultMTDfeb`,0 AS `tResultYTDFeb`,0 AS `tResultMTDMar`,0 AS `tResultYTDMar`,0 AS `tResultMTDApr`,0 AS `tResultYTDApr`,0 AS `tResultMTDMei`,0 AS `tResultYTDMei`,`trk`.`tResultMTD` AS `tResultMTDJun`,`trk`.`tResultYTD` AS `tResultYTDJun`,0 AS `tResultMTDJul`,0 AS `tResultYTDJul`,0 AS `tResultMTDAug`,0 AS `tResultYTDAug`,0 AS `tResultMTDSep`,0 AS `tResultYTDSep`,0 AS `tResultMTDOkt`,0 AS `tResultYTDOkt`,0 AS `tResultMTDNov`,0 AS `tResultYTDNov`,0 AS `tResultMTDDes`,0 AS `tResultYTDDes` from (`mrumusgrafik` `mrk` left join `tresultgrafik` `trk` on(`mrk`.`id` = `trk`.`idRawData` and `trk`.`tMonth` = 6)) union all select `mrk`.`id` AS `id`,`mrk`.`vKet` AS `vKet`,`trk`.`tYear` AS `tYear`,0 AS `tResultMTDJan`,0 AS `tResultYTDJan`,0 AS `tResultMTDfeb`,0 AS `tResultYTDFeb`,0 AS `tResultMTDMar`,0 AS `tResultYTDMar`,0 AS `tResultMTDApr`,0 AS `tResultYTDApr`,0 AS `tResultMTDMei`,0 AS `tResultYTDMei`,0 AS `tResultMTDJun`,0 AS `tResultYTDJun`,`trk`.`tResultMTD` AS `tResultMTDJul`,`trk`.`tResultYTD` AS `tResultYTDJul`,0 AS `tResultMTDAug`,0 AS `tResultYTDAug`,0 AS `tResultMTDSep`,0 AS `tResultYTDSep`,0 AS `tResultMTDOkt`,0 AS `tResultYTDOkt`,0 AS `tResultMTDNov`,0 AS `tResultYTDNov`,0 AS `tResultMTDDes`,0 AS `tResultYTDDes` from (`mrumusgrafik` `mrk` left join `tresultgrafik` `trk` on(`mrk`.`id` = `trk`.`idRawData` and `trk`.`tMonth` = 7)) union all select `mrk`.`id` AS `id`,`mrk`.`vKet` AS `vKet`,`trk`.`tYear` AS `tYear`,0 AS `tResultMTDJan`,0 AS `tResultYTDJan`,0 AS `tResultMTDfeb`,0 AS `tResultYTDFeb`,0 AS `tResultMTDMar`,0 AS `tResultYTDMar`,0 AS `tResultMTDApr`,0 AS `tResultYTDApr`,0 AS `tResultMTDMei`,0 AS `tResultYTDMei`,0 AS `tResultMTDJun`,0 AS `tResultYTDJun`,0 AS `tResultMTDJul`,0 AS `tResultYTDJul`,`trk`.`tResultMTD` AS `tResultMTDAug`,`trk`.`tResultYTD` AS `tResultYTDAug`,0 AS `tResultMTDSep`,0 AS `tResultYTDSep`,0 AS `tResultMTDOkt`,0 AS `tResultYTDOkt`,0 AS `tResultMTDNov`,0 AS `tResultYTDNov`,0 AS `tResultMTDDes`,0 AS `tResultYTDDes` from (`mrumusgrafik` `mrk` left join `tresultgrafik` `trk` on(`mrk`.`id` = `trk`.`idRawData` and `trk`.`tMonth` = 8)) union all select `mrk`.`id` AS `id`,`mrk`.`vKet` AS `vKet`,`trk`.`tYear` AS `tYear`,0 AS `tResultMTDJan`,0 AS `tResultYTDJan`,0 AS `tResultMTDfeb`,0 AS `tResultYTDFeb`,0 AS `tResultMTDMar`,0 AS `tResultYTDMar`,0 AS `tResultMTDApr`,0 AS `tResultYTDApr`,0 AS `tResultMTDMei`,0 AS `tResultYTDMei`,0 AS `tResultMTDJun`,0 AS `tResultYTDJun`,0 AS `tResultMTDJul`,0 AS `tResultYTDJul`,0 AS `tResultMTDAug`,0 AS `tResultYTDAug`,`trk`.`tResultMTD` AS `tResultMTDSep`,`trk`.`tResultYTD` AS `tResultYTDSep`,0 AS `tResultMTDOkt`,0 AS `tResultYTDOkt`,0 AS `tResultMTDNov`,0 AS `tResultYTDNov`,0 AS `tResultMTDDes`,0 AS `tResultYTDDes` from (`mrumusgrafik` `mrk` left join `tresultgrafik` `trk` on(`mrk`.`id` = `trk`.`idRawData` and `trk`.`tMonth` = 9)) union all select `mrk`.`id` AS `id`,`mrk`.`vKet` AS `vKet`,`trk`.`tYear` AS `tYear`,0 AS `tResultMTDJan`,0 AS `tResultYTDJan`,0 AS `tResultMTDfeb`,0 AS `tResultYTDFeb`,0 AS `tResultMTDMar`,0 AS `tResultYTDMar`,0 AS `tResultMTDApr`,0 AS `tResultYTDApr`,0 AS `tResultMTDMei`,0 AS `tResultYTDMei`,0 AS `tResultMTDJun`,0 AS `tResultYTDJun`,0 AS `tResultMTDJul`,0 AS `tResultYTDJul`,0 AS `tResultMTDAug`,0 AS `tResultYTDAug`,0 AS `tResultMTDSep`,0 AS `tResultYTDSep`,`trk`.`tResultMTD` AS `tResultMTDOkt`,`trk`.`tResultYTD` AS `tResultYTDOkt`,0 AS `tResultMTDNov`,0 AS `tResultYTDNov`,0 AS `tResultMTDDes`,0 AS `tResultYTDDes` from (`mrumusgrafik` `mrk` left join `tresultgrafik` `trk` on(`mrk`.`id` = `trk`.`idRawData` and `trk`.`tMonth` = 10)) union all select `mrk`.`id` AS `id`,`mrk`.`vKet` AS `vKet`,`trk`.`tYear` AS `tYear`,0 AS `tResultMTDJan`,0 AS `tResultYTDJan`,0 AS `tResultMTDfeb`,0 AS `tResultYTDFeb`,0 AS `tResultMTDMar`,0 AS `tResultYTDMar`,0 AS `tResultMTDApr`,0 AS `tResultYTDApr`,0 AS `tResultMTDMei`,0 AS `tResultYTDMei`,0 AS `tResultMTDJun`,0 AS `tResultYTDJun`,0 AS `tResultMTDJul`,0 AS `tResultYTDJul`,0 AS `tResultMTDAug`,0 AS `tResultYTDAug`,0 AS `tResultMTDSep`,0 AS `tResultYTDSep`,0 AS `tResultMTDOkt`,0 AS `tResultYTDOkt`,`trk`.`tResultMTD` AS `tResultMTDNov`,`trk`.`tResultYTD` AS `tResultYTDNov`,0 AS `tResultMTDDes`,0 AS `tResultYTDDes` from (`mrumusgrafik` `mrk` left join `tresultgrafik` `trk` on(`mrk`.`id` = `trk`.`idRawData` and `trk`.`tMonth` = 11)) union all select `mrk`.`id` AS `id`,`mrk`.`vKet` AS `vKet`,`trk`.`tYear` AS `tYear`,0 AS `tResultMTDJan`,0 AS `tResultYTDJan`,0 AS `tResultMTDfeb`,0 AS `tResultYTDFeb`,0 AS `tResultMTDMar`,0 AS `tResultYTDMar`,0 AS `tResultMTDApr`,0 AS `tResultYTDApr`,0 AS `tResultMTDMei`,0 AS `tResultYTDMei`,0 AS `tResultMTDJun`,0 AS `tResultYTDJun`,0 AS `tResultMTDJul`,0 AS `tResultYTDJul`,0 AS `tResultMTDAug`,0 AS `tResultYTDAug`,0 AS `tResultMTDSep`,0 AS `tResultYTDSep`,0 AS `tResultMTDOkt`,0 AS `tResultYTDOkt`,0 AS `tResultMTDNov`,0 AS `tResultYTDNov`,`trk`.`tResultMTD` AS `tResultMTDDes`,`trk`.`tResultYTD` AS `tResultYTDDes` from (`mrumusgrafik` `mrk` left join `tresultgrafik` `trk` on(`mrk`.`id` = `trk`.`idRawData` and `trk`.`tMonth` = 12))) AS `a` WHERE `a`.`tYear` is not null GROUP BY `a`.`id`, `a`.`vKet`, `a`.`tYear` ;

-- --------------------------------------------------------

--
-- Structure for view `vkpitotargetdata_site`
--
DROP TABLE IF EXISTS `vkpitotargetdata_site`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vkpitotargetdata_site`  AS SELECT `a`.`id` AS `id`, `a`.`vKet` AS `vKet`, `a`.`tYear` AS `tYear`, `a`.`compId` AS `compId`, concat(sum(`a`.`tResultMTDJan`),',',sum(`a`.`tResultMTDfeb`),',',sum(`a`.`tResultMTDMar`),',',sum(`a`.`tResultMTDApr`),',',sum(`a`.`tResultMTDMei`),',',sum(`a`.`tResultMTDJun`),',',sum(`a`.`tResultMTDJul`),',',sum(`a`.`tResultMTDAug`),',',sum(`a`.`tResultMTDSep`),',',sum(`a`.`tResultMTDOkt`),',',sum(`a`.`tResultMTDNov`),',',sum(`a`.`tResultMTDDes`)) AS `MTD`, concat(sum(`a`.`tResultYTDJan`),',',sum(`a`.`tResultYTDFeb`),',',sum(`a`.`tResultYTDMar`),',',sum(`a`.`tResultYTDApr`),',',sum(`a`.`tResultYTDMei`),',',sum(`a`.`tResultYTDJun`),',',sum(`a`.`tResultYTDJul`),',',sum(`a`.`tResultYTDAug`),',',sum(`a`.`tResultYTDSep`),',',sum(`a`.`tResultYTDOkt`),',',sum(`a`.`tResultYTDNov`),',',sum(`a`.`tResultYTDDes`)) AS `YTD` FROM (select `mrk`.`id` AS `id`,`mrk`.`vKet` AS `vKet`,`trk`.`compId` AS `compId`,`trk`.`tYear` AS `tYear`,`trk`.`tResultMTD` AS `tResultMTDJan`,`trk`.`tResultYTD` AS `tResultYTDJan`,0 AS `tResultMTDfeb`,0 AS `tResultYTDFeb`,0 AS `tResultMTDMar`,0 AS `tResultYTDMar`,0 AS `tResultMTDApr`,0 AS `tResultYTDApr`,0 AS `tResultMTDMei`,0 AS `tResultYTDMei`,0 AS `tResultMTDJun`,0 AS `tResultYTDJun`,0 AS `tResultMTDJul`,0 AS `tResultYTDJul`,0 AS `tResultMTDAug`,0 AS `tResultYTDAug`,0 AS `tResultMTDSep`,0 AS `tResultYTDSep`,0 AS `tResultMTDOkt`,0 AS `tResultYTDOkt`,0 AS `tResultMTDNov`,0 AS `tResultYTDNov`,0 AS `tResultMTDDes`,0 AS `tResultYTDDes` from (`mrumusgrafik` `mrk` left join `tresultgrafik` `trk` on(`mrk`.`id` = `trk`.`idRawData` and `trk`.`tMonth` = 1)) union all select `mrk`.`id` AS `id`,`mrk`.`vKet` AS `vKet`,`trk`.`compId` AS `compId`,`trk`.`tYear` AS `tYear`,0 AS `tResultMTDJan`,0 AS `tResultYTDJan`,`trk`.`tResultMTD` AS `tResultMTDfeb`,`trk`.`tResultYTD` AS `tResultYTDFeb`,0 AS `tResultMTDMar`,0 AS `tResultYTDMar`,0 AS `tResultMTDApr`,0 AS `tResultYTDApr`,0 AS `tResultMTDMei`,0 AS `tResultYTDMei`,0 AS `tResultMTDJun`,0 AS `tResultYTDJun`,0 AS `tResultMTDJul`,0 AS `tResultYTDJul`,0 AS `tResultMTDAug`,0 AS `tResultYTDAug`,0 AS `tResultMTDSep`,0 AS `tResultYTDSep`,0 AS `tResultMTDOkt`,0 AS `tResultYTDOkt`,0 AS `tResultMTDNov`,0 AS `tResultYTDNov`,0 AS `tResultMTDDes`,0 AS `tResultYTDDes` from (`mrumusgrafik` `mrk` left join `tresultgrafik` `trk` on(`mrk`.`id` = `trk`.`idRawData` and `trk`.`tMonth` = 2)) union all select `mrk`.`id` AS `id`,`mrk`.`vKet` AS `vKet`,`trk`.`compId` AS `compId`,`trk`.`tYear` AS `tYear`,0 AS `tResultMTDJan`,0 AS `tResultYTDJan`,0 AS `tResultMTDfeb`,0 AS `tResultYTDFeb`,`trk`.`tResultMTD` AS `tResultMTDMar`,`trk`.`tResultYTD` AS `tResultYTDMar`,0 AS `tResultMTDApr`,0 AS `tResultYTDApr`,0 AS `tResultMTDMei`,0 AS `tResultYTDMei`,0 AS `tResultMTDJun`,0 AS `tResultYTDJun`,0 AS `tResultMTDJul`,0 AS `tResultYTDJul`,0 AS `tResultMTDAug`,0 AS `tResultYTDAug`,0 AS `tResultMTDSep`,0 AS `tResultYTDSep`,0 AS `tResultMTDOkt`,0 AS `tResultYTDOkt`,0 AS `tResultMTDNov`,0 AS `tResultYTDNov`,0 AS `tResultMTDDes`,0 AS `tResultYTDDes` from (`mrumusgrafik` `mrk` left join `tresultgrafik` `trk` on(`mrk`.`id` = `trk`.`idRawData` and `trk`.`tMonth` = 3)) union all select `mrk`.`id` AS `id`,`mrk`.`vKet` AS `vKet`,`trk`.`compId` AS `compId`,`trk`.`tYear` AS `tYear`,0 AS `tResultMTDJan`,0 AS `tResultYTDJan`,0 AS `tResultMTDfeb`,0 AS `tResultYTDFeb`,0 AS `tResultMTDMar`,0 AS `tResultYTDMar`,`trk`.`tResultMTD` AS `tResultMTDApr`,`trk`.`tResultYTD` AS `tResultYTDApr`,0 AS `tResultMTDMei`,0 AS `tResultYTDMei`,0 AS `tResultMTDJun`,0 AS `tResultYTDJun`,0 AS `tResultMTDJul`,0 AS `tResultYTDJul`,0 AS `tResultMTDAug`,0 AS `tResultYTDAug`,0 AS `tResultMTDSep`,0 AS `tResultYTDSep`,0 AS `tResultMTDOkt`,0 AS `tResultYTDOkt`,0 AS `tResultMTDNov`,0 AS `tResultYTDNov`,0 AS `tResultMTDDes`,0 AS `tResultYTDDes` from (`mrumusgrafik` `mrk` left join `tresultgrafik` `trk` on(`mrk`.`id` = `trk`.`idRawData` and `trk`.`tMonth` = 4)) union all select `mrk`.`id` AS `id`,`mrk`.`vKet` AS `vKet`,`trk`.`compId` AS `compId`,`trk`.`tYear` AS `tYear`,0 AS `tResultMTDJan`,0 AS `tResultYTDJan`,0 AS `tResultMTDfeb`,0 AS `tResultYTDFeb`,0 AS `tResultMTDMar`,0 AS `tResultYTDMar`,0 AS `tResultMTDApr`,0 AS `tResultYTDApr`,`trk`.`tResultMTD` AS `tResultMTDMei`,`trk`.`tResultYTD` AS `tResultYTDMei`,0 AS `tResultMTDJun`,0 AS `tResultYTDJun`,0 AS `tResultMTDJul`,0 AS `tResultYTDJul`,0 AS `tResultMTDAug`,0 AS `tResultYTDAug`,0 AS `tResultMTDSep`,0 AS `tResultYTDSep`,0 AS `tResultMTDOkt`,0 AS `tResultYTDOkt`,0 AS `tResultMTDNov`,0 AS `tResultYTDNov`,0 AS `tResultMTDDes`,0 AS `tResultYTDDes` from (`mrumusgrafik` `mrk` left join `tresultgrafik` `trk` on(`mrk`.`id` = `trk`.`idRawData` and `trk`.`tMonth` = 5)) union all select `mrk`.`id` AS `id`,`mrk`.`vKet` AS `vKet`,`trk`.`compId` AS `compId`,`trk`.`tYear` AS `tYear`,0 AS `tResultMTDJan`,0 AS `tResultYTDJan`,0 AS `tResultMTDfeb`,0 AS `tResultYTDFeb`,0 AS `tResultMTDMar`,0 AS `tResultYTDMar`,0 AS `tResultMTDApr`,0 AS `tResultYTDApr`,0 AS `tResultMTDMei`,0 AS `tResultYTDMei`,`trk`.`tResultMTD` AS `tResultMTDJun`,`trk`.`tResultYTD` AS `tResultYTDJun`,0 AS `tResultMTDJul`,0 AS `tResultYTDJul`,0 AS `tResultMTDAug`,0 AS `tResultYTDAug`,0 AS `tResultMTDSep`,0 AS `tResultYTDSep`,0 AS `tResultMTDOkt`,0 AS `tResultYTDOkt`,0 AS `tResultMTDNov`,0 AS `tResultYTDNov`,0 AS `tResultMTDDes`,0 AS `tResultYTDDes` from (`mrumusgrafik` `mrk` left join `tresultgrafik` `trk` on(`mrk`.`id` = `trk`.`idRawData` and `trk`.`tMonth` = 6)) union all select `mrk`.`id` AS `id`,`mrk`.`vKet` AS `vKet`,`trk`.`compId` AS `compId`,`trk`.`tYear` AS `tYear`,0 AS `tResultMTDJan`,0 AS `tResultYTDJan`,0 AS `tResultMTDfeb`,0 AS `tResultYTDFeb`,0 AS `tResultMTDMar`,0 AS `tResultYTDMar`,0 AS `tResultMTDApr`,0 AS `tResultYTDApr`,0 AS `tResultMTDMei`,0 AS `tResultYTDMei`,0 AS `tResultMTDJun`,0 AS `tResultYTDJun`,`trk`.`tResultMTD` AS `tResultMTDJul`,`trk`.`tResultYTD` AS `tResultYTDJul`,0 AS `tResultMTDAug`,0 AS `tResultYTDAug`,0 AS `tResultMTDSep`,0 AS `tResultYTDSep`,0 AS `tResultMTDOkt`,0 AS `tResultYTDOkt`,0 AS `tResultMTDNov`,0 AS `tResultYTDNov`,0 AS `tResultMTDDes`,0 AS `tResultYTDDes` from (`mrumusgrafik` `mrk` left join `tresultgrafik` `trk` on(`mrk`.`id` = `trk`.`idRawData` and `trk`.`tMonth` = 7)) union all select `mrk`.`id` AS `id`,`mrk`.`vKet` AS `vKet`,`trk`.`compId` AS `compId`,`trk`.`tYear` AS `tYear`,0 AS `tResultMTDJan`,0 AS `tResultYTDJan`,0 AS `tResultMTDfeb`,0 AS `tResultYTDFeb`,0 AS `tResultMTDMar`,0 AS `tResultYTDMar`,0 AS `tResultMTDApr`,0 AS `tResultYTDApr`,0 AS `tResultMTDMei`,0 AS `tResultYTDMei`,0 AS `tResultMTDJun`,0 AS `tResultYTDJun`,0 AS `tResultMTDJul`,0 AS `tResultYTDJul`,`trk`.`tResultMTD` AS `tResultMTDAug`,`trk`.`tResultYTD` AS `tResultYTDAug`,0 AS `tResultMTDSep`,0 AS `tResultYTDSep`,0 AS `tResultMTDOkt`,0 AS `tResultYTDOkt`,0 AS `tResultMTDNov`,0 AS `tResultYTDNov`,0 AS `tResultMTDDes`,0 AS `tResultYTDDes` from (`mrumusgrafik` `mrk` left join `tresultgrafik` `trk` on(`mrk`.`id` = `trk`.`idRawData` and `trk`.`tMonth` = 8)) union all select `mrk`.`id` AS `id`,`mrk`.`vKet` AS `vKet`,`trk`.`compId` AS `compId`,`trk`.`tYear` AS `tYear`,0 AS `tResultMTDJan`,0 AS `tResultYTDJan`,0 AS `tResultMTDfeb`,0 AS `tResultYTDFeb`,0 AS `tResultMTDMar`,0 AS `tResultYTDMar`,0 AS `tResultMTDApr`,0 AS `tResultYTDApr`,0 AS `tResultMTDMei`,0 AS `tResultYTDMei`,0 AS `tResultMTDJun`,0 AS `tResultYTDJun`,0 AS `tResultMTDJul`,0 AS `tResultYTDJul`,0 AS `tResultMTDAug`,0 AS `tResultYTDAug`,`trk`.`tResultMTD` AS `tResultMTDSep`,`trk`.`tResultYTD` AS `tResultYTDSep`,0 AS `tResultMTDOkt`,0 AS `tResultYTDOkt`,0 AS `tResultMTDNov`,0 AS `tResultYTDNov`,0 AS `tResultMTDDes`,0 AS `tResultYTDDes` from (`mrumusgrafik` `mrk` left join `tresultgrafik` `trk` on(`mrk`.`id` = `trk`.`idRawData` and `trk`.`tMonth` = 9)) union all select `mrk`.`id` AS `id`,`mrk`.`vKet` AS `vKet`,`trk`.`compId` AS `compId`,`trk`.`tYear` AS `tYear`,0 AS `tResultMTDJan`,0 AS `tResultYTDJan`,0 AS `tResultMTDfeb`,0 AS `tResultYTDFeb`,0 AS `tResultMTDMar`,0 AS `tResultYTDMar`,0 AS `tResultMTDApr`,0 AS `tResultYTDApr`,0 AS `tResultMTDMei`,0 AS `tResultYTDMei`,0 AS `tResultMTDJun`,0 AS `tResultYTDJun`,0 AS `tResultMTDJul`,0 AS `tResultYTDJul`,0 AS `tResultMTDAug`,0 AS `tResultYTDAug`,0 AS `tResultMTDSep`,0 AS `tResultYTDSep`,`trk`.`tResultMTD` AS `tResultMTDOkt`,`trk`.`tResultYTD` AS `tResultYTDOkt`,0 AS `tResultMTDNov`,0 AS `tResultYTDNov`,0 AS `tResultMTDDes`,0 AS `tResultYTDDes` from (`mrumusgrafik` `mrk` left join `tresultgrafik` `trk` on(`mrk`.`id` = `trk`.`idRawData` and `trk`.`tMonth` = 10)) union all select `mrk`.`id` AS `id`,`mrk`.`vKet` AS `vKet`,`trk`.`compId` AS `compId`,`trk`.`tYear` AS `tYear`,0 AS `tResultMTDJan`,0 AS `tResultYTDJan`,0 AS `tResultMTDfeb`,0 AS `tResultYTDFeb`,0 AS `tResultMTDMar`,0 AS `tResultYTDMar`,0 AS `tResultMTDApr`,0 AS `tResultYTDApr`,0 AS `tResultMTDMei`,0 AS `tResultYTDMei`,0 AS `tResultMTDJun`,0 AS `tResultYTDJun`,0 AS `tResultMTDJul`,0 AS `tResultYTDJul`,0 AS `tResultMTDAug`,0 AS `tResultYTDAug`,0 AS `tResultMTDSep`,0 AS `tResultYTDSep`,0 AS `tResultMTDOkt`,0 AS `tResultYTDOkt`,`trk`.`tResultMTD` AS `tResultMTDNov`,`trk`.`tResultYTD` AS `tResultYTDNov`,0 AS `tResultMTDDes`,0 AS `tResultYTDDes` from (`mrumusgrafik` `mrk` left join `tresultgrafik` `trk` on(`mrk`.`id` = `trk`.`idRawData` and `trk`.`tMonth` = 11)) union all select `mrk`.`id` AS `id`,`mrk`.`vKet` AS `vKet`,`trk`.`compId` AS `compId`,`trk`.`tYear` AS `tYear`,0 AS `tResultMTDJan`,0 AS `tResultYTDJan`,0 AS `tResultMTDfeb`,0 AS `tResultYTDFeb`,0 AS `tResultMTDMar`,0 AS `tResultYTDMar`,0 AS `tResultMTDApr`,0 AS `tResultYTDApr`,0 AS `tResultMTDMei`,0 AS `tResultYTDMei`,0 AS `tResultMTDJun`,0 AS `tResultYTDJun`,0 AS `tResultMTDJul`,0 AS `tResultYTDJul`,0 AS `tResultMTDAug`,0 AS `tResultYTDAug`,0 AS `tResultMTDSep`,0 AS `tResultYTDSep`,0 AS `tResultMTDOkt`,0 AS `tResultYTDOkt`,0 AS `tResultMTDNov`,0 AS `tResultYTDNov`,`trk`.`tResultMTD` AS `tResultMTDDes`,`trk`.`tResultYTD` AS `tResultYTDDes` from (`mrumusgrafik` `mrk` left join `tresultgrafik` `trk` on(`mrk`.`id` = `trk`.`idRawData` and `trk`.`tMonth` = 12))) AS `a` WHERE `a`.`tYear` is not null GROUP BY `a`.`id`, `a`.`vKet`, `a`.`tYear` ;

-- --------------------------------------------------------

--
-- Structure for view `vline_result_util`
--
DROP TABLE IF EXISTS `vline_result_util`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vline_result_util`  AS SELECT `a`.`lineId` AS `lineId`, `a`.`compId` AS `compId`, `a`.`lineName` AS `lineName`, `b`.`tYear` AS `tYear`, sum(`b`.`tCapacity`) AS `tCapacity`, sum(`b`.`tResult`) AS `tResult`, `b`.`tResult`/ `b`.`tCapacity` * 100 AS `tUtil` FROM (`mline` `a` left join `tresultutil` `b` on(`a`.`lineId` = `b`.`lineId`)) WHERE `b`.`tYear` is not null GROUP BY `a`.`lineId`, `b`.`tYear` ;

-- --------------------------------------------------------

--
-- Structure for view `vrawdata`
--
DROP TABLE IF EXISTS `vrawdata`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vrawdata`  AS SELECT `a`.`id` AS `id`, `a`.`vKet` AS `vKet`, `a`.`dept` AS `dept`, `a`.`tYear` AS `tYear`, sum(`a`.`mJan`) AS `mJan`, sum(`a`.`mFeb`) AS `mFeb`, sum(`a`.`mMar`) AS `mMar`, sum(`a`.`mApr`) AS `mApr`, sum(`a`.`mMei`) AS `mMei`, sum(`a`.`mJun`) AS `mJun`, sum(`a`.`mJul`) AS `mJul`, sum(`a`.`mAug`) AS `mAug`, sum(`a`.`mSep`) AS `mSep`, sum(`a`.`mOct`) AS `mOct`, sum(`a`.`mNov`) AS `mNov`, sum(`a`.`mDec`) AS `mDec` FROM (select `a`.`id` AS `id`,`a`.`vKet` AS `vKet`,`a`.`dept` AS `dept`,`b`.`tYear` AS `tYear`,`b`.`tResult` AS `mJan`,0 AS `mFeb`,0 AS `mMar`,0 AS `mApr`,0 AS `mMei`,0 AS `mJun`,0 AS `mJul`,0 AS `mAug`,0 AS `mSep`,0 AS `mOct`,0 AS `mNov`,0 AS `mDec` from (`mrawdata` `a` left join `tresultrawdata` `b` on(`a`.`id` = `b`.`idRawData` and `b`.`tMonth` = 1)) union all select `a`.`id` AS `id`,`a`.`vKet` AS `vKet`,`a`.`dept` AS `dept`,`b`.`tYear` AS `tYear`,0 AS `mJan`,`b`.`tResult` AS `mFeb`,0 AS `mMar`,0 AS `mApr`,0 AS `mMei`,0 AS `mJun`,0 AS `mJul`,0 AS `mAug`,0 AS `mSep`,0 AS `mOct`,0 AS `mNov`,0 AS `mDec` from (`mrawdata` `a` left join `tresultrawdata` `b` on(`a`.`id` = `b`.`idRawData` and `b`.`tMonth` = 2)) union all select `a`.`id` AS `id`,`a`.`vKet` AS `vKet`,`a`.`dept` AS `dept`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mFeb`,`b`.`tResult` AS `mMar`,0 AS `mApr`,0 AS `mMei`,0 AS `mJun`,0 AS `mJul`,0 AS `mAug`,0 AS `mSep`,0 AS `mOct`,0 AS `mNov`,0 AS `mDec` from (`mrawdata` `a` left join `tresultrawdata` `b` on(`a`.`id` = `b`.`idRawData` and `b`.`tMonth` = 3)) union all select `a`.`id` AS `id`,`a`.`vKet` AS `vKet`,`a`.`dept` AS `dept`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mFeb`,0 AS `mMar`,`b`.`tResult` AS `mApr`,0 AS `mMei`,0 AS `mJun`,0 AS `mJul`,0 AS `mAug`,0 AS `mSep`,0 AS `mOct`,0 AS `mNov`,0 AS `mDec` from (`mrawdata` `a` left join `tresultrawdata` `b` on(`a`.`id` = `b`.`idRawData` and `b`.`tMonth` = 4)) union all select `a`.`id` AS `id`,`a`.`vKet` AS `vKet`,`a`.`dept` AS `dept`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mFeb`,0 AS `mMar`,0 AS `mApr`,`b`.`tResult` AS `mMei`,0 AS `mJun`,0 AS `mJul`,0 AS `mAug`,0 AS `mSep`,0 AS `mOct`,0 AS `mNov`,0 AS `mDec` from (`mrawdata` `a` left join `tresultrawdata` `b` on(`a`.`id` = `b`.`idRawData` and `b`.`tMonth` = 5)) union all select `a`.`id` AS `id`,`a`.`vKet` AS `vKet`,`a`.`dept` AS `dept`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mFeb`,0 AS `mMar`,0 AS `mApr`,0 AS `mMei`,`b`.`tResult` AS `mJun`,0 AS `mJul`,0 AS `mAug`,0 AS `mSep`,0 AS `mOct`,0 AS `mNov`,0 AS `mDec` from (`mrawdata` `a` left join `tresultrawdata` `b` on(`a`.`id` = `b`.`idRawData` and `b`.`tMonth` = 6)) union all select `a`.`id` AS `id`,`a`.`vKet` AS `vKet`,`a`.`dept` AS `dept`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mFeb`,0 AS `mMar`,0 AS `mApr`,0 AS `mMei`,0 AS `mJun`,`b`.`tResult` AS `mJul`,0 AS `mAug`,0 AS `mSep`,0 AS `mOct`,0 AS `mNov`,0 AS `mDec` from (`mrawdata` `a` left join `tresultrawdata` `b` on(`a`.`id` = `b`.`idRawData` and `b`.`tMonth` = 7)) union all select `a`.`id` AS `id`,`a`.`vKet` AS `vKet`,`a`.`dept` AS `dept`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mFeb`,0 AS `mMar`,0 AS `mApr`,0 AS `mMei`,0 AS `mJun`,0 AS `mJul`,`b`.`tResult` AS `mAug`,0 AS `mSep`,0 AS `mOct`,0 AS `mNov`,0 AS `mDec` from (`mrawdata` `a` left join `tresultrawdata` `b` on(`a`.`id` = `b`.`idRawData` and `b`.`tMonth` = 8)) union all select `a`.`id` AS `id`,`a`.`vKet` AS `vKet`,`a`.`dept` AS `dept`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mFeb`,0 AS `mMar`,0 AS `mApr`,0 AS `mMei`,0 AS `mJun`,0 AS `mJul`,0 AS `mAug`,`b`.`tResult` AS `mSep`,0 AS `mOct`,0 AS `mNov`,0 AS `mDec` from (`mrawdata` `a` left join `tresultrawdata` `b` on(`a`.`id` = `b`.`idRawData` and `b`.`tMonth` = 9)) union all select `a`.`id` AS `id`,`a`.`vKet` AS `vKet`,`a`.`dept` AS `dept`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mFeb`,0 AS `mMar`,0 AS `mApr`,0 AS `mMei`,0 AS `mJun`,0 AS `mJul`,0 AS `mAug`,0 AS `mSep`,`b`.`tResult` AS `mOct`,0 AS `mNov`,0 AS `mDec` from (`mrawdata` `a` left join `tresultrawdata` `b` on(`a`.`id` = `b`.`idRawData` and `b`.`tMonth` = 10)) union all select `a`.`id` AS `id`,`a`.`vKet` AS `vKet`,`a`.`dept` AS `dept`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mFeb`,0 AS `mMar`,0 AS `mApr`,0 AS `mMei`,0 AS `mJun`,0 AS `mJul`,0 AS `mAug`,0 AS `mSep`,0 AS `mOct`,`b`.`tResult` AS `mNov`,0 AS `mDec` from (`mrawdata` `a` left join `tresultrawdata` `b` on(`a`.`id` = `b`.`idRawData` and `b`.`tMonth` = 11)) union all select `a`.`id` AS `id`,`a`.`vKet` AS `vKet`,`a`.`dept` AS `dept`,`b`.`tYear` AS `tYear`,`b`.`tResult` AS `mJan`,0 AS `mFeb`,0 AS `mMar`,0 AS `mApr`,0 AS `mMei`,0 AS `mJun`,0 AS `mJul`,0 AS `mAug`,0 AS `mSep`,0 AS `mOct`,0 AS `mNov`,`b`.`tResult` AS `mDec` from (`mrawdata` `a` left join `tresultrawdata` `b` on(`a`.`id` = `b`.`idRawData` and `b`.`tMonth` = 12))) AS `a` WHERE `a`.`tYear` is not null GROUP BY `a`.`id`, `a`.`vKet`, `a`.`tYear` ;

-- --------------------------------------------------------

--
-- Structure for view `vresult_prod_output`
--
DROP TABLE IF EXISTS `vresult_prod_output`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vresult_prod_output`  AS SELECT `a`.`pItemId` AS `pItemId`, `a`.`pItemName` AS `pItemName`, `a`.`compId` AS `compId`, `a`.`tYear` AS `tYear`, sum(`a`.`mJan`) AS `mJan`, sum(`a`.`mJan2`) AS `mJan2`, sum(`a`.`mFeb`) AS `mFeb`, sum(`a`.`mFeb2`) AS `mFeb2`, sum(`a`.`mMar`) AS `mMar`, sum(`a`.`mMar2`) AS `mMar2`, sum(`a`.`mApr`) AS `mApr`, sum(`a`.`mApr2`) AS `mApr2`, sum(`a`.`mMei`) AS `mMei`, sum(`a`.`mMei2`) AS `mMei2`, sum(`a`.`mJun`) AS `mJun`, sum(`a`.`mJun2`) AS `mJun2`, sum(`a`.`mJul`) AS `mJul`, sum(`a`.`mJul2`) AS `mJul2`, sum(`a`.`mAug`) AS `mAug`, sum(`a`.`mAug2`) AS `mAug2`, sum(`a`.`mSep`) AS `mSep`, sum(`a`.`mSep2`) AS `mSep2`, sum(`a`.`mOct`) AS `mOct`, sum(`a`.`mOct2`) AS `mOct2`, sum(`a`.`mNov`) AS `mNov`, sum(`a`.`mNov2`) AS `mNov2`, sum(`a`.`mDec`) AS `mDec`, sum(`a`.`mDec2`) AS `mDec2` FROM (select `a`.`pItemId` AS `pItemId`,`a`.`pItemName` AS `pItemName`,`b`.`compId` AS `compId`,`b`.`tYear` AS `tYear`,`b`.`pOutputBudget` AS `mJan`,0 AS `mJan2`,0 AS `mFeb`,0 AS `mFeb2`,0 AS `mMar`,0 AS `mMar2`,0 AS `mApr`,0 AS `mApr2`,0 AS `mMei`,0 AS `mMei2`,0 AS `mJun`,0 AS `mJun2`,0 AS `mJul`,0 AS `mJul2`,0 AS `mAug`,0 AS `mAug2`,0 AS `mSep`,0 AS `mSep2`,0 AS `mOct`,0 AS `mOct2`,0 AS `mNov`,0 AS `mNov2`,0 AS `mDec`,0 AS `mDec2` from (`mproductitem` `a` left join `tresultproductitem` `b` on(`a`.`pItemId` = `b`.`pItemId` and `b`.`tMonth` = 1)) union all select `a`.`pItemId` AS `pItemId`,`a`.`pItemName` AS `pItemName`,`b`.`compId` AS `compId`,`b`.`tYear` AS `tYear`,0 AS `mJan`,`b`.`pOutputActual` AS `mJan2`,0 AS `mFeb`,0 AS `mFeb2`,0 AS `mMar`,0 AS `mMar2`,0 AS `mApr`,0 AS `mApr2`,0 AS `mMei`,0 AS `mMei2`,0 AS `mJun`,0 AS `mJun2`,0 AS `mJul`,0 AS `mJul2`,0 AS `mAug`,0 AS `mAug2`,0 AS `mSep`,0 AS `mSep2`,0 AS `mOct`,0 AS `mOct2`,0 AS `mNov`,0 AS `mNov2`,0 AS `mDec`,0 AS `mDec2` from (`mproductitem` `a` left join `tresultproductitem` `b` on(`a`.`pItemId` = `b`.`pItemId` and `b`.`tMonth` = 1)) union all select `a`.`pItemId` AS `pItemId`,`a`.`pItemName` AS `pItemName`,`b`.`compId` AS `compId`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mJan2`,`b`.`pOutputBudget` AS `mFeb`,0 AS `mFeb2`,0 AS `mMar`,0 AS `mMar2`,0 AS `mApr`,0 AS `mApr2`,0 AS `mMei`,0 AS `mMei2`,0 AS `mJun`,0 AS `mJun2`,0 AS `mJul`,0 AS `mJul2`,0 AS `mAug`,0 AS `mAug2`,0 AS `mSep`,0 AS `mSep2`,0 AS `mOct`,0 AS `mOct2`,0 AS `mNov`,0 AS `mNov2`,0 AS `mDec`,0 AS `mDec2` from (`mproductitem` `a` left join `tresultproductitem` `b` on(`a`.`pItemId` = `b`.`pItemId` and `b`.`tMonth` = 2)) union all select `a`.`pItemId` AS `pItemId`,`a`.`pItemName` AS `pItemName`,`b`.`compId` AS `compId`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mJan2`,0 AS `mFeb`,`b`.`pOutputActual` AS `mFeb2`,0 AS `mMar`,0 AS `mMar2`,0 AS `mApr`,0 AS `mApr2`,0 AS `mMei`,0 AS `mMei2`,0 AS `mJun`,0 AS `mJun2`,0 AS `mJul`,0 AS `mJul2`,0 AS `mAug`,0 AS `mAug2`,0 AS `mSep`,0 AS `mSep2`,0 AS `mOct`,0 AS `mOct2`,0 AS `mNov`,0 AS `mNov2`,0 AS `mDec`,0 AS `mDec2` from (`mproductitem` `a` left join `tresultproductitem` `b` on(`a`.`pItemId` = `b`.`pItemId` and `b`.`tMonth` = 2)) union all select `a`.`pItemId` AS `pItemId`,`a`.`pItemName` AS `pItemName`,`b`.`compId` AS `compId`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mJan2`,0 AS `mFeb`,0 AS `mFeb2`,`b`.`pOutputBudget` AS `mMar`,0 AS `mMar2`,0 AS `mApr`,0 AS `mApr2`,0 AS `mMei`,0 AS `mMei2`,0 AS `mJun`,0 AS `mJun2`,0 AS `mJul`,0 AS `mJul2`,0 AS `mAug`,0 AS `mAug2`,0 AS `mSep`,0 AS `mSep2`,0 AS `mOct`,0 AS `mOct2`,0 AS `mNov`,0 AS `mNov2`,0 AS `mDec`,0 AS `mDec2` from (`mproductitem` `a` left join `tresultproductitem` `b` on(`a`.`pItemId` = `b`.`pItemId` and `b`.`tMonth` = 3)) union all select `a`.`pItemId` AS `pItemId`,`a`.`pItemName` AS `pItemName`,`b`.`compId` AS `compId`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mJan2`,0 AS `mFeb`,0 AS `mFeb2`,0 AS `mMar`,`b`.`pOutputActual` AS `mMar2`,0 AS `mApr`,0 AS `mApr2`,0 AS `mMei`,0 AS `mMei2`,0 AS `mJun`,0 AS `mJun2`,0 AS `mJul`,0 AS `mJul2`,0 AS `mAug`,0 AS `mAug2`,0 AS `mSep`,0 AS `mSep2`,0 AS `mOct`,0 AS `mOct2`,0 AS `mNov`,0 AS `mNov2`,0 AS `mDec`,0 AS `mDec2` from (`mproductitem` `a` left join `tresultproductitem` `b` on(`a`.`pItemId` = `b`.`pItemId` and `b`.`tMonth` = 3)) union all select `a`.`pItemId` AS `pItemId`,`a`.`pItemName` AS `pItemName`,`b`.`compId` AS `compId`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mJan2`,0 AS `mFeb`,0 AS `mFeb2`,0 AS `mMar`,0 AS `mMar2`,`b`.`pOutputBudget` AS `mApr`,0 AS `mApr2`,0 AS `mMei`,0 AS `mMei2`,0 AS `mJun`,0 AS `mJun2`,0 AS `mJul`,0 AS `mJul2`,0 AS `mAug`,0 AS `mAug2`,0 AS `mSep`,0 AS `mSep2`,0 AS `mOct`,0 AS `mOct2`,0 AS `mNov`,0 AS `mNov2`,0 AS `mDec`,0 AS `mDec2` from (`mproductitem` `a` left join `tresultproductitem` `b` on(`a`.`pItemId` = `b`.`pItemId` and `b`.`tMonth` = 4)) union all select `a`.`pItemId` AS `pItemId`,`a`.`pItemName` AS `pItemName`,`b`.`compId` AS `compId`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mJan2`,0 AS `mFeb`,0 AS `mFeb2`,0 AS `mMar`,0 AS `mMar2`,0 AS `mApr`,`b`.`pOutputActual` AS `mApr2`,0 AS `mMei`,0 AS `mMei2`,0 AS `mJun`,0 AS `mJun2`,0 AS `mJul`,0 AS `mJul2`,0 AS `mAug`,0 AS `mAug2`,0 AS `mSep`,0 AS `mSep2`,0 AS `mOct`,0 AS `mOct2`,0 AS `mNov`,0 AS `mNov2`,0 AS `mDec`,0 AS `mDec2` from (`mproductitem` `a` left join `tresultproductitem` `b` on(`a`.`pItemId` = `b`.`pItemId` and `b`.`tMonth` = 4)) union all select `a`.`pItemId` AS `pItemId`,`a`.`pItemName` AS `pItemName`,`b`.`compId` AS `compId`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mJan2`,0 AS `mFeb`,0 AS `mFeb2`,0 AS `mMar`,0 AS `mMar2`,0 AS `mApr`,0 AS `mApr2`,`b`.`pOutputBudget` AS `mMei`,0 AS `mMei2`,0 AS `mJun`,0 AS `mJun2`,0 AS `mJul`,0 AS `mJul2`,0 AS `mAug`,0 AS `mAug2`,0 AS `mSep`,0 AS `mSep2`,0 AS `mOct`,0 AS `mOct2`,0 AS `mNov`,0 AS `mNov2`,0 AS `mDec`,0 AS `mDec2` from (`mproductitem` `a` left join `tresultproductitem` `b` on(`a`.`pItemId` = `b`.`pItemId` and `b`.`tMonth` = 5)) union all select `a`.`pItemId` AS `pItemId`,`a`.`pItemName` AS `pItemName`,`b`.`compId` AS `compId`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mJan2`,0 AS `mFeb`,0 AS `mFeb2`,0 AS `mMar`,0 AS `mMar2`,0 AS `mApr`,0 AS `mApr2`,0 AS `mMei`,`b`.`pOutputActual` AS `mMei2`,0 AS `mJun`,0 AS `mJun2`,0 AS `mJul`,0 AS `mJul2`,0 AS `mAug`,0 AS `mAug2`,0 AS `mSep`,0 AS `mSep2`,0 AS `mOct`,0 AS `mOct2`,0 AS `mNov`,0 AS `mNov2`,0 AS `mDec`,0 AS `mDec2` from (`mproductitem` `a` left join `tresultproductitem` `b` on(`a`.`pItemId` = `b`.`pItemId` and `b`.`tMonth` = 5)) union all select `a`.`pItemId` AS `pItemId`,`a`.`pItemName` AS `pItemName`,`b`.`compId` AS `compId`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mJan2`,0 AS `mFeb`,0 AS `mFeb2`,0 AS `mMar`,0 AS `mMar2`,0 AS `mApr`,0 AS `mApr2`,0 AS `mMei`,0 AS `mMei2`,`b`.`pOutputBudget` AS `mJun`,0 AS `mJun2`,0 AS `mJul`,0 AS `mJul2`,0 AS `mAug`,0 AS `mAug2`,0 AS `mSep`,0 AS `mSep2`,0 AS `mOct`,0 AS `mOct2`,0 AS `mNov`,0 AS `mNov2`,0 AS `mDec`,0 AS `mDec2` from (`mproductitem` `a` left join `tresultproductitem` `b` on(`a`.`pItemId` = `b`.`pItemId` and `b`.`tMonth` = 6)) union all select `a`.`pItemId` AS `pItemId`,`a`.`pItemName` AS `pItemName`,`b`.`compId` AS `compId`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mJan2`,0 AS `mFeb`,0 AS `mFeb2`,0 AS `mMar`,0 AS `mMar2`,0 AS `mApr`,0 AS `mApr2`,0 AS `mMei`,0 AS `mMei2`,0 AS `mJun`,`b`.`pOutputActual` AS `mJun2`,0 AS `mJul`,0 AS `mJul2`,0 AS `mAug`,0 AS `mAug2`,0 AS `mSep`,0 AS `mSep2`,0 AS `mOct`,0 AS `mOct2`,0 AS `mNov`,0 AS `mNov2`,0 AS `mDec`,0 AS `mDec2` from (`mproductitem` `a` left join `tresultproductitem` `b` on(`a`.`pItemId` = `b`.`pItemId` and `b`.`tMonth` = 6)) union all select `a`.`pItemId` AS `pItemId`,`a`.`pItemName` AS `pItemName`,`b`.`compId` AS `compId`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mJan2`,0 AS `mFeb`,0 AS `mFeb2`,0 AS `mMar`,0 AS `mMar2`,0 AS `mApr`,0 AS `mApr2`,0 AS `mMei`,0 AS `mMei2`,0 AS `mJun`,0 AS `mJun2`,`b`.`pOutputBudget` AS `mJul`,0 AS `mJul2`,0 AS `mAug`,0 AS `mAug2`,0 AS `mSep`,0 AS `mSep2`,0 AS `mOct`,0 AS `mOct2`,0 AS `mNov`,0 AS `mNov2`,0 AS `mDec`,0 AS `mDec2` from (`mproductitem` `a` left join `tresultproductitem` `b` on(`a`.`pItemId` = `b`.`pItemId` and `b`.`tMonth` = 7)) union all select `a`.`pItemId` AS `pItemId`,`a`.`pItemName` AS `pItemName`,`b`.`compId` AS `compId`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mJan2`,0 AS `mFeb`,0 AS `mFeb2`,0 AS `mMar`,0 AS `mMar2`,0 AS `mApr`,0 AS `mApr2`,0 AS `mMei`,0 AS `mMei2`,0 AS `mJun`,0 AS `mJun2`,0 AS `mJul`,`b`.`pOutputActual` AS `mJul2`,0 AS `mAug`,0 AS `mAug2`,0 AS `mSep`,0 AS `mSep2`,0 AS `mOct`,0 AS `mOct2`,0 AS `mNov`,0 AS `mNov2`,0 AS `mDec`,0 AS `mDec2` from (`mproductitem` `a` left join `tresultproductitem` `b` on(`a`.`pItemId` = `b`.`pItemId` and `b`.`tMonth` = 7)) union all select `a`.`pItemId` AS `pItemId`,`a`.`pItemName` AS `pItemName`,`b`.`compId` AS `compId`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mJan2`,0 AS `mFeb`,0 AS `mFeb2`,0 AS `mMar`,0 AS `mMar2`,0 AS `mApr`,0 AS `mApr2`,0 AS `mMei`,0 AS `mMei2`,0 AS `mJun`,0 AS `mJun2`,0 AS `mJul`,0 AS `mJul2`,`b`.`pOutputBudget` AS `mAug`,0 AS `mAug2`,0 AS `mSep`,0 AS `mSep2`,0 AS `mOct`,0 AS `mOct2`,0 AS `mNov`,0 AS `mNov2`,0 AS `mDec`,0 AS `mDec2` from (`mproductitem` `a` left join `tresultproductitem` `b` on(`a`.`pItemId` = `b`.`pItemId` and `b`.`tMonth` = 8)) union all select `a`.`pItemId` AS `pItemId`,`a`.`pItemName` AS `pItemName`,`b`.`compId` AS `compId`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mJan2`,0 AS `mFeb`,0 AS `mFeb2`,0 AS `mMar`,0 AS `mMar2`,0 AS `mApr`,0 AS `mApr2`,0 AS `mMei`,0 AS `mMei2`,0 AS `mJun`,0 AS `mJun2`,0 AS `mJul`,0 AS `mJul2`,0 AS `mAug`,`b`.`pOutputActual` AS `mAug2`,0 AS `mSep`,0 AS `mSep2`,0 AS `mOct`,0 AS `mOct2`,0 AS `mNov`,0 AS `mNov2`,0 AS `mDec`,0 AS `mDec2` from (`mproductitem` `a` left join `tresultproductitem` `b` on(`a`.`pItemId` = `b`.`pItemId` and `b`.`tMonth` = 8)) union all select `a`.`pItemId` AS `pItemId`,`a`.`pItemName` AS `pItemName`,`b`.`compId` AS `compId`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mJan2`,0 AS `mFeb`,0 AS `mFeb2`,0 AS `mMar`,0 AS `mMar2`,0 AS `mApr`,0 AS `mApr2`,0 AS `mMei`,0 AS `mMei2`,0 AS `mJun`,0 AS `mJun2`,0 AS `mJul`,0 AS `mJul2`,0 AS `mAug`,0 AS `mAug2`,`b`.`pOutputBudget` AS `mSep`,0 AS `mSep2`,0 AS `mOct`,0 AS `mOct2`,0 AS `mNov`,0 AS `mNov2`,0 AS `mDec`,0 AS `mDec2` from (`mproductitem` `a` left join `tresultproductitem` `b` on(`a`.`pItemId` = `b`.`pItemId` and `b`.`tMonth` = 9)) union all select `a`.`pItemId` AS `pItemId`,`a`.`pItemName` AS `pItemName`,`b`.`compId` AS `compId`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mJan2`,0 AS `mFeb`,0 AS `mFeb2`,0 AS `mMar`,0 AS `mMar2`,0 AS `mApr`,0 AS `mApr2`,0 AS `mMei`,0 AS `mMei2`,0 AS `mJun`,0 AS `mJun2`,0 AS `mJul`,0 AS `mJul2`,0 AS `mAug`,0 AS `mAug2`,0 AS `mSep`,`b`.`pOutputActual` AS `mSep2`,0 AS `mOct`,0 AS `mOct2`,0 AS `mNov`,0 AS `mNov2`,0 AS `mDec`,0 AS `mDec2` from (`mproductitem` `a` left join `tresultproductitem` `b` on(`a`.`pItemId` = `b`.`pItemId` and `b`.`tMonth` = 9)) union all select `a`.`pItemId` AS `pItemId`,`a`.`pItemName` AS `pItemName`,`b`.`compId` AS `compId`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mJan2`,0 AS `mFeb`,0 AS `mFeb2`,0 AS `mMar`,0 AS `mMar2`,0 AS `mApr`,0 AS `mApr2`,0 AS `mMei`,0 AS `mMei2`,0 AS `mJun`,0 AS `mJun2`,0 AS `mJul`,0 AS `mJul2`,0 AS `mAug`,0 AS `mAug2`,0 AS `mSep`,0 AS `mSep2`,`b`.`pOutputBudget` AS `mOct`,0 AS `mOct2`,0 AS `mNov`,0 AS `mNov2`,0 AS `mDec`,0 AS `mDec2` from (`mproductitem` `a` left join `tresultproductitem` `b` on(`a`.`pItemId` = `b`.`pItemId` and `b`.`tMonth` = 10)) union all select `a`.`pItemId` AS `pItemId`,`a`.`pItemName` AS `pItemName`,`b`.`compId` AS `compId`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mJan2`,0 AS `mFeb`,0 AS `mFeb2`,0 AS `mMar`,0 AS `mMar2`,0 AS `mApr`,0 AS `mApr2`,0 AS `mMei`,0 AS `mMei2`,0 AS `mJun`,0 AS `mJun2`,0 AS `mJul`,0 AS `mJul2`,0 AS `mAug`,0 AS `mAug2`,0 AS `mSep`,0 AS `mSep2`,0 AS `mOct`,`b`.`pOutputActual` AS `mOct2`,0 AS `mNov`,0 AS `mNov2`,0 AS `mDec`,0 AS `mDec2` from (`mproductitem` `a` left join `tresultproductitem` `b` on(`a`.`pItemId` = `b`.`pItemId` and `b`.`tMonth` = 10)) union all select `a`.`pItemId` AS `pItemId`,`a`.`pItemName` AS `pItemName`,`b`.`compId` AS `compId`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mJan2`,0 AS `mFeb`,0 AS `mFeb2`,0 AS `mMar`,0 AS `mMar2`,0 AS `mApr`,0 AS `mApr2`,0 AS `mMei`,0 AS `mMei2`,0 AS `mJun`,0 AS `mJun2`,0 AS `mJul`,0 AS `mJul2`,0 AS `mAug`,0 AS `mAug2`,0 AS `mSep`,0 AS `mSep2`,0 AS `mOct`,0 AS `mOct2`,`b`.`pOutputBudget` AS `mNov`,0 AS `mNov2`,0 AS `mDec`,0 AS `mDec2` from (`mproductitem` `a` left join `tresultproductitem` `b` on(`a`.`pItemId` = `b`.`pItemId` and `b`.`tMonth` = 11)) union all select `a`.`pItemId` AS `pItemId`,`a`.`pItemName` AS `pItemName`,`b`.`compId` AS `compId`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mJan2`,0 AS `mFeb`,0 AS `mFeb2`,0 AS `mMar`,0 AS `mMar2`,0 AS `mApr`,0 AS `mApr2`,0 AS `mMei`,0 AS `mMei2`,0 AS `mJun`,0 AS `mJun2`,0 AS `mJul`,0 AS `mJul2`,0 AS `mAug`,0 AS `mAug2`,0 AS `mSep`,0 AS `mSep2`,0 AS `mOct`,0 AS `mOct2`,0 AS `mNov`,`b`.`pOutputActual` AS `mNov2`,0 AS `mDec`,0 AS `mDec2` from (`mproductitem` `a` left join `tresultproductitem` `b` on(`a`.`pItemId` = `b`.`pItemId` and `b`.`tMonth` = 11)) union all select `a`.`pItemId` AS `pItemId`,`a`.`pItemName` AS `pItemName`,`b`.`compId` AS `compId`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mJan2`,0 AS `mFeb`,0 AS `mFeb2`,0 AS `mMar`,0 AS `mMar2`,0 AS `mApr`,0 AS `mApr2`,0 AS `mMei`,0 AS `mMei2`,0 AS `mJun`,0 AS `mJun2`,0 AS `mJul`,0 AS `mJul2`,0 AS `mAug`,0 AS `mAug2`,0 AS `mSep`,0 AS `mSep2`,0 AS `mOct`,0 AS `mOct2`,0 AS `mNov`,0 AS `mNov2`,`b`.`pOutputBudget` AS `mDec`,0 AS `mDec2` from (`mproductitem` `a` left join `tresultproductitem` `b` on(`a`.`pItemId` = `b`.`pItemId` and `b`.`tMonth` = 12)) union all select `a`.`pItemId` AS `pItemId`,`a`.`pItemName` AS `pItemName`,`b`.`compId` AS `compId`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mJan2`,0 AS `mFeb`,0 AS `mFeb2`,0 AS `mMar`,0 AS `mMar2`,0 AS `mApr`,0 AS `mApr2`,0 AS `mMei`,0 AS `mMei2`,0 AS `mJun`,0 AS `mJun2`,0 AS `mJul`,0 AS `mJul2`,0 AS `mAug`,0 AS `mAug2`,0 AS `mSep`,0 AS `mSep2`,0 AS `mOct`,0 AS `mOct2`,0 AS `mNov`,0 AS `mNov2`,0 AS `mDec`,`b`.`pOutputActual` AS `mDec2` from (`mproductitem` `a` left join `tresultproductitem` `b` on(`a`.`pItemId` = `b`.`pItemId` and `b`.`tMonth` = 12))) AS `a` WHERE `a`.`tYear` is not null GROUP BY `a`.`pItemId`, `a`.`tYear` ;

-- --------------------------------------------------------

--
-- Structure for view `vresult_util`
--
DROP TABLE IF EXISTS `vresult_util`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vresult_util`  AS SELECT `a`.`lineId` AS `lineId`, `a`.`compId` AS `compId`, `a`.`lineName` AS `lineName`, `a`.`tYear` AS `tYear`, sum(`a`.`mJan`) AS `mJan`, sum(`a`.`mFeb`) AS `mFeb`, sum(`a`.`mMar`) AS `mMar`, sum(`a`.`mApr`) AS `mApr`, sum(`a`.`mMei`) AS `mMei`, sum(`a`.`mJun`) AS `mJun`, sum(`a`.`mJul`) AS `mJul`, sum(`a`.`mAug`) AS `mAug`, sum(`a`.`mSep`) AS `mSep`, sum(`a`.`mOct`) AS `mOct`, sum(`a`.`mNov`) AS `mNov`, sum(`a`.`mDec`) AS `mDec` FROM (select `a`.`lineId` AS `lineId`,`a`.`compId` AS `compId`,`a`.`lineName` AS `lineName`,`b`.`tYear` AS `tYear`,`b`.`tResult` / `b`.`tCapacity` * 100 AS `mJan`,0 AS `mFeb`,0 AS `mMar`,0 AS `mApr`,0 AS `mMei`,0 AS `mJun`,0 AS `mJul`,0 AS `mAug`,0 AS `mSep`,0 AS `mOct`,0 AS `mNov`,0 AS `mDec` from (`mline` `a` left join `tresultutil` `b` on(`a`.`lineId` = `b`.`lineId` and `b`.`tMonth` = 1)) union all select `a`.`lineId` AS `lineId`,`a`.`compId` AS `compId`,`a`.`lineName` AS `lineName`,`b`.`tYear` AS `tYear`,0 AS `mJan`,`b`.`tResult` / `b`.`tCapacity` * 100 AS `mFeb`,0 AS `mMar`,0 AS `mApr`,0 AS `mMei`,0 AS `mJun`,0 AS `mJul`,0 AS `mAug`,0 AS `mSep`,0 AS `mOct`,0 AS `mNov`,0 AS `mDec` from (`mline` `a` left join `tresultutil` `b` on(`a`.`lineId` = `b`.`lineId` and `b`.`tMonth` = 2)) union all select `a`.`lineId` AS `lineId`,`a`.`compId` AS `compId`,`a`.`lineName` AS `lineName`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mFeb`,`b`.`tResult` / `b`.`tCapacity` * 100 AS `mMar`,0 AS `mApr`,0 AS `mMei`,0 AS `mJun`,0 AS `mJul`,0 AS `mAug`,0 AS `mSep`,0 AS `mOct`,0 AS `mNov`,0 AS `mDec` from (`mline` `a` left join `tresultutil` `b` on(`a`.`lineId` = `b`.`lineId` and `b`.`tMonth` = 3)) union all select `a`.`lineId` AS `lineId`,`a`.`compId` AS `compId`,`a`.`lineName` AS `lineName`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mFeb`,0 AS `mMar`,`b`.`tResult` / `b`.`tCapacity` * 100 AS `mApr`,0 AS `mMei`,0 AS `mJun`,0 AS `mJul`,0 AS `mAug`,0 AS `mSep`,0 AS `mOct`,0 AS `mNov`,0 AS `mDec` from (`mline` `a` left join `tresultutil` `b` on(`a`.`lineId` = `b`.`lineId` and `b`.`tMonth` = 4)) union all select `a`.`lineId` AS `lineId`,`a`.`compId` AS `compId`,`a`.`lineName` AS `lineName`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mFeb`,0 AS `mMar`,0 AS `mApr`,`b`.`tResult` / `b`.`tCapacity` * 100 AS `mMei`,0 AS `mJun`,0 AS `mJul`,0 AS `mAug`,0 AS `mSep`,0 AS `mOct`,0 AS `mNov`,0 AS `mDec` from (`mline` `a` left join `tresultutil` `b` on(`a`.`lineId` = `b`.`lineId` and `b`.`tMonth` = 5)) union all select `a`.`lineId` AS `lineId`,`a`.`compId` AS `compId`,`a`.`lineName` AS `lineName`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mFeb`,0 AS `mMar`,0 AS `mApr`,0 AS `mMei`,`b`.`tResult` / `b`.`tCapacity` * 100 AS `mJun`,0 AS `mJul`,0 AS `mAug`,0 AS `mSep`,0 AS `mOct`,0 AS `mNov`,0 AS `mDec` from (`mline` `a` left join `tresultutil` `b` on(`a`.`lineId` = `b`.`lineId` and `b`.`tMonth` = 6)) union all select `a`.`lineId` AS `lineId`,`a`.`compId` AS `compId`,`a`.`lineName` AS `lineName`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mFeb`,0 AS `mMar`,0 AS `mApr`,0 AS `mMei`,0 AS `mJun`,`b`.`tResult` / `b`.`tCapacity` * 100 AS `mJul`,0 AS `mAug`,0 AS `mSep`,0 AS `mOct`,0 AS `mNov`,0 AS `mDec` from (`mline` `a` left join `tresultutil` `b` on(`a`.`lineId` = `b`.`lineId` and `b`.`tMonth` = 7)) union all select `a`.`lineId` AS `lineId`,`a`.`compId` AS `compId`,`a`.`lineName` AS `lineName`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mFeb`,0 AS `mMar`,0 AS `mApr`,0 AS `mMei`,0 AS `mJun`,0 AS `mJul`,`b`.`tResult` / `b`.`tCapacity` * 100 AS `mAug`,0 AS `mSep`,0 AS `mOct`,0 AS `mNov`,0 AS `mDec` from (`mline` `a` left join `tresultutil` `b` on(`a`.`lineId` = `b`.`lineId` and `b`.`tMonth` = 8)) union all select `a`.`lineId` AS `lineId`,`a`.`compId` AS `compId`,`a`.`lineName` AS `lineName`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mFeb`,0 AS `mMar`,0 AS `mApr`,0 AS `mMei`,0 AS `mJun`,0 AS `mJul`,0 AS `mAug`,`b`.`tResult` / `b`.`tCapacity` * 100 AS `mSep`,0 AS `mOct`,0 AS `mNov`,0 AS `mDec` from (`mline` `a` left join `tresultutil` `b` on(`a`.`lineId` = `b`.`lineId` and `b`.`tMonth` = 9)) union all select `a`.`lineId` AS `lineId`,`a`.`compId` AS `compId`,`a`.`lineName` AS `lineName`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mFeb`,0 AS `mMar`,0 AS `mApr`,0 AS `mMei`,0 AS `mJun`,0 AS `mJul`,0 AS `mAug`,0 AS `mSep`,`b`.`tResult` / `b`.`tCapacity` * 100 AS `mOct`,0 AS `mNov`,0 AS `mDec` from (`mline` `a` left join `tresultutil` `b` on(`a`.`lineId` = `b`.`lineId` and `b`.`tMonth` = 10)) union all select `a`.`lineId` AS `lineId`,`a`.`compId` AS `compId`,`a`.`lineName` AS `lineName`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mFeb`,0 AS `mMar`,0 AS `mApr`,0 AS `mMei`,0 AS `mJun`,0 AS `mJul`,0 AS `mAug`,0 AS `mSep`,0 AS `mOct`,`b`.`tResult` / `b`.`tCapacity` * 100 AS `mNov`,0 AS `mDec` from (`mline` `a` left join `tresultutil` `b` on(`a`.`lineId` = `b`.`lineId` and `b`.`tMonth` = 11)) union all select `a`.`lineId` AS `lineId`,`a`.`compId` AS `compId`,`a`.`lineName` AS `lineName`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mFeb`,0 AS `mMar`,0 AS `mApr`,0 AS `mMei`,0 AS `mJun`,0 AS `mJul`,0 AS `mAug`,0 AS `mSep`,0 AS `mOct`,0 AS `mNov`,`b`.`tResult` / `b`.`tCapacity` * 100 AS `mDec` from (`mline` `a` left join `tresultutil` `b` on(`a`.`lineId` = `b`.`lineId` and `b`.`tMonth` = 12))) AS `a` WHERE `a`.`tYear` is not null GROUP BY `a`.`lineId`, `a`.`tYear` ;

-- --------------------------------------------------------

--
-- Structure for view `vresult_util_detail`
--
DROP TABLE IF EXISTS `vresult_util_detail`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vresult_util_detail`  AS SELECT `a`.`lineId` AS `lineId`, `a`.`compId` AS `compId`, `a`.`lineName` AS `lineName`, `a`.`tYear` AS `tYear`, sum(`a`.`mJan`) AS `mJan`, sum(`a`.`mJan2`) AS `mJan2`, sum(`a`.`mFeb`) AS `mFeb`, sum(`a`.`mFeb2`) AS `mFeb2`, sum(`a`.`mMar`) AS `mMar`, sum(`a`.`mMar2`) AS `mMar2`, sum(`a`.`mApr`) AS `mApr`, sum(`a`.`mApr2`) AS `mApr2`, sum(`a`.`mMei`) AS `mMei`, sum(`a`.`mMei2`) AS `mMei2`, sum(`a`.`mJun`) AS `mJun`, sum(`a`.`mJun2`) AS `mJun2`, sum(`a`.`mJul`) AS `mJul`, sum(`a`.`mJul2`) AS `mJul2`, sum(`a`.`mAug`) AS `mAug`, sum(`a`.`mAug2`) AS `mAug2`, sum(`a`.`mSep`) AS `mSep`, sum(`a`.`mSep2`) AS `mSep2`, sum(`a`.`mOct`) AS `mOct`, sum(`a`.`mOct2`) AS `mOct2`, sum(`a`.`mNov`) AS `mNov`, sum(`a`.`mNov2`) AS `mNov2`, sum(`a`.`mDec`) AS `mDec`, sum(`a`.`mDec2`) AS `mDec2` FROM (select `a`.`lineId` AS `lineId`,`a`.`compId` AS `compId`,`a`.`lineName` AS `lineName`,`b`.`tYear` AS `tYear`,`b`.`tResult` AS `mJan`,0 AS `mJan2`,0 AS `mFeb`,0 AS `mFeb2`,0 AS `mMar`,0 AS `mMar2`,0 AS `mApr`,0 AS `mApr2`,0 AS `mMei`,0 AS `mMei2`,0 AS `mJun`,0 AS `mJun2`,0 AS `mJul`,0 AS `mJul2`,0 AS `mAug`,0 AS `mAug2`,0 AS `mSep`,0 AS `mSep2`,0 AS `mOct`,0 AS `mOct2`,0 AS `mNov`,0 AS `mNov2`,0 AS `mDec`,0 AS `mDec2` from (`mline` `a` left join `tresultutil` `b` on(`a`.`lineId` = `b`.`lineId` and `b`.`tMonth` = 1)) union all select `a`.`lineId` AS `lineId`,`a`.`compId` AS `compId`,`a`.`lineName` AS `lineName`,`b`.`tYear` AS `tYear`,0 AS `mJan`,`b`.`tCapacity` AS `mJan2`,0 AS `mFeb`,0 AS `mFeb2`,0 AS `mMar`,0 AS `mMar2`,0 AS `mApr`,0 AS `mApr2`,0 AS `mMei`,0 AS `mMei2`,0 AS `mJun`,0 AS `mJun2`,0 AS `mJul`,0 AS `mJul2`,0 AS `mAug`,0 AS `mAug2`,0 AS `mSep`,0 AS `mSep2`,0 AS `mOct`,0 AS `mOct2`,0 AS `mNov`,0 AS `mNov2`,0 AS `mDec`,0 AS `mDec2` from (`mline` `a` left join `tresultutil` `b` on(`a`.`lineId` = `b`.`lineId` and `b`.`tMonth` = 1)) union all select `a`.`lineId` AS `lineId`,`a`.`compId` AS `compId`,`a`.`lineName` AS `lineName`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mJan2`,`b`.`tResult` AS `mFeb`,0 AS `mFeb2`,0 AS `mMar`,0 AS `mMar2`,0 AS `mApr`,0 AS `mApr2`,0 AS `mMei`,0 AS `mMei2`,0 AS `mJun`,0 AS `mJun2`,0 AS `mJul`,0 AS `mJul2`,0 AS `mAug`,0 AS `mAug2`,0 AS `mSep`,0 AS `mSep2`,0 AS `mOct`,0 AS `mOct2`,0 AS `mNov`,0 AS `mNov2`,0 AS `mDec`,0 AS `mDec2` from (`mline` `a` left join `tresultutil` `b` on(`a`.`lineId` = `b`.`lineId` and `b`.`tMonth` = 2)) union all select `a`.`lineId` AS `lineId`,`a`.`compId` AS `compId`,`a`.`lineName` AS `lineName`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mJan2`,0 AS `mFeb`,`b`.`tCapacity` AS `mFeb2`,0 AS `mMar`,0 AS `mMar2`,0 AS `mApr`,0 AS `mApr2`,0 AS `mMei`,0 AS `mMei2`,0 AS `mJun`,0 AS `mJun2`,0 AS `mJul`,0 AS `mJul2`,0 AS `mAug`,0 AS `mAug2`,0 AS `mSep`,0 AS `mSep2`,0 AS `mOct`,0 AS `mOct2`,0 AS `mNov`,0 AS `mNov2`,0 AS `mDec`,0 AS `mDec2` from (`mline` `a` left join `tresultutil` `b` on(`a`.`lineId` = `b`.`lineId` and `b`.`tMonth` = 2)) union all select `a`.`lineId` AS `lineId`,`a`.`compId` AS `compId`,`a`.`lineName` AS `lineName`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mJan2`,0 AS `mFeb`,0 AS `mFeb2`,`b`.`tResult` AS `mMar`,0 AS `mMar2`,0 AS `mApr`,0 AS `mApr2`,0 AS `mMei`,0 AS `mMei2`,0 AS `mJun`,0 AS `mJun2`,0 AS `mJul`,0 AS `mJul2`,0 AS `mAug`,0 AS `mAug2`,0 AS `mSep`,0 AS `mSep2`,0 AS `mOct`,0 AS `mOct2`,0 AS `mNov`,0 AS `mNov2`,0 AS `mDec`,0 AS `mDec2` from (`mline` `a` left join `tresultutil` `b` on(`a`.`lineId` = `b`.`lineId` and `b`.`tMonth` = 3)) union all select `a`.`lineId` AS `lineId`,`a`.`compId` AS `compId`,`a`.`lineName` AS `lineName`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mJan2`,0 AS `mFeb`,0 AS `mFeb2`,0 AS `mMar`,`b`.`tCapacity` AS `mMar2`,0 AS `mApr`,0 AS `mApr2`,0 AS `mMei`,0 AS `mMei2`,0 AS `mJun`,0 AS `mJun2`,0 AS `mJul`,0 AS `mJul2`,0 AS `mAug`,0 AS `mAug2`,0 AS `mSep`,0 AS `mSep2`,0 AS `mOct`,0 AS `mOct2`,0 AS `mNov`,0 AS `mNov2`,0 AS `mDec`,0 AS `mDec2` from (`mline` `a` left join `tresultutil` `b` on(`a`.`lineId` = `b`.`lineId` and `b`.`tMonth` = 3)) union all select `a`.`lineId` AS `lineId`,`a`.`compId` AS `compId`,`a`.`lineName` AS `lineName`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mJan2`,0 AS `mFeb`,0 AS `mFeb2`,0 AS `mMar`,0 AS `mMar2`,`b`.`tResult` AS `mApr`,0 AS `mApr2`,0 AS `mMei`,0 AS `mMei2`,0 AS `mJun`,0 AS `mJun2`,0 AS `mJul`,0 AS `mJul2`,0 AS `mAug`,0 AS `mAug2`,0 AS `mSep`,0 AS `mSep2`,0 AS `mOct`,0 AS `mOct2`,0 AS `mNov`,0 AS `mNov2`,0 AS `mDec`,0 AS `mDec2` from (`mline` `a` left join `tresultutil` `b` on(`a`.`lineId` = `b`.`lineId` and `b`.`tMonth` = 4)) union all select `a`.`lineId` AS `lineId`,`a`.`compId` AS `compId`,`a`.`lineName` AS `lineName`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mJan2`,0 AS `mFeb`,0 AS `mFeb2`,0 AS `mMar`,0 AS `mMar2`,0 AS `mApr`,`b`.`tCapacity` AS `mApr2`,0 AS `mMei`,0 AS `mMei2`,0 AS `mJun`,0 AS `mJun2`,0 AS `mJul`,0 AS `mJul2`,0 AS `mAug`,0 AS `mAug2`,0 AS `mSep`,0 AS `mSep2`,0 AS `mOct`,0 AS `mOct2`,0 AS `mNov`,0 AS `mNov2`,0 AS `mDec`,0 AS `mDec2` from (`mline` `a` left join `tresultutil` `b` on(`a`.`lineId` = `b`.`lineId` and `b`.`tMonth` = 4)) union all select `a`.`lineId` AS `lineId`,`a`.`compId` AS `compId`,`a`.`lineName` AS `lineName`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mJan2`,0 AS `mFeb`,0 AS `mFeb2`,0 AS `mMar`,0 AS `mMar2`,0 AS `mApr`,0 AS `mApr2`,`b`.`tResult` AS `mMei`,0 AS `mMei2`,0 AS `mJun`,0 AS `mJun2`,0 AS `mJul`,0 AS `mJul2`,0 AS `mAug`,0 AS `mAug2`,0 AS `mSep`,0 AS `mSep2`,0 AS `mOct`,0 AS `mOct2`,0 AS `mNov`,0 AS `mNov2`,0 AS `mDec`,0 AS `mDec2` from (`mline` `a` left join `tresultutil` `b` on(`a`.`lineId` = `b`.`lineId` and `b`.`tMonth` = 5)) union all select `a`.`lineId` AS `lineId`,`a`.`compId` AS `compId`,`a`.`lineName` AS `lineName`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mJan2`,0 AS `mFeb`,0 AS `mFeb2`,0 AS `mMar`,0 AS `mMar2`,0 AS `mApr`,0 AS `mApr2`,0 AS `mMei`,`b`.`tCapacity` AS `mMei2`,0 AS `mJun`,0 AS `mJun2`,0 AS `mJul`,0 AS `mJul2`,0 AS `mAug`,0 AS `mAug2`,0 AS `mSep`,0 AS `mSep2`,0 AS `mOct`,0 AS `mOct2`,0 AS `mNov`,0 AS `mNov2`,0 AS `mDec`,0 AS `mDec2` from (`mline` `a` left join `tresultutil` `b` on(`a`.`lineId` = `b`.`lineId` and `b`.`tMonth` = 5)) union all select `a`.`lineId` AS `lineId`,`a`.`compId` AS `compId`,`a`.`lineName` AS `lineName`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mJan2`,0 AS `mFeb`,0 AS `mFeb2`,0 AS `mMar`,0 AS `mMar2`,0 AS `mApr`,0 AS `mApr2`,0 AS `mMei`,0 AS `mMei2`,`b`.`tResult` AS `mJun`,0 AS `mJun2`,0 AS `mJul`,0 AS `mJul2`,0 AS `mAug`,0 AS `mAug2`,0 AS `mSep`,0 AS `mSep2`,0 AS `mOct`,0 AS `mOct2`,0 AS `mNov`,0 AS `mNov2`,0 AS `mDec`,0 AS `mDec2` from (`mline` `a` left join `tresultutil` `b` on(`a`.`lineId` = `b`.`lineId` and `b`.`tMonth` = 6)) union all select `a`.`lineId` AS `lineId`,`a`.`compId` AS `compId`,`a`.`lineName` AS `lineName`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mJan2`,0 AS `mFeb`,0 AS `mFeb2`,0 AS `mMar`,0 AS `mMar2`,0 AS `mApr`,0 AS `mApr2`,0 AS `mMei`,0 AS `mMei2`,0 AS `mJun`,`b`.`tCapacity` AS `mJun2`,0 AS `mJul`,0 AS `mJul2`,0 AS `mAug`,0 AS `mAug2`,0 AS `mSep`,0 AS `mSep2`,0 AS `mOct`,0 AS `mOct2`,0 AS `mNov`,0 AS `mNov2`,0 AS `mDec`,0 AS `mDec2` from (`mline` `a` left join `tresultutil` `b` on(`a`.`lineId` = `b`.`lineId` and `b`.`tMonth` = 6)) union all select `a`.`lineId` AS `lineId`,`a`.`compId` AS `compId`,`a`.`lineName` AS `lineName`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mJan2`,0 AS `mFeb`,0 AS `mFeb2`,0 AS `mMar`,0 AS `mMar2`,0 AS `mApr`,0 AS `mApr2`,0 AS `mMei`,0 AS `mMei2`,0 AS `mJun`,0 AS `mJun2`,`b`.`tResult` AS `mJul`,0 AS `mJul2`,0 AS `mAug`,0 AS `mAug2`,0 AS `mSep`,0 AS `mSep2`,0 AS `mOct`,0 AS `mOct2`,0 AS `mNov`,0 AS `mNov2`,0 AS `mDec`,0 AS `mDec2` from (`mline` `a` left join `tresultutil` `b` on(`a`.`lineId` = `b`.`lineId` and `b`.`tMonth` = 7)) union all select `a`.`lineId` AS `lineId`,`a`.`compId` AS `compId`,`a`.`lineName` AS `lineName`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mJan2`,0 AS `mFeb`,0 AS `mFeb2`,0 AS `mMar`,0 AS `mMar2`,0 AS `mApr`,0 AS `mApr2`,0 AS `mMei`,0 AS `mMei2`,0 AS `mJun`,0 AS `mJun2`,0 AS `mJul`,`b`.`tCapacity` AS `mJul2`,0 AS `mAug`,0 AS `mAug2`,0 AS `mSep`,0 AS `mSep2`,0 AS `mOct`,0 AS `mOct2`,0 AS `mNov`,0 AS `mNov2`,0 AS `mDec`,0 AS `mDec2` from (`mline` `a` left join `tresultutil` `b` on(`a`.`lineId` = `b`.`lineId` and `b`.`tMonth` = 7)) union all select `a`.`lineId` AS `lineId`,`a`.`compId` AS `compId`,`a`.`lineName` AS `lineName`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mJan2`,0 AS `mFeb`,0 AS `mFeb2`,0 AS `mMar`,0 AS `mMar2`,0 AS `mApr`,0 AS `mApr2`,0 AS `mMei`,0 AS `mMei2`,0 AS `mJun`,0 AS `mJun2`,0 AS `mJul`,0 AS `mJul2`,`b`.`tResult` AS `mAug`,0 AS `mAug2`,0 AS `mSep`,0 AS `mSep2`,0 AS `mOct`,0 AS `mOct2`,0 AS `mNov`,0 AS `mNov2`,0 AS `mDec`,0 AS `mDec2` from (`mline` `a` left join `tresultutil` `b` on(`a`.`lineId` = `b`.`lineId` and `b`.`tMonth` = 8)) union all select `a`.`lineId` AS `lineId`,`a`.`compId` AS `compId`,`a`.`lineName` AS `lineName`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mJan2`,0 AS `mFeb`,0 AS `mFeb2`,0 AS `mMar`,0 AS `mMar2`,0 AS `mApr`,0 AS `mApr2`,0 AS `mMei`,0 AS `mMei2`,0 AS `mJun`,0 AS `mJun2`,0 AS `mJul`,0 AS `mJul2`,0 AS `mAug`,`b`.`tCapacity` AS `mAug2`,0 AS `mSep`,0 AS `mSep2`,0 AS `mOct`,0 AS `mOct2`,0 AS `mNov`,0 AS `mNov2`,0 AS `mDec`,0 AS `mDec2` from (`mline` `a` left join `tresultutil` `b` on(`a`.`lineId` = `b`.`lineId` and `b`.`tMonth` = 8)) union all select `a`.`lineId` AS `lineId`,`a`.`compId` AS `compId`,`a`.`lineName` AS `lineName`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mJan2`,0 AS `mFeb`,0 AS `mFeb2`,0 AS `mMar`,0 AS `mMar2`,0 AS `mApr`,0 AS `mApr2`,0 AS `mMei`,0 AS `mMei2`,0 AS `mJun`,0 AS `mJun2`,0 AS `mJul`,0 AS `mJul2`,0 AS `mAug`,0 AS `mAug2`,`b`.`tResult` AS `mSep`,0 AS `mSep2`,0 AS `mOct`,0 AS `mOct2`,0 AS `mNov`,0 AS `mNov2`,0 AS `mDec`,0 AS `mDec2` from (`mline` `a` left join `tresultutil` `b` on(`a`.`lineId` = `b`.`lineId` and `b`.`tMonth` = 9)) union all select `a`.`lineId` AS `lineId`,`a`.`compId` AS `compId`,`a`.`lineName` AS `lineName`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mJan2`,0 AS `mFeb`,0 AS `mFeb2`,0 AS `mMar`,0 AS `mMar2`,0 AS `mApr`,0 AS `mApr2`,0 AS `mMei`,0 AS `mMei2`,0 AS `mJun`,0 AS `mJun2`,0 AS `mJul`,0 AS `mJul2`,0 AS `mAug`,0 AS `mAug2`,0 AS `mSep`,`b`.`tCapacity` AS `mSep2`,0 AS `mOct`,0 AS `mOct2`,0 AS `mNov`,0 AS `mNov2`,0 AS `mDec`,0 AS `mDec2` from (`mline` `a` left join `tresultutil` `b` on(`a`.`lineId` = `b`.`lineId` and `b`.`tMonth` = 9)) union all select `a`.`lineId` AS `lineId`,`a`.`compId` AS `compId`,`a`.`lineName` AS `lineName`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mJan2`,0 AS `mFeb`,0 AS `mFeb2`,0 AS `mMar`,0 AS `mMar2`,0 AS `mApr`,0 AS `mApr2`,0 AS `mMei`,0 AS `mMei2`,0 AS `mJun`,0 AS `mJun2`,0 AS `mJul`,0 AS `mJul2`,0 AS `mAug`,0 AS `mAug2`,0 AS `mSep`,0 AS `mSep2`,`b`.`tResult` AS `mOct`,0 AS `mOct2`,0 AS `mNov`,0 AS `mNov2`,0 AS `mDec`,0 AS `mDec2` from (`mline` `a` left join `tresultutil` `b` on(`a`.`lineId` = `b`.`lineId` and `b`.`tMonth` = 10)) union all select `a`.`lineId` AS `lineId`,`a`.`compId` AS `compId`,`a`.`lineName` AS `lineName`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mJan2`,0 AS `mFeb`,0 AS `mFeb2`,0 AS `mMar`,0 AS `mMar2`,0 AS `mApr`,0 AS `mApr2`,0 AS `mMei`,0 AS `mMei2`,0 AS `mJun`,0 AS `mJun2`,0 AS `mJul`,0 AS `mJul2`,0 AS `mAug`,0 AS `mAug2`,0 AS `mSep`,0 AS `mSep2`,0 AS `mOct`,`b`.`tCapacity` AS `mOct2`,0 AS `mNov`,0 AS `mNov2`,0 AS `mDec`,0 AS `mDec2` from (`mline` `a` left join `tresultutil` `b` on(`a`.`lineId` = `b`.`lineId` and `b`.`tMonth` = 10)) union all select `a`.`lineId` AS `lineId`,`a`.`compId` AS `compId`,`a`.`lineName` AS `lineName`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mJan2`,0 AS `mFeb`,0 AS `mFeb2`,0 AS `mMar`,0 AS `mMar2`,0 AS `mApr`,0 AS `mApr2`,0 AS `mMei`,0 AS `mMei2`,0 AS `mJun`,0 AS `mJun2`,0 AS `mJul`,0 AS `mJul2`,0 AS `mAug`,0 AS `mAug2`,0 AS `mSep`,0 AS `mSep2`,0 AS `mOct`,0 AS `mOct2`,`b`.`tResult` AS `mNov`,0 AS `mNov2`,0 AS `mDec`,0 AS `mDec2` from (`mline` `a` left join `tresultutil` `b` on(`a`.`lineId` = `b`.`lineId` and `b`.`tMonth` = 11)) union all select `a`.`lineId` AS `lineId`,`a`.`compId` AS `compId`,`a`.`lineName` AS `lineName`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mJan2`,0 AS `mFeb`,0 AS `mFeb2`,0 AS `mMar`,0 AS `mMar2`,0 AS `mApr`,0 AS `mApr2`,0 AS `mMei`,0 AS `mMei2`,0 AS `mJun`,0 AS `mJun2`,0 AS `mJul`,0 AS `mJul2`,0 AS `mAug`,0 AS `mAug2`,0 AS `mSep`,0 AS `mSep2`,0 AS `mOct`,0 AS `mOct2`,0 AS `mNov`,`b`.`tCapacity` AS `mNov2`,0 AS `mDec`,0 AS `mDec2` from (`mline` `a` left join `tresultutil` `b` on(`a`.`lineId` = `b`.`lineId` and `b`.`tMonth` = 11)) union all select `a`.`lineId` AS `lineId`,`a`.`compId` AS `compId`,`a`.`lineName` AS `lineName`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mJan2`,0 AS `mFeb`,0 AS `mFeb2`,0 AS `mMar`,0 AS `mMar2`,0 AS `mApr`,0 AS `mApr2`,0 AS `mMei`,0 AS `mMei2`,0 AS `mJun`,0 AS `mJun2`,0 AS `mJul`,0 AS `mJul2`,0 AS `mAug`,0 AS `mAug2`,0 AS `mSep`,0 AS `mSep2`,0 AS `mOct`,0 AS `mOct2`,0 AS `mNov`,0 AS `mNov2`,`b`.`tResult` AS `mDec`,0 AS `mDec2` from (`mline` `a` left join `tresultutil` `b` on(`a`.`lineId` = `b`.`lineId` and `b`.`tMonth` = 12)) union all select `a`.`lineId` AS `lineId`,`a`.`compId` AS `compId`,`a`.`lineName` AS `lineName`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mJan2`,0 AS `mFeb`,0 AS `mFeb2`,0 AS `mMar`,0 AS `mMar2`,0 AS `mApr`,0 AS `mApr2`,0 AS `mMei`,0 AS `mMei2`,0 AS `mJun`,0 AS `mJun2`,0 AS `mJul`,0 AS `mJul2`,0 AS `mAug`,0 AS `mAug2`,0 AS `mSep`,0 AS `mSep2`,0 AS `mOct`,0 AS `mOct2`,0 AS `mNov`,0 AS `mNov2`,0 AS `mDec`,`b`.`tCapacity` AS `mDec2` from (`mline` `a` left join `tresultutil` `b` on(`a`.`lineId` = `b`.`lineId` and `b`.`tMonth` = 12))) AS `a` WHERE `a`.`tYear` is not null GROUP BY `a`.`lineId`, `a`.`tYear` ;

-- --------------------------------------------------------

--
-- Structure for view `vresult_util_group1`
--
DROP TABLE IF EXISTS `vresult_util_group1`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vresult_util_group1`  AS SELECT `a`.`group1` AS `group1`, `a`.`compId` AS `compId`, `a`.`tYear` AS `tYear`, sum(`a`.`mJan`) AS `mJan`, sum(`a`.`mJan2`) AS `mJan2`, sum(`a`.`mFeb`) AS `mFeb`, sum(`a`.`mFeb2`) AS `mFeb2`, sum(`a`.`mMar`) AS `mMar`, sum(`a`.`mMar2`) AS `mMar2`, sum(`a`.`mApr`) AS `mApr`, sum(`a`.`mApr2`) AS `mApr2`, sum(`a`.`mMei`) AS `mMei`, sum(`a`.`mMei2`) AS `mMei2`, sum(`a`.`mJun`) AS `mJun`, sum(`a`.`mJun2`) AS `mJun2`, sum(`a`.`mJul`) AS `mJul`, sum(`a`.`mJul2`) AS `mJul2`, sum(`a`.`mAug`) AS `mAug`, sum(`a`.`mAug2`) AS `mAug2`, sum(`a`.`mSep`) AS `mSep`, sum(`a`.`mSep2`) AS `mSep2`, sum(`a`.`mOct`) AS `mOct`, sum(`a`.`mOct2`) AS `mOct2`, sum(`a`.`mNov`) AS `mNov`, sum(`a`.`mNov2`) AS `mNov2`, sum(`a`.`mDec`) AS `mDec`, sum(`a`.`mDec2`) AS `mDec2` FROM (select `a`.`group1` AS `group1`,`a`.`compId` AS `compId`,`b`.`tYear` AS `tYear`,`b`.`tResult` AS `mJan`,0 AS `mJan2`,0 AS `mFeb`,0 AS `mFeb2`,0 AS `mMar`,0 AS `mMar2`,0 AS `mApr`,0 AS `mApr2`,0 AS `mMei`,0 AS `mMei2`,0 AS `mJun`,0 AS `mJun2`,0 AS `mJul`,0 AS `mJul2`,0 AS `mAug`,0 AS `mAug2`,0 AS `mSep`,0 AS `mSep2`,0 AS `mOct`,0 AS `mOct2`,0 AS `mNov`,0 AS `mNov2`,0 AS `mDec`,0 AS `mDec2` from (`mline` `a` left join `tresultutil` `b` on(`a`.`lineId` = `b`.`lineId` and `b`.`tMonth` = 1)) union all select `a`.`group1` AS `group1`,`a`.`compId` AS `compId`,`b`.`tYear` AS `tYear`,0 AS `mJan`,`b`.`tCapacity` AS `mJan2`,0 AS `mFeb`,0 AS `mFeb2`,0 AS `mMar`,0 AS `mMar2`,0 AS `mApr`,0 AS `mApr2`,0 AS `mMei`,0 AS `mMei2`,0 AS `mJun`,0 AS `mJun2`,0 AS `mJul`,0 AS `mJul2`,0 AS `mAug`,0 AS `mAug2`,0 AS `mSep`,0 AS `mSep2`,0 AS `mOct`,0 AS `mOct2`,0 AS `mNov`,0 AS `mNov2`,0 AS `mDec`,0 AS `mDec2` from (`mline` `a` left join `tresultutil` `b` on(`a`.`lineId` = `b`.`lineId` and `b`.`tMonth` = 1)) union all select `a`.`group1` AS `group1`,`a`.`compId` AS `compId`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mJan2`,`b`.`tResult` AS `mFeb`,0 AS `mFeb2`,0 AS `mMar`,0 AS `mMar2`,0 AS `mApr`,0 AS `mApr2`,0 AS `mMei`,0 AS `mMei2`,0 AS `mJun`,0 AS `mJun2`,0 AS `mJul`,0 AS `mJul2`,0 AS `mAug`,0 AS `mAug2`,0 AS `mSep`,0 AS `mSep2`,0 AS `mOct`,0 AS `mOct2`,0 AS `mNov`,0 AS `mNov2`,0 AS `mDec`,0 AS `mDec2` from (`mline` `a` left join `tresultutil` `b` on(`a`.`lineId` = `b`.`lineId` and `b`.`tMonth` = 2)) union all select `a`.`group1` AS `group1`,`a`.`compId` AS `compId`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mJan2`,0 AS `mFeb`,`b`.`tCapacity` AS `mFeb2`,0 AS `mMar`,0 AS `mMar2`,0 AS `mApr`,0 AS `mApr2`,0 AS `mMei`,0 AS `mMei2`,0 AS `mJun`,0 AS `mJun2`,0 AS `mJul`,0 AS `mJul2`,0 AS `mAug`,0 AS `mAug2`,0 AS `mSep`,0 AS `mSep2`,0 AS `mOct`,0 AS `mOct2`,0 AS `mNov`,0 AS `mNov2`,0 AS `mDec`,0 AS `mDec2` from (`mline` `a` left join `tresultutil` `b` on(`a`.`lineId` = `b`.`lineId` and `b`.`tMonth` = 2)) union all select `a`.`group1` AS `group1`,`a`.`compId` AS `compId`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mJan2`,0 AS `mFeb`,0 AS `mFeb2`,`b`.`tResult` AS `mMar`,0 AS `mMar2`,0 AS `mApr`,0 AS `mApr2`,0 AS `mMei`,0 AS `mMei2`,0 AS `mJun`,0 AS `mJun2`,0 AS `mJul`,0 AS `mJul2`,0 AS `mAug`,0 AS `mAug2`,0 AS `mSep`,0 AS `mSep2`,0 AS `mOct`,0 AS `mOct2`,0 AS `mNov`,0 AS `mNov2`,0 AS `mDec`,0 AS `mDec2` from (`mline` `a` left join `tresultutil` `b` on(`a`.`lineId` = `b`.`lineId` and `b`.`tMonth` = 3)) union all select `a`.`group1` AS `group1`,`a`.`compId` AS `compId`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mJan2`,0 AS `mFeb`,0 AS `mFeb2`,0 AS `mMar`,`b`.`tCapacity` AS `mMar2`,0 AS `mApr`,0 AS `mApr2`,0 AS `mMei`,0 AS `mMei2`,0 AS `mJun`,0 AS `mJun2`,0 AS `mJul`,0 AS `mJul2`,0 AS `mAug`,0 AS `mAug2`,0 AS `mSep`,0 AS `mSep2`,0 AS `mOct`,0 AS `mOct2`,0 AS `mNov`,0 AS `mNov2`,0 AS `mDec`,0 AS `mDec2` from (`mline` `a` left join `tresultutil` `b` on(`a`.`lineId` = `b`.`lineId` and `b`.`tMonth` = 3)) union all select `a`.`group1` AS `group1`,`a`.`compId` AS `compId`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mJan2`,0 AS `mFeb`,0 AS `mFeb2`,0 AS `mMar`,0 AS `mMar2`,`b`.`tResult` AS `mApr`,0 AS `mApr2`,0 AS `mMei`,0 AS `mMei2`,0 AS `mJun`,0 AS `mJun2`,0 AS `mJul`,0 AS `mJul2`,0 AS `mAug`,0 AS `mAug2`,0 AS `mSep`,0 AS `mSep2`,0 AS `mOct`,0 AS `mOct2`,0 AS `mNov`,0 AS `mNov2`,0 AS `mDec`,0 AS `mDec2` from (`mline` `a` left join `tresultutil` `b` on(`a`.`lineId` = `b`.`lineId` and `b`.`tMonth` = 4)) union all select `a`.`group1` AS `group1`,`a`.`compId` AS `compId`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mJan2`,0 AS `mFeb`,0 AS `mFeb2`,0 AS `mMar`,0 AS `mMar2`,0 AS `mApr`,`b`.`tCapacity` AS `mApr2`,0 AS `mMei`,0 AS `mMei2`,0 AS `mJun`,0 AS `mJun2`,0 AS `mJul`,0 AS `mJul2`,0 AS `mAug`,0 AS `mAug2`,0 AS `mSep`,0 AS `mSep2`,0 AS `mOct`,0 AS `mOct2`,0 AS `mNov`,0 AS `mNov2`,0 AS `mDec`,0 AS `mDec2` from (`mline` `a` left join `tresultutil` `b` on(`a`.`lineId` = `b`.`lineId` and `b`.`tMonth` = 4)) union all select `a`.`group1` AS `group1`,`a`.`compId` AS `compId`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mJan2`,0 AS `mFeb`,0 AS `mFeb2`,0 AS `mMar`,0 AS `mMar2`,0 AS `mApr`,0 AS `mApr2`,`b`.`tResult` AS `mMei`,0 AS `mMei2`,0 AS `mJun`,0 AS `mJun2`,0 AS `mJul`,0 AS `mJul2`,0 AS `mAug`,0 AS `mAug2`,0 AS `mSep`,0 AS `mSep2`,0 AS `mOct`,0 AS `mOct2`,0 AS `mNov`,0 AS `mNov2`,0 AS `mDec`,0 AS `mDec2` from (`mline` `a` left join `tresultutil` `b` on(`a`.`lineId` = `b`.`lineId` and `b`.`tMonth` = 5)) union all select `a`.`group1` AS `group1`,`a`.`compId` AS `compId`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mJan2`,0 AS `mFeb`,0 AS `mFeb2`,0 AS `mMar`,0 AS `mMar2`,0 AS `mApr`,0 AS `mApr2`,0 AS `mMei`,`b`.`tCapacity` AS `mMei2`,0 AS `mJun`,0 AS `mJun2`,0 AS `mJul`,0 AS `mJul2`,0 AS `mAug`,0 AS `mAug2`,0 AS `mSep`,0 AS `mSep2`,0 AS `mOct`,0 AS `mOct2`,0 AS `mNov`,0 AS `mNov2`,0 AS `mDec`,0 AS `mDec2` from (`mline` `a` left join `tresultutil` `b` on(`a`.`lineId` = `b`.`lineId` and `b`.`tMonth` = 5)) union all select `a`.`group1` AS `group1`,`a`.`compId` AS `compId`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mJan2`,0 AS `mFeb`,0 AS `mFeb2`,0 AS `mMar`,0 AS `mMar2`,0 AS `mApr`,0 AS `mApr2`,0 AS `mMei`,0 AS `mMei2`,`b`.`tResult` AS `mJun`,0 AS `mJun2`,0 AS `mJul`,0 AS `mJul2`,0 AS `mAug`,0 AS `mAug2`,0 AS `mSep`,0 AS `mSep2`,0 AS `mOct`,0 AS `mOct2`,0 AS `mNov`,0 AS `mNov2`,0 AS `mDec`,0 AS `mDec2` from (`mline` `a` left join `tresultutil` `b` on(`a`.`lineId` = `b`.`lineId` and `b`.`tMonth` = 6)) union all select `a`.`group1` AS `group1`,`a`.`compId` AS `compId`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mJan2`,0 AS `mFeb`,0 AS `mFeb2`,0 AS `mMar`,0 AS `mMar2`,0 AS `mApr`,0 AS `mApr2`,0 AS `mMei`,0 AS `mMei2`,0 AS `mJun`,`b`.`tCapacity` AS `mJun2`,0 AS `mJul`,0 AS `mJul2`,0 AS `mAug`,0 AS `mAug2`,0 AS `mSep`,0 AS `mSep2`,0 AS `mOct`,0 AS `mOct2`,0 AS `mNov`,0 AS `mNov2`,0 AS `mDec`,0 AS `mDec2` from (`mline` `a` left join `tresultutil` `b` on(`a`.`lineId` = `b`.`lineId` and `b`.`tMonth` = 6)) union all select `a`.`group1` AS `group1`,`a`.`compId` AS `compId`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mJan2`,0 AS `mFeb`,0 AS `mFeb2`,0 AS `mMar`,0 AS `mMar2`,0 AS `mApr`,0 AS `mApr2`,0 AS `mMei`,0 AS `mMei2`,0 AS `mJun`,0 AS `mJun2`,`b`.`tResult` AS `mJul`,0 AS `mJul2`,0 AS `mAug`,0 AS `mAug2`,0 AS `mSep`,0 AS `mSep2`,0 AS `mOct`,0 AS `mOct2`,0 AS `mNov`,0 AS `mNov2`,0 AS `mDec`,0 AS `mDec2` from (`mline` `a` left join `tresultutil` `b` on(`a`.`lineId` = `b`.`lineId` and `b`.`tMonth` = 7)) union all select `a`.`group1` AS `group1`,`a`.`compId` AS `compId`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mJan2`,0 AS `mFeb`,0 AS `mFeb2`,0 AS `mMar`,0 AS `mMar2`,0 AS `mApr`,0 AS `mApr2`,0 AS `mMei`,0 AS `mMei2`,0 AS `mJun`,0 AS `mJun2`,0 AS `mJul`,`b`.`tCapacity` AS `mJul2`,0 AS `mAug`,0 AS `mAug2`,0 AS `mSep`,0 AS `mSep2`,0 AS `mOct`,0 AS `mOct2`,0 AS `mNov`,0 AS `mNov2`,0 AS `mDec`,0 AS `mDec2` from (`mline` `a` left join `tresultutil` `b` on(`a`.`lineId` = `b`.`lineId` and `b`.`tMonth` = 7)) union all select `a`.`group1` AS `group1`,`a`.`compId` AS `compId`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mJan2`,0 AS `mFeb`,0 AS `mFeb2`,0 AS `mMar`,0 AS `mMar2`,0 AS `mApr`,0 AS `mApr2`,0 AS `mMei`,0 AS `mMei2`,0 AS `mJun`,0 AS `mJun2`,0 AS `mJul`,0 AS `mJul2`,`b`.`tResult` AS `mAug`,0 AS `mAug2`,0 AS `mSep`,0 AS `mSep2`,0 AS `mOct`,0 AS `mOct2`,0 AS `mNov`,0 AS `mNov2`,0 AS `mDec`,0 AS `mDec2` from (`mline` `a` left join `tresultutil` `b` on(`a`.`lineId` = `b`.`lineId` and `b`.`tMonth` = 8)) union all select `a`.`group1` AS `group1`,`a`.`compId` AS `compId`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mJan2`,0 AS `mFeb`,0 AS `mFeb2`,0 AS `mMar`,0 AS `mMar2`,0 AS `mApr`,0 AS `mApr2`,0 AS `mMei`,0 AS `mMei2`,0 AS `mJun`,0 AS `mJun2`,0 AS `mJul`,0 AS `mJul2`,0 AS `mAug`,`b`.`tCapacity` AS `mAug2`,0 AS `mSep`,0 AS `mSep2`,0 AS `mOct`,0 AS `mOct2`,0 AS `mNov`,0 AS `mNov2`,0 AS `mDec`,0 AS `mDec2` from (`mline` `a` left join `tresultutil` `b` on(`a`.`lineId` = `b`.`lineId` and `b`.`tMonth` = 8)) union all select `a`.`group1` AS `group1`,`a`.`compId` AS `compId`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mJan2`,0 AS `mFeb`,0 AS `mFeb2`,0 AS `mMar`,0 AS `mMar2`,0 AS `mApr`,0 AS `mApr2`,0 AS `mMei`,0 AS `mMei2`,0 AS `mJun`,0 AS `mJun2`,0 AS `mJul`,0 AS `mJul2`,0 AS `mAug`,0 AS `mAug2`,`b`.`tResult` AS `mSep`,0 AS `mSep2`,0 AS `mOct`,0 AS `mOct2`,0 AS `mNov`,0 AS `mNov2`,0 AS `mDec`,0 AS `mDec2` from (`mline` `a` left join `tresultutil` `b` on(`a`.`lineId` = `b`.`lineId` and `b`.`tMonth` = 9)) union all select `a`.`group1` AS `group1`,`a`.`compId` AS `compId`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mJan2`,0 AS `mFeb`,0 AS `mFeb2`,0 AS `mMar`,0 AS `mMar2`,0 AS `mApr`,0 AS `mApr2`,0 AS `mMei`,0 AS `mMei2`,0 AS `mJun`,0 AS `mJun2`,0 AS `mJul`,0 AS `mJul2`,0 AS `mAug`,0 AS `mAug2`,0 AS `mSep`,`b`.`tCapacity` AS `mSep2`,0 AS `mOct`,0 AS `mOct2`,0 AS `mNov`,0 AS `mNov2`,0 AS `mDec`,0 AS `mDec2` from (`mline` `a` left join `tresultutil` `b` on(`a`.`lineId` = `b`.`lineId` and `b`.`tMonth` = 9)) union all select `a`.`group1` AS `group1`,`a`.`compId` AS `compId`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mJan2`,0 AS `mFeb`,0 AS `mFeb2`,0 AS `mMar`,0 AS `mMar2`,0 AS `mApr`,0 AS `mApr2`,0 AS `mMei`,0 AS `mMei2`,0 AS `mJun`,0 AS `mJun2`,0 AS `mJul`,0 AS `mJul2`,0 AS `mAug`,0 AS `mAug2`,0 AS `mSep`,0 AS `mSep2`,`b`.`tResult` AS `mOct`,0 AS `mOct2`,0 AS `mNov`,0 AS `mNov2`,0 AS `mDec`,0 AS `mDec2` from (`mline` `a` left join `tresultutil` `b` on(`a`.`lineId` = `b`.`lineId` and `b`.`tMonth` = 10)) union all select `a`.`group1` AS `group1`,`a`.`compId` AS `compId`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mJan2`,0 AS `mFeb`,0 AS `mFeb2`,0 AS `mMar`,0 AS `mMar2`,0 AS `mApr`,0 AS `mApr2`,0 AS `mMei`,0 AS `mMei2`,0 AS `mJun`,0 AS `mJun2`,0 AS `mJul`,0 AS `mJul2`,0 AS `mAug`,0 AS `mAug2`,0 AS `mSep`,0 AS `mSep2`,0 AS `mOct`,`b`.`tCapacity` AS `mOct2`,0 AS `mNov`,0 AS `mNov2`,0 AS `mDec`,0 AS `mDec2` from (`mline` `a` left join `tresultutil` `b` on(`a`.`lineId` = `b`.`lineId` and `b`.`tMonth` = 10)) union all select `a`.`group1` AS `group1`,`a`.`compId` AS `compId`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mJan2`,0 AS `mFeb`,0 AS `mFeb2`,0 AS `mMar`,0 AS `mMar2`,0 AS `mApr`,0 AS `mApr2`,0 AS `mMei`,0 AS `mMei2`,0 AS `mJun`,0 AS `mJun2`,0 AS `mJul`,0 AS `mJul2`,0 AS `mAug`,0 AS `mAug2`,0 AS `mSep`,0 AS `mSep2`,0 AS `mOct`,0 AS `mOct2`,`b`.`tResult` AS `mNov`,0 AS `mNov2`,0 AS `mDec`,0 AS `mDec2` from (`mline` `a` left join `tresultutil` `b` on(`a`.`lineId` = `b`.`lineId` and `b`.`tMonth` = 11)) union all select `a`.`group1` AS `group1`,`a`.`compId` AS `compId`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mJan2`,0 AS `mFeb`,0 AS `mFeb2`,0 AS `mMar`,0 AS `mMar2`,0 AS `mApr`,0 AS `mApr2`,0 AS `mMei`,0 AS `mMei2`,0 AS `mJun`,0 AS `mJun2`,0 AS `mJul`,0 AS `mJul2`,0 AS `mAug`,0 AS `mAug2`,0 AS `mSep`,0 AS `mSep2`,0 AS `mOct`,0 AS `mOct2`,0 AS `mNov`,`b`.`tCapacity` AS `mNov2`,0 AS `mDec`,0 AS `mDec2` from (`mline` `a` left join `tresultutil` `b` on(`a`.`lineId` = `b`.`lineId` and `b`.`tMonth` = 11)) union all select `a`.`group1` AS `group1`,`a`.`compId` AS `compId`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mJan2`,0 AS `mFeb`,0 AS `mFeb2`,0 AS `mMar`,0 AS `mMar2`,0 AS `mApr`,0 AS `mApr2`,0 AS `mMei`,0 AS `mMei2`,0 AS `mJun`,0 AS `mJun2`,0 AS `mJul`,0 AS `mJul2`,0 AS `mAug`,0 AS `mAug2`,0 AS `mSep`,0 AS `mSep2`,0 AS `mOct`,0 AS `mOct2`,0 AS `mNov`,0 AS `mNov2`,`b`.`tResult` AS `mDec`,0 AS `mDec2` from (`mline` `a` left join `tresultutil` `b` on(`a`.`lineId` = `b`.`lineId` and `b`.`tMonth` = 12)) union all select `a`.`group1` AS `group1`,`a`.`compId` AS `compId`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mJan2`,0 AS `mFeb`,0 AS `mFeb2`,0 AS `mMar`,0 AS `mMar2`,0 AS `mApr`,0 AS `mApr2`,0 AS `mMei`,0 AS `mMei2`,0 AS `mJun`,0 AS `mJun2`,0 AS `mJul`,0 AS `mJul2`,0 AS `mAug`,0 AS `mAug2`,0 AS `mSep`,0 AS `mSep2`,0 AS `mOct`,0 AS `mOct2`,0 AS `mNov`,0 AS `mNov2`,0 AS `mDec`,`b`.`tCapacity` AS `mDec2` from (`mline` `a` left join `tresultutil` `b` on(`a`.`lineId` = `b`.`lineId` and `b`.`tMonth` = 12))) AS `a` WHERE `a`.`tYear` is not null AND `a`.`group1` is not null GROUP BY `a`.`group1`, `a`.`tYear` ;

-- --------------------------------------------------------

--
-- Structure for view `vresult_util_group2`
--
DROP TABLE IF EXISTS `vresult_util_group2`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vresult_util_group2`  AS SELECT `a`.`group2` AS `group2`, `a`.`compId` AS `compId`, `a`.`tYear` AS `tYear`, sum(`a`.`mJan`) AS `mJan`, sum(`a`.`mJan2`) AS `mJan2`, sum(`a`.`mFeb`) AS `mFeb`, sum(`a`.`mFeb2`) AS `mFeb2`, sum(`a`.`mMar`) AS `mMar`, sum(`a`.`mMar2`) AS `mMar2`, sum(`a`.`mApr`) AS `mApr`, sum(`a`.`mApr2`) AS `mApr2`, sum(`a`.`mMei`) AS `mMei`, sum(`a`.`mMei2`) AS `mMei2`, sum(`a`.`mJun`) AS `mJun`, sum(`a`.`mJun2`) AS `mJun2`, sum(`a`.`mJul`) AS `mJul`, sum(`a`.`mJul2`) AS `mJul2`, sum(`a`.`mAug`) AS `mAug`, sum(`a`.`mAug2`) AS `mAug2`, sum(`a`.`mSep`) AS `mSep`, sum(`a`.`mSep2`) AS `mSep2`, sum(`a`.`mOct`) AS `mOct`, sum(`a`.`mOct2`) AS `mOct2`, sum(`a`.`mNov`) AS `mNov`, sum(`a`.`mNov2`) AS `mNov2`, sum(`a`.`mDec`) AS `mDec`, sum(`a`.`mDec2`) AS `mDec2` FROM (select `a`.`group2` AS `group2`,`a`.`compId` AS `compId`,`b`.`tYear` AS `tYear`,`b`.`tResult` AS `mJan`,0 AS `mJan2`,0 AS `mFeb`,0 AS `mFeb2`,0 AS `mMar`,0 AS `mMar2`,0 AS `mApr`,0 AS `mApr2`,0 AS `mMei`,0 AS `mMei2`,0 AS `mJun`,0 AS `mJun2`,0 AS `mJul`,0 AS `mJul2`,0 AS `mAug`,0 AS `mAug2`,0 AS `mSep`,0 AS `mSep2`,0 AS `mOct`,0 AS `mOct2`,0 AS `mNov`,0 AS `mNov2`,0 AS `mDec`,0 AS `mDec2` from (`mline` `a` left join `tresultutil` `b` on(`a`.`lineId` = `b`.`lineId` and `b`.`tMonth` = 1)) union all select `a`.`group2` AS `group2`,`a`.`compId` AS `compId`,`b`.`tYear` AS `tYear`,0 AS `mJan`,`b`.`tCapacity` AS `mJan2`,0 AS `mFeb`,0 AS `mFeb2`,0 AS `mMar`,0 AS `mMar2`,0 AS `mApr`,0 AS `mApr2`,0 AS `mMei`,0 AS `mMei2`,0 AS `mJun`,0 AS `mJun2`,0 AS `mJul`,0 AS `mJul2`,0 AS `mAug`,0 AS `mAug2`,0 AS `mSep`,0 AS `mSep2`,0 AS `mOct`,0 AS `mOct2`,0 AS `mNov`,0 AS `mNov2`,0 AS `mDec`,0 AS `mDec2` from (`mline` `a` left join `tresultutil` `b` on(`a`.`lineId` = `b`.`lineId` and `b`.`tMonth` = 1)) union all select `a`.`group2` AS `group2`,`a`.`compId` AS `compId`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mJan2`,`b`.`tResult` AS `mFeb`,0 AS `mFeb2`,0 AS `mMar`,0 AS `mMar2`,0 AS `mApr`,0 AS `mApr2`,0 AS `mMei`,0 AS `mMei2`,0 AS `mJun`,0 AS `mJun2`,0 AS `mJul`,0 AS `mJul2`,0 AS `mAug`,0 AS `mAug2`,0 AS `mSep`,0 AS `mSep2`,0 AS `mOct`,0 AS `mOct2`,0 AS `mNov`,0 AS `mNov2`,0 AS `mDec`,0 AS `mDec2` from (`mline` `a` left join `tresultutil` `b` on(`a`.`lineId` = `b`.`lineId` and `b`.`tMonth` = 2)) union all select `a`.`group2` AS `group2`,`a`.`compId` AS `compId`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mJan2`,0 AS `mFeb`,`b`.`tCapacity` AS `mFeb2`,0 AS `mMar`,0 AS `mMar2`,0 AS `mApr`,0 AS `mApr2`,0 AS `mMei`,0 AS `mMei2`,0 AS `mJun`,0 AS `mJun2`,0 AS `mJul`,0 AS `mJul2`,0 AS `mAug`,0 AS `mAug2`,0 AS `mSep`,0 AS `mSep2`,0 AS `mOct`,0 AS `mOct2`,0 AS `mNov`,0 AS `mNov2`,0 AS `mDec`,0 AS `mDec2` from (`mline` `a` left join `tresultutil` `b` on(`a`.`lineId` = `b`.`lineId` and `b`.`tMonth` = 2)) union all select `a`.`group2` AS `group2`,`a`.`compId` AS `compId`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mJan2`,0 AS `mFeb`,0 AS `mFeb2`,`b`.`tResult` AS `mMar`,0 AS `mMar2`,0 AS `mApr`,0 AS `mApr2`,0 AS `mMei`,0 AS `mMei2`,0 AS `mJun`,0 AS `mJun2`,0 AS `mJul`,0 AS `mJul2`,0 AS `mAug`,0 AS `mAug2`,0 AS `mSep`,0 AS `mSep2`,0 AS `mOct`,0 AS `mOct2`,0 AS `mNov`,0 AS `mNov2`,0 AS `mDec`,0 AS `mDec2` from (`mline` `a` left join `tresultutil` `b` on(`a`.`lineId` = `b`.`lineId` and `b`.`tMonth` = 3)) union all select `a`.`group2` AS `group2`,`a`.`compId` AS `compId`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mJan2`,0 AS `mFeb`,0 AS `mFeb2`,0 AS `mMar`,`b`.`tCapacity` AS `mMar2`,0 AS `mApr`,0 AS `mApr2`,0 AS `mMei`,0 AS `mMei2`,0 AS `mJun`,0 AS `mJun2`,0 AS `mJul`,0 AS `mJul2`,0 AS `mAug`,0 AS `mAug2`,0 AS `mSep`,0 AS `mSep2`,0 AS `mOct`,0 AS `mOct2`,0 AS `mNov`,0 AS `mNov2`,0 AS `mDec`,0 AS `mDec2` from (`mline` `a` left join `tresultutil` `b` on(`a`.`lineId` = `b`.`lineId` and `b`.`tMonth` = 3)) union all select `a`.`group2` AS `group2`,`a`.`compId` AS `compId`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mJan2`,0 AS `mFeb`,0 AS `mFeb2`,0 AS `mMar`,0 AS `mMar2`,`b`.`tResult` AS `mApr`,0 AS `mApr2`,0 AS `mMei`,0 AS `mMei2`,0 AS `mJun`,0 AS `mJun2`,0 AS `mJul`,0 AS `mJul2`,0 AS `mAug`,0 AS `mAug2`,0 AS `mSep`,0 AS `mSep2`,0 AS `mOct`,0 AS `mOct2`,0 AS `mNov`,0 AS `mNov2`,0 AS `mDec`,0 AS `mDec2` from (`mline` `a` left join `tresultutil` `b` on(`a`.`lineId` = `b`.`lineId` and `b`.`tMonth` = 4)) union all select `a`.`group2` AS `group2`,`a`.`compId` AS `compId`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mJan2`,0 AS `mFeb`,0 AS `mFeb2`,0 AS `mMar`,0 AS `mMar2`,0 AS `mApr`,`b`.`tCapacity` AS `mApr2`,0 AS `mMei`,0 AS `mMei2`,0 AS `mJun`,0 AS `mJun2`,0 AS `mJul`,0 AS `mJul2`,0 AS `mAug`,0 AS `mAug2`,0 AS `mSep`,0 AS `mSep2`,0 AS `mOct`,0 AS `mOct2`,0 AS `mNov`,0 AS `mNov2`,0 AS `mDec`,0 AS `mDec2` from (`mline` `a` left join `tresultutil` `b` on(`a`.`lineId` = `b`.`lineId` and `b`.`tMonth` = 4)) union all select `a`.`group2` AS `group2`,`a`.`compId` AS `compId`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mJan2`,0 AS `mFeb`,0 AS `mFeb2`,0 AS `mMar`,0 AS `mMar2`,0 AS `mApr`,0 AS `mApr2`,`b`.`tResult` AS `mMei`,0 AS `mMei2`,0 AS `mJun`,0 AS `mJun2`,0 AS `mJul`,0 AS `mJul2`,0 AS `mAug`,0 AS `mAug2`,0 AS `mSep`,0 AS `mSep2`,0 AS `mOct`,0 AS `mOct2`,0 AS `mNov`,0 AS `mNov2`,0 AS `mDec`,0 AS `mDec2` from (`mline` `a` left join `tresultutil` `b` on(`a`.`lineId` = `b`.`lineId` and `b`.`tMonth` = 5)) union all select `a`.`group2` AS `group2`,`a`.`compId` AS `compId`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mJan2`,0 AS `mFeb`,0 AS `mFeb2`,0 AS `mMar`,0 AS `mMar2`,0 AS `mApr`,0 AS `mApr2`,0 AS `mMei`,`b`.`tCapacity` AS `mMei2`,0 AS `mJun`,0 AS `mJun2`,0 AS `mJul`,0 AS `mJul2`,0 AS `mAug`,0 AS `mAug2`,0 AS `mSep`,0 AS `mSep2`,0 AS `mOct`,0 AS `mOct2`,0 AS `mNov`,0 AS `mNov2`,0 AS `mDec`,0 AS `mDec2` from (`mline` `a` left join `tresultutil` `b` on(`a`.`lineId` = `b`.`lineId` and `b`.`tMonth` = 5)) union all select `a`.`group2` AS `group2`,`a`.`compId` AS `compId`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mJan2`,0 AS `mFeb`,0 AS `mFeb2`,0 AS `mMar`,0 AS `mMar2`,0 AS `mApr`,0 AS `mApr2`,0 AS `mMei`,0 AS `mMei2`,`b`.`tResult` AS `mJun`,0 AS `mJun2`,0 AS `mJul`,0 AS `mJul2`,0 AS `mAug`,0 AS `mAug2`,0 AS `mSep`,0 AS `mSep2`,0 AS `mOct`,0 AS `mOct2`,0 AS `mNov`,0 AS `mNov2`,0 AS `mDec`,0 AS `mDec2` from (`mline` `a` left join `tresultutil` `b` on(`a`.`lineId` = `b`.`lineId` and `b`.`tMonth` = 6)) union all select `a`.`group2` AS `group2`,`a`.`compId` AS `compId`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mJan2`,0 AS `mFeb`,0 AS `mFeb2`,0 AS `mMar`,0 AS `mMar2`,0 AS `mApr`,0 AS `mApr2`,0 AS `mMei`,0 AS `mMei2`,0 AS `mJun`,`b`.`tCapacity` AS `mJun2`,0 AS `mJul`,0 AS `mJul2`,0 AS `mAug`,0 AS `mAug2`,0 AS `mSep`,0 AS `mSep2`,0 AS `mOct`,0 AS `mOct2`,0 AS `mNov`,0 AS `mNov2`,0 AS `mDec`,0 AS `mDec2` from (`mline` `a` left join `tresultutil` `b` on(`a`.`lineId` = `b`.`lineId` and `b`.`tMonth` = 6)) union all select `a`.`group2` AS `group2`,`a`.`compId` AS `compId`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mJan2`,0 AS `mFeb`,0 AS `mFeb2`,0 AS `mMar`,0 AS `mMar2`,0 AS `mApr`,0 AS `mApr2`,0 AS `mMei`,0 AS `mMei2`,0 AS `mJun`,0 AS `mJun2`,`b`.`tResult` AS `mJul`,0 AS `mJul2`,0 AS `mAug`,0 AS `mAug2`,0 AS `mSep`,0 AS `mSep2`,0 AS `mOct`,0 AS `mOct2`,0 AS `mNov`,0 AS `mNov2`,0 AS `mDec`,0 AS `mDec2` from (`mline` `a` left join `tresultutil` `b` on(`a`.`lineId` = `b`.`lineId` and `b`.`tMonth` = 7)) union all select `a`.`group2` AS `group2`,`a`.`compId` AS `compId`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mJan2`,0 AS `mFeb`,0 AS `mFeb2`,0 AS `mMar`,0 AS `mMar2`,0 AS `mApr`,0 AS `mApr2`,0 AS `mMei`,0 AS `mMei2`,0 AS `mJun`,0 AS `mJun2`,0 AS `mJul`,`b`.`tCapacity` AS `mJul2`,0 AS `mAug`,0 AS `mAug2`,0 AS `mSep`,0 AS `mSep2`,0 AS `mOct`,0 AS `mOct2`,0 AS `mNov`,0 AS `mNov2`,0 AS `mDec`,0 AS `mDec2` from (`mline` `a` left join `tresultutil` `b` on(`a`.`lineId` = `b`.`lineId` and `b`.`tMonth` = 7)) union all select `a`.`group2` AS `group2`,`a`.`compId` AS `compId`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mJan2`,0 AS `mFeb`,0 AS `mFeb2`,0 AS `mMar`,0 AS `mMar2`,0 AS `mApr`,0 AS `mApr2`,0 AS `mMei`,0 AS `mMei2`,0 AS `mJun`,0 AS `mJun2`,0 AS `mJul`,0 AS `mJul2`,`b`.`tResult` AS `mAug`,0 AS `mAug2`,0 AS `mSep`,0 AS `mSep2`,0 AS `mOct`,0 AS `mOct2`,0 AS `mNov`,0 AS `mNov2`,0 AS `mDec`,0 AS `mDec2` from (`mline` `a` left join `tresultutil` `b` on(`a`.`lineId` = `b`.`lineId` and `b`.`tMonth` = 8)) union all select `a`.`group2` AS `group2`,`a`.`compId` AS `compId`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mJan2`,0 AS `mFeb`,0 AS `mFeb2`,0 AS `mMar`,0 AS `mMar2`,0 AS `mApr`,0 AS `mApr2`,0 AS `mMei`,0 AS `mMei2`,0 AS `mJun`,0 AS `mJun2`,0 AS `mJul`,0 AS `mJul2`,0 AS `mAug`,`b`.`tCapacity` AS `mAug2`,0 AS `mSep`,0 AS `mSep2`,0 AS `mOct`,0 AS `mOct2`,0 AS `mNov`,0 AS `mNov2`,0 AS `mDec`,0 AS `mDec2` from (`mline` `a` left join `tresultutil` `b` on(`a`.`lineId` = `b`.`lineId` and `b`.`tMonth` = 8)) union all select `a`.`group2` AS `group2`,`a`.`compId` AS `compId`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mJan2`,0 AS `mFeb`,0 AS `mFeb2`,0 AS `mMar`,0 AS `mMar2`,0 AS `mApr`,0 AS `mApr2`,0 AS `mMei`,0 AS `mMei2`,0 AS `mJun`,0 AS `mJun2`,0 AS `mJul`,0 AS `mJul2`,0 AS `mAug`,0 AS `mAug2`,`b`.`tResult` AS `mSep`,0 AS `mSep2`,0 AS `mOct`,0 AS `mOct2`,0 AS `mNov`,0 AS `mNov2`,0 AS `mDec`,0 AS `mDec2` from (`mline` `a` left join `tresultutil` `b` on(`a`.`lineId` = `b`.`lineId` and `b`.`tMonth` = 9)) union all select `a`.`group2` AS `group2`,`a`.`compId` AS `compId`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mJan2`,0 AS `mFeb`,0 AS `mFeb2`,0 AS `mMar`,0 AS `mMar2`,0 AS `mApr`,0 AS `mApr2`,0 AS `mMei`,0 AS `mMei2`,0 AS `mJun`,0 AS `mJun2`,0 AS `mJul`,0 AS `mJul2`,0 AS `mAug`,0 AS `mAug2`,0 AS `mSep`,`b`.`tCapacity` AS `mSep2`,0 AS `mOct`,0 AS `mOct2`,0 AS `mNov`,0 AS `mNov2`,0 AS `mDec`,0 AS `mDec2` from (`mline` `a` left join `tresultutil` `b` on(`a`.`lineId` = `b`.`lineId` and `b`.`tMonth` = 9)) union all select `a`.`group2` AS `group2`,`a`.`compId` AS `compId`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mJan2`,0 AS `mFeb`,0 AS `mFeb2`,0 AS `mMar`,0 AS `mMar2`,0 AS `mApr`,0 AS `mApr2`,0 AS `mMei`,0 AS `mMei2`,0 AS `mJun`,0 AS `mJun2`,0 AS `mJul`,0 AS `mJul2`,0 AS `mAug`,0 AS `mAug2`,0 AS `mSep`,0 AS `mSep2`,`b`.`tResult` AS `mOct`,0 AS `mOct2`,0 AS `mNov`,0 AS `mNov2`,0 AS `mDec`,0 AS `mDec2` from (`mline` `a` left join `tresultutil` `b` on(`a`.`lineId` = `b`.`lineId` and `b`.`tMonth` = 10)) union all select `a`.`group2` AS `group2`,`a`.`compId` AS `compId`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mJan2`,0 AS `mFeb`,0 AS `mFeb2`,0 AS `mMar`,0 AS `mMar2`,0 AS `mApr`,0 AS `mApr2`,0 AS `mMei`,0 AS `mMei2`,0 AS `mJun`,0 AS `mJun2`,0 AS `mJul`,0 AS `mJul2`,0 AS `mAug`,0 AS `mAug2`,0 AS `mSep`,0 AS `mSep2`,0 AS `mOct`,`b`.`tCapacity` AS `mOct2`,0 AS `mNov`,0 AS `mNov2`,0 AS `mDec`,0 AS `mDec2` from (`mline` `a` left join `tresultutil` `b` on(`a`.`lineId` = `b`.`lineId` and `b`.`tMonth` = 10)) union all select `a`.`group2` AS `group2`,`a`.`compId` AS `compId`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mJan2`,0 AS `mFeb`,0 AS `mFeb2`,0 AS `mMar`,0 AS `mMar2`,0 AS `mApr`,0 AS `mApr2`,0 AS `mMei`,0 AS `mMei2`,0 AS `mJun`,0 AS `mJun2`,0 AS `mJul`,0 AS `mJul2`,0 AS `mAug`,0 AS `mAug2`,0 AS `mSep`,0 AS `mSep2`,0 AS `mOct`,0 AS `mOct2`,`b`.`tResult` AS `mNov`,0 AS `mNov2`,0 AS `mDec`,0 AS `mDec2` from (`mline` `a` left join `tresultutil` `b` on(`a`.`lineId` = `b`.`lineId` and `b`.`tMonth` = 11)) union all select `a`.`group2` AS `group2`,`a`.`compId` AS `compId`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mJan2`,0 AS `mFeb`,0 AS `mFeb2`,0 AS `mMar`,0 AS `mMar2`,0 AS `mApr`,0 AS `mApr2`,0 AS `mMei`,0 AS `mMei2`,0 AS `mJun`,0 AS `mJun2`,0 AS `mJul`,0 AS `mJul2`,0 AS `mAug`,0 AS `mAug2`,0 AS `mSep`,0 AS `mSep2`,0 AS `mOct`,0 AS `mOct2`,0 AS `mNov`,`b`.`tCapacity` AS `mNov2`,0 AS `mDec`,0 AS `mDec2` from (`mline` `a` left join `tresultutil` `b` on(`a`.`lineId` = `b`.`lineId` and `b`.`tMonth` = 11)) union all select `a`.`group2` AS `group2`,`a`.`compId` AS `compId`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mJan2`,0 AS `mFeb`,0 AS `mFeb2`,0 AS `mMar`,0 AS `mMar2`,0 AS `mApr`,0 AS `mApr2`,0 AS `mMei`,0 AS `mMei2`,0 AS `mJun`,0 AS `mJun2`,0 AS `mJul`,0 AS `mJul2`,0 AS `mAug`,0 AS `mAug2`,0 AS `mSep`,0 AS `mSep2`,0 AS `mOct`,0 AS `mOct2`,0 AS `mNov`,0 AS `mNov2`,`b`.`tResult` AS `mDec`,0 AS `mDec2` from (`mline` `a` left join `tresultutil` `b` on(`a`.`lineId` = `b`.`lineId` and `b`.`tMonth` = 12)) union all select `a`.`group2` AS `group2`,`a`.`compId` AS `compId`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mJan2`,0 AS `mFeb`,0 AS `mFeb2`,0 AS `mMar`,0 AS `mMar2`,0 AS `mApr`,0 AS `mApr2`,0 AS `mMei`,0 AS `mMei2`,0 AS `mJun`,0 AS `mJun2`,0 AS `mJul`,0 AS `mJul2`,0 AS `mAug`,0 AS `mAug2`,0 AS `mSep`,0 AS `mSep2`,0 AS `mOct`,0 AS `mOct2`,0 AS `mNov`,0 AS `mNov2`,0 AS `mDec`,`b`.`tCapacity` AS `mDec2` from (`mline` `a` left join `tresultutil` `b` on(`a`.`lineId` = `b`.`lineId` and `b`.`tMonth` = 12))) AS `a` WHERE `a`.`tYear` is not null AND `a`.`group2` is not null GROUP BY `a`.`group2`, `a`.`tYear` ;

-- --------------------------------------------------------

--
-- Structure for view `v_datarow`
--
DROP TABLE IF EXISTS `v_datarow`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_datarow`  AS SELECT `a`.`id` AS `id`, `a`.`compId` AS `compId`, `a`.`vKet` AS `vKet`, `a`.`dept` AS `dept`, `a`.`tYear` AS `tYear`, sum(`a`.`mJan`) AS `mJan`, sum(`a`.`mFeb`) AS `mFeb`, sum(`a`.`mMar`) AS `mMar`, sum(`a`.`mApr`) AS `mApr`, sum(`a`.`mMei`) AS `mMei`, sum(`a`.`mJun`) AS `mJun`, sum(`a`.`mJul`) AS `mJul`, sum(`a`.`mAug`) AS `mAug`, sum(`a`.`mSep`) AS `mSep`, sum(`a`.`mOct`) AS `mOct`, sum(`a`.`mNov`) AS `mNov`, sum(`a`.`mDec`) AS `mDec` FROM (select `a`.`id` AS `id`,`b`.`compId` AS `compId`,`a`.`vKet` AS `vKet`,`a`.`dept` AS `dept`,`b`.`tYear` AS `tYear`,`b`.`tResult` AS `mJan`,0 AS `mFeb`,0 AS `mMar`,0 AS `mApr`,0 AS `mMei`,0 AS `mJun`,0 AS `mJul`,0 AS `mAug`,0 AS `mSep`,0 AS `mOct`,0 AS `mNov`,0 AS `mDec` from (`mrawdata` `a` left join `tresultrawdata` `b` on(`a`.`id` = `b`.`idRawData` and `b`.`tMonth` = 1)) union all select `a`.`id` AS `id`,`b`.`compId` AS `compId`,`a`.`vKet` AS `vKet`,`a`.`dept` AS `dept`,`b`.`tYear` AS `tYear`,0 AS `mJan`,`b`.`tResult` AS `mFeb`,0 AS `mMar`,0 AS `mApr`,0 AS `mMei`,0 AS `mJun`,0 AS `mJul`,0 AS `mAug`,0 AS `mSep`,0 AS `mOct`,0 AS `mNov`,0 AS `mDec` from (`mrawdata` `a` left join `tresultrawdata` `b` on(`a`.`id` = `b`.`idRawData` and `b`.`tMonth` = 2)) union all select `a`.`id` AS `id`,`b`.`compId` AS `compId`,`a`.`vKet` AS `vKet`,`a`.`dept` AS `dept`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mFeb`,`b`.`tResult` AS `mMar`,0 AS `mApr`,0 AS `mMei`,0 AS `mJun`,0 AS `mJul`,0 AS `mAug`,0 AS `mSep`,0 AS `mOct`,0 AS `mNov`,0 AS `mDec` from (`mrawdata` `a` left join `tresultrawdata` `b` on(`a`.`id` = `b`.`idRawData` and `b`.`tMonth` = 3)) union all select `a`.`id` AS `id`,`b`.`compId` AS `compId`,`a`.`vKet` AS `vKet`,`a`.`dept` AS `dept`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mFeb`,0 AS `mMar`,`b`.`tResult` AS `mApr`,0 AS `mMei`,0 AS `mJun`,0 AS `mJul`,0 AS `mAug`,0 AS `mSep`,0 AS `mOct`,0 AS `mNov`,0 AS `mDec` from (`mrawdata` `a` left join `tresultrawdata` `b` on(`a`.`id` = `b`.`idRawData` and `b`.`tMonth` = 4)) union all select `a`.`id` AS `id`,`b`.`compId` AS `compId`,`a`.`vKet` AS `vKet`,`a`.`dept` AS `dept`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mFeb`,0 AS `mMar`,0 AS `mApr`,`b`.`tResult` AS `mMei`,0 AS `mJun`,0 AS `mJul`,0 AS `mAug`,0 AS `mSep`,0 AS `mOct`,0 AS `mNov`,0 AS `mDec` from (`mrawdata` `a` left join `tresultrawdata` `b` on(`a`.`id` = `b`.`idRawData` and `b`.`tMonth` = 5)) union all select `a`.`id` AS `id`,`b`.`compId` AS `compId`,`a`.`vKet` AS `vKet`,`a`.`dept` AS `dept`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mFeb`,0 AS `mMar`,0 AS `mApr`,0 AS `mMei`,`b`.`tResult` AS `mJun`,0 AS `mJul`,0 AS `mAug`,0 AS `mSep`,0 AS `mOct`,0 AS `mNov`,0 AS `mDec` from (`mrawdata` `a` left join `tresultrawdata` `b` on(`a`.`id` = `b`.`idRawData` and `b`.`tMonth` = 6)) union all select `a`.`id` AS `id`,`b`.`compId` AS `compId`,`a`.`vKet` AS `vKet`,`a`.`dept` AS `dept`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mFeb`,0 AS `mMar`,0 AS `mApr`,0 AS `mMei`,0 AS `mJun`,`b`.`tResult` AS `mJul`,0 AS `mAug`,0 AS `mSep`,0 AS `mOct`,0 AS `mNov`,0 AS `mDec` from (`mrawdata` `a` left join `tresultrawdata` `b` on(`a`.`id` = `b`.`idRawData` and `b`.`tMonth` = 7)) union all select `a`.`id` AS `id`,`b`.`compId` AS `compId`,`a`.`vKet` AS `vKet`,`a`.`dept` AS `dept`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mFeb`,0 AS `mMar`,0 AS `mApr`,0 AS `mMei`,0 AS `mJun`,0 AS `mJul`,`b`.`tResult` AS `mAug`,0 AS `mSep`,0 AS `mOct`,0 AS `mNov`,0 AS `mDec` from (`mrawdata` `a` left join `tresultrawdata` `b` on(`a`.`id` = `b`.`idRawData` and `b`.`tMonth` = 8)) union all select `a`.`id` AS `id`,`b`.`compId` AS `compId`,`a`.`vKet` AS `vKet`,`a`.`dept` AS `dept`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mFeb`,0 AS `mMar`,0 AS `mApr`,0 AS `mMei`,0 AS `mJun`,0 AS `mJul`,0 AS `mAug`,`b`.`tResult` AS `mSep`,0 AS `mOct`,0 AS `mNov`,0 AS `mDec` from (`mrawdata` `a` left join `tresultrawdata` `b` on(`a`.`id` = `b`.`idRawData` and `b`.`tMonth` = 9)) union all select `a`.`id` AS `id`,`b`.`compId` AS `compId`,`a`.`vKet` AS `vKet`,`a`.`dept` AS `dept`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mFeb`,0 AS `mMar`,0 AS `mApr`,0 AS `mMei`,0 AS `mJun`,0 AS `mJul`,0 AS `mAug`,0 AS `mSep`,`b`.`tResult` AS `mOct`,0 AS `mNov`,0 AS `mDec` from (`mrawdata` `a` left join `tresultrawdata` `b` on(`a`.`id` = `b`.`idRawData` and `b`.`tMonth` = 10)) union all select `a`.`id` AS `id`,`b`.`compId` AS `compId`,`a`.`vKet` AS `vKet`,`a`.`dept` AS `dept`,`b`.`tYear` AS `tYear`,0 AS `mJan`,0 AS `mFeb`,0 AS `mMar`,0 AS `mApr`,0 AS `mMei`,0 AS `mJun`,0 AS `mJul`,0 AS `mAug`,0 AS `mSep`,0 AS `mOct`,`b`.`tResult` AS `mNov`,0 AS `mDec` from (`mrawdata` `a` left join `tresultrawdata` `b` on(`a`.`id` = `b`.`idRawData` and `b`.`tMonth` = 11)) union all select `a`.`id` AS `id`,`b`.`compId` AS `compId`,`a`.`vKet` AS `vKet`,`a`.`dept` AS `dept`,`b`.`tYear` AS `tYear`,`b`.`tResult` AS `mJan`,0 AS `mFeb`,0 AS `mMar`,0 AS `mApr`,0 AS `mMei`,0 AS `mJun`,0 AS `mJul`,0 AS `mAug`,0 AS `mSep`,0 AS `mOct`,0 AS `mNov`,`b`.`tResult` AS `mDec` from (`mrawdata` `a` left join `tresultrawdata` `b` on(`a`.`id` = `b`.`idRawData` and `b`.`tMonth` = 12))) AS `a` WHERE `a`.`tYear` is not null GROUP BY `a`.`id`, `a`.`compId`, `a`.`vKet`, `a`.`tYear` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mcompany`
--
ALTER TABLE `mcompany`
  ADD PRIMARY KEY (`compId`);

--
-- Indexes for table `mdatapertanyaanhse`
--
ALTER TABLE `mdatapertanyaanhse`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mline`
--
ALTER TABLE `mline`
  ADD PRIMARY KEY (`lineId`);

--
-- Indexes for table `mline_bu`
--
ALTER TABLE `mline_bu`
  ADD PRIMARY KEY (`lineId`);

--
-- Indexes for table `mlogin`
--
ALTER TABLE `mlogin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mlogin-bu`
--
ALTER TABLE `mlogin-bu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mproductitem`
--
ALTER TABLE `mproductitem`
  ADD PRIMARY KEY (`pItemId`);

--
-- Indexes for table `mrawdata`
--
ALTER TABLE `mrawdata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mrumusgrafik`
--
ALTER TABLE `mrumusgrafik`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mrumusgrafik_bu`
--
ALTER TABLE `mrumusgrafik_bu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mrumuskpi`
--
ALTER TABLE `mrumuskpi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mrumuskpi_bu`
--
ALTER TABLE `mrumuskpi_bu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `msteppertanyaanhse`
--
ALTER TABLE `msteppertanyaanhse`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tresultgrafik`
--
ALTER TABLE `tresultgrafik`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tresultkpi`
--
ALTER TABLE `tresultkpi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tresultproductitem`
--
ALTER TABLE `tresultproductitem`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tresultrawdata`
--
ALTER TABLE `tresultrawdata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tresultutil`
--
ALTER TABLE `tresultutil`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tresultutilyear`
--
ALTER TABLE `tresultutilyear`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mdatapertanyaanhse`
--
ALTER TABLE `mdatapertanyaanhse`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mline`
--
ALTER TABLE `mline`
  MODIFY `lineId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `mline_bu`
--
ALTER TABLE `mline_bu`
  MODIFY `lineId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `mlogin-bu`
--
ALTER TABLE `mlogin-bu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `mproductitem`
--
ALTER TABLE `mproductitem`
  MODIFY `pItemId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `mrawdata`
--
ALTER TABLE `mrawdata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `mrumusgrafik`
--
ALTER TABLE `mrumusgrafik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mrumusgrafik_bu`
--
ALTER TABLE `mrumusgrafik_bu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mrumuskpi`
--
ALTER TABLE `mrumuskpi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `mrumuskpi_bu`
--
ALTER TABLE `mrumuskpi_bu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `msteppertanyaanhse`
--
ALTER TABLE `msteppertanyaanhse`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tresultgrafik`
--
ALTER TABLE `tresultgrafik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=404;

--
-- AUTO_INCREMENT for table `tresultkpi`
--
ALTER TABLE `tresultkpi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3832;

--
-- AUTO_INCREMENT for table `tresultproductitem`
--
ALTER TABLE `tresultproductitem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=341;

--
-- AUTO_INCREMENT for table `tresultrawdata`
--
ALTER TABLE `tresultrawdata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3042;

--
-- AUTO_INCREMENT for table `tresultutil`
--
ALTER TABLE `tresultutil`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=577;

--
-- AUTO_INCREMENT for table `tresultutilyear`
--
ALTER TABLE `tresultutilyear`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=497;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
