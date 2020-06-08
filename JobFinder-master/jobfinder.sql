-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 25, 2017 at 12:23 अपराह्न
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jobfinder`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `ID` int(11) NOT NULL,
  `AdminName` varchar(250) NOT NULL,
  `AdminEmail` varchar(250) NOT NULL,
  `AdminPassword` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`ID`, `AdminName`, `AdminEmail`, `AdminPassword`) VALUES
(1, 'Hira Subedi', 'subedihira35@gmail.com', 'd6581d542c7eaf801284f084478b5fcc');

-- --------------------------------------------------------

--
-- Table structure for table `company_register`
--

CREATE TABLE `company_register` (
  `id` int(11) NOT NULL,
  `company_name` varchar(256) NOT NULL,
  `company_address` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL,
  `password` varchar(256) NOT NULL,
  `phone_number` bigint(11) NOT NULL,
  `fax` bigint(11) NOT NULL,
  `employess` varchar(256) NOT NULL,
  `company_overview` varchar(500) NOT NULL,
  `company_news` varchar(500) NOT NULL,
  `Image` varchar(1000) NOT NULL,
  `Search` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company_register`
--

INSERT INTO `company_register` (`id`, `company_name`, `company_address`, `email`, `password`, `phone_number`, `fax`, `employess`, `company_overview`, `company_news`, `Image`, `Search`) VALUES
(13, 'Twitter', 'Dhulikhel', 'twitter35@gmail.com', 'lolo', 14335972, 90, '9', 'bestCompany', 'BestCompany', './img/Company/twitter35@gmail.com/Qfy0kRIP_400x400.jpg', 6),
(12, 'Google', 'Nepal', 'google@gmail.com', 'lolo', 14335972, 7, '8', 'Googleisthebest', 'Googleisthebest', './img/Company/google@gmail.com/google-logo-1200x630.jpg', 7),
(11, 'Facebook', 'Kathmandu,Nepal', 'facebook35@gmail.com', 'lolo', 9841410452, 89, '8', 'facebookisthebest', 'facebookisthebest', './img/Company/facebook35@gmail.com/facebook-logo-0AA7913C4D-seeklogo.com.png', 8),
(14, 'Deerwalk', 'Kathmandu', 'deerwalk35@gmail.com', 'lolo', 14335972, 9, '9', 'BestCompany', 'BestCompany', './img/Company/deerwalk35@gmail.com/NlRYWfPZ.jpg', 5);

-- --------------------------------------------------------

--
-- Table structure for table `deerwalk`
--

CREATE TABLE `deerwalk` (
  `ID` int(11) NOT NULL,
  `ApplicantFirstName` varchar(200) NOT NULL,
  `ApplicantLastName` varchar(30) NOT NULL,
  `ApplicantEmail` varchar(50) NOT NULL,
  `ApplicantNumber` bigint(11) NOT NULL,
  `JobTitle` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `facebook`
--

CREATE TABLE `facebook` (
  `ID` int(11) NOT NULL,
  `ApplicantFirstName` varchar(200) NOT NULL,
  `ApplicantLastName` varchar(30) NOT NULL,
  `ApplicantEmail` varchar(50) NOT NULL,
  `ApplicantNumber` bigint(11) NOT NULL,
  `JobTitle` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `facebook`
--

INSERT INTO `facebook` (`ID`, `ApplicantFirstName`, `ApplicantLastName`, `ApplicantEmail`, `ApplicantNumber`, `JobTitle`) VALUES
(1, 'Ashish', 'Subedi', 'subediashish35@gmail.com', 9843520805, 'System Designer');

-- --------------------------------------------------------

--
-- Table structure for table `forum`
--

CREATE TABLE `forum` (
  `id` int(11) NOT NULL,
  `Questions` varchar(400) NOT NULL,
  `Answer` varchar(400) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `forum`
--

INSERT INTO `forum` (`id`, `Questions`, `Answer`) VALUES
(192, 'What king of website is it?', 'It itends to find jobs for those who are seeking'),
(193, 'Is this website trustable?', 'yes it is'),
(194, 'is this site good?', 'it is');

-- --------------------------------------------------------

--
-- Table structure for table `google`
--

CREATE TABLE `google` (
  `ID` int(11) NOT NULL,
  `ApplicantFirstName` varchar(200) NOT NULL,
  `ApplicantLastName` varchar(30) NOT NULL,
  `ApplicantEmail` varchar(50) NOT NULL,
  `ApplicantNumber` bigint(11) NOT NULL,
  `JobTitle` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `google`
--

INSERT INTO `google` (`ID`, `ApplicantFirstName`, `ApplicantLastName`, `ApplicantEmail`, `ApplicantNumber`, `JobTitle`) VALUES
(1, 'Chester', 'Benington', 'chester35@gmail.com', 9843520805, 'CEO');

-- --------------------------------------------------------

--
-- Table structure for table `jobpost`
--

CREATE TABLE `jobpost` (
  `ID` int(11) NOT NULL,
  `JobTitle` varchar(400) NOT NULL,
  `Organization` varchar(400) NOT NULL,
  `VacantSeat` varchar(400) NOT NULL,
  `LastDate` date NOT NULL,
  `Salary` int(11) NOT NULL,
  `WorkingLocation` varchar(200) NOT NULL,
  `Requirement1` varchar(300) NOT NULL,
  `Requirement2` varchar(300) NOT NULL,
  `Requirement3` varchar(300) NOT NULL,
  `Requirement4` varchar(300) NOT NULL,
  `Requirement5` varchar(300) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jobpost`
--

INSERT INTO `jobpost` (`ID`, `JobTitle`, `Organization`, `VacantSeat`, `LastDate`, `Salary`, `WorkingLocation`, `Requirement1`, `Requirement2`, `Requirement3`, `Requirement4`, `Requirement5`) VALUES
(23, 'CEO', 'Google', '1', '2016-10-05', 90000, 'Dhulikhel', 'BE in Computer Engineering', '4 Years of Experience in Programming', 'Worked as an system designer', '', ''),
(22, 'System Designer', 'Facebook', '1', '2016-01-04', 90000, 'Kathmandu,Nepal', 'Bsc in Computer Science', 'Worked as a system assistant', 'Should have taught computer for 2 years', '', ''),
(24, 'Game Developer', 'Twitter', '2', '2016-01-14', 89999, 'Sydney', 'BE in Computer Engineering or Bsc in Computer Science', 'Wokred as game designer for 4 years', 'Should have taught computer for 2 years', '', ''),
(25, 'Manager', 'Twitter', '1', '2016-01-07', 80000, 'Nepal', 'Worked As Sub Manager', 'Most have done BBA', 'Fluent Englsih speaking', '', ''),
(26, 'Computer Engineer', 'Facebook', '1', '2017-01-09', 80000, 'Kathmandu,Nepal', 'BE in Computer Engineering', 'Experienced as system designer for atleast 2 years', 'Should be good at Englsih', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `ID` int(255) NOT NULL,
  `FILE_NAME` int(255) NOT NULL,
  `PATHH` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(400) NOT NULL,
  `ContactNumber` bigint(11) NOT NULL,
  `DOB` date NOT NULL,
  `Image` varchar(1000) NOT NULL,
  `CV` varchar(1000) NOT NULL,
  `CVName` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `first_name`, `last_name`, `email`, `password`, `ContactNumber`, `DOB`, `Image`, `CV`, `CVName`) VALUES
(22, 'Ashish', 'Subedi', 'subediashish35@gmail.com', 'lolo', 9843520805, '1991-01-09', './img/User/subediashish35@gmail.com/8Fcd0bji.jpg', './img/User/subediashish35@gmail.com/Ashish_Subedi_LabReport2_66.pdf', 'Ashish_Subedi_LabReport2_66.pdf'),
(23, 'Chester', 'Benington', 'chester35@gmail.com', 'lolo', 9843520805, '1997-01-17', './img/User/chester35@gmail.com/chester-bennington.jpg', './img/User/chester35@gmail.com/ER Design_Case_Ashish_Subedi_66.pdf', 'ER Design_Case_Ashish_Subedi_66.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `topsearch`
--

CREATE TABLE `topsearch` (
  `ID` int(11) NOT NULL,
  `CompanyName` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `twitter`
--

CREATE TABLE `twitter` (
  `ID` int(11) NOT NULL,
  `ApplicantFirstName` varchar(200) NOT NULL,
  `ApplicantLastName` varchar(30) NOT NULL,
  `ApplicantEmail` varchar(50) NOT NULL,
  `ApplicantNumber` bigint(11) NOT NULL,
  `JobTitle` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `twitter`
--

INSERT INTO `twitter` (`ID`, `ApplicantFirstName`, `ApplicantLastName`, `ApplicantEmail`, `ApplicantNumber`, `JobTitle`) VALUES
(1, 'Ashish', 'Subedi', 'subediashish35@gmail.com', 9843520805, 'Game Developer');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `company_register`
--
ALTER TABLE `company_register`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deerwalk`
--
ALTER TABLE `deerwalk`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `facebook`
--
ALTER TABLE `facebook`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `forum`
--
ALTER TABLE `forum`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `google`
--
ALTER TABLE `google`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `jobpost`
--
ALTER TABLE `jobpost`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `topsearch`
--
ALTER TABLE `topsearch`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `twitter`
--
ALTER TABLE `twitter`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `company_register`
--
ALTER TABLE `company_register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `deerwalk`
--
ALTER TABLE `deerwalk`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `facebook`
--
ALTER TABLE `facebook`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `forum`
--
ALTER TABLE `forum`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=195;
--
-- AUTO_INCREMENT for table `google`
--
ALTER TABLE `google`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `jobpost`
--
ALTER TABLE `jobpost`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `topsearch`
--
ALTER TABLE `topsearch`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `twitter`
--
ALTER TABLE `twitter`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
