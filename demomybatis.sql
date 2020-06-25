/*
Navicat MySQL Data Transfer

Source Server         : 主机
Source Server Version : 50726
Source Host           : localhost:3306
Source Database       : demomybatis

Target Server Type    : MYSQL
Target Server Version : 50726
File Encoding         : 65001

Date: 2020-06-25 09:09:43
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `createtime` datetime NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '0表示用户不可用 1表示用户可用',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('12', '张三123', 'zhangfsna', '2020-06-24 21:46:34', '1');
INSERT INTO `user` VALUES ('6', '王五', '11', '2020-06-24 21:01:17', '1');
INSERT INTO `user` VALUES ('3', '张三', '12345', '2020-06-24 18:59:53', '0');
INSERT INTO `user` VALUES ('4', '李四', '12334', '2020-06-24 19:00:05', '1');
INSERT INTO `user` VALUES ('7', '王五', '11', '2020-06-24 21:01:17', '1');
INSERT INTO `user` VALUES ('9', '123', '123', '2020-06-24 21:02:39', '1');
