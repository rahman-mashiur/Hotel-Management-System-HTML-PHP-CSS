-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 11, 2020 at 09:50 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sunrise_hotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `SN` int(8) NOT NULL,
  `user_name` varchar(30) NOT NULL,
  `password` varchar(8) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`SN`, `user_name`, `password`, `status`) VALUES
(1, 'admin', '1234', 'admin'),
(2, 'manager', '1111', 'manager'),
(3, 'stuff', '2222', 'stuff'),
(4, 'client', '3333', 'client'),
(6, 'borshon', 'bbbb', 'client');

-- --------------------------------------------------------

--
-- Table structure for table `reserved_room`
--

CREATE TABLE `reserved_room` (
  `room_number` int(3) NOT NULL,
  `room_type` varchar(20) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `bedding_type` varchar(10) NOT NULL,
  `room_count` int(2) NOT NULL,
  `meal_plan` varchar(15) NOT NULL,
  `checkin_date` int(2) NOT NULL,
  `checkin_month` varchar(10) NOT NULL,
  `checkin_year` int(4) NOT NULL,
  `checkout_date` int(2) NOT NULL,
  `checkout_month` varchar(10) NOT NULL,
  `checkout_year` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reserved_room`
--

INSERT INTO `reserved_room` (`room_number`, `room_type`, `fname`, `lname`, `email`, `country`, `phone`, `bedding_type`, `room_count`, `meal_plan`, `checkin_date`, `checkin_month`, `checkin_year`, `checkout_date`, `checkout_month`, `checkout_year`) VALUES
(1, 'Superior Room', 'adads', 'ddf', 'fdhdgh', 'India', '4543124', 'Quad', 2, 'Breakfast', 11, 'Apr', 2020, 13, 'Apr', 2020),
(2, 'Single Room', 'kjhkj', 'jhjhgf', 'kjhkjh', 'China', '656565656', 'Double', 1, 'Full Board', 11, 'Apr', 2020, 13, 'Apr', 2020);

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `room_number` int(8) NOT NULL,
  `type` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`room_number`, `type`) VALUES
(1, 'Deluxe');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `SN` int(8) NOT NULL,
  `status` varchar(10) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `gender` varchar(8) NOT NULL,
  `address1` varchar(100) NOT NULL,
  `address2` varchar(100) NOT NULL,
  `city` varchar(15) NOT NULL,
  `zip` int(10) NOT NULL,
  `country` varchar(20) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`SN`),
  ADD UNIQUE KEY `UNIQUE` (`user_name`);

--
-- Indexes for table `reserved_room`
--
ALTER TABLE `reserved_room`
  ADD PRIMARY KEY (`room_number`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`room_number`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`SN`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `SN` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;