/*
Navicat MySQL Data Transfer

Source Server         : MySQL
Source Server Version : 50709
Source Host           : localhost:3306
Source Database       : hahu

Target Server Type    : MYSQL
Target Server Version : 50709
File Encoding         : 65001

Date: 2017-05-07 22:49:51
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `answer`
-- ----------------------------
DROP TABLE IF EXISTS `answer`;
CREATE TABLE `answer` (
  `answer_id` int(11) NOT NULL AUTO_INCREMENT,
  `answer_content` text,
  `liked_count` int(11) NOT NULL DEFAULT '0',
  `create_time` bigint(20) NOT NULL DEFAULT '0',
  `question_id` varchar(50) NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`answer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of answer
-- ----------------------------
INSERT INTO `answer` VALUES ('1', '<p>回答1</p>', '3', '1493522121495', '1', '3');
INSERT INTO `answer` VALUES ('2', '<p>回答2</p>', '2', '1493522128825', '1', '3');
INSERT INTO `answer` VALUES ('3', '<p>回答3</p>', '0', '1493522142803', '2', '3');
INSERT INTO `answer` VALUES ('4', '<p>回答4</p>', '0', '1493522147411', '2', '3');
INSERT INTO `answer` VALUES ('5', '<p>回答5</p>', '2', '1493555276539', '1', '4');
INSERT INTO `answer` VALUES ('6', '<p><img src=\"http://od6v5lenq.bkt.clouddn.com/1484c2a1-8f6d-4603-9316-94f87217e380.jpg\" alt=\"v2-256a26769ba3c47e236371c5340c8917_r\" style=\"max-width:100%;\"><br></p><p><br></p>', '2', '1493555627945', '3', '4');
INSERT INTO `answer` VALUES ('7', '<p>回答6</p>', '0', '1493617010248', '2', '4');
INSERT INTO `answer` VALUES ('8', '<p>回答7</p>', '0', '1493620560186', '2', '3');
INSERT INTO `answer` VALUES ('9', '<p>回答8</p>', '0', '1493620568125', '2', '3');
INSERT INTO `answer` VALUES ('10', '<p>回答9</p>', '0', '1493620572354', '2', '3');
INSERT INTO `answer` VALUES ('11', '<p><img src=\"http://od6v5lenq.bkt.clouddn.com/1c3d1c87-fc48-4a89-af54-daf7429bf4df.gif\" alt=\"timg\" style=\"max-width:100%;\"><br></p><p><br></p>', '1', '1493621303315', '1', '5');
INSERT INTO `answer` VALUES ('12', '<p>dsds</p>', '1', '1493645184138', '1', '6');
INSERT INTO `answer` VALUES ('13', '<p>回答测试</p>', '0', '1493691258116', '4', '3');
INSERT INTO `answer` VALUES ('14', '<p>测试回答</p>', '0', '1493691656392', '5', '3');
INSERT INTO `answer` VALUES ('15', '<p>回答测试啊</p>', '0', '1493731706743', '4', '5');
INSERT INTO `answer` VALUES ('16', '<p>灰</p>', '0', '1493798622439', '1', '5');
INSERT INTO `answer` VALUES ('17', '<p>白</p>', '0', '1493798727753', '1', '5');
INSERT INTO `answer` VALUES ('18', '<p>嗨</p><p><br></p>', '0', '1493798746337', '1', '5');
INSERT INTO `answer` VALUES ('19', '<p>红</p><p><br></p>', '0', '1493798762705', '1', '5');
INSERT INTO `answer` VALUES ('20', '<p>率</p>', '0', '1493798870937', '1', '5');
INSERT INTO `answer` VALUES ('21', '<p>gdfs ds&nbsp;</p>', '0', '1494033521207', '1', '5');
INSERT INTO `answer` VALUES ('22', '<p>gdfs ds&nbsp;</p>', '0', '1494033530792', '1', '5');
INSERT INTO `answer` VALUES ('23', '<p>ml;ml;</p>', '0', '1494059427137', '37', '5');
INSERT INTO `answer` VALUES ('24', '<p>ml;ml;lkn&nbsp;</p>', '0', '1494059543048', '37', '5');
INSERT INTO `answer` VALUES ('25', '<p>ds</p>', '0', '1494144947731', '1', '5');
INSERT INTO `answer` VALUES ('26', '<p>zx</p>', '0', '1494144964398', '1', '5');
INSERT INTO `answer` VALUES ('27', '<p>zzz</p>', '0', '1494145044271', '1', '5');

-- ----------------------------
-- Table structure for `answer_comment`
-- ----------------------------
DROP TABLE IF EXISTS `answer_comment`;
CREATE TABLE `answer_comment` (
  `answer_comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `answer_comment_content` text,
  `liked_count` int(11) NOT NULL DEFAULT '0',
  `create_time` bigint(20) NOT NULL DEFAULT '0',
  `at_user_id` int(11) DEFAULT NULL,
  `at_user_name` varchar(100) DEFAULT NULL,
  `answer_id` varchar(50) NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`answer_comment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of answer_comment
-- ----------------------------
INSERT INTO `answer_comment` VALUES ('1', 'sdfds', '0', '1494033512432', null, null, '2', '5');
INSERT INTO `answer_comment` VALUES ('2', 'non', '0', '1494060723764', '5', '张三', '2', '5');

-- ----------------------------
-- Table structure for `collection`
-- ----------------------------
DROP TABLE IF EXISTS `collection`;
CREATE TABLE `collection` (
  `collection_id` int(11) NOT NULL AUTO_INCREMENT,
  `collection_name` varchar(100) NOT NULL DEFAULT '',
  `create_time` bigint(20) NOT NULL DEFAULT '0',
  `update_time` bigint(20) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL,
  `followed_count` int(11) DEFAULT '0',
  PRIMARY KEY (`collection_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of collection
-- ----------------------------
INSERT INTO `collection` VALUES ('1', '笔记', '1493375258619', '1493375258619', '4', '0');
INSERT INTO `collection` VALUES ('2', '收藏夹1', '1493434965693', '1493434965693', '3', '0');
INSERT INTO `collection` VALUES ('3', '收藏夹2', '1493437777932', '1493437777932', '3', '0');
INSERT INTO `collection` VALUES ('4', '张三的收藏夹', '1493690361735', '1493690361735', '5', '0');
INSERT INTO `collection` VALUES ('5', '张三的收藏夹2', '1493690373713', '1493690373713', '5', '0');

-- ----------------------------
-- Table structure for `message`
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `message_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) DEFAULT NULL,
  `second_type` int(11) DEFAULT NULL,
  `message_date` varchar(50) DEFAULT NULL,
  `message_time` bigint(20) DEFAULT NULL,
  `from_user_id` int(11) DEFAULT NULL,
  `from_user_name` varchar(50) DEFAULT NULL,
  `question_id` int(11) DEFAULT NULL,
  `question_title` varchar(255) DEFAULT NULL,
  `answer_id` int(11) DEFAULT NULL,
  `comment_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`message_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of message
-- ----------------------------
INSERT INTO `message` VALUES ('1', '1', '1', '2017-05-01', '1493641882710', '6', '李四', null, null, null, null, '4');
INSERT INTO `message` VALUES ('3', '2', '1', '2017-05-01', '1493643671005', '6', '李四', '1', 'Spring，Django，Rails，Express这些框架技术的出现都是为了解决什么问题，现在这些框架都应用在哪些方面？', '11', null, '5');
INSERT INTO `message` VALUES ('4', '3', '1', '2017-05-01', '1493644376398', '6', '李四', '1', 'Spring，Django，Rails，Express这些框架技术的出现都是为了解决什么问题，现在这些框架都应用在哪些方面？', '1', '2', '3');
INSERT INTO `message` VALUES ('5', '4', '1', '2017-05-01', '1493645184174', '6', '李四', '1', 'Spring，Django，Rails，Express这些框架技术的出现都是为了解决什么问题，现在这些框架都应用在哪些方面？', '12', null, '6');
INSERT INTO `message` VALUES ('6', '2', '1', '2017-05-02', '1493691192097', '3', 'fanchao', '1', 'Spring，Django，Rails，Express这些框架技术的出现都是为了解决什么问题，现在这些框架都应用在哪些方面？', '12', null, '6');
INSERT INTO `message` VALUES ('7', '3', '1', '2017-05-02', '1493691199548', '3', 'fanchao', '1', 'Spring，Django，Rails，Express这些框架技术的出现都是为了解决什么问题，现在这些框架都应用在哪些方面？', '12', '3', '6');
INSERT INTO `message` VALUES ('8', '4', '1', '2017-05-02', '1493691258161', '3', 'fanchao', '4', 'Java程序员，最常用的20％技术有哪些？', '13', null, '3');
INSERT INTO `message` VALUES ('9', '4', '1', '2017-05-02', '1493691656481', '3', 'fanchao', '5', '测试问题', '14', null, '3');
INSERT INTO `message` VALUES ('10', '4', '1', '2017-05-02', '1493731706962', '5', '张三', '4', 'Java程序员，最常用的20％技术有哪些？', '15', null, '5');
INSERT INTO `message` VALUES ('11', '4', '1', '2017-05-03', '1493798622663', '5', '张三', '1', 'Spring，Django，Rails，Express这些框架技术的出现都是为了解决什么问题，现在这些框架都应用在哪些方面？', '16', null, '3');
INSERT INTO `message` VALUES ('12', '4', '1', '2017-05-03', '1493798727798', '5', '张三', '1', 'Spring，Django，Rails，Express这些框架技术的出现都是为了解决什么问题，现在这些框架都应用在哪些方面？', '17', null, '3');
INSERT INTO `message` VALUES ('13', '4', '1', '2017-05-03', '1493798746350', '5', '张三', '1', 'Spring，Django，Rails，Express这些框架技术的出现都是为了解决什么问题，现在这些框架都应用在哪些方面？', '18', null, '3');
INSERT INTO `message` VALUES ('14', '4', '1', '2017-05-03', '1493798762756', '5', '张三', '1', 'Spring，Django，Rails，Express这些框架技术的出现都是为了解决什么问题，现在这些框架都应用在哪些方面？', '19', null, '3');
INSERT INTO `message` VALUES ('15', '4', '1', '2017-05-03', '1493798870961', '5', '张三', '1', 'Spring，Django，Rails，Express这些框架技术的出现都是为了解决什么问题，现在这些框架都应用在哪些方面？', '20', null, '3');
INSERT INTO `message` VALUES ('16', '3', '1', '2017-05-03', '1493799014622', '5', '张三', '1', 'Spring，Django，Rails，Express这些框架技术的出现都是为了解决什么问题，现在这些框架都应用在哪些方面？', '1', '4', '3');
INSERT INTO `message` VALUES ('17', '2', '1', '2017-05-06', '1494033497565', '5', '张三', '1', 'Spring，Django，Rails，Express这些框架技术的出现都是为了解决什么问题，现在这些框架都应用在哪些方面？', '5', null, '4');
INSERT INTO `message` VALUES ('18', '3', '1', '2017-05-06', '1494033512515', '5', '张三', '1', 'Spring，Django，Rails，Express这些框架技术的出现都是为了解决什么问题，现在这些框架都应用在哪些方面？', '2', '1', '3');
INSERT INTO `message` VALUES ('19', '4', '1', '2017-05-06', '1494033521273', '5', '张三', '1', 'Spring，Django，Rails，Express这些框架技术的出现都是为了解决什么问题，现在这些框架都应用在哪些方面？', '21', null, '3');
INSERT INTO `message` VALUES ('20', '4', '1', '2017-05-06', '1494033530817', '5', '张三', '1', 'Spring，Django，Rails，Express这些框架技术的出现都是为了解决什么问题，现在这些框架都应用在哪些方面？', '22', null, '3');
INSERT INTO `message` VALUES ('21', '4', '1', '2017-05-06', '1494059427168', '5', '张三', '37', 'koko', '23', null, '5');
INSERT INTO `message` VALUES ('22', '4', '1', '2017-05-06', '1494059543098', '5', '张三', '37', 'koko', '24', null, '5');
INSERT INTO `message` VALUES ('23', '4', '1', '2017-05-07', '1494144947975', '5', '张三', '1', 'Spring，Django，Rails，Express这些框架技术的出现都是为了解决什么问题，现在这些框架都应用在哪些方面？', '25', null, '3');
INSERT INTO `message` VALUES ('24', '4', '1', '2017-05-07', '1494144964421', '5', '张三', '1', 'Spring，Django，Rails，Express这些框架技术的出现都是为了解决什么问题，现在这些框架都应用在哪些方面？', '26', null, '3');
INSERT INTO `message` VALUES ('25', '4', '1', '2017-05-07', '1494145044288', '5', '张三', '1', 'Spring，Django，Rails，Express这些框架技术的出现都是为了解决什么问题，现在这些框架都应用在哪些方面？', '27', null, '3');

-- ----------------------------
-- Table structure for `question`
-- ----------------------------
DROP TABLE IF EXISTS `question`;
CREATE TABLE `question` (
  `question_id` int(11) NOT NULL AUTO_INCREMENT,
  `question_title` varchar(255) NOT NULL DEFAULT '',
  `question_content` text,
  `topic_kv_list` varchar(200) NOT NULL DEFAULT '',
  `followed_count` int(11) NOT NULL DEFAULT '0',
  `scaned_count` int(11) NOT NULL DEFAULT '0',
  `create_time` bigint(20) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`question_id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of question
-- ----------------------------
INSERT INTO `question` VALUES ('1', 'Spring，Django，Rails，Express这些框架技术的出现都是为了解决什么问题，现在这些框架都应用在哪些方面？', '<p>问题1</p>', '{180:\"算法\",40:\"java\"}', '0', '0', '1493520121386', '3');
INSERT INTO `question` VALUES ('2', '零基础应该选择学习 java、php、前端 还是 python？', '<p>问题2&nbsp;&nbsp;&nbsp;&nbsp;</p><p><br></p>', '{160:\"c++\",40:\"java\"}', '0', '0', '1493520177143', '3');
INSERT INTO `question` VALUES ('3', 'IT行业都有哪些职位，初学者（0基础，新人）该如何选择，才能够快速进入这个行业？', '<p>如题</p>', '{181:\"javaee\",40:\"java\"}', '0', '0', '1493555405611', '4');
INSERT INTO `question` VALUES ('4', 'Java程序员，最常用的20％技术有哪些？', '<p>如题</p>', '{40:\"java\"}', '0', '0', '1493688528417', '5');
INSERT INTO `question` VALUES ('5', '测试问题', '<p>测试问题</p>', '{3:\"python\"}', '0', '0', '1493691571605', '6');
INSERT INTO `question` VALUES ('7', 'Java 的开发效率究竟比 C++ 高在哪里？', 'muyou', '{160:\"C++\",182:\"面向对象编程\",183:\"编程语言比较\",40:\"Java\"}', '0', '0', '1493871034055', '3');
INSERT INTO `question` VALUES ('8', '在北京做Java开发如何月薪达到两万，需要技术水平达到什么程度？', 'muyou', '{176:\"编程\",184:\"程序员\",40:\"Java\",185:\"互联网工作\"}', '0', '0', '1493871034175', '3');
INSERT INTO `question` VALUES ('9', '中国现在有多少程序员？', 'muyou', '{184:\"程序员\",186:\"IT 行业\",187:\"Java 程序员\"}', '0', '0', '1493871034352', '3');
INSERT INTO `question` VALUES ('10', '如何评价招行的手机APP和招行信用卡app“掌上生活”？', 'muyou', '{96:\"Android 开发\",188:\"社交网络\",189:\"手机\",190:\"用户界面设计\",191:\"招商银行\"}', '0', '0', '1493871034411', '3');
INSERT INTO `question` VALUES ('11', '如何自学 Android 编程？', 'muyou', '{176:\"编程\",96:\"Android 开发\",192:\"学习方法\",97:\"Android\",193:\"Android 应用设计\"}', '0', '0', '1493871034498', '3');
INSERT INTO `question` VALUES ('12', '什么促使你走上独立开发者之路？', 'muyou', '{96:\"Android 开发\",194:\"调查类问题\",195:\"独立开发者\",184:\"程序员\",122:\"iOS 开发\"}', '0', '0', '1493871034594', '3');
INSERT INTO `question` VALUES ('13', '当你学会了什么之后感觉自己的编程算是入门了?', 'muyou', '{176:\"编程\",177:\"编程语言\",196:\"C（编程语言）\",197:\"Java 编程\",198:\"自学编程\"}', '0', '0', '1493871034799', '3');
INSERT INTO `question` VALUES ('14', '阿里巴巴、美团等各大互联网公司的 Java 类校招对本科生的要求是什么？', 'muyou', '{176:\"编程\",197:\"Java 编程\",199:\"互联网\",40:\"Java\",200:\"BAT（公司集合）\"}', '0', '0', '1493871034899', '3');
INSERT INTO `question` VALUES ('15', '如何用一段简单的代码讲述一个悲伤的故事？', 'muyou', '{3:\"Python\",196:\"C（编程语言）\",184:\"程序员\",40:\"Java\",173:\"Bash\"}', '0', '0', '1493871035060', '3');
INSERT INTO `question` VALUES ('16', '长沙的计算机行业怎么样？', 'muyou', '{197:\"Java 编程\",201:\"计算机\",202:\"长沙\"}', '0', '0', '1493871035111', '3');
INSERT INTO `question` VALUES ('17', '一个web项目，多个用户从不同的客户端浏览器同时访问需要考虑哪些问题？', 'muyou', '{40:\"Java\",203:\"高并发\"}', '0', '0', '1493871035153', '3');
INSERT INTO `question` VALUES ('18', '会计转行从事IT，如何在一年时间内全职学习？', 'muyou', '{176:\"编程\",40:\"Java\",201:\"计算机\",74:\".NET\",204:\"转行\"}', '0', '0', '1493871035207', '3');
INSERT INTO `question` VALUES ('19', '有哪些IT初学者（新人）成长为技术大牛的真实经历？', 'muyou', '{96:\"Android 开发\",199:\"互联网\",184:\"程序员\",186:\"IT 行业\"}', '0', '0', '1493871035274', '3');
INSERT INTO `question` VALUES ('20', 'IT行业都有哪些职位，初学者（0基础，新人）该如何选择，才能够快速进入这个行业？', 'muyou', '{33:\"JavaScript\",199:\"互联网\",40:\"Java\",205:\"产品\",31:\"CSS\"}', '0', '0', '1493871035370', '3');
INSERT INTO `question` VALUES ('21', '开发一个 Flappy Bird 需要多少行代码，多少时间？', 'muyou', '{96:\"Android 开发\",208:\"Flappy Bird\",209:\"CocosEditor\",206:\"手机游戏\",207:\"Cocos2d-x\"}', '0', '0', '1493871035436', '3');
INSERT INTO `question` VALUES ('22', 'IT 大牛是怎样炼成的？', 'muyou', '{113:\"Linux\",199:\"互联网\",184:\"程序员\",40:\"Java\",186:\"IT 行业\"}', '0', '0', '1493871035534', '3');
INSERT INTO `question` VALUES ('23', '学习 JAVA，有什么书籍推荐？学习的方法和过程是怎样的？', 'muyou', '{177:\"编程语言\",210:\"Java EE\",197:\"Java 编程\",40:\"Java\"}', '0', '0', '1493871035620', '3');
INSERT INTO `question` VALUES ('24', '码农们最常说的谎言是什么？', 'muyou', '{176:\"编程\",211:\"软件开发\",212:\"C / C++\",184:\"程序员\",40:\"Java\"}', '0', '0', '1493871035665', '3');
INSERT INTO `question` VALUES ('25', '零基础应该选择学习 java、php、前端 还是 python？', 'muyou', '{176:\"编程\",3:\"Python\",51:\"PHP\",184:\"程序员\",40:\"Java\"}', '0', '0', '1493871035705', '3');
INSERT INTO `question` VALUES ('26', '计算机专业即将毕业是否要去培训（Java ）？', 'muyou', '{213:\"电子信息工程\",40:\"Java\"}', '0', '0', '1493871035759', '3');
INSERT INTO `question` VALUES ('27', 'Java培训哪家好？', 'muyou', '{214:\"IT 培训\",215:\"教育培训机构\",40:\"Java\",187:\"Java 程序员\"}', '0', '0', '1493871035797', '3');
INSERT INTO `question` VALUES ('28', '请问一个JavaScript、java高手，node.js的一个问题？', 'muyou', '{64:\"Node.js\",40:\"Java\",216:\"Java Web\"}', '0', '0', '1493871035832', '3');
INSERT INTO `question` VALUES ('29', '程序员带孩子是怎样一种体验？', 'muyou', '{184:\"程序员\",217:\"IT 男\",186:\"IT 行业\",218:\"女程序员\",187:\"Java 程序员\"}', '0', '0', '1493871035878', '3');
INSERT INTO `question` VALUES ('30', '零基础自学 Android 并去找工作可行性大么？', 'muyou', '{176:\"编程\",96:\"Android 开发\",197:\"Java 编程\",184:\"程序员\"}', '0', '0', '1493871035929', '3');
INSERT INTO `question` VALUES ('31', '为什么程序代码被编译成机器码就不能跨平台运行？', 'muyou', '{196:\"C（编程语言）\",212:\"C / C++\",40:\"Java\",219:\"计算机科学\"}', '0', '0', '1493871035977', '3');
INSERT INTO `question` VALUES ('32', 'Spring，Django，Rails，Express这些框架技术的出现都是为了解决什么问题，现在这些框架都应用在哪些方面？', 'muyou', '{43:\"Spring\",220:\"Ruby on Rails\",221:\"Django（框架）\",222:\"设计模式\",223:\"Express（框架）\"}', '0', '0', '1493871036084', '3');
INSERT INTO `question` VALUES ('33', '请问有详细介绍threadlocal的书籍吗？或者有哪位大神能详细说明下threadlocal？', 'muyou', '{224:\"ThreadLocal\",40:\"Java\"}', '0', '0', '1493871036160', '3');
INSERT INTO `question` VALUES ('34', '由于高中没怎么学，上了大专，想做java开发，但是看见基本要求就是本科，请问我该继续吗？应该怎么做？', 'muyou', '{176:\"编程\",40:\"Java\",186:\"IT 行业\"}', '0', '0', '1493871036189', '3');
INSERT INTO `question` VALUES ('35', 'Java新手如何学习Spring、Struts、Hibernate三大框架？', 'muyou', '{197:\"Java 编程\",216:\"Java Web\",43:\"Spring\",44:\"Hibernate\",45:\"Struts\"}', '0', '0', '1493871036226', '3');
INSERT INTO `question` VALUES ('36', '家政服务app开发的发展前景如何？', 'muyou', '{96:\"Android 开发\",225:\"移动互联网\",97:\"Android\",226:\"移动开发\",122:\"iOS 开发\"}', '0', '0', '1493871036281', '3');
INSERT INTO `question` VALUES ('37', 'koko', '<p>gkg&nbsp;&nbsp;&nbsp;&nbsp;</p><p><br></p>', '{40:\"java\"}', '0', '0', '1494059413364', '5');

-- ----------------------------
-- Table structure for `question_comment`
-- ----------------------------
DROP TABLE IF EXISTS `question_comment`;
CREATE TABLE `question_comment` (
  `question_comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `question_comment_content` text,
  `liked_count` int(11) NOT NULL DEFAULT '0',
  `create_time` bigint(20) NOT NULL DEFAULT '0',
  `at_user_id` int(11) DEFAULT NULL,
  `at_user_name` varchar(100) DEFAULT NULL,
  `question_id` varchar(50) NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`question_comment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of question_comment
-- ----------------------------
INSERT INTO `question_comment` VALUES ('1', '11', '0', '1494033474466', null, null, '1', '5');
INSERT INTO `question_comment` VALUES ('2', 'dfs ', '0', '1494033479601', '5', '张三', '1', '5');
INSERT INTO `question_comment` VALUES ('3', 'nk;ln', '0', '1494059420208', null, null, '37', '5');

-- ----------------------------
-- Table structure for `question_topic`
-- ----------------------------
DROP TABLE IF EXISTS `question_topic`;
CREATE TABLE `question_topic` (
  `qt_id` int(11) NOT NULL AUTO_INCREMENT,
  `question_id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL,
  PRIMARY KEY (`qt_id`)
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of question_topic
-- ----------------------------
INSERT INTO `question_topic` VALUES ('1', '1', '40');
INSERT INTO `question_topic` VALUES ('2', '1', '180');
INSERT INTO `question_topic` VALUES ('3', '2', '40');
INSERT INTO `question_topic` VALUES ('4', '2', '160');
INSERT INTO `question_topic` VALUES ('5', '3', '40');
INSERT INTO `question_topic` VALUES ('6', '3', '181');
INSERT INTO `question_topic` VALUES ('7', '4', '40');
INSERT INTO `question_topic` VALUES ('8', '5', '3');
INSERT INTO `question_topic` VALUES ('9', '6', '40');
INSERT INTO `question_topic` VALUES ('10', '6', '182');
INSERT INTO `question_topic` VALUES ('11', '6', '160');
INSERT INTO `question_topic` VALUES ('12', '6', '183');
INSERT INTO `question_topic` VALUES ('13', '7', '40');
INSERT INTO `question_topic` VALUES ('14', '7', '182');
INSERT INTO `question_topic` VALUES ('15', '7', '160');
INSERT INTO `question_topic` VALUES ('16', '7', '183');
INSERT INTO `question_topic` VALUES ('17', '8', '184');
INSERT INTO `question_topic` VALUES ('18', '8', '176');
INSERT INTO `question_topic` VALUES ('19', '8', '40');
INSERT INTO `question_topic` VALUES ('20', '8', '185');
INSERT INTO `question_topic` VALUES ('21', '9', '184');
INSERT INTO `question_topic` VALUES ('22', '9', '186');
INSERT INTO `question_topic` VALUES ('23', '9', '187');
INSERT INTO `question_topic` VALUES ('24', '10', '188');
INSERT INTO `question_topic` VALUES ('25', '10', '189');
INSERT INTO `question_topic` VALUES ('26', '10', '96');
INSERT INTO `question_topic` VALUES ('27', '10', '190');
INSERT INTO `question_topic` VALUES ('28', '10', '191');
INSERT INTO `question_topic` VALUES ('29', '11', '176');
INSERT INTO `question_topic` VALUES ('30', '11', '96');
INSERT INTO `question_topic` VALUES ('31', '11', '192');
INSERT INTO `question_topic` VALUES ('32', '11', '97');
INSERT INTO `question_topic` VALUES ('33', '11', '193');
INSERT INTO `question_topic` VALUES ('34', '12', '184');
INSERT INTO `question_topic` VALUES ('35', '12', '194');
INSERT INTO `question_topic` VALUES ('36', '12', '122');
INSERT INTO `question_topic` VALUES ('37', '12', '195');
INSERT INTO `question_topic` VALUES ('38', '12', '96');
INSERT INTO `question_topic` VALUES ('39', '13', '177');
INSERT INTO `question_topic` VALUES ('40', '13', '176');
INSERT INTO `question_topic` VALUES ('41', '13', '196');
INSERT INTO `question_topic` VALUES ('42', '13', '197');
INSERT INTO `question_topic` VALUES ('43', '13', '198');
INSERT INTO `question_topic` VALUES ('44', '14', '199');
INSERT INTO `question_topic` VALUES ('45', '14', '176');
INSERT INTO `question_topic` VALUES ('46', '14', '40');
INSERT INTO `question_topic` VALUES ('47', '14', '197');
INSERT INTO `question_topic` VALUES ('48', '14', '200');
INSERT INTO `question_topic` VALUES ('49', '15', '184');
INSERT INTO `question_topic` VALUES ('50', '15', '3');
INSERT INTO `question_topic` VALUES ('51', '15', '40');
INSERT INTO `question_topic` VALUES ('52', '15', '196');
INSERT INTO `question_topic` VALUES ('53', '15', '173');
INSERT INTO `question_topic` VALUES ('54', '16', '201');
INSERT INTO `question_topic` VALUES ('55', '16', '202');
INSERT INTO `question_topic` VALUES ('56', '16', '197');
INSERT INTO `question_topic` VALUES ('57', '17', '40');
INSERT INTO `question_topic` VALUES ('58', '17', '203');
INSERT INTO `question_topic` VALUES ('59', '18', '176');
INSERT INTO `question_topic` VALUES ('60', '18', '201');
INSERT INTO `question_topic` VALUES ('61', '18', '204');
INSERT INTO `question_topic` VALUES ('62', '18', '40');
INSERT INTO `question_topic` VALUES ('63', '18', '74');
INSERT INTO `question_topic` VALUES ('64', '19', '199');
INSERT INTO `question_topic` VALUES ('65', '19', '184');
INSERT INTO `question_topic` VALUES ('66', '19', '96');
INSERT INTO `question_topic` VALUES ('67', '19', '186');
INSERT INTO `question_topic` VALUES ('68', '20', '199');
INSERT INTO `question_topic` VALUES ('69', '20', '31');
INSERT INTO `question_topic` VALUES ('70', '20', '205');
INSERT INTO `question_topic` VALUES ('71', '20', '33');
INSERT INTO `question_topic` VALUES ('72', '20', '40');
INSERT INTO `question_topic` VALUES ('73', '21', '206');
INSERT INTO `question_topic` VALUES ('74', '21', '96');
INSERT INTO `question_topic` VALUES ('75', '21', '207');
INSERT INTO `question_topic` VALUES ('76', '21', '208');
INSERT INTO `question_topic` VALUES ('77', '21', '209');
INSERT INTO `question_topic` VALUES ('78', '22', '199');
INSERT INTO `question_topic` VALUES ('79', '22', '184');
INSERT INTO `question_topic` VALUES ('80', '22', '113');
INSERT INTO `question_topic` VALUES ('81', '22', '40');
INSERT INTO `question_topic` VALUES ('82', '22', '186');
INSERT INTO `question_topic` VALUES ('83', '23', '177');
INSERT INTO `question_topic` VALUES ('84', '23', '40');
INSERT INTO `question_topic` VALUES ('85', '23', '197');
INSERT INTO `question_topic` VALUES ('86', '23', '210');
INSERT INTO `question_topic` VALUES ('87', '24', '184');
INSERT INTO `question_topic` VALUES ('88', '24', '211');
INSERT INTO `question_topic` VALUES ('89', '24', '176');
INSERT INTO `question_topic` VALUES ('90', '24', '40');
INSERT INTO `question_topic` VALUES ('91', '24', '212');
INSERT INTO `question_topic` VALUES ('92', '25', '184');
INSERT INTO `question_topic` VALUES ('93', '25', '3');
INSERT INTO `question_topic` VALUES ('94', '25', '51');
INSERT INTO `question_topic` VALUES ('95', '25', '176');
INSERT INTO `question_topic` VALUES ('96', '25', '40');
INSERT INTO `question_topic` VALUES ('97', '26', '40');
INSERT INTO `question_topic` VALUES ('98', '26', '213');
INSERT INTO `question_topic` VALUES ('99', '27', '40');
INSERT INTO `question_topic` VALUES ('100', '27', '214');
INSERT INTO `question_topic` VALUES ('101', '27', '187');
INSERT INTO `question_topic` VALUES ('102', '27', '215');
INSERT INTO `question_topic` VALUES ('103', '28', '40');
INSERT INTO `question_topic` VALUES ('104', '28', '64');
INSERT INTO `question_topic` VALUES ('105', '28', '216');
INSERT INTO `question_topic` VALUES ('106', '29', '184');
INSERT INTO `question_topic` VALUES ('107', '29', '217');
INSERT INTO `question_topic` VALUES ('108', '29', '186');
INSERT INTO `question_topic` VALUES ('109', '29', '218');
INSERT INTO `question_topic` VALUES ('110', '29', '187');
INSERT INTO `question_topic` VALUES ('111', '30', '184');
INSERT INTO `question_topic` VALUES ('112', '30', '176');
INSERT INTO `question_topic` VALUES ('113', '30', '96');
INSERT INTO `question_topic` VALUES ('114', '30', '197');
INSERT INTO `question_topic` VALUES ('115', '31', '40');
INSERT INTO `question_topic` VALUES ('116', '31', '196');
INSERT INTO `question_topic` VALUES ('117', '31', '219');
INSERT INTO `question_topic` VALUES ('118', '31', '212');
INSERT INTO `question_topic` VALUES ('119', '32', '220');
INSERT INTO `question_topic` VALUES ('120', '32', '221');
INSERT INTO `question_topic` VALUES ('121', '32', '43');
INSERT INTO `question_topic` VALUES ('122', '32', '222');
INSERT INTO `question_topic` VALUES ('123', '32', '223');
INSERT INTO `question_topic` VALUES ('124', '33', '40');
INSERT INTO `question_topic` VALUES ('125', '33', '224');
INSERT INTO `question_topic` VALUES ('126', '34', '176');
INSERT INTO `question_topic` VALUES ('127', '34', '40');
INSERT INTO `question_topic` VALUES ('128', '34', '186');
INSERT INTO `question_topic` VALUES ('129', '35', '45');
INSERT INTO `question_topic` VALUES ('130', '35', '197');
INSERT INTO `question_topic` VALUES ('131', '35', '43');
INSERT INTO `question_topic` VALUES ('132', '35', '44');
INSERT INTO `question_topic` VALUES ('133', '35', '216');
INSERT INTO `question_topic` VALUES ('134', '36', '225');
INSERT INTO `question_topic` VALUES ('135', '36', '122');
INSERT INTO `question_topic` VALUES ('136', '36', '96');
INSERT INTO `question_topic` VALUES ('137', '36', '97');
INSERT INTO `question_topic` VALUES ('138', '36', '226');
INSERT INTO `question_topic` VALUES ('139', '37', '40');

-- ----------------------------
-- Table structure for `topic`
-- ----------------------------
DROP TABLE IF EXISTS `topic`;
CREATE TABLE `topic` (
  `topic_id` int(11) NOT NULL AUTO_INCREMENT,
  `topic_name` varchar(30) NOT NULL DEFAULT '',
  `topic_desc` text,
  `topic_image` varchar(255) NOT NULL DEFAULT 'http://localhost:8080/hahu/image/topic3.png',
  `parent_topic_id` int(11) DEFAULT '1',
  `followed_count` int(11) DEFAULT '0',
  PRIMARY KEY (`topic_id`)
) ENGINE=InnoDB AUTO_INCREMENT=227 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of topic
-- ----------------------------
INSERT INTO `topic` VALUES ('1', '根话题', '根话题', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '0', '0');
INSERT INTO `topic` VALUES ('2', 'Python 开发', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '0', '0');
INSERT INTO `topic` VALUES ('3', 'python', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '2', '0');
INSERT INTO `topic` VALUES ('4', 'list', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '2', '0');
INSERT INTO `topic` VALUES ('5', 'django', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '2', '0');
INSERT INTO `topic` VALUES ('6', 'flask', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '2', '0');
INSERT INTO `topic` VALUES ('7', 'tornado', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '2', '0');
INSERT INTO `topic` VALUES ('8', 'web.py', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '2', '0');
INSERT INTO `topic` VALUES ('9', 'sqlalchemy', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '2', '0');
INSERT INTO `topic` VALUES ('10', 'virtualenv', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '2', '0');
INSERT INTO `topic` VALUES ('11', '搜索', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '0', '0');
INSERT INTO `topic` VALUES ('12', '搜索引擎', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '11', '0');
INSERT INTO `topic` VALUES ('13', '中文分词', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '11', '0');
INSERT INTO `topic` VALUES ('14', '全文检索', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '11', '0');
INSERT INTO `topic` VALUES ('15', 'lucene', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '11', '0');
INSERT INTO `topic` VALUES ('16', 'solr', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '11', '0');
INSERT INTO `topic` VALUES ('17', 'sphinx', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '11', '0');
INSERT INTO `topic` VALUES ('18', 'analyzer', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '11', '0');
INSERT INTO `topic` VALUES ('19', 'elasticsearch', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '11', '0');
INSERT INTO `topic` VALUES ('20', '开放平台', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '0', '0');
INSERT INTO `topic` VALUES ('21', '新浪微博', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '20', '0');
INSERT INTO `topic` VALUES ('22', '人人网', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '20', '0');
INSERT INTO `topic` VALUES ('23', '微信', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '20', '0');
INSERT INTO `topic` VALUES ('24', '腾讯微博', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '20', '0');
INSERT INTO `topic` VALUES ('25', '百度', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '20', '0');
INSERT INTO `topic` VALUES ('26', 'facebook', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '20', '0');
INSERT INTO `topic` VALUES ('27', 'twitter', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '20', '0');
INSERT INTO `topic` VALUES ('28', '前端开发', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '0', '0');
INSERT INTO `topic` VALUES ('29', 'html', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '28', '0');
INSERT INTO `topic` VALUES ('30', 'html5', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '28', '0');
INSERT INTO `topic` VALUES ('31', 'css', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '28', '0');
INSERT INTO `topic` VALUES ('32', 'css3', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '28', '0');
INSERT INTO `topic` VALUES ('33', 'javascript', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '28', '0');
INSERT INTO `topic` VALUES ('34', 'jquery', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '28', '0');
INSERT INTO `topic` VALUES ('35', 'json', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '28', '0');
INSERT INTO `topic` VALUES ('36', 'ajax', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '28', '0');
INSERT INTO `topic` VALUES ('37', '正则表达式', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '28', '0');
INSERT INTO `topic` VALUES ('38', 'bootstrap', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '28', '0');
INSERT INTO `topic` VALUES ('39', 'JAVA 开发', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '0', '0');
INSERT INTO `topic` VALUES ('40', 'java', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '39', '1');
INSERT INTO `topic` VALUES ('41', 'java-ee', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '39', '0');
INSERT INTO `topic` VALUES ('42', 'jar', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '39', '0');
INSERT INTO `topic` VALUES ('43', 'spring', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '39', '0');
INSERT INTO `topic` VALUES ('44', 'hibernate', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '39', '0');
INSERT INTO `topic` VALUES ('45', 'struts', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '39', '0');
INSERT INTO `topic` VALUES ('46', 'tomcat', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '39', '0');
INSERT INTO `topic` VALUES ('47', 'maven', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '39', '0');
INSERT INTO `topic` VALUES ('48', 'eclipse', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '39', '0');
INSERT INTO `topic` VALUES ('49', 'intellij-idea', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '39', '0');
INSERT INTO `topic` VALUES ('50', 'PHP 开发', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '0', '0');
INSERT INTO `topic` VALUES ('51', 'php', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '50', '0');
INSERT INTO `topic` VALUES ('52', 'mysql', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '50', '0');
INSERT INTO `topic` VALUES ('53', 'apache', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '50', '0');
INSERT INTO `topic` VALUES ('54', 'nginx', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '50', '0');
INSERT INTO `topic` VALUES ('55', 'mvc', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '50', '0');
INSERT INTO `topic` VALUES ('56', 'codeigniter', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '50', '0');
INSERT INTO `topic` VALUES ('57', 'symfony', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '50', '0');
INSERT INTO `topic` VALUES ('58', 'zend-framework', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '50', '0');
INSERT INTO `topic` VALUES ('59', 'composer', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '50', '0');
INSERT INTO `topic` VALUES ('60', 'laravel', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '50', '0');
INSERT INTO `topic` VALUES ('61', 'JavaScript 开发', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '0', '0');
INSERT INTO `topic` VALUES ('62', 'javascript', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '61', '0');
INSERT INTO `topic` VALUES ('63', 'jquery', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '61', '0');
INSERT INTO `topic` VALUES ('64', 'node.js', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '61', '0');
INSERT INTO `topic` VALUES ('65', 'chrome', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '61', '0');
INSERT INTO `topic` VALUES ('66', 'firefox', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '61', '0');
INSERT INTO `topic` VALUES ('67', 'internet-explorer', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '61', '0');
INSERT INTO `topic` VALUES ('68', 'angular.js', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '61', '0');
INSERT INTO `topic` VALUES ('69', 'typescript', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '61', '0');
INSERT INTO `topic` VALUES ('70', 'ecmascript', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '61', '0');
INSERT INTO `topic` VALUES ('71', 'vue.js', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '61', '0');
INSERT INTO `topic` VALUES ('72', 'react.js', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '61', '0');
INSERT INTO `topic` VALUES ('73', '.NET 开发', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '0', '0');
INSERT INTO `topic` VALUES ('74', '.net', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '73', '0');
INSERT INTO `topic` VALUES ('75', 'c#', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '73', '0');
INSERT INTO `topic` VALUES ('76', 'asp.net', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '73', '0');
INSERT INTO `topic` VALUES ('77', 'visual-studio', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '73', '0');
INSERT INTO `topic` VALUES ('78', 'mvc', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '73', '0');
INSERT INTO `topic` VALUES ('79', 'microsoft', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '73', '0');
INSERT INTO `topic` VALUES ('80', '开发工具', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '0', '0');
INSERT INTO `topic` VALUES ('81', 'vim', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '80', '0');
INSERT INTO `topic` VALUES ('82', 'emacs', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '80', '0');
INSERT INTO `topic` VALUES ('83', 'ide', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '80', '0');
INSERT INTO `topic` VALUES ('84', 'eclipse', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '80', '0');
INSERT INTO `topic` VALUES ('85', 'xcode', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '80', '0');
INSERT INTO `topic` VALUES ('86', 'intellij-idea', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '80', '0');
INSERT INTO `topic` VALUES ('87', 'textmate', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '80', '0');
INSERT INTO `topic` VALUES ('88', 'sublime-text', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '80', '0');
INSERT INTO `topic` VALUES ('89', 'visual-studio', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '80', '0');
INSERT INTO `topic` VALUES ('90', 'git', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '80', '0');
INSERT INTO `topic` VALUES ('91', 'github', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '80', '0');
INSERT INTO `topic` VALUES ('92', 'svn', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '80', '0');
INSERT INTO `topic` VALUES ('93', 'hg', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '80', '0');
INSERT INTO `topic` VALUES ('94', 'docker', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '80', '0');
INSERT INTO `topic` VALUES ('95', 'ci', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '80', '0');
INSERT INTO `topic` VALUES ('96', 'Android 开发', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '0', '0');
INSERT INTO `topic` VALUES ('97', 'android', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '96', '0');
INSERT INTO `topic` VALUES ('98', 'java', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '96', '0');
INSERT INTO `topic` VALUES ('99', 'eclipse', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '96', '0');
INSERT INTO `topic` VALUES ('100', 'xml', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '96', '0');
INSERT INTO `topic` VALUES ('101', 'phonegap', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '96', '0');
INSERT INTO `topic` VALUES ('102', 'json', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '96', '0');
INSERT INTO `topic` VALUES ('103', 'webview', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '96', '0');
INSERT INTO `topic` VALUES ('104', 'android-studio', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '96', '0');
INSERT INTO `topic` VALUES ('105', 'Ruby 开发', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '0', '0');
INSERT INTO `topic` VALUES ('106', 'ruby', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '105', '0');
INSERT INTO `topic` VALUES ('107', 'ruby-on-rails', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '105', '0');
INSERT INTO `topic` VALUES ('108', 'rubygems', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '105', '0');
INSERT INTO `topic` VALUES ('109', 'rvm', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '105', '0');
INSERT INTO `topic` VALUES ('110', 'macosx', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '105', '0');
INSERT INTO `topic` VALUES ('111', 'bundle', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '105', '0');
INSERT INTO `topic` VALUES ('112', '服务器', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '0', '0');
INSERT INTO `topic` VALUES ('113', 'linux', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '112', '0');
INSERT INTO `topic` VALUES ('114', 'unix', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '112', '0');
INSERT INTO `topic` VALUES ('115', 'ubuntu', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '112', '0');
INSERT INTO `topic` VALUES ('116', 'windows-server', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '112', '0');
INSERT INTO `topic` VALUES ('117', 'centos', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '112', '0');
INSERT INTO `topic` VALUES ('118', '负载均衡', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '112', '0');
INSERT INTO `topic` VALUES ('119', '缓存', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '112', '0');
INSERT INTO `topic` VALUES ('120', 'apache', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '112', '0');
INSERT INTO `topic` VALUES ('121', 'nginx', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '112', '0');
INSERT INTO `topic` VALUES ('122', 'iOS 开发', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '0', '0');
INSERT INTO `topic` VALUES ('123', 'ios', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '122', '0');
INSERT INTO `topic` VALUES ('124', 'objective-c', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '122', '0');
INSERT INTO `topic` VALUES ('125', 'sqlite', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '122', '0');
INSERT INTO `topic` VALUES ('126', 'safari', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '122', '0');
INSERT INTO `topic` VALUES ('127', 'xcode', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '122', '0');
INSERT INTO `topic` VALUES ('128', 'phonegap', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '122', '0');
INSERT INTO `topic` VALUES ('129', 'cocoa', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '122', '0');
INSERT INTO `topic` VALUES ('130', 'javascript', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '122', '0');
INSERT INTO `topic` VALUES ('131', 'macos', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '122', '0');
INSERT INTO `topic` VALUES ('132', 'iphone', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '122', '0');
INSERT INTO `topic` VALUES ('133', 'ipad', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '122', '0');
INSERT INTO `topic` VALUES ('134', 'swift', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '122', '0');
INSERT INTO `topic` VALUES ('135', '数据库', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '0', '0');
INSERT INTO `topic` VALUES ('136', '数据库', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '135', '0');
INSERT INTO `topic` VALUES ('137', 'mysql', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '135', '0');
INSERT INTO `topic` VALUES ('138', 'sqlite', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '135', '0');
INSERT INTO `topic` VALUES ('139', 'oracle', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '135', '0');
INSERT INTO `topic` VALUES ('140', 'sql', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '135', '0');
INSERT INTO `topic` VALUES ('141', 'nosql', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '135', '0');
INSERT INTO `topic` VALUES ('142', 'redis', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '135', '0');
INSERT INTO `topic` VALUES ('143', 'mongodb', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '135', '0');
INSERT INTO `topic` VALUES ('144', 'memcached', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '135', '0');
INSERT INTO `topic` VALUES ('145', 'postgresql', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '135', '0');
INSERT INTO `topic` VALUES ('146', '云计算', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '0', '0');
INSERT INTO `topic` VALUES ('147', '云计算', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '146', '0');
INSERT INTO `topic` VALUES ('148', '又拍云存储', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '146', '0');
INSERT INTO `topic` VALUES ('149', '七牛云存储', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '146', '0');
INSERT INTO `topic` VALUES ('150', 'google-app-engine', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '146', '0');
INSERT INTO `topic` VALUES ('151', 'sina-app-engine', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '146', '0');
INSERT INTO `topic` VALUES ('152', 'amazon-web-services', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '146', '0');
INSERT INTO `topic` VALUES ('153', '百度云', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '146', '0');
INSERT INTO `topic` VALUES ('154', '金山云', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '146', '0');
INSERT INTO `topic` VALUES ('155', '美团云', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '146', '0');
INSERT INTO `topic` VALUES ('156', '腾讯云', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '146', '0');
INSERT INTO `topic` VALUES ('157', '开发语言', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '0', '0');
INSERT INTO `topic` VALUES ('158', 'java', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '157', '0');
INSERT INTO `topic` VALUES ('159', 'c', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '157', '0');
INSERT INTO `topic` VALUES ('160', 'c++', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '157', '0');
INSERT INTO `topic` VALUES ('161', 'php', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '157', '0');
INSERT INTO `topic` VALUES ('162', 'perl', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '157', '0');
INSERT INTO `topic` VALUES ('163', 'python', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '157', '0');
INSERT INTO `topic` VALUES ('164', 'javascript', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '157', '0');
INSERT INTO `topic` VALUES ('165', 'c#', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '157', '0');
INSERT INTO `topic` VALUES ('166', 'ruby', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '157', '0');
INSERT INTO `topic` VALUES ('167', 'objective-c', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '157', '0');
INSERT INTO `topic` VALUES ('168', 'go', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '157', '0');
INSERT INTO `topic` VALUES ('169', 'lua', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '157', '0');
INSERT INTO `topic` VALUES ('170', 'node.js', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '157', '0');
INSERT INTO `topic` VALUES ('171', 'erlang', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '157', '0');
INSERT INTO `topic` VALUES ('172', 'scala', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '157', '0');
INSERT INTO `topic` VALUES ('173', 'bash', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '157', '0');
INSERT INTO `topic` VALUES ('174', 'actionscript', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '157', '0');
INSERT INTO `topic` VALUES ('176', '编程', '暂无描述', 'http://localhost:8080/hahu/image/topic3.png', '1', '0');
INSERT INTO `topic` VALUES ('177', '编程语言', '暂无描述', 'http://localhost:8080/hahu/image/topic3.png', '1', '0');
INSERT INTO `topic` VALUES ('178', '数据结构', '暂无描述', 'http://localhost:8080/hahu/image/topic3.png', '1', '0');
INSERT INTO `topic` VALUES ('179', '', '暂无描述', 'http://localhost:8080/hahu/image/topic3.png', '1', '0');
INSERT INTO `topic` VALUES ('180', '算法', '暂无描述', 'http://localhost:8080/hahu/image/topic3.png', '1', '0');
INSERT INTO `topic` VALUES ('181', 'javaee', '暂无描述', 'http://localhost:8080/hahu/image/topic3.png', '1', '0');
INSERT INTO `topic` VALUES ('182', '面向对象编程', '暂无描述', 'http://localhost:8080/hahu/image/topic3.png', '1', '0');
INSERT INTO `topic` VALUES ('183', '编程语言比较', '暂无描述', 'http://localhost:8080/hahu/image/topic3.png', '1', '0');
INSERT INTO `topic` VALUES ('184', '程序员', '暂无描述', 'http://localhost:8080/hahu/image/topic3.png', '1', '0');
INSERT INTO `topic` VALUES ('185', '互联网工作', '暂无描述', 'http://localhost:8080/hahu/image/topic3.png', '1', '0');
INSERT INTO `topic` VALUES ('186', 'IT 行业', '暂无描述', 'http://localhost:8080/hahu/image/topic3.png', '1', '0');
INSERT INTO `topic` VALUES ('187', 'Java 程序员', '暂无描述', 'http://localhost:8080/hahu/image/topic3.png', '1', '0');
INSERT INTO `topic` VALUES ('188', '社交网络', '暂无描述', 'http://localhost:8080/hahu/image/topic3.png', '1', '0');
INSERT INTO `topic` VALUES ('189', '手机', '暂无描述', 'http://localhost:8080/hahu/image/topic3.png', '1', '0');
INSERT INTO `topic` VALUES ('190', '用户界面设计', '暂无描述', 'http://localhost:8080/hahu/image/topic3.png', '1', '0');
INSERT INTO `topic` VALUES ('191', '招商银行', '暂无描述', 'http://localhost:8080/hahu/image/topic3.png', '1', '0');
INSERT INTO `topic` VALUES ('192', '学习方法', '暂无描述', 'http://localhost:8080/hahu/image/topic3.png', '1', '0');
INSERT INTO `topic` VALUES ('193', 'Android 应用设计', '暂无描述', 'http://localhost:8080/hahu/image/topic3.png', '1', '0');
INSERT INTO `topic` VALUES ('194', '调查类问题', '暂无描述', 'http://localhost:8080/hahu/image/topic3.png', '1', '0');
INSERT INTO `topic` VALUES ('195', '独立开发者', '暂无描述', 'http://localhost:8080/hahu/image/topic3.png', '1', '0');
INSERT INTO `topic` VALUES ('196', 'C（编程语言）', '暂无描述', 'http://localhost:8080/hahu/image/topic3.png', '1', '0');
INSERT INTO `topic` VALUES ('197', 'Java 编程', '暂无描述', 'http://localhost:8080/hahu/image/topic3.png', '1', '0');
INSERT INTO `topic` VALUES ('198', '自学编程', '暂无描述', 'http://localhost:8080/hahu/image/topic3.png', '1', '0');
INSERT INTO `topic` VALUES ('199', '互联网', '暂无描述', 'http://localhost:8080/hahu/image/topic3.png', '1', '0');
INSERT INTO `topic` VALUES ('200', 'BAT（公司集合）', '暂无描述', 'http://localhost:8080/hahu/image/topic3.png', '1', '0');
INSERT INTO `topic` VALUES ('201', '计算机', '暂无描述', 'http://localhost:8080/hahu/image/topic3.png', '1', '0');
INSERT INTO `topic` VALUES ('202', '长沙', '暂无描述', 'http://localhost:8080/hahu/image/topic3.png', '1', '0');
INSERT INTO `topic` VALUES ('203', '高并发', '暂无描述', 'http://localhost:8080/hahu/image/topic3.png', '1', '0');
INSERT INTO `topic` VALUES ('204', '转行', '暂无描述', 'http://localhost:8080/hahu/image/topic3.png', '1', '0');
INSERT INTO `topic` VALUES ('205', '产品', '暂无描述', 'http://localhost:8080/hahu/image/topic3.png', '1', '0');
INSERT INTO `topic` VALUES ('206', '手机游戏', '暂无描述', 'http://localhost:8080/hahu/image/topic3.png', '1', '0');
INSERT INTO `topic` VALUES ('207', 'Cocos2d-x', '暂无描述', 'http://localhost:8080/hahu/image/topic3.png', '1', '0');
INSERT INTO `topic` VALUES ('208', 'Flappy Bird', '暂无描述', 'http://localhost:8080/hahu/image/topic3.png', '1', '0');
INSERT INTO `topic` VALUES ('209', 'CocosEditor', '暂无描述', 'http://localhost:8080/hahu/image/topic3.png', '1', '0');
INSERT INTO `topic` VALUES ('210', 'Java EE', '暂无描述', 'http://localhost:8080/hahu/image/topic3.png', '1', '0');
INSERT INTO `topic` VALUES ('211', '软件开发', '暂无描述', 'http://localhost:8080/hahu/image/topic3.png', '1', '0');
INSERT INTO `topic` VALUES ('212', 'C / C++', '暂无描述', 'http://localhost:8080/hahu/image/topic3.png', '1', '0');
INSERT INTO `topic` VALUES ('213', '电子信息工程', '暂无描述', 'http://localhost:8080/hahu/image/topic3.png', '1', '0');
INSERT INTO `topic` VALUES ('214', 'IT 培训', '暂无描述', 'http://localhost:8080/hahu/image/topic3.png', '1', '0');
INSERT INTO `topic` VALUES ('215', '教育培训机构', '暂无描述', 'http://localhost:8080/hahu/image/topic3.png', '1', '0');
INSERT INTO `topic` VALUES ('216', 'Java Web', '暂无描述', 'http://localhost:8080/hahu/image/topic3.png', '1', '0');
INSERT INTO `topic` VALUES ('217', 'IT 男', '暂无描述', 'http://localhost:8080/hahu/image/topic3.png', '1', '0');
INSERT INTO `topic` VALUES ('218', '女程序员', '暂无描述', 'http://localhost:8080/hahu/image/topic3.png', '1', '0');
INSERT INTO `topic` VALUES ('219', '计算机科学', '暂无描述', 'http://localhost:8080/hahu/image/topic3.png', '1', '0');
INSERT INTO `topic` VALUES ('220', 'Ruby on Rails', '暂无描述', 'http://localhost:8080/hahu/image/topic3.png', '1', '0');
INSERT INTO `topic` VALUES ('221', 'Django（框架）', '暂无描述', 'http://localhost:8080/hahu/image/topic3.png', '1', '0');
INSERT INTO `topic` VALUES ('222', '设计模式', '暂无描述', 'http://localhost:8080/hahu/image/topic3.png', '1', '0');
INSERT INTO `topic` VALUES ('223', 'Express（框架）', '暂无描述', 'http://localhost:8080/hahu/image/topic3.png', '1', '0');
INSERT INTO `topic` VALUES ('224', 'ThreadLocal', '暂无描述', 'http://localhost:8080/hahu/image/topic3.png', '1', '0');
INSERT INTO `topic` VALUES ('225', '移动互联网', '暂无描述', 'http://localhost:8080/hahu/image/topic3.png', '1', '0');
INSERT INTO `topic` VALUES ('226', '移动开发', '暂无描述', 'http://localhost:8080/hahu/image/topic3.png', '1', '0');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `activation_state` int(11) NOT NULL DEFAULT '0',
  `activation_code` varchar(50) NOT NULL,
  `join_time` bigint(20) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `avatar_url` varchar(200) DEFAULT NULL,
  `gender` int(11) DEFAULT '1',
  `simple_desc` varchar(50) DEFAULT '',
  `position` varchar(100) DEFAULT '',
  `industry` varchar(100) DEFAULT '',
  `career` varchar(100) DEFAULT '',
  `education` varchar(100) DEFAULT '',
  `full_desc` varchar(300) DEFAULT '',
  `liked_count` int(11) NOT NULL DEFAULT '0',
  `collected_count` int(11) NOT NULL DEFAULT '0',
  `follow_count` int(11) NOT NULL DEFAULT '0',
  `followed_count` int(11) NOT NULL DEFAULT '0',
  `scaned_count` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('3', '1104641801@qq.com', '96e79218965eb72c92a549dd5a330112', '1', '1493093562669bfa68c632a10423280c7966b91f78af0', '1493093562670', 'fanchao', 'http://od6v5lenq.bkt.clouddn.com/c0ff9325-daad-4f0a-82eb-b84bf762cfcb.jpg', '1', '无', '河北', 'IT', '哈哈', '河北经贸', '无', '2', '4', '0', '0', '0');
INSERT INTO `user` VALUES ('4', '1@1.com', '670b14728ad9902aecba32e22fa4f6bd', '1', '1493274758287df390066c76645d28d2c6a7f2930521d', '1493274758288', 'naive', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '啧啧啧', '河北石家庄', 'IT', '无', '河北经贸大学', '哈哈哈哈', '2', '3', '0', '0', '0');
INSERT INTO `user` VALUES ('5', 'fanchao100@sina.com', '670b14728ad9902aecba32e22fa4f6bd', '1', '14935623370866549d194ea594497905052ac3081c3ea', '1493562337087', '张三', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '1', '0', '0', '0', '0');
INSERT INTO `user` VALUES ('6', 'fanchao100@yeah.net', '670b14728ad9902aecba32e22fa4f6bd', '1', '1493563719887e49cbf5397544ee4bc6c6a380e6d623c', '1493563719887', '李四', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '无', '呃u', '无', 'u', '无', '无', '1', '0', '0', '0', '0');
INSERT INTO `user` VALUES ('7', 'fanchao100@sohu.com', '670b14728ad9902aecba32e22fa4f6bd', '1', '1493801194838cca81162ef234863b69cb97060a2cea0', '1493801194839', 'fanfan', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0');
INSERT INTO `user` VALUES ('8', 'fanchao100@hotmail.com', '670b14728ad9902aecba32e22fa4f6bd', '1', '1494033157833656097a71e404e4f97de878e8ba6ef9e', '1494033157835', 'fanchao', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0');
