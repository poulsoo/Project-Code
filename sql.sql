-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 19, 2022 at 05:24 PM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

DROP TABLE IF EXISTS `faculty`;
CREATE TABLE IF NOT EXISTS `faculty` (
  `universityID` int(10) NOT NULL AUTO_INCREMENT,
  `jobType` varchar(255) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `fal_email` varchar(255) NOT NULL,
  `part_ID` int(10) NOT NULL,
  `part_firstName` varchar(255) NOT NULL,
  `part_lastName` varchar(255) NOT NULL,
  PRIMARY KEY (`universityID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `faculty_registerconfirmation`
--

DROP TABLE IF EXISTS `faculty_registerconfirmation`;
CREATE TABLE IF NOT EXISTS `faculty_registerconfirmation` (
  `FacultyFacultyID` int(10) NOT NULL,
  `RegisterConfirmationconfirmationNum` int(10) NOT NULL,
  PRIMARY KEY (`FacultyFacultyID`,`RegisterConfirmationconfirmationNum`),
  KEY `FKFaculty_Re566043` (`RegisterConfirmationconfirmationNum`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
CREATE TABLE IF NOT EXISTS `feedback` (
  `feed_ID` int(10) NOT NULL,
  `ratings` decimal(19,0) NOT NULL,
  `comments` varchar(255) NOT NULL,
  `universityID` int(10) NOT NULL,
  PRIMARY KEY (`feed_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `registerconfirmation`
--

DROP TABLE IF EXISTS `registerconfirmation`;
CREATE TABLE IF NOT EXISTS `registerconfirmation` (
  `universityID` int(10) NOT NULL,
  `confirmationNum` int(10) NOT NULL,
  `reg_Date` timestamp NOT NULL,
  `reg_Time` timestamp NOT NULL,
  PRIMARY KEY (`confirmationNum`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `speaker`
--

DROP TABLE IF EXISTS `speaker`;
CREATE TABLE IF NOT EXISTS `speaker` (
  `speaker_ID` int(10) NOT NULL,
  `speaker_firstName` varchar(255) NOT NULL,
  `speaker_lastName` varchar(255) NOT NULL,
  PRIMARY KEY (`speaker_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
CREATE TABLE IF NOT EXISTS `staff` (
  `staff_id` int(10) NOT NULL AUTO_INCREMENT,
  `sym_ID` int(10) NOT NULL,
  `staff_firstName` varchar(255) NOT NULL,
  `staff_lastName` varchar(255) NOT NULL,
  `staff_email` varchar(255) NOT NULL,
  PRIMARY KEY (`staff_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
CREATE TABLE IF NOT EXISTS `student` (
  `universityID` int(10) NOT NULL AUTO_INCREMENT,
  `stu_firstName` varchar(255) NOT NULL,
  `stu_lastName` varchar(255) NOT NULL,
  `stuEmail` varchar(255) NOT NULL,
  `part_ID` int(10) NOT NULL,
  `part_firstName` varchar(255) NOT NULL,
  `part_lastName` varchar(255) NOT NULL,
  PRIMARY KEY (`universityID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `symposiumevent`
--

DROP TABLE IF EXISTS `symposiumevent`;
CREATE TABLE IF NOT EXISTS `symposiumevent` (
  `sym_ID` int(10) NOT NULL,
  `speakerID` int(10) NOT NULL,
  `location` varchar(255) NOT NULL,
  `Sym_Time` varchar(255) NOT NULL,
  `sym_date` varchar(255) NOT NULL,
  `abstract` varchar(255) NOT NULL,
  PRIMARY KEY (`sym_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
