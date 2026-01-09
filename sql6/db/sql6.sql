/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19-12.1.2-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: sql6
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
-- Table structure for table `EmployeeDetail`
--

DROP TABLE IF EXISTS `EmployeeDetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `EmployeeDetail` (
  `EmployeeID` int(11) NOT NULL,
  `FirstName` varchar(50) DEFAULT NULL,
  `LastName` varchar(50) DEFAULT NULL,
  `Salary` int(11) DEFAULT NULL,
  `JoiningDate` datetime DEFAULT NULL,
  `Department` varchar(50) DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`EmployeeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EmployeeDetail`
--

LOCK TABLES `EmployeeDetail` WRITE;
/*!40000 ALTER TABLE `EmployeeDetail` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `EmployeeDetail` VALUES
(1,'Vikas','Ahlawat',600000,'2013-02-12 11:16:00','IT','Male'),
(2,'nikita','Jain',530000,'2013-02-14 11:16:00','HR','Female'),
(3,'Ashish','Kumar',1000000,'2013-02-14 11:16:00','IT','Male'),
(4,'Nikhil','Sharma',480000,'2013-02-15 11:16:00','HR','Male'),
(5,'anish','kadian',500000,'2013-02-16 11:16:00','Payroll','Male');
/*!40000 ALTER TABLE `EmployeeDetail` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `ProjectDetail`
--

DROP TABLE IF EXISTS `ProjectDetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `ProjectDetail` (
  `ProjectDetailID` int(11) NOT NULL,
  `EmployeeDetailID` int(11) DEFAULT NULL,
  `ProjectName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ProjectDetailID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ProjectDetail`
--

LOCK TABLES `ProjectDetail` WRITE;
/*!40000 ALTER TABLE `ProjectDetail` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `ProjectDetail` VALUES
(1,1,'Task Track'),
(2,1,'CLP'),
(3,1,'Survey Management'),
(4,2,'HR Management'),
(5,3,'Task Track'),
(6,3,'GRS'),
(7,3,'DDS'),
(8,4,'HR Management'),
(9,6,'GL Management');
/*!40000 ALTER TABLE `ProjectDetail` ENABLE KEYS */;
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

-- Dump completed on 2026-01-09 19:01:07
