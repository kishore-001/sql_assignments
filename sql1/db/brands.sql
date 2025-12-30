/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19-12.1.2-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: Brands
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
-- Table structure for table `ITEMS_TABLE`
--

DROP TABLE IF EXISTS `ITEMS_TABLE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `ITEMS_TABLE` (
  `Item_Id` int(11) NOT NULL,
  `item_description` varchar(255) DEFAULT NULL,
  `vendor_nos` int(11) DEFAULT NULL,
  `vendor_name` varchar(255) DEFAULT NULL,
  `bottle_size` int(11) DEFAULT NULL,
  `bottle_price` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`Item_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ITEMS_TABLE`
--

LOCK TABLES `ITEMS_TABLE` WRITE;
/*!40000 ALTER TABLE `ITEMS_TABLE` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `ITEMS_TABLE` VALUES
(1,'Travis Hasse Apple Pie',305,'Mhw Ltd',750,9.77),
(2,'D\'aristi Xtabentun',391,'Anchor Distilling (preiss Imports)',750,14.12),
(3,'Hiram Walker Peach Brandy',370,'Pernod Ricard Usa/austin Nichols',1000,6.50),
(4,'Oak Cross Whisky',305,'Mhw Ltd',750,25.33),
(5,'Uv Red(cherry) Vodka',380,'Phillips Beverage Company',200,1.97),
(6,'Heaven Hill Old Style White Label',259,'Heaven Hill Distilleries Inc.',750,6.37),
(7,'Hyde Herbal Liqueur',194,'Fire Tail Brands Llc',750,5.06),
(8,'Dupont Calvados Fine Reserve',403,'Robert Kacher Selections',750,23.61);
/*!40000 ALTER TABLE `ITEMS_TABLE` ENABLE KEYS */;
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

-- Dump completed on 2025-12-30 10:18:15
