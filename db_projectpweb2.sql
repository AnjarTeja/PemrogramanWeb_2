-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 03, 2025 at 10:36 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_projectpweb2`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE `tb_admin` (
  `id` int(10) NOT NULL,
  `username` varchar(225) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`id`, `username`, `password`) VALUES
(1, 'admin@gmail.com', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `tb_daftarmenu`
--

CREATE TABLE `tb_daftarmenu` (
  `id` int(10) NOT NULL,
  `foto` varchar(225) NOT NULL,
  `nama_menu` char(50) NOT NULL,
  `deskripsi_menu` varchar(255) NOT NULL,
  `harga` char(30) NOT NULL,
  `stok` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_daftarmenu`
--

INSERT INTO `tb_daftarmenu` (`id`, `foto`, `nama_menu`, `deskripsi_menu`, `harga`, `stok`) VALUES
(1, 'Ayam Goreng.jpg', 'Ayam Goreng', 'Ayam Goreng, Tahu, Tempe, Sambel', 'Rp.10.000', 15),
(2, 'Ayam Bakar.jpg', 'Ayam Bakar', 'Ayam Bakar, Tahu, Tempe, Sambel', 'Rp.10.000', 10),
(3, 'Ayam Spesial.jpg', 'Ayam Spesial', 'Ayam Spesial, Tahu, Tempe, Sambel', 'Rp.15.000', 15);

-- --------------------------------------------------------

--
-- Table structure for table `tb_order`
--

CREATE TABLE `tb_order` (
  `id` int(10) NOT NULL,
  `pelanggan` char(50) NOT NULL,
  `nohp` int(12) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `pesanan` char(30) NOT NULL,
  `jumlah_pesan` int(5) NOT NULL,
  `total_harga` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_order`
--

INSERT INTO `tb_order` (`id`, `pelanggan`, `nohp`, `alamat`, `pesanan`, `jumlah_pesan`, `total_harga`) VALUES
(1, 'Anjar', 12345678, 'DKI Subang Metropolitan City', 'Ayam Bakar', 3, 'Rp.30.000'),
(2, 'Adhim (Emod)', 87654321, 'Antah Berantah', 'Ayam Goreng', 6, 'Rp.60.000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_daftarmenu`
--
ALTER TABLE `tb_daftarmenu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_order`
--
ALTER TABLE `tb_order`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_daftarmenu`
--
ALTER TABLE `tb_daftarmenu`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_order`
--
ALTER TABLE `tb_order`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
