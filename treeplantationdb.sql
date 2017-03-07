-- phpMyAdmin SQL Dump
-- version 4.6.4deb1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 20, 2016 at 06:40 PM
-- Server version: 5.7.16-0ubuntu0.16.10.1
-- PHP Version: 7.0.8-3ubuntu3

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
('shreyanshb_dae1c4cb-ae14-4999-8a0b-6413b50be2ae', '1', 'shreyanshb', '2016-12-16'),
('sunnyb1234_50816810-c4e2-49e9-b4a1-1012509cc997', '1', 'shreyanshb', '2016-12-05');

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
('shreyanshb_dae1c4cb-ae14-4999-8a0b-6413b50be2ae', '1', 'http://192.168.1.2/treePlantation/uploads/shreyanshb_dae1c4cb-ae14-4999-8a0b-6413b50be2ae-1-0.jpg'),
('shreyanshb_dae1c4cb-ae14-4999-8a0b-6413b50be2ae', '1', 'http://192.168.1.2/treePlantation/uploads/shreyanshb_dae1c4cb-ae14-4999-8a0b-6413b50be2ae-1-1.jpg'),
('shreyanshb_dae1c4cb-ae14-4999-8a0b-6413b50be2ae', '1', 'http://192.168.1.2/treePlantation/uploads/shreyanshb_dae1c4cb-ae14-4999-8a0b-6413b50be2ae-1-2.jpg'),
('shreyanshb_dae1c4cb-ae14-4999-8a0b-6413b50be2ae', '1', 'http://192.168.1.2/treePlantation/uploads/shreyanshb_dae1c4cb-ae14-4999-8a0b-6413b50be2ae-1-3.jpg'),
('shreyanshb_dae1c4cb-ae14-4999-8a0b-6413b50be2ae', '1', 'http://192.168.1.2/treePlantation/uploads/shreyanshb_dae1c4cb-ae14-4999-8a0b-6413b50be2ae-1-4.jpg'),
('shreyanshb_dae1c4cb-ae14-4999-8a0b-6413b50be2ae', '1', 'http://192.168.1.2/treePlantation/uploads/shreyanshb_dae1c4cb-ae14-4999-8a0b-6413b50be2ae-1-5.jpg'),
('sunnyb1234_50816810-c4e2-49e9-b4a1-1012509cc997', '1', 'http://192.168.1.2/treePlantation/uploads/sunnyb1234_50816810-c4e2-49e9-b4a1-1012509cc997-1-0.jpg'),
('sunnyb1234_50816810-c4e2-49e9-b4a1-1012509cc997', '1', 'http://192.168.1.2/treePlantation/uploads/sunnyb1234_50816810-c4e2-49e9-b4a1-1012509cc997-1-1.jpg');

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
  `title` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`tree_id`, `review_no`, `review_text`, `reviewed_by`, `reviewed_on`, `title`) VALUES
('shreyanshb_aca68f04-fa79-40b0-9772-c5513e96adb8', '1', 'DG en DX us', 'shreyanshb', '2016-12-12', 'DJ'),
('shreyanshb_aca68f04-fa79-40b0-9772-c5513e96adb8', '2', 'DJ en is\n', 'shreyanshb', '2016-12-20', 'if LR HD'),
('shreyanshb_ebea8423-579d-4155-93fb-686d928fcff9', '1', 'DJ Kathie\n', 'shreyanshb', '2016-12-28', 'TV UC if'),
('shreyanshb_ebea8423-579d-4155-93fb-686d928fcff9', '2', 'GH just HDTV positive prideful el Beth idk startup phytase etch Joey in Ethiopia Columbia  \nvery good tree I like it very much I loved it very very very much very good app', 'sunnyb1234', '2017-10-20', 'sunny kw review'),
('shreyanshb_ef5279fd-dc7d-4a76-8cfa-a0d0ecfc5887', '1', 'she\naiiak', 'shreyanshb', '2016-12-22', 'sksjcjs'),
('shreyanshb_ef5279fd-dc7d-4a76-8cfa-a0d0ecfc5887', '2', 'Dahlia shipwreck debit servo still Webelo ideal keen Karachi IEC Khan Kathi auburn unanimous flabbergasted\n\n\nChristy Jan ignore Hubli uninterested\n\n\nHugo DS week Ivory own\n\nBeth Beth', 'sunnyb1234', '2016-01-02', 'sunny ka review'),
('shreyanshb_ef5279fd-dc7d-4a76-8cfa-a0d0ecfc5887', '3', 'FYI LP\n\nhonk\njunk', 'sunnyb1234', '2016-12-30', 'DJ is'),
('sunnyb1234_50816810-c4e2-49e9-b4a1-1012509cc997', '1', 'happy first year birthday tree', 'sunnyb1234', '1997-09-22', 'first review '),
('sunnyb1234_50816810-c4e2-49e9-b4a1-1012509cc997', '2', 'cracks CK ka shines go Oshawa heavy', 'shreyanshb', '2010-09-02', 'checking done');

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
('shreyanshb_1308515b-1cc3-43dd-bebc-419b83f2a1d2', 'shreyanshb', '18.92267035', '72.83382107', '2016-11-26', 'taj mahal'),
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
('dtdft', 'tx', 'ea7020f28ef8d80b443373847614dde7f4f6193a', 'gx@xy.ii', '7987413194'),
('dtdftg', 'gig', 'ee759b1936af4d7bd0d0e5363e6b1ea438e6a390', 'chug@CH.j', '6889'),
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
