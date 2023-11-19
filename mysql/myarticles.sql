-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 03, 2023 at 01:37 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `finalpds`
--

-- --------------------------------------------------------

--
-- Table structure for table `accs_hist`
--

CREATE TABLE `accs_hist` (
  `accs_id` int(11) NOT NULL,
  `accs_date` date NOT NULL,
  `accs_prsn` varchar(3) NOT NULL,
  `accs_added` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ajax_example`
--

CREATE TABLE `ajax_example` (
  `name` varchar(50) NOT NULL,
  `age` int(11) NOT NULL,
  `sex` varchar(1) NOT NULL,
  `wpm` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `img_dataset`
--

CREATE TABLE `img_dataset` (
  `img_id` int(11) NOT NULL,
  `img_person` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `points`
--

CREATE TABLE `points` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `Prenom` varchar(50) NOT NULL,
  `Points` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `points`
--

INSERT INTO `points` (`id`, `name`, `Prenom`, `Points`) VALUES
(2, 'yub', 'hjj', 23);

-- --------------------------------------------------------

--
-- Table structure for table `produit`
--

CREATE TABLE `produit` (
  `id` int(11) NOT NULL,
  `classification` varchar(250) NOT NULL,
  `type` varchar(250) NOT NULL,
  `datecurr` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `prs_mstr`
--

CREATE TABLE `prs_mstr` (
  `prs_nbr` varchar(3) NOT NULL,
  `prs_name` varchar(50) NOT NULL,
  `prs_skill` varchar(30) NOT NULL,
  `prs_active` varchar(1) NOT NULL DEFAULT 'Y',
  `prs_added` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `ID` int(10) NOT NULL,
  `First_Name` varchar(100) NOT NULL,
  `Last_Name` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Password` int(100) NOT NULL,
  `File` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`ID`, `First_Name`, `Last_Name`, `Email`, `Password`, `File`) VALUES
(1, 'ayoub', 'smayenn', 'famousmeyub@gmail.com', 0, '11870_yumsmarty.jpg'),
(2, 'mahdi', 'smayen', 'mahdi@gmail.com', 0, '18121_yumsmarty.jpg'),
(3, 'ayoub', 'smayenn', 'ayoubo@example.com', 0, '27525_on_led.jpg'),
(4, 'ayoub2', 'smayenn2', 'ghada@gmail.com', 0, '69000_on_led.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `resetpasswords`
--

CREATE TABLE `resetpasswords` (
  `id` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `resetpasswords`
--

INSERT INTO `resetpasswords` (`id`, `code`, `email`) VALUES
(5, '1645025ac5905e', 'famouemeyub@gmail.com'),
(6, '1645028302b1bf', 'famousmeyub@gmail.com'),
(7, '1645034ed627ba', 'famousmeyub@gmail.coom'),
(8, '16450355adf161', 'famousmeyub@gmail.com'),
(9, '164503596768c6', 'famousmeyub@gmail.com'),
(10, '16450361c69bb2', 'famousmeyub@gmail.com'),
(11, '1645036794ebc5', 'famousmeyub@gmail.com'),
(12, '1645036ad0e580', 'famousmeyub@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fname` varchar(255) DEFAULT NULL,
  `lname` varchar(255) DEFAULT NULL,
  `username` varchar(300) DEFAULT NULL,
  `email` varchar(300) DEFAULT NULL,
  `password` varchar(300) DEFAULT NULL,
  `date` date NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `reset_link_token` varchar(255) NOT NULL,
  `exp_date` varchar(255) NOT NULL,
  
  `token` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fname`, `lname`, `username`, `email`, `password`, `date`, `image`, `reset_link_token`, `exp_date`, `token`) VALUES
(1, 'ayoub', 'smayenn', 'boubou', 'ayoubo147@gmail.com', '$2y$04$MlSQeolEl2WlHfPIDpSj9uZFriOWz0NeaRMHIw1KoN0nGg73UtbPW', '2023-04-28', NULL, '', '', 0),
(2, 'ayoub', 'smayenn', 'ayoubo', 'ayoubo@example.com', '$2y$04$1bVIfjV4EOZgP4FOJgOh6eLbdYWI7m/adlkyOYc9M/5YI/OEeyyoK', '2023-04-28', NULL, '', '', 0),
(3, 'ayoubop', 'smayenn', 'ayoubo2', 'famousmeyub@gmail.com', '$2y$04$qBlatJYoE50sQzyFU7DauOdJTGcF8it3sOj8z/K0gvbJPw3ICptZu', '2023-04-28', NULL, 'c78f59ff102bc6c1bca52d3751ea36c33326', '2023-05-03 04:28:08', 0),
(4, 'ayoub', 'smayenn', 'boubou147', 'boubou@gmail.com', '$2y$04$eJ8Hvg2B4OvB8KNF5.QVxuk.88UJbs8oSYrZcebe41t/zVH/Zzzzi', '2023-04-29', NULL, '', '', 0),
(5, 'ayoubo', 'smayennnn', 'boubou11', 'ayoubo14722@gmail.com', '$2y$04$WBzDaBEEc6luYHG8lmxLYuWxi7Fd0qDHI6iVPVNunECrA5n1er7xi', '2023-05-03', NULL, '', '', 0),
(6, 'bannouri', 'ghada', 'ghadaa', 'ghada@gmail.com', '$2y$04$R2.bws3P0lt2w46hAFZ5auQvzuxCx4YXmJ.7CFskyqJwcMzH6LC2K', '2023-05-03', NULL, '', '', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accs_hist`
--
ALTER TABLE `accs_hist`
  ADD PRIMARY KEY (`accs_id`),
  ADD KEY `accs_date` (`accs_date`);

--
-- Indexes for table `ajax_example`
--
ALTER TABLE `ajax_example`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `img_dataset`
--
ALTER TABLE `img_dataset`
  ADD PRIMARY KEY (`img_id`);

--
-- Indexes for table `points`
--
ALTER TABLE `points`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produit`
--
ALTER TABLE `produit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prs_mstr`
--
ALTER TABLE `prs_mstr`
  ADD PRIMARY KEY (`prs_nbr`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `resetpasswords`
--
ALTER TABLE `resetpasswords`
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
-- AUTO_INCREMENT for table `accs_hist`
--
ALTER TABLE `accs_hist`
  MODIFY `accs_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `points`
--
ALTER TABLE `points`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `produit`
--
ALTER TABLE `produit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `resetpasswords`
--
ALTER TABLE `resetpasswords`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
