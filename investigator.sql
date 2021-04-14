-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 08, 2021 at 12:35 PM
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
-- Table structure for table `plagiarism_percentage`
--

CREATE TABLE `plagiarism_percentage` (
  `trans_id` int(10) NOT NULL,
  `student_id_1` int(10) NOT NULL,
  `student_name_1` varchar(30) CHARACTER SET utf8 NOT NULL,
  `student_id_2` int(10) NOT NULL,
  `student_name_2` varchar(30) CHARACTER SET utf8 NOT NULL,
  `percentage` float NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

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
(2, 'youssef', 'youssef.osama.fareed@gmail.com', 'placeholder.png', '$pbkdf2$131000$KuWc834PQehd632Psbb2vg$vvR8OL3bz0TvvDyNe8L8NZhs6Bs'),
(3, 'peter parker', 'peter@gmail.com', 'placeholder.png', '$pbkdf2$131000$Y.w95/wfg5AS4pxzjhHCWA$KK7oRcdBqx7rnk1O4qOeXvb/rf8'),
(4, 'nour el deen', 'nour@gmail.com', 'placeholder.png', '$pbkdf2$131000$W6t1TkkpBcCYE6L0vlfKeQ$qSoX9G7qknD5XxkIxbWefCKTlqg'),
(6, 'Youssef Osama', 'tazosama33@gmail.com', 'BcxyBISWbi-24799656_1243721885771908_265014334773146712_o.jpg', '$pbkdf2$131000$zflfKyVESAnBeA8hJITQWg$FCyifM8IHubDCY8ky7NVSgP1J7c'),
(7, 'nour el deen', 'nour11@gmail.com', 'FtosDBWewW-119569607_3664754473577142_5096973304213768711_n.jpg', '$pbkdf2$131000$7z0HQEjJmRPC.D8nJMQ4Bw$z6LElswn2hbEPMgVgcA901lRJSw'),
(8, 'banans', 'bananas@gmail.com', 'placeholder.png', '$pbkdf2$131000$JARAiBHi/H/P.d87p9R6Tw$LmduXGshKmZNOYPSN.pIRN4b9Ac'),
(9, 'Khaled El Bhnoos', 'khaled@gmail.com', 'PZlxNXYvXt-123073260_3339440066105114_6247228247556214025_n.jpg', '$pbkdf2$131000$zXmPcc45pxRC6F1rLeWccw$7K68PmgXt6apXorjH61iXxVQZP0'),
(12, 'peter', 'pito@gmail.com', 'Peter.jpg', '$pbkdf2$131000$rZWS0hpjbE1pLSUkBIDQug$1mYi7o8RHqDTysLFFCP.4sddCHA'),
(13, 'peter', 'peter.nader9866@gmail.com', 'USMGDRtkii-Peter.jpg', '$pbkdf2$131000$VcrZ2xtjDKH0HkMIwXgPoQ$61LYWgSVy9vvD750QgDCakkIf5A'),
(14, 'peter', 'p@gmail.com', 'placeholder.png', '$pbkdf2$131000$2bt37j2HEOK819q7N0bIeQ$xPd5BPqKeuWYeUDgHg9UD2o/HlI'),
(15, 'peter', 'k@hf.c', 'placeholder.png', '$pbkdf2$131000$sjbmvBeiFEKo1VorBQCAkA$foeTtz6tZhz06B.Vugx2QLteC3Y');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `plagiarism_percentage`
--
ALTER TABLE `plagiarism_percentage`
  ADD PRIMARY KEY (`trans_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `plagiarism_percentage`
--
ALTER TABLE `plagiarism_percentage`
  MODIFY `trans_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
