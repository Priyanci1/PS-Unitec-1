-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 11, 2023 at 03:36 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `portfolio_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `achievement_details`
--

CREATE TABLE `achievement_details` (
  `ach_id` int(5) NOT NULL,
  `ach_name` varchar(50) NOT NULL,
  `ach_rank` varchar(10) NOT NULL,
  `ach_year` varchar(5) NOT NULL,
  `ach_certy` varchar(50) NOT NULL,
  `reg_id` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admin_detail`
--

CREATE TABLE `admin_detail` (
  `a_id` int(5) NOT NULL,
  `a_uname` varchar(10) NOT NULL COMMENT 'Username of Admin',
  `a_passwd` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin_detail`
--

INSERT INTO `admin_detail` (`a_id`, `a_uname`, `a_passwd`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `education_detail`
--

CREATE TABLE `education_detail` (
  `edu_id` int(5) NOT NULL,
  `edu_qua` varchar(20) NOT NULL,
  `edu_year` varchar(5) NOT NULL,
  `edu_uni` varchar(50) NOT NULL,
  `edu_grade` float(4,2) NOT NULL,
  `reg_id` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `education_detail`
--

INSERT INTO `education_detail` (`edu_id`, `edu_qua`, `edu_year`, `edu_uni`, `edu_grade`, `reg_id`) VALUES
(18, 'Graduation', 'June ', 'Unitec', 8.00, 30);

-- --------------------------------------------------------

--
-- Table structure for table `personal_detail`
--

CREATE TABLE `personal_detail` (
  `pd_id` int(5) NOT NULL,
  `pd_gender` varchar(6) NOT NULL,
  `pd_hobby` varchar(50) DEFAULT NULL,
  `pd_contact` varchar(10) NOT NULL,
  `pd_dob` varchar(20) NOT NULL,
  `pd_skill` varchar(50) NOT NULL,
  `pd_add` varchar(50) NOT NULL,
  `pd_profile` varchar(50) NOT NULL,
  `pd_nation` varchar(10) NOT NULL,
  `pd_status` varchar(10) NOT NULL,
  `pd_lang` varchar(50) NOT NULL,
  `pd_pitch` varchar(1000) NOT NULL,
  `reg_id` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `personal_detail`
--

INSERT INTO `personal_detail` (`pd_id`, `pd_gender`, `pd_hobby`, `pd_contact`, `pd_dob`, `pd_skill`, `pd_add`, `pd_profile`, `pd_nation`, `pd_status`, `pd_lang`, `pd_pitch`, `reg_id`) VALUES
(9, 'Male', 'IT', '123456789', '20/02/2000', 'IT', '', '', 'IND', 'committed', 'English', '', 30);

-- --------------------------------------------------------

--
-- Table structure for table `project_detail`
--

CREATE TABLE `project_detail` (
  `p_id` int(5) NOT NULL,
  `p_title` varchar(20) NOT NULL COMMENT 'Project Title',
  `p_dur` varchar(10) NOT NULL COMMENT 'Duration',
  `p_desc` varchar(1000) NOT NULL COMMENT 'Description',
  `reg_id` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `project_detail`
--

INSERT INTO `project_detail` (`p_id`, `p_title`, `p_dur`, `p_desc`, `reg_id`) VALUES
(11, 'PHP project 1', '2 hours', 'Portfolio', 30);

-- --------------------------------------------------------

--
-- Table structure for table `reg_details`
--

CREATE TABLE `reg_details` (
  `reg_id` int(5) NOT NULL,
  `reg_name` varchar(20) NOT NULL,
  `reg_email` varchar(50) NOT NULL,
  `reg_passwd` varchar(200) NOT NULL,
  `reg_date` datetime DEFAULT current_timestamp(),
  `login_status` int(2) NOT NULL DEFAULT 0,
  `block_status` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `reg_details`
--

INSERT INTO `reg_details` (`reg_id`, `reg_name`, `reg_email`, `reg_passwd`, `reg_date`, `login_status`, `block_status`) VALUES
(30, 'priyanci', 'priyancishihora@gmail.com', 'admin1', '2023-06-11 18:58:23', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `work_experiance_detail`
--

CREATE TABLE `work_experiance_detail` (
  `we_id` int(5) NOT NULL,
  `we_title` varchar(20) NOT NULL COMMENT 'Position of User',
  `we_comp` varchar(20) NOT NULL COMMENT 'Name of Company',
  `we_dur` varchar(10) NOT NULL COMMENT 'Working Duration',
  `we_desc` varchar(1000) DEFAULT NULL COMMENT 'Company Profile',
  `we_ach` varchar(20) DEFAULT NULL COMMENT 'Achievements',
  `reg_id` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `achievement_details`
--
ALTER TABLE `achievement_details`
  ADD PRIMARY KEY (`ach_id`),
  ADD KEY `reg_id` (`reg_id`);

--
-- Indexes for table `admin_detail`
--
ALTER TABLE `admin_detail`
  ADD PRIMARY KEY (`a_id`);

--
-- Indexes for table `education_detail`
--
ALTER TABLE `education_detail`
  ADD PRIMARY KEY (`edu_id`),
  ADD KEY `reg_id` (`reg_id`);

--
-- Indexes for table `personal_detail`
--
ALTER TABLE `personal_detail`
  ADD PRIMARY KEY (`pd_id`),
  ADD KEY `reg_id` (`reg_id`);

--
-- Indexes for table `project_detail`
--
ALTER TABLE `project_detail`
  ADD PRIMARY KEY (`p_id`),
  ADD KEY `reg_id` (`reg_id`);

--
-- Indexes for table `reg_details`
--
ALTER TABLE `reg_details`
  ADD PRIMARY KEY (`reg_id`);

--
-- Indexes for table `work_experiance_detail`
--
ALTER TABLE `work_experiance_detail`
  ADD PRIMARY KEY (`we_id`),
  ADD KEY `reg_id` (`reg_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `achievement_details`
--
ALTER TABLE `achievement_details`
  MODIFY `ach_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `admin_detail`
--
ALTER TABLE `admin_detail`
  MODIFY `a_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `education_detail`
--
ALTER TABLE `education_detail`
  MODIFY `edu_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `personal_detail`
--
ALTER TABLE `personal_detail`
  MODIFY `pd_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `project_detail`
--
ALTER TABLE `project_detail`
  MODIFY `p_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `reg_details`
--
ALTER TABLE `reg_details`
  MODIFY `reg_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `work_experiance_detail`
--
ALTER TABLE `work_experiance_detail`
  MODIFY `we_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
