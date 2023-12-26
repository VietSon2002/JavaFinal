-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 23, 2023 at 05:51 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `foodshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Cá Viên Chiên'),
(2, 'Chân Gà'),
(5, 'Ăn Vặt'),
(6, 'Mì Xào'),
(7, 'Đồ Uống');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `price` double(10,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `id_category` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `image`, `price`, `quantity`, `id_category`) VALUES
(5, 'Cá viên chiên mắm kèm tóp mỡ', '3.png', 69.00, 100, 1),
(6, 'Cá viên chiên nước mắm full topping', '5.png', 95.00, 100, 1),
(8, 'Xiên viên chấm tương đỏ+đen', '2.png', 49.00, 100, 1),
(9, 'Chân gà rút xương sả tắc', 'c1.jpeg', 45.00, 100, 2),
(10, 'Chân gà rút xương sả tắc lớn', 'c2.jpeg', 65.00, 0, 2),
(11, 'Chân gà rút xương sốt thái', 'c3.jpeg', 50.00, 0, 2),
(12, 'Chân gà rút xương sốt thái', 'c4.jpeg', 75.00, 0, 2),
(13, 'Cóc xoài lắc bò khô cay', 'a1.jpeg', 29.00, 0, 5),
(14, 'Cút lộn sốt me 12 quả', 'a2.jpeg', 42.00, 0, 5),
(15, 'Sủi cảo mini chiên (10 cái)', 'a3.jpeg', 25.00, 0, 5),
(16, 'Trìa hấp sả', 'a4.jpeg', 40.00, 0, 5),
(17, 'Mì xào xúc xích', 'm1.jpeg', 45.00, 0, 6),
(18, 'Mì xào rau củ', 'm2.jpeg', 35.00, 0, 6),
(19, 'Mì xào bò', 'm3.jpeg', 69.00, 0, 6),
(20, 'Mì xào thập cẩm', 'm4.jpeg', 79.00, 0, 6),
(21, 'Trà sữa trân châu', 'u1.jpeg', 25.00, 0, 7),
(22, 'Sữa đậu cacao', 'u2.jpeg', 20.00, 0, 7),
(23, 'Trà dâu', 'u3.jpeg', 25.00, 0, 7),
(25, 'Soda Blue', 'u4.jpeg', 25.00, 0, 7),
(26, 'Cá viên chiên mắm vừa', '1.png', 55.00, 2, 1),
(27, 'Cá viên chiên mắm ', '1.png ', 40.00, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`) VALUES
(2, 'test', 'test@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', ''),
(5, 'son', 'son@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', 'admin'),
(6, 'khach', 'khach@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_category` (`id_category`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`id_category`) REFERENCES `category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
