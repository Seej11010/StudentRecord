-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 28, 2016 at 08:52 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbtest`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `Attendance_num` int(7) UNSIGNED NOT NULL,
  `stud_id` int(7) UNSIGNED NOT NULL,
  `professor_id` int(7) UNSIGNED NOT NULL,
  `attendance_score` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`Attendance_num`, `stud_id`, `professor_id`, `attendance_score`) VALUES
(1105301, 11053, 2001, 100),
(1105401, 11054, 2002, 86),
(1105501, 11055, 2003, 89),
(1105601, 11056, 2004, 98),
(1105701, 11057, 2005, 97);

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_id` int(7) UNSIGNED NOT NULL,
  `course_name` varchar(30) NOT NULL,
  `dept_id` int(7) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_id`, `course_name`, `dept_id`) VALUES
(11, 'Information Technology', 1),
(12, 'Computer Science', 2),
(13, 'Civil Engineering', 3),
(14, 'Mechanical Engineering', 5),
(15, 'Computer Engineering', 4);

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `dept_id` int(7) UNSIGNED NOT NULL,
  `dept_name` varchar(30) NOT NULL,
  `professor_id` int(7) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`dept_id`, `dept_name`, `professor_id`) VALUES
(1, 'IT DEPARTMENT', 2001),
(2, 'CS DEPARTMENT', 2004),
(3, 'CE Department', 2005),
(4, 'MPS Department', 2003),
(5, 'HSC Department', 2002);

-- --------------------------------------------------------

--
-- Table structure for table `finals`
--

CREATE TABLE `finals` (
  `stud_id` int(7) UNSIGNED NOT NULL,
  `professor_id` int(7) UNSIGNED NOT NULL,
  `finals_score` int(7) NOT NULL,
  `finals_num` int(7) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `finals`
--

INSERT INTO `finals` (`stud_id`, `professor_id`, `finals_score`, `finals_num`) VALUES
(11053, 2001, 75, 1105301),
(11054, 2002, 89, 1105401),
(11055, 2003, 76, 1105501),
(11056, 2004, 89, 1105601),
(11057, 2005, 86, 1105701);

-- --------------------------------------------------------

--
-- Table structure for table `midterm`
--

CREATE TABLE `midterm` (
  `stud_id` int(7) UNSIGNED NOT NULL,
  `professor_id` int(7) UNSIGNED NOT NULL,
  `midterm_score` int(7) NOT NULL,
  `midterm_num` int(7) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `midterm`
--

INSERT INTO `midterm` (`stud_id`, `professor_id`, `midterm_score`, `midterm_num`) VALUES
(11053, 2001, 89, 1105301),
(11054, 2002, 75, 1105401),
(11055, 2003, 85, 1105501),
(11056, 2004, 87, 1105601),
(11057, 2005, 81, 1105701);

-- --------------------------------------------------------

--
-- Table structure for table `professor`
--

CREATE TABLE `professor` (
  `professor_id` int(7) UNSIGNED NOT NULL,
  `professor_fname` varchar(30) NOT NULL,
  `professor_lname` varchar(30) NOT NULL,
  `salary` decimal(7,2) NOT NULL,
  `dept_id` int(7) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `professor`
--

INSERT INTO `professor` (`professor_id`, `professor_fname`, `professor_lname`, `salary`, `dept_id`) VALUES
(2001, 'Van Tristan', 'Calimlim', '30000.00', 1),
(2002, 'Rio', 'Aburido', '23000.00', 5),
(2003, 'Heland', 'Ortega', '21000.00', 2),
(2004, 'John Benedict', 'Enriquez', '18000.00', 3),
(2005, 'Marie Grace', 'Abing', '17500.00', 4);

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `stud_id` int(7) UNSIGNED NOT NULL,
  `professor_id` int(7) UNSIGNED NOT NULL,
  `quiz_score` int(7) NOT NULL,
  `quiz_num` int(7) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`stud_id`, `professor_id`, `quiz_score`, `quiz_num`) VALUES
(11053, 2001, 24, 1105301),
(11053, 2001, 24, 1105302),
(11054, 2002, 19, 1105401),
(11054, 2002, 23, 1105402),
(11055, 2003, 15, 1105501),
(11055, 2003, 25, 1105502),
(11056, 2004, 18, 1105601),
(11056, 2004, 19, 1105602),
(11057, 2005, 26, 1105701),
(11057, 2005, 14, 1105702);

-- --------------------------------------------------------

--
-- Table structure for table `seatwork`
--

CREATE TABLE `seatwork` (
  `stud_id` int(7) UNSIGNED NOT NULL,
  `professor_id` int(7) UNSIGNED NOT NULL,
  `seatwork_score` int(7) NOT NULL,
  `seatwork_num` int(7) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `seatwork`
--

INSERT INTO `seatwork` (`stud_id`, `professor_id`, `seatwork_score`, `seatwork_num`) VALUES
(11053, 2001, 18, 1105301),
(11053, 2001, 19, 1105302),
(11054, 2002, 14, 1105401),
(11054, 2002, 17, 1105402),
(11055, 2003, 16, 1105501),
(11055, 2003, 19, 1105502),
(11056, 2004, 11, 1105601),
(11056, 2004, 10, 1105602),
(11057, 2005, 13, 1105701),
(11057, 2005, 20, 1105702);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `stud_id` int(7) UNSIGNED NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `age` int(7) NOT NULL,
  `gender` varchar(30) NOT NULL,
  `birth_date` date NOT NULL,
  `professor_id` int(7) UNSIGNED NOT NULL,
  `course_id` int(7) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`stud_id`, `first_name`, `last_name`, `age`, `gender`, `birth_date`, `professor_id`, `course_id`) VALUES
(11053, 'Andrew', 'Leona', 17, 'Male', '1999-02-05', 2001, 11),
(11054, 'Rex', 'Baldonado', 17, 'Male', '1998-12-23', 2002, 12),
(11055, 'Kervin', 'Rollan', 17, 'Male', '1998-07-15', 2003, 13),
(11056, 'Eugene', 'Ingente', 18, 'Male', '1998-08-18', 2004, 14),
(11057, 'Chris ', 'Regodon', 19, 'Male', '1997-05-23', 2005, 15);

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `subject_id` int(7) UNSIGNED NOT NULL,
  `subject_name` varchar(30) NOT NULL,
  `professor_id` int(7) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`subject_id`, `subject_name`, `professor_id`) VALUES
(101, 'IT PROGRAMMING', 2001),
(102, 'INTRODUCTION TO RESEARCH', 2002),
(103, 'WEBDESIGN AND FUNDAMENTALS', 2003),
(104, 'DATABASE 1', 2004),
(105, 'PHYSICS 2', 2005);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`Attendance_num`),
  ADD KEY `prof_a_fk` (`professor_id`),
  ADD KEY `attendance_fk` (`stud_id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_id`),
  ADD KEY `dept_d_fk` (`dept_id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`dept_id`),
  ADD KEY `prof_d_fk` (`professor_id`) USING BTREE;

--
-- Indexes for table `finals`
--
ALTER TABLE `finals`
  ADD PRIMARY KEY (`finals_num`),
  ADD KEY `professor_f_fk` (`professor_id`),
  ADD KEY `finals_fk` (`stud_id`);

--
-- Indexes for table `midterm`
--
ALTER TABLE `midterm`
  ADD PRIMARY KEY (`midterm_num`),
  ADD KEY `midterm_fk` (`stud_id`),
  ADD KEY `prof_mt_fk` (`professor_id`);

--
-- Indexes for table `professor`
--
ALTER TABLE `professor`
  ADD PRIMARY KEY (`professor_id`),
  ADD KEY `dept_d_fk` (`dept_id`);

--
-- Indexes for table `quiz`
--
ALTER TABLE `quiz`
  ADD PRIMARY KEY (`quiz_num`),
  ADD KEY `professor_fk` (`professor_id`),
  ADD KEY `quiz_fk` (`stud_id`);

--
-- Indexes for table `seatwork`
--
ALTER TABLE `seatwork`
  ADD PRIMARY KEY (`seatwork_num`),
  ADD KEY `seatwork_fk` (`stud_id`),
  ADD KEY `prof_fk` (`professor_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`stud_id`),
  ADD KEY `PRO_FK` (`professor_id`),
  ADD KEY `course_s_fk` (`course_id`) USING BTREE;

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`subject_id`),
  ADD KEY `prof_p_fk` (`professor_id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `course_id` int(7) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `dept_id` int(7) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `professor`
--
ALTER TABLE `professor`
  MODIFY `professor_id` int(7) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2006;
--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `stud_id` int(7) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11058;
--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `subject_id` int(7) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendance`
--
ALTER TABLE `attendance`
  ADD CONSTRAINT `attendance_fk` FOREIGN KEY (`stud_id`) REFERENCES `student` (`stud_id`),
  ADD CONSTRAINT `prof_a_fk` FOREIGN KEY (`professor_id`) REFERENCES `professor` (`professor_id`),
  ADD CONSTRAINT `prof_f_fk` FOREIGN KEY (`professor_id`) REFERENCES `professor` (`professor_id`);

--
-- Constraints for table `department`
--
ALTER TABLE `department`
  ADD CONSTRAINT `prof_d_pk` FOREIGN KEY (`professor_id`) REFERENCES `professor` (`professor_id`),
  ADD CONSTRAINT `prof_s_pk` FOREIGN KEY (`professor_id`) REFERENCES `professor` (`professor_id`);

--
-- Constraints for table `finals`
--
ALTER TABLE `finals`
  ADD CONSTRAINT `finals_fk` FOREIGN KEY (`stud_id`) REFERENCES `student` (`stud_id`),
  ADD CONSTRAINT `professor_f_fk` FOREIGN KEY (`professor_id`) REFERENCES `professor` (`professor_id`);

--
-- Constraints for table `midterm`
--
ALTER TABLE `midterm`
  ADD CONSTRAINT `midterm_fk` FOREIGN KEY (`stud_id`) REFERENCES `student` (`stud_id`),
  ADD CONSTRAINT `prof_mt_fk` FOREIGN KEY (`professor_id`) REFERENCES `professor` (`professor_id`);

--
-- Constraints for table `quiz`
--
ALTER TABLE `quiz`
  ADD CONSTRAINT `professor_fk` FOREIGN KEY (`professor_id`) REFERENCES `professor` (`professor_id`),
  ADD CONSTRAINT `quiz_fk` FOREIGN KEY (`stud_id`) REFERENCES `student` (`stud_id`);

--
-- Constraints for table `seatwork`
--
ALTER TABLE `seatwork`
  ADD CONSTRAINT `prof_fk` FOREIGN KEY (`professor_id`) REFERENCES `professor` (`professor_id`),
  ADD CONSTRAINT `seatwork_fk` FOREIGN KEY (`stud_id`) REFERENCES `student` (`stud_id`);

--
-- Constraints for table `subject`
--
ALTER TABLE `subject`
  ADD CONSTRAINT `prof_s_fk` FOREIGN KEY (`professor_id`) REFERENCES `professor` (`professor_id`),
  ADD CONSTRAINT `prof_st_fk` FOREIGN KEY (`professor_id`) REFERENCES `professor` (`professor_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
