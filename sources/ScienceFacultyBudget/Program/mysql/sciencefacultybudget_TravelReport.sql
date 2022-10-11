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
-- Table structure for table `TravelReport`
--

DROP TABLE IF EXISTS `TravelReport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TravelReport` (
  `travelReportID` varchar(20) NOT NULL,
  `travelReportDate` date NOT NULL,
  `travelReportText` longtext NOT NULL,
  `fileName` varchar(50) NOT NULL,
  `BudgetRequest_budgetRequestID` varchar(20) NOT NULL,
  PRIMARY KEY (`travelReportID`),
  KEY `FKpgas5t99tatj8ix9kjl2bbgcq` (`BudgetRequest_budgetRequestID`),
  CONSTRAINT `FKpgas5t99tatj8ix9kjl2bbgcq` FOREIGN KEY (`BudgetRequest_budgetRequestID`) REFERENCES `BudgetRequest` (`budgetRequestID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TravelReport`
--

LOCK TABLES `TravelReport` WRITE;
/*!40000 ALTER TABLE `TravelReport` DISABLE KEYS */;
INSERT INTO `TravelReport` VALUES ('10','2021-12-16','<p style=\"text-align: justify; line-height: 1.5;\"><span style=\"font-size: 16pt;\">&nbsp; &nbsp; &nbsp; ตามใบขอออนุมัติเดินทางไปปฏิบัติงาน ที่ อว.69.4.8/010 ลงวันที่ 20 มิถุนายน 2562 อนุมัติให้ข้าพเจ้าพร้อมด้วยเจ้าหน้าที่จำนวน.....-.....คน เดินทางไปปฏิบัติงานเกี่ยวกับ เดินทางไปปฏิบัติงานเกี่ยวกับ การเข้าร่วม<span class=\"s1\">ประชุมวิชาการนานาชาติ </span>\"The <span class=\"s1\">๑๖</span>\" international Conference on Electrical Engineering/Electronics, Computer , Telecommunications and information Technology\" ECTI-CON 2019 (IEEE Conference Record) (ECTI-CON 2019) พร้อมนำเสนอผลงาน ระหว่างวันที่ 10 - 13&nbsp; กรกฎาคม 2562&nbsp; ณ&nbsp; โรงแรมวารี จอมเทียน บีช พัทยา จังหวัดชลบุรี&nbsp; นั้น</span></p>\n<p style=\"text-align: justify; line-height: 1.5;\"><span style=\"font-size: 16pt;\">&nbsp; &nbsp; &nbsp; &nbsp; บัดนี้ข้าพเจ้าพร้อมด้วยเจ้าหน้าที่จำนวน.....-..... คน ได้เดินทางไปปฏิบัติงาน ดังกล่าวข้างต้นแล้ว จึงใครขอเสนอผลการปฏิบัติงานดังต่อไปนี้</span></p>\n<p style=\"text-align: justify; line-height: 1.5;\"><span style=\"font-size: 16pt;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;1. ได้เข้าร่วมประชุมวิชาการระดับนานาชาติ ECTI-CON 2019 ระหว่างวันที่ 10 -13 กรกฎาคม 2562 ทำให้ได้รับทราบเกี่ยวกับความก้าวหน้าของงานวิจัยที่เกี่ยวข้อง และการนำมาทำวิจัยต่อไป</span></p>\n<p style=\"text-align: justify; line-height: 1.5;\"><span style=\"font-size: 16pt;\">&nbsp; &nbsp; &nbsp; 2. ได้เข้านำเสนอผลงานภาคบรรยาย เรื่อง Implementing Information Technology and Social Media for Promoting Tourism Pongyeang Subdistrict, Chiang Mai, Thailand (First author) และ อ้างอิงผลงานใน ECTI-CON 2019 Proceedings , 10 - 13 July 2019 , Pattaya Thailand , Page 54 - 57 เป็นที่เรียบร้อยแล้ว</span></p>','','ศธ.๐๕๒๓.๔.๘/๑๑๑'),('อว.๖๙.๕.๘/๕๕๙','2021-12-24','<p style=\"text-align: justify; line-height: 1.5;\"><span style=\"font-size: 16pt;\">&nbsp; &nbsp; &nbsp; ตามใบขอออนุมัติเดินทางไปปฏิบัติงาน ที่ อว.69.4.8/010 ลงวันที่ 20 มิถุนายน 2562 อนุมัติให้ข้าพเจ้าพร้อมด้วยเจ้าหน้าที่จำนวน.....-.....คน เดินทางไปปฏิบัติงานเกี่ยวกับ เดินทางไปปฏิบัติงานเกี่ยวกับ การเข้าร่วม<span class=\"s1\">ประชุมวิชาการนานาชาติ </span>\"The <span class=\"s1\">๑๖</span>\" international Conference on Electrical Engineering/Electronics, Computer , Telecommunications and information Technology\" ECTI-CON 2019 (IEEE Conference Record) (ECTI-CON 2019) พร้อมนำเสนอผลงาน ระหว่างวันที่ 10 - 13&nbsp; กรกฎาคม 2562&nbsp; ณ&nbsp; โรงแรมวารี จอมเทียน บีช พัทยา จังหวัดชลบุรี&nbsp; นั้น</span></p>\n<p style=\"text-align: justify; line-height: 1.5;\"><span style=\"font-size: 16pt;\">&nbsp; &nbsp; &nbsp; &nbsp; บัดนี้ข้าพเจ้าพร้อมด้วยเจ้าหน้าที่จำนวน.....-..... คน ได้เดินทางไปปฏิบัติงาน ดังกล่าวข้างต้นแล้ว จึงใครขอเสนอผลการปฏิบัติงานดังต่อไปนี้</span></p>\n<p style=\"text-align: justify; line-height: 1.5;\"><span style=\"font-size: 16pt;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;1. ได้เข้าร่วมประชุมวิชาการระดับนานาชาติ ECTI-CON 2019 ระหว่างวันที่ 10 -13 กรกฎาคม 2562 ทำให้ได้รับทราบเกี่ยวกับความก้าวหน้าของงานวิจัยที่เกี่ยวข้อง และการนำมาทำวิจัยต่อไป</span></p>\n<p style=\"text-align: justify; line-height: 1.5;\"><span style=\"font-size: 16pt;\">&nbsp; &nbsp; &nbsp; 2. ได้เข้านำเสนอผลงานภาคบรรยาย เรื่อง Implementing Information Technology and Social Media for Promoting Tourism Pongyeang Subdistrict, Chiang Mai, Thailand (First author) และ อ้างอิงผลงานใน ECTI-CON 2019 Proceedings , 10 - 13 July 2019 , Pattaya Thailand , Page 54 - 57 เป็นที่เรียบร้อยแล้ว</span></p>','','ศธ.๐๕๒๓.๔.๘/๕๕๕');
/*!40000 ALTER TABLE `TravelReport` ENABLE KEYS */;
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
