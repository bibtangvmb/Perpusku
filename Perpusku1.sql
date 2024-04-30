-- --------------------------------------------------------
-- Host:                         localhost
-- Versi server:                 10.4.24-MariaDB - mariadb.org binary distribution
-- OS Server:                    Win64
-- HeidiSQL Versi:               12.0.0.6468
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Membuang struktur basisdata untuk perpusku
CREATE DATABASE IF NOT EXISTS `perpusku` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `perpusku`;

-- membuang struktur untuk table perpusku.admins
CREATE TABLE IF NOT EXISTS `admins` (
  `username` varchar(50) NOT NULL DEFAULT '0',
  `password` varchar(500) DEFAULT NULL,
  `jk` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Membuang data untuk tabel perpusku.admins: ~1 rows (lebih kurang)
DELETE FROM `admins`;
INSERT INTO `admins` (`username`, `password`, `jk`, `status`) VALUES
	('bintangtzy', '858da246521bcdc8490ff01828e36f22', 1, 1),
	('tes', '202cb962ac59075b964b07152d234b70', 1, 1);

-- membuang struktur untuk table perpusku.books
CREATE TABLE IF NOT EXISTS `books` (
  `no_induk` varchar(50) NOT NULL,
  `judul` varchar(500) DEFAULT NULL,
  `penulis` varchar(500) DEFAULT NULL,
  `tahun` int(11) DEFAULT NULL,
  `penerbit` varchar(500) DEFAULT NULL,
  `subjek` varchar(50) DEFAULT NULL,
  `photo` text DEFAULT NULL,
  PRIMARY KEY (`no_induk`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Membuang data untuk tabel perpusku.books: ~0 rows (lebih kurang)
DELETE FROM `books`;

-- membuang struktur untuk table perpusku.customers
CREATE TABLE IF NOT EXISTS `customers` (
  `id_cus` varchar(50) NOT NULL DEFAULT '',
  `nama` varchar(500) DEFAULT NULL,
  `alamat` varchar(500) DEFAULT NULL,
  `telp` varchar(20) DEFAULT NULL,
  `jk` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_cus`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Membuang data untuk tabel perpusku.customers: ~0 rows (lebih kurang)
DELETE FROM `customers`;

-- membuang struktur untuk table perpusku.loans
CREATE TABLE IF NOT EXISTS `loans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_cus` varchar(50) DEFAULT NULL,
  `no_induk` varchar(50) DEFAULT NULL,
  `star-date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Membuang data untuk tabel perpusku.loans: ~0 rows (lebih kurang)
DELETE FROM `loans`;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
