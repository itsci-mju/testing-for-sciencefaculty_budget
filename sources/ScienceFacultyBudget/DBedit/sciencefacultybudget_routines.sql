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

-- Dump completed on 2021-09-11 10:32:41
