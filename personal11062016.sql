-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 11, 2016 at 10:01 AM
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=5 ;

--
-- Dumping data for table `akademska_titula`
--

INSERT INTO `akademska_titula` (`id`, `sifra`, `naziv`, `datum_vreme`, `aktivan`) VALUES
(1, '0', '', '2016-03-27 04:52:42', 1),
(2, '1', 'Dipl. teol.', '2016-03-27 05:00:24', 1),
(3, '2', 'Mr. sc.', '2016-05-24 16:41:30', 1),
(4, '3', 'Dr. sc.', '2016-05-24 16:41:42', 1);

-- --------------------------------------------------------

--
-- Table structure for table `arhiprezbiterat`
--

DROP TABLE IF EXISTS `arhiprezbiterat`;
CREATE TABLE IF NOT EXISTS `arhiprezbiterat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sifra` varchar(45) COLLATE utf8_bin NOT NULL,
  `naziv` varchar(100) COLLATE utf8_bin NOT NULL,
  `datum_vreme` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `aktivan` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `sifra` (`sifra`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=6 ;

--
-- Dumping data for table `arhiprezbiterat`
--

INSERT INTO `arhiprezbiterat` (`id`, `sifra`, `naziv`, `datum_vreme`, `aktivan`) VALUES
(1, '1', 'Katedralni', '2016-05-25 17:09:44', 1),
(2, '2', 'Potiski', '2016-05-25 17:09:55', 1),
(3, '3', 'Podunavski', '2016-05-25 17:10:05', 1),
(4, '4', 'Bečki', '2016-05-25 17:10:18', 1),
(5, '0', '', '2016-05-28 15:03:57', 1);

-- --------------------------------------------------------

--
-- Table structure for table `banke`
--

DROP TABLE IF EXISTS `banke`;
CREATE TABLE IF NOT EXISTS `banke` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sifra` varchar(45) COLLATE utf8_bin NOT NULL,
  `naziv` varchar(100) COLLATE utf8_bin NOT NULL,
  `napomena` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `datum_vreme` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `napomena1` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `napomena2` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `aktivan` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `sifra` (`sifra`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=4 ;

--
-- Dumping data for table `banke`
--

INSERT INTO `banke` (`id`, `sifra`, `naziv`, `napomena`, `datum_vreme`, `napomena1`, `napomena2`, `aktivan`) VALUES
(1, '1', 'Sociate Generale', '275-000123456-97', '2016-05-28 03:25:07', NULL, NULL, 1),
(2, '2', 'Banca Intesa', '854-41124211-56', '2016-05-28 03:25:28', NULL, NULL, 1),
(3, '0', '', '', '2016-05-28 03:53:51', NULL, NULL, 1);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=7 ;

--
-- Dumping data for table `crkvena_titula`
--

INSERT INTO `crkvena_titula` (`id`, `sifra`, `naziv`, `datum_vreme`, `aktivan`) VALUES
(1, '0', '', '2016-03-27 04:52:42', 1),
(2, '1', 'Mons.', '2016-03-27 05:00:11', 1),
(3, '2', 'Címzetes apát', '2016-05-24 16:39:53', 1),
(4, '3', 'Címzetes prépost', '2016-05-24 16:40:09', 1),
(5, '4', 'Titularni opat', '2016-05-24 16:40:23', 1),
(6, '5', 'Titularni prepozit', '2016-05-24 16:40:37', 1);

-- --------------------------------------------------------

--
-- Table structure for table `dekanat`
--

DROP TABLE IF EXISTS `dekanat`;
CREATE TABLE IF NOT EXISTS `dekanat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sifra` varchar(45) COLLATE utf8_bin NOT NULL,
  `naziv` varchar(100) COLLATE utf8_bin NOT NULL,
  `datum_vreme` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `aktivan` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `sifra` (`sifra`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=14 ;

--
-- Dumping data for table `dekanat`
--

INSERT INTO `dekanat` (`id`, `sifra`, `naziv`, `datum_vreme`, `aktivan`) VALUES
(1, '1', 'Subotica - Stari Grad', '2016-05-25 17:10:54', 1),
(2, '2', 'Subotica - Novi Grad', '2016-05-25 17:11:04', 1),
(3, '3', 'Subotica - Donji Grad', '2016-05-25 17:11:16', 1),
(4, '4', 'Kanjiški', '2016-05-25 17:11:36', 1),
(5, '5', 'Senćanski', '2016-05-25 17:11:46', 1),
(6, '6', 'Bečejski', '2016-05-25 17:11:55', 1),
(7, '7', 'Bačkotopolski', '2016-05-25 17:12:06', 1),
(8, '8', 'Somborski', '2016-05-25 17:12:17', 1),
(9, '9', 'Apatinski', '2016-05-25 17:12:27', 1),
(10, '10', 'Kulski', '2016-05-25 17:12:38', 1),
(11, '11', 'Bački', '2016-05-25 17:12:49', 1),
(12, '12', 'Novosadski', '2016-05-25 17:12:59', 1),
(13, '0', '', '2016-05-28 15:04:09', 1);

-- --------------------------------------------------------

--
-- Table structure for table `dodatne_sluzbe`
--

DROP TABLE IF EXISTS `dodatne_sluzbe`;
CREATE TABLE IF NOT EXISTS `dodatne_sluzbe` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sifra` varchar(25) COLLATE utf8_bin NOT NULL,
  `naziv` varchar(50) COLLATE utf8_bin NOT NULL,
  `datum_vreme` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `aktivan` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `sifra` (`sifra`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=12 ;

--
-- Dumping data for table `dodatne_sluzbe`
--

INSERT INTO `dodatne_sluzbe` (`id`, `sifra`, `naziv`, `datum_vreme`, `aktivan`) VALUES
(1, '0', '', '2016-05-24 19:30:08', 1),
(2, '1', 'Dekan', '2016-05-24 19:30:37', 1),
(3, '2', 'Arhiprezbiter', '2016-05-24 19:30:53', 1),
(4, '3', 'Član vijeća', '2016-05-24 19:31:05', 1),
(5, '4', 'Rektor', '2016-05-24 19:31:18', 1),
(6, '5', 'Duhovnik', '2016-05-24 19:31:30', 1),
(7, '6', 'Knjižničar', '2016-05-24 19:31:41', 1),
(8, '7', 'Tajnik', '2016-05-24 19:31:54', 1),
(9, '8', 'Kancelar', '2016-05-24 19:32:08', 1),
(10, '9', 'Ekonom', '2016-05-24 19:32:17', 1),
(11, '10', 'Vikar', '2016-05-24 19:32:22', 1);

-- --------------------------------------------------------

--
-- Table structure for table `druge_ustanove`
--

DROP TABLE IF EXISTS `druge_ustanove`;
CREATE TABLE IF NOT EXISTS `druge_ustanove` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sifra` varchar(45) COLLATE utf8_bin NOT NULL,
  `naziv` varchar(100) COLLATE utf8_bin NOT NULL,
  `datum_vreme` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `aktivan` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `sifra` (`sifra`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=8 ;

--
-- Dumping data for table `drzave`
--

INSERT INTO `drzave` (`id`, `sifra`, `naziv`, `datum_vreme`, `aktivan`) VALUES
(1, '0', '', '2016-03-27 13:14:45', 1),
(2, '1', 'Srbija', '2016-03-27 13:14:59', 1),
(3, '2', 'Hrvatska', '2016-03-27 13:15:58', 1),
(5, '3', 'Madjarska', '2016-03-27 13:16:25', 1),
(6, '4', 'BIH', '2016-05-24 17:17:59', 1),
(7, '5', 'Italija', '2016-05-24 17:18:52', 1);

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
-- Table structure for table `jezicnost`
--

DROP TABLE IF EXISTS `jezicnost`;
CREATE TABLE IF NOT EXISTS `jezicnost` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sifra` varchar(45) COLLATE utf8_bin NOT NULL,
  `naziv` varchar(100) COLLATE utf8_bin NOT NULL,
  `datum_vreme` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `aktivan` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `sifra` (`sifra`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=5 ;

--
-- Dumping data for table `jezicnost`
--

INSERT INTO `jezicnost` (`id`, `sifra`, `naziv`, `datum_vreme`, `aktivan`) VALUES
(1, '1', 'Mađarska', '2016-05-28 15:33:03', 1),
(2, '2', 'Hrvatska', '2016-05-28 15:33:57', 1),
(3, '3', 'Dvojezična', '2016-05-28 15:33:57', 1),
(4, '0', '', '2016-05-28 15:34:31', 1);

-- --------------------------------------------------------

--
-- Table structure for table `licni_podaci`
--

DROP TABLE IF EXISTS `licni_podaci`;
CREATE TABLE IF NOT EXISTS `licni_podaci` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tip_entiteta` varchar(45) COLLATE utf8_bin DEFAULT NULL,
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
  `zupa_id` int(11) DEFAULT NULL,
  `zupa_sifra` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `zupa_naziv` varchar(100) COLLATE utf8_bin DEFAULT NULL,
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
  `photo` mediumblob,
  `datum_vreme` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `aktivan` int(11) NOT NULL DEFAULT '1',
  `banka` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `tekuci_racun` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `jmbg` (`jmbg`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=38 ;

--
-- Dumping data for table `licni_podaci`
--

INSERT INTO `licni_podaci` (`id`, `tip_entiteta`, `oslovljavanje_sifra`, `oslovljavanje_id`, `oslovljavanje`, `crkvena_titula_sifra`, `crkvena_titula_id`, `crkvena_titula`, `akademska_titula_sifra`, `akademska_titula_id`, `akademska_titula`, `jmbg`, `ime`, `prezime`, `ime_u_lk`, `prezime_u_lk`, `ime_oca`, `ime_majke`, `datum_rodjenja`, `mesto_rodjenja_id`, `mesto_rodjenja`, `mesto_rodjenja_sifra`, `srednje_obrazovanje_mesto_id`, `srednje_obrazovanje_mesto_sifra`, `srednje_obrazovanje_mesto`, `srednje_obrazovanje_skola_id`, `srednje_obrazovanje_skola_sifra`, `srednje_obrazovanje_skola`, `srednje_obrazovanje_od`, `srednje_obrazovanje_do`, `brprotokola`, `pol`, `drzavarodj`, `id_drzavarodj`, `adresa`, `ptt`, `id_ptt`, `telefon`, `e_mail`, `status`, `id_status`, `drzavljanstvo`, `id_drzavljanstvo`, `nacionalnost`, `id_nacionalnost`, `zupa_id`, `zupa_sifra`, `zupa_naziv`, `slika`, `banka_isplata`, `id_banka_isplata`, `racun_isplate`, `opstina`, `id_opstina`, `sifra`, `bogoslovija_mesto_id`, `bogoslovija_mesto_sifra`, `bogoslovija_mesto`, `bogoslovija_mesto1_id`, `bogoslovija_mesto1_sifra`, `bogoslovija_mesto1`, `bogoslovija_mesto2_id`, `bogoslovija_mesto2_sifra`, `bogoslovija_mesto2`, `bogoslovija_period_od`, `bogoslovija_period_do`, `bogoslovija_period_od1`, `bogoslovija_period_do1`, `bogoslovija_period_od2`, `bogoslovija_period_do2`, `djakonat_mesto_id`, `djakonat_mesto_sifra`, `djakonat_mesto`, `djakonat_datum`, `djakonat_zareditelj_id`, `djakonat_zareditelj_sifra`, `djakonat_zareditelj`, `prezbiterat_mesto_id`, `prezbiterat_mesto_sifra`, `prezbiterat_mesto`, `prezbiterat_datum`, `prezbiterat_zareditelj_id`, `prezbiterat_zareditelj_sifra`, `prezbiterat_zareditelj`, `dodiplomski_studij_mesto_id`, `dodiplomski_studij_mesto_sifra`, `dodiplomski_studij_mesto`, `dodiplomski_studij_naziv_ustanove_id`, `dodiplomski_studij_naziv_ustanove_sifra`, `dodiplomski_studij_naziv_ustanove`, `dodiplomski_studij_period_od`, `dodiplomski_studij_period_do`, `magisterij_mesto_id`, `magisterij_mesto_sifra`, `magisterij_mesto`, `magisterij_naziv_ustanove_id`, `magisterij_naziv_ustanove_sifra`, `magisterij_naziv_ustanove`, `magisterij_period_od`, `magisterij_period_do`, `doktorat_mesto_id`, `doktorat_mesto_sifra`, `doktorat_mesto`, `doktorat_naziv_ustanove_id`, `doktorat_naziv_ustanove_sifra`, `doktorat_naziv_ustanove`, `doktorat_period_od`, `doktorat_period_do`, `photo`, `datum_vreme`, `aktivan`, `banka`, `tekuci_racun`) VALUES
(21, '', NULL, NULL, '', NULL, NULL, 'Címzetes prépost', NULL, NULL, 'Dipl. teol.', 'asdfasasd', 'asdf', 'adsf', 'adf', 'asdf', '', '', '2016-04-04', NULL, '', NULL, NULL, NULL, '', NULL, NULL, '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'telef', '', NULL, NULL, '', NULL, '', NULL, 0, '', 'Sveti Rok', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, '', '2016-04-04', NULL, NULL, '', NULL, NULL, '', '2016-04-04', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', '', '', NULL, NULL, '', NULL, NULL, '', '', '', NULL, NULL, '', NULL, NULL, '', '', '', NULL, '2016-04-10 16:17:12', 1, 'Banca Intesa', ''),
(22, '''''', NULL, NULL, 'Prečasni', NULL, NULL, 'Mons.', NULL, NULL, '', '343', 'ads', 'asdf', 'ads', 'as', '', '', '2016-04-05', NULL, '', NULL, NULL, NULL, '', NULL, NULL, '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, '', NULL, '', NULL, 0, '', 'Sveti Rok', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, '', '2016-04-05', NULL, NULL, '', NULL, NULL, '', '2016-04-05', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', '', '', NULL, NULL, '', NULL, NULL, '', '', '', NULL, NULL, '', NULL, NULL, '', '', '', NULL, '2016-04-10 16:17:12', 1, NULL, NULL),
(23, NULL, NULL, NULL, 'Prečasni', NULL, NULL, '', NULL, NULL, '', 'e', 'asd', 'adsf', '', '', '', '', '2016-04-06', NULL, '', NULL, NULL, NULL, '', NULL, NULL, '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, '', NULL, '', NULL, 0, '', 'Sveti Rok', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, '', '2016-04-06', NULL, NULL, '', NULL, NULL, '', '2016-04-06', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', '', '', NULL, NULL, '', NULL, NULL, '', '', '', NULL, NULL, '', NULL, NULL, '', '', '', NULL, '2016-04-10 16:17:12', 1, NULL, NULL),
(24, NULL, NULL, NULL, 'Prečasni', NULL, NULL, 'Mons.', NULL, NULL, 'Dr.', '1103976124445', 'Mari', 'Arnogyá', 'Mario', 'Krsmanić', 'Marpqwíő', 'Mariyá', '1972-09-12', NULL, 'SOMBOR', NULL, NULL, NULL, 'PANCEVO', NULL, NULL, 'Paulinum', '1981', '1985', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '021/330655', 'a@a.com', NULL, NULL, 'Srbija', NULL, 'Hrvat', NULL, 0, '', 'Sveti Rok', 'D:skype.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SUBOTICA', NULL, NULL, 'NOVI SAD', NULL, NULL, '', '2001', '2005', '2011', '2015', '', '', NULL, NULL, 'SUBOTICA', '1998-01-01', NULL, NULL, 'Mons. Ćiril Kos', NULL, NULL, 'SOMBOR', '1990-01-01', NULL, NULL, 'Mons. Ćiril Kos', NULL, NULL, 'NOVI SAD', NULL, NULL, 'Paulinum', '2001', '2010', NULL, NULL, 'SUBOTICA', NULL, NULL, 'Paulinum', '2011', '2015', NULL, NULL, 'ZAGREB', NULL, NULL, 'Paulinum', '2014', '2015', NULL, '2016-04-10 16:17:12', 1, NULL, NULL),
(25, NULL, NULL, NULL, 'Prečasni', NULL, NULL, 'Mons.', NULL, NULL, 'Dr.', '2103977154488', 'ime', 'prezime', 'ime u lk', 'prezime u lk', 'ime oca', 'ime majke', '1981-01-14', NULL, 'SUBOTICA', NULL, NULL, NULL, 'MOSORIN', NULL, NULL, 'Paulinum', '1981', '1990', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '041/7778-8', 'a@a.cdd', NULL, NULL, 'Hrvatsko', NULL, 'Hrvat', NULL, 0, '', 'Sveti Rok', 'D:skype.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SREMSKA MITROVICAA', NULL, NULL, 'PANCEVO', NULL, NULL, '', '1990', '1992', '1992', '1995', '', '', NULL, NULL, 'SOMBOR', '2001-09-19', NULL, NULL, 'Mons. Ćiril Kos', NULL, NULL, 'SREMSKA MITROVICAA', '2003-03-20', NULL, NULL, 'Mons. Ćiril Kos', NULL, NULL, 'SOMBOR', NULL, NULL, 'Paulinum', '2001', '2003', NULL, NULL, 'SUBOTICA', NULL, NULL, 'Paulinum', '2003', '2005', NULL, NULL, '', NULL, NULL, '', '', '', NULL, '2016-04-10 16:17:12', 1, NULL, NULL),
(27, '', NULL, NULL, '', NULL, NULL, 'Mons.', NULL, NULL, '', '21039771544', 'ime', 'prezime', 'ime u lk', 'prezime u lk', 'ime oca', 'ime majke', '1981-01-14', NULL, 'SUBOTICA', NULL, NULL, NULL, 'MOSORIN', NULL, NULL, '', '1981', '1990', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '041/7778-8', 'a@a.cdd', NULL, NULL, 'Madjarska', NULL, 'Madjar', NULL, 0, '', 'Sveti Rok', 'D:\\\\gui\\\\10042016\\\\photo27.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SREMSKA MITROVICAA', NULL, NULL, 'PANCEVO', NULL, NULL, 'SUBOTICA', '1990', '1992', '1992', '1995', '1982', '1989', NULL, NULL, 'SOMBOR', '2001-09-19', NULL, NULL, 'Mons. Ćiril Kos', NULL, NULL, 'SREMSKA MITROVICAA', '2003-03-20', NULL, NULL, 'Mons. Ćiril Kos', NULL, NULL, 'ZAGREB', NULL, NULL, 'Pécs – Püspöki Hittudományi Főiskola', '2001', '2003', NULL, NULL, 'SOMBOR', NULL, NULL, 'Roma - Pontificio Istituto di Musica Sacra', '2003', '2005', NULL, NULL, 'SOMBOR', NULL, NULL, '', '41', '52', NULL, '2016-04-10 16:17:12', 1, 'Banca Intesa', 'abc'),
(28, NULL, NULL, NULL, 'Prečasni', NULL, NULL, 'Mons.', NULL, NULL, 'Dr.', '123456', 'pera', 'peraa', 'pera', 'peraa', '', '', '2016-04-08', NULL, '', NULL, NULL, NULL, '', NULL, NULL, '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, '', NULL, '', NULL, 0, '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, '', '2016-04-08', NULL, NULL, '', NULL, NULL, '', '2016-04-08', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', '', '', NULL, NULL, '', NULL, NULL, '', '', '', NULL, NULL, '', NULL, NULL, '', '', '', NULL, '2016-04-10 16:17:12', 1, NULL, NULL),
(29, NULL, NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', 'mika', 'mika', 'mika', 'mika', 'mika', '', '', '1900-01-01', NULL, '', NULL, NULL, NULL, '', NULL, NULL, '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, '', NULL, '', NULL, 0, '', 'Sveti Rok', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, '', '1900-01-01', NULL, NULL, '', NULL, NULL, '', '1900-01-01', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', '', '', NULL, NULL, '', NULL, NULL, '', '', '', NULL, NULL, '', NULL, NULL, '', '', '', NULL, '2016-04-10 16:17:12', 1, NULL, NULL),
(30, NULL, NULL, NULL, 'Prečasni', NULL, NULL, '', NULL, NULL, '', 'ab', 'a', 'b', 'a', 'b', '', '', '1900-01-01', NULL, '', NULL, NULL, NULL, '', NULL, NULL, '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, '', NULL, '', NULL, 0, '', 'Sveti Rok', 'D:/photo27.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, '', '1900-01-01', NULL, NULL, '', NULL, NULL, '', '1900-01-01', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', '', '', NULL, NULL, '', NULL, NULL, '', '', '', NULL, NULL, '', NULL, NULL, '', '', '', NULL, '2016-04-10 16:41:43', 1, NULL, NULL),
(31, NULL, NULL, NULL, 'Prečasni', NULL, NULL, '', NULL, NULL, '', '31', 'c', 'd', 'c', 'd', '', '', '1900-01-01', NULL, '', NULL, NULL, NULL, '', NULL, NULL, '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, '', NULL, '', NULL, 0, '', 'Sveti Rok', 'D:\\gui\\10042016\\photo27.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, '', '1900-01-01', NULL, NULL, '', NULL, NULL, '', '1900-01-01', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', '', '', NULL, NULL, '', NULL, NULL, '', '', '', NULL, NULL, '', NULL, NULL, '', '', '', NULL, '2016-04-11 02:07:35', 1, NULL, NULL),
(32, NULL, NULL, NULL, '', NULL, NULL, 'Mons.', NULL, NULL, '', '32', '32', 'f', '32', 'f', '', '', '1900-01-01', NULL, '', NULL, NULL, NULL, '', NULL, NULL, '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, '', NULL, '', NULL, 0, '', 'Sveti Rok', 'D:\\gui\\10042016\\photo27.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, '', '1900-01-01', NULL, NULL, '', NULL, NULL, '', '1900-01-01', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', '', '', NULL, NULL, '', NULL, NULL, '', '', '', NULL, NULL, '', NULL, NULL, '', '', '', NULL, '2016-04-11 04:04:33', 1, NULL, NULL),
(33, NULL, NULL, NULL, 'Prečasni', NULL, NULL, 'Mons.', NULL, NULL, '', '1234567890123', 'Mirké', 'Stefkovich', 'Mirko', 'Štefković', 'Maćaš', 'Anna', '1958-02-14', NULL, 'PANCEVO', NULL, NULL, NULL, 'SOMBOR', NULL, NULL, 'Paulinum', '1980', '1983', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '064/12345678', 'a@posta.net', NULL, NULL, 'Srbija', NULL, 'Slovak', NULL, NULL, NULL, 'Sveti Rok', 'D:\\\\photo27.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NOVI SAD', NULL, NULL, '', NULL, NULL, '', '1986', '1988', '', '', '', '', NULL, NULL, 'SOMBOR', '1990-09-01', NULL, NULL, '', NULL, NULL, 'NOVI SAD', '2001-09-01', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', '', '', NULL, NULL, '', NULL, NULL, '', '', '', NULL, NULL, '', NULL, NULL, '', '', '', NULL, '2016-04-13 14:20:48', 1, NULL, NULL),
(34, 'Bogoslov', NULL, NULL, 'Főtisztelendő', NULL, NULL, 'Címzetes apát', NULL, NULL, 'Dipl. teol.', '1422', 'Marijo', 'Mackovic', 'Mario', 'Mačković', '', '', '1900-01-01', NULL, '', NULL, NULL, NULL, '', NULL, NULL, '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, '', NULL, '', NULL, NULL, NULL, '', 'D:\\\\gui\\\\slike\\\\Person-icon.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, '', '1900-01-01', NULL, NULL, '', NULL, NULL, '', '1900-01-01', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', '', '', NULL, NULL, '', NULL, NULL, '', '', '', NULL, NULL, '', NULL, NULL, '', '', '', '', '2016-05-28 03:55:08', 1, '', 'asdfsadf'),
(35, '', NULL, NULL, 'Prečasni gospodin', NULL, NULL, 'Címzetes prépost', NULL, NULL, 'Dr. sc.', '333', 'Bojan', 'Sivic', 'Bojan', 'Sivic', '', '', '1900-01-01', NULL, '', NULL, NULL, NULL, '', NULL, NULL, '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, '', NULL, '', NULL, NULL, NULL, '', 'D:\\\\gui\\\\slike\\\\Person-icon.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Esztergom', NULL, NULL, '', NULL, NULL, 'Szeged', '', '', '', '', '', '', NULL, NULL, '', '1900-01-01', NULL, NULL, '', NULL, NULL, '', '1900-01-01', NULL, NULL, '', NULL, NULL, '', NULL, NULL, 'Budapest – Pázmány Péter Katolikus Egyetem Hittudományi Kara', '', '', NULL, NULL, '', NULL, NULL, 'Roma - Istituto Patristico Augustinianum', '', '', NULL, NULL, '', NULL, NULL, 'Pécs – Püspöki Hittudományi Főiskola', '', '', '', '2016-05-28 04:23:36', 1, '', ''),
(36, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', '123', 'tivod', 'palf', 'tivodar', 'palfi', '', '', '1900-01-01', NULL, '', NULL, NULL, NULL, '', NULL, NULL, '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, '', NULL, '', NULL, NULL, NULL, '', 'D:\\gui\\slike\\Person-icon.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, '', '1900-01-01', NULL, NULL, '', NULL, NULL, '', '1900-01-01', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', '', '', NULL, NULL, '', NULL, NULL, '', '', '', NULL, NULL, '', NULL, NULL, '', '', '', '', '2016-06-08 16:20:18', 1, '', ''),
(37, '', 0, 1, '', 1, 2, 'Mons.', 0, 1, '', '0101960880055', 'István', 'Markovity', 'Ištvan', 'Marković', 'Luka', 'Marija Lukić', '1960-01-01', 168, 'Subotica', 287, 168, 287, 'Subotica', NULL, NULL, 'Pécs – Püspöki Hittudományi Főiskola', '1976', '1980', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+381(0)60/10-20-30', 'marko.markovic@gmail.com', NULL, NULL, '', NULL, '', NULL, 19, '19', 'Presveto Trojstvo', 'D:\\gui\\slike\\Person-icon.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 20, '106', 'Đakovo', 5, '0', '', 5, '0', '', '1981', '1986', '', '', '', '', 20, '106', 'Đakovo', '1985-06-29', 2, '1', 'Mons. Ćiril Kos', 27, '202', 'Apatin', '1986-06-29', 2, '1', 'Mons. Ćiril Kos', 20, '106', 'Đakovo', NULL, NULL, 'Đakovo – KBF Sveučilišta u Osijeku', '1981', '1986', 5, '0', 'ZAGREB', NULL, NULL, 'Zagreb – KBF Sveučilišta u Zagrebu', '1988', '1990', 24, '110', 'Roma', NULL, NULL, 'Roma – Pontificia Università Gregoriana', '1994', '1998', '', '2016-06-08 17:26:05', 1, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `mesto_skolovanja`
--

DROP TABLE IF EXISTS `mesto_skolovanja`;
CREATE TABLE IF NOT EXISTS `mesto_skolovanja` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sifra` varchar(45) COLLATE utf8_bin NOT NULL,
  `naziv` varchar(100) COLLATE utf8_bin NOT NULL,
  `datum_vreme` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `aktivan` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `sifra` (`sifra`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=24 ;

--
-- Dumping data for table `mesto_skolovanja`
--

INSERT INTO `mesto_skolovanja` (`id`, `sifra`, `naziv`, `datum_vreme`, `aktivan`) VALUES
(1, '0', '', '2016-05-28 04:40:26', 1),
(2, '1', 'Szeged - Gál Ferenc Főiskola', '2016-05-28 04:41:57', 1),
(3, '2', 'Budapest – Pázmány Péter Katolikus Egyetem Hittudományi Kara', '2016-05-28 04:42:16', 1),
(4, '3', 'Esztergom – Esztergomi Hittudományi Főiskola', '2016-05-28 04:42:29', 1),
(5, '4', 'Eger – Egri Hittudományi Főiskola', '2016-05-28 04:42:47', 1),
(6, '5', 'Pécs – Püspöki Hittudományi Főiskola', '2016-05-28 04:43:01', 1),
(7, '6', 'Vác – Apor Vilmos Katolikus Főiskola', '2016-05-28 04:43:13', 1),
(8, '7', 'Đakovo – KBF Sveučilišta u Osijeku', '2016-05-28 04:43:27', 1),
(9, '8', 'Zagreb – KBF Sveučilišta u Zagrebu', '2016-05-28 04:43:40', 1),
(10, '9', 'Zagreb – FTIDI', '2016-05-28 04:43:53', 1),
(11, '10', 'Sarajevo – KBF Sveučilišta u Sarajevu', '2016-05-28 04:44:24', 1),
(12, '11', 'Roma – Pontificia Università Gregoriana', '2016-05-28 04:44:54', 1),
(13, '12', 'Roma – Pontificia Università Lateranense', '2016-05-28 04:45:09', 1),
(14, '13', 'Roma – Università Pontificia Salesiana', '2016-05-28 04:45:34', 1),
(15, '14', 'Roma – Pontificia Università della Santa Croce', '2016-05-28 04:45:58', 1),
(16, '15', 'Roma – Pontificia Università Urbaniana', '2016-05-28 04:46:11', 1),
(17, '17', 'Roma – Pontificio Istituto Biblico', '2016-05-28 04:46:36', 1),
(18, '18', 'Roma - Pontificio Istituto Giovanni Paolo II', '2016-05-28 04:46:49', 1),
(19, '19', 'Roma - Pontificio Istituto Orientale', '2016-05-28 04:47:00', 1),
(20, '20', 'Roma - Istituto Patristico Augustinianum', '2016-05-28 04:47:14', 1),
(21, '21', 'Roma - Pontificia Accademia Alfonsiana', '2016-05-28 04:47:25', 1),
(22, '22', 'Roma - Pontificio Istituto di Musica Sacra', '2016-05-28 04:47:40', 1),
(23, '23', 'Graz – Universität für Musik und darstellende Kunst', '2016-05-28 04:47:54', 1);

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
(3, '201', 'Ada', '2016-03-27 05:43:48', 1);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=5 ;

--
-- Dumping data for table `oslovljavanje`
--

INSERT INTO `oslovljavanje` (`id`, `sifra`, `naziv`, `datum_vreme`, `aktivan`) VALUES
(1, '0', '', '2016-03-27 04:52:42', 1),
(2, '1', 'Főtisztelendő', '2016-03-27 04:59:42', 1),
(3, '2', 'Velečasni gospodin', '2016-05-11 12:17:37', 1),
(4, '3', 'Prečasni gospodin', '2016-05-24 16:37:26', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oslovljavanje_zupa`
--

DROP TABLE IF EXISTS `oslovljavanje_zupa`;
CREATE TABLE IF NOT EXISTS `oslovljavanje_zupa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sifra` varchar(45) COLLATE utf8_bin NOT NULL,
  `naziv` varchar(100) COLLATE utf8_bin NOT NULL,
  `datum_vreme` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `aktivan` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `sifra` (`sifra`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=4 ;

--
-- Dumping data for table `oslovljavanje_zupa`
--

INSERT INTO `oslovljavanje_zupa` (`id`, `sifra`, `naziv`, `datum_vreme`, `aktivan`) VALUES
(1, '1', 'Rimokatolička župa', '2016-05-25 17:13:16', 1),
(2, '2', 'Római Katolikus plébánia', '2016-05-25 17:15:54', 1),
(3, '0', '', '2016-05-28 15:04:20', 1);

-- --------------------------------------------------------

--
-- Table structure for table `parametri`
--

DROP TABLE IF EXISTS `parametri`;
CREATE TABLE IF NOT EXISTS `parametri` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sifra` varchar(45) COLLATE utf8_bin NOT NULL,
  `naziv` varchar(100) COLLATE utf8_bin NOT NULL,
  `putanja_izvestaja` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `person_icon` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `konekcija` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `user` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `password` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `datum_vreme` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `aktivan` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `sifra` (`sifra`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=2 ;

--
-- Dumping data for table `parametri`
--

INSERT INTO `parametri` (`id`, `sifra`, `naziv`, `putanja_izvestaja`, `person_icon`, `konekcija`, `user`, `password`, `datum_vreme`, `aktivan`) VALUES
(1, '1', '', 'C:\\\\Users\\\\ms\\\\Documents\\\\NetBeansProjects\\\\gui\\\\src\\\\report\\\\', 'D:\\\\gui\\\\slike\\\\Person-icon.jpg', 'jdbc:mysql://localhost:3306/personal?useUnicode=true&characterEncoding=utf-8', 'root', '""', '2016-05-28 10:54:52', 1);

-- --------------------------------------------------------

--
-- Table structure for table `podaci_o_dodatnoj_sluzbi`
--

DROP TABLE IF EXISTS `podaci_o_dodatnoj_sluzbi`;
CREATE TABLE IF NOT EXISTS `podaci_o_dodatnoj_sluzbi` (
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=63 ;

--
-- Dumping data for table `podaci_o_dodatnoj_sluzbi`
--

INSERT INTO `podaci_o_dodatnoj_sluzbi` (`id`, `user_id`, `jmbg`, `rbr`, `mesto_sluzbe`, `mesto_sluzbe_id`, `mesto_sluzbe_sifra`, `naziv_ustanove`, `naziv_ustanove_id`, `naziv_ustanove_sifra`, `naziv_zupe`, `naziv_zupe_id`, `naziv_zupe_sifra`, `svojstvo`, `svojstvo_id`, `svojstvo_sifra`, `dekret`, `pocetak_sluzbe_od`, `trajanje_sluzbe_do`, `aktivan`, `datum_vreme`, `korisnik`) VALUES
(8, 32, 'ef', 1, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, 'Upravitelj župe', NULL, NULL, 'asdf', '2016-04-01', '2016-04-01', 1, '2016-04-12 06:51:27', NULL),
(10, 2, '21039771544', 1, 'MOSORIN', NULL, NULL, 'Paulinum', NULL, NULL, 'Sveti Rok', NULL, NULL, 'Upravitelj župe', NULL, NULL, 'asdfasd', '2016-04-01', '2016-04-01', 1, '2016-04-12 22:09:35', NULL),
(11, 2, '0', 2, 'PANCEVO', NULL, NULL, 'Paulinum', NULL, NULL, 'Svetog Karla Boromejskog', NULL, NULL, 'Župni vikar', NULL, NULL, 'asdfsadfas', '2016-04-05', '2016-04-24', 1, '2016-04-12 22:09:35', NULL),
(12, 5, '4356345', 1, 'SOMBOR', NULL, NULL, 'Paulinum', NULL, NULL, 'Sveti Rok', NULL, NULL, '', NULL, NULL, '', '2016-04-05', '2016-04-01', 1, '2016-04-12 22:37:42', NULL),
(15, 33, '1234567890123', 1, '', NULL, NULL, '', NULL, NULL, '', NULL, NULL, 'Upravitelj župe', NULL, NULL, 'aaaa', '2005-05-01', '2008-06-06', 1, '2016-04-13 17:09:45', NULL),
(16, 33, '1234567890123', 2, 'NOVI SAD', NULL, NULL, '', NULL, NULL, '', NULL, NULL, 'Župni vikar', NULL, NULL, 'dddd', '2009-05-01', '2011-03-14', 1, '2016-04-13 17:09:45', NULL),
(42, 27, '21039771544', 1, 'Mala Bosna', NULL, NULL, 'Pastoralni centar „Autustinianum“', NULL, NULL, 'Uzašašće Gospodina našega Isusa Krista', NULL, NULL, 'Rektor', NULL, NULL, 'iouoiuoi', '2013-04-01', '2014-04-30', 1, '2016-05-28 14:40:29', NULL),
(43, 27, '21039771544', 2, 'MOSORIN', NULL, NULL, 'Biskupski ordinarijat', NULL, NULL, 'Sveti Šimun i Juda Tadej', NULL, NULL, 'Rektor', NULL, NULL, 'pooooiii', '2015-05-05', '2015-09-09', 1, '2016-05-28 14:40:30', NULL),
(44, 27, '21039771544', 3, 'MOSORIN', NULL, NULL, '', NULL, NULL, 'Sveti Rok', NULL, NULL, 'Upravitelj župe', NULL, NULL, 'asdfasd', '2016-04-01', '2016-04-01', 1, '2016-05-28 14:40:30', NULL),
(45, 27, '21039771544', 4, 'Martonoš', NULL, NULL, '', NULL, NULL, 'Sveti Rok', NULL, NULL, 'Upravitelj župe', NULL, NULL, 'asdfasd', '2016-05-25', '2016-05-26', 1, '2016-05-28 14:40:30', NULL),
(46, 35, '333', 1, 'Ada', NULL, NULL, '', NULL, NULL, 'Anđeli Čuvari', NULL, NULL, 'Arhiprezbiter', NULL, NULL, 'etew', '2016-05-01', '2016-05-08', 1, '2016-05-28 15:06:32', NULL),
(50, 1, '32132', 1, 'Bajmok', NULL, NULL, 'Malo sjemenište „Paulinum“', NULL, NULL, 'Ime Marijino', NULL, NULL, 'Knjižničar', NULL, NULL, 'fasdfasdf', '2005-03-14', '2006-05-17', 1, '2016-06-04 19:01:03', NULL),
(56, 21, 'asdfasasd', 1, 'Apatin', NULL, NULL, '', NULL, NULL, '', NULL, NULL, 'Arhiprezbiter', NULL, NULL, '', '2010-05-05', '1900-01-01', 1, '2016-06-09 06:34:58', NULL),
(61, 37, '0101960880055', 1, 'Subotica', NULL, NULL, '', NULL, NULL, '', NULL, NULL, 'Član vijeća', NULL, NULL, '', '1992-01-01', '1998-12-31', 1, '2016-06-11 11:18:56', NULL),
(62, 37, '0101960880055', 2, 'Sombor', NULL, NULL, '', NULL, NULL, '', NULL, NULL, 'Dekan', NULL, NULL, '', '2005-01-01', '2010-12-31', 1, '2016-06-11 11:18:56', NULL);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=104 ;

--
-- Dumping data for table `podaci_o_pastoralnoj_sluzbi`
--

INSERT INTO `podaci_o_pastoralnoj_sluzbi` (`id`, `user_id`, `jmbg`, `rbr`, `mesto_sluzbe`, `mesto_sluzbe_id`, `mesto_sluzbe_sifra`, `naziv_ustanove`, `naziv_ustanove_id`, `naziv_ustanove_sifra`, `naziv_zupe`, `naziv_zupe_id`, `naziv_zupe_sifra`, `svojstvo`, `svojstvo_id`, `svojstvo_sifra`, `dekret`, `pocetak_sluzbe_od`, `trajanje_sluzbe_do`, `aktivan`, `datum_vreme`, `korisnik`) VALUES
(1, 12, '', 0, 'SREMSKA MITROVICA', 0, 0, '', 0, 0, 'Sveti Rok', 0, 0, '', 0, 0, ' 22222222222222', '0000-00-00', '0000-00-00', 0, '2016-03-09 19:52:16', ''),
(2, 22, '343', NULL, 'MOSORIN', NULL, NULL, 'Paulinum', NULL, NULL, 'Sveti Rok', NULL, NULL, 'Upravitelj župe', NULL, NULL, 'asdf', '2016-03-01', '2016-04-05', 1, '2016-04-05 05:01:59', NULL),
(3, 23, 'e', NULL, 'NOVI SAD', NULL, NULL, 'Paulinum', NULL, NULL, 'Sveti Rok', NULL, NULL, 'Župni vikar', NULL, NULL, 'qreqwr', '2016-03-01', '2016-04-06', 1, '2016-04-06 19:09:28', NULL),
(4, 23, '', NULL, 'MOSORIN', NULL, NULL, 'Paulinum', NULL, NULL, 'Sveti Rok', NULL, NULL, 'Upravitelj župe', NULL, NULL, 'asdfsad', '2016-03-01', '2016-04-06', 1, '2016-04-06 19:10:37', NULL),
(5, 23, '', NULL, 'NOVI SAD', NULL, NULL, 'Paulinum', NULL, NULL, 'Sveti Rok', NULL, NULL, 'Župni vikar', NULL, NULL, 'qreqwr', '2016-03-01', '2016-04-06', 1, '2016-04-06 19:11:00', NULL),
(16, 24, '1103976124445', 1, 'MOSORIN', NULL, NULL, 'Paulinum', NULL, NULL, 'Sveti Rok', NULL, NULL, 'Upravitelj župe', NULL, NULL, 'dekret 1', '1990-02-14', '2016-04-06', 1, '2016-04-10 17:21:21', NULL),
(17, 24, '1103976124445', 2, 'SOMBOR', NULL, NULL, 'Paulinum', NULL, NULL, 'Sveti Rok', NULL, NULL, 'Upravitelj župe', NULL, NULL, 'dekret 2', '2016-04-03', '2016-04-28', 1, '2016-04-10 17:21:21', NULL),
(39, 2, '21039771544', 1, 'SOMBOR', NULL, NULL, 'Paulinum', NULL, NULL, 'Sveti Rok', NULL, NULL, 'Upravitelj župe', NULL, NULL, 'dekret 1', '1990-02-14', '2016-04-06', 1, '2016-04-12 22:09:35', NULL),
(40, 2, '21039771544', 2, 'VRANJE-posa', NULL, NULL, 'Paulinum', NULL, NULL, 'Sveti Rok', NULL, NULL, 'Upravitelj župe', NULL, NULL, 'dekret 3', '2016-04-01', '2016-04-30', 1, '2016-04-12 22:09:35', NULL),
(41, 5, '4356345', 1, 'MOSORIN', NULL, NULL, 'Paulinum', NULL, NULL, 'Sveti Rok', NULL, NULL, 'Upravitelj župe', NULL, NULL, 'asdfas', '2016-04-01', '2016-04-28', 1, '2016-04-12 22:37:42', NULL),
(43, 33, '1234567890123', 1, 'NOVI SAD', NULL, NULL, 'Paulinum', NULL, NULL, 'Sveti Rok', NULL, NULL, 'Župni vikar', NULL, NULL, 'dektet', '2002-10-25', '2004-11-25', 1, '2016-04-13 17:09:45', NULL),
(76, 27, '21039771544', 1, 'NOVI SAD', NULL, NULL, 'Paulinum', NULL, NULL, 'Sveti Rok', NULL, NULL, 'Župni vikar', NULL, NULL, 'dekret 2', '1977-01-17', '1981-02-16', 1, '2016-05-28 14:40:29', NULL),
(77, 27, '21039771544', 2, 'SOMBOR', NULL, NULL, 'Paulinum', NULL, NULL, 'Sveti Rok', NULL, NULL, 'Upravitelj župe', NULL, NULL, 'dekret 1', '1990-02-14', '2016-04-06', 1, '2016-05-28 14:40:29', NULL),
(78, 27, '21039771544', 3, 'ZAGREB', NULL, NULL, 'Paulinum', NULL, NULL, 'Sveti Rok', NULL, NULL, 'Upravitelj župe', NULL, NULL, 'test', '1990-02-14', '2015-03-15', 1, '2016-05-28 14:40:29', NULL),
(79, 27, '21039771544', 4, 'VRANJE-posa', NULL, NULL, 'Paulinum', NULL, NULL, 'Sveti Rok', NULL, NULL, 'Upravitelj župe', NULL, NULL, 'dekret 3', '2016-04-01', '2016-04-30', 1, '2016-05-28 14:40:29', NULL),
(83, 1, '32132', 1, 'Apatin', NULL, NULL, 'Biskupski ordinarijat', NULL, NULL, 'Anđeli Čuvari', NULL, NULL, 'Župnik', NULL, NULL, 'adfs', '1990-01-14', '1993-03-12', 1, '2016-06-04 19:01:03', NULL),
(94, 21, 'asdfasasd', 1, 'Ada', NULL, NULL, 'Biskupski ordinarijat', NULL, NULL, 'Bezgrešno Začeće Blažene Djevice Marije', NULL, NULL, 'Rektor', NULL, NULL, '354', '2010-01-01', '2012-03-14', 1, '2016-06-09 06:34:58', NULL),
(101, 37, '0101960880055', 1, 'SUBOTICA', NULL, NULL, '', NULL, NULL, 'Sveta Terezija Avilska', NULL, NULL, 'Župni vikar', NULL, NULL, '0987/1986 od 15.07.1986.', '1986-08-01', '1988-07-31', 1, '2016-06-11 11:18:56', NULL),
(102, 37, '0101960880055', 2, 'Stari Žednik', NULL, NULL, '', NULL, NULL, 'Sveti Mirko', NULL, NULL, 'Upravitelj župe', NULL, NULL, '0678/1990 od 10.07.1990.', '1990-08-01', '1994-07-31', 1, '2016-06-11 11:18:56', NULL),
(103, 37, '0101960880055', 3, 'Sombor', NULL, NULL, '', NULL, NULL, 'Presveto Trojstvo', NULL, NULL, 'Župnik', NULL, NULL, '0989/1998 od 20.07.1998.', '1990-08-01', '1900-01-01', 1, '2016-06-11 11:18:56', NULL);

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
  `opstina_id` int(11) DEFAULT NULL,
  `opstina_sifra` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `opstina` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `pocetak_od` date NOT NULL DEFAULT '1900-01-01',
  `trajanje_do` date NOT NULL DEFAULT '1900-01-01',
  `datum_vreme` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `aktivan` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=47 ;

--
-- Dumping data for table `podaci_o_prijavi_i_osiguranju`
--

INSERT INTO `podaci_o_prijavi_i_osiguranju` (`id`, `user_id`, `jmbg`, `rbr`, `mesto`, `mesto_id`, `ustanova`, `ustanova_id`, `svojstvo_osiguranika`, `svojstvo_osiguranika_id`, `opstina_id`, `opstina_sifra`, `opstina`, `pocetak_od`, `trajanje_do`, `datum_vreme`, `aktivan`) VALUES
(4, 24, '1103976124445', 1, 'MOSORIN', NULL, NULL, NULL, 'Samostalni djelatnik', NULL, NULL, NULL, NULL, '2016-04-03', '2016-03-11', '2016-04-10 17:21:21', 1),
(12, 2, '21039771544', 1, 'SOMBOR', NULL, NULL, NULL, 'Poljoprivrednik', NULL, NULL, NULL, 'ADA', '2016-04-03', '2016-03-11', '2016-04-12 22:09:35', 1),
(13, 2, '0', 2, 'PANCEVO', NULL, NULL, NULL, 'Samostalni djelatnik', NULL, NULL, NULL, 'Subotica', '2016-03-01', '2016-03-29', '2016-04-12 22:09:35', 1),
(14, 5, '4356345', 1, 'MOSORIN', NULL, NULL, NULL, 'Poljoprivrednik', NULL, NULL, NULL, 'ADA', '2015-12-06', '2016-03-11', '2016-04-12 22:37:43', 1),
(16, 33, '1234567890123', 1, 'NOVI SAD', NULL, NULL, NULL, 'Poljoprivrednik', NULL, NULL, NULL, 'ADA', '2005-01-01', '2008-03-14', '2016-04-13 17:09:45', 1),
(30, 27, '21039771544', 1, 'Savino Selo', NULL, NULL, NULL, 'Svećenik', NULL, NULL, NULL, 'Subotica', '1995-01-14', '2012-03-30', '2016-05-28 14:40:30', 1),
(31, 27, '21039771544', 2, 'SOMBOR', NULL, NULL, NULL, 'Poljoprivrednik', NULL, NULL, NULL, 'ADA', '2016-04-03', '2016-03-11', '2016-05-28 14:40:30', 1),
(35, 1, '32132', 1, 'SUBOTICA', NULL, NULL, NULL, 'Poljoprivrednik', NULL, NULL, NULL, 'Subotica', '2015-01-01', '2016-02-04', '2016-06-04 19:01:04', 1),
(40, 21, 'asdfasasd', 1, 'Bač', NULL, NULL, NULL, 'Poljoprivrednik', NULL, NULL, NULL, 'ADA', '2011-08-04', '1900-01-01', '2016-06-09 06:34:58', 1),
(45, 37, '0101960880055', 1, 'SUBOTICA', NULL, NULL, NULL, 'Poljoprivrednik', NULL, NULL, NULL, '', '1986-08-01', '1990-07-31', '2016-06-11 11:18:56', 1),
(46, 37, '0101960880055', 2, 'Stari Žednik', NULL, NULL, NULL, 'Samostalni djelatnik', NULL, NULL, NULL, '', '1990-08-01', '1998-07-31', '2016-06-11 11:18:56', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ptt_brojevi`
--

DROP TABLE IF EXISTS `ptt_brojevi`;
CREATE TABLE IF NOT EXISTS `ptt_brojevi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sifra` varchar(45) COLLATE utf8_bin NOT NULL,
  `naziv` varchar(100) COLLATE utf8_bin NOT NULL,
  `drzava_id` int(11) NOT NULL DEFAULT '0',
  `drzava_sifra` int(11) DEFAULT '0',
  `drzava` varchar(50) COLLATE utf8_bin NOT NULL,
  `datum_vreme` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `aktivan` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `sifra` (`sifra`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=185 ;

--
-- Dumping data for table `ptt_brojevi`
--

INSERT INTO `ptt_brojevi` (`id`, `sifra`, `naziv`, `drzava_id`, `drzava_sifra`, `drzava`, `datum_vreme`, `aktivan`) VALUES
(1, '24000', 'SUBOTICA', 0, 0, 'Srbija', '2016-03-05 18:14:58', 0),
(3, '25000', 'SOMBOR', 0, 0, 'Srbija', '2016-03-05 18:15:21', 0),
(5, '0', '', 0, 0, '', '2016-03-05 19:09:52', 1),
(6, '1000', 'Zagreb', 0, 0, 'Hrvatska', '2016-03-07 20:13:19', 1),
(7, '23000', 'Zrenjanin', 0, 0, '', '2016-03-07 20:17:08', 1),
(8, '21000', 'NOVI SAD', 0, 0, '', '2016-03-07 20:19:20', 0),
(10, '13000', 'PANCEVO', 0, 0, '', '2016-03-07 20:25:29', 0),
(11, '18000', 'VRANJE-posa', 0, 0, '', '2016-03-07 20:30:07', 0),
(12, '22200', 'MOSORIN', 0, 0, '', '2016-03-07 20:50:00', 0),
(13, '22000', 'SREMSKA MITROVICAA', 0, 0, '', '2016-03-26 11:16:18', 0),
(14, '100', 'Szeged', 0, 0, 'Madjarska', '2016-05-24 17:12:36', 1),
(15, '101', 'Budapest', 0, 0, 'Madjarska', '2016-05-24 17:14:48', 1),
(16, '102', 'Esztergom', 0, 0, 'Madjarska', '2016-05-24 17:15:15', 1),
(17, '103', 'Eger', 0, 0, 'Madjarska', '2016-05-24 17:15:33', 1),
(18, '104', 'Pécs', 0, 0, 'Madjarska', '2016-05-24 17:15:53', 1),
(19, '105', 'Vác', 0, 0, 'Madjarska', '2016-05-24 17:16:15', 1),
(20, '106', 'Đakovo', 0, 0, 'Hrvatska', '2016-05-24 17:16:37', 1),
(21, '107', 'Zagreb – Kaptol', 0, 0, 'Hrvatska', '2016-05-24 17:17:00', 1),
(22, '108', 'Zagreb – Isusovački kolegij', 0, 0, 'Hrvatska', '2016-05-24 17:17:22', 1),
(23, '109', 'Sarajevo', 0, 0, 'BIH', '2016-05-24 17:18:29', 1),
(24, '110', 'Roma', 0, 0, 'Italija', '2016-05-24 17:19:13', 1),
(25, '200', 'Ada', 0, 0, 'Srbija', '2016-05-24 18:00:14', 1),
(26, '201', 'Adorjan', 0, 0, 'Srbija', '2016-05-24 18:02:03', 1),
(27, '202', 'Apatin', 0, 0, 'Srbija', '2016-05-24 18:02:18', 1),
(28, '203', 'Bač', 0, 0, 'Srbija', '2016-05-24 18:07:05', 1),
(29, '204', 'Bačka Palanka', 0, 0, 'Srbija', '2016-05-24 18:07:23', 1),
(30, '205', 'Bačka Topola', 0, 0, 'Srbija', '2016-05-24 18:07:39', 1),
(31, '207', 'Bački Breg', 0, 0, 'Srbija', '2016-05-24 18:07:53', 1),
(33, '208', 'Bački Gračac', 0, 0, 'Srbija', '2016-05-24 18:08:25', 1),
(34, '209', 'Bački Monoštor', 0, 0, 'Srbija', '2016-05-24 18:08:38', 1),
(35, '210', 'Bački Petrovac', 0, 0, 'Srbija', '2016-05-24 18:09:22', 1),
(36, '211', 'Bački Vinogradi', 0, 0, 'Srbija', '2016-05-24 18:09:37', 1),
(37, '212', 'Bačko Gradište', 0, 0, 'Srbija', '2016-05-24 18:19:28', 1),
(38, '213', 'Bačko Novo Selo', 0, 0, 'Srbija', '2016-05-24 18:19:58', 1),
(39, '214', 'Bačko Petrovo Selo', 0, 0, 'Srbija', '2016-05-24 18:29:44', 1),
(40, '215', 'Bajmok', 0, 0, 'Srbija', '2016-05-24 18:33:46', 1),
(41, '216', 'Bajša', 0, 0, 'Srbija', '2016-05-24 18:33:46', 1),
(42, '217', 'Bečej', 0, 0, 'Srbija', '2016-05-24 18:33:46', 1),
(43, '218', 'Bezdan', 0, 0, 'Srbija', '2016-05-24 18:33:46', 1),
(44, '219', 'Bikovo', 0, 0, 'Srbija', '2016-05-24 18:33:46', 1),
(45, '220', 'Bođani', 0, 0, 'Srbija', '2016-05-24 18:33:47', 1),
(46, '221', 'Bogaraš', 0, 0, 'Srbija', '2016-05-24 18:33:47', 1),
(47, '222', 'Bogojevo', 0, 0, 'Srbija', '2016-05-24 18:42:34', 1),
(48, '223', 'Budisava', 0, 0, 'Srbija', '2016-05-24 18:42:34', 1),
(49, '224', 'Crvenka', 0, 0, 'Srbija', '2016-05-24 18:42:34', 1),
(50, '225', 'Čantavir', 0, 0, 'Srbija', '2016-05-24 18:42:34', 1),
(51, '226', 'Čelarevo', 0, 0, 'Srbija', '2016-05-24 18:42:34', 1),
(52, '227', 'Čonoplja', 0, 0, 'Srbija', '2016-05-24 18:42:35', 1),
(53, '228', 'Deronje', 0, 0, 'Srbija', '2016-05-24 18:42:35', 1),
(54, '229', 'Doroslovo', 0, 0, 'Srbija', '2016-05-24 18:42:35', 1),
(55, '230', 'Feketić', 0, 0, 'Srbija', '2016-05-24 18:42:35', 1),
(56, '231', 'Futog', 0, 0, 'Srbija', '2016-05-24 18:42:35', 1),
(57, '232', 'Gajdobra', 0, 0, 'Srbija', '2016-05-24 18:42:35', 1),
(58, '233', 'Gakovo', 0, 0, 'Srbija', '2016-05-24 18:42:35', 1),
(59, '234', 'Gornji Breg', 0, 0, 'Srbija', '2016-05-24 18:42:35', 1),
(60, '235', 'Gornji Tavankut', 0, 0, 'Srbija', '2016-05-24 18:42:35', 1),
(61, '236', 'Gunaroš', 0, 0, 'Srbija', '2016-05-24 18:42:35', 1),
(62, '237', 'Hajdukovo', 0, 0, 'Srbija', '2016-05-24 18:42:36', 1),
(63, '238', 'Horgoš', 0, 0, 'Srbija', '2016-05-24 18:42:36', 1),
(64, '239', 'Kać', 0, 0, 'Srbija', '2016-05-24 18:42:36', 1),
(65, '240', 'Kanjiža', 0, 0, 'Srbija', '2016-05-24 18:42:36', 1),
(66, '241', 'Karavukovo', 0, 0, 'Srbija', '2016-05-24 18:42:36', 1),
(67, '242', 'Kelebija', 0, 0, 'Srbija', '2016-05-24 18:42:36', 1),
(68, '243', 'Kevi', 0, 0, 'Srbija', '2016-05-24 18:42:36', 1),
(69, '244', 'Kljajićevo', 0, 0, 'Srbija', '2016-05-24 18:42:36', 1),
(70, '245', 'Kolut', 0, 0, 'Srbija', '2016-05-24 18:42:36', 1),
(71, '246', 'Kovilj', 0, 0, 'Srbija', '2016-05-24 18:42:36', 1),
(72, '247', 'Kruščić', 0, 0, 'Srbija', '2016-05-24 18:42:36', 1),
(73, '248', 'Kucura', 0, 0, 'Srbija', '2016-05-24 18:42:36', 1),
(74, '249', 'Kula', 0, 0, 'Srbija', '2016-05-24 18:42:36', 1),
(104, '250', 'Kulpin', 0, 0, 'Srbija', '2016-05-24 18:54:25', 1),
(105, '251', 'Kupusina', 0, 0, 'Srbija', '2016-05-24 18:54:25', 1),
(106, '252', 'Lok', 0, 0, 'Srbija', '2016-05-24 18:54:25', 1),
(107, '253', 'Ljutovo', 0, 0, 'Srbija', '2016-05-24 18:54:25', 1),
(108, '254', 'Mala Bosna', 0, 0, 'Srbija', '2016-05-24 18:54:25', 1),
(109, '255', 'Male Pijace', 0, 0, 'Srbija', '2016-05-24 18:54:25', 1),
(110, '256', 'Mali Iđoš', 0, 0, 'Srbija', '2016-05-24 18:54:25', 1),
(111, '257', 'Martonoš', 0, 0, 'Srbija', '2016-05-24 18:54:25', 1),
(112, '258', 'Mileševo', 0, 0, 'Srbija', '2016-05-24 18:54:25', 1),
(113, '259', 'Mladenovo', 0, 0, 'Srbija', '2016-05-24 18:54:25', 1),
(114, '260', 'Mol', 0, 0, 'Srbija', '2016-05-24 18:54:25', 1),
(115, '261', 'Nadalj', 0, 0, 'Srbija', '2016-05-24 18:54:25', 1),
(116, '262', 'Novi Sad', 0, 0, 'Srbija', '2016-05-24 18:54:25', 1),
(117, '263', 'Novo Orahovo', 0, 0, 'Srbija', '2016-05-24 18:54:25', 1),
(118, '264', 'Obrovac', 0, 0, 'Srbija', '2016-05-24 18:54:26', 1),
(132, '265', 'Odžaci', 0, 0, 'Srbija', '2016-05-24 18:57:29', 1),
(133, '266', 'Orom', 0, 0, 'Srbija', '2016-05-24 18:57:29', 1),
(134, '267', 'Pačir', 0, 0, 'Srbija', '2016-05-24 18:57:29', 1),
(135, '268', 'Palić', 0, 0, 'Srbija', '2016-05-24 18:57:29', 1),
(136, '269', 'Plavna', 0, 0, 'Srbija', '2016-05-24 18:57:29', 1),
(137, '270', 'Pobeda', 0, 0, 'Srbija', '2016-05-24 18:57:29', 1),
(138, '271', 'Prigrevica', 0, 0, 'Srbija', '2016-05-24 18:57:29', 1),
(139, '272', 'Ratkovo', 0, 0, 'Srbija', '2016-05-24 18:57:29', 1),
(140, '273', 'Ravno Selo', 0, 0, 'Srbija', '2016-05-24 18:57:29', 1),
(141, '274', 'Riđica', 0, 0, 'Srbija', '2016-05-24 18:57:29', 1),
(142, '275', 'Rumenka', 0, 0, 'Srbija', '2016-05-24 18:57:29', 1),
(143, '276', 'Savino Selo', 0, 0, 'Srbija', '2016-05-24 18:57:30', 1),
(144, '277', 'Selenča', 0, 0, 'Srbija', '2016-05-24 18:57:30', 1),
(159, '278', 'Senta', 0, 0, 'Srbija', '2016-05-24 19:06:45', 1),
(160, '279', 'Sivac', 0, 0, 'Srbija', '2016-05-24 19:06:45', 1),
(161, '280', 'Sombor', 0, 0, 'Srbija', '2016-05-24 19:06:45', 1),
(162, '281', 'Sonta', 0, 0, 'Srbija', '2016-05-24 19:06:45', 1),
(163, '282', 'Srbobran', 0, 0, 'Srbija', '2016-05-24 19:06:45', 1),
(164, '283', 'Srpski Miletić', 0, 0, 'Srbija', '2016-05-24 19:06:45', 1),
(165, '284', 'Stanišić', 0, 0, 'Srbija', '2016-05-24 19:06:45', 1),
(166, '285', 'Stara Moravica', 0, 0, 'Srbija', '2016-05-24 19:06:45', 1),
(167, '286', 'Stari Žednik', 0, 0, 'Srbija', '2016-05-24 19:06:45', 1),
(168, '287', 'Subotica', 0, 0, 'Srbija', '2016-05-24 19:06:45', 1),
(169, '288', 'Svetozar Miletić', 0, 0, 'Srbija', '2016-05-24 19:06:45', 1),
(170, '289', 'Svilojevo', 0, 0, 'Srbija', '2016-05-24 19:06:45', 1),
(171, '290', 'Šupljak', 0, 0, 'Srbija', '2016-05-24 19:06:45', 1),
(172, '291', 'Tavankut', 0, 0, 'Srbija', '2016-05-24 19:06:45', 1),
(173, '292', 'Telečka', 0, 0, 'Srbija', '2016-05-24 19:06:45', 1),
(174, '293', 'Temerin', 0, 0, 'Srbija', '2016-05-24 19:06:45', 1),
(175, '294', 'Titel', 0, 0, 'Srbija', '2016-05-24 19:06:45', 1),
(176, '295', 'Tornjoš', 0, 0, 'Srbija', '2016-05-24 19:06:45', 1),
(177, '296', 'Totovo Selo', 0, 0, 'Srbija', '2016-05-24 19:06:46', 1),
(178, '297', 'Tovariševo', 0, 0, 'Srbija', '2016-05-24 19:06:46', 1),
(179, '298', 'Trešnjevac', 0, 0, 'Srbija', '2016-05-24 19:06:46', 1),
(180, '299', 'Utrine', 0, 0, 'Srbija', '2016-05-24 19:06:46', 1),
(181, '300', 'Utrine-Obornjača', 0, 0, 'Srbija', '2016-05-24 19:06:46', 1),
(182, '301', 'Vajska', 0, 0, 'Srbija', '2016-05-24 19:06:46', 1),
(183, '302', 'Vrbas', 0, 0, 'Srbija', '2016-05-24 19:06:46', 1),
(184, '303', 'Zmajevo', 0, 0, 'Srbija', '2016-05-24 19:06:46', 1);

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
(2, 'marija', 'biskupija', '2016-04-19 18:31:19', 1);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=6 ;

--
-- Dumping data for table `svojstvo_osiguranika`
--

INSERT INTO `svojstvo_osiguranika` (`id`, `sifra`, `naziv`, `datum_vreme`, `aktivan`) VALUES
(1, '1', 'Samostalni djelatnik', '2016-03-11 03:10:11', 1),
(2, '2', 'Poljoprivrednik', '2016-03-11 03:10:30', 1),
(3, '3', 'Svećenik', '2016-03-11 03:10:50', 1),
(4, '0', '', '2016-03-11 03:34:36', 1),
(5, '4', 'Vjeroučitelj', '2016-05-24 21:23:59', 1);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=6 ;

--
-- Dumping data for table `svojstvo_u_sluzbi`
--

INSERT INTO `svojstvo_u_sluzbi` (`id`, `sifra`, `naziv`, `datum_vreme`, `aktivan`) VALUES
(1, '0', '', '2016-04-02 20:32:09', 1),
(2, '1', 'Župni vikar', '2016-04-02 20:32:35', 1),
(3, '2', 'Upravitelj župe', '2016-04-02 20:32:49', 1),
(4, '3', 'Župnik', '2016-04-02 20:33:03', 1),
(5, '4', 'Rektor', '2016-05-24 19:09:56', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tip_entiteta`
--

DROP TABLE IF EXISTS `tip_entiteta`;
CREATE TABLE IF NOT EXISTS `tip_entiteta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sifra` varchar(45) COLLATE utf8_bin NOT NULL,
  `naziv` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `datum_vreme` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `aktivan` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `sifra` (`sifra`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=6 ;

--
-- Dumping data for table `tip_entiteta`
--

INSERT INTO `tip_entiteta` (`id`, `sifra`, `naziv`, `datum_vreme`, `aktivan`) VALUES
(1, '0', '', '2016-05-28 04:11:31', 1),
(2, '1', 'Svećenik', '2016-05-28 04:12:02', 1),
(3, '2', 'Bogoslov', '2016-05-28 04:12:13', 1),
(4, '3', 'Đakon', '2016-05-28 04:12:23', 1),
(5, '4', 'Stalni đakon', '2016-05-28 04:12:37', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ustanove`
--

DROP TABLE IF EXISTS `ustanove`;
CREATE TABLE IF NOT EXISTS `ustanove` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sifra` varchar(45) COLLATE utf8_bin NOT NULL,
  `naziv` varchar(100) COLLATE utf8_bin NOT NULL,
  `oslovljavanje_id` int(11) NOT NULL,
  `oslovljavanje_sifra` varchar(45) COLLATE utf8_bin NOT NULL,
  `oslovljavanje` varchar(50) COLLATE utf8_bin NOT NULL,
  `adresa` varchar(50) COLLATE utf8_bin NOT NULL,
  `ptt_broj` varchar(45) COLLATE utf8_bin NOT NULL,
  `mesto` varchar(50) COLLATE utf8_bin NOT NULL,
  `pak` varchar(45) COLLATE utf8_bin NOT NULL,
  `telefon` varchar(50) COLLATE utf8_bin NOT NULL,
  `fax` varchar(50) COLLATE utf8_bin NOT NULL,
  `email` varchar(50) COLLATE utf8_bin NOT NULL,
  `web` varchar(100) COLLATE utf8_bin NOT NULL,
  `datum_vreme` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `aktivan` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `sifra` (`sifra`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=9 ;

--
-- Dumping data for table `ustanove`
--

INSERT INTO `ustanove` (`id`, `sifra`, `naziv`, `oslovljavanje_id`, `oslovljavanje_sifra`, `oslovljavanje`, `adresa`, `ptt_broj`, `mesto`, `pak`, `telefon`, `fax`, `email`, `web`, `datum_vreme`, `aktivan`) VALUES
(1, '0', '', 0, '', '', '', '', '', '', '', '', '', '', '2016-03-27 12:18:44', 1),
(2, '1', 'Biskupski ordinarijat', 0, '', 'Prečasni', 'Trg svete Terezije 3', '24000', 'Subotica', '450521', '+381(0)24/553-610', '381024/552-497', '', 'www.suboticka-biskupija.info', '2016-03-27 12:19:17', 1),
(3, '2', 'Malo sjemenište „Paulinum“', 0, '', '', '', '', '', '', '', '', '', '', '2016-05-24 19:21:21', 1),
(4, '3', 'Gimnazija „Paulinum“', 0, '', '', '', '', '', '', '', '', '', '', '2016-05-24 19:21:34', 1),
(5, '4', 'Pastoralni centar „Autustinianum“', 0, '', '', '', '', '', '', '', '', '', '', '2016-05-24 19:21:44', 1),
(6, '5', 'Teološko-katehetski institut', 0, '', '', '', '', '', '', '', '', '', '', '2016-05-24 19:22:03', 1),
(7, '6', 'Svećenički dom „Josephinum“', 0, '', '', '', '', '', '', '', '', '', '', '2016-05-24 19:22:19', 1),
(8, '7', 'Caritas Subotičke biskupije', 0, '', '', '', '', '', '', '', '', '', '', '2016-05-24 19:22:30', 1);

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
  `pak` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `telefon` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `fax` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `email` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `web` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `sifra` varchar(45) COLLATE utf8_bin NOT NULL,
  `naziv` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `jezicnost` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `arhiprezbiterat` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `dekanat` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `oslovljavanje` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `titul_zupe` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `adresa` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `ptt_broj` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `mesto` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `datum_vreme` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `aktivan` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `sifra` (`sifra`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=67 ;

--
-- Dumping data for table `zupa`
--

INSERT INTO `zupa` (`id`, `pak`, `telefon`, `fax`, `email`, `web`, `sifra`, `naziv`, `jezicnost`, `arhiprezbiterat`, `dekanat`, `oslovljavanje`, `titul_zupe`, `adresa`, `ptt_broj`, `mesto`, `datum_vreme`, `aktivan`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, '0', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-04-02 20:17:48', 1),
(2, '123', '024/471-965', '3213', 'a@a.com', 'www.info.inf', '1', 'Anđeli Čuvari', 'Dvojezična', 'Podunavski', 'Bački', 'Rimokatolička župa', '', 'Matije Korvina', '24000', 'Subotica', '2016-04-02 20:45:28', 1),
(3, NULL, NULL, NULL, NULL, NULL, '2', 'Bezgrešno Začeće Blažene Djevice Marije', NULL, 'Katedralni2', '', '', NULL, '', '24000 Subotica', NULL, '2016-04-02 20:46:25', 1),
(4, NULL, NULL, NULL, NULL, NULL, '4', 'Biskupijsko svetište Majke Božje Bunarić', 'Dvojezična', 'Bečki', 'Subotica - Stari Grad', 'Rimokatolička župa', NULL, 'Harambašićeva 7', '24000 Subotica', NULL, '2016-04-20 19:19:24', 1),
(5, NULL, NULL, NULL, NULL, NULL, '5', 'Blažena Djevica Marija kraljica svijeta', 'Nedefinisan', '', 'Apatinski', '', NULL, '', '', NULL, '2016-05-24 17:35:50', 1),
(6, NULL, NULL, NULL, NULL, NULL, '6', 'Blažena Djevica Marija pomoćnica kršćana', NULL, '', '', '', NULL, '', '', NULL, '2016-05-24 17:36:09', 1),
(7, NULL, NULL, NULL, NULL, NULL, '7', 'Ime Marijino', NULL, '', '', '', NULL, '', '', NULL, '2016-05-24 17:36:28', 1),
(8, NULL, NULL, NULL, NULL, NULL, '8', 'Isus Dobri Pastir', NULL, '', '', '', NULL, '', '', NULL, '2016-05-24 17:36:42', 1),
(9, NULL, NULL, NULL, NULL, NULL, '9', 'Isus Radnik', NULL, '', '', '', NULL, '', '', NULL, '2016-05-24 17:36:55', 1),
(10, NULL, NULL, NULL, NULL, NULL, '10', 'Kraljica svete Krunice', NULL, '', '', '', NULL, '', '', NULL, '2016-05-24 17:37:09', 1),
(11, NULL, NULL, NULL, NULL, NULL, '11', 'Krist Spasitelj', NULL, '', '', '', NULL, '', '', NULL, '2016-05-24 17:37:22', 1),
(12, NULL, NULL, NULL, NULL, NULL, '12', 'Lurdska Gospa', NULL, '', '', '', NULL, '', '', NULL, '2016-05-24 17:37:39', 1),
(13, NULL, NULL, NULL, NULL, NULL, '13', 'Majka Crkve', NULL, '', '', '', NULL, '', '', NULL, '2016-05-24 17:37:52', 1),
(14, NULL, NULL, NULL, NULL, NULL, '14', 'Marija Majka Crkve', NULL, '', '', '', NULL, '', '', NULL, '2016-05-24 17:38:05', 1),
(15, 'safd', 'sd', 'sdf', 'as', 'asdf', '15', 'Obraćenje svetog Pavla', 'Dvojezična', 'Bečki', 'Apatinski', 'Rimokatolička župa', 'asfd', 'safd', 'safd', 'sadf', '2016-05-24 17:38:17', 1),
(16, NULL, NULL, NULL, NULL, NULL, '16', 'Pohođenje Blažene Djevice Marije', NULL, '', '', '', NULL, '', '', NULL, '2016-05-24 17:38:29', 1),
(17, NULL, NULL, NULL, NULL, NULL, '17', 'Prečisto Srce Marijino', NULL, '', '', '', NULL, '', '', NULL, '2016-05-24 17:38:40', 1),
(18, NULL, NULL, NULL, NULL, NULL, '18', 'Presveto Srce Isusovo', NULL, '', '', '', NULL, '', '', NULL, '2016-05-24 17:38:50', 1),
(19, NULL, NULL, NULL, NULL, NULL, '19', 'Presveto Trojstvo', NULL, '', '', '', NULL, '', '', NULL, '2016-05-24 17:39:00', 1),
(20, NULL, NULL, NULL, NULL, NULL, '20', 'Razlaz svetih Apostola', NULL, '', '', '', NULL, '', '', NULL, '2016-05-24 17:39:11', 1),
(21, NULL, NULL, NULL, NULL, NULL, '21', 'Rođenje Blažene Djevice Marije', NULL, '', '', '', NULL, '', '', NULL, '2016-05-24 17:39:25', 1),
(22, NULL, NULL, NULL, NULL, NULL, '22', 'Rođenje svetog Ivana Krstitelja', NULL, '', '', '', NULL, '', '', NULL, '2016-05-24 17:39:36', 1),
(23, NULL, NULL, NULL, NULL, NULL, '23', 'Sniježna Gospa', NULL, '', '', '', NULL, '', '', NULL, '2016-05-24 17:39:48', 1),
(24, NULL, NULL, NULL, NULL, NULL, '24', 'Sveta Ana', NULL, '', '', '', NULL, '', '', NULL, '2016-05-24 17:39:59', 1),
(25, NULL, NULL, NULL, NULL, NULL, '25', 'Sveta Elizabeta', NULL, '', '', '', NULL, '', '', NULL, '2016-05-24 17:40:11', 1),
(26, NULL, NULL, NULL, NULL, NULL, '26', 'Sveta Katarina', NULL, '', '', '', NULL, '', '', NULL, '2016-05-24 17:40:23', 1),
(27, NULL, NULL, NULL, NULL, NULL, '27', 'Sveta Mala Terezija', NULL, '', '', '', NULL, '', '', NULL, '2016-05-24 17:40:48', 1),
(28, NULL, NULL, NULL, NULL, NULL, '28', 'Sveta Margareta', NULL, '', '', '', NULL, '', '', NULL, '2016-05-24 17:41:03', 1),
(29, NULL, NULL, NULL, NULL, NULL, '29', 'Sveta Obitelj', NULL, '', '', '', NULL, '', '', NULL, '2016-05-24 17:41:15', 1),
(30, NULL, NULL, NULL, NULL, NULL, '30', 'Sveta Rozalija', NULL, '', '', '', NULL, '', '', NULL, '2016-05-24 17:41:27', 1),
(31, NULL, NULL, NULL, NULL, NULL, '31', 'Sveta Terezija Avilska', NULL, '', '', '', NULL, '', '', NULL, '2016-05-24 17:41:38', 1),
(32, NULL, NULL, NULL, NULL, NULL, '32', 'Sveti Adalbert', NULL, '', '', '', NULL, '', '', NULL, '2016-05-24 17:41:51', 1),
(33, NULL, NULL, NULL, NULL, NULL, '33', 'Sveti Antun', NULL, '', '', '', NULL, '', '', NULL, '2016-05-24 17:42:01', 1),
(34, NULL, NULL, NULL, NULL, NULL, '34', 'Sveti Augustin', NULL, '', '', '', NULL, '', '', NULL, '2016-05-24 17:42:10', 1),
(35, NULL, NULL, NULL, NULL, NULL, '35', 'Sveti Ferdinand', NULL, '', '', '', NULL, '', '', NULL, '2016-05-24 17:42:21', 1),
(36, NULL, NULL, NULL, NULL, NULL, '36', 'Sveti Filip i Jakov', NULL, '', '', '', NULL, '', '', NULL, '2016-05-24 17:42:32', 1),
(37, NULL, NULL, NULL, NULL, NULL, '37', 'Sveti Franjo', NULL, '', '', '', NULL, '', '', NULL, '2016-05-24 17:42:46', 1),
(38, NULL, NULL, NULL, NULL, NULL, '38', 'Sveti Gerard', NULL, '', '', '', NULL, '', '', NULL, '2016-05-24 17:42:57', 1),
(39, NULL, NULL, NULL, NULL, NULL, '39', 'Sveti Ilija', NULL, '', '', '', NULL, '', '', NULL, '2016-05-24 17:43:08', 1),
(40, NULL, NULL, NULL, NULL, NULL, '40', 'Sveti Ivan Arški', NULL, '', '', '', NULL, '', '', NULL, '2016-05-24 17:43:19', 1),
(41, NULL, NULL, NULL, NULL, NULL, '41', 'Sveti Ivan Krstitelj', NULL, '', '', '', NULL, '', '', NULL, '2016-05-24 17:43:30', 1),
(42, NULL, NULL, NULL, NULL, NULL, '42', 'Sveti Ivan Nepomuk', NULL, '', '', '', NULL, '', '', NULL, '2016-05-24 17:43:47', 1),
(43, NULL, NULL, NULL, NULL, NULL, '43', 'Sveti Jakov', NULL, '', '', '', NULL, '', '', NULL, '2016-05-24 17:43:59', 1),
(44, NULL, NULL, NULL, NULL, NULL, '44', 'Sveti Josip', NULL, '', '', '', NULL, '', '', NULL, '2016-05-24 17:44:09', 1),
(45, NULL, NULL, NULL, NULL, NULL, '45', 'Sveti Josip Radnik', NULL, '', '', '', NULL, '', '', NULL, '2016-05-24 17:44:20', 1),
(46, NULL, NULL, NULL, NULL, NULL, '46', 'Sveti Juraj', NULL, '', '', '', NULL, '', '', NULL, '2016-05-24 17:44:31', 1),
(47, NULL, NULL, NULL, NULL, NULL, '47', 'Sveti Karlo Boromejski', NULL, '', '', '', NULL, '', '', NULL, '2016-05-24 17:44:47', 1),
(48, NULL, NULL, NULL, NULL, NULL, '48', 'Sveti Ladislav kralj', NULL, '', '', '', NULL, '', '', NULL, '2016-05-24 17:44:57', 1),
(49, NULL, NULL, NULL, NULL, NULL, '49', 'Sveti Lovro', NULL, '', '', '', NULL, '', '', NULL, '2016-05-24 17:45:07', 1),
(50, NULL, NULL, NULL, NULL, NULL, '50', 'Sveti Marko evanđelist', NULL, '', '', '', NULL, '', '', NULL, '2016-05-24 17:45:17', 1),
(51, NULL, NULL, NULL, NULL, NULL, '51', 'Sveti Martin', NULL, '', '', '', NULL, '', '', NULL, '2016-05-24 17:45:27', 1),
(52, NULL, NULL, NULL, NULL, NULL, '52', 'Sveti Matej', NULL, '', '', '', NULL, '', '', NULL, '2016-05-24 17:45:41', 1),
(53, NULL, NULL, NULL, NULL, NULL, '53', 'Sveti Mihael arkanđeo', NULL, '', '', '', NULL, '', '', NULL, '2016-05-24 17:45:52', 1),
(54, NULL, NULL, NULL, NULL, NULL, '54', 'Sveti Mirko', NULL, '', '', '', NULL, '', '', NULL, '2016-05-24 17:46:02', 1),
(55, NULL, NULL, NULL, NULL, NULL, '55', 'Sveti Nikola Tavelić', NULL, '', '', '', NULL, '', '', NULL, '2016-05-24 17:46:12', 1),
(56, NULL, NULL, NULL, NULL, NULL, '56', 'Sveti Pavao', NULL, '', '', '', NULL, '', '', NULL, '2016-05-24 17:46:23', 1),
(57, NULL, NULL, NULL, NULL, NULL, '57', 'Sveti Petar', NULL, '', '', '', NULL, '', '', NULL, '2016-05-24 17:46:32', 1),
(58, NULL, NULL, NULL, NULL, NULL, '58', 'Sveti Petar i Pavao', NULL, '', '', '', NULL, '', '', NULL, '2016-05-24 17:46:43', 1),
(59, NULL, NULL, NULL, NULL, NULL, '59', 'Sveti Rok', NULL, '', '', '', NULL, '', '', NULL, '2016-05-24 17:46:52', 1),
(60, NULL, NULL, NULL, NULL, NULL, '60', 'Sveti Stjepan kralj', NULL, '', '', '', NULL, '', '', NULL, '2016-05-24 17:47:03', 1),
(61, NULL, NULL, NULL, NULL, NULL, '61', 'Sveti Šimun i Juda Tadej', NULL, '', '', '', NULL, '', '', NULL, '2016-05-24 17:47:14', 1),
(62, NULL, NULL, NULL, NULL, NULL, '62', 'Svi Sveti', NULL, '', '', '', NULL, '', '', NULL, '2016-05-24 17:47:27', 1),
(63, NULL, NULL, NULL, NULL, NULL, '63', 'Uskrsnuće Isusovo', NULL, '', '', '', NULL, '', '', NULL, '2016-05-24 17:47:38', 1),
(64, NULL, NULL, NULL, NULL, NULL, '64', 'Uzašašće Gospodina našega Isusa Krista', NULL, '', '', '', NULL, '', '', NULL, '2016-05-24 17:47:52', 1),
(65, NULL, NULL, NULL, NULL, NULL, '65', 'Uznesenje Blažene Djevice Marije', NULL, '', '', '', NULL, '', '', NULL, '2016-05-24 17:48:04', 1),
(66, NULL, NULL, NULL, NULL, NULL, '66', 'Uzvišenje svetog Križa', NULL, '', '', '', NULL, '', '', NULL, '2016-05-24 17:48:15', 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
