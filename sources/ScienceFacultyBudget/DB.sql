CREATE DATABASE  IF NOT EXISTS `sciencefacultybudget` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `sciencefacultybudget`;
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
-- Table structure for table `budgetrequest`
--

DROP TABLE IF EXISTS `budgetrequest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `budgetrequest` (
  `id` int NOT NULL,
  `budgetRequestID` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `chooseRequest` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fileName` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `requestDate` date DEFAULT NULL,
  `requestName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Personnel_personnelID` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKocp8gxoitkfvttmk0sc1rpxx6` (`Personnel_personnelID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `budgetrequest`
--

LOCK TABLES `budgetrequest` WRITE;
/*!40000 ALTER TABLE `budgetrequest` DISABLE KEYS */;
INSERT INTO `budgetrequest` VALUES (1,'อว.69.5.','2','','2021-09-23','อบรม','ทำเอกสารรายงานการเดินทางแล้ว','7'),(2,'อว.69.5.','5','','2021-09-22','อบรม','ยกเลิกการทำเอกสารแล้ว','7'),(3,'อว.69.5.','1','','2021-09-23','อบรม','ยกเลิกการทำเอกสารแล้ว','092'),(4,'อว.69.5.','1','','2021-09-25','อบรม','ยกเลิกการทำเอกสารแล้ว','7'),(5,'อว.69.5.','2','','2021-09-09','อบรม','ทำเอกสารรายงานการเดินทางแล้ว','092'),(6,'อว.69.5.','4','','2021-09-29','อบรม','ทำเอกสารรายงานการเดินทางแล้ว','092'),(7,'อว.69.5.','3','','2021-09-28','อบรม2','ทำเอกสารรายงานการเดินทางแล้ว','092'),(8,'อว.69.5.','1','8.pdf','2021-09-30','อบรม','ทำเอกสารรายงานการเดินทางแล้ว','092'),(9,'อว.69.5.','3','','2021-10-02','อบรม','ทำเอกสารขอเบิกค่าน้ำมันแล้ว','7'),(10,'อว.69.5.','3','','2021-10-02','อบรม','ทำเอกสารขออนุญาตแล้ว','5'),(11,'อว.69.5.','2','11.pdf','2021-10-21','อบรม','ยกเลิกการทำเอกสารแล้ว','092'),(12,'อว.69.5.','4','','2021-10-11','อบรม','ยกเลิกการทำเอกสารแล้ว','092'),(13,'อว.69.5.','1','','2021-10-14','อบรม','ยกเลิกการทำเอกสารแล้ว','092'),(14,'อว.69.5.','1','','2021-10-14','อบรม','ทำเอกสารรายงานการเดินทางแล้ว','092'),(16,NULL,NULL,NULL,'2021-10-14',NULL,'ยกเลิกการทำเอกสารแล้ว','092'),(17,NULL,NULL,NULL,'2021-10-14',NULL,'ทำเอกสารประสงค์ใช้งบประมาณแล้ว','092');
/*!40000 ALTER TABLE `budgetrequest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `budgetyear`
--

DROP TABLE IF EXISTS `budgetyear`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `budgetyear` (
  `personnelType` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `year` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `budgetBath` double NOT NULL,
  PRIMARY KEY (`personnelType`,`year`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `budgetyear`
--

LOCK TABLES `budgetyear` WRITE;
/*!40000 ALTER TABLE `budgetyear` DISABLE KEYS */;
INSERT INTO `budgetyear` VALUES ('ประเภทวิชาการ','2565',3000),('ประเภทสนับสนุน','2565',3000);
/*!40000 ALTER TABLE `budgetyear` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `commentrequestfuel`
--

DROP TABLE IF EXISTS `commentrequestfuel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `commentrequestfuel` (
  `commentid` int NOT NULL,
  `commentdate` date DEFAULT NULL,
  `commenttext` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `personnel_personnelID` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `requestfuel_id` int NOT NULL,
  PRIMARY KEY (`commentid`),
  KEY `fk_commentrequestfuel_personnel_idx` (`personnel_personnelID`),
  KEY `fk_commentrequestfuel_requestfuel1_idx` (`requestfuel_id`),
  CONSTRAINT `fk_commentrequestfuel_personnel` FOREIGN KEY (`personnel_personnelID`) REFERENCES `personnel` (`personnelID`),
  CONSTRAINT `fk_commentrequestfuel_requestfuel1` FOREIGN KEY (`requestfuel_id`) REFERENCES `requestfuel` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commentrequestfuel`
--

LOCK TABLES `commentrequestfuel` WRITE;
/*!40000 ALTER TABLE `commentrequestfuel` DISABLE KEYS */;
INSERT INTO `commentrequestfuel` VALUES (1,'2021-10-02','affq','092',5),(2,'2021-10-02','dfghjk','092',7),(3,'2021-10-02','sdvv','092',7);
/*!40000 ALTER TABLE `commentrequestfuel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `commentrequestingpermission`
--

DROP TABLE IF EXISTS `commentrequestingpermission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `commentrequestingpermission` (
  `commentId` int NOT NULL,
  `commentRequestingPerDate` date NOT NULL,
  `commentRequestingPerText` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `RequestingPermission_id` int NOT NULL,
  `Personnel_personnelID` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`commentId`),
  KEY `FKhk7dtcdokkco5quyj6xhp5x93` (`Personnel_personnelID`),
  KEY `FKi5tjbucdo4vj4ryqxmx4a1cxo_idx` (`RequestingPermission_id`),
  CONSTRAINT `FKhk7dtcdokkco5quyj6xhp5x93` FOREIGN KEY (`Personnel_personnelID`) REFERENCES `personnel` (`personnelID`),
  CONSTRAINT `FKi5tjbucdo4vj4ryqxmx4a1cxo` FOREIGN KEY (`RequestingPermission_id`) REFERENCES `requestingpermission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commentrequestingpermission`
--

LOCK TABLES `commentrequestingpermission` WRITE;
/*!40000 ALTER TABLE `commentrequestingpermission` DISABLE KEYS */;
INSERT INTO `commentrequestingpermission` VALUES (1,'2021-09-22','hgtfjrfj',2,'4'),(2,'2021-09-22','hdfhfds',2,'4'),(3,'2021-09-22','aegs',2,'4'),(4,'2021-09-22','srhgdsr',2,'4'),(5,'2021-09-26','vsddgfg',2,'092'),(6,'2021-09-26','efefe',4,'092'),(7,'2021-09-26','เทส01',1,'092');
/*!40000 ALTER TABLE `commentrequestingpermission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `commenttravel`
--

DROP TABLE IF EXISTS `commenttravel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `commenttravel` (
  `commentId` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `commentTravelDate` date NOT NULL,
  `commentTravelText` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Personnel_personnelID` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `TravelRequest_id` int NOT NULL,
  PRIMARY KEY (`commentId`),
  KEY `FKs4bsobg0s6lo81w1o0mvjuf1k` (`Personnel_personnelID`),
  KEY `FK3l5ise1vn8hlrmt4eburag441` (`TravelRequest_id`),
  CONSTRAINT `FK3l5ise1vn8hlrmt4eburag441` FOREIGN KEY (`TravelRequest_id`) REFERENCES `travelrequest` (`id`),
  CONSTRAINT `FKs4bsobg0s6lo81w1o0mvjuf1k` FOREIGN KEY (`Personnel_personnelID`) REFERENCES `personnel` (`personnelID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commenttravel`
--

LOCK TABLES `commenttravel` WRITE;
/*!40000 ALTER TABLE `commenttravel` DISABLE KEYS */;
INSERT INTO `commenttravel` VALUES ('0_1','2021-09-25','cgvhbjnkml','092',1),('0_3','2021-09-26','fdhgjghkj','092',3);
/*!40000 ALTER TABLE `commenttravel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `department` (
  `departmentID` int NOT NULL,
  `departmentName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `tel` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`departmentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES (1,'เทคโนโลยีสารสนเทศ','3900'),(2,'วิทยาการคอมพิวเตอร์','3890'),(3,'เทคโนโลยีชีวภาพ','3870'),(4,'เคมี','3850'),(5,'พันธุศาสตร์','3905'),(6,'คณิตศาสตร์','3880'),(7,'วัสดุศาสตร์','3830'),(8,'เคมีอุตสาหกรรมและเทคโนโลยีสิ่งทอ','3910');
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personnel`
--

DROP TABLE IF EXISTS `personnel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personnel` (
  `personnelID` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `budget` double DEFAULT NULL,
  `faculty` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `firstname` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `personnelType` int NOT NULL,
  `personnelTypeName` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `position` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `salary` double DEFAULT NULL,
  `title` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `Department_departmentID` int DEFAULT NULL,
  PRIMARY KEY (`personnelID`),
  KEY `FK4v30gsgcymymqrs9f3e3jkqja` (`Department_departmentID`),
  CONSTRAINT `FK4v30gsgcymymqrs9f3e3jkqja` FOREIGN KEY (`Department_departmentID`) REFERENCES `department` (`departmentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personnel`
--

LOCK TABLES `personnel` WRITE;
/*!40000 ALTER TABLE `personnel` DISABLE KEYS */;
INSERT INTO `personnel` VALUES ('092',552,'คณะวิทยาศาสตร์','สายัณห์','อุ่นนันกาศ',1,'ประเภทสนับสนุน','ผู้ช่วยศาสตราจารย์',5000,'ผู้ช่วยศาสตราจารย์ ดร.',1),('1',3000,'คณะวิทยาศาสตร์','สมชาย','รักดี',1,'ประเภทวิชาการ','บุคลากร',25000,'นาย',1),('2',3000,'คณะวิทยาศาสตร์','ประภาพร','รุ่งเรือง',1,'ประเภทสนับสนุน','บุคลากร',2,'นาง',2),('3',3000,'คณะวิทยาศาสตร์','กานต์มณี','บุญเกิดผล',3,'ประเภทวิชาการ','เจ้าหน้าที่การเงิน',3,'นาง',7),('379',NULL,'คณะวิทยาศาสตร์','สุรพล','จิโน',4,'ประเภทสนับสนุน','พนง.มหาวิทยาลัย',NULL,'นาย',NULL),('4',1100,'คณะวิทยาศาสตร์','วรพล','ไพศาลธนาโชต',4,'ประเภทวิชาการ','เจ้าหน้าที่บริหารงานบุคคล',4,'อ.ดร.',5),('5',3000,'คณะวิทยาศาสตร์','รุจิรา','สุขสมบัติ',1,'ประเภทวิชาการ','บุคลากร',5,'นางสาว',8),('579',NULL,'คณะวิทยาศาสตร์','กาญจนา ','จุ่มแก้ว',4,'สายสนับสนุน','พนง.มหาวิทยาลัย',NULL,'นาง',1),('6',3000,'คณะวิทยาศาสตร์','เทส','เทส',1,'สายสนับสนุน','บุคลากร',6,'นาย',5),('7',2400,'คณะวิทยาศาสตร์','นพรัตน์','จันทร์ศรี',1,'สายสนับสนุน','บุคลากร',2000,'นาย',4),('749',0,'คณะวิทยาศาสตร์','แววตา','ติ๊บมา',3,'สายสนับสนุน','พนง.มหาวิทยาลัย',0,'น.ส.',NULL),('852',0,'คณะวิทยาศาสตร์','กัลย์ธิรา','ชมชื่น',3,'สายสนับสนุน','พนง.มหาวิทยาลัย',0,'น.ส.',NULL),('ข223',0,'คณะวิทยาศาสตร์','สุภาพร ','แก้วถาวร',3,'สายสนับสนุน','พนง.มหาวิทยาลัย',0,'น.ส.',NULL),('ข374',0,'คณะวิทยาศาสตร์','อาษิรญา',' อินทนนท์',4,'สายสนับสนุน','พนง.มหาวิทยาลัย',NULL,'น.ส.',NULL);
/*!40000 ALTER TABLE `personnel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registrationbudgetrequest`
--

DROP TABLE IF EXISTS `registrationbudgetrequest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registrationbudgetrequest` (
  `id` int NOT NULL,
  `beforeDate` date NOT NULL,
  `budgetText` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `cost` double NOT NULL,
  `fileName` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `location` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `regisDate` date NOT NULL,
  `regisEndDate` date NOT NULL,
  `regisStartDate` date NOT NULL,
  `registrationID` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `requestBudget` double NOT NULL,
  `textTo` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `titleName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `BudgetRequest_budgetRequestID` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK6gq3qmfiy1cqxvpeunf3gbct8` (`BudgetRequest_budgetRequestID`),
  CONSTRAINT `FK6gq3qmfiy1cqxvpeunf3gbct8` FOREIGN KEY (`BudgetRequest_budgetRequestID`) REFERENCES `budgetrequest` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registrationbudgetrequest`
--

LOCK TABLES `registrationbudgetrequest` WRITE;
/*!40000 ALTER TABLE `registrationbudgetrequest` DISABLE KEYS */;
INSERT INTO `registrationbudgetrequest` VALUES (1,'2021-09-28','',100,'','โรงแรม','1478-09-27','1478-09-27','1478-09-27','อว.69.5.',100,'อว.69.5.','ขออนุญาตเดินทางโยใช้รถยนต์ส่วนตัว และขออนุญาตเบิกค่าชกเชยน้ำมันเชื้อเพลิง',6),(2,'2021-09-30','หนึ่งร้อยบาทถ้วน',100,'','โรงแรม2','1478-10-01','1478-10-01','1478-10-01','อว.69.5.',100,'อว.69.5. ','อบรม2',8);
/*!40000 ALTER TABLE `registrationbudgetrequest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `requestfuel`
--

DROP TABLE IF EXISTS `requestfuel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `requestfuel` (
  `id` int NOT NULL,
  `fileName` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `requestFuelID` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `requestFuelName` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `requestFuelDate` date DEFAULT NULL,
  `requestFuelText` longtext COLLATE utf8_unicode_ci NOT NULL,
  `petrolprice` double NOT NULL,
  `distance` double NOT NULL,
  `filedistans` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `BudgetRequest_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `BudgetRequest_id_idx` (`BudgetRequest_id`),
  CONSTRAINT `BudgetRequest_id` FOREIGN KEY (`BudgetRequest_id`) REFERENCES `budgetrequest` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requestfuel`
--

LOCK TABLES `requestfuel` WRITE;
/*!40000 ALTER TABLE `requestfuel` DISABLE KEYS */;
INSERT INTO `requestfuel` VALUES (1,NULL,'อว.69.5.','อนุญาติเข้าร่วมประชุม','2021-09-23','<p class=\"p1\" style=\"line-height: 1.5; text-align: justify;\"><span style=\"font-size: 14pt;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;ตามที่สมาคมวิศวกรรมไฟฟ้า อิเล็กทรอนิกส์ คอมพิวเตอร์ โทรคมนาคมและเทคโนโลยีสารสนเทศ<span class=\"s1\"> (ECTI) </span>ประเทศไทย ได้กำหนดจัดการประชุมวิชาการนานาชาติ<span class=\"s1\"> \"The </span>๑๖<span class=\"s1\">\" international Conference on Electrical Engineering/Electronics, Computer , Telecommunications and information Technology\" ECTI-CON </span>๒๐๑๙<span class=\"s1\">\" </span>ในระหว่างวันที่ ๑๐<span class=\"s1\">-</span>๑๓ กรกฎาคม ๒๕๖๒ ณ โรงแรมดี วารี จอมเทียน บีช พัทยา จังหวัดชลบุรี</span></p>\r\n<p class=\"p1\" style=\"line-height: 1.5; text-align: justify;\">&nbsp;</p>\r\n<p class=\"p2\" style=\"line-height: 1.5; text-align: justify;\"><span style=\"font-size: 14pt;\"><span class=\"Apple-converted-space\">&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; </span><span class=\"s2\">ในการนี้</span> <span class=\"s2\">ข้าพเจ้านางสาวพิชชยานิดา</span> <span class=\"s2\">คำวิชัย</span> <span class=\"s2\">พนังงานมหาวิทยาลัย</span> <span class=\"s2\">ตำแหน่ง</span> <span class=\"s2\">อาจารย์</span> <span class=\"s2\">จึงขออนุญาตเข้าร่วมงานประชุมวิชาการระดับนานาชาติ</span> The <span class=\"s2\">๑๖</span>\" international Conference on Electrical Engineering/Electronics, Computer , Telecommunications and information Technology\" ECTI-CON <span class=\"s2\">๒๐๑๙</span>\" <span class=\"s2\">พร้อมเสนอผลงานทางวิชาการในรูปแบบบรรยาย</span> <span class=\"s2\">หัวข้อเรื่อง</span> \"Implementing Information Technology and Social Media for Promoting Tourism Pongyeang Subdistrict , Chiang Mai , Thailand\" <span class=\"s2\">ระหว่างวันที่</span> <span class=\"s2\">๑๐</span>-<span class=\"s2\">๑๓</span> <span class=\"s2\">กรกฎาคม</span> <span class=\"s2\">๒๕๖๒</span> <span class=\"s2\">ณ</span> <span class=\"s2\">โรงแรมดี</span> <span class=\"s2\">วารี</span> <span class=\"s2\">จอมเทียน</span> <span class=\"s2\">บีช</span> <span class=\"s2\">พัทยา</span> <span class=\"s2\">จังหวัดชลบุรี</span></span></p>',200,500,'',2),(3,NULL,'อว.69.5.','อนุญาติเข้าร่วมประชุม','2021-09-30','<p class=\"p1\" style=\"line-height: 2.5; text-align: justify;\"><span style=\"font-size: 16pt;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;ตามที่สมาคมวิศวกรรมไฟฟ้า อิเล็กทรอนิกส์ คอมพิวเตอร์ โทรคมนาคมและเทคโนโลยีสารสนเทศ<span class=\"s1\"> (ECTI) </span>ประเทศไทย ได้กำหนดจัดการประชุมวิชาการนานาชาติ<span class=\"s1\"> \"The </span>๑๖<span class=\"s1\">\" international Conference on Electrical Engineering/Electronics, Computer , Telecommunications and information Technology\" ECTI-CON </span>๒๐๑๙<span class=\"s1\">\" </span>ในระหว่างวันที่ ๑๐<span class=\"s1\">-</span>๑๓ กรกฎาคม ๒๕๖๒ ณ โรงแรมดี วารี จอมเทียน บีช พัทยา จังหวัดชลบุรี</span></p>\r <p class=\"p1\" style=\"line-height: 1.5; text-align: justify;\">&nbsp;</p>\r <p class=\"p2\" style=\"line-height: 1.5; text-align: justify;\"><span style=\"font-size: 14pt;\"><span class=\"Apple-converted-space\">&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; </span><span class=\"s2\">ในการนี้</span> <span class=\"s2\">ข้าพเจ้านางสาวพิชชยานิดา</span> <span class=\"s2\">คำวิชัย</span> <span class=\"s2\">พนังงานมหาวิทยาลัย</span> <span class=\"s2\">ตำแหน่ง</span> <span class=\"s2\">อาจารย์</span> <span class=\"s2\">จึงขออนุญาตเข้าร่วมงานประชุมวิชาการระดับนานาชาติ</span> The <span class=\"s2\">๑๖</span>\" international Conference on Electrical Engineering/Electronics, Computer , Telecommunications and information Technology\" ECTI-CON <span class=\"s2\">๒๐๑๙</span>\" <span class=\"s2\">พร้อมเสนอผลงานทางวิชาการในรูปแบบบรรยาย</span> <span class=\"s2\">หัวข้อเรื่อง</span> \"Implementing Information Technology and Social Media for Promoting Tourism Pongyeang Subdistrict , Chiang Mai , Thailand\" <span class=\"s2\">ระหว่างวันที่</span> <span class=\"s2\">๑๐</span>-<span class=\"s2\">๑๓</span> <span class=\"s2\">กรกฎาคม</span> <span class=\"s2\">๒๕๖๒</span> <span class=\"s2\">ณ</span> <span class=\"s2\">โรงแรมดี</span> <span class=\"s2\">วารี</span> <span class=\"s2\">จอมเทียน</span> <span class=\"s2\">บีช</span> <span class=\"s2\">พัทยา</span> <span class=\"s2\">จังหวัดชลบุรี</span></span></p>',44,11,'',5),(4,NULL,'อว.69.5.','ขออนุญาตเดินทางโยใช้รถยนต์ส่วนตัว และขออนุญาตเบิกค่าชกเชยน้ำมันเชื้อเพลิง','2021-09-27','<p class=\"p1\" style=\"line-height: 2; text-align: justify;\"><span style=\"font-size: 16pt;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;ตามที่สมาคมวิศวกรรมไฟฟ้า อิเล็กทรอนิกส์ คอมพิวเตอร์ โทรคมนาคมและเทคโนโลยีสารสนเทศ<span class=\"s1\"> (ECTI) </span>ประเทศไทย ได้กำหนดจัดการประชุมวิชาการนานาชาติ<span class=\"s1\"> \"The </span>๑๖<span class=\"s1\">\" international Conference on Electrical Engineering/Electronics, Computer , Telecommunications and information Technology\" ECTI-CON </span>๒๐๑๙<span class=\"s1\">\" </span>ในระหว่างวันที่ ๑๐<span class=\"s1\">-</span>๑๓ กรกฎาคม ๒๕๖๒ ณ โรงแรมดี วารี จอมเทียน บีช พัทยา จังหวัดชลบุรี</span></p>\r\n<p class=\"p1\" style=\"line-height: 2; text-align: justify;\">&nbsp;</p>\r\n<p class=\"p2\" style=\"line-height: 2; text-align: justify;\"><span style=\"font-size: 16pt;\"><span class=\"Apple-converted-space\">&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; </span><span class=\"s2\">ในการนี้</span> <span class=\"s2\">ข้าพเจ้านางสาวพิชชยานิดา</span> <span class=\"s2\">คำวิชัย</span> <span class=\"s2\">พนังงานมหาวิทยาลัย</span> <span class=\"s2\">ตำแหน่ง</span> <span class=\"s2\">อาจารย์</span> <span class=\"s2\">จึงขออนุญาตเข้าร่วมงานประชุมวิชาการระดับนานาชาติ</span> The <span class=\"s2\">๑๖</span>\" international Conference on Electrical Engineering/Electronics, Computer , Telecommunications and information Technology\" ECTI-CON <span class=\"s2\">๒๐๑๙</span>\" <span class=\"s2\">พร้อมเสนอผลงานทางวิชาการในรูปแบบบรรยาย</span> <span class=\"s2\">หัวข้อเรื่อง</span> \"Implementing Information Technology and Social Media for Promoting Tourism Pongyeang Subdistrict , Chiang Mai , Thailand\" <span class=\"s2\">ระหว่างวันที่</span> <span class=\"s2\">๑๐</span>-<span class=\"s2\">๑๓</span> <span class=\"s2\">กรกฎาคม</span> <span class=\"s2\">๒๕๖๒</span> <span class=\"s2\">ณ</span> <span class=\"s2\">โรงแรมดี</span> <span class=\"s2\">วารี</span> <span class=\"s2\">จอมเทียน</span> <span class=\"s2\">บีช</span> <span class=\"s2\">พัทยา</span> <span class=\"s2\">จังหวัดชลบุรี</span></span></p>',76,19,'',6),(5,NULL,'อว.69.5.','ขออนุญาตเดินทางโยใช้รถยนต์ส่วนตัว และขออนุญาตเบิกค่าชกเชยน้ำมันเชื้อเพลิง2','2021-09-27','<p class=\"p1\" style=\"line-height: 2; text-align: justify;\"><span style=\"font-size: 16pt;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;ตามที่สมาคมวิศวกรรมไฟฟ้า อิเล็กทรอนิกส์ คอมพิวเตอร์ โทรคมนาคมและเทคโนโลยีสารสนเทศ<span class=\"s1\"> (ECTI) </span>ประเทศไทย ได้กำหนดจัดการประชุมวิชาการนานาชาติ<span class=\"s1\"> \"The </span>๑๖<span class=\"s1\">\" international Conference on Electrical Engineering/Electronics, Computer , Telecommunications and information Technology\" ECTI-CON </span>๒๐๑๙<span class=\"s1\">\" </span>ในระหว่างวันที่ ๑๐<span class=\"s1\">-</span>๑๓ กรกฎาคม ๒๕๖๒ ณ โรงแรมดี วารี จอมเทียน บีช พัทยา จังหวัดชลบุรี</span></p>\r\n<p class=\"p1\" style=\"line-height: 2; text-align: justify;\">&nbsp;</p>\r\n<p class=\"p2\" style=\"line-height: 2; text-align: justify;\"><span style=\"font-size: 16pt;\"><span class=\"Apple-converted-space\">&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; </span><span class=\"s2\">ในการนี้</span> <span class=\"s2\">ข้าพเจ้านางสาวพิชชยานิดา</span> <span class=\"s2\">คำวิชัย</span> <span class=\"s2\">พนังงานมหาวิทยาลัย</span> <span class=\"s2\">ตำแหน่ง</span> <span class=\"s2\">อาจารย์</span> <span class=\"s2\">จึงขออนุญาตเข้าร่วมงานประชุมวิชาการระดับนานาชาติ</span> The <span class=\"s2\">๑๖</span>\" international Conference on Electrical Engineering/Electronics, Computer , Telecommunications and information Technology\" ECTI-CON <span class=\"s2\">๒๐๑๙</span>\" <span class=\"s2\">พร้อมเสนอผลงานทางวิชาการในรูปแบบบรรยาย</span> <span class=\"s2\">หัวข้อเรื่อง</span> \"Implementing Information Technology and Social Media for Promoting Tourism Pongyeang Subdistrict , Chiang Mai , Thailand\" <span class=\"s2\">ระหว่างวันที่</span> <span class=\"s2\">๑๐</span>-<span class=\"s2\">๑๓</span> <span class=\"s2\">กรกฎาคม</span> <span class=\"s2\">๒๕๖๒</span> <span class=\"s2\">ณ</span> <span class=\"s2\">โรงแรมดี</span> <span class=\"s2\">วารี</span> <span class=\"s2\">จอมเทียน</span> <span class=\"s2\">บีช</span> <span class=\"s2\">พัทยา</span> <span class=\"s2\">จังหวัดชลบุรี</span></span></p>',55,20,'',7),(6,NULL,'อว.69.5.','ขออนุญาตเดินทางโยใช้รถยนต์ส่วนตัว และขออนุญาตเบิกค่าชกเชยน้ำมันเชื้อเพลิง2','2021-09-30','<p class=\"p1\" style=\"line-height: 2; text-align: justify;\"><span style=\"font-size: 16pt;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;ตามที่สมาคมวิศวกรรมไฟฟ้า อิเล็กทรอนิกส์ คอมพิวเตอร์ โทรคมนาคมและเทคโนโลยีสารสนเทศ<span class=\"s1\"> (ECTI) </span>ประเทศไทย ได้กำหนดจัดการประชุมวิชาการนานาชาติ<span class=\"s1\"> \"The </span>๑๖<span class=\"s1\">\" international Conference on Electrical Engineering/Electronics, Computer , Telecommunications and information Technology\" ECTI-CON </span>๒๐๑๙<span class=\"s1\">\" </span>ในระหว่างวันที่ ๑๐<span class=\"s1\">-</span>๑๓ กรกฎาคม ๒๕๖๒ ณ โรงแรมดี วารี จอมเทียน บีช พัทยา จังหวัดชลบุรี</span></p>\r\n<p class=\"p1\" style=\"line-height: 2; text-align: justify;\">&nbsp;</p>\r\n<p class=\"p2\" style=\"line-height: 2; text-align: justify;\"><span style=\"font-size: 16pt;\"><span class=\"Apple-converted-space\">&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; </span><span class=\"s2\">ในการนี้</span> <span class=\"s2\">ข้าพเจ้านางสาวพิชชยานิดา</span> <span class=\"s2\">คำวิชัย</span> <span class=\"s2\">พนังงานมหาวิทยาลัย</span> <span class=\"s2\">ตำแหน่ง</span> <span class=\"s2\">อาจารย์</span> <span class=\"s2\">จึงขออนุญาตเข้าร่วมงานประชุมวิชาการระดับนานาชาติ</span> The <span class=\"s2\">๑๖</span>\" international Conference on Electrical Engineering/Electronics, Computer , Telecommunications and information Technology\" ECTI-CON <span class=\"s2\">๒๐๑๙</span>\" <span class=\"s2\">พร้อมเสนอผลงานทางวิชาการในรูปแบบบรรยาย</span> <span class=\"s2\">หัวข้อเรื่อง</span> \"Implementing Information Technology and Social Media for Promoting Tourism Pongyeang Subdistrict , Chiang Mai , Thailand\" <span class=\"s2\">ระหว่างวันที่</span> <span class=\"s2\">๑๐</span>-<span class=\"s2\">๑๓</span> <span class=\"s2\">กรกฎาคม</span> <span class=\"s2\">๒๕๖๒</span> <span class=\"s2\">ณ</span> <span class=\"s2\">โรงแรมดี</span> <span class=\"s2\">วารี</span> <span class=\"s2\">จอมเทียน</span> <span class=\"s2\">บีช</span> <span class=\"s2\">พัทยา</span> <span class=\"s2\">จังหวัดชลบุรี</span></span></p>',150,100,'',8),(7,NULL,'อว.69.5.','111','2021-10-02','<p class=\"p1\" style=\"line-height: 2; text-align: justify;\"><span style=\"font-size: 16pt;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;ตามที่สมาคมวิศวกรรมไฟฟ้า อิเล็กทรอนิกส์ คอมพิวเตอร์ โทรคมนาคมและเทคโนโลยีสารสนเทศ<span class=\"s1\"> (ECTI) </span>ประเทศไทย ได้กำหนดจัดการประชุมวิชาการนานาชาติ<span class=\"s1\"> \"The </span>๑๖<span class=\"s1\">\" international Conference on Electrical Engineering/Electronics, Computer , Telecommunications and information Technology\" ECTI-CON </span>๒๐๑๙<span class=\"s1\">\" </span>ในระหว่างวันที่ ๑๐<span class=\"s1\">-</span>๑๓ กรกฎาคม ๒๕๖๒ ณ โรงแรมดี วารี จอมเทียน บีช พัทยา จังหวัดชลบุรี</span></p>\r\n<p class=\"p1\" style=\"line-height: 2; text-align: justify;\">&nbsp;</p>\r\n<p class=\"p2\" style=\"line-height: 2; text-align: justify;\"><span style=\"font-size: 16pt;\"><span class=\"Apple-converted-space\">&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; </span><span class=\"s2\">ในการนี้</span> <span class=\"s2\">ข้าพเจ้านางสาวพิชชยานิดา</span> <span class=\"s2\">คำวิชัย</span> <span class=\"s2\">พนังงานมหาวิทยาลัย</span> <span class=\"s2\">ตำแหน่ง</span> <span class=\"s2\">อาจารย์</span> <span class=\"s2\">จึงขออนุญาตเข้าร่วมงานประชุมวิชาการระดับนานาชาติ</span> The <span class=\"s2\">๑๖</span>\" international Conference on Electrical Engineering/Electronics, Computer , Telecommunications and information Technology\" ECTI-CON <span class=\"s2\">๒๐๑๙</span>\" <span class=\"s2\">พร้อมเสนอผลงานทางวิชาการในรูปแบบบรรยาย</span> <span class=\"s2\">หัวข้อเรื่อง</span> \"Implementing Information Technology and Social Media for Promoting Tourism Pongyeang Subdistrict , Chiang Mai , Thailand\" <span class=\"s2\">ระหว่างวันที่</span> <span class=\"s2\">๑๐</span>-<span class=\"s2\">๑๓</span> <span class=\"s2\">กรกฎาคม</span> <span class=\"s2\">๒๕๖๒</span> <span class=\"s2\">ณ</span> <span class=\"s2\">โรงแรมดี</span> <span class=\"s2\">วารี</span> <span class=\"s2\">จอมเทียน</span> <span class=\"s2\">บีช</span> <span class=\"s2\">พัทยา</span> <span class=\"s2\">จังหวัดชลบุรี</span></span></p>',28,7,'',9),(8,NULL,'อว.69.5.','ขออนุญาตเดินทางโยใช้รถยนต์ส่วนตัว และขออนุญาตเบิกค่าชกเชยน้ำมันเชื้อเพลิง','2021-10-10','<p class=\"p1\" style=\"line-height: 2; text-align: justify;\"><span style=\"font-size: 16pt;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;ตามที่สมาคมวิศวกรรมไฟฟ้า อิเล็กทรอนิกส์ คอมพิวเตอร์ โทรคมนาคมและเทคโนโลยีสารสนเทศ<span class=\"s1\"> (ECTI) </span>ประเทศไทย ได้กำหนดจัดการประชุมวิชาการนานาชาติ<span class=\"s1\"> \"The </span>๑๖<span class=\"s1\">\" international Conference on Electrical Engineering/Electronics, Computer , Telecommunications and information Technology\" ECTI-CON </span>๒๐๑๙<span class=\"s1\">\" </span>ในระหว่างวันที่ ๑๐<span class=\"s1\">-</span>๑๓ กรกฎาคม ๒๕๖๒ ณ โรงแรมดี วารี จอมเทียน บีช พัทยา จังหวัดชลบุรี</span></p>\r\n<p class=\"p1\" style=\"line-height: 2; text-align: justify;\">&nbsp;</p>\r\n<p class=\"p2\" style=\"line-height: 2; text-align: justify;\"><span style=\"font-size: 16pt;\"><span class=\"Apple-converted-space\">&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; </span><span class=\"s2\">ในการนี้</span> <span class=\"s2\">ข้าพเจ้านางสาวพิชชยานิดา</span> <span class=\"s2\">คำวิชัย</span> <span class=\"s2\">พนังงานมหาวิทยาลัย</span> <span class=\"s2\">ตำแหน่ง</span> <span class=\"s2\">อาจารย์</span> <span class=\"s2\">จึงขออนุญาตเข้าร่วมงานประชุมวิชาการระดับนานาชาติ</span> The <span class=\"s2\">๑๖</span>\" international Conference on Electrical Engineering/Electronics, Computer , Telecommunications and information Technology\" ECTI-CON <span class=\"s2\">๒๐๑๙</span>\" <span class=\"s2\">พร้อมเสนอผลงานทางวิชาการในรูปแบบบรรยาย</span> <span class=\"s2\">หัวข้อเรื่อง</span> \"Implementing Information Technology and Social Media for Promoting Tourism Pongyeang Subdistrict , Chiang Mai , Thailand\" <span class=\"s2\">ระหว่างวันที่</span> <span class=\"s2\">๑๐</span>-<span class=\"s2\">๑๓</span> <span class=\"s2\">กรกฎาคม</span> <span class=\"s2\">๒๕๖๒</span> <span class=\"s2\">ณ</span> <span class=\"s2\">โรงแรมดี</span> <span class=\"s2\">วารี</span> <span class=\"s2\">จอมเทียน</span> <span class=\"s2\">บีช</span> <span class=\"s2\">พัทยา</span> <span class=\"s2\">จังหวัดชลบุรี</span></span></p>',16,4,'8.pdf',11),(9,NULL,'อว.69.5.','ขออนุญาตเดินทางโยใช้รถยนต์ส่วนตัว และขออนุญาตเบิกค่าชกเชยน้ำมันเชื้อเพลิง','2021-10-14','<p>ในการนี้ เพื่อให้การเดินทางดังกล่าวเป็นไปด้วยความเรียบร้อย ข้าพเจ้า จึงใคร่ขออนุญาต</p>\r\n<p>เข้าร่วม (ชื่องาน) ............................................................................... ระหว่างวันที่ ........................ถึง..................... ณ........................................................จังหวัด.................................... โดยรถยนต์ส่วนบุคคล และขออนุมัติเบิกค่าชดเชยค่าน้ำมันเชื้อเพลิง หมายเลขทะเบียน .........................................ดังนี้</p>\r\n<ul>\r\n<li>จาก.................................................. &ndash; ............................................... = .............. กิโลเมตร</li>\r\n<li>จาก.................................................. &ndash; ............................................... = .............. กิโลเมตร</li>\r\n</ul>\r\n<p>รวมระยะทางทั้งสิ้น ......................................... กิโลเมตร</p>\r\n<p>เพื่อทำให้มีความคุ้มทุนในการใช้งบประมาณของราชการ ข้าพเจ้าได้แนบรายละเอียดการเดินทางโดยพาหนะต่างๆ ตามลำดับ ที่มีค่าใช้จ่ายในการเดินทาง เมื่อเทียบกับการเดินทางโดยรถยนต์ส่วนบุคคล ข้าพเจ้าจึงขอแนบตารางเปรียบเทียบมาเพื่อประกอบการพิจารณาด้วยแล้ว ดังนี้</p>\r\n<p>ดังนั้น จึงขออนุญาตเดินทางไปปฏิบัติงานโดยรถยนต์ส่วนบุคคล และขออนุมัติเบิกค่าชดเชยน้ำมันเชื้อเพลิง <br />รวมระยะเดินทางในการปฏิบัติงานโดยประมาณเท่ากับ ............... กิโลเมตร ๆ ละ 4 บาท (......... * 4 = ...............) (.......................................................) โดยเบิกเพียง ......................... บาท (.......................................) โดยเบิกจ่ายจาก...........................................................................................ของคณะวิทยาศาสตร์</p>',240,60,'9.pdf',14);
/*!40000 ALTER TABLE `requestfuel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `requestingpermission`
--

DROP TABLE IF EXISTS `requestingpermission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `requestingpermission` (
  `id` int NOT NULL,
  `fileName` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `requestPerID` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `requestPerName` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `requestingPerDate` date DEFAULT NULL,
  `requestingPerText` longtext COLLATE utf8_unicode_ci,
  `BudgetRequest_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK5m9evmovyes2btanyj3il5wlm` (`BudgetRequest_id`),
  CONSTRAINT `FK5m9evmovyes2btanyj3il5wlm` FOREIGN KEY (`BudgetRequest_id`) REFERENCES `budgetrequest` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requestingpermission`
--

LOCK TABLES `requestingpermission` WRITE;
/*!40000 ALTER TABLE `requestingpermission` DISABLE KEYS */;
INSERT INTO `requestingpermission` VALUES (1,'','อว.69.5.','อนุญาติเข้าร่วมประชุม','2021-09-29','<p class=\"p1\" style=\"line-height: 1.5; text-align: justify;\"><span style=\"font-size: 14pt;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;ตามที่สมาคมวิศวกรรมไฟฟ้า อิเล็กทรอนิกส์ คอมพิวเตอร์ โทรคมนาคมและเทคโนโลยีสารสนเทศ<span class=\"s1\"> (ECTI) </span>ประเทศไทย ได้กำหนดจัดการประชุมวิชาการนานาชาติ<span class=\"s1\"> \"The </span>๑๖<span class=\"s1\">\" international Conference on Electrical Engineering/Electronics, Computer , Telecommunications and information Technology\" ECTI-CON </span>๒๐๑๙<span class=\"s1\">\" </span>ในระหว่างวันที่ ๑๐<span class=\"s1\">-</span>๑๓ กรกฎาคม ๒๕๖๒ ณ โรงแรมดี วารี จอมเทียน บีช พัทยา จังหวัดชลบุรี</span></p>\r\n<p class=\"p1\" style=\"line-height: 1.5; text-align: justify;\">&nbsp;</p>\r\n<p class=\"p2\" style=\"line-height: 1.5; text-align: justify;\"><span style=\"font-size: 14pt;\"><span class=\"Apple-converted-space\">&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; </span><span class=\"s2\">ในการนี้</span> <span class=\"s2\">ข้าพเจ้านางสาวพิชชยานิดา</span> <span class=\"s2\">คำวิชัย</span> <span class=\"s2\">พนังงานมหาวิทยาลัย</span> <span class=\"s2\">ตำแหน่ง</span> <span class=\"s2\">อาจารย์</span> <span class=\"s2\">จึงขออนุญาตเข้าร่วมงานประชุมวิชาการระดับนานาชาติ</span> The <span class=\"s2\">๑๖</span>\" international Conference on Electrical Engineering/Electronics, Computer , Telecommunications and information Technology\" ECTI-CON <span class=\"s2\">๒๐๑๙</span>\" <span class=\"s2\">พร้อมเสนอผลงานทางวิชาการในรูปแบบบรรยาย</span> <span class=\"s2\">หัวข้อเรื่อง</span> \"Implementing Information Technology and Social Media for Promoting Tourism Pongyeang Subdistrict , Chiang Mai , Thailand\" <span class=\"s2\">ระหว่างวันที่</span> <span class=\"s2\">๑๐</span>-<span class=\"s2\">๑๓</span> <span class=\"s2\">กรกฎาคม</span> <span class=\"s2\">๒๕๖๒</span> <span class=\"s2\">ณ</span> <span class=\"s2\">โรงแรมดี</span> <span class=\"s2\">วารี</span> <span class=\"s2\">จอมเทียน</span> <span class=\"s2\">บีช</span> <span class=\"s2\">พัทยา</span> <span class=\"s2\">จังหวัดชลบุรี</span></span></p>',1),(2,'','อว.69.5.','อนุญาติเข้าร่วมประชุม','2021-10-07','<p class=\"p1\" style=\"line-height: 1.5; text-align: justify;\"><span style=\"font-size: 14pt;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;ตามที่สมาคมวิศวกรรมไฟฟ้า อิเล็กทรอนิกส์ คอมพิวเตอร์ โทรคมนาคมและเทคโนโลยีสารสนเทศ<span class=\"s1\"> (ECTI) </span>ประเทศไทย ได้กำหนดจัดการประชุมวิชาการนานาชาติ<span class=\"s1\"> \"The </span>๑๖<span class=\"s1\">\" international Conference on Electrical Engineering/Electronics, Computer , Telecommunications and information Technology\" ECTI-CON </span>๒๐๑๙<span class=\"s1\">\" </span>ในระหว่างวันที่ ๑๐<span class=\"s1\">-</span>๑๓ กรกฎาคม ๒๕๖๒ ณ โรงแรมดี วารี จอมเทียน บีช พัทยา จังหวัดชลบุรี</span></p>\r\n<p class=\"p1\" style=\"line-height: 1.5; text-align: justify;\">&nbsp;</p>\r\n<p class=\"p2\" style=\"line-height: 1.5; text-align: justify;\"><span style=\"font-size: 14pt;\"><span class=\"Apple-converted-space\">&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; </span><span class=\"s2\">ในการนี้</span> <span class=\"s2\">ข้าพเจ้านางสาวพิชชยานิดา</span> <span class=\"s2\">คำวิชัย</span> <span class=\"s2\">พนังงานมหาวิทยาลัย</span> <span class=\"s2\">ตำแหน่ง</span> <span class=\"s2\">อาจารย์</span> <span class=\"s2\">จึงขออนุญาตเข้าร่วมงานประชุมวิชาการระดับนานาชาติ</span> The <span class=\"s2\">๑๖</span>\" international Conference on Electrical Engineering/Electronics, Computer , Telecommunications and information Technology\" ECTI-CON <span class=\"s2\">๒๐๑๙</span>\" <span class=\"s2\">พร้อมเสนอผลงานทางวิชาการในรูปแบบบรรยาย</span> <span class=\"s2\">หัวข้อเรื่อง</span> \"Implementing Information Technology and Social Media for Promoting Tourism Pongyeang Subdistrict , Chiang Mai , Thailand\" <span class=\"s2\">ระหว่างวันที่</span> <span class=\"s2\">๑๐</span>-<span class=\"s2\">๑๓</span> <span class=\"s2\">กรกฎาคม</span> <span class=\"s2\">๒๕๖๒</span> <span class=\"s2\">ณ</span> <span class=\"s2\">โรงแรมดี</span> <span class=\"s2\">วารี</span> <span class=\"s2\">จอมเทียน</span> <span class=\"s2\">บีช</span> <span class=\"s2\">พัทยา</span> <span class=\"s2\">จังหวัดชลบุรี</span></span></p>',2),(4,'','อว.69.5.','อนุญาติเข้าร่วมประชุม','2021-09-23','<p class=\"p1\" style=\"line-height: 1.5; text-align: justify;\"><span style=\"font-size: 14pt;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;ตามที่สมาคมวิศวกรรมไฟฟ้า อิเล็กทรอนิกส์ คอมพิวเตอร์ โทรคมนาคมและเทคโนโลยีสารสนเทศ<span class=\"s1\"> (ECTI) </span>ประเทศไทย ได้กำหนดจัดการประชุมวิชาการนานาชาติ<span class=\"s1\"> \"The </span>๑๖<span class=\"s1\">\" international Conference on Electrical Engineering/Electronics, Computer , Telecommunications and information Technology\" ECTI-CON </span>๒๐๑๙<span class=\"s1\">\" </span>ในระหว่างวันที่ ๑๐<span class=\"s1\">-</span>๑๓ กรกฎาคม ๒๕๖๒ ณ โรงแรมดี วารี จอมเทียน บีช พัทยา จังหวัดชลบุรี</span></p>\r\n<p class=\"p1\" style=\"line-height: 1.5; text-align: justify;\">&nbsp;</p>\r\n<p class=\"p2\" style=\"line-height: 1.5; text-align: justify;\"><span style=\"font-size: 14pt;\"><span class=\"Apple-converted-space\">&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; </span><span class=\"s2\">ในการนี้</span> <span class=\"s2\">ข้าพเจ้านางสาวพิชชยานิดา</span> <span class=\"s2\">คำวิชัย</span> <span class=\"s2\">พนังงานมหาวิทยาลัย</span> <span class=\"s2\">ตำแหน่ง</span> <span class=\"s2\">อาจารย์</span> <span class=\"s2\">จึงขออนุญาตเข้าร่วมงานประชุมวิชาการระดับนานาชาติ</span> The <span class=\"s2\">๑๖</span>\" international Conference on Electrical Engineering/Electronics, Computer , Telecommunications and information Technology\" ECTI-CON <span class=\"s2\">๒๐๑๙</span>\" <span class=\"s2\">พร้อมเสนอผลงานทางวิชาการในรูปแบบบรรยาย</span> <span class=\"s2\">หัวข้อเรื่อง</span> \"Implementing Information Technology and Social Media for Promoting Tourism Pongyeang Subdistrict , Chiang Mai , Thailand\" <span class=\"s2\">ระหว่างวันที่</span> <span class=\"s2\">๑๐</span>-<span class=\"s2\">๑๓</span> <span class=\"s2\">กรกฎาคม</span> <span class=\"s2\">๒๕๖๒</span> <span class=\"s2\">ณ</span> <span class=\"s2\">โรงแรมดี</span> <span class=\"s2\">วารี</span> <span class=\"s2\">จอมเทียน</span> <span class=\"s2\">บีช</span> <span class=\"s2\">พัทยา</span> <span class=\"s2\">จังหวัดชลบุรี</span></span></p>',4),(5,'','อว.69.5.','อนุญาติเข้าร่วมประชุม','2021-09-25','<p class=\"p1\" style=\"line-height: 1.5; text-align: justify;\"><span style=\"font-size: 14pt;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;ตามที่สมาคมวิศวกรรมไฟฟ้า อิเล็กทรอนิกส์ คอมพิวเตอร์ โทรคมนาคมและเทคโนโลยีสารสนเทศ<span class=\"s1\"> (ECTI) </span>ประเทศไทย ได้กำหนดจัดการประชุมวิชาการนานาชาติ<span class=\"s1\"> \"The </span>๑๖<span class=\"s1\">\" international Conference on Electrical Engineering/Electronics, Computer , Telecommunications and information Technology\" ECTI-CON </span>๒๐๑๙<span class=\"s1\">\" </span>ในระหว่างวันที่ ๑๐<span class=\"s1\">-</span>๑๓ กรกฎาคม ๒๕๖๒ ณ โรงแรมดี วารี จอมเทียน บีช พัทยา จังหวัดชลบุรี</span></p>\r\n<p class=\"p1\" style=\"line-height: 1.5; text-align: justify;\">&nbsp;</p>\r\n<p class=\"p2\" style=\"line-height: 1.5; text-align: justify;\"><span style=\"font-size: 14pt;\"><span class=\"Apple-converted-space\">&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; </span><span class=\"s2\">ในการนี้</span> <span class=\"s2\">ข้าพเจ้านางสาวพิชชยานิดา</span> <span class=\"s2\">คำวิชัย</span> <span class=\"s2\">พนังงานมหาวิทยาลัย</span> <span class=\"s2\">ตำแหน่ง</span> <span class=\"s2\">อาจารย์</span> <span class=\"s2\">จึงขออนุญาตเข้าร่วมงานประชุมวิชาการระดับนานาชาติ</span> The <span class=\"s2\">๑๖</span>\" international Conference on Electrical Engineering/Electronics, Computer , Telecommunications and information Technology\" ECTI-CON <span class=\"s2\">๒๐๑๙</span>\" <span class=\"s2\">พร้อมเสนอผลงานทางวิชาการในรูปแบบบรรยาย</span> <span class=\"s2\">หัวข้อเรื่อง</span> \"Implementing Information Technology and Social Media for Promoting Tourism Pongyeang Subdistrict , Chiang Mai , Thailand\" <span class=\"s2\">ระหว่างวันที่</span> <span class=\"s2\">๑๐</span>-<span class=\"s2\">๑๓</span> <span class=\"s2\">กรกฎาคม</span> <span class=\"s2\">๒๕๖๒</span> <span class=\"s2\">ณ</span> <span class=\"s2\">โรงแรมดี</span> <span class=\"s2\">วารี</span> <span class=\"s2\">จอมเทียน</span> <span class=\"s2\">บีช</span> <span class=\"s2\">พัทยา</span> <span class=\"s2\">จังหวัดชลบุรี</span></span></p>',5),(6,'','อว.69.5.','ขออนุญาตเดินทางโยใช้รถยนต์ส่วนตัว และขออนุญาตเบิกค่าชกเชยน้ำมันเชื้อเพลิง','2021-09-28','<p class=\"p1\" style=\"line-height: 2; text-align: justify;\"><span style=\"font-size: 16pt;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;ตามที่สมาคมวิศวกรรมไฟฟ้า อิเล็กทรอนิกส์ คอมพิวเตอร์ โทรคมนาคมและเทคโนโลยีสารสนเทศ<span class=\"s1\"> (ECTI) </span>ประเทศไทย ได้กำหนดจัดการประชุมวิชาการนานาชาติ<span class=\"s1\"> \"The </span>๑๖<span class=\"s1\">\" international Conference on Electrical Engineering/Electronics, Computer , Telecommunications and information Technology\" ECTI-CON </span>๒๐๑๙<span class=\"s1\">\" </span>ในระหว่างวันที่ ๑๐<span class=\"s1\">-</span>๑๓ กรกฎาคม ๒๕๖๒ ณ โรงแรมดี วารี จอมเทียน บีช พัทยา จังหวัดชลบุรี</span></p>\r\n<p class=\"p1\" style=\"line-height: 2; text-align: justify;\">&nbsp;</p>\r\n<p class=\"p2\" style=\"line-height: 2; text-align: justify;\"><span style=\"font-size: 16pt;\"><span class=\"Apple-converted-space\">&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; </span><span class=\"s2\">ในการนี้</span> <span class=\"s2\">ข้าพเจ้านางสาวพิชชยานิดา</span> <span class=\"s2\">คำวิชัย</span> <span class=\"s2\">พนังงานมหาวิทยาลัย</span> <span class=\"s2\">ตำแหน่ง</span> <span class=\"s2\">อาจารย์</span> <span class=\"s2\">จึงขออนุญาตเข้าร่วมงานประชุมวิชาการระดับนานาชาติ</span> The <span class=\"s2\">๑๖</span>\" international Conference on Electrical Engineering/Electronics, Computer , Telecommunications and information Technology\" ECTI-CON <span class=\"s2\">๒๐๑๙</span>\" <span class=\"s2\">พร้อมเสนอผลงานทางวิชาการในรูปแบบบรรยาย</span> <span class=\"s2\">หัวข้อเรื่อง</span> \"Implementing Information Technology and Social Media for Promoting Tourism Pongyeang Subdistrict , Chiang Mai , Thailand\" <span class=\"s2\">ระหว่างวันที่</span> <span class=\"s2\">๑๐</span>-<span class=\"s2\">๑๓</span> <span class=\"s2\">กรกฎาคม</span> <span class=\"s2\">๒๕๖๒</span> <span class=\"s2\">ณ</span> <span class=\"s2\">โรงแรมดี</span> <span class=\"s2\">วารี</span> <span class=\"s2\">จอมเทียน</span> <span class=\"s2\">บีช</span> <span class=\"s2\">พัทยา</span> <span class=\"s2\">จังหวัดชลบุรี</span></span></p>',6),(7,'','อว.69.5. ','อบรม2','2021-09-28','<p class=\"p1\" style=\"line-height: 2; text-align: justify;\"><span style=\"font-size: 16pt;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;ตามที่สมาคมวิศวกรรมไฟฟ้า อิเล็กทรอนิกส์ คอมพิวเตอร์ โทรคมนาคมและเทคโนโลยีสารสนเทศ<span class=\"s1\"> (ECTI) </span>ประเทศไทย ได้กำหนดจัดการประชุมวิชาการนานาชาติ<span class=\"s1\"> \"The </span>๑๖<span class=\"s1\">\" international Conference on Electrical Engineering/Electronics, Computer , Telecommunications and information Technology\" ECTI-CON </span>๒๐๑๙<span class=\"s1\">\" </span>ในระหว่างวันที่ ๑๐<span class=\"s1\">-</span>๑๓ กรกฎาคม ๒๕๖๒ ณ โรงแรมดี วารี จอมเทียน บีช พัทยา จังหวัดชลบุรี</span></p>\r\n<p class=\"p1\" style=\"line-height: 2; text-align: justify;\">&nbsp;</p>\r\n<p class=\"p2\" style=\"line-height: 2; text-align: justify;\"><span style=\"font-size: 16pt;\"><span class=\"Apple-converted-space\">&nbsp;&nbsp; &nbsp;</span><span class=\"s2\">ในการนี้</span> <span class=\"s2\">ข้าพเจ้านางสาวพิชชยานิดา</span> <span class=\"s2\">คำวิชัย</span> <span class=\"s2\">พนังงานมหาวิทยาลัย</span> <span class=\"s2\">ตำแหน่ง</span> <span class=\"s2\">อาจารย์</span> <span class=\"s2\">จึงขออนุญาตเข้าร่วมงานประชุมวิชาการระดับนานาชาติ</span> The <span class=\"s2\">๑๖</span>\" international Conference on Electrical Engineering/Electronics, Computer , Telecommunications and information Technology\" ECTI-CON <span class=\"s2\">๒๐๑๙</span>\" <span class=\"s2\">พร้อมเสนอผลงานทางวิชาการในรูปแบบบรรยาย</span> <span class=\"s2\">หัวข้อเรื่อง</span> \"Implementing Information Technology and Social Media for Promoting Tourism Pongyeang Subdistrict , Chiang Mai , Thailand\" <span class=\"s2\">ระหว่างวันที่</span> <span class=\"s2\">๑๐</span>-<span class=\"s2\">๑๓</span> <span class=\"s2\">กรกฎาคม</span> <span class=\"s2\">๒๕๖๒</span> <span class=\"s2\">ณ</span> <span class=\"s2\">โรงแรมดี</span> <span class=\"s2\">วารี</span> <span class=\"s2\">จอมเทียน</span> <span class=\"s2\">บีช</span> <span class=\"s2\">พัทยา</span> <span class=\"s2\">จังหวัดชลบุรี</span></span></p>',7),(8,'','อว.69.5. ','อบรม2','2021-09-30','<p class=\"p1\" style=\"line-height: 2; text-align: justify;\"><span style=\"font-size: 16pt;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;ตามที่สมาคมวิศวกรรมไฟฟ้า อิเล็กทรอนิกส์ คอมพิวเตอร์ โทรคมนาคมและเทคโนโลยีสารสนเทศ<span class=\"s1\"> (ECTI) </span>ประเทศไทย ได้กำหนดจัดการประชุมวิชาการนานาชาติ<span class=\"s1\"> \"The </span>๑๖<span class=\"s1\">\" international Conference on Electrical Engineering/Electronics, Computer , Telecommunications and information Technology\" ECTI-CON </span>๒๐๑๙<span class=\"s1\">\" </span>ในระหว่างวันที่ ๑๐<span class=\"s1\">-</span>๑๓ กรกฎาคม ๒๕๖๒ ณ โรงแรมดี วารี จอมเทียน บีช พัทยา จังหวัดชลบุรี</span></p>\r\n<p class=\"p1\" style=\"line-height: 2; text-align: justify;\">&nbsp;</p>\r\n<p class=\"p2\" style=\"line-height: 2; text-align: justify;\"><span style=\"font-size: 16pt;\"><span class=\"Apple-converted-space\">&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; </span><span class=\"s2\">ในการนี้</span> <span class=\"s2\">ข้าพเจ้านางสาวพิชชยานิดา</span> <span class=\"s2\">คำวิชัย</span> <span class=\"s2\">พนังงานมหาวิทยาลัย</span> <span class=\"s2\">ตำแหน่ง</span> <span class=\"s2\">อาจารย์</span> <span class=\"s2\">จึงขออนุญาตเข้าร่วมงานประชุมวิชาการระดับนานาชาติ</span> The <span class=\"s2\">๑๖</span>\" international Conference on Electrical Engineering/Electronics, Computer , Telecommunications and information Technology\" ECTI-CON <span class=\"s2\">๒๐๑๙</span>\" <span class=\"s2\">พร้อมเสนอผลงานทางวิชาการในรูปแบบบรรยาย</span> <span class=\"s2\">หัวข้อเรื่อง</span> \"Implementing Information Technology and Social Media for Promoting Tourism Pongyeang Subdistrict , Chiang Mai , Thailand\" <span class=\"s2\">ระหว่างวันที่</span> <span class=\"s2\">๑๐</span>-<span class=\"s2\">๑๓</span> <span class=\"s2\">กรกฎาคม</span> <span class=\"s2\">๒๕๖๒</span> <span class=\"s2\">ณ</span> <span class=\"s2\">โรงแรมดี</span> <span class=\"s2\">วารี</span> <span class=\"s2\">จอมเทียน</span> <span class=\"s2\">บีช</span> <span class=\"s2\">พัทยา</span> <span class=\"s2\">จังหวัดชลบุรี</span></span></p>',8),(9,'','อว.69.5.3','อบรม2','2021-10-02','<p class=\"p1\" style=\"line-height: 2; text-align: justify;\"><span style=\"font-size: 16pt;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;ตามที่สมาคมวิศวกรรมไฟฟ้า อิเล็กทรอนิกส์ คอมพิวเตอร์ โทรคมนาคมและเทคโนโลยีสารสนเทศ<span class=\"s1\"> (ECTI) </span>ประเทศไทย ได้กำหนดจัดการประชุมวิชาการนานาชาติ<span class=\"s1\"> \"The </span>๑๖<span class=\"s1\">\" international Conference on Electrical Engineering/Electronics, Computer , Telecommunications and information Technology\" ECTI-CON </span>๒๐๑๙<span class=\"s1\">\" </span>ในระหว่างวันที่ ๑๐<span class=\"s1\">-</span>๑๓ กรกฎาคม ๒๕๖๒ ณ โรงแรมดี วารี จอมเทียน บีช พัทยา จังหวัดชลบุรี</span></p>\r\n<p class=\"p1\" style=\"line-height: 2; text-align: justify;\">&nbsp;</p>\r\n<p class=\"p2\" style=\"line-height: 2; text-align: justify;\"><span style=\"font-size: 16pt;\"><span class=\"Apple-converted-space\">&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; </span><span class=\"s2\">ในการนี้</span> <span class=\"s2\">ข้าพเจ้านางสาวพิชชยานิดา</span> <span class=\"s2\">คำวิชัย</span> <span class=\"s2\">พนังงานมหาวิทยาลัย</span> <span class=\"s2\">ตำแหน่ง</span> <span class=\"s2\">อาจารย์</span> <span class=\"s2\">จึงขออนุญาตเข้าร่วมงานประชุมวิชาการระดับนานาชาติ</span> The <span class=\"s2\">๑๖</span>\" international Conference on Electrical Engineering/Electronics, Computer , Telecommunications and information Technology\" ECTI-CON <span class=\"s2\">๒๐๑๙</span>\" <span class=\"s2\">พร้อมเสนอผลงานทางวิชาการในรูปแบบบรรยาย</span> <span class=\"s2\">หัวข้อเรื่อง</span> \"Implementing Information Technology and Social Media for Promoting Tourism Pongyeang Subdistrict , Chiang Mai , Thailand\" <span class=\"s2\">ระหว่างวันที่</span> <span class=\"s2\">๑๐</span>-<span class=\"s2\">๑๓</span> <span class=\"s2\">กรกฎาคม</span> <span class=\"s2\">๒๕๖๒</span> <span class=\"s2\">ณ</span> <span class=\"s2\">โรงแรมดี</span> <span class=\"s2\">วารี</span> <span class=\"s2\">จอมเทียน</span> <span class=\"s2\">บีช</span> <span class=\"s2\">พัทยา</span> <span class=\"s2\">จังหวัดชลบุรี</span></span></p>',9),(10,'','อว.69.5.  ','อบรมงานวิจัย','2021-10-10','<div class=\"no-margin\">\r\n<h2>เปรียบเทียบข้อมูลปัจจุบันและข้อมูลย้อนหลัง</h2>\r\n<p>หากต้องการเปรียบเทียบข้อมูลปัจจุบันกับข้อมูลย้อนหลัง จากเมนู<strong>การวิเคราะห์เชิงสถิติ</strong>ที่ด้านบนขวา ให้เลือก<strong>เปอร์เซ็นไทล์&nbsp;</strong>(ใช้ไม่ได้กับแผนภูมิหน้าแดชบอร์ดด้านความปลอดภัยทั้งหมด)<strong>&nbsp;</strong>คุณจะเห็นเส้นซ้อนทับบนแผนภูมิแสดงเปอร์เซ็นไทล์ที่ 10, 50 และ 90 ของข้อมูลย้อนหลัง (180 วันสำหรับข้อมูลส่วนใหญ่และ 30 วันสำหรับข้อมูล Gmail) จากนั้น หากต้องการเปลี่ยนการวิเคราะห์ ให้ใช้เมนูที่ด้านขวาบนของแผนภูมิเพื่อเปลี่ยนเส้นซ้อนทับ</p>\r\n</div>\r\n<h2>ตารางการส่งข้อความ</h2>\r\n<p>ดูรายละเอียดเพิ่มเติมเกี่ยวกับจำนวนข้อความที่ยอมรับหรือปฏิเสธที่ส่งไปยังโดเมนของคุณได้เช่นกัน โดยคลิกที่จุดข้อมูลในกราฟ รายละเอียดจะแสดงในตารางด้านล่างของกราฟ</p>\r\n<p>หากคลิกที่จุดข้อมูลบนเส้น<strong>ปฏิเสธ</strong>&nbsp;จะเห็นจำนวนข้อความที่ถูกปฏิเสธเนื่องจากเป็นจดหมายขยะที่เด่นชัด นโยบายของ Google หรือนโยบาย Gmail แบบกำหนดเอง หากคลิกจุดข้อมูลในเส้น<strong>ยอมรับ</strong>&nbsp;จะเห็นจำนวนข้อความที่ยอมรับเนื่องจากนโยบาย Gmail เริ่มต้น (โดยไม่มีการตั้งค่า Gmail แบบกำหนดเอง) และจำนวนข้อความที่ยอมรับเนื่องจากนโยบาย Gmail แบบกำหนดเอง</p>',11),(11,'','อว.69.5. ','ddsd','2021-10-13','<p>&nbsp; &nbsp; &nbsp; &nbsp; ตามหนังสือที่ ......................................... ลงวันที่ .................................. (ชื่อหน่วยงานที่เชิญ) ......................................................... กำหนดจัดโครงการ ............................................................................. โดยมีวัตถุประสงค์เพื่อ...................................................................................................................................... และได้เชิญข้าพเจ้า......................................................................... เป็นวิทยากรเพื่อถ่ายทอดความรู้ เรื่อง ..................................................................................................................... ในระหว่างวันที่.................................. ถึง.....................................ณ............................................................................. นั้น</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp; &nbsp; &nbsp;&nbsp; ในการนี้&nbsp; ข้าพเจ้าจึงขออนุญาตเข้าร่วมเป็นวิทยากรเพื่อถ่ายทอดความรู้ แก่ ...................................................... ในระหว่างวันที่............................ ถึง .................................................... ณ ....................................................................................................ทั้งนี้&nbsp; เดินทางทั้งนี้&nbsp; เดินทางโดยรถยนต์ส่วนตัวและไม่เบิกค่าชดเชยน้ำมันเชื้อเพลิง&nbsp;</p>',12),(12,'','อว.69.5.','อบรม','2021-10-14','<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;ตามที่ ...(หน่วยงาน)............................................................................... ได้กำหนดจัดงานประชุม<br />วิชาการระดับ..........&hellip;(ชื่องาน)&hellip;&hellip;&hellip;&hellip;..&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;.&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;. ในระหว่างวันที่<br />&hellip;&hellip;&hellip;.&hellip;&hellip;&hellip;&hellip;&hellip; ถึง &hellip;&hellip;&hellip;...&hellip;&hellip;&hellip;&hellip;. ณ ......................................................................... จังหวัด<br />...................................... นั้น</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ในการนี้&nbsp; &nbsp;ข้าพเจ้า&hellip;&hellip;&hellip;&hellip;&hellip;...&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;. พนักงานมหาวิทยาลัย&nbsp; ตำแหน่ง ..........................<br />จึงขออนุญาตเข้าร่วมงานประชุมวิชาการ&nbsp; ระดับ.............. (ชื่องาน)..........................................................................<br />พร้อมเสนอผลงานทางวิชาการในรูปแบบ....................&nbsp;หัวข้อเรื่อง&nbsp;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip; <br />ระหว่างวันที่ &hellip;&hellip;&hellip;.&hellip;&hellip;&hellip;&hellip;&hellip; ถึง &hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;. ณ .................................................... จังหวัด................................</p>',13),(16,NULL,NULL,'a',NULL,NULL,16),(17,NULL,NULL,'aa',NULL,NULL,17);
/*!40000 ALTER TABLE `requestingpermission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `travelinformation`
--

DROP TABLE IF EXISTS `travelinformation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `travelinformation` (
  `TI_id` int NOT NULL,
  `personelID` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `event_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `organization` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `event_startdate` date DEFAULT NULL,
  `event_enddate` date DEFAULT NULL,
  `event_location` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `participation_type` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isbudget` int DEFAULT NULL,
  `registration_fee` double DEFAULT NULL,
  `registration_fee_used` double DEFAULT NULL,
  `travel_startdate` date DEFAULT NULL,
  `travel_enddate` date DEFAULT NULL,
  `travel_with` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `travel_by` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `allowance` double DEFAULT NULL,
  `accommodation_fee` double DEFAULT NULL,
  `vehticle_fee` double DEFAULT NULL,
  `other_fee` double DEFAULT NULL,
  `budget_source` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reason` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`TI_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `travelinformation`
--

LOCK TABLES `travelinformation` WRITE;
/*!40000 ALTER TABLE `travelinformation` DISABLE KEYS */;
INSERT INTO `travelinformation` VALUES (15,'092','a','a','2021-05-03','2021-05-03','a','a',0,0,0,'2021-05-03','2021-05-03','a','a',0,0,0,0,'a','a'),(16,'092','a','a','2021-05-03','2021-05-03','a','a',1,5,5,'2021-05-03','2021-05-10','a','a',5,5,5,5,'a','a'),(17,'092','เข้าร่วมงานประชุม','รัฐบาล','2021-10-26','2021-10-27','ม.แม่โจ้','อบรม วิทยากร',2,0,0,'2021-10-26','2021-10-26','-','มอเตอร์ไซต์',0,0,0,0,'-','-');
/*!40000 ALTER TABLE `travelinformation` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `travelinformation_AFTER_INSERT` AFTER INSERT ON `travelinformation` FOR EACH ROW BEGIN
INSERT INTO sciencefacultybudget.budgetrequest (id,status,Personnel_personnelID,requestDate) VALUES (new.TI_id,'ทำเอกสารประสงค์ใช้งบประมาณแล้ว',new.personelID,now());
insert into requestingpermission (id,requestPerName,BudgetRequest_id) values(new.TI_id,new.event_name,new.TI_id);
if new.isbudget = 2 then
	insert into travelrequest (realBudget,allowance,endDate,location,otherBudget,rentalRoom,startDate,titleName,totalBudget,totalDate,vehicleBudget,withName,BudgetRequest_id,id)
    values(0,0,new.travel_endDate,new.event_location,0,0,new.travel_startdate,CONCAT(new.participation_type,'  ',new.event_name),0,DATEDIFF(new.travel_endDate,new.travel_startdate),0,new.travel_with,new.TI_id,new.TI_id);
else 
insert into travelrequest (allowance,endDate,location,otherBudget,rentalRoom,startDate,titleName,totalBudget,totalDate,vehicleBudget,withName,BudgetRequest_id,id)
    values(new.allowance,new.travel_endDate,new.event_location,new.other_fee,new.accommodation_fee,new.travel_startdate,CONCAT(new.participation_type,'  ',new.event_name),(new.allowance+new.other_fee+new.accommodation_fee+new.vehticle_fee+new.other_fee),DATEDIFF( new.travel_endDate,new.travel_startdate),new.vehticle_fee,new.travel_with,new.TI_id,new.TI_id);
end if;

if new.registration_fee>0 then
insert into registrationbudgetrequest (cost,location,regisEndDate,regisStartDate,requestBudget,titleName,BudgetRequest_budgetRequestID,id)
    values(new.registration_fee,new.event_location,new.event_enddate,new.event_startdate,new.registration_fee_used,CONCAT(new.participation_type,'  ',new.event_name),new.TI_id,new.TI_id);
end if;

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `travelreport`
--

DROP TABLE IF EXISTS `travelreport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `travelreport` (
  `id` int NOT NULL,
  `fileName` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `travelReportDate` date NOT NULL,
  `travelReportID` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `travelReportText` longtext COLLATE utf8_unicode_ci NOT NULL,
  `BudgetRequest_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK4bhnxq6ltigqwcakpxtrw347w` (`BudgetRequest_id`),
  CONSTRAINT `FK4bhnxq6ltigqwcakpxtrw347w` FOREIGN KEY (`BudgetRequest_id`) REFERENCES `budgetrequest` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `travelreport`
--

LOCK TABLES `travelreport` WRITE;
/*!40000 ALTER TABLE `travelreport` DISABLE KEYS */;
INSERT INTO `travelreport` VALUES (1,'','2021-10-01',' อว.69.5.','<p style=\"text-align: justify; line-height: 1.5;\"><span style=\"font-size: 14pt;\">&nbsp; &nbsp;ตามใบขอออนุมัติเดินทางไปปฏิบัติงาน ที่ อว.69.4.8/010 ลงวันที่ 20 มิถุนายน 2562 อนุมัติให้ข้าพเจ้าพร้อมด้วยเจ้าหน้าที่จำนวน.....-.....คน เดินทางไปปฏิบัติงานเกี่ยวกับ เดินทางไปปฏิบัติงานเกี่ยวกับ การเข้าร่วม<span class=\"s1\">ประชุมวิชาการนานาชาติ </span>\"The <span class=\"s1\">๑๖</span>\" international Conference on Electrical Engineering/Electronics, Computer , Telecommunications and information Technology\" ECTI-CON 2019 (IEEE Conference Record) (ECTI-CON 2019) พร้อมนำเสนอผลงาน ระหว่างวันที่ 10 - 13&nbsp; กรกฎาคม 2562&nbsp; ณ&nbsp; โรงแรมวารี จอมเทียน บีช พัทยา จังหวัดชลบุรี&nbsp; นั้น</span></p>\r\n<p style=\"text-align: justify; line-height: 1.5;\"><span style=\"font-size: 14pt;\">&nbsp; &nbsp; &nbsp; &nbsp; บัดนี้ข้าพเจ้าพร้อมด้วยเจ้าหน้าที่จำนวน.....-..... คน ได้เดินทางไปปฏิบัติงาน ดังกล่าวข้างต้นแล้ว จึงใครขอเสนอผลการปฏิบัติงานดังต่อไปนี้</span></p>\r\n<p style=\"text-align: justify; line-height: 1.5;\"><span style=\"font-size: 14pt;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;1. ได้เข้าร่วมประชุมวิชาการระดับนานาชาติ ECTI-CON 2019 ระหว่างวันที่ 10 -13 กรกฎาคม 2562 ทำให้ได้รับทราบเกี่ยวกับความก้าวหน้าของงานวิจัยที่เกี่ยวข้อง และการนำมาทำวิจัยต่อไป</span></p>\r\n<p style=\"text-align: justify; line-height: 1.5;\"><span style=\"font-size: 14pt;\">&nbsp; &nbsp; &nbsp; &nbsp;2. ได้เข้านำเสนอผลงานภาคบรรยาย เรื่อง Implementing Information Technology and Social Media for Promoting Tourism Pongyeang Subdistrict, Chiang Mai, Thailand (First author) และ อ้างอิงผลงานใน ECTI-CON 2019 Proceedings , 10 - 13 July 2019 , Pattaya Thailand , Page 54 - 57 เป็นที่เรียบร้อยแล้ว</span></p>',1),(2,'','2021-09-24',' อว.69.5.','<p style=\"text-align: justify; line-height: 1.5;\"><span style=\"font-size: 14pt;\">&nbsp; &nbsp;ตามใบขอออนุมัติเดินทางไปปฏิบัติงาน ที่ อว.69.4.8/010 ลงวันที่ 20 มิถุนายน 2562 อนุมัติให้ข้าพเจ้าพร้อมด้วยเจ้าหน้าที่จำนวน.....-.....คน เดินทางไปปฏิบัติงานเกี่ยวกับ เดินทางไปปฏิบัติงานเกี่ยวกับ การเข้าร่วม<span class=\"s1\">ประชุมวิชาการนานาชาติ </span>\"The <span class=\"s1\">๑๖</span>\" international Conference on Electrical Engineering/Electronics, Computer , Telecommunications and information Technology\" ECTI-CON 2019 (IEEE Conference Record) (ECTI-CON 2019) พร้อมนำเสนอผลงาน ระหว่างวันที่ 10 - 13&nbsp; กรกฎาคม 2562&nbsp; ณ&nbsp; โรงแรมวารี จอมเทียน บีช พัทยา จังหวัดชลบุรี&nbsp; นั้น</span></p>\r\n<p style=\"text-align: justify; line-height: 1.5;\"><span style=\"font-size: 14pt;\">&nbsp; &nbsp; &nbsp; &nbsp; บัดนี้ข้าพเจ้าพร้อมด้วยเจ้าหน้าที่จำนวน.....-..... คน ได้เดินทางไปปฏิบัติงาน ดังกล่าวข้างต้นแล้ว จึงใครขอเสนอผลการปฏิบัติงานดังต่อไปนี้</span></p>\r\n<p style=\"text-align: justify; line-height: 1.5;\"><span style=\"font-size: 14pt;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;1. ได้เข้าร่วมประชุมวิชาการระดับนานาชาติ ECTI-CON 2019 ระหว่างวันที่ 10 -13 กรกฎาคม 2562 ทำให้ได้รับทราบเกี่ยวกับความก้าวหน้าของงานวิจัยที่เกี่ยวข้อง และการนำมาทำวิจัยต่อไป</span></p>\r\n<p style=\"text-align: justify; line-height: 1.5;\"><span style=\"font-size: 14pt;\">&nbsp; &nbsp; &nbsp; &nbsp;2. ได้เข้านำเสนอผลงานภาคบรรยาย เรื่อง Implementing Information Technology and Social Media for Promoting Tourism Pongyeang Subdistrict, Chiang Mai, Thailand (First author) และ อ้างอิงผลงานใน ECTI-CON 2019 Proceedings , 10 - 13 July 2019 , Pattaya Thailand , Page 54 - 57 เป็นที่เรียบร้อยแล้ว</span></p>',3),(3,'','2021-09-29',' อว.69.5.','<p style=\"text-align: justify; line-height: 1.5;\"><span style=\"font-size: 14pt;\">&nbsp; &nbsp;ตามใบขอออนุมัติเดินทางไปปฏิบัติงาน ที่ อว.69.4.8/010 ลงวันที่ 20 มิถุนายน 2562 อนุมัติให้ข้าพเจ้าพร้อมด้วยเจ้าหน้าที่จำนวน.....-.....คน เดินทางไปปฏิบัติงานเกี่ยวกับ เดินทางไปปฏิบัติงานเกี่ยวกับ การเข้าร่วม<span class=\"s1\">ประชุมวิชาการนานาชาติ </span>\"The <span class=\"s1\">๑๖</span>\" international Conference on Electrical Engineering/Electronics, Computer , Telecommunications and information Technology\" ECTI-CON 2019 (IEEE Conference Record) (ECTI-CON 2019) พร้อมนำเสนอผลงาน ระหว่างวันที่ 10 - 13&nbsp; กรกฎาคม 2562&nbsp; ณ&nbsp; โรงแรมวารี จอมเทียน บีช พัทยา จังหวัดชลบุรี&nbsp; นั้น</span></p>\r\n<p style=\"text-align: justify; line-height: 1.5;\"><span style=\"font-size: 14pt;\">&nbsp; &nbsp; &nbsp; &nbsp; บัดนี้ข้าพเจ้าพร้อมด้วยเจ้าหน้าที่จำนวน.....-..... คน ได้เดินทางไปปฏิบัติงาน ดังกล่าวข้างต้นแล้ว จึงใครขอเสนอผลการปฏิบัติงานดังต่อไปนี้</span></p>\r\n<p style=\"text-align: justify; line-height: 1.5;\"><span style=\"font-size: 14pt;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;1. ได้เข้าร่วมประชุมวิชาการระดับนานาชาติ ECTI-CON 2019 ระหว่างวันที่ 10 -13 กรกฎาคม 2562 ทำให้ได้รับทราบเกี่ยวกับความก้าวหน้าของงานวิจัยที่เกี่ยวข้อง และการนำมาทำวิจัยต่อไป</span></p>\r\n<p style=\"text-align: justify; line-height: 1.5;\"><span style=\"font-size: 14pt;\">&nbsp; &nbsp; &nbsp; &nbsp;2. ได้เข้านำเสนอผลงานภาคบรรยาย เรื่อง Implementing Information Technology and Social Media for Promoting Tourism Pongyeang Subdistrict, Chiang Mai, Thailand (First author) และ อ้างอิงผลงานใน ECTI-CON 2019 Proceedings , 10 - 13 July 2019 , Pattaya Thailand , Page 54 - 57 เป็นที่เรียบร้อยแล้ว</span></p>',5),(4,'','2021-09-26',' อว.69.5.','<p style=\"text-align: justify; line-height: 1.5;\"><span style=\"font-size: 16pt;\">&nbsp; &nbsp;ตามใบขอออนุมัติเดินทางไปปฏิบัติงาน ที่ อว.69.4.8/010 ลงวันที่ 20 มิถุนายน 2562 อนุมัติให้ข้าพเจ้าพร้อมด้วยเจ้าหน้าที่จำนวน.....-.....คน เดินทางไปปฏิบัติงานเกี่ยวกับ เดินทางไปปฏิบัติงานเกี่ยวกับ การเข้าร่วม<span class=\"s1\">ประชุมวิชาการนานาชาติ </span>\"The <span class=\"s1\">๑๖</span>\" international Conference on Electrical Engineering/Electronics, Computer , Telecommunications and information Technology\" ECTI-CON 2019 (IEEE Conference Record) (ECTI-CON 2019) พร้อมนำเสนอผลงาน ระหว่างวันที่ 10 - 13&nbsp; กรกฎาคม 2562&nbsp; ณ&nbsp; โรงแรมวารี จอมเทียน บีช พัทยา จังหวัดชลบุรี&nbsp; นั้น</span></p>\r\n<p style=\"text-align: justify; line-height: 1.5;\"><span style=\"font-size: 14pt;\">&nbsp; &nbsp; &nbsp; &nbsp; บัดนี้ข้าพเจ้าพร้อมด้วยเจ้าหน้าที่จำนวน.....-..... คน ได้เดินทางไปปฏิบัติงาน ดังกล่าวข้างต้นแล้ว จึงใครขอเสนอผลการปฏิบัติงานดังต่อไปนี้</span></p>\r\n<p style=\"text-align: justify; line-height: 1.5;\"><span style=\"font-size: 14pt;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;1. ได้เข้าร่วมประชุมวิชาการระดับนานาชาติ ECTI-CON 2019 ระหว่างวันที่ 10 -13 กรกฎาคม 2562 ทำให้ได้รับทราบเกี่ยวกับความก้าวหน้าของงานวิจัยที่เกี่ยวข้อง และการนำมาทำวิจัยต่อไป</span></p>\r\n<p style=\"text-align: justify; line-height: 1.5;\"><span style=\"font-size: 14pt;\">&nbsp; &nbsp; &nbsp; &nbsp;2. ได้เข้านำเสนอผลงานภาคบรรยาย เรื่อง Implementing Information Technology and Social Media for Promoting Tourism Pongyeang Subdistrict, Chiang Mai, Thailand (First author) และ อ้างอิงผลงานใน ECTI-CON 2019 Proceedings , 10 - 13 July 2019 , Pattaya Thailand , Page 54 - 57 เป็นที่เรียบร้อยแล้ว</span></p>',5),(5,'','2021-09-26',' อว.69.5.','<p style=\"text-align: justify; line-height: 1.5;\"><span style=\"font-size: 16pt;\">&nbsp; &nbsp;ตามใบขอออนุมัติเดินทางไปปฏิบัติงาน ที่ อว.69.4.8/010 ลงวันที่ 20 มิถุนายน 2562 อนุมัติให้ข้าพเจ้าพร้อมด้วยเจ้าหน้าที่จำนวน.....-.....คน เดินทางไปปฏิบัติงานเกี่ยวกับ เดินทางไปปฏิบัติงานเกี่ยวกับ การเข้าร่วม<span class=\"s1\">ประชุมวิชาการนานาชาติ </span>\"The <span class=\"s1\">๑๖</span>\" international Conference on Electrical Engineering/Electronics, Computer , Telecommunications and information Technology\" ECTI-CON 2019 (IEEE Conference Record) (ECTI-CON 2019) พร้อมนำเสนอผลงาน ระหว่างวันที่ 10 - 13&nbsp; กรกฎาคม 2562&nbsp; ณ&nbsp; โรงแรมวารี จอมเทียน บีช พัทยา จังหวัดชลบุรี&nbsp; นั้น</span></p>\r\n<p style=\"text-align: justify; line-height: 1.5;\"><span style=\"font-size: 14pt;\">&nbsp; &nbsp; &nbsp; &nbsp; บัดนี้ข้าพเจ้าพร้อมด้วยเจ้าหน้าที่จำนวน.....-..... คน ได้เดินทางไปปฏิบัติงาน ดังกล่าวข้างต้นแล้ว จึงใครขอเสนอผลการปฏิบัติงานดังต่อไปนี้</span></p>\r\n<p style=\"text-align: justify; line-height: 1.5;\"><span style=\"font-size: 14pt;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;1. ได้เข้าร่วมประชุมวิชาการระดับนานาชาติ ECTI-CON 2019 ระหว่างวันที่ 10 -13 กรกฎาคม 2562 ทำให้ได้รับทราบเกี่ยวกับความก้าวหน้าของงานวิจัยที่เกี่ยวข้อง และการนำมาทำวิจัยต่อไป</span></p>\r\n<p style=\"text-align: justify; line-height: 1.5;\"><span style=\"font-size: 14pt;\">&nbsp; &nbsp; &nbsp; &nbsp;2. ได้เข้านำเสนอผลงานภาคบรรยาย เรื่อง Implementing Information Technology and Social Media for Promoting Tourism Pongyeang Subdistrict, Chiang Mai, Thailand (First author) และ อ้างอิงผลงานใน ECTI-CON 2019 Proceedings , 10 - 13 July 2019 , Pattaya Thailand , Page 54 - 57 เป็นที่เรียบร้อยแล้ว</span></p>',5),(6,'','2021-09-29',' อว.69.5.','<p style=\"text-align: justify; line-height: 2;\"><span style=\"font-size: 16pt;\">&nbsp; &nbsp;ตามใบขอออนุมัติเดินทางไปปฏิบัติงาน ที่ อว.69.4.8/010 ลงวันที่ 20 มิถุนายน 2562 อนุมัติให้ข้าพเจ้าพร้อมด้วยเจ้าหน้าที่จำนวน.....-.....คน เดินทางไปปฏิบัติงานเกี่ยวกับ เดินทางไปปฏิบัติงานเกี่ยวกับ การเข้าร่วม<span class=\"s1\">ประชุมวิชาการนานาชาติ </span>\"The <span class=\"s1\">๑๖</span>\" international Conference on Electrical Engineering/Electronics, Computer , Telecommunications and information Technology\" ECTI-CON 2019 (IEEE Conference Record) (ECTI-CON 2019) พร้อมนำเสนอผลงาน ระหว่างวันที่ 10 - 13&nbsp; กรกฎาคม 2562&nbsp; ณ&nbsp; โรงแรมวารี จอมเทียน บีช พัทยา จังหวัดชลบุรี&nbsp; นั้น</span></p>\r\n<p style=\"text-align: justify; line-height: 2;\"><span style=\"font-size: 16pt;\">&nbsp; &nbsp; &nbsp; &nbsp; บัดนี้ข้าพเจ้าพร้อมด้วยเจ้าหน้าที่จำนวน.....-..... คน ได้เดินทางไปปฏิบัติงาน ดังกล่าวข้างต้นแล้ว จึงใครขอเสนอผลการปฏิบัติงานดังต่อไปนี้</span></p>\r\n<p style=\"text-align: justify; line-height: 2;\"><span style=\"font-size: 16pt;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;1. ได้เข้าร่วมประชุมวิชาการระดับนานาชาติ ECTI-CON 2019 ระหว่างวันที่ 10 -13 กรกฎาคม 2562 ทำให้ได้รับทราบเกี่ยวกับความก้าวหน้าของงานวิจัยที่เกี่ยวข้อง และการนำมาทำวิจัยต่อไป</span></p>\r\n<p style=\"text-align: justify; line-height: 2;\"><span style=\"font-size: 16pt;\">&nbsp; &nbsp; &nbsp; &nbsp;2. ได้เข้านำเสนอผลงานภาคบรรยาย เรื่อง Implementing Information Technology and Social Media for Promoting Tourism Pongyeang Subdistrict, Chiang Mai, Thailand (First author) และ อ้างอิงผลงานใน ECTI-CON 2019 Proceedings , 10 - 13 July 2019 , Pattaya Thailand , Page 54 - 57 เป็นที่เรียบร้อยแล้ว</span></p>',6),(7,'','2021-09-27',' อว.69.5.','<p style=\"text-align: justify; line-height: 2;\"><span style=\"font-size: 16pt;\">&nbsp; &nbsp;ตามใบขอออนุมัติเดินทางไปปฏิบัติงาน ที่ อว.69.4.8/010 ลงวันที่ 20 มิถุนายน 2562 อนุมัติให้ข้าพเจ้าพร้อมด้วยเจ้าหน้าที่จำนวน.....-.....คน เดินทางไปปฏิบัติงานเกี่ยวกับ เดินทางไปปฏิบัติงานเกี่ยวกับ การเข้าร่วม<span class=\"s1\">ประชุมวิชาการนานาชาติ </span>\"The <span class=\"s1\">๑๖</span>\" international Conference on Electrical Engineering/Electronics, Computer , Telecommunications and information Technology\" ECTI-CON 2019 (IEEE Conference Record) (ECTI-CON 2019) พร้อมนำเสนอผลงาน ระหว่างวันที่ 10 - 13&nbsp; กรกฎาคม 2562&nbsp; ณ&nbsp; โรงแรมวารี จอมเทียน บีช พัทยา จังหวัดชลบุรี&nbsp; นั้น</span></p>\r\n<p style=\"text-align: justify; line-height: 2;\"><span style=\"font-size: 16pt;\">&nbsp; &nbsp; &nbsp; &nbsp; บัดนี้ข้าพเจ้าพร้อมด้วยเจ้าหน้าที่จำนวน.....-..... คน ได้เดินทางไปปฏิบัติงาน ดังกล่าวข้างต้นแล้ว จึงใครขอเสนอผลการปฏิบัติงานดังต่อไปนี้</span></p>\r\n<p style=\"text-align: justify; line-height: 2;\"><span style=\"font-size: 16pt;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;1. ได้เข้าร่วมประชุมวิชาการระดับนานาชาติ ECTI-CON 2019 ระหว่างวันที่ 10 -13 กรกฎาคม 2562 ทำให้ได้รับทราบเกี่ยวกับความก้าวหน้าของงานวิจัยที่เกี่ยวข้อง และการนำมาทำวิจัยต่อไป</span></p>\r\n<p style=\"text-align: justify; line-height: 2;\"><span style=\"font-size: 16pt;\">&nbsp; &nbsp; &nbsp; &nbsp;2. ได้เข้านำเสนอผลงานภาคบรรยาย เรื่อง Implementing Information Technology and Social Media for Promoting Tourism Pongyeang Subdistrict, Chiang Mai, Thailand (First author) และ อ้างอิงผลงานใน ECTI-CON 2019 Proceedings , 10 - 13 July 2019 , Pattaya Thailand , Page 54 - 57 เป็นที่เรียบร้อยแล้ว</span></p>',7),(8,'','2565-10-01',' อว.69.5.','<p style=\"text-align: justify; line-height: 2;\"><span style=\"font-size: 16pt;\">&nbsp; &nbsp;ตามใบขอออนุมัติเดินทางไปปฏิบัติงาน ที่ อว.69.4.8/010 ลงวันที่ 20 มิถุนายน 2562 อนุมัติให้ข้าพเจ้าพร้อมด้วยเจ้าหน้าที่จำนวน.....-.....คน เดินทางไปปฏิบัติงานเกี่ยวกับ เดินทางไปปฏิบัติงานเกี่ยวกับ การเข้าร่วม<span class=\"s1\">ประชุมวิชาการนานาชาติ </span>\"The <span class=\"s1\">๑๖</span>\" international Conference on Electrical Engineering/Electronics, Computer , Telecommunications and information Technology\" ECTI-CON 2019 (IEEE Conference Record) (ECTI-CON 2019) พร้อมนำเสนอผลงาน ระหว่างวันที่ 10 - 13&nbsp; กรกฎาคม 2562&nbsp; ณ&nbsp; โรงแรมวารี จอมเทียน บีช พัทยา จังหวัดชลบุรี&nbsp; นั้น</span></p>\r\n<p style=\"text-align: justify; line-height: 2;\"><span style=\"font-size: 16pt;\">&nbsp; &nbsp; &nbsp; &nbsp; บัดนี้ข้าพเจ้าพร้อมด้วยเจ้าหน้าที่จำนวน.....-..... คน ได้เดินทางไปปฏิบัติงาน ดังกล่าวข้างต้นแล้ว จึงใครขอเสนอผลการปฏิบัติงานดังต่อไปนี้</span></p>\r\n<p style=\"text-align: justify; line-height: 2;\"><span style=\"font-size: 16pt;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;1. ได้เข้าร่วมประชุมวิชาการระดับนานาชาติ ECTI-CON 2019 ระหว่างวันที่ 10 -13 กรกฎาคม 2562 ทำให้ได้รับทราบเกี่ยวกับความก้าวหน้าของงานวิจัยที่เกี่ยวข้อง และการนำมาทำวิจัยต่อไป</span></p>\r\n<p style=\"text-align: justify; line-height: 2;\"><span style=\"font-size: 16pt;\">&nbsp; &nbsp; &nbsp; &nbsp;2. ได้เข้านำเสนอผลงานภาคบรรยาย เรื่อง Implementing Information Technology and Social Media for Promoting Tourism Pongyeang Subdistrict, Chiang Mai, Thailand (First author) และ อ้างอิงผลงานใน ECTI-CON 2019 Proceedings , 10 - 13 July 2019 , Pattaya Thailand , Page 54 - 57 เป็นที่เรียบร้อยแล้ว</span></p>',8),(9,'','2565-10-14',' อว.69.5.','<div>ตามใบขออนุมัติเดินทางไปปฏิบัติงาน&nbsp; ที่ อว.69.5. &nbsp; &nbsp; ลง วันพฤหัสบดี ที่ 14 เดือน ตุลาคม พ.ศ. 2564 &nbsp; &nbsp; อนุมัติให้ข้าพเจ้าพร้อมด้วยเจ้าหน้าที่จำนวน ......................... คน&nbsp; &nbsp; &nbsp; &nbsp;เดินทางไปปฏิบัติงานเกี่ยวกับ อบรม .ณ โรงแรม &nbsp; นั้น</div>\r\n<div>&nbsp;</div>\r\n<div>บัดนี้ข้าพเจ้าพร้อมด้วยเจ้าหน้าที่จำนวน ....................... คน&nbsp; &nbsp;ได้เดินทางไปปฏิบัติงาน&nbsp; &nbsp;ดังกล่าวข้างต้นแล้ว</div>\r\n<div>จึงใคร่ขอเสนอผลการปฏิบัติงานดังต่อไปนี้</div>\r\n<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1. ..............................................................................................................................................................................</div>\r\n<div>...........................................................................................................................................................................................................</div>\r\n<div>...........................................................................................................................................................................................................</div>\r\n<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 2. ..............................................................................................................................................................................</div>\r\n<div>...........................................................................................................................................................................................................</div>\r\n<div>...........................................................................................................................................................................................................</div>\r\n<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 3. ..............................................................................................................................................................................</div>\r\n<div>...........................................................................................................................................................................................................</div>\r\n<div>...........................................................................................................................................................................................................</div>\r\n<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 4. ..............................................................................................................................................................................</div>\r\n<div>...........................................................................................................................................................................................................</div>\r\n<div>...........................................................................................................................................................................................................</div>\r\n<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 5. ..............................................................................................................................................................................</div>\r\n<div>...........................................................................................................................................................................................................</div>\r\n<div>...........................................................................................................................................................................................................</div>\r\n<p>&nbsp;</p>',14);
/*!40000 ALTER TABLE `travelreport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `travelrequest`
--

DROP TABLE IF EXISTS `travelrequest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `travelrequest` (
  `id` int NOT NULL,
  `allowance` double DEFAULT NULL,
  `endDate` date DEFAULT NULL,
  `fileName` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `grade` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `otherBudget` double DEFAULT NULL,
  `payType` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `realBudget` double DEFAULT NULL,
  `rentalRoom` double DEFAULT NULL,
  `startDate` date DEFAULT NULL,
  `titleName` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `totalBudget` double DEFAULT NULL,
  `totalDate` int DEFAULT NULL,
  `travelDate` date DEFAULT NULL,
  `travelID` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `travelVehicle` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vehicleBudget` double DEFAULT NULL,
  `withName` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
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
INSERT INTO `travelrequest` VALUES (1,100,'2021-09-24','','2000','-','โรงแรม',0,'จะจ่ายเงินส่วนตัวทดรองไปก่อน',0,0,'2021-09-24','อบรม',300,1,'2021-09-23','อว.69.5.','รถยนต์ส่วนตัว',200,'-',2),(3,5,'2021-10-09','','-','-','โรงแรม',5,'จะขอยืมเงินทดรองจ่ายไปก่อน',59,5,'2021-10-09','อบรม',59,1,'2021-09-25','อว.69.5.','รถยนต์ส่วนตัว',44,'-',5),(4,100,'2021-09-29','','5000','-','โรงแรม',100,'จะจ่ายเงินส่วนตัวทดรองไปก่อน',376,100,'2021-09-29','อบรม',376,1,'2021-09-26','อว.69.5.','รถยนต์ส่วนตัว',76,'-',6),(5,100,'2021-09-29','','5000','-','โรงแรม',100,'จะขอยืมเงินทดรองจ่ายไปก่อน',355,100,'2021-09-29','อบรม',355,1,'2021-09-27','อว.69.5.','รถยนต์ส่วนตัว',55,'-',7),(6,100,'2021-10-01','','5000','-','โรงแรม2',0,'จะจ่ายเงินส่วนตัวทดรองไปก่อน',350,100,'2021-10-01','อบรม2',350,1,'2021-09-30','อว.69.5.','รถยนต์ส่วนตัว',150,'1',8),(7,100,'2021-10-14','','5000','-','โรงแรม',0,'จะขอยืมเงินทดรองจ่ายไปก่อน',0,0,'2021-10-14','อบรม',100,1,'2021-10-13','อว.69.5.','รถยนต์ส่วนตัว',0,'-',12),(8,100,'2021-10-16','','-','-','โรงแรม',0,'จะขอยืมเงินทดรองจ่ายไปก่อน',440,100,'2021-10-15','อบรม',440,2,'2021-10-14','อว.69.5.','รถยนต์ส่วนตัว',240,'-',14),(16,5,'2021-05-10',NULL,NULL,NULL,'a',5,NULL,NULL,5,'2021-05-03','a  a',25,7,NULL,NULL,NULL,5,'a',16),(17,0,'2021-10-26',NULL,NULL,NULL,'aa',0,NULL,NULL,0,'2021-10-26','aa  aa',0,0,NULL,NULL,NULL,0,'a',17);
/*!40000 ALTER TABLE `travelrequest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `view_remainingbudget`
--

DROP TABLE IF EXISTS `view_remainingbudget`;
/*!50001 DROP VIEW IF EXISTS `view_remainingbudget`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_remainingbudget` AS SELECT 
 1 AS `budgetRequestID`,
 1 AS `chooseRequest`,
 1 AS `requestDate`,
 1 AS `requestName`,
 1 AS `Personnel_personnelID`,
 1 AS `personnelID`,
 1 AS `budget`,
 1 AS `firstname`,
 1 AS `lastname`,
 1 AS `personnelType`,
 1 AS `position`,
 1 AS `salary`,
 1 AS `title`,
 1 AS `Department_departmentID`,
 1 AS `departmentID`,
 1 AS `departmentName`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping routines for database 'sciencefacultybudget'
--
/*!50003 DROP PROCEDURE IF EXISTS `addBudgetRequest_Procudure` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addBudgetRequest_Procudure`(In bId varchar(20) ,In bname varchar(255) , In bdate date , In bchoose varchar(20) , In s varchar(100), In pdf varchar(50) , In pId varchar(10),in id int)
BEGIN
	insert into budgetrequest (id,budgetRequestID,chooseRequest,requestDate,requestName,status,fileName,Personnel_personnelID)
    values( id,bId , bChoose , bDate , bName , s , pdf , pId);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `addCommentfuel_Procudure` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addCommentfuel_Procudure`(In cid varchar(20) , In cd Date, In ct varchar(100) , In pid varchar(50) , In rid varchar(20))
BEGIN
    insert into commentrequestfuel (commentid,commentDate , commentText , Personnel_personnelID , requestfuel_id)
    values(cid , cd , ct , pid , rid);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `addCommentReg_Procudure` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addCommentReg_Procudure`(In cid varchar(20) , In cd Date, In ct varchar(50) , In pid varchar(50) , In rid varchar(20))
BEGIN
    insert into commentregistrationbudget (commentId,commentRegisDate,commentRegisText,Personnel_personnelID,RegistrationBudgetRequest_id)
    values(cid , cd , ct , pid , rid);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `addCommentrequestingper_Procudure` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addCommentrequestingper_Procudure`(In cid varchar(20) , In cd Date, In ct varchar(50), In pid varchar(10),In rid varchar(20))
BEGIN
	insert into commentrequestingpermission (commentid,commentRequestingPerDate,commentRequestingPerText,Personnel_personnelID,RequestingPermission_id)
    values(cid , cd , ct , pid , rid);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `addCommentTravel_Procudure` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addCommentTravel_Procudure`(In cid varchar(20) , In cd Date, In ct varchar(50) , In pid varchar(50) , In tid varchar(20))
BEGIN
    insert into CommentTravel (commentId,commentTravelDate,commentTravelText,Personnel_personnelID,TravelRequest_id)
    values(cid , cd , ct , pid , tid);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `addRegistrationBudget_Procedure` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addRegistrationBudget_Procedure`(In regId varchar(50) , In beforeDate date , In budgetText varchar(100) 
, In cost double  , In location varchar(100) , In regDate date , In eDate date  , In sDate date  , In requestBudget double , In Textto varchar(50) , In titleName varchar(255) , In pdf varchar(50) , In budgetId int,in bid int)
BEGIN 
	insert into registrationbudgetrequest (registrationID,beforeDate,budgetText,cost,location,regisDate,regisEndDate,regisStartDate,requestBudget,textTo,titleName,fileName,BudgetRequest_budgetRequestID,id)
    values(regId , beforeDate , budgetText  , cost , location , regDate ,  eDate, sDate , requestBudget , Textto , titleName , pdf , budgetId,bid);
	update BudgetRequest set status = 'ทำเอกสารขออนุมัติค่าลงทะเบียนแล้ว' where id = budgetId  COLLATE utf8_bin;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `addRequestFuel_Procedure` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addRequestFuel_Procedure`(In perId varchar(50) , In perName varchar(255) , In perDate date , In perText longtext , In price Double , In budgetID int,in bid int, In dis Double, In f varchar(150))
BEGIN
	insert into requestfuel (id,requestFuelID,requestFuelName,requestFuelDate,requestFuelText,petrolprice,BudgetRequest_id,distance,filedistans)
    values(bid,perId , perName , perDate , perText , price , budgetID,dis,f);
    update BudgetRequest set status = 'ทำเอกสารขอเบิกค่าน้ำมันแล้ว' where id = budgetID  ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `addRequestingPermisison_Procedure` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addRequestingPermisison_Procedure`(In perId varchar(50) , In perName varchar(255) , In perDate date , In perText longtext , In pdf varchar(50) , In budgetID int,in bid int)
BEGIN
	insert into requestingpermission (id,requestPerID,requestPerName,requestingPerDate,requestingPerText,fileName,BudgetRequest_id)
    values(bid,perId , perName , perDate , perText , pdf , budgetID);
    update BudgetRequest set status = 'ทำเอกสารขออนุญาตแล้ว' where id = budgetID  ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `addTravelInformation_Procudure` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addTravelInformation_Procudure`(tid int,pid varchar(150),ev_n varchar(150),organ varchar(150) ,ev_st date ,ev_en date,ev_loc varchar(150),partici_ty varchar(150),isbg int,reg_fee double,reg_fee_use double,tv_st date,tv_en date,tv_wi varchar(150),tv_by varchar(150),all_fee double,acc_fee double,veh_fee double,oth_fee double,bg_sour varchar(150),reason varchar(150))
BEGIN
	INSERT INTO travelinformation (TI_id,personelID,event_name,organization,event_startdate,event_enddate,event_location,participation_type,isbudget,registration_fee,registration_fee_used,travel_startdate,travel_enddate,travel_with,travel_by,allowance,accommodation_fee,vehticle_fee,other_fee,budget_source,reason) VALUES 
    (tid ,pid ,ev_n ,organ ,ev_st ,ev_en,ev_loc,partici_ty ,isbg ,reg_fee ,reg_fee_use ,tv_st ,tv_en ,tv_wi ,tv_by ,all_fee ,acc_fee ,veh_fee ,oth_fee ,bg_sour,reason);

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `addTravelReport_Procedure` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addTravelReport_Procedure`(In rID varchar(50) ,In rDate date , In rText longtext , In budgetId varchar(50) , In pdf varchar(50) , In r Double,in bid int)
BEGIN
	insert into travelreport (travelReportID,travelReportDate,travelReportText,fileName,BudgetRequest_id,id)
    values(rID , rDate , rText , pdf , budgetId,bid);
	update BudgetRequest set status = 'ทำเอกสารรายงานการเดินทางแล้ว' where id = budgetId  COLLATE utf8_bin;
    update TravelRequest set realBudget = r where BudgetRequest_id = budgetId  COLLATE utf8_bin;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `addTravelRequest_Procedure` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addTravelRequest_Procedure`(In tId varchar(50) , In allowance double , In eDate date , In tGrade varchar(10)
, In tLevel varchar(10) , In tLocation varchar(100)  , In otherBudget double  , In payType varchar(30) , In rentalRoom double  , In sDate date  
, In titleName varchar(255) , In totalBudget double , In tTotalDate varchar(10), In tDate date  , In travelVehicle varchar(100)  
, In vehicleBudget double , In tWith varchar(50) ,  In realBudget double , In pdf varchar(50) , In budgetId int,in bid int,in pid varchar(10))
BEGIN
	insert into travelrequest  ( travelID,allowance,endDate,grade,level,location,otherBudget,payType,rentalRoom,startDate,titleName,totalBudget,totalDate,
		travelDate,travelVehicle,vehicleBudget,withName,realBudget,fileName,BudgetRequest_id,id)
    values(tId , allowance , eDate , tGrade , tLevel , tLocation , otherBudget , payType , rentalRoom , sDate , titleName , totalBudget , tTotalDate , tDate , travelVehicle , vehicleBudget , tWith , realBudget , pdf , budgetId,bid);
	update BudgetRequest set status = 'ทำเอกสารขออนุมัติการเดินทางแล้ว' where id = budgetId  ;
    update personnel set salary=tGrade where personnelID=pid;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `cancelBudgetRequest_Procedure` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `cancelBudgetRequest_Procedure`(In st varchar(50) ,In bid varchar(50))
BEGIN
	update budgetrequest
    set status = st
    where id = bId COLLATE utf8_bin;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertPersonnel` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertPersonnel`(id VARCHAR(10),tt VARCHAR(45),fn VARCHAR(45)
,fl VARCHAR(45),pt int,p VARCHAR(50),ptn VARCHAR(50), f VARCHAR(50))
BEGIN
INSERT INTO personnel
(personnelID,budget,faculty,firstname,lastname,personnelType,personnelTypeName,position,salary,title,Department_departmentID)
VALUES
(id,3000.00,f,fn,fl,pt,ptn,p,null,tt,null);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updateBudgetRequest_Procedure` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `updateBudgetRequest_Procedure`(In bId varchar(50) ,In bname varchar(255) , In bdate date , In bchoose varchar(20) , In pId varchar(10),in ids int)
BEGIN
	update budgetrequest
    set chooseRequest = bchoose , requestDate = bdate , requestName = bname , Personnel_personnelID = pId,budgetRequestID = bId 
    where id = ids COLLATE utf8_bin;
    

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updateCommentRegis_Procudure` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `updateCommentRegis_Procudure`(In cid varchar(20)  , In cd Date , In ct varchar(50) , In pid varchar(10),In tid varchar(20))
BEGIN
	update CommentRegistrationBudget
    set commentRegisDate = cd , commentRegisText = ct , Personnel_personnelID = pid
    where commentid = cid COLLATE utf8_bin;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updateCommentTravel_Procudure` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `updateCommentTravel_Procudure`(In cid varchar(20)  , In cd Date , In ct varchar(50) , In pid varchar(10),In tid varchar(20))
BEGIN
	update CommentTravel
    set commentTravelDate = cd , commentTravelText = ct , Personnel_personnelID = pid
    where commentid = cid COLLATE utf8_bin;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updateRegistrationBudget_Procedure` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `updateRegistrationBudget_Procedure`(In regId varchar(50) , In beforeDate date , In budgetText varchar(100) 
, In cost double  , In location varchar(100) , In regDate date , In eDate date  , In sDate date  , In requestBudget double 
, In Textto varchar(50) , In titleName varchar(255)  , In budgetId varchar(50),in bid int)
BEGIN
	update registrationbudgetrequest
    set beforeDate = beforeDate , budgetText = budgetText  , cost=cost , location=location , regisDate=regDate ,  regisEndDate=eDate, regisStartDate=sDate , requestBudget=requestBudget , textTo=Textto , titleName=titleName , BudgetRequest_budgetRequestID=budgetId,registrationID = regId
    where id=bid COLLATE utf8_bin;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updateRequestFuel_Procedure` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `updateRequestFuel_Procedure`(In perId varchar(50) , In perName varchar(255) , In perDate date , In perText longtext , In price Double , In budgetID int, In dis Double)
BEGIN
	update requestfuel
    set requestFuelName = perName, requestFuelDate = perDate , requestFuelText = perText,requestFuelID=perId,petrolprice=price,distance=dis
    where BudgetRequest_id = budgetID;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updateRequestingPermission_Procedure` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `updateRequestingPermission_Procedure`(In perId varchar(50) , In perName varchar(255) , In perDate date , In perText longtext , In budgetID varchar(50),in ids int)
BEGIN
	update RequestingPermission
    set requestPerName = perName, requestingPerDate = perDate , requestingPerText = perText,requestPerID = perId
    where  id=ids;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updateTravelInformation_Procudure` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `updateTravelInformation_Procudure`(tid int,pid varchar(150),ev_n varchar(150),organ varchar(150) ,ev_st date ,ev_en date,ev_loc varchar(150),partici_ty varchar(150),isbg int,reg_fee double,reg_fee_use double,tv_st date,tv_en date,tv_wi varchar(150),tv_by varchar(150),all_fee double,acc_fee double,veh_fee double,oth_fee double,bg_sour varchar(150),reason varchar(150))
BEGIN
update travelinformation
    set event_name=ev_n,organization=organ,event_startdate=ev_st,event_enddate=ev_en,event_location=ev_loc,participation_type=partici_ty,isbudget=isbg,registration_fee=reg_fee,registration_fee_used=reg_fee_use,travel_startdate=tv_st,travel_enddate=tv_en,travel_with=tv_wi,travel_by=tv_by,allowance=all_fee,accommodation_fee=acc_fee,vehticle_fee=veh_fee,other_fee=oth_fee,budget_source=bg_sour,reason=reason
    where TI_id = tid COLLATE utf8_bin;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updateTravelReport_Procedure` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `updateTravelReport_Procedure`(In rID varchar(50) , rDate date , In rText longtext , In budgetId varchar(50))
BEGIN
	update travelreport
    set travelReportDate = rDate , travelReportText=rText , BudgetRequest_budgetRequestID=budgetId
    where travelReportID = rID COLLATE utf8_bin;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updateTravelRequest_Procedure` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `updateTravelRequest_Procedure`(In tId varchar(50) , In allowance double , In eDate date , In tGrade varchar(10)
, In tLevel varchar(10) , In tLocation varchar(100)  , In otherBudget double  , In payType varchar(30) , In rentalRoom double  , In sDate date  
, In titleName varchar(255) , In totalBudget double , In tTotalDate varchar(10), In tDate date  , In travelVehicle varchar(100)  
, In vehicleBudget double , In tWith varchar(50) ,In budgetId varchar(50),in bid int)
BEGIN
	update travelrequest
    set allowance = allowance , endDate = eDate , grade = tGrade , level = tLevel , location = tLocation , otherBudget = otherBudget , payType = payType , rentalRoom = rentalRoom , startDate = sDate 
    , titleName = titleName , totalBudget = totalBudget , totalDate = tTotalDate , travelDate = tDate , travelVehicle = travelVehicle , vehicleBudget = vehicleBudget , withName = tWith ,travelID = tId
    where  id=bid COLLATE utf8_bin;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `update_budget` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `update_budget`(In pid varchar(10) , In bg double)
BEGIN
	update personnel
    set budget = bg
    where personnelID = pid COLLATE utf8_bin;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `uploadfile_Procedure` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `uploadfile_Procedure`(In filename varchar(50) , In brname varchar(50) , In bpname varchar(50) , In tname varchar(50) , In regname varchar(50) , In reportname varchar(50))
BEGIN
	insert into ListFile
    values(filename , brname , bpname , tname , regname , reportname);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `upload_BudgetRequest` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `upload_BudgetRequest`(in v_file varchar(255),in v_budgetRequest varchar(255))
BEGIN
	update BudgetRequest
    set fileName = v_file
    where id = v_budgetRequest COLLATE utf8_bin;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `upload_RegistrationBudget` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `upload_RegistrationBudget`(in v_name varchar(255), in reg_id varchar(225))
BEGIN
	update RegistrationBudgetRequest
    set fileName = v_name
    where id = reg_id COLLATE utf8_bin;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `upload_reqestingPermission` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `upload_reqestingPermission`(in v_file varchar(255), in r_id varchar(225))
BEGIN
	update RequestingPermission
    set fileName = v_file
    where id = r_id COLLATE utf8_bin;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `upload_requestfuel` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `upload_requestfuel`(in v_file varchar(255), in r_id varchar(225))
BEGIN
	update requestfuel
    set fileName = v_file
    where id = r_id COLLATE utf8_bin;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `upload_travelReport` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `upload_travelReport`(in v_name varchar(255), in report_id varchar(225))
BEGIN
	update TravelReport
    set fileName = v_name
    where id = report_id COLLATE utf8_bin;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `upload_travelRequest` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `upload_travelRequest`(in v_file varchar(255), in t_id varchar(225))
BEGIN
	update TravelRequest
    set fileName = v_file
    where id = t_id COLLATE utf8_bin;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `view_remainingbudget`
--

/*!50001 DROP VIEW IF EXISTS `view_remainingbudget`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_remainingbudget` AS select `b`.`budgetRequestID` AS `budgetRequestID`,`b`.`chooseRequest` AS `chooseRequest`,`b`.`requestDate` AS `requestDate`,`b`.`requestName` AS `requestName`,`b`.`Personnel_personnelID` AS `Personnel_personnelID`,`p`.`personnelID` AS `personnelID`,`p`.`budget` AS `budget`,`p`.`firstname` AS `firstname`,`p`.`lastname` AS `lastname`,`p`.`personnelType` AS `personnelType`,`p`.`position` AS `position`,`p`.`salary` AS `salary`,`p`.`title` AS `title`,`p`.`Department_departmentID` AS `Department_departmentID`,`d`.`departmentID` AS `departmentID`,`d`.`departmentName` AS `departmentName` from ((`budgetrequest` `b` join `personnel` `p` on((`b`.`Personnel_personnelID` = `p`.`personnelID`))) join `department` `d` on((`p`.`Department_departmentID` = `d`.`departmentID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-30 10:22:35
