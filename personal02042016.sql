-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 02, 2016 at 09:18 PM
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
  `oslovljavanje_sifra` int(11) NOT NULL,
  `oslovljavanje_id` int(11) NOT NULL,
  `oslovljavanje` varchar(50) COLLATE utf8_bin NOT NULL,
  `crkvena_titula_sifra` int(11) NOT NULL,
  `crkvena_titula_id` int(11) NOT NULL,
  `crkvena_titula` varchar(50) COLLATE utf8_bin NOT NULL,
  `akademska_titula_sifra` int(11) NOT NULL,
  `akademska_titula_id` int(11) NOT NULL,
  `akademska_titula` varchar(50) COLLATE utf8_bin NOT NULL,
  `jmbg` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `ime` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `prezime` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `ime_u_lk` varchar(50) COLLATE utf8_bin NOT NULL,
  `prezime_u_lk` varchar(50) COLLATE utf8_bin NOT NULL,
  `ime_oca` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `ime_majke` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `datum_rodjenja` date DEFAULT NULL,
  `mesto_rodjenja_id` int(11) DEFAULT NULL,
  `mesto_rodjenja` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `mesto_rodjenja_sifra` int(11) NOT NULL,
  `srednje_obrazovanje_mesto_id` int(11) NOT NULL,
  `srednje_obrazovanje_mesto_sifra` int(11) NOT NULL,
  `srednje_obrazovanje_mesto` varchar(50) COLLATE utf8_bin NOT NULL,
  `srednje_obrazovanje_skola_id` int(11) NOT NULL,
  `srednje_obrazovanje_skola_sifra` int(11) NOT NULL,
  `srednje_obrazovanje_skola` varchar(50) COLLATE utf8_bin NOT NULL,
  `srednje_obrazovanje_od` date NOT NULL,
  `srednje_obrazovanje_do` date NOT NULL,
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
  `slika` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `banka_isplata` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `id_banka_isplata` int(11) DEFAULT NULL,
  `racun_isplate` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `opstina` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `id_opstina` int(11) DEFAULT NULL,
  `sifra` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=19 ;

--
-- Dumping data for table `licni_podaci`
--

INSERT INTO `licni_podaci` (`id`, `oslovljavanje_sifra`, `oslovljavanje_id`, `oslovljavanje`, `crkvena_titula_sifra`, `crkvena_titula_id`, `crkvena_titula`, `akademska_titula_sifra`, `akademska_titula_id`, `akademska_titula`, `jmbg`, `ime`, `prezime`, `ime_u_lk`, `prezime_u_lk`, `ime_oca`, `ime_majke`, `datum_rodjenja`, `mesto_rodjenja_id`, `mesto_rodjenja`, `mesto_rodjenja_sifra`, `srednje_obrazovanje_mesto_id`, `srednje_obrazovanje_mesto_sifra`, `srednje_obrazovanje_mesto`, `srednje_obrazovanje_skola_id`, `srednje_obrazovanje_skola_sifra`, `srednje_obrazovanje_skola`, `srednje_obrazovanje_od`, `srednje_obrazovanje_do`, `brprotokola`, `pol`, `drzavarodj`, `id_drzavarodj`, `adresa`, `ptt`, `id_ptt`, `telefon`, `e_mail`, `status`, `id_status`, `drzavljanstvo`, `id_drzavljanstvo`, `nacionalnost`, `id_nacionalnost`, `slika`, `banka_isplata`, `id_banka_isplata`, `racun_isplate`, `opstina`, `id_opstina`, `sifra`) VALUES
(1, 0, 0, '', 0, 0, '', 0, 0, '', '32132', 'őúéáű', 'ćčšđž', '', '', 'oiii', 'ú?áé', '2016-03-14', NULL, '-', 0, 0, 0, '', 0, 0, '', '0000-00-00', '0000-00-00', NULL, NULL, '', '', '', '', 0, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 0, 0, '', 0, 0, '', 0, 0, '', '321321', 'pera', 'mika', '', '', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '', 0, 0, '', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 0, 0, '', 0, 0, '', 0, 0, '', '12', 'ime', ' prezime', '', '', 'ime oca', 'ime majke', '2016-03-15', NULL, 'PANCEVO', 0, 0, 0, '', 0, 0, '', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 0, 0, '', 0, 0, '', 0, 0, '', '2354234', 'Š???élá', ' wqyxvadfjkléá?', '', '', 'ad', 'álé-:_:lkáélká', '2016-03-01', NULL, NULL, 0, 0, 0, '', 0, 0, '', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 0, 0, '', 0, 0, '', 0, 0, '', '4356345', 'kléákléá', ' kláéklkléákl', '', '', 'kléákléákléá', 'fghdfhgdf', '2016-03-01', NULL, NULL, 0, 0, 0, '', 0, 0, '', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 0, 0, '', 0, 0, '', 0, 0, '', '235234', '3452345', '23452345', '', '', '2345234', '23452345', '2016-03-09', NULL, 'SUBOTICA', 0, 0, 0, '', 0, 0, '', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 0, 0, '', 0, 0, '', 0, 0, '', '', '', ' ', '', '', '', '', '2016-03-06', NULL, '-', 0, 0, 0, '', 0, 0, '', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 0, 0, '', 0, 0, '', 0, 0, '', '123', 'Krstic', ' Borivoje', '', '', 'Marko', 'Janja', '2016-03-15', NULL, 'BEOGRAD', 0, 0, 0, '', 0, 0, '', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 0, 0, '', 0, 0, '', 0, 0, '', '123', 'Krstic', ' Borivoje', '', '', 'Marko', 'Janja', '2016-03-15', NULL, 'BEOGRAD', 0, 0, 0, '', 0, 0, '', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 0, 0, '', 0, 0, '', 0, 0, '', 'qqqqqqq', 'wwwwwwwwwwwwwww', ' eeeeeeeeeeeeeeee', '', '', 'rrrrrrrrrrr', 'tttttttttttt', '2016-03-15', NULL, 'SUBOTICA', 0, 0, 0, '', 0, 0, '', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 0, 0, '', 0, 0, '', 0, 0, '', 'qqqqqqq', 'wwwwwwwwwwwwwww', ' eeeeeeeeeeeeeeee', '', '', 'rrrrrrrrrrr', 'tttttttttttt', '2016-03-15', NULL, 'SUBOTICA', 0, 0, 0, '', 0, 0, '', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 0, 0, '', 0, 0, '', 0, 0, '', 'werrrrrrreeeeee', 'wwwwwwwwwww', ' eeeeeeeeee', '', '', 'rrrrrrrrrrr', 'tttttttttttttttt', '2016-03-15', NULL, 'SUBOTICA', 0, 0, 0, '', 0, 0, '', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 0, 0, '', 0, 0, '', 0, 0, '', 'werrrrrrreeeeee', 'wwwwwwwwwww', ' eeeeeeeeee', '', '', 'rrrrrrrrrrr', 'tttttttttttttttt', '2016-03-15', NULL, 'SUBOTICA', 0, 0, 0, '', 0, 0, '', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 0, 0, '', 0, 0, '', 0, 0, '', '', '', ' ', '', '', '', '', '2016-03-15', NULL, '-', 0, 0, 0, '', 0, 0, '', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 0, 0, '', 0, 0, '', 0, 0, '', '123', 'Mamužić', ' Đorđe', '', '', 'Pere', 'Tőnde-ooo', '1972-11-16', NULL, 'NOVI SAD', 0, 0, 0, '', 0, 0, '', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 0, 0, '', 0, 0, '', 0, 0, '', '1212', 'asdfas', ' asdfas', '', '', 'asdf', 'sadf', '2016-03-06', NULL, 'SOMBOR', 0, 0, 0, '', 0, 0, '', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1234', '123412', NULL, NULL, 'Madjarska', NULL, 'Madjar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 0, 0, '', 0, 0, '', 0, 0, '', '132', 'sdf', ' asfd', '', '', 'asfd', 'asdf', '2016-03-01', NULL, 'PANCEVO', 0, 0, 0, '', 0, 0, '', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'asdf', 'afsd', NULL, NULL, 'Madjarska', NULL, 'Hrvat', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 0, 0, '', 0, 0, '', 0, 0, '', '9998877', 'marko', ' markovic', '', '', 'kkjjuhyg', 'fffff', '1972-02-14', NULL, 'SUBOTICA', 0, 0, 0, '', 0, 0, '', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '888888', 'yyyy', NULL, NULL, 'Srbija', NULL, 'Slovak', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

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
  `user_id` int(11) NOT NULL,
  `jmbg` varchar(45) COLLATE utf8_bin NOT NULL,
  `rbr` int(11) NOT NULL,
  `mesto_sluzbe` varchar(100) COLLATE utf8_bin NOT NULL,
  `mesto_sluzbe_id` int(11) NOT NULL,
  `mesto_sluzbe_sifra` int(11) NOT NULL,
  `naziv_ustanove` varchar(100) COLLATE utf8_bin NOT NULL,
  `naziv_ustanove_id` int(11) NOT NULL,
  `naziv_ustanove_sifra` int(11) NOT NULL,
  `naziv_zupe` varchar(100) COLLATE utf8_bin NOT NULL,
  `naziv_zupe_id` int(11) NOT NULL,
  `naziv_zupe_sifra` int(11) NOT NULL,
  `svojstvo` varchar(100) COLLATE utf8_bin NOT NULL,
  `svojstvo_id` int(11) NOT NULL,
  `svojstvo_sifra` int(11) NOT NULL,
  `dekret` varchar(100) COLLATE utf8_bin NOT NULL,
  `pocetak_sluzbe_od` date NOT NULL,
  `trajanje_sluzbe_do` date NOT NULL,
  `aktivan` tinyint(1) NOT NULL DEFAULT '1',
  `datum_vreme` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `korisnik` varchar(100) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=2 ;

--
-- Dumping data for table `podaci_o_pastoralnoj_sluzbi`
--

INSERT INTO `podaci_o_pastoralnoj_sluzbi` (`id`, `user_id`, `jmbg`, `rbr`, `mesto_sluzbe`, `mesto_sluzbe_id`, `mesto_sluzbe_sifra`, `naziv_ustanove`, `naziv_ustanove_id`, `naziv_ustanove_sifra`, `naziv_zupe`, `naziv_zupe_id`, `naziv_zupe_sifra`, `svojstvo`, `svojstvo_id`, `svojstvo_sifra`, `dekret`, `pocetak_sluzbe_od`, `trajanje_sluzbe_do`, `aktivan`, `datum_vreme`, `korisnik`) VALUES
(1, 12, '', 0, 'SREMSKA MITROVICA', 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, ' 22222222222222', '0000-00-00', '0000-00-00', 0, '2016-03-09 19:52:16', '');

-- --------------------------------------------------------

--
-- Table structure for table `podaci_o_prijavi_i_osiguranju`
--

DROP TABLE IF EXISTS `podaci_o_prijavi_i_osiguranju`;
CREATE TABLE IF NOT EXISTS `podaci_o_prijavi_i_osiguranju` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `jmbg` varchar(45) COLLATE utf8_bin NOT NULL,
  `rbr` int(11) NOT NULL,
  `mesto` varchar(100) COLLATE utf8_bin NOT NULL,
  `mesto_id` int(11) NOT NULL,
  `ustanova` varchar(100) COLLATE utf8_bin NOT NULL,
  `ustanova_id` int(11) NOT NULL,
  `svojstvo_osiguranika` varchar(100) COLLATE utf8_bin NOT NULL,
  `svojstvo_osiguranika_id` int(11) NOT NULL,
  `pocetak_od` date NOT NULL,
  `trajanje_do` date NOT NULL,
  `datum_vreme` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `aktivan` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

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
