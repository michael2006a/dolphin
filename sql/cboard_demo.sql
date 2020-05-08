-- MySQL dump 10.13  Distrib 5.7.18, for macos10.12 (x86_64)
--
-- Host: localhost    Database: cboard_demo4
-- ------------------------------------------------------
-- Server version	5.7.18

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+08:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `dashboard_board`
--
create database cboard_demo2 CHARACTER SET utf8;
use cboard_demo2;

SET SQL_MODE='ALLOW_INVALID_DATES';
SET SQL_SAFE_UPDATES = 0;

DROP TABLE IF EXISTS `dashboard_board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dashboard_board` (
  `board_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(50) NOT NULL,
  `category_id` bigint(20) DEFAULT NULL,
  `board_name` varchar(100) NOT NULL,
  `layout_json` text,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`board_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_board`
--

LOCK TABLES `dashboard_board` WRITE;
/*!40000 ALTER TABLE `dashboard_board` DISABLE KEYS */;
INSERT INTO `dashboard_board` VALUES (1,'1',1,'FoodMart','{\"rows\":[{\"type\":\"param\",\"params\":[{\"paramType\":\"selector\",\"selects\":[\"Canada\",\"Mexico\",\"USA\"],\"col\":[{\"name\":\"FoodMart_Sample\",\"column\":\"SALES_COUNTRY\",\"datasetId\":2}],\"values\":[],\"name\":\"Country\",\"type\":\"=\"},{\"paramType\":\"selector\",\"selects\":[\"F\",\"M\"],\"col\":[{\"name\":\"FoodMart_Sample\",\"column\":\"gender\",\"datasetId\":2}],\"values\":[],\"name\":\"Gender\",\"type\":\"=\"}]},{\"type\":\"widget\",\"widgets\":[{\"widgetId\":10,\"name\":\"KPI1\",\"width\":\"3\"},{\"widgetId\":12,\"name\":\"KPI3\",\"width\":\"3\"},{\"widgetId\":11,\"name\":\"KPI2\",\"width\":\"3\"},{\"widgetId\":13,\"name\":\"KPI4\",\"width\":\"3\"}]},{\"type\":\"widget\",\"widgets\":[{\"widgetId\":14,\"name\":\"LineBar_Double_Aixes\",\"width\":12}]},{\"type\":\"widget\",\"widgets\":[{\"widgetId\":6,\"name\":\"LineBar_Percentage\",\"width\":\"6\"},{\"widgetId\":4,\"name\":\"LineBar_Top10_Horizontal\",\"width\":\"6\"}]},{\"type\":\"widget\",\"widgets\":[{\"widgetId\":5,\"name\":\"LineBar_Top10_Vertical\",\"width\":\"6\"},{\"widgetId\":7,\"name\":\"Radar\",\"width\":\"6\"}]},{\"type\":\"widget\",\"widgets\":[{\"widgetId\":1,\"name\":\"CrossTable\",\"width\":\"12\"}],\"height\":\"450\"},{\"type\":\"widget\",\"widgets\":[{\"widgetId\":8,\"name\":\"Map\",\"width\":\"6\"},{\"widgetId\":3,\"name\":\"Sanky\",\"width\":\"6\"}]},{\"type\":\"widget\",\"widgets\":[{\"widgetId\":2,\"name\":\"Funnel\",\"width\":\"6\"},{\"widgetId\":9,\"name\":\"Bubble\",\"width\":\"6\"}]},{\"type\":\"widget\",\"widgets\":[{\"widgetId\":15,\"name\":\"PieChart\",\"width\":\"8\"}]}]}','2019-09-22 09:33:13','2019-09-22 09:34:37'),(2,'1',1,'FoodMart_Timeline','{\"type\":\"timeline\",\"rows\":[{\"params\":[],\"type\":\"param\",\"height\":\"\"},{\"nodeName\":\"KPI\",\"node\":\"parent\",\"type\":\"widget\",\"widgets\":[{\"widgetId\":10,\"name\":\"KPI1\",\"width\":\"3\"},{\"widgetId\":11,\"name\":\"KPI2\",\"width\":\"3\"},{\"widgetId\":12,\"name\":\"KPI3\",\"width\":\"3\"},{\"widgetId\":13,\"name\":\"KPI4\",\"width\":\"3\"}],\"title\":\"Main Title\"},{\"node\":\"leaf\",\"type\":\"widget\",\"widgets\":[{\"widgetId\":9,\"name\":\"Bubble\",\"width\":\"6\"},{\"widgetId\":14,\"name\":\"LineBar_Double_Aixes\",\"width\":\"6\"}],\"title\":\"SubTitle\"}]}','2019-09-22 09:33:13','2019-09-22 09:35:14');
/*!40000 ALTER TABLE `dashboard_board` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ALLOW_INVALID_DATES' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER insert_board_update_time_trigger
BEFORE INSERT ON dashboard_board FOR EACH ROW SET new.update_time = now() */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ALLOW_INVALID_DATES' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER update_board_update_time_trigger
BEFORE UPDATE ON dashboard_board FOR EACH ROW SET new.update_time = now() */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `dashboard_board_param`
--

DROP TABLE IF EXISTS `dashboard_board_param`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dashboard_board_param` (
  `board_param_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(50) NOT NULL,
  `board_id` bigint(20) NOT NULL,
  `config` text,
  PRIMARY KEY (`board_param_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_board_param`
--

LOCK TABLES `dashboard_board_param` WRITE;
/*!40000 ALTER TABLE `dashboard_board_param` DISABLE KEYS */;
INSERT INTO `dashboard_board_param` VALUES (2,'1',1,'[{\"name\":\"Male\",\"params\":{\"Country\":{\"type\":\"=\",\"values\":[]},\"Gender\":{\"type\":\"=\",\"values\":[\"M\"]}}},{\"name\":\"USA-F\",\"params\":{\"Country\":{\"type\":\"=\",\"values\":[\"USA\"]},\"Gender\":{\"type\":\"=\",\"values\":[\"F\"]}}}]');
/*!40000 ALTER TABLE `dashboard_board_param` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_category`
--

DROP TABLE IF EXISTS `dashboard_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dashboard_category` (
  `category_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(100) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_category`
--

LOCK TABLES `dashboard_category` WRITE;
/*!40000 ALTER TABLE `dashboard_category` DISABLE KEYS */;
INSERT INTO `dashboard_category` VALUES (1,'Demo','1');
/*!40000 ALTER TABLE `dashboard_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_dataset`
--

DROP TABLE IF EXISTS `dashboard_dataset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dashboard_dataset` (
  `dataset_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(100) NOT NULL,
  `category_name` varchar(100) DEFAULT NULL,
  `dataset_name` varchar(100) DEFAULT NULL,
  `data_json` text,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`dataset_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_dataset`
--

LOCK TABLES `dashboard_dataset` WRITE;
/*!40000 ALTER TABLE `dashboard_dataset` DISABLE KEYS */;
INSERT INTO `dashboard_dataset` VALUES (2,'1','Default Category','FoodMart_Sample','{\"schema\":{\"measure\":[{\"column\":\"store_cost\",\"id\":\"da02ba11-30d0-4b03-9b12-5b19edc5d7c6\",\"type\":\"column\"},{\"column\":\"store_sales\",\"id\":\"12b42233-b0e7-418f-8f68-d36d227d41d1\",\"type\":\"column\"},{\"column\":\"unit_sales\",\"id\":\"1f429f76-cbf9-4391-80a2-4d4d3b449a66\",\"type\":\"column\"}],\"dimension\":[{\"columns\":[{\"column\":\"SALES_COUNTRY\",\"alias\":\"country\",\"id\":\"4abf2747-3024-44bc-88ef-3cc2643d2b09\",\"type\":\"column\"},{\"column\":\"SALES_REGION\",\"alias\":\"region\",\"id\":\"9f85f220-3728-468c-8e0e-a5e88a3a9b23\",\"type\":\"column\"},{\"column\":\"SALES_DISTRICT\",\"alias\":\"district\",\"id\":\"b0c8d29b-9f53-41d4-95b7-132f1e4c876b\",\"type\":\"column\"}],\"alias\":\"Geo\",\"id\":\"618953e0-d71c-41a4-8dee-a6748fe92bbd\",\"type\":\"level\"},{\"columns\":[{\"column\":\"the_year\",\"alias\":\"year\",\"id\":\"a8d4b079-5074-4ddc-9379-074dadc76c90\",\"type\":\"column\"},{\"column\":\"month_of_year\",\"alias\":\"month\",\"id\":\"f3e89458-0931-4820-ba45-d2c02b2e6bd7\",\"type\":\"column\"},{\"column\":\"day_of_month\",\"alias\":\"day\",\"id\":\"7cb06baf-c95d-4da3-a47d-74c70f068fc9\",\"type\":\"column\"},{\"column\":\"the_date\",\"id\":\"ba7bcba4-59b7-452e-b3b4-1329a65b5158\",\"type\":\"column\"}],\"alias\":\"Date\",\"id\":\"6a82cfd1-97a0-4118-b000-6f69c227959d\",\"type\":\"level\"},{\"column\":\"gender\",\"id\":\"6126fe19-f123-42d6-be3e-ce0bcac9b44d\",\"type\":\"column\"}]},\"datasource\":1,\"query\":{\"sql\":\"SELECT    \\r\\n       b.the_year + 5 AS the_year, b.month_of_year, b.day_of_month,\\r\\n       date_add(b.the_date, interval 5 year) AS the_date,\\r\\n       r.SALES_DISTRICT, r.SALES_REGION, r.SALES_COUNTRY,\\r\\n       d.yearly_income, d.total_children, d.member_card, d.num_cars_owned, d.gender,\\r\\n       a.store_sales, a.store_cost, a.unit_sales\\r\\n  FROM foodmart2.sales_fact_sample a\\r\\n  JOIN foodmart2.time_by_day b ON a.time_id = b.time_id\\r\\n  JOIN foodmart2.store c ON a.store_id = c.store_id\\r\\n  JOIN foodmart2.region r ON c.REGION_ID = r.REGION_ID\\r\\n  JOIN foodmart2.customer d ON a.CUSTOMER_ID = d.CUSTOMER_ID\\r\\n WHERE SALES_COUNTRY IS NOT NULL\"},\"filters\":[{\"filters\":[{\"col\":\"the_date\",\"values\":[\"{now(\'M\', -2, \'yyyy-MM-dd\')}\"],\"type\":\">\"}],\"id\":\"405f1bd3-758b-4025-b6c1-e3807a3ab000\",\"group\":\"last6months\"}],\"expressions\":[{\"alias\":\"UnitSales\",\"id\":\"1810a1d1-0fc3-455f-a9bc-43aaaac26eb9\",\"type\":\"exp\",\"exp\":\"sum(store_sales)/sum(unit_sales)\"}]}','2019-09-22 09:29:47','2019-09-22 09:29:47'),(7,'1','Default Category','Map_Sample','{\"schema\":{\"measure\":[{\"column\":\"cnt\",\"id\":\"f35c040b-4410-429a-ba69-260af846b52f\",\"type\":\"column\"}],\"dimension\":[{\"columns\":[{\"column\":\"province\",\"id\":\"983188c3-ade1-48ee-8d33-53239ae271bf\",\"type\":\"column\"},{\"column\":\"city\",\"id\":\"0526c056-c57c-486f-aa00-525f74d93c3e\",\"type\":\"column\"},{\"column\":\"district\",\"id\":\"f25bf8d7-4789-4252-98b0-b3a5679f6548\",\"type\":\"column\"}],\"alias\":\"GEO\",\"id\":\"a89157b2-0bfa-4221-90c3-09cd44a5be39\",\"type\":\"level\"},{\"column\":\"wind_level\",\"id\":\"81955bba-5745-42dc-8e7a-d0c6db31c858\",\"type\":\"column\"},{\"column\":\"wind_direct\",\"id\":\"95cfeadc-1562-4577-a638-452d778e2f20\",\"type\":\"column\"}]},\"datasource\":1,\"query\":{\"sql\":\"SELECT * FROM foodmart2.map_data_sample;\"},\"filters\":[],\"expressions\":[{\"alias\":\"cc\",\"id\":\"d26880aa-ea42-454b-97c0-511f34791889\",\"type\":\"exp\",\"exp\":\"count(city)\"}]}','2019-09-22 09:29:47','2019-09-22 09:29:47');
/*!40000 ALTER TABLE `dashboard_dataset` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ALLOW_INVALID_DATES' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER insert_dataset_update_time_trigger
BEFORE INSERT ON dashboard_dataset FOR EACH ROW SET new.update_time = now() */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ALLOW_INVALID_DATES' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER update_dataset_update_time_trigger
BEFORE UPDATE ON dashboard_dataset FOR EACH ROW SET new.update_time = now() */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `dashboard_datasource`
--

DROP TABLE IF EXISTS `dashboard_datasource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dashboard_datasource` (
  `datasource_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(50) NOT NULL,
  `source_name` varchar(100) NOT NULL,
  `source_type` varchar(100) NOT NULL,
  `config` text,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`datasource_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_datasource`
--

LOCK TABLES `dashboard_datasource` WRITE;
/*!40000 ALTER TABLE `dashboard_datasource` DISABLE KEYS */;
INSERT INTO `dashboard_datasource` VALUES (1,'1','FoodMart_AD','jdbc','{\"aggregateProvider\":true,\"password\":\"111111\",\"driver\":\"com.mysql.jdbc.Driver\",\"jdbcurl\":\"jdbc:mysql://localhost:3306/foodmart\",\"username\":\"root\"}','2019-09-22 09:33:12','2019-09-22 09:34:07');
/*!40000 ALTER TABLE `dashboard_datasource` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ALLOW_INVALID_DATES' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER insert_datasource_update_time_trigger
BEFORE INSERT ON dashboard_datasource FOR EACH ROW SET new.update_time = now() */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ALLOW_INVALID_DATES' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER update_datasource_update_time_trigger
BEFORE UPDATE ON dashboard_datasource FOR EACH ROW SET new.update_time = now() */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `dashboard_homepage`
--

DROP TABLE IF EXISTS `dashboard_homepage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dashboard_homepage` (
  `board_id` bigint(20) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  PRIMARY KEY (`board_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_homepage`
--

LOCK TABLES `dashboard_homepage` WRITE;
/*!40000 ALTER TABLE `dashboard_homepage` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_homepage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_job`
--

DROP TABLE IF EXISTS `dashboard_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dashboard_job` (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `job_name` varchar(200) DEFAULT NULL,
  `cron_exp` varchar(200) DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `job_type` varchar(200) DEFAULT NULL,
  `job_config` text,
  `user_id` varchar(100) DEFAULT NULL,
  `last_exec_time` timestamp NULL DEFAULT NULL,
  `job_status` bigint(20) DEFAULT NULL,
  `exec_log` text,
  PRIMARY KEY (`job_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_job`
--

LOCK TABLES `dashboard_job` WRITE;
/*!40000 ALTER TABLE `dashboard_job` DISABLE KEYS */;
INSERT INTO `dashboard_job` VALUES (1,'Foodmart Daily Report','0 0 9 * * ?','2017-04-30 16:00:00','2017-05-25 16:00:00','mail','{\"subject\":\"Foodmart Report\",\"boards\":[{\"id\":1,\"type\":\"xls,img\"}],\"to\":\"cc@gmail.com\"}','1',NULL,NULL,NULL);
/*!40000 ALTER TABLE `dashboard_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_role`
--

DROP TABLE IF EXISTS `dashboard_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dashboard_role` (
  `role_id` varchar(100) NOT NULL,
  `role_name` varchar(100) DEFAULT NULL,
  `user_id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_role`
--

LOCK TABLES `dashboard_role` WRITE;
/*!40000 ALTER TABLE `dashboard_role` DISABLE KEYS */;
INSERT INTO `dashboard_role` VALUES ('1f080a89-f646-428c-a0a3-61f3abb644fc','GroupB','066acdd6-0ac7-431e-bc0c-073cf0fb518a'),('51fd91b0-9439-4da2-899e-731c6cc07cec','0-DataSourceAdmin','1'),('86578e8e-133b-46c0-a939-daf907245ac7','0-GroupManager','1'),('b738c543-dd94-411a-8a94-7705e7bc3b39','0-BoardAnalyzer','1'),('c0328a02-01eb-4eec-8902-20f63f359647','GroupA','2d0a60bd-d425-4cf3-8ffe-14ac927a8266');
/*!40000 ALTER TABLE `dashboard_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_role_res`
--

DROP TABLE IF EXISTS `dashboard_role_res`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dashboard_role_res` (
  `role_res_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` varchar(100) DEFAULT NULL,
  `res_type` varchar(100) DEFAULT NULL,
  `res_id` bigint(20) DEFAULT NULL,
  `permission` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`role_res_id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_role_res`
--

LOCK TABLES `dashboard_role_res` WRITE;
/*!40000 ALTER TABLE `dashboard_role_res` DISABLE KEYS */;
INSERT INTO `dashboard_role_res` VALUES (1,'b738c543-dd94-411a-8a94-7705e7bc3b39','menu',1,'00'),(2,'b738c543-dd94-411a-8a94-7705e7bc3b39','menu',3,'00'),(3,'b738c543-dd94-411a-8a94-7705e7bc3b39','menu',4,'00'),(4,'b738c543-dd94-411a-8a94-7705e7bc3b39','menu',5,'00'),(5,'b738c543-dd94-411a-8a94-7705e7bc3b39','menu',9,'00'),(6,'b738c543-dd94-411a-8a94-7705e7bc3b39','menu',10,'00'),(7,'51fd91b0-9439-4da2-899e-731c6cc07cec','menu',1,'00'),(8,'51fd91b0-9439-4da2-899e-731c6cc07cec','menu',2,'00'),(9,'86578e8e-133b-46c0-a939-daf907245ac7','menu',7,'00'),(10,'86578e8e-133b-46c0-a939-daf907245ac7','menu',8,'00'),(52,'c0328a02-01eb-4eec-8902-20f63f359647','board',1,'11'),(53,'c0328a02-01eb-4eec-8902-20f63f359647','board',2,'11'),(54,'c0328a02-01eb-4eec-8902-20f63f359647','dataset',2,'11'),(55,'c0328a02-01eb-4eec-8902-20f63f359647','dataset',7,'11'),(56,'c0328a02-01eb-4eec-8902-20f63f359647','widget',9,'11'),(57,'c0328a02-01eb-4eec-8902-20f63f359647','widget',1,'11'),(58,'c0328a02-01eb-4eec-8902-20f63f359647','widget',2,'11'),(59,'c0328a02-01eb-4eec-8902-20f63f359647','widget',10,'11'),(60,'c0328a02-01eb-4eec-8902-20f63f359647','widget',11,'11'),(61,'c0328a02-01eb-4eec-8902-20f63f359647','widget',12,'11'),(62,'c0328a02-01eb-4eec-8902-20f63f359647','widget',13,'11'),(63,'c0328a02-01eb-4eec-8902-20f63f359647','widget',14,'11'),(64,'c0328a02-01eb-4eec-8902-20f63f359647','widget',6,'11'),(65,'c0328a02-01eb-4eec-8902-20f63f359647','widget',5,'11'),(66,'c0328a02-01eb-4eec-8902-20f63f359647','widget',4,'11'),(67,'c0328a02-01eb-4eec-8902-20f63f359647','widget',8,'11'),(68,'c0328a02-01eb-4eec-8902-20f63f359647','widget',15,'11'),(69,'c0328a02-01eb-4eec-8902-20f63f359647','widget',7,'11'),(70,'c0328a02-01eb-4eec-8902-20f63f359647','widget',3,'11'),(71,'c0328a02-01eb-4eec-8902-20f63f359647','job',1,'11');
/*!40000 ALTER TABLE `dashboard_role_res` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_user`
--

DROP TABLE IF EXISTS `dashboard_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dashboard_user` (
  `user_id` varchar(50) NOT NULL,
  `login_name` varchar(100) DEFAULT NULL,
  `user_name` varchar(100) DEFAULT NULL,
  `user_password` varchar(100) DEFAULT NULL,
  `user_status` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_user`
--

LOCK TABLES `dashboard_user` WRITE;
/*!40000 ALTER TABLE `dashboard_user` DISABLE KEYS */;
INSERT INTO `dashboard_user` VALUES ('066acdd6-0ac7-431e-bc0c-073cf0fb518a','user2','User2','7e58d63b60197ceb55a1c487989a3720',NULL),('1','admin','Administrator','ff9830c42660c1dd1942844f8069b74a',NULL),('2d0a60bd-d425-4cf3-8ffe-14ac927a8266','user','ccc','ee11cbb19052e40b07aac0ca060c23ee',NULL);
/*!40000 ALTER TABLE `dashboard_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_user_role`
--

DROP TABLE IF EXISTS `dashboard_user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dashboard_user_role` (
  `user_role_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(100) DEFAULT NULL,
  `role_id` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`user_role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_user_role`
--

LOCK TABLES `dashboard_user_role` WRITE;
/*!40000 ALTER TABLE `dashboard_user_role` DISABLE KEYS */;
INSERT INTO `dashboard_user_role` VALUES (1,'2d0a60bd-d425-4cf3-8ffe-14ac927a8266','c0328a02-01eb-4eec-8902-20f63f359647');
/*!40000 ALTER TABLE `dashboard_user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widget`
--

DROP TABLE IF EXISTS `dashboard_widget`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dashboard_widget` (
  `widget_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(100) NOT NULL,
  `category_name` varchar(100) DEFAULT NULL,
  `widget_name` varchar(100) DEFAULT NULL,
  `data_json` text,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`widget_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widget`
--

LOCK TABLES `dashboard_widget` WRITE;
/*!40000 ALTER TABLE `dashboard_widget` DISABLE KEYS */;
INSERT INTO `dashboard_widget` VALUES (1,'1','Demo','CrossTable','{\"datasetId\":2,\"config\":{\"chart_type\":\"table\",\"keys\":[{\"col\":\"gender\",\"values\":[],\"sort\":\"asc\",\"id\":\"6126fe19-f123-42d6-be3e-ce0bcac9b44d\",\"type\":\"eq\"},{\"col\":\"the_year\",\"level\":\"Date\",\"values\":[],\"alias\":\"year\",\"sort\":\"asc\",\"id\":\"a8d4b079-5074-4ddc-9379-074dadc76c90\",\"type\":\"eq\"},{\"col\":\"month_of_year\",\"level\":\"Date\",\"values\":[],\"alias\":\"month\",\"sort\":\"asc\",\"id\":\"f3e89458-0931-4820-ba45-d2c02b2e6bd7\",\"type\":\"eq\"}],\"values\":[{\"name\":\"\",\"cols\":[{\"col\":\"store_cost\",\"aggregate_type\":\"sum\"},{\"col\":\"store_cost\",\"aggregate_type\":\"sum\"}]}],\"groups\":[{\"col\":\"SALES_COUNTRY\",\"level\":\"Geo\",\"values\":[],\"alias\":\"country\",\"sort\":\"asc\",\"id\":\"4abf2747-3024-44bc-88ef-3cc2643d2b09\",\"type\":\"eq\"}],\"filters\":[]},\"expressions\":[],\"filterGroups\":[]}','2019-09-22 09:33:12','2019-09-22 09:33:12'),(2,'1','Demo','Funnel','{\"datasetId\":2,\"config\":{\"chart_type\":\"funnel\",\"keys\":[{\"col\":\"SALES_COUNTRY\",\"level\":\"Geo\",\"values\":[\"USA\",\"Canada\"],\"alias\":\"country\",\"sort\":\"asc\",\"id\":\"4abf2747-3024-44bc-88ef-3cc2643d2b09\",\"type\":\"=\"}],\"values\":[{\"name\":\"\",\"cols\":[{\"col\":\"store_cost\",\"aggregate_type\":\"sum\"},{\"col\":\"store_sales\",\"aggregate_type\":\"sum\"},{\"col\":\"unit_sales\",\"aggregate_type\":\"sum\"}]}],\"groups\":[],\"filters\":[]},\"expressions\":[],\"filterGroups\":[]}','2019-09-22 09:33:12','2019-09-22 09:33:12'),(3,'1','Demo','Sanky','{\"datasource\":1,\"query\":{\"sql\":\"SELECT * FROM sanky_date\"},\"config\":{\"chart_type\":\"sankey\",\"keys\":[{\"col\":\"source\",\"values\":[],\"sort\":\"asc\",\"type\":\"eq\"}],\"values\":[{\"name\":\"\",\"cols\":[{\"col\":\"value\",\"aggregate_type\":\"sum\"}]}],\"groups\":[{\"col\":\"target\",\"values\":[],\"sort\":\"asc\",\"type\":\"eq\"}],\"filters\":[]},\"expressions\":[],\"filterGroups\":[]}','2019-09-22 09:33:12','2019-09-22 09:33:12'),(4,'1','Demo','LineBar_Top10_Vertical','{\"datasetId\":2,\"config\":{\"valueAxis\":\"vertical\",\"chart_type\":\"line\",\"keys\":[{\"col\":\"SALES_DISTRICT\",\"level\":\"Geo\",\"values\":[],\"alias\":\"district\",\"id\":\"b0c8d29b-9f53-41d4-95b7-132f1e4c876b\",\"type\":\"eq\"}],\"values\":[{\"name\":\"\",\"series_type\":\"bar\",\"type\":\"value\",\"cols\":[{\"col\":\"store_cost\",\"f_values\":[],\"f_top\":10,\"sort\":\"desc\",\"f_type\":\">\",\"aggregate_type\":\"sum\"}]}],\"groups\":[],\"filters\":[]},\"expressions\":[],\"filterGroups\":[]}','2019-09-22 09:33:12','2019-09-22 09:33:12'),(5,'1','Demo','LineBar_Top10_Horizontal','{\"datasetId\":2,\"config\":{\"valueAxis\":\"horizontal\",\"chart_type\":\"line\",\"keys\":[{\"col\":\"SALES_COUNTRY\",\"level\":\"Geo\",\"values\":[\"USA\",\"Canada\"],\"alias\":\"country\",\"id\":\"4abf2747-3024-44bc-88ef-3cc2643d2b09\",\"type\":\"=\"},{\"col\":\"SALES_REGION\",\"level\":\"Geo\",\"values\":[],\"alias\":\"region\",\"id\":\"9f85f220-3728-468c-8e0e-a5e88a3a9b23\",\"type\":\"eq\"},{\"col\":\"SALES_DISTRICT\",\"level\":\"Geo\",\"values\":[],\"alias\":\"district\",\"id\":\"b0c8d29b-9f53-41d4-95b7-132f1e4c876b\",\"type\":\"eq\"}],\"values\":[{\"name\":\"\",\"series_type\":\"bar\",\"type\":\"value\",\"cols\":[{\"col\":\"store_cost\",\"f_values\":[],\"f_top\":10,\"sort\":\"desc\",\"f_type\":\">\",\"aggregate_type\":\"sum\"}]}],\"groups\":[],\"filters\":[]},\"expressions\":[],\"filterGroups\":[]}','2019-09-22 09:33:12','2019-09-22 09:33:12'),(6,'1','Demo','LineBar_Percentage','{\"datasetId\":2,\"config\":{\"valueAxis\":\"vertical\",\"chart_type\":\"line\",\"keys\":[{\"col\":\"the_year\",\"level\":\"Date\",\"values\":[],\"alias\":\"year\",\"sort\":\"asc\",\"id\":\"a8d4b079-5074-4ddc-9379-074dadc76c90\",\"type\":\"eq\"},{\"col\":\"month_of_year\",\"level\":\"Date\",\"values\":[],\"alias\":\"month\",\"sort\":\"asc\",\"id\":\"f3e89458-0931-4820-ba45-d2c02b2e6bd7\",\"type\":\"eq\"}],\"values\":[{\"name\":\"\",\"series_type\":\"percentbar\",\"type\":\"value\",\"cols\":[{\"col\":\"store_cost\",\"f_values\":[],\"f_type\":\">\",\"aggregate_type\":\"sum\"}]}],\"groups\":[{\"col\":\"SALES_COUNTRY\",\"level\":\"Geo\",\"values\":[\"USA\",\"Canada\"],\"alias\":\"country\",\"sort\":\"asc\",\"id\":\"4abf2747-3024-44bc-88ef-3cc2643d2b09\",\"type\":\"=\"},{\"col\":\"SALES_REGION\",\"level\":\"Geo\",\"values\":[],\"alias\":\"region\",\"id\":\"9f85f220-3728-468c-8e0e-a5e88a3a9b23\",\"sort\":\"asc\",\"type\":\"eq\"}],\"filters\":[]},\"expressions\":[],\"filterGroups\":[]}','2019-09-22 09:33:12','2019-09-22 09:33:12'),(7,'1','Demo','Radar','{\"datasetId\":2,\"config\":{\"chart_type\":\"radar\",\"keys\":[{\"col\":\"SALES_REGION\",\"level\":\"Geo\",\"values\":[\"North West\"],\"alias\":\"region\",\"sort\":\"asc\",\"id\":\"9f85f220-3728-468c-8e0e-a5e88a3a9b23\",\"type\":\"=\"},{\"col\":\"SALES_DISTRICT\",\"level\":\"Geo\",\"values\":[],\"alias\":\"district\",\"sort\":\"asc\",\"id\":\"b0c8d29b-9f53-41d4-95b7-132f1e4c876b\",\"type\":\"=\"}],\"values\":[{\"name\":\"\",\"cols\":[{\"col\":\"store_cost\",\"aggregate_type\":\"sum\"}]}],\"groups\":[{\"col\":\"gender\",\"values\":[],\"sort\":\"asc\",\"id\":\"6126fe19-f123-42d6-be3e-ce0bcac9b44d\",\"type\":\"eq\"}],\"filters\":[{\"col\":\"SALES_COUNTRY\",\"level\":\"Geo\",\"values\":[\"USA\"],\"alias\":\"country\",\"sort\":\"asc\",\"id\":\"4abf2747-3024-44bc-88ef-3cc2643d2b09\",\"type\":\"=\"}]},\"expressions\":[],\"filterGroups\":[]}','2019-09-22 09:33:12','2019-09-22 09:33:12'),(8,'1','Demo','Map','{\"datasetId\":7,\"config\":{\"chart_type\":\"map\",\"keys\":[{\"col\":\"province\",\"level\":\"GEO\",\"values\":[],\"sort\":\"asc\",\"id\":\"983188c3-ade1-48ee-8d33-53239ae271bf\",\"type\":\"eq\"}],\"values\":[{\"name\":\"\",\"cols\":[{\"col\":\"cnt\",\"aggregate_type\":\"sum\"}]}],\"groups\":[],\"filters\":[]},\"expressions\":[],\"filterGroups\":[]}','2019-09-22 09:33:12','2019-09-22 09:33:12'),(9,'1','Demo','Bubble','{\"datasetId\":2,\"config\":{\"chart_type\":\"scatter\",\"keys\":[{\"col\":\"SALES_COUNTRY\",\"level\":\"Geo\",\"values\":[],\"alias\":\"country\",\"sort\":\"asc\",\"id\":\"4abf2747-3024-44bc-88ef-3cc2643d2b09\",\"type\":\"eq\"},{\"col\":\"SALES_REGION\",\"level\":\"Geo\",\"values\":[],\"alias\":\"region\",\"sort\":\"asc\",\"id\":\"9f85f220-3728-468c-8e0e-a5e88a3a9b23\",\"type\":\"eq\"}],\"values\":[{\"name\":\"\",\"cols\":[{\"col\":\"store_cost\",\"aggregate_type\":\"sum\"}]},{\"name\":\"\",\"cols\":[{\"col\":\"store_sales\",\"aggregate_type\":\"min\"}]},{\"name\":\"\",\"cols\":[{\"col\":\"unit_sales\",\"aggregate_type\":\"count\"}]}],\"groups\":[{\"col\":\"SALES_DISTRICT\",\"level\":\"Geo\",\"values\":[],\"alias\":\"district\",\"sort\":\"asc\",\"id\":\"b0c8d29b-9f53-41d4-95b7-132f1e4c876b\",\"type\":\"eq\"}],\"filters\":[]},\"expressions\":[],\"filterGroups\":[]}','2019-09-22 09:33:12','2019-09-22 09:33:12'),(10,'1','Demo/KPI','KPI1','{\"datasetId\":2,\"config\":{\"chart_type\":\"kpi\",\"keys\":[],\"values\":[{\"name\":\"KPI1\",\"format\":\"0a.00\",\"style\":\"bg-aqua\",\"cols\":[{\"col\":\"store_cost\",\"aggregate_type\":\"sum\"}]}],\"groups\":[],\"filters\":[]},\"expressions\":[],\"filterGroups\":[]}','2019-09-22 09:33:12','2019-09-22 09:33:12'),(11,'1','Demo/KPI','KPI2','{\"datasetId\":2,\"config\":{\"chart_type\":\"kpi\",\"keys\":[],\"values\":[{\"name\":\"KPI2\",\"format\":\"0a.00\",\"style\":\"bg-red\",\"cols\":[{\"col\":\"store_cost\",\"aggregate_type\":\"count\"}]}],\"groups\":[],\"filters\":[]},\"expressions\":[],\"filterGroups\":[]}','2019-09-22 09:33:12','2019-09-22 09:33:12'),(12,'1','Demo/KPI','KPI3','{\"datasetId\":2,\"config\":{\"chart_type\":\"kpi\",\"keys\":[],\"values\":[{\"name\":\"KPI3\",\"format\":\"0a.000\",\"style\":\"bg-green\",\"cols\":[{\"col\":\"store_cost\",\"aggregate_type\":\"avg\"}]}],\"groups\":[],\"filters\":[]},\"expressions\":[],\"filterGroups\":[]}','2019-09-22 09:33:12','2019-09-22 09:33:12'),(13,'1','Demo/KPI','KPI4','{\"datasetId\":2,\"config\":{\"chart_type\":\"kpi\",\"keys\":[],\"values\":[{\"name\":\"KPI4\",\"format\":\"0a.000%\",\"style\":\"bg-yellow\",\"cols\":[{\"col\":\"store_cost\",\"aggregate_type\":\"max\"}]}],\"groups\":[],\"filters\":[]},\"expressions\":[],\"filterGroups\":[]}','2019-09-22 09:33:12','2019-09-22 09:33:12'),(14,'1','Demo','LineBar_Double_Aixes','{\"datasetId\":2,\"config\":{\"valueAxis\":\"vertical\",\"chart_type\":\"line\",\"keys\":[{\"col\":\"the_year\",\"level\":\"Date\",\"values\":[],\"alias\":\"year\",\"sort\":\"asc\",\"id\":\"a8d4b079-5074-4ddc-9379-074dadc76c90\",\"type\":\"eq\"},{\"col\":\"month_of_year\",\"level\":\"Date\",\"values\":[],\"alias\":\"month\",\"sort\":\"asc\",\"id\":\"f3e89458-0931-4820-ba45-d2c02b2e6bd7\",\"type\":\"eq\"}],\"values\":[{\"name\":\"\",\"series_type\":\"percentbar\",\"type\":\"value\",\"cols\":[{\"col\":\"store_cost\",\"f_values\":[],\"f_type\":\">\",\"aggregate_type\":\"sum\"}]},{\"name\":\"\",\"series_type\":\"line\",\"type\":\"value\",\"cols\":[{\"col\":\"unit_sales\",\"f_values\":[],\"f_top\":\"\",\"f_type\":\">\",\"aggregate_type\":\"sum\"}]}],\"groups\":[{\"col\":\"SALES_COUNTRY\",\"level\":\"Geo\",\"values\":[\"USA\",\"Canada\"],\"alias\":\"country\",\"sort\":\"asc\",\"id\":\"4abf2747-3024-44bc-88ef-3cc2643d2b09\",\"type\":\"=\"},{\"col\":\"SALES_REGION\",\"level\":\"Geo\",\"values\":[],\"alias\":\"region\",\"id\":\"9f85f220-3728-468c-8e0e-a5e88a3a9b23\",\"sort\":\"asc\",\"type\":\"eq\"}],\"filters\":[],\"coordinateSystem\":\"cartesian2d\",\"option\":{\"dataZoom\":false,\"gridCustom\":false,\"legendShow\":true}},\"expressions\":[],\"filterGroups\":[]}','2019-09-22 09:33:12','2019-09-22 09:34:47'),(15,'1','Demo','PieChart','{\"datasetId\":2,\"config\":{\"chart_type\":\"pie\",\"keys\":[{\"col\":\"SALES_REGION\",\"level\":\"Geo\",\"values\":[],\"alias\":\"region\",\"id\":\"9f85f220-3728-468c-8e0e-a5e88a3a9b23\",\"type\":\"eq\"}],\"values\":[{\"name\":\"\",\"cols\":[{\"col\":\"store_cost\",\"sort\":\"asc\",\"aggregate_type\":\"count\"}]}],\"groups\":[],\"filters\":[]},\"expressions\":[],\"filterGroups\":[]}','2019-09-22 09:33:12','2019-09-22 09:33:12');
/*!40000 ALTER TABLE `dashboard_widget` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ALLOW_INVALID_DATES' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER insert_widget_update_time_trigger
BEFORE INSERT ON dashboard_widget FOR EACH ROW SET new.update_time = now() */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ALLOW_INVALID_DATES' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER update_widget_update_time_trigger
BEFORE UPDATE ON dashboard_widget FOR EACH ROW SET new.update_time = now() */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE='+08:00' */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-09-22 17:36:35
