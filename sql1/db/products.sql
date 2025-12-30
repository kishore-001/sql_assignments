/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19-12.1.2-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: Products
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
-- Table structure for table `PRODUCT_TABLE`
--

DROP TABLE IF EXISTS `PRODUCT_TABLE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `PRODUCT_TABLE` (
  `Product_Id` int(11) NOT NULL,
  `Country` varchar(100) DEFAULT NULL,
  `Product` varchar(100) DEFAULT NULL,
  `Units_Sold` decimal(10,1) DEFAULT NULL,
  `Manufacturing_Price` int(11) DEFAULT NULL,
  `Sale_Price` int(11) DEFAULT NULL,
  `Gross_Sales` decimal(15,2) DEFAULT NULL,
  `Sales` decimal(15,2) DEFAULT NULL,
  `COGS` decimal(15,2) DEFAULT NULL,
  `Profit` decimal(15,2) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `Month_Number` int(11) DEFAULT NULL,
  `Month_Name` varchar(20) DEFAULT NULL,
  `Year` int(11) DEFAULT NULL,
  PRIMARY KEY (`Product_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PRODUCT_TABLE`
--

LOCK TABLES `PRODUCT_TABLE` WRITE;
/*!40000 ALTER TABLE `PRODUCT_TABLE` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `PRODUCT_TABLE` VALUES
(2,'Germany','Carretera',1321.0,3,20,26420.00,26420.00,13210.00,13210.00,'2014-01-01',1,'January',2015),
(3,'France','Carretera',2178.0,3,15,32670.00,32670.00,21780.00,10890.00,'2014-06-01',6,'June',2016),
(6,'Germany','Carretera',1513.0,3,350,529550.00,529550.00,393380.00,136170.00,'2014-12-01',12,'December',2019),
(7,'Germany','Montana',921.0,5,15,13815.00,13815.00,9210.00,4605.00,'2014-03-01',3,'March',2020),
(8,'Canada','Montana',2518.0,5,12,30216.00,30216.00,7554.00,22262.00,'2014-06-01',6,'June',2021);
/*!40000 ALTER TABLE `PRODUCT_TABLE` ENABLE KEYS */;
UNLOCK TABLES;
commit;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_uca1400_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`admin`@`localhost`*/ /*!50003 TRIGGER update_gross_sales
BEFORE UPDATE ON PRODUCT_TABLE
FOR EACH ROW
BEGIN
    SET NEW.Gross_Sales = NEW.Units_Sold * NEW.Sale_Price;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*M!100616 SET NOTE_VERBOSITY=@OLD_NOTE_VERBOSITY */;

-- Dump completed on 2025-12-30 10:18:07
