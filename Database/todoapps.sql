-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 02, 2016 at 11:04 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `todoapps`
--

-- --------------------------------------------------------

--
-- Table structure for table `todo`
--

CREATE TABLE `todo` (
  `toDoID` int(11) NOT NULL,
  `list` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `todo`
--

INSERT INTO `todo` (`toDoID`, `list`) VALUES
(40, 'c#'),
(44, 'oky'),
(45, 'ans'),
(46, 'no'),
(47, 'nono'),
(48, 'muzzy'),
(49, 'no2'),
(55, 'himesh');

-- --------------------------------------------------------

--
-- Table structure for table `todoperso`
--

CREATE TABLE `todoperso` (
  `todoPID` int(11) NOT NULL,
  `item` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `todoperso`
--

INSERT INTO `todoperso` (`todoPID`, `item`) VALUES
(1, 'Buy Muz'),
(2, 'ICA and Revision next week'),
(6, 'himesh'),
(7, 'himeshG');

-- --------------------------------------------------------

--
-- Table structure for table `todoperso1`
--

CREATE TABLE `todoperso1` (
  `todoPID` int(11) NOT NULL,
  `item` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `todoperso1`
--

INSERT INTO `todoperso1` (`todoPID`, `item`) VALUES
(8, 'LOL'),
(11, 'LOLzzzXXX');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `todo`
--
ALTER TABLE `todo`
  ADD PRIMARY KEY (`toDoID`);

--
-- Indexes for table `todoperso`
--
ALTER TABLE `todoperso`
  ADD PRIMARY KEY (`todoPID`);

--
-- Indexes for table `todoperso1`
--
ALTER TABLE `todoperso1`
  ADD PRIMARY KEY (`todoPID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `todo`
--
ALTER TABLE `todo`
  MODIFY `toDoID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
--
-- AUTO_INCREMENT for table `todoperso`
--
ALTER TABLE `todoperso`
  MODIFY `todoPID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `todoperso1`
--
ALTER TABLE `todoperso1`
  MODIFY `todoPID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
