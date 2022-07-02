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
-- Table structure for table `longcomments`
--

DROP TABLE IF EXISTS `longcomments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `longcomments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `movie_id` int NOT NULL,
  `content` text NOT NULL,
  `date` bigint NOT NULL,
  `score` float NOT NULL,
  `spoiler` tinyint NOT NULL COMMENT '是否剧透，0代表否，1代表是',
  `title` varchar(500) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `longComments_movie_id_idx` (`movie_id`),
  KEY `longComments_user_id_idx` (`user_id`),
  CONSTRAINT `longComments_movie_id` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `longComments_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `longcomments`
--

LOCK TABLES `longcomments` WRITE;
/*!40000 ALTER TABLE `longcomments` DISABLE KEYS */;
INSERT INTO `longcomments` VALUES (1,1,1,'这是长评',32131232131,10,0,'这是标题'),(2,2,1,'这也是长评',32131232131,4,0,'这是标题'),(3,1,2,'这是我的第二条长评',32131232131,8,0,'这是标题'),(5,1,7,'这是我的第三条长评',32131232131,6,0,'这是标题'),(6,3,2,'凡事起始之时，必细斟细酌，以保平衡之道准确无误。\n\n( A beginning is the time for taking the most delicate care that the balances are correct.  ) \n\n一座古老的圣所，这里是姐妹会贝尼·杰瑟里特（Bene Gesserit）的圣所。一幅极其精美的镶嵌图，上面写着优美的古阿拉伯式书法，记录着厚重的历史。\n\n（ BENE GESSERIT：贝尼·杰瑟里特。芭特勒圣战摧毁所谓的“思考机器”和机器人之后创建的一所古老学府，主要对女性学生进行心智和身体的训练。 ）\n\n (《沙丘》中的宗教组织姐妹会Bene Jesserit Sisterhood，其名为生造词。姐妹会名称源自圣经中，神对以色列人的亲密称，呼耶书仑之子jeshurun，bene与sserit为拉丁语,bene意为好与善、sserit意为完成与成就，Bene Jesserit意为美好的完成之人，即姐妹会的终极育种目标。) \n\n一名身份神秘的老者说话：老而弥慧（aged and wise）。\n\n老者：曾经，我们人类让机器为人类思考，后来机器奴役了人类。人类与机器迎来了一个充满暴虐和战争的时代。\n\n镶嵌图案发生变化，机械结构改变，逐渐形成一个扭曲的人形……\n\n（《沙丘》中的人类曾毫无顾忌地使用人工智能，极度依赖电脑。而机械智慧的拥有者通过机械奴役了所有人。随后拥护奴役者与被奴役者发生战争，史称巴特兰圣战Butlerian Jihad。）\n\n老者：当人类终于把机械摧毁之时，制定了一条新律：“汝不应造仿人思维机器。” （Thou shalt not make a machine in the likeness of a human mind.）\n\n屹立的机械物物体最终缩小粉碎，留下了一个黄金空间，人形出现。\n\n人形变成了被数学环绕门泰特……驾驶飞船的公会领航员……由圣母领导的，身穿黑袍的姐妹会贝尼·杰瑟里特……\n\n（人类通过各种方式强化自身，获得超级能力。）',1635234231030,10,1,'大萨达大萨达大萨达大萨达大萨达大萨达大萨达大萨达'),(7,3,1,'    凡事起始之时，必细斟细酌，以保平衡之道准确无误。<br/><br/>( A beginning is the time for taking the most delicate care that the balances are correct.  ) <br/><br/>一座古老的圣所，这里是姐妹会贝尼·杰瑟里特（Bene Gesserit）的圣所。一幅极其精美的镶嵌图，上面写着优美的古阿拉伯式书法，记录着厚重的历史。<br/><br/>（ BENE GESSERIT：贝尼·杰瑟里特。芭特勒圣战摧毁所谓的“思考机器”和机器人之后创建的一所古老学府，主要对女性学生进行心智和身体的训练。 ）<br/><br/> (《沙丘》中的宗教组织姐妹会Bene Jesserit Sisterhood，其名为生造词。姐妹会名称源自圣经中，神对以色列人的亲密称，呼耶书仑之子jeshurun，bene与sserit为拉丁语,bene意为好与善、sserit意为完成与成就，Bene Jesserit意为美好的完成之人，即姐妹会的终极育种目标。) <br/><br/>一名身份神秘的老者说话：老而弥慧（aged and wise）。<br/><br/>老者：曾经，我们人类让机器为人类思考，后来机器奴役了人类。人类与机器迎来了一个充满暴虐和战争的时代。',1635234476755,8,1,'瑟里特。芭特勒圣战摧毁所谓的“思考机器”和'),(8,3,2,'传播或鼓励盗版讯息的一概删，就不要孜孜不倦地留言了，这片拍的不容易。<br/><br/>还有！我对这个豆瓣简介的货不对版已经无法再忍了！要看星战型太空歌剧的、要看打戏的、要看王子复仇记的，都不要来看这个IP！跟以上三项没有半毛钱关系！冲着以上三项去看原著的也不必了，原著跟这也没有半毛钱关系！<br/><br/><br/><br/>作为一个宽容的原著党，我给他四星。<br/><br/>原本我放出话来说这部小说是不适合也不可能改成电影的，尤其是戴着资本镣铐的前提下，今天看了正片，更加加深了我这个想法……本片在各方面的制作上抓不出问题的，从演技、特效、服装、美术各个角度来说都算时代前沿，而且导演也没有彻底放弃对小说精髓部分的诠释，本来看预告片心说坏了，整得跟王子复仇记和土著反侵略记一样，难道要照抄一个表面故事，把哲学背景全部扔掉了嘛？其实开篇十分钟当我看到那么多叙述性旁白讲解来龙去脉得时候仍旧觉得这片一定是屎了，但是逐渐这个美术和音乐构建出的大环境建立出来之后，有了很大改观，我觉得真的大写的不容易，所以这个四星里的三星都是给迎难而上的导演的。<br/><br/>为什么沙丘难改电影？<br/>我先来解释一下这个老大难。各位只看过沙丘简介的同学，不可能直接理解为什么那么难改编。我看到有原著党泛泛地说沙丘有一整个生态系统，美工难做，这话放在2021年不是开玩笑吗？难你能比前几年的《湮灭》还难？别逗我了；说沙丘人物复杂关系庞大，错是没错，但绝对没多到拍不了，没立体复杂到无法实现；说表面剧情难拍那就更加岂有此理了，各位看简介的是不是大都觉得“就这么个王子复仇记”的老套故事有什么稀奇的……真爱原著党敲章确认的确丝毫不稀奇。那问题究竟在哪？<br/><br/>在讲故事的方法和目的。我们必须要承认，同一个王子复仇记，你分别让小学生和文豪去写，可以保证故事情节一样，表达思想差几十个档次。<br/><br/>弗兰克赫伯特在讲这个故事时，就没有沿用传统的“王子被害+天赋异禀成长雄起”的心路历程，他用了一个subversion的技法，片中每次传统的“高潮点”和“抖包袱”点全部刻意破坏掉（这也是为什么许多人表示沙丘难读，也不爽，反映在剧情上的评价就是“剧情平淡”）。此外他给这个本该非常俗气的桥段添加了太多科幻角度的设定，这些设定每一个都会蝴蝶效应交叉影响，将故事再度复杂化，这么做最终是为了反英雄、反救世主，背后有赫伯特酝酿了好几本书才缓慢铺展开的哲学思想，所以用王子复仇记去形容沙丘的人，全部都成为了原著试图描述的反义词。<br/><br/>总的来说，原著里的分析、清谈成分太高，太远离大众熟悉的叙事套路，相比一个可以影视化的剧本，它长得更像哲学课本，请问怎么拍？就像降临的原著给你讲物理原理、太空漫游的原著给你讲人机结合精神脱离肉体和超越人类物种的认知，沙丘也是一样的，它给你讲无常、祖先记忆、反宿命论、反救世主、诗意、语言分析，全是纯抽象的玩意，咋拍？（当然，不否认去找个天纵之才的艺术家或许真可以试试，但谁给钱啊？老佐不就是这样吗。）<br/><br/>我似乎看到维伦纽瓦的访谈里，他提到过对反救世主这个点的理解，而我看下来第一部，似乎是有可能符合原著去做大这个点的，只是一切均在起势，整个局势还不明确，暂时不好说，如果他决定做这个点，那么一切缺点我都一概原谅，并彻底承认他将真正的第一本沙丘成功搬上银幕。<br/><br/>哲学、宗教和心理描写都是银屏杀手，如果要对得起弗兰克赫伯特，就会出现许多敏感话题、费解的人物动机，如今资本绝对不会允许这么容易砸场子、引争议的内容出现，所以我觉得只要维伦纽瓦能够抓住反英雄这一个点，就能开巨型庆功会了。<br/><br/>当然，我也觉得维伦纽瓦现在就已经很聪明，他强行利用了他可以利用的部分，那就是一个非常神秘肃杀的叙事环境，他给这个环境投入的高级感完全契合了原著，这就是音乐和美术强大的能力，足以让观者在没有直接收到哲学讨论相关信息的时候，靠感官去接受一小部分异曲同工的变体。<br/><br/>优点<br/>本片的主要优点就在于我上面说的，对整体叙事环境的把控。预告片里出现的那两个笑点（长了点肌肉嘛小子？哥尼笑一个）真的就是全剧所有笑点了……要挤出这几滴去做宣传真的不容易，瞬间让我觉得资方也挺心累的，还能怎么办呢，大家都只能妥协啊……<br/><br/>第二个就是表皮故事忠于原著的比例还是相当高的，我就暂且不考虑每个情节的权重，一揽子看的话，大致故事都在了，光看表皮故事的原著党肯定是会满意的。<br/><br/>第三就是本片那股意识流的闪回（更确切地说应该是“未来闪”。。。）有做到概括性地酝酿出一个形而上的精神世界，即便目前为止只是个形式，它也已经出来那个味儿了，非常赞赏。仔细想想当年《降临》是如何处理形而上的抽象思维的？在这里你能看到它的影子。<br/><br/>我刚刚在讨论区意外看到一组对话很有意思，有观众不理解保罗和杰米决斗前那些预见未来的“未来闪”，讨论结果就是这些预言是没用的。这顿时让我开始品出点额外的味道出来了，赫伯特不就是要写“预言不是你想的那样牛逼无比”吗？他不就是要写预言能力作为负担的那一面吗？很有意思，电影这里应该说是通过很晦涩的镜头语言实现了这点，真是不容易啊，绝对的加分项。（这个桥段我唯一没理解的是为什么杰米和保罗决斗不脱衣服，hum....不管是从商业角度、视觉效果角度、气氛渲染还是对原著的还原度，都是脱衣服打更好啊，该卖肉的时候不卖？困惑。。）<br/><br/>缺点<br/>1，压缩情节还是太厉害了<br/><br/>我看完第一个大问号就是“谁是叛徒”的情节整个没了？？这是第一个我认为绝对不可以压缩的情节，更别提完整删除了。它的重要性在于，一打重要主角配角的人物塑造都是通过“找叛徒”而激发的猜疑链而塑造的：公爵和杰西卡之间坚不可摧的信任以及复杂压抑的爱恋、公爵的不堪重负、老门泰特杜菲的僵化思维、岳医生立体的形象……全没了。归根结底，如果要加入找叛徒这一情节，精神交流和互相猜疑的戏就会大幅上升，而这基本是很难图像化的。<br/><br/>当观众从很震撼的试听效果里走出来的时候就马上会发现，大部分配角都是空的。<br/><br/>就拿咱们张震的岳医生举例子好了。岳医生的叛变完全激不起任何涟漪，因为观众并不知道岳医生是“苏克医生”——头带菱形印记（预处理）以后就不可能叛变的忠实仆人，岳医生之行为的难度实际上类似于：一个人为了爱人渺茫的一线生机而突破思想钢印，誓要拖全世界下地狱，是不是就有魅力了许多？而且原著里的岳医生形象甚至更加立体，他很聪明地推测出了政治局势，知道皇帝和哈克南都要公爵死，公爵生还可能性极低，就算他不叛也早晚会死，而且也知道哈克南的秉性，早就推测出了自己和妻子多半都会死，因此行事的根本动机是对哈克南的恨意。但如今由于删掉了找叛徒情节线，观众都没能注意到岳医生跟厄崔迪家族有多么亲近，他是多么的“不可能叛变”，这叛变就失去力量，变成了纯推进剧情的需求。不过话说回来，仔细看能看出导演有尽力了……他强行在盒子测试前安排了一个体检，用中文对话去说明岳医生和保罗的亲近，好吧……就是……我知道你尽力了……<br/><br/>岳医生还有一个高光点被删除得让我很心酸：就是他悄悄送给保罗一本珍贵的圣经。这里修饰岳医生形象还在其次，这本奥兰治天主圣经其实在保罗和他的后代身上都留下了极深的印记，甚至于第四本小说《沙丘神帝》本身就是一本圣经。删除这个桥段，等于直接宣告：我不会往下拍。目测确实拍到小说第二本就是极限了。<br/><br/>此外还有很多，杰西卡的形象在拿走了找叛徒一事之后也大大受损，后面她接收晶牙匕的时候演得也太快了太潦草了，都证明了原著里的心理描写没办法拍的问题；杜菲和哥尼甚至完全简化到工具人的地步，后半段就彻底消失了，还有……非原著党估计都不知道保罗也有门泰特能力吧……<br/><br/>2，详略不当<br/><br/>这点我先原谅，再次说一句，商业嘛，但是写还是要写出来的。<br/><br/>根据执导宗旨到底商业还是艺术，对原著剧情描绘的权重自然会不同。就像我之前说的，如果要尊重原著，光杰西卡接受晶牙匕这件事就可以拍个五分钟，而那些打斗则没有必要突出，但想想好像也不现实吧……<br/><br/>但是本片里我最不能接受的被省略掉的一个小剧情点，是故事的最后，保罗取人性命后，杰西卡非常怕他沾沾自喜，适时地讽刺了一句：“好啊，杀人的滋味如何？”啊，当时这个桥段立刻让我对这本书的观感上涨了10086。取人性命往往都是类似少年人成长为男人故事的临界点，本片也是暗示了这一点，但是却没有抓住这个机会去塑造杰西卡母子俩最大的特点：站得很高的悲悯。去看看星球大战里的少年成长桥段，天行者杀人那是理所当然，杀坏人嘛，坏的就该杀，商业片的荧屏上还尚未有任何一个真正能给与死亡哲学思考和提点主人公谦逊悲悯不忘初心的桥段出现。<br/><br/>另一个让我很不满的是保罗的形象降智了。这当然是对比书里，电影同行比比他还是很在线的。由于沙丘他根本就不是成长型小说，是无法像传统少年成长类ip那样足以让青少年代入的！就这么说吧，保罗的起点，已经是一切少年成长IP里主角的终点再成长十几二十年的状态……所以小说里保罗尽管不经常插嘴，但每次插嘴都能震撼全场，每个配角都要有一模一样的心理活动：“这小孩怎么总是能问出最聪明的大人才能问出的问题！”看完电影以后观众有这感觉吗？没有……我还常觉得保罗插嘴插得挺二的……实际上保罗去赢得凯恩斯的尊重（暗暗对凯恩斯突然变女的了感到无语，是政治正确牌吗？）完全可以重点拍，书里这段可是非常精彩的心理play，片中却把时间交给邓肯打戏煽情去了……啊西巴这主次不分得让我晕眩。还有这段让我笑倒在地上的是：邓肯已经在防护门里边儿了，他非要出门把自己弄到半死为止，期间主角团居然一动没动，还得靠他回光返照的那几秒钟才能走进密道，which就在几步远……啊西巴真的显得这届的主角全在为一个配角牺牲戏贡献时间。参考一下小说里是什么情况：敌人攻进来的时候，杰西卡和保罗是靠着邓肯的武力输出当屏障逃进加固过的密室的，也就是说他们一开始谁都不在密室内，而关上大门将邓肯锁在外面的正是保罗……<br/><br/>3，商业部分未免太白痴模式了<br/><br/>嗨，我知道沙丘开头难，但是也不至于就这样放弃治疗整个旁白干巴巴地解释来龙去脉吧。。。尤其是这个旁白被当作是保罗梦中契尼的思绪，这就更离谱了，因为保罗的能力是能看向未来，而不是全知全能，他足以看到契尼，但绝不可能看到契尼的思想，他又不是上帝！原著很强调地点明过看向未来只是打开了一种普通人类无法理解的感官，就像视力会被一座山阻挡，未来视力一样有他的局限，相关哲学讨论在我看来是全书的精髓，但这个开头一出我也知道肯定是全部砍掉，没戏了。<br/><br/>契尼的独白还给观众一个错误概念就是弗里曼人一直被压迫且无力反抗，这直接又降了弗里曼人的智，他们只是在隐藏实力而已，这点虽然后面有补救，但也只是一句带过。<br/><br/>另一个我完全翻白眼的是保罗和他爹公爵在母星时的对话。还是因为删掉了心理活动戏，保罗降智double kill，电影按照剧情需要，必须向观众明说公爵实际在受到政治迫害，于是就通过父亲教儿子这个方式展现，但保罗需要他爹教这点最基础的事吗？！原著里的保罗根本不需要好吗！电影通过给保罗硬加上两个桥段（和邓肯兄弟情、向父亲学习）将保罗在本质上变成了少年漫主角。这是我最失望的地方。<br/><br/>好吧，还是为这样一个视听效果而高兴的<br/>这四分，是理解了创作环境而给的四分，也为整个片子的审美而欢呼，就像那些可爱的扑翼飞机，的确有把我想象里的沙丘环境展示出来。<br/><br/>最后，欣赏一截开篇15岁的小保罗晚上躺床上沉思的节选：<br/><br/><br/>Paul sensed his own tensions, decided to practice one of the mind-body lessons his mother had taught him. Three quick breaths triggered the responses: he fell into the floating awareness … focusing the consciousness … aortal dilation … avoiding the unfocused mechanism of consciousness … to be conscious by choice … blood enriched and swift-flooding the overload regions… one does not obtain food-safety- freedom by instinct alone …animal consciousness does not extend beyond the given moment nor into the idea that its victims may become extinct … the animal destroys and does not produce …animal pleasures remain close to sensation levels and avoid the perceptual … the human requires a background grid through which to see his universe … focused consciousness by choice, this forms your grid … bodily integrity follows nerve-blood flow according to the deepest awareness of cell needs … all things/cells/beings are impermanent … strive for flow-permanence within…. ',1635234759959,10,0,'asdasdlongasdasdlongasdasdlongasdasdlongasdasdlongasdasd'),(9,27,1,'奥术大师大奥术大师大奥术大师大奥术大师大奥术大师大奥术大师大奥术大师大奥术大师大奥术大师大奥术大师大奥术大师大奥术大师大奥术大师大',1635315549383,6,1,'这是标题'),(10,27,1,'奥术大师大奥术大师大奥术大师大奥术大师大奥术大师大奥术大师大奥术大师奥术大师大奥术大师大奥术大师大奥术大师大奥术大师大奥术大师大奥术大师奥术大师大奥术大师大奥术大师大奥术大师大奥术大师大奥术大师大奥术大师奥术大师大奥术大师大奥术大师大奥术大师大奥术大师大奥术大师大奥术大师奥术大师大奥术大师大奥术大师大奥术大师大奥术大师大奥术大师大奥术大师大',1635315573149,10,1,'这是标题'),(11,27,1,'奥术大师大奥术大师大奥术大师大奥术大师大奥术大师大奥术大师大奥术大师奥术大师大奥术大师大奥术大师大奥术大师大奥术大师大奥术大师大奥术大师奥术大师大奥术大师大奥术大师大奥术大师大奥术大师大奥术大师大奥术大师奥术大师大奥术大师大奥术大师大奥术大师大奥术大师大奥术大师大奥术大师奥术大师大奥术大师大奥术大师大奥术大师大奥术大师大奥术大师大奥术大师奥术大师大奥术大师大奥术大师大奥术大师大奥术大师大奥术大师大奥术大师奥术大师大奥术大师大奥术大师大奥术大师大奥术大师大奥术大师大奥术大师',1635315756464,6,0,'这是标题'),(12,28,1,'龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所',1635318858057,8,1,'undefined'),(13,28,1,'龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所',1635318866412,8,1,'龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所'),(14,28,1,'龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所龖龖所',1635318927732,8,1,'这是标题'),(15,28,1,'dadasdadasdadasdadasdadasdadasdadasdadasdadasdadasdadasdadasdadasdadasdadasdadasdadasdadasdadasdadas',1635319055939,8,1,'        \ndadas');
/*!40000 ALTER TABLE `longcomments` ENABLE KEYS */;
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
