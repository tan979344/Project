-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 12, 2024 at 04:06 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `curtain_iot_0224`
--

-- --------------------------------------------------------

--
-- Table structure for table `command_window`
--

CREATE TABLE `command_window` (
  `cw_id` int(11) NOT NULL,
  `window_id` int(11) NOT NULL,
  `command` int(11) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `pin_enable` tinyint(4) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `name`, `username`, `password`, `pin_enable`, `create_date`) VALUES
(1, 'Test', 'd8:ce:3a:98:b7:a5', '1235', 1, '2024-02-12 04:35:31');

-- --------------------------------------------------------

--
-- Table structure for table `user_window`
--

CREATE TABLE `user_window` (
  `user_id` int(11) NOT NULL,
  `window_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_window`
--

INSERT INTO `user_window` (`user_id`, `window_id`) VALUES
(1, 1),
(1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `window`
--

CREATE TABLE `window` (
  `window_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `temperature` float NOT NULL,
  `stamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `window`
--

INSERT INTO `window` (`window_id`, `status`, `level`, `temperature`, `stamp`) VALUES
(1, 0, 0, 11, '2024-02-12 04:42:00'),
(2, 1, 5, 22, '2024-02-12 04:42:05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `command_window`
--
ALTER TABLE `command_window`
  ADD PRIMARY KEY (`cw_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `window`
--
ALTER TABLE `window`
  ADD PRIMARY KEY (`window_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `command_window`
--
ALTER TABLE `command_window`
  MODIFY `cw_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `window`
--
ALTER TABLE `window`
  MODIFY `window_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
