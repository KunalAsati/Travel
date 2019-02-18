-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 17, 2018 at 01:05 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `coctail`
--

-- --------------------------------------------------------

--
-- Table structure for table `places`
--

CREATE TABLE `places` (
  `id` int(11) NOT NULL,
  `title` varchar(1000) NOT NULL,
  `nop` int(11) NOT NULL,
  `sp` float NOT NULL,
  `tUri` varchar(1000) DEFAULT NULL,
  `lng` varchar(25) NOT NULL,
  `lat` varchar(25) NOT NULL,
  `imgUri` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `places`
--

INSERT INTO `places` (`id`, `title`, `nop`, `sp`, `tUri`, `lng`, `lat`, `imgUri`) VALUES
(1, 'Coorg', 1, 18000, NULL, '75.73818559999999', '12.42442050', 'images/DSC7104.jpg'),
(2, 'Mussoorie', 3, 15000, NULL, '78.07404620000001', '30.45533910', 'images/shutterstock_118667167.jpg'),
(3, 'Darjeeling', 2, 19000, NULL, '88.26267510', '27.03600660', 'images/shutterstock_70508932.jpg'),
(4, 'Gangtok', 6, 17000, NULL, '88.60650350', '27.33893560', 'images/DSC7104.jpg'),
(5, 'Alleppey', 50, 50000, NULL, '76.33884840', '9.498066699999999', 'images/shutterstock_118667167.jpg'),
(6, 'Munnar', 4, 90000, NULL, '77.05952479999999', '10.08893330', 'images/DSC7104.jpg'),
(7, 'Dubai', 8, 250000, NULL, '55.3333', '24.95', 'images/shutterstock_70508932.jpg'),
(8, 'Corbett', 7, 60120, NULL, '78.935265', '29.533997', 'images/DSC7104.jpg'),
(9, 'Goa', 7, 65800, NULL, '74.12399599999999', '15.29932650', 'images/shutterstock_118667167.jpg'),
(10, 'Mysore', 9, 68950, NULL, '76.63938050', '12.29581040', 'images/DSC7104.jpg'),
(11, 'Nainital', 12, 69874, NULL, '79.46356580', '29.38030390', 'images/shutterstock_118667167.jpg'),
(12, 'Rishikesh', 1, 10000, NULL, '78.26761160', '30.08692810', 'images/DSC7104.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `plan`
--

CREATE TABLE `plan` (
  `userid` varchar(50) NOT NULL,
  `str` varchar(45) NOT NULL,
  `end` varchar(45) NOT NULL,
  `intr` varchar(105) NOT NULL,
  `dot` varchar(45) NOT NULL,
  `dy` varchar(45) NOT NULL,
  `nop` varchar(45) NOT NULL,
  `status_` varchar(45) NOT NULL,
  `tcost` varchar(45) NOT NULL,
  `key_` varchar(45) NOT NULL,
  `pref` varchar(1000) NOT NULL,
  `payment` varchar(50) NOT NULL,
  `budget` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `regpage`
--

CREATE TABLE `regpage` (
  `name` varchar(45) NOT NULL DEFAULT '',
  `userid` varchar(45) NOT NULL DEFAULT '',
  `pass` varchar(45) NOT NULL DEFAULT '',
  `mail` varchar(45) NOT NULL DEFAULT '',
  `age` varchar(45) NOT NULL DEFAULT '',
  `loc` varchar(45) NOT NULL DEFAULT '',
  `sex` varchar(45) NOT NULL DEFAULT '',
  `time_` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `places`
--
ALTER TABLE `places`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `regpage`
--
ALTER TABLE `regpage`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `places`
--
ALTER TABLE `places`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
