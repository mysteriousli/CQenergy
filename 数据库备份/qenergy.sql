/*
 Navicat Premium Data Transfer

 Source Server         : blog
 Source Server Type    : MySQL
 Source Server Version : 50528
 Source Host           : localhost:3306
 Source Schema         : qenergy

 Target Server Type    : MySQL
 Target Server Version : 50528
 File Encoding         : 65001

 Date: 23/10/2018 08:45:35
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for bill
-- ----------------------------
DROP TABLE IF EXISTS `bill`;
CREATE TABLE `bill`  (
  `b_id` int(20) NOT NULL AUTO_INCREMENT,
  `b_label` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `iconCode` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `b_money` double(8, 2) NOT NULL,
  `b_date` datetime NOT NULL,
  `b_type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `u_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`b_id`) USING BTREE,
  INDEX `user_bill`(`u_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 164 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bill
-- ----------------------------
INSERT INTO `bill` VALUES (122, '住房', 'icon-zhufang', 58.00, '2018-09-01 10:39:11', '支出', '113');
INSERT INTO `bill` VALUES (123, '居家', 'icon-jujia', 58.00, '2018-09-01 10:39:46', '支出', '113');
INSERT INTO `bill` VALUES (124, '住房', 'icon-zhufang', 63.00, '2018-09-01 15:29:32', '支出', '114');
INSERT INTO `bill` VALUES (125, '娱乐', 'icon-yule', 932.00, '2018-09-01 15:29:37', '支出', '114');
INSERT INTO `bill` VALUES (126, '兼职', 'icon-jianzhi', 900.00, '2018-09-01 15:29:53', '收入', '114');
INSERT INTO `bill` VALUES (127, '运动', 'icon-yundong', 89.00, '2018-09-15 11:48:54', '支出', '119');
INSERT INTO `bill` VALUES (128, '彩票', 'icon-caipiao', 85.00, '2018-09-15 12:02:42', '收入', '119');
INSERT INTO `bill` VALUES (129, '旅行', 'icon-lvxing', 999.00, '0016-01-08 16:27:34', '支出', '117');
INSERT INTO `bill` VALUES (130, '购物', 'icon-gouwu', 666.00, '0016-02-08 16:48:42', '支出', '120');
INSERT INTO `bill` VALUES (131, '烟酒', 'icon-jiushuihongjiuhongjiubei', 96.00, '0016-02-08 16:48:54', '支出', '120');
INSERT INTO `bill` VALUES (135, '餐饮', 'icon-icon-', 100.00, '2018-09-21 18:11:52', '支出', '123');
INSERT INTO `bill` VALUES (134, '餐饮', 'icon-icon-', 7.00, '2018-09-21 15:13:24', '支出', '112');
INSERT INTO `bill` VALUES (136, '兼职', 'icon-jianzhi', 200.00, '2018-09-21 18:12:01', '收入', '123');
INSERT INTO `bill` VALUES (137, '交通', 'icon-jiaotong', 99.00, '0016-04-09 15:35:45', '支出', '120');
INSERT INTO `bill` VALUES (138, '餐饮', 'icon-icon-', 8.00, '2018-09-24 18:22:15', '支出', '124');
INSERT INTO `bill` VALUES (139, '餐饮', 'icon-icon-', 85.00, '2018-10-03 20:48:25', '支出', '125');
INSERT INTO `bill` VALUES (140, '兼职', 'icon-jianzhi', 87.00, '2018-10-03 20:48:35', '收入', '125');
INSERT INTO `bill` VALUES (141, '居家', 'icon-jujia', 82.00, '2018-10-03 20:52:07', '支出', '125');
INSERT INTO `bill` VALUES (142, '旅行', 'icon-lvxing', 85.00, '2018-10-03 21:24:20', '支出', '116');
INSERT INTO `bill` VALUES (143, '购物', 'icon-gouwu', 562.00, '2018-10-03 21:25:50', '支出', '116');
INSERT INTO `bill` VALUES (144, '运动', 'icon-yundong', 86.00, '2018-10-03 21:42:19', '支出', '116');
INSERT INTO `bill` VALUES (145, '居家', 'icon-jujia', 548.00, '2018-10-03 21:59:34', '支出', '125');
INSERT INTO `bill` VALUES (146, '购物', 'icon-gouwu', 80.00, '2018-10-03 22:06:24', '支出', '126');
INSERT INTO `bill` VALUES (147, '兼职', 'icon-jianzhi', 93.00, '2018-10-03 22:08:44', '收入', '125');
INSERT INTO `bill` VALUES (148, '日常', 'icon-riyongpin', 789.00, '2018-10-03 22:13:52', '支出', '125');
INSERT INTO `bill` VALUES (149, '水果', 'icon-shuiguo', 44.00, '0015-09-08 22:40:09', '支出', '125');
INSERT INTO `bill` VALUES (150, '修理', 'icon-weixiu', 96.00, '2018-10-04 07:44:06', '支出', '125');
INSERT INTO `bill` VALUES (151, '水果', 'icon-shuiguo', 88.00, '0015-10-09 10:48:09', '支出', '125');
INSERT INTO `bill` VALUES (152, '理财', 'icon-licaishouyi', 300.00, '2018-10-05 11:01:07', '收入', '125');
INSERT INTO `bill` VALUES (153, '购物', 'icon-gouwu', 523.00, '2018-10-05 11:01:14', '支出', '125');
INSERT INTO `bill` VALUES (154, '日常', 'icon-riyongpin', 50.00, '2018-10-06 12:13:10', '支出', '125');
INSERT INTO `bill` VALUES (155, '餐饮', 'icon-icon-', 88.00, '2018-10-08 15:54:43', '支出', '127');
INSERT INTO `bill` VALUES (156, '医疗', 'icon-yiliao', 333.00, '0016-03-10 16:36:41', '支出', '117');
INSERT INTO `bill` VALUES (157, '办公', 'icon-bangong', 9.00, '0016-03-10 16:37:12', '支出', '117');
INSERT INTO `bill` VALUES (158, '科技', 'icon-shouji', 9.00, '0011-04-19 13:36:57', '支出', '110');
INSERT INTO `bill` VALUES (159, '书籍', 'icon-iconset0116', 54.00, '2018-10-01 14:13:15', '支出', '110');
INSERT INTO `bill` VALUES (160, '运动', 'icon-yundong', 9.00, '0011-04-19 14:16:38', '支出', '110');
INSERT INTO `bill` VALUES (161, '运动', 'icon-yundong', 99.00, '0011-04-19 14:16:49', '支出', '110');
INSERT INTO `bill` VALUES (162, '旅行', 'icon-lvxing', 942.00, '2018-10-01 14:17:35', '支出', '110');
INSERT INTO `bill` VALUES (163, '兼职', 'icon-jianzhi', 575.00, '2018-10-01 14:17:40', '收入', '110');

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`  (
  `com_id` int(10) NOT NULL AUTO_INCREMENT,
  `com_user` int(10) NOT NULL,
  `com_username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `com_post` int(10) NOT NULL,
  `com_text` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `com_time` datetime NOT NULL,
  PRIMARY KEY (`com_id`) USING BTREE,
  INDEX `comment_ibfk_1`(`com_user`) USING BTREE,
  INDEX `comment_ibfk_2`(`com_post`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 42 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES (22, 113, '1', 138, 'eee', '2018-09-01 10:40:16');
INSERT INTO `comment` VALUES (23, 113, '1', 138, 'd', '2018-09-01 12:59:29');
INSERT INTO `comment` VALUES (24, 113, '1', 138, 'dd', '2018-09-01 13:39:39');
INSERT INTO `comment` VALUES (25, 113, '1', 138, 'dd', '2018-09-01 13:40:36');
INSERT INTO `comment` VALUES (26, 113, '1', 138, 'dd', '2018-09-01 13:57:29');
INSERT INTO `comment` VALUES (27, 113, '1', 137, 'dd', '2018-09-01 13:57:32');
INSERT INTO `comment` VALUES (28, 119, 'jkj', 150, '你好', '2018-09-15 11:47:41');
INSERT INTO `comment` VALUES (29, 112, '讨论大神', 143, '你好', '2018-09-21 15:12:55');
INSERT INTO `comment` VALUES (30, 112, '讨论大神', 153, '你好', '2018-09-21 15:13:07');
INSERT INTO `comment` VALUES (31, 123, '演示', 155, '你好', '2018-09-21 18:12:59');
INSERT INTO `comment` VALUES (32, 126, '羽飞', 146, '你好', '2018-10-03 22:09:56');
INSERT INTO `comment` VALUES (33, 125, '测试账号', 146, '你好', '2018-10-03 22:11:33');
INSERT INTO `comment` VALUES (34, 125, '测试账号', 158, '哈罗', '2018-10-03 22:40:56');
INSERT INTO `comment` VALUES (35, 125, '测试账号', 157, '阿拉啦啦', '2018-10-03 23:08:55');
INSERT INTO `comment` VALUES (36, 125, '测试账号', 155, '。哦好', '2018-10-03 23:09:29');
INSERT INTO `comment` VALUES (37, 125, '测试账号', 159, '噢噢', '2018-10-04 10:48:55');
INSERT INTO `comment` VALUES (38, 127, '11', 159, '啊啊啊', '2018-10-08 15:54:59');
INSERT INTO `comment` VALUES (39, 127, '11', 159, '你好', '2018-10-08 15:55:28');
INSERT INTO `comment` VALUES (40, 127, '11', 148, '1', '2018-10-08 16:24:13');
INSERT INTO `comment` VALUES (41, 116, '番茄大王', 159, '嗯  不错', '2018-10-12 13:10:45');

-- ----------------------------
-- Table structure for diary
-- ----------------------------
DROP TABLE IF EXISTS `diary`;
CREATE TABLE `diary`  (
  `d_id` int(20) NOT NULL AUTO_INCREMENT,
  `d_date` datetime NOT NULL,
  `d_content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `d_weather` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `d_mood` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `d_status` tinyint(4) NOT NULL DEFAULT 1,
  `u_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`d_id`) USING BTREE,
  INDEX `user_diary`(`u_id`) USING BTREE COMMENT '外键'
) ENGINE = MyISAM AUTO_INCREMENT = 287 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of diary
-- ----------------------------
INSERT INTO `diary` VALUES (243, '2018-09-01 15:28:49', '&#24320;&#24515;&#21040;&#39134;&#36215;~~~&#39033;&#30446;&#20570;&#23436;&#20102;&#65292;&#21704;&#21704;&#21704;', 'icon-weibiaoti--', 'icon-cry', 0, '114');
INSERT INTO `diary` VALUES (238, '2018-09-01 14:44:22', '243423234234', 'icon-weibiaoti--3', 'icon-crazy', 1, '113');
INSERT INTO `diary` VALUES (242, '2018-09-01 14:45:46', '2eqq2eeq2', 'icon-weibiaoti--4', 'icon-cool', 1, '113');
INSERT INTO `diary` VALUES (244, '2018-09-01 15:28:59', '&#19981;&#30693;&#36947;&#20160;&#20040;&#26102;&#20505;&#21507;&#39277;&#21834;&#65281;', 'icon-weibiaoti--3', 'icon-crazy', 1, '114');
INSERT INTO `diary` VALUES (245, '2018-09-01 15:29:12', '&#22825;&#27668;&#19981;&#22909;&#65292;&#22909;&#20260;&#24515;&#12290;', 'icon-weibiaoti--', 'icon-sleeping', 1, '114');
INSERT INTO `diary` VALUES (246, '2018-09-01 15:29:25', '&#22909;&#24515;&#24773;', 'icon-weibiaoti--2', 'icon-crazy', 1, '114');
INSERT INTO `diary` VALUES (247, '2018-09-04 09:34:54', '&#21704;&#21704;&#21704;&#21704;&#21704;&#21704;', 'icon-weibiaoti--4', 'icon-cool', 1, '117');
INSERT INTO `diary` VALUES (248, '2018-09-15 11:49:27', '&#23601;&#20960;&#21477;&#35805;', 'icon-weibiaoti--3', 'icon-cry', 1, '119');
INSERT INTO `diary` VALUES (249, '2018-09-20 16:33:03', '&#21703;&#21703;', 'icon-weibiaoti--4', 'icon-cool', 1, '120');
INSERT INTO `diary` VALUES (250, '2018-09-20 16:33:16', '&#19979;&#38632;&#21862;', 'icon-weibiaoti--3', 'icon-wink', 1, '120');
INSERT INTO `diary` VALUES (252, '2018-09-21 18:11:17', '&#20170;&#22825;&#24515;&#24773;&#19981;&#38169;', 'icon-weibiaoti--4', 'icon-cool', 1, '123');
INSERT INTO `diary` VALUES (253, '2018-09-21 20:40:40', '&#38463;&#30417;&#25511;&#20820;&#23376;', 'icon-weibiaoti--4', 'icon-cool', 1, '117');
INSERT INTO `diary` VALUES (254, '2018-09-24 18:23:42', 'vb', 'icon-weibiaoti--4', 'icon-cool', 1, '124');
INSERT INTO `diary` VALUES (255, '2018-10-03 20:46:20', '&#22825;&#27668;&#19981;&#38169;', 'icon-weibiaoti--', 'icon-sleeping', 1, '125');
INSERT INTO `diary` VALUES (256, '2018-10-03 20:46:49', '&#21313;&#20960;&#24230;', 'icon-weibiaoti--2', 'icon-crazy', 1, '125');
INSERT INTO `diary` VALUES (257, '2018-10-03 20:47:59', '&#36229;&#24066;', 'icon-weibiaoti--1', 'icon-crazy', 1, '125');
INSERT INTO `diary` VALUES (258, '2018-10-03 20:49:16', '&#19996;&#35199;', 'icon-weibiaoti--3', 'icon-crazy', 1, '125');
INSERT INTO `diary` VALUES (259, '2018-10-03 20:53:10', '&#20063;&#19981;', 'icon-weibiaoti--1', 'icon-sleeping', 1, '125');
INSERT INTO `diary` VALUES (260, '2018-10-03 20:56:58', '&#20010;&#21679;try', 'icon-weibiaoti--4', 'icon-cool', 1, '125');
INSERT INTO `diary` VALUES (261, '2018-10-03 21:17:16', '&#21862;&#21862;&#21862;', 'icon-weibiaoti--4', 'icon-cool', 1, '125');
INSERT INTO `diary` VALUES (262, '2018-10-03 21:17:31', '&#21862;&#21862;&#21862;', 'icon-weibiaoti--4', 'icon-cool', 1, '125');
INSERT INTO `diary` VALUES (268, '2018-10-03 21:59:21', '&#30340;&#26041;&#27861;', 'icon-weibiaoti--3', 'icon-sleeping', 1, '125');
INSERT INTO `diary` VALUES (269, '2018-10-03 22:00:16', '&#22823;&#21898;&#22823;&#21483;', 'icon-weibiaoti--4', 'icon-crazy', 1, '125');
INSERT INTO `diary` VALUES (270, '2018-10-03 22:01:22', '&#25918;&#20551;&#37117;&#35273;&#24471;', 'icon-weibiaoti--4', 'icon-cool', 0, '125');
INSERT INTO `diary` VALUES (271, '2018-10-03 22:02:37', '&#19968;&#33324;&#33324;', 'icon-weibiaoti--4', 'icon-cool', 1, '126');
INSERT INTO `diary` VALUES (272, '2018-10-03 22:04:04', '&#21704;&#19996;', 'icon-weibiaoti--4', 'icon-cool', 1, '126');
INSERT INTO `diary` VALUES (273, '2018-10-03 22:08:11', '&#25918;&#20551;&#25918;&#20551;', 'icon-weibiaoti--', 'icon-cry', 1, '125');
INSERT INTO `diary` VALUES (274, '2018-10-03 22:36:06', '&#20102;&#26469;&#20102;&#26469;&#20102;', 'icon-weibiaoti--4', 'icon-cool', 0, '125');
INSERT INTO `diary` VALUES (275, '2018-10-03 22:39:49', '&#21704;&#21704;&#21704;', 'icon-weibiaoti--4', 'icon-wink', 0, '125');
INSERT INTO `diary` VALUES (276, '2018-10-03 23:11:50', '&#19981;&#21518;&#24724;', 'icon-weibiaoti--4', 'icon-cool', 0, '125');
INSERT INTO `diary` VALUES (277, '2018-10-04 07:43:32', 'www', 'icon-weibiaoti--3', 'icon-crazy', 0, '125');
INSERT INTO `diary` VALUES (280, '2018-10-06 14:07:22', '&#20182;&#22920;&#30340;&#65292;&#31561;&#20010;&#36710;&#65292;&#36824;&#35201;&#25552;&#21069;&#36827;&#31449;&#36825;&#20040;&#22810;&#65292;&#20320;&#36825;&#26159;&#35201;&#36215;&#39134;&#21834;&#55357;&#56834;', 'icon-weibiaoti--4', 'icon-sleeping', 1, '116');
INSERT INTO `diary` VALUES (279, '2018-10-04 10:47:52', '&#21999;&#21999;&#22909;&#30340;', 'icon-weibiaoti--4', 'icon-sleeping', 1, '125');
INSERT INTO `diary` VALUES (282, '2018-10-08 15:56:51', '&#21704;&#21704;&#21704;', 'icon-weibiaoti--2', 'icon-cool', 0, '127');
INSERT INTO `diary` VALUES (283, '2018-10-08 15:57:07', '&#36825;&#20010;app&#30495;&#19981;&#38169;&#65292;&#25105;&#36229;&#32423;&#21916;&#27426;', 'icon-weibiaoti--4', 'icon-cool', 1, '127');
INSERT INTO `diary` VALUES (284, '2018-10-08 15:57:19', '&#20116;&#26143;&#20116;&#26143;&#65292;&#24517;&#39035;&#20116;&#26143;', 'icon-weibiaoti--4', 'icon-cool', 1, '127');
INSERT INTO `diary` VALUES (285, '2018-10-09 16:37:28', '&#30475;&#30475;', 'icon-weibiaoti--4', 'icon-cool', 1, '117');
INSERT INTO `diary` VALUES (286, '2018-10-10 13:36:36', '&#24320;&#24515;&#19978;&#35838;', 'icon-weibiaoti--4', 'icon-cool', 1, '110');

-- ----------------------------
-- Table structure for fabulous
-- ----------------------------
DROP TABLE IF EXISTS `fabulous`;
CREATE TABLE `fabulous`  (
  `f_user` int(10) NOT NULL COMMENT '用户ID',
  `f_post` int(10) NOT NULL COMMENT '帖子ID',
  `f_time` datetime NOT NULL COMMENT '点赞时间',
  PRIMARY KEY (`f_user`, `f_post`) USING BTREE,
  INDEX `f_post`(`f_post`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fabulous
-- ----------------------------
INSERT INTO `fabulous` VALUES (125, 159, '2018-10-10 07:20:42');
INSERT INTO `fabulous` VALUES (125, 157, '2018-10-03 23:09:08');
INSERT INTO `fabulous` VALUES (116, 159, '2018-10-12 13:09:59');
INSERT INTO `fabulous` VALUES (126, 158, '2018-10-03 22:08:26');
INSERT INTO `fabulous` VALUES (116, 153, '2018-10-12 13:10:07');
INSERT INTO `fabulous` VALUES (125, 155, '2018-10-03 21:19:03');
INSERT INTO `fabulous` VALUES (123, 155, '2018-09-21 18:13:02');
INSERT INTO `fabulous` VALUES (120, 153, '2018-09-19 19:33:04');
INSERT INTO `fabulous` VALUES (120, 150, '2018-09-18 11:06:14');
INSERT INTO `fabulous` VALUES (119, 151, '2018-09-15 11:48:29');
INSERT INTO `fabulous` VALUES (116, 140, '2018-09-01 15:09:28');
INSERT INTO `fabulous` VALUES (116, 139, '2018-09-01 15:09:24');
INSERT INTO `fabulous` VALUES (1, 137, '2018-09-01 14:28:45');
INSERT INTO `fabulous` VALUES (113, 138, '2018-09-01 13:39:24');

-- ----------------------------
-- Table structure for post
-- ----------------------------
DROP TABLE IF EXISTS `post`;
CREATE TABLE `post`  (
  `p_id` int(20) NOT NULL AUTO_INCREMENT,
  `u_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `u_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `p_date` datetime NOT NULL,
  `p_content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `p_like` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `p_transNum` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`p_id`) USING BTREE,
  INDEX `user_post`(`u_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 160 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of post
-- ----------------------------
INSERT INTO `post` VALUES (149, '乔布斯123', '111', '2018-09-01 15:40:47', '&#27784;&#22025;&#26607;&#32463;&#20856;&#21517;&#35328;&#65306;&#20320;&#25152;&#23637;&#29616;&#30340;&#65292;&#37117;&#26159;&#20320;&#30340;&#24773;&#36259;&#29233;&#22909;&#65292;&#38395;&#39321;&#12289;&#22352;&#31109;&#12289;&#29038;&#33756;&#12289;&#21548;&#29748;&#12289;&#35797;&#29577;&#12289;&#35835;&#32463;&#12289;&#21697;&#37202;&#12289;&#36175;&#26376;&hellip;&hellip;&#20182;&#20204;&#38656;&#35201;&#19968;&#20010;&#38386;&#25955;&#30340;&#20154;&#65292;&#38506;&#21516;&#20182;&#20204;&#29609;&#12290;&#20320;&#20204;&#21422;&#28151;&#30340;&#38750;&#24120;&#29087;&#65292;&#22312;&#39640;&#31471;&#22280;&#23376;&#37324;&#65292;&#20223;&#33509;&#22909;&#21451;&#12290;&#19968;&#20250;&#20799;&#20986;&#22269;&#28216;&#65292;&#19968;&#20250;&#20799;&#24320;&#32858;&#20250;&#12290;&#32780;&#26412;&#36136;&#19978;&#65292;&#20320;&#21644;&#20182;&#20204;&#30340;&#30456;&#22788;&#65292;&#26159;&#29609;&#20048;&#24615;&#36136;&#65292;&#20182;&#20204;&#24635;&#25226;&#20320;&#24403;&#25104;&#36305;&#33151;&#21150;&#20107;&#30340;&#12290;&#32780;&#19981;&#26159;&#24403;&#25104;&#30495;&#27491;&#30340;&#20249;&#20276;&#25110;&#21451;&#20154;&#12290;<br><br>&mdash;&mdash;&#27784;&#22025;&#26607;', 0, NULL);
INSERT INTO `post` VALUES (143, '福布斯', '113', '2018-09-01 15:31:49', '&#27809;&#26377;&#22312;&#28145;&#22812;&#30171;&#21741;&#36807;&#30340;&#20154;&#65292;&#19981;&#36275;&#20197;&#35848;&#20154;&#29983;&#12290;<br><br>&mdash;&mdash;&#25176;&#39532;&#26031;&middot;&#21345;&#33713;&#23572;', 0, NULL);
INSERT INTO `post` VALUES (148, '讨论大神', '112', '2018-09-01 15:36:24', '&#27849;&#28088;&#65292;&#40060;&#30456;&#19982;&#22788;&#20110;&#38470;&#65292;&#30456;&#21620;&#20197;&#28287;&#65292;&#30456;&#28641;&#20197;&#27819;&#65292;&#19981;&#22914;&#30456;&#24536;&#20110;&#27743;&#28246;&#65292;&#19982;&#20854;&#35465;&#23591;&#32780;&#38750;&#26688;&#20063;&#65292;&#19981;&#22914;&#20004;&#24536;&#32780;&#21270;&#20854;&#36947;&#12290;<br><br>&mdash;&mdash;&#24196;&#23376;', 0, NULL);
INSERT INTO `post` VALUES (150, '日记将军', '109', '2018-09-01 15:46:56', '&#19968;&#20010;&#23398;&#26657;&#21487;&#20197;&#20160;&#20040;&#37117;&#27809;&#26377;&#65292;&#20294;&#26159;&#21482;&#35201;&#26377;&#19968;&#20010;&#22270;&#20070;&#39302;&#65292;&#23601;&#21487;&#20197;&#31216;&#20043;&#20026;&#23398;&#26657;&#12290;<br><br>&mdash;&mdash;&#33487;&#38669;&#22982;&#26519;&#26031;&#22522;', 1, NULL);
INSERT INTO `post` VALUES (153, '知了', '120', '2018-09-18 11:06:04', '&#22256;', 2, NULL);
INSERT INTO `post` VALUES (155, '演示', '123', '2018-09-21 18:12:41', '&#22823;&#23478;&#22909;&#65292;&#25105;&#26159;&#28436;&#31034;&#20154;&#21592;', 2, NULL);
INSERT INTO `post` VALUES (156, '测试账号', '125', '2018-10-03 20:47:44', '&#36824;', 0, NULL);
INSERT INTO `post` VALUES (158, '羽飞', '126', '2018-10-03 22:08:24', '&#21695;&#21568;&#21695;&#21568;&#21727;', 1, NULL);
INSERT INTO `post` VALUES (159, '测试账号', '125', '2018-10-03 23:09:15', '&#21756;&#21756;&#21704;&#22079;', 2, NULL);

-- ----------------------------
-- Table structure for tomato
-- ----------------------------
DROP TABLE IF EXISTS `tomato`;
CREATE TABLE `tomato`  (
  `c_id` int(20) NOT NULL AUTO_INCREMENT,
  `c_start` datetime NOT NULL,
  `c_duration` int(11) NOT NULL,
  `c_end` datetime NULL DEFAULT NULL,
  `c_label` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `c_info` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `c_full` tinyint(1) NOT NULL DEFAULT 0 COMMENT '默认为完成，即值默认为1',
  `u_id` int(20) NOT NULL,
  PRIMARY KEY (`c_id`) USING BTREE,
  INDEX `user_tomato`(`u_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 711 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tomato
-- ----------------------------
INSERT INTO `tomato` VALUES (701, '2018-10-04 10:14:24', 60, '2018-10-04 10:15:36', '学习', '小黄', 1, 116);
INSERT INTO `tomato` VALUES (702, '2018-10-04 10:46:06', 1500, NULL, '学习', '', 0, 125);
INSERT INTO `tomato` VALUES (703, '2018-10-04 10:46:25', 60, '2018-10-04 10:47:27', '学习', '看书', 1, 125);
INSERT INTO `tomato` VALUES (704, '2018-10-04 21:54:17', 60, '2018-10-04 21:55:32', '学习', '吃', 1, 116);
INSERT INTO `tomato` VALUES (705, '2018-10-04 21:55:36', 1500, NULL, '学习', '', 0, 116);
INSERT INTO `tomato` VALUES (706, '2018-10-08 15:52:09', 2400, NULL, '学习', '', 0, 127);
INSERT INTO `tomato` VALUES (707, '2018-10-08 15:57:30', 60, '2018-10-08 15:58:32', '学习', '', 1, 127);
INSERT INTO `tomato` VALUES (708, '2018-10-10 13:36:16', 1500, NULL, '学习', '', 0, 110);
INSERT INTO `tomato` VALUES (709, '2018-10-10 15:45:57', 1500, NULL, '运动', '', 0, 110);
INSERT INTO `tomato` VALUES (710, '2018-10-12 19:47:49', 6000, NULL, '其他', 'KTV真嗨', 0, 116);
INSERT INTO `tomato` VALUES (700, '2018-10-04 09:44:19', 60, NULL, '学习', '历经啊', 0, 116);
INSERT INTO `tomato` VALUES (665, '2018-09-15 11:56:30', 60, '2018-09-15 11:57:43', '学习', 'zuowan', 1, 119);
INSERT INTO `tomato` VALUES (671, '2018-09-21 18:09:43', 60, '2018-09-21 18:10:44', '运动', '跑步', 1, 123);
INSERT INTO `tomato` VALUES (676, '2018-10-03 20:48:54', 60, '2018-10-03 20:50:41', '学习', '学习', 1, 125);
INSERT INTO `tomato` VALUES (680, '2018-10-03 21:57:44', 60, '2018-10-03 21:58:51', '学习', '1分钟测试', 1, 126);
INSERT INTO `tomato` VALUES (682, '2018-10-03 22:17:41', 6, '2018-10-03 22:17:48', '阅读', '生活真好', 1, 125);
INSERT INTO `tomato` VALUES (693, '2018-10-04 09:00:10', 6, '2018-10-04 09:00:16', '运动', '账单和日记，记得切换到本月哦', 1, 125);
INSERT INTO `tomato` VALUES (694, '2018-10-04 09:23:41', 20, '2018-10-04 09:24:20', '学习', '山东黄金', 1, 116);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `u_id` int(20) NOT NULL AUTO_INCREMENT,
  `u_password` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `u_tel` char(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `u_state` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `u_nick_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `u_time` datetime NOT NULL,
  `u_real_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `u_id_card` char(18) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `avator` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`u_id`) USING BTREE,
  UNIQUE INDEX `u_tel`(`u_tel`) USING BTREE,
  INDEX `u_nick_name`(`u_nick_name`) USING BTREE,
  INDEX `u_id_card`(`u_id_card`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 128 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (112, '123456', '15688888888', 'S', '讨论大神', '2018-09-01 09:13:11', '', '371427199902020022', 'http://120.78.86.45/avator/head4.jpg');
INSERT INTO `user` VALUES (109, '123456', '15622222222', 'S', '日记将军', '2018-09-01 09:08:49', '11', '371427199902020022', 'http://120.78.86.45/avator/head2.jpg');
INSERT INTO `user` VALUES (110, '1', '1', 'S', '测试人员', '2018-09-01 09:10:16', '11223', '371427199902020022', 'http://120.78.86.45/avator/head3.jpg');
INSERT INTO `user` VALUES (111, '123456', '15644444444', 'S', '乔布斯123', '2018-09-01 09:11:08', '1', '371724199902020022', 'http://120.78.86.45/avator/head2.jpg');
INSERT INTO `user` VALUES (113, '123456', '15699999999', 'S', '福布斯', '2018-09-01 09:13:56', '1', '371427199902020022', 'http://120.78.86.45/avator/head3.jpg');
INSERT INTO `user` VALUES (114, '123456', '15611111111', 'S', '测试用户', '2018-09-01 14:48:39', '测试用户', '371312199801456872', 'http://120.78.86.45/avator/head1.jpg');
INSERT INTO `user` VALUES (115, '123456', '15689929578', 'S', '老孙来也', '2018-09-01 15:02:01', '1', '37131219970319513X', 'http://120.78.86.45/avator/head3.jpg');
INSERT INTO `user` VALUES (116, '123456', '15689929571', 's', '番茄大王', '2018-09-01 15:02:22', '1', '37131219970319513X', 'http://120.78.86.45/avator/head3.jpg');
INSERT INTO `user` VALUES (117, 'jiangrunze', '13012459920', 'S', 'test', '2018-09-04 09:34:21', '蒋润泽', '370911199707154453', 'http://120.78.86.45/avator/head4.jpg');
INSERT INTO `user` VALUES (127, 'qwer11223344', '17811111111', 'S', '11', '2018-10-08 15:51:20', '张三', '370076199605243315', 'http://120.78.86.45/avator/head5.jpg');
INSERT INTO `user` VALUES (119, '123456', '18768143541', 'S', 'jkj', '2018-09-15 11:46:18', '蓝纪涔', '330821199206226017', 'http://120.78.86.45/avator/head2.jpg');
INSERT INTO `user` VALUES (120, 'bai725316', '15610486226', 'S', '知了', '2018-09-18 11:05:29', '白晨琪', '370911199510103628', 'http://120.78.86.45/avator/head5.jpg');
INSERT INTO `user` VALUES (121, 'JYFjyfJYF', '17854205857', 'S', '江左帆是猪', '2018-09-20 14:51:06', '江左帆', '431021199703100037', 'http://120.78.86.45/avator/head2.jpg');
INSERT INTO `user` VALUES (123, '123456', '17812345678', 'S', '演示', '2018-09-21 18:09:24', '演示', '320283200101011234', 'http://120.78.86.45/avator/head2.jpg');
INSERT INTO `user` VALUES (124, 'liyuan123', '15689929574', 'S', '里飞机', '2018-09-24 18:20:55', '李广源', '37131219970319513X', 'http://120.78.86.45/avator/head2.jpg');
INSERT INTO `user` VALUES (125, '123456', '18622487712', 'S', '测试账号', '2018-10-03 20:40:29', '测试', '371427199808081111', 'http://120.78.86.45/avator/head1.jpg');
INSERT INTO `user` VALUES (126, '123456', '17806219632', 'S', '羽飞', '2018-10-03 21:00:25', '董灵雨', '371421199807066561', 'http://120.78.86.45/avator/head2.jpg');

-- ----------------------------
-- Procedure structure for insert_post
-- ----------------------------
DROP PROCEDURE IF EXISTS `insert_post`;
delimiter ;;
CREATE PROCEDURE `insert_post`(`userId` int,`content` longtext)
BEGIN
	#Routine body goes here...
	DECLARE user_name VARCHAR(20);
	DECLARE id int(20);
	SELECT `user`.u_nick_name into user_name from user WHERE user.u_id = userId;
	insert into post(post.u_id,post.u_name,post.p_content,post.p_date) VALUES(userId,user_name,content,NOW());
	select LAST_INSERT_ID();
END
;;
delimiter ;

-- ----------------------------
-- Function structure for Interrupt_Clock
-- ----------------------------
DROP FUNCTION IF EXISTS `Interrupt_Clock`;
delimiter ;;
CREATE FUNCTION `Interrupt_Clock`(`c_id` int(20))
 RETURNS tinyint(4)
BEGIN
	#Routine body goes here...
	UPDATE tomato SET c_full=FALSE,c_end=NOW() WHERE tomato.c_id=c_id;
	RETURN TRUE;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for show_analysis
-- ----------------------------
DROP PROCEDURE IF EXISTS `show_analysis`;
delimiter ;;
CREATE PROCEDURE `show_analysis`(IN `u_id` int(20))
BEGIN
	#Routine body goes here...
	DECLARE totalClock INT(20);
	DECLARE totalDuration INT(20);
	DECLARE todayDuration INT(20);
	DECLARE todayClock INT(20);
	SELECT COUNT(*) INTO totalClock from tomato WHERE tomato.c_full=1 AND tomato.u_id=u_id;
	SELECT SUM(tomato.c_duration) into totalDuration FROM tomato WHERE tomato.c_full=1 and tomato.u_id=u_id;
	SELECT COUNT(*),SUM(tomato.c_duration) INTO todayClock,todayDuration FROM tomato WHERE DATEDIFF(tomato.c_start,NOW())=0 AND tomato.u_id=u_id AND tomato.c_full=1;
	SELECT totalClock,totalDuration,todayClock,todayDuration;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for show_analysis_clockList
-- ----------------------------
DROP PROCEDURE IF EXISTS `show_analysis_clockList`;
delimiter ;;
CREATE PROCEDURE `show_analysis_clockList`(in `u_id` int)
BEGIN
	#Routine body goes here...
	DECLARE totalDuration INT;
	SELECT SUM(c_duration) INTO totalDuration FROM tomato WHERE tomato.u_id=u_id AND tomato.c_full=1;
	Select tomato.c_label,SUM(tomato.c_duration)/totalDuration*100 from tomato WHERE tomato.u_id=u_id
	and c_full=1 GROUP BY c_label;
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table fabulous
-- ----------------------------
DROP TRIGGER IF EXISTS `like_insert`;
delimiter ;;
CREATE TRIGGER `like_insert` AFTER INSERT ON `fabulous` FOR EACH ROW update post set p_like=p_like+1 where new.f_post = post.p_id
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table fabulous
-- ----------------------------
DROP TRIGGER IF EXISTS `like_delete`;
delimiter ;;
CREATE TRIGGER `like_delete` BEFORE DELETE ON `fabulous` FOR EACH ROW update post set post.p_like=post.p_like-1 where old.f_post=post.p_id
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
