-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 25, 2019 at 03:42 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hoteldb`
--

-- --------------------------------------------------------

--
-- Table structure for table `accountgroup`
--

CREATE TABLE `accountgroup` (
  `titleid` int(2) DEFAULT NULL,
  `groupname` varchar(23) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `accountgroup`
--

INSERT INTO `accountgroup` (`titleid`, `groupname`) VALUES
(1, 'Bank Accounts'),
(2, 'Bank OCC A/c'),
(3, 'Bank OD A/c'),
(4, 'Branch/ Division'),
(5, 'Cash-in-hand'),
(6, 'Current Assets'),
(7, 'Current Liabilities'),
(8, 'Deposits (Asset)'),
(9, 'Direct Expenses'),
(10, 'Direct Incomes'),
(11, 'Duties & Taxes'),
(12, 'Expenses (Direct)'),
(13, 'Expenses (Indirect)'),
(14, 'Fixed Assets'),
(15, 'Income  (Direct)'),
(16, 'Income (Indirect)'),
(17, 'Indirect Expenses'),
(18, 'Indirect Incomes'),
(19, 'Investments'),
(20, 'Loans & Advance (Asset)'),
(21, 'Loans (Liability)'),
(22, 'Misc. Expenses (Asset)'),
(23, 'Provisions'),
(24, 'Purchase Accounts'),
(25, 'Reserves & Surplus'),
(26, 'Retained Earnings'),
(27, 'Sales Account'),
(28, 'Secured Loans'),
(29, 'Stock-in-hand'),
(30, 'Sundry Creditors'),
(31, 'Sundry Debtors'),
(32, 'Suspense A/c'),
(33, 'Unsecured Loans');

-- --------------------------------------------------------

--
-- Table structure for table `accountinformation`
--

CREATE TABLE `accountinformation` (
  `id` int(11) NOT NULL,
  `accountname` varchar(200) NOT NULL,
  `alias` varchar(200) DEFAULT NULL,
  `printname` varchar(200) DEFAULT NULL,
  `accountgroup` int(11) NOT NULL,
  `address` varchar(200) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `telno` varchar(100) DEFAULT NULL,
  `fax` varchar(100) DEFAULT NULL,
  `mobileno` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `contactperson` varchar(100) DEFAULT NULL,
  `accountno` varchar(100) DEFAULT NULL,
  `panno` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accountinformation`
--

INSERT INTO `accountinformation` (`id`, `accountname`, `alias`, `printname`, `accountgroup`, `address`, `country`, `telno`, `fax`, `mobileno`, `email`, `contactperson`, `accountno`, `panno`) VALUES
(60, 'Electricity Charge', 'Electricity Charge', 'Electricity Charge', 13, 'Butwal', 'Nepal', '0', '0', '9867784128', 'neabutwal@gmail.com', 'Nepal Electricity Authority', NULL, '0'),
(61, 'Internet Charge', 'Internet Charge', 'Internet Charge', 13, 'Butwal', 'Nepal', '0', '0', '0', 'worldlink@gmail.com', 'Naresh Pun', NULL, '0'),
(62, 'Salary A/C', 'Salary A/C', 'Salary A/C', 9, '0', '0', '0', '0', '0', '0', '0', NULL, '0'),
(64, 'Cash Account', 'Cash A/C', 'Cash Account', 5, '0', '0', '0', '0', '0', '0', '0', NULL, '0'),
(65, 'Dhurba Uncle', 'Dhurbha', '0', 31, 'Saljhandi', '0', '0', '0', '0', '0', '0', NULL, '0'),
(66, 'Rent Charge', 'Rent Charge', 'Rent Charge', 17, '0', '0', '0', '0', '0', '0', '0', NULL, '0'),
(67, 'Telephone Charge', '0', 'Telephone Charge', 17, '0', '0', '0', '0', '0', '0', '0', NULL, '0'),
(68, 'Bus of Dang', 'Bus of Dang', 'Bus of Dang', 31, '0', '0', '0', '0', '0', '0', '0', NULL, '0'),
(69, 'shailesh kandel', 'skfj', 'ada', 1, 'butwal', 'nepal', '3004304', '', '9867784128', 'shaileshkandel123@gmail.com', 'shialesh kandel', '2323', '121212'),
(70, 'sunil dai', '', '', 6, 'khaireni', 'nepal', '343434', '343434', '9867784128', 'shaileshkandel123@gmail.com', 'sunil gc', NULL, '2323'),
(71, 'poudel dai', '', '', 12, 'butwal', 'nepal', '22030203', '232324', '903490394', 'shaileshkandel123@gmail.com', 'laxman poudel', NULL, '232323'),
(72, '', '', '', 0, '', '', '', '', '', '', '', NULL, ''),
(73, 'Rabin', 'Rabin', 'Rabin', 31, 'Traffic Chowk', 'Nepal', '', '', '9890223233', 'shaileshkandel123@gmail.com', 'Rabin', NULL, '12121212'),
(74, 'Bikash Sapkota', 'Bikashe', 'Bikashe', 31, 'Butwal', 'Nepal', '', '', '', 'bikash123@gmail.com', 'Bikash Sapkota', NULL, '23232323'),
(80, 'kkj', '', '', 0, '', '', '', '', '', '', 'kkk', NULL, ''),
(81, 'Deepak Thekdaar', 'd', 'D', 31, 'Sainamaina-10', 'Nepal', '', '', '9817439988', '', 'Deepak Thekdaar', NULL, ''),
(82, 'laxman poudel', 'dai', '', 31, 'sainamaina 10', 'nepal', '', '', '9857070360', '', 'laxman poudel', NULL, ''),
(83, 'rishi dhuwani', '', '', 30, 'Sainamaina-10, Vachkai', 'Nepal', '', '', '', '', 'Rishiram Sapkota', NULL, ''),
(84, 'Pranil GC', 'Pranil', 'Pranil', 30, 'Khaireni', 'Nepal', '', '', '9862240058', '', 'Pranil GC', NULL, ''),
(85, 'Salary', 'Salary', 'Salary', 13, '', '', '', '', '', '', 'ANSU TECH', NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `adminlist`
--

CREATE TABLE `adminlist` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `mobileno` varchar(50) NOT NULL,
  `businessname` varchar(200) DEFAULT NULL,
  `pvno` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adminlist`
--

INSERT INTO `adminlist` (`id`, `name`, `address`, `mobileno`, `businessname`, `pvno`) VALUES
(1, 'shaileshkandel', 'Saljhandi', '9867784128', 'Software Engineer', '22323');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` int(11) NOT NULL,
  `e_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `attendance` tinyint(1) NOT NULL,
  `OT` int(11) NOT NULL,
  `OSV` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`id`, `e_id`, `name`, `date`, `attendance`, `OT`, `OSV`) VALUES
(1, 1, 'Pranil', '0000-00-00', 30, 10, 2),
(154, 1, 'Pranil', '2019-05-22', 0, 1, 2),
(155, 2, 'Shailesh', '2019-05-22', 1, 2, 3),
(156, 3, 'sunil', '2019-05-22', 1, 5, 0),
(157, 4, 'sunil', '2019-05-22', 1, 10, 0),
(158, 5, 'Pranil GC', '2019-05-22', 1, 1, 0),
(159, 6, 'Pranil GC', '2019-05-22', 1, 0, 0),
(160, 1, 'Pranil', '2019-05-20', 1, 0, 0),
(161, 2, 'Shailesh', '2019-05-20', 1, 0, 0),
(162, 3, 'sunil', '2019-05-20', 1, 0, 0),
(163, 4, 'sunil', '2019-05-20', 0, 0, 0),
(164, 5, 'Pranil GC', '2019-05-20', 1, 0, 0),
(165, 6, 'Pranil GC', '2019-05-20', 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `billingdetails`
--

CREATE TABLE `billingdetails` (
  `id` int(11) NOT NULL,
  `billno` bigint(20) NOT NULL,
  `rthtype` varchar(30) NOT NULL,
  `rthname` varchar(100) NOT NULL,
  `customername` varchar(300) NOT NULL,
  `address` varchar(300) NOT NULL,
  `totalamount` double NOT NULL,
  `servicecharge` double NOT NULL,
  `discountpercent` double NOT NULL,
  `discountamount` double NOT NULL,
  `grandtotal` double NOT NULL,
  `paymentreceived` double NOT NULL,
  `balancedue` double NOT NULL,
  `salesdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `billingdetails`
--

INSERT INTO `billingdetails` (`id`, `billno`, `rthtype`, `rthname`, `customername`, `address`, `totalamount`, `servicecharge`, `discountpercent`, `discountamount`, `grandtotal`, `paymentreceived`, `balancedue`, `salesdate`) VALUES
(25, 72264001, 'table', 'table2', 'Pranil G.C', 'Saljhandi', 5200, 0, 0, 0, 5200, 5500, 300, '2076-01-10'),
(33, 107997220, 'table', 'table1', '', '', 800, 0, 200, 0, 600, 1000, 400, '2076-01-10'),
(27, 153310793, 'table', 'table1', 'Shailesh', 'adkfja', 1600, 0, 0, 0, 1600, 1800, 200, '2076-01-10'),
(38, 256690331, 'table', 'table1', '', '', 1920, 0, 0, 0, 1920, 2000, 80, '2076-05-09'),
(35, 383062949, 'table', 'table1', 'Shailesh', 'Saljhandi', 1200, 0, 0, 0, 1200, 1500, 300, '2076-01-10'),
(32, 393617324, 'table', 'table1', 'Pranil Chhetri', 'Saljhandi', 5600, 0, 0, 0, 5600, 6000, 400, '2076-01-10'),
(31, 411462584, 'table', 'table1', 'Pranil Chhetri', 'Saljhandi', 5600, 0, 0, 0, 5600, 6000, 400, '2076-01-10'),
(37, 412299946, 'table', 'table2', '', '', 7200, 0, 0, 0, 7200, 8000, 800, '2076-05-09'),
(34, 453937687, 'table', 'table2', 'Sunil GC', 'Sunwal', 300, 0, 0, 0, 300, 500, 200, '2076-01-10'),
(36, 454840435, 'table', 'table2', '', '', 1160, 200, 100, 0, 1260, 1500, 240, '2076-01-13'),
(39, 521206099, 'table', 'table5', '', '', 1200, 0, 0, 0, 1200, 2000, 800, '2076-05-09'),
(40, 558403775, 'table', 'table1', '', '', 1200, 0, 0, 0, 1200, 1500, 300, '2076-05-10'),
(28, 641759580, 'table', 'table1', '', '', 5600, 0, 0, 0, 5600, 6000, 400, '2076-01-10'),
(29, 696736603, 'table', 'table1', 'Sunil G.C', 'Saljhandi', 1600, 0, 0, 0, 1600, 2000, 400, '2076-01-10'),
(26, 832492658, 'table', 'table2', 'Sunil G.C', 'Saljhandi', 6600, 0, 0, 0, 6600, 7000, 400, '2076-01-10'),
(30, 947107971, 'table', 'table3', 'Sunil G.C', 'Saljhandi', 3200, 0, 0, 0, 3200, 3500, 300, '2076-01-10');

-- --------------------------------------------------------

--
-- Table structure for table `billtable`
--

CREATE TABLE `billtable` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `itemname` varchar(200) NOT NULL,
  `quantity` double NOT NULL,
  `price` double NOT NULL,
  `amount` double NOT NULL,
  `salesdate` date NOT NULL DEFAULT '2075-03-31',
  `billno` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `billtable`
--

INSERT INTO `billtable` (`id`, `name`, `itemname`, `quantity`, `price`, `amount`, `salesdate`, `billno`) VALUES
(1, 'table1', 'Pepsi', 13, 40, 520, '2076-01-10', 256690331),
(2, 'table2', 'Pepsi', 4, 40, 160, '2076-01-10', 454840435),
(3, 'table1', 'sekuwa', 4, 100, 400, '2076-01-13', 256690331),
(4, 'table2', 'nayaitem', 5, 200, 1000, '2076-01-13', 454840435),
(5, 'table1', 'nayaitem', 5, 200, 1000, '2076-01-23', 256690331),
(7, 'table2', 'Pepsi', 30, 40, 1200, '2076-05-09', 412299946),
(8, 'table2', 'nayaitem', 30, 200, 6000, '2076-05-09', 412299946),
(10, 'table5', 'Pepsi', 30, 40, 1200, '2076-05-09', 521206099),
(11, 'table1', 'Pepsi', 30, 40, 1200, '2076-05-10', 558403775),
(20, 'table2', 'Pepsi', 30, 40, 1200, '2076-01-10', 72264001),
(21, 'table2', 'sekuwa', 40, 100, 4000, '2076-01-10', 72264001),
(22, 'table2', 'Pepsi', 40, 40, 1600, '2076-01-10', 832492658),
(23, 'table2', 'sekuwa', 50, 100, 5000, '2076-01-10', 832492658),
(24, 'table1', 'Pepsi', 40, 40, 1600, '2076-01-10', 153310793),
(25, 'table1', 'Pepsi', 40, 40, 1600, '2076-01-10', 641759580),
(26, 'table1', 'sekuwa', 40, 100, 4000, '2076-01-10', 641759580),
(27, 'table1', 'Pepsi', 40, 40, 1600, '2076-01-10', 696736603),
(28, 'table3', 'Pepsi', 80, 40, 3200, '2076-01-10', 947107971),
(29, 'table1', 'Pepsi', 40, 40, 1600, '2076-01-10', 411462584),
(30, 'table1', 'sekuwa', 40, 100, 4000, '2076-01-10', 411462584),
(31, 'table1', 'Pepsi', 40, 40, 1600, '2076-01-10', 393617324),
(32, 'table1', 'sekuwa', 40, 100, 4000, '2076-01-10', 393617324),
(33, 'table1', 'Pepsi', 5, 40, 200, '2076-01-10', 107997220),
(34, 'table2', 'sekuwa', 3, 100, 300, '2076-01-10', 453937687),
(35, 'table1', 'nayaitem', 3, 200, 600, '2076-01-10', 107997220),
(36, 'table1', 'Pepsi', 30, 40, 1200, '2076-01-10', 383062949);

-- --------------------------------------------------------

--
-- Table structure for table `categorydetails`
--

CREATE TABLE `categorydetails` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `taxtype` varchar(100) NOT NULL,
  `taxamount` double NOT NULL,
  `discounttype` varchar(50) NOT NULL,
  `discount` double NOT NULL,
  `taxactive` varchar(50) NOT NULL,
  `discountactive` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categorydetails`
--

INSERT INTO `categorydetails` (`id`, `name`, `taxtype`, `taxamount`, `discounttype`, `discount`, `taxactive`, `discountactive`) VALUES
(1, 'Kitchen Items', 'vat', 10, 'fixedcategory', 10, 'on', 'on'),
(2, 'New Items', 'vat', 20, 'percentcategory', 20, 'Yes', 'Yes'),
(3, 'Naya Category', 'vat', 20, 'fixedcategory', 4, 'Yes', 'Yes'),
(4, 'SKjs', 'vat', 20, 'Fixed', 200, 'No', 'No'),
(5, 'kakd', 'vat', 10, 'Fixed', 300, 'No', 'Yes'),
(6, 'kjkjk', 'vat', 99, 'Fixed', 9, 'Yes', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `contratable`
--

CREATE TABLE `contratable` (
  `id` int(11) NOT NULL,
  `bankname` varchar(100) DEFAULT NULL,
  `accountno` varchar(100) DEFAULT NULL,
  `accountgroup` int(11) DEFAULT NULL,
  `money` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contratable`
--

INSERT INTO `contratable` (`id`, `bankname`, `accountno`, `accountgroup`, `money`) VALUES
(1, 'siddhartha', '2323', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customerlist`
--

CREATE TABLE `customerlist` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `mobileno` varchar(50) NOT NULL,
  `businessname` varchar(200) DEFAULT NULL,
  `pvno` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customerlist`
--

INSERT INTO `customerlist` (`id`, `name`, `address`, `mobileno`, `businessname`, `pvno`) VALUES
(33, 'Shailesh Kandel', 'Saljhandi-10', '9867784128', 'ANSU Techs', '23232'),
(34, 'Pranil G.C', 'Khaireni-12', '9867784128', 'SKjdks', '3232'),
(35, 'Sunil G.C', 'Bhumahi', '985703319', 'ANSU TECH', '23232'),
(39, 'Madhav Chhetri', 'Ganeshnagar', '9804402323', 'ANSU NT', '2323');

-- --------------------------------------------------------

--
-- Table structure for table `days_of_attendance`
--

CREATE TABLE `days_of_attendance` (
  `id` int(11) NOT NULL,
  `e_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `days_of_attendance`
--

INSERT INTO `days_of_attendance` (`id`, `e_id`, `date`, `status`) VALUES
(1, 1, '2019-05-01', 1),
(2, 1, '2019-05-02', 1),
(3, 1, '2019-05-03', 1);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL COMMENT 'primary key',
  `employee_name` varchar(255) NOT NULL COMMENT 'employee name',
  `employee_salary` double NOT NULL COMMENT 'employee salary',
  `employee_age` int(11) NOT NULL COMMENT 'employee age'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='datatable demo table';

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `employee_name`, `employee_salary`, `employee_age`) VALUES
(1, 'Pranil GC', 9000000, 24),
(2, 'Sunil GC', 48848484, 30);

-- --------------------------------------------------------

--
-- Table structure for table `employeelist`
--

CREATE TABLE `employeelist` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `mobileno` varchar(50) NOT NULL,
  `salary` varchar(200) DEFAULT NULL,
  `dateofjoin` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employeelist`
--

INSERT INTO `employeelist` (`id`, `name`, `address`, `mobileno`, `salary`, `dateofjoin`) VALUES
(1, 'Shailesh Kandel', 'Saljhandi', '9867784128', '20000', '2019-05-07');

-- --------------------------------------------------------

--
-- Table structure for table `employee_info`
--

CREATE TABLE `employee_info` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `phone_no` int(11) NOT NULL,
  `position` varchar(50) NOT NULL,
  `salary` int(11) NOT NULL,
  `date_of_joining` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee_info`
--

INSERT INTO `employee_info` (`id`, `name`, `address`, `phone_no`, `position`, `salary`, `date_of_joining`) VALUES
(1, 'Pranil', 'Devdaha', 982348273, 'chairman', 20000, '0000-00-00'),
(2, 'Shailesh', 'Saljhandi', 98234982, 'Chairman', 90000, '0000-00-00'),
(3, 'sunil', 'devdhaha', 92839283, 'CFO', 900030, '0000-00-00'),
(4, 'sunil', 'devdhaha', 92839283, 'CFO', 900030, '0000-00-00'),
(7, 'Sujan', 'Acharya', 9324, 'App Developer', 20000, '2019-05-15'),
(8, 'Madhav KC', 'Deepnagar', 9928392, 'Associate Manager', 50000, '2019-05-08'),
(9, 'Gaurav vai', 'khaireni', 982392, 'Intern', 20000, '2019-05-22'),
(10, 'Pranil GC', '44600,Kupondole, Lalitpur, Nepal', 2147483647, 'Intern', 1200, '2019-05-24'),
(11, 'Pranil GC', '44600', 2147483647, 'Intern', 12000, '2019-05-26'),
(12, 'Pranil GC', 'lalitpur', 398349834, 'Designer', 12000, '2019-05-26');

-- --------------------------------------------------------

--
-- Table structure for table `groupcategory`
--

CREATE TABLE `groupcategory` (
  `categoryid` int(11) NOT NULL,
  `categoryname` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `groupcategory`
--

INSERT INTO `groupcategory` (`categoryid`, `categoryname`) VALUES
(1, 'ssdsd'),
(2, 'nayacategorys'),
(3, 'kitchen item'),
(4, 'LED'),
(5, 'akdk'),
(6, 'kkk'),
(7, 'adfa'),
(8, 'sdSd'),
(9, 'Engines'),
(10, 'Jhimjhime Supplier'),
(11, 'nmnn'),
(12, 'adfad');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `groupid` int(13) NOT NULL,
  `grouptitle` varchar(23) DEFAULT NULL,
  `groupcategory` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`groupid`, `grouptitle`, `groupcategory`) VALUES
(1, 'Bank Accounts', 'D'),
(2, 'Bank OCC A/c', 'D'),
(3, 'Bank OD A/c', 'C'),
(4, 'Branch/ Division', 'D'),
(5, 'Cash-in-hand', 'C'),
(6, 'Current Assets', 'D'),
(7, 'Current Liabilities', 'C'),
(8, 'Deposits (Asset)', 'D'),
(9, 'Direct Expenses', 'D'),
(10, 'Direct Incomes', 'C'),
(11, 'Duties & Taxes(Payable)', 'D'),
(12, 'Expenses (Direct)', 'D'),
(13, 'Expenses (Indirect)', 'D'),
(14, 'Fixed Assets', 'C'),
(15, 'Income  (Direct)', 'C'),
(16, 'Income (Indirect)', 'C'),
(17, 'Indirect Expenses', 'D'),
(18, 'Indirect Incomes', 'D'),
(19, 'Investments', 'C'),
(20, 'Loans & Advance (Asset)', 'C'),
(21, 'Loans (Liability)', 'C'),
(22, 'Misc. Expenses (Asset)', 'D'),
(23, 'Provisions', 'D'),
(24, 'Purchase Accounts', 'D'),
(25, 'Reserves & Surplus', ''),
(26, 'Retained Earnings', 'C'),
(27, 'Sales Account', 'C'),
(28, 'Secured Loans', 'C'),
(29, 'Stock-in-hand', 'D'),
(30, 'Sundry Creditors', 'C'),
(31, 'Sundry Debtors', 'D'),
(32, 'Suspense A/c', 'D'),
(33, 'Unsecured Loans', 'D');

-- --------------------------------------------------------

--
-- Table structure for table `hallnamestatus`
--

CREATE TABLE `hallnamestatus` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL DEFAULT 'Available'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hallnamestatus`
--

INSERT INTO `hallnamestatus` (`id`, `name`, `status`) VALUES
(1, 'hall001', 'Open'),
(2, 'hall002', 'Open'),
(3, 'hall004', 'Open');

-- --------------------------------------------------------

--
-- Table structure for table `hoteldetails`
--

CREATE TABLE `hoteldetails` (
  `id` int(11) NOT NULL,
  `hotelname` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `phoneno` varchar(100) DEFAULT NULL,
  `mobileno` varchar(100) NOT NULL,
  `panno` varchar(100) NOT NULL,
  `logo` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hoteldetails`
--

INSERT INTO `hoteldetails` (`id`, `hotelname`, `address`, `phoneno`, `mobileno`, `panno`, `logo`) VALUES
(1, 'Supreme Heavy Equipment Solutions Pvt Ltd', 'Tilottama-10,Rupandehi', '465009', '9867784128', '3003030', '277774698791_459132468283712_8000590299313209344_n.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `itemdetails`
--

CREATE TABLE `itemdetails` (
  `id` int(11) NOT NULL,
  `itemname` varchar(100) NOT NULL,
  `units` varchar(100) NOT NULL,
  `amount` double NOT NULL,
  `itemgroup` varchar(100) NOT NULL,
  `taxtype` varchar(100) NOT NULL,
  `taxamount` double NOT NULL,
  `discounttype` varchar(50) NOT NULL,
  `discount` double NOT NULL,
  `taxactive` varchar(50) DEFAULT 'off',
  `discountactive` varchar(50) DEFAULT 'off'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `itemdetails`
--

INSERT INTO `itemdetails` (`id`, `itemname`, `units`, `amount`, `itemgroup`, `taxtype`, `taxamount`, `discounttype`, `discount`, `taxactive`, `discountactive`) VALUES
(1, 'SHialeshg', 'sfg', 1211, 'Cold Drinks', 'vat', 0, 'Fixed', 0, 'No', 'Yes'),
(12, 'Momo', 'plates', 100, 'nayagroups', 'vat', 0, 'Fixed', 0, 'Yes', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `itemgroupnametable`
--

CREATE TABLE `itemgroupnametable` (
  `id` int(11) NOT NULL,
  `itemgroupname` varchar(150) NOT NULL,
  `groupcategory` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `itemgroupnametable`
--

INSERT INTO `itemgroupnametable` (`id`, `itemgroupname`, `groupcategory`) VALUES
(2, 'nayagroups', 'shailesh'),
(3, 'adajd', 'adad'),
(4, 'newgroupcreate', 'shailesh'),
(5, 'modules', 'led'),
(6, 'Meat', 'Kitchen Item'),
(7, 'efdfsds', 'nayacategory'),
(8, 'module', 'LED'),
(9, 'As', 'akdk'),
(10, 'Head', 'Engines'),
(11, 'Jhimjhime Suppliers', 'Jhimjhime Supplier'),
(12, 'Naya', 'kitchen item'),
(13, 'adf', 'akdk');

-- --------------------------------------------------------

--
-- Table structure for table `itemliststock`
--

CREATE TABLE `itemliststock` (
  `id` int(11) NOT NULL,
  `itemname` varchar(200) NOT NULL,
  `remaining` double NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `itemliststock`
--

INSERT INTO `itemliststock` (`id`, `itemname`, `remaining`) VALUES
(4, 'nayaitem', 120),
(5, 'Head Gaskit', 5),
(6, 'Mixcut', 0),
(7, 'jodai baaluwa', 1),
(8, 'plaster baaluwa', -1),
(9, 'Dhunga', -5),
(10, 'Maato', -1),
(11, 'newitem', 0),
(12, '', 0),
(13, 'Supply', 2),
(14, 'afad', 0),
(16, 'Shailesh', 0),
(17, 'Naya', 0),
(18, 'adf', 0),
(19, 'kkj', 0),
(20, 'sds', 0),
(21, 'p1000', 0),
(23, 'p100000', 0),
(26, 'kajdj', 0),
(28, 'aaaaa', 1600),
(29, 'akdjfk', 0);

-- --------------------------------------------------------

--
-- Table structure for table `itemtable`
--

CREATE TABLE `itemtable` (
  `id` int(11) NOT NULL,
  `itemname` varchar(200) NOT NULL,
  `alias` varchar(100) DEFAULT NULL,
  `units` varchar(50) NOT NULL,
  `price` double NOT NULL DEFAULT '0',
  `itemgroup` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `itemtable`
--

INSERT INTO `itemtable` (`id`, `itemname`, `alias`, `units`, `price`, `itemgroup`) VALUES
(1, 'Potato', '', 'kg', 0, '3'),
(2, 'cauli', '', 'kg', 0, 'vegetables'),
(4, 'aadf', '', 'ssdsd', 0, 'Vegetables'),
(5, 'wrtrw', '', 'sfsf', 0, 'Vegetables'),
(6, 'ad', '', 'afafaf', 0, 'Vegetables'),
(7, 'ssd', '', 'adfad', 0, 'afaf'),
(8, 'afkdj', '', 'kajdf', 0, 'Vegetables'),
(9, 'sds', '', 'sdsd', 0, 'Vegetables'),
(10, 'aaldkfa', '', 'adfads', 0, 'Vegetables'),
(11, 'kjk', '', 'kjkj', 0, 'Vegetables'),
(12, 'kllll', '', 'kjj', 0, 'Vegetables'),
(13, 'kkkkkk', '', 'lklk', 0, 'Vegetables'),
(14, ' newitem', '', 'ada', 0, 'Vegetables'),
(15, 'akd', '', 'kilogram', 0, 'Vegetables'),
(16, 'shai', '', 'pieces', 0, 'modules'),
(17, 'Chicken', '', 'kilogram', 0, 'Meat'),
(21, 'Potatos', '', 'kilogram', 0, 'Vegetables'),
(22, 'Sekuwa', '', 'kilogram', 0, 'Meat'),
(23, 'p10', '', 'pieces', 0, 'module'),
(24, 'SDsdS', '', 'sd', 0, 'SD'),
(25, 'nayaitem', '', 'pieces', 0, 'module'),
(26, 'Head Gaskit', '', 'pieces', 0, 'Head'),
(27, 'Mixcut', '', 'trolley', 0, 'Jhimjhime Suppliers'),
(28, 'jodai baaluwa', '', 'trolley', 0, 'Jhimjhime Suppliers'),
(29, 'plaster baaluwa', '', 'trolley', 0, 'Jhimjhime Suppliers'),
(30, 'Dhunga', '', 'trolley', 0, 'Jhimjhime Suppliers'),
(31, 'Maato', '', 'trolley', 0, 'Jhimjhime Suppliers'),
(32, 'newitem', '', 'pieces', 0, 'Jhimjhime Suppliers'),
(33, '', '', '', 0, ''),
(34, 'Supply', '', 'pieces', 0, 'module'),
(35, 'Shailesh', '', 'kilograms', 30, 'Jhimjhime Suppliers'),
(36, 'aaaaa', 'ad', 'kilogram', 0, 'nayagroups'),
(37, 'akdjfk', '', 'pieces', 0, 'nayagroups');

-- --------------------------------------------------------

--
-- Table structure for table `paymentdetails`
--

CREATE TABLE `paymentdetails` (
  `id` int(11) NOT NULL,
  `vouchertype` varchar(10) NOT NULL,
  `transactionno` int(11) NOT NULL,
  `debitamount` double NOT NULL,
  `creditamount` double NOT NULL,
  `narration` varchar(200) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `paymentdetails`
--

INSERT INTO `paymentdetails` (`id`, `vouchertype`, `transactionno`, `debitamount`, `creditamount`, `narration`, `date`) VALUES
(27, '', 0, 1200, 1200, 'sdsdsdsd', '2075-12-25'),
(31, '', 0, 1200, 1200, 'sdsdsdsd', '2075-12-25'),
(32, '', 0, 1200, 1200, 'adadfadfadf', '2075-12-25'),
(33, '', 0, 1200, 1200, 'caddf', '2075-12-26'),
(34, '', 0, 1200, 1200, 'Total amount of Rs.1200 has been provided from Rabin on the purchase of some ', '2075-12-27'),
(35, '', 0, 5000, 5000, 'jhjkhjkhjkh jhkhjkhkjh ', '2076-01-14'),
(36, '', 0, 7000, 7000, 'dhunga sale', '2076-01-14'),
(37, '', 0, 7000, 7000, 'alkfalka ', '2076-01-14'),
(39, 'Receipt', 1, 7000, 7000, 'alkflkadsl ', '2076-01-14'),
(40, 'Receipt', 2, 1000, 1000, '', '2076-01-14'),
(41, 'Receipt', 3, 1000, 1000, '', '2076-01-14'),
(42, 'Payment', 15, 5000, 5000, 'sfsggsdfgfg ', '2076-01-14'),
(43, 'Journal', 1, 10000, 10000, 'afdad', '2076-02-14'),
(44, 'Journal', 2, 12000, 12000, 'adfad', '2076-02-14'),
(45, 'Payment', 16, 12000, 12000, 'Paid to PRanil GC', '2076-02-19'),
(46, 'Journal', 3, 12000, 12000, 'adadf', '2076-02-19'),
(47, 'Payment', 18, 2000, 2000, 'asdfadsf', '2019-10-23'),
(48, 'Payment', 19, 1000, 1000, '', '2019-10-23'),
(49, 'Payment', 20, 2000, 2000, '', '2019-10-23'),
(50, 'Receipt', 4, 2000, 2000, '', '2019-10-23'),
(51, 'Payment', 21, 1000, 1000, 'asadfdsa', '2019-10-24');

-- --------------------------------------------------------

--
-- Table structure for table `paymentdetails1`
--

CREATE TABLE `paymentdetails1` (
  `id` int(11) NOT NULL,
  `paymenttype` varchar(50) NOT NULL,
  `invoiceno` int(11) NOT NULL,
  `vouchertype` varchar(50) NOT NULL,
  `dateofinvoice` date NOT NULL,
  `name` varchar(200) NOT NULL,
  `totalamount` double NOT NULL,
  `paidamount` double NOT NULL,
  `bankname` varchar(200) DEFAULT NULL,
  `chequeno` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `paymentdetails1`
--

INSERT INTO `paymentdetails1` (`id`, `paymenttype`, `invoiceno`, `vouchertype`, `dateofinvoice`, `name`, `totalamount`, `paidamount`, `bankname`, `chequeno`) VALUES
(1, 'Cash', 1, 'Purchase', '2076-02-12', 'Kandel Kirana', 1719.62, 222, NULL, NULL),
(3, 'Cheque', 1, 'Purchase', '2076-02-12', 'Kandel Kirana', 1719.62, 232, 'akjdkfjad', '23232'),
(4, 'Cash', 5, 'Purchase', '2076-02-12', 'Kandel Kirana', 1719.62, 444, NULL, NULL),
(5, 'Cash', 6, 'Purchase', '2076-02-12', 'Kandel Kirana', 1719.62, 333, NULL, NULL),
(6, 'Cash', 7, 'Purchase', '2076-02-12', 'Kandel Kirana', 1719.62, 2222, NULL, NULL),
(7, 'Cash', 8, 'Purchase', '2076-02-12', 'Kandel Kirana', 1719.62, 2222, NULL, NULL),
(8, 'Cheque', 9, 'Purchase', '2076-02-12', 'Kandel Kirana', 1719.62, 11313, 'dfdadf', '23232'),
(9, 'Cash', 10, 'Purchase', '2076-02-12', 'Kandel Kirana', 1719.62, 2323, NULL, NULL),
(10, 'Cash', 11, 'Purchase', '2076-02-12', 'Kandel Kirana', 1719.62, 222, NULL, NULL),
(11, 'Cash', 12, 'Purchase', '2076-02-12', 'Kandel Kirana', 1719.62, 222, NULL, NULL),
(12, 'Cash', 13, 'Purchase', '2076-02-12', 'Kandel Kirana', 1719.62, 112, NULL, NULL),
(13, 'Cash', 14, 'Purchase', '2076-02-12', 'Kandel Kirana', 1719.62, 2222, NULL, NULL),
(14, 'Cash', 15, 'Purchase', '2076-02-12', 'Kandel Kirana', 1719.62, 3333, NULL, NULL),
(15, 'Cash', 16, 'Purchase', '2076-02-11', 'Kandel Kirana', 1719.62, 777, NULL, NULL),
(16, 'Cash', 17, 'Purchase', '2076-02-12', 'Kandel Kirana', 1719.62, 222, NULL, NULL),
(17, 'Cash', 18, 'Purchase', '2076-02-11', 'Kandel Kirana', 1719.62, 2222, NULL, NULL),
(18, 'Cash', 19, 'Purchase', '2076-02-12', 'Kandel Kirana', 1719.62, 2222, NULL, NULL),
(19, 'Cash', 20, 'Purchase', '2076-02-12', 'Kandel Kirana', 1719.62, 232, NULL, NULL),
(20, 'Cash', 21, 'Purchase', '2076-02-12', 'Kandel Kirana', 1719.62, 232, NULL, NULL),
(21, 'Cash', 1, 'Sales', '2076-02-12', 'Shailesh Kandel', 1719.62, 4444, NULL, NULL),
(22, 'Cash', 1, 'Sales', '2076-02-12', 'Shailesh Kandel', 1719.62, 333, NULL, NULL),
(23, 'Cash', 1, 'Sales', '2076-02-12', 'Shailesh Kandel', 1719.62, 33, NULL, NULL),
(24, 'Cash', 22, 'Purchase', '2076-02-14', 'Kandel Kirana', 1187.99, 1200, NULL, NULL),
(25, 'Cheque', 2, 'Sales', '2076-02-14', 'Shailesh Kandel', 1187.99, 1187.99, 'Sunrise Bank', '2323232'),
(26, 'Cash', 3, 'Sales', '2076-05-09', 'Pranil G.C', 1187.99, 2000, NULL, NULL),
(27, 'Cash', 4, 'Sales', '2076-05-10', 'Shailesh Kandel', 3609.99, 4000, NULL, NULL),
(28, 'Cash', 23, 'Purchase', '2076-05-10', 'Kandel Kirana', 14508.99, 15000, NULL, NULL),
(29, 'Cash', 5, 'Sales', '2076-05-10', 'Sunil G.C', 6031.99, 7000, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `paymenttable`
--

CREATE TABLE `paymenttable` (
  `id` int(11) NOT NULL,
  `dctype` varchar(10) CHARACTER SET latin1 NOT NULL,
  `vouchertype` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `transactionno` int(11) NOT NULL,
  `account` varchar(300) CHARACTER SET latin1 NOT NULL,
  `dcamount` float NOT NULL,
  `paymentdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `paymenttable`
--

INSERT INTO `paymenttable` (`id`, `dctype`, `vouchertype`, `transactionno`, `account`, `dcamount`, `paymentdate`) VALUES
(110, 'd', '', 0, 'Cash Account', 1200, '2075-12-25'),
(112, 'd', '', 0, 'sunil dai', 1200, '2075-12-25'),
(114, 'c', '', 0, 'Salary A/C', 1200, '2075-12-25'),
(116, 'd', '', 0, 'Salary A/C', 1200, '2075-12-26'),
(118, 'd', '', 0, 'Cash Account', 1200, '2075-12-27'),
(120, 'c', '', 0, 'sunil dai', 12000, '2075-11-12'),
(121, 'd', '', 0, 'Cash Account', 5000, '2076-01-14'),
(123, 'd', '', 0, 'Cash Account', 7000, '2076-01-14'),
(125, 'd', '', 0, 'Cash Account', 7000, '2076-01-14'),
(127, 'd', 'Receipt', 1, 'Cash Account', 7000, '2076-01-14'),
(128, 'c', 'Receipt', 1, 'laxman poudel', 7000, '2076-01-14'),
(129, 'c', 'Receipt', 2, 'Cash Account', 1000, '2076-01-14'),
(130, 'd', 'Receipt', 2, 'laxman poudel', 1000, '2076-01-14'),
(131, 'd', 'Receipt', 3, 'Cash Account', 1000, '2076-01-14'),
(132, 'c', 'Receipt', 3, 'laxman poudel', 1000, '2076-01-14'),
(133, 'd', 'Payment', 15, 'rishi dhuwani', 5000, '2076-01-14'),
(134, 'c', 'Payment', 15, 'Cash Account', 5000, '2076-01-14'),
(135, 'd', 'Journal', 1, 'Salary A/C', 10000, '2076-02-14'),
(136, 'c', 'Journal', 1, 'Cash Account', 10000, '2076-02-14'),
(137, 'd', 'Journal', 2, 'Rent Charge', 12000, '2076-02-14'),
(138, 'c', 'Journal', 2, 'Cash Account', 12000, '2076-02-14'),
(139, 'd', 'Payment', 16, 'Pranil GC', 12000, '2076-02-19'),
(140, 'c', 'Payment', 16, 'Cash Account', 12000, '2076-02-19'),
(141, 'c', 'Journal', 3, 'Telephone Charge', 12000, '2076-02-19'),
(142, 'd', 'Journal', 3, 'Cash Account', 12000, '2076-02-19'),
(143, 'c', 'Payment', 18, 'Salary A/C', 2000, '2019-10-23'),
(144, 'd', 'Payment', 18, 'Cash Account', 2000, '2019-10-23'),
(145, 'c', 'Payment', 19, 'Electricity Charge', 1000, '2019-10-23'),
(146, 'd', 'Payment', 19, 'Cash Account', 1000, '2019-10-23'),
(147, 'c', 'Payment', 20, 'Salary A/C', 2000, '2019-10-23'),
(148, 'd', 'Payment', 20, 'Cash Account', 2000, '2019-10-23'),
(149, 'c', 'Receipt', 4, 'Dhurba Uncle', 2000, '2019-10-23'),
(150, 'd', 'Receipt', 4, 'Cash Account', 2000, '2019-10-23'),
(151, 'c', 'Payment', 21, 'Salary A/C', 1000, '2019-10-24'),
(152, 'd', 'Payment', 21, 'Cash Account', 1000, '2019-10-24');

-- --------------------------------------------------------

--
-- Table structure for table `placcount`
--

CREATE TABLE `placcount` (
  `id` int(11) NOT NULL,
  `dctype` tinyint(1) NOT NULL,
  `account` varchar(300) NOT NULL,
  `dcamount` float NOT NULL,
  `startdate` date NOT NULL,
  `enddate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `position`
--

CREATE TABLE `position` (
  `id` int(11) NOT NULL,
  `Position` varchar(50) NOT NULL,
  `salary` int(11) NOT NULL,
  `OverTimeRate` int(11) NOT NULL,
  `OSVR` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `position`
--

INSERT INTO `position` (`id`, `Position`, `salary`, `OverTimeRate`, `OSVR`) VALUES
(1, 'chairman', 20000, 1000, 2000),
(2, 'Designer', 2000, 1000, 2000),
(3, 'Frontend', 3000, 1000, 1000);

-- --------------------------------------------------------

--
-- Table structure for table `purchasedetails`
--

CREATE TABLE `purchasedetails` (
  `purchaseno` int(11) NOT NULL,
  `dctype` varchar(3) NOT NULL DEFAULT 'c',
  `vouchertype` varchar(50) NOT NULL DEFAULT 'Purchase',
  `accountname` varchar(200) NOT NULL,
  `totalamount` double NOT NULL,
  `purchasedate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchasedetails`
--

INSERT INTO `purchasedetails` (`purchaseno`, `dctype`, `vouchertype`, `accountname`, `totalamount`, `purchasedate`) VALUES
(1, 'c', 'Purchase', 'poudel dai', 1476, '2075-12-12'),
(2, 'c', 'Purchase', 'Bus of Dang', 276, '2075-12-12'),
(3, 'c', 'Purchase', 'shailesh kandel', 156, '2075-12-12'),
(6, 'c', 'Purchase', 'Salary A/C', 540, '2075-12-12'),
(8, 'c', 'Purchase', 'Dhurba Uncle', 2604, '2075-12-12'),
(9, 'c', 'Purchase', 'Rent Charge', 559, '2075-12-12'),
(10, 'c', 'Purchase', 'Rent Charge', 408, '2075-12-12'),
(11, 'c', 'Purchase', 'sunil dai', 10000, '2075-12-13'),
(12, 'c', 'Purchase', 'sunil dai', 1440, '2075-12-26'),
(13, 'c', 'Purchase', 'Rabin', 15000, '2075-12-27'),
(14, 'c', 'Purchase', 'rishi dhuwani', 6000, '2076-01-14'),
(15, 'c', 'Purchase', 'poudel dai', 12000, '2076-02-02'),
(16, 'c', 'Purchase', 'sunil dai', 100000, '2076-02-19'),
(17, 'c', 'Purchase', 'Pranil GC', 1200000, '2076-02-19');

-- --------------------------------------------------------

--
-- Table structure for table `purchasedetails1`
--

CREATE TABLE `purchasedetails1` (
  `invoiceno` int(11) NOT NULL,
  `vouchertype` varchar(50) NOT NULL DEFAULT 'Purchase',
  `accountname` varchar(200) NOT NULL,
  `totalamount` double NOT NULL,
  `discounttotal` double NOT NULL,
  `vatamount` double NOT NULL,
  `grandtotal` double NOT NULL,
  `dateofinvoice` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchasedetails1`
--

INSERT INTO `purchasedetails1` (`invoiceno`, `vouchertype`, `accountname`, `totalamount`, `discounttotal`, `vatamount`, `grandtotal`, `dateofinvoice`) VALUES
(1, 'Purchase', 'Kandel Kirana', 1465.31, 0, 254.31, 1719.62, '2076-02-12'),
(2, 'Purchase', 'Kandel Kirana', 1465.31, 0, 254.31, 1719.62, '2076-02-12'),
(4, 'Purchase', 'Kandel Kirana', 1465.31, 0, 254.31, 1719.62, '2076-02-12'),
(5, 'Purchase', 'Kandel Kirana', 1465.31, 0, 254.31, 1719.62, '2076-02-12'),
(6, 'Purchase', 'Kandel Kirana', 1465.31, 0, 254.31, 1719.62, '2076-02-12'),
(7, 'Purchase', 'Kandel Kirana', 1465.31, 0, 254.31, 1719.62, '2076-02-12'),
(8, 'Purchase', 'Kandel Kirana', 1465.31, 0, 254.31, 1719.62, '2076-02-12'),
(9, 'Purchase', 'Kandel Kirana', 1465.31, 0, 254.31, 1719.62, '2076-02-12'),
(10, 'Purchase', 'Kandel Kirana', 1465.31, 0, 254.31, 1719.62, '2076-02-12'),
(11, 'Purchase', 'Kandel Kirana', 1465.31, 0, 254.31, 1719.62, '2076-02-12'),
(12, 'Purchase', 'Kandel Kirana', 1465.31, 0, 254.31, 1719.62, '2076-02-12'),
(13, 'Purchase', 'Kandel Kirana', 1465.31, 0, 254.31, 1719.62, '2076-02-12'),
(14, 'Purchase', 'Kandel Kirana', 1465.31, 0, 254.31, 1719.62, '2076-02-12'),
(15, 'Purchase', 'Kandel Kirana', 1465.31, 0, 254.31, 1719.62, '2076-02-12'),
(16, 'Purchase', 'Kandel Kirana', 1465.31, 0, 254.31, 1719.62, '2076-02-11'),
(17, 'Purchase', 'Kandel Kirana', 1465.31, 0, 254.31, 1719.62, '2076-02-12'),
(18, 'Purchase', 'Kandel Kirana', 1465.31, 0, 254.31, 1719.62, '2076-02-11'),
(19, 'Purchase', 'Kandel Kirana', 1465.31, 0, 254.31, 1719.62, '2076-02-12'),
(20, 'Purchase', 'Kandel Kirana', 1465.31, 0, 254.31, 1719.62, '2076-02-12'),
(21, 'Purchase', 'Kandel Kirana', 1465.31, 0, 254.31, 1719.62, '2076-02-12'),
(1, 'Sales', 'Shailesh Kandel', 1465.31, 0, 254.31, 1719.62, '2076-02-12'),
(22, 'Purchase', 'Kandel Kirana', 1211, 23.01, 0, 1187.99, '2076-02-14'),
(2, 'Sales', 'Shailesh Kandel', 1211, 23.01, 0, 1187.99, '2076-02-14'),
(3, 'Sales', 'Pranil G.C', 1211, 23.01, 0, 1187.99, '2076-05-09'),
(4, 'Sales', 'Shailesh Kandel', 3633, 23.01, 0, 3609.99, '2076-05-10'),
(23, 'Purchase', 'Kandel Kirana', 14532, 23.01, 0, 14508.99, '2076-05-10'),
(5, 'Sales', 'Sunil G.C', 6055, 23.01, 0, 6031.99, '2076-05-10');

-- --------------------------------------------------------

--
-- Table structure for table `purchasetable`
--

CREATE TABLE `purchasetable` (
  `id` int(11) NOT NULL,
  `itemname` varchar(200) NOT NULL,
  `quantity` double NOT NULL,
  `rate` double NOT NULL,
  `units` varchar(100) NOT NULL,
  `amount` double NOT NULL,
  `purchaseno` int(11) NOT NULL,
  `purchasedate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchasetable`
--

INSERT INTO `purchasetable` (`id`, `itemname`, `quantity`, `rate`, `units`, `amount`, `purchaseno`, `purchasedate`) VALUES
(13, 'nayaitem', 120, 12, ' pieces', 1440, 1, '2075-12-26'),
(14, 'Head Gaskit', 10, 1500, 'pieces', 15000, 1, '2075-12-27'),
(15, 'jodai baaluwa', 1, 6000, 'trolley', 6000, 14, '2076-01-14'),
(16, 'p10', 10, 1000, 'pieces', 10000, 15, '2076-02-02'),
(17, 'Supply', 2, 1000, 'pieces', 2000, 15, '2076-02-02'),
(18, 'aaaaa', 1000, 100, 'bottles', 100000, 16, '2076-02-19'),
(19, 'aaaaa', 1000, 1200, 'bottles', 1200000, 17, '2076-02-19');

-- --------------------------------------------------------

--
-- Table structure for table `purchasetable1`
--

CREATE TABLE `purchasetable1` (
  `id` int(11) NOT NULL,
  `itemname` varchar(200) NOT NULL,
  `quantity` double NOT NULL,
  `rate` double NOT NULL,
  `discountpercent` double NOT NULL,
  `vatpercent` double NOT NULL,
  `amount` double NOT NULL,
  `invoiceno` int(11) NOT NULL,
  `invoicedate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchasetable1`
--

INSERT INTO `purchasetable1` (`id`, `itemname`, `quantity`, `rate`, `discountpercent`, `vatpercent`, `amount`, `invoiceno`, `invoicedate`) VALUES
(1, 'sfgf', 1, 1211, 0, 21, 1465.31, 1, '2076-02-12'),
(2, 'sfgf', 1, 1211, 0, 21, 1465.31, 1, '2076-02-12'),
(3, 'sfgf', 1, 1211, 0, 21, 1465.31, 1, '2076-02-12'),
(4, 'sfgf', 1, 1211, 0, 21, 1465.31, 2, '2076-02-12'),
(5, 'sfgf', 1, 1211, 0, 21, 1465.31, 4, '2076-02-12'),
(6, 'sfgf', 1, 1211, 0, 21, 1465.31, 5, '2076-02-12'),
(7, 'sfgf', 1, 1211, 0, 21, 1465.31, 6, '2076-02-12'),
(8, 'sfgf', 1, 1211, 0, 21, 1465.31, 7, '2076-02-12'),
(9, 'sfgf', 1, 1211, 0, 21, 1465.31, 8, '2076-02-12'),
(10, 'sfgf', 1, 1211, 0, 21, 1465.31, 9, '2076-02-12'),
(11, 'sfgf', 1, 1211, 0, 21, 1465.31, 10, '2076-02-12'),
(12, 'sfgf', 1, 1211, 0, 21, 1465.31, 11, '2076-02-12'),
(13, 'sfgf', 1, 1211, 0, 21, 1465.31, 12, '2076-02-12'),
(14, 'sfgf', 1, 1211, 0, 21, 1465.31, 13, '2076-02-12'),
(15, 'sfgf', 1, 1211, 0, 21, 1465.31, 14, '2076-02-12'),
(16, 'sfgf', 1, 1211, 0, 21, 1465.31, 15, '2076-02-12'),
(17, 'sfgf', 1, 1211, 0, 21, 1465.31, 16, '2076-02-11'),
(18, 'sfgf', 1, 1211, 0, 21, 1465.31, 17, '2076-02-12'),
(19, 'sfgf', 1, 1211, 0, 21, 1465.31, 18, '2076-02-11'),
(20, 'sfgf', 1, 1211, 0, 21, 1465.31, 19, '2076-02-12'),
(21, 'sfgf', 1, 1211, 0, 21, 1465.31, 20, '2076-02-12'),
(22, 'sfgf', 1, 1211, 0, 21, 1465.31, 21, '2076-02-12'),
(23, 'sfgf', 1, 1211, 0, 21, 1465.31, 1, '2076-02-12'),
(24, 'sfgf', 1, 1211, 1.9, 0, 1187.99, 22, '2076-02-14'),
(25, 'sfgf', 1, 1211, 1.9, 0, 1187.99, 2, '2076-02-14'),
(26, 'sfgf', 1, 1211, 1.9, 0, 1187.99, 3, '2076-05-09'),
(27, 'sfgf', 3, 1211, 1.9, 0, 3609.99, 4, '2076-05-10'),
(28, 'sfgf', 12, 1211, 1.9, 0, 14508.99, 23, '2076-05-10'),
(29, 'sfgf', 5, 1211, 1.9, 0, 6031.99, 5, '2076-05-10');

-- --------------------------------------------------------

--
-- Table structure for table `roomnamestatus`
--

CREATE TABLE `roomnamestatus` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL DEFAULT 'Available'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roomnamestatus`
--

INSERT INTO `roomnamestatus` (`id`, `name`, `status`) VALUES
(1, 'room1', 'Open'),
(2, 'room2', 'Open');

-- --------------------------------------------------------

--
-- Table structure for table `salary`
--

CREATE TABLE `salary` (
  `id` int(11) NOT NULL,
  `e_id` int(11) NOT NULL,
  `Basic_Salary` int(11) NOT NULL,
  `OverTimeSalary` int(11) NOT NULL,
  `OSVR` int(11) NOT NULL,
  `Total Salary` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `salesdetails`
--

CREATE TABLE `salesdetails` (
  `salesno` int(11) NOT NULL,
  `dctype` varchar(3) NOT NULL DEFAULT 'd',
  `vouchertype` varchar(50) NOT NULL DEFAULT 'Sales',
  `accountname` varchar(200) NOT NULL,
  `totalamount` double NOT NULL,
  `salesdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `salesdetails`
--

INSERT INTO `salesdetails` (`salesno`, `dctype`, `vouchertype`, `accountname`, `totalamount`, `salesdate`) VALUES
(1, 'd', 'Sales', 'sunil dai', 130, '2075-12-12'),
(2, 'd', 'Sales', 'poudel dai', 5000, '2075-12-13'),
(3, 'd', 'Sales', 'sunil dai', 10000, '2075-12-27'),
(4, 'd', 'Sales', 'Deepak Thekdaar', 6000, '2076-01-14'),
(5, 'd', 'Sales', 'Dhurba Uncle', 20000, '2076-01-14'),
(6, 'd', 'Sales', 'laxman poudel', 10000, '2076-01-14'),
(7, 'd', 'Sales', 'poudel dai', 480000, '2076-02-19');

-- --------------------------------------------------------

--
-- Table structure for table `salesgroupcategory`
--

CREATE TABLE `salesgroupcategory` (
  `categoryid` int(11) NOT NULL,
  `categoryname` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `salesgroupcategory`
--

INSERT INTO `salesgroupcategory` (`categoryid`, `categoryname`) VALUES
(1, 'adasd'),
(2, 'Food and Beverages');

-- --------------------------------------------------------

--
-- Table structure for table `salesitemgroupnametable`
--

CREATE TABLE `salesitemgroupnametable` (
  `id` int(11) NOT NULL,
  `itemgroupname` varchar(150) NOT NULL,
  `groupcategory` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `salesitemgroupnametable`
--

INSERT INTO `salesitemgroupnametable` (`id`, `itemgroupname`, `groupcategory`) VALUES
(2, 'Cold Drinks', 'Food and Beverages');

-- --------------------------------------------------------

--
-- Table structure for table `salesitemliststock`
--

CREATE TABLE `salesitemliststock` (
  `id` int(11) NOT NULL,
  `itemname` varchar(200) NOT NULL,
  `remaining` double NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `salesitemliststock`
--

INSERT INTO `salesitemliststock` (`id`, `itemname`, `remaining`) VALUES
(1, 'Pepsi', 0),
(2, 'sekuwa', 0),
(3, 'nayaitem', 0),
(4, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `salesitemtable`
--

CREATE TABLE `salesitemtable` (
  `id` int(11) NOT NULL,
  `itemname` varchar(200) NOT NULL,
  `alias` varchar(200) NOT NULL,
  `units` varchar(50) NOT NULL,
  `itemgroup` varchar(100) NOT NULL,
  `price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `salesitemtable`
--

INSERT INTO `salesitemtable` (`id`, `itemname`, `alias`, `units`, `itemgroup`, `price`) VALUES
(1, 'Pepsi', 'Pepsi', 'bottle', 'Cold Drinks', 40),
(2, 'sekuwa', 'akd', 'jhir', 'Cold Drinks', 100),
(3, 'nayaitem', 'ssd', 'pieces', 'Cold Drinks', 200);

-- --------------------------------------------------------

--
-- Table structure for table `salestable`
--

CREATE TABLE `salestable` (
  `id` int(11) NOT NULL,
  `itemname` varchar(200) NOT NULL,
  `quantity` double NOT NULL,
  `rate` double NOT NULL,
  `units` varchar(100) NOT NULL,
  `amount` double NOT NULL,
  `salesno` int(11) NOT NULL,
  `salesdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `salestable`
--

INSERT INTO `salestable` (`id`, `itemname`, `quantity`, `rate`, `units`, `amount`, `salesno`, `salesdate`) VALUES
(1, 'Head Gaskit', 5, 2000, 'pieces', 10000, 1, '2075-12-27'),
(2, 'Maato', 1, 6000, 'trolley', 6000, 4, '2076-01-14'),
(3, 'plaster baaluwa', 1, 5000, 'teolo', 5000, 5, '2076-01-14'),
(4, 'Dhunga', 3, 5000, 'trolu', 15000, 5, '2076-01-14'),
(5, 'Dhunga', 2, 5000, 'troli', 10000, 6, '2076-01-14'),
(6, 'aaaaa', 400, 1200, 'bottles', 480000, 7, '2076-02-19');

-- --------------------------------------------------------

--
-- Table structure for table `salesunittable`
--

CREATE TABLE `salesunittable` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `salesunittable`
--

INSERT INTO `salesunittable` (`id`, `name`) VALUES
(1, 'trolley');

-- --------------------------------------------------------

--
-- Table structure for table `servicereport`
--

CREATE TABLE `servicereport` (
  `reportno` int(11) NOT NULL,
  `date` date NOT NULL,
  `companyname` varchar(100) NOT NULL,
  `customerno` varchar(100) NOT NULL,
  `customername` varchar(100) NOT NULL,
  `mcmodel` varchar(100) NOT NULL,
  `mcserialno` varchar(100) NOT NULL,
  `enginemodel` varchar(100) NOT NULL,
  `hourmeter` varchar(100) NOT NULL,
  `mclocation` varchar(100) NOT NULL,
  `technicianname` varchar(100) NOT NULL,
  `departuredatetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `operatorname` varchar(100) NOT NULL,
  `operatornumber` varchar(100) NOT NULL,
  `problemreported` varchar(1000) DEFAULT NULL,
  `observation` varchar(1000) DEFAULT NULL,
  `failureanalysis` varchar(1000) DEFAULT NULL,
  `actiontr` varchar(1000) DEFAULT NULL,
  `customercomment` varchar(1000) DEFAULT NULL,
  `dateinsite` date DEFAULT NULL,
  `sitecontactno` varchar(100) DEFAULT NULL,
  `dateoutsite` date DEFAULT NULL,
  `customername1` varchar(100) DEFAULT NULL,
  `customerdesignation` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `servicereport`
--

INSERT INTO `servicereport` (`reportno`, `date`, `companyname`, `customerno`, `customername`, `mcmodel`, `mcserialno`, `enginemodel`, `hourmeter`, `mclocation`, `technicianname`, `departuredatetime`, `operatorname`, `operatornumber`, `problemreported`, `observation`, `failureanalysis`, `actiontr`, `customercomment`, `dateinsite`, `sitecontactno`, `dateoutsite`, `customername1`, `customerdesignation`) VALUES
(1, '2019-05-21', 'DAFSDF', 'ASDFASDF', 'ADSFADF', 'AFLKDJ', '343', 'ADF', '3434', 'ADFAJD', '05/21/2019', '2019-05-20 18:15:00', 'ADFADF', '32424', 'ADFADF', 'ASFDADF', 'FADFADF', 'AFDADF', 'FADFA', '2019-05-22', '334343', '2019-05-22', 'ADADF', 'ADFASD'),
(2, '2019-05-22', 'sfgsfg', 'fdfgsfg', 'sdfgfdg', 'afasdfd', '', '', '3434', '344', '', '2019-05-22 09:49:00', '', '', '', '', '', '', '', '2019-05-22', '', '2019-05-23', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tablenamestatus`
--

CREATE TABLE `tablenamestatus` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL DEFAULT 'Available'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tablenamestatus`
--

INSERT INTO `tablenamestatus` (`id`, `name`, `status`) VALUES
(1, 'table1', 'Open'),
(2, 'table2', 'Available'),
(3, 'table3', 'Open'),
(4, 'table4', 'Open'),
(5, 'table5', 'Available');

-- --------------------------------------------------------

--
-- Table structure for table `tempbilltable`
--

CREATE TABLE `tempbilltable` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `itemname` varchar(200) NOT NULL,
  `quantity` double NOT NULL,
  `price` double NOT NULL,
  `amount` double NOT NULL,
  `salesdate` date NOT NULL DEFAULT '2075-03-31',
  `billno` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tempbilltable`
--

INSERT INTO `tempbilltable` (`id`, `name`, `itemname`, `quantity`, `price`, `amount`, `salesdate`, `billno`) VALUES
(4, 'table4', 'Pepsi', 19, 40, 760, '2076-01-17', 531468735),
(6, 'room1', 'Pepsi', 1, 40, 40, '2076-02-14', 538774332),
(9, 'table3', 'Pepsi', 30, 40, 1200, '2076-05-09', 120124836),
(12, 'table1', 'Pepsi', 60, 40, 2400, '2076-05-10', 587849197),
(13, 'table1', 'sekuwa', 30, 100, 3000, '2076-07-03', 587849197);

-- --------------------------------------------------------

--
-- Table structure for table `tempbilltable1`
--

CREATE TABLE `tempbilltable1` (
  `id` int(11) NOT NULL,
  `itemname` varchar(300) NOT NULL,
  `quantity` double NOT NULL,
  `price` double NOT NULL,
  `discountpercent` double NOT NULL,
  `vatpercent` double NOT NULL,
  `totalamount` double NOT NULL,
  `salesdate` date NOT NULL,
  `invoiceno` int(11) NOT NULL,
  `tablename` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `unittable`
--

CREATE TABLE `unittable` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `unittable`
--

INSERT INTO `unittable` (`id`, `name`) VALUES
(1, 'kilogram'),
(2, 'pieces'),
(3, 'kkk'),
(4, 'litres'),
(5, 'bottles'),
(6, 'uuu');

-- --------------------------------------------------------

--
-- Table structure for table `usergrouplist`
--

CREATE TABLE `usergrouplist` (
  `id` int(11) NOT NULL,
  `groupname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usergrouplist`
--

INSERT INTO `usergrouplist` (`id`, `groupname`) VALUES
(1, 'admins'),
(2, 'Transport'),
(3, 'Sales');

-- --------------------------------------------------------

--
-- Table structure for table `userlist`
--

CREATE TABLE `userlist` (
  `id` int(11) NOT NULL,
  `username` varchar(400) NOT NULL,
  `password` varchar(100) NOT NULL,
  `usergroup` varchar(100) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlist`
--

INSERT INTO `userlist` (`id`, `username`, `password`, `usergroup`) VALUES
(1, 'bikash123@gmail.co', 'shailesh', ''),
(3, 'bikash', 'shailesh', 'admin'),
(4, 'shanti', 'shanti', ''),
(9, 'saugat', 'saugat', 'admins'),
(10, 'sunil', 'sunil', 'admins'),
(11, 'bicky', 'Hello MySQL', 'admin'),
(12, 'bicky', 'Hello MySQL', 'admin'),
(13, 'shaileshsdsd', 'kjkjkj', 'Transport');

-- --------------------------------------------------------

--
-- Table structure for table `vendorlist`
--

CREATE TABLE `vendorlist` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `mobileno` varchar(50) NOT NULL,
  `businessname` varchar(200) DEFAULT NULL,
  `pvno` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vendorlist`
--

INSERT INTO `vendorlist` (`id`, `name`, `address`, `mobileno`, `businessname`, `pvno`) VALUES
(4, 'Kandel Kirana', 'adlfal', '353434', '', '23323'),
(6, 'ANSU NEpla', 'lakdlf', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accountinformation`
--
ALTER TABLE `accountinformation`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `accountid` (`id`),
  ADD UNIQUE KEY `accountname` (`accountname`);

--
-- Indexes for table `adminlist`
--
ALTER TABLE `adminlist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `billingdetails`
--
ALTER TABLE `billingdetails`
  ADD PRIMARY KEY (`billno`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `billtable`
--
ALTER TABLE `billtable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categorydetails`
--
ALTER TABLE `categorydetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contratable`
--
ALTER TABLE `contratable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customerlist`
--
ALTER TABLE `customerlist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `days_of_attendance`
--
ALTER TABLE `days_of_attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employeelist`
--
ALTER TABLE `employeelist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_info`
--
ALTER TABLE `employee_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groupcategory`
--
ALTER TABLE `groupcategory`
  ADD PRIMARY KEY (`categoryname`),
  ADD UNIQUE KEY `categoryid` (`categoryid`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`groupid`);

--
-- Indexes for table `hallnamestatus`
--
ALTER TABLE `hallnamestatus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `hoteldetails`
--
ALTER TABLE `hoteldetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `itemdetails`
--
ALTER TABLE `itemdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `itemgroupnametable`
--
ALTER TABLE `itemgroupnametable`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `itemgroupname` (`itemgroupname`);

--
-- Indexes for table `itemliststock`
--
ALTER TABLE `itemliststock`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `itemname` (`itemname`);

--
-- Indexes for table `itemtable`
--
ALTER TABLE `itemtable`
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `itemname` (`itemname`),
  ADD KEY `itemid` (`id`);

--
-- Indexes for table `paymentdetails`
--
ALTER TABLE `paymentdetails`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `paymentdetails1`
--
ALTER TABLE `paymentdetails1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paymenttable`
--
ALTER TABLE `paymenttable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `position`
--
ALTER TABLE `position`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchasedetails`
--
ALTER TABLE `purchasedetails`
  ADD PRIMARY KEY (`purchaseno`);

--
-- Indexes for table `purchasetable`
--
ALTER TABLE `purchasetable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchasetable1`
--
ALTER TABLE `purchasetable1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roomnamestatus`
--
ALTER TABLE `roomnamestatus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `salary`
--
ALTER TABLE `salary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salesdetails`
--
ALTER TABLE `salesdetails`
  ADD PRIMARY KEY (`salesno`);

--
-- Indexes for table `salesgroupcategory`
--
ALTER TABLE `salesgroupcategory`
  ADD PRIMARY KEY (`categoryname`),
  ADD UNIQUE KEY `categoryid` (`categoryid`);

--
-- Indexes for table `salesitemgroupnametable`
--
ALTER TABLE `salesitemgroupnametable`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `itemgroupname` (`itemgroupname`);

--
-- Indexes for table `salesitemliststock`
--
ALTER TABLE `salesitemliststock`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `itemname` (`itemname`);

--
-- Indexes for table `salesitemtable`
--
ALTER TABLE `salesitemtable`
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `itemname` (`itemname`),
  ADD KEY `itemid` (`id`);

--
-- Indexes for table `salestable`
--
ALTER TABLE `salestable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salesunittable`
--
ALTER TABLE `salesunittable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `servicereport`
--
ALTER TABLE `servicereport`
  ADD PRIMARY KEY (`reportno`);

--
-- Indexes for table `tablenamestatus`
--
ALTER TABLE `tablenamestatus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `tempbilltable`
--
ALTER TABLE `tempbilltable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tempbilltable1`
--
ALTER TABLE `tempbilltable1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `unittable`
--
ALTER TABLE `unittable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usergrouplist`
--
ALTER TABLE `usergrouplist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlist`
--
ALTER TABLE `userlist`
  ADD PRIMARY KEY (`id`,`username`);

--
-- Indexes for table `vendorlist`
--
ALTER TABLE `vendorlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accountinformation`
--
ALTER TABLE `accountinformation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `adminlist`
--
ALTER TABLE `adminlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=166;

--
-- AUTO_INCREMENT for table `billingdetails`
--
ALTER TABLE `billingdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `billtable`
--
ALTER TABLE `billtable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `categorydetails`
--
ALTER TABLE `categorydetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `contratable`
--
ALTER TABLE `contratable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customerlist`
--
ALTER TABLE `customerlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `days_of_attendance`
--
ALTER TABLE `days_of_attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'primary key', AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `employeelist`
--
ALTER TABLE `employeelist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `employee_info`
--
ALTER TABLE `employee_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `groupcategory`
--
ALTER TABLE `groupcategory`
  MODIFY `categoryid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `hallnamestatus`
--
ALTER TABLE `hallnamestatus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `hoteldetails`
--
ALTER TABLE `hoteldetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `itemdetails`
--
ALTER TABLE `itemdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `itemgroupnametable`
--
ALTER TABLE `itemgroupnametable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `itemliststock`
--
ALTER TABLE `itemliststock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `itemtable`
--
ALTER TABLE `itemtable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `paymentdetails`
--
ALTER TABLE `paymentdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `paymentdetails1`
--
ALTER TABLE `paymentdetails1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `paymenttable`
--
ALTER TABLE `paymenttable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;

--
-- AUTO_INCREMENT for table `position`
--
ALTER TABLE `position`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `purchasetable`
--
ALTER TABLE `purchasetable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `purchasetable1`
--
ALTER TABLE `purchasetable1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `roomnamestatus`
--
ALTER TABLE `roomnamestatus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `salary`
--
ALTER TABLE `salary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `salesgroupcategory`
--
ALTER TABLE `salesgroupcategory`
  MODIFY `categoryid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `salesitemgroupnametable`
--
ALTER TABLE `salesitemgroupnametable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `salesitemliststock`
--
ALTER TABLE `salesitemliststock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `salesitemtable`
--
ALTER TABLE `salesitemtable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `salestable`
--
ALTER TABLE `salestable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `salesunittable`
--
ALTER TABLE `salesunittable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `servicereport`
--
ALTER TABLE `servicereport`
  MODIFY `reportno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tablenamestatus`
--
ALTER TABLE `tablenamestatus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tempbilltable`
--
ALTER TABLE `tempbilltable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tempbilltable1`
--
ALTER TABLE `tempbilltable1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `unittable`
--
ALTER TABLE `unittable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `usergrouplist`
--
ALTER TABLE `usergrouplist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `userlist`
--
ALTER TABLE `userlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `vendorlist`
--
ALTER TABLE `vendorlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
