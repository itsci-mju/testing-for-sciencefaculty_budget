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
-- Table structure for table `BudgetRequest`
--

DROP TABLE IF EXISTS `BudgetRequest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `BudgetRequest` (
  `budgetRequestID` varchar(20) NOT NULL,
  `chooseRequest` varchar(10) NOT NULL,
  `requestDate` date NOT NULL,
  `requestName` varchar(255) NOT NULL,
  `status` varchar(50) NOT NULL,
  `fileName` varchar(50) NOT NULL,
  `Personnel_personnelID` varchar(10) NOT NULL,
  PRIMARY KEY (`budgetRequestID`),
  KEY `FKocp8gxoitkfvttmk0sc1rpxx6` (`Personnel_personnelID`),
  CONSTRAINT `FKocp8gxoitkfvttmk0sc1rpxx6` FOREIGN KEY (`Personnel_personnelID`) REFERENCES `Personnel` (`personnelID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BudgetRequest`
--

LOCK TABLES `BudgetRequest` WRITE;
/*!40000 ALTER TABLE `BudgetRequest` DISABLE KEYS */;
INSERT INTO `BudgetRequest` VALUES ('10','1','2021-12-20','อบรม','ทำเอกสารขออนุมัติค่าลงทะเบียนแล้ว','','6'),('ศธ.๐๕๒๓.๔.๘/๑๐๕','1','2021-12-25','ขออนุญาติเข้าร่วมงานประชุมวิชาการระดับวิทยาลัย','ทำเอกสารขออนุมัติค่าลงทะเบียนแล้ว','','1'),('ศธ.๐๕๒๓.๔.๘/๑๑๑','1','2021-12-16','ขออนุญาติเข้าร่วมงานประชุมวิชาการระดับนานาชาติ ECIT-CON ๒๐๑๙ พร้อมเสนอผลงานทางวิชาการ','ทำเอกสารรายงานการเดินทางแล้ว','ศธ.๐๕๒๓.๔.๘_๑๑๑.pdf','1'),('ศธ.๐๕๒๓.๔.๘/๑๑๒','1','2021-12-16','ขออนุญาติเข้าร่วมงานอบรมวิชาการระดับมหาวิทยาลัย SCI-MJU 2020 พร้อมเสนอผลงานทางวิชาการ','ทำเอกสารขออนุมัติการเดินทางแล้ว','','5'),('ศธ.๐๕๒๓.๔.๘/๑๑๓','1','2021-12-16','ขออนุญาติเข้าร่วมงานอบรมสัมมนา MATH-MJU 2020','ทำเอกสารขออนุมัติการเดินทางแล้ว','','2'),('ศธ.๐๕๒๓.๔.๘/๕๕๕','1','2021-12-24','555','ทำเอกสารรายงานการเดินทางแล้ว','','4'),('อว.๖๙.๕.๓/๓๓๓','2','2021-12-28','ขออนุญาติเข้าร่วมงานประชุมวิชาการระดับนานาชาติ ECIT-CON ๒๐๑๙ พร้อมเสนอผลงานทางวิชาการ','ทำเอกสารขออนุญาตแล้ว','','4');
/*!40000 ALTER TABLE `BudgetRequest` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-31  9:50:39
