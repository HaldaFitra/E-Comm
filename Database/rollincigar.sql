-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 12, 2020 at 03:27 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rollincigar`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `kategori` varchar(10) DEFAULT NULL,
  `product` varchar(100) DEFAULT NULL,
  `price` char(20) DEFAULT NULL,
  `title` varchar(20) DEFAULT NULL,
  `cart_id` char(10) DEFAULT NULL,
  `prod_id` char(10) DEFAULT NULL,
  `id_user` char(10) DEFAULT NULL,
  `qty` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cat_id` char(7) NOT NULL,
  `cat_name` char(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `cat_name`) VALUES
('NP01', 'Non Premium'),
('P01', 'Premium');

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE `log` (
  `username` varchar(100) DEFAULT NULL,
  `times` date DEFAULT NULL,
  `ip` float DEFAULT NULL,
  `keterangan` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `log`
--

INSERT INTO `log` (`username`, `times`, `ip`, `keterangan`) VALUES
('Faraday', NULL, 0, 'Mengubah produk Cigarillos New'),
('Faraday', NULL, 0, 'Mengubah produk Cigarillos Filtered Cigar'),
('Faraday', NULL, 0, 'Menghapus produk Cigarillos Filtered Cigar'),
('Faraday', NULL, 0, 'Menambahkan produk Cigarillos Filtered Cigar'),
('Faraday', NULL, 0, 'Mengubah produk Cigarillos Cigar'),
('Faraday', NULL, 0, 'Menambahkan produk Dos Hermanos'),
('Faraday', NULL, 0, 'Menambahkan produk Dos Hermanos'),
('Faraday', NULL, 0, 'Mengubah produk Dos Hermanos'),
('Lufena', NULL, 0, 'Menambahkan produk Cigarillos Cigar'),
('Lufena', NULL, 0, 'Menambahkan produk Airlangga Half Corona'),
('Lufena', NULL, 0, 'Menambahkan produk Wismilak Cigarillos'),
('Lufena', NULL, 0, 'Menambahkan produk Raguso Cuban CIgar'),
('Lufena', NULL, 0, 'Menambahkan produk Cuaba CIgar'),
('Lufena', NULL, 0, 'Menambahkan produk Cohiba Cigar'),
('Lufena', NULL, 0, 'Menambahkan produk Royal Agio Cigars'),
('Lufena', NULL, 0, 'Menambahkan produk JRE Tobacco'),
('Lufena', NULL, 0, 'Menambahkan produk Alpha Cigar Company'),
('Lufena', NULL, 0, 'Mengubah produk Dos Hermanos'),
('Lufena', NULL, 0, 'Mengubah produk Partagas Culebras'),
('Lufena', NULL, 0, 'Mengubah produk Wismilak Premium Cigar'),
('Lufena', NULL, 0, 'Mengubah produk Ramayana Senoritas'),
('Lufena', NULL, 0, 'Mengubah produk Robusto');

-- --------------------------------------------------------

--
-- Table structure for table `orderitems`
--

CREATE TABLE `orderitems` (
  `id_order` char(7) NOT NULL,
  `id_user` char(7) NOT NULL,
  `id_bayar` char(7) NOT NULL,
  `status` varchar(100) DEFAULT NULL,
  `order_num` char(10) NOT NULL,
  `prod_id` char(10) DEFAULT NULL,
  `quantity` char(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orderitems`
--

INSERT INTO `orderitems` (`id_order`, `id_user`, `id_bayar`, `status`, `order_num`, `prod_id`, `quantity`) VALUES
('', '', '', NULL, '10', '3', '1'),
('', '', '', NULL, '9', '2', '1'),
('', '', '', NULL, '10', '3', '1'),
('', '', '', NULL, '10', '6', '2'),
('', '', '', NULL, '10', '1', '1'),
('', '', '', NULL, '10', '2', '1'),
('', '', '', NULL, '10', '5', '2'),
('', '', '', NULL, '10', '2', '1'),
('', '', '', NULL, '10', '2', '1'),
('', '', '', NULL, '10', '2', '2'),
('', '', '', NULL, '10', '2', '2'),
('', '', '', NULL, '10', '1', '2'),
('', '', '', NULL, '10', '1', '2'),
('', '', '', NULL, '10', '1', '3'),
('', '', '', NULL, '10', '1', '1'),
('', '', '', NULL, '10', '1', '2'),
('', '', '', NULL, '10', '6', '5'),
('', '', '', NULL, '10', '2', '3');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_num` char(10) DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `cust_id` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_num`, `order_date`, `nama`, `status`, `cust_id`) VALUES
('1', NULL, NULL, NULL, '1'),
('2', NULL, NULL, NULL, '1'),
('3', NULL, NULL, NULL, '1'),
('4', NULL, NULL, NULL, '1'),
('5', NULL, NULL, NULL, '1'),
('6', NULL, NULL, NULL, '1'),
('7', NULL, NULL, NULL, '1'),
('8', NULL, NULL, NULL, '2'),
('9', NULL, NULL, NULL, '2'),
('10', NULL, NULL, NULL, '2'),
('10', NULL, NULL, NULL, '2'),
('10', NULL, NULL, NULL, '2'),
('10', NULL, NULL, NULL, '2'),
('10', NULL, NULL, NULL, '2'),
('10', NULL, NULL, NULL, '2'),
('10', NULL, NULL, NULL, '2'),
('10', NULL, NULL, NULL, '2'),
('10', NULL, NULL, NULL, '2'),
('10', NULL, NULL, NULL, '2'),
('10', NULL, NULL, NULL, '2'),
('10', NULL, NULL, NULL, '2'),
('10', NULL, NULL, NULL, '2'),
('10', NULL, NULL, NULL, '2'),
('10', NULL, NULL, NULL, '2'),
('10', NULL, NULL, NULL, '2'),
('10', NULL, NULL, NULL, '2'),
('10', NULL, NULL, NULL, '2'),
('10', NULL, NULL, NULL, '2');

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `id_order_detail` char(7) NOT NULL,
  `id_order` char(7) NOT NULL,
  `product_id` char(7) NOT NULL,
  `total_harga` char(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id_bayar` char(7) NOT NULL,
  `jenis_pembayaran` varchar(20) DEFAULT NULL,
  `rekening` char(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `vend_id` varchar(7) NOT NULL,
  `prod_name` varchar(255) NOT NULL,
  `prod_price` int(11) NOT NULL,
  `prod_image` blob NOT NULL,
  `prod_desc` text NOT NULL,
  `cat_id` char(15) NOT NULL,
  `prod_id` char(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`vend_id`, `prod_name`, `prod_price`, `prod_image`, `prod_desc`, `cat_id`, `prod_id`) VALUES
('1', 'Dos Hermanos', 800000, 0x312e6a7067, 'Produk asli BIN Cigar', 'P01', '1'),
('2', 'Partagas Culebras', 800000, 0x322e706e67, 'Produk asli Cuba', 'P01', '2'),
('3', 'Wismilak Premium Cigar', 300000, 0x332e6a7067, 'Produk Indonesia', 'P01', '3'),
('4', 'Ramayana Senoritas', 80000, 0x342e6a7067, 'Produk Indonesia', 'NP01', '4'),
('5', 'Robusto', 120000, 0x352e6a7067, 'Produk Asli Cuba', 'NP01', '5'),
('6', 'Cohiba Cigar', 500000, 0x362e6a7067, 'Produk Negara Cuba', 'P01', '6'),
('7', 'Adipati Panatela', 35000, 0x372e6a7067, 'Produk PT. Taru Martani', 'NP01', '7'),
('8', 'Gurkha Cigar', 600000, 0x382e6a7067, 'Produk Negara Turki', 'P01', '8'),
('9', 'Kanigoro Cigar', 50000, 0x392e6a7067, 'Produk asli Indonesia', 'NP01', '9'),
('10', 'Senator Royal', 50000, 0x31302e6a7067, 'Produk asli Indonesia', 'NP01', '10'),
('11', 'Mustika Cigar', 50000, 0x31312e6a7067, 'Produk asli Indonesia', 'NP01', '11');

-- --------------------------------------------------------

--
-- Table structure for table `produk_hapus`
--

CREATE TABLE `produk_hapus` (
  `prod_id` varchar(10) DEFAULT NULL,
  `vend_id` char(4) DEFAULT NULL,
  `prod_name` varchar(25) DEFAULT NULL,
  `prod_price` int(11) DEFAULT NULL,
  `prod_desc` varchar(255) DEFAULT NULL,
  `tgl_hapus` date DEFAULT NULL,
  `user` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `nama`, `email`, `username`, `password`, `role`) VALUES
(1, 'Lufena', 'lufena@toram.com', 'Lufena', 'c247e0e82c8525dd3b182d214d068206', '1'),
(2, 'Faraday', 'faraday@wildwest.com', 'Faraday', 'c624384e29a508afef243db27b9eeb67', '0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id_order_detail`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id_bayar`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `id_user` (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
