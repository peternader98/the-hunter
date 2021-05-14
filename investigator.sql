-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 08, 2021 at 12:29 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `investigator`
--

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `id` int(11) NOT NULL,
  `trans_id` int(10) NOT NULL,
  `date` datetime NOT NULL,
  `student_id_1` int(10) NOT NULL,
  `student_name_1` varchar(30) CHARACTER SET utf8 NOT NULL,
  `student_id_2` int(10) NOT NULL,
  `student_name_2` varchar(30) CHARACTER SET utf8 NOT NULL,
  `percentage` varchar(6) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `results`
--

INSERT INTO `results` (`id`, `trans_id`, `date`, `student_id_1`, `student_name_1`, `student_id_2`, `student_name_2`, `percentage`) VALUES
(2, 14, '2021-04-18 00:19:10', 220170011, 'peter_khald.txt', 220170022, 'khald_peter.txt', '100.0%'),
(31, 14, '2021-05-08 00:19:35', 220170014, 'peter_nader.cpp', 220170049, 'khalid_elbahnasi.cpp', '27.61%'),
(32, 14, '2021-05-08 00:25:21', 220170014, 'peter_nader.cpp', 220170049, 'khalid_elbahnasi.cpp', '27.61%');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(200) CHARACTER SET utf8 NOT NULL,
  `email` varchar(200) CHARACTER SET utf8 NOT NULL,
  `image` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT 'placeholder.png',
  `password` varchar(200) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `image`, `password`) VALUES
(14, 'peter', 'p@gmail.com', 'placeholder.png', '$pbkdf2$131000$2bt37j2HEOK819q7N0bIeQ$xPd5BPqKeuWYeUDgHg9UD2o/HlI'),
(16, 'peter', 'peter.nader9866@gmail.com', 'placeholder.png', '$pbkdf2$131000$ktL635vTGoNwjvHeWwuhVA$GpPvMbx7MMjdpSMXyozchqhAhQQ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `results`
--
ALTER TABLE `results`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
