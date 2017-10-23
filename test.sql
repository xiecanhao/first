/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50635
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50635
File Encoding         : 65001

Date: 2017-10-23 17:15:36
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cachegood
-- ----------------------------
DROP TABLE IF EXISTS `cachegood`;
CREATE TABLE `cachegood` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `lastModify` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of cachegood
-- ----------------------------

-- ----------------------------
-- Table structure for good
-- ----------------------------
DROP TABLE IF EXISTS `good`;
CREATE TABLE `good` (
  `goodId` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL COMMENT '商品描述',
  `keyword` varchar(255) DEFAULT NULL COMMENT '商品关键词',
  PRIMARY KEY (`goodId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of good
-- ----------------------------

-- ----------------------------
-- Table structure for mid_c_g
-- ----------------------------
DROP TABLE IF EXISTS `mid_c_g`;
CREATE TABLE `mid_c_g` (
  `id` int(11) NOT NULL,
  `cacheId` int(11) DEFAULT NULL,
  `goodId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mid_c_g
-- ----------------------------

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `orderId` int(11) NOT NULL,
  `date` datetime DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `goodId` int(11) DEFAULT NULL,
  `count` int(11) DEFAULT NULL COMMENT '商品数量',
  `status` int(11) DEFAULT NULL COMMENT '订单状态',
  `shopId` int(11) DEFAULT NULL,
  PRIMARY KEY (`orderId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of order
-- ----------------------------

-- ----------------------------
-- Table structure for shop
-- ----------------------------
DROP TABLE IF EXISTS `shop`;
CREATE TABLE `shop` (
  `shopId` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `level` int(11) DEFAULT NULL COMMENT '商店等级',
  `userId` int(11) DEFAULT NULL COMMENT '店主id',
  PRIMARY KEY (`shopId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of shop
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `account` varchar(255) NOT NULL,
  `passwd` varchar(255) NOT NULL,
  `birthday` varchar(255) DEFAULT NULL,
  `age` int(11) unsigned zerofill DEFAULT NULL,
  `level` int(11) unsigned zerofill DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'aaa', 'xchao1', '123', null, null, null);
INSERT INTO `user` VALUES ('2', 'bbb', 'xchao2', '123', null, null, null);
INSERT INTO `user` VALUES ('3', '1316464', 'xchao3', '123', null, null, null);
