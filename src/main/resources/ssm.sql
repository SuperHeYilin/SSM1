/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50605
Source Host           : localhost:3306
Source Database       : ssm

Target Server Type    : MYSQL
Target Server Version : 50605
File Encoding         : 65001

Date: 2018-05-22 23:03:12
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for appointment
-- ----------------------------
DROP TABLE IF EXISTS `appointment`;
CREATE TABLE `appointment` (
  `book_id` bigint(20) NOT NULL COMMENT '图书ID',
  `student_id` bigint(20) NOT NULL COMMENT '学号',
  `appoint_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '预约时间',
  PRIMARY KEY (`book_id`,`student_id`),
  KEY `idx_appoint_time` (`appoint_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='预约图书表';

-- ----------------------------
-- Records of appointment
-- ----------------------------

-- ----------------------------
-- Table structure for book
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book` (
  `book_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '图书ID',
  `name` varchar(100) NOT NULL COMMENT '图书名称',
  `number` int(11) NOT NULL COMMENT '馆藏数量',
  PRIMARY KEY (`book_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1004 DEFAULT CHARSET=utf8 COMMENT='图书表';

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES ('1000', 'Java程序设计', '10');
INSERT INTO `book` VALUES ('1001', '数据结构', '10');
INSERT INTO `book` VALUES ('1002', '设计模式', '10');
INSERT INTO `book` VALUES ('1003', '编译原理', '10');
