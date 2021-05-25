-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 25, 2021 at 08:35 PM
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
-- Table structure for table `filesresult`
--

CREATE TABLE `filesresult` (
  `id` int(11) NOT NULL,
  `result` text CHARACTER SET utf8 DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `filesresult`
--

INSERT INTO `filesresult` (`id`, `result`, `date`, `user_id`) VALUES
(25, '{\"220170011-peter khald\": [{\"id\": \"220170014\", \"name\": \"peter nader\", \"score\": 0.0}, {\"id\": \"220170022\", \"name\": \"khald peter\", \"score\": 100.00000000000003}, {\"id\": \"220170049\", \"name\": \"khalid elbahnasi\", \"score\": 0.0}], \"220170014-peter nader\": [{\"id\": \"220170011\", \"name\": \"peter khald\", \"score\": 0.0}, {\"id\": \"220170022\", \"name\": \"khald peter\", \"score\": 0.0}, {\"id\": \"220170049\", \"name\": \"khalid elbahnasi\", \"score\": 31.159361141619673}], \"220170022-khald peter\": [{\"id\": \"220170011\", \"name\": \"peter khald\", \"score\": 100.00000000000003}, {\"id\": \"220170014\", \"name\": \"peter nader\", \"score\": 0.0}, {\"id\": \"220170049\", \"name\": \"khalid elbahnasi\", \"score\": 0.0}], \"220170049-khalid elbahnasi\": [{\"id\": \"220170011\", \"name\": \"peter khald\", \"score\": 0.0}, {\"id\": \"220170014\", \"name\": \"peter nader\", \"score\": 31.159361141619673}, {\"id\": \"220170022\", \"name\": \"khald peter\", \"score\": 0.0}]}', '2021-05-15 20:25:36', 14),
(26, '{\"220170014-peter nader\": [{\"id\": \"220170049\", \"name\": \"khalid elbahnasi\", \"score\": 27.61698790526188}], \"220170049-khalid elbahnasi\": [{\"id\": \"220170014\", \"name\": \"peter nader\", \"score\": 27.61698790526188}]}', '2021-05-15 22:48:27', 14),
(27, '{\"220170014-peter nader\": [{\"id\": \"220170022\", \"name\": \"khald peter\", \"score\": 0.0}, {\"id\": \"220170049\", \"name\": \"khalid elbahnasi\", \"score\": 29.90134078316152}], \"220170022-khald peter\": [{\"id\": \"220170014\", \"name\": \"peter nader\", \"score\": 0.0}, {\"id\": \"220170049\", \"name\": \"khalid elbahnasi\", \"score\": 0.0}], \"220170049-khalid elbahnasi\": [{\"id\": \"220170014\", \"name\": \"peter nader\", \"score\": 29.90134078316152}, {\"id\": \"220170022\", \"name\": \"khald peter\", \"score\": 0.0}]}', '2021-05-15 22:48:56', 14),
(28, '{\"220170014-peter nader\": [{\"id\": \"220170022\", \"name\": \"khald peter\", \"score\": 0.0}, {\"id\": \"220170049\", \"name\": \"khalid elbahnasi\", \"score\": 29.90134078316152}], \"220170022-khald peter\": [{\"id\": \"220170014\", \"name\": \"peter nader\", \"score\": 0.0}, {\"id\": \"220170049\", \"name\": \"khalid elbahnasi\", \"score\": 0.0}], \"220170049-khalid elbahnasi\": [{\"id\": \"220170014\", \"name\": \"peter nader\", \"score\": 29.90134078316152}, {\"id\": \"220170022\", \"name\": \"khald peter\", \"score\": 0.0}]}', '2021-05-15 22:51:35', 14),
(29, '{\"220170014-peter nader\": [{\"id\": \"220170022\", \"name\": \"khald peter\", \"score\": 0.0}, {\"id\": \"220170049\", \"name\": \"khalid elbahnasi\", \"score\": 29.90134078316152}], \"220170022-khald peter\": [{\"id\": \"220170014\", \"name\": \"peter nader\", \"score\": 0.0}, {\"id\": \"220170049\", \"name\": \"khalid elbahnasi\", \"score\": 0.0}], \"220170049-khalid elbahnasi\": [{\"id\": \"220170014\", \"name\": \"peter nader\", \"score\": 29.90134078316152}, {\"id\": \"220170022\", \"name\": \"khald peter\", \"score\": 0.0}]}', '2021-05-15 22:53:13', 14),
(30, '{\"220170014-peter nader\": [{\"id\": \"220170022\", \"name\": \"khald peter\", \"score\": 0.0}, {\"id\": \"220170049\", \"name\": \"khalid elbahnasi\", \"score\": 29.90134078316152}], \"220170022-khald peter\": [{\"id\": \"220170014\", \"name\": \"peter nader\", \"score\": 0.0}, {\"id\": \"220170049\", \"name\": \"khalid elbahnasi\", \"score\": 0.0}], \"220170049-khalid elbahnasi\": [{\"id\": \"220170014\", \"name\": \"peter nader\", \"score\": 29.90134078316152}, {\"id\": \"220170022\", \"name\": \"khald peter\", \"score\": 0.0}]}', '2021-05-15 22:54:26', 14),
(31, '{\"220170014-peter nader\": [{\"id\": \"220170022\", \"name\": \"khald peter\", \"score\": 0.0}, {\"id\": \"220170049\", \"name\": \"khalid elbahnasi\", \"score\": 29.90134078316152}], \"220170022-khald peter\": [{\"id\": \"220170014\", \"name\": \"peter nader\", \"score\": 0.0}, {\"id\": \"220170049\", \"name\": \"khalid elbahnasi\", \"score\": 0.0}], \"220170049-khalid elbahnasi\": [{\"id\": \"220170014\", \"name\": \"peter nader\", \"score\": 29.90134078316152}, {\"id\": \"220170022\", \"name\": \"khald peter\", \"score\": 0.0}]}', '2021-05-15 22:55:25', 14),
(32, '{\"220170014-peter nader\": [{\"id\": \"220170022\", \"name\": \"khald peter\", \"score\": 0.0}, {\"id\": \"220170049\", \"name\": \"khalid elbahnasi\", \"score\": 29.90134078316152}], \"220170022-khald peter\": [{\"id\": \"220170014\", \"name\": \"peter nader\", \"score\": 0.0}, {\"id\": \"220170049\", \"name\": \"khalid elbahnasi\", \"score\": 0.0}], \"220170049-khalid elbahnasi\": [{\"id\": \"220170014\", \"name\": \"peter nader\", \"score\": 29.90134078316152}, {\"id\": \"220170022\", \"name\": \"khald peter\", \"score\": 0.0}]}', '2021-05-15 23:03:14', 14),
(33, '{\"220170014-peter nader\": [{\"id\": \"220170022\", \"name\": \"khald peter\", \"score\": 0.0}, {\"id\": \"220170049\", \"name\": \"khalid elbahnasi\", \"score\": 29.90134078316152}], \"220170022-khald peter\": [{\"id\": \"220170014\", \"name\": \"peter nader\", \"score\": 0.0}, {\"id\": \"220170049\", \"name\": \"khalid elbahnasi\", \"score\": 0.0}], \"220170049-khalid elbahnasi\": [{\"id\": \"220170014\", \"name\": \"peter nader\", \"score\": 29.90134078316152}, {\"id\": \"220170022\", \"name\": \"khald peter\", \"score\": 0.0}]}', '2021-05-15 23:06:19', 14),
(34, '{\"220170014-peter nader\": [{\"id\": \"220170022\", \"name\": \"khald peter\", \"score\": 0.0}, {\"id\": \"220170049\", \"name\": \"khalid elbahnasi\", \"score\": 29.90134078316152}], \"220170022-khald peter\": [{\"id\": \"220170014\", \"name\": \"peter nader\", \"score\": 0.0}, {\"id\": \"220170049\", \"name\": \"khalid elbahnasi\", \"score\": 0.0}], \"220170049-khalid elbahnasi\": [{\"id\": \"220170014\", \"name\": \"peter nader\", \"score\": 29.90134078316152}, {\"id\": \"220170022\", \"name\": \"khald peter\", \"score\": 0.0}]}', '2021-05-15 23:28:53', 14),
(35, '{\"220170014-peter nader\": [{\"id\": \"220170022\", \"name\": \"khald peter\", \"score\": 0.0}, {\"id\": \"220170049\", \"name\": \"khalid elbahnasi\", \"score\": 29.90134078316152}], \"220170022-khald peter\": [{\"id\": \"220170014\", \"name\": \"peter nader\", \"score\": 0.0}, {\"id\": \"220170049\", \"name\": \"khalid elbahnasi\", \"score\": 0.0}], \"220170049-khalid elbahnasi\": [{\"id\": \"220170014\", \"name\": \"peter nader\", \"score\": 29.90134078316152}, {\"id\": \"220170022\", \"name\": \"khald peter\", \"score\": 0.0}]}', '2021-05-15 23:31:03', 14),
(36, '{\"220170014-peter nader\": [{\"id\": \"220170022\", \"name\": \"khald peter\", \"score\": 0.0}, {\"id\": \"220170049\", \"name\": \"khalid elbahnasi\", \"score\": 29.90134078316152}], \"220170022-khald peter\": [{\"id\": \"220170014\", \"name\": \"peter nader\", \"score\": 0.0}, {\"id\": \"220170049\", \"name\": \"khalid elbahnasi\", \"score\": 0.0}], \"220170049-khalid elbahnasi\": [{\"id\": \"220170014\", \"name\": \"peter nader\", \"score\": 29.90134078316152}, {\"id\": \"220170022\", \"name\": \"khald peter\", \"score\": 0.0}]}', '2021-05-15 23:32:09', 14),
(37, '{\"220170014-peter nader\": [{\"id\": \"220170022\", \"name\": \"khald peter\", \"score\": 0.0}, {\"id\": \"220170049\", \"name\": \"khalid elbahnasi\", \"score\": 29.90134078316152}], \"220170022-khald peter\": [{\"id\": \"220170014\", \"name\": \"peter nader\", \"score\": 0.0}, {\"id\": \"220170049\", \"name\": \"khalid elbahnasi\", \"score\": 0.0}], \"220170049-khalid elbahnasi\": [{\"id\": \"220170014\", \"name\": \"peter nader\", \"score\": 29.90134078316152}, {\"id\": \"220170022\", \"name\": \"khald peter\", \"score\": 0.0}]}', '2021-05-15 23:32:47', 14),
(38, '{\"220170014-peter nader\": [{\"id\": \"220170022\", \"name\": \"khald peter\", \"score\": 0.0}, {\"id\": \"220170049\", \"name\": \"khalid elbahnasi\", \"score\": 29.90134078316152}], \"220170022-khald peter\": [{\"id\": \"220170014\", \"name\": \"peter nader\", \"score\": 0.0}, {\"id\": \"220170049\", \"name\": \"khalid elbahnasi\", \"score\": 0.0}], \"220170049-khalid elbahnasi\": [{\"id\": \"220170014\", \"name\": \"peter nader\", \"score\": 29.90134078316152}, {\"id\": \"220170022\", \"name\": \"khald peter\", \"score\": 0.0}]}', '2021-05-15 23:44:58', 14),
(39, '{\"220170014-peter nader\": [{\"id\": \"220170022\", \"name\": \"khald peter\", \"score\": 0.0}, {\"id\": \"220170049\", \"name\": \"khalid elbahnasi\", \"score\": 29.90134078316152}], \"220170022-khald peter\": [{\"id\": \"220170014\", \"name\": \"peter nader\", \"score\": 0.0}, {\"id\": \"220170049\", \"name\": \"khalid elbahnasi\", \"score\": 0.0}], \"220170049-khalid elbahnasi\": [{\"id\": \"220170014\", \"name\": \"peter nader\", \"score\": 29.90134078316152}, {\"id\": \"220170022\", \"name\": \"khald peter\", \"score\": 0.0}]}', '2021-05-15 23:49:04', 14),
(40, '{\"220170014-peter nader\": [{\"id\": \"220170022\", \"name\": \"khald peter\", \"score\": 0.0}, {\"id\": \"220170049\", \"name\": \"khalid elbahnasi\", \"score\": 29.90134078316152}], \"220170022-khald peter\": [{\"id\": \"220170014\", \"name\": \"peter nader\", \"score\": 0.0}, {\"id\": \"220170049\", \"name\": \"khalid elbahnasi\", \"score\": 0.0}], \"220170049-khalid elbahnasi\": [{\"id\": \"220170014\", \"name\": \"peter nader\", \"score\": 29.90134078316152}, {\"id\": \"220170022\", \"name\": \"khald peter\", \"score\": 0.0}]}', '2021-05-15 23:51:26', 14),
(41, '{\"220170014-peter nader\": [{\"id\": \"220170022\", \"name\": \"khald peter\", \"score\": 0.0}, {\"id\": \"220170049\", \"name\": \"khalid elbahnasi\", \"score\": 29.90134078316152}], \"220170022-khald peter\": [{\"id\": \"220170014\", \"name\": \"peter nader\", \"score\": 0.0}, {\"id\": \"220170049\", \"name\": \"khalid elbahnasi\", \"score\": 0.0}], \"220170049-khalid elbahnasi\": [{\"id\": \"220170014\", \"name\": \"peter nader\", \"score\": 29.90134078316152}, {\"id\": \"220170022\", \"name\": \"khald peter\", \"score\": 0.0}]}', '2021-05-15 23:52:34', 14),
(42, '{\"220170014-peter nader\": [{\"id\": \"220170022\", \"name\": \"khald peter\", \"score\": 0.0}, {\"id\": \"220170049\", \"name\": \"khalid elbahnasi\", \"score\": 29.90134078316152}], \"220170022-khald peter\": [{\"id\": \"220170014\", \"name\": \"peter nader\", \"score\": 0.0}, {\"id\": \"220170049\", \"name\": \"khalid elbahnasi\", \"score\": 0.0}], \"220170049-khalid elbahnasi\": [{\"id\": \"220170014\", \"name\": \"peter nader\", \"score\": 29.90134078316152}, {\"id\": \"220170022\", \"name\": \"khald peter\", \"score\": 0.0}]}', '2021-05-15 23:54:54', 14),
(43, '{\"220170014-peter nader\": [{\"id\": \"220170022\", \"name\": \"khald peter\", \"score\": 0.0}, {\"id\": \"220170049\", \"name\": \"khalid elbahnasi\", \"score\": 29.90134078316152}], \"220170022-khald peter\": [{\"id\": \"220170014\", \"name\": \"peter nader\", \"score\": 0.0}, {\"id\": \"220170049\", \"name\": \"khalid elbahnasi\", \"score\": 0.0}], \"220170049-khalid elbahnasi\": [{\"id\": \"220170014\", \"name\": \"peter nader\", \"score\": 29.90134078316152}, {\"id\": \"220170022\", \"name\": \"khald peter\", \"score\": 0.0}]}', '2021-05-15 23:57:50', 14),
(44, '{\"220170014-peter nader\": [{\"id\": \"220170022\", \"name\": \"khald peter\", \"score\": 0.0}, {\"id\": \"220170049\", \"name\": \"khalid elbahnasi\", \"score\": 29.90134078316152}], \"220170022-khald peter\": [{\"id\": \"220170014\", \"name\": \"peter nader\", \"score\": 0.0}, {\"id\": \"220170049\", \"name\": \"khalid elbahnasi\", \"score\": 0.0}], \"220170049-khalid elbahnasi\": [{\"id\": \"220170014\", \"name\": \"peter nader\", \"score\": 29.90134078316152}, {\"id\": \"220170022\", \"name\": \"khald peter\", \"score\": 0.0}]}', '2021-05-16 00:03:28', 14),
(45, '{\"220170022-khald peter\": [{\"id\": \"220170049\", \"name\": \"khalid elbahnasi\", \"score\": 0.0}], \"220170049-khalid elbahnasi\": [{\"id\": \"220170022\", \"name\": \"khald peter\", \"score\": 0.0}]}', '2021-05-16 00:03:55', 14),
(46, '{\"220170022-khald peter\": [{\"id\": \"220170049\", \"name\": \"khalid elbahnasi\", \"score\": 0.0}], \"220170049-khalid elbahnasi\": [{\"id\": \"220170022\", \"name\": \"khald peter\", \"score\": 0.0}]}', '2021-05-16 00:04:32', 14),
(47, '{\"220170022-khald peter\": [{\"id\": \"220170049\", \"name\": \"khalid elbahnasi\", \"score\": 0.0}], \"220170049-khalid elbahnasi\": [{\"id\": \"220170022\", \"name\": \"khald peter\", \"score\": 0.0}]}', '2021-05-16 00:05:11', 14),
(48, '{\"220170014-peter nader\": [{\"id\": \"220170022\", \"name\": \"khald peter\", \"score\": 0.0}, {\"id\": \"220170049\", \"name\": \"khalid elbahnasi\", \"score\": 29.90134078316152}], \"220170022-khald peter\": [{\"id\": \"220170014\", \"name\": \"peter nader\", \"score\": 0.0}, {\"id\": \"220170049\", \"name\": \"khalid elbahnasi\", \"score\": 0.0}], \"220170049-khalid elbahnasi\": [{\"id\": \"220170014\", \"name\": \"peter nader\", \"score\": 29.90134078316152}, {\"id\": \"220170022\", \"name\": \"khald peter\", \"score\": 0.0}]}', '2021-05-16 00:05:43', 14),
(49, '{\"220170014-peter nader\": [{\"id\": \"220170022\", \"name\": \"khald peter\", \"score\": 0.0}, {\"id\": \"220170049\", \"name\": \"khalid elbahnasi\", \"score\": 29.90134078316152}], \"220170022-khald peter\": [{\"id\": \"220170014\", \"name\": \"peter nader\", \"score\": 0.0}, {\"id\": \"220170049\", \"name\": \"khalid elbahnasi\", \"score\": 0.0}], \"220170049-khalid elbahnasi\": [{\"id\": \"220170014\", \"name\": \"peter nader\", \"score\": 29.90134078316152}, {\"id\": \"220170022\", \"name\": \"khald peter\", \"score\": 0.0}]}', '2021-05-16 00:08:53', 14),
(50, '{\"220170014-peter nader\": [{\"id\": \"220170022\", \"name\": \"khald peter\", \"score\": 0.0}, {\"id\": \"220170049\", \"name\": \"khalid elbahnasi\", \"score\": 29.90134078316152}], \"220170022-khald peter\": [{\"id\": \"220170014\", \"name\": \"peter nader\", \"score\": 0.0}, {\"id\": \"220170049\", \"name\": \"khalid elbahnasi\", \"score\": 0.0}], \"220170049-khalid elbahnasi\": [{\"id\": \"220170014\", \"name\": \"peter nader\", \"score\": 29.90134078316152}, {\"id\": \"220170022\", \"name\": \"khald peter\", \"score\": 0.0}]}', '2021-05-16 00:12:58', 14),
(51, '{\"220170014-peter nader\": [{\"id\": \"220170022\", \"name\": \"khald peter\", \"score\": 0.0}, {\"id\": \"220170049\", \"name\": \"khalid elbahnasi\", \"score\": 29.90134078316152}], \"220170022-khald peter\": [{\"id\": \"220170014\", \"name\": \"peter nader\", \"score\": 0.0}, {\"id\": \"220170049\", \"name\": \"khalid elbahnasi\", \"score\": 0.0}], \"220170049-khalid elbahnasi\": [{\"id\": \"220170014\", \"name\": \"peter nader\", \"score\": 29.90134078316152}, {\"id\": \"220170022\", \"name\": \"khald peter\", \"score\": 0.0}]}', '2021-05-16 00:13:19', 14),
(52, '{\"220170022-khald peter\": [{\"id\": \"220170049\", \"name\": \"khalid elbahnasi\", \"score\": 0.0}], \"220170049-khalid elbahnasi\": [{\"id\": \"220170022\", \"name\": \"khald peter\", \"score\": 0.0}]}', '2021-05-16 00:13:47', 14),
(53, '{\"220170011-peter khald\": [{\"id\": \"220170014\", \"name\": \"peter nader\", \"score\": 0.0}, {\"id\": \"220170022\", \"name\": \"khald peter\", \"score\": 100.00000000000003}, {\"id\": \"220170049\", \"name\": \"khalid elbahnasi\", \"score\": 0.0}], \"220170014-peter nader\": [{\"id\": \"220170011\", \"name\": \"peter khald\", \"score\": 0.0}, {\"id\": \"220170022\", \"name\": \"khald peter\", \"score\": 0.0}, {\"id\": \"220170049\", \"name\": \"khalid elbahnasi\", \"score\": 31.159361141619673}], \"220170022-khald peter\": [{\"id\": \"220170011\", \"name\": \"peter khald\", \"score\": 100.00000000000003}, {\"id\": \"220170014\", \"name\": \"peter nader\", \"score\": 0.0}, {\"id\": \"220170049\", \"name\": \"khalid elbahnasi\", \"score\": 0.0}], \"220170049-khalid elbahnasi\": [{\"id\": \"220170011\", \"name\": \"peter khald\", \"score\": 0.0}, {\"id\": \"220170014\", \"name\": \"peter nader\", \"score\": 31.159361141619673}, {\"id\": \"220170022\", \"name\": \"khald peter\", \"score\": 0.0}]}', '2021-05-16 00:14:08', 14),
(54, '{\"220170014-peter nader\": [{\"id\": \"220170022\", \"name\": \"khald peter\", \"score\": 0.0}, {\"id\": \"220170049\", \"name\": \"khalid elbahnasi\", \"score\": 29.90134078316152}], \"220170022-khald peter\": [{\"id\": \"220170014\", \"name\": \"peter nader\", \"score\": 0.0}, {\"id\": \"220170049\", \"name\": \"khalid elbahnasi\", \"score\": 0.0}], \"220170049-khalid elbahnasi\": [{\"id\": \"220170014\", \"name\": \"peter nader\", \"score\": 29.90134078316152}, {\"id\": \"220170022\", \"name\": \"khald peter\", \"score\": 0.0}]}', '2021-05-16 00:26:32', 14),
(55, '{\"220170014-peter nader\": [{\"id\": \"220170022\", \"name\": \"khald peter\", \"score\": 0.0}, {\"id\": \"220170049\", \"name\": \"khalid elbahnasi\", \"score\": 29.90134078316152}], \"220170022-khald peter\": [{\"id\": \"220170014\", \"name\": \"peter nader\", \"score\": 0.0}, {\"id\": \"220170049\", \"name\": \"khalid elbahnasi\", \"score\": 0.0}], \"220170049-khalid elbahnasi\": [{\"id\": \"220170014\", \"name\": \"peter nader\", \"score\": 29.90134078316152}, {\"id\": \"220170022\", \"name\": \"khald peter\", \"score\": 0.0}]}', '2021-05-16 00:27:54', 14),
(56, '{\"220170011-peter khald\": [{\"id\": \"220170014\", \"name\": \"peter nader\", \"score\": 0.0}, {\"id\": \"220170022\", \"name\": \"khald peter\", \"score\": 100.00000000000003}, {\"id\": \"220170049\", \"name\": \"khalid elbahnasi\", \"score\": 0.0}], \"220170014-peter nader\": [{\"id\": \"220170011\", \"name\": \"peter khald\", \"score\": 0.0}, {\"id\": \"220170022\", \"name\": \"khald peter\", \"score\": 0.0}, {\"id\": \"220170049\", \"name\": \"khalid elbahnasi\", \"score\": 31.159361141619673}], \"220170022-khald peter\": [{\"id\": \"220170011\", \"name\": \"peter khald\", \"score\": 100.00000000000003}, {\"id\": \"220170014\", \"name\": \"peter nader\", \"score\": 0.0}, {\"id\": \"220170049\", \"name\": \"khalid elbahnasi\", \"score\": 0.0}], \"220170049-khalid elbahnasi\": [{\"id\": \"220170011\", \"name\": \"peter khald\", \"score\": 0.0}, {\"id\": \"220170014\", \"name\": \"peter nader\", \"score\": 31.159361141619673}, {\"id\": \"220170022\", \"name\": \"khald peter\", \"score\": 0.0}]}', '2021-05-17 12:23:42', 14),
(57, '{\"220170011-peter khald\": [{\"id\": \"220170014\", \"name\": \"peter nader\", \"score\": 0.0}, {\"id\": \"220170022\", \"name\": \"khald peter\", \"score\": 100.00000000000003}, {\"id\": \"220170049\", \"name\": \"khalid elbahnasi\", \"score\": 0.0}], \"220170014-peter nader\": [{\"id\": \"220170011\", \"name\": \"peter khald\", \"score\": 0.0}, {\"id\": \"220170022\", \"name\": \"khald peter\", \"score\": 0.0}, {\"id\": \"220170049\", \"name\": \"khalid elbahnasi\", \"score\": 31.159361141619673}], \"220170022-khald peter\": [{\"id\": \"220170011\", \"name\": \"peter khald\", \"score\": 100.00000000000003}, {\"id\": \"220170014\", \"name\": \"peter nader\", \"score\": 0.0}, {\"id\": \"220170049\", \"name\": \"khalid elbahnasi\", \"score\": 0.0}], \"220170049-khalid elbahnasi\": [{\"id\": \"220170011\", \"name\": \"peter khald\", \"score\": 0.0}, {\"id\": \"220170014\", \"name\": \"peter nader\", \"score\": 31.159361141619673}, {\"id\": \"220170022\", \"name\": \"khald peter\", \"score\": 0.0}]}', '2021-05-17 12:26:13', 14),
(58, '{\"220170011-peter khald\": [{\"id\": \"220170014\", \"name\": \"peter nader\", \"score\": 0.0}, {\"id\": \"220170022\", \"name\": \"khald peter\", \"score\": 100.00000000000003}, {\"id\": \"220170049\", \"name\": \"khalid elbahnasi\", \"score\": 0.0}], \"220170014-peter nader\": [{\"id\": \"220170011\", \"name\": \"peter khald\", \"score\": 0.0}, {\"id\": \"220170022\", \"name\": \"khald peter\", \"score\": 0.0}, {\"id\": \"220170049\", \"name\": \"khalid elbahnasi\", \"score\": 31.159361141619673}], \"220170022-khald peter\": [{\"id\": \"220170011\", \"name\": \"peter khald\", \"score\": 100.00000000000003}, {\"id\": \"220170014\", \"name\": \"peter nader\", \"score\": 0.0}, {\"id\": \"220170049\", \"name\": \"khalid elbahnasi\", \"score\": 0.0}], \"220170049-khalid elbahnasi\": [{\"id\": \"220170011\", \"name\": \"peter khald\", \"score\": 0.0}, {\"id\": \"220170014\", \"name\": \"peter nader\", \"score\": 31.159361141619673}, {\"id\": \"220170022\", \"name\": \"khald peter\", \"score\": 0.0}]}', '2021-05-17 12:26:39', 14),
(59, '{\"220170011-peter khald\": [{\"id\": \"220170014\", \"name\": \"peter nader\", \"score\": 0.0}, {\"id\": \"220170022\", \"name\": \"khald peter\", \"score\": 100.00000000000003}, {\"id\": \"220170049\", \"name\": \"khalid elbahnasi\", \"score\": 0.0}], \"220170014-peter nader\": [{\"id\": \"220170011\", \"name\": \"peter khald\", \"score\": 0.0}, {\"id\": \"220170022\", \"name\": \"khald peter\", \"score\": 0.0}, {\"id\": \"220170049\", \"name\": \"khalid elbahnasi\", \"score\": 31.159361141619673}], \"220170022-khald peter\": [{\"id\": \"220170011\", \"name\": \"peter khald\", \"score\": 100.00000000000003}, {\"id\": \"220170014\", \"name\": \"peter nader\", \"score\": 0.0}, {\"id\": \"220170049\", \"name\": \"khalid elbahnasi\", \"score\": 0.0}], \"220170049-khalid elbahnasi\": [{\"id\": \"220170011\", \"name\": \"peter khald\", \"score\": 0.0}, {\"id\": \"220170014\", \"name\": \"peter nader\", \"score\": 31.159361141619673}, {\"id\": \"220170022\", \"name\": \"khald peter\", \"score\": 0.0}]}', '2021-05-17 12:34:13', 14);

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
(247, 14, '2021-05-12 23:54:30', 220170014, 'peter_nader.cpp', 220170022, 'khald_peter.txt', '0.0%'),
(248, 14, '2021-05-12 23:54:30', 220170011, 'peter_khald.txt', 220170022, 'khald_peter.txt', '100.0%'),
(249, 14, '2021-05-12 23:54:30', 220170011, 'peter_khald.txt', 220170014, 'peter_nader.cpp', '0.0%'),
(250, 14, '2021-05-12 23:54:30', 220170011, 'peter_khald.txt', 220170049, 'khalid_elbahnasi.cpp', '0.0%'),
(251, 14, '2021-05-12 23:54:30', 220170022, 'khald_peter.txt', 220170049, 'khalid_elbahnasi.cpp', '0.0%'),
(252, 14, '2021-05-12 23:54:30', 220170014, 'peter_nader.cpp', 220170049, 'khalid_elbahnasi.cpp', '31.15%'),
(253, 14, '2021-05-13 00:04:32', 220170014, 'peter_nader.cpp', 220170022, 'khald_peter.txt', '0.0%'),
(254, 14, '2021-05-13 00:04:32', 220170011, 'peter_khald.txt', 220170022, 'khald_peter.txt', '100.0%'),
(255, 14, '2021-05-13 00:04:32', 220170011, 'peter_khald.txt', 220170014, 'peter_nader.cpp', '0.0%'),
(256, 14, '2021-05-13 00:04:32', 220170011, 'peter_khald.txt', 220170049, 'khalid_elbahnasi.cpp', '0.0%'),
(257, 14, '2021-05-13 00:04:32', 220170022, 'khald_peter.txt', 220170049, 'khalid_elbahnasi.cpp', '0.0%'),
(258, 14, '2021-05-13 00:04:32', 220170014, 'peter_nader.cpp', 220170049, 'khalid_elbahnasi.cpp', '31.15%'),
(259, 14, '2021-05-13 00:07:31', 220170014, 'peter_nader.cpp', 220170049, 'khalid_elbahnasi.cpp', '27.61%'),
(260, 14, '2021-05-13 00:08:04', 220170014, 'peter_nader.cpp', 220170049, 'khalid_elbahnasi.cpp', '29.90%'),
(261, 14, '2021-05-13 00:08:04', 220170014, 'peter_nader.cpp', 220170022, 'khald_peter.txt', '0.0%'),
(262, 14, '2021-05-13 00:08:04', 220170022, 'khald_peter.txt', 220170049, 'khalid_elbahnasi.cpp', '0.0%'),
(263, 14, '2021-05-14 02:27:22', 220170014, 'peter_nader.cpp', 220170049, 'khalid_elbahnasi.cpp', '27.61%'),
(264, 14, '2021-05-14 02:28:27', 220170014, 'peter_nader.cpp', 220170049, 'khalid_elbahnasi.cpp', '31.15%'),
(265, 14, '2021-05-14 02:28:27', 220170011, 'peter_khald.txt', 220170014, 'peter_nader.cpp', '0.0%'),
(266, 14, '2021-05-14 02:28:27', 220170011, 'peter_khald.txt', 220170022, 'khald_peter.txt', '100.0%'),
(267, 14, '2021-05-14 02:28:27', 220170022, 'khald_peter.txt', 220170049, 'khalid_elbahnasi.cpp', '0.0%'),
(268, 14, '2021-05-14 02:28:27', 220170011, 'peter_khald.txt', 220170049, 'khalid_elbahnasi.cpp', '0.0%'),
(269, 14, '2021-05-14 02:28:27', 220170014, 'peter_nader.cpp', 220170022, 'khald_peter.txt', '0.0%'),
(270, 14, '2021-05-14 03:41:09', 220170014, 'peter_nader.cpp', 220170022, 'khald_peter.txt', '0.0%'),
(271, 14, '2021-05-14 03:41:09', 220170022, 'khald_peter.txt', 220170049, 'khalid_elbahnasi.cpp', '0.0%'),
(272, 14, '2021-05-14 03:41:09', 220170014, 'peter_nader.cpp', 220170049, 'khalid_elbahnasi.cpp', '29.90%'),
(273, 14, '2021-05-14 03:42:39', 220170014, 'peter_nader.cpp', 220170049, 'khalid_elbahnasi.cpp', '27.61%'),
(274, 14, '2021-05-14 03:49:40', 220170014, 'peter_nader.cpp', 220170049, 'khalid_elbahnasi.cpp', '29.90%'),
(275, 14, '2021-05-14 03:49:40', 220170022, 'khald_peter.txt', 220170049, 'khalid_elbahnasi.cpp', '0.0%'),
(276, 14, '2021-05-14 03:49:40', 220170014, 'peter_nader.cpp', 220170022, 'khald_peter.txt', '0.0%'),
(277, 14, '2021-05-14 03:50:35', 220170014, 'peter_nader.cpp', 220170022, 'khald_peter.txt', '0.0%'),
(278, 14, '2021-05-14 03:50:35', 220170022, 'khald_peter.txt', 220170049, 'khalid_elbahnasi.cpp', '0.0%'),
(279, 14, '2021-05-14 03:50:35', 220170014, 'peter_nader.cpp', 220170049, 'khalid_elbahnasi.cpp', '29.90%'),
(280, 14, '2021-05-14 03:55:57', 220170022, 'khald_peter.txt', 220170049, 'khalid_elbahnasi.cpp', '0.0%'),
(281, 14, '2021-05-14 03:55:57', 220170014, 'peter_nader.cpp', 220170022, 'khald_peter.txt', '0.0%'),
(282, 14, '2021-05-14 03:55:57', 220170014, 'peter_nader.cpp', 220170049, 'khalid_elbahnasi.cpp', '29.90%'),
(283, 14, '2021-05-14 03:57:54', 220170014, 'peter_nader.cpp', 220170049, 'khalid_elbahnasi.cpp', '29.90%'),
(284, 14, '2021-05-14 03:57:54', 220170022, 'khald_peter.txt', 220170049, 'khalid_elbahnasi.cpp', '0.0%'),
(285, 14, '2021-05-14 03:57:54', 220170014, 'peter_nader.cpp', 220170022, 'khald_peter.txt', '0.0%'),
(286, 14, '2021-05-14 03:59:27', 220170014, 'peter_nader.cpp', 220170049, 'khalid_elbahnasi.cpp', '29.90%'),
(287, 14, '2021-05-14 03:59:27', 220170022, 'khald_peter.txt', 220170049, 'khalid_elbahnasi.cpp', '0.0%'),
(288, 14, '2021-05-14 03:59:27', 220170014, 'peter_nader.cpp', 220170022, 'khald_peter.txt', '0.0%'),
(289, 14, '2021-05-15 00:25:01', 220170022, 'khald_peter.txt', 220170049, 'khalid_elbahnasi.cpp', '0.0%'),
(290, 14, '2021-05-15 00:25:01', 220170014, 'peter_nader.cpp', 220170022, 'khald_peter.txt', '0.0%'),
(291, 14, '2021-05-15 00:25:01', 220170014, 'peter_nader.cpp', 220170049, 'khalid_elbahnasi.cpp', '29.90%'),
(292, 14, '2021-05-15 00:26:22', 220170014, 'peter_nader.cpp', 220170049, 'khalid_elbahnasi.cpp', '29.90%'),
(293, 14, '2021-05-15 00:26:22', 220170022, 'khald_peter.txt', 220170049, 'khalid_elbahnasi.cpp', '0.0%'),
(294, 14, '2021-05-15 00:26:22', 220170014, 'peter_nader.cpp', 220170022, 'khald_peter.txt', '0.0%'),
(295, 14, '2021-05-15 00:29:36', 220170014, 'peter_nader.cpp', 220170049, 'khalid_elbahnasi.cpp', '29.90%'),
(296, 14, '2021-05-15 00:29:36', 220170022, 'khald_peter.txt', 220170049, 'khalid_elbahnasi.cpp', '0.0%'),
(297, 14, '2021-05-15 00:29:36', 220170014, 'peter_nader.cpp', 220170022, 'khald_peter.txt', '0.0%'),
(298, 14, '2021-05-15 00:37:40', 220170022, 'khald_peter.txt', 220170049, 'khalid_elbahnasi.cpp', '0.0%'),
(299, 14, '2021-05-15 00:37:40', 220170014, 'peter_nader.cpp', 220170049, 'khalid_elbahnasi.cpp', '29.90%'),
(300, 14, '2021-05-15 00:37:40', 220170014, 'peter_nader.cpp', 220170022, 'khald_peter.txt', '0.0%'),
(301, 14, '2021-05-15 00:38:36', 220170022, 'khald_peter.txt', 220170049, 'khalid_elbahnasi.cpp', '0.0%'),
(302, 14, '2021-05-15 00:38:36', 220170014, 'peter_nader.cpp', 220170022, 'khald_peter.txt', '0.0%'),
(303, 14, '2021-05-15 00:38:36', 220170014, 'peter_nader.cpp', 220170049, 'khalid_elbahnasi.cpp', '29.90%');

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
-- Indexes for table `filesresult`
--
ALTER TABLE `filesresult`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `filesresult`
--
ALTER TABLE `filesresult`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `results`
--
ALTER TABLE `results`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=304;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
