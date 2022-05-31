-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 30, 2022 at 07:12 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `my_hotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `fasilitas`
--

CREATE TABLE `fasilitas` (
  `id_fasilitas` int(10) NOT NULL,
  `nama_fasilitas` varchar(25) NOT NULL,
  `ket_fasilitas` text NOT NULL,
  `gambar_fasilitas` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fasilitas`
--

INSERT INTO `fasilitas` (`id_fasilitas`, `nama_fasilitas`, `ket_fasilitas`, `gambar_fasilitas`) VALUES
(15, 'Fitness Center', 'Di gunakan untuk berolahraga agar tubuh menjadi sehat', '627faeeb09ed3.jpg'),
(16, 'Restoran', 'Untuk Makan', '627faf66517a3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `kamar`
--

CREATE TABLE `kamar` (
  `id_kamar` int(5) NOT NULL,
  `nama_kamar` varchar(10) NOT NULL,
  `fasilitas_kamar` text NOT NULL,
  `jumlah_kasur` int(3) NOT NULL,
  `gambar_kamar` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kamar`
--

INSERT INTO `kamar` (`id_kamar`, `nama_kamar`, `fasilitas_kamar`, `jumlah_kasur`, `gambar_kamar`) VALUES
(17, 'Superior', 'Room 24m2, AC,LED TV, Hot & Cold water,Shower, Tea & coffee maker, Refrigerator, TV Cable, Free Wifi, Electronic key card.', 1, '6280f220490ac.jpg'),
(18, 'DELUXE', 'Room 28m2, AC, LED TV, Hot & Cold water,Shower, Tea & coffee maker, Refrigerator, TV Cable, Free Wifi, Electronic key card.', 1, '6280f26e183c8.jpg'),
(19, 'Executive', 'Room 32m2, AC,LED TV, Hot & Cold water,Bath up, Shower,Tea & coffee maker, Refrigerator, TV Cable, Free Wifi, Electronic key card.', 1, '6280f2902065b.jpg'),
(20, 'Couple', 'Room 32m2, AC,LED TV, Hot & Cold water,Bath up, Shower,Tea & coffee maker, Refrigerator, TV Cable, Free Wifi, Electronic key card.', 2, '6280f2adcf941.jpg'),
(21, 'superior', 'tv,ac', 1, '6285b1688c430.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `pemesanan`
--

CREATE TABLE `pemesanan` (
  `id_pemesanan` int(10) NOT NULL,
  `nama_pemesan` varchar(30) NOT NULL,
  `nomor_hp` varchar(15) NOT NULL,
  `email` varchar(30) NOT NULL,
  `nama_tamu` varchar(30) NOT NULL,
  `check_in` varchar(15) NOT NULL,
  `check_out` varchar(15) NOT NULL,
  `jumlah_kamar` int(5) NOT NULL,
  `tipe_kamar` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pemesanan`
--

INSERT INTO `pemesanan` (`id_pemesanan`, `nama_pemesan`, `nomor_hp`, `email`, `nama_tamu`, `check_in`, `check_out`, `jumlah_kamar`, `tipe_kamar`) VALUES
(6, 'metttt', '087859391106', 'mettt@gmail.com', 'aku', '05/24/2022', '05/25/2022', 1, '1'),
(7, 'Noufal Mulki', '+6285860943032', 'noufalmalikal27@email.com', 'noufal', '05/17/2022', '05/18/2022', 2, 'Executive'),
(8, 'AbdiTeh', '08888999999', 'abdi@gmail.com', 'ppp', '05/24/2022', '05/25/2022', 3, 'Superior'),
(9, 'abdii', '087859391106', 'mettt@gmail.com', 'abdi', '05/30/2022', '06/03/2022', 3, 'Executive'),
(10, 'Noufal MM', '+6285860943032', 'noufalmalikal27@email.com', 'Noufal', '05/16/2022', '05/18/2022', 1, 'Superior'),
(15, 'Noufal', '+6285860943032', 'abdi@gmail.com', 'abdi', '05/10/2022', '05/11/2022', 2, 'Superior'),
(16, 'Noufal', '+6285860943032', 'noufalmalikal27@email.com', 'abdi', '05/15/2022', '05/24/2022', 6, 'Superior'),
(17, 'abdii', '+6285860943032', 'noufalmalikal27@email.com', 'aku', '05/10/2022', '05/11/2022', 1, 'Superior'),
(18, 'Noufal MM', '+6285860943032', 'noufalmalikal27@email.com', 'noufal', '05/20/2022', '05/21/2022', 1, 'Superior'),
(20, 'alan', '098765', 'alan@gmail.com', 'abdi', '05/20/2022', '05/22/2022', 2, 'Executive');

-- --------------------------------------------------------

--
-- Table structure for table `petugas`
--

CREATE TABLE `petugas` (
  `id_petugas` int(10) NOT NULL,
  `nama_petugas` varchar(25) NOT NULL,
  `level` enum('admin','resepsionis','','') NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `petugas`
--

INSERT INTO `petugas` (`id_petugas`, `nama_petugas`, `level`, `username`, `password`) VALUES
(1, 'admin', 'admin', 'admin', '21232f297a57a5a743894a0e4a801fc3'),
(3, 'resepsionis', 'resepsionis', 'resepsionis', '3aeff485f68b360d076de3d73f9247ad');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fasilitas`
--
ALTER TABLE `fasilitas`
  ADD PRIMARY KEY (`id_fasilitas`);

--
-- Indexes for table `kamar`
--
ALTER TABLE `kamar`
  ADD PRIMARY KEY (`id_kamar`);

--
-- Indexes for table `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD PRIMARY KEY (`id_pemesanan`);

--
-- Indexes for table `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`id_petugas`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fasilitas`
--
ALTER TABLE `fasilitas`
  MODIFY `id_fasilitas` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `kamar`
--
ALTER TABLE `kamar`
  MODIFY `id_kamar` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `pemesanan`
--
ALTER TABLE `pemesanan`
  MODIFY `id_pemesanan` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `petugas`
--
ALTER TABLE `petugas`
  MODIFY `id_petugas` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
