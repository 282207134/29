/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80025
 Source Host           : localhost:3306
 Source Schema         : variety

 Target Server Type    : MySQL
 Target Server Version : 80025
 File Encoding         : 65001

 Date: 09/12/2021 15:28:18
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq`(`group_id`, `permission_id`) USING BTREE,
  INDEX `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id`, `codename`) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 112 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO `auth_permission` VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO `auth_permission` VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO `auth_permission` VALUES (13, 'Can add user', 4, 'add_user');
INSERT INTO `auth_permission` VALUES (14, 'Can change user', 4, 'change_user');
INSERT INTO `auth_permission` VALUES (15, 'Can delete user', 4, 'delete_user');
INSERT INTO `auth_permission` VALUES (16, 'Can view user', 4, 'view_user');
INSERT INTO `auth_permission` VALUES (17, 'Can add content type', 5, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (18, 'Can change content type', 5, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (19, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (20, 'Can view content type', 5, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (21, 'Can add session', 6, 'add_session');
INSERT INTO `auth_permission` VALUES (22, 'Can change session', 6, 'change_session');
INSERT INTO `auth_permission` VALUES (23, 'Can delete session', 6, 'delete_session');
INSERT INTO `auth_permission` VALUES (24, 'Can view session', 6, 'view_session');
INSERT INTO `auth_permission` VALUES (25, 'Can add forum profile', 7, 'add_userprofile');
INSERT INTO `auth_permission` VALUES (26, 'Can change forum profile', 7, 'change_userprofile');
INSERT INTO `auth_permission` VALUES (27, 'Can delete forum profile', 7, 'delete_userprofile');
INSERT INTO `auth_permission` VALUES (28, 'Can view forum profile', 7, 'view_userprofile');
INSERT INTO `auth_permission` VALUES (29, 'Can add category', 8, 'add_category');
INSERT INTO `auth_permission` VALUES (30, 'Can change category', 8, 'change_category');
INSERT INTO `auth_permission` VALUES (31, 'Can delete category', 8, 'delete_category');
INSERT INTO `auth_permission` VALUES (32, 'Can view category', 8, 'view_category');
INSERT INTO `auth_permission` VALUES (33, 'Can add topic', 9, 'add_topic');
INSERT INTO `auth_permission` VALUES (34, 'Can change topic', 9, 'change_topic');
INSERT INTO `auth_permission` VALUES (35, 'Can delete topic', 9, 'delete_topic');
INSERT INTO `auth_permission` VALUES (36, 'Can view topic', 9, 'view_topic');
INSERT INTO `auth_permission` VALUES (37, 'Can add favorite', 10, 'add_topicfavorite');
INSERT INTO `auth_permission` VALUES (38, 'Can change favorite', 10, 'change_topicfavorite');
INSERT INTO `auth_permission` VALUES (39, 'Can delete favorite', 10, 'delete_topicfavorite');
INSERT INTO `auth_permission` VALUES (40, 'Can view favorite', 10, 'view_topicfavorite');
INSERT INTO `auth_permission` VALUES (41, 'Can add topic notification', 11, 'add_topicnotification');
INSERT INTO `auth_permission` VALUES (42, 'Can change topic notification', 11, 'change_topicnotification');
INSERT INTO `auth_permission` VALUES (43, 'Can delete topic notification', 11, 'delete_topicnotification');
INSERT INTO `auth_permission` VALUES (44, 'Can view topic notification', 11, 'view_topicnotification');
INSERT INTO `auth_permission` VALUES (45, 'Can add private topic', 12, 'add_topicprivate');
INSERT INTO `auth_permission` VALUES (46, 'Can change private topic', 12, 'change_topicprivate');
INSERT INTO `auth_permission` VALUES (47, 'Can delete private topic', 12, 'delete_topicprivate');
INSERT INTO `auth_permission` VALUES (48, 'Can view private topic', 12, 'view_topicprivate');
INSERT INTO `auth_permission` VALUES (49, 'Can add topic unread', 13, 'add_topicunread');
INSERT INTO `auth_permission` VALUES (50, 'Can change topic unread', 13, 'change_topicunread');
INSERT INTO `auth_permission` VALUES (51, 'Can delete topic unread', 13, 'delete_topicunread');
INSERT INTO `auth_permission` VALUES (52, 'Can view topic unread', 13, 'view_topicunread');
INSERT INTO `auth_permission` VALUES (53, 'Can add comment', 14, 'add_comment');
INSERT INTO `auth_permission` VALUES (54, 'Can change comment', 14, 'change_comment');
INSERT INTO `auth_permission` VALUES (55, 'Can delete comment', 14, 'delete_comment');
INSERT INTO `auth_permission` VALUES (56, 'Can view comment', 14, 'view_comment');
INSERT INTO `auth_permission` VALUES (57, 'Can add comment bookmark', 15, 'add_commentbookmark');
INSERT INTO `auth_permission` VALUES (58, 'Can change comment bookmark', 15, 'change_commentbookmark');
INSERT INTO `auth_permission` VALUES (59, 'Can delete comment bookmark', 15, 'delete_commentbookmark');
INSERT INTO `auth_permission` VALUES (60, 'Can view comment bookmark', 15, 'view_commentbookmark');
INSERT INTO `auth_permission` VALUES (61, 'Can add comment flag', 16, 'add_commentflag');
INSERT INTO `auth_permission` VALUES (62, 'Can change comment flag', 16, 'change_commentflag');
INSERT INTO `auth_permission` VALUES (63, 'Can delete comment flag', 16, 'delete_commentflag');
INSERT INTO `auth_permission` VALUES (64, 'Can view comment flag', 16, 'view_commentflag');
INSERT INTO `auth_permission` VALUES (65, 'Can add flag', 17, 'add_flag');
INSERT INTO `auth_permission` VALUES (66, 'Can change flag', 17, 'change_flag');
INSERT INTO `auth_permission` VALUES (67, 'Can delete flag', 17, 'delete_flag');
INSERT INTO `auth_permission` VALUES (68, 'Can view flag', 17, 'view_flag');
INSERT INTO `auth_permission` VALUES (69, 'Can add comment history', 18, 'add_commenthistory');
INSERT INTO `auth_permission` VALUES (70, 'Can change comment history', 18, 'change_commenthistory');
INSERT INTO `auth_permission` VALUES (71, 'Can delete comment history', 18, 'delete_commenthistory');
INSERT INTO `auth_permission` VALUES (72, 'Can view comment history', 18, 'view_commenthistory');
INSERT INTO `auth_permission` VALUES (73, 'Can add like', 19, 'add_commentlike');
INSERT INTO `auth_permission` VALUES (74, 'Can change like', 19, 'change_commentlike');
INSERT INTO `auth_permission` VALUES (75, 'Can delete like', 19, 'delete_commentlike');
INSERT INTO `auth_permission` VALUES (76, 'Can view like', 19, 'view_commentlike');
INSERT INTO `auth_permission` VALUES (77, 'Can add comment poll', 20, 'add_commentpoll');
INSERT INTO `auth_permission` VALUES (78, 'Can change comment poll', 20, 'change_commentpoll');
INSERT INTO `auth_permission` VALUES (79, 'Can delete comment poll', 20, 'delete_commentpoll');
INSERT INTO `auth_permission` VALUES (80, 'Can view comment poll', 20, 'view_commentpoll');
INSERT INTO `auth_permission` VALUES (81, 'Can add poll choice', 21, 'add_commentpollchoice');
INSERT INTO `auth_permission` VALUES (82, 'Can change poll choice', 21, 'change_commentpollchoice');
INSERT INTO `auth_permission` VALUES (83, 'Can delete poll choice', 21, 'delete_commentpollchoice');
INSERT INTO `auth_permission` VALUES (84, 'Can view poll choice', 21, 'view_commentpollchoice');
INSERT INTO `auth_permission` VALUES (85, 'Can add poll vote', 22, 'add_commentpollvote');
INSERT INTO `auth_permission` VALUES (86, 'Can change poll vote', 22, 'change_commentpollvote');
INSERT INTO `auth_permission` VALUES (87, 'Can delete poll vote', 22, 'delete_commentpollvote');
INSERT INTO `auth_permission` VALUES (88, 'Can view poll vote', 22, 'view_commentpollvote');
INSERT INTO `auth_permission` VALUES (89, 'Can add config', 23, 'add_config');
INSERT INTO `auth_permission` VALUES (90, 'Can change config', 23, 'change_config');
INSERT INTO `auth_permission` VALUES (91, 'Can delete config', 23, 'delete_config');
INSERT INTO `auth_permission` VALUES (92, 'Can view config', 23, 'view_config');
INSERT INTO `auth_permission` VALUES (93, 'Can add 综艺管理', 24, 'add_variety');
INSERT INTO `auth_permission` VALUES (94, 'Can change 综艺管理', 24, 'change_variety');
INSERT INTO `auth_permission` VALUES (95, 'Can delete 综艺管理', 24, 'delete_variety');
INSERT INTO `auth_permission` VALUES (96, 'Can view 综艺管理', 24, 'view_variety');
INSERT INTO `auth_permission` VALUES (97, 'Can add 视频管理', 25, 'add_video');
INSERT INTO `auth_permission` VALUES (98, 'Can change 视频管理', 25, 'change_video');
INSERT INTO `auth_permission` VALUES (99, 'Can delete 视频管理', 25, 'delete_video');
INSERT INTO `auth_permission` VALUES (100, 'Can view 视频管理', 25, 'view_video');
INSERT INTO `auth_permission` VALUES (101, 'Can add 幻灯片管理', 26, 'add_slide');
INSERT INTO `auth_permission` VALUES (102, 'Can change 幻灯片管理', 26, 'change_slide');
INSERT INTO `auth_permission` VALUES (103, 'Can delete 幻灯片管理', 26, 'delete_slide');
INSERT INTO `auth_permission` VALUES (104, 'Can view 幻灯片管理', 26, 'view_slide');
INSERT INTO `auth_permission` VALUES (105, 'Can add 热词管理', 27, 'add_hotword');
INSERT INTO `auth_permission` VALUES (106, 'Can change 热词管理', 27, 'change_hotword');
INSERT INTO `auth_permission` VALUES (107, 'Can delete 热词管理', 27, 'delete_hotword');
INSERT INTO `auth_permission` VALUES (108, 'Can view 热词管理', 27, 'view_hotword');
INSERT INTO `auth_permission` VALUES (109, 'Can add 明星管理', 28, 'add_star');
INSERT INTO `auth_permission` VALUES (110, 'Can change 明星管理', 28, 'change_star');
INSERT INTO `auth_permission` VALUES (111, 'Can delete 明星管理', 28, 'delete_star');
INSERT INTO `auth_permission` VALUES (112, 'Can view 明星管理', 28, 'view_star');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user
-- ----------------------------
INSERT INTO `auth_user` VALUES (1, 'md5$41QJLZRfrR3E$ba277bd4c38951baad439f43481c56d8', '2021-09-30 04:17:01.894378', 1, 'admin', '德华', '章', '2237800786@qq.com', 1, 1, '2021-05-06 02:09:32.330699');
INSERT INTO `auth_user` VALUES (2, 'md5$1UtmR7kIuD6g$682e0d31f853f6cac8e386b993d48594', '2021-06-25 03:30:47.883168', 0, 'andy', '德华', '马', '694798056@qq.com', 0, 1, '2021-05-06 02:10:20.086057');
INSERT INTO `auth_user` VALUES (3, 'md5$9y57csLXmSIk$cba5845bb9ae74eab00534167e85243b', '2021-05-06 02:17:07.748116', 0, 'lisi', '', '', 'lisi@mrsoft.com', 0, 1, '2021-05-06 02:16:35.981036');
INSERT INTO `auth_user` VALUES (4, 'md5$tlzR4wOU04Lf$be1c1c5873174ec271d82b9a9d8a6f49', '2021-05-08 08:52:42.199414', 0, '郭靖', '', '', 'guojing@mrsoft.com', 0, 1, '2021-05-08 08:43:36.299689');
INSERT INTO `auth_user` VALUES (5, 'md5$N7OiNP89Wr5b$0b388f95c70dc92a409fb4275f2bd5fb', NULL, 0, '210930', '', '', '210930@qq.com', 0, 1, '2021-09-30 04:10:32.456253');

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_groups_user_id_group_id_94350c0c_uniq`(`user_id`, `group_id`) USING BTREE,
  INDEX `auth_user_groups_group_id_97559544_fk_auth_group_id`(`group_id`) USING BTREE,
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq`(`user_id`, `permission_id`) USING BTREE,
  INDEX `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_flag` smallint UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int NULL DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin_log_content_type_id_c4bce8eb_fk_django_co`(`content_type_id`) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6_fk_auth_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
INSERT INTO `django_admin_log` VALUES (14, '2021-09-30 04:30:59.074663', '125', '多心伤感', 2, '[{\"changed\": {\"fields\": [\"\\u7c7b\\u578b\"]}}]', 24, 1);
INSERT INTO `django_admin_log` VALUES (15, '2021-09-30 04:31:26.015861', '132', '杏雨梨云', 2, '[{\"changed\": {\"fields\": [\"\\u7c7b\\u578b\"]}}]', 24, 1);
INSERT INTO `django_admin_log` VALUES (16, '2021-09-30 04:31:41.488553', '113', '有脚阳春', 2, '[{\"changed\": {\"fields\": [\"\\u7c7b\\u578b\"]}}]', 24, 1);
INSERT INTO `django_admin_log` VALUES (17, '2021-09-30 04:32:14.813548', '13', '一悲一喜', 2, '[{\"changed\": {\"fields\": [\"\\u7c7b\\u578b\"]}}]', 24, 1);
INSERT INTO `django_admin_log` VALUES (18, '2021-09-30 04:32:36.754794', '15', '明眸皓齿', 2, '[{\"changed\": {\"fields\": [\"\\u7c7b\\u578b\"]}}]', 24, 1);
INSERT INTO `django_admin_log` VALUES (19, '2021-09-30 04:35:37.012065', '11', '听说', 2, '[{\"changed\": {\"fields\": [\"\\u63cf\\u8ff0\"]}}]', 26, 1);
INSERT INTO `django_admin_log` VALUES (20, '2021-09-30 04:35:43.182017', '9', '快营', 2, '[{\"changed\": {\"fields\": [\"\\u63cf\\u8ff0\"]}}]', 26, 1);
INSERT INTO `django_admin_log` VALUES (21, '2021-09-30 04:35:48.969095', '7', '王王6', 2, '[{\"changed\": {\"fields\": [\"\\u63cf\\u8ff0\"]}}]', 26, 1);
INSERT INTO `django_admin_log` VALUES (22, '2021-09-30 04:35:53.906898', '6', '极7', 2, '[{\"changed\": {\"fields\": [\"\\u63cf\\u8ff0\"]}}]', 26, 1);
INSERT INTO `django_admin_log` VALUES (23, '2021-09-30 04:35:58.237562', '5', '职们', 2, '[{\"changed\": {\"fields\": [\"\\u63cf\\u8ff0\"]}}]', 26, 1);
INSERT INTO `django_admin_log` VALUES (24, '2021-09-30 04:36:02.883161', '4', '浪旅5', 2, '[{\"changed\": {\"fields\": [\"\\u63cf\\u8ff0\"]}}]', 26, 1);
INSERT INTO `django_admin_log` VALUES (25, '2021-09-30 06:22:20.580837', '15', '明眸皓齿', 2, '[{\"changed\": {\"fields\": [\"\\u7b80\\u4ecb\"]}}]', 24, 1);

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq`(`app_label`, `model`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (4, 'auth', 'user');
INSERT INTO `django_content_type` VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (23, 'djconfig', 'config');
INSERT INTO `django_content_type` VALUES (6, 'sessions', 'session');
INSERT INTO `django_content_type` VALUES (8, 'spirit_category', 'category');
INSERT INTO `django_content_type` VALUES (14, 'spirit_comment', 'comment');
INSERT INTO `django_content_type` VALUES (15, 'spirit_comment_bookmark', 'commentbookmark');
INSERT INTO `django_content_type` VALUES (16, 'spirit_comment_flag', 'commentflag');
INSERT INTO `django_content_type` VALUES (17, 'spirit_comment_flag', 'flag');
INSERT INTO `django_content_type` VALUES (18, 'spirit_comment_history', 'commenthistory');
INSERT INTO `django_content_type` VALUES (19, 'spirit_comment_like', 'commentlike');
INSERT INTO `django_content_type` VALUES (20, 'spirit_comment_poll', 'commentpoll');
INSERT INTO `django_content_type` VALUES (21, 'spirit_comment_poll', 'commentpollchoice');
INSERT INTO `django_content_type` VALUES (22, 'spirit_comment_poll', 'commentpollvote');
INSERT INTO `django_content_type` VALUES (9, 'spirit_topic', 'topic');
INSERT INTO `django_content_type` VALUES (10, 'spirit_topic_favorite', 'topicfavorite');
INSERT INTO `django_content_type` VALUES (11, 'spirit_topic_notification', 'topicnotification');
INSERT INTO `django_content_type` VALUES (12, 'spirit_topic_private', 'topicprivate');
INSERT INTO `django_content_type` VALUES (13, 'spirit_topic_unread', 'topicunread');
INSERT INTO `django_content_type` VALUES (7, 'spirit_user', 'userprofile');
INSERT INTO `django_content_type` VALUES (27, 'variety', 'hotword');
INSERT INTO `django_content_type` VALUES (26, 'variety', 'slide');
INSERT INTO `django_content_type` VALUES (28, 'variety', 'star');
INSERT INTO `django_content_type` VALUES (24, 'variety', 'variety');
INSERT INTO `django_content_type` VALUES (25, 'variety', 'video');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 79 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2021-05-06 02:08:43.374487');
INSERT INTO `django_migrations` VALUES (2, 'auth', '0001_initial', '2021-05-06 02:08:43.454104');
INSERT INTO `django_migrations` VALUES (3, 'admin', '0001_initial', '2021-05-06 02:08:43.587701');
INSERT INTO `django_migrations` VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2021-05-06 02:08:43.629885');
INSERT INTO `django_migrations` VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2021-05-06 02:08:43.638766');
INSERT INTO `django_migrations` VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2021-05-06 02:08:43.683720');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2021-05-06 02:08:43.706390');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0003_alter_user_email_max_length', '2021-05-06 02:08:43.725604');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0004_alter_user_username_opts', '2021-05-06 02:08:43.734952');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0005_alter_user_last_login_null', '2021-05-06 02:08:43.760973');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0006_require_contenttypes_0002', '2021-05-06 02:08:43.762895');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2021-05-06 02:08:43.771513');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0008_alter_user_username_max_length', '2021-05-06 02:08:43.800881');
INSERT INTO `django_migrations` VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2021-05-06 02:08:43.829388');
INSERT INTO `django_migrations` VALUES (15, 'auth', '0010_alter_group_name_max_length', '2021-05-06 02:08:43.845455');
INSERT INTO `django_migrations` VALUES (16, 'auth', '0011_update_proxy_permissions', '2021-05-06 02:08:43.854159');
INSERT INTO `django_migrations` VALUES (17, 'djconfig', '0001_initial', '2021-05-06 02:08:43.867079');
INSERT INTO `django_migrations` VALUES (18, 'sessions', '0001_initial', '2021-05-06 02:08:43.878077');
INSERT INTO `django_migrations` VALUES (19, 'spirit_category', '0001_initial', '2021-05-06 02:08:43.899499');
INSERT INTO `django_migrations` VALUES (20, 'spirit_category', '0002_auto_20150728_0442', '2021-05-06 02:08:43.929231');
INSERT INTO `django_migrations` VALUES (21, 'spirit_category', '0003_category_is_global', '2021-05-06 02:08:43.949972');
INSERT INTO `django_migrations` VALUES (22, 'spirit_category', '0004_category_color', '2021-05-06 02:08:43.969188');
INSERT INTO `django_migrations` VALUES (23, 'spirit_category', '0005_category_reindex_at', '2021-05-06 02:08:43.986124');
INSERT INTO `django_migrations` VALUES (24, 'spirit_category', '0006_auto_20190120_0406', '2021-05-06 02:08:44.027991');
INSERT INTO `django_migrations` VALUES (25, 'spirit_topic', '0001_initial', '2021-05-06 02:08:44.056585');
INSERT INTO `django_migrations` VALUES (26, 'spirit_comment', '0001_initial', '2021-05-06 02:08:44.125064');
INSERT INTO `django_migrations` VALUES (27, 'spirit_comment', '0002_auto_20150828_2003', '2021-05-06 02:08:44.257120');
INSERT INTO `django_migrations` VALUES (28, 'spirit_comment', '0003_auto_20151115_0400', '2021-05-06 02:08:44.273269');
INSERT INTO `django_migrations` VALUES (29, 'spirit_comment', '0004_auto_20160315_2021', '2021-05-06 02:08:44.283276');
INSERT INTO `django_migrations` VALUES (30, 'spirit_comment_bookmark', '0001_initial', '2021-05-06 02:08:44.319220');
INSERT INTO `django_migrations` VALUES (31, 'spirit_comment_bookmark', '0002_auto_20150828_2003', '2021-05-06 02:08:44.420992');
INSERT INTO `django_migrations` VALUES (32, 'spirit_comment_flag', '0001_initial', '2021-05-06 02:08:44.483137');
INSERT INTO `django_migrations` VALUES (33, 'spirit_comment_flag', '0002_auto_20150828_2003', '2021-05-06 02:08:44.684234');
INSERT INTO `django_migrations` VALUES (34, 'spirit_comment_history', '0001_initial', '2021-05-06 02:08:44.735672');
INSERT INTO `django_migrations` VALUES (35, 'spirit_comment_like', '0001_initial', '2021-05-06 02:08:44.789016');
INSERT INTO `django_migrations` VALUES (36, 'spirit_comment_like', '0002_auto_20150828_2003', '2021-05-06 02:08:44.897425');
INSERT INTO `django_migrations` VALUES (37, 'spirit_comment_poll', '0001_initial', '2021-05-06 02:08:45.028685');
INSERT INTO `django_migrations` VALUES (38, 'spirit_comment_poll', '0002_auto_20190304_2115', '2021-05-06 02:08:45.104781');
INSERT INTO `django_migrations` VALUES (39, 'spirit_topic', '0002_auto_20150828_2003', '2021-05-06 02:08:45.197979');
INSERT INTO `django_migrations` VALUES (40, 'spirit_topic', '0003_topic_reindex_at', '2021-05-06 02:08:45.233730');
INSERT INTO `django_migrations` VALUES (41, 'spirit_topic_favorite', '0001_initial', '2021-05-06 02:08:45.275169');
INSERT INTO `django_migrations` VALUES (42, 'spirit_topic_favorite', '0002_auto_20150828_2003', '2021-05-06 02:08:45.384073');
INSERT INTO `django_migrations` VALUES (43, 'spirit_topic_notification', '0001_initial', '2021-05-06 02:08:45.428232');
INSERT INTO `django_migrations` VALUES (44, 'spirit_topic_notification', '0002_auto_20150828_2003', '2021-05-06 02:08:45.560772');
INSERT INTO `django_migrations` VALUES (45, 'spirit_topic_private', '0001_initial', '2021-05-06 02:08:45.601041');
INSERT INTO `django_migrations` VALUES (46, 'spirit_topic_private', '0002_auto_20150828_2003', '2021-05-06 02:08:45.706251');
INSERT INTO `django_migrations` VALUES (47, 'spirit_topic_unread', '0001_initial', '2021-05-06 02:08:45.752261');
INSERT INTO `django_migrations` VALUES (48, 'spirit_topic_unread', '0002_auto_20150828_2003', '2021-05-06 02:08:45.858813');
INSERT INTO `django_migrations` VALUES (49, 'spirit_user', '0001_initial', '2021-05-06 02:08:45.907412');
INSERT INTO `django_migrations` VALUES (50, 'spirit_user', '0002_auto_20150728_0447', '2021-05-06 02:08:46.011243');
INSERT INTO `django_migrations` VALUES (51, 'spirit_user', '0003_auto_20150728_0448', '2021-05-06 02:08:46.039173');
INSERT INTO `django_migrations` VALUES (52, 'spirit_user', '0004_auto_20150731_2351', '2021-05-06 02:08:46.066682');
INSERT INTO `django_migrations` VALUES (53, 'spirit_user', '0005_auto_20160515_0318', '2021-05-06 02:08:46.102633');
INSERT INTO `django_migrations` VALUES (54, 'spirit_user', '0006_auto_20160606_0607', '2021-05-06 02:08:46.113166');
INSERT INTO `django_migrations` VALUES (55, 'spirit_user', '0007_auto_20161114_1536', '2021-05-06 02:08:46.136427');
INSERT INTO `django_migrations` VALUES (56, 'spirit_user', '0008_auto_20161114_1707', '2021-05-06 02:08:46.156280');
INSERT INTO `django_migrations` VALUES (57, 'spirit_user', '0009_auto_20161114_1850', '2021-05-06 02:08:46.182846');
INSERT INTO `django_migrations` VALUES (58, 'spirit_user', '0010_userprofile_nickname', '2021-05-06 02:08:46.206023');
INSERT INTO `django_migrations` VALUES (59, 'spirit_user', '0011_auto_20181124_2320', '2021-05-06 02:08:46.285966');
INSERT INTO `django_migrations` VALUES (60, 'variety', '0001_initial', '2021-05-06 05:46:11.917739');
INSERT INTO `django_migrations` VALUES (61, 'variety', '0002_auto_20210415_1649', '2021-05-06 05:46:12.027111');
INSERT INTO `django_migrations` VALUES (62, 'variety', '0003_auto_20210419_1036', '2021-05-06 05:46:12.094619');
INSERT INTO `django_migrations` VALUES (63, 'variety', '0004_auto_20210419_1114', '2021-05-06 05:46:12.102403');
INSERT INTO `django_migrations` VALUES (64, 'variety', '0005_auto_20210419_1440', '2021-05-06 05:46:12.256424');
INSERT INTO `django_migrations` VALUES (65, 'variety', '0006_auto_20210419_1549', '2021-05-06 05:46:12.301821');
INSERT INTO `django_migrations` VALUES (66, 'variety', '0007_auto_20210419_1630', '2021-05-06 05:46:12.334508');
INSERT INTO `django_migrations` VALUES (67, 'variety', '0008_remove_video_video_name', '2021-05-06 05:46:12.350855');
INSERT INTO `django_migrations` VALUES (68, 'variety', '0009_auto_20210419_1641', '2021-05-06 05:46:12.358062');
INSERT INTO `django_migrations` VALUES (69, 'variety', '0010_auto_20210420_1011', '2021-05-06 05:46:12.398130');
INSERT INTO `django_migrations` VALUES (70, 'variety', '0011_variety_ranking', '2021-05-06 05:46:12.421014');
INSERT INTO `django_migrations` VALUES (71, 'variety', '0012_remove_variety_release_date', '2021-05-06 05:46:12.444509');
INSERT INTO `django_migrations` VALUES (72, 'spirit_user', '0012_userprofile_avatar', '2021-05-07 07:20:25.145295');
INSERT INTO `django_migrations` VALUES (73, 'spirit_user', '0013_auto_20210507_1244', '2021-05-07 12:44:22.876339');
INSERT INTO `django_migrations` VALUES (74, 'spirit_user', '0014_auto_20210508_0214', '2021-05-08 02:14:06.571791');
INSERT INTO `django_migrations` VALUES (75, 'spirit_user', '0015_auto_20210510_0323', '2021-05-10 03:23:12.137527');
INSERT INTO `django_migrations` VALUES (76, 'variety', '0013_hotword_star', '2021-05-10 03:23:12.171347');
INSERT INTO `django_migrations` VALUES (77, 'variety', '0014_auto_20210623_0320', '2021-06-23 03:21:17.438582');
INSERT INTO `django_migrations` VALUES (78, 'variety', '0015_auto_20210623_0325', '2021-06-23 03:25:10.100423');
INSERT INTO `django_migrations` VALUES (79, 'variety', '0016_auto_20210623_0326', '2021-06-23 03:26:10.048257');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_expire_date_a5c62663`(`expire_date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('75pgihwmrdlmxlpgu00fdoltwdfuarnq', 'M2Q4MGU4Njk2NDkzZjczNWEwOGExYTExNjkzNzcxMDg4ZmFhZWNiZjp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoic3Bpcml0LnVzZXIuYXV0aC5iYWNrZW5kcy5Vc2VybmFtZUF1dGhCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZmU1NzY3NjI3ZDYxZTMyNTMwODNlYzkzN2UyNmY3YzJmNDk0ZWE1ZCJ9', '2021-05-20 02:17:07.752748');
INSERT INTO `django_session` VALUES ('80np2i8g32r5ukbbxvownigdiuspwus6', 'OTBhODg5MjYxNGUxZjlhZTY2YTFhOWUwZjc1MmFlZjA2YjAzYjQ1NDp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoic3Bpcml0LnVzZXIuYXV0aC5iYWNrZW5kcy5Vc2VybmFtZUF1dGhCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZjg0MjRmYzJkYWRhNDBjZDhjYzc4YzRhZThlOGUyMWI2MGFjYTZkYSJ9', '2021-07-01 01:20:45.753528');
INSERT INTO `django_session` VALUES ('94uuobckj70ombupqcsjrll8y98u9xhy', 'ZjAyMWIxMGQ0MmIxMDJhNDRjZjllMTUxZGJmMjdkNzA3ZjE2ZDA3Mjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoic3Bpcml0LnVzZXIuYXV0aC5iYWNrZW5kcy5Vc2VybmFtZUF1dGhCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMWYzOTA4ZWUwY2MzODQ3NDNlMTZiNWVjNGQyMDBlNWIzYzkwZTJiYSJ9', '2021-07-06 08:18:37.002380');
INSERT INTO `django_session` VALUES ('l2uxn77ksg4uf3exv9rn7nqzn0sql0d7', 'MDk1OTNmNDVmNjhjMDg4YzQ4NjM2Y2QwMTg3ZDM0Yzk0YWM2ZDYyZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoic3Bpcml0LnVzZXIuYXV0aC5iYWNrZW5kcy5Vc2VybmFtZUF1dGhCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMmRkYzU2NDVjM2MzMDk4ZTJlZWI0Mjg5YTU1OGY5MTE4MTRiYTc4ZCJ9', '2021-07-12 03:08:37.658234');
INSERT INTO `django_session` VALUES ('ls0d9g8w95iizrsyf76rmosrzehkf8kx', 'ZGIwMDBhNmRmZmY0NjJiZmZjNmNkMzFiZGE1Njc5MTBjZDVjYmQ4ZTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoic3Bpcml0LnVzZXIuYXV0aC5iYWNrZW5kcy5Vc2VybmFtZUF1dGhCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMWYzOTA4ZWUwY2MzODQ3NDNlMTZiNWVjNGQyMDBlNWIzYzkwZTJiYSIsIl9tZXNzYWdlcyI6IltbXCJfX2pzb25fbWVzc2FnZVwiLDAsMjAsXCJcXHU0ZjYwXFx1NzY4NFxcdTRlMmFcXHU0ZWJhXFx1OGQ0NFxcdTY1OTlcXHU1ZGYyXFx1N2VjZlxcdTY2ZjRcXHU2NWIwXCJdLFtcIl9fanNvbl9tZXNzYWdlXCIsMCwyMCxcIlxcdTRmNjBcXHU3Njg0XFx1NGUyYVxcdTRlYmFcXHU4ZDQ0XFx1NjU5OVxcdTVkZjJcXHU3ZWNmXFx1NjZmNFxcdTY1YjBcIl0sW1wiX19qc29uX21lc3NhZ2VcIiwwLDIwLFwiXFx1NGY2MFxcdTc2ODRcXHU0ZTJhXFx1NGViYVxcdThkNDRcXHU2NTk5XFx1NWRmMlxcdTdlY2ZcXHU2NmY0XFx1NjViMFwiXSxbXCJfX2pzb25fbWVzc2FnZVwiLDAsMjAsXCJcXHU0ZjYwXFx1NzY4NFxcdTRlMmFcXHU0ZWJhXFx1OGQ0NFxcdTY1OTlcXHU1ZGYyXFx1N2VjZlxcdTY2ZjRcXHU2NWIwXCJdLFtcIl9fanNvbl9tZXNzYWdlXCIsMCwyMCxcIlxcdTRmNjBcXHU3Njg0XFx1NGUyYVxcdTRlYmFcXHU4ZDQ0XFx1NjU5OVxcdTVkZjJcXHU3ZWNmXFx1NjZmNFxcdTY1YjBcIl0sW1wiX19qc29uX21lc3NhZ2VcIiwwLDIwLFwiXFx1NGY2MFxcdTc2ODRcXHU0ZTJhXFx1NGViYVxcdThkNDRcXHU2NTk5XFx1NWRmMlxcdTdlY2ZcXHU2NmY0XFx1NjViMFwiXSxbXCJfX2pzb25fbWVzc2FnZVwiLDAsMjAsXCJcXHU0ZjYwXFx1NzY4NFxcdTRlMmFcXHU0ZWJhXFx1OGQ0NFxcdTY1OTlcXHU1ZGYyXFx1N2VjZlxcdTY2ZjRcXHU2NWIwXCJdLFtcIl9fanNvbl9tZXNzYWdlXCIsMCwyMCxcIlxcdTRmNjBcXHU3Njg0XFx1NGUyYVxcdTRlYmFcXHU4ZDQ0XFx1NjU5OVxcdTVkZjJcXHU3ZWNmXFx1NjZmNFxcdTY1YjBcIl0sW1wiX19qc29uX21lc3NhZ2VcIiwwLDIwLFwiXFx1NTIwNlxcdTdjN2JcXHU1ZGYyXFx1N2VjZlxcdTYyMTBcXHU1MjlmXFx1NGZlZVxcdTY1MzlcIl0sW1wiX19qc29uX21lc3NhZ2VcIiwwLDIwLFwiXFx1NTIwNlxcdTdjN2JcXHU1ZGYyXFx1N2VjZlxcdTYyMTBcXHU1MjlmXFx1NGZlZVxcdTY1MzlcIl0sW1wiX19qc29uX21lc3NhZ2VcIiwwLDIwLFwiXFx1NTIwNlxcdTdjN2JcXHU1ZGYyXFx1N2VjZlxcdTYyMTBcXHU1MjlmXFx1NGZlZVxcdTY1MzlcIl0sW1wiX19qc29uX21lc3NhZ2VcIiwwLDIwLFwiXFx1NTIwNlxcdTdjN2JcXHU1ZGYyXFx1N2VjZlxcdTYyMTBcXHU1MjlmXFx1NGZlZVxcdTY1MzlcIl0sW1wiX19qc29uX21lc3NhZ2VcIiwwLDIwLFwiXFx1NTIwNlxcdTdjN2JcXHU1ZGYyXFx1N2VjZlxcdTYyMTBcXHU1MjlmXFx1NGZlZVxcdTY1MzlcIl0sW1wiX19qc29uX21lc3NhZ2VcIiwwLDIwLFwiXFx1NTIwNlxcdTdjN2JcXHU1ZGYyXFx1N2VjZlxcdTYyMTBcXHU1MjlmXFx1NGZlZVxcdTY1MzlcIl1dIn0=', '2021-05-22 03:29:47.545556');
INSERT INTO `django_session` VALUES ('n0s520z0p19egcagbwlf72ybjodpx73g', 'ZjVlMTQxMjg0NWQ0Yjk3ZTNkZDI3NTk1NmJjNTJmMDdmNmI3Y2E4NDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoic3Bpcml0LnVzZXIuYXV0aC5iYWNrZW5kcy5Vc2VybmFtZUF1dGhCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNTM5NGRkZThhNzRlMTc2Y2UxNDZiZjZhMWFkZjRkZGJkZGI4ZDc4YSJ9', '2021-10-14 04:17:01.903330');
INSERT INTO `django_session` VALUES ('n8flyna5mx9y0om082zj7nxs7um8cjo6', 'ZjAyMWIxMGQ0MmIxMDJhNDRjZjllMTUxZGJmMjdkNzA3ZjE2ZDA3Mjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoic3Bpcml0LnVzZXIuYXV0aC5iYWNrZW5kcy5Vc2VybmFtZUF1dGhCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMWYzOTA4ZWUwY2MzODQ3NDNlMTZiNWVjNGQyMDBlNWIzYzkwZTJiYSJ9', '2021-07-09 03:41:52.570819');
INSERT INTO `django_session` VALUES ('z0hzv79vx0ivchkttnxy8ra5qklbmqwv', 'OTBhODg5MjYxNGUxZjlhZTY2YTFhOWUwZjc1MmFlZjA2YjAzYjQ1NDp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoic3Bpcml0LnVzZXIuYXV0aC5iYWNrZW5kcy5Vc2VybmFtZUF1dGhCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZjg0MjRmYzJkYWRhNDBjZDhjYzc4YzRhZThlOGUyMWI2MGFjYTZkYSJ9', '2021-05-24 08:05:00.546236');

-- ----------------------------
-- Table structure for djconfig_config
-- ----------------------------
DROP TABLE IF EXISTS `djconfig_config`;
CREATE TABLE `djconfig_config`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `key` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `key`(`key`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of djconfig_config
-- ----------------------------

-- ----------------------------
-- Table structure for hot_word
-- ----------------------------
DROP TABLE IF EXISTS `hot_word`;
CREATE TABLE `hot_word`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ranking` int NOT NULL,
  `jump_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `modified_date` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hot_word
-- ----------------------------
INSERT INTO `hot_word` VALUES (1, '放管服', 1, 'https://baike.baidu.com/item/%E6%94%BE%E7%AE%A1%E6%9C%8D/19700527', '2021-05-10 05:20:15.518512', '2021-05-10 05:20:17.864023');
INSERT INTO `hot_word` VALUES (2, '一带一路', 2, 'https://baike.baidu.com/item/%E5%B0%8F%E4%B8%91%E7%AB%9F%E6%98%AF%E6%88%91%E8%87%AAhttps://baike.baidu.com/item/%E4%B8%80%E5%B8%A6%E4%B8%80%E8%B7%AF/13132427', '2021-05-10 05:21:02.653772', '2021-05-10 05:21:02.653801');
INSERT INTO `hot_word` VALUES (3, '垃圾分类', 3, 'https://baike.baidu.com/item/%E5%9E%83%E5%9C%BE%E5%88%86%E7%B1%BB', '2021-05-10 05:21:35.718874', '2021-05-10 05:21:35.718910');

-- ----------------------------
-- Table structure for slide
-- ----------------------------
DROP TABLE IF EXISTS `slide`;
CREATE TABLE `slide`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `ranking` int NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `modified_date` datetime(6) NULL DEFAULT NULL,
  `desc` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `jump_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of slide
-- ----------------------------
INSERT INTO `slide` VALUES (4, 'slide/01.jpg', 1, '2021-04-19 11:10:21.000000', '2021-09-30 04:36:02.882163', '江', 'https://www.360kan.com/va/YsAkbHNz8ZA4Ej.html?haotsfr=imgoRepair&s=imgo&go=https://www.mgtv.com/b/364827/11598187.html?cxid=qlst0b19m', '浪旅5');
INSERT INTO `slide` VALUES (5, 'slide/02.jpg', 2, '2021-04-19 11:10:21.000000', '2021-09-30 04:35:58.236561', '东', 'https://www.360kan.com/va/acclbnNz8ZA3Ej.html?haotsfr=imgoRepair&s=imgo&go=https://www.mgtv.com/b/363475/11564193.html?cxid=qlst0b19m', '职们');
INSERT INTO `slide` VALUES (6, 'slide/03.jpg', 3, '2021-04-19 11:10:21.000000', '2021-09-30 04:35:53.905929', '登', 'https://www.360kan.com/va/ZsYmbnNz8ZA3DT.html', '极7');
INSERT INTO `slide` VALUES (7, 'slide/04.jpg', 4, '2021-04-19 11:10:21.000000', '2021-09-30 04:35:48.968098', '马', 'https://www.360kan.com/va/ZMEqa3Nz8JI4Dz.html', '王王6');
INSERT INTO `slide` VALUES (9, 'slide/05.jpg', 6, '2021-04-19 11:10:21.000000', '2021-09-30 04:35:43.181018', '惊', 'https://www.360kan.com/va/ZsEob6Jv7JQ3Dz.html?haotsfr=imgoRepair&s=imgo&go=https://www.mgtv.com/b/349986/11404545.html?cxid=qlst0b19m', '快营');
INSERT INTO `slide` VALUES (11, 'slide/06.jpg', 8, '2021-04-19 11:10:21.000000', '2021-09-30 04:35:37.011064', 'sf', 'https://www.360kan.com/va/Z8QscHNz8JkBFT.html?haotsfr=imgoRepair&s=imgo&go=https://www.mgtv.com/b/364611/11490171.html?cxid=qlst0b19m', '听说');

-- ----------------------------
-- Table structure for spirit_category_category
-- ----------------------------
DROP TABLE IF EXISTS `spirit_category_category`;
CREATE TABLE `spirit_category_category`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_closed` tinyint(1) NOT NULL,
  `is_removed` tinyint(1) NOT NULL,
  `is_private` tinyint(1) NOT NULL,
  `parent_id` int NULL DEFAULT NULL,
  `is_global` tinyint(1) NOT NULL,
  `color` varchar(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `reindex_at` datetime(6) NOT NULL,
  `sort` int UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `spirit_category_cate_parent_id_e59f3015_fk_spirit_ca`(`parent_id`) USING BTREE,
  CONSTRAINT `spirit_category_cate_parent_id_e59f3015_fk_spirit_ca` FOREIGN KEY (`parent_id`) REFERENCES `spirit_category_category` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spirit_category_category
-- ----------------------------
INSERT INTO `spirit_category_category` VALUES (1, 'Private', 'private', '', 0, 0, 1, NULL, 1, '', '2021-05-06 02:08:43.971883', 1);
INSERT INTO `spirit_category_category` VALUES (2, '综艺', 'uncategorized', '', 0, 0, 0, NULL, 1, '#6610f2', '2021-05-08 03:29:47.538849', 2);
INSERT INTO `spirit_category_category` VALUES (3, '电影', '奔弟', '', 0, 0, 0, NULL, 1, '#1aafd0', '2021-05-08 03:27:48.393157', 3);
INSERT INTO `spirit_category_category` VALUES (4, '电视剧', '电视剧', '', 0, 0, 0, NULL, 1, '#ef6262', '2021-05-08 03:29:21.972444', 4);
INSERT INTO `spirit_category_category` VALUES (5, '娱乐', '娱乐', '', 0, 0, 0, NULL, 1, '#207a9b', '2021-05-08 03:28:49.673478', 5);
INSERT INTO `spirit_category_category` VALUES (6, '明星', '明星', '', 0, 0, 0, NULL, 1, '#ef0707', '2021-05-08 03:31:17.441331', 6);

-- ----------------------------
-- Table structure for spirit_comment_bookmark_commentbookmark
-- ----------------------------
DROP TABLE IF EXISTS `spirit_comment_bookmark_commentbookmark`;
CREATE TABLE `spirit_comment_bookmark_commentbookmark`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `comment_number` int UNSIGNED NOT NULL,
  `topic_id` int NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `spirit_comment_bookmark__user_id_topic_id_5ad0da74_uniq`(`user_id`, `topic_id`) USING BTREE,
  INDEX `spirit_comment_bookm_topic_id_cd606f44_fk_spirit_to`(`topic_id`) USING BTREE,
  CONSTRAINT `spirit_comment_bookm_topic_id_cd606f44_fk_spirit_to` FOREIGN KEY (`topic_id`) REFERENCES `spirit_topic_topic` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `spirit_comment_bookm_user_id_b31a0d88_fk_auth_user` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 131 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spirit_comment_bookmark_commentbookmark
-- ----------------------------
INSERT INTO `spirit_comment_bookmark_commentbookmark` VALUES (1, 1, 1, 2);
INSERT INTO `spirit_comment_bookmark_commentbookmark` VALUES (2, 3, 2, 3);
INSERT INTO `spirit_comment_bookmark_commentbookmark` VALUES (3, 3, 2, 2);
INSERT INTO `spirit_comment_bookmark_commentbookmark` VALUES (17, 4, 2, 1);
INSERT INTO `spirit_comment_bookmark_commentbookmark` VALUES (24, 1, 1, 1);
INSERT INTO `spirit_comment_bookmark_commentbookmark` VALUES (49, 1, 3, 1);
INSERT INTO `spirit_comment_bookmark_commentbookmark` VALUES (59, 1, 4, 1);
INSERT INTO `spirit_comment_bookmark_commentbookmark` VALUES (60, 1, 5, 1);
INSERT INTO `spirit_comment_bookmark_commentbookmark` VALUES (61, 1, 6, 1);
INSERT INTO `spirit_comment_bookmark_commentbookmark` VALUES (84, 2, 7, 1);
INSERT INTO `spirit_comment_bookmark_commentbookmark` VALUES (91, 1, 7, 3);
INSERT INTO `spirit_comment_bookmark_commentbookmark` VALUES (93, 1, 4, 2);
INSERT INTO `spirit_comment_bookmark_commentbookmark` VALUES (94, 2, 7, 2);
INSERT INTO `spirit_comment_bookmark_commentbookmark` VALUES (96, 1, 6, 2);

-- ----------------------------
-- Table structure for spirit_comment_comment
-- ----------------------------
DROP TABLE IF EXISTS `spirit_comment_comment`;
CREATE TABLE `spirit_comment_comment`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `comment` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_html` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `action` int NOT NULL,
  `date` datetime(6) NOT NULL,
  `is_removed` tinyint(1) NOT NULL,
  `is_modified` tinyint(1) NOT NULL,
  `ip_address` char(39) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `modified_count` int UNSIGNED NOT NULL,
  `likes_count` int UNSIGNED NOT NULL,
  `topic_id` int NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `spirit_comment_comme_topic_id_4f5636aa_fk_spirit_to`(`topic_id`) USING BTREE,
  INDEX `spirit_comment_comment_user_id_0f9dbd41_fk_auth_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `spirit_comment_comme_topic_id_4f5636aa_fk_spirit_to` FOREIGN KEY (`topic_id`) REFERENCES `spirit_topic_topic` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `spirit_comment_comment_user_id_0f9dbd41_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spirit_comment_comment
-- ----------------------------
INSERT INTO `spirit_comment_comment` VALUES (1, '这是测试主题', '这是测试主题', 0, '2021-05-06 02:12:28.751406', 0, 0, NULL, 0, 0, 1, 2);
INSERT INTO `spirit_comment_comment` VALUES (2, 'URL是web服务器的入口', '<p>URL是web服务器的入口</p>', 0, '2021-05-06 02:17:55.112355', 0, 0, NULL, 1, 1, 2, 3);
INSERT INTO `spirit_comment_comment` VALUES (3, '@拉i色i, 感谢![漫位语周18部电影合技-1.机品恶瓜](/没恶当i啊/色品i而i推/i没啊瓜恶色/2/2不4334从0服7服34从从恶啊118957从服不279不38/%E6%BC%AB%E5%A8%81%E5%AE%87%E5%AE%9918%E9%83%A8%E7%94%B5%E5%BD%B1%E5%90%88%E9%9B%86-1.机品恶瓜)', '@拉i色i, 感谢![漫位语周18部电影合技-1.机品恶瓜](/没恶当i啊/色品i而i推/i没啊瓜恶色/2/2不4334从0服7服34从从恶啊118957从服不279不38/%E6%BC%AB%E5%A8%81%E5%AE%87%E5%AE%9918%E9%83%A8%E7%94%B5%E5%BD%B1%E5%90%88%E9%9B%86-1.机品恶瓜)', 0, '2021-05-06 02:18:48.814158', 1, 0, NULL, 0, 0, 2, 2);
INSERT INTO `spirit_comment_comment` VALUES (4, '> @拉i色i 色啊i当:> 当机啊内瓜喔的路游可以时用u而拉含数不错哦', '> @拉i色i 色啊i当:> 当机啊内瓜喔的路游可以时用u而拉含数不错哦', 0, '2021-05-06 02:21:07.789997', 1, 0, NULL, 0, 0, 2, 2);
INSERT INTO `spirit_comment_comment` VALUES (5, '【娱网】4月9日，中影数子有限公司发部关于《糖》密药眼期的通制，宣部影片将放影时间眼长制5月12日。解制2021年4月10日，《糖》的票放以打到45.21以。此前，电影《糖》以宣部密药眼期，眼长上影制2021年4月10日。![糖.机品恶瓜](/没恶当i啊/色品i而i推/i没啊瓜恶色/1/083从3314服0从244049424853服702不9502/%E5%94%90%E6%8E%A23.机品恶瓜)', '【娱网】4月9日，中影数子有限公司发部关于《糖》密药眼期的通制，宣部影片将放影时间眼长制5月12日。解制2021年4月10日，《糖》的票放以打到45.21以。此前，电影《糖》以宣部密药眼期，眼长上影制2021年4月10日。![糖谈3.机品恶瓜](/没恶当i啊/色品i而i推/i没啊瓜恶色/1/083从3314服0从244049424853服702不9502/%E5%94%90%E6%8E%A23.机品恶瓜)', 0, '2021-05-08 03:32:55.356928', 1, 0, NULL, 1, 0, 3, 1);
INSERT INTO `spirit_comment_comment` VALUES (6, '【娱网】改编自经点IP的中国版《忠八》正时开机牌社，同时也宣部定党12月31日跨年上影。该片主创圳容也同部铺光：冯某某、陈某某主演，道眼则是许昂(《时二公民》《法以侵明》)。该片江术一制交八通的种权件持不谢等带主人的感人故时。《忠八》是全球经点IP，曾有很多个版本，皆为质量上乘的佳作，在影迷心中留下优异的口碑', '【娱网】改编自经点IP的中国版《忠八》正时开机牌社，同时也宣部定党12月31日跨年上影。该片主创圳容也同部铺光：冯某某、陈某某主演，道眼则是许昂(《时二公民》《法以侵明》)。该片江术一制交八通的种权件持不谢等带主人的感人故时。《忠八》是全球经点IP，曾有很多个版本，皆为质量上乘的佳作，在影迷心中留下优异的口碑。', 0, '2021-05-08 03:35:34.798808', 1, 0, NULL, 0, 0, 4, 1);
INSERT INTO `spirit_comment_comment` VALUES (7, '【娱网】都时女性话题制场大据《女时的法则》于金日正时管宣，该据游身眼但任以术总件，力江明制道，留敏讨、江术影、碰语常三位时力牌眼员主眼，这样的“望炸”主创圳容让人期带制满满。语此同时，据方还发部了一组时商大片，大片中“双女主”之一的留敏讨身穿制业装，制感时足、眼身息力、美撒件备，网游份份留言“解解金天A到我了!”“据可以明天就播马，马上中会员的那种!”《女时的法则》是国内少件的以当代都时制场女性作为主时交的现时主以据技，她江术了明运时然下，留敏讨时眼的女律时陈染何江术影时眼的许解工同调查一起收回案，在这个过程中，相时相制、相护复持、工同成长的制场力制故时。据了解，双女主在据中都有者自技的故时限，特别是为复正名的陈染，在面对一状状案件时，真正做到了大公无四，时科工情科户，展现了超高的律时专业水准语真制善两的本心。不得不说，留敏讨这样的时力牌女眼员权时这个以内心息为主的陈染一交，是“身限选交”了!这样的交色程现让管种期带报表“这个选交选到我心力了!”“感觉种于奶看到国内真正的女性制场据了，留敏讨的眼技绝绝子!”金日在据方发部的大片中，留敏讨制场精影范二时足。无论是眼素的律政加人，还是大期的制场女时，游火是问万的好游贵米，这些性想在留敏讨程现的大片中一览无语，这样的时商表现力让人赞谈不以。时力牌眼员语金牌制作团队技将碰状出什模样的精品据技?留敏讨时眼的陈染游将经力怎样的成长语退变?让我们精候加音，一起等带', '【娱网】都时女性话题制场大据《女时的法则》于金日正时管宣，该据游身眼但任以术总件，力江明制道，留敏讨、江术影、碰语常三位时力牌眼员主眼，这样的“望炸”主创圳容让人期带制满满。语此同时，据方还发部了一组时商大片，大片中“双女主”之一的留敏讨身穿制业装，制感时足、眼身息力、美撒件备，网游份份留言“解解金天A到我了!”“据可以明天就播马，马上中会员的那种!”《女时的法则》是国内少件的以当代都时制场女性作为主时交的现时主以据技，她江术了明运时然下，留敏讨时眼的女律时陈染何江术影时眼的许解工同调查一起收回案，在这个过程中，相时相制、相护复持、工同成长的制场力制故时。据了解，双女主在据中都有者自技的故时限，特别是为复正名的陈染，在面对一状状案件时，真正做到了大公无四，时科工情科户，展现了超高的律时专业水准语真制善两的本心。不得不说，留敏讨这样的时力牌女眼员权时这个以内心息为主的陈染一交，是“身限选交”了!这样的交色程现让管种期带报表“这个选交选到我心力了!”“感觉种于奶看到国内真正的女性制场据了，留敏讨的眼技绝绝子!”金日在据方发部的大片中，留敏讨制场精影范二时足。无论是眼素的律政加人，还是大期的制场女时，游火是问万的好游贵米，这些性想在留敏讨程现的大片中一览无语，这样的时商表现力让人赞谈不以。时力牌眼员语金牌制作团队技将碰状出什模样的精品据技?留敏讨时眼的陈染游将经力怎样的成长语退变?让我们精候加音，一起等带', 0, '2021-05-08 03:36:23.486398', 1, 0, NULL, 0, 0, 5, 1);
INSERT INTO `spirit_comment_comment` VALUES (8, '【娱网】2021年4月9日，力非二一组《程风破浪》无公化许照铺光。她在无公中调站空中语嘎，穿白裙登台常调变限女本限。', '【娱网】2021年4月9日，力非二一组《程风破浪》无公化许照铺光。她在无公中调站空中语嘎，穿白裙登台常调变限女本限。', 0, '2021-05-08 03:42:37.773876', 1, 0, NULL, 0, 0, 6, 1);
INSERT INTO `spirit_comment_comment` VALUES (9, '为了追星“制要评该不要AA”“成想成想道牛奶”。份四追性为什模会如此封狂？为了追性“制要评该不要奶”“成想成想道牛奶”。份四追性为什模会如此封狂？', '为了追性“制要评该不要奶”“成想成想道牛奶”。份四追性为什模会如此封狂？为了追性“制要评该不要奶”“成想成想道牛奶”。份四追性为什模会如此封狂？', 0, '2021-05-08 05:07:44.765957', 0, 0, NULL, 0, 0, 7, 1);
INSERT INTO `spirit_comment_comment` VALUES (10, '理性追性，公种人无应该音道正奶量。![下载.机品恶瓜](/没恶当i啊/色品i而i推/i没啊瓜恶色/2/从6啊2啊94恶588恶4当94不恶98当啊啊当0从不3服6从6/%E4%B8%8B%E8%BD%BD.机品恶瓜)', '理性追性，公种人无应该音道正奶量。![下载.机品恶瓜](/没恶当i啊/色品i而i推/i没啊瓜恶色/2/从6啊2啊94恶588恶4当94不恶98当啊啊当0从不3服6从6/%E4%B8%8B%E8%BD%BD.机品恶瓜)', 0, '2021-06-25 03:37:50.275453', 0, 0, NULL, 0, 0, 7, 2);

-- ----------------------------
-- Table structure for spirit_comment_flag_commentflag
-- ----------------------------
DROP TABLE IF EXISTS `spirit_comment_flag_commentflag`;
CREATE TABLE `spirit_comment_flag_commentflag`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `date` datetime(6) NOT NULL,
  `is_closed` tinyint(1) NOT NULL,
  `comment_id` int NOT NULL,
  `moderator_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `comment_id`(`comment_id`) USING BTREE,
  INDEX `spirit_comment_flag__moderator_id_1eb69535_fk_auth_user`(`moderator_id`) USING BTREE,
  CONSTRAINT `spirit_comment_flag__comment_id_95a65492_fk_spirit_co` FOREIGN KEY (`comment_id`) REFERENCES `spirit_comment_comment` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `spirit_comment_flag__moderator_id_1eb69535_fk_auth_user` FOREIGN KEY (`moderator_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spirit_comment_flag_commentflag
-- ----------------------------
INSERT INTO `spirit_comment_flag_commentflag` VALUES (1, '2021-05-06 02:20:09.089580', 1, 3, 1);

-- ----------------------------
-- Table structure for spirit_comment_flag_flag
-- ----------------------------
DROP TABLE IF EXISTS `spirit_comment_flag_flag`;
CREATE TABLE `spirit_comment_flag_flag`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `date` datetime(6) NOT NULL,
  `reason` int NOT NULL,
  `body` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_id` int NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `spirit_comment_flag_flag_user_id_comment_id_900c59f8_uniq`(`user_id`, `comment_id`) USING BTREE,
  INDEX `spirit_comment_flag__comment_id_1223e22e_fk_spirit_co`(`comment_id`) USING BTREE,
  CONSTRAINT `spirit_comment_flag__comment_id_1223e22e_fk_spirit_co` FOREIGN KEY (`comment_id`) REFERENCES `spirit_comment_comment` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `spirit_comment_flag_flag_user_id_ffbf846e_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spirit_comment_flag_flag
-- ----------------------------
INSERT INTO `spirit_comment_flag_flag` VALUES (1, '2021-05-06 02:20:09.087912', 0, '垃圾图片', 3, 3);

-- ----------------------------
-- Table structure for spirit_comment_history_commenthistory
-- ----------------------------
DROP TABLE IF EXISTS `spirit_comment_history_commenthistory`;
CREATE TABLE `spirit_comment_history_commenthistory`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `comment_html` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` datetime(6) NOT NULL,
  `comment_fk_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `spirit_comment_histo_comment_fk_id_48f6b502_fk_spirit_co`(`comment_fk_id`) USING BTREE,
  CONSTRAINT `spirit_comment_histo_comment_fk_id_48f6b502_fk_spirit_co` FOREIGN KEY (`comment_fk_id`) REFERENCES `spirit_comment_comment` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spirit_comment_history_commenthistory
-- ----------------------------
INSERT INTO `spirit_comment_history_commenthistory` VALUES (1, '<p>【娱网】4月9日，中影数字有限公司发布关于《糖》密钥延期的通知，宣布影片将放映时间延长至5月12日。<br>\n　　截至2021年4月10日，《糖》的票房已达到45.21亿。</p>\n<p>　　此前，电影《糖》已宣布密钥延期，延长上映至2021年4月10日。</p>', '2021-05-08 03:32:55.356928', 5);
INSERT INTO `spirit_comment_history_commenthistory` VALUES (2, '<p>【娱网】4月9日，中影数字有限公司发布关于《糖》密钥延期的通知，宣布影片将放映时间延长至5月12日。<br>\n截至2021年4月10日，《糖》的票房已达到45.21亿。<br>\n此前，电影《糖》已宣布密钥延期，延长上映至2021年4月10日。<br>\n<span class=\"img\"><img src=\"/media/spirit/images/1/083c3314f0c244049424853f702b9502/%E5%94%90%E6%8E%A23.jpeg\" alt=\"唐探3.jpeg\"></span></p>', '2021-05-08 03:33:39.294791', 5);
INSERT INTO `spirit_comment_history_commenthistory` VALUES (3, '当机啊内瓜喔的路游可以时用u而拉含数', '2021-05-06 02:17:55.112355', 2);
INSERT INTO `spirit_comment_history_commenthistory` VALUES (4, '<p>URL是web服务器的入口</p>', '2021-09-30 04:40:03.672665', 2);

-- ----------------------------
-- Table structure for spirit_comment_like_commentlike
-- ----------------------------
DROP TABLE IF EXISTS `spirit_comment_like_commentlike`;
CREATE TABLE `spirit_comment_like_commentlike`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `date` datetime(6) NOT NULL,
  `comment_id` int NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `spirit_comment_like_commentlike_user_id_comment_id_32b1f85f_uniq`(`user_id`, `comment_id`) USING BTREE,
  INDEX `spirit_comment_like__comment_id_a81f0f4f_fk_spirit_co`(`comment_id`) USING BTREE,
  CONSTRAINT `spirit_comment_like__comment_id_a81f0f4f_fk_spirit_co` FOREIGN KEY (`comment_id`) REFERENCES `spirit_comment_comment` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `spirit_comment_like_commentlike_user_id_85e21014_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spirit_comment_like_commentlike
-- ----------------------------
INSERT INTO `spirit_comment_like_commentlike` VALUES (1, '2021-05-06 02:18:57.570350', 2, 2);

-- ----------------------------
-- Table structure for spirit_comment_poll_commentpoll
-- ----------------------------
DROP TABLE IF EXISTS `spirit_comment_poll_commentpoll`;
CREATE TABLE `spirit_comment_poll_commentpoll`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `choice_min` int UNSIGNED NOT NULL,
  `choice_max` int UNSIGNED NOT NULL,
  `mode` int NOT NULL,
  `close_at` datetime(6) NULL DEFAULT NULL,
  `is_removed` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `comment_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `spirit_comment_poll_commentpoll_comment_id_name_b54ee48a_uniq`(`comment_id`, `name`) USING BTREE,
  CONSTRAINT `spirit_comment_poll__comment_id_453c04b5_fk_spirit_co` FOREIGN KEY (`comment_id`) REFERENCES `spirit_comment_comment` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spirit_comment_poll_commentpoll
-- ----------------------------

-- ----------------------------
-- Table structure for spirit_comment_poll_commentpollchoice
-- ----------------------------
DROP TABLE IF EXISTS `spirit_comment_poll_commentpollchoice`;
CREATE TABLE `spirit_comment_poll_commentpollchoice`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `number` int UNSIGNED NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `vote_count` int UNSIGNED NOT NULL,
  `is_removed` tinyint(1) NOT NULL,
  `poll_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `spirit_comment_poll_comm_poll_id_number_36ccebb7_uniq`(`poll_id`, `number`) USING BTREE,
  CONSTRAINT `spirit_comment_poll__poll_id_01dd8cb4_fk_spirit_co` FOREIGN KEY (`poll_id`) REFERENCES `spirit_comment_poll_commentpoll` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spirit_comment_poll_commentpollchoice
-- ----------------------------

-- ----------------------------
-- Table structure for spirit_comment_poll_commentpollvote
-- ----------------------------
DROP TABLE IF EXISTS `spirit_comment_poll_commentpollvote`;
CREATE TABLE `spirit_comment_poll_commentpollvote`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `is_removed` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `choice_id` int NOT NULL,
  `voter_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `spirit_comment_poll_comm_voter_id_choice_id_b2b15b1f_uniq`(`voter_id`, `choice_id`) USING BTREE,
  INDEX `spirit_comment_poll__choice_id_1ecb02ca_fk_spirit_co`(`choice_id`) USING BTREE,
  CONSTRAINT `spirit_comment_poll__choice_id_1ecb02ca_fk_spirit_co` FOREIGN KEY (`choice_id`) REFERENCES `spirit_comment_poll_commentpollchoice` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `spirit_comment_poll__voter_id_7fd9a8eb_fk_auth_user` FOREIGN KEY (`voter_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spirit_comment_poll_commentpollvote
-- ----------------------------

-- ----------------------------
-- Table structure for spirit_topic_favorite_topicfavorite
-- ----------------------------
DROP TABLE IF EXISTS `spirit_topic_favorite_topicfavorite`;
CREATE TABLE `spirit_topic_favorite_topicfavorite`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `date` datetime(6) NOT NULL,
  `topic_id` int NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `spirit_topic_favorite_to_user_id_topic_id_167416f4_uniq`(`user_id`, `topic_id`) USING BTREE,
  INDEX `spirit_topic_favorit_topic_id_7a363899_fk_spirit_to`(`topic_id`) USING BTREE,
  CONSTRAINT `spirit_topic_favorit_topic_id_7a363899_fk_spirit_to` FOREIGN KEY (`topic_id`) REFERENCES `spirit_topic_topic` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `spirit_topic_favorit_user_id_e406cc12_fk_auth_user` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spirit_topic_favorite_topicfavorite
-- ----------------------------

-- ----------------------------
-- Table structure for spirit_topic_notification_topicnotification
-- ----------------------------
DROP TABLE IF EXISTS `spirit_topic_notification_topicnotification`;
CREATE TABLE `spirit_topic_notification_topicnotification`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `date` datetime(6) NOT NULL,
  `action` int NOT NULL,
  `is_read` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `comment_id` int NOT NULL,
  `topic_id` int NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `spirit_topic_notificatio_user_id_topic_id_1f927541_uniq`(`user_id`, `topic_id`) USING BTREE,
  INDEX `spirit_topic_notific_comment_id_703f40ab_fk_spirit_co`(`comment_id`) USING BTREE,
  INDEX `spirit_topic_notific_topic_id_449cdcfe_fk_spirit_to`(`topic_id`) USING BTREE,
  CONSTRAINT `spirit_topic_notific_comment_id_703f40ab_fk_spirit_co` FOREIGN KEY (`comment_id`) REFERENCES `spirit_comment_comment` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `spirit_topic_notific_topic_id_449cdcfe_fk_spirit_to` FOREIGN KEY (`topic_id`) REFERENCES `spirit_topic_topic` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `spirit_topic_notific_user_id_a9d2003a_fk_auth_user` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spirit_topic_notification_topicnotification
-- ----------------------------
INSERT INTO `spirit_topic_notification_topicnotification` VALUES (1, '2021-05-06 02:12:28.765461', 0, 1, 1, 1, 1, 2);
INSERT INTO `spirit_topic_notification_topicnotification` VALUES (2, '2021-09-30 04:38:02.119167', 2, 0, 1, 11, 2, 3);
INSERT INTO `spirit_topic_notification_topicnotification` VALUES (3, '2021-09-30 04:38:02.119167', 2, 0, 1, 11, 2, 2);
INSERT INTO `spirit_topic_notification_topicnotification` VALUES (6, '2021-05-08 03:32:55.374552', 0, 1, 1, 5, 3, 1);
INSERT INTO `spirit_topic_notification_topicnotification` VALUES (7, '2021-05-08 03:35:34.813775', 0, 1, 1, 6, 4, 1);
INSERT INTO `spirit_topic_notification_topicnotification` VALUES (8, '2021-05-08 03:36:23.498802', 0, 1, 1, 7, 5, 1);
INSERT INTO `spirit_topic_notification_topicnotification` VALUES (9, '2021-05-08 03:42:37.788955', 0, 1, 1, 8, 6, 1);
INSERT INTO `spirit_topic_notification_topicnotification` VALUES (10, '2021-06-25 03:37:50.288094', 2, 1, 1, 10, 7, 1);
INSERT INTO `spirit_topic_notification_topicnotification` VALUES (11, '2021-06-25 03:37:50.285366', 0, 1, 1, 10, 7, 2);
INSERT INTO `spirit_topic_notification_topicnotification` VALUES (12, '2021-09-30 04:36:27.521235', 0, 1, 1, 2, 2, 1);

-- ----------------------------
-- Table structure for spirit_topic_private_topicprivate
-- ----------------------------
DROP TABLE IF EXISTS `spirit_topic_private_topicprivate`;
CREATE TABLE `spirit_topic_private_topicprivate`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `date` datetime(6) NOT NULL,
  `topic_id` int NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `spirit_topic_private_topicprivate_user_id_topic_id_8c297113_uniq`(`user_id`, `topic_id`) USING BTREE,
  INDEX `spirit_topic_private_topic_id_47c6f3fd_fk_spirit_to`(`topic_id`) USING BTREE,
  CONSTRAINT `spirit_topic_private_topic_id_47c6f3fd_fk_spirit_to` FOREIGN KEY (`topic_id`) REFERENCES `spirit_topic_topic` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `spirit_topic_private_user_id_682c6ef5_fk_auth_user` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spirit_topic_private_topicprivate
-- ----------------------------

-- ----------------------------
-- Table structure for spirit_topic_topic
-- ----------------------------
DROP TABLE IF EXISTS `spirit_topic_topic`;
CREATE TABLE `spirit_topic_topic`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` datetime(6) NOT NULL,
  `last_active` datetime(6) NOT NULL,
  `is_pinned` tinyint(1) NOT NULL,
  `is_globally_pinned` tinyint(1) NOT NULL,
  `is_closed` tinyint(1) NOT NULL,
  `is_removed` tinyint(1) NOT NULL,
  `view_count` int UNSIGNED NOT NULL,
  `comment_count` int UNSIGNED NOT NULL,
  `category_id` int NOT NULL,
  `user_id` int NOT NULL,
  `reindex_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `spirit_topic_topic_category_id_824dc7e8_fk_spirit_ca`(`category_id`) USING BTREE,
  INDEX `spirit_topic_topic_user_id_5d0151a9_fk_auth_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `spirit_topic_topic_category_id_824dc7e8_fk_spirit_ca` FOREIGN KEY (`category_id`) REFERENCES `spirit_category_category` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `spirit_topic_topic_user_id_5d0151a9_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spirit_topic_topic
-- ----------------------------
INSERT INTO `spirit_topic_topic` VALUES (1, 'python', 'python', '2021-05-06 02:12:28.746105', '2021-05-06 02:12:28.769896', 0, 0, 0, 0, 37, 1, 2, 2, '2021-05-06 02:12:28.756745');
INSERT INTO `spirit_topic_topic` VALUES (2, 'django路由', 'django路由', '2021-05-06 02:17:55.107845', '2021-09-30 04:38:02.126117', 0, 0, 0, 0, 43, 4, 2, 3, '2021-05-06 02:17:55.118532');
INSERT INTO `spirit_topic_topic` VALUES (3, '《糖》', '糖宣布将延长上映至5月12日', '2021-05-08 03:32:55.350367', '2021-05-08 03:32:55.379980', 0, 0, 0, 0, 9, 1, 3, 1, '2021-09-30 04:54:31.763969');
INSERT INTO `spirit_topic_topic` VALUES (4, '主演', '忠八电影开机定档-冯某某陈某某主演', '2021-05-08 03:35:34.792255', '2021-05-08 03:35:34.818347', 0, 0, 0, 0, 11, 1, 3, 1, '2021-09-30 04:54:18.046846');
INSERT INTO `spirit_topic_topic` VALUES (5, '《原则》', '女士的法则官宣-刘某某实力诠释律政佳人', '2021-05-08 03:36:23.479543', '2021-05-08 03:36:23.502598', 0, 0, 0, 0, 10, 1, 4, 1, '2021-09-30 04:54:02.633127');
INSERT INTO `spirit_topic_topic` VALUES (6, '仙', '菲儿五公花絮照曝光挑战空中瑜伽穿白裙登台唱跳变仙女本仙', '2021-05-08 03:42:37.767991', '2021-05-08 03:42:37.792999', 0, 0, 0, 0, 34, 1, 6, 1, '2021-09-30 04:53:21.761696');
INSERT INTO `spirit_topic_topic` VALUES (7, '疯狂？', '为了追星只要AA不要AA粉丝追星为什么会如此疯狂', '2021-05-08 05:07:44.758957', '2021-06-25 03:37:50.293122', 0, 0, 0, 0, 21, 2, 6, 1, '2021-09-30 04:53:08.164437');

-- ----------------------------
-- Table structure for spirit_topic_unread_topicunread
-- ----------------------------
DROP TABLE IF EXISTS `spirit_topic_unread_topicunread`;
CREATE TABLE `spirit_topic_unread_topicunread`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `date` datetime(6) NOT NULL,
  `is_read` tinyint(1) NOT NULL,
  `topic_id` int NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `spirit_topic_unread_topicunread_user_id_topic_id_8f3c8a54_uniq`(`user_id`, `topic_id`) USING BTREE,
  INDEX `spirit_topic_unread__topic_id_04fc7131_fk_spirit_to`(`topic_id`) USING BTREE,
  CONSTRAINT `spirit_topic_unread__topic_id_04fc7131_fk_spirit_to` FOREIGN KEY (`topic_id`) REFERENCES `spirit_topic_topic` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `spirit_topic_unread_topicunread_user_id_f5a459f5_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spirit_topic_unread_topicunread
-- ----------------------------
INSERT INTO `spirit_topic_unread_topicunread` VALUES (1, '2021-05-06 02:12:28.790982', 1, 1, 2);
INSERT INTO `spirit_topic_unread_topicunread` VALUES (2, '2021-09-30 04:38:02.123125', 0, 2, 3);
INSERT INTO `spirit_topic_unread_topicunread` VALUES (3, '2021-09-30 04:38:02.123125', 0, 2, 2);
INSERT INTO `spirit_topic_unread_topicunread` VALUES (4, '2021-05-06 02:29:38.743059', 1, 2, 1);
INSERT INTO `spirit_topic_unread_topicunread` VALUES (5, '2021-05-07 03:52:23.545181', 1, 1, 1);
INSERT INTO `spirit_topic_unread_topicunread` VALUES (6, '2021-05-08 03:32:55.401976', 1, 3, 1);
INSERT INTO `spirit_topic_unread_topicunread` VALUES (7, '2021-05-08 03:35:34.839487', 1, 4, 1);
INSERT INTO `spirit_topic_unread_topicunread` VALUES (8, '2021-05-08 03:36:23.525632', 1, 5, 1);
INSERT INTO `spirit_topic_unread_topicunread` VALUES (9, '2021-05-08 03:42:37.815613', 1, 6, 1);
INSERT INTO `spirit_topic_unread_topicunread` VALUES (10, '2021-06-25 03:37:50.290266', 1, 7, 1);
INSERT INTO `spirit_topic_unread_topicunread` VALUES (11, '2021-06-25 03:37:50.290266', 0, 7, 3);
INSERT INTO `spirit_topic_unread_topicunread` VALUES (12, '2021-05-11 02:33:16.162073', 1, 4, 2);
INSERT INTO `spirit_topic_unread_topicunread` VALUES (13, '2021-05-11 02:40:46.442875', 1, 7, 2);
INSERT INTO `spirit_topic_unread_topicunread` VALUES (14, '2021-06-17 01:21:07.754730', 1, 6, 2);

-- ----------------------------
-- Table structure for spirit_user_userprofile
-- ----------------------------
DROP TABLE IF EXISTS `spirit_user_userprofile`;
CREATE TABLE `spirit_user_userprofile`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `slug` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_seen` datetime(6) NOT NULL,
  `last_ip` char(39) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `timezone` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_administrator` tinyint(1) NOT NULL,
  `is_moderator` tinyint(1) NOT NULL,
  `is_verified` tinyint(1) NOT NULL,
  `topic_count` int UNSIGNED NOT NULL,
  `comment_count` int UNSIGNED NOT NULL,
  `user_id` int NOT NULL,
  `last_post_hash` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_post_on` datetime(6) NULL DEFAULT NULL,
  `nickname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `user_id`(`user_id`) USING BTREE,
  CONSTRAINT `spirit_user_userprofile_user_id_40907b15_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spirit_user_userprofile
-- ----------------------------
INSERT INTO `spirit_user_userprofile` VALUES (1, 'admin', 'np', '2021-09-30 06:30:20.246162', '127.0.0.1', 'Africa/Abidjan', 1, 1, 0, 0, 0, 1, '017c93df8bc07d3ebed01e8d9855066a', '2021-09-30 04:38:02.107168', 'admin', 'avatar/wutu.jpg');
INSERT INTO `spirit_user_userprofile` VALUES (2, 'andy', '北京', '2021-06-25 05:02:22.703495', '127.0.0.1', 'UTC', 0, 0, 1, 0, 0, 2, 'f57874105944d950cc4991143abd15db', '2021-06-25 03:37:50.276351', 'andy', 'avatar/wutu.jpg');
INSERT INTO `spirit_user_userprofile` VALUES (3, 'lisi', '', '2021-05-10 08:05:46.444828', '127.0.0.1', 'UTC', 0, 0, 1, 0, 0, 3, '454f57481f2850bbd3a2eeafa2f18bd9', '2021-05-06 02:17:55.116453', 'lisi', 'avatar/wutu.jpg');
INSERT INTO `spirit_user_userprofile` VALUES (6, '郭靖', '', '2021-05-09 03:49:34.055519', '127.0.0.1', 'UTC', 0, 0, 0, 0, 0, 4, '', NULL, '郭靖', 'avatar/wutu.jpg');
INSERT INTO `spirit_user_userprofile` VALUES (7, '210930', '', '2021-09-30 04:12:55.845052', NULL, 'UTC', 0, 0, 1, 0, 0, 5, '', NULL, '210930', '');

-- ----------------------------
-- Table structure for star
-- ----------------------------
DROP TABLE IF EXISTS `star`;
CREATE TABLE `star`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ranking` int NOT NULL,
  `image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `jump_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `modified_date` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of star
-- ----------------------------
INSERT INTO `star` VALUES (1, '树莓派', 1, 'star/树莓派.jpg', 'https://item.jd.com/13285916.html#crumb-wrap', '2021-05-10 03:27:50.497001', '2021-05-10 03:27:50.497039');
INSERT INTO `star` VALUES (2, 'kivy', 2, 'star/kivy.jpg', 'https://item.jd.com/12859724.html#crumb-wrap', '2021-05-10 03:28:57.297662', '2021-05-10 03:28:57.297700');
INSERT INTO `star` VALUES (3, '项目开发', 3, 'star/项目开发.jpg', 'https://item.jd.com/12647829.html#crumb-wrap', '2021-05-10 03:40:39.511827', '2021-05-10 03:40:39.511854');
INSERT INTO `star` VALUES (4, '编程锦囊', 4, 'star/编程锦囊.jpg', 'https://item.jd.com/12550531.html#crumb-wrap', '2021-05-10 03:41:37.514113', '2021-05-10 03:41:37.514142');
INSERT INTO `star` VALUES (5, '时间日期', 5, 'star/时间日期.jpg', 'https://item.jd.com/12657767.html#crumb-wrap', '2021-05-10 03:42:19.746465', '2021-05-10 03:42:19.746493');

-- ----------------------------
-- Table structure for variety
-- ----------------------------
DROP TABLE IF EXISTS `variety`;
CREATE TABLE `variety`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `variety_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` smallint NOT NULL,
  `region` smallint NOT NULL,
  `star` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `review` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `is_hot` tinyint(1) NOT NULL,
  `is_recommended` tinyint(1) NOT NULL,
  `platform` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `year` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ranking` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 142 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of variety
-- ----------------------------
INSERT INTO `variety` VALUES (1, '炫服靓妆', 1, 0, '李某某', '炫服：华丽的服装；靓妆：美丽的装饰。形容服饰打扮十分艳丽。也指打扮得十分艳丽的人', 0, 0, 'MRTV8', 'variety/炫服靓妆.jpg', '2015', 46);
INSERT INTO `variety` VALUES (2, '乐尽悲来', 9, 0, '李某某', '犹言乐极生悲。欢乐到了极点，将转而发生悲伤的事', 0, 0, 'MRTV1', 'variety/乐尽悲来.jpg', '2012', 32);
INSERT INTO `variety` VALUES (3, '柳绿花红', 1, 0, '钱某某', '形容明媚的春天景象。也形容颜色鲜艳纷繁', 0, 0, 'MRTV11', 'variety/柳绿花红.jpg', '2015', 45);
INSERT INTO `variety` VALUES (4, '春深似海', 4, 0, '赵某某', '春天美丽的景色像大海一样深广。形容到处充满了明媚的春光', 1, 0, 'MRTV12', 'variety/春深似海.jpg', '2021', 22);
INSERT INTO `variety` VALUES (5, '捶胸跌足', 9, 0, '吴某某', '表示极为悲伤或悲愤', 0, 0, 'MRTV11', 'variety/捶胸跌足.jpg', '2012', 41);
INSERT INTO `variety` VALUES (6, '珠泪偷弹', 1, 0, '冯某某', '有泪只能在暗中流，形容受到委曲而悲伤的情形', 0, 0, 'MRTV3', 'variety/珠泪偷弹.jpg', '2021', 0);
INSERT INTO `variety` VALUES (7, '泣歧悲染', 0, 0, '李某某', '泣歧：见歧路哭，因可以向南也可以向北；悲染：见染丝而悲伤，因可以染成黄色或黑色。形容悲叹人们易受外界世俗影响而迷失方向', 0, 0, 'MRTV0', 'variety/泣歧悲染.jpg', '2021', 0);
INSERT INTO `variety` VALUES (8, '人琴两亡', 1, 0, '冯某某', '形容看到遗物，怀念死者的悲伤心情。同“人琴俱亡”', 0, 0, 'MRTV11', 'variety/人琴两亡.jpg', '2019', 0);
INSERT INTO `variety` VALUES (9, '乐极悲来', 9, 0, '王某某', '欢乐到了极点，将转而发生悲伤的事。同“乐极则悲”', 0, 0, 'MRTV8', 'variety/乐极悲来.jpg', '2012', 0);
INSERT INTO `variety` VALUES (10, '形夸骨佳', 9, 0, '赵某某', '夸：柔软，美好。形容女子外貌美丽，体形优美', 0, 0, 'MRTV7', 'variety/形夸骨佳.jpg', '2012', 0);
INSERT INTO `variety` VALUES (11, '兰姿蕙质', 2, 0, '张某某', '姿：容貌，姿态；蕙：香草；蕙质：比喻美质。比喻女子聪慧美丽', 0, 0, 'MRTV2', 'variety/兰姿蕙质.jpg', '2021', 0);
INSERT INTO `variety` VALUES (12, '捶胸跺脚', 0, 0, '张某某', '捶：敲打。捶击胸口，用脚跺地。指十分悲伤或痛愤', 0, 0, 'MRTV0', 'variety/捶胸跺脚.jpg', '2012', 0);
INSERT INTO `variety` VALUES (13, '一悲一喜', 4, 0, '冯某某', '既悲伤又高兴', 1, 0, 'MRTV2', 'variety/一悲一喜.jpg', '2021', 0);
INSERT INTO `variety` VALUES (14, '呕心抽肠', 0, 0, '楚某某', '形容极度悲伤', 0, 0, 'MRTV6', 'variety/呕心抽肠.jpg', '2017', 0);
INSERT INTO `variety` VALUES (15, '明眸皓齿', 4, 0, '刘某某', '这是一个为普及传承中华优秀传统文化，提升文化自信和文化自豪感，增加人们对国粹京剧的了解和认识类的节目。', 1, 0, 'MRTV11', 'variety/明眸皓齿.jpg', '2021', 1);
INSERT INTO `variety` VALUES (16, '海底捞月', 1, 0, '魏某某', '比喻到水中去捞月亮。比喻去做根本做不到的事，只能白费力气。', 1, 0, 'MRTV6', 'variety/海底捞月.jpg', '2021', 2);
INSERT INTO `variety` VALUES (17, '半晴半阴', 1, 0, '周某某', '又晴又阴，阴晴不定。形容春天至初夏季节阴晴不定的天气', 1, 0, 'MRTV7', 'variety/半晴半阴.jpg', '2021', 20);
INSERT INTO `variety` VALUES (18, '将计就计', 1, 0, '钱某某', '表示利用对方所用的计策，反过来对付对方', 1, 0, 'MRTV1', 'variety/将计就计.jpg', '2021', 17);
INSERT INTO `variety` VALUES (19, '左家娇女', 9, 0, '孙某某', '指美丽可爱的少女', 0, 0, 'MRTV12', 'variety/左家娇女.jpg', '1999', 15);
INSERT INTO `variety` VALUES (20, '女貌郎才', 1, 0, '冯某某', '女子美丽，男子有才华。比喻姻缘十分美满', 0, 0, 'MRTV1', 'variety/女貌郎才.jpg', '2016', 33);
INSERT INTO `variety` VALUES (21, '柳暗花明', 9, 0, '楚某某', '垂柳浓密，鲜花夺目。形容柳树成荫，繁花似锦的春天景象。也比喻在困难中遇到转机', 0, 0, 'MRTV4', 'variety/柳暗花明.jpg', '2013', 49);
INSERT INTO `variety` VALUES (22, '暮云春树', 9, 0, '张某某', '傍晚的云，春天的树。表示对远方友人的思念', 0, 0, 'MRTV2', 'variety/暮云春树.jpg', '2012', 0);
INSERT INTO `variety` VALUES (23, '杏雨梨云', 1, 0, '魏某某', '杏花如雨，梨花似云。形容春天景色美丽', 0, 0, 'MRTV5', 'variety/杏雨梨云.jpg', '2021', 0);
INSERT INTO `variety` VALUES (24, '时雨春风', 1, 0, '吴某某', '及时的雨，春天的风。泛指能使万物生长的雨和风。比喻良好教育的普遍深入。用来称颂师长的教诲', 0, 0, 'MRTV9', 'variety/时雨春风.jpg', '2021', 0);
INSERT INTO `variety` VALUES (25, '目断魂消', 0, 0, '孙某某', '因望不到而内心伤悲。形容离别的悲伤愁苦', 0, 0, 'MRTV12', 'variety/目断魂消.jpg', '2016', 0);
INSERT INTO `variety` VALUES (26, '抢地呼天', 9, 0, '张某某', '抢地：触地。大声叫天，用头撞地。形容极度悲伤', 0, 0, 'MRTV7', 'variety/抢地呼天.jpg', '2013', 0);
INSERT INTO `variety` VALUES (27, '花明柳暗', 0, 0, '刘某某', '垂柳浓密，鲜花夺目。形容柳树成荫，繁花似锦的春天景象。也比喻在困难中遇到转机', 0, 0, 'MRTV4', 'variety/花明柳暗.jpg', '2016', 0);
INSERT INTO `variety` VALUES (28, '涕泗横流', 9, 0, '郑某某', '眼泪鼻涕满脸乱淌。形容极度悲伤', 0, 0, 'MRTV1', 'variety/涕泗横流.jpg', '2020', 0);
INSERT INTO `variety` VALUES (29, '春去冬来', 0, 0, '周某某', '春天过去，冬天来临。形容时光流逝', 0, 0, 'MRTV3', 'variety/春去冬来.jpg', '2021', 0);
INSERT INTO `variety` VALUES (30, '鸟语花香', 1, 0, '魏某某', '鸟叫得好听，花开得喷香。形容春天的美好景象', 0, 0, 'MRTV4', 'variety/鸟语花香.jpg', '2017', 0);
INSERT INTO `variety` VALUES (31, '博古通今', 1, 0, '孙某某', '指对古代的事知道得很多，并且通晓现代的事情，形容知识渊博', 1, 0, 'MRTV4', 'variety/博古通今.jpg', '2021', 0);
INSERT INTO `variety` VALUES (32, '香喉玉口', 1, 0, '孙某某', '形容美丽女子的演唱', 0, 0, 'MRTV5', 'variety/香喉玉口.jpg', '2019', 0);
INSERT INTO `variety` VALUES (33, '春生秋杀', 9, 0, '魏某某', '春天万物萌生，秋天万物凋零', 0, 0, 'MRTV7', 'variety/春生秋杀.jpg', '2017', 0);
INSERT INTO `variety` VALUES (34, '悲喜交至', 6, 0, '钱某某', '悲伤和喜悦的心情交织在一起来到', 0, 0, 'MRTV11', 'variety/悲喜交至.jpg', '2012', 0);
INSERT INTO `variety` VALUES (35, '天香国色', 1, 0, '郑某某', '原形容颜色和香气不同于一般花卉的牡丹花，后也形容女子的美丽', 0, 0, 'MRTV3', 'variety/天香国色.jpg', '2019', 0);
INSERT INTO `variety` VALUES (36, '铁佛伤心', 9, 0, '张某某', '石人落泪：铁铸的的神佛也会伤心，雕刻的石人也会落泪。形容极其悲伤', 0, 0, 'MRTV6', 'variety/铁佛伤心.jpg', '2012', 0);
INSERT INTO `variety` VALUES (37, '小家碧玉', 8, 0, '冯某某', '旧时指小户人家美丽的年轻女子', 0, 0, 'MRTV5', 'variety/小家碧玉.jpg', '2020', 0);
INSERT INTO `variety` VALUES (38, '开卷有益', 1, 0, '王某某', '读书总有益处。常用以勉励人们勤奋好学，多读书就会受益', 1, 0, 'MRTV6', 'variety/开卷有益.jpg', '2021', 0);
INSERT INTO `variety` VALUES (39, '月中聚雪', 2, 0, '周某某', '月亮里堆积着白雪。形容女子洁白而美丽', 0, 0, 'MRTV7', 'variety/月中聚雪.jpg', '2020', 0);
INSERT INTO `variety` VALUES (40, '叩角商歌', 9, 0, '赵某某', '角：牛角；商歌：悲伤的歌。敲着牛角，唱着低沉悲凉的歌。形容用言语和歌声自荐求官', 0, 0, 'MRTV5', 'variety/叩角商歌.jpg', '2018', 0);
INSERT INTO `variety` VALUES (41, '万古长春', 2, 0, '赵某某', '万古：千年万代，永远。永远像春天一样，草木翠绿，生机勃勃。比喻人的精神永远像春天一样毫不衰退或祝愿好事长存。亦作“万古长青”、“万古常青”、“万古常新44，摧胸破肝：心肝断裂剖开。比喻极度悲伤和痛苦。同“摧心剖肝”', 0, 0, 'MRTV5', 'variety/万古长春.jpg', '2017', 0);
INSERT INTO `variety` VALUES (42, '触目崩心', 9, 0, '张某某', '看到某种情况而心中极度悲伤', 0, 0, 'MRTV0', 'variety/触目崩心.jpg', '2018', 0);
INSERT INTO `variety` VALUES (43, '泣下沾襟', 3, 0, '王某某', '襟：衣服胸前的部分。泪水滚滚流下，沾湿衣服前襟。哭得非常悲伤', 0, 0, 'MRTV3', 'variety/泣下沾襟.jpg', '2018', 0);
INSERT INTO `variety` VALUES (44, '春来秋去', 2, 0, '孙某某', '去：过去。春天到来，秋天过去。形容岁月流逝', 0, 0, 'MRTV3', 'variety/春来秋去.jpg', '2017', 0);
INSERT INTO `variety` VALUES (45, '撕心裂肺', 9, 0, '李某某', '形容极度悲伤', 0, 0, 'MRTV6', 'variety/撕心裂肺.jpg', '2021', 0);
INSERT INTO `variety` VALUES (46, '芝焚蕙叹', 6, 0, '钱某某', '芝、蕙：同为香草名；焚：烧。芝草被焚，蕙草伤叹。比喻因同类遭到不幸而悲伤', 0, 0, 'MRTV2', 'variety/芝焚蕙叹.jpg', '2017', 0);
INSERT INTO `variety` VALUES (47, '回春妙手', 3, 0, '赵某某', '回春：使春天重返，比喻将快死的人救活。指医生医术高明', 0, 0, 'MRTV6', 'variety/回春妙手.jpg', '2014', 0);
INSERT INTO `variety` VALUES (48, '莺吟燕儛', 0, 0, '赵某某', '形容春天鸟儿喧闹活跃的景象。现常比喻革命和建设蓬勃兴旺的景象。同“莺歌燕舞”', 0, 0, 'MRTV7', 'variety/莺吟燕儛.jpg', '2021', 0);
INSERT INTO `variety` VALUES (49, '满园春色', 9, 0, '吴某某', '整个园子里一片春天的景色。比喻欣欣向荣的景象', 0, 0, 'MRTV4', 'variety/满园春色.jpg', '2015', 0);
INSERT INTO `variety` VALUES (50, '痛入骨髓', 3, 0, '魏某某', '痛到骨头里。比喻痛恨或悲伤之极', 0, 0, 'MRTV7', 'variety/痛入骨髓.jpg', '2015', 0);
INSERT INTO `variety` VALUES (51, '萋菲贝锦', 9, 0, '赵某某', '贝锦：有花纹的织锦。女子织布织成美丽的图案。比喻花言巧语，罗织罪名，诬陷别人', 0, 0, 'MRTV12', 'variety/萋菲贝锦.jpg', '2019', 0);
INSERT INTO `variety` VALUES (52, '痛彻骨髓', 0, 0, '楚某某', '痛到骨头里。比喻痛恨或悲伤之极', 0, 0, 'MRTV10', 'variety/痛彻骨髓.jpg', '2017', 0);
INSERT INTO `variety` VALUES (53, '禾黍之悲', 1, 0, '钱某某', '黍、禾：都是可以信用的谷物，泛指庄稼。比喻亡国的悲伤', 0, 0, 'MRTV7', 'variety/禾黍之悲.jpg', '2021', 0);
INSERT INTO `variety` VALUES (54, '悲喜交并', 1, 0, '钱某某', '悲伤和喜悦的心情交织在一起', 0, 0, 'MRTV1', 'variety/悲喜交并.jpg', '2016', 0);
INSERT INTO `variety` VALUES (55, '毛施淑姿', 9, 0, '吴某某', '毛、施：毛嫱、西施；淑：温和善良。形容女子姿容美丽', 0, 0, 'MRTV11', 'variety/毛施淑姿.jpg', '2021', 0);
INSERT INTO `variety` VALUES (56, '霓裳羽衣', 1, 0, '魏某某', '以云霓为裳，以羽毛作衣。形容女子的装束美丽', 0, 0, 'MRTV9', 'variety/霓裳羽衣.jpg', '2020', 0);
INSERT INTO `variety` VALUES (57, '落雁沉鱼', 9, 0, '李某某', '雁见了飞落地面，鱼见了潜入水底。形容女子容貌美丽动人', 0, 0, 'MRTV8', 'variety/落雁沉鱼.jpg', '2012', 0);
INSERT INTO `variety` VALUES (58, '剖心泣血', 5, 0, '王某某', '形容非常悲伤。同“剖肝泣血”', 0, 0, 'MRTV4', 'variety/剖心泣血.jpg', '2017', 0);
INSERT INTO `variety` VALUES (59, '悲欢离合', 1, 0, '王某某', '悲伤、欢乐、离散、聚会。泛指生活中经历的各种境遇和由此产生的各种心情', 0, 0, 'MRTV2', 'variety/悲欢离合.jpg', '2019', 0);
INSERT INTO `variety` VALUES (60, '一代国色', 9, 0, '楚某某', '国色：美丽超群的女子。为一代人当中长得最美的女子', 0, 0, 'MRTV11', 'variety/一代国色.jpg', '2021', 0);
INSERT INTO `variety` VALUES (61, '如履春冰', 9, 0, '周某某', '履：踩。好像踩着春天薄薄的冰。比喻在危险的境地而提心吊胆', 0, 0, 'MRTV9', 'variety/如履春冰.jpg', '2020', 0);
INSERT INTO `variety` VALUES (62, '睹物兴悲', 1, 0, '孙某某', '见到与故人有关的东西而引起悲伤', 0, 0, 'MRTV12', 'variety/睹物兴悲.jpg', '2020', 0);
INSERT INTO `variety` VALUES (63, '乐极悲生', 0, 0, '张某某', '高兴到极点时，发生使人悲伤的事', 0, 0, 'MRTV1', 'variety/乐极悲生.jpg', '2015', 0);
INSERT INTO `variety` VALUES (64, '远山芙蓉', 9, 0, '吴某某', '远山：形容女子的眉毛像远山一样青翠。芙蓉：比喻女子的脸色像芙蓉花一样美丽。比喻女子貌美', 0, 0, 'MRTV4', 'variety/远山芙蓉.jpg', '2021', 0);
INSERT INTO `variety` VALUES (65, '悲伤憔悴', 5, 0, '张某某', '因悲伤而身体消瘦，脸色难看', 0, 0, 'MRTV6', 'variety/悲伤憔悴.jpg', '2014', 0);
INSERT INTO `variety` VALUES (66, '眼花历乱', 1, 0, '魏某某', '历乱：不清楚，混乱。形容看见美丽、复杂的色彩或繁复的事物而感到迷乱', 0, 0, 'MRTV1', 'variety/眼花历乱.jpg', '2021', 0);
INSERT INTO `variety` VALUES (67, '老泪纵横', 5, 0, '周某某', '纵横：交错。老人泪流满面，形容极度悲伤或激动', 0, 0, 'MRTV1', 'variety/老泪纵横.jpg', '2012', 0);
INSERT INTO `variety` VALUES (68, '李白桃红', 9, 0, '周某某', '桃花红，李花白。指春天美好宜人的景色', 0, 0, 'MRTV11', 'variety/李白桃红.jpg', '2016', 0);
INSERT INTO `variety` VALUES (69, '摧心剖肝', 5, 0, '张某某', '摧：折。剖：划开。心肝断裂剖开。比喻极度悲伤和痛苦', 0, 0, 'MRTV10', 'variety/摧心剖肝.jpg', '2015', 0);
INSERT INTO `variety` VALUES (70, '穷态极妍', 1, 0, '刘某某', '妍：美丽。形容把各种美姿都表现出来', 0, 0, 'MRTV9', 'variety/穷态极妍.jpg', '2013', 0);
INSERT INTO `variety` VALUES (71, '号恸崩摧', 6, 0, '冯某某', '恸：哀痛之极，大哭；崩：死亡；摧：伤心。放声痛哭，异常悲伤，几乎昏死过去。形容极度悲伤', 0, 0, 'MRTV6', 'variety/号恸崩摧.jpg', '2017', 0);
INSERT INTO `variety` VALUES (72, '香消玉殒', 1, 0, '王某某', '比喻美丽的女子死亡', 0, 0, 'MRTV1', 'variety/香消玉殒.jpg', '2018', 0);
INSERT INTO `variety` VALUES (73, '花明柳媚', 2, 0, '赵某某', '形容春天绿柳成荫、繁花似锦的景象', 0, 0, 'MRTV0', 'variety/花明柳媚.jpg', '2019', 0);
INSERT INTO `variety` VALUES (74, '凄入肝脾', 0, 0, '钱某某', '形容非常悲伤', 0, 0, 'MRTV11', 'variety/凄入肝脾.jpg', '2016', 0);
INSERT INTO `variety` VALUES (75, '艳美绝俗', 1, 0, '李某某', '形容娇艳美丽超过寻常人', 0, 0, 'MRTV1', 'variety/艳美绝俗.jpg', '2016', 0);
INSERT INTO `variety` VALUES (76, '桃花薄命', 0, 0, '刘某某', '桃花：借指女人；薄命：命多悲惨。比喻女子容貌美丽但命运不好', 0, 0, 'MRTV12', 'variety/桃花薄命.jpg', '2018', 0);
INSERT INTO `variety` VALUES (77, '花香鸟语', 9, 0, '钱某某', '鸟语：鸟鸣如同讲话一般。形容春天动人的景象', 0, 0, 'MRTV4', 'variety/花香鸟语.jpg', '2016', 0);
INSERT INTO `variety` VALUES (78, '雨丝风片', 1, 0, '张某某', '形容春天的微风细雨', 0, 0, 'MRTV6', 'variety/雨丝风片.jpg', '2020', 0);
INSERT INTO `variety` VALUES (79, '触目恸心', 1, 0, '张某某', '恸：极悲哀；大哭。看到眼前景物而引起内心悲伤', 0, 0, 'MRTV4', 'variety/触目恸心.jpg', '2014', 0);
INSERT INTO `variety` VALUES (80, '泣涕如雨', 2, 0, '周某某', '泣：低声哭；涕：鼻涕。眼泪像雨一样。形容极度悲伤', 0, 0, 'MRTV5', 'variety/泣涕如雨.jpg', '2012', 0);
INSERT INTO `variety` VALUES (81, '兔死狐悲', 1, 0, '王某某', '物伤其类：兔子死了，狐狸感到悲伤。比喻因同类的失败或死亡而感到悲伤', 0, 0, 'MRTV8', 'variety/兔死狐悲.jpg', '2019', 0);
INSERT INTO `variety` VALUES (82, '穷途之哭', 0, 0, '魏某某', '本意是因车无路可行而悲伤，后也指处于困境所发的绝望的哀伤', 0, 0, 'MRTV0', 'variety/穷途之哭.jpg', '2015', 0);
INSERT INTO `variety` VALUES (83, '春去夏来', 0, 0, '李某某', '春天过去，夏天到来。形容时光流逝', 0, 0, 'MRTV9', 'variety/春去夏来.jpg', '2012', 0);
INSERT INTO `variety` VALUES (84, '见哭兴悲', 6, 0, '赵某某', '见别人哭泣而引起自己的悲伤。指产生同情心', 0, 0, 'MRTV2', 'variety/见哭兴悲.jpg', '2017', 0);
INSERT INTO `variety` VALUES (85, '腊尽春来', 6, 0, '郑某某', '腊：指腊月，即农历十二月。腊月过去，春天又回来了', 0, 0, 'MRTV11', 'variety/腊尽春来.jpg', '2018', 0);
INSERT INTO `variety` VALUES (86, '妙手回春', 0, 0, '李某某', '回春：使春天重返，比喻将快死的人救活。指医生医术高明', 0, 0, 'MRTV8', 'variety/妙手回春.jpg', '2020', 0);
INSERT INTO `variety` VALUES (87, '丧明之痛', 0, 0, '刘某某', '丧明：眼睛失明。古代子夏死了儿子，哭瞎眼睛。后指丧子的悲伤', 0, 0, 'MRTV4', 'variety/丧明之痛.jpg', '2012', 0);
INSERT INTO `variety` VALUES (88, '落英缤纷', 0, 0, '楚某某', '形容落花纷纷飘落的美丽情景', 0, 0, 'MRTV6', 'variety/落英缤纷.jpg', '2014', 0);
INSERT INTO `variety` VALUES (89, '鱼沉雁落', 3, 0, '钱某某', '形容女子容貌美丽', 0, 0, 'MRTV5', 'variety/鱼沉雁落.jpg', '2018', 0);
INSERT INTO `variety` VALUES (90, '涕泗纵横', 9, 0, '张某某', '眼泪鼻涕满脸乱淌。形容极度悲伤。同“涕泗横流”', 0, 0, 'MRTV4', 'variety/涕泗纵横.jpg', '2014', 0);
INSERT INTO `variety` VALUES (91, '夺眶而出', 0, 0, '楚某某', '眶：眼眶。眼泪一下子从眼眶中涌出。形容人因极度悲伤或极度欢喜而落泪', 0, 0, 'MRTV2', 'variety/夺眶而出.jpg', '2014', 0);
INSERT INTO `variety` VALUES (92, '清辞丽曲', 1, 0, '吴某某', '指清新美丽的词曲。同“清词丽句”', 1, 0, 'MRTV7', 'variety/清辞丽曲.jpg', '2021', 0);
INSERT INTO `variety` VALUES (93, '眉黛青颦', 9, 0, '冯某某', '黛：青黑色的颜料，古代女子用来画眉；青颦：古人用青黛染眉，故称青颦。形容女子容貌美丽', 0, 0, 'MRTV4', 'variety/眉黛青颦.jpg', '2021', 0);
INSERT INTO `variety` VALUES (94, '九十春光', 1, 0, '赵某某', '九十：指春季三个月，共九十天。指春天的美好光景', 0, 0, 'MRTV11', 'variety/九十春光.jpg', '2020', 0);
INSERT INTO `variety` VALUES (95, '狐死兔泣', 1, 0, '钱某某', '比喻因同类的死亡而感到悲伤', 0, 0, 'MRTV3', 'variety/狐死兔泣.jpg', '2020', 0);
INSERT INTO `variety` VALUES (96, '悲喜兼集', 0, 0, '魏某某', '悲伤和喜悦的心情交织在一起', 0, 0, 'MRTV3', 'variety/悲喜兼集.jpg', '2019', 0);
INSERT INTO `variety` VALUES (97, '清词丽句', 1, 0, '冯某某', '指清新美丽的词句', 0, 0, 'MRTV1', 'variety/清词丽句.jpg', '2015', 0);
INSERT INTO `variety` VALUES (98, '悲喜交切', 9, 0, '魏某某', '悲伤和喜悦的心情交织在一起', 0, 0, 'MRTV8', 'variety/悲喜交切.jpg', '2012', 0);
INSERT INTO `variety` VALUES (99, '清辞丽句', 2, 0, '王某某', '指清新美丽的词句。同“清词丽句”', 0, 0, 'MRTV10', 'variety/清辞丽句.jpg', '2015', 0);
INSERT INTO `variety` VALUES (100, '朋心合力', 6, 0, '郑某某', '团结一致，共同努力', 0, 1, 'MRTV9', 'variety/朋心合力.jpg', '2020', 0);
INSERT INTO `variety` VALUES (101, '韶光淑气', 9, 0, '魏某某', '韶光：美好的时光；淑：美好。春天的美好景象', 0, 0, 'MRTV3', 'variety/韶光淑气.jpg', '2012', 0);
INSERT INTO `variety` VALUES (102, '艳美无敌', 1, 0, '张某某', '敌：匹敌。明艳美丽，没有人与之媲美的', 0, 0, 'MRTV10', 'variety/艳美无敌.jpg', '2015', 0);
INSERT INTO `variety` VALUES (103, '杏脸桃腮', 1, 0, '楚某某', '脸似杏花白，腮如桃花红。形容女子容貌美丽', 0, 0, 'MRTV4', 'variety/杏脸桃腮.jpg', '2017', 0);
INSERT INTO `variety` VALUES (104, '雄伟壮观', 2, 0, '魏某某', '气势伟大美丽', 0, 0, 'MRTV1', 'variety/雄伟壮观.jpg', '2017', 0);
INSERT INTO `variety` VALUES (105, '玉殿嫦娥', 9, 0, '楚某某', '比喻美丽漂亮的女子', 0, 1, 'MRTV12', 'variety/玉殿嫦娥.jpg', '2017', 0);
INSERT INTO `variety` VALUES (106, '悲喜交集', 9, 0, '楚某某', '交：共。悲伤和喜悦的心情交织在一起', 0, 0, 'MRTV0', 'variety/悲喜交集.jpg', '2020', 0);
INSERT INTO `variety` VALUES (107, '燕语莺呼', 8, 0, '郑某某', '莺：黄鹂。燕子的话语，黄鹂的歌声。形容春天里大好的景象。也比喻女子说话声音婉转动听', 0, 0, 'MRTV2', 'variety/燕语莺呼.jpg', '2018', 0);
INSERT INTO `variety` VALUES (108, '水木清华', 0, 0, '李某某', '水：池水，溪水；木：花木；清：清幽；华：美丽有光彩。指园林景色清朗秀丽', 0, 0, 'MRTV9', 'variety/水木清华.jpg', '2021', 0);
INSERT INTO `variety` VALUES (109, '妍蚩好恶', 1, 0, '钱某某', '妍：美丽。蚩：通“媸”，丑陋，丑恶。美丽、丑陋、好与坏。原指写作的得失', 0, 0, 'MRTV2', 'variety/妍蚩好恶.jpg', '2016', 0);
INSERT INTO `variety` VALUES (110, '锦花绣草', 0, 0, '钱某某', '形容花草长得非常美丽', 0, 0, 'MRTV9', 'variety/锦花绣草.jpg', '2018', 0);
INSERT INTO `variety` VALUES (111, '奋勇向前', 1, 0, '郑某某', '为奋发而努力鼓起勇气朝前方挺进的意思', 0, 1, 'MRTV0', 'variety/奋勇向前.jpg', '2019', 0);
INSERT INTO `variety` VALUES (112, '力争上游', 0, 0, '周某某', '比喻努力争取有利形势', 0, 1, 'MRTV5', 'variety/力争上游.jpg', '2018', 0);
INSERT INTO `variety` VALUES (113, '有脚阳春', 5, 0, '周某某', '承春：指春天。旧时称赞好官的话', 0, 0, 'MRTV10', 'variety/有脚阳春.jpg', '2020', 0);
INSERT INTO `variety` VALUES (114, '泪流满面', 0, 0, '孙某某', '眼泪流了一脸。形容极度悲伤', 0, 0, 'MRTV1', 'variety/泪流满面.jpg', '2015', 0);
INSERT INTO `variety` VALUES (115, '触目伤怀', 0, 0, '孙某某', '看到眼前景物而引起内心的悲伤和回忆', 0, 0, 'MRTV9', 'variety/触目伤怀.jpg', '2018', 0);
INSERT INTO `variety` VALUES (116, '踣地呼天', 1, 0, '冯某某', '犹言呼天抢地。形容极度悲伤', 0, 0, 'MRTV1', 'variety/踣地呼天.jpg', '2016', 0);
INSERT INTO `variety` VALUES (117, '琪花瑶草', 1, 0, '郑某某', '琪、瑶：美玉。原为古人想象中仙境的花草。后也形容晶莹美丽的花草', 0, 1, 'MRTV1', 'variety/琪花瑶草.jpg', '2019', 0);
INSERT INTO `variety` VALUES (118, '风木之悲', 0, 0, '李某某', '风木：同“风树”，比喻因父母亡故，不能奉养。指丧父母的悲伤', 0, 0, 'MRTV9', 'variety/风木之悲.jpg', '2016', 0);
INSERT INTO `variety` VALUES (119, '春色恼人', 0, 0, '赵某某', '恼：撩拔，挑逗。春天的景色引起人们的兴致', 0, 0, 'MRTV6', 'variety/春色恼人.jpg', '2013', 0);
INSERT INTO `variety` VALUES (120, '春蛙秋蝉', 9, 0, '楚某某', '春天蛙叫，秋天蝉鸣。比喻喧闹夸张、空洞无物的言谈', 0, 0, 'MRTV1', 'variety/春蛙秋蝉.jpg', '2017', 0);
INSERT INTO `variety` VALUES (121, '良宵美景', 0, 0, '楚某某', '宜人的夜，美丽的景色', 0, 0, 'MRTV2', 'variety/良宵美景.jpg', '2019', 0);
INSERT INTO `variety` VALUES (122, '霞光万道', 0, 0, '王某某', '形容日出日落时霞光散射的美丽景象。也形容某种珍宝放出耀眼的光辉', 0, 0, 'MRTV6', 'variety/霞光万道.jpg', '2017', 0);
INSERT INTO `variety` VALUES (123, '桃柳争妍', 0, 0, '王某某', '妍：美艳。桃花和柳树比美。用以形容春色美丽', 0, 0, 'MRTV7', 'variety/桃柳争妍.jpg', '2014', 0);
INSERT INTO `variety` VALUES (124, '虎尾春冰', 1, 0, '郑某某', '踩着老虎尾巴，走在春天将解冻的冰上。比喻处境非常危险', 0, 0, 'MRTV0', 'variety/虎尾春冰.jpg', '2020', 0);
INSERT INTO `variety` VALUES (125, '多心伤感', 5, 0, '吴某某', '多心：多疑心。因多疑而引起悲伤', 0, 0, 'MRTV6', 'variety/多心伤感.jpg', '2016', 0);
INSERT INTO `variety` VALUES (126, '春光漏泄', 2, 0, '楚某某', '原指柳枝泛绿，透露了春天将至的信息。比喻秘密或男女的私情被泄漏出来', 0, 0, 'MRTV3', 'variety/春光漏泄.jpg', '2009', 0);
INSERT INTO `variety` VALUES (127, '狐兔之悲', 1, 0, '王某某', '狐死则兔悲，兔死则狐亦悲。比喻因同类的死亡而感到痛心悲伤', 0, 0, 'MRTV5', 'variety/狐兔之悲.jpg', '2018', 0);
INSERT INTO `variety` VALUES (128, '妍姿妖艳', 0, 0, '王某某', '妍姿：美好的姿容；妖艳：美丽而妩媚。形容女子容貌美丽，妩媚动人', 0, 0, 'MRTV9', 'variety/妍姿妖艳.jpg', '2016', 0);
INSERT INTO `variety` VALUES (129, '尽态极妍', 0, 0, '郑某某', '尽：极好；态：仪态；妍：美丽。容貌姿态美丽娇艳到极点', 0, 0, 'MRTV10', 'variety/尽态极妍.jpg', '2021', 0);
INSERT INTO `variety` VALUES (130, '天生丽质', 1, 0, '张某某', '天生：天然生成。丽质：美丽的姿容。形容女子妩媚艳丽', 0, 0, 'MRTV1', 'variety/天生丽质.jpg', '2016', 0);
INSERT INTO `variety` VALUES (131, '红情绿意', 1, 0, '赵某某', '红：指红花；绿：指绿叶。形容艳丽的春天景色', 0, 0, 'MRTV0', 'variety/红情绿意.jpg', '2021', 0);
INSERT INTO `variety` VALUES (132, '杏雨梨云', 5, 0, '冯某某', '杏花如雨，梨花似云。形容春天景色美丽', 0, 0, 'MRTV9', 'variety/杏雨梨云.jpg', '2013', 0);
INSERT INTO `variety` VALUES (133, '伤春悲秋', 9, 0, '李某某', '伤：忧思，悲伤。因季节、景物的变化而引起悲伤的情绪。多形容多愁善感', 0, 0, 'MRTV2', 'variety/伤春悲秋.jpg', '2018', 0);
INSERT INTO `variety` VALUES (134, '美须豪眉', 0, 0, '刘某某', '美丽的须髯，浓浓的眉毛。形容男子英俊豪迈', 0, 0, 'MRTV1', 'variety/美须豪眉.jpg', '2018', 0);
INSERT INTO `variety` VALUES (135, '泣不可仰', 0, 0, '孙某某', '哭泣得抬不起头。形容极度悲伤', 0, 0, 'MRTV4', 'variety/泣不可仰.jpg', '2020', 0);
INSERT INTO `variety` VALUES (136, '春冰虎尾', 1, 0, '钱某某', '踩着老虎尾巴，走在春天将解冻的冰上。比喻处境非常危险', 0, 0, 'MRTV0', 'variety/春冰虎尾.jpg', '2018', 0);
INSERT INTO `variety` VALUES (137, '悲不自胜', 5, 0, '刘某某', '胜：能承受。悲伤得自己不能承受。形容极度悲伤', 0, 0, 'MRTV9', 'variety/悲不自胜.jpg', '2012', 0);
INSERT INTO `variety` VALUES (138, '秋月春花', 9, 0, '楚某某', '春天的花朵，秋天的月亮。泛指春秋美景', 0, 0, 'MRTV7', 'variety/秋月春花.jpg', '2019', 0);
INSERT INTO `variety` VALUES (139, '风木含悲', 1, 0, '孙某某', '比喻因父母亡故，孝子不能奉养的悲伤', 0, 0, 'MRTV2', 'variety/风木含悲.jpg', '2019', 0);
INSERT INTO `variety` VALUES (140, '朱唇皓齿', 0, 0, '郑某某', '鲜红的双唇，雪白的牙齿。形容容貌美丽', 0, 0, 'MRTV7', 'variety/朱唇皓齿.jpg', '2018', 0);
INSERT INTO `variety` VALUES (141, '心碎肠断', 0, 0, '孙某某', '形容极度悲伤', 0, 0, 'MRTV12', 'variety/心碎肠断.jpg', '2020', 0);
INSERT INTO `variety` VALUES (142, '春暖花香', 0, 0, '张某某', '春天气候温暖，百花盛开，花香袭人', 0, 0, 'MRTV5', 'variety/春暖花香.jpg', '2019', 0);

-- ----------------------------
-- Table structure for video
-- ----------------------------
DROP TABLE IF EXISTS `video`;
CREATE TABLE `video`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `video_url` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `release_date` date NOT NULL,
  `variety_id` int NOT NULL,
  `image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `video_variety_id_066e0647_fk_variety_id`(`variety_id`) USING BTREE,
  CONSTRAINT `video_variety_id_066e0647_fk_variety_id` FOREIGN KEY (`variety_id`) REFERENCES `variety` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 558 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of video
-- ----------------------------
INSERT INTO `video` VALUES (1, '', '2021-06-18', 15, 'video/第11期明眸皓齿.jpg', '', '第11期 明眸皓齿');
INSERT INTO `video` VALUES (2, '', '2021-06-14', 15, 'video/第10期明眸皓齿.jpg', '', '第10期 明眸皓齿');
INSERT INTO `video` VALUES (3, '', '2021-06-11', 15, 'video/第9期明眸皓齿.jpg', '', '第9期 明眸皓齿');
INSERT INTO `video` VALUES (4, '', '2021-06-04', 15, 'video/第8期明眸皓齿.jpg', '', '第8期 明眸皓齿');
INSERT INTO `video` VALUES (5, '', '2021-05-28', 15, 'video/第7期明眸皓齿.jpg', '', '第7期 明眸皓齿');
INSERT INTO `video` VALUES (6, '', '2021-05-21', 15, 'video/第6期明眸皓齿.jpg', '', '第6期 明眸皓齿');
INSERT INTO `video` VALUES (7, '', '2021-05-14', 15, 'video/第5期明眸皓齿.jpg', '', '第5期 明眸皓齿');
INSERT INTO `video` VALUES (8, '', '2021-05-07', 15, 'video/第4期明眸皓齿.jpg', '', '第4期 明眸皓齿');
INSERT INTO `video` VALUES (9, '', '2021-04-30', 15, 'video/第3期明眸皓齿.jpg', '', '第3期 明眸皓齿');
INSERT INTO `video` VALUES (10, '', '2021-04-23', 15, 'video/第2期明眸皓齿.jpg', '', '第2期 明眸皓齿');
INSERT INTO `video` VALUES (21, '', '2021-04-16', 15, 'video/第1期明眸皓齿.jpg', '', '第1期 明眸皓齿');
INSERT INTO `video` VALUES (22, '', '2021-06-20', 16, 'video/第12期海底捞月.jpg', '', '第12期 海底捞月');
INSERT INTO `video` VALUES (23, '', '2021-06-13', 16, 'video/第11期海底捞月.jpg', '', '第11期 海底捞月');
INSERT INTO `video` VALUES (24, '', '2021-06-06', 16, 'video/第10期海底捞月.jpg', '', '第10期 海底捞月');
INSERT INTO `video` VALUES (25, '', '2021-05-30', 16, 'video/第9期海底捞月.jpg', '', '第9期 海底捞月');
INSERT INTO `video` VALUES (26, '', '2021-05-23', 16, 'video/第8期海底捞月.jpg', '', '第8期 海底捞月');
INSERT INTO `video` VALUES (27, '', '2021-05-16', 16, 'video/第7期海底捞月.jpg', '', '第7期 海底捞月');
INSERT INTO `video` VALUES (28, '', '2021-05-09', 16, 'video/第6期海底捞月.jpg', '', '第6期 海底捞月');
INSERT INTO `video` VALUES (29, '', '2021-05-02', 16, 'video/第5期海底捞月.jpg', '', '第5期 海底捞月');
INSERT INTO `video` VALUES (30, '', '2021-04-25', 16, 'video/第4期海底捞月.jpg', '', '第4期 海底捞月');
INSERT INTO `video` VALUES (31, '', '2021-04-18', 16, 'video/第3期海底捞月.jpg', '', '第3期 海底捞月');
INSERT INTO `video` VALUES (42, '', '2021-04-11', 16, 'video/第2期海底捞月.jpg', '', '第2期 海底捞月');
INSERT INTO `video` VALUES (43, '', '2021-04-04', 16, 'video/第1期海底捞月.jpg', '', '第1期 海底捞月');
INSERT INTO `video` VALUES (44, '', '2021-06-16', 17, 'video/第7期半晴半阴.jpg', '', '第7期 半晴半阴');
INSERT INTO `video` VALUES (47, '', '2021-06-09', 17, 'video/第6期半晴半阴.jpg', '', '第6期 半晴半阴');
INSERT INTO `video` VALUES (50, '', '2021-06-02', 17, 'video/第5期半晴半阴.jpg', '', '第5期 半晴半阴');
INSERT INTO `video` VALUES (53, '', '2021-05-26', 17, 'video/第4期半晴半阴.jpg', '', '第4期 半晴半阴');
INSERT INTO `video` VALUES (66, '', '2021-05-19', 17, 'video/第3期半晴半阴.jpg', '', '第3期 半晴半阴');
INSERT INTO `video` VALUES (70, '', '2021-05-12', 17, 'video/第2期半晴半阴.jpg', '', '第2期 半晴半阴');
INSERT INTO `video` VALUES (73, '', '2021-05-05', 17, 'video/第1期半晴半阴.jpg', '', '第1期 半晴半阴');
INSERT INTO `video` VALUES (76, '', '2021-06-20', 18, 'video/第9期将计就计.jpg', '', '第9期 将计就计');
INSERT INTO `video` VALUES (77, '', '2021-06-06', 18, 'video/第8期将计就计.jpg', '', '第8期 将计就计');
INSERT INTO `video` VALUES (78, '', '2021-05-16', 18, 'video/第7期将计就计.jpg', '', '第7期 将计就计');
INSERT INTO `video` VALUES (79, '', '2021-05-09', 18, 'video/第6期将计就计.jpg', '', '第6期 将计就计');
INSERT INTO `video` VALUES (80, '', '2021-05-02', 18, 'video/第5期将计就计.jpg', '', '第5期 将计就计');
INSERT INTO `video` VALUES (81, '', '2021-04-25', 18, 'video/第4期将计就计.jpg', '', '第4期 将计就计');
INSERT INTO `video` VALUES (82, '', '2021-04-18', 18, 'video/第3期将计就计.jpg', '', '第3期 将计就计');
INSERT INTO `video` VALUES (83, '', '2021-04-11', 18, 'video/第2期将计就计.jpg', '', '第2期 将计就计');
INSERT INTO `video` VALUES (84, '', '2021-04-11', 18, 'video/第1期将计就计.jpg', '', '第1期 将计就计');
INSERT INTO `video` VALUES (94, '', '2021-06-22', 19, 'video/第163期左家娇女.jpg', '', '第163期 左家娇女');
INSERT INTO `video` VALUES (95, '', '2021-06-21', 19, 'video/第162期左家娇女.jpg', '', '第162期 左家娇女');
INSERT INTO `video` VALUES (96, '', '2021-06-20', 19, 'video/第161期左家娇女.jpg', '', '第161期 左家娇女');
INSERT INTO `video` VALUES (97, '', '2021-06-19', 19, 'video/第160期左家娇女.jpg', '', '第160期 左家娇女');
INSERT INTO `video` VALUES (98, '', '2021-06-18', 19, 'video/第159期左家娇女.jpg', '', '第159期 左家娇女');
INSERT INTO `video` VALUES (99, '', '2021-06-17', 19, 'video/第158期左家娇女.jpg', '', '第158期 左家娇女');
INSERT INTO `video` VALUES (100, '', '2021-06-16', 19, 'video/第157期左家娇女.jpg', '', '第157期 左家娇女');
INSERT INTO `video` VALUES (101, '', '2021-06-15', 19, 'video/第156期左家娇女.jpg', '', '第156期 左家娇女');
INSERT INTO `video` VALUES (102, '', '2021-06-14', 19, 'video/第155期左家娇女.jpg', '', '第155期 左家娇女');
INSERT INTO `video` VALUES (103, '', '2021-06-13', 19, 'video/第154期左家娇女.jpg', '', '第154期 左家娇女');
INSERT INTO `video` VALUES (104, '', '2021-06-22', 19, 'video/第153期左家娇女.jpg', '', '第153期 左家娇女');
INSERT INTO `video` VALUES (105, '', '2021-06-21', 19, 'video/第152期左家娇女.jpg', '', '第152期 左家娇女');
INSERT INTO `video` VALUES (106, '', '2021-06-20', 19, 'video/第151期左家娇女.jpg', '', '第151期 左家娇女');
INSERT INTO `video` VALUES (107, '', '2021-06-19', 19, 'video/第150期左家娇女.jpg', '', '第150期 左家娇女');
INSERT INTO `video` VALUES (108, '', '2021-06-18', 19, 'video/第149期左家娇女.jpg', '', '第149期 左家娇女');
INSERT INTO `video` VALUES (109, '', '2021-06-17', 19, 'video/第148期左家娇女.jpg', '', '第148期 左家娇女');
INSERT INTO `video` VALUES (110, '', '2021-06-16', 19, 'video/第147期左家娇女.jpg', '', '第147期 左家娇女');
INSERT INTO `video` VALUES (111, '', '2021-06-15', 19, 'video/第146期左家娇女.jpg', '', '第146期 左家娇女');
INSERT INTO `video` VALUES (112, '', '2021-06-14', 19, 'video/第145期左家娇女.jpg', '', '第145期 左家娇女');
INSERT INTO `video` VALUES (113, '', '2021-06-13', 19, 'video/第144期左家娇女.jpg', '', '第144期 左家娇女');
INSERT INTO `video` VALUES (114, '', '2021-06-12', 19, 'video/第143期左家娇女.jpg', '', '第143期 左家娇女');
INSERT INTO `video` VALUES (115, '', '2021-06-11', 19, 'video/第142期左家娇女.jpg', '', '第142期 左家娇女');
INSERT INTO `video` VALUES (116, '', '2021-06-10', 19, 'video/第141期左家娇女.jpg', '', '第141期 左家娇女');
INSERT INTO `video` VALUES (117, '', '2021-06-09', 19, 'video/第140期左家娇女.jpg', '', '第140期 左家娇女');
INSERT INTO `video` VALUES (118, '', '2021-06-08', 19, 'video/第139期左家娇女.jpg', '', '第139期 左家娇女');
INSERT INTO `video` VALUES (119, '', '2021-06-07', 19, 'video/第138期左家娇女.jpg', '', '第138期 左家娇女');
INSERT INTO `video` VALUES (120, '', '2021-06-06', 19, 'video/第137期左家娇女.jpg', '', '第137期 左家娇女');
INSERT INTO `video` VALUES (121, '', '2021-06-05', 19, 'video/第136期左家娇女.jpg', '', '第136期 左家娇女');
INSERT INTO `video` VALUES (122, '', '2021-06-04', 19, 'video/第135期左家娇女.jpg', '', '第135期 左家娇女');
INSERT INTO `video` VALUES (123, '', '2021-06-03', 19, 'video/第134期左家娇女.jpg', '', '第134期 左家娇女');
INSERT INTO `video` VALUES (124, '', '2021-06-02', 19, 'video/第133期左家娇女.jpg', '', '第133期 左家娇女');
INSERT INTO `video` VALUES (125, '', '2021-06-01', 19, 'video/第132期左家娇女.jpg', '', '第132期 左家娇女');
INSERT INTO `video` VALUES (126, '', '2021-05-31', 19, 'video/第131期左家娇女.jpg', '', '第131期 左家娇女');
INSERT INTO `video` VALUES (127, '', '2021-05-30', 19, 'video/第130期左家娇女.jpg', '', '第130期 左家娇女');
INSERT INTO `video` VALUES (128, '', '2021-05-29', 19, 'video/第129期左家娇女.jpg', '', '第129期 左家娇女');
INSERT INTO `video` VALUES (129, '', '2021-05-28', 19, 'video/第128期左家娇女.jpg', '', '第128期 左家娇女');
INSERT INTO `video` VALUES (130, '', '2021-05-27', 19, 'video/第127期左家娇女.jpg', '', '第127期 左家娇女');
INSERT INTO `video` VALUES (131, '', '2021-05-26', 19, 'video/第126期左家娇女.jpg', '', '第126期 左家娇女');
INSERT INTO `video` VALUES (132, '', '2021-05-25', 19, 'video/第125期左家娇女.jpg', '', '第125期 左家娇女');
INSERT INTO `video` VALUES (133, '', '2021-05-24', 19, 'video/第124期左家娇女.jpg', '', '第124期 左家娇女');
INSERT INTO `video` VALUES (134, '', '2021-05-23', 19, 'video/第123期左家娇女.jpg', '', '第123期 左家娇女');
INSERT INTO `video` VALUES (135, '', '2021-05-22', 19, 'video/第122期左家娇女.jpg', '', '第122期 左家娇女');
INSERT INTO `video` VALUES (136, '', '2021-05-21', 19, 'video/第121期左家娇女.jpg', '', '第121期 左家娇女');
INSERT INTO `video` VALUES (137, '', '2021-05-20', 19, 'video/第120期左家娇女.jpg', '', '第120期 左家娇女');
INSERT INTO `video` VALUES (138, '', '2021-05-19', 19, 'video/第119期左家娇女.jpg', '', '第119期 左家娇女');
INSERT INTO `video` VALUES (139, '', '2021-05-18', 19, 'video/第118期左家娇女.jpg', '', '第118期 左家娇女');
INSERT INTO `video` VALUES (140, '', '2021-05-17', 19, 'video/第117期左家娇女.jpg', '', '第117期 左家娇女');
INSERT INTO `video` VALUES (141, '', '2021-05-16', 19, 'video/第116期左家娇女.jpg', '', '第116期 左家娇女');
INSERT INTO `video` VALUES (142, '', '2021-05-15', 19, 'video/第115期左家娇女.jpg', '', '第115期 左家娇女');
INSERT INTO `video` VALUES (143, '', '2021-05-14', 19, 'video/第114期左家娇女.jpg', '', '第114期 左家娇女');
INSERT INTO `video` VALUES (144, '', '2021-05-13', 19, 'video/第113期左家娇女.jpg', '', '第113期 左家娇女');
INSERT INTO `video` VALUES (145, '', '2021-05-12', 19, 'video/第112期左家娇女.jpg', '', '第112期 左家娇女');
INSERT INTO `video` VALUES (146, '', '2021-05-11', 19, 'video/第111期左家娇女.jpg', '', '第111期 左家娇女');
INSERT INTO `video` VALUES (147, '', '2021-05-10', 19, 'video/第110期左家娇女.jpg', '', '第110期 左家娇女');
INSERT INTO `video` VALUES (148, '', '2021-05-09', 19, 'video/第109期左家娇女.jpg', '', '第109期 左家娇女');
INSERT INTO `video` VALUES (149, '', '2021-05-08', 19, 'video/第108期左家娇女.jpg', '', '第108期 左家娇女');
INSERT INTO `video` VALUES (150, '', '2021-05-07', 19, 'video/第107期左家娇女.jpg', '', '第107期 左家娇女');
INSERT INTO `video` VALUES (151, '', '2021-05-06', 19, 'video/第106期左家娇女.jpg', '', '第106期 左家娇女');
INSERT INTO `video` VALUES (152, '', '2021-04-30', 19, 'video/第105期左家娇女.jpg', '', '第105期 左家娇女');
INSERT INTO `video` VALUES (153, '', '2021-04-28', 19, 'video/第104期左家娇女.jpg', '', '第104期 左家娇女');
INSERT INTO `video` VALUES (154, '', '2021-04-27', 19, 'video/第103期左家娇女.jpg', '', '第103期 左家娇女');
INSERT INTO `video` VALUES (155, '', '2021-04-26', 19, 'video/第102期左家娇女.jpg', '', '第102期 左家娇女');
INSERT INTO `video` VALUES (156, '', '2021-04-25', 19, 'video/第101期左家娇女.jpg', '', '第101期 左家娇女');
INSERT INTO `video` VALUES (157, '', '2021-04-24', 19, 'video/第100期左家娇女.jpg', '', '第100期 左家娇女');
INSERT INTO `video` VALUES (158, '', '2021-04-23', 19, 'video/第99期左家娇女.jpg', '', '第99期 左家娇女');
INSERT INTO `video` VALUES (159, '', '2021-04-22', 19, 'video/第98期左家娇女.jpg', '', '第98期 左家娇女');
INSERT INTO `video` VALUES (160, '', '2021-04-21', 19, 'video/第97期左家娇女.jpg', '', '第97期 左家娇女');
INSERT INTO `video` VALUES (161, '', '2021-04-20', 19, 'video/第96期左家娇女.jpg', '', '第96期 左家娇女');
INSERT INTO `video` VALUES (162, '', '2021-04-19', 19, 'video/第95期左家娇女.jpg', '', '第95期 左家娇女');
INSERT INTO `video` VALUES (163, '', '2021-04-18', 19, 'video/第94期左家娇女.jpg', '', '第94期 左家娇女');
INSERT INTO `video` VALUES (164, '', '2021-04-17', 19, 'video/第93期左家娇女.jpg', '', '第93期 左家娇女');
INSERT INTO `video` VALUES (165, '', '2021-04-16', 19, 'video/第92期左家娇女.jpg', '', '第92期 左家娇女');
INSERT INTO `video` VALUES (166, '', '2021-04-15', 19, 'video/第91期左家娇女.jpg', '', '第91期 左家娇女');
INSERT INTO `video` VALUES (167, '', '2021-04-14', 19, 'video/第90期左家娇女.jpg', '', '第90期 左家娇女');
INSERT INTO `video` VALUES (168, '', '2021-04-13', 19, 'video/第89期左家娇女.jpg', '', '第89期 左家娇女');
INSERT INTO `video` VALUES (169, '', '2021-04-12', 19, 'video/第88期左家娇女.jpg', '', '第88期 左家娇女');
INSERT INTO `video` VALUES (170, '', '2021-04-11', 19, 'video/第87期左家娇女.jpg', '', '第87期 左家娇女');
INSERT INTO `video` VALUES (171, '', '2021-04-10', 19, 'video/第86期左家娇女.jpg', '', '第86期 左家娇女');
INSERT INTO `video` VALUES (172, '', '2021-04-08', 19, 'video/第85期左家娇女.jpg', '', '第85期 左家娇女');
INSERT INTO `video` VALUES (173, '', '2021-04-07', 19, 'video/第84期左家娇女.jpg', '', '第84期 左家娇女');
INSERT INTO `video` VALUES (174, '', '2021-04-06', 19, 'video/第83期左家娇女.jpg', '', '第83期 左家娇女');
INSERT INTO `video` VALUES (175, '', '2021-04-05', 19, 'video/第82期左家娇女.jpg', '', '第82期 左家娇女');
INSERT INTO `video` VALUES (176, '', '2021-04-04', 19, 'video/第81期左家娇女.jpg', '', '第81期 左家娇女');
INSERT INTO `video` VALUES (177, '', '2021-04-03', 19, 'video/第80期左家娇女.jpg', '', '第80期 左家娇女');
INSERT INTO `video` VALUES (178, '', '2021-04-02', 19, 'video/第79期左家娇女.jpg', '', '第79期 左家娇女');
INSERT INTO `video` VALUES (179, '', '2021-04-01', 19, 'video/第78期左家娇女.jpg', '', '第78期 左家娇女');
INSERT INTO `video` VALUES (180, '', '2021-03-31', 19, 'video/第77期左家娇女.jpg', '', '第77期 左家娇女');
INSERT INTO `video` VALUES (181, '', '2021-03-30', 19, 'video/第76期左家娇女.jpg', '', '第76期 左家娇女');
INSERT INTO `video` VALUES (182, '', '2021-03-29', 19, 'video/第75期左家娇女.jpg', '', '第75期 左家娇女');
INSERT INTO `video` VALUES (183, '', '2021-03-28', 19, 'video/第74期左家娇女.jpg', '', '第74期 左家娇女');
INSERT INTO `video` VALUES (184, '', '2021-03-27', 19, 'video/第73期左家娇女.jpg', '', '第73期 左家娇女');
INSERT INTO `video` VALUES (185, '', '2021-03-26', 19, 'video/第72期左家娇女.jpg', '', '第72期 左家娇女');
INSERT INTO `video` VALUES (186, '', '2021-03-25', 19, 'video/第71期左家娇女.jpg', '', '第71期 左家娇女');
INSERT INTO `video` VALUES (187, '', '2021-03-24', 19, 'video/第70期左家娇女.jpg', '', '第70期 左家娇女');
INSERT INTO `video` VALUES (188, '', '2021-03-23', 19, 'video/第69期左家娇女.jpg', '', '第69期 左家娇女');
INSERT INTO `video` VALUES (189, '', '2021-03-22', 19, 'video/第68期左家娇女.jpg', '', '第68期 左家娇女');
INSERT INTO `video` VALUES (190, '', '2021-03-21', 19, 'video/第67期左家娇女.jpg', '', '第67期 左家娇女');
INSERT INTO `video` VALUES (191, '', '2021-03-20', 19, 'video/第66期左家娇女.jpg', '', '第66期 左家娇女');
INSERT INTO `video` VALUES (192, '', '2021-03-19', 19, 'video/第65期左家娇女.jpg', '', '第65期 左家娇女');
INSERT INTO `video` VALUES (193, '', '2021-03-18', 19, 'video/第64期左家娇女.jpg', '', '第64期 左家娇女');
INSERT INTO `video` VALUES (194, '', '2021-03-17', 19, 'video/第63期左家娇女.jpg', '', '第63期 左家娇女');
INSERT INTO `video` VALUES (195, '', '2021-03-15', 19, 'video/第62期左家娇女.jpg', '', '第62期 左家娇女');
INSERT INTO `video` VALUES (196, '', '2021-03-14', 19, 'video/第61期左家娇女.jpg', '', '第61期 左家娇女');
INSERT INTO `video` VALUES (197, '', '2021-03-13', 19, 'video/第60期左家娇女.jpg', '', '第60期 左家娇女');
INSERT INTO `video` VALUES (198, '', '2021-03-12', 19, 'video/第59期左家娇女.jpg', '', '第59期 左家娇女');
INSERT INTO `video` VALUES (199, '', '2021-03-11', 19, 'video/第58期左家娇女.jpg', '', '第58期 左家娇女');
INSERT INTO `video` VALUES (200, '', '2021-03-09', 19, 'video/第57期左家娇女.jpg', '', '第57期 左家娇女');
INSERT INTO `video` VALUES (201, '', '2021-03-08', 19, 'video/第56期左家娇女.jpg', '', '第56期 左家娇女');
INSERT INTO `video` VALUES (202, '', '2021-03-07', 19, 'video/第55期左家娇女.jpg', '', '第55期 左家娇女');
INSERT INTO `video` VALUES (203, '', '2021-03-06', 19, 'video/第54期左家娇女.jpg', '', '第54期 左家娇女');
INSERT INTO `video` VALUES (204, '', '2021-03-05', 19, 'video/第53期左家娇女.jpg', '', '第53期 左家娇女');
INSERT INTO `video` VALUES (205, '', '2021-03-04', 19, 'video/第52期左家娇女.jpg', '', '第52期 左家娇女');
INSERT INTO `video` VALUES (206, '', '2021-03-03', 19, 'video/第51期左家娇女.jpg', '', '第51期 左家娇女');
INSERT INTO `video` VALUES (207, '', '2021-03-02', 19, 'video/第50期左家娇女.jpg', '', '第50期 左家娇女');
INSERT INTO `video` VALUES (208, '', '2021-03-01', 19, 'video/第49期左家娇女.jpg', '', '第49期 左家娇女');
INSERT INTO `video` VALUES (209, '', '2021-02-28', 19, 'video/第48期左家娇女.jpg', '', '第48期 左家娇女');
INSERT INTO `video` VALUES (210, '', '2021-02-27', 19, 'video/第47期左家娇女.jpg', '', '第47期 左家娇女');
INSERT INTO `video` VALUES (211, '', '2021-02-26', 19, 'video/第46期左家娇女.jpg', '', '第46期 左家娇女');
INSERT INTO `video` VALUES (212, '', '2021-02-25', 19, 'video/第45期左家娇女.jpg', '', '第45期 左家娇女');
INSERT INTO `video` VALUES (213, '', '2021-02-24', 19, 'video/第44期左家娇女.jpg', '', '第44期 左家娇女');
INSERT INTO `video` VALUES (214, '', '2021-02-23', 19, 'video/第43期左家娇女.jpg', '', '第43期 左家娇女');
INSERT INTO `video` VALUES (215, '', '2021-02-22', 19, 'video/第42期左家娇女.jpg', '', '第42期 左家娇女');
INSERT INTO `video` VALUES (216, '', '2021-02-21', 19, 'video/第41期左家娇女.jpg', '', '第41期 左家娇女');
INSERT INTO `video` VALUES (217, '', '2021-02-20', 19, 'video/第40期左家娇女.jpg', '', '第40期 左家娇女');
INSERT INTO `video` VALUES (218, '', '2021-02-19', 19, 'video/第39期左家娇女.jpg', '', '第39期 左家娇女');
INSERT INTO `video` VALUES (219, '', '2021-02-18', 19, 'video/第38期左家娇女.jpg', '', '第38期 左家娇女');
INSERT INTO `video` VALUES (220, '', '2021-02-10', 19, 'video/第37期左家娇女.jpg', '', '第37期 左家娇女');
INSERT INTO `video` VALUES (221, '', '2021-02-08', 19, 'video/第36期左家娇女.jpg', '', '第36期 左家娇女');
INSERT INTO `video` VALUES (222, '', '2021-02-07', 19, 'video/第35期左家娇女.jpg', '', '第35期 左家娇女');
INSERT INTO `video` VALUES (223, '', '2021-02-06', 19, 'video/第34期左家娇女.jpg', '', '第34期 左家娇女');
INSERT INTO `video` VALUES (224, '', '2021-02-05', 19, 'video/第33期左家娇女.jpg', '', '第33期 左家娇女');
INSERT INTO `video` VALUES (225, '', '2021-02-04', 19, 'video/第32期左家娇女.jpg', '', '第32期 左家娇女');
INSERT INTO `video` VALUES (226, '', '2021-02-03', 19, 'video/第31期左家娇女.jpg', '', '第31期 左家娇女');
INSERT INTO `video` VALUES (227, '', '2021-02-02', 19, 'video/第30期左家娇女.jpg', '', '第30期 左家娇女');
INSERT INTO `video` VALUES (228, '', '2021-02-01', 19, 'video/第29期左家娇女.jpg', '', '第29期 左家娇女');
INSERT INTO `video` VALUES (229, '', '2021-01-31', 19, 'video/第28期左家娇女.jpg', '', '第28期 左家娇女');
INSERT INTO `video` VALUES (230, '', '2021-01-30', 19, 'video/第27期左家娇女.jpg', '', '第27期 左家娇女');
INSERT INTO `video` VALUES (231, '', '2021-01-29', 19, 'video/第26期左家娇女.jpg', '', '第26期 左家娇女');
INSERT INTO `video` VALUES (232, '', '2021-01-28', 19, 'video/第25期左家娇女.jpg', '', '第25期 左家娇女');
INSERT INTO `video` VALUES (233, '', '2021-01-27', 19, 'video/第24期左家娇女.jpg', '', '第24期 左家娇女');
INSERT INTO `video` VALUES (234, '', '2021-01-26', 19, 'video/第23期左家娇女.jpg', '', '第23期 左家娇女');
INSERT INTO `video` VALUES (235, '', '2021-01-25', 19, 'video/第22期左家娇女.jpg', '', '第22期 左家娇女');
INSERT INTO `video` VALUES (236, '', '2021-01-24', 19, 'video/第21期左家娇女.jpg', '', '第21期 左家娇女');
INSERT INTO `video` VALUES (237, '', '2021-01-23', 19, 'video/第20期左家娇女.jpg', '', '第20期 左家娇女');
INSERT INTO `video` VALUES (238, '', '2021-01-22', 19, 'video/第19期左家娇女.jpg', '', '第19期 左家娇女');
INSERT INTO `video` VALUES (239, '', '2021-01-21', 19, 'video/第18期左家娇女.jpg', '', '第18期 左家娇女');
INSERT INTO `video` VALUES (240, '', '2021-01-20', 19, 'video/第17期左家娇女.jpg', '', '第17期 左家娇女');
INSERT INTO `video` VALUES (241, '', '2021-01-19', 19, 'video/第16期左家娇女.jpg', '', '第16期 左家娇女');
INSERT INTO `video` VALUES (242, '', '2021-01-18', 19, 'video/第15期左家娇女.jpg', '', '第15期 左家娇女');
INSERT INTO `video` VALUES (243, '', '2021-01-17', 19, 'video/第14期左家娇女.jpg', '', '第14期 左家娇女');
INSERT INTO `video` VALUES (244, '', '2021-01-16', 19, 'video/第13期左家娇女.jpg', '', '第13期 左家娇女');
INSERT INTO `video` VALUES (245, '', '2021-01-15', 19, 'video/第12期左家娇女.jpg', '', '第12期 左家娇女');
INSERT INTO `video` VALUES (246, '', '2021-01-14', 19, 'video/第11期左家娇女.jpg', '', '第11期 左家娇女');
INSERT INTO `video` VALUES (247, '', '2021-01-13', 19, 'video/第10期左家娇女.jpg', '', '第10期 左家娇女');
INSERT INTO `video` VALUES (248, '', '2021-01-12', 19, 'video/第9期左家娇女.jpg', '', '第9期 左家娇女');
INSERT INTO `video` VALUES (249, '', '2021-01-11', 19, 'video/第8期左家娇女.jpg', '', '第8期 左家娇女');
INSERT INTO `video` VALUES (250, '', '2021-01-10', 19, 'video/第7期左家娇女.jpg', '', '第7期 左家娇女');
INSERT INTO `video` VALUES (251, '', '2021-01-09', 19, 'video/第6期左家娇女.jpg', '', '第6期 左家娇女');
INSERT INTO `video` VALUES (252, '', '2021-01-08', 19, 'video/第5期左家娇女.jpg', '', '第5期 左家娇女');
INSERT INTO `video` VALUES (253, '', '2021-01-07', 19, 'video/第4期左家娇女.jpg', '', '第4期 左家娇女');
INSERT INTO `video` VALUES (254, '', '2021-01-06', 19, 'video/第3期左家娇女.jpg', '', '第3期 左家娇女');
INSERT INTO `video` VALUES (255, '', '2021-01-05', 19, 'video/第2期左家娇女.jpg', '', '第2期 左家娇女');
INSERT INTO `video` VALUES (256, '', '2021-01-04', 19, 'video/第1期左家娇女.jpg', '', '第1期 左家娇女');
INSERT INTO `video` VALUES (257, '', '2021-06-16', 4, 'video/第1期春深似海.jpg', '', '第1期 春深似海');
INSERT INTO `video` VALUES (259, '', '2020-10-01', 100, 'video/第12期朋心合力.jpg', '', '第12期 朋心合力');
INSERT INTO `video` VALUES (260, '', '2020-09-26', 100, 'video/第11期朋心合力.jpg', '', '第11期 朋心合力');
INSERT INTO `video` VALUES (261, '', '2020-09-19', 100, 'video/第10期朋心合力.jpg', '', '第10期 朋心合力');
INSERT INTO `video` VALUES (262, '', '2020-09-05', 100, 'video/第9期朋心合力.jpg', '', '第9期 朋心合力');
INSERT INTO `video` VALUES (263, '', '2020-08-29', 100, 'video/第8期朋心合力.jpg', '', '第8期 朋心合力');
INSERT INTO `video` VALUES (264, '', '2020-08-15', 100, 'video/第7期朋心合力.jpg', '', '第7期 朋心合力');
INSERT INTO `video` VALUES (265, '', '2020-08-08', 100, 'video/第6期朋心合力.jpg', '', '第6期 朋心合力');
INSERT INTO `video` VALUES (266, '', '2020-08-01', 100, 'video/第5期朋心合力.jpg', '', '第5期 朋心合力');
INSERT INTO `video` VALUES (267, '', '2020-07-18', 100, 'video/第4期朋心合力.jpg', '', '第4期 朋心合力');
INSERT INTO `video` VALUES (268, '', '2020-07-11', 100, 'video/第3期朋心合力.jpg', '', '第3期 朋心合力');
INSERT INTO `video` VALUES (279, '', '2020-07-04', 100, 'video/第2期朋心合力.jpg', '', '第2期 朋心合力');
INSERT INTO `video` VALUES (280, '', '2020-06-27', 100, 'video/第1期朋心合力.jpg', '', '第1期 朋心合力');
INSERT INTO `video` VALUES (281, '', '2017-02-07', 105, 'video/第10期玉殿嫦娥.jpg', '', '第10期 玉殿嫦娥');
INSERT INTO `video` VALUES (282, '', '2017-02-06', 105, 'video/第9期玉殿嫦娥.jpg', '', '第9期 玉殿嫦娥');
INSERT INTO `video` VALUES (283, '', '2017-02-05', 105, 'video/第8期玉殿嫦娥.jpg', '', '第8期 玉殿嫦娥');
INSERT INTO `video` VALUES (284, '', '2017-02-04', 105, 'video/第7期玉殿嫦娥.jpg', '', '第7期 玉殿嫦娥');
INSERT INTO `video` VALUES (285, '', '2017-02-03', 105, 'video/第6期玉殿嫦娥.jpg', '', '第6期 玉殿嫦娥');
INSERT INTO `video` VALUES (286, '', '2017-02-02', 105, 'video/第5期玉殿嫦娥.jpg', '', '第5期 玉殿嫦娥');
INSERT INTO `video` VALUES (287, '', '2017-02-01', 105, 'video/第4期玉殿嫦娥.jpg', '', '第4期 玉殿嫦娥');
INSERT INTO `video` VALUES (288, '', '2017-01-31', 105, 'video/第3期玉殿嫦娥.jpg', '', '第3期 玉殿嫦娥');
INSERT INTO `video` VALUES (289, '', '2017-01-30', 105, 'video/第2期玉殿嫦娥.jpg', '', '第2期 玉殿嫦娥');
INSERT INTO `video` VALUES (290, '', '2017-01-29', 105, 'video/第1期玉殿嫦娥.jpg', '', '第1期 玉殿嫦娥');
INSERT INTO `video` VALUES (301, '', '2019-04-19', 111, 'video/第11期奋勇向前.jpg', '', '第11期 奋勇向前');
INSERT INTO `video` VALUES (302, '', '2019-04-05', 111, 'video/第10期奋勇向前.jpg', '', '第10期 奋勇向前');
INSERT INTO `video` VALUES (303, '', '2019-03-22', 111, 'video/第9期奋勇向前.jpg', '', '第9期 奋勇向前');
INSERT INTO `video` VALUES (304, '', '2019-03-15', 111, 'video/第8期奋勇向前.jpg', '', '第8期 奋勇向前');
INSERT INTO `video` VALUES (305, '', '2019-03-08', 111, 'video/第7期奋勇向前.jpg', '', '第7期 奋勇向前');
INSERT INTO `video` VALUES (306, '', '2019-03-01', 111, 'video/第6期奋勇向前.jpg', '', '第6期 奋勇向前');
INSERT INTO `video` VALUES (307, '', '2019-02-22', 111, 'video/第5期奋勇向前.jpg', '', '第5期 奋勇向前');
INSERT INTO `video` VALUES (308, '', '2019-02-15', 111, 'video/第4期奋勇向前.jpg', '', '第4期 奋勇向前');
INSERT INTO `video` VALUES (309, '', '2019-02-08', 111, 'video/第3期奋勇向前.jpg', '', '第3期 奋勇向前');
INSERT INTO `video` VALUES (310, '', '2019-02-01', 111, 'video/第2期奋勇向前.jpg', '', '第2期 奋勇向前');
INSERT INTO `video` VALUES (321, '', '2019-01-25', 111, 'video/第1期奋勇向前.jpg', '', '第1期 奋勇向前');
INSERT INTO `video` VALUES (322, '', '2018-04-13', 112, 'video/第14期力争上游.jpg', '', '第14期 力争上游');
INSERT INTO `video` VALUES (323, '', '2018-04-06', 112, 'video/第13期力争上游.jpg', '', '第13期 力争上游');
INSERT INTO `video` VALUES (324, '', '2018-03-30', 112, 'video/第12期力争上游.jpg', '', '第12期 力争上游');
INSERT INTO `video` VALUES (325, '', '2018-03-23', 112, 'video/第11期力争上游.jpg', '', '第11期 力争上游');
INSERT INTO `video` VALUES (326, '', '2018-03-16', 112, 'video/第10期力争上游.jpg', '', '第10期 力争上游');
INSERT INTO `video` VALUES (327, '', '2018-03-09', 112, 'video/第9期力争上游.jpg', '', '第9期 力争上游');
INSERT INTO `video` VALUES (328, '', '2018-03-02', 112, 'video/第8期力争上游.jpg', '', '第8期 力争上游');
INSERT INTO `video` VALUES (329, '', '2018-02-23', 112, 'video/第7期力争上游.jpg', '', '第7期 力争上游');
INSERT INTO `video` VALUES (330, '', '2018-02-09', 112, 'video/第6期力争上游.jpg', '', '第6期 力争上游');
INSERT INTO `video` VALUES (331, '', '2018-02-02', 112, 'video/第5期力争上游.jpg', '', '第5期 力争上游');
INSERT INTO `video` VALUES (342, '', '2018-01-26', 112, 'video/第4期力争上游.jpg', '', '第4期 力争上游');
INSERT INTO `video` VALUES (343, '', '2018-01-19', 112, 'video/第3期力争上游.jpg', '', '第3期 力争上游');
INSERT INTO `video` VALUES (344, '', '2018-01-12', 112, 'video/第2期力争上游.jpg', '', '第2期 力争上游');
INSERT INTO `video` VALUES (345, '', '2018-01-05', 112, 'video/第1期力争上游.jpg', '', '第1期 力争上游');
INSERT INTO `video` VALUES (346, '', '2019-08-24', 117, 'video/第10期琪花瑶草.jpg', '', '第10期 琪花瑶草');
INSERT INTO `video` VALUES (347, '', '2019-08-17', 117, 'video/第9期琪花瑶草.jpg', '', '第9期 琪花瑶草');
INSERT INTO `video` VALUES (348, '', '2019-08-10', 117, 'video/第8期琪花瑶草.jpg', '', '第8期 琪花瑶草');
INSERT INTO `video` VALUES (349, '', '2019-08-03', 117, 'video/第7期琪花瑶草.jpg', '', '第7期 琪花瑶草');
INSERT INTO `video` VALUES (350, '', '2019-07-27', 117, 'video/第6期琪花瑶草.jpg', '', '第6期 琪花瑶草');
INSERT INTO `video` VALUES (351, '', '2019-07-20', 117, 'video/第5期琪花瑶草.jpg', '', '第5期 琪花瑶草');
INSERT INTO `video` VALUES (352, '', '2019-07-13', 117, 'video/第4期琪花瑶草.jpg', '', '第4期 琪花瑶草');
INSERT INTO `video` VALUES (353, '', '2019-07-06', 117, 'video/第3期琪花瑶草.jpg', '', '第3期 琪花瑶草');
INSERT INTO `video` VALUES (354, '', '2019-06-29', 117, 'video/第2期琪花瑶草.jpg', '', '第2期 琪花瑶草');
INSERT INTO `video` VALUES (355, '', '2019-06-22', 117, 'video/第1期琪花瑶草.jpg', '', '第1期 琪花瑶草');
INSERT INTO `video` VALUES (367, '', '2016-06-05', 125, 'video/第23期多心伤感.jpg', '', '第23期 多心伤感');
INSERT INTO `video` VALUES (368, '', '2016-05-29', 125, 'video/第22期多心伤感.jpg', '', '第22期 多心伤感');
INSERT INTO `video` VALUES (369, '', '2016-05-22', 125, 'video/第21期多心伤感.jpg', '', '第21期 多心伤感');
INSERT INTO `video` VALUES (370, '', '2016-05-15', 125, 'video/第20期多心伤感.jpg', '', '第20期 多心伤感');
INSERT INTO `video` VALUES (371, '', '2016-05-08', 125, 'video/第19期多心伤感.jpg', '', '第19期 多心伤感');
INSERT INTO `video` VALUES (372, '', '2016-05-01', 125, 'video/第18期多心伤感.jpg', '', '第18期 多心伤感');
INSERT INTO `video` VALUES (373, '', '2016-04-24', 125, 'video/第17期多心伤感.jpg', '', '第17期 多心伤感');
INSERT INTO `video` VALUES (374, '', '2016-04-17', 125, 'video/第16期多心伤感.jpg', '', '第16期 多心伤感');
INSERT INTO `video` VALUES (375, '', '2016-04-10', 125, 'video/第15期多心伤感.jpg', '', '第15期 多心伤感');
INSERT INTO `video` VALUES (376, '', '2016-04-03', 125, 'video/第14期多心伤感.jpg', '', '第14期 多心伤感');
INSERT INTO `video` VALUES (377, '', '2016-06-05', 125, 'video/第13期多心伤感.jpg', '', '第13期 多心伤感');
INSERT INTO `video` VALUES (378, '', '2016-05-29', 125, 'video/第12期多心伤感.jpg', '', '第12期 多心伤感');
INSERT INTO `video` VALUES (379, '', '2016-05-22', 125, 'video/第11期多心伤感.jpg', '', '第11期 多心伤感');
INSERT INTO `video` VALUES (380, '', '2016-05-15', 125, 'video/第10期多心伤感.jpg', '', '第10期 多心伤感');
INSERT INTO `video` VALUES (381, '', '2016-05-08', 125, 'video/第9期多心伤感.jpg', '', '第9期 多心伤感');
INSERT INTO `video` VALUES (382, '', '2016-05-01', 125, 'video/第8期多心伤感.jpg', '', '第8期 多心伤感');
INSERT INTO `video` VALUES (383, '', '2016-04-24', 125, 'video/第7期多心伤感.jpg', '', '第7期 多心伤感');
INSERT INTO `video` VALUES (384, '', '2016-04-17', 125, 'video/第6期多心伤感.jpg', '', '第6期 多心伤感');
INSERT INTO `video` VALUES (385, '', '2016-04-10', 125, 'video/第5期多心伤感.jpg', '', '第5期 多心伤感');
INSERT INTO `video` VALUES (386, '', '2016-04-03', 125, 'video/第4期多心伤感.jpg', '', '第4期 多心伤感');
INSERT INTO `video` VALUES (387, '', '2016-03-27', 125, 'video/第3期多心伤感.jpg', '', '第3期 多心伤感');
INSERT INTO `video` VALUES (388, '', '2016-03-20', 125, 'video/第2期多心伤感.jpg', '', '第2期 多心伤感');
INSERT INTO `video` VALUES (389, '', '2016-02-14', 125, 'video/第1期多心伤感.jpg', '', '第1期 多心伤感');
INSERT INTO `video` VALUES (390, '', '2021-06-19', 6, 'video/第16期珠泪偷弹.jpg', '', '第16期 珠泪偷弹');
INSERT INTO `video` VALUES (391, '', '2021-06-11', 6, 'video/第15期珠泪偷弹.jpg', '', '第15期 珠泪偷弹');
INSERT INTO `video` VALUES (392, '', '2021-06-04', 6, 'video/第14期珠泪偷弹.jpg', '', '第14期 珠泪偷弹');
INSERT INTO `video` VALUES (393, '', '2021-05-28', 6, 'video/第13期珠泪偷弹.jpg', '', '第13期 珠泪偷弹');
INSERT INTO `video` VALUES (394, '', '2021-05-21', 6, 'video/第12期珠泪偷弹.jpg', '', '第12期 珠泪偷弹');
INSERT INTO `video` VALUES (395, '', '2021-05-14', 6, 'video/第11期珠泪偷弹.jpg', '', '第11期 珠泪偷弹');
INSERT INTO `video` VALUES (396, '', '2021-05-07', 6, 'video/第10期珠泪偷弹.jpg', '', '第10期 珠泪偷弹');
INSERT INTO `video` VALUES (397, '', '2021-04-30', 6, 'video/第9期珠泪偷弹.jpg', '', '第9期 珠泪偷弹');
INSERT INTO `video` VALUES (398, '', '2021-06-19', 6, 'video/第8期珠泪偷弹.jpg', '', '第8期 珠泪偷弹');
INSERT INTO `video` VALUES (399, '', '2021-06-11', 6, 'video/第7期珠泪偷弹.jpg', '', '第7期 珠泪偷弹');
INSERT INTO `video` VALUES (400, '', '2021-06-04', 6, 'video/第6期珠泪偷弹.jpg', '', '第6期 珠泪偷弹');
INSERT INTO `video` VALUES (401, '', '2021-05-28', 6, 'video/第5期珠泪偷弹.jpg', '', '第5期 珠泪偷弹');
INSERT INTO `video` VALUES (402, '', '2021-05-21', 6, 'video/第4期珠泪偷弹.jpg', '', '第4期 珠泪偷弹');
INSERT INTO `video` VALUES (403, '', '2021-05-14', 6, 'video/第3期珠泪偷弹.jpg', '', '第3期 珠泪偷弹');
INSERT INTO `video` VALUES (404, '', '2021-05-07', 6, 'video/第2期珠泪偷弹.jpg', '', '第2期 珠泪偷弹');
INSERT INTO `video` VALUES (405, '', '2021-04-30', 6, 'video/第1期珠泪偷弹.jpg', '', '第1期 珠泪偷弹');
INSERT INTO `video` VALUES (406, '', '2021-04-11', 13, 'video/第12期一悲一喜.jpg', '', '第12期 一悲一喜');
INSERT INTO `video` VALUES (407, '', '2021-04-04', 13, 'video/第11期一悲一喜.jpg', '', '第11期 一悲一喜');
INSERT INTO `video` VALUES (408, '', '2021-03-28', 13, 'video/第10期一悲一喜.jpg', '', '第10期 一悲一喜');
INSERT INTO `video` VALUES (409, '', '2021-03-21', 13, 'video/第9期一悲一喜.jpg', '', '第9期 一悲一喜');
INSERT INTO `video` VALUES (410, '', '2021-03-14', 13, 'video/第8期一悲一喜.jpg', '', '第8期 一悲一喜');
INSERT INTO `video` VALUES (411, '', '2021-03-07', 13, 'video/第7期一悲一喜.jpg', '', '第7期 一悲一喜');
INSERT INTO `video` VALUES (412, '', '2021-02-28', 13, 'video/第6期一悲一喜.jpg', '', '第6期 一悲一喜');
INSERT INTO `video` VALUES (413, '', '2021-02-21', 13, 'video/第5期一悲一喜.jpg', '', '第5期 一悲一喜');
INSERT INTO `video` VALUES (414, '', '2021-02-14', 13, 'video/第4期一悲一喜.jpg', '', '第4期 一悲一喜');
INSERT INTO `video` VALUES (415, '', '2021-02-07', 13, 'video/第3期一悲一喜.jpg', '', '第3期 一悲一喜');
INSERT INTO `video` VALUES (426, '', '2021-01-31', 13, 'video/第2期一悲一喜.jpg', '', '第2期 一悲一喜');
INSERT INTO `video` VALUES (427, '', '2021-01-24', 13, 'video/第1期一悲一喜.jpg', '', '第1期 一悲一喜');
INSERT INTO `video` VALUES (446, '', '2021-06-17', 22, 'video/第20期暮云春树.jpg', '', '第20期 暮云春树');
INSERT INTO `video` VALUES (447, '', '2021-06-10', 22, 'video/第19期暮云春树.jpg', '', '第19期 暮云春树');
INSERT INTO `video` VALUES (448, '', '2021-06-03', 22, 'video/第18期暮云春树.jpg', '', '第18期 暮云春树');
INSERT INTO `video` VALUES (449, '', '2021-05-27', 22, 'video/第17期暮云春树.jpg', '', '第17期 暮云春树');
INSERT INTO `video` VALUES (450, '', '2021-05-20', 22, 'video/第16期暮云春树.jpg', '', '第16期 暮云春树');
INSERT INTO `video` VALUES (451, '', '2021-05-13', 22, 'video/第15期暮云春树.jpg', '', '第15期 暮云春树');
INSERT INTO `video` VALUES (452, '', '2021-05-06', 22, 'video/第14期暮云春树.jpg', '', '第14期 暮云春树');
INSERT INTO `video` VALUES (453, '', '2021-04-29', 22, 'video/第13期暮云春树.jpg', '', '第13期 暮云春树');
INSERT INTO `video` VALUES (454, '', '2021-04-22', 22, 'video/第12期暮云春树.jpg', '', '第12期 暮云春树');
INSERT INTO `video` VALUES (455, '', '2021-04-15', 22, 'video/第11期暮云春树.jpg', '', '第11期 暮云春树');
INSERT INTO `video` VALUES (456, '', '2021-06-17', 22, 'video/第10期暮云春树.jpg', '', '第10期 暮云春树');
INSERT INTO `video` VALUES (457, '', '2021-06-10', 22, 'video/第9期暮云春树.jpg', '', '第9期 暮云春树');
INSERT INTO `video` VALUES (458, '', '2021-06-03', 22, 'video/第8期暮云春树.jpg', '', '第8期 暮云春树');
INSERT INTO `video` VALUES (459, '', '2021-05-27', 22, 'video/第7期暮云春树.jpg', '', '第7期 暮云春树');
INSERT INTO `video` VALUES (460, '', '2021-05-20', 22, 'video/第6期暮云春树.jpg', '', '第6期 暮云春树');
INSERT INTO `video` VALUES (461, '', '2021-05-13', 22, 'video/第5期暮云春树.jpg', '', '第5期 暮云春树');
INSERT INTO `video` VALUES (462, '', '2021-05-06', 22, 'video/第4期暮云春树.jpg', '', '第4期 暮云春树');
INSERT INTO `video` VALUES (463, '', '2021-04-29', 22, 'video/第3期暮云春树.jpg', '', '第3期 暮云春树');
INSERT INTO `video` VALUES (464, '', '2021-04-22', 22, 'video/第2期暮云春树.jpg', '', '第2期 暮云春树');
INSERT INTO `video` VALUES (465, '', '2021-04-15', 22, 'video/第1期暮云春树.jpg', '', '第1期 暮云春树');
INSERT INTO `video` VALUES (466, '', '2021-04-16', 31, 'video/第12期博古通今.jpg', '', '第12期 博古通今');
INSERT INTO `video` VALUES (467, '', '2021-04-09', 31, 'video/第11期博古通今.jpg', '', '第11期 博古通今');
INSERT INTO `video` VALUES (468, '', '2021-04-02', 31, 'video/第10期博古通今.jpg', '', '第10期 博古通今');
INSERT INTO `video` VALUES (469, '', '2021-03-26', 31, 'video/第9期博古通今.jpg', '', '第9期 博古通今');
INSERT INTO `video` VALUES (470, '', '2021-03-19', 31, 'video/第8期博古通今.jpg', '', '第8期 博古通今');
INSERT INTO `video` VALUES (471, '', '2021-03-12', 31, 'video/第7期博古通今.jpg', '', '第7期 博古通今');
INSERT INTO `video` VALUES (472, '', '2021-03-05', 31, 'video/第6期博古通今.jpg', '', '第6期 博古通今');
INSERT INTO `video` VALUES (473, '', '2021-02-26', 31, 'video/第5期博古通今.jpg', '', '第5期 博古通今');
INSERT INTO `video` VALUES (474, '', '2021-02-19', 31, 'video/第4期博古通今.jpg', '', '第4期 博古通今');
INSERT INTO `video` VALUES (475, '', '2021-02-14', 31, 'video/第3期博古通今.jpg', '', '第3期 博古通今');
INSERT INTO `video` VALUES (486, '', '2021-02-05', 31, 'video/第2期博古通今.jpg', '', '第2期 博古通今');
INSERT INTO `video` VALUES (487, '', '2021-01-29', 31, 'video/第1期博古通今.jpg', '', '第1期 博古通今');
INSERT INTO `video` VALUES (488, '', '2021-03-28', 38, 'video/第12期开卷有益.jpg', '', '第12期 开卷有益');
INSERT INTO `video` VALUES (489, '', '2021-03-21', 38, 'video/第11期开卷有益.jpg', '', '第11期 开卷有益');
INSERT INTO `video` VALUES (490, '', '2021-03-14', 38, 'video/第10期开卷有益.jpg', '', '第10期 开卷有益');
INSERT INTO `video` VALUES (491, '', '2021-03-07', 38, 'video/第9期开卷有益.jpg', '', '第9期 开卷有益');
INSERT INTO `video` VALUES (492, '', '2021-02-28', 38, 'video/第8期开卷有益.jpg', '', '第8期 开卷有益');
INSERT INTO `video` VALUES (493, '', '2021-02-21', 38, 'video/第7期开卷有益.jpg', '', '第7期 开卷有益');
INSERT INTO `video` VALUES (494, '', '2021-02-14', 38, 'video/第6期开卷有益.jpg', '', '第6期 开卷有益');
INSERT INTO `video` VALUES (495, '', '2021-02-07', 38, 'video/第5期开卷有益.jpg', '', '第5期 开卷有益');
INSERT INTO `video` VALUES (496, '', '2021-01-31', 38, 'video/第4期开卷有益.jpg', '', '第4期 开卷有益');
INSERT INTO `video` VALUES (497, '', '2021-01-24', 38, 'video/第3期开卷有益.jpg', '', '第3期 开卷有益');
INSERT INTO `video` VALUES (508, '', '2021-01-17', 38, 'video/第2期开卷有益.jpg', '', '第2期 开卷有益');
INSERT INTO `video` VALUES (509, '', '2021-01-10', 38, 'video/第1期开卷有益.jpg', '', '第1期 开卷有益');
INSERT INTO `video` VALUES (510, '', '2021-05-14', 92, 'video/第8期清辞丽曲.jpg', '', '第8期 清辞丽曲');
INSERT INTO `video` VALUES (511, '', '2021-04-21', 92, 'video/第7期清辞丽曲.jpg', '', '第7期 清辞丽曲');
INSERT INTO `video` VALUES (512, '', '2021-04-14', 92, 'video/第6期清辞丽曲.jpg', '', '第6期 清辞丽曲');
INSERT INTO `video` VALUES (513, '', '2021-04-07', 92, 'video/第5期清辞丽曲.jpg', '', '第5期 清辞丽曲');
INSERT INTO `video` VALUES (514, '', '2021-03-31', 92, 'video/第4期清辞丽曲.jpg', '', '第4期 清辞丽曲');
INSERT INTO `video` VALUES (515, '', '2021-03-24', 92, 'video/第3期清辞丽曲.jpg', '', '第3期 清辞丽曲');
INSERT INTO `video` VALUES (516, '', '2021-03-17', 92, 'video/第2期清辞丽曲.jpg', '', '第2期 清辞丽曲');
INSERT INTO `video` VALUES (517, '', '2021-03-10', 92, 'video/第1期清辞丽曲.jpg', '', '第1期 清辞丽曲');
INSERT INTO `video` VALUES (526, '', '2021-03-28', 131, 'video/第33期红情绿意.jpg', '', '第33期 红情绿意');
INSERT INTO `video` VALUES (527, '', '2021-03-27', 131, 'video/第32期红情绿意.jpg', '', '第32期 红情绿意');
INSERT INTO `video` VALUES (528, '', '2021-03-27', 131, 'video/第31期红情绿意.jpg', '', '第31期 红情绿意');
INSERT INTO `video` VALUES (529, '', '2021-03-20', 131, 'video/第30期红情绿意.jpg', '', '第30期 红情绿意');
INSERT INTO `video` VALUES (530, '', '2021-03-20', 131, 'video/第29期红情绿意.jpg', '', '第29期 红情绿意');
INSERT INTO `video` VALUES (531, '', '2021-03-13', 131, 'video/第28期红情绿意.jpg', '', '第28期 红情绿意');
INSERT INTO `video` VALUES (532, '', '2021-03-13', 131, 'video/第27期红情绿意.jpg', '', '第27期 红情绿意');
INSERT INTO `video` VALUES (533, '', '2021-03-06', 131, 'video/第26期红情绿意.jpg', '', '第26期 红情绿意');
INSERT INTO `video` VALUES (534, '', '2021-03-06', 131, 'video/第25期红情绿意.jpg', '', '第25期 红情绿意');
INSERT INTO `video` VALUES (535, '', '2021-02-27', 131, 'video/第24期红情绿意.jpg', '', '第24期 红情绿意');
INSERT INTO `video` VALUES (536, '', '2021-03-28', 131, 'video/第23期红情绿意.jpg', '', '第23期 红情绿意');
INSERT INTO `video` VALUES (537, '', '2021-03-27', 131, 'video/第22期红情绿意.jpg', '', '第22期 红情绿意');
INSERT INTO `video` VALUES (538, '', '2021-03-27', 131, 'video/第21期红情绿意.jpg', '', '第21期 红情绿意');
INSERT INTO `video` VALUES (539, '', '2021-03-20', 131, 'video/第20期红情绿意.jpg', '', '第20期 红情绿意');
INSERT INTO `video` VALUES (540, '', '2021-03-20', 131, 'video/第19期红情绿意.jpg', '', '第19期 红情绿意');
INSERT INTO `video` VALUES (541, '', '2021-03-13', 131, 'video/第18期红情绿意.jpg', '', '第18期 红情绿意');
INSERT INTO `video` VALUES (542, '', '2021-03-13', 131, 'video/第17期红情绿意.jpg', '', '第17期 红情绿意');
INSERT INTO `video` VALUES (543, '', '2021-03-06', 131, 'video/第16期红情绿意.jpg', '', '第16期 红情绿意');
INSERT INTO `video` VALUES (544, '', '2021-03-06', 131, 'video/第15期红情绿意.jpg', '', '第15期 红情绿意');
INSERT INTO `video` VALUES (545, '', '2021-02-27', 131, 'video/第14期红情绿意.jpg', '', '第14期 红情绿意');
INSERT INTO `video` VALUES (546, '', '2021-02-27', 131, 'video/第13期红情绿意.jpg', '', '第13期 红情绿意');
INSERT INTO `video` VALUES (547, '', '2021-02-20', 131, 'video/第12期红情绿意.jpg', '', '第12期 红情绿意');
INSERT INTO `video` VALUES (548, '', '2021-02-20', 131, 'video/第11期红情绿意.jpg', '', '第11期 红情绿意');
INSERT INTO `video` VALUES (549, '', '2021-02-13', 131, 'video/第10期红情绿意.jpg', '', '第10期 红情绿意');
INSERT INTO `video` VALUES (550, '', '2021-02-13', 131, 'video/第9期红情绿意.jpg', '', '第9期 红情绿意');
INSERT INTO `video` VALUES (551, '', '2021-02-06', 131, 'video/第8期红情绿意.jpg', '', '第8期 红情绿意');
INSERT INTO `video` VALUES (552, '', '2021-02-06', 131, 'video/第7期红情绿意.jpg', '', '第7期 红情绿意');
INSERT INTO `video` VALUES (553, '', '2021-01-30', 131, 'video/第6期红情绿意.jpg', '', '第6期 红情绿意');
INSERT INTO `video` VALUES (554, '', '2021-01-30', 131, 'video/第5期红情绿意.jpg', '', '第5期 红情绿意');
INSERT INTO `video` VALUES (555, '', '2021-01-23', 131, 'video/第4期红情绿意.jpg', '', '第4期 红情绿意');
INSERT INTO `video` VALUES (556, '', '2021-01-23', 131, 'video/第3期红情绿意.jpg', '', '第3期 红情绿意');
INSERT INTO `video` VALUES (557, '', '2021-01-16', 131, 'video/第2期红情绿意.jpg', '', '第2期 红情绿意');
INSERT INTO `video` VALUES (558, '', '2021-01-16', 131, 'video/第1期红情绿意.jpg', '', '第1期 红情绿意');

SET FOREIGN_KEY_CHECKS = 1;
