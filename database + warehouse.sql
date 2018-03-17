-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 03, 2017 at 11:18 AM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db2`
--

-- --------------------------------------------------------

--
-- Table structure for table `db2`
--

CREATE TABLE IF NOT EXISTS `db2` (
  `Id` varchar(10) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `CouponId` varchar(10) NOT NULL,
  `Orders` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `db2`
--

INSERT INTO `db2` (`Id`, `Name`, `Gender`, `CouponId`, `Orders`) VALUES
('1', 'Nishant Sharma', 'Male', 'ZE012 ', 20),
('2', 'Nia Mehta', 'Female', 'ZE894', 19),
('3', 'Ahmed Khan', 'Male', 'ZE526', 17),
('4', 'Alex DSouza  ', 'Male', 'ZE789', 13),
('5', 'Amanda Rey   ', 'Female', 'ZE471', 18),
('6', 'Sakshi Karva ', 'Female', 'ZE256', 19),
('7', 'Ishani Talwar', 'Female', 'ZE891', 16),
('8', 'Rakesh Singh', 'Male', 'ZE223', 17);

-- --------------------------------------------------------

--
-- Table structure for table `warehouse`
--

CREATE TABLE IF NOT EXISTS `warehouse` (
  `mainid` int(11) NOT NULL AUTO_INCREMENT,
  `id` int(11) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `gender` varchar(30) DEFAULT NULL,
  `couponCode` varchar(70) DEFAULT NULL,
  `custType` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`mainid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=31 ;

--
-- Dumping data for table `warehouse`
--

INSERT INTO `warehouse` (`mainid`, `id`, `name`, `gender`, `couponCode`, `custType`) VALUES
(1, 1, 'Nishant Sharma', 'Male', 'ZE012 ', 'Medium'),
(2, 2, 'Nia Mehta', 'Female', 'ZE894', 'Medium'),
(3, 3, 'Ahmed Khan', 'Male', 'ZE526', 'Medium'),
(4, 4, 'Alex DSouza  ', 'Male', 'ZE789', 'Medium'),
(5, 5, 'Amanda Rey   ', 'Female', 'ZE471', 'Medium'),
(6, 6, 'Sakshi Karva ', 'Female', 'ZE256', 'Medium'),
(7, 7, 'Ishani Talwar', 'Female', 'ZE891', 'Medium'),
(8, 8, 'Rakesh Singh', 'Male', 'ZE223', 'Medium'),
(9, 1, 'Arpit Sharma', 'male', 'CE012', 'Medium'),
(10, 2, 'Ria Mehta', 'female', 'CE894', 'Medium'),
(11, 3, 'Raj Malhotra', 'male', 'CE526', 'Minor'),
(12, 4, 'Alex Matthews', 'male', 'CE789', 'Medium'),
(13, 5, 'Lisa Rey', 'female', 'CE471', 'Medium'),
(14, 6, 'Sakshi Raheja', 'female', 'CE256', 'Minor'),
(15, 7, 'Mukesh Raina', 'male', 'CE118', 'Medium'),
(16, 8, 'Richard Montello', 'male', 'CE876', 'Medium'),
(17, 9, 'Rose Suzy', 'female', 'CE226', 'Medium'),
(18, 10, 'Laksh Singh', 'male', 'CE421', 'Medium'),
(19, 11, 'Ragini Khanna', 'female', 'CE756', 'Medium'),
(20, 1, 'Akhil Sharma', 'Male', 'CM012', 'Medium'),
(21, 2, 'Shruti Mehta', 'Female', 'CM894', 'Prime'),
(22, 3, 'John Monterio', 'Male', 'CM526', 'Minor'),
(23, 4, 'Alexander Crystal', 'Male', 'CM789', 'Medium'),
(24, 5, 'Emma Rey', 'Female', 'CM471', 'Medium'),
(25, 6, 'Maya Sahani', 'Female', 'CM256', 'Prime'),
(26, 7, 'Mikhail Dsouza', 'Male', 'CM147', 'Medium'),
(27, 8, 'Xavier Manhatten', 'Male', 'CM471', 'Medium'),
(28, 9, 'Sophia Castello', 'Female', 'CM478', 'Medium'),
(29, 10, 'Rakesh Sharma', 'Male', 'CM112', 'Medium'),
(30, 0, '', '', '', 'Minor');
