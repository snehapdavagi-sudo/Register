-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 06, 2025 at 06:28 PM
-- Server version: 9.1.0
-- PHP Version: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `event_db`
--
CREATE DATABASE IF NOT EXISTS `event_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `event_db`;

-- --------------------------------------------------------

--
-- Table structure for table `registrations`
--

DROP TABLE IF EXISTS `registrations`;
CREATE TABLE IF NOT EXISTS `registrations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` text,
  `fatherName` varchar(100) DEFAULT NULL,
  `motherName` varchar(100) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `nationality` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `universityName` varchar(100) DEFAULT NULL,
  `collegeName` varchar(100) DEFAULT NULL,
  `technicalSkills` text,
  `eventType` varchar(50) DEFAULT NULL,
  `eventDate` date DEFAULT NULL,
  `eventTime` time DEFAULT NULL,
  `venue` varchar(100) DEFAULT NULL,
  `participationType` varchar(20) DEFAULT NULL,
  `groupName` varchar(100) DEFAULT NULL,
  `numberOfMembers` int DEFAULT NULL,
  `profilePhoto` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `registrations`
--

INSERT INTO `registrations` (`id`, `name`, `email`, `phone`, `address`, `fatherName`, `motherName`, `dob`, `gender`, `nationality`, `state`, `universityName`, `collegeName`, `technicalSkills`, `eventType`, `eventDate`, `eventTime`, `venue`, `participationType`, `groupName`, `numberOfMembers`, `profilePhoto`, `created_at`) VALUES
(1, 'sneha', 'snehapdavagi13@gmail.com', '+919008340636', 'lax', 'ddd', 'ggg', '2222-11-12', 'Female', 'indian', 'karnataka', 'vtu', 'dsfdyjgj', 'ghfdhgdh', 'Workshop', '2025-11-12', '16:30:00', 'Civil Seminar Hall', 'Group', 'hetd', 5, NULL, '2025-11-06 13:35:13'),
(2, 'sn', 'snehapdavagi13@gmail.com', '+919008340636', 'lax\r\n', 'ddd', 'ggg', '2025-11-12', 'Female', 'indian', 'karnataka', 'vtu', 'dsfdyjgj', 'no', 'Cultural Event', '2025-11-12', '14:30:00', 'Mechanical Seminar Hall', 'Individual', 'no', 1, NULL, '2025-11-06 13:46:11'),
(3, 'sn', 'snehapdavagi13@gmail.com', '+919008340636', 'lax', 'ddd', 'ggg', '2025-11-12', 'Female', 'indian', 'karnataka', 'vtu', 'dsfdyjgj', 'ytrdtsdfyj', 'Seminar', '2025-11-12', '14:30:00', 'Civil Seminar Hall', 'Individual', 'no', 1, NULL, '2025-11-06 13:48:44'),
(4, 'sn', 'snehapdavagi13@gmail.com', '+919008340636', 'lax', 'ddd', 'ggg', '2025-11-12', 'Female', 'indian', 'karnataka', 'vtu', 'dsfdyjgj', 'no\r\n', 'Seminar', '2025-11-12', '14:30:00', 'Mechanical Seminar Hall', 'Individual', 'no', 1, NULL, '2025-11-06 16:05:17'),
(5, 'sn', 'snehapdavagi13@gmail.com', '+919008340636', 'lax', 'ddd', 'ggg', '2025-11-12', 'Male', 'indian', 'karnataka', 'vtu', 'dsfdyjgj', 'htfjgkhjl', 'Cultural Event', '2025-11-12', '14:30:00', 'Civil Seminar Hall', 'Individual', 'no', 1, NULL, '2025-11-06 17:11:18'),
(6, 'sn', 'snehapdavagi13@gmail.com', '+919008340636', 'lax', 'ddd', 'ggg', '2025-11-06', 'Female', 'indian', 'karnataka', 'vtu', 'dsfdyjgj', 'etrytuyj', 'Seminar', '2025-11-13', '14:30:00', 'Civil Seminar Hall', 'Individual', 'no', 1, NULL, '2025-11-06 17:24:35'),
(7, 'sn', 'snehapdavagi13@gmail.com', '+919008340636', 'lax', 'ddd', 'ggg', '2022-06-25', 'Female', 'indian', 'karnataka', 'vtu', 'dsfdyjgj', 'hgtyuh', 'Seminar', '2025-11-13', '14:30:00', 'Civil Seminar Hall', 'Individual', 'no', 1, NULL, '2025-11-06 17:32:43'),
(8, 'sn', 'snehapdavagi13@gmail.com', '+919008340636', 'lax', 'ddd', 'ggg', '2022-06-25', 'Female', 'indian', 'karnataka', 'vtu', 'dsfdyjgj', 'rwstdyui', 'Seminar', '2025-11-12', '14:30:00', 'Civil Seminar Hall', 'Individual', 'no', 5, NULL, '2025-11-06 17:56:33'),
(9, 'sn', 'snehapdavagi13@gmail.com', '+919008340636', 'lax', 'ddd', 'ggg', '2025-11-08', 'Female', 'indian', 'karnataka', 'vtu', 'dsfdyjgj', 'oiuytre', 'Seminar', '2025-11-12', '14:30:00', 'Civil Seminar Hall', 'Individual', 'no', 5, NULL, '2025-11-06 17:58:22');
--
-- Database: `reg_form`
--
CREATE DATABASE IF NOT EXISTS `reg_form` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `reg_form`;

-- --------------------------------------------------------

--
-- Table structure for table `registrations`
--

DROP TABLE IF EXISTS `registrations`;
CREATE TABLE IF NOT EXISTS `registrations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `full_name` varchar(150) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `email` varchar(150) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `search_key` varchar(100) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `birth_time` time DEFAULT NULL,
  `appointment_datetime` datetime DEFAULT NULL,
  `birth_month` varchar(20) DEFAULT NULL,
  `birth_week` varchar(20) DEFAULT NULL,
  `fav_color` varchar(20) DEFAULT NULL,
  `agree_terms` tinyint(1) DEFAULT '0',
  `gender` varchar(20) DEFAULT NULL,
  `rating` int DEFAULT '0',
  `profile_image` varchar(255) DEFAULT NULL,
  `resume_file` varchar(255) DEFAULT NULL,
  `notes` text,
  `hidden_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `registrations`
--

INSERT INTO `registrations` (`id`, `full_name`, `password_hash`, `email`, `age`, `phone`, `website`, `search_key`, `birth_date`, `birth_time`, `appointment_datetime`, `birth_month`, `birth_week`, `fav_color`, `agree_terms`, `gender`, `rating`, `profile_image`, `resume_file`, `notes`, `hidden_token`, `created_at`) VALUES
(1, 'sneha', '$2y$10$PROGL74pncNdCPoaw2kUZ.SI1Gt.nn6HAhOaYEp2fAZTaKVhhFx3O', 'snehapdavagi13@gmail.com', 21, '900834063', 'http://localhost/reg_form/uploads/', 'no', '2021-12-12', '02:43:00', '2025-11-06 21:08:00', '2025-12', '2025-W45', '0', 0, 'Female', 4, '1762439907_WhatsApp Image 2025-11-06 at 4.28.01 PM.jpeg', '1762439907_DOC-20251106-WA0003 (1).docx', 'no', 'REGFORM_TOKEN_2025', '2025-11-06 14:38:27'),
(2, 'sneha', '$2y$10$mwpyHXpWNG4WnEezRFrTqefZSok015qyLW0V07h97j6bXfuI11rQO', 'sne@gmail.com', 0, '', '', '', '0000-00-00', '00:00:00', '0000-00-00 00:00:00', '', '', '0', 0, '', 5, NULL, NULL, '', 'REGFORM_TOKEN_2025', '2025-11-06 14:54:53'),
(3, 'sneha', '$2y$10$jrKZ/sVejFcfK8uJjaC6dePOepbLhDCBXsIAi0xKwAGhPZvhNz1M.', 'sne@gmail.com', 22, '9876543210', '', '', '2025-11-06', '21:26:00', '2025-11-08 20:25:00', '2025-08', '2025-W48', '0', 0, 'Female', 5, '1762441002_WhatsApp Image 2025-11-06 at 4.28.01 PM.jpeg', '1762441002_DOC-20251106-WA0003.pdf', 'uyyr6yui', 'REGFORM_TOKEN_2025', '2025-11-06 14:56:42'),
(4, 'sss', '$2y$10$lRIMTWPC/ltczm5DjsONgePu565OvpzNgJEBsMF6ZgYwuEMT5p.fi', 'snehapdavagi13@gmail.com', 23, '9087654321', 'http://localhost/reg_form/uploads/', 'no', '2025-11-12', '23:37:00', '2025-11-12 20:33:00', '2025-06', '', '0', 0, 'Female', 5, '1762441453_WhatsApp Image 2025-11-06 at 4.28.01 PM.jpeg', '1762441453_DOC-20251106-WA0003.pdf', 'qiwdtquwsioa', 'REGFORM_TOKEN_2025', '2025-11-06 15:04:13');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
