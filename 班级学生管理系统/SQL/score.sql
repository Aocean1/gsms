/*
 Navicat Premium Data Transfer

 Source Server         : sss
 Source Server Type    : MySQL
 Source Server Version : 80035
 Source Host           : localhost:3306
 Source Schema         : ssms

 Target Server Type    : MySQL
 Target Server Version : 80035
 File Encoding         : 65001

 Date: 17/12/2024 15:05:41
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for score
-- ----------------------------
DROP TABLE IF EXISTS `score`;
CREATE TABLE `score`  (
                          `SC_ID` int(11) NOT NULL,
                          `S_C_no` int(11) NOT NULL,
                          `grade` int(11) NULL DEFAULT NULL,
                          PRIMARY KEY (`SC_ID`, `S_C_no`) USING BTREE,
                          INDEX `ss_idx`(`SC_ID`) USING BTREE,
                          INDEX `tt_idx`(`S_C_no`) USING BTREE,
                          CONSTRAINT `sc_id` FOREIGN KEY (`SC_ID`) REFERENCES `student` (`S_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
                          CONSTRAINT `c_c_no` FOREIGN KEY (`S_C_no`) REFERENCES `course` (`Cno`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of score
-- ----------------------------
INSERT INTO `score` VALUES (20001, 1, 80);

SET FOREIGN_KEY_CHECKS = 1;
