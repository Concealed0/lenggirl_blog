-- MySQL dump 10.13  Distrib 5.6.31, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: hunter
-- ------------------------------------------------------
-- Server version	5.6.31-0ubuntu0.14.04.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `mtaobao`
--

DROP TABLE IF EXISTS `mtaobao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mtaobao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(100) NOT NULL,
  `pwd` varchar(100) NOT NULL,
  `times` int(11) DEFAULT '0',
  `ip` varchar(200) DEFAULT NULL,
  `dates` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mtaobao`
--

LOCK TABLES `mtaobao` WRITE;
/*!40000 ALTER TABLE `mtaobao` DISABLE KEYS */;
INSERT INTO `mtaobao` VALUES (1,'jinhan1','6833066',0,NULL,NULL);
/*!40000 ALTER TABLE `mtaobao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test`
--

DROP TABLE IF EXISTS `test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test` (
  `id` int(11) NOT NULL,
  `test` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test`
--

LOCK TABLES `test` WRITE;
/*!40000 ALTER TABLE `test` DISABLE KEYS */;
/*!40000 ALTER TABLE `test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `think_auth_group`
--

DROP TABLE IF EXISTS `think_auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `think_auth_group` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` char(100) NOT NULL DEFAULT '' COMMENT '用户组名称',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态',
  `rules` char(80) NOT NULL DEFAULT '' COMMENT '规则',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `think_auth_group`
--

LOCK TABLES `think_auth_group` WRITE;
/*!40000 ALTER TABLE `think_auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `think_auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `think_auth_group_access`
--

DROP TABLE IF EXISTS `think_auth_group_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `think_auth_group_access` (
  `uid` mediumint(8) unsigned NOT NULL,
  `group_id` mediumint(8) unsigned NOT NULL,
  UNIQUE KEY `uid_group_id` (`uid`,`group_id`),
  KEY `uid` (`uid`),
  KEY `group_id` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `think_auth_group_access`
--

LOCK TABLES `think_auth_group_access` WRITE;
/*!40000 ALTER TABLE `think_auth_group_access` DISABLE KEYS */;
/*!40000 ALTER TABLE `think_auth_group_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `think_auth_rule`
--

DROP TABLE IF EXISTS `think_auth_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `think_auth_rule` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(80) NOT NULL DEFAULT '',
  `title` char(20) NOT NULL DEFAULT '',
  `type` tinyint(1) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `condition` char(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `think_auth_rule`
--

LOCK TABLES `think_auth_rule` WRITE;
/*!40000 ALTER TABLE `think_auth_rule` DISABLE KEYS */;
INSERT INTO `think_auth_rule` VALUES (6,'Admin/User/listuser','列出用户',1,1,''),(7,'Admin/User/listusers','真的列出用户',1,1,''),(8,'Admin/User/adduser','增加用户',1,1,''),(9,'Admin/User/addusers','真的增加用户',1,1,'');
/*!40000 ALTER TABLE `think_auth_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `think_category`
--

DROP TABLE IF EXISTS `think_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `think_category` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(64) NOT NULL,
  `content` text,
  `createtime` int(11) unsigned DEFAULT NULL,
  `updatetime` int(11) unsigned DEFAULT NULL,
  `order` tinyint(3) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `think_category`
--

LOCK TABLES `think_category` WRITE;
/*!40000 ALTER TABLE `think_category` DISABLE KEYS */;
INSERT INTO `think_category` VALUES (15,'杂七杂八','',1446987068,1456387475,1,1),(16,'动漫2次元','',1446987182,1446987182,1,1),(17,'吃货大集合','',1446987202,1446987202,1,1),(18,'深夜闲聊','',1446987260,1446987260,1,1),(20,'技术阿根','',1452354963,1452354963,1,1);
/*!40000 ALTER TABLE `think_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `think_comment`
--

DROP TABLE IF EXISTS `think_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `think_comment` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `nickname` varchar(64) NOT NULL,
  `content` tinytext NOT NULL,
  `createtime` int(11) unsigned DEFAULT NULL,
  `email` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `pid` mediumint(8) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=87 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `think_comment`
--

LOCK TABLES `think_comment` WRITE;
/*!40000 ALTER TABLE `think_comment` DISABLE KEYS */;
INSERT INTO `think_comment` VALUES (84,'Effortjohn','JXU1QzBGJXU5RUQxJXU1MjMwJXU2QjY0JXU0RTAwJXU2RTM4',1452424271,'none@abc.com',1,31),(85,'Effortjohn','之前的文章没迁移过来？',1452424364,'you@know.com',1,30),(86,'Irishvhaam','Hi http://www.lenggirl.com your discount code: jw2ddXeWLu8iBN <br />\r\n <br />\r\nWe offer e-mail via the contact form on the website of the organization in any country of the world.  <br />\r\n <br />\r\nCan order the test for $10 (send 10 thousand messages), t',1464291042,'irish_tejeda60@rambler.ru',1,0);
/*!40000 ALTER TABLE `think_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `think_paper`
--

DROP TABLE IF EXISTS `think_paper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `think_paper` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(64) NOT NULL,
  `author` varchar(64) NOT NULL,
  `content` text,
  `createtime` int(11) unsigned DEFAULT NULL,
  `updatetime` int(11) unsigned DEFAULT NULL,
  `order` mediumint(8) NOT NULL DEFAULT '1',
  `view` mediumint(8) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `cid` mediumint(8) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `think_paper`
--

LOCK TABLES `think_paper` WRITE;
/*!40000 ALTER TABLE `think_paper` DISABLE KEYS */;
INSERT INTO `think_paper` VALUES (31,'我发现广财系统一个Bug','阿根','<p style=\"text-align: center;\"><strong>我发现了广财系统的一个Bug。</strong></p><p><br/></p><p style=\"text-align: center;\"><strong>如题。&nbsp;<br/></strong></p><hr/><p style=\"text-align: center;\"><strong>当初，我去超级课程表应聘，</strong></p><p style=\"text-align: center;\"><strong>然而大三课满了。</strong></p><p style=\"text-align: center;\"><strong>那时起，我就想干嘛要让别人去帮我们学校查课表。</strong></p><p style=\"text-align: center;\"><strong>为什么我自己不写一个呢？</strong></p><p style=\"text-align: center;\"><img src=\"http://img.baidu.com/hi/jx2/j_0061.gif\"/></p><p style=\"text-align: center;\"><strong>问题是我破解不了验证码。</strong></p><p style=\"text-align: center;\"><strong>然后做了一个更牛逼哄哄的东西。</strong></p><p style=\"text-align: center;\"><strong>查成绩！</strong></p><p style=\"text-align: center;\"><strong>查考试座位。</strong></p><p style=\"text-align: center;\"><img src=\"http://img.baidu.com/hi/jx2/j_0049.gif\"/></p><p style=\"text-align: center;\"><strong>而且，我发现了一个BUG，</strong></p><p style=\"text-align: center;\"><strong>不用别人的密码，可以帮别人查成绩。</strong></p><p style=\"text-align: center;\"><strong>好像雷锋啊啦。。。。</strong></p><p style=\"text-align: center;\"><br/><strong><img src=\"http://img.baidu.com/hi/jx2/j_0005.gif\"/><br/></strong></p><p><br/></p><p style=\"text-align: center;\"><strong>然后我发了贴吧，发给很多人用，</strong></p><p style=\"text-align: center;\"><strong>我想我多助人为乐丫~~</strong></p><hr/><p style=\"text-align: center;\"><strong>这个过程是怎样的呢？</strong></p><p style=\"text-align: center;\"><img src=\"http://img.baidu.com/hi/jx2/j_0016.gif\"/><img src=\"http://img.baidu.com/hi/jx2/j_0028.gif\"/><img src=\"http://img.baidu.com/hi/jx2/j_0019.gif\"/></p><p style=\"text-align: center;\"><strong>首先，我用抓包工具进行抓包，</strong></p><p style=\"text-align: center;\"><strong>发现一堆密文，大概是这样：</strong></p><p><strong><br/></strong></p><pre style=\"text-align: center;\" class=\"brush:python;toolbar:false\"><strong>5oiR5piv5biF5ZOl<br/></strong></pre><p style=\"text-align: center;\"><strong><br/></strong></p><p style=\"text-align: center;\"><strong>然后你知道是什么意思么？</strong></p><p style=\"text-align: center;\"><strong><img style=\"width: 415px; height: 248px;\" alt=\"QQ图片20160110001551.png\" src=\"/uploads/image/20160110/1452356191202158.png\" title=\"1452356191202158.png\" width=\"415\" height=\"248\"/></strong></p><p style=\"text-align: center;\"><strong>好吧，就这样</strong></p><p style=\"text-align: center;\"><strong>我解密了那些密文。。</strong></p><p><br/></p><p style=\"text-align: center;\"><strong>然后做了这个工具</strong></p><p style=\"text-align: center;\"><strong><img alt=\"7d6196cad1c8a786823f71316009c93d70cf5071.jpg\" src=\"/uploads/image/20160110/1452356332708368.jpg\" title=\"1452356332708368.jpg\"/></strong></p><p style=\"text-align: center;\"><strong><img alt=\"520501087bf40ad1d7c5fcdc502c11dfa9ecce6e.jpg\" src=\"/uploads/image/20160110/1452356345331412.jpg\" title=\"1452356345331412.jpg\"/></strong></p><p style=\"text-align: center;\"><strong><img alt=\"214f0955b319ebc43b754ca68526cffc1e171679.jpg\" src=\"/uploads/image/20160110/1452356354379883.jpg\" title=\"1452356354379883.jpg\"/></strong></p><p><br/></p><p style=\"text-align: center;\"><strong>重点是可以计算绩点，我编那个绩点编了好久。。。</strong></p><p><br/></p><p style=\"text-align: center;\"><strong>下面是这个工具的链接：</strong></p><p style=\"text-align: center;\"><a _src=\"http://yun.baidu.com/s/1nu3HwIP\" href=\"http://yun.baidu.com/s/1nu3HwIP\"><strong>http://yun.baidu.com/s/1nu3HwIP</strong></a><br/></p><p><br/></p><p style=\"text-align: center;\"><strong>那个BUG就是用自己的账户密码登录后，</strong></p><p style=\"text-align: center;\"><strong>可以用别人的学号查别人的成绩。</strong></p><p><br/></p><p style=\"text-align: center;\"><strong>有没有发现萌萌哒</strong></p><p style=\"text-align: center;\"><strong><img style=\"width: 384px; height: 318px;\" alt=\"QQ截图20160110002605.png\" src=\"/uploads/image/20160110/1452356779787573.png\" title=\"1452356779787573.png\" width=\"384\" height=\"318\"/></strong></p>',1452356510,1452356796,1,428,1,20),(30,'搭建阿里云','一只尼玛','<p style=\"text-align: center;\"><strong>今天花了一天把博客转移到了阿里云，</strong></p><p style=\"text-align: center;\"><strong>而且还进行了域名备案。</strong></p><p style=\"text-align: center;\"><strong>备案需要几天的时间，</strong></p><p style=\"text-align: center;\"><strong>然而摆脱了新浪云，&nbsp;<br/></strong></p><p style=\"text-align: center;\"><strong>我可以解决上传图片和文件失败的问题。</strong></p><p><br/></p><p style=\"text-align: center;\"><strong><img src=\"http://img.baidu.com/hi/jx2/j_0003.gif\"/></strong></p><p><br/></p><p style=\"text-align: center;\"><strong>在今天。</strong></p><p style=\"text-align: center;\"><strong>我使用了git，</strong></p><p style=\"text-align: center;\"><strong>安装了mysql，</strong></p><p style=\"text-align: center;\"><strong>安装了apache，</strong></p><p style=\"text-align: center;\"><strong>而且全部是敲命令行手动安装的。</strong></p><p><br/></p><p style=\"text-align: center;\"><strong><img src=\"http://img.baidu.com/hi/jx2/j_0006.gif\"/></strong></p><p><br/></p><p style=\"text-align: center;\"><strong>解决了子域名问题。</strong></p><p style=\"text-align: center;\"><strong>域名：</strong></p><p style=\"text-align: center;\"><a _src=\"http://www.lenggirl.com\" href=\"http://www.lenggirl.com\"><strong>www.lenggirl.com</strong></a><br/></p><p><br/></p><p style=\"text-align: center;\"><strong><img src=\"http://img.baidu.com/hi/jx2/j_0012.gif\"/><br/></strong></p><p><br/></p><p style=\"text-align: center;\"><strong>当初申请这个域名，也不知道为什么选这个名字。</strong></p><p style=\"text-align: center;\"><strong>而且，还有微信，如下方二维码。</strong></p><p><br/></p><p style=\"text-align: center;\"><strong><img style=\"width: 1051px; height: 679px;\" alt=\"287233-106.jpg\" src=\"/uploads/image/20160109/1452354906905160.jpg\" title=\"1452354906905160.jpg\" width=\"1051\" height=\"679\"/></strong></p>',1452354972,1452356581,1,180,1,20),(36,'商务智能=数据+分析+决策+利益','一只尼玛博客园','<p>商务智能=数据+分析+决策+利益</p><h1>一、背景介绍</h1><p class=\"NewStyle18\">人类社会从物物交换到货币\r\n的产生，到形形色色的交易，产生了我们现在繁荣、复杂的各种商业活动。利益是商务的核心，而商务需要经过买卖双方的交易，谈判，而商品的流通又需要物流、\r\n库存，其中业务流程十分繁琐，然而科技进步改善或者正在改变着其形式，人们的工作效率正在极大地提高。</p><p class=\"NewStyle18\">在这个信息化的时代，许多传统业务被信息化手段所取代或者信息化作为其辅助手段。于是乎，在这个时代，所有的人都在谈数据，并且相关的商务数据呈爆炸性指数级的增长。可是，不是所有的数据都是有用的，所以人们需要从中挖掘有用的信息，用以指导现实工作。</p><p class=\"NewStyle18\">商务智能，英文为<span style=\"font-family: &#39;Times New Roman&#39;;\" data-mce-style=\"font-family: &#39;Times New Roman&#39;;\">Business&nbsp;Intelligence</span><span style=\"font-family: 宋体;\" data-mce-style=\"font-family: 宋体;\">，简写为</span><a href=\"http://baike.baidu.com/subview/19556/8691725.htm\" data-mce-href=\"http://baike.baidu.com/subview/19556/8691725.htm\">BI</a>。商务智能通常被理解为将企业中现有的数据转化为知识，帮助企业做出明智的<a href=\"http://baike.baidu.com/view/64906.htm\" data-mce-href=\"http://baike.baidu.com/view/64906.htm\">业务</a>经营决策的工具。比如，百货商场每天有各种各样的商品被出售，其<span style=\"font-family: &#39;Times New Roman&#39;;\" data-mce-style=\"font-family: &#39;Times New Roman&#39;;\">POS</span><span style=\"font-family: 宋体;\" data-mce-style=\"font-family: 宋体;\">系\r\n统存储着商品的销售情况，数据量十分庞大。从这些数据，我们利用一定的数学模型和智能软件工具进行分析，知道哪些产品最热销，哪些时段人们喜欢购买什么。\r\n接着，运用分析后的结果进行决策，比如分析后得知下雨天的时候啤酒和炸鸡的销量比其他天气时段更多，于是我们决定在下雨的日子增大啤酒和炸鸡的产量。通过\r\n这些分析和决策，我们得到了商业利润的增加，这种利润是我们利用现代工具进行商务智能的动力。这个过程可以总结为以下的一个等式：</span></p><p>商务智能<span style=\"font-family: &#39;Times New Roman&#39;;\" data-mce-style=\"font-family: &#39;Times New Roman&#39;;\">=</span><span style=\"font-family: 宋体;\" data-mce-style=\"font-family: 宋体;\">数据</span><span style=\"font-family: &#39;Times New Roman&#39;;\" data-mce-style=\"font-family: &#39;Times New Roman&#39;;\">+</span><span style=\"font-family: 宋体;\" data-mce-style=\"font-family: 宋体;\">分析</span><span style=\"font-family: &#39;Times New Roman&#39;;\" data-mce-style=\"font-family: &#39;Times New Roman&#39;;\">+</span><span style=\"font-family: 宋体;\" data-mce-style=\"font-family: 宋体;\">决策</span><span style=\"font-family: &#39;Times New Roman&#39;;\" data-mce-style=\"font-family: &#39;Times New Roman&#39;;\">+</span><span style=\"font-family: 宋体;\" data-mce-style=\"font-family: 宋体;\">利益</span></p><h1>二、数据获取</h1><p class=\"NewStyle18\">传统的数据获取是手工进行纸质记录，缺点是记录容易出错，且随着时间的流动，其数量会大大增加以致于查找历史数据的困难。比如，传统地主家的管家进行家庭财政的登记，账本厚又重，对账极其麻烦，而且说不定账本会因为火灾或各种原因而破损，如被老鼠咬烂了。</p><p class=\"NewStyle18\">随\r\n着科技的进步，有了计算机，于是数据存到了磁带，然后是磁盘。世界上有了社会分工而美妙，每个人都在自己擅长的领域工作，从而创造着更大的利益。于是乎，\r\n不懂计算机的小伙伴借助着别人开发的管理系统进行数据的管理，比如超市的商品管理系统，公司内部的人员管理系统。而软件程序员借助了数据库，数据仓库等产\r\n品进行设计编码，创造了上述的管理系统。</p><p class=\"NewStyle18\">于是，一层接力一层，数据的获取从手工一个个用笔记下来到使用计算机键盘进行录入。通过现代科技手段，查看历史数据只要进行搜索，很快很好就能得到十年前的数据，从而可以更大效率地进行数据分析。</p><p class=\"NewStyle18\">商务智能，智能二字凸显了计算机的重要性。计算机的一切都是<span style=\"font-family: &#39;Times New Roman&#39;;\" data-mce-style=\"font-family: &#39;Times New Roman&#39;;\">0</span><span style=\"font-family: 宋体;\" data-mce-style=\"font-family: 宋体;\">，</span><span style=\"font-family: &#39;Times New Roman&#39;;\" data-mce-style=\"font-family: &#39;Times New Roman&#39;;\">1</span><span style=\"font-family: 宋体;\" data-mce-style=\"font-family: 宋体;\">二进制组成，这两个最普通不过的符号构建了计算机整个数据大厦。如何更好的将数据存到计算机磁盘中，并迅速的读取出来呢？早期的数据存储是使用卡片进行数据读取，后来便产生了现代计算机的存储体系，寄存器，内存，磁盘。从硬件开始，后来出现了软件层面的文件系统，</span><span style=\"font-family: &#39;Times New Roman&#39;;\" data-mce-style=\"font-family: &#39;Times New Roman&#39;;\">IO</span><span style=\"font-family: 宋体;\" data-mce-style=\"font-family: 宋体;\">流。为了更方便存储大量数据，出现了数据库软件，各种数据库理论和工具开始出现。</span></p><p class=\"NewStyle18\">目前使用最多的数据库是<span style=\"font-family: &#39;Times New Roman&#39;;\" data-mce-style=\"font-family: &#39;Times New Roman&#39;;\">1993</span><span style=\"font-family: 宋体;\" data-mce-style=\"font-family: 宋体;\">年</span><span style=\"font-family: &#39;Times New Roman&#39;;\" data-mce-style=\"font-family: &#39;Times New Roman&#39;;\">E.F.Codd</span><span style=\"font-family: 宋体;\" data-mce-style=\"font-family: 宋体;\">提出的关系数据库。</span></p><p class=\"NewStyle18\">&nbsp;</p><p>&nbsp;</p><h1>三、数据分析</h1><p class=\"NewStyle18\">数\r\n据分析方面主要依赖数据挖掘方面的知识，因为商务智能是数据挖掘领域的一个分支。数据挖掘一般是指从大量的数据中通过算法搜索隐藏于其中信息的过程。数据\r\n挖掘通常与计算机科学有关，并通过统计、在线分析处理、情报检索、机器学习、专家系统（依靠过去的经验法则）和模式识别等诸多方法来实现上述目标。</p><p class=\"NewStyle18\">数据挖掘利用了来自如下一些领域的思想：<span style=\"font-family: &#39;Times New Roman&#39;;\" data-mce-style=\"font-family: &#39;Times New Roman&#39;;\">(1)&nbsp;</span><span style=\"font-family: 宋体;\" data-mce-style=\"font-family: 宋体;\">来自统计学的抽样、估计和假设检验，</span><span style=\"font-family: &#39;Times New Roman&#39;;\" data-mce-style=\"font-family: &#39;Times New Roman&#39;;\">(2)</span><a href=\"http://baike.baidu.com/view/2949.htm\" data-mce-href=\"http://baike.baidu.com/view/2949.htm\">人工智能</a>、<a href=\"http://baike.baidu.com/view/14685.htm\" data-mce-href=\"http://baike.baidu.com/view/14685.htm\">模式识别</a>和<a href=\"http://baike.baidu.com/view/7956.htm\" data-mce-href=\"http://baike.baidu.com/view/7956.htm\">机器学习</a>的<a href=\"http://baike.baidu.com/view/3688332.htm\" data-mce-href=\"http://baike.baidu.com/view/3688332.htm\">搜索算法</a>、建模技术和<a href=\"http://baike.baidu.com/view/588169.htm\" data-mce-href=\"http://baike.baidu.com/view/588169.htm\">学习理论</a>。数据挖掘也迅速地接纳了来自其他领域的思想，这些领域包括最优化、进化计算、<a href=\"http://baike.baidu.com/view/15076.htm\" data-mce-href=\"http://baike.baidu.com/view/15076.htm\">信息论</a>、信号处理、可视化和<a href=\"http://baike.baidu.com/view/45496.htm\" data-mce-href=\"http://baike.baidu.com/view/45496.htm\">信息检索</a>。一些其他领域也起到重要的支撑作用。特别地，需要<a href=\"http://baike.baidu.com/view/7809.htm\" data-mce-href=\"http://baike.baidu.com/view/7809.htm\">数据库系统</a>提供有效的存储、索引和查询处理支持。源于高性能（并行）计算的技术在处理海量<a href=\"http://baike.baidu.com/view/262162.htm\" data-mce-href=\"http://baike.baidu.com/view/262162.htm\">数据集</a>方面常常是重要的。分布式技术也能帮助处理<a href=\"http://baike.baidu.com/view/125910.htm\" data-mce-href=\"http://baike.baidu.com/view/125910.htm\">海量数据</a>，并且当数据不能集中到一起处理时更是至关重要。</p><p class=\"NewStyle18\">主要的分析算法有分类&nbsp;（<span style=\"font-family: &#39;Times New Roman&#39;;\" data-mce-style=\"font-family: &#39;Times New Roman&#39;;\">Classification</span><span style=\"font-family: 宋体;\" data-mce-style=\"font-family: 宋体;\">）估计（</span><span style=\"font-family: &#39;Times New Roman&#39;;\" data-mce-style=\"font-family: &#39;Times New Roman&#39;;\">Estimation</span><span style=\"font-family: 宋体;\" data-mce-style=\"font-family: 宋体;\">）预测（</span><a href=\"http://baike.baidu.com/item/Prediction\" data-mce-href=\"http://baike.baidu.com/item/Prediction\">Prediction</a>）相关性分组或<a href=\"http://baike.baidu.com/view/1076817.htm\" data-mce-href=\"http://baike.baidu.com/view/1076817.htm\">关联规则</a>（<span style=\"font-family: &#39;Times New Roman&#39;;\" data-mce-style=\"font-family: &#39;Times New Roman&#39;;\">Affinity&nbsp;grouping&nbsp;or&nbsp;association&nbsp;rules</span><span style=\"font-family: 宋体;\" data-mce-style=\"font-family: 宋体;\">）聚类（</span><span style=\"font-family: &#39;Times New Roman&#39;;\" data-mce-style=\"font-family: &#39;Times New Roman&#39;;\">Clustering</span><span style=\"font-family: 宋体;\" data-mce-style=\"font-family: 宋体;\">）等。这些算法主要依赖数学大厦进行构建，大多数商业数据挖掘软件已经实现了这些功能，方便普通人士的使用。</span></p><p class=\"NewStyle18\">通过使用数据挖掘软件，可以对存储在数据库中的数据进行分析处理，得到一定的统计和计算结果。这些结果可以指导现实的决策。</p><p class=\"NewStyle18\">目前的数据挖掘软件有一般分析目的用的<a href=\"http://baike.baidu.com/view/37.htm\" data-mce-href=\"http://baike.baidu.com/view/37.htm\">软件</a>包<span style=\"font-family: &#39;Times New Roman&#39;;\" data-mce-style=\"font-family: &#39;Times New Roman&#39;;\">SAS&nbsp;Enterprise&nbsp;Miner</span><span style=\"font-family: 宋体;\" data-mce-style=\"font-family: 宋体;\">，</span><span style=\"font-family: &#39;Times New Roman&#39;;\" data-mce-style=\"font-family: &#39;Times New Roman&#39;;\">SPSS&nbsp;Clementine</span><span style=\"font-family: 宋体;\" data-mce-style=\"font-family: 宋体;\">，</span><span style=\"font-family: &#39;Times New Roman&#39;;\" data-mce-style=\"font-family: &#39;Times New Roman&#39;;\">IBM&nbsp;Intelligent&nbsp;Miner</span><span style=\"font-family: 宋体;\" data-mce-style=\"font-family: 宋体;\">等，针对特定功能或产业而研发的软件</span>KD1<span style=\"font-family: 宋体;\" data-mce-style=\"font-family: 宋体;\">（针对零售业）</span><span style=\"font-family: &#39;Times New Roman&#39;;\" data-mce-style=\"font-family: &#39;Times New Roman&#39;;\">Options&nbsp;&amp;&nbsp;Choices</span><span style=\"font-family: 宋体;\" data-mce-style=\"font-family: 宋体;\">（针对保险业）</span><span style=\"font-family: &#39;Times New Roman&#39;;\" data-mce-style=\"font-family: &#39;Times New Roman&#39;;\">HNC</span><span style=\"font-family: 宋体;\" data-mce-style=\"font-family: 宋体;\">（针对信用卡诈欺或呆帐侦测）</span><span style=\"font-family: &#39;Times New Roman&#39;;\" data-mce-style=\"font-family: &#39;Times New Roman&#39;;\">Unica&nbsp;Model&nbsp;1</span><span style=\"font-family: 宋体;\" data-mce-style=\"font-family: 宋体;\">（针对行销业）</span><span style=\"font-family: &#39;Times New Roman&#39;;\" data-mce-style=\"font-family: &#39;Times New Roman&#39;;\">iEM&nbsp;System&nbsp;</span><span style=\"font-family: 宋体;\" data-mce-style=\"font-family: 宋体;\">（针对流程行业的实时历史数据）</span>。</p><h1>四、商务决策</h1><p class=\"NewStyle18\">随着数据库技术的发展和应用，数据库存储的数据量从<span style=\"font-family: &#39;Times New Roman&#39;;\" data-mce-style=\"font-family: &#39;Times New Roman&#39;;\">20</span><span style=\"font-family: 宋体;\" data-mce-style=\"font-family: 宋体;\">世纪</span><span style=\"font-family: &#39;Times New Roman&#39;;\" data-mce-style=\"font-family: &#39;Times New Roman&#39;;\">80</span><span style=\"font-family: 宋体;\" data-mce-style=\"font-family: 宋体;\">年代的兆（</span><a href=\"http://baike.baidu.com/subview/42117/14820397.htm\" data-mce-href=\"http://baike.baidu.com/subview/42117/14820397.htm\">M</a>）字节及千兆（<a href=\"http://baike.baidu.com/view/59733.htm\" data-mce-href=\"http://baike.baidu.com/view/59733.htm\">G</a>）字节过渡到现在的兆兆（<a href=\"http://baike.baidu.com/view/59850.htm\" data-mce-href=\"http://baike.baidu.com/view/59850.htm\">T</a>）字节和千兆兆（<span style=\"font-family: &#39;Times New Roman&#39;;\" data-mce-style=\"font-family: &#39;Times New Roman&#39;;\">P</span><span style=\"font-family: 宋体;\" data-mce-style=\"font-family: 宋体;\">）字节，同时，用户的查询需求也越来越复杂，涉及的已不仅</span>是查询或操纵一张关系表中的一条或几条记录，而且要对多张表中千万条记录的数据进行<a href=\"http://baike.baidu.com/view/362239.htm\" data-mce-href=\"http://baike.baidu.com/view/362239.htm\">数据分析</a>和信息综合，关系数据库系统已不能全部满足这一要求。在国外，不少软件厂商采取了发展其前端产品来弥补关系数据库管理系统支持的不足，力图统一分散的公共应用逻辑，在短时间内响应非数据处理专业人员的复杂查询要求。</p><p class=\"NewStyle18\">联机分析处理（<span style=\"font-family: &#39;Times New Roman&#39;;\" data-mce-style=\"font-family: &#39;Times New Roman&#39;;\">OLAP</span><span style=\"font-family: 宋体;\" data-mce-style=\"font-family: 宋体;\">）系统是</span><a href=\"http://baike.baidu.com/view/19711.htm\" data-mce-href=\"http://baike.baidu.com/view/19711.htm\">数据仓库</a>系\r\n统最主要的应用，专门设计用于支持复杂的分析操作，侧重对决策人员和高层管理人员的决策支持，可以根据分析人员的要求快速、灵活地进行大数据量的复杂查询\r\n处理，并且以一种直观而易懂的形式将查询结果提供给决策人员，以便他们准确掌握企业（公司）的经营状况，了解对象的需求，制定正确的方案。<span style=\"font-family: &#39;Times New Roman&#39;;\" data-mce-style=\"font-family: &#39;Times New Roman&#39;;\">.</span></p><p class=\"NewStyle18\">OLAP<span style=\"font-family: 宋体;\" data-mce-style=\"font-family: 宋体;\">工具是针对特定问题的联机数据访问与分析。它通过多维的方式对数据进行分析、查询和报表。维是人们观察数据的特定角度。例如，一个企业在考虑产品的销售情况时，通常从时间、地区和产品的不同角度来深入观察产品的销售情况。这里的时间、地区和产品就是维。而</span>这些维的不同组合和所考察的<a href=\"http://baike.baidu.com/view/707359.htm\" data-mce-href=\"http://baike.baidu.com/view/707359.htm\">度量</a>指标构成的多维数组则是<span style=\"font-family: &#39;Times New Roman&#39;;\" data-mce-style=\"font-family: &#39;Times New Roman&#39;;\">OLAP</span><span style=\"font-family: 宋体;\" data-mce-style=\"font-family: 宋体;\">分析的基础，可形式化表示为（维</span><span style=\"font-family: &#39;Times New Roman&#39;;\" data-mce-style=\"font-family: &#39;Times New Roman&#39;;\">1</span><span style=\"font-family: 宋体;\" data-mce-style=\"font-family: 宋体;\">，维</span><span style=\"font-family: &#39;Times New Roman&#39;;\" data-mce-style=\"font-family: &#39;Times New Roman&#39;;\">2</span><span style=\"font-family: 宋体;\" data-mce-style=\"font-family: 宋体;\">，</span><span style=\"font-family: &#39;Times New Roman&#39;;\" data-mce-style=\"font-family: &#39;Times New Roman&#39;;\">……</span><span style=\"font-family: 宋体;\" data-mce-style=\"font-family: 宋体;\">，维</span><span style=\"font-family: &#39;Times New Roman&#39;;\" data-mce-style=\"font-family: &#39;Times New Roman&#39;;\">n</span><span style=\"font-family: 宋体;\" data-mce-style=\"font-family: 宋体;\">，度量指标），如（地区、时间、产品、销售额）。多维分析是指对以多维形式组织起来的数据采取切片（</span><span style=\"font-family: &#39;Times New Roman&#39;;\" data-mce-style=\"font-family: &#39;Times New Roman&#39;;\">Slice</span><span style=\"font-family: 宋体;\" data-mce-style=\"font-family: 宋体;\">）、切块（</span><span style=\"font-family: &#39;Times New Roman&#39;;\" data-mce-style=\"font-family: &#39;Times New Roman&#39;;\">Dice</span><span style=\"font-family: 宋体;\" data-mce-style=\"font-family: 宋体;\">）、</span><a href=\"http://baike.baidu.com/view/92983.htm\" data-mce-href=\"http://baike.baidu.com/view/92983.htm\">钻取</a>（<span style=\"font-family: &#39;Times New Roman&#39;;\" data-mce-style=\"font-family: &#39;Times New Roman&#39;;\">Drill-down</span><span style=\"font-family: 宋体;\" data-mce-style=\"font-family: 宋体;\">和</span><span style=\"font-family: &#39;Times New Roman&#39;;\" data-mce-style=\"font-family: &#39;Times New Roman&#39;;\">Roll-up</span><span style=\"font-family: 宋体;\" data-mce-style=\"font-family: 宋体;\">）、旋转（</span><span style=\"font-family: &#39;Times New Roman&#39;;\" data-mce-style=\"font-family: &#39;Times New Roman&#39;;\">Pivot</span><span style=\"font-family: 宋体;\" data-mce-style=\"font-family: 宋体;\">）等各种分析动作，以求剖析数据，使用户能从多个角度、多侧面地观察数据库中的数据，从而深入理解包含在数据中的信息。</span></p><p class=\"NewStyle18\">商务决策使用了上述的数据挖掘软件得出的结果，而<span style=\"font-family: &#39;Times New Roman&#39;;\" data-mce-style=\"font-family: &#39;Times New Roman&#39;;\">OLAP</span><span style=\"font-family: 宋体;\" data-mce-style=\"font-family: 宋体;\">是一个更加方便的系统，更快更好的将分析的结果以图表等方式进行展示，方便决策人员进行对比、讨论。通过智能化工具的处理后，领导和改革者可以决定是否开展某项业务，或者如何进行某项业务，这也是称之为商务决策的原因。</span></p><h1>五、利益动力</h1><p class=\"NewStyle18\">商业智能的关键是从许多来自不同的企业运作系统的数据中提取出有用的数据并进行清理，以保证数据的正确性，然后经过抽取（<span style=\"font-family: &#39;Times New Roman&#39;;\" data-mce-style=\"font-family: &#39;Times New Roman&#39;;\">Extraction</span><span style=\"font-family: 宋体;\" data-mce-style=\"font-family: 宋体;\">）、转换（</span><span style=\"font-family: &#39;Times New Roman&#39;;\" data-mce-style=\"font-family: &#39;Times New Roman&#39;;\">Transformation</span><span style=\"font-family: 宋体;\" data-mce-style=\"font-family: 宋体;\">）和装载（</span><span style=\"font-family: &#39;Times New Roman&#39;;\" data-mce-style=\"font-family: &#39;Times New Roman&#39;;\">Load</span><span style=\"font-family: 宋体;\" data-mce-style=\"font-family: 宋体;\">），即</span><span style=\"font-family: &#39;Times New Roman&#39;;\" data-mce-style=\"font-family: &#39;Times New Roman&#39;;\">ETL</span><span style=\"font-family: 宋体;\" data-mce-style=\"font-family: 宋体;\">过程，合并到一个企业级的数据仓库里，从而得到</span><a href=\"http://baike.baidu.com/view/3097900.htm\" data-mce-href=\"http://baike.baidu.com/view/3097900.htm\">企业数据</a>的一个全局视图，在此基础上利用合适的查询和分析工具、数据挖掘工具、<span style=\"font-family: &#39;Times New Roman&#39;;\" data-mce-style=\"font-family: &#39;Times New Roman&#39;;\">OLAP</span><span style=\"font-family: 宋体;\" data-mce-style=\"font-family: 宋体;\">工具等对其进行分析和处理（这时信息变为辅助决策的知识），最后将知识呈现给</span><a href=\"http://baike.baidu.com/view/295554.htm\" data-mce-href=\"http://baike.baidu.com/view/295554.htm\">管理者</a>，为管理者的决策过程提供支持。</p><p class=\"NewStyle18\">商务智能=<span style=\"font-family: 宋体;\" data-mce-style=\"font-family: 宋体;\">数据</span><span style=\"font-family: &#39;Times New Roman&#39;;\" data-mce-style=\"font-family: &#39;Times New Roman&#39;;\">+</span><span style=\"font-family: 宋体;\" data-mce-style=\"font-family: 宋体;\">分析</span><span style=\"font-family: &#39;Times New Roman&#39;;\" data-mce-style=\"font-family: &#39;Times New Roman&#39;;\">+</span><span style=\"font-family: 宋体;\" data-mce-style=\"font-family: 宋体;\">决策</span><span style=\"font-family: &#39;Times New Roman&#39;;\" data-mce-style=\"font-family: &#39;Times New Roman&#39;;\">+</span><span style=\"font-family: 宋体;\" data-mce-style=\"font-family: 宋体;\">利\r\n益，等式包含了利益，是因为利益作为一种动力，促进了商务智能的发展。因为想改变，所以改变。因为想提高效率，所以改变。因为要以最小的投入挣得最大的利\r\n益，所以要改变。人类生活的改变来源人类对美好生活的追求，想把人类从繁忙的体力劳动中解放出来。计算机这一科技产物，与商务联系起来，必定创造极大的价\r\n值。</span></p><h1>六、总结</h1><p class=\"NewStyle18\">我们可以预示出，在将来的日子，商务智能必将蓬勃发展，一路高歌，这也为我们个人和国家做出了提示。商务智能并不神秘，它就如此简单，总结是：</p><p class=\"NewStyle18\">商务智能=<span style=\"font-family: 宋体;\" data-mce-style=\"font-family: 宋体;\">数据</span><span style=\"font-family: &#39;Times New Roman&#39;;\" data-mce-style=\"font-family: &#39;Times New Roman&#39;;\">+</span><span style=\"font-family: 宋体;\" data-mce-style=\"font-family: 宋体;\">分析</span><span style=\"font-family: &#39;Times New Roman&#39;;\" data-mce-style=\"font-family: &#39;Times New Roman&#39;;\">+</span><span style=\"font-family: 宋体;\" data-mce-style=\"font-family: 宋体;\">决策</span><span style=\"font-family: &#39;Times New Roman&#39;;\" data-mce-style=\"font-family: &#39;Times New Roman&#39;;\">+</span><span style=\"font-family: 宋体;\" data-mce-style=\"font-family: 宋体;\">利益</span></p><p><br/></p>',1456387301,1456387301,1,519,1,20),(37,'2015数模国赛滴滴客服被虐残，大妈被看哭','数魔','<p>今年的中国大学生数学建模在2015.9.11号正式开始，到现在9.14号8点前就结束了，可是数模全国网顶不过太多丧尸的访问所以崩了，崩了，崩了，重要的事情说三次。</p><p>好，接下来让我们看看出了什么题。</p><p>&nbsp;</p><p>因为是本科组，专科就跳过了。。。</p><p>&nbsp;</p><p>A题&nbsp; 太阳影子定位<br/>如何确定视频的拍摄地点和拍摄日期是视频数据分析的重要方面，太阳影子定位技术就是通过分析视频中物体的太阳影子变化，确定视频拍摄的地点和日期的一种方法。<br/>1.建立影子长度变化的数学模型，分析影子长度关于各个参数的变化规律，并应用你们建立的模型画出2015年10月22日北京时间9:00-15:00之间天安门广场（北纬39度54分26秒,东经116度23分29秒）3米高的直杆的太阳影子长度的变化曲线。<br/>2.根据某固定直杆在水平地面上的太阳影子顶点坐标数据，建立数学模型确定直杆所处的地点。将你们的模型应用于附件1的影子顶点坐标数据，给出若干个可能的地点。<br/>3. 根据某固定直杆在水平地面上的太阳影子顶点坐标数据，建立数学模型确定直杆所处的地点和日期。将你们的模型分别应用于附件2和附件3的影子顶点坐标数据，给出若干个可能的地点与日期。<br/>4．附件4为一根直杆在太阳下的影子变化的视频，并且已通过某种方式估计出直杆的高度为2米。请建立确定视频拍摄地点的数学模型，并应用你们的模型给出若干个可能的拍摄地点。<br/>如果拍摄日期未知，你能否根据视频确定出拍摄地点与日期</p><p>&nbsp;</p><p>B题&nbsp;&nbsp;&nbsp;“互联网+”时代的出租车资源配置<br/><br/>出租车是市民出行的重要交通工具之一，“打车难”是人们关注的一个社会热点问题。随着“互联网+”时代的到来，有多家公司依托移动互联网建立了打车软件服务平台，实现了乘客与出租车司机之间的信息互通，同时推出了多种出租车的补贴方案。<br/>请你们搜集相关数据，建立数学模型研究如下问题：<br/>&nbsp;(1)&nbsp;试建立合理的指标，并分析不同时空出租车资源的“供求匹配”程度。<br/>&nbsp;(2)&nbsp;分析各公司的出租车补贴方案是否对“缓解打车难”有帮助？<br/>&nbsp;(3)&nbsp;如果要创建一个新的打车软件服务平台，你们将设计什么样的补贴方案，并论证其合理性。</p><p>&nbsp;</p><p>A题提供一些数据，而B题木有提供数据。</p><p>&nbsp;</p><p>我们凭借着没有数据的题目才是最好的题目，一切有数据的题目都是耍流氓，因为有标准答案。</p><p>&nbsp;</p><p>B题容易创新，而且和美赛题目很相似。A题要运用物理和几何数学，有标准答案，我相信真的有在天安门量过影子或者在某个不为人知的地方。</p><p>&nbsp;</p><p>一开始影子就不管了，开始分析出租车：</p><p>1.</p><p><img src=\"/uploads/image/20160225/1456387326662356.jpg\" alt=\"\" data-mce-src=\"http://images2015.cnblogs.com/blog/672593/201509/672593-20150914160945851-195198253.jpg\"/></p><p>出租车所属垄断行业，价格被管制，数量被约束。城市出租车数量根据里程利用率，车辆满载率，万人拥有量等因素进行决策，一般由政府部门进行规划。</p><p>市场供需会达到均衡点<span style=\"font-family: Times New Roman;\" data-mce-style=\"font-family: Times New Roman;\">A0</span><span style=\"font-family: 宋体;\" data-mce-style=\"font-family: 宋体;\">，\r\n但行业价格会压至均衡价格以下，出租车数量却保持均衡数量，此时会造成无谓损失。由于出租行业运营模式为司机每月需缴纳一定金额给所属公司，其余为自己所\r\n有，价格偏低导致司机收入减少但并没有影响供给，只影响服务态度，因为供给为固定值。此时影响的是需求，价格低至均衡价格，乘客会从地铁，步行等方式转至\r\n出租车，因为价格便宜。</span></p><p>价格影响需求，需求无法满足有两种方式，一种是增加出租车数量，二是增加价格。增加数量由国家基础设\r\n施建设考虑，一般满足该城市一般需求，结合其他交通工具进行协调。二是增加价格，有些人对出租车的需求并不强烈，增加价格会淘汰一部分需求不强烈的人群，\r\n可是价格由国家管制，一般不可行。</p><p>打车难问题来源于时间和空间出租车资源的配置问题，高峰时期需求会远远大于平均需求，此时供给严重不足，感觉打车难。地理位置偏僻或者周围不存在出租车时打不到车，感觉打车难。</p><p>打\r\n车软件的出现解决了打车难一部分问题，是空间问题，能清晰知道哪些地方有车，并进行预约，减少出租车里程利用率和增加车辆满载率以及减少乘客打车时间。对\r\n于时间问题，高峰时期打车软件作用不大，并不能有效解决打车难问题，因为供给有限。在正常时间内，需求满足一定范围时打车软件才能有效解决打车难问题。</p><p>&nbsp;</p><p>2.打车难定义：微观讲小用户等待时间过长，可能是出租车少或司机不愿意接小单。宏观讲是总体出租车数量有限。</p><p>打\r\n车软件降低了出租车找不到乘客，乘客找不到出租车的问题，资源配置更合理，打车难问题降低。对于补贴问题，滴滴打车和快滴打车通过给司机和乘客补贴进行用\r\n户积累，目的在于积累用户。补贴时市场价格相当于又远远小于均衡价格，此时会吸引更多需求，造成供需更紧张。补贴带来的好处是小用户即需求不明显的客户或\r\n者偏僻的用户急需车的客户能够顺利搭车，因为供给满足但是司机拒载。</p><p>总结：补贴对该行业短时间内可以大量积累用户，解决很多人搭车需求，但是后期补贴效果不显著，偏僻地区司机仍可拒载，因为补贴赚到更多的钱。（司机局部贪婪）。补贴激励多载客，后期无效</p><p>&nbsp;</p><p>3.前期：乘客司机补贴，积累用户</p><p>中期：用户产生粘性，司机收取月服务费或者按每单收取服务费。乘客继续补贴，用司机的服务费补贴用户，使用户更依赖打车软件。</p><p>后期：司机继续收取服务费，乘客补贴结束，乘客进行加价乘车，价格歧视使更需要乘车的用户更快做到车。</p><p>&nbsp;<img src=\"/uploads/image/20160225/1456387326263901.jpg\" alt=\"\" data-mce-src=\"http://images2015.cnblogs.com/blog/672593/201509/672593-20150914161101133-364495002.jpg\"/></p><p>该题应考虑司机对于补贴和成本问题之间的选择问题。对乘客补贴主要增加在非高峰时期的需求量。</p><p>&nbsp;</p><p>其实一开始我就认为补贴到缓解打车难根本没有正面作用，只是这个手机软件促进信息流畅，协调资源配置有好处而已，补贴就是各大公司为了抢用户。</p><p>&nbsp;</p><p>然后，无用。第一问试建立合理的指标，并分析不同时空出租车资源的“供求匹配”程度。</p><p>&nbsp;</p><p>什么是供需匹配？供求和需求的关系，动个脑就知道其实就是分析资源（司机，客户）如何配置才能互相满足。</p><p>&nbsp;</p><p>可是这关补贴有毛关系？第一问应该为第二问，三问服务，于是我们就扯了补贴可以鼓励司机作弊，贪婪，接小单，装漏洞，提高小用户满足度，那些说“打车难”的大多数人是这种人，懒又不想办法，就不会坐公交，走路，自行车？</p><p>&nbsp;</p><p>接下来分析各公司的出租车补贴方案是否对“缓解打车难”有帮助？<br/>如果要创建一个新的打车软件服务平台，你们将设计什么样的补贴方案，并论证其合理性。</p><p>&nbsp;</p><p>卧槽，滴滴快的产品经理的赶脚？我已经认为补贴帮助几乎为0，还要设计补贴方案，还要合理性。</p><p>&nbsp;</p><p>好吧。</p><p>接下来开始找数据。。。。</p><p>有人找到了他的什么穹苍平台。。。</p><p>有人说：<strong>滴滴的反爬虫技术做的很好的</strong>。。。。</p><p>&nbsp;</p><p>然后我就去F12，查看NETWORK变化，发现GET了一堆JSON，恩，我用php写了一些代码，就放主要的一个吧。</p><p>&nbsp;</p><pre class=\"brush:php;gutter:true;\">&lt;?php\r\n/*\r\nhttp://v.kuaidadi.com/point?cityId=440300&amp;scope=city&amp;date=1&amp;dimension=money&amp;num=300\r\n440300南京\r\nscope:城市\r\ndata:时间\r\ndimension：&nbsp;\r\n	distribute&nbsp;出租车分布&nbsp;&nbsp;200辆&nbsp;100-200&nbsp;100辆以下\r\n	http://v.kuaidadi.com/point?cityId=440300&amp;scope=city&amp;date=7&amp;dimension=distribute&amp;num=10000\r\n&nbsp;&nbsp;&nbsp;&nbsp;satisfy&nbsp;打车难易度&nbsp;容易&nbsp;一般&nbsp;困难\r\n	http://v.kuaidadi.com/point?cityId=440300&amp;scope=city&amp;date=7&amp;dimension=satisfy&amp;num=10000\r\n&nbsp;&nbsp;&nbsp;&nbsp;demand打车需求量50&nbsp;30-50&nbsp;30以下\r\n	http://v.kuaidadi.com/point?cityId=440300&amp;scope=city&amp;date=7&amp;dimension=demand&amp;num=10000\r\n&nbsp;&nbsp;&nbsp;&nbsp;response被抢单时间&nbsp;60s&nbsp;20-60s&nbsp;20s\r\n	http://v.kuaidadi.com/point?cityId=440300&amp;scope=city&amp;date=7&amp;dimension=response&amp;num=10000\r\n&nbsp;&nbsp;&nbsp;&nbsp;money车费&nbsp;50&nbsp;20-50&nbsp;20元以下\r\n	http://v.kuaidadi.com/point?cityId=440300&amp;scope=city&amp;date=7&amp;dimension=money&amp;num=10000\r\n&nbsp;&nbsp;&nbsp;&nbsp;move出行轨迹&nbsp;出发地点&nbsp;到达地点\r\n	http://v.kuaidadi.com/point?cityId=440300&amp;scope=city&amp;date=7&amp;dimension=move&amp;num=10000\r\n	\r\n	工具\r\n	http://www.bejson.com/jsonviewernew/\r\n	\r\n	num:数量\r\n*/\r\necho&nbsp;time();\r\n\r\n?&gt;</pre><p>&nbsp;</p><pre class=\"brush:php;gutter:true;\">&lt;?php\r\n/*\r\n*http://v.kuaidadi.com/point?cityId=440100&amp;scope=city&amp;date=1&amp;dimension=distribute&amp;num=10000\r\n*广州城市出租车20150905某时刻分布情况&nbsp;\r\n*时间：9.11晚上19:15抓取\r\n*/\r\n@set_time_limit(1000);//脚本执行时间\r\nheader(&quot;Content-type:&nbsp;text/html;&nbsp;charset=utf-8&quot;);\r\ndate_default_timezone_set(&#39;prc&#39;);\r\n$day=date(&#39;y-m-d&nbsp;H:i:s&#39;,time());\r\n//$json=file_get_contents(&#39;distribute/distribute1.txt&#39;);\r\n//$json=file_get_contents(&#39;distribute/distribute2.txt&#39;);\r\n//$json=file_get_contents(&#39;distribute/distribute3.txt&#39;);\r\n//$json=file_get_contents(&#39;distribute/distribute4.txt&#39;);\r\n//$json=file_get_contents(&#39;distribute/distribute5.txt&#39;);\r\n//$json=file_get_contents(&#39;distribute/distribute6.txt&#39;);\r\n//$json=file_get_contents(&#39;distribute/distribute7.txt&#39;);\r\n$date=7;\r\n$json=file_get_contents(&quot;http://v.kuaidadi.com/point?cityId=440100&amp;scope=city&amp;date=${date}&amp;dimension=distribute&amp;num=10000&quot;);\r\n$json=&#39;[&#39;.$json.&#39;]&#39;;\r\n$str&nbsp;=&nbsp;json_decode($json);\r\n$city=$str[0]-&gt;result-&gt;cityID;\r\n$realDate=$str[0]-&gt;result-&gt;realDate;\r\n$count=count($str[0]-&gt;result-&gt;data);//外部计数\r\n$sum=0;//位置总数\r\necho&nbsp;&quot;&lt;table&nbsp;border=1&gt;&quot;;\r\necho&nbsp;&#39;&lt;tr&gt;&lt;td&gt;城市ID：&#39;.$city.&#39;&lt;/td&gt;&lt;td&gt;时间：&#39;.$realDate.&#39;&lt;/td&gt;&lt;td&gt;总计.&#39;.$count.&#39;个监测点.抓取时间&#39;.$day.&#39;&lt;/td&gt;&#39;;\r\necho&nbsp;&#39;&lt;tr&gt;&lt;td&gt;标号&lt;/td&gt;&lt;td&gt;纬度&lt;/td&gt;&lt;td&gt;经度&lt;/td&gt;&lt;td&gt;分布情况&lt;/td&gt;&lt;td&gt;所属监测点&lt;/td&gt;&lt;/tr&gt;&#39;;\r\nfor($i=0;$i&lt;$count;$i++){\r\n	$innercount=count($str[0]-&gt;result-&gt;data[$i]);\r\n	$sum=$sum+$innercount;\r\n	for($j=0;$j&lt;$innercount;$j++){\r\n	echo&nbsp;&#39;&lt;tr&gt;&lt;td&gt;&#39;.$j.&#39;&lt;/td&gt;&lt;td&gt;&#39;.$str[0]-&gt;result-&gt;data[$i][$j][1].&#39;&lt;/td&gt;&lt;td&gt;&#39;.$str[0]-&gt;result-&gt;data[$i][$j][2].&#39;&lt;/td&gt;&lt;td&gt;&#39;.$str[0]-&gt;result-&gt;data[$i][$j][3].&#39;&lt;/td&gt;&lt;td&gt;&#39;.$i.&#39;&lt;/td&gt;&lt;/tr&gt;&#39;;\r\n	}\r\n	}\r\necho&nbsp;&#39;&lt;/table&gt;&#39;;\r\necho&nbsp;&quot;$sum&quot;;\r\n?&gt;</pre><p>&nbsp;</p><p>&nbsp;</p><p>恩，然后就GET到一群数据</p><p><img src=\"/uploads/image/20160225/1456387326345163.png\" alt=\"\" data-mce-src=\"http://images2015.cnblogs.com/blog/672593/201509/672593-20150914162226523-106892755.png\"/></p><p>几万几万的数据啊，那个小激动，可是并没有什么卵用。。。。</p><p>&nbsp;</p><p>于是校群开始恶搞：</p><p><img src=\"/uploads/image/20160225/1456387326148805.jpg\" alt=\"\" data-mce-src=\"http://images2015.cnblogs.com/blog/672593/201509/672593-20150914162324586-1121952058.jpg\"/></p><p>&nbsp;</p><p>A题乱入：现在对外公布第二问的答案：综合现在网上和网下第二问确定的地点有：<br/>国\r\n内：海南、大连、黄岩岛、钓鱼岛、新疆、西藏、呼和浩特。&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; \r\n国外&nbsp;：阿尔及利亚，马里，西伯利亚，伦敦，乌兰巴托，澳大利亚。当然这是大陆上的，还有海里的：太平洋，印度洋，北冰洋，大西洋。如果你觉得还不够，我\r\n甚至还听过有出了地球的，请自行选择。建模直杆，进口国产样样有。<br/>建模直杆，我们不生产直杆，我们是直杆的定位者。<br/>建模直杆，不是所有的杆儿都叫建模杆儿。<br/>建模直杆，你的能量超乎建模杆儿。<br/>三百年前，人类发明了电线杆，一百年前，人类发明了直杆，今天，建模组委会发明了建模直杆。<br/>我要省木头百分之三十，建模直杆可以做到。<br/>好直杆，建模造。</p><p>&nbsp;</p><p><img src=\"/uploads/image/20160225/1456387326561336.jpg\" alt=\"\" data-mce-src=\"http://images2015.cnblogs.com/blog/672593/201509/672593-20150914162449976-538938646.jpg\"/></p><p><img src=\"/uploads/image/20160225/1456387327266193.gif\" alt=\"\" data-mce-src=\"http://images2015.cnblogs.com/blog/672593/201509/672593-20150914162507117-1713491286.gif\"/></p><p>&nbsp;</p><p>A题乱入</p><p>新疆的朋友们也不止卖切糕。。印度洋的水手们没事就在船上立竿测影</p><p>新疆的朋友们也不止卖切糕。。印度洋的水手们没事就在船上立竿测影</p><p>&nbsp;</p><p>所以我们憋了，所以花了一天时间后换成了A题，A题求杆子所在的地点，还有一个40度分钟的视频。。。。</p><p>&nbsp;</p><p>A题的精华为第四问</p><p>附件4为一根直杆在太阳下的影子变化的视频，并且已通过某种方式估计出直杆的高度为2米。请建立确定视频拍摄地点的数学模型，并应用你们的模型给出若干个可能的拍摄地点。<br/>如果拍摄日期未知，你能否根据视频确定出拍摄地点与日期。</p><p>&nbsp;</p><p>于是我看了看视频。。。。</p><p>发现有一个靓仔，有一个大妈穿过，还有一辆货车，重点是在9:34:39出现一只鸟，其实发现好多鸟。</p><p><img src=\"/uploads/image/20160225/1456387327240828.png\" alt=\"\" data-mce-src=\"http://images2015.cnblogs.com/blog/672593/201509/672593-20150914163301023-1264959283.png\" height=\"347\" width=\"658\"/></p><p><img src=\"/uploads/image/20160225/1456387328494756.png\" alt=\"\" data-mce-src=\"http://images2015.cnblogs.com/blog/672593/201509/672593-20150914163334883-887784921.png\" height=\"431\" width=\"541\"/></p><p><img src=\"/uploads/image/20160225/1456387328115732.png\" alt=\"\" data-mce-src=\"http://images2015.cnblogs.com/blog/672593/201509/672593-20150914163354883-1570662418.png\" height=\"349\" width=\"499\"/></p><p>&nbsp;</p><p>这个地方是什么地方呢？大家发动力量寻找吧</p><p>&nbsp;</p><p>于是有一个人提供了</p><p><img src=\"/uploads/image/20160225/1456387329394932.jpg\" alt=\"\" data-mce-src=\"http://images2015.cnblogs.com/blog/672593/201509/672593-20150914163446164-934252232.jpg\" height=\"324\" width=\"587\"/></p><p>&nbsp;</p><p>卧槽，这是哪里。</p><p>于是编程啊，找经纬度啊，印度洋大西洋</p><p>这时B题开始乱入</p><p><img src=\"/uploads/image/20160225/1456387329358602.png\" alt=\"\" data-mce-src=\"http://images2015.cnblogs.com/blog/672593/201509/672593-20150914163630086-1553078007.png\"/></p><p><img src=\"/uploads/image/20160225/1456387329292011.jpg\" alt=\"\" data-mce-src=\"http://images2015.cnblogs.com/blog/672593/201509/672593-20150914163556789-1790395460.jpg\" height=\"492\" width=\"622\"/></p><p>&nbsp;</p><p>出租车司机也被问烦了。客服小姐，大哥从来没有遇到这么体现他价值的地方，严守商业秘密，热心为学生解答，老板为你的敬业为你加工资（我想应该加，因为被好多人问，工作量变大了）。</p><p>好了，我们来看B题已知视频情况下，不知道日期和地点，能否确定日期和地点。。。</p><p>&nbsp;</p><p>卧槽，那个大妈，那个大叔，那只鸟。。。。</p><p>&nbsp;</p><p>我想确定地点一定在中国。。。。</p><p>&nbsp;</p><p>我想一定不在冬天。。。</p><p>&nbsp;</p><p>我想那里天气宜人，可以摆得下那个杆子</p><p>&nbsp;</p><p>可惜我们算到蒙古国去了，呵呵</p><p>&nbsp;</p><p><img src=\"/uploads/image/20160225/1456387329828998.jpg\" alt=\"\" data-mce-src=\"http://images2015.cnblogs.com/blog/672593/201509/672593-20150914164115008-538361539.jpg\"/></p><p>&nbsp;</p><p>杆子，我爱你呦多深，多少人看你，还拿尺子量你的高度。。。</p><p>&nbsp;</p><p><img src=\"/uploads/image/20160225/1456387330699052.jpg\" alt=\"\" data-mce-src=\"http://images2015.cnblogs.com/blog/672593/201509/672593-20150914164201554-28045651.jpg\"/></p><p>&nbsp;</p><p>还有，别喷</p><p><img src=\"/uploads/image/20160225/1456387330305592.jpg\" alt=\"\" data-mce-src=\"http://images2015.cnblogs.com/blog/672593/201509/672593-20150914164217304-1997878734.jpg\" height=\"410\" width=\"731\"/></p><p>&nbsp;</p><p>最后告诉大家，我们还是完成了。。。。。</p><p>&nbsp;</p><p>以上纯属搞笑</p><p>切勿对号入座。</p><p>&nbsp;</p><p>闲来没事，我还去埃及转了一圈，抓了一张图</p><p><img src=\"/uploads/image/20160225/1456387330511064.jpg\" alt=\"\" data-mce-src=\"http://images2015.cnblogs.com/blog/672593/201509/672593-20150914164354476-871819582.jpg\"/></p><p>&nbsp;</p><p>&nbsp;</p><p><br/></p>',1456387380,1456387380,1,182,1,18);
/*!40000 ALTER TABLE `think_paper` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `think_user`
--

DROP TABLE IF EXISTS `think_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `think_user` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(64) NOT NULL,
  `nickname` varchar(50) NOT NULL,
  `password` char(32) NOT NULL,
  `lastlogintime` int(11) unsigned DEFAULT NULL,
  `lastloginip` varchar(40) DEFAULT NULL,
  `loginnum` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `email` varchar(50) DEFAULT NULL,
  `createtime` int(11) unsigned DEFAULT NULL,
  `updatetime` int(11) unsigned DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `think_user`
--

LOCK TABLES `think_user` WRITE;
/*!40000 ALTER TABLE `think_user` DISABLE KEYS */;
INSERT INTO `think_user` VALUES (1,'hunterhug','一只尼玛','e10adc3949ba59abbe56e057f20f883e',1469616424,'183.232.90.65',34,'569929309@qq.com',1440473702,1446979134,1),(8,'hunterhug222','测试','17d097764009777f950653eb62471ef5',1446986078,'0.0.0.0',3,'569929309@qq.com',1446979182,NULL,1);
/*!40000 ALTER TABLE `think_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-07-29 12:56:28
