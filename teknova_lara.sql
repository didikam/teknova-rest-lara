/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 100605
 Source Host           : localhost:3306
 Source Schema         : teknova_lara

 Target Server Type    : MySQL
 Target Server Version : 100605
 File Encoding         : 65001

 Date: 28/01/2022 15:55:26
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `failed_jobs_uuid_unique`(`uuid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (3, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for pegawai
-- ----------------------------
DROP TABLE IF EXISTS `pegawai`;
CREATE TABLE `pegawai`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nip` int(11) NOT NULL,
  `nama` varchar(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `email` varchar(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `jabatan` varchar(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `created_at` datetime(0) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 101 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pegawai
-- ----------------------------
INSERT INTO `pegawai` VALUES (1, 11112, 'Test 2', 'test2@gmail.com', 'Kepala seksi', NULL, NULL);
INSERT INTO `pegawai` VALUES (2, 11113, 'Test 3', 'test3@gmail.com', 'Kepala Bidang', NULL, NULL);
INSERT INTO `pegawai` VALUES (3, 11114, 'Test 4', 'test2@gmail.com', 'Kepala Seksi', NULL, NULL);
INSERT INTO `pegawai` VALUES (4, 11115, 'Test 5', 'test3@gmail.com', 'Kepala Bidang', NULL, NULL);
INSERT INTO `pegawai` VALUES (5, 11116, 'Test 6', 'test2@gmail.com', 'Kepala Seksi', NULL, NULL);
INSERT INTO `pegawai` VALUES (6, 11117, 'Test 7', 'test3@gmail.com', 'Staff', NULL, NULL);
INSERT INTO `pegawai` VALUES (7, 11118, 'Test 8', 'test2@gmail.com', 'Staff', NULL, NULL);
INSERT INTO `pegawai` VALUES (8, 11119, 'Test 9', 'test3@gmail.com', 'Staff', NULL, NULL);
INSERT INTO `pegawai` VALUES (9, 11120, 'Test 10', 'test2@gmail.com', 'Staff', NULL, NULL);
INSERT INTO `pegawai` VALUES (10, 11121, 'Test 11', 'test3@gmail.com', 'Kepala seksi', NULL, NULL);
INSERT INTO `pegawai` VALUES (11, 11122, 'Test 12', 'test2@gmail.com', 'Kepala seksi', NULL, NULL);
INSERT INTO `pegawai` VALUES (12, 11123, 'Test 13', 'test3@gmail.com', 'Kepala Bidang', NULL, NULL);
INSERT INTO `pegawai` VALUES (13, 11124, 'Test 14', 'test2@gmail.com', 'Kepala Seksi', NULL, NULL);
INSERT INTO `pegawai` VALUES (14, 11125, 'Test 15', 'test3@gmail.com', 'Kepala Bidang', NULL, NULL);
INSERT INTO `pegawai` VALUES (15, 11126, 'Test 16', 'test2@gmail.com', 'Kepala Seksi', NULL, NULL);
INSERT INTO `pegawai` VALUES (16, 11127, 'Test 17', 'test3@gmail.com', 'Staff', NULL, NULL);
INSERT INTO `pegawai` VALUES (17, 11128, 'Test 18', 'test2@gmail.com', 'Staff', NULL, NULL);
INSERT INTO `pegawai` VALUES (18, 11129, 'Test 19', 'test3@gmail.com', 'Staff', NULL, NULL);
INSERT INTO `pegawai` VALUES (19, 11130, 'Test 20', 'test2@gmail.com', 'Staff', NULL, NULL);
INSERT INTO `pegawai` VALUES (20, 11131, 'Test 21', 'test3@gmail.com', 'Kepala seksi', NULL, NULL);
INSERT INTO `pegawai` VALUES (21, 11132, 'Test 22', 'test2@gmail.com', 'Kepala seksi', NULL, NULL);
INSERT INTO `pegawai` VALUES (22, 11133, 'Test 23', 'test3@gmail.com', 'Kepala Bidang', NULL, NULL);
INSERT INTO `pegawai` VALUES (23, 11134, 'Test 24', 'test2@gmail.com', 'Kepala Seksi', NULL, NULL);
INSERT INTO `pegawai` VALUES (24, 11135, 'Test 25', 'test3@gmail.com', 'Kepala Bidang', NULL, NULL);
INSERT INTO `pegawai` VALUES (25, 11136, 'Test 26', 'test2@gmail.com', 'Kepala Seksi', NULL, NULL);
INSERT INTO `pegawai` VALUES (26, 11137, 'Test 27', 'test3@gmail.com', 'Staff', NULL, NULL);
INSERT INTO `pegawai` VALUES (27, 11138, 'Test 28', 'test2@gmail.com', 'Staff', NULL, NULL);
INSERT INTO `pegawai` VALUES (28, 11139, 'Test 29', 'test3@gmail.com', 'Staff', NULL, NULL);
INSERT INTO `pegawai` VALUES (29, 11140, 'Test 30', 'test2@gmail.com', 'Staff', NULL, NULL);
INSERT INTO `pegawai` VALUES (30, 11141, 'Test 31', 'test3@gmail.com', 'Kepala seksi', NULL, NULL);
INSERT INTO `pegawai` VALUES (31, 11142, 'Test 32', 'test2@gmail.com', 'Kepala seksi', NULL, NULL);
INSERT INTO `pegawai` VALUES (32, 11143, 'Test 33', 'test3@gmail.com', 'Kepala Bidang', NULL, NULL);
INSERT INTO `pegawai` VALUES (33, 11144, 'Test 34', 'test2@gmail.com', 'Kepala Seksi', NULL, NULL);
INSERT INTO `pegawai` VALUES (34, 11145, 'Test 35', 'test3@gmail.com', 'Kepala Bidang', NULL, NULL);
INSERT INTO `pegawai` VALUES (35, 11146, 'Test 36', 'test2@gmail.com', 'Kepala Seksi', NULL, NULL);
INSERT INTO `pegawai` VALUES (36, 11147, 'Test 37', 'test3@gmail.com', 'Staff', NULL, NULL);
INSERT INTO `pegawai` VALUES (37, 11148, 'Test 38', 'test2@gmail.com', 'Staff', NULL, NULL);
INSERT INTO `pegawai` VALUES (38, 11149, 'Test 39', 'test3@gmail.com', 'Staff', NULL, NULL);
INSERT INTO `pegawai` VALUES (39, 11150, 'Test 40', 'test2@gmail.com', 'Staff', NULL, NULL);
INSERT INTO `pegawai` VALUES (40, 11151, 'Test 41', 'test3@gmail.com', 'Kepala seksi', NULL, NULL);
INSERT INTO `pegawai` VALUES (41, 11152, 'Test 42', 'test2@gmail.com', 'Kepala seksi', NULL, NULL);
INSERT INTO `pegawai` VALUES (42, 11153, 'Test 43', 'test3@gmail.com', 'Kepala Bidang', NULL, NULL);
INSERT INTO `pegawai` VALUES (43, 11154, 'Test 44', 'test2@gmail.com', 'Kepala Seksi', NULL, NULL);
INSERT INTO `pegawai` VALUES (44, 11155, 'Test 45', 'test3@gmail.com', 'Kepala Bidang', NULL, NULL);
INSERT INTO `pegawai` VALUES (45, 11156, 'Test 46', 'test2@gmail.com', 'Kepala Seksi', NULL, NULL);
INSERT INTO `pegawai` VALUES (46, 11157, 'Test 47', 'test3@gmail.com', 'Staff', NULL, NULL);
INSERT INTO `pegawai` VALUES (47, 11158, 'Test 48', 'test2@gmail.com', 'Staff', NULL, NULL);
INSERT INTO `pegawai` VALUES (48, 11159, 'Test 49', 'test3@gmail.com', 'Staff', NULL, NULL);
INSERT INTO `pegawai` VALUES (49, 11160, 'Test 50', 'test2@gmail.com', 'Staff', NULL, NULL);
INSERT INTO `pegawai` VALUES (50, 11161, 'Test 51', 'test3@gmail.com', 'Kepala seksi', NULL, NULL);
INSERT INTO `pegawai` VALUES (51, 11162, 'Test 52', 'test2@gmail.com', 'Kepala seksi', NULL, NULL);
INSERT INTO `pegawai` VALUES (52, 11163, 'Test 53', 'test3@gmail.com', 'Kepala Bidang', NULL, NULL);
INSERT INTO `pegawai` VALUES (53, 11164, 'Test 54', 'test2@gmail.com', 'Kepala Seksi', NULL, NULL);
INSERT INTO `pegawai` VALUES (54, 11165, 'Test 55', 'test3@gmail.com', 'Kepala Bidang', NULL, NULL);
INSERT INTO `pegawai` VALUES (55, 11166, 'Test 56', 'test2@gmail.com', 'Kepala Seksi', NULL, NULL);
INSERT INTO `pegawai` VALUES (56, 11167, 'Test 57', 'test3@gmail.com', 'Staff', NULL, NULL);
INSERT INTO `pegawai` VALUES (57, 11168, 'Test 58', 'test2@gmail.com', 'Staff', NULL, NULL);
INSERT INTO `pegawai` VALUES (58, 11169, 'Test 59', 'test3@gmail.com', 'Staff', NULL, NULL);
INSERT INTO `pegawai` VALUES (59, 11170, 'Test 60', 'test2@gmail.com', 'Staff', NULL, NULL);
INSERT INTO `pegawai` VALUES (60, 11171, 'Test 61', 'test3@gmail.com', 'Kepala seksi', NULL, NULL);
INSERT INTO `pegawai` VALUES (61, 11172, 'Test 62', 'test2@gmail.com', 'Kepala seksi', NULL, NULL);
INSERT INTO `pegawai` VALUES (62, 11173, 'Test 63', 'test3@gmail.com', 'Kepala Bidang', NULL, NULL);
INSERT INTO `pegawai` VALUES (63, 11174, 'Test 64', 'test2@gmail.com', 'Kepala Seksi', NULL, NULL);
INSERT INTO `pegawai` VALUES (64, 11175, 'Test 65', 'test3@gmail.com', 'Kepala Bidang', NULL, NULL);
INSERT INTO `pegawai` VALUES (65, 11176, 'Test 66', 'test2@gmail.com', 'Kepala Seksi', NULL, NULL);
INSERT INTO `pegawai` VALUES (66, 11177, 'Test 67', 'test3@gmail.com', 'Staff', NULL, NULL);
INSERT INTO `pegawai` VALUES (67, 11178, 'Test 68', 'test2@gmail.com', 'Staff', NULL, NULL);
INSERT INTO `pegawai` VALUES (68, 11179, 'Test 69', 'test3@gmail.com', 'Staff', NULL, NULL);
INSERT INTO `pegawai` VALUES (69, 11180, 'Test 70', 'test2@gmail.com', 'Staff', NULL, NULL);
INSERT INTO `pegawai` VALUES (70, 11181, 'Test 71', 'test3@gmail.com', 'Kepala seksi', NULL, NULL);
INSERT INTO `pegawai` VALUES (71, 11182, 'Test 72', 'test2@gmail.com', 'Kepala seksi', NULL, NULL);
INSERT INTO `pegawai` VALUES (72, 11183, 'Test 73', 'test3@gmail.com', 'Kepala Bidang', NULL, NULL);
INSERT INTO `pegawai` VALUES (73, 11184, 'Test 74', 'test2@gmail.com', 'Kepala Seksi', NULL, NULL);
INSERT INTO `pegawai` VALUES (74, 11185, 'Test 75', 'test3@gmail.com', 'Kepala Bidang', NULL, NULL);
INSERT INTO `pegawai` VALUES (75, 11186, 'Test 76', 'test2@gmail.com', 'Kepala Seksi', NULL, NULL);
INSERT INTO `pegawai` VALUES (76, 11187, 'Test 77', 'test3@gmail.com', 'Staff', NULL, NULL);
INSERT INTO `pegawai` VALUES (77, 11188, 'Test 78', 'test2@gmail.com', 'Staff', NULL, NULL);
INSERT INTO `pegawai` VALUES (78, 11189, 'Test 79', 'test3@gmail.com', 'Staff', NULL, NULL);
INSERT INTO `pegawai` VALUES (79, 11190, 'Test 80', 'test2@gmail.com', 'Staff', NULL, NULL);
INSERT INTO `pegawai` VALUES (80, 11191, 'Test 81', 'test3@gmail.com', 'Kepala seksi', NULL, NULL);
INSERT INTO `pegawai` VALUES (81, 11192, 'Test 82', 'test2@gmail.com', 'Kepala seksi', NULL, NULL);
INSERT INTO `pegawai` VALUES (82, 11193, 'Test 83', 'test3@gmail.com', 'Kepala Bidang', NULL, NULL);
INSERT INTO `pegawai` VALUES (83, 11194, 'Test 84', 'test2@gmail.com', 'Kepala Seksi', NULL, NULL);
INSERT INTO `pegawai` VALUES (84, 11195, 'Test 85', 'test3@gmail.com', 'Kepala Bidang', NULL, NULL);
INSERT INTO `pegawai` VALUES (85, 11196, 'Test 86', 'test2@gmail.com', 'Kepala Seksi', NULL, NULL);
INSERT INTO `pegawai` VALUES (86, 11197, 'Test 87', 'test3@gmail.com', 'Staff', NULL, NULL);
INSERT INTO `pegawai` VALUES (87, 11198, 'Test 88', 'test2@gmail.com', 'Staff', NULL, NULL);
INSERT INTO `pegawai` VALUES (88, 11199, 'Test 89', 'test3@gmail.com', 'Staff', NULL, NULL);
INSERT INTO `pegawai` VALUES (89, 11200, 'Test 90', 'test2@gmail.com', 'Staff', NULL, NULL);
INSERT INTO `pegawai` VALUES (90, 11201, 'Test 91', 'test3@gmail.com', 'Kepala seksi', NULL, NULL);
INSERT INTO `pegawai` VALUES (91, 11202, 'Test 92', 'test2@gmail.com', 'Kepala seksi', NULL, NULL);
INSERT INTO `pegawai` VALUES (92, 11203, 'Test 93', 'test3@gmail.com', 'Kepala Bidang', NULL, NULL);
INSERT INTO `pegawai` VALUES (93, 11204, 'Test 94', 'test2@gmail.com', 'Kepala Seksi', NULL, NULL);
INSERT INTO `pegawai` VALUES (94, 11205, 'Test 95', 'test3@gmail.com', 'Kepala Bidang', NULL, NULL);
INSERT INTO `pegawai` VALUES (95, 11206, 'Test 96', 'test2@gmail.com', 'Kepala Seksi', NULL, NULL);
INSERT INTO `pegawai` VALUES (96, 11207, 'Test 97', 'test3@gmail.com', 'Staff', NULL, NULL);
INSERT INTO `pegawai` VALUES (97, 11208, 'Test 98', 'test2@gmail.com', 'Staff', NULL, NULL);
INSERT INTO `pegawai` VALUES (98, 11209, 'Test 99', 'test3@gmail.com', 'Staff', NULL, NULL);
INSERT INTO `pegawai` VALUES (99, 11210, 'Test 100', 'test2@gmail.com', 'Staff', NULL, NULL);
INSERT INTO `pegawai` VALUES (100, 11211, 'Test 101', 'test3@gmail.com', 'Kepala seksi', NULL, NULL);

-- ----------------------------
-- Table structure for personal_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `last_used_at` timestamp(0) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `personal_access_tokens_token_unique`(`token`) USING BTREE,
  INDEX `personal_access_tokens_tokenable_type_tokenable_id_index`(`tokenable_type`, `tokenable_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of personal_access_tokens
-- ----------------------------
INSERT INTO `personal_access_tokens` VALUES (1, 'App\\Models\\User', 1, 'token', '45d32afb66a0d747ea9534519fd26c8aa1606b2c87be85fcb111f08499aaf32f', '[\"*\"]', NULL, '2022-01-28 01:54:02', '2022-01-28 01:54:02');
INSERT INTO `personal_access_tokens` VALUES (2, 'App\\Models\\User', 1, 'token', 'd592170295ae75ca6939b8435e9b359bc1fadc4a622568a8a79593a2b1ae3a84', '[\"*\"]', NULL, '2022-01-28 01:56:25', '2022-01-28 01:56:25');
INSERT INTO `personal_access_tokens` VALUES (3, 'App\\Models\\User', 1, 'token', 'be5b772d11aa36901dde27ebe0bafd541a4906476254a21d26185ac67d9761fd', '[\"*\"]', NULL, '2022-01-28 02:04:03', '2022-01-28 02:04:03');
INSERT INTO `personal_access_tokens` VALUES (4, 'App\\Models\\User', 1, 'token', 'e6b516adc07715c6efbecd4c16006b779fe2531007f79dcd42a54b838ccee75e', '[\"*\"]', NULL, '2022-01-28 02:04:42', '2022-01-28 02:04:42');
INSERT INTO `personal_access_tokens` VALUES (5, 'App\\Models\\User', 1, 'token', '167096d6809a1448b1e782cd4be00927b99738ddd1793422c3c0b2e342af058d', '[\"*\"]', NULL, '2022-01-28 02:06:01', '2022-01-28 02:06:01');
INSERT INTO `personal_access_tokens` VALUES (6, 'App\\Models\\User', 1, 'token', '059812e4d0dcead3b1a29589fa4d5731c5b6656f14a7da38110c4849c66450a4', '[\"*\"]', '2022-01-28 02:19:21', '2022-01-28 02:07:42', '2022-01-28 02:19:21');
INSERT INTO `personal_access_tokens` VALUES (7, 'App\\Models\\User', 1, 'token', '270441c53726dd78fbe2bea1671d5233f99f3cb99cc0b77b9824e063adb98a70', '[\"*\"]', '2022-01-28 02:19:39', '2022-01-28 02:19:30', '2022-01-28 02:19:39');
INSERT INTO `personal_access_tokens` VALUES (8, 'App\\Models\\User', 1, 'token', 'ca288774a5c1603e3558df18ef75ed752a102185743769147bc1ca731af2bd4f', '[\"*\"]', NULL, '2022-01-28 02:46:12', '2022-01-28 02:46:12');
INSERT INTO `personal_access_tokens` VALUES (9, 'App\\Models\\User', 1, 'token', '8aefafdb50fdad52daae5d37acc735c1ade847225d0bed566bdaa8baf6c37454', '[\"*\"]', '2022-01-28 02:49:53', '2022-01-28 02:47:08', '2022-01-28 02:49:53');
INSERT INTO `personal_access_tokens` VALUES (10, 'App\\Models\\User', 1, 'token', 'e1a76d409259350c21fd01efe20739ea96556cca2eb21bace7b42effe90e9c5c', '[\"*\"]', '2022-01-28 02:55:39', '2022-01-28 02:55:20', '2022-01-28 02:55:39');
INSERT INTO `personal_access_tokens` VALUES (11, 'App\\Models\\User', 1, 'token', '6aff8548a8d9f550b38db0972814b988cb7ee0a6aa18db2ff40acbdbd572272f', '[\"*\"]', '2022-01-28 02:58:16', '2022-01-28 02:55:45', '2022-01-28 02:58:16');
INSERT INTO `personal_access_tokens` VALUES (12, 'App\\Models\\User', 1, 'token', '07f365d489cb5dee80f0ee6630659b0a35bfe3ea3b7dfbccabf66e91e219855c', '[\"*\"]', '2022-01-28 03:03:53', '2022-01-28 02:58:20', '2022-01-28 03:03:53');
INSERT INTO `personal_access_tokens` VALUES (13, 'App\\Models\\User', 1, 'token', '8dfe147c5502869f9a02b1b217d0bf68289b5ecb932bcfa15223fbb65ba703b0', '[\"*\"]', '2022-01-28 03:06:16', '2022-01-28 03:03:56', '2022-01-28 03:06:16');
INSERT INTO `personal_access_tokens` VALUES (14, 'App\\Models\\User', 1, 'token', '81d94c64daf2500c27f85657e5ed1e4ab7e6cd804a57b43610e8accc07c8cdca', '[\"*\"]', '2022-01-28 07:15:18', '2022-01-28 03:06:29', '2022-01-28 07:15:18');
INSERT INTO `personal_access_tokens` VALUES (15, 'App\\Models\\User', 1, 'token', '8f648d9f0b61a8cec0de779b981544b5f518a5949690e5152bf307bdfc46e93e', '[\"*\"]', '2022-01-28 08:35:46', '2022-01-28 07:16:42', '2022-01-28 08:35:46');
INSERT INTO `personal_access_tokens` VALUES (16, 'App\\Models\\User', 1, 'token', 'ea5872bc06755fdc21a55b3d44826581ed6478883c5416b81a5a156c09cddf10', '[\"*\"]', '2022-01-28 08:45:56', '2022-01-28 07:25:12', '2022-01-28 08:45:56');
INSERT INTO `personal_access_tokens` VALUES (17, 'App\\Models\\User', 1, 'token', '11681da6adb8b0d38d4d7879eaf19c438709b294638752b4517f47e10b6c46e5', '[\"*\"]', '2022-01-28 08:52:03', '2022-01-28 08:36:03', '2022-01-28 08:52:03');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp(0) NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'A', 'a@email.com', NULL, '$2y$10$0fggCdKQWJbEj8irZAmdAOgZWqGfIXfBQ0nQp5lF6zPISKtMWQBPu', NULL, '2022-01-28 01:34:36', '2022-01-28 01:34:36');

SET FOREIGN_KEY_CHECKS = 1;
