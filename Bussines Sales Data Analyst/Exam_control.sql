-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 16, 2025 at 07:36 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cce`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_detector`
--

CREATE TABLE `activity_detector` (
  `id` int(11) NOT NULL,
  `message` varchar(255) NOT NULL,
  `created_time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `activity_detector`
--

INSERT INTO `activity_detector` (`id`, `message`, `created_time`) VALUES
(3, '  SDSD   has leave the meeting Due to OPEN NEW TAB OR BROWSER', '2024-01-31 17:20:53'),
(4, '  SDSD   has leave the meeting Due to OPEN NEW TAB OR BROWSER', '2024-02-01 06:42:30'),
(6, '  SDSD   has leave the meeting Due to OPEN NEW TAB OR BROWSER', '2024-02-01 06:47:44'),
(7, '  SDSD   has leave the meeting Due to OPEN NEW TAB OR BROWSER', '2024-02-01 06:49:54'),
(9, '  SDSD   has leave the meeting Due to OPEN NEW TAB OR BROWSER', '2024-02-01 06:53:24'),
(10, '  SDSD   has leave the meeting Due to OPEN NEW TAB OR BROWSER', '2024-02-01 06:59:13'),
(11, '  SDSD   has leave the meeting Due to OPEN NEW TAB OR BROWSER', '2024-02-01 07:03:31'),
(12, '  SDSD   has leave the meeting Due to OPEN NEW TAB OR BROWSER', '2024-02-01 07:28:23'),
(13, '  SDSD   has leave the meeting Due to OPEN NEW TAB OR BROWSER', '2024-02-01 09:21:01'),
(14, '  SDSD   has leave the meeting Due to OPEN NEW TAB OR BROWSER', '2024-02-01 09:27:46'),
(15, '  MUHAMMAD BURHAN ZAKI   has leave the meeting Due to OPEN NEW TAB OR BROWSER', '2024-02-01 13:19:34'),
(16, '  SDSD   has leave the meeting Due to OPEN NEW TAB OR BROWSER', '2024-02-02 05:40:03'),
(17, '  SDSD   has leave the meeting Due to OPEN NEW TAB OR BROWSER', '2024-02-02 05:41:30'),
(18, '  SDSD   has leave the meeting Due to OPEN NEW TAB OR BROWSER', '2024-02-02 05:44:00'),
(19, 'face not detected burhan zaki', '2024-02-02 05:52:58'),
(20, '  SDSD   has leave the meeting Due to OPEN NEW TAB OR BROWSER', '2024-02-02 05:53:02'),
(21, 'face not Detected by imran', '2024-02-02 05:53:34'),
(22, '  SDSD   has leave the meeting Due to OPEN NEW TAB OR BROWSER', '2024-02-02 09:48:03'),
(23, '  SDSD   has leave the meeting Due to OPEN NEW TAB OR BROWSER', '2024-02-02 09:57:31'),
(24, '  SDSD   has leave the meeting Due to OPEN NEW TAB OR BROWSER', '2024-02-02 10:04:21');

-- --------------------------------------------------------

--
-- Table structure for table `admin_acc`
--

CREATE TABLE `admin_acc` (
  `admin_id` int(11) NOT NULL,
  `admin_user` varchar(1000) NOT NULL,
  `admin_pass` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_acc`
--

INSERT INTO `admin_acc` (`admin_id`, `admin_user`, `admin_pass`) VALUES
(1, 'admin@username', 'admin@password'),
(5, 'burhanzaki14@gmail.com', 'burhanzaki14@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `course_tbl`
--

CREATE TABLE `course_tbl` (
  `cou_id` int(11) NOT NULL,
  `cou_name` varchar(1000) NOT NULL,
  `cou_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course_tbl`
--

INSERT INTO `course_tbl` (`cou_id`, `cou_name`, `cou_created`) VALUES
(69, 'COMPUTER SCIENCE', '2024-01-26 12:31:50'),
(71, 'BS COMPUTER SCIENCE', '2024-01-29 06:36:06'),
(72, 'BS BUSSINESS', '2024-01-29 19:13:36'),
(74, 'BURHAN', '2024-01-31 14:55:52');

-- --------------------------------------------------------

--
-- Table structure for table `examinee_tbl`
--

CREATE TABLE `examinee_tbl` (
  `exmne_id` int(11) NOT NULL,
  `exmne_fullname` varchar(1000) NOT NULL,
  `exmne_course` varchar(1000) NOT NULL,
  `exmne_gender` varchar(1000) NOT NULL,
  `exmne_birthdate` varchar(1000) NOT NULL,
  `exmne_year_level` varchar(1000) NOT NULL,
  `exmne_email` varchar(1000) NOT NULL,
  `exmne_password` varchar(1000) NOT NULL,
  `exmne_status` varchar(1000) NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `examinee_tbl`
--

INSERT INTO `examinee_tbl` (`exmne_id`, `exmne_fullname`, `exmne_course`, `exmne_gender`, `exmne_birthdate`, `exmne_year_level`, `exmne_email`, `exmne_password`, `exmne_status`) VALUES
(14, 'imran kiyani', '69', 'male', '2000-10-04', 'first year', 'imran11@gmail.ist.com', 'imran11@gmail.ist.com', 'active'),
(16, 'MUHAMMAD SARIM', '72', 'male', '2000-10-04', 'first year', 'BB123@IST.EDU.PK', 'BB123@IST.EDU.PK', 'active'),
(17, 'imran', '69', 'female', '2000-10-01', 'second year', 'bbb@gmail.com', 'bbb@gmail.com', 'active'),
(18, 'BURHAN ZAKI', '72', 'male', '2000-10-04', 'first year', 'BURHANZAKI90@GMAIL.COM', 'BURHANZAKI90@GMAIL.COM', 'active'),
(19, 'sdsd', '71', 'male', '2000-02-25', 'second year', 'bb@gmail.com', 'bb@gmail.com', 'active'),
(20, 'MUHAMMAD BURHAN ZAKI', '72', 'male', '2000-10-04', 'first year', 'BBWE@GMAIL.COM', 'BBWE@GMAIL.COM', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `exam_answers`
--

CREATE TABLE `exam_answers` (
  `exans_id` int(11) NOT NULL,
  `axmne_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `quest_id` int(11) NOT NULL,
  `exans_answer` varchar(1000) NOT NULL,
  `exans_status` varchar(1000) NOT NULL DEFAULT 'new',
  `exans_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exam_answers`
--

INSERT INTO `exam_answers` (`exans_id`, `axmne_id`, `exam_id`, `quest_id`, `exans_answer`, `exans_status`, `exans_created`) VALUES
(295, 4, 12, 25, 'Diode, inverted, pointer', 'old', '2019-12-07 02:52:14'),
(296, 4, 12, 16, 'Data Block', 'old', '2019-12-07 02:52:14'),
(297, 6, 12, 18, 'Programmable Logic Controller', 'old', '2019-12-05 12:59:47'),
(298, 6, 12, 9, '1850s', 'old', '2019-12-05 12:59:47'),
(299, 6, 12, 24, '1976', 'old', '2019-12-05 12:59:47'),
(300, 6, 12, 14, 'Operating System', 'old', '2019-12-05 12:59:47'),
(301, 6, 12, 19, 'WAN (Wide Area Network)', 'old', '2019-12-05 12:59:47'),
(302, 6, 11, 28, 'fds', 'new', '2019-12-05 12:04:28'),
(303, 6, 11, 29, 'sd', 'new', '2019-12-05 12:04:28'),
(304, 6, 12, 15, 'David Filo & Jerry Yang', 'new', '2019-12-05 12:59:47'),
(305, 6, 12, 17, 'System file', 'new', '2019-12-05 12:59:47'),
(306, 6, 12, 10, 'Field', 'new', '2019-12-05 12:59:47'),
(307, 6, 12, 9, '1880s', 'new', '2019-12-05 12:59:47'),
(308, 6, 12, 21, 'Temporary file', 'new', '2019-12-05 12:59:47'),
(309, 4, 11, 28, 'q1', 'new', '2019-12-05 13:30:21'),
(310, 4, 11, 29, 'dfg', 'new', '2019-12-05 13:30:21'),
(311, 4, 12, 16, 'Data Block', 'new', '2019-12-07 02:52:14'),
(312, 4, 12, 20, 'Plancks radiation', 'new', '2019-12-07 02:52:14'),
(313, 4, 12, 10, 'Report', 'new', '2019-12-07 02:52:14'),
(314, 4, 12, 24, '1976', 'new', '2019-12-07 02:52:14'),
(315, 4, 12, 9, '1930s', 'new', '2019-12-07 02:52:14'),
(316, 8, 12, 18, 'Programmable Lift Computer', 'new', '2020-01-05 03:18:35'),
(317, 8, 12, 14, 'Operating System', 'new', '2020-01-05 03:18:35'),
(318, 8, 12, 20, 'Einstein oscillation', 'new', '2020-01-05 03:18:35'),
(319, 8, 12, 21, 'Temporary file', 'new', '2020-01-05 03:18:35'),
(320, 8, 12, 25, 'Diode, inverted, pointer', 'new', '2020-01-05 03:18:35'),
(321, 9, 24, 31, 'a', 'new', '2023-12-05 13:07:27'),
(322, 10, 24, 31, 'a', 'new', '2023-12-05 14:58:06'),
(323, 10, 28, 32, '8977', 'new', '2023-12-16 13:22:06'),
(324, 9, 28, 32, '8978', 'new', '2024-01-26 12:27:47'),
(325, 14, 32, 37, 'science', 'new', '2024-01-26 15:22:22'),
(326, 14, 31, 34, 'burhan zaki', 'new', '2024-01-28 11:01:45'),
(327, 14, 31, 36, 'master', 'new', '2024-01-28 11:01:45'),
(328, 14, 31, 35, 'usman', 'new', '2024-01-28 11:01:45'),
(329, 14, 33, 39, 'none', 'new', '2024-01-28 11:10:48'),
(330, 14, 33, 38, 'intellegence technology', 'new', '2024-01-28 11:10:48'),
(331, 14, 34, 41, 'decentarlized', 'new', '2024-01-28 11:44:22'),
(332, 14, 34, 40, 'wallet', 'new', '2024-01-28 11:44:22'),
(333, 14, 35, 42, 'NONE', 'new', '2024-01-28 12:50:10'),
(334, 15, 36, 44, 'TS', 'new', '2024-01-29 07:04:12'),
(335, 17, 35, 42, 'ENTITY', 'new', '2024-01-30 05:25:51'),
(336, 18, 39, 47, 'object oriented progamming', 'new', '2024-01-30 08:13:50'),
(337, 18, 40, 49, 'BF', 'new', '2024-01-30 08:40:33'),
(338, 19, 44, 57, 'DSF', 'new', '2024-02-02 09:49:12'),
(339, 19, 36, 44, 'TS', 'new', '2024-02-02 10:05:58');

-- --------------------------------------------------------

--
-- Table structure for table `exam_attempt`
--

CREATE TABLE `exam_attempt` (
  `examat_id` int(11) NOT NULL,
  `exmne_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `examat_status` varchar(1000) NOT NULL DEFAULT 'used'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exam_attempt`
--

INSERT INTO `exam_attempt` (`examat_id`, `exmne_id`, `exam_id`, `examat_status`) VALUES
(51, 6, 12, 'used'),
(52, 4, 11, 'used'),
(55, 9, 24, 'used'),
(58, 9, 28, 'used'),
(60, 14, 31, 'used'),
(61, 14, 33, 'used'),
(62, 14, 34, 'used'),
(63, 14, 35, 'used'),
(65, 17, 35, 'used'),
(66, 18, 39, 'used'),
(67, 18, 40, 'used'),
(68, 19, 44, 'used'),
(69, 19, 36, 'used');

-- --------------------------------------------------------

--
-- Table structure for table `exam_question_tbl`
--

CREATE TABLE `exam_question_tbl` (
  `eqt_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `exam_question` varchar(1000) NOT NULL,
  `exam_ch1` varchar(1000) NOT NULL,
  `exam_ch2` varchar(1000) NOT NULL,
  `exam_ch3` varchar(1000) NOT NULL,
  `exam_ch4` varchar(1000) NOT NULL,
  `exam_answer` varchar(1000) NOT NULL,
  `exam_status` varchar(1000) NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exam_question_tbl`
--

INSERT INTO `exam_question_tbl` (`eqt_id`, `exam_id`, `exam_question`, `exam_ch1`, `exam_ch2`, `exam_ch3`, `exam_ch4`, `exam_answer`, `exam_status`) VALUES
(9, 12, 'In which decade was the American Institute of Electrical Engineers (AIEE) founded?', '1850s', '1880s', '1930s', '1950s', '1880s', 'active'),
(10, 12, 'What is part of a database that holds only one type of information?', 'Report', 'Field', 'Record', 'File', 'Field', 'active'),
(14, 12, 'OS computer abbreviation usually means ?', 'Order of Significance', 'Open Software', 'Operating System', 'Optical Sensor', 'Operating System', 'active'),
(15, 12, 'Who developed Yahoo?', 'Dennis Ritchie & Ken Thompson', 'David Filo & Jerry Yang', 'Vint Cerf & Robert Kahn', 'Steve Case & Jeff Bezos', 'David Filo & Jerry Yang', 'active'),
(16, 12, 'DB computer abbreviation usually means ?', 'Database', 'Double Byte', 'Data Block', 'Driver Boot', 'Database', 'active'),
(17, 12, '.INI extension refers usually to what kind of file?', 'Image file', 'System file', 'Hypertext related file', 'Image Color Matching Profile file', 'System file', 'active'),
(18, 12, 'What does the term PLC stand for?', 'Programmable Lift Computer', 'Program List Control', 'Programmable Logic Controller', 'Piezo Lamp Connector', 'Programmable Logic Controller', 'active'),
(19, 12, 'What do we call a network whose elements may be separated by some distance? It usually involves two or more small networks and dedicated high-speed telephone lines.', 'URL (Universal Resource Locator)', 'LAN (Local Area Network)', 'WAN (Wide Area Network)', 'World Wide Web', 'WAN (Wide Area Network)', 'active'),
(20, 12, 'After the first photons of light are produced, which process is responsible for amplification of the light?', 'Blackbody radiation', 'Stimulated emission', 'Plancks radiation', 'Einstein oscillation', 'Stimulated emission', 'active'),
(21, 12, '.TMP extension refers usually to what kind of file?', 'Compressed Archive file', 'Image file', 'Temporary file', 'Audio file', 'Temporary file', 'active'),
(22, 12, 'What do we call a collection of two or more computers that are located within a limited distance of each other and that are connected to each other directly or indirectly?', 'Inernet', 'Interanet', 'Local Area Network', 'Wide Area Network', 'Local Area Network', 'active'),
(24, 12, '	 In what year was the \"@\" chosen for its use in e-mail addresses?', '1976', '1972', '1980', '1984', '1972', 'active'),
(25, 12, 'What are three types of lasers?', 'Gas, metal vapor, rock', 'Pointer, diode, CD', 'Diode, inverted, pointer', 'Gas, solid state, diode', 'Gas, solid state, diode', 'active'),
(27, 15, 'asdasd', 'dsf', 'sd', 'yui', 'sdf', 'yui', 'active'),
(28, 11, 'Question 1', 'q1', 'asd', 'fds', 'ytu', 'q1', 'active'),
(29, 11, 'Question 2', 'asd', 'sd', 'q2', 'dfg', 'q2', 'active'),
(30, 11, 'Question 3', 'sd', 'q3', 'asd', 'fgh', 'q3', 'active'),
(31, 24, 'what is your name', 'a', 'b', 'c', 'd', 'a', 'active'),
(32, 28, 'what is your ip address', 'q', '78', '8977', '8978', '78', 'active'),
(33, 29, 'bkhjk', 'jh', 'jhk', 'bnv', 'jhkj', 'jh', 'active'),
(34, 31, 'what is your name?', 'burhan', 'zaki', 'burhan zaki', 'none', 'burhan zaki', 'active'),
(35, 31, 'what is katherine father name?', 'ali', 'imran', 'usman', 'asghar', 'imran', 'active'),
(36, 31, 'what is your motive', 'bachelor', 'master', 'deploma', 'none', 'master', 'active'),
(37, 32, 'what is data science?', 'science', 'physices', 'dcrf', 'dsdsa', 'science', 'active'),
(38, 33, 'what is it satnds?', 'information technologies', 'information technology', 'intellegence technology', 'none', 'information technology', 'active'),
(39, 33, 'what is ime?', 'international protocol', 'protocol of it', 'mess com', 'none', 'none', 'active'),
(40, 34, 'what is metamask', 'wallet', 'pocket', 'website', 'none', 'wallet', 'active'),
(41, 34, 'what is blockchain?', 'chain', 'blocks', 'decentarlized', 'nothing', 'none', 'active'),
(42, 35, 'WHAT IS DATA?', 'RAW COLLECTION', 'INFORMATION', 'ENTITY', 'NONE', 'ENTITY', 'active'),
(44, 36, 'WHAT IS YOUR NAME', 'MUHAMMAF', 'MD', 'LS', 'TS', 'TS', 'active'),
(45, 37, 'WHAT IS SMALL BUSSINESS TYPE?', 'SHOP', 'MALL', 'HOTEL', 'ALL', 'ALL', 'active'),
(46, 38, 'WHAT IS SHORT BUSSINESS', 'A', 'B', 'C', 'D', 'C', 'active'),
(47, 39, 'what is oop?', 'object oriented progamming', 'obesect oriented program', 'obstackes program', 'oo program ', 'object oriented progamming', 'active'),
(48, 40, 'WHAT IS IT?', 'A', 'B', 'C', 'D', 'C', 'active'),
(49, 40, 'WHAT IS BT?', 'AB', 'BC', 'BD', 'BF', 'BD', 'active'),
(50, 41, 'what suu define', 'a', 'b', 'vv', 'd', 'vv', 'active'),
(51, 42, 'what is this', 'h', 'j', 'j', 'kl', 'kl', 'active'),
(52, 42, 'what is this behaviour?', 'angry', 'feast', 'deep', 'fgty', 'deep', 'active'),
(54, 42, 'what is ok?', 'a', 'b', 'c', 'd', 'c', 'active'),
(55, 43, 'WHAT IS IS ?', 'A ', 'B', 'C', 'D', 'C', 'active'),
(56, 44, 'what is visual studio ?', 'A', 'B', 'C', 'D', 'C', 'active'),
(57, 44, 'What is bcat?', 'A', 'ABN', 'ASD', 'DSF', 'ABN', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `exam_tbl`
--

CREATE TABLE `exam_tbl` (
  `ex_id` int(11) NOT NULL,
  `cou_id` int(11) NOT NULL,
  `ex_title` varchar(1000) NOT NULL,
  `ex_time_limit` varchar(1000) NOT NULL,
  `ex_questlimit_display` int(11) NOT NULL,
  `ex_description` varchar(1000) NOT NULL,
  `ex_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exam_tbl`
--

INSERT INTO `exam_tbl` (`ex_id`, `cou_id`, `ex_title`, `ex_time_limit`, `ex_questlimit_display`, `ex_description`, `ex_created`) VALUES
(29, 25, 'hkhj', '10', 10, 'mjhk', '2023-12-16 16:56:41'),
(30, 69, 'information security', '10', 5, 'sir faheem khan ', '2024-01-26 12:36:23'),
(31, 69, 'information security', '10', 5, 'sir faheem khan ', '2024-01-26 12:36:23'),
(32, 69, 'data sciences', '10', 5, 'sir altaf hussian', '2024-01-26 12:48:13'),
(34, 69, 'Block chain', '10', 10, 'Sir Altaf Hussian', '2024-01-28 11:12:47'),
(35, 69, 'Design and ALOGORITHM', '10', 2, 'madam zobia', '2024-01-28 12:08:40'),
(36, 71, 'APPLIED PHYSICS', '10', 1, 'DR MUHAMMAD KHAN', '2024-01-29 06:36:51'),
(38, 73, 'information securitI', '10', 1, 'SIR FAHIM KHAN', '2024-01-30 06:05:11'),
(39, 72, 'oop', '20', 1, 'sir altaf', '2024-01-30 06:39:13'),
(40, 72, 'data design', '10', 1, 'SIR ALTAF GHULAM', '2024-01-30 08:37:49'),
(41, 72, 'gghkaks', '10', 1, 'sir', '2024-01-31 13:47:51'),
(42, 71, 'oopio', '10', 1, 'dhhbj', '2024-01-31 14:02:03'),
(43, 72, 'information security IS', '10', 10, 'SIR FAHEEM', '2024-02-01 13:16:29'),
(44, 71, 'visual studio', '10', 1, 'Mam sadiaa hafeez', '2024-02-02 07:31:29'),
(45, 72, 'information ', '10', 1, 'sir', '2024-02-02 10:03:43');

-- --------------------------------------------------------

--
-- Table structure for table `feedbacks_tbl`
--

CREATE TABLE `feedbacks_tbl` (
  `fb_id` int(11) NOT NULL,
  `exmne_id` int(11) NOT NULL,
  `fb_exmne_as` varchar(1000) NOT NULL,
  `fb_feedbacks` varchar(1000) NOT NULL,
  `fb_date` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedbacks_tbl`
--

INSERT INTO `feedbacks_tbl` (`fb_id`, `exmne_id`, `fb_exmne_as`, `fb_feedbacks`, `fb_date`) VALUES
(4, 6, 'Glenn Duerme', 'Gwapa kay Miss Pam', 'December 05, 2019'),
(5, 6, 'Anonymous', 'Lageh, idol na nako!', 'December 05, 2019'),
(6, 4, 'Rogz Nunezsss', 'Yes', 'December 08, 2019'),
(9, 8, 'Anonymous', 'dfsdf', 'January 05, 2020'),
(11, 9, 'burhan zaki', 'vhgyugjhj', 'December 05, 2023'),
(12, 20, 'MUHAMMAD BURHAN ZAKI', 'WHY ?', 'February 01, 2024');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `id` int(11) NOT NULL,
  `message` varchar(255) NOT NULL,
  `created_time` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`id`, `message`, `created_time`) VALUES
(1, 'burhan joined', '2024-01-31 18:39:56'),
(2, 'Username has joined the meeting', '2024-01-31 18:49:18'),
(3, 'BURHAN ZAKIhas joined the meeting', '2024-01-31 18:53:41'),
(4, '  SDSD   has joined the meeting', '2024-01-31 19:03:55'),
(5, '  SDSD   has joined the meeting', '2024-01-31 19:04:48'),
(6, '  SDSD   has joined the meeting', '2024-01-31 19:05:21'),
(7, '  SDSD   haS LOGOUT', '2024-01-31 19:15:08'),
(8, '  SDSD   has joined the meeting', '2024-01-31 19:15:08'),
(9, '  SDSD   has joined the meeting', '2024-01-31 19:16:20'),
(10, '  SDSD   has joined the meeting', '2024-01-31 19:17:04'),
(11, '  SDSD   has joined the meeting', '2024-01-31 19:18:31'),
(12, '  SDSD   has joined the meeting', '2024-01-31 19:19:36'),
(13, '  SDSD   has joined the meeting', '2024-01-31 19:20:50'),
(14, '  SDSD   has joined the meeting', '2024-01-31 19:21:08'),
(15, '  SDSD   has joined the meeting', '2024-01-31 19:23:16'),
(16, '  SDSD   has joined the meeting', '2024-01-31 19:25:06'),
(17, '  SDSD   has joined the meeting', '2024-01-31 19:27:52'),
(18, '  SDSD   has joined the meeting', '2024-01-31 19:28:04'),
(19, '  SDSD   has joined the meeting', '2024-01-31 19:29:51'),
(20, '  SDSD   has joined the meeting', '2024-01-31 19:31:40'),
(21, '  SDSD   has leave the meeting', '2024-01-31 19:35:44'),
(22, '  SDSD   has joined the meeting', '2024-01-31 19:35:44'),
(23, '  SDSD   has joined the meeting', '2024-01-31 19:36:50'),
(24, '  SDSD   has joined the meeting', '2024-01-31 19:41:07'),
(25, '  SDSD   has joined the meeting', '2024-01-31 19:50:04'),
(26, '  SDSD   has joined the meeting', '2024-01-31 19:50:35'),
(27, '  SDSD   has joined the meeting', '2024-01-31 20:15:16'),
(28, ' has joined the meeting', '2024-01-31 20:19:58'),
(29, '  SDSD   has joined the meeting', '2024-01-31 20:41:18'),
(30, '  SDSD   has joined the meeting', '2024-01-31 20:54:49'),
(31, '  SDSD   has joined the meeting', '2024-01-31 20:55:24'),
(32, '  SDSD   has joined the meeting', '2024-01-31 20:58:33'),
(33, '  SDSD   has joined the meeting', '2024-01-31 20:58:54'),
(34, '  SDSD   has joined the meeting', '2024-01-31 20:59:08'),
(35, '  SDSD   has joined the meeting', '2024-01-31 21:13:42'),
(36, '  SDSD   has joined the meeting', '2024-01-31 21:15:29'),
(37, '  SDSD   has joined the meeting', '2024-01-31 21:19:54'),
(38, '  SDSD   has joined the meeting', '2024-01-31 21:19:59'),
(39, '  SDSD   has joined the meeting', '2024-01-31 21:24:40'),
(40, '     has joined the meeting', '2024-01-31 21:28:26'),
(41, '  SDSD   has joined the meeting', '2024-01-31 21:35:42'),
(42, '  SDSD   has joined the meeting', '2024-01-31 21:37:52'),
(43, '  SDSD   has leave the meeting', '2024-01-31 21:37:56'),
(44, '  SDSD   has joined the meeting', '2024-01-31 21:39:09'),
(45, '  SDSD   has leave the meeting', '2024-01-31 21:39:13'),
(46, '  SDSD   has joined the meeting', '2024-01-31 21:40:54'),
(47, '     has leave the meeting', '2024-01-31 21:40:59'),
(48, '  SDSD   has joined the meeting', '2024-01-31 21:50:24'),
(49, '  SDSD   has joined the meeting', '2024-01-31 21:51:29'),
(50, '  SDSD   has joined the meeting', '2024-01-31 22:20:29'),
(51, '  SDSD   has joined the meeting', '2024-01-31 23:30:45'),
(52, '  SDSD   has joined the meeting', '2024-02-01 10:06:43'),
(53, '  SDSD   has joined the meeting', '2024-02-01 11:42:14'),
(54, '     has joined the meeting', '2024-02-01 11:42:30'),
(55, '  SDSD   has joined the meeting', '2024-02-01 11:46:50'),
(56, '  SDSD   has joined the meeting', '2024-02-01 11:48:02'),
(57, '     has joined the meeting', '2024-02-01 11:49:54'),
(58, '  SDSD   has joined the meeting', '2024-02-01 11:52:00'),
(59, '  SDSD   has joined the meeting', '2024-02-01 11:58:31'),
(60, '  SDSD   has joined the meeting', '2024-02-01 12:02:43'),
(61, '     has joined the meeting', '2024-02-01 12:07:54'),
(62, '     has joined the meeting', '2024-02-01 12:08:03'),
(63, '  SDSD   has joined the meeting', '2024-02-01 12:11:18'),
(64, '  SDSD   has joined the meeting', '2024-02-01 12:14:46'),
(65, '  SDSD   has joined the meeting', '2024-02-01 12:16:40'),
(66, '  SDSD   has joined the meeting', '2024-02-01 12:27:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_detector`
--
ALTER TABLE `activity_detector`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_acc`
--
ALTER TABLE `admin_acc`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `course_tbl`
--
ALTER TABLE `course_tbl`
  ADD PRIMARY KEY (`cou_id`);

--
-- Indexes for table `examinee_tbl`
--
ALTER TABLE `examinee_tbl`
  ADD PRIMARY KEY (`exmne_id`);

--
-- Indexes for table `exam_answers`
--
ALTER TABLE `exam_answers`
  ADD PRIMARY KEY (`exans_id`);

--
-- Indexes for table `exam_attempt`
--
ALTER TABLE `exam_attempt`
  ADD PRIMARY KEY (`examat_id`);

--
-- Indexes for table `exam_question_tbl`
--
ALTER TABLE `exam_question_tbl`
  ADD PRIMARY KEY (`eqt_id`);

--
-- Indexes for table `exam_tbl`
--
ALTER TABLE `exam_tbl`
  ADD PRIMARY KEY (`ex_id`);

--
-- Indexes for table `feedbacks_tbl`
--
ALTER TABLE `feedbacks_tbl`
  ADD PRIMARY KEY (`fb_id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_detector`
--
ALTER TABLE `activity_detector`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `admin_acc`
--
ALTER TABLE `admin_acc`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `course_tbl`
--
ALTER TABLE `course_tbl`
  MODIFY `cou_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `examinee_tbl`
--
ALTER TABLE `examinee_tbl`
  MODIFY `exmne_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `exam_answers`
--
ALTER TABLE `exam_answers`
  MODIFY `exans_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=340;

--
-- AUTO_INCREMENT for table `exam_attempt`
--
ALTER TABLE `exam_attempt`
  MODIFY `examat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `exam_question_tbl`
--
ALTER TABLE `exam_question_tbl`
  MODIFY `eqt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `exam_tbl`
--
ALTER TABLE `exam_tbl`
  MODIFY `ex_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `feedbacks_tbl`
--
ALTER TABLE `feedbacks_tbl`
  MODIFY `fb_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
