CREATE DATABASE  IF NOT EXISTS `FPLHandbook` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `FPLHandbook`;
-- MySQL dump 10.13  Distrib 8.0.16, for macos10.14 (x86_64)
--
-- Host: 127.0.0.1    Database: FPLHandbook
-- ------------------------------------------------------
-- Server version	5.7.26

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Generic_User`
--

DROP TABLE IF EXISTS `Generic_User`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Generic_User` (
  `UserId` int(11) NOT NULL AUTO_INCREMENT,
  `UserName` varchar(25) NOT NULL,
  `PassKey` varchar(25) NOT NULL,
  `UserType` enum('User','Admin') DEFAULT NULL,
  PRIMARY KEY (`UserId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Generic_User`
--

LOCK TABLES `Generic_User` WRITE;
/*!40000 ALTER TABLE `Generic_User` DISABLE KEYS */;
INSERT INTO `Generic_User` VALUES (1,'jake','howard','Admin'),(2,'utkarsh','shroff','Admin');
/*!40000 ALTER TABLE `Generic_User` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Matches`
--

DROP TABLE IF EXISTS `Matches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Matches` (
  `MatchId` int(11) NOT NULL AUTO_INCREMENT,
  `GameWeek` int(11) NOT NULL,
  `HomeTeam` varchar(50) NOT NULL,
  `AwayTeam` varchar(50) NOT NULL,
  `HomeScore` int(11) NOT NULL,
  `AwayScore` int(11) NOT NULL,
  PRIMARY KEY (`MatchId`),
  KEY `team1_fk` (`HomeTeam`),
  KEY `team2_fk` (`AwayTeam`),
  CONSTRAINT `team1_fk` FOREIGN KEY (`HomeTeam`) REFERENCES `Team` (`TeamId`) ON UPDATE CASCADE,
  CONSTRAINT `team2_fk` FOREIGN KEY (`AwayTeam`) REFERENCES `Team` (`TeamId`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=381 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Matches`
--

LOCK TABLES `Matches` WRITE;
/*!40000 ALTER TABLE `Matches` DISABLE KEYS */;
INSERT INTO `Matches` VALUES (1,1,'Arsenal','Leicester City',-1,-1),(2,1,'Watford','Liverpool',-1,-1),(3,1,'Chelsea','Burnley',-1,-1),(4,1,'Crystal Palace','Huddersfield',-1,-1),(5,1,'Everton','Stoke City',-1,-1),(6,1,'Southampton','Swansea',-1,-1),(7,1,'West Bromwich Albion','Bournemouth',-1,-1),(8,1,'Brighton and Hove Albion','Manchester City',-1,-1),(9,1,'Newcastle United','Tottenham',-1,-1),(10,1,'Manchester United','West Ham United',-1,-1),(11,2,'Swansea','Manchester United',-1,-1),(12,2,'Bournemouth','Watford',-1,-1),(13,2,'Burnley','West Bromwich Albion',-1,-1),(14,2,'Leicester City','Brighton and Hove Albion',-1,-1),(15,2,'Liverpool','Crystal Palace',-1,-1),(16,2,'Southampton','West Ham United',-1,-1),(17,2,'Stoke City','Arsenal',-1,-1),(18,2,'Huddersfield','Newcastle United',-1,-1),(19,2,'Tottenham','Chelsea',-1,-1),(20,2,'Manchester City','Everton',-1,-1),(21,3,'Bournemouth','Manchester City',-1,-1),(22,3,'Crystal Palace','Swansea',-1,-1),(23,3,'Huddersfield','Southampton',-1,-1),(24,3,'Newcastle United','West Ham United',-1,-1),(25,3,'Watford','Brighton and Hove Albion',-1,-1),(26,3,'Manchester United','Leicester City',-1,-1),(27,3,'Chelsea','Everton',-1,-1),(28,3,'West Bromwich Albion','Stoke City',-1,-1),(29,3,'Liverpool','Arsenal',-1,-1),(30,3,'Tottenham','Burnley',-1,-1),(31,4,'Manchester City','Liverpool',-1,-1),(32,4,'Arsenal','Bournemouth',-1,-1),(33,4,'Brighton and Hove Albion','West Bromwich Albion',-1,-1),(34,4,'Everton','Tottenham',-1,-1),(35,4,'Leicester City','Chelsea',-1,-1),(36,4,'Southampton','Watford',-1,-1),(37,4,'Stoke City','Manchester United',-1,-1),(38,4,'Burnley','Crystal Palace',-1,-1),(39,4,'Swansea','Newcastle United',-1,-1),(40,4,'West Ham United','Huddersfield',-1,-1),(41,5,'Bournemouth','Brighton and Hove Albion',-1,-1),(42,5,'Crystal Palace','Southampton',-1,-1),(43,5,'Huddersfield','Leicester City',-1,-1),(44,5,'Liverpool','Burnley',-1,-1),(45,5,'Newcastle United','Stoke City',-1,-1),(46,5,'Watford','Manchester City',-1,-1),(47,5,'West Bromwich Albion','West Ham United',-1,-1),(48,5,'Tottenham','Swansea',-1,-1),(49,5,'Chelsea','Arsenal',-1,-1),(50,5,'Manchester United','Everton',-1,-1),(51,6,'West Ham United','Tottenham',-1,-1),(52,6,'Burnley','Huddersfield',-1,-1),(53,6,'Everton','Bournemouth',-1,-1),(54,6,'Manchester City','Crystal Palace',-1,-1),(55,6,'Southampton','Manchester United',-1,-1),(56,6,'Stoke City','Chelsea',-1,-1),(57,6,'Swansea','Watford',-1,-1),(58,6,'Leicester City','Liverpool',-1,-1),(59,6,'Brighton and Hove Albion','Newcastle United',-1,-1),(60,6,'Arsenal','West Bromwich Albion',-1,-1),(61,7,'Huddersfield','Tottenham',-1,-1),(62,7,'Bournemouth','Leicester City',-1,-1),(63,7,'Manchester United','Crystal Palace',-1,-1),(64,7,'Stoke City','Southampton',-1,-1),(65,7,'West Bromwich Albion','Watford',-1,-1),(66,7,'West Ham United','Swansea',-1,-1),(67,7,'Chelsea','Manchester City',-1,-1),(68,7,'Arsenal','Brighton and Hove Albion',-1,-1),(69,7,'Everton','Burnley',-1,-1),(70,7,'Newcastle United','Liverpool',-1,-1),(71,8,'Liverpool','Manchester United',-1,-1),(72,8,'Burnley','West Ham United',-1,-1),(73,8,'Crystal Palace','Chelsea',-1,-1),(74,8,'Manchester City','Stoke City',-1,-1),(75,8,'Swansea','Huddersfield',-1,-1),(76,8,'Tottenham','Bournemouth',-1,-1),(77,8,'Watford','Arsenal',-1,-1),(78,8,'Brighton and Hove Albion','Everton',-1,-1),(79,8,'Southampton','Newcastle United',-1,-1),(80,8,'Leicester City','West Bromwich Albion',-1,-1),(81,9,'West Ham United','Brighton and Hove Albion',-1,-1),(82,9,'Chelsea','Watford',-1,-1),(83,9,'Huddersfield','Manchester United',-1,-1),(84,9,'Manchester City','Burnley',-1,-1),(85,9,'Newcastle United','Crystal Palace',-1,-1),(86,9,'Stoke City','Bournemouth',-1,-1),(87,9,'Swansea','Leicester City',-1,-1),(88,9,'Southampton','West Bromwich Albion',-1,-1),(89,9,'Everton','Arsenal',-1,-1),(90,9,'Tottenham','Liverpool',-1,-1),(91,10,'Manchester United','Tottenham',-1,-1),(92,10,'Arsenal','Swansea',-1,-1),(93,10,'Crystal Palace','West Ham United',-1,-1),(94,10,'Liverpool','Huddersfield',-1,-1),(95,10,'Watford','Stoke City',-1,-1),(96,10,'West Bromwich Albion','Manchester City',-1,-1),(97,10,'Bournemouth','Chelsea',-1,-1),(98,10,'Brighton and Hove Albion','Southampton',-1,-1),(99,10,'Leicester City','Everton',-1,-1),(100,10,'Burnley','Newcastle United',-1,-1),(101,11,'Stoke City','Leicester City',-1,-1),(102,11,'Huddersfield','West Bromwich Albion',-1,-1),(103,11,'Newcastle United','Bournemouth',-1,-1),(104,11,'Southampton','Burnley',-1,-1),(105,11,'Swansea','Brighton and Hove Albion',-1,-1),(106,11,'West Ham United','Liverpool',-1,-1),(107,11,'Tottenham','Crystal Palace',-1,-1),(108,11,'Manchester City','Arsenal',-1,-1),(109,11,'Chelsea','Manchester United',-1,-1),(110,11,'Everton','Watford',-1,-1),(111,12,'Arsenal','Tottenham',-1,-1),(112,12,'Bournemouth','Huddersfield',-1,-1),(113,12,'Burnley','Swansea',-1,-1),(114,12,'Crystal Palace','Everton',-1,-1),(115,12,'Leicester City','Manchester City',-1,-1),(116,12,'Liverpool','Southampton',-1,-1),(117,12,'West Bromwich Albion','Chelsea',-1,-1),(118,12,'Manchester United','Newcastle United',-1,-1),(119,12,'Watford','West Ham United',-1,-1),(120,12,'Brighton and Hove Albion','Stoke City',-1,-1),(121,13,'West Ham United','Leicester City',-1,-1),(122,13,'Crystal Palace','Stoke City',-1,-1),(123,13,'Manchester United','Brighton and Hove Albion',-1,-1),(124,13,'Newcastle United','Watford',-1,-1),(125,13,'Swansea','Bournemouth',-1,-1),(126,13,'Tottenham','West Bromwich Albion',-1,-1),(127,13,'Liverpool','Chelsea',-1,-1),(128,13,'Southampton','Everton',-1,-1),(129,13,'Burnley','Arsenal',-1,-1),(130,13,'Huddersfield','Manchester City',-1,-1),(131,14,'Brighton and Hove Albion','Crystal Palace',-1,-1),(132,14,'Leicester City','Tottenham',-1,-1),(133,14,'Watford','Manchester United',-1,-1),(134,14,'West Bromwich Albion','Newcastle United',-1,-1),(135,14,'Arsenal','Huddersfield',-1,-1),(136,14,'Bournemouth','Burnley',-1,-1),(137,14,'Chelsea','Swansea',-1,-1),(138,14,'Everton','West Ham United',-1,-1),(139,14,'Manchester City','Southampton',-1,-1),(140,14,'Stoke City','Liverpool',-1,-1),(141,15,'Chelsea','Newcastle United',-1,-1),(142,15,'Brighton and Hove Albion','Liverpool',-1,-1),(143,15,'Everton','Huddersfield',-1,-1),(144,15,'Leicester City','Burnley',-1,-1),(145,15,'Stoke City','Swansea',-1,-1),(146,15,'Watford','Tottenham',-1,-1),(147,15,'West Bromwich Albion','Crystal Palace',-1,-1),(148,15,'Arsenal','Manchester United',-1,-1),(149,15,'Bournemouth','Southampton',-1,-1),(150,15,'Manchester City','West Ham United',-1,-1),(151,16,'West Ham United','Chelsea',-1,-1),(152,16,'Burnley','Watford',-1,-1),(153,16,'Crystal Palace','Bournemouth',-1,-1),(154,16,'Huddersfield','Brighton and Hove Albion',-1,-1),(155,16,'Swansea','West Bromwich Albion',-1,-1),(156,16,'Tottenham','Stoke City',-1,-1),(157,16,'Newcastle United','Leicester City',-1,-1),(158,16,'Southampton','Arsenal',-1,-1),(159,16,'Liverpool','Everton',-1,-1),(160,16,'Manchester United','Manchester City',-1,-1),(161,17,'Burnley','Stoke City',-1,-1),(162,17,'Huddersfield','Chelsea',-1,-1),(163,17,'Crystal Palace','Watford',-1,-1),(164,17,'Swansea','Manchester City',-1,-1),(165,17,'Newcastle United','Everton',-1,-1),(166,17,'Southampton','Leicester City',-1,-1),(167,17,'West Ham United','Arsenal',-1,-1),(168,17,'Manchester United','Bournemouth',-1,-1),(169,17,'Liverpool','West Bromwich Albion',-1,-1),(170,17,'Tottenham','Brighton and Hove Albion',-1,-1),(171,18,'Leicester City','Crystal Palace',-1,-1),(172,18,'Arsenal','Newcastle United',-1,-1),(173,18,'Brighton and Hove Albion','Burnley',-1,-1),(174,18,'Chelsea','Southampton',-1,-1),(175,18,'Watford','Huddersfield',-1,-1),(176,18,'Stoke City','West Ham United',-1,-1),(177,18,'Manchester City','Tottenham',-1,-1),(178,18,'West Bromwich Albion','Manchester United',-1,-1),(179,18,'Bournemouth','Liverpool',-1,-1),(180,18,'Everton','Swansea',-1,-1),(181,19,'Arsenal','Liverpool',-1,-1),(182,19,'Everton','Chelsea',-1,-1),(183,19,'Brighton and Hove Albion','Watford',-1,-1),(184,19,'Manchester City','Bournemouth',-1,-1),(185,19,'Southampton','Huddersfield',-1,-1),(186,19,'Stoke City','West Bromwich Albion',-1,-1),(187,19,'Swansea','Crystal Palace',-1,-1),(188,19,'West Ham United','Newcastle United',-1,-1),(189,19,'Burnley','Tottenham',-1,-1),(190,19,'Leicester City','Manchester United',-1,-1),(191,20,'Tottenham','Southampton',-1,-1),(192,20,'Bournemouth','West Ham United',-1,-1),(193,20,'Chelsea','Brighton and Hove Albion',-1,-1),(194,20,'Huddersfield','Stoke City',-1,-1),(195,20,'Manchester United','Burnley',-1,-1),(196,20,'Watford','Leicester City',-1,-1),(197,20,'West Bromwich Albion','Everton',-1,-1),(198,20,'Liverpool','Swansea',-1,-1),(199,20,'Newcastle United','Manchester City',-1,-1),(200,20,'Crystal Palace','Arsenal',-1,-1),(201,21,'Bournemouth','Everton',-1,-1),(202,21,'Chelsea','Stoke City',-1,-1),(203,21,'Huddersfield','Burnley',-1,-1),(204,21,'Liverpool','Leicester City',-1,-1),(205,21,'Newcastle United','Brighton and Hove Albion',-1,-1),(206,21,'Watford','Swansea',-1,-1),(207,21,'Manchester United','Southampton',-1,-1),(208,21,'Crystal Palace','Manchester City',-1,-1),(209,21,'West Bromwich Albion','Arsenal',-1,-1),(210,22,'Brighton and Hove Albion','Bournemouth',-1,-1),(211,22,'Burnley','Liverpool',-1,-1),(212,22,'Leicester City','Huddersfield',-1,-1),(213,22,'Stoke City','Newcastle United',-1,-1),(214,22,'Everton','Manchester United',-1,-1),(215,22,'Southampton','Crystal Palace',-1,-1),(216,22,'Swansea','Tottenham',-1,-1),(217,22,'West Ham United','West Bromwich Albion',-1,-1),(218,22,'Manchester City','Watford',-1,-1),(219,22,'Arsenal','Chelsea',-1,-1),(220,22,'Tottenham','West Ham United',-1,-1),(221,23,'Chelsea','Leicester City',-1,-1),(222,23,'Crystal Palace','Burnley',-1,-1),(223,23,'Huddersfield','West Ham United',-1,-1),(224,23,'Newcastle United','Swansea',-1,-1),(225,23,'Watford','Southampton',-1,-1),(226,23,'West Bromwich Albion','Brighton and Hove Albion',-1,-1),(227,23,'Tottenham','Everton',-1,-1),(228,23,'Bournemouth','Arsenal',-1,-1),(229,23,'Liverpool','Manchester City',-1,-1),(230,23,'Manchester United','Stoke City',-1,-1),(231,24,'Brighton and Hove Albion','Chelsea',-1,-1),(232,24,'Arsenal','Crystal Palace',-1,-1),(233,24,'Burnley','Manchester United',-1,-1),(234,24,'Everton','West Bromwich Albion',-1,-1),(235,24,'Leicester City','Watford',-1,-1),(236,24,'Stoke City','Huddersfield',-1,-1),(237,24,'West Ham United','Bournemouth',-1,-1),(238,24,'Manchester City','Newcastle United',-1,-1),(239,24,'Southampton','Tottenham',-1,-1),(240,24,'Swansea','Liverpool',-1,-1),(241,25,'Swansea','Arsenal',-1,-1),(242,25,'West Ham United','Crystal Palace',-1,-1),(243,25,'Huddersfield','Liverpool',-1,-1),(244,25,'Chelsea','Bournemouth',-1,-1),(245,25,'Everton','Leicester City',-1,-1),(246,25,'Newcastle United','Burnley',-1,-1),(247,25,'Southampton','Brighton and Hove Albion',-1,-1),(248,25,'Manchester City','West Bromwich Albion',-1,-1),(249,25,'Stoke City','Watford',-1,-1),(250,25,'Tottenham','Manchester United',-1,-1),(251,26,'Burnley','Manchester City',-1,-1),(252,26,'Bournemouth','Stoke City',-1,-1),(253,26,'Brighton and Hove Albion','West Ham United',-1,-1),(254,26,'Leicester City','Swansea',-1,-1),(255,26,'Manchester United','Huddersfield',-1,-1),(256,26,'West Bromwich Albion','Southampton',-1,-1),(257,26,'Arsenal','Everton',-1,-1),(258,26,'Crystal Palace','Newcastle United',-1,-1),(259,26,'Liverpool','Tottenham',-1,-1),(260,26,'Watford','Chelsea',-1,-1),(261,27,'Tottenham','Arsenal',-1,-1),(262,27,'Everton','Crystal Palace',-1,-1),(263,27,'Stoke City','Brighton and Hove Albion',-1,-1),(264,27,'Swansea','Burnley',-1,-1),(265,27,'West Ham United','Watford',-1,-1),(266,27,'Manchester City','Leicester City',-1,-1),(267,27,'Huddersfield','Bournemouth',-1,-1),(268,27,'Newcastle United','Manchester United',-1,-1),(269,27,'Southampton','Liverpool',-1,-1),(270,27,'Chelsea','West Bromwich Albion',-1,-1),(271,28,'Leicester City','Stoke City',-1,-1),(272,28,'Bournemouth','Newcastle United',-1,-1),(273,28,'Brighton and Hove Albion','Swansea',-1,-1),(274,28,'Burnley','Southampton',-1,-1),(275,28,'Liverpool','West Ham United',-1,-1),(276,28,'West Bromwich Albion','Huddersfield',-1,-1),(277,28,'Watford','Everton',-1,-1),(278,28,'Crystal Palace','Tottenham',-1,-1),(279,28,'Manchester United','Chelsea',-1,-1),(280,29,'Arsenal','Manchester City',-1,-1),(281,29,'Burnley','Everton',-1,-1),(282,29,'Leicester City','Bournemouth',-1,-1),(283,29,'Southampton','Stoke City',-1,-1),(284,29,'Swansea','West Ham United',-1,-1),(285,29,'Tottenham','Huddersfield',-1,-1),(286,29,'Watford','West Bromwich Albion',-1,-1),(287,29,'Liverpool','Newcastle United',-1,-1),(288,29,'Brighton and Hove Albion','Arsenal',-1,-1),(289,29,'Manchester City','Chelsea',-1,-1),(290,29,'Crystal Palace','Manchester United',-1,-1),(291,30,'Manchester United','Liverpool',-1,-1),(292,30,'Everton','Brighton and Hove Albion',-1,-1),(293,30,'Huddersfield','Swansea',-1,-1),(294,30,'Newcastle United','Southampton',-1,-1),(295,30,'West Bromwich Albion','Leicester City',-1,-1),(296,30,'West Ham United','Burnley',-1,-1),(297,30,'Chelsea','Crystal Palace',-1,-1),(298,30,'Arsenal','Watford',-1,-1),(299,30,'Bournemouth','Tottenham',-1,-1),(300,30,'Stoke City','Manchester City',-1,-1),(301,31,'Bournemouth','West Bromwich Albion',-1,-1),(302,31,'Huddersfield','Crystal Palace',-1,-1),(303,31,'Stoke City','Everton',-1,-1),(304,31,'Liverpool','Watford',-1,-1),(305,32,'Crystal Palace','Liverpool',-1,-1),(306,32,'Brighton and Hove Albion','Leicester City',-1,-1),(307,32,'Manchester United','Swansea',-1,-1),(308,32,'Newcastle United','Huddersfield',-1,-1),(309,32,'West Ham United','Southampton',-1,-1),(310,32,'Watford','Bournemouth',-1,-1),(311,32,'West Bromwich Albion','Burnley',-1,-1),(312,32,'Everton','Manchester City',-1,-1),(313,32,'Arsenal','Stoke City',-1,-1),(314,32,'Chelsea','Tottenham',-1,-1),(315,33,'Everton','Liverpool',-1,-1),(316,33,'Bournemouth','Crystal Palace',-1,-1),(317,33,'Brighton and Hove Albion','Huddersfield',-1,-1),(318,33,'Leicester City','Newcastle United',-1,-1),(319,33,'Stoke City','Tottenham',-1,-1),(320,33,'Watford','Burnley',-1,-1),(321,33,'West Bromwich Albion','Swansea',-1,-1),(322,33,'Manchester City','Manchester United',-1,-1),(323,33,'Arsenal','Southampton',-1,-1),(324,33,'Chelsea','West Ham United',-1,-1),(325,34,'Southampton','Chelsea',-1,-1),(326,34,'Burnley','Leicester City',-1,-1),(327,34,'Crystal Palace','Brighton and Hove Albion',-1,-1),(328,34,'Huddersfield','Watford',-1,-1),(329,34,'Swansea','Everton',-1,-1),(330,34,'Liverpool','Bournemouth',-1,-1),(331,34,'Tottenham','Manchester City',-1,-1),(332,34,'Newcastle United','Arsenal',-1,-1),(333,34,'Manchester United','West Bromwich Albion',-1,-1),(334,34,'West Ham United','Stoke City',-1,-1),(335,35,'Brighton and Hove Albion','Tottenham',-1,-1),(336,35,'Bournemouth','Manchester United',-1,-1),(337,35,'Burnley','Chelsea',-1,-1),(338,35,'Leicester City','Southampton',-1,-1),(339,35,'West Bromwich Albion','Liverpool',-1,-1),(340,35,'Watford','Crystal Palace',-1,-1),(341,35,'Arsenal','West Ham United',-1,-1),(342,35,'Stoke City','Burnley',-1,-1),(343,35,'Manchester City','Swansea',-1,-1),(344,35,'Everton','Newcastle United',-1,-1),(345,36,'Liverpool','Stoke City',-1,-1),(346,36,'Burnley','Brighton and Hove Albion',-1,-1),(347,36,'Crystal Palace','Leicester City',-1,-1),(348,36,'Huddersfield','Everton',-1,-1),(349,36,'Newcastle United','West Bromwich Albion',-1,-1),(350,36,'Southampton','Bournemouth',-1,-1),(351,36,'Swansea','Chelsea',-1,-1),(352,36,'West Ham United','Manchester City',-1,-1),(353,36,'Manchester United','Arsenal',-1,-1),(354,36,'Tottenham','Watford',-1,-1),(355,37,'Brighton and Hove Albion','Manchester United',-1,-1),(356,37,'Stoke City','Crystal Palace',-1,-1),(357,37,'Bournemouth','Swansea',-1,-1),(358,37,'Leicester City','West Ham United',-1,-1),(359,37,'Watford','Newcastle United',-1,-1),(360,37,'West Bromwich Albion','Tottenham',-1,-1),(361,37,'Everton','Southampton',-1,-1),(362,37,'Manchester City','Huddersfield',-1,-1),(363,37,'Arsenal','Burnley',-1,-1),(364,37,'Chelsea','Liverpool',-1,-1),(365,37,'Swansea','Southampton',-1,-1),(366,37,'Leicester City','Arsenal',-1,-1),(367,37,'Chelsea','Huddersfield',-1,-1),(368,37,'Manchester City','Brighton and Hove Albion',-1,-1),(369,37,'Tottenham','Newcastle United',-1,-1),(370,37,'West Ham United','Manchester United',-1,-1),(371,38,'Burnley','Bournemouth',-1,-1),(372,38,'Crystal Palace','West Bromwich Albion',-1,-1),(373,38,'Huddersfield','Arsenal',-1,-1),(374,38,'Liverpool','Brighton and Hove Albion',-1,-1),(375,38,'Manchester United','Watford',-1,-1),(376,38,'Newcastle United','Chelsea',-1,-1),(377,38,'Southampton','Manchester City',-1,-1),(378,38,'Swansea','Stoke City',-1,-1),(379,38,'Tottenham','Leicester City',-1,-1),(380,38,'West Ham United','Everton',-1,-1);
/*!40000 ALTER TABLE `Matches` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger played_update_after_match
	after update on Matches
    for each row
    begin
    update Team 
    
    set Played = Played + 1 
    where (Team.TeamId = new.HomeTeam or Team.TeamId = new.AwayTeam);
END */;;
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
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger wins_update_after_match
	after update on Matches
    for each row
    begin
    update Team
    
    set Wins = Wins + 1 where (Team.TeamId = new.HomeTeam 
    and new.HomeScore > new.AwayScore)
    or  (Team.TeamId = new.AwayTeam 
    and new.AwayScore > new.HomeScore);
    
    update Team
    
    set Points = Points + 3 where (Team.TeamId = new.HomeTeam 
    and new.HomeScore > new.AwayScore)
    or  (Team.TeamId = new.AwayTeam 
    and new.AwayScore > new.HomeScore);
    
    END */;;
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
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger loss_update_after_match
after update on Matches
for each row
begin
update Team 
    
set Losses = Losses + 1  where (Team.TeamId = new.HomeTeam 
and new.HomeScore < new.AwayScore)
or  (Team.TeamId = new.AwayTeam 
and new.AwayScore < new.HomeScore);
    
END */;;
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
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger draws_update_after_match
	after update on Matches
    for each row
    begin
    update Team 
    
     set Draws = Draws + 1 where 
     new.HomeScore = new.AwayScore 
     and (Team.TeamId = new.HomeTeam 
     or Team.TeamId = new.AwayTeam);
     
     update Team
     
     set Points = Points + 1 where 
     new.HomeScore = new.AwayScore 
     and (Team.TeamId = new.HomeTeam 
     or Team.TeamId = new.AwayTeam);
    
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `PlayersWithStats`
--

DROP TABLE IF EXISTS `PlayersWithStats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `PlayersWithStats` (
  `PlayerId` int(11) NOT NULL AUTO_INCREMENT,
  `PlayerName` varchar(100) NOT NULL,
  `Nationality` varchar(25) NOT NULL,
  `Players_Pos` enum('GK','DEF','MID','FWD') DEFAULT NULL,
  `Team` varchar(50) NOT NULL,
  `Price` decimal(10,2) DEFAULT NULL,
  `GoalsScored` int(11) NOT NULL,
  `GoalsConceded` int(11) NOT NULL,
  `Assists` int(11) NOT NULL,
  `YC` int(11) NOT NULL,
  `RC` int(11) NOT NULL,
  `CleanSheets` int(11) NOT NULL,
  `TotalPoints` int(11) NOT NULL,
  PRIMARY KEY (`PlayerId`),
  KEY `Playerteam_fk` (`Team`),
  CONSTRAINT `Playerteam_fk` FOREIGN KEY (`Team`) REFERENCES `Team` (`TeamId`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=462 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PlayersWithStats`
--

LOCK TABLES `PlayersWithStats` WRITE;
/*!40000 ALTER TABLE `PlayersWithStats` DISABLE KEYS */;
INSERT INTO `PlayersWithStats` VALUES (1,'Alexis Sanchez','Chile','MID','Arsenal',12.00,0,0,0,0,0,0,0),(2,'Mesut Ozil','Germany','MID','Arsenal',9.50,0,0,0,0,0,0,0),(3,'Petr Cech','Czech Republic','GK','Arsenal',5.50,0,0,0,0,0,0,0),(4,'Theo Walcott','England','MID','Arsenal',7.50,0,0,0,0,0,0,0),(5,'Laurent Koscielny','France','DEF','Arsenal',6.00,0,0,0,0,0,0,0),(6,'Hector Bellerin','Spain','DEF','Arsenal',6.00,0,0,0,0,0,0,0),(7,'Olivier Giroud','France','FWD','Arsenal',8.50,0,0,0,0,0,0,0),(8,'Nacho Monreal','Spain','DEF','Arsenal',5.50,0,0,0,0,0,0,0),(9,'Shkodran Mustafi','Germany','DEF','Arsenal',5.50,0,0,0,0,0,0,0),(10,'Alex Iwobi','Nigeria','MID','Arsenal',5.50,0,0,0,0,0,0,0),(11,'Granit Xhaka','Switzerland','MID','Arsenal',5.50,0,0,0,0,0,0,0),(12,'Alex Oxlade-Chamberlain','England','MID','Arsenal',6.00,0,0,0,0,0,0,0),(13,'Jack Wilshere','England','MID','Arsenal',5.50,0,0,0,0,0,0,0),(14,'Aaron Ramsey','Wales','MID','Arsenal',7.00,0,0,0,0,0,0,0),(15,'Francis Coquelin','France','MID','Arsenal',4.50,0,0,0,0,0,0,0),(16,'Gabriel Paulista','Brazil','DEF','Arsenal',5.00,0,0,0,0,0,0,0),(17,'Kieran Gibbs','England','DEF','Arsenal',5.00,0,0,0,0,0,0,0),(18,'Santi Cazorla','Spain','MID','Arsenal',7.00,0,0,0,0,0,0,0),(19,'Danny Welbeck','England','FWD','Arsenal',7.50,0,0,0,0,0,0,0),(20,'Rob Holding','England','DEF','Arsenal',5.00,0,0,0,0,0,0,0),(21,'Mohamed Elneny','Egypt','MID','Arsenal',4.50,0,0,0,0,0,0,0),(22,'Lucas Perez','Spain','FWD','Arsenal',7.50,0,0,0,0,0,0,0),(23,'Emiliano Martinez','Argentina','GK','Arsenal',4.00,0,0,0,0,0,0,0),(24,'David Ospina','Colombia','GK','Arsenal',5.00,0,0,0,0,0,0,0),(25,'Carl Jenkinson','England','DEF','Arsenal',4.50,0,0,0,0,0,0,0),(26,'Per Mertesacker','Germany','DEF','Arsenal',5.00,0,0,0,0,0,0,0),(27,'Sead Kolasinac','Bosnia','DEF','Arsenal',6.00,0,0,0,0,0,0,0),(28,'Alexandre Lacazette','France','FWD','Arsenal',10.50,0,0,0,0,0,0,0),(29,'Joshua King','Norway','FWD','Bournemouth',7.50,0,0,0,0,0,0,0),(30,'Jermain Defoe','England','FWD','Bournemouth',8.00,0,0,0,0,0,0,0),(31,'Charlie Daniels','England','DEF','Bournemouth',5.00,0,0,0,0,0,0,0),(32,'Artur Boruc','Poland','GK','Bournemouth',4.50,0,0,0,0,0,0,0),(33,'Steve Cook','England','DEF','Bournemouth',5.00,0,0,0,0,0,0,0),(34,'Junior Stanislas','England','MID','Bournemouth',6.00,0,0,0,0,0,0,0),(35,'Adam Smith','England','DEF','Bournemouth',5.00,0,0,0,0,0,0,0),(36,'Ryan Fraser','Scotland','MID','Bournemouth',5.50,0,0,0,0,0,0,0),(37,'Simon Francis','England','DEF','Bournemouth',4.50,0,0,0,0,0,0,0),(38,'Benik Afobe','Congo DR','FWD','Bournemouth',6.00,0,0,0,0,0,0,0),(39,'Harry Arter','Ireland','MID','Bournemouth',5.00,0,0,0,0,0,0,0),(40,'Marc Pugh','England','MID','Bournemouth',5.00,0,0,0,0,0,0,0),(41,'Callum Wilson','England','FWD','Bournemouth',6.00,0,0,0,0,0,0,0),(42,'Nathan Ake','Netherlands','DEF','Bournemouth',5.00,0,0,0,0,0,0,0),(43,'Dan Gosling','England','MID','Bournemouth',5.00,0,0,0,0,0,0,0),(44,'Andrew Surman','England','MID','Bournemouth',4.50,0,0,0,0,0,0,0),(45,'Jordon Ibe','England','MID','Bournemouth',5.00,0,0,0,0,0,0,0),(46,'Lewis Cook','England','MID','Bournemouth',4.50,0,0,0,0,0,0,0),(47,'Lys Mousset','France','FWD','Bournemouth',5.00,0,0,0,0,0,0,0),(48,'Adam Federici','Australia','GK','Bournemouth',4.00,0,0,0,0,0,0,0),(49,'Max Gradel','Cote d\'Ivoire','MID','Bournemouth',5.00,0,0,0,0,0,0,0),(50,'Tyrone Mings','England','DEF','Bournemouth',4.50,0,0,0,0,0,0,0),(51,'Brad Smith','Australia','DEF','Bournemouth',4.00,0,0,0,0,0,0,0),(52,'Asmir Begovic','Bosnia','GK','Bournemouth',4.50,0,0,0,0,0,0,0),(53,'Niki Maenpaa','Finland','GK','Brighton and Hove Albion',4.00,0,0,0,0,0,0,0),(54,'Mathew Ryan','Australia','GK','Brighton and Hove Albion',4.50,0,0,0,0,0,0,0),(55,'Lewis Dunk','England','DEF','Brighton and Hove Albion',4.50,0,0,0,0,0,0,0),(56,'Shane Duffy','Ireland','DEF','Brighton and Hove Albion',4.50,0,0,0,0,0,0,0),(57,'Uwe Hunemeier','Germany','DEF','Brighton and Hove Albion',4.00,0,0,0,0,0,0,0),(58,'Bruno','Argentina','DEF','Brighton and Hove Albion',4.50,0,0,0,0,0,0,0),(59,'Gaetan Bong','Cameroon','DEF','Brighton and Hove Albion',4.50,0,0,0,0,0,0,0),(60,'Liam Rosenior','England','DEF','Brighton and Hove Albion',4.00,0,0,0,0,0,0,0),(61,'Connor Goldson','England','DEF','Brighton and Hove Albion',4.00,0,0,0,0,0,0,0),(62,'Markus Suttner','Austria','DEF','Brighton and Hove Albion',4.50,0,0,0,0,0,0,0),(63,'Anthony Knockaert','France','MID','Brighton and Hove Albion',6.00,0,0,0,0,0,0,0),(64,'Dale Stephens','England','MID','Brighton and Hove Albion',4.50,0,0,0,0,0,0,0),(65,'Beram Kayal','Israel','MID','Brighton and Hove Albion',4.50,0,0,0,0,0,0,0),(66,'Steve Sidwell','England','MID','Brighton and Hove Albion',4.50,0,0,0,0,0,0,0),(67,'Solly March','England','MID','Brighton and Hove Albion',5.00,0,0,0,0,0,0,0),(68,'Jiri Skalak','Czech Republic','MID','Brighton and Hove Albion',5.00,0,0,0,0,0,0,0),(69,'Oliver Norwood','Northern Ireland','MID','Brighton and Hove Albion',4.50,0,0,0,0,0,0,0),(70,'Jamie Murphy','Scotland','MID','Brighton and Hove Albion',5.00,0,0,0,0,0,0,0),(71,'Pascal Gross','Germany','MID','Brighton and Hove Albion',5.50,0,0,0,0,0,0,0),(72,'Glenn Murray','England','FWD','Brighton and Hove Albion',6.00,0,0,0,0,0,0,0),(73,'Tomer Hemed','Israel','FWD','Brighton and Hove Albion',5.00,0,0,0,0,0,0,0),(74,'Sam Baldock','England','FWD','Brighton and Hove Albion',5.00,0,0,0,0,0,0,0),(75,'Tom Heaton','England','GK','Burnley',5.00,0,0,0,0,0,0,0),(76,'Sam Vokes','Wales','FWD','Burnley',6.00,0,0,0,0,0,0,0),(77,'Andre Gray','England','FWD','Burnley',6.50,0,0,0,0,0,0,0),(78,'Ben Mee','England','DEF','Burnley',4.50,0,0,0,0,0,0,0),(79,'Stephen Ward','Ireland','DEF','Burnley',4.50,0,0,0,0,0,0,0),(80,'Matthew Lowton','England','DEF','Burnley',4.50,0,0,0,0,0,0,0),(81,'Ashley Barnes','England','FWD','Burnley',5.50,0,0,0,0,0,0,0),(82,'Jeff Hendrick','Ireland','MID','Burnley',5.50,0,0,0,0,0,0,0),(83,'Scott Arfield','Canada','MID','Burnley',5.00,0,0,0,0,0,0,0),(84,'Steven Defour','Belgium','MID','Burnley',5.50,0,0,0,0,0,0,0),(85,'Dean Marney','England','MID','Burnley',4.50,0,0,0,0,0,0,0),(86,'Jack Cork','England','MID','Burnley',4.50,0,0,0,0,0,0,0),(87,'Johann Berg Gudmundsson','Iceland','MID','Burnley',5.00,0,0,0,0,0,0,0),(88,'Robbie Brady','Ireland','MID','Burnley',5.50,0,0,0,0,0,0,0),(89,'James Tarkowski','England','DEF','Burnley',4.50,0,0,0,0,0,0,0),(90,'Ashley Westwood','England','MID','Burnley',4.50,0,0,0,0,0,0,0),(91,'Kevin Long','Ireland','DEF','Burnley',4.00,0,0,0,0,0,0,0),(92,'Matthew Taylor','England','MID','Burnley',4.50,0,0,0,0,0,0,0),(93,'Eden Hazard','Belgium','MID','Chelsea',10.50,0,0,0,0,0,0,0),(94,'Diego Costa','Spain','FWD','Chelsea',10.00,0,0,0,0,0,0,0),(95,'Gary Cahill','England','DEF','Chelsea',6.50,0,0,0,0,0,0,0),(96,'Marcos Alonso Mendoza','Spain','DEF','Chelsea',7.00,0,0,0,0,0,0,0),(97,'Cesar Azpilicueta','Spain','DEF','Chelsea',6.50,0,0,0,0,0,0,0),(98,'Pedro','Spain','MID','Chelsea',8.00,0,0,0,0,0,0,0),(99,'Thibaut Courtois','Belgium','GK','Chelsea',5.50,0,0,0,0,0,0,0),(100,'David Luiz','Brazil','DEF','Chelsea',6.00,0,0,0,0,0,0,0),(101,'Cesc Fabregas','Spain','MID','Chelsea',7.00,0,0,0,0,0,0,0),(102,'Willian','Brazil','MID','Chelsea',7.00,0,0,0,0,0,0,0),(103,'Victor Moses','Nigeria','MID','Chelsea',6.50,0,0,0,0,0,0,0),(104,'Nemanja Matic','Serbia','MID','Chelsea',5.00,0,0,0,0,0,0,0),(105,'N%27Golo Kante','France','MID','Chelsea',5.00,0,0,0,0,0,0,0),(106,'Willy Caballero','Argentina','GK','Chelsea',5.00,0,0,0,0,0,0,0),(107,'Michy Batshuayi','Belgium','FWD','Chelsea',8.50,0,0,0,0,0,0,0),(108,'Kurt Zouma','France','DEF','Chelsea',5.50,0,0,0,0,0,0,0),(109,'Kenedy','Brazil','DEF','Chelsea',5.00,0,0,0,0,0,0,0),(110,'Eduardo Carvalho','Portugal','MID','Chelsea',5.00,0,0,0,0,0,0,0),(111,'Antonio Rudiger','Germany','DEF','Chelsea',6.00,0,0,0,0,0,0,0),(112,'Tiemoue Bakayoko','France','MID','Chelsea',5.00,0,0,0,0,0,0,0),(113,'Wilfried Zaha','Cote d\'Ivoire','MID','Crystal Palace',7.00,0,0,0,0,0,0,0),(114,'Christian Benteke','Belgium','FWD','Crystal Palace',8.00,0,0,0,0,0,0,0),(115,'Andros Townsend','England','MID','Crystal Palace',6.00,0,0,0,0,0,0,0),(116,'Patrick van Aanholt','Netherlands','DEF','Crystal Palace',5.50,0,0,0,0,0,0,0),(117,'James McArthur','Scotland','MID','Crystal Palace',4.50,0,0,0,0,0,0,0),(118,'Wayne Hennessey','Wales','GK','Crystal Palace',4.50,0,0,0,0,0,0,0),(119,'Jason Puncheon','England','MID','Crystal Palace',5.00,0,0,0,0,0,0,0),(120,'Yohan Cabaye','France','MID','Crystal Palace',5.50,0,0,0,0,0,0,0),(121,'Joel Ward','England','DEF','Crystal Palace',5.00,0,0,0,0,0,0,0),(122,'James Tomkins','England','DEF','Crystal Palace',4.50,0,0,0,0,0,0,0),(123,'Scott Dann','England','DEF','Crystal Palace',5.00,0,0,0,0,0,0,0),(124,'Damien Delaney','Ireland','DEF','Crystal Palace',4.50,0,0,0,0,0,0,0),(125,'Jeffrey Schlupp','Ghana','DEF','Crystal Palace',5.00,0,0,0,0,0,0,0),(126,'Martin Kelly','England','DEF','Crystal Palace',4.50,0,0,0,0,0,0,0),(127,'Luka Milivojevic','Serbia','MID','Crystal Palace',5.00,0,0,0,0,0,0,0),(128,'Lee Chung-yong','South Korea','MID','Crystal Palace',4.50,0,0,0,0,0,0,0),(129,'Connor Wickham','England','FWD','Crystal Palace',5.50,0,0,0,0,0,0,0),(130,'Bakary Sako','Mali','MID','Crystal Palace',5.00,0,0,0,0,0,0,0),(131,'Pape Souare','Senegal','DEF','Crystal Palace',4.50,0,0,0,0,0,0,0),(132,'Ruben Loftus-Cheek','England','MID','Crystal Palace',4.50,0,0,0,0,0,0,0),(133,'Julian Speroni','Argentina','GK','Crystal Palace',4.00,0,0,0,0,0,0,0),(134,'Ross Barkley','England','MID','Everton',7.50,0,0,0,0,0,0,0),(135,'Leighton Baines','England','DEF','Everton',6.00,0,0,0,0,0,0,0),(136,'Seamus Coleman','Ireland','DEF','Everton',6.50,0,0,0,0,0,0,0),(137,'Ashley Williams','Wales','DEF','Everton',5.50,0,0,0,0,0,0,0),(138,'Kevin Mirallas','Belgium','MID','Everton',6.50,0,0,0,0,0,0,0),(139,'Michael Keane','England','DEF','Everton',5.50,0,0,0,0,0,0,0),(140,'Phil Jagielka','England','DEF','Everton',5.00,0,0,0,0,0,0,0),(141,'Jordan Pickford','England','GK','Everton',5.00,0,0,0,0,0,0,0),(142,'Joel Robles','Spain','GK','Everton',4.50,0,0,0,0,0,0,0),(143,'Idrissa Gueye','Senegal','MID','Everton',5.00,0,0,0,0,0,0,0),(144,'Wayne Rooney','England','FWD','Everton',7.50,0,0,0,0,0,0,0),(145,'Ramiro Funes Mori','Argentina','DEF','Everton',5.00,0,0,0,0,0,0,0),(146,'Maarten Stekelenburg','Netherlands','GK','Everton',4.50,0,0,0,0,0,0,0),(147,'Gareth Barry','England','MID','Everton',4.50,0,0,0,0,0,0,0),(148,'Tom Davies','England','MID','Everton',5.50,0,0,0,0,0,0,0),(149,'Mason Holgate','England','DEF','Everton',4.50,0,0,0,0,0,0,0),(150,'Yannick Bolasie','Congo DR','MID','Everton',6.50,0,0,0,0,0,0,0),(151,'Morgan Schneiderlin','France','MID','Everton',5.00,0,0,0,0,0,0,0),(152,'Cuco Martina','Curacao','DEF','Everton',4.50,0,0,0,0,0,0,0),(153,'James McCarthy','Ireland','MID','Everton',5.00,0,0,0,0,0,0,0),(154,'Aaron Lennon','England','MID','Everton',5.50,0,0,0,0,0,0,0),(155,'Dominic Calvert-Lewin','England','FWD','Everton',5.00,0,0,0,0,0,0,0),(156,'Ademola Lookman','England','MID','Everton',5.50,0,0,0,0,0,0,0),(157,'Matthew Pennington','England','DEF','Everton',4.00,0,0,0,0,0,0,0),(158,'Jonjoe Kenny','England','DEF','Everton',4.50,0,0,0,0,0,0,0),(159,'Muhamed Besic','Germany','MID','Everton',4.50,0,0,0,0,0,0,0),(160,'Davy Klaassen','Netherlands','MID','Everton',7.50,0,0,0,0,0,0,0),(161,'Sandro Ramirez','Spain','FWD','Everton',7.50,0,0,0,0,0,0,0),(162,'Joel Coleman','England','GK','Huddersfield',4.00,0,0,0,0,0,0,0),(163,'Jonas Lossl','Denmark','GK','Huddersfield',4.50,0,0,0,0,0,0,0),(164,'Christopher Schindler','Germany','DEF','Huddersfield',4.50,0,0,0,0,0,0,0),(165,'Chris Lowe','Germany','DEF','Huddersfield',4.50,0,0,0,0,0,0,0),(166,'Tommy Smith','England','DEF','Huddersfield',5.00,0,0,0,0,0,0,0),(167,'Michael Hefele','Germany','DEF','Huddersfield',4.50,0,0,0,0,0,0,0),(168,'Martin Cranie','England','DEF','Huddersfield',4.00,0,0,0,0,0,0,0),(169,'Jon Gorenc Stankovic','Slovenia','DEF','Huddersfield',4.00,0,0,0,0,0,0,0),(170,'Mark Hudson','England','DEF','Huddersfield',4.00,0,0,0,0,0,0,0),(171,'Mathias Jorgensen','Denmark','DEF','Huddersfield',4.50,0,0,0,0,0,0,0),(172,'Scott Malone','England','DEF','Huddersfield',4.50,0,0,0,0,0,0,0),(173,'Aaron Mooy','Australia','MID','Huddersfield',5.50,0,0,0,0,0,0,0),(174,'Rajiv van La Parra','Netherlands','MID','Huddersfield',5.00,0,0,0,0,0,0,0),(175,'Jonathan Hogg','England','MID','Huddersfield',4.50,0,0,0,0,0,0,0),(176,'Philip Billing','Denmark','MID','Huddersfield',4.50,0,0,0,0,0,0,0),(177,'Joe Lolley','England','MID','Huddersfield',4.50,0,0,0,0,0,0,0),(178,'Jack Payne','England','MID','Huddersfield',4.50,0,0,0,0,0,0,0),(179,'Dean Whitehead','England','MID','Huddersfield',4.50,0,0,0,0,0,0,0),(180,'Harry Bunn','England','MID','Huddersfield',4.50,0,0,0,0,0,0,0),(181,'Sean Scannell','Ireland','MID','Huddersfield',4.50,0,0,0,0,0,0,0),(182,'Elias Kachunga','Congo DR','MID','Huddersfield',6.00,0,0,0,0,0,0,0),(183,'Tom Ince','England','MID','Huddersfield',6.00,0,0,0,0,0,0,0),(184,'Kasey Palmer','England','MID','Huddersfield',5.50,0,0,0,0,0,0,0),(185,'Andy Williams','Trinidad and Tobago','DEF','Huddersfield',5.00,0,0,0,0,0,0,0),(186,'Nahki Wells','Bermuda','FWD','Huddersfield',5.00,0,0,0,0,0,0,0),(187,'Collin Quaner','Germany','FWD','Huddersfield',4.50,0,0,0,0,0,0,0),(188,'Laurent Depoitre','Belgium','FWD','Huddersfield',5.50,0,0,0,0,0,0,0),(189,'Steve Mounie','Benin','FWD','Huddersfield',6.00,0,0,0,0,0,0,0),(190,'Jamie Vardy','England','FWD','Leicester City',8.50,0,0,0,0,0,0,0),(191,'Riyad Mahrez','Algeria','MID','Leicester City',8.50,0,0,0,0,0,0,0),(192,'Kasper Schmeichel','Denmark','GK','Leicester City',5.00,0,0,0,0,0,0,0),(193,'Christian Fuchs','Austria','DEF','Leicester City',5.00,0,0,0,0,0,0,0),(194,'Marc Albrighton','England','MID','Leicester City',5.50,0,0,0,0,0,0,0),(195,'Robert Huth','Germany','DEF','Leicester City',5.00,0,0,0,0,0,0,0),(196,'Danny Simpson','England','DEF','Leicester City',4.50,0,0,0,0,0,0,0),(197,'Islam Slimani','Algeria','FWD','Leicester City',7.00,0,0,0,0,0,0,0),(198,'Harry Maguire','England','DEF','Leicester City',5.00,0,0,0,0,0,0,0),(199,'Danny Drinkwater','England','MID','Leicester City',5.00,0,0,0,0,0,0,0),(200,'Wes Morgan','Jamaica','DEF','Leicester City',4.50,0,0,0,0,0,0,0),(201,'Shinji Okazaki','Japan','FWD','Leicester City',5.50,0,0,0,0,0,0,0),(202,'Wilfred Ndidi','Nigeria','MID','Leicester City',5.00,0,0,0,0,0,0,0),(203,'Demarai Gray','England','MID','Leicester City',5.50,0,0,0,0,0,0,0),(204,'Daniel Amartey','Ghana','MID','Leicester City',4.50,0,0,0,0,0,0,0),(205,'Andy King','Wales','MID','Leicester City',4.50,0,0,0,0,0,0,0),(206,'Ahmed Musa','Nigeria','FWD','Leicester City',6.50,0,0,0,0,0,0,0),(207,'Yohan Benalouane','Tunisia','DEF','Leicester City',4.50,0,0,0,0,0,0,0),(208,'Leonardo Ulloa','Argentina','FWD','Leicester City',5.00,0,0,0,0,0,0,0),(209,'Ben Chilwell','England','DEF','Leicester City',4.50,0,0,0,0,0,0,0),(210,'Nampalys Mendy','France','MID','Leicester City',4.50,0,0,0,0,0,0,0),(211,'Ben Hamer','England','GK','Leicester City',4.50,0,0,0,0,0,0,0),(212,'Molla Wague','Mali','DEF','Leicester City',4.50,0,0,0,0,0,0,0),(213,'Vicente Iborra','Spain','MID','Leicester City',6.00,0,0,0,0,0,0,0),(214,'Roberto Firmino','Brazil','FWD','Liverpool',8.50,0,0,0,0,0,0,0),(215,'Philippe Coutinho','Brazil','MID','Liverpool',9.00,0,0,0,0,0,0,0),(216,'Sadio Mane','Senegal','MID','Liverpool',9.50,0,0,0,0,0,0,0),(217,'Georginio Wijnaldum','Netherlands','MID','Liverpool',7.00,0,0,0,0,0,0,0),(218,'James Milner','England','MID','Liverpool',6.50,0,0,0,0,0,0,0),(219,'Adam Lallana','England','MID','Liverpool',7.50,0,0,0,0,0,0,0),(220,'Nathaniel Clyne','England','DEF','Liverpool',5.50,0,0,0,0,0,0,0),(221,'Simon Mignolet','Belgium','GK','Liverpool',5.00,0,0,0,0,0,0,0),(222,'Dejan Lovren','Croatia','DEF','Liverpool',5.50,0,0,0,0,0,0,0),(223,'Emre Can','Germany','MID','Liverpool',5.00,0,0,0,0,0,0,0),(224,'Joel Matip','Cameroon','DEF','Liverpool',5.50,0,0,0,0,0,0,0),(225,'Divock Origi','Belgium','FWD','Liverpool',7.50,0,0,0,0,0,0,0),(226,'Jordan Henderson','England','MID','Liverpool',5.50,0,0,0,0,0,0,0),(227,'Daniel Sturridge','England','FWD','Liverpool',8.00,0,0,0,0,0,0,0),(228,'Lucas Leiva','Brazil','MID','Liverpool',4.50,0,0,0,0,0,0,0),(229,'Ragnar Klavan','Estonia','DEF','Liverpool',4.50,0,0,0,0,0,0,0),(230,'Mamadou Sakho','France','DEF','Liverpool',5.00,0,0,0,0,0,0,0),(231,'Loris Karius','Germany','GK','Liverpool',5.00,0,0,0,0,0,0,0),(232,'Trent Alexander-Arnold','England','DEF','Liverpool',4.50,0,0,0,0,0,0,0),(233,'Alberto Moreno','Spain','DEF','Liverpool',4.50,0,0,0,0,0,0,0),(234,'Ben Woodburn','Wales','MID','Liverpool',4.50,0,0,0,0,0,0,0),(235,'Marko Grujic','Serbia','MID','Liverpool',4.50,0,0,0,0,0,0,0),(236,'Joe Gomez','England','DEF','Liverpool',4.50,0,0,0,0,0,0,0),(237,'Sheyi Ojo','England','MID','Liverpool',5.00,0,0,0,0,0,0,0),(238,'Mohamed Salah','Egypt','MID','Liverpool',9.00,0,0,0,0,0,0,0),(239,'Danny Ings','England','FWD','Liverpool',5.50,0,0,0,0,0,0,0),(240,'Dominic Solanke','England','FWD','Liverpool',5.00,0,0,0,0,0,0,0),(241,'Kevin De Bruyne','Belgium','MID','Manchester City',10.00,0,0,0,0,0,0,0),(242,'Sergio Aguero','Argentina','FWD','Manchester City',11.50,0,0,0,0,0,0,0),(243,'Raheem Sterling','England','MID','Manchester City',8.00,0,0,0,0,0,0,0),(244,'Kyle Walker','England','DEF','Manchester City',6.50,0,0,0,0,0,0,0),(245,'David Silva','Spain','MID','Manchester City',8.00,0,0,0,0,0,0,0),(246,'Leroy Sane','Germany','MID','Manchester City',8.50,0,0,0,0,0,0,0),(247,'Nicolas Otamendi','Argentina','DEF','Manchester City',5.50,0,0,0,0,0,0,0),(248,'Aleksandar Kolarov','Serbia','DEF','Manchester City',5.50,0,0,0,0,0,0,0),(249,'Yaya Toure','Cote d\'Ivoire','MID','Manchester City',6.50,0,0,0,0,0,0,0),(250,'Fernandinho','Brazil','MID','Manchester City',5.00,0,0,0,0,0,0,0),(251,'Claudio Bravo','Chile','GK','Manchester City',5.00,0,0,0,0,0,0,0),(252,'Gabriel Jesus','Brazil','FWD','Manchester City',10.50,0,0,0,0,0,0,0),(253,'John Stones','England','DEF','Manchester City',5.50,0,0,0,0,0,0,0),(254,'Vincent Kompany','Belgium','DEF','Manchester City',6.00,0,0,0,0,0,0,0),(255,'Kelechi Iheanacho','Nigeria','FWD','Manchester City',7.00,0,0,0,0,0,0,0),(256,'Ilkay Gundogan','Germany','MID','Manchester City',5.50,0,0,0,0,0,0,0),(257,'Fernando','Brazil','MID','Manchester City',4.50,0,0,0,0,0,0,0),(258,'Fabian Delph','England','MID','Manchester City',4.50,0,0,0,0,0,0,0),(259,'Ederson Moraes','Brazil','GK','Manchester City',5.50,0,0,0,0,0,0,0),(260,'Bernardo Silva','Portugal','MID','Manchester City',8.00,0,0,0,0,0,0,0),(261,'Romelu Lukaku','Belgium','FWD','Manchester United',11.50,0,0,0,0,0,0,0),(262,'David de Gea','Spain','GK','Manchester United',5.50,0,0,0,0,0,0,0),(263,'Antonio Valencia','Ecuador','DEF','Manchester United',6.50,0,0,0,0,0,0,0),(264,'Paul Pogba','France','MID','Manchester United',8.00,0,0,0,0,0,0,0),(265,'Eric Bailly','Cote d\'Ivoire','DEF','Manchester United',6.00,0,0,0,0,0,0,0),(266,'Juan Mata','Spain','MID','Manchester United',7.00,0,0,0,0,0,0,0),(267,'Daley Blind','Netherlands','DEF','Manchester United',5.50,0,0,0,0,0,0,0),(268,'Ander Herrera','Spain','MID','Manchester United',5.50,0,0,0,0,0,0,0),(269,'Anthony Martial','France','FWD','Manchester United',8.00,0,0,0,0,0,0,0),(270,'Marcos Rojo','Argentina','DEF','Manchester United',5.50,0,0,0,0,0,0,0),(271,'Marcus Rashford','England','FWD','Manchester United',7.50,0,0,0,0,0,0,0),(272,'Henrikh Mkhitaryan','Armenia','MID','Manchester United',8.00,0,0,0,0,0,0,0),(273,'Matteo Darmian','Italy','DEF','Manchester United',5.50,0,0,0,0,0,0,0),(274,'Jesse Lingard','England','MID','Manchester United',6.00,0,0,0,0,0,0,0),(275,'Phil Jones','England','DEF','Manchester United',5.00,0,0,0,0,0,0,0),(276,'Chris Smalling','England','DEF','Manchester United',5.50,0,0,0,0,0,0,0),(277,'Marouane Fellaini','Belgium','MID','Manchester United',5.00,0,0,0,0,0,0,0),(278,'Luke Shaw','England','DEF','Manchester United',5.00,0,0,0,0,0,0,0),(279,'Michael Carrick','England','MID','Manchester United',4.50,0,0,0,0,0,0,0),(280,'Ashley Young','England','MID','Manchester United',5.00,0,0,0,0,0,0,0),(281,'Sergio Romero','Argentina','GK','Manchester United',5.00,0,0,0,0,0,0,0),(282,'Axel Tuanzebe','England','DEF','Manchester United',4.00,0,0,0,0,0,0,0),(283,'Timothy Fosu-Mensah','Netherlands','MID','Manchester United',4.50,0,0,0,0,0,0,0),(284,'Joel Castro Pereira','Portugal','GK','Manchester United',4.00,0,0,0,0,0,0,0),(285,'Victor Lindelof','Sweden','DEF','Manchester United',5.50,0,0,0,0,0,0,0),(286,'Rob Elliot','Ireland','GK','Newcastle United',4.00,0,0,0,0,0,0,0),(287,'Karl Darlow','England','GK','Newcastle United',4.50,0,0,0,0,0,0,0),(288,'DeAndre Yedlin','United States','DEF','Newcastle United',4.50,0,0,0,0,0,0,0),(289,'Ciaran Clark','Ireland','DEF','Newcastle United',4.50,0,0,0,0,0,0,0),(290,'Lascelles','England','DEF','Newcastle United',4.50,0,0,0,0,0,0,0),(291,'Paul Dummett','Wales','DEF','Newcastle United',4.50,0,0,0,0,0,0,0),(292,'Grant Hanley','Scotland','DEF','Newcastle United',4.00,0,0,0,0,0,0,0),(293,'Jesus Gamez','Spain','DEF','Newcastle United',4.00,0,0,0,0,0,0,0),(294,'Florian Lejeune','France','DEF','Newcastle United',4.50,0,0,0,0,0,0,0),(295,'Massadio Haidara','France','DEF','Newcastle United',4.00,0,0,0,0,0,0,0),(296,'Matt Ritchie','Scotland','MID','Newcastle United',6.00,0,0,0,0,0,0,0),(297,'Jonjo Shelvey','England','MID','Newcastle United',5.50,0,0,0,0,0,0,0),(298,'Mohamed Diame','Senegal','MID','Newcastle United',5.00,0,0,0,0,0,0,0),(299,'Jack Colback','England','MID','Newcastle United',4.50,0,0,0,0,0,0,0),(300,'Christian Atsu','Ghana','MID','Newcastle United',5.00,0,0,0,0,0,0,0),(301,'Siem de Jong','Netherlands','MID','Newcastle United',5.00,0,0,0,0,0,0,0),(302,'Rolando Aarons','England','MID','Newcastle United',4.50,0,0,0,0,0,0,0),(303,'Dwight Gayle','England','FWD','Newcastle United',6.50,0,0,0,0,0,0,0),(304,'Ayoze Perez','Spain','FWD','Newcastle United',5.50,0,0,0,0,0,0,0),(305,'Aleksandar Mitrovic','Serbia','FWD','Newcastle United',5.00,0,0,0,0,0,0,0),(306,'Daryl Murphy','Ireland','FWD','Newcastle United',4.50,0,0,0,0,0,0,0),(307,'Fraser Forster','England','GK','Southampton',5.00,0,0,0,0,0,0,0),(308,'Nathan Redmond','England','MID','Southampton',6.50,0,0,0,0,0,0,0),(309,'Ryan Bertrand','England','DEF','Southampton',5.50,0,0,0,0,0,0,0),(310,'Dusan Tadic','Portugal','MID','Southampton',6.50,0,0,0,0,0,0,0),(311,'Cedric Soares','Portugal','DEF','Southampton',5.00,0,0,0,0,0,0,0),(312,'James Ward-Prowse','England','MID','Southampton',5.50,0,0,0,0,0,0,0),(313,'Oriol Romeu','Spain','MID','Southampton',4.50,0,0,0,0,0,0,0),(314,'Maya Yoshida','Japan','DEF','Southampton',5.00,0,0,0,0,0,0,0),(315,'Steven Davis','Northern Ireland','MID','Southampton',5.00,0,0,0,0,0,0,0),(316,'Virgil van Dijk','Netherlands','DEF','Southampton',5.50,0,0,0,0,0,0,0),(317,'Charlie Austin','England','FWD','Southampton',6.50,0,0,0,0,0,0,0),(318,'Jack Stephens','England','DEF','Southampton',5.00,0,0,0,0,0,0,0),(319,'Shane Long','Ireland','FWD','Southampton',6.00,0,0,0,0,0,0,0),(320,'Sofiane Boufal','Morocco','MID','Southampton',6.00,0,0,0,0,0,0,0),(321,'Jordy Clasie','Netherlands','MID','Southampton',4.50,0,0,0,0,0,0,0),(322,'Pierre-Emile Hojbjerg','Denmark','MID','Southampton',4.50,0,0,0,0,0,0,0),(323,'Manolo Gabbiadini','Italy','FWD','Southampton',7.00,0,0,0,0,0,0,0),(324,'Sam McQueen','England','MID','Southampton',4.50,0,0,0,0,0,0,0),(325,'Matt Targett','England','DEF','Southampton',4.50,0,0,0,0,0,0,0),(326,'Josh Sims','England','MID','Southampton',4.50,0,0,0,0,0,0,0),(327,'Jeremy Pied','France','MID','Southampton',4.50,0,0,0,0,0,0,0),(328,'Jason McCarthy','England','DEF','Southampton',4.50,0,0,0,0,0,0,0),(329,'Jan Bednarek','Poland','DEF','Southampton',4.50,0,0,0,0,0,0,0),(330,'Joe Allen','Wales','MID','Stoke City',5.50,0,0,0,0,0,0,0),(331,'Marko Arnautovic','England','MID','Stoke City',7.00,0,0,0,0,0,0,0),(332,'Lee Grant','England','GK','Stoke City',4.50,0,0,0,0,0,0,0),(333,'Erik Pieters','Netherlands','DEF','Stoke City',5.00,0,0,0,0,0,0,0),(334,'Steven Fletcher','Scotland','FWD','Stoke City',5.00,0,0,0,0,0,0,0),(335,'Ryan Shawcross','England','DEF','Stoke City',5.00,0,0,0,0,0,0,0),(336,'Xherdan Shaqiri','Switzerland','MID','Stoke City',6.00,0,0,0,0,0,0,0),(337,'Peter Crouch','England','FWD','Stoke City',5.00,0,0,0,0,0,0,0),(338,'Glenn Whelan','Ireland','MID','Stoke City',4.50,0,0,0,0,0,0,0),(339,'Charlie Adam','Scotland','MID','Stoke City',5.00,0,0,0,0,0,0,0),(340,'Geoff Cameron','United States','DEF','Stoke City',4.50,0,0,0,0,0,0,0),(341,'Glen Johnson','England','DEF','Stoke City',4.50,0,0,0,0,0,0,0),(342,'Mame Biram Diouf','Senegal','FWD','Stoke City',5.50,0,0,0,0,0,0,0),(343,'Ramadan Sobhi','Egypt','MID','Stoke City',5.00,0,0,0,0,0,0,0),(344,'Marc Muniesa','Spain','DEF','Stoke City',4.50,0,0,0,0,0,0,0),(345,'Bojan Krkic','Spain','FWD','Stoke City',5.50,0,0,0,0,0,0,0),(346,'Phil Bardsley','Scotland','DEF','Stoke City',4.50,0,0,0,0,0,0,0),(347,'Saido Berahino','England','FWD','Stoke City',6.00,0,0,0,0,0,0,0),(348,'Giannelli Imbula','France','MID','Stoke City',4.50,0,0,0,0,0,0,0),(349,'Jack Butland','England','GK','Stoke City',5.00,0,0,0,0,0,0,0),(350,'Ibrahim Afellay','Netherlands','MID','Stoke City',5.00,0,0,0,0,0,0,0),(351,'Josh Tymon','England','DEF','Stoke City',4.50,0,0,0,0,0,0,0),(352,'Gylfi Sigurdsson','Iceland','MID','Swansea',8.50,0,0,0,0,0,0,0),(353,'Fernando Llorente','Spain','FWD','Swansea',7.50,0,0,0,0,0,0,0),(354,'Lukasz Fabianski','Poland','GK','Swansea',4.50,0,0,0,0,0,0,0),(355,'Leroy Fer','Netherlands','MID','Swansea',5.50,0,0,0,0,0,0,0),(356,'Alfie Mawson','England','DEF','Swansea',5.00,0,0,0,0,0,0,0),(357,'Kyle Naughton','England','DEF','Swansea',4.50,0,0,0,0,0,0,0),(358,'Wayne Routledge','England','MID','Swansea',5.50,0,0,0,0,0,0,0),(359,'Federico Fernandez','Argentina','DEF','Swansea',4.50,0,0,0,0,0,0,0),(360,'Martin Olsson','Sweden','DEF','Swansea',5.00,0,0,0,0,0,0,0),(361,'Tom Carroll','England','MID','Swansea',4.50,0,0,0,0,0,0,0),(362,'Ki Sung-yueng','South Korea','MID','Swansea',5.00,0,0,0,0,0,0,0),(363,'Jordan Ayew','Ghana','FWD','Swansea',5.00,0,0,0,0,0,0,0),(364,'Modou Barrow','The Gambia','MID','Swansea',5.00,0,0,0,0,0,0,0),(365,'Leon Britton','England','MID','Swansea',4.50,0,0,0,0,0,0,0),(366,'Stephen Kingsley','Scotland','DEF','Swansea',4.50,0,0,0,0,0,0,0),(367,'Angel Rangel','Spain','DEF','Swansea',4.00,0,0,0,0,0,0,0),(368,'Luciano Narsingh','Netherlands','MID','Swansea',5.00,0,0,0,0,0,0,0),(369,'Jay Fulton','Scotland','MID','Swansea',4.50,0,0,0,0,0,0,0),(370,'Jefferson Montero','Ecuador','MID','Swansea',5.00,0,0,0,0,0,0,0),(371,'Mike van der Hoorn','Netherlands','DEF','Swansea',4.50,0,0,0,0,0,0,0),(372,'Nathan Dyer','England','MID','Swansea',4.50,0,0,0,0,0,0,0),(373,'Oliver McBurnie','Scotland','FWD','Swansea',4.50,0,0,0,0,0,0,0),(374,'Kristoffer Nordfeldt','Sweden','GK','Swansea',4.00,0,0,0,0,0,0,0),(375,'Roque Mesa','Spain','MID','Swansea',4.50,0,0,0,0,0,0,0),(376,'Tammy Abraham','England','FWD','Swansea',5.50,0,0,0,0,0,0,0),(377,'Dele Alli','England','MID','Tottenham',9.50,0,0,0,0,0,0,0),(378,'Harry Kane','England','FWD','Tottenham',12.50,0,0,0,0,0,0,0),(379,'Christian Eriksen','Denmark','MID','Tottenham',9.50,0,0,0,0,0,0,0),(380,'Son Heung-min','South Korea','MID','Tottenham',8.00,0,0,0,0,0,0,0),(381,'Hugo Lloris','France','GK','Tottenham',5.50,0,0,0,0,0,0,0),(382,'Jan Vertonghen','Belgium','DEF','Tottenham',6.00,0,0,0,0,0,0,0),(383,'Toby Alderweireld','Belgium','DEF','Tottenham',6.00,0,0,0,0,0,0,0),(384,'Victor Wanyama','Kenya','MID','Tottenham',5.00,0,0,0,0,0,0,0),(385,'Eric Dier','England','MID','Tottenham',5.00,0,0,0,0,0,0,0),(386,'Ben Davies','Wales','DEF','Tottenham',5.50,0,0,0,0,0,0,0),(387,'Danny Rose','England','DEF','Tottenham',6.50,0,0,0,0,0,0,0),(388,'Mousa Dembele','Belgium','MID','Tottenham',5.00,0,0,0,0,0,0,0),(389,'Vincent Janssen','Netherlands','FWD','Tottenham',7.50,0,0,0,0,0,0,0),(390,'Kieran Trippier','England','DEF','Tottenham',5.50,0,0,0,0,0,0,0),(391,'Moussa Sissokho','France','MID','Tottenham',5.50,0,0,0,0,0,0,0),(392,'Harry Winks','England','MID','Tottenham',5.00,0,0,0,0,0,0,0),(393,'Erik Lamela','Argentina','MID','Tottenham',6.50,0,0,0,0,0,0,0),(394,'Michel Vorm','Netherlands','GK','Tottenham',5.00,0,0,0,0,0,0,0),(395,'Georges-Kevin NKoudou','France','MID','Tottenham',5.50,0,0,0,0,0,0,0),(396,'Kevin Wimmer','Austria','DEF','Tottenham',4.50,0,0,0,0,0,0,0),(397,'Atienne Capoue','France','MID','Watford',5.50,0,0,0,0,0,0,0),(398,'Troy Deeney','England','FWD','Watford',6.50,0,0,0,0,0,0,0),(399,'Heurelho Gomes','Brazil','GK','Watford',4.50,0,0,0,0,0,0,0),(400,'Jose Holebas','Greece','DEF','Watford',5.00,0,0,0,0,0,0,0),(401,'Miguel Britos','Uruguay','DEF','Watford',4.50,0,0,0,0,0,0,0),(402,'Sebastian Prodl','Austria','DEF','Watford',4.50,0,0,0,0,0,0,0),(403,'Nordin Amrabat','Morocco','MID','Watford',5.00,0,0,0,0,0,0,0),(404,'Younus Kaboul','France','DEF','Watford',4.50,0,0,0,0,0,0,0),(405,'Tom Cleverley','England','MID','Watford',5.00,0,0,0,0,0,0,0),(406,'Daryl Janmaat','Netherlands','DEF','Watford',5.00,0,0,0,0,0,0,0),(407,'Valon Behrami','Switzerland','MID','Watford',4.50,0,0,0,0,0,0,0),(408,'Roberto Pereyra','Argentina','MID','Watford',6.00,0,0,0,0,0,0,0),(409,'Stefano Okaka','Italy','FWD','Watford',5.50,0,0,0,0,0,0,0),(410,'Abdoulaye Doucoure','France','MID','Watford',5.00,0,0,0,0,0,0,0),(411,'Kabasele','Belgium','DEF','Watford',4.50,0,0,0,0,0,0,0),(412,'Craig Cathcart','Northern Ireland','DEF','Watford',4.50,0,0,0,0,0,0,0),(413,'Isaac Success','Nigeria','MID','Watford',5.50,0,0,0,0,0,0,0),(414,'Adrian Mariappa','Jamaica','DEF','Watford',4.00,0,0,0,0,0,0,0),(415,'Nathaniel Chalobah','England','MID','Watford',4.50,0,0,0,0,0,0,0),(416,'Mauro Zarate','Argentina','FWD','Watford',5.50,0,0,0,0,0,0,0),(417,'Costel Pantilimon','Romania','GK','Watford',4.50,0,0,0,0,0,0,0),(418,'Kiko Femenia','Spain','DEF','Watford',4.50,0,0,0,0,0,0,0),(419,'Steven Berghuis','Netherlands','MID','Watford',5.00,0,0,0,0,0,0,0),(420,'Will Hughes','England','MID','Watford',5.00,0,0,0,0,0,0,0),(421,'Gareth McAuley','Northern Ireland','DEF','West Bromwich Albion',5.00,0,0,0,0,0,0,0),(422,'Salomon Rondon','Venezuela','FWD','West Bromwich Albion',6.50,0,0,0,0,0,0,0),(423,'Matt Phillips','Scotland','MID','West Bromwich Albion',6.00,0,0,0,0,0,0,0),(424,'Ben Foster','England','GK','West Bromwich Albion',4.50,0,0,0,0,0,0,0),(425,'Nacer Chadli','Belgium','MID','West Bromwich Albion',6.00,0,0,0,0,0,0,0),(426,'Craig Dawson','England','DEF','West Bromwich Albion',5.00,0,0,0,0,0,0,0),(427,'Chris Brunt','Northern Ireland','MID','West Bromwich Albion',5.50,0,0,0,0,0,0,0),(428,'James Morrison','Scotland','MID','West Bromwich Albion',5.50,0,0,0,0,0,0,0),(429,'Jonny Evans','Northern Ireland','DEF','West Bromwich Albion',5.00,0,0,0,0,0,0,0),(430,'Jake Livermore','England','MID','West Bromwich Albion',5.00,0,0,0,0,0,0,0),(431,'Allan Nyom','Cameroon','DEF','West Bromwich Albion',5.00,0,0,0,0,0,0,0),(432,'Jay Rodriguez','England','FWD','West Bromwich Albion',6.00,0,0,0,0,0,0,0),(433,'Claudio Yacob','Argentina','MID','West Bromwich Albion',4.50,0,0,0,0,0,0,0),(434,'James McClean','Ireland','MID','West Bromwich Albion',5.00,0,0,0,0,0,0,0),(435,'Hal Robson-Kanu','Wales','MID','West Bromwich Albion',5.00,0,0,0,0,0,0,0),(436,'Jonathan Leko','England','MID','West Bromwich Albion',4.50,0,0,0,0,0,0,0),(437,'Sam Field','England','MID','West Bromwich Albion',4.50,0,0,0,0,0,0,0),(438,'Boaz Myhill','Wales','GK','West Bromwich Albion',4.00,0,0,0,0,0,0,0),(439,'Ahmed Hegazy','Egypt','DEF','West Bromwich Albion',4.50,0,0,0,0,0,0,0),(440,'Robert Snodgrass','Scotland','MID','West Ham United',6.00,0,0,0,0,0,0,0),(441,'Manuel Lanzini','Argentina','MID','West Ham United',7.00,0,0,0,0,0,0,0),(442,'Michail Antonio','England','MID','West Ham United',7.50,0,0,0,0,0,0,0),(443,'Winston Reid','New Zealand','DEF','West Ham United',5.00,0,0,0,0,0,0,0),(444,'Jose Fonte','Portugal','DEF','West Ham United',5.00,0,0,0,0,0,0,0),(445,'Andre Ayew','Ghana','MID','West Ham United',7.00,0,0,0,0,0,0,0),(446,'Cheikhou Kouyate','Senegal','MID','West Ham United',5.00,0,0,0,0,0,0,0),(447,'Mark Noble','England','MID','West Ham United',5.50,0,0,0,0,0,0,0),(448,'Darren Randolph','Ireland','GK','West Ham United',4.50,0,0,0,0,0,0,0),(449,'James Collins','Wales','DEF','West Ham United',4.50,0,0,0,0,0,0,0),(450,'Andy Carroll','England','FWD','West Ham United',6.00,0,0,0,0,0,0,0),(451,'Adrian','Spain','GK','West Ham United',4.50,0,0,0,0,0,0,0),(452,'Aaron Cresswell','England','DEF','West Ham United',5.00,0,0,0,0,0,0,0),(453,'Pedro Obiang','Spain','MID','West Ham United',4.50,0,0,0,0,0,0,0),(454,'Sofiane Feghouli','Algeria','MID','West Ham United',5.50,0,0,0,0,0,0,0),(455,'Angelo Ogbonna','Italy','DEF','West Ham United',4.50,0,0,0,0,0,0,0),(456,'Pablo Zabaleta','Argentina','DEF','West Ham United',5.00,0,0,0,0,0,0,0),(457,'Edimilson Fernandes','Switzerland','MID','West Ham United',4.50,0,0,0,0,0,0,0),(458,'Arthur Masuaku','Congo DR','DEF','West Ham United',4.50,0,0,0,0,0,0,0),(459,'Sam Byram','England','DEF','West Ham United',4.50,0,0,0,0,0,0,0),(460,'Ashley Fletcher','England','FWD','West Ham United',4.50,0,0,0,0,0,0,0),(461,'Diafra Sakho','Senegal','FWD','West Ham United',5.50,0,0,0,0,0,0,0);
/*!40000 ALTER TABLE `PlayersWithStats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Team`
--

DROP TABLE IF EXISTS `Team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Team` (
  `TeamId` varchar(50) NOT NULL,
  `Stadium` varchar(50) NOT NULL,
  `Played` int(11) NOT NULL,
  `Wins` int(11) NOT NULL,
  `Losses` int(11) NOT NULL,
  `Draws` int(11) NOT NULL,
  `Points` int(11) NOT NULL,
  PRIMARY KEY (`TeamId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Team`
--

LOCK TABLES `Team` WRITE;
/*!40000 ALTER TABLE `Team` DISABLE KEYS */;
INSERT INTO `Team` VALUES ('Arsenal','Emirates Stadium',0,0,0,0,0),('Bournemouth','Vitality Stadium',0,0,0,0,0),('Brighton and Hove Albion','AMEX Stadium',0,0,0,0,0),('Burnley','Turf Moor',0,0,0,0,0),('Chelsea','Stamford Bridge',0,0,0,0,0),('Crystal Palace','Selhurst Park Stadium',0,0,0,0,0),('Everton','Goodison Park',0,0,0,0,0),('Huddersfield','John Smith Stadium',0,0,0,0,0),('Leicester City','King Power Stadium',0,0,0,0,0),('Liverpool','Anfield',0,0,0,0,0),('Manchester City','Etihad Stadium',0,0,0,0,0),('Manchester United','Old Trafford',0,0,0,0,0),('Newcastle United','St. James\' Park',0,0,0,0,0),('Southampton','St. Mary\'s Stadium',0,0,0,0,0),('Stoke City','bet365 Stadium',0,0,0,0,0),('Swansea','Liberty Stadium',0,0,0,0,0),('Tottenham','White Hart Lane',0,0,0,0,0),('Watford','Vicarage Road',0,0,0,0,0),('West Bromwich Albion','The Hawthrons',0,0,0,0,0),('West Ham United','London Stadium',0,0,0,0,0);
/*!40000 ALTER TABLE `Team` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WatchList`
--

DROP TABLE IF EXISTS `WatchList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `WatchList` (
  `WatchListId` int(11) NOT NULL AUTO_INCREMENT,
  `UserId` int(11) NOT NULL,
  `PlayerId` int(11) NOT NULL,
  PRIMARY KEY (`WatchListId`),
  KEY `Playername_fk1` (`PlayerId`),
  KEY `user_fk` (`UserId`),
  CONSTRAINT `Playername_fk1` FOREIGN KEY (`PlayerId`) REFERENCES `PlayersWithStats` (`PlayerId`) ON DELETE CASCADE,
  CONSTRAINT `user_fk` FOREIGN KEY (`UserId`) REFERENCES `Generic_User` (`UserId`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WatchList`
--

LOCK TABLES `WatchList` WRITE;
/*!40000 ALTER TABLE `WatchList` DISABLE KEYS */;
/*!40000 ALTER TABLE `WatchList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'FPLHandbook'
--
/*!50003 DROP FUNCTION IF EXISTS `inwatchlist` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `inwatchlist`(userid int, playerid int) RETURNS int(11)
begin
declare result,counter int;
set counter = (select count(*) from Watchlist w where w.UserId = userid and
w.PlayerId = playerid);
case
when counter = 1 then set result = 1;
when counter = 0 then set result = 0;
end case;
return result;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `new_user` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `new_user`(username varchar(50), passkey varchar(50)) RETURNS int(11)
begin
declare counter,result int;
set counter = (select count(*) from Generic_user g where 
g.UserName = username);
case
when username = '' then set result = 0;
when passkey = '' then set result = 1;
when counter = 1 then set result = 2 ;
when counter = 0 then set result = 3;
end case;
return result;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `addtowatchlist` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addtowatchlist`(userid int, playerid int)
begin
insert into watchList (UserId, PlayerId)
values(userid, playerid);
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `check_user` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `check_user`(user_name varchar(50), passkey varchar(50))
begin

select UserId, UserType from Generic_User g
where g.UserName = user_name and g.PassKey = passkey;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `create_user` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `create_user`(user_name varchar(50), passkey varchar(50))
begin

insert into Generic_User(UserName, PassKey, UserType)
values (user_name, passkey, "User");
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `editplayers_andstats` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `editplayers_andstats`(PlayerId int, Players_Pos varchar(10),
Team varchar(50), Price decimal(10,2), GoalsScored int, GoalsConceded int,
Assists int, YC int, RC int, CleanSheets int, TotalPoints int)
begin
update PlayersWithStats
set PlayersWithStats.Players_Pos = Players_Pos, PlayersWithStats.Team = Team,
PlayersWithStats.Price = Price, PlayersWithStats.GoalsScored = GoalsScored,
PlayersWithStats.GoalsConceded = GoalsConceded, PlayersWithStats.Assists = Assists,
PlayersWithStats.YC = YC, PlayersWithStats.RC = RC, 
PlayersWithStats.CleanSheets = CleanSheets, PlayersWithStats.TotalPoints = TotalPoints
where PlayersWithStats.PlayerId = PlayerId;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `edit_matches` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `edit_matches`(MatchId int, Homescore int, AwayScore int)
begin
update Matches 
set Matches.HomeScore = Homescore, Matches.AwayScore = AwayScore
where Matches.MatchId = MatchId;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `filter_statsbyposition` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `filter_statsbyposition`(pos varchar(10))
begin
select * from PlayersWithStats p where p.Players_Pos = pos;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `filter_statsbyprice` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `filter_statsbyprice`(startprice decimal(10,2), 
endprice decimal(10,2))
begin
select * from PlayersWithStats where PlayersWithStats.Price 
between startprice and endprice;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `filter_statsbyteam` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `filter_statsbyteam`(team varchar(100))
begin
select * from PlayersWithStats p where p.Team = team ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `matchesbyTeam` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `matchesbyTeam`(team varchar(50))
begin
select * from Matches where Matches.HomeTeam = team or 
Matches.AwayTeam = team;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PlayersWithStats` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PlayersWithStats`()
begin
select * from PlayersWithStats;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `player_add` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `player_add`(pName varchar(50), Nationality varchar(50),
Pos varchar(10), Team varchar(50), price decimal(10,2))
begin
insert into PlayersWithStats(Player_Name, Nationality, Players_Pos,
Team_players, Price)
values (pName, Nationality, Pos, Team, price,0,0,0,0,0,0,0);
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `removefromwatchlist` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `removefromwatchlist`(WatchListId int)
begin
delete from WatchList where WatchList.WatchListId = WatchListId;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `showmatches` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `showmatches`()
begin
select * from Matches;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `showwatchlist` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `showwatchlist`(UserId int)
begin
select * from WatchList natural join PlayersWithStats where
WatchList.UserId = UserId;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `team_list` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `team_list`()
begin
select TeamId from Team;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-20 12:20:06
