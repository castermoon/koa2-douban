-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: douban
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
-- Table structure for table `long_comment_respond`
--

DROP TABLE IF EXISTS `long_comment_respond`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `long_comment_respond` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `longComment_id` int NOT NULL,
  `content` text NOT NULL,
  `date` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `longComRes_user_id_idx` (`user_id`),
  KEY `longComRes_longComent_id_idx` (`longComment_id`),
  CONSTRAINT `longComRes_longComent_id` FOREIGN KEY (`longComment_id`) REFERENCES `longcomments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `longComRes_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `long_comment_respond`
--

LOCK TABLES `long_comment_respond` WRITE;
/*!40000 ALTER TABLE `long_comment_respond` DISABLE KEYS */;
INSERT INTO `long_comment_respond` VALUES (39,1,1,'我回复我自己',1625226117164),(40,2,1,'说得很好',1625226159258),(41,3,2,'李四666',1625226296157),(52,3,7,'额鹅鹅鹅',1635234641399),(53,2,15,'嗯1',1635327388492),(54,2,15,'嗯2',1635327392692),(55,3,15,'呵呵',1635334333636);
/*!40000 ALTER TABLE `long_comment_respond` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-27 20:21:23
