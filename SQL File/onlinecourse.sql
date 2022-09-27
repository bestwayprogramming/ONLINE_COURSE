-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Sep 27, 2022 at 07:41 PM
-- Server version: 5.7.34
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlinecourse`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', '2022-01-31 16:21:18', '2022-01-31 16:21:18');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id` int(11) NOT NULL,
  `courseCode` varchar(255) DEFAULT NULL,
  `courseName` varchar(255) DEFAULT NULL,
  `courseUnit` varchar(255) DEFAULT NULL,
  `noofSeats` int(11) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `courseCode`, `courseName`, `courseUnit`, `noofSeats`, `creationDate`, `updationDate`) VALUES
(1, 'PHP01', 'PHP', '10', 10, '2022-02-10 17:23:28', '27-09-2022 07:56:12 PM'),
(2, 'C001', 'C++', '12', 25, '2022-02-11 00:52:46', '11-02-2022 06:23:06 AM'),
(3, 'WD01', 'WEB DEVELOPMENT', '5', 12, '2022-09-20 17:13:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `courseenrolls`
--

CREATE TABLE `courseenrolls` (
  `id` int(11) NOT NULL,
  `studentRegno` varchar(255) DEFAULT NULL,
  `pincode` varchar(255) DEFAULT NULL,
  `session` int(11) DEFAULT NULL,
  `department` int(11) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `semester` int(11) DEFAULT NULL,
  `course` int(11) DEFAULT NULL,
  `enrollDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courseenrolls`
--

INSERT INTO `courseenrolls` (`id`, `studentRegno`, `pincode`, `session`, `department`, `level`, `semester`, `course`, `enrollDate`) VALUES
(1, '10806121', '822894', 1, 1, 2, 3, 1, '2022-02-11 00:59:33'),
(2, '10806121', '822894', 1, 1, 1, 2, 2, '2022-02-11 01:01:07'),
(3, '10806121', '822894', 1, 4, 2, 6, 3, '2022-09-20 17:24:15'),
(4, '2020028818', '236502', 1, 4, 2, 6, 2, '2022-09-27 11:20:40');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` int(11) NOT NULL,
  `department` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `department`, `creationDate`) VALUES
(1, 'IT', '2022-02-10 17:23:04'),
(2, 'HR', '2022-02-10 17:23:09'),
(4, 'CR', '2022-09-20 17:12:32'),
(5, 'bca', '2022-09-21 09:30:43');

-- --------------------------------------------------------

--
-- Table structure for table `level`
--

CREATE TABLE `level` (
  `id` int(11) NOT NULL,
  `level` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `level`
--

INSERT INTO `level` (`id`, `level`, `creationDate`) VALUES
(1, '1', '2022-02-11 00:59:02'),
(2, '2', '2022-02-11 00:59:02'),
(3, '3', '2022-02-11 00:59:09');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `newstitle` varchar(255) DEFAULT NULL,
  `newsDescription` mediumtext,
  `postingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `newstitle`, `newsDescription`, `postingDate`) VALUES
(4, 'Practicle exam', 'Coming soon', '2022-09-20 16:43:34'),
(5, 'Sem5 ', 'quiz going on', '2022-09-20 16:43:56');

-- --------------------------------------------------------

--
-- Table structure for table `semester`
--

CREATE TABLE `semester` (
  `id` int(11) NOT NULL,
  `semester` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `semester`
--

INSERT INTO `semester` (`id`, `semester`, `creationDate`, `updationDate`) VALUES
(1, '1', '2022-02-10 17:22:49', NULL),
(2, '2', '2022-02-10 17:22:55', NULL),
(3, '3', '2022-02-11 00:51:43', NULL),
(5, '4', '2022-09-20 17:12:06', NULL),
(7, '5', '2022-09-21 09:29:57', NULL),
(13, '6', '2022-09-27 14:13:22', NULL),
(14, '7', '2022-09-27 14:20:10', NULL),
(15, '8', '2022-09-27 14:32:18', '27-09-2022 08:02:25 PM');

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

CREATE TABLE `session` (
  `id` int(11) NOT NULL,
  `session` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `session`
--

INSERT INTO `session` (`id`, `session`, `creationDate`) VALUES
(1, '2022', '2022-02-10 17:10:59');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `StudentRegno` varchar(255) NOT NULL,
  `studentPhoto` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `studentName` varchar(255) DEFAULT NULL,
  `pincode` varchar(255) DEFAULT NULL,
  `session` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `semester` varchar(255) DEFAULT NULL,
  `cgpa` decimal(10,2) DEFAULT NULL,
  `creationdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`StudentRegno`, `studentPhoto`, `password`, `studentName`, `pincode`, `session`, `department`, `semester`, `cgpa`, `creationdate`, `updationDate`) VALUES
('10806121', '', 'f925916e2754e5e03f75dd58a5733251', 'Kelin Patel', '822894', NULL, NULL, NULL, '7.10', '2022-02-11 00:53:31', NULL),
('2020028818', NULL, '03c129b0a47c6a3577f21ff3e2d90e9a', 'Vivek', '236502', NULL, NULL, NULL, NULL, '2022-09-20 17:13:50', NULL),
('234567890', NULL, 'f925916e2754e5e03f75dd58a5733251', 'Dhruv Patel', '268769', NULL, NULL, NULL, NULL, '2022-09-21 04:11:36', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `studentRegno` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `studentRegno`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, '10806121', 0x3a3a3100000000000000000000000000, '2022-02-11 00:55:07', NULL, 1),
(2, '10806121', 0x3a3a3100000000000000000000000000, '2022-02-11 00:57:00', NULL, 1),
(3, '10806121', 0x3a3a3100000000000000000000000000, '2022-02-11 00:57:22', '11-02-2022 06:31:26 AM', 1),
(4, '10806121', 0x3a3a3100000000000000000000000000, '2022-09-20 16:20:02', NULL, 1),
(5, '10806121', 0x3a3a3100000000000000000000000000, '2022-09-20 16:20:27', NULL, 1),
(6, '10806121', 0x3a3a3100000000000000000000000000, '2022-09-20 16:23:40', NULL, 1),
(7, '2020028818', 0x3a3a3100000000000000000000000000, '2022-09-20 17:14:17', '20-09-2022 10:46:26 PM', 1),
(8, '10806121', 0x3a3a3100000000000000000000000000, '2022-09-20 17:21:06', NULL, 1),
(9, '10806121', 0x3a3a3100000000000000000000000000, '2022-09-20 17:21:34', NULL, 1),
(10, '10806121', 0x3a3a3100000000000000000000000000, '2022-09-20 17:23:24', '20-09-2022 11:29:51 PM', 1),
(11, '10806121', 0x3a3a3100000000000000000000000000, '2022-09-21 04:10:20', '21-09-2022 09:40:52 AM', 1),
(12, '10806121', 0x3a3a3100000000000000000000000000, '2022-09-21 04:25:04', NULL, 1),
(13, 'admin', 0x3a3a3100000000000000000000000000, '2022-09-27 05:02:26', NULL, 1),
(14, 'admin', 0x3a3a3100000000000000000000000000, '2022-09-27 05:03:17', NULL, 1),
(15, 'admin', 0x3a3a3100000000000000000000000000, '2022-09-27 05:03:52', NULL, 1),
(16, 'admin', 0x3a3a3100000000000000000000000000, '2022-09-27 05:34:13', NULL, 1),
(17, 'admin', 0x3a3a3100000000000000000000000000, '2022-09-27 05:34:32', NULL, 1),
(18, 'admin', 0x3a3a3100000000000000000000000000, '2022-09-27 08:59:39', NULL, 1),
(19, '10806121', 0x3a3a3100000000000000000000000000, '2022-09-27 10:18:04', NULL, 1),
(20, 'admin', 0x3a3a3100000000000000000000000000, '2022-09-27 10:50:16', NULL, 1),
(21, 'admin', 0x3a3a3100000000000000000000000000, '2022-09-27 10:51:11', NULL, 1),
(22, 'admin', 0x3a3a3100000000000000000000000000, '2022-09-27 13:40:33', NULL, 1),
(23, 'admin', 0x3a3a3100000000000000000000000000, '2022-09-27 13:40:46', NULL, 1),
(24, 'admin', 0x3a3a3100000000000000000000000000, '2022-09-27 13:41:18', NULL, 1),
(25, 'admin', 0x3a3a3100000000000000000000000000, '2022-09-27 14:29:04', NULL, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courseenrolls`
--
ALTER TABLE `courseenrolls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `level`
--
ALTER TABLE `level`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `semester`
--
ALTER TABLE `semester`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`StudentRegno`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `courseenrolls`
--
ALTER TABLE `courseenrolls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `level`
--
ALTER TABLE `level`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `semester`
--
ALTER TABLE `semester`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `session`
--
ALTER TABLE `session`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
