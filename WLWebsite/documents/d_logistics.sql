/*
Navicat MySQL Data Transfer

Source Server         : MySQL连接
Source Server Version : 50717
Source Host           : 127.0.0.1:3306
Source Database       : d_logistics

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2018-03-06 09:19:08
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_administrator
-- ----------------------------
DROP TABLE IF EXISTS `t_administrator`;
CREATE TABLE `t_administrator` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL COMMENT '姓名',
  `sex` tinyint(4) DEFAULT NULL COMMENT '性别,0女，1男',
  `phone` char(11) DEFAULT NULL COMMENT '手机号码',
  `identity` char(18) DEFAULT NULL COMMENT '身份证号码',
  `address` varchar(100) DEFAULT NULL COMMENT '联系地址',
  `date` datetime DEFAULT NULL COMMENT '注册时间',
  `status` varchar(25) DEFAULT NULL COMMENT '0可用，1禁用',
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_dynamic
-- ----------------------------
DROP TABLE IF EXISTS `t_dynamic`;
CREATE TABLE `t_dynamic` (
  `dyid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `date` datetime DEFAULT NULL COMMENT '发布时间',
  `content` text COMMENT '内容',
  `pic` varchar(255) DEFAULT NULL COMMENT '封面图片',
  PRIMARY KEY (`dyid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_infotmation
-- ----------------------------
DROP TABLE IF EXISTS `t_infotmation`;
CREATE TABLE `t_infotmation` (
  `fid` int(11) NOT NULL AUTO_INCREMENT,
  `content` text COMMENT '内容',
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `date` datetime DEFAULT NULL COMMENT '发布时间',
  `pic` varchar(255) DEFAULT NULL COMMENT '插图',
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_media
-- ----------------------------
DROP TABLE IF EXISTS `t_media`;
CREATE TABLE `t_media` (
  `mid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `content` text COMMENT '内容',
  `pic` varchar(255) DEFAULT NULL COMMENT '封面图片',
  `date` datetime DEFAULT NULL COMMENT '发布时间',
  `url` varchar(255) DEFAULT NULL COMMENT '链接地址',
  PRIMARY KEY (`mid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_question
-- ----------------------------
DROP TABLE IF EXISTS `t_question`;
CREATE TABLE `t_question` (
  `qid` int(11) NOT NULL AUTO_INCREMENT,
  `content` text COMMENT '内容',
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `sort` varchar(255) DEFAULT NULL COMMENT '通用0，货主1，车主2',
  PRIMARY KEY (`qid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_recruit
-- ----------------------------
DROP TABLE IF EXISTS `t_recruit`;
CREATE TABLE `t_recruit` (
  `rid` int(11) NOT NULL AUTO_INCREMENT,
  `content` text COMMENT '内容',
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `img` varchar(255) DEFAULT NULL COMMENT '图片',
  PRIMARY KEY (`rid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_slideshow
-- ----------------------------
DROP TABLE IF EXISTS `t_slideshow`;
CREATE TABLE `t_slideshow` (
  `hid` int(11) NOT NULL AUTO_INCREMENT,
  `pic1` varchar(255) DEFAULT NULL COMMENT '图片1',
  `pic2` varchar(255) DEFAULT '' COMMENT '图片2',
  `pic3` varchar(255) DEFAULT NULL COMMENT '图片3',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
