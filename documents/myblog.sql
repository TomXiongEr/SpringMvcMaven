/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : myblog

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2017-02-11 18:31:37
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for blog
-- ----------------------------
DROP TABLE IF EXISTS `blog`;
CREATE TABLE `blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `content` varchar(5535) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `editer` varchar(255) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `count1` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `notice` varchar(255) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog
-- ----------------------------
INSERT INTO `blog` VALUES ('2', '鼠标悬停图片、文字css3效果', '    English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web', '../image_upload/file_1398842463989.jpg', '2014-04-30', '佚名', '4', '0', '心得笔记', 'recommendArticles', '心得笔记');
INSERT INTO `blog` VALUES ('3', '从摄影作品中获取网页颜色搭配技巧', 'English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web', '../image_upload/file_1398842746601.jpg', '2014-04-30', '佚名', '1', '0', '心得体会', 'recommendArticles', '心得体会');
INSERT INTO `blog` VALUES ('4', 'HTML5技术将推动移动浏览器变革', 'English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web', '../image_upload/file_1398842886496.jpg', '2014-04-30', '佚名', '0', '0', 'html5', '', 'html5');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(20) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL,
  `groupIdS` varchar(100) DEFAULT NULL,
  `nickName` varchar(255) DEFAULT NULL COMMENT '用户昵称',
  `email` varchar(50) DEFAULT NULL COMMENT '用户邮箱',
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('22', '游客', '', '9', null, null);
INSERT INTO `user` VALUES ('23', 'admin', '123456', '8', null, null);
INSERT INTO `user` VALUES ('24', 'xiongm', '123456', null, 'xiongm', '1643010825@qq.com');
