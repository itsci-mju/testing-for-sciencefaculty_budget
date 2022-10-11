-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: sciencefacultybudget
-- ------------------------------------------------------
-- Server version	8.0.21

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `travelrequest`
--

DROP TABLE IF EXISTS `travelrequest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `travelrequest` (
  `id` int NOT NULL,
  `allowance` double NOT NULL,
  `endDate` date NOT NULL,
  `fileName` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `grade` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `level` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `location` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `otherBudget` double NOT NULL,
  `payType` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `realBudget` double NOT NULL,
  `rentalRoom` double NOT NULL,
  `startDate` date NOT NULL,
  `titleName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `totalBudget` double NOT NULL,
  `totalDate` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `travelDate` date DEFAULT NULL,
  `travelID` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `travelVehicle` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `vehicleBudget` double NOT NULL,
  `withName` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `BudgetRequest_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK4hs7nhwolhhgpidodaav49u7t` (`BudgetRequest_id`),
  CONSTRAINT `FK4hs7nhwolhhgpidodaav49u7t` FOREIGN KEY (`BudgetRequest_id`) REFERENCES `budgetrequest` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `travelrequest`
--

LOCK TABLES `travelrequest` WRITE;
/*!40000 ALTER TABLE `travelrequest` DISABLE KEYS */;
/*!40000 ALTER TABLE `travelrequest` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-11 10:32:41
