-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 05, 2020 at 02:43 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `renim`
--

-- --------------------------------------------------------

--
-- Table structure for table `buyer`
--

CREATE TABLE `buyer` (
  `BuyerID` varchar(6) NOT NULL,
  `NoOfItems` int(255) NOT NULL,
  `Address` varchar(500) NOT NULL,
  `Email` varchar(500) NOT NULL,
  `Phone` varchar(12) NOT NULL,
  `FName` varchar(100) NOT NULL,
  `LName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `buyer`
--

INSERT INTO `buyer` (`BuyerID`, `NoOfItems`, `Address`, `Email`, `Phone`, `FName`, `LName`) VALUES
('154120', 19, '300 Congress Avenue, Austin, TX', 'lilianas@yahoo.com', '512-371-2381', 'Liliana', 'Yap'),
('154121', 15, '1000 Pacific Avenue, Beachwood, NJ', 'raomi@gmail.com', '732-505-1293', 'Ron', 'Ward'),
('154122', 28, '124 Sheridan Avenue, Albany, NY', 'mike923@gmail.com', '518-381-2313', 'Mike', 'King'),
('154125', 50, '151850 Akeakamai Loop, Pahoa, HI', 'paofaie@gmail.com', '808-941-2144', 'Peter', 'Pan'),
('154141', 31, '55220 Kulani Street, Laie, HI', 'asiear@yahoo.com', '808-441-2139', 'Alex', 'Lear'),
('154148', 8, '123 Aloha Street, Psasadena, CA', 'hwhwhw@gmail.com', '213-445-3201', 'Helen', 'Wei'),
('154149', 10, '101 Center Street, Arlington, TX', 'aiario@gmail.com', '817-381-4812', 'Ian', 'Young'),
('154155', 15, '3481 Elgin Street, Houston, TX', 'maigan3@gmail.com', '713-401-3914', 'Magen', 'Nguyen'),
('161717', 30, '2200 Simon Bolivar Avenue, New Orleans, LA', 'daifka@yahoo.com', '504-841-2138', 'Dan', 'Fang'),
('161719', 40, '1121 Quarrier Street, Charlston, WV', 'mafaoq@aol.com', '304-841-1314', 'Manny', 'Quong'),
('161813', 30, '1700 Peach Street, Erie, PA', 'jiakae@gmail.com', '814-911-1481', 'James', 'Kag'),
('181910', 29, '163 Center Street, Provo, UT', 'samair@yahoo.com', '801-319-1401', 'Sam', 'Lee'),
('181911', 30, '616 Crook Avenue, Cheyenne, WY', 'biaga@gmail.com', '307-223-1391', 'Ben', 'Tuan'),
('192310', 40, '966 Getwell Road, Memphis, TN', 'jiaoratk@gmail.com', '901-381-1491', 'Jon', 'Rak');

-- --------------------------------------------------------

--
-- Table structure for table `buyer_endproduct`
--

CREATE TABLE `buyer_endproduct` (
  `BEBuyerID` varchar(10) NOT NULL,
  `BEProductID` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `buyer_endproduct`
--

INSERT INTO `buyer_endproduct` (`BEBuyerID`, `BEProductID`) VALUES
('154148', '1'),
('161719', '10'),
('161813', '11'),
('181910', '12'),
('181911', '13'),
('192310', '14'),
('154149', '2'),
('154120', '3'),
('154121', '4'),
('154122', '5'),
('154125', '6'),
('154141', '7'),
('154155', '8'),
('161717', '9');

-- --------------------------------------------------------

--
-- Stand-in structure for view `buyer_endproduct_info`
-- (See below for the actual view)
--
CREATE TABLE `buyer_endproduct_info` (
`FN` varchar(100)
,`LN` varchar(100)
,`Items` int(255)
,`CA` varchar(3)
,`CM` varchar(3)
);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `CustomerID` varchar(6) NOT NULL,
  `NoOfItems` int(255) NOT NULL,
  `Email` varchar(500) NOT NULL,
  `Phone` varchar(12) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `FName` varchar(20) NOT NULL,
  `LName` varchar(20) NOT NULL,
  `RefID` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`CustomerID`, `NoOfItems`, `Email`, `Phone`, `Address`, `FName`, `LName`, `RefID`) VALUES
('1', 8, 'koh@gmail.com', '213-455-9001', '8101 Moss Street, Los Angeles, CA', 'Karen', 'Oh', '114'),
('10', 19, 'kairaork@gmail.com', '479-319-4191', '3400 Rogers Avenue, Ft. Smith, AR', 'Kanda', 'Roka', '109'),
('11', 28, 'maari@gmail.com', '313-273-1931', '3435 2nd Avenue, Detroit, MI', 'Mari', 'Kari', '105'),
('12', 19, 'jaurai@yahoo.com', '206-713-1419', '3820 Rainier Avenue, Seattle, WA', 'Juan', 'Nari', '110'),
('13', 37, 'hanai@yahoo.com', '808-581-1411', '05500 Lanikuhana Avenue, Milani, HI', 'Hanai', 'Loni', '103'),
('14', 48, 'juiaen@yahoo.com', '617-882-3184', '31 Phillips Street, Boston, MA', 'June', 'Lane', '101'),
('15', 38, 'kaifajmr@aol.com', '207-883-0814', '335 Brighton Avenue, Portland, ME', 'Kaifa', 'Jari', '102'),
('16', 27, 'afnakr@zoho.com', '603-441-1841', '36 Clinton Street, Concord, NH', 'Afar', 'Nakar', '106'),
('17', 34, 'hyaua@yahoo.com', '802-716-6417', '68 Strongs Avenue, Rutland, VT', 'Hyuna', 'Yuna', '104'),
('4', 7, 'sanira@gmail.com', '512-814-1930', '1000 Exposition Street, Austin, TX', 'Sandra', 'Ira', '115'),
('5', 10, 'ltorres@yahoo.com', '604-271-3914', '421 N Phillis Avenue, Sioux Fall, SD', 'Linda', 'Torres', '113'),
('6', 19, 'ikahi@gmail.com', '907-551-1481', '4800 Cordova Street, Anchorage, AK', 'Ida', 'Kahi', '108'),
('7', 20, 'janie@aol.com', '302-914-1341', '14 E Loockermann Street, Dover, DE', 'Janie', 'Kane', '107'),
('8', 14, 'kashini@gmail.com', '817-224-1491', '101 S Center Street, Arlington, TX', 'Ivan', 'Kashi', '112'),
('9', 15, 'quandk@gmail.com', '580-381-1491', '119 W Main Street, Ada, OK', 'Quan', 'Dak', '111');

-- --------------------------------------------------------

--
-- Table structure for table `end_product`
--

CREATE TABLE `end_product` (
  `ProductID` varchar(6) NOT NULL,
  `CommercialApplication` varchar(3) NOT NULL,
  `CompostMaterial` varchar(3) NOT NULL,
  `EPOrderID` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `end_product`
--

INSERT INTO `end_product` (`ProductID`, `CommercialApplication`, `CompostMaterial`, `EPOrderID`) VALUES
('1', 'No', 'No', '122967'),
('10', 'YES', 'NO', '154157'),
('11', 'NO', 'YES', '154158'),
('12', 'NO', 'NO', '154159'),
('13', 'NO', 'YES', '154160'),
('14', 'YES', 'YES', '154161'),
('15', 'NO', 'YES', '154162'),
('16', 'YES', 'YES', '154156'),
('17', 'YES', 'YES', '154156'),
('18', 'YES', 'YES', '154156'),
('2', 'YES', 'NO', '154149'),
('3', 'YES', 'YES', '154150'),
('4', 'NO', 'YES', '154151'),
('5', 'YES', 'NO', '154152'),
('6', 'NO', 'YES', '154153'),
('7', 'YES', 'NO', '154154'),
('8', 'NO', 'NO', '154155'),
('9', 'NO', 'YES', '154156');

-- --------------------------------------------------------

--
-- Table structure for table `referral`
--

CREATE TABLE `referral` (
  `FName` varchar(15) NOT NULL,
  `LName` varchar(15) NOT NULL,
  `ReferalID` varchar(6) NOT NULL,
  `CustomerID` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `referral`
--

INSERT INTO `referral` (`FName`, `LName`, `ReferalID`, `CustomerID`) VALUES
('Cathal', 'Dalby', '101', '14'),
('Anisa', 'Rogers', '102', '15'),
('Sally', 'Hughes', '103', '13'),
('Aleah', 'Lin', '104', '17'),
('Steffan', 'Lott', '105', '11'),
('Ava-Mae', 'Stacey', '106', '16'),
('Milton', 'Jenkins', '107', '7'),
('Benedict', 'Brad', '108', '6'),
('Syndey', 'Ali', '109', '10'),
('Devin', 'Kane', '110', '12'),
('Deborah', 'Shaw', '111', '9'),
('Casper', 'Clegg', '112', '8'),
('Manraj', 'Adamson', '113', '5'),
('Raisa', 'House', '114', '1'),
('Eadie', 'Nieves', '115', '4');

-- --------------------------------------------------------

--
-- Table structure for table `retail_company`
--

CREATE TABLE `retail_company` (
  `ClientID` varchar(6) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Address` varchar(500) NOT NULL,
  `RCCustomerID` varchar(6) NOT NULL,
  `RCOrderID` varchar(6) NOT NULL,
  `RCUsedDenim` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `retail_company`
--

INSERT INTO `retail_company` (`ClientID`, `Name`, `Address`, `RCCustomerID`, `RCOrderID`, `RCUsedDenim`) VALUES
('9203', 'Levis', '9091 Cotton Blvd, San Francisco,CA', '14', '154148', 149),
('9204', 'Madewell', '2380 Industrial Way,Los Angeles,CA', '15', '154149', 84),
('9205', 'Gap', '4828 Eagles Nest Drive,Redding,CA', '13', '154150', 2),
('9206', 'Everlane', '3163 Wilson Street,Bishop,CA', '17', '154151', 20),
('9207', 'Asos', '3670 Duck Creek Road,Palo Alto,CA', '11', '154152', 200),
('9208', 'Dawson', '4653 Fairfax Drive,City Of Commerce,CA', '16', '154153', 45),
('9209', 'Huit', '3675 Canis Heights Drive,Los Angeles,CA', '7', '154154', 23),
('9210', 'GoodAmerican', '3617 Jim Rosa Lane,Dublin,CA', '6', '154155', 56),
('9211', 'Jbrand', '2888 Ashcraft Court,El Cajon,CA', '4', '154156', 65),
('9212', 'Wrangler', '4005 Norman Street,Los Angeles,CA', '10', '154157', 12),
('9213', 'Calvin Klein', '4174 Locust Court,Norwalk,CA', '12', '154158', 190),
('9214', 'Diesel', '215 Angie Drive,Burbank,CA', '9', '154159', 22),
('9215', 'Guess', '2245 Wayside Lane,San Leandro,CA', '8', '154160', 55),
('9216', 'Balmain', '3436 Center Avenue,Fresno,CA', '5', '154161', 33),
('9217', 'Smith', '243 Canterbury Street,Pheonix,AZ', '1', '154162', 48);

-- --------------------------------------------------------

--
-- Table structure for table `warehouse`
--

CREATE TABLE `warehouse` (
  `OrderID` varchar(6) NOT NULL,
  `Amount` int(255) NOT NULL,
  `Address` varchar(500) NOT NULL,
  `Email` varchar(500) NOT NULL,
  `Phone` varchar(12) NOT NULL,
  `InBulk` int(255) NOT NULL,
  `OrderDate` date NOT NULL,
  `Deadline` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `warehouse`
--

INSERT INTO `warehouse` (`OrderID`, `Amount`, `Address`, `Email`, `Phone`, `InBulk`, `OrderDate`, `Deadline`) VALUES
('154148', 149, '894 Sierra Street, San Francisco, CA', 'renim1@renim.global.net', '415-231-2356', 149, '2020-01-10', '2020-03-01'),
('154149', 84, '221 Tango Road, Los Angeles, CA', 'renim2@renim.global.net', '213-220-0012', 84, '2020-01-23', '2020-03-20'),
('154150', 129, '3000 Cooper Street, Arlington, TX', 'ringo123@gmail.com', '817-332-3192', 129, '2020-02-23', '2020-04-23'),
('154151', 123, '1000 Corn Valley Road, Grand Prairie, TX', 'duoal@aol.com', '972-331-2212', 123, '2020-02-23', '2020-05-12'),
('154152', 121, '3154 S Belt Line Road, Irving, TX', 'oafiw@gmail.com', '972-311-3913', 121, '2020-03-13', '2020-05-13'),
('154153', 200, '232 3rd Avenue, New York, NY', 'oarark@yahoo.com', '212-519-2193', 200, '2020-03-15', '2020-05-15'),
('154154', 130, '201 Main Street, Ridgefield Park, NJ', 'laoa409@aol.com', '210-440-2131', 130, '2020-03-15', '2020-05-15'),
('154155', 220, '76 Summer Street, Boston, MA', 'alda4@zoho.com', '857-441-0131', 220, '2020-03-26', '2020-05-26'),
('154156', 79, '44 E Ontario Street, Chicago, IL', 'laiar9@icloud.com', '312-951-6331', 79, '2020-03-30', '2020-05-30'),
('154157', 100, '160 12th Street, Elko, NV', 'aaiq849@yahoo.com', '775-331-2914', 100, '2020-03-31', '2030-05-31'),
('154158', 150, '3101 W Kootenai Street, Boise, ID', 'alfaoe921@gmail.com', '208-338-9782', 150, '2020-04-01', '2020-07-12'),
('154159', 312, '215 E Palm Avenue, Tampa, FL', 'iafia@gmail.com', '813-991-2911', 312, '2020-04-30', '2020-07-30'),
('154160', 80, '14798 E Iliff Avenue, Aurora, CO', 'kadjair@yahoo.com', '303-728-4183', 80, '2020-04-09', '2020-07-09'),
('154161', 150, '900 State Street, Salem, OR', 'marifar@gmail.com', '503-813-2139', 150, '2020-04-11', '2020-07-11'),
('154162', 200, '1918 E Yesler Way, Seattle, WA', 'afuaei@gmail.com', '206-841-2913', 200, '2020-04-15', '2020-07-15');

-- --------------------------------------------------------

--
-- Structure for view `buyer_endproduct_info`
--
DROP TABLE IF EXISTS `buyer_endproduct_info`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `buyer_endproduct_info`  AS  select `buyer`.`FName` AS `FN`,`buyer`.`LName` AS `LN`,`buyer`.`NoOfItems` AS `Items`,`end_product`.`CommercialApplication` AS `CA`,`end_product`.`CompostMaterial` AS `CM` from ((`buyer` join `buyer_endproduct`) join `end_product`) where `buyer_endproduct`.`BEBuyerID` = `buyer`.`BuyerID` and `buyer_endproduct`.`BEProductID` = `end_product`.`ProductID` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buyer`
--
ALTER TABLE `buyer`
  ADD PRIMARY KEY (`BuyerID`),
  ADD UNIQUE KEY `Address` (`Address`),
  ADD UNIQUE KEY `Email` (`Email`),
  ADD UNIQUE KEY `Phone` (`Phone`),
  ADD UNIQUE KEY `LName` (`LName`),
  ADD KEY `NoOfItems` (`NoOfItems`),
  ADD KEY `FName` (`FName`);

--
-- Indexes for table `buyer_endproduct`
--
ALTER TABLE `buyer_endproduct`
  ADD UNIQUE KEY `BEBuyerID` (`BEBuyerID`),
  ADD UNIQUE KEY `BEProductID` (`BEProductID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`CustomerID`),
  ADD UNIQUE KEY `LName` (`LName`),
  ADD UNIQUE KEY `Address` (`Address`),
  ADD UNIQUE KEY `Email` (`Email`),
  ADD UNIQUE KEY `RefID` (`RefID`),
  ADD KEY `FName` (`FName`),
  ADD KEY `NoOfItems` (`NoOfItems`),
  ADD KEY `Phone` (`Phone`);

--
-- Indexes for table `end_product`
--
ALTER TABLE `end_product`
  ADD PRIMARY KEY (`ProductID`),
  ADD KEY `CommercialApplication` (`CommercialApplication`),
  ADD KEY `CompostMaterial` (`CompostMaterial`),
  ADD KEY `EPOrderID` (`EPOrderID`);

--
-- Indexes for table `referral`
--
ALTER TABLE `referral`
  ADD UNIQUE KEY `ReferalID` (`ReferalID`),
  ADD UNIQUE KEY `CustomerID` (`CustomerID`),
  ADD KEY `FName` (`FName`),
  ADD KEY `LName` (`LName`);

--
-- Indexes for table `retail_company`
--
ALTER TABLE `retail_company`
  ADD PRIMARY KEY (`ClientID`),
  ADD UNIQUE KEY `RCCustomerID` (`RCCustomerID`),
  ADD UNIQUE KEY `RCOrderID` (`RCOrderID`),
  ADD KEY `Name` (`Name`),
  ADD KEY `Address` (`Address`),
  ADD KEY `RCUsedDenim` (`RCUsedDenim`);

--
-- Indexes for table `warehouse`
--
ALTER TABLE `warehouse`
  ADD PRIMARY KEY (`OrderID`),
  ADD KEY `OrderDate` (`OrderDate`),
  ADD KEY `Deadline` (`Deadline`),
  ADD KEY `Email` (`Email`),
  ADD KEY `Phone` (`Phone`),
  ADD KEY `Amount` (`Amount`),
  ADD KEY `Address` (`Address`),
  ADD KEY `InBulk` (`InBulk`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `buyer_endproduct`
--
ALTER TABLE `buyer_endproduct`
  ADD CONSTRAINT `buyer_endproduct_ibfk_1` FOREIGN KEY (`BEBuyerID`) REFERENCES `buyer` (`BuyerID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `buyer_endproduct_ibfk_2` FOREIGN KEY (`BEProductID`) REFERENCES `end_product` (`ProductID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `referral`
--
ALTER TABLE `referral`
  ADD CONSTRAINT `referral_ibfk_1` FOREIGN KEY (`ReferalID`) REFERENCES `customer` (`RefID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `referral_ibfk_2` FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`CustomerID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `retail_company`
--
ALTER TABLE `retail_company`
  ADD CONSTRAINT `retail_company_ibfk_1` FOREIGN KEY (`RCCustomerID`) REFERENCES `customer` (`CustomerID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `retail_company_ibfk_2` FOREIGN KEY (`RCOrderID`) REFERENCES `warehouse` (`OrderID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
