-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 12, 2016 at 05:05 AM
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
  `photo` mediumblob,
  `datum_vreme` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `aktivan` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jmbg` (`jmbg`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=33 ;

--
-- Dumping data for table `licni_podaci`
--

INSERT INTO `licni_podaci` (`id`, `oslovljavanje_sifra`, `oslovljavanje_id`, `oslovljavanje`, `crkvena_titula_sifra`, `crkvena_titula_id`, `crkvena_titula`, `akademska_titula_sifra`, `akademska_titula_id`, `akademska_titula`, `jmbg`, `ime`, `prezime`, `ime_u_lk`, `prezime_u_lk`, `ime_oca`, `ime_majke`, `datum_rodjenja`, `mesto_rodjenja_id`, `mesto_rodjenja`, `mesto_rodjenja_sifra`, `srednje_obrazovanje_mesto_id`, `srednje_obrazovanje_mesto_sifra`, `srednje_obrazovanje_mesto`, `srednje_obrazovanje_skola_id`, `srednje_obrazovanje_skola_sifra`, `srednje_obrazovanje_skola`, `srednje_obrazovanje_od`, `srednje_obrazovanje_do`, `brprotokola`, `pol`, `drzavarodj`, `id_drzavarodj`, `adresa`, `ptt`, `id_ptt`, `telefon`, `e_mail`, `status`, `id_status`, `drzavljanstvo`, `id_drzavljanstvo`, `nacionalnost`, `id_nacionalnost`, `slika`, `banka_isplata`, `id_banka_isplata`, `racun_isplate`, `opstina`, `id_opstina`, `sifra`, `bogoslovija_mesto_id`, `bogoslovija_mesto_sifra`, `bogoslovija_mesto`, `bogoslovija_mesto1_id`, `bogoslovija_mesto1_sifra`, `bogoslovija_mesto1`, `bogoslovija_mesto2_id`, `bogoslovija_mesto2_sifra`, `bogoslovija_mesto2`, `bogoslovija_period_od`, `bogoslovija_period_do`, `bogoslovija_period_od1`, `bogoslovija_period_do1`, `bogoslovija_period_od2`, `bogoslovija_period_do2`, `djakonat_mesto_id`, `djakonat_mesto_sifra`, `djakonat_mesto`, `djakonat_datum`, `djakonat_zareditelj_id`, `djakonat_zareditelj_sifra`, `djakonat_zareditelj`, `prezbiterat_mesto_id`, `prezbiterat_mesto_sifra`, `prezbiterat_mesto`, `prezbiterat_datum`, `prezbiterat_zareditelj_id`, `prezbiterat_zareditelj_sifra`, `prezbiterat_zareditelj`, `dodiplomski_studij_mesto_id`, `dodiplomski_studij_mesto_sifra`, `dodiplomski_studij_mesto`, `dodiplomski_studij_naziv_ustanove_id`, `dodiplomski_studij_naziv_ustanove_sifra`, `dodiplomski_studij_naziv_ustanove`, `dodiplomski_studij_period_od`, `dodiplomski_studij_period_do`, `magisterij_mesto_id`, `magisterij_mesto_sifra`, `magisterij_mesto`, `magisterij_naziv_ustanove_id`, `magisterij_naziv_ustanove_sifra`, `magisterij_naziv_ustanove`, `magisterij_period_od`, `magisterij_period_do`, `doktorat_mesto_id`, `doktorat_mesto_sifra`, `doktorat_mesto`, `doktorat_naziv_ustanove_id`, `doktorat_naziv_ustanove_sifra`, `doktorat_naziv_ustanove`, `doktorat_period_od`, `doktorat_period_do`, `photo`, `datum_vreme`, `aktivan`) VALUES
(1, 0, 0, '', 0, 0, '', 0, 0, '', '32132', 'őúéáű', 'ćčšđž', '', '', 'oiii', 'ú?áé', '2016-03-14', NULL, '-', 0, 0, 0, '', 0, 0, '', '0000-00-00', '0000-00-00', NULL, NULL, '', '', '', '', 0, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', 0, '', '', '0000-00-00', 0, '', '', 0, '', '', '0000-00-00', 0, '', '', 0, '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', NULL, '2016-04-10 16:17:12', 1),
(2, 0, 0, '', 0, 0, '', 0, 0, '', '321321', 'pera', 'mika', '', '', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '', 0, 0, '', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', 0, '', '', '0000-00-00', 0, '', '', 0, '', '', '0000-00-00', 0, '', '', 0, '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', NULL, '2016-04-10 16:17:12', 1),
(3, 0, 0, '', 0, 0, '', 0, 0, '', '12', 'ime', ' prezime', '', '', 'ime oca', 'ime majke', '2016-03-15', NULL, 'PANCEVO', 0, 0, 0, '', 0, 0, '', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', 0, '', '', '0000-00-00', 0, '', '', 0, '', '', '0000-00-00', 0, '', '', 0, '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', NULL, '2016-04-10 16:17:12', 1),
(4, 0, 0, '', 0, 0, '', 0, 0, '', '2354234', 'Š???élá', ' wqyxvadfjkléá?', '', '', 'ad', 'álé-:_:lkáélká', '2016-03-01', NULL, NULL, 0, 0, 0, '', 0, 0, '', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', 0, '', '', '0000-00-00', 0, '', '', 0, '', '', '0000-00-00', 0, '', '', 0, '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', NULL, '2016-04-10 16:17:12', 1),
(5, 0, 0, '', 0, 0, '', 0, 0, '', '4356345', 'kléákléá', ' kláéklkléákl', '', '', 'kléákléákléá', 'fghdfhgdf', '2016-03-01', NULL, NULL, 0, 0, 0, '', 0, 0, '', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', 0, '', '', '0000-00-00', 0, '', '', 0, '', '', '0000-00-00', 0, '', '', 0, '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', NULL, '2016-04-10 16:17:12', 1),
(6, 0, 0, '', 0, 0, '', 0, 0, '', '235234', '3452345', '23452345', '', '', '2345234', '23452345', '2016-03-09', NULL, 'SUBOTICA', 0, 0, 0, '', 0, 0, '', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', 0, '', '', '0000-00-00', 0, '', '', 0, '', '', '0000-00-00', 0, '', '', 0, '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', NULL, '2016-04-10 16:17:12', 1),
(7, 0, 0, '', 0, 0, '', 0, 0, '', 'adfa55', '', ' ', '', '', '', '', '2016-03-06', NULL, '-', 0, 0, 0, '', 0, 0, '', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', 0, '', '', '0000-00-00', 0, '', '', 0, '', '', '0000-00-00', 0, '', '', 0, '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', NULL, '2016-04-10 16:17:12', 1),
(8, 0, 0, '', 0, 0, '', 0, 0, '', '123', 'Krstic', ' Borivoje', '', '', 'Marko', 'Janja', '2016-03-15', NULL, 'BEOGRAD', 0, 0, 0, '', 0, 0, '', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', 0, '', '', '0000-00-00', 0, '', '', 0, '', '', '0000-00-00', 0, '', '', 0, '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', NULL, '2016-04-10 16:17:12', 1),
(9, 0, 0, '', 0, 0, '', 0, 0, '', '12344', 'Krstic', ' Borivoje', '', '', 'Marko', 'Janja', '2016-03-15', NULL, 'BEOGRAD', 0, 0, 0, '', 0, 0, '', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', 0, '', '', '0000-00-00', 0, '', '', 0, '', '', '0000-00-00', 0, '', '', 0, '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', NULL, '2016-04-10 16:17:12', 1),
(10, 0, 0, '', 0, 0, '', 0, 0, '', 'qqqqqq', 'wwwwwwwwwwwwwww', ' eeeeeeeeeeeeeeee', '', '', 'rrrrrrrrrrr', 'tttttttttttt', '2016-03-15', NULL, 'SUBOTICA', 0, 0, 0, '', 0, 0, '', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', 0, '', '', '0000-00-00', 0, '', '', 0, '', '', '0000-00-00', 0, '', '', 0, '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', NULL, '2016-04-10 16:17:12', 1),
(11, 0, 0, '', 0, 0, '', 0, 0, '', 'qqqqqqq', 'wwwwwwwwwwwwwww', ' eeeeeeeeeeeeeeee', '', '', 'rrrrrrrrrrr', 'tttttttttttt', '2016-03-15', NULL, 'SUBOTICA', 0, 0, 0, '', 0, 0, '', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', 0, '', '', '0000-00-00', 0, '', '', 0, '', '', '0000-00-00', 0, '', '', 0, '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', NULL, '2016-04-10 16:17:12', 1),
(12, 0, 0, '', 0, 0, '', 0, 0, '', 'werrrrrrree', 'wwwwwwwwwww', ' eeeeeeeeee', '', '', 'rrrrrrrrrrr', 'tttttttttttttttt', '2016-03-15', NULL, 'SUBOTICA', 0, 0, 0, '', 0, 0, '', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', 0, '', '', '0000-00-00', 0, '', '', 0, '', '', '0000-00-00', 0, '', '', 0, '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', NULL, '2016-04-10 16:17:12', 1),
(13, 0, 0, '', 0, 0, '', 0, 0, '', 'werrrrrrreeeeee', 'wwwwwwwwwww', ' eeeeeeeeee', '', '', 'rrrrrrrrrrr', 'tttttttttttttttt', '2016-03-15', NULL, 'SUBOTICA', 0, 0, 0, '', 0, 0, '', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', 0, '', '', '0000-00-00', 0, '', '', 0, '', '', '0000-00-00', 0, '', '', 0, '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', NULL, '2016-04-10 16:17:12', 1),
(14, 0, 0, '', 0, 0, '', 0, 0, '', 'nn', '', ' ', '', '', '', '', '2016-03-15', NULL, '-', 0, 0, 0, '', 0, 0, '', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', 0, '', '', '0000-00-00', 0, '', '', 0, '', '', '0000-00-00', 0, '', '', 0, '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', NULL, '2016-04-10 16:17:12', 1),
(15, 0, 0, '', 0, 0, '', 0, 0, '', '123b', 'Mamužić', ' Đorđe', '', '', 'Pere', 'Tőnde-ooo', '1972-11-16', NULL, 'NOVI SAD', 0, 0, 0, '', 0, 0, '', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', 0, '', '', '0000-00-00', 0, '', '', 0, '', '', '0000-00-00', 0, '', '', 0, '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', NULL, '2016-04-10 16:17:12', 1),
(16, 0, 0, '', 0, 0, '', 0, 0, '', '1212', 'asdfas', ' asdfas', '', '', 'asdf', 'sadf', '2016-03-06', NULL, 'SOMBOR', 0, 0, 0, '', 0, 0, '', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1234', '123412', NULL, NULL, 'Madjarska', NULL, 'Madjar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', 0, '', '', '0000-00-00', 0, '', '', 0, '', '', '0000-00-00', 0, '', '', 0, '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', NULL, '2016-04-10 16:17:12', 1),
(17, 0, 0, '', 0, 0, '', 0, 0, '', '132', 'sdf', ' asfd', '', '', 'asfd', 'asdf', '2016-03-01', NULL, 'PANCEVO', 0, 0, 0, '', 0, 0, '', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'asdf', 'afsd', NULL, NULL, 'Madjarska', NULL, 'Hrvat', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', 0, '', '', '0000-00-00', 0, '', '', 0, '', '', '0000-00-00', 0, '', '', 0, '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', NULL, '2016-04-10 16:17:12', 1),
(18, 0, 0, '', 0, 0, '', 0, 0, '', '9998877', 'marko', ' markovic', '', '', 'kkjjuhyg', 'fffff', '1972-02-14', NULL, 'SUBOTICA', 0, 0, 0, '', 0, 0, '', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '888888', 'yyyy', NULL, NULL, 'Srbija', NULL, 'Slovak', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', 0, '', '', '0000-00-00', 0, '', '', 0, '', '', '0000-00-00', 0, '', '', 0, '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', NULL, '2016-04-10 16:17:12', 1),
(19, 0, 0, 'Prečasni', 0, 0, 'Mons.', 0, 0, 'Dr.', 'asdf', 'sadf', 'sdf', '', '', '', '', '2016-04-03', 0, '0  ', 0, 0, 0, '', 0, 0, '', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, '', NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 0, '', '0  ', 0, '', '0  ', 0, '', '0  ', '', '', '', '', '', '', 0, '', '0  ', '2016-04-03', 0, '', '', 0, '', '0  ', '2016-04-03', 0, '', '', 0, '', '0  ', 0, '', '', '', '', 0, '', '0  ', 0, '', '', '', '', 0, '', '0  ', 0, '', '', '', '', NULL, '2016-04-10 16:17:12', 1),
(20, 0, 0, 'Prečasni', 0, 0, 'Mons.', 0, 0, 'Dr.', 'asdffd', 'ime', 'prezime', 'ime u lk', 'prezime u lk', '', '', '2016-04-04', 0, '', 0, 0, 0, '', 0, 0, '', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, '', NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 0, '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', 0, '', '', '2016-04-04', 0, '', '', 0, '', '', '2016-04-04', 0, '', '', 0, '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '', '', NULL, '2016-04-10 16:17:12', 1),
(21, NULL, NULL, 'Prečasni', NULL, NULL, '', NULL, NULL, '', 'asdfasasd', 'asdf', 'adsf', 'adf', 'asdf', '', '', '2016-04-04', NULL, '', NULL, NULL, NULL, '', NULL, NULL, 'Paulinum', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'telef', '', NULL, NULL, '', NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, '', '2016-04-04', NULL, NULL, '', NULL, NULL, '', '2016-04-04', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', '', '', NULL, NULL, '', NULL, NULL, '', '', '', NULL, NULL, '', NULL, NULL, '', '', '', NULL, '2016-04-10 16:17:12', 1),
(22, NULL, NULL, 'Prečasni', NULL, NULL, 'Mons.', NULL, NULL, '', '343', 'ads', 'asdf', 'ads', 'as', '', '', '2016-04-05', NULL, '', NULL, NULL, NULL, '', NULL, NULL, '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, '', NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, '', '2016-04-05', NULL, NULL, '', NULL, NULL, '', '2016-04-05', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', '', '', NULL, NULL, '', NULL, NULL, '', '', '', NULL, NULL, '', NULL, NULL, '', '', '', NULL, '2016-04-10 16:17:12', 1),
(23, NULL, NULL, 'Prečasni', NULL, NULL, '', NULL, NULL, '', 'e', 'asd', 'adsf', '', '', '', '', '2016-04-06', NULL, '', NULL, NULL, NULL, '', NULL, NULL, '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, '', NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, '', '2016-04-06', NULL, NULL, '', NULL, NULL, '', '2016-04-06', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', '', '', NULL, NULL, '', NULL, NULL, '', '', '', NULL, NULL, '', NULL, NULL, '', '', '', NULL, '2016-04-10 16:17:12', 1),
(24, NULL, NULL, 'Prečasni', NULL, NULL, 'Mons.', NULL, NULL, 'Dr.', '1103976124445', 'Mari', 'Arnogyá', 'Mario', 'Krsmanić', 'Marpqwíő', 'Mariyá', '1972-09-12', NULL, 'SOMBOR', NULL, NULL, NULL, 'PANCEVO', NULL, NULL, 'Paulinum', '1981', '1985', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '021/330655', 'a@a.com', NULL, NULL, 'Srbija', NULL, 'Hrvat', NULL, 'D:skype.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SUBOTICA', NULL, NULL, 'NOVI SAD', NULL, NULL, '', '2001', '2005', '2011', '2015', '', '', NULL, NULL, 'SUBOTICA', '1998-01-01', NULL, NULL, 'Mons. Ćiril Kos', NULL, NULL, 'SOMBOR', '1990-01-01', NULL, NULL, 'Mons. Ćiril Kos', NULL, NULL, 'NOVI SAD', NULL, NULL, 'Paulinum', '2001', '2010', NULL, NULL, 'SUBOTICA', NULL, NULL, 'Paulinum', '2011', '2015', NULL, NULL, 'ZAGREB', NULL, NULL, 'Paulinum', '2014', '2015', NULL, '2016-04-10 16:17:12', 1),
(25, NULL, NULL, 'Prečasni', NULL, NULL, 'Mons.', NULL, NULL, 'Dr.', '2103977154488', 'ime', 'prezime', 'ime u lk', 'prezime u lk', 'ime oca', 'ime majke', '1981-01-14', NULL, 'SUBOTICA', NULL, NULL, NULL, 'MOSORIN', NULL, NULL, 'Paulinum', '1981', '1990', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '041/7778-8', 'a@a.cdd', NULL, NULL, 'Hrvatsko', NULL, 'Hrvat', NULL, 'D:skype.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SREMSKA MITROVICAA', NULL, NULL, 'PANCEVO', NULL, NULL, '', '1990', '1992', '1992', '1995', '', '', NULL, NULL, 'SOMBOR', '2001-09-19', NULL, NULL, 'Mons. Ćiril Kos', NULL, NULL, 'SREMSKA MITROVICAA', '2003-03-20', NULL, NULL, 'Mons. Ćiril Kos', NULL, NULL, 'SOMBOR', NULL, NULL, 'Paulinum', '2001', '2003', NULL, NULL, 'SUBOTICA', NULL, NULL, 'Paulinum', '2003', '2005', NULL, NULL, '', NULL, NULL, '', '', '', NULL, '2016-04-10 16:17:12', 1),
(27, NULL, NULL, 'Prečasni', NULL, NULL, 'Mons.', NULL, NULL, 'Dr.', '21039771544', 'ime', 'prezime', 'ime u lk', 'prezime u lk', 'ime oca', 'ime majke', '1981-01-14', NULL, 'SUBOTICA', NULL, NULL, NULL, 'MOSORIN', NULL, NULL, 'Paulinum', '1981', '1990', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '041/7778-8', 'a@a.cdd', NULL, NULL, 'Madjarska', NULL, 'Madjar', NULL, 'D:\\\\gui\\\\10042016\\\\photo27.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SREMSKA MITROVICAA', NULL, NULL, 'PANCEVO', NULL, NULL, '', '1990', '1992', '1992', '1995', '', '', NULL, NULL, 'SOMBOR', '2001-09-19', NULL, NULL, 'Mons. Ćiril Kos', NULL, NULL, 'SREMSKA MITROVICAA', '2003-03-20', NULL, NULL, 'Mons. Ćiril Kos', NULL, NULL, 'ZAGREB', NULL, NULL, 'Paulinum', '2001', '2003', NULL, NULL, 'SOMBOR', NULL, NULL, 'Paulinum', '2003', '2005', NULL, NULL, 'SOMBOR', NULL, NULL, 'Paulinum', '41', '52', NULL, '2016-04-10 16:17:12', 1),
(28, NULL, NULL, 'Prečasni', NULL, NULL, 'Mons.', NULL, NULL, 'Dr.', '123456', 'pera', 'peraa', 'pera', 'peraa', '', '', '2016-04-08', NULL, '', NULL, NULL, NULL, '', NULL, NULL, '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, '', NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, '', '2016-04-08', NULL, NULL, '', NULL, NULL, '', '2016-04-08', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', '', '', NULL, NULL, '', NULL, NULL, '', '', '', NULL, NULL, '', NULL, NULL, '', '', '', NULL, '2016-04-10 16:17:12', 1),
(29, NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', 'mika', 'mika', 'mika', 'mika', 'mika', '', '', '1900-01-01', NULL, '', NULL, NULL, NULL, '', NULL, NULL, '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, '', NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, '', '1900-01-01', NULL, NULL, '', NULL, NULL, '', '1900-01-01', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', '', '', NULL, NULL, '', NULL, NULL, '', '', '', NULL, NULL, '', NULL, NULL, '', '', '', NULL, '2016-04-10 16:17:12', 1),
(30, NULL, NULL, 'Prečasni', NULL, NULL, '', NULL, NULL, '', 'ab', 'a', 'b', 'a', 'b', '', '', '1900-01-01', NULL, '', NULL, NULL, NULL, '', NULL, NULL, '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, '', NULL, '', NULL, 'D:/photo27.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, '', '1900-01-01', NULL, NULL, '', NULL, NULL, '', '1900-01-01', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', '', '', NULL, NULL, '', NULL, NULL, '', '', '', NULL, NULL, '', NULL, NULL, '', '', '', NULL, '2016-04-10 16:41:43', 1),
(31, NULL, NULL, 'Prečasni', NULL, NULL, '', NULL, NULL, '', '31', 'c', 'd', 'c', 'd', '', '', '1900-01-01', NULL, '', NULL, NULL, NULL, '', NULL, NULL, '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, '', NULL, '', NULL, 'D:\\gui\\10042016\\photo27.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, '', '1900-01-01', NULL, NULL, '', NULL, NULL, '', '1900-01-01', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', '', '', NULL, NULL, '', NULL, NULL, '', '', '', NULL, NULL, '', NULL, NULL, '', '', '', NULL, '2016-04-11 02:07:35', 1),
(32, NULL, NULL, '', NULL, NULL, 'Mons.', NULL, NULL, '', '32', '32', 'f', '32', 'f', '', '', '1900-01-01', NULL, '', NULL, NULL, NULL, '', NULL, NULL, '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, '', NULL, '', NULL, 'D:\\gui\\10042016\\photo27.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, '', '1900-01-01', NULL, NULL, '', NULL, NULL, '', '1900-01-01', NULL, NULL, '', NULL, NULL, '', NULL, NULL, '', '', '', NULL, NULL, '', NULL, NULL, '', '', '', NULL, NULL, '', NULL, NULL, '', '', '', NULL, '2016-04-11 04:04:33', 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
