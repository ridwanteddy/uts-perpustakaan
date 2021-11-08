-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 08, 2021 at 02:37 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpustakaan`
--

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `id` int(11) NOT NULL,
  `judul` char(100) NOT NULL,
  `pengarang` varchar(250) NOT NULL,
  `penerbit` varchar(64) NOT NULL,
  `gambar` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`id`, `judul`, `pengarang`, `penerbit`, `gambar`) VALUES
(1, 'Buku Writing for Healing', 'Adi Utarini', 'ISBN', '61887e10461e9.jpg'),
(22, 'Jamu: Pusaka Penjaga Kesehatan Bangsa', 'amilia Indraputri', 'ISBN', '6188703ee3064.jpg'),
(23, 'Morfologi Tumbuhan', 'Eni Harmayani', 'ISBN', '61887052e741c.jpg'),
(25, 'Pengantar Metodologi', 'Muhamad Supraja', 'ISBN', '6188706913333.jpg'),
(31, 'Buku ilmuan', 'Ferry Mulyanto', 'ISNB', '6188707d3ea45.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `kategor`
--

CREATE TABLE `kategor` (
  `id` int(11) NOT NULL,
  `kategori` varchar(100) NOT NULL,
  `diskripsi` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kategor`
--

INSERT INTO `kategor` (`id`, `kategori`, `diskripsi`) VALUES
(1, 'Kesehatan Masyarakat', 'Buku ini dibuat sebagai media berbagi kisah dan pengalaman para kontributor ketika mereka menghadapi'),
(2, 'Buku Bisnis', 'Buku ajar ini pada awalnya merupakan buku ajar mahasiswa Prodi Bahasa Prancis untuk sederet mata kul'),
(3, 'Kesehatan Masyarakat', 'Buku ini ingin mengajak para pembacanya untuk melihat dan menilai jamu sebagai produk yang sangat baik untuk kesehatan'),
(4, 'kesehatan masyarakat', 'Inisiatif untuk menulis buku ini telah dimulai tahun 1953. Ketika itu, penulis membantu mertuanya membantu untuk membuat buku ini'),
(5, 'Buku Sosial Budaya', 'Buku yang mengulas teori kritik sosial masyarakat secara keseluruhan cukup banyak. Meski demikian, sangat bermanfaat bagi kesenian');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`) VALUES
(1, 'sandhika', '$2y$10$onQI.9Nbm7fIdCtcMb/AgubQ6.BzgcQeWGN/cdCq.3y56aMvV6ele'),
(2, 'admin', '$2y$10$0QXCoCKUXxq9z4H4G2dH7ONr3TrCEWB5xZ0ySAyftkh0t.FOiexjK'),
(3, 'admin', '123'),
(4, 'herta', '$2y$10$Ql1s3muhaQJWDrOqKkn3POWLHhmd/vA5bQy/sySGYGDcVoQLJuCFC'),
(5, 'wawan', '$2y$10$ZJTkR7XMSpsmfX2AgD0i8O9roFP9C6Lo.oeNiu68s5TpTQOE7BLDO');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategor`
--
ALTER TABLE `kategor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `kategor`
--
ALTER TABLE `kategor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
