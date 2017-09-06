-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 08, 2016 at 07:07 PM
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
CREATE DATABASE IF NOT EXISTS `personal` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `personal`;

-- --------------------------------------------------------

--
-- Table structure for table `drzavljanstvo`
--

DROP TABLE IF EXISTS `drzavljanstvo`;
CREATE TABLE IF NOT EXISTS `drzavljanstvo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sifra` varchar(25) COLLATE utf8_bin NOT NULL,
  `naziv` varchar(50) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=5 ;

--
-- Dumping data for table `drzavljanstvo`
--

INSERT INTO `drzavljanstvo` (`id`, `sifra`, `naziv`) VALUES
(1, '0', ''),
(2, '1', 'Srbija'),
(3, '2', 'Madjarska'),
(4, '3', 'Hrvatsko');

-- --------------------------------------------------------

--
-- Table structure for table `licni_podaci`
--

DROP TABLE IF EXISTS `licni_podaci`;
CREATE TABLE IF NOT EXISTS `licni_podaci` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jmbg` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `ime` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `prezime` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `ime_oca` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `ime_majke` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `brprotokola` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `pol` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `datumrodj` date DEFAULT NULL,
  `mestorodj` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `id_mestorodj` int(11) DEFAULT NULL,
  `drzavarodj` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `id_drzavarodj` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `adresa` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `ptt` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `id_ptt` int(11) DEFAULT NULL,
  `telefon` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `e_mail` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `status` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `id_status` int(11) DEFAULT NULL,
  `drzavljanstvo` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `id_drzavljanstvo` int(11) DEFAULT NULL,
  `nacionalnost` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `id_nacionalnost` int(11) DEFAULT NULL,
  `slika` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `banka_isplata` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `id_banka_isplata` int(11) DEFAULT NULL,
  `racun_isplate` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `opstina` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `id_opstina` int(11) DEFAULT NULL,
  `sifra` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=8 ;

--
-- Dumping data for table `licni_podaci`
--

INSERT INTO `licni_podaci` (`id`, `jmbg`, `ime`, `prezime`, `ime_oca`, `ime_majke`, `brprotokola`, `pol`, `datumrodj`, `mestorodj`, `id_mestorodj`, `drzavarodj`, `id_drzavarodj`, `adresa`, `ptt`, `id_ptt`, `telefon`, `e_mail`, `status`, `id_status`, `drzavljanstvo`, `id_drzavljanstvo`, `nacionalnost`, `id_nacionalnost`, `slika`, `banka_isplata`, `id_banka_isplata`, `racun_isplate`, `opstina`, `id_opstina`, `sifra`) VALUES
(1, '32132', 'Branko', 'špššš?????', 'oiii', 'asdfasd', NULL, NULL, '2016-03-14', 'null', NULL, '', '', '', '', 0, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, '321321', 'pera', 'mika', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, '12', 'ime', ' prezime', 'ime oca', 'ime majke', NULL, NULL, '2016-03-15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, '2354234', 'Š???élá', ' wqyxvadfjkléá?', 'ad', 'álé-:_:lkáélká', NULL, NULL, '2016-03-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, '4356345', 'kléákléá', ' kláéklkléákl', 'kléákléákléá', 'fghdfhgdf', NULL, NULL, '2016-03-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, '235234', '3452345', '23452345', '2345234', '23452345', NULL, NULL, '2016-03-09', 'SUBOTICA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, '', '', ' ', '', '', NULL, NULL, '2016-03-06', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `nacionalnost`
--

DROP TABLE IF EXISTS `nacionalnost`;
CREATE TABLE IF NOT EXISTS `nacionalnost` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sifra` int(11) NOT NULL,
  `naziv` varchar(50) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=5 ;

--
-- Dumping data for table `nacionalnost`
--

INSERT INTO `nacionalnost` (`id`, `sifra`, `naziv`) VALUES
(1, 1, 'Madjar'),
(2, 2, 'Hrvat'),
(3, 3, 'Slovak'),
(4, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `ptt_brojevi`
--

DROP TABLE IF EXISTS `ptt_brojevi`;
CREATE TABLE IF NOT EXISTS `ptt_brojevi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sifra` varchar(45) COLLATE utf8_bin NOT NULL,
  `naziv` varchar(100) COLLATE utf8_bin NOT NULL,
  `vreme` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=13 ;

--
-- Dumping data for table `ptt_brojevi`
--

INSERT INTO `ptt_brojevi` (`id`, `sifra`, `naziv`, `vreme`) VALUES
(1, '24000', 'SUBOTICA', '2016-03-05 18:14:58'),
(3, '25000', 'SOMBOR', '2016-03-05 18:15:21'),
(5, '0', '-', '2016-03-05 19:09:52'),
(6, '11000', 'BEOGRAD', '2016-03-07 20:13:19'),
(7, '23000', 'ZRENJANIN', '2016-03-07 20:17:08'),
(8, '21000', 'NOVI SAD', '2016-03-07 20:19:20'),
(10, '13000', 'PANCEVO', '2016-03-07 20:25:29'),
(11, '18000', 'VRANJE-pos', '2016-03-07 20:30:07'),
(12, '22000', 'SREMSKA MITROVICA', '2016-03-07 20:50:00');

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
