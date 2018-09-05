-- MySQL dump 10.13  Distrib 5.6.41, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: customerdb
-- ------------------------------------------------------
-- Server version	5.6.41-log

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
-- Table structure for table `bank_account`
--

DROP TABLE IF EXISTS `bank_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bank_account` (
  `Account_Number` int(11) NOT NULL,
  `Account Type` varchar(45) NOT NULL,
  `BSB Number` varchar(45) NOT NULL,
  `Balance` varchar(45) NOT NULL,
  `InterestRate` varchar(45) NOT NULL,
  `OpenDate` varchar(45) NOT NULL,
  `NetBankingPassword` varchar(45) NOT NULL,
  PRIMARY KEY (`Account_Number`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bank_account`
--

LOCK TABLES `bank_account` WRITE;
/*!40000 ALTER TABLE `bank_account` DISABLE KEYS */;
INSERT INTO `bank_account` VALUES (10891089,'Savings','063891','5000','19%','14-02-2014','Jass@123'),(24732688,'Credit','061472','1900','25%','12-08-2011','Nest@123'),(27347621,'Savings','061823','700','19%','10-02-2017','Boby@123'),(45478776,'Savings','063262','530','19%','21-09-2000','Sesh@443'),(47626663,'Credit','062914','4200','25%','19-07-2000','Sals@123'),(64685627,'Savings','064421','3400','19%','20-08-1994','Bijju@123'),(66436409,'Savings','069123','200','19%','23-08-1994','Abhi@123'),(67777779,'Savings','063262','15000','19%','22-02-2017','Kezi@123'),(97465413,'Savings','068123','864','19%','20-05-1988','Bala@123');
/*!40000 ALTER TABLE `bank_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `checkrate`
--

DROP TABLE IF EXISTS `checkrate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `checkrate` (
  `ReceiptNumber` int(11) NOT NULL,
  `CountryCode` int(11) NOT NULL,
  PRIMARY KEY (`ReceiptNumber`,`CountryCode`),
  KEY `CountryCode_idx` (`CountryCode`),
  CONSTRAINT `CountryCode` FOREIGN KEY (`CountryCode`) REFERENCES `exchange rate` (`CountryCode`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `ReceiptNumber` FOREIGN KEY (`ReceiptNumber`) REFERENCES `exchange currency` (`ReceiptNumber`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `checkrate`
--

LOCK TABLES `checkrate` WRITE;
/*!40000 ALTER TABLE `checkrate` DISABLE KEYS */;
/*!40000 ALTER TABLE `checkrate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `credit card`
--

DROP TABLE IF EXISTS `credit card`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `credit card` (
  `CCardNumber` int(11) NOT NULL,
  `expiry date` varchar(45) NOT NULL,
  `cardPin` varchar(45) NOT NULL,
  `pincode` varchar(45) NOT NULL,
  `creditLimit` varchar(45) NOT NULL,
  `overdueLimit` varchar(45) NOT NULL,
  `availableCredit` varchar(45) NOT NULL,
  PRIMARY KEY (`CCardNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `credit card`
--

LOCK TABLES `credit card` WRITE;
/*!40000 ALTER TABLE `credit card` DISABLE KEYS */;
INSERT INTO `credit card` VALUES (405034879,'04/25','3436','3000','2000','500','1500'),(642633644,'04/25','4653','3051','2000','1000','1000'),(849388571,'02/24','6748','3874','7500','200','7300'),(884873984,'07/29','9842','3038','10000','1500','8500');
/*!40000 ALTER TABLE `credit card` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `CUSTOMER_ID` int(11) NOT NULL,
  `FIRST_NAME` varchar(45) NOT NULL,
  `LAST_NAME` varchar(45) NOT NULL,
  `DOB` varchar(45) NOT NULL,
  `POST_CODE` varchar(45) NOT NULL,
  `EMAIL_ADDRESS` varchar(45) NOT NULL,
  `PASSWORD` varchar(45) NOT NULL,
  `MOBILE_NUMBER` varchar(45) NOT NULL,
  `DESK_PHONE_NUMBER` varchar(45) NOT NULL,
  PRIMARY KEY (`CUSTOMER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (498261,'Maria','Garcia','01-11-1988','3050','maria.garcia@acu.au','thrin4suh','0378057533','0834323445'),(644352,'Jimmy','Choo','02-07-1952','3961','jimmy.choo@acu.au','gf66bgg','0449880878','0843377953'),(693548,'Jack','Sparrow','23-08-1994','3271','jack.sparrow@acu.au','gohggh4e','0450219918','0834458778'),(754342,'Sasha','Abhi','23-08-2014','3656','sasha.abhi@acu.au','Afgfv6t','0467385176','0835752257'),(765812,'Frank','Lin','02-07-1981','3078','james.smith@acu.au','sesh7mgsw','0452106133','0823457711'),(856322,'Jacob','Paul','18-09-1943','3031','jacob.paul@acu.au','J6FDfft','0451960421','0934536674'),(874662,'David ','Smith','02-14-1984','3051','david.smith@acu.au','heman5hu','0344909446','0833434586'),(878552,'Moses','Peter','23-06-1964','3479','moses.peter@acu.au','Jer4dgf','0342657533','0945347822'),(912756,'James','Johnson','09-06-1994','3913','james.johnson@acu.au','jme6trry','0477652113','0843646649'),(923222,'Bala','Tenneti','05-09-1991','3000','stephen.fern@acu.au','joe9otnv','0469745724','0895064497');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `debit card`
--

DROP TABLE IF EXISTS `debit card`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `debit card` (
  `DCardNumber` int(11) NOT NULL,
  `zipcode` varchar(45) NOT NULL,
  `card pin` varchar(45) NOT NULL,
  `expiry date` varchar(45) NOT NULL,
  `dailywithdrawlimit` varchar(45) NOT NULL,
  PRIMARY KEY (`DCardNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `debit card`
--

LOCK TABLES `debit card` WRITE;
/*!40000 ALTER TABLE `debit card` DISABLE KEYS */;
INSERT INTO `debit card` VALUES (341455353,'3050','3646','07/29','2000'),(345676733,'4040','5754','08/31','500'),(348738423,'3478','3931','08/20','500'),(457624673,'3000','8455','07/29','1000'),(884676352,'3934','7667','07/27','1000');
/*!40000 ALTER TABLE `debit card` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exchange currency`
--

DROP TABLE IF EXISTS `exchange currency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exchange currency` (
  `ReceiptNumber` int(11) NOT NULL,
  `amount` varchar(45) NOT NULL,
  `timestamp` varchar(45) NOT NULL,
  PRIMARY KEY (`ReceiptNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exchange currency`
--

LOCK TABLES `exchange currency` WRITE;
/*!40000 ALTER TABLE `exchange currency` DISABLE KEYS */;
/*!40000 ALTER TABLE `exchange currency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exchange rate`
--

DROP TABLE IF EXISTS `exchange rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exchange rate` (
  `CountryCode` int(11) NOT NULL,
  `country name` varchar(45) NOT NULL,
  `buyRate` varchar(45) NOT NULL,
  `sellRate` varchar(45) NOT NULL,
  PRIMARY KEY (`CountryCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exchange rate`
--

LOCK TABLES `exchange rate` WRITE;
/*!40000 ALTER TABLE `exchange rate` DISABLE KEYS */;
INSERT INTO `exchange rate` VALUES (1,'United States','71','67'),(2,'Australia','52','49'),(3,'UK','79','74');
/*!40000 ALTER TABLE `exchange rate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `holdby`
--

DROP TABLE IF EXISTS `holdby`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `holdby` (
  `CUSTOMER_ID` int(11) NOT NULL,
  `Account_Number` int(11) NOT NULL,
  PRIMARY KEY (`CUSTOMER_ID`,`Account_Number`),
  KEY `FK1_idx` (`CUSTOMER_ID`),
  KEY `FK2_idx` (`Account_Number`,`CUSTOMER_ID`),
  CONSTRAINT `FK1` FOREIGN KEY (`CUSTOMER_ID`) REFERENCES `customer` (`CUSTOMER_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK2` FOREIGN KEY (`Account_Number`) REFERENCES `bank_account` (`Account_Number`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `holdby`
--

LOCK TABLES `holdby` WRITE;
/*!40000 ALTER TABLE `holdby` DISABLE KEYS */;
INSERT INTO `holdby` VALUES (498261,10891089),(644352,97465413),(693548,67777779),(754342,66436409),(765812,64685627),(856322,47626663),(874662,27347621),(878552,24732688),(923222,97465413);
/*!40000 ALTER TABLE `holdby` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `holdcc`
--

DROP TABLE IF EXISTS `holdcc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `holdcc` (
  `CCardNumber` int(11) NOT NULL,
  `Account_Number` int(11) NOT NULL,
  PRIMARY KEY (`Account_Number`,`CCardNumber`),
  KEY `fk2_idx` (`CCardNumber`),
  CONSTRAINT `fk11` FOREIGN KEY (`Account_Number`) REFERENCES `bank_account` (`Account_Number`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk12` FOREIGN KEY (`CCardNumber`) REFERENCES `credit card` (`CCardNumber`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `holdcc`
--

LOCK TABLES `holdcc` WRITE;
/*!40000 ALTER TABLE `holdcc` DISABLE KEYS */;
/*!40000 ALTER TABLE `holdcc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `holddc`
--

DROP TABLE IF EXISTS `holddc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `holddc` (
  `DCardNumber` int(11) NOT NULL,
  `Account_Number` int(11) NOT NULL,
  PRIMARY KEY (`DCardNumber`,`Account_Number`),
  KEY `fk4_idx` (`Account_Number`),
  CONSTRAINT `fk3` FOREIGN KEY (`DCardNumber`) REFERENCES `debit card` (`DCardNumber`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk4` FOREIGN KEY (`Account_Number`) REFERENCES `bank_account` (`Account_Number`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `holddc`
--

LOCK TABLES `holddc` WRITE;
/*!40000 ALTER TABLE `holddc` DISABLE KEYS */;
/*!40000 ALTER TABLE `holddc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `international tranasaction`
--

DROP TABLE IF EXISTS `international tranasaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `international tranasaction` (
  `IntTransNumber` int(11) NOT NULL,
  `timestamp` varchar(45) NOT NULL,
  `exchange rate` varchar(45) NOT NULL,
  `paid amount` varchar(45) NOT NULL,
  `converted amount` varchar(45) NOT NULL,
  `transaction fee` varchar(45) NOT NULL,
  `sender name` varchar(45) NOT NULL,
  `account number` varchar(45) NOT NULL,
  `recepient address` varchar(45) NOT NULL,
  `swift code` varchar(45) NOT NULL,
  `recepient bank name` varchar(45) NOT NULL,
  `recepient bank account` varchar(45) NOT NULL,
  PRIMARY KEY (`IntTransNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `international tranasaction`
--

LOCK TABLES `international tranasaction` WRITE;
/*!40000 ALTER TABLE `international tranasaction` DISABLE KEYS */;
INSERT INTO `international tranasaction` VALUES (46346363,'04:30pm','51.09','110 AUD','5525 INR','1.85 AUD','Bala','66436409','Krishna Dt,Vijayawada','1003044','HDFC Bank','8743562864'),(67126531,'05:30pm','71','500 USD','676 AUD','2 USD','Mayu','47626663','King Street, Melbourne','0633233','Commonwealth Bank','47626663,6546355634');
/*!40000 ALTER TABLE `international tranasaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `madeinttransaction`
--

DROP TABLE IF EXISTS `madeinttransaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `madeinttransaction` (
  `IntTransNumber` int(11) NOT NULL,
  `Account_Number` int(11) NOT NULL,
  PRIMARY KEY (`IntTransNumber`,`Account_Number`),
  KEY `fk10_idx` (`Account_Number`),
  CONSTRAINT `fk10` FOREIGN KEY (`Account_Number`) REFERENCES `bank_account` (`Account_Number`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk9` FOREIGN KEY (`IntTransNumber`) REFERENCES `international tranasaction` (`IntTransNumber`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `madeinttransaction`
--

LOCK TABLES `madeinttransaction` WRITE;
/*!40000 ALTER TABLE `madeinttransaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `madeinttransaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `madepayment`
--

DROP TABLE IF EXISTS `madepayment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `madepayment` (
  `PaymentNumber` int(11) NOT NULL,
  `Account_Number` int(11) NOT NULL,
  PRIMARY KEY (`PaymentNumber`,`Account_Number`),
  KEY `fk8_idx` (`Account_Number`),
  CONSTRAINT `fk7` FOREIGN KEY (`PaymentNumber`) REFERENCES `payment` (`PaymentNumber`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk8` FOREIGN KEY (`Account_Number`) REFERENCES `bank_account` (`Account_Number`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `madepayment`
--

LOCK TABLES `madepayment` WRITE;
/*!40000 ALTER TABLE `madepayment` DISABLE KEYS */;
/*!40000 ALTER TABLE `madepayment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `madetransation`
--

DROP TABLE IF EXISTS `madetransation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `madetransation` (
  `TransactionNumber` int(11) NOT NULL,
  `Account_Number` int(11) NOT NULL,
  PRIMARY KEY (`TransactionNumber`,`Account_Number`),
  KEY `Account_Number_idx` (`Account_Number`),
  CONSTRAINT `Account_Number` FOREIGN KEY (`Account_Number`) REFERENCES `bank_account` (`Account_Number`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `TransactionNumber` FOREIGN KEY (`TransactionNumber`) REFERENCES `transaction` (`TransactionNumber`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `madetransation`
--

LOCK TABLES `madetransation` WRITE;
/*!40000 ALTER TABLE `madetransation` DISABLE KEYS */;
/*!40000 ALTER TABLE `madetransation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `needcurrency`
--

DROP TABLE IF EXISTS `needcurrency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `needcurrency` (
  `IntTransNumber` int(11) NOT NULL,
  `ReceiptNumber` int(11) NOT NULL,
  PRIMARY KEY (`IntTransNumber`,`ReceiptNumber`),
  KEY `fk16_idx` (`ReceiptNumber`),
  CONSTRAINT `fk15` FOREIGN KEY (`IntTransNumber`) REFERENCES `international tranasaction` (`IntTransNumber`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk16` FOREIGN KEY (`ReceiptNumber`) REFERENCES `exchange currency` (`ReceiptNumber`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `needcurrency`
--

LOCK TABLES `needcurrency` WRITE;
/*!40000 ALTER TABLE `needcurrency` DISABLE KEYS */;
/*!40000 ALTER TABLE `needcurrency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment` (
  `PaymentNumber` int(11) NOT NULL,
  `paymenttype` varchar(45) DEFAULT NULL,
  `amount` varchar(45) DEFAULT NULL,
  `timestamp` varchar(45) DEFAULT NULL,
  `recepientName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`PaymentNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES (1234567,'direct debit','80','09:28pm','unicef'),(1245678,'mobile payment','29','12:30pm','lycamobile'),(1345678,'debit card','25','02:34pm','Chemist warehouse'),(1456789,'bank transfer','1000','10:00am','transfer wise');
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transaction` (
  `TransactionNumber` int(11) NOT NULL,
  `transaction type` varchar(45) NOT NULL,
  `timestamp` varchar(45) NOT NULL,
  `amount` varchar(45) NOT NULL,
  `SenderAccount` varchar(45) NOT NULL,
  `RecepientAccount` varchar(45) NOT NULL,
  PRIMARY KEY (`TransactionNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction`
--

LOCK TABLES `transaction` WRITE;
/*!40000 ALTER TABLE `transaction` DISABLE KEYS */;
INSERT INTO `transaction` VALUES (12344545,'Debit','9:00am','250','10891089','19871234'),(14564323,'Sale','6:30pm','500','27347621','5434321'),(22112124,'Credit','04:30pm','700','24732688','23443456');
/*!40000 ALTER TABLE `transaction` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-09-03 19:00:29
