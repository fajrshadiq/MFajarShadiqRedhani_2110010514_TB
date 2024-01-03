-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 03, 2024 at 08:12 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_tiket`
--

-- --------------------------------------------------------

--
-- Table structure for table `jadwalpenerbangan`
--

CREATE TABLE `jadwalpenerbangan` (
  `id_penerbangan` int(11) NOT NULL,
  `nama_maskapai` varchar(30) NOT NULL,
  `tujuan_penerbangan` varchar(30) NOT NULL,
  `tanggal_penerbangan` varchar(30) NOT NULL,
  `jam_penerbangan` varchar(10) NOT NULL,
  `jenis_penerbangan` varchar(25) NOT NULL,
  `harga` varchar(13) NOT NULL,
  `status_ketersediaan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jadwalpenerbangan`
--

INSERT INTO `jadwalpenerbangan` (`id_penerbangan`, `nama_maskapai`, `tujuan_penerbangan`, `tanggal_penerbangan`, `jam_penerbangan`, `jenis_penerbangan`, `harga`, `status_ketersediaan`) VALUES
(8, 'Garuda Air', 'BALI', 'January 5, 2024', '12 : 30', 'Business Class', '1500000', 'Available'),
(9, 'Lion Air', 'YOGYAKARTA', 'January 5, 2024', '16 : 50', 'Economy Class', '650000', 'Available');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `nama_pelanggan` varchar(20) NOT NULL,
  `tanggal` varchar(20) NOT NULL,
  `nama_maskapai` varchar(30) NOT NULL,
  `tujuan_penerbangan` varchar(50) NOT NULL,
  `jenis_penerbangan` varchar(25) NOT NULL,
  `jam_penerbangan` varchar(20) NOT NULL,
  `harga_tiket` int(30) NOT NULL,
  `jumlah_tiket` int(15) NOT NULL,
  `total_pembayaran` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `nama_pelanggan`, `tanggal`, `nama_maskapai`, `tujuan_penerbangan`, `jenis_penerbangan`, `jam_penerbangan`, `harga_tiket`, `jumlah_tiket`, `total_pembayaran`) VALUES
(6, 'Radi Mahardika', 'January 3, 2024', 'Garuda Air', 'YOGYAKARTA', 'Business Class', '14 : 00', 1000000, 1, 1000000),
(9, 'Bintang Yudha', 'January 3, 2024', 'Lion Air', 'YOGYAKARTA', 'Economy Class', '14 : 00', 1200000, 3, 3600000),
(10, 'Rani Maharani', 'January 3, 2024', 'Citilink', 'YOGYAKARTA', 'Business Class', '16 : 00', 1200000, 2, 2400000),
(11, 'Dinda Larasati', 'January 16, 2024', 'Garuda Air', 'SURABAYA', 'Business Class', '16 : 00', 1350000, 2, 2700000);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `nama_user` varchar(30) NOT NULL,
  `id_level` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `nama_user`, `id_level`) VALUES
(1, 'admin', 'admin123', 'Rad', 2),
(6, 'admin', 'admin', 'admin', 2),
(7, 'user123', 'user', 'user', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jadwalpenerbangan`
--
ALTER TABLE `jadwalpenerbangan`
  ADD PRIMARY KEY (`id_penerbangan`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jadwalpenerbangan`
--
ALTER TABLE `jadwalpenerbangan`
  MODIFY `id_penerbangan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
