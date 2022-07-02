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
-- Table structure for table `movies`
--

DROP TABLE IF EXISTS `movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movies` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL COMMENT '名字',
  `cover` varchar(200) NOT NULL COMMENT '封面',
  `type` varchar(200) NOT NULL COMMENT '类型',
  `web` varchar(200) NOT NULL COMMENT '官方网站',
  `country` varchar(200) NOT NULL COMMENT '制片国家/地区',
  `language` varchar(200) NOT NULL COMMENT '语言',
  `time` date DEFAULT NULL COMMENT '上映时间',
  `timeLen` int NOT NULL COMMENT '时长',
  `anotherName` varchar(200) DEFAULT '无' COMMENT '别名',
  `indbLink` varchar(200) DEFAULT '无' COMMENT 'indb链接',
  `brief` text NOT NULL COMMENT '剧情简介',
  `score` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies`
--

LOCK TABLES `movies` WRITE;
/*!40000 ALTER TABLE `movies` DISABLE KEYS */;
INSERT INTO `movies` VALUES (1,'空之境界 第五章 矛盾螺旋 劇場版 空の境界 第五章 矛盾螺旋','https://images.weserv.nl/?url=img9.doubanio.com/view/photo/s_ratio_poster/public/p2194403556.webp','动画','http://www.karanokyoukai.com/','日本','日语','2008-08-16',113,'空之境界电影版5：矛盾螺旋 / Gekijô ban Kara no kyôkai: Dai go shô - Mujun rasen','tt1278060','<p>“荒耶，你在追求什么？”“真正的睿智。”“在哪里追求？”“只在自己的心里。”</p><p>1998年11月，胭条巴遇到了两仪式并被她吸引。胭条巴每晚都做噩梦，自己犯下的罪行不断重现。两仪式为了调查事件的真相，前往胭条巴的寓所，却不知道，他们不知不觉已经进了敌人的圈套——复杂的“矛盾螺旋”。</p><p>而在这一切的背后，是名为荒耶宗莲的男子。他宿命的劲敌是魔术师苍崎橙子，最强的人偶师。伽藍堂全体出动，赌上性命的战斗即将开始。</p><p>日本同人小说最高境界《空之境界》全七章动画化，本作为第五章电影版。</p>',8),(2,'死亡笔记 デスノート','https://images.weserv.nl/?url=https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2506611957.webp','剧情 / 动画 / 悬疑 / 惊悚 / 犯罪 / 奇幻','www.ntv.co.jp/deathnote','日本','日语','2006-10-03',37,'Death Note','tt0877057','　\"名字被写在这个笔记本上的人会死\" 死神琉可拥有这样的死神笔记本，却将它遗失在人间。天才高中生夜神月捡到这本笔记本，本以为是恶作剧的他，在笔记本上写下了电视中播放的罪犯的名字，确认了笔记本能力的真实性。厌倦腐朽世界的夜神月使用笔记本的力量，开始杀死犯罪者，以此希望建立一个没有犯罪的美好理想世界，而自己成为“新世界的神”。 连续罪犯死亡事件，吸引了全世界警察的目光，更吸引了世界第一名侦探L的注意，L能否将被崇拜者称为“基拉”的夜神月逮捕？ 一本死神的笔记本，拉开了天才与天才之间卓越巅峰的头脑战争的序幕。本已对人间失去兴趣的琉可，在旁观惊心动魄的斗智过程中感叹“人类，真有趣。”',7),(7,'命运之夜——天之杯Ⅲ：春之歌 劇場版 Fate/stay night [Heaven\'s Feel] III. spring song','https://images.weserv.nl/?url=https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2586167249.webp','剧情 / 动画 / 奇幻','www.fate-sn.com','日本','日语','2020-08-15',120,'命运之夜 天之杯 第三章 / Fate/HF III.春樱之歌(台) / 命运之夜——天之杯3：终章','tt8092118','本片改编自TYPE-MOON出品的文字冒险类游戏《Fate/stay night》，是该游戏的Heaven\'s Feel路线，简称“HF”或“樱线”，是该系列作品动画剧场版全三部作品中的最终章。 在剧场版作品第二章黑化之后的樱吸收了众多Servant的灵魂后，被世间 所有的恶控制，成为黑色圣杯的化身。 最终，得知一切的士郎放弃了成为正义的伙伴，选择了保护樱...',9.1),(8,'命运之夜——天之杯Ⅲ：春之歌 劇場版 Fate/stay night [Heaven\'s Feel] III. spring song','https://images.weserv.nl/?url=https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2586167249.webp','剧情 / 动画 / 奇幻','www.fate-sn.com','日本','日语','2020-08-15',120,'命运之夜 天之杯 第三章 / Fate/HF III.春樱之歌(台) / 命运之夜——天之杯3：终章','tt8092118','本片改编自TYPE-MOON出品的文字冒险类游戏《Fate/stay night》，是该游戏的Heaven\'s Feel路线，简称“HF”或“樱线”，是该系列作品动画剧场版全三部作品中的最终章。 在剧场版作品第二章黑化之后的樱吸收了众多Servant的灵魂后，被世间 所有的恶控制，成为黑色圣杯的化身。 最终，得知一切的士郎放弃了成为正义的伙伴，选择了保护樱...',8.8),(9,'拆弹专家2','https://images.weserv.nl/?url=https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2621379901.webp','动作 / 犯罪','','中国大陆 / 中国香港','汉语普通话 / 粤语 / 英语','2020-12-24',121,'Shock Wave 2','tt9597838','香港某处发生爆炸案，前拆弹专家潘乘风（刘德华 饰）因昏迷于现场，被警方怀疑牵涉其中。苏醒后的潘乘风只能一边逃亡一边查明真相，然而，他的好友董卓文（刘青云 饰）和他的前女友庞玲（倪妮 饰）却给他讲述了两段截然不同的经历。有计划的爆炸案接二连三发生，真相却越来越扑朔迷离……',7.5),(10,'无双 無雙','https://images.weserv.nl/?url=https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2535260806.webp','剧情 / 动作 / 悬疑 / 犯罪','','中国大陆 / 中国香港','汉语普通话 / 粤语 / 英语 / 泰语 / 波兰语','2018-09-30',130,'<p>Project Gutenberg / Mo seung',' tt7183578','身陷囹圄的李问（郭富城 饰）被引渡回港，他原本隶属于一个的跨国假钞制贩组织。该组织曾犯下过多宗恶性案件，而首脑“画家”不仅始终逍遥法外，连真面目都没人知道。为了逼迫李问吐露“画家”真实身份，警方不惜用足以判死刑的假罪证使其就范。就在此时，富有的遗孀阮文（张静初 饰）申请保释李问，而警方提出的条件依然是“画家”的真面目。</p><p>原来早在十数年前，李问和阮文是一对画家情侣，无奈女友的作品受人青睐，李问的画作却被贬得一文不值。就在此困顿期间，他制作假画的才能被“画家”（周润发 饰）发掘，进而成为对方美元假币团伙中的一员…</p>',8);
/*!40000 ALTER TABLE `movies` ENABLE KEYS */;
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
