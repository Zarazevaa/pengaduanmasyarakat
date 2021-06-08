-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 08 Jun 2021 pada 13.52
-- Versi server: 10.1.36-MariaDB
-- Versi PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pengaduan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `masyarakat`
--

CREATE TABLE `masyarakat` (
  `nik` varchar(16) NOT NULL,
  `nama` varchar(35) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(32) NOT NULL,
  `telp` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `masyarakat`
--

INSERT INTO `masyarakat` (`nik`, `nama`, `username`, `password`, `telp`) VALUES
('002', 'zara', 'zara', '123', '0989090909'),
('1222', 'mas adil', 'adil', '123', '0989090909');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengaduan`
--

CREATE TABLE `pengaduan` (
  `id_pengaduan` int(11) NOT NULL,
  `tgl_pengaduan` date NOT NULL,
  `nik` varchar(16) NOT NULL,
  `isi_laporan` text NOT NULL,
  `foto` varchar(255) NOT NULL,
  `status` enum('belum ditanggapi','proses','selesai','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pengaduan`
--

INSERT INTO `pengaduan` (`id_pengaduan`, `tgl_pengaduan`, `nik`, `isi_laporan`, `foto`, `status`) VALUES
(1, '2021-03-28', '3504041808020002', 'tes laporan', 'WhatsApp Image 2021-03-19 at 09.57.04.jpeg', 'selesai'),
(2, '2021-03-28', '3504041808020002', 'tes laporan 2', 'WhatsApp Image 2021-03-18 at 10.34.19.jpeg', 'selesai'),
(3, '2021-03-29', '002', 'tanggal 29', 'kucing.jpg', 'selesai'),
(4, '2021-03-29', '002', 'hari ini senin', 'kucing.jpg', 'selesai'),
(5, '2021-03-30', '002', 'wsertyujkilop', 'kucing.jpg', 'selesai'),
(6, '2021-03-30', '002', 'pengaduan mengenai pencurian', 'kucing.jpg', 'selesai'),
(7, '2021-03-31', '002', 'we3r4t5y6u78i9', 'kucing.jpg', 'selesai'),
(8, '2021-04-20', '002', 'ini adalah laporan hari ini', 'kucing.jpg', 'selesai'),
(9, '2021-04-20', '002', 'laporan', 'kucing.jpg', 'selesai'),
(10, '2021-04-20', '1222', 'enggak', 'kucing.jpg', 'selesai'),
(11, '2021-04-20', '1222', 'hai mas adil', 'kucing.jpg', ''),
(12, '2021-04-20', '1222', '1111', 'kucing.jpg', ''),
(13, '2021-04-20', '1222', 'tes', 'kucing.jpg', ''),
(14, '2021-04-20', '1222', 'tes lagi', 'kucing.jpg', ''),
(15, '2021-04-20', '1222', 'bismillah', 'kucing.jpg', 'proses'),
(16, '2021-04-20', '1222', 'oh', 'kucing.jpg', 'selesai'),
(17, '2021-04-21', '002', 'kucing hilang', 'kucing.jpg', 'proses'),
(18, '2021-04-21', '002', 'kehilangan kucing', 'kucing.jpg', 'belum ditanggapi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `petugas`
--

CREATE TABLE `petugas` (
  `id_petugas` int(11) NOT NULL,
  `nama_petugas` varchar(35) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(32) NOT NULL,
  `telp` varchar(13) NOT NULL,
  `level` enum('admin','petugas','','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `petugas`
--

INSERT INTO `petugas` (`id_petugas`, `nama_petugas`, `username`, `password`, `telp`, `level`) VALUES
(5, 'azzurra', 'azzurra', '123', '08808080', 'admin'),
(7, 'zeva', 'zeva', '123', '0989090909', 'petugas');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tanggapan`
--

CREATE TABLE `tanggapan` (
  `id_tanggapan` int(11) NOT NULL,
  `id_pengaduan` int(11) NOT NULL,
  `tgl_tanggapan` date NOT NULL,
  `tanggapan` text NOT NULL,
  `id_petugas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tanggapan`
--

INSERT INTO `tanggapan` (`id_tanggapan`, `id_pengaduan`, `tgl_tanggapan`, `tanggapan`, `id_petugas`) VALUES
(1, 1, '2021-03-28', 'tes tanggapan', 2),
(2, 2, '2021-03-28', '\r\n                laporan ditanggapi', 2),
(3, 3, '2021-03-29', '\r\n\r\n                ', 5),
(4, 4, '2021-03-29', '\r\n\r\n                sudah ditanggapi', 5),
(5, 5, '2021-03-30', '\r\n\r\n     ditanggapi', 5),
(6, 6, '2021-03-30', '\r\n\r\n                pengaduan ini sudah ditanggapi', 5),
(7, 8, '2021-04-20', '\r\n\r\n                tanggapan', 5),
(8, 7, '2021-04-20', '\r\n\r\n                tanggapan', 5),
(9, 9, '2021-04-20', '\r\n\r\n                tanggapi', 5),
(10, 16, '2021-04-20', '\r\n\r\n                tanggapi', 5),
(11, 10, '2021-04-21', '\r\n\r\n                tanggapan hari ini', 5);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `masyarakat`
--
ALTER TABLE `masyarakat`
  ADD PRIMARY KEY (`nik`);

--
-- Indeks untuk tabel `pengaduan`
--
ALTER TABLE `pengaduan`
  ADD PRIMARY KEY (`id_pengaduan`);

--
-- Indeks untuk tabel `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`id_petugas`);

--
-- Indeks untuk tabel `tanggapan`
--
ALTER TABLE `tanggapan`
  ADD PRIMARY KEY (`id_tanggapan`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `pengaduan`
--
ALTER TABLE `pengaduan`
  MODIFY `id_pengaduan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `petugas`
--
ALTER TABLE `petugas`
  MODIFY `id_petugas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `tanggapan`
--
ALTER TABLE `tanggapan`
  MODIFY `id_tanggapan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
