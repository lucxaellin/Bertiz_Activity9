CREATE DATABASE  IF NOT EXISTS `sk_bombon_barangay_management_system` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `sk_bombon_barangay_management_system`;
-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: sk_bombon_barangay_management_system
-- ------------------------------------------------------
-- Server version	8.0.42

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
-- Temporary view structure for view `assistance_status_non_updatable`
--

DROP TABLE IF EXISTS `assistance_status_non_updatable`;
/*!50001 DROP VIEW IF EXISTS `assistance_status_non_updatable`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `assistance_status_non_updatable` AS SELECT 
 1 AS `request_type`,
 1 AS `status`,
 1 AS `total_requests`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `budget_allocation_non_updatable`
--

DROP TABLE IF EXISTS `budget_allocation_non_updatable`;
/*!50001 DROP VIEW IF EXISTS `budget_allocation_non_updatable`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `budget_allocation_non_updatable` AS SELECT 
 1 AS `allocation_type`,
 1 AS `total_budget`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `event_schedule_non_updatable`
--

DROP TABLE IF EXISTS `event_schedule_non_updatable`;
/*!50001 DROP VIEW IF EXISTS `event_schedule_non_updatable`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `event_schedule_non_updatable` AS SELECT 
 1 AS `event_name`,
 1 AS `event_date`,
 1 AS `location`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `households`
--

DROP TABLE IF EXISTS `households`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `households` (
  `household_id` int NOT NULL AUTO_INCREMENT,
  `household_head_id` int NOT NULL,
  `address` text NOT NULL,
  PRIMARY KEY (`household_id`),
  KEY `household_head_id` (`household_head_id`),
  CONSTRAINT `households_ibfk_1` FOREIGN KEY (`household_head_id`) REFERENCES `residents` (`resident_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `households`
--

LOCK TABLES `households` WRITE;
/*!40000 ALTER TABLE `households` DISABLE KEYS */;
INSERT INTO `households` VALUES (1,1,'Purok 1, Barangay Bombon'),(2,2,'Purok 2, Barangay Bombon'),(3,3,'Purok 3, Barangay Bombon'),(4,4,'Purok 4, Barangay Bombon'),(5,5,'Purok 5, Barangay Bombon'),(6,6,'Purok 6, Barangay Bombon'),(7,7,'Purok 7, Barangay Bombon'),(8,8,'Purok 8, Barangay Bombon'),(9,9,'Purok 9, Barangay Bombon'),(10,10,'Purok 10, Barangay Bombon');
/*!40000 ALTER TABLE `households` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `resident_statistics`
--

DROP TABLE IF EXISTS `resident_statistics`;
/*!50001 DROP VIEW IF EXISTS `resident_statistics`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `resident_statistics` AS SELECT 
 1 AS `average_age`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `resident_voters_updatable`
--

DROP TABLE IF EXISTS `resident_voters_updatable`;
/*!50001 DROP VIEW IF EXISTS `resident_voters_updatable`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `resident_voters_updatable` AS SELECT 
 1 AS `resident_id`,
 1 AS `first_name`,
 1 AS `last_name`,
 1 AS `birthdate`,
 1 AS `gender`,
 1 AS `address`,
 1 AS `contact_number`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `residents`
--

DROP TABLE IF EXISTS `residents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `residents` (
  `resident_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `birthdate` date NOT NULL,
  `gender` enum('Male','Female','Other') NOT NULL,
  `address` text NOT NULL,
  `contact_number` varchar(15) NOT NULL,
  `voter_status` enum('Registered','Not Registered') NOT NULL DEFAULT 'Not Registered',
  `is_sk_member` tinyint(1) NOT NULL DEFAULT '0',
  `sk_position` varchar(50) DEFAULT NULL,
  `sk_term_start` date DEFAULT NULL,
  `sk_term_end` date DEFAULT NULL,
  PRIMARY KEY (`resident_id`),
  UNIQUE KEY `contact_number` (`contact_number`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `residents`
--

LOCK TABLES `residents` WRITE;
/*!40000 ALTER TABLE `residents` DISABLE KEYS */;
INSERT INTO `residents` VALUES (1,'Edward','Mulles','2005-06-10','Male','Purok 1, Barangay Bombon','09123456780','Registered',1,NULL,NULL,NULL),(2,'Xionne Leony','Baraquel','2006-09-15','Female','Purok 2, Barangay Bombon','09234567881','Registered',1,NULL,NULL,NULL),(3,'Vanessa','Valeros','2007-11-20','Female','Purok 3, Barangay Bombon','09345678982','Registered',1,NULL,NULL,NULL),(4,'Albert','Baraquel','2005-08-05','Male','Purok 4, Barangay Bombon','09456789083','Registered',1,NULL,NULL,NULL),(5,'Efraim','Cabrera','2006-04-25','Male','Purok 5, Barangay Bombon','09567890184','Registered',1,NULL,NULL,NULL),(6,'Maria Isabel','Baraquiel','2007-12-30','Female','Purok 6, Barangay Bombon','09678901285','Registered',1,NULL,NULL,NULL),(7,'Edcarl','Belleza','2004-02-18','Male','Purok 7, Barangay Bombon','09789012386','Registered',1,NULL,NULL,NULL),(8,'Hezekia','Guiriba','2006-10-22','Male','Purok 8, Barangay Bombon','09890123487','Registered',1,NULL,NULL,NULL),(9,'Leslie','Climaco','2005-03-29','Female','Purok 9, Barangay Bombon','09901234588','Registered',1,NULL,NULL,NULL),(10,'Jeremy','Borlagdatan','2007-07-14','Male','Purok 10, Barangay Bombon','09111234589','Registered',1,NULL,NULL,NULL),(13,'Zaro','Quintanilla','2007-07-14','Male','Purok 10, Barangay Bombon','09111212345','Registered',1,NULL,NULL,NULL),(14,'Maximus','Beguiras','2003-12-16','Male','Purok 1, Barangay Bombon','09456815788','Registered',1,NULL,NULL,NULL),(15,'Edelyza','Belleza','2012-05-20','Female','Brgy. Bombon, Tabaco City','09234567890','Registered',0,NULL,NULL,NULL),(17,'Dniella Mae','Ogena','2013-06-21','Female','Brgy. Bombon, Tabaco City','09154567890','Not Registered',0,NULL,NULL,NULL);
/*!40000 ALTER TABLE `residents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sk_assistance_requests`
--

DROP TABLE IF EXISTS `sk_assistance_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sk_assistance_requests` (
  `request_id` int NOT NULL AUTO_INCREMENT,
  `resident_id` int NOT NULL,
  `request_type` enum('Financial','Educational','Medical','Sports','Other') NOT NULL,
  `status` enum('Pending','Approved','Rejected') NOT NULL DEFAULT 'Pending',
  `request_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `sk_official_id` int NOT NULL,
  PRIMARY KEY (`request_id`),
  KEY `resident_id` (`resident_id`),
  KEY `sk_official_id` (`sk_official_id`),
  CONSTRAINT `sk_assistance_requests_ibfk_1` FOREIGN KEY (`resident_id`) REFERENCES `residents` (`resident_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `sk_assistance_requests_ibfk_2` FOREIGN KEY (`sk_official_id`) REFERENCES `sk_officials` (`sk_official_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sk_assistance_requests`
--

LOCK TABLES `sk_assistance_requests` WRITE;
/*!40000 ALTER TABLE `sk_assistance_requests` DISABLE KEYS */;
INSERT INTO `sk_assistance_requests` VALUES (1,5,'Financial','Approved','2024-02-15 10:30:00',3),(2,2,'Educational','Approved','2024-02-10 14:20:00',1),(3,3,'Medical','Pending','2024-02-18 08:45:00',5),(4,4,'Sports','Rejected','2024-02-12 16:00:00',7),(5,5,'Other','Pending','2024-02-20 11:10:00',6),(6,6,'Financial','Approved','2024-02-05 09:00:00',2),(7,7,'Educational','Pending','2024-02-17 13:30:00',4),(8,8,'Medical','Rejected','2024-02-14 12:15:00',9),(16,1,'Educational','Pending','2025-05-15 17:51:43',1);
/*!40000 ALTER TABLE `sk_assistance_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sk_budget`
--

DROP TABLE IF EXISTS `sk_budget`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sk_budget` (
  `budget_id` int NOT NULL AUTO_INCREMENT,
  `allocation_type` varchar(50) DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL,
  `allocation_date` date NOT NULL,
  `sk_official_id` int NOT NULL,
  PRIMARY KEY (`budget_id`),
  KEY `sk_official_id` (`sk_official_id`),
  CONSTRAINT `sk_budget_ibfk_1` FOREIGN KEY (`sk_official_id`) REFERENCES `sk_officials` (`sk_official_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sk_budget`
--

LOCK TABLES `sk_budget` WRITE;
/*!40000 ALTER TABLE `sk_budget` DISABLE KEYS */;
INSERT INTO `sk_budget` VALUES (1,'Sports',30000.00,'2025-01-15',1),(2,'Education',50000.00,'2025-02-10',2),(3,'Health',25000.00,'2025-03-20',3),(4,'Environmental',20000.00,'2025-04-15',4),(5,'Other',15000.00,'2025-05-25',5),(6,'Sports',40000.00,'2025-06-30',6),(7,'Education',55000.00,'2025-07-10',7),(8,'Health',27000.00,'2025-08-05',8),(9,'Environmental',22000.00,'2025-09-15',9),(10,'Other',12000.00,'2025-10-20',10),(11,'Sports',20000.00,'2025-05-15',1),(14,'TBA',20000.00,'2025-05-17',1);
/*!40000 ALTER TABLE `sk_budget` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sk_events`
--

DROP TABLE IF EXISTS `sk_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sk_events` (
  `event_id` int NOT NULL AUTO_INCREMENT,
  `event_name` varchar(100) NOT NULL,
  `event_date` date NOT NULL,
  `location` text NOT NULL,
  `organizer_id` int NOT NULL,
  PRIMARY KEY (`event_id`),
  KEY `organizer_id` (`organizer_id`),
  CONSTRAINT `sk_events_ibfk_1` FOREIGN KEY (`organizer_id`) REFERENCES `sk_officials` (`sk_official_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sk_events`
--

LOCK TABLES `sk_events` WRITE;
/*!40000 ALTER TABLE `sk_events` DISABLE KEYS */;
INSERT INTO `sk_events` VALUES (1,'Clean-up Drive','2025-06-01','Barangay Plaza',1),(2,'Youth Night','2025-07-15','Barangay Hall',2),(3,'Volunteer Day','2025-08-20','Community Center',3),(4,'Christmas Gift-Giving','2025-12-24','Barangay Hall',4),(5,'Basketball League Finals','2025-09-05','Barangay Covered Court',5),(6,'Coding Workshop','2025-10-10','Barangay IT Center',6),(7,'Tree Planting','2025-11-03','Eco Park',7),(8,'Blood Donation Drive','2025-12-10','Health Center',8),(9,'Job Fair','2026-01-20','Multipurpose Hall',9),(12,'claygo go go','2025-05-17','Camalig',1);
/*!40000 ALTER TABLE `sk_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sk_officials`
--

DROP TABLE IF EXISTS `sk_officials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sk_officials` (
  `sk_official_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `position` enum('SK Chairman','SK Kagawad','SK Secretary','SK Treasurer') NOT NULL,
  `term_start` date NOT NULL,
  `term_end` date NOT NULL,
  `password` varchar(255) NOT NULL DEFAULT 'default123',
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sk_official_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sk_officials`
--

LOCK TABLES `sk_officials` WRITE;
/*!40000 ALTER TABLE `sk_officials` DISABLE KEYS */;
INSERT INTO `sk_officials` VALUES (1,'Renz Ramil','Marifosque','SK Chairman','2023-01-01','2026-12-31','123','renz@gmail.com'),(2,'John Martin','Diaz','SK Kagawad','2023-01-01','2026-12-31','default123','John@gmail.com'),(3,'Elaine Mae','Bertiz','SK Kagawad','2023-01-01','2026-12-31','default123','Elaine@gmail.com'),(4,'John Christian','Uy','SK Kagawad','2023-01-01','2026-12-31','default123','JCuy@gmail.com'),(5,'Keisha','Primavera','SK Kagawad','2023-01-01','2026-12-31','default123','Kiesha@gmail.com'),(6,'Raiza Alliana','Escuro','SK Kagawad','2023-01-01','2026-12-31','default123','Riaza@gmail.com'),(7,'Dianna Mae','Bobiles','SK Kagawad','2023-01-01','2026-12-31','default123','Dianna@gmail.com'),(8,'Michael','Romano','SK Kagawad','2023-01-01','2026-12-31','default123','Michael@gmail.com'),(9,'Chloe','Bornilla','SK Secretary','2023-01-01','2026-12-31','default123','Chloe@gmail.com'),(10,'Ma. Cristina B.','Benitez','SK Treasurer','2023-01-01','2026-12-31','default123','Benitez@gmail.com');
/*!40000 ALTER TABLE `sk_officials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sk_projects`
--

DROP TABLE IF EXISTS `sk_projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sk_projects` (
  `project_id` int NOT NULL AUTO_INCREMENT,
  `project_name` varchar(100) NOT NULL,
  `description` text,
  `project_date` date NOT NULL,
  `location` text NOT NULL,
  `budget` decimal(10,2) NOT NULL,
  `organizer_id` int NOT NULL,
  PRIMARY KEY (`project_id`),
  KEY `organizer_id` (`organizer_id`),
  CONSTRAINT `sk_projects_ibfk_1` FOREIGN KEY (`organizer_id`) REFERENCES `sk_officials` (`sk_official_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sk_projects`
--

LOCK TABLES `sk_projects` WRITE;
/*!40000 ALTER TABLE `sk_projects` DISABLE KEYS */;
INSERT INTO `sk_projects` VALUES (1,'Youth Camp Seminar','A seminar on leadership and youth empowerment','2025-04-15','Barangay Hall',50000.00,1),(2,'Basketball Tournament','A sports event for youth engagement','2025-05-20','Barangay Covered Court',30000.00,2),(3,'Community Outreach Program','Helping local families in need','2025-06-10','Barangay Hall',20000.00,3),(4,'Environmental Awareness Campaign','Seminar on waste management','2025-07-05','Multipurpose Hall',25000.00,4),(5,'Music Festival','Talent show for local youth','2025-08-12','Plaza Grounds',40000.00,5),(6,'Tree Planting Activity','Greener Barangay Initiative','2025-09-03','Bombon Garden',15000.00,6),(7,'Coding Bootcamp','Basic Computer Training for the youth','2025-10-07','Barangay Hall',60000.00,7),(8,'Mental Health Awareness Seminar','Talks on stress management','2025-11-20','Barangay Hall',18000.00,8),(9,'SK Fun Run','Promoting health and fitness','2025-12-05','Barangay Plaza',22000.00,9),(11,'runners','running','2025-05-17','hulogan manito',50000.00,1);
/*!40000 ALTER TABLE `sk_projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `sk_projects_summary_updatable`
--

DROP TABLE IF EXISTS `sk_projects_summary_updatable`;
/*!50001 DROP VIEW IF EXISTS `sk_projects_summary_updatable`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `sk_projects_summary_updatable` AS SELECT 
 1 AS `project_id`,
 1 AS `project_name`,
 1 AS `description`,
 1 AS `project_date`,
 1 AS `location`,
 1 AS `organizer_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'sk_bombon_barangay_management_system'
--

--
-- Dumping routines for database 'sk_bombon_barangay_management_system'
--
/*!50003 DROP FUNCTION IF EXISTS `gender_voter_summary` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `gender_voter_summary`() RETURNS varchar(100) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
    DECLARE total_male INT;
    DECLARE total_female INT;
    DECLARE summary VARCHAR(100);

    -- Get male voters count
    SELECT COUNT(*) INTO total_male 
    FROM residents 
    WHERE voter_status = 'Registered' AND gender = 'Male';

    -- Get female voters count
    SELECT COUNT(*) INTO total_female 
    FROM residents 
    WHERE voter_status = 'Registered' AND gender = 'Female';

    -- Format result as a summary
    SET summary = CONCAT('Male Voters: ', total_male, ', Female Voters: ', total_female);

    RETURN summary;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `get_average_age` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `get_average_age`() RETURNS double
    DETERMINISTIC
BEGIN
    DECLARE avg_age DOUBLE;
    SELECT AVG(YEAR(CURDATE()) - YEAR(birthdate)) INTO avg_age FROM residents;
    RETURN avg_age;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `get_total_registered_voters` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `get_total_registered_voters`() RETURNS int
    DETERMINISTIC
BEGIN
    DECLARE total INT;

    SELECT COUNT(*) INTO total 
    FROM residents 
    WHERE voter_status = 'Registered';

    RETURN total;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `get_total_residents` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `get_total_residents`() RETURNS int
    DETERMINISTIC
BEGIN
    DECLARE total INT;
    SELECT COUNT(*) INTO total FROM residents;
    RETURN total;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `get_voter_status` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `get_voter_status`(res_id INT) RETURNS char(15) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
    DECLARE status CHAR(15);
    
    SELECT voter_status 
    INTO status
    FROM residents 
    WHERE resident_id = res_id
    LIMIT 1;

    RETURN COALESCE(status, 'Unknown');
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `is_sk_eligible` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `is_sk_eligible`(resident_id INT) RETURNS tinyint(1)
    DETERMINISTIC
BEGIN
    DECLARE age INT;

    SELECT YEAR(CURDATE()) - YEAR(birthdate) 
    INTO age 
    FROM residents 
    WHERE residents.resident_id = resident_id;

    RETURN age BETWEEN 13 AND 30;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `approveassistancerequest_without_cursor` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `approveassistancerequest_without_cursor`(IN request_id INT)
BEGIN
    UPDATE sk_assistance_requests
    SET status = 'Approved'
    WHERE sk_assistance_requests.request_id = request_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `check_sk_eligibility` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `check_sk_eligibility`()
BEGIN
    SELECT resident_id, first_name, last_name, is_sk_eligible(resident_id) AS eligibility  
    FROM residents;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `gender_voter_summary` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `gender_voter_summary`()
BEGIN
    DECLARE male_count INT;
    DECLARE female_count INT;

    -- Get total male voters
    SELECT COUNT(*) INTO male_count 
    FROM residents 
    WHERE voter_status = 'Registered' AND gender = 'Male';

    -- Get total female voters
    SELECT COUNT(*) INTO female_count 
    FROM residents 
    WHERE voter_status = 'Registered' AND gender = 'Female';

    -- Display the results
    SELECT male_count AS total_male_voters, female_count AS total_female_voters;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getprojectbudgets_cursor` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getprojectbudgets_cursor`()
BEGIN
    DECLARE done INT DEFAULT 0;
    DECLARE project_name VARCHAR(100);
    DECLARE budget_amount DECIMAL(10,2);
    DECLARE cur CURSOR FOR SELECT project_name, budget FROM sk_projects;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

    OPEN cur;

    read_loop: LOOP
        FETCH cur INTO project_name, budget_amount;
        IF done THEN
            LEAVE read_loop;
        END IF;
        SELECT project_name AS Project, budget_amount AS Budget;
    END LOOP;

    CLOSE cur;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertnewresident_without_cursor` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertnewresident_without_cursor`(
    IN first_name VARCHAR(50), 
    IN last_name VARCHAR(50), 
    IN birthdate DATE, 
    IN gender ENUM('Male', 'Female', 'Other'), 
    IN address TEXT, 
    IN contact_number VARCHAR(15), 
    IN voter_status ENUM('Registered', 'Not Registered')
)
BEGIN
    INSERT INTO residents (first_name, last_name, birthdate, gender, address, contact_number, voter_status)
    VALUES (first_name, last_name, birthdate, gender, address, contact_number, voter_status);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `listallresidents_cursor` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `listallresidents_cursor`()
BEGIN
    DECLARE done INT DEFAULT 0;
    DECLARE res_name VARCHAR(100);
    DECLARE cur CURSOR FOR SELECT CONCAT(first_name, ' ', last_name) FROM residents;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

    OPEN cur;

    read_loop: LOOP
        FETCH cur INTO res_name;
        IF done THEN
            LEAVE read_loop;
        END IF;
        SELECT res_name AS Resident_Name;
    END LOOP;

    CLOSE cur;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `purok_summary` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `purok_summary`(IN purok_name VARCHAR(50))
BEGIN  
    SELECT purok_name AS Purok,  
           count_residents_by_purok(purok_name) AS TotalResidents,  
           get_oldest_resident() AS OldestResident;  
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `show_voter_summary` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `show_voter_summary`()
BEGIN
    DECLARE total_registered INT;
    DECLARE male_count INT;
    DECLARE female_count INT;

    -- Get total registered voters
    SELECT COUNT(*) INTO total_registered 
    FROM residents 
    WHERE voter_status = 'Registered';

    -- Get total male voters
    SELECT COUNT(*) INTO male_count 
    FROM residents 
    WHERE voter_status = 'Registered' AND gender = 'Male';

    -- Get total female voters
    SELECT COUNT(*) INTO female_count 
    FROM residents 
    WHERE voter_status = 'Registered' AND gender = 'Female';

    -- Display everything together
    SELECT 
        total_registered AS total_registered_voters,
        male_count AS total_male_voters,
        female_count AS total_female_voters;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `voter_gender_summary` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `voter_gender_summary`()
BEGIN
    DECLARE male_count INT;
    DECLARE female_count INT;

    -- Get total male voters
    SELECT COUNT(*) INTO male_count 
    FROM residents 
    WHERE voter_status = 'Registered' AND gender = 'Male';

    -- Get total female voters
    SELECT COUNT(*) INTO female_count 
    FROM residents 
    WHERE voter_status = 'Registered' AND gender = 'Female';

    -- Display gender voter summary
    SELECT 
        male_count AS total_male_voters,
        female_count AS total_female_voters;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `assistance_status_non_updatable`
--

/*!50001 DROP VIEW IF EXISTS `assistance_status_non_updatable`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `assistance_status_non_updatable` AS select `sk_assistance_requests`.`request_type` AS `request_type`,`sk_assistance_requests`.`status` AS `status`,count(0) AS `total_requests` from `sk_assistance_requests` group by `sk_assistance_requests`.`request_type`,`sk_assistance_requests`.`status` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `budget_allocation_non_updatable`
--

/*!50001 DROP VIEW IF EXISTS `budget_allocation_non_updatable`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `budget_allocation_non_updatable` AS select `sk_budget`.`allocation_type` AS `allocation_type`,sum(`sk_budget`.`amount`) AS `total_budget` from `sk_budget` group by `sk_budget`.`allocation_type` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `event_schedule_non_updatable`
--

/*!50001 DROP VIEW IF EXISTS `event_schedule_non_updatable`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `event_schedule_non_updatable` AS select `sk_events`.`event_name` AS `event_name`,`sk_events`.`event_date` AS `event_date`,`sk_events`.`location` AS `location` from `sk_events` order by `sk_events`.`event_date` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `resident_statistics`
--

/*!50001 DROP VIEW IF EXISTS `resident_statistics`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `resident_statistics` AS select `get_average_age`() AS `average_age` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `resident_voters_updatable`
--

/*!50001 DROP VIEW IF EXISTS `resident_voters_updatable`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `resident_voters_updatable` AS select `residents`.`resident_id` AS `resident_id`,`residents`.`first_name` AS `first_name`,`residents`.`last_name` AS `last_name`,`residents`.`birthdate` AS `birthdate`,`residents`.`gender` AS `gender`,`residents`.`address` AS `address`,`residents`.`contact_number` AS `contact_number` from `residents` where (`residents`.`voter_status` = 'Registered') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `sk_projects_summary_updatable`
--

/*!50001 DROP VIEW IF EXISTS `sk_projects_summary_updatable`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `sk_projects_summary_updatable` AS select `sk_projects`.`project_id` AS `project_id`,`sk_projects`.`project_name` AS `project_name`,`sk_projects`.`description` AS `description`,`sk_projects`.`project_date` AS `project_date`,`sk_projects`.`location` AS `location`,`sk_projects`.`organizer_id` AS `organizer_id` from `sk_projects` */;
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

-- Dump completed on 2025-05-21 12:28:06
