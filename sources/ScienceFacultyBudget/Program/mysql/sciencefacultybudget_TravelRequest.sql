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
-- Table structure for table `TravelRequest`
--

DROP TABLE IF EXISTS `TravelRequest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TravelRequest` (
  `travelID` varchar(20) NOT NULL,
  `allowance` double NOT NULL,
  `endDate` date NOT NULL,
  `grade` varchar(45) NOT NULL,
  `level` varchar(45) NOT NULL,
  `location` varchar(100) NOT NULL,
  `otherBudget` double NOT NULL,
  `payType` varchar(45) NOT NULL,
  `rentalRoom` double NOT NULL,
  `startDate` date NOT NULL,
  `titleName` varchar(100) NOT NULL,
  `totalBudget` double NOT NULL,
  `totalDate` varchar(45) NOT NULL,
  `travelDate` date NOT NULL,
  `travelVehicle` varchar(45) NOT NULL,
  `vehicleBudget` double NOT NULL,
  `withName` varchar(45) NOT NULL,
  `realBudget` double NOT NULL,
  `fileName` varchar(50) NOT NULL,
  `BudgetRequest_budgetRequestID` varchar(20) NOT NULL,
  PRIMARY KEY (`travelID`),
  KEY `FK3kcj880u13ai64qr83fe8m641` (`BudgetRequest_budgetRequestID`),
  CONSTRAINT `FK3kcj880u13ai64qr83fe8m641` FOREIGN KEY (`BudgetRequest_budgetRequestID`) REFERENCES `BudgetRequest` (`budgetRequestID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TravelRequest`
--

LOCK TABLES `TravelRequest` WRITE;
/*!40000 ALTER TABLE `TravelRequest` DISABLE KEYS */;
INSERT INTO `TravelRequest` VALUES ('303',1000,'2021-12-22','-','-','โรงเรียนเชียงใหม่',100,'จะจ่ายเงินส่วนตัวทดรองไปก่อน',100,'2021-12-21','เดินทาง',1300,'1','2021-12-20','เครื่องบินโดยสาร',100,'เพื่อนชาย',0,'','10'),('อว.๖๙.๔.๘/๐๑๐',100,'2021-12-19','-','-','โรงแรมดี วารี จอมเทียน บีช พัทยา จังหวัดชลบุรี',100,'จะจ่ายเงินส่วนตัวทดรองไปก่อน',900,'2021-12-16','ขออนุญาติเข้าร่วมงานประชุมวิชาการระดับนานาชาติ',1300,'3','2021-12-16','รถยนต์ส่วนตัว',200,'ภาสกร บวรกิจ',1300,'','ศธ.๐๕๒๓.๔.๘/๑๑๑'),('อว.๖๙.๔.๘/๐๑๑',400,'2021-12-18','-','-','โรงแรมดวงตะวัน',300,'จะจ่ายเงินส่วนตัวทดรองไปก่อน',500,'2021-12-16','ขออนุญาติเข้าร่วมงานอบรมวิชาการระดับมหาวิทยาลัย',1400,'2','2021-12-16','รถยนต์ส่วนตัว',200,'-',0,'','ศธ.๐๕๒๓.๔.๘/๑๑๒'),('อว.๖๙.๔.๘/๐๑๒',300,'2021-12-18','-','-','โรงแรมดวงตะวัน',300,'จะจ่ายเงินส่วนตัวทดรองไปก่อน',400,'2021-12-16','ขออนุญาติเข้าร่วมงานอบรมวิชาการระดับมหาวิทยาลัย',1200,'2','2021-12-16','รถยนต์ส่วนตัว',200,'-',0,'','ศธ.๐๕๒๓.๔.๘/๑๑๓'),('อว.๖๙.๔.๘/๓,๔๕๖',400,'2022-01-04','-','-','โรงแรมดี วารี จอมเทียน บีช พัทยา จังหวัดชลบุรี',600,'จะขอยืมเงินทดรองจ่ายไปก่อน',400,'2021-12-31','ขออนุญาติเข้าร่วมงานประชุมวิชาการระดับนานาชาติ',1600,'4','2021-12-27','รถโดยสาร',200,'ภาสกร บวรกิจ',0,'','ศธ.๐๕๒๓.๔.๘/๑๐๕'),('อว.๖๙.๔.๘/๕๕๗',1000,'2021-12-31','-','-','โรงแรมดี',100,'จะจ่ายเงินส่วนตัวทดรองไปก่อน',100,'2021-12-29','ขออนุญาติเข้าร่วมงานประชุมวิชาการระดับนานาชาติ',1300,'2','2021-12-24','รถโดยสาร',100,'ภาสกร',1300,'','ศธ.๐๕๒๓.๔.๘/๕๕๕');
/*!40000 ALTER TABLE `TravelRequest` ENABLE KEYS */;
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
