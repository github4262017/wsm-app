-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 28, 2019 at 10:34 AM
-- Server version: 10.3.15-MariaDB
-- PHP Version: 7.3.6

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
  `insert_timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `no_resources` bigint(20) NOT NULL,
  `sno` bigint(20) NOT NULL,
  `modified_timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
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
  `modified_date` timestamp NOT NULL DEFAULT current_timestamp()
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
(17),
(17),
(17),
(17);

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
-- Table structure for table `table 33`
--

CREATE TABLE `table 33` (
  `COL 1` varchar(31) DEFAULT NULL,
  `COL 2` varchar(14) DEFAULT NULL,
  `COL 3` varchar(23) DEFAULT NULL,
  `COL 4` varchar(14) DEFAULT NULL,
  `COL 5` varchar(44) DEFAULT NULL,
  `COL 6` varchar(31) DEFAULT NULL,
  `COL 7` varchar(28) DEFAULT NULL,
  `COL 8` varchar(19) DEFAULT NULL,
  `COL 9` varchar(36) DEFAULT NULL,
  `COL 10` varchar(4) DEFAULT NULL,
  `COL 11` varchar(10) DEFAULT NULL,
  `COL 12` varchar(10) DEFAULT NULL,
  `COL 13` varchar(10) DEFAULT NULL,
  `COL 14` varchar(10) DEFAULT NULL,
  `COL 15` varchar(10) DEFAULT NULL,
  `COL 16` varchar(10) DEFAULT NULL,
  `COL 17` varchar(10) DEFAULT NULL,
  `COL 18` varchar(10) DEFAULT NULL,
  `COL 19` varchar(10) DEFAULT NULL,
  `COL 20` varchar(10) DEFAULT NULL,
  `COL 21` varchar(10) DEFAULT NULL,
  `COL 22` varchar(10) DEFAULT NULL,
  `COL 23` varchar(10) DEFAULT NULL,
  `COL 24` varchar(10) DEFAULT NULL,
  `COL 25` varchar(10) DEFAULT NULL,
  `COL 26` varchar(10) DEFAULT NULL,
  `COL 27` varchar(10) DEFAULT NULL,
  `COL 28` varchar(10) DEFAULT NULL,
  `COL 29` varchar(10) DEFAULT NULL,
  `COL 30` varchar(10) DEFAULT NULL,
  `COL 31` varchar(10) DEFAULT NULL,
  `COL 32` varchar(10) DEFAULT NULL,
  `COL 33` varchar(10) DEFAULT NULL,
  `COL 34` varchar(10) DEFAULT NULL,
  `COL 35` varchar(10) DEFAULT NULL,
  `COL 36` varchar(10) DEFAULT NULL,
  `COL 37` varchar(10) DEFAULT NULL,
  `COL 38` varchar(10) DEFAULT NULL,
  `COL 39` varchar(10) DEFAULT NULL,
  `COL 40` varchar(10) DEFAULT NULL,
  `COL 41` varchar(10) DEFAULT NULL,
  `COL 42` varchar(10) DEFAULT NULL,
  `COL 43` varchar(10) DEFAULT NULL,
  `COL 44` varchar(10) DEFAULT NULL,
  `COL 45` varchar(10) DEFAULT NULL,
  `COL 46` varchar(10) DEFAULT NULL,
  `COL 47` varchar(10) DEFAULT NULL,
  `COL 48` varchar(10) DEFAULT NULL,
  `COL 49` varchar(10) DEFAULT NULL,
  `COL 50` varchar(10) DEFAULT NULL,
  `COL 51` varchar(10) DEFAULT NULL,
  `COL 52` varchar(10) DEFAULT NULL,
  `COL 53` varchar(10) DEFAULT NULL,
  `COL 54` varchar(10) DEFAULT NULL,
  `COL 55` varchar(10) DEFAULT NULL,
  `COL 56` varchar(10) DEFAULT NULL,
  `COL 57` varchar(10) DEFAULT NULL,
  `COL 58` varchar(10) DEFAULT NULL,
  `COL 59` varchar(10) DEFAULT NULL,
  `COL 60` varchar(10) DEFAULT NULL,
  `COL 61` varchar(10) DEFAULT NULL,
  `COL 62` varchar(10) DEFAULT NULL,
  `COL 63` varchar(10) DEFAULT NULL,
  `COL 64` varchar(10) DEFAULT NULL,
  `COL 65` varchar(10) DEFAULT NULL,
  `COL 66` varchar(10) DEFAULT NULL,
  `COL 67` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table 33`
--

INSERT INTO `table 33` (`COL 1`, `COL 2`, `COL 3`, `COL 4`, `COL 5`, `COL 6`, `COL 7`, `COL 8`, `COL 9`, `COL 10`, `COL 11`, `COL 12`, `COL 13`, `COL 14`, `COL 15`, `COL 16`, `COL 17`, `COL 18`, `COL 19`, `COL 20`, `COL 21`, `COL 22`, `COL 23`, `COL 24`, `COL 25`, `COL 26`, `COL 27`, `COL 28`, `COL 29`, `COL 30`, `COL 31`, `COL 32`, `COL 33`, `COL 34`, `COL 35`, `COL 36`, `COL 37`, `COL 38`, `COL 39`, `COL 40`, `COL 41`, `COL 42`, `COL 43`, `COL 44`, `COL 45`, `COL 46`, `COL 47`, `COL 48`, `COL 49`, `COL 50`, `COL 51`, `COL 52`, `COL 53`, `COL 54`, `COL 55`, `COL 56`, `COL 57`, `COL 58`, `COL 59`, `COL 60`, `COL 61`, `COL 62`, `COL 63`, `COL 64`, `COL 65`, `COL 66`, `COL 67`) VALUES
('Workstation Details - 2nd Floor', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('Sl.No', 'Workstation NO', 'Type of W/S', 'Access card no', 'Employee Name', 'Project Name', 'Project Manager', 'Division', 'Remark ', 'EXT', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('1', 'A2AW01', 'Workstation', '501200C897', 'Keshav Murthy', 'Admin', 'Muthuraj Adiga', 'P&C-Admin', '', '8970', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('2', 'A2AW02', 'Workstation', '501200I690', 'Muthuraj Adiga', 'Admin', 'Yoichi oda', 'P&C-Admin', '', '8970', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('3', 'A2AW03', 'Workstation', '7000015480', 'Sreejesh Sreedharan', 'Admin', 'Muthuraj Adiga', 'P&C-Admin', '', '8680', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('4', 'A2AW04', 'Workstation', '501200I845', 'Reema K', 'Admin', 'Muthuraj Adiga', 'P&C-Admin', '', '8527', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('5', 'A2AW05', 'Workstation', '5013003378', 'Sandeep  EswaraPrasad', 'Admin', 'Muthuraj Adiga', 'P&C-Admin', ' ', '8970', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('6', 'A2AW06', 'Workstation', '501200C983', 'Swamy Narayana', 'Admin', 'Muthuraj Adiga', 'P&C-Admin', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('7', 'A2AW07', 'Workstation', '7000012496', 'Jayadeva Appannegowda', 'Admin', 'Muthuraj Adiga', 'P&C-Admin', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('8', 'A2AW08', 'Workstation', '5013003214', 'Deepika Nanaiah', 'Admin', 'Muthuraj Adiga', 'P&C-Admin', '', '8251', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('9', 'A2AW09', 'Workstation', '5013504236', 'Savitha Sadashiviah', 'Admin', 'Muthuraj Adiga', 'P&C-Admin', '', '8251', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('10', 'A2AW10', 'Workstation', 'Transport', 'Shashi Kumar', 'Admin', 'Muthuraj Adiga', 'P&C-Admin', ' ', '8251', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('11', 'A2AW11', 'Workstation', '', 'Vacant', '', '', '', '', '8251', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('12', 'A2AW12', 'Workstation', '501200I666', 'Shyam Kishore', 'DCB-ERP', 'Ganesh Tirur', 'ISBL', '', '8523', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('13', 'A2AW13', 'Workstation', '7000019238', 'Pavan Chandrashekar', 'GPW', 'Raghavendra Rao', 'ISBL', '', '8564', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('14', 'A2AW14', 'Workstation', '501200I136', 'Pushpa T M', 'ISE', 'Sandeep Chauhan', 'ISBL', '', '8564', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('15', 'A2AW15', 'Workstation', '5013003518', 'Premkumar Paul', 'GPW BAU ', 'Umesh Vijayan', 'ISBL', '', '8571', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('16', 'A2AW16', 'Workstation', '501200I942', 'Murugesh Pandian', 'Competency', 'N S Srinivas', 'ISBL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('17', 'A2AW17', 'Workstation', '5012000I57', 'Hariharan Subramaniam', 'ARCHITECTURE COMPETENCY ', 'N S Srinivas', 'ISBL', '', '8571', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('18', 'A2AW18', 'Workstation', '7000017535', 'Dikshya Handique', 'GET', 'Raghavendra Rao', 'ISBL', '', '8518', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('19', 'A2AW19', 'Workstation', '50120I1075', 'Pankaj Jain', 'SEL-SUPS-QA', 'Rohan Dharmapalan', 'ISBL', '', '8499', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('20', 'A2AW20', 'Workstation', '7000018877', 'Kushal?Karakuchi', 'GPW BAU', 'Raghavendra Rao', 'ISBL', '7000020419  Santhosh Pittala', '8518', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('21', 'A2AW21', 'Workstation', '501200I174', 'Mohankumar Rajendran', 'GPW BAU', 'Umesh Vijayan', 'ISBL', '', '8518', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('22', 'A2APW01', 'PL Workstation', '5013003167', 'Kannan Krishnan', 'TST - SCOPE MANAGED TESTI', 'Pankaj Jain', 'ISBL', '', '8518', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('23', 'A2AW22', 'Workstation', '7000015709', 'Soumya Gangadharaiah', 'GPW BAU', 'Raghavendra Rao', 'ISBL', '7000020648 Preethika Jain?', '8709', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('24', 'A2AW23', 'Workstation', '501200I501', 'Raghavendra Rao', 'GPW BAU', 'Rohan Dharmapalan', 'ISBL', '7000020452 Mohammad Chowdary', '8709', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('25', 'A2AW24', 'Workstation', '7000010401', 'Ashok Vittalmurthy', 'GPW BAU', 'Raghavendra Rao', 'ISBL', '7000020423 Pooja Niranjan', '8709', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('26', 'A2AW25', 'Workstation', '7000011338', ' Raghavendra Mukunda', 'TST - GPW', 'Raghavendra Rao', 'ISBL', '7000020557 Anjaneyulu ?Gadiga ', '8955', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('27', 'A2AW26', 'Workstation', '7000019232', 'Sourav Dash', 'Metro', 'Kannan Krishnan', 'ISBL', '', '8541', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('28', 'A2AW27', 'Workstation', '5013505245', 'Nataraj Ullegadde', 'GPW BAU', 'Raghavendra Rao', 'ISBL', '7000020424 Sanikommu Parvathi', '8541', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('29', 'A2AW28', 'Workstation', '7000020235', 'Rajalakshmi Kamath', 'Metro', 'Raghavendra Rao', 'ISBL', '', '8955', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('30', 'A2AW29', ' Workstation', '501200I530', ' Tomy Kuriakose', 'Metro', 'N S Srinivas', 'ISBL', '', '8541', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('31', 'A2AW30', 'Workstation', '7000019016', 'Lakshmi Kala', 'GDC-GPW', 'Umesh Vijayan', 'ISBL', '', '8541', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('32', 'A2AW31', 'Workstation', '7000018845', 'Jayareddy Puttappanavar', 'GDC-GPW', 'Umesh Vijayan', 'ISBL', '', '8955', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('33', 'A2AW32', 'Workstation', '7000018231', 'Subba Nangineedi', 'GDC-GPW', 'Umesh Vijayan', 'ISBL', '', '8526', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('34', 'A2AW33', 'Workstation', '7000018985', 'InjetiRajesh Naidu', 'GDC-GPW', 'Umesh Vijayan', 'ISBL', '', '8526', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('35', 'A2AW34', 'Workstation', '7000013503', 'Srihari Krishnan', 'GPW BAU', 'Umesh Vijayan', 'ISBL', '', '8524', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('36', 'A2AW35', 'Workstation', '5013003163', 'Raveesh Veeregowda', 'GPW BAU', 'Umesh Vijayan', 'ISBL', '7000019223 Rajan Shastry', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('37', 'A2AW36', 'Workstation', '501200I454 ', 'Suma Huchharangaiah', 'GPW BAU', 'Umesh Vijayan', 'ISBL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('38', 'A2AW37', 'Workstation', '7000015412', 'Ganesh Rangarajapuram', 'GPW BAU', 'Umesh Vijayan', 'ISBL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('39', 'A2AW38', 'Workstation', '7000020904', 'Glen Erol', 'SES QA Support ', 'Naveen Nuthalapati', 'ISBL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('40', 'A2AW39', 'Workstation', '7000018289', 'Deepthi Vilambath', 'Test Delivery? ', 'Naveen Nuthalapati', 'ISBL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('41', 'A2AW40', 'Workstation', '5013505075', 'Anil Joshi ', 'GPW BAU', 'Umesh Vijayan', 'ISBL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('42', 'A2AW41', 'Workstation', '7000016141', 'Devendra Baghel', 'GPW BAU SAP', 'Umesh Vijayan', 'ISBL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('43', 'A2AW42', 'Workstation', '7000013178', 'Lavanya Rajasekaran', 'SNEI-CHIHIRO', 'Naveen Nuthalapati', 'ISBL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('44', 'A2AW43', 'Workstation', '501200I671', 'Prakash Navaramalingam', 'Sony China', ' Hariharan Subramaniam', 'ISBL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('45', 'A2AW44', 'Workstation', '7000012075', 'Vijaya Veduru', 'GPW BAU SAP', 'Umesh Vijayan', 'ISBL', '7000011042 Abhijit Kumar', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('46', 'A2AW45', 'Workstation', '5013504740', 'Chukkapalli Nagaraju', 'GPW BAU', 'Umesh Vijayan', 'ISBL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('47', 'A2AW46', 'Workstation', '501200I512', 'Prasanth Vijayan', 'GPW BAU', 'Umesh Vijayan', 'ISBL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('48', 'A2AW47', 'Workstation', '5012000I92', 'Umesh Vijayan', 'GPW BAU', 'Umesh Vijayan', 'ISBL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('49', 'A2AW48', 'Workstation', '501200I383', 'Shweta Gupta', 'GPW BAU', 'Umesh Vijayan', 'ISBL', '', '8956', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('50', 'A2AW49', 'Workstation', '5013003283', 'Mastanrao Kongara', 'GPW BAU', 'Umesh Vijayan', 'ISBL', '', '8603', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('51', 'A2AW50', 'Workstation', '7000017527', 'Pooja Teli', 'GET-Competency Architect', 'Krishna Madala', 'ISBL', '', '8218', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('52', 'A2AW51', 'Workstation', '7000014530', 'Rajeshwari Yaligar', 'Competency Architect', 'Srivastava, Anubhav', 'ISBL', '', '8218', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('53', 'A2AW52', 'Workstation', '7000011601', 'Ravinarayana Adkathimar', 'Competency Architect', 'Krishna Madala', 'ISBL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('54', 'A2AW53', 'Workstation', '7000011630', 'Samyukta Shetty', 'Competency Architect', 'Krishna Madala', 'ISBL', '', '8603', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('55', 'A2AW54', 'Workstation', '7000017569', 'Lathashree Harisha', 'DIGI-BOT - Competency Architect', 'Srinivasa Pingili', 'ISBL', '', '8956', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('56', 'A2AW55', 'Workstation', '501200I148', 'Kiran K', 'DIGI-BOT - Competency Architect', 'Srinivasa Pingili', 'ISBL', '', '8524', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('57', 'A2AW56', 'Workstation', '7000017811', ' Kumari Puja', 'Testing Competency', 'Sharfulla Tonse', 'ISBL', '', '8524', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('58', 'A2AW57', 'Workstation', '501200I208', 'Pingili, Srinivasa ', '(DX-IN) PoC & Platform', 'Sharfulla Tonse', 'ISBL', '7000020906 Venkata Vartha', '8594', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('59', 'A2AW58', 'Workstation', '*0000112390', 'Sadayoshi Murao', '(DX-IN) PoC & Platform', 'Sharfulla Tonse', 'ISBL', '7000020813 Ram Kumar', '8553', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('59', 'A2AW58A', '', '7000019427', 'Mamidipaka Renu', 'Competency Architect', 'Srinivas Pingili', 'ISBL', 'Pillar desk', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('60', 'A2AW59', 'Workstation', '7000015118', 'Vijaya Tiwari', 'Competency Architect', 'Sharfulla Tonse', 'ISBL', '', '8553', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('61', 'A2AW60', 'Workstation', '7000014492', 'Kaviya Narayanan', 'Competency Architect', 'Sharfulla Tonse', 'ISBL', '', '8568', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('62', 'A2AW61', 'Workstation', '7000014508', 'Mohammed Atthaka', 'DX-IN) PoC & Platform', 'Srinivas Pingili', 'ISBL', '', '8532', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('63', 'A2AW62', 'Workstation', '501200I938', 'Srivastava, Anubhav', 'DX-IN) PoC & Platform', 'Sharfulla Tonse', 'ISBL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('64', 'A2AW63', 'Workstation', '7000017501', ' Karthik Gayakwad', 'DX-IN) PoC & Platform', 'Srinivas Pingili', 'ISBL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('65', 'A2AW64', 'Workstation', '7000017575', 'Mahima Rao', 'DX-IN) PoC & Platform', 'Srinivas Pingili', 'ISBL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('66', 'A2AW65', 'Workstation', '7000014497', 'Shreya Airody', 'DX-IN) PoC & Platform', 'Srinivas Pingili', 'ISBL', '', '8532', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('67', 'A2AW66', 'Workstation', '7000014551', 'Apoorva Petkar', 'DX-IN) PoC & Platform', 'Krishna Madala', 'ISBL', '', '8532', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('68', 'A2AW67', 'Workstation', '5013505441', 'Prashant Seethalakshmi', 'Java competency', 'Srinivas Pingili', 'ISBL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('68', 'A2AW68', '', '5013505306', 'Harini Manjunath', 'Competency Architect', 'Srinivas Pingili', 'ISBL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', 'Workstation', '', '', '', '', '', '', '8568', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('104', 'A2BW01', 'Workstation', '7000019914', 'Chennabasava Javali', 'GDC-Mozart GP1', 'Umesh Vijayan', 'ISBL', '50120I1116 Devender Bandi', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('105', 'A2BW02', 'Workstation', '7000019200', 'Ragavendra Seegalapallkusane', 'GPW', 'Umesh Vijayan', 'ISBL', '501200I719 Chilakuri, Kishore', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('106', 'A2BW03', 'Workstation', '7000019811', 'SeethaRamaiah Bharani', 'Metro', 'Hansalakshmi Guruswamy', 'ISBL', '', '8693', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('107', 'A2BW04', 'Workstation', '7000020968', 'Gopinath Ramananda', 'GDC-AVS', 'Srivastava, Anubhav', 'ISBL', '', '8693', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('108', 'A2BW05', 'Workstation', '501200I668', 'Sarath Babu', 'ERP Technical Tower', 'Shyam Kishore', 'ISBL', '', '8693', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('109', 'A2BW06', 'Workstation', '7000019410', 'BhanuChand Gollapudi', 'GPW-BAU', 'Sudhakar Ragunathan', 'ISBL', '', '8392', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('110', 'A2BW07', 'Workstation', '7000015789', 'Siddam Kaveeswaraiah', 'GPW-BAU', 'Sudhakar Ragunathan', 'ISBL', '', '8392', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('111', 'A2BW08', 'Workstation', '5013503492', 'Jagadeesh Jeevarathinam', 'GPW BAU', 'Umesh Vijayan', 'ISBL', '7000019973 Nagaraju Nanjundappa', '8392', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('112', 'A2BW09', 'Workstation', '5013003487', 'Pradeep Shanmugam', 'GISC-IN - AMC', 'Srimant Sharma ', 'ISBL', '', '8928', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('113', 'A2BW10', 'Workstation', '7000017307', 'Manjunath Vaduguru ', 'GPW Morph', 'Vijaysingh Yadav', 'ISBL', '', '8554', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('114', 'A2BW11', 'Workstation', '5013503815', 'Gopalakrishnan, Subramani', 'GPW BAU', 'Umesh Vijayan', 'ISBL', '', '8221', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('115', 'A2BW12', 'Workstation', '7000011612', 'Rohan Nagaraj', 'GPW BAU SAP', 'Sudhakar Ragunathan', 'ISBL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('116', 'A2BW13', 'Workstation', '5013003460', 'Megha Tiwari', 'GPW BAU SAP', 'Sudhakar Ragunathan', 'ISBL', '', '8539', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('117', 'A2BW14', 'Workstation', '7000018635', 'MahaLakshmi Niranjan ', 'Statergic Project ', 'Shyman Kishore ', 'ISBL', '', '8539', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('118', 'A2BWP01', 'PL Workstation', '501200I908', 'Rohan Dharmapalan', 'TESTING  ', 'Hironori Morita (SISC)', 'ISBL', '', '8221', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('119', 'A2BW15', 'Workstation', '7000010060', ' Vamshi Cheekurthy', 'GPW BAU', 'Umesh Vijayan', 'ISBL', '7000013354 Balakrishna Dugga', '8682', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('120', 'A2BW16', 'Workstation', '501200I755', 'Megananathan Govindaswamy', 'GPW BAU', 'Umesh Vijayan', 'ISBL', '', '8682', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('121', 'A2BW17', 'Workstation', '501200I791', 'Sudhakar Ragunathan', 'GPW-BAU/Delivery', 'Avais Ahmed', 'ISBL', '', '8565', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('122', 'A2BW18', 'Workstation', '7000019126', 'Tara Padhy', 'GPW BAU', 'Umesh Vijayan', 'ISBL', '5013505191 Raghavendra Ronad', '8551', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('123', 'A2BW19', 'Workstation', '7000016714', 'Durga Talipuri', 'GPW BAU', 'Sudhakar Ragunathan', 'ISBL', '5013505512 Shailesh Kuttuva', '8565', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('124', 'A2BW20', 'Workstation', '7000015131', 'Nagamalleswararao ?Nallagorla', 'GPW BAU', 'Umesh Vijayan', 'ISBL', '', '8565', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('125', 'A2BW21', 'Workstation', '7000014995', 'Lokanadham Chinnathangal', 'GPW BAU', 'Umesh Vijayan', 'ISBL', '', '8580', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('126', 'A2BW22', 'Workstation', '7000014315', 'Rashmi Ramachandra', 'Secretary ', 'Ravikumar Krishnamoorthy', 'ISBL', '', '8580', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('127', 'A2BW23', 'Workstation', '7000020615', 'Deepthi Vakaligara', 'Mozart Group 8', 'Hariharan S', 'ISBL', '', '8731', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('128', 'A2BW24', 'Workstation', '7000019223', 'Rajan Shastry', 'GPW BAU', 'Umesh Vijayan', 'ISBL', '5013504049 Bhabani Sankar', '8570', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('129', 'A2BW25', 'Workstation', '', 'VACANT', '', '', 'ISBL', '', '8570', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('130', 'A2BW26', 'Workstation', '5012000I25', 'Bopanna M D', 'SGTS/ GREEN', 'Ravikumar Krishnamoorthy', 'ISBL', '', '8570', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('131', 'A2BW27', 'Workstation', '5013003366', 'Gowda, Nataraj', 'BDA', 'Bopanna M D', 'ISBL', '', '8268', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('132', 'A2BW28', 'Workstation', '501200I833', 'Ramesh, Sahana', 'BDA', 'Bopanna M D', 'ISBL', '  ', '8265', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('133', 'A2BWP02', 'PL Workstation', '7000019713', 'Manish Vadehra', 'GISC-AMC-Planning', 'Bopanna Devaiah', 'ISBL', '', '8531', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('133', 'A2BWP02A', 'PL Workstation', '7000019976', 'Deepthy Babu', 'Capability Building- AMC Office', 'Manish Vadehra', 'ISBL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('134', 'A2BW29', 'Workstation', '50120C1443', 'Raju, Suryanarayana', 'GPW BAU', 'Sudhakar Ragunathan', 'ISBL', '', '8534', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('135', 'A2BW30', 'Workstation', '7000018831', 'Anand Bajpai', 'GPW BAU', 'Sudhakar Ragunathan', 'ISBL', '', '8586', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('136', 'A2BW31', 'Workstation', '', 'VACANT', '', '', '', '', '8538', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('137', 'A2BW32', 'Workstation', '', 'VACANT', '', '', '', '', '8538', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('138', 'A2BW33', 'Workstation', '50120C1185', 'Chandramouli Reddy', 'SEL', 'Sudhakar Ragunathan', 'ISBL', '', '8586', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('139', 'A2BW34', 'Workstation', '7000018440', 'Ramesh Lakshe', 'SAP ABAP HANA strategic hiring', 'Sudhakar Ragunathan', 'ISBL', '', '8534', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('140', 'A2CW01', 'Workstation', '7000019935', 'Jyoti Dash', 'SES Remedy', 'Ravindrababu G', 'ISBL', '', '8909', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('141', 'A2CW02', 'Workstation', '5013003519', 'Kumar Nalin', 'Remedy on Demand??', 'Ravindrababu G', 'ISBL', '', '8909', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('142', 'A2CW03', 'Workstation', '501200I680', 'Tushar Shah', 'ISE', 'Deshpande, Vijay ', 'ISBL', '', '8994', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('143', 'A2CW04', 'Workstation', '5013003416', 'Pradeep Kota', 'GDC-Metro', 'Hansalakshmi Guruswamy', 'ISBL', '', '8994', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('144', 'A2CW05', 'Workstation', '7000018668', 'Bhaskar Venkatesh ', 'GDC-Metro', 'Hansalakshmi Guruswamy', 'ISBL', '', '8910', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('145', 'A2CW06', 'Workstation', '7000016798', 'Naushad Hassan', 'SGTS', 'Ajit Verma', 'ISBL', '', '8910', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('146', 'A2CW07', 'Workstation', '7000020111', 'Shivanshu Nanda', 'SGTS', 'Ajit Verma', 'ISBL', '', '8986', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('147', 'A2CW08', 'Workstation', '7000013556', 'Raghavendra Krishnamurthy', 'SGTS', 'Ajit Verma', 'ISBL', '7000020047 Thirumal Dhakshinamoorthy', '8986', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('148', 'A2CW09', 'Workstation', '7000015471', 'Santanu Maiti', 'STAR', 'Ajit Verma', 'ISBL', '', '8986', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('149', 'A2CW10', 'Workstation', '7000015638', 'Sharda Barole', 'STAR', 'Ajit Verma', 'ISBL', '', '8986', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('150', 'A2CWP01', 'PL Workstation', '7000016910', 'Sameer Drolia ', 'Metro', 'Hansalakshmi Guruswamy', 'ISBL', '', '8994', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('151', 'A2CW11', 'Workstation', '7000011841', 'Ranga Pannala', 'Java Competency', 'Anu Thomas', 'ISBL', '', '8909', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('152', 'A2CW12', 'Workstation', '5013003521', ' Vijay Deshpande', 'GPW-ISE', ' Avais Ahmad', 'ISBL', '', '8403', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('153', 'A2CW13', 'Workstation', '7000017709', 'Dejimina Patra', 'GDC-Metro', 'Hansalakshmi Guruswamy', 'ISBL', '', '8691', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('154', 'A2CW14', 'Workstation', '5013003135', 'Sathyanarayana Raghavendra', 'GDC-Metro', 'Hansalakshmi Guruswamy', 'ISBL', '7000019843 Rohit Singh', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('155', 'A2CW15', 'Workstation', '7000014908', 'Pranay Jain', 'SGTS', 'Ajeet Sachan', 'ISBL', '', '8689', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('156', 'A2CW16', 'Workstation', '7000019571', 'Raj Patel', 'SGTS', 'Ajit Verma', 'ISBL', '', '8689', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('157', 'A2CW17', 'Workstation', '5013003085', 'Arun Pasumurty', 'SGTS', 'Ajit Verma', 'ISBL', '7000019440 Atul Jain', '8407', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('158', 'A2CW18', 'Workstation', '50120C1492', 'Anantharaj Thangaraj', 'STAR', 'Ajit Verma', 'ISBL', '', '8407', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('159', 'A2CW19', 'Workstation', '7000019501', 'Jagannathappa Mahesh', 'SGTS', 'Ajit Verma', 'ISBL', '7000021016 Manjula Krishna', '8589', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('160', 'A2CW20', 'Workstation', '7000020554', ' Srinivasulu Thokala ', 'SGTS-ECUBE&GC', 'Ajit Verma', 'ISBL', '', '8609', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('161', 'A2CWP02', 'PL Workstation', '50120I1095', 'Ajit Verma', 'SGTS', 'N S Srinivas', 'ISBL', '', '8512', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('162', 'A2CW21', 'Workstation', '7000014798', 'Rajeswara Bodapati ', 'GPW-SRM', 'VijayaBhaskarudu Gangisetty', 'ISBL', '', '8697', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('163', 'A2CW22', 'Workstation', '7000019796', 'Sapna Tuduru', 'GPW FICO/SRM Support', 'Vijay Deshpande  ', 'ISBL', '', '8697', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('164', 'A2CW23', 'Workstation', '501200I177', 'Pathaiah, Rita', 'Internal Apps', 'Bopanna M D', 'ISBL', '', '8411', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('165', 'A2CW24', 'Workstation', '5013003198', 'Gangisetty, VijayaBhaskarudu', 'GPW BAU', 'Deshpande, Vijay ', 'ISBL', '7000019888 Sridhar Muthekepalli', '8569', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('166', 'A2CW25', 'Workstation', '5013505411', 'Srinivasulu Cheedella', 'GPW BAU', 'Deshpande, Vijay ', 'ISBL', '', '8591', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('167', 'A2CW26', 'Workstation', '7000016668', 'Rodny Lasrado', 'GPW BAU', 'Gangisetty, VijayaBhaskarudu', 'ISBL', '', '8591', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('168', 'A2CW27', 'Workstation', '7000018556', 'Chiranjeevi Kuncham', 'GDC-Metro', 'RajayKumar Chandrakanth', 'ISBL', '', '8678', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('169', 'A2CW28', 'Workstation', '7000020185', 'Subbareddy Chenji', 'SGTS', 'Ajit Verma', 'ISBL', '7000021023 Chenchaiah Murakonda', '8678', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('170', 'A2CW29', 'Workstation', '7000020174', 'Naresh Bonagiri', 'SGTS', 'Ajit Verma', 'ISBL', '', '8699', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `table 33` (`COL 1`, `COL 2`, `COL 3`, `COL 4`, `COL 5`, `COL 6`, `COL 7`, `COL 8`, `COL 9`, `COL 10`, `COL 11`, `COL 12`, `COL 13`, `COL 14`, `COL 15`, `COL 16`, `COL 17`, `COL 18`, `COL 19`, `COL 20`, `COL 21`, `COL 22`, `COL 23`, `COL 24`, `COL 25`, `COL 26`, `COL 27`, `COL 28`, `COL 29`, `COL 30`, `COL 31`, `COL 32`, `COL 33`, `COL 34`, `COL 35`, `COL 36`, `COL 37`, `COL 38`, `COL 39`, `COL 40`, `COL 41`, `COL 42`, `COL 43`, `COL 44`, `COL 45`, `COL 46`, `COL 47`, `COL 48`, `COL 49`, `COL 50`, `COL 51`, `COL 52`, `COL 53`, `COL 54`, `COL 55`, `COL 56`, `COL 57`, `COL 58`, `COL 59`, `COL 60`, `COL 61`, `COL 62`, `COL 63`, `COL 64`, `COL 65`, `COL 66`, `COL 67`) VALUES
('171', 'A2CW30', 'Workstation', '7000019129', 'Suganya Kaliappan', 'SGTS', 'Ajit Verma', 'ISBL', '501200I780 Saiprasad Kondagadapu', '8699', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('172', 'A2CW31', 'Workstation', '5013003193', 'Kailani, Jeseena ', 'SGSG', 'Prashant Tiwari', 'ISBL', '', '8686', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('173', 'A2CW32', 'Workstation', '7000020811', 'Sonia Maibam', 'SGSSG', 'Kailani, Jeseena ', 'ISBL', '', '8686', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('174', 'A2CW33', 'Workstation', '7000015756', 'Sarath.Sasidharan', 'SGSG', 'Kailani, Jeseena ', 'ISBL', '7000019823 Naresh Rachepalli', '8988', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('175', 'A2CW34', 'Workstation', '7000017574', 'Harshitha Surendra', 'GET-SGSG', 'Kailani, Jeseena ', 'ISBL', '7000019812 Gnanendra Bheemanathan', '8988', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('176', 'A2CW35', 'Workstation', '501200I870', 'Upendra Joshi', 'Security', 'Hironori Morita ', 'ISBL', '', '8916', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('176', 'A2CW35A', 'Workstation', '5013003190', 'Saikumar Palem', 'Metro', 'Hansalakshmi Guruswamy', 'ISBL', 'Behind Pillar desk', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('177', 'A2CW36', 'Workstation', '5013503118', 'Vellingiri, Dharmendran', 'E-Dolphin', 'Kailani, Jeseena ', 'ISBL', '', '8600', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('178', 'A2CW37', 'Workstation', '50120C1146', 'Pradeep Sake', 'APEX', 'Kailani, Jeseena ', 'ISBL', '', '8600', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('179', 'A2CWP03', 'PL Workstation', '501200I837', 'Hansalakshmi Guruswamy', 'Mozart Gp5', 'N S Srinivas', 'ISBL', '', '8988', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('180', 'A2CW38', 'Workstation', '7000019916', 'Ankita Mandal', 'ERP Technical Tower', 'Shyam Kishore', 'ISBL', '', '8516', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('181', 'A2CW39', 'Workstation', '7000017412', 'Kishore Edagotti', 'SGSSG SCM S&M', 'Kailani, Jeseena ', 'ISBL', '', '8516', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('182', 'A2CW40', 'Workstation', '7000019486', 'Varada Manikanta', 'SEM', 'Kailani, Jeseena ', 'ISBL', '', '8249', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('183', 'A2CW41', 'Workstation', '7000018851', 'Mahamad Ziyaulla', 'GPW', 'Deshpande, Vijay ', 'ISBL', '', '8552', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('184', 'A2CW42', 'Workstation', '7000020211', 'Muvvala, Kiran', 'GPW', 'Sandeep Sahasrabudhe', 'ISBL', '', '8578', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('185', 'A2CW43', 'Workstation', '7000018850', ' Ravikanth Sanka', 'SAP WEST Delivery ', 'Deshpande, Vijay ', 'ISBL', '7000018810 Durga Prasad', '8578', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('186', 'A2CW44', 'Workstation', '5013003018', 'Ajjanavari, Nagaraju', 'ISE', 'Deshpande, Vijay ', 'ISBL', '', '8516', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('187', 'A2CW45', 'Workstation', '7000010751', 'Lakshmi Narasimhan', 'ISE', 'Deshpande, Vijay ', 'ISBL', '', '8516', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('188', 'A2CW46', 'Workstation', '7000011411', 'Dharma Yekula', 'GPW-SIE ', 'Deshpande, Vijay ', 'ISBL', '', '8597', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('189', 'A2CW47', 'Workstation', '5013505522', 'Gopalreddy Yeddula', 'ISE', 'Deshpande, Vijay ', 'ISBL', '', '8597', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('190', 'A2CW48', 'Workstation', '7000013560', 'Preethi Kakade', 'ISE', 'Deshpande, Vijay ', 'ISBL', '', '8550', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('191', 'A2CW49', 'Workstation', '5013003149', 'Ashish Pandey', 'ISE', 'Deshpande, Vijay ', 'ISBL', '7000020057 Manoj Kumar Subramanium', '8540', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('192', 'A2CW50', 'Workstation', '501200I676', 'Ajeet Sachan', 'Competency', 'Anu Thomas', 'ISBL', '', '8540', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('193', 'A2CW51', 'Workstation', '5013003525', 'Tiwari Madhur', 'SPE - Java', 'Anu Thomas', 'ISBL', '', '8550', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('194', 'A2CWP04', 'PL Workstation', '7000017366', 'Harinarayana ?Bonthala', 'GPW ', 'Deshpande, Vijay ', 'ISBL', '7000018391 RaviKumar Alakunta', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('195', 'A2CW52', 'Workstation', '501200I678', 'Vijaya Bhaskar', 'ISE', 'Deshpande, Vijay ', 'ISBL', '7000018786 Venkata Palla', '8520', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('196', 'A2CW53', 'Workstation', '7000015278', 'Renu Singh', 'ISE', 'Deshpande, Vijay ', 'ISBL', '7000020286 Sreekanth Ayyappagari', '8520', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('197', 'A2CW54', 'Workstation', '7000016186', 'Suryakanta Sahu', 'ISE', 'Deshpande, Vijay ', 'ISBL', '7000020558 Ramesh Varda', '8857', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('198', 'A2CW55', 'Workstation', '7000017848', 'Chakrapani Marri', 'ISE', 'Vijay Bhaskar', 'ISBL', '', '8857', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('199', 'A2CW56', 'Workstation', '7000018831', ' Anand Bajpai', 'ISE', 'Deshpande, Vijay ', 'ISBL', '', '8520', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('200', 'A2CW57', 'Workstation', '7000017472', 'Madhavi Veluri', 'SAP West BAU', 'Vijay Bhaskar', 'ISBL', '', '8520', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('201', 'A2DW01', 'Workstation', '5013003138', 'Kurumbann, Mohan', 'Mozart', ' Srimant Sarma', 'ISBL', '', '8602', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('202', 'A2DW02', 'Workstation', '5013003510', 'Shruthi Nidagundi', 'Mozart', ' Srimant Sarma', 'ISBL', '', '8602', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('203', 'A2DW03', 'Workstation', '7000019605', 'Sasanka Behera', 'Mozart GP1 ', ' Srimant Sarma', 'ISBL', '', '8575', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('204', 'A2DW04', 'Workstation', '7000015959', 'Sreejith Chandrashekara ', 'Mozart', 'Rajan Gupta', 'ISBL', '', '8575', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('205', 'A2DWP01', 'PL Workstation', '7000018789', 'AnilKumar Ramisetty', 'Mozart GP1 ', ' Srimant Sarma', 'ISBL', '', '8596', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('206', 'A2DW05', 'Workstation', '501200I662', 'Sandeep Sahasrabudhe', 'GDC-Mozart', 'Rajan Gupta', 'ISBL', '', '8602', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('207', 'A2DW06', 'Workstation', '501200I114', 'Gupta, Rajan', 'GDC-Mozart', 'Hironori Morita', 'ISBL', '', '8602', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('208', 'A2DW07', 'Workstation', '50120I1003', 'Balaji Jelli', 'GDC-Mozart', 'Rajan Gupta', 'ISBL', '', '8530', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('209', 'A2DW08', 'Workstation', '7000020002', 'Prashanta Chowni ', 'GDC-Mozart', 'Srimant Sharma ', 'ISBL', '', '8530', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('210', 'A2DW09', 'Workstation', '7000019441', 'Maheswara Reddy', 'GDC-Mozart', 'Rajan Gupta', 'ISBL', '', '8514', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('211', 'A2DW10', 'Workstation', '7000020545', 'Monali Dhal', 'GDC-Mozart', 'Rajan Gupta', 'ISBL', '', '8514', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('212', 'A2DW11', 'Workstation', '7000018369', 'Madan Mohanraju', 'GDC-Mozart', 'Srimant Sarma', 'ISBL', '', '8514', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('213', 'A2DW12', 'Workstation', '7000015771', 'Dharmalingam Kasilingam', 'MOZART', 'Rajan Gupta', 'ISBL', '', '8514', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('214', 'A2DW13', 'Workstation', '501200I625 ', ' Arvind Janarthanan', 'GDC-Mozart ', 'Sunil Pai', 'ISBL', '7000019128 ReddyJoshna Gandhodi', '8514', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('215', 'A2DW14', 'Workstation', '501200I713', 'Sunil Pai', 'GDC-Mozart', 'Rajan Gupta', 'ISBL', '', '8530', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('216', 'A2DW15', 'Workstation', '7000017451', 'Pushpalatha Subbanna', 'GDC-Mozart', 'Rajan Gupta', 'ISBL', '', '8150', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('217', 'A2DW16', 'Workstation', '7000015038', 'Shantanu Gupta', 'GDC-Mozart', 'Rajan Gupta', 'ISBL', '', '8150', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('218', 'A2DW17', 'Workstation', '7000013326', 'Kiran Kumar', 'GDC-Mozart', 'Rajan Gupta', 'ISBL', '', '8912', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('219', 'A2DW18', 'Workstation', '7000019196', 'Sujit Dash', 'GDC-Mozart', 'Srimant Sharma ', 'ISBL', '501200I456 Deepika Chikkahanumaiah', '8912', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('220', 'A2DWP02', 'PL Workstation', '7000019922', 'Sujata Roy', 'GDC-Mozart', 'Balaji Jelli', 'ISBL', '', '8549', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('221', 'A2DW19', 'Workstation', '5013003244', 'Shashank Rao', 'GDC-Mozart', 'Rajan Gupta', 'ISBL', '7000019197 Amarnath Patra', '8150', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('222', 'A2DW20', 'Workstation', '501200I170', ' Srimant Sarma', 'Mozart GP1 ', 'Hansalakshmi Guruswamy', 'ISBL', '7000020611 Santhosh Bondugulapati', '8150', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('223', 'A2DW21', 'Workstation', '50120I1150', 'Suresh Govindaraju', 'Mozart GP1 ', 'Srimant Sarma', 'ISBL', '7000019259 Chandramouli Patti', '8535', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('224', 'A2DW22', 'Workstation', '5013003429', 'Kiran Pinninti', 'GDC-Mozart', 'Rajan Gupta', 'ISBL', '7000019421 Suresh Pulakhandam', '8535', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('225', 'A2DW23', 'Workstation', '7000011615', 'Mayank Prakash', 'GDC-Mozart', 'Rajan Gupta', 'ISBL', '7000018125 Meenakshi sharma ', '8535', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('226', 'A2DW24', 'Workstation', '7000017784', 'Surendra Pamidi', 'GDC-Mozart', 'Rajan Gupta', 'ISBL', '', '8535', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('227', 'A2DW25', 'Workstation', '7000020726', 'Digvijay Nikam ', 'SES Remedy', 'Mithun day', 'ISBL', '', '8990', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('228', 'A2DW26', 'Workstation', '7000018874', 'Naresh Narisetti', 'MOZART BAU', 'Kripashankar Neelakandan', 'ISBL', '7000019695 Praveen Bandaru', '8582', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('229', 'A2DW27', 'Workstation', '7000017946', 'Udayan Debanath ', 'GDC-Mozart', 'Rajan Gupta', 'ISBL', '', '8480', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('230', 'A2DW28', 'Workstation', '7000018408', 'Ananda Sathyanarayana', 'MOZART BAU ', 'Rajan Gupta', 'ISBL', '', '8480', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('231', 'A2DW29', 'Workstation', '5013003272', ' Ravindrababu Gudimallam', 'Remedy on Demand', 'Prakash Navaramalingam', 'ISBL', '7000020727 Sushant Kadam', '8401', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('232', 'A2DW30', 'Workstation', '7000020559', 'Rishabh Kumar', 'SGS Factsheet Project', 'Ravindrababu G', 'ISBL', 'C-wing side SOLA Team', '8401', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('233', 'A2DW31', '', '7000019265', 'Vinoth Lakshmanan', 'MOZART BAU ', 'Rajan Gupta', 'ISBL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('234', 'A2DW32', '', '5013003476', 'Anirban Roy', 'BAU', 'Rajan Gupta', 'ISBL', '7000020689 Raghu Prasanth', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('235', 'A2DW33', '', '7000019721', 'Madhukara Giddamreddy', 'MOZART Gp 1 BAU', 'Kripashankar Neelakandan', 'ISBL', '7000019721 Madhukara Giddamreddy', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('236', 'A2DW34', '', '7000019430', 'Dilipkumar Govindaraju', 'SAP East / Mozart', 'Kripashankar Neelakandan', 'ISBL', '7000020523 Vimal Sanmukaraj', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('237', 'A2DW35', '', '50120I1045', 'Harish Selvadurai', 'BAU', 'Rajan Gupta', 'ISBL', '7000016588 Radha Yandrapu', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('238', 'A2DW36', '', '7000010714', 'Kripashankar Neelakandan', 'BAU', 'Rajan Gupta', 'ISBL', '7000019932 Rajender Ganta ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('239', 'A2DW37', '', '501200I594', 'Adithi Shetty', 'Mozart BAU ', 'Kripashankar Neelakandan', 'ISBL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('240', 'A2DW38', '', '5013003480', 'Jose Vijay', 'Mozart BAU ', 'Kripashankar Neelakandan', 'ISBL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('241', 'A2DW39', '', '7000019826', 'Charan Polineni', 'Mozart BAU ', 'Kripashankar Neelakandan', 'ISBL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('242', 'A2DW40', '', '501200I911', 'Bharat Tippanawar', 'BAU', 'Rajan Gupta', 'ISBL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('243', 'A2DW41', '', '7000017759', 'VinodKumar Gorthi', 'MOZART-Group4 Project', 'Kripashankar Neelakandan', 'ISBL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('244', 'A2DW42', '', '7000017615', 'Channa Basappa', 'SAP EAST ', 'Kripashankar Neelakandan', 'ISBL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('245', 'A2DW43', '', '7000018552', 'Arun Mulgund', 'Mozart Group 4', 'Murugesh Pandian', 'ISBL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('246', 'A2DW44', '', '7000018798', 'Saurabh Ranade', 'METRO', 'Hansalakshmi Guruswamy', 'ISBL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('247', 'A2DW45', '', '501200I216', 'Vijaysingh Yadav', 'GDC-Metro', 'Hansalakshmi Guruswamy', 'ISBL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('248', 'A2DW46', '', '5013003456', 'Sanjana Choudhary', 'GIS', 'Kripashankar Neelakandan', 'ISBL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('249', 'A2DW47', '', '7000014503', 'Supriya Babli', 'GDC-Mozart', 'Rajan Gupta', 'ISBL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('250', 'A2DW48', '', '501200I584', 'Ranjith Srinivasamurthy', 'Mozart BAU', 'Rajan Gupta', 'ISBL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('251', 'A2DW49', '', '501200I872', 'Muthusivabalan Kamaraj', 'Mozart', 'Murgesh Pandian ', 'ISBL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('252', 'A2DW50', '', '50120I1028', 'Sukanya Gogai', 'Mozart', 'Murgesh Pandian ', 'ISBL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('253', 'A2DW51', '', '7000018040', 'Bhavyalekshmi Yesodharan', 'Mozart', 'Murgesh Pandian ', 'ISBL', '7000020418 Dilida Divakaran', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('254', 'A2DW52', '', '7000019342', 'Shreejith Pillai', 'Mozart', 'Murgesh Pandian ', 'ISBL', '7000019504 Vicky Singh', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('255', 'A2DW53', '', '7000017415', 'Apoorva Shah', 'GDC-Mozart', 'Murugesh Pandian', 'ISBL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('256', 'A2DW54', '', '501200I621', 'Namratha Rajiv', 'GDC-Mozart', 'Murugesh Pandian', 'ISBL', '7000019428 Raja Vanteri', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('257', 'A2DW55', '', '5013003432', 'Priya Shweta', 'GIS', 'Kripashankar Neelakandan', 'ISBL', '7000014502 Suman Hiremath', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('258', 'A2DW56', '', '7000020055', 'SaiKiranrao Hanchate', 'GDC-Mozart', 'Murugesh Pandian', 'ISBL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('259', 'A2DW56A', '', '7000016881', 'Aldrin Irudayaraj', 'ISE', 'VijayaBhaskarudu Gangisetty', 'ISBL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('260', 'A2DW57', '', '7000020072', 'Ravi Reddy', 'Mozart', 'Murgesh Pandian ', 'ISBL', '501200I826 Anand Kumar', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('261', 'A2DW58', '', '5013003291', ' Sahu Jyoti', 'GIS', 'Kripashankar Neelakandan', 'ISBL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('262', 'A2DW59', '', '7000015413', 'Jagamohan Mahanta', 'MOZART GP4 ', 'Murugesh Pandian', 'ISBL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('263', 'A2DW60', '', '7000019294', 'Nandakishore Yella', 'GIS', 'Kripashankar Neelakandan', 'ISBL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('264', 'A2DW61', '', '5013504944', 'Prathapnaidu Purimetla', 'GIS', 'Kripashankar Neelakandan', 'ISBL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('265', 'A2DW62', '', '7000010815', 'Ravikumar Hanumantharao', 'GIS', 'Kripashankar Neelakandan', 'ISBL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('266', 'A2DW63', '', '501200I271', 'Vasudha Kota', 'GIS', 'Kripashankar Neelakandan', 'ISBL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('267', 'A2DW64', '', '7000019565', ' Nilakhantan Mudaliar', 'G4 - MOZART', 'Murugesh Pandian', 'ISBL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('268', 'A2DW65', '', '7000013386', 'Sagaya Hema', 'MOZART GP4 ', 'Murugesh Pandian', 'ISBL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('269', 'A2DW66', '', '7000020613', ' Sandeep Kumar ', 'Mozart Group 1', ' Srimant Sarma', 'ISBL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('270', 'A2DW67', '', '7000019518', 'Debashish Ghosh ', 'METRO', 'Hansalakshmi Guruswamy', 'ISBL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('271', 'A2DW68', '', '7000018749', 'Simpi Choudhary', 'SAP West Delivery', ' Srimant Sarma', 'ISBL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('272', 'A2DW69', '', '', 'VACANT', '', '', 'ISBL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('273', 'A2DW70', '', '7000019409', 'Dinesh Subramaniya', 'Java Competency', 'Kripashankar Neelakandan', 'ISBL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('274', 'A2DW71', '', '50120I1133', 'Seema? Warrier ', 'Chihiro -Team', 'Pankaj Jain', 'ISBL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('275', 'A2DW72', '', '7000020150', 'Kumar Shubham', 'GDC-BI Competency', 'Krishna Madala', 'ISBL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('276', 'A2DW73', '', '5013504763', 'Indudhar Gururaja', 'Mozart Group 1', ' Srimant Sarma', 'ISBL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('277', 'A2DW74', '', '7000015831', ' Sujata Chand', 'Mozart GP5', 'Hansalakshmi G', 'ISBL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('278', 'A2DW75', '', '7000016935', 'Anshika Tiwari', 'SOLA -RM', 'Sanjeev Kumar', 'ISBL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('279', 'A2DW76', '', '5013503389', 'Arunprasath, Vaishnavi', 'SOLA -RM', 'Sanjeev Kumar', 'ISBL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('280', 'A2DW77', '', '7000017357', 'Sourabh Roy', 'GDC-R2DS', 'Mithun day', 'ISBL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('281', 'A2DW78', '', '7000018932', 'Vimesh Veedu', 'GDC-GPW', 'Sudhakar Ragunathan', 'ISBL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('282', 'A2DW79', '', '7000014529', 'Ashwal Kaniyala', 'GDC-R2DS', 'Mithun day', 'ISBL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('283', 'A2DW80', '', '7000019456', 'Garima Shukla', 'GDC-R2DS', 'Mithun day', 'ISBL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('284', 'A2DW81', '', '7000011603', 'Samyukta Shenoy', 'AWACS Team', 'Mithun day', 'ISBL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('285', 'A2DW82', '', '5013504581', 'Vindo Khanna ', 'AWACS Team', 'Mithun day', 'ISBL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('286', 'A2DW83', '', '5013503840', 'Rajesh Babu', 'AWACS Team', 'Mithun day', 'ISBL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('287', 'A2DW84', '', '7000020597', 'Jagannath Swain', 'GDC-HKMC', 'Mithun day', 'ISBL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('288', 'A2DW85', '', '7000019411', 'Abhishek Kumar', 'AWACS Team', 'Mithun day', 'ISBL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('289', 'A2DW86', '', '5013504662', 'Ashokumar reddy N', 'AWACS Team', 'Mithun day', 'ISBL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('290', 'A2DW87', '', '7000016669', 'Srinivasulu Chunchu', 'AWACS Team', 'Mithun day', 'ISBL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('291', 'A2DW88', '', '7000020098', 'Ravi Reddy1', 'R2DS', 'Mithun day', 'ISBL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('292', 'A2DW89', '', '7000018934', 'Satyarama Yandamuri', 'GDC-GPW', 'Sudhakar Ragunathan', 'ISBL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('293', 'A2DW90', '', '', 'VACANT', '', '', 'ISBL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('294', 'A2DW91', '', '', 'VACANT', '', '', 'ISBL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('295', 'A2DW92', 'PL Workstation', '', 'VACANT', '', '', 'ISBL', '', '8582', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('296', 'A2DW93', 'Workstation', '7000018703', 'Vikas Singh', 'Integration Competency', 'Karan Parikh', 'ISBL', '', '8582', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('297', 'A2DW94', 'Workstation', '7000020779', 'Nithyanandam Ramineni', 'Mozart Group 8', 'Hariharan Subramaniam', 'ISBL', '', '8990', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('298', 'A2DW95', 'Workstation', '7000016538', 'Anand Acharya', 'AWACS Team', 'Mithun day', 'ISBL', '', '8581', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('299', 'A2DW96', 'Workstation', '', 'VACANT', '', '', 'ISBL', '', '8581', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('300', 'A2DW97', 'Workstation', '', 'VACANT', '', '', 'ISBL', '', '8561', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('301', 'A2DW98', 'Workstation', '', 'VACANT', '', '', 'ISBL', '', '8561', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('302', 'A2DW99', 'Workstation', '', 'VACANT', '', '', 'ISBL', '', '8536', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('303', 'A2DW100', 'Workstation', '', 'VACANT', '', '', 'ISBL', '', '8536', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('304', 'A2DW101', 'Workstation', '', 'VACANT', '', '', 'ISBL', '', '8821', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('305', 'A2DW102', 'Workstation', '', 'VACANT', '', '', 'ISBL', '', '8821', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('306', 'A2DW103', 'Workstation', '', 'VACANT', '', '', 'ISBL', '', '8411', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('307', 'A2DW104', 'Workstation', '7000017511', 'Snehal Hosmani', 'GET- ICH', 'Karan Parikh', 'ISBL', '', '8411', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('308', 'A2DW105', 'PL Workstation', '', 'VACANT', '', '', 'ISBL', '', '8821', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('309', 'A2DW106', 'Workstation', '', 'VACANT', '', '', 'ISBL', '', '8605', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', 'Workstation', '', '', '', '', '', '', '8605', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('310', 'A2VW01', 'W/S(visitor)', '7000019464', ' Mallikarjuna Venkataswamy ', 'METRO', 'Hansalakshmi Guruswamy', 'ISBL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('311', 'A2VW02', 'W/S(visitor)', '7000019663', 'Abdul Shaik', 'METRO', 'Hansalakshmi Guruswamy', 'ISBL', '7000020457 Venkata Maram', '8515', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('312', 'A2VW03', 'W/S(visitor)', '7000018797', 'Rizwan Moulana', 'METRO', 'Hansalakshmi Guruswamy', 'ISBL', '7000020295 Naveen Daka', '8515', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `table 33` (`COL 1`, `COL 2`, `COL 3`, `COL 4`, `COL 5`, `COL 6`, `COL 7`, `COL 8`, `COL 9`, `COL 10`, `COL 11`, `COL 12`, `COL 13`, `COL 14`, `COL 15`, `COL 16`, `COL 17`, `COL 18`, `COL 19`, `COL 20`, `COL 21`, `COL 22`, `COL 23`, `COL 24`, `COL 25`, `COL 26`, `COL 27`, `COL 28`, `COL 29`, `COL 30`, `COL 31`, `COL 32`, `COL 33`, `COL 34`, `COL 35`, `COL 36`, `COL 37`, `COL 38`, `COL 39`, `COL 40`, `COL 41`, `COL 42`, `COL 43`, `COL 44`, `COL 45`, `COL 46`, `COL 47`, `COL 48`, `COL 49`, `COL 50`, `COL 51`, `COL 52`, `COL 53`, `COL 54`, `COL 55`, `COL 56`, `COL 57`, `COL 58`, `COL 59`, `COL 60`, `COL 61`, `COL 62`, `COL 63`, `COL 64`, `COL 65`, `COL 66`, `COL 67`) VALUES
('313', 'A2VW04', 'W/S(visitor)', '7000019463', 'Palaksh?Annegowda', 'METRO', 'Hansalakshmi Guruswamy', 'ISBL', '7000020227 Venkata Chukka', '8519', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('314', 'A2VW05', 'W/S(visitor)', '7000018988', 'Lakshminarashima Tanguturi', 'METRO', 'Hansalakshmi Guruswamy', 'ISBL', '50120I1106 Ranjit Kumar', '8583', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('315', 'A2VW06', 'W/S(visitor)', '7000019209', 'Rajesh Reddy', 'METRO', 'Hansalakshmi Guruswamy', 'ISBL', '7000020713 Kishore  Reddy', '8802', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('316', 'A2VW07', 'W/S(visitor)', '7000019379', 'Vidya Prakash', 'METRO', 'Hansalakshmi Guruswamy', 'ISBL', '7000019277 Chalapathi Pacchigolla', '8525', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('317', 'A2VW08', 'W/S(visitor)', '7000018965', 'Rabin Sarkar', 'METRO', 'Hansalakshmi Guruswamy', 'ISBL', '7000020861 Naresh Dhananjayan', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('318', 'A2VW09', 'W/S(visitor)', '7000020686', 'Sowbhagya Beeraiah', 'METRO', 'Hansalakshmi Guruswamy', 'ISBL', '7000020425 Manoranjan Mohamansingh', '8546', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('319', 'A2VW10', 'W/S(visitor)', '7000019132', 'Lokesh Earla', 'METRO', 'Hansalakshmi Guruswamy', 'ISBL', '', '8546', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('320', 'A2VW11', 'W/S(visitor)', '7000019177', 'Maheswari Chegu', 'METRO', 'Hansalakshmi Guruswamy', 'ISBL', '', '8546', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('321', 'A2VW12', 'W/S(visitor)', '7000019057', 'Priyanshi Sharma', 'METRO', 'Hansalakshmi Guruswamy', 'ISBL', '7000020834 Satish Kandula', '8546', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('322', 'A2VW13', 'W/S(visitor)', '7000019291', ' Kabilan Maran', 'METRO', 'Hansalakshmi Guruswamy', 'ISBL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('323', 'A2VW14', 'W/S(visitor)', '7000018964', 'Monica Nigam', 'METRO', 'Hansalakshmi Guruswamy', 'ISBL', '7000020610 Shiva Bollolli', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('324', 'A2VW15', 'W/S(visitor)', '7000019431', 'Pradeep Narayanaswamy', 'METRO', 'Hansalakshmi Guruswamy', 'ISBL', '7000020636 Nagamalleswari Karnati', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('325', 'A2VW16', 'W/S(visitor)', '7000018699', 'Bidyut Thakuria', 'METRO ', 'Hansalakshmi Guruswamy', 'ISBL', '7000020637 Vishnu Dandala', '8360', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('326', 'A2VW17', 'W/S(visitor)', '7000019258', 'Rahul Subbanaidu', 'METRO', 'Hansalakshmi Guruswamy', 'ISBL', '', '8360', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('327', 'A2VW18', 'W/S(visitor)', '7000018832', 'Rohini Basu', 'METRO', 'Hansalakshmi Guruswamy', 'ISBL', '7000020687 Jayakumar Vathyaram', '8360', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('328', 'A2VW19', 'W/S(visitor)', '7000019277', 'Chalapathi Pacchigolla', 'METRO', 'Hansalakshmi Guruswamy', 'ISBL', '7000020838 Srinivasan Mohanbabu', '8360', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('329', 'A2VW20', 'W/S(visitor)', '7000018872', 'Bharat Gupta', 'METRO', 'Hansalakshmi Guruswamy', 'ISBL', '7000020833 Santhosha Acharya', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('330', 'A2VW21', 'W/S(visitor)', '7000019320', 'Mohammad Sadruddin', 'METRO', 'Hansalakshmi Guruswamy', 'ISBL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('1', 'A2BF02', 'Cabin', '5013003367', 'Ravikumar Krishnamoorthy', 'ISBL-GDC', 'Mr Hiroyuki Tamaki', 'ISBL', '', '8501', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('2', 'A2AF01', 'Cabin', '501200I104', 'Sharfulla Tonse', 'GDC-Delivery', 'Ravikumar Krishnamoorthy', 'ISBL', '', '8502', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('3', 'A2AF02', 'Cabin', '501200I889', 'Avais Ahmed', 'ISE', 'N S Srinivas', 'ISBL', '', '8503', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('4', 'A2BM05', '', '', 'Meeting Room', '', '', 'ISBL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('4', 'A2CF01', 'Cabin', '', 'VACANT', '', '', 'ISBL', '', '8739', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('5', 'A2CF02', '', '5012000I94', 'N.S Sreenivas', 'ISBL-GDC', 'Ravikumar Krishnamoorthy', 'ISBL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('6', 'A2CM06', '', '', 'Meeting Room', '', '', 'ISBL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('7', 'A2DF02', 'Cabin', '501200I721', 'Jain, Rajendra', 'ARCHITECTURE COMPETENCY -', 'Sharfulla Tonse', 'ISBL', '', '8566', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', 'ISBL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('1', 'A2DF01', 'Cabin', '', 'Yasutaka Eto', 'Function Manager', 'Ravikumar Krishnamoorthy', 'ISBL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', 'Meeting Room-5', '', '', 'ISBL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '7000020265', 'Rajesh Shanmukhadas', 'Metro', 'Hansalakshmi Guruswamy', 'ISBL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '7000020207', 'Subhendu Gangopadhyay', 'Metro', 'Hansalakshmi Guruswamy', 'ISBL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '7000020257', 'Lalatendu Nayak', 'Metro', 'Hansalakshmi Guruswamy', 'ISBL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '7000020547', 'Rakesh Bantu ', 'Metro', 'Hansalakshmi Guruswamy', 'ISBL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('MORE- Meeting Room', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('U H D -Lab ( SARD )', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('1', '', 'Lab -3 ', '7000017572', 'Swathi Bhat', 'GET-SARD', 'Ramachandran, Ramu', 'SARD', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('2', '', '', '7000021026', 'Jiban Dutta', 'SIE-Orbis', 'Ramu Ramchandran', 'SARD', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('3', '', 'Lab -3 ', '7000014039', 'Prithwijit Sarkar', 'U H D', 'Ramu Ramchandran', 'SARD', '', '8588', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('4', '', 'Lab -3 ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '8607', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('Sl.No', 'Workstation No', 'Type of W/S', 'Ext.No', '', '', '', '', '', '8607', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('1', 'A2AM -01', 'Meeting Room', '8511', '', '', '', '', '', '8607', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('2', 'A2AM -02', 'Meeting Room', '8655', '', '', '', '', '', '8607', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('3', 'A2AM -03', 'Meeting Room', '8555', '', '', '', '', '', '8607', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('4', 'A2BM -01', 'Meeting Room', '8644', ' ( insisctraxx.ap.sony.com Space Tool Link )', '', '', '', '', '8607', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('5', 'A2BM -02', 'Meeting Room', '8622', 'September@3', '', '', '', '', '8607', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('6', 'A2BM -03', 'Meeting Room', '8633', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('7', 'A2BM -04', 'Meeting Room', '8901', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('8', 'A2CM -01', 'Meeting Room', '8544', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('9', 'A2CM -02', 'Meeting Room', '8598', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('10', 'A2CM -03', 'Meeting Room', '8599', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('11', 'A2CM -04', 'Meeting Room', '8611', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('12', 'A2CM -05', 'Meeting Room', '8533', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('13', 'A2CM- 06', 'Meeting Room', '8588', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('14', 'A2DM -01', 'Meeting Room', '8577', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('15', 'A2DM -02', 'Meeting Room', '8522', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('16', 'BRD ROOM', 'Board Room', '8901', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', 'LAB- 3', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', 'LAB-2', '', 'TV Usability - Lab', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('1', '', 'LAB-2', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('2', '', 'LAB-2', '501200A184', ' Ajay Soni', 'PSG-Pro-UI Library', ' Jaison Joseph', 'SARD', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('3', '', 'LAB-2', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('5', '', 'LAB-2', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', 'A2AT02', 'BMS- ROOM', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('1', '', 'TESTING Game -Lab', '', '', '', '', '', '', '8695', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('2', '', 'TESTING Game -Lab', '', 'Srinath', 'P&C -ADMIN', 'Adiga Muthuraj', '', '', '8695', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', 'RECEPTION', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('1', '', '', '7000020845', 'Divya Singh ', 'Admin ', 'Muthuraj Adiga', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', 'TESTING Game -Lab', '', '', '', '', '', '', '8695', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('1', 'A2BM01', '', '', ' EMERALD-MEETING ROOM', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('2', 'A2BM02', '', '', ' RUBY-MEETING ROOM', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('3', 'A2CM03', '', '', 'PEARL-MEETING ROOM', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('4', 'A2CM02', '', '', 'TOPAZ- MEETING ROOM', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('5', 'A2CM01', '', '', 'SAPPHIRE-MEETING ROOM', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('6', 'A2AM01', '', '', 'YUKI- TVC- ROOM', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('7', 'A2AM02', '', '', 'HIKARI - TVC- ROOM', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('8', 'A2BM03', '', '', 'NIJI- TVC- ROOM', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('9', 'A2BM04', '', '', 'YUME- BOARD ROOM', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('10', 'A2CM05', '', '', 'KAZE- TVC- ROOM', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('11', 'A2BF01', '', '', 'MEETING ROOM-01', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('12', 'A2AM03', '', '', 'MEETING ROOM-02', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('13', 'A2DM01', '', '', 'MEETING ROOM-03', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('14', 'A2DM02', '', '', 'MEETING ROOM-04', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('15', 'A2CM06', '', '', 'MEETING ROOM-05', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('15', 'A2AT02', '', '', 'BMS- ROOM', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', 'Total', 'Occupied', 'Vacant', 'Remarks - LAB Space', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', 'WORKSTATION', 'WORKSTATION', '272', '272', '0', 'LAB-1 - 8 Employees', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', 'PROJECT LEADER', 'PROJECT LEADER', '16', '16', '0', 'LAB-3 - 9 Employees', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', 'CABIN', 'CABIN', '7', '5', '2', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', 'TOTAL', 'TOTAL', '295', '293', '2', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', 'Lab-2and3Employees', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', 'Lab-2 and 3', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', 'Testing Game lab', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', 'D-Wing side-1 Cabin', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', 'Meeting Room-5', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', 'Double share', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', 'New Seats Added (users)', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', 'TOTAL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

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
  `user_id` varchar(100) NOT NULL,
  `active` int(11) DEFAULT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `user_id`, `active`, `first_name`, `last_name`, `email`, `name`, `password`, `role_id`) VALUES
(1, '', 1, '', '', 'admin@admin.com', 'admin', '$2a$10$f6ENjfxQ2kz7fk2EiuKltuC5Bcvfg822BtpYeMRcXEJcL4M8ywL.2', 1),
(6, '', 1, '', '', 'fadmin@fadmin.com', 'fadmin', '$2a$10$IiYp9/uA9ypb24othErV9eo5VaSuCyw7r0D3OYPGeCewdoFo6YwYm', 4),
(7, '', 1, '', '', 'padmin@padmin.com', 'padmin', '$2a$10$wD6Fo0V4Kq4fDaniOKnqSOWkaxtP4Kvk/7h6/BleVGxZKWQChY5lK', 3),
(9, '', 1, '', '', 'user@user.com', 'user', '$2a$10$nPQm2hPk61aIhEou.9VUuuFznRRpkhnNgyaDzJT4KE82QrPuocHle', 2),
(10, '', 1, '', '', 'sony@sony.com', 'sony', '$2a$10$CJMwbx8Em80iK/UIL31fR.L1zYbK8sdDkM5UUVKbrm4D14GtTqUcS', 4);

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
  `request_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `request_user_id` varchar(50) NOT NULL,
  `approval_user_id` varchar(50) NOT NULL,
  `project_name` varchar(50) NOT NULL,
  `project_id` varchar(50) NOT NULL,
  `insert_timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `no_resources` bigint(20) NOT NULL,
  `sno` bigint(20) NOT NULL,
  `modified_timestamp` timestamp NOT NULL DEFAULT current_timestamp()
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
  `insert_timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `modified_timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `wms_allocation_seats`
--

INSERT INTO `wms_allocation_seats` (`id`, `floor_id`, `seat_number`, `project_id`, `request_id`, `start_time`, `end_time`, `status`, `flag`, `insert_timestamp`, `modified_timestamp`) VALUES
(6, 'F1', '1AW06', 'Forescout', 'REQALC-2019-00000002', '2019-09-21', '2019-09-23', 'BulkUpload', 0, '2019-09-20 09:26:36', '2019-09-20 09:26:36'),
(7, 'F1', '1AW07', 'Forescout', 'REQALC-2019-00000002', '2019-09-21', '2019-09-23', 'BulkUpload', 0, '2019-09-20 09:26:36', '2019-09-20 09:26:36'),
(8, 'F1', '1AW08', 'Forescout', 'REQALC-2019-00000002', '2019-09-21', '2019-09-23', 'BulkUpload', 0, '2019-09-20 09:26:36', '2019-09-20 09:26:36'),
(9, 'F1', '1AW09', 'Forescout', 'REQALC-2019-00000002', '2019-09-21', '2019-09-23', 'BulkUpload', 0, '2019-09-20 09:26:36', '2019-09-20 09:26:36'),
(10, 'F1', '1AW10', 'Forescout', 'REQALC-2019-00000002', '2019-09-21', '2019-09-23', 'BulkUpload', 0, '2019-09-20 09:26:36', '2019-09-20 09:26:36'),
(11, 'F1', '1AW11', 'Forescout', 'REQALC-2019-00000002', '2019-09-21', '2019-09-23', 'BulkUpload', 0, '2019-09-20 09:26:36', '2019-09-20 09:26:36'),
(12, 'F1', '1AW12', 'Forescout', 'REQALC-2019-00000002', '2019-09-21', '2019-09-23', 'BulkUpload', 0, '2019-09-20 09:26:36', '2019-09-20 09:26:36'),
(13, 'F1', '1AW13', 'Forescout', 'REQALC-2019-00000002', '2019-09-21', '2019-09-23', 'BulkUpload', 0, '2019-09-20 09:26:36', '2019-09-20 09:26:36'),
(14, 'F1', '1AW14', 'Forescout', 'REQALC-2019-00000002', '2019-09-21', '2019-09-23', 'BulkUpload', 0, '2019-09-20 09:26:36', '2019-09-20 09:26:36'),
(15, 'F1', '1AW15', 'Forescout', 'REQALC-2019-00000002', '2019-09-21', '2019-09-23', 'BulkUpload', 0, '2019-09-20 09:26:36', '2019-09-20 09:26:36'),
(16, 'F1', '1AW16', 'Forescout', 'REQALC-2019-00000002', '2019-09-21', '2019-09-23', 'BulkUpload', 0, '2019-09-20 09:26:36', '2019-09-20 09:26:36'),
(21, 'F2', 'A2AW62', 'eGIS-VM', 'REQALC-2019-00000005', '2019-09-20', '2019-09-21', 'Pending', 0, '2019-09-20 10:58:39', '2019-09-25 13:44:34'),
(22, 'F2', 'A2AW63', 'eGIS-VM', 'REQALC-2019-00000005', '2019-09-20', '2019-09-21', 'Pending', 0, '2019-09-20 10:58:39', '2019-09-25 13:45:29'),
(23, 'F2', 'A2AW68', 'eGIS-VM', 'REQALC-2019-00000005', '2019-09-20', '2019-09-21', 'Pending', 0, '2019-09-20 10:58:39', '2019-09-25 13:45:41'),
(24, 'F2', 'A2AW67', 'eGIS-VM', 'REQALC-2019-00000005', '2019-09-20', '2019-09-21', 'Pending', 0, '2019-09-20 10:58:39', '2019-09-25 13:45:49'),
(25, 'F1', '1AW23', 'eGIS-PT', 'REQALC-2019-00000006', '2019-09-20', '2019-09-21', 'Pending', 0, '2019-09-21 12:22:13', '2019-09-21 12:22:13'),
(26, 'F1', '1AW27', 'eGIS-PT', 'REQALC-2019-00000006', '2019-09-20', '2019-09-21', 'Pending', 0, '2019-09-21 12:22:13', '2019-09-21 12:22:13'),
(27, 'F1', '1AW29', 'eGIS-PT', 'REQALC-2019-00000006', '2019-09-20', '2019-09-21', 'Pending', 0, '2019-09-21 12:22:13', '2019-09-21 12:22:13'),
(28, 'F1', '1AW33', 'eGIS-PT', 'REQALC-2019-00000006', '2019-09-20', '2019-09-21', 'Pending', 0, '2019-09-21 12:22:13', '2019-09-21 12:22:13'),
(29, 'F1', '1AW30', 'eGIS-PT', 'REQALC-2019-00000006', '2019-09-20', '2019-09-21', 'Pending', 0, '2019-09-21 12:22:13', '2019-09-21 12:22:13'),
(30, 'F1', '1AW34', 'eGIS-PT', 'REQALC-2019-00000006', '2019-09-20', '2019-09-21', 'Pending', 0, '2019-09-21 12:22:13', '2019-09-21 12:22:13'),
(31, 'F1', '1AW31', 'eGIS-PT', 'REQALC-2019-00000006', '2019-09-20', '2019-09-21', 'Pending', 0, '2019-09-21 12:22:13', '2019-09-21 12:22:13'),
(32, 'F1', '1AW35', 'eGIS-PT', 'REQALC-2019-00000006', '2019-09-20', '2019-09-21', 'Pending', 0, '2019-09-21 12:22:13', '2019-09-21 12:22:13'),
(33, 'F1', '1AW32', 'eGIS-PT', 'REQALC-2019-00000006', '2019-09-20', '2019-09-21', 'Pending', 0, '2019-09-21 12:22:13', '2019-09-21 12:22:13'),
(34, 'F1', '', 'Forescout', 'REQALC-2019-00000007', '2019-09-20', '2019-09-21', 'Pending', 0, '2019-09-23 13:51:34', '2019-09-23 13:51:34'),
(35, 'F1', '1AW41', 'SIE Global', 'REQALC-2019-00000008', '2019-09-21', '2019-09-22', 'Pending', 0, '2019-09-23 13:53:21', '2019-09-23 13:53:21'),
(36, 'F1', '1AW37', 'SIE Global', 'REQALC-2019-00000008', '2019-09-21', '2019-09-22', 'Pending', 0, '2019-09-23 13:53:21', '2019-09-23 13:53:21'),
(37, 'F1', '1AW42', 'SIE Global', 'REQALC-2019-00000008', '2019-09-21', '2019-09-22', 'Pending', 0, '2019-09-23 13:53:21', '2019-09-23 13:53:21'),
(38, 'F1', '1AW45', 'SPC', 'REQALC-2019-00000009', '2019-09-20', '2019-09-21', 'Pending', 0, '2019-09-24 13:56:35', '2019-09-24 13:56:35'),
(39, 'F1', '1AW46', 'SPC', 'REQALC-2019-00000009', '2019-09-20', '2019-09-21', 'Pending', 0, '2019-09-24 13:56:35', '2019-09-24 13:56:35'),
(40, 'F1', '1AW47', 'SPC', 'REQALC-2019-00000009', '2019-09-20', '2019-09-21', 'Pending', 0, '2019-09-24 13:56:35', '2019-09-24 13:56:35'),
(41, 'F1', '1AW48', 'SPC', 'REQALC-2019-00000009', '2019-09-20', '2019-09-21', 'Pending', 0, '2019-09-24 13:56:35', '2019-09-24 13:56:35'),
(42, 'F1', '1AW49', 'SPC', 'REQALC-2019-00000009', '2019-09-20', '2019-09-21', 'Pending', 0, '2019-09-24 13:56:35', '2019-09-24 13:56:35');

-- --------------------------------------------------------

--
-- Table structure for table `wms_buildng_details`
--

CREATE TABLE `wms_buildng_details` (
  `location` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'None',
  `tower` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'None',
  `floor` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'None',
  `insert_timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `modified_timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
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
  `insert_timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `modified_timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wms_bulkupload_jobs`
--

INSERT INTO `wms_bulkupload_jobs` (`id`, `request_id`, `from_id`, `to_id`, `status`, `file_path`, `upload_type`, `insert_timestamp`, `modified_timestamp`) VALUES
(1, 'REQALC-2019-00000002', 'fadmin@fadmin.com', 'padmin@padmin.com', 'D', 'D://Bulkupload//REQALC-2019-00000001.csv', 'SA', '2019-09-20 09:26:23', '2019-09-25 12:53:57'),
(2, 'REQALC-2019-00000009', 'fadmin@fadmin.com', 'padmin@padmin.com', 'P', 'D://Bulkupload//wms_employee_seat_asign.csv', 'SE', '2019-09-25 12:46:50', '2019-09-25 12:54:01');

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
(1, 'F1', '1AW17', '195,107,208,118', '1Floor17'),
(2, 'F1', '1AW18', '194,123,208,134', '1Floor18'),
(3, 'F1', '1AW19', '229,106,243,118', '1Floor19'),
(4, 'F1', '1AW20', '230,123,243,135', '1Floor20'),
(5, 'F1', '1AW21', '196,166,208,177', '1Floor21'),
(6, 'F1', '1AW22', '196,183,208,193', '1Floor22'),
(7, 'F1', '1AW23', '195,201,208,212', '1Floor23'),
(8, 'F1', '1AW24', '194,218,208,230', '1Floor24'),
(9, 'F1', '1AW25', '231,165,243,176', '1Floor25'),
(10, 'F1', '1AW26', '231,183,243,193', '1Floor26'),
(11, 'F1', '1AW27', '231,202,243,212', '1Floor27'),
(12, 'F1', '1AW28', '229,218,243,228', '1Floor28'),
(13, 'F1', '1AW29', '194,261,208,272', '1Floor29'),
(14, 'F1', '1AW30', '195,276,208,288', '1Floor30'),
(15, 'F1', '1AW31', '194,296,208,307', '1Floor31'),
(16, 'F1', '1AW32', '195,312,208,323', '1Floor32'),
(17, 'F1', '1AW33', '243,271,229,260', '1Floor33'),
(18, 'F1', '1AW34', '230,277,243,288', '1Floor34'),
(19, 'F1', '1AW35', '230,296,243,307', '1Floor35'),
(20, 'F1', '1AW36', '229,312,243,324', '1Floor36'),
(21, 'F1', '1AW81', '884,121,895,109', '1Floor81'),
(22, 'F1', '1AW82', '907,108,918,121', '1Floor82'),
(23, 'F1', '1AW83', '932,109,943,121', '1Floor83'),
(24, 'F1', '1AW84', '954,108,964,121', '1Floor84'),
(25, 'F1', '1AW85', '980,121,990,109', '1Floor85'),
(26, 'F1', '1AW86', '884,152,895,166', '1Floor86'),
(27, 'F1', '1AW87', '916,153,905,166', '1Floor87'),
(28, 'F1', '1AW88', '932,153,943,165', '1Floor88'),
(29, 'F1', '1AW89', '968,166,957,153', '1Floor89'),
(30, 'F1', '1AW90', '991,152,981,166', '1Floor90'),
(31, 'F1', '1AW91', '894,208,884,195', '1Floor91'),
(32, 'F1', '1AW92', '917,208,907,195', '1Floor92'),
(33, 'F1', '1AW93', '942,195,931,209', '1Floor93'),
(34, 'F1', '1AW94', '953,195,966,209', '1Floor94'),
(35, 'F1', '1AW95', '979,195,992,209', '1Floor95'),
(36, 'F1', '1AW96', '883,238,894,252', '1Floor96'),
(37, 'F1', '1AW97', '916,251,907,239', '1Floor97'),
(38, 'F1', '1AW98', '943,252,933,239', '1Floor98'),
(39, 'F1', '1AW99', '957,239,968,251', '1Floor99'),
(40, 'F1', '1AW09', '67,72,79,83', '1Floor09'),
(41, 'F1', '1AW01', '67,55,79,66', '1Floor01'),
(42, 'F1', '1AW02', '102,55,115,66', '1Floor02'),
(43, 'F1', '1AW10', '102,71,115,81', '1Floor10'),
(44, 'F1', '1AW03', '135,55,147,65', '1Floor03'),
(45, 'F1', '1AW04', '169,54,182,65', '1Floor04'),
(46, 'F1', '1AW05', '202,53,214,66', '1Floor05'),
(47, 'F1', '1AW06', '237,54,249,65', '1Floor06'),
(48, 'F1', '1AW07', '262,54,276,67', '1Floor07'),
(49, 'F1', '1AW08', '298,54,310,65', '1Floor08'),
(50, 'F1', '1AW11', '133,71,147,81', '1Floor11'),
(51, 'F1', '1AW12', '169,70,182,81', '1Floor12'),
(52, 'F1', '1AW13', '202,71,214,82', '1Floor13'),
(53, 'F1', '1AW14', '237,70,249,81', '1Floor14'),
(54, 'F1', '1AW15', '263,70,276,81', '1Floor15'),
(55, 'F1', '1AW16', '299,70,310,82', '1Floor16'),
(56, 'F1', '1AW37', '196,364,207,376', '1Floor37'),
(57, 'F1', '1AW38', '194,380,207,391', '1Floor38'),
(58, 'F1', '1AW39', '195,398,207,409', '1Floor39'),
(59, 'F1', '1AW40', '194,415,208,426', '1Floor40'),
(60, 'F1', '1AW41', '230,363,243,374', '1Floor41'),
(61, 'F1', '1AW42', '229,379,243,390', '1Floor42'),
(62, 'F1', '1AW43', '229,397,243,409', '1Floor43'),
(63, 'F1', '1AW44', '230,415,243,426', '1Floor44'),
(64, 'F1', '1AW45', '196,460,208,472', '1Floor45'),
(65, 'F1', '1AW46', '194,478,208,488', '1Floor46'),
(66, 'F1', '1AW47', '196,495,208,506', '1Floor47'),
(67, 'F1', '1AW48', '196,511,208,523', '1Floor48'),
(68, 'F1', '1AW49', '231,460,243,473', '1Floor49'),
(69, 'F1', '1AW50', '230,478,243,488', '1Floor50'),
(70, 'F1', '1AW51', '231,495,243,506', '1Floor51'),
(71, 'F1', '1AW52', '230,512,243,522', '1Floor52'),
(72, 'F1', '1AW53', '329,398,343,410', '1Floor53'),
(73, 'F1', '1AW54', '364,412,379,425', '1Floor54'),
(74, 'F1', '1AW55', '16,635,25,623', '1Floor55'),
(75, 'F1', '1AW56', '33,623,42,635', '1Floor56'),
(76, 'F1', '1AW57', '16,138,26,151', '1Floor57'),
(77, 'F1', '1AW58', '31,272,42,286', '1Floor58'),
(78, 'F1', '1AW59', '395,202,409,215', '1Floor59'),
(79, 'F1', '1AW60', '395,217,409,229', '1Floor60'),
(80, 'F1', '1AW100', '980,238,991,252', '1Floor100'),
(81, 'F1', '1AW61', '431,495,444,506', '1Floor61'),
(82, 'F1', '1AW62', '444,523,431,512', '1Floor62'),
(83, 'F1', '1AW63', '573,197,583,210', '1Floor63'),
(84, 'F1', '1AW64', '601,197,611,209', '1Floor64'),
(85, 'F1', '1AW65', '625,195,636,208', '1Floor65'),
(86, 'F1', '1AW66', '646,196,656,208', '1Floor66'),
(87, 'F1', '1AW67', '670,196,681,209', '1Floor67'),
(88, 'F1', '1AW68', '725,110,736,122', '1Floor68'),
(89, 'F1', '1AW69', '752,110,762,122', '1Floor69'),
(90, 'F1', '1AW70', '776,154,786,166', '1Floor70'),
(91, 'F1', '1AW71', '799,154,808,166', '1Floor71'),
(92, 'F1', '1AW72', '798,197,810,210', '1Floor72'),
(93, 'F1', '1AW73', '623,283,634,297', '1Floor73'),
(94, 'F1', '1AW74', '645,283,657,296', '1Floor74'),
(95, 'F1', '1AW75', '669,283,681,295', '1Floor75'),
(96, 'F1', '1AW76', '752,240,762,252', '1Floor76'),
(97, 'F1', '1AW77', '776,240,786,253', '1Floor77'),
(98, 'F1', '1AW78', '883,284,894,295', '1Floor78'),
(99, 'F1', '1AW79', '583,340,596,351', '1Floor79'),
(100, 'F1', '1AW80', '966,340,980,351', '1Floor80'),
(159, 'F2', 'A2AW67', '101,273,129,288', '2FloorA67'),
(160, 'F2', 'A2AW68', '102,255,129,270', '2FloorA68'),
(161, 'F2', 'A2AW63', '129,428,101,441', '2FloorA63'),
(162, 'F2', 'A2AW64', '101,409,129,422', '2FloorA64'),
(163, 'F2', 'A2BW29', '143,702,168,716', '2FloorB29'),
(164, 'F2', 'A2AW62', '145,448,170,463', '2FloorA62'),
(165, 'F2', 'A2BW05', '467,840,496,855', '2FloorB05'),
(166, 'F2', 'A2BW16', '301,760,330,775', '2FloorB16'),
(167, 'F2', 'A2BW17', '301,778,331,794', '2FloorB17'),
(168, 'F2', 'A2BW26', '219,840,250,855', '2FloorB26'),
(169, 'F2', 'A2AW67', '101,273,129,288', '2FloorA67'),
(170, 'F2', 'A2AW68', '102,255,129,270', '2FloorA68'),
(171, 'F2', 'A2AW63', '129,428,101,441', '2FloorA63'),
(172, 'F2', 'A2AW64', '101,409,129,422', '2FloorA64'),
(173, 'F2', 'A2BW29', '143,702,168,716', '2FloorB29'),
(174, 'F2', 'A2AW62', '145,448,170,463', '2FloorA62'),
(175, 'F2', 'A2BW05', '467,840,496,855', '2FloorB05'),
(176, 'F2', 'A2BW16', '301,760,330,775', '2FloorB16'),
(177, 'F2', 'A2BW17', '301,778,331,794', '2FloorB17'),
(178, 'F2', 'A2BW26', '219,840,250,855', '2FloorB26');

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
  `insert_timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `modified_timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
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
  `insert_timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `modified_timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
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
  `inserted_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `modified_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wms_email_jobs`
--

INSERT INTO `wms_email_jobs` (`id`, `from_id`, `to_id`, `subject`, `attachment`, `status`, `request_id`, `request_status`, `inserted_date`, `modified_date`) VALUES
(1, 'thiruvasagam.k@gmail.com', 'thiruvasagam.k@gmail.com', 'REQALC-2019-00000001|Allocation Requested', '', 'S', 'REQALC-2019-00000001', 'Approved', '2019-09-20 09:17:07', '2019-09-20 09:17:07'),
(2, 'thiruvasagam.k@gmail.com', 'thiruvasagam.k@gmail.com', 'REQALC-2019-00000001|Allocation Request Approved', '', 'S', 'REQALC-2019-00000001', 'Approved', '2019-09-20 09:19:39', '2019-09-20 09:19:39'),
(3, 'thiruvasagam.k@gmail.com', 'thiruvasagam.k@gmail.com', 'REQALC-2019-00000002|Allocation Requested', '', 'S', 'REQALC-2019-00000002', 'Approved', '2019-09-20 09:23:26', '2019-09-20 09:23:26'),
(4, 'thiruvasagam.k@gmail.com', 'thiruvasagam.k@gmail.com', 'REQALC-2019-00000002|BulkUpload Approval Pending', '', 'S', 'REQALC-2019-00000002', 'Approved', '2019-09-20 09:26:23', '2019-09-20 09:26:23'),
(5, 'thiruvasagam.k@gmail.com', 'thiruvasagam.k@gmail.com', 'REQALC-2019-00000003|Allocation Requested', '', 'S', 'REQALC-2019-00000003', 'Approved', '2019-09-20 09:30:27', '2019-09-20 09:30:27'),
(6, 'thiruvasagam.k@gmail.com', 'thiruvasagam.k@gmail.com', 'REQALC-2019-00000004|Allocation Requested', '', 'S', 'REQALC-2019-00000004', 'Approved', '2019-09-20 10:27:46', '2019-09-20 10:27:46'),
(7, 'thiruvasagam.k@gmail.com', 'thiruvasagam.k@gmail.com', 'REQALC-2019-00000004|Allocation Request Approved', '', 'S', 'REQALC-2019-00000004', 'Approved', '2019-09-20 10:30:04', '2019-09-20 10:30:04'),
(8, 'thiruvasagam.k@gmail.com', 'thiruvasagam.k@gmail.com', 'REQALC-2019-00000005|Allocation Requested', '', 'S', 'REQALC-2019-00000005', 'Approved', '2019-09-20 10:55:32', '2019-09-20 10:55:32'),
(9, 'thiruvasagam.k@gmail.com', 'thiruvasagam.k@gmail.com', 'REQALC-2019-00000005|Allocation Request Approved', '', 'S', 'REQALC-2019-00000005', 'Approved', '2019-09-20 10:58:39', '2019-09-20 10:58:39'),
(10, 'thiruvasagam.k@gmail.com', 'thiruvasagam.k@gmail.com', 'REQALC-2019-00000006|Allocation Requested', '', 'S', 'REQALC-2019-00000006', 'Approved', '2019-09-20 11:45:53', '2019-09-20 11:45:53'),
(11, 'thiruvasagam.k@gmail.com', 'thiruvasagam.k@gmail.com', 'REQALC-2019-00000007|Allocation Requested', '', 'S', 'REQALC-2019-00000007', 'Approved', '2019-09-20 12:00:54', '2019-09-20 12:00:54'),
(12, 'thiruvasagam.k@gmail.com', 'thiruvasagam.k@gmail.com', 'REQALC-2019-00000008|Allocation Requested', '', 'E', 'REQALC-2019-00000008', 'Approved', '2019-09-21 09:11:23', '2019-09-21 09:11:23'),
(13, 'thiruvasagam.k@gmail.com', 'thiruvasagam.k@gmail.com', 'REQALC-2019-00000009|Allocation Requested', '', 'S', 'REQALC-2019-00000009', 'Approved', '2019-09-21 11:52:45', '2019-09-21 11:52:45'),
(14, 'thiruvasagam.k@gmail.com', 'thiruvasagam.k@gmail.com', 'REQALC-2019-00000006|Allocation Request Approved', '', 'S', 'REQALC-2019-00000006', 'Approved', '2019-09-21 12:22:13', '2019-09-21 12:22:13'),
(15, 'thiruvasagam.k@gmail.com', 'thiruvasagam.k@gmail.com', 'REQALC-2019-00000007|Allocation Request Approved', '', 'S', 'REQALC-2019-00000007', 'Approved', '2019-09-23 13:51:34', '2019-09-23 13:51:34'),
(16, 'thiruvasagam.k@gmail.com', 'thiruvasagam.k@gmail.com', 'REQALC-2019-00000008|Allocation Request Approved', '', 'S', 'REQALC-2019-00000008', 'Approved', '2019-09-23 13:53:21', '2019-09-23 13:53:21'),
(17, 'thiruvasagam.k@gmail.com', 'thiruvasagam.k@gmail.com', 'REQALC-2019-00000009|Allocation Request Approved', '', 'S', 'REQALC-2019-00000009', 'Approved', '2019-09-24 13:56:35', '2019-09-24 13:56:35'),
(18, 'thiruvasagam.k@gmail.com', 'thiruvasagam.k@gmail.com', 'REQALC-2019-00000009|BulkUpload Approval Pending', '', 'E', 'REQALC-2019-00000009', 'Approved', '2019-09-25 12:46:50', '2019-09-25 12:46:50');

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
  `insert_timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `modified_timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
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
  `insert_timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `modified_timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `wms_employee_seats_asign`
--

INSERT INTO `wms_employee_seats_asign` (`id`, `floor_id`, `wing`, `seat_number`, `emp_id`, `project_id`, `request_id`, `typeof_workspace`, `start_time`, `end_time`, `status`, `insert_timestamp`, `modified_timestamp`) VALUES
(3, 'F2', 'W', 'A2AW67', 'SONYEMP101', 'eGIS-VM', 'REQALC-2019-00000007', 'Dedicated', '2019-09-20', '2019-09-21', 'A', '2019-09-25 20:21:38', '2019-09-25 20:24:27'),
(4, 'F2', 'W', 'A2AW67', 'SONYEMP202', 'eGIS-VM', 'REQALC-2019-00000007', 'Dedicated', '2019-09-20', '2019-09-21', 'A', '2019-09-25 20:21:38', '2019-09-25 20:24:35');

-- --------------------------------------------------------

--
-- Table structure for table `wms_emp_bulkupload`
--

CREATE TABLE `wms_emp_bulkupload` (
  `id` int(5) NOT NULL DEFAULT 0,
  `request_id` varchar(50) CHARACTER SET latin1 NOT NULL,
  `from_id` varchar(50) CHARACTER SET latin1 NOT NULL,
  `to_id` varchar(50) CHARACTER SET latin1 NOT NULL,
  `status` varchar(50) CHARACTER SET latin1 NOT NULL,
  `file_path` varchar(50) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `insert_timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `modified_timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
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
  `insert_timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `modified_timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `wms_fa_requests`
--

INSERT INTO `wms_fa_requests` (`id`, `request_id`, `pm_id`, `department_id`, `project_id`, `no_of_resource`, `typeofdesk`, `start_time`, `end_time`, `status`, `remarks`, `insert_timestamp`, `modified_timestamp`) VALUES
(1, 'REQALC-2019-00000001', 'SONYEMP01', 'IT', 'CODE', '5', 'ODC', '2019-09-20', '2019-09-21', 'Rejected', 'No remarks', '2019-09-20 09:17:07', '2019-09-24 05:58:23'),
(2, 'REQALC-2019-00000002', 'SONYEMP01', 'IT', 'Forescout', '10', 'ODC', '2019-09-20', '2019-09-23', 'Accepted', 'No remarks', '2019-09-20 09:23:26', '2019-09-20 09:26:23'),
(3, 'REQALC-2019-00000003', 'SONYEMP01', 'Sales', 'SIE E', '4', 'Meeting Room', '2019-09-20', '2019-09-21', 'Rejected', 'No meeting room is available', '2019-09-20 09:30:27', '2019-09-20 09:31:37'),
(4, 'REQALC-2019-00000004', 'SONYEMP01', 'IT', 'SOMC PT', '4', 'ODC', '2019-09-20', '2019-09-21', 'Accepted', 'No remarks', '2019-09-20 10:27:46', '2019-09-20 10:30:04'),
(5, 'REQALC-2019-00000005', 'SONYEMP01', 'IT', 'eGIS-VM', '4', 'ODC', '2019-09-20', '2019-09-21', 'Accepted', 'No remarks', '2019-09-20 10:55:32', '2019-09-20 10:58:39'),
(6, 'REQALC-2019-00000006', 'SONYEMP01', 'Sales', 'eGIS-PT', '5', 'Meeting Room', '2019-09-20', '2019-09-21', 'Accepted', 'No remarks', '2019-09-20 11:45:53', '2019-09-21 12:22:13'),
(7, 'REQALC-2019-00000007', 'SONYEMP01', 'IT', 'Forescout', '5', 'ODC', '2019-09-20', '2019-09-21', 'Accepted', 'No remarks', '2019-09-20 12:00:54', '2019-09-23 13:51:34'),
(8, 'REQALC-2019-00000008', 'SONYEMP01', 'IT', 'SIE Global', '10', 'ODC', '2019-09-21', '2019-09-22', 'Accepted', 'No remarks', '2019-09-21 09:11:23', '2019-09-23 13:53:21'),
(9, 'REQALC-2019-00000009', 'SONYEMP01', 'IT', 'SPC', '5', 'Meeting Room', '2019-09-20', '2019-09-21', 'Pending', 'No remarks', '2019-09-21 11:52:45', '2019-09-21 11:52:45');

-- --------------------------------------------------------

--
-- Table structure for table `wms_floor_details_new`
--

CREATE TABLE `wms_floor_details_new` (
  `floor_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'None',
  `floor_name` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'None',
  `floor_capacity` int(20) NOT NULL,
  `insert_timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `modified_timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wms_history`
--

CREATE TABLE `wms_history` (
  `id` int(5) NOT NULL,
  `request_id` longtext COLLATE utf8_unicode_ci NOT NULL,
  `remarks` longtext COLLATE utf8_unicode_ci NOT NULL,
  `insert_timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `modified_timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `wms_history`
--

INSERT INTO `wms_history` (`id`, `request_id`, `remarks`, `insert_timestamp`, `modified_timestamp`) VALUES
(1, 'REQALC-2019-00000001', 'Requested by PM', '2019-09-20 09:17:07', '2019-09-20 09:17:07'),
(2, 'REQALC-2019-00000001', 'Pending by FA', '2019-09-20 09:17:07', '2019-09-20 09:17:07'),
(3, 'REQALC-2019-00000002', 'Requested by PM', '2019-09-20 09:23:26', '2019-09-20 09:23:26'),
(4, 'REQALC-2019-00000002', 'Pending by FA', '2019-09-20 09:23:26', '2019-09-20 09:23:26'),
(5, 'REQALC-2019-00000003', 'Requested by PM', '2019-09-20 09:30:27', '2019-09-20 09:30:27'),
(6, 'REQALC-2019-00000003', 'Pending by FA', '2019-09-20 09:30:27', '2019-09-20 09:30:27'),
(7, 'REQALC-2019-00000004', 'Requested by PM', '2019-09-20 10:27:46', '2019-09-20 10:27:46'),
(8, 'REQALC-2019-00000004', 'Pending by FA', '2019-09-20 10:27:46', '2019-09-20 10:27:46'),
(9, 'REQALC-2019-00000005', 'Requested by PM', '2019-09-20 10:55:32', '2019-09-20 10:55:32'),
(10, 'REQALC-2019-00000005', 'Pending by FA', '2019-09-20 10:55:32', '2019-09-20 10:55:32'),
(11, 'REQALC-2019-00000006', 'Requested by PM', '2019-09-20 11:45:53', '2019-09-20 11:45:53'),
(12, 'REQALC-2019-00000006', 'Pending by FA', '2019-09-20 11:45:53', '2019-09-20 11:45:53'),
(13, 'REQALC-2019-00000007', 'Requested by PM', '2019-09-20 12:00:54', '2019-09-20 12:00:54'),
(14, 'REQALC-2019-00000007', 'Pending by FA', '2019-09-20 12:00:54', '2019-09-20 12:00:54'),
(15, 'REQALC-2019-00000008', 'Requested by PM', '2019-09-21 09:11:23', '2019-09-21 09:11:23'),
(16, 'REQALC-2019-00000008', 'Pending by FA', '2019-09-21 09:11:23', '2019-09-21 09:11:23'),
(17, 'REQALC-2019-00000009', 'Requested by PM', '2019-09-21 11:52:45', '2019-09-21 11:52:45'),
(18, 'REQALC-2019-00000009', 'Pending by FA', '2019-09-21 11:52:45', '2019-09-21 11:52:45');

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
  `insert_timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `modified_timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
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
  `insert_timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `modified_timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `wms_pm_requests`
--

INSERT INTO `wms_pm_requests` (`id`, `request_id`, `pm_id`, `department_id`, `project_id`, `no_of_resource`, `typeofdesk`, `start_time`, `end_time`, `status`, `flag`, `remarks`, `insert_timestamp`, `modified_timestamp`) VALUES
(2, 'REQALC-2019-00000002', 'SONYEMP01', 'IT', 'Forescout', '10', 'ODC', '2019-09-20', '2019-09-23', 'Deallocated', 3, 'No remarks', '2019-09-20 09:23:26', '2019-09-25 06:39:29'),
(3, 'REQALC-2019-00000003', 'SONYEMP01', 'Sales', 'SIE E', '4', 'Meeting Room', '2019-09-20', '2019-09-21', 'Rejected', 2, 'No meeting room is available', '2019-09-20 09:30:27', '2019-09-24 10:53:34'),
(4, 'REQALC-2019-00000004', 'SONYEMP01', 'IT', 'SOMC PT', '4', 'ODC', '2019-09-20', '2019-09-21', 'Accepted', 1, 'No remarks', '2019-09-20 10:27:46', '2019-09-24 10:50:51'),
(5, 'REQALC-2019-00000005', 'SONYEMP01', 'IT', 'eGIS-VM', '4', 'ODC', '2019-09-20', '2019-09-21', 'Accepted', 1, 'No remarks', '2019-09-20 10:55:32', '2019-09-24 10:50:51'),
(6, 'REQALC-2019-00000006', 'SONYEMP01', 'Sales', 'eGIS-PT', '5', 'Meeting Room', '2019-09-20', '2019-09-21', 'Accepted', 1, 'No remarks', '2019-09-20 11:45:53', '2019-09-24 10:50:51'),
(7, 'REQALC-2019-00000007', 'SONYEMP01', 'IT', 'Forescout', '5', 'ODC', '2019-09-20', '2019-09-21', 'Accepted', 1, 'No remarks', '2019-09-20 12:00:54', '2019-09-24 10:50:51'),
(8, 'REQALC-2019-00000008', 'SONYEMP01', 'IT', 'SIE Global', '10', 'ODC', '2019-09-21', '2019-09-22', 'Accepted', 1, 'No remarks', '2019-09-21 09:11:23', '2019-09-24 10:50:51'),
(9, 'REQALC-2019-00000009', 'SONYEMP01', 'IT', 'SPC', '5', 'Meeting Room', '2019-09-20', '2019-09-21', 'Allocated', 1, 'No remarks', '2019-09-21 11:52:45', '2019-09-24 13:56:35');

-- --------------------------------------------------------

--
-- Table structure for table `wms_project_details`
--

CREATE TABLE `wms_project_details` (
  `id` int(5) NOT NULL,
  `dept_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `project_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `project_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'None',
  `insert_timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `modified_timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
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
(2019, 9),
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
-- Table structure for table `wms_workstation_new`
--

CREATE TABLE `wms_workstation_new` (
  `floor_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'None',
  `workstation_no` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'None',
  `coordinates` int(100) NOT NULL,
  `insert_timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `modified_timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `wms_workstation_new`
--

INSERT INTO `wms_workstation_new` (`floor_id`, `workstation_no`, `coordinates`, `insert_timestamp`, `modified_timestamp`) VALUES
('F5', '5AW01', 520, '2019-08-19 07:46:44', '2019-08-19 07:46:44'),
('F5', '5AW02', 556, '2019-08-19 07:46:44', '2019-08-19 07:46:44'),
('F5', '5AW03', 588, '2019-08-19 07:46:44', '2019-08-19 07:46:44'),
('F5', '5AW04', 599, '2019-08-19 07:46:44', '2019-08-19 07:46:44'),
('F5', '5AW05', 566, '2019-08-19 07:46:44', '2019-08-19 07:46:44'),
('F5', '5AW06', 529, '2019-08-19 07:46:44', '2019-08-19 07:46:44'),
('F5', '5AW07', 517, '2019-08-19 07:46:44', '2019-08-19 07:46:44'),
('F5', '5AW08', 552, '2019-08-19 07:46:44', '2019-08-19 07:46:44'),
('F5', '5AW09', 588, '2019-08-19 07:46:44', '2019-08-19 07:46:44'),
('F5', '5AW10', 596, '2019-08-19 07:46:44', '2019-08-19 07:46:44'),
('F5', '5AW11', 561, '2019-08-19 07:46:44', '2019-08-19 07:46:44'),
('F5', '5AW12', 527, '2019-08-19 07:46:44', '2019-08-19 07:46:44'),
('F5', '5AW13', 520, '2019-08-19 07:46:44', '2019-08-19 07:46:44'),
('F5', '5AW14', 555, '2019-08-19 07:46:44', '2019-08-19 07:46:44'),
('F5', '5AW15', 589, '2019-08-19 07:46:44', '2019-08-19 07:46:44'),
('F5', '5AW16', 599, '2019-08-19 07:46:44', '2019-08-19 07:46:44'),
('F5', '5AW17', 564, '2019-08-19 07:46:44', '2019-08-19 07:46:44'),
('F5', '5AW18', 528, '2019-08-19 07:46:44', '2019-08-19 07:46:44');

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
-- Indexes for table `wms_sony_emp_details`
--
ALTER TABLE `wms_sony_emp_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wms_workstation_new`
--
ALTER TABLE `wms_workstation_new`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `task`
--
ALTER TABLE `task`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `wms_allocation`
--
ALTER TABLE `wms_allocation`
  MODIFY `sno` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wms_allocation_seats`
--
ALTER TABLE `wms_allocation_seats`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `wms_bulkupload_jobs`
--
ALTER TABLE `wms_bulkupload_jobs`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wms_coordinates`
--
ALTER TABLE `wms_coordinates`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=179;

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
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `wms_employee_seats_asign`
--
ALTER TABLE `wms_employee_seats_asign`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wms_fa_requests`
--
ALTER TABLE `wms_fa_requests`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `wms_history`
--
ALTER TABLE `wms_history`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

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
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `wms_project_details`
--
ALTER TABLE `wms_project_details`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wms_sony_emp_details`
--
ALTER TABLE `wms_sony_emp_details`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=302;

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
