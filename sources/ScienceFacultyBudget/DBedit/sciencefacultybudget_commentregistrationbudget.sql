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
-- Table structure for table `commentregistrationbudget`
--

DROP TABLE IF EXISTS `commentregistrationbudget`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `commentregistrationbudget` (
  `commentId` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `commentRegisDate` date NOT NULL,
  `commentRegisText` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Personnel_personnelID` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `RegistrationBudgetRequest_id` int NOT NULL,
  PRIMARY KEY (`commentId`),
  KEY `FK9096289nqfle5i7qk58p73kah` (`Personnel_personnelID`),
  KEY `FKsnu5yjaodt6w08ikqhkad5e00` (`RegistrationBudgetRequest_id`),
  CONSTRAINT `FK9096289nqfle5i7qk58p73kah` FOREIGN KEY (`Personnel_personnelID`) REFERENCES `personnel` (`personnelID`),
  CONSTRAINT `FKsnu5yjaodt6w08ikqhkad5e00` FOREIGN KEY (`RegistrationBudgetRequest_id`) REFERENCES `registrationbudgetrequest` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commentregistrationbudget`
--

LOCK TABLES `commentregistrationbudget` WRITE;
/*!40000 ALTER TABLE `commentregistrationbudget` DISABLE KEYS */;
/*!40000 ALTER TABLE `commentregistrationbudget` ENABLE KEYS */;
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
