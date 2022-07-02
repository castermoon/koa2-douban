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
-- Table structure for table `celebritys`
--

DROP TABLE IF EXISTS `celebritys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `celebritys` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL COMMENT '名字',
  `icon` varchar(200) NOT NULL COMMENT '头像',
  `sex` int NOT NULL COMMENT '性别',
  `constellation` varchar(200) DEFAULT '未知' COMMENT '星座',
  `birth` varchar(200) DEFAULT '未知' COMMENT '出生日期',
  `vocation` varchar(45) NOT NULL COMMENT '编剧',
  `anotherName` varchar(200) DEFAULT '无' COMMENT '别名',
  `anotherChineseName` varchar(200) DEFAULT '无' COMMENT '中文名',
  `indbLink` varchar(200) DEFAULT '无' COMMENT 'indbLink链接',
  `web` varchar(200) DEFAULT '无' COMMENT '官方网站',
  `desc` text NOT NULL COMMENT '简介',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `celebritys`
--

LOCK TABLES `celebritys` WRITE;
/*!40000 ALTER TABLE `celebritys` DISABLE KEYS */;
INSERT INTO `celebritys` VALUES (1,'奈须蘑菇','https://images.weserv.nl/?url=img2.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1365836929.03.webp',1,'射手座','1973-11-28','编剧','奈須きのこ','奈须茸(曾用名)','nm2195555','https://www.remus.dti.ne.jp/~takeucto/index.html','<p>奈须蘑菇，日本男性脚本家与小说家。由于不公开露面，因此曾因名字的汉字写法惹来性别上的猜测。座右铭为“人类皆强大”，自画像是一颗蘑菇怪物。</p><p>与武内崇为国中同学和好友，两人成立同人团体“TYPE-MOON”，2000年发表游戏《月姬》，奈须负责剧本。2003年商业化成立游戏公司“Notes”（ノーツ）。,2004年发表游戏《Fate/stay night》，同样担任游戏脚本原案。现于讲谈社的“浮士德（ファウスト）”连载小说《DDD》（Decoration Disorder Disconnection）。</p>'),(2,'平尾隆之','https://images.weserv.nl/?url=https://img1.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1442299966.88.webp',1,'摩羯座','1979-01-10',' 导演 / 编剧 / 其它','ひらお たかゆき','无','无','无','<p>日本のアニメーション演出家、アニメーション監督、アニメーター。元ufotable所属。</p><p>2003年の『TEXHNOLYZE』第8話「CRUCIBLE」にて演出デビューを果たした</p>'),(3,'坂本真绫','https://images.weserv.nl/?url=https://img9.doubanio.com/view/celebrity/s_ratio_celebrity/public/p985.webp',2,'白羊座','1980-03-31','配音 / 演员 / 音乐 / 其它','Maya Sakamoto / 坂本 真綾','无','无','无','日本女声优、歌手、演员、电台主持。8岁便以声优的身份出道，16岁在歌坛出道。至今共发表10张专辑、18张单曲，1张LIVE DVD，配音作品超过400部。音乐以外领域也有丰富才能，广泛活跃在舞台表演、电台主持、电视节目主持、执笔等领域，是声优界的才女，也是现在日本乐坛少数的实力派之一。2011年8月8日与著名声优铃村健一登记结婚'),(4,'柿原彻也','https://images.weserv.nl/?url=https://img9.doubanio.com/view/celebrity/s_ratio_celebrity/public/p6406.webp',1,'摩羯座','1982-12-24','配音 / 演员','てつや かきはら','无','无','无','<p>柿原彻也，日本男性声优，隶属81 Produce事务所。在德国杜塞尔多夫（也是欧洲最大的日本人居住地）出生的日裔侨胞。代表作品角色有『公主公主』丰实琴、『天元突破 红莲螺岩』西蒙、『妖精的尾巴』夏·多拉格尼尔、『THELOSTCANVAS冥王神话』天马、『零之轨迹』&『碧之轨迹』罗伊德·班宁斯、『青之驱魔师』阿玛依蒙等。</p>'),(5,'荒木哲郎','https://images.weserv.nl/?url=https://img2.doubanio.com/view/celebrity/s_ratio_celebrity/public/p42362.webp',1,'天蝎座','1976-11-05','导演 / 编剧','无','无','无','无','<p>荒木哲郎，常化名为望月三郎，1976年11月5日出生于埼玉县，日本动画导演、动画演出家、动画分镜画师，因为无比凛冽的运镜、剪辑风格获得“癫狂美学大师”的美称。1999年专修大学毕业后，当时年仅23岁的荒木哲郎加入MADHOUSE公司担任制作进行。两年后，他在《银河天使》系列中担任分镜和演出，才华得到了充分的展现。他第一部执导的作品是2005年发售的原创动画OVA《童话枪手小红帽》。荒木哲郎擅长执导漫改动画，原创动画亦有尝试，他的代表作包括《死亡笔记》（2006）、《学园默示录》（2010）、《罪恶王冠》（2011，Production I.G）、《进击的巨人》（2013，WIT STUDIO）等。在荒木先生离开后MADHOUSE后，开始以WIT STUDIO（旧・Production I.G动画制作第6课）为据点活动。</p>'),(9,'荒木哲郎 Tetsuro Araki','https://images.weserv.nl/?url=https://img2.doubanio.com/view/celebrity/s_ratio_celebrity/public/p42362.webp',1,'天蝎座','1976-11-05','导演 / 编剧','无','无','无','无','<p>荒木哲郎，常化名为望月三郎，1976年11月5日出生于埼玉县，日本动画导演、动画演出家、动画分镜画师，因为无比凛冽的运镜、剪辑风格获得“癫狂美学大师”的美称。1999年专修大学毕业后，当时年仅23岁的荒木哲郎加入MADHOUSE公司担任制作进行。两年后，他在《银河天使》系列中担任分镜和演出，才华得到了充分的展现。他第一部执导的作品是2005年发售的原创动画OVA《童话枪手小红帽》。荒木哲郎擅长执导漫改动画，原创动画亦有尝试，他的代表作包括《死亡笔记》（2006）、《学园默示录》（2010）、《罪恶王冠》（2011，Production I.G）、《进击的巨人》（2013，WIT STUDIO）等。在荒木先生离开后MADHOUSE后，开始以WIT STUDIO（旧・Production I.G动画制作第6课）为据点活动。</p>');
/*!40000 ALTER TABLE `celebritys` ENABLE KEYS */;
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
