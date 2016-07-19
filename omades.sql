/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 100113
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 100113
File Encoding         : 65001

Date: 2016-07-19 14:05:54
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for omades
-- ----------------------------
DROP TABLE IF EXISTS `omades`;
CREATE TABLE `omades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `va8moi` int(10) NOT NULL,
  `agones` int(11) NOT NULL,
  `nikes` int(11) NOT NULL,
  `isopalies` int(11) NOT NULL,
  `ittes` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of omades
-- ----------------------------
INSERT INTO `omades` VALUES ('1', 'ΑΝΟΡΘΩΣΗ', '3', '1', '1', '0', '0');
INSERT INTO `omades` VALUES ('2', 'ΠΑΦΟΣ', '2', '1', '0', '1', '0');
INSERT INTO `omades` VALUES ('3', 'ΑΠΟΕΛ', '3', '1', '1', '0', '0');
INSERT INTO `omades` VALUES ('4', 'ΟΜΟΝΟΙΑ', '2', '1', '0', '1', '0');
INSERT INTO `omades` VALUES ('5', 'ΑΠΟΛΛΩΝ', '1', '1', '0', '0', '1');
INSERT INTO `omades` VALUES ('6', 'ΑΕΚ Λαρνακας', '1', '1', '0', '0', '1');

-- ----------------------------
-- Table structure for pextes
-- ----------------------------
DROP TABLE IF EXISTS `pextes`;
CREATE TABLE `pextes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `omada_id` int(11) NOT NULL,
  `onomatoeponimo` varchar(255) CHARACTER SET utf8 NOT NULL,
  `etos_genisis` int(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `foreign_pextes` (`omada_id`),
  CONSTRAINT `foreign_pextes` FOREIGN KEY (`omada_id`) REFERENCES `omades` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of pextes
-- ----------------------------
INSERT INTO `pextes` VALUES ('1', '1', 'Γιάννης Οκκάς', '1977');
INSERT INTO `pextes` VALUES ('2', '2', 'Αριστοτελους Γεωργιος', '1984');
INSERT INTO `pextes` VALUES ('3', '3', 'Κωστάκης Αρτυματάς', '1993');
INSERT INTO `pextes` VALUES ('4', '4', 'Γιώργος Σαββίδης', '1962');
INSERT INTO `pextes` VALUES ('5', '5', 'Γιώργος Βασιλείου', '1984');
INSERT INTO `pextes` VALUES ('6', '6', 'Αλέκος Αλέκου', '1983');
INSERT INTO `pextes` VALUES ('7', '1', 'Ανδρέας Κίττου', '1996');
INSERT INTO `pextes` VALUES ('8', '1', 'Ανδρέας Μακρής', '1996');
INSERT INTO `pextes` VALUES ('9', '2', 'Γιάνις Κρούμινς', '1994');
INSERT INTO `pextes` VALUES ('10', '2', 'Κάρλος Μάρκες', '1984');
INSERT INTO `pextes` VALUES ('11', '3', 'Ανδρέας Παρασκευάς', '1998');
INSERT INTO `pextes` VALUES ('12', '3', 'Νικόλας Ιωάννου', '1995');
INSERT INTO `pextes` VALUES ('13', '4', 'Άρης Σοϊλέδης', '1991');
INSERT INTO `pextes` VALUES ('14', '4', ' Λαουρέντιου Μπρανέσκου', '1994');
INSERT INTO `pextes` VALUES ('15', '5', 'Μιχάλης Φανή', '1981');
INSERT INTO `pextes` VALUES ('16', '5', 'Αγγελής Αγγελή', '1989');
INSERT INTO `pextes` VALUES ('17', '6', 'Δημήτρης Κυπριανού', '1993');
INSERT INTO `pextes` VALUES ('18', '6', 'Νίκος Εγγλέζου', '1994');

-- ----------------------------
-- Table structure for stixia
-- ----------------------------
DROP TABLE IF EXISTS `stixia`;
CREATE TABLE `stixia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `omada_id` int(11) NOT NULL,
  `gipedo` varchar(255) CHARACTER SET utf8 NOT NULL,
  `topo8esia` varchar(255) CHARACTER SET utf8 NOT NULL,
  `Website` varchar(255) CHARACTER SET utf8 NOT NULL,
  `pic` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `foreign_stixia` (`omada_id`),
  CONSTRAINT `foreign_stixia` FOREIGN KEY (`omada_id`) REFERENCES `omades` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of stixia
-- ----------------------------
INSERT INTO `stixia` VALUES ('1', '3', 'Νέο Στάδιο ΓΣΠ', 'Λευκωσία', 'http://www.apoelfc.com.cy/', 'img/APOEL.png');
INSERT INTO `stixia` VALUES ('2', '1', 'Στάδιο Αντώνης Παπαδόπουλος', 'Λάρνακα', 'http://www.anorthosisfc.com.cy/', 'img/anw.png');
INSERT INTO `stixia` VALUES ('3', '2', 'Παφιακό Στάδιο', 'Πάφος ', 'http://www.kerkida.net/articles/v-katigoria/eidiseis/pafos-fc', 'img/Pafos.png');
INSERT INTO `stixia` VALUES ('4', '4', 'Νέο Στάδιο ΓΣΠ', 'Λευκωσία', 'https://omonoianews.com/', 'img/Omonia.png');
INSERT INTO `stixia` VALUES ('5', '5', 'Τσίρειο Στάδιο', 'Λεμεσός', 'http://www.apollon.com.cy/gr/apollon-home', 'img/apollon.png');
INSERT INTO `stixia` VALUES ('6', '6', 'Νέο ΓΣΖ', 'Λάρνακα', 'http://www.aek.com.cy/', 'img/AEK_Larnaca.png');
SET FOREIGN_KEY_CHECKS=1;
