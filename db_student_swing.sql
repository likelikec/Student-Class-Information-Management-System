/*
Navicat MySQL Data Transfer

Source Server         : 本地数据库
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : db_student_swing

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2017-12-25 16:28:06
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_school_class`
-- ----------------------------
DROP TABLE IF EXISTS `t_school_class`;
CREATE TABLE `t_school_class` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `className` varchar(20) DEFAULT NULL,
  `classDesc` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_school_class
-- ----------------------------
INSERT INTO `t_school_class` VALUES ('12', '软件工程', '软件班级');
INSERT INTO `t_school_class` VALUES ('14', '软件工程2班', '软件工程是一门研究用工程化方法构建和维护有效的、实用的和高质量的软件的学科。它涉及程序设计语言、数据库、软件开发工具、系统平台、标准、设计模式等方面。在现代社会中，软件应用于多个方面。典型的软件有电子邮件、嵌入式系统、人机...');

-- ----------------------------
-- Table structure for `t_student`
-- ----------------------------
DROP TABLE IF EXISTS `t_student`;
CREATE TABLE `t_student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `sn` varchar(20) DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `dept` varchar(128) DEFAULT NULL,
  `classId` int(11) DEFAULT NULL,
  `address` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `classId` (`classId`) USING BTREE,
  CONSTRAINT `t_student_ibfk_1` FOREIGN KEY (`classId`) REFERENCES `t_school_class` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_student
-- ----------------------------
INSERT INTO `t_student` VALUES ('5', '张三', '11162656', '男', '计算机学院', '12', '上海市徐汇区肇嘉浜路101号');
INSERT INTO `t_student` VALUES ('6', '李四', '111324354', '男', '计算机学院', '14', '世纪大道11号');
INSERT INTO `t_student` VALUES ('7', '黎明', '3243232', '男', '计算机', '14', '上海陆家嘴');

-- ----------------------------
-- Table structure for `t_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', 'admin', 'admin');
