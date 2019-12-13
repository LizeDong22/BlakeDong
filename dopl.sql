-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 13, 2019 at 12:59 PM
-- Server version: 5.6.34-log
-- PHP Version: 7.1.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ruralhealth`
--

-- --------------------------------------------------------

--
-- Table structure for table `dopl`
--

CREATE TABLE `dopl` (
  `LICENSE_NO` varchar(15) NOT NULL,
  `PROFESSION_NAME` varchar(50) DEFAULT NULL,
  `LICENSE_NAME` varchar(50) DEFAULT NULL,
  `DATE_OF_BIRTH` varchar(20) DEFAULT NULL,
  `ISSUE_DATE` varchar(20) DEFAULT NULL,
  `EXPIRATION_DATE` varchar(20) DEFAULT NULL,
  `LIC_STATUS` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dopl`
--

INSERT INTO `dopl` (`LICENSE_NO`, `PROFESSION_NAME`, `LICENSE_NAME`, `DATE_OF_BIRTH`, `ISSUE_DATE`, `EXPIRATION_DATE`, `LIC_STATUS`) VALUES
('5326968-6009', 'Clinical Mental Health', 'Assoc Clinical Mental Health Counselor', '1/27/1978', '2/27/2004', '2/27/2007', 'Expired'),
('7183390-6009', 'Clinical Mental Health', 'Assoc Clinical Mental Health Counselor', '8/2/1964', '11/24/2008', '11/24/2013', 'Superceded'),
('7199239-6009', 'Clinical Mental Health', 'Assoc Clinical Mental Health Counselor', '5/15/1970', '11/26/2008', '2/26/2013', 'Expired'),
('7280871-6009', 'Clinical Mental Health', 'Assoc Clinical Mental Health Counselor', '9/10/1969', '26/2/2009', '11/2/2012', 'Superceded');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dopl`
--
ALTER TABLE `dopl`
  ADD PRIMARY KEY (`LICENSE_NO`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
