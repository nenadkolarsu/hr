-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 06, 2016 at 08:21 PM
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
-- Table structure for table `akademska_titula`
--

DROP TABLE IF EXISTS `akademska_titula`;
CREATE TABLE IF NOT EXISTS `akademska_titula` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sifra` varchar(45) COLLATE utf8_bin NOT NULL,
  `naziv` varchar(100) COLLATE utf8_bin NOT NULL,
  `datum_vreme` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `aktivan` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `sifra` (`sifra`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=3 ;

--
-- Dumping data for table `akademska_titula`
--

INSERT INTO `akademska_titula` (`id`, `sifra`, `naziv`, `datum_vreme`, `aktivan`) VALUES
(1, '0', '', '2016-03-27 04:52:42', 1),
(2, '1', 'Dr.', '2016-03-27 05:00:24', 1);

-- --------------------------------------------------------

--
-- Table structure for table `crkvena_titula`
--

DROP TABLE IF EXISTS `crkvena_titula`;
CREATE TABLE IF NOT EXISTS `crkvena_titula` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sifra` varchar(45) COLLATE utf8_bin NOT NULL,
  `naziv` varchar(100) COLLATE utf8_bin NOT NULL,
  `datum_vreme` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `aktivan` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `sifra` (`sifra`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=3 ;

--
-- Dumping data for table `crkvena_titula`
--

INSERT INTO `crkvena_titula` (`id`, `sifra`, `naziv`, `datum_vreme`, `aktivan`) VALUES
(1, '0', '', '2016-03-27 04:52:42', 1),
(2, '1', 'Mons.', '2016-03-27 05:00:11', 1);

-- --------------------------------------------------------

--
-- Table structure for table `drzave`
--

DROP TABLE IF EXISTS `drzave`;
CREATE TABLE IF NOT EXISTS `drzave` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sifra` varchar(45) COLLATE utf8_bin NOT NULL,
  `naziv` varchar(100) COLLATE utf8_bin NOT NULL,
  `datum_vreme` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `aktivan` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `sifra` (`sifra`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=6 ;

--
-- Dumping data for table `drzave`
--

INSERT INTO `drzave` (`id`, `sifra`, `naziv`, `datum_vreme`, `aktivan`) VALUES
(1, '0', '', '2016-03-27 13:14:45', 1),
(2, '1', 'Srbija', '2016-03-27 13:14:59', 1),
(3, '2', 'Hrvatska', '2016-03-27 13:15:58', 1),
(5, '3', 'Madjarska', '2016-03-27 13:16:25', 1);

-- --------------------------------------------------------

--
-- Table structure for table `drzavljanstvo`
--

DROP TABLE IF EXISTS `drzavljanstvo`;
CREATE TABLE IF NOT EXISTS `drzavljanstvo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sifra` varchar(25) COLLATE utf8_bin NOT NULL,
  `naziv` varchar(50) COLLATE utf8_bin NOT NULL,
  `datum_vreme` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `aktivan` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `sifra` (`sifra`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=5 ;

--
-- Dumping data for table `drzavljanstvo`
--

INSERT INTO `drzavljanstvo` (`id`, `sifra`, `naziv`, `datum_vreme`, `aktivan`) VALUES
(1, '0', '', '2016-03-24 17:56:03', 1),
(2, '1', 'Srbija', '2016-03-24 17:56:03', 1),
(3, '2', 'Madjarska', '2016-03-24 17:56:03', 1),
(4, '3', 'Hrvatsko', '2016-03-24 17:56:03', 1);

-- --------------------------------------------------------

--
-- Table structure for table `licni_podaci`
--

DROP TABLE IF EXISTS `licni_podaci`;
CREATE TABLE IF NOT EXISTS `licni_podaci` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `oslovljavanje_sifra` int(11) DEFAULT NULL,
  `oslovljavanje_id` int(11) DEFAULT NULL,
  `oslovljavanje` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `crkvena_titula_sifra` int(11) DEFAULT NULL,
  `crkvena_titula_id` int(11) DEFAULT NULL,
  `crkvena_titula` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `akademska_titula_sifra` int(11) DEFAULT NULL,
  `akademska_titula_id` int(11) DEFAULT NULL,
  `akademska_titula` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `jmbg` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `ime` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `prezime` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `ime_u_lk` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `prezime_u_lk` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `ime_oca` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `ime_majke` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `datum_rodjenja` date DEFAULT NULL,
  `mesto_rodjenja_id` int(11) DEFAULT NULL,
  `mesto_rodjenja` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `mesto_rodjenja_sifra` int(11) DEFAULT NULL,
  `srednje_obrazovanje_mesto_id` int(11) DEFAULT NULL,
  `srednje_obrazovanje_mesto_sifra` int(11) DEFAULT NULL,
  `srednje_obrazovanje_mesto` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `srednje_obrazovanje_skola_id` int(11) DEFAULT NULL,
  `srednje_obrazovanje_skola_sifra` int(11) DEFAULT NULL,
  `srednje_obrazovanje_skola` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `srednje_obrazovanje_od` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `srednje_obrazovanje_do` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `brprotokola` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `pol` varchar(45) COLLATE utf8_bin DEFAULT NULL,
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
  `slika` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `banka_isplata` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `id_banka_isplata` int(11) DEFAULT NULL,
  `racun_isplate` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `opstina` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `id_opstina` int(11) DEFAULT NULL,
  `sifra` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `bogoslovija_mesto_id` int(11) DEFAULT NULL,
  `bogoslovija_mesto_sifra` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `bogoslovija_mesto` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `bogoslovija_mesto1_id` int(11) DEFAULT NULL,
  `bogoslovija_mesto1_sifra` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `bogoslovija_mesto1` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `bogoslovija_mesto2_id` int(11) DEFAULT NULL,
  `bogoslovija_mesto2_sifra` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `bogoslovija_mesto2` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `bogoslovija_period_od` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `bogoslovija_period_do` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `bogoslovija_period_od1` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `bogoslovija_period_do1` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `bogoslovija_period_od2` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `bogoslovija_period_do2` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `djakonat_mesto_id` int(11) DEFAULT NULL,
  `djakonat_mesto_sifra` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `djakonat_mesto` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `djakonat_datum` date DEFAULT NULL,
  `djakonat_zareditelj_id` int(11) DEFAULT NULL,
  `djakonat_zareditelj_sifra` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `djakonat_zareditelj` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `prezbiterat_mesto_id` int(11) DEFAULT NULL,
  `prezbiterat_mesto_sifra` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `prezbiterat_mesto` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `prezbiterat_datum` date DEFAULT NULL,
  `prezbiterat_zareditelj_id` int(11) DEFAULT NULL,
  `prezbiterat_zareditelj_sifra` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `prezbiterat_zareditelj` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `dodiplomski_studij_mesto_id` int(11) DEFAULT NULL,
  `dodiplomski_studij_mesto_sifra` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `dodiplomski_studij_mesto` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `dodiplomski_studij_naziv_ustanove_id` int(11) DEFAULT NULL,
  `dodiplomski_studij_naziv_ustanove_sifra` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `dodiplomski_studij_naziv_ustanove` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `dodiplomski_studij_period_od` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `dodiplomski_studij_period_do` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `magisterij_mesto_id` int(11) DEFAULT NULL,
  `magisterij_mesto_sifra` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `magisterij_mesto` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `magisterij_naziv_ustanove_id` int(11) DEFAULT NULL,
  `magisterij_naziv_ustanove_sifra` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `magisterij_naziv_ustanove` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `magisterij_period_od` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `magisterij_period_do` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `doktorat_mesto_id` int(11) DEFAULT NULL,
  `doktorat_mesto_sifra` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `doktorat_mesto` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `doktorat_naziv_ustanove_id` int(11) DEFAULT NULL,
  `doktorat_naziv_ustanove_sifra` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `doktorat_naziv_ustanove` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `doktorat_period_od` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `doktorat_period_do` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `jmbg` (`jmbg`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=28 ;

--
-- Dumping data for table `licni_podaci`
--

INSERT INTO `licni_podaci` (`id`, `oslovljavanje_sifra`, `oslovljavanje_id`, `oslovljavanje`, `crkvena_titula_sifra`, `crkvena_titula_id`, `crkvena_titula`, `akademska_titula_sifra`, `akademska_titula_id`, `akademska_titula`, `jmbg`, `ime`, `prezime`, `ime_u_lk`, `prezime_u_lk`, `ime_oca`, `ime_majke`, `datum_rodjenja`, `mesto_rodjenja_id`, `mesto_rodjenja`, `mesto_rodjenja_sifra`, `srednje_obrazovanje_mesto_id`, `srednje_obrazovanje_mesto_sifra`, `srednje_obrazovanje_mesto`, `srednje_obrazovanje_skola_id`, `srednje_obrazovanje_skola_sifra`, `srednje_obrazovanje_skola`, `srednje_obrazovanje_od`, `srednje_obrazovanje_do`, `brprotokola`, `pol`, `drzavarodj`, `id_drzavarodj`, `adresa`, `ptt`, `id_ptt`, `telefon`, `e_mail`, `status`, `id_status`, `drzavljanstvo`, `id_drzavljanstvo`, `nacionalnost`, `id_nacionalnost`, `slika`, `banka_isplata`, `id_banka_isplata`, `racun_isplate`, `opstina`, `id_opstina`, `sifra`, `bogoslovija_mesto_id`, `bogoslovija_mesto_sifra`, `bogoslovija_mesto`, `bogoslovija_mesto1_id`, `bogoslovija_mesto1_sifra`, `bogoslovija_mesto1`, `bogoslovija_mesto2_id`, `bogoslovija_mesto2_sifra`, `bogoslovija_mesto2`, `bogoslovija_period_od`, `bogoslovija_period_do`, `bogoslovija_period_od1`, `bogoslovija_period_do1`, `bogoslovija_period_od2`, `bogoslovija_period_do2`, `djakonat_mesto_id`, `djakonat_mesto_sifra`, `djakonat_mesto`, `djakonat_datum`, `djakonat_zareditelj_id`, `djakonat_zareditelj_sifra`, `djakonat_zareditelj`, `prezbiterat_mesto_id`, `prezbiterat_mesto_sifra`, `prezbiterat_mesto`, `prezbiterat_datum`, `prezbiterat_zareditelj_id`, `prezbiterat_zareditelj_sifra`, `prezbiterat_zareditelj`, `dodiplomski_studij_mesto_id`, `dodiplomski_studij_mesto_sifra`, `dodiplomski_studij_mesto`, `dodiplomski_studij_naziv_ustanove_id`, `dodiplomski_studij_naziv_ustanove_sifra`, `dodiplomski_studij_naziv_ustanove`, `dodiplomski_studij_period_od`, `dodiplomski_studij_period_do`, `magisterij_mesto_id`, `magisterij_mesto_sifra`, `magisterij_mesto`, `magisterij_naziv_ustanove_id`, `magisterij_naziv_ustanove_sifra`, `magisterij_naziv_ustanove`, `magisterij_period_od`, `magisterij_period_do`, `doktorat_mesto_id`, `doktorat_mesto_sifra`, `doktorat_mesto`, `doktorat_naziv_ustanove_id`, `doktorat_naziv_ustanove_sifra`, `doktorat_naziv_ustanove`, `doktorat_period_od`, `doktorat_period_do`) VALUES
(1, 0, 0, '', 0, 0, '', 0, 0, '', '32132', 'őúéáű', 'ćčšđž', '', '', 'oiii', 'ú?áé', '2016-03-14', NULL, '-', 0, 0, 0, '', 0, 0, '', '0000-00-00', '0000-00-00', NULL, NULL, '', '', '', '', 0, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', 0, '', '', '0000-00-00', 0, '', '', 0, '', '', '0000-00-00', 0, '', '', 0, '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', ''),
(2, 0, 0, '', 0, 0, '', 0, 0, '', '321321', 'pera', 'mika', '', '', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '', 0, 0, '', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', 0, '', '', '0000-00-00', 0, '', '', 0, '', '', '0000-00-00', 0, '', '', 0, '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', ''),
(3, 0, 0, '', 0, 0, '', 0, 0, '', '12', 'ime', ' prezime', '', '', 'ime oca', 'ime majke', '2016-03-15', NULL, 'PANCEVO', 0, 0, 0, '', 0, 0, '', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', 0, '', '', '0000-00-00', 0, '', '', 0, '', '', '0000-00-00', 0, '', '', 0, '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', ''),
(4, 0, 0, '', 0, 0, '', 0, 0, '', '2354234', 'Š???élá', ' wqyxvadfjkléá?', '', '', 'ad', 'álé-:_:lkáélká', '2016-03-01', NULL, NULL, 0, 0, 0, '', 0, 0, '', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', 0, '', '', '0000-00-00', 0, '', '', 0, '', '', '0000-00-00', 0, '', '', 0, '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', ''),
(5, 0, 0, '', 0, 0, '', 0, 0, '', '4356345', 'kléákléá', ' kláéklkléákl', '', '', 'kléákléákléá', 'fghdfhgdf', '2016-03-01', NULL, NULL, 0, 0, 0, '', 0, 0, '', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', 0, '', '', '0000-00-00', 0, '', '', 0, '', '', '0000-00-00', 0, '', '', 0, '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', ''),
(6, 0, 0, '', 0, 0, '', 0, 0, '', '235234', '3452345', '23452345', '', '', '2345234', '23452345', '2016-03-09', NULL, 'SUBOTICA', 0, 0, 0, '', 0, 0, '', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', 0, '', '', '0000-00-00', 0, '', '', 0, '', '', '0000-00-00', 0, '', '', 0, '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', ''),
(7, 0, 0, '', 0, 0, '', 0, 0, '', 'adfa55', '', ' ', '', '', '', '', '2016-03-06', NULL, '-', 0, 0, 0, '', 0, 0, '', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', 0, '', '', '0000-00-00', 0, '', '', 0, '', '', '0000-00-00', 0, '', '', 0, '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', ''),
(8, 0, 0, '', 0, 0, '', 0, 0, '', '123', 'Krstic', ' Borivoje', '', '', 'Marko', 'Janja', '2016-03-15', NULL, 'BEOGRAD', 0, 0, 0, '', 0, 0, '', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', 0, '', '', '0000-00-00', 0, '', '', 0, '', '', '0000-00-00', 0, '', '', 0, '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', ''),
(9, 0, 0, '', 0, 0, '', 0, 0, '', '12344', 'Krstic', ' Borivoje', '', '', 'Marko', 'Janja', '2016-03-15', NULL, 'BEOGRAD', 0, 0, 0, '', 0, 0, '', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', 0, '', '', '0000-00-00', 0, '', '', 0, '', '', '0000-00-00', 0, '', '', 0, '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', ''),
(10, 0, 0, '', 0, 0, '', 0, 0, '', 'qqqqqq', 'wwwwwwwwwwwwwww', ' eeeeeeeeeeeeeeee', '', '', 'rrrrrrrrrrr', 'tttttttttttt', '2016-03-15', NULL, 'SUBOTICA', 0, 0, 0, '', 0, 0, '', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', 0, '', '', '0000-00-00', 0, '', '', 0, '', '', '0000-00-00', 0, '', '', 0, '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', ''),
(11, 0, 0, '', 0, 0, '', 0, 0, '', 'qqqqqqq', 'wwwwwwwwwwwwwww', ' eeeeeeeeeeeeeeee', '', '', 'rrrrrrrrrrr', 'tttttttttttt', '2016-03-15', NULL, 'SUBOTICA', 0, 0, 0, '', 0, 0, '', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', 0, '', '', '0000-00-00', 0, '', '', 0, '', '', '0000-00-00', 0, '', '', 0, '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', ''),
(12, 0, 0, '', 0, 0, '', 0, 0, '', 'werrrrrrree', 'wwwwwwwwwww', ' eeeeeeeeee', '', '', 'rrrrrrrrrrr', 'tttttttttttttttt', '2016-03-15', NULL, 'SUBOTICA', 0, 0, 0, '', 0, 0, '', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', 0, '', '', '0000-00-00', 0, '', '', 0, '', '', '0000-00-00', 0, '', '', 0, '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', ''),
(13, 0, 0, '', 0, 0, '', 0, 0, '', 'werrrrrrreeeeee', 'wwwwwwwwwww', ' eeeeeeeeee', '', '', 'rrrrrrrrrrr', 'tttttttttttttttt', '2016-03-15', NULL, 'SUBOTICA', 0, 0, 0, '', 0, 0, '', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', 0, '', '', '0000-00-00', 0, '', '', 0, '', '', '0000-00-00', 0, '', '', 0, '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', ''),
(14, 0, 0, '', 0, 0, '', 0, 0, '', 'nn', '', ' ', '', '', '', '', '2016-03-15', NULL, '-', 0, 0, 0, '', 0, 0, '', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', 0, '', '', '0000-00-00', 0, '', '', 0, '', '', '0000-00-00', 0, '', '', 0, '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', ''),
(15, 0, 0, '', 0, 0, '', 0, 0, '', '123b', 'Mamužić', ' Đorđe', '', '', 'Pere', 'Tőnde-ooo', '1972-11-16', NULL, 'NOVI SAD', 0, 0, 0, '', 0, 0, '', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', 0, '', '', '0000-00-00', 0, '', '', 0, '', '', '0000-00-00', 0, '', '', 0, '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', ''),
(16, 0, 0, '', 0, 0, '', 0, 0, '', '1212', 'asdfas', ' asdfas', '', '', 'asdf', 'sadf', '2016-03-06', NULL, 'SOMBOR', 0, 0, 0, '', 0, 0, '', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1234', '123412', NULL, NULL, 'Madjarska', NULL, 'Madjar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', 0, '', '', '0000-00-00', 0, '', '', 0, '', '', '0000-00-00', 0, '', '', 0, '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', ''),
(17, 0, 0, '', 0, 0, '', 0, 0, '', '132', 'sdf', ' asfd', '', '', 'asfd', 'asdf', '2016-03-01', NULL, 'PANCEVO', 0, 0, 0, '', 0, 0, '', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'asdf', 'afsd', NULL, NULL, 'Madjarska', NULL, 'Hrvat', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', 0, '', '', '0000-00-00', 0, '', '', 0, '', '', '0000-00-00', 0, '', '', 0, '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', ''),
(18, 0, 0, '', 0, 0, '', 0, 0, '', '9998877', 'marko', ' markovic', '', '', 'kkjjuhyg', 'fffff', '1972-02-14', NULL, 'SUBOTICA', 0, 0, 0, '', 0, 0, '', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '888888', 'yyyy', NULL, NULL, 'Srbija', NULL, 'Slovak', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', 0, '', '', '0000-00-00', 0, '', '', 0, '', '', '0000-00-00', 0, '', '', 0, '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', ''),
(19, 0, 0, 'Prečasni', 0, 0, 'Mons.', 0, 0, 'Dr.', 'asdf', 'sadf', 'sdf', '', '', '', '', '2016-04-03', 0, '0  ', 0, 0, 0, '', 0, 0, '', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, '', NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 0, '', '0  ', 0, '', '0  ', 0, '', '0  ', '', '', '', '', '', '', 0, '', '0  ', '2016-04-03', 0, '', '', 0, '', '0  ', '2016-04-03', 0, '', '', 0, '', '0  ', 0, '', '', '', '', 0, '', '0  ', 0, '', '', '', '', 0, '', '0  ', 0, '', '', '', ''),
(20, 0, 0, 'Prečasni', 0, 0, 'Mons.', 0, 0, 'Dr.', 'asdffd', 'ime', 'prezime', 'ime u lk', 'prezime u lk', '', '', '2016-04-04', 0, '', 0, 0, 0, '', 0, 0, '', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, '', NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 0, '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', 0, '', '', '2016-04-04', 0, '', '', 0, '', '', '2016-04-04', 0, '', '', 0, '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', ''),
(21, NULL, NULL, 'Prečasni', NULL, NULL, '', NULL, NULL, '', 'asdfasasd', 'asdf', 'adsf', 'adf', 'asdf', '', '', '2016-04-04', NULL, '', NULL, NULL, NULL, '', NULL, NULL, 'Paulinum', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'telef', '', NULL, NULL, '', NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, '', '2016-04-04', NULL, NULL, '', NULL, NULL, '', '2016-04-04', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', '', '', NULL, NULL, '', NULL, NULL, '', '', '', NULL, NULL, '', NULL, NULL, '', '', ''),
(22, NULL, NULL, 'Prečasni', NULL, NULL, 'Mons.', NULL, NULL, '', '343', 'ads', 'asdf', 'ads', 'as', '', '', '2016-04-05', NULL, '', NULL, NULL, NULL, '', NULL, NULL, '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, '', NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, '', '2016-04-05', NULL, NULL, '', NULL, NULL, '', '2016-04-05', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', '', '', NULL, NULL, '', NULL, NULL, '', '', '', NULL, NULL, '', NULL, NULL, '', '', ''),
(23, NULL, NULL, 'Prečasni', NULL, NULL, '', NULL, NULL, '', 'e', 'asd', 'adsf', '', '', '', '', '2016-04-06', NULL, '', NULL, NULL, NULL, '', NULL, NULL, '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, '', NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, '', '2016-04-06', NULL, NULL, '', NULL, NULL, '', '2016-04-06', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', '', '', NULL, NULL, '', NULL, NULL, '', '', '', NULL, NULL, '', NULL, NULL, '', '', ''),
(24, NULL, NULL, 'Prečasni', NULL, NULL, 'Mons.', NULL, NULL, 'Dr.', '1103976124445', 'Mari', 'Arnogyá', 'Mario', 'Krsmanić', 'Marpqwíő', 'Mariyá', '1972-09-12', NULL, 'SOMBOR', NULL, NULL, NULL, 'PANCEVO', NULL, NULL, 'Paulinum', '1981', '1985', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '021/330655', 'a@a.com', NULL, NULL, 'Srbija', NULL, 'Hrvat', NULL, 'D:skype.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SUBOTICA', NULL, NULL, 'NOVI SAD', NULL, NULL, '', '2001', '2005', '2011', '2015', '', '', NULL, NULL, 'SUBOTICA', '1998-01-01', NULL, NULL, 'Mons. Ćiril Kos', NULL, NULL, 'SOMBOR', '1990-01-01', NULL, NULL, 'Mons. Ćiril Kos', NULL, NULL, 'NOVI SAD', NULL, NULL, 'Paulinum', '2001', '2010', NULL, NULL, 'SUBOTICA', NULL, NULL, 'Paulinum', '2011', '2015', NULL, NULL, 'ZAGREB', NULL, NULL, 'Paulinum', '2014', '2015'),
(25, NULL, NULL, 'Prečasni', NULL, NULL, 'Mons.', NULL, NULL, 'Dr.', '2103977154488', 'ime', 'prezime', 'ime u lk', 'prezime u lk', 'ime oca', 'ime majke', '1981-01-14', NULL, 'SUBOTICA', NULL, NULL, NULL, 'MOSORIN', NULL, NULL, 'Paulinum', '1981', '1990', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '041/7778-8', 'a@a.cdd', NULL, NULL, 'Hrvatsko', NULL, 'Hrvat', NULL, 'D:skype.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SREMSKA MITROVICAA', NULL, NULL, 'PANCEVO', NULL, NULL, '', '1990', '1992', '1992', '1995', '', '', NULL, NULL, 'SOMBOR', '2001-09-19', NULL, NULL, 'Mons. Ćiril Kos', NULL, NULL, 'SREMSKA MITROVICAA', '2003-03-20', NULL, NULL, 'Mons. Ćiril Kos', NULL, NULL, 'SOMBOR', NULL, NULL, 'Paulinum', '2001', '2003', NULL, NULL, 'SUBOTICA', NULL, NULL, 'Paulinum', '2003', '2005', NULL, NULL, '', NULL, NULL, '', '', ''),
(27, NULL, NULL, 'Prečasni', NULL, NULL, 'Mons.', NULL, NULL, 'Dr.', '21039771544', 'ime', 'prezime', 'ime u lk', 'prezime u lk', 'ime oca', 'ime majke', '1981-01-14', NULL, 'SUBOTICA', NULL, NULL, NULL, 'MOSORIN', NULL, NULL, 'Paulinum', '1981', '1990', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '041/7778-8', 'a@a.cdd', NULL, NULL, 'Hrvatsko', NULL, 'Hrvat', NULL, 'D:skype.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SREMSKA MITROVICAA', NULL, NULL, 'PANCEVO', NULL, NULL, '', '1990', '1992', '1992', '1995', '', '', NULL, NULL, 'SOMBOR', '2001-09-19', NULL, NULL, 'Mons. Ćiril Kos', NULL, NULL, 'SREMSKA MITROVICAA', '2003-03-20', NULL, NULL, 'Mons. Ćiril Kos', NULL, NULL, 'SOMBOR', NULL, NULL, 'Paulinum', '2001', '2003', NULL, NULL, 'SUBOTICA', NULL, NULL, 'Paulinum', '2003', '2005', NULL, NULL, '', NULL, NULL, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `nacionalnost`
--

DROP TABLE IF EXISTS `nacionalnost`;
CREATE TABLE IF NOT EXISTS `nacionalnost` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sifra` int(11) NOT NULL,
  `naziv` varchar(50) COLLATE utf8_bin NOT NULL,
  `datum_vreme` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `aktivan` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=5 ;

--
-- Dumping data for table `nacionalnost`
--

INSERT INTO `nacionalnost` (`id`, `sifra`, `naziv`, `datum_vreme`, `aktivan`) VALUES
(1, 1, 'Madjar', '2016-03-24 17:55:15', 1),
(2, 2, 'Hrvat', '2016-03-24 17:55:15', 1),
(3, 3, 'Slovak', '2016-03-24 17:55:15', 1),
(4, 0, '', '2016-03-24 17:55:15', 1);

-- --------------------------------------------------------

--
-- Table structure for table `opstina`
--

DROP TABLE IF EXISTS `opstina`;
CREATE TABLE IF NOT EXISTS `opstina` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sifra` varchar(45) COLLATE utf8_bin NOT NULL,
  `naziv` varchar(100) COLLATE utf8_bin NOT NULL,
  `datum_vreme` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `aktivan` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `sifra` (`sifra`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=4 ;

--
-- Dumping data for table `opstina`
--

INSERT INTO `opstina` (`id`, `sifra`, `naziv`, `datum_vreme`, `aktivan`) VALUES
(1, '0', '', '2016-03-27 05:04:59', 1),
(2, '236', 'Subotica', '2016-03-27 05:05:11', 1),
(3, '201', 'ADA', '2016-03-27 05:43:48', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oslovljavanje`
--

DROP TABLE IF EXISTS `oslovljavanje`;
CREATE TABLE IF NOT EXISTS `oslovljavanje` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sifra` varchar(45) COLLATE utf8_bin NOT NULL,
  `naziv` varchar(100) COLLATE utf8_bin NOT NULL,
  `datum_vreme` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `aktivan` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `sifra` (`sifra`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=3 ;

--
-- Dumping data for table `oslovljavanje`
--

INSERT INTO `oslovljavanje` (`id`, `sifra`, `naziv`, `datum_vreme`, `aktivan`) VALUES
(1, '0', '', '2016-03-27 04:52:42', 1),
(2, '1', 'Prečasni', '2016-03-27 04:59:42', 1);

-- --------------------------------------------------------

--
-- Table structure for table `podaci_o_pastoralnoj_sluzbi`
--

DROP TABLE IF EXISTS `podaci_o_pastoralnoj_sluzbi`;
CREATE TABLE IF NOT EXISTS `podaci_o_pastoralnoj_sluzbi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `jmbg` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `rbr` int(11) DEFAULT NULL,
  `mesto_sluzbe` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `mesto_sluzbe_id` int(11) DEFAULT NULL,
  `mesto_sluzbe_sifra` int(11) DEFAULT NULL,
  `naziv_ustanove` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `naziv_ustanove_id` int(11) DEFAULT NULL,
  `naziv_ustanove_sifra` int(11) DEFAULT NULL,
  `naziv_zupe` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `naziv_zupe_id` int(11) DEFAULT NULL,
  `naziv_zupe_sifra` int(11) DEFAULT NULL,
  `svojstvo` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `svojstvo_id` int(11) DEFAULT NULL,
  `svojstvo_sifra` int(11) DEFAULT NULL,
  `dekret` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `pocetak_sluzbe_od` date NOT NULL DEFAULT '1900-01-01',
  `trajanje_sluzbe_do` date NOT NULL DEFAULT '1900-01-01',
  `aktivan` tinyint(1) NOT NULL DEFAULT '1',
  `datum_vreme` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `korisnik` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=10 ;

--
-- Dumping data for table `podaci_o_pastoralnoj_sluzbi`
--

INSERT INTO `podaci_o_pastoralnoj_sluzbi` (`id`, `user_id`, `jmbg`, `rbr`, `mesto_sluzbe`, `mesto_sluzbe_id`, `mesto_sluzbe_sifra`, `naziv_ustanove`, `naziv_ustanove_id`, `naziv_ustanove_sifra`, `naziv_zupe`, `naziv_zupe_id`, `naziv_zupe_sifra`, `svojstvo`, `svojstvo_id`, `svojstvo_sifra`, `dekret`, `pocetak_sluzbe_od`, `trajanje_sluzbe_do`, `aktivan`, `datum_vreme`, `korisnik`) VALUES
(1, 12, '', 0, 'SREMSKA MITROVICA', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, ' 22222222222222', '0000-00-00', '0000-00-00', 0, '2016-03-09 19:52:16', ''),
(2, 22, '343', NULL, 'MOSORIN', NULL, NULL, 'Paulinum', NULL, NULL, 'Sveti Rok', NULL, NULL, 'Upravitelj župe', NULL, NULL, 'asdf', '2016-03-01', '2016-04-05', 1, '2016-04-05 05:01:59', NULL),
(3, 23, 'e', NULL, 'NOVI SAD', NULL, NULL, 'Paulinum', NULL, NULL, 'Sveti Rok', NULL, NULL, 'Župni vikar', NULL, NULL, 'qreqwr', '2016-03-01', '2016-04-06', 1, '2016-04-06 19:09:28', NULL),
(4, 23, '', NULL, 'MOSORIN', NULL, NULL, 'Paulinum', NULL, NULL, 'Sveti Rok', NULL, NULL, 'Upravitelj župe', NULL, NULL, 'asdfsad', '2016-03-01', '2016-04-06', 1, '2016-04-06 19:10:37', NULL),
(5, 23, '', NULL, 'NOVI SAD', NULL, NULL, 'Paulinum', NULL, NULL, 'Sveti Rok', NULL, NULL, 'Župni vikar', NULL, NULL, 'qreqwr', '2016-03-01', '2016-04-06', 1, '2016-04-06 19:11:00', NULL),
(6, 24, '1103976124445', NULL, 'MOSORIN', NULL, NULL, 'Paulinum', NULL, NULL, 'Sveti Rok', NULL, NULL, 'Upravitelj župe', NULL, NULL, 'dekret 1', '1990-02-14', '2016-04-06', 1, '2016-04-06 20:21:47', NULL),
(7, 24, '1103976124445', NULL, 'SOMBOR', NULL, NULL, 'Paulinum', NULL, NULL, 'Svetog Karla Boromejskog', NULL, NULL, 'Upravitelj župe', NULL, NULL, 'dekret 2', '2016-04-03', '2016-04-28', 1, '2016-04-06 20:24:38', NULL),
(8, 27, '21039771544', 1, 'SOMBOR', NULL, NULL, 'Paulinum', NULL, NULL, 'Sveti Rok', NULL, NULL, 'Upravitelj župe', NULL, NULL, 'dekret 1', '1990-02-14', '2016-04-06', 1, '2016-04-06 21:10:44', NULL),
(9, 27, '21039771544', 2, 'NOVI SAD', NULL, NULL, 'Paulinum', NULL, NULL, 'Svetog Karla Boromejskog', NULL, NULL, 'Župni vikar', NULL, NULL, 'dekret 2', '1977-01-17', '1981-02-16', 1, '2016-04-06 21:11:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `podaci_o_prijavi_i_osiguranju`
--

DROP TABLE IF EXISTS `podaci_o_prijavi_i_osiguranju`;
CREATE TABLE IF NOT EXISTS `podaci_o_prijavi_i_osiguranju` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `jmbg` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `rbr` int(11) DEFAULT NULL,
  `mesto` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `mesto_id` int(11) DEFAULT NULL,
  `ustanova` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `ustanova_id` int(11) DEFAULT NULL,
  `svojstvo_osiguranika` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `svojstvo_osiguranika_id` int(11) DEFAULT NULL,
  `pocetak_od` date NOT NULL DEFAULT '1900-01-01',
  `trajanje_do` date NOT NULL DEFAULT '1900-01-01',
  `datum_vreme` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `aktivan` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=3 ;

--
-- Dumping data for table `podaci_o_prijavi_i_osiguranju`
--

INSERT INTO `podaci_o_prijavi_i_osiguranju` (`id`, `user_id`, `jmbg`, `rbr`, `mesto`, `mesto_id`, `ustanova`, `ustanova_id`, `svojstvo_osiguranika`, `svojstvo_osiguranika_id`, `pocetak_od`, `trajanje_do`, `datum_vreme`, `aktivan`) VALUES
(1, 27, '21039771544', 1, 'MOSORIN', NULL, NULL, NULL, 'Samostalni djelatnik', NULL, '2016-03-01', '2016-03-29', '2016-04-06 21:11:36', 1),
(2, 27, '21039771544', 2, 'PANCEVO', NULL, NULL, NULL, 'Poljoprivrednik', NULL, '2001-01-01', '2003-02-16', '2016-04-06 21:11:54', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ptt_brojevi`
--

DROP TABLE IF EXISTS `ptt_brojevi`;
CREATE TABLE IF NOT EXISTS `ptt_brojevi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sifra` varchar(45) COLLATE utf8_bin NOT NULL,
  `naziv` varchar(100) COLLATE utf8_bin NOT NULL,
  `drzava_id` int(11) NOT NULL,
  `drzava_sifra` int(11) NOT NULL,
  `drzava` varchar(50) COLLATE utf8_bin NOT NULL,
  `datum_vreme` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `aktivan` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `sifra` (`sifra`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=14 ;

--
-- Dumping data for table `ptt_brojevi`
--

INSERT INTO `ptt_brojevi` (`id`, `sifra`, `naziv`, `drzava_id`, `drzava_sifra`, `drzava`, `datum_vreme`, `aktivan`) VALUES
(1, '24000', 'SUBOTICA', 0, 0, 'Srbija', '2016-03-05 18:14:58', 1),
(3, '25000', 'SOMBOR', 0, 0, 'Srbija', '2016-03-05 18:15:21', 1),
(5, '0', '', 0, 0, '', '2016-03-05 19:09:52', 1),
(6, '1000', 'ZAGREB', 0, 0, 'Hrvatska', '2016-03-07 20:13:19', 1),
(7, '23000', 'ZRENJANIN', 0, 0, '', '2016-03-07 20:17:08', 1),
(8, '21000', 'NOVI SAD', 0, 0, '', '2016-03-07 20:19:20', 1),
(10, '13000', 'PANCEVO', 0, 0, '', '2016-03-07 20:25:29', 1),
(11, '18000', 'VRANJE-posa', 0, 0, '', '2016-03-07 20:30:07', 1),
(12, '22200', 'MOSORIN', 0, 0, '', '2016-03-07 20:50:00', 0),
(13, '22000', 'SREMSKA MITROVICAA', 0, 0, '', '2016-03-26 11:16:18', 1);

-- --------------------------------------------------------

--
-- Table structure for table `strucna_sprema`
--

DROP TABLE IF EXISTS `strucna_sprema`;
CREATE TABLE IF NOT EXISTS `strucna_sprema` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sifra` varchar(45) COLLATE utf8_bin NOT NULL,
  `naziv` varchar(100) COLLATE utf8_bin NOT NULL,
  `datum_vreme` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `aktivan` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=4 ;

--
-- Dumping data for table `strucna_sprema`
--

INSERT INTO `strucna_sprema` (`id`, `sifra`, `naziv`, `datum_vreme`, `aktivan`) VALUES
(1, '1', 'NK', '2016-03-24 17:53:29', 1),
(2, '2', 'SSS', '2016-03-24 17:53:29', 1),
(3, '3', 'VSS', '2016-03-24 17:53:29', 1);

-- --------------------------------------------------------

--
-- Table structure for table `svojstvo_osiguranika`
--

DROP TABLE IF EXISTS `svojstvo_osiguranika`;
CREATE TABLE IF NOT EXISTS `svojstvo_osiguranika` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sifra` varchar(45) COLLATE utf8_bin NOT NULL,
  `naziv` varchar(100) COLLATE utf8_bin NOT NULL,
  `datum_vreme` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `aktivan` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=5 ;

--
-- Dumping data for table `svojstvo_osiguranika`
--

INSERT INTO `svojstvo_osiguranika` (`id`, `sifra`, `naziv`, `datum_vreme`, `aktivan`) VALUES
(1, '1', 'Poljoprivrednik', '2016-03-11 03:10:11', 1),
(2, '2', 'Samostalni djelatnik', '2016-03-11 03:10:30', 1),
(3, '3', 'Svećenik', '2016-03-11 03:10:50', 1),
(4, '0', '', '2016-03-11 03:34:36', 1);

-- --------------------------------------------------------

--
-- Table structure for table `svojstvo_u_sluzbi`
--

DROP TABLE IF EXISTS `svojstvo_u_sluzbi`;
CREATE TABLE IF NOT EXISTS `svojstvo_u_sluzbi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sifra` varchar(25) COLLATE utf8_bin NOT NULL,
  `naziv` varchar(50) COLLATE utf8_bin NOT NULL,
  `datum_vreme` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `aktivan` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `sifra` (`sifra`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=5 ;

--
-- Dumping data for table `svojstvo_u_sluzbi`
--

INSERT INTO `svojstvo_u_sluzbi` (`id`, `sifra`, `naziv`, `datum_vreme`, `aktivan`) VALUES
(1, '0', '', '2016-04-02 20:32:09', 1),
(2, '1', 'Župni vikar', '2016-04-02 20:32:35', 1),
(3, '2', 'Upravitelj župe', '2016-04-02 20:32:49', 1),
(4, '3', 'Župnik', '2016-04-02 20:33:03', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ustanove`
--

DROP TABLE IF EXISTS `ustanove`;
CREATE TABLE IF NOT EXISTS `ustanove` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sifra` varchar(45) COLLATE utf8_bin NOT NULL,
  `naziv` varchar(100) COLLATE utf8_bin NOT NULL,
  `datum_vreme` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `aktivan` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `sifra` (`sifra`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=3 ;

--
-- Dumping data for table `ustanove`
--

INSERT INTO `ustanove` (`id`, `sifra`, `naziv`, `datum_vreme`, `aktivan`) VALUES
(1, '0', '', '2016-03-27 12:18:44', 1),
(2, '1', 'Paulinum', '2016-03-27 12:19:17', 1);

-- --------------------------------------------------------

--
-- Table structure for table `zaredatelj`
--

DROP TABLE IF EXISTS `zaredatelj`;
CREATE TABLE IF NOT EXISTS `zaredatelj` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sifra` varchar(45) COLLATE utf8_bin NOT NULL,
  `naziv` varchar(100) COLLATE utf8_bin NOT NULL,
  `datum_vreme` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `aktivan` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `sifra` (`sifra`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=3 ;

--
-- Dumping data for table `zaredatelj`
--

INSERT INTO `zaredatelj` (`id`, `sifra`, `naziv`, `datum_vreme`, `aktivan`) VALUES
(1, '0', '', '2016-04-02 15:11:12', 1),
(2, '1', 'Mons. Ćiril Kos', '2016-04-02 15:11:58', 1);

-- --------------------------------------------------------

--
-- Table structure for table `zupa`
--

DROP TABLE IF EXISTS `zupa`;
CREATE TABLE IF NOT EXISTS `zupa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sifra` varchar(45) COLLATE utf8_bin NOT NULL,
  `naziv` varchar(100) COLLATE utf8_bin NOT NULL,
  `datum_vreme` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `aktivan` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `sifra` (`sifra`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=4 ;

--
-- Dumping data for table `zupa`
--

INSERT INTO `zupa` (`id`, `sifra`, `naziv`, `datum_vreme`, `aktivan`) VALUES
(1, '0', '', '2016-04-02 20:17:48', 1),
(2, '1', 'Sveti Rok', '2016-04-02 20:45:28', 1),
(3, '2', 'Svetog Karla Boromejskog', '2016-04-02 20:46:25', 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
