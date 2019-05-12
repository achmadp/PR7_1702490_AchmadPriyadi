-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 15, 2019 at 11:31 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kereta_join`
--

-- --------------------------------------------------------

--
-- Table structure for table `gerbong`
--

CREATE TABLE `gerbong` (
  `id_gerbong` int(11) NOT NULL,
  `kd_gerbong` varchar(50) NOT NULL,
  `kd_kereta` varchar(50) NOT NULL,
  `nama_gerbong` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gerbong`
--

INSERT INTO `gerbong` (`id_gerbong`, `kd_gerbong`, `kd_kereta`, `nama_gerbong`) VALUES
(1, 'GRB0001', 'KRT0002', 'A01'),
(2, 'GRB0002', 'KRT0002', 'B01'),
(4, 'GRB0003', 'KRT0003', 'C01');

-- --------------------------------------------------------

--
-- Table structure for table `kursi`
--

CREATE TABLE `kursi` (
  `id_kursi` int(11) NOT NULL,
  `kd_kursi` varchar(50) DEFAULT NULL,
  `kd_gerbong` varchar(50) DEFAULT NULL,
  `kd_kereta` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kursi`
--

INSERT INTO `kursi` (`id_kursi`, `kd_kursi`, `kd_gerbong`, `kd_kereta`) VALUES
(1, 'KRS001', 'GRB0001', 'KRT0001'),
(2, 'KRS002', 'GRB0001', 'KRT0001');

-- --------------------------------------------------------

--
-- Table structure for table `lokomotif`
--

CREATE TABLE `lokomotif` (
  `id_kereta` int(11) NOT NULL,
  `kd_kereta` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lokomotif`
--

INSERT INTO `lokomotif` (`id_kereta`, `kd_kereta`, `nama`) VALUES
(1, 'KRT0001', 'Argo Wilis'),
(2, 'KRT0002', 'MALABAR'),
(3, 'KRT0003', 'KURTOJOYO');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gerbong`
--
ALTER TABLE `gerbong`
  ADD PRIMARY KEY (`id_gerbong`),
  ADD KEY `fk_kereta` (`kd_kereta`),
  ADD KEY `kd_gerbong` (`kd_gerbong`);

--
-- Indexes for table `kursi`
--
ALTER TABLE `kursi`
  ADD PRIMARY KEY (`id_kursi`),
  ADD KEY `fk_kereta2` (`kd_kereta`),
  ADD KEY `fk_gerbong` (`kd_gerbong`);

--
-- Indexes for table `lokomotif`
--
ALTER TABLE `lokomotif`
  ADD PRIMARY KEY (`id_kereta`),
  ADD KEY `kode_kereta` (`kd_kereta`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gerbong`
--
ALTER TABLE `gerbong`
  MODIFY `id_gerbong` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `kursi`
--
ALTER TABLE `kursi`
  MODIFY `id_kursi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `lokomotif`
--
ALTER TABLE `lokomotif`
  MODIFY `id_kereta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `gerbong`
--
ALTER TABLE `gerbong`
  ADD CONSTRAINT `fk_kereta` FOREIGN KEY (`kd_kereta`) REFERENCES `lokomotif` (`kd_kereta`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `kursi`
--
ALTER TABLE `kursi`
  ADD CONSTRAINT `fk_gerbong` FOREIGN KEY (`kd_gerbong`) REFERENCES `gerbong` (`kd_gerbong`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_kereta2` FOREIGN KEY (`kd_kereta`) REFERENCES `lokomotif` (`kd_kereta`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
