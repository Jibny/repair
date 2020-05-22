/*
 Navicat Premium Data Transfer

 Source Server         : aliyun
 Source Server Type    : MySQL
 Source Server Version : 50721
 Source Host           : shmly.top:3306
 Source Schema         : repair

 Target Server Type    : MySQL
 Target Server Version : 50721
 File Encoding         : 65001

 Date: 23/05/2020 02:36:55
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for rsp_repair_address
-- ----------------------------
DROP TABLE IF EXISTS `rsp_repair_address`;
CREATE TABLE `rsp_repair_address`  (
  `id` bigint(64) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `encode` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'zzz' COMMENT '编码',
  `area` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'zzz' COMMENT '区域',
  `dorm` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'zzz' COMMENT '宿舍楼',
  `gmt_create` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `gmt_modified` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1263170771844919298 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '报修地址' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rsp_repair_address
-- ----------------------------
INSERT INTO `rsp_repair_address` VALUES (1254021687721259010, '11002', '阳光学院', '东1', '2020-04-25 20:17:23', '2020-05-04 23:03:20');
INSERT INTO `rsp_repair_address` VALUES (1254021689013104642, '11002', '阳光学院', '东2', '2020-04-25 20:17:24', '2020-05-04 23:03:09');
INSERT INTO `rsp_repair_address` VALUES (1254021689772273665, '11003', '阳光学院', '东3', '2020-04-25 20:17:24', '2020-05-04 23:03:12');
INSERT INTO `rsp_repair_address` VALUES (1254021690334310401, '11004', '阳光学院', '东4', '2020-04-25 20:17:24', '2020-05-04 23:03:18');
INSERT INTO `rsp_repair_address` VALUES (1254021692364353537, '11005', '阳光学院', '东5', '2020-04-25 20:17:24', '2020-05-04 23:03:18');
INSERT INTO `rsp_repair_address` VALUES (1254021693995937794, '11007', '阳光学院', '东7', '2020-04-25 20:17:25', '2020-05-04 23:03:18');
INSERT INTO `rsp_repair_address` VALUES (1254021695862403074, '11008', '阳光学院', '东8', '2020-04-25 20:17:25', '2020-05-04 23:03:18');
INSERT INTO `rsp_repair_address` VALUES (1254022284700774401, '11009', '阳光学院', '东9', '2020-04-25 20:19:46', '2020-05-04 23:03:18');
INSERT INTO `rsp_repair_address` VALUES (1254022285367668737, '11010', '阳光学院', '东10', '2020-04-25 20:19:46', '2020-05-04 23:03:18');
INSERT INTO `rsp_repair_address` VALUES (1254022285778710530, '11011', '阳光学院', '西11', '2020-04-25 20:19:46', '2020-05-04 23:03:18');
INSERT INTO `rsp_repair_address` VALUES (1254022286152003586, '11012', '阳光学院', '西12', '2020-04-25 20:19:46', '2020-05-04 23:03:18');
INSERT INTO `rsp_repair_address` VALUES (1254022286638542849, '11013', '阳光学院', '西13', '2020-04-25 20:19:46', '2020-05-04 23:03:18');
INSERT INTO `rsp_repair_address` VALUES (1263170769928122369, '11009', '东区', '1', '2020-05-21 02:12:34', '2020-05-21 02:12:34');
INSERT INTO `rsp_repair_address` VALUES (1263170770293026818, '11010', '东区', '2', '2020-05-21 02:12:34', '2020-05-21 02:12:34');
INSERT INTO `rsp_repair_address` VALUES (1263170770519519233, '11011', '东区', '3', '2020-05-21 02:12:34', '2020-05-21 02:12:34');
INSERT INTO `rsp_repair_address` VALUES (1263170770725040129, '11012', '东区', '4', '2020-05-21 02:12:34', '2020-05-21 02:12:34');
INSERT INTO `rsp_repair_address` VALUES (1263170770947338241, '11013', '东区', '5', '2020-05-21 02:12:34', '2020-05-21 02:12:34');
INSERT INTO `rsp_repair_address` VALUES (1263170771157053441, '11014', '东区', '6', '2020-05-21 02:12:34', '2020-05-21 02:12:34');
INSERT INTO `rsp_repair_address` VALUES (1263170771400323073, '11015', '东区', '7', '2020-05-21 02:12:35', '2020-05-21 02:12:35');
INSERT INTO `rsp_repair_address` VALUES (1263170771618426882, '11016', '东区', '8', '2020-05-21 02:12:35', '2020-05-21 02:12:35');
INSERT INTO `rsp_repair_address` VALUES (1263170771844919297, '11017', '东区', '9', '2020-05-21 02:12:35', '2020-05-21 02:12:35');

-- ----------------------------
-- Table structure for rsp_repair_admin
-- ----------------------------
DROP TABLE IF EXISTS `rsp_repair_admin`;
CREATE TABLE `rsp_repair_admin`  (
  `id` bigint(64) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'zzz' COMMENT '名字',
  `username` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'zzz' COMMENT '用户名',
  `password` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'zzz' COMMENT '密码',
  `telephone` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'zzz' COMMENT '手机号码',
  `email` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'zzz' COMMENT '邮箱',
  `gmt_create` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `gmt_modified` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1258169075954290000 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '管理员' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rsp_repair_admin
-- ----------------------------
INSERT INTO `rsp_repair_admin` VALUES (1258169075954289999, '管理员', 'admin', 'nishuodedui', '18088880000', '123456@qq.com', '2020-05-21 13:52:08', '2020-05-23 02:05:10');

-- ----------------------------
-- Table structure for rsp_repair_advice
-- ----------------------------
DROP TABLE IF EXISTS `rsp_repair_advice`;
CREATE TABLE `rsp_repair_advice`  (
  `id` bigint(64) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `context` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'zzz' COMMENT '评价内容',
  `score` int(16) NOT NULL DEFAULT 90 COMMENT '评价分数',
  `gmt_create` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `gmt_modified` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1263170774093066243 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '报修评价' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rsp_repair_advice
-- ----------------------------
INSERT INTO `rsp_repair_advice` VALUES (1254022384009265153, '默认好评', 95, '2020-04-25 20:20:09', '2020-04-25 20:20:09');
INSERT INTO `rsp_repair_advice` VALUES (1254022384822960130, '默认好评', 97, '2020-04-25 20:20:09', '2020-04-25 20:20:09');
INSERT INTO `rsp_repair_advice` VALUES (1254022385254973442, '默认好评', 94, '2020-04-25 20:20:10', '2020-04-25 20:20:10');
INSERT INTO `rsp_repair_advice` VALUES (1254022385686986753, '默认好评', 95, '2020-04-25 20:20:10', '2020-04-25 20:20:10');
INSERT INTO `rsp_repair_advice` VALUES (1254022386152554498, '默认好评', 94, '2020-04-25 20:20:10', '2020-04-25 20:20:10');
INSERT INTO `rsp_repair_advice` VALUES (1254022386739757057, '默认好评', 97, '2020-04-25 20:20:10', '2020-04-25 20:20:10');
INSERT INTO `rsp_repair_advice` VALUES (1254022387154993153, '默认好评', 87, '2020-04-25 20:20:10', '2020-04-25 20:20:10');
INSERT INTO `rsp_repair_advice` VALUES (1254022387607977985, '默认好评', 98, '2020-04-25 20:20:10', '2020-04-25 20:20:10');
INSERT INTO `rsp_repair_advice` VALUES (1254022388065157121, '默认好评', 92, '2020-04-25 20:20:10', '2020-04-25 20:20:10');
INSERT INTO `rsp_repair_advice` VALUES (1254022388526530562, '默认好评', 97, '2020-04-25 20:20:10', '2020-04-25 20:20:10');
INSERT INTO `rsp_repair_advice` VALUES (1254787692760358914, '默认好评', 81, '2020-04-27 23:01:13', '2020-04-27 23:01:13');
INSERT INTO `rsp_repair_advice` VALUES (1254787692995239937, '默认好评', 95, '2020-04-27 23:01:13', '2020-04-27 23:01:13');
INSERT INTO `rsp_repair_advice` VALUES (1254787693251092481, '默认好评', 96, '2020-04-27 23:01:13', '2020-04-27 23:01:13');
INSERT INTO `rsp_repair_advice` VALUES (1254787693502750721, '默认好评', 97, '2020-04-27 23:01:13', '2020-04-27 23:01:13');
INSERT INTO `rsp_repair_advice` VALUES (1254787693871849474, '默认好评', 88, '2020-04-27 23:01:13', '2020-04-27 23:01:13');
INSERT INTO `rsp_repair_advice` VALUES (1254787694140284930, '默认好评', 97, '2020-04-27 23:01:13', '2020-04-27 23:01:13');
INSERT INTO `rsp_repair_advice` VALUES (1254787694383554562, '默认好评', 99, '2020-04-27 23:01:13', '2020-04-27 23:01:13');
INSERT INTO `rsp_repair_advice` VALUES (1254787694664572930, '默认好评', 91, '2020-04-27 23:01:13', '2020-04-27 23:01:13');
INSERT INTO `rsp_repair_advice` VALUES (1254787694886871041, '默认好评', 88, '2020-04-27 23:01:13', '2020-04-27 23:01:13');
INSERT INTO `rsp_repair_advice` VALUES (1254787695130140674, '默认好评', 89, '2020-04-27 23:01:14', '2020-04-27 23:01:14');
INSERT INTO `rsp_repair_advice` VALUES (1254787884796551169, '默认好评', 92, '2020-04-27 23:01:59', '2020-04-27 23:01:59');
INSERT INTO `rsp_repair_advice` VALUES (1254787885035626497, '默认好评', 83, '2020-04-27 23:01:59', '2020-04-27 23:01:59');
INSERT INTO `rsp_repair_advice` VALUES (1254787885270507521, '默认好评', 96, '2020-04-27 23:01:59', '2020-04-27 23:01:59');
INSERT INTO `rsp_repair_advice` VALUES (1254787885576691714, '默认好评', 94, '2020-04-27 23:01:59', '2020-04-27 23:01:59');
INSERT INTO `rsp_repair_advice` VALUES (1254787885908041730, '默认好评', 91, '2020-04-27 23:01:59', '2020-04-27 23:01:59');
INSERT INTO `rsp_repair_advice` VALUES (1254787886184865794, '默认好评', 89, '2020-04-27 23:01:59', '2020-04-27 23:01:59');
INSERT INTO `rsp_repair_advice` VALUES (1254787886423941121, '默认好评', 95, '2020-04-27 23:01:59', '2020-04-27 23:01:59');
INSERT INTO `rsp_repair_advice` VALUES (1254787886746902530, '默认好评', 85, '2020-04-27 23:01:59', '2020-04-27 23:01:59');
INSERT INTO `rsp_repair_advice` VALUES (1254787886990172162, '默认好评', 91, '2020-04-27 23:01:59', '2020-04-27 23:01:59');
INSERT INTO `rsp_repair_advice` VALUES (1254787887199887361, '默认好评', 96, '2020-04-27 23:01:59', '2020-04-27 23:01:59');
INSERT INTO `rsp_repair_advice` VALUES (1254788500793020417, '默认好评', 89, '2020-04-27 23:04:26', '2020-04-27 23:04:26');
INSERT INTO `rsp_repair_advice` VALUES (1254788501388611585, '默认好评', 85, '2020-04-27 23:04:26', '2020-04-27 23:04:26');
INSERT INTO `rsp_repair_advice` VALUES (1254788501652852737, '默认好评', 95, '2020-04-27 23:04:26', '2020-04-27 23:04:26');
INSERT INTO `rsp_repair_advice` VALUES (1254788501891928065, '默认好评', 87, '2020-04-27 23:04:26', '2020-04-27 23:04:26');
INSERT INTO `rsp_repair_advice` VALUES (1254788502172946433, '默认好评', 91, '2020-04-27 23:04:26', '2020-04-27 23:04:26');
INSERT INTO `rsp_repair_advice` VALUES (1254788502412021762, '默认好评', 80, '2020-04-27 23:04:26', '2020-04-27 23:04:26');
INSERT INTO `rsp_repair_advice` VALUES (1254788502651097089, '默认好评', 93, '2020-04-27 23:04:26', '2020-04-27 23:04:26');
INSERT INTO `rsp_repair_advice` VALUES (1254788502890172418, '默认好评', 84, '2020-04-27 23:04:26', '2020-04-27 23:04:26');
INSERT INTO `rsp_repair_advice` VALUES (1254788503192162305, '默认好评', 89, '2020-04-27 23:04:26', '2020-04-27 23:04:26');
INSERT INTO `rsp_repair_advice` VALUES (1254788503477374978, '默认好评', 88, '2020-04-27 23:04:26', '2020-04-27 23:04:26');
INSERT INTO `rsp_repair_advice` VALUES (1256691016237465602, '默认好评', 91, '2020-05-03 05:04:21', '2020-05-03 05:04:21');
INSERT INTO `rsp_repair_advice` VALUES (1256691016556232705, '默认好评', 80, '2020-05-03 05:04:21', '2020-05-03 05:04:21');
INSERT INTO `rsp_repair_advice` VALUES (1256691016803696641, '默认好评', 95, '2020-05-03 05:04:21', '2020-05-03 05:04:21');
INSERT INTO `rsp_repair_advice` VALUES (1256691017114075137, '默认好评', 95, '2020-05-03 05:04:21', '2020-05-03 05:04:21');
INSERT INTO `rsp_repair_advice` VALUES (1256691017416065025, '默认好评', 85, '2020-05-03 05:04:21', '2020-05-03 05:04:21');
INSERT INTO `rsp_repair_advice` VALUES (1256691017726443522, '默认好评', 89, '2020-05-03 05:04:21', '2020-05-03 05:04:21');
INSERT INTO `rsp_repair_advice` VALUES (1256691018074570753, '默认好评', 95, '2020-05-03 05:04:21', '2020-05-03 05:04:21');
INSERT INTO `rsp_repair_advice` VALUES (1256691018326228993, '默认好评', 93, '2020-05-03 05:04:21', '2020-05-03 05:04:21');
INSERT INTO `rsp_repair_advice` VALUES (1256691018607247361, '默认好评', 81, '2020-05-03 05:04:21', '2020-05-03 05:04:21');
INSERT INTO `rsp_repair_advice` VALUES (1256691018875682817, '默认好评', 94, '2020-05-03 05:04:21', '2020-05-03 05:04:21');
INSERT INTO `rsp_repair_advice` VALUES (1256697723638489089, '默认好评', 95, '2020-05-03 05:31:00', '2020-05-03 05:31:00');
INSERT INTO `rsp_repair_advice` VALUES (1256697723885953026, '默认好评', 81, '2020-05-03 05:31:00', '2020-05-03 05:31:00');
INSERT INTO `rsp_repair_advice` VALUES (1256697724108251138, '默认好评', 92, '2020-05-03 05:31:00', '2020-05-03 05:31:00');
INSERT INTO `rsp_repair_advice` VALUES (1256697724397658113, '默认好评', 85, '2020-05-03 05:31:00', '2020-05-03 05:31:00');
INSERT INTO `rsp_repair_advice` VALUES (1256697724615761921, '默认好评', 98, '2020-05-03 05:31:00', '2020-05-03 05:31:00');
INSERT INTO `rsp_repair_advice` VALUES (1256697724875808769, '默认好评', 92, '2020-05-03 05:31:00', '2020-05-03 05:31:00');
INSERT INTO `rsp_repair_advice` VALUES (1256697725106495490, '默认好评', 96, '2020-05-03 05:31:00', '2020-05-03 05:31:00');
INSERT INTO `rsp_repair_advice` VALUES (1256697725374930946, '默认好评', 83, '2020-05-03 05:31:00', '2020-05-03 05:31:00');
INSERT INTO `rsp_repair_advice` VALUES (1256697725609811970, '默认好评', 95, '2020-05-03 05:31:00', '2020-05-03 05:31:00');
INSERT INTO `rsp_repair_advice` VALUES (1256697725890830338, '默认好评', 93, '2020-05-03 05:31:00', '2020-05-03 05:31:00');
INSERT INTO `rsp_repair_advice` VALUES (1263170772121743361, '默认好评', 95, '2020-05-21 02:12:35', '2020-05-21 02:12:35');
INSERT INTO `rsp_repair_advice` VALUES (1263170772323069954, '默认好评', 83, '2020-05-21 02:12:35', '2020-05-21 02:12:35');
INSERT INTO `rsp_repair_advice` VALUES (1263170772541173761, '默认好评', 96, '2020-05-21 02:12:35', '2020-05-21 02:12:35');
INSERT INTO `rsp_repair_advice` VALUES (1263170772759277569, '默认好评', 90, '2020-05-21 02:12:35', '2020-05-21 02:12:35');
INSERT INTO `rsp_repair_advice` VALUES (1263170772977381378, '默认好评', 92, '2020-05-21 02:12:35', '2020-05-21 02:12:35');
INSERT INTO `rsp_repair_advice` VALUES (1263170773187096578, '默认好评', 81, '2020-05-21 02:12:35', '2020-05-21 02:12:35');
INSERT INTO `rsp_repair_advice` VALUES (1263170773405200385, '默认好评', 81, '2020-05-21 02:12:35', '2020-05-21 02:12:35');
INSERT INTO `rsp_repair_advice` VALUES (1263170773648470017, '默认好评', 88, '2020-05-21 02:12:35', '2020-05-21 02:12:35');
INSERT INTO `rsp_repair_advice` VALUES (1263170773862379522, '默认好评', 92, '2020-05-21 02:12:35', '2020-05-21 02:12:35');
INSERT INTO `rsp_repair_advice` VALUES (1263170774093066242, '默认好评', 95, '2020-05-21 02:12:35', '2020-05-21 02:12:35');

-- ----------------------------
-- Table structure for rsp_repair_online
-- ----------------------------
DROP TABLE IF EXISTS `rsp_repair_online`;
CREATE TABLE `rsp_repair_online`  (
  `id` bigint(64) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `category` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'zzz' COMMENT '报修分类',
  `area` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'zzz' COMMENT '区域',
  `dorm` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'zzz' COMMENT '宿舍楼',
  `room` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'zzz' COMMENT '房间号',
  `user_number` bigint(64) UNSIGNED NULL DEFAULT NULL COMMENT '学号',
  `user_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'zzz' COMMENT '名字',
  `problem` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'zzz' COMMENT '故障描述',
  `image` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'zzz' COMMENT '故障图片',
  `reason` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'zzz' COMMENT '故障原因',
  `status` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'zzz' COMMENT '维修状态',
  `repairman_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'zzz' COMMENT '名字',
  `repairman_telephone` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'zzz' COMMENT '手机号码',
  `context` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'zzz' COMMENT '评价内容',
  `score` int(16) UNSIGNED NOT NULL DEFAULT 90 COMMENT '评价分数',
  `gmt_deal` datetime(0) NULL DEFAULT NULL COMMENT '处理时间',
  `gmt_create` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `gmt_modified` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  `extention` bigint(64) UNSIGNED NULL DEFAULT NULL COMMENT '扩展',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1263798700333367299 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '在线报修' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rsp_repair_online
-- ----------------------------
INSERT INTO `rsp_repair_online` VALUES (1263368375614623746, '水管', '阳光学院', '西13', '3333', 16102100, '张三', '故障问题', 'http://localhost:8888/repair/images/QQ图片20200519132466_1590045465563.jpg', '故障的原因12', '处理完成', '维修员1', '18011111111', '好评111', 90, '2020-05-21 12:00:00', '2020-05-21 15:17:47', '2020-05-21 15:20:44', NULL);
INSERT INTO `rsp_repair_online` VALUES (1263373107020226561, '水管', '阳光学院', '西13', '222', 16102100, '张三', '宿舍卫生间水管爆炸', 'http://localhost:8888/repair/images/QQ图片20200519132234_1590046581223.jpg', '故障的原因', '处理完成', '维修员2', '18011111111', 'ada', 90, '2020-05-07 12:00:00', '2020-05-21 15:36:36', '2020-05-22 18:44:32', NULL);
INSERT INTO `rsp_repair_online` VALUES (1263431741313982466, '设施', '阳光学院', '西13', '222', 16102100, '张三', '故障问题', 'http://localhost:8888/repair/images/QQ图片20200519132452_1590060509887.png', '故障的原因', '正在处理', '维修员1', '18011111111', '', 90, '2020-05-22 12:00:00', '2020-05-21 19:29:35', '2020-05-22 18:41:32', NULL);
INSERT INTO `rsp_repair_online` VALUES (1263794058388078594, '水管', '阳光学院', '西13', '222', 16102100, '张三', '故障问题5', 'http://localhost:8888/repair/images/QQ图片20200519132234_1590146951359.jpg', '故障的原因', '正在处理', '维修员1', '18011111111', '', 90, '2020-05-12 12:00:00', '2020-05-22 19:29:19', '2020-05-22 19:34:05', NULL);
INSERT INTO `rsp_repair_online` VALUES (1263798700333367298, '水管', '阳光学院', '西13', '222', 16102100, '张三', '故障问题11111', 'http://localhost:8888/repair/images/QQ图片20200519132466_1590148060101.jpg', '故障的原因', '申请报修', '', '', '', 90, NULL, '2020-05-22 19:47:45', NULL, NULL);

-- ----------------------------
-- Table structure for rsp_repair_repairman
-- ----------------------------
DROP TABLE IF EXISTS `rsp_repair_repairman`;
CREATE TABLE `rsp_repair_repairman`  (
  `id` bigint(64) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `number` bigint(64) UNSIGNED NULL DEFAULT NULL COMMENT '工号',
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'zzz' COMMENT '名字',
  `username` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'zzz' COMMENT '用户名',
  `password` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'zzz' COMMENT '密码',
  `category` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'zzz' COMMENT '维修类型',
  `address` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'zzz' COMMENT '地址',
  `telephone` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'zzz' COMMENT '手机号码',
  `email` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'zzz' COMMENT '邮箱',
  `gmt_create` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `gmt_modified` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE,
  UNIQUE INDEX `number`(`number`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1263170779537272835 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '维修人员' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rsp_repair_repairman
-- ----------------------------
INSERT INTO `rsp_repair_repairman` VALUES (1254023749053898753, 20200001, '维修员1', 'repairman1', '123456', '水管', '西13', '18011111111', '964468145@qq.com', '2020-04-25 20:25:35', '2020-05-21 19:19:30');
INSERT INTO `rsp_repair_repairman` VALUES (1254024046874673153, 20200002, '维修员2', 'repairman2', '123456', '设施', '西13', '18022222222', '123456@qq.com', '2020-04-25 20:26:46', '2020-05-21 19:19:31');
INSERT INTO `rsp_repair_repairman` VALUES (1254024047340240898, 20200003, '维修员3', 'repairman3', '123456', '网络', '西13', '18011112222', '123456@qq.com', '2020-04-25 20:26:46', '2020-05-21 19:19:33');
INSERT INTO `rsp_repair_repairman` VALUES (1258169075954282498, 20200004, '维修员4', 'repairman4', '123456', '水管', '西13', '18011112222', 'zhanjibin1020@outlook.com', '2020-05-07 06:57:38', '2020-05-21 19:28:57');

-- ----------------------------
-- Table structure for rsp_repair_type
-- ----------------------------
DROP TABLE IF EXISTS `rsp_repair_type`;
CREATE TABLE `rsp_repair_type`  (
  `id` bigint(64) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `encode` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'zzz' COMMENT '编码',
  `category` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'zzz' COMMENT '报修分类',
  `description` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'zzz' COMMENT '分类描述',
  `gmt_create` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `gmt_modified` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1263170784281030659 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '报修类型' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rsp_repair_type
-- ----------------------------
INSERT INTO `rsp_repair_type` VALUES (1258162130212024321, '20001', '水管', '阳台卫生间水管水龙头等设施损坏', '2020-05-07 06:30:02', '2020-05-07 06:30:02');
INSERT INTO `rsp_repair_type` VALUES (1258162663849127938, '20002', '设施', '插座,电风扇,门把锁等', '2020-05-07 06:32:09', '2020-05-07 06:32:09');
INSERT INTO `rsp_repair_type` VALUES (1258162981521518594, '20003', '网络', '断网,WiFi问题等', '2020-05-07 06:33:24', '2020-05-07 06:33:24');

-- ----------------------------
-- Table structure for rsp_repair_user
-- ----------------------------
DROP TABLE IF EXISTS `rsp_repair_user`;
CREATE TABLE `rsp_repair_user`  (
  `id` bigint(64) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `number` bigint(64) UNSIGNED NULL DEFAULT NULL COMMENT '学号',
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'zzz' COMMENT '名字',
  `username` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'zzz' COMMENT '用户名',
  `password` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'zzz' COMMENT '密码',
  `address` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'zzz' COMMENT '地址',
  `telephone` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'zzz' COMMENT '手机号码',
  `email` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'zzz' COMMENT '邮箱',
  `gmt_create` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `gmt_modified` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE,
  UNIQUE INDEX `number`(`number`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1263890016388038659 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户报修' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rsp_repair_user
-- ----------------------------
INSERT INTO `rsp_repair_user` VALUES (1254024673235238914, 16102100, '张三', 'zhansan', '123456', '西13', '18011112222', '123456789@qq.com', '2020-04-25 20:29:15', '2020-04-25 20:29:15');
INSERT INTO `rsp_repair_user` VALUES (1254025820322828290, 16102101, '李四', '16102101', '123456', '西12', '18011112222', '123456789@qq.com', '2020-04-25 20:33:49', '2020-04-25 20:33:49');
INSERT INTO `rsp_repair_user` VALUES (1254025821107163137, 16102102, '王五', '16102102', '123456', '西12', '18011112222', '123456789@qq.com', '2020-04-25 20:33:49', '2020-04-25 20:33:49');

SET FOREIGN_KEY_CHECKS = 1;
