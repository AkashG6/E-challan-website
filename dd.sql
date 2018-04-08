-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 08, 2018 at 10:50 PM
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
-- Database: `dd`
--

-- --------------------------------------------------------

--
-- Table structure for table `license_holder`
--

CREATE TABLE `license_holder` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `license_no` varchar(15) NOT NULL,
  `age` int(3) NOT NULL,
  `contact` bigint(10) NOT NULL,
  `date_of_reg` date NOT NULL,
  `exp_date` date NOT NULL,
  `rto` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `license_holder`
--

INSERT INTO `license_holder` (`id`, `name`, `license_no`, `age`, `contact`, `date_of_reg`, `exp_date`, `rto`) VALUES
(2, 'mayank', 'MH031255', 21, 9528756771, '2018-04-01', '2021-04-01', 'wadala'),
(3, 'shreya', 'MH049654', 23, 8785827167, '2018-04-12', '2021-04-12', 'thane');

-- --------------------------------------------------------

--
-- Table structure for table `offenders`
--

CREATE TABLE `offenders` (
  `id` int(6) NOT NULL,
  `aadhar` int(16) NOT NULL,
  `name` varchar(25) NOT NULL,
  `age` int(3) NOT NULL,
  `contact` bigint(10) NOT NULL,
  `offense_id` int(10) NOT NULL,
  `license_no` varchar(15) NOT NULL,
  `vehicle_no` varchar(15) NOT NULL,
  `offense_location` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `offenders`
--

INSERT INTO `offenders` (`id`, `aadhar`, `name`, `age`, `contact`, `offense_id`, `license_no`, `vehicle_no`, `offense_location`) VALUES
(1, 12345, 'mayank', 21, 12345, 123, 'MH031255', 'mho34544', 'chembur');

-- --------------------------------------------------------

--
-- Table structure for table `officers`
--

CREATE TABLE `officers` (
  `id` int(6) NOT NULL,
  `user_id` int(6) NOT NULL,
  `pass` varchar(15) NOT NULL,
  `name` varchar(25) NOT NULL,
  `contact` bigint(10) NOT NULL,
  `post` varchar(25) NOT NULL,
  `division` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `officers`
--

INSERT INTO `officers` (`id`, `user_id`, `pass`, `name`, `contact`, `post`, `division`) VALUES
(1, 235467, 'akash', 'Akash Garule', 9920557891, 'chembur', 'wadala');

-- --------------------------------------------------------

--
-- Table structure for table `penalties`
--

CREATE TABLE `penalties` (
  `id` int(11) NOT NULL,
  `penalty` varchar(100) NOT NULL,
  `fine` int(5) NOT NULL,
  `sentence` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penalties`
--

INSERT INTO `penalties` (`id`, `penalty`, `fine`, `sentence`) VALUES
(1, 'Driving without carrying a Valid Driving License', 5000, 'imprisonment for up to 3 months'),
(4, 'Driving by a minor (aged below 18)', 500, ''),
(6, 'Reversing without due caution and care', 100, ''),
(7, 'Use of Offensive Number Plate for vehicle used in driving', 100, ''),
(11, 'Driving without a Valid Permit', 3000, ''),
(13, 'Improper usage of horn when you drive', 100, ''),
(15, 'Not complying with the manual Traffic Signal', 100, '');

-- --------------------------------------------------------

--
-- Table structure for table `traffic_posts`
--

CREATE TABLE `traffic_posts` (
  `id` int(11) NOT NULL,
  `post_name` varchar(11) NOT NULL,
  `division` varchar(25) NOT NULL,
  `incharge_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `traffic_posts`
--

INSERT INTO `traffic_posts` (`id`, `post_name`, `division`, `incharge_id`) VALUES
(1, 'chembur', 'wadala', 1),
(2, 'chembur', 'wadala', 1);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(11) NOT NULL,
  `challan_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `license_no` varchar(15) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE `vehicles` (
  `id` int(11) NOT NULL,
  `vehicle_no` varchar(15) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `type` varchar(15) NOT NULL,
  `brand` varchar(15) NOT NULL,
  `model` varchar(25) NOT NULL,
  `date_of_reg` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicles`
--

INSERT INTO `vehicles` (`id`, `vehicle_no`, `owner_id`, `type`, `brand`, `model`, `date_of_reg`) VALUES
(1, 'mho34544', 2, '4 wheeler', 'Toyota', 'Fortuner', '2018-04-01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `license_holder`
--
ALTER TABLE `license_holder`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offenders`
--
ALTER TABLE `offenders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `officers`
--
ALTER TABLE `officers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `penalties`
--
ALTER TABLE `penalties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `traffic_posts`
--
ALTER TABLE `traffic_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `license_holder`
--
ALTER TABLE `license_holder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `offenders`
--
ALTER TABLE `offenders`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `officers`
--
ALTER TABLE `officers`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `penalties`
--
ALTER TABLE `penalties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `traffic_posts`
--
ALTER TABLE `traffic_posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
