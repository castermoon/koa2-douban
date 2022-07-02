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
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `content` text NOT NULL,
  `date` bigint NOT NULL,
  `score` int NOT NULL,
  `user_id` int NOT NULL,
  `movie_id` int NOT NULL,
  `status` int NOT NULL,
  `labelList` varchar(200) DEFAULT '',
  `onlyMe` tinyint DEFAULT '0',
  `isShare` tinyint DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `co_user_id_idx` (`user_id`),
  KEY `comment_movie_id_idx` (`movie_id`),
  CONSTRAINT `comment_movie_id` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `comment_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (28,'第一条评论',1623204919047,8,1,1,1,' 悬疑',1,1),(29,'第二条评论',1623204983742,2,1,1,1,' 悬疑',1,1),(30,'第三条评论',1623205066218,0,1,1,0,' 悬疑 推理 动漫',1,1),(31,'第四条评论',1623205079807,0,1,1,0,' 悬疑 推理 爱情',1,1),(32,'第五条评论',1623205758065,6,1,2,1,' 悬疑 推理 爱情',1,1),(34,'第五条评论',1623207184761,10,1,1,1,' 悬疑 推理 爱情',1,1),(35,'第五条评论',1623207373295,0,1,1,0,' 悬疑 推理 爱情',1,1),(36,'第五条评论',1623207392782,2,1,1,1,' 悬疑 推理 爱情',1,1),(37,'第五条评论',1623207405063,10,1,1,1,' 悬疑 推理 爱情',1,1),(38,'第五条评论',1623207419371,10,1,2,1,' 悬疑 推理 爱情',1,1),(39,'非常精彩',1623208236737,10,1,1,1,' 学习 dd',0,1),(40,'',1623208274959,2,1,1,1,' 打得 党的 到底',0,1),(41,' 悬疑 悬疑 悬疑 悬疑 悬疑 悬疑',1628693242984,8,1,1,1,' 悬疑',0,1),(42,'啊啊啊啊 啊啊啊啊啊啊啊 啊啊啊啊啊啊',1628693661021,6,1,7,1,' 悬疑 推理 治愈',0,1),(43,'呵呵呵呵呵呵呵呵呵呵呵呵呵呵',1630241820336,0,1,2,0,'呵呵',0,1),(44,'啊啊啊啊啊啊啊啊啊  啊 啊啊啊 啊啊 啊啊啊啊 啊 啊啊啊啊 啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊         ',1630487230824,4,1,1,1,' 大萨达 学习 啊啊啊 悬疑 推理',0,1),(45,'111111111111111111111111111111',1634049444933,8,1,8,1,'1111111 学习',0,1),(46,'最新评论',1635157891328,10,1,1,1,' 啊啊啊 抖动',0,1),(47,'撒大声地打算打算打算打算打说的阿萨德暗示打啊的啊打阿达啊啊打打算打啊打撒 大声道大声道',1635235257106,10,3,1,1,' dd 学习 zz',0,0),(48,'大叔大婶',1635315531990,10,27,1,1,' 到底 qq',0,1),(49,'sdasdadssadasdsadasdsdaasd',1635328435039,8,1,9,1,' 治愈 啊啊啊 抖动',0,1);
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
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
