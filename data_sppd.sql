-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 12, 2025 at 07:36 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `data_sppd`
--

-- --------------------------------------------------------

--
-- Table structure for table `bbm`
--

CREATE TABLE `bbm` (
  `id_bbm` int(11) NOT NULL,
  `kecamatan` varchar(50) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bbm`
--

INSERT INTO `bbm` (`id_bbm`, `kecamatan`, `jumlah`) VALUES
(1, 'Gladagsari', 1),
(2, 'Ampel', 2),
(3, 'Andong', 2),
(4, 'Banyudono', 3),
(5, 'Boyolali', 4),
(6, 'Cepogo', 3),
(7, 'Juwangi', 4),
(8, 'Karanggede', 5),
(9, 'Kemusu', 9),
(10, 'Klego', 0),
(11, 'Mojosongo', 0),
(12, 'Musuk', 4),
(13, 'Tamansari', 4),
(14, 'Ngemplak', 0),
(15, 'Nogosari', 4),
(16, 'Sambi', 0),
(17, 'Sawit', 0),
(18, 'Selo', 2),
(19, 'Simo', 0),
(20, 'Teras', 0),
(21, 'Wonosegoro', 0),
(22, 'Wonosamodro', 4);

-- --------------------------------------------------------

--
-- Table structure for table `config`
--

CREATE TABLE `config` (
  `id_config` int(11) NOT NULL,
  `nama_aplikasi` varchar(100) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `role_version` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `config`
--

INSERT INTO `config` (`id_config`, `nama_aplikasi`, `alamat`, `role_version`) VALUES
(1, 'Aplikasi SPPD', 'Boyolali', '0.0.1');

-- --------------------------------------------------------

--
-- Table structure for table `golongan`
--

CREATE TABLE `golongan` (
  `id_golongan` int(11) NOT NULL,
  `golongan` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `golongan`
--

INSERT INTO `golongan` (`id_golongan`, `golongan`) VALUES
(2, 'Golongan I'),
(3, 'Golongan II'),
(5, 'Golongan III'),
(7, 'Golongan IV'),
(8, 'Golongan V');

-- --------------------------------------------------------

--
-- Table structure for table `jabatan`
--

CREATE TABLE `jabatan` (
  `id_jabatan` int(11) NOT NULL,
  `jabatan` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jabatan`
--

INSERT INTO `jabatan` (`id_jabatan`, `jabatan`) VALUES
(1, 'Jabatan kepala dinas'),
(4, 'Jabatan Administrasi'),
(5, 'Jabatan Fungsional');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id_user` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id_user`, `username`, `password`, `role`) VALUES
(1, 'admin', '111', 'admin'),
(2, 'pegawai', '222', 'pegawai'),
(12, 'user', '111', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `nama_menu` varchar(100) NOT NULL,
  `link_menu` varchar(255) NOT NULL,
  `icon_menu` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `nama_menu`, `link_menu`, `icon_menu`) VALUES
(2, 'Golongan', '../golongan', 'fas fa-layer-group'),
(3, 'Jabatan', '../jabatan', 'fa fa-briefcase'),
(4, 'Pangkat', '../pangkat', 'fa-solid fa-award'),
(5, 'Tingkatan', '../tingkatan', 'fa-solid fa-ranking-star'),
(6, 'Pegawai', '../pegawai', 'fa fa-users'),
(7, 'Perjalanan', '../perjalanan', 'fa fa-road'),
(8, 'Perjalanan kota', '../perjalanankota', 'fa fa-map'),
(9, 'Tingkatan Perjalanan', '../tingkatanperjalanan', 'fa fa-sitemap '),
(10, 'Transportasi', '../transportasi', 'fa fa-car'),
(11, 'BBM', '../bbm', 'fa-solid fa-gas-pump ');

-- --------------------------------------------------------

--
-- Table structure for table `pangkat`
--

CREATE TABLE `pangkat` (
  `id_pangkat` int(11) NOT NULL,
  `pangkat` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pangkat`
--

INSERT INTO `pangkat` (`id_pangkat`, `pangkat`) VALUES
(1, 'Juru Muda (Ia)'),
(3, 'pengatur'),
(4, 'Pembina');

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `id_pegawai` int(11) NOT NULL,
  `nip` varchar(20) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `id_pangkat` int(11) DEFAULT NULL,
  `id_golongan` int(11) DEFAULT NULL,
  `id_jabatan` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`id_pegawai`, `nip`, `nama`, `id_pangkat`, `id_golongan`, `id_jabatan`) VALUES
(5, '19600421 ', 'herman', 1, 3, 4),
(8, '5424254', 'hasim', 1, 2, 4),
(9, '36346357', 'bonar', 3, 8, 1),
(10, '3536473', 'Suhario', 4, 3, 5);

-- --------------------------------------------------------

--
-- Table structure for table `perjalanan`
--

CREATE TABLE `perjalanan` (
  `id_perjalanan` int(11) NOT NULL,
  `perjalanan` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `perjalanan`
--

INSERT INTO `perjalanan` (`id_perjalanan`, `perjalanan`) VALUES
(1, 'Tim Cek Lokasi Perizinan'),
(2, 'Tim Penegakan Perda'),
(3, 'Cek lokasi Daerah');

-- --------------------------------------------------------

--
-- Table structure for table `perjalanan_kota`
--

CREATE TABLE `perjalanan_kota` (
  `id_perjalanan_kota` int(11) NOT NULL,
  `id_perjalanan` int(11) DEFAULT NULL,
  `id_pegawai` int(11) DEFAULT NULL,
  `id_bbm` int(11) DEFAULT NULL,
  `kurang_8_jam_lebih_5_km` int(11) DEFAULT NULL,
  `kurang_8_jam_kurang_5_km` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `perjalanan_kota`
--

INSERT INTO `perjalanan_kota` (`id_perjalanan_kota`, `id_perjalanan`, `id_pegawai`, `id_bbm`, `kurang_8_jam_lebih_5_km`, `kurang_8_jam_kurang_5_km`) VALUES
(1, 1, 8, 11, 200000, 2),
(2, 2, 8, 6, 300000, 0),
(3, 1, 9, 6, 0, 100000),
(4, 2, 9, 7, 7, 4),
(5, 3, 10, 7, 200000, 0),
(6, 1, 5, 14, 7, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sppd`
--

CREATE TABLE `sppd` (
  `id_sppd` int(11) NOT NULL,
  `no_sppd` varchar(50) NOT NULL,
  `pejabat_perintah` varchar(50) DEFAULT NULL,
  `id_pegawai` int(11) DEFAULT NULL,
  `tempat_tujuan` varchar(100) DEFAULT NULL,
  `maksud_perjalanan` text DEFAULT NULL,
  `id_transportasi` int(11) DEFAULT NULL,
  `id_bbm` int(11) DEFAULT NULL,
  `lama_perjalanan` int(11) DEFAULT NULL,
  `tanggal_berangkat` date DEFAULT NULL,
  `tanggal_kembali` date DEFAULT NULL,
  `instansi` varchar(100) DEFAULT NULL,
  `mata_anggaran` varchar(100) DEFAULT NULL,
  `keterangan_lain` text DEFAULT NULL,
  `tgl_input` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sppd`
--

INSERT INTO `sppd` (`id_sppd`, `no_sppd`, `pejabat_perintah`, `id_pegawai`, `tempat_tujuan`, `maksud_perjalanan`, `id_transportasi`, `id_bbm`, `lama_perjalanan`, `tanggal_berangkat`, `tanggal_kembali`, `instansi`, `mata_anggaran`, `keterangan_lain`, `tgl_input`) VALUES
(10, '56346364', 'suratno', 9, 'Yogyakarta', 'dinas', 3, 13, 1, '2025-02-27', '2025-02-28', '', '', 'ff', '2025-02-10 12:56:20'),
(11, '56346364', 'suratno', 5, 'demak', 'sosialisasi', 1, 13, 1, '2025-02-08', '2025-02-09', '', '', 'd', '2025-02-07 19:19:50'),
(12, '56346364', 'suratno', 8, 'Yogyakarta', 'dinas', 4, 17, 1, '2025-02-08', '2025-02-09', '', '', '-', '2025-02-10 10:17:15'),
(13, '56346364444444', 'misro', 8, 'Yogyakarta', 'dinas', 2, 16, 1, '2025-02-08', '2025-02-09', '', '', 'd', '2025-02-07 19:25:56'),
(15, '56346364444444', 'misro', 8, 'Semarang', 'sosialisasi', 3, 10, 2, '2025-02-10', '2025-02-12', '', '', '-', '2025-02-10 10:17:03'),
(16, '56346364', 'misro', 8, 'Yogyakarta', 'sosialisasi', 2, 17, 1, '2025-02-11', '2025-02-12', '', '', '-', '2025-02-10 10:15:18'),
(18, '-', 'misro', 8, 'demakk', '-', 2, 11, 6, '2025-02-10', '2025-02-16', '', '', 'dinas', '2010-02-25 10:00:30'),
(21, '4325', 'mitro', 8, 'Semarang', 'dinas', 3, 0, 1, '2025-02-11', '2025-02-12', '', '', '-', '2025-02-11 19:14:50'),
(22, '442', 'supar', 10, 'jakarta', 'hg,jhfy', 4, 0, 0, '2025-02-11', '2025-02-12', '', '', 'f', '2025-02-11 19:14:37'),
(23, '423', 'rg', 9, 'sgdf', 'ewf', 4, 0, 2, '2025-02-11', '2025-02-12', '', '', 'frg', '2025-02-11 19:42:23'),
(24, '3', 'efcs', 8, 'r', '--', 3, 0, 2, '2025-03-05', '2025-03-06', '', '', '-', '2025-02-11 19:57:16'),
(25, '32', 'rs', 5, 'ree', 'grshs', 3, 7, 2, '2025-02-11', '2025-02-19', '', '', 'hegdz', '2025-02-11 20:59:14'),
(26, '432', 'b', 5, 'gd', 'g', 2, 9, 4, '2025-02-18', '2025-02-19', '', '', 'tg', '2025-02-11 21:44:56'),
(27, '8', 'x', 5, 'x', 'x', 2, 11, 1, '2025-02-12', '2025-02-13', '', '', 'x', '2025-02-12 07:10:10');

-- --------------------------------------------------------

--
-- Table structure for table `tingkatan`
--

CREATE TABLE `tingkatan` (
  `id_tingkatan` int(11) NOT NULL,
  `tingkatan` varchar(50) DEFAULT NULL,
  `keterangan` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tingkatan`
--

INSERT INTO `tingkatan` (`id_tingkatan`, `tingkatan`, `keterangan`) VALUES
(1, 'Tingkat A', 'Bupati dan Wakil Bupati'),
(2, 'Tingkat B', 'Ketua DPRD'),
(3, 'Tingkat C', 'Ketua DPRD'),
(4, 'Tingkat D', 'Ketua DPR'),
(5, 'Tingkat E', 'Ketua DPRD'),
(6, 'Tingkat F', 'DPR'),
(7, 'Tingkat G', 'Ketua DPR'),
(8, 'Tingkat H', 'Ketua Komisaris');

-- --------------------------------------------------------

--
-- Table structure for table `tingkatan_perjalanan`
--

CREATE TABLE `tingkatan_perjalanan` (
  `id_tingkatan_perjalanan` int(11) NOT NULL,
  `id_tingkatan` int(11) NOT NULL,
  `id_pegawai` int(11) DEFAULT NULL,
  `luar_solo` int(11) DEFAULT NULL,
  `dalam_solo` int(11) DEFAULT NULL,
  `kurang_8_jam` int(11) DEFAULT NULL,
  `lebih_8_jam` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tingkatan_perjalanan`
--

INSERT INTO `tingkatan_perjalanan` (`id_tingkatan_perjalanan`, `id_tingkatan`, `id_pegawai`, `luar_solo`, `dalam_solo`, `kurang_8_jam`, `lebih_8_jam`) VALUES
(3, 3, 9, 300000, 0, 4420000, 0),
(4, 8, 5, 50000, 0, 0, 100000),
(5, 2, 9, 50000, 0, 330000, 1),
(6, 7, 10, 300000, 0, 330000, 0);

-- --------------------------------------------------------

--
-- Table structure for table `transportasi`
--

CREATE TABLE `transportasi` (
  `id_transportasi` int(11) NOT NULL,
  `transportasi` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transportasi`
--

INSERT INTO `transportasi` (`id_transportasi`, `transportasi`) VALUES
(1, 'Mobil Dinas'),
(2, 'Bus'),
(3, 'kereta api'),
(4, 'Sepeda Motor');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bbm`
--
ALTER TABLE `bbm`
  ADD PRIMARY KEY (`id_bbm`);

--
-- Indexes for table `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`id_config`);

--
-- Indexes for table `golongan`
--
ALTER TABLE `golongan`
  ADD PRIMARY KEY (`id_golongan`);

--
-- Indexes for table `jabatan`
--
ALTER TABLE `jabatan`
  ADD PRIMARY KEY (`id_jabatan`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pangkat`
--
ALTER TABLE `pangkat`
  ADD PRIMARY KEY (`id_pangkat`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id_pegawai`);

--
-- Indexes for table `perjalanan`
--
ALTER TABLE `perjalanan`
  ADD PRIMARY KEY (`id_perjalanan`);

--
-- Indexes for table `perjalanan_kota`
--
ALTER TABLE `perjalanan_kota`
  ADD PRIMARY KEY (`id_perjalanan_kota`);

--
-- Indexes for table `sppd`
--
ALTER TABLE `sppd`
  ADD PRIMARY KEY (`id_sppd`);

--
-- Indexes for table `tingkatan`
--
ALTER TABLE `tingkatan`
  ADD PRIMARY KEY (`id_tingkatan`);

--
-- Indexes for table `tingkatan_perjalanan`
--
ALTER TABLE `tingkatan_perjalanan`
  ADD PRIMARY KEY (`id_tingkatan_perjalanan`);

--
-- Indexes for table `transportasi`
--
ALTER TABLE `transportasi`
  ADD PRIMARY KEY (`id_transportasi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bbm`
--
ALTER TABLE `bbm`
  MODIFY `id_bbm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `config`
--
ALTER TABLE `config`
  MODIFY `id_config` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `golongan`
--
ALTER TABLE `golongan`
  MODIFY `id_golongan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `jabatan`
--
ALTER TABLE `jabatan`
  MODIFY `id_jabatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `pangkat`
--
ALTER TABLE `pangkat`
  MODIFY `id_pangkat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id_pegawai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `perjalanan`
--
ALTER TABLE `perjalanan`
  MODIFY `id_perjalanan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `perjalanan_kota`
--
ALTER TABLE `perjalanan_kota`
  MODIFY `id_perjalanan_kota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sppd`
--
ALTER TABLE `sppd`
  MODIFY `id_sppd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tingkatan`
--
ALTER TABLE `tingkatan`
  MODIFY `id_tingkatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tingkatan_perjalanan`
--
ALTER TABLE `tingkatan_perjalanan`
  MODIFY `id_tingkatan_perjalanan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `transportasi`
--
ALTER TABLE `transportasi`
  MODIFY `id_transportasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
