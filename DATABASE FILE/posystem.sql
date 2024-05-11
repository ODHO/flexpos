-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 11, 2024 at 06:58 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `posystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `Category` text NOT NULL,
  `Date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `Category`, `Date`) VALUES
(8, 'Indoor Shoot', '2024-05-10 16:06:38'),
(9, 'OutDoor shoot', '2024-05-10 16:06:53');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `invoice_id` text DEFAULT NULL,
  `venue` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `side` varchar(255) DEFAULT NULL,
  `idDocument` int(11) DEFAULT NULL,
  `email` text DEFAULT NULL,
  `phone` text DEFAULT NULL,
  `address` text DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `purchases` int(11) DEFAULT NULL,
  `lastPurchase` datetime DEFAULT NULL,
  `registerDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `invoice_id`, `venue`, `time`, `side`, `idDocument`, `email`, `phone`, `address`, `birthdate`, `purchases`, `lastPurchase`, `registerDate`) VALUES
(12, 'Meesum', 'Meesum_344', 'Malir', 'Morning', 'Groom', 345, 'meesum@gmail.com', '0311 022-3699', 'fgdd', '2024-05-01', 5, '2024-05-08 21:52:13', '2024-05-11 16:52:16');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `event_name` varchar(255) NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `location` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `event_name`, `start_date`, `end_date`, `location`, `description`) VALUES
(1, 'ewer', '2024-05-23 22:12:00', '2024-05-16 22:12:00', 'ait.smartcampuses.com/application/views/admin/HR/Compensation/graduation', 'erwrwer'),
(2, 'rty', '2024-05-23 22:18:00', '2024-05-24 22:18:00', 'sdf', 'erwrwer'),
(3, 'afsd', '2024-05-23 22:19:00', '2024-05-07 22:19:00', 'afdsfsdf', 'dsfsdfsdf'),
(4, 'afsd', '2024-05-23 22:19:00', '2024-05-07 22:19:00', 'afdsfsdf', 'dsfsdfsdf'),
(5, 'afsd', '2024-05-23 22:19:00', '2024-05-07 22:19:00', 'afdsfsdf', 'dsfsdfsdf'),
(6, 'afsd', '2024-05-23 22:19:00', '2024-05-07 22:19:00', 'afdsfsdf', 'dsfsdfsdf'),
(7, 'Hey', '2024-05-01 22:25:00', '2024-05-09 22:25:00', 'asfdhafdjahjahsasdjgasjdgjasdjg', 'jahgfdjhgjfdagjhdsajfjgdf'),
(8, 'Hey', '2024-05-01 22:25:00', '2024-05-09 22:25:00', 'asfdhafdjahjahsasdjgasjdgjasdjg', 'jahgfdjhgjfdagjhdsajfjgdf'),
(9, 'HEllo', '2024-05-24 22:28:00', '2024-05-10 22:28:00', 'afdsfsdf', 'erwrwer'),
(10, 'HEllo', '2024-05-24 22:28:00', '2024-05-10 22:28:00', 'afdsfsdf', 'erwrwer'),
(11, 'HEllo', '2024-05-24 22:28:00', '2024-05-10 22:28:00', 'afdsfsdf', 'erwrwer'),
(12, 'asfafdfsdf', '2024-05-09 22:30:00', '2024-05-10 22:30:00', 'sda', 'asdasd'),
(13, 'asfafdfsdf', '2024-05-09 22:30:00', '2024-05-10 22:30:00', 'sda', 'asdasd'),
(14, 'asfafdfsdf', '2024-05-09 22:30:00', '2024-05-10 22:30:00', 'sda', 'asdasd'),
(15, 'asfafdfsdf', '2024-05-09 22:30:00', '2024-05-10 22:30:00', 'sda', 'asdasd'),
(16, 'fsdf', '2024-05-15 22:34:00', '2024-05-03 22:34:00', 'dsfsf', 'erwrwer'),
(17, 'abcabc', '2024-05-09 22:45:00', '2024-05-09 22:45:00', 'ait.smartcampuses.com/application/views/admin/HR/Compensation/graduation', 'FLEX');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `idCategory` int(11) DEFAULT NULL,
  `code` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `buyingPrice` float DEFAULT NULL,
  `sellingPrice` float DEFAULT NULL,
  `sales` int(11) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `idCategory`, `code`, `description`, `image`, `stock`, `buyingPrice`, `sellingPrice`, `sales`, `date`) VALUES
(69, 8, '525', 'PhotoGraphy', 'abc.jpg', 2, 3000, 30000, 1, '2024-05-10 16:15:04'),
(71, 8, '222', 'VideoGraphy', NULL, NULL, 4500, NULL, NULL, '2024-05-10 16:46:34'),
(72, 9, '757', 'VideoGraphy', NULL, NULL, 4000, NULL, NULL, '2024-05-11 15:31:48'),
(73, 8, '786', 'Drone', NULL, NULL, 2500, NULL, NULL, '2024-05-11 16:20:00');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `code` int(11) NOT NULL,
  `idCustomer` int(11) NOT NULL,
  `idSeller` int(11) NOT NULL,
  `products` text NOT NULL,
  `tax` int(11) NOT NULL,
  `netPrice` float NOT NULL,
  `totalPrice` float NOT NULL,
  `paymentMethod` text NOT NULL,
  `saledate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `code`, `idCustomer`, `idSeller`, `products`, `tax`, `netPrice`, `totalPrice`, `paymentMethod`, `saledate`) VALUES
(9, 10001, 2, 2, '[{\"id\":\"25\",\"description\":\"Product Sample Two\",\"quantity\":\"3\",\"stock\":\"29\",\"price\":\"185\",\"totalPrice\":\"555\"}]', 17, 555, 572, 'cash', '2018-12-04 00:53:28'),
(11, 10002, 3, 1, '[{\"id\":\"44\",\"description\":\"Product Sample Four\",\"quantity\":\"4\",\"stock\":\"16\",\"price\":\"490\",\"totalPrice\":\"1960\"},{\"id\":\"36\",\"description\":\"Product Sample Three\",\"quantity\":\"6\",\"stock\":\"14\",\"price\":\"125\",\"totalPrice\":\"750\"}]', 0, 2710, 2710, 'cash', '2018-12-05 06:30:28'),
(12, 10003, 3, 1, '[{\"id\":\"44\",\"description\":\"Product Sample Four\",\"quantity\":\"1\",\"stock\":\"2\",\"price\":\"490\",\"totalPrice\":\"490\"},{\"id\":\"36\",\"description\":\"Product Sample Three\",\"quantity\":\"1\",\"stock\":\"8\",\"price\":\"125\",\"totalPrice\":\"125\"},{\"id\":\"25\",\"description\":\"Product Sample Two\",\"quantity\":\"1\",\"stock\":\"23\",\"price\":\"185\",\"totalPrice\":\"185\"},{\"id\":\"18\",\"description\":\"Product Sample One\",\"quantity\":\"2\",\"stock\":\"114\",\"price\":\"78\",\"totalPrice\":\"156\"}]', 48, 956, 1004, 'cash', '2019-04-09 22:59:10'),
(14, 10005, 6, 1, '[{\"id\":\"61\",\"description\":\"Test Product\",\"quantity\":\"9\",\"stock\":\"31\",\"price\":\"28\",\"totalPrice\":\"252\"},{\"id\":\"44\",\"description\":\"Product Sample Four\",\"quantity\":\"3\",\"stock\":\"3\",\"price\":\"490\",\"totalPrice\":\"1470\"},{\"id\":\"36\",\"description\":\"Product Sample Three\",\"quantity\":\"5\",\"stock\":\"3\",\"price\":\"125\",\"totalPrice\":\"625\"}]', 117, 2347, 2464, 'cash', '2020-02-26 05:34:45'),
(15, 10006, 6, 1, '[{\"id\":\"61\",\"description\":\"Test Product\",\"quantity\":\"17\",\"stock\":\"19\",\"price\":\"28\",\"totalPrice\":\"476\"},{\"id\":\"25\",\"description\":\"Product Sample Two\",\"quantity\":\"2\",\"stock\":\"1\",\"price\":\"185\",\"totalPrice\":\"370\"}]', 25, 846, 871, 'cash', '2021-01-05 15:36:20'),
(17, 10008, 4, 1, '[{\"id\":\"67\",\"description\":\"Product Sample Ten\",\"quantity\":\"2\",\"stock\":\"69\",\"price\":\"91\",\"totalPrice\":\"182\"}]', 0, 182, 182, 'cash', '2021-09-28 05:18:53'),
(18, 10009, 7, 1, '[{\"id\":\"66\",\"description\":\"Product Sample Nine\",\"quantity\":\"3\",\"stock\":\"57\",\"price\":\"35\",\"totalPrice\":\"105\"},{\"id\":\"65\",\"description\":\"Product Sample Eight\",\"quantity\":\"1\",\"stock\":\"40\",\"price\":\"140\",\"totalPrice\":\"140\"}]', 5, 245, 250, 'cash', '2022-02-13 23:58:09'),
(19, 10010, 4, 1, '[{\"id\":\"36\",\"description\":\"Product Sample Three\",\"quantity\":\"3\",\"stock\":\"55\",\"price\":\"125\",\"totalPrice\":\"375\"}]', 4, 375, 379, 'cash', '2022-06-29 03:42:37'),
(20, 10011, 9, 1, '[{\"id\":\"67\",\"description\":\"Product Sample Ten\",\"quantity\":\"4\",\"stock\":\"65\",\"price\":\"91\",\"totalPrice\":\"364\"},{\"id\":\"66\",\"description\":\"Product Sample Nine\",\"quantity\":\"10\",\"stock\":\"47\",\"price\":\"35\",\"totalPrice\":\"350\"},{\"id\":\"65\",\"description\":\"Product Sample Eight\",\"quantity\":\"4\",\"stock\":\"36\",\"price\":\"140\",\"totalPrice\":\"560\"}]', 64, 1274, 1338, 'CC-110101458966', '2022-09-20 13:43:42'),
(21, 10012, 11, 1, '[{\"id\":\"68\",\"description\":\"Product Sample Eleven\",\"quantity\":\"3\",\"stock\":\"23\",\"price\":\"168\",\"totalPrice\":\"504\"},{\"id\":\"66\",\"description\":\"Product Sample Nine\",\"quantity\":\"10\",\"stock\":\"37\",\"price\":\"35\",\"totalPrice\":\"350\"}]', 68, 854, 922, 'CC-100000147850', '2022-12-10 17:35:52'),
(22, 10013, 8, 2, '[{\"id\":\"68\",\"description\":\"Product Sample Eleven\",\"quantity\":\"7\",\"stock\":\"16\",\"price\":\"168\",\"totalPrice\":\"1176\"}]', 0, 1176, 1176, 'cash', '2022-12-10 17:40:02'),
(23, 10014, 1, 1, '[{\"id\":\"68\",\"description\":\"Product Sample Eleven\",\"quantity\":\"1\",\"stock\":\"15\",\"price\":\"168\",\"totalPrice\":\"168\"}]', 84, 168, 252, 'cash', '2024-05-08 16:06:18');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `user` text NOT NULL,
  `password` text NOT NULL,
  `profile` text NOT NULL,
  `photo` text NOT NULL,
  `status` int(1) NOT NULL,
  `lastLogin` datetime NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `user`, `password`, `profile`, `photo`, `status`, `lastLogin`, `date`) VALUES
(1, 'Administrator', 'admin', '$2a$07$asxx54ahjppf45sd87a5auJvme8CFSgJ.CVouof6guZgq6uhIs55K', 'Administrator', 'views/img/users/admin/admin-icn.png', 1, '2024-05-11 10:28:40', '2024-05-11 15:28:40'),
(2, 'Jonathan Barbour', 'seller', '$2a$07$asxx54ahjppf45sd87a5au8uJqn2VoaOMw86zRUoDH6inuYomGLDq', 'Seller', 'views/img/users/jonathan/239.jpg', 1, '2022-12-10 12:39:15', '2022-12-10 17:39:15'),
(3, 'Carmen McLeod', 'carmen', '$2a$07$asxx54ahjppf45sd87a5au8uJqn2VoaOMw86zRUoDH6inuYomGLDq', 'Special', 'views/img/users/carmen/215.jpg', 1, '2022-12-10 12:17:55', '2022-12-10 17:17:55'),
(4, 'Meesum', 'admin2', '123', 'Administrator', '', 0, '2024-05-08 17:17:46', '2024-05-08 15:39:57');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
