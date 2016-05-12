-- phpMyAdmin SQL Dump
-- version 4.4.13.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 12, 2016 at 05:09 PM
-- Server version: 5.6.30-0ubuntu0.15.10.1
-- PHP Version: 5.6.11-1ubuntu3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `login_form`
--

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE IF NOT EXISTS `city` (
  `city_id` int(2) NOT NULL,
  `city_name` varchar(30) NOT NULL,
  `country` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`city_id`, `city_name`, `country`) VALUES
(1, 'Colombo', 'Sri Lanka');

-- --------------------------------------------------------

--
-- Table structure for table `con_test`
--

CREATE TABLE IF NOT EXISTS `con_test` (
  `a` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `group`
--

CREATE TABLE IF NOT EXISTS `group` (
  `group_id` int(2) NOT NULL,
  `group_name` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `group`
--

INSERT INTO `group` (`group_id`, `group_name`) VALUES
(1, 'administrator');

-- --------------------------------------------------------

--
-- Table structure for table `group_permission`
--

CREATE TABLE IF NOT EXISTS `group_permission` (
  `groupgroup_id` int(2) NOT NULL,
  `permissionpermission_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `LoginData`
--

CREATE TABLE IF NOT EXISTS `LoginData` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `LoginData`
--

INSERT INTO `LoginData` (`username`, `password`) VALUES
('root', 'root');

-- --------------------------------------------------------

--
-- Table structure for table `permission`
--

CREATE TABLE IF NOT EXISTS `permission` (
  `permission_id` int(5) NOT NULL,
  `permission_name` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `permission`
--

INSERT INTO `permission` (`permission_id`, `permission_name`) VALUES
(1, 'Add');

-- --------------------------------------------------------

--
-- Table structure for table `TranslateUsers`
--

CREATE TABLE IF NOT EXISTS `TranslateUsers` (
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `dob` date NOT NULL,
  `email` varchar(60) NOT NULL,
  `country` enum('Sri Lanka','Japan','England','Korea','USA') NOT NULL,
  `city` int(2) NOT NULL,
  `phone` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `TranslateUsers`
--

INSERT INTO `TranslateUsers` (`fname`, `lname`, `dob`, `email`, `country`, `city`, `phone`, `username`, `password`) VALUES
('root', 'root', '0000-00-00', '', '', 0, 0, 'root', 'root');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(10) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) DEFAULT NULL,
  `dob` date NOT NULL,
  `email` varchar(60) NOT NULL,
  `country` varchar(50) NOT NULL,
  `city_id` int(2) NOT NULL,
  `phone` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(15) NOT NULL,
  `group_id` int(2) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `fname`, `lname`, `dob`, `email`, `country`, `city_id`, `phone`, `username`, `password`, `group_id`) VALUES
(12, 'dev', 'din', '2016-05-19', 'din@gmail.com', 'Sri Lanka', 1, 567676, 'dineesha', '1234', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_group`
--

CREATE TABLE IF NOT EXISTS `user_group` (
  `useruser_id` int(10) NOT NULL,
  `groupgroup_id` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`city_id`),
  ADD UNIQUE KEY `city_name` (`city_name`);

--
-- Indexes for table `group`
--
ALTER TABLE `group`
  ADD PRIMARY KEY (`group_id`),
  ADD UNIQUE KEY `group_name` (`group_name`);

--
-- Indexes for table `group_permission`
--
ALTER TABLE `group_permission`
  ADD PRIMARY KEY (`groupgroup_id`,`permissionpermission_id`),
  ADD KEY `permissionpermission_id` (`permissionpermission_id`);

--
-- Indexes for table `LoginData`
--
ALTER TABLE `LoginData`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `permission`
--
ALTER TABLE `permission`
  ADD PRIMARY KEY (`permission_id`),
  ADD UNIQUE KEY `permission_name` (`permission_name`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `city` (`city_id`);

--
-- Indexes for table `user_group`
--
ALTER TABLE `user_group`
  ADD PRIMARY KEY (`useruser_id`,`groupgroup_id`),
  ADD KEY `groupgroup_id` (`groupgroup_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `city_id` int(2) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `group`
--
ALTER TABLE `group`
  MODIFY `group_id` int(2) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `permission`
--
ALTER TABLE `permission`
  MODIFY `permission_id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `group_permission`
--
ALTER TABLE `group_permission`
  ADD CONSTRAINT `group_permission_ibfk_1` FOREIGN KEY (`groupgroup_id`) REFERENCES `group` (`group_id`),
  ADD CONSTRAINT `permissionpermission_id` FOREIGN KEY (`permissionpermission_id`) REFERENCES `permission` (`permission_id`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `city` FOREIGN KEY (`city_id`) REFERENCES `city` (`city_id`);

--
-- Constraints for table `user_group`
--
ALTER TABLE `user_group`
  ADD CONSTRAINT `groupgroup_id` FOREIGN KEY (`groupgroup_id`) REFERENCES `group` (`group_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `useruser_id` FOREIGN KEY (`useruser_id`) REFERENCES `user` (`user_id`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
