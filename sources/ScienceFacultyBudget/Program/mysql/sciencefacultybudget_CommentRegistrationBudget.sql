-- MySQL dump 10.13  Distrib 8.0.20, for macos10.15 (x86_64)
--
-- Host: localhost    Database: sciencefacultybudget
-- ------------------------------------------------------
-- Server version	8.0.20

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
-- Table structure for table `CommentRegistrationBudget`
--

DROP TABLE IF EXISTS `CommentRegistrationBudget`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CommentRegistrationBudget` (
  `commentId` varchar(20) NOT NULL,
  `commentRegisDate` date NOT NULL,
  `commentRegisText` varchar(100) NOT NULL,
  `Personnel_personnelID` varchar(10) NOT NULL,
  `RegistrationBudgetRequest_registrationID` varchar(20) NOT NULL,
  PRIMARY KEY (`commentId`),
  KEY `FK9096289nqfle5i7qk58p73kah` (`Personnel_personnelID`),
  KEY `FKinrnth9u1o3g3pt80o9cv08lh` (`RegistrationBudgetRequest_registrationID`),
  CONSTRAINT `FK9096289nqfle5i7qk58p73kah` FOREIGN KEY (`Personnel_personnelID`) REFERENCES `Personnel` (`personnelID`),
  CONSTRAINT `FKinrnth9u1o3g3pt80o9cv08lh` FOREIGN KEY (`RegistrationBudgetRequest_registrationID`) REFERENCES `RegistrationBudgetRequest` (`registrationID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CommentRegistrationBudget`
--

LOCK TABLES `CommentRegistrationBudget` WRITE;
/*!40000 ALTER TABLE `CommentRegistrationBudget` DISABLE KEYS */;
INSERT INTO `CommentRegistrationBudget` VALUES ('0_ศธ.๐๕๒๓.๔.๘/๕,๖๗๙','2020-12-28','เทสค่าลงทะเบียน01','3','ศธ.๐๕๒๓.๔.๘/๕,๖๗๙'),('1_ศธ.๐๕๒๓.๔.๘/๕,๖๗๙','2020-12-29','เทสค่าลงทะเบียน02','3','ศธ.๐๕๒๓.๔.๘/๕,๖๗๙'),('2_ศธ.๐๕๒๓.๔.๘/๕,๖๗๙','2020-12-30','เทสค่าลงทะเบียน03','3','ศธ.๐๕๒๓.๔.๘/๕,๖๗๙'),('3_ศธ.๐๕๒๓.๔.๘/๕,๖๗๙','2020-12-28','เทสค่าลงทะเบียน04','3','ศธ.๐๕๒๓.๔.๘/๕,๖๗๙');
/*!40000 ALTER TABLE `CommentRegistrationBudget` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-31  9:50:40
