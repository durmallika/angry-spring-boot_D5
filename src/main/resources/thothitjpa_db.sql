/*
Navicat MySQL Data Transfer

Source Server         : LOCAL
Source Server Version : 50730
Source Host           : localhost:3306
Source Database       : thothitjpa_db

Target Server Type    : MYSQL
Target Server Version : 50730
File Encoding         : 65001

Date: 2022-10-13 05:22:05
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `customer_accounts`
-- ----------------------------
DROP TABLE IF EXISTS `customer_accounts`;
CREATE TABLE `customer_accounts` (
  `ac_no` bigint(20) NOT NULL,
  `balance` int(11) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `doe` datetime DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ac_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of customer_accounts
-- ----------------------------
INSERT INTO `customer_accounts` VALUES ('32424', '9292929', 'Testing', '2022-10-13 05:20:06', 'Saving');
INSERT INTO `customer_accounts` VALUES ('22554444', '50000', 'Normal not account', '2022-09-23 05:11:48', 'Parent Account');
INSERT INTO `customer_accounts` VALUES ('2223003223', '2992', 'Normal account', '2022-09-22 05:12:15', 'Saving Account');
INSERT INTO `customer_accounts` VALUES ('93238383883', '902029292', 'HEY! WHAT ARE U DOING', '2022-10-13 05:21:25', 'MY ACCOUNT');

-- ----------------------------
-- Table structure for `hibernate_sequence`
-- ----------------------------
DROP TABLE IF EXISTS `hibernate_sequence`;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of hibernate_sequence
-- ----------------------------
INSERT INTO `hibernate_sequence` VALUES ('3');

-- ----------------------------
-- Table structure for `jsignups_tbl`
-- ----------------------------
DROP TABLE IF EXISTS `jsignups_tbl`;
CREATE TABLE `jsignups_tbl` (
  `sid` int(11) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  `photo` longblob,
  `username` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of jsignups_tbl
-- ----------------------------
INSERT INTO `jsignups_tbl` VALUES ('2', 'werwr', 'javahunk100@gmail.com', 'Male', '234242423', 'test', 0x323334, 'javahunk100@gmail.com');
