delimiter $$

CREATE DATABASE `laboratorio` /*!40100 DEFAULT CHARACTER SET utf8 */$$

delimiter $$

CREATE TABLE `laboratorio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) DEFAULT NULL,
  `local` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8$$

delimiter $$

CREATE TABLE `software` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) DEFAULT NULL,
  `versao` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8$$

delimiter $$

CREATE TABLE `lab_soft` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_laboratorio` int(11) NOT NULL,
  `id_software` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_ID_LAB` (`id_laboratorio`),
  KEY `FK_ID_SOFT` (`id_software`),
  CONSTRAINT `FK_ID_LAB` FOREIGN KEY (`id_laboratorio`) REFERENCES `laboratorio` (`id`),
  CONSTRAINT `FK_ID_SOFT` FOREIGN KEY (`id_software`) REFERENCES `software` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8$$

