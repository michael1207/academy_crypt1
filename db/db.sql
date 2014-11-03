-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 02, 2014 at 08:13 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `с`
--

-- --------------------------------------------------------

--
-- Table structure for table `clubs`
--

CREATE TABLE IF NOT EXISTS `clubs` (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) COLLATE utf8_bin NOT NULL,
  `city` varchar(20) COLLATE utf8_bin NOT NULL,
  `country` varchar(20) COLLATE utf8_bin NOT NULL,
  `league` int(12) NOT NULL,
  `year` int(4) NOT NULL,
  `prizes` int(5) NOT NULL,
  `budget` int(15) NOT NULL,
  `president` varchar(20) COLLATE utf8_bin NOT NULL,
  `stadium` int(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `stadium` (`stadium`),
  KEY `league` (`league`),
  KEY `prizes` (`prizes`),
  KEY `stadium_2` (`stadium`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=2 ;

--
-- Dumping data for table `clubs`
--

INSERT INTO `clubs` (`id`, `title`, `city`, `country`, `league`, `year`, `prizes`, `budget`, `president`, `stadium`) VALUES
(1, 'Chelsea', 'London', 'UK', 1, 2000, 1, 77777777, 'Abramovich', 1);

-- --------------------------------------------------------

--
-- Table structure for table `leagues`
--

CREATE TABLE IF NOT EXISTS `leagues` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(30) COLLATE utf8_bin NOT NULL,
  `country` varchar(20) COLLATE utf8_bin NOT NULL,
  `rate` float NOT NULL,
  `president` varchar(30) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=3 ;

--
-- Dumping data for table `leagues`
--

INSERT INTO `leagues` (`id`, `title`, `country`, `rate`, `president`) VALUES
(1, 'high league', 'united', 123.4, 'S.J.Johnson'),
(2, 'new league', 'holand', 100, 'W.A.Bush');

-- --------------------------------------------------------

--
-- Table structure for table `prizes`
--

CREATE TABLE IF NOT EXISTS `prizes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(30) COLLATE utf8_bin NOT NULL,
  `year` int(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=2 ;

--
-- Dumping data for table `prizes`
--

INSERT INTO `prizes` (`id`, `title`, `year`) VALUES
(1, 'gold cup', 1994);

-- --------------------------------------------------------

--
-- Table structure for table `stadiums`
--

CREATE TABLE IF NOT EXISTS `stadiums` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) COLLATE utf8_bin NOT NULL,
  `year` int(4) NOT NULL,
  `roominess` int(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=2 ;

--
-- Dumping data for table `stadiums`
--

INSERT INTO `stadiums` (`id`, `title`, `year`, `roominess`) VALUES
(1, 'stadium #1', 1984, 2000);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
