-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 07, 2019 at 08:02 PM
-- Server version: 10.1.40-MariaDB
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wms_schema`
--

-- --------------------------------------------------------
create database wms_schema;
--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `role` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `role`) VALUES
(1, 'ADMIN'),
(2, 'USER');

-- --------------------------------------------------------

--
-- Table structure for table `task`
--

CREATE TABLE `task` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `finished` bit(1) DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `active` int(11) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `active`, `email`, `name`, `password`, `role_id`) VALUES
(8, 1, 'hari@vaikuntam.com', 'hari', '$2a$10$FYyT8LTceZjV955b9Z8w8OwNesCGLwPqZoCLbT//DW2ti9OtBOQ3W', 2);

-- --------------------------------------------------------

--
-- Table structure for table `user_task`
--

CREATE TABLE `user_task` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `task_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wms_allocation`
--

CREATE TABLE `wms_allocation` (
  `status` varchar(100) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `remarks` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `request_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `request_user_id` varchar(50) NOT NULL,
  `approval_user_id` varchar(50) NOT NULL,
  `project_name` varchar(50) NOT NULL,
  `project_id` varchar(50) NOT NULL,
  `insert_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `no_resources` bigint(20) NOT NULL,
  `sno` bigint(20) NOT NULL,
  `modified_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wms_allocation`
--

INSERT INTO `wms_allocation` (`status`, `subject`, `remarks`, `description`, `request_date`, `request_user_id`, `approval_user_id`, `project_name`, `project_id`, `insert_timestamp`, `no_resources`, `sno`, `modified_timestamp`) VALUES
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-06 17:38:15', 'hari@vaikuntam.com', 'hari@vaikuntam.com', 'AIG1', '100', '2019-07-09 18:30:00', 0, 1, '2019-07-06 10:52:29'),
('request', 'request for 50 seat allocation', 'request for 50 seat allocation', 'request for 50 seat allocation', '2019-07-06 17:38:15', 'hari@vaikuntam.com', 'hari@vaikuntam.com', 'AIG2', '100', '2019-07-01 18:30:00', 0, 2, '2019-07-06 10:52:29'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-06 17:38:15', 'hari@vaikuntam.com', 'hari@vaikuntam.com', 'AIG3', '100', '2019-07-01 18:30:00', 0, 3, '2019-07-06 10:52:29'),
('request', 'request for 50 seat allocation', 'request for 50 seat allocation', 'request for 50 seat allocation', '2019-07-06 17:38:15', 'hari@vaikuntam.com', 'hari@vaikuntam.com', 'AIG4', '100', '2019-07-03 18:30:00', 0, 4, '2019-07-06 10:52:29');

-- --------------------------------------------------------

--
-- Table structure for table `wms_allocation_details`
--

CREATE TABLE `wms_allocation_details` (
  `location` varchar(100) NOT NULL,
  `campus` varchar(50) NOT NULL,
  `building` varchar(50) NOT NULL,
  `floor` varchar(50) NOT NULL,
  `seats_id` varchar(50) NOT NULL,
  `seats_no` varchar(50) NOT NULL,
  `project_code` varchar(50) NOT NULL,
  `project_name` varchar(50) NOT NULL,
  `project_manager` varchar(50) NOT NULL,
  `employee_name` varchar(50) NOT NULL,
  `employee_id` varchar(50) NOT NULL,
  `from_date` varchar(50) NOT NULL,
  `to_date` varchar(50) NOT NULL,
  `seat_status` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `remarks` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wms_allocation_details`
--

INSERT INTO `wms_allocation_details` (`location`, `campus`, `building`, `floor`, `seats_id`, `seats_no`, `project_code`, `project_name`, `project_manager`, `employee_name`, `employee_id`, `from_date`, `to_date`, `seat_status`, `email`, `remarks`) VALUES
('Bangalore', 'Campus1', 'Building1', '1st Floor', 'B1F1W10001', '14', 'P1', 'Project1', 'Hema', '', '', '', '', 'AL', 'uday.cs@spacematrix.com ', ''),
('Bangalore', 'Campus1', 'Building1', '1st Floor', 'B1F1W10002', '15', 'P1', 'Project1', 'Hema', '', '', '', '', 'AL', 'anil.reddy@spacematrix.com ', ''),
('Bangalore', 'Campus1', 'Building1', '1st Floor', 'B1F1W10003', '16', 'P1', 'Project1', 'Hema', 'Vijay', 'E00003', '01-01-2019', '30-01-2019', 'AS', 'vijay.reddy@spacematrix.com ', ''),
('Bangalore', 'Campus1', 'Building1', '1st Floor', 'B1F1W10004', '22', 'P1', 'Project1', 'Hema', 'Lavanya', 'E00004', '01-01-2019', '30-01-2019', 'AS', 'kasamsetty.lavanya@spacematrix.com ', ''),
('Bangalore', 'Campus1', 'Building1', '1st Floor', 'B1F1W10005', '24', 'P1', 'Project1', 'Hema', 'Rajesh', 'E00005', '01-01-2019', '30-01-2019', 'AS', 'rajesh.basuru@spacematrix.com ', ''),
('Bangalore', 'Campus1', 'Building1', '1st Floor', 'B1F1W10006', '26', 'P1', 'Project1', 'Hema', 'Harish', 'E00006', '01-01-2019', '30-01-2019', 'AS', 'harish.k@spacematrix.com ', ''),
('Bangalore', 'Campus1', 'Building1', '1st Floor', 'B1F1W10007', '33', 'P1', 'Project1', 'Hema', 'Subramani', 'E00007', '01-01-2019', '30-01-2019', 'AS', 'subramani.bn@spacematrix.com ', ''),
('Bangalore', 'Campus1', 'Building1', '1st Floor', 'B1F1W10008', '34', 'P1', 'Project1', 'Hema', 'Srinivas', 'E00008', '01-01-2019', '30-01-2019', 'AS', 'srinivas.murthy@spacematrix.com ', ''),
('Bangalore', 'Campus1', 'Building1', '1st Floor', 'B1F1W10009', '37', 'P1', 'Project1', 'Hema', 'Smrithi', 'E00009', '01-01-2019', '30-01-2019', 'AS', 'smriti.dixit@spacematrix.com', ''),
('Bangalore', 'Campus1', 'Building1', '1st Floor', 'B1F1W10010', '38', 'P1', 'Project1', 'Hema', 'Vinay', 'E00010', '01-01-2019', '30-01-2019', 'AS', 'kvinay.bhat@spacematrix.com ', ''),
('Bangalore', 'Campus1', 'Building1', '1st Floor', 'B1F1W10011', '40', 'P1', 'Project1', 'Hema', 'Reetha', 'E00011', '01-01-2019', '30-01-2019', 'AS', 'reethaa.gn@spacematrix.com ', ''),
('Bangalore', 'Campus1', 'Building1', '1st Floor', 'B1F1W10012', '41', 'P1', 'Project1', 'Hema', 'Aparna', 'E00012', '01-01-2019', '30-01-2019', 'AS', 'aparna.chellappan@spacematrix.com ', ''),
('Bangalore', 'Campus1', 'Building1', '2nd Floor', 'B1F1W10013', '6', 'P1', 'Project1', 'Hema', '', '', '', '', 'AL', 'uggumudi.reddy@spacematrix.com', ''),
('Bangalore', 'Campus1', 'Building1', '2nd Floor', 'B1F1W10014', '9', 'P1', 'Project1', 'Hema', '', '', '', '', 'AL', 'gitte.kiran@spacematrix.com', ''),
('Bangalore', 'Campus1', 'Building1', '2nd Floor', 'B1F1W10015', '12', 'P1', 'Project1', 'Hema', 'Ranjith', 'E00015', '01-01-2019', '30-01-2019', 'AS', 'ranjith.a@spacematrix.com', ''),
('Bangalore', 'Campus1', 'Building1', '2nd Floor', 'B1F1W10016', '13', 'P1', 'Project1', 'Hema', 'Kanti', 'E00016', '01-01-2019', '30-01-2019', 'AS', 'kanteerava.k@spacematrix.com', ''),
('Bangalore', 'Campus1', 'Building1', '2nd Floor', 'B1F1W10017', '15', 'P1', 'Project1', 'Hema', 'Savitha', 'E00017', '01-01-2019', '30-01-2019', 'AS', 'savitha.s@spacematrix.com', ''),
('Bangalore', 'Campus1', 'Building1', '2nd Floor', 'B1F1W10018', '19', 'P1', 'Project1', 'Hema', 'Sameer', 'E00018', '01-01-2019', '30-01-2019', 'AS', 'Sameer.ck@spacematrix.com ', ''),
('Bangalore', 'Campus1', 'Building1', '2nd Floor', 'B1F1W10019', '20', 'P2', 'Project2', 'Hema', 'Dhinakar', 'E00019', '01-01-2019', '30-01-2019', 'AS', 'p.dhinakaran@spacematrix.com', ''),
('Bangalore', 'Campus1', 'Building1', '2nd Floor', 'B1F1W10020', '27', 'P2', 'Project2', 'Hema', 'Nayeem', 'E00020', '01-01-2019', '30-01-2019', 'AS', 'abdul.nayeem@spacematrix.com ', ''),
('Bangalore', 'Campus1', 'Building1', '2nd Floor', 'B1F1W10021', '29', 'P2', 'Project2', 'Hema', 'Rajesh', 'E00021', '01-01-2019', '30-01-2019', 'AS', 'gattupalli.rajesh@spacematrix.com', 'chennai employee came for training'),
('Bangalore', 'Campus1', 'Building1', '2nd Floor', 'B1F1W10022', '38', 'P2', 'Project2', 'Hema', 'Sushmitha', 'E00022', '01-01-2019', '30-01-2019', 'AS', 'sushmita.sukumar@spacematrix.com', ''),
('Bangalore', 'Campus1', 'Building1', '2nd Floor', 'B1F1W10023', '39', 'P2', 'Project2', 'Hema', 'Jayanna', 'E00023', '01-01-2019', '30-01-2019', 'AS', 'masturlaljayana.sachin@spacematrix.com', ''),
('Bangalore', 'Campus1', 'Building1', '2nd Floor', 'B1F1W10024', '43', 'P2', 'Project2', 'Hema', 'Neha', 'E00024', '01-01-2019', '30-01-2019', 'AS', 'neha.singh@spacematrix.com ', ''),
('Bangalore', 'Campus1', 'Building1', '2nd Floor', 'B1F1W10025', '46', 'P2', 'Project2', 'Hema', 'Aparna', 'E00025', '01-01-2019', '30-01-2019', 'AS', 'aparna.chellappan@spacematrix.com ', ''),
('Bangalore', 'Campus1', 'Building1', '2nd Floor', 'B1F1W10026', '47', 'P2', 'Project2', 'Hema', 'Sanjana', 'E00026', '01-01-2019', '30-01-2019', 'AS', 'sanjana.s@spacematrix.com ', ''),
('Bangalore', 'Campus1', 'Building1', '2nd Floor', 'B1F1W10027', '52', 'P2', 'Project2', 'Hema', 'Guru', 'E00027', '01-01-2019', '30-01-2019', 'AS', 'gururaj.raghavendra@spacematrix.com ', ''),
('Bangalore', 'Campus1', 'Building1', 'Third', 'B1F1W10028', '2', 'P2', 'Project2', 'Hema', '', '', '', '', 'AL', 'c.sureshkumar@spacematrix.com', ''),
('Bangalore', 'Campus1', 'Building1', 'Third', 'B1F1W10029', '7', 'P2', 'Project2', 'Hema', '', '', '', '', 'AL', 'mahendra.b@spacematrix.com ', ''),
('Bangalore', 'Campus1', 'Building1', 'Third', 'B1F1W10030', '27', 'P2', 'Project2', 'Hema', 'Balchandra', 'E00030', '01-01-2019', '30-01-2019', 'AS', 'No Mail Id', 'External Consultant'),
('Bangalore', 'Campus1', 'Building1', 'Third', 'B1F1W10031', '32', 'P2', 'Project2', 'Hema', 'Nikhi', 'E00031', '01-01-2019', '30-01-2019', 'AS', 'nikhileshwari.r@spacematrix.com ', ''),
('Bangalore', 'Campus1', 'Building1', 'Third', 'B1F1W10032', '34', 'P2', 'Project2', 'Hema', 'Savitha', 'E00032', '01-01-2019', '30-01-2019', 'AS', 'savitha.mr@spacematrix.com ', ''),
('Bangalore', 'Campus1', 'Building1', 'Third', 'B1F1W10033', '36', 'P2', 'Project2', 'Hema', 'Uday', 'E00033', '01-01-2019', '30-01-2019', 'AS', 'uday.mahajanashettar@spacematrix.com ', ''),
('Bangalore', 'Campus1', 'Building1', 'Third', 'B1F1W10034', '43', 'P2', 'Project2', 'Hema', 'Satish', 'E00034', '01-01-2019', '30-01-2019', 'AS', 'satish.m@spacematrix.com', ''),
('Bangalore', 'Campus1', 'Building1', 'Third', 'B1F1W10035', '44', 'P2', 'Project2', 'Hema', 'Sushmita', 'E00035', '01-01-2019', '30-01-2019', 'AS', 'sushmitha.r@spacematrix.com ', ''),
('Bangalore', 'Campus1', 'Building1', 'Third', 'B1F1W10036', '49', 'P2', 'Project2', 'Hema', 'Gauttam', 'E00036', '01-01-2019', '30-01-2019', 'AS', 'goutham.s@spacematrix.com', ''),
('Bangalore', 'Campus1', 'Building1', 'Third', 'B1F1W10037', '51', 'P2', 'Project2', 'Hema', 'Vamsi', 'E00037', '01-01-2019', '30-01-2019', 'AS', 'moka.v@spacematrix.com ', ''),
('Bangalore', 'Campus1', 'Building1', 'Four', 'B1F1W10038', '1', 'P3', 'Project3', '', '', '', '', '', 'UAL', '', ''),
('Bangalore', 'Campus1', 'Building1', 'Four', 'B1F1W10039', '2', 'P3', 'Project3', '', '', '', '', '', 'UAL', '', ''),
('Bangalore', 'Campus1', 'Building1', 'Four', 'B1F1W10040', '3', 'P3', 'Project3', '', '', '', '', '', 'UAL', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `wms_utilization`
--

CREATE TABLE `wms_utilization` (
  `location` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `building` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `floor` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `total_capacity` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `total_occupancy` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `total_current_utilization` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `utilization_vs_occupancy` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `utilzation_vs_capacity` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `utilization_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `wms_utilization`
--

INSERT INTO `wms_utilization` (`location`, `building`, `floor`, `total_capacity`, `total_occupancy`, `total_current_utilization`, `utilization_vs_occupancy`, `utilzation_vs_capacity`, `utilization_date`) VALUES
('Bangalore', 'Building1', '4th Floor', '210', '198', '190', '96%', '90%', '2019-06-27'),
('Bangalore', 'Building1', '6th Floor', '120', '95', '85', '89%', '71%', '2019-06-27'),
('Bangalore', 'Building1', '7th Floor', '185', '162', '135', '83%', '73%', '2019-06-27'),
('Bangalore', 'Building1', '8th Floor', '175', '157', '149', '95%', '85%', '2019-06-27'),
('Bangalore', 'Building1', '9th Floor', '200', '183', '173', '95%', '87%', '2019-06-27'),
('Bangalore', 'Building1', '10th Floor', '195', '184', '177', '96%', '91%', '2019-06-27'),
('Bangalore', 'Building1', '4th Floor', '310', '198', '190', '96%', '90%', '2019-06-26'),
('Bangalore', 'Building1', '6th Floor', '120', '95', '85', '89%', '71%', '2019-06-26'),
('Bangalore', 'Building1', '7th Floor', '185', '162', '135', '83%', '73%', '2019-06-26'),
('Bangalore', 'Building1', '8th Floor', '175', '157', '149', '95%', '85%', '2019-06-26'),
('Bangalore', 'Building1', '9th Floor', '200', '183', '173', '95%', '87%', '2019-06-26'),
('Bangalore', 'Building1', '10th Floor', '195', '184', '177', '96%', '91%', '2019-06-26'),
('Bangalore', 'Building1', '4th Floor', '510', '198', '190', '96%', '90%', '2019-06-25'),
('Bangalore', 'Building1', '6th Floor', '120', '95', '85', '89%', '71%', '2019-06-25'),
('Bangalore', 'Building1', '7th Floor', '185', '162', '135', '83%', '73%', '2019-06-25'),
('Bangalore', 'Building1', '8th Floor', '175', '157', '149', '95%', '85%', '2019-06-25'),
('Bangalore', 'Building1', '9th Floor', '200', '183', '173', '95%', '87%', '2019-06-25'),
('Bangalore', 'Building1', '10th Floor', '195', '184', '177', '96%', '91%', '2019-06-25'),
('Bangalore', 'Building1', '4th Floor', '510', '198', '190', '96%', '90%', '2019-06-24'),
('Bangalore', 'Building1', '6th Floor', '120', '95', '85', '89%', '71%', '2019-06-24'),
('Bangalore', 'Building1', '7th Floor', '185', '162', '135', '83%', '73%', '2019-06-24'),
('Bangalore', 'Building1', '8th Floor', '175', '157', '149', '95%', '85%', '2019-06-24'),
('Bangalore', 'Building1', '9th Floor', '200', '183', '173', '95%', '87%', '2019-06-24'),
('Bangalore', 'Building1', '10th Floor', '195', '184', '177', '96%', '91%', '2019-06-24'),
('Bangalore', 'Building1', '4th Floor', '610', '198', '190', '96%', '90%', '2019-06-24'),
('Bangalore', 'Building1', '6th Floor', '120', '95', '85', '89%', '71%', '2019-06-23'),
('Bangalore', 'Building1', '7th Floor', '185', '162', '135', '83%', '73%', '2019-06-23'),
('Bangalore', 'Building1', '8th Floor', '175', '157', '149', '95%', '85%', '2019-06-23'),
('Bangalore', 'Building1', '9th Floor', '200', '183', '173', '95%', '87%', '2019-06-23'),
('Bangalore', 'Building1', '10th Floor', '195', '184', '177', '96%', '91%', '2019-06-23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task`
--
ALTER TABLE `task`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_role_id` (`role_id`);

--
-- Indexes for table `user_task`
--
ALTER TABLE `user_task`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_usertask_user_id` (`user_id`),
  ADD KEY `id_usertask_task_id` (`task_id`);

--
-- Indexes for table `wms_allocation`
--
ALTER TABLE `wms_allocation`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `task`
--
ALTER TABLE `task`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user_task`
--
ALTER TABLE `user_task`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wms_allocation`
--
ALTER TABLE `wms_allocation`
  MODIFY `sno` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `id_role_id` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`);

--
-- Constraints for table `user_task`
--
ALTER TABLE `user_task`
  ADD CONSTRAINT `id_usertask_task_id` FOREIGN KEY (`task_id`) REFERENCES `task` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `id_usertask_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
