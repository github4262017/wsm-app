-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 03, 2019 at 05:04 AM
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

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `emp_id` varchar(100) NOT NULL,
  `presence_date` date NOT NULL,
  `presence_status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`emp_id`, `presence_date`, `presence_status`) VALUES
('Racheesh@gmail.com', '2019-07-22', 'P'),
('Akarsh', '2019-07-22', 'P'),
('Yashoda@gmail.com', '2019-07-22', 'P'),
('Vinoth@gmail.com', '2019-07-22', 'P'),
('Girish@gmail.com', '2019-07-22', 'P'),
('Vikram@gmail.com', '2019-07-22', 'P'),
('Chetna@gmail.com', '2019-07-22', 'P'),
('Baana', '2019-07-22', 'P'),
('Hemanth@gmail.com', '2019-07-22', 'P'),
('Digvaijay@gmail.com', '2019-07-22', 'P'),
('Mani@gmail.com', '2019-07-22', 'P'),
('Sunagendra@gmail.com', '2019-07-22', 'P'),
('Puja@gmail.com', '2019-07-22', 'P'),
('Asif@gmail.com', '2019-07-22', 'P'),
('Krishna@gmail.com', '2019-07-22', 'P'),
('Raksha@gmail.com', '2019-07-22', 'P'),
('Shivapur@gmail.com', '2019-07-22', 'P'),
('Purushothaman@gmail.com', '2019-07-22', 'P'),
('Nimish@gmail.com', '2019-07-22', 'P'),
('Vijayakumar@gmail.com', '2019-07-22', 'P'),
('Dheeraj@gmail.com', '2019-07-22', 'P'),
('Karthikeyan@gmail.com', '2019-07-22', 'P'),
('Vinood@gmail.com', '2019-07-22', 'P'),
('Kaushik@gmail.com', '2019-07-22', 'P'),
('Kamalkishore@gmail.com', '2019-07-22', 'P'),
('Deepali@gmail.com', '2019-07-22', 'P'),
('Gokul@gmail.com', '2019-07-22', 'P'),
('Murugan@gmail.com', '2019-07-22', 'P'),
('Ankit@gmail.com', '2019-07-22', 'P'),
('Varshini@gmail.com', '2019-07-22', 'P'),
('Apoorv@gmail.com', '2019-07-22', 'P'),
('Ranjana@gmail.com', '2019-07-22', 'P'),
('Vikash@gmail.com', '2019-07-22', 'P'),
('Chaithanya@gmail.com', '2019-07-22', 'P'),
('Vignesh@gmail.com', '2019-07-22', 'P'),
('Saroja@gmail.com', '2019-07-22', 'P'),
('Sudhakar@gmail.com', '2019-07-22', 'P'),
('Yashasvi@gmail.com', '2019-07-22', 'P'),
('Jaydip@gmail.com', '2019-07-22', 'P'),
('Muthukumar@gmail.com', '2019-07-22', 'P'),
('Deivachillai@gmail.com', '2019-07-22', 'P'),
('Senthilkumar@gmail.com', '2019-07-22', 'P'),
('Prakash@gmail.com', '2019-07-22', 'P'),
('Prabhaharan@gmail.com', '2019-07-22', 'P'),
('Kavya@gmail.com', '2019-07-22', 'P'),
('Smita@gmail.com', '2019-07-22', 'P'),
('Manikandan@gmail.com', '2019-07-22', 'P'),
('Kalaiyarasi@gmail.com', '2019-07-22', 'P'),
('Premkumar@gmail.com', '2019-07-22', 'P'),
('Gowtham@gmail.com', '2019-07-22', 'P'),
('Richa@gmail.com', '2019-07-22', 'P'),
('Sai@gmail.com', '2019-07-22', 'P'),
('Pushpendra@gmail.com', '2019-07-22', 'P'),
('Rupesh@gmail.com', '2019-07-22', 'P'),
('Nikhil@gmail.com', '2019-07-22', 'P'),
('Manu@gmail.com', '2019-07-22', 'P'),
('Raghav@gmail.com', '2019-07-22', 'P'),
('Deepinder@gmail.com', '2019-07-22', 'P'),
('Dayalan@gmail.com', '2019-07-22', 'P'),
('Naresh @gmail.com', '2019-07-22', 'P'),
('Abdullah@gmail.com', '2019-07-22', 'P'),
('Premkumar@gmail.com', '2019-07-22', 'P'),
('Abhijeet@gmail.com', '2019-07-22', 'P'),
('Karthick@gmail.com', '2019-07-22', 'P'),
('Shais@gmail.com', '2019-07-22', 'P'),
('ArjunKrishna@gmail.com', '2019-07-22', 'P'),
('Nafia@gmail.com', '2019-07-22', 'P'),
('Rahul@gmail.com', '2019-07-22', 'P'),
('Nehal@gmail.com', '2019-07-22', 'P'),
('Ganesh @gmail.com', '2019-07-22', 'P'),
('Ravikumar@gmail.com', '2019-07-22', 'P'),
('Lohit@gmail.com', '2019-07-22', 'P'),
('Vishal@gmail.com', '2019-07-22', 'P'),
('Vivek@gmail.com', '2019-07-22', 'P'),
('Supraja@gmail.com', '2019-07-22', 'P'),
('Ankit@gmail.com', '2019-07-22', 'P'),
('Shankar@gmail.com', '2019-07-22', 'P'),
('Satisha@gmail.com', '2019-07-22', 'P'),
('Kalaivanan@gmail.com', '2019-07-22', 'P'),
('Vinai@gmail.com', '2019-07-22', 'P'),
('Deepika@gmail.com', '2019-07-22', 'P'),
('Sai@gmail.com', '2019-07-22', 'P'),
('Jitendra@gmail.com', '2019-07-22', 'P'),
('Durga@gmail.com', '2019-07-22', 'P'),
('Christopher@gmail.com', '2019-07-22', 'P'),
('Karthik@gmail.com', '2019-07-22', 'P'),
('Anupama@gmail.com', '2019-07-22', 'P'),
('Prathima@gmail.com', '2019-07-22', 'P'),
('Kannan@gmail.com', '2019-07-22', 'P'),
('Jitendra@gmail.com', '2019-07-22', 'P'),
('Paneesha@gmail.com', '2019-07-22', 'P'),
('Ambavarapu@gmail.com', '2019-07-22', 'P'),
('Aneesh@gmail.com', '2019-07-22', 'P'),
('Sanjeev  @gmail.com', '2019-07-22', 'P'),
('Rajpradeep@gmail.com', '2019-07-22', 'P'),
('Jithin@gmail.com', '2019-07-22', 'P'),
('Pranay@gmail.com', '2019-07-22', 'P'),
('Appu@gmail.com', '2019-07-22', 'P'),
('Sreelatha@gmail.com', '2019-07-22', 'P'),
('Jyothi@gmail.com', '2019-07-22', 'P'),
('Saurabh@gmail.com', '2019-07-22', 'P'),
('Anto@gmail.com', '2019-07-22', 'P'),
('Anand@gmail.com', '2019-07-22', 'P'),
('Oosman@gmail.com', '2019-07-22', 'P'),
('Bharati@gmail.com', '2019-07-22', 'P'),
('Shyamjith@gmail.com', '2019-07-22', 'P'),
('Bhuvaneswari@gmail.com', '2019-07-22', 'P'),
('Kavitha@gmail.com', '2019-07-22', 'P'),
('Roshan@gmail.com', '2019-07-22', 'P'),
('Amit@gmail.com', '2019-07-22', 'P'),
('Anoop@gmail.com', '2019-07-22', 'P'),
('Shilpa@gmail.com', '2019-07-22', 'P'),
('Rohit@gmail.com', '2019-07-22', 'P'),
('Sriram@gmail.com', '2019-07-22', 'P'),
('Asam @gmail.com', '2019-07-22', 'P'),
('Sushma@gmail.com', '2019-07-22', 'P'),
('Pooja@gmail.com', '2019-07-22', 'P'),
('Mohan@gmail.com', '2019-07-22', 'P'),
('Dilip@gmail.com', '2019-07-22', 'P'),
('Harris@gmail.com', '2019-07-22', 'P'),
('Praveen@gmail.com', '2019-07-22', 'P'),
('Kishore@gmail.com', '2019-07-22', 'P'),
('Mani@gmail.com', '2019-07-22', 'P'),
('Chalapathy@gmail.com', '2019-07-22', 'P'),
('Suneel@gmail.com', '2019-07-22', 'P'),
('Sreejith@gmail.com', '2019-07-22', 'P'),
('Vimal@gmail.com', '2019-07-22', 'P'),
('Boobalan@gmail.com', '2019-07-22', 'P'),
('Gobi@gmail.com', '2019-07-22', 'P'),
('Nayan@gmail.com', '2019-07-22', 'P'),
('Srivasthav@gmail.com', '2019-07-22', 'P'),
('Ramagouda@gmail.com', '2019-07-22', 'P'),
('Satheeshkumar@gmail.com', '2019-07-22', 'P'),
('Srihari@gmail.com', '2019-07-22', 'P'),
('Sampath@gmail.com', '2019-07-22', 'P'),
('SaiLalith@gmail.com', '2019-07-22', 'P'),
('Chintam@gmail.com', '2019-07-22', 'P'),
('Krishanu@gmail.com', '2019-07-22', 'P'),
('SaiRam@gmail.com', '2019-07-22', 'P'),
('Srinivas@gmail.com', '2019-07-22', 'P'),
('Naveena@gmail.com', '2019-07-22', 'P'),
('Anoop@gmail.com', '2019-07-22', 'P'),
('Asif@gmail.com', '2019-07-22', 'P'),
('Sumeet@gmail.com', '2019-07-22', 'P'),
('Chandrashekar@gmail.com', '2019-07-22', 'P'),
('Athul@gmail.com', '2019-07-22', 'P'),
('Tejaswi@gmail.com', '2019-07-22', 'P'),
('Arun @gmail.com', '2019-07-22', 'P'),
('DivyaShree@gmail.com', '2019-07-22', 'P'),
('Suhas@gmail.com', '2019-07-22', 'P'),
('Kishan@gmail.com', '2019-07-22', 'P'),
('Mathu @gmail.com', '2019-07-22', 'P'),
('Shreejit@gmail.com', '2019-07-22', 'P'),
('Sathish@gmail.com', '2019-07-22', 'P'),
('Tanuj@gmail.com', '2019-07-22', 'P'),
('Shrijith@gmail.com', '2019-07-22', 'P'),
('Racheesh@gmail.com', '2019-07-23', 'P'),
('Akarsh', '2019-07-23', 'P'),
('Yashoda@gmail.com', '2019-07-23', 'P'),
('Vinoth@gmail.com', '2019-07-23', 'P'),
('Girish@gmail.com', '2019-07-23', 'P'),
('Vikram@gmail.com', '2019-07-23', 'P'),
('Chetna@gmail.com', '2019-07-23', 'P'),
('Baana', '2019-07-23', 'P'),
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
('Racheesh@gmail.com', '2019-07-24', 'P'),
('Akarsh', '2019-07-24', 'P'),
('Yashoda@gmail.com', '2019-07-24', 'P'),
('Vinoth@gmail.com', '2019-07-24', 'P'),
('Girish@gmail.com', '2019-07-24', 'P'),
('Vikram@gmail.com', '2019-07-24', 'P'),
('Chetna@gmail.com', '2019-07-24', 'P'),
('Baana', '2019-07-24', 'P'),
('Hemanth@gmail.com', '2019-07-24', 'P'),
('Digvaijay@gmail.com', '2019-07-24', 'P'),
('Mani@gmail.com', '2019-07-24', 'P'),
('Sunagendra@gmail.com', '2019-07-24', 'P'),
('Puja@gmail.com', '2019-07-24', 'P'),
('Asif@gmail.com', '2019-07-24', 'P'),
('Krishna@gmail.com', '2019-07-24', 'P'),
('Raksha@gmail.com', '2019-07-24', 'P'),
('Shivapur@gmail.com', '2019-07-24', 'P'),
('Purushothaman@gmail.com', '2019-07-24', 'P'),
('Nimish@gmail.com', '2019-07-24', 'P'),
('Vijayakumar@gmail.com', '2019-07-24', 'P'),
('Dheeraj@gmail.com', '2019-07-24', 'P'),
('Karthikeyan@gmail.com', '2019-07-24', 'P'),
('Vinood@gmail.com', '2019-07-24', 'P'),
('Kaushik@gmail.com', '2019-07-24', 'P'),
('Kamalkishore@gmail.com', '2019-07-24', 'P'),
('Deepali@gmail.com', '2019-07-24', 'P'),
('Gokul@gmail.com', '2019-07-24', 'P'),
('Murugan@gmail.com', '2019-07-24', 'P'),
('Ankit@gmail.com', '2019-07-24', 'P'),
('Varshini@gmail.com', '2019-07-24', 'P'),
('Apoorv@gmail.com', '2019-07-24', 'P'),
('Ranjana@gmail.com', '2019-07-24', 'P'),
('Vikash@gmail.com', '2019-07-24', 'P'),
('Chaithanya@gmail.com', '2019-07-24', 'P'),
('Vignesh@gmail.com', '2019-07-24', 'P'),
('Saroja@gmail.com', '2019-07-24', 'P'),
('Sudhakar@gmail.com', '2019-07-24', 'P'),
('Yashasvi@gmail.com', '2019-07-24', 'P'),
('Jaydip@gmail.com', '2019-07-24', 'P'),
('Muthukumar@gmail.com', '2019-07-24', 'P'),
('Deivachillai@gmail.com', '2019-07-24', 'P'),
('Senthilkumar@gmail.com', '2019-07-24', 'P'),
('Prakash@gmail.com', '2019-07-24', 'P'),
('Prabhaharan@gmail.com', '2019-07-24', 'P'),
('Kavya@gmail.com', '2019-07-24', 'P'),
('Smita@gmail.com', '2019-07-24', 'P'),
('Manikandan@gmail.com', '2019-07-24', 'P'),
('Kalaiyarasi@gmail.com', '2019-07-24', 'P'),
('Premkumar@gmail.com', '2019-07-24', 'P'),
('Gowtham@gmail.com', '2019-07-24', 'P'),
('Richa@gmail.com', '2019-07-24', 'P'),
('Sai@gmail.com', '2019-07-24', 'P'),
('Pushpendra@gmail.com', '2019-07-24', 'P'),
('Rupesh@gmail.com', '2019-07-24', 'P'),
('Nikhil@gmail.com', '2019-07-24', 'P'),
('Manu@gmail.com', '2019-07-24', 'P'),
('Raghav@gmail.com', '2019-07-24', 'P'),
('Deepinder@gmail.com', '2019-07-24', 'P'),
('Dayalan@gmail.com', '2019-07-24', 'P'),
('Naresh @gmail.com', '2019-07-24', 'P'),
('Abdullah@gmail.com', '2019-07-24', 'P'),
('Premkumar@gmail.com', '2019-07-24', 'P'),
('Abhijeet@gmail.com', '2019-07-24', 'P'),
('Karthick@gmail.com', '2019-07-24', 'P'),
('Shais@gmail.com', '2019-07-24', 'P'),
('ArjunKrishna@gmail.com', '2019-07-24', 'P'),
('Nafia@gmail.com', '2019-07-24', 'P'),
('Rahul@gmail.com', '2019-07-24', 'P'),
('Nehal@gmail.com', '2019-07-24', 'P'),
('Ganesh @gmail.com', '2019-07-24', 'P'),
('Ravikumar@gmail.com', '2019-07-24', 'P'),
('Lohit@gmail.com', '2019-07-24', 'P'),
('Vishal@gmail.com', '2019-07-24', 'P'),
('Vivek@gmail.com', '2019-07-24', 'P'),
('Supraja@gmail.com', '2019-07-24', 'P'),
('Ankit@gmail.com', '2019-07-24', 'P'),
('Shankar@gmail.com', '2019-07-24', 'P'),
('Satisha@gmail.com', '2019-07-24', 'P'),
('Kalaivanan@gmail.com', '2019-07-24', 'P'),
('Vinai@gmail.com', '2019-07-24', 'P'),
('Deepika@gmail.com', '2019-07-24', 'P'),
('Sai@gmail.com', '2019-07-24', 'P'),
('Jitendra@gmail.com', '2019-07-24', 'P'),
('Durga@gmail.com', '2019-07-24', 'P'),
('Christopher@gmail.com', '2019-07-24', 'P'),
('Karthik@gmail.com', '2019-07-24', 'P'),
('Anupama@gmail.com', '2019-07-24', 'P'),
('Prathima@gmail.com', '2019-07-24', 'P'),
('Kannan@gmail.com', '2019-07-24', 'P'),
('Jitendra@gmail.com', '2019-07-24', 'P'),
('Paneesha@gmail.com', '2019-07-24', 'P'),
('Ambavarapu@gmail.com', '2019-07-24', 'P'),
('Aneesh@gmail.com', '2019-07-24', 'P'),
('Sanjeev  @gmail.com', '2019-07-24', 'P'),
('Rajpradeep@gmail.com', '2019-07-24', 'P'),
('Jithin@gmail.com', '2019-07-24', 'P'),
('Pranay@gmail.com', '2019-07-24', 'P'),
('Appu@gmail.com', '2019-07-24', 'P'),
('Sreelatha@gmail.com', '2019-07-24', 'P'),
('Jyothi@gmail.com', '2019-07-24', 'P'),
('Saurabh@gmail.com', '2019-07-24', 'P'),
('Anto@gmail.com', '2019-07-24', 'P'),
('Anand@gmail.com', '2019-07-24', 'P'),
('Oosman@gmail.com', '2019-07-24', 'P'),
('Bharati@gmail.com', '2019-07-24', 'P'),
('Shyamjith@gmail.com', '2019-07-24', 'P'),
('Bhuvaneswari@gmail.com', '2019-07-24', 'P'),
('Kavitha@gmail.com', '2019-07-24', 'P'),
('Roshan@gmail.com', '2019-07-24', 'P'),
('Amit@gmail.com', '2019-07-24', 'P'),
('Anoop@gmail.com', '2019-07-24', 'P'),
('Shilpa@gmail.com', '2019-07-24', 'P'),
('Rohit@gmail.com', '2019-07-24', 'P'),
('Sriram@gmail.com', '2019-07-24', 'P'),
('Asam @gmail.com', '2019-07-24', 'P'),
('Sushma@gmail.com', '2019-07-24', 'P'),
('Pooja@gmail.com', '2019-07-24', 'P'),
('Mohan@gmail.com', '2019-07-24', 'P'),
('Dilip@gmail.com', '2019-07-24', 'P'),
('Harris@gmail.com', '2019-07-24', 'P'),
('Praveen@gmail.com', '2019-07-24', 'P'),
('Kishore@gmail.com', '2019-07-24', 'P'),
('Mani@gmail.com', '2019-07-24', 'P'),
('Chalapathy@gmail.com', '2019-07-24', 'P'),
('Suneel@gmail.com', '2019-07-24', 'P'),
('Sreejith@gmail.com', '2019-07-24', 'P'),
('Vimal@gmail.com', '2019-07-24', 'P'),
('Boobalan@gmail.com', '2019-07-24', 'P'),
('Gobi@gmail.com', '2019-07-24', 'P'),
('Nayan@gmail.com', '2019-07-24', 'P'),
('Srivasthav@gmail.com', '2019-07-24', 'P'),
('Ramagouda@gmail.com', '2019-07-24', 'P'),
('Satheeshkumar@gmail.com', '2019-07-24', 'P'),
('Srihari@gmail.com', '2019-07-24', 'P'),
('Sampath@gmail.com', '2019-07-24', 'P'),
('Racheesh@gmail.com', '2019-07-25', 'P'),
('Akarsh', '2019-07-25', 'P'),
('Yashoda@gmail.com', '2019-07-25', 'P'),
('Vinoth@gmail.com', '2019-07-25', 'P'),
('Girish@gmail.com', '2019-07-25', 'P'),
('Vikram@gmail.com', '2019-07-25', 'P'),
('Chetna@gmail.com', '2019-07-25', 'P'),
('Baana', '2019-07-25', 'P'),
('Hemanth@gmail.com', '2019-07-25', 'P'),
('Digvaijay@gmail.com', '2019-07-25', 'P'),
('Mani@gmail.com', '2019-07-25', 'P'),
('Sunagendra@gmail.com', '2019-07-25', 'P'),
('Puja@gmail.com', '2019-07-25', 'P'),
('Asif@gmail.com', '2019-07-25', 'P'),
('Krishna@gmail.com', '2019-07-25', 'P'),
('Raksha@gmail.com', '2019-07-25', 'P'),
('Shivapur@gmail.com', '2019-07-25', 'P'),
('Purushothaman@gmail.com', '2019-07-25', 'P'),
('Nimish@gmail.com', '2019-07-25', 'P'),
('Vijayakumar@gmail.com', '2019-07-25', 'P'),
('Dheeraj@gmail.com', '2019-07-25', 'P'),
('Karthikeyan@gmail.com', '2019-07-25', 'P'),
('Vinood@gmail.com', '2019-07-25', 'P'),
('Kaushik@gmail.com', '2019-07-25', 'P'),
('Kamalkishore@gmail.com', '2019-07-25', 'P'),
('Deepali@gmail.com', '2019-07-25', 'P'),
('Gokul@gmail.com', '2019-07-25', 'P'),
('Murugan@gmail.com', '2019-07-25', 'P'),
('Ankit@gmail.com', '2019-07-25', 'P'),
('Varshini@gmail.com', '2019-07-25', 'P'),
('Apoorv@gmail.com', '2019-07-25', 'P'),
('Ranjana@gmail.com', '2019-07-25', 'P'),
('Vikash@gmail.com', '2019-07-25', 'P'),
('Chaithanya@gmail.com', '2019-07-25', 'P'),
('Vignesh@gmail.com', '2019-07-25', 'P'),
('Saroja@gmail.com', '2019-07-25', 'P'),
('Sudhakar@gmail.com', '2019-07-25', 'P'),
('Yashasvi@gmail.com', '2019-07-25', 'P'),
('Jaydip@gmail.com', '2019-07-25', 'P'),
('Muthukumar@gmail.com', '2019-07-25', 'P'),
('Deivachillai@gmail.com', '2019-07-25', 'P'),
('Senthilkumar@gmail.com', '2019-07-25', 'P'),
('Prakash@gmail.com', '2019-07-25', 'P'),
('Prabhaharan@gmail.com', '2019-07-25', 'P'),
('Kavya@gmail.com', '2019-07-25', 'P'),
('Smita@gmail.com', '2019-07-25', 'P'),
('Manikandan@gmail.com', '2019-07-25', 'P'),
('Kalaiyarasi@gmail.com', '2019-07-25', 'P'),
('Premkumar@gmail.com', '2019-07-25', 'P'),
('Gowtham@gmail.com', '2019-07-25', 'P'),
('Richa@gmail.com', '2019-07-25', 'P'),
('Sai@gmail.com', '2019-07-25', 'P'),
('Pushpendra@gmail.com', '2019-07-25', 'P'),
('Rupesh@gmail.com', '2019-07-25', 'P'),
('Nikhil@gmail.com', '2019-07-25', 'P'),
('Manu@gmail.com', '2019-07-25', 'P'),
('Raghav@gmail.com', '2019-07-25', 'P'),
('Deepinder@gmail.com', '2019-07-25', 'P'),
('Dayalan@gmail.com', '2019-07-25', 'P'),
('Naresh @gmail.com', '2019-07-25', 'P'),
('Abdullah@gmail.com', '2019-07-25', 'P'),
('Premkumar@gmail.com', '2019-07-25', 'P'),
('Abhijeet@gmail.com', '2019-07-25', 'P'),
('Karthick@gmail.com', '2019-07-25', 'P'),
('Shais@gmail.com', '2019-07-25', 'P'),
('ArjunKrishna@gmail.com', '2019-07-25', 'P'),
('Nafia@gmail.com', '2019-07-25', 'P'),
('Rahul@gmail.com', '2019-07-25', 'P'),
('Nehal@gmail.com', '2019-07-25', 'P'),
('Ganesh @gmail.com', '2019-07-25', 'P'),
('Ravikumar@gmail.com', '2019-07-25', 'P'),
('Lohit@gmail.com', '2019-07-25', 'P'),
('Vishal@gmail.com', '2019-07-25', 'P'),
('Vivek@gmail.com', '2019-07-25', 'P'),
('Supraja@gmail.com', '2019-07-25', 'P'),
('Ankit@gmail.com', '2019-07-25', 'P'),
('Shankar@gmail.com', '2019-07-25', 'P'),
('Satisha@gmail.com', '2019-07-25', 'P'),
('Kalaivanan@gmail.com', '2019-07-25', 'P'),
('Vinai@gmail.com', '2019-07-25', 'P'),
('Deepika@gmail.com', '2019-07-25', 'P'),
('Sai@gmail.com', '2019-07-25', 'P'),
('Jitendra@gmail.com', '2019-07-25', 'P'),
('Durga@gmail.com', '2019-07-25', 'P'),
('Christopher@gmail.com', '2019-07-25', 'P'),
('Karthik@gmail.com', '2019-07-25', 'P'),
('Anupama@gmail.com', '2019-07-25', 'P'),
('Prathima@gmail.com', '2019-07-25', 'P'),
('Kannan@gmail.com', '2019-07-25', 'P'),
('Jitendra@gmail.com', '2019-07-25', 'P'),
('Paneesha@gmail.com', '2019-07-25', 'P'),
('Ambavarapu@gmail.com', '2019-07-25', 'P'),
('Aneesh@gmail.com', '2019-07-25', 'P'),
('Sanjeev  @gmail.com', '2019-07-25', 'P'),
('Rajpradeep@gmail.com', '2019-07-25', 'P'),
('Jithin@gmail.com', '2019-07-25', 'P'),
('Pranay@gmail.com', '2019-07-25', 'P'),
('Appu@gmail.com', '2019-07-25', 'P'),
('Sreelatha@gmail.com', '2019-07-25', 'P'),
('Jyothi@gmail.com', '2019-07-25', 'P'),
('Saurabh@gmail.com', '2019-07-25', 'P'),
('Anto@gmail.com', '2019-07-25', 'P'),
('Anand@gmail.com', '2019-07-25', 'P'),
('Oosman@gmail.com', '2019-07-25', 'P'),
('Bharati@gmail.com', '2019-07-25', 'P'),
('Shyamjith@gmail.com', '2019-07-25', 'P'),
('Bhuvaneswari@gmail.com', '2019-07-25', 'P'),
('Kavitha@gmail.com', '2019-07-25', 'P'),
('Roshan@gmail.com', '2019-07-25', 'P'),
('Amit@gmail.com', '2019-07-25', 'P'),
('Anoop@gmail.com', '2019-07-25', 'P'),
('Shilpa@gmail.com', '2019-07-25', 'P'),
('Rohit@gmail.com', '2019-07-25', 'P'),
('Sriram@gmail.com', '2019-07-25', 'P'),
('Asam @gmail.com', '2019-07-25', 'P'),
('Sushma@gmail.com', '2019-07-25', 'P'),
('Pooja@gmail.com', '2019-07-25', 'P'),
('Mohan@gmail.com', '2019-07-25', 'P'),
('Dilip@gmail.com', '2019-07-25', 'P'),
('Harris@gmail.com', '2019-07-25', 'P'),
('Praveen@gmail.com', '2019-07-25', 'P'),
('Kishore@gmail.com', '2019-07-25', 'P'),
('Mani@gmail.com', '2019-07-25', 'P'),
('Chalapathy@gmail.com', '2019-07-25', 'P'),
('Racheesh@gmail.com', '2019-07-26', 'P'),
('Akarsh', '2019-07-26', 'P'),
('Yashoda@gmail.com', '2019-07-26', 'P'),
('Vinoth@gmail.com', '2019-07-26', 'P'),
('Girish@gmail.com', '2019-07-26', 'P'),
('Vikram@gmail.com', '2019-07-26', 'P'),
('Chetna@gmail.com', '2019-07-26', 'P'),
('Baana', '2019-07-26', 'P'),
('Hemanth@gmail.com', '2019-07-26', 'P'),
('Digvaijay@gmail.com', '2019-07-26', 'P'),
('Mani@gmail.com', '2019-07-26', 'P'),
('Sunagendra@gmail.com', '2019-07-26', 'P'),
('Puja@gmail.com', '2019-07-26', 'P'),
('Asif@gmail.com', '2019-07-26', 'P'),
('Krishna@gmail.com', '2019-07-26', 'P'),
('Raksha@gmail.com', '2019-07-26', 'P'),
('Shivapur@gmail.com', '2019-07-26', 'P'),
('Purushothaman@gmail.com', '2019-07-26', 'P'),
('Nimish@gmail.com', '2019-07-26', 'P'),
('Vijayakumar@gmail.com', '2019-07-26', 'P'),
('Dheeraj@gmail.com', '2019-07-26', 'P'),
('Karthikeyan@gmail.com', '2019-07-26', 'P'),
('Vinood@gmail.com', '2019-07-26', 'P'),
('Kaushik@gmail.com', '2019-07-26', 'P'),
('Kamalkishore@gmail.com', '2019-07-26', 'P'),
('Deepali@gmail.com', '2019-07-26', 'P'),
('Gokul@gmail.com', '2019-07-26', 'P'),
('Murugan@gmail.com', '2019-07-26', 'P'),
('Ankit@gmail.com', '2019-07-26', 'P'),
('Varshini@gmail.com', '2019-07-26', 'P'),
('Apoorv@gmail.com', '2019-07-26', 'P'),
('Ranjana@gmail.com', '2019-07-26', 'P'),
('Vikash@gmail.com', '2019-07-26', 'P'),
('Chaithanya@gmail.com', '2019-07-26', 'P'),
('Vignesh@gmail.com', '2019-07-26', 'P'),
('Saroja@gmail.com', '2019-07-26', 'P'),
('Sudhakar@gmail.com', '2019-07-26', 'P'),
('Yashasvi@gmail.com', '2019-07-26', 'P'),
('Jaydip@gmail.com', '2019-07-26', 'P'),
('Muthukumar@gmail.com', '2019-07-26', 'P'),
('Deivachillai@gmail.com', '2019-07-26', 'P'),
('Senthilkumar@gmail.com', '2019-07-26', 'P'),
('Prakash@gmail.com', '2019-07-26', 'P'),
('Prabhaharan@gmail.com', '2019-07-26', 'P'),
('Kavya@gmail.com', '2019-07-26', 'P'),
('Smita@gmail.com', '2019-07-26', 'P'),
('Manikandan@gmail.com', '2019-07-26', 'P'),
('Kalaiyarasi@gmail.com', '2019-07-26', 'P'),
('Premkumar@gmail.com', '2019-07-26', 'P'),
('Gowtham@gmail.com', '2019-07-26', 'P'),
('Richa@gmail.com', '2019-07-26', 'P'),
('Sai@gmail.com', '2019-07-26', 'P'),
('Pushpendra@gmail.com', '2019-07-26', 'P'),
('Rupesh@gmail.com', '2019-07-26', 'P'),
('Nikhil@gmail.com', '2019-07-26', 'P'),
('Manu@gmail.com', '2019-07-26', 'P'),
('Raghav@gmail.com', '2019-07-26', 'P'),
('Deepinder@gmail.com', '2019-07-26', 'P'),
('Dayalan@gmail.com', '2019-07-26', 'P'),
('Naresh @gmail.com', '2019-07-26', 'P'),
('Abdullah@gmail.com', '2019-07-26', 'P'),
('Premkumar@gmail.com', '2019-07-26', 'P'),
('Abhijeet@gmail.com', '2019-07-26', 'P'),
('Karthick@gmail.com', '2019-07-26', 'P'),
('Shais@gmail.com', '2019-07-26', 'P'),
('ArjunKrishna@gmail.com', '2019-07-26', 'P'),
('Nafia@gmail.com', '2019-07-26', 'P'),
('Rahul@gmail.com', '2019-07-26', 'P'),
('Nehal@gmail.com', '2019-07-26', 'P'),
('Ganesh @gmail.com', '2019-07-26', 'P'),
('Ravikumar@gmail.com', '2019-07-26', 'P'),
('Lohit@gmail.com', '2019-07-26', 'P'),
('Vishal@gmail.com', '2019-07-26', 'P'),
('Vivek@gmail.com', '2019-07-26', 'P'),
('Supraja@gmail.com', '2019-07-26', 'P'),
('Ankit@gmail.com', '2019-07-26', 'P'),
('Shankar@gmail.com', '2019-07-26', 'P'),
('Satisha@gmail.com', '2019-07-26', 'P'),
('Kalaivanan@gmail.com', '2019-07-26', 'P'),
('Vinai@gmail.com', '2019-07-26', 'P'),
('Deepika@gmail.com', '2019-07-26', 'P'),
('Sai@gmail.com', '2019-07-26', 'P'),
('Jitendra@gmail.com', '2019-07-26', 'P'),
('Durga@gmail.com', '2019-07-26', 'P'),
('Christopher@gmail.com', '2019-07-26', 'P'),
('Karthik@gmail.com', '2019-07-26', 'P'),
('Anupama@gmail.com', '2019-07-26', 'P'),
('Prathima@gmail.com', '2019-07-26', 'P'),
('Kannan@gmail.com', '2019-07-26', 'P'),
('Jitendra@gmail.com', '2019-07-26', 'P'),
('Paneesha@gmail.com', '2019-07-26', 'P'),
('Ambavarapu@gmail.com', '2019-07-26', 'P'),
('Aneesh@gmail.com', '2019-07-26', 'P'),
('Sanjeev  @gmail.com', '2019-07-26', 'P'),
('Rajpradeep@gmail.com', '2019-07-26', 'P'),
('Jithin@gmail.com', '2019-07-26', 'P'),
('Pranay@gmail.com', '2019-07-26', 'P'),
('Appu@gmail.com', '2019-07-26', 'P'),
('Sreelatha@gmail.com', '2019-07-26', 'P'),
('Jyothi@gmail.com', '2019-07-26', 'P'),
('Saurabh@gmail.com', '2019-07-26', 'P'),
('Anto@gmail.com', '2019-07-26', 'P'),
('Anand@gmail.com', '2019-07-26', 'P'),
('Oosman@gmail.com', '2019-07-26', 'P'),
('Bharati@gmail.com', '2019-07-26', 'P'),
('Shyamjith@gmail.com', '2019-07-26', 'P'),
('Bhuvaneswari@gmail.com', '2019-07-26', 'P'),
('Kavitha@gmail.com', '2019-07-26', 'P'),
('Roshan@gmail.com', '2019-07-26', 'P'),
('Amit@gmail.com', '2019-07-26', 'P'),
('Anoop@gmail.com', '2019-07-26', 'P'),
('Shilpa@gmail.com', '2019-07-26', 'P'),
('Rohit@gmail.com', '2019-07-26', 'P'),
('Sriram@gmail.com', '2019-07-26', 'P'),
('Asam @gmail.com', '2019-07-26', 'P'),
('Sushma@gmail.com', '2019-07-26', 'P'),
('Pooja@gmail.com', '2019-07-26', 'P'),
('Mohan@gmail.com', '2019-07-26', 'P'),
('Dilip@gmail.com', '2019-07-26', 'P'),
('Harris@gmail.com', '2019-07-26', 'P'),
('Praveen@gmail.com', '2019-07-26', 'P'),
('Kishore@gmail.com', '2019-07-26', 'P'),
('Mani@gmail.com', '2019-07-26', 'P'),
('Chalapathy@gmail.com', '2019-07-26', 'P');

-- --------------------------------------------------------

--
-- Table structure for table `emp_allocation`
--

CREATE TABLE `emp_allocation` (
  `id` int(5) NOT NULL,
  `status` varchar(100) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `remarks` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `request_date` date NOT NULL,
  `workstation_no` varchar(10) NOT NULL,
  `emp_name` varchar(100) NOT NULL,
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

INSERT INTO `emp_allocation` (`id`, `status`, `subject`, `remarks`, `description`, `request_date`, `workstation_no`, `emp_name`, `reporting_manager`, `request_user_id`, `approval_user_id`, `division`, `project_name`, `project_id`, `insert_timestamp`, `no_resources`, `sno`, `modified_timestamp`, `floor`) VALUES
(1, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW01', 'Racheesh K', 'Sunagendra', 'Racheesh@gmail.com', 'facilitymanager@gmail.com', 'GDC-Infosec', 'Forescout', '111', '2019-07-22 06:09:00', 0, 1, '2019-07-22 05:32:00', 'F5'),
(2, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW02', 'Akarsh S', 'Sunagendra', 'Akarsh@gmail.com', 'facilitymanager@gmail.com', 'GDC-Infosec', 'Forescout', '111', '2019-07-22 06:09:00', 0, 2, '2019-07-22 05:32:00', 'F5'),
(3, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW03', 'Yashoda B Rao', 'Sunagendra', 'Yashoda@gmail.com', 'facilitymanager@gmail.com', 'GDC-Infosec', 'Forescout', '111', '2019-07-22 06:09:00', 0, 3, '2019-07-22 05:32:00', 'F5'),
(4, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW04', 'Vinoth S', 'Sunagendra', 'Vinoth@gmail.com', 'facilitymanager@gmail.com', 'GDC-Infosec', 'Forescout', '111', '2019-07-22 06:09:00', 0, 4, '2019-07-22 05:32:00', 'F5'),
(5, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW05', 'Girish Kumar', 'Sunagendra', 'Girish@gmail.com', 'facilitymanager@gmail.com', 'GDC-Infosec', 'Forescout', '111', '2019-07-22 06:09:00', 0, 5, '2019-07-22 05:32:00', 'F5'),
(6, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW06', 'Vikram', 'Beena', 'Vikram@gmail.com', 'facilitymanager@gmail.com', 'GDC-Infosec', 'GSIRT-Infra', '119', '2019-07-22 06:09:00', 0, 6, '2019-07-22 05:32:00', 'F5'),
(7, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW07', 'Chetna', 'Beena', 'Chetna@gmail.com', 'facilitymanager@gmail.com', 'GDC-Infosec', 'GSIRT-NOC', '120', '2019-07-22 06:09:00', 0, 7, '2019-07-22 05:32:00', 'F5'),
(8, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW10', 'Beena', 'Beena', 'Baana@gmail.com', 'facilitymanager@gmail.com', 'GDC-Infosec', 'GSIRT-NOC', '120', '2019-07-22 06:09:00', 0, 8, '2019-07-22 05:32:00', 'F5'),
(9, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW16', 'Hemanth', 'Beena', 'Hemanth@gmail.com', 'facilitymanager@gmail.com', 'GDC-Infosec', 'GSIRT-NOC', '120', '2019-07-22 06:09:00', 0, 9, '2019-07-22 05:32:00', 'F5'),
(10, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW17', 'Digvaijay Kaintura', 'Sunagendra', 'Digvaijay@gmail.com', 'facilitymanager@gmail.com', 'GDC-Infosec', 'Forescout', '111', '2019-07-22 06:09:00', 0, 10, '2019-07-22 05:32:00', 'F5'),
(11, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW18', 'Mani Palaniyapillai', 'Sunagendra', 'Mani@gmail.com', 'facilitymanager@gmail.com', 'GDC-Infosec', 'Forescout', '111', '2019-07-22 06:09:00', 0, 11, '2019-07-22 05:32:00', 'F5'),
(12, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW19', 'Sunagendra', 'Prasanna', 'Sunagendra@gmail.com', 'facilitymanager@gmail.com', 'GDC-Infosec', 'Forescout', '111', '2019-07-22 06:09:00', 0, 12, '2019-07-22 05:32:00', 'F5'),
(13, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW20', 'Puja Ghosh', 'Prasanna', 'Puja@gmail.com', 'facilitymanager@gmail.com', 'GDC-Infosec', 'Forescout', '111', '2019-07-22 06:09:00', 0, 13, '2019-07-22 05:32:00', 'F5'),
(14, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW21', 'Asif Madasanal', 'Vishal Chouhan', 'Asif@gmail.com', 'facilitymanager@gmail.com', 'InfoSec', 'SOMC ePO', '126', '2019-07-22 06:09:00', 0, 14, '2019-07-22 05:32:00', 'F5'),
(15, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW22', 'Krishna PriyaDarshini', 'Vishal Chouhan', 'Krishna@gmail.com', 'facilitymanager@gmail.com', 'InfoSec', 'SME Splunk & NSRA', '127', '2019-07-22 06:09:00', 0, 15, '2019-07-22 05:32:00', 'F5'),
(16, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW23', 'Raksha Shetty', 'Vishal Chouhan', 'Raksha@gmail.com', 'facilitymanager@gmail.com', 'InfoSec', 'SIE E', '125', '2019-07-22 06:09:00', 0, 16, '2019-07-22 05:32:00', 'F5'),
(17, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW24', 'Shivapur chowdareddy', 'Vishal Chouhan', 'Shivapur@gmail.com', 'facilitymanager@gmail.com', 'InfoSec', 'SIE E', '125', '2019-07-22 06:09:00', 0, 17, '2019-07-22 05:32:00', 'F5'),
(18, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW25', 'Purushothaman govindasamy', 'Nimish Maneasseri', 'Purushothaman@gmail.com', 'facilitymanager@gmail.com', 'InfoSec', 'eGIS-PT', '109', '2019-07-22 06:09:00', 0, 18, '2019-07-22 05:32:00', 'F5'),
(19, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW26', 'Nimish maneasseri', 'Anupama srikanth', 'Nimish@gmail.com', 'facilitymanager@gmail.com', 'InfoSec', 'eGIS-PT', '109', '2019-07-22 06:09:00', 0, 19, '2019-07-22 05:32:00', 'F5'),
(20, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW27', 'Vijayakumar kemmanakeri', 'Nimish Maneasseri', 'Vijayakumar@gmail.com', 'facilitymanager@gmail.com', 'InfoSec', 'eGIS-VM', '110', '2019-07-22 06:09:00', 0, 20, '2019-07-22 05:32:00', 'F5'),
(21, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW28', 'Dheeraj sai karnatakam', 'Nimish Maneasseri', 'Dheeraj@gmail.com', 'facilitymanager@gmail.com', 'InfoSec', 'eGIS-VM', '110', '2019-07-22 06:09:00', 0, 21, '2019-07-22 05:32:00', 'F5'),
(22, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW29', 'Karthikeyan, Prasanna', 'Ranjini Sethupathy', 'Karthikeyan@gmail.com', 'facilitymanager@gmail.com', 'InfoSec', 'GISC ', '112', '2019-07-22 06:09:00', 0, 22, '2019-07-22 05:32:00', 'F5'),
(23, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW30', 'Vinood Sham ', 'Karthikeyan, Prasanna', 'Vinood@gmail.com', 'facilitymanager@gmail.com', 'InfoSec', 'GISC -Vormetric/Proofpoint ', '113', '2019-07-22 06:09:00', 0, 23, '2019-07-22 05:32:00', 'F5'),
(24, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW31', 'Kaushik Majumder', 'Ranjini Sethupathy', 'Kaushik@gmail.com', 'facilitymanager@gmail.com', 'InfoSec', 'SPE ePO', '133', '2019-07-22 06:09:00', 0, 24, '2019-07-22 05:32:00', 'F5'),
(25, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW32', 'Kamalkishore Seepana', 'Anupama Srikanth', 'Kamalkishore@gmail.com', 'facilitymanager@gmail.com', 'Infosec', 'eGIS Factory Security', '106', '2019-07-22 06:09:00', 0, 25, '2019-07-22 05:32:00', 'F5'),
(26, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW33', 'Deepali Malekar', 'Prasanna', 'Deepali@gmail.com', 'facilitymanager@gmail.com', 'InfoSec', 'SOMC PT', '129', '2019-07-22 06:09:00', 0, 26, '2019-07-22 05:32:00', 'F5'),
(27, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW34', 'Gokul Babu', 'Prasanna', 'Gokul@gmail.com', 'facilitymanager@gmail.com', 'InfoSec', 'SOMC PT', '129', '2019-07-22 06:09:00', 0, 27, '2019-07-22 05:32:00', 'F5'),
(28, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW35', 'Murugan govindhan', 'Nimish Maneasseri', 'Murugan@gmail.com', 'facilitymanager@gmail.com', 'InfoSec', 'eGIS-PT', '109', '2019-07-22 06:09:00', 0, 28, '2019-07-22 05:32:00', 'F5'),
(29, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW36', ' Ankit kapoor', 'Nimish Maneasseri', 'Ankit@gmail.com', 'facilitymanager@gmail.com', 'InfoSec', 'eGIS-PT', '109', '2019-07-22 06:09:00', 0, 29, '2019-07-22 05:32:00', 'F5'),
(30, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW37', 'Varshini Koila', 'Vishal Chouhan', 'Varshini@gmail.com', 'facilitymanager@gmail.com', 'InfoSec', 'SIE Global', '124', '2019-07-22 06:09:00', 0, 30, '2019-07-22 05:32:00', 'F5'),
(31, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW38', 'Apoorv Magan', 'Vishal Chouhan', 'Apoorv@gmail.com', 'facilitymanager@gmail.com', 'InfoSec', 'SIE E', '125', '2019-07-22 06:09:00', 0, 31, '2019-07-22 05:32:00', 'F5'),
(32, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW39', 'Ranjana Mahadev', 'Vishal Chouhan', 'Ranjana@gmail.com', 'facilitymanager@gmail.com', 'InfoSec', 'SIE E', '125', '2019-07-22 06:09:00', 0, 32, '2019-07-22 05:32:00', 'F5'),
(33, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW40', 'Vikash Pandey', 'Vishal Chouhan', 'Vikash@gmail.com', 'facilitymanager@gmail.com', 'InfoSec', 'SOMC ePO', '126', '2019-07-22 06:09:00', 0, 33, '2019-07-22 05:32:00', 'F5'),
(34, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '1AW01', 'Chaithanya Kasaram', 'Abhijeet Mudaliar', 'Chaithanya@gmail.com', 'facilitymanager@gmail.com', 'Infosec', ' eGIS Vulnerability Management for Infrastructure and End Points', '100', '2019-07-22 06:09:00', 0, 34, '2019-07-22 05:32:00', 'F5'),
(35, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW42', 'Vignesh selvarajan', 'Prasanna', 'Vignesh@gmail.com', 'facilitymanager@gmail.com', 'InfoSec', ' Sony Mobile PT automation & MRP', '130', '2019-07-22 06:09:00', 0, 35, '2019-07-22 05:32:00', 'F5'),
(36, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '1AW04', 'Saroja Muninaga', 'Anand Dwarakanath', 'Saroja@gmail.com', 'facilitymanager@gmail.com', 'Infosec Group B', 'CODE', '101', '2019-07-22 06:09:00', 0, 36, '2019-07-22 05:32:00', 'F5'),
(37, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '1AW14', 'Sudhakar Naguru', 'Anand Dwarakanath', 'Sudhakar@gmail.com', 'facilitymanager@gmail.com', 'Infosec Group B', 'CODE', '101', '2019-07-22 06:09:00', 0, 37, '2019-07-22 05:32:00', 'F5'),
(38, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '1AW15', 'Yashasvi Bali', 'Anand Dwarakanath', 'Yashasvi@gmail.com', 'facilitymanager@gmail.com', 'Infosec Group B', 'CODE', '101', '2019-07-22 06:09:00', 0, 38, '2019-07-22 05:32:00', 'F5'),
(39, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW46', 'Jaydip Vacchani', 'Anand Dwarakanath', 'Jaydip@gmail.com', 'facilitymanager@gmail.com', 'Infosec Group B', 'CODE', '101', '2019-07-22 06:09:00', 0, 39, '2019-07-22 05:32:00', 'F5'),
(40, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '1AW10', 'Muthukumar Natarajan', 'Anand Dwarakanath', 'Muthukumar@gmail.com', 'facilitymanager@gmail.com', 'Infosec Group B', 'CODE', '101', '2019-07-22 06:09:00', 0, 40, '2019-07-22 05:32:00', 'F5'),
(41, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '1AW12', 'Deivachillai Sundarajan', 'Anand Dwarakanath', 'Deivachillai@gmail.com', 'facilitymanager@gmail.com', 'Infosec Group B', 'CODE', '101', '2019-07-22 06:09:00', 0, 41, '2019-07-22 05:32:00', 'F5'),
(42, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW49', 'Senthilkumar Sembunsubramanian', 'Anand Dwarakanath', 'Senthilkumar@gmail.com', 'facilitymanager@gmail.com', 'Infosec Group B', 'CODE', '101', '2019-07-22 06:09:00', 0, 42, '2019-07-22 05:32:00', 'F5'),
(43, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '1AW05', 'Prakash Ramasamy', 'Anand Dwarakanath', 'Prakash@gmail.com', 'facilitymanager@gmail.com', 'Infosec Group B', 'CODE', '101', '2019-07-22 06:09:00', 0, 43, '2019-07-22 05:32:00', 'F5'),
(44, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '1AW11', 'Prabhaharan Nadesan', 'Anand Dwarakanath', 'Prabhaharan@gmail.com', 'facilitymanager@gmail.com', 'Infosec Group B', 'CODE', '101', '2019-07-22 06:09:00', 0, 44, '2019-07-22 05:32:00', 'F5'),
(45, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW52', 'Kavya Avula', 'Anand Dwarakanath', 'Kavya@gmail.com', 'facilitymanager@gmail.com', 'Infosec Group B', 'CODE', '101', '2019-07-22 06:09:00', 0, 45, '2019-07-22 05:32:00', 'F5'),
(46, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '1AW13', 'Smita Patankar', 'Anand Dwarakanath', 'Smita@gmail.com', 'facilitymanager@gmail.com', 'Infosec Group B', 'CODE', '101', '2019-07-22 06:09:00', 0, 46, '2019-07-22 05:32:00', 'F5'),
(47, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '1AW16', 'Manikandan Pachamuthu', 'Anand Dwarakanath', 'Manikandan@gmail.com', 'facilitymanager@gmail.com', 'Infosec Group B', 'CODE', '101', '2019-07-22 06:09:00', 0, 47, '2019-07-22 05:32:00', 'F5'),
(48, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '1AW02', 'Kalaiyarasi Srinivasan', 'Abhijeet Mudaliar', 'Kalaiyarasi@gmail.com', 'facilitymanager@gmail.com', 'Infosec', ' eGIS Vulnerability Management for Infrastructure and End Points', '100', '2019-07-22 06:09:00', 0, 48, '2019-07-22 05:32:00', 'F5'),
(49, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '1AW03', 'Premkumar Gunasekaran', 'Abhijeet Mudaliar', 'Premkumar@gmail.com', 'facilitymanager@gmail.com', 'Infosec', ' eGIS Vulnerability Management for Infrastructure and End Points', '100', '2019-07-22 06:09:00', 0, 49, '2019-07-22 05:32:00', 'F5'),
(50, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '1AW08', 'Gowtham Rengasamy', 'Abhijeet Mudaliar', 'Gowtham@gmail.com', 'facilitymanager@gmail.com', 'Infosec', 'eGIS - Anti-Malware Management & Support', '102', '2019-07-22 06:09:00', 0, 50, '2019-07-22 05:32:00', 'F5'),
(51, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW58', 'Richa Mittal', 'Kaushik Majumder', 'Richa@gmail.com', 'facilitymanager@gmail.com', 'InfoSec', 'Forescout', '111', '2019-07-22 06:09:00', 0, 51, '2019-07-22 05:32:00', 'F5'),
(52, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW59', 'Sai Tadepalli  ', 'Kaushik Majumder', 'Sai@gmail.com', 'facilitymanager@gmail.com', 'Infosec', 'Forescout', '111', '2019-07-22 06:09:00', 0, 52, '2019-07-22 05:32:00', 'F5'),
(53, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW61', 'Pushpendra Yadav', 'Anand Dwarakanath', 'Pushpendra@gmail.com', 'facilitymanager@gmail.com', 'Infosec Group B', 'GISD- Phishing', '115', '2019-07-22 06:09:00', 0, 53, '2019-07-22 05:32:00', 'F5'),
(54, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW62', 'Rupesh Hasthi', 'Anand Dwarakanath', 'Rupesh@gmail.com', 'facilitymanager@gmail.com', 'Infosec Group B', 'GISD- Phishing', '115', '2019-07-22 06:09:00', 0, 54, '2019-07-22 05:32:00', 'F5'),
(55, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW64', 'Nikhil Krishnan', 'Anupama Srikanth', 'Nikhil@gmail.com', 'facilitymanager@gmail.com', 'Infosec', 'eGIS CAT', '105', '2019-07-22 06:09:00', 0, 55, '2019-07-22 05:32:00', 'F5'),
(56, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW65', 'Manu George', 'Anupama Srikanth', 'Manu@gmail.com', 'facilitymanager@gmail.com', 'Infosec', 'eGIS CAT', '105', '2019-07-22 06:09:00', 0, 56, '2019-07-22 05:32:00', 'F5'),
(57, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW67', 'Raghav Kapoor', 'Anand Dwarakanath', 'Raghav@gmail.com', 'facilitymanager@gmail.com', 'Infosec Group B', 'GISD- Phishing', '115', '2019-07-22 06:09:00', 0, 57, '2019-07-22 05:32:00', 'F5'),
(58, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW68', 'Deepinder', 'Anand Dwarakanath', 'Deepinder@gmail.com', 'facilitymanager@gmail.com', 'Infosec Group B', 'GISD- Phishing', '115', '2019-07-22 06:09:00', 0, 58, '2019-07-22 05:32:00', 'F5'),
(59, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '1AW06', 'Dayalan Subramani', 'Abhijeet Mudaliar', 'Dayalan@gmail.com', 'facilitymanager@gmail.com', 'Infosec', 'eGIS - Anti-Malware Management & Support', '102', '2019-07-22 06:09:00', 0, 59, '2019-07-22 05:32:00', 'F5'),
(60, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW70', 'Naresh kumar Kama', 'Abhijeet Mudaliar', 'Naresh @gmail.com', 'facilitymanager@gmail.com', 'Infosec', 'eGIS - Anti-Malware Management & Support', '102', '2019-07-22 06:09:00', 0, 60, '2019-07-22 05:32:00', 'F5'),
(61, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW71', 'Abdullah Kajamohideen', 'Abhijeet Mudaliar', 'Abdullah@gmail.com', 'facilitymanager@gmail.com', 'Infosec', 'eGIS - Anti-Malware Management & Support', '102', '2019-07-22 06:09:00', 0, 61, '2019-07-22 05:32:00', 'F5'),
(62, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '1AW18', 'Premkumar Ramachandran', 'Abhijeet Mudaliar', 'Premkumar@gmail.com', 'facilitymanager@gmail.com', 'Infosec', 'eGIS - Anti-Malware Management & Support', '102', '2019-07-22 06:09:00', 0, 62, '2019-07-22 05:32:00', 'F5'),
(63, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW73', 'Abhijeet Mudaliar', 'Anupama Srikanth', 'Abhijeet@gmail.com', 'facilitymanager@gmail.com', 'Infosec', 'eGIS - Anti-Malware Management & Support', '102', '2019-07-22 06:09:00', 0, 63, '2019-07-22 05:32:00', 'F5'),
(64, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW74', 'Karthick Raja', 'Abhijeet Mudaliar', 'Karthick@gmail.com', 'facilitymanager@gmail.com', 'Infosec', 'eGIS - Anti-Malware Management & Support', '102', '2019-07-22 06:09:00', 0, 64, '2019-07-22 05:32:00', 'F5'),
(65, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '1AW17', 'Shais Younis', 'Abhijeet Mudaliar', 'Shais@gmail.com', 'facilitymanager@gmail.com', 'Infosec', 'eGIS - Anti-Malware Management & Support', '102', '2019-07-22 06:09:00', 0, 65, '2019-07-22 05:32:00', 'F5'),
(66, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW76', 'ArjunKrishna Chelladurai ', 'VInai Gopal', 'ArjunKrishna@gmail.com', 'facilitymanager@gmail.com', 'InfoSec', 'SPE VM', '134', '2019-07-22 06:09:00', 0, 66, '2019-07-22 05:32:00', 'F5'),
(67, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW77', 'Nafia Haq', 'VInai Gopal', 'Nafia@gmail.com', 'facilitymanager@gmail.com', 'InfoSec', 'SPE VM', '134', '2019-07-22 06:09:00', 0, 67, '2019-07-22 05:32:00', 'F5'),
(68, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW78', 'Rahul Singh', 'VInai Gopal', 'Rahul@gmail.com', 'facilitymanager@gmail.com', 'InfoSec', 'SPE VM', '134', '2019-07-22 06:09:00', 0, 68, '2019-07-22 05:32:00', 'F5'),
(69, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW79', 'Nehal Bharath', 'VInai Gopal', 'Nehal@gmail.com', 'facilitymanager@gmail.com', 'InfoSec', 'SPE VM', '134', '2019-07-22 06:09:00', 0, 69, '2019-07-22 05:32:00', 'F5'),
(70, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW80', 'Ganesh Prasad Pavalkodi', 'Kaushik', 'Ganesh @gmail.com', 'facilitymanager@gmail.com', 'InfoSec', 'Vormetrics', '135', '2019-07-22 06:09:00', 0, 70, '2019-07-22 05:32:00', 'F5'),
(71, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW81', 'Ravikumar S', 'Ranjini', 'Ravikumar@gmail.com', 'facilitymanager@gmail.com', 'InfoSec', 'SPC', '131', '2019-07-22 06:09:00', 0, 71, '2019-07-22 05:32:00', 'F5'),
(72, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW82', 'Lohit Margoor', 'Kannan', 'Lohit@gmail.com', 'facilitymanager@gmail.com', 'SISC-Infosec', 'ISJ', '122', '2019-07-22 06:09:00', 0, 72, '2019-07-22 05:32:00', 'F5'),
(73, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW83', 'Vishal Chouhan', 'Kaushik', 'Vishal@gmail.com', 'facilitymanager@gmail.com', 'InfoSec', 'SISC', '128', '2019-07-22 06:09:00', 0, 73, '2019-07-22 05:32:00', 'F5'),
(74, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW84', 'Vivek Maurya', 'VInai Gopal', 'Vivek@gmail.com', 'facilitymanager@gmail.com', 'InfoSec', 'SPE VM', '134', '2019-07-22 06:09:00', 0, 74, '2019-07-22 05:32:00', 'F5'),
(75, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW85', 'Supraja Ramakrishnan', 'VInai Gopal', 'Supraja@gmail.com', 'facilitymanager@gmail.com', 'InfoSec', 'SPE VM', '134', '2019-07-22 06:09:00', 0, 75, '2019-07-22 05:32:00', 'F5'),
(76, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW86', 'Ankit Maslekar', 'VInai Gopal', 'Ankit@gmail.com', 'facilitymanager@gmail.com', 'InfoSec', 'SPE VM', '134', '2019-07-22 06:09:00', 0, 76, '2019-07-22 05:32:00', 'F5'),
(77, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '1AW07', 'Shankar Rajendran', 'Abhijeet Mudaliar', 'Shankar@gmail.com', 'facilitymanager@gmail.com', 'Infosec', 'eGIS - Anti-Malware Management & Support', '102', '2019-07-22 06:09:00', 0, 77, '2019-07-22 05:32:00', 'F5'),
(78, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '1AW09', 'Satisha Prakash', 'Abhijeet Mudaliar', 'Satisha@gmail.com', 'facilitymanager@gmail.com', 'Infosec', 'eGIS - Anti-Malware Management & Support', '102', '2019-07-22 06:09:00', 0, 78, '2019-07-22 05:32:00', 'F5'),
(79, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW092', 'Kalaivanan Murugesan', 'Vinai Gopal', 'Kalaivanan@gmail.com', 'facilitymanager@gmail.com', 'InfoSec', 'SPE ePO', '133', '2019-07-22 06:09:00', 0, 79, '2019-07-22 05:32:00', 'F5'),
(80, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW093', 'Vinai Gopal', 'Kaushik', 'Vinai@gmail.com', 'facilitymanager@gmail.com', 'InfoSec', 'SPE ePO', '133', '2019-07-22 06:09:00', 0, 80, '2019-07-22 05:32:00', 'F5'),
(81, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW94', 'Deepika Govindaiah', 'Vinai Gopal', 'Deepika@gmail.com', 'facilitymanager@gmail.com', 'InfoSec', 'SPE ePO', '133', '2019-07-22 06:09:00', 0, 81, '2019-07-22 05:32:00', 'F5'),
(82, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW95', 'Sai Srujan', 'Vinai Gopal', 'Sai@gmail.com', 'facilitymanager@gmail.com', 'InfoSec', 'SPE ePO', '133', '2019-07-22 06:09:00', 0, 82, '2019-07-22 05:32:00', 'F5'),
(83, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW96', 'Jitendra Gunnam', 'Vinai Gopal', 'Jitendra@gmail.com', 'facilitymanager@gmail.com', 'InfoSec', 'SPE ePO', '133', '2019-07-22 06:09:00', 0, 83, '2019-07-22 05:32:00', 'F5'),
(84, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW097', 'Durga Prasad K A', 'Vinai Gopal', 'Durga@gmail.com', 'facilitymanager@gmail.com', 'InfoSec', 'SPE ePO', '133', '2019-07-22 06:09:00', 0, 84, '2019-07-22 05:32:00', 'F5'),
(85, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW098', 'Christopher Kumar', 'Vinai Gopal', 'Christopher@gmail.com', 'facilitymanager@gmail.com', 'InfoSec', 'SPE ePO', '133', '2019-07-22 06:09:00', 0, 85, '2019-07-22 05:32:00', 'F5'),
(86, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW099', 'Karthik Rani', 'Vinai Gopal', 'Karthik@gmail.com', 'facilitymanager@gmail.com', 'InfoSec', 'SPE ePO', '133', '2019-07-22 06:09:00', 0, 86, '2019-07-22 05:32:00', 'F5'),
(87, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW100', 'Anupama Srikanth', 'Jitendra Puruswani', 'Anupama@gmail.com', 'facilitymanager@gmail.com', 'InfoSec', 'eGIS Ops Manager', '107', '2019-07-22 06:09:00', 0, 87, '2019-07-22 05:32:00', 'F5'),
(88, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW101', 'Prathima Rathnam', 'Kaushik', 'Prathima@gmail.com', 'facilitymanager@gmail.com', 'InfoSec', 'Vormetrics', '135', '2019-07-22 06:09:00', 0, 88, '2019-07-22 05:32:00', 'F5'),
(89, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW102', 'Kannan', 'Anto Telvin', 'Kannan@gmail.com', 'facilitymanager@gmail.com', 'SISC-Infosec', 'ISJ', '122', '2019-07-22 06:09:00', 0, 89, '2019-07-22 05:32:00', 'F5'),
(90, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW103', 'Jitendra Purswani', 'Ranjini', 'Jitendra@gmail.com', 'facilitymanager@gmail.com', 'SISC-Infosec', 'ISJ', '122', '2019-07-22 06:09:00', 0, 90, '2019-07-22 05:32:00', 'F5'),
(91, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW106', 'Paneesha Ramesh', 'Vinai Gopal', 'Paneesha@gmail.com', 'facilitymanager@gmail.com', 'InfoSec', 'SPE ePO', '133', '2019-07-22 06:09:00', 0, 91, '2019-07-22 05:32:00', 'F5'),
(92, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW107', 'Ambavarapu Suryanarayana Reddy', 'Vinai Gopal', 'Ambavarapu@gmail.com', 'facilitymanager@gmail.com', 'InfoSec', 'SPE ePO', '133', '2019-07-22 06:09:00', 0, 92, '2019-07-22 05:32:00', 'F5'),
(93, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW108', 'Aneesh Kanuvadil', 'Vinai Gopal', 'Aneesh@gmail.com', 'facilitymanager@gmail.com', 'InfoSec', 'SPE ePO', '133', '2019-07-22 06:09:00', 0, 93, '2019-07-22 05:32:00', 'F5'),
(94, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW109', 'Sanjeev Peddi Reddi Gari', 'Vinai Gopal', 'Sanjeev  @gmail.com', 'facilitymanager@gmail.com', 'InfoSec', 'SPE ePO', '133', '2019-07-22 06:09:00', 0, 94, '2019-07-22 05:32:00', 'F5'),
(95, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW110', 'Rajpradeep Mohan', 'Vinai Gopal', 'Rajpradeep@gmail.com', 'facilitymanager@gmail.com', 'InfoSec', 'SPE ePO', '133', '2019-07-22 06:09:00', 0, 95, '2019-07-22 05:32:00', 'F5'),
(96, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW111', 'Jithin Saseedharan', 'Vinai Gopal', 'Jithin@gmail.com', 'facilitymanager@gmail.com', 'InfoSec', 'SPE ePO', '133', '2019-07-22 06:09:00', 0, 96, '2019-07-22 05:32:00', 'F5'),
(97, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW114', 'Pranay Choudary', 'Anto Telvin', 'Pranay@gmail.com', 'facilitymanager@gmail.com', 'SISC-Infosec', 'ISJ', '122', '2019-07-22 06:09:00', 0, 97, '2019-07-22 05:32:00', 'F5'),
(98, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW115', 'Appu Narendran', 'Anto Telvin', 'Appu@gmail.com', 'facilitymanager@gmail.com', 'SISC-Infosec', 'ISJ', '122', '2019-07-22 06:09:00', 0, 98, '2019-07-22 05:32:00', 'F5'),
(99, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW116', 'Sreelatha Narayana', 'Anto Telvin', 'Sreelatha@gmail.com', 'facilitymanager@gmail.com', 'SISC-Infosec', 'ISJ', '122', '2019-07-22 06:09:00', 0, 99, '2019-07-22 05:32:00', 'F5'),
(100, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW117', 'Jyothi pani', 'Anto Telvin', 'Jyothi@gmail.com', 'facilitymanager@gmail.com', 'SISC-Infosec', 'ISJ', '122', '2019-07-22 06:09:00', 0, 100, '2019-07-22 05:32:00', 'F5'),
(101, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW118', 'Saurabh Prakash', 'Anto Telvin', 'Saurabh@gmail.com', 'facilitymanager@gmail.com', 'SISC-Infosec', 'ISJ', '122', '2019-07-22 06:09:00', 0, 101, '2019-07-22 05:32:00', 'F5'),
(102, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW119', 'Anto Telvin', 'Jitendra Purswani', 'Anto@gmail.com', 'facilitymanager@gmail.com', 'SISC-Infosec', 'ISJ', '122', '2019-07-22 06:09:00', 0, 102, '2019-07-22 05:32:00', 'F5'),
(103, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW120', 'Anand Dwarakanath', 'Jiten Purswani', 'Anand@gmail.com', 'facilitymanager@gmail.com', 'Infosec Group B', 'GISD', '114', '2019-07-22 06:09:00', 0, 103, '2019-07-22 05:32:00', 'F5'),
(104, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW121', 'Oosman', 'Kannan', 'Oosman@gmail.com', 'facilitymanager@gmail.com', 'SISC-Infosec', 'ISJ', '122', '2019-07-22 06:09:00', 0, 104, '2019-07-22 05:32:00', 'F5'),
(105, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW122', 'Bharati Bhyahatti', 'Anto Telvin', 'Bharati@gmail.com', 'facilitymanager@gmail.com', 'SISC-Infosec', 'ISJ', '122', '2019-07-22 06:09:00', 0, 105, '2019-07-22 05:32:00', 'F5'),
(106, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW123', 'Shyamjith Radhakrishnan', 'Anto Telvin', 'Shyamjith@gmail.com', 'facilitymanager@gmail.com', 'SISC-Infosec', 'ISJ', '122', '2019-07-22 06:09:00', 0, 106, '2019-07-22 05:32:00', 'F5'),
(107, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW124', 'B Bhuvaneswari', 'Anto Telvin', 'Bhuvaneswari@gmail.com', 'facilitymanager@gmail.com', 'SISC-Infosec', 'ISJ', '122', '2019-07-22 06:09:00', 0, 107, '2019-07-22 05:32:00', 'F5'),
(108, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW125', 'Kavitha Ravindran', 'Anto Telvin', 'Kavitha@gmail.com', 'facilitymanager@gmail.com', 'SISC-Infosec', 'ISJ', '122', '2019-07-22 06:09:00', 0, 108, '2019-07-22 05:32:00', 'F5'),
(109, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW126', 'Roshan Laloo', 'Anto Telvin', 'Roshan@gmail.com', 'facilitymanager@gmail.com', 'SISC-Infosec', 'ISJ', '122', '2019-07-22 06:09:00', 0, 109, '2019-07-22 05:32:00', 'F5'),
(110, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW129', 'Amit Singh', 'Anupama Srikanth', 'Amit@gmail.com', 'facilitymanager@gmail.com', 'Infosec', 'eGIS - RM (AP)', '103', '2019-07-22 06:09:00', 0, 110, '2019-07-22 05:32:00', 'F5'),
(111, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW130', 'Anoop Chinmalli', 'Anupama Srikanth', 'Anoop@gmail.com', 'facilitymanager@gmail.com', 'Infosec', 'eGIS - RM (EU)', '104', '2019-07-22 06:09:00', 0, 111, '2019-07-22 05:32:00', 'F5'),
(112, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW131', 'Shilpa Jambulingam', 'Vishal Chouhan', 'Shilpa@gmail.com', 'facilitymanager@gmail.com', 'InfoSec', 'SIE E', '125', '2019-07-22 06:09:00', 0, 112, '2019-07-22 05:32:00', 'F5'),
(113, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW132', 'Rohit Jha', 'Anand Dwarakanath', 'Rohit@gmail.com', 'facilitymanager@gmail.com', 'Infosec Group B', 'GISD - C&M', '116', '2019-07-22 06:09:00', 0, 113, '2019-07-22 05:32:00', 'F5'),
(114, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW133', 'Sriram Kodeppa', 'Anto Telvin', 'Sriram@gmail.com', 'facilitymanager@gmail.com', 'SISC-Infosec', 'ISJ', '122', '2019-07-22 06:09:00', 0, 114, '2019-07-22 05:32:00', 'F5'),
(115, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW134', 'Asam Gopi Reddy', 'Vishal Chouhan', 'Asam @gmail.com', 'facilitymanager@gmail.com', 'InfoSec', 'SIE A', '123', '2019-07-22 06:09:00', 0, 115, '2019-07-22 05:32:00', 'F5'),
(116, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW135', 'Sushma Raj', 'Anto Telvin', 'Sushma@gmail.com', 'facilitymanager@gmail.com', 'SISC-Infosec', 'ISJ', '122', '2019-07-22 06:09:00', 0, 116, '2019-07-22 05:32:00', 'F5'),
(117, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW136', 'Pooja Shree', 'Anto Telvin', 'Pooja@gmail.com', 'facilitymanager@gmail.com', 'SISC-Infosec', 'ISJ', '122', '2019-07-22 06:09:00', 0, 117, '2019-07-22 05:32:00', 'F5'),
(118, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW08', 'Mohan', 'Beena', 'Mohan@gmail.com', 'facilitymanager@gmail.com', 'GDC-Infosec', 'GSIRT-NOC', '120', '2019-07-22 06:09:00', 0, 118, '2019-07-22 05:32:00', 'F5'),
(119, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW08', 'Dilip', 'Beena', 'Dilip@gmail.com', 'facilitymanager@gmail.com', 'GDC-Infosec', 'GSIRT-NOC', '120', '2019-07-22 06:09:00', 0, 119, '2019-07-22 05:32:00', 'F5'),
(120, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW09', 'Harris', 'Beena', 'Harris@gmail.com', 'facilitymanager@gmail.com', 'GDC-Infosec', 'GSIRT-NOC', '120', '2019-07-22 06:09:00', 0, 120, '2019-07-22 05:32:00', 'F5'),
(121, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW09', 'Praveen', 'Beena', 'Praveen@gmail.com', 'facilitymanager@gmail.com', 'GDC-Infosec', 'GSIRT-NOC', '120', '2019-07-22 06:09:00', 0, 121, '2019-07-22 05:32:00', 'F5'),
(122, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW11', 'Kishore', 'Beena', 'Kishore@gmail.com', 'facilitymanager@gmail.com', 'GDC-Infosec', 'GSIRT-NOC', '120', '2019-07-22 06:09:00', 0, 122, '2019-07-22 05:32:00', 'F5'),
(123, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW11', 'Mani', 'Beena', 'Mani@gmail.com', 'facilitymanager@gmail.com', 'GDC-Infosec', 'GSIRT-NOC', '120', '2019-07-22 06:09:00', 0, 123, '2019-07-22 05:32:00', 'F5'),
(124, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW12', 'Chalapathy Naidu', 'Beena', 'Chalapathy@gmail.com', 'facilitymanager@gmail.com', 'GDC-Infosec', 'GSIRT-NOC/GSIRT-Infra', '121', '2019-07-22 06:09:00', 0, 124, '2019-07-22 05:32:00', 'F5'),
(125, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW12', 'Suneel', 'Beena', 'Suneel@gmail.com', 'facilitymanager@gmail.com', 'GDC-Infosec', 'GSIRT-NOC/GSIRT-Infra', '121', '2019-07-22 06:09:00', 0, 125, '2019-07-22 05:32:00', 'F5'),
(126, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW13', 'Sreejith', 'Beena', 'Sreejith@gmail.com', 'facilitymanager@gmail.com', 'GDC-Infosec', 'GSIRT-NOC', '120', '2019-07-22 06:09:00', 0, 126, '2019-07-22 05:32:00', 'F5'),
(127, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW13', 'Vimal', 'Beena', 'Vimal@gmail.com', 'facilitymanager@gmail.com', 'GDC-Infosec', 'GSIRT-NOC', '120', '2019-07-22 06:09:00', 0, 127, '2019-07-22 05:32:00', 'F5'),
(128, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW14', 'Boobalan', 'Beena', 'Boobalan@gmail.com', 'facilitymanager@gmail.com', 'GDC-Infosec', 'GSIRT-NOC', '120', '2019-07-22 06:09:00', 0, 128, '2019-07-22 05:32:00', 'F5'),
(129, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW14', 'Gobi', 'Beena', 'Gobi@gmail.com', 'facilitymanager@gmail.com', 'GDC-Infosec', 'GSIRT-NOC', '120', '2019-07-22 06:09:00', 0, 129, '2019-07-22 05:32:00', 'F5'),
(130, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW15', 'Nayan', 'Beena', 'Nayan@gmail.com', 'facilitymanager@gmail.com', 'GDC-Infosec', 'GSIRT-NOC', '120', '2019-07-22 06:09:00', 0, 130, '2019-07-22 05:32:00', 'F5'),
(131, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW15', 'Srivasthav', 'Beena', 'Srivasthav@gmail.com', 'facilitymanager@gmail.com', 'GDC-Infosec', 'GSIRT-NOC', '120', '2019-07-22 06:09:00', 0, 131, '2019-07-22 05:32:00', 'F5'),
(132, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW60', 'Ramagouda Patil', 'Anand Dwarakanath/Abhijeet Mudaliar', 'Ramagouda@gmail.com', 'facilitymanager@gmail.com', 'Infosec Group B', 'GISD- Phishing/eGIS - Anti-Malware Management & Support', '117', '2019-07-22 06:09:00', 0, 132, '2019-07-22 05:32:00', 'F5'),
(133, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW60', 'Satheeshkumar Ganeshan', 'Anand Dwarakanath/Abhijeet Mudaliar', 'Satheeshkumar@gmail.com', 'facilitymanager@gmail.com', 'Infosec Group B', 'GISD- Phishing/eGIS - Anti-Malware Management & Support', '117', '2019-07-22 06:09:00', 0, 133, '2019-07-22 05:32:00', 'F5'),
(134, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW63', 'Srihari Modepalli', 'Anupama Srikanth/Anand Dwarakanath', 'Srihari@gmail.com', 'facilitymanager@gmail.com', 'Infosec', 'eGIS-Data Analytics/GISD Splunk Support', '108', '2019-07-22 06:09:00', 0, 134, '2019-07-22 05:32:00', 'F5'),
(135, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW63', 'Sampath Bojan', 'Anupama Srikanth/Anand Dwarakanath', 'Sampath@gmail.com', 'facilitymanager@gmail.com', 'Infosec', 'eGIS-Data Analytics/GISD Splunk Support', '108', '2019-07-22 06:09:00', 0, 135, '2019-07-22 05:32:00', 'F5'),
(136, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW63', 'Sai Lalith kumar', 'Anupama Srikanth/Anand Dwarakanath', 'SaiLalith@gmail.com', 'facilitymanager@gmail.com', 'Infosec', 'eGIS-Data Analytics/GISD Splunk Support', '108', '2019-07-22 06:09:00', 0, 136, '2019-07-22 05:32:00', 'F5'),
(137, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW66', 'Chintam Babu', 'Anand Dwarakanath', 'Chintam@gmail.com', 'facilitymanager@gmail.com', 'Infosec Group B', 'GISD Splunk Support', '118', '2019-07-22 06:09:00', 0, 137, '2019-07-22 05:32:00', 'F5'),
(138, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW66', 'Krishanu Das', 'Anand Dwarakanath', 'Krishanu@gmail.com', 'facilitymanager@gmail.com', 'Infosec Group B', 'GISD Splunk Support', '118', '2019-07-22 06:09:00', 0, 138, '2019-07-22 05:32:00', 'F5'),
(139, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW87', 'SaiRam Manda', 'VInai Gopal', 'SaiRam@gmail.com', 'facilitymanager@gmail.com', 'InfoSec', 'SPE VM', '134', '2019-07-22 06:09:00', 0, 139, '2019-07-22 05:32:00', 'F5'),
(140, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW87', 'Srinivas Yeddisetti', 'VInai Gopal', 'Srinivas@gmail.com', 'facilitymanager@gmail.com', 'InfoSec', 'SPE VM', '134', '2019-07-22 06:09:00', 0, 140, '2019-07-22 05:32:00', 'F5'),
(141, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW88', 'Naveena Shivakumara', 'Abhijeet Mudaliar', 'Naveena@gmail.com', 'facilitymanager@gmail.com', 'InfoSec', 'eGIS - Anti-Malware Management & Support', '102', '2019-07-22 06:09:00', 0, 141, '2019-07-22 05:32:00', 'F5'),
(142, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW88', 'Anoop Barthwal', 'Abhijeet Mudaliar', 'Anoop@gmail.com', 'facilitymanager@gmail.com', 'InfoSec', 'eGIS - Anti-Malware Management & Support', '102', '2019-07-22 06:09:00', 0, 142, '2019-07-22 05:32:00', 'F5'),
(143, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW89', 'Asif Thiyyakkandi', 'Abhijeet Mudaliar', 'Asif@gmail.com', 'facilitymanager@gmail.com', 'InfoSec', 'eGIS - Anti-Malware Management & Support', '102', '2019-07-22 06:09:00', 0, 143, '2019-07-22 05:32:00', 'F5'),
(144, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW89', 'Sumeet Khandalkar', 'Abhijeet Mudaliar', 'Sumeet@gmail.com', 'facilitymanager@gmail.com', 'InfoSec', 'eGIS - Anti-Malware Management & Support', '102', '2019-07-22 06:09:00', 0, 144, '2019-07-22 05:32:00', 'F5'),
(145, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW104', 'Chandrashekar Murugan', 'Vinai Gopal', 'Chandrashekar@gmail.com', 'facilitymanager@gmail.com', 'InfoSec', 'SPE ePO', '133', '2019-07-22 06:09:00', 0, 145, '2019-07-22 05:32:00', 'F5'),
(146, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW104', 'Athul Raj', 'Vinai Gopal', 'Athul@gmail.com', 'facilitymanager@gmail.com', 'InfoSec', 'SPE ePO', '133', '2019-07-22 06:09:00', 0, 146, '2019-07-22 05:32:00', 'F5'),
(147, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW105', 'Tejaswi Gowda', 'Vinai Gopal', 'Tejaswi@gmail.com', 'facilitymanager@gmail.com', 'InfoSec', 'SPE ePO', '133', '2019-07-22 06:09:00', 0, 147, '2019-07-22 05:32:00', 'F5'),
(148, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW105', 'Arun Kumar Sampangiramaswamy', 'Vinai Gopal', 'Arun @gmail.com', 'facilitymanager@gmail.com', 'InfoSec', 'SPE ePO', '133', '2019-07-22 06:09:00', 0, 148, '2019-07-22 05:32:00', 'F5'),
(149, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW112', 'DivyaShree Vishwanath', 'Vinai Gopal', 'DivyaShree@gmail.com', 'facilitymanager@gmail.com', 'InfoSec', 'SPE DLP', '132', '2019-07-22 06:09:00', 0, 149, '2019-07-22 05:32:00', 'F5'),
(150, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW112', 'Suhas Bhaskaracharya', 'Vinai Gopal', 'Suhas@gmail.com', 'facilitymanager@gmail.com', 'InfoSec', 'SPE DLP', '132', '2019-07-22 06:09:00', 0, 150, '2019-07-22 05:32:00', 'F5'),
(151, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW113', 'Kishan Tikandar', 'Vinai Gopal', 'Kishan@gmail.com', 'facilitymanager@gmail.com', 'InfoSec', 'SPE DLP', '132', '2019-07-22 06:09:00', 0, 151, '2019-07-22 05:32:00', 'F5'),
(152, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW113', 'Mathu Phani Kumar', 'Vinai Gopal', 'Mathu @gmail.com', 'facilitymanager@gmail.com', 'InfoSec', 'SPE DLP', '132', '2019-07-22 06:09:00', 0, 152, '2019-07-22 05:32:00', 'F5');
INSERT INTO `emp_allocation` (`id`, `status`, `subject`, `remarks`, `description`, `request_date`, `workstation_no`, `emp_name`, `reporting_manager`, `request_user_id`, `approval_user_id`, `division`, `project_name`, `project_id`, `insert_timestamp`, `no_resources`, `sno`, `modified_timestamp`, `floor`) VALUES
(153, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW127', 'Shreejit Devarajan', 'Vinai Gopal', 'Shreejit@gmail.com', 'facilitymanager@gmail.com', 'InfoSec', 'SPE DLP', '132', '2019-07-22 06:09:00', 0, 153, '2019-07-22 05:32:00', 'F5'),
(154, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW127', 'Sathish Loganathan', 'Vinai Gopal', 'Sathish@gmail.com', 'facilitymanager@gmail.com', 'InfoSec', 'SPE DLP', '132', '2019-07-22 06:09:00', 0, 154, '2019-07-22 05:32:00', 'F5'),
(155, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW128', 'Tanuj Pandey', 'Vinai Gopal', 'Tanuj@gmail.com', 'facilitymanager@gmail.com', 'InfoSec', 'SPE DLP', '132', '2019-07-22 06:09:00', 0, 155, '2019-07-22 05:32:00', 'F5'),
(156, 'request', 'request for 100 seat allocation', 'request for 100 seat allocation', 'request for 100 seat allocation', '2019-07-22', '5AW128', 'Shrijith Puthran', 'Vinai Gopal', 'Shrijith@gmail.com', 'facilitymanager@gmail.com', 'InfoSec', 'SPE DLP', '132', '2019-07-22 06:09:00', 0, 156, '2019-07-22 05:32:00', 'F5');

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
('F2', '2nd Floor', 0, '2019-07-23 07:46:03'),
('F3', '3rd Floor', 0, '2019-07-23 07:46:47'),
('F4', '4th Floor', 0, '2019-07-23 07:46:47'),
('F5', '5th Floor', 0, '2019-07-23 07:47:11');

-- --------------------------------------------------------

--
-- Table structure for table `hibernate_sequence`
--

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(24),
(24),
(24),
(24);

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
(1, 'Super Admin'),
(2, 'USER'),
(3, 'Project Manager'),
(4, 'Facility Admin'),
(13, 'GUEST');

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
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `active`, `email`, `name`, `firstname`, `lastname`, `password`, `role_id`) VALUES
(5, 1, 'admin', 'admin', 'admin', 'admin', '$2a$10$xHoGCq4JgOikibksxHH3...KdkeC.VuEJAKhOtqanz2sI7xfLJtq.', 1),
(6, 1, 'fadmin', 'fadmin', 'fadmin', 'fadmin', '$2a$10$IiYp9/uA9ypb24othErV9eo5VaSuCyw7r0D3OYPGeCewdoFo6YwYm', 4),
(7, 1, 'padmin', 'padmin', 'padmin', 'padmin', '$2a$10$wD6Fo0V4Kq4fDaniOKnqSOWkaxtP4Kvk/7h6/BleVGxZKWQChY5lK', 3),
(9, 1, 'user@user.com', 'user', 'user', '', '$2a$10$nPQm2hPk61aIhEou.9VUuuFznRRpkhnNgyaDzJT4KE82QrPuocHle', 2),
(10, 1, 'sony@sony.com', 'sony', 'sony', 'sony', '$2a$10$CJMwbx8Em80iK/UIL31fR.L1zYbK8sdDkM5UUVKbrm4D14GtTqUcS', 4),
(16, 1, 'hari@gmail.com', 'Hari', 'Hari', 'Hari', '$2a$10$HCyRVYOFytuZGTPTPEpLA.c0c6Bd4bzSEu7ya0dm8/Ilj7.Cof.ji', 3),
(22, 1, 'hari2@sony.com', 'test', 'test', 'test', '$2a$10$eeriC5rdSRjBJojNb4Jo8.PlIJh0423lo0FWTsqWu3SBqSlWCTedy', 2),
(23, 1, 'hari2@hari2.com', 'test', 'test', 'test', '$2a$10$Cze5iUBW1DCuZqiY09Wgp.XiHFXGzlnGzgojHPJFvPvHZ.YVO2.TS', 2);

-- --------------------------------------------------------

--
-- Table structure for table `user_task`
--

CREATE TABLE `user_task` (
  `id` int(11) NOT NULL,
  `task_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

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
-- Table structure for table `wms_allocation_seats`
--

CREATE TABLE `wms_allocation_seats` (
  `id` int(5) NOT NULL,
  `floor_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `seat_number` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'None',
  `project_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'None',
  `request_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'None',
  `start_time` date NOT NULL,
  `end_time` date NOT NULL,
  `status` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'None',
  `flag` int(10) NOT NULL,
  `insert_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `wms_allocation_seats`
--

INSERT INTO `wms_allocation_seats` (`id`, `floor_id`, `seat_number`, `project_id`, `request_id`, `start_time`, `end_time`, `status`, `flag`, `insert_timestamp`, `modified_timestamp`) VALUES
(1, 'F2', 'A2AW01', 'GISC', 'REQALC-2019-00000001', '2019-09-30', '2019-10-05', 'Assigned', 2, '2019-09-29 15:18:50', '2019-09-29 15:21:16'),
(2, 'F2', 'A2AW02', 'GISC', 'REQALC-2019-00000001', '2019-09-30', '2019-10-05', 'Assigned', 2, '2019-09-29 15:18:50', '2019-09-29 15:21:16'),
(3, 'F2', 'A2AW03', 'GISC', 'REQALC-2019-00000001', '2019-09-30', '2019-10-05', 'Assigned', 2, '2019-09-29 15:18:50', '2019-09-29 15:21:16'),
(4, 'F2', 'A2AW04', 'GISC', 'REQALC-2019-00000002', '2019-09-30', '2019-10-05', 'Assigned', 2, '2019-09-29 15:51:37', '2019-09-29 15:53:51'),
(5, 'F2', 'A2AW05', 'GISC', 'REQALC-2019-00000002', '2019-09-30', '2019-10-05', 'Assigned', 2, '2019-09-29 15:51:37', '2019-09-29 15:53:51'),
(6, 'F2', 'A2AW06', 'GISC', 'REQALC-2019-00000002', '2019-09-30', '2019-10-05', 'Assigned', 2, '2019-09-29 15:51:37', '2019-09-29 15:53:51'),
(9, 'F2', 'A2AW12', 'CODE', 'REQALC-2019-00000003', '2019-09-29', '2019-09-29', 'Deallocated', 3, '2019-09-29 15:58:15', '2019-09-29 16:17:09'),
(10, 'F2', 'A2AW11', 'CODE', 'REQALC-2019-00000003', '2019-09-29', '2019-09-29', 'Deallocated', 3, '2019-09-29 15:58:15', '2019-09-29 16:17:06'),
(11, 'F2', 'A2AW14', 'SIE Global', 'REQALC-2019-00000005', '2019-10-03', '2019-10-03', 'Assigned', 2, '2019-10-03 01:31:45', '2019-10-03 02:56:03'),
(12, 'F2', 'A2AW13', 'SIE Global', 'REQALC-2019-00000005', '2019-10-03', '2019-10-03', 'Assigned', 2, '2019-10-03 01:31:45', '2019-10-03 02:56:03'),
(13, 'F2', 'A2AW68', 'Forescout', 'REQALC-2019-00000004', '2019-10-01', '2019-10-03', 'Pending', 1, '2019-10-03 02:54:45', '2019-10-03 02:54:45'),
(14, 'F2', 'A2AW58', 'Forescout', 'REQALC-2019-00000004', '2019-10-01', '2019-10-03', 'Pending', 1, '2019-10-03 02:54:45', '2019-10-03 02:54:45');

-- --------------------------------------------------------

--
-- Table structure for table `wms_buildng_details`
--

CREATE TABLE `wms_buildng_details` (
  `location` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'None',
  `tower` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'None',
  `floor` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'None',
  `insert_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `wms_buildng_details`
--

INSERT INTO `wms_buildng_details` (`location`, `tower`, `floor`, `insert_timestamp`, `modified_timestamp`) VALUES
('EMBTV', 'A', 'F1', '2019-08-19 07:20:53', '2019-08-19 07:20:53'),
('EMBTV', 'A', 'F2', '2019-08-19 07:20:53', '2019-08-19 07:20:53'),
('EMBTV', 'A', 'F3', '2019-08-19 07:20:53', '2019-08-19 07:20:53'),
('EMBTV', 'A', 'F4', '2019-08-19 07:20:53', '2019-08-19 07:20:53'),
('EMBTV', 'A', 'F5', '2019-08-19 07:20:53', '2019-08-19 07:20:53');

-- --------------------------------------------------------

--
-- Table structure for table `wms_bulkupload_jobs`
--

CREATE TABLE `wms_bulkupload_jobs` (
  `id` int(5) NOT NULL,
  `request_id` varchar(50) NOT NULL,
  `from_id` varchar(50) NOT NULL,
  `to_id` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `file_path` varchar(50) NOT NULL DEFAULT '',
  `upload_type` varchar(50) NOT NULL,
  `insert_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wms_coordinates`
--

CREATE TABLE `wms_coordinates` (
  `id` int(5) NOT NULL,
  `floor_id` varchar(30) NOT NULL,
  `workstation_no` varchar(30) NOT NULL,
  `coordinates` longtext NOT NULL,
  `sno` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wms_coordinates`
--

INSERT INTO `wms_coordinates` (`id`, `floor_id`, `workstation_no`, `coordinates`, `sno`) VALUES
(1, 'F2', 'A2CW57', '1822,724,1854,739', '1'),
(2, 'F2', 'A2CW56', '1822,740,1854,755', '2'),
(3, 'F2', 'A2CW53', '1788,763,1820,778', '3'),
(4, 'F2', 'A2CW55', '1822,800,1854,815', '4'),
(5, 'F2', 'A2CW54', '1822,817,1854,832', '5'),
(6, 'F2', 'A2CW47', '1705,762,1737,777', '6'),
(7, 'F2', 'A2CW48', '1705,780,1737,795', '7'),
(8, 'F2', 'A2CW51', '1739,801,1771,816', '8'),
(9, 'F2', 'A2CW49', '1705,840,1737,855', '9'),
(10, 'F2', 'A2CW50', '1739,818,1771,833', '10'),
(11, 'F2', 'A2CW41', '1623,840,1655,855', '11'),
(12, 'F2', 'A2CW45', '1657,724,1689,739', '12'),
(13, 'F2', 'A2CW44', '1657,741,1689,756', '13'),
(14, 'F2', 'A2CW43', '1657,802,1689,817', '14'),
(15, 'F2', 'A2CW42', '1657,818,1689,833', '15'),
(16, 'F2', 'A2CW39', '1622,761,1654,776', '16'),
(17, 'F2', 'A2CW40', '1622,778,1654,793', '17'),
(18, 'F2', 'A2CW32', '1492,724,1524,739', '18'),
(19, 'F2', 'A2CW31', '1492,740,1524,755', '19'),
(20, 'F2', 'A2CW28', '1458,763,1490,778', '20'),
(21, 'F2', 'A2CW29', '1458,780,1490,795', '21'),
(22, 'F2', 'A2CW30', '1458,840,1490,855', '22'),
(23, 'F2', 'A2CW34', '1541,762,1573,777', '23'),
(24, 'F2', 'A2CW35', '1541,779,1573,794', '24'),
(25, 'F2', 'A2CW37', '1575,801,1607,816', '25'),
(26, 'F2', 'A2CW36', '1575,817,1607,832', '26'),
(27, 'F2', 'A2CW16', '1376,763,1408,778', '27'),
(28, 'F2', 'A2CW17', '1376,780,1408,795', '28'),
(29, 'F2', 'A2CW20', '1409,800,1441,815', '29'),
(30, 'F2', 'A2CW19', '1409,817,1441,832', '30'),
(31, 'F2', 'A2CW18', '1375,840,1407,855', '31'),
(32, 'F2', 'A2CW08', '1327,801,1359,816', '32'),
(33, 'F2', 'A2CW07', '1327,817,1359,832', '33'),
(34, 'F2', 'A2CW09', '1327,741,1359,756', '34'),
(35, 'F2', 'A2CW10', '1327,725,1359,740', '35'),
(36, 'F2', 'A2CW05', '1293,762,1325,777', '36'),
(37, 'F2', 'A2CW06', '1293,780,1325,795', '37'),
(38, 'F2', 'A2CW04', '1294,702,1326,717', '38'),
(39, 'F2', 'A2CW15', '1376,702,1408,717', '39'),
(40, 'F2', 'A2CW27', '1459,702,1491,717', '40'),
(41, 'F2', 'A2CW33', '1541,701,1573,716', '41'),
(42, 'F2', 'A2CW38', '1623,701,1655,716', '42'),
(43, 'F2', 'A2CW46', '1706,702,1738,717', '43'),
(44, 'F2', 'A2CW52', '1789,701,1821,716', '44'),
(45, 'F2', 'A2DW56A', '1458,506,1490,521', '45'),
(46, 'F2', 'A2CW24', '1458,568,1490,583', '46'),
(47, 'F2', 'A2CW25', '1458,584,1490,599', '47'),
(48, 'F2', 'A2CW26', '1458,644,1490,659', '48'),
(49, 'F2', 'A2DW44', '1410,529,1442,544', '49'),
(50, 'F2', 'A2CW23', '1410,546,1442,561', '50'),
(51, 'F2', 'A2CW13', '1375,582,1407,597', '51'),
(52, 'F2', 'A2CW22', '1410,606,1442,621', '52'),
(53, 'F2', 'A2CW21', '1410,623,1442,638', '53'),
(54, 'F2', 'A2CW14', '1375,644,1407,659', '54'),
(55, 'F2', 'A2CW12', '1375,566,1407,581', '55'),
(56, 'F2', 'A2CW01', '1294,568,1326,583', '56'),
(57, 'F2', 'A2DW30', '1326,528,1358,543', '57'),
(58, 'F2', 'A2CW11', '1326,545,1358,560', '58'),
(59, 'F2', 'A2CW02', '1294,584,1326,599', '59'),
(60, 'F2', 'A2CW03', '1293,644,1325,659', '60'),
(61, 'F2', 'A2DW43', '1376,506,1408,521', '61'),
(62, 'F2', 'A2DW29', '1292,506,1324,521', '62'),
(63, 'F2', 'A2CWP04', '1740,729,1773,748', '63'),
(64, 'F2', 'A2CWP03', '1575,728,1608,747', '64'),
(65, 'F2', 'A2CWP02', '1409,729,1442,748', '65'),
(66, 'F2', 'A2CWP01', '1327,613,1360,632', '66'),
(67, 'F2', 'A2DWP02', '1179,390,1212,409', '67'),
(68, 'F2', 'A2DWP01', '1014,390,1047,409', '68'),
(69, 'F2', 'A2DW04', '980,421,1012,436', '69'),
(70, 'F2', 'A2DW03', '980,361,1012,376', '70'),
(71, 'F2', 'A2DW02', '980,344,1012,359', '71'),
(72, 'F2', 'A2DW01', '981,283,1013,298', '72'),
(73, 'F2', 'A2DW05', '1014,323,1046,338', '73'),
(74, 'F2', 'A2DW06', '1014,306,1046,321', '74'),
(75, 'F2', 'A2DW10', '1062,421,1094,436', '75'),
(76, 'F2', 'A2DW11', '1096,399,1128,414', '76'),
(77, 'F2', 'A2DW12', '1096,382,1128,397', '77'),
(78, 'F2', 'A2DW13', '1097,322,1129,337', '78'),
(79, 'F2', 'A2DW14', '1097,305,1129,320', '79'),
(80, 'F2', 'A2DW09', '1061,359,1093,374', '80'),
(81, 'F2', 'A2DW08', '1061,342,1093,357', '81'),
(82, 'F2', 'A2DW07', '1060,283,1092,298', '82'),
(83, 'F2', 'A2DW15', '1143,283,1175,298', '83'),
(84, 'F2', 'A2DW16', '1145,342,1177,357', '84'),
(85, 'F2', 'A2DW17', '1145,359,1177,374', '85'),
(86, 'F2', 'A2DW18', '1145,421,1177,436', '86'),
(87, 'F2', 'A2DW19', '1179,322,1211,337', '87'),
(88, 'F2', 'A2DW20', '1179,304,1211,319', '88'),
(89, 'F2', 'A2DW21', '1227,283,1259,298', '89'),
(90, 'F2', 'A2DW22', '1228,343,1260,358', '90'),
(91, 'F2', 'A2DW23', '1228,359,1260,374', '91'),
(92, 'F2', 'A2DW24', '1227,421,1259,436', '92'),
(93, 'F2', 'A2DW28', '1293,446,1325,461', '93'),
(94, 'F2', 'A2DW32', '1326,406,1358,421', '94'),
(95, 'F2', 'A2DW31', '1326,423,1358,438', '95'),
(96, 'F2', 'A2DW27', '1293,385,1325,400', '96'),
(97, 'F2', 'A2DW26', '1293,369,1325,384', '97'),
(98, 'F2', 'A2DW33', '1327,347,1359,362', '98'),
(99, 'F2', 'A2DW34', '1327,330,1359,345', '99'),
(100, 'F2', 'A2DW35', '1328,272,1360,287', '100'),
(101, 'F2', 'A2DW36', '1328,255,1360,270', '101'),
(102, 'F2', 'A2DW25', '1292,308,1324,323', '102'),
(103, 'F2', 'A2DW37', '1373,231,1405,246', '103'),
(104, 'F2', 'A2DW38', '1375,293,1407,308', '104'),
(105, 'F2', 'A2DW39', '1375,309,1407,324', '105'),
(106, 'F2', 'A2DW40', '1376,369,1408,384', '106'),
(107, 'F2', 'A2DW41', '1376,386,1408,401', '107'),
(108, 'F2', 'A2DW42', '1375,446,1407,461', '108'),
(109, 'F2', 'A2DW50', '1409,254,1441,269', '109'),
(110, 'F2', 'A2DW49', '1409,271,1441,286', '110'),
(111, 'F2', 'A2DW48', '1409,330,1441,345', '111'),
(112, 'F2', 'A2DW47', '1409,347,1441,362', '112'),
(113, 'F2', 'A2DW46', '1409,407,1441,422', '113'),
(114, 'F2', 'A2DW45', '1409,423,1441,438', '114'),
(115, 'F2', 'A2DW51', '1458,231,1490,246', '115'),
(116, 'F2', 'A2DW55', '1458,385,1490,400', '116'),
(117, 'F2', 'A2DW54', '1458,369,1490,384', '117'),
(118, 'F2', 'A2DW57', '1491,424,1523,439', '118'),
(119, 'F2', 'A2DW58', '1491,408,1523,423', '119'),
(120, 'F2', 'A2DW59', '1492,347,1524,362', '120'),
(121, 'F2', 'A2DW60', '1492,330,1524,345', '121'),
(122, 'F2', 'A2DW53', '1458,309,1490,324', '122'),
(123, 'F2', 'A2DW52', '1458,292,1490,307', '123'),
(124, 'F2', 'A2DW64', '1540,386,1572,401', '124'),
(125, 'F2', 'A2DW66', '1575,424,1607,439', '125'),
(126, 'F2', 'A2DW67', '1575,406,1607,421', '126'),
(127, 'F2', 'A2DW63', '1540,370,1572,385', '127'),
(128, 'F2', 'A2DW68', '1574,347,1606,362', '128'),
(129, 'F2', 'A2DW69', '1573,330,1605,345', '129'),
(130, 'F2', 'A2DW62', '1540,308,1572,323', '130'),
(131, 'F2', 'A2DW71', '1574,254,1606,269', '131'),
(132, 'F2', 'A2DW70', '1574,270,1606,285', '132'),
(133, 'F2', 'A2DW61', '1540,292,1572,307', '133'),
(134, 'F2', 'A2DW56', '1458,446,1490,461', '134'),
(135, 'F2', 'A2DW65', '1540,446,1572,461', '135'),
(136, 'F2', 'A2DW77', '1623,445,1655,460', '136'),
(137, 'F2', 'A2DW78', '1657,425,1689,440', '137'),
(138, 'F2', 'A2DW79', '1657,408,1689,423', '138'),
(139, 'F2', 'A2DW80', '1657,347,1689,362', '139'),
(140, 'F2', 'A2DW81', '1657,330,1689,345', '140'),
(141, 'F2', 'A2DW82', '1656,271,1688,286', '141'),
(142, 'F2', 'A2DW83', '1656,254,1688,269', '142'),
(143, 'F2', 'A2DW76', '1624,387,1656,402', '143'),
(144, 'F2', 'A2DW75', '1623,369,1655,384', '144'),
(145, 'F2', 'A2DW74', '1624,310,1656,325', '145'),
(146, 'F2', 'A2DW73', '1624,293,1656,308', '146'),
(147, 'F2', 'A2DW72', '1623,231,1655,246', '147'),
(148, 'F2', 'A2DW90', '1739,423,1771,438', '148'),
(149, 'F2', 'A2DW91', '1739,406,1771,421', '149'),
(150, 'F2', 'A2DW88', '1706,386,1738,401', '150'),
(151, 'F2', 'A2DW87', '1706,369,1738,384', '151'),
(152, 'F2', 'A2DW86', '1706,309,1738,324', '152'),
(153, 'F2', 'A2DW85', '1706,292,1738,307', '153'),
(154, 'F2', 'A2DW92', '1739,348,1771,363', '154'),
(155, 'F2', 'A2DW93', '1739,331,1771,346', '155'),
(156, 'F2', 'A2DW84', '1706,231,1738,246', '156'),
(157, 'F2', 'A2DW94', '1740,272,1772,287', '157'),
(158, 'F2', 'A2DW95', '1740,254,1772,269', '158'),
(159, 'F2', 'A2DW100', '1787,445,1819,460', '159'),
(160, 'F2', 'A2DW99', '1788,385,1820,400', '160'),
(161, 'F2', 'A2DW98', '1788,369,1820,384', '161'),
(162, 'F2', 'A2DW97', '1788,308,1820,323', '162'),
(163, 'F2', 'A2DW96', '1787,242,1819,257', '163'),
(164, 'F2', 'A2DW89', '1704,446,1736,461', '164'),
(165, 'F2', 'A2DW102', '1823,408,1855,423', '165'),
(166, 'F2', 'A2DW103', '1822,348,1854,363', '166'),
(167, 'F2', 'A2DW104', '1822,331,1854,346', '167'),
(168, 'F2', 'A2DW105', '1822,272,1854,287', '168'),
(169, 'F2', 'A2DW106', '1822,255,1854,270', '169'),
(170, 'F2', 'A2DW101', '1823,425,1855,440', '170'),
(171, 'F2', 'A2BW15', '302,701,334,716', '1'),
(172, 'F2', 'A2BW23', '221,702,253,717', '2'),
(173, 'F2', 'A2BW22', '266,723,298,738', '3'),
(174, 'F2', 'A2BW21', '266,740,298,755', '4'),
(175, 'F2', 'A2BW16', '302,762,334,777', '5'),
(176, 'F2', 'A2BW17', '302,778,334,793', '6'),
(177, 'F2', 'A2BW18', '303,840,335,855', '7'),
(178, 'F2', 'A2BW20', '266,800,298,815', '8'),
(179, 'F2', 'A2BW19', '266,817,298,832', '9'),
(180, 'F2', 'A2BW26', '220,840,252,855', '10'),
(181, 'F2', 'A2BW24', '221,763,253,778', '11'),
(182, 'F2', 'A2BW25', '221,779,253,794', '12'),
(183, 'F2', 'A2BW28', '184,801,216,816', '13'),
(184, 'F2', 'A2BW27', '184,817,216,832', '14'),
(185, 'F2', 'A2BW34', '100,723,132,738', '15'),
(186, 'F2', 'A2BW33', '100,740,132,755', '16'),
(187, 'F2', 'A2BW30', '137,763,169,778', '17'),
(188, 'F2', 'A2BW32', '100,800,132,815', '18'),
(189, 'F2', 'A2BW31', '100,817,132,832', '19'),
(190, 'F2', 'A2BW29', '137,702,169,717', '20'),
(191, 'F2', 'A2BWP01', '348,728,381,747', '21'),
(192, 'F2', 'A2BW10', '385,702,417,717', '22'),
(193, 'F2', 'A2BW12', '385,778,417,793', '23'),
(194, 'F2', 'A2BW11', '385,761,417,776', '24'),
(195, 'F2', 'A2BW14', '349,801,381,816', '25'),
(196, 'F2', 'A2BW13', '349,817,381,832', '26'),
(197, 'F2', 'A2BW07', '431,724,463,739', '27'),
(198, 'F2', 'A2BW06', '431,741,463,756', '28'),
(199, 'F2', 'A2BW03', '467,762,499,777', '29'),
(200, 'F2', 'A2BW04', '467,779,499,794', '30'),
(201, 'F2', 'A2BW05', '468,840,500,855', '31'),
(202, 'F2', 'A2BW02', '467,571,499,586', '32'),
(203, 'F2', 'A2BW01', '467,554,499,569', '33'),
(204, 'F2', 'A2BW08', '432,609,464,624', '34'),
(205, 'F2', 'A2BW09', '432,592,464,607', '35'),
(206, 'F2', 'A2AWP01', '431,418,464,437', '36'),
(207, 'F2', 'A2AW24', '384,295,416,310', '37'),
(208, 'F2', 'A2AW25', '384,312,416,327', '38'),
(209, 'F2', 'A2AW23', '433,333,465,348', '39'),
(210, 'F2', 'A2AW22', '433,350,465,365', '40'),
(211, 'F2', 'A2AW21', '467,493,499,508', '41'),
(212, 'F2', 'A2AW34', '350,256,382,271', '42'),
(213, 'F2', 'A2AW33', '350,273,382,288', '43'),
(214, 'F2', 'A2AW32', '350,333,382,348', '44'),
(215, 'F2', 'A2AW31', '350,350,382,365', '45'),
(216, 'F2', 'A2AW26', '383,370,415,385', '46'),
(217, 'F2', 'A2AW27', '383,387,415,402', '47'),
(218, 'F2', 'A2AW28', '385,449,417,464', '48'),
(219, 'F2', 'A2AW29', '351,427,383,442', '49'),
(220, 'F2', 'A2AW30', '351,410,383,425', '50'),
(221, 'F2', 'A2AW35', '302,234,334,249', '51'),
(222, 'F2', 'A2AW40', '301,449,333,464', '52'),
(223, 'F2', 'A2AW39', '303,388,335,403', '53'),
(224, 'F2', 'A2AW38', '302,370,334,385', '54'),
(225, 'F2', 'A2AW37', '302,313,334,328', '55'),
(226, 'F2', 'A2AW36', '302,296,334,311', '56'),
(227, 'F2', 'A2AW41', '267,427,299,442', '57'),
(228, 'F2', 'A2AW42', '267,410,299,425', '58'),
(229, 'F2', 'A2AW43', '267,350,299,365', '59'),
(230, 'F2', 'A2AW44', '267,334,299,349', '60'),
(231, 'F2', 'A2AW45', '268,273,300,288', '61'),
(232, 'F2', 'A2AW46', '268,257,300,272', '62'),
(233, 'F2', 'A2AW52', '218,449,250,464', '63'),
(234, 'F2', 'A2AW48', '219,295,251,310', '64'),
(235, 'F2', 'A2AW49', '219,312,251,327', '65'),
(236, 'F2', 'A2AW50', '219,371,251,386', '66'),
(237, 'F2', 'A2AW51', '219,387,251,402', '67'),
(238, 'F2', 'A2AW53', '185,426,217,441', '68'),
(239, 'F2', 'A2AW54', '185,409,217,424', '69'),
(240, 'F2', 'A2AW55', '186,351,218,366', '70'),
(241, 'F2', 'A2AW47', '219,234,251,249', '71'),
(242, 'F2', 'A2AW58', '185,256,217,271', '72'),
(243, 'F2', 'A2AW57', '185,273,217,288', '73'),
(244, 'F2', 'A2AW56', '186,333,218,348', '74'),
(245, 'F2', 'A2AW62', '137,449,169,464', '75'),
(246, 'F2', 'A2AW59', '137,311,169,326', '76'),
(247, 'F2', 'A2AW60', '137,370,169,385', '77'),
(248, 'F2', 'A2AW61', '137,388,169,403', '78'),
(249, 'F2', 'A2AW63', '103,426,135,441', '79'),
(250, 'F2', 'A2AW64', '102,409,134,424', '80'),
(251, 'F2', 'A2AW65', '102,350,134,365', '81'),
(252, 'F2', 'A2AW66', '102,333,134,348', '82'),
(253, 'F2', 'A2AW67', '101,274,133,289', '83'),
(254, 'F2', 'A2AW68', '101,257,133,272', '84'),
(255, 'F2', 'A2AW16', '467,294,499,309', '85'),
(256, 'F2', 'A2AW19', '467,387,499,402', '86'),
(257, 'F2', 'A2AW18', '467,371,499,386', '87'),
(258, 'F2', 'A2AW15', '467,234,499,249', '88'),
(259, 'F2', 'A2AW17', '467,311,499,326', '89'),
(260, 'F2', 'A2AW10', '514,411,546,426', '90'),
(261, 'F2', 'A2AW09', '549,389,581,404', '91'),
(262, 'F2', 'A2AW08', '549,372,581,387', '92'),
(263, 'F2', 'A2AW13', '515,273,547,288', '93'),
(264, 'F2', 'A2AW14', '515,257,547,272', '94'),
(265, 'F2', 'A2AW12', '515,334,547,349', '95'),
(266, 'F2', 'A2AW11', '515,351,547,366', '96'),
(267, 'F2', 'A2AW07', '550,311,582,326', '97'),
(268, 'F2', 'A2AW20', '467,448,499,463', '98'),
(269, 'F2', 'A2AW04', '598,411,630,426', '99'),
(270, 'F2', 'A2AW06', '597,333,629,348', '100'),
(271, 'F2', 'A2AW05', '597,350,629,365', '101'),
(272, 'F2', 'A2AW03', '632,387,664,402', '102'),
(273, 'F2', 'A2AW02', '632,371,664,386', '103'),
(274, 'F2', 'A2AW01', '631,311,663,326', '104'),
(297, 'F7', '7BW38', '554,1520,584,1520,584,1549,601,1561,601,1591,553,1591', '38'),
(298, 'F7', '7BW59', '215,1450,167,1449,168,1518,197,1518,197,1492,202,1481,213,1479', '59'),
(299, 'F7', '7BW61', '215,1598,167,1597,168,1666,197,1666,197,1640,202,1629,213,1627', '61'),
(300, 'F7', '7BW50', '408,1598,360,1597,361,1666,390,1666,390,1640,395,1629,406,1627', '50'),
(301, 'F7', '7BW37', '601,1451,553,1450,554,1519,583,1519,583,1493,588,1482,599,1480', '37'),
(302, 'F7', '7BW39', '601,1598,553,1597,554,1666,583,1666,583,1640,588,1629,599,1627', '39'),
(303, 'F7', '7BW27', '794,1451,746,1450,747,1519,776,1519,776,1493,781,1482,792,1480', '27'),
(304, 'F7', '7BW29', '794,1598,746,1597,747,1666,776,1666,776,1640,781,1629,792,1627', '29'),
(305, 'F7', '7BW16', '987,1451,939,1450,940,1519,969,1519,969,1493,974,1482,985,1480', '16'),
(306, 'F7', '7BW18', '987,1598,939,1597,940,1666,969,1666,969,1640,974,1629,985,1627', '18'),
(307, 'F7', '7BW05', '1180,1451,1132,1450,1133,1519,1162,1519,1162,1493,1167,1482,1178,1480', '05'),
(308, 'F7', '7BW07', '1180,1598,1132,1597,1133,1666,1162,1666,1162,1640,1167,1629,1178,1627', '07'),
(309, 'F7', '7BW51', '360,1670,390,1670,390,1699,407,1711,407,1741,359,1741', '51'),
(310, 'F7', '7BW08', '1133,1669,1163,1669,1163,1698,1180,1710,1180,1740,1132,1740', '08'),
(311, 'F7', '7BW19', '940,1670,970,1670,970,1699,987,1711,987,1741,939,1741', '19'),
(312, 'F7', '7BW40', '554,1670,584,1670,584,1699,601,1711,601,1741,553,1741', '40'),
(313, 'F7', '7BW06', '1133,1522,1163,1522,1163,1551,1180,1563,1180,1593,1132,1593', '06'),
(314, 'F7', '7BW58', '167,1373,197,1373,197,1402,214,1414,214,1444,166,1444', '58'),
(315, 'F7', '7BW60', '168,1522,198,1522,198,1551,215,1563,215,1593,167,1593', '60'),
(316, 'F7', '7BW49', '360,1522,390,1522,390,1551,407,1563,407,1593,359,1593', '49'),
(317, 'F7', '7BW36', '553,1374,583,1374,583,1403,600,1415,600,1445,552,1445', '36'),
(318, 'F7', '7BW26', '747,1374,777,1374,777,1403,794,1415,794,1445,746,1445', '26'),
(319, 'F7', '7BW28', '747,1522,777,1522,777,1551,794,1563,794,1593,746,1593', '28'),
(320, 'F7', '7BW15', '940,1374,970,1374,970,1403,987,1415,987,1445,939,1445', '15'),
(321, 'F7', '7BW17', '940,1522,970,1522,970,1551,987,1563,987,1593,939,1593', '17'),
(322, 'F7', '7BW04', '1133,1374,1163,1374,1163,1403,1180,1415,1180,1445,1132,1445', '04'),
(323, 'F7', '7BW48', '408,1450,360,1449,361,1518,390,1518,390,1492,395,1481,406,1479', '48'),
(324, 'F7', '7BW47', '360,1374,390,1374,390,1403,407,1415,407,1445,359,1445', '47'),
(325, 'F7', '7BW10', '1098,1669,1129,1668,1129,1738,1082,1740,1081,1708,1096,1698', '10'),
(326, 'F7', '7BW21', '906,1670,937,1669,937,1739,890,1741,889,1709,904,1699', '21'),
(327, 'F7', '7BW67', '133,1374,164,1373,164,1443,117,1445,116,1413,131,1403', '67'),
(328, 'F7', '7BW57', '325,1374,356,1373,356,1443,309,1445,308,1413,323,1403', '57'),
(329, 'F7', '7BW46', '519,1375,550,1374,550,1444,503,1446,502,1414,517,1404', '46'),
(330, 'F7', '7BW35', '712,1374,743,1373,743,1443,696,1445,695,1413,710,1403', '35'),
(331, 'F7', '7BW25', '905,1374,936,1373,936,1443,889,1445,888,1413,903,1403', '25'),
(332, 'F7', '7BW14', '1098,1375,1129,1374,1129,1444,1082,1446,1081,1414,1096,1404', '14'),
(333, 'F7', '7BW65', '133,1523,164,1522,164,1592,117,1594,116,1562,131,1552', '65'),
(334, 'F7', '7BW55', '326,1523,357,1522,357,1592,310,1594,309,1562,324,1552', '55'),
(335, 'F7', '7BW44', '519,1522,550,1521,550,1591,503,1593,502,1561,517,1551', '44'),
(336, 'F7', '7BW33', '712,1522,743,1521,743,1591,696,1593,695,1561,710,1551', '33'),
(337, 'F7', '7BW23', '905,1522,936,1521,936,1591,889,1593,888,1561,903,1551', '23'),
(338, 'F7', '7BW12', '1098,1522,1129,1521,1129,1591,1082,1593,1081,1561,1096,1551', '12'),
(339, 'F7', '7BW31', '712,1669,743,1668,743,1738,696,1740,695,1708,710,1698', '31'),
(340, 'F7', '7BW02', '1291,1449,1322,1448,1322,1518,1275,1520,1274,1488,1289,1478', '02'),
(341, 'F7', '7BW63', '133,1670,164,1669,164,1739,117,1741,116,1709,131,1699', '63'),
(342, 'F7', '7BW53', '326,1670,357,1669,357,1739,310,1741,309,1709,324,1699', '53'),
(343, 'F7', '7BW42', '519,1670,550,1669,550,1739,503,1741,502,1709,517,1699', '42'),
(344, 'F7', '7AW51', '408,519,360,518,361,587,390,587,390,561,395,550,406,548', '51'),
(345, 'F7', '7AW58', '215,814,167,813,168,882,197,882,197,856,202,845,213,843', '58'),
(346, 'F7', '7AW49', '408,667,360,666,361,735,390,735,390,709,395,698,406,696', '49'),
(347, 'F7', '7AW47', '408,814,360,813,361,882,390,882,390,856,395,845,406,843', '47'),
(348, 'F7', '7AW40', '601,519,553,518,554,587,583,587,583,561,588,550,599,548', '40'),
(349, 'F7', '7AW38', '601,667,553,666,554,735,583,735,583,709,588,698,599,696', '38'),
(350, 'F7', '7AW36', '601,815,553,814,554,883,583,883,583,857,588,846,599,844', '36'),
(351, 'F7', '7AW28', '794,667,746,666,747,735,776,735,776,709,781,698,792,696', '28'),
(352, 'F7', '7AW26', '794,814,746,813,747,882,776,882,776,856,781,845,792,843', '26'),
(353, 'F7', '7AW19', '987,519,939,518,940,587,969,587,969,561,974,550,985,548', '19'),
(354, 'F7', '7AW17', '987,666,939,665,940,734,969,734,969,708,974,697,985,695', '17'),
(355, 'F7', '7AW15', '987,814,939,813,940,882,969,882,969,856,974,845,985,843', '15'),
(356, 'F7', '7AW04', '1180,815,1132,814,1133,883,1162,883,1162,857,1167,846,1178,844', '04'),
(357, 'F7', '7AW08', '1180,520,1132,519,1133,588,1162,588,1162,562,1167,551,1178,549', '08'),
(358, 'F7', '7AW06', '1180,667,1132,666,1133,735,1162,735,1162,709,1167,698,1178,696', '06'),
(359, 'F7', '7AW64', '133,591,164,590,164,660,117,662,116,630,131,620', '64'),
(360, 'F7', '7AW66', '133,739,164,738,164,808,117,810,116,778,131,768', '66'),
(361, 'F7', '7AW56', '327,739,358,738,358,808,311,810,310,778,325,768', '56'),
(362, 'F7', '7AW54', '326,590,357,589,357,659,310,661,309,629,324,619', '54'),
(363, 'F7', '7AW45', '519,739,550,738,550,808,503,810,502,778,517,768', '45'),
(364, 'F7', '7AW43', '519,591,550,590,550,660,503,662,502,630,517,620', '43'),
(365, 'F7', '7AW11', '1098,591,1129,590,1129,660,1082,662,1081,630,1096,620', '11'),
(366, 'F7', '7AW13', '1098,738,1129,737,1129,807,1082,809,1081,777,1096,767', '13'),
(367, 'F7', '7AW24', '905,739,936,738,936,808,889,810,888,778,903,768', '24'),
(368, 'F7', '7AW22', '905,591,936,590,936,660,889,662,888,630,903,620', '22'),
(369, 'F7', '7AW32', '712,591,743,590,743,660,696,662,695,630,710,620', '32'),
(370, 'F7', '7AW34', '712,738,743,737,743,807,696,809,695,777,710,767', '34'),
(371, 'F7', '7AW03', '1291,811,1322,810,1322,880,1275,882,1274,850,1289,840', '03'),
(372, 'F7', '7AW50', '361,591,391,591,391,620,407,632,408,662,360,662', '50'),
(373, 'F7', '7AW39', '554,590,584,590,584,619,601,631,601,661,553,661', '39'),
(374, 'F7', '7AW29', '747,591,777,591,777,620,794,632,794,662,746,662', '29'),
(375, 'F7', '7AW59', '167,738,197,738,197,767,214,779,214,809,166,809', '59'),
(376, 'F7', '7AW48', '360,738,390,738,390,767,407,779,407,809,359,809', '48'),
(377, 'F7', '7AW37', '553,738,583,738,583,767,600,778,600,809,552,809', '37'),
(378, 'F7', '7AW27', '747,738,777,738,777,767,792,778,794,809,746,809', '27'),
(379, 'F7', '7AW16', '940,738,970,738,970,767,987,778,987,809,939,809', '16'),
(380, 'F7', '7AW18', '940,590,970,590,970,619,986,631,987,661,939,661', '18'),
(381, 'F7', '7AW07', '1133,591,1163,591,1163,620,1180,634,1180,662,1132,662', '07'),
(382, 'F7', '7AW05', '1132,738,1162,738,1162,767,1180,778,1179,809,1131,809', '05'),
(383, 'F7', '7AW09', '1137,491,1138,513,1204,513,1204,491', '09'),
(384, 'F7', '7BW52', '365,1745,366,1767,432,1767,432,1745', '52'),
(385, 'F7', '7BW41', '558,1744,559,1766,625,1766,625,1744', '41'),
(386, 'F7', '7BW30', '751,1744,752,1766,818,1766,818,1744', '30'),
(387, 'F7', '7BW20', '944,1744,945,1766,1011,1766,1011,1744', '20'),
(388, 'F7', '7BW09', '1138,1745,1139,1767,1205,1767,1205,1745', '09'),
(389, 'F7', '7AW52', '365,491,366,513,432,513,432,491', '52'),
(390, 'F7', '7AW41', '558,491,559,513,625,513,625,491', '41'),
(391, 'F7', '7AW62', '171,491,172,513,238,513,238,491', '62'),
(392, 'F7', '7AW30', '751,491,752,513,818,513,818,491', '30'),
(393, 'F7', '7AW20', '944,491,945,513,1011,513,1011,491', '20'),
(394, 'F7', '7BW01', '1291,1594,1322,1594,1323,1524,1276,1525,1275,1554,1284,1558,1293,1572', '01'),
(395, 'F7', '7BW34', '710,1518,741,1518,742,1448,695,1449,694,1478,703,1482,712,1496', '34'),
(396, 'F7', '7BW32', '711,1666,742,1666,743,1596,696,1597,695,1626,704,1630,713,1644', '32'),
(397, 'F7', '7BW24', '904,1519,935,1519,936,1449,889,1450,888,1479,897,1483,906,1497', '24'),
(398, 'F7', '7BW22', '904,1666,935,1666,936,1596,889,1597,888,1626,897,1630,906,1644', '22'),
(399, 'F7', '7BW13', '1096,1519,1127,1519,1128,1449,1081,1450,1080,1479,1089,1483,1098,1497', '13'),
(400, 'F7', '7BW11', '1097,1665,1128,1665,1129,1595,1082,1596,1081,1625,1090,1629,1099,1643', '11'),
(401, 'F7', '7BW03', '1290,1446,1321,1446,1322,1376,1275,1377,1274,1406,1283,1410,1292,1424', '03'),
(402, 'F7', '7BW64', '132,1666,163,1666,164,1596,117,1597,116,1626,125,1630,134,1644', '64'),
(403, 'F7', '7BW56', '325,1519,356,1519,357,1449,310,1450,309,1479,318,1483,327,1497', '56'),
(404, 'F7', '7BW54', '325,1667,356,1667,357,1597,310,1598,309,1627,318,1631,327,1645', '54'),
(405, 'F7', '7BW45', '518,1518,549,1518,550,1448,503,1449,502,1478,511,1482,520,1496', '45'),
(406, 'F7', '7BW43', '517,1667,548,1667,549,1597,502,1598,501,1627,510,1631,519,1645', '43'),
(407, 'F7', '7BW66', '132,1518,163,1518,164,1448,117,1449,116,1478,125,1482,134,1496', '66'),
(408, 'F7', '7AW12', '1097,735,1128,735,1129,665,1082,666,1081,695,1090,699,1099,713', '12'),
(409, 'F7', '7AW14', '1097,883,1128,883,1129,813,1082,814,1081,843,1090,847,1099,861', '14'),
(410, 'F7', '7AW02', '1290,808,1321,808,1322,738,1275,739,1274,768,1283,772,1292,786', '02'),
(411, 'F7', '7AW57', '324,883,355,883,356,813,309,814,308,843,317,847,326,861', '57'),
(412, 'F7', '7AW65', '132,735,163,735,164,665,117,666,116,695,125,699,134,713', '65'),
(413, 'F7', '7AW55', '325,735,356,735,357,665,310,666,309,695,318,699,327,713', '55'),
(414, 'F7', '7AW63', '132,588,163,588,164,518,117,519,116,548,125,552,134,566', '63'),
(415, 'F7', '7AW53', '325,587,356,587,357,517,310,518,309,547,318,551,327,565', '53'),
(416, 'F7', '7AW42', '518,587,549,587,550,517,503,518,502,547,511,551,520,565', '42'),
(417, 'F7', '7AW44', '518,735,549,735,550,665,503,666,502,695,511,699,520,713', '44'),
(418, 'F7', '7AW46', '518,883,549,883,550,813,503,814,502,843,511,847,520,861', '46'),
(419, 'F7', '7AW31', '711,588,742,588,743,518,696,519,695,548,704,552,713,566', '31'),
(420, 'F7', '7AW33', '711,735,742,735,743,665,696,666,695,695,704,699,713,713', '33'),
(421, 'F7', '7AW35', '711,883,742,883,743,813,696,814,695,843,704,847,713,861', '35'),
(422, 'F7', '7AW21', '904,588,935,588,936,518,889,519,888,548,897,552,906,566', '21'),
(423, 'F7', '7AW23', '904,735,935,735,936,665,889,666,888,695,897,699,906,713', '23'),
(424, 'F7', '7AW25', '904,883,935,883,936,813,889,814,888,843,897,847,906,861', '25'),
(425, 'F7', '7AW10', '1097,588,1128,588,1129,518,1082,519,1081,548,1090,552,1099,566', '10'),
(426, 'F7', '7AW67', '132,883,163,883,164,813,117,814,116,843,125,847,134,861', '67'),
(427, 'F7', '7BW62', '171,1745,172,1767,238,1767,238,1745', '62'),
(428, 'F7', '7AW61', '168,591,198,591,198,620,215,630,215,662,167,662', '61'),
(429, 'F7', '7AW01', '1291,664,1322,663,1322,733,1275,735,1274,703,1289,693', '01'),
(430, 'F7', '7AW60', '215,667,167,666,168,735,197,735,197,709,202,698,213,696', '60'),
(431, 'F5', '5BW21', '2487,1169,2487,1201,2510,1205,2519,1225,2548,1225,2548,1169', '21'),
(432, 'F5', '5BW41', '2668,1168,2668,1200,2691,1204,2700,1224,2729,1224,2729,1168', '41'),
(433, 'F5', '5BW57', '2904,1169,2904,1201,2927,1205,2936,1225,2965,1225,2965,1169', '57'),
(434, 'F5', '5BW130', '3651,1169,3651,1201,3674,1205,3683,1225,3712,1225,3712,1169', '130'),
(435, 'F5', '5BW112', '3445,1169,3445,1201,3468,1205,3477,1225,3506,1225,3506,1169', '112'),
(436, 'F5', '5BW92', '3265,1169,3265,1201,3288,1205,3297,1225,3326,1225,3326,1169', '92'),
(437, 'F5', '5BW72', '3085,1169,3085,1201,3108,1205,3117,1225,3146,1225,3146,1169', '72'),
(438, 'F5', '5BW119', '3510,839,3512,896,3542,896,3551,876,3575,870,3575,840', '119'),
(439, 'F5', '5BW71', '3084,1003,3084,1035,3107,1039,3116,1059,3145,1059,3145,1003', '71'),
(440, 'F5', '5BW69', '3085,840,3085,872,3108,876,3117,896,3146,896,3146,840', '69'),
(441, 'F5', '5BW88', '3265,840,3265,872,3288,876,3297,896,3326,896,3326,840', '88'),
(442, 'F5', '5BW90', '3265,1004,3265,1036,3288,1040,3297,1060,3326,1060,3326,1004', '90'),
(443, 'F5', '5BW108', '3445,840,3445,872,3468,876,3477,896,3506,896,3506,840', '108'),
(444, 'F5', '5BW110', '3445,1004,3445,1036,3468,1040,3477,1060,3506,1060,3506,1004', '110'),
(445, 'F5', '5BW127', '3651,841,3651,873,3674,877,3683,897,3712,897,3712,841', '127'),
(446, 'F5', '5BW129', '3651,1004,3651,1036,3674,1040,3683,1060,3712,1060,3712,1004', '129'),
(447, 'F5', '5BW18', '2486,840,2486,872,2509,876,2518,896,2547,896,2547,840', '18'),
(448, 'F5', '5BW37', '2668,839,2668,871,2691,875,2700,895,2729,895,2729,839', '37'),
(449, 'F5', '5BW20', '2487,1004,2487,1036,2510,1040,2519,1060,2548,1060,2548,1004', '20'),
(450, 'F5', '5BW39', '2667,1005,2667,1037,2690,1041,2699,1061,2728,1061,2728,1005', '39'),
(451, 'F5', '5BW53', '2904,841,2904,873,2927,877,2936,897,2965,897,2965,841', '53'),
(452, 'F5', '5BW55', '2904,1004,2904,1036,2927,1040,2936,1060,2965,1060,2965,1004', '55'),
(453, 'F5', '5BW125', '3651,676,3651,708,3674,712,3683,732,3712,732,3712,676', '125'),
(454, 'F5', '5BW106', '3445,676,3445,708,3468,712,3477,732,3506,732,3506,676', '106'),
(455, 'F5', '5BW35', '2667,676,2667,708,2690,712,2699,732,2728,732,2728,676', '35'),
(456, 'F5', '5BW51', '2905,676,2905,708,2928,712,2937,732,2966,732,2966,676', '51'),
(457, 'F5', '5BW67', '3084,676,3084,708,3107,712,3116,732,3145,732,3145,676', '67'),
(458, 'F5', '5BW86', '3265,676,3265,708,3288,712,3297,732,3326,732,3326,676', '86'),
(459, 'F5', '5BW16', '2487,675,2487,707,2510,711,2519,731,2548,731,2548,675', '16'),
(460, 'F5', '5BW139', '3717,674,3719,731,3749,731,3758,711,3782,705,3782,675', '139'),
(461, 'F5', '5BW121', '3511,675,3513,732,3543,732,3552,712,3576,706,3576,676', '121'),
(462, 'F5', '5BW66', '2969,675,2971,732,3001,732,3010,712,3034,706,3034,676', '66'),
(463, 'F5', '5BW81', '3150,676,3152,733,3182,733,3191,713,3215,707,3215,677', '81'),
(464, 'F5', '5BW64', '2970,839,2972,896,3002,896,3011,876,3035,870,3035,840', '64'),
(465, 'F5', '5BW79', '3151,840,3153,897,3183,897,3192,877,3216,871,3216,841', '79'),
(466, 'F5', '5BW101', '3331,675,3333,732,3363,732,3372,712,3396,706,3396,676', '101'),
(467, 'F5', '5BW99', '3331,839,3333,896,3363,896,3372,876,3396,870,3396,840', '99'),
(468, 'F5', '5BW97', '3332,1004,3334,1061,3364,1061,3373,1041,3397,1035,3397,1005', '97'),
(469, 'F5', '5BW135', '3717,1004,3719,1061,3749,1061,3758,1041,3782,1035,3782,1005', '135'),
(470, 'F5', '5BW77', '3150,1002,3152,1059,3182,1059,3191,1039,3215,1033,3215,1003', '77'),
(471, 'F5', '5BW62', '2970,1003,2972,1060,3002,1060,3011,1040,3035,1034,3035,1004', '62'),
(472, 'F5', '5BW117', '3511,1004,3513,1061,3543,1061,3552,1041,3576,1035,3576,1005', '117'),
(473, 'F5', '5BW133', '3717,1168,3719,1225,3749,1225,3758,1205,3782,1199,3782,1169', '133'),
(474, 'F5', '5BW95', '3331,1168,3333,1225,3363,1225,3372,1205,3396,1199,3396,1169', '95'),
(475, 'F5', '5BW75', '3151,1168,3153,1225,3183,1225,3192,1205,3216,1199,3216,1169', '75'),
(476, 'F5', '5BW115', '3511,1168,3513,1225,3543,1225,3552,1205,3576,1199,3576,1169', '115'),
(477, 'F5', '5BW137', '3717,840,3719,897,3749,897,3758,877,3782,871,3782,841', '37'),
(478, 'F5', '5BW60', '2970,1169,2972,1226,3002,1226,3011,1206,3035,1200,3035,1170', '60'),
(479, 'F5', '5BW44', '2789,1168,2791,1225,2821,1225,2830,1205,2854,1199,2854,1169', '44'),
(480, 'F5', '5BW02', '2371,1169,2373,1226,2403,1226,2412,1206,2436,1200,2436,1170', '02'),
(481, 'F5', '5BW24', '2552,1169,2554,1226,2584,1226,2593,1206,2617,1200,2617,1170', '24'),
(482, 'F5', '5BW04', '2371,1004,2373,1061,2403,1061,2412,1041,2436,1035,2436,1005', '04'),
(483, 'F5', '5BW26', '2552,1003,2554,1060,2584,1060,2593,1040,2617,1034,2617,1004', '26'),
(484, 'F5', '5BW46', '2790,1004,2792,1061,2822,1061,2831,1041,2855,1035,2855,1005', '46'),
(485, 'F5', '5BW06', '2372,840,2374,897,2404,897,2413,877,2437,871,2437,841', '06'),
(486, 'F5', '5BW28', '2552,840,2554,897,2584,897,2593,877,2617,871,2617,841', '28'),
(487, 'F5', '5BW48', '2789,840,2791,897,2821,897,2830,877,2854,871,2854,841', '48'),
(488, 'F5', '5BW08', '2372,676,2374,733,2404,733,2413,713,2437,707,2437,677', '08'),
(489, 'F5', '5BW30', '2552,675,2554,732,2584,732,2593,712,2617,706,2617,676', '30'),
(490, 'F5', '5BW50', '2790,676,2792,733,2822,733,2831,713,2855,707,2855,677', '50'),
(491, 'F5', '5BW131', '3683,1274,3716,1274,3714,1330,3651,1330,3651,1300,3675,1291', '131'),
(492, 'F5', '5BW111', '3477,1109,3510,1109,3508,1165,3445,1165,3445,1135,3469,1126', '111'),
(493, 'F5', '5BW91', '3296,1109,3329,1109,3327,1165,3264,1165,3264,1135,3288,1126', '91'),
(494, 'F5', '5BW93', '3296,1273,3329,1273,3327,1329,3264,1329,3264,1299,3288,1290', '93'),
(495, 'F5', '5BW113', '3477,1274,3510,1274,3508,1330,3445,1330,3445,1300,3469,1291', '113'),
(496, 'F5', '5BW17', '2519,781,2552,781,2550,837,2487,837,2487,807,2511,798', '17'),
(497, 'F5', '5BW36', '2699,781,2732,781,2730,837,2667,837,2667,807,2691,798', '36'),
(498, 'F5', '5BW19', '2518,945,2551,945,2549,1001,2486,1001,2486,971,2510,962', '19'),
(499, 'F5', '5BW38', '2699,946,2732,946,2730,1002,2667,1002,2667,972,2691,963', '38'),
(500, 'F5', '5BW52', '2934,782,2967,782,2965,838,2902,838,2902,808,2926,799', '52'),
(501, 'F5', '5BW68', '3116,781,3149,781,3147,837,3084,837,3084,807,3108,798', '68'),
(502, 'F5', '5BW40', '2699,1109,2732,1109,2730,1165,2667,1165,2667,1135,2691,1126', '40'),
(503, 'F5', '5BW58', '2935,1274,2968,1274,2966,1330,2903,1330,2903,1300,2927,1291', '58'),
(504, 'F5', '5BW42', '2699,1274,2732,1274,2730,1330,2667,1330,2667,1300,2691,1291', '42'),
(505, 'F5', '5BW56', '2936,1109,2969,1109,2967,1165,2904,1165,2904,1135,2928,1126', '56'),
(506, 'F5', '5BW22', '2519,1273,2552,1273,2550,1329,2487,1329,2487,1299,2511,1290', '22'),
(507, 'F5', '5BW128', '3682,945,3715,945,3713,1001,3650,1001,3650,971,3674,962', '128'),
(508, 'F5', '5BW89', '3297,945,3330,945,3328,1001,3265,1001,3265,971,3289,962', '89'),
(509, 'F5', '5BW107', '3478,781,3511,781,3509,837,3446,837,3446,807,3470,798', '107'),
(510, 'F5', '5BW109', '3477,945,3510,945,3508,1001,3445,1001,3445,971,3469,962', '109'),
(511, 'F5', '5BW87', '3297,782,3330,782,3328,838,3265,838,3265,808,3289,799', '87'),
(512, 'F5', '5BW54', '2936,945,2969,945,2967,1001,2904,1001,2904,971,2928,962', '54'),
(513, 'F5', '5BW126', '3684,781,3717,781,3715,837,3652,837,3652,807,3676,798', '126'),
(514, 'F5', '5BW73', '3116,1274,3149,1274,3147,1330,3084,1330,3084,1300,3108,1291', '73'),
(515, 'F5', '5BW70', '3117,944,3150,944,3148,1000,3085,1000,3085,970,3109,961', '70'),
(516, 'F5', '5BW138', '3719,780,3751,780,3758,799,3781,805,3782,837,3719,836', '138'),
(517, 'F5', '5BW120', '3513,780,3545,780,3552,799,3575,805,3576,837,3513,836', '120'),
(518, 'F5', '5BW100', '3333,781,3365,781,3372,800,3395,806,3396,838,3333,837', '100'),
(519, 'F5', '5BW80', '3150,781,3182,781,3189,800,3212,806,3213,838,3150,837', '80'),
(520, 'F5', '5BW78', '3152,943,3184,943,3191,962,3214,968,3215,1000,3152,999', '78'),
(521, 'F5', '5BW98', '3332,944,3364,944,3371,963,3394,969,3395,1001,3332,1000', '98'),
(522, 'F5', '5BW118', '3512,944,3544,944,3551,963,3574,969,3575,1001,3512,1000', '118'),
(523, 'F5', '5BW136', '3717,944,3749,944,3756,963,3779,969,3780,1001,3717,1000', '136'),
(524, 'F5', '5BW74', '3152,1273,3184,1273,3191,1292,3214,1298,3215,1330,3152,1329', '74'),
(525, 'F5', '5BW94', '3333,1273,3365,1273,3372,1292,3395,1298,3396,1330,3333,1329', '94'),
(526, 'F5', '5BW76', '3152,1108,3184,1108,3191,1127,3214,1133,3215,1165,3152,1164', '76'),
(527, 'F5', '5BW96', '3332,1107,3364,1107,3371,1126,3394,1132,3395,1164,3332,1163', '96'),
(528, 'F5', '5BW136', '3717,944,3749,944,3756,963,3779,969,3780,1001,3717,1000', '136'),
(529, 'F5', '5BW74', '3152,1273,3184,1273,3191,1292,3214,1298,3215,1330,3152,1329', '74'),
(530, 'F5', '5BW94', '3333,1273,3365,1273,3372,1292,3395,1298,3396,1330,3333,1329', '94'),
(531, 'F5', '5BW76', '3152,1108,3184,1108,3191,1127,3214,1133,3215,1165,3152,1164', '76'),
(532, 'F5', '5BW96', '3332,1107,3364,1107,3371,1126,3394,1132,3395,1164,3332,1163', '96'),
(533, 'F5', '5BW116', '3513,1107,3545,1107,3552,1126,3575,1132,3576,1164,3513,1163', '116'),
(534, 'F5', '5BW134', '3718,1109,3750,1109,3757,1128,3780,1134,3781,1166,3718,1165', '134'),
(535, 'F5', '5BW132', '3719,1273,3751,1273,3758,1292,3781,1298,3782,1330,3719,1329', '132'),
(536, 'F5', '5BW114', '3512,1272,3544,1272,3551,1291,3574,1297,3575,1329,3512,1328', '114'),
(537, 'F5', '5BW29', '2554,781,2586,781,2593,800,2616,806,2617,838,2554,837', '29'),
(538, 'F5', '5BW49', '2791,780,2823,780,2830,799,2853,805,2854,837,2791,836', '49'),
(539, 'F5', '5BW65', '2972,780,3004,780,3011,799,3034,805,3035,837,2972,836', '65'),
(540, 'F5', '5BW05', '2374,944,2406,944,2413,963,2436,969,2437,1001,2374,1000', '05'),
(541, 'F5', '5BW27', '2554,944,2586,944,2593,963,2616,969,2617,1001,2554,1000', '27'),
(542, 'F5', '5BW47', '2791,944,2823,944,2830,963,2853,969,2854,1001,2791,1000', '47'),
(543, 'F5', '5BW63', '2971,944,3003,944,3010,963,3033,969,3034,1001,2971,1000', '63'),
(544, 'F5', '5BW03', '2374,1109,2406,1109,2413,1128,2436,1134,2437,1166,2374,1165', '03'),
(545, 'F5', '5BW25', '2554,1109,2586,1109,2593,1128,2616,1134,2617,1166,2554,1165', '25'),
(546, 'F5', '5BW45', '2791,1109,2823,1109,2830,1128,2853,1134,2854,1166,2791,1165', '45'),
(547, 'F5', '5BW61', '2972,1109,3004,1109,3011,1128,3034,1134,3035,1166,2972,1165', '61'),
(548, 'F5', '5BW01', '2374,1272,2406,1272,2413,1291,2436,1297,2437,1329,2374,1328', '01'),
(549, 'F5', '5BW23', '2554,1272,2586,1272,2593,1291,2616,1297,2617,1329,2554,1328', '23'),
(550, 'F5', '5BW43', '2791,1272,2823,1272,2830,1291,2853,1297,2854,1329,2791,1328', '43'),
(551, 'F5', '5BW59', '2971,1273,3003,1273,3010,1292,3033,1298,3034,1330,2971,1329', '59'),
(552, 'F5', '5BW122', '3502,529,3534,529,3541,548,3564,554,3565,586,3502,585', '122'),
(553, 'F5', '5BW68', '3116,781,3149,781,3147,837,3084,837,3084,807,3108,798', '68'),
(554, 'F5', '5BW40', '2699,1109,2732,1109,2730,1165,2667,1165,2667,1135,2691,1126', '40'),
(555, 'F5', '5BW58', '2935,1274,2968,1274,2966,1330,2903,1330,2903,1300,2927,1291', '58'),
(556, 'F5', '5BW42', '2699,1274,2732,1274,2730,1330,2667,1330,2667,1300,2691,1291', '42'),
(557, 'F5', '5BW56', '2936,1109,2969,1109,2967,1165,2904,1165,2904,1135,2928,1126', '56'),
(558, 'F5', '5BW22', '2519,1273,2552,1273,2550,1329,2487,1329,2487,1299,2511,1290', '22'),
(559, 'F5', '5BW128', '3682,945,3715,945,3713,1001,3650,1001,3650,971,3674,962', '128'),
(560, 'F5', '5BW89', '3297,945,3330,945,3328,1001,3265,1001,3265,971,3289,962', '89'),
(561, 'F5', '5BW107', '3478,781,3511,781,3509,837,3446,837,3446,807,3470,798', '107'),
(562, 'F5', '5BW109', '3477,945,3510,945,3508,1001,3445,1001,3445,971,3469,962', '109'),
(563, 'F5', '5BW87', '3297,782,3330,782,3328,838,3265,838,3265,808,3289,799', '87'),
(564, 'F5', '5BW54', '2936,945,2969,945,2967,1001,2904,1001,2904,971,2928,962', '54'),
(565, 'F5', '5BW126', '3684,781,3717,781,3715,837,3652,837,3652,807,3676,798', '126'),
(566, 'F5', '5BW73', '3116,1274,3149,1274,3147,1330,3084,1330,3084,1300,3108,1291', '73'),
(567, 'F5', '5BW70', '3117,944,3150,944,3148,1000,3085,1000,3085,970,3109,961', '70'),
(568, 'F5', '5BW138', '3719,780,3751,780,3758,799,3781,805,3782,837,3719,836', '138'),
(569, 'F5', '5BW120', '3513,780,3545,780,3552,799,3575,805,3576,837,3513,836', '120'),
(570, 'F5', '5BW100', '3333,781,3365,781,3372,800,3395,806,3396,838,3333,837', '100'),
(571, 'F5', '5BW80', '3150,781,3182,781,3189,800,3212,806,3213,838,3150,837', '80'),
(572, 'F5', '5BW78', '3152,943,3184,943,3191,962,3214,968,3215,1000,3152,999', '78'),
(573, 'F5', '5BW98', '3332,944,3364,944,3371,963,3394,969,3395,1001,3332,1000', '98'),
(574, 'F5', '5BW118', '3512,944,3544,944,3551,963,3574,969,3575,1001,3512,1000', '118'),
(575, 'F5', '5BW136', '3717,944,3749,944,3756,963,3779,969,3780,1001,3717,1000', '136'),
(576, 'F5', '5BW74', '3152,1273,3184,1273,3191,1292,3214,1298,3215,1330,3152,1329', '74'),
(577, 'F5', '5BW94', '3333,1273,3365,1273,3372,1292,3395,1298,3396,1330,3333,1329', '94'),
(578, 'F5', '5BW76', '3152,1108,3184,1108,3191,1127,3214,1133,3215,1165,3152,1164', '76'),
(579, 'F5', '5BW96', '3332,1107,3364,1107,3371,1126,3394,1132,3395,1164,3332,1163', '96'),
(580, 'F5', '5BW49', '2791,780,2823,780,2830,799,2853,805,2854,837,2791,836', '49'),
(581, 'F5', '5BW65', '2972,780,3004,780,3011,799,3034,805,3035,837,2972,836', '65'),
(582, 'F5', '5BW05', '2374,944,2406,944,2413,963,2436,969,2437,1001,2374,1000', '05'),
(583, 'F5', '5BW27', '2554,944,2586,944,2593,963,2616,969,2617,1001,2554,1000', '27'),
(584, 'F5', '5BW47', '2791,944,2823,944,2830,963,2853,969,2854,1001,2791,1000', '47'),
(585, 'F5', '5BW63', '2971,944,3003,944,3010,963,3033,969,3034,1001,2971,1000', '63'),
(586, 'F5', '5BW03', '2374,1109,2406,1109,2413,1128,2436,1134,2437,1166,2374,1165', '03'),
(587, 'F5', '5BW25', '2554,1109,2586,1109,2593,1128,2616,1134,2617,1166,2554,1165', '25'),
(588, 'F5', '5BW45', '2791,1109,2823,1109,2830,1128,2853,1134,2854,1166,2791,1165', '45'),
(589, 'F5', '5BW61', '2972,1109,3004,1109,3011,1128,3034,1134,3035,1166,2972,1165', '61'),
(590, 'F5', '5BW01', '2374,1272,2406,1272,2413,1291,2436,1297,2437,1329,2374,1328', '01'),
(591, 'F5', '5BW23', '2554,1272,2586,1272,2593,1291,2616,1297,2617,1329,2554,1328', '23'),
(592, 'F5', '5BW43', '2791,1272,2823,1272,2830,1291,2853,1297,2854,1329,2791,1328', '43'),
(593, 'F5', '5BW59', '2971,1273,3003,1273,3010,1292,3033,1298,3034,1330,2971,1329', '59'),
(594, 'F5', '5BW122', '3502,529,3534,529,3541,548,3564,554,3565,586,3502,585', '122'),
(595, 'F5', '5BW102', '3322,529,3354,529,3361,548,3384,554,3385,586,3322,585', '102'),
(596, 'F5', '5BW124', '3646,424,3646,456,3669,460,3678,480,3707,480,3707,424', '124'),
(597, 'F5', '5BW104', '3434,424,3434,456,3457,460,3466,480,3495,480,3495,424', '104'),
(598, 'F5', '5BW84', '3254,423,3254,455,3277,459,3286,479,3315,479,3315,423', '84'),
(599, 'F5', '5BW33', '2686,425,2686,457,2709,461,2718,481,2747,481,2747,425', '33'),
(600, 'F5', '5BW15', '2506,424,2506,456,2529,460,2538,480,2567,480,2567,424', '15'),
(601, 'F5', '5BW82', '3141,528,3173,528,3180,547,3203,553,3204,585,3141,584', '82'),
(602, 'F5', '5BW07', '2374,780,2406,780,2413,799,2436,805,2437,837,2374,836', '07'),
(603, 'F5', '5BW13', '2391,530,2423,530,2430,549,2453,555,2454,587,2391,586', '13'),
(604, 'F5', '5BW31', '2573,529,2605,529,2612,548,2635,554,2636,586,2573,585', '31'),
(605, 'F5', '5BW105', '3466,530,3499,530,3497,586,3434,586,3434,556,3458,547', '105'),
(606, 'F5', '5BW34', '2718,529,2751,529,2749,585,2686,585,2686,555,2710,546', '34'),
(607, 'F5', '5BW85', '3286,530,3319,530,3317,586,3254,586,3254,556,3278,547', '85'),
(608, 'F5', '5BW123', '3500,423,3502,480,3532,480,3541,460,3565,454,3565,424', '123'),
(609, 'F5', '5BW103', '3321,424,3323,481,3353,481,3362,461,3386,455,3386,425', '103'),
(610, 'F5', '5BW10', '2210,423,2212,480,2242,480,2251,460,2275,454,2275,424', '10'),
(611, 'F5', '5BW32', '2571,423,2573,480,2603,480,2612,460,2636,454,2636,424', '32'),
(612, 'F5', '5BW83', '3140,423,3142,480,3172,480,3181,460,3205,454,3205,424', '83'),
(613, 'F5', '5BW11', '2325,424,2325,456,2348,460,2357,480,2386,480,2386,424', '11'),
(614, 'F5', '5BW14', '2391,424,2393,481,2423,481,2432,461,2456,455,2456,425', '14'),
(615, 'F5', '5BW12', '2357,530,2390,530,2388,586,2325,586,2325,556,2349,547', '12'),
(616, 'F5', '5BW09', '2211,529,2243,529,2250,548,2273,554,2274,586,2211,585', '09'),
(617, 'F5', '5AW38', '1168,1109,1200,1109,1207,1128,1230,1134,1231,1166,1168,1165', '38'),
(618, 'F5', '5AW40', '1168,1273,1200,1273,1207,1292,1230,1298,1231,1330,1168,1329', '40'),
(619, 'F5', '5AW20', '1347,1272,1379,1272,1386,1291,1409,1297,1410,1329,1347,1328', '20'),
(620, 'F5', '5AW36', '1167,944,1199,944,1206,963,1229,969,1230,1001,1167,1000', '36'),
(621, 'F5', '5AW17', '1347,943,1379,943,1386,962,1409,968,1410,1000,1347,999', '17'),
(622, 'F5', '5AW34', '1167,780,1199,780,1206,799,1229,805,1230,837,1167,836', '34'),
(623, 'F5', '5AW15', '1348,780,1380,780,1387,799,1410,805,1411,837,1348,836', '15'),
(624, 'F5', '5AW08', '1462,675,1462,707,1485,712,1494,731,1523,731,1523,675', '08'),
(625, 'F5', '5AW28', '1281,675,1281,707,1304,712,1313,731,1342,731,1342,675', '28'),
(626, 'F5', '5AW06', '1462,840,1462,872,1485,877,1494,896,1523,896,1523,840', '06'),
(627, 'F5', '5AW26', '1281,840,1281,872,1304,877,1313,896,1342,896,1342,840', '26'),
(628, 'F5', '5AW24', '1281,1004,1281,1036,1304,1041,1313,1060,1342,1060,1342,1004', '24'),
(629, 'F5', '5AW04', '1461,1003,1461,1035,1484,1040,1493,1059,1523,1063,1522,1003', '04'),
(630, 'F5', '5AW22', '1281,1168,1281,1200,1304,1205,1313,1224,1342,1224,1342,1168', '22'),
(631, 'F5', '5AW02', '1460,1169,1460,1201,1483,1206,1492,1225,1524,1223,1524,1170', '02'),
(632, 'F5', '5AW03', '1492,1108,1525,1108,1523,1164,1460,1164,1460,1134,1484,1125', '03'),
(633, 'F5', '5AW23', '1312,1109,1345,1109,1343,1165,1280,1165,1280,1135,1304,1126', '23'),
(634, 'F5', '5AW21', '1312,1273,1345,1273,1343,1329,1280,1329,1280,1299,1304,1290', '21'),
(635, 'F5', '5AW25', '1312,945,1345,945,1343,1001,1280,1001,1280,971,1304,962', '25'),
(636, 'F5', '5AW05', '1493,945,1526,945,1524,1001,1461,1001,1461,971,1485,962', '05'),
(637, 'F5', '5AW27', '1312,781,1345,781,1343,837,1280,837,1280,807,1304,798', '27'),
(638, 'F5', '5AW07', '1493,781,1526,781,1524,837,1461,837,1461,807,1485,798', '07'),
(639, 'F5', '5AW01', '1493,1274,1526,1274,1524,1330,1461,1330,1461,1300,1485,1291', '01'),
(640, 'F5', '5AW19', '1347,1166,1349,1223,1379,1223,1388,1203,1412,1197,1412,1167', '19'),
(641, 'F5', '5AW14', '1346,675,1348,732,1378,732,1387,712,1411,706,1411,676', '14'),
(642, 'F5', '5AW16', '1346,839,1348,896,1378,896,1387,876,1411,870,1411,840', '16'),
(643, 'F5', '5AW35', '1166,838,1168,895,1198,895,1207,875,1231,869,1231,839', '35'),
(644, 'F5', '5AW37', '1166,1003,1168,1060,1198,1060,1207,1040,1231,1034,1231,1004', '37'),
(645, 'F5', '5AW18', '1347,1003,1349,1060,1379,1060,1388,1040,1412,1034,1412,1004', '18'),
(646, 'F5', '5AW39', '1166,1167,1168,1224,1198,1224,1207,1204,1231,1198,1231,1168', '39'),
(647, 'F5', '5AW33', '1166,675,1168,732,1198,732,1207,712,1231,706,1231,676', '33'),
(648, 'F5', '5AW69', '729,1003,731,1060,761,1060,770,1040,794,1034,794,1004', '69'),
(649, 'F5', '5AW53', '910,1003,912,1060,942,1060,951,1040,975,1034,975,1004', '53'),
(650, 'F5', '5AW111', '369,1167,371,1224,401,1224,410,1204,434,1198,434,1168', '111'),
(651, 'F5', '5AW90', '549,1167,551,1224,581,1224,590,1204,614,1198,614,1168', '90'),
(652, 'F5', '5AW70', '730,1168,732,1225,762,1225,771,1205,795,1199,795,1169', '70'),
(653, 'F5', '5AW55', '911,1167,913,1224,943,1224,952,1204,976,1198,976,1168', '55'),
(654, 'F5', '5AW88', '549,1003,551,1060,581,1060,590,1040,614,1034,614,1004', '88'),
(655, 'F5', '5AW127', '188,1168,190,1225,220,1225,229,1205,253,1199,253,1169', '127'),
(656, 'F5', '5AW109', '368,1003,370,1060,400,1060,409,1040,433,1034,433,1004', '109'),
(657, 'F5', '5AW51', '910,839,912,896,942,896,951,876,975,870,975,840', '51'),
(658, 'F5', '5AW67', '730,840,732,897,762,897,771,877,795,871,795,841', '67'),
(659, 'F5', '5AW86', '549,840,551,897,581,897,590,877,614,871,614,841', '86'),
(660, 'F5', '5AW107', '369,839,371,896,401,896,410,876,434,870,434,840', '107'),
(661, 'F5', '5AW124', '188,840,190,897,220,897,229,877,253,871,253,841', '124'),
(662, 'F5', '5AW126', '187,1004,189,1061,219,1061,228,1041,252,1035,252,1005', '126'),
(663, 'F5', '5AW49', '910,675,912,732,942,732,951,712,975,706,975,676', '49'),
(664, 'F5', '5AW65', '730,675,732,732,762,732,771,712,795,706,795,676', '65'),
(665, 'F5', '5AW84', '549,675,551,732,581,732,590,712,614,706,614,676', '84'),
(666, 'F5', '5AW104', '369,676,371,733,401,733,410,713,434,707,434,677', '104'),
(667, 'F5', '5AW122', '188,675,190,732,220,732,229,712,253,706,253,676', '122'),
(668, 'F5', '5AW130', '123,1168,123,1200,146,1205,155,1224,184,1224,184,1168', '130'),
(669, 'F5', '5AW42', '1025,1169,1025,1201,1048,1206,1057,1225,1086,1225,1086,1169', '42'),
(670, 'F5', '5AW58', '845,1169,845,1201,868,1206,877,1225,906,1225,906,1169', '58'),
(671, 'F5', '5AW73', '664,1169,664,1201,687,1206,696,1225,725,1225,725,1169', '73'),
(672, 'F5', '5AW93', '484,1168,484,1200,507,1205,516,1224,545,1224,545,1168', '93'),
(673, 'F5', '5AW113', '304,1169,304,1201,327,1206,336,1225,365,1225,365,1169', '113'),
(674, 'F5', '5AW44', '1025,1003,1025,1035,1048,1040,1057,1059,1086,1059,1086,1003', '44'),
(675, 'F5', '5AW48', '1026,676,1026,708,1049,713,1058,732,1087,732,1087,676', '48'),
(676, 'F5', '5AW64', '845,676,845,708,868,713,877,732,906,732,906,676', '64'),
(677, 'F5', '5AW79', '664,675,664,707,687,712,696,731,725,731,725,675', '79'),
(678, 'F5', '5AW99', '484,675,484,707,507,712,516,731,545,731,545,675', '99'),
(679, 'F5', '5AW119', '304,676,304,708,327,713,336,732,365,732,365,676', '119'),
(680, 'F5', '5AW134', '123,840,123,872,146,877,155,896,184,896,184,840', '134'),
(681, 'F5', '5AW117', '303,839,303,871,326,876,335,895,364,895,364,839', '117'),
(682, 'F5', '5AW97', '484,840,484,872,507,877,516,896,545,896,545,840', '97'),
(683, 'F5', '5AW77', '664,840,664,872,687,877,696,896,725,896,725,840', '77'),
(684, 'F5', '5AW62', '844,842,844,870,867,873,876,898,905,898,905,842', '62'),
(685, 'F5', '5AW46', '1025,840,1025,872,1048,877,1057,896,1086,896,1086,840', '46'),
(686, 'F5', '5AW132', '123,1004,123,1036,146,1041,155,1060,184,1060,184,1004', '132'),
(687, 'F5', '5AW115', '303,1004,303,1036,326,1041,335,1060,364,1060,364,1004', '115'),
(688, 'F5', '5AW95', '484,1005,484,1037,507,1042,516,1061,545,1061,545,1005', '95'),
(689, 'F5', '5AW75', '664,1005,664,1037,687,1038,696,1061,725,1061,725,1005', '75'),
(690, 'F5', '5AW60', '844,1004,844,1036,867,1041,876,1060,905,1060,905,1004', '60'),
(691, 'F5', '5AW136', '123,675,123,707,146,712,155,731,184,731,184,675', '136'),
(692, 'F5', '5AW129', '155,1274,188,1274,186,1330,123,1330,123,1300,147,1291', '129'),
(693, 'F5', '5AW112', '335,1273,368,1273,366,1329,303,1329,303,1299,327,1290', '112'),
(694, 'F5', '5AW41', '1056,1273,1089,1273,1087,1329,1024,1329,1024,1299,1048,1290', '41'),
(695, 'F5', '5AW57', '877,1273,910,1273,908,1329,845,1329,845,1299,869,1290', '57'),
(696, 'F5', '5AW72', '696,1273,729,1273,727,1329,664,1329,664,1299,688,1290', '72'),
(697, 'F5', '5AW92', '516,1273,549,1273,547,1329,484,1329,484,1299,508,1290', '92'),
(698, 'F5', '5AW43', '1057,1110,1090,1110,1088,1166,1025,1166,1025,1136,1049,1127', '43'),
(699, 'F5', '5AW59', '877,1109,910,1109,908,1165,845,1165,845,1135,869,1126', '59'),
(700, 'F5', '5AW74', '695,1109,728,1109,726,1165,663,1165,663,1135,687,1126', '74'),
(701, 'F5', '5AW94', '517,1109,550,1109,548,1165,485,1165,485,1135,509,1126', '94'),
(702, 'F5', '5AW114', '335,1109,368,1109,366,1165,303,1165,303,1135,327,1126', '114'),
(703, 'F5', '5AW131', '155,1108,188,1108,186,1164,123,1164,123,1134,147,1125', '131'),
(704, 'F5', '5AW45', '1057,945,1090,945,1088,1001,1025,1001,1025,971,1049,962', '45'),
(705, 'F5', '5AW61', '876,945,909,945,907,1001,844,1001,844,971,868,962', '61'),
(706, 'F5', '5AW76', '696,945,729,945,727,1001,664,1001,664,971,688,962', '76'),
(707, 'F5', '5AW96', '515,945,548,945,546,1001,483,1001,483,971,507,962', '96'),
(708, 'F5', '5AW116', '335,944,368,944,366,1000,303,1000,303,970,327,961', '116'),
(709, 'F5', '5AW133', '155,945,188,945,186,1001,123,1001,123,971,147,962', '133'),
(710, 'F5', '5AW118', '334,781,367,781,365,837,302,837,302,807,326,798', '118'),
(711, 'F5', '5AW98', '516,781,549,781,547,837,484,837,484,807,508,798', '98'),
(712, 'F5', '5AW78', '695,781,728,781,726,837,663,837,663,807,687,798', '78'),
(713, 'F5', '5AW63', '876,781,909,781,907,837,844,837,844,807,868,798', '63'),
(714, 'F5', '5AW47', '1057,780,1090,780,1088,836,1025,836,1025,806,1049,797', '47'),
(715, 'F5', '5AW135', '154,781,187,781,185,837,122,837,122,807,146,798', '135'),
(716, 'F5', '5AW125', '190,943,222,943,230,966,254,970,253,1000,190,999', '125'),
(717, 'F5', '5AW128', '191,1273,223,1273,230,1292,253,1298,254,1330,191,1329', '128'),
(718, 'F5', '5AW112', '371,1273,403,1273,410,1292,433,1298,434,1330,371,1329', '112'),
(719, 'F5', '5AW105', '370,780,402,780,409,799,432,805,433,837,370,836', '105'),
(720, 'F5', '5AW108', '370,944,402,944,409,963,432,969,433,1001,370,1000', '108'),
(721, 'F5', '5AW110', '369,1109,401,1109,408,1128,431,1134,432,1166,369,1165', '110'),
(722, 'F5', '5AW85', '550,780,582,780,589,799,612,805,613,837,550,836', '85'),
(723, 'F5', '5AW89', '551,1107,583,1107,590,1126,613,1132,614,1164,551,1163', '89'),
(724, 'F5', '5AW87', '551,944,583,944,590,963,613,969,614,1001,551,1000', '87'),
(725, 'F5', '5AW91', '551,1273,583,1273,590,1292,613,1298,614,1330,551,1329', '91'),
(726, 'F5', '5AW66', '731,780,763,780,770,799,793,805,794,837,731,836', '66'),
(727, 'F5', '5AW68', '731,943,763,943,770,962,793,968,794,1000,731,999', '68'),
(728, 'F5', '5AW71', '732,1273,764,1273,771,1292,794,1298,795,1330,732,1329', '71'),
(729, 'F5', '5AW50', '911,780,943,780,950,799,973,805,974,837,911,836', '50'),
(730, 'F5', '5AW52', '911,943,943,943,950,962,973,968,974,1000,911,999', '52'),
(731, 'F5', '5AW54', '911,1109,943,1109,950,1128,973,1134,974,1166,911,1165', '54'),
(732, 'F5', '5AW56', '911,1273,943,1273,950,1292,973,1298,974,1330,911,1329', '56'),
(733, 'F5', '5AW123', '190,779,222,779,229,798,252,804,253,836,190,835', '123');
INSERT INTO `wms_coordinates` (`id`, `floor_id`, `workstation_no`, `coordinates`, `sno`) VALUES
(734, 'F5', '5AW82', '541,423,541,455,564,460,573,479,602,479,602,423', '82'),
(735, 'F5', '5AW31', '1166,424,1168,481,1198,481,1207,461,1231,455,1231,425', '31'),
(736, 'F5', '5AW11', '1461,423,1461,455,1484,459,1493,479,1522,479,1522,423', '11'),
(737, 'F5', '5AW10', '1529,423,1531,480,1561,480,1570,460,1594,454,1594,424', '10'),
(738, 'F5', '5AW13', '1347,425,1349,482,1379,482,1388,462,1412,456,1412,426', '13'),
(739, 'F5', '5AW29', '1313,529,1346,529,1344,585,1281,585,1281,555,1305,546', '29'),
(740, 'F5', '5AW12', '1493,529,1526,529,1524,585,1461,585,1461,555,1485,546', '12'),
(741, 'F5', '5AW09', '1532,529,1564,529,1571,548,1594,554,1595,586,1532,585', '09'),
(742, 'F5', '5AW32', '1168,528,1200,528,1207,547,1230,553,1231,585,1168,584', '32'),
(743, 'F5', '5AW83', '572,529,605,529,603,585,540,585,540,555,564,546', '83'),
(744, 'F5', '5AW30', '1281,423,1281,455,1304,460,1313,479,1342,479,1342,423', '30');


-- --------------------------------------------------------

--
-- Table structure for table `wms_deallocation_seats`
--

CREATE TABLE `wms_deallocation_seats` (
  `id` int(5) NOT NULL,
  `floor_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `seat_number` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'None',
  `project_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'None',
  `request_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'None',
  `start_time` date NOT NULL,
  `end_time` date NOT NULL,
  `status` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'None',
  `flag` tinyint(1) NOT NULL,
  `insert_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wms_department_details`
--

CREATE TABLE `wms_department_details` (
  `id` int(5) NOT NULL,
  `dept_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `dept_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'None',
  `dept_location` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'None',
  `insert_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `wms_department_details`
--

INSERT INTO `wms_department_details` (`id`, `dept_id`, `dept_name`, `dept_location`, `insert_timestamp`, `modified_timestamp`) VALUES
(1, 'WMSDept_1', 'IT', 'Bangalore', '2019-09-12 10:28:37', '2019-09-12 10:28:37'),
(2, 'WMSDept_2', 'Human Resource', 'Bangalore', '2019-09-12 10:28:37', '2019-09-12 10:28:37'),
(3, 'WMSDept_3', 'Sales', 'Bangalore', '2019-09-12 10:28:37', '2019-09-12 10:28:37'),
(4, 'WMSDept_4', 'Finance', 'Bangalore', '2019-09-12 10:28:37', '2019-09-12 10:28:37'),
(5, 'WMSDept_5', 'Infrastructure', 'Bangalore', '2019-09-12 10:28:37', '2019-09-12 10:28:37');

-- --------------------------------------------------------

--
-- Table structure for table `wms_email_jobs`
--

CREATE TABLE `wms_email_jobs` (
  `id` int(50) NOT NULL,
  `from_id` varchar(50) NOT NULL,
  `to_id` varchar(50) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `attachment` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `request_id` varchar(50) NOT NULL,
  `request_status` varchar(50) NOT NULL,
  `inserted_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wms_email_jobs`
--

INSERT INTO `wms_email_jobs` (`id`, `from_id`, `to_id`, `subject`, `attachment`, `status`, `request_id`, `request_status`, `inserted_date`, `modified_date`) VALUES
(1, 'thiruvasagam.k@gmail.com', 'thiruvasagam.k@gmail.com', 'REQALC-2019-00000001|Allocation Requested', '', 'P', 'REQALC-2019-00000001', 'Approved', '2019-09-29 15:16:18', '2019-09-29 15:16:18'),
(2, 'thiruvasagam.k@gmail.com', 'thiruvasagam.k@gmail.com', 'REQALC-2019-00000001|Allocation Request Approved', '', 'P', 'REQALC-2019-00000001', 'Approved', '2019-09-29 15:18:50', '2019-09-29 15:18:50'),
(3, 'thiruvasagam.k@gmail.com', 'thiruvasagam.k@gmail.com', 'REQALC-2019-00000002|Allocation Requested', '', 'P', 'REQALC-2019-00000002', 'Approved', '2019-09-29 15:23:26', '2019-09-29 15:23:26'),
(4, 'thiruvasagam.k@gmail.com', 'thiruvasagam.k@gmail.com', 'REQALC-2019-00000002|Allocation Request Approved', '', 'P', 'REQALC-2019-00000002', 'Approved', '2019-09-29 15:51:37', '2019-09-29 15:51:37'),
(5, 'thiruvasagam.k@gmail.com', 'thiruvasagam.k@gmail.com', 'REQALC-2019-00000003|Allocation Requested', '', 'P', 'REQALC-2019-00000003', 'Approved', '2019-09-29 15:56:52', '2019-09-29 15:56:52'),
(6, 'thiruvasagam.k@gmail.com', 'thiruvasagam.k@gmail.com', 'REQALC-2019-00000003|Allocation Request Approved', '', 'P', 'REQALC-2019-00000003', 'Approved', '2019-09-29 15:58:15', '2019-09-29 15:58:15'),
(7, 'thiruvasagam.k@gmail.com', 'thiruvasagam.k@gmail.com', 'REQALC-2019-00000004|Allocation Requested', '', 'P', 'REQALC-2019-00000004', 'Approved', '2019-10-02 04:36:34', '2019-10-02 04:36:34'),
(8, 'thiruvasagam.k@gmail.com', 'thiruvasagam.k@gmail.com', 'REQALC-2019-00000005|Allocation Requested', '', 'P', 'REQALC-2019-00000005', 'Approved', '2019-10-03 01:27:16', '2019-10-03 01:27:16'),
(9, 'thiruvasagam.k@gmail.com', 'thiruvasagam.k@gmail.com', 'REQALC-2019-00000005|Allocation Request Approved', '', 'P', 'REQALC-2019-00000005', 'Approved', '2019-10-03 01:31:45', '2019-10-03 01:31:45'),
(10, 'thiruvasagam.k@gmail.com', 'thiruvasagam.k@gmail.com', 'REQALC-2019-00000004|Allocation Request Approved', '', 'P', 'REQALC-2019-00000004', 'Approved', '2019-10-03 02:54:45', '2019-10-03 02:54:45');

-- --------------------------------------------------------

--
-- Table structure for table `wms_employee_details`
--

CREATE TABLE `wms_employee_details` (
  `emp_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'None',
  `firstname` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'None',
  `lastname` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'None',
  `department_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'None',
  `gender` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'None',
  `doj` date NOT NULL,
  `insert_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `wms_employee_details`
--

INSERT INTO `wms_employee_details` (`emp_id`, `firstname`, `lastname`, `department_id`, `gender`, `doj`, `insert_timestamp`, `modified_timestamp`) VALUES
('atn1234', 'Vishnu', 'Prasad', 'AtnDev211', 'Male', '2017-08-17', '2019-08-19 11:17:11', '2019-08-19 11:17:11'),
('atn4321', 'Venatesh', 'P', 'AtnTes212', 'Male', '2017-08-17', '2019-08-19 11:17:11', '2019-08-19 11:17:11');

-- --------------------------------------------------------

--
-- Table structure for table `wms_employee_seats_asign`
--

CREATE TABLE `wms_employee_seats_asign` (
  `id` int(5) NOT NULL,
  `floor_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `wing` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `seat_number` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'None',
  `emp_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'None',
  `project_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'None',
  `request_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'None',
  `typeof_workspace` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'None',
  `start_time` date NOT NULL,
  `end_time` date NOT NULL,
  `status` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'None',
  `flag` int(50) NOT NULL,
  `insert_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `wms_employee_seats_asign`
--

INSERT INTO `wms_employee_seats_asign` (`id`, `floor_id`, `wing`, `seat_number`, `emp_id`, `project_id`, `request_id`, `typeof_workspace`, `start_time`, `end_time`, `status`, `flag`, `insert_timestamp`, `modified_timestamp`) VALUES
(1, 'A2AW06', 'W', 'A2AW06', 'SONYEMP103', 'GISC', 'REQALC-2019-00000002', 'Dedicated', '2019-09-30', '2019-10-05', 'A', 2, '2019-09-29 15:53:51', '2019-09-29 15:53:51'),
(2, 'A2AW06', 'W', 'A2AW06', 'SONYEMP307', 'GISC', 'REQALC-2019-00000002', 'Dedicated', '2019-09-30', '2019-10-05', 'A', 2, '2019-09-29 15:53:51', '2019-09-29 15:53:51'),
(3, 'A2AW06', 'W', 'A2AW06', 'SONYEMP503', 'GISC', 'REQALC-2019-00000002', 'Dedicated', '2019-09-30', '2019-10-05', 'A', 2, '2019-09-29 15:53:51', '2019-09-29 15:53:51'),
(4, 'A2AW11', 'W', 'A2AW11', 'SONYEMP202', 'CODE', 'REQALC-2019-00000003', 'Dedicated', '2019-09-29', '2019-09-29', 'Deallocated', 3, '2019-09-29 15:59:14', '2019-09-29 16:00:01'),
(5, 'A2AW11', 'W', 'A2AW11', 'SONYEMP209', 'CODE', 'REQALC-2019-00000003', 'Dedicated', '2019-09-29', '2019-09-29', 'Deallocated', 3, '2019-09-29 15:59:14', '2019-09-29 16:00:01'),
(6, 'A2AW11', 'W', 'A2AW11', 'SONYEMP503', 'CODE', 'REQALC-2019-00000003', 'Dedicated', '2019-09-29', '2019-09-29', 'Deallocated', 3, '2019-09-29 15:59:14', '2019-09-29 16:00:01'),
(7, 'A2AW11', 'W', 'A2AW11', 'SONYEMP307', 'CODE', 'REQALC-2019-00000003', 'Dedicated', '2019-09-29', '2019-09-29', 'Deallocated', 3, '2019-09-29 15:59:14', '2019-09-29 16:00:01'),
(13, 'F2', 'W', 'A2AW14', 'SONYEMP101', 'SIE Global', 'REQALC-2019-00000005', 'Dedicated', '2019-10-03', '2019-10-03', 'A', 2, '2019-10-03 03:01:58', '2019-10-03 03:01:58'),
(14, 'F2', 'W', 'A2AW14', ' SONYEMP102', 'SIE Global', 'REQALC-2019-00000005', 'Dedicated', '2019-10-03', '2019-10-03', 'A', 2, '2019-10-03 03:01:58', '2019-10-03 03:01:58'),
(15, 'F2', 'W', 'A2AW14', ' SONYEMP103', 'SIE Global', 'REQALC-2019-00000005', 'Dedicated', '2019-10-03', '2019-10-03', 'A', 2, '2019-10-03 03:01:58', '2019-10-03 03:01:58'),
(16, 'F2', 'W', 'A2AW13', 'SONYEMP209', 'SIE Global', 'REQALC-2019-00000005', 'Dedicated', '2019-10-03', '2019-10-03', 'A', 2, '2019-10-03 03:01:58', '2019-10-03 03:01:58'),
(17, 'F2', 'W', 'A2AW13', ' SONYEMP307', 'SIE Global', 'REQALC-2019-00000005', 'Dedicated', '2019-10-03', '2019-10-03', 'A', 2, '2019-10-03 03:01:58', '2019-10-03 03:01:58');

-- --------------------------------------------------------

--
-- Table structure for table `wms_emp_bulkupload`
--

CREATE TABLE `wms_emp_bulkupload` (
  `id` int(5) NOT NULL DEFAULT '0',
  `request_id` varchar(50) CHARACTER SET latin1 NOT NULL,
  `from_id` varchar(50) CHARACTER SET latin1 NOT NULL,
  `to_id` varchar(50) CHARACTER SET latin1 NOT NULL,
  `status` varchar(50) CHARACTER SET latin1 NOT NULL,
  `file_path` varchar(50) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `insert_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `wms_emp_bulkupload`
--

INSERT INTO `wms_emp_bulkupload` (`id`, `request_id`, `from_id`, `to_id`, `status`, `file_path`, `insert_timestamp`, `modified_timestamp`) VALUES
(1, 'REQALC-2019-00000002', 'fadmin@fadmin.com', 'padmin@padmin.com', 'D', 'D://Bulkupload//REQALC-2019-00000001.csv', '2019-09-20 09:26:23', '2019-09-20 09:26:36');

-- --------------------------------------------------------

--
-- Table structure for table `wms_fa_requests`
--

CREATE TABLE `wms_fa_requests` (
  `id` int(5) NOT NULL,
  `request_id` longtext COLLATE utf8_unicode_ci NOT NULL,
  `pm_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `department_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `project_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'None',
  `no_of_resource` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `typeofdesk` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'None',
  `start_time` date NOT NULL,
  `end_time` date NOT NULL,
  `status` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `remarks` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `flag` int(50) NOT NULL,
  `insert_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `wms_fa_requests`
--

INSERT INTO `wms_fa_requests` (`id`, `request_id`, `pm_id`, `department_id`, `project_id`, `no_of_resource`, `typeofdesk`, `start_time`, `end_time`, `status`, `remarks`, `flag`, `insert_timestamp`, `modified_timestamp`) VALUES
(1, 'REQALC-2019-00000001', 'SONYEMP01', 'IT', 'GISC', '3', 'Workstation', '2019-09-30', '2019-10-05', 'Assigned', 'No remarks', 2, '2019-09-29 15:16:18', '2019-09-29 15:21:16'),
(2, 'REQALC-2019-00000002', 'SONYEMP01', 'Sales', 'GISC', '3', 'Workstation', '2019-09-30', '2019-10-05', 'Assigned', 'No remarks', 2, '2019-09-29 15:23:26', '2019-09-29 15:53:51'),
(3, 'REQALC-2019-00000003', 'SONYEMP01', 'Finance', 'CODE', '4', 'Workstation', '2019-09-29', '2019-09-29', 'Deallocated', 'No remarks', 3, '2019-09-29 15:56:52', '2019-09-29 16:00:01'),
(4, 'REQALC-2019-00000004', 'SONYEMP01', 'IT', 'Forescout', '5', 'ODC', '2019-10-01', '2019-10-03', 'Allocated', 'No remarks', 1, '2019-10-02 04:36:34', '2019-10-03 02:54:45'),
(5, 'REQALC-2019-00000005', 'SONYEMP01', 'Finance', 'SIE Global', '5', 'Workstation', '2019-10-03', '2019-10-03', 'Assigned', 'No remarks', 2, '2019-10-03 01:27:16', '2019-10-03 03:01:58');

-- --------------------------------------------------------

--
-- Table structure for table `wms_floor_details_new`
--

CREATE TABLE `wms_floor_details_new` (
  `floor_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'None',
  `floor_name` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'None',
  `floor_capacity` int(20) NOT NULL,
  `insert_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wms_history`
--

CREATE TABLE `wms_history` (
  `id` int(5) NOT NULL,
  `request_id` longtext COLLATE utf8_unicode_ci NOT NULL,
  `remarks` longtext COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `insert_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `wms_history`
--

INSERT INTO `wms_history` (`id`, `request_id`, `remarks`, `status`, `insert_timestamp`, `modified_timestamp`) VALUES
(1, 'REQALC-2019-00000001', 'Requested by PM', 'Allocated', '2019-09-29 15:16:18', '2019-09-29 15:18:50'),
(2, 'REQALC-2019-00000001', 'Pending by FA', 'Allocated', '2019-09-29 15:16:18', '2019-09-29 15:18:50'),
(3, 'REQALC-2019-00000002', 'Requested by PM', 'Allocated', '2019-09-29 15:23:26', '2019-09-29 15:51:37'),
(4, 'REQALC-2019-00000002', 'Pending by FA', 'Allocated', '2019-09-29 15:23:26', '2019-09-29 15:51:37'),
(5, 'REQALC-2019-00000003', 'Requested by PM', 'Allocated', '2019-09-29 15:56:52', '2019-09-29 15:58:15'),
(6, 'REQALC-2019-00000003', 'Pending by FA', 'Allocated', '2019-09-29 15:56:52', '2019-09-29 15:58:15'),
(7, 'REQALC-2019-00000004', 'Requested by PM', 'Allocated', '2019-10-02 04:36:34', '2019-10-03 02:54:45'),
(8, 'REQALC-2019-00000004', 'Pending by FA', 'Allocated', '2019-10-02 04:36:34', '2019-10-03 02:54:45'),
(9, 'REQALC-2019-00000005', 'Requested by PM', 'Allocated', '2019-10-03 01:27:16', '2019-10-03 01:31:45'),
(10, 'REQALC-2019-00000005', 'Pending by FA', 'Allocated', '2019-10-03 01:27:16', '2019-10-03 01:31:45');

-- --------------------------------------------------------

--
-- Table structure for table `wms_login_tracking`
--

CREATE TABLE `wms_login_tracking` (
  `id` int(10) NOT NULL,
  `user_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `login_time` datetime NOT NULL,
  `logout_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wms_pm_details`
--

CREATE TABLE `wms_pm_details` (
  `id` int(5) NOT NULL,
  `pm_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `pm_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'None',
  `insert_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wms_pm_requests`
--

CREATE TABLE `wms_pm_requests` (
  `id` int(5) NOT NULL,
  `request_id` longtext COLLATE utf8_unicode_ci NOT NULL,
  `pm_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `department_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `project_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'None',
  `no_of_resource` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `typeofdesk` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'None',
  `start_time` date NOT NULL,
  `end_time` date NOT NULL,
  `status` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `flag` int(10) NOT NULL,
  `remarks` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `insert_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `wms_pm_requests`
--

INSERT INTO `wms_pm_requests` (`id`, `request_id`, `pm_id`, `department_id`, `project_id`, `no_of_resource`, `typeofdesk`, `start_time`, `end_time`, `status`, `flag`, `remarks`, `insert_timestamp`, `modified_timestamp`) VALUES
(1, 'REQALC-2019-00000001', 'SONYEMP01', 'IT', 'GISC', '3', 'Workstation', '2019-09-30', '2019-10-05', 'Assigned', 2, 'No remarks', '2019-09-29 15:16:18', '2019-09-29 15:21:16'),
(2, 'REQALC-2019-00000002', 'SONYEMP01', 'Sales', 'GISC', '3', 'Workstation', '2019-09-30', '2019-10-05', 'Assigned', 2, 'No remarks', '2019-09-29 15:23:26', '2019-09-29 15:53:51'),
(3, 'REQALC-2019-00000003', 'SONYEMP01', 'Finance', 'CODE', '4', 'Workstation', '2019-09-29', '2019-09-29', 'Deallocated', 3, 'No remarks', '2019-09-29 15:56:52', '2019-09-29 16:00:01'),
(4, 'REQALC-2019-00000004', 'SONYEMP01', 'IT', 'Forescout', '5', 'ODC', '2019-10-01', '2019-10-03', 'Allocated', 1, 'No remarks', '2019-10-02 04:36:33', '2019-10-03 02:54:45'),
(5, 'REQALC-2019-00000005', 'SONYEMP01', 'Finance', 'SIE Global', '5', 'Workstation', '2019-10-03', '2019-10-03', 'Assigned', 2, 'No remarks', '2019-10-03 01:27:16', '2019-10-03 03:01:58');

-- --------------------------------------------------------

--
-- Table structure for table `wms_project_details`
--

CREATE TABLE `wms_project_details` (
  `id` int(5) NOT NULL,
  `dept_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `project_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `project_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'None',
  `insert_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wms_request_id`
--

CREATE TABLE `wms_request_id` (
  `year` year(4) NOT NULL,
  `request_id` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wms_request_id`
--

INSERT INTO `wms_request_id` (`year`, `request_id`) VALUES
(2019, 5),
(2020, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wms_sony_emp_details`
--

CREATE TABLE `wms_sony_emp_details` (
  `id` int(5) NOT NULL,
  `Workstation_NO` varchar(50) DEFAULT NULL,
  `Access_card_no` varchar(100) DEFAULT NULL,
  `Employee_Name` varchar(100) DEFAULT NULL,
  `Project_Name` varchar(100) DEFAULT NULL,
  `Project_Manager` varchar(100) DEFAULT NULL,
  `Division` varchar(100) DEFAULT NULL,
  `Remark` varchar(100) DEFAULT NULL,
  `EXT` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wms_sony_emp_details`
--

INSERT INTO `wms_sony_emp_details` (`id`, `Workstation_NO`, `Access_card_no`, `Employee_Name`, `Project_Name`, `Project_Manager`, `Division`, `Remark`, `EXT`) VALUES
(1, 'Workstation', '501200C897', 'Keshav Murthy', 'Admin', 'Muthuraj Adiga', 'P&C-Admin', '', '8970'),
(2, 'Workstation', '501200I690', 'Muthuraj Adiga', 'Admin', 'Yoichi oda', 'P&C-Admin', '', '8970'),
(3, 'Workstation', '7000015480', 'Sreejesh Sreedharan', 'Admin', 'Muthuraj Adiga', 'P&C-Admin', '', '8680'),
(4, 'Workstation', '501200I845', 'Reema K', 'Admin', 'Muthuraj Adiga', 'P&C-Admin', '', '8527'),
(5, 'Workstation', '5013003378', 'Sandeep  EswaraPrasad', 'Admin', 'Muthuraj Adiga', 'P&C-Admin', ' ', '8970'),
(6, 'Workstation', '501200C983', 'Swamy Narayana', 'Admin', 'Muthuraj Adiga', 'P&C-Admin', '', ''),
(7, 'Workstation', '7000012496', 'Jayadeva Appannegowda', 'Admin', 'Muthuraj Adiga', 'P&C-Admin', '', ''),
(8, 'Workstation', '5013003214', 'Deepika Nanaiah', 'Admin', 'Muthuraj Adiga', 'P&C-Admin', '', '8251'),
(9, 'Workstation', '5013504236', 'Savitha Sadashiviah', 'Admin', 'Muthuraj Adiga', 'P&C-Admin', '', '8251'),
(10, 'Workstation', 'Transport', 'Shashi Kumar', 'Admin', 'Muthuraj Adiga', 'P&C-Admin', ' ', '8251'),
(11, 'Workstation', '', 'Vacant', '', '', '', '', '8251'),
(12, 'Workstation', '501200I666', 'Shyam Kishore', 'DCB-ERP', 'Ganesh Tirur', 'ISBL', '', '8523'),
(13, 'Workstation', '7000019238', 'Pavan Chandrashekar', 'GPW', 'Raghavendra Rao', 'ISBL', '', '8564'),
(14, 'Workstation', '501200I136', 'Pushpa T M', 'ISE', 'Sandeep Chauhan', 'ISBL', '', '8564'),
(15, 'Workstation', '5013003518', 'Premkumar Paul', 'GPW BAU ', 'Umesh Vijayan', 'ISBL', '', '8571'),
(16, 'Workstation', '501200I942', 'Murugesh Pandian', 'Competency', 'N S Srinivas', 'ISBL', '', ''),
(17, 'Workstation', '5012000I57', 'Hariharan Subramaniam', 'ARCHITECTURE COMPETENCY ', 'N S Srinivas', 'ISBL', '', '8571'),
(18, 'Workstation', '7000017535', 'Dikshya Handique', 'GET', 'Raghavendra Rao', 'ISBL', '', '8518'),
(19, 'Workstation', '50120I1075', 'Pankaj Jain', 'SEL-SUPS-QA', 'Rohan Dharmapalan', 'ISBL', '', '8499'),
(20, 'Workstation', '7000018877', 'Kushal?Karakuchi', 'GPW BAU', 'Raghavendra Rao', 'ISBL', '7000020419  Santhosh Pittala', '8518'),
(21, 'Workstation', '501200I174', 'Mohankumar Rajendran', 'GPW BAU', 'Umesh Vijayan', 'ISBL', '', '8518'),
(22, 'PL Workstation', '5013003167', 'Kannan Krishnan', 'TST - SCOPE MANAGED TESTI', 'Pankaj Jain', 'ISBL', '', '8518'),
(23, 'Workstation', '7000015709', 'Soumya Gangadharaiah', 'GPW BAU', 'Raghavendra Rao', 'ISBL', '7000020648 Preethika Jain?', '8709'),
(24, 'Workstation', '501200I501', 'Raghavendra Rao', 'GPW BAU', 'Rohan Dharmapalan', 'ISBL', '7000020452 Mohammad Chowdary', '8709'),
(25, 'Workstation', '7000010401', 'Ashok Vittalmurthy', 'GPW BAU', 'Raghavendra Rao', 'ISBL', '7000020423 Pooja Niranjan', '8709'),
(26, 'Workstation', '7000011338', ' Raghavendra Mukunda', 'TST - GPW', 'Raghavendra Rao', 'ISBL', '7000020557 Anjaneyulu ?Gadiga ', '8955'),
(27, 'Workstation', '7000019232', 'Sourav Dash', 'Metro', 'Kannan Krishnan', 'ISBL', '', '8541'),
(28, 'Workstation', '5013505245', 'Nataraj Ullegadde', 'GPW BAU', 'Raghavendra Rao', 'ISBL', '7000020424 Sanikommu Parvathi', '8541'),
(29, 'Workstation', '7000020235', 'Rajalakshmi Kamath', 'Metro', 'Raghavendra Rao', 'ISBL', '', '8955'),
(30, ' Workstation', '501200I530', ' Tomy Kuriakose', 'Metro', 'N S Srinivas', 'ISBL', '', '8541'),
(31, 'Workstation', '7000019016', 'Lakshmi Kala', 'GDC-GPW', 'Umesh Vijayan', 'ISBL', '', '8541'),
(32, 'Workstation', '7000018845', 'Jayareddy Puttappanavar', 'GDC-GPW', 'Umesh Vijayan', 'ISBL', '', '8955'),
(33, 'Workstation', '7000018231', 'Subba Nangineedi', 'GDC-GPW', 'Umesh Vijayan', 'ISBL', '', '8526'),
(34, 'Workstation', '7000018985', 'InjetiRajesh Naidu', 'GDC-GPW', 'Umesh Vijayan', 'ISBL', '', '8526'),
(35, 'Workstation', '7000013503', 'Srihari Krishnan', 'GPW BAU', 'Umesh Vijayan', 'ISBL', '', '8524'),
(36, 'Workstation', '5013003163', 'Raveesh Veeregowda', 'GPW BAU', 'Umesh Vijayan', 'ISBL', '7000019223 Rajan Shastry', ''),
(37, 'Workstation', '501200I454 ', 'Suma Huchharangaiah', 'GPW BAU', 'Umesh Vijayan', 'ISBL', '', ''),
(38, 'Workstation', '7000015412', 'Ganesh Rangarajapuram', 'GPW BAU', 'Umesh Vijayan', 'ISBL', '', ''),
(39, 'Workstation', '7000020904', 'Glen Erol', 'SES QA Support ', 'Naveen Nuthalapati', 'ISBL', '', ''),
(40, 'Workstation', '7000018289', 'Deepthi Vilambath', 'Test Delivery? ', 'Naveen Nuthalapati', 'ISBL', '', ''),
(41, 'Workstation', '5013505075', 'Anil Joshi ', 'GPW BAU', 'Umesh Vijayan', 'ISBL', '', ''),
(42, 'Workstation', '7000016141', 'Devendra Baghel', 'GPW BAU SAP', 'Umesh Vijayan', 'ISBL', '', ''),
(43, 'Workstation', '7000013178', 'Lavanya Rajasekaran', 'SNEI-CHIHIRO', 'Naveen Nuthalapati', 'ISBL', '', ''),
(44, 'Workstation', '501200I671', 'Prakash Navaramalingam', 'Sony China', ' Hariharan Subramaniam', 'ISBL', '', ''),
(45, 'Workstation', '7000012075', 'Vijaya Veduru', 'GPW BAU SAP', 'Umesh Vijayan', 'ISBL', '7000011042 Abhijit Kumar', ''),
(46, 'Workstation', '5013504740', 'Chukkapalli Nagaraju', 'GPW BAU', 'Umesh Vijayan', 'ISBL', '', ''),
(47, 'Workstation', '501200I512', 'Prasanth Vijayan', 'GPW BAU', 'Umesh Vijayan', 'ISBL', '', ''),
(48, 'Workstation', '5012000I92', 'Umesh Vijayan', 'GPW BAU', 'Umesh Vijayan', 'ISBL', '', ''),
(49, 'Workstation', '501200I383', 'Shweta Gupta', 'GPW BAU', 'Umesh Vijayan', 'ISBL', '', '8956'),
(50, 'Workstation', '5013003283', 'Mastanrao Kongara', 'GPW BAU', 'Umesh Vijayan', 'ISBL', '', '8603'),
(51, 'Workstation', '7000017527', 'Pooja Teli', 'GET-Competency Architect', 'Krishna Madala', 'ISBL', '', '8218'),
(52, 'Workstation', '7000014530', 'Rajeshwari Yaligar', 'Competency Architect', 'Srivastava, Anubhav', 'ISBL', '', '8218'),
(53, 'Workstation', '7000011601', 'Ravinarayana Adkathimar', 'Competency Architect', 'Krishna Madala', 'ISBL', '', ''),
(54, 'Workstation', '7000011630', 'Samyukta Shetty', 'Competency Architect', 'Krishna Madala', 'ISBL', '', '8603'),
(55, 'Workstation', '7000017569', 'Lathashree Harisha', 'DIGI-BOT - Competency Architect', 'Srinivasa Pingili', 'ISBL', '', '8956'),
(56, 'Workstation', '501200I148', 'Kiran K', 'DIGI-BOT - Competency Architect', 'Srinivasa Pingili', 'ISBL', '', '8524'),
(57, 'Workstation', '7000017811', ' Kumari Puja', 'Testing Competency', 'Sharfulla Tonse', 'ISBL', '', '8524'),
(58, 'Workstation', '501200I208', 'Pingili, Srinivasa ', '(DX-IN) PoC & Platform', 'Sharfulla Tonse', 'ISBL', '7000020906 Venkata Vartha', '8594'),
(59, 'Workstation', '*0000112390', 'Sadayoshi Murao', '(DX-IN) PoC & Platform', 'Sharfulla Tonse', 'ISBL', '7000020813 Ram Kumar', '8553'),
(60, '', '7000019427', 'Mamidipaka Renu', 'Competency Architect', 'Srinivas Pingili', 'ISBL', 'Pillar desk', ''),
(61, 'Workstation', '7000015118', 'Vijaya Tiwari', 'Competency Architect', 'Sharfulla Tonse', 'ISBL', '', '8553'),
(62, 'Workstation', '7000014492', 'Kaviya Narayanan', 'Competency Architect', 'Sharfulla Tonse', 'ISBL', '', '8568'),
(63, 'Workstation', '7000014508', 'Mohammed Atthaka', 'DX-IN) PoC & Platform', 'Srinivas Pingili', 'ISBL', '', '8532'),
(64, 'Workstation', '501200I938', 'Srivastava, Anubhav', 'DX-IN) PoC & Platform', 'Sharfulla Tonse', 'ISBL', '', ''),
(65, 'Workstation', '7000017501', ' Karthik Gayakwad', 'DX-IN) PoC & Platform', 'Srinivas Pingili', 'ISBL', '', ''),
(66, 'Workstation', '7000017575', 'Mahima Rao', 'DX-IN) PoC & Platform', 'Srinivas Pingili', 'ISBL', '', ''),
(67, 'Workstation', '7000014497', 'Shreya Airody', 'DX-IN) PoC & Platform', 'Srinivas Pingili', 'ISBL', '', '8532'),
(68, 'Workstation', '7000014551', 'Apoorva Petkar', 'DX-IN) PoC & Platform', 'Krishna Madala', 'ISBL', '', '8532'),
(69, 'Workstation', '5013505441', 'Prashant Seethalakshmi', 'Java competency', 'Srinivas Pingili', 'ISBL', '', ''),
(70, '', '5013505306', 'Harini Manjunath', 'Competency Architect', 'Srinivas Pingili', 'ISBL', '', ''),
(71, 'Workstation', '', '', '', '', '', '', '8568'),
(72, 'Workstation', '7000019914', 'Chennabasava Javali', 'GDC-Mozart GP1', 'Umesh Vijayan', 'ISBL', '50120I1116 Devender Bandi', ''),
(73, 'Workstation', '7000019200', 'Ragavendra Seegalapallkusane', 'GPW', 'Umesh Vijayan', 'ISBL', '501200I719 Chilakuri, Kishore', ''),
(74, 'Workstation', '7000019811', 'SeethaRamaiah Bharani', 'Metro', 'Hansalakshmi Guruswamy', 'ISBL', '', '8693'),
(75, 'Workstation', '7000020968', 'Gopinath Ramananda', 'GDC-AVS', 'Srivastava, Anubhav', 'ISBL', '', '8693'),
(76, 'Workstation', '501200I668', 'Sarath Babu', 'ERP Technical Tower', 'Shyam Kishore', 'ISBL', '', '8693'),
(77, 'Workstation', '7000019410', 'BhanuChand Gollapudi', 'GPW-BAU', 'Sudhakar Ragunathan', 'ISBL', '', '8392'),
(78, 'Workstation', '7000015789', 'Siddam Kaveeswaraiah', 'GPW-BAU', 'Sudhakar Ragunathan', 'ISBL', '', '8392'),
(79, 'Workstation', '5013503492', 'Jagadeesh Jeevarathinam', 'GPW BAU', 'Umesh Vijayan', 'ISBL', '7000019973 Nagaraju Nanjundappa', '8392'),
(80, 'Workstation', '5013003487', 'Pradeep Shanmugam', 'GISC-IN - AMC', 'Srimant Sharma ', 'ISBL', '', '8928'),
(81, 'Workstation', '7000017307', 'Manjunath Vaduguru ', 'GPW Morph', 'Vijaysingh Yadav', 'ISBL', '', '8554'),
(82, 'Workstation', '5013503815', 'Gopalakrishnan, Subramani', 'GPW BAU', 'Umesh Vijayan', 'ISBL', '', '8221'),
(83, 'Workstation', '7000011612', 'Rohan Nagaraj', 'GPW BAU SAP', 'Sudhakar Ragunathan', 'ISBL', '', ''),
(84, 'Workstation', '5013003460', 'Megha Tiwari', 'GPW BAU SAP', 'Sudhakar Ragunathan', 'ISBL', '', '8539'),
(85, 'Workstation', '7000018635', 'MahaLakshmi Niranjan ', 'Statergic Project ', 'Shyman Kishore ', 'ISBL', '', '8539'),
(86, 'PL Workstation', '501200I908', 'Rohan Dharmapalan', 'TESTING  ', 'Hironori Morita (SISC)', 'ISBL', '', '8221'),
(87, 'Workstation', '7000010060', ' Vamshi Cheekurthy', 'GPW BAU', 'Umesh Vijayan', 'ISBL', '7000013354 Balakrishna Dugga', '8682'),
(88, 'Workstation', '501200I755', 'Megananathan Govindaswamy', 'GPW BAU', 'Umesh Vijayan', 'ISBL', '', '8682'),
(89, 'Workstation', '501200I791', 'Sudhakar Ragunathan', 'GPW-BAU/Delivery', 'Avais Ahmed', 'ISBL', '', '8565'),
(90, 'Workstation', '7000019126', 'Tara Padhy', 'GPW BAU', 'Umesh Vijayan', 'ISBL', '5013505191 Raghavendra Ronad', '8551'),
(91, 'Workstation', '7000016714', 'Durga Talipuri', 'GPW BAU', 'Sudhakar Ragunathan', 'ISBL', '5013505512 Shailesh Kuttuva', '8565'),
(92, 'Workstation', '7000015131', 'Nagamalleswararao ?Nallagorla', 'GPW BAU', 'Umesh Vijayan', 'ISBL', '', '8565'),
(93, 'Workstation', '7000014995', 'Lokanadham Chinnathangal', 'GPW BAU', 'Umesh Vijayan', 'ISBL', '', '8580'),
(94, 'Workstation', '7000014315', 'Rashmi Ramachandra', 'Secretary ', 'Ravikumar Krishnamoorthy', 'ISBL', '', '8580'),
(95, 'Workstation', '7000020615', 'Deepthi Vakaligara', 'Mozart Group 8', 'Hariharan S', 'ISBL', '', '8731'),
(96, 'Workstation', '7000019223', 'Rajan Shastry', 'GPW BAU', 'Umesh Vijayan', 'ISBL', '5013504049 Bhabani Sankar', '8570'),
(97, 'Workstation', '', 'VACANT', '', '', 'ISBL', '', '8570'),
(98, 'Workstation', '5012000I25', 'Bopanna M D', 'SGTS/ GREEN', 'Ravikumar Krishnamoorthy', 'ISBL', '', '8570'),
(99, 'Workstation', '5013003366', 'Gowda, Nataraj', 'BDA', 'Bopanna M D', 'ISBL', '', '8268'),
(100, 'Workstation', '501200I833', 'Ramesh, Sahana', 'BDA', 'Bopanna M D', 'ISBL', '  ', '8265'),
(101, 'PL Workstation', '7000019713', 'Manish Vadehra', 'GISC-AMC-Planning', 'Bopanna Devaiah', 'ISBL', '', '8531'),
(102, 'PL Workstation', '7000019976', 'Deepthy Babu', 'Capability Building- AMC Office', 'Manish Vadehra', 'ISBL', '', ''),
(103, 'Workstation', '50120C1443', 'Raju, Suryanarayana', 'GPW BAU', 'Sudhakar Ragunathan', 'ISBL', '', '8534'),
(104, 'Workstation', '7000018831', 'Anand Bajpai', 'GPW BAU', 'Sudhakar Ragunathan', 'ISBL', '', '8586'),
(105, 'Workstation', '', 'VACANT', '', '', '', '', '8538'),
(106, 'Workstation', '', 'VACANT', '', '', '', '', '8538'),
(107, 'Workstation', '50120C1185', 'Chandramouli Reddy', 'SEL', 'Sudhakar Ragunathan', 'ISBL', '', '8586'),
(108, 'Workstation', '7000018440', 'Ramesh Lakshe', 'SAP ABAP HANA strategic hiring', 'Sudhakar Ragunathan', 'ISBL', '', '8534'),
(109, 'Workstation', '7000019935', 'Jyoti Dash', 'SES Remedy', 'Ravindrababu G', 'ISBL', '', '8909'),
(110, 'Workstation', '5013003519', 'Kumar Nalin', 'Remedy on Demand??', 'Ravindrababu G', 'ISBL', '', '8909'),
(111, 'Workstation', '501200I680', 'Tushar Shah', 'ISE', 'Deshpande, Vijay ', 'ISBL', '', '8994'),
(112, 'Workstation', '5013003416', 'Pradeep Kota', 'GDC-Metro', 'Hansalakshmi Guruswamy', 'ISBL', '', '8994'),
(113, 'Workstation', '7000018668', 'Bhaskar Venkatesh ', 'GDC-Metro', 'Hansalakshmi Guruswamy', 'ISBL', '', '8910'),
(114, 'Workstation', '7000016798', 'Naushad Hassan', 'SGTS', 'Ajit Verma', 'ISBL', '', '8910'),
(115, 'Workstation', '7000020111', 'Shivanshu Nanda', 'SGTS', 'Ajit Verma', 'ISBL', '', '8986'),
(116, 'Workstation', '7000013556', 'Raghavendra Krishnamurthy', 'SGTS', 'Ajit Verma', 'ISBL', '7000020047 Thirumal Dhakshinamoorthy', '8986'),
(117, 'Workstation', '7000015471', 'Santanu Maiti', 'STAR', 'Ajit Verma', 'ISBL', '', '8986'),
(118, 'Workstation', '7000015638', 'Sharda Barole', 'STAR', 'Ajit Verma', 'ISBL', '', '8986'),
(119, 'PL Workstation', '7000016910', 'Sameer Drolia ', 'Metro', 'Hansalakshmi Guruswamy', 'ISBL', '', '8994'),
(120, 'Workstation', '7000011841', 'Ranga Pannala', 'Java Competency', 'Anu Thomas', 'ISBL', '', '8909'),
(121, 'Workstation', '5013003521', ' Vijay Deshpande', 'GPW-ISE', ' Avais Ahmad', 'ISBL', '', '8403'),
(122, 'Workstation', '7000017709', 'Dejimina Patra', 'GDC-Metro', 'Hansalakshmi Guruswamy', 'ISBL', '', '8691'),
(123, 'Workstation', '5013003135', 'Sathyanarayana Raghavendra', 'GDC-Metro', 'Hansalakshmi Guruswamy', 'ISBL', '7000019843 Rohit Singh', ''),
(124, 'Workstation', '7000014908', 'Pranay Jain', 'SGTS', 'Ajeet Sachan', 'ISBL', '', '8689'),
(125, 'Workstation', '7000019571', 'Raj Patel', 'SGTS', 'Ajit Verma', 'ISBL', '', '8689'),
(126, 'Workstation', '5013003085', 'Arun Pasumurty', 'SGTS', 'Ajit Verma', 'ISBL', '7000019440 Atul Jain', '8407'),
(127, 'Workstation', '50120C1492', 'Anantharaj Thangaraj', 'STAR', 'Ajit Verma', 'ISBL', '', '8407'),
(128, 'Workstation', '7000019501', 'Jagannathappa Mahesh', 'SGTS', 'Ajit Verma', 'ISBL', '7000021016 Manjula Krishna', '8589'),
(129, 'Workstation', '7000020554', ' Srinivasulu Thokala ', 'SGTS-ECUBE&GC', 'Ajit Verma', 'ISBL', '', '8609'),
(130, 'PL Workstation', '50120I1095', 'Ajit Verma', 'SGTS', 'N S Srinivas', 'ISBL', '', '8512'),
(131, 'Workstation', '7000014798', 'Rajeswara Bodapati ', 'GPW-SRM', 'VijayaBhaskarudu Gangisetty', 'ISBL', '', '8697'),
(132, 'Workstation', '7000019796', 'Sapna Tuduru', 'GPW FICO/SRM Support', 'Vijay Deshpande  ', 'ISBL', '', '8697'),
(133, 'Workstation', '501200I177', 'Pathaiah, Rita', 'Internal Apps', 'Bopanna M D', 'ISBL', '', '8411'),
(134, 'Workstation', '5013003198', 'Gangisetty, VijayaBhaskarudu', 'GPW BAU', 'Deshpande, Vijay ', 'ISBL', '7000019888 Sridhar Muthekepalli', '8569'),
(135, 'Workstation', '5013505411', 'Srinivasulu Cheedella', 'GPW BAU', 'Deshpande, Vijay ', 'ISBL', '', '8591'),
(136, 'Workstation', '7000016668', 'Rodny Lasrado', 'GPW BAU', 'Gangisetty, VijayaBhaskarudu', 'ISBL', '', '8591'),
(137, 'Workstation', '7000018556', 'Chiranjeevi Kuncham', 'GDC-Metro', 'RajayKumar Chandrakanth', 'ISBL', '', '8678'),
(138, 'Workstation', '7000020185', 'Subbareddy Chenji', 'SGTS', 'Ajit Verma', 'ISBL', '7000021023 Chenchaiah Murakonda', '8678'),
(139, 'Workstation', '7000020174', 'Naresh Bonagiri', 'SGTS', 'Ajit Verma', 'ISBL', '', '8699'),
(140, 'Workstation', '7000019129', 'Suganya Kaliappan', 'SGTS', 'Ajit Verma', 'ISBL', '501200I780 Saiprasad Kondagadapu', '8699'),
(141, 'Workstation', '5013003193', 'Kailani, Jeseena ', 'SGSG', 'Prashant Tiwari', 'ISBL', '', '8686'),
(142, 'Workstation', '7000020811', 'Sonia Maibam', 'SGSSG', 'Kailani, Jeseena ', 'ISBL', '', '8686'),
(143, 'Workstation', '7000015756', 'Sarath.Sasidharan', 'SGSG', 'Kailani, Jeseena ', 'ISBL', '7000019823 Naresh Rachepalli', '8988'),
(144, 'Workstation', '7000017574', 'Harshitha Surendra', 'GET-SGSG', 'Kailani, Jeseena ', 'ISBL', '7000019812 Gnanendra Bheemanathan', '8988'),
(145, 'Workstation', '501200I870', 'Upendra Joshi', 'Security', 'Hironori Morita ', 'ISBL', '', '8916'),
(146, 'Workstation', '5013003190', 'Saikumar Palem', 'Metro', 'Hansalakshmi Guruswamy', 'ISBL', 'Behind Pillar desk', ''),
(147, 'Workstation', '5013503118', 'Vellingiri, Dharmendran', 'E-Dolphin', 'Kailani, Jeseena ', 'ISBL', '', '8600'),
(148, 'Workstation', '50120C1146', 'Pradeep Sake', 'APEX', 'Kailani, Jeseena ', 'ISBL', '', '8600'),
(149, 'PL Workstation', '501200I837', 'Hansalakshmi Guruswamy', 'Mozart Gp5', 'N S Srinivas', 'ISBL', '', '8988'),
(150, 'Workstation', '7000019916', 'Ankita Mandal', 'ERP Technical Tower', 'Shyam Kishore', 'ISBL', '', '8516'),
(151, 'Workstation', '7000017412', 'Kishore Edagotti', 'SGSSG SCM S&M', 'Kailani, Jeseena ', 'ISBL', '', '8516'),
(152, 'Workstation', '7000019486', 'Varada Manikanta', 'SEM', 'Kailani, Jeseena ', 'ISBL', '', '8249'),
(153, 'Workstation', '7000018851', 'Mahamad Ziyaulla', 'GPW', 'Deshpande, Vijay ', 'ISBL', '', '8552'),
(154, 'Workstation', '7000020211', 'Muvvala, Kiran', 'GPW', 'Sandeep Sahasrabudhe', 'ISBL', '', '8578'),
(155, 'Workstation', '7000018850', ' Ravikanth Sanka', 'SAP WEST Delivery ', 'Deshpande, Vijay ', 'ISBL', '7000018810 Durga Prasad', '8578'),
(156, 'Workstation', '5013003018', 'Ajjanavari, Nagaraju', 'ISE', 'Deshpande, Vijay ', 'ISBL', '', '8516'),
(157, 'Workstation', '7000010751', 'Lakshmi Narasimhan', 'ISE', 'Deshpande, Vijay ', 'ISBL', '', '8516'),
(158, 'Workstation', '7000011411', 'Dharma Yekula', 'GPW-SIE ', 'Deshpande, Vijay ', 'ISBL', '', '8597'),
(159, 'Workstation', '5013505522', 'Gopalreddy Yeddula', 'ISE', 'Deshpande, Vijay ', 'ISBL', '', '8597'),
(160, 'Workstation', '7000013560', 'Preethi Kakade', 'ISE', 'Deshpande, Vijay ', 'ISBL', '', '8550'),
(161, 'Workstation', '5013003149', 'Ashish Pandey', 'ISE', 'Deshpande, Vijay ', 'ISBL', '7000020057 Manoj Kumar Subramanium', '8540'),
(162, 'Workstation', '501200I676', 'Ajeet Sachan', 'Competency', 'Anu Thomas', 'ISBL', '', '8540'),
(163, 'Workstation', '5013003525', 'Tiwari Madhur', 'SPE - Java', 'Anu Thomas', 'ISBL', '', '8550'),
(164, 'PL Workstation', '7000017366', 'Harinarayana ?Bonthala', 'GPW ', 'Deshpande, Vijay ', 'ISBL', '7000018391 RaviKumar Alakunta', ''),
(165, 'Workstation', '501200I678', 'Vijaya Bhaskar', 'ISE', 'Deshpande, Vijay ', 'ISBL', '7000018786 Venkata Palla', '8520'),
(166, 'Workstation', '7000015278', 'Renu Singh', 'ISE', 'Deshpande, Vijay ', 'ISBL', '7000020286 Sreekanth Ayyappagari', '8520'),
(167, 'Workstation', '7000016186', 'Suryakanta Sahu', 'ISE', 'Deshpande, Vijay ', 'ISBL', '7000020558 Ramesh Varda', '8857'),
(168, 'Workstation', '7000017848', 'Chakrapani Marri', 'ISE', 'Vijay Bhaskar', 'ISBL', '', '8857'),
(169, 'Workstation', '7000018831', ' Anand Bajpai', 'ISE', 'Deshpande, Vijay ', 'ISBL', '', '8520'),
(170, 'Workstation', '7000017472', 'Madhavi Veluri', 'SAP West BAU', 'Vijay Bhaskar', 'ISBL', '', '8520'),
(171, 'Workstation', '5013003138', 'Kurumbann, Mohan', 'Mozart', ' Srimant Sarma', 'ISBL', '', '8602'),
(172, 'Workstation', '5013003510', 'Shruthi Nidagundi', 'Mozart', ' Srimant Sarma', 'ISBL', '', '8602'),
(173, 'Workstation', '7000019605', 'Sasanka Behera', 'Mozart GP1 ', ' Srimant Sarma', 'ISBL', '', '8575'),
(174, 'Workstation', '7000015959', 'Sreejith Chandrashekara ', 'Mozart', 'Rajan Gupta', 'ISBL', '', '8575'),
(175, 'PL Workstation', '7000018789', 'AnilKumar Ramisetty', 'Mozart GP1 ', ' Srimant Sarma', 'ISBL', '', '8596'),
(176, 'Workstation', '501200I662', 'Sandeep Sahasrabudhe', 'GDC-Mozart', 'Rajan Gupta', 'ISBL', '', '8602'),
(177, 'Workstation', '501200I114', 'Gupta, Rajan', 'GDC-Mozart', 'Hironori Morita', 'ISBL', '', '8602'),
(178, 'Workstation', '50120I1003', 'Balaji Jelli', 'GDC-Mozart', 'Rajan Gupta', 'ISBL', '', '8530'),
(179, 'Workstation', '7000020002', 'Prashanta Chowni ', 'GDC-Mozart', 'Srimant Sharma ', 'ISBL', '', '8530'),
(180, 'Workstation', '7000019441', 'Maheswara Reddy', 'GDC-Mozart', 'Rajan Gupta', 'ISBL', '', '8514'),
(181, 'Workstation', '7000020545', 'Monali Dhal', 'GDC-Mozart', 'Rajan Gupta', 'ISBL', '', '8514'),
(182, 'Workstation', '7000018369', 'Madan Mohanraju', 'GDC-Mozart', 'Srimant Sarma', 'ISBL', '', '8514'),
(183, 'Workstation', '7000015771', 'Dharmalingam Kasilingam', 'MOZART', 'Rajan Gupta', 'ISBL', '', '8514'),
(184, 'Workstation', '501200I625 ', ' Arvind Janarthanan', 'GDC-Mozart ', 'Sunil Pai', 'ISBL', '7000019128 ReddyJoshna Gandhodi', '8514'),
(185, 'Workstation', '501200I713', 'Sunil Pai', 'GDC-Mozart', 'Rajan Gupta', 'ISBL', '', '8530'),
(186, 'Workstation', '7000017451', 'Pushpalatha Subbanna', 'GDC-Mozart', 'Rajan Gupta', 'ISBL', '', '8150'),
(187, 'Workstation', '7000015038', 'Shantanu Gupta', 'GDC-Mozart', 'Rajan Gupta', 'ISBL', '', '8150'),
(188, 'Workstation', '7000013326', 'Kiran Kumar', 'GDC-Mozart', 'Rajan Gupta', 'ISBL', '', '8912'),
(189, 'Workstation', '7000019196', 'Sujit Dash', 'GDC-Mozart', 'Srimant Sharma ', 'ISBL', '501200I456 Deepika Chikkahanumaiah', '8912'),
(190, 'PL Workstation', '7000019922', 'Sujata Roy', 'GDC-Mozart', 'Balaji Jelli', 'ISBL', '', '8549'),
(191, 'Workstation', '5013003244', 'Shashank Rao', 'GDC-Mozart', 'Rajan Gupta', 'ISBL', '7000019197 Amarnath Patra', '8150'),
(192, 'Workstation', '501200I170', ' Srimant Sarma', 'Mozart GP1 ', 'Hansalakshmi Guruswamy', 'ISBL', '7000020611 Santhosh Bondugulapati', '8150'),
(193, 'Workstation', '50120I1150', 'Suresh Govindaraju', 'Mozart GP1 ', 'Srimant Sarma', 'ISBL', '7000019259 Chandramouli Patti', '8535'),
(194, 'Workstation', '5013003429', 'Kiran Pinninti', 'GDC-Mozart', 'Rajan Gupta', 'ISBL', '7000019421 Suresh Pulakhandam', '8535'),
(195, 'Workstation', '7000011615', 'Mayank Prakash', 'GDC-Mozart', 'Rajan Gupta', 'ISBL', '7000018125 Meenakshi sharma ', '8535'),
(196, 'Workstation', '7000017784', 'Surendra Pamidi', 'GDC-Mozart', 'Rajan Gupta', 'ISBL', '', '8535'),
(197, 'Workstation', '7000020726', 'Digvijay Nikam ', 'SES Remedy', 'Mithun day', 'ISBL', '', '8990'),
(198, 'Workstation', '7000018874', 'Naresh Narisetti', 'MOZART BAU', 'Kripashankar Neelakandan', 'ISBL', '7000019695 Praveen Bandaru', '8582'),
(199, 'Workstation', '7000017946', 'Udayan Debanath ', 'GDC-Mozart', 'Rajan Gupta', 'ISBL', '', '8480'),
(200, 'Workstation', '7000018408', 'Ananda Sathyanarayana', 'MOZART BAU ', 'Rajan Gupta', 'ISBL', '', '8480'),
(201, 'Workstation', '5013003272', ' Ravindrababu Gudimallam', 'Remedy on Demand', 'Prakash Navaramalingam', 'ISBL', '7000020727 Sushant Kadam', '8401'),
(202, 'Workstation', '7000020559', 'Rishabh Kumar', 'SGS Factsheet Project', 'Ravindrababu G', 'ISBL', 'C-wing side SOLA Team', '8401'),
(203, '', '7000019265', 'Vinoth Lakshmanan', 'MOZART BAU ', 'Rajan Gupta', 'ISBL', '', ''),
(204, '', '5013003476', 'Anirban Roy', 'BAU', 'Rajan Gupta', 'ISBL', '7000020689 Raghu Prasanth', ''),
(205, '', '7000019721', 'Madhukara Giddamreddy', 'MOZART Gp 1 BAU', 'Kripashankar Neelakandan', 'ISBL', '7000019721 Madhukara Giddamreddy', ''),
(206, '', '7000019430', 'Dilipkumar Govindaraju', 'SAP East / Mozart', 'Kripashankar Neelakandan', 'ISBL', '7000020523 Vimal Sanmukaraj', ''),
(207, '', '50120I1045', 'Harish Selvadurai', 'BAU', 'Rajan Gupta', 'ISBL', '7000016588 Radha Yandrapu', ''),
(208, '', '7000010714', 'Kripashankar Neelakandan', 'BAU', 'Rajan Gupta', 'ISBL', '7000019932 Rajender Ganta ', ''),
(209, '', '501200I594', 'Adithi Shetty', 'Mozart BAU ', 'Kripashankar Neelakandan', 'ISBL', '', ''),
(210, '', '5013003480', 'Jose Vijay', 'Mozart BAU ', 'Kripashankar Neelakandan', 'ISBL', '', ''),
(211, '', '7000019826', 'Charan Polineni', 'Mozart BAU ', 'Kripashankar Neelakandan', 'ISBL', '', ''),
(212, '', '501200I911', 'Bharat Tippanawar', 'BAU', 'Rajan Gupta', 'ISBL', '', ''),
(213, '', '7000017759', 'VinodKumar Gorthi', 'MOZART-Group4 Project', 'Kripashankar Neelakandan', 'ISBL', '', ''),
(214, '', '7000017615', 'Channa Basappa', 'SAP EAST ', 'Kripashankar Neelakandan', 'ISBL', '', ''),
(215, '', '7000018552', 'Arun Mulgund', 'Mozart Group 4', 'Murugesh Pandian', 'ISBL', '', ''),
(216, '', '7000018798', 'Saurabh Ranade', 'METRO', 'Hansalakshmi Guruswamy', 'ISBL', '', ''),
(217, '', '501200I216', 'Vijaysingh Yadav', 'GDC-Metro', 'Hansalakshmi Guruswamy', 'ISBL', '', ''),
(218, '', '5013003456', 'Sanjana Choudhary', 'GIS', 'Kripashankar Neelakandan', 'ISBL', '', ''),
(219, '', '7000014503', 'Supriya Babli', 'GDC-Mozart', 'Rajan Gupta', 'ISBL', '', ''),
(220, '', '501200I584', 'Ranjith Srinivasamurthy', 'Mozart BAU', 'Rajan Gupta', 'ISBL', '', ''),
(221, '', '501200I872', 'Muthusivabalan Kamaraj', 'Mozart', 'Murgesh Pandian ', 'ISBL', '', ''),
(222, '', '50120I1028', 'Sukanya Gogai', 'Mozart', 'Murgesh Pandian ', 'ISBL', '', ''),
(223, '', '7000018040', 'Bhavyalekshmi Yesodharan', 'Mozart', 'Murgesh Pandian ', 'ISBL', '7000020418 Dilida Divakaran', ''),
(224, '', '7000019342', 'Shreejith Pillai', 'Mozart', 'Murgesh Pandian ', 'ISBL', '7000019504 Vicky Singh', ''),
(225, '', '7000017415', 'Apoorva Shah', 'GDC-Mozart', 'Murugesh Pandian', 'ISBL', '', ''),
(226, '', '501200I621', 'Namratha Rajiv', 'GDC-Mozart', 'Murugesh Pandian', 'ISBL', '7000019428 Raja Vanteri', ''),
(227, '', '5013003432', 'Priya Shweta', 'GIS', 'Kripashankar Neelakandan', 'ISBL', '7000014502 Suman Hiremath', ''),
(228, '', '7000020055', 'SaiKiranrao Hanchate', 'GDC-Mozart', 'Murugesh Pandian', 'ISBL', '', ''),
(229, '', '7000016881', 'Aldrin Irudayaraj', 'ISE', 'VijayaBhaskarudu Gangisetty', 'ISBL', '', ''),
(230, '', '7000020072', 'Ravi Reddy', 'Mozart', 'Murgesh Pandian ', 'ISBL', '501200I826 Anand Kumar', ''),
(231, '', '5013003291', ' Sahu Jyoti', 'GIS', 'Kripashankar Neelakandan', 'ISBL', '', ''),
(232, '', '7000015413', 'Jagamohan Mahanta', 'MOZART GP4 ', 'Murugesh Pandian', 'ISBL', '', ''),
(233, '', '7000019294', 'Nandakishore Yella', 'GIS', 'Kripashankar Neelakandan', 'ISBL', '', ''),
(234, '', '5013504944', 'Prathapnaidu Purimetla', 'GIS', 'Kripashankar Neelakandan', 'ISBL', '', ''),
(235, '', '7000010815', 'Ravikumar Hanumantharao', 'GIS', 'Kripashankar Neelakandan', 'ISBL', '', ''),
(236, '', '501200I271', 'Vasudha Kota', 'GIS', 'Kripashankar Neelakandan', 'ISBL', '', ''),
(237, '', '7000019565', ' Nilakhantan Mudaliar', 'G4 - MOZART', 'Murugesh Pandian', 'ISBL', '', ''),
(238, '', '7000013386', 'Sagaya Hema', 'MOZART GP4 ', 'Murugesh Pandian', 'ISBL', '', ''),
(239, '', '7000020613', ' Sandeep Kumar ', 'Mozart Group 1', ' Srimant Sarma', 'ISBL', '', ''),
(240, '', '7000019518', 'Debashish Ghosh ', 'METRO', 'Hansalakshmi Guruswamy', 'ISBL', '', ''),
(241, '', '7000018749', 'Simpi Choudhary', 'SAP West Delivery', ' Srimant Sarma', 'ISBL', '', ''),
(242, '', '', 'VACANT', '', '', 'ISBL', '', ''),
(243, '', '7000019409', 'Dinesh Subramaniya', 'Java Competency', 'Kripashankar Neelakandan', 'ISBL', '', ''),
(244, '', '50120I1133', 'Seema? Warrier ', 'Chihiro -Team', 'Pankaj Jain', 'ISBL', '', ''),
(245, '', '7000020150', 'Kumar Shubham', 'GDC-BI Competency', 'Krishna Madala', 'ISBL', '', ''),
(246, '', '5013504763', 'Indudhar Gururaja', 'Mozart Group 1', ' Srimant Sarma', 'ISBL', '', ''),
(247, '', '7000015831', ' Sujata Chand', 'Mozart GP5', 'Hansalakshmi G', 'ISBL', '', ''),
(248, '', '7000016935', 'Anshika Tiwari', 'SOLA -RM', 'Sanjeev Kumar', 'ISBL', '', ''),
(249, '', '5013503389', 'Arunprasath, Vaishnavi', 'SOLA -RM', 'Sanjeev Kumar', 'ISBL', '', ''),
(250, '', '7000017357', 'Sourabh Roy', 'GDC-R2DS', 'Mithun day', 'ISBL', '', ''),
(251, '', '7000018932', 'Vimesh Veedu', 'GDC-GPW', 'Sudhakar Ragunathan', 'ISBL', '', ''),
(252, '', '7000014529', 'Ashwal Kaniyala', 'GDC-R2DS', 'Mithun day', 'ISBL', '', ''),
(253, '', '7000019456', 'Garima Shukla', 'GDC-R2DS', 'Mithun day', 'ISBL', '', ''),
(254, '', '7000011603', 'Samyukta Shenoy', 'AWACS Team', 'Mithun day', 'ISBL', '', ''),
(255, '', '5013504581', 'Vindo Khanna ', 'AWACS Team', 'Mithun day', 'ISBL', '', ''),
(256, '', '5013503840', 'Rajesh Babu', 'AWACS Team', 'Mithun day', 'ISBL', '', ''),
(257, '', '7000020597', 'Jagannath Swain', 'GDC-HKMC', 'Mithun day', 'ISBL', '', ''),
(258, '', '7000019411', 'Abhishek Kumar', 'AWACS Team', 'Mithun day', 'ISBL', '', ''),
(259, '', '5013504662', 'Ashokumar reddy N', 'AWACS Team', 'Mithun day', 'ISBL', '', ''),
(260, '', '7000016669', 'Srinivasulu Chunchu', 'AWACS Team', 'Mithun day', 'ISBL', '', ''),
(261, '', '7000020098', 'Ravi Reddy1', 'R2DS', 'Mithun day', 'ISBL', '', ''),
(262, '', '7000018934', 'Satyarama Yandamuri', 'GDC-GPW', 'Sudhakar Ragunathan', 'ISBL', '', ''),
(263, '', '', 'VACANT', '', '', 'ISBL', '', ''),
(264, '', '', 'VACANT', '', '', 'ISBL', '', ''),
(265, 'PL Workstation', '', 'VACANT', '', '', 'ISBL', '', '8582'),
(266, 'Workstation', '7000018703', 'Vikas Singh', 'Integration Competency', 'Karan Parikh', 'ISBL', '', '8582'),
(267, 'Workstation', '7000020779', 'Nithyanandam Ramineni', 'Mozart Group 8', 'Hariharan Subramaniam', 'ISBL', '', '8990'),
(268, 'Workstation', '7000016538', 'Anand Acharya', 'AWACS Team', 'Mithun day', 'ISBL', '', '8581'),
(269, 'Workstation', '', 'VACANT', '', '', 'ISBL', '', '8581'),
(270, 'Workstation', '', 'VACANT', '', '', 'ISBL', '', '8561'),
(271, 'Workstation', '', 'VACANT', '', '', 'ISBL', '', '8561'),
(272, 'Workstation', '', 'VACANT', '', '', 'ISBL', '', '8536'),
(273, 'Workstation', '', 'VACANT', '', '', 'ISBL', '', '8536'),
(274, 'Workstation', '', 'VACANT', '', '', 'ISBL', '', '8821'),
(275, 'Workstation', '', 'VACANT', '', '', 'ISBL', '', '8821'),
(276, 'Workstation', '', 'VACANT', '', '', 'ISBL', '', '8411'),
(277, 'Workstation', '7000017511', 'Snehal Hosmani', 'GET- ICH', 'Karan Parikh', 'ISBL', '', '8411'),
(278, 'PL Workstation', '', 'VACANT', '', '', 'ISBL', '', '8821'),
(279, 'Workstation', '', 'VACANT', '', '', 'ISBL', '', '8605'),
(280, 'Workstation', '', '', '', '', '', '', '8605'),
(281, 'W/S(visitor)', '7000019464', ' Mallikarjuna Venkataswamy ', 'METRO', 'Hansalakshmi Guruswamy', 'ISBL', '', ''),
(282, 'W/S(visitor)', '7000019663', 'Abdul Shaik', 'METRO', 'Hansalakshmi Guruswamy', 'ISBL', '7000020457 Venkata Maram', '8515'),
(283, 'W/S(visitor)', '7000018797', 'Rizwan Moulana', 'METRO', 'Hansalakshmi Guruswamy', 'ISBL', '7000020295 Naveen Daka', '8515'),
(284, 'W/S(visitor)', '7000019463', 'Palaksh?Annegowda', 'METRO', 'Hansalakshmi Guruswamy', 'ISBL', '7000020227 Venkata Chukka', '8519'),
(285, 'W/S(visitor)', '7000018988', 'Lakshminarashima Tanguturi', 'METRO', 'Hansalakshmi Guruswamy', 'ISBL', '50120I1106 Ranjit Kumar', '8583'),
(286, 'W/S(visitor)', '7000019209', 'Rajesh Reddy', 'METRO', 'Hansalakshmi Guruswamy', 'ISBL', '7000020713 Kishore  Reddy', '8802'),
(287, 'W/S(visitor)', '7000019379', 'Vidya Prakash', 'METRO', 'Hansalakshmi Guruswamy', 'ISBL', '7000019277 Chalapathi Pacchigolla', '8525'),
(288, 'W/S(visitor)', '7000018965', 'Rabin Sarkar', 'METRO', 'Hansalakshmi Guruswamy', 'ISBL', '7000020861 Naresh Dhananjayan', ''),
(289, 'W/S(visitor)', '7000020686', 'Sowbhagya Beeraiah', 'METRO', 'Hansalakshmi Guruswamy', 'ISBL', '7000020425 Manoranjan Mohamansingh', '8546'),
(290, 'W/S(visitor)', '7000019132', 'Lokesh Earla', 'METRO', 'Hansalakshmi Guruswamy', 'ISBL', '', '8546'),
(291, 'W/S(visitor)', '7000019177', 'Maheswari Chegu', 'METRO', 'Hansalakshmi Guruswamy', 'ISBL', '', '8546'),
(292, 'W/S(visitor)', '7000019057', 'Priyanshi Sharma', 'METRO', 'Hansalakshmi Guruswamy', 'ISBL', '7000020834 Satish Kandula', '8546'),
(293, 'W/S(visitor)', '7000019291', ' Kabilan Maran', 'METRO', 'Hansalakshmi Guruswamy', 'ISBL', '', ''),
(294, 'W/S(visitor)', '7000018964', 'Monica Nigam', 'METRO', 'Hansalakshmi Guruswamy', 'ISBL', '7000020610 Shiva Bollolli', ''),
(295, 'W/S(visitor)', '7000019431', 'Pradeep Narayanaswamy', 'METRO', 'Hansalakshmi Guruswamy', 'ISBL', '7000020636 Nagamalleswari Karnati', ''),
(296, 'W/S(visitor)', '7000018699', 'Bidyut Thakuria', 'METRO ', 'Hansalakshmi Guruswamy', 'ISBL', '7000020637 Vishnu Dandala', '8360'),
(297, 'W/S(visitor)', '7000019258', 'Rahul Subbanaidu', 'METRO', 'Hansalakshmi Guruswamy', 'ISBL', '', '8360'),
(298, 'W/S(visitor)', '7000018832', 'Rohini Basu', 'METRO', 'Hansalakshmi Guruswamy', 'ISBL', '7000020687 Jayakumar Vathyaram', '8360'),
(299, 'W/S(visitor)', '7000019277', 'Chalapathi Pacchigolla', 'METRO', 'Hansalakshmi Guruswamy', 'ISBL', '7000020838 Srinivasan Mohanbabu', '8360'),
(300, 'W/S(visitor)', '7000018872', 'Bharat Gupta', 'METRO', 'Hansalakshmi Guruswamy', 'ISBL', '7000020833 Santhosha Acharya', ''),
(301, 'W/S(visitor)', '7000019320', 'Mohammad Sadruddin', 'METRO', 'Hansalakshmi Guruswamy', 'ISBL', '', '');

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

-- --------------------------------------------------------

--
-- Table structure for table `wms_workstation_status`
--

CREATE TABLE `wms_workstation_status` (
  `floor_id` varchar(30) NOT NULL,
  `workstation_no` varchar(30) NOT NULL,
  `request_id` varchar(50) DEFAULT NULL,
  `project_id` varchar(50) DEFAULT NULL,
  `employees` varchar(50) DEFAULT NULL,
  `current_status` int(5) NOT NULL DEFAULT '0',
  `insert_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wms_workstation_status`
--

INSERT INTO `wms_workstation_status` (`floor_id`, `workstation_no`, `request_id`, `project_id`, `employees`, `current_status`, `insert_timestamp`, `modified_timestamp`) VALUES
('F2', 'A2CW57', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2CW56', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2CW53', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2CW55', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2CW54', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2CW47', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2CW48', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2CW51', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2CW49', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2CW50', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2CW41', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2CW45', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2CW44', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2CW43', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2CW42', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2CW39', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2CW40', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2CW32', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2CW31', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2CW28', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2CW29', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2CW30', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2CW34', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2CW35', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2CW37', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2CW36', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2CW16', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2CW17', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2CW20', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2CW19', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2CW18', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2CW08', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2CW07', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2CW09', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2CW10', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2CW05', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2CW06', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2CW04', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2CW15', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2CW27', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2CW33', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2CW38', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2CW46', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2CW52', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2DW56A', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2CW24', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2CW25', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2CW26', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2DW44', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2CW23', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2CW13', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2CW22', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2CW21', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2CW14', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2CW12', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2CW01', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2DW30', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2CW11', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2CW02', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2CW03', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2DW43', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2DW29', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2CWP04', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2CWP03', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2CWP02', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2CWP01', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2DWP02', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2DWP01', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2DW04', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2DW03', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2DW02', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2DW01', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2DW05', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2DW06', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2DW10', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2DW11', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2DW12', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2DW13', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2DW14', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2DW09', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2DW08', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2DW07', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2DW15', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2DW16', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2DW17', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2DW18', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2DW19', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2DW20', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2DW21', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2DW22', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2DW23', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2DW24', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2DW28', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2DW32', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2DW31', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2DW27', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2DW26', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2DW33', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2DW34', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2DW35', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2DW36', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2DW25', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2DW37', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2DW38', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2DW39', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2DW40', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2DW41', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2DW42', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2DW50', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2DW49', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2DW48', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2DW47', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2DW46', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2DW45', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2DW51', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2DW55', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2DW54', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2DW57', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2DW58', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2DW59', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2DW60', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2DW53', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2DW52', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2DW64', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2DW66', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2DW67', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2DW63', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2DW68', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2DW69', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2DW62', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2DW71', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2DW70', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2DW61', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2DW56', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2DW65', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2DW77', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2DW78', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2DW79', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2DW80', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2DW81', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2DW82', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2DW83', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2DW76', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2DW75', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2DW74', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2DW73', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2DW72', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2DW90', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2DW91', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2DW88', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2DW87', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2DW86', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2DW85', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2DW92', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2DW93', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2DW84', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2DW94', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2DW95', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2DW100', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2DW99', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2DW98', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2DW97', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2DW96', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2DW89', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2DW102', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2DW103', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2DW104', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2DW105', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2DW106', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2DW101', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2BW15', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2BW23', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2BW22', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2BW21', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2BW16', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2BW17', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2BW18', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2BW20', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2BW19', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2BW26', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2BW24', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2BW25', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2BW28', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2BW27', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2BW34', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2BW33', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2BW30', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2BW32', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2BW31', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2BW29', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2BWP01', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2BW10', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2BW12', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2BW11', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2BW14', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2BW13', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2BW07', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2BW06', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2BW03', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2BW04', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2BW05', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2BW02', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2BW01', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2BW08', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2BW09', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2AWP01', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2AW24', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2AW25', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2AW23', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2AW22', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2AW21', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2AW34', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2AW33', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2AW32', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2AW31', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2AW26', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2AW27', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2AW28', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2AW29', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2AW30', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2AW35', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2AW40', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2AW39', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2AW38', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2AW37', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2AW36', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2AW41', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2AW42', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2AW43', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2AW44', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2AW45', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2AW46', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2AW52', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2AW48', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2AW49', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2AW50', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2AW51', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2AW53', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2AW54', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2AW55', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2AW47', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2AW58', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2AW57', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2AW56', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2AW62', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2AW59', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2AW60', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2AW61', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2AW63', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2AW64', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2AW65', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2AW66', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2AW67', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2AW68', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2AW16', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2AW19', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2AW18', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2AW15', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2AW17', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2AW10', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2AW09', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2AW08', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2AW13', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2AW14', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2AW12', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2AW11', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2AW07', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2AW20', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2AW04', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2AW06', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2AW05', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2AW03', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2AW02', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F2', 'A2AW01', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F7', '7BW38', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F7', '7BW59', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F7', '7BW61', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F7', '7BW50', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F7', '7BW37', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F7', '7BW39', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F7', '7BW27', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F7', '7BW29', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F7', '7BW16', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F7', '7BW18', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F7', '7BW05', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F7', '7BW07', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F7', '7BW51', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F7', '7BW08', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F7', '7BW19', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F7', '7BW40', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F7', '7BW06', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F7', '7BW58', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F7', '7BW60', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F7', '7BW49', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F7', '7BW36', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F7', '7BW26', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F7', '7BW28', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F7', '7BW15', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F7', '7BW17', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F7', '7BW04', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F7', '7BW48', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F7', '7BW47', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F7', '7BW10', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F7', '7BW21', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F7', '7BW67', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F7', '7BW57', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F7', '7BW46', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F7', '7BW35', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F7', '7BW25', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F7', '7BW14', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F7', '7BW65', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F7', '7BW55', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F7', '7BW44', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F7', '7BW33', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F7', '7BW23', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F7', '7BW12', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F7', '7BW31', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F7', '7BW02', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F7', '7BW63', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F7', '7BW53', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F7', '7BW42', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F7', '7AW51', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F7', '7AW58', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F7', '7AW49', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F7', '7AW47', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F7', '7AW40', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F7', '7AW38', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F7', '7AW36', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F7', '7AW28', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F7', '7AW26', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F7', '7AW19', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F7', '7AW17', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F7', '7AW15', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F7', '7AW04', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F7', '7AW08', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F7', '7AW06', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F7', '7AW64', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F7', '7AW66', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F7', '7AW56', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F7', '7AW54', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F7', '7AW45', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F7', '7AW43', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F7', '7AW11', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F7', '7AW13', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F7', '7AW24', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F7', '7AW22', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F7', '7AW32', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F7', '7AW34', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F7', '7AW03', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F7', '7AW50', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F7', '7AW39', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F7', '7AW29', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F7', '7AW59', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F7', '7AW48', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F7', '7AW37', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F7', '7AW27', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F7', '7AW16', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F7', '7AW18', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F7', '7AW07', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F7', '7AW05', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F7', '7AW09', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F7', '7BW52', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F7', '7BW41', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F7', '7BW30', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F7', '7BW20', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F7', '7BW09', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F7', '7AW52', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F7', '7AW41', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F7', '7AW62', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F7', '7AW30', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F7', '7AW20', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F7', '7BW01', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F7', '7BW34', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F7', '7BW32', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F7', '7BW24', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F7', '7BW22', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F7', '7BW13', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F7', '7BW11', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F7', '7BW03', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F7', '7BW64', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F7', '7BW56', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F7', '7BW54', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F7', '7BW45', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F7', '7BW43', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F7', '7BW66', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F7', '7AW12', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F7', '7AW14', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F7', '7AW02', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F7', '7AW57', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F7', '7AW65', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F7', '7AW55', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F7', '7AW63', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F7', '7AW53', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F7', '7AW42', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F7', '7AW44', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F7', '7AW46', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F7', '7AW31', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F7', '7AW33', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F7', '7AW35', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F7', '7AW21', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F7', '7AW23', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F7', '7AW25', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F7', '7AW10', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F7', '7AW67', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F7', '7BW62', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F7', '7AW61', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F7', '7AW01', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F7', '7AW60', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW21', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW41', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW57', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW130', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW112', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW92', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW72', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW119', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW71', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW69', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW88', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW90', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW108', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW110', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW127', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW129', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW18', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW37', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW20', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW39', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW53', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW55', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW125', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW106', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW35', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW51', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW67', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW86', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW16', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW139', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW121', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW66', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW81', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW64', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW79', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW101', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW99', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW97', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW135', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW77', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW62', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW117', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW133', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW95', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW75', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW115', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW137', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW60', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW44', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW02', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW24', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW04', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW26', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW46', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW06', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW28', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW48', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW08', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW30', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW50', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW131', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW111', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW91', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW93', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW113', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW17', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW36', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW19', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW38', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW52', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW68', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW40', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW58', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW42', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW56', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW22', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW128', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW89', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW107', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW87', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW54', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW126', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW73', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW138', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW120', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW100', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW80', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW78', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW98', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW118', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW136', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW74', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW94', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW76', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW96', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW116', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW134', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW132', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW114', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW29', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW49', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW65', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW05', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW27', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW47', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW63', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW03', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW25', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW45', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW61', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW01', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW23', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW43', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW59', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW122', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW109', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW70', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW80', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW78', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW98', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW74', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW94', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW76', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW65', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW63', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW61', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW59', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW102', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW124', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW104', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW84', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW33', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW15', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW82', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW07', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW13', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW31', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW105', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW34', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW85', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW123', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW103', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW10', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW32', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW83', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW11', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW14', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW12', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5BW09', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5AW38', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5AW40', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5AW20', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5AW36', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5AW17', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5AW34', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5AW15', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5AW08', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
(' F5', '5AW28', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5AW06', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5AW26', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5AW24', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5AW04', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5AW22', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5AW02', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5AW03', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5AW23', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5AW21', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5AW25', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5AW05', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5AW27', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5AW07', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5AW01', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5AW19', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5AW14', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5AW16', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5AW35', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5AW37', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5AW18', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5AW39', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5AW33', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5AW69', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5AW53', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5AW111', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5AW90', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5AW70', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5AW55', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5AW88', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5AW127', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5AW109', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5AW51', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5AW67', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5AW86', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5AW107', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5AW124', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5AW126', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5AW49', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5AW65', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5AW84', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5AW104', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5AW122', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5AW130', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5AW42', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5AW58', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5AW73', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5AW93', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5AW113', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5AW44', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5AW48', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5AW64', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5AW79', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5AW99', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5AW119', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5AW134', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5AW117', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5AW97', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5AW77', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5AW62', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5AW46', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5AW132', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5AW115', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5AW95', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5AW75', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5AW60', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5AW136', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5AW129', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5AW112', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5AW41', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5AW57', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5AW72', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5AW92', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5AW43', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5AW59', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5AW74', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5AW94', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5AW114', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5AW131', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5AW45', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5AW61', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5AW76', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5AW96', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5AW116', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5AW133', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44');
INSERT INTO `wms_workstation_status` (`floor_id`, `workstation_no`, `request_id`, `project_id`, `employees`, `current_status`, `insert_timestamp`, `modified_timestamp`) VALUES
('F5', '5AW118', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5AW98', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5AW78', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5AW63', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5AW47', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5AW135', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5AW125', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5AW128', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5AW105', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5AW108', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5AW110', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5AW85', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5AW89', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5AW87', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5AW91', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5AW66', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5AW68', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5AW71', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5AW50', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5AW52', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5AW54', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5AW56', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5AW123', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5AW82', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5AW31', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5AW11', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5AW10', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5AW13', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5AW29', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5AW12', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5AW09', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5AW32', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5AW83', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44'),
('F5', '5AW30', '', '', '', 0, '2019-10-03 05:20:44', '2019-10-03 05:20:44');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;



--
-- Indexes for dumped tables
--

--
-- Indexes for table `emp_allocation`
--
ALTER TABLE `emp_allocation`
  ADD PRIMARY KEY (`id`);

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
  ADD KEY `FKvs34bjkmpbk2e54qlrol3ilt` (`task_id`),
  ADD KEY `FKr2jik008e3jx6r1fal5e9aq1n` (`user_id`);

--
-- Indexes for table `wms_allocation`
--
ALTER TABLE `wms_allocation`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `wms_allocation_seats`
--
ALTER TABLE `wms_allocation_seats`
  ADD PRIMARY KEY (`id`,`floor_id`);

--
-- Indexes for table `wms_buildng_details`
--
ALTER TABLE `wms_buildng_details`
  ADD PRIMARY KEY (`floor`);

--
-- Indexes for table `wms_bulkupload_jobs`
--
ALTER TABLE `wms_bulkupload_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wms_coordinates`
--
ALTER TABLE `wms_coordinates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wms_deallocation_seats`
--
ALTER TABLE `wms_deallocation_seats`
  ADD PRIMARY KEY (`id`,`floor_id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wms_department_details`
--
ALTER TABLE `wms_department_details`
  ADD PRIMARY KEY (`id`,`dept_id`);

--
-- Indexes for table `wms_email_jobs`
--
ALTER TABLE `wms_email_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wms_employee_details`
--
ALTER TABLE `wms_employee_details`
  ADD PRIMARY KEY (`emp_id`);

--
-- Indexes for table `wms_employee_seats_asign`
--
ALTER TABLE `wms_employee_seats_asign`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wms_fa_requests`
--
ALTER TABLE `wms_fa_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wms_floor_details_new`
--
ALTER TABLE `wms_floor_details_new`
  ADD PRIMARY KEY (`floor_id`);

--
-- Indexes for table `wms_history`
--
ALTER TABLE `wms_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wms_login_tracking`
--
ALTER TABLE `wms_login_tracking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wms_pm_details`
--
ALTER TABLE `wms_pm_details`
  ADD PRIMARY KEY (`id`,`pm_id`);

--
-- Indexes for table `wms_pm_requests`
--
ALTER TABLE `wms_pm_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wms_project_details`
--
ALTER TABLE `wms_project_details`
  ADD PRIMARY KEY (`id`,`project_id`);

--
-- Indexes for table `wms_workstation_status`
--
ALTER TABLE `wms_workstation_status`
  ADD PRIMARY KEY (`workstation_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `emp_allocation`
--
ALTER TABLE `emp_allocation`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `task`
--
ALTER TABLE `task`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `wms_allocation`
--
ALTER TABLE `wms_allocation`
  MODIFY `sno` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wms_allocation_seats`
--
ALTER TABLE `wms_allocation_seats`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `wms_bulkupload_jobs`
--
ALTER TABLE `wms_bulkupload_jobs`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wms_coordinates`
--
ALTER TABLE `wms_coordinates`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=275;

--
-- AUTO_INCREMENT for table `wms_deallocation_seats`
--
ALTER TABLE `wms_deallocation_seats`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wms_department_details`
--
ALTER TABLE `wms_department_details`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wms_email_jobs`
--
ALTER TABLE `wms_email_jobs`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `wms_employee_seats_asign`
--
ALTER TABLE `wms_employee_seats_asign`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `wms_fa_requests`
--
ALTER TABLE `wms_fa_requests`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wms_history`
--
ALTER TABLE `wms_history`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `wms_login_tracking`
--
ALTER TABLE `wms_login_tracking`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wms_pm_details`
--
ALTER TABLE `wms_pm_details`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wms_pm_requests`
--
ALTER TABLE `wms_pm_requests`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wms_project_details`
--
ALTER TABLE `wms_project_details`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `FKn82ha3ccdebhokx3a8fgdqeyy` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`),
  ADD CONSTRAINT `id_role_id` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
