-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 16, 2018 at 08:26 PM
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
  `u_id` int(11) NOT NULL,
  `q_id` int(11) NOT NULL,
  `score` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Questions`
--

CREATE TABLE `Questions` (
  `id` int(11) NOT NULL,
  `details` longtext,
  `s_point` longtext,
  `options` longtext,
  `answers` longtext,
  `bonus` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Questions`
--

INSERT INTO `Questions` (`id`, `details`, `s_point`, `options`, `answers`, `bonus`) VALUES
(1, NULL, NULL, NULL, '\'1\',\'2\',\'3\'', NULL),
(2, 'content', '\'s1\',\'s2\'', NULL, '\'a1\',\'a2\'', NULL),
(3, 'hi', '\'s1\'', '[\'g\',\'grg\',\'rg\']', '\'g\'', NULL),
(4, '// How to check if a number is the power of two or not.\n//By dividing by 2.\n#include <iostream>\n\nusing namespace std;\nint main()\n{\n    int n;\n    printf(\"Enter the number :\");\n    scanf(\"%d\",n);', '\'\',\'{\',\'{\',\'}\',\'        {\n            printf(\"Number is power of 2 \\n\");\n        }\n    }\'', '[\'if(n>0)\',\'if(n>=0)\',\'if(n>1)\'],[\'while(n%2 == 0)\',\'while(n%2!=0 && n>1)\',\'while(n%2)\'],[\'n/=2.00;\',\'n/=pow(2,n-1);\',\'n*=2;\'],[\'if(n == 1)\',\'if(n == 0)\',\'if(n != 1 && n !=0)\'],[\'if(n == 0 || n != 1)\',\'if( n == 1)\',\'if( n == 0 && n != 1)\']', '\'if(n>0)\',\'while(n%2 == 0)\',\'n/=2.00;\',\'if(n == 1)\',\'if(n == 0 || n != 1)\'', NULL),
(5, ' hjvjhbkjblknlbkjbkj', '\' jhbvhj jk\',\'hjjh \',\'mhbhj\',\' vjhvjh\'', '[\'ppp\',\'kkk\',\'mmm\'],[\'456\',\'789\',\'123\'],[\'ggg\',\'nnn\',\'koj\'],[\'jhvhj\',\' mnbjh\',\'kjbj \']', '\'ppp\',\'123\',\'nnn\',\'mnbjh\'', NULL);

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
  `scores` int(11) DEFAULT NULL,
  `time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Users`
--

INSERT INTO `Users` (`id`, `name`, `roll`, `email`, `password`, `scores`, `time`) VALUES
(1, 'Ramit', '101706126', 'ramitkaul@gmail.com', '$5$rounds=535000$Diqho28kLFnLAoYI$mMOGmGm6FmVWzwF..RVd0D6y6LV6dDZZawQedoUaDT1', NULL, NULL),
(2, 'google', '101706127', 'google@gmail.com', '$5$rounds=535000$9YfcLl23UY5x5D8b$jBdFhicdu2uBs132kIp.POQXrcxLK9AqyDSwr8uZ4kA', NULL, NULL);

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
-- AUTO_INCREMENT for table `Questions`
--
ALTER TABLE `Questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `Users`
--
ALTER TABLE `Users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
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
