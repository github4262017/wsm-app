-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 25, 2019 at 11:26 PM
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
(1, 'ADMIN'),
(2, 'USER'),
(3, 'PM'),
(4, 'FA'),
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
  `password` varchar(255) NOT NULL,
  `role_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `active`, `email`, `name`, `password`, `role_id`) VALUES
(5, 1, 'admin@admin.com', 'admin', '$2a$10$xHoGCq4JgOikibksxHH3...KdkeC.VuEJAKhOtqanz2sI7xfLJtq.', 1),
(6, 1, 'fadmin@fadmin.com', 'fadmin', '$2a$10$IiYp9/uA9ypb24othErV9eo5VaSuCyw7r0D3OYPGeCewdoFo6YwYm', 4),
(7, 1, 'padmin@padmin.com', 'padmin', '$2a$10$wD6Fo0V4Kq4fDaniOKnqSOWkaxtP4Kvk/7h6/BleVGxZKWQChY5lK', 3),
(9, 1, 'user@user.com', 'user', '$2a$10$nPQm2hPk61aIhEou.9VUuuFznRRpkhnNgyaDzJT4KE82QrPuocHle', 2),
(10, 1, 'sony@sony.com', 'sony', '$2a$10$CJMwbx8Em80iK/UIL31fR.L1zYbK8sdDkM5UUVKbrm4D14GtTqUcS', 4),
(16, 1, 'hari@gmail.com', 'Hari', '$2a$10$HCyRVYOFytuZGTPTPEpLA.c0c6Bd4bzSEu7ya0dm8/Ilj7.Cof.ji', 3);

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
