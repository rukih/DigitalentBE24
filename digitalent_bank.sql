-- Adminer 4.6.3 MySQL dump

CREATE DATABASE IF NOT EXISTS digitalent_bank;
USE digitalent_bank;

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

CREATE TABLE `accounts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_account` longtext,
  `name` longtext,
  `password` longtext,
  `account_number` bigint(20) DEFAULT NULL,
  `saldo` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `accounts` (`id`, `id_account`, `name`, `password`, `account_number`, `saldo`) VALUES
(7,	'id-414',	'Ani',	'$2a$10$diB.WjZXvJgZ2I3p6iEmpOVZ4yJXNErd9j.B6Xwd3dLRU.EC7oiCW',	832712,	919124),
(8,	'id-650',	'Toni',	'$2a$10$oKIVULbSFHsMMPW.731mEuGUUGPAM3tRWPPCs9kPG7iHF0odTShY6',	577718,	69877);

CREATE TABLE `transactions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `transaction_type` bigint(20) DEFAULT NULL,
  `transaction_description` longtext,
  `sender` bigint(20) DEFAULT NULL,
  `amount` bigint(20) DEFAULT NULL,
  `recipient` bigint(20) DEFAULT NULL,
  `timestamp` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `transactions` (`id`, `transaction_type`, `transaction_description`, `sender`, `amount`, `recipient`, `timestamp`) VALUES
(1,	0,	'',	832712,	1000,	577718,	1604379497),
(2,	0,	'Maaf yang tadi kurang',	832712,	1000,	577718,	1604379579),
(3,	1,	'',	832712,	1000,	0,	1604379717),
(4,	2,	'',	832712,	2000,	0,	1604379834),
(5,	2,	'nabung',	577718,	3000,	577718,	1604441079),
(6,	1,	'bayar arisan',	577718,	5000,	0,	1604442368),
(7,	1,	'bayar arisan',	577718,	5000,	0,	1604442396),
(8,	2,	'nabung dikit',	577718,	5,	577718,	1604461768),
(9,	1,	'ambil dikit',	577718,	1,	0,	1604461852),
(10,	2,	'nabung',	577718,	1,	577718,	1604462488),
(11,	2,	'dikit',	577718,	1,	577718,	1604463257),
(12,	1,	'dikit',	577718,	1,	0,	1604463271),
(13,	0,	'sedekah',	577718,	1,	832712,	1604463296),
(14,	2,	'nabung dikit aja dulu',	577718,	6,	577718,	1604464455),
(15,	1,	'jajan',	577718,	10,	0,	1604464519),
(16,	1,	'sedekah',	577718,	100,	0,	1604464796),
(17,	1,	'beli buku',	577718,	900,	0,	1604465479),
(18,	1,	'makan siang',	577718,	4000,	0,	1604465831),
(19,	0,	'ngasih',	577718,	10000,	832712,	1604466045),
(20,	0,	'ngasih',	577718,	10000,	832712,	1604466078),
(21,	0,	'iseng',	577718,	123,	832712,	1604466716);

-- 2020-11-07 20:01:45
