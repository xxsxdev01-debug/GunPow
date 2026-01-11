/*
 Navicat Premium Data Transfer

 Source Server         : 本地
 Source Server Type    : MySQL
 Source Server Version : 50529
 Source Host           : localhost:3306
 Source Schema         : aa

 Target Server Type    : MySQL
 Target Server Version : 50529
 File Encoding         : 65001

 Date: 22/12/2021 10:20:53
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tab_account
-- ----------------------------
DROP TABLE IF EXISTS `tab_account`;
CREATE TABLE `tab_account`  (
  `id` int(11) NOT NULL COMMENT '主键：主账号id',
  `udid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '设备编号',
  `user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '账号（不能重复）',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '账号对应的密码',
  `status` tinyint(4) NOT NULL COMMENT '账号是否有效（1为有效,0为禁止）',
  `create_time` datetime NOT NULL COMMENT '账号注册时间',
  `channel` int(4) NULL DEFAULT 0,
  `login_times` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `IX_USERNAME`(`user_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户账号表，通用表' ROW_FORMAT = Compact;

SET FOREIGN_KEY_CHECKS = 1;
