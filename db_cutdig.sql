-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versi server:                 5.6.20 - MySQL Community Server (GPL)
-- OS Server:                    Win32
-- HeidiSQL Versi:               9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Membuang struktur basisdata untuk db_cutdig
CREATE DATABASE IF NOT EXISTS `db_cutdig` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `db_cutdig`;

-- membuang struktur untuk table db_cutdig.tb_access
CREATE TABLE IF NOT EXISTS `tb_access` (
  `id_access` int(11) NOT NULL AUTO_INCREMENT,
  `id_menus` int(11) DEFAULT NULL,
  `id_users` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id_access`)
) ENGINE=InnoDB AUTO_INCREMENT=285 DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel db_cutdig.tb_access: ~10 rows (lebih kurang)
/*!40000 ALTER TABLE `tb_access` DISABLE KEYS */;
INSERT INTO `tb_access` (`id_access`, `id_menus`, `id_users`, `status`) VALUES
	(275, 1, 3, 0),
	(276, 4, 3, 0),
	(277, 1, 2, 0),
	(278, 4, 2, 0),
	(279, 1, 1, 0),
	(280, 3, 1, 0),
	(281, 1, 4, 0),
	(282, 3, 4, 0),
	(283, 5, 4, 0),
	(284, 2, 4, 0);
/*!40000 ALTER TABLE `tb_access` ENABLE KEYS */;

-- membuang struktur untuk table db_cutdig.tb_active
CREATE TABLE IF NOT EXISTS `tb_active` (
  `id_active` int(11) NOT NULL AUTO_INCREMENT,
  `id_join` int(11) NOT NULL,
  `name_active` varchar(50) NOT NULL,
  `span` varchar(50) NOT NULL,
  PRIMARY KEY (`id_active`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel db_cutdig.tb_active: ~2 rows (lebih kurang)
/*!40000 ALTER TABLE `tb_active` DISABLE KEYS */;
INSERT INTO `tb_active` (`id_active`, `id_join`, `name_active`, `span`) VALUES
	(1, 1, 'Aktif', 'label label-success'),
	(2, 0, 'Non Aktif', 'label label-danger');
/*!40000 ALTER TABLE `tb_active` ENABLE KEYS */;

-- membuang struktur untuk table db_cutdig.tb_avlaiblecuti
CREATE TABLE IF NOT EXISTS `tb_avlaiblecuti` (
  `id_avlaible` int(11) NOT NULL AUTO_INCREMENT,
  `nip` varchar(50) NOT NULL,
  `total_cuti` int(11) NOT NULL,
  `sisa_cuti` int(11) NOT NULL,
  `all_cuti` int(11) NOT NULL,
  PRIMARY KEY (`id_avlaible`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel db_cutdig.tb_avlaiblecuti: ~4 rows (lebih kurang)
/*!40000 ALTER TABLE `tb_avlaiblecuti` DISABLE KEYS */;
INSERT INTO `tb_avlaiblecuti` (`id_avlaible`, `nip`, `total_cuti`, `sisa_cuti`, `all_cuti`) VALUES
	(1, 'PST 01', 12, 8, 4),
	(2, 'ITS 03', 10, 0, 0),
	(3, 'JKT2 02', 0, 0, 0),
	(4, 'SPR 01', 12, 6, 6);
/*!40000 ALTER TABLE `tb_avlaiblecuti` ENABLE KEYS */;

-- membuang struktur untuk table db_cutdig.tb_branch
CREATE TABLE IF NOT EXISTS `tb_branch` (
  `id_branch` int(11) NOT NULL AUTO_INCREMENT,
  `name_branch` varchar(50) NOT NULL,
  PRIMARY KEY (`id_branch`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel db_cutdig.tb_branch: ~1 rows (lebih kurang)
/*!40000 ALTER TABLE `tb_branch` DISABLE KEYS */;
INSERT INTO `tb_branch` (`id_branch`, `name_branch`) VALUES
	(1, 'Kantor Pusat'),
	(3, 'JKT2');
/*!40000 ALTER TABLE `tb_branch` ENABLE KEYS */;

-- membuang struktur untuk table db_cutdig.tb_cuti
CREATE TABLE IF NOT EXISTS `tb_cuti` (
  `id_cuti` int(11) NOT NULL AUTO_INCREMENT,
  `no_cuti` varchar(50) NOT NULL,
  `nip` varchar(50) NOT NULL,
  `datestart` date NOT NULL,
  `dateend` date NOT NULL,
  `jenis_cuti` int(11) NOT NULL,
  `total_cuti` int(11) NOT NULL,
  `subjenis` int(11) NOT NULL,
  `keterangan` longtext NOT NULL,
  `datecreate` date NOT NULL,
  PRIMARY KEY (`id_cuti`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel db_cutdig.tb_cuti: ~4 rows (lebih kurang)
/*!40000 ALTER TABLE `tb_cuti` DISABLE KEYS */;
INSERT INTO `tb_cuti` (`id_cuti`, `no_cuti`, `nip`, `datestart`, `dateend`, `jenis_cuti`, `total_cuti`, `subjenis`, `keterangan`, `datecreate`) VALUES
	(3, 'CT-003', 'SPR 01', '2019-01-10', '2019-01-11', 1, 2, 0, 'Acara Keluarga', '2019-01-08'),
	(4, 'CT-004', 'PST 01', '2019-01-18', '2019-01-18', 1, 1, 0, 'Berwisata', '2019-01-15'),
	(5, 'CT-005', 'SPR 01', '2019-01-17', '2019-01-18', 1, 2, 0, 'Liburan', '2019-01-15'),
	(6, 'CT-006', 'SPR 01', '2019-01-21', '2019-01-22', 1, 2, 0, 'Keperluan Keluarga', '2019-01-15');
/*!40000 ALTER TABLE `tb_cuti` ENABLE KEYS */;

-- membuang struktur untuk table db_cutdig.tb_date
CREATE TABLE IF NOT EXISTS `tb_date` (
  `id_date` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id_date`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel db_cutdig.tb_date: ~4 rows (lebih kurang)
/*!40000 ALTER TABLE `tb_date` DISABLE KEYS */;
INSERT INTO `tb_date` (`id_date`, `name`, `date`) VALUES
	(1, 'Hari Raya Natal', '2018-12-25'),
	(2, 'Cuti Bersama Natal', '2018-12-24'),
	(3, 'New Year 2019', '2019-01-01');
/*!40000 ALTER TABLE `tb_date` ENABLE KEYS */;

-- membuang struktur untuk table db_cutdig.tb_division
CREATE TABLE IF NOT EXISTS `tb_division` (
  `id_div` int(11) NOT NULL AUTO_INCREMENT,
  `name_division` varchar(50) NOT NULL,
  PRIMARY KEY (`id_div`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel db_cutdig.tb_division: ~3 rows (lebih kurang)
/*!40000 ALTER TABLE `tb_division` DISABLE KEYS */;
INSERT INTO `tb_division` (`id_div`, `name_division`) VALUES
	(1, 'IT'),
	(2, 'Marketing'),
	(3, 'Finance');
/*!40000 ALTER TABLE `tb_division` ENABLE KEYS */;

-- membuang struktur untuk table db_cutdig.tb_employe
CREATE TABLE IF NOT EXISTS `tb_employe` (
  `id_employe` int(11) NOT NULL AUTO_INCREMENT,
  `nip` varchar(50) NOT NULL,
  `name_employe` varchar(50) NOT NULL,
  `position` varchar(50) NOT NULL,
  `division` varchar(50) NOT NULL,
  `branch` int(11) NOT NULL,
  `date_join` date NOT NULL,
  `id_avlaible` int(11) NOT NULL,
  `image` varchar(50) NOT NULL,
  `signature` varchar(50) NOT NULL,
  PRIMARY KEY (`id_employe`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel db_cutdig.tb_employe: ~7 rows (lebih kurang)
/*!40000 ALTER TABLE `tb_employe` DISABLE KEYS */;
INSERT INTO `tb_employe` (`id_employe`, `nip`, `name_employe`, `position`, `division`, `branch`, `date_join`, `id_avlaible`, `image`, `signature`) VALUES
	(1, 'PST 01', 'Sudirman', '1', '1', 1, '2018-11-29', 1, 'foto.jpg', 'ttd.jpg'),
	(2, 'ITS 03', 'Juanda', '1', '1', 1, '2015-12-21', 0, '', ''),
	(4, 'PSA 01', 'Bahrul', '2', '1', 1, '2013-12-21', 0, '', ''),
	(8, 'MRT 01', 'Gusion', '3', '1', 1, '2019-06-04', 0, 'apps1.jpg', 'apps2.jpg'),
	(9, 'JKT2 01', 'A Ttaufiq', '3', '2', 3, '2018-12-05', 0, 'kacabjkt2.png', 'kacjkt2.jpg'),
	(10, 'JKT2 02', 'Enni', '2', '2', 3, '2012-02-14', 0, 'ksajkt2.png', 'ksajk2.png'),
	(11, 'SPR 01', 'Reki', '1', '2', 3, '2014-07-15', 0, 'reki1.png', 'reki.png');
/*!40000 ALTER TABLE `tb_employe` ENABLE KEYS */;

-- membuang struktur untuk table db_cutdig.tb_headercuti
CREATE TABLE IF NOT EXISTS `tb_headercuti` (
  `id_header` int(11) NOT NULL AUTO_INCREMENT,
  `no_cuti` varchar(50) NOT NULL,
  `nip` varchar(50) NOT NULL,
  `status` int(11) NOT NULL,
  `notif` int(11) DEFAULT NULL,
  `total_cuti` int(11) NOT NULL,
  `total_stay` int(11) NOT NULL,
  `name_approve1` varchar(50) NOT NULL,
  `approve1` varchar(50) NOT NULL,
  `dateapprove1` date NOT NULL,
  `name_approve2` varchar(50) NOT NULL,
  `approve2` varchar(50) NOT NULL,
  `dateapprove2` date NOT NULL,
  `revisi` longtext NOT NULL,
  PRIMARY KEY (`id_header`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel db_cutdig.tb_headercuti: ~5 rows (lebih kurang)
/*!40000 ALTER TABLE `tb_headercuti` DISABLE KEYS */;
INSERT INTO `tb_headercuti` (`id_header`, `no_cuti`, `nip`, `status`, `notif`, `total_cuti`, `total_stay`, `name_approve1`, `approve1`, `dateapprove1`, `name_approve2`, `approve2`, `dateapprove2`, `revisi`) VALUES
	(1, 'CT-001', 'PST 01', 3, 8, 2, 0, 'Sudirman', 'ttd.jpg', '2018-12-19', 'Sudirman', 'ttd.jpg', '2018-12-19', ''),
	(2, 'CT-002', 'PST 01', 4, 8, 1, 9, '', '', '0000-00-00', '', '', '0000-00-00', ''),
	(3, 'CT-003', 'SPR 01', 3, 8, 2, 12, 'Enni', 'ksajk2.png', '2019-01-09', 'A Ttaufiq', 'kacjkt2.jpg', '2019-01-09', ''),
	(4, 'CT-004', 'PST 01', 3, 8, 1, 9, 'Bahrul', '', '2019-01-15', 'Gusion', 'apps2.jpg', '2019-01-15', ''),
	(5, 'CT-005', 'SPR 01', 3, 8, 2, 10, 'Enni', 'ksajk2.png', '2019-01-15', 'A Ttaufiq', 'kacjkt2.jpg', '2019-01-15', ''),
	(6, 'CT-006', 'SPR 01', 3, 8, 2, 8, 'Enni', 'ksajk2.png', '2019-01-15', 'A Ttaufiq', 'kacjkt2.jpg', '2019-01-15', '');
/*!40000 ALTER TABLE `tb_headercuti` ENABLE KEYS */;

-- membuang struktur untuk table db_cutdig.tb_jeniscuti
CREATE TABLE IF NOT EXISTS `tb_jeniscuti` (
  `id_jenis` int(11) NOT NULL AUTO_INCREMENT,
  `name_cuti` varchar(50) NOT NULL,
  PRIMARY KEY (`id_jenis`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel db_cutdig.tb_jeniscuti: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `tb_jeniscuti` DISABLE KEYS */;
INSERT INTO `tb_jeniscuti` (`id_jenis`, `name_cuti`) VALUES
	(1, 'Cuti Tahunan'),
	(2, 'Cuti Khusus');
/*!40000 ALTER TABLE `tb_jeniscuti` ENABLE KEYS */;

-- membuang struktur untuk table db_cutdig.tb_level
CREATE TABLE IF NOT EXISTS `tb_level` (
  `id_level` int(11) NOT NULL AUTO_INCREMENT,
  `name_level` varchar(50) NOT NULL,
  PRIMARY KEY (`id_level`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel db_cutdig.tb_level: ~4 rows (lebih kurang)
/*!40000 ALTER TABLE `tb_level` DISABLE KEYS */;
INSERT INTO `tb_level` (`id_level`, `name_level`) VALUES
	(1, 'Karyawan'),
	(2, 'Manager'),
	(3, 'Personalia'),
	(4, 'Admin');
/*!40000 ALTER TABLE `tb_level` ENABLE KEYS */;

-- membuang struktur untuk table db_cutdig.tb_menus
CREATE TABLE IF NOT EXISTS `tb_menus` (
  `id_menus` int(11) NOT NULL AUTO_INCREMENT,
  `id_submenus` int(11) NOT NULL,
  `n_menus` varchar(50) NOT NULL,
  `url` varchar(50) NOT NULL,
  `list` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `icon` varchar(50) NOT NULL,
  PRIMARY KEY (`id_menus`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel db_cutdig.tb_menus: ~3 rows (lebih kurang)
/*!40000 ALTER TABLE `tb_menus` DISABLE KEYS */;
INSERT INTO `tb_menus` (`id_menus`, `id_submenus`, `n_menus`, `url`, `list`, `status`, `icon`) VALUES
	(1, 0, 'List Cuti', 'listcontroller', 1, 0, 'fa fa-table fa-fw'),
	(2, 1, 'Settings', '-', 5, 0, 'fa fa-gear fa-fw'),
	(3, 0, 'Pengajuan Cuti', 'PengajuanController', 2, 0, 'fa fa-edit fa-fw'),
	(4, 0, 'Approvel Cuti', 'ApprovelController', 3, 0, 'fa fa-check-square-o'),
	(5, 0, 'Report', 'ReportController', 4, 0, 'fa fa-book fa-fw');
/*!40000 ALTER TABLE `tb_menus` ENABLE KEYS */;

-- membuang struktur untuk table db_cutdig.tb_status
CREATE TABLE IF NOT EXISTS `tb_status` (
  `id_status` int(11) NOT NULL AUTO_INCREMENT,
  `level_status` int(11) NOT NULL,
  `name_status` varchar(50) NOT NULL,
  `label` varchar(50) NOT NULL,
  PRIMARY KEY (`id_status`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel db_cutdig.tb_status: ~5 rows (lebih kurang)
/*!40000 ALTER TABLE `tb_status` DISABLE KEYS */;
INSERT INTO `tb_status` (`id_status`, `level_status`, `name_status`, `label`) VALUES
	(1, 2, 'Direvisi', 'label label-warning'),
	(2, 3, 'Diambil', 'label label-success'),
	(3, 4, 'Dibatalkan', 'label label-danger'),
	(4, 0, 'Menunggu Approve Atasan', 'label label-primary'),
	(5, 1, 'Menunggu Approvel Personalia', 'label label-primary'),
	(6, 5, 'Data Ready', 'label label-info');
/*!40000 ALTER TABLE `tb_status` ENABLE KEYS */;

-- membuang struktur untuk table db_cutdig.tb_subjenis
CREATE TABLE IF NOT EXISTS `tb_subjenis` (
  `id_subjenis` int(11) NOT NULL AUTO_INCREMENT,
  `id_jenis` int(11) NOT NULL,
  `name_subjenis` varchar(50) NOT NULL,
  `total_cuti` varchar(50) DEFAULT '0',
  PRIMARY KEY (`id_subjenis`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel db_cutdig.tb_subjenis: ~4 rows (lebih kurang)
/*!40000 ALTER TABLE `tb_subjenis` DISABLE KEYS */;
INSERT INTO `tb_subjenis` (`id_subjenis`, `id_jenis`, `name_subjenis`, `total_cuti`) VALUES
	(1, 2, 'Kemalangan', '1'),
	(2, 2, 'Hamil', '0'),
	(3, 2, 'Pernikahan', '3'),
	(4, 2, 'Lain-lain', '0');
/*!40000 ALTER TABLE `tb_subjenis` ENABLE KEYS */;

-- membuang struktur untuk table db_cutdig.tb_submenus
CREATE TABLE IF NOT EXISTS `tb_submenus` (
  `id_submenus` int(11) NOT NULL AUTO_INCREMENT,
  `id_menus` int(11) NOT NULL,
  `n_submenus` varchar(50) NOT NULL,
  `url` varchar(50) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id_submenus`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel db_cutdig.tb_submenus: ~3 rows (lebih kurang)
/*!40000 ALTER TABLE `tb_submenus` DISABLE KEYS */;
INSERT INTO `tb_submenus` (`id_submenus`, `id_menus`, `n_submenus`, `url`, `status`) VALUES
	(1, 2, 'Users', 'UserController', 0),
	(2, 2, 'Employe', 'EmployeController', 0),
	(3, 2, 'Management User', 'ManageController', 0),
	(4, 2, 'Master Data', 'MasterController', 0);
/*!40000 ALTER TABLE `tb_submenus` ENABLE KEYS */;

-- membuang struktur untuk table db_cutdig.tb_transaksi
CREATE TABLE IF NOT EXISTS `tb_transaksi` (
  `id_transaksi` int(11) NOT NULL AUTO_INCREMENT,
  `no_nota` varchar(50) DEFAULT NULL,
  `nip` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_transaksi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel db_cutdig.tb_transaksi: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `tb_transaksi` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_transaksi` ENABLE KEYS */;

-- membuang struktur untuk table db_cutdig.tb_users
CREATE TABLE IF NOT EXISTS `tb_users` (
  `id_users` int(11) NOT NULL AUTO_INCREMENT,
  `nip` varchar(50) NOT NULL,
  `n_name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `pass` varchar(80) NOT NULL,
  `status` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  PRIMARY KEY (`id_users`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel db_cutdig.tb_users: ~6 rows (lebih kurang)
/*!40000 ALTER TABLE `tb_users` DISABLE KEYS */;
INSERT INTO `tb_users` (`id_users`, `nip`, `n_name`, `username`, `pass`, `status`, `level`) VALUES
	(1, 'PST 01', 'Admin', 'admin', '$2y$10$g/8oKPD5zTRVoK.mRDl1nO8pPrGMScdmWqf3l8l/qsts.4.D5hPOW', 1, 4),
	(3, 'ITS 03', 'Juanda', 'juanda', '$2y$10$SSAz1j/kzyXGdAXWy3zOi.pIcp05ZJRGki/Lv79hARu1/u6Oz8l92', 1, 1),
	(4, 'MRT 01', 'Gusion', 'gusion', '$2y$10$Bib9sybr56RLHVEzEuwVburAY81xey2bUJZVn6/f4mz9E.3J07Zyu', 1, 3),
	(5, 'PSA 01', 'Bahrul', 'bahrul', '$2y$10$u7TOToaeknbJVZZswYTkq.ayg3SUjgOkhmdtvJpJvIZbFoWYCVx1e', 1, 2),
	(6, 'JKT2 01', 'A Ttaufiq', 'apit', '$2y$10$OCpb5LWXkXsBOzIGfgz1ZOR4p2r9Zkl7drs0zJcbkmDpMHa.91sAq', 1, 3),
	(7, 'JKT2 02', 'Enni', 'enni', '$2y$10$17UE0CHJaxKB9WyMJ20ywO5MuhioBj5GFFjtNHgYYRnlSmo4peZRG', 1, 2),
	(8, 'SPR 01', 'Reki', 'reki', '$2y$10$7huA4VKSyrLI4jpnmNO6pOaAmYhHSNJoPlu85pcuLi6eaBcK/fxje', 1, 1);
/*!40000 ALTER TABLE `tb_users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
