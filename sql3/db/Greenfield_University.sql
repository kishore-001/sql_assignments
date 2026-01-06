/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19-12.1.2-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: Greenfield_University
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
-- Table structure for table `College_Tables_Data`
--

DROP TABLE IF EXISTS `College_Tables_Data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `College_Tables_Data` (
  `College_ID` int(11) NOT NULL,
  `College_Name` varchar(100) DEFAULT NULL,
  `College_Area` varchar(150) DEFAULT NULL,
  `Dept_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`College_ID`),
  KEY `fk_college_department` (`Dept_ID`),
  CONSTRAINT `fk_college_department` FOREIGN KEY (`Dept_ID`) REFERENCES `Department_Table` (`Dept_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `College_Tables_Data`
--

LOCK TABLES `College_Tables_Data` WRITE;
/*!40000 ALTER TABLE `College_Tables_Data` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `College_Tables_Data` VALUES
(1,'Central College','North',1),
(2,'City College','East',2),
(3,'Crown College','West',3),
(4,'Green College','South',4),
(5,'Hill College','North',5),
(6,'Lake College','East',6),
(7,'Metro College','West',7),
(8,'Nova College','South',8),
(9,'Omega College','North',9),
(10,'Prime College','East',10);
/*!40000 ALTER TABLE `College_Tables_Data` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `Department_Table`
--

DROP TABLE IF EXISTS `Department_Table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `Department_Table` (
  `Dept_ID` int(11) NOT NULL,
  `Dept_Name` varchar(100) DEFAULT NULL,
  `Dept_Facility` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Dept_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Department_Table`
--

LOCK TABLES `Department_Table` WRITE;
/*!40000 ALTER TABLE `Department_Table` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `Department_Table` VALUES
(1,'Computer Science','Lab'),
(2,'Mechanical','Workshop'),
(3,'Civil','Survey'),
(4,'Electrical','Power Lab'),
(5,'Electronics','VLSI Lab'),
(6,'AI','Research'),
(7,'IT','Server Room'),
(8,'Chemical','Plant'),
(9,'Physics','Experiments'),
(10,'Maths','Tutorials');
/*!40000 ALTER TABLE `Department_Table` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `Professor_Table`
--

DROP TABLE IF EXISTS `Professor_Table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `Professor_Table` (
  `Professor_ID` int(11) NOT NULL,
  `Professor_Name` varchar(100) DEFAULT NULL,
  `Professor_Subject` varchar(100) DEFAULT NULL,
  `Salary` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`Professor_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Professor_Table`
--

LOCK TABLES `Professor_Table` WRITE;
/*!40000 ALTER TABLE `Professor_Table` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `Professor_Table` VALUES
(1,'Arun','DBMS',NULL),
(2,'Bala','OS',NULL),
(3,'Charan','Networks',NULL),
(4,'David','AI',NULL),
(5,'Eshan','ML',NULL),
(6,'Farooq','Maths',NULL),
(7,'Gopal','Physics',NULL),
(8,'Hari','Chemistry',NULL),
(9,'Imran','Electronics',NULL),
(10,'John','Mechanics',NULL);
/*!40000 ALTER TABLE `Professor_Table` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `Student_Table`
--

DROP TABLE IF EXISTS `Student_Table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `Student_Table` (
  `Student_ID` int(11) NOT NULL,
  `Student_Name` varchar(100) DEFAULT NULL,
  `Student_Stream` varchar(100) DEFAULT NULL,
  `Professor_ID` int(11) DEFAULT NULL,
  `Contact` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`Student_ID`),
  KEY `fk_student_professor` (`Professor_ID`),
  CONSTRAINT `fk_student_professor` FOREIGN KEY (`Professor_ID`) REFERENCES `Professor_Table` (`Professor_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Student_Table`
--

LOCK TABLES `Student_Table` WRITE;
/*!40000 ALTER TABLE `Student_Table` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `Student_Table` VALUES
(1,'amit','CS',1,NULL),
(2,'anil','IT',2,NULL),
(3,'arjun','AI',3,NULL),
(4,'bala','ME',4,NULL),
(5,'chandu','CE',5,NULL),
(6,'deepak','EE',6,NULL),
(7,'eshwar','CS',7,NULL),
(8,'farhan','IT',8,NULL),
(9,'gokul','AI',9,NULL),
(10,'hari','ME',10,NULL);
/*!40000 ALTER TABLE `Student_Table` ENABLE KEYS */;
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

-- Dump completed on 2026-01-06 17:08:04
