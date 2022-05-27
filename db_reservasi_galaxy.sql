-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 27 Bulan Mei 2022 pada 05.14
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `reservasi_galaxy`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_detail_kamar`
--

CREATE TABLE `tbl_detail_kamar` (
  `id_detail_kamar` int(11) NOT NULL,
  `id_kamar` int(11) NOT NULL,
  `id_fasilitas_kamar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_detail_kamar`
--

INSERT INTO `tbl_detail_kamar` (`id_detail_kamar`, `id_kamar`, `id_fasilitas_kamar`) VALUES
(262, 10, 9),
(263, 10, 10),
(264, 10, 11),
(265, 10, 12),
(266, 10, 13),
(267, 10, 15),
(268, 10, 16),
(269, 10, 19),
(270, 10, 21),
(271, 11, 9),
(272, 11, 10),
(273, 11, 11),
(274, 11, 12),
(275, 11, 13),
(276, 11, 15),
(277, 11, 16),
(278, 11, 18),
(279, 11, 19),
(280, 11, 20),
(281, 11, 21),
(282, 12, 9),
(283, 12, 11),
(284, 12, 15),
(285, 12, 16),
(286, 12, 19),
(287, 12, 20),
(288, 12, 21),
(289, 13, 9),
(290, 13, 10),
(291, 13, 11),
(292, 13, 12),
(293, 13, 15),
(294, 13, 16),
(295, 13, 18),
(296, 13, 19),
(297, 13, 20),
(298, 13, 21),
(299, 15, 9),
(300, 15, 10),
(301, 15, 11),
(302, 15, 12),
(303, 15, 13),
(304, 15, 15),
(305, 15, 16),
(306, 15, 18),
(307, 15, 19),
(308, 15, 20),
(309, 15, 21),
(319, 17, 9),
(320, 17, 10),
(321, 17, 11),
(322, 17, 12),
(323, 17, 13),
(324, 17, 15),
(325, 17, 16),
(326, 17, 18),
(327, 17, 19),
(328, 17, 20),
(329, 17, 21),
(330, 16, 9),
(331, 16, 11),
(332, 16, 12),
(333, 16, 15),
(334, 16, 16),
(335, 16, 18),
(336, 16, 19),
(337, 16, 20),
(338, 16, 21),
(339, 18, 9),
(340, 18, 10),
(341, 18, 11),
(342, 18, 15),
(343, 18, 16),
(344, 18, 18),
(345, 18, 19),
(346, 18, 21),
(391, 19, 9),
(392, 19, 10),
(393, 19, 11),
(394, 19, 12),
(395, 19, 13),
(396, 19, 15),
(397, 19, 16),
(398, 19, 18),
(399, 19, 19),
(400, 19, 20),
(401, 19, 21);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_fasilitas_hotel`
--

CREATE TABLE `tbl_fasilitas_hotel` (
  `id_fasilitas_hotel` int(11) NOT NULL,
  `nama_fasilitas` varchar(100) NOT NULL,
  `deskripsi_fasilitas` mediumtext NOT NULL,
  `foto_fasilitas` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_fasilitas_hotel`
--

INSERT INTO `tbl_fasilitas_hotel` (`id_fasilitas_hotel`, `nama_fasilitas`, `deskripsi_fasilitas`, `foto_fasilitas`) VALUES
(9, 'restauran', 'restauran outdoor/indoor', 'restauran.png'),
(10, 'gym', 'tempat untuk berolahraga', 'gym.jpg'),
(11, 'ruang meeting', 'ruangan untuk meeting', 'Ruang Meeting.jpg'),
(12, 'kolam renang', 'tempat untuk berenang', 'kolam renang.jfif'),
(15, 'taman', 'taman yang luas dan bersih', 'taman.jpg'),
(16, 'tempat parkir hotel', 'tempat untuk menyimpan kendaraan pengunjung hotel', 'parkir.jfif');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_fasilitas_kamar`
--

CREATE TABLE `tbl_fasilitas_kamar` (
  `id_fasilitas_kamar` int(11) NOT NULL,
  `nama_fasilitas` varchar(100) NOT NULL,
  `deskripsi_fasilitas` mediumtext NOT NULL,
  `foto_fasilitas` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_fasilitas_kamar`
--

INSERT INTO `tbl_fasilitas_kamar` (`id_fasilitas_kamar`, `nama_fasilitas`, `deskripsi_fasilitas`, `foto_fasilitas`) VALUES
(9, 'wifi', 'wifi antar ruangan', 'wifi.png'),
(10, 'televisi', 'tv yang  ada di setiap kamar', 'televisi.jfif'),
(11, 'Telpon Ruangan', 'telpon yang terhubung antar ruangan', 'telephon.jpeg'),
(12, 'kulkas mini', 'untuk menyimpan makanan dan miniuman', 'kulkas mini.jfif'),
(13, 'teh&kopi', 'teh&kopi yang di sediakan di setiap kamar hotel', 'kopi&teh.jfif'),
(15, 'peralatan mandi', 'peralatan untuk mandi seperti sabun&sampo', 'alat mandi.jfif'),
(16, 'kamar mandi', 'kamar mandi yang bersih dan luas yang ada di dalam kamar hotel', 'kamar mandi.jpeg'),
(18, 'ac', 'ac yang bagus dan berkualitas', 'ac-beko.jpg'),
(19, 'kasur', 'kasur yang lembut dan besar', 'kasur.jfif'),
(20, 'sofa', 'sofa untuk bersantai', 'sofa.jfif'),
(21, 'lemari', 'untuk menyimpan pakaian', 'lemari.jfif');

--
-- Trigger `tbl_fasilitas_kamar`
--
DELIMITER $$
CREATE TRIGGER `hapusFasilitasKamar` AFTER DELETE ON `tbl_fasilitas_kamar` FOR EACH ROW DELETE FROM tbl_detail_kamar WHERE id_fasilitas_kamar=OLD.id_fasilitas_kamar
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kamar`
--

CREATE TABLE `tbl_kamar` (
  `id_kamar` int(11) NOT NULL,
  `harga_kamar` int(11) NOT NULL,
  `tipe_kamar` enum('standar','single','deluxe','suite') NOT NULL,
  `foto_kamar` varchar(150) NOT NULL,
  `jml_kamar` mediumint(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_kamar`
--

INSERT INTO `tbl_kamar` (`id_kamar`, `harga_kamar`, `tipe_kamar`, `foto_kamar`, `jml_kamar`) VALUES
(10, 850000, 'standar', 'standar.jfif', 15),
(11, 1500000, 'deluxe', 'deluxe.jfif', 15),
(12, 670000, 'single', 'single.jpg', 19),
(13, 1800000, 'suite', 'Kamar Suite.jpg', 18),
(15, 2450000, 'deluxe', 'deluxe1.jfif', 8),
(16, 640000, 'standar', 'kamar standard2.jpg', 6),
(17, 12800000, 'suite', 'kamar suite2.jpeg', 6),
(18, 670000, 'single', 'kamar single2.jfif', 8),
(19, -12000000, 'deluxe', 'kamar1.jfif', 0);

--
-- Trigger `tbl_kamar`
--
DELIMITER $$
CREATE TRIGGER `hapusDetailKamar` AFTER DELETE ON `tbl_kamar` FOR EACH ROW delete from tbl_detail_kamar where tbl_detail_kamar.id_kamar=old.id_kamar
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_reservasi`
--

CREATE TABLE `tbl_reservasi` (
  `id_reservasi` int(11) NOT NULL,
  `nama_pemesan` varchar(100) NOT NULL,
  `no_handphone` varchar(20) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `nama_tamu` varchar(100) NOT NULL,
  `id_kamar` int(11) NOT NULL,
  `tgl_cek_in` date NOT NULL,
  `tgl_cek_out` date DEFAULT NULL,
  `jml_kamar_dipesan` int(11) NOT NULL,
  `status` enum('in','out') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_reservasi`
--

INSERT INTO `tbl_reservasi` (`id_reservasi`, `nama_pemesan`, `no_handphone`, `email`, `nama_tamu`, `id_kamar`, `tgl_cek_in`, `tgl_cek_out`, `jml_kamar_dipesan`, `status`) VALUES
(14, 'daren', '089572471473', 'daren7@gmail.com', 'daren', 11, '2022-05-19', '2022-05-20', 1, 'out'),
(15, 'dean', '089536836841', 'dean6@gmail.com', 'dean', 10, '2022-05-19', '2022-05-21', 2, 'out'),
(16, 'natha', '083274748943', 'natha@gmail.com', 'natha', 11, '2022-05-19', '2022-05-21', 3, 'out'),
(17, 'xavi', '089368263958', 'xavi65@gmail.com', 'xavi', 12, '2022-05-20', '2022-05-21', 1, 'out'),
(18, 'daffa', '083816935395', 'dafa34@gmail.com', 'daffa', 13, '2022-05-20', '2022-05-24', 2, 'out'),
(19, 'hirunkit', '086283552153', 'hirunkit05@gmail.com', 'hirunkit', 12, '2022-05-21', '2022-05-22', 2, 'out'),
(20, 'luhan', '089639248131', 'luhan@gmail.com', 'luhan', 13, '2022-05-24', '2022-05-25', 1, 'out'),
(21, 'urassayas', '0863216876456', 'urassayas17@gmail.com', 'urassayas', 10, '2022-05-23', '2022-05-25', 1, 'out'),
(22, 'primiily', '0832836193639', 'primiily@gmail.com', 'primiily', 11, '2022-05-20', '2022-05-22', 3, 'out'),
(23, 'rain', '089647479216', 'rain@gmail.com', 'rain', 11, '2022-05-24', '2022-05-25', 2, 'out'),
(24, 'kimbum', '089123834628', 'kimbum@gmail.com', 'kimbum', 12, '2022-05-24', '2022-05-27', 4, 'out'),
(25, 'sejeong', '089648364858', 'sejeong@gmail.com', 'sejeong', 11, '2022-06-01', '2022-06-03', 2, 'out'),
(26, 'hafidz', '085353791628', 'hafidz@gmail.com', 'irhab', 11, '2022-05-21', '2022-05-25', 3, 'out'),
(27, 'irhab', '0893637853795', 'daffa@gmail.com', 'daffa', 10, '2022-05-20', '2022-05-27', 5, 'out'),
(28, 'ali', '089584263789', 'ali@gmail.com', 'ali', 11, '2022-05-26', '2022-05-27', 1, 'out'),
(29, 'devano', '086734672984', 'devano@gmail.com', 'vano', 13, '2022-05-24', '2022-05-27', 2, NULL),
(30, 'aghniny', '082189468479', 'aghniny34@gmail.com', 'aghniny', 10, '2022-05-25', '2022-05-26', 1, NULL),
(31, 'nathan', '089638276532', 'nathan@gmail.com', 'nathan', 11, '2022-05-24', '2022-05-30', 3, 'in'),
(32, 'deandra', '089362856738', 'deandra@gmail.com', 'dean', 12, '2022-05-24', '2022-05-25', 2, NULL),
(33, 'kenzie', '089677548528', 'kenzie91@gmail.com', 'kenzie', 13, '2022-05-26', '2022-05-31', 2, NULL),
(34, 'suci', '089682538915', 'suci@gmail.com', 'suci', 15, '2022-05-24', '2022-05-25', 2, 'in'),
(35, 'kenzoe', '089362819369', 'kenzoe@gmail.com', 'kenzoe', 13, '2022-05-24', '2022-05-27', 2, NULL),
(36, 'atin', '0838829467284', 'atin@gmail.com', 'atin', 12, '2022-05-24', '2022-05-22', 1, 'out'),
(37, 'kyle', '0893628463782', 'kyle@gmail.com', 'kyle', 18, '2022-05-20', '2022-05-17', 1, NULL),
(40, 'yaya', '0897536747899', 'yaya@gmail.com', 'yaya', 19, '2022-05-24', '2022-05-25', 1, 'out');

--
-- Trigger `tbl_reservasi`
--
DELIMITER $$
CREATE TRIGGER `infoJmlKamar` AFTER UPDATE ON `tbl_reservasi` FOR EACH ROW BEGIN
		IF (NEW.status='in') THEN
			UPDATE tbl_kamar SET jml_kamar=jml_kamar-OLD.jml_kamar_dipesan
			WHERE tbl_kamar.id_kamar=NEW.id_kamar;
		ELSE
			UPDATE tbl_kamar SET jml_kamar=jml_kamar+OLD.jml_kamar_dipesan
			WHERE tbl_kamar.id_kamar=NEW.id_kamar;		
		END IF;	
	END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_user`
--

CREATE TABLE `tbl_user` (
  `username` varchar(40) NOT NULL,
  `password` char(32) NOT NULL,
  `namauser` varchar(100) NOT NULL,
  `leveluser` enum('admin','petugas') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_user`
--

INSERT INTO `tbl_user` (`username`, `password`, `namauser`, `leveluser`) VALUES
('abay', '202cb962ac59075b964b07152d234b70', 'abay', 'petugas'),
('Admin', '202cb962ac59075b964b07152d234b70', 'Admin', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_detail_kamar`
--
ALTER TABLE `tbl_detail_kamar`
  ADD PRIMARY KEY (`id_detail_kamar`);

--
-- Indeks untuk tabel `tbl_fasilitas_hotel`
--
ALTER TABLE `tbl_fasilitas_hotel`
  ADD PRIMARY KEY (`id_fasilitas_hotel`);

--
-- Indeks untuk tabel `tbl_fasilitas_kamar`
--
ALTER TABLE `tbl_fasilitas_kamar`
  ADD PRIMARY KEY (`id_fasilitas_kamar`);

--
-- Indeks untuk tabel `tbl_kamar`
--
ALTER TABLE `tbl_kamar`
  ADD PRIMARY KEY (`id_kamar`);

--
-- Indeks untuk tabel `tbl_reservasi`
--
ALTER TABLE `tbl_reservasi`
  ADD PRIMARY KEY (`id_reservasi`);

--
-- Indeks untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_detail_kamar`
--
ALTER TABLE `tbl_detail_kamar`
  MODIFY `id_detail_kamar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=402;

--
-- AUTO_INCREMENT untuk tabel `tbl_fasilitas_hotel`
--
ALTER TABLE `tbl_fasilitas_hotel`
  MODIFY `id_fasilitas_hotel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `tbl_fasilitas_kamar`
--
ALTER TABLE `tbl_fasilitas_kamar`
  MODIFY `id_fasilitas_kamar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `tbl_kamar`
--
ALTER TABLE `tbl_kamar`
  MODIFY `id_kamar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `tbl_reservasi`
--
ALTER TABLE `tbl_reservasi`
  MODIFY `id_reservasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
