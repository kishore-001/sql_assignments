/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19-12.1.2-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: EmployeeDB
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
-- Table structure for table `EmployeeDetails`
--

DROP TABLE IF EXISTS `EmployeeDetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `EmployeeDetails` (
  `EmpId` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `ManagerId` int(11) DEFAULT NULL,
  `DateOfJoining` date DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`EmpId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EmployeeDetails`
--

LOCK TABLES `EmployeeDetails` WRITE;
/*!40000 ALTER TABLE `EmployeeDetails` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `EmployeeDetails` VALUES
(101,'Alice Johnson',321,'2022-05-15','New York'),
(102,'Bob Smith',876,'2020-03-12','Los Angeles'),
(103,'Charlie Brown',986,'2021-08-23','Chicago'),
(104,'David Williams',876,'2019-11-05','Houston'),
(105,'Eve Davis',321,'2023-01-07','Phoenix'),
(106,'Frank Miller',986,'2018-12-19','Philadelphia'),
(107,'Grace Wilson',876,'2022-03-28','San Antonio'),
(108,'Hank Moore',321,'2021-09-14','San Diego'),
(109,'Ivy Taylor',986,'2020-02-11','Dallas'),
(110,'Jack Anderson',876,'2022-11-30','San Jose'),
(111,'Karen Thomas',321,'2021-07-16','Austin'),
(112,'Liam Jackson',986,'2023-04-21','Fort Worth'),
(113,'Mia White',876,'2019-06-03','Columbus'),
(114,'Noah Harris',321,'2020-12-10','Charlotte'),
(115,'Olivia Martin',986,'2021-10-25','San Francisco'),
(116,'Paul Garcia',876,'2023-07-18','Indianapolis'),
(117,'Quinn Martinez',321,'2022-09-07','Seattle'),
(118,'Rachel Rodriguez',986,'2020-01-15','Denver'),
(119,'Steve Clark',876,'2021-03-19','Washington'),
(120,'Tina Lewis',321,'2019-08-31','Boston');
/*!40000 ALTER TABLE `EmployeeDetails` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `EmployeeSalary`
--

DROP TABLE IF EXISTS `EmployeeSalary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `EmployeeSalary` (
  `EmpId` int(11) DEFAULT NULL,
  `Project` varchar(50) DEFAULT NULL,
  `Salary` decimal(10,2) DEFAULT NULL,
  `Variable` decimal(10,2) DEFAULT NULL,
  KEY `EmpId` (`EmpId`),
  CONSTRAINT `1` FOREIGN KEY (`EmpId`) REFERENCES `EmployeeDetails` (`EmpId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EmployeeSalary`
--

LOCK TABLES `EmployeeSalary` WRITE;
/*!40000 ALTER TABLE `EmployeeSalary` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `EmployeeSalary` VALUES
(101,'P1',7500.00,500.00),
(102,'P2',9200.00,700.00),
(103,'P1',6700.00,600.00),
(104,'P3',8300.00,900.00),
(105,'P2',7800.00,800.00),
(106,'P3',9100.00,1000.00),
(107,'P1',6200.00,400.00),
(108,'P2',8800.00,750.00),
(109,'P3',9500.00,1100.00),
(110,'P1',7200.00,650.00),
(111,'P2',8700.00,850.00),
(112,'P3',9300.00,1200.00),
(113,'P1',7900.00,550.00),
(114,'P2',6800.00,450.00),
(115,'P3',8400.00,900.00),
(116,'P1',7600.00,500.00),
(117,'P2',8900.00,1000.00),
(118,'P3',9200.00,1100.00),
(119,'P1',8100.00,600.00),
(120,'P2',8300.00,750.00);
/*!40000 ALTER TABLE `EmployeeSalary` ENABLE KEYS */;
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

-- Dump completed on 2026-01-05 19:17:07
