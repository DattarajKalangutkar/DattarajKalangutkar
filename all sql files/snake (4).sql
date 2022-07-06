-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 04, 2022 at 07:30 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `iId` int(10) NOT NULL,
  `iTranscationId` int(10) NOT NULL,
  `iQuestionId` int(10) NOT NULL,
  `vAnswer` varchar(255) NOT NULL,
  `dCreatedDate` datetime NOT NULL,
  `vStatus` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

--
-- Dumping data for table `color`
--

INSERT INTO `color` (`iId`, `vName`, `dCreatedDate`, `vStatus`) VALUES
(1, 'tyere', '2022-06-24 18:41:50', '1'),
(2, 'blue', '0000-00-00 00:00:00', '1'),
(3, 'brown', '2022-07-04 15:33:52', '1');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `iId` int(10) NOT NULL,
  `vName` varchar(225) NOT NULL,
  `vDescription` varchar(225) NOT NULL,
  `vImage` varchar(255) NOT NULL,
  `dCreatedDate` datetime NOT NULL,
  `vStatus` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`iId`, `vName`, `vDescription`, `vImage`, `dCreatedDate`, `vStatus`) VALUES
(1, 'df', 'sdfs', 'uploads/events/events_Compress_20220120_110748_8407.jpg', '0000-00-00 00:00:00', '1');

-- --------------------------------------------------------

--
-- Table structure for table `eyeshape`
--

CREATE TABLE `eyeshape` (
  `iId` int(10) NOT NULL,
  `vName` varchar(255) NOT NULL,
  `dCreatedDate` datetime NOT NULL,
  `vStatus` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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

--
-- Dumping data for table `headshape`
--

INSERT INTO `headshape` (`iId`, `vName`, `dCreatedDate`, `vStatus`) VALUES
(1, 'triangular', '2022-06-05 14:17:43', '1');

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

--
-- Dumping data for table `hospital`
--

INSERT INTO `hospital` (`iId`, `vName`, `vAddress`, `vImage`, `vContact`, `vEmail`, `vLongitude`, `vLatitude`, `dCreatedDate`, `vStatus`) VALUES
(1, 'Hospicio District Hospital', ' Fr Agnel Institute Of Commerce, Road, Monte Hill, Margao, Goa', 'uploads/hospital/hospital_hospicio.jpg', '0832-2705754', 'hospicio@gmail.com', '15.292419773253032', '73.96494222470896', '2022-05-29 13:19:02', '1'),
(2, 'Goa Medical College and Hospital, Bambolim', 'Bambolim, Goa', 'uploads/hospital/hospital_bambolim.jpg', '8007733696', 'bambolim@gmail.com', '15.57577636377406', ' 73.84833952886996', '2022-05-29 13:35:06', '1'),
(3, 'Govenment Hospital I D', 'Tisca,Goa', 'uploads/hospital/hospital_id.jpg', '7020350423', 'id@gmail.com', '15.34658471249514', '73.99106264647023', '2022-05-29 13:42:10', '1'),
(4, 'fhgh', 'ghgj', 'uploads/hospital/hospital_1654323971440-min.jpg', '1234567893', 'gh@gmail.com', '34.343223', '2226.25265', '2022-07-04 16:01:20', '1');

-- --------------------------------------------------------

--
-- Table structure for table `otp`
--

CREATE TABLE `otp` (
  `iId` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `otp` varchar(255) NOT NULL,
  `verified` varchar(255) NOT NULL,
  `dCreatedDate` datetime NOT NULL,
  `vStatus` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `otp`
--

INSERT INTO `otp` (`iId`, `email`, `otp`, `verified`, `dCreatedDate`, `vStatus`) VALUES
(1, '18co08@aitdgoa.edu.in', '8119', '1', '0000-00-00 00:00:00', '1'),
(2, 'bondla@gmail.com', '5700', '1', '0000-00-00 00:00:00', '1');

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

--
-- Dumping data for table `pattern`
--

INSERT INTO `pattern` (`iId`, `vName`, `dCreatedDate`, `vStatus`) VALUES
(1, 'zigzag', '2022-06-05 14:16:42', '1');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `iId` int(10) NOT NULL,
  `iRescuerId` int(10) NOT NULL,
  `vPostImage` varchar(255) NOT NULL,
  `vComments` varchar(255) NOT NULL DEFAULT '',
  `iLikes` int(10) NOT NULL DEFAULT 0,
  `iViews` int(10) NOT NULL DEFAULT 0,
  `dCreatedDate` datetime NOT NULL,
  `vStatus` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`iId`, `iRescuerId`, `vPostImage`, `vComments`, `iLikes`, `iViews`, `dCreatedDate`, `vStatus`) VALUES
(7, 8, 'http://localhost/snake/api/uploads/post/post_bondla.jpg', '', 0, 0, '2022-06-21 23:16:50', '1'),
(8, 8, 'http://localhost/snake/api/uploads/post/post_Compress_20220120_110748_8407.jpg', '', 0, 0, '2022-06-24 11:09:29', '1'),
(9, 8, 'http://localhost/snake/api/uploads/post/post_hospicio.jpg', '', 0, 0, '2022-06-24 17:52:38', '1'),
(10, 8, 'http://localhost/snake/api/uploads/post/post_bondla.jpg', '', 1, 0, '2022-06-30 21:49:22', '1'),
(11, 8, 'http://localhost/snake/api/uploads/post/post_hospicio.jpg', '', 1, 0, '2022-07-02 14:32:15', '1'),
(12, 8, 'http://localhost/snake/api/uploads/post/post_id.jpg', '', 1, 0, '2022-07-02 14:45:20', '1'),
(13, 8, 'http://localhost/snake/api/uploads/post/post_id.jpg', '', 1, 0, '2022-07-04 12:51:28', '1');

-- --------------------------------------------------------

--
-- Table structure for table `post_liked`
--

CREATE TABLE `post_liked` (
  `iId` int(10) NOT NULL,
  `iPostId` int(10) NOT NULL,
  `iUserId` int(10) NOT NULL DEFAULT 0,
  `iRescuerId` int(10) NOT NULL DEFAULT 0,
  `dCreatedDate` datetime NOT NULL,
  `vStatus` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `post_liked`
--

INSERT INTO `post_liked` (`iId`, `iPostId`, `iUserId`, `iRescuerId`, `dCreatedDate`, `vStatus`) VALUES
(1, 13, 0, 1, '2022-07-04 18:58:55', '1'),
(2, 12, 0, 1, '2022-07-04 19:12:46', '1'),
(3, 11, 0, 1, '2022-07-04 19:12:52', '1'),
(4, 10, 0, 1, '2022-07-04 19:12:53', '1');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `iId` int(10) NOT NULL,
  `vName` varchar(255) NOT NULL,
  `vOptions` varchar(255) NOT NULL,
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
  `iRoleId` int(10) NOT NULL DEFAULT 1,
  `tAddress` text NOT NULL,
  `iAge` int(10) NOT NULL,
  `vEmail` varchar(255) NOT NULL,
  `vGender` varchar(255) NOT NULL,
  `vCertificate` varchar(255) NOT NULL,
  `vExperience` varchar(255) NOT NULL,
  `vImage` varchar(255) NOT NULL,
  `vAchievement` varchar(255) NOT NULL,
  `vVerificationstatus` varchar(255) NOT NULL DEFAULT '0',
  `vLat` varchar(255) NOT NULL DEFAULT '0',
  `vLong` varchar(255) NOT NULL DEFAULT '0',
  `iPoints` int(10) NOT NULL,
  `dCreatedDate` datetime NOT NULL,
  `vStatus` varchar(255) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rescuer`
--

INSERT INTO `rescuer` (`iId`, `vName`, `vPhone`, `vUserName`, `vPassword`, `iRoleId`, `tAddress`, `iAge`, `vEmail`, `vGender`, `vCertificate`, `vExperience`, `vImage`, `vAchievement`, `vVerificationstatus`, `vLat`, `vLong`, `iPoints`, `dCreatedDate`, `vStatus`) VALUES
(1, 'laximi', '7020350423', 'laximi', 'cef8605189c6f354b710d90610fcff74', 1, '', 0, '18co08@aitdgoa.edu.in', '', '', '', 'http://localhost/snake/api/uploads/rescuer/rescuer_bambolim.jpg', '0', '1', '18.5076', '73.7896', 8, '2022-07-04 17:13:28', '1');

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

--
-- Dumping data for table `snake`
--

INSERT INTO `snake` (`iId`, `vName`, `vLocalName`, `vSize`, `iColor`, `iPattern`, `vImage`, `iType`, `iHeadShape`, `tDesc`, `dCreatedDate`, `vStatus`) VALUES
(1, 'cobra', 'naag', '100', 1, 1, 'uploads/snake/snake_bambolim.jpg', 1, 1, 'abc', '2022-06-05', '1'),
(2, 'nagoba', 'nagoba', '200', 1, 1, 'uploads/snake/snake_bondla.jpg', 1, 1, 'xyz', '2022-06-05', '1'),
(4, 'Rat Snake', 'divad', '1', 2, 1, 'uploads/snake/snake_divad.jpg', 2, 1, 'Rat snakes are medium-to-large, nonvenomous snakes that kill by constriction', '2022-06-10', '1'),
(5, 'Common cat snake', 'Boiga gamma snake', '1.4', 1, 1, 'uploads/snake/snake_cat snake.jpg', 3, 1, '', '2022-06-10', '1');

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

--
-- Dumping data for table `snaketype`
--

INSERT INTO `snaketype` (`iId`, `vName`, `dCreatedDate`, `vStatus`) VALUES
(1, 'Venomous', '2022-06-05 14:45:42', '1'),
(2, 'Non Venomous', '2022-06-07 18:08:55', '1'),
(3, 'Mildly Venomous', '2022-06-07 18:06:31', '1');

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

--
-- Dumping data for table `statustrans`
--

INSERT INTO `statustrans` (`iId`, `vName`, `dCreatedDate`, `vStatus`) VALUES
(1, 'Created', '2022-06-05 13:10:01', '1'),
(2, 'Updated', '2022-06-05 13:10:22', '1'),
(3, 'Completed', '2022-06-05 13:12:06', '1');

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

--
-- Dumping data for table `symptoms`
--

INSERT INTO `symptoms` (`iId`, `vName`, `dCreatedDate`, `vStatus`) VALUES
(1, 'vomiting', '2022-06-05 14:30:42', '1');

-- --------------------------------------------------------

--
-- Table structure for table `transcation`
--

CREATE TABLE `transcation` (
  `iId` int(10) NOT NULL,
  `iRescuerId` int(10) NOT NULL,
  `iUserId` int(10) NOT NULL,
  `iSnakeId` int(10) NOT NULL,
  `vImage` varchar(255) NOT NULL,
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

--
-- Dumping data for table `transcation`
--

INSERT INTO `transcation` (`iId`, `iRescuerId`, `iUserId`, `iSnakeId`, `vImage`, `dRescuerDate`, `tRescuerAddress`, `ilength`, `iWeight`, `vTranStatus`, `tComment`, `vRate`, `tQuestionAnswer`, `dCreatedDate`, `vStatus`) VALUES
(9, 1, 1, 4, 'http://localhost/snake/api/uploads/transaction/transaction_id.jpg', '2022-07-21 17:39:00', 'Fr Agnel Institute Of Commerce, Road, Monte Hill, Margao, Goa', 23, 45, '3', 'hii', '4', '', '2022-07-04 17:20:53', '1');

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
  `iRoleId` int(10) NOT NULL DEFAULT 2,
  `vImage` varchar(255) NOT NULL,
  `dCreatedDate` datetime NOT NULL,
  `vStatus` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`iId`, `vName`, `vPhone`, `vEmail`, `vUsername`, `vPassword`, `iRoleId`, `vImage`, `dCreatedDate`, `vStatus`) VALUES
(1, 'dattu', '8408004353', 'bondla@gmail.com', 'dattu', '5fc333649ee942128be43559989ef80d', 2, 'http://localhost/snake/api/uploads/user/user_hospicio.jpg', '2022-07-04 17:19:29', '1');

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
-- Dumping data for table `wildlife`
--

INSERT INTO `wildlife` (`iId`, `vName`, `vAddress`, `vImage`, `vContact`, `vEmail`, `vLongitude`, `vLatitude`, `dCreatedDate`, `vStatus`) VALUES
(1, 'Bondla Wildlife Sanctuary', 'sdsd', 'http://localhost/snake/api/http://localhost/snake/api/http://localhost/snake/api/http://localhost/snake/api/http://localhost/snake/api/http://localhost/snake/api/http://localhost/snake/api/http://localhost/snake/api/http://localhost/snake/api/http://local', '9123', 'ga@gmail.com', '15.440160', '74.106537', '0000-00-00 00:00:00', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`iId`);

--
-- Indexes for table `color`
--
ALTER TABLE `color`
  ADD PRIMARY KEY (`iId`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`iId`);

--
-- Indexes for table `eyeshape`
--
ALTER TABLE `eyeshape`
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
-- Indexes for table `otp`
--
ALTER TABLE `otp`
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
-- Indexes for table `post_liked`
--
ALTER TABLE `post_liked`
  ADD PRIMARY KEY (`iId`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
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
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `iId` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `color`
--
ALTER TABLE `color`
  MODIFY `iId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `iId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `eyeshape`
--
ALTER TABLE `eyeshape`
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
  MODIFY `iId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hospital`
--
ALTER TABLE `hospital`
  MODIFY `iId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `otp`
--
ALTER TABLE `otp`
  MODIFY `iId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pattern`
--
ALTER TABLE `pattern`
  MODIFY `iId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `iId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `post_liked`
--
ALTER TABLE `post_liked`
  MODIFY `iId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `iId` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rescuer`
--
ALTER TABLE `rescuer`
  MODIFY `iId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `snake`
--
ALTER TABLE `snake`
  MODIFY `iId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `snaketype`
--
ALTER TABLE `snaketype`
  MODIFY `iId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `statustrans`
--
ALTER TABLE `statustrans`
  MODIFY `iId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `symptoms`
--
ALTER TABLE `symptoms`
  MODIFY `iId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `transcation`
--
ALTER TABLE `transcation`
  MODIFY `iId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `iId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wildlife`
--
ALTER TABLE `wildlife`
  MODIFY `iId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
