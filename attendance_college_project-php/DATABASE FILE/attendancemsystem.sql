-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 05, 2023 at 02:42 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `attendancemsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `Id` int(10) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `emailAddress` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`Id`, `firstName`, `lastName`, `emailAddress`, `password`) VALUES
(1, 'Parag', 'Chatterjee', 'ChatterjeeParag342@gmail.com', 'D00F5D5217896FB7FD601412CB890830');

-- --------------------------------------------------------

--
-- Table structure for table `tblattendance`
--

CREATE TABLE `tblattendance` (
  `Id` int(10) NOT NULL,
  `admissionNo` varchar(255) NOT NULL,
  `classId` varchar(10) NOT NULL,
  `classArmId` varchar(10) NOT NULL,
  `sessionTermId` varchar(10) NOT NULL,
  `status` varchar(10) NOT NULL,
  `dateTimeTaken` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblattendance`
--

INSERT INTO `tblattendance` (`Id`, `admissionNo`, `classId`, `classArmId`, `sessionTermId`, `status`, `dateTimeTaken`) VALUES
(232, '15600119036', '5', '9', '4', '0', '2022-11-29'),
(231, '15600119022', '5', '9', '4', '1', '2022-11-29'),
(230, '15600119017', '5', '9', '4', '1', '2022-11-29'),
(229, '15600119021', '5', '7', '4', '0', '2022-11-29'),
(228, '15600119025', '5', '7', '4', '1', '2022-11-29'),
(227, '15600119059', '5', '7', '4', '1', '2022-11-29'),
(226, '15600119021', '5', '7', '4', '1', '2022-11-28'),
(225, '15600119025', '5', '7', '4', '1', '2022-11-28'),
(224, '15600119059', '5', '7', '4', '1', '2022-11-28'),
(223, '15600119036', '5', '9', '4', '0', '2022-11-28'),
(222, '15600119022', '5', '9', '4', '1', '2022-11-28'),
(221, '15600119017', '5', '9', '4', '1', '2022-11-28'),
(196, '15600119020', '5', '8', '1', '0', '2022-11-22'),
(197, '15600119030', '5', '8', '1', '1', '2022-11-22'),
(198, '15600119017', '5', '9', '1', '1', '2022-11-23'),
(199, '15600119022', '5', '9', '1', '1', '2022-11-23'),
(200, '15600119036', '5', '9', '1', '1', '2022-11-23'),
(202, '15600119022', '5', '9', '4', '1', '2022-11-27'),
(203, '15600119036', '5', '9', '4', '1', '2022-11-27'),
(204, '15600119026', '5', '10', '4', '1', '2022-11-27'),
(205, '156001190211', '5', '10', '4', '0', '2022-11-27'),
(206, '15600119024', '5', '10', '4', '1', '2022-11-27'),
(220, '15600119021', '5', '7', '4', '1', '2022-11-27'),
(219, '15600119025', '5', '7', '4', '1', '2022-11-27'),
(218, '15600119059', '5', '7', '4', '1', '2022-11-27'),
(210, '15600119020', '5', '8', '4', '0', '2022-11-27'),
(211, '15600119030', '5', '8', '4', '1', '2022-11-27');

-- --------------------------------------------------------

--
-- Table structure for table `tblclass`
--

CREATE TABLE `tblclass` (
  `Id` int(10) NOT NULL,
  `className` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblclass`
--

INSERT INTO `tblclass` (`Id`, `className`) VALUES
(5, 'CSE'),
(6, 'CIVIL'),
(7, 'EEE');

-- --------------------------------------------------------

--
-- Table structure for table `tblclassarms`
--

CREATE TABLE `tblclassarms` (
  `Id` int(10) NOT NULL,
  `classId` varchar(10) NOT NULL,
  `classArmName` varchar(255) NOT NULL,
  `isAssigned` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblclassarms`
--

INSERT INTO `tblclassarms` (`Id`, `classId`, `classArmName`, `isAssigned`) VALUES
(7, '5', 'Operation Research', '1'),
(8, '5', 'Software Engg', '1'),
(9, '5', 'DBMS', '1'),
(10, '5', 'DBMS-1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tblclassteacher`
--

CREATE TABLE `tblclassteacher` (
  `Id` int(10) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `emailAddress` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phoneNo` varchar(50) NOT NULL,
  `classId` varchar(10) NOT NULL,
  `classArmId` varchar(10) NOT NULL,
  `dateCreated` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblclassteacher`
--

INSERT INTO `tblclassteacher` (`Id`, `firstName`, `lastName`, `emailAddress`, `password`, `phoneNo`, `classId`, `classArmId`, `dateCreated`) VALUES
(7, 'Parag', 'Chatterjee', 'chatterjeecse879@gmail.com', '32250170a0dca92d53ec9624f336ca24', '9087645212', '5', '7', '2022-11-22'),
(8, 'Parag', 'Chatterjee', 'chatterjeecseSengg879@gmail.com', '32250170a0dca92d53ec9624f336ca24', '9087645212', '5', '8', '2022-11-22'),
(9, 'Ayan ', 'Mondal', 'csedbmsayan34@gmail.com', '32250170a0dca92d53ec9624f336ca24', '7865392313', '5', '9', '2022-11-23'),
(10, 'Basanti', 'Bhattacharya', 'csebasantidbms232@gmail.com', '32250170a0dca92d53ec9624f336ca24', '8976523987', '5', '10', '2022-11-23');

-- --------------------------------------------------------

--
-- Table structure for table `tblsessionterm`
--

CREATE TABLE `tblsessionterm` (
  `Id` int(10) NOT NULL,
  `sessionName` varchar(50) NOT NULL,
  `termId` varchar(50) NOT NULL,
  `isActive` varchar(10) NOT NULL,
  `dateCreated` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsessionterm`
--

INSERT INTO `tblsessionterm` (`Id`, `sessionName`, `termId`, `isActive`, `dateCreated`) VALUES
(4, '2022/2023', '1', '1', '2022-11-23');

-- --------------------------------------------------------

--
-- Table structure for table `tblstudents`
--

CREATE TABLE `tblstudents` (
  `Id` int(10) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `otherName` varchar(255) NOT NULL,
  `admissionNumber` varchar(255) NOT NULL,
  `password` varchar(50) NOT NULL,
  `classId` varchar(10) NOT NULL,
  `classArmId` varchar(10) NOT NULL,
  `dateCreated` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblstudents`
--

INSERT INTO `tblstudents` (`Id`, `firstName`, `lastName`, `otherName`, `admissionNumber`, `password`, `classId`, `classArmId`, `dateCreated`) VALUES
(26, 'Subhadip', 'Khan', '', '15600119026', '12345', '5', '10', '2022-11-23'),
(27, 'Swapan', 'Garu', '', '156001190211', '12345', '5', '10', '2022-11-23'),
(28, 'Vivian', 'Fernandes', '', '15600119059', '12345', '5', '7', '2022-11-23'),
(25, 'Kaam', 'Bhari', '', '15600119017', '12345', '5', '9', '2022-11-23'),
(23, 'Partho ', 'Mondal', '', '15600119022', '12345', '5', '9', '2022-11-23'),
(24, 'Aditya', 'Banarjee', '', '15600119024', '12345', '5', '10', '2022-11-23'),
(22, 'Pratim', 'Barik', '', '15600119036', '12345', '5', '9', '2022-11-23'),
(18, 'Shuvankar', 'Das Ghosh', '', '15600119025', '12345', '5', '7', '2022-11-22'),
(19, 'Deepayan ', 'Roy', '', '15600119021', '12345', '5', '7', '2022-11-22'),
(20, 'Samir', 'Gupta', '', '15600119020', '12345', '5', '8', '2022-11-22'),
(21, 'Subhankar', 'Mahato', '', '15600119030', '12345', '5', '8', '2022-11-22');

-- --------------------------------------------------------

--
-- Table structure for table `tblterm`
--

CREATE TABLE `tblterm` (
  `Id` int(10) NOT NULL,
  `termName` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblterm`
--

INSERT INTO `tblterm` (`Id`, `termName`) VALUES
(1, 'First'),
(2, 'Second'),
(3, 'Third');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tblattendance`
--
ALTER TABLE `tblattendance`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tblclass`
--
ALTER TABLE `tblclass`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tblclassarms`
--
ALTER TABLE `tblclassarms`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tblclassteacher`
--
ALTER TABLE `tblclassteacher`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tblsessionterm`
--
ALTER TABLE `tblsessionterm`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tblstudents`
--
ALTER TABLE `tblstudents`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tblterm`
--
ALTER TABLE `tblterm`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblattendance`
--
ALTER TABLE `tblattendance`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=233;

--
-- AUTO_INCREMENT for table `tblclass`
--
ALTER TABLE `tblclass`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblclassarms`
--
ALTER TABLE `tblclassarms`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblclassteacher`
--
ALTER TABLE `tblclassteacher`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblsessionterm`
--
ALTER TABLE `tblsessionterm`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblstudents`
--
ALTER TABLE `tblstudents`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tblterm`
--
ALTER TABLE `tblterm`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
