/*
 Navicat MySQL Data Transfer

 Source Server         : First
 Source Server Type    : MySQL
 Source Server Version : 80029
 Source Host           : localhost:3306
 Source Schema         : test

 Target Server Type    : MySQL
 Target Server Version : 80029
 File Encoding         : 65001

 Date: 25/06/2022 20:44:42
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for chip_data
-- ----------------------------
DROP TABLE IF EXISTS `chip_data`;
CREATE TABLE `chip_data`  (
  `chip_index` int NOT NULL,
  `x_position` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `y_position` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `operator_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`chip_index`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of chip_data
-- ----------------------------
INSERT INTO `chip_data` VALUES (1, '111', '222', 'a');
INSERT INTO `chip_data` VALUES (2, '161', '282', 'a');
INSERT INTO `chip_data` VALUES (3, '211', '232', 'b');
INSERT INTO `chip_data` VALUES (4, '211', '234', 'c');
INSERT INTO `chip_data` VALUES (5, '51', '22', 'a');
INSERT INTO `chip_data` VALUES (6, '81', '252', 'c');


-- ----------------------------
-- Table structure for chip_record
-- ----------------------------
DROP TABLE IF EXISTS `chip_record`;
CREATE TABLE `chip_record`  (
  `operation_index` int NOT NULL AUTO_INCREMENT COMMENT '操作次序',
  `date` timestamp NULL DEFAULT NULL COMMENT '操作时间',
  `operator_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作者的名字',
  `task_list` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '任务清单',
  `chip_num` int NULL DEFAULT NULL COMMENT '芯片数量',
  PRIMARY KEY (`operation_index`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of chip_record
-- ----------------------------
INSERT INTO `chip_record` VALUES (1, '2021-06-01 00:00:01', 'a', '联动控制', 12);
INSERT INTO `chip_record` VALUES (2, '2020-01-01 00:00:01', 'b', '数据库搭建', 23);
INSERT INTO `chip_record` VALUES (3, '2018-01-01 00:00:01', 'c', '测试', 32);
INSERT INTO `chip_record` VALUES (4, '2019-01-01 00:00:01', 'a', '设计', 21);
INSERT INTO `chip_record` VALUES (5, '2018-11-01 00:00:01', 'b', 'mapping', 52);
INSERT INTO `chip_record` VALUES (6, '2016-01-01 00:00:01', 'c', '任务', 4);

SET FOREIGN_KEY_CHECKS = 1;
