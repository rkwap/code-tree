-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 22, 2018 at 03:55 AM
-- Server version: 5.7.23-0ubuntu0.18.04.1
-- PHP Version: 7.2.10-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `CodeTree`
--

-- --------------------------------------------------------

--
-- Table structure for table `Admin`
--

CREATE TABLE `Admin` (
  `id` int(11) NOT NULL,
  `username` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Admin`
--

INSERT INTO `Admin` (`id`, `username`, `password`) VALUES
(1, 'rkwap', '$5$rounds=535000$Diqho28kLFnLAoYI$mMOGmGm6FmVWzwF..RVd0D6y6LV6dDZZawQedoUaDT1');

-- --------------------------------------------------------

--
-- Table structure for table `Leaderboard`
--

CREATE TABLE `Leaderboard` (
  `id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `q_id` int(11) NOT NULL,
  `correct` varchar(200) DEFAULT NULL,
  `incorrect` varchar(200) DEFAULT NULL,
  `done` int(11) DEFAULT NULL,
  `s_time` timestamp NULL DEFAULT NULL,
  `e_time` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Leaderboard`
--

INSERT INTO `Leaderboard` (`id`, `u_id`, `q_id`, `correct`, `incorrect`, `done`, `s_time`, `e_time`) VALUES
(57, 3, 6, '3', '-1', 1, '2018-10-21 21:04:28', '2018-10-21 21:04:36'),
(58, 3, 7, NULL, NULL, NULL, NULL, NULL),
(59, 3, 5, '18', '-1', 1, '2018-10-21 22:03:28', '2018-10-21 22:03:45'),
(60, 3, 1, NULL, NULL, NULL, NULL, NULL),
(61, 3, 3, NULL, NULL, NULL, NULL, NULL),
(62, 3, 2, NULL, NULL, NULL, NULL, NULL),
(63, 3, 4, '15', '-4', 1, '2018-10-21 22:25:07', '2018-10-21 22:08:17'),
(71, 1, 7, NULL, NULL, NULL, NULL, NULL),
(72, 1, 6, NULL, NULL, NULL, NULL, NULL),
(73, 1, 4, '3', NULL, NULL, '2018-10-21 22:25:07', '2018-10-21 22:08:17'),
(74, 1, 1, NULL, NULL, NULL, NULL, NULL),
(75, 1, 3, NULL, NULL, NULL, NULL, NULL),
(76, 1, 2, NULL, NULL, NULL, NULL, NULL),
(77, 1, 5, '18', NULL, 1, '2018-10-21 22:03:28', '2018-10-21 22:03:45');

-- --------------------------------------------------------

--
-- Table structure for table `Questions`
--

CREATE TABLE `Questions` (
  `id` int(11) NOT NULL,
  `title` varchar(300) DEFAULT NULL,
  `details` longtext,
  `s_point` longtext,
  `options` longtext,
  `answers` longtext,
  `bonus` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Questions`
--

INSERT INTO `Questions` (`id`, `title`, `details`, `s_point`, `options`, `answers`, `bonus`) VALUES
(1, 'TITLE 1', NULL, NULL, NULL, '\'1\',\'2\',\'3\'', NULL),
(2, 'TITLE 2', 'content', '\'s1\',\'s2\'', NULL, '\'a1\',\'a2\'', NULL),
(3, 'TITLE 3', 'hi', '\'s1\'', '[\'g\',\'grg\',\'rg\']', '\'g\'', NULL),
(4, 'TITLE 4', '// How to check if a number is the power of two or not.\n//By dividing by 2.\n#include <iostream>\n\nusing namespace std;\nint main()\n{\n    int n;\n    printf(\"Enter the number :\");\n    scanf(\"%d\",n);', '\'\',\'{\',\'{\',\'}\',\'{{printf(\"Number is power of 2 \\n\");}\'', '[\'if(n>0)\',\'if(n>=0)\',\'if(n>1)\'],[\'while(n%2 == 0)\',\'while(n%2!=0 && n>1)\',\'while(n%2)\'],[\'n/=2.00;\',\'n/=pow(2,n-1);\',\'n*=2;\'],[\'if(n == 1)\',\'if(n == 0)\',\'if(n != 1 && n !=0)\'],[\'if(n == 0 || n != 1)\',\'if( n == 1)\',\'if( n == 0 && n != 1)\']', '\'if(n>0)\',\'while(n%2 == 0)\',\'n/=2.00;\',\'if(n == 1)\',\'if(n == 0 || n != 1)\'', NULL),
(5, 'TITLE 5', ' hjvjhbkjblknlbkjbkj', '\' jhbvhj jk\',\'hjjh \',\'mhbhj\',\' vjhvjh\'', '[\'ppp\',\'kkk\',\'mmm\'],[\'456\',\'789\',\'123\'],[\'ggg\',\'nnn\',\'koj\'],[\'jhvhj\',\'mnbjh\',\'kjbj \']', '\'ppp\',\'123\',\'nnn\',\'mnbjh\'', NULL),
(6, 'TITLE 6', 'hello', '\'hello\'', '[\'ss\',\'dd\',\'ff\']', '\'ss\'', NULL),
(7, 'TITLE 7', 'grgregergergergerggr\r\ng\r\nregrenrekbgkerj ', 'grgregergergergerggr\r\ng\r\nregrenrekbgkerj ,\'ergregr\'', 'grgregergergergerggr\r\ng\r\nregrenrekbgkerj ,\'gregregre\',[\'ddd\',\'dee\',\'eee\']', '\'bfhbhrtgtrhth\',[\'1\',\'2\',\'3\'],\'eee\'', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Users`
--

CREATE TABLE `Users` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `roll` varchar(300) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `questions` varchar(300) DEFAULT NULL,
  `scores` varchar(300) DEFAULT NULL,
  `time` varchar(300) DEFAULT NULL,
  `year` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Users`
--

INSERT INTO `Users` (`id`, `name`, `roll`, `email`, `password`, `questions`, `scores`, `time`, `year`) VALUES
(1, 'Ramit', '101706126', 'ramitkaul@gmail.com', '$5$rounds=535000$Diqho28kLFnLAoYI$mMOGmGm6FmVWzwF..RVd0D6y6LV6dDZZawQedoUaDT1', '[7, 6, 4, 1, 3, 2, 5]', '21', '553', 2),
(3, 'Divya Prakash Mittal', '101706029', 'divyaprakashmittal@gmail.com', '$5$rounds=535000$T4MOCY8AiiFvQ.9a$ELtsT8zjfN0y8vU05m06rFh9UnzBtPTbG0RSV.wGDG.', '[6, 7, 5, 1, 3, 2, 4]', '24', '64', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Admin`
--
ALTER TABLE `Admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Leaderboard`
--
ALTER TABLE `Leaderboard`
  ADD PRIMARY KEY (`id`),
  ADD KEY `u_id` (`u_id`),
  ADD KEY `q_id` (`q_id`);

--
-- Indexes for table `Questions`
--
ALTER TABLE `Questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Admin`
--
ALTER TABLE `Admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `Leaderboard`
--
ALTER TABLE `Leaderboard`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;
--
-- AUTO_INCREMENT for table `Questions`
--
ALTER TABLE `Questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `Users`
--
ALTER TABLE `Users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `Leaderboard`
--
ALTER TABLE `Leaderboard`
  ADD CONSTRAINT `q_id` FOREIGN KEY (`q_id`) REFERENCES `Questions` (`id`),
  ADD CONSTRAINT `u_id` FOREIGN KEY (`u_id`) REFERENCES `Users` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
