/*
SQLyog Ultimate v11.27 (32 bit)
MySQL - 5.6.30 : Database - giel
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`giel` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `giel`;

/*Table structure for table `t_author` */

DROP TABLE IF EXISTS `t_author`;

CREATE TABLE `t_author` (
  `authorid` int(32) NOT NULL AUTO_INCREMENT,
  `authorname` varchar(32) NOT NULL,
  `authorjianjie` longtext,
  `password` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`authorid`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

/*Data for the table `t_author` */

insert  into `t_author`(`authorid`,`authorname`,`authorjianjie`,`password`) values (1,'时镜','喜欢古言穿越小说描写，擅长女强类小说题材，偏爱刻画坚韧的人物性格。\r\n','111'),(2,'真爱微凉','','111'),(3,'程小一','','111'),(4,'冷家小妞',NULL,'111'),(5,'今苏',NULL,'111'),(6,'叫我懒懒',NULL,'111'),(7,' 斯蒂芬妮·梅耶 Stephenie Meyer',NULL,'111'),(8,'Ernest Hemingway',NULL,'111'),(9,' Margaret Mitchell 玛格丽特·米切尔',NULL,'111'),(10,'乔治·雷蒙德·理查德·马丁 Geoger Raymond Ric',NULL,'111'),(11,'冷非笑',NULL,'111'),(12,'午茶晚','??','111'),(13,'曲萌萌','gdhcjv shj','111'),(14,'醉死当涂',NULL,'111'),(15,'15050012','','116117'),(16,'x','我是x，我发誓，我绝对不坑\r\n','x'),(17,'子夜泱泱','荀彧','116117'),(18,' Walter Isaacson','','x'),(19,'Frances Eliza Hodgson Burnett',NULL,'x'),(20,'君折梅',NULL,'x');

/*Table structure for table `t_book` */

DROP TABLE IF EXISTS `t_book`;

CREATE TABLE `t_book` (
  `bookid` int(32) NOT NULL AUTO_INCREMENT,
  `bookname` varchar(43) DEFAULT NULL,
  `author` varchar(32) DEFAULT NULL,
  `booktype` varchar(20) DEFAULT NULL,
  `bookwenan` longtext,
  `unitprice` double DEFAULT NULL,
  `picture` text,
  `chapternum` int(43) DEFAULT NULL,
  PRIMARY KEY (`bookid`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

/*Data for the table `t_book` */

insert  into `t_book`(`bookid`,`bookname`,`author`,`booktype`,`bookwenan`,`unitprice`,`picture`,`chapternum`) values (1,'我不成仙','时镜','原创-言情-古色古香-仙侠','——纵你成仙，也逃不出我这一剑。她持剑纵横，无数仙人在她剑下丧命。\r\n于是，好事者多名之曰：仙见愁。仙见愁仙见愁，仙人见了也发愁。\r\n后来，他们叫她“见愁仙子”。传闻，她有过一个曾杀妻证道的夫君。\r\n“仙见愁”是个女人，是这浩浩三千界唯一一个不想成仙的修仙人。',10,'images/image17.jpg',9),(4,'侯门毒妃','真爱未凉','穿越 重生','　　夫妻五年，她为他付出所有，他却在她难产之时，和她的嫡姐洞房花烛！\r\n　　一尸两命，含恨而终，真相浮现，原来她竟在谎言中生活了八年！\r\n　　她发誓，若有来生，她定让这些负她害她的人血债血偿！',1,'images/image1.jpg',9),(5,'萌妻高高在上','程小一','婚恋','    新婚之夜，她被大自己九岁的老男人强行发生了关系！\r\n　　“禽兽！我才十八岁！”她边哭边喊。\r\n　　“新婚之夜不洞房，我这个丈夫才是禽兽不如。”\r\n　　',2,'images/image2.jpg',9),(6,'机甲时代之美食革命','冷家小妞','科幻','  她，是大兴王朝名震京城的第一御厨......\r\n',1,'images/image3.jpg\r\n\r\n',9),(7,'七十八号死亡档案','今苏','悬疑','  每个人都有一些秘密不想被别人知道的，而保守那些秘密，总需要那么一点不择手段。\r\n　　',1,'images/image4.jpg',9),(8,'傲娇神探妙法医','叫我懒懒','悬疑','　这是一个傲娇男神“经”如何靠他的高智商和低情商把妞泡到手的故事，也是讲一个懵系女汉子如何将一个傲娇男神“经”驯化成专属她一人的忠犬暖男的故事。\r\n',1,'images/image5.jpg',9),(9,'暮光之城：暮色 Twilight',' 斯蒂芬妮·梅耶 Stephenie Meyer',NULL,'  17岁的女主角贝拉·斯旺是一个天生运动神经差、皮肤苍白得像生病一样的普通女孩。在搬到福克斯这个偏僻且终年阴雨的小镇后，结识了一个神秘的同班男同学爱德华·库伦.......',10,'images/image6.jpg',9),(10,'老人与海 The Old Man and the Sea','Ernest Hemingway','双语小说 英文原版','  风烛残年的老渔夫一连八十四天都没有钓到一条鱼，但他仍不肯认输，而是充满着奋斗的精神，终于在第八十五天钓到一条身长十八尺，体重一千五百磅的大马林鱼。...\r\n',10,'images/image7.jpg',9),(11,'飘 Gone With The Wind',' Margaret Mitchell 玛格丽特·米切尔','双语小说','   小说以美国南北战争为背景，主线是好强、任性的庄园主小姐斯佳丽纠缠在几个男人之间的爱恨情仇，与之相伴的还有社会、历史的重大变迁，旧日熟悉的一切的一去不返……',10,'images/image8.jpg',9),(12,'冰与火之歌:魔龙的狂舞 A Dance with Dragons','乔治·雷蒙德·理查德·马丁 Geoger Raymond Ric','英文原版','   第五卷《魔龙的狂舞》（A Dance with Dragons）于2011年出版，故事与卷四《群鸦的盛宴》同步进行，主要讲述在火龙重新现世的同时众人的经历.....',10,'images/image9.jpg',9),(13,'史蒂夫·乔布斯传记 Steve Jobs: A Biography',' Walter Isaacson','经典英文小说','   从1971年至2000年间的故事着手，再现乔布斯创业初期的工作和生活.....',10,'images/image10.jpg',9),(14,'Sister Carrie嘉莉妹妹',' Theodore Dreiser西奥多·德莱塞','英文小说','  农村姑娘嘉莉来到大城市芝加哥寻找幸福，为摆脱贫困，出卖自己的贞操，先后与推销员和酒店经理同居，后又凭美貌与歌喉成为演员的故事.......',10,'images/image11.jpg',9),(15,'秘密花园 The Secret Garden','Frances Eliza Hodgson Burnett','英文小说','     The Secret Garden is a novel by Frances Hodgson Burnett.',10,'images/image12.jpg',9),(16,'我和杯具有个约会','冷非笑','原创-言情-幻想未来-网游','   时隔两年，言小君进入游戏的姿势是酱紫的_(:з」∠)_\r\n   还有酱紫的orz\r\n   被NPC套路的大概她是史无前例的第一个，\r\n   NPC和玩家之间的信任呢？(╯‵□′)╯︵┻━┻......',10,'images/image13.jpg',9),(17,'末世不止眼前的物资','午茶晚','原创-言情-近代现代-科幻','    她随便出去走一趟，带回来的物资不计其数；\r\n她永远冲在第一位，身后的追随者一言难尽；\r\n她提出最新的理念，促进科研技术一日千里……\r\n以上，都是别人家的女主。\r\n可是，她的眼睛怎么总盯着自己的男人？就算是女主，抢老公这事绝对不能忍！\r\n……',10,'images/image14.jpg',9),(18,'谷主夫人升职记[剑三]','醉死当涂','原创-言情','   暗戳戳上个线，情缘缘跟别的花炸橙子了！”\r\n宁钰带着风车山庄毕业二小姐去砸场子，渣男帮主一怒之下两人双双被踢出帮会。\r\n人生最凄惨的时候一只破军老白发道长没有踏着祥云逆着阳光但是帮宁钰痛打渣男……',10,'images/image15.jpg',9),(19,'强制婚姻[ABO]','曲萌萌','原创-言情-幻想未来-科幻','   闭眼前，她心爱的夫君亲手将她送上断头台。\r\n睁开眼，她成了千万年后盖亚星球上珍贵的alpha。\r\n好不容易翻身做主，结果摊上个基因匹配100%的omega......\r\n',10,'images/image16.jpg',9),(20,'逆女嫡妃','君折梅','穿越言情','   别人重生之后，都能过得安安稳稳，为什么只有她，总被人看穿鬼魂的本质？ 别人重活一回，人缘个顶个的好，为什么她重生之后，倒是更姥姥不疼舅舅不爱了？ 她本来......',11,'images/image16.jpg',9),(22,'凤还朝，妖孽王爷请让道','x','穿越言情','她，21世纪腐女一枚，竟穿越成恋夫成痴的花痴王妃！前世被虐死，这一世还不掀翻他的王府！“你是杀了我还是让我休了你？”某王妃一脸得瑟，抖腿看着破门而入的冷面王爷！该死的女人，堂堂王妃，逛妓院，打群架，劫法场，还全城宣告要休夫！',11,'images/s1.jpg',9),(23,'江山为聘：美人谋天下','鱼七忘','穿越言情','号称“燕子神偷”的现代女贼因一枚戒指灵魂穿越，为报师父救命之恩，孤身历险寻找解药，所经之处，将起狂风骇浪！.....',11,'images/s.jpg',9),(24,'微微一笑很倾城','顾漫','都市言情','虚拟网络游戏中的相识，在现实中绽放美丽的爱情之花',10,'images/s2.jpg',9),(25,'吉祥纹莲楼花','藤萍','古代文学','荆门蓬草扫坟花，十里迢迢赴碧纱。斯人已是石中火，何事隙中寻少骅。\r\n\r\n在佛州清源山的普渡寺与百川院中有一条秘道相连，秘道中赫然发现一具被剥了皮的焦尸.....',10,'images/image16.jpg',9),(27,'独自上场','李娜','自传','暂无',20,'images/s2.jpg',9),(28,'锦绣未央2','未知','古装','暂无',20,'images/s2.jpg',9),(29,'彼岸之恋 此端为你','x','青春校园','　有些事，明知道是错的，却还要坚持，因为不甘心；有些人，明知是爱的，却还要放弃，因为没结局；有时候，明知道没路了，却还要前行，因为习惯了。 　　一个人会落泪，是因为痛；一个人之所以会痛，是因为在乎；一个人之所以会在乎，是因为有感觉；一个人之所以有感觉，仅因为你是一个人！如果真的有一天，某个回不来的人消失了，某个离不开的人离开了，也没关系。时间会把最正确的人带到你身边，在此之前，你要做的，是好好的照顾自己。。。我现在不想你了。我爱你，那是曾经。掏心掏肺的付出、你却只是习以为然、一切都是无所谓。你说至始至终的爱没有变。对。爱没变。变的是我们。',0,'images/noImage.jpg',9),(32,'冷王盛宠，一品驭兽妃','x','穿越言情','一枚天神令牌，将她从21世纪顶级反恐特工，召唤到千年之前。\r\n										世人皆知，沐相府三小姐自小愚钝，乃相府一大耻辱，却不知，草包一夜蜕变，早已替换一颗玲珑心。\r\n										“再不归还，殿下患有隐疾一事，定满朝皆知！” 他是当朝皇子，惊才绝艳，众人为之倾慕，竟犹如无赖强抢她玉佩不归还。\r\n										某夜，红帐内，他将她扑倒，唇间染笑，“如今整个西元国都知本皇子有隐疾，你得替本皇子正名……”',1,'images/noImage.jpg',9),(34,'谁的青春不迷茫','刘同','青春','谁的青春不迷茫',30,'images/noImage.jpg',NULL);

/*Table structure for table `t_chaper` */

DROP TABLE IF EXISTS `t_chaper`;

CREATE TABLE `t_chaper` (
  `rowid` int(32) NOT NULL AUTO_INCREMENT,
  `chapter` int(32) DEFAULT NULL,
  `book` int(32) DEFAULT NULL,
  `title` varchar(32) DEFAULT NULL,
  `content` longtext,
  PRIMARY KEY (`rowid`),
  KEY `FK624F6D2C952EA674` (`book`),
  KEY `FK624F6D2CE7D1AF99` (`book`),
  CONSTRAINT `FK624F6D2CE7D1AF99` FOREIGN KEY (`book`) REFERENCES `t_book` (`bookid`),
  CONSTRAINT `t_chaper_ibfk_1` FOREIGN KEY (`book`) REFERENCES `t_book` (`bookid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

/*Data for the table `t_chaper` */

insert  into `t_chaper`(`rowid`,`chapter`,`book`,`title`,`content`) values (1,1,1,'杀妻证道','novel/1_1.html'),(2,2,1,'死而复生','novel/1_2.html'),(3,3,1,'山人','novel/1_3.html'),(4,4,1,'夜归人','novel/1_4.html'),(5,5,1,'丧子之痛','novel/1_5.html'),(6,6,1,'修行路','novel/1_6.html'),(7,7,1,'姓甚名谁','novel/1_7.html'),(8,8,1,'...','novel/1_8.html'),(9,9,1,'...','novel/1_9.html');

/*Table structure for table `t_comment` */

DROP TABLE IF EXISTS `t_comment`;

CREATE TABLE `t_comment` (
  `commentid` int(32) NOT NULL AUTO_INCREMENT,
  `book` int(11) DEFAULT NULL,
  `word` text,
  `user` int(11) DEFAULT NULL,
  PRIMARY KEY (`commentid`),
  KEY `FKF437E194E7D1AF99` (`book`),
  KEY `FKF437E194E7E3115D` (`user`),
  CONSTRAINT `FKF437E194E7D1AF99` FOREIGN KEY (`book`) REFERENCES `t_book` (`bookid`),
  CONSTRAINT `FKF437E194E7E3115D` FOREIGN KEY (`user`) REFERENCES `t_user` (`userid`),
  CONSTRAINT `t_comment_ibfk_1` FOREIGN KEY (`book`) REFERENCES `t_book` (`bookid`),
  CONSTRAINT `t_comment_ibfk_2` FOREIGN KEY (`user`) REFERENCES `t_user` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `t_comment` */

insert  into `t_comment`(`commentid`,`book`,`word`,`user`) values (1,1,'这本书真好看！故事情节真的好棒...',1),(2,1,'111',1),(3,1,'111',1),(4,1,'111',1),(5,1,'赞',1),(6,4,'赞',1),(7,1,'22',1);

/*Table structure for table `t_order` */

DROP TABLE IF EXISTS `t_order`;

CREATE TABLE `t_order` (
  `orderid` int(32) NOT NULL AUTO_INCREMENT,
  `user` int(32) DEFAULT NULL,
  `book` int(32) DEFAULT NULL,
  PRIMARY KEY (`orderid`),
  KEY `FKA0C0C3C3E7D1AF99` (`book`),
  KEY `FKA0C0C3C3E7E3115D` (`user`),
  CONSTRAINT `t_order_ibfk_1` FOREIGN KEY (`user`) REFERENCES `t_user` (`userid`),
  CONSTRAINT `t_order_ibfk_2` FOREIGN KEY (`book`) REFERENCES `t_book` (`bookid`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;

/*Data for the table `t_order` */

insert  into `t_order`(`orderid`,`user`,`book`) values (1,1,1),(2,2,4),(3,2,1),(4,5,1),(5,5,4),(6,19,12),(7,19,6),(8,26,1),(9,27,1),(10,27,9),(11,2,5),(12,29,1),(15,2,6),(16,2,8),(17,1,8),(18,2,10),(22,2,5),(24,2,13),(25,1,13),(27,1,15),(28,1,6),(29,1,9),(31,1,7),(32,1,4),(35,1,16),(42,30,1),(45,1,5),(46,1,5),(47,1,5),(49,1,7),(50,1,27),(55,1,1);

/*Table structure for table `t_user` */

DROP TABLE IF EXISTS `t_user`;

CREATE TABLE `t_user` (
  `userid` int(32) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

/*Data for the table `t_user` */

insert  into `t_user`(`userid`,`username`,`password`) values (1,'x','x'),(2,'aaa','a'),(3,'真爱未凉','zawl'),(4,'程小一','cxy'),(5,'冷家小妞','ljxn'),(6,'今苏','js'),(7,'叫我懒懒','jwll'),(8,' 斯蒂芬妮·梅耶 Stephenie Meyer','sm'),(9,'Ernest Hemingway','eh'),(10,' Margaret Mitchell 玛格丽特·米切尔','mm'),(11,'乔治·雷蒙德·理查德·马丁 Geoger Raymond Ric','grr'),(12,'冷非笑','lfx'),(13,'午茶晚','wcw'),(14,'醉死当涂','zsdt'),(15,'曲萌萌','qmm'),(16,' Theodore Dreiser西奥多·德莱塞','td'),(17,'Frances Eliza Hodgson Burnett','fehb'),(19,'15050004','11'),(26,'li70','70'),(27,'1','1'),(28,'15050022','15050022'),(29,'aa','a'),(30,'w','w'),(31,'admin','123');

/*Table structure for table `t_write` */

DROP TABLE IF EXISTS `t_write`;

CREATE TABLE `t_write` (
  `writeid` int(32) NOT NULL AUTO_INCREMENT,
  `book` int(32) DEFAULT NULL,
  `author` int(32) DEFAULT NULL,
  PRIMARY KEY (`writeid`),
  KEY `FKA13194543768271D` (`author`),
  KEY `FKA1319454E7D1AF99` (`book`),
  CONSTRAINT `t_write_ibfk_1` FOREIGN KEY (`book`) REFERENCES `t_book` (`bookid`),
  CONSTRAINT `t_write_ibfk_2` FOREIGN KEY (`author`) REFERENCES `t_author` (`authorid`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

/*Data for the table `t_write` */

insert  into `t_write`(`writeid`,`book`,`author`) values (1,1,1),(2,4,2),(4,5,3),(5,6,4),(6,7,5),(7,8,6),(8,9,7),(9,10,8),(10,11,9),(11,12,10),(12,13,18),(13,14,10),(14,15,19),(15,16,11),(16,17,12),(17,18,14),(18,19,13),(19,20,20),(21,22,16),(24,32,16),(25,34,16);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
