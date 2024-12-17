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

-- 设置字符编码
SET NAMES utf8mb4;
-- 暂时关闭外键检查
SET FOREIGN_KEY_CHECKS = 0;


-- 创建 course1 表
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course`  (
                            `Cno` int(11) NOT NULL,
                            `Cname` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                            `C_T_ID` int(11) NOT NULL,
                            PRIMARY KEY (`Cno`) USING BTREE,
                            CONSTRAINT `a` FOREIGN KEY (`C_T_ID`) REFERENCES `teacher` (`T_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;


-- 插入数据到 course1 表
INSERT INTO `course` VALUES (1, 'Java',10001);
INSERT INTO `course` VALUES (2, 'C++',10002);
INSERT INTO `course` VALUES (3, '数据库',10003);
INSERT INTO `course` VALUES (4, '数据结构',10004);


-- 重新开启外键检查
SET FOREIGN_KEY_CHECKS = 1;