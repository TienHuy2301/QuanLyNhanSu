/*
 Navicat Premium Data Transfer

 Source Server         : MySQL
 Source Server Type    : MySQL
 Source Server Version : 80011
 Source Host           : localhost:3306
 Source Schema         : payroll

 Target Server Type    : MySQL
 Target Server Version : 80011
 File Encoding         : 65001

 Date: 23/12/2018 06:59:52
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for employee
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee`  (
  `idEmployee` int(11) UNSIGNED NOT NULL,
  `Employee Number` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `Last Name` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `First Name` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `SSN` decimal(10, 0) NOT NULL,
  `Pay Rate` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `Pay Rates_idPay Rates` int(11) NOT NULL,
  `Vacation Days` int(11) NULL DEFAULT NULL,
  `Paid To Date` decimal(2, 0) NULL DEFAULT NULL,
  `Paid Last Year` decimal(2, 0) NULL DEFAULT NULL,
  PRIMARY KEY (`Employee Number`, `Pay Rates_idPay Rates`) USING BTREE,
  UNIQUE INDEX `Employee Number_UNIQUE`(`Employee Number`) USING BTREE,
  INDEX `fk_Employee_Pay Rates_idx`(`Pay Rates_idPay Rates`) USING BTREE,
  CONSTRAINT `fk_Employee_Pay Rates` FOREIGN KEY (`Pay Rates_idPay Rates`) REFERENCES `pay rates` (`idpay rates`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of employee
-- ----------------------------
INSERT INTO `employee` VALUES (1, 1, 'Nguyễn', 'Văn Tèo', 12, '23', 1, 3, 2, 2);
INSERT INTO `employee` VALUES (33, 14, 'ha', 'Văn Tèo', 1234, NULL, 1, 5, NULL, NULL);
INSERT INTO `employee` VALUES (36, 15, 'Nguyễn ', 'Văn Lợi', 321654987, NULL, 1, 3, NULL, NULL);
INSERT INTO `employee` VALUES (22, 16, 'ha', 'Văn Tèo', 93474627, NULL, 2, NULL, NULL, NULL);
INSERT INTO `employee` VALUES (48, 17, 'huhu', 'haha', 12, NULL, 3, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for pay rates
-- ----------------------------
DROP TABLE IF EXISTS `pay rates`;
CREATE TABLE `pay rates`  (
  `idPay Rates` int(11) NOT NULL,
  `Pay Rate Name` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Value` decimal(10, 0) NOT NULL,
  `Tax Percentage` decimal(10, 0) NOT NULL,
  `Pay Type` int(11) NOT NULL,
  `Pay Amount` decimal(10, 0) NOT NULL,
  `PT - Level C` decimal(10, 0) NOT NULL,
  PRIMARY KEY (`idPay Rates`) USING BTREE,
  INDEX `idPay Rates`(`idPay Rates`) USING BTREE,
  INDEX `idPay Rates_2`(`idPay Rates`) USING BTREE,
  INDEX `idPay Rates_3`(`idPay Rates`) USING BTREE,
  INDEX `idPay Rates_4`(`idPay Rates`) USING BTREE,
  INDEX `idPay Rates_5`(`idPay Rates`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pay rates
-- ----------------------------
INSERT INTO `pay rates` VALUES (1, 'Fresher Developer', 5000000, 5, 1, 4750000, 1);
INSERT INTO `pay rates` VALUES (2, 'Fresher Tester', 8000000, 6, 2, 7520000, 2);
INSERT INTO `pay rates` VALUES (3, 'Junior Developer', 10000000, 7, 1, 9300000, 3);
INSERT INTO `pay rates` VALUES (4, 'Junior Tester', 11000000, 8, 2, 10120000, 4);
INSERT INTO `pay rates` VALUES (5, 'Senior Developer', 12000000, 9, 1, 12000000, 5);
INSERT INTO `pay rates` VALUES (6, 'Senior Tester', 13000000, 5, 2, 11000000, 6);
INSERT INTO `pay rates` VALUES (7, 'Lead Developer', 15000000, 6, 2, 13000000, 7);
INSERT INTO `pay rates` VALUES (8, 'Architect', 16000000, 3, 2, 12000000, 8);
INSERT INTO `pay rates` VALUES (9, 'Technical Tester', 15000000, 5, 2, 12000000, 9);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `User_ID` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`User_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'asd', 'asdqwe');

SET FOREIGN_KEY_CHECKS = 1;
