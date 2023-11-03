/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 50736 (5.7.36)
 Source Host           : localhost:3306
 Source Schema         : yf_exam_lite

 Target Server Type    : MySQL
 Target Server Version : 50736 (5.7.36)
 File Encoding         : 65001

 Date: 03/11/2023 17:04:37
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for QRTZ_BLOB_TRIGGERS
-- ----------------------------
DROP TABLE IF EXISTS `QRTZ_BLOB_TRIGGERS`;
CREATE TABLE `QRTZ_BLOB_TRIGGERS`  (
                                       `SCHED_NAME` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
                                       `TRIGGER_NAME` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
                                       `TRIGGER_GROUP` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
                                       `BLOB_DATA` blob NULL,
                                       PRIMARY KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) USING BTREE,
                                       CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `QRTZ_TRIGGERS` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of QRTZ_BLOB_TRIGGERS
-- ----------------------------

-- ----------------------------
-- Table structure for QRTZ_CALENDARS
-- ----------------------------
DROP TABLE IF EXISTS `QRTZ_CALENDARS`;
CREATE TABLE `QRTZ_CALENDARS`  (
                                   `SCHED_NAME` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
                                   `CALENDAR_NAME` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
                                   `CALENDAR` blob NOT NULL,
                                   PRIMARY KEY (`SCHED_NAME`, `CALENDAR_NAME`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of QRTZ_CALENDARS
-- ----------------------------

-- ----------------------------
-- Table structure for QRTZ_CRON_TRIGGERS
-- ----------------------------
DROP TABLE IF EXISTS `QRTZ_CRON_TRIGGERS`;
CREATE TABLE `QRTZ_CRON_TRIGGERS`  (
                                       `SCHED_NAME` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
                                       `TRIGGER_NAME` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
                                       `TRIGGER_GROUP` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
                                       `CRON_EXPRESSION` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
                                       `TIME_ZONE_ID` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
                                       PRIMARY KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) USING BTREE,
                                       CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `QRTZ_TRIGGERS` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of QRTZ_CRON_TRIGGERS
-- ----------------------------
INSERT INTO `QRTZ_CRON_TRIGGERS` VALUES ('eamScheduler', 'break_exam_1720353930570117121', 'system', '14 45 16 03 11 ? 2023', 'Asia/Shanghai');

-- ----------------------------
-- Table structure for QRTZ_FIRED_TRIGGERS
-- ----------------------------
DROP TABLE IF EXISTS `QRTZ_FIRED_TRIGGERS`;
CREATE TABLE `QRTZ_FIRED_TRIGGERS`  (
                                        `SCHED_NAME` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
                                        `ENTRY_ID` varchar(95) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
                                        `TRIGGER_NAME` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
                                        `TRIGGER_GROUP` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
                                        `INSTANCE_NAME` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
                                        `FIRED_TIME` bigint(20) NOT NULL,
                                        `SCHED_TIME` bigint(20) NOT NULL,
                                        `PRIORITY` int(11) NOT NULL,
                                        `STATE` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
                                        `JOB_NAME` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
                                        `JOB_GROUP` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
                                        `IS_NONCONCURRENT` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
                                        `REQUESTS_RECOVERY` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
                                        PRIMARY KEY (`SCHED_NAME`, `ENTRY_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of QRTZ_FIRED_TRIGGERS
-- ----------------------------

-- ----------------------------
-- Table structure for QRTZ_JOB_DETAILS
-- ----------------------------
DROP TABLE IF EXISTS `QRTZ_JOB_DETAILS`;
CREATE TABLE `QRTZ_JOB_DETAILS`  (
                                     `SCHED_NAME` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
                                     `JOB_NAME` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
                                     `JOB_GROUP` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
                                     `DESCRIPTION` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
                                     `JOB_CLASS_NAME` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
                                     `IS_DURABLE` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
                                     `IS_NONCONCURRENT` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
                                     `IS_UPDATE_DATA` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
                                     `REQUESTS_RECOVERY` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
                                     `JOB_DATA` blob NULL,
                                     PRIMARY KEY (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of QRTZ_JOB_DETAILS
-- ----------------------------
INSERT INTO `QRTZ_JOB_DETAILS` VALUES ('eamScheduler', 'break_exam_1720353930570117121', 'system', NULL, 'com.yf.exam.modules.paper.job.BreakExamJob', '0', '0', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C770800000010000000017400087461736B44617461740013313732303335333933303537303131373132317800);

-- ----------------------------
-- Table structure for QRTZ_LOCKS
-- ----------------------------
DROP TABLE IF EXISTS `QRTZ_LOCKS`;
CREATE TABLE `QRTZ_LOCKS`  (
                               `SCHED_NAME` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
                               `LOCK_NAME` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
                               PRIMARY KEY (`SCHED_NAME`, `LOCK_NAME`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of QRTZ_LOCKS
-- ----------------------------
INSERT INTO `QRTZ_LOCKS` VALUES ('eamScheduler', 'STATE_ACCESS');
INSERT INTO `QRTZ_LOCKS` VALUES ('eamScheduler', 'TRIGGER_ACCESS');

-- ----------------------------
-- Table structure for QRTZ_PAUSED_TRIGGER_GRPS
-- ----------------------------
DROP TABLE IF EXISTS `QRTZ_PAUSED_TRIGGER_GRPS`;
CREATE TABLE `QRTZ_PAUSED_TRIGGER_GRPS`  (
                                             `SCHED_NAME` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
                                             `TRIGGER_GROUP` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
                                             PRIMARY KEY (`SCHED_NAME`, `TRIGGER_GROUP`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of QRTZ_PAUSED_TRIGGER_GRPS
-- ----------------------------

-- ----------------------------
-- Table structure for QRTZ_SCHEDULER_STATE
-- ----------------------------
DROP TABLE IF EXISTS `QRTZ_SCHEDULER_STATE`;
CREATE TABLE `QRTZ_SCHEDULER_STATE`  (
                                         `SCHED_NAME` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
                                         `INSTANCE_NAME` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
                                         `LAST_CHECKIN_TIME` bigint(20) NOT NULL,
                                         `CHECKIN_INTERVAL` bigint(20) NOT NULL,
                                         PRIMARY KEY (`SCHED_NAME`, `INSTANCE_NAME`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of QRTZ_SCHEDULER_STATE
-- ----------------------------
INSERT INTO `QRTZ_SCHEDULER_STATE` VALUES ('eamScheduler', '无敌屑寄1698999251878', 1698999334338, 10000);
INSERT INTO `QRTZ_SCHEDULER_STATE` VALUES ('examScheduler', 'MacBook-Pro-16.local1676860344454', 1676860726631, 10000);

-- ----------------------------
-- Table structure for QRTZ_SIMPLE_TRIGGERS
-- ----------------------------
DROP TABLE IF EXISTS `QRTZ_SIMPLE_TRIGGERS`;
CREATE TABLE `QRTZ_SIMPLE_TRIGGERS`  (
                                         `SCHED_NAME` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
                                         `TRIGGER_NAME` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
                                         `TRIGGER_GROUP` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
                                         `REPEAT_COUNT` bigint(20) NOT NULL,
                                         `REPEAT_INTERVAL` bigint(20) NOT NULL,
                                         `TIMES_TRIGGERED` bigint(20) NOT NULL,
                                         PRIMARY KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) USING BTREE,
                                         CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `QRTZ_TRIGGERS` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of QRTZ_SIMPLE_TRIGGERS
-- ----------------------------

-- ----------------------------
-- Table structure for QRTZ_SIMPROP_TRIGGERS
-- ----------------------------
DROP TABLE IF EXISTS `QRTZ_SIMPROP_TRIGGERS`;
CREATE TABLE `QRTZ_SIMPROP_TRIGGERS`  (
                                          `SCHED_NAME` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
                                          `TRIGGER_NAME` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
                                          `TRIGGER_GROUP` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
                                          `STR_PROP_1` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
                                          `STR_PROP_2` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
                                          `STR_PROP_3` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
                                          `INT_PROP_1` int(11) NULL DEFAULT NULL,
                                          `INT_PROP_2` int(11) NULL DEFAULT NULL,
                                          `LONG_PROP_1` bigint(20) NULL DEFAULT NULL,
                                          `LONG_PROP_2` bigint(20) NULL DEFAULT NULL,
                                          `DEC_PROP_1` decimal(13, 4) NULL DEFAULT NULL,
                                          `DEC_PROP_2` decimal(13, 4) NULL DEFAULT NULL,
                                          `BOOL_PROP_1` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
                                          `BOOL_PROP_2` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
                                          PRIMARY KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) USING BTREE,
                                          CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `QRTZ_TRIGGERS` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of QRTZ_SIMPROP_TRIGGERS
-- ----------------------------

-- ----------------------------
-- Table structure for QRTZ_TRIGGERS
-- ----------------------------
DROP TABLE IF EXISTS `QRTZ_TRIGGERS`;
CREATE TABLE `QRTZ_TRIGGERS`  (
                                  `SCHED_NAME` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
                                  `TRIGGER_NAME` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
                                  `TRIGGER_GROUP` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
                                  `JOB_NAME` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
                                  `JOB_GROUP` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
                                  `DESCRIPTION` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
                                  `NEXT_FIRE_TIME` bigint(20) NULL DEFAULT NULL,
                                  `PREV_FIRE_TIME` bigint(20) NULL DEFAULT NULL,
                                  `PRIORITY` int(11) NULL DEFAULT NULL,
                                  `TRIGGER_STATE` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
                                  `TRIGGER_TYPE` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
                                  `START_TIME` bigint(20) NOT NULL,
                                  `END_TIME` bigint(20) NULL DEFAULT NULL,
                                  `CALENDAR_NAME` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
                                  `MISFIRE_INSTR` smallint(6) NULL DEFAULT NULL,
                                  `JOB_DATA` blob NULL,
                                  PRIMARY KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) USING BTREE,
                                  INDEX `SCHED_NAME`(`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`) USING BTREE,
                                  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`) REFERENCES `QRTZ_JOB_DETAILS` (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of QRTZ_TRIGGERS
-- ----------------------------
INSERT INTO `QRTZ_TRIGGERS` VALUES ('eamScheduler', 'break_exam_1720353930570117121', 'system', 'break_exam_1720353930570117121', 'system', NULL, 1699001114000, -1, 5, 'WAITING', 'CRON', 1698999314000, 0, NULL, 0, '');

-- ----------------------------
-- Table structure for el_exam
-- ----------------------------
DROP TABLE IF EXISTS `el_exam`;
CREATE TABLE `el_exam`  (
                            `id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'ID',
                            `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '考试名称',
                            `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '考试描述',
                            `open_type` int(11) NOT NULL DEFAULT 1 COMMENT '1公开2部门3定员',
                            `state` int(11) NOT NULL DEFAULT 0 COMMENT '考试状态',
                            `time_limit` tinyint(4) NOT NULL DEFAULT 0 COMMENT '是否限时',
                            `start_time` datetime NULL DEFAULT NULL COMMENT '开始时间',
                            `end_time` datetime NULL DEFAULT NULL COMMENT '结束时间',
                            `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
                            `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
                            `total_score` int(11) NOT NULL DEFAULT 0 COMMENT '总分数',
                            `total_time` int(11) NOT NULL DEFAULT 0 COMMENT '总时长（分钟）',
                            `qualify_score` int(11) NOT NULL DEFAULT 0 COMMENT '及格分数',
                            PRIMARY KEY (`id`) USING BTREE,
                            INDEX `open_type`(`open_type`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '考试主表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of el_exam
-- ----------------------------
INSERT INTO `el_exam` VALUES ('1587621704140427265', '【云帆演示】考试', '【云帆演示】考试', 1, 0, 0, NULL, NULL, '2022-11-02 09:44:46', '2022-11-02 09:44:46', 100, 30, 60);

-- ----------------------------
-- Table structure for el_exam_depart
-- ----------------------------
DROP TABLE IF EXISTS `el_exam_depart`;
CREATE TABLE `el_exam_depart`  (
                                   `id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT 'ID',
                                   `exam_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '考试ID',
                                   `depart_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '部门ID',
                                   PRIMARY KEY (`id`) USING BTREE,
                                   INDEX `exam_id`(`exam_id`) USING BTREE,
                                   INDEX `depart_id`(`depart_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '考试部门' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of el_exam_depart
-- ----------------------------

-- ----------------------------
-- Table structure for el_exam_repo
-- ----------------------------
DROP TABLE IF EXISTS `el_exam_repo`;
CREATE TABLE `el_exam_repo`  (
                                 `id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'ID',
                                 `exam_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '考试ID',
                                 `repo_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '题库ID',
                                 `radio_count` int(11) NOT NULL DEFAULT 0 COMMENT '单选题数量',
                                 `radio_score` int(11) NOT NULL DEFAULT 0 COMMENT '单选题分数',
                                 `multi_count` int(11) NOT NULL DEFAULT 0 COMMENT '多选题数量',
                                 `multi_score` int(11) NOT NULL DEFAULT 0 COMMENT '多选题分数',
                                 `judge_count` int(11) NOT NULL DEFAULT 0 COMMENT '判断题数量',
                                 `judge_score` int(11) NOT NULL DEFAULT 0 COMMENT '判断题分数',
                                 `saq_count` int(11) NOT NULL DEFAULT 0 COMMENT '简答题数量',
                                 `saq_score` int(11) NOT NULL DEFAULT 0 COMMENT '简答题分数',
                                 `fill_count` int(11) NOT NULL COMMENT '填空题数量',
                                 `fill_score` int(11) NOT NULL COMMENT '填空题分数',
                                 `code_count` int(11) NOT NULL,
                                 `code_score` int(11) NOT NULL,
                                 PRIMARY KEY (`id`) USING BTREE,
                                 UNIQUE INDEX `exam_repo_id`(`exam_id`, `repo_id`) USING BTREE,
                                 INDEX `rule_id`(`exam_id`) USING BTREE,
                                 INDEX `repo_id`(`repo_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '考试题库' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of el_exam_repo
-- ----------------------------
INSERT INTO `el_exam_repo` VALUES ('1720353844171649026', '1587621704140427265', '1587622451624120321', 2, 10, 6, 10, 2, 10, 0, 0, 1, 10, 1, 10);

-- ----------------------------
-- Table structure for el_paper
-- ----------------------------
DROP TABLE IF EXISTS `el_paper`;
CREATE TABLE `el_paper`  (
                             `id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '试卷ID',
                             `user_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户ID',
                             `depart_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '部门ID',
                             `exam_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '规则ID',
                             `title` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '考试标题',
                             `total_time` int(11) NOT NULL DEFAULT 0 COMMENT '考试时长',
                             `user_time` int(11) NOT NULL DEFAULT 0 COMMENT '用户时长',
                             `total_score` int(11) NOT NULL DEFAULT 0 COMMENT '试卷总分',
                             `qualify_score` int(11) NOT NULL DEFAULT 0 COMMENT '及格分',
                             `obj_score` int(11) NOT NULL DEFAULT 0 COMMENT '客观分',
                             `subj_score` int(11) NOT NULL DEFAULT 0 COMMENT '主观分',
                             `user_score` int(11) NOT NULL COMMENT '用户得分',
                             `has_saq` tinyint(4) NOT NULL DEFAULT 0 COMMENT '是否包含简答题',
                             `state` int(11) NOT NULL DEFAULT 1 COMMENT '试卷状态',
                             `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
                             `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
                             `limit_time` datetime NULL DEFAULT NULL COMMENT '截止时间',
                             PRIMARY KEY (`id`) USING BTREE,
                             INDEX `user_id`(`user_id`) USING BTREE,
                             INDEX `exam_id`(`exam_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '考试记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of el_paper
-- ----------------------------
INSERT INTO `el_paper` VALUES ('1720319279738683393', '10001', '1318103313740320770', '1587621704140427265', '【云帆演示】考试', 30, 13, 100, 60, 20, 0, 20, 0, 2, '2023-11-03 13:57:33', '2023-11-03 14:10:56', '2023-11-03 14:27:33');
INSERT INTO `el_paper` VALUES ('1720330489494249474', '10001', '1318103313740320770', '1587621704140427265', '【云帆演示】考试', 30, 1, 100, 60, 0, 0, 0, 0, 2, '2023-11-03 14:42:06', '2023-11-03 14:42:31', '2023-11-03 15:12:06');
INSERT INTO `el_paper` VALUES ('1720353930570117121', '10001', '1318103313740320770', '1587621704140427265', '【云帆演示】考试', 30, 0, 100, 60, 0, 0, 0, 0, 0, '2023-11-03 16:15:14', '2023-11-03 16:15:14', '2023-11-03 16:45:14');

-- ----------------------------
-- Table structure for el_paper_qu
-- ----------------------------
DROP TABLE IF EXISTS `el_paper_qu`;
CREATE TABLE `el_paper_qu`  (
                                `id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'ID',
                                `paper_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '试卷ID',
                                `qu_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '题目ID',
                                `qu_type` int(11) NOT NULL COMMENT '题目类型',
                                `answered` tinyint(4) NOT NULL DEFAULT 0 COMMENT '是否已答',
                                `answer` varchar(5000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '主观答案',
                                `sort` int(11) NOT NULL DEFAULT 0 COMMENT '问题排序',
                                `score` int(11) NOT NULL DEFAULT 0 COMMENT '单题分分值',
                                `actual_score` int(11) NOT NULL DEFAULT 0 COMMENT '实际得分(主观题)',
                                `is_right` tinyint(4) NOT NULL DEFAULT 0 COMMENT '是否答对',
                                PRIMARY KEY (`id`) USING BTREE,
                                INDEX `paper_id`(`paper_id`) USING BTREE,
                                INDEX `qu_id`(`qu_id`) USING BTREE,
                                INDEX `paper_qu_id`(`paper_id`, `qu_id`) USING BTREE,
                                INDEX `sort`(`sort`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '考试记录考题' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of el_paper_qu
-- ----------------------------
INSERT INTO `el_paper_qu` VALUES ('1720319279826763777', '1720319279738683393', '1587622642699833345', 1, 1, '', 0, 10, 10, 0);
INSERT INTO `el_paper_qu` VALUES ('1720319279868706818', '1720319279738683393', '1587622642393649153', 1, 1, '', 1, 10, 10, 0);
INSERT INTO `el_paper_qu` VALUES ('1720319279877095426', '1720319279738683393', '1587622643760992258', 2, 1, '', 2, 10, 10, 0);
INSERT INTO `el_paper_qu` VALUES ('1720319279889678337', '1720319279738683393', '1587622643895209985', 2, 1, '', 3, 10, 10, 0);
INSERT INTO `el_paper_qu` VALUES ('1720319279898066946', '1720319279738683393', '1587622643693883394', 2, 1, '', 4, 10, 10, 0);
INSERT INTO `el_paper_qu` VALUES ('1720319279906455554', '1720319279738683393', '1587622642838245378', 2, 1, '', 5, 10, 10, 0);
INSERT INTO `el_paper_qu` VALUES ('1720319279914844161', '1720319279738683393', '1587622643823906818', 2, 1, '', 6, 10, 10, 0);
INSERT INTO `el_paper_qu` VALUES ('1720319279923232769', '1720319279738683393', '1587622642762747906', 2, 1, '', 7, 10, 10, 0);
INSERT INTO `el_paper_qu` VALUES ('1720319279935815681', '1720319279738683393', '1587622644054593538', 3, 1, '', 8, 10, 10, 1);
INSERT INTO `el_paper_qu` VALUES ('1720319279944204289', '1720319279738683393', '1587622643979096066', 3, 1, '', 9, 10, 10, 1);
INSERT INTO `el_paper_qu` VALUES ('1720330489515220993', '1720330489494249474', '1587622642473340930', 1, 1, '', 0, 10, 10, 0);
INSERT INTO `el_paper_qu` VALUES ('1720330489527803905', '1720330489494249474', '1587622643396087810', 1, 1, '', 1, 10, 10, 0);
INSERT INTO `el_paper_qu` VALUES ('1720330489540386817', '1720330489494249474', '1587622642838245378', 2, 1, '', 2, 10, 10, 0);
INSERT INTO `el_paper_qu` VALUES ('1720330489548775426', '1720330489494249474', '1587622642762747906', 2, 1, '', 3, 10, 10, 0);
INSERT INTO `el_paper_qu` VALUES ('1720330489557164034', '1720330489494249474', '1587622643895209985', 2, 1, '', 4, 10, 10, 0);
INSERT INTO `el_paper_qu` VALUES ('1720330489569746945', '1720330489494249474', '1587622643823906818', 2, 1, '', 5, 10, 10, 0);
INSERT INTO `el_paper_qu` VALUES ('1720330489578135553', '1720330489494249474', '1587622643693883394', 2, 1, '', 6, 10, 10, 0);
INSERT INTO `el_paper_qu` VALUES ('1720330489586524162', '1720330489494249474', '1587622643760992258', 2, 1, '', 7, 10, 10, 0);
INSERT INTO `el_paper_qu` VALUES ('1720330489594912769', '1720330489494249474', '1587622643979096066', 3, 0, '', 8, 10, 10, 0);
INSERT INTO `el_paper_qu` VALUES ('1720330489603301377', '1720330489494249474', '1587622644281085953', 3, 0, '', 9, 10, 10, 0);
INSERT INTO `el_paper_qu` VALUES ('1720353930582700033', '1720353930570117121', '1587622642393649153', 1, 0, '', 0, 10, 10, 0);
INSERT INTO `el_paper_qu` VALUES ('1720353930612060162', '1720353930570117121', '1587622643173789698', 1, 0, '', 1, 10, 10, 0);
INSERT INTO `el_paper_qu` VALUES ('1720353930624643073', '1720353930570117121', '1587622642762747906', 2, 0, '', 2, 10, 10, 0);
INSERT INTO `el_paper_qu` VALUES ('1720353930637225985', '1720353930570117121', '1587622642838245378', 2, 0, '', 3, 10, 10, 0);
INSERT INTO `el_paper_qu` VALUES ('1720353930649808898', '1720353930570117121', '1587622643895209985', 2, 0, '', 4, 10, 10, 0);
INSERT INTO `el_paper_qu` VALUES ('1720353930662391809', '1720353930570117121', '1587622643760992258', 2, 0, '', 5, 10, 10, 0);
INSERT INTO `el_paper_qu` VALUES ('1720353930674974722', '1720353930570117121', '1587622643693883394', 2, 0, '', 6, 10, 10, 0);
INSERT INTO `el_paper_qu` VALUES ('1720353930691751937', '1720353930570117121', '1587622643823906818', 2, 0, '', 7, 10, 10, 0);
INSERT INTO `el_paper_qu` VALUES ('1720353930704334849', '1720353930570117121', '1587622644281085953', 3, 0, '', 8, 10, 10, 0);
INSERT INTO `el_paper_qu` VALUES ('1720353930712723457', '1720353930570117121', '1587622643979096066', 3, 0, '', 9, 10, 10, 0);
INSERT INTO `el_paper_qu` VALUES ('1720353930721112065', '1720353930570117121', '1720319179339628546', 5, 0, '', 10, 10, 10, 0);
INSERT INTO `el_paper_qu` VALUES ('1720353930729500673', '1720353930570117121', '1720323443638239234', 6, 0, '', 11, 10, 10, 0);

-- ----------------------------
-- Table structure for el_paper_qu_answer
-- ----------------------------
DROP TABLE IF EXISTS `el_paper_qu_answer`;
CREATE TABLE `el_paper_qu_answer`  (
                                       `id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '自增ID',
                                       `paper_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '试卷ID',
                                       `answer_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '回答项ID',
                                       `qu_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '题目ID',
                                       `is_right` tinyint(4) NOT NULL DEFAULT 0 COMMENT '是否正确项',
                                       `checked` tinyint(4) NOT NULL DEFAULT 0 COMMENT '是否选中',
                                       `sort` int(11) NOT NULL DEFAULT 0 COMMENT '排序',
                                       `abc` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '选项标签',
                                       PRIMARY KEY (`id`) USING BTREE,
                                       INDEX `paper_id`(`paper_id`) USING BTREE,
                                       INDEX `qu_id`(`qu_id`) USING BTREE,
                                       INDEX `paper_qu_id`(`paper_id`, `qu_id`) USING BTREE,
                                       INDEX `sort`(`sort`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '考试记录答案' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of el_paper_qu_answer
-- ----------------------------
INSERT INTO `el_paper_qu_answer` VALUES ('0135f235-ac5c-475d-81c6-48b40ff617ff', '1720353930570117121', '1587622642846633986', '1587622642838245378', 1, 0, 3, 'D');
INSERT INTO `el_paper_qu_answer` VALUES ('0429d261-0ef7-46d0-b89f-614f1c278704', '1720319279738683393', '1587622642402037764', '1587622642393649153', 1, 0, 3, 'D');
INSERT INTO `el_paper_qu_answer` VALUES ('05fb9984-7334-44ac-a0ee-a67680b02f70', '1720319279738683393', '1587622643769380867', '1587622643760992258', 0, 0, 0, 'A');
INSERT INTO `el_paper_qu_answer` VALUES ('0ca085e2-baaf-48c6-9737-bbda75cf2e6f', '1720330489494249474', '1587622642846633988', '1587622642838245378', 0, 1, 2, 'C');
INSERT INTO `el_paper_qu_answer` VALUES ('0d257783-9656-4e5b-bb88-9743fe957f24', '1720353930570117121', '1587622643182178306', '1587622643173789698', 0, 0, 0, 'A');
INSERT INTO `el_paper_qu_answer` VALUES ('0d4c9a20-6961-4968-846a-b4faa05e57a9', '1720319279738683393', '1587622642708221953', '1587622642699833345', 0, 0, 1, 'B');
INSERT INTO `el_paper_qu_answer` VALUES ('0d8d3777-e0cc-4e4b-a5ec-1b5d96f8f0db', '1720319279738683393', '1587622643832295429', '1587622643823906818', 1, 0, 0, 'A');
INSERT INTO `el_paper_qu_answer` VALUES ('10f0661a-bf02-44fe-a954-58e63d4a7d98', '1720319279738683393', '1587622643832295427', '1587622643823906818', 1, 0, 1, 'B');
INSERT INTO `el_paper_qu_answer` VALUES ('14b63c9f-5f81-419f-8f5c-ce9100004e9b', '1720353930570117121', '1587622643182178307', '1587622643173789698', 1, 0, 1, 'B');
INSERT INTO `el_paper_qu_answer` VALUES ('16cea08a-3569-44d6-8ae7-f3d3aa8c2cf5', '1720319279738683393', '1587622642402037761', '1587622642393649153', 0, 1, 0, 'A');
INSERT INTO `el_paper_qu_answer` VALUES ('1ba4413d-2451-41ef-a20e-db1f5690553b', '1720330489494249474', '1587622642846633987', '1587622642838245378', 1, 0, 1, 'B');
INSERT INTO `el_paper_qu_answer` VALUES ('1e021805-4c1a-4c64-ab5c-9f12d22ce767', '1720353930570117121', '1587622642775330820', '1587622642762747906', 0, 0, 0, 'A');
INSERT INTO `el_paper_qu_answer` VALUES ('21a70b47-dc42-4d0c-aa36-ed7cf1a98f4e', '1720330489494249474', '1587622643404476418', '1587622643396087810', 0, 1, 2, 'C');
INSERT INTO `el_paper_qu_answer` VALUES ('27ccee49-07d0-46d6-a751-d88d47541c2c', '1720353930570117121', '1587622643769380866', '1587622643760992258', 0, 0, 1, 'B');
INSERT INTO `el_paper_qu_answer` VALUES ('2c4bf774-fdae-4fe8-bfe4-b87286caa621', '1720319279738683393', '1587622642708221954', '1587622642699833345', 0, 0, 2, 'C');
INSERT INTO `el_paper_qu_answer` VALUES ('2e3f9c7b-9c91-47f5-8f7e-310dbe6d4611', '1720353930570117121', '1587622642771136513', '1587622642762747906', 1, 0, 1, 'B');
INSERT INTO `el_paper_qu_answer` VALUES ('2fb0daa0-fe8b-40ef-9208-cb17f00729f4', '1720330489494249474', '1587622643702272002', '1587622643693883394', 1, 0, 1, 'B');
INSERT INTO `el_paper_qu_answer` VALUES ('3096e2bd-04cf-4a99-8cd4-89f2b78e7598', '1720319279738683393', '1587622642402037762', '1587622642393649153', 0, 0, 4, 'E');
INSERT INTO `el_paper_qu_answer` VALUES ('3233939a-3a48-4bd1-a90e-6ad6aaa6f2e4', '1720319279738683393', '1587622642708221955', '1587622642699833345', 1, 0, 4, 'E');
INSERT INTO `el_paper_qu_answer` VALUES ('3323152c-45c1-4220-b74c-e7b91407dac7', '1720353930570117121', '1587622643903598597', '1587622643895209985', 1, 0, 0, 'A');
INSERT INTO `el_paper_qu_answer` VALUES ('336c9fb5-90a1-49f3-af69-28c98f6a2bd5', '1720330489494249474', '1587622643702272001', '1587622643693883394', 1, 1, 3, 'D');
INSERT INTO `el_paper_qu_answer` VALUES ('33c02ae4-93a8-4fef-a81d-d437b4e3182c', '1720330489494249474', '1587622643983290369', '1587622643979096066', 1, 0, 1, 'B');
INSERT INTO `el_paper_qu_answer` VALUES ('34f15a6e-20ca-4709-b398-30309f10f25f', '1720330489494249474', '1587622643404476419', '1587622643396087810', 0, 0, 1, 'B');
INSERT INTO `el_paper_qu_answer` VALUES ('3563d5fe-944d-4a81-8871-153976dfd292', '1720330489494249474', '1587622643702272004', '1587622643693883394', 1, 0, 2, 'C');
INSERT INTO `el_paper_qu_answer` VALUES ('364c0872-8989-4238-ac50-ae580575e874', '1720330489494249474', '1587622643903598594', '1587622643895209985', 1, 1, 2, 'C');
INSERT INTO `el_paper_qu_answer` VALUES ('3e469ed2-ffd6-41a1-a4f9-dec0f5f4aee8', '1720330489494249474', '1587622643903598597', '1587622643895209985', 1, 0, 3, 'D');
INSERT INTO `el_paper_qu_answer` VALUES ('40acab48-9c82-4768-b7ce-cc02b3fdc587', '1720353930570117121', '1587622642846633988', '1587622642838245378', 0, 0, 1, 'B');
INSERT INTO `el_paper_qu_answer` VALUES ('432515e6-8c91-4853-8d35-21e0b6c5b48b', '1720330489494249474', '1587622643404476420', '1587622643396087810', 0, 0, 3, 'D');
INSERT INTO `el_paper_qu_answer` VALUES ('44284f5c-5043-4941-ab36-f8370195a4cd', '1720353930570117121', '1587622642775330819', '1587622642762747906', 0, 0, 3, 'D');
INSERT INTO `el_paper_qu_answer` VALUES ('44fa64c6-12ad-4d2e-81a9-7337a900b90d', '1720319279738683393', '1587622642846633985', '1587622642838245378', 1, 1, 2, 'C');
INSERT INTO `el_paper_qu_answer` VALUES ('4e499241-2c66-4c8b-a3a8-5480344b8e65', '1720353930570117121', '1587622642846633985', '1587622642838245378', 1, 0, 0, 'A');
INSERT INTO `el_paper_qu_answer` VALUES ('4fc7a71c-a886-4bb6-b9a6-b458afc5e0d6', '1720353930570117121', '1587622642402037765', '1587622642393649153', 0, 0, 1, 'B');
INSERT INTO `el_paper_qu_answer` VALUES ('50c954a0-aff0-4a46-be19-9332fb5e4907', '1720319279738683393', '1587622642402037765', '1587622642393649153', 0, 0, 1, 'B');
INSERT INTO `el_paper_qu_answer` VALUES ('510172ed-ed70-45ba-81ac-61019a08f2d9', '1720353930570117121', '1587622643832295428', '1587622643823906818', 1, 0, 0, 'A');
INSERT INTO `el_paper_qu_answer` VALUES ('5165a8bd-f2c8-49f5-8071-10f54b47f0ab', '1720330489494249474', '1587622643903598595', '1587622643895209985', 1, 0, 0, 'A');
INSERT INTO `el_paper_qu_answer` VALUES ('529e7ba0-f392-436b-89cb-9e25813b81bf', '1720353930570117121', '1587622643182178308', '1587622643173789698', 0, 0, 2, 'C');
INSERT INTO `el_paper_qu_answer` VALUES ('538cfeee-23e3-4bee-956a-d1f11ec4e80d', '1720319279738683393', '1587622643987484674', '1587622643979096066', 0, 0, 1, 'B');
INSERT INTO `el_paper_qu_answer` VALUES ('53b64f2b-cdf2-4316-8bd5-30ce85a3a04a', '1720330489494249474', '1587622643832295429', '1587622643823906818', 1, 0, 2, 'C');
INSERT INTO `el_paper_qu_answer` VALUES ('54785245-3de5-4d8e-8842-ea7e76ad76ef', '1720353930570117121', '1587622643832295426', '1587622643823906818', 1, 0, 2, 'C');
INSERT INTO `el_paper_qu_answer` VALUES ('57a729b2-7fe8-4346-b2f0-5f63d8319654', '1720319279738683393', '1587622644062982146', '1587622644054593538', 1, 1, 0, 'A');
INSERT INTO `el_paper_qu_answer` VALUES ('5a26d0fc-4f1e-4cce-8b07-57379149b4b9', '1720353930570117121', '1720319179629035522', '1720319179339628546', 1, 0, 0, 'A');
INSERT INTO `el_paper_qu_answer` VALUES ('5d33837b-7c4f-452c-9eea-184758ff0a23', '1720330489494249474', '1587622643769380867', '1587622643760992258', 0, 0, 3, 'D');
INSERT INTO `el_paper_qu_answer` VALUES ('5faeee3a-3684-453a-a90c-a01219645402', '1720330489494249474', '1587622643765186561', '1587622643760992258', 1, 0, 1, 'B');
INSERT INTO `el_paper_qu_answer` VALUES ('6590de2f-cc7f-4e80-9b4d-0c3f94d3a70c', '1720353930570117121', '1587622643832295429', '1587622643823906818', 1, 0, 4, 'E');
INSERT INTO `el_paper_qu_answer` VALUES ('67a8eefd-1185-4764-87be-2b7d2ae1962c', '1720330489494249474', '1587622642490118146', '1587622642473340930', 0, 0, 1, 'B');
INSERT INTO `el_paper_qu_answer` VALUES ('6949cd62-2684-4d9e-8203-bf0e6914e077', '1720330489494249474', '1587622642775330819', '1587622642762747906', 0, 0, 0, 'A');
INSERT INTO `el_paper_qu_answer` VALUES ('6c9ff213-ce88-4889-989d-1cd8b7a28916', '1720353930570117121', '1587622642402037764', '1587622642393649153', 1, 0, 4, 'E');
INSERT INTO `el_paper_qu_answer` VALUES ('6d35a787-8e94-4c69-82c8-7cc75a591b16', '1720330489494249474', '1587622642846633986', '1587622642838245378', 1, 0, 3, 'D');
INSERT INTO `el_paper_qu_answer` VALUES ('6e21a0f0-afea-4a1b-a6ac-b3e53570111a', '1720319279738683393', '1587622643903598597', '1587622643895209985', 1, 1, 2, 'C');
INSERT INTO `el_paper_qu_answer` VALUES ('711c2e74-68e9-488a-b110-21e3ae0b7d79', '1720319279738683393', '1587622642846633987', '1587622642838245378', 1, 0, 3, 'D');
INSERT INTO `el_paper_qu_answer` VALUES ('718a85ee-31c2-4db5-a5a3-76b82616cd78', '1720353930570117121', '1587622643832295427', '1587622643823906818', 1, 0, 1, 'B');
INSERT INTO `el_paper_qu_answer` VALUES ('721541df-7397-447a-b7f6-de4a876a8b16', '1720319279738683393', '1587622642846633986', '1587622642838245378', 1, 0, 1, 'B');
INSERT INTO `el_paper_qu_answer` VALUES ('724bdbbb-8e52-4c11-a465-f0dad57b751a', '1720330489494249474', '1587622643903598596', '1587622643895209985', 1, 0, 1, 'B');
INSERT INTO `el_paper_qu_answer` VALUES ('737854c5-3bbf-4bbb-b307-ad2099202a2b', '1720330489494249474', '1587622643832295430', '1587622643823906818', 1, 0, 4, 'E');
INSERT INTO `el_paper_qu_answer` VALUES ('74d59358-4f57-46db-b44f-fe9259a70478', '1720353930570117121', '1587622642402037763', '1587622642393649153', 0, 0, 0, 'A');
INSERT INTO `el_paper_qu_answer` VALUES ('75ed717b-1788-44a8-b7d8-1177966bbc85', '1720319279738683393', '1587622642708221957', '1587622642699833345', 0, 1, 0, 'A');
INSERT INTO `el_paper_qu_answer` VALUES ('7943da86-229c-40c9-b577-8173f24d3275', '1720330489494249474', '1587622642846633985', '1587622642838245378', 1, 0, 0, 'A');
INSERT INTO `el_paper_qu_answer` VALUES ('79f902a4-5c4c-4ccd-9217-c9a1dc434330', '1720319279738683393', '1587622642402037763', '1587622642393649153', 0, 0, 2, 'C');
INSERT INTO `el_paper_qu_answer` VALUES ('7c82d9f9-85c0-4984-93ad-c24be32f9a1a', '1720319279738683393', '1587622643702272001', '1587622643693883394', 1, 0, 2, 'C');
INSERT INTO `el_paper_qu_answer` VALUES ('7cf3e201-b552-4221-97dc-02041dfa706a', '1720353930570117121', '1587622643903598596', '1587622643895209985', 1, 0, 3, 'D');
INSERT INTO `el_paper_qu_answer` VALUES ('81d4e518-063e-409c-ae75-4bdfb0e5862a', '1720330489494249474', '1587622642775330820', '1587622642762747906', 0, 1, 2, 'C');
INSERT INTO `el_paper_qu_answer` VALUES ('822b25f5-c43d-46d9-8a75-6b2873de4d45', '1720353930570117121', '1587622643702272004', '1587622643693883394', 1, 0, 2, 'C');
INSERT INTO `el_paper_qu_answer` VALUES ('834efc97-f9cc-449c-884f-18a08cfd6887', '1720330489494249474', '1587622642490118148', '1587622642473340930', 0, 1, 0, 'A');
INSERT INTO `el_paper_qu_answer` VALUES ('84e9a1c4-a7bb-4406-b815-18d402d33c67', '1720353930570117121', '1587622642846633987', '1587622642838245378', 1, 0, 2, 'C');
INSERT INTO `el_paper_qu_answer` VALUES ('8eed04bd-b567-491e-81f3-bbca8f125861', '1720330489494249474', '1587622642490118147', '1587622642473340930', 1, 0, 4, 'E');
INSERT INTO `el_paper_qu_answer` VALUES ('8ef7dadd-6a14-43f9-8a72-5f7719bddf38', '1720330489494249474', '1587622643987484674', '1587622643979096066', 0, 0, 0, 'A');
INSERT INTO `el_paper_qu_answer` VALUES ('93d16d22-8fe3-45de-97e4-409de800f4f1', '1720319279738683393', '1587622643765186561', '1587622643760992258', 1, 1, 1, 'B');
INSERT INTO `el_paper_qu_answer` VALUES ('95ecaf9f-1f0b-4017-b707-d26e9bdf1b4c', '1720353930570117121', '1587622643702272001', '1587622643693883394', 1, 0, 3, 'D');
INSERT INTO `el_paper_qu_answer` VALUES ('9b2bea6f-5e5e-477d-a17c-9ace7a10ea87', '1720319279738683393', '1587622643769380865', '1587622643760992258', 1, 0, 2, 'C');
INSERT INTO `el_paper_qu_answer` VALUES ('9b7f53be-93c9-4bae-8e3d-07c943b3a53e', '1720353930570117121', '1587622643983290369', '1587622643979096066', 1, 0, 1, 'B');
INSERT INTO `el_paper_qu_answer` VALUES ('9f22b286-5599-4614-8077-f7ec25ed6830', '1720319279738683393', '1587622643702272003', '1587622643693883394', 0, 0, 0, 'A');
INSERT INTO `el_paper_qu_answer` VALUES ('a3040443-bc87-401e-a795-90d66700de91', '1720353930570117121', '1587622642775330818', '1587622642762747906', 1, 0, 2, 'C');
INSERT INTO `el_paper_qu_answer` VALUES ('a3e937e2-8892-4396-b735-96efd228340f', '1720319279738683393', '1587622644058787842', '1587622644054593538', 0, 0, 1, 'B');
INSERT INTO `el_paper_qu_answer` VALUES ('a5efe7b4-a74c-4d7c-bf1c-fdff11806cbe', '1720353930570117121', '1587622643987484674', '1587622643979096066', 0, 0, 0, 'A');
INSERT INTO `el_paper_qu_answer` VALUES ('aa8b15c4-a61c-491d-957a-aa13808c8aff', '1720353930570117121', '1587622643702272002', '1587622643693883394', 1, 0, 1, 'B');
INSERT INTO `el_paper_qu_answer` VALUES ('aab7afdc-4a7b-4ab4-be6a-38c8cb0d3321', '1720319279738683393', '1587622643832295426', '1587622643823906818', 1, 0, 4, 'E');
INSERT INTO `el_paper_qu_answer` VALUES ('ab7167e6-36d1-413e-9d1f-072cc046026d', '1720330489494249474', '1587622643404476417', '1587622643396087810', 1, 0, 0, 'A');
INSERT INTO `el_paper_qu_answer` VALUES ('ae1dc90c-3114-43b8-82c3-940ff374e535', '1720330489494249474', '1587622642490118149', '1587622642473340930', 0, 0, 2, 'C');
INSERT INTO `el_paper_qu_answer` VALUES ('b4c9a544-f9ae-4441-bd14-0084e10dd66d', '1720319279738683393', '1587622643903598596', '1587622643895209985', 1, 0, 0, 'A');
INSERT INTO `el_paper_qu_answer` VALUES ('b5fca588-4bd7-4f89-8f10-7508ace72fc0', '1720319279738683393', '1587622643702272002', '1587622643693883394', 1, 1, 1, 'B');
INSERT INTO `el_paper_qu_answer` VALUES ('b74b2e73-e679-414a-8d68-b14976069ceb', '1720353930570117121', '1587622643182178305', '1587622643173789698', 0, 0, 3, 'D');
INSERT INTO `el_paper_qu_answer` VALUES ('bf820079-50a3-4474-804d-89b1424565d7', '1720319279738683393', '1587622642708221956', '1587622642699833345', 0, 0, 3, 'D');
INSERT INTO `el_paper_qu_answer` VALUES ('c3e513c2-d73c-4075-9490-b2ac9340447d', '1720353930570117121', '1587622642402037762', '1587622642393649153', 0, 0, 3, 'D');
INSERT INTO `el_paper_qu_answer` VALUES ('c4139827-1274-4338-b8a9-bb538b60a64d', '1720319279738683393', '1587622642771136513', '1587622642762747906', 1, 0, 0, 'A');
INSERT INTO `el_paper_qu_answer` VALUES ('c538d844-07d5-43d1-b728-fa859f28f378', '1720353930570117121', '1720323443705348097', '1720323443638239234', 1, 0, 0, 'A');
INSERT INTO `el_paper_qu_answer` VALUES ('c645ae37-72fe-41cd-b818-bd716c355a0c', '1720319279738683393', '1587622643832295428', '1587622643823906818', 1, 1, 2, 'C');
INSERT INTO `el_paper_qu_answer` VALUES ('c6ae23e8-cd2d-41b2-9827-c9ae37b6fdfc', '1720319279738683393', '1587622643769380866', '1587622643760992258', 0, 0, 3, 'D');
INSERT INTO `el_paper_qu_answer` VALUES ('c81f3179-b4c8-4673-bfe5-4f495998b97e', '1720330489494249474', '1587622643832295426', '1587622643823906818', 1, 1, 1, 'B');
INSERT INTO `el_paper_qu_answer` VALUES ('c9111d14-9c48-45ee-ab41-42b20cc253bd', '1720353930570117121', '1587622643903598594', '1587622643895209985', 1, 0, 2, 'C');
INSERT INTO `el_paper_qu_answer` VALUES ('ce377a10-4cf3-462a-8320-678afb71b69e', '1720330489494249474', '1587622643702272003', '1587622643693883394', 0, 0, 0, 'A');
INSERT INTO `el_paper_qu_answer` VALUES ('cfe235e0-bf77-4e53-9f14-496bac532065', '1720319279738683393', '1587622642846633988', '1587622642838245378', 0, 0, 0, 'A');
INSERT INTO `el_paper_qu_answer` VALUES ('d837f879-7fca-44c2-bbb1-8c05fbf0c771', '1720319279738683393', '1587622643832295430', '1587622643823906818', 1, 0, 3, 'D');
INSERT INTO `el_paper_qu_answer` VALUES ('d88a8221-8d77-4c9b-95bb-728937199fc7', '1720330489494249474', '1587622644289474563', '1587622644281085953', 0, 0, 0, 'A');
INSERT INTO `el_paper_qu_answer` VALUES ('d9585b0a-14d2-4e71-9a09-68251c5647df', '1720330489494249474', '1587622644289474562', '1587622644281085953', 1, 0, 1, 'B');
INSERT INTO `el_paper_qu_answer` VALUES ('da027a32-f1a6-4de8-9b40-eae4fe778140', '1720319279738683393', '1587622643983290369', '1587622643979096066', 1, 1, 0, 'A');
INSERT INTO `el_paper_qu_answer` VALUES ('db23ca7a-9617-42a1-bb22-c83157c42e57', '1720330489494249474', '1587622643832295428', '1587622643823906818', 1, 0, 0, 'A');
INSERT INTO `el_paper_qu_answer` VALUES ('e090f08f-3ea5-481a-ac99-b0b78a29c135', '1720319279738683393', '1587622643903598594', '1587622643895209985', 1, 0, 1, 'B');
INSERT INTO `el_paper_qu_answer` VALUES ('e15d865e-28e3-48a7-9ade-30a4773f07e2', '1720319279738683393', '1587622642775330819', '1587622642762747906', 0, 0, 1, 'B');
INSERT INTO `el_paper_qu_answer` VALUES ('e5c14b75-7063-4deb-b8b2-22f2289235f1', '1720330489494249474', '1587622643769380866', '1587622643760992258', 0, 1, 2, 'C');
INSERT INTO `el_paper_qu_answer` VALUES ('e6b535ac-c35b-494c-9300-88be21bada7b', '1720319279738683393', '1587622643903598595', '1587622643895209985', 1, 0, 3, 'D');
INSERT INTO `el_paper_qu_answer` VALUES ('e7ae3ca8-30f2-462f-8511-5d2968f15349', '1720353930570117121', '1587622643769380867', '1587622643760992258', 0, 0, 2, 'C');
INSERT INTO `el_paper_qu_answer` VALUES ('e7bc3537-c8a6-4245-90e4-e789fa255594', '1720319279738683393', '1587622643702272004', '1587622643693883394', 1, 0, 3, 'D');
INSERT INTO `el_paper_qu_answer` VALUES ('ea1083b7-fd51-4f47-9eab-b653d04e391c', '1720330489494249474', '1587622643769380865', '1587622643760992258', 1, 0, 0, 'A');
INSERT INTO `el_paper_qu_answer` VALUES ('ee40f098-7c12-46ee-a634-1349fd6c4d77', '1720319279738683393', '1587622642775330818', '1587622642762747906', 1, 0, 3, 'D');
INSERT INTO `el_paper_qu_answer` VALUES ('efa3de84-17c3-40a9-ac2f-abdfef01d2da', '1720353930570117121', '1587622644289474563', '1587622644281085953', 0, 0, 1, 'B');
INSERT INTO `el_paper_qu_answer` VALUES ('efd36ef1-5edd-48c2-97e1-a149df52f343', '1720353930570117121', '1587622643832295430', '1587622643823906818', 1, 0, 3, 'D');
INSERT INTO `el_paper_qu_answer` VALUES ('f1415b98-5e33-4874-912e-4f6c07884eca', '1720330489494249474', '1587622642775330818', '1587622642762747906', 1, 0, 3, 'D');
INSERT INTO `el_paper_qu_answer` VALUES ('f1bea532-63ee-4f7f-99fd-dc64578262dc', '1720353930570117121', '1587622643765186561', '1587622643760992258', 1, 0, 3, 'D');
INSERT INTO `el_paper_qu_answer` VALUES ('f20e9b65-a3b3-4713-b1e2-c18700a2fc5f', '1720319279738683393', '1587622642775330820', '1587622642762747906', 0, 1, 2, 'C');
INSERT INTO `el_paper_qu_answer` VALUES ('f3ba71f0-b5fd-4738-bffc-9bd96f3095e1', '1720353930570117121', '1587622643769380865', '1587622643760992258', 1, 0, 0, 'A');
INSERT INTO `el_paper_qu_answer` VALUES ('f3eeac12-10cc-44bb-96af-b7a330f9b056', '1720353930570117121', '1587622642402037761', '1587622642393649153', 0, 0, 2, 'C');
INSERT INTO `el_paper_qu_answer` VALUES ('f481de00-9c23-4b1d-96a5-c550f48c7153', '1720330489494249474', '1587622642490118145', '1587622642473340930', 0, 0, 3, 'D');
INSERT INTO `el_paper_qu_answer` VALUES ('f499c5ef-e44f-44ae-a728-17efbc3991b0', '1720353930570117121', '1587622643903598595', '1587622643895209985', 1, 0, 1, 'B');
INSERT INTO `el_paper_qu_answer` VALUES ('f65f28c8-63c1-4e00-aad9-abc8e51e2efc', '1720353930570117121', '1587622644289474562', '1587622644281085953', 1, 0, 0, 'A');
INSERT INTO `el_paper_qu_answer` VALUES ('fb0f6a16-cfa4-43b0-98b6-6d007a42cc7c', '1720353930570117121', '1587622643702272003', '1587622643693883394', 0, 0, 0, 'A');
INSERT INTO `el_paper_qu_answer` VALUES ('fcaa6d9c-1e88-4e2a-a671-456a91a4fb05', '1720330489494249474', '1587622643832295427', '1587622643823906818', 1, 0, 3, 'D');
INSERT INTO `el_paper_qu_answer` VALUES ('fecb7ddf-1072-4b50-bba3-10a4212ba18d', '1720330489494249474', '1587622642771136513', '1587622642762747906', 1, 0, 1, 'B');

-- ----------------------------
-- Table structure for el_qu
-- ----------------------------
DROP TABLE IF EXISTS `el_qu`;
CREATE TABLE `el_qu`  (
                          `id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '题目ID',
                          `qu_type` int(11) NOT NULL COMMENT '题目类型',
                          `level` int(11) NOT NULL DEFAULT 1 COMMENT '1普通,2较难',
                          `image` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '题目图片',
                          `content` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '题目内容',
                          `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
                          `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
                          `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '题目备注',
                          `analysis` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '整题解析',
                          PRIMARY KEY (`id`) USING BTREE,
                          INDEX `qu_type`(`qu_type`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '试题主表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of el_qu
-- ----------------------------
INSERT INTO `el_qu` VALUES ('1587622642263625729', 1, 1, '', '五个答案中哪个是最好的类比？女儿对于父亲相当于侄女对于', '2022-11-02 09:48:29', '2022-11-02 09:48:29', '', '');
INSERT INTO `el_qu` VALUES ('1587622642393649153', 1, 1, '', '五个答案中哪个是最好的类比？皮对于树相当于鳞对于', '2022-11-02 09:48:29', '2022-11-02 09:48:29', '', '');
INSERT INTO `el_qu` VALUES ('1587622642473340930', 1, 1, '', '火车守车(车尾)长6.4米。机车的长度等于守车的长加上半节车厢的长。车厢长度等于守车长加上机车长。火车的机车、车厢、守车共长多少米？', '2022-11-02 09:48:29', '2022-11-02 09:48:29', '', '');
INSERT INTO `el_qu` VALUES ('1587622642557227009', 1, 1, '', '角对于元相当于小时对于', '2022-11-02 09:48:29', '2022-11-02 09:48:29', '', '');
INSERT INTO `el_qu` VALUES ('1587622642641113089', 1, 1, '', '如果把这个大立方体的六个面全部涂上黑色，然后按图中虚线把它切成36个小方块，两面有黑色的小方块有多少个？', '2022-11-02 09:48:29', '2022-11-02 09:48:29', '', '');
INSERT INTO `el_qu` VALUES ('1587622642699833345', 1, 1, '', '找出与众不同的一个：', '2022-11-02 09:48:29', '2022-11-02 09:48:29', '', '');
INSERT INTO `el_qu` VALUES ('1587622642762747906', 2, 1, '', '以下哪些是中国的特别行政区？', '2022-11-02 09:48:29', '2022-11-02 09:48:29', '', '');
INSERT INTO `el_qu` VALUES ('1587622642838245378', 2, 1, '', '中国东北三省是指（）', '2022-11-02 09:48:29', '2022-11-02 09:48:29', '', '');
INSERT INTO `el_qu` VALUES ('1587622642909548545', 3, 1, '', '咖啡的故乡是非洲吗？', '2022-11-02 09:48:29', '2022-11-02 09:48:29', '', '');
INSERT INTO `el_qu` VALUES ('1587622642976657410', 3, 1, '', '世界上最长的山脉安第斯山脉', '2022-11-02 09:48:29', '2022-11-02 09:48:29', '', '');
INSERT INTO `el_qu` VALUES ('1587622643039571970', 1, 1, '', '西亚波斯湾沿岸比较富裕，其原因是（）', '2022-11-02 09:48:29', '2022-11-02 09:48:29', '', '西亚波斯湾沿岸国家比较富裕，是因为大量出口石油资源．');
INSERT INTO `el_qu` VALUES ('1587622643102486530', 1, 1, '', '我国最北面的城市是哪个（）', '2022-11-02 09:48:29', '2022-11-02 09:48:29', '', '漠河市，隶属黑龙江省大兴安岭地区。 [1] 地处黑龙江省北部。西与内蒙古自治区呼伦贝尔市额尔古纳市为邻，南与内蒙古自治区根河市和呼中区交界，东与塔河县接壤，北隔黑龙江与俄罗斯外贝加尔边疆区（原赤塔州）和阿穆尔州相望，是中国最北端的县级行政区；地势南高北低，南北呈坡降趋势，属于寒温带大陆性季风气候。下辖6个镇，总面积18427平方千米。 [2] 根据第七次人口普查数据，截至2020年11月1日零时，漠河市常住人口为54036人。');
INSERT INTO `el_qu` VALUES ('1587622643173789698', 1, 1, '', '人们把社会生产的各个部门划分为三类产业，下列属于第三产业的是（）', '2022-11-02 09:48:29', '2022-11-02 09:48:29', '', '通常人们把生产的各部门划分为三类产业．农业是第一产业，包括种植业、林业、畜牧业、渔业等；工业和建筑业是第二产业；流通部门和服务部门是第三产业');
INSERT INTO `el_qu` VALUES ('1587622643240898561', 1, 1, '', '亚洲人中分布不是很均匀，其中人中较稀疏的部分是（）', '2022-11-02 09:48:29', '2022-11-02 09:48:29', '', '人口稠密地区都处在中低纬度、近海、平原地区，亚洲人口稀疏的地区在纬度位置较高的北亚，沙漠广布的西亚及气候干旱的中亚地区．');
INSERT INTO `el_qu` VALUES ('1587622643312201730', 1, 1, '', '亚洲各国经济发展不平衡，下列国家中人均国民生产总值最高的是（）', '2022-11-02 09:48:29', '2022-11-02 09:48:29', '', '本题还可以考查人口：人口超亿的国家有中国、印度、印度尼西亚、巴基斯坦、日本、孟加拉国等6个；各大洲人口排序：亚非欧南北美大洋洲；各大洲人口增长率：非南美亚大洋北美欧；著名的民族文化：亚洲三个人类文明发祥地：华夏文化(黄河——长江中下游地区)、印度河流域文化、两河流域文化(由幼法拉底河和底格里斯河冲积而成的美索不达米亚平原地区)；还有恒河文化、阿拉伯文化等。亚洲只有日本属于发达国家。');
INSERT INTO `el_qu` VALUES ('1587622643396087810', 1, 1, '', '地球上0度经线和0度纬线的长度相比（）', '2022-11-02 09:48:29', '2022-11-02 09:48:29', '', '0度经线和0度纬线相比()0度纬线的长度是0度经线的2倍。 因为经线是半圆，赤道是大圆。');
INSERT INTO `el_qu` VALUES ('1587622643467390977', 1, 1, '', '下列国家人口超过1亿的南亚国家是（）', '2022-11-02 09:48:29', '2022-11-02 09:48:29', '', '世界人口超过一亿的国家，从多到少依次为：中国、印度、美国、印度尼西亚、巴西、巴基斯坦、俄罗斯、孟加拉国、尼日利亚、日本和墨西哥共有11个．其中属于南亚的是印度、巴基斯坦和孟加拉国．');
INSERT INTO `el_qu` VALUES ('1587622643551277058', 1, 1, '', '世界上跨东西、南北距离最长的大洲是（）', '2022-11-02 09:48:29', '2022-11-02 09:48:29', '', '在全球的七大洲中，亚洲是世界上面积最大的一洲，也是南北跨纬度最多，热量差异大； 东西跨经度仅次于南极洲，东西距离最长的大洲；大洋洲是世界上最小的一洲 考点：本题主要考查大洲和大洋。');
INSERT INTO `el_qu` VALUES ('1587622643626774530', 1, 1, '', '地球公转会产生（）', '2022-11-02 09:48:30', '2022-11-02 09:48:30', '', '地球自转产生的现象有： 1、昼夜更替现象，向着太阳的半球,是白天,背着太阳的半球,是黑夜； 2、南北半球的地转偏向力引起的各种运动旋转现象； 3、地球上不同经度的地方,有不同的地方时；经度每隔15度,地方时相差一小时； 4、东西部地区的时间差现象，生物作息规律现象； 5、对地球形状的影响.地球自转所产生的惯性离心力,使得地球由两级向赤道逐渐膨胀,成为目前略扁的旋转椭球体。 地球公转产生的现象有： 1、根据太阳高度的差异,划分出五带：北寒、北温、热带、南温、南寒； 2、根据获得热量多少的时间差异,划分出四季：春、夏、秋、冬； 3、昼夜长短的变化现象； 4、天象位置的变化；生物生长规律现象. 5、正午太阳高度的变化；夏至日太阳直射北回归线，全球正午太阳高度从北回归线向南北两侧逐渐递减；二分日太阳直射赤道，全球正午太阳高度从赤道向两极递减，全球昼夜平分；冬至日太阳直射南回归线，全球正午高度从南回归线向南北两侧逐渐递减，南回归线及其以南的地区正午太阳高度达到最大值，北半球各纬度正午太阳高度达到最小值。');
INSERT INTO `el_qu` VALUES ('1587622643693883394', 2, 1, '', '南极旅游的兴起，请下列哪些因素有关（）', '2022-11-02 09:48:30', '2022-11-02 09:48:30', '', '');
INSERT INTO `el_qu` VALUES ('1587622643760992258', 2, 1, '', '交通运输线路（公路、铁路），选址的原因有（）', '2022-11-02 09:48:30', '2022-11-02 09:48:30', '', '');
INSERT INTO `el_qu` VALUES ('1587622643823906818', 2, 1, 'http://localhost:8201/upload/file/2022/11/07/1589528183307354113.jpg', '地球自转产生的现象有（）', '2022-11-02 09:48:30', '2022-11-02 09:48:30', '', '');
INSERT INTO `el_qu` VALUES ('1587622643895209985', 2, 1, '', '地球公转产生的现象有（）', '2022-11-02 09:48:30', '2022-11-02 09:48:30', '', '');
INSERT INTO `el_qu` VALUES ('1587622643979096066', 3, 1, '', '地球上出现的潮汐是由于地月吸引力。', '2022-11-02 09:48:30', '2022-11-02 09:48:30', '', '');
INSERT INTO `el_qu` VALUES ('1587622644054593538', 3, 1, '', '被称为“万园之园”的我国古典园林是颐和园。', '2022-11-02 09:48:30', '2022-11-02 09:48:30', '', '');
INSERT INTO `el_qu` VALUES ('1587622644134285314', 3, 1, '', '世界最长的山脉是安第斯山脉。', '2022-11-02 09:48:30', '2022-11-02 09:48:30', '', '');
INSERT INTO `el_qu` VALUES ('1587622644201394178', 3, 1, '', '仪表显示当前发动机转速是6000转克/分钟。', '2022-11-02 09:48:30', '2022-11-02 09:48:30', '', '仪表显示当前车速是20公里/小时。');
INSERT INTO `el_qu` VALUES ('1587622644281085953', 3, 1, '', '仪表显示当前冷却液的温度是90°C。', '2022-11-02 09:48:30', '2022-11-02 09:48:30', '', '水温表：指示发动机冷却液的温度，单位为摄氏度(C)。水温表指针所指的位置显示当前冷却液的温度。\n如图所示，指针指的位置是90，表示当前冷却液的温度是9o°C。');
INSERT INTO `el_qu` VALUES ('1587622644356583425', 1, 1, '', '我国面积最大的湖泊是（）。', '2022-11-02 09:48:30', '2022-11-02 09:48:30', '', '青海湖是我国最大的湖泊，它是一个咸水湖，面积约4450平方公里，说起来也不小了，但是如果把它放到全世界范围来看的话，青海湖实际上并非大型湖泊，单就面积而言，在全世界排名第34位，和我国国土面积世界第三的位置很不相称，世界最大湖泊里海的面积（38万平方公里），就相当于84个青海湖。');
INSERT INTO `el_qu` VALUES ('1720319179339628546', 5, 1, '', '中国的首都是哪里()', '2023-11-03 13:57:09', '2023-11-03 13:57:09', '', '');
INSERT INTO `el_qu` VALUES ('1720323443638239234', 6, 1, '', '请编写一段代码执行输出hall', '2023-11-03 14:14:06', '2023-11-03 14:14:06', '', '');

-- ----------------------------
-- Table structure for el_qu_answer
-- ----------------------------
DROP TABLE IF EXISTS `el_qu_answer`;
CREATE TABLE `el_qu_answer`  (
                                 `id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '答案ID',
                                 `qu_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '问题ID',
                                 `is_right` tinyint(4) NOT NULL DEFAULT 0 COMMENT '是否正确',
                                 `image` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '选项图片',
                                 `content` varchar(5000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '答案内容',
                                 `analysis` varchar(5000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '答案分析',
                                 PRIMARY KEY (`id`) USING BTREE,
                                 INDEX `qu_id`(`qu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '试题答案选项' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of el_qu_answer
-- ----------------------------
INSERT INTO `el_qu_answer` VALUES ('1587622642309763073', '1587622642263625729', 0, '', '母亲', '');
INSERT INTO `el_qu_answer` VALUES ('1587622642318151681', '1587622642263625729', 0, '', '哥哥', '');
INSERT INTO `el_qu_answer` VALUES ('1587622642318151682', '1587622642263625729', 0, '', '侄子', '');
INSERT INTO `el_qu_answer` VALUES ('1587622642318151683', '1587622642263625729', 0, '', '表兄', '');
INSERT INTO `el_qu_answer` VALUES ('1587622642318151684', '1587622642263625729', 1, '', '叔叔', '');
INSERT INTO `el_qu_answer` VALUES ('1587622642402037761', '1587622642393649153', 0, '', '鳃', '');
INSERT INTO `el_qu_answer` VALUES ('1587622642402037762', '1587622642393649153', 0, '', '大海', '');
INSERT INTO `el_qu_answer` VALUES ('1587622642402037763', '1587622642393649153', 0, '', '渔夫', '');
INSERT INTO `el_qu_answer` VALUES ('1587622642402037764', '1587622642393649153', 1, '', '鱼', '');
INSERT INTO `el_qu_answer` VALUES ('1587622642402037765', '1587622642393649153', 0, '', '鳍', '');
INSERT INTO `el_qu_answer` VALUES ('1587622642490118145', '1587622642473340930', 0, '', '25.6米', '');
INSERT INTO `el_qu_answer` VALUES ('1587622642490118146', '1587622642473340930', 0, '', '36米', '');
INSERT INTO `el_qu_answer` VALUES ('1587622642490118147', '1587622642473340930', 1, '', '51.2米', '');
INSERT INTO `el_qu_answer` VALUES ('1587622642490118148', '1587622642473340930', 0, '', '64.4米', '');
INSERT INTO `el_qu_answer` VALUES ('1587622642490118149', '1587622642473340930', 0, '', '76.2米', '');
INSERT INTO `el_qu_answer` VALUES ('1587622642569809922', '1587622642557227009', 1, '', '分', '');
INSERT INTO `el_qu_answer` VALUES ('1587622642569809923', '1587622642557227009', 0, '', '秒', '');
INSERT INTO `el_qu_answer` VALUES ('1587622642569809924', '1587622642557227009', 0, '', '月', '');
INSERT INTO `el_qu_answer` VALUES ('1587622642569809925', '1587622642557227009', 0, '', '日', '');
INSERT INTO `el_qu_answer` VALUES ('1587622642569809926', '1587622642557227009', 0, '', '钟', '');
INSERT INTO `el_qu_answer` VALUES ('1587622642649501697', '1587622642641113089', 0, '', '10', '');
INSERT INTO `el_qu_answer` VALUES ('1587622642649501698', '1587622642641113089', 0, '', '12', '');
INSERT INTO `el_qu_answer` VALUES ('1587622642649501699', '1587622642641113089', 1, '', '16', '');
INSERT INTO `el_qu_answer` VALUES ('1587622642649501700', '1587622642641113089', 0, '', '20', '');
INSERT INTO `el_qu_answer` VALUES ('1587622642649501701', '1587622642641113089', 0, '', '8', '');
INSERT INTO `el_qu_answer` VALUES ('1587622642708221953', '1587622642699833345', 0, '', '西安', '');
INSERT INTO `el_qu_answer` VALUES ('1587622642708221954', '1587622642699833345', 0, '', '郑州', '');
INSERT INTO `el_qu_answer` VALUES ('1587622642708221955', '1587622642699833345', 1, '', '哈尔滨', '');
INSERT INTO `el_qu_answer` VALUES ('1587622642708221956', '1587622642699833345', 0, '', '昆明', '');
INSERT INTO `el_qu_answer` VALUES ('1587622642708221957', '1587622642699833345', 0, '', '南昌', '');
INSERT INTO `el_qu_answer` VALUES ('1587622642771136513', '1587622642762747906', 1, '', '香港', '');
INSERT INTO `el_qu_answer` VALUES ('1587622642775330818', '1587622642762747906', 1, '', '澳门', '');
INSERT INTO `el_qu_answer` VALUES ('1587622642775330819', '1587622642762747906', 0, '', '珠海', '');
INSERT INTO `el_qu_answer` VALUES ('1587622642775330820', '1587622642762747906', 0, '', '重庆', '');
INSERT INTO `el_qu_answer` VALUES ('1587622642846633985', '1587622642838245378', 1, '', '黑龙江省', '');
INSERT INTO `el_qu_answer` VALUES ('1587622642846633986', '1587622642838245378', 1, '', '吉林省', '');
INSERT INTO `el_qu_answer` VALUES ('1587622642846633987', '1587622642838245378', 1, '', '辽宁省', '');
INSERT INTO `el_qu_answer` VALUES ('1587622642846633988', '1587622642838245378', 0, '', '河北省', '');
INSERT INTO `el_qu_answer` VALUES ('1587622642917937153', '1587622642909548545', 1, '', '正确', '');
INSERT INTO `el_qu_answer` VALUES ('1587622642917937154', '1587622642909548545', 0, '', '错误', '');
INSERT INTO `el_qu_answer` VALUES ('1587622642985046018', '1587622642976657410', 1, '', '正确', '');
INSERT INTO `el_qu_answer` VALUES ('1587622642989240321', '1587622642976657410', 0, '', '错误', '');
INSERT INTO `el_qu_answer` VALUES ('1587622643047960578', '1587622643039571970', 0, '', '工亚基础雄厚', '');
INSERT INTO `el_qu_answer` VALUES ('1587622643047960579', '1587622643039571970', 1, '', '拥有丰富的石油资源', '');
INSERT INTO `el_qu_answer` VALUES ('1587622643047960580', '1587622643039571970', 0, '', '第三产业在国内生产总值中的比重大', '');
INSERT INTO `el_qu_answer` VALUES ('1587622643052154882', '1587622643039571970', 0, '', '大力发展出口加工工业', '');
INSERT INTO `el_qu_answer` VALUES ('1587622643110875137', '1587622643102486530', 0, '', '铁岭', '');
INSERT INTO `el_qu_answer` VALUES ('1587622643110875138', '1587622643102486530', 0, '', '齐齐哈尔', '');
INSERT INTO `el_qu_answer` VALUES ('1587622643110875139', '1587622643102486530', 0, '', '沈阳', '');
INSERT INTO `el_qu_answer` VALUES ('1587622643110875140', '1587622643102486530', 1, '', '漠河', '');
INSERT INTO `el_qu_answer` VALUES ('1587622643182178305', '1587622643173789698', 0, '', '工业', '');
INSERT INTO `el_qu_answer` VALUES ('1587622643182178306', '1587622643173789698', 0, '', '建筑业', '');
INSERT INTO `el_qu_answer` VALUES ('1587622643182178307', '1587622643173789698', 1, '', '服务业', '');
INSERT INTO `el_qu_answer` VALUES ('1587622643182178308', '1587622643173789698', 0, '', '农业', '');
INSERT INTO `el_qu_answer` VALUES ('1587622643249287170', '1587622643240898561', 0, '', '东亚', '');
INSERT INTO `el_qu_answer` VALUES ('1587622643253481474', '1587622643240898561', 0, '', '东南亚', '');
INSERT INTO `el_qu_answer` VALUES ('1587622643253481475', '1587622643240898561', 0, '', '南亚', '');
INSERT INTO `el_qu_answer` VALUES ('1587622643253481476', '1587622643240898561', 1, '', '西亚', '');
INSERT INTO `el_qu_answer` VALUES ('1587622643324784642', '1587622643312201730', 0, '', '韩国', '');
INSERT INTO `el_qu_answer` VALUES ('1587622643324784643', '1587622643312201730', 0, '', '新加坡', '');
INSERT INTO `el_qu_answer` VALUES ('1587622643324784644', '1587622643312201730', 1, '', '日本', '');
INSERT INTO `el_qu_answer` VALUES ('1587622643324784645', '1587622643312201730', 0, '', '马来西亚', '');
INSERT INTO `el_qu_answer` VALUES ('1587622643404476417', '1587622643396087810', 1, '', '0度纬线稍长', '');
INSERT INTO `el_qu_answer` VALUES ('1587622643404476418', '1587622643396087810', 0, '', '0度经线稍长', '');
INSERT INTO `el_qu_answer` VALUES ('1587622643404476419', '1587622643396087810', 0, '', '相等', '');
INSERT INTO `el_qu_answer` VALUES ('1587622643404476420', '1587622643396087810', 0, '', '0度经线不到0度纬线的1/2', '');
INSERT INTO `el_qu_answer` VALUES ('1587622643479973889', '1587622643467390977', 1, '', '孟加拉国', '');
INSERT INTO `el_qu_answer` VALUES ('1587622643479973890', '1587622643467390977', 0, '', '印度尼西亚', '');
INSERT INTO `el_qu_answer` VALUES ('1587622643479973891', '1587622643467390977', 0, '', '日本', '');
INSERT INTO `el_qu_answer` VALUES ('1587622643479973892', '1587622643467390977', 0, '', '韩国', '');
INSERT INTO `el_qu_answer` VALUES ('1587622643563859970', '1587622643551277058', 0, '', '非洲', '');
INSERT INTO `el_qu_answer` VALUES ('1587622643563859971', '1587622643551277058', 0, '', '北美洲', '');
INSERT INTO `el_qu_answer` VALUES ('1587622643563859972', '1587622643551277058', 0, '', '大洋洲', '');
INSERT INTO `el_qu_answer` VALUES ('1587622643563859973', '1587622643551277058', 1, '', '亚洲', '');
INSERT INTO `el_qu_answer` VALUES ('1587622643635163138', '1587622643626774530', 1, '', '四季现象', '');
INSERT INTO `el_qu_answer` VALUES ('1587622643639357441', '1587622643626774530', 0, '', '昼夜交替', '');
INSERT INTO `el_qu_answer` VALUES ('1587622643639357442', '1587622643626774530', 0, '', '时间差异', '');
INSERT INTO `el_qu_answer` VALUES ('1587622643639357443', '1587622643626774530', 0, '', '日期差异', '');
INSERT INTO `el_qu_answer` VALUES ('1587622643702272001', '1587622643693883394', 1, '', '人们的求知、探秘和猎奇欲望的增长', '');
INSERT INTO `el_qu_answer` VALUES ('1587622643702272002', '1587622643693883394', 1, '', '交通工具的发展', '');
INSERT INTO `el_qu_answer` VALUES ('1587622643702272003', '1587622643693883394', 0, '', '促使不同国家的地区的文化交增进友谊', '');
INSERT INTO `el_qu_answer` VALUES ('1587622643702272004', '1587622643693883394', 1, '', '科学技术的进步', '');
INSERT INTO `el_qu_answer` VALUES ('1587622643765186561', '1587622643760992258', 1, '', '等高线稀疏', '');
INSERT INTO `el_qu_answer` VALUES ('1587622643769380865', '1587622643760992258', 1, '', '地形坡度和缓', '');
INSERT INTO `el_qu_answer` VALUES ('1587622643769380866', '1587622643760992258', 0, '', '隧道多', '');
INSERT INTO `el_qu_answer` VALUES ('1587622643769380867', '1587622643760992258', 0, '', '地形复杂', '');
INSERT INTO `el_qu_answer` VALUES ('1587622643832295426', '1587622643823906818', 1, 'http://localhost:8201/upload/file/2022/11/07/1589528211451133954.jpg', '南北半球的地转偏向力引起的各种运动旋转现象；', '');
INSERT INTO `el_qu_answer` VALUES ('1587622643832295427', '1587622643823906818', 1, '', '地球上不同经度的地方,有不同的地方时；经度每隔15度,地方时相差一小时；', '');
INSERT INTO `el_qu_answer` VALUES ('1587622643832295428', '1587622643823906818', 1, 'http://localhost:8201/upload/file/2022/11/07/1589528315486650369.jpeg', '东西部地区的时间差现象，生物作息规律现象；', '');
INSERT INTO `el_qu_answer` VALUES ('1587622643832295429', '1587622643823906818', 1, '', '对地球形状的影响.地球自转所产生的惯性离心力,使得地球由两级向赤道逐渐膨胀,成为目前略扁的旋转椭球体。', '');
INSERT INTO `el_qu_answer` VALUES ('1587622643832295430', '1587622643823906818', 1, '', '昼夜更替现象，向着太阳的半球,是白天,背着太阳的半球,是黑夜；', '');
INSERT INTO `el_qu_answer` VALUES ('1587622643903598594', '1587622643895209985', 1, '', '根据太阳高度的差异,划分出五带：北寒、北温、热带、南温、南寒；', '');
INSERT INTO `el_qu_answer` VALUES ('1587622643903598595', '1587622643895209985', 1, '', '根据获得热量多少的时间差异,划分出四季：春、夏、秋、冬；', '');
INSERT INTO `el_qu_answer` VALUES ('1587622643903598596', '1587622643895209985', 1, '', '昼夜长短的变化现象；', '');
INSERT INTO `el_qu_answer` VALUES ('1587622643903598597', '1587622643895209985', 1, '', '正午太阳高度的变化；夏至日太阳直射北回归线，全球正午太阳高度从北回归线向南北两侧逐渐递减；二分日太阳直射赤道，全球正午太阳高度从赤道向两极递减，全球昼夜平分；冬至日太阳直射南回归线，全球正午高度从南回归线向南北两侧逐渐递减，南回归线及其以南的地区正午太阳高度达到最大值，北半球各纬度正午太阳高度达到最小值。', '');
INSERT INTO `el_qu_answer` VALUES ('1587622643983290369', '1587622643979096066', 1, '', '正确', '');
INSERT INTO `el_qu_answer` VALUES ('1587622643987484674', '1587622643979096066', 0, '', '错误', '');
INSERT INTO `el_qu_answer` VALUES ('1587622644058787842', '1587622644054593538', 0, '', '正确', '');
INSERT INTO `el_qu_answer` VALUES ('1587622644062982146', '1587622644054593538', 1, '', '错误', '');
INSERT INTO `el_qu_answer` VALUES ('1587622644138479618', '1587622644134285314', 1, '', '正确', '');
INSERT INTO `el_qu_answer` VALUES ('1587622644142673922', '1587622644134285314', 0, '', '错误', '');
INSERT INTO `el_qu_answer` VALUES ('1587622644209782786', '1587622644201394178', 0, '', '正确', '');
INSERT INTO `el_qu_answer` VALUES ('1587622644209782787', '1587622644201394178', 1, '', '错误', '');
INSERT INTO `el_qu_answer` VALUES ('1587622644289474562', '1587622644281085953', 1, '', '正确', '');
INSERT INTO `el_qu_answer` VALUES ('1587622644289474563', '1587622644281085953', 0, '', '错误', '');
INSERT INTO `el_qu_answer` VALUES ('1587622644364972034', '1587622644356583425', 1, '', '青海湖', '');
INSERT INTO `el_qu_answer` VALUES ('1587622644364972035', '1587622644356583425', 0, '', '太湖', '');
INSERT INTO `el_qu_answer` VALUES ('1587622644364972036', '1587622644356583425', 0, '', '洞庭湖', '');
INSERT INTO `el_qu_answer` VALUES ('1587622644369166338', '1587622644356583425', 0, '', '鄱阳湖', '');
INSERT INTO `el_qu_answer` VALUES ('1720319179629035522', '1720319179339628546', 1, '', '北京', '');
INSERT INTO `el_qu_answer` VALUES ('1720323443705348097', '1720323443638239234', 1, '', 'system.out.print(\"hello\")', '');

-- ----------------------------
-- Table structure for el_qu_repo
-- ----------------------------
DROP TABLE IF EXISTS `el_qu_repo`;
CREATE TABLE `el_qu_repo`  (
                               `id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
                               `qu_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '试题',
                               `repo_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '归属题库',
                               `qu_type` int(11) NOT NULL DEFAULT 0 COMMENT '题目类型',
                               `sort` int(11) NOT NULL DEFAULT 0 COMMENT '排序',
                               PRIMARY KEY (`id`) USING BTREE,
                               INDEX `qu_id`(`qu_id`) USING BTREE,
                               INDEX `repo_id`(`repo_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '试题题库关联' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of el_qu_repo
-- ----------------------------
INSERT INTO `el_qu_repo` VALUES ('1587622670122192897', '1587622643760992258', '1587622451624120321', 2, 1);
INSERT INTO `el_qu_repo` VALUES ('1587622670143164418', '1587622644281085953', '1587622451624120321', 3, 2);
INSERT INTO `el_qu_repo` VALUES ('1587622670159941633', '1587622643626774530', '1587622451624120321', 1, 3);
INSERT INTO `el_qu_repo` VALUES ('1587622670180913153', '1587622644134285314', '1587622451624120321', 3, 4);
INSERT INTO `el_qu_repo` VALUES ('1587622670201884673', '1587622643979096066', '1587622451624120321', 3, 5);
INSERT INTO `el_qu_repo` VALUES ('1587622670243827714', '1587622644356583425', '1587622451624120321', 1, 6);
INSERT INTO `el_qu_repo` VALUES ('1587622670268993537', '1587622643693883394', '1587622451624120321', 2, 7);
INSERT INTO `el_qu_repo` VALUES ('1587622670315130881', '1587622644201394178', '1587622451624120321', 3, 8);
INSERT INTO `el_qu_repo` VALUES ('1587622670340296706', '1587622644054593538', '1587622451624120321', 3, 9);
INSERT INTO `el_qu_repo` VALUES ('1587622670361268226', '1587622643895209985', '1587622451624120321', 2, 10);
INSERT INTO `el_qu_repo` VALUES ('1587622670382239745', '1587622642641113089', '1587622451624120321', 1, 11);
INSERT INTO `el_qu_repo` VALUES ('1587622670411599873', '1587622643102486530', '1587622451624120321', 1, 12);
INSERT INTO `el_qu_repo` VALUES ('1587622670436765698', '1587622642473340930', '1587622451624120321', 1, 13);
INSERT INTO `el_qu_repo` VALUES ('1587622670461931522', '1587622642976657410', '1587622451624120321', 3, 14);
INSERT INTO `el_qu_repo` VALUES ('1587622670491291650', '1587622642263625729', '1587622451624120321', 1, 15);
INSERT INTO `el_qu_repo` VALUES ('1587622670520651778', '1587622643467390977', '1587622451624120321', 1, 16);
INSERT INTO `el_qu_repo` VALUES ('1587622670545817602', '1587622642838245378', '1587622451624120321', 2, 17);
INSERT INTO `el_qu_repo` VALUES ('1587622670575177730', '1587622643312201730', '1587622451624120321', 1, 18);
INSERT INTO `el_qu_repo` VALUES ('1587622670604537858', '1587622642699833345', '1587622451624120321', 1, 19);
INSERT INTO `el_qu_repo` VALUES ('1587622670638092289', '1587622643173789698', '1587622451624120321', 1, 20);
INSERT INTO `el_qu_repo` VALUES ('1587622670667452417', '1587622642557227009', '1587622451624120321', 1, 21);
INSERT INTO `el_qu_repo` VALUES ('1587622670696812545', '1587622643039571970', '1587622451624120321', 1, 22);
INSERT INTO `el_qu_repo` VALUES ('1587622670721978369', '1587622643551277058', '1587622451624120321', 1, 23);
INSERT INTO `el_qu_repo` VALUES ('1587622670751338497', '1587622642393649153', '1587622451624120321', 1, 24);
INSERT INTO `el_qu_repo` VALUES ('1587622670776504322', '1587622642909548545', '1587622451624120321', 3, 25);
INSERT INTO `el_qu_repo` VALUES ('1587622670810058754', '1587622643396087810', '1587622451624120321', 1, 26);
INSERT INTO `el_qu_repo` VALUES ('1587622670843613186', '1587622642762747906', '1587622451624120321', 2, 27);
INSERT INTO `el_qu_repo` VALUES ('1587622670872973313', '1587622643240898561', '1587622451624120321', 1, 28);
INSERT INTO `el_qu_repo` VALUES ('1589528323552296962', '1587622643823906818', '1587622451624120321', 2, 29);
INSERT INTO `el_qu_repo` VALUES ('1720319179683561473', '1720319179339628546', '1587622451624120321', 5, 30);
INSERT INTO `el_qu_repo` VALUES ('1720323443751485442', '1720323443638239234', '1587622451624120321', 6, 31);

-- ----------------------------
-- Table structure for el_repo
-- ----------------------------
DROP TABLE IF EXISTS `el_repo`;
CREATE TABLE `el_repo`  (
                            `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '题库ID',
                            `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '题库编号',
                            `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '题库名称',
                            `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '题库备注',
                            `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
                            `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
                            PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '题库信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of el_repo
-- ----------------------------
INSERT INTO `el_repo` VALUES ('1587622451624120321', '', '【云帆】演示题库', '【云帆】演示题库', '2022-11-02 09:47:44', '2022-11-02 09:47:44');

-- ----------------------------
-- Table structure for el_user_book
-- ----------------------------
DROP TABLE IF EXISTS `el_user_book`;
CREATE TABLE `el_user_book`  (
                                 `id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'ID',
                                 `exam_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '考试ID',
                                 `user_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户ID',
                                 `qu_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '题目ID',
                                 `create_time` datetime NULL DEFAULT NULL COMMENT '加入时间',
                                 `update_time` datetime NULL DEFAULT NULL COMMENT '最近错误时间',
                                 `wrong_count` int(11) NOT NULL COMMENT '错误时间',
                                 `title` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '题目标题',
                                 `sort` int(11) NOT NULL COMMENT '错题序号',
                                 PRIMARY KEY (`id`) USING BTREE,
                                 INDEX `user_id`(`user_id`) USING BTREE,
                                 INDEX `sort`(`sort`) USING BTREE,
                                 INDEX `exam_id`(`exam_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '错题本' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of el_user_book
-- ----------------------------
INSERT INTO `el_user_book` VALUES ('1720322649409028097', '1587621704140427265', '10001', '1587622642699833345', '2023-11-03 14:10:56', '2023-11-03 14:10:56', 1, '找出与众不同的一个：', 1);
INSERT INTO `el_user_book` VALUES ('1720322649463554049', '1587621704140427265', '10001', '1587622642393649153', '2023-11-03 14:10:56', '2023-11-03 14:10:56', 1, '五个答案中哪个是最好的类比？皮对于树相当于鳞对于', 2);
INSERT INTO `el_user_book` VALUES ('1720322649501302785', '1587621704140427265', '10001', '1587622643760992258', '2023-11-03 14:10:56', '2023-11-03 14:10:56', 2, '交通运输线路（公路、铁路），选址的原因有（）', 3);
INSERT INTO `el_user_book` VALUES ('1720322649526468609', '1587621704140427265', '10001', '1587622643895209985', '2023-11-03 14:10:56', '2023-11-03 14:10:56', 2, '地球公转产生的现象有（）', 4);
INSERT INTO `el_user_book` VALUES ('1720322649568411649', '1587621704140427265', '10001', '1587622643693883394', '2023-11-03 14:10:56', '2023-11-03 14:10:56', 2, '南极旅游的兴起，请下列哪些因素有关（）', 5);
INSERT INTO `el_user_book` VALUES ('1720322649606160386', '1587621704140427265', '10001', '1587622642838245378', '2023-11-03 14:10:56', '2023-11-03 14:10:56', 2, '中国东北三省是指（）', 6);
INSERT INTO `el_user_book` VALUES ('1720322649643909121', '1587621704140427265', '10001', '1587622643823906818', '2023-11-03 14:10:56', '2023-11-03 14:10:56', 2, '地球自转产生的现象有（）', 7);
INSERT INTO `el_user_book` VALUES ('1720322649677463553', '1587621704140427265', '10001', '1587622642762747906', '2023-11-03 14:10:56', '2023-11-03 14:10:56', 2, '以下哪些是中国的特别行政区？', 8);
INSERT INTO `el_user_book` VALUES ('1720330598994944001', '1587621704140427265', '10001', '1587622642473340930', '2023-11-03 14:42:32', '2023-11-03 14:42:32', 1, '火车守车(车尾)长6.4米。机车的长度等于守车的长加上半节车厢的长。车厢长度等于守车长加上机车长。火车的机车、车厢、守车共长多少米？', 9);
INSERT INTO `el_user_book` VALUES ('1720330599032692738', '1587621704140427265', '10001', '1587622643396087810', '2023-11-03 14:42:32', '2023-11-03 14:42:32', 1, '地球上0度经线和0度纬线的长度相比（）', 10);
INSERT INTO `el_user_book` VALUES ('1720330599213047809', '1587621704140427265', '10001', '1587622643979096066', '2023-11-03 14:42:32', '2023-11-03 14:42:32', 1, '地球上出现的潮汐是由于地月吸引力。', 11);
INSERT INTO `el_user_book` VALUES ('1720330599246602241', '1587621704140427265', '10001', '1587622644281085953', '2023-11-03 14:42:32', '2023-11-03 14:42:32', 1, '仪表显示当前冷却液的温度是90°C。', 12);

-- ----------------------------
-- Table structure for el_user_exam
-- ----------------------------
DROP TABLE IF EXISTS `el_user_exam`;
CREATE TABLE `el_user_exam`  (
                                 `id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
                                 `user_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户ID',
                                 `exam_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '考试ID',
                                 `try_count` int(11) NOT NULL DEFAULT 1 COMMENT '考试次数',
                                 `max_score` int(11) NOT NULL DEFAULT 0 COMMENT '最高分数',
                                 `passed` tinyint(4) NOT NULL DEFAULT 0 COMMENT '是否通过',
                                 `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
                                 `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
                                 PRIMARY KEY (`id`) USING BTREE,
                                 UNIQUE INDEX `user_id`(`user_id`, `exam_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '考试记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of el_user_exam
-- ----------------------------
INSERT INTO `el_user_exam` VALUES ('1720322648565972993', '10001', '1587621704140427265', 2, 20, 0, '2023-11-03 14:10:56', '2023-11-03 14:42:31');

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
                               `id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'ID',
                               `site_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '系统名称',
                               `front_logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '前端LOGO',
                               `back_logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '后台LOGO',
                               `copy_right` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '版权信息',
                               `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
                               `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
                               `create_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建人',
                               `update_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '修改人',
                               `data_flag` int(11) NULL DEFAULT 0 COMMENT '数据标识',
                               PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统设置' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES ('1', '云帆在线培训考试系统', NULL, NULL, NULL, '2020-12-03 16:51:30', '2020-12-03 16:51:30', '', '', 1);

-- ----------------------------
-- Table structure for sys_depart
-- ----------------------------
DROP TABLE IF EXISTS `sys_depart`;
CREATE TABLE `sys_depart`  (
                               `id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'ID',
                               `dept_type` int(11) NOT NULL DEFAULT 1 COMMENT '1公司2部门',
                               `parent_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '所属上级',
                               `dept_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '部门名称',
                               `dept_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '部门编码',
                               `sort` int(11) NOT NULL DEFAULT 0 COMMENT '排序',
                               PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '部门信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_depart
-- ----------------------------
INSERT INTO `sys_depart` VALUES ('1302853644578000898', 1, '0', '北京云帆互联科技有限公司', 'A01', 1);
INSERT INTO `sys_depart` VALUES ('1302855940200284161', 1, '1302855776496599041', '后端组', 'A01A01A01', 2);
INSERT INTO `sys_depart` VALUES ('1302855994843676674', 1, '1302855776496599041', '前端组', 'A01A01A02', 1);
INSERT INTO `sys_depart` VALUES ('1302856017283203073', 1, '1302855776496599041', '产品组', 'A01A01A03', 3);
INSERT INTO `sys_depart` VALUES ('1302856084475953154', 1, '1302855776496599041', '测试组', 'A01A01A05', 5);
INSERT INTO `sys_depart` VALUES ('1302856266567467010', 1, '1302855896415944705', '客户一组', 'A01A05A01', 1);
INSERT INTO `sys_depart` VALUES ('1302856320602685442', 1, '1302855896415944705', '客服二组', 'A01A05A02', 2);
INSERT INTO `sys_depart` VALUES ('1318103313740320770', 1, '1302853644578000898', '技术部', 'A01A01', 1);
INSERT INTO `sys_depart` VALUES ('1318103339229106178', 1, '1302853644578000898', '人事部', 'A01A02', 2);
INSERT INTO `sys_depart` VALUES ('1318103362494910465', 1, '1302853644578000898', '财务部', 'A01A03', 3);

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
                             `id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色ID',
                             `role_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '角色名称',
                             PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('sa', '超级管理员');
INSERT INTO `sys_role` VALUES ('student', '学员');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
                             `id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'ID',
                             `user_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '用户名',
                             `real_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '真实姓名',
                             `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '密码',
                             `salt` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '密码盐',
                             `role_ids` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '角色列表',
                             `depart_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '部门ID',
                             `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
                             `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
                             `state` int(11) NOT NULL DEFAULT 0 COMMENT '状态',
                             `data_flag` int(11) NOT NULL DEFAULT 0 COMMENT '0正常,1隐藏',
                             PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '管理用户' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('10001', 'admin', '超管A', '06681cd08837b21adf6b5ef9279d403d', 'XoFFuS', 'sa', '1318103313740320770', '2020-04-20 13:51:03', '2020-04-20 13:51:03', 0, 0);
INSERT INTO `sys_user` VALUES ('1252125239901696002', 'person', '张三', '6dfdd6761a3e8319719f32abb9aeae9c', 'tZCjLq', 'student', '1318103339229106178', '2020-04-20 14:41:35', '2020-04-20 14:41:35', 0, 0);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
                                  `id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'ID',
                                  `user_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户ID',
                                  `role_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色ID',
                                  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户角色' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('1318103579445284865', '10001', 'sa');
INSERT INTO `sys_user_role` VALUES ('1318128865264132097', '1252125239901696002', 'student');
INSERT INTO `sys_user_role` VALUES ('1587574421424279555', '1587574421424279554', 'student');

SET FOREIGN_KEY_CHECKS = 1;
