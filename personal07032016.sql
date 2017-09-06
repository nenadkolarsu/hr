-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 07, 2016 at 09:37 PM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `personal`
--

-- --------------------------------------------------------

--
-- Table structure for table `strucna_sprema`
--

DROP TABLE IF EXISTS `strucna_sprema`;
CREATE TABLE IF NOT EXISTS `strucna_sprema` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sifra` varchar(45) COLLATE utf8_bin NOT NULL,
  `naziv` varchar(100) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=4 ;

--
-- Dumping data for table `strucna_sprema`
--

INSERT INTO `strucna_sprema` (`id`, `sifra`, `naziv`) VALUES
(1, '1', 'NK'),
(2, '2', 'SSS'),
(3, '3', 'VSS');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
