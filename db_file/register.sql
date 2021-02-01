-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 01, 2021 at 06:22 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `users`
--

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `rollno` int(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `standard` int(50) NOT NULL,
  `mark` varchar(999) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `name`, `rollno`, `email`, `password`, `standard`, `mark`) VALUES
(4, 'deepali', 45, 'deepali@gmail.com', 'deepali1', 5, '[{\"std\": 1, \"remark\": \"good\", \"grade\": \"a\", \"percentage\": \"80\"}, {\"std\": 2, \"remark\": \"nice\", \"grade\": \"b\", \"percentage\": \"50\"}, {\"std\": 3, \"remark\": \"ok\", \"grade\": \"c\", \"percentage\": \"40\"}, {\"std\": 4, \"remark\": \"bad\", \"grade\": \"d\", \"percentage\": \"35\"}]'),
(5, 'ashwini', 34, 'ashwini@gmail.com', 'ashwini1', 3, '[{\"std\": 1, \"remark\": \"good\", \"grade\": \"a\", \"percentage\": \"70\"}, {\"std\": 2, \"remark\": \"nice\", \"grade\": \"b\", \"percentage\": \"45\"}]'),
(6, 'sanket', 56, 'sanket@gmail.com', 'sanket1', 4, '[{\"std\": 1, \"remark\": \"good\", \"grade\": \"a\", \"percentage\": \"90\"}, {\"std\": 2, \"remark\": \"nice\", \"grade\": \"b\", \"percentage\": \"70\"}, {\"std\": 3, \"remark\": \"bad\", \"grade\": \"c\", \"percentage\": \"45\"}]'),
(7, 'yash', 78, 'yash@gmail.com', 'yash@123', 6, '[{\"std\": 1, \"remark\": \"good\", \"grade\": \"a\", \"percentage\": \"78\"}, {\"std\": 2, \"remark\": \"nice\", \"grade\": \"b\", \"percentage\": \"73\"}, {\"std\": 3, \"remark\": \"good\", \"grade\": \"a\", \"percentage\": \"90\"}, {\"std\": 4, \"remark\": \"nice\", \"grade\": \"b\", \"percentage\": \"74\"}, {\"std\": 5, \"remark\": \"good\", \"grade\": \"a\", \"percentage\": \"99\"}]');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
