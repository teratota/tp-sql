-- --------------------------------------------------------
-- Hôte :                        localhost
-- Version du serveur:           5.7.19 - MySQL Community Server (GPL)
-- SE du serveur:                Win64
-- HeidiSQL Version:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Export de la structure de la base pour tp-sql
CREATE DATABASE IF NOT EXISTS `tp-sql` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `tp-sql`;

-- Export de la structure de la table tp-sql. assessment
CREATE TABLE IF NOT EXISTS `assessment` (
  `attempted` datetime NOT NULL,
  `passed` datetime DEFAULT NULL,
  `grade` int(11) DEFAULT NULL,
  `id_student` int(11) unsigned DEFAULT NULL,
  `id_module` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`attempted`),
  KEY `id_student2` (`id_student`),
  KEY `id_module` (`id_module`),
  CONSTRAINT `id_module` FOREIGN KEY (`id_module`) REFERENCES `module` (`id`),
  CONSTRAINT `id_student2` FOREIGN KEY (`id_student`) REFERENCES `student` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Les données exportées n'étaient pas sélectionnées.
-- Export de la structure de la table tp-sql. enrolment
CREATE TABLE IF NOT EXISTS `enrolment` (
  `from` datetime NOT NULL,
  `to` datetime DEFAULT NULL,
  `id_student` int(10) unsigned DEFAULT NULL,
  `id_year` int(10) unsigned DEFAULT NULL,
  KEY `id_student` (`id_student`),
  KEY `id_year` (`id_year`),
  CONSTRAINT `id_student` FOREIGN KEY (`id_student`) REFERENCES `student` (`id`),
  CONSTRAINT `id_year` FOREIGN KEY (`id_year`) REFERENCES `year` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Les données exportées n'étaient pas sélectionnées.
-- Export de la structure de la table tp-sql. module
CREATE TABLE IF NOT EXISTS `module` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `year` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK-year` (`year`),
  CONSTRAINT `FK-year` FOREIGN KEY (`year`) REFERENCES `year` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Les données exportées n'étaient pas sélectionnées.
-- Export de la structure de la table tp-sql. student
CREATE TABLE IF NOT EXISTS `student` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) NOT NULL DEFAULT '0',
  `lastname` varchar(255) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Les données exportées n'étaient pas sélectionnées.
-- Export de la structure de la table tp-sql. year
CREATE TABLE IF NOT EXISTS `year` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `label` varchar(255) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Les données exportées n'étaient pas sélectionnées.
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
