-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 20, 2022 at 07:55 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gocheetasql`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking_list`
--

CREATE TABLE `booking_list` (
  `id` int(30) NOT NULL,
  `ref_code` varchar(100) NOT NULL,
  `client_id` int(30) NOT NULL,
  `cab_id` int(30) NOT NULL,
  `pickup_zone` text NOT NULL,
  `drop_zone` text NOT NULL,
  `status` tinyint(2) NOT NULL DEFAULT 0 COMMENT '0 = Pending,\r\n1 = Driver has Confirmed,\r\n2 = Pickup,\r\n3 = drop-off,\r\n4 = cancelled',
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booking_list`
--

INSERT INTO `booking_list` (`id`, `ref_code`, `client_id`, `cab_id`, `pickup_zone`, `drop_zone`, `status`, `date_created`, `date_updated`) VALUES
(24, '202203-00013', 12, 6, '144 Test Location', '522 Test Location', 4, '2022-03-27 22:54:41', '2022-03-27 22:54:51'),
(25, '202209-00001', 20, 8, 'Nugegoda ', 'Galle Road', 4, '2022-09-19 14:11:48', '2022-09-19 14:12:14'),
(26, '202209-00001', 20, 14, 'Colombo Burger King', 'Galle Road\r\n', 4, '2022-09-19 14:13:08', '2022-09-19 15:35:50'),
(27, '202209-00002', 20, 15, 'Galle Road', 'Nawala Wet Land Park', 4, '2022-09-19 15:35:25', '2022-09-19 15:35:34'),
(28, '202209-00002', 20, 10, 'colombo', 'Nugegoda ', 0, '2022-09-19 16:05:39', NULL),
(29, '202209-00003', 20, 15, 'Pizza hut Nugegoda', 'KFC maragama', 3, '2022-09-19 16:08:57', '2022-09-19 16:22:57'),
(30, '202209-00003', 20, 15, 'Nugegoda ', 'Wetland park', 3, '2022-09-20 08:48:12', '2022-09-20 09:03:55');

-- --------------------------------------------------------

--
-- Table structure for table `cab_list`
--

CREATE TABLE `cab_list` (
  `id` int(30) NOT NULL,
  `reg_code` varchar(100) NOT NULL,
  `category_id` int(30) NOT NULL,
  `cab_reg_no` varchar(200) NOT NULL,
  `body_no` varchar(100) NOT NULL,
  `cab_model` text NOT NULL,
  `cab_driver` text NOT NULL,
  `driver_contact` text NOT NULL,
  `driver_address` text NOT NULL,
  `password` text NOT NULL,
  `image_path` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cab_list`
--

INSERT INTO `cab_list` (`id`, `reg_code`, `category_id`, `cab_reg_no`, `body_no`, `cab_model`, `cab_driver`, `driver_contact`, `driver_address`, `password`, `image_path`, `status`, `delete_flag`, `date_created`, `date_updated`) VALUES
(1, '202202-00002', 1, 'ASTR0306', 'Fusion-130', 'Ford Fusion', 'Mark Cooper', '09123456789', '94 Chestnut Street', '5f4dcc3b5aa765d61d8327deb882cf99', 'uploads/dirvers/1.png?v=1644981064', 1, 1, '2022-03-02 10:59:12', '2022-09-19 15:26:18'),
(2, '202202-00001', 2, 'NC-9024', 'Tuk', 'kangaroo Mini ', 'Sujath ', '0779081375', 'Hambontota', '7ad1aea197a92805ac70f71bdec579d3', 'uploads/dirvers/2.png?v=1644981833', 1, 1, '2022-03-02 11:13:30', '2022-09-19 15:26:15'),
(3, '202203-00001', 1, 'ASTR0123', 'Prius-1010', 'Toyota Prius', 'Henry', '7485658965', '12 Fincham Road', '5f4dcc3b5aa765d61d8327deb882cf99', 'uploads/dirvers/3.png?v=1648051050', 1, 1, '2022-03-02 21:42:30', '2022-09-19 15:26:22'),
(4, '202203-00002', 1, 'ASTR0770', 'Soul-009', 'Kia Soul', 'Lexie Luthor', '7896478540', '70 Star Trek Drive', '5f4dcc3b5aa765d61d8327deb882cf99', NULL, 1, 1, '2022-03-02 21:59:17', '2022-09-19 15:26:25'),
(5, '202203-00003', 1, 'ASTR0741', 'Civic-7781', 'Honda Civic', 'Allen S. Nichols', '7895410000', '74 Frosty Lane', '5f4dcc3b5aa765d61d8327deb882cf99', 'uploads/dirvers/5.png?v=1648311707', 1, 1, '2022-03-02 22:06:47', '2022-09-19 15:26:28'),
(6, '202203-00004', 2, 'ASTR0850', 'ESV-7700', 'Cadillac Escalade ESV', 'Jose R. Kerner', '7850001010', '15 Chatham Way', '5f4dcc3b5aa765d61d8327deb882cf99', 'uploads/dirvers/6.png?v=1648311872', 1, 1, '2022-03-02 22:09:32', '2022-09-19 15:26:31'),
(7, '202203-00005', 1, 'ASTR0555', 'iTen-1010', 'Hyundai i10', 'Tony W. Bryan', '4785478500', '59 Patterson Fork Road', '5f4dcc3b5aa765d61d8327deb882cf99', 'uploads/dirvers/7.png?v=1648312063', 1, 1, '2022-03-02 22:12:43', '2022-09-19 15:26:34'),
(8, '202203-00006', 1, 'ASTR0020', 'Skoda-162TSI', 'Skoda Superb 162TSI', 'John J. Ackles', '2547854444', '49 Andell Road', '5f4dcc3b5aa765d61d8327deb882cf99', NULL, 1, 1, '2022-03-02 22:16:57', '2022-09-19 15:26:37'),
(9, '202203-00007', 1, 'FF-9803', 'kangaroo ', 'kangaroo Mini ', 'Pankjak', '0715678477', 'Galle', 'bfac690e94a13d2882815029d8e140d4', NULL, 1, 0, '2022-03-02 22:18:41', '2022-09-20 08:55:11'),
(10, '202203-00008', 3, 'QL-9904', 'Toyota', 'Toyota ', 'Suraj', '0779084576', 'Nugegoda', '5f4dcc3b5aa765d61d8327deb882cf99', NULL, 1, 0, '2022-03-02 13:00:24', '2022-09-19 15:30:50'),
(11, '202203-00009', 1, 'ASTR0047', 'Passat-7890', 'Volkswagen Passat', 'Gabriel M. Allen', '7896666666', '13 Boring Lane', '5f4dcc3b5aa765d61d8327deb882cf99', NULL, 1, 1, '2022-03-02 13:02:37', '2022-09-19 15:26:43'),
(12, '202203-00010', 3, 'ASTR0258', 'Touran-8989', 'Volkswagen Touran', 'Wayne J. Broussard', '7412563250', '74 Goldleaf Lane', '5f4dcc3b5aa765d61d8327deb882cf99', NULL, 1, 1, '2022-03-02 13:04:26', '2022-09-19 15:26:50'),
(13, '202203-00011', 1, 'ASTR0885', 'Toledo-5555', 'SEAT Toledo', 'Linda L. Reid', '7895555540', '29 Lake Floyd Circle', '5f4dcc3b5aa765d61d8327deb882cf99', NULL, 1, 1, '2022-03-02 13:05:37', '2022-09-19 15:26:56'),
(14, '202203-00012', 1, 'ASTR0135', 'kangaroo Mini ', 'Yellow', 'Manoj', '0714537765', 'boralesgamuwa', '5f4dcc3b5aa765d61d8327deb882cf99', 'uploads/dirvers/14.png?v=1648366006', 1, 0, '2022-03-02 13:11:46', '2022-09-19 15:33:50'),
(15, '202209-00001', 4, 'NB-9987', 'Bajaj', 'Bajaj', 'Mohammed', 'admin', 'Panadura', 'bfac690e94a13d2882815029d8e140d4', NULL, 1, 0, '2022-09-19 15:12:52', '2022-09-20 08:56:41'),
(16, '202209-00002', 4, 'HJ-0009', 'Tuks', 'Tuk', 'Karuna', 'admin', 'Nugegoda', 'd8578edf8458ce06fbc5bb76a58c5ca4', NULL, 1, 0, '2022-09-19 16:08:09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `category_list`
--

CREATE TABLE `category_list` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category_list`
--

INSERT INTO `category_list` (`id`, `name`, `description`, `delete_flag`, `status`, `date_created`, `date_updated`) VALUES
(1, 'Mini', 'Best for journeys with 4 people \r\n', 0, 1, '2022-03-01 10:03:54', '2022-09-19 14:38:52'),
(2, 'Truck', 'Best for when moving large items ', 0, 1, '2022-03-01 10:08:10', '2022-09-19 14:38:23'),
(3, 'Hybrid Car', 'luxury, comfortable, and quite the best for your convenience ', 0, 1, '2022-03-03 12:59:29', '2022-09-19 14:39:38'),
(4, 'Tuks', 'Tuk Tuks for cheaper rides (Best for 3 people rides)', 0, 1, '2022-09-19 14:37:18', '2022-09-19 14:40:30');

-- --------------------------------------------------------

--
-- Table structure for table `client_list`
--

CREATE TABLE `client_list` (
  `id` int(30) NOT NULL,
  `firstname` text NOT NULL,
  `middlename` text DEFAULT NULL,
  `lastname` text NOT NULL,
  `gender` text NOT NULL,
  `contact` text NOT NULL,
  `address` text NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` text NOT NULL,
  `image_path` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_added` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `client_list`
--

INSERT INTO `client_list` (`id`, `firstname`, `middlename`, `lastname`, `gender`, `contact`, `address`, `email`, `password`, `image_path`, `status`, `delete_flag`, `date_created`, `date_added`) VALUES
(6, 'Timothy', 'E.', 'Maurer', 'Male', '1458965555', '75 Brannon Avenue', 'timothye@mail.com', '5f4dcc3b5aa765d61d8327deb882cf99', NULL, 1, 0, '2022-03-01 13:41:16', '2022-03-27 21:11:37'),
(9, 'Daniel', 'J.', 'Amos', 'Male', '0779081244', 'Old Kottawa Road', 'daniel@mail.com', '5f4dcc3b5aa765d61d8327deb882cf99', NULL, 1, 0, '2022-03-01 13:59:54', '2022-09-19 15:13:59'),
(11, 'Gina', 'J.', 'Bernard', 'Female', '0778374677', 'Nugegoda', 'ginac@mail.com', '5f4dcc3b5aa765d61d8327deb882cf99', NULL, 1, 0, '2022-03-01 14:14:37', '2022-09-19 15:14:33'),
(12, 'Thomas', 'J.', 'Greenwood', 'Male', '4569000010', '70 Elk Avenue', 'thomas@mail.com', '5f4dcc3b5aa765d61d8327deb882cf99', 'uploads/clients/12.png?v=1648370087', 1, 0, '2022-03-01 14:19:47', '2022-03-27 21:12:59'),
(14, 'John', 'H.', 'Hampton', 'Male', '4789652210', '50 Pooh Bear Lane', 'johnhm@mail.com', '5f4dcc3b5aa765d61d8327deb882cf99', NULL, 1, 0, '2022-03-27 22:20:32', NULL),
(15, 'Maria', 'J.', 'Connors', 'Female', '0718738856', 'Maragama', 'mariaj@mail.com', '5f4dcc3b5aa765d61d8327deb882cf99', NULL, 1, 0, '2022-03-27 22:21:08', '2022-09-19 15:14:50'),
(20, 'Sadeev', 'jackson', 'bond', 'Male', '0779081378', 'Nugegoda galle road', 'sachirukt@gmail.com', 'bfac690e94a13d2882815029d8e140d4', NULL, 1, 0, '2022-09-19 09:57:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `system_info`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'GoCheeta '),
(6, 'short_name', 'GoCheeta'),
(11, 'logo', 'uploads/1648050060_cbslg.png'),
(13, 'user_avatar', 'uploads/user_avatar.jpg'),
(14, 'cover', 'uploads/1648048980_cbss22.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `password`, `avatar`, `last_login`, `type`, `date_added`, `date_updated`) VALUES
(1, 'Adminstrator', 'Karunarathna', 'admin', 'd00f5d5217896fb7fd601412cb890830', 'uploads/1624000_adminicn.png', NULL, 1, '2022-01-19 14:02:37', '2022-09-19 14:36:13'),
(10, 'sachiru', 'sadeev', 'sachiru', 'd8578edf8458ce06fbc5bb76a58c5ca4', NULL, NULL, 2, '2022-09-19 15:20:18', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking_list`
--
ALTER TABLE `booking_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cab_id` (`cab_id`),
  ADD KEY `client_id` (`client_id`);

--
-- Indexes for table `cab_list`
--
ALTER TABLE `cab_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `category_list`
--
ALTER TABLE `category_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client_list`
--
ALTER TABLE `client_list`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `system_info`
--
ALTER TABLE `system_info`
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
-- AUTO_INCREMENT for table `booking_list`
--
ALTER TABLE `booking_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `cab_list`
--
ALTER TABLE `cab_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `category_list`
--
ALTER TABLE `category_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `client_list`
--
ALTER TABLE `client_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking_list`
--
ALTER TABLE `booking_list`
  ADD CONSTRAINT `booking_list_ibfk_1` FOREIGN KEY (`cab_id`) REFERENCES `cab_list` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `booking_list_ibfk_2` FOREIGN KEY (`client_id`) REFERENCES `client_list` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cab_list`
--
ALTER TABLE `cab_list`
  ADD CONSTRAINT `cab_list_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category_list` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
