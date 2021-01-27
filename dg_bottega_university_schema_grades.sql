-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: dg_bottega_university_schema
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `grades`
--

DROP TABLE IF EXISTS `grades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grades` (
  `grade_id` int NOT NULL AUTO_INCREMENT,
  `grade_final` decimal(4,2) NOT NULL,
  `grade_student_id` int NOT NULL,
  `grade_course_id` int NOT NULL,
  PRIMARY KEY (`grade_id`),
  UNIQUE KEY `grades_id_UNIQUE` (`grade_id`),
  KEY `grade_student_id_idx` (`grade_student_id`),
  KEY `grade_course_id_idx` (`grade_course_id`),
  CONSTRAINT `grade_course_id` FOREIGN KEY (`grade_course_id`) REFERENCES `courses` (`course_id`) ON DELETE CASCADE,
  CONSTRAINT `grade_student_id` FOREIGN KEY (`grade_student_id`) REFERENCES `students` (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grades`
--

LOCK TABLES `grades` WRITE;
/*!40000 ALTER TABLE `grades` DISABLE KEYS */;
INSERT INTO `grades` VALUES (1,90.00,1,1),(2,87.00,1,13),(3,79.00,1,5),(4,82.00,1,9),(5,88.00,2,2),(6,83.00,2,6),(7,78.00,2,13),(8,75.00,2,15),(9,85.00,3,1),(10,92.00,3,6),(11,87.00,3,14),(12,79.00,3,16),(13,95.00,4,3),(14,81.00,4,7),(15,74.00,4,10),(16,79.00,4,15),(17,88.00,5,2),(18,86.00,5,8),(19,78.00,5,11),(20,75.00,5,16),(21,87.00,6,4),(22,83.00,6,7),(23,77.00,6,14),(24,76.00,6,15),(25,90.00,1,1),(26,87.00,1,13),(27,79.00,1,5),(28,82.00,1,9),(29,88.00,2,2),(30,83.00,2,6),(31,78.00,2,13),(32,75.00,2,15),(33,85.00,3,1),(34,92.00,3,6),(35,87.00,3,14),(36,79.00,3,16),(37,95.00,4,3),(38,81.00,4,7),(39,74.00,4,10),(40,79.00,4,15),(41,88.00,5,2),(42,86.00,5,8),(43,78.00,5,11),(44,75.00,5,16),(45,87.00,6,4),(46,83.00,6,7),(47,77.00,6,14),(48,76.00,6,15);
/*!40000 ALTER TABLE `grades` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-26 21:04:29
