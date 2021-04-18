-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 18, 2021 at 11:45 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `voguish`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `price` float(10,2) NOT NULL,
  `qty` int(11) NOT NULL,
  `images` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `admin_id`, `title`, `price`, `qty`, `images`, `created_at`) VALUES
(5, 1, 'DUBAI', 99.99, 1, '[\"1fustani.jpg\"]', '2021-04-17 22:05:17'),
(6, 1, 'PARIS', 99.99, 1, '[\"2fustani.jpg\"]', '2021-04-17 22:05:34'),
(7, 1, 'CAIRO', 99.99, 1, '[\"3fustani.jpg\"]', '2021-04-17 22:05:48'),
(8, 1, 'CHICAGO', 99.99, 1, '[\"4fustani.jpg\"]', '2021-04-17 22:06:02'),
(9, 1, 'TOKYO', 99.99, 1, '[\"5fustani.jpg\"]', '2021-04-17 22:06:16'),
(10, 1, 'HELSINKI', 99.99, 1, '[\"6fustani.jpg\"]', '2021-04-17 22:06:27'),
(11, 1, 'BLACK ROUND BAG', 55.55, 3, '[\"1aksesori.jpg\"]', '2021-04-17 22:40:48'),
(12, 1, 'MIRROR BAG', 55.55, 3, '[\"2aksesori.jpg\"]', '2021-04-17 22:41:02'),
(13, 1, 'GOLD ROUNG BAG', 55.55, 3, '[\"3aksesori.jpg\"]', '2021-04-17 22:41:18'),
(14, 1, 'SILVER ROUND BAG', 55.55, 3, '[\"4aksesori.jpg\"]', '2021-04-17 22:41:33'),
(15, 1, 'RED VELVET BAG', 55.55, 3, '[\"5aksesori.jpg\"]', '2021-04-17 22:41:57'),
(16, 1, 'BLACK VELVET BAG', 25.00, 3, '[\"6aksesori.jpg\"]', '2021-04-17 22:42:10');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(150) NOT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `is_admin`, `created_at`) VALUES
(8, 'test@test.com', '$2y$10$.d2XE0hRQ4gOEaVGOpYqy.uYPFQtX6PbscQBRDvjoKsUrxfBnIZui', 1, '2021-04-17 22:02:51'),
(9, 'yll.veliu1@gmail.com', '$2y$10$cg6BFBjwrnmqLPbliZ9Afuk2t9hAIDxdxtcIMH7A4N14XJDhnQq1a', 1, '2021-04-17 22:08:58'),
(10, 'yll@gmail.com', '$2y$10$X16zT63OpdGHdSeoQcfYUOy9VSabEDjqixpf/zNSW9gYnxaepwkKa', 0, '2021-04-17 22:09:18'),
(11, 'diamant@gmail.com', '$2y$10$6HEl9Vi5bdLobeACGSom7eaCQfAg9eihorcvsrGcUWIhLqLMq0Dpy', 0, '2021-04-17 23:10:10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
