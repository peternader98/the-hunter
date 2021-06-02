-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 03, 2021 at 01:29 AM
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
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` int(15) NOT NULL,
  `file` blob NOT NULL,
  `fileName` text CHARACTER SET utf8 NOT NULL,
  `userID` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `file`, `fileName`, `userID`) VALUES
(9, 0x23696e636c756465203c696f73747265616d3e0d0a23696e636c756465203c6374696d653e0d0a23696e636c756465203c637374646c69623e0d0a0d0a7573696e67206e616d657370616365207374643b0d0a0d0a696e74206d61696e2829207b0d0a09636f7574203c3c202248656c6c6f2e2e2e2054657374696e672072616e64282922203c3c20656e646c3b0d0a097372616e642874696d65283029293b0d0a0d0a09666f722028696e742069203d20303b2069203c2031303b20692b2b29207b0d0a0909696e742078203d2072616e6428292025203130303b0d0a0909636f7574203c3c2078203c3c20223a223b0d0a0909636f7574203c3c2028287820252032203d3d203029203f20224576656e22203a20224f64642229203c3c20656e646c3b0d0a097d0d0a0d0a0972657475726e20303b0d0a7d0d0a0d0a, '220170014-peter nader.cpp', 14),
(10, 0x23696e636c756465203c696f73747265616d3e0d0a7573696e67206e616d657370616365207374643b0d0a0d0a696e74206d61696e28290d0a7b0d0a09696e7420696e707574203d2031203b0d0a0d0a097768696c652028696e707574203e203020262620696e707574203c203429207b0d0a0909636f7574203c3c20225c6e3d3d3d3d3d3d3d3d3d3d3d4943532047414d453d3d3d3d3d3d3d3d3d3d3d5c6e223b0d0a0909636f7574203c3c2022312e20506c61792067616d655c6e223b0d0a0909636f7574203c3c2022322e204c6f61642067616d655c6e223b0d0a0909636f7574203c3c2022332e20506c6179206d756c7469706c617965725c6e223b0d0a0909636f7574203c3c2022342e20457869745c6e223b0d0a0909636f7574203c3c202253656c656374696f6e3a20223b0d0a090963696e203e3e20696e7075743b0d0a09097377697463682028696e70757429207b0d0a09096361736520313a2020202020202020202020200d0a090909636f7574203c3c2022506c61792067616d655c6e223b0d0a090909627265616b3b0d0a09096361736520323a2020202020202020202020200d0a090909636f7574203c3c20224c6f61642067616d655c6e223b0d0a090909627265616b3b0d0a09096361736520333a2020202020202020202020200d0a090909636f7574203c3c2022506c6179206d756c7469706c617965722067616d655c6e223b0d0a090909627265616b3b0d0a09096361736520343a2020202020202020202020200d0a090909636f7574203c3c20225468616e6b20796f7520666f7220706c6179696e67215c6e223b0d0a090909627265616b3b0d0a090964656661756c743a2020202020202020202020200d0a090909636f7574203c3c20224572726f722c20696e76616c696420696e7075742c207175697474696e675c6e223b0d0a090909627265616b3b0d0a09097d0d0a097d0d0a7d, '220170049-khalid elbahnasi.cpp', 14),
(17, 0x7065746572206167643320773765642066656c20646e7965616161616161616161616161616161616161616161616161616161616120626173206d657368206177792e0d0a74686520646f672069732064616e67726f757320616e6420692073636572642e0d0a74686520646f672069732064616e67726f757320616e6420692073636572642e, '220170011-peter khald.txt', 14),
(18, 0x7065746572206167643320773765642066656c20646e7965616161616161616161616161616161616161616161616161616161616120626173206d657368206177792e0d0a74686520646f672069732064616e67726f757320616e6420692073636572642e0d0a74686520646f672069732064616e67726f757320616e6420692073636572642e, '220170022-khald peter.txt', 14);

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
(91, '{\"123456789-peter\": [{\"id\": \"987654321\", \"name\": \"nader\", \"score\": 100.00000000000003}], \"987654321-nader\": [{\"id\": \"123456789\", \"name\": \"peter\", \"score\": 100.00000000000003}]}', '2021-05-28 23:11:55', 14),
(92, '{\"220170014-peter nader\": [{\"id\": \"220170049\", \"name\": \"khalid elbahnasi\", \"score\": 27.61698790526188}], \"220170049-khalid elbahnasi\": [{\"id\": \"220170014\", \"name\": \"peter nader\", \"score\": 27.61698790526188}]}', '2021-05-29 00:08:26', 14),
(93, '{\"123456789-peter\": [{\"id\": \"220170011\", \"name\": \"peter khald\", \"score\": 15.348420351267745}, {\"id\": \"220170014\", \"name\": \"peter nader\", \"score\": 0.0}, {\"id\": \"220170022\", \"name\": \"khald peter\", \"score\": 15.348420351267745}, {\"id\": \"220170049\", \"name\": \"khalid elbahnasi\", \"score\": 0.0}, {\"id\": \"987654321\", \"name\": \"nader\", \"score\": 57.91841400202921}], \"220170011-peter khald\": [{\"id\": \"123456789\", \"name\": \"peter\", \"score\": 15.348420351267745}, {\"id\": \"220170014\", \"name\": \"peter nader\", \"score\": 0.0}, {\"id\": \"220170022\", \"name\": \"khald peter\", \"score\": 100.0}, {\"id\": \"220170049\", \"name\": \"khalid elbahnasi\", \"score\": 0.0}, {\"id\": \"987654321\", \"name\": \"nader\", \"score\": 15.348420351267741}], \"220170014-peter nader\": [{\"id\": \"123456789\", \"name\": \"peter\", \"score\": 0.0}, {\"id\": \"220170011\", \"name\": \"peter khald\", \"score\": 0.0}, {\"id\": \"220170022\", \"name\": \"khald peter\", \"score\": 0.0}, {\"id\": \"220170049\", \"name\": \"khalid elbahnasi\", \"score\": 32.546751169523354}, {\"id\": \"987654321\", \"name\": \"nader\", \"score\": 0.0}], \"220170022-khald peter\": [{\"id\": \"123456789\", \"name\": \"peter\", \"score\": 15.348420351267745}, {\"id\": \"220170011\", \"name\": \"peter khald\", \"score\": 100.0}, {\"id\": \"220170014\", \"name\": \"peter nader\", \"score\": 0.0}, {\"id\": \"220170049\", \"name\": \"khalid elbahnasi\", \"score\": 0.0}, {\"id\": \"987654321\", \"name\": \"nader\", \"score\": 15.348420351267741}], \"220170049-khalid elbahnasi\": [{\"id\": \"123456789\", \"name\": \"peter\", \"score\": 0.0}, {\"id\": \"220170011\", \"name\": \"peter khald\", \"score\": 0.0}, {\"id\": \"220170014\", \"name\": \"peter nader\", \"score\": 32.546751169523354}, {\"id\": \"220170022\", \"name\": \"khald peter\", \"score\": 0.0}, {\"id\": \"987654321\", \"name\": \"nader\", \"score\": 0.0}], \"987654321-nader\": [{\"id\": \"123456789\", \"name\": \"peter\", \"score\": 57.91841400202921}, {\"id\": \"220170011\", \"name\": \"peter khald\", \"score\": 15.348420351267741}, {\"id\": \"220170014\", \"name\": \"peter nader\", \"score\": 0.0}, {\"id\": \"220170022\", \"name\": \"khald peter\", \"score\": 15.348420351267741}, {\"id\": \"220170049\", \"name\": \"khalid elbahnasi\", \"score\": 0.0}]}', '2021-05-29 16:12:49', 14),
(94, '{\"220170014-peter nader\": [{\"id\": \"220170049\", \"name\": \"khalid elbahnasi\", \"score\": 27.61698790526188}], \"220170049-khalid elbahnasi\": [{\"id\": \"220170014\", \"name\": \"peter nader\", \"score\": 27.61698790526188}]}', '2021-05-29 16:37:40', 14),
(95, '{\"220170014-peter nader\": [{\"id\": \"220170049\", \"name\": \"khalid elbahnasi\", \"score\": 27.61698790526188}], \"220170049-khalid elbahnasi\": [{\"id\": \"220170014\", \"name\": \"peter nader\", \"score\": 27.61698790526188}]}', '2021-05-29 17:03:25', 17),
(96, '{\"220170011-peter khald\": [{\"id\": \"220170022\", \"name\": \"khald peter\", \"score\": 100.00000000000003}], \"220170022-khald peter\": [{\"id\": \"220170011\", \"name\": \"peter khald\", \"score\": 100.00000000000003}]}', '2021-05-29 17:03:42', 17),
(97, '{\"220170014-peter nader\": [{\"id\": \"220170049\", \"name\": \"khalid elbahnasi\", \"score\": 27.61698790526188}], \"220170049-khalid elbahnasi\": [{\"id\": \"220170014\", \"name\": \"peter nader\", \"score\": 27.61698790526188}]}', '2021-05-29 17:32:30', 17),
(98, '{\"220170011-peter khald\": [{\"id\": \"220170014\", \"name\": \"peter nader\", \"score\": 0.0}, {\"id\": \"220170022\", \"name\": \"khald peter\", \"score\": 100.00000000000003}, {\"id\": \"220170049\", \"name\": \"khalid elbahnasi\", \"score\": 0.0}], \"220170014-peter nader\": [{\"id\": \"220170011\", \"name\": \"peter khald\", \"score\": 0.0}, {\"id\": \"220170022\", \"name\": \"khald peter\", \"score\": 0.0}, {\"id\": \"220170049\", \"name\": \"khalid elbahnasi\", \"score\": 31.159361141619673}], \"220170022-khald peter\": [{\"id\": \"220170011\", \"name\": \"peter khald\", \"score\": 100.00000000000003}, {\"id\": \"220170014\", \"name\": \"peter nader\", \"score\": 0.0}, {\"id\": \"220170049\", \"name\": \"khalid elbahnasi\", \"score\": 0.0}], \"220170049-khalid elbahnasi\": [{\"id\": \"220170011\", \"name\": \"peter khald\", \"score\": 0.0}, {\"id\": \"220170014\", \"name\": \"peter nader\", \"score\": 31.159361141619673}, {\"id\": \"220170022\", \"name\": \"khald peter\", \"score\": 0.0}]}', '2021-05-29 17:33:10', 17),
(99, '{\"220170014-peter nader\": [{\"id\": \"220170049\", \"name\": \"khalid elbahnasi\", \"score\": 27.61698790526188}], \"220170049-khalid elbahnasi\": [{\"id\": \"220170014\", \"name\": \"peter nader\", \"score\": 27.61698790526188}]}', '2021-05-29 17:41:33', 17),
(100, '{\"220170014-peter nader\": [{\"id\": \"220170049\", \"name\": \"khalid elbahnasi\", \"score\": 27.61698790526188}], \"220170049-khalid elbahnasi\": [{\"id\": \"220170014\", \"name\": \"peter nader\", \"score\": 27.61698790526188}]}', '2021-05-29 17:45:51', 17),
(101, '{\"220170011-peter khald\": [{\"id\": \"220170022\", \"name\": \"khald peter\", \"score\": 100.00000000000003}], \"220170022-khald peter\": [{\"id\": \"220170011\", \"name\": \"peter khald\", \"score\": 100.00000000000003}]}', '2021-05-29 17:46:04', 17),
(102, '{\"220170014-peter nader\": [{\"id\": \"220170022\", \"name\": \"khald peter\", \"score\": 0.0}, {\"id\": \"220170049\", \"name\": \"khalid elbahnasi\", \"score\": 31.159361141619673}, {\"id\": \"987654321\", \"name\": \"nader\", \"score\": 0.0}], \"220170022-khald peter\": [{\"id\": \"220170014\", \"name\": \"peter nader\", \"score\": 0.0}, {\"id\": \"220170049\", \"name\": \"khalid elbahnasi\", \"score\": 0.0}, {\"id\": \"987654321\", \"name\": \"nader\", \"score\": 18.871245587855388}], \"220170049-khalid elbahnasi\": [{\"id\": \"220170014\", \"name\": \"peter nader\", \"score\": 31.159361141619673}, {\"id\": \"220170022\", \"name\": \"khald peter\", \"score\": 0.0}, {\"id\": \"987654321\", \"name\": \"nader\", \"score\": 0.0}], \"987654321-nader\": [{\"id\": \"220170014\", \"name\": \"peter nader\", \"score\": 0.0}, {\"id\": \"220170022\", \"name\": \"khald peter\", \"score\": 18.871245587855388}, {\"id\": \"220170049\", \"name\": \"khalid elbahnasi\", \"score\": 0.0}]}', '2021-05-29 17:52:34', 17),
(103, '{\"123456789-peter\": [{\"id\": \"220170011\", \"name\": \"peter khald\", \"score\": 15.348420351267745}, {\"id\": \"220170014\", \"name\": \"peter nader\", \"score\": 0.0}, {\"id\": \"220170022\", \"name\": \"khald peter\", \"score\": 15.348420351267745}, {\"id\": \"220170049\", \"name\": \"khalid elbahnasi\", \"score\": 0.0}, {\"id\": \"987654321\", \"name\": \"nader\", \"score\": 57.91841400202921}], \"220170011-peter khald\": [{\"id\": \"123456789\", \"name\": \"peter\", \"score\": 15.348420351267745}, {\"id\": \"220170014\", \"name\": \"peter nader\", \"score\": 0.0}, {\"id\": \"220170022\", \"name\": \"khald peter\", \"score\": 100.0}, {\"id\": \"220170049\", \"name\": \"khalid elbahnasi\", \"score\": 0.0}, {\"id\": \"987654321\", \"name\": \"nader\", \"score\": 15.348420351267741}], \"220170014-peter nader\": [{\"id\": \"123456789\", \"name\": \"peter\", \"score\": 0.0}, {\"id\": \"220170011\", \"name\": \"peter khald\", \"score\": 0.0}, {\"id\": \"220170022\", \"name\": \"khald peter\", \"score\": 0.0}, {\"id\": \"220170049\", \"name\": \"khalid elbahnasi\", \"score\": 32.546751169523354}, {\"id\": \"987654321\", \"name\": \"nader\", \"score\": 0.0}], \"220170022-khald peter\": [{\"id\": \"123456789\", \"name\": \"peter\", \"score\": 15.348420351267745}, {\"id\": \"220170011\", \"name\": \"peter khald\", \"score\": 100.0}, {\"id\": \"220170014\", \"name\": \"peter nader\", \"score\": 0.0}, {\"id\": \"220170049\", \"name\": \"khalid elbahnasi\", \"score\": 0.0}, {\"id\": \"987654321\", \"name\": \"nader\", \"score\": 15.348420351267741}], \"220170049-khalid elbahnasi\": [{\"id\": \"123456789\", \"name\": \"peter\", \"score\": 0.0}, {\"id\": \"220170011\", \"name\": \"peter khald\", \"score\": 0.0}, {\"id\": \"220170014\", \"name\": \"peter nader\", \"score\": 32.546751169523354}, {\"id\": \"220170022\", \"name\": \"khald peter\", \"score\": 0.0}, {\"id\": \"987654321\", \"name\": \"nader\", \"score\": 0.0}], \"987654321-nader\": [{\"id\": \"123456789\", \"name\": \"peter\", \"score\": 57.91841400202921}, {\"id\": \"220170011\", \"name\": \"peter khald\", \"score\": 15.348420351267741}, {\"id\": \"220170014\", \"name\": \"peter nader\", \"score\": 0.0}, {\"id\": \"220170022\", \"name\": \"khald peter\", \"score\": 15.348420351267741}, {\"id\": \"220170049\", \"name\": \"khalid elbahnasi\", \"score\": 0.0}]}', '2021-05-29 17:55:41', 17),
(104, '{\"220170049-khalid elbahnasi\": [{\"id\": \"987654321\", \"name\": \"nader\", \"score\": 0.0}], \"987654321-nader\": [{\"id\": \"220170049\", \"name\": \"khalid elbahnasi\", \"score\": 0.0}]}', '2021-05-30 16:48:23', 17),
(105, '{\"220170014-peter nader\": [{\"id\": \"220170022\", \"name\": \"khald peter\", \"score\": 0.0}], \"220170022-khald peter\": [{\"id\": \"220170014\", \"name\": \"peter nader\", \"score\": 0.0}]}', '2021-05-30 16:48:42', 17),
(106, '{\"220170014-peter nader\": [{\"id\": \"220170022\", \"name\": \"khald peter\", \"score\": 0.0}], \"220170022-khald peter\": [{\"id\": \"220170014\", \"name\": \"peter nader\", \"score\": 0.0}]}', '2021-05-30 16:49:11', 17),
(107, '{\"14-Cert363133623382\": [{\"id\": \"14\", \"name\": \"Howard Anton, Irl C\", \"score\": 29.198659703285706}], \"14-Howard Anton, Irl C\": [{\"id\": \"14\", \"name\": \"Cert363133623382\", \"score\": 29.198659703285706}]}', '2021-05-31 12:20:22', 14),
(108, '{\"220170049-khalid elbahnasi\": [{\"id\": \"987654321\", \"name\": \"nader\", \"score\": 0.0}], \"987654321-nader\": [{\"id\": \"220170049\", \"name\": \"khalid elbahnasi\", \"score\": 0.0}]}', '2021-05-31 12:20:23', 14),
(109, '{\"220170049-khalid elbahnasi\": [{\"id\": \"987654321\", \"name\": \"nader\", \"score\": 0.0}], \"987654321-nader\": [{\"id\": \"220170049\", \"name\": \"khalid elbahnasi\", \"score\": 0.0}]}', '2021-05-31 12:20:30', 14),
(110, '{\"14-Cert363133623382\": [{\"id\": \"14\", \"name\": \"Howard Anton, Irl C\", \"score\": 29.198659703285706}], \"14-Howard Anton, Irl C\": [{\"id\": \"14\", \"name\": \"Cert363133623382\", \"score\": 29.198659703285706}]}', '2021-05-31 12:20:31', 14),
(111, '{\"220170014-peter nader\": [{\"id\": \"220170049\", \"name\": \"khalid elbahnasi\", \"score\": 27.61698790526188}], \"220170049-khalid elbahnasi\": [{\"id\": \"220170014\", \"name\": \"peter nader\", \"score\": 27.61698790526188}]}', '2021-06-02 21:20:47', 14),
(112, '{\"220170014-peter nader\": [{\"id\": \"220170049\", \"name\": \"khalid elbahnasi\", \"score\": 27.61698790526188}], \"220170049-khalid elbahnasi\": [{\"id\": \"220170014\", \"name\": \"peter nader\", \"score\": 27.61698790526188}]}', '2021-06-02 21:34:24', 14),
(113, '{\"220170014-peter nader\": [{\"id\": \"220170049\", \"name\": \"khalid elbahnasi\", \"score\": 27.61698790526188}], \"220170049-khalid elbahnasi\": [{\"id\": \"220170014\", \"name\": \"peter nader\", \"score\": 27.61698790526188}]}', '2021-06-02 21:38:37', 14),
(114, '{\"220170014-peter nader\": [{\"id\": \"220170049\", \"name\": \"khalid elbahnasi\", \"score\": 27.61698790526188}], \"220170049-khalid elbahnasi\": [{\"id\": \"220170014\", \"name\": \"peter nader\", \"score\": 27.61698790526188}]}', '2021-06-02 21:40:26', 14),
(115, '{\"220170014-peter nader\": [{\"id\": \"220170049\", \"name\": \"khalid elbahnasi\", \"score\": 27.61698790526188}], \"220170049-khalid elbahnasi\": [{\"id\": \"220170014\", \"name\": \"peter nader\", \"score\": 27.61698790526188}]}', '2021-06-02 22:33:37', 14),
(116, '{\"220170014-peter nader\": [{\"id\": \"220170049\", \"name\": \"khalid elbahnasi\", \"score\": 27.61698790526188}], \"220170049-khalid elbahnasi\": [{\"id\": \"220170014\", \"name\": \"peter nader\", \"score\": 27.61698790526188}]}', '2021-06-02 22:34:01', 14),
(117, '{\"220170014-peter nader\": [{\"id\": \"220170049\", \"name\": \"khalid elbahnasi\", \"score\": 27.61698790526188}], \"220170049-khalid elbahnasi\": [{\"id\": \"220170014\", \"name\": \"peter nader\", \"score\": 27.61698790526188}]}', '2021-06-02 22:36:57', 14),
(118, '{\"123456789-peter\": [{\"id\": \"987654321\", \"name\": \"nader\", \"score\": 60.297481603805714}], \"987654321-nader\": [{\"id\": \"123456789\", \"name\": \"peter\", \"score\": 60.297481603805714}]}', '2021-06-02 22:45:14', 14),
(119, '{\"220170014-peter nader\": [{\"id\": \"220170049\", \"name\": \"khalid elbahnasi\", \"score\": 27.61698790526188}], \"220170049-khalid elbahnasi\": [{\"id\": \"220170014\", \"name\": \"peter nader\", \"score\": 27.61698790526188}]}', '2021-06-02 22:45:56', 14),
(120, '{\"220170014-peter nader\": [{\"id\": \"220170049\", \"name\": \"khalid elbahnasi\", \"score\": 27.61698790526188}], \"220170049-khalid elbahnasi\": [{\"id\": \"220170014\", \"name\": \"peter nader\", \"score\": 27.61698790526188}]}', '2021-06-02 22:52:21', 14),
(121, '{\"220170014-peter nader\": [{\"id\": \"220170049\", \"name\": \"khalid elbahnasi\", \"score\": 27.61698790526188}], \"220170049-khalid elbahnasi\": [{\"id\": \"220170014\", \"name\": \"peter nader\", \"score\": 27.61698790526188}]}', '2021-06-02 22:52:59', 14),
(122, '{\"220170014-peter nader\": [{\"id\": \"220170049\", \"name\": \"khalid elbahnasi\", \"score\": 27.61698790526188}], \"220170049-khalid elbahnasi\": [{\"id\": \"220170014\", \"name\": \"peter nader\", \"score\": 27.61698790526188}]}', '2021-06-02 22:58:15', 14),
(123, '{\"123456789-peter\": [{\"id\": \"987654321\", \"name\": \"nader\", \"score\": 60.297481603805714}], \"987654321-nader\": [{\"id\": \"123456789\", \"name\": \"peter\", \"score\": 60.297481603805714}]}', '2021-06-02 22:58:32', 14),
(124, '{\"220170014-peter nader\": [{\"id\": \"220170049\", \"name\": \"khalid elbahnasi\", \"score\": 27.61698790526188}], \"220170049-khalid elbahnasi\": [{\"id\": \"220170014\", \"name\": \"peter nader\", \"score\": 27.61698790526188}]}', '2021-06-02 23:08:16', 14),
(125, '{\"220170011-peter khald\": [{\"id\": \"220170022\", \"name\": \"khald peter\", \"score\": 100.00000000000003}], \"220170022-khald peter\": [{\"id\": \"220170011\", \"name\": \"peter khald\", \"score\": 100.00000000000003}]}', '2021-06-02 23:10:02', 14),
(126, '{\"220170011-peter khald\": [{\"id\": \"220170022\", \"name\": \"khald peter\", \"score\": 100.00000000000003}], \"220170022-khald peter\": [{\"id\": \"220170011\", \"name\": \"peter khald\", \"score\": 100.00000000000003}]}', '2021-06-02 23:12:25', 14),
(127, '{\"220170014-peter nader\": [{\"id\": \"220170049\", \"name\": \"khalid elbahnasi\", \"score\": 27.61698790526188}], \"220170049-khalid elbahnasi\": [{\"id\": \"220170014\", \"name\": \"peter nader\", \"score\": 27.61698790526188}]}', '2021-06-02 23:13:13', 14);

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
(16, 'peter', 'peter.nader9866@gmail.com', 'Peter.jpg', '$pbkdf2$131000$ktL635vTGoNwjvHeWwuhVA$GpPvMbx7MMjdpSMXyozchqhAhQQ'),
(17, 'peter', 'pito@gmail.com', 'LLpxmbrnZG-Peter.jpg', '$pbkdf2$131000$hRCiVKoVAoDw/v.fM0aolQ$bxE/U4CoIsXtNqGcAKFlz3tKje4');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `filesresult`
--
ALTER TABLE `filesresult`
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
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `filesresult`
--
ALTER TABLE `filesresult`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
