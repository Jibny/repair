/*
 Navicat Premium Data Transfer

 Source Server         : huaweiyun
 Source Server Type    : MySQL
 Source Server Version : 50721
 Source Host           : 121.36.29.88:3306
 Source Schema         : repair

 Target Server Type    : MySQL
 Target Server Version : 50721
 File Encoding         : 65001

 Date: 27/04/2020 22:58:21
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
) ENGINE = InnoDB AUTO_INCREMENT = 1254022286638542850 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '报修地址' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rsp_repair_address
-- ----------------------------
INSERT INTO `rsp_repair_address` VALUES (1254021687721259010, '11001', '东区', '1', '2020-04-25 20:17:23', '2020-04-25 20:17:23');
INSERT INTO `rsp_repair_address` VALUES (1254021689013104642, '11002', '东区', '2', '2020-04-25 20:17:24', '2020-04-25 20:17:24');
INSERT INTO `rsp_repair_address` VALUES (1254021689772273665, '11003', '东区', '3', '2020-04-25 20:17:24', '2020-04-25 20:17:24');
INSERT INTO `rsp_repair_address` VALUES (1254021690334310401, '11004', '东区', '4', '2020-04-25 20:17:24', '2020-04-25 20:17:24');
INSERT INTO `rsp_repair_address` VALUES (1254021692364353537, '11005', '东区', '5', '2020-04-25 20:17:24', '2020-04-25 20:17:24');
INSERT INTO `rsp_repair_address` VALUES (1254021693236768770, '11006', '东区', '6', '2020-04-25 20:17:25', '2020-04-25 20:17:25');
INSERT INTO `rsp_repair_address` VALUES (1254021693995937794, '11007', '东区', '7', '2020-04-25 20:17:25', '2020-04-25 20:17:25');
INSERT INTO `rsp_repair_address` VALUES (1254021695862403074, '11008', '东区', '8', '2020-04-25 20:17:25', '2020-04-25 20:17:25');
INSERT INTO `rsp_repair_address` VALUES (1254022284700774401, '11009', '西区', '9', '2020-04-25 20:19:46', '2020-04-25 20:19:46');
INSERT INTO `rsp_repair_address` VALUES (1254022285367668737, '11010', '西区', '10', '2020-04-25 20:19:46', '2020-04-25 20:19:46');
INSERT INTO `rsp_repair_address` VALUES (1254022285778710530, '11011', '西区', '11', '2020-04-25 20:19:46', '2020-04-25 20:19:46');
INSERT INTO `rsp_repair_address` VALUES (1254022286152003586, '11012', '西区', '12', '2020-04-25 20:19:46', '2020-04-25 20:19:46');
INSERT INTO `rsp_repair_address` VALUES (1254022286638542849, '11013', '西区', '13', '2020-04-25 20:19:46', '2020-04-25 20:19:46');

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
) ENGINE = InnoDB AUTO_INCREMENT = 1254022388526530563 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '报修评价' ROW_FORMAT = Dynamic;

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
  `score` int(16) NOT NULL DEFAULT 90 COMMENT '评价分数',
  `gmt_deal` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '处理时间',
  `gmt_create` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `gmt_modified` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  `extention` bigint(64) UNSIGNED NULL DEFAULT NULL COMMENT '扩展',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1254070285385211907 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '在线报修' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rsp_repair_online
-- ----------------------------
INSERT INTO `rsp_repair_online` VALUES (1254070275109167105, '分类8', '西区', '12', '213', 16102101, '学生1', '阳台水管爆裂', 'https://dss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=2902578366,1420588776&fm=26&gp=0.jpg', '自然损坏', '已经受理', '维修员1', '18011112222', '默认好评', 84, '2020-04-26 23:30:28', '2020-04-25 23:30:27', '2020-04-25 23:30:27', NULL);
INSERT INTO `rsp_repair_online` VALUES (1254070275910279170, '分类18', '西区', '11', '213', 16102102, '学生2', '阳台水管爆裂', 'https://dss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=2902578366,1420588776&fm=26&gp=0.jpg', '自然损坏', '已经受理', '维修员1', '18011112222', '默认好评', 82, '2020-04-26 23:30:28', '2020-04-25 23:30:28', '2020-04-25 23:30:28', NULL);
INSERT INTO `rsp_repair_online` VALUES (1254070276547813378, '分类3', '西区', '10', '213', 16102103, '学生3', '阳台水管爆裂', 'https://dss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=2902578366,1420588776&fm=26&gp=0.jpg', '自然损坏', '已经受理', '维修员1', '18011112222', '默认好评', 81, '2020-04-26 23:30:28', '2020-04-25 23:30:28', '2020-04-25 23:30:28', NULL);
INSERT INTO `rsp_repair_online` VALUES (1254070276988215297, '分类0', '西区', '9', '213', 16102104, '学生4', '阳台水管爆裂', 'https://dss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=2902578366,1420588776&fm=26&gp=0.jpg', '自然损坏', '已经受理', '维修员1', '18011112222', '默认好评', 92, '2020-04-26 23:30:28', '2020-04-25 23:30:28', '2020-04-25 23:30:28', NULL);
INSERT INTO `rsp_repair_online` VALUES (1254070277441200130, '分类1', '西区', '9', '213', 16102105, '学生5', '阳台水管爆裂', 'https://dss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=2902578366,1420588776&fm=26&gp=0.jpg', '自然损坏', '已经受理', '维修员1', '18011112222', '默认好评', 91, '2020-04-26 23:30:28', '2020-04-25 23:30:28', '2020-04-25 23:30:28', NULL);
INSERT INTO `rsp_repair_online` VALUES (1254070277915156481, '分类5', '西区', '9', '213', 16102106, '学生6', '阳台水管爆裂', 'https://dss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=2902578366,1420588776&fm=26&gp=0.jpg', '自然损坏', '已经受理', '维修员1', '18011112222', '默认好评', 93, '2020-04-26 23:30:28', '2020-04-25 23:30:28', '2020-04-25 23:30:28', NULL);
INSERT INTO `rsp_repair_online` VALUES (1254070278368141313, '分类16', '西区', '10', '213', 16102107, '学生7', '阳台水管爆裂', 'https://dss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=2902578366,1420588776&fm=26&gp=0.jpg', '自然损坏', '已经受理', '维修员1', '18011112222', '默认好评', 97, '2020-04-26 23:30:29', '2020-04-25 23:30:28', '2020-04-25 23:30:28', NULL);
INSERT INTO `rsp_repair_online` VALUES (1254070278833709057, '分类15', '西区', '11', '213', 16102108, '学生8', '阳台水管爆裂', 'https://dss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=2902578366,1420588776&fm=26&gp=0.jpg', '自然损坏', '已经受理', '维修员1', '18011112222', '默认好评', 82, '2020-04-26 23:30:29', '2020-04-25 23:30:28', '2020-04-25 23:30:28', NULL);
INSERT INTO `rsp_repair_online` VALUES (1254070279295082498, '分类3', '西区', '12', '213', 16102109, '学生9', '阳台水管爆裂', 'https://dss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=2902578366,1420588776&fm=26&gp=0.jpg', '自然损坏', '已经受理', '维修员1', '18011112222', '默认好评', 90, '2020-04-26 23:30:29', '2020-04-25 23:30:28', '2020-04-25 23:30:28', NULL);
INSERT INTO `rsp_repair_online` VALUES (1254070279739678721, '分类18', '西区', '10', '213', 16102110, '学生10', '阳台水管爆裂', 'https://dss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=2902578366,1420588776&fm=26&gp=0.jpg', '自然损坏', '已经受理', '维修员1', '18011112222', '默认好评', 97, '2020-04-26 23:30:29', '2020-04-25 23:30:28', '2020-04-25 23:30:28', NULL);
INSERT INTO `rsp_repair_online` VALUES (1254070280180080642, '分类15', '西区', '10', '213', 16102111, '学生11', '阳台水管爆裂', 'https://dss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=2902578366,1420588776&fm=26&gp=0.jpg', '自然损坏', '已经受理', '维修员1', '18011112222', '默认好评', 81, '2020-04-26 23:30:29', '2020-04-25 23:30:29', '2020-04-25 23:30:29', NULL);
INSERT INTO `rsp_repair_online` VALUES (1254070280658231298, '分类2', '西区', '10', '213', 16102112, '学生12', '阳台水管爆裂', 'https://dss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=2902578366,1420588776&fm=26&gp=0.jpg', '自然损坏', '已经受理', '维修员1', '18011112222', '默认好评', 83, '2020-04-26 23:30:29', '2020-04-25 23:30:29', '2020-04-25 23:30:29', NULL);
INSERT INTO `rsp_repair_online` VALUES (1254070281107021826, '分类9', '西区', '11', '213', 16102113, '学生13', '阳台水管爆裂', 'https://dss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=2902578366,1420588776&fm=26&gp=0.jpg', '自然损坏', '已经受理', '维修员1', '18011112222', '默认好评', 89, '2020-04-26 23:30:29', '2020-04-25 23:30:29', '2020-04-25 23:30:29', NULL);
INSERT INTO `rsp_repair_online` VALUES (1254070281572589569, '分类3', '西区', '11', '213', 16102114, '学生14', '阳台水管爆裂', 'https://dss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=2902578366,1420588776&fm=26&gp=0.jpg', '自然损坏', '已经受理', '维修员1', '18011112222', '默认好评', 81, '2020-04-26 23:30:29', '2020-04-25 23:30:29', '2020-04-25 23:30:29', NULL);
INSERT INTO `rsp_repair_online` VALUES (1254070282038157314, '分类10', '西区', '10', '213', 16102115, '学生15', '阳台水管爆裂', 'https://dss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=2902578366,1420588776&fm=26&gp=0.jpg', '自然损坏', '已经受理', '维修员1', '18011112222', '默认好评', 95, '2020-04-26 23:30:29', '2020-04-25 23:30:29', '2020-04-25 23:30:29', NULL);
INSERT INTO `rsp_repair_online` VALUES (1254070282482753538, '分类7', '西区', '9', '213', 16102116, '学生16', '阳台水管爆裂', 'https://dss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=2902578366,1420588776&fm=26&gp=0.jpg', '自然损坏', '已经受理', '维修员1', '18011112222', '默认好评', 92, '2020-04-26 23:30:29', '2020-04-25 23:30:29', '2020-04-25 23:30:29', NULL);
INSERT INTO `rsp_repair_online` VALUES (1254070283015430146, '分类12', '西区', '10', '213', 16102117, '学生17', '阳台水管爆裂', 'https://dss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=2902578366,1420588776&fm=26&gp=0.jpg', '自然损坏', '已经受理', '维修员1', '18011112222', '默认好评', 88, '2020-04-26 23:30:30', '2020-04-25 23:30:29', '2020-04-25 23:30:29', NULL);
INSERT INTO `rsp_repair_online` VALUES (1254070283480997889, '分类9', '西区', '12', '213', 16102118, '学生18', '阳台水管爆裂', 'https://dss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=2902578366,1420588776&fm=26&gp=0.jpg', '自然损坏', '已经受理', '维修员1', '18011112222', '默认好评', 94, '2020-04-26 23:30:30', '2020-04-25 23:30:29', '2020-04-25 23:30:29', NULL);
INSERT INTO `rsp_repair_online` VALUES (1254070283917205505, '分类13', '西区', '10', '213', 16102119, '学生19', '阳台水管爆裂', 'https://dss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=2902578366,1420588776&fm=26&gp=0.jpg', '自然损坏', '已经受理', '维修员1', '18011112222', '默认好评', 81, '2020-04-26 23:30:30', '2020-04-25 23:30:29', '2020-04-25 23:30:29', NULL);
INSERT INTO `rsp_repair_online` VALUES (1254070284441493506, '分类15', '西区', '12', '213', 16102120, '学生20', '阳台水管爆裂', 'https://dss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=2902578366,1420588776&fm=26&gp=0.jpg', '自然损坏', '已经受理', '维修员1', '18011112222', '默认好评', 83, '2020-04-26 23:30:30', '2020-04-25 23:30:30', '2020-04-25 23:30:30', NULL);
INSERT INTO `rsp_repair_online` VALUES (1254070284873506817, '分类14', '西区', '9', '213', 16102121, '学生21', '阳台水管爆裂', 'https://dss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=2902578366,1420588776&fm=26&gp=0.jpg', '自然损坏', '已经受理', '维修员1', '18011112222', '默认好评', 81, '2020-04-26 23:30:30', '2020-04-25 23:30:30', '2020-04-25 23:30:30', NULL);
INSERT INTO `rsp_repair_online` VALUES (1254070285385211906, '分类7', '西区', '11', '213', 16102122, '学生22', '阳台水管爆裂', 'https://dss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=2902578366,1420588776&fm=26&gp=0.jpg', '自然损坏', '已经受理', '维修员1', '18011112222', '默认好评', 84, '2020-04-26 23:30:30', '2020-04-25 23:30:30', '2020-04-25 23:30:30', NULL);

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
) ENGINE = InnoDB AUTO_INCREMENT = 1254024060967534594 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '维修人员' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rsp_repair_repairman
-- ----------------------------
INSERT INTO `rsp_repair_repairman` VALUES (1254023749053898753, 202000000, '维修人员', 'repairman', '123456', '水电', '马尾区XXX路xxx号', '18011112222', '123456@qq.com', '2020-04-25 20:25:35', '2020-04-25 21:12:51');
INSERT INTO `rsp_repair_repairman` VALUES (1254024043485675522, 202000001, '维修员1', 'repairman1', '123456', '水电', '马尾区XXX路xxx号', '18011112222', '123456@qq.com', '2020-04-25 20:26:45', '2020-04-25 20:26:45');
INSERT INTO `rsp_repair_repairman` VALUES (1254024044337119233, 202000002, '维修员2', 'repairman2', '123456', '水电', '马尾区XXX路xxx号', '18011112222', '123456@qq.com', '2020-04-25 20:26:45', '2020-04-25 20:26:45');
INSERT INTO `rsp_repair_repairman` VALUES (1254024044907544577, 202000003, '维修员3', 'repairman3', '123456', '水电', '马尾区XXX路xxx号', '18011112222', '123456@qq.com', '2020-04-25 20:26:45', '2020-04-25 20:26:45');
INSERT INTO `rsp_repair_repairman` VALUES (1254024045389889538, 202000004, '维修员4', 'repairman4', '123456', '水电', '马尾区XXX路xxx号', '18011112222', '123456@qq.com', '2020-04-25 20:26:45', '2020-04-25 20:26:45');
INSERT INTO `rsp_repair_repairman` VALUES (1254024045876428802, 202000005, '维修员5', 'repairman5', '123456', '水电', '马尾区XXX路xxx号', '18011112222', '123456@qq.com', '2020-04-25 20:26:45', '2020-04-25 20:26:45');
INSERT INTO `rsp_repair_repairman` VALUES (1254024046362968065, 202000006, '维修员6', 'repairman6', '123456', '水电', '马尾区XXX路xxx号', '18011112222', '123456@qq.com', '2020-04-25 20:26:46', '2020-04-25 20:26:46');
INSERT INTO `rsp_repair_repairman` VALUES (1254024046874673153, 202000007, '维修员7', 'repairman7', '123456', '水电', '马尾区XXX路xxx号', '18011112222', '123456@qq.com', '2020-04-25 20:26:46', '2020-04-25 20:26:46');
INSERT INTO `rsp_repair_repairman` VALUES (1254024047340240898, 202000008, '维修员8', 'repairman8', '123456', '水电', '马尾区XXX路xxx号', '18011112222', '123456@qq.com', '2020-04-25 20:26:46', '2020-04-25 20:26:46');
INSERT INTO `rsp_repair_repairman` VALUES (1254024047839363073, 202000009, '维修员9', 'repairman9', '123456', '水电', '马尾区XXX路xxx号', '18011112222', '123456@qq.com', '2020-04-25 20:26:46', '2020-04-25 20:26:46');
INSERT INTO `rsp_repair_repairman` VALUES (1254024048317513730, 202000010, '维修员10', 'repairman10', '123456', '水电', '马尾区XXX路xxx号', '18011112222', '123456@qq.com', '2020-04-25 20:26:46', '2020-04-25 20:26:46');
INSERT INTO `rsp_repair_repairman` VALUES (1254024048812441601, 202000011, '维修员11', 'repairman11', '123456', '水电', '马尾区XXX路xxx号', '18011112222', '123456@qq.com', '2020-04-25 20:26:46', '2020-04-25 20:26:46');
INSERT INTO `rsp_repair_repairman` VALUES (1254024049273815042, 202000012, '维修员12', 'repairman12', '123456', '水电', '马尾区XXX路xxx号', '18011112222', '123456@qq.com', '2020-04-25 20:26:46', '2020-04-25 20:26:46');
INSERT INTO `rsp_repair_repairman` VALUES (1254024049743577090, 202000013, '维修员13', 'repairman13', '123456', '水电', '马尾区XXX路xxx号', '18011112222', '123456@qq.com', '2020-04-25 20:26:46', '2020-04-25 20:26:46');
INSERT INTO `rsp_repair_repairman` VALUES (1254024050221727745, 202000014, '维修员14', 'repairman14', '123456', '水电', '马尾区XXX路xxx号', '18011112222', '123456@qq.com', '2020-04-25 20:26:46', '2020-04-25 20:26:46');
INSERT INTO `rsp_repair_repairman` VALUES (1254024050695684097, 202000015, '维修员15', 'repairman15', '123456', '水电', '马尾区XXX路xxx号', '18011112222', '123456@qq.com', '2020-04-25 20:26:47', '2020-04-25 20:26:47');
INSERT INTO `rsp_repair_repairman` VALUES (1254024051203194881, 202000016, '维修员16', 'repairman16', '123456', '水电', '马尾区XXX路xxx号', '18011112222', '123456@qq.com', '2020-04-25 20:26:47', '2020-04-25 20:26:47');
INSERT INTO `rsp_repair_repairman` VALUES (1254024051714899970, 202000017, '维修员17', 'repairman17', '123456', '水电', '马尾区XXX路xxx号', '18011112222', '123456@qq.com', '2020-04-25 20:26:47', '2020-04-25 20:26:47');
INSERT INTO `rsp_repair_repairman` VALUES (1254024052172079106, 202000018, '维修员18', 'repairman18', '123456', '水电', '马尾区XXX路xxx号', '18011112222', '123456@qq.com', '2020-04-25 20:26:47', '2020-04-25 20:26:47');
INSERT INTO `rsp_repair_repairman` VALUES (1254024052637646849, 202000019, '维修员19', 'repairman19', '123456', '水电', '马尾区XXX路xxx号', '18011112222', '123456@qq.com', '2020-04-25 20:26:47', '2020-04-25 20:26:47');
INSERT INTO `rsp_repair_repairman` VALUES (1254024053119991809, 202000020, '维修员20', 'repairman20', '123456', '水电', '马尾区XXX路xxx号', '18011112222', '123456@qq.com', '2020-04-25 20:26:47', '2020-04-25 20:26:47');
INSERT INTO `rsp_repair_repairman` VALUES (1254024053581365250, 202000021, '维修员21', 'repairman21', '123456', '水电', '马尾区XXX路xxx号', '18011112222', '123456@qq.com', '2020-04-25 20:26:47', '2020-04-25 20:26:47');
INSERT INTO `rsp_repair_repairman` VALUES (1254024054168567809, 202000022, '维修员22', 'repairman22', '123456', '水电', '马尾区XXX路xxx号', '18011112222', '123456@qq.com', '2020-04-25 20:26:47', '2020-04-25 20:26:47');
INSERT INTO `rsp_repair_repairman` VALUES (1254024054718021634, 202000023, '维修员23', 'repairman23', '123456', '水电', '马尾区XXX路xxx号', '18011112222', '123456@qq.com', '2020-04-25 20:26:48', '2020-04-25 20:26:48');
INSERT INTO `rsp_repair_repairman` VALUES (1254024055191977986, 202000024, '维修员24', 'repairman24', '123456', '水电', '马尾区XXX路xxx号', '18011112222', '123456@qq.com', '2020-04-25 20:26:48', '2020-04-25 20:26:48');
INSERT INTO `rsp_repair_repairman` VALUES (1254024055665934337, 202000025, '维修员25', 'repairman25', '123456', '水电', '马尾区XXX路xxx号', '18011112222', '123456@qq.com', '2020-04-25 20:26:48', '2020-04-25 20:26:48');
INSERT INTO `rsp_repair_repairman` VALUES (1254024056127307777, 202000026, '维修员26', 'repairman26', '123456', '水电', '马尾区XXX路xxx号', '18011112222', '123456@qq.com', '2020-04-25 20:26:48', '2020-04-25 20:26:48');
INSERT INTO `rsp_repair_repairman` VALUES (1254024056605458434, 202000027, '维修员27', 'repairman27', '123456', '水电', '马尾区XXX路xxx号', '18011112222', '123456@qq.com', '2020-04-25 20:26:48', '2020-04-25 20:26:48');
INSERT INTO `rsp_repair_repairman` VALUES (1254024057075220481, 202000028, '维修员28', 'repairman28', '123456', '水电', '马尾区XXX路xxx号', '18011112222', '123456@qq.com', '2020-04-25 20:26:48', '2020-04-25 20:26:48');
INSERT INTO `rsp_repair_repairman` VALUES (1254024057519816706, 202000029, '维修员29', 'repairman29', '123456', '水电', '马尾区XXX路xxx号', '18011112222', '123456@qq.com', '2020-04-25 20:26:48', '2020-04-25 20:26:48');
INSERT INTO `rsp_repair_repairman` VALUES (1254024058010550274, 202000030, '维修员30', 'repairman30', '123456', '水电', '马尾区XXX路xxx号', '18011112222', '123456@qq.com', '2020-04-25 20:26:48', '2020-04-25 20:26:48');
INSERT INTO `rsp_repair_repairman` VALUES (1254024058526449665, 202000031, '维修员31', 'repairman31', '123456', '水电', '马尾区XXX路xxx号', '18011112222', '123456@qq.com', '2020-04-25 20:26:48', '2020-04-25 20:26:48');
INSERT INTO `rsp_repair_repairman` VALUES (1254024059004600322, 202000032, '维修员32', 'repairman32', '123456', '水电', '马尾区XXX路xxx号', '18011112222', '123456@qq.com', '2020-04-25 20:26:49', '2020-04-25 20:26:49');
INSERT INTO `rsp_repair_repairman` VALUES (1254024059461779457, 202000033, '维修员33', 'repairman33', '123456', '水电', '马尾区XXX路xxx号', '18011112222', '123456@qq.com', '2020-04-25 20:26:49', '2020-04-25 20:26:49');
INSERT INTO `rsp_repair_repairman` VALUES (1254024059910569986, 202000034, '维修员34', 'repairman34', '123456', '水电', '马尾区XXX路xxx号', '18011112222', '123456@qq.com', '2020-04-25 20:26:49', '2020-04-25 20:26:49');
INSERT INTO `rsp_repair_repairman` VALUES (1254024060405497857, 202000035, '维修员35', 'repairman35', '123456', '水电', '马尾区XXX路xxx号', '18011112222', '123456@qq.com', '2020-04-25 20:26:49', '2020-04-25 20:26:49');
INSERT INTO `rsp_repair_repairman` VALUES (1254024060967534593, 202000036, '维修员36', 'repairman36', '123456', '水电', '马尾区XXX路xxx号', '18011112222', '123456@qq.com', '2020-04-25 20:26:49', '2020-04-25 20:26:49');

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
) ENGINE = InnoDB AUTO_INCREMENT = 1254021528409047042 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '报修类型' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rsp_repair_type
-- ----------------------------
INSERT INTO `rsp_repair_type` VALUES (1254021519135440897, '20001', '分类0', '分类描述,维修分类等0', '2020-04-25 20:16:43', '2020-04-25 20:16:43');
INSERT INTO `rsp_repair_type` VALUES (1254021519953330177, '20001', '分类1', '分类描述,维修分类等1', '2020-04-25 20:16:43', '2020-04-25 20:16:43');
INSERT INTO `rsp_repair_type` VALUES (1254021520486006785, '20001', '分类2', '分类描述,维修分类等2', '2020-04-25 20:16:43', '2020-04-25 20:16:43');
INSERT INTO `rsp_repair_type` VALUES (1254021520880271362, '20001', '分类3', '分类描述,维修分类等3', '2020-04-25 20:16:43', '2020-04-25 20:16:43');
INSERT INTO `rsp_repair_type` VALUES (1254021521337450498, '20001', '分类4', '分类描述,维修分类等4', '2020-04-25 20:16:44', '2020-04-25 20:16:44');
INSERT INTO `rsp_repair_type` VALUES (1254021521807212545, '20001', '分类5', '分类描述,维修分类等5', '2020-04-25 20:16:44', '2020-04-25 20:16:44');
INSERT INTO `rsp_repair_type` VALUES (1254021522239225857, '20001', '分类6', '分类描述,维修分类等6', '2020-04-25 20:16:44', '2020-04-25 20:16:44');
INSERT INTO `rsp_repair_type` VALUES (1254021522872565761, '20001', '分类7', '分类描述,维修分类等7', '2020-04-25 20:16:44', '2020-04-25 20:16:44');
INSERT INTO `rsp_repair_type` VALUES (1254021523291996162, '20001', '分类8', '分类描述,维修分类等8', '2020-04-25 20:16:44', '2020-04-25 20:16:44');
INSERT INTO `rsp_repair_type` VALUES (1254021523711426561, '20001', '分类9', '分类描述,维修分类等9', '2020-04-25 20:16:44', '2020-04-25 20:16:44');
INSERT INTO `rsp_repair_type` VALUES (1254021524185382914, '20001', '分类10', '分类描述,维修分类等10', '2020-04-25 20:16:44', '2020-04-25 20:16:44');
INSERT INTO `rsp_repair_type` VALUES (1254021524592230402, '20001', '分类11', '分类描述,维修分类等11', '2020-04-25 20:16:44', '2020-04-25 20:16:44');
INSERT INTO `rsp_repair_type` VALUES (1254021524990689281, '20001', '分类12', '分类描述,维修分类等12', '2020-04-25 20:16:44', '2020-04-25 20:16:44');
INSERT INTO `rsp_repair_type` VALUES (1254021525456257025, '20001', '分类13', '分类描述,维修分类等13', '2020-04-25 20:16:45', '2020-04-25 20:16:45');
INSERT INTO `rsp_repair_type` VALUES (1254021525951184898, '20001', '分类14', '分类描述,维修分类等14', '2020-04-25 20:16:45', '2020-04-25 20:16:45');
INSERT INTO `rsp_repair_type` VALUES (1254021526500638722, '20001', '分类15', '分类描述,维修分类等15', '2020-04-25 20:16:45', '2020-04-25 20:16:45');
INSERT INTO `rsp_repair_type` VALUES (1254021526987177986, '20001', '分类16', '分类描述,维修分类等16', '2020-04-25 20:16:45', '2020-04-25 20:16:45');
INSERT INTO `rsp_repair_type` VALUES (1254021527410802689, '20001', '分类17', '分类描述,维修分类等17', '2020-04-25 20:16:45', '2020-04-25 20:16:45');
INSERT INTO `rsp_repair_type` VALUES (1254021527951867906, '20001', '分类18', '分类描述,维修分类等18', '2020-04-25 20:16:45', '2020-04-25 20:16:45');
INSERT INTO `rsp_repair_type` VALUES (1254021528409047041, '20001', '分类19', '分类描述,维修分类等19', '2020-04-25 20:16:45', '2020-04-25 20:16:45');

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
) ENGINE = InnoDB AUTO_INCREMENT = 1254025856058298370 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户报修' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rsp_repair_user
-- ----------------------------
INSERT INTO `rsp_repair_user` VALUES (1254024673235238914, 16100000, '张三', 'zhansan', '123456', '西十三', '18011112222', '123456789@qq.com', '2020-04-25 20:29:15', '2020-04-25 20:29:15');
INSERT INTO `rsp_repair_user` VALUES (1254025820322828290, 16102101, '学生1', 'stuUser1', '123456', '西12', '18011112222', '123456789@qq.com', '2020-04-25 20:33:49', '2020-04-25 20:33:49');
INSERT INTO `rsp_repair_user` VALUES (1254025821107163137, 16102102, '学生2', 'stuUser2', '123456', '西12', '18011112222', '123456789@qq.com', '2020-04-25 20:33:49', '2020-04-25 20:33:49');
INSERT INTO `rsp_repair_user` VALUES (1254025821530787841, 16102103, '学生3', 'stuUser3', '123456', '西12', '18011112222', '123456789@qq.com', '2020-04-25 20:33:49', '2020-04-25 20:33:49');
INSERT INTO `rsp_repair_user` VALUES (1254025821979578370, 16102104, '学生4', 'stuUser4', '123456', '西11', '18011112222', '123456789@qq.com', '2020-04-25 20:33:49', '2020-04-25 20:33:49');
INSERT INTO `rsp_repair_user` VALUES (1254025822403203074, 16102105, '学生5', 'stuUser5', '123456', '西9', '18011112222', '123456789@qq.com', '2020-04-25 20:33:49', '2020-04-25 20:33:49');
INSERT INTO `rsp_repair_user` VALUES (1254025823162372097, 16102106, '学生6', 'stuUser6', '123456', '西9', '18011112222', '123456789@qq.com', '2020-04-25 20:33:49', '2020-04-25 20:33:49');
INSERT INTO `rsp_repair_user` VALUES (1254025823627939841, 16102107, '学生7', 'stuUser7', '123456', '西12', '18011112222', '123456789@qq.com', '2020-04-25 20:33:49', '2020-04-25 20:33:49');
INSERT INTO `rsp_repair_user` VALUES (1254025824143839234, 16102108, '学生8', 'stuUser8', '123456', '西11', '18011112222', '123456789@qq.com', '2020-04-25 20:33:49', '2020-04-25 20:33:49');
INSERT INTO `rsp_repair_user` VALUES (1254025824634572802, 16102109, '学生9', 'stuUser9', '123456', '西12', '18011112222', '123456789@qq.com', '2020-04-25 20:33:50', '2020-04-25 20:33:50');
INSERT INTO `rsp_repair_user` VALUES (1254025825146277889, 16102110, '学生10', 'stuUser10', '123456', '西10', '18011112222', '123456789@qq.com', '2020-04-25 20:33:50', '2020-04-25 20:33:50');
INSERT INTO `rsp_repair_user` VALUES (1254025825578291201, 16102111, '学生11', 'stuUser11', '123456', '西11', '18011112222', '123456789@qq.com', '2020-04-25 20:33:50', '2020-04-25 20:33:50');
INSERT INTO `rsp_repair_user` VALUES (1254025826006110209, 16102112, '学生12', 'stuUser12', '123456', '西12', '18011112222', '123456789@qq.com', '2020-04-25 20:33:50', '2020-04-25 20:33:50');
INSERT INTO `rsp_repair_user` VALUES (1254025826429734914, 16102113, '学生13', 'stuUser13', '123456', '西11', '18011112222', '123456789@qq.com', '2020-04-25 20:33:50', '2020-04-25 20:33:50');
INSERT INTO `rsp_repair_user` VALUES (1254025826861748225, 16102114, '学生14', 'stuUser14', '123456', '西11', '18011112222', '123456789@qq.com', '2020-04-25 20:33:50', '2020-04-25 20:33:50');
INSERT INTO `rsp_repair_user` VALUES (1254025828459778049, 16102115, '学生15', 'stuUser15', '123456', '西10', '18011112222', '123456789@qq.com', '2020-04-25 20:33:50', '2020-04-25 20:33:50');
INSERT INTO `rsp_repair_user` VALUES (1254025828929540097, 16102116, '学生16', 'stuUser16', '123456', '西10', '18011112222', '123456789@qq.com', '2020-04-25 20:33:51', '2020-04-25 20:33:51');
INSERT INTO `rsp_repair_user` VALUES (1254025829495771137, 16102117, '学生17', 'stuUser17', '123456', '西9', '18011112222', '123456789@qq.com', '2020-04-25 20:33:51', '2020-04-25 20:33:51');
INSERT INTO `rsp_repair_user` VALUES (1254025831030886401, 16102118, '学生18', 'stuUser18', '123456', '西12', '18011112222', '123456789@qq.com', '2020-04-25 20:33:51', '2020-04-25 20:33:51');
INSERT INTO `rsp_repair_user` VALUES (1254025831513231361, 16102119, '学生19', 'stuUser19', '123456', '西12', '18011112222', '123456789@qq.com', '2020-04-25 20:33:51', '2020-04-25 20:33:51');
INSERT INTO `rsp_repair_user` VALUES (1254025831999770625, 16102120, '学生20', 'stuUser20', '123456', '西12', '18011112222', '123456789@qq.com', '2020-04-25 20:33:52', '2020-04-25 20:33:52');
INSERT INTO `rsp_repair_user` VALUES (1254025833618771969, 16102121, '学生21', 'stuUser21', '123456', '西11', '18011112222', '123456789@qq.com', '2020-04-25 20:33:52', '2020-04-25 20:33:52');
INSERT INTO `rsp_repair_user` VALUES (1254025834092728321, 16102122, '学生22', 'stuUser22', '123456', '西11', '18011112222', '123456789@qq.com', '2020-04-25 20:33:52', '2020-04-25 20:33:52');
INSERT INTO `rsp_repair_user` VALUES (1254025834545713154, 16102123, '学生23', 'stuUser23', '123456', '西10', '18011112222', '123456789@qq.com', '2020-04-25 20:33:52', '2020-04-25 20:33:52');
INSERT INTO `rsp_repair_user` VALUES (1254025835023863810, 16102124, '学生24', 'stuUser24', '123456', '西9', '18011112222', '123456789@qq.com', '2020-04-25 20:33:52', '2020-04-25 20:33:52');
INSERT INTO `rsp_repair_user` VALUES (1254025835447488513, 16102125, '学生25', 'stuUser25', '123456', '西11', '18011112222', '123456789@qq.com', '2020-04-25 20:33:52', '2020-04-25 20:33:52');
INSERT INTO `rsp_repair_user` VALUES (1254025835917250561, 16102126, '学生26', 'stuUser26', '123456', '西9', '18011112222', '123456789@qq.com', '2020-04-25 20:33:52', '2020-04-25 20:33:52');
INSERT INTO `rsp_repair_user` VALUES (1254025836349263874, 16102127, '学生27', 'stuUser27', '123456', '西12', '18011112222', '123456789@qq.com', '2020-04-25 20:33:52', '2020-04-25 20:33:52');
INSERT INTO `rsp_repair_user` VALUES (1254025836768694274, 16102128, '学生28', 'stuUser28', '123456', '西9', '18011112222', '123456789@qq.com', '2020-04-25 20:33:52', '2020-04-25 20:33:52');
INSERT INTO `rsp_repair_user` VALUES (1254025837196513281, 16102129, '学生29', 'stuUser29', '123456', '西11', '18011112222', '123456789@qq.com', '2020-04-25 20:33:53', '2020-04-25 20:33:53');
INSERT INTO `rsp_repair_user` VALUES (1254025837624332289, 16102130, '学生30', 'stuUser30', '123456', '西9', '18011112222', '123456789@qq.com', '2020-04-25 20:33:53', '2020-04-25 20:33:53');
INSERT INTO `rsp_repair_user` VALUES (1254025838068928513, 16102131, '学生31', 'stuUser31', '123456', '西9', '18011112222', '123456789@qq.com', '2020-04-25 20:33:53', '2020-04-25 20:33:53');
INSERT INTO `rsp_repair_user` VALUES (1254025838517719041, 16102132, '学生32', 'stuUser32', '123456', '西10', '18011112222', '123456789@qq.com', '2020-04-25 20:33:53', '2020-04-25 20:33:53');
INSERT INTO `rsp_repair_user` VALUES (1254025838945538049, 16102133, '学生33', 'stuUser33', '123456', '西12', '18011112222', '123456789@qq.com', '2020-04-25 20:33:53', '2020-04-25 20:33:53');
INSERT INTO `rsp_repair_user` VALUES (1254025839377551361, 16102134, '学生34', 'stuUser34', '123456', '西11', '18011112222', '123456789@qq.com', '2020-04-25 20:33:53', '2020-04-25 20:33:53');
INSERT INTO `rsp_repair_user` VALUES (1254025839809564673, 16102135, '学生35', 'stuUser35', '123456', '西11', '18011112222', '123456789@qq.com', '2020-04-25 20:33:53', '2020-04-25 20:33:53');
INSERT INTO `rsp_repair_user` VALUES (1254025840254160898, 16102136, '学生36', 'stuUser36', '123456', '西12', '18011112222', '123456789@qq.com', '2020-04-25 20:33:53', '2020-04-25 20:33:53');
INSERT INTO `rsp_repair_user` VALUES (1254025840698757122, 16102137, '学生37', 'stuUser37', '123456', '西12', '18011112222', '123456789@qq.com', '2020-04-25 20:33:53', '2020-04-25 20:33:53');
INSERT INTO `rsp_repair_user` VALUES (1254025841126576130, 16102138, '学生38', 'stuUser38', '123456', '西9', '18011112222', '123456789@qq.com', '2020-04-25 20:33:54', '2020-04-25 20:33:54');
INSERT INTO `rsp_repair_user` VALUES (1254025843945148417, 16102139, '学生39', 'stuUser39', '123456', '西11', '18011112222', '123456789@qq.com', '2020-04-25 20:33:54', '2020-04-25 20:33:54');
INSERT INTO `rsp_repair_user` VALUES (1254025844435881986, 16102140, '学生40', 'stuUser40', '123456', '西9', '18011112222', '123456789@qq.com', '2020-04-25 20:33:54', '2020-04-25 20:33:54');
INSERT INTO `rsp_repair_user` VALUES (1254025844884672514, 16102141, '学生41', 'stuUser41', '123456', '西10', '18011112222', '123456789@qq.com', '2020-04-25 20:33:54', '2020-04-25 20:33:54');
INSERT INTO `rsp_repair_user` VALUES (1254025845316685825, 16102142, '学生42', 'stuUser42', '123456', '西12', '18011112222', '123456789@qq.com', '2020-04-25 20:33:54', '2020-04-25 20:33:54');
INSERT INTO `rsp_repair_user` VALUES (1254025845748699138, 16102143, '学生43', 'stuUser43', '123456', '西11', '18011112222', '123456789@qq.com', '2020-04-25 20:33:55', '2020-04-25 20:33:55');
INSERT INTO `rsp_repair_user` VALUES (1254025846172323842, 16102144, '学生44', 'stuUser44', '123456', '西9', '18011112222', '123456789@qq.com', '2020-04-25 20:33:55', '2020-04-25 20:33:55');
INSERT INTO `rsp_repair_user` VALUES (1254025846579171329, 16102145, '学生45', 'stuUser45', '123456', '西9', '18011112222', '123456789@qq.com', '2020-04-25 20:33:55', '2020-04-25 20:33:55');
INSERT INTO `rsp_repair_user` VALUES (1254025847015378945, 16102146, '学生46', 'stuUser46', '123456', '西12', '18011112222', '123456789@qq.com', '2020-04-25 20:33:55', '2020-04-25 20:33:55');
INSERT INTO `rsp_repair_user` VALUES (1254025847489335297, 16102147, '学生47', 'stuUser47', '123456', '西9', '18011112222', '123456789@qq.com', '2020-04-25 20:33:55', '2020-04-25 20:33:55');
INSERT INTO `rsp_repair_user` VALUES (1254025847921348609, 16102148, '学生48', 'stuUser48', '123456', '西10', '18011112222', '123456789@qq.com', '2020-04-25 20:33:55', '2020-04-25 20:33:55');
INSERT INTO `rsp_repair_user` VALUES (1254025848344973313, 16102149, '学生49', 'stuUser49', '123456', '西11', '18011112222', '123456789@qq.com', '2020-04-25 20:33:55', '2020-04-25 20:33:55');
INSERT INTO `rsp_repair_user` VALUES (1254025848756015105, 16102150, '学生50', 'stuUser50', '123456', '西11', '18011112222', '123456789@qq.com', '2020-04-25 20:33:55', '2020-04-25 20:33:55');
INSERT INTO `rsp_repair_user` VALUES (1254025849179639810, 16102151, '学生51', 'stuUser51', '123456', '西10', '18011112222', '123456789@qq.com', '2020-04-25 20:33:55', '2020-04-25 20:33:55');
INSERT INTO `rsp_repair_user` VALUES (1254025849838145538, 16102152, '学生52', 'stuUser52', '123456', '西12', '18011112222', '123456789@qq.com', '2020-04-25 20:33:56', '2020-04-25 20:33:56');
INSERT INTO `rsp_repair_user` VALUES (1254025850303713282, 16102153, '学生53', 'stuUser53', '123456', '西10', '18011112222', '123456789@qq.com', '2020-04-25 20:33:56', '2020-04-25 20:33:56');
INSERT INTO `rsp_repair_user` VALUES (1254025850777669634, 16102154, '学生54', 'stuUser54', '123456', '西9', '18011112222', '123456789@qq.com', '2020-04-25 20:33:56', '2020-04-25 20:33:56');
INSERT INTO `rsp_repair_user` VALUES (1254025851192905730, 16102155, '学生55', 'stuUser55', '123456', '西9', '18011112222', '123456789@qq.com', '2020-04-25 20:33:56', '2020-04-25 20:33:56');
INSERT INTO `rsp_repair_user` VALUES (1254025851599753217, 16102156, '学生56', 'stuUser56', '123456', '西9', '18011112222', '123456789@qq.com', '2020-04-25 20:33:56', '2020-04-25 20:33:56');
INSERT INTO `rsp_repair_user` VALUES (1254025852111458305, 16102157, '学生57', 'stuUser57', '123456', '西10', '18011112222', '123456789@qq.com', '2020-04-25 20:33:56', '2020-04-25 20:33:56');
INSERT INTO `rsp_repair_user` VALUES (1254025852564443138, 16102158, '学生58', 'stuUser58', '123456', '西11', '18011112222', '123456789@qq.com', '2020-04-25 20:33:56', '2020-04-25 20:33:56');
INSERT INTO `rsp_repair_user` VALUES (1254025852988067841, 16102159, '学生59', 'stuUser59', '123456', '西10', '18011112222', '123456789@qq.com', '2020-04-25 20:33:56', '2020-04-25 20:33:56');
INSERT INTO `rsp_repair_user` VALUES (1254025853436858369, 16102160, '学生60', 'stuUser60', '123456', '西12', '18011112222', '123456789@qq.com', '2020-04-25 20:33:56', '2020-04-25 20:33:56');
INSERT INTO `rsp_repair_user` VALUES (1254025853889843201, 16102161, '学生61', 'stuUser61', '123456', '西12', '18011112222', '123456789@qq.com', '2020-04-25 20:33:57', '2020-04-25 20:33:57');
INSERT INTO `rsp_repair_user` VALUES (1254025854330245121, 16102162, '学生62', 'stuUser62', '123456', '西9', '18011112222', '123456789@qq.com', '2020-04-25 20:33:57', '2020-04-25 20:33:57');
INSERT INTO `rsp_repair_user` VALUES (1254025854774841346, 16102163, '学生63', 'stuUser63', '123456', '西11', '18011112222', '123456789@qq.com', '2020-04-25 20:33:57', '2020-04-25 20:33:57');
INSERT INTO `rsp_repair_user` VALUES (1254025855181688834, 16102164, '学生64', 'stuUser64', '123456', '西10', '18011112222', '123456789@qq.com', '2020-04-25 20:33:57', '2020-04-25 20:33:57');
INSERT INTO `rsp_repair_user` VALUES (1254025855626285057, 16102165, '学生65', 'stuUser65', '123456', '西9', '18011112222', '123456789@qq.com', '2020-04-25 20:33:57', '2020-04-25 20:33:57');
INSERT INTO `rsp_repair_user` VALUES (1254025856058298369, 16102166, '学生66', 'stuUser66', '123456', '西11', '18011112222', '123456789@qq.com', '2020-04-25 20:33:57', '2020-04-25 20:33:57');

SET FOREIGN_KEY_CHECKS = 1;
