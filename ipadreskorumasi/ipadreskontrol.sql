-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 22 Kas 2024, 15:03:51
-- Sunucu sürümü: 10.4.28-MariaDB
-- PHP Sürümü: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `ipadres`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ipadreskontrol`
--

CREATE TABLE `ipadreskontrol` (
  `id` int(6) NOT NULL,
  `ip_address` varchar(150) NOT NULL,
  `ip_tarih` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `ipadreskontrol`
--

INSERT INTO `ipadreskontrol` (`id`, `ip_address`, `ip_tarih`) VALUES
(1, '::1', '2024-08-30 11:24:04'),
(2, '::1', '2024-08-30 11:24:58'),
(3, '::1', '2024-08-30 11:27:34'),
(4, '::1', '2024-08-30 11:28:13'),
(5, '::1', '2024-08-30 11:31:33'),
(6, '::1', '2024-08-30 11:34:02'),
(7, '::1', '2024-08-30 11:34:24'),
(8, '0.0.0.0', '2024-08-30 11:37:09'),
(9, '0.0.0.0', '2024-08-30 11:40:05'),
(10, '0.0.0.0', '2024-08-30 11:41:07'),
(11, '0.0.0.0', '2024-08-30 11:41:28'),
(12, '0.0.0.0', '2024-08-30 11:41:50'),
(13, '0.0.0.0', '2024-08-30 11:44:13'),
(14, '::1', '2024-08-30 11:44:43'),
(15, '::1', '2024-08-30 11:44:48'),
(16, '::1', '2024-08-30 11:44:54'),
(17, '::1', '2024-08-30 11:45:13'),
(18, '::1', '2024-08-30 11:45:38'),
(19, '::1', '2024-08-30 11:45:57'),
(20, '::1', '2024-08-30 11:46:14'),
(21, '::1', '2024-08-30 11:46:15'),
(22, '::1', '2024-08-30 11:46:37'),
(23, '::1', '2024-08-30 11:47:13'),
(24, '0.0.0.0', '2024-08-30 11:47:53'),
(25, '::1', '2024-08-30 11:48:07'),
(26, '::1', '2024-08-30 11:48:37'),
(27, '0.0.0.0', '2024-08-30 11:49:05'),
(28, '0.0.0.0', '2024-08-30 11:49:10'),
(29, '0.0.0.0', '2024-11-22 14:00:52'),
(30, '0.0.0.0', '2024-11-22 14:00:56'),
(31, '0.0.0.0', '2024-11-22 14:01:01');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `ipadreskontrol`
--
ALTER TABLE `ipadreskontrol`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `ipadreskontrol`
--
ALTER TABLE `ipadreskontrol`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
