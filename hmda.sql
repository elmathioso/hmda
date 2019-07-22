-- MySQL dump 10.16  Distrib 10.1.38-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: hmda
-- ------------------------------------------------------
-- Server version	10.1.38-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `agencycode`
--

DROP TABLE IF EXISTS `agencycode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `agencycode` (
  `agencyCodeID` int(11) NOT NULL AUTO_INCREMENT,
  `agencyCode` varchar(1) DEFAULT NULL,
  `agencyValue` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`agencyCodeID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `counties`
--

DROP TABLE IF EXISTS `counties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `counties` (
  `FIPS_STATE` text,
  `FIPS_COUNTY` text,
  `COUNTY_NAME` text,
  `COUNTY_LAT` double DEFAULT NULL,
  `COUNTY_LONG` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lars`
--

DROP TABLE IF EXISTS `lars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lars` (
  `appID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ASOF_DATE` int(10) unsigned NOT NULL,
  `RESP_ID` varchar(10) NOT NULL,
  `AGENCY_CODE` varchar(1) NOT NULL,
  `LOAN_TYPE` varchar(1) NOT NULL,
  `LOAN_PURPOSE` varchar(1) NOT NULL,
  `OCCUPANCY` varchar(1) NOT NULL,
  `LOAN_AMOUNT` varchar(5) NOT NULL,
  `ACTION_TYPE` varchar(1) NOT NULL,
  `PROPERTY_MSA` varchar(5) NOT NULL,
  `STATE_CODE` varchar(2) NOT NULL,
  `COUNTY_CODE` varchar(3) NOT NULL,
  `CENSUS_TRACT_NUMBER` varchar(7) NOT NULL,
  `RACE_APPLICANT` varchar(1) NOT NULL,
  `RACE_COAPPLICANT` varchar(1) NOT NULL,
  `SEX_APPLICANT` varchar(1) NOT NULL,
  `SEX_COAPPLICANT` varchar(1) NOT NULL,
  `APPLICANT_INCOME` varchar(4) NOT NULL,
  `PURCHASER_TYPE` varchar(1) NOT NULL,
  `DENIAL_REASON_1` varchar(1) NOT NULL,
  `DENIAL_REASON_2` varchar(1) NOT NULL,
  `DENIAL_REASON_3` varchar(1) NOT NULL,
  `EDIT_STATUS` varchar(1) NOT NULL,
  `SEQUENCE_NUMBER` int(11) NOT NULL,
  PRIMARY KEY (`appID`)
) ENGINE=InnoDB AUTO_INCREMENT=97160167 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lars1981`
--

DROP TABLE IF EXISTS `lars1981`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lars1981` (
  `larsID` int(11) NOT NULL AUTO_INCREMENT,
  `respondentName` varchar(28) DEFAULT NULL,
  `respondentID` varchar(8) DEFAULT NULL,
  `reportMSA` varchar(4) DEFAULT NULL,
  `censusTract` varchar(6) DEFAULT NULL,
  `state` varchar(2) DEFAULT NULL,
  `county` varchar(3) DEFAULT NULL,
  `supervisoryAgencyCode` varchar(1) DEFAULT NULL,
  `censusValidityFlag` varchar(2) DEFAULT NULL,
  `VA_FHA` varchar(1) DEFAULT NULL,
  `vaNumLoans` varchar(4) DEFAULT NULL,
  `vaTotalLoans` varchar(9) DEFAULT NULL,
  `convLoansFlag` varchar(1) DEFAULT NULL,
  `convNumLoans` varchar(4) DEFAULT NULL,
  `convTotalLoans` varchar(9) DEFAULT NULL,
  `hiFlag` varchar(1) DEFAULT NULL,
  `hiNumLoans` varchar(4) DEFAULT NULL,
  `hiTotalLoans` varchar(9) DEFAULT NULL,
  `multiFlag` varchar(1) DEFAULT NULL,
  `multiNumLoans` varchar(4) DEFAULT NULL,
  `multiTotalLoans` varchar(9) DEFAULT NULL,
  `nonFlag` varchar(1) DEFAULT NULL,
  `nonNumLoans` varchar(4) DEFAULT NULL,
  `nonTotalLoans` varchar(9) DEFAULT NULL,
  `recordQuality` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`larsID`)
) ENGINE=InnoDB AUTO_INCREMENT=3979445 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-07-22  2:54:14
