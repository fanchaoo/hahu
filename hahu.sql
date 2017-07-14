/*
Navicat MySQL Data Transfer

Source Server         : aliyun
Source Server Version : 50537
Source Host           : 120.25.236.249:3306
Source Database       : hahu

Target Server Type    : MYSQL
Target Server Version : 50537
File Encoding         : 65001

Date: 2017-07-14 18:40:58
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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of answer
-- ----------------------------
INSERT INTO `answer` VALUES ('1', '<p>回答1</p>', '5', '1493522121495', '1', '3');
INSERT INTO `answer` VALUES ('2', '<p>回答2</p>', '4', '1493522128825', '1', '3');
INSERT INTO `answer` VALUES ('3', '<p>回答3</p>', '4', '1493522142803', '2', '3');
INSERT INTO `answer` VALUES ('4', '<p>回答4</p>', '2', '1493522147411', '2', '3');
INSERT INTO `answer` VALUES ('5', '<p>回答5</p>', '1', '1493555276539', '1', '4');
INSERT INTO `answer` VALUES ('6', '<p><img src=\"http://od6v5lenq.bkt.clouddn.com/1484c2a1-8f6d-4603-9316-94f87217e380.jpg\" alt=\"v2-256a26769ba3c47e236371c5340c8917_r\" style=\"max-width:100%;\"><br></p><p><br></p>', '3', '1493555627945', '3', '4');
INSERT INTO `answer` VALUES ('7', '<p>回答6</p>', '0', '1493617010248', '2', '4');
INSERT INTO `answer` VALUES ('8', '<p>回答7</p>', '0', '1493620560186', '2', '3');
INSERT INTO `answer` VALUES ('9', '<p>回答8</p>', '0', '1493620568125', '2', '3');
INSERT INTO `answer` VALUES ('10', '<p>回答9</p>', '0', '1493620572354', '2', '3');
INSERT INTO `answer` VALUES ('11', '<p><img src=\"http://od6v5lenq.bkt.clouddn.com/1c3d1c87-fc48-4a89-af54-daf7429bf4df.gif\" alt=\"timg\" style=\"max-width:100%;\"><br></p><p><br></p>', '1', '1493621303315', '1', '5');
INSERT INTO `answer` VALUES ('12', '<p>dsds</p>', '0', '1493645184138', '1', '6');
INSERT INTO `answer` VALUES ('13', '<p>学scala</p>', '1', '1494318054680', '2', '31');
INSERT INTO `answer` VALUES ('14', '<p>哇</p><p><br></p>', '1', '1494491024559', '2', '10786');
INSERT INTO `answer` VALUES ('15', '<p>asdsad</p>', '0', '1494506264036', '2', '31');
INSERT INTO `answer` VALUES ('16', '<p>666</p>', '0', '1494522474729', '2', '10796');
INSERT INTO `answer` VALUES ('17', '<p>89</p>', '1', '1495169959063', '2', '10823');
INSERT INTO `answer` VALUES ('18', '<p>用jedis呀</p>', '4', '1496224435146', '47', '3');
INSERT INTO `answer` VALUES ('19', '<pre style=\"max-width:100%;overflow-x:auto;\"><code class=\"javascript hljs\" codemark=\"1\">asfd;j\r\nasfd;jasffasdfa</code></pre><p>fsadfasdafs;;;;;</p>', '2', '1496465564370', '47', '4');
INSERT INTO `answer` VALUES ('20', '<p>1、yum安装</p><p><img src=\"http://od6v5lenq.bkt.clouddn.com/b287e10f-36d1-48e0-be78-d8db392c8b4f.png\" alt=\"\" style=\"max-width:100%;\"><br></p><p>1、创建一个工作目录</p><p><img src=\"http://od6v5lenq.bkt.clouddn.com/06799c10-3ac0-4387-9ba0-8456952763ec.png\" alt=\"\" style=\"max-width:100%;\"><br></p><p><br></p>', '1', '1496558878130', '51', '4');
INSERT INTO `answer` VALUES ('21', '<p>你说的是loginToken吗，，这个是标记用户是否登录用的。</p><p>存在cookie里，用户请求后台接口时会去redis里判断用户是否是登录状态。</p>', '2', '1498806371787', '55', '4');
INSERT INTO `answer` VALUES ('22', '<p>sdfsdfsdf</p>', '1', '1499177546480', '47', '11010');
INSERT INTO `answer` VALUES ('23', '<p>6666</p>', '1', '1499244103864', '2', '11014');
INSERT INTO `answer` VALUES ('24', '<p>111<br></p>', '0', '1499494526711', '47', '7');
INSERT INTO `answer` VALUES ('25', '<p>22</p><p><br></p>', '0', '1499494570239', '47', '7');
INSERT INTO `answer` VALUES ('26', '<p></p><pre style=\"max-width:100%;overflow-x:auto;\"><code class=\"cpp hljs\" codemark=\"1\"><span class=\"hljs-meta\">#incldue </span></code></pre><p><br></p>', '0', '1499494624586', '47', '7');
INSERT INTO `answer` VALUES ('27', '<p><img src=\"http://od6v5lenq.bkt.clouddn.com/49864693-b309-4df5-8036-e7bb8ca7c341.jpg\" alt=\"text_img\" style=\"max-width:100%;\"><br></p><p><br></p>', '1', '1499500954995', '55', '11053');
INSERT INTO `answer` VALUES ('28', '<table><tbody><tr><td><span>&nbsp;</span></td><td><span>&nbsp;</span></td><td><span>&nbsp;</span></td><td><span>&nbsp;</span></td><td><span>&nbsp;</span></td><td><span>&nbsp;</span></td><td><span>&nbsp;</span></td><td><span>&nbsp;</span></td><td><span>&nbsp;</span></td></tr><tr><td><span>&nbsp;</span></td><td><span>&nbsp;</span></td><td><span>&nbsp;</span></td><td><span>&nbsp;</span></td><td><span>&nbsp;</span></td><td><span>&nbsp;</span></td><td><span>&nbsp;</span></td><td><span>&nbsp;</span></td><td><span>&nbsp;</span></td></tr><tr><td><span>&nbsp;</span></td><td><span>&nbsp;</span></td><td><span>&nbsp;</span></td><td><span>&nbsp;</span></td><td><span>&nbsp;</span></td><td><span>&nbsp;</span></td><td><span>&nbsp;</span></td><td><span>&nbsp;</span></td><td><span>&nbsp;</span></td></tr><tr><td><span>&nbsp;</span></td><td><span>&nbsp;</span></td><td><span>&nbsp;</span></td><td><span>&nbsp;</span></td><td><span>&nbsp;</span></td><td><span>&nbsp;</span></td><td><span>&nbsp;</span></td><td><span>&nbsp;</span></td><td><span>&nbsp;</span></td></tr><tr><td><span>&nbsp;</span></td><td><span>&nbsp;</span></td><td><span>&nbsp;</span></td><td><span>&nbsp;</span></td><td><span>&nbsp;</span></td><td><span>&nbsp;</span></td><td><span>&nbsp;</span></td><td><span>&nbsp;</span></td><td><span>&nbsp;</span></td></tr><tr><td><span>&nbsp;</span></td><td><span>&nbsp;</span></td><td><span>&nbsp;</span></td><td><span>&nbsp;</span></td><td><span>&nbsp;</span></td><td><span>&nbsp;</span></td><td><span>&nbsp;</span></td><td><span>&nbsp;</span></td><td><span>&nbsp;</span></td></tr></tbody></table><p><br></p>', '1', '1499507779725', '47', '7');
INSERT INTO `answer` VALUES ('29', '<p><b>发现里面的点赞功能没用<br></b></p><p><br></p>', '3', '1499508197788', '55', '7');
INSERT INTO `answer` VALUES ('30', '<p>我是后端er...</p>', '0', '1499523834791', '62', '4');
INSERT INTO `answer` VALUES ('31', '<p><img src=\"http://img.t.sinajs.cn/t35/style/images/common/face/ext/normal/f2/wg_thumb.gif\"><br></p><p><br></p>', '0', '1499534913975', '2', '3');
INSERT INTO `answer` VALUES ('32', '<p>&lt;/html&gt;</p>', '1', '1499558778781', '2', '11080');
INSERT INTO `answer` VALUES ('33', '<p>前端不太熟~调的蛮久的..</p>', '1', '1499579163364', '65', '4');
INSERT INTO `answer` VALUES ('34', '<p>我既然提了这个问题 应该自动关注啊</p>', '0', '1499680213022', '67', '11151');
INSERT INTO `answer` VALUES ('35', '<p>买个阿里云部署下就行了～</p>', '2', '1499769177469', '73', '3');
INSERT INTO `answer` VALUES ('36', '<p><img src=\"http://img.t.sinajs.cn/t35/style/images/common/face/ext/normal/15/j_thumb.gif\"><br></p><p><br></p>', '0', '1499782594681', '70', '4');

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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of answer_comment
-- ----------------------------
INSERT INTO `answer_comment` VALUES ('1', '测试下', '0', '1493605918130', null, null, '6', '5');
INSERT INTO `answer_comment` VALUES ('2', 'jjjj', '0', '1493644376202', null, null, '1', '6');
INSERT INTO `answer_comment` VALUES ('3', '厉害了', '0', '1494319166237', null, null, '10', '31');
INSERT INTO `answer_comment` VALUES ('4', '厉害了', '0', '1494319193706', '31', 'fanfan', '10', '31');
INSERT INTO `answer_comment` VALUES ('5', '0.0.', '0', '1494494102802', null, null, '14', '31');
INSERT INTO `answer_comment` VALUES ('6', '666', '0', '1494494115474', null, null, '10', '31');
INSERT INTO `answer_comment` VALUES ('7', 'dsad', '0', '1494506267077', null, null, '15', '31');
INSERT INTO `answer_comment` VALUES ('8', 'sd', '0', '1494506270048', null, null, '14', '31');
INSERT INTO `answer_comment` VALUES ('9', '666', '0', '1494522424556', null, null, '6', '10796');
INSERT INTO `answer_comment` VALUES ('10', 'j', '0', '1494831025912', null, null, '3', '10810');
INSERT INTO `answer_comment` VALUES ('11', '666', '0', '1495715116296', null, null, '6', '10848');
INSERT INTO `answer_comment` VALUES ('12', '66666666666666666666', '0', '1496237349956', null, null, '6', '10857');
INSERT INTO `answer_comment` VALUES ('13', '666', '0', '1496735634192', null, null, '6', '10878');
INSERT INTO `answer_comment` VALUES ('14', '不能取消赞呀', '0', '1498204701176', null, null, '20', '10848');
INSERT INTO `answer_comment` VALUES ('15', '超屌的耶', '0', '1498559358093', null, null, '6', '10970');
INSERT INTO `answer_comment` VALUES ('16', 'sdff', '0', '1499177534658', null, null, '18', '11010');
INSERT INTO `answer_comment` VALUES ('17', 'sdfs', '0', '1499177542210', null, null, '18', '11010');
INSERT INTO `answer_comment` VALUES ('18', 'asdasd', '0', '1499177550958', null, null, '22', '11010');
INSERT INTO `answer_comment` VALUES ('19', '哈哈哈', '0', '1499558809765', null, null, '32', '11080');
INSERT INTO `answer_comment` VALUES ('20', '<script type=\'text/javascript\'>location.href=\'https://www.zhihu.com/\';</script>', '0', '1499653625756', null, null, '33', '8');
INSERT INTO `answer_comment` VALUES ('21', 'das', '0', '1499778723977', null, null, '35', '11189');
INSERT INTO `answer_comment` VALUES ('22', '这个阿里云要多少钱啊', '0', '1499825856436', null, null, '35', '11076');

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of collection
-- ----------------------------
INSERT INTO `collection` VALUES ('1', '笔记', '1493375258619', '1493375258619', '4', '0');
INSERT INTO `collection` VALUES ('2', '收藏夹1', '1493434965693', '1493434965693', '3', '0');
INSERT INTO `collection` VALUES ('3', '收藏夹2', '1493437777932', '1493437777932', '3', '0');
INSERT INTO `collection` VALUES ('4', 'test', '1495510706617', '1495510706617', '31', '0');

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
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of message
-- ----------------------------
INSERT INTO `message` VALUES ('1', '1', '1', '2017-05-01', '1493641882710', '6', '李四', null, null, null, null, '4');
INSERT INTO `message` VALUES ('3', '2', '1', '2017-05-01', '1493643671005', '6', '李四', '1', 'Spring，Django，Rails，Express这些框架技术的出现都是为了解决什么问题，现在这些框架都应用在哪些方面？', '11', null, '5');
INSERT INTO `message` VALUES ('4', '3', '1', '2017-05-01', '1493644376398', '6', '李四', '1', 'Spring，Django，Rails，Express这些框架技术的出现都是为了解决什么问题，现在这些框架都应用在哪些方面？', '1', '2', '3');
INSERT INTO `message` VALUES ('5', '4', '1', '2017-05-01', '1493645184174', '6', '李四', '1', 'Spring，Django，Rails，Express这些框架技术的出现都是为了解决什么问题，现在这些框架都应用在哪些方面？', '12', null, '6');
INSERT INTO `message` VALUES ('6', '1', '1', '2017-05-03', '1493797247069', '4', 'naive', null, null, null, null, '3');
INSERT INTO `message` VALUES ('7', '4', '1', '2017-05-09', '1494318054698', '31', 'fanfan', '2', '零基础应该选择学习 java、php、前端 还是 python？', '13', null, '3');
INSERT INTO `message` VALUES ('8', '2', '1', '2017-05-09', '1494319135298', '31', 'fanfan', '2', '零基础应该选择学习 java、php、前端 还是 python？', '3', null, '3');
INSERT INTO `message` VALUES ('9', '2', '1', '2017-05-09', '1494319137872', '31', 'fanfan', '2', '零基础应该选择学习 java、php、前端 还是 python？', '4', null, '3');
INSERT INTO `message` VALUES ('10', '3', '1', '2017-05-09', '1494319166256', '31', 'fanfan', '2', '零基础应该选择学习 java、php、前端 还是 python？', '10', '3', '3');
INSERT INTO `message` VALUES ('11', '1', '1', '2017-05-09', '1494319342227', '31', 'fanfan', null, null, null, null, '4');
INSERT INTO `message` VALUES ('12', '4', '1', '2017-05-11', '1494491024574', '10786', 'kevin', '2', '零基础应该选择学习 java、php、前端 还是 python？', '14', null, '3');
INSERT INTO `message` VALUES ('13', '3', '1', '2017-05-11', '1494494102835', '31', 'fanfan', '2', '零基础应该选择学习 java、php、前端 还是 python？', '14', '5', '10786');
INSERT INTO `message` VALUES ('14', '3', '1', '2017-05-11', '1494494115491', '31', 'fanfan', '2', '零基础应该选择学习 java、php、前端 还是 python？', '10', '6', '3');
INSERT INTO `message` VALUES ('15', '4', '1', '2017-05-11', '1494506264055', '31', 'fanfan', '2', '零基础应该选择学习 java、php、前端 还是 python？', '15', null, '3');
INSERT INTO `message` VALUES ('16', '3', '1', '2017-05-11', '1494506267103', '31', 'fanfan', '2', '零基础应该选择学习 java、php、前端 还是 python？', '15', '7', '31');
INSERT INTO `message` VALUES ('17', '3', '1', '2017-05-11', '1494506270069', '31', 'fanfan', '2', '零基础应该选择学习 java、php、前端 还是 python？', '14', '8', '10786');
INSERT INTO `message` VALUES ('18', '3', '1', '2017-05-12', '1494522424576', '10796', 'daxiao', '3', 'IT行业都有哪些职位，初学者（0基础，新人）该如何选择，才能够快速进入这个行业？', '6', '9', '4');
INSERT INTO `message` VALUES ('19', '4', '1', '2017-05-12', '1494522474745', '10796', 'daxiao', '2', '零基础应该选择学习 java、php、前端 还是 python？', '16', null, '3');
INSERT INTO `message` VALUES ('20', '3', '1', '2017-05-15', '1494831025925', '10810', 'xxxxxx', '2', '零基础应该选择学习 java、php、前端 还是 python？', '3', '10', '3');
INSERT INTO `message` VALUES ('21', '4', '1', '2017-05-19', '1495169959083', '10823', '1234567', '2', '零基础应该选择学习 java、php、前端 还是 python？', '17', null, '3');
INSERT INTO `message` VALUES ('22', '1', '1', '2017-05-24', '1495623653084', '10846', '101047257', null, null, null, null, '31');
INSERT INTO `message` VALUES ('23', '3', '1', '2017-05-25', '1495715116309', '10848', 'helly', '3', 'IT行业都有哪些职位，初学者（0基础，新人）该如何选择，才能够快速进入这个行业？', '6', '11', '4');
INSERT INTO `message` VALUES ('24', '2', '1', '2017-05-31', '1496223709471', '3', 'fanchao', '2', '零基础应该选择学习 java、php、前端 还是 python？', '17', null, '10823');
INSERT INTO `message` VALUES ('25', '4', '1', '2017-05-31', '1496224435162', '3', 'fanchao', '47', 'java怎么中怎么调用redis呢？', '18', null, '10828');
INSERT INTO `message` VALUES ('26', '3', '1', '2017-05-31', '1496237349981', '10857', 'zjy', '3', 'IT行业都有哪些职位，初学者（0基础，新人）该如何选择，才能够快速进入这个行业？', '6', '12', '4');
INSERT INTO `message` VALUES ('27', '4', '1', '2017-06-03', '1496465564384', '4', 'naive', '47', 'java怎么中怎么调用redis呢？', '19', null, '10828');
INSERT INTO `message` VALUES ('28', '4', '1', '2017-06-04', '1496558878153', '4', 'naive', '51', 'centos6安装vsftps', '20', null, '4');
INSERT INTO `message` VALUES ('29', '3', '1', '2017-06-06', '1496735634206', '10878', '1', '3', 'IT行业都有哪些职位，初学者（0基础，新人）该如何选择，才能够快速进入这个行业？', '6', '13', '4');
INSERT INTO `message` VALUES ('30', '2', '1', '2017-06-12', '1497232725734', '10892', 'aaa', '1', 'Spring，Django，Rails，Express这些框架技术的出现都是为了解决什么问题，现在这些框架都应用在哪些方面？', '1', null, '3');
INSERT INTO `message` VALUES ('31', '2', '1', '2017-06-12', '1497232727178', '10892', 'aaa', '1', 'Spring，Django，Rails，Express这些框架技术的出现都是为了解决什么问题，现在这些框架都应用在哪些方面？', '2', null, '3');
INSERT INTO `message` VALUES ('32', '2', '1', '2017-06-12', '1497232728110', '10892', 'aaa', '3', 'IT行业都有哪些职位，初学者（0基础，新人）该如何选择，才能够快速进入这个行业？', '6', null, '4');
INSERT INTO `message` VALUES ('33', '2', '1', '2017-06-16', '1497599933313', '10906', 'arik·', '2', '零基础应该选择学习 java、php、前端 还是 python？', '13', null, '31');
INSERT INTO `message` VALUES ('34', '2', '1', '2017-06-16', '1497599937509', '10906', 'arik·', '2', '零基础应该选择学习 java、php、前端 还是 python？', '14', null, '10786');
INSERT INTO `message` VALUES ('35', '2', '1', '2017-06-23', '1498204679838', '10848', 'helly', '51', 'centos6安装vsftps', '20', null, '4');
INSERT INTO `message` VALUES ('36', '3', '1', '2017-06-23', '1498204701195', '10848', 'helly', '51', 'centos6安装vsftps', '20', '14', '4');
INSERT INTO `message` VALUES ('37', '3', '1', '2017-06-27', '1498559358110', '10970', 'saijin', '3', 'IT行业都有哪些职位，初学者（0基础，新人）该如何选择，才能够快速进入这个行业？', '6', '15', '4');
INSERT INTO `message` VALUES ('38', '4', '1', '2017-06-30', '1498806371804', '4', 'naive', '55', '不知道在这会不会有人看到。。。。。。。', '21', null, '10978');
INSERT INTO `message` VALUES ('39', '2', '1', '2017-07-01', '1498911884244', '10995', 'datacamp', '47', 'java怎么中怎么调用redis呢？', '18', null, '3');
INSERT INTO `message` VALUES ('40', '3', '1', '2017-07-04', '1499177534674', '11010', 'zhongyis', '47', 'java怎么中怎么调用redis呢？', '18', '16', '3');
INSERT INTO `message` VALUES ('41', '3', '1', '2017-07-04', '1499177542226', '11010', 'zhongyis', '47', 'java怎么中怎么调用redis呢？', '18', '17', '3');
INSERT INTO `message` VALUES ('42', '4', '1', '2017-07-04', '1499177546497', '11010', 'zhongyis', '47', 'java怎么中怎么调用redis呢？', '22', null, '10828');
INSERT INTO `message` VALUES ('43', '3', '1', '2017-07-04', '1499177550971', '11010', 'zhongyis', '47', 'java怎么中怎么调用redis呢？', '22', '18', '11010');
INSERT INTO `message` VALUES ('44', '4', '1', '2017-07-05', '1499244103881', '11014', 'ls', '2', '零基础应该选择学习 java、php、前端 还是 python？', '23', null, '3');
INSERT INTO `message` VALUES ('45', '2', '1', '2017-07-08', '1499488381582', '11031', 'Jayzyyzyy', '55', '不知道在这会不会有人看到。。。。。。。', '21', null, '4');
INSERT INTO `message` VALUES ('46', '1', '1', '2017-07-08', '1499491793469', '11027', 'aa', null, null, null, null, '11033');
INSERT INTO `message` VALUES ('47', '2', '1', '2017-07-08', '1499494482688', '7', 'ceshi', '2', '零基础应该选择学习 java、php、前端 还是 python？', '3', null, '3');
INSERT INTO `message` VALUES ('48', '4', '1', '2017-07-08', '1499494526724', '7', 'ceshi', '47', 'java怎么中怎么调用redis呢？', '24', null, '10828');
INSERT INTO `message` VALUES ('49', '4', '1', '2017-07-08', '1499494570252', '7', 'ceshi', '47', 'java怎么中怎么调用redis呢？', '25', null, '10828');
INSERT INTO `message` VALUES ('50', '4', '1', '2017-07-08', '1499494624604', '7', 'ceshi', '47', 'java怎么中怎么调用redis呢？', '26', null, '10828');
INSERT INTO `message` VALUES ('51', '2', '1', '2017-07-08', '1499494845631', '11043', 'huolang', '2', '零基础应该选择学习 java、php、前端 还是 python？', '4', null, '3');
INSERT INTO `message` VALUES ('52', '2', '1', '2017-07-08', '1499494850118', '11043', 'huolang', '2', '零基础应该选择学习 java、php、前端 还是 python？', '3', null, '3');
INSERT INTO `message` VALUES ('53', '4', '1', '2017-07-08', '1499500955014', '11053', '和', '55', '不知道在这会不会有人看到。。。。。。。', '27', null, '10978');
INSERT INTO `message` VALUES ('54', '2', '1', '2017-07-08', '1499506656063', '4', 'naive', '47', 'java怎么中怎么调用redis呢？', '18', null, '3');
INSERT INTO `message` VALUES ('55', '4', '1', '2017-07-08', '1499507779739', '7', 'ceshi', '47', 'java怎么中怎么调用redis呢？', '28', null, '10828');
INSERT INTO `message` VALUES ('56', '2', '1', '2017-07-08', '1499508129685', '7', 'ceshi', '55', '不知道在这会不会有人看到。。。。。。。', '21', null, '4');
INSERT INTO `message` VALUES ('57', '2', '1', '2017-07-08', '1499508132039', '7', 'ceshi', '55', '不知道在这会不会有人看到。。。。。。。', '27', null, '11053');
INSERT INTO `message` VALUES ('58', '4', '1', '2017-07-08', '1499508197803', '7', 'ceshi', '55', '不知道在这会不会有人看到。。。。。。。', '29', null, '10978');
INSERT INTO `message` VALUES ('59', '2', '1', '2017-07-08', '1499510361562', '7', 'ceshi', '55', '不知道在这会不会有人看到。。。。。。。', '29', null, '7');
INSERT INTO `message` VALUES ('60', '4', '1', '2017-07-08', '1499523834808', '4', 'naive', '62', '好牛逼的网站啊', '30', null, '11075');
INSERT INTO `message` VALUES ('61', '4', '1', '2017-07-09', '1499534913992', '3', 'fanchao', '2', '零基础应该选择学习 java、php、前端 还是 python？', '31', null, '3');
INSERT INTO `message` VALUES ('62', '4', '1', '2017-07-09', '1499558778795', '11080', '吴', '2', '零基础应该选择学习 java、php、前端 还是 python？', '32', null, '3');
INSERT INTO `message` VALUES ('63', '3', '1', '2017-07-09', '1499558809781', '11080', '吴', '2', '零基础应该选择学习 java、php、前端 还是 python？', '32', '19', '11080');
INSERT INTO `message` VALUES ('64', '2', '1', '2017-07-09', '1499558815668', '11080', '吴', '2', '零基础应该选择学习 java、php、前端 还是 python？', '32', null, '11080');
INSERT INTO `message` VALUES ('65', '2', '1', '2017-07-09', '1499558817471', '11080', '吴', '2', '零基础应该选择学习 java、php、前端 还是 python？', '23', null, '11014');
INSERT INTO `message` VALUES ('66', '2', '1', '2017-07-09', '1499575987630', '7', 'ceshi', '47', 'java怎么中怎么调用redis呢？', '28', null, '7');
INSERT INTO `message` VALUES ('67', '4', '1', '2017-07-09', '1499579163384', '4', 'naive', '65', '棒棒棒~', '33', null, '7');
INSERT INTO `message` VALUES ('68', '2', '1', '2017-07-09', '1499595347375', '11098', 'aaa', '47', 'java怎么中怎么调用redis呢？', '18', null, '3');
INSERT INTO `message` VALUES ('69', '2', '1', '2017-07-09', '1499595349979', '11098', 'aaa', '47', 'java怎么中怎么调用redis呢？', '19', null, '4');
INSERT INTO `message` VALUES ('70', '2', '1', '2017-07-10', '1499651955073', '7', 'ceshi', '65', '棒棒棒~', '33', null, '4');
INSERT INTO `message` VALUES ('71', '3', '1', '2017-07-10', '1499653625777', '8', 'fanfan', '65', '棒棒棒~', '33', '20', '4');
INSERT INTO `message` VALUES ('72', '4', '1', '2017-07-10', '1499680213037', '11151', '12345yu', '67', '我擦', '34', null, '11151');
INSERT INTO `message` VALUES ('73', '2', '1', '2017-07-10', '1499697434290', '7', 'ceshi', '47', 'java怎么中怎么调用redis呢？', '18', null, '3');
INSERT INTO `message` VALUES ('74', '2', '1', '2017-07-10', '1499697437516', '7', 'ceshi', '47', 'java怎么中怎么调用redis呢？', '19', null, '4');
INSERT INTO `message` VALUES ('75', '2', '1', '2017-07-10', '1499697439371', '7', 'ceshi', '47', 'java怎么中怎么调用redis呢？', '22', null, '11010');
INSERT INTO `message` VALUES ('76', '2', '1', '2017-07-11', '1499769103365', '3', 'fanchao', '55', '不知道在这会不会有人看到。。。。。。。', '29', null, '7');
INSERT INTO `message` VALUES ('77', '4', '1', '2017-07-11', '1499769177487', '3', 'fanchao', '73', '这是哪门课的作业呀~好棒~ ', '35', null, '11176');
INSERT INTO `message` VALUES ('78', '3', '1', '2017-07-11', '1499778724024', '11189', 'fin0303', '73', '这是哪门课的作业呀~好棒~ ', '35', '21', '3');
INSERT INTO `message` VALUES ('79', '2', '1', '2017-07-11', '1499778730159', '11189', 'fin0303', '73', '这是哪门课的作业呀~好棒~ ', '35', null, '3');
INSERT INTO `message` VALUES ('80', '4', '1', '2017-07-11', '1499782594695', '4', 'naive', '70', '我爱你', '36', null, '7');
INSERT INTO `message` VALUES ('81', '3', '1', '2017-07-12', '1499825856456', '11076', '1', '73', '这是哪门课的作业呀~好棒~ ', '35', '22', '3');
INSERT INTO `message` VALUES ('82', '2', '1', '2017-07-12', '1499849175446', '7', 'ceshi', '1', 'Spring，Django，Rails，Express这些框架技术的出现都是为了解决什么问题，现在这些框架都应用在哪些方面？', '1', null, '3');
INSERT INTO `message` VALUES ('83', '2', '1', '2017-07-12', '1499849177590', '7', 'ceshi', '1', 'Spring，Django，Rails，Express这些框架技术的出现都是为了解决什么问题，现在这些框架都应用在哪些方面？', '2', null, '3');
INSERT INTO `message` VALUES ('84', '2', '1', '2017-07-12', '1499849178919', '7', 'ceshi', '2', '零基础应该选择学习 java、php、前端 还是 python？', '3', null, '3');
INSERT INTO `message` VALUES ('85', '2', '1', '2017-07-12', '1499870778781', '4', 'naive', '55', '不知道在这会不会有人看到。。。。。。。', '29', null, '7');
INSERT INTO `message` VALUES ('86', '2', '1', '2017-07-13', '1499919243156', '11200', 'zhangxiao', '73', '这是哪门课的作业呀~好棒~ ', '35', null, '3');

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
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of question
-- ----------------------------
INSERT INTO `question` VALUES ('1', 'Spring，Django，Rails，Express这些框架技术的出现都是为了解决什么问题，现在这些框架都应用在哪些方面？', '<p>问题1</p>', '{180:\"算法\",40:\"java\"}', '0', '0', '1493520121386', '3');
INSERT INTO `question` VALUES ('2', '零基础应该选择学习 java、php、前端 还是 python？', '<p>问题2&nbsp;&nbsp;&nbsp;&nbsp;</p><p><br></p>', '{160:\"c++\",40:\"java\"}', '0', '0', '1493520177143', '3');
INSERT INTO `question` VALUES ('3', 'IT行业都有哪些职位，初学者（0基础，新人）该如何选择，才能够快速进入这个行业？', '<p>如题</p>', '{181:\"javaee\",40:\"java\"}', '0', '0', '1493555405611', '4');
INSERT INTO `question` VALUES ('4', '呀', '<p>噢</p>', '{40:\"java\"}', '0', '0', '1493796093422', '5');
INSERT INTO `question` VALUES ('12', 'Java 的开发效率究竟比 C++ 高在哪里？', 'muyou', '{40:\"Java\",160:\"C++\",182:\"面向对象编程\",183:\"编程语言比较\"}', '0', '0', '1493871294174', '4');
INSERT INTO `question` VALUES ('13', '在北京做Java开发如何月薪达到两万，需要技术水平达到什么程度？', 'muyou', '{184:\"程序员\",185:\"互联网工作\",40:\"Java\",176:\"编程\"}', '0', '0', '1493871303329', '4');
INSERT INTO `question` VALUES ('14', '中国现在有多少程序员？', 'muyou', '{186:\"IT 行业\",187:\"Java 程序员\",184:\"程序员\"}', '0', '0', '1493871312466', '4');
INSERT INTO `question` VALUES ('15', '如何评价招行的手机APP和招行信用卡app“掌上生活”？', 'muyou', '{190:\"用户界面设计\",191:\"招商银行\",96:\"Android 开发\",188:\"社交网络\",189:\"手机\"}', '0', '0', '1493871321590', '4');
INSERT INTO `question` VALUES ('16', '如何自学 Android 编程？', 'muyou', '{96:\"Android 开发\",97:\"Android\",176:\"编程\",193:\"Android 应用设计\",192:\"学习方法\"}', '0', '0', '1493871330743', '4');
INSERT INTO `question` VALUES ('17', '什么促使你走上独立开发者之路？', 'muyou', '{184:\"程序员\",96:\"Android 开发\",122:\"iOS 开发\",195:\"独立开发者\",194:\"调查类问题\"}', '0', '0', '1493871339897', '4');
INSERT INTO `question` VALUES ('18', '当你学会了什么之后感觉自己的编程算是入门了?', 'muyou', '{197:\"Java 编程\",196:\"C（编程语言）\",176:\"编程\",198:\"自学编程\",177:\"编程语言\"}', '0', '0', '1493871349052', '4');
INSERT INTO `question` VALUES ('19', '阿里巴巴、美团等各大互联网公司的 Java 类校招对本科生的要求是什么？', 'muyou', '{200:\"BAT（公司集合）\",197:\"Java 编程\",40:\"Java\",176:\"编程\",199:\"互联网\"}', '0', '0', '1493871358259', '4');
INSERT INTO `question` VALUES ('20', '如何用一段简单的代码讲述一个悲伤的故事？', 'muyou', '{184:\"程序员\",3:\"Python\",173:\"Bash\",196:\"C（编程语言）\",40:\"Java\"}', '0', '0', '1493871358429', '4');
INSERT INTO `question` VALUES ('21', '长沙的计算机行业怎么样？', 'muyou', '{201:\"计算机\",202:\"长沙\",197:\"Java 编程\"}', '0', '0', '1493871358663', '4');
INSERT INTO `question` VALUES ('22', '一个web项目，多个用户从不同的客户端浏览器同时访问需要考虑哪些问题？', 'muyou', '{203:\"高并发\",40:\"Java\"}', '0', '0', '1493871358846', '4');
INSERT INTO `question` VALUES ('23', '会计转行从事IT，如何在一年时间内全职学习？', 'muyou', '{204:\"转行\",201:\"计算机\",40:\"Java\",176:\"编程\",74:\".NET\"}', '0', '0', '1493871359024', '4');
INSERT INTO `question` VALUES ('24', '有哪些IT初学者（新人）成长为技术大牛的真实经历？', 'muyou', '{186:\"IT 行业\",184:\"程序员\",96:\"Android 开发\",199:\"互联网\"}', '0', '0', '1493871359275', '4');
INSERT INTO `question` VALUES ('25', 'IT行业都有哪些职位，初学者（0基础，新人）该如何选择，才能够快速进入这个行业？', 'muyou', '{205:\"产品\",33:\"JavaScript\",40:\"Java\",199:\"互联网\",31:\"CSS\"}', '0', '0', '1493871359469', '4');
INSERT INTO `question` VALUES ('26', '开发一个 Flappy Bird 需要多少行代码，多少时间？', 'muyou', '{207:\"Cocos2d-x\",206:\"手机游戏\",96:\"Android 开发\",208:\"Flappy Bird\",209:\"CocosEditor\"}', '0', '0', '1493871359708', '4');
INSERT INTO `question` VALUES ('27', 'IT 大牛是怎样炼成的？', 'muyou', '{186:\"IT 行业\",184:\"程序员\",113:\"Linux\",40:\"Java\",199:\"互联网\"}', '0', '0', '1493871359905', '4');
INSERT INTO `question` VALUES ('28', '学习 JAVA，有什么书籍推荐？学习的方法和过程是怎样的？', 'muyou', '{197:\"Java 编程\",40:\"Java\",177:\"编程语言\",210:\"Java EE\"}', '0', '0', '1493871360085', '4');
INSERT INTO `question` VALUES ('29', '码农们最常说的谎言是什么？', 'muyou', '{184:\"程序员\",212:\"C / C++\",40:\"Java\",176:\"编程\",211:\"软件开发\"}', '0', '0', '1493871360282', '4');
INSERT INTO `question` VALUES ('30', '零基础应该选择学习 java、php、前端 还是 python？', 'muyou', '{51:\"PHP\",184:\"程序员\",3:\"Python\",40:\"Java\",176:\"编程\"}', '0', '0', '1493871360474', '4');
INSERT INTO `question` VALUES ('31', '计算机专业即将毕业是否要去培训（Java ）？', 'muyou', '{213:\"电子信息工程\",40:\"Java\"}', '0', '0', '1493871360678', '4');
INSERT INTO `question` VALUES ('32', 'Java培训哪家好？', 'muyou', '{187:\"Java 程序员\",214:\"IT 培训\",40:\"Java\",215:\"教育培训机构\"}', '0', '0', '1493871360843', '4');
INSERT INTO `question` VALUES ('33', '请问一个JavaScript、java高手，node.js的一个问题？', 'muyou', '{216:\"Java Web\",64:\"Node.js\",40:\"Java\"}', '0', '0', '1493871361050', '4');
INSERT INTO `question` VALUES ('34', '程序员带孩子是怎样一种体验？', 'muyou', '{186:\"IT 行业\",187:\"Java 程序员\",184:\"程序员\",217:\"IT 男\",218:\"女程序员\"}', '0', '0', '1493871361224', '4');
INSERT INTO `question` VALUES ('35', '零基础自学 Android 并去找工作可行性大么？', 'muyou', '{184:\"程序员\",96:\"Android 开发\",197:\"Java 编程\",176:\"编程\"}', '0', '0', '1493871361434', '4');
INSERT INTO `question` VALUES ('36', '为什么程序代码被编译成机器码就不能跨平台运行？', 'muyou', '{219:\"计算机科学\",212:\"C / C++\",196:\"C（编程语言）\",40:\"Java\"}', '0', '0', '1493871361605', '4');
INSERT INTO `question` VALUES ('37', 'Spring，Django，Rails，Express这些框架技术的出现都是为了解决什么问题，现在这些框架都应用在哪些方面？', 'muyou', '{220:\"Ruby on Rails\",221:\"Django（框架）\",222:\"设计模式\",223:\"Express（框架）\",43:\"Spring\"}', '0', '0', '1493871361819', '4');
INSERT INTO `question` VALUES ('38', '请问有详细介绍threadlocal的书籍吗？或者有哪位大神能详细说明下threadlocal？', 'muyou', '{40:\"Java\",224:\"ThreadLocal\"}', '0', '0', '1493871362010', '4');
INSERT INTO `question` VALUES ('39', '由于高中没怎么学，上了大专，想做java开发，但是看见基本要求就是本科，请问我该继续吗？应该怎么做？', 'muyou', '{186:\"IT 行业\",40:\"Java\",176:\"编程\"}', '0', '0', '1493871362171', '4');
INSERT INTO `question` VALUES ('40', 'Java新手如何学习Spring、Struts、Hibernate三大框架？', 'muyou', '{216:\"Java Web\",197:\"Java 编程\",43:\"Spring\",44:\"Hibernate\",45:\"Struts\"}', '0', '0', '1493871362338', '4');
INSERT INTO `question` VALUES ('41', '家政服务app开发的发展前景如何？', 'muyou', '{96:\"Android 开发\",97:\"Android\",226:\"移动开发\",122:\"iOS 开发\",225:\"移动互联网\"}', '0', '0', '1493871362553', '4');
INSERT INTO `question` VALUES ('42', '测试一下', '<p>这个问题怎么样</p>', '{227:\"问答\"}', '0', '0', '1494318212279', '31');
INSERT INTO `question` VALUES ('43', 'qwe', '<p>qweq</p>', '{228:\"qwe\"}', '0', '0', '1494501057712', '31');
INSERT INTO `question` VALUES ('44', 'aaaa', '<p>sdasd</p>', '{229:\"sadsa\"}', '0', '0', '1494506307494', '31');
INSERT INTO `question` VALUES ('45', 'niaho', '', '{230:\"[i\'[\"}', '0', '0', '1494832881249', '10805');
INSERT INTO `question` VALUES ('46', '111', '<p>22222</p>', '{231:\"222\"}', '0', '0', '1495038405362', '10820');
INSERT INTO `question` VALUES ('47', 'java怎么中怎么调用redis呢？', '<p>java 使用redis的配置和使用方法 可以给我发一些参考资料吗？？或者给我推荐一些博客？？非常感谢感谢</p><p>我的 邮箱是 1374619211@qq.com</p>', '{142:\"redis\",40:\"java\"}', '0', '0', '1495183099210', '10828');
INSERT INTO `question` VALUES ('48', 'test', '<p><img src=\"http://od6v5lenq.bkt.clouddn.com/9251b540-bd84-410c-9e9c-efacf47121fc.jpg\" alt=\"Java\" style=\"max-width:100%;\"><br></p><p><br></p>', '{40:\"java\"}', '0', '0', '1495715222731', '10848');
INSERT INTO `question` VALUES ('49', 'vkjdhfskdhfsdihisud', '<p>dsbfkdshfkjsdhfdskhdsl</p>', '{232:\"fdsfsdfds\"}', '0', '0', '1495891062877', '10851');
INSERT INTO `question` VALUES ('50', '编程', '<p>多撒大所多</p>', '{176:\"编程\"}', '0', '0', '1496217738790', '10855');
INSERT INTO `question` VALUES ('51', 'centos6安装vsftps', '', '{117:\"centos\",113:\"linux\"}', '0', '0', '1496557632931', '4');
INSERT INTO `question` VALUES ('52', 'htrhtrhjtrjtr', '<p>htrhjtrjhtr</p>', '{233:\"htrhtrhjtr\"}', '0', '0', '1496754587486', '10880');
INSERT INTO `question` VALUES ('53', '知乎慕名而来', '<p>请问这个项目的代码量是多少呢，对这个项目很感兴趣</p>', '{234:\"蛤\"}', '0', '0', '1497533564908', '10903');
INSERT INTO `question` VALUES ('54', 'aaaa', '<p>aaaa</p>', '{235:\"aaa\"}', '0', '0', '1498324622022', '10954');
INSERT INTO `question` VALUES ('55', '不知道在这会不会有人看到。。。。。。。', '<p>在用户模块里的token是干嘛的呀？一直没有理解这个，谢谢<br></p>', '{236:\"token\"}', '0', '0', '1498715827273', '10978');
INSERT INTO `question` VALUES ('56', '的淡淡的', '<p>的的的的</p>', '{237:\"的\"}', '0', '0', '1499139633678', '11002');
INSERT INTO `question` VALUES ('57', '搜索好像不太能用是吗', '<p>O(∩_∩)O</p>', '{238:\"D~~D\"}', '0', '0', '1499409950503', '11004');
INSERT INTO `question` VALUES ('58', 'hi', '<p>hihi</p>', '{239:\"t\"}', '0', '0', '1499493026483', '7');
INSERT INTO `question` VALUES ('59', '蛤呢', '<p>蛤蛤蛤</p>', '{240:\"蛤，乎\"}', '0', '0', '1499494404000', '7');
INSERT INTO `question` VALUES ('60', '我觉得做的非常棒，大家觉得如何？', '<p>我觉得做的非常棒，大家觉得如何？</p><p><br></p>', '{241:\"发送到\"}', '0', '0', '1499498784247', '11049');
INSERT INTO `question` VALUES ('61', 'php已经死了吗', '<p>rt</p>', '{3:\"python\"}', '0', '0', '1499500995774', '11054');
INSERT INTO `question` VALUES ('62', '好牛逼的网站啊', '<p>前端就是好，有作品拿出来就进阿里了</p>', '{242:\"对对对\"}', '0', '0', '1499522972644', '11075');
INSERT INTO `question` VALUES ('63', '可以的', '<p>test</p>', '{243:\"，，，\"}', '0', '0', '1499523421298', '8');
INSERT INTO `question` VALUES ('64', '123', '', '{244:\"123\"}', '0', '0', '1499526679512', '7');
INSERT INTO `question` VALUES ('65', '棒棒棒~', '<p>样式是自己改的嘛~厉害</p>', '{245:\"第三方\"}', '0', '0', '1499528049863', '7');
INSERT INTO `question` VALUES ('66', '123', '<p>123</p>', '{244:\"123\"}', '0', '0', '1499675233218', '7');
INSERT INTO `question` VALUES ('67', '我擦', '<p>牛B呀</p>', '{246:\"羡慕\"}', '0', '0', '1499680190905', '11151');
INSERT INTO `question` VALUES ('68', 'sdsd', '<p>ddd</p>', '{247:\"dd\"}', '0', '0', '1499698509558', '7');
INSERT INTO `question` VALUES ('69', '不错不错', '', '{248:\"introduction\"}', '0', '0', '1499743553681', '10949');
INSERT INTO `question` VALUES ('70', '我爱你', '<p>你爱我吗？</p>', '{249:\"爱你妹啊\"}', '0', '0', '1499746166682', '7');
INSERT INTO `question` VALUES ('71', '哈哈哈', '<p>呵呵呵呵</p>', '{40:\"java\"}', '0', '0', '1499754444950', '11027');
INSERT INTO `question` VALUES ('72', '哈哈哈', '<p>呵呵呵呵</p>', '{40:\"java\"}', '0', '0', '1499754444953', '11027');
INSERT INTO `question` VALUES ('73', '这是哪门课的作业呀~好棒~ ', '<p>怎么做上线的呢~<br></p>', '{250:\"编程；学习；\"}', '0', '0', '1499760469612', '11176');
INSERT INTO `question` VALUES ('74', '111', '<p><b>111</b><br></p><p><br></p>', '{251:\"11111\"}', '0', '0', '1499762313883', '5');
INSERT INTO `question` VALUES ('75', '哎呀，可以的', '<p>给你一个666666666666666666</p>', '{252:\"发的\"}', '0', '0', '1499772183106', '5');
INSERT INTO `question` VALUES ('76', 'dsadas', '<p>dsadas</p>', '{253:\"dddd;\"}', '0', '0', '1499778766471', '11189');
INSERT INTO `question` VALUES ('77', '厉害啊', '<p>膜</p>', '{254:\"55\"}', '0', '0', '1499832913241', '11195');
INSERT INTO `question` VALUES ('78', '为何左上角有一个分号', '<p>hahahah，是bug吗</p>', '{255:\"啦啦啦啦\"}', '0', '0', '1499832989704', '11195');
INSERT INTO `question` VALUES ('79', 'redis如何学习！！！', '', '{256:\"老哥稳\"}', '0', '0', '1499874072940', '11202');
INSERT INTO `question` VALUES ('80', '7-13到此一游', '<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ///////////////////////</p>', '{43:\"spring\",40:\"java  \"}', '0', '0', '1499928433710', '7');
INSERT INTO `question` VALUES ('81', '有一句诗不知当念不当念', '<p>0000</p>', '{257:\"人生，诗词\"}', '0', '0', '1500026321404', '5');

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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of question_comment
-- ----------------------------
INSERT INTO `question_comment` VALUES ('1', '这个。。。', '0', '1493603724671', null, null, '3', '5');
INSERT INTO `question_comment` VALUES ('2', '评论下', '0', '1493605440163', null, null, '3', '5');
INSERT INTO `question_comment` VALUES ('3', '测试下', '0', '1493605908745', null, null, '3', '5');
INSERT INTO `question_comment` VALUES ('4', '20k起步', '0', '1494317585402', null, null, '13', '10768');
INSERT INTO `question_comment` VALUES ('5', '厉害了', '0', '1494317663520', null, null, '1', '10768');
INSERT INTO `question_comment` VALUES ('6', 'qqqq', '0', '1494506294052', null, null, '28', '31');
INSERT INTO `question_comment` VALUES ('7', '\"\'\"', '0', '1494509234174', null, null, '2', '31');
INSERT INTO `question_comment` VALUES ('8', '去去去去去去去去去去去去去去 ', '0', '1495720407066', null, null, '2', '10846');
INSERT INTO `question_comment` VALUES ('9', '多对多', '0', '1496217816929', null, null, '50', '10855');
INSERT INTO `question_comment` VALUES ('10', '666', '0', '1496298361821', null, null, '2', '10859');
INSERT INTO `question_comment` VALUES ('11', '代码量不大哦，可以看github', '0', '1498056347220', null, null, '53', '4');
INSERT INTO `question_comment` VALUES ('12', '66666', '0', '1498559346837', null, null, '3', '10970');
INSERT INTO `question_comment` VALUES ('13', 'sbfcha', '0', '1498572288182', null, null, '27', '10972');
INSERT INTO `question_comment` VALUES ('14', 'zhizhangnaocan???', '0', '1498577222848', '10972', 'chuxuechao', '27', '4');
INSERT INTO `question_comment` VALUES ('15', 'sdfsdf', '0', '1499177527890', null, null, '47', '11010');
INSERT INTO `question_comment` VALUES ('16', 'sdfsdf', '0', '1499177530699', null, null, '47', '11010');
INSERT INTO `question_comment` VALUES ('17', 'dd', '0', '1499489367533', null, null, '55', '11033');
INSERT INTO `question_comment` VALUES ('18', '厉害了啊', '0', '1499494335132', null, null, '53', '7');
INSERT INTO `question_comment` VALUES ('19', '我是做后端的。。。。', '0', '1499523808603', null, null, '62', '4');
INSERT INTO `question_comment` VALUES ('20', '123', '0', '1499697420843', null, null, '47', '7');
INSERT INTO `question_comment` VALUES ('21', '通天塔', '0', '1499750557413', null, null, '63', '7');
INSERT INTO `question_comment` VALUES ('22', 'aa', '0', '1499762321712', null, null, '74', '5');
INSERT INTO `question_comment` VALUES ('23', '3333', '0', '1499762378058', null, null, '12', '5');
INSERT INTO `question_comment` VALUES ('24', '发现一个问题，最后一个文本框不填无法提交，而且还没有提示', '0', '1499772211150', null, null, '75', '5');
INSERT INTO `question_comment` VALUES ('25', 'das', '0', '1499778714349', null, null, '73', '11189');
INSERT INTO `question_comment` VALUES ('26', 'erqw', '0', '1499782634556', null, null, '70', '4');
INSERT INTO `question_comment` VALUES ('27', 'sdadasd', '0', '1499928401861', null, null, '64', '7');

-- ----------------------------
-- Table structure for `question_topic`
-- ----------------------------
DROP TABLE IF EXISTS `question_topic`;
CREATE TABLE `question_topic` (
  `qt_id` int(11) NOT NULL AUTO_INCREMENT,
  `question_id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL,
  PRIMARY KEY (`qt_id`)
) ENGINE=InnoDB AUTO_INCREMENT=208 DEFAULT CHARSET=utf8;

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
INSERT INTO `question_topic` VALUES ('8', '5', '40');
INSERT INTO `question_topic` VALUES ('9', '5', '182');
INSERT INTO `question_topic` VALUES ('10', '5', '160');
INSERT INTO `question_topic` VALUES ('11', '5', '183');
INSERT INTO `question_topic` VALUES ('12', '6', '184');
INSERT INTO `question_topic` VALUES ('13', '6', '176');
INSERT INTO `question_topic` VALUES ('14', '6', '40');
INSERT INTO `question_topic` VALUES ('15', '6', '185');
INSERT INTO `question_topic` VALUES ('16', '7', '184');
INSERT INTO `question_topic` VALUES ('17', '7', '186');
INSERT INTO `question_topic` VALUES ('18', '7', '187');
INSERT INTO `question_topic` VALUES ('19', '8', '188');
INSERT INTO `question_topic` VALUES ('20', '8', '189');
INSERT INTO `question_topic` VALUES ('21', '8', '96');
INSERT INTO `question_topic` VALUES ('22', '8', '190');
INSERT INTO `question_topic` VALUES ('23', '8', '191');
INSERT INTO `question_topic` VALUES ('24', '9', '176');
INSERT INTO `question_topic` VALUES ('25', '9', '96');
INSERT INTO `question_topic` VALUES ('26', '9', '192');
INSERT INTO `question_topic` VALUES ('27', '9', '97');
INSERT INTO `question_topic` VALUES ('28', '9', '193');
INSERT INTO `question_topic` VALUES ('29', '10', '184');
INSERT INTO `question_topic` VALUES ('30', '10', '194');
INSERT INTO `question_topic` VALUES ('31', '10', '122');
INSERT INTO `question_topic` VALUES ('32', '10', '195');
INSERT INTO `question_topic` VALUES ('33', '10', '96');
INSERT INTO `question_topic` VALUES ('34', '11', '177');
INSERT INTO `question_topic` VALUES ('35', '11', '176');
INSERT INTO `question_topic` VALUES ('36', '11', '196');
INSERT INTO `question_topic` VALUES ('37', '11', '197');
INSERT INTO `question_topic` VALUES ('38', '11', '198');
INSERT INTO `question_topic` VALUES ('39', '12', '40');
INSERT INTO `question_topic` VALUES ('40', '12', '182');
INSERT INTO `question_topic` VALUES ('41', '12', '160');
INSERT INTO `question_topic` VALUES ('42', '12', '183');
INSERT INTO `question_topic` VALUES ('43', '13', '184');
INSERT INTO `question_topic` VALUES ('44', '13', '176');
INSERT INTO `question_topic` VALUES ('45', '13', '40');
INSERT INTO `question_topic` VALUES ('46', '13', '185');
INSERT INTO `question_topic` VALUES ('47', '14', '184');
INSERT INTO `question_topic` VALUES ('48', '14', '186');
INSERT INTO `question_topic` VALUES ('49', '14', '187');
INSERT INTO `question_topic` VALUES ('50', '15', '188');
INSERT INTO `question_topic` VALUES ('51', '15', '189');
INSERT INTO `question_topic` VALUES ('52', '15', '96');
INSERT INTO `question_topic` VALUES ('53', '15', '190');
INSERT INTO `question_topic` VALUES ('54', '15', '191');
INSERT INTO `question_topic` VALUES ('55', '16', '176');
INSERT INTO `question_topic` VALUES ('56', '16', '96');
INSERT INTO `question_topic` VALUES ('57', '16', '192');
INSERT INTO `question_topic` VALUES ('58', '16', '97');
INSERT INTO `question_topic` VALUES ('59', '16', '193');
INSERT INTO `question_topic` VALUES ('60', '17', '184');
INSERT INTO `question_topic` VALUES ('61', '17', '194');
INSERT INTO `question_topic` VALUES ('62', '17', '122');
INSERT INTO `question_topic` VALUES ('63', '17', '195');
INSERT INTO `question_topic` VALUES ('64', '17', '96');
INSERT INTO `question_topic` VALUES ('65', '18', '177');
INSERT INTO `question_topic` VALUES ('66', '18', '176');
INSERT INTO `question_topic` VALUES ('67', '18', '196');
INSERT INTO `question_topic` VALUES ('68', '18', '197');
INSERT INTO `question_topic` VALUES ('69', '18', '198');
INSERT INTO `question_topic` VALUES ('70', '19', '199');
INSERT INTO `question_topic` VALUES ('71', '19', '176');
INSERT INTO `question_topic` VALUES ('72', '19', '40');
INSERT INTO `question_topic` VALUES ('73', '19', '197');
INSERT INTO `question_topic` VALUES ('74', '19', '200');
INSERT INTO `question_topic` VALUES ('75', '20', '184');
INSERT INTO `question_topic` VALUES ('76', '20', '3');
INSERT INTO `question_topic` VALUES ('77', '20', '40');
INSERT INTO `question_topic` VALUES ('78', '20', '196');
INSERT INTO `question_topic` VALUES ('79', '20', '173');
INSERT INTO `question_topic` VALUES ('80', '21', '201');
INSERT INTO `question_topic` VALUES ('81', '21', '202');
INSERT INTO `question_topic` VALUES ('82', '21', '197');
INSERT INTO `question_topic` VALUES ('83', '22', '40');
INSERT INTO `question_topic` VALUES ('84', '22', '203');
INSERT INTO `question_topic` VALUES ('85', '23', '176');
INSERT INTO `question_topic` VALUES ('86', '23', '201');
INSERT INTO `question_topic` VALUES ('87', '23', '204');
INSERT INTO `question_topic` VALUES ('88', '23', '40');
INSERT INTO `question_topic` VALUES ('89', '23', '74');
INSERT INTO `question_topic` VALUES ('90', '24', '199');
INSERT INTO `question_topic` VALUES ('91', '24', '184');
INSERT INTO `question_topic` VALUES ('92', '24', '96');
INSERT INTO `question_topic` VALUES ('93', '24', '186');
INSERT INTO `question_topic` VALUES ('94', '25', '199');
INSERT INTO `question_topic` VALUES ('95', '25', '31');
INSERT INTO `question_topic` VALUES ('96', '25', '205');
INSERT INTO `question_topic` VALUES ('97', '25', '33');
INSERT INTO `question_topic` VALUES ('98', '25', '40');
INSERT INTO `question_topic` VALUES ('99', '26', '206');
INSERT INTO `question_topic` VALUES ('100', '26', '96');
INSERT INTO `question_topic` VALUES ('101', '26', '207');
INSERT INTO `question_topic` VALUES ('102', '26', '208');
INSERT INTO `question_topic` VALUES ('103', '26', '209');
INSERT INTO `question_topic` VALUES ('104', '27', '199');
INSERT INTO `question_topic` VALUES ('105', '27', '184');
INSERT INTO `question_topic` VALUES ('106', '27', '113');
INSERT INTO `question_topic` VALUES ('107', '27', '40');
INSERT INTO `question_topic` VALUES ('108', '27', '186');
INSERT INTO `question_topic` VALUES ('109', '28', '177');
INSERT INTO `question_topic` VALUES ('110', '28', '40');
INSERT INTO `question_topic` VALUES ('111', '28', '197');
INSERT INTO `question_topic` VALUES ('112', '28', '210');
INSERT INTO `question_topic` VALUES ('113', '29', '184');
INSERT INTO `question_topic` VALUES ('114', '29', '211');
INSERT INTO `question_topic` VALUES ('115', '29', '176');
INSERT INTO `question_topic` VALUES ('116', '29', '40');
INSERT INTO `question_topic` VALUES ('117', '29', '212');
INSERT INTO `question_topic` VALUES ('118', '30', '184');
INSERT INTO `question_topic` VALUES ('119', '30', '3');
INSERT INTO `question_topic` VALUES ('120', '30', '51');
INSERT INTO `question_topic` VALUES ('121', '30', '176');
INSERT INTO `question_topic` VALUES ('122', '30', '40');
INSERT INTO `question_topic` VALUES ('123', '31', '40');
INSERT INTO `question_topic` VALUES ('124', '31', '213');
INSERT INTO `question_topic` VALUES ('125', '32', '40');
INSERT INTO `question_topic` VALUES ('126', '32', '214');
INSERT INTO `question_topic` VALUES ('127', '32', '187');
INSERT INTO `question_topic` VALUES ('128', '32', '215');
INSERT INTO `question_topic` VALUES ('129', '33', '40');
INSERT INTO `question_topic` VALUES ('130', '33', '64');
INSERT INTO `question_topic` VALUES ('131', '33', '216');
INSERT INTO `question_topic` VALUES ('132', '34', '184');
INSERT INTO `question_topic` VALUES ('133', '34', '217');
INSERT INTO `question_topic` VALUES ('134', '34', '186');
INSERT INTO `question_topic` VALUES ('135', '34', '218');
INSERT INTO `question_topic` VALUES ('136', '34', '187');
INSERT INTO `question_topic` VALUES ('137', '35', '184');
INSERT INTO `question_topic` VALUES ('138', '35', '176');
INSERT INTO `question_topic` VALUES ('139', '35', '96');
INSERT INTO `question_topic` VALUES ('140', '35', '197');
INSERT INTO `question_topic` VALUES ('141', '36', '40');
INSERT INTO `question_topic` VALUES ('142', '36', '196');
INSERT INTO `question_topic` VALUES ('143', '36', '219');
INSERT INTO `question_topic` VALUES ('144', '36', '212');
INSERT INTO `question_topic` VALUES ('145', '37', '220');
INSERT INTO `question_topic` VALUES ('146', '37', '221');
INSERT INTO `question_topic` VALUES ('147', '37', '43');
INSERT INTO `question_topic` VALUES ('148', '37', '222');
INSERT INTO `question_topic` VALUES ('149', '37', '223');
INSERT INTO `question_topic` VALUES ('150', '38', '40');
INSERT INTO `question_topic` VALUES ('151', '38', '224');
INSERT INTO `question_topic` VALUES ('152', '39', '176');
INSERT INTO `question_topic` VALUES ('153', '39', '40');
INSERT INTO `question_topic` VALUES ('154', '39', '186');
INSERT INTO `question_topic` VALUES ('155', '40', '45');
INSERT INTO `question_topic` VALUES ('156', '40', '197');
INSERT INTO `question_topic` VALUES ('157', '40', '43');
INSERT INTO `question_topic` VALUES ('158', '40', '44');
INSERT INTO `question_topic` VALUES ('159', '40', '216');
INSERT INTO `question_topic` VALUES ('160', '41', '225');
INSERT INTO `question_topic` VALUES ('161', '41', '122');
INSERT INTO `question_topic` VALUES ('162', '41', '96');
INSERT INTO `question_topic` VALUES ('163', '41', '97');
INSERT INTO `question_topic` VALUES ('164', '41', '226');
INSERT INTO `question_topic` VALUES ('165', '42', '227');
INSERT INTO `question_topic` VALUES ('166', '43', '228');
INSERT INTO `question_topic` VALUES ('167', '44', '229');
INSERT INTO `question_topic` VALUES ('168', '45', '230');
INSERT INTO `question_topic` VALUES ('169', '46', '231');
INSERT INTO `question_topic` VALUES ('170', '47', '40');
INSERT INTO `question_topic` VALUES ('171', '47', '142');
INSERT INTO `question_topic` VALUES ('172', '48', '40');
INSERT INTO `question_topic` VALUES ('173', '49', '232');
INSERT INTO `question_topic` VALUES ('174', '50', '176');
INSERT INTO `question_topic` VALUES ('175', '51', '117');
INSERT INTO `question_topic` VALUES ('176', '51', '113');
INSERT INTO `question_topic` VALUES ('177', '52', '233');
INSERT INTO `question_topic` VALUES ('178', '53', '234');
INSERT INTO `question_topic` VALUES ('179', '54', '235');
INSERT INTO `question_topic` VALUES ('180', '55', '236');
INSERT INTO `question_topic` VALUES ('181', '56', '237');
INSERT INTO `question_topic` VALUES ('182', '57', '238');
INSERT INTO `question_topic` VALUES ('183', '58', '239');
INSERT INTO `question_topic` VALUES ('184', '59', '240');
INSERT INTO `question_topic` VALUES ('185', '60', '241');
INSERT INTO `question_topic` VALUES ('186', '61', '3');
INSERT INTO `question_topic` VALUES ('187', '62', '242');
INSERT INTO `question_topic` VALUES ('188', '63', '243');
INSERT INTO `question_topic` VALUES ('189', '64', '244');
INSERT INTO `question_topic` VALUES ('190', '65', '245');
INSERT INTO `question_topic` VALUES ('191', '66', '244');
INSERT INTO `question_topic` VALUES ('192', '67', '246');
INSERT INTO `question_topic` VALUES ('193', '68', '247');
INSERT INTO `question_topic` VALUES ('194', '69', '248');
INSERT INTO `question_topic` VALUES ('195', '70', '249');
INSERT INTO `question_topic` VALUES ('196', '71', '40');
INSERT INTO `question_topic` VALUES ('197', '72', '40');
INSERT INTO `question_topic` VALUES ('198', '73', '250');
INSERT INTO `question_topic` VALUES ('199', '74', '251');
INSERT INTO `question_topic` VALUES ('200', '75', '252');
INSERT INTO `question_topic` VALUES ('201', '76', '253');
INSERT INTO `question_topic` VALUES ('202', '77', '254');
INSERT INTO `question_topic` VALUES ('203', '78', '255');
INSERT INTO `question_topic` VALUES ('204', '79', '256');
INSERT INTO `question_topic` VALUES ('205', '80', '40');
INSERT INTO `question_topic` VALUES ('206', '80', '43');
INSERT INTO `question_topic` VALUES ('207', '81', '257');

-- ----------------------------
-- Table structure for `topic`
-- ----------------------------
DROP TABLE IF EXISTS `topic`;
CREATE TABLE `topic` (
  `topic_id` int(11) NOT NULL AUTO_INCREMENT,
  `topic_name` varchar(30) NOT NULL DEFAULT '',
  `topic_desc` text,
  `topic_image` varchar(255) NOT NULL DEFAULT 'http://localhost/image/topic3.png',
  `parent_topic_id` int(11) DEFAULT '1',
  `followed_count` int(11) DEFAULT '0',
  PRIMARY KEY (`topic_id`)
) ENGINE=InnoDB AUTO_INCREMENT=258 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of topic
-- ----------------------------
INSERT INTO `topic` VALUES ('1', '根话题', '根话题', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '0', '0');
INSERT INTO `topic` VALUES ('2', 'Python 开发', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '0', '0');
INSERT INTO `topic` VALUES ('3', 'python', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '2', '1');
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
INSERT INTO `topic` VALUES ('39', 'JAVA 开发', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '0', '3');
INSERT INTO `topic` VALUES ('40', 'java', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '39', '10');
INSERT INTO `topic` VALUES ('41', 'java-ee', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '39', '0');
INSERT INTO `topic` VALUES ('42', 'jar', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '39', '0');
INSERT INTO `topic` VALUES ('43', 'spring', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '39', '2');
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
INSERT INTO `topic` VALUES ('62', 'javascript', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '61', '2');
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
INSERT INTO `topic` VALUES ('160', 'c++', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '157', '1');
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
INSERT INTO `topic` VALUES ('176', '编程', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '1', '1');
INSERT INTO `topic` VALUES ('177', '编程语言', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '1', '0');
INSERT INTO `topic` VALUES ('178', '数据结构', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '1', '0');
INSERT INTO `topic` VALUES ('179', '', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '1', '0');
INSERT INTO `topic` VALUES ('180', '算法', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '1', '0');
INSERT INTO `topic` VALUES ('181', 'javaee', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '1', '0');
INSERT INTO `topic` VALUES ('182', '面向对象编程', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '1', '2');
INSERT INTO `topic` VALUES ('183', '编程语言比较', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '1', '0');
INSERT INTO `topic` VALUES ('184', '程序员', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '1', '0');
INSERT INTO `topic` VALUES ('185', '互联网工作', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '1', '0');
INSERT INTO `topic` VALUES ('186', 'IT 行业', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '1', '0');
INSERT INTO `topic` VALUES ('187', 'Java 程序员', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '1', '0');
INSERT INTO `topic` VALUES ('188', '社交网络', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '1', '0');
INSERT INTO `topic` VALUES ('189', '手机', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '1', '0');
INSERT INTO `topic` VALUES ('190', '用户界面设计', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '1', '0');
INSERT INTO `topic` VALUES ('191', '招商银行', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '1', '0');
INSERT INTO `topic` VALUES ('192', '学习方法', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '1', '0');
INSERT INTO `topic` VALUES ('193', 'Android 应用设计', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '1', '0');
INSERT INTO `topic` VALUES ('194', '调查类问题', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '1', '0');
INSERT INTO `topic` VALUES ('195', '独立开发者', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '1', '0');
INSERT INTO `topic` VALUES ('196', 'C（编程语言）', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '1', '0');
INSERT INTO `topic` VALUES ('197', 'Java 编程', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '1', '0');
INSERT INTO `topic` VALUES ('198', '自学编程', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '1', '0');
INSERT INTO `topic` VALUES ('199', '互联网', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '1', '0');
INSERT INTO `topic` VALUES ('200', 'BAT（公司集合）', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '1', '0');
INSERT INTO `topic` VALUES ('201', '计算机', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '1', '0');
INSERT INTO `topic` VALUES ('202', '长沙', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '1', '0');
INSERT INTO `topic` VALUES ('203', '高并发', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '1', '0');
INSERT INTO `topic` VALUES ('204', '转行', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '1', '0');
INSERT INTO `topic` VALUES ('205', '产品', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '1', '0');
INSERT INTO `topic` VALUES ('206', '手机游戏', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '1', '0');
INSERT INTO `topic` VALUES ('207', 'Cocos2d-x', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '1', '0');
INSERT INTO `topic` VALUES ('208', 'Flappy Bird', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '1', '0');
INSERT INTO `topic` VALUES ('209', 'CocosEditor', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '1', '0');
INSERT INTO `topic` VALUES ('210', 'Java EE', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '1', '0');
INSERT INTO `topic` VALUES ('211', '软件开发', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '1', '0');
INSERT INTO `topic` VALUES ('212', 'C / C++', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '1', '0');
INSERT INTO `topic` VALUES ('213', '电子信息工程', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '1', '0');
INSERT INTO `topic` VALUES ('214', 'IT 培训', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '1', '0');
INSERT INTO `topic` VALUES ('215', '教育培训机构', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '1', '0');
INSERT INTO `topic` VALUES ('216', 'Java Web', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '1', '0');
INSERT INTO `topic` VALUES ('217', 'IT 男', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '1', '0');
INSERT INTO `topic` VALUES ('218', '女程序员', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '1', '0');
INSERT INTO `topic` VALUES ('219', '计算机科学', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '1', '0');
INSERT INTO `topic` VALUES ('220', 'Ruby on Rails', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '1', '0');
INSERT INTO `topic` VALUES ('221', 'Django（框架）', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '1', '0');
INSERT INTO `topic` VALUES ('222', '设计模式', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '1', '0');
INSERT INTO `topic` VALUES ('223', 'Express（框架）', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '1', '0');
INSERT INTO `topic` VALUES ('224', 'ThreadLocal', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '1', '0');
INSERT INTO `topic` VALUES ('225', '移动互联网', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '1', '0');
INSERT INTO `topic` VALUES ('226', '移动开发', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '1', '0');
INSERT INTO `topic` VALUES ('227', '问答', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '1', '0');
INSERT INTO `topic` VALUES ('228', 'qwe', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '1', '0');
INSERT INTO `topic` VALUES ('229', 'sadsa', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '1', '0');
INSERT INTO `topic` VALUES ('230', '[i\'[', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '1', '0');
INSERT INTO `topic` VALUES ('231', '222', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '1', '0');
INSERT INTO `topic` VALUES ('232', 'fdsfsdfds', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '1', '0');
INSERT INTO `topic` VALUES ('233', 'htrhtrhjtr', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '1', '0');
INSERT INTO `topic` VALUES ('234', '蛤', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '1', '0');
INSERT INTO `topic` VALUES ('235', 'aaa', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '1', '0');
INSERT INTO `topic` VALUES ('236', 'token', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '1', '0');
INSERT INTO `topic` VALUES ('237', '的', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '1', '0');
INSERT INTO `topic` VALUES ('238', 'D~~D', '暂无描述', 'http://od6v5lenq.bkt.clouddn.com/f3da5acb-8cf6-4d78-9dff-9ca23c1f7b85.jpg', '1', '0');
INSERT INTO `topic` VALUES ('239', 't', '暂无描述', 'http://localhost/image/topic3.png', '1', '0');
INSERT INTO `topic` VALUES ('240', '蛤，乎', '暂无描述', 'http://localhost/image/topic3.png', '1', '0');
INSERT INTO `topic` VALUES ('241', '发送到', '暂无描述', 'http://localhost/image/topic3.png', '1', '0');
INSERT INTO `topic` VALUES ('242', '对对对', '暂无描述', 'http://localhost/image/topic3.png', '1', '0');
INSERT INTO `topic` VALUES ('243', '，，，', '暂无描述', 'http://localhost/image/topic3.png', '1', '0');
INSERT INTO `topic` VALUES ('244', '123', '暂无描述', 'http://localhost/image/topic3.png', '1', '0');
INSERT INTO `topic` VALUES ('245', '第三方', '暂无描述', 'http://localhost/image/topic3.png', '1', '0');
INSERT INTO `topic` VALUES ('246', '羡慕', '暂无描述', 'http://localhost/image/topic3.png', '1', '0');
INSERT INTO `topic` VALUES ('247', 'dd', '暂无描述', 'http://localhost/image/topic3.png', '1', '0');
INSERT INTO `topic` VALUES ('248', 'introduction', '暂无描述', 'http://localhost/image/topic3.png', '1', '0');
INSERT INTO `topic` VALUES ('249', '爱你妹啊', '暂无描述', 'http://localhost/image/topic3.png', '1', '0');
INSERT INTO `topic` VALUES ('250', '编程；学习；', '暂无描述', 'http://localhost/image/topic3.png', '1', '1');
INSERT INTO `topic` VALUES ('251', '11111', '暂无描述', 'http://localhost/image/topic3.png', '1', '0');
INSERT INTO `topic` VALUES ('252', '发的', '暂无描述', 'http://localhost/image/topic3.png', '1', '0');
INSERT INTO `topic` VALUES ('253', 'dddd;', '暂无描述', 'http://localhost/image/topic3.png', '1', '0');
INSERT INTO `topic` VALUES ('254', '55', '暂无描述', 'http://localhost/image/topic3.png', '1', '0');
INSERT INTO `topic` VALUES ('255', '啦啦啦啦', '暂无描述', 'http://localhost/image/topic3.png', '1', '0');
INSERT INTO `topic` VALUES ('256', '老哥稳', '暂无描述', 'http://localhost/image/topic3.png', '1', '0');
INSERT INTO `topic` VALUES ('257', '人生，诗词', '暂无描述', 'http://localhost/image/topic3.png', '1', '0');

-- ----------------------------
-- Table structure for `toutiao_ad_click_record`
-- ----------------------------
DROP TABLE IF EXISTS `toutiao_ad_click_record`;
CREATE TABLE `toutiao_ad_click_record` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `adid` varchar(50) DEFAULT NULL,
  `cid` varchar(50) DEFAULT NULL,
  `mac` varchar(50) DEFAULT NULL,
  `os` int(11) DEFAULT NULL,
  `timestamp` varchar(50) DEFAULT NULL,
  `convert_id` varchar(50) DEFAULT NULL,
  `callback_url` text,
  `idfa` varchar(40) DEFAULT NULL,
  `imei` varchar(40) DEFAULT NULL,
  `androidid` varchar(40) DEFAULT NULL,
  `visited` int(11) DEFAULT NULL,
  `success` int(11) DEFAULT NULL,
  `ctime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of toutiao_ad_click_record
-- ----------------------------
INSERT INTO `toutiao_ad_click_record` VALUES ('1', '62723699248', '62723767951', 'e3f5536a141811db40efd6400f1d0a4e', '1', '1498790750000', null, 'http://ad.toutiao.com/track/activate/?callback=CLDk_tTpARCP_YLV6QEY-IearQsgwtTSlYoBKK_8_tTpATAMOAFCIDIwMTcwNjMwMTA0NTM3MDEwMDA4MDU4MjExNjY3M0Ey&os=1&muid=9177D708-2610-4558-AF68-B2DB9BBB37EE', '9177D708-2610-4558-AF68-B2DB9BBB37EE', null, null, null, null, '2017-06-30 10:46:42');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL DEFAULT '',
  `password` varchar(50) NOT NULL DEFAULT '',
  `activation_state` int(11) NOT NULL DEFAULT '0',
  `activation_code` varchar(50) NOT NULL DEFAULT '',
  `join_time` bigint(20) NOT NULL DEFAULT '0',
  `username` varchar(50) NOT NULL DEFAULT '',
  `avatar_url` varchar(200) NOT NULL DEFAULT '',
  `gender` int(11) NOT NULL DEFAULT '1',
  `simple_desc` varchar(50) NOT NULL DEFAULT '',
  `position` varchar(100) NOT NULL DEFAULT '',
  `industry` varchar(100) NOT NULL DEFAULT '',
  `career` varchar(100) NOT NULL DEFAULT '',
  `education` varchar(100) NOT NULL DEFAULT '',
  `full_desc` varchar(300) NOT NULL DEFAULT '',
  `liked_count` int(11) NOT NULL DEFAULT '0',
  `collected_count` int(11) NOT NULL DEFAULT '0',
  `follow_count` int(11) NOT NULL DEFAULT '0',
  `followed_count` int(11) NOT NULL DEFAULT '0',
  `scaned_count` int(11) NOT NULL DEFAULT '0',
  `weibo_user_id` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11217 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('3', '1104641801@qq.com', '670b14728ad9902aecba32e22fa4f6bd', '1', '1493093562669bfa68c632a10423280c7966b91f78af0', '1493093562670', 'fanchao', 'http://od6v5lenq.bkt.clouddn.com/fee48cf9-8787-41fb-9c7f-ff02edd879f3.jpg', '1', 'q', 'q', 'q', 'q', 'q', 'q', '18', '1', '0', '0', '0', '');
INSERT INTO `user` VALUES ('4', '1@1.com', '670b14728ad9902aecba32e22fa4f6bd', '1', '1493274758287df390066c76645d28d2c6a7f2930521d', '1493274758288', 'naive', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '啧啧啧', '河北石家庄', 'IT', '无', '河北经贸大学', '哈哈哈哈', '8', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('5', 'fanchao100@sina.com', '670b14728ad9902aecba32e22fa4f6bd', '1', '14935623370866549d194ea594497905052ac3081c3ea', '1493562337087', '张三', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '11111111111111111', '1111111111111111', '11111111111111', '11111111111111111', '11111111111', '11111111', '1', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('6', 'fanchao100@yeah.net', '670b14728ad9902aecba32e22fa4f6bd', '1', '1493563719887e49cbf5397544ee4bc6c6a380e6d623c', '1493563719887', '李四', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '无', '呃u', '无', 'u', '无', '无', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('7', '3@3.com', '670b14728ad9902aecba32e22fa4f6bd', '1', '14936508832538132df85d9b3439a986c61df1f4b488f', '1493650883253', 'ceshi', 'http://od6v5lenq.bkt.clouddn.com/3a8bac82-ad1a-4751-bca8-0efaf61a514c.jpg', '1', '猴子派来的逗比，到此一游', '猴子派来的逗比，到此一游', '猴子派来的逗比，到此一游', '猴子派来的逗比，到此一游', '猴子派来的逗比，到此一游', '猴子派来的逗比，到此一游', '4', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('8', 'fanchao100@sohu.com', '670b14728ad9902aecba32e22fa4f6bd', '1', '1493732501791077e1d274d8f4c90a69e9e0ae3b2a74e', '1493732501791', 'fanfan', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('10', '1451314708@qq.com', '4297f44b13955235245b2497399d7a93', '1', '1493794676027d7429aaa0711482fb35244b4564f595d', '1493794676027', 'LeeShuai', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('11', '1978369376@qq.com', '4297f44b13955235245b2497399d7a93', '1', '14937947333979bf2250c4f3e4806ba30036c8977f008', '1493794733397', 'LeeShuai', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('12', '296768339@qq.com', '10bf5ae8871a427bd45475f402cc57e3', '1', '1493795721630bfc995ae99da4d96a954717920e46db7', '1493795721630', 'tjw', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('13', '565275393@qq.com', '670b14728ad9902aecba32e22fa4f6bd', '1', '1493796567833210de821b3b84ad5b9772919094d3189', '1493796567833', 'fanfan', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('14', '1150969549@qq.com', '9553465022d7a3fc1a12dcf2985de8b0', '1', '1493979831895e1a21abfb4f54997a1c2fcb7cba36e59', '1493979831895', 'sjy', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('15', '2819898944@qq.com', '9553465022d7a3fc1a12dcf2985de8b0', '1', '1493979842928f801c366e08f40faa25907d967bf35a4', '1493979842929', 'sjy', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('19', 'liuburu@qq.com', '25f9e794323b453885f5181f1b624d0b', '1', '1494290485532c6ac71b0f417411580a1af9705190855', '1494290485532', 'kakaluote', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('20', 'qazwsx@163.com', '76419c58730d9f35de7ac538c2fd6737', '1', '149429237931794ffc0fff1244a04bdf6c5360040be31', '1494292379318', '算法', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('21', 'wsxqaz@163.com', '76419c58730d9f35de7ac538c2fd6737', '1', '1494292390157a72b12c5c8c14eb2a3abfb198f53fc2e', '1494292390157', '算法', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('22', 'qazwsxedc@163.com', '76419c58730d9f35de7ac538c2fd6737', '1', '14942924140767968484d17814e4f926243dea8e3aaaa', '1494292414076', '算法', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('23', 'qazwsxedc@plm.com', '76419c58730d9f35de7ac538c2fd6737', '1', '14942924318736a61069ae11c4995a70cefba0a704673', '1494292431873', '算法', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('24', 'qazsfwdfwedfwsxedc@sfsfdsfs.com', '76419c58730d9f35de7ac538c2fd6737', '1', '14942924395581489aaf28e8e4357804196303ca57b33', '1494292439558', '算法', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('26', '123123@163.com', '4297f44b13955235245b2497399d7a93', '1', '14942928181435ae367de73c344d6bd0154e6b65d8c27', '1494292818143', '123', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('27', '123123123@163.com', '4297f44b13955235245b2497399d7a93', '1', '14942928227361a21e6e0deb949c4b0cc5c0a9ed5a73f', '1494292822736', '123', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('28', '123123123123@163.com', '101193d7181cc88340ae5b2b17bba8a1', '1', '149429285937232e120d821b842be8de85e56f8e92d24', '1494292859372', '123123123', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('31', 'fanchao100@hotmail.com', '670b14728ad9902aecba32e22fa4f6bd', '1', '1494295141702d4996e5508b642b58cfefef7e482e97e', '1494295141702', 'fanfan', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '1', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('32', '3372160252@qq.com', 'e807f1fcf82d132f9bb018ca6738a19f', '1', '14943023271975ce4d10f06e048878270769c269ea00d', '1494302327197', 'testzh', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('33', '1171375230@qq.com', '3853685d578ec38cad7ddb9d58fcda02', '1', '14943031117966b77c61b82204f8c9882fc1af9bb58e7', '1494303111796', '123', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('35', '1452900097@qq.com', '4e2b695e165365b19acbc179eb3c05a9', '1', '1494309252045e88efe4b277d42528e4e5cbe80e35d7e', '1494309252045', 'lcw', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('39', '2804032415@qq.com', '7c04f83cf3ec6c3ed90d98de06136557', '1', '149430983904297ccdd3bb17b47f7b55d2361d2b6a750', '1494309839042', 'zzz', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('40', 'danhuapan@qq.com', '1790a29427c229327c57f9f4a4df21ad', '1', '1494312287259542f82e586ef428a9d741c7456a60dc5', '1494312287259', 'pandanbua', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('47', 'tuq22405@ploae.com', '46f94c8de14fb36680850768ff1b7f2a', '1', '14943138836288b29aa416396455ab09568932f1da0c4', '1494313883629', '123qwe', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('10770', 'christmaz1984@163.com', 'd8258f326bc57ae7a8f835168898f0af', '1', '1494317774724d455dbcb42224e548d9a479e00181afe', '1494317774724', 'christmaz', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('10772', '346704910@qq.com', 'f034fcac65e5383c46693ebf99c7f107', '1', '1494321457508585b422ff7fb47edaa25769033b84793', '1494321457508', 'zhouxiang', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('10773', '120610415@qq.com', '5d93ceb70e2bf5daa84ec3d0cd2c731a', '1', '1494321948637cf012fc2818a4e0ebaa8ab733fc31248', '1494321948637', 'kristyrrr', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('10786', '1170917384@qq.com', 'b0628b6614cc98c6acf28f3347d7f738', '1', '1494490843059ac8905fbf8dc4e5081f81299148d7820', '1494490843059', 'kevin', 'http://od6v5lenq.bkt.clouddn.com/5266d222-b116-41e9-bdd2-a1309792cb78.cnt_bak.jpg', '1', '', '', '', '', '', '', '1', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('10789', '1060007045@qq.com', '5d93ceb70e2bf5daa84ec3d0cd2c731a', '1', '14945006673013622c09ebe524ff39cc8e6683528113f', '1494500667301', 'qwer1234', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('10796', '1070698256@qq.com', '40f01f47c9b269159692f7ea5c29f4a9', '1', '14945222371124e1e7bee22414ed6bb879804588aaffb', '1494522237112', 'daxiao', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('10804', '827373562@qq.com', 'e35cf7b66449df565f93c607d5a81d09', '1', '14947355327015e55a7b62d3b4a9ba33136123745af4c', '1494735532702', '456', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('10805', '1207467209@qq.com', '69ce7f2e28f6ea19894ed2935befa22f', '1', '14947485838545ffc400e02c04ba1877cec15b51498bf', '1494748583854', '121212', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('10806', '2654746949@qq.com', 'f54ce3230be2a199e9ab31496941480e', '1', '1494801508746de26bc9e94004539bd4237fb3760ce32', '1494801508746', '123', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('10810', '3471893276@qq.com', '0b0cfc07fca81c956ab9181d8576f4a8', '1', '1494830961708f17df5c94c0f402c841288ee3edd3742', '1494830961708', 'xxxxxx', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('10814', 'gump423@gmail.com', '2bd24d5f32f1588608b2bb4aba27b8ef', '1', '149495576990428d0582fd44347e89da9fa2cc822721b', '1494955769904', 'tonygu', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('10816', 'rongxie2005@qq.com', '2cbc141a72d7381120bd1272c53a52f4', '1', '149498815649830067bf79ceb484d99be3e7dbd08419c', '1494988156498', 'aaron', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('10817', '503378406@qq.com', '842c2c6f6d866147bd41f407ec570304', '1', '149503073714141491a163b5a422993786e818e96e0ba', '1495030737141', 'ythlibo', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('10820', '786794677@qq.com', 'e10adc3949ba59abbe56e057f20f883e', '1', '149503834143031a63f6c00ce4f1cbe3bbc95964a1e8c', '1495038341430', '123456', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('10823', '1042492275@qq.com', 'fcea920f7412b5da7be0cf42b8c93759', '1', '1495169806286ca5412a3cd084df7be0c6392606fabcb', '1495169806286', '1234567', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '1', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('10825', '1847355568@qq.com', '073bf385f5c1ce1e8cf74e80f8968991', '1', '1495178319187cea294cf218247ab9c1e8b9394be82ce', '1495178319187', 'yyy', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('10826', 'omsfuk@163.com', 'f6fdffe48c908deb0f4c3bd36c032e72', '1', '14951784011790245c2fbb0a64b31a1dc9803dd399085', '1495178401179', 'omsfuk', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('10828', '1374619211@qq.com', 'e10adc3949ba59abbe56e057f20f883e', '1', '14951828028575b15aabf26ba4105b038a642951c7e33', '1495182802857', 'noonehere', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('10833', '460785453@qq.com', 'fa63cf823641fcfe85e33d68192a9d29', '1', '14952481266920a014960f32143b78a0227d0da4e1cdd', '1495248126692', '任宝宝', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('10838', '735036616@163.com', '419a714c38b711618ee90a82c26a2916', '1', '149537485063316d9a6cb9927439da3ac5f1c85dfcd73', '1495374850633', 'tuolagi13', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('10840', 'cukingzhao@163.com', 'e10adc3949ba59abbe56e057f20f883e', '1', '1495432384046c65e7b7946ac41be8fd8da19c0ca4e2f', '1495432384047', 'cuking', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('10844', '290233347@qq.com', '5ae8b12e98af462fb486868f796f3ff5', '1', '1495517099018e9a873a6abcd44efad3a48e479edbf1b', '1495517099018', 'admin11', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('10846', '1010472578@qq.com', 'c28c1d27e64f58a52c7cc3e3a263db2f', '1', '14956213830363382df8f6a4c44bda209960d9c1e8985', '1495621383036', '101047257', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('10848', 'hellyuestc@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '1', '14957148778248254638a68e342ca90fc189bca546bf1', '1495714877824', 'helly', 'http://od6v5lenq.bkt.clouddn.com/c9cae723-e0a4-42c0-8d20-5041ed45fd8a.png', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('10849', '594225586@qq.com', 'e10adc3949ba59abbe56e057f20f883e', '1', '14957690739646eb01d78a37941c49da5aa614bcfaf69', '1495769073965', 'zhang', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('10851', '1277824350@qq.com', 'd55da8e5abd3d45bf7091b93551b006f', '1', '14958908903818006f8917f3441fb88bfc02d1b3493e3', '1495890890381', 'zk', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('10852', 'dylan@china.com', 'e10adc3949ba59abbe56e057f20f883e', '1', '14959594317657d14c39bad3b438ab6b3a037b3bd8489', '1495959431765', 'dylan', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('10853', 'dinghong666666@163.com', '103bfe628fadcf699e01751c88b36331', '1', '149595947421837696d984e2542fc9129c610582134ca', '1495959474218', '987', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('10855', '827822528@qq.com', 'e10adc3949ba59abbe56e057f20f883e', '1', '14961517755127493f98cad5546a689d866465dc6084f', '1496151775512', '肖泽', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('10856', '15896069641@126.com', '089af8389790ece6b448ffa18cb74bda', '1', '14962148618920e194061c94a47cb8f19acd392378036', '1496214861892', 'xuejinhua', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('10857', 'chenluodemuguang@163.com', '69817be6cf74e65a82fea2ab3270b984', '1', '1496237058563a930520ef11749d9ac800c05670c0c05', '1496237058563', 'zjy', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('10859', '451619436@qq.com', 'e10adc3949ba59abbe56e057f20f883e', '1', '1496298274613cd3367d1cf864eaea832b43c7c556075', '1496298274613', 'jiang', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('10861', '1191392302@qq.com', '1485c0d0121cc3f2e8205a2457772b6b', '1', '149631088020370d6e9e8d27b4b3aa5a652cbc213f9ef', '1496310880203', '咔咔', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('10866', 'vsxlkf91207@chacuo.net', '6a204bd89f3c8348afd5c77c717a097a', '1', '1496405510126163b9a2612324ca39a2fc37ab2067c33', '1496405510126', 'asdfasdf', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('10871', 'jielong39@126.com', '25d55ad283aa400af464c76d713c07ad', '1', '1496470029382175431c9918e4e88a8a7a9a9fa1092ae', '1496470029382', '吃饭', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('10874', '1015973074@qq.com', '4f72f20eb13ffb2868ca825b291f3a4b', '1', '14965569386103debc003301c49d486f37c58ec69373b', '1496556938610', '啦啦啦', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('10878', '201833328@qq.com', 'e10adc3949ba59abbe56e057f20f883e', '1', '14967355549188f312233211348de968733c87087e2d6', '1496735554919', '1', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('10880', 'hcdeng@Ctrip.com', '12d93143631f41b15808ec55a373c4cc', '1', '14967545180682c0abbfb9f5a4cc2b1cb2eb102ae6dc0', '1496754518068', 'hcdeng', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('10881', 'twc731@163.com', 'd97d162a6348b98f9b91847d21e5a24e', '1', '1496801718331bf22f7ab8ec141558e737b9c6bc035a6', '1496801718332', 'twc731', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('10883', '1326935715@qq.com', 'e10adc3949ba59abbe56e057f20f883e', '1', '149690739048825818ef0f6f6416995155f2e93b44b90', '1496907390488', 'BHH24', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('10884', '1103321658@qq.com', '9e5c49841e7db7e516851045eed016c6', '1', '1497002291410925078b45dfb4c90b5ff65e2186b51b3', '1497002291411', 'cst', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('10887', 'mjzhangtim@163.com', 'e10adc3949ba59abbe56e057f20f883e', '1', '1497007090199ebb4d280b5e04418bcd2035811bdcae1', '1497007090199', 'test123', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('10888', '2456483817@qq.com', '96e79218965eb72c92a549dd5a330112', '1', '1497015191961f2cfddd35407472a82928a9f13ee00f9', '1497015191961', '1', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('10889', '1061717821@qq.com', 'b1c203444632f7ff1899a51c483d3b6b', '1', '1497022411959e4e53527b89543c3b822204bc838802a', '1497022411959', 'F4k1r', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('10890', '664347225@qq.com', '1503b21f6364c23e8273804a0daecede', '1', '1497169429137ef684a3576254d229a0e6553f22e8e78', '1497169429137', 'wingsky', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('10891', '1072175123@qq.com', 'ca944e5450fc3c7ed949919e148466dd', '1', '149717315647213580c784718435b8483e8a85f05f7ef', '1497173156472', '123456789', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('10892', '475617667@qq.com', 'e10adc3949ba59abbe56e057f20f883e', '1', '14971871207020ebe3fa19a14460eb201011ee4f726de', '1497187120702', 'aaa', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('10893', '479850793@qq.com', '3c08d9ab3d29fae787ef32a70f64c336', '1', '14972346002053d2fa22afbff438382257bc495b55526', '1497234600205', 'hahu', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('10899', '18854992459@163.com', '96e79218965eb72c92a549dd5a330112', '1', '14973417820090bed27913eae495eb9d4dbedeb04d55c', '1497341782010', 'asd', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('10900', '277424908@qq.com', 'e904ee8443b627d825fc99f481c89977', '1', '1497447635253b17b54b5e55743ef80c8bc708d0836a5', '1497447635253', 'likewind', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('10901', '1015115549@qq.com', '96e79218965eb72c92a549dd5a330112', '1', '14975198255680de068357e8c406c8b54e1c714ecc5a6', '1497519825568', '1015115549', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('10903', '911413514@qq.com', 'abbcf7fcc8fac9fa5940edc170bc3d66', '1', '1497533371717423b71449bbf4f8f8c30a3505fde8767', '1497533371717', '张晨', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('10906', '825029499@qq.com', 'f685ced196ffda2a41b0576fb1b90464', '1', '14975969787839c1455ed7d6e4c6698bc0aadb5c3957f', '1497596978783', 'arik·', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('10908', 'playagayson@gmail.com', '57ba172a6be125cca2f449826f9980ca', '1', '149759749665662ecffda62ad4d129a40a68a8260e86a', '1497597496656', 'GayHu', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('10912', '442044365@qq.com', 'b8b550240e60db41eb1245ff279032bf', '1', '149770236442082b7cae234f74c6ba5cbdf8da7275696', '1497702364420', 'owendutt', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('10913', '1796246076@qq.com', 'e10adc3949ba59abbe56e057f20f883e', '1', '149770282563754728a7d6f0f4c0490bc26bbc39e04c3', '1497702825637', 'rookiefly', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('10914', '2294637716@qq.com', '597dce4de36160f6f6b3987306ecfba9', '1', '1497705893213cf71b52c190546ac86054a6855875612', '1497705893213', 'sb', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('10918', 'prosperdai@qq.com', '7a79ea08b9e84fb5d3cd217ff359932e', '1', '1497750742070c046f11151ad44998b8a2cc1e0e073f7', '1497750742071', 'haha', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('10922', '1633761466@qq.com', 'e10adc3949ba59abbe56e057f20f883e', '1', '149777145487357a65115eb3445e2a60e9e2571936efc', '1497771454873', 'swj', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('10923', 'chengsnem@163.com', 'e10adc3949ba59abbe56e057f20f883e', '1', '149777712242610b7751d487d416cb846671cdc10994f', '1497777122426', '测试', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('10925', '819048836@qq.com', 'e10adc3949ba59abbe56e057f20f883e', '1', '1497784665599291ceea3e99d4ff5b6305ba003a1b479', '1497784665599', '吕兴光', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('10926', 'bfa33406@uzrip.com', '0af6f190235a168c57be5cff86668b0', '1', '1497793486348e0bdbcdf1296494581f4be0ae31212f8', '1497793486348', 'heheda123', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('10928', '3urrender@sina.com', 'c3d5ab3d1af3de1103d8c0b486a24d06', '1', '1497847009381f0763dee418244dc8ce1937cf23a037c', '1497847009382', '世界', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('10931', '1135010263@qq.com', 'e3ae9e56389aa59ad1d5421a1b61be0c', '1', '1497921555321e4e0144558d4450399d58a6061f5ef65', '1497921555321', '韩', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('10932', '13720456169@163.com', '25d55ad283aa400af464c76d713c07ad', '1', '14979226987575bf13203bb5c4b1f91106f932e528009', '1497922698757', '12345678', 'http://od6v5lenq.bkt.clouddn.com/2e3adce8-2f54-417f-8b14-e0770687cfa6.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('10935', '1546890193@qq.com', 'e10adc3949ba59abbe56e057f20f883e', '1', '1497944331698e6a75eba20a8446b8f2327c46f2065bb', '1497944331698', 'frank', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('10937', 'letousun@qq.com', 'e10adc3949ba59abbe56e057f20f883e', '1', '14979497684899b0f3302d0a34412b4299b9fc26413a1', '1497949768489', 'syl', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('10938', '346411474@qq.com', '0d8c61aafd5a8080c17e54737e73d54b', '1', '14979685295772d7bf9ef63304c2ba37f77f89a006283', '1497968529577', '周鹏', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('10941', '1924510567@qq.com', '015e20bdd093034e97363ef1439a72dc', '1', '14980866687190e6db12bc9224954b805d93bfbc9d6fc', '1498086668720', 'iykhg', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('10942', '1029941241@qq.com', 'e10adc3949ba59abbe56e057f20f883e', '1', '1498103969403da9324d1169046a3bc6b8cdd36581f7a', '1498103969404', 'shiluoye', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('10945', '1249165127@qq.com', '6d7b7538e9441f213ffc1b7bc96171d6', '1', '1498202447957345fbd09c7a8421eaafee4b3f15cd1db', '1498202447957', 'libin', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('10946', '752011193@qq.com', '073bc5984febf2219d7eaa2b18f3d33', '1', '1498213553838151f512e4c1a46cda8b416abddf53a75', '1498213553838', 'liao', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('10949', '502589892@qq.com', 'd8578edf8458ce06fbc5bb76a58c5ca4', '1', '1498232369103292dd652100849679f07f2dba9b3120d', '1498232369103', '辛鄢放', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('10950', 'wang663632304@163.com', '97db1846570837fce6ff62a408f1c26a', '1', '1498291669939494142af6af24a868a58ea9c70da99ee', '1498291669939', 'ireak', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('10951', '943881560@qq.com', '39d598d4fac33e649fcb9803a1a5f1cc', '1', '149829679687980e3b4a1ca6d4f22b09f60a08a3aa9c0', '1498296796879', 'vihu', 'http://od6v5lenq.bkt.clouddn.com/a99ebab9-7f56-4e90-8eba-5f46eae6df7d.exe', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('10952', '596067319@qq.com', '02c75fb22c75b23dc963c7eb91a062cc', '1', '1498317909737e55c64de1e79420683a5fedc33b34664', '1498317909737', '凉宫春日', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('10954', 'arlinmsn@sina.com', '0b4e7a0e5fe84ad35fb5f95b9ceeac79', '1', '14983245397826cfdcbf063034af7bc515591a846f43d', '1498324539782', 'aaaaaa', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('10955', '312148430@qq.com', 'a23a55649852e46ff7df8f957ce85b76', '1', '14983635027569fb4d91c4aa04929a852078a0e44a3a7', '1498363502756', 'haizu', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('10959', '992217659@qq.com', 'e3ceb5881a0a1fdaad01296d7554868d', '1', '14984717164790c61c26f6fef46b5bc5eeef50bafd326', '1498471716479', '1111', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('10960', 'wangweikang@kangkanghui.com', 'e3ceb5881a0a1fdaad01296d7554868d', '1', '1498471845668368ca86f27194fe9a9a6de84e4ee2a64', '1498471845668', '1111', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('10961', 'kangmang92@gmail.com', 'e3ceb5881a0a1fdaad01296d7554868d', '1', '14984718901290bcfe835ac6147b09ba03a070e86be86', '1498471890129', '1111', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('10962', '545865727@qq.com', '31d4fa248806d71ce30fb02356beb1c4', '1', '149847589366254d32ed0b74c48f39dbd962d0704a39e', '1498475893662', 'alectyv', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('10963', '2268078372@qq.com', '25f9e794323b453885f5181f1b624d0b', '1', '14984760029829f0c0232b25b469db4f4c95878aa50af', '1498476002982', 'alectyv', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('10964', '654789795@qq.com', '0ba3ade0324f037da414e7b08a10a00a', '1', '14985280094662b0f796530664cfab3bcab4e177c77ff', '1498528009466', '胡平', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('10965', 'leandom@163.com', 'd64c567ff89dadc5fbaedf3e001bd55f', '1', '14985330172120d3b3b77ad2d47c882b5619185f76cd8', '1498533017212', 'leandom', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('10966', '136766249@qq.com', '96e79218965eb72c92a549dd5a330112', '1', '1498533697799bb83c9cb9f0b4d8e944adf180bdc7b39', '1498533697799', 'zds', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('10968', '871052938@qq.com', '9253d8a02ff7e111b0ff227dc68f2a81', '1', '14985434289322e4aeeb38981490aa4166b3eff8907ea', '1498543428932', 'aaa', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('10969', '2399548030@qq.com', 'e10adc3949ba59abbe56e057f20f883e', '1', '1498550491116421c316eacea4a6ba68c107eace4359f', '1498550491116', 'lsm', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('10970', 'zhenxianga66@qq.com', 'f1aa537b8de5ca599512a6e61de327fe', '1', '14985592396176f92e40ddf034128b96c2e6f02dd4d2f', '1498559239617', 'saijin', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('10972', '448122525@qq.com', 'e10adc3949ba59abbe56e057f20f883e', '1', '1498561512224d69dbc05311d457b952b27e4ac5c77fe', '1498561512224', 'chuxuechao', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('10974', 'yanchilei@163.com', '3959c9ddcc50897e438f3f60c551e7e9', '1', '1498574173590e80e88dc12fe46419f0562100ada577d', '1498574173590', 'yanchilei', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('10976', 'glacierice@yeah.net', '4297f44b13955235245b2497399d7a93', '1', '14986316089618e64c140076248b58362b4a6e35d9642', '1498631608961', '1111', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('10978', '345483964@qq.com', '5815a47f495ce20b35256e6387e1ac58', '1', '14987134714294b15d3c171b74513bbaf5ebd4b4fb0ee', '1498713471429', 'zyx', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('10981', '2855176771@qq.com', 'e10adc3949ba59abbe56e057f20f883e', '1', '1498803827559cd79c71bfe24435cb4f473f57f518734', '1498803827559', 'dings503', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('10985', '806550261@qq.com', 'e10adc3949ba59abbe56e057f20f883e', '1', '149881368072564f969337c1841c3b5225dc581838125', '1498813680725', '123', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('10990', '867698387@qq.com', '949abf3337cf59e84dbe4e751c834b15', '1', '1498892181207718e7110dce442809572529f6231b021', '1498892181207', 'xufuhao', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('10991', 'pidgeotuiop17@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '1', '14988926551482ff10800b53f47929f6d9ebaf7cb864f', '1498892655148', 'QQ', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('10995', 'datacamp@163.com', '5413221497490788e4743acde617def0', '1', '1498911774332764657e7ea0e4818a73c4719b2dbc9a5', '1498911774332', 'datacamp', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('10997', '1270021863@qq.com', 'e10adc3949ba59abbe56e057f20f883e', '1', '14990514669712aff37a03a604a8797c432b46607c5e3', '1499051466971', 'lhz', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('10998', '624050782@qq.com', '25f9e794323b453885f5181f1b624d0b', '1', '1499052166477bf2ac3ad8dca471195cffd369428ef43', '1499052166477', 'yyyy', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('11001', 'yongxinzhang@126.com', '8247fefdaa4138cc0a3e2308247f10dc', '1', '1499135808208e3993653ac62406b98391ea9ea5450ea', '1499135808208', 'zhang', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('11002', 'sisibin@qq.com', '856d37cd78a97baf40000c77018b1d73', '1', '1499139545572a9a8e89108eb471ea10397b6f06c2033', '1499139545572', '11', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('11004', '1179842787@qq.com', 'e10adc3949ba59abbe56e057f20f883e', '1', '1499166813691b40519ecb43c429db15b5774acb70e4b', '1499166813691', '111', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('11005', 'wx9599@139.com', 'e10adc3949ba59abbe56e057f20f883e', '1', '1499169013299aa15277458c4442b905731f097a3ffe8', '1499169013299', '123456', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('11010', 'zhongyishuncz@126.com', 'e10adc3949ba59abbe56e057f20f883e', '1', '1499177472326c5f4396f08eb464fa082547201ee903e', '1499177472326', 'zhongyis', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '1', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('11013', 'yangzun04@163.com', 'e10adc3949ba59abbe56e057f20f883e', '1', '1499242082015a607c0bdd56f4d1da7854fa1edccf714', '1499242082015', '逍遥', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('11014', 'zhang_5521@126.com', 'e10adc3949ba59abbe56e057f20f883e', '1', '149924314541517233ab7e6624de088ceac3ed581d4eb', '1499243145415', 'ls', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '1', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('11019', '1141450313@qq.com', 'e10adc3949ba59abbe56e057f20f883e', '1', '149933904046183760691174740db9f4c1f3109c36bd2', '1499339040461', '1141450313', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('11024', '1324480595@qq.com', 'e10adc3949ba59abbe56e057f20f883e', '1', '14994864004022749383cc1224de98b8f0a255d937d87', '1499486400402', 'nicai', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('11027', '849433164@qq.com', '137a3a3a7809a828afe701ad71827e81', '1', '14994871571907072c0887c74424ab543e0844acef9d4', '1499487157190', 'aa', 'http://od6v5lenq.bkt.clouddn.com/abef2644-ff51-4247-98cf-434cd1c0ebba.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('11029', 'zjuyxy@qq.com', 'e10adc3949ba59abbe56e057f20f883e', '1', '1499487365278301699c8c5fa40d980c1376be562814e', '1499487365278', '叶向宇', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('11031', 'jie714512544@foxmail.com', 'e10adc3949ba59abbe56e057f20f883e', '1', '1499488331445b7364436f3794f3da2189d937344325f', '1499488331445', 'Jayzyyzyy', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('11033', '1140823948@qq.com', 'd2dc95797af8d10cf1f70823a6d6f19a', '1', '1499489274783bcc9bc0baabd4211af3f890680c36d2a', '1499489274783', 'lcplcp', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('11034', '18640144558@163.com', 'bf78e99b1f7f580411a7541257476dc4', '1', '1499489625915f4fcae388d0b456f90c2a50a60be7feb', '1499489625915', 'DDA', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('11038', 'zhuoyueczy@126.com', '25f9e794323b453885f5181f1b624d0b', '1', '1499490526498b7215f3730ed4f7fb1bac89ede04bec7', '1499490526498', 'czy', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('11043', '345968414@qq.com', 'e10adc3949ba59abbe56e057f20f883e', '1', '1499494543119e9422572fdaa452f8dcd3b0c4f372c15', '1499494543119', 'huolang', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('11044', '841504150@qq.com', 'a838a93d3463e02a86ab8fc3574f0ab1', '1', '1499494953466fa8f944ff9df41568b77649955df29c5', '1499494953466', '感觉', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('11047', '1320538477@qq.com', 'e10adc3949ba59abbe56e057f20f883e', '1', '149949749097678f1316a06d64bb4b07c0c1053034594', '1499497490976', '墨香', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('11049', 'public_emailv@163.com', 'e10adc3949ba59abbe56e057f20f883e', '1', '14994986255817f982767a8eb4e11b2ee75b2d65587c7', '1499498625581', 'ceshi', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('11053', '495401146@qq.com', '6e61577cfd10c823c0079fa9fc0d8240', '1', '14995008547313814e088a38740ea9d93397f98c4c079', '1499500854732', '和', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '1', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('11054', '932974672@qq.com', 'e10adc3949ba59abbe56e057f20f883e', '1', '1499500926125b61e80d76b40461a95273a12031bf491', '1499500926125', 'hhahh', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('11059', '190708208@qq.com', 'c5451025aa678635d8362eec8bea1a4f', '1', '1499504870692775dd89a02204806a6750100b3291f78', '1499504870692', '大哥', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('11060', '316019319@qq.com', 'e10adc3949ba59abbe56e057f20f883e', '1', '14995049263989b759b25457c400b90e3749665b239ea', '1499504926398', '123', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('11065', '1038880900@qq.com', '0b4e7a0e5fe84ad35fb5f95b9ceeac79', '1', '14995111859862da9e8f4147c47c2b627f7eac62e7da9', '1499511185986', 'aaa', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('11066', '1047122897@qq.com', 'bbb8aae57c104cda40c93843ad5e6db8', '1', '14995117173580dc2722eb680423c8e55121a5a5ccba1', '1499511717358', '111', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('11070', 'catchya@163.com', '0cb111f87554082c92cea0289e4eb5ef', '1', '1499515079094f1fc38da29424e40ba0f99b0f06b673c', '1499515079094', '可口可乐', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('11074', '664727422@qq.com', '7c47f9f3aaef14ee1ebe805b358a0e94', '1', '1499519361315683acb8ce9ff4146afeccbbe3c488733', '1499519361315', 'xaa', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('11075', '624850157@qq.com', 'e10adc3949ba59abbe56e057f20f883e', '1', '14995228410777311e9adc4c547b7b528436c0d44978e', '1499522841077', 'wwt1991', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('11076', 'hminji@126.com', '670b14728ad9902aecba32e22fa4f6bd', '1', '149952422393911d078179c904f03b308775d8a8e150c', '1499524223939', '1', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('11078', '1220133324@qq.com', '101a6ec9f938885df0a44f20458d2eb4', '1', '1499528464159a49c90d71a6c4f1485655932478c2c1a', '1499528464159', 'hahaha', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('11080', '864713815@qq.com', '445a20a89a22617545519542be31150e', '1', '1499558537829ad1a87d028c8414ba2ea8936a7468122', '1499558537829', '吴', 'http://od6v5lenq.bkt.clouddn.com/ba7935ac-2ecf-461c-afb0-ca498e3de01d.PNG', '1', '', '', '', '', '', '', '1', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('11082', '1970650150@qq.com', 'a967d28874516dd3a07322aa88b741bb', '1', '1499561833199984e4ab9df2f4824a5d4be8348cef11e', '1499561833199', '1970650150', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('11087', '1059067158@qq.com', 'e882b72bccfc2ad578c27b0d9b472a14', '1', '1499566953617359c873ef33249faabba0bed542230e6', '1499566953617', 'pppp', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('11088', 'gsx008com@163.com', '9982b2a7fceaaee2c8444b5086aee008', '1', '1499567058118a62ccac46f79442f8c5f148c4ca8ca18', '1499567058118', 'ooo', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('11098', '991157472@qq.com', '0ab3c4eefb3a5225e7af8395b948973', '1', '14995951973397bade59b82d54ee18102942af5f1ae66', '1499595197339', 'aaa', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('11100', '492400989@qq.com', '929f727c56557fafd4945eedfe2eb645', '1', '14995970269048d0efc43086043528b9d8f625e1a96ae', '1499597026904', 'fff', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('11101', '291608411@qq.com', '8dc617cb249ba5d9d0f499379354331e', '1', '1499599354346044025c649164837852cf970a077086d', '1499599354346', 'lapple', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('11102', 'hfutxk1993@163.com', 'e10adc3949ba59abbe56e057f20f883e', '1', '1499599948024f53d8a353e2d4e22a5ba550d19bbd23d', '1499599948025', 'xiakang', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('11107', '1923901178@qq.com', 'e10adc3949ba59abbe56e057f20f883e', '1', '1499608453442372d56aa0d0e434aaeb376c1e8c9c979', '1499608453442', 'a', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('11120', '1042083931@qq.com', '4297f44b13955235245b2497399d7a93', '1', '1499654701950c8a75c4af8f549a98a3949715a5a5ade', '1499654701950', 'zhangxiao', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('11126', '279985112@qq.com', '1c63129ae9db9c60c3e8aa94d3e00495', '1', '1499655517423d2f6a56fad3a42fbb17ab6a1b651ac09', '1499655517423', 'Gavin', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('11135', 'xiaoxi666swap@163.com', '670b14728ad9902aecba32e22fa4f6bd', '1', '14996597414323bbf67cf994c44fd8ddb9b02999ce3b9', '1499659741432', 'xiaoxi', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('11141', '2054712120@qq.com', '22cc71b9b1e29675bfff936389a4421d', '1', '1499670788225a8b03a8aae804e958b246dd515666520', '1499670788225', 'tjw', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('11145', '625769192@qq.com', '0a1f187721c63501356bf791e69382c', '1', '14996711255697a3f9b8873d2479d8d16c352717720d9', '1499671125569', 'zym', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('11150', '2248080961@qq.com', '7c3f1e203a9d39f2ddaf9c0ae3fca4d7', '1', '149967572348976ccc2a517534f35b0447fd8aac5718d', '1499675723489', '123456', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('11151', '2436946566@qq.com', '0e9ff1d6c24312132800270939ed7116', '1', '1499680101688b833fddca4d446de93a2900eec0c4380', '1499680101688', '12345yu', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('11152', '553418217@qq.com', 'cd3461eff627180963cd5aa61d9c214c', '1', '149968192100613dff56d0ae5431481af691eea39ca2d', '1499681921006', 'davidwang', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('11153', '274140732@qq.com', 'e10adc3949ba59abbe56e057f20f883e', '1', '1499684198462548cf35b1c19474c85d0620258facc46', '1499684198462', '123', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('11154', '1845884332@qq.com', 'e10adc3949ba59abbe56e057f20f883e', '1', '149968973020577a9bb0af1f14418a0adb3995827d921', '1499689730205', '1845884332', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('11156', '66liumian@sina.com', 'cc2f7e221d7acc1de5cb358581cdcf3d', '1', '14996930661255228f1ce9f3d48499ca0758dbe3e8b83', '1499693066125', 'll', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('11157', 'willtang303@163.com', '74101c5fac85ee2987848a2fcb7c0bb8', '1', '1499694111618c556f96ffb504062b09e7c3233a4fcb6', '1499694111618', '王', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('11158', 'hustwch@126.com', 'd0bfd8142b862fccfa625eabdd3ea91a', '1', '1499694291492ce066df562d0452c807b7eeaf63e8525', '1499694291492', 'wch', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('11161', '826368933@qq.com', '2c94839da75d616f9a9058c05427a619', '1', '1499697772720a1b708870a53415aad3d1e8b9590c4de', '1499697772720', 'maofan', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('11165', '403930619@qq.com', 'c0fcfe67b56ece11012ee38132ad89b7', '1', '1499706901413893b308bfed14e14b42b1e9068a8e150', '1499706901413', 'lzz', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('11172', 'snowdaning@163.com', 'e1bcece4eb3e6cdf2e21dd90d7ad0c0d', '1', '149975303213103cff722b1a6472c84e5c4e59e191b4b', '1499753032131', 'rmnjava', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('11173', 'yang690139371@qq.com', 'e10adc3949ba59abbe56e057f20f883e', '1', '14997542443823239545f2f0a4906904fdae1b823c862', '1499754244382', 'aa', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('11175', 'zhongshankaka@163.com', 'e10adc3949ba59abbe56e057f20f883e', '1', '149975837656958b1d97bf7d64c7d9d69f23e420df2e3', '1499758376569', 'kfc', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('11176', '13260597822@163.com', '6209f26e17cc96d256fd40ed2b85416d', '1', '1499760229450b673dafd25134af19a18274b53dbe177', '1499760229450', '西西西', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('11178', '654786684@qq.com', '5401f7da40ea9adf12450e32d21fb275', '1', '14997639801157c54828c14344407987bed35936ef562', '1499763980116', 'PkuBBs', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('11179', '1458045311@qq.com', 'e10adc3949ba59abbe56e057f20f883e', '1', '14997639826568fe2efa3dfe649d2ac93a2b3c2f04872', '1499763982656', 'LuckyGan', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('11181', '2499537106@qq.com', '73cbe175ba9779807bc9acfdd4dbdf19', '1', '1499766939569eb82316d907b4b3baf9abb7e5ab5a2e3', '1499766939569', '玉笙水境', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('11184', 'yandong_0475@163.com', 'e10adc3949ba59abbe56e057f20f883e', '1', '1499769337473fcef177de13a4b039bb7c43dca6a1d4b', '1499769337473', '1', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('11185', '553899811@qq.com', 'a3261cd177d6a6e90ee3ea6a8a288411', '1', '14997708934896f7d0637456a4180a16ab7cfe8a2afd2', '1499770893489', 'Echizen', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('11189', '843781005@qq.com', '4297f44b13955235245b2497399d7a93', '1', '1499778625145a97e7e3b50c24575934efaa993e264e3', '1499778625146', 'fin0303', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('11190', 'ljyss9@163.com', 'e10adc3949ba59abbe56e057f20f883e', '1', '14997797783398ba12c14b95349aa9b9da4f0baef7900', '1499779778339', 'ljyss9', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('11192', '1471827997@qq.com', 'e11170b8cbd2d74102651cb967fa28e5', '1', '149978347499378e0a51a42e541058962bf72506c019a', '1499783474993', 'test', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('11193', '272393087@qq.com', 'e10adc3949ba59abbe56e057f20f883e', '1', '14997853282233427083f977b4b19b660c753842ea686', '1499785328223', 'gyp220203', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('11194', '1144966267@qq.com', 'd8578edf8458ce06fbc5bb76a58c5ca4', '1', '1499791536901bdef8758767b48ccb600bad1efdedcba', '1499791536901', '啦啦啦', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('11195', '756605998@qq.com', '3ddd29726983b86fbaacc36a1663de74', '1', '14998201286514c798f18d7f04bc5989a3d55cd5cb13e', '1499820128651', 'gxh', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('11197', '553171833@qq.com', 'dfa439b32528db530ab183fe8b166420', '1', '14998321435829a09f0dc0fd8434ca5051ea528f3b559', '1499832143582', '553171833', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('11198', 'yongzhong1017@163.com', '2ab1dd24bbe4a81573a326268dd91320', '1', '1499835238611cc210c85143a493ab8fa4efa7a10a5fe', '1499835238611', '奥术大师多', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('11199', '541334698@qq.com', '99fd4723d43aa5d826d98fcf8949091b', '1', '14998518734967d84221256de44b0afe76cfcb8bb323d', '1499851873496', 'z', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('11200', '2899269455@qq.com', '4297f44b13955235245b2497399d7a93', '1', '149985425318694acf095eb7943dda70732470534fa46', '1499854253186', 'zhangxiao', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('11202', '1248497520@qq.com', 'edb95e7b2ca332fd4c6cd822cc0cea9c', '1', '14998739947151c3b39d2cb9b4e93b009967ef512da60', '1499873994715', 'gaoxin', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('11204', 'tongyan63@qq.com', 'dcdff65840a609e84b70dc8882d347d0', '1', '14999263557711123cc05d36840d2b29d3479a6288e3f', '1499926355771', '扛花来见你', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('11206', '401622845@qq.com', '1d4fd7707f8d784cbbd3688da6a9ebb9', '1', '1499931821121f54700fbef744c5e9cab8aae1bc1818f', '1499931821121', 'Jason的树袋熊', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('11207', 'sj69820@163.com', '6021ea7a6e70f0e6e3d7f697ba0e6bd9', '1', '1499932583882b6e8b6e664ef4078ab190190db85dff5', '1499932583882', 'dfd', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('11208', '623349220@qq.com', 'e10adc3949ba59abbe56e057f20f883e', '1', '149993459107158770473ae554ca5ac6c7b9424f25d68', '1499934591071', '123', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('11209', '18812674687@163.com', 'e10adc3949ba59abbe56e057f20f883e', '1', '149993481001051d7c510a7d944d8b13dca22f48f88bc', '1499934810010', '郭嘉', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('11210', '308767384@qq.com', 'e10adc3949ba59abbe56e057f20f883e', '1', '1499937032946f8fe0358889146eca632ee5bb5e5fb05', '1499937032946', 'admin2', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('11214', '2191572579@qq.com', '96e79218965eb72c92a549dd5a330112', '1', '1500002985761a2e26960a6324b2681b04cc953eb116e', '1500002985761', 'test', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
INSERT INTO `user` VALUES ('11215', '276095895@qq.com', '1e56de86d15eb7eb276fa704825f88cb', '1', '150000609217320be750968d04cbd99fd15ecb8748811', '1500006092174', 'WegYcx', 'http://od6v5lenq.bkt.clouddn.com/head.jpg', '1', '', '', '', '', '', '', '0', '0', '0', '0', '0', '');
