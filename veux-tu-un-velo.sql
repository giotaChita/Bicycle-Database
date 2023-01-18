-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: mydb
-- ------------------------------------------------------
-- Server version	8.0.31
DROP SCHEMA IF EXISTS `mydb`;
CREATE SCHEMA `mydb`;
USE `mydb`;

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
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `company` (
  `company_id` int NOT NULL AUTO_INCREMENT,
  `company_name` varchar(45) NOT NULL,
  `company_type` enum('private','public') DEFAULT NULL,
  `longtitude` float DEFAULT NULL,
  `latitude` float DEFAULT NULL,
  PRIMARY KEY (`company_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` VALUES (1,'Simos_Chad_Super_Big_Comany','private',2.34,48.5),(2,'Dablunia','public',2.33,48.51),(3,'Hellinic Bikes','private',2.32,48.52),(4,'velib','public',2.31,48.53),(5,'The Running Wheel','private',2.3,48.54),(6,'Lime','public',2.25,48.6),(7,'DOT','private',2.16,48.3),(8,'Themis start up','public',2.34,48.5);
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `company_research`
--

DROP TABLE IF EXISTS `company_research`;
/*!50001 DROP VIEW IF EXISTS `company_research`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `company_research` AS SELECT 
 1 AS `company_id`,
 1 AS `company_name`,
 1 AS `center_name`,
 1 AS `type_research`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `company_stations`
--

DROP TABLE IF EXISTS `company_stations`;
/*!50001 DROP VIEW IF EXISTS `company_stations`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `company_stations` AS SELECT 
 1 AS `company_id`,
 1 AS `company_name`,
 1 AS `station_id`,
 1 AS `station_type`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `company_vehicles`
--

DROP TABLE IF EXISTS `company_vehicles`;
/*!50001 DROP VIEW IF EXISTS `company_vehicles`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `company_vehicles` AS SELECT 
 1 AS `company_id`,
 1 AS `company_name`,
 1 AS `vehicle_id`,
 1 AS `vehicle_type`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `group_member`
--

DROP TABLE IF EXISTS `group_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `group_member` (
  `rider_id` int NOT NULL,
  `member_id` int NOT NULL,
  `member_age` smallint DEFAULT NULL,
  `member_name` varchar(45) DEFAULT NULL,
  `member_last_name` varchar(45) DEFAULT NULL,
  `member_is_paris_resident` tinyint DEFAULT NULL,
  PRIMARY KEY (`member_id`,`rider_id`),
  KEY `FK_member_to_rider` (`rider_id`),
  CONSTRAINT `FK_member_to_rider` FOREIGN KEY (`rider_id`) REFERENCES `rider` (`rider_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group_member`
--

LOCK TABLES `group_member` WRITE;
/*!40000 ALTER TABLE `group_member` DISABLE KEYS */;
INSERT INTO `group_member` VALUES (1,1,12,'Mimika','Mimikopoulou',0),(4,1,40,'Phaidon','Manouris',0),(7,1,33,'Ermolaos Onoufrios','Muller',0),(9,1,99,'Bartos','Denkseropoulos',0),(10,1,37,'Snik','O fapas',0),(1,2,25,'Karen','Smith',1),(8,2,23,'Gynaika toy Sithem','Van Zen Souan',1),(1,3,42,'Regina','Ivanovits-Petrouskof',1);
/*!40000 ALTER TABLE `group_member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `info`
--

DROP TABLE IF EXISTS `info`;
/*!50001 DROP VIEW IF EXISTS `info`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `info` AS SELECT 
 1 AS `info`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `info_of_riders_who_rated`
--

DROP TABLE IF EXISTS `info_of_riders_who_rated`;
/*!50001 DROP VIEW IF EXISTS `info_of_riders_who_rated`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `info_of_riders_who_rated` AS SELECT 
 1 AS `full_name`,
 1 AS `age`,
 1 AS `rating`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `parking_station`
--

DROP TABLE IF EXISTS `parking_station`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `parking_station` (
  `station_id` int NOT NULL AUTO_INCREMENT,
  `company_id` int NOT NULL,
  `station_longtitude` float NOT NULL,
  `station_latitude` float NOT NULL,
  `station availiability` int DEFAULT NULL,
  `station_type` enum('electric','conventional') DEFAULT NULL,
  PRIMARY KEY (`station_id`,`company_id`),
  KEY `FK_to_company_idx` (`company_id`),
  CONSTRAINT `FK_station_to_company` FOREIGN KEY (`company_id`) REFERENCES `company` (`company_id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parking_station`
--

LOCK TABLES `parking_station` WRITE;
/*!40000 ALTER TABLE `parking_station` DISABLE KEYS */;
INSERT INTO `parking_station` VALUES (1,1,2.77457,48.8637,3,'conventional'),(1,2,3.32312,48.2099,1,'conventional'),(1,3,3.03679,48.8258,7,'electric'),(1,4,3.13308,49.0062,1,'electric'),(1,5,3.00772,49.2243,1,'conventional'),(1,6,2.71223,48.1738,2,'conventional'),(1,7,3.10136,48.6751,0,'conventional'),(1,8,2.06634,48.6744,1,'electric'),(2,1,2.92656,48.4866,8,'electric'),(2,2,2.11185,49.2482,9,'electric'),(2,3,3.01894,48.2502,8,'electric'),(2,4,3.30521,48.1058,7,'conventional'),(2,5,2.29488,48.5209,1,'electric'),(2,6,3.00097,48.0864,3,'conventional'),(2,7,2.44685,49.2374,2,'electric'),(2,8,3.18816,48.4167,0,'conventional'),(3,1,2.07004,48.9326,10,'electric'),(3,2,2.1927,48.1184,0,'conventional'),(3,3,2.01663,48.9239,0,'conventional'),(3,4,2.40637,49.284,5,'conventional'),(3,5,2.01923,49.4893,9,'electric'),(3,6,2.64188,48.5521,6,'conventional'),(3,7,3.06052,48.7427,4,'electric'),(3,8,2.16626,49.2975,10,'conventional'),(4,1,3.47195,49.4616,9,'electric'),(4,2,2.03429,49.0255,3,'electric'),(4,3,3.16898,49.1186,4,'conventional'),(4,4,2.66287,49.3547,2,'electric'),(4,5,2.71002,48.6246,7,'electric'),(4,6,3.08502,48.8714,7,'electric'),(4,7,2.56179,48.0144,9,'conventional'),(4,8,3.28747,48.2853,4,'conventional'),(5,1,3.20549,49.2981,9,'electric'),(5,2,2.65458,48.1363,1,'electric'),(5,3,2.61408,49.347,3,'electric'),(5,4,2.94743,48.6559,3,'conventional'),(5,5,2.4796,48.6226,1,'conventional'),(5,6,2.66992,48.6643,9,'electric'),(5,7,2.29057,48.2825,4,'electric'),(5,8,2.63352,48.2719,6,'conventional'),(6,1,2.25412,49.3452,10,'electric'),(6,2,3.24294,49.1773,4,'conventional'),(6,3,2.44077,48.932,2,'electric'),(6,4,3.27769,49.2351,6,'conventional'),(6,5,2.49057,48.9452,2,'conventional'),(6,6,2.89556,49.2792,5,'conventional'),(6,7,2.16098,49.2348,8,'conventional'),(6,8,2.51336,49.1331,8,'electric'),(7,1,2.01949,48.7514,5,'conventional'),(7,2,3.30782,49.2707,6,'electric'),(7,3,2.94502,48.5506,9,'conventional'),(7,4,2.00622,48.0111,0,'conventional'),(7,5,2.41646,48.7747,7,'electric'),(7,6,2.9136,48.9434,3,'electric'),(7,7,2.17846,48.1416,1,'electric'),(7,8,2.2656,48.6426,6,'conventional'),(8,1,3.10033,48.2838,7,'electric'),(8,2,3.40441,48.005,2,'electric'),(8,3,2.43967,48.8819,1,'electric'),(8,4,2.6409,49.2539,9,'conventional'),(8,5,3.10857,48.1545,3,'conventional'),(8,6,2.82475,48.9718,6,'electric'),(8,7,2.17341,49.0523,2,'conventional'),(8,8,2.01865,49.1328,7,'electric'),(9,1,2.83472,48.4608,9,'conventional'),(9,2,2.77955,48.7693,0,'conventional'),(9,3,2.76133,49.3871,1,'electric'),(9,4,2.32549,48.2075,0,'electric'),(9,5,2.00731,48.7284,4,'conventional'),(9,6,2.3872,48.4112,6,'conventional'),(9,7,2.0253,49.4768,9,'electric'),(9,8,3.38325,48.492,9,'conventional'),(10,1,2.68393,48.0696,9,'conventional'),(10,2,2.62991,48.9578,9,'conventional'),(10,3,2.52263,48.8272,7,'electric'),(10,4,3.23007,49.1025,2,'electric'),(10,5,3.2139,48.3252,7,'electric'),(10,6,2.00651,48.8189,7,'conventional'),(10,7,2.63052,49.3193,1,'conventional'),(10,8,2.44333,48.4924,8,'conventional'),(11,1,2.47398,48.0522,2,'conventional'),(11,2,3.41549,48.7096,5,'electric'),(11,3,2.59363,48.3891,1,'electric'),(11,4,3.05084,49.3437,4,'electric'),(11,5,2.27528,48.0396,6,'electric'),(11,6,2.86962,48.091,6,'electric'),(11,7,3.21786,49.3898,2,'conventional'),(11,8,3.01913,48.0465,1,'electric'),(12,1,2.67555,48.2622,5,'conventional'),(12,2,2.9889,48.8085,7,'conventional'),(12,3,2.78197,48.4447,9,'electric'),(12,4,3.30066,49.1037,1,'conventional'),(12,5,2.59624,48.7533,3,'electric'),(12,6,2.75085,48.8806,4,'electric'),(12,7,2.65514,48.8506,5,'conventional'),(12,8,2.15218,48.0547,9,'conventional');
/*!40000 ALTER TABLE `parking_station` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `payment_id` int NOT NULL,
  `company_id` int NOT NULL,
  `rider_id` int NOT NULL,
  `payment_method` enum('cash','card','bitcoin') DEFAULT NULL,
  `total_charge` decimal(13,4) NOT NULL,
  PRIMARY KEY (`payment_id`,`company_id`),
  KEY `FK_to_company_idx` (`company_id`),
  KEY `FK_payment_to_rider_idx` (`rider_id`),
  CONSTRAINT `FK_payment_to_rider` FOREIGN KEY (`rider_id`) REFERENCES `rider` (`rider_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES (1,1,5,'bitcoin',15.6379),(1,2,3,'cash',27.2516),(1,3,2,'card',22.9658),(1,4,8,'cash',23.2938),(1,5,1,'cash',21.3743),(1,6,2,'card',21.4230),(1,7,2,'bitcoin',11.0868),(1,8,2,'bitcoin',17.9769),(2,1,1,'bitcoin',18.0216),(2,2,8,'card',23.3779),(2,3,2,'bitcoin',13.4393),(2,4,1,'cash',15.5908),(2,5,8,'bitcoin',27.2584),(2,6,3,'card',15.4623),(2,7,3,'bitcoin',26.0636),(2,8,7,'card',23.0935),(3,1,8,'bitcoin',19.5055),(3,2,8,'cash',14.4360),(3,3,10,'card',15.0697),(3,4,3,'cash',18.3267),(3,5,1,'bitcoin',23.5673),(3,6,6,'card',18.5600),(3,7,3,'cash',25.7423),(3,8,3,'cash',22.1021),(4,1,9,'cash',13.8571),(4,2,9,'bitcoin',23.6778),(4,3,4,'card',22.7146),(4,4,1,'card',25.1894),(4,5,5,'cash',29.4093),(4,6,9,'card',27.3207),(4,7,8,'cash',15.6666),(4,8,3,'cash',24.6453),(5,1,2,'card',21.9176),(5,2,9,'bitcoin',24.4515),(5,3,3,'cash',10.2842),(5,4,4,'bitcoin',20.3293),(5,5,6,'card',16.4292),(5,6,7,'bitcoin',24.5349),(5,7,4,'cash',18.2827),(5,8,10,'bitcoin',14.8662),(6,1,3,'card',19.2691),(6,2,8,'cash',16.8216),(6,3,1,'card',29.4405),(6,4,4,'card',26.2306),(6,5,7,'bitcoin',20.2812),(6,6,2,'card',25.1369),(6,7,6,'cash',19.6229),(6,8,2,'card',23.8744),(7,1,4,'card',29.7523),(7,2,8,'card',25.5341),(7,3,8,'bitcoin',17.5696),(7,4,3,'cash',29.5536),(7,5,5,'card',18.9051),(7,6,4,'cash',28.5047),(7,7,7,'card',16.1939),(7,8,8,'bitcoin',28.5605),(8,1,9,'bitcoin',19.9211),(8,2,6,'card',28.5432),(8,3,7,'bitcoin',10.6716),(8,4,3,'cash',16.0604),(8,5,1,'bitcoin',24.8156),(8,6,7,'card',21.6781),(8,7,4,'card',25.6958),(8,8,10,'card',20.2301),(9,1,8,'bitcoin',10.3766),(9,2,5,'cash',14.0330),(9,3,9,'cash',19.3473),(9,4,4,'card',26.8827),(9,5,2,'card',14.8136),(9,6,9,'cash',24.6242),(9,7,1,'bitcoin',18.4318),(9,8,7,'bitcoin',27.2757),(10,1,9,'bitcoin',12.2608),(10,2,4,'card',11.9711),(10,3,3,'bitcoin',19.6502),(10,4,2,'cash',16.9847),(10,5,4,'bitcoin',15.0698),(10,6,9,'cash',24.6257),(10,7,2,'cash',20.7543),(10,8,9,'cash',15.8468),(11,1,4,'cash',20.6921),(11,2,6,'card',18.8013),(11,3,8,'card',29.6356),(11,4,5,'cash',12.9466),(11,5,6,'cash',25.6131),(11,6,10,'cash',25.2005),(11,7,5,'cash',22.6875),(11,8,10,'bitcoin',11.3009),(12,1,9,'card',24.3242),(12,2,2,'bitcoin',20.8825),(12,3,9,'card',20.2932),(12,4,2,'card',17.1366),(12,5,6,'card',22.1622),(12,6,2,'bitcoin',11.1437),(12,7,2,'bitcoin',14.6317),(12,8,5,'cash',16.2072);
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `penalty`
--

DROP TABLE IF EXISTS `penalty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `penalty` (
  `penalty_id` int NOT NULL,
  `company_id` int NOT NULL,
  `payment_id` int NOT NULL,
  `penalty_charge` decimal(14,3) NOT NULL,
  `penalty_type` enum('breakage','overtime','out of region') DEFAULT NULL,
  PRIMARY KEY (`penalty_id`,`payment_id`,`company_id`),
  KEY `FK_to_payment_idx` (`payment_id`),
  KEY `FK_penalty_to_company_idx` (`company_id`),
  CONSTRAINT `FK_penalty_to_company` FOREIGN KEY (`company_id`) REFERENCES `company` (`company_id`),
  CONSTRAINT `FK_penalty_to_payment` FOREIGN KEY (`payment_id`) REFERENCES `payment` (`payment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `penalty`
--

LOCK TABLES `penalty` WRITE;
/*!40000 ALTER TABLE `penalty` DISABLE KEYS */;
INSERT INTO `penalty` VALUES (1,1,1,23.870,'overtime'),(1,2,1,46.589,'breakage'),(1,3,1,4.856,'out of region'),(1,4,1,51.881,'breakage'),(1,5,1,44.789,'breakage'),(1,7,1,8.974,'overtime'),(1,8,1,6.213,'breakage'),(1,1,2,46.433,'overtime'),(1,2,2,13.005,'out of region'),(1,3,2,32.273,'out of region'),(1,4,2,13.803,'out of region'),(1,5,2,6.017,'breakage'),(1,6,2,13.242,'breakage'),(1,8,2,42.227,'out of region'),(1,1,3,3.823,'overtime'),(1,2,3,5.351,'breakage'),(1,3,3,5.212,'out of region'),(1,6,3,44.906,'out of region'),(1,8,3,14.189,'overtime'),(1,1,4,35.271,'out of region'),(1,2,4,45.048,'overtime'),(1,4,4,24.488,'out of region'),(1,5,4,28.440,'out of region'),(1,6,4,45.246,'overtime'),(1,7,4,36.680,'breakage'),(1,8,4,44.139,'out of region'),(1,1,5,17.049,'breakage'),(1,2,5,43.481,'breakage'),(1,5,5,19.120,'overtime'),(1,6,5,33.274,'overtime'),(1,7,5,10.194,'overtime'),(1,8,5,27.177,'overtime'),(1,4,6,35.036,'breakage'),(1,5,6,28.802,'breakage'),(1,6,6,37.223,'overtime'),(1,7,6,48.387,'breakage'),(1,1,7,26.774,'out of region'),(1,4,7,38.782,'overtime'),(1,5,7,18.783,'overtime'),(1,7,7,47.842,'breakage'),(1,1,8,37.140,'overtime'),(1,2,8,45.056,'out of region'),(1,3,8,8.652,'breakage'),(1,4,8,18.611,'out of region'),(1,5,8,51.027,'overtime'),(1,6,8,19.012,'out of region'),(1,7,8,18.420,'breakage'),(1,8,8,18.784,'overtime'),(1,1,9,48.207,'overtime'),(1,2,9,24.460,'out of region'),(1,3,9,10.263,'breakage'),(1,4,9,48.045,'overtime'),(1,5,9,8.867,'overtime'),(1,8,9,16.470,'breakage'),(1,1,10,23.385,'out of region'),(1,3,10,50.494,'out of region'),(1,5,10,36.084,'overtime'),(1,7,10,32.180,'breakage'),(1,1,11,21.272,'breakage'),(1,2,11,35.309,'out of region'),(1,3,11,11.508,'out of region'),(1,6,11,6.734,'breakage'),(1,8,11,14.092,'out of region'),(1,2,12,28.533,'overtime'),(1,4,12,10.552,'overtime'),(1,5,12,39.645,'overtime'),(1,7,12,35.610,'out of region'),(1,8,12,20.839,'overtime'),(2,1,1,33.347,'out of region'),(2,2,1,36.193,'overtime'),(2,7,1,26.587,'out of region'),(2,8,1,30.876,'breakage'),(2,1,2,7.327,'overtime'),(2,2,2,25.902,'overtime'),(2,3,2,21.727,'overtime'),(2,4,2,18.532,'breakage'),(2,5,2,4.523,'breakage'),(2,6,2,5.607,'overtime'),(2,8,2,19.915,'out of region'),(2,1,3,43.321,'overtime'),(2,2,3,31.875,'out of region'),(2,6,3,41.308,'overtime'),(2,8,3,38.581,'overtime'),(2,2,4,32.690,'overtime'),(2,4,4,37.811,'overtime'),(2,6,4,28.651,'breakage'),(2,7,4,9.001,'out of region'),(2,8,4,34.616,'breakage'),(2,2,5,29.132,'breakage'),(2,5,5,45.926,'out of region'),(2,6,5,21.412,'breakage'),(2,7,5,51.567,'out of region'),(2,8,5,16.227,'overtime'),(2,4,6,12.840,'overtime'),(2,5,6,2.710,'out of region'),(2,6,6,34.945,'overtime'),(2,2,8,44.354,'breakage'),(2,4,8,18.729,'breakage'),(2,7,8,23.927,'out of region'),(2,1,9,47.712,'overtime'),(2,2,9,13.058,'out of region'),(2,3,9,42.516,'breakage'),(2,4,9,45.260,'out of region'),(2,8,9,11.691,'overtime'),(2,1,10,5.248,'out of region'),(2,3,10,14.535,'breakage'),(2,5,10,46.279,'overtime'),(2,7,10,27.448,'out of region'),(2,1,11,40.138,'out of region'),(2,6,11,14.841,'breakage'),(2,8,11,51.536,'breakage'),(2,4,12,9.685,'out of region'),(2,5,12,7.663,'out of region'),(2,7,12,18.723,'breakage'),(2,8,12,18.793,'out of region'),(3,8,1,12.733,'overtime'),(3,1,2,3.315,'overtime'),(3,2,2,7.087,'overtime'),(3,3,2,4.348,'overtime'),(3,4,2,9.886,'breakage'),(3,5,2,13.788,'breakage'),(3,6,2,19.357,'out of region'),(3,8,2,30.340,'out of region'),(3,6,3,12.696,'overtime'),(3,4,4,30.024,'out of region'),(3,6,4,19.155,'out of region'),(3,7,4,22.896,'breakage'),(3,2,5,44.174,'breakage'),(3,5,5,32.506,'overtime'),(3,8,5,45.722,'overtime'),(3,4,6,10.638,'breakage'),(3,2,8,19.230,'overtime'),(3,4,8,20.343,'overtime'),(3,7,8,20.827,'overtime'),(3,1,9,4.665,'out of region'),(3,2,9,9.966,'out of region'),(3,4,9,9.530,'overtime'),(3,1,10,21.246,'out of region'),(3,3,10,3.713,'breakage'),(3,5,10,36.550,'out of region'),(3,6,11,3.363,'out of region'),(3,5,12,20.789,'out of region'),(3,7,12,17.238,'out of region');
/*!40000 ALTER TABLE `penalty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission`
--

DROP TABLE IF EXISTS `permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permission` (
  `company_id` int NOT NULL,
  `center_id` int NOT NULL,
  `contract_date` datetime DEFAULT NULL,
  `data_price` int DEFAULT NULL,
  PRIMARY KEY (`company_id`,`center_id`),
  KEY `FK_to_center_idx` (`center_id`) /*!80000 INVISIBLE */,
  KEY `FK_to_company_idx` (`company_id`),
  CONSTRAINT `FK_permission_to_center` FOREIGN KEY (`center_id`) REFERENCES `research_center` (`center_id`) ON DELETE CASCADE,
  CONSTRAINT `FK_premission_to_comany` FOREIGN KEY (`company_id`) REFERENCES `company` (`company_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission`
--

LOCK TABLES `permission` WRITE;
/*!40000 ALTER TABLE `permission` DISABLE KEYS */;
INSERT INTO `permission` VALUES (1,1,'2014-05-02 14:50:27',1190),(1,2,'2019-02-21 10:32:14',259),(2,1,'2021-11-16 15:19:55',94),(3,1,'2019-01-10 21:54:40',501),(3,2,'2022-04-10 10:57:49',1192),(3,3,'2015-04-03 23:05:02',142),(5,1,'2014-12-27 21:13:36',85),(5,2,'2014-10-21 03:13:48',1915),(5,3,'2019-08-08 02:18:13',1624),(7,1,'2013-10-18 06:04:37',296),(7,2,'2013-02-06 06:21:27',985),(7,3,'2017-12-22 09:04:29',42),(8,1,'2013-04-03 05:50:39',77),(8,2,'2020-03-12 04:53:13',543);
/*!40000 ALTER TABLE `permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `point_of_interest`
--

DROP TABLE IF EXISTS `point_of_interest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `point_of_interest` (
  `stop_id` int NOT NULL AUTO_INCREMENT,
  `stop_latitude` float DEFAULT NULL,
  `stop_longtitude` float DEFAULT NULL,
  `stop_name` varchar(45) NOT NULL,
  `stop_type` enum('museum','park','church','garden','sight') DEFAULT NULL,
  PRIMARY KEY (`stop_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `point_of_interest`
--

LOCK TABLES `point_of_interest` WRITE;
/*!40000 ALTER TABLE `point_of_interest` DISABLE KEYS */;
INSERT INTO `point_of_interest` VALUES (1,48.85,2.29,'Eiffel Tower','sight'),(2,48.21,2.42,'Art Park','park'),(3,48.1,2.56,'Banana museum','museum'),(4,49.1,2.12,'St.Paphnutius the Holy One','church'),(5,49.12,2.68,'Wine museum','museum'),(6,49,2.01,'Sir George St. Patrick Lawrence IV garden','garden'),(7,49.02,2.21,'cat museum','museum'),(8,49.02,2.21,'Fasaia Roof Garden Bar','garden'),(9,48.69,2.69,'The Church Of The 69 Virgin Girls','church'),(10,48.04,2.53,'Saphla meme museum','museum'),(11,48.03,2.52,'Monument of St. Saoulidis','sight'),(12,49.2,2.23,'Garden with money-trees','garden');
/*!40000 ALTER TABLE `point_of_interest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rents`
--

DROP TABLE IF EXISTS `rents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rents` (
  `vehicle_id` int NOT NULL,
  `rider_id` int NOT NULL,
  `rental_duration` float NOT NULL,
  `rental_date` datetime DEFAULT NULL,
  PRIMARY KEY (`vehicle_id`,`rider_id`),
  KEY `FK_to_rider_idx` (`rider_id`) /*!80000 INVISIBLE */,
  KEY `FK_to_vehicle_idx` (`vehicle_id`),
  CONSTRAINT `FK_rents_to_rider` FOREIGN KEY (`rider_id`) REFERENCES `rider` (`rider_id`),
  CONSTRAINT `FK_rents_to_vehicle` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicle` (`vehicle_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rents`
--

LOCK TABLES `rents` WRITE;
/*!40000 ALTER TABLE `rents` DISABLE KEYS */;
INSERT INTO `rents` VALUES (1,1,62.1868,'2014-07-06 10:11:33'),(1,2,116.735,'2022-01-19 07:37:30'),(1,3,85.9191,'2016-05-23 12:00:57'),(1,4,63.3571,'2014-11-14 19:39:37'),(1,5,53.9534,'2014-08-12 12:24:05'),(1,6,63.4921,'2022-05-01 02:22:41'),(1,7,80.1513,'2018-12-21 22:06:33'),(1,8,15.0014,'2018-05-05 02:22:58'),(1,9,119.056,'2016-09-21 13:03:50'),(1,10,17.7745,'2015-01-17 17:56:44'),(2,1,81.1712,'2014-07-16 10:37:35'),(2,2,64.8246,'2018-09-17 16:16:59'),(2,3,17.0302,'2015-08-13 23:39:46'),(2,4,56.0544,'2013-12-03 22:24:27'),(2,5,99.7742,'2016-06-24 23:08:14'),(2,6,87.8292,'2018-04-16 20:20:57'),(2,7,119.408,'2015-03-19 12:49:47'),(2,8,112.808,'2019-11-09 21:17:10'),(2,9,17.7232,'2014-05-02 10:59:09'),(2,10,62.2934,'2020-10-17 08:10:11'),(3,1,22.5712,'2018-11-14 10:08:42'),(3,2,61.0516,'2020-04-22 12:43:48'),(3,3,30.3021,'2022-05-31 02:25:30'),(3,4,14.8203,'2013-12-12 14:46:44'),(3,5,90.1287,'2014-11-22 11:58:17'),(3,6,17.3251,'2019-10-17 02:12:20'),(3,7,107.399,'2021-07-02 03:45:26'),(3,8,88.3469,'2015-07-02 14:57:57'),(3,9,105.241,'2015-01-16 15:07:45'),(3,10,63.6049,'2012-12-30 04:41:33'),(4,1,58.3127,'2020-12-21 16:05:32'),(4,2,96.5593,'2020-09-20 20:17:42'),(4,3,62.4676,'2018-08-11 22:05:14'),(4,4,17.0955,'2022-12-03 13:06:17'),(4,5,94.4772,'2017-11-06 10:11:42'),(4,6,18.715,'2014-09-16 23:44:12'),(4,7,5.90708,'2014-12-01 14:53:38'),(4,8,63.3157,'2019-01-03 07:45:17'),(4,9,40.0765,'2020-01-23 11:33:30'),(4,10,47.8519,'2022-12-18 06:36:08'),(5,1,64.8009,'2021-12-15 04:25:29'),(5,2,85.1625,'2014-03-26 03:00:41'),(5,3,74.1652,'2015-02-24 09:48:21'),(5,4,71.432,'2013-05-07 02:57:28'),(5,5,23.9094,'2018-05-17 20:56:29'),(5,6,79.6583,'2014-07-28 20:07:30'),(5,7,105.643,'2013-02-15 00:08:36'),(5,8,47.8765,'2014-12-01 03:37:23'),(5,9,54.2805,'2019-01-29 17:25:21'),(5,10,96.7416,'2022-09-03 18:11:11'),(6,1,106.403,'2021-09-03 18:12:48'),(6,2,29.0535,'2017-02-03 09:32:18'),(6,3,6.93043,'2013-07-23 03:30:08'),(6,4,3.34819,'2020-06-15 22:13:55'),(6,5,83.9844,'2021-10-05 06:06:23'),(6,6,25.0723,'2017-09-22 21:43:20'),(6,7,34.0441,'2018-05-02 19:39:10'),(6,8,99.8115,'2015-07-23 06:01:08'),(6,9,70.6419,'2015-03-19 16:58:39'),(6,10,87.4245,'2017-06-05 10:05:42'),(7,1,118.441,'2017-07-03 06:12:18'),(7,2,25.5549,'2019-12-16 16:06:04'),(7,3,64.1916,'2014-06-23 14:15:49'),(7,4,20.7278,'2021-11-14 07:45:36'),(7,5,60.5187,'2021-05-17 20:31:30'),(7,6,119.449,'2018-12-07 11:34:24'),(7,7,56.0551,'2013-07-12 00:05:27'),(7,8,25.531,'2014-08-01 21:43:39'),(7,9,13.6705,'2020-07-21 04:44:46'),(7,10,70.3903,'2020-04-10 01:06:07'),(8,1,92.7634,'2020-09-20 22:57:05'),(8,2,104.061,'2018-08-25 11:03:02'),(8,3,77.266,'2016-04-08 20:28:00'),(8,4,3.6949,'2014-09-23 11:19:36'),(8,5,33.9952,'2013-08-02 19:59:26'),(8,6,3.88765,'2013-06-19 16:22:04'),(8,7,38.6493,'2015-03-18 12:49:42'),(8,8,66.7855,'2020-04-23 19:37:36'),(8,9,103.963,'2016-11-25 20:21:10'),(8,10,70.5955,'2021-08-22 23:03:24'),(9,1,96.532,'2019-06-28 17:12:35'),(9,2,67.16,'2017-12-15 04:01:44'),(9,3,50.3291,'2022-02-07 16:28:07'),(9,4,3.65279,'2016-03-09 12:20:45'),(9,5,101.241,'2018-12-12 23:04:18'),(9,6,78.8208,'2018-08-27 02:48:09'),(9,7,109.841,'2020-06-28 18:53:47'),(9,8,79.146,'2017-12-20 05:20:04'),(9,9,52.2597,'2019-05-27 23:57:44'),(9,10,107.802,'2022-01-11 16:08:11'),(10,1,39.2381,'2017-01-23 20:23:48'),(10,2,99.4926,'2016-07-25 17:04:06'),(10,3,20.8589,'2016-11-14 23:40:45'),(10,4,36.1489,'2018-04-07 04:36:26'),(10,5,57.6135,'2021-01-11 09:25:25'),(10,6,22.6073,'2016-07-03 22:54:48'),(10,7,59.1353,'2015-10-07 15:33:05'),(10,8,62.7036,'2021-11-06 11:41:22'),(10,9,57.269,'2019-10-23 20:05:09'),(10,10,92.8804,'2017-01-31 18:03:22');
/*!40000 ALTER TABLE `rents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `research_center`
--

DROP TABLE IF EXISTS `research_center`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `research_center` (
  `center_id` int NOT NULL AUTO_INCREMENT,
  `type_research` enum('tourism','environment','transportation','culture') DEFAULT NULL,
  `center_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`center_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `research_center`
--

LOCK TABLES `research_center` WRITE;
/*!40000 ALTER TABLE `research_center` DISABLE KEYS */;
INSERT INTO `research_center` VALUES (1,'tourism','The Kavli Fundation'),(2,'culture','auth chad research center'),(3,'environment','Scooter-dooper research center'),(4,'transportation','The city greener'),(5,'culture','Big Bike Center (BBC)'),(6,'culture','CENTRE NATIONAL DE LA RECHERCHE SCIENTIFIQUE	'),(7,'culture','STIFTELSEN SINTEF	'),(8,'tourism','POLITECNICO DI MILANO	'),(9,'environment','THALES'),(10,'transportation','UNIVERSITE DE GENEVE	');
/*!40000 ALTER TABLE `research_center` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `review` (
  `rider_id` int NOT NULL,
  `vehicle_id` int NOT NULL,
  `rating` smallint DEFAULT NULL,
  `review_date` datetime DEFAULT NULL,
  PRIMARY KEY (`rider_id`,`vehicle_id`),
  KEY `FK_to_vehicle_idx` (`vehicle_id`),
  KEY `FK_to_rider_idx` (`rider_id`),
  CONSTRAINT `FK_review_to_rider` FOREIGN KEY (`rider_id`) REFERENCES `rider` (`rider_id`) ON DELETE CASCADE,
  CONSTRAINT `FK_review_to_vehicle` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicle` (`vehicle_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` VALUES (1,1,4,'2021-01-13 11:48:42'),(1,2,8,'2017-03-08 17:15:01'),(1,3,4,'2020-05-29 12:25:37'),(1,4,1,'2016-05-28 20:50:04'),(1,5,0,'2021-04-11 16:59:07'),(1,6,8,'2019-12-01 11:11:15'),(1,7,2,'2020-03-04 02:40:12'),(1,8,7,'2017-04-23 05:01:02'),(1,9,8,'2020-07-20 11:16:33'),(1,10,8,'2017-12-27 21:03:42'),(2,1,10,'2020-02-02 01:39:59'),(2,2,6,'2013-01-16 16:04:57'),(2,3,3,'2020-03-29 09:32:43'),(2,4,6,'2020-07-04 00:35:42'),(2,5,4,'2020-09-19 18:22:14'),(2,6,9,'2022-05-20 04:39:50'),(2,7,5,'2022-01-31 15:15:21'),(2,8,1,'2021-06-16 23:51:43'),(2,9,5,'2022-03-25 15:02:59'),(2,10,9,'2022-07-13 15:09:44'),(3,1,7,'2021-04-23 20:36:46'),(3,2,9,'2015-05-26 12:09:36'),(3,3,2,'2013-12-26 17:30:03'),(3,4,8,'2020-05-18 23:03:01'),(3,5,9,'2014-08-29 04:25:30'),(3,6,4,'2018-04-17 17:35:44'),(3,7,2,'2018-12-05 02:28:00'),(3,8,5,'2018-03-29 00:28:56'),(3,9,8,'2019-06-17 22:56:13'),(3,10,5,'2018-11-12 19:26:27'),(4,1,6,'2016-07-27 10:55:10'),(4,2,5,'2018-04-12 20:28:39'),(4,3,9,'2021-06-14 23:46:22'),(4,4,0,'2016-05-26 00:21:33'),(4,5,2,'2021-09-21 05:50:47'),(4,6,10,'2018-06-13 08:49:28'),(4,7,4,'2018-04-04 16:01:16'),(4,8,3,'2014-02-13 04:57:22'),(4,9,6,'2017-02-27 12:57:04'),(4,10,10,'2022-03-22 15:26:40'),(5,1,5,'2021-02-05 14:51:33'),(5,2,5,'2014-03-02 05:18:00'),(5,3,9,'2022-06-12 21:56:39'),(5,4,4,'2022-05-03 21:12:52'),(5,5,10,'2015-09-05 10:33:10'),(5,6,7,'2020-01-16 05:33:01'),(5,7,4,'2012-12-28 01:27:19'),(5,8,9,'2019-08-21 08:40:29'),(5,9,1,'2019-06-26 19:41:49'),(5,10,5,'2016-09-29 05:08:43'),(6,1,5,'2016-01-11 12:27:45'),(6,2,9,'2017-01-29 13:27:28'),(6,3,1,'2013-07-11 06:30:39'),(6,4,3,'2016-06-20 14:33:32'),(6,5,4,'2014-06-17 22:59:52'),(6,6,2,'2019-10-02 14:54:16'),(6,7,1,'2018-06-13 01:10:45'),(6,8,0,'2015-12-27 04:14:34'),(6,9,5,'2020-12-11 12:58:21'),(6,10,6,'2017-05-26 23:16:08'),(7,1,9,'2015-05-08 01:19:57'),(7,2,2,'2018-03-26 04:52:24'),(7,3,9,'2021-07-17 05:34:44'),(7,4,10,'2018-07-06 11:06:40'),(7,5,3,'2021-01-31 12:52:36'),(7,6,0,'2017-04-25 16:38:01'),(7,7,7,'2022-06-16 20:07:32'),(7,8,0,'2014-03-07 12:39:29'),(7,9,4,'2020-06-28 03:20:52'),(7,10,1,'2015-01-02 08:39:42'),(8,1,7,'2013-11-16 05:25:08'),(8,2,6,'2021-10-28 07:58:36'),(8,3,9,'2013-02-09 17:45:56'),(8,4,3,'2015-11-10 16:43:45'),(8,5,6,'2016-08-04 20:56:22'),(8,6,5,'2015-10-18 19:15:43'),(8,7,0,'2014-01-13 05:29:59'),(8,8,4,'2017-09-16 19:06:39'),(8,9,3,'2013-06-19 13:34:58'),(8,10,8,'2019-08-30 11:03:00'),(9,1,1,'2015-09-07 12:41:03'),(9,2,2,'2014-04-03 18:31:22'),(9,3,7,'2022-11-30 17:45:06'),(9,4,9,'2020-06-06 18:33:06'),(9,5,7,'2015-03-25 11:41:32'),(9,6,8,'2018-09-03 23:09:44'),(9,7,9,'2021-01-13 09:49:48'),(9,8,3,'2014-11-27 17:17:09'),(9,9,2,'2017-02-07 05:56:10'),(9,10,3,'2014-01-30 11:11:28'),(10,1,5,'2016-10-31 21:11:00'),(10,2,7,'2016-05-21 20:44:08'),(10,3,2,'2013-02-09 22:18:06'),(10,4,4,'2014-10-29 12:05:19'),(10,5,0,'2016-12-14 10:56:46'),(10,6,10,'2021-12-11 09:09:19'),(10,7,6,'2017-09-06 10:24:38'),(10,8,9,'2021-09-06 07:22:44'),(10,9,8,'2016-02-14 18:28:42'),(10,10,10,'2014-05-28 12:39:19');
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rider`
--

DROP TABLE IF EXISTS `rider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rider` (
  `rider_id` int NOT NULL AUTO_INCREMENT,
  `age` int DEFAULT NULL,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `phone` text NOT NULL,
  `email` varchar(320) DEFAULT NULL,
  `is_paris_resident` tinyint DEFAULT NULL,
  `longtitude` float DEFAULT NULL,
  `latitude` float DEFAULT NULL,
  PRIMARY KEY (`rider_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rider`
--

LOCK TABLES `rider` WRITE;
/*!40000 ALTER TABLE `rider` DISABLE KEYS */;
INSERT INTO `rider` VALUES (1,20,'Babis','Sougias','2310 123 345','BabisSougias@gmail.com',1,2.3,48.05),(2,25,'Themistoklis','Diamantis','697 843 1233','Themistoklis@ece.auth.gr',0,2.35,48.67),(3,19,'Babina','Papadopoulou','696 102 103','TheBEstPlayer123@gmail.com',0,2.36,48.6),(4,20,'Artemis-Eyridiki','Psemataki','693 210 0123','moopflop@hotmail.com',1,2.33,49),(5,44,'Olaf','Ourlich','4444444444','Viking@webmail.com',1,2.44,48.44),(6,57,'Giannis','Petaloudas','','GiannisOPetaloudas@gmail.com',0,2.11,48.3),(7,46,'Maria-Yumeko','Bahahandrou','7078089009','Yumeko@japanmail.com',0,2.1,48.48),(8,25,'Simeth','Diamantis','','NotTheLostTwinOfThemis@parimail.com',NULL,NULL,NULL),(9,95,'Papoukas','Masoythalix','690 675 1821',NULL,1,2.2,48.5),(10,27,'Young','Light','2310 696 420','PrwtiThesiGiaParisiTrwwEscargot@capital.dendropotamos.com',0,2.32,48.78);
/*!40000 ALTER TABLE `rider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `total_payment`
--

DROP TABLE IF EXISTS `total_payment`;
/*!50001 DROP VIEW IF EXISTS `total_payment`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `total_payment` AS SELECT 
 1 AS `rider_id`,
 1 AS `total_payment`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `vehicle`
--

DROP TABLE IF EXISTS `vehicle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicle` (
  `vehicle_id` int NOT NULL AUTO_INCREMENT,
  `company_id` int NOT NULL,
  `vehicle_longtitude` float DEFAULT NULL,
  `vehicle_latitude` float DEFAULT NULL,
  `vehicle_type` enum('electric bicycle','conventional bicycle','scooter','suitable for_kids') NOT NULL,
  `vehicle_is_available` tinyint NOT NULL,
  `vehicle_price` decimal(13,4) NOT NULL,
  PRIMARY KEY (`vehicle_id`),
  KEY `FK_vehicle_to_company_idx` (`company_id`),
  CONSTRAINT `FK_vehicle_to_company` FOREIGN KEY (`company_id`) REFERENCES `company` (`company_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=277 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle`
--

LOCK TABLES `vehicle` WRITE;
/*!40000 ALTER TABLE `vehicle` DISABLE KEYS */;
INSERT INTO `vehicle` VALUES (1,2,2.10019,49.2794,'electric bicycle',0,15.2605),(2,5,3.23143,48.3581,'electric bicycle',0,18.7658),(3,4,3.01807,49.3461,'electric bicycle',0,11.2459),(4,4,2.91044,48.9877,'electric bicycle',0,7.6468),(5,4,2.50715,48.2991,'electric bicycle',1,6.3152),(6,6,2.30697,48.1981,'electric bicycle',0,16.7176),(7,1,3.03956,48.5172,'electric bicycle',0,3.8007),(8,1,2.76119,48.7361,'electric bicycle',1,3.6911),(9,2,2.13473,48.0945,'electric bicycle',0,0.7778),(10,1,2.25774,49.029,'electric bicycle',1,10.3067),(11,7,2.9256,48.8812,'electric bicycle',0,13.3711),(12,1,2.62292,49.2358,'electric bicycle',1,17.9042),(13,7,2.89163,48.6061,'electric bicycle',0,19.4635),(14,2,3.28053,49.2068,'electric bicycle',0,17.8777),(15,1,3.11486,48.6919,'electric bicycle',0,19.9792),(16,7,3.24346,49.274,'electric bicycle',0,5.0230),(17,8,2.19152,49.0646,'electric bicycle',0,13.9740),(18,8,3.33168,48.6729,'electric bicycle',0,11.0447),(19,1,2.68273,48.313,'electric bicycle',0,15.2650),(20,7,2.93565,49.1561,'electric bicycle',1,11.9904),(21,1,2.68145,48.1797,'electric bicycle',0,16.4132),(22,4,2.77177,48.58,'electric bicycle',0,15.7826),(23,7,2.7701,48.3578,'electric bicycle',0,10.9291),(24,7,2.35392,49.2818,'electric bicycle',0,5.2213),(25,5,2.40387,48.7722,'electric bicycle',0,5.7253),(26,2,3.20907,48.947,'electric bicycle',0,15.9670),(27,7,2.73017,48.1572,'electric bicycle',0,0.0747),(28,7,2.19174,48.2336,'electric bicycle',0,10.1669),(29,3,2.38567,48.3244,'electric bicycle',0,18.0250),(30,5,2.26594,48.2368,'electric bicycle',0,16.2626),(31,3,2.04331,48.3951,'electric bicycle',0,7.2399),(32,1,2.76079,48.2701,'electric bicycle',0,7.0695),(33,6,2.14315,48.8755,'electric bicycle',0,8.1744),(34,2,2.76931,48.1814,'electric bicycle',0,19.3551),(35,6,2.44828,48.8595,'electric bicycle',1,2.4625),(36,6,2.27354,49.1711,'electric bicycle',0,8.8248),(37,2,2.53509,48.5631,'electric bicycle',1,18.1466),(38,1,3.29139,49.4323,'electric bicycle',0,1.8653),(39,8,2.26737,48.3246,'electric bicycle',0,1.7417),(40,7,3.06051,48.2311,'electric bicycle',0,15.6887),(41,8,2.77646,48.9984,'electric bicycle',0,17.5830),(42,1,3.06983,48.5336,'electric bicycle',0,2.5421),(43,6,2.32055,49.3672,'electric bicycle',1,16.9446),(44,4,3.34099,48.0128,'electric bicycle',0,15.5629),(45,7,3.06178,48.1708,'electric bicycle',0,17.7578),(46,1,3.26733,49.379,'electric bicycle',0,11.0272),(47,5,2.3032,48.4454,'electric bicycle',1,10.0088),(48,7,3.254,48.8664,'electric bicycle',0,3.3525),(49,6,3.47939,49.2567,'electric bicycle',0,12.7655),(50,5,2.8802,48.6495,'electric bicycle',0,14.4932),(51,4,3.30686,48.1936,'electric bicycle',0,15.4237),(52,7,2.73615,48.2569,'electric bicycle',0,8.1199),(53,8,2.259,48.3434,'electric bicycle',0,8.9308),(54,3,2.63585,48.0921,'electric bicycle',0,19.8420),(55,7,2.44601,49.3838,'electric bicycle',0,16.7066),(56,1,2.85286,49.1972,'electric bicycle',0,0.6008),(57,3,2.58159,48.0779,'electric bicycle',0,6.5232),(58,3,3.09483,48.9366,'electric bicycle',1,15.7749),(59,2,2.5497,48.5891,'electric bicycle',1,2.8516),(60,1,2.262,48.7678,'electric bicycle',0,12.8347),(61,1,2.87888,48.9344,'electric bicycle',0,18.3077),(62,5,3.17904,48.6162,'electric bicycle',0,4.9513),(63,2,2.00962,48.8739,'electric bicycle',1,14.4222),(64,8,2.68649,48.7736,'electric bicycle',0,9.6133),(65,7,2.73683,48.1443,'electric bicycle',0,14.9502),(66,6,2.50569,48.8068,'electric bicycle',0,15.5112),(67,7,3.34259,49.4134,'electric bicycle',0,6.0740),(68,4,2.43497,48.1939,'electric bicycle',0,9.8745),(69,2,2.32641,49.0031,'electric bicycle',0,8.9745),(70,2,2.76032,48.0339,'electric bicycle',0,17.8708),(71,6,3.16102,49.1959,'electric bicycle',0,18.6054),(72,6,2.7492,48.7847,'electric bicycle',0,0.3500),(73,6,2.93606,49.3714,'electric bicycle',0,15.0675),(74,6,2.12855,48.6315,'electric bicycle',1,19.5311),(75,3,3.14835,49.216,'electric bicycle',0,7.0364),(76,4,2.58246,48.7129,'electric bicycle',0,12.6281),(77,5,3.07891,48.0424,'electric bicycle',1,16.6610),(78,2,2.86018,48.3355,'electric bicycle',0,6.3911),(79,4,2.08735,48.1215,'electric bicycle',0,18.1832),(80,7,2.81719,48.2409,'electric bicycle',0,7.2262),(81,3,2.62918,48.2929,'electric bicycle',0,0.0712),(82,7,2.46572,49.4395,'electric bicycle',1,9.1230),(83,6,2.0444,48.1637,'electric bicycle',0,19.1518),(84,4,2.31767,49.2122,'electric bicycle',0,12.0570),(85,7,2.27107,48.765,'electric bicycle',0,10.1939),(86,5,2.14107,49.3445,'electric bicycle',0,6.1784),(87,8,3.20363,48.2619,'electric bicycle',0,16.0879),(88,6,3.06856,49.0298,'electric bicycle',0,8.3621),(89,2,3.14783,48.3215,'electric bicycle',0,4.7546),(90,7,2.88138,48.5362,'electric bicycle',0,1.0112),(91,2,3.11512,48.27,'electric bicycle',0,16.1803),(92,1,3.12683,48.9737,'electric bicycle',1,0.2602),(93,1,2.6072,49.1366,'electric bicycle',0,11.9488),(94,3,2.79808,49.2985,'electric bicycle',0,1.2669),(95,1,2.61912,49.0531,'electric bicycle',0,5.0816),(96,4,2.76349,48.2733,'electric bicycle',0,7.4775),(97,6,2.69548,48.2507,'electric bicycle',0,14.4342),(98,3,2.31266,48.3271,'electric bicycle',0,13.4138),(99,8,3.17083,48.0408,'electric bicycle',0,17.7967),(100,1,2.99326,48.1678,'conventional bicycle',0,7.9218),(101,8,2.04148,48.5566,'conventional bicycle',0,11.2266),(102,4,3.32131,48.193,'conventional bicycle',0,9.2584),(103,1,2.85418,48.8919,'conventional bicycle',0,8.0899),(104,8,3.34376,49.1564,'conventional bicycle',0,7.8356),(105,1,3.48044,48.9035,'conventional bicycle',0,6.7094),(106,1,2.11615,48.2034,'conventional bicycle',0,12.3150),(107,7,2.5683,48.8838,'conventional bicycle',1,4.1943),(108,8,2.01491,48.2106,'conventional bicycle',0,14.1011),(109,6,2.89646,49.4062,'conventional bicycle',1,9.8988),(110,5,2.15171,48.9857,'conventional bicycle',1,14.1056),(111,7,3.42895,48.7484,'conventional bicycle',0,10.3034),(112,5,2.84087,48.3452,'conventional bicycle',0,9.8153),(113,7,2.54215,48.3187,'conventional bicycle',1,3.7905),(114,3,3.33374,48.6862,'conventional bicycle',0,10.8990),(115,7,3.03237,48.1806,'conventional bicycle',0,4.8811),(116,1,2.14853,48.6749,'conventional bicycle',1,6.2049),(117,2,3.215,48.6291,'conventional bicycle',0,1.1533),(118,4,3.02931,48.4214,'conventional bicycle',0,13.3093),(119,4,2.4952,48.6832,'conventional bicycle',0,1.0223),(120,4,2.29371,48.8083,'conventional bicycle',0,13.7707),(121,3,2.88953,48.2352,'conventional bicycle',0,8.3169),(122,7,2.18522,48.5179,'conventional bicycle',0,11.1601),(123,6,2.04288,48.2798,'conventional bicycle',1,10.1325),(124,7,2.23323,48.4024,'conventional bicycle',1,8.5343),(125,2,2.59392,48.4771,'conventional bicycle',0,0.8728),(126,1,2.36436,49.4461,'conventional bicycle',0,8.4862),(127,5,2.10898,49.052,'conventional bicycle',0,5.0922),(128,7,2.20721,48.2951,'conventional bicycle',0,3.8474),(129,5,2.15388,49.1845,'conventional bicycle',0,12.5161),(130,2,3.1198,49.4742,'conventional bicycle',0,6.3605),(131,1,2.31679,49.149,'conventional bicycle',0,10.2619),(132,7,2.15663,48.042,'conventional bicycle',1,0.7474),(133,7,3.0421,48.2507,'conventional bicycle',0,3.8412),(134,1,2.54179,49.0925,'conventional bicycle',0,9.0741),(135,3,3.40851,48.9641,'conventional bicycle',0,0.8261),(136,1,2.39272,48.0793,'conventional bicycle',0,3.5319),(137,6,3.49718,49.1518,'conventional bicycle',1,13.8294),(138,1,2.90923,49.2113,'conventional bicycle',0,10.1094),(139,6,2.80575,48.8256,'conventional bicycle',0,0.7696),(140,7,2.03177,48.9013,'conventional bicycle',1,13.5113),(141,6,3.06017,48.7327,'conventional bicycle',0,2.1716),(142,7,2.53153,48.7478,'conventional bicycle',0,9.7962),(143,8,3.38215,49.0181,'conventional bicycle',0,1.6677),(144,6,2.00542,48.0236,'conventional bicycle',0,4.3898),(145,3,2.62778,48.4721,'conventional bicycle',0,9.6874),(146,3,2.65741,48.5489,'conventional bicycle',0,7.1401),(147,7,3.12629,48.3705,'conventional bicycle',1,2.5604),(148,8,2.03044,48.5731,'conventional bicycle',1,1.5083),(149,8,2.70817,48.7445,'conventional bicycle',0,12.5544),(150,8,2.65333,48.3148,'conventional bicycle',0,1.2661),(151,2,3.07193,49.4886,'conventional bicycle',1,1.7061),(152,1,2.34398,49.2064,'conventional bicycle',0,3.8113),(153,3,2.88392,48.2032,'conventional bicycle',1,2.1164),(154,8,2.69238,48.5655,'conventional bicycle',0,5.5581),(155,3,2.97066,48.2705,'conventional bicycle',1,3.9026),(156,4,2.48069,48.5126,'conventional bicycle',0,10.6623),(157,3,2.64526,48.3199,'conventional bicycle',0,3.5920),(158,7,2.94556,48.8139,'conventional bicycle',1,7.2290),(159,8,2.40968,48.8014,'conventional bicycle',1,9.8514),(160,6,3.00531,48.2501,'conventional bicycle',1,9.2303),(161,5,2.28636,48.1985,'conventional bicycle',0,0.7214),(162,8,3.08391,49.0394,'conventional bicycle',0,6.0741),(163,2,2.68641,49.3269,'conventional bicycle',0,8.9482),(164,7,2.55987,48.5528,'conventional bicycle',0,7.6249),(165,3,2.51261,48.883,'conventional bicycle',1,12.3690),(166,3,2.55416,49.1119,'conventional bicycle',0,11.4854),(167,1,3.31553,48.421,'conventional bicycle',0,0.2848),(168,7,3.25234,49.259,'conventional bicycle',0,14.1377),(169,6,2.53021,49.2882,'conventional bicycle',0,8.8617),(170,3,2.74384,49.0778,'conventional bicycle',0,5.5360),(171,5,2.8183,48.2041,'conventional bicycle',0,12.1476),(172,8,2.24382,48.0863,'conventional bicycle',0,12.4025),(173,6,2.28852,49.137,'conventional bicycle',0,11.8655),(174,3,2.31132,48.134,'conventional bicycle',1,12.7843),(175,7,2.58405,48.8686,'conventional bicycle',0,13.4954),(176,3,3.32348,48.6941,'conventional bicycle',0,14.1862),(177,6,3.20656,49.2554,'conventional bicycle',0,5.1937),(178,4,2.06985,49.4725,'conventional bicycle',0,13.4670),(179,2,2.33509,48.8503,'conventional bicycle',0,1.8087),(180,1,2.28365,48.9225,'conventional bicycle',0,10.3999),(181,8,2.95733,48.5403,'conventional bicycle',1,5.2605),(182,1,2.63244,49.2358,'conventional bicycle',1,12.0180),(183,4,3.21164,49.068,'conventional bicycle',0,8.2098),(184,3,3.4868,49.4642,'conventional bicycle',1,9.0980),(185,3,3.10855,49.14,'conventional bicycle',0,9.5182),(186,4,2.32453,49.2147,'conventional bicycle',0,8.5445),(187,6,2.80267,49.0937,'conventional bicycle',0,0.2182),(188,8,3.07117,49.0739,'conventional bicycle',0,0.5771),(189,8,2.43155,49.1949,'conventional bicycle',0,3.1559),(190,6,3.24177,48.0957,'conventional bicycle',1,14.7939),(191,4,2.2468,48.823,'conventional bicycle',0,9.0425),(192,3,2.77369,49.1766,'conventional bicycle',0,7.7959),(193,4,3.22294,48.9777,'conventional bicycle',1,1.6503),(194,1,2.33631,49.1827,'conventional bicycle',0,14.7529),(195,1,2.88599,48.9428,'conventional bicycle',0,14.5220),(196,6,3.10635,48.754,'conventional bicycle',0,14.9276),(197,1,2.57644,49.0494,'conventional bicycle',0,9.3981),(198,1,2.91185,49.1205,'conventional bicycle',1,4.7277),(199,7,2.39834,49.2017,'scooter',0,6.4161),(200,5,3.47047,48.2378,'scooter',1,7.8224),(201,3,2.65414,48.1661,'scooter',0,8.9549),(202,6,2.02626,49.2977,'scooter',0,7.7049),(203,1,3.27961,48.25,'scooter',0,8.6993),(204,5,2.04349,48.8425,'scooter',0,9.2244),(205,4,2.70658,48.0184,'scooter',0,2.0344),(206,1,3.13284,48.8352,'scooter',0,9.2148),(207,1,2.74505,48.4903,'scooter',0,7.3992),(208,3,2.17541,49.174,'scooter',0,4.6497),(209,6,3.18541,48.0604,'scooter',1,0.3139),(210,6,2.35114,48.2603,'scooter',0,3.0614),(211,1,2.38244,48.2562,'scooter',0,9.3251),(212,4,2.27126,49.0758,'scooter',0,0.6512),(213,2,3.17402,48.4899,'scooter',0,4.4490),(214,3,2.77048,48.6889,'scooter',0,3.9896),(215,6,2.67037,48.0724,'scooter',1,3.5862),(216,1,2.56887,48.9347,'scooter',1,0.2068),(217,2,3.17673,48.6218,'scooter',0,3.5205),(218,5,3.43742,49.4741,'scooter',0,2.4632),(219,1,3.25296,49.248,'scooter',0,7.7407),(220,8,2.32907,48.5579,'scooter',0,8.9235),(221,7,2.91057,48.6971,'scooter',0,1.1913),(222,1,2.12092,48.2104,'scooter',0,8.7681),(223,1,2.59546,49.4526,'scooter',0,3.5067),(224,7,3.42044,48.5031,'scooter',1,1.7487),(225,3,2.45548,48.632,'scooter',0,7.1392),(226,8,3.15901,49.3721,'scooter',0,5.3353),(227,8,3.35709,49.2306,'scooter',0,4.7862),(228,2,3.06479,49.2928,'scooter',0,3.1317),(229,1,2.29014,49.3311,'scooter',1,6.2074),(230,5,3.21168,48.6554,'scooter',0,4.9532),(231,2,2.71829,49.2231,'scooter',0,7.5604),(232,7,2.0391,48.8307,'scooter',0,7.9306),(233,8,2.12557,49.1112,'scooter',0,0.4261),(234,7,2.21318,48.223,'scooter',0,1.3827),(235,6,2.43402,48.3364,'scooter',0,5.9319),(236,2,2.3787,48.9647,'scooter',0,3.6135),(237,4,2.11645,48.1367,'scooter',0,8.4115),(238,5,2.24214,48.2943,'scooter',0,8.9517),(239,8,2.36358,48.3828,'scooter',0,9.7842),(240,2,2.43991,49.0939,'scooter',0,6.4455),(241,8,3.02454,48.9677,'scooter',0,9.4755),(242,2,2.29597,48.5439,'scooter',0,0.1715),(243,4,2.09389,48.0668,'scooter',0,0.4119),(244,1,2.57241,48.9074,'scooter',1,5.8448),(245,3,2.99116,48.683,'scooter',0,1.0545),(246,6,3.35859,48.8931,'scooter',0,5.1238),(247,7,2.56516,48.8033,'scooter',0,1.2972),(248,1,2.96762,48.3073,'suitable for_kids',0,10.3821),(249,8,3.40561,48.0422,'suitable for_kids',0,7.0266),(250,7,2.64139,49.0044,'suitable for_kids',0,3.9578),(251,4,3.48467,49.1777,'suitable for_kids',1,5.3229),(252,3,2.03704,48.5132,'suitable for_kids',0,1.9627),(253,7,3.35579,49.3415,'suitable for_kids',0,1.4752),(254,3,2.28971,48.0561,'suitable for_kids',0,11.5640),(255,7,2.36148,49.1927,'suitable for_kids',0,10.9699),(256,6,2.7774,49.051,'suitable for_kids',1,8.0175),(257,3,3.32058,48.4788,'suitable for_kids',1,10.2012),(258,2,2.94983,48.7758,'suitable for_kids',0,10.9990),(259,3,2.09558,48.4448,'suitable for_kids',0,7.0972),(260,8,2.17855,49.0526,'suitable for_kids',0,8.1606),(261,7,2.13263,48.0209,'suitable for_kids',1,12.2486),(262,4,2.7389,48.0055,'suitable for_kids',0,8.6373),(263,7,2.14394,49.4677,'suitable for_kids',0,1.0801),(264,5,3.25366,48.4828,'suitable for_kids',0,6.8045),(265,4,2.66908,49.4742,'suitable for_kids',0,11.6290),(266,8,3.24671,48.5737,'suitable for_kids',0,11.8338),(267,4,2.81808,48.4434,'suitable for_kids',1,4.0364),(268,1,2.71202,48.161,'suitable for_kids',0,3.0197),(269,7,2.93573,48.7649,'suitable for_kids',0,10.7740),(270,3,3.18028,48.166,'suitable for_kids',0,7.9059),(271,5,2.03108,48.5291,'suitable for_kids',0,5.6113),(272,2,2.5322,48.5296,'suitable for_kids',0,5.5755),(273,2,2.44539,48.1554,'suitable for_kids',0,10.3187),(274,2,3.12786,48.0338,'suitable for_kids',1,2.7053),(275,5,3.36421,48.0182,'suitable for_kids',0,7.8083),(276,2,3.13926,48.6261,'suitable for_kids',1,9.8863);
/*!40000 ALTER TABLE `vehicle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visits`
--

DROP TABLE IF EXISTS `visits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `visits` (
  `rider_id` int NOT NULL,
  `stop_id` int NOT NULL,
  `num_of_visits` int DEFAULT NULL,
  `time_of_visit` datetime DEFAULT NULL,
  PRIMARY KEY (`rider_id`,`stop_id`),
  KEY `FK_to_stop_idx` (`stop_id`),
  KEY `FK_to_rider_idx` (`rider_id`),
  CONSTRAINT `FK_visits_to_rider` FOREIGN KEY (`rider_id`) REFERENCES `rider` (`rider_id`),
  CONSTRAINT `FK_visits_to_stop` FOREIGN KEY (`stop_id`) REFERENCES `point_of_interest` (`stop_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visits`
--

LOCK TABLES `visits` WRITE;
/*!40000 ALTER TABLE `visits` DISABLE KEYS */;
INSERT INTO `visits` VALUES (1,1,2,'2019-04-10 07:16:08'),(1,2,4,'2020-06-08 23:03:19'),(1,3,3,'2018-02-23 08:36:24'),(1,4,2,'2014-02-08 19:00:22'),(1,5,0,'2017-12-03 01:37:47'),(1,6,2,'2016-10-31 09:53:07'),(1,7,4,'2021-10-10 12:07:41'),(1,8,1,'2015-07-19 09:26:28'),(1,9,0,'2022-08-08 19:12:15'),(1,10,0,'2022-11-13 11:53:07'),(2,1,5,'2014-05-10 20:57:31'),(2,2,2,'2020-02-23 14:13:19'),(2,3,1,'2016-11-19 00:33:58'),(2,4,1,'2022-09-16 09:44:04'),(2,5,3,'2022-10-29 23:50:10'),(2,6,1,'2022-08-23 02:14:58'),(2,7,3,'2018-01-13 16:11:28'),(2,8,5,'2022-02-17 14:21:43'),(2,9,3,'2021-06-26 14:07:59'),(2,10,4,'2022-04-24 07:14:45'),(3,1,1,'2013-11-04 06:27:00'),(3,2,4,'2015-05-26 01:18:47'),(3,3,0,'2021-03-19 01:52:16'),(3,4,3,'2017-10-13 15:42:47'),(3,5,4,'2020-03-18 04:40:50'),(3,6,0,'2017-03-31 11:29:15'),(3,7,3,'2019-01-08 19:06:44'),(3,8,1,'2019-06-21 11:43:17'),(3,9,2,'2021-12-31 13:40:26'),(3,10,1,'2016-01-28 01:17:07'),(4,1,4,'2020-08-11 04:20:02'),(4,2,3,'2020-03-29 10:45:04'),(4,3,3,'2022-05-14 18:14:23'),(4,4,3,'2016-02-08 05:46:23'),(4,5,4,'2017-11-20 08:30:15'),(4,6,2,'2018-03-08 19:35:58'),(4,7,1,'2017-10-10 14:49:40'),(4,8,0,'2017-05-01 21:18:36'),(4,9,4,'2022-08-04 04:24:53'),(4,10,5,'2016-07-17 09:03:53'),(5,1,2,'2014-03-20 08:28:28'),(5,2,1,'2014-06-07 23:24:27'),(5,3,2,'2019-07-13 20:26:57'),(5,4,3,'2014-06-29 06:50:33'),(5,5,3,'2022-10-07 14:56:19'),(5,6,3,'2015-06-26 03:13:45'),(5,7,0,'2022-06-18 19:52:48'),(5,8,0,'2020-10-15 09:38:03'),(5,9,4,'2016-02-05 00:06:23'),(5,10,4,'2021-12-05 02:17:25'),(6,1,0,'2015-02-01 00:31:52'),(6,2,4,'2022-06-20 20:27:27'),(6,3,3,'2014-06-23 11:53:18'),(6,4,2,'2016-01-05 13:44:12'),(6,5,1,'2017-03-16 00:58:39'),(6,6,2,'2016-01-14 20:54:56'),(6,7,0,'2013-02-12 10:34:33'),(6,8,4,'2018-02-09 18:40:42'),(6,9,4,'2019-04-27 02:40:53'),(6,10,3,'2017-05-01 14:49:09'),(7,1,1,'2018-09-07 14:24:23'),(7,2,2,'2022-04-14 17:19:33'),(7,3,5,'2018-07-26 04:30:25'),(7,4,2,'2015-06-03 22:40:43'),(7,5,3,'2019-02-23 02:18:15'),(7,6,2,'2018-04-06 23:38:48'),(7,7,2,'2017-12-15 07:31:34'),(7,8,2,'2020-01-13 17:09:07'),(7,9,2,'2022-05-05 01:07:40'),(7,10,1,'2017-06-18 23:02:16'),(8,1,2,'2013-12-25 15:32:36'),(8,2,3,'2021-09-20 07:57:38'),(8,3,5,'2020-02-26 22:20:01'),(8,4,3,'2020-09-27 08:40:12'),(8,5,1,'2015-12-09 22:42:08'),(8,6,3,'2019-05-28 09:17:25'),(8,7,4,'2018-07-05 08:10:14'),(8,8,1,'2020-04-12 20:36:09'),(8,9,5,'2022-01-19 01:53:26'),(8,10,3,'2019-09-23 10:28:26'),(9,1,0,'2019-08-13 01:57:45'),(9,2,2,'2018-05-22 12:00:04'),(9,3,4,'2016-02-10 14:20:00'),(9,4,5,'2013-11-05 11:17:59'),(9,5,3,'2021-04-18 20:40:05'),(9,6,0,'2013-05-10 14:58:17'),(9,7,3,'2015-04-13 23:25:06'),(9,8,1,'2013-05-29 19:10:51'),(9,9,0,'2020-06-12 06:38:52'),(9,10,1,'2021-02-13 21:39:18'),(10,1,2,'2020-07-31 07:35:26'),(10,2,1,'2014-03-20 08:18:02'),(10,3,0,'2018-01-23 08:22:11'),(10,4,2,'2018-07-11 19:17:53'),(10,5,0,'2022-09-12 15:18:32'),(10,6,5,'2017-11-05 17:09:43'),(10,7,4,'2018-01-14 11:16:20'),(10,8,0,'2015-05-12 18:41:26'),(10,9,3,'2022-09-28 01:38:39'),(10,10,1,'2017-02-26 03:00:03');
/*!40000 ALTER TABLE `visits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'mydb'
--
/*!50003 DROP PROCEDURE IF EXISTS `parking_create` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `parking_create`(IN N1 INT)
BEGIN
SET @id = 1;
SET @comp_id = 1;
SET @temp = FLOOR(RAND()*2 + 1);
IF (@temp = 1) THEN
    SET @parking_type = 'conventional';
ELSEIF (@temp = 2) THEN 
    SET @parking_type = 'electric';
END IF;

WHILE @comp_id <= (SELECT MAX(company_id) FROM company) DO
SET @num_of_stations = N1 div (SELECT MAX(company_id) FROM company);
WHILE @num_of_stations > 0 DO
    INSERT INTO `mydb`.`parking_station`(`station_id`,`company_id`,`station_longtitude`,`station_latitude`,`station availiability`,`station_type`)
    VALUES (@id, @comp_id, RAND()*1.5+2, RAND()*1.5+48, ROUND(RAND()*10), @parking_type);
    SET @num_of_stations = @num_of_stations -1;
    SET @id = @id + 1;
    
    SET @temp = FLOOR(RAND()*2 + 1);
    IF (@temp = 1) THEN
        SET @parking_type = 'conventional';
    ELSEIF (@temp = 2) THEN 
        SET @parking_type = 'electric';
    END IF;
END WHILE;
SET @comp_id = @comp_id + 1;    
SET @id = 1;
END WHILE;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `payment_create` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `payment_create`(IN N1 INT)
BEGIN
SET @id = 1;
SET @comp_id = 1;

SET @temp = FLOOR(RAND()*3 + 1);
IF (@temp = 1) THEN
    SET @payment_method = 'cash';
ELSEIF (@temp = 2) THEN 
    SET @payment_method = 'card';
ELSE
    SET @payment_method = 'bitcoin';
END IF;

WHILE @comp_id <= (SELECT MAX(company_id) FROM company) DO
SET @purchase = N1 div (SELECT MAX(company_id) FROM company);
WHILE @purchase > 0 DO
    INSERT INTO `mydb`.`payment`(`payment_id`,`company_id`,`rider_id`,`payment_method`,`total_charge`)
    VALUES (@id, @comp_id, FLOOR(RAND()*(SELECT MAX(rider_id) FROM rider)) + 1, @payment_method, rand()*20 + 10);
    SET @purchase = @purchase -1;
    SET @id = @id + 1;
    
    SET @temp = FLOOR(RAND()*3 + 1);
    IF (@temp = 1) THEN
        SET @payment_method = 'cash';
    ELSEIF (@temp = 2) THEN 
        SET @payment_method = 'card';
    ELSE
        SET @payment_method = 'bitcoin';
    END IF;
END WHILE;
SET @comp_id = @comp_id + 1;    
SET @id = 1;
END WHILE;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `permission_create` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `permission_create`()
BEGIN
SET @comp_id = 1;
SET @center_id = 1;
WHILE @comp_id <= (SELECT MAX(company_id) FROM company) DO
SET @permission = FLOOR(RAND()*4);
WHILE @permission > 0 DO
INSERT INTO `mydb`.`permission`(`company_id`,`center_id`,`contract_date`,`data_price`)
VALUES (@comp_id ,@center_id, (select convert_tz(current_date - interval (rand() * 60 * 60 * 24 * 365 * 10) second,'+00:00','SYSTEM') as random_time), rand()*2000);
SET @permission = @permission - 1;
SET @center_id = @center_id +1;
END WHILE;
SET @comp_id = @comp_id + 1;    
SET @center_id = 1;
END WHILE;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `rents_create` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `rents_create`(IN N1 INT)
BEGIN
SET @vehicle_id = 1;
SET @rider_id = 1;

WHILE @rider_id <= (SELECT MAX(rider_id) FROM rider) DO
SET @rental = N1 div (SELECT MAX(rider_id) FROM rider);
WHILE @rental > 0 DO
    INSERT INTO `mydb`.`rents`(`vehicle_id`,`rider_id`,`rental_duration`,`rental_date`)
    VALUES (@vehicle_id, @rider_id,rand()*120,
    (select convert_tz(current_date - interval (rand() * 60 * 60 * 24 * 365 * 10) second,'+00:00','SYSTEM') as random_time));
    SET @rental = @rental -1;
    SET @vehicle_id = @vehicle_id + 1;
END WHILE;
SET @rider_id = @rider_id + 1;    
SET @vehicle_id = 1;
END WHILE;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `review_create` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `review_create`(IN N1 INT)
BEGIN
SET @vehicle_id = 1;
SET @rider_id = 1;

WHILE @rider_id <= (SELECT MAX(rider_id) FROM rider) DO
SET @review = N1 div (SELECT MAX(rider_id) FROM rider);
WHILE @review > 0 DO
    INSERT INTO `mydb`.`review`(`rider_id`,`vehicle_id`,`rating`,`review_date`)
    VALUES (@rider_id, @vehicle_id, rand()*10 ,(select convert_tz(current_date - interval (rand() * 60 * 60 * 24 * 365 * 10) second,'+00:00','SYSTEM') as random_time));
    SET @review = @review -1;
    SET @vehicle_id = @vehicle_id + 1;
END WHILE;
SET @rider_id = @rider_id + 1;    
SET @vehicle_id = 1;
END WHILE;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `vehicle_create` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `vehicle_create`(IN N1 INT, IN N2 INT, IN N3 INT, IN N4 INT)
BEGIN
    SET @i = 1;
  WHILE @i < N1 DO
    INSERT INTO `mydb`.`vehicle`(`company_id`,`vehicle_longtitude`,`vehicle_latitude`,`vehicle_type`,`vehicle_is_available`,`vehicle_price`)
    VALUES (FLOOR(RAND()*(SELECT MAX(company_id) FROM company)) + 1, RAND()*1.5+2, RAND()*1.5+48, 'electric bicycle', ROUND(RAND()*1 - 0.3), RAND()*20);
    SET @i = @i + 1;
  END WHILE;
  SET @i = 1;
  WHILE @i < N2 DO
    INSERT INTO `mydb`.`vehicle`(`company_id`,`vehicle_longtitude`,`vehicle_latitude`,`vehicle_type`,`vehicle_is_available`,`vehicle_price`)
    VALUES (FLOOR(RAND()*(SELECT MAX(company_id) FROM company)) + 1, RAND()*1.5+2, RAND()*1.5+48, 'conventional bicycle', ROUND(RAND()*1 - 0.3), RAND()*15);
    SET @i = @i + 1;
  END WHILE;
  SET @i = 1;
  WHILE @i < N3 DO
    INSERT INTO `mydb`.`vehicle`(`company_id`,`vehicle_longtitude`,`vehicle_latitude`,`vehicle_type`,`vehicle_is_available`,`vehicle_price`)
    VALUES (FLOOR(RAND()*(SELECT MAX(company_id) FROM company)) + 1, RAND()*1.5+2, RAND()*1.5+48, 'scooter', ROUND(RAND()*1 - 0.3), RAND()*10);
    SET @i = @i + 1;
  END WHILE;
  SET @i = 1;
  WHILE @i < N4 DO
    INSERT INTO `mydb`.`vehicle`(`company_id`,`vehicle_longtitude`,`vehicle_latitude`,`vehicle_type`,`vehicle_is_available`,`vehicle_price`)
    VALUES (FLOOR(RAND()*(SELECT MAX(company_id) FROM company)) + 1, RAND()*1.5+2, RAND()*1.5+48, 'suitable for_kids ', ROUND(RAND()*1 - 0.3), RAND()*12.5);
    SET @i = @i + 1;
  END WHILE;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `visits_create` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `visits_create`(IN N1 INT)
BEGIN
SET @stop_id = 1;
SET @rider_id = 1;

WHILE @rider_id <= (SELECT MAX(rider_id) FROM rider) DO
SET @visits = N1 div (SELECT MAX(rider_id) FROM rider);
WHILE @visits > 0 DO
    INSERT INTO `mydb`.`visits`(`rider_id`,`stop_id`,`num_of_visits`,`time_of_visit`)
    VALUES (@rider_id, @stop_id, rand()*5 ,(select convert_tz(current_date - interval (rand() * 60 * 60 * 24 * 365 * 10) second,'+00:00','SYSTEM') as random_time));
    SET @visits = @visits -1;
    SET @stop_id = @stop_id + 1;
END WHILE;
SET @rider_id = @rider_id + 1;    
SET @stop_id = 1;
END WHILE;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `company_research`
--

/*!50001 DROP VIEW IF EXISTS `company_research`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `company_research` AS select `c`.`company_id` AS `company_id`,`c`.`company_name` AS `company_name`,`rc`.`center_name` AS `center_name`,`rc`.`type_research` AS `type_research` from ((`company` `c` join `permission` `p` on((`c`.`company_id` = `p`.`company_id`))) join `research_center` `rc` on((`rc`.`center_id` = `p`.`center_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `company_stations`
--

/*!50001 DROP VIEW IF EXISTS `company_stations`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `company_stations` AS select `c`.`company_id` AS `company_id`,`c`.`company_name` AS `company_name`,`s`.`station_id` AS `station_id`,`s`.`station_type` AS `station_type` from (`company` `c` join `parking_station` `s`) where (`c`.`company_id` = `s`.`company_id`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `company_vehicles`
--

/*!50001 DROP VIEW IF EXISTS `company_vehicles`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `company_vehicles` AS select `c`.`company_id` AS `company_id`,`c`.`company_name` AS `company_name`,`v`.`vehicle_id` AS `vehicle_id`,`v`.`vehicle_type` AS `vehicle_type` from (`company` `c` join `vehicle` `v`) where (`c`.`company_id` = `v`.`company_id`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `info`
--

/*!50001 DROP VIEW IF EXISTS `info`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `info` AS select concat(`rider`.`rider_id`,': ',`rider`.`first_name`,' ',`rider`.`last_name`) AS `info` from `rider` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `info_of_riders_who_rated`
--

/*!50001 DROP VIEW IF EXISTS `info_of_riders_who_rated`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `info_of_riders_who_rated` AS select concat(`rd`.`first_name`,' ',`rd`.`last_name`) AS `full_name`,`rd`.`age` AS `age`,`rw`.`rating` AS `rating` from (`rider` `rd` join `review` `rw`) where (`rd`.`rider_id` = `rw`.`rider_id`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `total_payment`
--

/*!50001 DROP VIEW IF EXISTS `total_payment`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `total_payment` AS select `r`.`rider_id` AS `rider_id`,sum(`pm`.`total_charge`) AS `total_payment` from (`rider` `r` join `payment` `pm` on((`r`.`rider_id` = `pm`.`rider_id`))) */;
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

-- Dump completed on 2022-12-20 22:22:20
