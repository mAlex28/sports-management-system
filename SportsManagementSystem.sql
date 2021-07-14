-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 01, 2020 at 07:26 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `SportsManagementSystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `Enrolled`
--

CREATE TABLE `Enrolled` (
  `StuId` char(10) NOT NULL,
  `SpId` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `Sport`
--

CREATE TABLE `Sport` (
  `Sp_Id` char(10) NOT NULL,
  `Sp_Name` varchar(100) DEFAULT NULL,
  `Sp_Category` varchar(100) DEFAULT NULL,
  `Sp_MasterInCharge` varchar(100) DEFAULT NULL,
  `Sp_MistressInCharge` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Sport`
--

INSERT INTO `Sport` (`Sp_Id`, `Sp_Name`, `Sp_Category`, `Sp_MasterInCharge`, `Sp_MistressInCharge`) VALUES
('1001', 'Basketball', 'Indoor', 'Mr. P Thilakaratne', 'Ms. I Karunaratne'),
('1002', 'Chess', 'Indoor', 'Mr. N Saravanapavan', 'Ms. S M K N Weerasinghe'),
('1003', 'Badminton', 'Indoor', 'Mr. D Jayamanne', 'Ms. M Weerasekara'),
('1004', 'Cricket', 'Outdoor', 'Mr. K T Dissanayake', NULL),
('1005', 'Rugby', 'Outdoor', 'Mr. J B Dodankotuwa', 'Ms. U Hettihanthri'),
('1006', 'Soccer', 'Outdoor', 'Mr. M Shafraz', NULL),
('1007', 'Music Club', 'Clubs / Societies', 'Mr. M Perera', NULL),
('1008', 'Media Club', 'Clubs / Societies', 'Mr. O Sandaruwan', NULL),
('1009', 'LEO Club', 'Clubs / Societies', 'Mr. A Sulakkhana', 'Ms. S Fonseka');

-- --------------------------------------------------------

--
-- Table structure for table `Student`
--

CREATE TABLE `Student` (
  `Stu_Id` char(10) NOT NULL,
  `Stu_Name` varchar(100) DEFAULT NULL,
  `Stu_Gender` varchar(20) DEFAULT NULL,
  `Stu_Degree` varchar(100) DEFAULT NULL,
  `Stu_Batch` char(10) DEFAULT NULL,
  `Stu_University` varchar(100) DEFAULT NULL,
  `Stu_Contact` varchar(50) DEFAULT NULL,
  `Stu_Email` varchar(100) DEFAULT NULL,
  `Stu_Password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Student`
--

INSERT INTO `Student` (`Stu_Id`, `Stu_Name`, `Stu_Gender`, `Stu_Degree`, `Stu_Batch`, `Stu_University`, `Stu_Contact`, `Stu_Email`, `Stu_Password`) VALUES
('10020465', 'M.A.Munasinghe', 'Male', 'BSc(Hon) Software Engineering', '19.1', 'Plymouth University, UK', '0773875899', 'mamunasinghe@students.nsbm.lk', 'admin1234'),
('10037689', 'H.A.Y.A.Seneviratne', 'Male', 'BSc(Hon) Computer Security', '19.1', 'Plymouth University, UK', '0714759108', 'hayaseneviratne@students.nsbm.lk', 'admin2468');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Enrolled`
--
ALTER TABLE `Enrolled`
  ADD PRIMARY KEY (`StuId`,`SpId`),
  ADD KEY `FK_spId` (`SpId`);

--
-- Indexes for table `Sport`
--
ALTER TABLE `Sport`
  ADD PRIMARY KEY (`Sp_Id`);

--
-- Indexes for table `Student`
--
ALTER TABLE `Student`
  ADD PRIMARY KEY (`Stu_Id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Enrolled`
--
ALTER TABLE `Enrolled`
  ADD CONSTRAINT `FK_spId` FOREIGN KEY (`SpId`) REFERENCES `Sport` (`Sp_Id`),
  ADD CONSTRAINT `FK_stuId` FOREIGN KEY (`StuId`) REFERENCES `Student` (`Stu_Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
