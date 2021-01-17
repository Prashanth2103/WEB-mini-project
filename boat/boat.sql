-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 30, 2020 at 06:37 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `boat`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `name` varchar(50) NOT NULL,
  `password` varchar(260) NOT NULL,
  `user_type` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `boats`
--

CREATE TABLE `boats` (
  `b_id` int(11) NOT NULL,
  `b_name` varchar(35) NOT NULL,
  `b_cpcty` varchar(35) NOT NULL,
  `b_on` varchar(35) NOT NULL,
  `b_img` varchar(255) NOT NULL,
  `b_price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `boats`
--

INSERT INTO `boats` (`b_id`, `b_name`, `b_cpcty`, `b_on`, `b_img`, `b_price`) VALUES
(43, 'ora jackson', '25 Persons', 'rayleigh', '../boat_image/image_2016-02-26-11-33-39_56cfc793b356b.jpg', 3500),
(52, 'barko barko', '25 Persons', 'john dough', '../boat_image/image_2016-02-26-11-33-26_56cfc78667a8b.jpg', 3500),
(53, 'thre', '15 Persons', 'three name', '../boat_image/image_2016-02-26-11-33-58_56cfc7a61410a.jpg', 3000),
(54, 'boat four', '25 Persons', 'four name', '../boat_image/image_2016-02-26-11-34-18_56cfc7ba02940.jpg', 3500),
(55, 'boat five', '15 Persons', 'boat five name', '../boat_image/image_2016-02-26-11-34-36_56cfc7cc8ee91.jpg', 3000),
(56, 'ariana grandi', '30 Persons', 'justin beiber', '../boat_image/image_2016-02-26-11-35-29_56cfc8016ff83.jpg', 4000),
(57, 'idk', '25 Persons', 'luffy', '../boat_image/image_2016-02-26-11-35-54_56cfc81a68825.jpg', 3500),
(58, 'another boat', '15 Persons', 'brook', '../boat_image/image_2016-02-26-11-36-18_56cfc832eb45f.jpg', 3000),
(59, 'ggg', '15 Persons', 'ggg', '../boat_image/image_2016-02-26-11-36-31_56cfc83f7633d.jpg', 3000),
(60, 'hhh', '15 Persons', 'hh', '../boat_image/image_2016-02-26-11-36-42_56cfc84a8f88c.jpg', 3000),
(61, 'jjj', '30 Persons', 'jj', '../boat_image/image_2016-02-26-11-36-50_56cfc85230c90.jpg', 4000),
(62, 'lll', '15 Persons', 'lll', '../boat_image/image_2016-02-26-11-36-58_56cfc85a5d528.jpg', 3000),
(64, 'sakayan', '15 Persons', '11', '../boat_image/image_2016-02-26-11-40-36_56cfc934d9adc.jpg', 3000),
(65, 'no photo', '15 Persons', 'no photo', '../boat_image/image_2016-02-26-13-07-23_56cfdd8b089a9.jpg', 3000),
(66, 'hordy jones', '15 Persons', 'vander decken', '../boat_image/image_2016-02-26-13-07-07_56cfdd7bc03a9.jpg', 3000),
(74, 'SDFSD', '15 Persons', 'SDFSDFSDFSD', '../boat_image/image_2016-02-27-07-40-09_56d144c9c7018.jpg', 3000),
(76, 'price', '25 Persons', 'price', '../boat_image/image_2016-02-27-07-05-24_56d13ca4c57a8.jpg', 3500);

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `r_id` int(11) NOT NULL,
  `b_id` int(11) NOT NULL,
  `tour_id` int(11) NOT NULL,
  `r_dstntn` varchar(35) NOT NULL,
  `r_date` varchar(35) NOT NULL,
  `r_hr` varchar(35) NOT NULL,
  `r_ampm` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`r_id`, `b_id`, `tour_id`, `r_dstntn`, `r_date`, `r_hr`, `r_ampm`) VALUES
(1, 58, 6, 'Goa', '2020-12-02', '1', 'AM'),
(2, 56, 7, 'malpe', '2020-10-28', '1', 'AM');

-- --------------------------------------------------------

--
-- Table structure for table `tourist`
--

CREATE TABLE `tourist` (
  `tour_id` int(11) NOT NULL,
  `tour_fN` varchar(50) NOT NULL,
  `tour_mN` varchar(50) NOT NULL,
  `tour_lN` varchar(50) NOT NULL,
  `tour_address` varchar(255) NOT NULL,
  `tour_contact` varchar(15) NOT NULL,
  `tour_un` varchar(50) NOT NULL,
  `tour_up` varchar(35) NOT NULL,
  `user_type` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tourist`
--

INSERT INTO `tourist` (`tour_id`, `tour_fN`, `tour_mN`, `tour_lN`, `tour_address`, `tour_contact`, `tour_un`, `tour_up`, `user_type`) VALUES
(2, '', '', '', '', '', 'admin', '21232f297a57a5a743894a0e4a801fc3', '1'),
(6, 'Prashanth', 'H', 'K', 'Bangalore', '9731742994', 'Prashanth', '63ac913cd2eaf6544fcdf33aa903cde1', '2'),
(7, 'Pavan', 'v', 'Srinivas', 'Iti layout nayandahalli', '9090909098', 'pavan', 'ae4cc5f486a0d8eee7a5c10ee1fe154b', '2'),
(8, 'giri', 'v', 'Srinivas', 'Iti layout nayandahalli', '9090909098', 'gta', 'ae4cc5f486a0d8eee7a5c10ee1fe154b', '2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `boats`
--
ALTER TABLE `boats`
  ADD PRIMARY KEY (`b_id`);

--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`r_id`),
  ADD KEY `b_id` (`b_id`),
  ADD KEY `tour_id` (`tour_id`);

--
-- Indexes for table `tourist`
--
ALTER TABLE `tourist`
  ADD PRIMARY KEY (`tour_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `boats`
--
ALTER TABLE `boats`
  MODIFY `b_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `r_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tourist`
--
ALTER TABLE `tourist`
  MODIFY `tour_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `reservation`
--
ALTER TABLE `reservation`
  ADD CONSTRAINT `reservation_ibfk_1` FOREIGN KEY (`b_id`) REFERENCES `boats` (`b_id`),
  ADD CONSTRAINT `reservation_ibfk_2` FOREIGN KEY (`tour_id`) REFERENCES `tourist` (`tour_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
