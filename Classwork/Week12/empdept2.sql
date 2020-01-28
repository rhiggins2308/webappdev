-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 19, 2018 at 05:04 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `empdept2`
--

-- --------------------------------------------------------

--
-- Table structure for table `bonus`
--

CREATE TABLE `bonus` (
  `ENAME` char(10) DEFAULT NULL,
  `JOB` char(9) DEFAULT NULL,
  `SAL` smallint(6) DEFAULT NULL,
  `COMM` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `CUSTID` smallint(6) NOT NULL,
  `NAME` char(45) DEFAULT NULL,
  `ADDRESS` char(40) DEFAULT NULL,
  `CITY` char(30) DEFAULT NULL,
  `STATE` char(2) DEFAULT NULL,
  `ZIP` char(9) DEFAULT NULL,
  `AREA` smallint(3) DEFAULT NULL,
  `PHONE` char(9) DEFAULT NULL,
  `REPID` smallint(4) NOT NULL,
  `CREDITLIMIT` decimal(9,2) DEFAULT NULL,
  `COMMENTS` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`CUSTID`, `NAME`, `ADDRESS`, `CITY`, `STATE`, `ZIP`, `AREA`, `PHONE`, `REPID`, `CREDITLIMIT`, `COMMENTS`) VALUES
(100, 'JOCKSPORTS', '345 VIEWRIDGE', 'BELMONT', 'CA', '96711', 415, '598-6609', 7844, '5000.00', 'Very friendly people to work with -- sales rep likes to be called Mike.'),
(101, 'TKB SPORT SHOP', '490 BOLI RD.', 'REDWOOD CITY', 'CA', '94061', 415, '368-1223', 7521, '10000.00', 'Rep called 5/8 about change in order - contact shipping.'),
(102, 'VOLLYRITE', '9722 HAMILTON', 'BURLINGAME', 'CA', '95133', 415, '644-3341', 7654, '7000.00', 'Company doing heavy promotion beginning 10/89. Prepare for large orders during\r\n winter.'),
(103, 'JUST TENNIS', 'HILLVIEW MALL', 'BURLINGAME', 'CA', '97544', 415, '677-9312', 7521, '3000.00', 'Contact rep about new line of tennis rackets.'),
(104, 'EVERY MOUNTAIN', '574 SURRY RD.', 'CUPERTINO', 'CA', '93301', 408, '996-2323', 7499, '10000.00', 'Customer with high market share (23%) due to aggressive advertising.'),
(105, 'K + T SPORTS', '3476 EL PASEO', 'SANTA CLARA', 'CA', '91003', 408, '376-9966', 7844, '5000.00', 'Tends to order large amounts of merchandise at once. Accounting is considering\r\n raising their credit limit. Usually pays on time.'),
(106, 'SHAPE UP', '908 SEQUOIA', 'PALO ALTO', 'CA', '94301', 415, '364-9777', 7521, '6000.00', 'Support intensive. Orders small amounts (< 800) of merchandise at a time.'),
(107, 'WOMENS SPORTS', 'VALCO VILLAGE', 'SUNNYVALE', 'CA', '93301', 408, '967-4398', 7499, '10000.00', 'First sporting goods store geared exclusively towards women. Unusual promotion\r\nal style and very willing to take chances towards new products!'),
(108, 'NORTH WOODS HEALTH AND FITNESS SUPPLY CENTER', '98 LONE PINE WAY', 'HIBBING', 'MN', '55649', 612, '566-9123', 7844, '8000.00', '');

-- --------------------------------------------------------

--
-- Table structure for table `dept`
--

CREATE TABLE `dept` (
  `DEPTNO` smallint(2) NOT NULL,
  `DNAME` char(14) DEFAULT NULL,
  `LOC` char(13) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dept`
--

INSERT INTO `dept` (`DEPTNO`, `DNAME`, `LOC`) VALUES
(10, 'ACCOUNTING', 'NEW YORK'),
(20, 'RESEARCH', 'DALLAS'),
(30, 'SALES', 'CHICAGO'),
(40, 'OPERATIONS', 'BOSTON');

-- --------------------------------------------------------

--
-- Table structure for table `dummy`
--

CREATE TABLE `dummy` (
  `DUMMY` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dummy`
--

INSERT INTO `dummy` (`DUMMY`) VALUES
(0);

-- --------------------------------------------------------

--
-- Table structure for table `emp`
--

CREATE TABLE `emp` (
  `EMPNO` smallint(4) NOT NULL,
  `ENAME` char(10) DEFAULT NULL,
  `JOB` char(9) DEFAULT NULL,
  `MGR` smallint(4) DEFAULT NULL,
  `HIREDATE` varchar(9) DEFAULT NULL,
  `SAL` decimal(7,2) DEFAULT NULL,
  `COMM` decimal(7,2) DEFAULT NULL,
  `DEPTNO` smallint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emp`
--

INSERT INTO `emp` (`EMPNO`, `ENAME`, `JOB`, `MGR`, `HIREDATE`, `SAL`, `COMM`, `DEPTNO`) VALUES
(7369, 'SMITH', 'CLERK', 7902, '17-DEC-80', '800.00', NULL, 20),
(7499, 'ALLEN', 'SALESMAN', 7698, '20-FEB-81', '1600.00', '300.00', 30),
(7521, 'WARD', 'SALESMAN', 7698, '22-FEB-81', '1250.00', '500.00', 30),
(7566, 'JONES', 'MANAGER', 7839, '2-APR-81', '2975.00', NULL, 20),
(7654, 'MARTIN', 'SALESMAN', 7698, '28-SEP-81', '1250.00', '1400.00', 30),
(7698, 'BLAKE', 'MANAGER', 7839, '1-MAY-81', '2850.00', NULL, 30),
(7782, 'CLARK', 'MANAGER', 7839, '9-JUN-81', '2450.00', NULL, 10),
(7788, 'SCOTT', 'ANALYST', 7566, '09-DEC-82', '3000.00', NULL, 20),
(7839, 'KING', 'PRESIDENT', NULL, '17-NOV-81', '5000.00', NULL, 10),
(7844, 'TURNER', 'SALESMAN', 7698, '8-SEP-81', '1500.00', '0.00', 30),
(7876, 'ADAMS', 'CLERK', 7788, '12-JAN-83', '1100.00', NULL, 20),
(7900, 'JAMES', 'CLERK', 7698, '3-DEC-81', '950.00', NULL, 30),
(7902, 'Testing', 'ANALYST', 7566, '3-DEC-81', '3000.00', NULL, 20),
(7934, 'MILLER', 'CLERK', 7782, '23-JAN-82', '1300.00', NULL, 10);

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `ORDID` smallint(4) NOT NULL,
  `ITEMID` smallint(4) NOT NULL,
  `PRODID` int(6) DEFAULT NULL,
  `ACTUALPRICE` decimal(8,2) DEFAULT NULL,
  `QTY` smallint(8) DEFAULT NULL,
  `ITEMTOT` decimal(8,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`ORDID`, `ITEMID`, `PRODID`, `ACTUALPRICE`, `QTY`, `ITEMTOT`) VALUES
(601, 1, 200376, '2.40', 1, '2.40'),
(602, 1, 100870, '2.80', 20, '56.00'),
(603, 2, 100860, '56.00', 4, '224.00'),
(604, 1, 100890, '58.00', 3, '174.00'),
(604, 2, 100861, '42.00', 2, '84.00'),
(604, 3, 100860, '44.00', 10, '440.00'),
(605, 1, 100861, '45.00', 100, '4500.00'),
(605, 2, 100870, '2.80', 500, '1400.00'),
(605, 3, 100890, '58.00', 5, '290.00'),
(605, 4, 101860, '24.00', 50, '1200.00'),
(605, 5, 101863, '9.00', 100, '900.00'),
(605, 6, 102130, '3.40', 10, '34.00'),
(606, 1, 102130, '3.40', 1, '3.40'),
(607, 1, 100871, '5.60', 1, '5.60'),
(608, 1, 101860, '24.00', 1, '24.00'),
(608, 2, 100871, '5.60', 2, '11.20'),
(609, 1, 100861, '35.00', 1, '35.00'),
(609, 2, 100870, '2.50', 5, '12.50'),
(609, 3, 100890, '50.00', 1, '50.00'),
(610, 1, 100860, '35.00', 1, '35.00'),
(610, 2, 100870, '2.80', 3, '8.40'),
(610, 3, 100890, '58.00', 1, '58.00'),
(611, 1, 100861, '45.00', 1, '45.00'),
(612, 1, 100860, '30.00', 100, '3000.00'),
(612, 2, 100861, '40.50', 20, '810.00'),
(612, 3, 101863, '10.00', 150, '1500.00'),
(612, 4, 100871, '5.50', 100, '550.00'),
(613, 1, 100871, '5.60', 100, '560.00'),
(613, 2, 101860, '24.00', 200, '4800.00'),
(613, 3, 200380, '4.00', 150, '600.00'),
(613, 4, 200376, '2.20', 200, '440.00'),
(614, 1, 100860, '35.00', 444, '15540.00'),
(614, 2, 100870, '2.80', 1000, '2800.00'),
(614, 3, 100871, '5.60', 1000, '5600.00'),
(615, 1, 100861, '45.00', 4, '180.00'),
(615, 2, 100870, '2.80', 100, '280.00'),
(615, 3, 100871, '5.00', 50, '250.00'),
(616, 1, 100861, '45.00', 10, '450.00'),
(616, 2, 100870, '2.80', 50, '140.00'),
(616, 3, 100890, '58.00', 2, '116.00'),
(616, 4, 102130, '3.40', 10, '34.00'),
(616, 5, 200376, '2.40', 10, '24.00'),
(617, 1, 100860, '35.00', 50, '1750.00'),
(617, 2, 100861, '45.00', 100, '4500.00'),
(617, 3, 100870, '2.80', 500, '1400.00'),
(617, 4, 100871, '5.60', 500, '2800.00'),
(617, 5, 100890, '58.00', 500, '29000.00'),
(617, 6, 101860, '24.00', 100, '2400.00'),
(617, 7, 101863, '12.50', 200, '2500.00'),
(617, 8, 102130, '3.40', 100, '340.00'),
(617, 9, 200376, '2.40', 200, '480.00'),
(617, 10, 200380, '4.00', 300, '1200.00'),
(618, 1, 100860, '35.00', 23, '805.00'),
(618, 2, 100861, '45.11', 50, '2255.50'),
(618, 3, 100870, '45.00', 10, '450.00'),
(619, 1, 200380, '4.00', 100, '400.00'),
(619, 2, 200376, '2.40', 100, '240.00'),
(619, 3, 102130, '3.40', 100, '340.00'),
(619, 4, 100871, '5.60', 50, '280.00'),
(620, 1, 100860, '35.00', 10, '350.00'),
(620, 2, 200376, '2.40', 1000, '2400.00'),
(620, 3, 102130, '3.40', 500, '1700.00'),
(621, 1, 100861, '45.00', 10, '450.00'),
(621, 2, 100870, '2.80', 100, '280.00');

-- --------------------------------------------------------

--
-- Table structure for table `ord`
--

CREATE TABLE `ord` (
  `ORDID` smallint(4) NOT NULL,
  `ORDERDATE` varchar(9) DEFAULT NULL,
  `COMMPLAN` char(1) DEFAULT NULL,
  `CUSTID` smallint(6) NOT NULL,
  `SHIPDATE` varchar(9) DEFAULT NULL,
  `TOTAL` decimal(8,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ord`
--

INSERT INTO `ord` (`ORDID`, `ORDERDATE`, `COMMPLAN`, `CUSTID`, `SHIPDATE`, `TOTAL`) VALUES
(601, '01-MAY-86', 'A', 106, '30-MAY-86', '2.40'),
(602, '05-JUN-86', 'B', 102, '20-JUN-86', '56.00'),
(603, '05-JUN-86', '', 102, '05-JUN-86', '224.00'),
(604, '15-JUN-86', 'A', 106, '30-JUN-86', '698.00'),
(605, '14-JUL-86', 'A', 106, '30-JUL-86', '8324.00'),
(606, '14-JUL-86', 'A', 100, '30-JUL-86', '3.40'),
(607, '18-JUL-86', 'C', 104, '18-JUL-86', '5.60'),
(608, '25-JUL-86', 'C', 104, '25-JUL-86', '35.20'),
(609, '01-AUG-86', 'B', 100, '15-AUG-86', '97.50'),
(610, '07-JAN-87', 'A', 101, '08-JAN-87', '101.40'),
(611, '11-JAN-87', 'B', 102, '11-JAN-87', '45.00'),
(612, '15-JAN-87', 'C', 104, '20-JAN-87', '5860.00'),
(613, '01-FEB-87', '', 108, '01-FEB-87', '6400.00'),
(614, '01-FEB-87', '', 102, '05-FEB-87', '23940.00'),
(615, '01-FEB-87', '', 107, '06-FEB-87', '710.00'),
(616, '03-FEB-87', '', 103, '10-FEB-87', '764.00'),
(617, '05-FEB-87', '', 105, '03-MAR-87', '46370.00'),
(618, '15-FEB-87', 'A', 102, '06-MAR-87', '3510.50'),
(619, '22-FEB-87', '', 104, '04-FEB-87', '1260.00'),
(620, '12-MAR-87', '', 100, '12-MAR-87', '4450.00'),
(621, '15-MAR-87', 'A', 100, '01-JAN-87', '730.00');

-- --------------------------------------------------------

--
-- Table structure for table `price`
--

CREATE TABLE `price` (
  `PRODID` int(6) NOT NULL,
  `STDPRICE` decimal(8,2) DEFAULT NULL,
  `MINPRICE` decimal(8,2) DEFAULT NULL,
  `STARTDATE` varchar(9) DEFAULT NULL,
  `ENDDATE` varchar(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `price`
--

INSERT INTO `price` (`PRODID`, `STDPRICE`, `MINPRICE`, `STARTDATE`, `ENDDATE`) VALUES
(100871, '4.80', '3.20', '01-JAN-85', '01-DEC-85'),
(100890, '58.00', '46.40', '01-JAN-85', ''),
(100890, '54.00', '40.50', '01-JUN-84', '31-MAY-84'),
(100860, '35.00', '28.00', '01-JUN-86', ''),
(100860, '32.00', '25.60', '01-JAN-86', '31-MAY-86'),
(100860, '30.00', '24.00', '01-JAN-85', '31-DEC-85'),
(100861, '45.00', '36.00', '01-JUN-86', ''),
(100861, '42.00', '33.60', '01-JAN-86', '31-MAY-86'),
(100861, '39.00', '31.20', '01-JAN-85', '31-DEC-85'),
(100870, '2.80', '2.40', '01-JAN-86', ''),
(100870, '2.40', '1.90', '01-JAN-85', '01-DEC-85'),
(100871, '5.60', '4.80', '01-JAN-86', ''),
(101860, '24.00', '18.00', '15-FEB-85', ''),
(101863, '12.50', '9.40', '15-FEB-85', ''),
(102130, '3.40', '2.80', '18-AUG-85', ''),
(200376, '2.40', '1.75', '15-NOV-86', ''),
(200380, '4.00', '3.20', '15-NOV-86', '');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `PRODID` int(6) NOT NULL,
  `DESCRIP` char(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`PRODID`, `DESCRIP`) VALUES
(100860, 'ACE TENNIS RACKET I'),
(100861, 'ACE TENNIS RACKET II'),
(100870, 'ACE TENNIS BALLS-3 PACK'),
(100871, 'ACE TENNIS BALLS-6 PACK'),
(100890, 'ACE TENNIS NET'),
(101860, 'SP TENNIS RACKET'),
(101863, 'SP JUNIOR RACKET'),
(102130, 'RH: \"GUIDE TO TENNIS\"'),
(200376, 'SB ENERGY BAR-6 PACK'),
(200380, 'SB VITA SNACK-6 PACK');

-- --------------------------------------------------------

--
-- Stand-in structure for view `sales`
-- (See below for the actual view)
--
CREATE TABLE `sales` (
`REPID` smallint(4)
,`CUSTID` smallint(6)
,`CUSTNAME` char(45)
,`PRODID` int(6)
,`PRODNAME` char(30)
,`AMOUNT` decimal(30,2)
);

-- --------------------------------------------------------

--
-- Table structure for table `salgrade`
--

CREATE TABLE `salgrade` (
  `GRADE` smallint(6) DEFAULT NULL,
  `LOSAL` smallint(6) DEFAULT NULL,
  `HISAL` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `salgrade`
--

INSERT INTO `salgrade` (`GRADE`, `LOSAL`, `HISAL`) VALUES
(1, 700, 1200),
(2, 1201, 1400),
(3, 1401, 2000),
(4, 2001, 3000),
(5, 3001, 9999);

-- --------------------------------------------------------

--
-- Structure for view `sales`
--
DROP TABLE IF EXISTS `sales`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `sales`  AS  select `customer`.`REPID` AS `REPID`,`ord`.`CUSTID` AS `CUSTID`,`customer`.`NAME` AS `CUSTNAME`,`product`.`PRODID` AS `PRODID`,`product`.`DESCRIP` AS `PRODNAME`,sum(`item`.`ITEMTOT`) AS `AMOUNT` from (((`ord` join `item`) join `customer`) join `product`) where ((`ord`.`ORDID` = `item`.`ORDID`) and (`ord`.`CUSTID` = `customer`.`CUSTID`) and (`item`.`PRODID` = `product`.`PRODID`)) group by `customer`.`REPID`,`ord`.`CUSTID`,`customer`.`NAME`,`product`.`PRODID`,`product`.`DESCRIP` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`CUSTID`);

--
-- Indexes for table `dept`
--
ALTER TABLE `dept`
  ADD PRIMARY KEY (`DEPTNO`);

--
-- Indexes for table `emp`
--
ALTER TABLE `emp`
  ADD PRIMARY KEY (`EMPNO`),
  ADD KEY `DEPTNO` (`DEPTNO`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`ORDID`,`ITEMID`);

--
-- Indexes for table `ord`
--
ALTER TABLE `ord`
  ADD PRIMARY KEY (`ORDID`),
  ADD KEY `CUSTID` (`CUSTID`);

--
-- Indexes for table `price`
--
ALTER TABLE `price`
  ADD KEY `PRICE_INDEX` (`PRODID`,`STARTDATE`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`PRODID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `CUSTID` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;
--
-- AUTO_INCREMENT for table `ord`
--
ALTER TABLE `ord`
  MODIFY `ORDID` smallint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=622;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `PRODID` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=200381;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `emp`
--
ALTER TABLE `emp`
  ADD CONSTRAINT `emp_ibfk_1` FOREIGN KEY (`DEPTNO`) REFERENCES `dept` (`DEPTNO`);

--
-- Constraints for table `item`
--
ALTER TABLE `item`
  ADD CONSTRAINT `ITEM_FOREIGN_KEY` FOREIGN KEY (`ORDID`) REFERENCES `ord` (`ORDID`);

--
-- Constraints for table `ord`
--
ALTER TABLE `ord`
  ADD CONSTRAINT `ord_ibfk_1` FOREIGN KEY (`CUSTID`) REFERENCES `customer` (`CUSTID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
