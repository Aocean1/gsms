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
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher`  (
                            `T_ID` int(11) NOT NULL,
                            `name` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                            `sex` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                            `age` int(11) NULL DEFAULT NULL,
                            `phone` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                            `passcode` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                            PRIMARY KEY (`T_ID`) USING BTREE,
                            INDEX `a_idx`(`T_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES (10001, '赵老师', '男', 29, '2345678', 'abc');
INSERT INTO `teacher` VALUES (10002, '徐老师', '男', 31, '5345678', 'abc');
INSERT INTO `teacher` VALUES (10003, '庞老师', '女', 28, '7634567', 'abc');
INSERT INTO `teacher` VALUES (10004, '张老师', '男', 40, '45678', 'abc');

SET FOREIGN_KEY_CHECKS = 1;
