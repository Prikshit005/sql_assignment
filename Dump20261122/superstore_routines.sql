CREATE DATABASE  IF NOT EXISTS `superstore` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `superstore`;
-- MySQL dump 10.13  Distrib 8.0.46, for Win64 (x86_64)
--
-- Host: localhost    Database: superstore
-- ------------------------------------------------------
-- Server version	8.0.46

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
-- Temporary view structure for view `negative_profit_transactions`
--

DROP TABLE IF EXISTS `negative_profit_transactions`;
/*!50001 DROP VIEW IF EXISTS `negative_profit_transactions`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `negative_profit_transactions` AS SELECT 
 1 AS `Row ID`,
 1 AS `Order ID`,
 1 AS `Order Date`,
 1 AS `Customer Name`,
 1 AS `Region`,
 1 AS `State`,
 1 AS `Category`,
 1 AS `Sub-Category`,
 1 AS `Product Name`,
 1 AS `Sales`,
 1 AS `Discount`,
 1 AS `Profit`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `regional_sales_summary`
--

DROP TABLE IF EXISTS `regional_sales_summary`;
/*!50001 DROP VIEW IF EXISTS `regional_sales_summary`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `regional_sales_summary` AS SELECT 
 1 AS `Region`,
 1 AS `total_sales`,
 1 AS `total_profit`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `negative_profit_transactions`
--

/*!50001 DROP VIEW IF EXISTS `negative_profit_transactions`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `negative_profit_transactions` AS select `superstoredatasets`.`Row ID` AS `Row ID`,`superstoredatasets`.`Order ID` AS `Order ID`,`superstoredatasets`.`Order Date` AS `Order Date`,`superstoredatasets`.`Customer Name` AS `Customer Name`,`superstoredatasets`.`Region` AS `Region`,`superstoredatasets`.`State` AS `State`,`superstoredatasets`.`Category` AS `Category`,`superstoredatasets`.`Sub-Category` AS `Sub-Category`,`superstoredatasets`.`Product Name` AS `Product Name`,`superstoredatasets`.`Sales` AS `Sales`,`superstoredatasets`.`Discount` AS `Discount`,`superstoredatasets`.`Profit` AS `Profit` from `superstoredatasets` where (`superstoredatasets`.`Profit` < 0) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `regional_sales_summary`
--

/*!50001 DROP VIEW IF EXISTS `regional_sales_summary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `regional_sales_summary` AS select `superstoredatasets`.`Region` AS `Region`,round(sum(`superstoredatasets`.`Sales`),2) AS `total_sales`,round(sum(`superstoredatasets`.`Profit`),2) AS `total_profit` from `superstoredatasets` group by `superstoredatasets`.`Region` */;
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

-- Dump completed on 2026-11-22  4:20:44
