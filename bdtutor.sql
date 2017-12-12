-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 05, 2017 at 11:58 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bdtutor`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_tutor`
--

CREATE TABLE `add_tutor` (
  `id` int(6) NOT NULL,
  `name` varchar(200) NOT NULL,
  `qualification` varchar(200) NOT NULL,
  `teaching_sub` varchar(200) NOT NULL,
  `are` varchar(200) NOT NULL,
  `img` varchar(50) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `add_tutor`
--

INSERT INTO `add_tutor` (`id`, `name`, `qualification`, `teaching_sub`, `are`, `img`, `mobile`, `email`) VALUES
(1, 'Ryhan Bijoy', 'M.Sc in Genetic Engg and Biotechnology, DU ', ' Math, General Math, ICT, Biology, Chemistry, Computer Science, ', ' ADABAR , BADDA , BANGSHAL , CANTONMENT , CHAKBAZAR , DHANMONDI ', 'img1.jpg', '01711111111', 'xyz@gmail.com'),
(2, 'Sazzad Hossain Sahed', 'M.Sc in Electrical and Electronics Engineering  ', ' Math, General Math, Chemistry, Higher Math, Physics ', '  DOUBLEMOORING , HALISHAHAR , KHULSHI , KOTWALI , PAHARTALI , PANCHLAISH ', 'img1.jpg', '01711111111', 'xyz@gmail.com'),
(3, 'Nazmushh Shakib ', ' LLB ', 'Eassy Writing, Bangla, English, General Math, Religion/ Islamiat, Social Science,', ' BIMANBANDAR , CANTONMENT , GULSHAN , KALABAGAN , KHILKHET , MIRPUR ', 'img2.jpg', '12345', 'xyz@example.com'),
(4, 'Kazi Ashraf', 'M.Sc in Electrical and Electronics Engineering', '', 'Dhaka', 'img2.jpg', '', 'xyz@example.com'),
(5, 'Kazi Ashraf', 'M.Sc in Electrical and Electronics Engineering', '', 'Dhaka', 'img2.jpg', '', 'xyz@example.com'),
(6, 'Kazi Ashraf', 'M.Sc in Electrical and Electronics Engineering', 'Finance', 'Mirpur', 'img2.jpg', '01711111111', 'xyz@example.com'),
(10, 'Noor Mohammad', 'BSc', 'ICT', 'Comilla', 'img2.jpg', '01711111111', 'noor@gmail.com'),
(11, 'Hossain Ali', 'BSc', 'ICT', 'Comilla', 'img2.jpg', '01733434343', 'hossain@gmail.com'),
(12, '', 'Qualification', 'Subject', '', 'img2.jpg', '', ''),
(13, 'selim Molla', 'BA', 'Bangla', 'comilla', 'img2.jpg', '12345678901', '');

-- --------------------------------------------------------

--
-- Table structure for table `guardian`
--

CREATE TABLE `guardian` (
  `id` int(6) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(11) NOT NULL,
  `password` varchar(50) NOT NULL,
  `area` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guardian`
--

INSERT INTO `guardian` (`id`, `name`, `email`, `number`, `password`, `area`) VALUES
(1, 'selim Molla', 'selim@gmail.com', '12345678901', '123456', 'comilla'),
(2, 'Kamal', 'k@gmail.com', '01717359979', '123455', 'Comilla');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(6) NOT NULL,
  `password` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `institute_name` varchar(100) NOT NULL,
  `class` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `password`, `username`, `name`, `mobile`, `institute_name`, `class`) VALUES
(1, '1234567', 'xero02pi', 'xero2pi', '01741005758', 'ccc', 'BA'),
(5, '123456', 'student', 'new Student', '12345678901', 'Dhaka College', 'Class 12');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `id` int(6) NOT NULL,
  `name` varchar(200) NOT NULL,
  `number` varchar(11) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `qualification` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`id`, `name`, `number`, `password`, `email`, `qualification`) VALUES
(6, 'zakir', '31823719823', '123', 'zakirr@gmail.com', 'MBA'),
(7, 'Hossain Ali', '01733434343', '123', 'hossain@gmail.com', 'BSc'),
(18, 'Hossain Ahmed', '01674320345', '123456', 'hossain@gmail.com', 'BSc'),
(19, 'bdtutor', '12345678901', '123456', 'admin@xyz.com', 'BA');

-- --------------------------------------------------------

--
-- Table structure for table `tutor_request`
--

CREATE TABLE `tutor_request` (
  `id` int(6) NOT NULL,
  `gurdian_name` varchar(50) NOT NULL,
  `gurdian_mobile` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `class` varchar(50) NOT NULL,
  `t_qualification` varchar(50) NOT NULL,
  `area` varchar(50) NOT NULL,
  `honorary` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tutor_request`
--

INSERT INTO `tutor_request` (`id`, `gurdian_name`, `gurdian_mobile`, `email`, `subject`, `class`, `t_qualification`, `area`, `honorary`) VALUES
(5, 'Kazi Ashraf', '01711111111111', '', 'ICT', '', 'BSc', 'Comilla', '3000 Tk - 5000Tk'),
(6, 'Abul Hossain', '32131', '', 'Accounting', '', 'BBA', 'Comilla', 'Bellow 3000 Tk'),
(7, 'selim Molla', '12345678901', '', 'Bangla', '', 'BSc', 'comilla', '5000tk -8000 tk'),
(8, 'selim Molla', '12345678901', '', 'English', '', 'MA', 'comilla', 'Bellow 3000 Tk'),
(9, 'selim Molla', '12345678901', '', 'ICT', '', 'BSc', 'comilla', '5000tk -8000 tk'),
(10, 'selim Molla', '12345678901', 'selim@gmail.com', 'Physic', '', 'BSc', 'comilla', 'Negotiable'),
(11, 'xero2pi', '01741005758', 'N/A', 'ICT', '', 'BSS', 'dhaka', '3000 Tk - 5000Tk'),
(12, 'xero2pi', '01741005758', 'N/A', 'ICT', 'BA', 'MSc', 'comilla', '5000tk -8000 tk'),
(13, 'new Student', '12345678901', 'N/A', 'Bangla', 'Class 12', 'BA', 'Dhaka', '5000tk -8000 tk'),
(14, 'selim Molla', '12345678901', 'selim@gmail.com', 'ICT', 'Class 6', 'BSc', 'comilla', '3000 Tk - 5000Tk');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(6) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  `usertype` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `password`, `usertype`) VALUES
(1, 'xyz@example.com', 'xyz', 'teacher'),
(2, 'admin@admin.com', 'admin', 'admin'),
(3, 'zakirr@gmail.com', '123', 'teacher'),
(15, 'hossain@gmail.com', '123456', 'teacher'),
(16, 'admin@xyz.com', '123456', 'teacher'),
(17, 'selim@gmail.com', '123456', 'guardian'),
(18, 'k@gmail.com', '123455', 'guardian'),
(19, 'xero02pi', '1234567', 'student'),
(20, 'xero02pi', '1234567', 'student'),
(21, 'xero02pi', '1234567', 'student'),
(22, 'xero02pi', '1234567', 'student'),
(23, 'student', '123456', 'student');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_tutor`
--
ALTER TABLE `add_tutor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guardian`
--
ALTER TABLE `guardian`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tutor_request`
--
ALTER TABLE `tutor_request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `add_tutor`
--
ALTER TABLE `add_tutor`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `guardian`
--
ALTER TABLE `guardian`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `tutor_request`
--
ALTER TABLE `tutor_request`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
