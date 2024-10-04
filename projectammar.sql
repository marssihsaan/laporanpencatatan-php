-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 28 Des 2023 pada 01.57
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projectammar`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `keluar`
--

CREATE TABLE `keluar` (
  `idkeluar` int(11) NOT NULL,
  `idbarang` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp(),
  `penerima` varchar(25) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `keluar`
--

INSERT INTO `keluar` (`idkeluar`, `idbarang`, `tanggal`, `penerima`, `qty`) VALUES
(1, 3, '2023-11-19 20:41:15', 'Intan', 4),
(2, 3, '2023-11-20 04:54:39', 'Citra', 10),
(3, 10, '2023-11-20 04:55:01', 'Citra', 10),
(4, 21, '2023-11-21 15:29:13', 'Intan', 100),
(7, 22, '2023-11-28 20:25:35', 'Mika', 10),
(9, 24, '2023-11-30 16:32:55', 'Syahrul', 6),
(17, 28, '2023-12-07 17:28:19', 'jhk', 12),
(19, 30, '2023-12-07 18:08:27', 'ggjg', 6),
(20, 31, '2023-12-07 20:52:19', '', 4),
(24, 33, '2023-12-11 15:35:59', '', 0),
(26, 32, '2023-12-11 15:44:12', '', 0),
(28, 35, '2023-12-28 00:51:23', '', 0),
(29, 34, '2023-12-28 00:51:31', '', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `iduser` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`iduser`, `email`, `password`) VALUES
(1, 'admin1@gmail.com', '12345'),
(5, 'admin2@gmail.com', '1234');

-- --------------------------------------------------------

--
-- Struktur dari tabel `masuk`
--

CREATE TABLE `masuk` (
  `idmasuk` int(11) NOT NULL,
  `idbarang` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp(),
  `keterangan` varchar(25) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `masuk`
--

INSERT INTO `masuk` (`idmasuk`, `idbarang`, `tanggal`, `keterangan`, `qty`) VALUES
(2, 3, '2023-11-19 20:21:07', 'Syahrul', 12),
(3, 10, '2023-11-20 04:54:10', 'Citra', 10),
(4, 11, '2023-11-21 14:13:25', 'Imam', 10),
(5, 12, '2023-11-21 14:15:22', 'Citra', 1),
(6, 13, '2023-11-21 14:22:10', 'Syahrul', 200),
(7, 2, '2023-11-21 14:47:49', 'Citra', 12),
(8, 14, '2023-11-21 14:56:05', '-', 10),
(9, 15, '2023-11-21 14:58:23', 'Syahrul', 10),
(10, 16, '2023-11-21 14:59:59', 'P', 20),
(16, 21, '2023-11-21 15:28:59', 'Sumi', 300),
(18, 22, '2023-11-22 16:10:15', 'Derbi', 10),
(21, 22, '2023-11-28 20:27:12', 'Tutun', 12),
(23, 24, '2023-12-04 18:36:40', 'Citra', 21);

-- --------------------------------------------------------

--
-- Struktur dari tabel `stock`
--

CREATE TABLE `stock` (
  `idbarang` int(11) NOT NULL,
  `namabarang` varchar(50) NOT NULL,
  `deskripsi` varchar(50) NOT NULL,
  `stock` int(11) NOT NULL,
  `jenisrusak` varchar(100) NOT NULL,
  `admin` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `stock`
--

INSERT INTO `stock` (`idbarang`, `namabarang`, `deskripsi`, `stock`, `jenisrusak`, `admin`, `status`) VALUES
(32, 'Yana', 'Gedung n, Lantai n, Ruang n', 0, 'n, n, n, n, n', 'n', 'Selesai Ditangani'),
(34, 'Ilham', 'Gedung n, Lantai n, Ruang n', 0, 'n, n, n', 'Pak Dedy', 'Selesai Ditangani'),
(35, 'Purwo', 'Gedung A, Lantai B, Ruang C', 0, 'Kabel putus', 'Demo 1', 'Selesai Ditangani');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `keluar`
--
ALTER TABLE `keluar`
  ADD PRIMARY KEY (`idkeluar`);

--
-- Indeks untuk tabel `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`iduser`);

--
-- Indeks untuk tabel `masuk`
--
ALTER TABLE `masuk`
  ADD PRIMARY KEY (`idmasuk`);

--
-- Indeks untuk tabel `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`idbarang`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `keluar`
--
ALTER TABLE `keluar`
  MODIFY `idkeluar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT untuk tabel `login`
--
ALTER TABLE `login`
  MODIFY `iduser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `masuk`
--
ALTER TABLE `masuk`
  MODIFY `idmasuk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `stock`
--
ALTER TABLE `stock`
  MODIFY `idbarang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
