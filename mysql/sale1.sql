-- Adminer 4.7.2 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP TABLE IF EXISTS `consume`;
CREATE TABLE `consume` (
  `id` int(11) NOT NULL,
  `customer` int(11) NOT NULL,
  `money` int(2) NOT NULL,
  `date` int(11) NOT NULL,
  KEY `customer` (`customer`),
  CONSTRAINT `consume_ibfk_1` FOREIGN KEY (`customer`) REFERENCES `customer` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '顾客编号（主键）',
  `name` varchar(16) COLLATE utf8_unicode_ci NOT NULL COMMENT '顾客姓名',
  `address` varchar(32) COLLATE utf8_unicode_ci NOT NULL COMMENT '地址',
  `Age` int(3) NOT NULL COMMENT '年龄',
  `Gender` int(3) NOT NULL COMMENT '性别',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `shop`;
CREATE TABLE `shop` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `Shop name` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `Telephone` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `shop` (`id`, `Shop name`, `address`, `Telephone`) VALUES
(1,	'蓝城百货店',	'南恩路',	3645001),
(2,	'蓝城百货店',	'南恩路',	3645001),
(3,	'蓝城百货店',	'南恩路',	3645001),
(4,	'蓝城百货店',	'南恩路',	3645001);

-- 2020-10-29 08:08:03
