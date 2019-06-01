-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 13, 2017 at 10:09 PM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

-- CREATE Database tms
-- use tms



--
-- Database: `tms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE or replace TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', 'F925916E2754E5E03F75DD58A5733251', '2019-4-10 01:38:32');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE  or replace TABLE `tblbooking` (
  `BookingId` int(11) AUTO_INCREMENT,
  `PackageId` int(11) NOT NULL,
  `UserEmail` varchar(100) NOT NULL,
  `FromDate` varchar(100) NOT NULL,
  `ToDate` varchar(100) NOT NULL,
  `Price` int not null,
  `Comment` mediumtext NOT NULL,
  `RegDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL,
  `CancelledBy` varchar(5) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY(BookingId)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



CREATE or replace TABLE `tblenquiry` (
  `id` int(11) AUTO_INCREMENT PRIMARY KEY,
  `FullName` varchar(100) NOT NULL,
  `EmailId` varchar(100) NOT NULL,
  `MobileNumber` char(10) NOT NULL,
  `Subject` varchar(100) NOT NULL,
  `Description` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



CREATE or replace TABLE `tblusers` (
  `FullName` varchar(100) NOT NULL,
  `MobileNumber` char(10) NOT NULL,
  `EmailId` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `RegDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
)ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE or replace TABLE `tbltourpackages`(
`PackageId` INT AUTO_INCREMENT PRIMARY KEY,
`PackageLocation` varchar(100) NOT NULL,
`NumberOfPeoples` int(11) NOT NULL,
`PackageDetails`varchar(200) NOT NULL,
`StayPrice` int(11) NOT NULL,
`Bus` int(11) NOT NULL,
`Train` int(11) NOT NULL,
`Airlines` int(11) NOT NULL,
`NumberOfDays` int(11) NOT NULL,
`PackageImage` LONGBLOB NOT NULL,
`CreationDate`	timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
`UpdationDate` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
)ENGINE=InnoDB DEFAULT CHARSET=latin1;


  Create or replace table `tblissues`(
    `id`	INT AUTO_INCREMENT,
    `UserEmail` varchar(100) NOT NULL,
    `Issue`	varchar(100) NOT NULL,
    `Description`	 varchar(100) NOT NULL,
    `AdminRemark`	varchar(100) NOT NULL,
    `PostingDate`	timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `AdminremarkDate` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY(id)
  );

  
create or replace table tblpages(
  `type` varchar(100) NOT NULL,
  `detail` TEXT NOT NULL
);

 insert into `tblpages` (type, detail) VALUES ('terms', 'test1'),
 ('privacy', 'test2'),
 ('aboutus', 'test3'),
 ('software', 'test4'),
 ('aspnet', 'test5'),
 ('objectives', 'test6'),
 ('vbnet', 'test7'),
 ('candc', 'test8'),
 ('contact', '<a href="javascript:void(0);" onClick="enquiry.php">');

 
CREATE or replace TABLE `searchlog`(
  `SearchId` INT AUTO_INCREMENT,
  `UserEmail` varchar(100) NOT NULL,
  `Source` varchar(100) NOT NULL,
  `Destination` varchar(100) NOT NULL,
  `FromDate` DATE,
  `ToDate` DATE,
  `NumberOfPeoples` int(11) NOT NULL,
  `Budget` int(11) NOT NULL,
  PRIMARY KEY(SearchId)
);

/*
create or replace trigger compare 
after insert of Source ON searchlog
for each row
BEGIN
SELECT PackageID from searchlog, tbltourpackages where Destination=PackageLocation and 
END;*/