-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 23, 2022 at 07:27 AM
-- Server version: 10.5.17-MariaDB-cll-lve
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u1606793_laundry`
--

-- --------------------------------------------------------

--
-- Table structure for table `backset`
--

CREATE TABLE `backset` (
  `url` varchar(100) NOT NULL,
  `sessiontime` varchar(4) DEFAULT NULL,
  `footer` varchar(50) DEFAULT NULL,
  `themesback` varchar(2) DEFAULT NULL,
  `responsive` varchar(2) DEFAULT NULL,
  `haha` datetime DEFAULT NULL,
  `namabisnis1` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `backset`
--

INSERT INTO `backset` (`url`, `sessiontime`, `footer`, `themesback`, `responsive`, `haha`, `namabisnis1`) VALUES
('http://laundry.delidijital.com/', '', 'Deli Laundry', '2', '0', '2017-01-20 07:30:02', 'Nama Bisnis');

-- --------------------------------------------------------

--
-- Table structure for table `bayar`
--

CREATE TABLE `bayar` (
  `nota` varchar(20) NOT NULL,
  `tglmasuk` date DEFAULT NULL,
  `jammasuk` time DEFAULT NULL,
  `pelanggan` varchar(50) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `tgldeadline` date DEFAULT NULL,
  `jamdeadline` time DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `kasir` varchar(100) DEFAULT NULL,
  `catatan` varchar(255) DEFAULT NULL,
  `no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bayar`
--

INSERT INTO `bayar` (`nota`, `tglmasuk`, `jammasuk`, `pelanggan`, `total`, `tgldeadline`, `jamdeadline`, `status`, `kasir`, `catatan`, `no`) VALUES
('0003', '2017-01-15', '19:19:41', '1', 10000, '0000-00-00', '00:00:00', 'lunas', 'admin', '', 16),
('0004', '2017-01-15', '19:19:42', '0001', 14000, '0000-00-00', '00:00:00', 'lunas', 'admin', '', 17),
('0005', '2017-01-15', '19:19:42', '1', 21000, '0000-00-00', '00:00:00', 'lunas', 'admin', '', 18),
('0006', '2017-01-15', '19:19:46', '0001', 14000, '0000-00-00', '00:00:00', 'lunas', 'admin', '', 19),
('0007', '2019-11-25', '11:11:42', '0003', 10000, '2019-11-26', '00:00:11', 'lunas', 'admin', 'yang bersih', 20),
('0008', '2019-11-25', '11:11:42', '0003', 7000, '2019-11-26', '00:00:11', 'lunas', 'admin', 'yang bersih', 21),
('0009', '2022-10-20', '18:18:58', '1', 14000, '0000-00-00', '20:00:00', 'lunas', 'admin', 'Ambil cepat', 22),
('0010', '2022-10-21', '07:07:00', '0001', 10000, '0000-00-00', '18:00:00', 'selesai', 'admin', 'Dijemput Ny. Budi', 23),
('0011', '2022-10-21', '15:15:45', '0005', 0, '2022-10-22', '10:00:00', 'batal', 'admin', 'Besok diambil Istri AN Syiska', 24),
('0012', '2022-10-21', '15:15:55', '0005', 14000, '0000-00-00', '10:00:00', 'lunas', 'admin', 'Dijemput Ny. Syiska', 25),
('0013', '2022-10-22', '06:06:03', '', 125000, '0000-00-00', '00:00:00', 'lunas', 'admin', '', 26),
('0014', '2022-10-22', '06:06:03', '0006', 0, '0000-00-00', '00:00:00', 'lunas', 'admin', '', 27),
('0015', '2022-10-22', '06:06:04', '0006', 103000, '0000-00-00', '00:00:00', 'lunas', 'admin', '', 28),
('0016', '2022-10-22', '06:06:10', '', 170000, '0000-00-00', '00:00:00', 'lunas', 'admin', '', 29),
('0017', '2022-10-22', '06:06:12', '0006', 0, '0000-00-00', '00:00:00', 'batal', 'admin', '', 30),
('0018', '2022-10-22', '06:06:18', '1', 816000, '0000-00-00', '00:00:00', 'lunas', 'admin', '', 31),
('0019', '2022-10-22', '06:06:21', '0007', 3332000, '0000-00-00', '00:00:00', 'lunas', 'admin', '', 32),
('0020', '2022-10-22', '06:06:22', '0007', 102000, '2022-10-30', '00:00:00', 'lunas', 'admin', 'HARUS WANGI', 33);

-- --------------------------------------------------------

--
-- Table structure for table `chmenu`
--

CREATE TABLE `chmenu` (
  `userjabatan` varchar(20) NOT NULL,
  `menu1` varchar(1) DEFAULT '0',
  `menu2` varchar(1) DEFAULT '0',
  `menu3` varchar(1) DEFAULT '0',
  `menu4` varchar(1) DEFAULT '0',
  `menu5` varchar(1) DEFAULT '0',
  `menu6` varchar(1) DEFAULT '0',
  `menu7` varchar(1) DEFAULT '0',
  `menu8` varchar(1) DEFAULT '0',
  `menu9` varchar(1) DEFAULT '0',
  `menu10` varchar(1) DEFAULT '0',
  `menu11` varchar(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chmenu`
--

INSERT INTO `chmenu` (`userjabatan`, `menu1`, `menu2`, `menu3`, `menu4`, `menu5`, `menu6`, `menu7`, `menu8`, `menu9`, `menu10`, `menu11`) VALUES
('admin', '5', '5', '5', '5', '5', '5', '5', '5', '5', '0', '0'),
('demo', '', '4', '4', '4', '4', '2', '4', '0', '0', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `data`
--

CREATE TABLE `data` (
  `nama` varchar(100) DEFAULT NULL,
  `tagline` varchar(100) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `notelp` varchar(20) DEFAULT NULL,
  `signature` varchar(255) DEFAULT NULL,
  `avatar` varchar(150) DEFAULT NULL,
  `no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data`
--

INSERT INTO `data` (`nama`, `tagline`, `alamat`, `notelp`, `signature`, `avatar`, `no`) VALUES
('Deli Laundry', 'Laundry Bersih Pakai Aplikasi', 'Griya Shafa Marwa II, Kel. Paya Gambar, Kec. Batang Kuis, Kab. Deli Serdang, Sumatera Utara', '081312345678', 'Untuk melihat status cucian Anda, silahkan instruksi berikut\r\n1. Masuk ke aplikasi web browser di Smartphone Anda, masukkan halaman laundry.delidijital.com\r\n2. Kemudian tekan tombol Cek Status Cucian\r\n3. Masukkan Nomor Nota\r\n4. Done', 'dist/upload/index.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `info`
--

CREATE TABLE `info` (
  `nama` varchar(50) DEFAULT NULL,
  `avatar` varchar(100) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `isi` text DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `info`
--

INSERT INTO `info` (`nama`, `avatar`, `tanggal`, `isi`, `id`) VALUES
('admin', 'dist/img/avatar5.png', '2022-10-21', '<h1><br></h1>', 1);

-- --------------------------------------------------------

--
-- Table structure for table `jabatan`
--

CREATE TABLE `jabatan` (
  `kode` varchar(20) NOT NULL,
  `nama` varchar(20) DEFAULT NULL,
  `no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jabatan`
--

INSERT INTO `jabatan` (`kode`, `nama`, `no`) VALUES
('0001', 'admin', 28),
('0002', 'demo', 29);

-- --------------------------------------------------------

--
-- Table structure for table `jenis`
--

CREATE TABLE `jenis` (
  `kode` varchar(20) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `satuan` varchar(20) DEFAULT NULL,
  `biaya` int(11) DEFAULT NULL,
  `no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jenis`
--

INSERT INTO `jenis` (`kode`, `nama`, `satuan`, `biaya`, `no`) VALUES
('0001', 'Cuci Kering', '0001', 5000, 2),
('0002', 'Karpet', '0002', 7000, 3),
('0003', 'Cuci Setrika', '0001', 7000, 4),
('0004', 'Cuci', '0001', 5000, 5),
('0005', 'KEMEJA PANJANG', '0003', 34000, 6),
('0006', 'KEMEJA PANJANG 5', '0004', 34000, 7),
('0007', 'KEMEJA PANJANG 90', '0007', 34000, 8);

-- --------------------------------------------------------

--
-- Table structure for table `operasional`
--

CREATE TABLE `operasional` (
  `kode` varchar(20) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `biaya` int(11) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `kasir` varchar(20) DEFAULT NULL,
  `no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `kode` varchar(20) NOT NULL,
  `tgldaftar` date DEFAULT NULL,
  `nama` varchar(25) DEFAULT NULL,
  `alamat` varchar(70) DEFAULT NULL,
  `nohp` varchar(20) DEFAULT NULL,
  `no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`kode`, `tgldaftar`, `nama`, `alamat`, `nohp`, `no`) VALUES
('0001', '2022-10-21', 'Budi', 'Griya Cempka, Medan', '08121234567', 11),
('0002', '2017-01-15', 'Puspa', 'Jl Gajah Putih III no 8', '081232164429', 7),
('0003', '2019-11-25', 'Pak Japri', 'jalan marunda no 2', '08726282', 8),
('0006', '2022-10-22', 'asep', 'kedoya', '00000000', 14),
('0007', '2022-10-22', 'SHAMPO', '', '0xxxxxxx', 15),
('1', '0000-00-00', 'Non Member', '-', '-', 1);

-- --------------------------------------------------------

--
-- Table structure for table `satuan`
--

CREATE TABLE `satuan` (
  `kode` varchar(20) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `satuan`
--

INSERT INTO `satuan` (`kode`, `nama`, `no`) VALUES
('0007', 'LINEN', 7);

-- --------------------------------------------------------

--
-- Table structure for table `transaksimasuk`
--

CREATE TABLE `transaksimasuk` (
  `nota` varchar(20) NOT NULL,
  `kode` varchar(20) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `biaya` int(11) DEFAULT NULL,
  `satuan` varchar(100) DEFAULT NULL,
  `jumlah` double DEFAULT NULL,
  `hargaakhir` int(11) DEFAULT NULL,
  `biayaakhir` int(11) DEFAULT NULL,
  `no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaksimasuk`
--

INSERT INTO `transaksimasuk` (`nota`, `kode`, `nama`, `biaya`, `satuan`, `jumlah`, `hargaakhir`, `biayaakhir`, `no`) VALUES
('0007', '0001', 'Cuci Kering', 5000, 'Kg', 2, 10000, 10000, 51),
('0008', '0002', 'Karpet', 7000, 'M', 1, 7000, 7000, 52),
('0009', '0002', 'Karpet', 7000, 'M', 2, 14000, 14000, 53),
('0010', '0004', 'Cuci', 5000, 'Kg', 2, 10000, 10000, 54),
('0012', '0002', 'Karpet', 7000, 'M', 2, 14000, 14000, 57),
('0013', '0001', 'Cuci Kering', 5000, 'Kg', 2, 10000, 10000, 58),
('0013', '0002', 'Karpet', 7000, 'M', 3, 21000, 21000, 59),
('0013', '0003', 'Cuci Setrika', 7000, 'Kg', 7, 49000, 49000, 60),
('0013', '0004', 'Cuci', 5000, 'Kg', 9, 45000, 45000, 61),
('0015', '0003', 'Cuci Setrika', 7000, 'Kg', 9, 63000, 63000, 62),
('0015', '0004', 'Cuci', 5000, 'Kg', 8, 40000, 40000, 63),
('0016', '0005', 'KEMEJA PANJANG', 34000, '', 2, 68000, 68000, 64),
('0016', '0006', 'KEMEJA PANJANG 5', 34000, '', 3, 102000, 102000, 65),
('0018', '0005', 'KEMEJA PANJANG', 34000, '', 9, 306000, 306000, 70),
('0018', '0006', 'KEMEJA PANJANG 5', 34000, '', 6, 204000, 204000, 68),
('0018', '0007', 'KEMEJA PANJANG 90', 34000, 'LINEN', 9, 306000, 306000, 69),
('0019', '0006', 'KEMEJA PANJANG 5', 34000, '', 9, 306000, 306000, 71),
('0019', '0007', 'KEMEJA PANJANG 90', 34000, 'LINEN', 89, 3026000, 3026000, 72),
('0020', '0005', 'KEMEJA PANJANG', 34000, '', 1, 34000, 34000, 75),
('0020', '0006', 'KEMEJA PANJANG 5', 34000, '', 1, 34000, 34000, 74),
('0020', '0007', 'KEMEJA PANJANG 90', 34000, 'LINEN', 1, 34000, 34000, 73);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userna_me` varchar(20) NOT NULL,
  `pa_ssword` varchar(70) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `nohp` varchar(20) DEFAULT NULL,
  `tgllahir` date DEFAULT NULL,
  `tglaktif` date DEFAULT NULL,
  `jabatan` varchar(20) DEFAULT NULL,
  `avatar` varchar(100) DEFAULT NULL,
  `no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userna_me`, `pa_ssword`, `nama`, `alamat`, `nohp`, `tgllahir`, `tglaktif`, `jabatan`, `avatar`, `no`) VALUES
('admin', '90b9aa7e25f80cf4f64e990b78a9fc5ebd6cecad', 'admin', 'jl jalan', '0875757777', '0000-00-00', '2016-10-08', 'admin', 'dist/img/avatar5.png', 1),
('demo', 'a69681bcf334ae130217fea4505fd3c994f5683f', 'demo', 'demo', '088888', '2016-12-22', '2022-10-21', 'demo', 'dist/upload/index.jpg', 3),
('demo22', 'a69681bcf334ae130217fea4505fd3c994f5683f', 'Demo', '', '', '0000-00-00', '2016-12-27', 'admin', 'dist/upload/91f644a1932c252d4a158f13f1936aab.jpg', 4),
('username', 'a69681bcf334ae130217fea4505fd3c994f5683f', 'Username', '', '', '0000-00-00', '2016-12-27', 'demo', 'dist/upload/index.jpg', 7);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `backset`
--
ALTER TABLE `backset`
  ADD PRIMARY KEY (`url`);

--
-- Indexes for table `bayar`
--
ALTER TABLE `bayar`
  ADD PRIMARY KEY (`nota`),
  ADD KEY `no` (`no`);

--
-- Indexes for table `chmenu`
--
ALTER TABLE `chmenu`
  ADD PRIMARY KEY (`userjabatan`);

--
-- Indexes for table `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `info`
--
ALTER TABLE `info`
  ADD KEY `id` (`id`);

--
-- Indexes for table `jabatan`
--
ALTER TABLE `jabatan`
  ADD PRIMARY KEY (`kode`),
  ADD KEY `no` (`no`);

--
-- Indexes for table `jenis`
--
ALTER TABLE `jenis`
  ADD PRIMARY KEY (`kode`),
  ADD KEY `no` (`no`);

--
-- Indexes for table `operasional`
--
ALTER TABLE `operasional`
  ADD PRIMARY KEY (`kode`),
  ADD KEY `no` (`no`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`kode`),
  ADD KEY `no3` (`no`);

--
-- Indexes for table `satuan`
--
ALTER TABLE `satuan`
  ADD PRIMARY KEY (`kode`),
  ADD KEY `no` (`no`);

--
-- Indexes for table `transaksimasuk`
--
ALTER TABLE `transaksimasuk`
  ADD PRIMARY KEY (`nota`,`kode`),
  ADD KEY `barang` (`nama`),
  ADD KEY `no5_2` (`no`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userna_me`),
  ADD KEY `no` (`no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bayar`
--
ALTER TABLE `bayar`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `info`
--
ALTER TABLE `info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jabatan`
--
ALTER TABLE `jabatan`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `jenis`
--
ALTER TABLE `jenis`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `operasional`
--
ALTER TABLE `operasional`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `satuan`
--
ALTER TABLE `satuan`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `transaksimasuk`
--
ALTER TABLE `transaksimasuk`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
