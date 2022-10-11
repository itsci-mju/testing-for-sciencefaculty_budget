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
-- Table structure for table `personnel`
--

DROP TABLE IF EXISTS `personnel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personnel` (
  `personnelID` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `budget` double NOT NULL,
  `firstname` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `personnelType` int NOT NULL,
  `personnelTypeName` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `position` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `salary` double NOT NULL,
  `title` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `Department_departmentID` int NOT NULL,
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
INSERT INTO `personnel` VALUES ('092',3000,'สายัณห์','อุ่นนันกาศ',1,'ประเภทวิชาการ','พนักงานมหาวิทยาลัย',30000,'ผู้ช่วยศาสตราจารย์ ดร',1),('1\'',3000,'สมชาย','รักดี',1,'สายวิชาการ','บุคลากร',25000,'นาย',1),('2',3000,'ประภาพร','รุ่งเรือง',1,'สายสนับสนุน','บุคลากร',2,'นาง',2),('3',3000,'กานต์มณี','บุญเกิดผล',3,'สายวิชาการ','เจ้าหน้าที่การเงิน',3,'นาง',7),('4',1100,'วรพล','ไพศาลธนาโชต',4,'สายวิชาการ','เจ้าหน้าที่บริหารงานบุคคล',4,'อ.ดร.',5),('5',3000,'รุจิรา','สุขสมบัติ',1,'สายวิชาการ','บุคลากร',5,'นางสาว',8),('6',3000,'เทส','เทส',1,'สายสนับสนุน','บุคลากร',6,'นาย',5),('7',2500,'นพรัตน์','จันทร์ศรี',1,'สายวิชาการ','บุคลากร',25000,'นาย',4);
/*!40000 ALTER TABLE `personnel` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-11 10:32:40
