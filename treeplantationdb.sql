-- phpMyAdmin SQL Dump
-- version 4.6.4deb1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 09, 2017 at 02:51 AM
-- Server version: 5.7.17-0ubuntu0.16.10.1
-- PHP Version: 7.0.15-0ubuntu0.16.10.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `treeplantationdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `adopts`
--

CREATE TABLE `adopts` (
  `tree_id` varchar(50) NOT NULL,
  `adopted_by` varchar(50) NOT NULL,
  `adopted_on` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adopts`
--

INSERT INTO `adopts` (`tree_id`, `adopted_by`, `adopted_on`) VALUES
('sunnyb1234_50816810-c4e2-49e9-b4a1-1012509cc997', 'shreyanshb', '2016-12-19');

-- --------------------------------------------------------

--
-- Table structure for table `directory`
--

CREATE TABLE `directory` (
  `tree_id` varchar(50) NOT NULL,
  `directory_id` decimal(5,0) NOT NULL,
  `uploaded_by` varchar(50) DEFAULT NULL,
  `clicked_on` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `directory`
--

INSERT INTO `directory` (`tree_id`, `directory_id`, `uploaded_by`, `clicked_on`) VALUES
('shreyanshb_75b7e076-2318-439e-b16a-ed0cc0d80894', '1', 'shreyanshb', '2017-02-16');

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE `image` (
  `tree_id` varchar(50) DEFAULT NULL,
  `directory_id` decimal(5,0) DEFAULT NULL,
  `image_url` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`tree_id`, `directory_id`, `image_url`) VALUES
('shreyanshb_75b7e076-2318-439e-b16a-ed0cc0d80894', '1', 'http://192.168.0.106/treePlantation/uploads/shreyanshb_75b7e076-2318-439e-b16a-ed0cc0d80894-1-0.jpg'),
('shreyanshb_75b7e076-2318-439e-b16a-ed0cc0d80894', '1', 'http://192.168.0.106/treePlantation/uploads/shreyanshb_75b7e076-2318-439e-b16a-ed0cc0d80894-1-1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `tree_id` varchar(50) NOT NULL,
  `review_no` decimal(5,0) NOT NULL,
  `review_text` text,
  `reviewed_by` varchar(50) DEFAULT NULL,
  `reviewed_on` date DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `review_stars` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`tree_id`, `review_no`, `review_text`, `reviewed_by`, `reviewed_on`, `title`, `review_stars`) VALUES
('shreyanshb_75b7e076-2318-439e-b16a-ed0cc0d80894', '1', 'very great condition', 'admin', '2017-03-10', 'great', 5),
('shreyanshb_822bd0b3-4e3e-43d7-a011-f26f5f5f4c55', '1', 'kV on of if if kg kg kg', 'shreyanshb', '2017-03-09', 'ajfdkkalkkc', 2.5);

-- --------------------------------------------------------

--
-- Table structure for table `tree`
--

CREATE TABLE `tree` (
  `tree_id` varchar(50) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `latitude` decimal(10,8) NOT NULL,
  `longitude` decimal(11,8) NOT NULL,
  `planted_on` date DEFAULT NULL,
  `species` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tree`
--

INSERT INTO `tree` (`tree_id`, `username`, `latitude`, `longitude`, `planted_on`, `species`) VALUES
('admin_671e710e-b17a-44fe-80e0-6e7994c488e0', 'admin', '22.75108473', '77.73653135', '2017-03-07', 'hbd'),
('admin_a2b45cfe-21f1-4bfb-95e5-6d4550393b63', 'admin', '19.13436759', '72.91012120', '2017-03-09', 'campus hub'),
('admin_fec55fb5-0ae4-4939-bff6-860a7071359e', 'admin', '19.09244794', '72.85701681', '2017-03-08', 'airport'),
('shreyanshb_1308515b-1cc3-43dd-bebc-419b83f2a1d2', 'shreyanshb', '18.92267035', '72.83382107', '2016-11-26', 'taj mahal'),
('shreyanshb_75b7e076-2318-439e-b16a-ed0cc0d80894', 'shreyanshb', '19.13702988', '72.90996931', '2017-02-14', 'h4room25'),
('shreyanshb_822bd0b3-4e3e-43d7-a011-f26f5f5f4c55', 'shreyanshb', '19.13607013', '72.91051615', '2017-01-26', 'randomMumbai'),
('shreyanshb_a864c1c7-b9dd-4cd3-8297-750e9db33549', 'shreyanshb', '19.12059048', '72.88547371', '2016-12-20', 'Ghent SSH GS'),
('shreyanshb_aca68f04-fa79-40b0-9772-c5513e96adb8', 'shreyanshb', '22.74791303', '77.73878071', '2016-09-02', 'Sibiu'),
('shreyanshb_dae1c4cb-ae14-4999-8a0b-6413b50be2ae', 'shreyanshb', '22.74661131', '77.74221931', '2016-07-06', 'helpless'),
('shreyanshb_ebea8423-579d-4155-93fb-686d928fcff9', 'shreyanshb', '22.74886102', '77.73906235', '2016-12-31', 'Fujitsu'),
('shreyanshb_ef5279fd-dc7d-4a76-8cfa-a0d0ecfc5887', 'shreyanshb', '22.75599983', '77.73590840', '2015-06-04', 'banana'),
('sunnyb1234_50816810-c4e2-49e9-b4a1-1012509cc997', 'sunnyb1234', '22.74861769', '77.74067804', '1996-09-22', 'aam ka ped');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `username` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(200) NOT NULL,
  `ph_no` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `name`, `password`, `email`, `ph_no`) VALUES
('admin', 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'admin@admin.admin', '9967063383'),
('shreyanshb', 'Shreyansh Barodiya', 'a159cdb85f6fa619d1512bacb60a87d8e6291a0c', 'shreyansh.barodiya@gmail.com', '9967063383'),
('sunnyb1234', 'Sunny', 'd2884b15701413489adf952c64ca644f80da4b16', '140050025@iitb.ac.in', '7987413194');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adopts`
--
ALTER TABLE `adopts`
  ADD PRIMARY KEY (`tree_id`,`adopted_by`),
  ADD KEY `adopted_by` (`adopted_by`);

--
-- Indexes for table `directory`
--
ALTER TABLE `directory`
  ADD PRIMARY KEY (`tree_id`,`directory_id`),
  ADD KEY `uploaded_by` (`uploaded_by`);

--
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`image_url`),
  ADD KEY `tree_id` (`tree_id`,`directory_id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`tree_id`,`review_no`),
  ADD KEY `reviewed_by` (`reviewed_by`);

--
-- Indexes for table `tree`
--
ALTER TABLE `tree`
  ADD PRIMARY KEY (`tree_id`),
  ADD KEY `username` (`username`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `adopts`
--
ALTER TABLE `adopts`
  ADD CONSTRAINT `adopts_ibfk_1` FOREIGN KEY (`tree_id`) REFERENCES `tree` (`tree_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `adopts_ibfk_2` FOREIGN KEY (`adopted_by`) REFERENCES `user` (`username`) ON DELETE CASCADE;

--
-- Constraints for table `directory`
--
ALTER TABLE `directory`
  ADD CONSTRAINT `directory_ibfk_1` FOREIGN KEY (`tree_id`) REFERENCES `tree` (`tree_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `directory_ibfk_2` FOREIGN KEY (`uploaded_by`) REFERENCES `user` (`username`) ON DELETE CASCADE;

--
-- Constraints for table `image`
--
ALTER TABLE `image`
  ADD CONSTRAINT `image_ibfk_1` FOREIGN KEY (`tree_id`,`directory_id`) REFERENCES `directory` (`tree_id`, `directory_id`) ON DELETE CASCADE;

--
-- Constraints for table `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `review_ibfk_1` FOREIGN KEY (`tree_id`) REFERENCES `tree` (`tree_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `review_ibfk_2` FOREIGN KEY (`reviewed_by`) REFERENCES `user` (`username`) ON DELETE CASCADE;

--
-- Constraints for table `tree`
--
ALTER TABLE `tree`
  ADD CONSTRAINT `tree_ibfk_1` FOREIGN KEY (`username`) REFERENCES `user` (`username`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
