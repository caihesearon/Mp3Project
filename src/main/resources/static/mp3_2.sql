/*
 Navicat Premium Data Transfer

 Source Server         : mysqlDemo
 Source Server Type    : MySQL
 Source Server Version : 50624
 Source Host           : localhost:3306
 Source Schema         : mp3_2

 Target Server Type    : MySQL
 Target Server Version : 50624
 File Encoding         : 65001

 Date: 25/03/2020 09:50:32
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tb_admin
-- ----------------------------
DROP TABLE IF EXISTS `tb_admin`;
CREATE TABLE `tb_admin`  (
  `ADMIN_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '管理员主键  编号',
  `ADMIN_NAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '管理员账号  姓名',
  `ADMIN_PHONE` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '管理员手机号  联系电话',
  `ADMIN_PASSWORD` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '管理员登录密码',
  `ADMIN_SEX` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '管理员性别',
  PRIMARY KEY (`ADMIN_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_admin
-- ----------------------------
INSERT INTO `tb_admin` VALUES (1, '陈颖', '1777', '123', '男');

-- ----------------------------
-- Table structure for tb_mp3
-- ----------------------------
DROP TABLE IF EXISTS `tb_mp3`;
CREATE TABLE `tb_mp3`  (
  `MP3_ID` int(11) NOT NULL AUTO_INCREMENT,
  `MP3_NAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `MP3_MAN` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `MP3_MANIMG` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `MP3_SRC` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `MP3_BIG` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`MP3_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 39 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_mp3
-- ----------------------------
INSERT INTO `tb_mp3` VALUES (2, '光阴的故事', '罗大佑', '', '', '4.2M');
INSERT INTO `tb_mp3` VALUES (3, '飞得更高', '汪峰', '', '', '3.8M');
INSERT INTO `tb_mp3` VALUES (4, '忘情水', 'images//lioudehua.png', 'images//lioudehua.png', 'mp3/1347614046.mp3', '4.8M');
INSERT INTO `tb_mp3` VALUES (6, '免失志', '刘德2华', 'upload/4f984573-507b-4cc4-a1ce-306f2a1287a9.png', 'upload/0e5401a9-9d94-4448-853a-fef9811b5882.png', '3.3152514MB');
INSERT INTO `tb_mp3` VALUES (7, '情醉', '玄觞', 'upload/b288365e-7a72-40ab-9bcd-b3ea98f5dad6.png', 'upload/7e160da8-a0cb-4cb9-a530-7be9a6e78a12.png', '4MB');
INSERT INTO `tb_mp3` VALUES (18, '仙侠歌', '情醉', 'upload/8ce7d449-dbfb-413d-8886-17ef41dc3c1a.png', 'upload/e9bcd575-ac22-46dc-b16f-7280ce7fd38d.mp3', '4MB');
INSERT INTO `tb_mp3` VALUES (19, '仙3侠歌', '情醉22', 'upload/86501e71-90bf-463c-b19e-94e8c8af249c.png', 'upload/dbc8dba4-1133-4ccc-ad03-ecf6bf66fe5a.mp3', '3MB');
INSERT INTO `tb_mp3` VALUES (20, 'dsfd', 'asdfasd', 'sadf', 'sadfsdf', 'sdafs');
INSERT INTO `tb_mp3` VALUES (21, 'dsfsdf', 'sadsf', 'dffd', 'asdf', 'sadf');
INSERT INTO `tb_mp3` VALUES (22, 'sds', 'fd', 'sadfdsf', 'dsfdsf', 'dsfd');
INSERT INTO `tb_mp3` VALUES (23, 'sds', 'fgfg', 'sdfsdf', 'fgfg', 'dsfsd');
INSERT INTO `tb_mp3` VALUES (24, 'trtr', 'hjjh', 'sds', 'jhjh', '111');
INSERT INTO `tb_mp3` VALUES (25, '仙侠歌', '情醉222', 'upload/1e8cc119-f193-4c3a-890f-c43ff0c28e3c.png', 'upload/dddafb9a-79f1-4bed-965a-679f7b7b9417.mp3', '4MB');
INSERT INTO `tb_mp3` VALUES (26, '武系-仙侠歌', '情醉202', 'upload/00f0b0f5-8e37-4843-9ef8-376dcc67435e.png', 'upload/c086d9ee-4a29-42f3-b4bc-01fab4481e1a.mp3', '4MB');
INSERT INTO `tb_mp3` VALUES (27, 'ewrewr', 'dsfsd', 'dfdf', '133543', 'sdfdsf');
INSERT INTO `tb_mp3` VALUES (28, 'sdfsdf', 'ghgh', 'assd', 'fggh', '1345');
INSERT INTO `tb_mp3` VALUES (29, 'gfhgff', 'dasdas', 'sdfds', 'hjhjhj', 'sfdsfdsfsd');
INSERT INTO `tb_mp3` VALUES (30, 'sadfasdf', 'jhjhgj', 'asdsafd', '2134354', '2346545');
INSERT INTO `tb_mp3` VALUES (31, 'sfsd', '564645', 'asdfdsfsdf', 'hghgh', 'ghjhj');
INSERT INTO `tb_mp3` VALUES (32, 'sfsdfsd', 'fgfdgfd', 'hgjhgj', '3165656', '454');
INSERT INTO `tb_mp3` VALUES (33, 'sdfsdf', '4534545', 'sfsdafdf', 'asdfsdfsd', '3454546');
INSERT INTO `tb_mp3` VALUES (34, 'sdfsdfsdf', 'fdgfdgd', 'eqweqwa', 'asdfdsfsd', '254345');
INSERT INTO `tb_mp3` VALUES (35, 'sfsdfsf', 'sfdfs', 'sdfsdfsd', 'fdgfdg', 'rwerwerwe');
INSERT INTO `tb_mp3` VALUES (36, 'dsfsdfds', 'ghgjhgj', 'dsfsdfs', '32466768', 'sdfsdf');
INSERT INTO `tb_mp3` VALUES (37, 'asdf', '55', 'dfdf', 'fadfsdf', 'fgfdgdf');
INSERT INTO `tb_mp3` VALUES (38, 'sadsa', 'sdfgdfg', 'dfgfdg', 'asdsad', 'rwerwe');

SET FOREIGN_KEY_CHECKS = 1;
