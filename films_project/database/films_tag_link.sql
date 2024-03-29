-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: films
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.28-MariaDB

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
-- Table structure for table `tag_link`
--

DROP TABLE IF EXISTS `tag_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tag_link` (
  `film_id` int(10) unsigned NOT NULL,
  `tag_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`film_id`,`tag_id`),
  KEY `tag_id` (`tag_id`),
  CONSTRAINT `tag_link_ibfk_1` FOREIGN KEY (`film_id`) REFERENCES `films` (`id`),
  CONSTRAINT `tag_link_ibfk_2` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag_link`
--

LOCK TABLES `tag_link` WRITE;
/*!40000 ALTER TABLE `tag_link` DISABLE KEYS */;
INSERT INTO `tag_link` VALUES (1,1),(1,2),(2,1),(2,3),(2,4),(3,1),(3,5),(3,6),(4,6),(4,7),(4,8),(5,1),(5,6),(5,9),(6,1),(7,6),(7,8),(7,10),(8,7),(8,8),(9,1),(10,5),(10,6),(10,8),(11,3),(11,7),(11,9),(12,11),(13,7),(13,11),(13,12),(14,3),(14,7),(14,11),(15,10),(15,11),(16,9),(16,10),(17,1),(17,4),(17,13),(18,6),(18,8),(19,6),(19,8),(20,1),(21,1),(21,14),(22,6),(22,9),(22,10),(23,1),(23,6),(23,10),(24,1),(24,8),(24,12),(25,5),(25,8),(25,11),(26,1),(26,15),(27,1),(27,11),(27,12),(28,3),(28,7),(28,9),(29,1),(29,15),(30,1),(30,11),(31,4),(31,11),(31,13),(31,16),(32,3),(32,4),(32,11),(32,13),(32,16),(33,3),(33,4),(33,9),(34,1),(34,11),(35,1),(35,15),(35,17),(36,5),(36,6),(36,8),(37,3),(37,7),(37,9),(38,4),(38,11),(38,13),(38,16),(39,1),(39,11),(40,1),(40,11),(41,1),(41,5),(41,6),(42,3),(42,4),(42,9),(43,3),(43,7),(43,9),(44,3),(44,9),(44,11),(45,1),(46,5),(46,6),(46,8),(47,4),(47,9),(47,11),(48,1),(48,6),(48,8),(49,3),(49,4),(49,11),(49,13),(49,16),(50,1),(50,11),(51,1),(52,6),(52,9),(52,11),(53,6),(53,7),(53,9),(54,5),(54,6),(54,8),(55,3),(55,4),(55,9),(55,11),(55,13),(55,16),(56,1),(56,11),(57,3),(57,4),(57,9),(58,1),(58,9),(59,1),(59,4),(59,11),(59,13),(59,16),(60,3),(60,7),(60,9),(61,3),(61,7),(61,9),(62,1),(62,7),(62,11),(63,5),(63,7),(63,8),(64,5),(64,10),(64,11),(65,3),(65,7),(66,3),(66,9),(66,13),(67,6),(67,8),(67,11),(68,1),(68,17),(69,3),(69,7),(69,9),(70,5),(70,6),(70,10),(71,3),(71,4),(71,11),(72,3),(72,7),(72,9),(73,1),(74,5),(74,6),(74,10),(75,5),(75,6),(75,8),(76,3),(76,7),(76,9),(76,13),(76,16),(77,4),(77,6),(77,8),(78,1),(78,9),(78,17),(79,1),(79,17),(80,6),(80,9),(81,1),(81,6),(81,10),(81,11),(82,3),(82,7),(82,9),(83,11),(84,1),(84,6),(85,3),(85,7),(85,9),(86,3),(86,4),(86,9),(86,13),(86,16),(87,11),(87,12),(88,5),(88,8),(89,1),(89,9),(90,6),(90,7),(90,8),(91,3),(91,5),(91,10),(91,11),(92,1),(92,17),(93,5),(93,6),(93,8),(94,3),(94,9),(95,1),(95,6),(95,10),(96,6),(96,7),(96,9),(97,1),(98,1),(98,17),(99,3),(99,9),(100,11),(100,13),(100,16),(101,9),(101,11),(101,13),(102,1),(102,11),(102,13),(102,16),(103,3),(103,7),(103,9),(104,3),(104,4),(104,11),(104,13),(104,16),(105,6),(105,11),(106,1),(107,3),(107,4),(107,9),(108,9),(108,10),(108,11),(109,11),(109,12),(110,1),(110,12),(110,15),(111,4),(111,11),(111,12),(111,13),(111,16),(112,5),(112,6),(112,8),(113,1),(113,17),(114,1),(114,10),(114,12),(115,5),(115,6),(115,8),(116,6),(116,7),(116,9),(117,3),(117,7),(117,9),(118,5),(118,6),(118,12),(119,1),(119,6),(119,10),(120,3),(120,4),(120,9),(121,1),(121,10),(121,17),(122,3),(122,11),(122,13),(123,3),(123,4),(123,12),(123,16),(124,6),(124,9),(124,10),(125,3),(125,7),(125,9),(126,1),(126,6),(126,8),(127,1),(128,11),(128,12),(129,1),(129,11),(130,6),(130,9),(131,6),(131,10),(131,11),(132,1),(132,5),(133,1),(133,11),(134,3),(134,4),(134,11),(135,1),(136,3),(136,4),(136,11),(137,6),(137,8),(138,1),(138,11),(139,6),(139,8),(140,1),(140,5),(141,6),(141,7),(141,8),(142,1),(142,12),(143,1),(144,5),(144,6),(144,8),(145,3),(145,9),(145,10),(146,6),(147,3),(147,5),(147,11),(147,13),(147,16),(148,1),(148,11),(148,12),(149,1),(149,6),(149,10),(150,1),(150,3),(150,4),(150,13),(151,3),(151,4),(151,9),(151,11),(152,11),(152,12),(153,3),(153,4),(153,9),(154,11),(155,3),(155,9),(155,11),(155,16),(156,4),(156,9),(156,11),(157,6),(157,9),(157,10),(158,3),(158,7),(158,9),(159,3),(159,5),(159,10),(159,11),(160,1),(160,4),(160,8),(160,11),(160,13),(161,11),(161,18),(162,5),(162,6),(163,1),(163,11),(163,12),(164,6),(164,7),(164,9),(165,1),(165,3),(165,4),(165,12),(166,1),(166,4),(166,6),(166,7),(166,8),(166,9),(166,10),(167,1),(167,6),(167,8),(168,1),(168,12),(169,4),(169,8),(169,9),(170,6),(170,7),(170,8),(171,1),(171,4),(171,8),(172,1),(172,5),(172,12),(173,1),(173,7),(174,1),(174,12),(175,1),(175,11),(176,3),(176,9),(176,11),(177,5),(177,8),(178,1),(179,1),(179,11),(180,3),(180,4),(180,11),(181,3),(181,7),(181,11),(182,3),(182,4),(182,11),(182,13),(182,16),(183,3),(183,6),(183,9),(184,1),(184,11),(185,4),(185,8),(185,11),(186,9),(186,10),(186,11),(187,6),(187,8),(188,5),(188,6),(188,10),(188,11),(188,17),(189,1),(189,15),(190,3),(190,4),(190,11),(191,1),(191,7),(191,11),(192,5),(192,8),(193,1),(194,3),(194,4),(194,16),(195,1),(196,1),(196,11),(197,1),(197,6),(198,1),(199,6),(199,8),(199,11),(200,6),(200,8),(201,1),(201,17),(202,1),(202,17),(203,1),(204,1),(205,5),(205,6),(205,11),(206,1),(206,14),(207,7),(207,8),(208,3),(208,7),(209,1),(210,7),(210,9),(210,11),(210,16),(211,5),(211,6),(211,8),(212,1),(212,9),(213,1),(214,5),(215,4),(215,7),(215,9),(216,5),(216,8);
/*!40000 ALTER TABLE `tag_link` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-17  9:01:15
