-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 08, 2018 at 06:44 PM
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
  `license_no` varchar(15) NOT NULL,
  `age` int(3) NOT NULL,
  `date_of_reg` date NOT NULL,
  `exp_date` date NOT NULL,
  `rto` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `offenders`
--

CREATE TABLE `offenders` (
  `id` int(6) NOT NULL,
  `aadhar` int(16) NOT NULL,
  `name` varchar(25) NOT NULL,
  `age` int(3) NOT NULL,
  `contact` int(10) NOT NULL,
  `offense_id` int(10) NOT NULL,
  `license_no` varchar(15) NOT NULL,
  `vehicle_no` varchar(15) NOT NULL,
  `offense_location` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `officers`
--

CREATE TABLE `officers` (
  `id` int(6) NOT NULL,
  `name` varchar(25) NOT NULL,
  `contact` int(10) NOT NULL,
  `post` varchar(25) NOT NULL,
  `division` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

-- --------------------------------------------------------

--
-- Table structure for table `traffic_posts`
--

CREATE TABLE `traffic_posts` (
  `id` int(11) NOT NULL,
  `division` varchar(25) NOT NULL,
  `incharge_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `model` int(11) NOT NULL,
  `date_of_reg` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `offenders`
--
ALTER TABLE `offenders`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `officers`
--
ALTER TABLE `officers`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `penalties`
--
ALTER TABLE `penalties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `traffic_posts`
--
ALTER TABLE `traffic_posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
