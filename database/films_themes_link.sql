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
-- Table structure for table `themes_link`
--

DROP TABLE IF EXISTS `themes_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `themes_link` (
  `theme_id` int(11) NOT NULL,
  `film_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`theme_id`,`film_id`),
  KEY `film_id` (`film_id`),
  CONSTRAINT `themes_link_ibfk_1` FOREIGN KEY (`theme_id`) REFERENCES `film_themes` (`id`),
  CONSTRAINT `themes_link_ibfk_2` FOREIGN KEY (`film_id`) REFERENCES `films` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `themes_link`
--

LOCK TABLES `themes_link` WRITE;
/*!40000 ALTER TABLE `themes_link` DISABLE KEYS */;
INSERT INTO `themes_link` VALUES (1,1),(1,22),(1,52),(1,124),(2,1),(2,3),(2,6),(2,9),(2,20),(2,27),(2,29),(2,45),(2,51),(2,56),(2,73),(2,84),(2,87),(2,106),(2,110),(2,121),(2,127),(2,135),(2,138),(2,142),(2,143),(2,148),(2,152),(2,163),(2,168),(2,172),(2,173),(2,178),(2,195),(2,198),(2,209),(2,213),(3,1),(4,1),(4,27),(4,45),(4,87),(4,105),(4,133),(4,148),(4,152),(4,168),(4,178),(4,195),(4,209),(5,1),(5,121),(5,172),(5,213),(6,1),(6,6),(6,20),(6,45),(6,51),(6,73),(6,91),(6,104),(6,106),(6,110),(6,178),(6,193),(6,195),(6,201),(6,213),(7,1),(7,14),(7,47),(7,108),(7,176),(9,2),(9,21),(9,33),(9,37),(9,56),(9,65),(9,68),(9,78),(9,79),(9,82),(9,89),(9,120),(9,121),(9,135),(9,165),(9,183),(9,193),(9,194),(9,202),(9,206),(10,2),(10,5),(10,11),(10,16),(10,22),(10,28),(10,33),(10,37),(10,42),(10,43),(10,44),(10,47),(10,49),(10,52),(10,53),(10,55),(10,57),(10,58),(10,60),(10,61),(10,65),(10,66),(10,69),(10,70),(10,72),(10,80),(10,82),(10,85),(10,86),(10,89),(10,94),(10,96),(10,97),(10,99),(10,101),(10,103),(10,107),(10,116),(10,117),(10,120),(10,124),(10,125),(10,130),(10,132),(10,134),(10,145),(10,151),(10,153),(10,155),(10,156),(10,157),(10,158),(10,166),(10,169),(10,175),(10,182),(10,183),(10,185),(10,186),(10,194),(10,203),(10,208),(10,214),(10,215),(11,2),(11,11),(11,28),(11,33),(11,37),(11,42),(11,49),(11,55),(11,57),(11,60),(11,65),(11,69),(11,78),(11,82),(11,86),(11,89),(11,94),(11,96),(11,97),(11,99),(11,107),(11,117),(11,120),(11,134),(11,153),(11,156),(11,182),(11,194),(11,214),(12,2),(12,78),(12,87),(12,121),(12,135),(12,165),(12,202),(12,206),(13,2),(13,3),(13,9),(13,29),(13,56),(13,84),(13,106),(13,127),(13,136),(13,160),(13,165),(13,171),(13,173),(13,191),(13,198),(14,2),(14,15),(14,17),(14,31),(14,32),(14,38),(14,49),(14,55),(14,59),(14,66),(14,86),(14,91),(14,100),(14,104),(14,111),(14,122),(14,123),(14,147),(14,150),(14,165),(14,182),(14,190),(14,194),(15,2),(15,33),(15,78),(15,135),(15,194),(15,202),(15,206),(16,3),(16,9),(16,26),(16,29),(16,35),(16,39),(16,50),(16,56),(16,59),(16,84),(16,106),(16,127),(16,135),(16,136),(16,160),(16,165),(16,171),(16,173),(16,191),(16,198),(16,202),(17,3),(17,7),(17,10),(17,18),(17,19),(17,23),(17,24),(17,25),(17,36),(17,41),(17,46),(17,48),(17,54),(17,67),(17,77),(17,84),(17,88),(17,90),(17,93),(17,95),(17,106),(17,112),(17,119),(17,126),(17,136),(17,139),(17,140),(17,141),(17,144),(17,146),(17,162),(17,167),(17,170),(17,171),(17,172),(17,177),(17,187),(17,192),(17,197),(17,198),(17,199),(17,200),(17,207),(17,211),(17,213),(17,216),(18,3),(18,39),(18,191),(19,3),(19,9),(19,29),(19,45),(19,51),(19,56),(19,84),(19,106),(19,135),(19,136),(19,138),(19,184),(19,198),(19,213),(20,3),(20,7),(20,10),(20,18),(20,19),(20,24),(20,25),(20,36),(20,41),(20,46),(20,48),(20,54),(20,67),(20,75),(20,77),(20,88),(20,90),(20,95),(20,112),(20,115),(20,119),(20,126),(20,136),(20,137),(20,139),(20,141),(20,144),(20,160),(20,167),(20,170),(20,171),(20,177),(20,187),(20,192),(20,199),(20,200),(20,206),(20,207),(20,211),(20,216),(21,3),(21,17),(21,20),(21,26),(21,27),(21,29),(21,35),(21,39),(21,50),(21,51),(21,56),(21,73),(21,79),(21,114),(21,121),(21,135),(21,143),(21,168),(21,174),(21,193),(21,198),(21,201),(21,202),(22,4),(22,8),(22,11),(22,28),(22,44),(22,46),(22,53),(22,57),(22,60),(22,61),(22,62),(22,63),(22,65),(22,76),(22,85),(22,93),(22,96),(22,97),(22,103),(22,112),(22,115),(22,116),(22,120),(22,125),(22,132),(22,141),(22,145),(22,146),(22,151),(22,164),(22,166),(22,169),(22,170),(22,191),(22,200),(22,207),(22,208),(22,215),(23,4),(23,7),(23,8),(23,10),(23,18),(23,19),(23,24),(23,25),(23,36),(23,46),(23,48),(23,54),(23,63),(23,67),(23,75),(23,77),(23,88),(23,90),(23,93),(23,112),(23,115),(23,126),(23,131),(23,136),(23,137),(23,139),(23,141),(23,144),(23,146),(23,160),(23,166),(23,167),(23,169),(23,170),(23,171),(23,177),(23,185),(23,187),(23,192),(23,199),(23,200),(23,207),(23,211),(23,215),(23,216),(24,4),(24,11),(24,28),(24,44),(24,57),(24,61),(24,63),(24,85),(24,96),(24,101),(24,116),(24,125),(24,134),(24,151),(24,166),(24,169),(25,4),(25,8),(25,63),(25,85),(25,93),(25,112),(25,116),(25,146),(25,151),(25,166),(26,4),(26,28),(26,40),(26,53),(26,61),(26,62),(26,63),(26,65),(26,68),(26,76),(26,85),(26,96),(26,103),(26,132),(26,145),(26,151),(26,164),(26,173),(26,191),(26,208),(27,4),(27,53),(27,62),(27,68),(27,93),(27,164),(27,191),(28,4),(28,7),(28,8),(28,10),(28,19),(28,24),(28,25),(28,46),(28,54),(28,67),(28,88),(28,115),(28,125),(28,131),(28,137),(28,139),(28,166),(28,169),(28,177),(28,185),(28,187),(28,192),(28,199),(28,200),(28,211),(28,216),(29,5),(29,22),(29,43),(29,52),(29,53),(29,58),(29,70),(29,80),(29,81),(29,94),(29,99),(29,103),(29,107),(29,124),(29,130),(29,145),(29,157),(29,159),(29,162),(29,183),(29,186),(29,203),(30,5),(30,16),(30,22),(30,43),(30,52),(30,53),(30,58),(30,69),(30,70),(30,80),(30,82),(30,89),(30,94),(30,99),(30,103),(30,107),(30,120),(30,124),(30,130),(30,145),(30,157),(30,158),(30,159),(30,162),(30,166),(30,175),(30,186),(30,203),(30,208),(30,214),(31,5),(31,74),(31,80),(31,159),(31,183),(31,188),(32,5),(32,11),(32,14),(32,16),(32,22),(32,42),(32,43),(32,44),(32,47),(32,52),(32,60),(32,69),(32,80),(32,82),(32,97),(32,100),(32,101),(32,107),(32,108),(32,117),(32,124),(32,125),(32,130),(32,132),(32,134),(32,145),(32,153),(32,155),(32,156),(32,157),(32,158),(32,161),(32,175),(32,176),(32,185),(32,186),(32,203),(32,210),(32,214),(33,5),(33,11),(33,16),(33,28),(33,37),(33,42),(33,43),(33,44),(33,47),(33,57),(33,60),(33,66),(33,69),(33,70),(33,82),(33,85),(33,94),(33,96),(33,97),(33,99),(33,101),(33,107),(33,117),(33,120),(33,125),(33,132),(33,134),(33,153),(33,155),(33,156),(33,157),(33,158),(33,175),(33,194),(33,203),(33,208),(33,214),(33,215),(34,5),(34,22),(34,42),(34,52),(34,58),(34,80),(34,94),(34,124),(34,130),(34,145),(34,157),(34,159),(34,186),(35,6),(35,17),(35,45),(35,56),(35,93),(35,95),(35,184),(35,193),(35,204),(36,6),(36,9),(36,72),(36,118),(36,127),(36,142),(37,6),(37,9),(37,20),(37,45),(37,51),(37,56),(37,73),(37,106),(37,127),(37,142),(37,172),(37,173),(37,213),(38,6),(38,20),(38,51),(38,56),(38,73),(38,102),(38,106),(38,110),(38,111),(38,142),(38,163),(38,193),(39,6),(39,45),(39,95),(39,193),(39,204),(40,7),(40,10),(40,23),(40,25),(40,36),(40,41),(40,64),(40,70),(40,74),(40,118),(40,119),(40,141),(40,159),(40,162),(40,167),(40,172),(40,188),(40,197),(40,205),(41,7),(41,8),(41,10),(41,18),(41,19),(41,24),(41,25),(41,36),(41,46),(41,48),(41,54),(41,67),(41,75),(41,77),(41,88),(41,90),(41,112),(41,115),(41,131),(41,137),(41,139),(41,141),(41,144),(41,167),(41,170),(41,177),(41,187),(41,192),(41,199),(41,200),(41,207),(41,211),(41,216),(42,7),(42,8),(42,10),(42,18),(42,19),(42,36),(42,41),(42,46),(42,48),(42,54),(42,63),(42,75),(42,77),(42,88),(42,90),(42,93),(42,95),(42,112),(42,115),(42,119),(42,136),(42,137),(42,139),(42,141),(42,144),(42,146),(42,160),(42,167),(42,170),(42,171),(42,177),(42,187),(42,192),(42,200),(42,211),(42,216),(43,7),(43,23),(43,64),(43,70),(43,74),(43,118),(43,159),(43,162),(43,167),(43,172),(43,197),(43,205),(44,8),(44,75),(44,115),(44,119),(44,141),(44,144),(44,169),(44,187),(44,215),(45,9),(45,62),(45,68),(45,92),(45,98),(45,188),(45,202),(45,204),(46,9),(46,61),(46,62),(46,84),(46,150),(46,173),(47,10),(47,25),(47,64),(47,131),(47,160),(47,180),(47,185),(47,199),(47,205),(48,11),(48,28),(48,40),(48,53),(48,60),(48,61),(48,63),(48,65),(48,72),(48,76),(48,97),(48,103),(48,116),(48,117),(48,120),(48,132),(48,145),(48,151),(48,158),(48,164),(48,208),(48,210),(49,12),(49,20),(49,31),(49,34),(49,91),(49,101),(49,105),(49,110),(49,113),(49,128),(49,138),(49,143),(49,148),(49,154),(49,161),(49,163),(49,178),(49,179),(49,195),(49,196),(49,201),(49,209),(49,212),(50,12),(50,13),(50,14),(50,16),(50,25),(50,30),(50,44),(50,47),(50,50),(50,52),(50,62),(50,71),(50,83),(50,100),(50,108),(50,125),(50,128),(50,131),(50,132),(50,133),(50,147),(50,154),(50,156),(50,161),(50,176),(50,179),(50,180),(50,184),(50,185),(50,186),(50,199),(50,205),(50,210),(51,12),(51,13),(51,14),(51,27),(51,30),(51,34),(51,40),(51,50),(51,71),(51,72),(51,83),(51,87),(51,102),(51,108),(51,109),(51,110),(51,111),(51,113),(51,121),(51,128),(51,133),(51,138),(51,142),(51,148),(51,152),(51,154),(51,161),(51,163),(51,168),(51,176),(51,179),(51,180),(51,184),(51,190),(51,191),(51,196),(51,208),(51,209),(52,12),(52,34),(52,71),(52,105),(52,128),(52,133),(52,148),(52,161),(52,178),(52,179),(53,12),(53,13),(53,14),(53,30),(53,47),(53,71),(53,72),(53,83),(53,108),(53,128),(53,131),(53,133),(53,154),(53,161),(53,179),(53,184),(53,199),(54,12),(54,113),(54,138),(54,143),(54,161),(54,196),(54,201),(54,212),(55,12),(55,13),(55,14),(55,34),(55,71),(55,83),(55,87),(55,108),(55,109),(55,113),(55,128),(55,133),(55,152),(55,163),(55,176),(55,179),(55,184),(55,190),(55,196),(56,12),(56,13),(56,14),(56,64),(56,83),(56,108),(56,128),(56,147),(56,161),(56,176),(56,179),(56,186),(56,205),(57,13),(57,26),(57,34),(57,71),(57,79),(57,83),(57,109),(57,114),(57,123),(57,128),(57,154),(57,174),(57,176),(57,180),(58,13),(58,27),(58,40),(58,50),(58,87),(58,102),(58,109),(58,121),(58,152),(58,163),(58,190),(59,15),(59,26),(59,34),(59,35),(59,38),(59,39),(59,71),(59,79),(59,89),(59,109),(59,110),(59,114),(59,123),(59,154),(59,163),(59,174),(60,15),(60,17),(60,31),(60,32),(60,38),(60,49),(60,55),(60,59),(60,60),(60,66),(60,73),(60,76),(60,84),(60,86),(60,91),(60,100),(60,102),(60,104),(60,111),(60,122),(60,123),(60,147),(60,150),(60,151),(60,155),(60,171),(60,180),(60,182),(60,210),(61,15),(61,17),(61,31),(61,32),(61,38),(61,49),(61,55),(61,59),(61,71),(61,76),(61,86),(61,100),(61,102),(61,104),(61,110),(61,111),(61,122),(61,123),(61,147),(61,150),(61,152),(61,154),(61,155),(61,163),(61,175),(61,180),(61,182),(61,193),(61,210),(62,15),(62,26),(62,34),(62,35),(62,39),(62,79),(62,114),(62,174),(63,15),(63,17),(63,26),(63,35),(63,38),(63,79),(63,109),(63,110),(63,114),(63,123),(63,154),(63,174),(64,16),(64,22),(64,33),(64,37),(64,42),(64,43),(64,44),(64,52),(64,57),(64,69),(64,72),(64,80),(64,82),(64,89),(64,96),(64,101),(64,103),(64,107),(64,117),(64,120),(64,124),(64,125),(64,130),(64,140),(64,153),(64,156),(64,157),(64,175),(64,183),(64,203),(64,212),(64,214),(64,215),(65,16),(65,22),(65,52),(65,81),(65,124),(66,18),(66,36),(66,41),(66,67),(66,93),(66,112),(66,119),(66,140),(66,141),(66,146),(66,162),(66,167),(66,171),(66,197),(67,18),(67,19),(67,36),(67,46),(67,75),(67,77),(67,144),(67,160),(67,169),(67,177),(67,185),(67,192),(67,206),(67,211),(67,215),(68,20),(68,31),(68,32),(68,91),(68,105),(68,113),(68,122),(68,143),(68,148),(68,195),(68,196),(68,201),(69,21),(69,30),(69,43),(69,58),(69,61),(69,68),(69,92),(69,99),(69,164),(69,183),(69,188),(70,21),(70,92),(70,164),(70,183),(71,21),(71,30),(71,43),(71,58),(71,94),(71,99),(71,183),(72,21),(72,68),(72,188),(73,21),(73,33),(73,37),(73,65),(73,78),(73,89),(73,183),(73,206),(74,21),(74,62),(74,68),(74,92),(74,98),(74,188),(74,202),(74,204),(75,23),(75,48),(75,77),(75,78),(75,90),(75,95),(75,126),(75,140),(75,170),(75,204),(76,23),(76,172),(76,197),(77,23),(77,27),(77,29),(77,39),(77,41),(77,118),(77,126),(77,127),(77,165),(77,168),(77,184),(77,198),(77,209),(78,23),(78,48),(78,126),(78,136),(78,198),(78,207),(79,24),(79,44),(79,54),(79,67),(79,90),(79,116),(79,126),(79,131),(79,137),(79,139),(79,140),(79,166),(79,170),(79,200),(79,207),(79,216),(80,24),(80,88),(80,169),(80,185),(80,215),(81,25),(81,64),(81,70),(81,74),(81,91),(81,118),(81,159),(81,162),(81,188),(81,205),(82,26),(82,35),(82,39),(82,79),(82,114),(82,138),(82,154),(82,174),(83,27),(83,50),(83,74),(83,84),(83,142),(83,165),(83,190),(84,29),(85,30),(85,58),(85,146),(86,30),(86,50),(86,62),(86,83),(86,205),(87,30),(87,81),(87,92),(87,143),(88,31),(88,32),(88,38),(88,47),(88,49),(88,55),(88,59),(88,66),(88,76),(88,86),(88,100),(88,101),(88,104),(88,111),(88,122),(88,134),(88,147),(88,155),(88,156),(88,158),(88,180),(88,210),(89,33),(89,37),(89,61),(89,194),(90,34),(90,40),(90,72),(90,102),(90,133),(90,152),(90,163),(90,179),(90,184),(90,191),(91,40),(91,59),(91,66),(91,127),(91,150),(91,182),(92,41),(92,64),(92,70),(92,74),(92,118),(92,119),(92,162),(92,172),(92,197),(93,50),(94,53),(94,57),(94,65),(94,85),(94,97),(94,103),(94,116),(94,130),(94,132),(94,164),(94,173),(94,203),(94,207),(94,208),(95,58),(95,99),(95,146),(96,68),(96,92),(96,98),(96,188),(96,202),(97,70),(97,81),(97,124),(97,140),(97,197),(98,81),(99,81),(99,186),(100,81),(100,212),(101,87),(101,109),(101,121),(101,135),(101,142),(101,168),(101,209),(101,213),(102,89),(103,92),(103,98),(103,204),(104,93),(104,95),(104,204),(105,98),(105,197),(106,98),(107,105),(107,110),(107,138),(107,148),(107,178),(107,195),(107,209),(108,105),(108,138),(108,148),(108,178),(108,195),(108,209),(109,113),(109,140),(109,143),(109,190),(109,196),(109,212),(110,113),(110,153),(110,168),(110,196),(110,201),(110,212);
/*!40000 ALTER TABLE `themes_link` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-17  9:01:16