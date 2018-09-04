/*
Navicat MySQL Data Transfer

Source Server         : 本地windows上的mysql
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2018-03-29 17:30:03
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
	  `user_id` int(11) NOT NULL AUTO_INCREMENT,
	  `user_name` varchar(50) NOT NULL,
	  `user_qq` varchar(50) NOT NULL,
	  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'shenyi', '123456');
INSERT INTO `users` VALUES ('2', 'zhangsan', '123456');

