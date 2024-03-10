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
-- Table structure for table `film_themes`
--

DROP TABLE IF EXISTS `film_themes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `film_themes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `theme` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `film_themes`
--

LOCK TABLES `film_themes` WRITE;
/*!40000 ALTER TABLE `film_themes` DISABLE KEYS */;
INSERT INTO `film_themes` VALUES (1,'Westerns'),(2,'Moving relationship stories'),(3,'Wild west outlaws and gunfights'),(4,'Emotional LGBTQ relationships'),(5,'Enduring stories of family and marital drama'),(6,'Emotional and touching family dramas'),(7,'Western frontier dramas with a touch of humor'),(9,'Epic history and literature'),(10,'Epic heroes'),(11,'Fantasy adventure,  heroism,  and swordplay'),(12,'Lavish dramas and sumptuous royalty'),(13,'Surreal and thought-provoking visions of life and death'),(14,'Fairy-tale fantasy and enchanted magic'),(15,'Captivating vision and Shakespearean drama'),(16,'Humanity and the world around us'),(17,'Intense violence and sexual transgression'),(18,'Dreamlike,  quirky,  and surreal storytelling'),(19,'Powerful stories of heartbreak and illness'),(20,'Gothic and eerie haunting horror'),(21,'Emotional life of renowned artists'),(22,'Monsters, aliens, sci-fi and the apocalypse'),(23,'Horror, the undead and monster classics'),(24,'Sci-fi monster and dinosaur adventures'),(25,'Sci-fi horror,  creatures,  and aliens'),(26,'Imaginative space odysseys and alien encounters'),(27,'Dangerous technology and the apocalypse'),(28,'Survival horror and zombie carnage'),(29,'High speed and special ops'),(30,'Explosive and action-packed heroes vs. villains'),(31,'Exciting spy thrillers with tense intrigue'),(32,'Action comedy and silly heroics'),(33,'Superheroes in action-packed battles with villains'),(34,'Adrenaline-fueled action and fast cars'),(35,'Faith and religion'),(36,'Tragic sadness and captivating beauty'),(37,'Heartbreaking and moving family drama'),(38,'Touching and sad family stories'),(39,'Sins,  forgiveness,  and challenging faith'),(40,'Thrillers and murder mysteries'),(41,'Gory,  gruesome,  and slasher horror'),(42,'Terrifying,  haunted,  and supernatural horror'),(43,'Suspenseful crime thrillers'),(44,'Chilling experiments and classic monster horror'),(45,'Politics and human rights'),(46,'Humanity\'s odyssey: earth and beyond'),(47,'Spooky,  scary comedy'),(48,'Action-packed space and alien sagas'),(49,'Underdogs and coming of age'),(50,'Crude humor and satire'),(51,'Relationship comedy'),(52,'Teen school antics and laughter'),(53,'Funny jokes and crude humor'),(54,'Inspiring sports underdog stories'),(55,'Laugh-out-loud relationship entanglements'),(56,'Gags,  jokes,  and slapstick humor'),(57,'Catchy songs and hilarious musical comedy'),(58,'Charming romances and delightful chemistry'),(59,'Song and dance'),(60,'Adorable animals and heartwarming families'),(61,'Holiday joy and heartwarming Christmas'),(62,'Legendary musicians and stardom'),(63,'Dazzling vocal performances and musicals'),(64,'Intense combat and martial arts'),(65,'Guns,  crime,  and violent action'),(66,'Twisted dark psychological thriller'),(67,'Creepy,  chilling,  and terrifying horror'),(68,'Teen friendship and coming-of-age'),(69,'War and historical adventure'),(70,'Military combat and heroic soldiers'),(71,'Bravery in World War II'),(72,'The Nazis and World War II'),(73,'Historical battles and epic heroism'),(74,'Politics,  propaganda,  and political documentaries'),(75,'Graphic violence and brutal revenge'),(76,'Gripping,  intense violent crime'),(77,'Erotic relationships and desire'),(78,'Challenging or sexual themes & twists'),(79,'Extreme gory horror and cannibalism'),(80,'Bloody vampire horror'),(81,'Intriguing and suspenseful murder mysteries'),(82,'Dance rhythms and catchy tunes'),(83,'Captivating relationships and charming romance'),(84,'Fascinating,  emotional stories and documentaries'),(85,'Disastrous voyages and heroic survival'),(86,'Witty satire and amusing jokes'),(87,'War,  patriotism,  and political drama'),(88,'Kids\' animated fun and adventure'),(89,'Epic adventure and breathtaking battles'),(90,'Quirky and endearing relationships'),(91,'Emotional and captivating fantasy storytelling'),(92,'Film-noir and dark crime dramas'),(93,'Powerful poetic and passionate drama'),(94,'Thought-provoking sci-fi action and future technology'),(95,'Air pilot heroism and survival'),(96,'Riveting political and presidential drama'),(97,'Crime, drugs and gangsters'),(98,'Gritty crime and ruthless gangsters'),(99,'Heists and thrilling action'),(100,'Brutal,  violent prison drama'),(101,'Passion and romance'),(102,'Bollywood emotional dramas'),(103,'Racism and the powerful fight for justice'),(104,'Faith and spiritual journeys'),(105,'Intense terrorist and political thrillers'),(106,'Drugs and violent crime'),(107,'Student coming-of-age challenges'),(108,'Emotional teen coming-of-age stories'),(109,'Engaging casino gambling drama'),(110,'Underdog fighting and boxing stories');
/*!40000 ALTER TABLE `film_themes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-17  9:01:17
