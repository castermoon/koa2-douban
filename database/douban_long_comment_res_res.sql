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
-- Table structure for table `long_comment_res_res`
--

DROP TABLE IF EXISTS `long_comment_res_res`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `long_comment_res_res` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL COMMENT '回复者的id',
  `longCommentRespond_id` int NOT NULL COMMENT '被回复的长评的id',
  `respond_id` int NOT NULL COMMENT '表示被回复者的id',
  `content` text NOT NULL,
  `date` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `lcrr_lcr_idx` (`longCommentRespond_id`),
  KEY `lcrr_user_id_idx` (`user_id`),
  KEY `lcrr_user_res_id_idx` (`respond_id`),
  CONSTRAINT `lcrr_lcr_id` FOREIGN KEY (`longCommentRespond_id`) REFERENCES `long_comment_respond` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `lcrr_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `lcrr_user_res_id` FOREIGN KEY (`respond_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `long_comment_res_res`
--

LOCK TABLES `long_comment_res_res` WRITE;
/*!40000 ALTER TABLE `long_comment_res_res` DISABLE KEYS */;
INSERT INTO `long_comment_res_res` VALUES (32,1,40,2,'谢谢',1625226390515),(34,1,39,1,'das',1630487341307),(35,2,40,1,'不用谢',1635325498840);
/*!40000 ALTER TABLE `long_comment_res_res` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-27 20:21:24
