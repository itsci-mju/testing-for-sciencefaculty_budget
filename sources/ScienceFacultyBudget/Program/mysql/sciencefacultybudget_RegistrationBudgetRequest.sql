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
-- Table structure for table `RegistrationBudgetRequest`
--

DROP TABLE IF EXISTS `RegistrationBudgetRequest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `RegistrationBudgetRequest` (
  `registrationID` varchar(20) NOT NULL,
  `beforeDate` date NOT NULL,
  `budgetText` varchar(45) NOT NULL,
  `cost` double NOT NULL,
  `location` varchar(50) NOT NULL,
  `regisDate` date NOT NULL,
  `regisEndDate` date NOT NULL,
  `regisStartDate` date NOT NULL,
  `requestBudget` double NOT NULL,
  `textTo` varchar(45) NOT NULL,
  `titleName` varchar(100) NOT NULL,
  `fileName` varchar(50) NOT NULL,
  `BudgetRequest_budgetRequestID` varchar(20) NOT NULL,
  PRIMARY KEY (`registrationID`),
  KEY `FK6gq3qmfiy1cqxvpeunf3gbct8` (`BudgetRequest_budgetRequestID`),
  CONSTRAINT `FK6gq3qmfiy1cqxvpeunf3gbct8` FOREIGN KEY (`BudgetRequest_budgetRequestID`) REFERENCES `BudgetRequest` (`budgetRequestID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RegistrationBudgetRequest`
--

LOCK TABLES `RegistrationBudgetRequest` WRITE;
/*!40000 ALTER TABLE `RegistrationBudgetRequest` DISABLE KEYS */;
INSERT INTO `RegistrationBudgetRequest` VALUES ('104','2021-12-20','เก้าร้อยบาทถ้วน',1700,'โรงเรียนเชียงใหม่','2021-12-20','2021-12-22','2021-12-21',900,'11','2','','10'),('ศธ.0523.4.8/112','2021-12-16','หนึ่งพันเจ็ดร้อยบาทถ้วน',1700,'โรงแรมดี วารี จอมเทียน บีช พัทยา จังหวัดชลบุรี','2021-12-16','2021-12-19','2021-12-16',1700,'ศธ.๐๕๒๓.๔.๘/๑๑๑','ขออนุญาติเข้าร่วมงานประชุมวิชาการระดับนานาชาติ ECIT-CON ๒๐๑๙ พร้อมเสนอผลงานทางวิชาการ','','ศธ.๐๕๒๓.๔.๘/๑๑๑'),('ศธ.๐๕๒๓.๔.๘/๕,๖๗๙','2021-12-25','สี่ร้อยบาทถ้วน',500,'โรงแรมดี วารี จอมเทียน บีช พัทยา จังหวัดชลบุรี','2021-12-27','2021-01-04','2021-12-31',400,'ศธ.๐๕๒๓.๔.๘/๑๐๖','ขออนุญาติเข้าร่วมงานประชุมวิชาการระดับวิทยาลัย','','ศธ.๐๕๒๓.๔.๘/๑๐๕'),('ศธ.๐๕๒๓.๔.๘/๕๕๘','2021-12-24','หกร้อยบาทถ้วน',1000,'โรงแรมดี','2021-12-24','2021-12-31','2021-12-29',600,'ศธ.๐๕๒๓.๔.๘/๕๕๖','556','','ศธ.๐๕๒๓.๔.๘/๕๕๕');
/*!40000 ALTER TABLE `RegistrationBudgetRequest` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-31  9:50:41
