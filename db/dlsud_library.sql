-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 29, 2022 at 06:16 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dlsud_library`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `middlename` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `confirm_password` varchar(100) NOT NULL,
  `admin_image` varchar(100) NOT NULL,
  `admin_type` varchar(100) NOT NULL,
  `admin_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `firstname`, `middlename`, `lastname`, `username`, `password`, `confirm_password`, `admin_image`, `admin_type`, `admin_added`) VALUES
(4, 'Mark', '', 'Fatalla', 'mfadmin', 'mfadmin', 'mfadmin', 'FATALLA_MARK.jpg', 'Admin', '2022-06-27 10:57:06'),
(7, 'Kenn Carlo', '', 'Gutierrez', 'kgadmin', 'kgadmin', 'kgadmin', '', 'Admin', '2022-06-27 11:08:26'),
(8, 'Paolo Henry', '', 'Co', 'pcadmin', 'pcadmin', 'pcadmin', '', 'Admin', '2022-06-28 10:13:41');

-- --------------------------------------------------------

--
-- Table structure for table `allowed_book`
--

CREATE TABLE `allowed_book` (
  `allowed_book_id` int(11) NOT NULL,
  `qntty_books` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `allowed_book`
--

INSERT INTO `allowed_book` (`allowed_book_id`, `qntty_books`) VALUES
(1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `allowed_days`
--

CREATE TABLE `allowed_days` (
  `allowed_days_id` int(11) NOT NULL,
  `no_of_days` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `allowed_days`
--

INSERT INTO `allowed_days` (`allowed_days_id`, `no_of_days`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `barcode`
--

CREATE TABLE `barcode` (
  `barcode_id` int(11) NOT NULL,
  `pre_barcode` varchar(100) NOT NULL,
  `mid_barcode` int(100) NOT NULL,
  `suf_barcode` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barcode`
--

INSERT INTO `barcode` (`barcode_id`, `pre_barcode`, `mid_barcode`, `suf_barcode`) VALUES
(11, 'VNHS', 1, 'LMS'),
(12, 'DLSUD', 2, 'LMS'),
(13, 'DLSUD', 3, 'LMS'),
(14, 'DLSUD', 4, 'LMS'),
(15, 'DLSUD', 5, 'LMS'),
(16, 'DLSUD', 6, 'LMS'),
(17, 'DLSUD', 7, 'LMS'),
(18, 'DLSUD', 8, 'LMS'),
(19, 'DLSUD', 9, 'LMS'),
(20, 'DLSUD', 10, 'LMS'),
(21, 'DLSUD', 11, 'LMS'),
(22, 'DLSUD', 12, 'LMS');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `book_id` int(11) NOT NULL,
  `book_title` varchar(100) NOT NULL,
  `category_id` int(50) NOT NULL,
  `author` varchar(50) NOT NULL,
  `author_2` varchar(100) NOT NULL,
  `author_3` varchar(100) NOT NULL,
  `author_4` varchar(100) NOT NULL,
  `author_5` varchar(100) NOT NULL,
  `book_copies` int(11) NOT NULL,
  `book_pub` varchar(100) NOT NULL,
  `publisher_name` varchar(100) NOT NULL,
  `isbn` varchar(50) NOT NULL,
  `copyright_year` int(11) NOT NULL,
  `status` varchar(30) NOT NULL,
  `book_barcode` varchar(100) NOT NULL,
  `book_image` varchar(100) NOT NULL,
  `date_added` datetime NOT NULL,
  `remarks` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`book_id`, `book_title`, `category_id`, `author`, `author_2`, `author_3`, `author_4`, `author_5`, `book_copies`, `book_pub`, `publisher_name`, `isbn`, `copyright_year`, `status`, `book_barcode`, `book_image`, `date_added`, `remarks`) VALUES
(12, 'Python Programming, Fourth Edition', 11, 'Mark Lutz', '', '', '', '', 5, 'O Reilly Media, Inc', 'O Reilly Media, Inc', '978-0-596-15810-1', 0, 'Old', 'DLSUD2LMS', 'b1.png', '2022-06-28 11:09:31', 'Available'),
(13, 'Fundamentals of Java Programming', 11, 'Mitsunori Ogihara', '', '', '', '', 1, 'Springer Nature Switzerland AG', 'Springer Nature Switzerland AG', '978-3-319-89490-4', 2018, 'New', 'DLSUD3LMS', 'b2.jpg', '2022-06-28 11:10:35', 'Available'),
(14, 'The Grass is Always Greener', 7, 'Jeffrey Archer', '', '', '', '', 1, '', '', '978-1-860-92049-3', 2000, 'Old', 'DLSUD4LMS', 'b3.jpg', '2022-06-28 11:15:09', 'Available'),
(15, 'Absalom, Absalom!', 10, 'William Faulkner', '', '', '', '', 1, 'Random House', 'Random House', '0-679-73218-7', 1936, 'Old', 'DLSUD5LMS', 'b4.jpg', '2022-06-28 11:17:27', 'Available'),
(16, 'Beautiful World, Where Are You', 10, ' Sally Rooney', '', '', '', '', 4, 'Faber and Faber; Farrar, Straus and Giroux', 'Faber and Faber; Farrar, Straus and Giroux', '978-0-374-60260-4', 2021, 'New', 'DLSUD6LMS', 'b5.jpg', '2022-06-28 11:19:46', 'Available'),
(17, 'ENCYCLOPEDIA OF LIFE', 5, 'Richard Kelly', '', '', '', '', 4, 'Miles Kelly', 'Miles Kelly', '978-1-786-17020-0', 2017, 'New', 'DLSUD7LMS', 'b6.jpg', '2022-06-28 12:19:43', 'Available'),
(18, 'Ulysses', 7, 'James Joyce', '', '', '', '', 1, 'Shakespeare and Company', 'Shakespeare and Company', '978-6-558-02051-6', 1992, 'Old', 'DLSUD8LMS', 'b11.jpg', '2022-06-28 14:52:00', 'Available'),
(19, 'To Kill a Mockingbird: Threatening Boundaries', 10, 'Johnson, Claudia', '', '', '', '', 1, 'Twayne Publishers', 'Twayne Publishers', '0-8057-8068-8', 1994, 'Old', 'DLSUD9LMS', 'b7.jpg', '2022-06-28 14:53:00', 'Available'),
(20, 'Understanding To Kill a Mockingbird: A Student Casebook to Issues, Sources, and Historic Documents', 10, 'Claudia Johnson', '', '', '', '', 0, 'Greenwood Press', 'Greenwood Press', '0-313-29193-4', 1994, 'Old', 'DLSUD10LMS', 'b8.png', '2022-06-28 14:53:56', 'Not Available'),
(21, 'To Kill a Mockingbird', 10, 'Harper Lee', '', '', '', '', 2, 'HarperCollins', 'HarperCollins', '0-06-093546-4', 2002, 'Old', 'DLSUD11LMS', 'b9.jpg', '2022-06-28 14:54:46', 'Available'),
(22, 'Racism in Harper Lees To Kill a Mockingbird', 10, 'Candice Mancini', '', '', '', '', 1, 'The Gale Group', 'The Gale Group', '0-7377-3904-5', 2008, 'Old', 'DLSUD12LMS', 'b10.jpg', '2022-06-28 14:56:23', 'Available');

-- --------------------------------------------------------

--
-- Table structure for table `borrow_book`
--

CREATE TABLE `borrow_book` (
  `borrow_book_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `date_borrowed` datetime NOT NULL,
  `due_date` datetime NOT NULL,
  `date_returned` datetime NOT NULL,
  `borrowed_status` varchar(100) NOT NULL,
  `book_penalty` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `borrow_book`
--

INSERT INTO `borrow_book` (`borrow_book_id`, `user_id`, `book_id`, `date_borrowed`, `due_date`, `date_returned`, `borrowed_status`, `book_penalty`) VALUES
(10, 42, 12, '2022-06-28 12:12:11', '2022-07-05 12:12:11', '0000-00-00 00:00:00', 'borrowed', ''),
(11, 77, 17, '2022-06-28 14:12:20', '2022-07-05 14:12:20', '2022-06-28 14:34:03', 'returned', 'No Penalty'),
(12, 97, 13, '2022-06-28 15:08:01', '2022-06-29 15:08:01', '0000-00-00 00:00:00', 'borrowed', ''),
(13, 86, 15, '2022-06-28 15:17:38', '2022-06-29 15:17:38', '0000-00-00 00:00:00', 'borrowed', ''),
(14, 81, 20, '2022-06-29 11:57:06', '2022-06-30 11:57:06', '0000-00-00 00:00:00', 'borrowed', '');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `classname` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `classname`) VALUES
(1, 'Textbook'),
(2, 'English'),
(3, 'Math'),
(4, 'Science'),
(5, 'Encyclopedia'),
(6, 'Filipiniana'),
(7, 'Novel'),
(8, 'General'),
(9, 'References'),
(10, 'Literature'),
(11, 'Programming');

-- --------------------------------------------------------

--
-- Table structure for table `penalty`
--

CREATE TABLE `penalty` (
  `penalty_id` int(11) NOT NULL,
  `penalty_amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penalty`
--

INSERT INTO `penalty` (`penalty_id`, `penalty_amount`) VALUES
(1, 20);

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

CREATE TABLE `report` (
  `report_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `admin_name` varchar(100) NOT NULL,
  `detail_action` varchar(100) NOT NULL,
  `date_transaction` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `report`
--

INSERT INTO `report` (`report_id`, `book_id`, `user_id`, `admin_name`, `detail_action`, `date_transaction`) VALUES
(15, 12, 42, 'Mark  Fatalla', 'Borrowed Book', '2022-06-28 12:12:18'),
(16, 17, 77, 'Mark  Fatalla', 'Borrowed Book', '2022-06-28 14:12:23'),
(17, 17, 77, 'Mark  Fatalla', 'Returned Book', '2022-06-28 14:34:03'),
(18, 13, 97, 'Mark  Fatalla', 'Borrowed Book', '2022-06-28 15:08:10'),
(19, 15, 86, 'Mark  Fatalla', 'Borrowed Book', '2022-06-28 15:17:40'),
(20, 20, 81, 'Mark  Fatalla', 'Borrowed Book', '2022-06-29 11:57:09');

-- --------------------------------------------------------

--
-- Table structure for table `return_book`
--

CREATE TABLE `return_book` (
  `return_book_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `date_borrowed` datetime NOT NULL,
  `due_date` datetime NOT NULL,
  `date_returned` datetime NOT NULL,
  `book_penalty` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `return_book`
--

INSERT INTO `return_book` (`return_book_id`, `user_id`, `book_id`, `date_borrowed`, `due_date`, `date_returned`, `book_penalty`) VALUES
(6, 77, 17, '2022-06-28 14:12:20', '2022-07-05 14:12:20', '2022-06-28 14:33:49', 'No Penalty');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `school_number` varchar(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `middlename` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `level` varchar(100) NOT NULL,
  `section` varchar(100) NOT NULL,
  `user_image` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `user_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `school_number`, `firstname`, `middlename`, `lastname`, `contact`, `gender`, `address`, `type`, `level`, `section`, `user_image`, `status`, `user_added`) VALUES
(42, '201830970', 'Mark', '', 'Fatalla', '09952403623', 'Male', 'Dasmariñas, Cavite', 'Student', 'CPE', 'CPE42', '', 'Active', '2022-06-28 11:03:26'),
(74, '201830303', 'Kenn Carlo', '', 'Gutierrez', '09193264871', 'Male', 'Dasmariñas, Cavite', 'Student', 'CPE', 'CPE42', '', 'Active', '2022-06-28 13:17:19'),
(75, '201881667', 'Mylah', '', 'Pineda', '09125061297', 'Female', 'Imus, Cavite', 'Student', 'EE', 'ECE41', '', 'Active', '2022-06-28 13:22:45'),
(76, '201690131', 'Barto Ebrahim', '', 'Belleza', '09093780352', 'Male', 'Dasmariñas, Cavite', 'Student', 'CPE', 'CPE32', '', 'Active', '2022-06-28 13:23:22'),
(77, '202014523', 'Dean ', '', 'Salvador', '09058789382', 'Male', 'Alabang, Muntinlupa', 'Student', 'EE', 'ECE22', '', 'Active', '2022-06-28 13:23:50'),
(78, '201643890', 'Alexzander Gianna', '', 'Halili', '09088155208', 'Female', 'Dasmariñas, Cavite', 'Student', 'CPE', 'CPE41', '', 'Active', '2022-06-28 13:32:03'),
(79, '201833119', 'Johanne', '', 'Cervantes', '09192099326', 'Female', 'Alfonso, Cavite', 'Student', 'CE', 'BSA1', '', 'Active', '2022-06-28 13:32:32'),
(80, '201834590', 'Gerardo Edwin', '', 'Miedes', '09459199859', 'Male', 'Silang, Cavite', 'Student', 'CPE', 'CPE41', '', 'Active', '2022-06-28 13:33:05'),
(81, '201693031', 'Tonio', '', 'Malapitan', '09121843775', 'Male', 'Imus, Cavite', 'Student', 'ME', 'MMA41', '', 'Active', '2022-06-28 13:33:39'),
(82, '201681667', 'Carl', '', 'Legaspi', '09478547544', 'Male', 'Las Piñas, Las Piñas', 'Student', 'CPE', 'CPE42', '', 'Active', '2022-06-28 13:34:04'),
(83, '201830193', 'Jadyn', '', 'Montano', '09062851386', 'Female', 'Imus, Cavite', 'Student', 'CE', 'ARC42', '', 'Active', '2022-06-28 13:35:08'),
(84, '201849213', 'Rickey Nico ', '', 'Chaves', '09171577611', 'Male', 'Bacoor, Cavite', 'Student', 'CE', 'ARC41', '', 'Active', '2022-06-28 13:35:44'),
(85, '201841213', 'Nieve Maddison', '', 'Cachuela', '09091033598', 'Female', 'Dasmariñas, Cavite', 'Student', 'CPE', 'CPE41', '', 'Active', '2022-06-28 13:36:07'),
(86, '201863102', 'Franklin Jaron ', '', 'Domingo', '09524263273', 'Male', 'Alfonso, Cavite', 'Student', 'CE', 'BOM42', '', 'Active', '2022-06-28 13:37:01'),
(87, '201642112', 'Shae ', '', 'Roxas', '09137671258', 'Female', 'Baclaran, Parañaque', 'Student', 'CPE', 'CPE42', '', 'Active', '2022-06-28 13:37:59'),
(88, '201632134', 'Leonardo ', '', 'Mangalindan', '09971223048', 'Male', 'Dasmariñas, Cavite', 'Student', 'CPE', 'CPE42', '', 'Active', '2022-06-28 13:38:23'),
(89, '202031415', 'Ethan Leonel ', '', 'Kho', '09171637763', 'Male', 'Dasmariñas, Cavite', 'Student', 'CE', 'BSA21', '', 'Active', '2022-06-28 13:39:08'),
(90, '202011314', 'Reese', '', 'Ayala', '09068346283', 'Female', 'Dasmariñas, Cavite', 'Student', 'CE', 'BOM21', '', 'Active', '2022-06-28 13:39:35'),
(91, '201833131', 'Amanda Jena', '', 'Katigbak', '09080160289', 'Male', 'Dasmariñas, Cavite', 'Student', 'CPE', 'CPE42', '', 'Active', '2022-06-28 13:40:02'),
(92, '201841390', 'Jose ', '', 'Yao', '09145344619', 'Male', 'Dasmariñas, Cavite', 'Student', 'CPE', 'CPE42', '', 'Active', '2022-06-28 13:40:53'),
(93, '201851193', 'Astrid', '', 'Vargas', '09149860806', 'Male', 'Imus, Cavite', 'Student', 'EE', 'ECE41', '', 'Active', '2022-06-28 13:41:15'),
(94, '201683214', 'Andre Vernon', '', 'Felix', '09484502453', 'Male', 'Bacoor, Cavite', 'Student', 'CPE', 'CPE42', '', 'Active', '2022-06-28 13:41:44'),
(95, '201653123', 'Ileanna', '', 'Salonga', '09098479047', 'Female', 'Dasmariñas, Cavite', 'Student', 'CPE', 'CPE41', '', 'Active', '2022-06-28 13:42:26'),
(96, '201839401', 'Joey Alfonso ', '', 'Tugonon', '09053523799', 'Male', 'Imus, Cavite', 'Student', 'CPE', 'CPE41', '', 'Active', '2022-06-28 13:48:50'),
(97, '201630303', 'Paolo Henry', '', 'Co', '09206762297', 'Male', 'Las Piñas, Las Piñas', 'Student', 'CPE', 'CPE42', '', 'Active', '2022-06-28 13:49:17');

-- --------------------------------------------------------

--
-- Table structure for table `user_log`
--

CREATE TABLE `user_log` (
  `user_log_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `date_log` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `allowed_book`
--
ALTER TABLE `allowed_book`
  ADD PRIMARY KEY (`allowed_book_id`);

--
-- Indexes for table `allowed_days`
--
ALTER TABLE `allowed_days`
  ADD PRIMARY KEY (`allowed_days_id`);

--
-- Indexes for table `barcode`
--
ALTER TABLE `barcode`
  ADD PRIMARY KEY (`barcode_id`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `borrow_book`
--
ALTER TABLE `borrow_book`
  ADD PRIMARY KEY (`borrow_book_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`),
  ADD UNIQUE KEY `category_id` (`category_id`),
  ADD KEY `classid` (`category_id`);

--
-- Indexes for table `penalty`
--
ALTER TABLE `penalty`
  ADD PRIMARY KEY (`penalty_id`);

--
-- Indexes for table `report`
--
ALTER TABLE `report`
  ADD PRIMARY KEY (`report_id`);

--
-- Indexes for table `return_book`
--
ALTER TABLE `return_book`
  ADD PRIMARY KEY (`return_book_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_log`
--
ALTER TABLE `user_log`
  ADD PRIMARY KEY (`user_log_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `allowed_book`
--
ALTER TABLE `allowed_book`
  MODIFY `allowed_book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `allowed_days`
--
ALTER TABLE `allowed_days`
  MODIFY `allowed_days_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `barcode`
--
ALTER TABLE `barcode`
  MODIFY `barcode_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `borrow_book`
--
ALTER TABLE `borrow_book`
  MODIFY `borrow_book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=801;

--
-- AUTO_INCREMENT for table `penalty`
--
ALTER TABLE `penalty`
  MODIFY `penalty_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `report`
--
ALTER TABLE `report`
  MODIFY `report_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `return_book`
--
ALTER TABLE `return_book`
  MODIFY `return_book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3495;

--
-- AUTO_INCREMENT for table `user_log`
--
ALTER TABLE `user_log`
  MODIFY `user_log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
