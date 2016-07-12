/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 100113
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 100113
File Encoding         : 65001

Date: 2016-07-12 20:23:15
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for omades
-- ----------------------------
DROP TABLE IF EXISTS `omades`;
CREATE TABLE `omades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `omades` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `va8moi` int(10) DEFAULT NULL,
  `agones` int(11) DEFAULT NULL,
  `nikes` int(11) DEFAULT NULL,
  `isopalies` int(11) DEFAULT NULL,
  `ittes` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`,`omades`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of omades
-- ----------------------------
INSERT INTO `omades` VALUES ('1', 'APOEL', '3', '1', '1', '0', '0');
INSERT INTO `omades` VALUES ('2', 'Pafos', '2', '1', '0', '1', '0');
INSERT INTO `omades` VALUES ('3', 'Anorthwsh', '3', '1', '1', '0', '0');
INSERT INTO `omades` VALUES ('4', 'Apollwn', '1', '1', '0', '0', '1');
INSERT INTO `omades` VALUES ('5', 'AEK Larnakas', '1', '1', '0', '0', '1');
INSERT INTO `omades` VALUES ('6', 'Omonoia', '2', '1', '0', '1', '0');
SET FOREIGN_KEY_CHECKS=1;
