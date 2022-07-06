-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: bioskop2db
-- ------------------------------------------------------
-- Server version	8.0.29

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booking` (
  `booking_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `schedule_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`booking_id`),
  KEY `user_id` (`user_id`),
  KEY `schedule_id` (`schedule_id`),
  CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `booking_ibfk_2` FOREIGN KEY (`schedule_id`) REFERENCES `schedules` (`schedule_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking`
--

LOCK TABLES `booking` WRITE;
/*!40000 ALTER TABLE `booking` DISABLE KEYS */;
/*!40000 ALTER TABLE `booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `films`
--

DROP TABLE IF EXISTS `films`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `films` (
  `film_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `is_playing` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`film_id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `films`
--

LOCK TABLES `films` WRITE;
/*!40000 ALTER TABLE `films` DISABLE KEYS */;
INSERT INTO `films` VALUES (1,'Jurassic World Dominion',1,'2022-06-26 04:56:30','2022-06-26 11:56:30'),(2,'The Roundup',1,'2022-06-26 04:56:30','2022-06-26 11:56:30'),(3,'Avatar 2',1,'2022-06-26 04:56:30','2022-06-26 11:56:30'),(4,'Sonic the Hedgehog 2',1,'2022-06-26 04:56:30','2022-06-26 11:56:30'),(5,'The Batman',1,'2022-06-26 04:56:30','2022-06-26 11:56:30'),(6,'KKN di Desa Penari',1,'2022-06-26 04:56:30','2022-06-26 11:56:30'),(7,'Firestarter',1,'2022-06-26 04:56:30','2022-06-26 11:56:30'),(8,'Broker',1,'2022-06-26 04:56:30','2022-06-26 11:56:30'),(9,'The Lost City',1,'2022-06-26 04:56:30','2022-06-26 11:56:30'),(10,'The Twin',1,'2022-06-26 04:56:30','2022-06-26 11:56:30'),(11,'tenggelam kapak vanderwijk',1,'2022-06-26 04:56:30','2022-06-26 11:56:30'),(12,'di bawah lindungan kabah',0,'2022-06-26 04:56:30','2022-06-26 11:56:30'),(13,'ayat ayat cinta',1,'2022-06-26 04:56:30','2022-06-26 11:56:30'),(14,'merantau ke deli',0,'2022-06-26 04:56:30','2022-06-26 11:56:30'),(15,'sunset bersama rosie',1,'2022-06-26 04:56:30','2022-06-26 11:56:30'),(16,'daun jatuh tak membenci angin',0,'2022-06-26 04:56:30','2022-06-26 11:56:30'),(17,'pulang',0,'2022-06-26 04:56:30','2022-06-26 11:56:30'),(18,'pergi',1,'2022-06-26 04:56:30','2022-06-26 11:56:30'),(19,'pulang - pergi',0,'2022-06-26 04:56:30','2022-06-26 11:56:30'),(20,'bumi cinta',0,'2022-06-26 04:56:30','2022-06-26 11:56:30'),(21,'5 sekawan',0,'2022-06-26 04:56:30','2022-06-26 11:56:30'),(22,'Alas Pati',1,'2022-06-26 04:56:30','2022-06-26 11:56:30'),(23,'Danur',1,'2022-06-26 04:56:30','2022-06-26 11:56:30'),(24,'The Nun',1,'2022-06-26 04:56:30','2022-06-26 11:56:30'),(25,'Setan Kembar',1,'2022-06-26 04:56:30','2022-06-26 11:56:30'),(26,'Keranda Modif',1,'2022-06-26 04:56:30','2022-06-26 11:56:30'),(27,'Tak Kasat Mata',1,'2022-06-26 04:56:30','2022-06-26 11:56:30'),(28,'Pengabdi Syaiton',1,'2022-06-26 04:56:30','2022-06-26 11:56:30'),(29,'Makmum',1,'2022-06-26 04:56:30','2022-06-26 11:56:30'),(30,'Nenek Gayung',1,'2022-06-26 04:56:30','2022-06-26 11:56:30'),(31,'KKN Desa Dangdut',1,'2022-06-26 04:56:30','2022-06-26 11:56:30'),(32,'Jurrasic Office',1,'2022-06-26 04:56:30','2022-06-26 11:56:30'),(33,'Fast n Slow',0,'2022-06-26 04:56:30','2022-06-26 11:56:30'),(34,'Sapiderman',1,'2022-06-26 04:56:30','2022-06-26 11:56:30'),(35,'Badman',1,'2022-06-26 04:56:30','2022-06-26 11:56:30'),(36,'Final Fantasprit',1,'2022-06-26 04:56:30','2022-06-26 11:56:30'),(37,'HarryKutter',1,'2022-06-26 04:56:30','2022-06-26 11:56:30'),(38,'KKN di desa Simbah',0,'2022-06-26 04:56:30','2022-06-26 11:56:30'),(39,'Cinta Segiempat',0,'2022-06-26 04:56:30','2022-06-26 11:56:30'),(40,'Pengabdi Negara',1,'2022-06-26 04:56:30','2022-06-26 11:56:30'),(41,'Ngeri - Ngeri Enak',1,'2022-06-26 04:56:30','2022-06-26 11:56:30'),(42,'sedekah ikhlas',1,'2022-06-26 04:56:30','2022-06-26 11:56:30'),(43,'jakarta vs everybody',1,'2022-06-26 04:56:30','2022-06-26 11:56:30'),(44,'baby blue',1,'2022-06-26 04:56:30','2022-06-26 11:56:30'),(45,'the other site',1,'2022-06-26 04:56:30','2022-06-26 11:56:30'),(46,'dear nathan',1,'2022-06-26 04:56:30','2022-06-26 11:56:30'),(47,'Thank you salma',1,'2022-06-26 04:56:30','2022-06-26 11:56:30'),(48,'Thank you santi',1,'2022-06-26 04:56:30','2022-06-26 11:56:30'),(49,'Thank you dewi',1,'2022-06-26 04:56:30','2022-06-26 11:56:30'),(50,'Thank you amel',1,'2022-06-26 04:56:30','2022-06-26 11:56:30'),(51,'Thank you indri',1,'2022-06-26 04:56:30','2022-06-26 11:56:30'),(52,'KKN Desa Penari',1,'2022-06-26 04:56:30','2022-06-26 11:56:30'),(53,'Ngeri-Ngeri Sedap',1,'2022-06-26 04:56:30','2022-06-26 11:56:30'),(54,'Srimulat',1,'2022-06-26 04:56:30','2022-06-26 11:56:30'),(55,'Doctor Strange',1,'2022-06-26 04:56:30','2022-06-26 11:56:30'),(56,'Black Panther',1,'2022-06-26 04:56:30','2022-06-26 11:56:30'),(57,'Warkop',1,'2022-06-26 04:56:30','2022-06-26 11:56:30'),(58,'Jurassic Wolrd',1,'2022-06-26 04:56:30','2022-06-26 11:56:30'),(59,'Comic 8',1,'2022-06-26 04:56:30','2022-06-26 11:56:30'),(60,'Suara Hati Istri',1,'2022-06-26 04:56:30','2022-06-26 11:56:30'),(61,'Siap 86',1,'2022-06-26 04:56:30','2022-06-26 11:56:30');
/*!40000 ALTER TABLE `films` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedules`
--

DROP TABLE IF EXISTS `schedules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schedules` (
  `schedule_id` int NOT NULL AUTO_INCREMENT,
  `film_id` int NOT NULL,
  `seat_id` int NOT NULL,
  `price` int NOT NULL,
  `date_show` date NOT NULL,
  `show_start` time NOT NULL,
  `show_end` time NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`schedule_id`),
  KEY `film_id` (`film_id`),
  KEY `seat_id` (`seat_id`),
  CONSTRAINT `schedules_ibfk_1` FOREIGN KEY (`film_id`) REFERENCES `films` (`film_id`),
  CONSTRAINT `schedules_ibfk_2` FOREIGN KEY (`seat_id`) REFERENCES `seats` (`seat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedules`
--

LOCK TABLES `schedules` WRITE;
/*!40000 ALTER TABLE `schedules` DISABLE KEYS */;
INSERT INTO `schedules` VALUES (1,1,1,35000,'2022-06-19','18:00:00','19:00:00','2022-06-26 07:22:33','2022-06-26 14:22:33'),(2,2,2,35000,'2022-06-19','18:00:00','19:00:00','2022-06-26 07:22:33','2022-06-26 14:22:33'),(3,3,3,35000,'2022-06-19','18:00:00','19:00:00','2022-06-26 07:22:33','2022-06-26 14:22:33'),(4,4,4,35000,'2022-06-19','18:00:00','19:00:00','2022-06-26 07:22:33','2022-06-26 14:22:33'),(5,5,5,35000,'2022-06-19','18:00:00','19:00:00','2022-06-26 07:22:33','2022-06-26 14:22:33'),(6,6,6,35000,'2022-06-19','18:00:00','19:00:00','2022-06-26 07:22:33','2022-06-26 14:22:33'),(7,7,7,35000,'2022-06-19','18:00:00','19:00:00','2022-06-26 07:22:33','2022-06-26 14:22:33'),(8,8,8,35000,'2022-06-19','18:00:00','19:00:00','2022-06-26 07:22:33','2022-06-26 14:22:33'),(9,9,9,35000,'2022-06-19','18:00:00','19:00:00','2022-06-26 07:22:33','2022-06-26 14:22:33'),(10,10,10,35000,'2022-06-19','18:00:00','19:00:00','2022-06-26 07:22:33','2022-06-26 14:22:33'),(11,11,11,35000,'2022-08-08','00:07:00','00:10:00','2022-06-26 07:22:33','2022-06-26 14:22:33'),(12,12,12,35000,'2022-08-08','00:10:00','00:15:00','2022-06-26 07:22:33','2022-06-26 14:22:33'),(13,13,13,35000,'2022-09-09','00:21:00','00:23:59','2022-06-26 07:22:33','2022-06-26 14:22:33'),(14,14,14,35000,'2022-08-08','00:01:00','00:04:00','2022-06-26 07:22:33','2022-06-26 14:22:33'),(15,15,15,35000,'2022-08-08','00:05:00','00:07:00','2022-06-26 07:22:33','2022-06-26 14:22:33'),(16,16,16,35000,'2022-06-24','00:21:00','00:23:59','2022-06-26 07:22:33','2022-06-26 14:22:33'),(17,17,17,35000,'2022-06-25','00:21:00','00:23:59','2022-06-26 07:22:33','2022-06-26 14:22:33'),(18,18,18,35000,'2022-08-08','00:09:00','00:12:00','2022-06-26 07:22:33','2022-06-26 14:22:33'),(19,19,19,35000,'2022-08-08','00:13:00','00:15:00','2022-06-26 07:22:33','2022-06-26 14:22:33'),(20,20,20,35000,'2022-06-25','00:06:00','00:09:00','2022-06-26 07:22:33','2022-06-26 14:22:33'),(21,21,21,35000,'2022-06-30','19:30:00','20:30:00','2022-06-26 07:22:33','2022-06-26 14:22:33'),(22,22,22,35000,'2022-06-30','19:30:00','21:00:00','2022-06-26 07:22:33','2022-06-26 14:22:33'),(23,23,23,35000,'2022-06-30','19:30:00','20:30:00','2022-06-26 07:22:33','2022-06-26 14:22:33'),(24,24,24,35000,'2022-06-30','19:30:00','20:30:00','2022-06-26 07:22:33','2022-06-26 14:22:33'),(25,25,25,35000,'2022-06-30','19:30:00','21:00:00','2022-06-26 07:22:33','2022-06-26 14:22:33'),(26,26,26,35000,'2022-06-30','18:00:00','19:00:00','2022-06-26 07:22:33','2022-06-26 14:22:33'),(27,27,27,35000,'2022-06-30','18:00:00','19:00:00','2022-06-26 07:22:33','2022-06-26 14:22:33'),(28,28,28,35000,'2022-06-30','18:00:00','19:00:00','2022-06-26 07:22:33','2022-06-26 14:22:33'),(29,29,29,35000,'2022-06-30','18:00:00','19:00:00','2022-06-26 07:22:33','2022-06-26 14:22:33'),(30,30,30,35000,'2022-06-30','18:00:00','19:00:00','2022-06-26 07:22:33','2022-06-26 14:22:33'),(31,31,31,35000,'2022-07-21','15:30:00','17:00:00','2022-06-26 07:22:33','2022-06-26 14:22:33'),(32,32,32,35000,'2022-07-21','19:30:00','21:00:00','2022-06-26 07:22:33','2022-06-26 14:22:33'),(33,33,33,35000,'2022-07-21','14:30:00','16:00:00','2022-06-26 07:22:33','2022-06-26 14:22:33'),(34,34,34,35000,'2022-07-21','17:30:00','20:00:00','2022-06-26 07:22:33','2022-06-26 14:22:33'),(35,35,35,35000,'2022-07-21','11:30:00','14:00:00','2022-06-26 07:22:33','2022-06-26 14:22:33'),(36,36,36,35000,'2022-07-21','16:30:00','18:00:00','2022-06-26 07:22:33','2022-06-26 14:22:33'),(37,37,37,35000,'2022-07-21','14:30:00','16:00:00','2022-06-26 07:22:33','2022-06-26 14:22:33'),(38,38,38,35000,'2022-07-21','20:30:00','22:00:00','2022-06-26 07:22:33','2022-06-26 14:22:33'),(39,39,39,35000,'2022-07-22','15:30:00','17:00:00','2022-06-26 07:22:33','2022-06-26 14:22:33'),(40,40,40,35000,'2022-07-22','19:30:00','21:00:00','2022-06-26 07:22:33','2022-06-26 14:22:33'),(41,41,41,35000,'2022-07-22','14:30:00','16:00:00','2022-06-26 07:22:33','2022-06-26 14:22:33'),(42,42,42,35000,'2022-07-22','17:30:00','20:00:00','2022-06-26 07:22:33','2022-06-26 14:22:33'),(43,43,43,35000,'2022-08-08','00:07:00','00:10:00','2022-06-26 07:22:33','2022-06-26 14:22:33'),(44,44,44,35000,'2022-08-08','00:07:00','00:10:00','2022-06-26 07:22:33','2022-06-26 14:22:33'),(45,45,45,35000,'2022-08-08','00:07:00','00:10:00','2022-06-26 07:22:33','2022-06-26 14:22:33'),(46,46,46,35000,'2022-08-08','00:07:00','00:10:00','2022-06-26 07:22:33','2022-06-26 14:22:33'),(47,47,47,35000,'2022-08-08','00:07:00','00:10:00','2022-06-26 07:22:33','2022-06-26 14:22:33'),(48,48,48,35000,'2022-08-08','00:07:00','00:10:00','2022-06-26 07:22:33','2022-06-26 14:22:33'),(49,49,49,35000,'2022-08-08','00:07:00','00:10:00','2022-06-26 07:22:33','2022-06-26 14:22:33'),(50,50,50,35000,'2022-08-08','00:07:00','00:10:00','2022-06-26 07:22:33','2022-06-26 14:22:33'),(51,51,1,35000,'2022-08-08','00:07:00','00:10:00','2022-06-26 07:22:33','2022-06-26 14:22:33'),(52,52,2,35000,'2022-08-08','00:07:00','00:10:00','2022-06-26 07:22:33','2022-06-26 14:22:33'),(53,53,3,35000,'2022-08-08','00:05:00','00:07:00','2022-06-26 07:22:33','2022-06-26 14:22:33'),(54,54,4,35000,'2022-08-08','00:05:00','00:07:00','2022-06-26 07:22:33','2022-06-26 14:22:33'),(55,55,5,35000,'2022-08-08','00:05:00','00:07:00','2022-06-26 07:22:33','2022-06-26 14:22:33'),(56,56,6,35000,'2022-08-08','00:05:00','00:07:00','2022-06-26 07:22:33','2022-06-26 14:22:33'),(57,57,7,35000,'2022-08-08','00:05:00','00:07:00','2022-06-26 07:22:33','2022-06-26 14:22:33'),(58,58,8,35000,'2022-08-08','00:05:00','00:07:00','2022-06-26 07:22:33','2022-06-26 14:22:33'),(59,59,9,35000,'2022-08-08','00:05:00','00:07:00','2022-06-26 07:22:33','2022-06-26 14:22:33'),(60,60,10,35000,'2022-08-08','00:05:00','00:07:00','2022-06-26 07:22:33','2022-06-26 14:22:33'),(61,1,11,35000,'2022-08-08','00:05:00','00:07:00','2022-06-26 07:22:33','2022-06-26 14:22:33'),(62,2,12,35000,'2022-08-08','00:05:00','00:07:00','2022-06-26 07:22:33','2022-06-26 14:22:33'),(63,5,5,35000,'2022-06-19','18:00:00','19:00:00','2022-06-26 19:51:11','2022-06-27 02:51:11');
/*!40000 ALTER TABLE `schedules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seats`
--

DROP TABLE IF EXISTS `seats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seats` (
  `seat_id` int NOT NULL AUTO_INCREMENT,
  `seat_number` int NOT NULL,
  `studio_name` varchar(50) NOT NULL,
  `is_available` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`seat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seats`
--

LOCK TABLES `seats` WRITE;
/*!40000 ALTER TABLE `seats` DISABLE KEYS */;
INSERT INTO `seats` VALUES (1,1,'A',1,'2022-06-26 04:57:48','2022-06-26 11:57:48'),(2,2,'A',1,'2022-06-26 04:57:48','2022-06-26 11:57:48'),(3,3,'A',1,'2022-06-26 04:57:48','2022-06-26 11:57:48'),(4,4,'A',1,'2022-06-26 04:57:48','2022-06-26 11:57:48'),(5,5,'A',1,'2022-06-26 04:57:48','2022-06-26 11:57:48'),(6,6,'A',1,'2022-06-26 04:57:48','2022-06-26 11:57:48'),(7,7,'A',1,'2022-06-26 04:57:48','2022-06-26 11:57:48'),(8,8,'A',1,'2022-06-26 04:57:48','2022-06-26 11:57:48'),(9,9,'A',1,'2022-06-26 04:57:48','2022-06-26 11:57:48'),(10,10,'A',1,'2022-06-26 04:57:48','2022-06-26 11:57:48'),(11,1,'B',1,'2022-06-26 04:57:48','2022-06-26 11:57:48'),(12,2,'B',1,'2022-06-26 04:57:48','2022-06-26 11:57:48'),(13,3,'B',1,'2022-06-26 04:57:48','2022-06-26 11:57:48'),(14,4,'B',1,'2022-06-26 04:57:48','2022-06-26 11:57:48'),(15,5,'B',1,'2022-06-26 04:57:48','2022-06-26 11:57:48'),(16,6,'B',1,'2022-06-26 04:57:48','2022-06-26 11:57:48'),(17,7,'B',1,'2022-06-26 04:57:48','2022-06-26 11:57:48'),(18,8,'B',1,'2022-06-26 04:57:48','2022-06-26 11:57:48'),(19,9,'B',1,'2022-06-26 04:57:48','2022-06-26 11:57:48'),(20,10,'B',1,'2022-06-26 04:57:48','2022-06-26 11:57:48'),(21,1,'C',1,'2022-06-26 04:57:48','2022-06-26 11:57:48'),(22,2,'C',1,'2022-06-26 04:57:48','2022-06-26 11:57:48'),(23,3,'C',1,'2022-06-26 04:57:48','2022-06-26 11:57:48'),(24,4,'C',1,'2022-06-26 04:57:48','2022-06-26 11:57:48'),(25,5,'C',1,'2022-06-26 04:57:48','2022-06-26 11:57:48'),(26,6,'C',1,'2022-06-26 04:57:48','2022-06-26 11:57:48'),(27,7,'C',1,'2022-06-26 04:57:48','2022-06-26 11:57:48'),(28,8,'C',1,'2022-06-26 04:57:48','2022-06-26 11:57:48'),(29,9,'C',1,'2022-06-26 04:57:48','2022-06-26 11:57:48'),(30,10,'C',1,'2022-06-26 04:57:48','2022-06-26 11:57:48'),(31,1,'D',1,'2022-06-26 04:57:48','2022-06-26 11:57:48'),(32,2,'D',1,'2022-06-26 04:57:48','2022-06-26 11:57:48'),(33,3,'D',1,'2022-06-26 04:57:48','2022-06-26 11:57:48'),(34,4,'D',1,'2022-06-26 04:57:48','2022-06-26 11:57:48'),(35,5,'D',1,'2022-06-26 04:57:48','2022-06-26 11:57:48'),(36,6,'D',1,'2022-06-26 04:57:48','2022-06-26 11:57:48'),(37,7,'D',1,'2022-06-26 04:57:48','2022-06-26 11:57:48'),(38,8,'D',1,'2022-06-26 04:57:48','2022-06-26 11:57:48'),(39,9,'D',1,'2022-06-26 04:57:48','2022-06-26 11:57:48'),(40,10,'D',1,'2022-06-26 04:57:48','2022-06-26 11:57:48'),(41,1,'E',1,'2022-06-26 04:57:48','2022-06-26 11:57:48'),(42,2,'E',1,'2022-06-26 04:57:48','2022-06-26 11:57:48'),(43,3,'E',1,'2022-06-26 04:57:48','2022-06-26 11:57:48'),(44,4,'E',1,'2022-06-26 04:57:48','2022-06-26 11:57:48'),(45,5,'E',1,'2022-06-26 04:57:48','2022-06-26 11:57:48'),(46,6,'E',1,'2022-06-26 04:57:48','2022-06-26 11:57:48'),(47,7,'E',1,'2022-06-26 04:57:48','2022-06-26 11:57:48'),(48,8,'E',1,'2022-06-26 04:57:48','2022-06-26 11:57:48'),(49,9,'E',1,'2022-06-26 04:57:48','2022-06-26 11:57:48'),(50,10,'E',1,'2022-06-26 04:57:48','2022-06-26 11:57:48');
/*!40000 ALTER TABLE `seats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `email_id` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Wahyu Wijanarko','WahyuW@gmail.com','Rahasiaaaa4x','2022-06-26 04:56:30','2022-06-26 11:56:30'),(2,'Sri Mulyani','S_Mulyani@gmail.com','Inip45sword','2022-06-26 04:56:30','2022-06-26 11:56:30'),(3,'Budi Setiawan','BudiW@gmail.com','inipasword123','2022-06-26 04:56:30','2022-06-26 11:56:30'),(4,'Nur Aida','Aida_Nur@gmail.com','123456aaaa','2022-06-26 04:56:30','2022-06-26 11:56:30'),(5,'Muh Toha','Tohaaa@gmail.com','98741252qwe','2022-06-26 04:56:30','2022-06-26 11:56:30'),(6,'Lionel','Lionel@gmail.com','Rahasiaaaa4x1','2022-06-26 04:56:30','2022-06-26 11:56:30'),(8,'Setiawan','Setiawan@gmail.com','inipasword1231','2022-06-26 04:56:30','2022-06-26 11:56:30'),(9,'Lily','Lily@gmail.com','123456aaaa1','2022-06-26 04:56:30','2022-06-26 11:56:30'),(10,'Tifany','Tifany@gmail.com','98741252qwe1','2022-06-26 04:56:30','2022-06-26 11:56:30'),(11,'Terkajuik','tarkajuik@hotmail.com','kapuyuaktabang','2022-06-26 04:56:30','2022-06-26 11:56:30'),(12,'Tarpingkal','tarpingkal@hotmail.com','kapuyuakbangkiat','2022-06-26 04:56:30','2022-06-26 11:56:30'),(13,'Tasilia','Tasilia@hotmail.com','kapuyuakTasiliak','2022-06-26 04:56:30','2022-06-26 11:56:30'),(14,'Tasungkua','Tasungkua@ymail.com','kapuyuakTasungkua','2022-06-26 04:56:30','2022-06-26 11:56:30'),(15,'Tajirangkang','Tajirangkang@apps.ipb.ac.id','kapuyuakTajirangkang','2022-06-26 04:56:30','2022-06-26 11:56:30'),(16,'Tajungkang','Tajungkang@apps.ui.ac.id','kapuyuakTajungkang','2022-06-26 04:56:30','2022-06-26 11:56:30'),(17,'Tagurajai','Tagurajai@outlook.com','kapuyuakTagurajai','2022-06-26 04:56:30','2022-06-26 11:56:30'),(18,'Tatungkuk','Tatungkuk@outlook.com','kapuyuakTatungkuk','2022-06-26 04:56:30','2022-06-26 11:56:30'),(19,'Tijengkang','Tijengkang@gmail.com','abdiTijengkang','2022-06-26 04:56:30','2022-06-26 11:56:30'),(20,'Ngagolepak','Ngagolepakg@gmail.com','abdiNgagolepak','2022-06-26 04:56:30','2022-06-26 11:56:30'),(21,'andrea','gomail@andrea','1223grr','2022-06-26 04:56:30','2022-06-26 11:56:30'),(22,'robust','gomail@robust','1223grr','2022-06-26 04:56:30','2022-06-26 11:56:30'),(23,'kai','gomail@kai','1223grr','2022-06-26 04:56:30','2022-06-26 11:56:30'),(24,'travis','gomail@travis','1223grr','2022-06-26 04:56:30','2022-06-26 11:56:30'),(25,'cardi','gomail@cardi','1223grr','2022-06-26 04:56:30','2022-06-26 11:56:30'),(26,'rendraprames','gmail@rendra','123grr','2022-06-26 04:56:30','2022-06-26 11:56:30'),(27,'antonyS','hu@antony','123rrr','2022-06-26 04:56:30','2022-06-26 11:56:30'),(28,'kai','is@mail','1123grr','2022-06-26 04:56:30','2022-06-26 11:56:30'),(29,'xavier','gomail@xavier','1223grr','2022-06-26 04:56:30','2022-06-26 11:56:30'),(30,'saxon','jmail@rendra','1233grr','2022-06-26 04:56:30','2022-06-26 11:56:30'),(31,'siti','sitic4nt1c@gmail.com','51T1','2022-06-26 04:56:30','2022-06-26 11:56:30'),(32,'vini','v1n1@gmail.com','v1n1','2022-06-26 04:56:30','2022-06-26 11:56:30'),(33,'budi','budiY@gmail.com','budi0','2022-06-26 04:56:30','2022-06-26 11:56:30'),(34,'kemal','k3mal@gmail.com','K3m4l','2022-06-26 04:56:30','2022-06-26 11:56:30'),(35,'Badriah','badril@gmail.com','84dr1','2022-06-26 04:56:30','2022-06-26 11:56:30'),(36,'Joni','joni@gmail.com','j0n1','2022-06-26 04:56:30','2022-06-26 11:56:30'),(37,'munif','moonl@gmail.com','Moo00','2022-06-26 04:56:30','2022-06-26 11:56:30'),(38,'coni','coni@gmail.com','C0n1','2022-06-26 04:56:30','2022-06-26 11:56:30'),(39,'menik','men1k@gmail.com','m333n','2022-06-26 04:56:30','2022-06-26 11:56:30'),(40,'putro','putr@gmail.com','Putri','2022-06-26 04:56:30','2022-06-26 11:56:30'),(41,'billy','billy@gmail.com','billy123','2022-06-26 04:56:30','2022-06-26 11:56:30'),(42,'marcelino','marcelino@gmail.com','marcelino123','2022-06-26 04:56:30','2022-06-26 11:56:30'),(43,'yella','yella@gmail.com','yella123','2022-06-26 04:56:30','2022-06-26 11:56:30'),(44,'viona','viona@gmail.com','viona123','2022-06-26 04:56:30','2022-06-26 11:56:30'),(45,'prames','prames@gmail.com','prames123','2022-06-26 04:56:30','2022-06-26 11:56:30'),(46,'rendra','rendra@gmail.com','rendra123','2022-06-26 04:56:30','2022-06-26 11:56:30'),(47,'yohanes','yohanes@gmail.com','yohanes123','2022-06-26 04:56:30','2022-06-26 11:56:30'),(48,'crush','crush@gmail.com','crush123','2022-06-26 04:56:30','2022-06-26 11:56:30'),(49,'bayu','bayu@gmail.com','bayu123','2022-06-26 04:56:30','2022-06-26 11:56:30'),(51,'yelliaviona','viona@gmail','123vionaimut','2022-06-26 04:56:30','2022-06-26 11:56:30'),(52,'viona','vionaa@gmail','321vionaimut','2022-06-26 04:56:30','2022-06-26 11:56:30'),(53,'yellia','yellia@gmail','321yelliaimut','2022-06-26 04:56:30','2022-06-26 11:56:30'),(54,'yell','yella@gmail','123yellcantik','2022-06-26 04:56:30','2022-06-26 11:56:30'),(55,'ona','ona@gmail','123onagemoy','2022-06-26 04:56:30','2022-06-26 11:56:30'),(56,'ade','ade@gmail','123ade','2022-06-26 04:56:30','2022-06-26 11:56:30'),(57,'rendra','rendra@gmail','321rendra','2022-06-26 04:56:30','2022-06-26 11:56:30'),(58,'billy','billy@gmail','987billy','2022-06-26 04:56:30','2022-06-26 11:56:30'),(59,'yohanness','yohannes@gmail','555yohanness','2022-06-26 04:56:30','2022-06-26 11:56:30'),(60,'BayuIndra','Bayu@gmail','555Bayuu','2022-06-26 04:56:30','2022-06-26 11:56:30'),(63,'prameswaraaa','prames@gmail.com','121212','2022-06-27 17:11:24','2022-06-28 00:11:24'),(64,'Prameswara Lagi Lagi','prameswara@gmail.com','Rahasiaaaa4x','2022-06-28 04:24:56','2022-06-28 11:24:56'),(65,'Prameswara Lagi Lagi Aja','prameswara@gmail.com','Rahasiaaaa4x','2022-06-28 04:32:40','2022-06-28 11:32:40'),(69,'Prames AJA LAH Ya','prameswara@gmail.com','Rahasiaaaa4x','2022-06-29 11:07:48','2022-06-29 18:08:15');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'bioskop2db'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-30 11:15:54