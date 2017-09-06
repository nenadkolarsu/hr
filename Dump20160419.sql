-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 19, 2016 at 06:54 PM
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
-- Table structure for table `reg`
--

DROP TABLE IF EXISTS `reg`;
CREATE TABLE IF NOT EXISTS `reg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sifra` varchar(45) COLLATE utf8_bin NOT NULL,
  `naziv` varchar(100) COLLATE utf8_bin NOT NULL,
  `datum_vreme` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `aktivan` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `sifra` (`sifra`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=3 ;

--
-- Dumping data for table `reg`
--

INSERT INTO `reg` (`id`, `sifra`, `naziv`, `datum_vreme`, `aktivan`) VALUES
(1, 'marija1', 'biskupija1', '2016-04-19 18:31:19', 1),
(2, 'marija', 'ab36ef1195857bc2d8101add28115432', '2016-04-19 18:31:19', 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
