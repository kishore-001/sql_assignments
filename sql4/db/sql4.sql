/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19-12.1.2-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: sql4
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
-- Table structure for table `authors`
--

DROP TABLE IF EXISTS `authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `authors` (
  `authorId` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `surname` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`authorId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authors`
--

LOCK TABLES `authors` WRITE;
/*!40000 ALTER TABLE `authors` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `authors` VALUES
(1,'F. Scott','Fitzgerald'),
(2,'Harper','Lee'),
(3,'George','Orwell'),
(4,'Jane','Austen'),
(5,'J.D.','Salinger'),
(6,'J.R.R.','Tolkien'),
(7,'Herman','Melville'),
(8,'Leo','Tolstoy'),
(9,'James','Joyce'),
(10,'Homer',''),
(11,'Smith','Allen'),
(12,'Sally','Allen'),
(13,'Linda','Sandra');
/*!40000 ALTER TABLE `authors` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `books` (
  `bookId` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `pagecount` int(11) DEFAULT NULL,
  `point` int(11) DEFAULT NULL,
  `authorId` int(11) DEFAULT NULL,
  `typeId` int(11) DEFAULT NULL,
  PRIMARY KEY (`bookId`),
  KEY `authorId` (`authorId`),
  KEY `typeId` (`typeId`),
  CONSTRAINT `1` FOREIGN KEY (`authorId`) REFERENCES `authors` (`authorId`),
  CONSTRAINT `2` FOREIGN KEY (`typeId`) REFERENCES `types` (`typeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `books` VALUES
(1,'The Great Gatsby',180,95,1,1),
(2,'To Kill a Mockingbird',281,90,2,2),
(3,'1984',328,88,3,3),
(4,'Pride and Prejudice',279,93,4,4),
(5,'The Catcher in the Rye',214,85,5,1),
(6,'The Hobbit',310,91,6,2),
(7,'Moby-Dick',635,80,7,3),
(8,'War and Peace',1225,92,8,4),
(9,'Ulysses',730,89,9,1),
(10,'The Odyssey',541,87,10,2);
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `borrows`
--

DROP TABLE IF EXISTS `borrows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `borrows` (
  `borrowId` int(11) NOT NULL,
  `studentId` int(11) DEFAULT NULL,
  `bookId` int(11) DEFAULT NULL,
  `takenDate` date DEFAULT NULL,
  `broughtDate` date DEFAULT NULL,
  PRIMARY KEY (`borrowId`),
  KEY `studentId` (`studentId`),
  KEY `bookId` (`bookId`),
  CONSTRAINT `1` FOREIGN KEY (`studentId`) REFERENCES `students` (`studentId`),
  CONSTRAINT `2` FOREIGN KEY (`bookId`) REFERENCES `books` (`bookId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `borrows`
--

LOCK TABLES `borrows` WRITE;
/*!40000 ALTER TABLE `borrows` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `borrows` VALUES
(1,1,3,'2024-01-10','2024-01-20'),
(2,2,5,'2024-01-12','2024-01-22'),
(3,3,7,'2024-01-15','2024-01-25'),
(4,4,2,'2024-01-18','2024-01-28'),
(5,5,1,'2024-01-20','2024-01-30'),
(6,6,4,'2024-01-22','2024-02-01'),
(7,7,6,'2024-01-24','2024-02-03'),
(8,8,8,'2024-01-26','2024-02-05'),
(9,9,10,'2024-01-28','2024-02-07'),
(10,10,9,'2024-01-30','2024-02-09');
/*!40000 ALTER TABLE `borrows` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
  `studentId` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `surname` varchar(100) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `class` varchar(20) DEFAULT NULL,
  `point` int(11) DEFAULT NULL,
  PRIMARY KEY (`studentId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `students` VALUES
(1,'John','Doe','2005-01-15','M','10A',90),
(2,'Jane','Smith','2006-03-22','F','10B',95),
(3,'Alice','Johnson','2005-07-12','F','10His',93),
(4,'Bob','Brown','2006-11-30','M','10C',81),
(5,'Charlie','Davis','2005-05-05','M','10B',97),
(6,'Diana','Miller','2006-06-25','F','10C',86),
(7,'Eve','Wilson','2005-09-18','F','10A',92),
(8,'Frank','Moore','2006-12-02','M','10B',85),
(9,'Grace','Taylor','2005-04-17','F','10C',88),
(10,'Hank','Anderson','2006-10-20','M','10A',83),
(11,'Thomas','Nelson',NULL,'M','10Math',NULL),
(12,'Sally','Allen',NULL,'F','9Bio',NULL),
(13,'Linda','Sandra',NULL,'F','11His',NULL);
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `types`
--

DROP TABLE IF EXISTS `types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `types` (
  `typeId` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`typeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `types`
--

LOCK TABLES `types` WRITE;
/*!40000 ALTER TABLE `types` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `types` VALUES
(1,'Fiction'),
(2,'Classic'),
(3,'Dystopian'),
(4,'Literature'),
(5,'Fantasy'),
(6,'Adventure'),
(7,'Historical Fiction'),
(8,'Science Fiction'),
(9,'Mythology'),
(10,'Philosophy'),
(11,'Biography');
/*!40000 ALTER TABLE `types` ENABLE KEYS */;
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

-- Dump completed on 2026-01-06 18:11:57
