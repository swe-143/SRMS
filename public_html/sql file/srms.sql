error_reporting(0);

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";



-- Database: `sms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', 'Test@123', '2021-11-04 11:18:49');

-- --------------------------------------------------------

--
-- Table structure for table `tblclasses`
--

CREATE TABLE IF NOT EXISTS `tblclasses` (
  `id` int(11) NOT NULL,
  `ClassName` varchar(80) DEFAULT NULL,
  `ClassNameNumeric` int(4) NOT NULL,
  `Section` varchar(5) NOT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblclasses`
--

INSERT INTO `tblclasses` (`id`, `ClassName`, `ClassNameNumeric`, `Section`, `CreationDate`, `UpdationDate`) VALUES
(1, 'IT', 3, '-', '2021-11-06 22:22:33', '2021-11-07 12:01:13'),
(2, 'IT', 2, 'A', '2021-11-06 22:51:20', '2021-11-07 12:01:24'),
(3, 'IT', 2, 'B', '2021-11-07 22:46:21', '0000-00-00 00:00:00'),

-- --------------------------------------------------------
--f925916e2754e5e03f75dd58a5733251
--
-- Table structure for table `tblresult`
--

CREATE TABLE IF NOT EXISTS `tblresult` (
  `id` int(11) NOT NULL,
  `StudentId` int(11) DEFAULT NULL,
  `ClassId` int(11) DEFAULT NULL,
  `SubjectId` int(11) DEFAULT NULL,
  `marks` int(11) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblresult`
--

INSERT INTO `tblresult` (`id`, `StudentId`, `ClassId`, `SubjectId`, `marks`, `PostingDate`, `UpdationDate`) VALUES
(2, 1, 1, 2, 100, '2021-08-24 23:24:09', '2021-11-07 12:28:09'),
(3, 1, 1, 1, 82, '2021-08-24 23:24:09', '2021-11-09 17:14:39'),
(4, 1, 1, 5, 97, '2021-08-24 23:24:09', '2021-11-09 17:14:22'),
(5, 1, 1, 4, 90, '2021-08-24 23:24:09', '2021-11-09 17:14:32'),
(6, 2, 1, 2, 90, '2021-08-29 00:08:18', '2021-11-07 12:30:05'),
(7, 2, 1, 1, 75, '2021-08-29 00:08:18', '2021-11-07 12:29:56'),
(8, 2, 1, 5, 56, '2021-08-29 00:08:18', '2021-11-07 12:29:47'),
(9, 2, 1, 4, 80, '2021-08-29 00:08:18', '2021-11-07 12:29:38'),
(10, 3, 1, 2, 90, '2021-08-29 00:26:21', '2021-11-07 12:47:46'),
(11, 3, 1, 1, 93, '2021-08-29 00:26:21', '2021-11-07 12:47:52'),
(12, 3, 1, 5, 95, '2021-08-29 00:26:21', '2021-11-07 12:47:56'),
(13, 3, 1, 4, 90, '2021-08-29 00:26:21', '2021-11-07 12:48:01'),
(14, 1, 1, , 80, '2021-08-24 23:24:09', '2021-11-12 23:15:32'),
(15, 2, 1, 3, 80, '2021-08-29 00:08:18', '2021-11-12 23:16:07'),
(16, 3, 1, 3, 95, '2021-08-29 00:26:21', '2021-11-12 23:16:13'),
(17, 4, 1, 2, 92, '2021-08-24 23:24:09', '2021-11-12 23:16:32'),
(18, 4, 1, 1, 85, '2021-08-24 23:24:09', '2021-11-12 23:16:39'),
(19, 4, 1, 5, 90, '2021-08-24 23:24:09', '2021-11-12 23:17:15'),
(20, 4, 1, 4, 86, '2021-08-24 23:24:09', '2021-11-09 17:14:32'),
(21, 4, 1, 3, 93, '2021-08-24 23:24:09', '2021-11-07 12:30:12');

-- --------------------------------------------------------

--
-- Table structure for table `tblstudents`
--

CREATE TABLE IF NOT EXISTS `tblstudents` (
  `StudentId` int(11) NOT NULL,
  `StudentName` varchar(100) NOT NULL,
  `RollId` varchar(100) NOT NULL,
  `StudentEmail` varchar(100) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `DOB` varchar(100) NOT NULL,
  `ClassId` int(11) NOT NULL,
  `RegDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `Status` int(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblstudents`
--

INSERT INTO `tblstudents` (`StudentId`, `StudentName`, `RollId`, `StudentEmail`, `Gender`, `DOB`, `ClassId`, `RegDate`, `UpdationDate`, `Status`) VALUES
(1, 'Swetha', 'IT22', 'Swetha@gmail.com', 'Female', '2002-03-14', 1, '2021-11-12 16:00:57', '2021-11-07 12:27:15', 1),
(2, 'Felcia', 'IT21', 'Felcia@gmail.com', 'Female', '2001-09-20', 1, '2021-11-12 00:49:39', '2021-11-12 12:27:04', 1),
(3, 'Rishi', 'IT20', 'rishi@gmail.com', 'Male', '2002-03-19', 1, '2021-11-07 00:50:14', '2021-11-07 12:27:07', 1),
(4, 'Praveena', 'IT19', 'praveena@gmail.com', 'Female', '2001-12-18', 1, '2021-11-09 17:11:47', '2021-11-09 17:18:54', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblsubjectcombination`
--

CREATE TABLE IF NOT EXISTS `tblsubjectcombination` (
  `id` int(11) NOT NULL,
  `ClassId` int(11) NOT NULL,
  `SubjectId` int(11) NOT NULL,
  `status` int(1) DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Updationdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubjectcombination`
--

INSERT INTO `tblsubjectcombination` (`id`, `ClassId`, `SubjectId`, `status`, `CreationDate`, `Updationdate`) VALUES
(1, 1, 2, 1, '2017-08-26 08:52:15', '2017-08-26 08:52:15'),
(2, 1, 5, 1, '2017-08-26 08:52:20', '2017-08-26 08:52:20'),
(3, 1, 1, 1, '2017-08-29 00:14:06', '2017-08-29 00:14:06'),

-- --------------------------------------------------------

--
-- Table structure for table `tblsubjects`
--

CREATE TABLE IF NOT EXISTS `tblsubjects` (
  `id` int(11) NOT NULL,
  `SubjectName` varchar(100) NOT NULL,
  `SubjectCode` varchar(100) NOT NULL,
  `Creationdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubjects`
--

INSERT INTO `tblsubjects` (`id`, `SubjectName`, `SubjectCode`, `Creationdate`, `UpdationDate`) VALUES
(1, 'ANT', 'MA8251', '2021-11-07 14:53:57', '2021-11-07 12:25:41'),
(2, 'WT', 'IT8501', '2021-11-07 14:54:25', '2021-11-07 12:25:33'),
(3, 'CN', 'CS8591', '2021-11-07 15:06:15', '2021-11-07 12:25:58'),
(4, 'MPMC', 'EC8691', '2021-11-07 15:06:23', '2021-11-07 12:25:03'),
(5, 'SE', 'CS8591', '2021-11-07 12:42:55', '2021-11-07 12:25:04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblclasses`
--
ALTER TABLE `tblclasses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblresult`
--
ALTER TABLE `tblresult`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblstudents`
--
ALTER TABLE `tblstudents`
  ADD PRIMARY KEY (`StudentId`);

--
-- Indexes for table `tblsubjectcombination`
--
ALTER TABLE `tblsubjectcombination`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsubjects`
--
ALTER TABLE `tblsubjects`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tblclasses`
--
ALTER TABLE `tblclasses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `tblresult`
--
ALTER TABLE `tblresult`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `tblstudents`
--
ALTER TABLE `tblstudents`
  MODIFY `StudentId` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tblsubjectcombination`
--
ALTER TABLE `tblsubjectcombination`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `tblsubjects`
--
ALTER TABLE `tblsubjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
