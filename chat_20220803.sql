/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50713
 Source Host           : localhost:3306
 Source Schema         : subtlechat

 Target Server Type    : MySQL
 Target Server Version : 50713
 File Encoding         : 65001

 Date: 03/08/2022 17:46:21
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '登录账号',
  `nickname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '昵称',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `user_profile` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '管理员头像',
  `is_delete` int(11) NULL DEFAULT NULL COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, 'admin', '系统管理员', '$2a$10$oE39aG10kB/rFu2vQeCJTu/V/v4n6DRR0f8WyXRiAYvBpmadoOBE.', 'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=1784117537,3335593911&fm=26&gp=0.jpg', 0);
INSERT INTO `admin` VALUES (3, 'admin11', 'admin11', '$2a$10$GzImPsOQslbdjcfH.7i5Wu8ZtzWMq7x5SLdLS8ScEU2KEaBD5tOY2', 'https://img1.baidu.com/it/u=3728101932,854154293&fm=253&app=138&size=w931&n=0&f=JPEG&fmt=auto?sec=1659114000&t=d0d13a927adf771204bfc9be19ebe53f', 0);

-- ----------------------------
-- Table structure for feedback
-- ----------------------------
DROP TABLE IF EXISTS `feedback`;
CREATE TABLE `feedback`  (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `username` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nickname` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_delete` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of feedback
-- ----------------------------
INSERT INTO `feedback` VALUES ('055b47a8-b29d-4a38-98dd-16e34e09bc5f', '1', 'huang', '王路飞', '!good job!!!', 0);
INSERT INTO `feedback` VALUES ('1a46c7a4-5b29-4409-ae1f-ecab8996e254', '1', 'huang', '王路飞', '!!!!good job!!!!wow', 0);
INSERT INTO `feedback` VALUES ('1fb83166-e4d0-49b2-bb9e-a2849e8ff4bc', '1', 'huang', '王路飞', 'good job', 0);
INSERT INTO `feedback` VALUES ('3d73af3e-dc4d-44c8-84cc-787d001482c5', '1', 'huang', '王路飞', '!!!!good job!!!', 0);
INSERT INTO `feedback` VALUES ('509dd4d6-2672-40f9-840c-d93f5d577dc5', '1', 'huang', '王路飞', '!!!!good job!!!!wow', 0);
INSERT INTO `feedback` VALUES ('6d403812-7759-4c07-9616-c9ed900a8bdf', '1', 'huang', '王路飞', '!!!!good job!!!!wow', 0);
INSERT INTO `feedback` VALUES ('980ade45-98c8-4baa-8bcb-c2bc99187608', '1', 'huang', '王路飞', 'woooww！！！man,this is great!', 0);
INSERT INTO `feedback` VALUES ('9a2bd6d5-b42e-4381-ad1b-dc170778c9b5', '1', 'huang', '王路飞', '!good job!!!', 0);
INSERT INTO `feedback` VALUES ('b4e6f36e-a42a-4edf-a7ec-d6748ea9c418', '1', 'huang', '王路飞', '!good job!', 0);
INSERT INTO `feedback` VALUES ('b61c873c-3d3e-4991-b9e6-78eeae23c205', '1', 'huang', '王路飞', '!!!!good job!!!!wow', 0);
INSERT INTO `feedback` VALUES ('c2121704-e610-4fd7-9e11-fa4057df9b3b', '1', 'huang', '王路飞', '!good job!!!', 0);
INSERT INTO `feedback` VALUES ('d009a2a6-c7a3-4b29-b32b-848fca278c45', '1', 'huang', '王路飞', '!!!!good job!!!!wow', 0);
INSERT INTO `feedback` VALUES ('d1741d1e-8151-44eb-ba32-c83cfe107361', '1', 'huang', '王路飞', '!good job!!', 0);
INSERT INTO `feedback` VALUES ('ed70f54e-7748-4d36-adc8-c9131875e6f5', '1', 'huang', '王路飞', '!good job!!!', 0);

-- ----------------------------
-- Table structure for group_info
-- ----------------------------
DROP TABLE IF EXISTS `group_info`;
CREATE TABLE `group_info`  (
  `id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '主键',
  `group_name` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '组名称',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '组创建时间',
  `is_delete` int(11) NULL DEFAULT 0 COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of group_info
-- ----------------------------
INSERT INTO `group_info` VALUES ('1', '组1', '2022-08-01 14:28:39', 0);
INSERT INTO `group_info` VALUES ('f1b17b40ed30e7282e8b15d6e4631328', '测试组1', '2022-08-01 15:03:49', 0);

-- ----------------------------
-- Table structure for group_msg_content
-- ----------------------------
DROP TABLE IF EXISTS `group_msg_content`;
CREATE TABLE `group_msg_content`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `group_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '组id',
  `from_id` int(11) NULL DEFAULT NULL COMMENT '发送者的编号',
  `from_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发送者的昵称',
  `from_profile` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发送者的头像',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '消息发送时间',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '消息内容',
  `message_type_id` int(11) NULL DEFAULT NULL COMMENT '消息类型编号',
  `is_delete` int(11) NULL DEFAULT 0 COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `group_ibfk_1`(`from_id`) USING BTREE,
  INDEX `group_ibfk_2`(`message_type_id`) USING BTREE,
  CONSTRAINT `group_ibfk_1` FOREIGN KEY (`from_id`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `group_ibfk_2` FOREIGN KEY (`message_type_id`) REFERENCES `message_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 157 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of group_msg_content
-- ----------------------------
INSERT INTO `group_msg_content` VALUES (1, NULL, 1, '王路飞', 'https://img1.baidu.com/it/u=1966616150,2146512490&fm=253&fmt=auto&app=138&f=JPEG?w=751&h=500', '2020-06-17 03:02:28', '大家好', 1, 0);
INSERT INTO `group_msg_content` VALUES (2, NULL, 1, '王路飞', 'https://img1.baidu.com/it/u=1966616150,2146512490&fm=253&fmt=auto&app=138&f=JPEG?w=751&h=500', '2020-06-17 03:04:24', '大家好！', 1, 0);
INSERT INTO `group_msg_content` VALUES (3, NULL, 1, '王路飞', 'https://img1.baidu.com/it/u=1966616150,2146512490&fm=253&fmt=auto&app=138&f=JPEG?w=751&h=500', '2020-06-17 04:51:56', 'hello', 1, 0);
INSERT INTO `group_msg_content` VALUES (4, NULL, 1, '王路飞', 'https://img1.baidu.com/it/u=1966616150,2146512490&fm=253&fmt=auto&app=138&f=JPEG?w=751&h=500', '2020-06-17 12:55:32', '88', 1, 0);
INSERT INTO `group_msg_content` VALUES (6, NULL, 1, '王路飞', 'https://img1.baidu.com/it/u=1966616150,2146512490&fm=253&fmt=auto&app=138&f=JPEG?w=751&h=500', '2020-06-17 13:28:44', '321', 1, 0);
INSERT INTO `group_msg_content` VALUES (14, NULL, 1, '王路飞', 'https://img1.baidu.com/it/u=1966616150,2146512490&fm=253&fmt=auto&app=138&f=JPEG?w=751&h=500', '2020-06-17 22:05:00', '三刀流', 1, 0);
INSERT INTO `group_msg_content` VALUES (15, NULL, 2, '刘索隆', 'https://img0.baidu.com/it/u=2521851051,2189866243&fm=253&fmt=auto&app=138&f=JPEG?w=889&h=500', '2020-06-17 22:17:10', '其他人呢？', 1, 0);
INSERT INTO `group_msg_content` VALUES (16, NULL, 1, '王路飞', 'https://img1.baidu.com/it/u=1966616150,2146512490&fm=253&fmt=auto&app=138&f=JPEG?w=751&h=500', '2020-06-17 22:46:09', '不知道', 1, 0);
INSERT INTO `group_msg_content` VALUES (17, NULL, 2, '刘索隆', 'https://img0.baidu.com/it/u=2521851051,2189866243&fm=253&fmt=auto&app=138&f=JPEG?w=889&h=500', '2020-06-17 22:47:35', '???', 1, 0);
INSERT INTO `group_msg_content` VALUES (18, NULL, 1, '王路飞', 'https://img1.baidu.com/it/u=1966616150,2146512490&fm=253&fmt=auto&app=138&f=JPEG?w=751&h=500', '2020-06-17 22:47:59', '？', 1, 0);
INSERT INTO `group_msg_content` VALUES (19, NULL, 1, '王路飞', 'https://img1.baidu.com/it/u=1966616150,2146512490&fm=253&fmt=auto&app=138&f=JPEG?w=751&h=500', '2020-06-17 23:02:46', '111', 1, 0);
INSERT INTO `group_msg_content` VALUES (20, NULL, 2, '刘索隆', 'https://img0.baidu.com/it/u=2521851051,2189866243&fm=253&fmt=auto&app=138&f=JPEG?w=889&h=500', '2020-06-17 23:03:20', '111', 1, 0);
INSERT INTO `group_msg_content` VALUES (21, NULL, 2, '刘索隆', 'https://img0.baidu.com/it/u=2521851051,2189866243&fm=253&fmt=auto&app=138&f=JPEG?w=889&h=500', '2020-06-17 23:03:33', '111', 1, 0);
INSERT INTO `group_msg_content` VALUES (22, NULL, 2, '刘索隆', 'https://img0.baidu.com/it/u=2521851051,2189866243&fm=253&fmt=auto&app=138&f=JPEG?w=889&h=500', '2020-06-17 23:07:52', '2', 1, 0);
INSERT INTO `group_msg_content` VALUES (23, NULL, 1, '王路飞', 'https://img1.baidu.com/it/u=1966616150,2146512490&fm=253&fmt=auto&app=138&f=JPEG?w=751&h=500', '2020-06-17 23:08:36', '33', 1, 0);
INSERT INTO `group_msg_content` VALUES (24, NULL, 1, '王路飞', 'https://img1.baidu.com/it/u=1966616150,2146512490&fm=253&fmt=auto&app=138&f=JPEG?w=751&h=500', '2020-06-17 23:14:51', '111', 1, 0);
INSERT INTO `group_msg_content` VALUES (25, NULL, 1, '王路飞', 'https://img1.baidu.com/it/u=1966616150,2146512490&fm=253&fmt=auto&app=138&f=JPEG?w=751&h=500', '2020-06-17 23:18:18', 'awsl', 1, 0);
INSERT INTO `group_msg_content` VALUES (26, NULL, 1, '王路飞', 'https://img1.baidu.com/it/u=1966616150,2146512490&fm=253&fmt=auto&app=138&f=JPEG?w=751&h=500', '2020-06-17 23:36:23', 'wa', 1, 0);
INSERT INTO `group_msg_content` VALUES (27, NULL, 2, '刘索隆', 'https://img0.baidu.com/it/u=2521851051,2189866243&fm=253&fmt=auto&app=138&f=JPEG?w=889&h=500', '2020-06-17 23:37:04', 'waaaa\n', 1, 0);
INSERT INTO `group_msg_content` VALUES (28, NULL, 1, '王路飞', 'https://img1.baidu.com/it/u=1966616150,2146512490&fm=253&fmt=auto&app=138&f=JPEG?w=751&h=500', '2020-06-17 23:37:20', 'lallala', 1, 0);
INSERT INTO `group_msg_content` VALUES (29, NULL, 2, '刘索隆', 'https://img0.baidu.com/it/u=2521851051,2189866243&fm=253&fmt=auto&app=138&f=JPEG?w=889&h=500', '2020-06-17 23:37:29', '666', 1, 0);
INSERT INTO `group_msg_content` VALUES (30, NULL, 2, '刘索隆', 'https://img0.baidu.com/it/u=2521851051,2189866243&fm=253&fmt=auto&app=138&f=JPEG?w=889&h=500', '2020-06-18 14:29:52', '55555', 1, 0);
INSERT INTO `group_msg_content` VALUES (31, NULL, 2, '刘索隆', 'https://img0.baidu.com/it/u=2521851051,2189866243&fm=253&fmt=auto&app=138&f=JPEG?w=889&h=500', '2020-06-18 14:30:10', '444444', 1, 0);
INSERT INTO `group_msg_content` VALUES (32, NULL, 1, '王路飞', 'https://img1.baidu.com/it/u=1966616150,2146512490&fm=253&fmt=auto&app=138&f=JPEG?w=751&h=500', '2020-06-18 14:30:23', '22222', 1, 0);
INSERT INTO `group_msg_content` VALUES (33, NULL, 2, '刘索隆', 'https://img0.baidu.com/it/u=2521851051,2189866243&fm=253&fmt=auto&app=138&f=JPEG?w=889&h=500', '2020-06-18 14:36:53', '666', 1, 0);
INSERT INTO `group_msg_content` VALUES (34, NULL, 1, '王路飞', 'https://img1.baidu.com/it/u=1966616150,2146512490&fm=253&fmt=auto&app=138&f=JPEG?w=751&h=500', '2020-06-18 14:37:01', '啦啦啦啦', 1, 0);
INSERT INTO `group_msg_content` VALUES (35, NULL, 2, '刘索隆', 'https://img0.baidu.com/it/u=2521851051,2189866243&fm=253&fmt=auto&app=138&f=JPEG?w=889&h=500', '2020-06-18 14:37:30', 'eee', 1, 0);
INSERT INTO `group_msg_content` VALUES (36, NULL, 1, '王路飞', 'https://img1.baidu.com/it/u=1966616150,2146512490&fm=253&fmt=auto&app=138&f=JPEG?w=751&h=500', '2020-06-18 14:47:31', '啊啊啊', 1, 0);
INSERT INTO `group_msg_content` VALUES (37, NULL, 1, '王路飞', 'https://img1.baidu.com/it/u=1966616150,2146512490&fm=253&fmt=auto&app=138&f=JPEG?w=751&h=500', '2020-06-18 16:21:07', '拉拉', 1, 0);
INSERT INTO `group_msg_content` VALUES (38, NULL, 1, '王路飞', 'https://img1.baidu.com/it/u=1966616150,2146512490&fm=253&fmt=auto&app=138&f=JPEG?w=751&h=500', '2020-06-18 16:22:13', '啦啦啦啦', 1, 0);
INSERT INTO `group_msg_content` VALUES (39, NULL, 1, '王路飞', 'https://img1.baidu.com/it/u=1966616150,2146512490&fm=253&fmt=auto&app=138&f=JPEG?w=751&h=500', '2020-06-18 16:52:52', 'aaaaa', 1, 0);
INSERT INTO `group_msg_content` VALUES (40, NULL, 1, '王路飞', 'https://img1.baidu.com/it/u=1966616150,2146512490&fm=253&fmt=auto&app=138&f=JPEG?w=751&h=500', '2020-06-19 10:55:49', '6.19', 1, 0);
INSERT INTO `group_msg_content` VALUES (41, NULL, 1, '王路飞', 'https://img1.baidu.com/it/u=1966616150,2146512490&fm=253&fmt=auto&app=138&f=JPEG?w=751&h=500', '2020-06-19 10:56:29', '6.18', 1, 0);
INSERT INTO `group_msg_content` VALUES (42, NULL, 1, '王路飞', 'https://img1.baidu.com/it/u=1966616150,2146512490&fm=253&fmt=auto&app=138&f=JPEG?w=751&h=500', '2020-06-19 11:00:40', '6.17', 1, 0);
INSERT INTO `group_msg_content` VALUES (43, NULL, 1, '王路飞', 'https://img1.baidu.com/it/u=1966616150,2146512490&fm=253&fmt=auto&app=138&f=JPEG?w=751&h=500', '2020-06-19 11:01:11', '6.16', 1, 0);
INSERT INTO `group_msg_content` VALUES (44, NULL, 2, '刘索隆', 'https://img0.baidu.com/it/u=2521851051,2189866243&fm=253&fmt=auto&app=138&f=JPEG?w=889&h=500', '2020-06-19 17:46:49', '我要砍死你', 1, 0);
INSERT INTO `group_msg_content` VALUES (45, NULL, 1, '王路飞', 'https://img1.baidu.com/it/u=1966616150,2146512490&fm=253&fmt=auto&app=138&f=JPEG?w=751&h=500', '2020-06-19 17:47:12', '瓦力瓦力', 1, 0);
INSERT INTO `group_msg_content` VALUES (46, NULL, 6, 'aaa', 'http://39.108.169.57/group1/M00/00/00/J2ypOV7vNk6AI5ncAAZrF3kx8E4062.jpg', '2020-06-21 21:57:51', '666', 1, 0);
INSERT INTO `group_msg_content` VALUES (47, NULL, 1, '王路飞', 'https://img1.baidu.com/it/u=1966616150,2146512490&fm=253&fmt=auto&app=138&f=JPEG?w=751&h=500', '2020-06-21 22:00:33', '!!!', 1, 0);
INSERT INTO `group_msg_content` VALUES (48, NULL, 1, '王路飞', 'https://img1.baidu.com/it/u=1966616150,2146512490&fm=253&fmt=auto&app=138&f=JPEG?w=751&h=500', '2020-06-21 22:03:12', '!!!!!!!!!!!!!', 1, 0);
INSERT INTO `group_msg_content` VALUES (49, NULL, 1, '王路飞', 'https://img1.baidu.com/it/u=1966616150,2146512490&fm=253&fmt=auto&app=138&f=JPEG?w=751&h=500', '2020-06-21 22:55:36', 'http://39.108.169.57/group1/M00/00/00/J2ypOV7vdOmARAv9AAZhj13MNZc018.jpg', 2, 0);
INSERT INTO `group_msg_content` VALUES (51, NULL, 6, 'aaa', 'http://39.108.169.57/group1/M00/00/00/J2ypOV7vNk6AI5ncAAZrF3kx8E4062.jpg', '2020-06-22 10:43:06', 'ssss', 1, 0);
INSERT INTO `group_msg_content` VALUES (52, NULL, 1, '王路飞', 'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=1405813947,3985685597&fm=26&gp=0.jpg', '2020-06-22 10:44:50', '123', 1, 0);
INSERT INTO `group_msg_content` VALUES (53, NULL, 2, '刘索隆', 'https://img0.baidu.com/it/u=2521851051,2189866243&fm=253&fmt=auto&app=138&f=JPEG?w=889&h=500', '2020-06-22 10:47:50', '我胡汉三又回来了', 1, 0);
INSERT INTO `group_msg_content` VALUES (54, NULL, 2, '刘索隆', 'https://img0.baidu.com/it/u=2521851051,2189866243&fm=253&fmt=auto&app=138&f=JPEG?w=889&h=500', '2020-06-22 10:48:40', 'http://39.108.169.57/group1/M00/00/00/J2ypOV7wHAmAIRtPAA4Q9d1YCi8462.jpg', 2, 0);
INSERT INTO `group_msg_content` VALUES (55, NULL, 1, '王路飞', 'https://img1.baidu.com/it/u=1966616150,2146512490&fm=253&fmt=auto&app=138&f=JPEG?w=751&h=500', '2020-06-22 10:50:50', '88', 1, 0);
INSERT INTO `group_msg_content` VALUES (56, NULL, 7, '罗', 'http://39.108.169.57/group1/M00/00/00/J2ypOV7wHOaAVoqUAAEnxFEdf9A80.jpeg', '2020-06-22 10:53:05', '...', 1, 0);
INSERT INTO `group_msg_content` VALUES (57, NULL, 10, '乔巴', 'http://39.108.169.57/group1/M00/00/00/J2ypOV7wPomAWB44AACPzYoUMyE376.jpg', '2020-06-22 13:18:16', 'lalalal', 1, 0);
INSERT INTO `group_msg_content` VALUES (58, NULL, 1, '王路飞', 'https://img1.baidu.com/it/u=1966616150,2146512490&fm=253&fmt=auto&app=138&f=JPEG?w=751&h=500', '2020-06-25 00:25:37', '&#129315;', 1, 0);
INSERT INTO `group_msg_content` VALUES (59, NULL, 1, '王路飞', 'https://img1.baidu.com/it/u=1966616150,2146512490&fm=253&fmt=auto&app=138&f=JPEG?w=751&h=500', '2020-06-25 00:25:52', 'nihao', 1, 0);
INSERT INTO `group_msg_content` VALUES (60, NULL, 1, '王路飞', 'https://img1.baidu.com/it/u=1966616150,2146512490&fm=253&fmt=auto&app=138&f=JPEG?w=751&h=500', '2020-06-25 00:26:01', '大家好', 1, 0);
INSERT INTO `group_msg_content` VALUES (61, NULL, 1, '王路飞', 'https://img1.baidu.com/it/u=1966616150,2146512490&fm=253&fmt=auto&app=138&f=JPEG?w=751&h=500', '2020-06-25 11:28:41', '&#128535;太好了！&#129310;', 1, 0);
INSERT INTO `group_msg_content` VALUES (62, NULL, 1, '王路飞', 'https://img1.baidu.com/it/u=1966616150,2146512490&fm=253&fmt=auto&app=138&f=JPEG?w=751&h=500', '2020-06-25 11:43:34', '&#9784;️', 1, 0);
INSERT INTO `group_msg_content` VALUES (63, NULL, 1, '王路飞', 'https://img1.baidu.com/it/u=1966616150,2146512490&fm=253&fmt=auto&app=138&f=JPEG?w=751&h=500', '2020-06-25 11:43:54', '&#128585;&#128585;&#128585;&#128139;&#128140;&#128152;', 1, 0);
INSERT INTO `group_msg_content` VALUES (64, NULL, 1, '王路飞', 'https://img1.baidu.com/it/u=1966616150,2146512490&fm=253&fmt=auto&app=138&f=JPEG?w=751&h=500', '2020-06-25 11:48:31', '&#128169;', 1, 0);
INSERT INTO `group_msg_content` VALUES (68, NULL, 7, '罗', 'http://39.108.169.57/group1/M00/00/00/J2ypOV7wHOaAVoqUAAEnxFEdf9A80.jpeg', '2020-07-01 12:30:52', '&#128544;滚', 1, 0);
INSERT INTO `group_msg_content` VALUES (69, NULL, 7, '罗', 'http://39.108.169.57/group1/M00/00/00/J2ypOV7wHOaAVoqUAAEnxFEdf9A80.jpeg', '2020-07-01 12:31:41', 'http://39.108.169.57/group1/M00/00/00/J2ypOV78Ea6AWq5hAAPr-MGWs8o676.jpg', 2, 0);
INSERT INTO `group_msg_content` VALUES (70, NULL, 7, '罗', 'http://39.108.169.57/group1/M00/00/00/J2ypOV7wHOaAVoqUAAEnxFEdf9A80.jpeg', '2020-07-01 14:58:05', '有人吗？\n', 1, 0);
INSERT INTO `group_msg_content` VALUES (71, NULL, 7, '罗', 'http://39.108.169.57/group1/M00/00/00/J2ypOV7wHOaAVoqUAAEnxFEdf9A80.jpeg', '2020-07-01 15:19:09', 'http://39.108.169.57/group1/M00/00/00/J2ypOV78OO-AUwQdAA4Q9d1YCi8766.jpg', 2, 0);
INSERT INTO `group_msg_content` VALUES (72, NULL, 2, '刘索隆', 'https://img0.baidu.com/it/u=2521851051,2189866243&fm=253&fmt=auto&app=138&f=JPEG?w=889&h=500', '2020-07-01 15:20:28', '222', 1, 0);
INSERT INTO `group_msg_content` VALUES (74, NULL, 2, '刘索隆', 'https://img0.baidu.com/it/u=2521851051,2189866243&fm=253&fmt=auto&app=138&f=JPEG?w=889&h=500', '2020-07-01 15:32:15', 'http://39.108.169.57/group1/M00/00/00/J2ypOV78PAGAY-yKAA14IFomF20918.gif', 2, 0);
INSERT INTO `group_msg_content` VALUES (75, NULL, 2, '刘索隆', 'https://img0.baidu.com/it/u=2521851051,2189866243&fm=253&fmt=auto&app=138&f=JPEG?w=889&h=500', '2020-07-01 15:32:35', 'http://39.108.169.57/group1/M00/00/00/J2ypOV78PBSAJK0CAAeXVP-WpTQ029.gif', 2, 0);
INSERT INTO `group_msg_content` VALUES (79, NULL, 17, 'lol', 'https://img2.baidu.com/it/u=3773920174,505548057&fm=253&fmt=auto&app=138&f=JPEG?w=400&h=307', '2020-07-01 16:11:30', '?', 1, 0);
INSERT INTO `group_msg_content` VALUES (80, NULL, 18, 'abc', 'https://img1.baidu.com/it/u=3679192749,3445674048&fm=253&fmt=auto&app=120&f=JPEG?w=1280&h=800', '2020-07-01 23:16:57', '大家好', 1, 0);
INSERT INTO `group_msg_content` VALUES (81, NULL, 1, '王路飞', 'https://img1.baidu.com/it/u=1966616150,2146512490&fm=253&fmt=auto&app=138&f=JPEG?w=751&h=500', '2020-07-01 23:17:21', '你好&#128578;哈', 1, 0);
INSERT INTO `group_msg_content` VALUES (84, NULL, 1, '王路飞', 'https://img1.baidu.com/it/u=1966616150,2146512490&fm=253&fmt=auto&app=138&f=JPEG?w=751&h=500', '2020-07-02 12:42:30', '你好啊&#128556;', 1, 0);
INSERT INTO `group_msg_content` VALUES (85, NULL, 2, '刘索隆', 'https://img0.baidu.com/it/u=2521851051,2189866243&fm=253&fmt=auto&app=138&f=JPEG?w=889&h=500', '2020-07-02 12:42:46', '欢迎\n', 1, 0);
INSERT INTO `group_msg_content` VALUES (87, NULL, 1, '王路飞', 'https://img1.baidu.com/it/u=1966616150,2146512490&fm=253&fmt=auto&app=138&f=JPEG?w=751&h=500', '2020-07-02 19:43:54', '有人吗？', 1, 0);
INSERT INTO `group_msg_content` VALUES (88, NULL, 1, '王路飞', 'https://img1.baidu.com/it/u=1966616150,2146512490&fm=253&fmt=auto&app=138&f=JPEG?w=751&h=500', '2020-07-07 21:48:20', '??', 1, 0);
INSERT INTO `group_msg_content` VALUES (89, NULL, 1, '王路飞', 'https://img1.baidu.com/it/u=1966616150,2146512490&fm=253&fmt=auto&app=138&f=JPEG?w=751&h=500', '2020-07-07 21:48:35', '&#128590;', 1, 0);
INSERT INTO `group_msg_content` VALUES (90, NULL, 1, '王路飞', 'https://img1.baidu.com/it/u=1966616150,2146512490&fm=253&fmt=auto&app=138&f=JPEG?w=751&h=500', '2020-07-07 21:48:48', 'http://39.108.169.57/group1/M00/00/00/J2ypOV8EfUGAOAkwAABXIkocmK4137.gif', 2, 0);
INSERT INTO `group_msg_content` VALUES (91, NULL, 1, '王路飞', 'https://img1.baidu.com/it/u=1966616150,2146512490&fm=253&fmt=auto&app=138&f=JPEG?w=751&h=500', '2020-10-01 13:07:38', '123\n', 1, 0);
INSERT INTO `group_msg_content` VALUES (92, NULL, 1, '王路飞', 'https://img1.baidu.com/it/u=1966616150,2146512490&fm=253&fmt=auto&app=138&f=JPEG?w=751&h=500', '2020-10-01 13:10:24', '&#128558;', 1, 0);
INSERT INTO `group_msg_content` VALUES (93, NULL, 2, '刘索隆', 'https://img0.baidu.com/it/u=2521851051,2189866243&fm=253&fmt=auto&app=138&f=JPEG?w=889&h=500', '2020-10-01 13:10:46', 'http://39.108.169.57/group1/M00/00/00/J2ypOV91ZNWAH5_UAAAr1YNW1TU52.jpeg', 2, 0);
INSERT INTO `group_msg_content` VALUES (94, NULL, 22, 'lin', 'https://img1.baidu.com/it/u=153079648,553512087&fm=253&fmt=auto&app=138&f=JPEG?w=499&h=356', '2020-10-01 13:24:46', 'wow\n', 1, 0);
INSERT INTO `group_msg_content` VALUES (95, NULL, 1, '王路飞', 'https://img1.baidu.com/it/u=1966616150,2146512490&fm=253&fmt=auto&app=138&f=JPEG?w=751&h=500', '2020-10-01 18:09:24', '&#128530;', 1, 0);
INSERT INTO `group_msg_content` VALUES (96, NULL, 1, '王路飞', 'https://img1.baidu.com/it/u=1966616150,2146512490&fm=253&fmt=auto&app=138&f=JPEG?w=751&h=500', '2020-10-01 18:09:31', 'http://39.108.169.57/group1/M00/00/00/J2ypOV91qtuAdB0EAAARihKoLCw540.jpg', 2, 0);
INSERT INTO `group_msg_content` VALUES (97, NULL, 1, '王路飞', 'https://img1.baidu.com/it/u=1966616150,2146512490&fm=253&fmt=auto&app=138&f=JPEG?w=751&h=500', '2020-10-01 18:29:19', '&#129316;', 1, 0);
INSERT INTO `group_msg_content` VALUES (98, NULL, 1, '王路飞', 'https://img1.baidu.com/it/u=1966616150,2146512490&fm=253&fmt=auto&app=138&f=JPEG?w=751&h=500', '2020-10-01 18:29:34', 'http://39.108.169.57/group1/M00/00/00/J2ypOV91r42AbuiYAAARihKoLCw482.jpg', 2, 0);
INSERT INTO `group_msg_content` VALUES (99, NULL, 23, 'zzzz', 'default_head.jpg', '2022-07-27 14:28:06', '1', 1, 0);
INSERT INTO `group_msg_content` VALUES (100, NULL, 24, 'cccc', 'https://img2.baidu.com/it/u=3610868124,468820637&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=417', '2022-07-27 14:39:05', '111\n', 1, 0);
INSERT INTO `group_msg_content` VALUES (101, NULL, 23, 'zzzz', 'default_head.jpg', '2022-07-27 14:39:23', '&#128519;', 1, 0);
INSERT INTO `group_msg_content` VALUES (102, NULL, 23, 'zzzz', 'https://img1.baidu.com/it/u=3705123043,2281640962&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=776', '2022-07-28 15:48:13', 'ccc', 1, 0);
INSERT INTO `group_msg_content` VALUES (103, NULL, 24, 'cccc', 'https://img2.baidu.com/it/u=3610868124,468820637&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=417', '2022-07-28 15:48:40', '我是cccc', 1, 0);
INSERT INTO `group_msg_content` VALUES (104, NULL, 23, 'zzzz', 'https://img1.baidu.com/it/u=3705123043,2281640962&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=776', '2022-07-28 15:48:52', 'woshizzz', 1, 0);
INSERT INTO `group_msg_content` VALUES (105, NULL, 23, 'zzzz', 'https://img1.baidu.com/it/u=3705123043,2281640962&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=776', '2022-07-28 17:30:39', 'woshicccc\n', 1, 0);
INSERT INTO `group_msg_content` VALUES (106, NULL, 24, 'cccc', 'https://img2.baidu.com/it/u=3610868124,468820637&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=417', '2022-07-28 17:41:44', '  大家好  我是  cc', 1, 0);
INSERT INTO `group_msg_content` VALUES (107, NULL, 25, 'dddd', 'default_head.jpg', '2022-07-28 17:41:51', '  大家好  我是 dd', 1, 0);
INSERT INTO `group_msg_content` VALUES (108, NULL, 23, 'zzzz', 'https://img1.baidu.com/it/u=3705123043,2281640962&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=776', '2022-07-28 17:41:58', '  大家好  我是zz', 1, 0);
INSERT INTO `group_msg_content` VALUES (109, NULL, 23, 'zzzz', 'https://img1.baidu.com/it/u=3705123043,2281640962&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=776', '2022-08-01 15:24:15', '11', 1, 0);
INSERT INTO `group_msg_content` VALUES (110, NULL, 23, 'zzzz', 'https://img1.baidu.com/it/u=3705123043,2281640962&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=776', '2022-08-01 15:26:13', '&#129296;', 1, 0);
INSERT INTO `group_msg_content` VALUES (111, NULL, 23, 'zzzz', 'https://img1.baidu.com/it/u=3705123043,2281640962&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=776', '2022-08-01 15:56:19', '1', 1, 0);
INSERT INTO `group_msg_content` VALUES (112, NULL, 23, 'zzzz', 'https://img1.baidu.com/it/u=3705123043,2281640962&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=776', '2022-08-01 15:56:44', '22', 1, 0);
INSERT INTO `group_msg_content` VALUES (113, NULL, 23, 'zzzz', 'https://img1.baidu.com/it/u=3705123043,2281640962&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=776', '2022-08-01 15:56:55', '2', 1, 0);
INSERT INTO `group_msg_content` VALUES (114, NULL, 23, 'zzzz', 'https://img1.baidu.com/it/u=3705123043,2281640962&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=776', '2022-08-01 15:57:50', '22', 1, 0);
INSERT INTO `group_msg_content` VALUES (115, NULL, 23, 'zzzz', 'https://img1.baidu.com/it/u=3705123043,2281640962&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=776', '2022-08-01 15:58:40', 'xxx', 1, 0);
INSERT INTO `group_msg_content` VALUES (116, NULL, 23, 'zzzz', 'https://img1.baidu.com/it/u=3705123043,2281640962&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=776', '2022-08-01 15:59:52', '222', 1, 0);
INSERT INTO `group_msg_content` VALUES (117, NULL, 23, 'zzzz', 'https://img1.baidu.com/it/u=3705123043,2281640962&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=776', '2022-08-01 16:00:20', '22', 1, 0);
INSERT INTO `group_msg_content` VALUES (118, NULL, 23, 'zzzz', 'https://img1.baidu.com/it/u=3705123043,2281640962&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=776', '2022-08-01 16:01:05', 'ddd', 1, 0);
INSERT INTO `group_msg_content` VALUES (119, NULL, 23, 'zzzz', 'https://img1.baidu.com/it/u=3705123043,2281640962&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=776', '2022-08-01 16:02:46', '1', 1, 0);
INSERT INTO `group_msg_content` VALUES (120, NULL, 23, 'zzzz', 'https://img1.baidu.com/it/u=3705123043,2281640962&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=776', '2022-08-01 16:03:42', '11', 1, 0);
INSERT INTO `group_msg_content` VALUES (121, NULL, 23, 'zzzz', 'https://img1.baidu.com/it/u=3705123043,2281640962&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=776', '2022-08-01 16:04:27', 'dd', 1, 0);
INSERT INTO `group_msg_content` VALUES (122, NULL, 23, 'zzzz', 'https://img1.baidu.com/it/u=3705123043,2281640962&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=776', '2022-08-01 16:04:38', 'dd', 1, 0);
INSERT INTO `group_msg_content` VALUES (123, NULL, 23, 'zzzz', 'https://img1.baidu.com/it/u=3705123043,2281640962&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=776', '2022-08-01 16:06:54', 'ddd', 1, 0);
INSERT INTO `group_msg_content` VALUES (124, NULL, 23, 'zzzz', 'https://img1.baidu.com/it/u=3705123043,2281640962&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=776', '2022-08-01 16:11:32', '11', 1, 0);
INSERT INTO `group_msg_content` VALUES (125, NULL, 23, 'zzzz', 'https://img1.baidu.com/it/u=3705123043,2281640962&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=776', '2022-08-01 16:11:47', 'eee', 1, 0);
INSERT INTO `group_msg_content` VALUES (126, NULL, 23, 'zzzz', 'https://img1.baidu.com/it/u=3705123043,2281640962&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=776', '2022-08-01 16:13:33', '222', 1, 0);
INSERT INTO `group_msg_content` VALUES (127, NULL, 23, 'zzzz', 'https://img1.baidu.com/it/u=3705123043,2281640962&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=776', '2022-08-01 16:14:23', 'ffff', 1, 0);
INSERT INTO `group_msg_content` VALUES (128, NULL, 23, 'zzzz', 'https://img1.baidu.com/it/u=3705123043,2281640962&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=776', '2022-08-01 16:34:19', '哈哈哈\n', 1, 0);
INSERT INTO `group_msg_content` VALUES (129, NULL, 25, 'dddd', 'default_head.jpg', '2022-08-01 16:34:31', 'hoshqaikc dal\n', 1, 0);
INSERT INTO `group_msg_content` VALUES (130, NULL, 24, 'cccc', 'https://img2.baidu.com/it/u=3610868124,468820637&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=417', '2022-08-01 17:20:19', 'dsvs', 1, 0);
INSERT INTO `group_msg_content` VALUES (131, NULL, 25, 'dddd', 'default_head.jpg', '2022-08-02 11:31:36', 'ddd', 1, 0);
INSERT INTO `group_msg_content` VALUES (132, NULL, 23, 'zzzz', 'https://img1.baidu.com/it/u=3705123043,2281640962&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=776', '2022-08-02 13:52:12', 'xxxx', 1, 0);
INSERT INTO `group_msg_content` VALUES (133, NULL, 25, 'dddd', 'default_head.jpg', '2022-08-03 16:48:52', 'sasadsf', 1, 0);
INSERT INTO `group_msg_content` VALUES (134, NULL, 24, 'cccc', 'https://img2.baidu.com/it/u=3610868124,468820637&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=417', '2022-08-03 16:49:04', 'aaaaaaaaaaaaaaaaaaa', 1, 0);
INSERT INTO `group_msg_content` VALUES (135, NULL, 24, 'cccc', 'https://img2.baidu.com/it/u=3610868124,468820637&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=417', '2022-08-03 16:49:15', 'zzzzzzzzzzzzz', 1, 0);
INSERT INTO `group_msg_content` VALUES (136, NULL, 23, 'zzzz', 'https://img1.baidu.com/it/u=3705123043,2281640962&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=776', '2022-08-03 17:13:51', 'ascfsf', 1, 0);
INSERT INTO `group_msg_content` VALUES (137, NULL, 23, 'zzzz', 'https://img1.baidu.com/it/u=3705123043,2281640962&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=776', '2022-08-03 17:14:13', 'cxssdvzx', 1, 0);
INSERT INTO `group_msg_content` VALUES (138, NULL, 23, 'zzzz', 'https://img1.baidu.com/it/u=3705123043,2281640962&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=776', '2022-08-03 17:14:17', 'zvxcxvczvxcvszxcv', 1, 0);
INSERT INTO `group_msg_content` VALUES (139, NULL, 23, 'zzzz', 'https://img1.baidu.com/it/u=3705123043,2281640962&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=776', '2022-08-03 17:14:39', 'sczcxvbzxcv', 1, 0);
INSERT INTO `group_msg_content` VALUES (140, NULL, 23, 'zzzz', 'https://img1.baidu.com/it/u=3705123043,2281640962&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=776', '2022-08-03 17:15:21', 'ASAADZS', 1, 0);
INSERT INTO `group_msg_content` VALUES (141, NULL, 24, 'cccc', 'https://img2.baidu.com/it/u=3610868124,468820637&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=417', '2022-08-03 17:15:50', 'sss', 1, 0);
INSERT INTO `group_msg_content` VALUES (142, NULL, 24, 'cccc', 'https://img2.baidu.com/it/u=3610868124,468820637&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=417', '2022-08-03 17:28:09', 'sssssssss', 1, 0);
INSERT INTO `group_msg_content` VALUES (143, NULL, 23, 'zzzz', 'https://img1.baidu.com/it/u=3705123043,2281640962&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=776', '2022-08-03 17:28:20', 'Asf', 1, 0);
INSERT INTO `group_msg_content` VALUES (144, NULL, 23, 'zzzz', 'https://img1.baidu.com/it/u=3705123043,2281640962&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=776', '2022-08-03 17:28:24', 'ASDAES', 1, 0);
INSERT INTO `group_msg_content` VALUES (145, NULL, 23, 'zzzz', 'https://img1.baidu.com/it/u=3705123043,2281640962&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=776', '2022-08-03 17:28:26', 'WDasfgrgr', 1, 0);
INSERT INTO `group_msg_content` VALUES (146, NULL, 23, 'zzzz', 'https://img1.baidu.com/it/u=3705123043,2281640962&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=776', '2022-08-03 17:28:27', 'fedsgrd', 1, 0);
INSERT INTO `group_msg_content` VALUES (147, NULL, 23, 'zzzz', 'https://img1.baidu.com/it/u=3705123043,2281640962&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=776', '2022-08-03 17:28:29', 'qfewgswesd', 1, 0);
INSERT INTO `group_msg_content` VALUES (148, NULL, 23, 'zzzz', 'https://img1.baidu.com/it/u=3705123043,2281640962&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=776', '2022-08-03 17:28:37', 'dsadfgsfd', 1, 0);
INSERT INTO `group_msg_content` VALUES (149, NULL, 23, 'zzzz', 'https://img1.baidu.com/it/u=3705123043,2281640962&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=776', '2022-08-03 17:28:38', 'wasdgf', 1, 0);
INSERT INTO `group_msg_content` VALUES (150, NULL, 23, 'zzzz', 'https://img1.baidu.com/it/u=3705123043,2281640962&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=776', '2022-08-03 17:28:40', 'AS', 1, 0);
INSERT INTO `group_msg_content` VALUES (151, NULL, 23, 'zzzz', 'https://img1.baidu.com/it/u=3705123043,2281640962&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=776', '2022-08-03 17:28:42', 'WQSAEFA', 1, 0);
INSERT INTO `group_msg_content` VALUES (152, NULL, 23, 'zzzz', 'https://img1.baidu.com/it/u=3705123043,2281640962&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=776', '2022-08-03 17:28:57', '&#128572;', 1, 0);
INSERT INTO `group_msg_content` VALUES (153, NULL, 23, 'zzzz', 'https://img1.baidu.com/it/u=3705123043,2281640962&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=776', '2022-08-03 17:29:10', 'adsfdf', 1, 0);
INSERT INTO `group_msg_content` VALUES (154, NULL, 24, 'cccc', 'https://img2.baidu.com/it/u=3610868124,468820637&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=417', '2022-08-03 17:31:34', 's', 1, 0);
INSERT INTO `group_msg_content` VALUES (155, NULL, 24, 'cccc', 'https://img2.baidu.com/it/u=3610868124,468820637&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=417', '2022-08-03 17:31:34', 's', 1, 0);
INSERT INTO `group_msg_content` VALUES (156, NULL, 24, 'cccc', 'https://img2.baidu.com/it/u=3610868124,468820637&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=417', '2022-08-03 17:31:39', '方法', 1, 0);

-- ----------------------------
-- Table structure for group_user_relationship
-- ----------------------------
DROP TABLE IF EXISTS `group_user_relationship`;
CREATE TABLE `group_user_relationship`  (
  `id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '主键',
  `group_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '组主键',
  `user_id` int(11) NULL DEFAULT NULL COMMENT '用户的id',
  `user_account` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '用户的账户',
  `user_nickname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '用户的昵称',
  `user_group_nickname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '用户的群昵称',
  `user_profile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '用户的头像',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `is_delete` int(11) NULL DEFAULT 0 COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of group_user_relationship
-- ----------------------------
INSERT INTO `group_user_relationship` VALUES ('1', '1', 1, 'huang', '王路飞', NULL, 'https://img1.baidu.com/it/u=1966616150,2146512490&fm=253&fmt=auto&app=138&f=JPEG?w=751&h=500', '2022-08-01 14:29:22', 0);
INSERT INTO `group_user_relationship` VALUES ('1d9e57d4-1168-11ed-ab4a-00ffd7c323d4', 'f1b17b40ed30e7282e8b15d6e4631328', 23, 'zzzz', 'zzzz', NULL, 'https://img1.baidu.com/it/u=3705123043,2281640962&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=776', '2022-08-01 15:03:52', 0);
INSERT INTO `group_user_relationship` VALUES ('1d9e5a3c-1168-11ed-ab4a-00ffd7c323d4', 'f1b17b40ed30e7282e8b15d6e4631328', 24, 'cccc', 'cccc', NULL, 'https://img2.baidu.com/it/u=3610868124,468820637&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=417', '2022-08-01 15:03:52', 0);
INSERT INTO `group_user_relationship` VALUES ('1d9e5aa8-1168-11ed-ab4a-00ffd7c323d4', 'f1b17b40ed30e7282e8b15d6e4631328', 25, 'dddd', 'dddd', NULL, 'default_head.jpg', '2022-08-01 15:03:52', 0);
INSERT INTO `group_user_relationship` VALUES ('f53c8139-1168-11ed-ab4a-00ffd7c323d4', 'f1b17b40ed30e7282e8b15d6e4631328', 1, 'huang', '王路飞', NULL, 'https://img1.baidu.com/it/u=1966616150,2146512490&fm=253&fmt=auto&app=138&f=JPEG?w=751&h=500', '2022-08-01 15:09:54', 1);

-- ----------------------------
-- Table structure for mail_send_log
-- ----------------------------
DROP TABLE IF EXISTS `mail_send_log`;
CREATE TABLE `mail_send_log`  (
  `msg_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type` tinyint(2) NULL DEFAULT NULL COMMENT '内容类型 0:反馈，1:验证码',
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '内容',
  `mail_address` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮件地址',
  `status` tinyint(2) NULL DEFAULT NULL COMMENT '0-投递中，1-成功，2-失败',
  `route_key` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `exchange` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `count` tinyint(2) NULL DEFAULT NULL,
  `try_time` datetime(0) NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  `is_delete` int(11) NULL DEFAULT NULL COMMENT '是否删除',
  PRIMARY KEY (`msg_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mail_send_log
-- ----------------------------
INSERT INTO `mail_send_log` VALUES ('03b8ee38-ab30-45d3-87d9-5b344411ae0c', 1, '{\"content\":\"!good job!!!\",\"id\":\"9a2bd6d5-b42e-4381-ad1b-dc170778c9b5\",\"nickname\":\"王路飞\",\"userId\":\"1\",\"username\":\"huang\"}', NULL, 1, 'mail-route-feedback', 'mail-exchange', 2, '2020-10-02 22:42:22', '2020-10-02 22:42:16', '2020-10-02 22:42:30', 0);
INSERT INTO `mail_send_log` VALUES ('040da7c8-2195-49a4-91a9-4c6244320df6', 2, '2106', NULL, 1, 'mail-route-verifyCode', 'mail-exchange', 2, '2020-10-03 00:03:37', '2020-10-03 00:03:27', '2020-10-03 00:03:40', 0);
INSERT INTO `mail_send_log` VALUES ('061dab12-079f-46f1-aa47-dce5f9e37d6f', 2, '8056', NULL, 1, 'mail-route-verifyCode', 'mail-exchange', 1, '2020-10-03 12:51:17', '2020-10-03 12:51:07', '2020-10-03 12:51:07', 0);
INSERT INTO `mail_send_log` VALUES ('06e15d8f-8434-45bf-9b6e-5330a68f0026', 2, '9765', NULL, 1, 'mail-route-verifyCode', 'mail-exchange', 1, '2020-10-03 13:11:52', '2020-10-03 13:11:42', '2020-10-03 13:11:42', 0);
INSERT INTO `mail_send_log` VALUES ('1a882fa4-9fee-4229-a443-b05e6f6666b6', 1, '{\"content\":\"!!!!good job!!!\",\"id\":\"3d73af3e-dc4d-44c8-84cc-787d001482c5\",\"nickname\":\"王路飞\",\"userId\":\"1\",\"username\":\"huang\"}', NULL, 2, 'mail-route-feedback', 'mail-exchange', 4, '2020-10-02 22:43:54', '2020-10-02 22:43:48', '2020-10-02 22:44:20', 0);
INSERT INTO `mail_send_log` VALUES ('1f1bfa9c-2166-4500-b9ad-1a67f384855e', 1, '{\"content\":\"!!!!good job!!!!wow\",\"id\":\"509dd4d6-2672-40f9-840c-d93f5d577dc5\",\"nickname\":\"王路飞\",\"userId\":\"1\",\"username\":\"huang\"}', NULL, 1, 'mail-route-feedback', 'mail-exchange', 1, '2020-10-03 13:08:59', '2020-10-03 13:07:59', '2020-10-03 13:07:59', 0);
INSERT INTO `mail_send_log` VALUES ('209d58d4-287b-49c4-b91f-cfb3a821f765', 1, '{\"content\":\"!!!!good job!!!!wow\",\"id\":\"6d403812-7759-4c07-9616-c9ed900a8bdf\",\"nickname\":\"王路飞\",\"userId\":\"1\",\"username\":\"huang\"}', NULL, 1, 'mail-route-feedback', 'mail-exchange', 2, '2020-10-03 00:22:37', '2020-10-03 00:21:37', '2020-10-03 00:22:40', 0);
INSERT INTO `mail_send_log` VALUES ('27d6c889-97ce-4cd0-a923-59b0e90ce86f', 1, '{\"content\":\"!good job!!!\",\"id\":\"ed70f54e-7748-4d36-adc8-c9131875e6f5\",\"nickname\":\"王路飞\",\"userId\":\"1\",\"username\":\"huang\"}', NULL, 1, 'mail-route-feedback', 'mail-exchange', 1, '2020-10-02 22:37:55', '2020-10-02 22:37:49', '2020-10-02 22:37:49', 0);
INSERT INTO `mail_send_log` VALUES ('69894861-0b20-46ed-845b-144c5a44e525', 2, '6633', NULL, 1, 'mail-route-verifyCode', 'mail-exchange', 1, '2020-10-03 13:05:53', '2020-10-03 13:05:43', '2020-10-03 13:05:43', 0);
INSERT INTO `mail_send_log` VALUES ('72a77382-7f6a-4e49-b6c7-e9c7b849c957', 2, '5041', NULL, 1, 'mail-route-verifyCode', 'mail-exchange', 1, '2020-10-03 13:04:19', '2020-10-03 13:04:09', '2020-10-03 13:04:09', 0);
INSERT INTO `mail_send_log` VALUES ('77e48304-8b35-4ff8-b492-72265a0f0325', 2, '0991', NULL, 1, 'mail-route-verifyCode', 'mail-exchange', 2, '2020-10-03 00:15:08', '2020-10-03 00:14:58', '2020-10-03 00:15:10', 0);
INSERT INTO `mail_send_log` VALUES ('8359eb87-1026-402f-a7a5-04273bd44870', 2, '4577', NULL, 1, 'mail-route-verifyCode', 'mail-exchange', 2, '2020-10-03 00:05:01', '2020-10-03 00:04:51', '2020-10-03 00:05:10', 0);
INSERT INTO `mail_send_log` VALUES ('999bfa86-d8b7-459a-898e-d3f3dbe07892', 1, '{\"content\":\"!!!!good job!!!!wow\",\"id\":\"b61c873c-3d3e-4991-b9e6-78eeae23c205\",\"nickname\":\"王路飞\",\"userId\":\"1\",\"username\":\"huang\"}', NULL, 1, 'mail-route-feedback', 'mail-exchange', 2, '2020-10-02 22:59:01', '2020-10-02 22:58:55', '2020-10-02 22:59:10', 0);
INSERT INTO `mail_send_log` VALUES ('a4f5cba5-28e8-4de8-a2ed-117cf9a0f89a', 1, '{\"content\":\"woooww！！！man,this is great!\",\"id\":\"980ade45-98c8-4baa-8bcb-c2bc99187608\",\"nickname\":\"王路飞\",\"userId\":\"1\",\"username\":\"huang\"}', NULL, 1, 'mail-route-feedback', 'mail-exchange', 2, '2020-10-03 00:13:25', '2020-10-03 00:12:25', '2020-10-03 00:13:30', 0);
INSERT INTO `mail_send_log` VALUES ('b9a02d0c-8df0-4b02-a90d-96ee8b19dcf6', 1, '{\"content\":\"!!!!good job!!!!wow\",\"id\":\"1a46c7a4-5b29-4409-ae1f-ecab8996e254\",\"nickname\":\"王路飞\",\"userId\":\"1\",\"username\":\"huang\"}', NULL, 1, 'mail-route-feedback', 'mail-exchange', 1, '2020-10-03 12:54:32', '2020-10-03 12:53:32', '2020-10-03 12:53:32', 0);
INSERT INTO `mail_send_log` VALUES ('bb4c1cc9-ea22-44f3-b850-c39072235334', 1, '{\"content\":\"!good job!!!\",\"id\":\"055b47a8-b29d-4a38-98dd-16e34e09bc5f\",\"nickname\":\"王路飞\",\"userId\":\"1\",\"username\":\"huang\"}', NULL, 2, 'mail-route-feedback', 'mail-exchange', 4, '2020-10-02 22:36:05', '2020-10-02 22:35:59', '2020-10-02 22:36:30', 0);
INSERT INTO `mail_send_log` VALUES ('c5a91cee-5b36-43a7-9c9f-dbca189d69e1', 2, '2853', NULL, 1, 'mail-route-verifyCode', 'mail-exchange', 1, '2020-10-03 12:57:46', '2020-10-03 12:57:36', '2020-10-03 12:57:36', 0);
INSERT INTO `mail_send_log` VALUES ('d4085092-3a02-400c-a99a-6473bb213241', 2, '1952', NULL, 1, 'mail-route-verifyCode', 'mail-exchange', 2, '2020-10-02 23:58:14', '2020-10-02 23:58:04', '2020-10-02 23:58:20', 0);
INSERT INTO `mail_send_log` VALUES ('d4d8aa1b-a9a9-41e9-ac87-872ec6b105db', 2, '0596', NULL, 1, 'mail-route-verifyCode', 'mail-exchange', 1, '2020-10-03 13:13:12', '2020-10-03 13:13:02', '2020-10-03 13:13:02', 0);
INSERT INTO `mail_send_log` VALUES ('ec878a67-08ba-4fea-b44f-dab5c80eedc1', 1, '{\"content\":\"!!!!good job!!!!wow\",\"id\":\"d009a2a6-c7a3-4b29-b32b-848fca278c45\",\"nickname\":\"王路飞\",\"userId\":\"1\",\"username\":\"huang\"}', NULL, 1, 'mail-route-feedback', 'mail-exchange', 2, '2020-10-02 22:56:45', '2020-10-02 22:56:39', '2020-10-02 22:56:50', 0);

-- ----------------------------
-- Table structure for message_content
-- ----------------------------
DROP TABLE IF EXISTS `message_content`;
CREATE TABLE `message_content`  (
  `id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '主键',
  `from_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '消息的发送方的账户',
  `from_nick_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '消息的发送方的昵称',
  `from_user_profile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '消息的发送方的头像',
  `to_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '消息的接收方的账户',
  `to_nick_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '消息的接收方的昵称',
  `to_user_profile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '消息的接收方的头像',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '消息内容',
  `message_type_id` int(11) NULL DEFAULT NULL COMMENT '消息类型Id',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '消息的创建时间',
  `is_delete` int(11) NULL DEFAULT 0 COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of message_content
-- ----------------------------
INSERT INTO `message_content` VALUES ('066128f39a4667552810218bcc521a8f', 'zzzz', 'zzzz', 'https://img1.baidu.com/it/u=3705123043,2281640962&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=776', 'cccc', 'cccc', 'https://img2.baidu.com/it/u=3610868124,468820637&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=417', '发顺丰到付件卡萨丁', 1, '2022-08-03 17:21:17', 0);
INSERT INTO `message_content` VALUES ('0886b5e262eaf51c9f9d5316bc1a028d', 'zzzz', 'zzzz', 'https://img1.baidu.com/it/u=3705123043,2281640962&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=776', 'cccc', 'cccc', 'https://img2.baidu.com/it/u=3610868124,468820637&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=417', '🤮🤮😪😪😪😪🤢', 1, '2022-08-03 17:21:37', 0);
INSERT INTO `message_content` VALUES ('097ead4c97cbd340b5b7f2bde87f79e3', 'zzzz', 'zzzz', 'https://img1.baidu.com/it/u=3705123043,2281640962&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=776', 'dddd', 'dddd', 'default_head.jpg', 'ddd', 1, '2022-08-02 14:23:29', 0);
INSERT INTO `message_content` VALUES ('0f56ca71d0d9e214c0555cad1d5a59a9', 'zzzz', 'zzzz', 'https://img1.baidu.com/it/u=3705123043,2281640962&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=776', 'dddd', 'dddd', 'default_head.jpg', '测试刚发送', 1, '2022-07-29 15:29:51', 0);
INSERT INTO `message_content` VALUES ('12c693f1fa2267d0a697a56beceef545', 'zzzz', 'zzzz', 'https://img1.baidu.com/it/u=3705123043,2281640962&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=776', 'cccc', 'cccc', 'https://img2.baidu.com/it/u=3610868124,468820637&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=417', 'SAFDFG', 1, '2022-08-03 17:29:26', 0);
INSERT INTO `message_content` VALUES ('16510dc6cc3e481c043a2cfd04c2ebcd', 'cccc', 'cccc', 'https://img2.baidu.com/it/u=3610868124,468820637&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=417', 'zzzz', 'zzzz', 'https://img1.baidu.com/it/u=3705123043,2281640962&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=776', 'sdvssd', 1, '2022-08-02 15:36:25', 0);
INSERT INTO `message_content` VALUES ('1d0c02f82f377800cf75e94c24a33999', 'zzzz', 'zzzz', 'https://img1.baidu.com/it/u=3705123043,2281640962&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=776', 'dddd', 'dddd', 'default_head.jpg', '☹️', 1, '2022-07-29 16:41:09', 0);
INSERT INTO `message_content` VALUES ('2142f0ef3ec274546be8ad80c0150bf8', 'zzzz', 'zzzz', 'https://img1.baidu.com/it/u=3705123043,2281640962&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=776', 'dddd', 'dddd', 'default_head.jpg', 'ddddd', 1, '2022-08-02 14:22:34', 0);
INSERT INTO `message_content` VALUES ('2350c5954493bb82b90abf1109d190e2', 'zzzz', 'zzzz', 'https://img1.baidu.com/it/u=3705123043,2281640962&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=776', 'dddd', 'dddd', 'default_head.jpg', 'ccccc', 1, '2022-08-02 13:52:25', 0);
INSERT INTO `message_content` VALUES ('25145e0d9b4a93d7756b51eee99a254f', 'dddd', 'dddd', 'default_head.jpg', 'cccc', 'cccc', 'https://img2.baidu.com/it/u=3610868124,468820637&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=417', 'facaaffd', 1, '2022-08-03 14:40:29', 0);
INSERT INTO `message_content` VALUES ('25be0aa0ed12cc71ee55da458d55978e', 'zzzz', 'zzzz', 'https://img1.baidu.com/it/u=3705123043,2281640962&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=776', 'dddd', 'dddd', 'default_head.jpg', 'dddd', 1, '2022-08-02 14:26:29', 0);
INSERT INTO `message_content` VALUES ('25f42843366a7fa4249a4f07be4b0123', 'cccc', 'cccc', 'https://img2.baidu.com/it/u=3610868124,468820637&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=417', 'dddd', 'dddd', 'default_head.jpg', 'ddddddd', 1, '2022-08-02 14:35:33', 0);
INSERT INTO `message_content` VALUES ('282307a686e947ea5fcdf039fdc46d55', 'cccc', 'cccc', 'https://img2.baidu.com/it/u=3610868124,468820637&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=417', 'zzzz', 'zzzz', 'https://img1.baidu.com/it/u=3705123043,2281640962&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=776', '嗯嗯', 1, '2022-08-03 17:22:58', 0);
INSERT INTO `message_content` VALUES ('2aa978d889455c52bcf812c6beff1f43', 'zzzz', 'zzzz', 'https://img1.baidu.com/it/u=3705123043,2281640962&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=776', 'cccc', 'cccc', 'https://img2.baidu.com/it/u=3610868124,468820637&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=417', '你在试一次\n', 1, '2022-08-03 17:23:10', 0);
INSERT INTO `message_content` VALUES ('2bc61268dfba0f283c38164654c684f1', 'zzzz', 'zzzz', 'https://img1.baidu.com/it/u=3705123043,2281640962&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=776', 'cccc', 'cccc', 'https://img2.baidu.com/it/u=3610868124,468820637&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=417', 'SCZGDSFD', 1, '2022-08-03 17:20:44', 0);
INSERT INTO `message_content` VALUES ('2c5746a4e62ab62405150c630ce8129c', 'cccc', 'cccc', 'https://img2.baidu.com/it/u=3610868124,468820637&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=417', 'dddd', 'dddd', 'default_head.jpg', 'sdfgfdfdsf', 1, '2022-08-02 14:38:42', 0);
INSERT INTO `message_content` VALUES ('2cd676a37369e5b5534f7a2d9ea13a6e', 'dddd', 'dddd', 'default_head.jpg', 'zzzz', 'zzzz', 'https://img1.baidu.com/it/u=3705123043,2281640962&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=776', 'zzzzz', 1, '2022-08-02 14:23:01', 0);
INSERT INTO `message_content` VALUES ('2e988a587983f9df858ea974168cf1df', 'dddd', 'dddd', 'default_head.jpg', 'zzzz', 'zzzz', 'https://img1.baidu.com/it/u=3705123043,2281640962&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=776', '122发送', 1, '2022-07-29 15:29:49', 0);
INSERT INTO `message_content` VALUES ('30b59852401ec9b0c9d94bc6bebf132a', 'cccc', 'cccc', 'https://img2.baidu.com/it/u=3610868124,468820637&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=417', 'dddd', 'dddd', 'default_head.jpg', 'adsasfasf', 1, '2022-08-03 14:41:09', 0);
INSERT INTO `message_content` VALUES ('30ea34d0747e98a62e4c36f1618f4cbb', 'cccc', 'cccc', 'https://img2.baidu.com/it/u=3610868124,468820637&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=417', 'dddd', 'dddd', 'default_head.jpg', 'niaho', 1, '2022-08-03 16:48:45', 0);
INSERT INTO `message_content` VALUES ('317e256224868d128abee2375f58eb16', 'cccc', 'cccc', 'https://img2.baidu.com/it/u=3610868124,468820637&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=417', 'dddd', 'dddd', 'default_head.jpg', 'dddd woshicccc', 1, '2022-08-02 09:35:56', 0);
INSERT INTO `message_content` VALUES ('3284abbce22c70d82247ed1af6f52a5c', 'cccc', 'cccc', 'https://img2.baidu.com/it/u=3610868124,468820637&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=417', 'zzzz', 'zzzz', 'https://img1.baidu.com/it/u=3705123043,2281640962&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=776', 'nihao  zzzz', 1, '2022-08-02 15:35:59', 0);
INSERT INTO `message_content` VALUES ('35bf9589bbb0313bbab9b6bce6b4dc04', 'zzzz', 'zzzz', 'https://img1.baidu.com/it/u=3705123043,2281640962&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=776', 'dddd', 'dddd', 'default_head.jpg', 'ddd你好 我是zzzz', 1, '2022-08-01 16:16:35', 0);
INSERT INTO `message_content` VALUES ('361e235cd94e60d759e3173d1f076b14', 'dddd', 'dddd', 'default_head.jpg', 'cccc', 'cccc', 'https://img2.baidu.com/it/u=3610868124,468820637&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=417', 'ascadd', 1, '2022-08-03 16:31:13', 0);
INSERT INTO `message_content` VALUES ('3957119fb47045df9ce1fd9516c2e658', 'zzzz', 'zzzz', 'https://img1.baidu.com/it/u=3705123043,2281640962&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=776', 'cccc', 'cccc', 'https://img2.baidu.com/it/u=3610868124,468820637&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=417', 'Dwfa', 1, '2022-08-03 17:28:03', 0);
INSERT INTO `message_content` VALUES ('39beb12e4e723ee8de89888f0164c88f', 'cccc', 'cccc', 'https://img2.baidu.com/it/u=3610868124,468820637&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=417', 'dddd', 'dddd', 'default_head.jpg', 'woshi cccccccc', 1, '2022-08-02 17:30:56', 0);
INSERT INTO `message_content` VALUES ('3a24df00c6f3316cf7163d7db23682de', 'cccc', 'cccc', 'https://img2.baidu.com/it/u=3610868124,468820637&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=417', 'dddd', 'dddd', 'default_head.jpg', 'xxxxxxxxxxxxxxxxxxxxxxx', 1, '2022-08-03 16:40:06', 0);
INSERT INTO `message_content` VALUES ('3b33d1785ce06e5948f78b9fdb24d973', 'cccc', 'cccc', 'https://img2.baidu.com/it/u=3610868124,468820637&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=417', 'zzzz', 'zzzz', 'https://img1.baidu.com/it/u=3705123043,2281640962&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=776', 'VS大V', 1, '2022-08-03 17:27:59', 0);
INSERT INTO `message_content` VALUES ('3b985d1c945b7f9c712f07aa1092ce57', 'cccc', 'cccc', 'https://img2.baidu.com/it/u=3610868124,468820637&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=417', 'dddd', 'dddd', 'default_head.jpg', 'ccccc', 1, '2022-08-02 17:23:02', 0);
INSERT INTO `message_content` VALUES ('3c9b5abf3e8d26a813352ef45b33b325', 'cccc', 'cccc', 'https://img2.baidu.com/it/u=3610868124,468820637&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=417', 'dddd', 'dddd', 'default_head.jpg', 'dddddddddddd', 1, '2022-08-03 16:02:50', 0);
INSERT INTO `message_content` VALUES ('3d6952f19b75c668b051a34af2004d54', 'dddd', 'dddd', 'default_head.jpg', 'cccc', 'cccc', 'https://img2.baidu.com/it/u=3610868124,468820637&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=417', 'cccccccc', 1, '2022-08-03 16:02:11', 0);
INSERT INTO `message_content` VALUES ('404ffefca83132212dddf00377fe0565', 'cccc', 'cccc', 'https://img2.baidu.com/it/u=3610868124,468820637&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=417', 'dddd', 'dddd', 'default_head.jpg', 'ddddddccccccccccccc', 1, '2022-08-02 14:35:56', 0);
INSERT INTO `message_content` VALUES ('421fc7ad121f2f49853f123dde4542c2', 'zzzz', 'zzzz', 'https://img1.baidu.com/it/u=3705123043,2281640962&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=776', 'cccc', 'cccc', 'https://img2.baidu.com/it/u=3610868124,468820637&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=417', 'dszd', 1, '2022-08-03 17:31:22', 0);
INSERT INTO `message_content` VALUES ('481a4bfa198c47f3d8dedb82fed0be91', 'cccc', 'cccc', 'https://img2.baidu.com/it/u=3610868124,468820637&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=417', 'zzzz', 'zzzz', 'https://img1.baidu.com/it/u=3705123043,2281640962&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=776', '111', 1, '2022-08-01 17:44:41', 0);
INSERT INTO `message_content` VALUES ('4abdb9b994c2bf14a50dd6cdc90eda17', 'dddd', 'dddd', 'default_head.jpg', 'cccc', 'cccc', 'https://img2.baidu.com/it/u=3610868124,468820637&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=417', 'ccccc', 1, '2022-08-01 17:46:33', 0);
INSERT INTO `message_content` VALUES ('4b2f573916db11b56993c2d3890ddb52', 'dddd', 'dddd', 'default_head.jpg', 'cccc', 'cccc', 'https://img2.baidu.com/it/u=3610868124,468820637&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=417', 'xxxxxxxxxxxx', 1, '2022-08-03 16:40:25', 0);
INSERT INTO `message_content` VALUES ('4db6699327a77418f07780048b218566', 'zzzz', 'zzzz', 'https://img1.baidu.com/it/u=3705123043,2281640962&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=776', 'cccc', 'cccc', 'https://img2.baidu.com/it/u=3610868124,468820637&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=417', '可以\n', 1, '2022-08-03 17:16:23', 0);
INSERT INTO `message_content` VALUES ('502e23325c4204a450c9135df9641f30', 'dddd', 'dddd', 'default_head.jpg', 'zzzz', 'zzzz', 'https://img1.baidu.com/it/u=3705123043,2281640962&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=776', 'acsssss', 1, '2022-08-02 14:25:43', 0);
INSERT INTO `message_content` VALUES ('51880d8bd332b6efe78012666409b0bd', 'zzzz', 'zzzz', 'https://img1.baidu.com/it/u=3705123043,2281640962&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=776', 'dddd', 'dddd', 'default_head.jpg', 'bbbbbbbbbbbbbbbbb', 1, '2022-08-02 14:25:27', 0);
INSERT INTO `message_content` VALUES ('566c30e6cac5462e6cc3a1af337bb021', 'dddd', 'dddd', 'default_head.jpg', 'zzzz', 'zzzz', 'https://img1.baidu.com/it/u=3705123043,2281640962&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=776', 'zzzz 我是cccc', 1, '2022-08-01 17:27:19', 0);
INSERT INTO `message_content` VALUES ('58d0fba53eca4200a182e5da4691d60b', 'zzzz', 'zzzz', 'https://img1.baidu.com/it/u=3705123043,2281640962&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=776', 'dddd', 'dddd', 'default_head.jpg', 'asdfaf', 1, '2022-08-02 14:06:58', 0);
INSERT INTO `message_content` VALUES ('596335fc0734b573a883e96946eb6bbb', 'cccc', 'cccc', 'https://img2.baidu.com/it/u=3610868124,468820637&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=417', 'dddd', 'dddd', 'default_head.jpg', 'sfgf', 1, '2022-08-02 17:34:34', 0);
INSERT INTO `message_content` VALUES ('5eb1f2c0135d2f84bd4ea60c42e5a7fe', 'zzzz', 'zzzz', 'https://img1.baidu.com/it/u=3705123043,2281640962&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=776', 'dddd', 'dddd', 'default_head.jpg', '哈哈\n', 1, '2022-08-01 16:16:38', 0);
INSERT INTO `message_content` VALUES ('5fa1f09a4f882cc94068fe914cef5d48', 'cccc', 'cccc', 'https://img2.baidu.com/it/u=3610868124,468820637&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=417', 'dddd', 'dddd', 'default_head.jpg', 'ccccc', 1, '2022-08-03 16:38:27', 0);
INSERT INTO `message_content` VALUES ('689a9b790b891102136f88395f4fd436', 'zzzz', 'zzzz', 'https://img1.baidu.com/it/u=3705123043,2281640962&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=776', 'cccc', 'cccc', 'https://img2.baidu.com/it/u=3610868124,468820637&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=417', '刚才又出现了一次报错\n', 1, '2022-08-03 17:22:07', 0);
INSERT INTO `message_content` VALUES ('6a2b56f08128d420bdd80b42ac2af80e', 'zzzz', 'zzzz', 'https://img1.baidu.com/it/u=3705123043,2281640962&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=776', 'dddd', 'dddd', 'default_head.jpg', 'cccc', 1, '2022-08-02 15:08:36', 0);
INSERT INTO `message_content` VALUES ('6dda345c5b2e28771c6b4c546c2c9d91', 'cccc', 'cccc', 'https://img2.baidu.com/it/u=3610868124,468820637&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=417', 'zzzz', 'zzzz', 'https://img1.baidu.com/it/u=3705123043,2281640962&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=776', '哈哈哈哈哈哈哈', 1, '2022-08-03 17:21:47', 0);
INSERT INTO `message_content` VALUES ('703d85c558dbcc8faf1eb89c2b877833', 'dddd', 'dddd', 'default_head.jpg', 'zzzz', 'zzzz', 'https://img1.baidu.com/it/u=3705123043,2281640962&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=776', 'zzzzzzzzzzzzzzzzzzzzzzzzzzzzz', 1, '2022-08-03 16:40:51', 0);
INSERT INTO `message_content` VALUES ('71ecbdec085e13c1b36d8014049f420e', 'dddd', 'dddd', 'default_head.jpg', 'cccc', 'cccc', 'https://img2.baidu.com/it/u=3610868124,468820637&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=417', 'ccccccccccccccccccccccccccc', 1, '2022-08-03 16:40:55', 0);
INSERT INTO `message_content` VALUES ('74db8e16984af6b2768bf2165ece74ad', 'cccc', 'cccc', 'https://img2.baidu.com/it/u=3610868124,468820637&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=417', 'zzzz', 'zzzz', 'https://img1.baidu.com/it/u=3705123043,2281640962&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=776', '😵', 1, '2022-07-29 16:43:08', 0);
INSERT INTO `message_content` VALUES ('76f8fe3f6d374f4add1eb745fe29b8f4', 'cccc', 'cccc', 'https://img2.baidu.com/it/u=3610868124,468820637&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=417', 'zzzz', 'zzzz', 'https://img1.baidu.com/it/u=3705123043,2281640962&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=776', '能收到吗、', 1, '2022-08-03 17:16:15', 0);
INSERT INTO `message_content` VALUES ('79bd018791fd502ec974546ad282b6cf', 'cccc', 'cccc', 'https://img2.baidu.com/it/u=3610868124,468820637&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=417', 'dddd', 'dddd', 'default_head.jpg', 'dcsas', 1, '2022-08-02 14:44:58', 0);
INSERT INTO `message_content` VALUES ('7dfbed80afeef51b2156aa1ca5e3a1db', 'cccc', 'cccc', 'https://img2.baidu.com/it/u=3610868124,468820637&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=417', 'zzzz', 'zzzz', 'https://img1.baidu.com/it/u=3705123043,2281640962&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=776', '代发费大V', 1, '2022-08-03 17:27:58', 0);
INSERT INTO `message_content` VALUES ('80fae1db3abebef0d1797968f06afe80', 'cccc', 'cccc', 'https://img2.baidu.com/it/u=3610868124,468820637&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=417', 'zzzz', 'zzzz', 'https://img1.baidu.com/it/u=3705123043,2281640962&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=776', 'nishi zzzz', 1, '2022-08-01 17:34:58', 0);
INSERT INTO `message_content` VALUES ('886a7ac817b8f9a4aa31072c1a8b1f7c', 'zzzz', 'zzzz', 'https://img1.baidu.com/it/u=3705123043,2281640962&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=776', 'dddd', 'dddd', 'default_head.jpg', 'fffffffffff', 1, '2022-08-02 13:58:46', 0);
INSERT INTO `message_content` VALUES ('8a78ef9695598ec0b2a8bbf1e554b051', 'zzzz', 'zzzz', 'https://img1.baidu.com/it/u=3705123043,2281640962&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=776', 'cccc', 'cccc', 'https://img2.baidu.com/it/u=3610868124,468820637&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=417', 'nihao  ccccc', 1, '2022-08-02 15:30:08', 0);
INSERT INTO `message_content` VALUES ('8b497abac74d4758a747c01263866a51', 'zzzz', 'zzzz', 'https://img1.baidu.com/it/u=3705123043,2281640962&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=776', 'cccc', 'cccc', 'https://img2.baidu.com/it/u=3610868124,468820637&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=417', '☹️', 1, '2022-07-29 16:42:36', 0);
INSERT INTO `message_content` VALUES ('8c13f50b9d43a736ca71c14120e1825f', 'zzzz', 'zzzz', 'https://img1.baidu.com/it/u=3705123043,2281640962&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=776', 'dddd', 'dddd', 'default_head.jpg', 'adsasd', 1, '2022-08-02 14:03:33', 0);
INSERT INTO `message_content` VALUES ('8f02592f5927b44cec526141e0472586', 'cccc', 'cccc', 'https://img2.baidu.com/it/u=3610868124,468820637&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=417', 'zzzz', 'zzzz', 'https://img1.baidu.com/it/u=3705123043,2281640962&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=776', 'ccc', 1, '2022-08-03 17:12:53', 0);
INSERT INTO `message_content` VALUES ('9167d5129ecbde9b4eb849704574c7e2', 'cccc', 'cccc', 'https://img2.baidu.com/it/u=3610868124,468820637&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=417', 'dddd', 'dddd', 'default_head.jpg', 'vdvdssdv', 1, '2022-08-02 14:36:57', 0);
INSERT INTO `message_content` VALUES ('93fb860400f5ade688bfc47f85523f5b', 'zzzz', 'zzzz', 'https://img1.baidu.com/it/u=3705123043,2281640962&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=776', 'cccc', 'cccc', 'https://img2.baidu.com/it/u=3610868124,468820637&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=417', 'ASDFJGF', 1, '2022-08-03 17:21:05', 0);
INSERT INTO `message_content` VALUES ('93fda40d13bb6ef68f8698c603f3928d', 'cccc', 'cccc', 'https://img2.baidu.com/it/u=3610868124,468820637&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=417', 'dddd', 'dddd', 'default_head.jpg', 'dddddd', 1, '2022-08-02 14:36:27', 0);
INSERT INTO `message_content` VALUES ('9582e68bb3f33e17a6bb1917b1d48bf9', 'cccc', 'cccc', 'https://img2.baidu.com/it/u=3610868124,468820637&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=417', 'dddd', 'dddd', 'default_head.jpg', 'cccc', 1, '2022-08-03 15:59:44', 0);
INSERT INTO `message_content` VALUES ('958ba16995a7dfa5690e5ffceaa6a36d', 'zzzz', 'zzzz', 'https://img1.baidu.com/it/u=3705123043,2281640962&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=776', 'cccc', 'cccc', 'https://img2.baidu.com/it/u=3610868124,468820637&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=417', 'SDAFDD', 1, '2022-08-03 17:20:15', 0);
INSERT INTO `message_content` VALUES ('9662f80ae26de68ba6f577d065d47553', 'zzzz', 'zzzz', 'https://img1.baidu.com/it/u=3705123043,2281640962&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=776', 'cccc', 'cccc', 'https://img2.baidu.com/it/u=3610868124,468820637&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=417', 'as梵蒂冈', 1, '2022-08-03 17:21:21', 0);
INSERT INTO `message_content` VALUES ('9986a2d7dd5f14a764f0af8406c39dd5', 'dddd', 'dddd', 'default_head.jpg', 'zzzz', 'zzzz', 'https://img1.baidu.com/it/u=3705123043,2281640962&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=776', 'keyi', 1, '2022-08-01 16:33:58', 0);
INSERT INTO `message_content` VALUES ('9b18c816a471f51b2368139cca8df8a9', 'dddd', 'dddd', 'default_head.jpg', 'cccc', 'cccc', 'https://img2.baidu.com/it/u=3610868124,468820637&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=417', 'aaaaa', 1, '2022-08-02 10:50:28', 0);
INSERT INTO `message_content` VALUES ('9ca3663a380065df26cafaea8c09d573', 'cccc', 'cccc', 'https://img2.baidu.com/it/u=3610868124,468820637&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=417', 'dddd', 'dddd', 'default_head.jpg', 'ddddddddddddddddddddddddddddddddddddddd', 1, '2022-08-03 16:38:41', 0);
INSERT INTO `message_content` VALUES ('9f6618909821984782473f855f5a331e', 'zzzz', 'zzzz', 'https://img1.baidu.com/it/u=3705123043,2281640962&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=776', 'cccc', 'cccc', 'https://img2.baidu.com/it/u=3610868124,468820637&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=417', 'SADGFHFD', 1, '2022-08-03 17:21:11', 0);
INSERT INTO `message_content` VALUES ('a1592f424589f2cf5cae57176316a375', 'dddd', 'dddd', 'default_head.jpg', 'cccc', 'cccc', 'https://img2.baidu.com/it/u=3610868124,468820637&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=417', 'add', 1, '2022-08-03 15:51:27', 0);
INSERT INTO `message_content` VALUES ('a6dfcbff357a22f3c28c52a9052d0007', 'dddd', 'dddd', 'default_head.jpg', 'zzzz', 'zzzz', 'https://img1.baidu.com/it/u=3705123043,2281640962&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=776', 'niyehao', 1, '2022-08-01 16:33:18', 0);
INSERT INTO `message_content` VALUES ('a8a0c488a6bbc05e0dbaf131b4d78c4e', 'zzzz', 'zzzz', 'https://img1.baidu.com/it/u=3705123043,2281640962&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=776', 'dddd', 'dddd', 'default_head.jpg', 'asccaasd', 1, '2022-08-03 16:31:34', 0);
INSERT INTO `message_content` VALUES ('a9daf94b88bd220f3e4dc9bab800442d', 'dddd', 'dddd', 'default_head.jpg', 'cccc', 'cccc', 'https://img2.baidu.com/it/u=3610868124,468820637&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=417', 'cccccc', 1, '2022-08-03 16:38:11', 0);
INSERT INTO `message_content` VALUES ('aa98a7d7a77eeeb2ccb8bdc42c9f35df', 'cccc', 'cccc', 'https://img2.baidu.com/it/u=3610868124,468820637&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=417', 'dddd', 'dddd', 'default_head.jpg', 'sfafaas', 1, '2022-08-03 15:51:15', 0);
INSERT INTO `message_content` VALUES ('ae4eea73e95bf4ac01852ce017a7c64a', 'cccc', 'cccc', 'https://img2.baidu.com/it/u=3610868124,468820637&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=417', 'zzzz', 'zzzz', 'https://img1.baidu.com/it/u=3705123043,2281640962&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=776', '我上传了一个图片', 1, '2022-08-03 17:22:21', 0);
INSERT INTO `message_content` VALUES ('af7170e569d4e7781ddf920d91606f06', 'zzzz', 'zzzz', 'https://img1.baidu.com/it/u=3705123043,2281640962&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=776', 'cccc', 'cccc', 'https://img2.baidu.com/it/u=3610868124,468820637&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=417', 'vcvv', 1, '2022-08-02 15:31:00', 0);
INSERT INTO `message_content` VALUES ('b072083f97b49426506dea369cb5d1a8', 'zzzz', 'zzzz', 'https://img1.baidu.com/it/u=3705123043,2281640962&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=776', 'cccc', 'cccc', 'https://img2.baidu.com/it/u=3610868124,468820637&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=417', 'afsdgfs', 1, '2022-08-03 17:13:35', 0);
INSERT INTO `message_content` VALUES ('b16bedfa9f7ef86ada05643f495c30ed', 'dddd', 'dddd', 'default_head.jpg', 'zzzz', 'zzzz', 'https://img1.baidu.com/it/u=3705123043,2281640962&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=776', 'acscsacsa', 1, '2022-08-03 16:31:49', 0);
INSERT INTO `message_content` VALUES ('b185dff98dea88178758e533c483a849', 'dddd', 'dddd', 'default_head.jpg', 'zzzz', 'zzzz', 'https://img1.baidu.com/it/u=3705123043,2281640962&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=776', 'saddfs', 1, '2022-08-03 14:24:00', 0);
INSERT INTO `message_content` VALUES ('b2b473085522fa3c7d3c21e92672e7a5', 'cccc', 'cccc', 'https://img2.baidu.com/it/u=3610868124,468820637&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=417', 'dddd', 'dddd', 'default_head.jpg', 'acsd', 1, '2022-08-02 18:03:29', 0);
INSERT INTO `message_content` VALUES ('b3c92a7d69df46d9eeceaa6b45e14937', 'zzzz', 'zzzz', 'https://img1.baidu.com/it/u=3705123043,2281640962&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=776', 'cccc', 'cccc', 'https://img2.baidu.com/it/u=3610868124,468820637&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=417', '我看看效果', 1, '2022-08-03 17:23:17', 0);
INSERT INTO `message_content` VALUES ('b4a3ea80de6b77d0a393c4b2dc6032f4', 'cccc', 'cccc', 'https://img2.baidu.com/it/u=3610868124,468820637&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=417', 'dddd', 'dddd', 'default_head.jpg', 'dddd nihao', 1, '2022-08-02 09:27:26', 0);
INSERT INTO `message_content` VALUES ('ba5eb83751f86484290c9684c4cf2be6', 'zzzz', 'zzzz', 'https://img1.baidu.com/it/u=3705123043,2281640962&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=776', 'cccc', 'cccc', 'https://img2.baidu.com/it/u=3610868124,468820637&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=417', 'cccc', 1, '2022-08-01 17:23:40', 0);
INSERT INTO `message_content` VALUES ('ba8de8bbe284bf790c6b665e4085e9fd', 'zzzz', 'zzzz', 'https://img1.baidu.com/it/u=3705123043,2281640962&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=776', 'cccc', 'cccc', 'https://img2.baidu.com/it/u=3610868124,468820637&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=417', 'sAS', 1, '2022-08-03 17:28:05', 0);
INSERT INTO `message_content` VALUES ('bd382c95cea0dd780eedb2ba595c200a', 'cccc', 'cccc', 'https://img2.baidu.com/it/u=3610868124,468820637&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=417', 'zzzz', 'zzzz', 'https://img1.baidu.com/it/u=3705123043,2281640962&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=776', 'ddsa', 1, '2022-08-01 17:45:08', 0);
INSERT INTO `message_content` VALUES ('bf89ec17d0e090b21cee08297acd2835', 'zzzz', 'zzzz', 'https://img1.baidu.com/it/u=3705123043,2281640962&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=776', 'dddd', 'dddd', 'default_head.jpg', 'dd', 1, '2022-08-01 16:15:21', 0);
INSERT INTO `message_content` VALUES ('c1ff1a6e0dfa889d70bcacd4e5efc74f', 'zzzz', 'zzzz', 'https://img1.baidu.com/it/u=3705123043,2281640962&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=776', 'cccc', 'cccc', 'https://img2.baidu.com/it/u=3610868124,468820637&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=417', 'cccc', 1, '2022-08-01 17:47:22', 0);
INSERT INTO `message_content` VALUES ('c21ac6307019db8a2e772df1adce9c22', 'dddd', 'dddd', 'default_head.jpg', 'zzzz', 'zzzz', 'https://img1.baidu.com/it/u=3705123043,2281640962&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=776', 'xxxxxxxxxxxx', 1, '2022-08-03 16:40:21', 0);
INSERT INTO `message_content` VALUES ('c25012c1a9039d526b703d57ab1fa71e', 'zzzz', 'zzzz', 'https://img1.baidu.com/it/u=3705123043,2281640962&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=776', 'dddd', 'dddd', 'default_head.jpg', 'yaya\n', 1, '2022-08-01 16:16:41', 0);
INSERT INTO `message_content` VALUES ('c4778b00f0d3c9f185e1c203f790675c', 'zzzz', 'zzzz', 'https://img1.baidu.com/it/u=3705123043,2281640962&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=776', 'dddd', 'dddd', 'default_head.jpg', 'sffdfds', 1, '2022-08-01 16:15:45', 0);
INSERT INTO `message_content` VALUES ('c67b494cfcce08bc86858d2479fe11fc', 'cccc', 'cccc', 'https://img2.baidu.com/it/u=3610868124,468820637&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=417', 'zzzz', 'zzzz', 'https://img1.baidu.com/it/u=3705123043,2281640962&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=776', 'gyigio', 1, '2022-08-03 17:13:12', 0);
INSERT INTO `message_content` VALUES ('ca8f23279fd079c84d7877b699830bce', 'zzzz', 'zzzz', 'https://img1.baidu.com/it/u=3705123043,2281640962&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=776', 'dddd', 'dddd', 'default_head.jpg', '走 去群聊', 1, '2022-08-01 16:33:48', 0);
INSERT INTO `message_content` VALUES ('caae6bfc4bcb24d89ca0f82a45616703', 'zzzz', 'zzzz', 'https://img1.baidu.com/it/u=3705123043,2281640962&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=776', 'cccc', 'cccc', 'https://img2.baidu.com/it/u=3610868124,468820637&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=417', 'ASFGSGSD', 1, '2022-08-03 17:20:53', 0);
INSERT INTO `message_content` VALUES ('cab7d6b5c7ca6f623433a22ea930df31', 'cccc', 'cccc', 'https://img2.baidu.com/it/u=3610868124,468820637&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=417', 'dddd', 'dddd', 'default_head.jpg', 'dddd', 1, '2022-08-02 10:19:35', 0);
INSERT INTO `message_content` VALUES ('cbc93f5f0d730958785f90c20e083179', 'cccc', 'cccc', 'https://img2.baidu.com/it/u=3610868124,468820637&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=417', 'dddd', 'dddd', 'default_head.jpg', '11111', 1, '2022-08-02 10:40:06', 0);
INSERT INTO `message_content` VALUES ('cedc5acd15e287f72b126cb25aa9dab1', 'dddd', 'dddd', 'default_head.jpg', 'cccc', 'cccc', 'https://img2.baidu.com/it/u=3610868124,468820637&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=417', 'ccccc', 1, '2022-08-02 14:33:38', 0);
INSERT INTO `message_content` VALUES ('cf6e2e7c04f9e2ab8eeae32fc1b4b3c1', 'zzzz', 'zzzz', 'https://img1.baidu.com/it/u=3705123043,2281640962&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=776', 'cccc', 'cccc', 'https://img2.baidu.com/it/u=3610868124,468820637&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=417', 'ASADA', 1, '2022-08-03 17:28:00', 0);
INSERT INTO `message_content` VALUES ('d0648873e861956ea302663e1097c736', 'zzzz', 'zzzz', 'https://img1.baidu.com/it/u=3705123043,2281640962&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=776', 'dddd', 'dddd', 'default_head.jpg', '😁', 1, '2022-07-29 16:42:19', 0);
INSERT INTO `message_content` VALUES ('d0f635e96290f4d5da1d9ee7032db986', 'zzzz', 'zzzz', 'https://img1.baidu.com/it/u=3705123043,2281640962&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=776', 'dddd', 'dddd', 'default_head.jpg', 'dddd', 1, '2022-08-02 14:07:44', 0);
INSERT INTO `message_content` VALUES ('d2ea3f77d226b4d75b967d3f80064fb3', 'zzzz', 'zzzz', 'https://img1.baidu.com/it/u=3705123043,2281640962&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=776', 'cccc', 'cccc', 'https://img2.baidu.com/it/u=3610868124,468820637&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=417', '不行\n', 1, '2022-08-03 17:22:26', 0);
INSERT INTO `message_content` VALUES ('d37eb340f5ef19a779a17c5b78bdcc6d', 'dddd', 'dddd', 'default_head.jpg', 'zzzz', 'zzzz', 'https://img1.baidu.com/it/u=3705123043,2281640962&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=776', 'nishi  zzzz', 1, '2022-08-01 17:29:32', 0);
INSERT INTO `message_content` VALUES ('d6afd0753e7f4b42313c52f5b6989fe9', 'zzzz', 'zzzz', 'https://img1.baidu.com/it/u=3705123043,2281640962&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=776', 'cccc', 'cccc', 'https://img2.baidu.com/it/u=3610868124,468820637&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=417', 'cccc', 1, '2022-08-02 15:31:31', 0);
INSERT INTO `message_content` VALUES ('d788ed822984fe12212fd0fbe27336c9', 'zzzz', 'zzzz', 'https://img1.baidu.com/it/u=3705123043,2281640962&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=776', 'dddd', 'dddd', 'default_head.jpg', '11', 1, '2022-08-01 15:59:04', 0);
INSERT INTO `message_content` VALUES ('d854d314726fced83ea9df88d7bde60b', 'cccc', 'cccc', 'https://img2.baidu.com/it/u=3610868124,468820637&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=417', 'dddd', 'dddd', 'default_head.jpg', 'ccccc', 1, '2022-08-02 17:21:22', 0);
INSERT INTO `message_content` VALUES ('da6b0056b5c311e98b3cf9c100e660dd', 'zzzz', 'zzzz', 'https://img1.baidu.com/it/u=3705123043,2281640962&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=776', 'dddd', 'dddd', 'default_head.jpg', 'ddddddddd', 1, '2022-08-02 14:06:27', 0);
INSERT INTO `message_content` VALUES ('dc8f1946dff9d38ca6fafed8816ca901', 'zzzz', 'zzzz', 'https://img1.baidu.com/it/u=3705123043,2281640962&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=776', 'dddd', 'dddd', 'default_head.jpg', '🤪', 1, '2022-08-01 15:26:04', 0);
INSERT INTO `message_content` VALUES ('e1aec279db1344d2e923dbbc295445d3', 'zzzz', 'zzzz', 'https://img1.baidu.com/it/u=3705123043,2281640962&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=776', 'dddd', 'dddd', 'default_head.jpg', 'da', 1, '2022-08-02 14:06:43', 0);
INSERT INTO `message_content` VALUES ('e363c9e14e4b499fe784e3ef53dcb286', 'zzzz', 'zzzz', 'https://img1.baidu.com/it/u=3705123043,2281640962&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=776', 'cccc', 'cccc', 'https://img2.baidu.com/it/u=3610868124,468820637&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=417', 'A多岁的萨达', 1, '2022-08-03 17:16:20', 0);
INSERT INTO `message_content` VALUES ('e4e513027362a30657df078131e43b4b', 'zzzz', 'zzzz', 'https://img1.baidu.com/it/u=3705123043,2281640962&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=776', 'dddd', 'dddd', 'default_head.jpg', '9999999', 1, '2022-08-02 13:56:24', 0);
INSERT INTO `message_content` VALUES ('e53a152c7991a8aad5285d4b4845ac5c', 'zzzz', 'zzzz', 'https://img1.baidu.com/it/u=3705123043,2281640962&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=776', 'dddd', 'dddd', 'default_head.jpg', '你好 dddd', 1, '2022-08-01 16:33:07', 0);
INSERT INTO `message_content` VALUES ('e5ce567188f7a1d39c9d5686c8b01f25', 'zzzz', 'zzzz', 'https://img1.baidu.com/it/u=3705123043,2281640962&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=776', 'cccc', 'cccc', 'https://img2.baidu.com/it/u=3610868124,468820637&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=417', 'nihao  cccc', 1, '2022-08-02 15:28:20', 0);
INSERT INTO `message_content` VALUES ('e6da74baa7ca9eb4692a2ebd740e7395', 'cccc', 'cccc', 'https://img2.baidu.com/it/u=3610868124,468820637&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=417', 'zzzz', 'zzzz', 'https://img1.baidu.com/it/u=3705123043,2281640962&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=776', '就错了', 1, '2022-08-03 17:22:30', 0);
INSERT INTO `message_content` VALUES ('ec8e68905188213e05feb0734e9c6525', 'zzzz', 'zzzz', 'https://img1.baidu.com/it/u=3705123043,2281640962&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=776', 'cccc', 'cccc', 'https://img2.baidu.com/it/u=3610868124,468820637&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=417', '没有图片功能\n', 1, '2022-08-03 17:22:40', 0);
INSERT INTO `message_content` VALUES ('ef229f86eb65ea5659d75dea6b04fd5b', 'cccc', 'cccc', 'https://img2.baidu.com/it/u=3610868124,468820637&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=417', 'dddd', 'dddd', 'default_head.jpg', 'cssc', 1, '2022-08-02 14:46:58', 0);
INSERT INTO `message_content` VALUES ('f4c5c3b4a81e10b90083232a1c9a433f', 'zzzz', 'zzzz', 'https://img1.baidu.com/it/u=3705123043,2281640962&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=776', 'cccc', 'cccc', 'https://img2.baidu.com/it/u=3610868124,468820637&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=417', 'SADDGDH', 1, '2022-08-03 17:20:12', 0);
INSERT INTO `message_content` VALUES ('f865b1fa7f09b18a221139b5f6a57474', 'cccc', 'cccc', 'https://img2.baidu.com/it/u=3610868124,468820637&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=417', 'zzzz', 'zzzz', 'https://img1.baidu.com/it/u=3705123043,2281640962&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=776', '😮', 1, '2022-08-03 17:21:35', 0);
INSERT INTO `message_content` VALUES ('f910ad0706b5058893e5f316f3f2f565', 'zzzz', 'zzzz', 'https://img1.baidu.com/it/u=3705123043,2281640962&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=776', 'cccc', 'cccc', 'https://img2.baidu.com/it/u=3610868124,468820637&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=417', '刚才上传的吗？\n', 1, '2022-08-03 17:22:48', 0);
INSERT INTO `message_content` VALUES ('f964a8f55fd4899875a076486675878a', 'zzzz', 'zzzz', 'https://img1.baidu.com/it/u=3705123043,2281640962&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=776', 'cccc', 'cccc', 'https://img2.baidu.com/it/u=3610868124,468820637&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=417', 'qwer', 1, '2022-08-03 17:11:24', 0);
INSERT INTO `message_content` VALUES ('fa332e28694f5c1f9fbf6773d40a4aeb', 'zzzz', 'zzzz', 'https://img1.baidu.com/it/u=3705123043,2281640962&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=776', 'dddd', 'dddd', 'default_head.jpg', 'vvvv', 1, '2022-08-02 14:25:08', 0);
INSERT INTO `message_content` VALUES ('fab271a1e8ff2f1442071a6392f860cc', 'dddd', 'dddd', 'default_head.jpg', 'zzzz', 'zzzz', 'https://img1.baidu.com/it/u=3705123043,2281640962&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=776', 'zzz你好 我是dddd\n', 1, '2022-08-01 16:16:45', 0);
INSERT INTO `message_content` VALUES ('fc5695af7562ecc87608889d16e832ff', 'dddd', 'dddd', 'default_head.jpg', 'cccc', 'cccc', 'https://img2.baidu.com/it/u=3610868124,468820637&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=417', 'lihugfchfxgxcjyvgkgik', 1, '2022-08-03 17:03:05', 0);
INSERT INTO `message_content` VALUES ('fd2b3d085b226d87f305b8d4de73644f', 'zzzz', 'zzzz', 'https://img1.baidu.com/it/u=3705123043,2281640962&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=776', 'cccc', 'cccc', 'https://img2.baidu.com/it/u=3610868124,468820637&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=417', 'ASSDFGSFDG', 1, '2022-08-03 17:15:31', 0);
INSERT INTO `message_content` VALUES ('fe99458b0f7ca4903c4ad16efae3bf93', 'cccc', 'cccc', 'https://img2.baidu.com/it/u=3610868124,468820637&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=417', 'dddd', 'dddd', 'default_head.jpg', 'aaaa', 1, '2022-08-02 10:56:50', 0);
INSERT INTO `message_content` VALUES ('ffe752045df6a0e7d23fa4ef70b00022', 'cccc', 'cccc', 'https://img2.baidu.com/it/u=3610868124,468820637&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=417', 'zzzz', 'zzzz', 'https://img1.baidu.com/it/u=3705123043,2281640962&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=776', '👆🏻', 1, '2022-08-03 17:20:14', 0);

-- ----------------------------
-- Table structure for message_type
-- ----------------------------
DROP TABLE IF EXISTS `message_type`;
CREATE TABLE `message_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '消息类型编号',
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '消息类型名称',
  `is_delete` int(11) NULL DEFAULT 0 COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of message_type
-- ----------------------------
INSERT INTO `message_type` VALUES (1, '文本', 0);
INSERT INTO `message_type` VALUES (2, '图片', 0);
INSERT INTO `message_type` VALUES (3, '文件', 0);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '登录账号',
  `nickname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '昵称',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `user_profile` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户头像',
  `user_state_id` int(11) NULL DEFAULT 2 COMMENT '用户状态id',
  `is_enabled` tinyint(1) NULL DEFAULT 1 COMMENT '是否可用',
  `is_locked` tinyint(1) NULL DEFAULT 0 COMMENT '是否被锁定',
  `is_delete` int(11) NULL DEFAULT NULL COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_ibfk_1`(`user_state_id`) USING BTREE,
  CONSTRAINT `user_ibfk_1` FOREIGN KEY (`user_state_id`) REFERENCES `user_state` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'huang', '王路飞', '$2a$10$oE39aG10kB/rFu2vQeCJTu/V/v4n6DRR0f8WyXRiAYvBpmadoOBE.', 'https://img1.baidu.com/it/u=1966616150,2146512490&fm=253&fmt=auto&app=138&f=JPEG?w=751&h=500', 2, 1, 0, 0);
INSERT INTO `user` VALUES (2, 'suolong', '刘索隆', '$2a$10$oE39aG10kB/rFu2vQeCJTu/V/v4n6DRR0f8WyXRiAYvBpmadoOBE.', 'https://img0.baidu.com/it/u=2521851051,2189866243&fm=253&fmt=auto&app=138&f=JPEG?w=889&h=500', 2, 1, 0, 0);
INSERT INTO `user` VALUES (3, 'hongfa', '面子王', '$2a$10$oE39aG10kB/rFu2vQeCJTu/V/v4n6DRR0f8WyXRiAYvBpmadoOBE.', 'https://img1.baidu.com/it/u=2003496092,3295249130&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=313', 2, 1, 0, 0);
INSERT INTO `user` VALUES (4, '22', '23', '$2a$10$hvoriOXwQYpn2m/UWK.bR.LdGQNkwzts0dWcMz0LwuSgcY3fkFTZK', 'https://img1.baidu.com/it/u=1875294847,3151489223&fm=253&fmt=auto&app=138&f=JPEG?w=889&h=500', 2, 1, 0, 0);
INSERT INTO `user` VALUES (5, 'luojie', '罗杰', '$2a$10$oE39aG10kB/rFu2vQeCJTu/V/v4n6DRR0f8WyXRiAYvBpmadoOBE.', 'https://img0.baidu.com/it/u=1124118153,82771973&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=391', 2, 1, 0, 0);
INSERT INTO `user` VALUES (6, 'aaa', 'aaa', '$2a$10$bLgMwYJLbsBTcFVxXhuu3e9CyCCN.e61f1eB6zGp0pELIyT4c340e', 'https://img2.baidu.com/it/u=3573340222,719722755&fm=253&fmt=auto&app=120&f=JPEG?w=500&h=784', 2, 1, 0, 0);
INSERT INTO `user` VALUES (7, 'luo', '罗', '$2a$10$Jp7.h24JQvLL3/OinvaU7uqUhYxa3m4oZO8PFuASE/wJMame8G5de', 'https://img2.baidu.com/it/u=383380894,3933217319&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=333', 2, 1, 0, 0);
INSERT INTO `user` VALUES (8, 'nami', '娜美', '$2a$10$otFiIxguKGRhgJL..tlJeepm/HVwnnXWmzjL22t0QFVVm5vt1uI5C', 'https://img1.baidu.com/it/u=105101192,4203910896&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=375', 2, 1, 0, 0);
INSERT INTO `user` VALUES (9, 'wusuopu', '乌索普', '$2a$10$LFAydsgrxtV0ZuguQfBePOogHQ904DazLqCsgp7sizz4lORobRYbq', 'https://img1.baidu.com/it/u=2921329287,1077941277&fm=253&fmt=auto&app=138&f=JPEG?w=755&h=500', 2, 1, 1, 0);
INSERT INTO `user` VALUES (10, 'qiaoba', '乔巴', '$2a$10$rgUdpi.2mXAhSa/1GR2atO.lXiJXYpp7cp2r1q7Us/y2Pr7p1RNiO', 'https://img2.baidu.com/it/u=4023438200,1160571296&fm=253&fmt=auto?w=150&h=200', 2, 1, 0, 0);
INSERT INTO `user` VALUES (11, 'luobin', '罗宾', '$2a$10$UfzZSYfd3GrJQO23EomEbeIFKwUdp6HnuTcvLtYV2LbdDQj9KHstK', 'https://img0.baidu.com/it/u=1437481080,495196757&fm=253&fmt=auto&app=138&f=JPEG?w=397&h=499', 2, 1, 0, 0);
INSERT INTO `user` VALUES (12, 'fulanqi', '弗兰奇', '$2a$10$3rGgRBJaUAEK2g.1.xVHVuGtKzT2NLqLX2Re9IVwsEbYCv/6vPtRi', 'https://img2.baidu.com/it/u=2961561372,2146272569&fm=253&fmt=auto&app=138&f=JPEG?w=466&h=730', 2, 1, 0, 0);
INSERT INTO `user` VALUES (13, 'buluke', '布鲁克', '$2a$10$b5qMiWVWbB4YyZsxO.XOFuvY5VB4P4FGbwGdCyZVYj7VPUWeQEALW', 'https://img2.baidu.com/it/u=3112824074,2266984582&fm=253&fmt=auto&app=138&f=JPEG?w=530&h=500', 2, 1, 0, 0);
INSERT INTO `user` VALUES (17, 'lol', 'lol', '$2a$10$LFQ7S8dkTq42Z2bNVaZ8bOxv0jp4d6NBuSLjjPkWfQBbZCBTTqQwi', 'https://img2.baidu.com/it/u=3773920174,505548057&fm=253&fmt=auto&app=138&f=JPEG?w=400&h=307', 2, 1, 0, 0);
INSERT INTO `user` VALUES (18, 'abc', 'abc', '$2a$10$LlSBK0N9m4Yvyh6giZta7O979HJzubUrscwu3.0WlIhpUO/bo8Cku', 'https://img1.baidu.com/it/u=3679192749,3445674048&fm=253&fmt=auto&app=120&f=JPEG?w=1280&h=800', 2, 1, 0, 0);
INSERT INTO `user` VALUES (19, 'uuu', 'uuu', '$2a$10$L4VTh./yerVndATzbf7WeectaYOC0MPNcbaYAevVMmgkBSowDaXay', 'https://img2.baidu.com/it/u=1621188712,3915893357&fm=253&fmt=auto&app=138&f=JPEG?w=236&h=354', 2, 1, 0, 0);
INSERT INTO `user` VALUES (20, 'qwe', 'qwe', '$2a$10$XPvEXzuAeQD14hOGJzJL6uIsLWdDUYa1B4oFU0WUR1yNV2fctYcYS', 'https://img1.baidu.com/it/u=1769981391,645575707&fm=253&fmt=auto&app=138&f=JPEG?w=149&h=150', 2, 1, 0, 0);
INSERT INTO `user` VALUES (21, '老板', 'boss', '$2a$10$R.MqNOALIQSYWlbJdGgAiOXL4nWPbFgrRfvbOnruaEq2R0MVHLNfi', 'https://img0.baidu.com/it/u=1872881124,390027250&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=333', 2, 1, 0, 0);
INSERT INTO `user` VALUES (22, 'lin', 'lin', '$2a$10$kKbT3vueBUBY9ACgatYfd.6tKVG.j/ObrBIELfv8A/5Cab0CX.1a.', 'https://img1.baidu.com/it/u=153079648,553512087&fm=253&fmt=auto&app=138&f=JPEG?w=499&h=356', 2, 1, 0, 0);
INSERT INTO `user` VALUES (23, 'zzzz', 'zzzz', '$2a$10$IU3Df6BFBkkv7mRNiyJxQ.PLkyshJxiH1YCIPrpt5/8w.jb5bm6oa', 'https://img1.baidu.com/it/u=3705123043,2281640962&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=776', 1, 1, 0, 0);
INSERT INTO `user` VALUES (24, 'cccc', 'cccc', '$2a$10$KAeAQmd0.AI8oxRq89nlPuOaMfxXX3V.MRv.HfIiKiv.IiTmvpt9C', 'https://img2.baidu.com/it/u=3610868124,468820637&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=417', 1, 1, 0, 0);
INSERT INTO `user` VALUES (25, 'dddd', 'dddd', '$2a$10$GtIjNsb4V/h4qXcLWpRcJO04x7kjpgIWEGIVagrJIBfm3nTnIlmOC', 'default_head.jpg', 2, 1, 0, 0);

-- ----------------------------
-- Table structure for user_state
-- ----------------------------
DROP TABLE IF EXISTS `user_state`;
CREATE TABLE `user_state`  (
  `id` int(11) NOT NULL,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '状态名',
  `is_delete` int(11) NULL DEFAULT NULL COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_state
-- ----------------------------
INSERT INTO `user_state` VALUES (1, '在线', 0);
INSERT INTO `user_state` VALUES (2, '离线', 0);
INSERT INTO `user_state` VALUES (3, '已注销', 0);

SET FOREIGN_KEY_CHECKS = 1;
