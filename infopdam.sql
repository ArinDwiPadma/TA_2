-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 25, 2023 at 03:37 AM
-- Server version: 5.7.24
-- PHP Version: 7.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `infopdam`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_monitoring`
--

CREATE TABLE `tb_monitoring` (
  `id` int(11) NOT NULL,
  `no_sambungan` varchar(50) NOT NULL,
  `namapelanggan` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `standlalu` varchar(50) NOT NULL,
  `standsekarang` varchar(50) NOT NULL,
  `jenis_tarif` varchar(100) NOT NULL,
  `tanggal` date NOT NULL,
  `petugas` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_monitoring`
--

INSERT INTO `tb_monitoring` (`id`, `no_sambungan`, `namapelanggan`, `alamat`, `standlalu`, `standsekarang`, `jenis_tarif`, `tanggal`, `petugas`) VALUES
(1, '079409', 'Ferdy Ramadhan, S.Kom.', 'Metro Lampung', '000000', '002158', '1300', '2023-05-23', 'Ferdy');

-- --------------------------------------------------------

--
-- Table structure for table `tb_tagihan`
--

CREATE TABLE `tb_tagihan` (
  `id` int(11) NOT NULL,
  `namapelanggan` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `no_sambungan` varchar(30) NOT NULL,
  `standmeter` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_tagihan`
--

INSERT INTO `tb_tagihan` (`id`, `namapelanggan`, `alamat`, `no_sambungan`, `standmeter`) VALUES
(1, 'Ferdy Ramadhan, S.Kom.', 'Metro Lampung', '079409', '002158');

-- --------------------------------------------------------

--
-- Table structure for table `tb_users`
--

CREATE TABLE `tb_users` (
  `id` int(11) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `tmpt_lahir` varchar(150) NOT NULL,
  `tgllahir` date NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `wilayah` varchar(255) NOT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_users`
--

INSERT INTO `tb_users` (`id`, `nama`, `tmpt_lahir`, `tgllahir`, `alamat`, `wilayah`, `foto`, `username`, `password`, `role`) VALUES
(1, 'Ferdy Ramadhan', 'Metro', '1995-02-02', 'Metro', 'Metro Pusat', '', 'glory', '18a80828732d19e646a5e5ce4b1833f1d7418988', 'admin'),
(14, 'Ferdy', 'Metro', '2023-05-23', 'Metro', 'Metro', 'ba6c94cb3485f23f8e02c947e64b94a7.jpg', 'petugas', '670489f94b6997a870b148f74744ee5676304925', 'petugas');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_monitoring`
--
ALTER TABLE `tb_monitoring`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_tagihan`
--
ALTER TABLE `tb_tagihan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_users`
--
ALTER TABLE `tb_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_monitoring`
--
ALTER TABLE `tb_monitoring`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_tagihan`
--
ALTER TABLE `tb_tagihan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_users`
--
ALTER TABLE `tb_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
