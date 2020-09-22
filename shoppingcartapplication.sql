-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 22, 2020 at 07:57 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shoppingcartapplication`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `pid` int(11) NOT NULL,
  `product_name` varchar(100) DEFAULT NULL,
  `product_quantity` int(45) DEFAULT NULL,
  `product_price` int(100) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `image_path` varchar(400) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`pid`, `product_name`, `product_quantity`, `product_price`, `image`, `image_path`) VALUES
(8, 'LIP BARLM', 100, 240, '10121164-01.jpg', 'C:\\Users\\DELL\\Documents\\NetBeansProjects\\ShoppingCartApplication\\build\\web\\uploads'),
(9, 'EYE BROW PENCIL', 100, 130, 'Galaxy-S20-Ultra-Essential-Zero-Slim-Clear-Soft-TPU-Case-1.jpg', 'C:\\Users\\DELL\\Documents\\NetBeansProjects\\ShoppingCartApplication\\build\\web\\uploads'),
(10, 'MAKEUP SET (S)', 50, 2200, 'b4c54f041adcc27083e11680dd67d4c4.jpg', 'C:\\Users\\DELL\\Documents\\NetBeansProjects\\ShoppingCartApplication\\build\\web\\uploads'),
(11, 'MAKEUP SET (L)', 20, 5600, 's-l640.jpg', 'C:\\Users\\DELL\\Documents\\NetBeansProjects\\ShoppingCartApplication\\build\\web\\uploads'),
(12, 'PERFUME', 100, 1200, 'download.jpg', 'C:\\Users\\DELL\\Documents\\NetBeansProjects\\ShoppingCartApplication\\build\\web\\uploads'),
(13, 'PERFUME ROSE', 100, 3000, 'download (1).jpg', 'C:\\Users\\DELL\\Documents\\NetBeansProjects\\ShoppingCartApplication\\build\\web\\uploads'),
(14, 'DOVE SHAMPOO', 100, 500, 'hp-hardisk.jpg', 'C:\\Users\\DELL\\Documents\\NetBeansProjects\\ShoppingCartApplication\\build\\web\\uploads'),
(15, 'SANSILK SHAMPOO', 100, 250, 'sn.jpg', 'C:\\Users\\DELL\\Documents\\NetBeansProjects\\ShoppingCartApplication\\build\\web\\uploads'),
(16, 'HAND BAG BLACK', 50, 1400, 'hbb.jpg', 'C:\\Users\\DELL\\Documents\\NetBeansProjects\\ShoppingCartApplication\\build\\web\\uploads'),
(17, 'HANDBAG WHITE', 40, 1200, 'hbw.jpg', 'C:\\Users\\DELL\\Documents\\NetBeansProjects\\ShoppingCartApplication\\build\\web\\uploads'),
(18, 'Vollet', 50, 500, '611DlLe0YZL._AC_UX385_.jpg', 'C:UsersDELLDocumentsNetBeansProjectsShoppingCartApplicationuildwebuploads611DlLe0YZL._AC_UX385_.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `product_orders`
--

CREATE TABLE `product_orders` (
  `oid` int(11) NOT NULL,
  `product_name` varchar(100) DEFAULT NULL,
  `purchase_quantity` int(45) DEFAULT NULL,
  `total_price` int(45) DEFAULT NULL,
  `uname` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `uname` varchar(45) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `uname`, `password`, `name`, `email`) VALUES
(1, 'Ridmal', 'ridmal1234', 'Ridmal Akmeemana', 'rajeewaakmeemana@gmail.com'),
(3, 'Ridmal', 'ridmal1234', 'Ridmal', 'rajeewaakmeemana@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `product_orders`
--
ALTER TABLE `product_orders`
  ADD PRIMARY KEY (`oid`);

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
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `product_orders`
--
ALTER TABLE `product_orders`
  MODIFY `oid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
