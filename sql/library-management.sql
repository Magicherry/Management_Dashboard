/*
 Navicat Premium Data Transfer

 Source Server         : mysqlX
 Source Server Type    : MySQL
 Source Server Version : 80031 (8.0.31)
 Source Host           : localhost:3306
 Source Schema         : library-management

 Target Server Type    : MySQL
 Target Server Version : 80031 (8.0.31)
 File Encoding         : 65001

 Date: 05/01/2023 16:57:22
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户名',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '联系方式',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '邮箱',
  `createtime` datetime DEFAULT CURRENT_TIMESTAMP,
  `updatetime` datetime DEFAULT NULL,
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '密码',
  `status` tinyint(1) DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `username_key` (`username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of admin
-- ----------------------------
BEGIN;
INSERT INTO `admin` (`id`, `username`, `phone`, `email`, `createtime`, `updatetime`, `password`, `status`) VALUES (3, 'Magicherry', '13681756546', '13681756546@139.com', '2022-12-27 20:36:55', '2023-01-01 22:17:01', '7f0e50a3c41c3f61e2d0bb7f127d9c6e', 1);
INSERT INTO `admin` (`id`, `username`, `phone`, `email`, `createtime`, `updatetime`, `password`, `status`) VALUES (7, 'admin', '13681756363', 'zyt680129@gmail.com', '2023-01-05 14:28:53', NULL, '2c29132d87e05f16747063032432a9bf', 1);
INSERT INTO `admin` (`id`, `username`, `phone`, `email`, `createtime`, `updatetime`, `password`, `status`) VALUES (8, 'admin114', '13681145141', 'ZYT252930@163.com', '2023-01-05 14:29:49', NULL, '1938de1e0cd60fdf8db1f32bee4abc7f', 1);
COMMIT;

-- ----------------------------
-- Table structure for book
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  `description` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '描述',
  `publish_date` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '出版日期',
  `author` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '作者',
  `publisher` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '出版社',
  `category` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '分类',
  `book_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '标准码',
  `cover` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '封面',
  `createtime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updatetime` datetime DEFAULT NULL COMMENT '更新时间',
  `score` int DEFAULT NULL COMMENT '积分',
  `nums` int DEFAULT '0' COMMENT '数量',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `book_no_index` (`book_no`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of book
-- ----------------------------
BEGIN;
INSERT INTO `book` (`id`, `name`, `description`, `publish_date`, `author`, `publisher`, `category`, `book_no`, `cover`, `createtime`, `updatetime`, `score`, `nums`) VALUES (1, '西游记幼儿美绘本（全10册）', '中国四大名著之一，西游记3-8岁版，彩绘注音，有声伴读。49款夸张角色，610张精美插图， 29个西游问答，10大智力挑战，以一种超有趣的方式亲近名著经典。', '2022-10-17', '吕进', '少年儿童出版社', '历史文化 > 唐朝文化', 'ISBN：9787558911156', 'http://img3m7.ddimg.cn/10/30/25276987-1_w_44.jpg', '2022-10-17 21:35:14', '2022-10-19 00:00:00', 10, 1);
INSERT INTO `book` (`id`, `name`, `description`, `publish_date`, `author`, `publisher`, `category`, `book_no`, `cover`, `createtime`, `updatetime`, `score`, `nums`) VALUES (6, 'Java 12程序设计学习指南', '教你学习java基础语法。', '2022-10-06', '桂超', '科技出版社', '编程', 'JAVA_212113123', 'http://localhost:9090/api/book/file/download/1672387709094?&token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJhdWQiOiIxIiwiZXhwIjoxNjczNjgzNzA5fQ.119S_UURTIMfAI5exawystv2wsgB3QRVga1MoRUC8mo', '2022-10-17 22:30:01', '2022-12-30 00:00:00', 20, 100);
INSERT INTO `book` (`id`, `name`, `description`, `publish_date`, `author`, `publisher`, `category`, `book_no`, `cover`, `createtime`, `updatetime`, `score`, `nums`) VALUES (7, '十万个为什么', '从1961年开始，《十万个为什么》被业界视作图书品牌，大规模开发利用，同名图书层出不穷，但是上海少年儿童出版社出版的《十万个为什么》凭借其独特的编辑理念和对质量的严格要求，仍然成为广大读者的第一选择。', '2013-03-04', '韩启德', '少年儿童出版社', '科技 > 高新科技 > 微分子科技', 'BKQS-233949', 'https://m.360buyimg.com/mobilecms/s750x750_jfs/t1/45435/11/4963/220980/5d284b41E424baf10/fa587157f884fded.jpg!q80.dpg', '2022-10-17 22:30:59', '2022-12-28 00:00:00', 10, 98);
INSERT INTO `book` (`id`, `name`, `description`, `publish_date`, `author`, `publisher`, `category`, `book_no`, `cover`, `createtime`, `updatetime`, `score`, `nums`) VALUES (10, '钢铁是怎样炼成的', '说通过记叙保尔·柯察金的成长道路告诉人们，一个人只有在革命的艰难困苦中战胜敌人也战胜自己，只有在把自己的追求和祖国、人民的利益联系在一起的时候，才会创造出奇迹，才会成长为钢铁战士。', '1933-03-02', '尼古拉·奥斯特洛夫斯基', '23333', '历史文化 > 现代文化', 'GT-121313213', 'http://localhost:9090/api/book/file/download/1672386729107?&token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJhdWQiOiIxIiwiZXhwIjoxNjczNjgyNzI5fQ.J3YVxlUfN37IBDKdoryVAZZmNO4zR5AxLlXcDwsdt9Q', '2022-10-25 22:09:08', '2022-12-30 00:00:00', 20, 100);
INSERT INTO `book` (`id`, `name`, `description`, `publish_date`, `author`, `publisher`, `category`, `book_no`, `cover`, `createtime`, `updatetime`, `score`, `nums`) VALUES (11, '城南旧事', '《城南旧事》是台湾女作家林海音的代表作。该作品通过英子童稚的双眼对童年往事的回忆，讲述了一段关于英子童年时的故事，反映了作者对童年的怀念和对北京城南的思念。', '1960-02-03', '林海音', '光启出版社', '历史文化 > 现代文化', 'DTG-998067', 'http://localhost:9090/api/book/file/download/1672386776293?&token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJhdWQiOiIxIiwiZXhwIjoxNjczNjgyNzc2fQ.o1_g2JibLz6DfSHz7ORywHzeDljYQOcE2mtZt6JzjN0', '2022-12-27 20:27:14', '2023-01-01 00:00:00', 10, 1);
COMMIT;

-- ----------------------------
-- Table structure for borrow
-- ----------------------------
DROP TABLE IF EXISTS `borrow`;
CREATE TABLE `borrow` (
  `id` int NOT NULL AUTO_INCREMENT,
  `book_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '图书名称',
  `book_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '图书标准码',
  `user_no` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户会员码',
  `user_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户名称',
  `user_phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户联系方式',
  `createtime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updatetime` datetime DEFAULT NULL COMMENT '更新时间',
  `score` int DEFAULT NULL COMMENT '借书积分',
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '已借出' COMMENT '借书状态',
  `days` int DEFAULT '1' COMMENT '借书天数',
  `return_date` datetime DEFAULT NULL COMMENT '归还日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of borrow
-- ----------------------------
BEGIN;
INSERT INTO `borrow` (`id`, `book_name`, `book_no`, `user_no`, `user_name`, `user_phone`, `createtime`, `updatetime`, `score`, `status`, `days`, `return_date`) VALUES (2, '222', '333', '20220927-2094581083', '李芸', '138999009988', '2022-10-19 22:06:32', NULL, 10, '已借出', 2, '2022-10-21 00:00:00');
INSERT INTO `borrow` (`id`, `book_name`, `book_no`, `user_no`, `user_name`, `user_phone`, `createtime`, `updatetime`, `score`, `status`, `days`, `return_date`) VALUES (3, '222', '22222', '20220927-2094581083', '李芸', '138999009988', '2022-10-19 22:15:28', NULL, 25, '已借出', 3, '2022-10-22 00:00:00');
INSERT INTO `borrow` (`id`, `book_name`, `book_no`, `user_no`, `user_name`, `user_phone`, `createtime`, `updatetime`, `score`, `status`, `days`, `return_date`) VALUES (4, '222', '22222', '20220927-2094581083', '李芸', '138999009988', '2022-10-19 22:16:00', NULL, 25, '已借出', 4, '2022-10-23 00:00:00');
INSERT INTO `borrow` (`id`, `book_name`, `book_no`, `user_no`, `user_name`, `user_phone`, `createtime`, `updatetime`, `score`, `status`, `days`, `return_date`) VALUES (5, '222', '22222', '20220927-2094581083', '李芸', '138999009988', '2022-10-19 22:16:26', NULL, 30, '已借出', 5, '2022-10-24 00:00:00');
INSERT INTO `borrow` (`id`, `book_name`, `book_no`, `user_no`, `user_name`, `user_phone`, `createtime`, `updatetime`, `score`, `status`, `days`, `return_date`) VALUES (6, '222', '22222', '202209271239528742', '王二文案', '13988990099', '2022-10-19 22:19:18', NULL, 30, '已借出', 6, '2022-10-25 00:00:00');
INSERT INTO `borrow` (`id`, `book_name`, `book_no`, `user_no`, `user_name`, `user_phone`, `createtime`, `updatetime`, `score`, `status`, `days`, `return_date`) VALUES (7, '222', '22222', '202209271239528742', '王二文案', '13988990099', '2022-10-19 22:19:40', NULL, 30, '已归还', 7, '2022-10-26 00:00:00');
INSERT INTO `borrow` (`id`, `book_name`, `book_no`, `user_no`, `user_name`, `user_phone`, `createtime`, `updatetime`, `score`, `status`, `days`, `return_date`) VALUES (9, '222', '22222', '202209271018800687', '测试', NULL, '2022-10-19 22:30:22', NULL, 30, '已归还', 9, '2022-10-28 00:00:00');
INSERT INTO `borrow` (`id`, `book_name`, `book_no`, `user_no`, `user_name`, `user_phone`, `createtime`, `updatetime`, `score`, `status`, `days`, `return_date`) VALUES (10, '222', '22222', '202209271018800687', '测试', NULL, '2022-10-19 22:30:47', NULL, 30, '已归还', 10, '2022-10-29 00:00:00');
INSERT INTO `borrow` (`id`, `book_name`, `book_no`, `user_no`, `user_name`, `user_phone`, `createtime`, `updatetime`, `score`, `status`, `days`, `return_date`) VALUES (15, 'Java学习指南', 'JAVA_212113123', '20220927688792394', '杰克', '13977889988', '2022-10-25 21:23:02', NULL, 20, '已归还', 3, '2022-10-28 00:00:00');
INSERT INTO `borrow` (`id`, `book_name`, `book_no`, `user_no`, `user_name`, `user_phone`, `createtime`, `updatetime`, `score`, `status`, `days`, `return_date`) VALUES (18, 'Java学习指南', 'JAVA_212113123', '20220927688792394', '杰克', '13977889988', '2022-10-25 21:27:37', NULL, 80, '已归还', 4, '2022-10-22 00:00:00');
INSERT INTO `borrow` (`id`, `book_name`, `book_no`, `user_no`, `user_name`, `user_phone`, `createtime`, `updatetime`, `score`, `status`, `days`, `return_date`) VALUES (19, '城南旧事', 'DTG-998067', '20220927-2094581083', '李芸', '138999009989', '2022-12-27 20:35:56', NULL, 10, '已归还', 1, '2022-12-28 00:00:00');
INSERT INTO `borrow` (`id`, `book_name`, `book_no`, `user_no`, `user_name`, `user_phone`, `createtime`, `updatetime`, `score`, `status`, `days`, `return_date`) VALUES (21, '城南旧事', 'DTG-998067', '202212271960331044', '周昱廷', '13681756546', '2022-12-31 16:04:09', NULL, 60, '已借出', 6, '2023-01-06 00:00:00');
COMMIT;

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  `pid` int DEFAULT NULL COMMENT '父级id',
  `createtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatetime` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of category
-- ----------------------------
BEGIN;
INSERT INTO `category` (`id`, `name`, `remark`, `pid`, `createtime`, `updatetime`) VALUES (3, '历史文化', '历史文化', NULL, '2022-10-12 20:42:53', NULL);
INSERT INTO `category` (`id`, `name`, `remark`, `pid`, `createtime`, `updatetime`) VALUES (4, '唐朝文化', '唐朝文化', 3, '2022-10-12 20:43:21', NULL);
INSERT INTO `category` (`id`, `name`, `remark`, `pid`, `createtime`, `updatetime`) VALUES (5, '宋朝文化', NULL, 3, '2022-10-12 20:46:29', NULL);
INSERT INTO `category` (`id`, `name`, `remark`, `pid`, `createtime`, `updatetime`) VALUES (9, '现代文化', '现代文化', 3, '2022-10-12 21:00:41', '2022-12-31 00:00:00');
INSERT INTO `category` (`id`, `name`, `remark`, `pid`, `createtime`, `updatetime`) VALUES (10, '科技', '科技', NULL, '2022-10-12 21:50:08', '2022-12-28 00:00:00');
INSERT INTO `category` (`id`, `name`, `remark`, `pid`, `createtime`, `updatetime`) VALUES (11, '高新科技', NULL, 10, '2022-10-12 21:50:16', NULL);
INSERT INTO `category` (`id`, `name`, `remark`, `pid`, `createtime`, `updatetime`) VALUES (12, '生物科技', '生物科技', 10, '2022-10-12 21:50:22', NULL);
INSERT INTO `category` (`id`, `name`, `remark`, `pid`, `createtime`, `updatetime`) VALUES (13, '微分子科技', NULL, 11, '2022-10-17 22:11:44', NULL);
INSERT INTO `category` (`id`, `name`, `remark`, `pid`, `createtime`, `updatetime`) VALUES (14, '人文', '人文情感', NULL, '2022-12-27 20:28:37', '2022-12-27 00:00:00');
INSERT INTO `category` (`id`, `name`, `remark`, `pid`, `createtime`, `updatetime`) VALUES (15, '计算机', '技术', NULL, '2022-12-27 20:34:02', '2022-12-27 00:00:00');
INSERT INTO `category` (`id`, `name`, `remark`, `pid`, `createtime`, `updatetime`) VALUES (16, '童话', '儿童', NULL, '2022-12-27 20:35:12', '2023-01-01 00:00:00');
INSERT INTO `category` (`id`, `name`, `remark`, `pid`, `createtime`, `updatetime`) VALUES (17, '恐怖', NULL, NULL, '2023-01-01 19:39:33', '2023-01-01 00:00:00');
INSERT INTO `category` (`id`, `name`, `remark`, `pid`, `createtime`, `updatetime`) VALUES (18, '生理恐怖', NULL, 17, '2023-01-01 19:40:11', NULL);
INSERT INTO `category` (`id`, `name`, `remark`, `pid`, `createtime`, `updatetime`) VALUES (19, '心理恐怖', NULL, 17, '2023-01-01 19:40:22', NULL);
COMMIT;

-- ----------------------------
-- Table structure for retur
-- ----------------------------
DROP TABLE IF EXISTS `retur`;
CREATE TABLE `retur` (
  `id` int NOT NULL AUTO_INCREMENT,
  `book_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '图书名称',
  `book_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '图书标准码',
  `user_no` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户会员码',
  `user_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户名称',
  `user_phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户联系方式',
  `createtime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updatetime` datetime DEFAULT NULL COMMENT '更新时间',
  `score` int DEFAULT NULL COMMENT '借书积分',
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '已借出' COMMENT '借书状态',
  `days` int DEFAULT '1' COMMENT '借书天数',
  `return_date` datetime DEFAULT NULL COMMENT '归还日期',
  `real_date` datetime DEFAULT NULL COMMENT '实际归还日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of retur
-- ----------------------------
BEGIN;
INSERT INTO `retur` (`id`, `book_name`, `book_no`, `user_no`, `user_name`, `user_phone`, `createtime`, `updatetime`, `score`, `status`, `days`, `return_date`, `real_date`) VALUES (2, 'Java学习指南', 'JAVA_212113123', '202209271239528742', '苗洋洋', '13988990099', '2022-10-25 20:18:59', NULL, 20, '已借出', 3, '2022-10-28 00:00:00', NULL);
INSERT INTO `retur` (`id`, `book_name`, `book_no`, `user_no`, `user_name`, `user_phone`, `createtime`, `updatetime`, `score`, `status`, `days`, `return_date`, `real_date`) VALUES (3, '222', '22222', '202209271018800687', '测试', NULL, '2022-10-25 20:21:41', NULL, 30, '已借出', 10, '2022-10-29 00:00:00', '2022-10-25 00:00:00');
INSERT INTO `retur` (`id`, `book_name`, `book_no`, `user_no`, `user_name`, `user_phone`, `createtime`, `updatetime`, `score`, `status`, `days`, `return_date`, `real_date`) VALUES (4, '222', '22222', '202209271018800687', '测试', NULL, '2022-10-25 20:21:53', NULL, 30, '已借出', 9, '2022-10-28 00:00:00', '2022-10-25 00:00:00');
INSERT INTO `retur` (`id`, `book_name`, `book_no`, `user_no`, `user_name`, `user_phone`, `createtime`, `updatetime`, `score`, `status`, `days`, `return_date`, `real_date`) VALUES (6, 'Java学习指南', 'JAVA_212113123', '20220927688792394', '杰克', '13977889988', '2022-10-25 21:19:01', NULL, 20, '已借出', 3, '2022-10-28 00:00:00', '2022-10-25 00:00:00');
INSERT INTO `retur` (`id`, `book_name`, `book_no`, `user_no`, `user_name`, `user_phone`, `createtime`, `updatetime`, `score`, `status`, `days`, `return_date`, `real_date`) VALUES (9, 'Java学习指南', 'JAVA_212113123', '20220927688792394', '杰克', '13977889988', '2022-10-25 21:24:47', NULL, 20, '已归还', 3, '2022-10-28 00:00:00', '2022-10-25 00:00:00');
INSERT INTO `retur` (`id`, `book_name`, `book_no`, `user_no`, `user_name`, `user_phone`, `createtime`, `updatetime`, `score`, `status`, `days`, `return_date`, `real_date`) VALUES (10, 'Java学习指南', 'JAVA_212113123', '20220927688792394', '杰克', '13977889988', '2022-10-25 21:27:19', NULL, 20, '已归还', 4, '2022-10-29 00:00:00', '2022-10-25 00:00:00');
INSERT INTO `retur` (`id`, `book_name`, `book_no`, `user_no`, `user_name`, `user_phone`, `createtime`, `updatetime`, `score`, `status`, `days`, `return_date`, `real_date`) VALUES (11, 'Java学习指南', 'JAVA_212113123', '20220927688792394', '杰克', '13977889988', '2022-10-25 21:28:35', NULL, 80, '已归还', 4, '2022-10-22 00:00:00', '2022-10-25 00:00:00');
INSERT INTO `retur` (`id`, `book_name`, `book_no`, `user_no`, `user_name`, `user_phone`, `createtime`, `updatetime`, `score`, `status`, `days`, `return_date`, `real_date`) VALUES (12, '城南旧事', 'DTG-998067', '20220927-2094581083', '李芸', '138999009989', '2022-12-27 20:36:21', NULL, 10, '已归还', 1, '2022-12-28 00:00:00', '2022-12-27 00:00:00');
COMMIT;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '姓名',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '会员码',
  `age` int DEFAULT NULL COMMENT '年龄',
  `sex` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '性别',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '联系方式',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '地址',
  `createtime` datetime DEFAULT CURRENT_TIMESTAMP,
  `account` int DEFAULT '0' COMMENT '账户余额',
  `updatetime` datetime DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1' COMMENT '禁用状态 1不禁用',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `username_index` (`username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
BEGIN;
INSERT INTO `user` (`id`, `name`, `username`, `age`, `sex`, `phone`, `address`, `createtime`, `account`, `updatetime`, `status`) VALUES (19, '苗洋洋', '202209271239528742', 18, '女', '13988990099', '合肥', '2022-09-27 22:10:36', 140, '2022-12-27 21:59:20', 1);
INSERT INTO `user` (`id`, `name`, `username`, `age`, `sex`, `phone`, `address`, `createtime`, `account`, `updatetime`, `status`) VALUES (20, '李芸', '20220927-2094581083', 24, '女', '13899900998', '合肥', '2022-09-27 22:16:03', 20, '2022-12-30 21:56:54', 1);
INSERT INTO `user` (`id`, `name`, `username`, `age`, `sex`, `phone`, `address`, `createtime`, `account`, `updatetime`, `status`) VALUES (21, '桂超', '202209271018800687', 3, '男', '11451411451', '上海浦东', '2022-09-27 22:17:06', 140, '2022-12-30 22:26:32', 0);
INSERT INTO `user` (`id`, `name`, `username`, `age`, `sex`, `phone`, `address`, `createtime`, `account`, `updatetime`, `status`) VALUES (22, '徐毅', '202209271213716465', 22, '男', '13988990066', '上海宝山', '2022-09-27 22:34:48', 30, '2022-12-31 16:03:29', 0);
INSERT INTO `user` (`id`, `name`, `username`, `age`, `sex`, `phone`, `address`, `createtime`, `account`, `updatetime`, `status`) VALUES (23, '叶之捷', '20220927688792394', 22, '男', '13977889988', '上海奉贤', '2022-09-27 22:35:35', 5, '2022-12-31 16:05:39', 0);
INSERT INTO `user` (`id`, `name`, `username`, `age`, `sex`, `phone`, `address`, `createtime`, `account`, `updatetime`, `status`) VALUES (24, '周昱廷', '202212271960331044', 22, '男', '13681756546', '上海应用技术大学', '2022-12-27 19:51:15', 140, '2023-01-01 18:39:05', 1);
INSERT INTO `user` (`id`, `name`, `username`, `age`, `sex`, `phone`, `address`, `createtime`, `account`, `updatetime`, `status`) VALUES (38, '于桐桐', '202212301952320772', 22, '女', '13671756540', '北京', '2022-12-30 21:06:48', 300, '2023-01-01 22:19:18', 1);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
