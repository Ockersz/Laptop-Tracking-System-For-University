-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 26, 2023 at 11:57 AM
-- Server version: 5.5.41
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laptop_issuance`
--
CREATE DATABASE IF NOT EXISTS `laptop_issuance` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `laptop_issuance`;

-- --------------------------------------------------------

--
-- Table structure for table `laptop_issued`
--

DROP TABLE IF EXISTS `laptop_issued`;
CREATE TABLE IF NOT EXISTS `laptop_issued` (
  `issue_id` int(5) NOT NULL AUTO_INCREMENT,
  `lap_code` varchar(20) NOT NULL,
  `issued_date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `issued_to` varchar(20) NOT NULL,
  `returned_date_time` datetime DEFAULT NULL,
  PRIMARY KEY (`issue_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `laptop_issued`
--

INSERT INTO `laptop_issued` (`issue_id`, `lap_code`, `issued_date_time`, `issued_to`, `returned_date_time`) VALUES
(5, 'PCLAB01-LAP01', '2023-03-26 05:58:35', 'Hall01', '2023-03-26 05:58:25'),
(6, 'PCLAB01-LAP01', '2023-03-26 05:58:58', 'Hall-01', NULL),
(7, 'PCLAB01-LAP04', '2023-03-26 07:06:54', 'Hall01', NULL),
(8, 'PCLAB01-LAP04', '2023-03-26 07:07:11', 'Hall01', NULL),
(11, 'PCLAB01-LAP04', '2023-03-26 07:15:48', 'Hall01', NULL),
(12, 'PCLAB01-LAP06', '2023-03-26 07:16:43', 'Hall02', NULL),
(13, 'PCLAB01-LAP05', '2023-03-26 07:22:11', 'Hall02', NULL),
(14, 'PCLAB01-LAP05', '2023-03-26 07:22:51', 'Hall02', NULL),
(15, 'PCLAB01-LAP05', '2023-03-26 07:23:29', 'Hall02', NULL),
(16, 'PCLAB01-LAP05', '2023-03-26 07:26:20', 'Hall02', NULL),
(17, 'PCLAB01-LAP04', '2023-03-26 07:27:22', 'Hall02', NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
