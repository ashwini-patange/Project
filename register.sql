-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 07, 2021 at 09:07 PM
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
  `password` blob NOT NULL,
  `standard` int(50) NOT NULL,
  `mark` varchar(999) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `name`, `rollno`, `email`, `password`, `standard`, `mark`) VALUES
(30, 'ashwini', 34, 'ashwini@gmail.com', 0x3937386430353239376438393464363730313163666132653630663036343364, 3, 'null'),
(31, 'ashu', 56, 'ashu@gmail.com', 0x6532323934346366666134326635343737623864663931633631313566653636, 3, '[{\"std\": 1, \"remark\": \"good\", \"grade\": \"a\", \"percentage\": \"10\"}, {\"std\": 2, \"remark\": \"nice\", \"grade\": \"b\", \"percentage\": \"20\"}]'),
(32, 'sanket', 56, 'sanket@gmail.com', 0x3331366434363831383366656638333335346333366562653731386130613965, 3, 'null'),
(33, 'deepali', 45, 'deepali@gmail.com', 0x3235616163396535633732343031316530626134363537643030643939623638, 10, '[{\"std\": 1, \"remark\": \"good\", \"grade\": \"a\", \"percentage\": \"10\"}, {\"std\": 2, \"remark\": \"b good\", \"grade\": \"b\", \"percentage\": \"20\"}, {\"std\": 3, \"remark\": \"c good\", \"grade\": \"c\", \"percentage\": \"30\"}, {\"std\": 4, \"remark\": \"d good\", \"grade\": \"d\", \"percentage\": \"40\"}, {\"std\": 5, \"remark\": \"e good\", \"grade\": \"e\", \"percentage\": \"50\"}, {\"std\": 6, \"remark\": \"f good\", \"grade\": \"f\", \"percentage\": \"60\"}, {\"std\": 7, \"remark\": \"g good\", \"grade\": \"g\", \"percentage\": \"70\"}, {\"std\": 8, \"remark\": \"h good\", \"grade\": \"h\", \"percentage\": \"80\"}, {\"std\": 9, \"remark\": \"i good\", \"grade\": \"i\", \"percentage\": \"90\"}]');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
