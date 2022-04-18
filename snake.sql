-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 18, 2022 at 11:28 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `snake`
--

-- --------------------------------------------------------

--
-- Table structure for table `color`
--

CREATE TABLE `color` (
  `iId` int(10) NOT NULL,
  `vName` varchar(255) NOT NULL,
  `dCreatedDate` datetime NOT NULL,
  `vStatus` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `firstaid`
--

CREATE TABLE `firstaid` (
  `iId` int(10) NOT NULL,
  `vName` varchar(255) NOT NULL,
  `vDescription` varchar(255) NOT NULL,
  `dCreateDate` date NOT NULL,
  `vStatus` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `headshape`
--

CREATE TABLE `headshape` (
  `iId` int(10) NOT NULL,
  `vName` varchar(255) NOT NULL,
  `dCreatedDate` datetime NOT NULL,
  `vStatus` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hospital`
--

CREATE TABLE `hospital` (
  `iId` int(10) NOT NULL,
  `vName` varchar(255) NOT NULL,
  `vAddress` varchar(255) NOT NULL,
  `vImage` varchar(255) NOT NULL,
  `vContact` varchar(255) NOT NULL,
  `vEmail` varchar(255) NOT NULL,
  `vLongitude` varchar(255) NOT NULL,
  `vLatitude` varchar(255) NOT NULL,
  `dCreatedDate` datetime NOT NULL,
  `vStatus` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pattern`
--

CREATE TABLE `pattern` (
  `iId` int(10) NOT NULL,
  `vName` varchar(255) NOT NULL,
  `dCreatedDate` datetime NOT NULL,
  `vStatus` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `iId` int(10) NOT NULL,
  `iRescuerId` int(10) NOT NULL,
  `vSnakeImage` varchar(255) NOT NULL,
  `vComments` varchar(255) NOT NULL,
  `iLikes` int(10) NOT NULL,
  `iViews` int(10) NOT NULL,
  `dCreatedDate` datetime NOT NULL,
  `vStatus` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rescuer`
--

CREATE TABLE `rescuer` (
  `iId` int(10) NOT NULL,
  `vName` varchar(255) NOT NULL,
  `vPhone` varchar(255) NOT NULL,
  `vUserName` varchar(255) NOT NULL,
  `vPassword` varchar(255) NOT NULL,
  `iRoleId` int(10) NOT NULL DEFAULT '1',
  `tAddress` text NOT NULL,
  `iAge` int(10) NOT NULL,
  `vEmail` varchar(255) NOT NULL,
  `vGender` varchar(255) NOT NULL,
  `vCertificate` varchar(255) NOT NULL,
  `vExperience` varchar(255) NOT NULL,
  `vImage` varchar(255) NOT NULL,
  `vAchievement` varchar(255) NOT NULL,
  `vVerificationstatus` varchar(255) NOT NULL DEFAULT '0',
  `dCreatedDate` datetime NOT NULL,
  `vStatus` varchar(255) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `snake`
--

CREATE TABLE `snake` (
  `iId` int(10) NOT NULL,
  `vName` varchar(255) NOT NULL,
  `vLocalName` varchar(255) NOT NULL,
  `vSize` varchar(255) NOT NULL,
  `iColor` int(10) NOT NULL,
  `iPattern` int(10) NOT NULL,
  `vImage` varchar(255) NOT NULL,
  `iType` int(10) NOT NULL,
  `iHeadShape` int(10) NOT NULL,
  `tDesc` text NOT NULL,
  `dCreatedDate` date NOT NULL,
  `vStatus` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `snaketype`
--

CREATE TABLE `snaketype` (
  `iId` int(10) NOT NULL,
  `vName` varchar(255) NOT NULL,
  `dCreatedDate` datetime NOT NULL,
  `vStatus` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `statustrans`
--

CREATE TABLE `statustrans` (
  `iId` int(10) NOT NULL,
  `vName` varchar(255) NOT NULL,
  `dCreatedDate` datetime NOT NULL,
  `vStatus` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `symptoms`
--

CREATE TABLE `symptoms` (
  `iId` int(10) NOT NULL,
  `vName` varchar(255) NOT NULL,
  `dCreatedDate` datetime NOT NULL,
  `vStatus` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transcation`
--

CREATE TABLE `transcation` (
  `iId` int(10) NOT NULL,
  `iRescuerId` int(10) NOT NULL,
  `iUserId` int(10) NOT NULL,
  `iSnakeId` int(10) NOT NULL,
  `vSnakeImage` varchar(255) NOT NULL,
  `dRescuerDate` datetime NOT NULL,
  `tRescuerAddress` text NOT NULL,
  `ilength` int(10) NOT NULL,
  `iWeight` int(10) NOT NULL,
  `vTranStatus` varchar(255) NOT NULL,
  `tComment` text NOT NULL,
  `vRate` varchar(255) NOT NULL,
  `tQuestionAnswer` text NOT NULL,
  `dCreatedDate` datetime NOT NULL,
  `vStatus` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `iId` int(10) NOT NULL,
  `vName` varchar(255) NOT NULL,
  `vPhone` varchar(255) NOT NULL,
  `vEmail` varchar(255) NOT NULL,
  `vUsername` varchar(255) NOT NULL,
  `vPassword` varchar(255) NOT NULL,
  `iRoleId` int(10) NOT NULL DEFAULT '2',
  `dCreatedDate` datetime NOT NULL,
  `vStatus` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wildlife`
--

CREATE TABLE `wildlife` (
  `iId` int(10) NOT NULL,
  `vName` varchar(255) NOT NULL,
  `vAddress` varchar(255) NOT NULL,
  `vImage` varchar(255) NOT NULL,
  `vContact` varchar(255) NOT NULL,
  `vEmail` varchar(255) NOT NULL,
  `vLongitude` varchar(255) NOT NULL,
  `vLatitude` varchar(255) NOT NULL,
  `dCreatedDate` datetime NOT NULL,
  `vStatus` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `color`
--
ALTER TABLE `color`
  ADD PRIMARY KEY (`iId`);

--
-- Indexes for table `firstaid`
--
ALTER TABLE `firstaid`
  ADD PRIMARY KEY (`iId`);

--
-- Indexes for table `headshape`
--
ALTER TABLE `headshape`
  ADD PRIMARY KEY (`iId`);

--
-- Indexes for table `hospital`
--
ALTER TABLE `hospital`
  ADD PRIMARY KEY (`iId`);

--
-- Indexes for table `pattern`
--
ALTER TABLE `pattern`
  ADD PRIMARY KEY (`iId`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`iId`);

--
-- Indexes for table `rescuer`
--
ALTER TABLE `rescuer`
  ADD PRIMARY KEY (`iId`);

--
-- Indexes for table `snake`
--
ALTER TABLE `snake`
  ADD PRIMARY KEY (`iId`);

--
-- Indexes for table `snaketype`
--
ALTER TABLE `snaketype`
  ADD PRIMARY KEY (`iId`);

--
-- Indexes for table `statustrans`
--
ALTER TABLE `statustrans`
  ADD PRIMARY KEY (`iId`);

--
-- Indexes for table `symptoms`
--
ALTER TABLE `symptoms`
  ADD PRIMARY KEY (`iId`);

--
-- Indexes for table `transcation`
--
ALTER TABLE `transcation`
  ADD PRIMARY KEY (`iId`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`iId`);

--
-- Indexes for table `wildlife`
--
ALTER TABLE `wildlife`
  ADD PRIMARY KEY (`iId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `color`
--
ALTER TABLE `color`
  MODIFY `iId` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `firstaid`
--
ALTER TABLE `firstaid`
  MODIFY `iId` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `headshape`
--
ALTER TABLE `headshape`
  MODIFY `iId` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hospital`
--
ALTER TABLE `hospital`
  MODIFY `iId` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pattern`
--
ALTER TABLE `pattern`
  MODIFY `iId` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `iId` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rescuer`
--
ALTER TABLE `rescuer`
  MODIFY `iId` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `snake`
--
ALTER TABLE `snake`
  MODIFY `iId` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `snaketype`
--
ALTER TABLE `snaketype`
  MODIFY `iId` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `statustrans`
--
ALTER TABLE `statustrans`
  MODIFY `iId` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `symptoms`
--
ALTER TABLE `symptoms`
  MODIFY `iId` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transcation`
--
ALTER TABLE `transcation`
  MODIFY `iId` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `iId` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wildlife`
--
ALTER TABLE `wildlife`
  MODIFY `iId` int(10) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
