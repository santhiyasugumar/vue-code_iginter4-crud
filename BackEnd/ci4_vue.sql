-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 01, 2021 at 01:53 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ci4_vue`
--

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `id` bigint(20) NOT NULL,
  `name` varchar(512) NOT NULL,
  `position` varchar(512) NOT NULL,
  `avatar` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`id`, `name`, `position`, `avatar`) VALUES
(1, 'Aghilan Baskar', 'Software Engineer', 'https://i.pravatar.cc/150?img=1'),
(2, 'Hariprakash', 'CTO', 'https://i.pravatar.cc/150?img=2'),
(3, 'Rangachari Achutaraman', 'Member Technical Staff', 'https://i.pravatar.cc/150?img=3'),
(4, 'Aghilan Logic', 'Software Engineer', 'https://i.pravatar.cc/150?img=4'),
(5, 'Ramakrishna Anand J', 'Associate Programmer', 'https://i.pravatar.cc/150?img=7'),
(6, 'M.K.A. Raman', 'Business Architect', 'https://i.pravatar.cc/150?img=9'),
(7, 'Sriram Subramaniyan', 'Software Application Architect', 'https://i.pravatar.cc/150?img=14'),
(8, 'Gurumurthy Natarajan', 'BDE', 'https://i.pravatar.cc/150?img=16'),
(9, 'sasikala', 'Software Tester', 'https://i.pravatar.cc/150?img=21'),
(10, 'Ramantest4', 'Xfy', 'https://i.pravatar.cc/150?img=22'),
(11, 'Sasikala', 'Software Tester', 'https://i.pravatar.cc/150?img=26'),
(12, 'RAMADURAI R', 'Director', 'https://i.pravatar.cc/150?img=32'),
(13, 'Sudarsana Srinivasan', 'Solution Architect', 'https://i.pravatar.cc/150?img=33'),
(14, 'Arun Srini', 'CNN News reader', 'https://i.pravatar.cc/150?img=34'),
(15, 'Prakash', 'IT Head', 'https://i.pravatar.cc/150?img=37'),
(16, 'Hari Narayanan', 'Mechanical Engineer', 'https://i.pravatar.cc/150?img=41'),
(17, 'Mukunda Singrachar', 'Sr. Engineering manager', 'https://i.pravatar.cc/150?img=45'),
(18, 'Parthasarathy R', 'Project Coordinator', 'https://i.pravatar.cc/150?img=46'),
(19, 'ParthaSarathy Kidambi', 'Program Manager', 'https://i.pravatar.cc/150?img=49'),
(20, 'Aravindhan', 'Senior Analog Designer', 'https://i.pravatar.cc/150?img=50'),
(21, 'Sathyanarayanan', 'Consulting Member Technical Staff', 'https://i.pravatar.cc/150?img=52'),
(22, 'ANIRUDH S RAJAN', 'Process Consultant', 'https://i.pravatar.cc/150?img=55'),
(23, 'Srihari Venkatesan', 'Prinicipal Engineer', 'https://i.pravatar.cc/150?img=56'),
(24, 'Nanda Kumar', 'Director', 'https://i.pravatar.cc/150?img=63'),
(25, 'Varada Desikan', 'Summer Intern', 'https://i.pravatar.cc/150?img=64'),
(26, 'Premkumar', 'Research Intern', 'https://i.pravatar.cc/150?img=69');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `profile`
--
ALTER TABLE `profile`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
