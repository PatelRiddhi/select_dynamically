-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 06, 2018 at 06:17 AM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `section`
--

-- --------------------------------------------------------

--
-- Table structure for table `data`
--

DROP TABLE IF EXISTS `data`;
CREATE TABLE IF NOT EXISTS `data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data` varchar(50) DEFAULT NULL,
  `weight` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data`
--

INSERT INTO `data` (`id`, `data`, `weight`) VALUES
(1, 'India', 1),
(2, 'United States', 1),
(3, 'United Kingdom', 1),
(4, 'Chennai', 0),
(5, 'Delhi', 0),
(6, 'Mumbai', 0),
(7, 'kolkata', 0),
(8, 'New York', 0),
(9, 'Los Angeles', 0),
(10, 'Chicago', 0),
(11, 'San Francisco', 0),
(12, 'Las Vegas', 0),
(13, 'London', 0),
(14, 'Liverpool', 0),
(15, 'Sunderland', 0);

-- --------------------------------------------------------

--
-- Table structure for table `data_parent`
--

DROP TABLE IF EXISTS `data_parent`;
CREATE TABLE IF NOT EXISTS `data_parent` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `did` int(11) NOT NULL,
  `parent` int(11) NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `did` (`did`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_parent`
--

INSERT INTO `data_parent` (`pid`, `did`, `parent`) VALUES
(1, 1, 0),
(2, 2, 0),
(3, 3, 0),
(4, 4, 1),
(5, 5, 1),
(6, 6, 1),
(7, 7, 1),
(8, 8, 2),
(9, 9, 2),
(10, 10, 2),
(11, 11, 2),
(12, 12, 2),
(13, 13, 3),
(14, 14, 3),
(15, 15, 3);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `data_parent`
--
ALTER TABLE `data_parent`
  ADD CONSTRAINT `data_parent_ibfk_1` FOREIGN KEY (`did`) REFERENCES `data` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
