-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 03 Nov 2022 pada 01.53
-- Versi Server: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pitjarus`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `brand_id`) VALUES
(1, 'Product A', 1),
(2, 'Product B', 1),
(3, 'Product C', 1),
(4, 'Product D', 2),
(5, 'Product E', 2),
(6, 'Product F', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `product_brand`
--

CREATE TABLE `product_brand` (
  `brand_id` int(11) NOT NULL,
  `brand_name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `product_brand`
--

INSERT INTO `product_brand` (`brand_id`, `brand_name`) VALUES
(1, 'ROTI TAWAR'),
(2, 'SUSU KALENG');

-- --------------------------------------------------------

--
-- Struktur dari tabel `report_product`
--

CREATE TABLE `report_product` (
  `report_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `compliance` int(11) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `report_product`
--

INSERT INTO `report_product` (`report_id`, `store_id`, `product_id`, `compliance`, `tanggal`) VALUES
(1, 1, 1, 1, '2021-01-01'),
(2, 1, 2, 1, '2021-01-01'),
(3, 1, 3, 0, '2021-01-01'),
(4, 1, 4, 0, '2021-01-01'),
(5, 1, 5, 1, '2021-01-01'),
(6, 1, 6, 0, '2021-01-01'),
(7, 2, 1, 1, '2021-01-01'),
(8, 2, 2, 0, '2021-01-01'),
(9, 2, 3, 0, '2021-01-01'),
(10, 2, 4, 1, '2021-01-01'),
(11, 2, 5, 0, '2021-01-01'),
(12, 2, 6, 1, '2021-01-01'),
(13, 3, 1, 0, '2021-01-01'),
(14, 3, 2, 1, '2021-01-01'),
(15, 3, 3, 0, '2021-01-01'),
(16, 3, 4, 0, '2021-01-01'),
(17, 3, 5, 1, '2021-01-01'),
(18, 3, 6, 0, '2021-01-01'),
(19, 4, 1, 1, '2021-01-01'),
(20, 4, 2, 0, '2021-01-01'),
(21, 4, 3, 0, '2021-01-01'),
(22, 4, 4, 0, '2021-01-01'),
(23, 4, 5, 1, '2021-01-01'),
(24, 4, 6, 0, '2021-01-01'),
(25, 5, 1, 1, '2021-01-01'),
(26, 5, 2, 1, '2021-01-01'),
(27, 5, 3, 0, '2021-01-01'),
(28, 5, 4, 1, '2021-01-01'),
(29, 5, 5, 0, '2021-01-01'),
(30, 5, 6, 0, '2021-01-01'),
(31, 6, 1, 0, '2021-01-01'),
(32, 6, 2, 1, '2021-01-01'),
(33, 6, 3, 0, '2021-01-01'),
(34, 6, 4, 0, '2021-01-01'),
(35, 6, 5, 0, '2021-01-01'),
(36, 6, 6, 1, '2021-01-01'),
(37, 7, 1, 1, '2021-01-01'),
(38, 7, 2, 0, '2021-01-01'),
(39, 7, 3, 0, '2021-01-01'),
(40, 7, 4, 0, '2021-01-01'),
(41, 7, 5, 1, '2021-01-01'),
(42, 7, 6, 1, '2021-01-01'),
(43, 8, 1, 1, '2021-01-01'),
(44, 8, 2, 1, '2021-01-01'),
(45, 8, 3, 0, '2021-01-01'),
(46, 8, 4, 0, '2021-01-01'),
(47, 8, 5, 1, '2021-01-01'),
(48, 8, 6, 1, '2021-01-01'),
(49, 9, 1, 0, '2021-01-01'),
(50, 9, 2, 1, '2021-01-01'),
(51, 9, 3, 1, '2021-01-01'),
(52, 9, 4, 0, '2021-01-01'),
(53, 9, 5, 0, '2021-01-01'),
(54, 9, 6, 1, '2021-01-01'),
(55, 10, 1, 0, '2021-01-01'),
(56, 10, 2, 0, '2021-01-01'),
(57, 10, 3, 0, '2021-01-01'),
(58, 10, 4, 0, '2021-01-01'),
(59, 10, 5, 0, '2021-01-01'),
(60, 10, 6, 1, '2021-01-01'),
(61, 1, 1, 0, '2021-01-02'),
(62, 1, 2, 1, '2021-01-02'),
(63, 1, 3, 1, '2021-01-02'),
(64, 1, 4, 0, '2021-01-02'),
(65, 1, 5, 1, '2021-01-02'),
(66, 1, 6, 1, '2021-01-02'),
(67, 2, 1, 1, '2021-01-02'),
(68, 2, 2, 1, '2021-01-02'),
(69, 2, 3, 1, '2021-01-02'),
(70, 2, 4, 0, '2021-01-02'),
(71, 2, 5, 1, '2021-01-02'),
(72, 2, 6, 1, '2021-01-02'),
(73, 3, 1, 1, '2021-01-02'),
(74, 3, 2, 1, '2021-01-02'),
(75, 3, 3, 0, '2021-01-02'),
(76, 3, 4, 0, '2021-01-02'),
(77, 3, 5, 0, '2021-01-02'),
(78, 3, 6, 1, '2021-01-02'),
(79, 4, 1, 0, '2021-01-02'),
(80, 4, 2, 1, '2021-01-02'),
(81, 4, 3, 0, '2021-01-02'),
(82, 4, 4, 0, '2021-01-02'),
(83, 4, 5, 0, '2021-01-02'),
(84, 4, 6, 0, '2021-01-02'),
(85, 5, 1, 1, '2021-01-02'),
(86, 5, 2, 0, '2021-01-02'),
(87, 5, 3, 1, '2021-01-02'),
(88, 5, 4, 1, '2021-01-02'),
(89, 5, 5, 1, '2021-01-02'),
(90, 5, 6, 1, '2021-01-02'),
(91, 6, 1, 0, '2021-01-02'),
(92, 6, 2, 0, '2021-01-02'),
(93, 6, 3, 1, '2021-01-02'),
(94, 6, 4, 0, '2021-01-02'),
(95, 6, 5, 0, '2021-01-02'),
(96, 6, 6, 0, '2021-01-02'),
(97, 7, 1, 1, '2021-01-02'),
(98, 7, 2, 0, '2021-01-02'),
(99, 7, 3, 1, '2021-01-02'),
(100, 7, 4, 0, '2021-01-02'),
(101, 7, 5, 0, '2021-01-02'),
(102, 7, 6, 0, '2021-01-02'),
(103, 8, 1, 1, '2021-01-02'),
(104, 8, 2, 0, '2021-01-02'),
(105, 8, 3, 0, '2021-01-02'),
(106, 8, 4, 0, '2021-01-02'),
(107, 8, 5, 1, '2021-01-02'),
(108, 8, 6, 0, '2021-01-02'),
(109, 9, 1, 0, '2021-01-02'),
(110, 9, 2, 1, '2021-01-02'),
(111, 9, 3, 0, '2021-01-02'),
(112, 9, 4, 0, '2021-01-02'),
(113, 9, 5, 1, '2021-01-02'),
(114, 9, 6, 1, '2021-01-02'),
(115, 10, 1, 1, '2021-01-02'),
(116, 10, 2, 0, '2021-01-02'),
(117, 10, 3, 1, '2021-01-02'),
(118, 10, 4, 0, '2021-01-02'),
(119, 10, 5, 0, '2021-01-02'),
(120, 10, 6, 1, '2021-01-02'),
(121, 1, 1, 1, '2021-01-03'),
(122, 1, 2, 1, '2021-01-03'),
(123, 1, 3, 0, '2021-01-03'),
(124, 1, 4, 1, '2021-01-03'),
(125, 1, 5, 1, '2021-01-03'),
(126, 1, 6, 0, '2021-01-03'),
(127, 2, 1, 0, '2021-01-03'),
(128, 2, 2, 1, '2021-01-03'),
(129, 2, 3, 1, '2021-01-03'),
(130, 2, 4, 1, '2021-01-03'),
(131, 2, 5, 1, '2021-01-03'),
(132, 2, 6, 1, '2021-01-03'),
(133, 3, 1, 0, '2021-01-03'),
(134, 3, 2, 0, '2021-01-03'),
(135, 3, 3, 1, '2021-01-03'),
(136, 3, 4, 1, '2021-01-03'),
(137, 3, 5, 0, '2021-01-03'),
(138, 3, 6, 0, '2021-01-03'),
(139, 4, 1, 0, '2021-01-03'),
(140, 4, 2, 0, '2021-01-03'),
(141, 4, 3, 0, '2021-01-03'),
(142, 4, 4, 0, '2021-01-03'),
(143, 4, 5, 1, '2021-01-03'),
(144, 4, 6, 0, '2021-01-03'),
(145, 5, 1, 1, '2021-01-03'),
(146, 5, 2, 0, '2021-01-03'),
(147, 5, 3, 0, '2021-01-03'),
(148, 5, 4, 1, '2021-01-03'),
(149, 5, 5, 0, '2021-01-03'),
(150, 5, 6, 0, '2021-01-03'),
(151, 6, 1, 1, '2021-01-03'),
(152, 6, 2, 0, '2021-01-03'),
(153, 6, 3, 0, '2021-01-03'),
(154, 6, 4, 1, '2021-01-03'),
(155, 6, 5, 0, '2021-01-03'),
(156, 6, 6, 1, '2021-01-03'),
(157, 7, 1, 1, '2021-01-03'),
(158, 7, 2, 0, '2021-01-03'),
(159, 7, 3, 1, '2021-01-03'),
(160, 7, 4, 1, '2021-01-03'),
(161, 7, 5, 1, '2021-01-03'),
(162, 7, 6, 0, '2021-01-03'),
(163, 8, 1, 1, '2021-01-03'),
(164, 8, 2, 0, '2021-01-03'),
(165, 8, 3, 0, '2021-01-03'),
(166, 8, 4, 0, '2021-01-03'),
(167, 8, 5, 0, '2021-01-03'),
(168, 8, 6, 0, '2021-01-03'),
(169, 9, 1, 0, '2021-01-03'),
(170, 9, 2, 0, '2021-01-03'),
(171, 9, 3, 1, '2021-01-03'),
(172, 9, 4, 1, '2021-01-03'),
(173, 9, 5, 0, '2021-01-03'),
(174, 9, 6, 1, '2021-01-03'),
(175, 10, 1, 0, '2021-01-03'),
(176, 10, 2, 0, '2021-01-03'),
(177, 10, 3, 1, '2021-01-03'),
(178, 10, 4, 0, '2021-01-03'),
(179, 10, 5, 1, '2021-01-03'),
(180, 10, 6, 0, '2021-01-03'),
(181, 1, 1, 0, '2021-01-04'),
(182, 1, 2, 1, '2021-01-04'),
(183, 1, 3, 1, '2021-01-04'),
(184, 1, 4, 0, '2021-01-04'),
(185, 1, 5, 0, '2021-01-04'),
(186, 1, 6, 0, '2021-01-04'),
(187, 2, 1, 0, '2021-01-04'),
(188, 2, 2, 1, '2021-01-04'),
(189, 2, 3, 0, '2021-01-04'),
(190, 2, 4, 0, '2021-01-04'),
(191, 2, 5, 0, '2021-01-04'),
(192, 2, 6, 1, '2021-01-04'),
(193, 3, 1, 0, '2021-01-04'),
(194, 3, 2, 0, '2021-01-04'),
(195, 3, 3, 0, '2021-01-04'),
(196, 3, 4, 0, '2021-01-04'),
(197, 3, 5, 1, '2021-01-04'),
(198, 3, 6, 0, '2021-01-04'),
(199, 4, 1, 1, '2021-01-04'),
(200, 4, 2, 1, '2021-01-04'),
(201, 4, 3, 0, '2021-01-04'),
(202, 4, 4, 1, '2021-01-04'),
(203, 4, 5, 1, '2021-01-04'),
(204, 4, 6, 1, '2021-01-04'),
(205, 5, 1, 0, '2021-01-04'),
(206, 5, 2, 0, '2021-01-04'),
(207, 5, 3, 1, '2021-01-04'),
(208, 5, 4, 1, '2021-01-04'),
(209, 5, 5, 0, '2021-01-04'),
(210, 5, 6, 0, '2021-01-04'),
(211, 6, 1, 1, '2021-01-04'),
(212, 6, 2, 1, '2021-01-04'),
(213, 6, 3, 1, '2021-01-04'),
(214, 6, 4, 0, '2021-01-04'),
(215, 6, 5, 1, '2021-01-04'),
(216, 6, 6, 1, '2021-01-04'),
(217, 7, 1, 1, '2021-01-04'),
(218, 7, 2, 0, '2021-01-04'),
(219, 7, 3, 1, '2021-01-04'),
(220, 7, 4, 0, '2021-01-04'),
(221, 7, 5, 0, '2021-01-04'),
(222, 7, 6, 0, '2021-01-04'),
(223, 8, 1, 0, '2021-01-04'),
(224, 8, 2, 1, '2021-01-04'),
(225, 8, 3, 0, '2021-01-04'),
(226, 8, 4, 1, '2021-01-04'),
(227, 8, 5, 1, '2021-01-04'),
(228, 8, 6, 1, '2021-01-04'),
(229, 9, 1, 0, '2021-01-04'),
(230, 9, 2, 0, '2021-01-04'),
(231, 9, 3, 1, '2021-01-04'),
(232, 9, 4, 1, '2021-01-04'),
(233, 9, 5, 0, '2021-01-04'),
(234, 9, 6, 1, '2021-01-04'),
(235, 10, 1, 1, '2021-01-04'),
(236, 10, 2, 0, '2021-01-04'),
(237, 10, 3, 1, '2021-01-04'),
(238, 10, 4, 1, '2021-01-04'),
(239, 10, 5, 0, '2021-01-04'),
(240, 10, 6, 0, '2021-01-04'),
(241, 1, 1, 0, '2021-01-05'),
(242, 1, 2, 1, '2021-01-05'),
(243, 1, 3, 1, '2021-01-05'),
(244, 1, 4, 0, '2021-01-05'),
(245, 1, 5, 1, '2021-01-05'),
(246, 1, 6, 1, '2021-01-05'),
(247, 2, 1, 0, '2021-01-05'),
(248, 2, 2, 0, '2021-01-05'),
(249, 2, 3, 1, '2021-01-05'),
(250, 2, 4, 1, '2021-01-05'),
(251, 2, 5, 0, '2021-01-05'),
(252, 2, 6, 0, '2021-01-05'),
(253, 3, 1, 1, '2021-01-05'),
(254, 3, 2, 1, '2021-01-05'),
(255, 3, 3, 1, '2021-01-05'),
(256, 3, 4, 1, '2021-01-05'),
(257, 3, 5, 1, '2021-01-05'),
(258, 3, 6, 0, '2021-01-05'),
(259, 4, 1, 1, '2021-01-05'),
(260, 4, 2, 0, '2021-01-05'),
(261, 4, 3, 1, '2021-01-05'),
(262, 4, 4, 1, '2021-01-05'),
(263, 4, 5, 0, '2021-01-05'),
(264, 4, 6, 1, '2021-01-05'),
(265, 5, 1, 1, '2021-01-05'),
(266, 5, 2, 0, '2021-01-05'),
(267, 5, 3, 1, '2021-01-05'),
(268, 5, 4, 1, '2021-01-05'),
(269, 5, 5, 1, '2021-01-05'),
(270, 5, 6, 0, '2021-01-05'),
(271, 6, 1, 1, '2021-01-05'),
(272, 6, 2, 1, '2021-01-05'),
(273, 6, 3, 1, '2021-01-05'),
(274, 6, 4, 1, '2021-01-05'),
(275, 6, 5, 0, '2021-01-05'),
(276, 6, 6, 1, '2021-01-05'),
(277, 7, 1, 0, '2021-01-05'),
(278, 7, 2, 1, '2021-01-05'),
(279, 7, 3, 1, '2021-01-05'),
(280, 7, 4, 1, '2021-01-05'),
(281, 7, 5, 1, '2021-01-05'),
(282, 7, 6, 0, '2021-01-05'),
(283, 8, 1, 1, '2021-01-05'),
(284, 8, 2, 0, '2021-01-05'),
(285, 8, 3, 0, '2021-01-05'),
(286, 8, 4, 1, '2021-01-05'),
(287, 8, 5, 0, '2021-01-05'),
(288, 8, 6, 0, '2021-01-05'),
(289, 9, 1, 1, '2021-01-05'),
(290, 9, 2, 0, '2021-01-05'),
(291, 9, 3, 1, '2021-01-05'),
(292, 9, 4, 1, '2021-01-05'),
(293, 9, 5, 0, '2021-01-05'),
(294, 9, 6, 0, '2021-01-05'),
(295, 10, 1, 0, '2021-01-05'),
(296, 10, 2, 0, '2021-01-05'),
(297, 10, 3, 1, '2021-01-05'),
(298, 10, 4, 1, '2021-01-05'),
(299, 10, 5, 0, '2021-01-05'),
(300, 10, 6, 0, '2021-01-05');

-- --------------------------------------------------------

--
-- Struktur dari tabel `store`
--

CREATE TABLE `store` (
  `store_id` int(11) NOT NULL,
  `store_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_id` int(11) NOT NULL,
  `area_id` int(11) NOT NULL,
  `is_active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `store`
--

INSERT INTO `store` (`store_id`, `store_name`, `account_id`, `area_id`, `is_active`) VALUES
(1, 'Indomaret Djakarta', 1, 1, 1),
(2, 'Indomaret Jawa Barat', 1, 2, 1),
(3, 'Indomaret Kalimantan', 1, 3, 1),
(4, 'Indomaret Jawa Tengah', 1, 4, 1),
(5, 'Indomaret Bali', 1, 5, 1),
(6, 'Hypermart Djakarta', 2, 1, 1),
(7, 'Hypermart Jawa Barat', 2, 2, 1),
(8, 'Hypermart Kalimantan', 2, 3, 1),
(9, 'Hypermart Jawa Tengah', 2, 4, 1),
(10, 'Hypermart Bali', 2, 5, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `store_account`
--

CREATE TABLE `store_account` (
  `account_id` int(11) NOT NULL,
  `account_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `store_account`
--

INSERT INTO `store_account` (`account_id`, `account_name`) VALUES
(1, 'Indomaret'),
(2, 'Hypermarket');

-- --------------------------------------------------------

--
-- Struktur dari tabel `store_area`
--

CREATE TABLE `store_area` (
  `area_id` int(11) NOT NULL,
  `area_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `store_area`
--

INSERT INTO `store_area` (`area_id`, `area_name`) VALUES
(1, 'DKI jakarta'),
(2, 'Jawa Barat'),
(3, 'Kalimantan'),
(4, 'Jawa Tengah'),
(5, 'Bali');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `brand_id` (`brand_id`);

--
-- Indexes for table `product_brand`
--
ALTER TABLE `product_brand`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `report_product`
--
ALTER TABLE `report_product`
  ADD PRIMARY KEY (`report_id`),
  ADD KEY `store_id` (`store_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `store`
--
ALTER TABLE `store`
  ADD PRIMARY KEY (`store_id`),
  ADD KEY `account_id` (`account_id`,`area_id`),
  ADD KEY `area_id` (`area_id`);

--
-- Indexes for table `store_account`
--
ALTER TABLE `store_account`
  ADD PRIMARY KEY (`account_id`);

--
-- Indexes for table `store_area`
--
ALTER TABLE `store_area`
  ADD PRIMARY KEY (`area_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `product_brand`
--
ALTER TABLE `product_brand`
  MODIFY `brand_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `report_product`
--
ALTER TABLE `report_product`
  MODIFY `report_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=301;
--
-- AUTO_INCREMENT for table `store`
--
ALTER TABLE `store`
  MODIFY `store_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `store_account`
--
ALTER TABLE `store_account`
  MODIFY `account_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `store_area`
--
ALTER TABLE `store_area`
  MODIFY `area_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`brand_id`) REFERENCES `product_brand` (`brand_id`);

--
-- Ketidakleluasaan untuk tabel `report_product`
--
ALTER TABLE `report_product`
  ADD CONSTRAINT `report_product_ibfk_1` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`),
  ADD CONSTRAINT `report_product_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`);

--
-- Ketidakleluasaan untuk tabel `store`
--
ALTER TABLE `store`
  ADD CONSTRAINT `store_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `store_account` (`account_id`),
  ADD CONSTRAINT `store_ibfk_2` FOREIGN KEY (`area_id`) REFERENCES `store_area` (`area_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;