-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jun 28, 2024 at 01:38 AM
-- Server version: 5.7.39
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pos_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblcostumer`
--

CREATE TABLE `tblcostumer` (
  `cid` int(11) NOT NULL,
  `fname` varchar(200) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `sex` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `time` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblcostumer`
--

INSERT INTO `tblcostumer` (`cid`, `fname`, `lname`, `contact`, `sex`, `address`, `time`, `date`, `email`) VALUES
(1, 'Saddad', 'Nabbil', '08985560934', 'Male', 'Rangkasbitung', '07:29:20 PM', '29-04-2021', 'saddadnabbil@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `tblinvoice`
--

CREATE TABLE `tblinvoice` (
  `invoice_id` int(50) NOT NULL,
  `user` varchar(50) NOT NULL,
  `costumer` varchar(50) NOT NULL,
  `paid_amount` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `balance` varchar(50) NOT NULL,
  `sub_total` varchar(50) NOT NULL,
  `total_quantity` varchar(50) NOT NULL,
  `transaction_no` int(30) NOT NULL,
  `date` varchar(50) NOT NULL,
  `time` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblinvoice`
--

INSERT INTO `tblinvoice` (`invoice_id`, `user`, `costumer`, `paid_amount`, `status`, `balance`, `sub_total`, `total_quantity`, `transaction_no`, `date`, `time`) VALUES
(1, 'admin', 'Saddad', '0.0', 'Unpaid', '0.0', '20.0', '2', 13, '13-06-2024', '08:20:00 PM'),
(2, 'admin', 'Saddad', '2000', 'Paid', '1960.0', '40.0', '4.0', 14, '13-06-2024', '08:32:39 PM'),
(3, 'admin', 'Select Costumer', '100', 'Paid', '0.0', '100.0', '10', 15, '27-06-2024', '12:06:35 PM');

-- --------------------------------------------------------

--
-- Table structure for table `tbllog`
--

CREATE TABLE `tbllog` (
  `Logid` int(11) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `type` int(50) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbllog`
--

INSERT INTO `tbllog` (`Logid`, `Username`, `Password`, `type`) VALUES
(1, 'admin', 'admin', 1),
(2, 'User', 'User', 2),
(3, 'saddad', 'saddad', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblnum`
--

CREATE TABLE `tblnum` (
  `numid` int(11) NOT NULL,
  `value` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblnum`
--

INSERT INTO `tblnum` (`numid`, `value`) VALUES
(1, 15);

-- --------------------------------------------------------

--
-- Table structure for table `tblproduct`
--

CREATE TABLE `tblproduct` (
  `prod_id` int(11) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `bar_code` varchar(50) NOT NULL,
  `price` int(50) NOT NULL,
  `quantity` varchar(50) NOT NULL,
  `mark_up` int(50) NOT NULL,
  `exp_date` varchar(50) NOT NULL,
  `date` varchar(30) NOT NULL,
  `time` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblproduct`
--

INSERT INTO `tblproduct` (`prod_id`, `product_name`, `bar_code`, `price`, `quantity`, `mark_up`, `exp_date`, `date`, `time`) VALUES
(6, 'Chiki', '11-21', 10, '983.0', 3, '29-04-2021', '29-04-2021', '07:11:30 PM');

-- --------------------------------------------------------

--
-- Table structure for table `tblremove`
--

CREATE TABLE `tblremove` (
  `remove_id` int(11) NOT NULL,
  `remove_by` varchar(50) NOT NULL,
  `product_id` int(30) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `quantity` varchar(50) NOT NULL,
  `unit_price` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL,
  `time` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblremove`
--

INSERT INTO `tblremove` (`remove_id`, `remove_by`, `product_id`, `product_name`, `quantity`, `unit_price`, `date`, `time`) VALUES
(1, 'admin', 6, 'Chiki', '2', '10', '13-06-2024', '08:13:27 PM');

-- --------------------------------------------------------

--
-- Table structure for table `tblselling`
--

CREATE TABLE `tblselling` (
  `selling_id` int(11) NOT NULL,
  `product_id` int(100) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `quantity` varchar(50) NOT NULL,
  `total_price` varchar(50) NOT NULL,
  `unit_price` varchar(50) NOT NULL,
  `profit` varchar(50) NOT NULL,
  `date` varchar(30) NOT NULL,
  `time` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblselling`
--

INSERT INTO `tblselling` (`selling_id`, `product_id`, `product_name`, `quantity`, `total_price`, `unit_price`, `profit`, `date`, `time`) VALUES
(39, 6, 'Chiki', '2', '20.0', '10', '6.0', '13-06-2024', '08:14:08 PM'),
(40, 6, 'Chiki', '4', '40.0', '10', '12.0', '13-06-2024', '08:32:24 PM'),
(41, 6, 'Chiki', '10', '100.0', '10', '30.0', '27-06-2024', '12:04:51 PM');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblcostumer`
--
ALTER TABLE `tblcostumer`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `tblinvoice`
--
ALTER TABLE `tblinvoice`
  ADD PRIMARY KEY (`invoice_id`);

--
-- Indexes for table `tbllog`
--
ALTER TABLE `tbllog`
  ADD PRIMARY KEY (`Logid`);

--
-- Indexes for table `tblnum`
--
ALTER TABLE `tblnum`
  ADD PRIMARY KEY (`numid`);

--
-- Indexes for table `tblproduct`
--
ALTER TABLE `tblproduct`
  ADD PRIMARY KEY (`prod_id`);

--
-- Indexes for table `tblremove`
--
ALTER TABLE `tblremove`
  ADD PRIMARY KEY (`remove_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `tblselling`
--
ALTER TABLE `tblselling`
  ADD PRIMARY KEY (`selling_id`),
  ADD KEY `product_id_selling` (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblcostumer`
--
ALTER TABLE `tblcostumer`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblinvoice`
--
ALTER TABLE `tblinvoice`
  MODIFY `invoice_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbllog`
--
ALTER TABLE `tbllog`
  MODIFY `Logid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblnum`
--
ALTER TABLE `tblnum`
  MODIFY `numid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblproduct`
--
ALTER TABLE `tblproduct`
  MODIFY `prod_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblremove`
--
ALTER TABLE `tblremove`
  MODIFY `remove_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblselling`
--
ALTER TABLE `tblselling`
  MODIFY `selling_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tblremove`
--
ALTER TABLE `tblremove`
  ADD CONSTRAINT `product_id` FOREIGN KEY (`product_id`) REFERENCES `tblproduct` (`prod_id`);

--
-- Constraints for table `tblselling`
--
ALTER TABLE `tblselling`
  ADD CONSTRAINT `product_id_selling` FOREIGN KEY (`product_id`) REFERENCES `tblproduct` (`prod_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
