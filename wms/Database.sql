-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 26, 2019 at 10:23 AM
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

----------------------------------------------------------
CREATE DATABASE IF NOT EXISTS `wms_schema` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `wms_schema`;
-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `emp_name` varchar(100) NOT NULL,
  `presence_date` date NOT NULL,
  `presence_status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`emp_name`, `presence_date`, `presence_status`) VALUES
('Racheesh@gmail.com', '2019-07-23', 'P'),
('Akarsh@gmail.com', '2019-07-23', 'P'),
('Yashoda@gmail.com', '2019-07-23', 'P'),
('Vinoth@gmail.com', '2019-07-23', 'P'),
('Girish@gmail.com', '2019-07-23', 'P'),
('Vikram@gmail.com', '2019-07-23', 'P'),
('Chetna@gmail.com', '2019-07-23', 'P'),
('Baana@gmail.com', '2019-07-23', 'P'),
('Hemanth@gmail.com', '2019-07-23', 'P'),
('Digvaijay@gmail.com', '2019-07-23', 'P'),
('Mani@gmail.com', '2019-07-23', 'P'),
('Sunagendra@gmail.com', '2019-07-23', 'P'),
('Puja@gmail.com', '2019-07-23', 'P'),
('Asif@gmail.com', '2019-07-23', 'P'),
('Krishna@gmail.com', '2019-07-23', 'P'),
('Raksha@gmail.com', '2019-07-23', 'P'),
('Shivapur@gmail.com', '2019-07-23', 'P'),
('Purushothaman@gmail.com', '2019-07-23', 'P'),
('Nimish@gmail.com', '2019-07-23', 'P'),
('Vijayakumar@gmail.com', '2019-07-23', 'P'),
('Dheeraj@gmail.com', '2019-07-23', 'P'),
('Karthikeyan@gmail.com', '2019-07-23', 'P'),
('Vinood@gmail.com', '2019-07-23', 'P'),
('Kaushik@gmail.com', '2019-07-23', 'P'),
('Kamalkishore@gmail.com', '2019-07-23', 'P'),
('Deepali@gmail.com', '2019-07-23', 'P'),
('Gokul@gmail.com', '2019-07-23', 'P'),
('Murugan@gmail.com', '2019-07-23', 'P'),
('Ankit@gmail.com', '2019-07-23', 'P'),
('Varshini@gmail.com', '2019-07-23', 'P'),
('Apoorv@gmail.com', '2019-07-23', 'P'),
('Ranjana@gmail.com', '2019-07-23', 'P'),
('Vikash@gmail.com', '2019-07-23', 'P'),
('Chaithanya@gmail.com', '2019-07-23', 'P'),
('Vignesh@gmail.com', '2019-07-23', 'P'),
('Saroja@gmail.com', '2019-07-23', 'P'),
('Sudhakar@gmail.com', '2019-07-23', 'P'),
('Yashasvi@gmail.com', '2019-07-23', 'P'),
('Jaydip@gmail.com', '2019-07-23', 'P'),
('Muthukumar@gmail.com', '2019-07-23', 'P'),
('Deivachillai@gmail.com', '2019-07-23', 'P'),
('Senthilkumar@gmail.com', '2019-07-23', 'P'),
('Prakash@gmail.com', '2019-07-23', 'P'),
('Prabhaharan@gmail.com', '2019-07-23', 'P'),
('Kavya@gmail.com', '2019-07-23', 'P'),
('Smita@gmail.com', '2019-07-23', 'P'),
('Manikandan@gmail.com', '2019-07-23', 'P'),
('Kalaiyarasi@gmail.com', '2019-07-23', 'P'),
('Premkumar@gmail.com', '2019-07-23', 'P'),
('Gowtham@gmail.com', '2019-07-23', 'P'),
('Richa@gmail.com', '2019-07-23', 'P'),
('Sai@gmail.com', '2019-07-23', 'P'),
('Pushpendra@gmail.com', '2019-07-23', 'P'),
('Rupesh@gmail.com', '2019-07-23', 'P'),
('Nikhil@gmail.com', '2019-07-23', 'P'),
('Manu@gmail.com', '2019-07-23', 'P'),
('Raghav@gmail.com', '2019-07-23', 'P'),
('Deepinder@gmail.com', '2019-07-23', 'P'),
('Dayalan@gmail.com', '2019-07-23', 'P'),
('Naresh @gmail.com', '2019-07-23', 'P'),
('Abdullah@gmail.com', '2019-07-23', 'P'),
('Premkumar@gmail.com', '2019-07-23', 'P'),
('Abhijeet@gmail.com', '2019-07-23', 'P'),
('Karthick@gmail.com', '2019-07-23', 'P'),
('Shais@gmail.com', '2019-07-23', 'P'),
('ArjunKrishna@gmail.com', '2019-07-23', 'P'),
('Nafia@gmail.com', '2019-07-23', 'P'),
('Rahul@gmail.com', '2019-07-23', 'P'),
('Nehal@gmail.com', '2019-07-23', 'P'),
('Ganesh @gmail.com', '2019-07-23', 'P'),
('Ravikumar@gmail.com', '2019-07-23', 'P'),
('Lohit@gmail.com', '2019-07-23', 'P'),
('Vishal@gmail.com', '2019-07-23', 'P'),
('Vivek@gmail.com', '2019-07-23', 'P'),
('Supraja@gmail.com', '2019-07-23', 'P'),
('Ankit@gmail.com', '2019-07-23', 'P'),
('Shankar@gmail.com', '2019-07-23', 'P'),
('Satisha@gmail.com', '2019-07-23', 'P'),
('Kalaivanan@gmail.com', '2019-07-23', 'P'),
('Vinai@gmail.com', '2019-07-23', 'P'),
('Deepika@gmail.com', '2019-07-23', 'P'),
('Sai@gmail.com', '2019-07-23', 'P'),
('Jitendra@gmail.com', '2019-07-23', 'P'),
('Durga@gmail.com', '2019-07-23', 'P'),
('Christopher@gmail.com', '2019-07-23', 'P'),
('Karthik@gmail.com', '2019-07-23', 'P'),
('Anupama@gmail.com', '2019-07-23', 'P'),
('Prathima@gmail.com', '2019-07-23', 'P'),
('Kannan@gmail.com', '2019-07-23', 'P'),
('Jitendra@gmail.com', '2019-07-23', 'P'),
('Paneesha@gmail.com', '2019-07-23', 'P'),
('Ambavarapu@gmail.com', '2019-07-23', 'P'),
('Aneesh@gmail.com', '2019-07-23', 'P'),
('Sanjeev  @gmail.com', '2019-07-23', 'P'),
('Rajpradeep@gmail.com', '2019-07-23', 'P'),
('Jithin@gmail.com', '2019-07-23', 'P'),
('Pranay@gmail.com', '2019-07-23', 'P'),
('Appu@gmail.com', '2019-07-23', 'P'),
('Sreelatha@gmail.com', '2019-07-23', 'P'),
('Jyothi@gmail.com', '2019-07-23', 'P'),
('Saurabh@gmail.com', '2019-07-23', 'P'),
('Anto@gmail.com', '2019-07-23', 'P'),
('Anand@gmail.com', '2019-07-23', 'P'),
('Oosman@gmail.com', '2019-07-23', 'P'),
('Bharati@gmail.com', '2019-07-23', 'P'),
('Shyamjith@gmail.com', '2019-07-23', 'P'),
('Bhuvaneswari@gmail.com', '2019-07-23', 'P'),
('Kavitha@gmail.com', '2019-07-23', 'P'),
('Roshan@gmail.com', '2019-07-23', 'P'),
('Amit@gmail.com', '2019-07-23', 'P'),
('Anoop@gmail.com', '2019-07-23', 'P'),
('Shilpa@gmail.com', '2019-07-23', 'P'),
('Rohit@gmail.com', '2019-07-23', 'P'),
('Sriram@gmail.com', '2019-07-23', 'P'),
('Asam @gmail.com', '2019-07-23', 'P'),
('Sushma@gmail.com', '2019-07-23', 'P'),
('Pooja@gmail.com', '2019-07-23', 'P'),
('Mohan@gmail.com', '2019-07-23', 'P'),
('Dilip@gmail.com', '2019-07-23', 'P'),
('Harris@gmail.com', '2019-07-23', 'P'),
('Praveen@gmail.com', '2019-07-23', 'P'),
('Kishore@gmail.com', '2019-07-23', 'P'),
('Mani@gmail.com', '2019-07-23', 'P'),
('Chalapathy@gmail.com', '2019-07-23', 'P'),
('Suneel@gmail.com', '2019-07-23', 'P'),
('Sreejith@gmail.com', '2019-07-23', 'P'),
('Vimal@gmail.com', '2019-07-23', 'P'),
('Boobalan@gmail.com', '2019-07-23', 'P'),
('Gobi@gmail.com', '2019-07-23', 'P'),
('Nayan@gmail.com', '2019-07-23', 'P'),
('Srivasthav@gmail.com', '2019-07-23', 'P'),
('Ramagouda@gmail.com', '2019-07-23', 'P'),
('Satheeshkumar@gmail.com', '2019-07-23', 'P'),
('Srihari@gmail.com', '2019-07-23', 'P'),
('Sampath@gmail.com', '2019-07-23', 'P'),
('SaiLalith@gmail.com', '2019-07-23', 'P'),
('Chintam@gmail.com', '2019-07-23', 'P'),
('Krishanu@gmail.com', '2019-07-23', 'P'),
('SaiRam@gmail.com', '2019-07-23', 'P'),
('Srinivas@gmail.com', '2019-07-23', 'P'),
('Naveena@gmail.com', '2019-07-23', 'P'),
('Anoop@gmail.com', '2019-07-23', 'P'),
('Asif@gmail.com', '2019-07-23', 'P'),
('Sumeet@gmail.com', '2019-07-23', 'P'),
('Chandrashekar@gmail.com', '2019-07-23', 'P'),
('Athul@gmail.com', '2019-07-23', 'P'),
('Tejaswi@gmail.com', '2019-07-23', 'P'),
('Arun @gmail.com', '2019-07-23', 'P'),
('DivyaShree@gmail.com', '2019-07-23', 'P'),
('Suhas@gmail.com', '2019-07-23', 'P'),
('Kishan@gmail.com', '2019-07-23', 'P'),
('Mathu @gmail.com', '2019-07-23', 'P'),
('Shreejit@gmail.com', '2019-07-23', 'P'),
('Sathish@gmail.com', '2019-07-23', 'P'),
('Tanuj@gmail.com', '2019-07-23', 'P'),
('Shrijith@gmail.com', '2019-07-23', 'P');

-- --------------------------------------------------------

--
-- Table structure for table `emp_allocation`
--

CREATE TABLE `emp_allocation` (
  `status` varchar(100) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `remarks` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `request_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `workstation_no` varchar(10) NOT NULL,
  `employee_name` varchar(100) NOT NULL,
  `reporting_manager` varchar(100) NOT NULL,
  `request_user_id` varchar(50) NOT NULL,
  `approval_user_id` varchar(50) NOT NULL,
  `division` varchar(50) NOT NULL,
  `project_name` varchar(100) NOT NULL,
  `project_id` varchar(50) NOT NULL,
  `insert_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `no_resources` bigint(20) NOT NULL,
  `sno` bigint(20) NOT NULL,
  `modified_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `floor` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emp_allocation`
--

INSERT INTO `emp_allocation` (`status`, `subject`, `remarks`, `description`, `request_date`, `workstation_no`, `employee_name`, `reporting_manager`, `request_user_id`, `approval_user_id`, `division`, `project_name`, `project_id`, `insert_timestamp`, `no_resources`, `sno`, `modified_timestamp`, `floor`) VALUES
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW01', 'Racheesh K', 'Sunagendra', 'Racheesh@gmail.com', 'facilitymanager@gmail.com', 'GDC-Infosec', 'Forescout', '111', '2019-07-22 11:39:00', 0, 1, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW02', 'Akarsh S', 'Sunagendra', 'Akarsh@gmail.com', 'facilitymanager@gmail.com', 'GDC-Infosec', 'Forescout', '111', '2019-07-22 11:39:00', 0, 2, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW03', 'Yashoda B Rao', 'Sunagendra', 'Yashoda@gmail.com', 'facilitymanager@gmail.com', 'GDC-Infosec', 'Forescout', '111', '2019-07-22 11:39:00', 0, 3, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW04', 'Vinoth S', 'Sunagendra', 'Vinoth@gmail.com', 'facilitymanager@gmail.com', 'GDC-Infosec', 'Forescout', '111', '2019-07-22 11:39:00', 0, 4, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW05', 'Girish Kumar', 'Sunagendra', 'Girish@gmail.com', 'facilitymanager@gmail.com', 'GDC-Infosec', 'Forescout', '111', '2019-07-22 11:39:00', 0, 5, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW06', 'Vikram', 'Beena', 'Vikram@gmail.com', 'facilitymanager@gmail.com', 'GDC-Infosec', 'GSIRT-Infra', '119', '2019-07-22 11:39:00', 0, 6, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW07', 'Chetna', 'Beena', 'Chetna@gmail.com', 'facilitymanager@gmail.com', 'GDC-Infosec', 'GSIRT-NOC', '120', '2019-07-22 11:39:00', 0, 7, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW10', 'Beena', 'Beena', 'Baana@gmail.com', 'facilitymanager@gmail.com', 'GDC-Infosec', 'GSIRT-NOC', '120', '2019-07-22 11:39:00', 0, 8, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW16', 'Hemanth', 'Beena', 'Hemanth@gmail.com', 'facilitymanager@gmail.com', 'GDC-Infosec', 'GSIRT-NOC', '120', '2019-07-22 11:39:00', 0, 9, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW17', 'Digvaijay Kaintura', 'Sunagendra', 'Digvaijay@gmail.com', 'facilitymanager@gmail.com', 'GDC-Infosec', 'Forescout', '111', '2019-07-22 11:39:00', 0, 10, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW18', 'Mani Palaniyapillai', 'Sunagendra', 'Mani@gmail.com', 'facilitymanager@gmail.com', 'GDC-Infosec', 'Forescout', '111', '2019-07-22 11:39:00', 0, 11, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW19', 'Sunagendra', 'Prasanna', 'Sunagendra@gmail.com', 'facilitymanager@gmail.com', 'GDC-Infosec', 'Forescout', '111', '2019-07-22 11:39:00', 0, 12, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW20', 'Puja Ghosh', 'Prasanna', 'Puja@gmail.com', 'facilitymanager@gmail.com', 'GDC-Infosec', 'Forescout', '111', '2019-07-22 11:39:00', 0, 13, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW21', 'Asif Madasanal', 'Vishal Chouhan', 'Asif@gmail.com', 'facilitymanager@gmail.com', 'InfoSec', 'SOMC ePO', '126', '2019-07-22 11:39:00', 0, 14, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW22', 'Krishna PriyaDarshini', 'Vishal Chouhan', 'Krishna@gmail.com', 'facilitymanager@gmail.com', 'InfoSec', 'SME Splunk & NSRA', '127', '2019-07-22 11:39:00', 0, 15, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW23', 'Raksha Shetty', 'Vishal Chouhan', 'Raksha@gmail.com', 'facilitymanager@gmail.com', 'InfoSec', 'SIE E', '125', '2019-07-22 11:39:00', 0, 16, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW24', 'Shivapur chowdareddy', 'Vishal Chouhan', 'Shivapur@gmail.com', 'facilitymanager@gmail.com', 'InfoSec', 'SIE E', '125', '2019-07-22 11:39:00', 0, 17, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW25', 'Purushothaman govindasamy', 'Nimish Maneasseri', 'Purushothaman@gmail.com', 'facilitymanager@gmail.com', 'InfoSec', 'eGIS-PT', '109', '2019-07-22 11:39:00', 0, 18, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW26', 'Nimish maneasseri', 'Anupama srikanth', 'Nimish@gmail.com', 'facilitymanager@gmail.com', 'InfoSec', 'eGIS-PT', '109', '2019-07-22 11:39:00', 0, 19, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW27', 'Vijayakumar kemmanakeri', 'Nimish Maneasseri', 'Vijayakumar@gmail.com', 'facilitymanager@gmail.com', 'InfoSec', 'eGIS-VM', '110', '2019-07-22 11:39:00', 0, 20, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW28', 'Dheeraj sai karnatakam', 'Nimish Maneasseri', 'Dheeraj@gmail.com', 'facilitymanager@gmail.com', 'InfoSec', 'eGIS-VM', '110', '2019-07-22 11:39:00', 0, 21, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW29', 'Karthikeyan, Prasanna', 'Ranjini Sethupathy', 'Karthikeyan@gmail.com', 'facilitymanager@gmail.com', 'InfoSec', 'GISC ', '112', '2019-07-22 11:39:00', 0, 22, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW30', 'Vinood Sham ', 'Karthikeyan, Prasanna', 'Vinood@gmail.com', 'facilitymanager@gmail.com', 'InfoSec', 'GISC -Vormetric/Proofpoint ', '113', '2019-07-22 11:39:00', 0, 23, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW31', 'Kaushik Majumder', 'Ranjini Sethupathy', 'Kaushik@gmail.com', 'facilitymanager@gmail.com', 'InfoSec', 'SPE ePO', '133', '2019-07-22 11:39:00', 0, 24, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW32', 'Kamalkishore Seepana', 'Anupama Srikanth', 'Kamalkishore@gmail.com', 'facilitymanager@gmail.com', 'Infosec', 'eGIS Factory Security', '106', '2019-07-22 11:39:00', 0, 25, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW33', 'Deepali Malekar', 'Prasanna', 'Deepali@gmail.com', 'facilitymanager@gmail.com', 'InfoSec', 'SOMC PT', '129', '2019-07-22 11:39:00', 0, 26, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW34', 'Gokul Babu', 'Prasanna', 'Gokul@gmail.com', 'facilitymanager@gmail.com', 'InfoSec', 'SOMC PT', '129', '2019-07-22 11:39:00', 0, 27, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW35', 'Murugan govindhan', 'Nimish Maneasseri', 'Murugan@gmail.com', 'facilitymanager@gmail.com', 'InfoSec', 'eGIS-PT', '109', '2019-07-22 11:39:00', 0, 28, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW36', ' Ankit kapoor', 'Nimish Maneasseri', 'Ankit@gmail.com', 'facilitymanager@gmail.com', 'InfoSec', 'eGIS-PT', '109', '2019-07-22 11:39:00', 0, 29, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW37', 'Varshini Koila', 'Vishal Chouhan', 'Varshini@gmail.com', 'facilitymanager@gmail.com', 'InfoSec', 'SIE Global', '124', '2019-07-22 11:39:00', 0, 30, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW38', 'Apoorv Magan', 'Vishal Chouhan', 'Apoorv@gmail.com', 'facilitymanager@gmail.com', 'InfoSec', 'SIE E', '125', '2019-07-22 11:39:00', 0, 31, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW39', 'Ranjana Mahadev', 'Vishal Chouhan', 'Ranjana@gmail.com', 'facilitymanager@gmail.com', 'InfoSec', 'SIE E', '125', '2019-07-22 11:39:00', 0, 32, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW40', 'Vikash Pandey', 'Vishal Chouhan', 'Vikash@gmail.com', 'facilitymanager@gmail.com', 'InfoSec', 'SOMC ePO', '126', '2019-07-22 11:39:00', 0, 33, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW41', 'Chaithanya Kasaram', 'Abhijeet Mudaliar', 'Chaithanya@gmail.com', 'facilitymanager@gmail.com', 'Infosec', ' eGIS Vulnerability Management for Infrastructure and End Points', '100', '2019-07-22 11:39:00', 0, 34, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW42', 'Vignesh selvarajan', 'Prasanna', 'Vignesh@gmail.com', 'facilitymanager@gmail.com', 'InfoSec', ' Sony Mobile PT automation & MRP', '130', '2019-07-22 11:39:00', 0, 35, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW43', 'Saroja Muninaga', 'Anand Dwarakanath', 'Saroja@gmail.com', 'facilitymanager@gmail.com', 'Infosec Group B', 'CODE', '101', '2019-07-22 11:39:00', 0, 36, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW44', 'Sudhakar Naguru', 'Anand Dwarakanath', 'Sudhakar@gmail.com', 'facilitymanager@gmail.com', 'Infosec Group B', 'CODE', '101', '2019-07-22 11:39:00', 0, 37, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW45', 'Yashasvi Bali', 'Anand Dwarakanath', 'Yashasvi@gmail.com', 'facilitymanager@gmail.com', 'Infosec Group B', 'CODE', '101', '2019-07-22 11:39:00', 0, 38, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW46', 'Jaydip Vacchani', 'Anand Dwarakanath', 'Jaydip@gmail.com', 'facilitymanager@gmail.com', 'Infosec Group B', 'CODE', '101', '2019-07-22 11:39:00', 0, 39, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW47', 'Muthukumar Natarajan', 'Anand Dwarakanath', 'Muthukumar@gmail.com', 'facilitymanager@gmail.com', 'Infosec Group B', 'CODE', '101', '2019-07-22 11:39:00', 0, 40, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW48', 'Deivachillai Sundarajan', 'Anand Dwarakanath', 'Deivachillai@gmail.com', 'facilitymanager@gmail.com', 'Infosec Group B', 'CODE', '101', '2019-07-22 11:39:00', 0, 41, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW49', 'Senthilkumar Sembunsubramanian', 'Anand Dwarakanath', 'Senthilkumar@gmail.com', 'facilitymanager@gmail.com', 'Infosec Group B', 'CODE', '101', '2019-07-22 11:39:00', 0, 42, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW50', 'Prakash Ramasamy', 'Anand Dwarakanath', 'Prakash@gmail.com', 'facilitymanager@gmail.com', 'Infosec Group B', 'CODE', '101', '2019-07-22 11:39:00', 0, 43, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW51', 'Prabhaharan Nadesan', 'Anand Dwarakanath', 'Prabhaharan@gmail.com', 'facilitymanager@gmail.com', 'Infosec Group B', 'CODE', '101', '2019-07-22 11:39:00', 0, 44, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW52', 'Kavya Avula', 'Anand Dwarakanath', 'Kavya@gmail.com', 'facilitymanager@gmail.com', 'Infosec Group B', 'CODE', '101', '2019-07-22 11:39:00', 0, 45, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW53', 'Smita Patankar', 'Anand Dwarakanath', 'Smita@gmail.com', 'facilitymanager@gmail.com', 'Infosec Group B', 'CODE', '101', '2019-07-22 11:39:00', 0, 46, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW54', 'Manikandan Pachamuthu', 'Anand Dwarakanath', 'Manikandan@gmail.com', 'facilitymanager@gmail.com', 'Infosec Group B', 'CODE', '101', '2019-07-22 11:39:00', 0, 47, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW55', 'Kalaiyarasi Srinivasan', 'Abhijeet Mudaliar', 'Kalaiyarasi@gmail.com', 'facilitymanager@gmail.com', 'Infosec', ' eGIS Vulnerability Management for Infrastructure and End Points', '100', '2019-07-22 11:39:00', 0, 48, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW56', 'Premkumar Gunasekaran', 'Abhijeet Mudaliar', 'Premkumar@gmail.com', 'facilitymanager@gmail.com', 'Infosec', ' eGIS Vulnerability Management for Infrastructure and End Points', '100', '2019-07-22 11:39:00', 0, 49, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW57', 'Gowtham Rengasamy', 'Abhijeet Mudaliar', 'Gowtham@gmail.com', 'facilitymanager@gmail.com', 'Infosec', 'eGIS - Anti-Malware Management & Support', '102', '2019-07-22 11:39:00', 0, 50, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW58', 'Richa Mittal', 'Kaushik Majumder', 'Richa@gmail.com', 'facilitymanager@gmail.com', 'InfoSec', 'Forescout', '111', '2019-07-22 11:39:00', 0, 51, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW59', 'Sai Tadepalli  ', 'Kaushik Majumder', 'Sai@gmail.com', 'facilitymanager@gmail.com', 'Infosec', 'Forescout', '111', '2019-07-22 11:39:00', 0, 52, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW61', 'Pushpendra Yadav', 'Anand Dwarakanath', 'Pushpendra@gmail.com', 'facilitymanager@gmail.com', 'Infosec Group B', 'GISD- Phishing', '115', '2019-07-22 11:39:00', 0, 53, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW62', 'Rupesh Hasthi', 'Anand Dwarakanath', 'Rupesh@gmail.com', 'facilitymanager@gmail.com', 'Infosec Group B', 'GISD- Phishing', '115', '2019-07-22 11:39:00', 0, 54, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW64', 'Nikhil Krishnan', 'Anupama Srikanth', 'Nikhil@gmail.com', 'facilitymanager@gmail.com', 'Infosec', 'eGIS CAT', '105', '2019-07-22 11:39:00', 0, 55, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW65', 'Manu George', 'Anupama Srikanth', 'Manu@gmail.com', 'facilitymanager@gmail.com', 'Infosec', 'eGIS CAT', '105', '2019-07-22 11:39:00', 0, 56, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW67', 'Raghav Kapoor', 'Anand Dwarakanath', 'Raghav@gmail.com', 'facilitymanager@gmail.com', 'Infosec Group B', 'GISD- Phishing', '115', '2019-07-22 11:39:00', 0, 57, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW68', 'Deepinder', 'Anand Dwarakanath', 'Deepinder@gmail.com', 'facilitymanager@gmail.com', 'Infosec Group B', 'GISD- Phishing', '115', '2019-07-22 11:39:00', 0, 58, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW69', 'Dayalan Subramani', 'Abhijeet Mudaliar', 'Dayalan@gmail.com', 'facilitymanager@gmail.com', 'Infosec', 'eGIS - Anti-Malware Management & Support', '102', '2019-07-22 11:39:00', 0, 59, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW70', 'Naresh kumar Kama', 'Abhijeet Mudaliar', 'Naresh @gmail.com', 'facilitymanager@gmail.com', 'Infosec', 'eGIS - Anti-Malware Management & Support', '102', '2019-07-22 11:39:00', 0, 60, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW71', 'Abdullah Kajamohideen', 'Abhijeet Mudaliar', 'Abdullah@gmail.com', 'facilitymanager@gmail.com', 'Infosec', 'eGIS - Anti-Malware Management & Support', '102', '2019-07-22 11:39:00', 0, 61, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW72', 'Premkumar Ramachandran', 'Abhijeet Mudaliar', 'Premkumar@gmail.com', 'facilitymanager@gmail.com', 'Infosec', 'eGIS - Anti-Malware Management & Support', '102', '2019-07-22 11:39:00', 0, 62, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW73', 'Abhijeet Mudaliar', 'Anupama Srikanth', 'Abhijeet@gmail.com', 'facilitymanager@gmail.com', 'Infosec', 'eGIS - Anti-Malware Management & Support', '102', '2019-07-22 11:39:00', 0, 63, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW74', 'Karthick Raja', 'Abhijeet Mudaliar', 'Karthick@gmail.com', 'facilitymanager@gmail.com', 'Infosec', 'eGIS - Anti-Malware Management & Support', '102', '2019-07-22 11:39:00', 0, 64, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW75', 'Shais Younis', 'Abhijeet Mudaliar', 'Shais@gmail.com', 'facilitymanager@gmail.com', 'Infosec', 'eGIS - Anti-Malware Management & Support', '102', '2019-07-22 11:39:00', 0, 65, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW76', 'ArjunKrishna Chelladurai ', 'VInai Gopal', 'ArjunKrishna@gmail.com', 'facilitymanager@gmail.com', 'InfoSec', 'SPE VM', '134', '2019-07-22 11:39:00', 0, 66, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW77', 'Nafia Haq', 'VInai Gopal', 'Nafia@gmail.com', 'facilitymanager@gmail.com', 'InfoSec', 'SPE VM', '134', '2019-07-22 11:39:00', 0, 67, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW78', 'Rahul Singh', 'VInai Gopal', 'Rahul@gmail.com', 'facilitymanager@gmail.com', 'InfoSec', 'SPE VM', '134', '2019-07-22 11:39:00', 0, 68, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW79', 'Nehal Bharath', 'VInai Gopal', 'Nehal@gmail.com', 'facilitymanager@gmail.com', 'InfoSec', 'SPE VM', '134', '2019-07-22 11:39:00', 0, 69, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW80', 'Ganesh Prasad Pavalkodi', 'Kaushik', 'Ganesh @gmail.com', 'facilitymanager@gmail.com', 'InfoSec', 'Vormetrics', '135', '2019-07-22 11:39:00', 0, 70, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW81', 'Ravikumar S', 'Ranjini', 'Ravikumar@gmail.com', 'facilitymanager@gmail.com', 'InfoSec', 'SPC', '131', '2019-07-22 11:39:00', 0, 71, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW82', 'Lohit Margoor', 'Kannan', 'Lohit@gmail.com', 'facilitymanager@gmail.com', 'SISC-Infosec', 'ISJ', '122', '2019-07-22 11:39:00', 0, 72, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW83', 'Vishal Chouhan', 'Kaushik', 'Vishal@gmail.com', 'facilitymanager@gmail.com', 'InfoSec', 'SISC', '128', '2019-07-22 11:39:00', 0, 73, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW84', 'Vivek Maurya', 'VInai Gopal', 'Vivek@gmail.com', 'facilitymanager@gmail.com', 'InfoSec', 'SPE VM', '134', '2019-07-22 11:39:00', 0, 74, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW85', 'Supraja Ramakrishnan', 'VInai Gopal', 'Supraja@gmail.com', 'facilitymanager@gmail.com', 'InfoSec', 'SPE VM', '134', '2019-07-22 11:39:00', 0, 75, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW86', 'Ankit Maslekar', 'VInai Gopal', 'Ankit@gmail.com', 'facilitymanager@gmail.com', 'InfoSec', 'SPE VM', '134', '2019-07-22 11:39:00', 0, 76, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW90', 'Shankar Rajendran', 'Abhijeet Mudaliar', 'Shankar@gmail.com', 'facilitymanager@gmail.com', 'Infosec', 'eGIS - Anti-Malware Management & Support', '102', '2019-07-22 11:39:00', 0, 77, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW91', 'Satisha Prakash', 'Abhijeet Mudaliar', 'Satisha@gmail.com', 'facilitymanager@gmail.com', 'Infosec', 'eGIS - Anti-Malware Management & Support', '102', '2019-07-22 11:39:00', 0, 78, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW092', 'Kalaivanan Murugesan', 'Vinai Gopal', 'Kalaivanan@gmail.com', 'facilitymanager@gmail.com', 'InfoSec', 'SPE ePO', '133', '2019-07-22 11:39:00', 0, 79, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW093', 'Vinai Gopal', 'Kaushik', 'Vinai@gmail.com', 'facilitymanager@gmail.com', 'InfoSec', 'SPE ePO', '133', '2019-07-22 11:39:00', 0, 80, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW94', 'Deepika Govindaiah', 'Vinai Gopal', 'Deepika@gmail.com', 'facilitymanager@gmail.com', 'InfoSec', 'SPE ePO', '133', '2019-07-22 11:39:00', 0, 81, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW95', 'Sai Srujan', 'Vinai Gopal', 'Sai@gmail.com', 'facilitymanager@gmail.com', 'InfoSec', 'SPE ePO', '133', '2019-07-22 11:39:00', 0, 82, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW96', 'Jitendra Gunnam', 'Vinai Gopal', 'Jitendra@gmail.com', 'facilitymanager@gmail.com', 'InfoSec', 'SPE ePO', '133', '2019-07-22 11:39:00', 0, 83, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW097', 'Durga Prasad K A', 'Vinai Gopal', 'Durga@gmail.com', 'facilitymanager@gmail.com', 'InfoSec', 'SPE ePO', '133', '2019-07-22 11:39:00', 0, 84, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW098', 'Christopher Kumar', 'Vinai Gopal', 'Christopher@gmail.com', 'facilitymanager@gmail.com', 'InfoSec', 'SPE ePO', '133', '2019-07-22 11:39:00', 0, 85, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW099', 'Karthik Rani', 'Vinai Gopal', 'Karthik@gmail.com', 'facilitymanager@gmail.com', 'InfoSec', 'SPE ePO', '133', '2019-07-22 11:39:00', 0, 86, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW100', 'Anupama Srikanth', 'Jitendra Puruswani', 'Anupama@gmail.com', 'facilitymanager@gmail.com', 'InfoSec', 'eGIS Ops Manager', '107', '2019-07-22 11:39:00', 0, 87, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW101', 'Prathima Rathnam', 'Kaushik', 'Prathima@gmail.com', 'facilitymanager@gmail.com', 'InfoSec', 'Vormetrics', '135', '2019-07-22 11:39:00', 0, 88, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW102', 'Kannan', 'Anto Telvin', 'Kannan@gmail.com', 'facilitymanager@gmail.com', 'SISC-Infosec', 'ISJ', '122', '2019-07-22 11:39:00', 0, 89, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW103', 'Jitendra Purswani', 'Ranjini', 'Jitendra@gmail.com', 'facilitymanager@gmail.com', 'SISC-Infosec', 'ISJ', '122', '2019-07-22 11:39:00', 0, 90, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW106', 'Paneesha Ramesh', 'Vinai Gopal', 'Paneesha@gmail.com', 'facilitymanager@gmail.com', 'InfoSec', 'SPE ePO', '133', '2019-07-22 11:39:00', 0, 91, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW107', 'Ambavarapu Suryanarayana Reddy', 'Vinai Gopal', 'Ambavarapu@gmail.com', 'facilitymanager@gmail.com', 'InfoSec', 'SPE ePO', '133', '2019-07-22 11:39:00', 0, 92, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW108', 'Aneesh Kanuvadil', 'Vinai Gopal', 'Aneesh@gmail.com', 'facilitymanager@gmail.com', 'InfoSec', 'SPE ePO', '133', '2019-07-22 11:39:00', 0, 93, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW109', 'Sanjeev Peddi Reddi Gari', 'Vinai Gopal', 'Sanjeev  @gmail.com', 'facilitymanager@gmail.com', 'InfoSec', 'SPE ePO', '133', '2019-07-22 11:39:00', 0, 94, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW110', 'Rajpradeep Mohan', 'Vinai Gopal', 'Rajpradeep@gmail.com', 'facilitymanager@gmail.com', 'InfoSec', 'SPE ePO', '133', '2019-07-22 11:39:00', 0, 95, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW111', 'Jithin Saseedharan', 'Vinai Gopal', 'Jithin@gmail.com', 'facilitymanager@gmail.com', 'InfoSec', 'SPE ePO', '133', '2019-07-22 11:39:00', 0, 96, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW114', 'Pranay Choudary', 'Anto Telvin', 'Pranay@gmail.com', 'facilitymanager@gmail.com', 'SISC-Infosec', 'ISJ', '122', '2019-07-22 11:39:00', 0, 97, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW115', 'Appu Narendran', 'Anto Telvin', 'Appu@gmail.com', 'facilitymanager@gmail.com', 'SISC-Infosec', 'ISJ', '122', '2019-07-22 11:39:00', 0, 98, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW116', 'Sreelatha Narayana', 'Anto Telvin', 'Sreelatha@gmail.com', 'facilitymanager@gmail.com', 'SISC-Infosec', 'ISJ', '122', '2019-07-22 11:39:00', 0, 99, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW117', 'Jyothi pani', 'Anto Telvin', 'Jyothi@gmail.com', 'facilitymanager@gmail.com', 'SISC-Infosec', 'ISJ', '122', '2019-07-22 11:39:00', 0, 100, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW118', 'Saurabh Prakash', 'Anto Telvin', 'Saurabh@gmail.com', 'facilitymanager@gmail.com', 'SISC-Infosec', 'ISJ', '122', '2019-07-22 11:39:00', 0, 101, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW119', 'Anto Telvin', 'Jitendra Purswani', 'Anto@gmail.com', 'facilitymanager@gmail.com', 'SISC-Infosec', 'ISJ', '122', '2019-07-22 11:39:00', 0, 102, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW120', 'Anand Dwarakanath', 'Jiten Purswani', 'Anand@gmail.com', 'facilitymanager@gmail.com', 'Infosec Group B', 'GISD', '114', '2019-07-22 11:39:00', 0, 103, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW121', 'Oosman', 'Kannan', 'Oosman@gmail.com', 'facilitymanager@gmail.com', 'SISC-Infosec', 'ISJ', '122', '2019-07-22 11:39:00', 0, 104, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW122', 'Bharati Bhyahatti', 'Anto Telvin', 'Bharati@gmail.com', 'facilitymanager@gmail.com', 'SISC-Infosec', 'ISJ', '122', '2019-07-22 11:39:00', 0, 105, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW123', 'Shyamjith Radhakrishnan', 'Anto Telvin', 'Shyamjith@gmail.com', 'facilitymanager@gmail.com', 'SISC-Infosec', 'ISJ', '122', '2019-07-22 11:39:00', 0, 106, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW124', 'B Bhuvaneswari', 'Anto Telvin', 'Bhuvaneswari@gmail.com', 'facilitymanager@gmail.com', 'SISC-Infosec', 'ISJ', '122', '2019-07-22 11:39:00', 0, 107, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW125', 'Kavitha Ravindran', 'Anto Telvin', 'Kavitha@gmail.com', 'facilitymanager@gmail.com', 'SISC-Infosec', 'ISJ', '122', '2019-07-22 11:39:00', 0, 108, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW126', 'Roshan Laloo', 'Anto Telvin', 'Roshan@gmail.com', 'facilitymanager@gmail.com', 'SISC-Infosec', 'ISJ', '122', '2019-07-22 11:39:00', 0, 109, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW129', 'Amit Singh', 'Anupama Srikanth', 'Amit@gmail.com', 'facilitymanager@gmail.com', 'Infosec', 'eGIS - RM (AP)', '103', '2019-07-22 11:39:00', 0, 110, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW130', 'Anoop Chinmalli', 'Anupama Srikanth', 'Anoop@gmail.com', 'facilitymanager@gmail.com', 'Infosec', 'eGIS - RM (EU)', '104', '2019-07-22 11:39:00', 0, 111, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW131', 'Shilpa Jambulingam', 'Vishal Chouhan', 'Shilpa@gmail.com', 'facilitymanager@gmail.com', 'InfoSec', 'SIE E', '125', '2019-07-22 11:39:00', 0, 112, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW132', 'Rohit Jha', 'Anand Dwarakanath', 'Rohit@gmail.com', 'facilitymanager@gmail.com', 'Infosec Group B', 'GISD - C&M', '116', '2019-07-22 11:39:00', 0, 113, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW133', 'Sriram Kodeppa', 'Anto Telvin', 'Sriram@gmail.com', 'facilitymanager@gmail.com', 'SISC-Infosec', 'ISJ', '122', '2019-07-22 11:39:00', 0, 114, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW134', 'Asam Gopi Reddy', 'Vishal Chouhan', 'Asam @gmail.com', 'facilitymanager@gmail.com', 'InfoSec', 'SIE A', '123', '2019-07-22 11:39:00', 0, 115, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW135', 'Sushma Raj', 'Anto Telvin', 'Sushma@gmail.com', 'facilitymanager@gmail.com', 'SISC-Infosec', 'ISJ', '122', '2019-07-22 11:39:00', 0, 116, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW136', 'Pooja Shree', 'Anto Telvin', 'Pooja@gmail.com', 'facilitymanager@gmail.com', 'SISC-Infosec', 'ISJ', '122', '2019-07-22 11:39:00', 0, 117, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW08', 'Mohan', 'Beena', 'Mohan@gmail.com', 'facilitymanager@gmail.com', 'GDC-Infosec', 'GSIRT-NOC', '120', '2019-07-22 11:39:00', 0, 118, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW08', 'Dilip', 'Beena', 'Dilip@gmail.com', 'facilitymanager@gmail.com', 'GDC-Infosec', 'GSIRT-NOC', '120', '2019-07-22 11:39:00', 0, 119, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW09', 'Harris', 'Beena', 'Harris@gmail.com', 'facilitymanager@gmail.com', 'GDC-Infosec', 'GSIRT-NOC', '120', '2019-07-22 11:39:00', 0, 120, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW09', 'Praveen', 'Beena', 'Praveen@gmail.com', 'facilitymanager@gmail.com', 'GDC-Infosec', 'GSIRT-NOC', '120', '2019-07-22 11:39:00', 0, 121, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW11', 'Kishore', 'Beena', 'Kishore@gmail.com', 'facilitymanager@gmail.com', 'GDC-Infosec', 'GSIRT-NOC', '120', '2019-07-22 11:39:00', 0, 122, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW11', 'Mani', 'Beena', 'Mani@gmail.com', 'facilitymanager@gmail.com', 'GDC-Infosec', 'GSIRT-NOC', '120', '2019-07-22 11:39:00', 0, 123, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW12', 'Chalapathy Naidu', 'Beena', 'Chalapathy@gmail.com', 'facilitymanager@gmail.com', 'GDC-Infosec', 'GSIRT-NOC/GSIRT-Infra', '121', '2019-07-22 11:39:00', 0, 124, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW12', 'Suneel', 'Beena', 'Suneel@gmail.com', 'facilitymanager@gmail.com', 'GDC-Infosec', 'GSIRT-NOC/GSIRT-Infra', '121', '2019-07-22 11:39:00', 0, 125, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW13', 'Sreejith', 'Beena', 'Sreejith@gmail.com', 'facilitymanager@gmail.com', 'GDC-Infosec', 'GSIRT-NOC', '120', '2019-07-22 11:39:00', 0, 126, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW13', 'Vimal', 'Beena', 'Vimal@gmail.com', 'facilitymanager@gmail.com', 'GDC-Infosec', 'GSIRT-NOC', '120', '2019-07-22 11:39:00', 0, 127, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW14', 'Boobalan', 'Beena', 'Boobalan@gmail.com', 'facilitymanager@gmail.com', 'GDC-Infosec', 'GSIRT-NOC', '120', '2019-07-22 11:39:00', 0, 128, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW14', 'Gobi', 'Beena', 'Gobi@gmail.com', 'facilitymanager@gmail.com', 'GDC-Infosec', 'GSIRT-NOC', '120', '2019-07-22 11:39:00', 0, 129, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW15', 'Nayan', 'Beena', 'Nayan@gmail.com', 'facilitymanager@gmail.com', 'GDC-Infosec', 'GSIRT-NOC', '120', '2019-07-22 11:39:00', 0, 130, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW15', 'Srivasthav', 'Beena', 'Srivasthav@gmail.com', 'facilitymanager@gmail.com', 'GDC-Infosec', 'GSIRT-NOC', '120', '2019-07-22 11:39:00', 0, 131, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW60', 'Ramagouda Patil', 'Anand Dwarakanath/Abhijeet Mudaliar', 'Ramagouda@gmail.com', 'facilitymanager@gmail.com', 'Infosec Group B', 'GISD- Phishing/eGIS - Anti-Malware Management & Support', '117', '2019-07-22 11:39:00', 0, 132, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW60', 'Satheeshkumar Ganeshan', 'Anand Dwarakanath/Abhijeet Mudaliar', 'Satheeshkumar@gmail.com', 'facilitymanager@gmail.com', 'Infosec Group B', 'GISD- Phishing/eGIS - Anti-Malware Management & Support', '117', '2019-07-22 11:39:00', 0, 133, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW63', 'Srihari Modepalli', 'Anupama Srikanth/Anand Dwarakanath', 'Srihari@gmail.com', 'facilitymanager@gmail.com', 'Infosec', 'eGIS-Data Analytics/GISD Splunk Support', '108', '2019-07-22 11:39:00', 0, 134, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW63', 'Sampath Bojan', 'Anupama Srikanth/Anand Dwarakanath', 'Sampath@gmail.com', 'facilitymanager@gmail.com', 'Infosec', 'eGIS-Data Analytics/GISD Splunk Support', '108', '2019-07-22 11:39:00', 0, 135, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW63', 'Sai Lalith kumar', 'Anupama Srikanth/Anand Dwarakanath', 'SaiLalith@gmail.com', 'facilitymanager@gmail.com', 'Infosec', 'eGIS-Data Analytics/GISD Splunk Support', '108', '2019-07-22 11:39:00', 0, 136, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW66', 'Chintam Babu', 'Anand Dwarakanath', 'Chintam@gmail.com', 'facilitymanager@gmail.com', 'Infosec Group B', 'GISD Splunk Support', '118', '2019-07-22 11:39:00', 0, 137, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW66', 'Krishanu Das', 'Anand Dwarakanath', 'Krishanu@gmail.com', 'facilitymanager@gmail.com', 'Infosec Group B', 'GISD Splunk Support', '118', '2019-07-22 11:39:00', 0, 138, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW87', 'SaiRam Manda', 'VInai Gopal', 'SaiRam@gmail.com', 'facilitymanager@gmail.com', 'InfoSec', 'SPE VM', '134', '2019-07-22 11:39:00', 0, 139, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW87', 'Srinivas Yeddisetti', 'VInai Gopal', 'Srinivas@gmail.com', 'facilitymanager@gmail.com', 'InfoSec', 'SPE VM', '134', '2019-07-22 11:39:00', 0, 140, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW88', 'Naveena Shivakumara', 'Abhijeet Mudaliar', 'Naveena@gmail.com', 'facilitymanager@gmail.com', 'InfoSec', 'eGIS - Anti-Malware Management & Support', '102', '2019-07-22 11:39:00', 0, 141, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW88', 'Anoop Barthwal', 'Abhijeet Mudaliar', 'Anoop@gmail.com', 'facilitymanager@gmail.com', 'InfoSec', 'eGIS - Anti-Malware Management & Support', '102', '2019-07-22 11:39:00', 0, 142, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW89', 'Asif Thiyyakkandi', 'Abhijeet Mudaliar', 'Asif@gmail.com', 'facilitymanager@gmail.com', 'InfoSec', 'eGIS - Anti-Malware Management & Support', '102', '2019-07-22 11:39:00', 0, 143, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW89', 'Sumeet Khandalkar', 'Abhijeet Mudaliar', 'Sumeet@gmail.com', 'facilitymanager@gmail.com', 'InfoSec', 'eGIS - Anti-Malware Management & Support', '102', '2019-07-22 11:39:00', 0, 144, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW104', 'Chandrashekar Murugan', 'Vinai Gopal', 'Chandrashekar@gmail.com', 'facilitymanager@gmail.com', 'InfoSec', 'SPE ePO', '133', '2019-07-22 11:39:00', 0, 145, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW104', 'Athul Raj', 'Vinai Gopal', 'Athul@gmail.com', 'facilitymanager@gmail.com', 'InfoSec', 'SPE ePO', '133', '2019-07-22 11:39:00', 0, 146, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW105', 'Tejaswi Gowda', 'Vinai Gopal', 'Tejaswi@gmail.com', 'facilitymanager@gmail.com', 'InfoSec', 'SPE ePO', '133', '2019-07-22 11:39:00', 0, 147, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW105', 'Arun Kumar Sampangiramaswamy', 'Vinai Gopal', 'Arun @gmail.com', 'facilitymanager@gmail.com', 'InfoSec', 'SPE ePO', '133', '2019-07-22 11:39:00', 0, 148, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW112', 'DivyaShree Vishwanath', 'Vinai Gopal', 'DivyaShree@gmail.com', 'facilitymanager@gmail.com', 'InfoSec', 'SPE DLP', '132', '2019-07-22 11:39:00', 0, 149, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW112', 'Suhas Bhaskaracharya', 'Vinai Gopal', 'Suhas@gmail.com', 'facilitymanager@gmail.com', 'InfoSec', 'SPE DLP', '132', '2019-07-22 11:39:00', 0, 150, '2019-07-22 11:02:00', 'F5');
INSERT INTO `emp_allocation` (`status`, `subject`, `remarks`, `description`, `request_date`, `workstation_no`, `employee_name`, `reporting_manager`, `request_user_id`, `approval_user_id`, `division`, `project_name`, `project_id`, `insert_timestamp`, `no_resources`, `sno`, `modified_timestamp`, `floor`) VALUES
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW113', 'Kishan Tikandar', 'Vinai Gopal', 'Kishan@gmail.com', 'facilitymanager@gmail.com', 'InfoSec', 'SPE DLP', '132', '2019-07-22 11:39:00', 0, 151, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW113', 'Mathu Phani Kumar', 'Vinai Gopal', 'Mathu @gmail.com', 'facilitymanager@gmail.com', 'InfoSec', 'SPE DLP', '132', '2019-07-22 11:39:00', 0, 152, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW127', 'Shreejit Devarajan', 'Vinai Gopal', 'Shreejit@gmail.com', 'facilitymanager@gmail.com', 'InfoSec', 'SPE DLP', '132', '2019-07-22 11:39:00', 0, 153, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW127', 'Sathish Loganathan', 'Vinai Gopal', 'Sathish@gmail.com', 'facilitymanager@gmail.com', 'InfoSec', 'SPE DLP', '132', '2019-07-22 11:39:00', 0, 154, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW128', 'Tanuj Pandey', 'Vinai Gopal', 'Tanuj@gmail.com', 'facilitymanager@gmail.com', 'InfoSec', 'SPE DLP', '132', '2019-07-22 11:39:00', 0, 155, '2019-07-22 11:02:00', 'F5'),
('request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-23 07:48:05', '5AW128', 'Shrijith Puthran', 'Vinai Gopal', 'Shrijith@gmail.com', 'facilitymanager@gmail.com', 'InfoSec', 'SPE DLP', '132', '2019-07-22 11:39:00', 0, 156, '2019-07-22 11:02:00', 'F5');

-- --------------------------------------------------------

--
-- Table structure for table `floor_details`
--

CREATE TABLE `floor_details` (
  `floor_id` varchar(50) NOT NULL,
  `floor_name` varchar(50) NOT NULL,
  `floor_capacity` bigint(100) NOT NULL,
  `modified_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `floor_details`
--

INSERT INTO `floor_details` (`floor_id`, `floor_name`, `floor_capacity`, `modified_date`) VALUES
('F1', '1st Floor', 100, '2019-07-23 07:46:03'),
('F2', '2nd Floor', 100, '2019-07-23 07:46:03'),
('F3', '3rd Floor', 100, '2019-07-23 07:46:47'),
('F4', '4th Floor', 100, '2019-07-23 07:46:47'),
('F5', '5th Floor', 160, '2019-07-23 07:47:11');

-- --------------------------------------------------------

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
-- Indexes for table `floor_details`
--
ALTER TABLE `floor_details`
  ADD PRIMARY KEY (`floor_id`);

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
