/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19-12.1.2-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: Customers_Orders_Products
-- ------------------------------------------------------
-- Server version	12.1.2-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*M!100616 SET @OLD_NOTE_VERBOSITY=@@NOTE_VERBOSITY, NOTE_VERBOSITY=0 */;

--
-- Table structure for table `Customers`
--

DROP TABLE IF EXISTS `Customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `Customers` (
  `CustomerID` int(11) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`CustomerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Customers`
--

LOCK TABLES `Customers` WRITE;
/*!40000 ALTER TABLE `Customers` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `Customers` VALUES
(1,'John Doe','johndoe@example.com'),
(2,'Jane Smith','janesmith@example.com'),
(3,'Robert Johnson','robertjohnson@example.com'),
(4,'Emily Brown','emilybrown@example.com'),
(5,'Michael Davis','michaeldavis@example.com'),
(6,'Sarah Wilson','sarahwilson@example.com'),
(7,'David Thompson','davidthompson@example.com'),
(8,'Jessica Lee','jessicalee@example.com'),
(9,'William Turner','williamturner@example.com'),
(10,'Olivia Martinez','oliviamartinez@example.com'),
(11,'James Anderson','jamesanderson@example.com'),
(12,'Kelly Clarkson','kellyclarkson@example.com');
/*!40000 ALTER TABLE `Customers` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `Orders`
--

DROP TABLE IF EXISTS `Orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `Orders` (
  `OrderID` int(11) NOT NULL,
  `CustomerID` int(11) DEFAULT NULL,
  `ProductName` varchar(50) DEFAULT NULL,
  `OrderDate` date DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL,
  PRIMARY KEY (`OrderID`),
  KEY `CustomerID` (`CustomerID`),
  CONSTRAINT `1` FOREIGN KEY (`CustomerID`) REFERENCES `Customers` (`CustomerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Orders`
--

LOCK TABLES `Orders` WRITE;
/*!40000 ALTER TABLE `Orders` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `Orders` VALUES
(1,1,'Product A','2023-07-01',5),
(2,2,'Product B','2023-07-02',3),
(3,3,'Product C','2023-07-03',2),
(4,4,'Product A','2023-07-04',1),
(5,5,'Product B','2023-07-05',4),
(6,6,'Product C','2023-07-06',2),
(7,7,'Product A','2023-07-07',3),
(8,8,'Product B','2023-07-08',2),
(9,9,'Product C','2023-07-09',5),
(10,10,'Product A','2023-07-10',1),
(11,11,'Product D','2023-07-10',3),
(12,12,'Product E','2023-07-11',6),
(13,5,'Product G','2023-07-12',2),
(14,4,'Product H','2023-07-13',4),
(15,6,'Product I','2023-07-14',3);
/*!40000 ALTER TABLE `Orders` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `Products`
--

DROP TABLE IF EXISTS `Products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `Products` (
  `ProductID` int(11) NOT NULL,
  `ProductName` varchar(50) DEFAULT NULL,
  `Price` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`ProductID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Products`
--

LOCK TABLES `Products` WRITE;
/*!40000 ALTER TABLE `Products` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `Products` VALUES
(1,'Product A',10.99),
(2,'Product B',8.99),
(3,'Product C',5.99),
(4,'Product D',12.99),
(5,'Product E',7.99),
(6,'Product F',6.99),
(7,'Product G',9.99),
(8,'Product H',11.99),
(9,'Product I',14.99),
(10,'Product J',4.99),
(11,'Product K',3.99),
(12,'Product L',15.99);
/*!40000 ALTER TABLE `Products` ENABLE KEYS */;
UNLOCK TABLES;
commit;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*M!100616 SET NOTE_VERBOSITY=@OLD_NOTE_VERBOSITY */;

-- Dump completed on 2026-01-07 19:42:06
