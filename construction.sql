-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 14, 2024 at 04:12 AM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `construction`
--

-- --------------------------------------------------------

--
-- Table structure for table `acc_details`
--

CREATE TABLE `acc_details` (
  `acc_id` int(50) NOT NULL,
  `acc_number` varchar(50) NOT NULL,
  `IFSC_code` varchar(50) NOT NULL,
  `holder_name` varchar(50) NOT NULL,
  `bank_name` varchar(50) NOT NULL,
  `u_id` int(10) NOT NULL,
  `role` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `acc_details`
--

INSERT INTO `acc_details` (`acc_id`, `acc_number`, `IFSC_code`, `holder_name`, `bank_name`, `u_id`, `role`) VALUES
(14, '8745215789654', '458815987455', 'rony', 'canara', 3, 'e');

-- --------------------------------------------------------

--
-- Table structure for table `contractors`
--

CREATE TABLE `contractors` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `pro_img` varchar(500) NOT NULL,
  `role` varchar(50) NOT NULL DEFAULT 'c'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contractors`
--

INSERT INTO `contractors` (`id`, `name`, `email`, `phone`, `address`, `password`, `pro_img`, `role`) VALUES
(3, 'punith', 'punith@gmail.com', '9663574891', ' mangalore', 'punith123', '360_F_364211147_1qgLVxv1Tcq0Ohz3FawUfrtONzz8nq3e.jpg', 'c'),
(4, 'jeevan', 'jeevan@gmail.com', '7845978164', ' bengalore', 'jeevan', 'features-2.jpg', 'c'),
(5, 'varun', 'varun@gmail.com', '784596248', ' Bengalure', 'varuna', 'team-5.jpg', 'c');

-- --------------------------------------------------------

--
-- Table structure for table `engineer`
--

CREATE TABLE `engineer` (
  `eng_ID` int(50) NOT NULL,
  `eng_name` varchar(50) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `proimage` varchar(500) NOT NULL,
  `password` varchar(500) NOT NULL,
  `email` varchar(50) NOT NULL,
  `role` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `engineer`
--

INSERT INTO `engineer` (`eng_ID`, `eng_name`, `contact`, `address`, `proimage`, `password`, `email`, `role`) VALUES
(1, 'sachin', '8451975642', 'anderi', 'team-3.jpg', 'sachin', 'sachin@gmail.com', 'e'),
(2, 'ashika', '8451975649', 'tana', 'services.jpg', 'ashika', 'ashika@gmail.com', 'e'),
(3, 'rony', '8451789846', 'tana', 'team-2.jpg', 'rony', 'rony@gmail.com', 'e'),
(4, 'vinay', '9845762145', 'mangalore', 'testimonials-4.jpg', 'vinay', 'vinay@gmail.com', 'e');

-- --------------------------------------------------------

--
-- Table structure for table `leave`
--

CREATE TABLE `leave` (
  `lea_ID` int(50) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `reason` varchar(50) NOT NULL,
  `Lstatus` int(50) NOT NULL DEFAULT '0',
  `wr_id` int(50) NOT NULL,
  `c_id` int(50) NOT NULL,
  `p_id` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `leave`
--

INSERT INTO `leave` (`lea_ID`, `from_date`, `to_date`, `reason`, `Lstatus`, `wr_id`, `c_id`, `p_id`) VALUES
(4, '2024-03-01', '2024-03-16', 'Type reason\r\njashdajs', 1, 3, 42, 3),
(5, '2014-05-01', '2014-06-05', 'Type reason\r\nfever', 0, 3, 42, 3);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `pay_id` int(50) NOT NULL,
  `amount` double NOT NULL,
  `from` varchar(50) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `p_id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `holder_id` int(11) NOT NULL,
  `role` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`pay_id`, `amount`, `from`, `status`, `p_id`, `u_id`, `holder_id`, `role`) VALUES
(6, 9e15, 'u', 0, 42, 5, 3, 'e');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `ebudget` int(50) NOT NULL,
  `e_id` varchar(60) NOT NULL,
  `address` varchar(50) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `u_id` int(11) NOT NULL,
  `up_id` int(11) NOT NULL,
  `c_id` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `name`, `start_date`, `end_date`, `ebudget`, `e_id`, `address`, `status`, `u_id`, `up_id`, `c_id`) VALUES
(42, 'hotel construction', '2024-03-01', '2024-03-23', 5000000, '1', 'bengalore', 7, 5, 6, 3),
(43, 'hotel construction', '2024-03-01', '2024-03-22', 70000000, '2', 'bengalore', 1, 5, 6, 0),
(44, 'hotel construction', '2024-03-01', '2024-04-04', 5000000, '3', 'bengalore', 1, 5, 6, 0),
(45, 'hotel construction', '1545-02-05', '9874-08-06', 60000, '3', 'honnavar', 2, 5, 9, 0),
(46, 'Bridge', '2003-02-05', '0012-05-31', 65000, '3', 'kasaragoda', 1, 4, 8, 0),
(47, 'school construction', '2024-03-01', '2024-03-24', 900000, '3', 'mangalore', 7, 5, 5, 3);

-- --------------------------------------------------------

--
-- Table structure for table `project_progress`
--

CREATE TABLE `project_progress` (
  `pg_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `p_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project_progress`
--

INSERT INTO `project_progress` (`pg_id`, `status`, `p_id`) VALUES
(19, 72, 47),
(20, 21, 42),
(21, 24, 45);

-- --------------------------------------------------------

--
-- Table structure for table `request`
--

CREATE TABLE `request` (
  `r_id` int(50) NOT NULL,
  `p_id` int(50) NOT NULL,
  `e_id` int(50) NOT NULL,
  `u_id` int(50) NOT NULL,
  `date` date NOT NULL,
  `r_status` int(11) NOT NULL DEFAULT '0',
  `budget` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `userrequest`
--

CREATE TABLE `userrequest` (
  `ur_id` int(50) NOT NULL,
  `project_name` varchar(50) NOT NULL,
  `period` int(50) NOT NULL,
  `budget` double NOT NULL,
  `address` varchar(50) NOT NULL,
  `u_id` int(50) NOT NULL,
  `ustatus` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userrequest`
--

INSERT INTO `userrequest` (`ur_id`, `project_name`, `period`, `budget`, `address`, `u_id`, `ustatus`) VALUES
(5, 'school construction', 6, 600000, 'mangalore', 5, 2),
(6, 'hotel construction', 6, 9000000, 'bengalore', 5, 2),
(7, 'college construction', 3, 7500000, 'punne', 5, 0),
(8, 'Bridge', 5, 6000000, 'kasaragoda', 4, 1),
(9, 'hotel construction', 3, 40000, 'honnavar', 5, 2);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `profile_image` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `role` varchar(50) NOT NULL DEFAULT 'u'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `phone`, `profile_image`, `address`, `role`) VALUES
(3, 'abhi', 'abhi', 'abhi@gmail.com', '7894875218', 'testimonials-5.jpg', 'kasaragoda', 'u'),
(4, 'arun', 'arun', 'arun@gmail.com', '9853245654', 'testimonials-1.jpg', 'kasaragoda', 'u'),
(5, 'ajeeth', 'ajeeth', 'ajeeth@gmail.com', '9875164789', 'testimonials-4.jpg', 'bengalore', 'u');

-- --------------------------------------------------------

--
-- Table structure for table `worker`
--

CREATE TABLE `worker` (
  `wor_ID` int(10) NOT NULL,
  `wor_name` varchar(50) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `email` varchar(60) NOT NULL,
  `password` varchar(60) NOT NULL,
  `profile_image` varchar(40) NOT NULL,
  `role` varchar(6) NOT NULL DEFAULT '',
  `position` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `worker`
--

INSERT INTO `worker` (`wor_ID`, `wor_name`, `contact`, `address`, `email`, `password`, `profile_image`, `role`, `position`) VALUES
(3, 'pradeep', '878125695', 'ahamadhabadha', 'pradeep@gmail.com', 'pradeep', 'testimonials-4.jpg', '', ''),
(4, 'praveen', '7845236984', 'bengalore', 'praveen@gmail.com', 'praveen', 'testimonials-4.jpg', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `worker_req`
--

CREATE TABLE `worker_req` (
  `wr_id` int(10) NOT NULL,
  `p_id` int(50) NOT NULL,
  `c_id` int(50) NOT NULL,
  `w_id` int(50) NOT NULL,
  `wstatus` int(50) NOT NULL DEFAULT '0',
  `e_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `worker_req`
--

INSERT INTO `worker_req` (`wr_id`, `p_id`, `c_id`, `w_id`, `wstatus`, `e_id`) VALUES
(12, 42, 3, 3, 1, 0),
(13, 42, 3, 4, 1, 0),
(14, 47, 3, 3, 1, 0),
(15, 47, 3, 4, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acc_details`
--
ALTER TABLE `acc_details`
  ADD PRIMARY KEY (`acc_id`);

--
-- Indexes for table `contractors`
--
ALTER TABLE `contractors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `engineer`
--
ALTER TABLE `engineer`
  ADD PRIMARY KEY (`eng_ID`);

--
-- Indexes for table `leave`
--
ALTER TABLE `leave`
  ADD PRIMARY KEY (`lea_ID`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`pay_id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_progress`
--
ALTER TABLE `project_progress`
  ADD PRIMARY KEY (`pg_id`);

--
-- Indexes for table `request`
--
ALTER TABLE `request`
  ADD PRIMARY KEY (`r_id`);

--
-- Indexes for table `userrequest`
--
ALTER TABLE `userrequest`
  ADD PRIMARY KEY (`ur_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `worker`
--
ALTER TABLE `worker`
  ADD PRIMARY KEY (`wor_ID`);

--
-- Indexes for table `worker_req`
--
ALTER TABLE `worker_req`
  ADD PRIMARY KEY (`wr_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `acc_details`
--
ALTER TABLE `acc_details`
  MODIFY `acc_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `contractors`
--
ALTER TABLE `contractors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `engineer`
--
ALTER TABLE `engineer`
  MODIFY `eng_ID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `leave`
--
ALTER TABLE `leave`
  MODIFY `lea_ID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `pay_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `project_progress`
--
ALTER TABLE `project_progress`
  MODIFY `pg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `request`
--
ALTER TABLE `request`
  MODIFY `r_id` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `userrequest`
--
ALTER TABLE `userrequest`
  MODIFY `ur_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `worker`
--
ALTER TABLE `worker`
  MODIFY `wor_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `worker_req`
--
ALTER TABLE `worker_req`
  MODIFY `wr_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
