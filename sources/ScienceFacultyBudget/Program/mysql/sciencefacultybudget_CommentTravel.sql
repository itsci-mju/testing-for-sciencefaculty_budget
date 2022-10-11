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
-- Table structure for table `CommentTravel`
--

DROP TABLE IF EXISTS `CommentTravel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CommentTravel` (
  `commentId` varchar(20) NOT NULL,
  `commentTravelDate` date NOT NULL,
  `commentTravelText` varchar(100) NOT NULL,
  `Personnel_personnelID` varchar(10) NOT NULL,
  `TravelRequest_travelID` varchar(20) NOT NULL,
  PRIMARY KEY (`commentId`),
  KEY `FKs4bsobg0s6lo81w1o0mvjuf1k` (`Personnel_personnelID`),
  KEY `FK9hsipmnfy5duk4hddeonwcfpl` (`TravelRequest_travelID`),
  CONSTRAINT `FK9hsipmnfy5duk4hddeonwcfpl` FOREIGN KEY (`TravelRequest_travelID`) REFERENCES `TravelRequest` (`travelID`),
  CONSTRAINT `FKs4bsobg0s6lo81w1o0mvjuf1k` FOREIGN KEY (`Personnel_personnelID`) REFERENCES `Personnel` (`personnelID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CommentTravel`
--

LOCK TABLES `CommentTravel` WRITE;
/*!40000 ALTER TABLE `CommentTravel` DISABLE KEYS */;
INSERT INTO `CommentTravel` VALUES ('0_อว.๖๙.๔.๘/๓,๔๕๖','2020-12-28','เทส01','3','อว.๖๙.๔.๘/๓,๔๕๖'),('1','2020-12-16','fffff','3','อว.๖๙.๔.๘/๐๑๑'),('1_อว.๖๙.๔.๘/๓,๔๕๖','2020-12-29','เทส02','3','อว.๖๙.๔.๘/๓,๔๕๖'),('2','2020-12-26','แก้ไขเอกสารวันที่กลับให้ถูกต้อง','3','อว.๖๙.๔.๘/๐๑๐'),('2_อว.๖๙.๔.๘/๓,๔๕๖','2020-12-30','เทส03','3','อว.๖๙.๔.๘/๓,๔๕๖'),('3_อว.๖๙.๔.๘/๓,๔๕๖','2020-12-31','เทส04','3','อว.๖๙.๔.๘/๓,๔๕๖'),('อว.๖๙.๔.๘/๐๑๑','2020-12-16','แก้ไขเอกสาร','3','อว.๖๙.๔.๘/๐๑๑');
/*!40000 ALTER TABLE `CommentTravel` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-31  9:50:38
