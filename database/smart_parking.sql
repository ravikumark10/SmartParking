-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 09, 2022 at 09:06 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smart_parking`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_info`
--

CREATE TABLE `admin_info` (
  `username` varchar(30) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_info`
--

INSERT INTO `admin_info` (`username`, `password`) VALUES
('ravi', 'ravi123'),
('Harish', 'Harish123');

-- --------------------------------------------------------

--
-- Table structure for table `update_info`
--

CREATE TABLE `update_info` (
  `Owner_name` varchar(30) NOT NULL,
  `Vehicle_name` varchar(30) NOT NULL,
  `Vehicle_number` varchar(30) NOT NULL,
  `Entry_date` varchar(30) NOT NULL,
  `Exit_date` datetime NOT NULL,
  `Token_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `update_info`
--

INSERT INTO `update_info` (`Owner_name`, `Vehicle_name`, `Vehicle_number`, `Entry_date`, `Exit_date`, `Token_number`) VALUES
('Ravikumar', 'Tata', '12564', '2022-05-28 22:03:00', '2022-05-29 22:04:00', 35),
('Harish', 'Audi', '35387', '2022-05-28 09:39:00', '2022-05-30 09:40:00', 36),
('Sanjay', 'Audi', '1234', '2022-05-29 16:25:00', '0000-00-00 00:00:00', 38);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_info`
--

CREATE TABLE `vehicle_info` (
  `Owner_name` varchar(30) NOT NULL,
  `Vehicle_name` varchar(30) NOT NULL,
  `Vehicle_number` varchar(30) NOT NULL,
  `Entry_date` datetime NOT NULL,
  `Token_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vehicle_info`
--

INSERT INTO `vehicle_info` (`Owner_name`, `Vehicle_name`, `Vehicle_number`, `Entry_date`, `Token_number`) VALUES
('Ravikumar', 'Audi', '456789', '2022-06-09 15:26:00', 11);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
