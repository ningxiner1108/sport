/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50520
Source Host           : localhost:3306
Source Database       : sport

Target Server Type    : MYSQL
Target Server Version : 50520
File Encoding         : 65001

Date: 2016-08-01 14:09:53
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for sp_account_change
-- ----------------------------
DROP TABLE IF EXISTS `sp_account_change`;
CREATE TABLE `sp_account_change` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '操作方式：0->支出，1->收入',
  `amount` float(11,2) NOT NULL DEFAULT '0.00' COMMENT '操作的金额',
  `balance` float(11,2) NOT NULL DEFAULT '0.00' COMMENT '操作后的余额',
  `addtime` int(11) NOT NULL DEFAULT '0' COMMENT '操作时间',
  `ip` varchar(20) NOT NULL DEFAULT '' COMMENT '操作时的IP地址',
  `reason` varchar(255) NOT NULL DEFAULT '' COMMENT '操作原因备注',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COMMENT='用户收支记录';

-- ----------------------------
-- Records of sp_account_change
-- ----------------------------
INSERT INTO `sp_account_change` VALUES ('1', '1', '0', '40.00', '160.00', '1466731874', '127.0.0.1', '支付订单：31');
INSERT INTO `sp_account_change` VALUES ('2', '1', '0', '45.00', '115.00', '1466732495', '127.0.0.1', '支付订单：32');
INSERT INTO `sp_account_change` VALUES ('3', '1', '0', '40.00', '75.00', '1466773039', '127.0.0.1', '支付订单：33');
INSERT INTO `sp_account_change` VALUES ('4', '1', '2', '30.00', '105.00', '1466773377', '127.0.0.1', '订单33，编号：201606242057137061，退款金额：30，手续费：10');
INSERT INTO `sp_account_change` VALUES ('5', '1', '2', '30.00', '135.00', '1466773459', '127.0.0.1', '订单33，编号：201606242057137061，退款金额：30，手续费：10');
INSERT INTO `sp_account_change` VALUES ('6', '1', '0', '40.00', '95.00', '1466773698', '127.0.0.1', '支付订单：34');
INSERT INTO `sp_account_change` VALUES ('7', '1', '0', '40.00', '55.00', '1466911983', '127.0.0.1', '支付订单：35');
INSERT INTO `sp_account_change` VALUES ('8', '1', '0', '40.00', '15.00', '1467008933', '127.0.0.1', '支付订单：38');
INSERT INTO `sp_account_change` VALUES ('9', '1', '0', '40.00', '1460.00', '1467014114', '127.0.0.1', '支付订单：40');
INSERT INTO `sp_account_change` VALUES ('10', '1', '0', '80.00', '1380.00', '1467104074', '127.0.0.1', '支付订单：47');
INSERT INTO `sp_account_change` VALUES ('11', '1', '0', '80.00', '1300.00', '1467107864', '127.0.0.1', '支付订单：50');
INSERT INTO `sp_account_change` VALUES ('12', '1', '0', '80.00', '1220.00', '1467170728', '127.0.0.1', '支付订单：51');
INSERT INTO `sp_account_change` VALUES ('13', '1', '0', '80.00', '1140.00', '1467170756', '127.0.0.1', '支付订单：52');
INSERT INTO `sp_account_change` VALUES ('14', '1', '0', '40.00', '1100.00', '1467170897', '127.0.0.1', '支付订单：53');
INSERT INTO `sp_account_change` VALUES ('15', '1', '0', '200.00', '900.00', '1467352843', '127.0.0.1', '支付订单：54');
INSERT INTO `sp_account_change` VALUES ('16', '1', '0', '90.00', '810.00', '1467619437', '127.0.0.1', '支付订单：58');
INSERT INTO `sp_account_change` VALUES ('17', '1', '0', '90.00', '720.00', '1467619944', '127.0.0.1', '支付订单：59');
INSERT INTO `sp_account_change` VALUES ('18', '1', '0', '40.00', '680.00', '1468308203', '127.0.0.1', '支付订单：61');
INSERT INTO `sp_account_change` VALUES ('19', '1', '0', '40.00', '640.00', '1468993588', '127.0.0.1', '支付订单：62');
INSERT INTO `sp_account_change` VALUES ('20', '2', '0', '40.00', '960.00', '1468999151', '127.0.0.1', '支付订单：63');
INSERT INTO `sp_account_change` VALUES ('21', '2', '0', '40.00', '920.00', '1468999365', '127.0.0.1', '支付订单：64');
INSERT INTO `sp_account_change` VALUES ('22', '2', '0', '40.00', '880.00', '1468999635', '127.0.0.1', '支付订单：65');
INSERT INTO `sp_account_change` VALUES ('23', '2', '0', '40.00', '840.00', '1468999807', '127.0.0.1', '支付订单：66');
INSERT INTO `sp_account_change` VALUES ('24', '2', '0', '40.00', '800.00', '1469066692', '127.0.0.1', '支付订单：67');
INSERT INTO `sp_account_change` VALUES ('25', '2', '2', '30.00', '830.00', '1469085423', '127.0.0.1', '订单67，编号：201607211004521475，退款金额：30，手续费：10');
INSERT INTO `sp_account_change` VALUES ('26', '2', '0', '40.00', '790.00', '1469086642', '127.0.0.1', '支付订单：68');
INSERT INTO `sp_account_change` VALUES ('27', '2', '0', '40.00', '750.00', '1469089862', '127.0.0.1', '支付订单：69');
INSERT INTO `sp_account_change` VALUES ('28', '2', '0', '40.00', '710.00', '1469090544', '127.0.0.1', '支付订单：70');
INSERT INTO `sp_account_change` VALUES ('29', '2', '2', '30.00', '740.00', '1469091487', '127.0.0.1', '订单70，编号：201607211642245353，退款金额：30，手续费：10');
INSERT INTO `sp_account_change` VALUES ('30', '2', '0', '40.00', '700.00', '1469091515', '127.0.0.1', '支付订单：71');
INSERT INTO `sp_account_change` VALUES ('31', '2', '0', '40.00', '660.00', '1469091702', '127.0.0.1', '支付订单：72');
INSERT INTO `sp_account_change` VALUES ('32', '2', '0', '40.00', '620.00', '1469092158', '127.0.0.1', '支付订单：73');
INSERT INTO `sp_account_change` VALUES ('33', '2', '2', '40.00', '660.00', '1469092158', '127.0.0.1', '订单73，编号：201607211701425427，退款金额：，手续费：0');
INSERT INTO `sp_account_change` VALUES ('34', '2', '0', '50.00', '610.00', '1469157917', '127.0.0.1', '支付订单：74');

-- ----------------------------
-- Table structure for sp_action
-- ----------------------------
DROP TABLE IF EXISTS `sp_action`;
CREATE TABLE `sp_action` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` char(30) NOT NULL DEFAULT '' COMMENT '行为唯一标识',
  `title` char(80) NOT NULL DEFAULT '' COMMENT '行为说明',
  `remark` char(140) NOT NULL DEFAULT '' COMMENT '行为描述',
  `rule` text NOT NULL COMMENT '行为规则',
  `log` text NOT NULL COMMENT '日志规则',
  `type` tinyint(2) unsigned NOT NULL DEFAULT '1' COMMENT '类型',
  `status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '状态',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='系统行为表';

-- ----------------------------
-- Records of sp_action
-- ----------------------------
INSERT INTO `sp_action` VALUES ('1', 'user_login', '用户登录', '积分+10，每天一次', 'table:member|field:score|condition:uid={$self} AND status>-1|rule:score+10|cycle:24|max:1;', '[user|get_nickname]在[time|time_format]登录了后台', '1', '1', '1387181220');
INSERT INTO `sp_action` VALUES ('2', 'add_article', '发布文章', '积分+5，每天上限5次', 'table:member|field:score|condition:uid={$self}|rule:score+5|cycle:24|max:5', '', '2', '0', '1380173180');
INSERT INTO `sp_action` VALUES ('3', 'review', '评论', '评论积分+1，无限制', 'table:member|field:score|condition:uid={$self}|rule:score+1', '', '2', '1', '1383285646');
INSERT INTO `sp_action` VALUES ('4', 'add_document', '发表文档', '积分+10，每天上限5次', 'table:member|field:score|condition:uid={$self}|rule:score+10|cycle:24|max:5', '[user|get_nickname]在[time|time_format]发表了一篇文章。\r\n表[model]，记录编号[record]。', '2', '0', '1386139726');
INSERT INTO `sp_action` VALUES ('5', 'add_document_topic', '发表讨论', '积分+5，每天上限10次', 'table:member|field:score|condition:uid={$self}|rule:score+5|cycle:24|max:10', '', '2', '0', '1383285551');
INSERT INTO `sp_action` VALUES ('6', 'update_config', '更新配置', '新增或修改或删除配置', '', '', '1', '1', '1383294988');
INSERT INTO `sp_action` VALUES ('7', 'update_model', '更新模型', '新增或修改模型', '', '', '1', '1', '1383295057');
INSERT INTO `sp_action` VALUES ('8', 'update_attribute', '更新属性', '新增或更新或删除属性', '', '', '1', '1', '1383295963');
INSERT INTO `sp_action` VALUES ('9', 'update_channel', '更新导航', '新增或修改或删除导航', '', '', '1', '1', '1383296301');
INSERT INTO `sp_action` VALUES ('10', 'update_menu', '更新菜单', '新增或修改或删除菜单', '', '', '1', '1', '1383296392');
INSERT INTO `sp_action` VALUES ('11', 'update_category', '更新分类', '新增或修改或删除分类', '', '', '1', '1', '1383296765');

-- ----------------------------
-- Table structure for sp_action_log
-- ----------------------------
DROP TABLE IF EXISTS `sp_action_log`;
CREATE TABLE `sp_action_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `action_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '行为id',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '执行用户id',
  `action_ip` bigint(20) NOT NULL COMMENT '执行行为者ip',
  `model` varchar(50) NOT NULL DEFAULT '' COMMENT '触发行为的表',
  `record_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '触发行为的数据id',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '日志备注',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '执行行为的时间',
  PRIMARY KEY (`id`),
  KEY `action_ip_ix` (`action_ip`),
  KEY `action_id_ix` (`action_id`),
  KEY `user_id_ix` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='行为日志表';

-- ----------------------------
-- Records of sp_action_log
-- ----------------------------
INSERT INTO `sp_action_log` VALUES ('1', '1', '1', '2130706433', 'member', '1', 'admin在2016-06-16 10:25登录了后台', '1', '1466043912');
INSERT INTO `sp_action_log` VALUES ('2', '1', '2', '2130706433', 'member', '2', 'kang在2016-06-16 10:48登录了后台', '1', '1466045328');
INSERT INTO `sp_action_log` VALUES ('3', '1', '1', '2130706433', 'member', '1', 'admin在2016-06-16 10:49登录了后台', '1', '1466045390');
INSERT INTO `sp_action_log` VALUES ('4', '1', '2', '2130706433', 'member', '2', 'kang在2016-06-16 10:51登录了后台', '1', '1466045481');
INSERT INTO `sp_action_log` VALUES ('5', '1', '2', '2130706433', 'member', '2', 'kang在2016-06-16 10:52登录了后台', '1', '1466045527');
INSERT INTO `sp_action_log` VALUES ('6', '10', '1', '2130706433', 'Menu', '43', '操作url：/index.php?s=/Admin/Menu/edit.html', '1', '1466313297');
INSERT INTO `sp_action_log` VALUES ('7', '1', '1', '2130706433', 'member', '1', 'admin在2016-06-24 13:52登录了后台', '1', '1466747567');
INSERT INTO `sp_action_log` VALUES ('8', '1', '1', '2130706433', 'member', '1', 'admin在2016-06-30 15:14登录了后台', '1', '1467270847');
INSERT INTO `sp_action_log` VALUES ('9', '1', '1', '2130706433', 'member', '1', 'admin在2016-06-30 15:32登录了后台', '1', '1467271939');
INSERT INTO `sp_action_log` VALUES ('10', '1', '1', '2130706433', 'member', '1', 'admin在2016-06-30 15:59登录了后台', '1', '1467273569');
INSERT INTO `sp_action_log` VALUES ('11', '1', '1', '2130706433', 'member', '1', 'admin在2016-07-22 14:33登录了后台', '1', '1469169218');
INSERT INTO `sp_action_log` VALUES ('12', '1', '1', '2130706433', 'member', '1', 'admin在2016-07-22 14:34登录了后台', '1', '1469169257');
INSERT INTO `sp_action_log` VALUES ('13', '1', '1', '2130706433', 'member', '1', 'admin在2016-07-22 14:40登录了后台', '1', '1469169651');
INSERT INTO `sp_action_log` VALUES ('14', '1', '1', '-1062731672', 'member', '1', 'admin在2016-07-27 14:35登录了后台', '1', '1469601340');
INSERT INTO `sp_action_log` VALUES ('15', '1', '1', '2130706433', 'member', '1', 'admin在2016-07-27 16:10登录了后台', '1', '1469607026');
INSERT INTO `sp_action_log` VALUES ('16', '1', '1', '2130706433', 'member', '1', 'admin在2016-07-27 16:28登录了后台', '1', '1469608114');
INSERT INTO `sp_action_log` VALUES ('17', '1', '1', '2130706433', 'member', '1', 'admin在2016-07-27 16:34登录了后台', '1', '1469608460');
INSERT INTO `sp_action_log` VALUES ('18', '1', '1', '-1062731675', 'member', '1', 'admin在2016-07-27 17:02登录了后台', '1', '1469610160');

-- ----------------------------
-- Table structure for sp_addons
-- ----------------------------
DROP TABLE IF EXISTS `sp_addons`;
CREATE TABLE `sp_addons` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(40) NOT NULL COMMENT '插件名或标识',
  `title` varchar(20) NOT NULL DEFAULT '' COMMENT '中文名',
  `description` text COMMENT '插件描述',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态',
  `config` text COMMENT '配置',
  `author` varchar(40) DEFAULT '' COMMENT '作者',
  `version` varchar(20) DEFAULT '' COMMENT '版本号',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '安装时间',
  `has_adminlist` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否有后台列表',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='插件表';

-- ----------------------------
-- Records of sp_addons
-- ----------------------------
INSERT INTO `sp_addons` VALUES ('15', 'EditorForAdmin', '后台编辑器', '用于增强整站长文本的输入和显示', '1', '{\"editor_type\":\"2\",\"editor_wysiwyg\":\"1\",\"editor_height\":\"500px\",\"editor_resize_type\":\"1\"}', 'thinkphp', '0.1', '1383126253', '0');
INSERT INTO `sp_addons` VALUES ('2', 'SiteStat', '站点统计信息', '统计站点的基础信息', '1', '{\"title\":\"\\u7cfb\\u7edf\\u4fe1\\u606f\",\"width\":\"1\",\"display\":\"1\",\"status\":\"0\"}', 'thinkphp', '0.1', '1379512015', '0');
INSERT INTO `sp_addons` VALUES ('3', 'DevTeam', '开发团队信息', '开发团队成员信息', '1', '{\"title\":\"OneThink\\u5f00\\u53d1\\u56e2\\u961f\",\"width\":\"2\",\"display\":\"1\"}', 'thinkphp', '0.1', '1379512022', '0');
INSERT INTO `sp_addons` VALUES ('4', 'SystemInfo', '系统环境信息', '用于显示一些服务器的信息', '1', '{\"title\":\"\\u7cfb\\u7edf\\u4fe1\\u606f\",\"width\":\"2\",\"display\":\"1\"}', 'thinkphp', '0.1', '1379512036', '0');
INSERT INTO `sp_addons` VALUES ('5', 'Editor', '前台编辑器', '用于增强整站长文本的输入和显示', '1', '{\"editor_type\":\"2\",\"editor_wysiwyg\":\"1\",\"editor_height\":\"300px\",\"editor_resize_type\":\"1\"}', 'thinkphp', '0.1', '1379830910', '0');
INSERT INTO `sp_addons` VALUES ('6', 'Attachment', '附件', '用于文档模型上传附件', '1', 'null', 'thinkphp', '0.1', '1379842319', '1');
INSERT INTO `sp_addons` VALUES ('9', 'SocialComment', '通用社交化评论', '集成了各种社交化评论插件，轻松集成到系统中。', '1', '{\"comment_type\":\"1\",\"comment_uid_youyan\":\"\",\"comment_short_name_duoshuo\":\"\",\"comment_data_list_duoshuo\":\"\"}', 'thinkphp', '0.1', '1380273962', '0');

-- ----------------------------
-- Table structure for sp_area
-- ----------------------------
DROP TABLE IF EXISTS `sp_area`;
CREATE TABLE `sp_area` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '索引ID',
  `name` varchar(50) NOT NULL COMMENT '地区名称',
  `parent_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '地区父ID',
  `sort` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `deep` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '地区深度，从1开始',
  `region` varchar(3) DEFAULT NULL COMMENT '大区名称',
  PRIMARY KEY (`id`),
  KEY `area_parent_id` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=45056 DEFAULT CHARSET=utf8 COMMENT='地区表';

-- ----------------------------
-- Records of sp_area
-- ----------------------------
INSERT INTO `sp_area` VALUES ('1', '北京市', '0', '0', '1', '华北');
INSERT INTO `sp_area` VALUES ('2', '天津市', '0', '0', '1', '华北');
INSERT INTO `sp_area` VALUES ('3', '河北省', '0', '0', '1', '华北');
INSERT INTO `sp_area` VALUES ('4', '山西省', '0', '0', '1', '华北');
INSERT INTO `sp_area` VALUES ('5', '内蒙古自治区', '0', '0', '1', '华北');
INSERT INTO `sp_area` VALUES ('6', '辽宁省', '0', '0', '1', '东北');
INSERT INTO `sp_area` VALUES ('7', '吉林省', '0', '0', '1', '东北');
INSERT INTO `sp_area` VALUES ('8', '黑龙江省', '0', '0', '1', '东北');
INSERT INTO `sp_area` VALUES ('9', '上海市', '0', '0', '1', '华东');
INSERT INTO `sp_area` VALUES ('10', '江苏省', '0', '0', '1', '华东');
INSERT INTO `sp_area` VALUES ('11', '浙江省', '0', '0', '1', '华东');
INSERT INTO `sp_area` VALUES ('12', '安徽省', '0', '0', '1', '华东');
INSERT INTO `sp_area` VALUES ('13', '福建省', '0', '0', '1', '华南');
INSERT INTO `sp_area` VALUES ('14', '江西省', '0', '0', '1', '华东');
INSERT INTO `sp_area` VALUES ('15', '山东省', '0', '0', '1', '华东');
INSERT INTO `sp_area` VALUES ('16', '河南省', '0', '0', '1', '华中');
INSERT INTO `sp_area` VALUES ('17', '湖北省', '0', '0', '1', '华中');
INSERT INTO `sp_area` VALUES ('18', '湖南省', '0', '0', '1', '华中');
INSERT INTO `sp_area` VALUES ('19', '广东省', '0', '0', '1', '华南');
INSERT INTO `sp_area` VALUES ('20', '广西省', '0', '0', '1', '华南');
INSERT INTO `sp_area` VALUES ('21', '海南省', '0', '0', '1', '华南');
INSERT INTO `sp_area` VALUES ('22', '重庆市', '0', '0', '1', '西南');
INSERT INTO `sp_area` VALUES ('23', '四川省', '0', '0', '1', '西南');
INSERT INTO `sp_area` VALUES ('24', '贵州省', '0', '0', '1', '西南');
INSERT INTO `sp_area` VALUES ('25', '云南省', '0', '0', '1', '西南');
INSERT INTO `sp_area` VALUES ('26', '西藏自治区', '0', '0', '1', '西南');
INSERT INTO `sp_area` VALUES ('27', '陕西省', '0', '0', '1', '西北');
INSERT INTO `sp_area` VALUES ('28', '甘肃省', '0', '0', '1', '西北');
INSERT INTO `sp_area` VALUES ('29', '青海省', '0', '0', '1', '西北');
INSERT INTO `sp_area` VALUES ('30', '宁夏自治区', '0', '0', '1', '西北');
INSERT INTO `sp_area` VALUES ('31', '新疆自治区', '0', '0', '1', '西北');
INSERT INTO `sp_area` VALUES ('32', '台湾省', '0', '0', '1', '港澳台');
INSERT INTO `sp_area` VALUES ('33', '香港', '0', '0', '1', '港澳台');
INSERT INTO `sp_area` VALUES ('34', '澳门', '0', '0', '1', '港澳台');
INSERT INTO `sp_area` VALUES ('35', '海外', '0', '0', '1', '海外');
INSERT INTO `sp_area` VALUES ('36', '北京市', '1', '0', '2', null);
INSERT INTO `sp_area` VALUES ('37', '东城区', '36', '0', '3', null);
INSERT INTO `sp_area` VALUES ('38', '西城区', '36', '0', '3', null);
INSERT INTO `sp_area` VALUES ('39', '上海市', '9', '0', '2', null);
INSERT INTO `sp_area` VALUES ('40', '天津市', '2', '0', '2', null);
INSERT INTO `sp_area` VALUES ('41', '朝阳区', '36', '0', '3', null);
INSERT INTO `sp_area` VALUES ('42', '丰台区', '36', '0', '3', null);
INSERT INTO `sp_area` VALUES ('43', '石景山区', '36', '0', '3', null);
INSERT INTO `sp_area` VALUES ('44', '海淀区', '36', '0', '3', null);
INSERT INTO `sp_area` VALUES ('45', '门头沟区', '36', '0', '3', null);
INSERT INTO `sp_area` VALUES ('46', '房山区', '36', '0', '3', null);
INSERT INTO `sp_area` VALUES ('47', '通州区', '36', '0', '3', null);
INSERT INTO `sp_area` VALUES ('48', '顺义区', '36', '0', '3', null);
INSERT INTO `sp_area` VALUES ('49', '昌平区', '36', '0', '3', null);
INSERT INTO `sp_area` VALUES ('50', '大兴区', '36', '0', '3', null);
INSERT INTO `sp_area` VALUES ('51', '怀柔区', '36', '0', '3', null);
INSERT INTO `sp_area` VALUES ('52', '平谷区', '36', '0', '3', null);
INSERT INTO `sp_area` VALUES ('53', '密云县', '36', '0', '3', null);
INSERT INTO `sp_area` VALUES ('54', '延庆县', '36', '0', '3', null);
INSERT INTO `sp_area` VALUES ('55', '和平区', '40', '0', '3', null);
INSERT INTO `sp_area` VALUES ('56', '河东区', '40', '0', '3', null);
INSERT INTO `sp_area` VALUES ('57', '河西区', '40', '0', '3', null);
INSERT INTO `sp_area` VALUES ('58', '南开区', '40', '0', '3', null);
INSERT INTO `sp_area` VALUES ('59', '河北区', '40', '0', '3', null);
INSERT INTO `sp_area` VALUES ('60', '红桥区', '40', '0', '3', null);
INSERT INTO `sp_area` VALUES ('61', '塘沽区', '40', '0', '3', null);
INSERT INTO `sp_area` VALUES ('62', '重庆市', '22', '0', '2', null);
INSERT INTO `sp_area` VALUES ('64', '东丽区', '40', '0', '3', null);
INSERT INTO `sp_area` VALUES ('65', '西青区', '40', '0', '3', null);
INSERT INTO `sp_area` VALUES ('66', '津南区', '40', '0', '3', null);
INSERT INTO `sp_area` VALUES ('67', '北辰区', '40', '0', '3', null);
INSERT INTO `sp_area` VALUES ('68', '武清区', '40', '0', '3', null);
INSERT INTO `sp_area` VALUES ('69', '宝坻区', '40', '0', '3', null);
INSERT INTO `sp_area` VALUES ('70', '宁河县', '40', '0', '3', null);
INSERT INTO `sp_area` VALUES ('71', '静海县', '40', '0', '3', null);
INSERT INTO `sp_area` VALUES ('72', '蓟县', '40', '0', '3', null);
INSERT INTO `sp_area` VALUES ('73', '石家庄市', '3', '0', '2', null);
INSERT INTO `sp_area` VALUES ('74', '唐山市', '3', '0', '2', null);
INSERT INTO `sp_area` VALUES ('75', '秦皇岛市', '3', '0', '2', null);
INSERT INTO `sp_area` VALUES ('76', '邯郸市', '3', '0', '2', null);
INSERT INTO `sp_area` VALUES ('77', '邢台市', '3', '0', '2', null);
INSERT INTO `sp_area` VALUES ('78', '保定市', '3', '0', '2', null);
INSERT INTO `sp_area` VALUES ('79', '张家口市', '3', '0', '2', null);
INSERT INTO `sp_area` VALUES ('80', '承德市', '3', '0', '2', null);
INSERT INTO `sp_area` VALUES ('81', '衡水市', '3', '0', '2', null);
INSERT INTO `sp_area` VALUES ('82', '廊坊市', '3', '0', '2', null);
INSERT INTO `sp_area` VALUES ('83', '沧州市', '3', '0', '2', null);
INSERT INTO `sp_area` VALUES ('84', '太原市', '4', '0', '2', null);
INSERT INTO `sp_area` VALUES ('85', '大同市', '4', '0', '2', null);
INSERT INTO `sp_area` VALUES ('86', '阳泉市', '4', '0', '2', null);
INSERT INTO `sp_area` VALUES ('87', '长治市', '4', '0', '2', null);
INSERT INTO `sp_area` VALUES ('88', '晋城市', '4', '0', '2', null);
INSERT INTO `sp_area` VALUES ('89', '朔州市', '4', '0', '2', null);
INSERT INTO `sp_area` VALUES ('90', '晋中市', '4', '0', '2', null);
INSERT INTO `sp_area` VALUES ('91', '运城市', '4', '0', '2', null);
INSERT INTO `sp_area` VALUES ('92', '忻州市', '4', '0', '2', null);
INSERT INTO `sp_area` VALUES ('93', '临汾市', '4', '0', '2', null);
INSERT INTO `sp_area` VALUES ('94', '吕梁市', '4', '0', '2', null);
INSERT INTO `sp_area` VALUES ('95', '呼和浩特市', '5', '0', '2', null);
INSERT INTO `sp_area` VALUES ('96', '包头市', '5', '0', '2', null);
INSERT INTO `sp_area` VALUES ('97', '乌海市', '5', '0', '2', null);
INSERT INTO `sp_area` VALUES ('98', '赤峰市', '5', '0', '2', null);
INSERT INTO `sp_area` VALUES ('99', '通辽市', '5', '0', '2', null);
INSERT INTO `sp_area` VALUES ('100', '鄂尔多斯市', '5', '0', '2', null);
INSERT INTO `sp_area` VALUES ('101', '呼伦贝尔市', '5', '0', '2', null);
INSERT INTO `sp_area` VALUES ('102', '巴彦淖尔市', '5', '0', '2', null);
INSERT INTO `sp_area` VALUES ('103', '乌兰察布市', '5', '0', '2', null);
INSERT INTO `sp_area` VALUES ('104', '兴安盟', '5', '0', '2', null);
INSERT INTO `sp_area` VALUES ('105', '锡林郭勒盟', '5', '0', '2', null);
INSERT INTO `sp_area` VALUES ('106', '阿拉善盟', '5', '0', '2', null);
INSERT INTO `sp_area` VALUES ('107', '沈阳市', '6', '0', '2', null);
INSERT INTO `sp_area` VALUES ('108', '大连市', '6', '0', '2', null);
INSERT INTO `sp_area` VALUES ('109', '鞍山市', '6', '0', '2', null);
INSERT INTO `sp_area` VALUES ('110', '抚顺市', '6', '0', '2', null);
INSERT INTO `sp_area` VALUES ('111', '本溪市', '6', '0', '2', null);
INSERT INTO `sp_area` VALUES ('112', '丹东市', '6', '0', '2', null);
INSERT INTO `sp_area` VALUES ('113', '锦州市', '6', '0', '2', null);
INSERT INTO `sp_area` VALUES ('114', '营口市', '6', '0', '2', null);
INSERT INTO `sp_area` VALUES ('115', '阜新市', '6', '0', '2', null);
INSERT INTO `sp_area` VALUES ('116', '辽阳市', '6', '0', '2', null);
INSERT INTO `sp_area` VALUES ('117', '盘锦市', '6', '0', '2', null);
INSERT INTO `sp_area` VALUES ('118', '铁岭市', '6', '0', '2', null);
INSERT INTO `sp_area` VALUES ('119', '朝阳市', '6', '0', '2', null);
INSERT INTO `sp_area` VALUES ('120', '葫芦岛市', '6', '0', '2', null);
INSERT INTO `sp_area` VALUES ('121', '长春市', '7', '0', '2', null);
INSERT INTO `sp_area` VALUES ('122', '吉林市', '7', '0', '2', null);
INSERT INTO `sp_area` VALUES ('123', '四平市', '7', '0', '2', null);
INSERT INTO `sp_area` VALUES ('124', '辽源市', '7', '0', '2', null);
INSERT INTO `sp_area` VALUES ('125', '通化市', '7', '0', '2', null);
INSERT INTO `sp_area` VALUES ('126', '白山市', '7', '0', '2', null);
INSERT INTO `sp_area` VALUES ('127', '松原市', '7', '0', '2', null);
INSERT INTO `sp_area` VALUES ('128', '白城市', '7', '0', '2', null);
INSERT INTO `sp_area` VALUES ('129', '延边朝鲜族自治州', '7', '0', '2', null);
INSERT INTO `sp_area` VALUES ('130', '哈尔滨市', '8', '0', '2', null);
INSERT INTO `sp_area` VALUES ('131', '齐齐哈尔市', '8', '0', '2', null);
INSERT INTO `sp_area` VALUES ('132', '鸡西市', '8', '0', '2', null);
INSERT INTO `sp_area` VALUES ('133', '鹤岗市', '8', '0', '2', null);
INSERT INTO `sp_area` VALUES ('134', '双鸭山市', '8', '0', '2', null);
INSERT INTO `sp_area` VALUES ('135', '大庆市', '8', '0', '2', null);
INSERT INTO `sp_area` VALUES ('136', '伊春市', '8', '0', '2', null);
INSERT INTO `sp_area` VALUES ('137', '佳木斯市', '8', '0', '2', null);
INSERT INTO `sp_area` VALUES ('138', '七台河市', '8', '0', '2', null);
INSERT INTO `sp_area` VALUES ('139', '牡丹江市', '8', '0', '2', null);
INSERT INTO `sp_area` VALUES ('140', '黑河市', '8', '0', '2', null);
INSERT INTO `sp_area` VALUES ('141', '绥化市', '8', '0', '2', null);
INSERT INTO `sp_area` VALUES ('142', '大兴安岭地区', '8', '0', '2', null);
INSERT INTO `sp_area` VALUES ('143', '黄浦区', '39', '0', '3', null);
INSERT INTO `sp_area` VALUES ('144', '卢湾区', '39', '0', '3', null);
INSERT INTO `sp_area` VALUES ('145', '徐汇区', '39', '0', '3', null);
INSERT INTO `sp_area` VALUES ('146', '长宁区', '39', '0', '3', null);
INSERT INTO `sp_area` VALUES ('147', '静安区', '39', '0', '3', null);
INSERT INTO `sp_area` VALUES ('148', '普陀区', '39', '0', '3', null);
INSERT INTO `sp_area` VALUES ('149', '闸北区', '39', '0', '3', null);
INSERT INTO `sp_area` VALUES ('150', '虹口区', '39', '0', '3', null);
INSERT INTO `sp_area` VALUES ('151', '杨浦区', '39', '0', '3', null);
INSERT INTO `sp_area` VALUES ('152', '闵行区', '39', '0', '3', null);
INSERT INTO `sp_area` VALUES ('153', '宝山区', '39', '0', '3', null);
INSERT INTO `sp_area` VALUES ('154', '嘉定区', '39', '0', '3', null);
INSERT INTO `sp_area` VALUES ('155', '浦东新区', '39', '0', '3', null);
INSERT INTO `sp_area` VALUES ('156', '金山区', '39', '0', '3', null);
INSERT INTO `sp_area` VALUES ('157', '松江区', '39', '0', '3', null);
INSERT INTO `sp_area` VALUES ('158', '青浦区', '39', '0', '3', null);
INSERT INTO `sp_area` VALUES ('159', '南汇区', '39', '0', '3', null);
INSERT INTO `sp_area` VALUES ('160', '奉贤区', '39', '0', '3', null);
INSERT INTO `sp_area` VALUES ('161', '崇明县', '39', '0', '3', null);
INSERT INTO `sp_area` VALUES ('162', '南京市', '10', '0', '2', null);
INSERT INTO `sp_area` VALUES ('163', '无锡市', '10', '0', '2', null);
INSERT INTO `sp_area` VALUES ('164', '徐州市', '10', '0', '2', null);
INSERT INTO `sp_area` VALUES ('165', '常州市', '10', '0', '2', null);
INSERT INTO `sp_area` VALUES ('166', '苏州市', '10', '0', '2', null);
INSERT INTO `sp_area` VALUES ('167', '南通市', '10', '0', '2', null);
INSERT INTO `sp_area` VALUES ('168', '连云港市', '10', '0', '2', null);
INSERT INTO `sp_area` VALUES ('169', '淮安市', '10', '0', '2', null);
INSERT INTO `sp_area` VALUES ('170', '盐城市', '10', '0', '2', null);
INSERT INTO `sp_area` VALUES ('171', '扬州市', '10', '0', '2', null);
INSERT INTO `sp_area` VALUES ('172', '镇江市', '10', '0', '2', null);
INSERT INTO `sp_area` VALUES ('173', '泰州市', '10', '0', '2', null);
INSERT INTO `sp_area` VALUES ('174', '宿迁市', '10', '0', '2', null);
INSERT INTO `sp_area` VALUES ('175', '杭州市', '11', '0', '2', null);
INSERT INTO `sp_area` VALUES ('176', '宁波市', '11', '0', '2', null);
INSERT INTO `sp_area` VALUES ('177', '温州市', '11', '0', '2', null);
INSERT INTO `sp_area` VALUES ('178', '嘉兴市', '11', '0', '2', null);
INSERT INTO `sp_area` VALUES ('179', '湖州市', '11', '0', '2', null);
INSERT INTO `sp_area` VALUES ('180', '绍兴市', '11', '0', '2', null);
INSERT INTO `sp_area` VALUES ('181', '舟山市', '11', '0', '2', null);
INSERT INTO `sp_area` VALUES ('182', '衢州市', '11', '0', '2', null);
INSERT INTO `sp_area` VALUES ('183', '金华市', '11', '0', '2', null);
INSERT INTO `sp_area` VALUES ('184', '台州市', '11', '0', '2', null);
INSERT INTO `sp_area` VALUES ('185', '丽水市', '11', '0', '2', null);
INSERT INTO `sp_area` VALUES ('186', '合肥市', '12', '0', '2', null);
INSERT INTO `sp_area` VALUES ('187', '芜湖市', '12', '0', '2', null);
INSERT INTO `sp_area` VALUES ('188', '蚌埠市', '12', '0', '2', null);
INSERT INTO `sp_area` VALUES ('189', '淮南市', '12', '0', '2', null);
INSERT INTO `sp_area` VALUES ('190', '马鞍山市', '12', '0', '2', null);
INSERT INTO `sp_area` VALUES ('191', '淮北市', '12', '0', '2', null);
INSERT INTO `sp_area` VALUES ('192', '铜陵市', '12', '0', '2', null);
INSERT INTO `sp_area` VALUES ('193', '安庆市', '12', '0', '2', null);
INSERT INTO `sp_area` VALUES ('194', '黄山市', '12', '0', '2', null);
INSERT INTO `sp_area` VALUES ('195', '滁州市', '12', '0', '2', null);
INSERT INTO `sp_area` VALUES ('196', '阜阳市', '12', '0', '2', null);
INSERT INTO `sp_area` VALUES ('197', '宿州市', '12', '0', '2', null);
INSERT INTO `sp_area` VALUES ('198', '巢湖市', '12', '0', '2', null);
INSERT INTO `sp_area` VALUES ('199', '六安市', '12', '0', '2', null);
INSERT INTO `sp_area` VALUES ('200', '亳州市', '12', '0', '2', null);
INSERT INTO `sp_area` VALUES ('201', '池州市', '12', '0', '2', null);
INSERT INTO `sp_area` VALUES ('202', '宣城市', '12', '0', '2', null);
INSERT INTO `sp_area` VALUES ('203', '福州市', '13', '0', '2', null);
INSERT INTO `sp_area` VALUES ('204', '厦门市', '13', '0', '2', null);
INSERT INTO `sp_area` VALUES ('205', '莆田市', '13', '0', '2', null);
INSERT INTO `sp_area` VALUES ('206', '三明市', '13', '0', '2', null);
INSERT INTO `sp_area` VALUES ('207', '泉州市', '13', '0', '2', null);
INSERT INTO `sp_area` VALUES ('208', '漳州市', '13', '0', '2', null);
INSERT INTO `sp_area` VALUES ('209', '南平市', '13', '0', '2', null);
INSERT INTO `sp_area` VALUES ('210', '龙岩市', '13', '0', '2', null);
INSERT INTO `sp_area` VALUES ('211', '宁德市', '13', '0', '2', null);
INSERT INTO `sp_area` VALUES ('212', '南昌市', '14', '0', '2', null);
INSERT INTO `sp_area` VALUES ('213', '景德镇市', '14', '0', '2', null);
INSERT INTO `sp_area` VALUES ('214', '萍乡市', '14', '0', '2', null);
INSERT INTO `sp_area` VALUES ('215', '九江市', '14', '0', '2', null);
INSERT INTO `sp_area` VALUES ('216', '新余市', '14', '0', '2', null);
INSERT INTO `sp_area` VALUES ('217', '鹰潭市', '14', '0', '2', null);
INSERT INTO `sp_area` VALUES ('218', '赣州市', '14', '0', '2', null);
INSERT INTO `sp_area` VALUES ('219', '吉安市', '14', '0', '2', null);
INSERT INTO `sp_area` VALUES ('220', '宜春市', '14', '0', '2', null);
INSERT INTO `sp_area` VALUES ('221', '抚州市', '14', '0', '2', null);
INSERT INTO `sp_area` VALUES ('222', '上饶市', '14', '0', '2', null);
INSERT INTO `sp_area` VALUES ('223', '济南市', '15', '0', '2', null);
INSERT INTO `sp_area` VALUES ('224', '青岛市', '15', '0', '2', null);
INSERT INTO `sp_area` VALUES ('225', '淄博市', '15', '0', '2', null);
INSERT INTO `sp_area` VALUES ('226', '枣庄市', '15', '0', '2', null);
INSERT INTO `sp_area` VALUES ('227', '东营市', '15', '0', '2', null);
INSERT INTO `sp_area` VALUES ('228', '烟台市', '15', '0', '2', null);
INSERT INTO `sp_area` VALUES ('229', '潍坊市', '15', '0', '2', null);
INSERT INTO `sp_area` VALUES ('230', '济宁市', '15', '0', '2', null);
INSERT INTO `sp_area` VALUES ('231', '泰安市', '15', '0', '2', null);
INSERT INTO `sp_area` VALUES ('232', '威海市', '15', '0', '2', null);
INSERT INTO `sp_area` VALUES ('233', '日照市', '15', '0', '2', null);
INSERT INTO `sp_area` VALUES ('234', '莱芜市', '15', '0', '2', null);
INSERT INTO `sp_area` VALUES ('235', '临沂市', '15', '0', '2', null);
INSERT INTO `sp_area` VALUES ('236', '德州市', '15', '0', '2', null);
INSERT INTO `sp_area` VALUES ('237', '聊城市', '15', '0', '2', null);
INSERT INTO `sp_area` VALUES ('238', '滨州市', '15', '0', '2', null);
INSERT INTO `sp_area` VALUES ('239', '菏泽市', '15', '0', '2', null);
INSERT INTO `sp_area` VALUES ('240', '郑州市', '16', '0', '2', null);
INSERT INTO `sp_area` VALUES ('241', '开封市', '16', '0', '2', null);
INSERT INTO `sp_area` VALUES ('242', '洛阳市', '16', '0', '2', null);
INSERT INTO `sp_area` VALUES ('243', '平顶山市', '16', '0', '2', null);
INSERT INTO `sp_area` VALUES ('244', '安阳市', '16', '0', '2', null);
INSERT INTO `sp_area` VALUES ('245', '鹤壁市', '16', '0', '2', null);
INSERT INTO `sp_area` VALUES ('246', '新乡市', '16', '0', '2', null);
INSERT INTO `sp_area` VALUES ('247', '焦作市', '16', '0', '2', null);
INSERT INTO `sp_area` VALUES ('248', '濮阳市', '16', '0', '2', null);
INSERT INTO `sp_area` VALUES ('249', '许昌市', '16', '0', '2', null);
INSERT INTO `sp_area` VALUES ('250', '漯河市', '16', '0', '2', null);
INSERT INTO `sp_area` VALUES ('251', '三门峡市', '16', '0', '2', null);
INSERT INTO `sp_area` VALUES ('252', '南阳市', '16', '0', '2', null);
INSERT INTO `sp_area` VALUES ('253', '商丘市', '16', '0', '2', null);
INSERT INTO `sp_area` VALUES ('254', '信阳市', '16', '0', '2', null);
INSERT INTO `sp_area` VALUES ('255', '周口市', '16', '0', '2', null);
INSERT INTO `sp_area` VALUES ('256', '驻马店市', '16', '0', '2', null);
INSERT INTO `sp_area` VALUES ('257', '济源市', '16', '0', '2', null);
INSERT INTO `sp_area` VALUES ('258', '武汉市', '17', '0', '2', null);
INSERT INTO `sp_area` VALUES ('259', '黄石市', '17', '0', '2', null);
INSERT INTO `sp_area` VALUES ('260', '十堰市', '17', '0', '2', null);
INSERT INTO `sp_area` VALUES ('261', '宜昌市', '17', '0', '2', null);
INSERT INTO `sp_area` VALUES ('262', '襄樊市', '17', '0', '2', null);
INSERT INTO `sp_area` VALUES ('263', '鄂州市', '17', '0', '2', null);
INSERT INTO `sp_area` VALUES ('264', '荆门市', '17', '0', '2', null);
INSERT INTO `sp_area` VALUES ('265', '孝感市', '17', '0', '2', null);
INSERT INTO `sp_area` VALUES ('266', '荆州市', '17', '0', '2', null);
INSERT INTO `sp_area` VALUES ('267', '黄冈市', '17', '0', '2', null);
INSERT INTO `sp_area` VALUES ('268', '咸宁市', '17', '0', '2', null);
INSERT INTO `sp_area` VALUES ('269', '随州市', '17', '0', '2', null);
INSERT INTO `sp_area` VALUES ('270', '恩施土家族苗族自治州', '17', '0', '2', null);
INSERT INTO `sp_area` VALUES ('271', '仙桃市', '17', '0', '2', null);
INSERT INTO `sp_area` VALUES ('272', '潜江市', '17', '0', '2', null);
INSERT INTO `sp_area` VALUES ('273', '天门市', '17', '0', '2', null);
INSERT INTO `sp_area` VALUES ('274', '神农架林区', '17', '0', '2', null);
INSERT INTO `sp_area` VALUES ('275', '长沙市', '18', '0', '2', null);
INSERT INTO `sp_area` VALUES ('276', '株洲市', '18', '0', '2', null);
INSERT INTO `sp_area` VALUES ('277', '湘潭市', '18', '0', '2', null);
INSERT INTO `sp_area` VALUES ('278', '衡阳市', '18', '0', '2', null);
INSERT INTO `sp_area` VALUES ('279', '邵阳市', '18', '0', '2', null);
INSERT INTO `sp_area` VALUES ('280', '岳阳市', '18', '0', '2', null);
INSERT INTO `sp_area` VALUES ('281', '常德市', '18', '0', '2', null);
INSERT INTO `sp_area` VALUES ('282', '张家界市', '18', '0', '2', null);
INSERT INTO `sp_area` VALUES ('283', '益阳市', '18', '0', '2', null);
INSERT INTO `sp_area` VALUES ('284', '郴州市', '18', '0', '2', null);
INSERT INTO `sp_area` VALUES ('285', '永州市', '18', '0', '2', null);
INSERT INTO `sp_area` VALUES ('286', '怀化市', '18', '0', '2', null);
INSERT INTO `sp_area` VALUES ('287', '娄底市', '18', '0', '2', null);
INSERT INTO `sp_area` VALUES ('288', '湘西土家族苗族自治州', '18', '0', '2', null);
INSERT INTO `sp_area` VALUES ('289', '广州市', '19', '0', '2', null);
INSERT INTO `sp_area` VALUES ('290', '韶关市', '19', '0', '2', null);
INSERT INTO `sp_area` VALUES ('291', '深圳市', '19', '0', '2', null);
INSERT INTO `sp_area` VALUES ('292', '珠海市', '19', '0', '2', null);
INSERT INTO `sp_area` VALUES ('293', '汕头市', '19', '0', '2', null);
INSERT INTO `sp_area` VALUES ('294', '佛山市', '19', '0', '2', null);
INSERT INTO `sp_area` VALUES ('295', '江门市', '19', '0', '2', null);
INSERT INTO `sp_area` VALUES ('296', '湛江市', '19', '0', '2', null);
INSERT INTO `sp_area` VALUES ('297', '茂名市', '19', '0', '2', null);
INSERT INTO `sp_area` VALUES ('298', '肇庆市', '19', '0', '2', null);
INSERT INTO `sp_area` VALUES ('299', '惠州市', '19', '0', '2', null);
INSERT INTO `sp_area` VALUES ('300', '梅州市', '19', '0', '2', null);
INSERT INTO `sp_area` VALUES ('301', '汕尾市', '19', '0', '2', null);
INSERT INTO `sp_area` VALUES ('302', '河源市', '19', '0', '2', null);
INSERT INTO `sp_area` VALUES ('303', '阳江市', '19', '0', '2', null);
INSERT INTO `sp_area` VALUES ('304', '清远市', '19', '0', '2', null);
INSERT INTO `sp_area` VALUES ('305', '东莞市', '19', '0', '2', null);
INSERT INTO `sp_area` VALUES ('306', '中山市', '19', '0', '2', null);
INSERT INTO `sp_area` VALUES ('307', '潮州市', '19', '0', '2', null);
INSERT INTO `sp_area` VALUES ('308', '揭阳市', '19', '0', '2', null);
INSERT INTO `sp_area` VALUES ('309', '云浮市', '19', '0', '2', null);
INSERT INTO `sp_area` VALUES ('310', '南宁市', '20', '0', '2', null);
INSERT INTO `sp_area` VALUES ('311', '柳州市', '20', '0', '2', null);
INSERT INTO `sp_area` VALUES ('312', '桂林市', '20', '0', '2', null);
INSERT INTO `sp_area` VALUES ('313', '梧州市', '20', '0', '2', null);
INSERT INTO `sp_area` VALUES ('314', '北海市', '20', '0', '2', null);
INSERT INTO `sp_area` VALUES ('315', '防城港市', '20', '0', '2', null);
INSERT INTO `sp_area` VALUES ('316', '钦州市', '20', '0', '2', null);
INSERT INTO `sp_area` VALUES ('317', '贵港市', '20', '0', '2', null);
INSERT INTO `sp_area` VALUES ('318', '玉林市', '20', '0', '2', null);
INSERT INTO `sp_area` VALUES ('319', '百色市', '20', '0', '2', null);
INSERT INTO `sp_area` VALUES ('320', '贺州市', '20', '0', '2', null);
INSERT INTO `sp_area` VALUES ('321', '河池市', '20', '0', '2', null);
INSERT INTO `sp_area` VALUES ('322', '来宾市', '20', '0', '2', null);
INSERT INTO `sp_area` VALUES ('323', '崇左市', '20', '0', '2', null);
INSERT INTO `sp_area` VALUES ('324', '海口市', '21', '0', '2', null);
INSERT INTO `sp_area` VALUES ('325', '三亚市', '21', '0', '2', null);
INSERT INTO `sp_area` VALUES ('326', '五指山市', '21', '0', '2', null);
INSERT INTO `sp_area` VALUES ('327', '琼海市', '21', '0', '2', null);
INSERT INTO `sp_area` VALUES ('328', '儋州市', '21', '0', '2', null);
INSERT INTO `sp_area` VALUES ('329', '文昌市', '21', '0', '2', null);
INSERT INTO `sp_area` VALUES ('330', '万宁市', '21', '0', '2', null);
INSERT INTO `sp_area` VALUES ('331', '东方市', '21', '0', '2', null);
INSERT INTO `sp_area` VALUES ('332', '定安县', '21', '0', '2', null);
INSERT INTO `sp_area` VALUES ('333', '屯昌县', '21', '0', '2', null);
INSERT INTO `sp_area` VALUES ('334', '澄迈县', '21', '0', '2', null);
INSERT INTO `sp_area` VALUES ('335', '临高县', '21', '0', '2', null);
INSERT INTO `sp_area` VALUES ('336', '白沙黎族自治县', '21', '0', '2', null);
INSERT INTO `sp_area` VALUES ('337', '昌江黎族自治县', '21', '0', '2', null);
INSERT INTO `sp_area` VALUES ('338', '乐东黎族自治县', '21', '0', '2', null);
INSERT INTO `sp_area` VALUES ('339', '陵水黎族自治县', '21', '0', '2', null);
INSERT INTO `sp_area` VALUES ('340', '保亭黎族苗族自治县', '21', '0', '2', null);
INSERT INTO `sp_area` VALUES ('341', '琼中黎族苗族自治县', '21', '0', '2', null);
INSERT INTO `sp_area` VALUES ('342', '西沙群岛', '21', '0', '2', null);
INSERT INTO `sp_area` VALUES ('343', '南沙群岛', '21', '0', '2', null);
INSERT INTO `sp_area` VALUES ('344', '中沙群岛的岛礁及其海域', '21', '0', '2', null);
INSERT INTO `sp_area` VALUES ('345', '万州区', '62', '0', '3', null);
INSERT INTO `sp_area` VALUES ('346', '涪陵区', '62', '0', '3', null);
INSERT INTO `sp_area` VALUES ('347', '渝中区', '62', '0', '3', null);
INSERT INTO `sp_area` VALUES ('348', '大渡口区', '62', '0', '3', null);
INSERT INTO `sp_area` VALUES ('349', '江北区', '62', '0', '3', null);
INSERT INTO `sp_area` VALUES ('350', '沙坪坝区', '62', '0', '3', null);
INSERT INTO `sp_area` VALUES ('351', '九龙坡区', '62', '0', '3', null);
INSERT INTO `sp_area` VALUES ('352', '南岸区', '62', '0', '3', null);
INSERT INTO `sp_area` VALUES ('353', '北碚区', '62', '0', '3', null);
INSERT INTO `sp_area` VALUES ('354', '双桥区', '62', '0', '3', null);
INSERT INTO `sp_area` VALUES ('355', '万盛区', '62', '0', '3', null);
INSERT INTO `sp_area` VALUES ('356', '渝北区', '62', '0', '3', null);
INSERT INTO `sp_area` VALUES ('357', '巴南区', '62', '0', '3', null);
INSERT INTO `sp_area` VALUES ('358', '黔江区', '62', '0', '3', null);
INSERT INTO `sp_area` VALUES ('359', '长寿区', '62', '0', '3', null);
INSERT INTO `sp_area` VALUES ('360', '綦江县', '62', '0', '3', null);
INSERT INTO `sp_area` VALUES ('361', '潼南县', '62', '0', '3', null);
INSERT INTO `sp_area` VALUES ('362', '铜梁县', '62', '0', '3', null);
INSERT INTO `sp_area` VALUES ('363', '大足县', '62', '0', '3', null);
INSERT INTO `sp_area` VALUES ('364', '荣昌县', '62', '0', '3', null);
INSERT INTO `sp_area` VALUES ('365', '璧山县', '62', '0', '3', null);
INSERT INTO `sp_area` VALUES ('366', '梁平县', '62', '0', '3', null);
INSERT INTO `sp_area` VALUES ('367', '城口县', '62', '0', '3', null);
INSERT INTO `sp_area` VALUES ('368', '丰都县', '62', '0', '3', null);
INSERT INTO `sp_area` VALUES ('369', '垫江县', '62', '0', '3', null);
INSERT INTO `sp_area` VALUES ('370', '武隆县', '62', '0', '3', null);
INSERT INTO `sp_area` VALUES ('371', '忠县', '62', '0', '3', null);
INSERT INTO `sp_area` VALUES ('372', '开县', '62', '0', '3', null);
INSERT INTO `sp_area` VALUES ('373', '云阳县', '62', '0', '3', null);
INSERT INTO `sp_area` VALUES ('374', '奉节县', '62', '0', '3', null);
INSERT INTO `sp_area` VALUES ('375', '巫山县', '62', '0', '3', null);
INSERT INTO `sp_area` VALUES ('376', '巫溪县', '62', '0', '3', null);
INSERT INTO `sp_area` VALUES ('377', '石柱土家族自治县', '62', '0', '3', null);
INSERT INTO `sp_area` VALUES ('378', '秀山土家族苗族自治县', '62', '0', '3', null);
INSERT INTO `sp_area` VALUES ('379', '酉阳土家族苗族自治县', '62', '0', '3', null);
INSERT INTO `sp_area` VALUES ('380', '彭水苗族土家族自治县', '62', '0', '3', null);
INSERT INTO `sp_area` VALUES ('381', '江津市', '62', '0', '3', null);
INSERT INTO `sp_area` VALUES ('382', '合川市', '62', '0', '3', null);
INSERT INTO `sp_area` VALUES ('383', '永川市', '62', '0', '3', null);
INSERT INTO `sp_area` VALUES ('384', '南川市', '62', '0', '3', null);
INSERT INTO `sp_area` VALUES ('385', '成都市', '23', '0', '2', null);
INSERT INTO `sp_area` VALUES ('386', '自贡市', '23', '0', '2', null);
INSERT INTO `sp_area` VALUES ('387', '攀枝花市', '23', '0', '2', null);
INSERT INTO `sp_area` VALUES ('388', '泸州市', '23', '0', '2', null);
INSERT INTO `sp_area` VALUES ('389', '德阳市', '23', '0', '2', null);
INSERT INTO `sp_area` VALUES ('390', '绵阳市', '23', '0', '2', null);
INSERT INTO `sp_area` VALUES ('391', '广元市', '23', '0', '2', null);
INSERT INTO `sp_area` VALUES ('392', '遂宁市', '23', '0', '2', null);
INSERT INTO `sp_area` VALUES ('393', '内江市', '23', '0', '2', null);
INSERT INTO `sp_area` VALUES ('394', '乐山市', '23', '0', '2', null);
INSERT INTO `sp_area` VALUES ('395', '南充市', '23', '0', '2', null);
INSERT INTO `sp_area` VALUES ('396', '眉山市', '23', '0', '2', null);
INSERT INTO `sp_area` VALUES ('397', '宜宾市', '23', '0', '2', null);
INSERT INTO `sp_area` VALUES ('398', '广安市', '23', '0', '2', null);
INSERT INTO `sp_area` VALUES ('399', '达州市', '23', '0', '2', null);
INSERT INTO `sp_area` VALUES ('400', '雅安市', '23', '0', '2', null);
INSERT INTO `sp_area` VALUES ('401', '巴中市', '23', '0', '2', null);
INSERT INTO `sp_area` VALUES ('402', '资阳市', '23', '0', '2', null);
INSERT INTO `sp_area` VALUES ('403', '阿坝藏族羌族自治州', '23', '0', '2', null);
INSERT INTO `sp_area` VALUES ('404', '甘孜藏族自治州', '23', '0', '2', null);
INSERT INTO `sp_area` VALUES ('405', '凉山彝族自治州', '23', '0', '2', null);
INSERT INTO `sp_area` VALUES ('406', '贵阳市', '24', '0', '2', null);
INSERT INTO `sp_area` VALUES ('407', '六盘水市', '24', '0', '2', null);
INSERT INTO `sp_area` VALUES ('408', '遵义市', '24', '0', '2', null);
INSERT INTO `sp_area` VALUES ('409', '安顺市', '24', '0', '2', null);
INSERT INTO `sp_area` VALUES ('410', '铜仁地区', '24', '0', '2', null);
INSERT INTO `sp_area` VALUES ('411', '黔西南布依族苗族自治州', '24', '0', '2', null);
INSERT INTO `sp_area` VALUES ('412', '毕节地区', '24', '0', '2', null);
INSERT INTO `sp_area` VALUES ('413', '黔东南苗族侗族自治州', '24', '0', '2', null);
INSERT INTO `sp_area` VALUES ('414', '黔南布依族苗族自治州', '24', '0', '2', null);
INSERT INTO `sp_area` VALUES ('415', '昆明市', '25', '0', '2', null);
INSERT INTO `sp_area` VALUES ('416', '曲靖市', '25', '0', '2', null);
INSERT INTO `sp_area` VALUES ('417', '玉溪市', '25', '0', '2', null);
INSERT INTO `sp_area` VALUES ('418', '保山市', '25', '0', '2', null);
INSERT INTO `sp_area` VALUES ('419', '昭通市', '25', '0', '2', null);
INSERT INTO `sp_area` VALUES ('420', '丽江市', '25', '0', '2', null);
INSERT INTO `sp_area` VALUES ('421', '思茅市', '25', '0', '2', null);
INSERT INTO `sp_area` VALUES ('422', '临沧市', '25', '0', '2', null);
INSERT INTO `sp_area` VALUES ('423', '楚雄彝族自治州', '25', '0', '2', null);
INSERT INTO `sp_area` VALUES ('424', '红河哈尼族彝族自治州', '25', '0', '2', null);
INSERT INTO `sp_area` VALUES ('425', '文山壮族苗族自治州', '25', '0', '2', null);
INSERT INTO `sp_area` VALUES ('426', '西双版纳傣族自治州', '25', '0', '2', null);
INSERT INTO `sp_area` VALUES ('427', '大理白族自治州', '25', '0', '2', null);
INSERT INTO `sp_area` VALUES ('428', '德宏傣族景颇族自治州', '25', '0', '2', null);
INSERT INTO `sp_area` VALUES ('429', '怒江傈僳族自治州', '25', '0', '2', null);
INSERT INTO `sp_area` VALUES ('430', '迪庆藏族自治州', '25', '0', '2', null);
INSERT INTO `sp_area` VALUES ('431', '拉萨市', '26', '0', '2', null);
INSERT INTO `sp_area` VALUES ('432', '昌都地区', '26', '0', '2', null);
INSERT INTO `sp_area` VALUES ('433', '山南地区', '26', '0', '2', null);
INSERT INTO `sp_area` VALUES ('434', '日喀则地区', '26', '0', '2', null);
INSERT INTO `sp_area` VALUES ('435', '那曲地区', '26', '0', '2', null);
INSERT INTO `sp_area` VALUES ('436', '阿里地区', '26', '0', '2', null);
INSERT INTO `sp_area` VALUES ('437', '林芝地区', '26', '0', '2', null);
INSERT INTO `sp_area` VALUES ('438', '西安市', '27', '0', '2', null);
INSERT INTO `sp_area` VALUES ('439', '铜川市', '27', '0', '2', null);
INSERT INTO `sp_area` VALUES ('440', '宝鸡市', '27', '0', '2', null);
INSERT INTO `sp_area` VALUES ('441', '咸阳市', '27', '0', '2', null);
INSERT INTO `sp_area` VALUES ('442', '渭南市', '27', '0', '2', null);
INSERT INTO `sp_area` VALUES ('443', '延安市', '27', '0', '2', null);
INSERT INTO `sp_area` VALUES ('444', '汉中市', '27', '0', '2', null);
INSERT INTO `sp_area` VALUES ('445', '榆林市', '27', '0', '2', null);
INSERT INTO `sp_area` VALUES ('446', '安康市', '27', '0', '2', null);
INSERT INTO `sp_area` VALUES ('447', '商洛市', '27', '0', '2', null);
INSERT INTO `sp_area` VALUES ('448', '兰州市', '28', '0', '2', null);
INSERT INTO `sp_area` VALUES ('449', '嘉峪关市', '28', '0', '2', null);
INSERT INTO `sp_area` VALUES ('450', '金昌市', '28', '0', '2', null);
INSERT INTO `sp_area` VALUES ('451', '白银市', '28', '0', '2', null);
INSERT INTO `sp_area` VALUES ('452', '天水市', '28', '0', '2', null);
INSERT INTO `sp_area` VALUES ('453', '武威市', '28', '0', '2', null);
INSERT INTO `sp_area` VALUES ('454', '张掖市', '28', '0', '2', null);
INSERT INTO `sp_area` VALUES ('455', '平凉市', '28', '0', '2', null);
INSERT INTO `sp_area` VALUES ('456', '酒泉市', '28', '0', '2', null);
INSERT INTO `sp_area` VALUES ('457', '庆阳市', '28', '0', '2', null);
INSERT INTO `sp_area` VALUES ('458', '定西市', '28', '0', '2', null);
INSERT INTO `sp_area` VALUES ('459', '陇南市', '28', '0', '2', null);
INSERT INTO `sp_area` VALUES ('460', '临夏回族自治州', '28', '0', '2', null);
INSERT INTO `sp_area` VALUES ('461', '甘南藏族自治州', '28', '0', '2', null);
INSERT INTO `sp_area` VALUES ('462', '西宁市', '29', '0', '2', null);
INSERT INTO `sp_area` VALUES ('463', '海东地区', '29', '0', '2', null);
INSERT INTO `sp_area` VALUES ('464', '海北藏族自治州', '29', '0', '2', null);
INSERT INTO `sp_area` VALUES ('465', '黄南藏族自治州', '29', '0', '2', null);
INSERT INTO `sp_area` VALUES ('466', '海南藏族自治州', '29', '0', '2', null);
INSERT INTO `sp_area` VALUES ('467', '果洛藏族自治州', '29', '0', '2', null);
INSERT INTO `sp_area` VALUES ('468', '玉树藏族自治州', '29', '0', '2', null);
INSERT INTO `sp_area` VALUES ('469', '海西蒙古族藏族自治州', '29', '0', '2', null);
INSERT INTO `sp_area` VALUES ('470', '银川市', '30', '0', '2', null);
INSERT INTO `sp_area` VALUES ('471', '石嘴山市', '30', '0', '2', null);
INSERT INTO `sp_area` VALUES ('472', '吴忠市', '30', '0', '2', null);
INSERT INTO `sp_area` VALUES ('473', '固原市', '30', '0', '2', null);
INSERT INTO `sp_area` VALUES ('474', '中卫市', '30', '0', '2', null);
INSERT INTO `sp_area` VALUES ('475', '乌鲁木齐市', '31', '0', '2', null);
INSERT INTO `sp_area` VALUES ('476', '克拉玛依市', '31', '0', '2', null);
INSERT INTO `sp_area` VALUES ('477', '吐鲁番地区', '31', '0', '2', null);
INSERT INTO `sp_area` VALUES ('478', '哈密地区', '31', '0', '2', null);
INSERT INTO `sp_area` VALUES ('479', '昌吉回族自治州', '31', '0', '2', null);
INSERT INTO `sp_area` VALUES ('480', '博尔塔拉蒙古自治州', '31', '0', '2', null);
INSERT INTO `sp_area` VALUES ('481', '巴音郭楞蒙古自治州', '31', '0', '2', null);
INSERT INTO `sp_area` VALUES ('482', '阿克苏地区', '31', '0', '2', null);
INSERT INTO `sp_area` VALUES ('483', '克孜勒苏柯尔克孜自治州', '31', '0', '2', null);
INSERT INTO `sp_area` VALUES ('484', '喀什地区', '31', '0', '2', null);
INSERT INTO `sp_area` VALUES ('485', '和田地区', '31', '0', '2', null);
INSERT INTO `sp_area` VALUES ('486', '伊犁哈萨克自治州', '31', '0', '2', null);
INSERT INTO `sp_area` VALUES ('487', '塔城地区', '31', '0', '2', null);
INSERT INTO `sp_area` VALUES ('488', '阿勒泰地区', '31', '0', '2', null);
INSERT INTO `sp_area` VALUES ('489', '石河子市', '31', '0', '2', null);
INSERT INTO `sp_area` VALUES ('490', '阿拉尔市', '31', '0', '2', null);
INSERT INTO `sp_area` VALUES ('491', '图木舒克市', '31', '0', '2', null);
INSERT INTO `sp_area` VALUES ('492', '五家渠市', '31', '0', '2', null);
INSERT INTO `sp_area` VALUES ('493', '台北市', '32', '0', '2', null);
INSERT INTO `sp_area` VALUES ('494', '高雄市', '32', '0', '2', null);
INSERT INTO `sp_area` VALUES ('495', '基隆市', '32', '0', '2', null);
INSERT INTO `sp_area` VALUES ('496', '台中市', '32', '0', '2', null);
INSERT INTO `sp_area` VALUES ('497', '台南市', '32', '0', '2', null);
INSERT INTO `sp_area` VALUES ('498', '新竹市', '32', '0', '2', null);
INSERT INTO `sp_area` VALUES ('499', '嘉义市', '32', '0', '2', null);
INSERT INTO `sp_area` VALUES ('500', '台北县', '32', '0', '2', null);
INSERT INTO `sp_area` VALUES ('501', '宜兰县', '32', '0', '2', null);
INSERT INTO `sp_area` VALUES ('502', '桃园县', '32', '0', '2', null);
INSERT INTO `sp_area` VALUES ('503', '新竹县', '32', '0', '2', null);
INSERT INTO `sp_area` VALUES ('504', '苗栗县', '32', '0', '2', null);
INSERT INTO `sp_area` VALUES ('505', '台中县', '32', '0', '2', null);
INSERT INTO `sp_area` VALUES ('506', '彰化县', '32', '0', '2', null);
INSERT INTO `sp_area` VALUES ('507', '南投县', '32', '0', '2', null);
INSERT INTO `sp_area` VALUES ('508', '云林县', '32', '0', '2', null);
INSERT INTO `sp_area` VALUES ('509', '嘉义县', '32', '0', '2', null);
INSERT INTO `sp_area` VALUES ('510', '台南县', '32', '0', '2', null);
INSERT INTO `sp_area` VALUES ('511', '高雄县', '32', '0', '2', null);
INSERT INTO `sp_area` VALUES ('512', '屏东县', '32', '0', '2', null);
INSERT INTO `sp_area` VALUES ('513', '澎湖县', '32', '0', '2', null);
INSERT INTO `sp_area` VALUES ('514', '台东县', '32', '0', '2', null);
INSERT INTO `sp_area` VALUES ('515', '花莲县', '32', '0', '2', null);
INSERT INTO `sp_area` VALUES ('516', '中西区', '33', '0', '2', null);
INSERT INTO `sp_area` VALUES ('517', '东区', '33', '0', '2', null);
INSERT INTO `sp_area` VALUES ('518', '九龙城区', '33', '0', '2', null);
INSERT INTO `sp_area` VALUES ('519', '观塘区', '33', '0', '2', null);
INSERT INTO `sp_area` VALUES ('520', '南区', '33', '0', '2', null);
INSERT INTO `sp_area` VALUES ('521', '深水埗区', '33', '0', '2', null);
INSERT INTO `sp_area` VALUES ('522', '黄大仙区', '33', '0', '2', null);
INSERT INTO `sp_area` VALUES ('523', '湾仔区', '33', '0', '2', null);
INSERT INTO `sp_area` VALUES ('524', '油尖旺区', '33', '0', '2', null);
INSERT INTO `sp_area` VALUES ('525', '离岛区', '33', '0', '2', null);
INSERT INTO `sp_area` VALUES ('526', '葵青区', '33', '0', '2', null);
INSERT INTO `sp_area` VALUES ('527', '北区', '33', '0', '2', null);
INSERT INTO `sp_area` VALUES ('528', '西贡区', '33', '0', '2', null);
INSERT INTO `sp_area` VALUES ('529', '沙田区', '33', '0', '2', null);
INSERT INTO `sp_area` VALUES ('530', '屯门区', '33', '0', '2', null);
INSERT INTO `sp_area` VALUES ('531', '大埔区', '33', '0', '2', null);
INSERT INTO `sp_area` VALUES ('532', '荃湾区', '33', '0', '2', null);
INSERT INTO `sp_area` VALUES ('533', '元朗区', '33', '0', '2', null);
INSERT INTO `sp_area` VALUES ('534', '澳门特别行政区', '34', '0', '2', null);
INSERT INTO `sp_area` VALUES ('535', '美国', '45055', '0', '3', null);
INSERT INTO `sp_area` VALUES ('536', '加拿大', '45055', '0', '3', null);
INSERT INTO `sp_area` VALUES ('537', '澳大利亚', '45055', '0', '3', null);
INSERT INTO `sp_area` VALUES ('538', '新西兰', '45055', '0', '3', null);
INSERT INTO `sp_area` VALUES ('539', '英国', '45055', '0', '3', null);
INSERT INTO `sp_area` VALUES ('540', '法国', '45055', '0', '3', null);
INSERT INTO `sp_area` VALUES ('541', '德国', '45055', '0', '3', null);
INSERT INTO `sp_area` VALUES ('542', '捷克', '45055', '0', '3', null);
INSERT INTO `sp_area` VALUES ('543', '荷兰', '45055', '0', '3', null);
INSERT INTO `sp_area` VALUES ('544', '瑞士', '45055', '0', '3', null);
INSERT INTO `sp_area` VALUES ('545', '希腊', '45055', '0', '3', null);
INSERT INTO `sp_area` VALUES ('546', '挪威', '45055', '0', '3', null);
INSERT INTO `sp_area` VALUES ('547', '瑞典', '45055', '0', '3', null);
INSERT INTO `sp_area` VALUES ('548', '丹麦', '45055', '0', '3', null);
INSERT INTO `sp_area` VALUES ('549', '芬兰', '45055', '0', '3', null);
INSERT INTO `sp_area` VALUES ('550', '爱尔兰', '45055', '0', '3', null);
INSERT INTO `sp_area` VALUES ('551', '奥地利', '45055', '0', '3', null);
INSERT INTO `sp_area` VALUES ('552', '意大利', '45055', '0', '3', null);
INSERT INTO `sp_area` VALUES ('553', '乌克兰', '45055', '0', '3', null);
INSERT INTO `sp_area` VALUES ('554', '俄罗斯', '45055', '0', '3', null);
INSERT INTO `sp_area` VALUES ('555', '西班牙', '45055', '0', '3', null);
INSERT INTO `sp_area` VALUES ('556', '韩国', '45055', '0', '3', null);
INSERT INTO `sp_area` VALUES ('557', '新加坡', '45055', '0', '3', null);
INSERT INTO `sp_area` VALUES ('558', '马来西亚', '45055', '0', '3', null);
INSERT INTO `sp_area` VALUES ('559', '印度', '45055', '0', '3', null);
INSERT INTO `sp_area` VALUES ('560', '泰国', '45055', '0', '3', null);
INSERT INTO `sp_area` VALUES ('561', '日本', '45055', '0', '3', null);
INSERT INTO `sp_area` VALUES ('562', '巴西', '45055', '0', '3', null);
INSERT INTO `sp_area` VALUES ('563', '阿根廷', '45055', '0', '3', null);
INSERT INTO `sp_area` VALUES ('564', '南非', '45055', '0', '3', null);
INSERT INTO `sp_area` VALUES ('565', '埃及', '45055', '0', '3', null);
INSERT INTO `sp_area` VALUES ('566', '其他', '36', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1126', '井陉县', '73', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1127', '井陉矿区', '73', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1128', '元氏县', '73', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1129', '平山县', '73', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1130', '新乐市', '73', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1131', '新华区', '73', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1132', '无极县', '73', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1133', '晋州市', '73', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1134', '栾城县', '73', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1135', '桥东区', '73', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1136', '桥西区', '73', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1137', '正定县', '73', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1138', '深泽县', '73', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1139', '灵寿县', '73', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1140', '藁城市', '73', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1141', '行唐县', '73', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1142', '裕华区', '73', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1143', '赞皇县', '73', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1144', '赵县', '73', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1145', '辛集市', '73', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1146', '长安区', '73', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1147', '高邑县', '73', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1148', '鹿泉市', '73', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1149', '丰南区', '74', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1150', '丰润区', '74', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1151', '乐亭县', '74', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1152', '古冶区', '74', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1153', '唐海县', '74', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1154', '开平区', '74', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1155', '滦南县', '74', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1156', '滦县', '74', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1157', '玉田县', '74', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1158', '路北区', '74', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1159', '路南区', '74', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1160', '迁安市', '74', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1161', '迁西县', '74', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1162', '遵化市', '74', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1163', '北戴河区', '75', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1164', '卢龙县', '75', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1165', '山海关区', '75', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1166', '抚宁县', '75', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1167', '昌黎县', '75', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1168', '海港区', '75', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1169', '青龙满族自治县', '75', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1170', '丛台区', '76', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1171', '临漳县', '76', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1172', '复兴区', '76', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1173', '大名县', '76', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1174', '峰峰矿区', '76', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1175', '广平县', '76', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1176', '成安县', '76', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1177', '曲周县', '76', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1178', '武安市', '76', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1179', '永年县', '76', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1180', '涉县', '76', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1181', '磁县', '76', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1182', '肥乡县', '76', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1183', '邯山区', '76', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1184', '邯郸县', '76', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1185', '邱县', '76', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1186', '馆陶县', '76', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1187', '魏县', '76', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1188', '鸡泽县', '76', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1189', '临城县', '77', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1190', '临西县', '77', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1191', '任县', '77', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1192', '内丘县', '77', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1193', '南和县', '77', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1194', '南宫市', '77', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1195', '威县', '77', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1196', '宁晋县', '77', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1197', '巨鹿县', '77', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1198', '平乡县', '77', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1199', '广宗县', '77', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1200', '新河县', '77', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1201', '柏乡县', '77', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1202', '桥东区', '77', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1203', '桥西区', '77', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1204', '沙河市', '77', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1205', '清河县', '77', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1206', '邢台县', '77', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1207', '隆尧县', '77', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1208', '北市区', '78', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1209', '南市区', '78', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1210', '博野县', '78', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1211', '唐县', '78', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1212', '安国市', '78', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1213', '安新县', '78', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1214', '定兴县', '78', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1215', '定州市', '78', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1216', '容城县', '78', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1217', '徐水县', '78', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1218', '新市区', '78', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1219', '易县', '78', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1220', '曲阳县', '78', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1221', '望都县', '78', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1222', '涞水县', '78', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1223', '涞源县', '78', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1224', '涿州市', '78', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1225', '清苑县', '78', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1226', '满城县', '78', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1227', '蠡县', '78', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1228', '阜平县', '78', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1229', '雄县', '78', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1230', '顺平县', '78', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1231', '高碑店市', '78', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1232', '高阳县', '78', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1233', '万全县', '79', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1234', '下花园区', '79', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1235', '宣化区', '79', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1236', '宣化县', '79', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1237', '尚义县', '79', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1238', '崇礼县', '79', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1239', '康保县', '79', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1240', '张北县', '79', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1241', '怀安县', '79', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1242', '怀来县', '79', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1243', '桥东区', '79', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1244', '桥西区', '79', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1245', '沽源县', '79', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1246', '涿鹿县', '79', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1247', '蔚县', '79', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1248', '赤城县', '79', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1249', '阳原县', '79', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1250', '丰宁满族自治县', '80', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1251', '兴隆县', '80', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1252', '双桥区', '80', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1253', '双滦区', '80', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1254', '围场满族蒙古族自治县', '80', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1255', '宽城满族自治县', '80', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1256', '平泉县', '80', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1257', '承德县', '80', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1258', '滦平县', '80', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1259', '隆化县', '80', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1260', '鹰手营子矿区', '80', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1261', '冀州市', '81', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1262', '安平县', '81', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1263', '故城县', '81', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1264', '景县', '81', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1265', '枣强县', '81', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1266', '桃城区', '81', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1267', '武强县', '81', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1268', '武邑县', '81', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1269', '深州市', '81', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1270', '阜城县', '81', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1271', '饶阳县', '81', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1272', '三河市', '82', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1273', '固安县', '82', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1274', '大厂回族自治县', '82', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1275', '大城县', '82', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1276', '安次区', '82', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1277', '广阳区', '82', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1278', '文安县', '82', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1279', '永清县', '82', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1280', '霸州市', '82', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1281', '香河县', '82', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1282', '东光县', '83', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1283', '任丘市', '83', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1284', '南皮县', '83', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1285', '吴桥县', '83', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1286', '孟村回族自治县', '83', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1287', '新华区', '83', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1288', '沧县', '83', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1289', '河间市', '83', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1290', '泊头市', '83', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1291', '海兴县', '83', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1292', '献县', '83', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1293', '盐山县', '83', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1294', '肃宁县', '83', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1295', '运河区', '83', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1296', '青县', '83', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1297', '黄骅市', '83', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1298', '万柏林区', '84', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1299', '古交市', '84', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1300', '娄烦县', '84', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1301', '小店区', '84', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1302', '尖草坪区', '84', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1303', '晋源区', '84', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1304', '杏花岭区', '84', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1305', '清徐县', '84', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1306', '迎泽区', '84', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1307', '阳曲县', '84', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1308', '南郊区', '85', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1309', '城区', '85', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1310', '大同县', '85', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1311', '天镇县', '85', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1312', '左云县', '85', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1313', '广灵县', '85', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1314', '新荣区', '85', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1315', '浑源县', '85', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1316', '灵丘县', '85', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1317', '矿区', '85', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1318', '阳高县', '85', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1319', '城区', '86', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1320', '平定县', '86', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1321', '盂县', '86', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1322', '矿区', '86', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1323', '郊区', '86', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1324', '城区', '87', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1325', '壶关县', '87', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1326', '屯留县', '87', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1327', '平顺县', '87', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1328', '武乡县', '87', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1329', '沁县', '87', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1330', '沁源县', '87', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1331', '潞城市', '87', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1332', '襄垣县', '87', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1333', '郊区', '87', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1334', '长子县', '87', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1335', '长治县', '87', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1336', '黎城县', '87', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1337', '城区', '88', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1338', '沁水县', '88', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1339', '泽州县', '88', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1340', '阳城县', '88', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1341', '陵川县', '88', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1342', '高平市', '88', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1343', '右玉县', '89', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1344', '山阴县', '89', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1345', '平鲁区', '89', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1346', '应县', '89', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1347', '怀仁县', '89', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1348', '朔城区', '89', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1349', '介休市', '90', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1350', '和顺县', '90', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1351', '太谷县', '90', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1352', '寿阳县', '90', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1353', '左权县', '90', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1354', '平遥县', '90', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1355', '昔阳县', '90', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1356', '榆次区', '90', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1357', '榆社县', '90', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1358', '灵石县', '90', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1359', '祁县', '90', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1360', '万荣县', '91', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1361', '临猗县', '91', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1362', '垣曲县', '91', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1363', '夏县', '91', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1364', '平陆县', '91', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1365', '新绛县', '91', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1366', '永济市', '91', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1367', '河津市', '91', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1368', '盐湖区', '91', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1369', '稷山县', '91', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1370', '绛县', '91', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1371', '芮城县', '91', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1372', '闻喜县', '91', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1373', '五台县', '92', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1374', '五寨县', '92', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1375', '代县', '92', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1376', '保德县', '92', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1377', '偏关县', '92', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1378', '原平市', '92', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1379', '宁武县', '92', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1380', '定襄县', '92', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1381', '岢岚县', '92', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1382', '忻府区', '92', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1383', '河曲县', '92', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1384', '神池县', '92', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1385', '繁峙县', '92', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1386', '静乐县', '92', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1387', '乡宁县', '93', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1388', '侯马市', '93', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1389', '古县', '93', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1390', '吉县', '93', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1391', '大宁县', '93', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1392', '安泽县', '93', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1393', '尧都区', '93', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1394', '曲沃县', '93', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1395', '永和县', '93', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1396', '汾西县', '93', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1397', '洪洞县', '93', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1398', '浮山县', '93', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1399', '翼城县', '93', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1400', '蒲县', '93', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1401', '襄汾县', '93', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1402', '隰县', '93', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1403', '霍州市', '93', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1404', '中阳县', '94', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1405', '临县', '94', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1406', '交口县', '94', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1407', '交城县', '94', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1408', '兴县', '94', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1409', '孝义市', '94', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1410', '岚县', '94', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1411', '文水县', '94', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1412', '方山县', '94', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1413', '柳林县', '94', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1414', '汾阳市', '94', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1415', '石楼县', '94', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1416', '离石区', '94', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1417', '和林格尔县', '95', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1418', '回民区', '95', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1419', '土默特左旗', '95', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1420', '托克托县', '95', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1421', '新城区', '95', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1422', '武川县', '95', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1423', '清水河县', '95', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1424', '玉泉区', '95', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1425', '赛罕区', '95', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1426', '东河区', '96', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1427', '九原区', '96', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1428', '固阳县', '96', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1429', '土默特右旗', '96', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1430', '昆都仑区', '96', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1431', '白云矿区', '96', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1432', '石拐区', '96', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1433', '达尔罕茂明安联合旗', '96', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1434', '青山区', '96', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1435', '乌达区', '97', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1436', '海勃湾区', '97', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1437', '海南区', '97', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1438', '元宝山区', '98', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1439', '克什克腾旗', '98', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1440', '喀喇沁旗', '98', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1441', '宁城县', '98', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1442', '巴林右旗', '98', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1443', '巴林左旗', '98', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1444', '敖汉旗', '98', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1445', '松山区', '98', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1446', '林西县', '98', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1447', '红山区', '98', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1448', '翁牛特旗', '98', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1449', '阿鲁科尔沁旗', '98', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1450', '奈曼旗', '99', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1451', '库伦旗', '99', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1452', '开鲁县', '99', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1453', '扎鲁特旗', '99', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1454', '科尔沁区', '99', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1455', '科尔沁左翼中旗', '99', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1456', '科尔沁左翼后旗', '99', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1457', '霍林郭勒市', '99', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1458', '东胜区', '100', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1459', '乌审旗', '100', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1460', '伊金霍洛旗', '100', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1461', '准格尔旗', '100', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1462', '杭锦旗', '100', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1463', '达拉特旗', '100', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1464', '鄂东胜区', '100', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1465', '鄂托克前旗', '100', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1466', '鄂托克旗', '100', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1467', '扎兰屯市', '101', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1468', '新巴尔虎右旗', '101', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1469', '新巴尔虎左旗', '101', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1470', '根河市', '101', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1471', '海拉尔区', '101', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1472', '满洲里市', '101', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1473', '牙克石市', '101', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1474', '莫力达瓦达斡尔族自治旗', '101', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1475', '鄂伦春自治旗', '101', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1476', '鄂温克族自治旗', '101', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1477', '阿荣旗', '101', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1478', '陈巴尔虎旗', '101', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1479', '额尔古纳市', '101', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1480', '临河区', '102', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1481', '乌拉特中旗', '102', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1482', '乌拉特前旗', '102', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1483', '乌拉特后旗', '102', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1484', '五原县', '102', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1485', '杭锦后旗', '102', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1486', '磴口县', '102', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1487', '丰镇市', '103', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1488', '兴和县', '103', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1489', '凉城县', '103', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1490', '化德县', '103', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1491', '卓资县', '103', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1492', '商都县', '103', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1493', '四子王旗', '103', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1494', '察哈尔右翼中旗', '103', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1495', '察哈尔右翼前旗', '103', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1496', '察哈尔右翼后旗', '103', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1497', '集宁区', '103', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1498', '乌兰浩特市', '104', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1499', '扎赉特旗', '104', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1500', '科尔沁右翼中旗', '104', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1501', '科尔沁右翼前旗', '104', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1502', '突泉县', '104', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1503', '阿尔山市', '104', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1504', '东乌珠穆沁旗', '105', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1505', '二连浩特市', '105', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1506', '多伦县', '105', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1507', '太仆寺旗', '105', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1508', '正蓝旗', '105', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1509', '正镶白旗', '105', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1510', '苏尼特右旗', '105', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1511', '苏尼特左旗', '105', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1512', '西乌珠穆沁旗', '105', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1513', '锡林浩特市', '105', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1514', '镶黄旗', '105', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1515', '阿巴嘎旗', '105', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1516', '阿拉善右旗', '106', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1517', '阿拉善左旗', '106', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1518', '额济纳旗', '106', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1519', '东陵区', '107', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1520', '于洪区', '107', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1521', '和平区', '107', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1522', '大东区', '107', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1523', '康平县', '107', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1524', '新民市', '107', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1525', '沈北新区', '107', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1526', '沈河区', '107', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1527', '法库县', '107', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1528', '皇姑区', '107', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1529', '苏家屯区', '107', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1530', '辽中县', '107', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1531', '铁西区', '107', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1532', '中山区', '108', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1533', '庄河市', '108', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1534', '旅顺口区', '108', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1535', '普兰店市', '108', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1536', '沙河口区', '108', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1537', '瓦房店市', '108', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1538', '甘井子区', '108', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1539', '西岗区', '108', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1540', '金州区', '108', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1541', '长海县', '108', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1542', '千山区', '109', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1543', '台安县', '109', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1544', '岫岩满族自治县', '109', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1545', '海城市', '109', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1546', '立山区', '109', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1547', '铁东区', '109', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1548', '铁西区', '109', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1549', '东洲区', '110', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1550', '抚顺县', '110', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1551', '新宾满族自治县', '110', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1552', '新抚区', '110', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1553', '望花区', '110', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1554', '清原满族自治县', '110', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1555', '顺城区', '110', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1556', '南芬区', '111', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1557', '平山区', '111', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1558', '明山区', '111', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1559', '本溪满族自治县', '111', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1560', '桓仁满族自治县', '111', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1561', '溪湖区', '111', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1562', '东港市', '112', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1563', '元宝区', '112', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1564', '凤城市', '112', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1565', '宽甸满族自治县', '112', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1566', '振兴区', '112', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1567', '振安区', '112', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1568', '义县', '113', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1569', '凌河区', '113', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1570', '凌海市', '113', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1571', '北镇市', '113', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1572', '古塔区', '113', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1573', '太和区', '113', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1574', '黑山县', '113', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1575', '大石桥市', '114', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1576', '盖州市', '114', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1577', '站前区', '114', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1578', '老边区', '114', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1579', '西市区', '114', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1580', '鲅鱼圈区', '114', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1581', '太平区', '115', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1582', '彰武县', '115', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1583', '新邱区', '115', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1584', '海州区', '115', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1585', '清河门区', '115', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1586', '细河区', '115', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1587', '蒙古族自治县', '115', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1588', '太子河区', '116', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1589', '宏伟区', '116', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1590', '弓长岭区', '116', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1591', '文圣区', '116', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1592', '灯塔市', '116', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1593', '白塔区', '116', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1594', '辽阳县', '116', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1595', '兴隆台区', '117', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1596', '双台子区', '117', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1597', '大洼县', '117', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1598', '盘山县', '117', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1599', '开原市', '118', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1600', '昌图县', '118', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1601', '清河区', '118', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1602', '西丰县', '118', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1603', '调兵山市', '118', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1604', '铁岭县', '118', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1605', '银州区', '118', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1606', '凌源市', '119', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1607', '北票市', '119', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1608', '双塔区', '119', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1609', '喀喇沁左翼蒙古族自治县', '119', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1610', '建平县', '119', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1611', '朝阳县', '119', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1612', '龙城区', '119', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1613', '兴城市', '120', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1614', '南票区', '120', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1615', '建昌县', '120', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1616', '绥中县', '120', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1617', '连山区', '120', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1618', '龙港区', '120', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1619', '九台市', '121', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1620', '二道区', '121', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1621', '农安县', '121', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1622', '南关区', '121', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1623', '双阳区', '121', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1624', '宽城区', '121', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1625', '德惠市', '121', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1626', '朝阳区', '121', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1627', '榆树市', '121', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1628', '绿园区', '121', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1629', '丰满区', '122', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1630', '昌邑区', '122', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1631', '桦甸市', '122', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1632', '永吉县', '122', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1633', '磐石市', '122', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1634', '舒兰市', '122', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1635', '船营区', '122', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1636', '蛟河市', '122', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1637', '龙潭区', '122', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1638', '伊通满族自治县', '123', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1639', '公主岭市', '123', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1640', '双辽市', '123', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1641', '梨树县', '123', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1642', '铁东区', '123', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1643', '铁西区', '123', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1644', '东丰县', '124', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1645', '东辽县', '124', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1646', '西安区', '124', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1647', '龙山区', '124', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1648', '东昌区', '125', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1649', '二道江区', '125', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1650', '柳河县', '125', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1651', '梅河口市', '125', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1652', '辉南县', '125', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1653', '通化县', '125', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1654', '集安市', '125', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1655', '临江市', '126', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1656', '八道江区', '126', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1657', '抚松县', '126', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1658', '江源区', '126', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1659', '长白朝鲜族自治县', '126', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1660', '靖宇县', '126', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1661', '干安县', '127', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1662', '前郭尔罗斯蒙古族自治县', '127', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1663', '宁江区', '127', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1664', '扶余县', '127', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1665', '长岭县', '127', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1666', '大安市', '128', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1667', '洮北区', '128', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1668', '洮南市', '128', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1669', '通榆县', '128', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1670', '镇赉县', '128', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1671', '和龙市', '129', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1672', '图们市', '129', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1673', '安图县', '129', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1674', '延吉市', '129', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1675', '敦化市', '129', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1676', '汪清县', '129', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1677', '珲春市', '129', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1678', '龙井市', '129', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1679', '五常市', '130', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1680', '依兰县', '130', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1681', '南岗区', '130', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1682', '双城市', '130', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1683', '呼兰区', '130', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1684', '哈尔滨市道里区', '130', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1685', '宾县', '130', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1686', '尚志市', '130', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1687', '巴彦县', '130', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1688', '平房区', '130', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1689', '延寿县', '130', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1690', '方正县', '130', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1691', '木兰县', '130', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1692', '松北区', '130', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1693', '通河县', '130', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1694', '道外区', '130', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1695', '阿城区', '130', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1696', '香坊区', '130', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1697', '依安县', '131', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1698', '克东县', '131', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1699', '克山县', '131', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1700', '富拉尔基区', '131', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1701', '富裕县', '131', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1702', '建华区', '131', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1703', '拜泉县', '131', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1704', '昂昂溪区', '131', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1705', '梅里斯达斡尔族区', '131', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1706', '泰来县', '131', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1707', '甘南县', '131', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1708', '碾子山区', '131', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1709', '讷河市', '131', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1710', '铁锋区', '131', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1711', '龙江县', '131', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1712', '龙沙区', '131', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1713', '城子河区', '132', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1714', '密山市', '132', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1715', '恒山区', '132', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1716', '梨树区', '132', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1717', '滴道区', '132', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1718', '虎林市', '132', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1719', '鸡东县', '132', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1720', '鸡冠区', '132', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1721', '麻山区', '132', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1722', '东山区', '133', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1723', '兴安区', '133', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1724', '兴山区', '133', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1725', '南山区', '133', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1726', '向阳区', '133', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1727', '工农区', '133', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1728', '绥滨县', '133', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1729', '萝北县', '133', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1730', '友谊县', '134', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1731', '四方台区', '134', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1732', '宝山区', '134', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1733', '宝清县', '134', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1734', '尖山区', '134', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1735', '岭东区', '134', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1736', '集贤县', '134', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1737', '饶河县', '134', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1738', '大同区', '135', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1739', '杜尔伯特蒙古族自治县', '135', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1740', '林甸县', '135', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1741', '红岗区', '135', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1742', '肇州县', '135', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1743', '肇源县', '135', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1744', '胡路区', '135', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1745', '萨尔图区', '135', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1746', '龙凤区', '135', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1747', '上甘岭区', '136', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1748', '乌伊岭区', '136', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1749', '乌马河区', '136', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1750', '五营区', '136', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1751', '伊春区', '136', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1752', '南岔区', '136', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1753', '友好区', '136', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1754', '嘉荫县', '136', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1755', '带岭区', '136', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1756', '新青区', '136', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1757', '汤旺河区', '136', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1758', '红星区', '136', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1759', '美溪区', '136', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1760', '翠峦区', '136', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1761', '西林区', '136', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1762', '金山屯区', '136', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1763', '铁力市', '136', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1764', '东风区', '137', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1765', '前进区', '137', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1766', '同江市', '137', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1767', '向阳区', '137', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1768', '富锦市', '137', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1769', '抚远县', '137', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1770', '桦南县', '137', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1771', '桦川县', '137', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1772', '汤原县', '137', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1773', '郊区', '137', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1774', '勃利县', '138', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1775', '新兴区', '138', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1776', '桃山区', '138', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1777', '茄子河区', '138', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1778', '东宁县', '139', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1779', '东安区', '139', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1780', '宁安市', '139', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1781', '林口县', '139', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1782', '海林市', '139', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1783', '爱民区', '139', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1784', '穆棱市', '139', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1785', '绥芬河市', '139', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1786', '西安区', '139', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1787', '阳明区', '139', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1788', '五大连池市', '140', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1789', '北安市', '140', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1790', '嫩江县', '140', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1791', '孙吴县', '140', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1792', '爱辉区', '140', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1793', '车逊克县', '140', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1794', '逊克县', '140', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1795', '兰西县', '141', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1796', '安达市', '141', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1797', '庆安县', '141', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1798', '明水县', '141', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1799', '望奎县', '141', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1800', '海伦市', '141', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1801', '绥化市北林区', '141', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1802', '绥棱县', '141', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1803', '肇东市', '141', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1804', '青冈县', '141', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1805', '呼玛县', '142', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1806', '塔河县', '142', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1807', '大兴安岭地区加格达奇区', '142', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1808', '大兴安岭地区呼中区', '142', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1809', '大兴安岭地区新林区', '142', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1810', '大兴安岭地区松岭区', '142', '0', '3', null);
INSERT INTO `sp_area` VALUES ('1811', '漠河县', '142', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2027', '下关区', '162', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2028', '六合区', '162', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2029', '建邺区', '162', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2030', '栖霞区', '162', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2031', '江宁区', '162', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2032', '浦口区', '162', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2033', '溧水县', '162', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2034', '玄武区', '162', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2035', '白下区', '162', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2036', '秦淮区', '162', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2037', '雨花台区', '162', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2038', '高淳县', '162', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2039', '鼓楼区', '162', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2040', '北塘区', '163', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2041', '南长区', '163', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2042', '宜兴市', '163', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2043', '崇安区', '163', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2044', '惠山区', '163', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2045', '江阴市', '163', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2046', '滨湖区', '163', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2047', '锡山区', '163', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2048', '丰县', '164', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2049', '九里区', '164', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2050', '云龙区', '164', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2051', '新沂市', '164', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2052', '沛县', '164', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2053', '泉山区', '164', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2054', '睢宁县', '164', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2055', '贾汪区', '164', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2056', '邳州市', '164', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2057', '铜山县', '164', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2058', '鼓楼区', '164', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2059', '天宁区', '165', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2060', '戚墅堰区', '165', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2061', '新北区', '165', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2062', '武进区', '165', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2063', '溧阳市', '165', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2064', '金坛市', '165', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2065', '钟楼区', '165', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2066', '吴中区', '166', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2067', '吴江市', '166', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2068', '太仓市', '166', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2069', '常熟市', '166', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2070', '平江区', '166', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2071', '张家港市', '166', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2072', '昆山市', '166', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2073', '沧浪区', '166', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2074', '相城区', '166', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2075', '苏州工业园区', '166', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2076', '虎丘区', '166', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2077', '金阊区', '166', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2078', '启东市', '167', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2079', '如东县', '167', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2080', '如皋市', '167', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2081', '崇川区', '167', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2082', '海安县', '167', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2083', '海门市', '167', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2084', '港闸区', '167', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2085', '通州市', '167', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2086', '东海县', '168', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2087', '新浦区', '168', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2088', '海州区', '168', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2089', '灌云县', '168', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2090', '灌南县', '168', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2091', '赣榆县', '168', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2092', '连云区', '168', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2093', '楚州区', '169', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2094', '洪泽县', '169', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2095', '涟水县', '169', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2096', '淮阴区', '169', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2097', '清河区', '169', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2098', '清浦区', '169', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2099', '盱眙县', '169', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2100', '金湖县', '169', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2101', '东台市', '170', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2102', '亭湖区', '170', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2103', '响水县', '170', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2104', '大丰市', '170', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2105', '射阳县', '170', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2106', '建湖县', '170', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2107', '滨海县', '170', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2108', '盐都区', '170', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2109', '阜宁县', '170', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2110', '仪征市', '171', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2111', '宝应县', '171', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2112', '广陵区', '171', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2113', '江都市', '171', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2114', '维扬区', '171', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2115', '邗江区', '171', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2116', '高邮市', '171', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2117', '丹徒区', '172', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2118', '丹阳市', '172', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2119', '京口区', '172', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2120', '句容市', '172', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2121', '扬中市', '172', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2122', '润州区', '172', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2123', '兴化市', '173', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2124', '姜堰市', '173', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2125', '泰兴市', '173', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2126', '海陵区', '173', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2127', '靖江市', '173', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2128', '高港区', '173', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2129', '宿城区', '174', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2130', '宿豫区', '174', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2131', '沭阳县', '174', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2132', '泗洪县', '174', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2133', '泗阳县', '174', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2134', '上城区', '175', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2135', '下城区', '175', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2136', '临安市', '175', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2137', '余杭区', '175', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2138', '富阳市', '175', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2139', '建德市', '175', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2140', '拱墅区', '175', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2141', '桐庐县', '175', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2142', '江干区', '175', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2143', '淳安县', '175', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2144', '滨江区', '175', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2145', '萧山区', '175', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2146', '西湖区', '175', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2147', '余姚市', '176', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2148', '北仑区', '176', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2149', '奉化市', '176', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2150', '宁海县', '176', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2151', '慈溪市', '176', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2152', '江东区', '176', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2153', '江北区', '176', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2154', '海曙区', '176', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2155', '象山县', '176', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2156', '鄞州区', '176', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2157', '镇海区', '176', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2158', '乐清市', '177', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2159', '平阳县', '177', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2160', '文成县', '177', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2161', '永嘉县', '177', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2162', '泰顺县', '177', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2163', '洞头县', '177', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2164', '瑞安市', '177', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2165', '瓯海区', '177', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2166', '苍南县', '177', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2167', '鹿城区', '177', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2168', '龙湾区', '177', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2169', '南湖区', '178', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2170', '嘉善县', '178', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2171', '平湖市', '178', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2172', '桐乡市', '178', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2173', '海宁市', '178', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2174', '海盐县', '178', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2175', '秀洲区', '178', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2176', '南浔区', '179', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2177', '吴兴区', '179', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2178', '安吉县', '179', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2179', '德清县', '179', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2180', '长兴县', '179', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2181', '上虞市', '180', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2182', '嵊州市', '180', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2183', '新昌县', '180', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2184', '绍兴县', '180', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2185', '诸暨市', '180', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2186', '越城区', '180', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2187', '定海区', '181', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2188', '岱山县', '181', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2189', '嵊泗县', '181', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2190', '普陀区', '181', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2191', '常山县', '182', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2192', '开化县', '182', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2193', '柯城区', '182', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2194', '江山市', '182', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2195', '衢江区', '182', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2196', '龙游县', '182', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2197', '东阳市', '183', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2198', '义乌市', '183', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2199', '兰溪市', '183', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2200', '婺城区', '183', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2201', '武义县', '183', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2202', '永康市', '183', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2203', '浦江县', '183', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2204', '磐安县', '183', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2205', '金东区', '183', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2206', '三门县', '184', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2207', '临海市', '184', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2208', '仙居县', '184', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2209', '天台县', '184', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2210', '椒江区', '184', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2211', '温岭市', '184', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2212', '玉环县', '184', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2213', '路桥区', '184', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2214', '黄岩区', '184', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2215', '云和县', '185', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2216', '庆元县', '185', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2217', '景宁畲族自治县', '185', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2218', '松阳县', '185', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2219', '缙云县', '185', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2220', '莲都区', '185', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2221', '遂昌县', '185', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2222', '青田县', '185', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2223', '龙泉市', '185', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2224', '包河区', '186', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2225', '庐阳区', '186', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2226', '瑶海区', '186', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2227', '肥东县', '186', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2228', '肥西县', '186', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2229', '蜀山区', '186', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2230', '长丰县', '186', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2231', '三山区', '187', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2232', '南陵县', '187', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2233', '弋江区', '187', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2234', '繁昌县', '187', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2235', '芜湖县', '187', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2236', '镜湖区', '187', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2237', '鸠江区', '187', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2238', '五河县', '188', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2239', '固镇县', '188', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2240', '怀远县', '188', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2241', '淮上区', '188', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2242', '禹会区', '188', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2243', '蚌山区', '188', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2244', '龙子湖区', '188', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2245', '八公山区', '189', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2246', '凤台县', '189', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2247', '大通区', '189', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2248', '潘集区', '189', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2249', '田家庵区', '189', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2250', '谢家集区', '189', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2251', '当涂县', '190', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2252', '花山区', '190', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2253', '金家庄区', '190', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2254', '雨山区', '190', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2255', '杜集区', '191', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2256', '濉溪县', '191', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2257', '烈山区', '191', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2258', '相山区', '191', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2259', '狮子山区', '192', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2260', '郊区', '192', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2261', '铜官山区', '192', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2262', '铜陵县', '192', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2263', '大观区', '193', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2264', '太湖县', '193', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2265', '宜秀区', '193', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2266', '宿松县', '193', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2267', '岳西县', '193', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2268', '怀宁县', '193', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2269', '望江县', '193', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2270', '枞阳县', '193', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2271', '桐城市', '193', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2272', '潜山县', '193', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2273', '迎江区', '193', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2274', '休宁县', '194', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2275', '屯溪区', '194', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2276', '徽州区', '194', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2277', '歙县', '194', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2278', '祁门县', '194', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2279', '黄山区', '194', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2280', '黟县', '194', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2281', '全椒县', '195', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2282', '凤阳县', '195', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2283', '南谯区', '195', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2284', '天长市', '195', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2285', '定远县', '195', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2286', '明光市', '195', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2287', '来安县', '195', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2288', '琅玡区', '195', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2289', '临泉县', '196', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2290', '太和县', '196', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2291', '界首市', '196', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2292', '阜南县', '196', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2293', '颍东区', '196', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2294', '颍州区', '196', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2295', '颍泉区', '196', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2296', '颖上县', '196', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2297', '埇桥区', '197', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2298', '泗县辖', '197', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2299', '灵璧县', '197', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2300', '砀山县', '197', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2301', '萧县', '197', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2302', '含山县', '198', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2303', '和县', '198', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2304', '居巢区', '198', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2305', '庐江县', '198', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2306', '无为县', '198', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2307', '寿县', '199', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2308', '舒城县', '199', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2309', '裕安区', '199', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2310', '金安区', '199', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2311', '金寨县', '199', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2312', '霍山县', '199', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2313', '霍邱县', '199', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2314', '利辛县', '200', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2315', '涡阳县', '200', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2316', '蒙城县', '200', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2317', '谯城区', '200', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2318', '东至县', '201', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2319', '石台县', '201', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2320', '贵池区', '201', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2321', '青阳县', '201', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2322', '宁国市', '202', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2323', '宣州区', '202', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2324', '广德县', '202', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2325', '旌德县', '202', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2326', '泾县', '202', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2327', '绩溪县', '202', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2328', '郎溪县', '202', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2329', '仓山区', '203', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2330', '台江区', '203', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2331', '平潭县', '203', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2332', '晋安区', '203', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2333', '永泰县', '203', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2334', '福清市', '203', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2335', '罗源县', '203', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2336', '连江县', '203', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2337', '长乐市', '203', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2338', '闽侯县', '203', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2339', '闽清县', '203', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2340', '马尾区', '203', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2341', '鼓楼区', '203', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2342', '同安区', '204', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2343', '思明区', '204', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2344', '海沧区', '204', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2345', '湖里区', '204', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2346', '翔安区', '204', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2347', '集美区', '204', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2348', '仙游县', '205', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2349', '城厢区', '205', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2350', '涵江区', '205', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2351', '秀屿区', '205', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2352', '荔城区', '205', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2353', '三元区', '206', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2354', '大田县', '206', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2355', '宁化县', '206', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2356', '将乐县', '206', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2357', '尤溪县', '206', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2358', '建宁县', '206', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2359', '明溪县', '206', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2360', '梅列区', '206', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2361', '永安市', '206', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2362', '沙县', '206', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2363', '泰宁县', '206', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2364', '清流县', '206', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2365', '丰泽区', '207', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2366', '南安市', '207', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2367', '安溪县', '207', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2368', '德化县', '207', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2369', '惠安县', '207', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2370', '晋江市', '207', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2371', '永春县', '207', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2372', '泉港区', '207', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2373', '洛江区', '207', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2374', '石狮市', '207', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2375', '金门县', '207', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2376', '鲤城区', '207', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2377', '东山县', '208', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2378', '云霄县', '208', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2379', '华安县', '208', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2380', '南靖县', '208', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2381', '平和县', '208', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2382', '漳浦县', '208', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2383', '芗城区', '208', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2384', '诏安县', '208', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2385', '长泰县', '208', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2386', '龙文区', '208', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2387', '龙海市', '208', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2388', '光泽县', '209', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2389', '延平区', '209', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2390', '建瓯市', '209', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2391', '建阳市', '209', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2392', '政和县', '209', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2393', '松溪县', '209', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2394', '武夷山市', '209', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2395', '浦城县', '209', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2396', '邵武市', '209', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2397', '顺昌县', '209', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2398', '上杭县', '210', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2399', '新罗区', '210', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2400', '武平县', '210', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2401', '永定县', '210', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2402', '漳平市', '210', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2403', '连城县', '210', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2404', '长汀县', '210', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2405', '古田县', '211', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2406', '周宁县', '211', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2407', '寿宁县', '211', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2408', '屏南县', '211', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2409', '柘荣县', '211', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2410', '福安市', '211', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2411', '福鼎市', '211', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2412', '蕉城区', '211', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2413', '霞浦县', '211', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2414', '东湖区', '212', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2415', '南昌县', '212', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2416', '安义县', '212', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2417', '新建县', '212', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2418', '湾里区', '212', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2419', '西湖区', '212', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2420', '进贤县', '212', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2421', '青云谱区', '212', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2422', '青山湖区', '212', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2423', '乐平市', '213', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2424', '昌江区', '213', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2425', '浮梁县', '213', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2426', '珠山区', '213', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2427', '上栗县', '214', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2428', '安源区', '214', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2429', '湘东区', '214', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2430', '芦溪县', '214', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2431', '莲花县', '214', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2432', '九江县', '215', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2433', '修水县', '215', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2434', '庐山区', '215', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2435', '彭泽县', '215', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2436', '德安县', '215', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2437', '星子县', '215', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2438', '武宁县', '215', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2439', '永修县', '215', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2440', '浔阳区', '215', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2441', '湖口县', '215', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2442', '瑞昌市', '215', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2443', '都昌县', '215', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2444', '分宜县', '216', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2445', '渝水区', '216', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2446', '余江县', '217', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2447', '月湖区', '217', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2448', '贵溪市', '217', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2449', '上犹县', '218', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2450', '于都县', '218', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2451', '会昌县', '218', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2452', '信丰县', '218', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2453', '全南县', '218', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2454', '兴国县', '218', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2455', '南康市', '218', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2456', '大余县', '218', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2457', '宁都县', '218', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2458', '安远县', '218', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2459', '定南县', '218', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2460', '寻乌县', '218', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2461', '崇义县', '218', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2462', '瑞金市', '218', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2463', '石城县', '218', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2464', '章贡区', '218', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2465', '赣县', '218', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2466', '龙南县', '218', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2467', '万安县', '219', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2468', '井冈山市', '219', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2469', '吉安县', '219', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2470', '吉州区', '219', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2471', '吉水县', '219', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2472', '安福县', '219', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2473', '峡江县', '219', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2474', '新干县', '219', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2475', '永丰县', '219', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2476', '永新县', '219', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2477', '泰和县', '219', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2478', '遂川县', '219', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2479', '青原区', '219', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2480', '万载县', '220', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2481', '上高县', '220', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2482', '丰城市', '220', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2483', '奉新县', '220', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2484', '宜丰县', '220', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2485', '樟树市', '220', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2486', '袁州区', '220', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2487', '铜鼓县', '220', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2488', '靖安县', '220', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2489', '高安市', '220', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2490', '东乡县', '221', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2491', '临川区', '221', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2492', '乐安县', '221', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2493', '南丰县', '221', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2494', '南城县', '221', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2495', '宜黄县', '221', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2496', '崇仁县', '221', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2497', '广昌县', '221', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2498', '资溪县', '221', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2499', '金溪县', '221', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2500', '黎川县', '221', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2501', '万年县', '222', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2502', '上饶县', '222', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2503', '余干县', '222', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2504', '信州区', '222', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2505', '婺源县', '222', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2506', '广丰县', '222', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2507', '弋阳县', '222', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2508', '德兴市', '222', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2509', '横峰县', '222', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2510', '玉山县', '222', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2511', '鄱阳县', '222', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2512', '铅山县', '222', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2513', '历下区', '223', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2514', '历城区', '223', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2515', '商河县', '223', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2516', '天桥区', '223', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2517', '市中区', '223', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2518', '平阴县', '223', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2519', '槐荫区', '223', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2520', '济阳县', '223', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2521', '章丘市', '223', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2522', '长清区', '223', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2523', '即墨市', '224', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2524', '四方区', '224', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2525', '城阳区', '224', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2526', '崂山区', '224', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2527', '市北区', '224', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2528', '市南区', '224', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2529', '平度市', '224', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2530', '李沧区', '224', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2531', '胶南市', '224', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2532', '胶州市', '224', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2533', '莱西市', '224', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2534', '黄岛区', '224', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2535', '临淄区', '225', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2536', '博山区', '225', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2537', '周村区', '225', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2538', '张店区', '225', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2539', '桓台县', '225', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2540', '沂源县', '225', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2541', '淄川区', '225', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2542', '高青县', '225', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2543', '台儿庄区', '226', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2544', '山亭区', '226', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2545', '峄城区', '226', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2546', '市中区', '226', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2547', '滕州市', '226', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2548', '薛城区', '226', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2549', '东营区', '227', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2550', '利津县', '227', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2551', '垦利县', '227', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2552', '广饶县', '227', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2553', '河口区', '227', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2554', '招远市', '228', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2555', '栖霞市', '228', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2556', '海阳市', '228', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2557', '牟平区', '228', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2558', '福山区', '228', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2559', '芝罘区', '228', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2560', '莱山区', '228', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2561', '莱州市', '228', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2562', '莱阳市', '228', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2563', '蓬莱市', '228', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2564', '长岛县', '228', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2565', '龙口市', '228', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2566', '临朐县', '229', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2567', '坊子区', '229', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2568', '奎文区', '229', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2569', '安丘市', '229', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2570', '寒亭区', '229', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2571', '寿光市', '229', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2572', '昌乐县', '229', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2573', '昌邑市', '229', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2574', '潍城区', '229', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2575', '诸城市', '229', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2576', '青州市', '229', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2577', '高密市', '229', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2578', '任城区', '230', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2579', '兖州市', '230', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2580', '嘉祥县', '230', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2581', '市中区', '230', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2582', '微山县', '230', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2583', '曲阜市', '230', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2584', '梁山县', '230', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2585', '汶上县', '230', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2586', '泗水县', '230', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2587', '邹城市', '230', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2588', '金乡县', '230', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2589', '鱼台县', '230', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2590', '东平县', '231', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2591', '宁阳县', '231', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2592', '岱岳区', '231', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2593', '新泰市', '231', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2594', '泰山区', '231', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2595', '肥城市', '231', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2596', '乳山市', '232', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2597', '文登市', '232', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2598', '环翠区', '232', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2599', '荣成市', '232', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2600', '东港区', '233', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2601', '五莲县', '233', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2602', '岚山区', '233', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2603', '莒县', '233', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2604', '莱城区', '234', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2605', '钢城区', '234', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2606', '临沭县', '235', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2607', '兰山区', '235', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2608', '平邑县', '235', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2609', '沂南县', '235', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2610', '沂水县', '235', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2611', '河东区', '235', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2612', '罗庄区', '235', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2613', '苍山县', '235', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2614', '莒南县', '235', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2615', '蒙阴县', '235', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2616', '费县', '235', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2617', '郯城县', '235', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2618', '临邑县', '236', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2619', '乐陵市', '236', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2620', '夏津县', '236', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2621', '宁津县', '236', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2622', '平原县', '236', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2623', '庆云县', '236', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2624', '德城区', '236', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2625', '武城县', '236', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2626', '禹城市', '236', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2627', '陵县', '236', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2628', '齐河县', '236', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2629', '东昌府区', '237', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2630', '东阿县', '237', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2631', '临清市', '237', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2632', '冠县', '237', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2633', '茌平县', '237', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2634', '莘县', '237', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2635', '阳谷县', '237', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2636', '高唐县', '237', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2637', '博兴县', '238', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2638', '惠民县', '238', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2639', '无棣县', '238', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2640', '沾化县', '238', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2641', '滨城区', '238', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2642', '邹平县', '238', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2643', '阳信县', '238', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2644', '东明县', '239', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2645', '单县', '239', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2646', '定陶县', '239', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2647', '巨野县', '239', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2648', '成武县', '239', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2649', '曹县', '239', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2650', '牡丹区', '239', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2651', '郓城县', '239', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2652', '鄄城县', '239', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2653', '上街区', '240', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2654', '中原区', '240', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2655', '中牟县', '240', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2656', '二七区', '240', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2657', '巩义市', '240', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2658', '惠济区', '240', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2659', '新密市', '240', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2660', '新郑市', '240', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2661', '登封市', '240', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2662', '管城回族区', '240', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2663', '荥阳市', '240', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2664', '金水区', '240', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2665', '兰考县', '241', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2666', '尉氏县', '241', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2667', '开封县', '241', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2668', '杞县', '241', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2669', '禹王台区', '241', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2670', '通许县', '241', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2671', '金明区', '241', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2672', '顺河回族区', '241', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2673', '鼓楼区', '241', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2674', '龙亭区', '241', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2675', '伊川县', '242', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2676', '偃师市', '242', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2677', '吉利区', '242', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2678', '孟津县', '242', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2679', '宜阳县', '242', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2680', '嵩县', '242', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2681', '新安县', '242', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2682', '栾川县', '242', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2683', '汝阳县', '242', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2684', '洛宁县', '242', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2685', '洛龙区', '242', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2686', '涧西区', '242', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2687', '瀍河回族区', '242', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2688', '老城区', '242', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2689', '西工区', '242', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2690', '卫东区', '243', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2691', '叶县', '243', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2692', '宝丰县', '243', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2693', '新华区', '243', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2694', '汝州市', '243', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2695', '湛河区', '243', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2696', '石龙区', '243', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2697', '舞钢市', '243', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2698', '郏县', '243', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2699', '鲁山县', '243', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2700', '内黄县', '244', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2701', '北关区', '244', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2702', '安阳县', '244', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2703', '文峰区', '244', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2704', '林州市', '244', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2705', '殷都区', '244', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2706', '汤阴县', '244', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2707', '滑县', '244', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2708', '龙安区', '244', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2709', '山城区', '245', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2710', '浚县', '245', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2711', '淇县', '245', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2712', '淇滨区', '245', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2713', '鹤山区', '245', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2714', '凤泉区', '246', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2715', '卫滨区', '246', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2716', '卫辉市', '246', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2717', '原阳县', '246', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2718', '封丘县', '246', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2719', '延津县', '246', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2720', '新乡县', '246', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2721', '牧野区', '246', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2722', '红旗区', '246', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2723', '获嘉县', '246', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2724', '辉县市', '246', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2725', '长垣县', '246', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2726', '中站区', '247', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2727', '修武县', '247', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2728', '博爱县', '247', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2729', '孟州市', '247', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2730', '山阳区', '247', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2731', '武陟县', '247', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2732', '沁阳市', '247', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2733', '温县', '247', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2734', '解放区', '247', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2735', '马村区', '247', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2736', '华龙区', '248', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2737', '南乐县', '248', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2738', '台前县', '248', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2739', '清丰县', '248', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2740', '濮阳县', '248', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2741', '范县', '248', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2742', '禹州市', '249', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2743', '襄城县', '249', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2744', '许昌县', '249', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2745', '鄢陵县', '249', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2746', '长葛市', '249', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2747', '魏都区', '249', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2748', '临颍县', '250', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2749', '召陵区', '250', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2750', '源汇区', '250', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2751', '舞阳县', '250', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2752', '郾城区', '250', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2753', '义马市', '251', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2754', '卢氏县', '251', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2755', '渑池县', '251', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2756', '湖滨区', '251', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2757', '灵宝市', '251', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2758', '陕县', '251', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2759', '内乡县', '252', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2760', '南召县', '252', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2761', '卧龙区', '252', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2762', '唐河县', '252', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2763', '宛城区', '252', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2764', '新野县', '252', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2765', '方城县', '252', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2766', '桐柏县', '252', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2767', '淅川县', '252', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2768', '社旗县', '252', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2769', '西峡县', '252', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2770', '邓州市', '252', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2771', '镇平县', '252', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2772', '夏邑县', '253', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2773', '宁陵县', '253', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2774', '柘城县', '253', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2775', '民权县', '253', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2776', '永城市', '253', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2777', '睢县', '253', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2778', '睢阳区', '253', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2779', '粱园区', '253', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2780', '虞城县', '253', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2781', '光山县', '254', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2782', '商城县', '254', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2783', '固始县', '254', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2784', '平桥区', '254', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2785', '息县', '254', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2786', '新县', '254', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2787', '浉河区', '254', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2788', '淮滨县', '254', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2789', '潢川县', '254', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2790', '罗山县', '254', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2791', '商水县', '255', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2792', '太康县', '255', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2793', '川汇区', '255', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2794', '扶沟县', '255', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2795', '沈丘县', '255', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2796', '淮阳县', '255', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2797', '西华县', '255', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2798', '郸城县', '255', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2799', '项城市', '255', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2800', '鹿邑县', '255', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2801', '上蔡县', '256', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2802', '平舆县', '256', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2803', '新蔡县', '256', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2804', '正阳县', '256', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2805', '汝南县', '256', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2806', '泌阳县', '256', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2807', '确山县', '256', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2808', '西平县', '256', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2809', '遂平县', '256', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2810', '驿城区', '256', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2811', '济源市', '257', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2812', '东西湖区', '258', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2813', '新洲区', '258', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2814', '武昌区', '258', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2815', '汉南区', '258', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2816', '汉阳区', '258', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2817', '江夏区', '258', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2818', '江岸区', '258', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2819', '江汉区', '258', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2820', '洪山区', '258', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2821', '硚口区', '258', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2822', '蔡甸区', '258', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2823', '青山区', '258', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2824', '黄陂区', '258', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2825', '下陆区', '259', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2826', '大冶市', '259', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2827', '西塞山区', '259', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2828', '铁山区', '259', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2829', '阳新县', '259', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2830', '黄石港区', '259', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2831', '丹江口市', '260', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2832', '张湾区', '260', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2833', '房县', '260', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2834', '竹山县', '260', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2835', '竹溪县', '260', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2836', '茅箭区', '260', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2837', '郧县', '260', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2838', '郧西县', '260', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2839', '五峰土家族自治县', '261', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2840', '伍家岗区', '261', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2841', '兴山县', '261', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2842', '夷陵区', '261', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2843', '宜都市', '261', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2844', '当阳市', '261', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2845', '枝江市', '261', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2846', '点军区', '261', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2847', '秭归县', '261', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2848', '虢亭区', '261', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2849', '西陵区', '261', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2850', '远安县', '261', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2851', '长阳土家族自治县', '261', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2852', '保康县', '262', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2853', '南漳县', '262', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2854', '宜城市', '262', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2855', '枣阳市', '262', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2856', '樊城区', '262', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2857', '老河口市', '262', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2858', '襄城区', '262', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2859', '襄阳区', '262', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2860', '谷城县', '262', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2861', '华容区', '263', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2862', '粱子湖', '263', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2863', '鄂城区', '263', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2864', '东宝区', '264', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2865', '京山县', '264', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2866', '掇刀区', '264', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2867', '沙洋县', '264', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2868', '钟祥市', '264', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2869', '云梦县', '265', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2870', '大悟县', '265', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2871', '孝南区', '265', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2872', '孝昌县', '265', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2873', '安陆市', '265', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2874', '应城市', '265', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2875', '汉川市', '265', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2876', '公安县', '266', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2877', '松滋市', '266', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2878', '江陵县', '266', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2879', '沙市区', '266', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2880', '洪湖市', '266', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2881', '监利县', '266', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2882', '石首市', '266', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2883', '荆州区', '266', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2884', '团风县', '267', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2885', '武穴市', '267', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2886', '浠水县', '267', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2887', '红安县', '267', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2888', '罗田县', '267', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2889', '英山县', '267', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2890', '蕲春县', '267', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2891', '麻城市', '267', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2892', '黄州区', '267', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2893', '黄梅县', '267', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2894', '咸安区', '268', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2895', '嘉鱼县', '268', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2896', '崇阳县', '268', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2897', '赤壁市', '268', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2898', '通城县', '268', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2899', '通山县', '268', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2900', '广水市', '269', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2901', '曾都区', '269', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2902', '利川市', '270', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2903', '咸丰县', '270', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2904', '宣恩县', '270', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2905', '巴东县', '270', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2906', '建始县', '270', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2907', '恩施市', '270', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2908', '来凤县', '270', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2909', '鹤峰县', '270', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2910', '仙桃市', '271', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2911', '潜江市', '272', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2912', '天门市', '273', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2913', '神农架林区', '274', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2914', '天心区', '275', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2915', '宁乡县', '275', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2916', '岳麓区', '275', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2917', '开福区', '275', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2918', '望城县', '275', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2919', '浏阳市', '275', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2920', '芙蓉区', '275', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2921', '长沙县', '275', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2922', '雨花区', '275', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2923', '天元区', '276', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2924', '攸县', '276', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2925', '株洲县', '276', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2926', '炎陵县', '276', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2927', '石峰区', '276', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2928', '芦淞区', '276', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2929', '茶陵县', '276', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2930', '荷塘区', '276', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2931', '醴陵市', '276', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2932', '岳塘区', '277', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2933', '湘乡市', '277', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2934', '湘潭县', '277', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2935', '雨湖区', '277', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2936', '韶山市', '277', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2937', '南岳区', '278', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2938', '常宁市', '278', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2939', '珠晖区', '278', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2940', '石鼓区', '278', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2941', '祁东县', '278', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2942', '耒阳市', '278', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2943', '蒸湘区', '278', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2944', '衡东县', '278', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2945', '衡南县', '278', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2946', '衡山县', '278', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2947', '衡阳县', '278', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2948', '雁峰区', '278', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2949', '北塔区', '279', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2950', '双清区', '279', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2951', '城步苗族自治县', '279', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2952', '大祥区', '279', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2953', '新宁县', '279', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2954', '新邵县', '279', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2955', '武冈市', '279', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2956', '洞口县', '279', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2957', '绥宁县', '279', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2958', '邵东县', '279', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2959', '邵阳县', '279', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2960', '隆回县', '279', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2961', '临湘市', '280', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2962', '云溪区', '280', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2963', '华容县', '280', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2964', '君山区', '280', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2965', '岳阳县', '280', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2966', '岳阳楼区', '280', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2967', '平江县', '280', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2968', '汨罗市', '280', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2969', '湘阴县', '280', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2970', '临澧县', '281', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2971', '安乡县', '281', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2972', '桃源县', '281', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2973', '武陵区', '281', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2974', '汉寿县', '281', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2975', '津市市', '281', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2976', '澧县', '281', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2977', '石门县', '281', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2978', '鼎城区', '281', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2979', '慈利县', '282', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2980', '桑植县', '282', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2981', '武陵源区', '282', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2982', '永定区', '282', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2983', '南县', '283', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2984', '安化县', '283', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2985', '桃江县', '283', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2986', '沅江市', '283', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2987', '资阳区', '283', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2988', '赫山区', '283', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2989', '临武县', '284', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2990', '北湖区', '284', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2991', '嘉禾县', '284', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2992', '安仁县', '284', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2993', '宜章县', '284', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2994', '桂东县', '284', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2995', '桂阳县', '284', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2996', '永兴县', '284', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2997', '汝城县', '284', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2998', '苏仙区', '284', '0', '3', null);
INSERT INTO `sp_area` VALUES ('2999', '资兴市', '284', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3000', '东安县', '285', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3001', '冷水滩区', '285', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3002', '双牌县', '285', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3003', '宁远县', '285', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3004', '新田县', '285', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3005', '江华瑶族自治县', '285', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3006', '江永县', '285', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3007', '祁阳县', '285', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3008', '蓝山县', '285', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3009', '道县', '285', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3010', '零陵区', '285', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3011', '中方县', '286', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3012', '会同县', '286', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3013', '新晃侗族自治县', '286', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3014', '沅陵县', '286', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3015', '洪江市/洪江区', '286', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3016', '溆浦县', '286', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3017', '芷江侗族自治县', '286', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3018', '辰溪县', '286', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3019', '通道侗族自治县', '286', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3020', '靖州苗族侗族自治县', '286', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3021', '鹤城区', '286', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3022', '麻阳苗族自治县', '286', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3023', '冷水江市', '287', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3024', '双峰县', '287', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3025', '娄星区', '287', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3026', '新化县', '287', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3027', '涟源市', '287', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3028', '保靖县', '288', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3029', '凤凰县', '288', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3030', '古丈县', '288', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3031', '吉首市', '288', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3032', '永顺县', '288', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3033', '泸溪县', '288', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3034', '花垣县', '288', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3035', '龙山县', '288', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3036', '萝岗区', '289', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3037', '南沙区', '289', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3038', '从化市', '289', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3039', '增城市', '289', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3040', '天河区', '289', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3041', '海珠区', '289', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3042', '番禺区', '289', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3043', '白云区', '289', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3044', '花都区', '289', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3045', '荔湾区', '289', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3046', '越秀区', '289', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3047', '黄埔区', '289', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3048', '乐昌市', '290', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3049', '乳源瑶族自治县', '290', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3050', '仁化县', '290', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3051', '南雄市', '290', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3052', '始兴县', '290', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3053', '新丰县', '290', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3054', '曲江区', '290', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3055', '武江区', '290', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3056', '浈江区', '290', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3057', '翁源县', '290', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3058', '南山区', '291', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3059', '宝安区', '291', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3060', '盐田区', '291', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3061', '福田区', '291', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3062', '罗湖区', '291', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3063', '龙岗区', '291', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3064', '斗门区', '292', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3065', '金湾区', '292', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3066', '香洲区', '292', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3067', '南澳县', '293', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3068', '潮南区', '293', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3069', '潮阳区', '293', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3070', '澄海区', '293', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3071', '濠江区', '293', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3072', '金平区', '293', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3073', '龙湖区', '293', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3074', '三水区', '294', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3075', '南海区', '294', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3076', '禅城区', '294', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3077', '顺德区', '294', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3078', '高明区', '294', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3079', '台山市', '295', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3080', '开平市', '295', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3081', '恩平市', '295', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3082', '新会区', '295', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3083', '江海区', '295', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3084', '蓬江区', '295', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3085', '鹤山市', '295', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3086', '吴川市', '296', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3087', '坡头区', '296', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3088', '廉江市', '296', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3089', '徐闻县', '296', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3090', '赤坎区', '296', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3091', '遂溪县', '296', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3092', '雷州市', '296', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3093', '霞山区', '296', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3094', '麻章区', '296', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3095', '信宜市', '297', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3096', '化州市', '297', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3097', '电白县', '297', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3098', '茂南区', '297', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3099', '茂港区', '297', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3100', '高州市', '297', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3101', '四会市', '298', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3102', '封开县', '298', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3103', '广宁县', '298', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3104', '德庆县', '298', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3105', '怀集县', '298', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3106', '端州区', '298', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3107', '高要市', '298', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3108', '鼎湖区', '298', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3109', '博罗县', '299', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3110', '惠东县', '299', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3111', '惠城区', '299', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3112', '惠阳区', '299', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3113', '龙门县', '299', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3114', '丰顺县', '300', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3115', '五华县', '300', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3116', '兴宁市', '300', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3117', '大埔县', '300', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3118', '平远县', '300', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3119', '梅县', '300', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3120', '梅江区', '300', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3121', '蕉岭县', '300', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3122', '城区', '301', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3123', '海丰县', '301', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3124', '陆丰市', '301', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3125', '陆河县', '301', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3126', '东源县', '302', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3127', '和平县', '302', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3128', '源城区', '302', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3129', '紫金县', '302', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3130', '连平县', '302', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3131', '龙川县', '302', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3132', '江城区', '303', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3133', '阳东县', '303', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3134', '阳春市', '303', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3135', '阳西县', '303', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3136', '佛冈县', '304', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3137', '清城区', '304', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3138', '清新县', '304', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3139', '英德市', '304', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3140', '连南瑶族自治县', '304', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3141', '连山壮族瑶族自治县', '304', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3142', '连州市', '304', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3143', '阳山县', '304', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3144', '东莞市', '305', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3145', '中山市', '306', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3146', '湘桥区', '307', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3147', '潮安县', '307', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3148', '饶平县', '307', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3149', '惠来县', '308', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3150', '揭东县', '308', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3151', '揭西县', '308', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3152', '普宁市', '308', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3153', '榕城区', '308', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3154', '云城区', '309', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3155', '云安县', '309', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3156', '新兴县', '309', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3157', '罗定市', '309', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3158', '郁南县', '309', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3159', '上林县', '310', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3160', '兴宁区', '310', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3161', '宾阳县', '310', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3162', '横县', '310', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3163', '武鸣县', '310', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3164', '江南区', '310', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3165', '良庆区', '310', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3166', '西乡塘区', '310', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3167', '邕宁区', '310', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3168', '隆安县', '310', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3169', '青秀区', '310', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3170', '马山县', '310', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3171', '三江侗族自治县', '311', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3172', '城中区', '311', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3173', '柳北区', '311', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3174', '柳南区', '311', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3175', '柳城县', '311', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3176', '柳江县', '311', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3177', '融安县', '311', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3178', '融水苗族自治县', '311', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3179', '鱼峰区', '311', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3180', '鹿寨县', '311', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3181', '七星区', '312', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3182', '临桂县', '312', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3183', '全州县', '312', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3184', '兴安县', '312', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3185', '叠彩区', '312', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3186', '平乐县', '312', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3187', '恭城瑶族自治县', '312', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3188', '永福县', '312', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3189', '灌阳县', '312', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3190', '灵川县', '312', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3191', '秀峰区', '312', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3192', '荔浦县', '312', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3193', '象山区', '312', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3194', '资源县', '312', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3195', '阳朔县', '312', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3196', '雁山区', '312', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3197', '龙胜各族自治县', '312', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3198', '万秀区', '313', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3199', '岑溪市', '313', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3200', '苍梧县', '313', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3201', '蒙山县', '313', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3202', '藤县', '313', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3203', '蝶山区', '313', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3204', '长洲区', '313', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3205', '合浦县', '314', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3206', '海城区', '314', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3207', '铁山港区', '314', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3208', '银海区', '314', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3209', '上思县', '315', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3210', '东兴市', '315', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3211', '港口区', '315', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3212', '防城区', '315', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3213', '浦北县', '316', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3214', '灵山县', '316', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3215', '钦北区', '316', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3216', '钦南区', '316', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3217', '平南县', '317', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3218', '桂平市', '317', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3219', '港北区', '317', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3220', '港南区', '317', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3221', '覃塘区', '317', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3222', '兴业县', '318', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3223', '北流市', '318', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3224', '博白县', '318', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3225', '容县', '318', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3226', '玉州区', '318', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3227', '陆川县', '318', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3228', '乐业县', '319', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3229', '凌云县', '319', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3230', '右江区', '319', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3231', '平果县', '319', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3232', '德保县', '319', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3233', '田东县', '319', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3234', '田林县', '319', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3235', '田阳县', '319', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3236', '西林县', '319', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3237', '那坡县', '319', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3238', '隆林各族自治县', '319', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3239', '靖西县', '319', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3240', '八步区', '320', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3241', '富川瑶族自治县', '320', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3242', '昭平县', '320', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3243', '钟山县', '320', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3244', '东兰县', '321', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3245', '凤山县', '321', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3246', '南丹县', '321', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3247', '大化瑶族自治县', '321', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3248', '天峨县', '321', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3249', '宜州市', '321', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3250', '巴马瑶族自治县', '321', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3251', '环江毛南族自治县', '321', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3252', '罗城仫佬族自治县', '321', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3253', '都安瑶族自治县', '321', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3254', '金城江区', '321', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3255', '兴宾区', '322', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3256', '合山市', '322', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3257', '忻城县', '322', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3258', '武宣县', '322', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3259', '象州县', '322', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3260', '金秀瑶族自治县', '322', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3261', '凭祥市', '323', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3262', '大新县', '323', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3263', '天等县', '323', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3264', '宁明县', '323', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3265', '扶绥县', '323', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3266', '江州区', '323', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3267', '龙州县', '323', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3268', '琼山区', '324', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3269', '秀英区', '324', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3270', '美兰区', '324', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3271', '龙华区', '324', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3272', '三亚市', '325', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3273', '五指山市', '326', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3274', '琼海市', '327', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3275', '儋州市', '328', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3276', '文昌市', '329', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3277', '万宁市', '330', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3278', '东方市', '331', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3279', '定安县', '332', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3280', '屯昌县', '333', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3281', '澄迈县', '334', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3282', '临高县', '335', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3283', '白沙黎族自治县', '336', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3284', '昌江黎族自治县', '337', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3285', '乐东黎族自治县', '338', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3286', '陵水黎族自治县', '339', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3287', '保亭黎族苗族自治县', '340', '0', '3', null);
INSERT INTO `sp_area` VALUES ('3288', '琼中黎族苗族自治县', '341', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4209', '双流县', '385', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4210', '大邑县', '385', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4211', '崇州市', '385', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4212', '彭州市', '385', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4213', '成华区', '385', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4214', '新津县', '385', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4215', '新都区', '385', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4216', '武侯区', '385', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4217', '温江区', '385', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4218', '蒲江县', '385', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4219', '邛崃市', '385', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4220', '郫县', '385', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4221', '都江堰市', '385', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4222', '金堂县', '385', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4223', '金牛区', '385', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4224', '锦江区', '385', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4225', '青白江区', '385', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4226', '青羊区', '385', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4227', '龙泉驿区', '385', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4228', '大安区', '386', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4229', '富顺县', '386', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4230', '沿滩区', '386', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4231', '自流井区', '386', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4232', '荣县', '386', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4233', '贡井区', '386', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4234', '东区', '387', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4235', '仁和区', '387', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4236', '盐边县', '387', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4237', '米易县', '387', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4238', '西区', '387', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4239', '叙永县', '388', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4240', '古蔺县', '388', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4241', '合江县', '388', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4242', '江阳区', '388', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4243', '泸县', '388', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4244', '纳溪区', '388', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4245', '龙马潭区', '388', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4246', '中江县', '389', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4247', '什邡市', '389', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4248', '广汉市', '389', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4249', '旌阳区', '389', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4250', '绵竹市', '389', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4251', '罗江县', '389', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4252', '三台县', '390', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4253', '北川羌族自治县', '390', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4254', '安县', '390', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4255', '平武县', '390', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4256', '梓潼县', '390', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4257', '江油市', '390', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4258', '涪城区', '390', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4259', '游仙区', '390', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4260', '盐亭县', '390', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4261', '元坝区', '391', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4262', '利州区', '391', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4263', '剑阁县', '391', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4264', '旺苍县', '391', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4265', '朝天区', '391', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4266', '苍溪县', '391', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4267', '青川县', '391', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4268', '大英县', '392', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4269', '安居区', '392', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4270', '射洪县', '392', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4271', '船山区', '392', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4272', '蓬溪县', '392', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4273', '东兴区', '393', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4274', '威远县', '393', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4275', '市中区', '393', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4276', '资中县', '393', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4277', '隆昌县', '393', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4278', '五通桥区', '394', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4279', '井研县', '394', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4280', '夹江县', '394', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4281', '峨眉山市', '394', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4282', '峨边彝族自治县', '394', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4283', '市中区', '394', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4284', '沐川县', '394', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4285', '沙湾区', '394', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4286', '犍为县', '394', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4287', '金口河区', '394', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4288', '马边彝族自治县', '394', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4289', '仪陇县', '395', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4290', '南充市嘉陵区', '395', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4291', '南部县', '395', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4292', '嘉陵区', '395', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4293', '营山县', '395', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4294', '蓬安县', '395', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4295', '西充县', '395', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4296', '阆中市', '395', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4297', '顺庆区', '395', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4298', '高坪区', '395', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4299', '东坡区', '396', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4300', '丹棱县', '396', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4301', '仁寿县', '396', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4302', '彭山县', '396', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4303', '洪雅县', '396', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4304', '青神县', '396', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4305', '兴文县', '397', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4306', '南溪县', '397', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4307', '宜宾县', '397', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4308', '屏山县', '397', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4309', '江安县', '397', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4310', '珙县', '397', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4311', '筠连县', '397', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4312', '翠屏区', '397', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4313', '长宁县', '397', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4314', '高县', '397', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4315', '华蓥市', '398', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4316', '岳池县', '398', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4317', '广安区', '398', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4318', '武胜县', '398', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4319', '邻水县', '398', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4320', '万源市', '399', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4321', '大竹县', '399', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4322', '宣汉县', '399', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4323', '开江县', '399', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4324', '渠县', '399', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4325', '达县', '399', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4326', '通川区', '399', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4327', '名山县', '400', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4328', '天全县', '400', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4329', '宝兴县', '400', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4330', '汉源县', '400', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4331', '石棉县', '400', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4332', '芦山县', '400', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4333', '荥经县', '400', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4334', '雨城区', '400', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4335', '南江县', '401', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4336', '巴州区', '401', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4337', '平昌县', '401', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4338', '通江县', '401', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4339', '乐至县', '402', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4340', '安岳县', '402', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4341', '简阳市', '402', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4342', '雁江区', '402', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4343', '九寨沟县', '403', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4344', '壤塘县', '403', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4345', '小金县', '403', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4346', '松潘县', '403', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4347', '汶川县', '403', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4348', '理县', '403', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4349', '红原县', '403', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4350', '若尔盖县', '403', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4351', '茂县', '403', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4352', '金川县', '403', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4353', '阿坝县', '403', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4354', '马尔康县', '403', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4355', '黑水县', '403', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4356', '丹巴县', '404', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4357', '乡城县', '404', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4358', '巴塘县', '404', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4359', '康定县', '404', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4360', '得荣县', '404', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4361', '德格县', '404', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4362', '新龙县', '404', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4363', '泸定县', '404', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4364', '炉霍县', '404', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4365', '理塘县', '404', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4366', '甘孜县', '404', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4367', '白玉县', '404', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4368', '石渠县', '404', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4369', '稻城县', '404', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4370', '色达县', '404', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4371', '道孚县', '404', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4372', '雅江县', '404', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4373', '会东县', '405', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4374', '会理县', '405', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4375', '冕宁县', '405', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4376', '喜德县', '405', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4377', '宁南县', '405', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4378', '布拖县', '405', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4379', '德昌县', '405', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4380', '昭觉县', '405', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4381', '普格县', '405', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4382', '木里藏族自治县', '405', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4383', '甘洛县', '405', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4384', '盐源县', '405', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4385', '美姑县', '405', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4386', '西昌', '405', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4387', '越西县', '405', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4388', '金阳县', '405', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4389', '雷波县', '405', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4390', '乌当区', '406', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4391', '云岩区', '406', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4392', '修文县', '406', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4393', '南明区', '406', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4394', '小河区', '406', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4395', '开阳县', '406', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4396', '息烽县', '406', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4397', '清镇市', '406', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4398', '白云区', '406', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4399', '花溪区', '406', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4400', '六枝特区', '407', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4401', '水城县', '407', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4402', '盘县', '407', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4403', '钟山区', '407', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4404', '习水县', '408', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4405', '仁怀市', '408', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4406', '余庆县', '408', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4407', '凤冈县', '408', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4408', '务川仡佬族苗族自治县', '408', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4409', '桐梓县', '408', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4410', '正安县', '408', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4411', '汇川区', '408', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4412', '湄潭县', '408', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4413', '红花岗区', '408', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4414', '绥阳县', '408', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4415', '赤水市', '408', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4416', '道真仡佬族苗族自治县', '408', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4417', '遵义县', '408', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4418', '关岭布依族苗族自治县', '409', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4419', '平坝县', '409', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4420', '普定县', '409', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4421', '紫云苗族布依族自治县', '409', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4422', '西秀区', '409', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4423', '镇宁布依族苗族自治县', '409', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4424', '万山特区', '410', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4425', '印江土家族苗族自治县', '410', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4426', '德江县', '410', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4427', '思南县', '410', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4428', '松桃苗族自治县', '410', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4429', '江口县', '410', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4430', '沿河土家族自治县', '410', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4431', '玉屏侗族自治县', '410', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4432', '石阡县', '410', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4433', '铜仁市', '410', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4434', '兴义市', '411', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4435', '兴仁县', '411', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4436', '册亨县', '411', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4437', '安龙县', '411', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4438', '普安县', '411', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4439', '晴隆县', '411', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4440', '望谟县', '411', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4441', '贞丰县', '411', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4442', '大方县', '412', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4443', '威宁彝族回族苗族自治县', '412', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4444', '毕节市', '412', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4445', '纳雍县', '412', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4446', '织金县', '412', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4447', '赫章县', '412', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4448', '金沙县', '412', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4449', '黔西县', '412', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4450', '三穗县', '413', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4451', '丹寨县', '413', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4452', '从江县', '413', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4453', '凯里市', '413', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4454', '剑河县', '413', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4455', '台江县', '413', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4456', '天柱县', '413', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4457', '岑巩县', '413', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4458', '施秉县', '413', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4459', '榕江县', '413', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4460', '锦屏县', '413', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4461', '镇远县', '413', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4462', '雷山县', '413', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4463', '麻江县', '413', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4464', '黄平县', '413', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4465', '黎平县', '413', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4466', '三都水族自治县', '414', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4467', '平塘县', '414', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4468', '惠水县', '414', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4469', '独山县', '414', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4470', '瓮安县', '414', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4471', '福泉市', '414', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4472', '罗甸县', '414', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4473', '荔波县', '414', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4474', '贵定县', '414', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4475', '都匀市', '414', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4476', '长顺县', '414', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4477', '龙里县', '414', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4478', '东川区', '415', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4479', '五华区', '415', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4480', '呈贡县', '415', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4481', '安宁市', '415', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4482', '官渡区', '415', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4483', '宜良县', '415', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4484', '富民县', '415', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4485', '寻甸回族彝族自治县', '415', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4486', '嵩明县', '415', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4487', '晋宁县', '415', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4488', '盘龙区', '415', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4489', '石林彝族自治县', '415', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4490', '禄劝彝族苗族自治县', '415', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4491', '西山区', '415', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4492', '会泽县', '416', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4493', '宣威市', '416', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4494', '富源县', '416', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4495', '师宗县', '416', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4496', '沾益县', '416', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4497', '罗平县', '416', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4498', '陆良县', '416', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4499', '马龙县', '416', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4500', '麒麟区', '416', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4501', '元江哈尼族彝族傣族自治县', '417', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4502', '华宁县', '417', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4503', '峨山彝族自治县', '417', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4504', '新平彝族傣族自治县', '417', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4505', '易门县', '417', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4506', '江川县', '417', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4507', '澄江县', '417', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4508', '红塔区', '417', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4509', '通海县', '417', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4510', '施甸县', '418', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4511', '昌宁县', '418', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4512', '腾冲县', '418', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4513', '隆阳区', '418', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4514', '龙陵县', '418', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4515', '大关县', '419', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4516', '威信县', '419', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4517', '巧家县', '419', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4518', '彝良县', '419', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4519', '昭阳区', '419', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4520', '水富县', '419', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4521', '永善县', '419', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4522', '盐津县', '419', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4523', '绥江县', '419', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4524', '镇雄县', '419', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4525', '鲁甸县', '419', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4526', '华坪县', '420', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4527', '古城区', '420', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4528', '宁蒗彝族自治县', '420', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4529', '永胜县', '420', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4530', '玉龙纳西族自治县', '420', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4531', '临翔区', '422', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4532', '云县', '422', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4533', '凤庆县', '422', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4534', '双江拉祜族佤族布朗族傣族自治县', '422', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4535', '永德县', '422', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4536', '沧源佤族自治县', '422', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4537', '耿马傣族佤族自治县', '422', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4538', '镇康县', '422', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4539', '元谋县', '423', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4540', '南华县', '423', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4541', '双柏县', '423', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4542', '大姚县', '423', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4543', '姚安县', '423', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4544', '楚雄市', '423', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4545', '武定县', '423', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4546', '永仁县', '423', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4547', '牟定县', '423', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4548', '禄丰县', '423', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4549', '个旧市', '424', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4550', '元阳县', '424', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4551', '屏边苗族自治县', '424', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4552', '建水县', '424', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4553', '开远市', '424', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4554', '弥勒县', '424', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4555', '河口瑶族自治县', '424', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4556', '泸西县', '424', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4557', '石屏县', '424', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4558', '红河县', '424', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4559', '绿春县', '424', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4560', '蒙自县', '424', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4561', '金平苗族瑶族傣族自治县', '424', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4562', '丘北县', '425', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4563', '富宁县', '425', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4564', '广南县', '425', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4565', '文山县', '425', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4566', '砚山县', '425', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4567', '西畴县', '425', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4568', '马关县', '425', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4569', '麻栗坡县', '425', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4570', '勐海县', '426', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4571', '勐腊县', '426', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4572', '景洪市', '426', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4573', '云龙县', '427', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4574', '剑川县', '427', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4575', '南涧彝族自治县', '427', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4576', '大理市', '427', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4577', '宾川县', '427', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4578', '巍山彝族回族自治县', '427', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4579', '弥渡县', '427', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4580', '永平县', '427', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4581', '洱源县', '427', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4582', '漾濞彝族自治县', '427', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4583', '祥云县', '427', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4584', '鹤庆县', '427', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4585', '梁河县', '428', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4586', '潞西市', '428', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4587', '瑞丽市', '428', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4588', '盈江县', '428', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4589', '陇川县', '428', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4590', '德钦县', '430', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4591', '维西傈僳族自治县', '430', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4592', '香格里拉县', '430', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4593', '城关区', '431', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4594', '堆龙德庆县', '431', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4595', '墨竹工卡县', '431', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4596', '尼木县', '431', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4597', '当雄县', '431', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4598', '曲水县', '431', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4599', '林周县', '431', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4600', '达孜县', '431', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4601', '丁青县', '432', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4602', '八宿县', '432', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4603', '察雅县', '432', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4604', '左贡县', '432', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4605', '昌都县', '432', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4606', '江达县', '432', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4607', '洛隆县', '432', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4608', '类乌齐县', '432', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4609', '芒康县', '432', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4610', '贡觉县', '432', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4611', '边坝县', '432', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4612', '乃东县', '433', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4613', '加查县', '433', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4614', '扎囊县', '433', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4615', '措美县', '433', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4616', '曲松县', '433', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4617', '桑日县', '433', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4618', '洛扎县', '433', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4619', '浪卡子县', '433', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4620', '琼结县', '433', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4621', '贡嘎县', '433', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4622', '错那县', '433', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4623', '隆子县', '433', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4624', '亚东县', '434', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4625', '仁布县', '434', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4626', '仲巴县', '434', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4627', '南木林县', '434', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4628', '吉隆县', '434', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4629', '定日县', '434', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4630', '定结县', '434', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4631', '岗巴县', '434', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4632', '康马县', '434', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4633', '拉孜县', '434', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4634', '日喀则市', '434', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4635', '昂仁县', '434', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4636', '江孜县', '434', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4637', '白朗县', '434', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4638', '聂拉木县', '434', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4639', '萨嘎县', '434', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4640', '萨迦县', '434', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4641', '谢通门县', '434', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4642', '嘉黎县', '435', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4643', '安多县', '435', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4644', '尼玛县', '435', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4645', '巴青县', '435', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4646', '比如县', '435', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4647', '班戈县', '435', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4648', '申扎县', '435', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4649', '索县', '435', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4650', '聂荣县', '435', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4651', '那曲县', '435', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4652', '噶尔县', '436', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4653', '措勤县', '436', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4654', '改则县', '436', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4655', '日土县', '436', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4656', '普兰县', '436', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4657', '札达县', '436', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4658', '革吉县', '436', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4659', '墨脱县', '437', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4660', '察隅县', '437', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4661', '工布江达县', '437', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4662', '朗县', '437', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4663', '林芝县', '437', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4664', '波密县', '437', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4665', '米林县', '437', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4666', '临潼区', '438', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4667', '周至县', '438', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4668', '户县', '438', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4669', '新城区', '438', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4670', '未央区', '438', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4671', '灞桥区', '438', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4672', '碑林区', '438', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4673', '莲湖区', '438', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4674', '蓝田县', '438', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4675', '长安区', '438', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4676', '阎良区', '438', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4677', '雁塔区', '438', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4678', '高陵县', '438', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4679', '印台区', '439', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4680', '宜君县', '439', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4681', '王益区', '439', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4682', '耀州区', '439', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4683', '凤县', '440', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4684', '凤翔县', '440', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4685', '千阳县', '440', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4686', '太白县', '440', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4687', '岐山县', '440', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4688', '扶风县', '440', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4689', '渭滨区', '440', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4690', '眉县', '440', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4691', '金台区', '440', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4692', '陇县', '440', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4693', '陈仓区', '440', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4694', '麟游县', '440', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4695', '三原县', '441', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4696', '干县', '441', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4697', '兴平市', '441', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4698', '彬县', '441', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4699', '旬邑县', '441', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4700', '杨陵区', '441', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4701', '武功县', '441', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4702', '永寿县', '441', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4703', '泾阳县', '441', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4704', '淳化县', '441', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4705', '渭城区', '441', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4706', '礼泉县', '441', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4707', '秦都区', '441', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4708', '长武县', '441', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4709', '临渭区', '442', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4710', '华县', '442', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4711', '华阴市', '442', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4712', '合阳县', '442', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4713', '大荔县', '442', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4714', '富平县', '442', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4715', '潼关县', '442', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4716', '澄城县', '442', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4717', '白水县', '442', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4718', '蒲城县', '442', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4719', '韩城市', '442', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4720', '吴起县', '443', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4721', '子长县', '443', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4722', '安塞县', '443', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4723', '宜川县', '443', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4724', '宝塔区', '443', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4725', '富县', '443', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4726', '延川县', '443', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4727', '延长县', '443', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4728', '志丹县', '443', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4729', '洛川县', '443', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4730', '甘泉县', '443', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4731', '黄陵县', '443', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4732', '黄龙县', '443', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4733', '佛坪县', '444', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4734', '勉县', '444', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4735', '南郑县', '444', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4736', '城固县', '444', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4737', '宁强县', '444', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4738', '汉台区', '444', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4739', '洋县', '444', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4740', '留坝县', '444', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4741', '略阳县', '444', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4742', '西乡县', '444', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4743', '镇巴县', '444', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4744', '佳县', '445', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4745', '吴堡县', '445', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4746', '子洲县', '445', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4747', '定边县', '445', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4748', '府谷县', '445', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4749', '榆林市榆阳区', '445', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4750', '横山县', '445', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4751', '清涧县', '445', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4752', '神木县', '445', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4753', '米脂县', '445', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4754', '绥德县', '445', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4755', '靖边县', '445', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4756', '宁陕县', '446', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4757', '岚皋县', '446', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4758', '平利县', '446', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4759', '旬阳县', '446', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4760', '汉滨区', '446', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4761', '汉阴县', '446', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4762', '白河县', '446', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4763', '石泉县', '446', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4764', '紫阳县', '446', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4765', '镇坪县', '446', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4766', '丹凤县', '447', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4767', '商南县', '447', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4768', '商州区', '447', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4769', '山阳县', '447', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4770', '柞水县', '447', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4771', '洛南县', '447', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4772', '镇安县', '447', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4773', '七里河区', '448', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4774', '城关区', '448', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4775', '安宁区', '448', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4776', '榆中县', '448', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4777', '永登县', '448', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4778', '皋兰县', '448', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4779', '红古区', '448', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4780', '西固区', '448', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4781', '嘉峪关市', '449', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4782', '永昌县', '450', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4783', '金川区', '450', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4784', '会宁县', '451', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4785', '平川区', '451', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4786', '景泰县', '451', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4787', '白银区', '451', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4788', '靖远县', '451', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4789', '张家川回族自治县', '452', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4790', '武山县', '452', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4791', '清水县', '452', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4792', '甘谷县', '452', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4793', '秦安县', '452', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4794', '秦州区', '452', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4795', '麦积区', '452', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4796', '凉州区', '453', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4797', '古浪县', '453', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4798', '天祝藏族自治县', '453', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4799', '民勤县', '453', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4800', '临泽县', '454', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4801', '山丹县', '454', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4802', '民乐县', '454', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4803', '甘州区', '454', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4804', '肃南裕固族自治县', '454', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4805', '高台县', '454', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4806', '华亭县', '455', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4807', '崆峒区', '455', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4808', '崇信县', '455', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4809', '庄浪县', '455', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4810', '泾川县', '455', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4811', '灵台县', '455', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4812', '静宁县', '455', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4813', '敦煌市', '456', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4814', '玉门市', '456', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4815', '瓜州县（原安西县）', '456', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4816', '肃北蒙古族自治县', '456', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4817', '肃州区', '456', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4818', '金塔县', '456', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4819', '阿克塞哈萨克族自治县', '456', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4820', '华池县', '457', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4821', '合水县', '457', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4822', '宁县', '457', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4823', '庆城县', '457', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4824', '正宁县', '457', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4825', '环县', '457', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4826', '西峰区', '457', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4827', '镇原县', '457', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4828', '临洮县', '458', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4829', '安定区', '458', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4830', '岷县', '458', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4831', '渭源县', '458', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4832', '漳县', '458', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4833', '通渭县', '458', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4834', '陇西县', '458', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4835', '两当县', '459', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4836', '宕昌县', '459', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4837', '康县', '459', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4838', '徽县', '459', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4839', '成县', '459', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4840', '文县', '459', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4841', '武都区', '459', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4842', '礼县', '459', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4843', '西和县', '459', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4844', '东乡族自治县', '460', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4845', '临夏县', '460', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4846', '临夏市', '460', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4847', '和政县', '460', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4848', '广河县', '460', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4849', '康乐县', '460', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4850', '永靖县', '460', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4851', '积石山保安族东乡族撒拉族自治县', '460', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4852', '临潭县', '461', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4853', '卓尼县', '461', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4854', '合作市', '461', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4855', '夏河县', '461', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4856', '玛曲县', '461', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4857', '碌曲县', '461', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4858', '舟曲县', '461', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4859', '迭部县', '461', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4860', '城东区', '462', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4861', '城中区', '462', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4862', '城北区', '462', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4863', '城西区', '462', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4864', '大通回族土族自治县', '462', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4865', '湟中县', '462', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4866', '湟源县', '462', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4867', '乐都县', '463', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4868', '互助土族自治县', '463', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4869', '化隆回族自治县', '463', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4870', '平安县', '463', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4871', '循化撒拉族自治县', '463', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4872', '民和回族土族自治县', '463', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4873', '刚察县', '464', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4874', '海晏县', '464', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4875', '祁连县', '464', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4876', '门源回族自治县', '464', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4877', '同仁县', '465', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4878', '尖扎县', '465', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4879', '河南蒙古族自治县', '465', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4880', '泽库县', '465', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4881', '共和县', '466', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4882', '兴海县', '466', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4883', '同德县', '466', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4884', '贵南县', '466', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4885', '贵德县', '466', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4886', '久治县', '467', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4887', '玛多县', '467', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4888', '玛沁县', '467', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4889', '班玛县', '467', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4890', '甘德县', '467', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4891', '达日县', '467', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4892', '囊谦县', '468', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4893', '曲麻莱县', '468', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4894', '杂多县', '468', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4895', '治多县', '468', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4896', '玉树县', '468', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4897', '称多县', '468', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4898', '乌兰县', '469', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4899', '冷湖行委', '469', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4900', '大柴旦行委', '469', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4901', '天峻县', '469', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4902', '德令哈市', '469', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4903', '格尔木市', '469', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4904', '茫崖行委', '469', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4905', '都兰县', '469', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4906', '兴庆区', '470', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4907', '永宁县', '470', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4908', '灵武市', '470', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4909', '西夏区', '470', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4910', '贺兰县', '470', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4911', '金凤区', '470', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4912', '大武口区', '471', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4913', '平罗县', '471', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4914', '惠农区', '471', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4915', '利通区', '472', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4916', '同心县', '472', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4917', '盐池县', '472', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4918', '青铜峡市', '472', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4919', '原州区', '473', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4920', '彭阳县', '473', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4921', '泾源县', '473', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4922', '西吉县', '473', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4923', '隆德县', '473', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4924', '中宁县', '474', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4925', '沙坡头区', '474', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4926', '海原县', '474', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4927', '东山区', '475', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4928', '乌鲁木齐县', '475', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4929', '天山区', '475', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4930', '头屯河区', '475', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4931', '新市区', '475', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4932', '水磨沟区', '475', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4933', '沙依巴克区', '475', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4934', '达坂城区', '475', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4935', '乌尔禾区', '476', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4936', '克拉玛依区', '476', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4937', '独山子区', '476', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4938', '白碱滩区', '476', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4939', '吐鲁番市', '477', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4940', '托克逊县', '477', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4941', '鄯善县', '477', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4942', '伊吾县', '478', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4943', '哈密市', '478', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4944', '巴里坤哈萨克自治县', '478', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4945', '吉木萨尔县', '479', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4946', '呼图壁县', '479', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4947', '奇台县', '479', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4948', '昌吉市', '479', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4949', '木垒哈萨克自治县', '479', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4950', '玛纳斯县', '479', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4951', '米泉市', '479', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4952', '阜康市', '479', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4953', '博乐市', '480', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4954', '温泉县', '480', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4955', '精河县', '480', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4956', '博湖县', '481', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4957', '和硕县', '481', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4958', '和静县', '481', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4959', '尉犁县', '481', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4960', '库尔勒市', '481', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4961', '焉耆回族自治县', '481', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4962', '若羌县', '481', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4963', '轮台县', '481', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4964', '乌什县', '482', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4965', '库车县', '482', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4966', '拜城县', '482', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4967', '新和县', '482', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4968', '柯坪县', '482', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4969', '沙雅县', '482', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4970', '温宿县', '482', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4971', '阿克苏市', '482', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4972', '阿瓦提县', '482', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4973', '乌恰县', '483', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4974', '阿克陶县', '483', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4975', '阿合奇县', '483', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4976', '阿图什市', '483', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4977', '伽师县', '484', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4978', '叶城县', '484', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4979', '喀什市', '484', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4980', '塔什库尔干塔吉克自治县', '484', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4981', '岳普湖县', '484', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4982', '巴楚县', '484', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4983', '泽普县', '484', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4984', '疏勒县', '484', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4985', '疏附县', '484', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4986', '英吉沙县', '484', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4987', '莎车县', '484', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4988', '麦盖提县', '484', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4989', '于田县', '485', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4990', '和田县', '485', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4991', '和田市', '485', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4992', '墨玉县', '485', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4993', '民丰县', '485', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4994', '洛浦县', '485', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4995', '皮山县', '485', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4996', '策勒县', '485', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4997', '伊宁县', '486', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4998', '伊宁市', '486', '0', '3', null);
INSERT INTO `sp_area` VALUES ('4999', '奎屯市', '486', '0', '3', null);
INSERT INTO `sp_area` VALUES ('5000', '察布查尔锡伯自治县', '486', '0', '3', null);
INSERT INTO `sp_area` VALUES ('5001', '尼勒克县', '486', '0', '3', null);
INSERT INTO `sp_area` VALUES ('5002', '巩留县', '486', '0', '3', null);
INSERT INTO `sp_area` VALUES ('5003', '新源县', '486', '0', '3', null);
INSERT INTO `sp_area` VALUES ('5004', '昭苏县', '486', '0', '3', null);
INSERT INTO `sp_area` VALUES ('5005', '特克斯县', '486', '0', '3', null);
INSERT INTO `sp_area` VALUES ('5006', '霍城县', '486', '0', '3', null);
INSERT INTO `sp_area` VALUES ('5007', '乌苏市', '487', '0', '3', null);
INSERT INTO `sp_area` VALUES ('5008', '和布克赛尔蒙古自治县', '487', '0', '3', null);
INSERT INTO `sp_area` VALUES ('5009', '塔城市', '487', '0', '3', null);
INSERT INTO `sp_area` VALUES ('5010', '托里县', '487', '0', '3', null);
INSERT INTO `sp_area` VALUES ('5011', '沙湾县', '487', '0', '3', null);
INSERT INTO `sp_area` VALUES ('5012', '裕民县', '487', '0', '3', null);
INSERT INTO `sp_area` VALUES ('5013', '额敏县', '487', '0', '3', null);
INSERT INTO `sp_area` VALUES ('5014', '吉木乃县', '488', '0', '3', null);
INSERT INTO `sp_area` VALUES ('5015', '哈巴河县', '488', '0', '3', null);
INSERT INTO `sp_area` VALUES ('5016', '富蕴县', '488', '0', '3', null);
INSERT INTO `sp_area` VALUES ('5017', '布尔津县', '488', '0', '3', null);
INSERT INTO `sp_area` VALUES ('5018', '福海县', '488', '0', '3', null);
INSERT INTO `sp_area` VALUES ('5019', '阿勒泰市', '488', '0', '3', null);
INSERT INTO `sp_area` VALUES ('5020', '青河县', '488', '0', '3', null);
INSERT INTO `sp_area` VALUES ('5021', '石河子市', '489', '0', '3', null);
INSERT INTO `sp_area` VALUES ('5022', '阿拉尔市', '490', '0', '3', null);
INSERT INTO `sp_area` VALUES ('5023', '图木舒克市', '491', '0', '3', null);
INSERT INTO `sp_area` VALUES ('5024', '五家渠市', '492', '0', '3', null);
INSERT INTO `sp_area` VALUES ('45055', '海外', '35', '0', '2', null);

-- ----------------------------
-- Table structure for sp_attachment
-- ----------------------------
DROP TABLE IF EXISTS `sp_attachment`;
CREATE TABLE `sp_attachment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '用户ID',
  `title` char(30) NOT NULL DEFAULT '' COMMENT '附件显示名',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '附件类型',
  `source` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '资源ID',
  `record_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '关联记录ID',
  `download` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '下载次数',
  `size` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '附件大小',
  `dir` int(12) unsigned NOT NULL DEFAULT '0' COMMENT '上级目录ID',
  `sort` int(8) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`),
  KEY `idx_record_status` (`record_id`,`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='附件表';

-- ----------------------------
-- Records of sp_attachment
-- ----------------------------

-- ----------------------------
-- Table structure for sp_attribute
-- ----------------------------
DROP TABLE IF EXISTS `sp_attribute`;
CREATE TABLE `sp_attribute` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '字段名',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '字段注释',
  `field` varchar(100) NOT NULL DEFAULT '' COMMENT '字段定义',
  `type` varchar(20) NOT NULL DEFAULT '' COMMENT '数据类型',
  `value` varchar(100) NOT NULL DEFAULT '' COMMENT '字段默认值',
  `remark` varchar(100) NOT NULL DEFAULT '' COMMENT '备注',
  `is_show` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否显示',
  `extra` varchar(255) NOT NULL DEFAULT '' COMMENT '参数',
  `model_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '模型id',
  `is_must` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否必填',
  `status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '状态',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `validate_rule` varchar(255) NOT NULL,
  `validate_time` tinyint(1) unsigned NOT NULL,
  `error_info` varchar(100) NOT NULL,
  `validate_type` varchar(25) NOT NULL,
  `auto_rule` varchar(100) NOT NULL,
  `auto_time` tinyint(1) unsigned NOT NULL,
  `auto_type` varchar(25) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `model_id` (`model_id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COMMENT='模型属性表';

-- ----------------------------
-- Records of sp_attribute
-- ----------------------------
INSERT INTO `sp_attribute` VALUES ('1', 'uid', '用户ID', 'int(10) unsigned NOT NULL ', 'num', '0', '', '0', '', '1', '0', '1', '1384508362', '1383891233', '', '0', '', '', '', '0', '');
INSERT INTO `sp_attribute` VALUES ('2', 'name', '标识', 'char(40) NOT NULL ', 'string', '', '同一根节点下标识不重复', '1', '', '1', '0', '1', '1383894743', '1383891233', '', '0', '', '', '', '0', '');
INSERT INTO `sp_attribute` VALUES ('3', 'title', '标题', 'char(80) NOT NULL ', 'string', '', '文档标题', '1', '', '1', '0', '1', '1383894778', '1383891233', '', '0', '', '', '', '0', '');
INSERT INTO `sp_attribute` VALUES ('4', 'category_id', '所属分类', 'int(10) unsigned NOT NULL ', 'string', '', '', '0', '', '1', '0', '1', '1384508336', '1383891233', '', '0', '', '', '', '0', '');
INSERT INTO `sp_attribute` VALUES ('5', 'description', '描述', 'char(140) NOT NULL ', 'textarea', '', '', '1', '', '1', '0', '1', '1383894927', '1383891233', '', '0', '', '', '', '0', '');
INSERT INTO `sp_attribute` VALUES ('6', 'root', '根节点', 'int(10) unsigned NOT NULL ', 'num', '0', '该文档的顶级文档编号', '0', '', '1', '0', '1', '1384508323', '1383891233', '', '0', '', '', '', '0', '');
INSERT INTO `sp_attribute` VALUES ('7', 'pid', '所属ID', 'int(10) unsigned NOT NULL ', 'num', '0', '父文档编号', '0', '', '1', '0', '1', '1384508543', '1383891233', '', '0', '', '', '', '0', '');
INSERT INTO `sp_attribute` VALUES ('8', 'model_id', '内容模型ID', 'tinyint(3) unsigned NOT NULL ', 'num', '0', '该文档所对应的模型', '0', '', '1', '0', '1', '1384508350', '1383891233', '', '0', '', '', '', '0', '');
INSERT INTO `sp_attribute` VALUES ('9', 'type', '内容类型', 'tinyint(3) unsigned NOT NULL ', 'select', '2', '', '1', '1:目录\r\n2:主题\r\n3:段落', '1', '0', '1', '1384511157', '1383891233', '', '0', '', '', '', '0', '');
INSERT INTO `sp_attribute` VALUES ('10', 'position', '推荐位', 'smallint(5) unsigned NOT NULL ', 'checkbox', '0', '多个推荐则将其推荐值相加', '1', '1:列表推荐\r\n2:频道页推荐\r\n4:首页推荐', '1', '0', '1', '1383895640', '1383891233', '', '0', '', '', '', '0', '');
INSERT INTO `sp_attribute` VALUES ('11', 'link_id', '外链', 'int(10) unsigned NOT NULL ', 'num', '0', '0-非外链，大于0-外链ID,需要函数进行链接与编号的转换', '1', '', '1', '0', '1', '1383895757', '1383891233', '', '0', '', '', '', '0', '');
INSERT INTO `sp_attribute` VALUES ('12', 'cover_id', '封面', 'int(10) unsigned NOT NULL ', 'picture', '0', '0-无封面，大于0-封面图片ID，需要函数处理', '1', '', '1', '0', '1', '1384147827', '1383891233', '', '0', '', '', '', '0', '');
INSERT INTO `sp_attribute` VALUES ('13', 'display', '可见性', 'tinyint(3) unsigned NOT NULL ', 'radio', '1', '', '1', '0:不可见\r\n1:所有人可见', '1', '0', '1', '1386662271', '1383891233', '', '0', '', 'regex', '', '0', 'function');
INSERT INTO `sp_attribute` VALUES ('14', 'deadline', '截至时间', 'int(10) unsigned NOT NULL ', 'datetime', '0', '0-永久有效', '1', '', '1', '0', '1', '1387163248', '1383891233', '', '0', '', 'regex', '', '0', 'function');
INSERT INTO `sp_attribute` VALUES ('15', 'attach', '附件数量', 'tinyint(3) unsigned NOT NULL ', 'num', '0', '', '0', '', '1', '0', '1', '1387260355', '1383891233', '', '0', '', 'regex', '', '0', 'function');
INSERT INTO `sp_attribute` VALUES ('16', 'view', '浏览量', 'int(10) unsigned NOT NULL ', 'num', '0', '', '1', '', '1', '0', '1', '1383895835', '1383891233', '', '0', '', '', '', '0', '');
INSERT INTO `sp_attribute` VALUES ('17', 'comment', '评论数', 'int(10) unsigned NOT NULL ', 'num', '0', '', '1', '', '1', '0', '1', '1383895846', '1383891233', '', '0', '', '', '', '0', '');
INSERT INTO `sp_attribute` VALUES ('18', 'extend', '扩展统计字段', 'int(10) unsigned NOT NULL ', 'num', '0', '根据需求自行使用', '0', '', '1', '0', '1', '1384508264', '1383891233', '', '0', '', '', '', '0', '');
INSERT INTO `sp_attribute` VALUES ('19', 'level', '优先级', 'int(10) unsigned NOT NULL ', 'num', '0', '越高排序越靠前', '1', '', '1', '0', '1', '1383895894', '1383891233', '', '0', '', '', '', '0', '');
INSERT INTO `sp_attribute` VALUES ('20', 'create_time', '创建时间', 'int(10) unsigned NOT NULL ', 'datetime', '0', '', '1', '', '1', '0', '1', '1383895903', '1383891233', '', '0', '', '', '', '0', '');
INSERT INTO `sp_attribute` VALUES ('21', 'update_time', '更新时间', 'int(10) unsigned NOT NULL ', 'datetime', '0', '', '0', '', '1', '0', '1', '1384508277', '1383891233', '', '0', '', '', '', '0', '');
INSERT INTO `sp_attribute` VALUES ('22', 'status', '数据状态', 'tinyint(4) NOT NULL ', 'radio', '0', '', '0', '-1:删除\r\n0:禁用\r\n1:正常\r\n2:待审核\r\n3:草稿', '1', '0', '1', '1384508496', '1383891233', '', '0', '', '', '', '0', '');
INSERT INTO `sp_attribute` VALUES ('23', 'parse', '内容解析类型', 'tinyint(3) unsigned NOT NULL ', 'select', '0', '', '0', '0:html\r\n1:ubb\r\n2:markdown', '2', '0', '1', '1384511049', '1383891243', '', '0', '', '', '', '0', '');
INSERT INTO `sp_attribute` VALUES ('24', 'content', '文章内容', 'text NOT NULL ', 'editor', '', '', '1', '', '2', '0', '1', '1383896225', '1383891243', '', '0', '', '', '', '0', '');
INSERT INTO `sp_attribute` VALUES ('25', 'template', '详情页显示模板', 'varchar(100) NOT NULL ', 'string', '', '参照display方法参数的定义', '1', '', '2', '0', '1', '1383896190', '1383891243', '', '0', '', '', '', '0', '');
INSERT INTO `sp_attribute` VALUES ('26', 'bookmark', '收藏数', 'int(10) unsigned NOT NULL ', 'num', '0', '', '1', '', '2', '0', '1', '1383896103', '1383891243', '', '0', '', '', '', '0', '');
INSERT INTO `sp_attribute` VALUES ('27', 'parse', '内容解析类型', 'tinyint(3) unsigned NOT NULL ', 'select', '0', '', '0', '0:html\r\n1:ubb\r\n2:markdown', '3', '0', '1', '1387260461', '1383891252', '', '0', '', 'regex', '', '0', 'function');
INSERT INTO `sp_attribute` VALUES ('28', 'content', '下载详细描述', 'text NOT NULL ', 'editor', '', '', '1', '', '3', '0', '1', '1383896438', '1383891252', '', '0', '', '', '', '0', '');
INSERT INTO `sp_attribute` VALUES ('29', 'template', '详情页显示模板', 'varchar(100) NOT NULL ', 'string', '', '', '1', '', '3', '0', '1', '1383896429', '1383891252', '', '0', '', '', '', '0', '');
INSERT INTO `sp_attribute` VALUES ('30', 'file_id', '文件ID', 'int(10) unsigned NOT NULL ', 'file', '0', '需要函数处理', '1', '', '3', '0', '1', '1383896415', '1383891252', '', '0', '', '', '', '0', '');
INSERT INTO `sp_attribute` VALUES ('31', 'download', '下载次数', 'int(10) unsigned NOT NULL ', 'num', '0', '', '1', '', '3', '0', '1', '1383896380', '1383891252', '', '0', '', '', '', '0', '');
INSERT INTO `sp_attribute` VALUES ('32', 'size', '文件大小', 'bigint(20) unsigned NOT NULL ', 'num', '0', '单位bit', '1', '', '3', '0', '1', '1383896371', '1383891252', '', '0', '', '', '', '0', '');

-- ----------------------------
-- Table structure for sp_auth_extend
-- ----------------------------
DROP TABLE IF EXISTS `sp_auth_extend`;
CREATE TABLE `sp_auth_extend` (
  `group_id` mediumint(10) unsigned NOT NULL COMMENT '用户id',
  `extend_id` mediumint(8) unsigned NOT NULL COMMENT '扩展表中数据的id',
  `type` tinyint(1) unsigned NOT NULL COMMENT '扩展类型标识 1:栏目分类权限;2:模型权限',
  UNIQUE KEY `group_extend_type` (`group_id`,`extend_id`,`type`),
  KEY `uid` (`group_id`),
  KEY `group_id` (`extend_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户组与分类的对应关系表';

-- ----------------------------
-- Records of sp_auth_extend
-- ----------------------------
INSERT INTO `sp_auth_extend` VALUES ('1', '1', '1');
INSERT INTO `sp_auth_extend` VALUES ('1', '1', '2');
INSERT INTO `sp_auth_extend` VALUES ('1', '2', '1');
INSERT INTO `sp_auth_extend` VALUES ('1', '2', '2');
INSERT INTO `sp_auth_extend` VALUES ('1', '3', '1');
INSERT INTO `sp_auth_extend` VALUES ('1', '3', '2');
INSERT INTO `sp_auth_extend` VALUES ('1', '4', '1');
INSERT INTO `sp_auth_extend` VALUES ('1', '37', '1');

-- ----------------------------
-- Table structure for sp_auth_group
-- ----------------------------
DROP TABLE IF EXISTS `sp_auth_group`;
CREATE TABLE `sp_auth_group` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户组id,自增主键',
  `module` varchar(20) NOT NULL COMMENT '用户组所属模块',
  `type` tinyint(4) NOT NULL COMMENT '组类型',
  `title` char(20) NOT NULL DEFAULT '' COMMENT '用户组中文名称',
  `description` varchar(80) NOT NULL DEFAULT '' COMMENT '描述信息',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '用户组状态：为1正常，为0禁用,-1为删除',
  `rules` varchar(500) NOT NULL DEFAULT '' COMMENT '用户组拥有的规则id，多个规则 , 隔开',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sp_auth_group
-- ----------------------------
INSERT INTO `sp_auth_group` VALUES ('1', 'admin', '1', '默认用户组', '', '1', '1,2,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,79,80,81,82,83,84,86,87,88,89,90,91,92,93,94,95,96,97,100,102,103,105,106');
INSERT INTO `sp_auth_group` VALUES ('2', 'admin', '1', '测试用户', '测试用户', '1', '1,3,5,19,20,21,22,23,24,25,26,27,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,80,82,83,84,88,89,90,91,92,93,100,102,103,195');

-- ----------------------------
-- Table structure for sp_auth_group_access
-- ----------------------------
DROP TABLE IF EXISTS `sp_auth_group_access`;
CREATE TABLE `sp_auth_group_access` (
  `uid` int(10) unsigned NOT NULL COMMENT '用户id',
  `group_id` mediumint(8) unsigned NOT NULL COMMENT '用户组id',
  UNIQUE KEY `uid_group_id` (`uid`,`group_id`),
  KEY `uid` (`uid`),
  KEY `group_id` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sp_auth_group_access
-- ----------------------------
INSERT INTO `sp_auth_group_access` VALUES ('2', '2');

-- ----------------------------
-- Table structure for sp_auth_rule
-- ----------------------------
DROP TABLE IF EXISTS `sp_auth_rule`;
CREATE TABLE `sp_auth_rule` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '规则id,自增主键',
  `module` varchar(20) NOT NULL COMMENT '规则所属module',
  `type` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1-url;2-主菜单',
  `name` char(80) NOT NULL DEFAULT '' COMMENT '规则唯一英文标识',
  `title` char(20) NOT NULL DEFAULT '' COMMENT '规则中文描述',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否有效(0:无效,1:有效)',
  `condition` varchar(300) NOT NULL DEFAULT '' COMMENT '规则附加条件',
  PRIMARY KEY (`id`),
  KEY `module` (`module`,`status`,`type`)
) ENGINE=MyISAM AUTO_INCREMENT=217 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sp_auth_rule
-- ----------------------------
INSERT INTO `sp_auth_rule` VALUES ('1', 'admin', '2', 'Admin/Index/index', '首页', '1', '');
INSERT INTO `sp_auth_rule` VALUES ('2', 'admin', '2', 'Admin/Article/mydocument', '内容', '1', '');
INSERT INTO `sp_auth_rule` VALUES ('3', 'admin', '2', 'Admin/User/index', '用户', '1', '');
INSERT INTO `sp_auth_rule` VALUES ('4', 'admin', '2', 'Admin/Addons/index', '扩展', '1', '');
INSERT INTO `sp_auth_rule` VALUES ('5', 'admin', '2', 'Admin/Config/group', '系统', '1', '');
INSERT INTO `sp_auth_rule` VALUES ('7', 'admin', '1', 'Admin/article/add', '新增', '1', '');
INSERT INTO `sp_auth_rule` VALUES ('8', 'admin', '1', 'Admin/article/edit', '编辑', '1', '');
INSERT INTO `sp_auth_rule` VALUES ('9', 'admin', '1', 'Admin/article/setStatus', '改变状态', '1', '');
INSERT INTO `sp_auth_rule` VALUES ('10', 'admin', '1', 'Admin/article/update', '保存', '1', '');
INSERT INTO `sp_auth_rule` VALUES ('11', 'admin', '1', 'Admin/article/autoSave', '保存草稿', '1', '');
INSERT INTO `sp_auth_rule` VALUES ('12', 'admin', '1', 'Admin/article/move', '移动', '1', '');
INSERT INTO `sp_auth_rule` VALUES ('13', 'admin', '1', 'Admin/article/copy', '复制', '1', '');
INSERT INTO `sp_auth_rule` VALUES ('14', 'admin', '1', 'Admin/article/paste', '粘贴', '1', '');
INSERT INTO `sp_auth_rule` VALUES ('15', 'admin', '1', 'Admin/article/permit', '还原', '1', '');
INSERT INTO `sp_auth_rule` VALUES ('16', 'admin', '1', 'Admin/article/clear', '清空', '1', '');
INSERT INTO `sp_auth_rule` VALUES ('17', 'admin', '1', 'Admin/article/index', '文档列表', '1', '');
INSERT INTO `sp_auth_rule` VALUES ('18', 'admin', '1', 'Admin/article/recycle', '回收站', '1', '');
INSERT INTO `sp_auth_rule` VALUES ('19', 'admin', '1', 'Admin/User/addaction', '新增用户行为', '1', '');
INSERT INTO `sp_auth_rule` VALUES ('20', 'admin', '1', 'Admin/User/editaction', '编辑用户行为', '1', '');
INSERT INTO `sp_auth_rule` VALUES ('21', 'admin', '1', 'Admin/User/saveAction', '保存用户行为', '1', '');
INSERT INTO `sp_auth_rule` VALUES ('22', 'admin', '1', 'Admin/User/setStatus', '变更行为状态', '1', '');
INSERT INTO `sp_auth_rule` VALUES ('23', 'admin', '1', 'Admin/User/changeStatus?method=forbidUser', '禁用会员', '1', '');
INSERT INTO `sp_auth_rule` VALUES ('24', 'admin', '1', 'Admin/User/changeStatus?method=resumeUser', '启用会员', '1', '');
INSERT INTO `sp_auth_rule` VALUES ('25', 'admin', '1', 'Admin/User/changeStatus?method=deleteUser', '删除会员', '1', '');
INSERT INTO `sp_auth_rule` VALUES ('26', 'admin', '1', 'Admin/User/index', '用户信息', '1', '');
INSERT INTO `sp_auth_rule` VALUES ('27', 'admin', '1', 'Admin/User/action', '用户行为', '1', '');
INSERT INTO `sp_auth_rule` VALUES ('28', 'admin', '1', 'Admin/AuthManager/changeStatus?method=deleteGroup', '删除', '1', '');
INSERT INTO `sp_auth_rule` VALUES ('29', 'admin', '1', 'Admin/AuthManager/changeStatus?method=forbidGroup', '禁用', '1', '');
INSERT INTO `sp_auth_rule` VALUES ('30', 'admin', '1', 'Admin/AuthManager/changeStatus?method=resumeGroup', '恢复', '1', '');
INSERT INTO `sp_auth_rule` VALUES ('31', 'admin', '1', 'Admin/AuthManager/createGroup', '新增', '1', '');
INSERT INTO `sp_auth_rule` VALUES ('32', 'admin', '1', 'Admin/AuthManager/editGroup', '编辑', '1', '');
INSERT INTO `sp_auth_rule` VALUES ('33', 'admin', '1', 'Admin/AuthManager/writeGroup', '保存用户组', '1', '');
INSERT INTO `sp_auth_rule` VALUES ('34', 'admin', '1', 'Admin/AuthManager/group', '授权', '1', '');
INSERT INTO `sp_auth_rule` VALUES ('35', 'admin', '1', 'Admin/AuthManager/access', '访问授权', '1', '');
INSERT INTO `sp_auth_rule` VALUES ('36', 'admin', '1', 'Admin/AuthManager/user', '成员授权', '1', '');
INSERT INTO `sp_auth_rule` VALUES ('37', 'admin', '1', 'Admin/AuthManager/removeFromGroup', '解除授权', '1', '');
INSERT INTO `sp_auth_rule` VALUES ('38', 'admin', '1', 'Admin/AuthManager/addToGroup', '保存成员授权', '1', '');
INSERT INTO `sp_auth_rule` VALUES ('39', 'admin', '1', 'Admin/AuthManager/category', '分类授权', '1', '');
INSERT INTO `sp_auth_rule` VALUES ('40', 'admin', '1', 'Admin/AuthManager/addToCategory', '保存分类授权', '1', '');
INSERT INTO `sp_auth_rule` VALUES ('41', 'admin', '1', 'Admin/AuthManager/index', '权限管理', '1', '');
INSERT INTO `sp_auth_rule` VALUES ('42', 'admin', '1', 'Admin/Addons/create', '创建', '1', '');
INSERT INTO `sp_auth_rule` VALUES ('43', 'admin', '1', 'Admin/Addons/checkForm', '检测创建', '1', '');
INSERT INTO `sp_auth_rule` VALUES ('44', 'admin', '1', 'Admin/Addons/preview', '预览', '1', '');
INSERT INTO `sp_auth_rule` VALUES ('45', 'admin', '1', 'Admin/Addons/build', '快速生成插件', '1', '');
INSERT INTO `sp_auth_rule` VALUES ('46', 'admin', '1', 'Admin/Addons/config', '设置', '1', '');
INSERT INTO `sp_auth_rule` VALUES ('47', 'admin', '1', 'Admin/Addons/disable', '禁用', '1', '');
INSERT INTO `sp_auth_rule` VALUES ('48', 'admin', '1', 'Admin/Addons/enable', '启用', '1', '');
INSERT INTO `sp_auth_rule` VALUES ('49', 'admin', '1', 'Admin/Addons/install', '安装', '1', '');
INSERT INTO `sp_auth_rule` VALUES ('50', 'admin', '1', 'Admin/Addons/uninstall', '卸载', '1', '');
INSERT INTO `sp_auth_rule` VALUES ('51', 'admin', '1', 'Admin/Addons/saveconfig', '更新配置', '1', '');
INSERT INTO `sp_auth_rule` VALUES ('52', 'admin', '1', 'Admin/Addons/adminList', '插件后台列表', '1', '');
INSERT INTO `sp_auth_rule` VALUES ('53', 'admin', '1', 'Admin/Addons/execute', 'URL方式访问插件', '1', '');
INSERT INTO `sp_auth_rule` VALUES ('54', 'admin', '1', 'Admin/Addons/index', '插件管理', '1', '');
INSERT INTO `sp_auth_rule` VALUES ('55', 'admin', '1', 'Admin/Addons/hooks', '钩子管理', '1', '');
INSERT INTO `sp_auth_rule` VALUES ('56', 'admin', '1', 'Admin/model/add', '新增', '1', '');
INSERT INTO `sp_auth_rule` VALUES ('57', 'admin', '1', 'Admin/model/edit', '编辑', '1', '');
INSERT INTO `sp_auth_rule` VALUES ('58', 'admin', '1', 'Admin/model/setStatus', '改变状态', '1', '');
INSERT INTO `sp_auth_rule` VALUES ('59', 'admin', '1', 'Admin/model/update', '保存数据', '1', '');
INSERT INTO `sp_auth_rule` VALUES ('60', 'admin', '1', 'Admin/Model/index', '模型管理', '1', '');
INSERT INTO `sp_auth_rule` VALUES ('61', 'admin', '1', 'Admin/Config/edit', '编辑', '1', '');
INSERT INTO `sp_auth_rule` VALUES ('62', 'admin', '1', 'Admin/Config/del', '删除', '1', '');
INSERT INTO `sp_auth_rule` VALUES ('63', 'admin', '1', 'Admin/Config/add', '新增', '1', '');
INSERT INTO `sp_auth_rule` VALUES ('64', 'admin', '1', 'Admin/Config/save', '保存', '1', '');
INSERT INTO `sp_auth_rule` VALUES ('65', 'admin', '1', 'Admin/Config/group', '网站设置', '1', '');
INSERT INTO `sp_auth_rule` VALUES ('66', 'admin', '1', 'Admin/Config/index', '配置管理', '1', '');
INSERT INTO `sp_auth_rule` VALUES ('67', 'admin', '1', 'Admin/Channel/add', '新增', '1', '');
INSERT INTO `sp_auth_rule` VALUES ('68', 'admin', '1', 'Admin/Channel/edit', '编辑', '1', '');
INSERT INTO `sp_auth_rule` VALUES ('69', 'admin', '1', 'Admin/Channel/del', '删除', '1', '');
INSERT INTO `sp_auth_rule` VALUES ('70', 'admin', '1', 'Admin/Channel/index', '导航管理', '1', '');
INSERT INTO `sp_auth_rule` VALUES ('71', 'admin', '1', 'Admin/Category/edit', '编辑', '1', '');
INSERT INTO `sp_auth_rule` VALUES ('72', 'admin', '1', 'Admin/Category/add', '新增', '1', '');
INSERT INTO `sp_auth_rule` VALUES ('73', 'admin', '1', 'Admin/Category/remove', '删除', '1', '');
INSERT INTO `sp_auth_rule` VALUES ('74', 'admin', '1', 'Admin/Category/index', '分类管理', '1', '');
INSERT INTO `sp_auth_rule` VALUES ('75', 'admin', '1', 'Admin/file/upload', '上传控件', '-1', '');
INSERT INTO `sp_auth_rule` VALUES ('76', 'admin', '1', 'Admin/file/uploadPicture', '上传图片', '-1', '');
INSERT INTO `sp_auth_rule` VALUES ('77', 'admin', '1', 'Admin/file/download', '下载', '-1', '');
INSERT INTO `sp_auth_rule` VALUES ('94', 'admin', '1', 'Admin/AuthManager/modelauth', '模型授权', '1', '');
INSERT INTO `sp_auth_rule` VALUES ('79', 'admin', '1', 'Admin/article/batchOperate', '导入', '1', '');
INSERT INTO `sp_auth_rule` VALUES ('80', 'admin', '1', 'Admin/Database/index?type=export', '备份数据库', '1', '');
INSERT INTO `sp_auth_rule` VALUES ('81', 'admin', '1', 'Admin/Database/index?type=import', '还原数据库', '1', '');
INSERT INTO `sp_auth_rule` VALUES ('82', 'admin', '1', 'Admin/Database/export', '备份', '1', '');
INSERT INTO `sp_auth_rule` VALUES ('83', 'admin', '1', 'Admin/Database/optimize', '优化表', '1', '');
INSERT INTO `sp_auth_rule` VALUES ('84', 'admin', '1', 'Admin/Database/repair', '修复表', '1', '');
INSERT INTO `sp_auth_rule` VALUES ('86', 'admin', '1', 'Admin/Database/import', '恢复', '1', '');
INSERT INTO `sp_auth_rule` VALUES ('87', 'admin', '1', 'Admin/Database/del', '删除', '1', '');
INSERT INTO `sp_auth_rule` VALUES ('88', 'admin', '1', 'Admin/User/add', '新增用户', '1', '');
INSERT INTO `sp_auth_rule` VALUES ('89', 'admin', '1', 'Admin/Attribute/index', '属性管理', '1', '');
INSERT INTO `sp_auth_rule` VALUES ('90', 'admin', '1', 'Admin/Attribute/add', '新增', '1', '');
INSERT INTO `sp_auth_rule` VALUES ('91', 'admin', '1', 'Admin/Attribute/edit', '编辑', '1', '');
INSERT INTO `sp_auth_rule` VALUES ('92', 'admin', '1', 'Admin/Attribute/setStatus', '改变状态', '1', '');
INSERT INTO `sp_auth_rule` VALUES ('93', 'admin', '1', 'Admin/Attribute/update', '保存数据', '1', '');
INSERT INTO `sp_auth_rule` VALUES ('95', 'admin', '1', 'Admin/AuthManager/addToModel', '保存模型授权', '1', '');
INSERT INTO `sp_auth_rule` VALUES ('96', 'admin', '1', 'Admin/Category/move', '移动', '-1', '');
INSERT INTO `sp_auth_rule` VALUES ('97', 'admin', '1', 'Admin/Category/merge', '合并', '-1', '');
INSERT INTO `sp_auth_rule` VALUES ('98', 'admin', '1', 'Admin/Config/menu', '后台菜单管理', '-1', '');
INSERT INTO `sp_auth_rule` VALUES ('99', 'admin', '1', 'Admin/Article/mydocument', '内容', '-1', '');
INSERT INTO `sp_auth_rule` VALUES ('100', 'admin', '1', 'Admin/Menu/index', '菜单管理', '1', '');
INSERT INTO `sp_auth_rule` VALUES ('101', 'admin', '1', 'Admin/other', '其他', '-1', '');
INSERT INTO `sp_auth_rule` VALUES ('102', 'admin', '1', 'Admin/Menu/add', '新增', '1', '');
INSERT INTO `sp_auth_rule` VALUES ('103', 'admin', '1', 'Admin/Menu/edit', '编辑', '1', '');
INSERT INTO `sp_auth_rule` VALUES ('104', 'admin', '1', 'Admin/Think/lists?model=article', '文章管理', '-1', '');
INSERT INTO `sp_auth_rule` VALUES ('105', 'admin', '1', 'Admin/Think/lists?model=download', '下载管理', '1', '');
INSERT INTO `sp_auth_rule` VALUES ('106', 'admin', '1', 'Admin/Think/lists?model=config', '配置管理', '1', '');
INSERT INTO `sp_auth_rule` VALUES ('107', 'admin', '1', 'Admin/Action/actionlog', '行为日志', '1', '');
INSERT INTO `sp_auth_rule` VALUES ('108', 'admin', '1', 'Admin/User/updatePassword', '修改密码', '1', '');
INSERT INTO `sp_auth_rule` VALUES ('109', 'admin', '1', 'Admin/User/updateNickname', '修改昵称', '1', '');
INSERT INTO `sp_auth_rule` VALUES ('110', 'admin', '1', 'Admin/action/edit', '查看行为日志', '1', '');
INSERT INTO `sp_auth_rule` VALUES ('205', 'admin', '1', 'Admin/think/add', '新增数据', '1', '');
INSERT INTO `sp_auth_rule` VALUES ('111', 'admin', '2', 'Admin/article/index', '文档列表', '-1', '');
INSERT INTO `sp_auth_rule` VALUES ('112', 'admin', '2', 'Admin/article/add', '新增', '-1', '');
INSERT INTO `sp_auth_rule` VALUES ('113', 'admin', '2', 'Admin/article/edit', '编辑', '-1', '');
INSERT INTO `sp_auth_rule` VALUES ('114', 'admin', '2', 'Admin/article/setStatus', '改变状态', '-1', '');
INSERT INTO `sp_auth_rule` VALUES ('115', 'admin', '2', 'Admin/article/update', '保存', '-1', '');
INSERT INTO `sp_auth_rule` VALUES ('116', 'admin', '2', 'Admin/article/autoSave', '保存草稿', '-1', '');
INSERT INTO `sp_auth_rule` VALUES ('117', 'admin', '2', 'Admin/article/move', '移动', '-1', '');
INSERT INTO `sp_auth_rule` VALUES ('118', 'admin', '2', 'Admin/article/copy', '复制', '-1', '');
INSERT INTO `sp_auth_rule` VALUES ('119', 'admin', '2', 'Admin/article/paste', '粘贴', '-1', '');
INSERT INTO `sp_auth_rule` VALUES ('120', 'admin', '2', 'Admin/article/batchOperate', '导入', '-1', '');
INSERT INTO `sp_auth_rule` VALUES ('121', 'admin', '2', 'Admin/article/recycle', '回收站', '-1', '');
INSERT INTO `sp_auth_rule` VALUES ('122', 'admin', '2', 'Admin/article/permit', '还原', '-1', '');
INSERT INTO `sp_auth_rule` VALUES ('123', 'admin', '2', 'Admin/article/clear', '清空', '-1', '');
INSERT INTO `sp_auth_rule` VALUES ('124', 'admin', '2', 'Admin/User/add', '新增用户', '-1', '');
INSERT INTO `sp_auth_rule` VALUES ('125', 'admin', '2', 'Admin/User/action', '用户行为', '-1', '');
INSERT INTO `sp_auth_rule` VALUES ('126', 'admin', '2', 'Admin/User/addAction', '新增用户行为', '-1', '');
INSERT INTO `sp_auth_rule` VALUES ('127', 'admin', '2', 'Admin/User/editAction', '编辑用户行为', '-1', '');
INSERT INTO `sp_auth_rule` VALUES ('128', 'admin', '2', 'Admin/User/saveAction', '保存用户行为', '-1', '');
INSERT INTO `sp_auth_rule` VALUES ('129', 'admin', '2', 'Admin/User/setStatus', '变更行为状态', '-1', '');
INSERT INTO `sp_auth_rule` VALUES ('130', 'admin', '2', 'Admin/User/changeStatus?method=forbidUser', '禁用会员', '-1', '');
INSERT INTO `sp_auth_rule` VALUES ('131', 'admin', '2', 'Admin/User/changeStatus?method=resumeUser', '启用会员', '-1', '');
INSERT INTO `sp_auth_rule` VALUES ('132', 'admin', '2', 'Admin/User/changeStatus?method=deleteUser', '删除会员', '-1', '');
INSERT INTO `sp_auth_rule` VALUES ('133', 'admin', '2', 'Admin/AuthManager/index', '权限管理', '-1', '');
INSERT INTO `sp_auth_rule` VALUES ('134', 'admin', '2', 'Admin/AuthManager/changeStatus?method=deleteGroup', '删除', '-1', '');
INSERT INTO `sp_auth_rule` VALUES ('135', 'admin', '2', 'Admin/AuthManager/changeStatus?method=forbidGroup', '禁用', '-1', '');
INSERT INTO `sp_auth_rule` VALUES ('136', 'admin', '2', 'Admin/AuthManager/changeStatus?method=resumeGroup', '恢复', '-1', '');
INSERT INTO `sp_auth_rule` VALUES ('137', 'admin', '2', 'Admin/AuthManager/createGroup', '新增', '-1', '');
INSERT INTO `sp_auth_rule` VALUES ('138', 'admin', '2', 'Admin/AuthManager/editGroup', '编辑', '-1', '');
INSERT INTO `sp_auth_rule` VALUES ('139', 'admin', '2', 'Admin/AuthManager/writeGroup', '保存用户组', '-1', '');
INSERT INTO `sp_auth_rule` VALUES ('140', 'admin', '2', 'Admin/AuthManager/group', '授权', '-1', '');
INSERT INTO `sp_auth_rule` VALUES ('141', 'admin', '2', 'Admin/AuthManager/access', '访问授权', '-1', '');
INSERT INTO `sp_auth_rule` VALUES ('142', 'admin', '2', 'Admin/AuthManager/user', '成员授权', '-1', '');
INSERT INTO `sp_auth_rule` VALUES ('143', 'admin', '2', 'Admin/AuthManager/removeFromGroup', '解除授权', '-1', '');
INSERT INTO `sp_auth_rule` VALUES ('144', 'admin', '2', 'Admin/AuthManager/addToGroup', '保存成员授权', '-1', '');
INSERT INTO `sp_auth_rule` VALUES ('145', 'admin', '2', 'Admin/AuthManager/category', '分类授权', '-1', '');
INSERT INTO `sp_auth_rule` VALUES ('146', 'admin', '2', 'Admin/AuthManager/addToCategory', '保存分类授权', '-1', '');
INSERT INTO `sp_auth_rule` VALUES ('147', 'admin', '2', 'Admin/AuthManager/modelauth', '模型授权', '-1', '');
INSERT INTO `sp_auth_rule` VALUES ('148', 'admin', '2', 'Admin/AuthManager/addToModel', '保存模型授权', '-1', '');
INSERT INTO `sp_auth_rule` VALUES ('149', 'admin', '2', 'Admin/Addons/create', '创建', '-1', '');
INSERT INTO `sp_auth_rule` VALUES ('150', 'admin', '2', 'Admin/Addons/checkForm', '检测创建', '-1', '');
INSERT INTO `sp_auth_rule` VALUES ('151', 'admin', '2', 'Admin/Addons/preview', '预览', '-1', '');
INSERT INTO `sp_auth_rule` VALUES ('152', 'admin', '2', 'Admin/Addons/build', '快速生成插件', '-1', '');
INSERT INTO `sp_auth_rule` VALUES ('153', 'admin', '2', 'Admin/Addons/config', '设置', '-1', '');
INSERT INTO `sp_auth_rule` VALUES ('154', 'admin', '2', 'Admin/Addons/disable', '禁用', '-1', '');
INSERT INTO `sp_auth_rule` VALUES ('155', 'admin', '2', 'Admin/Addons/enable', '启用', '-1', '');
INSERT INTO `sp_auth_rule` VALUES ('156', 'admin', '2', 'Admin/Addons/install', '安装', '-1', '');
INSERT INTO `sp_auth_rule` VALUES ('157', 'admin', '2', 'Admin/Addons/uninstall', '卸载', '-1', '');
INSERT INTO `sp_auth_rule` VALUES ('158', 'admin', '2', 'Admin/Addons/saveconfig', '更新配置', '-1', '');
INSERT INTO `sp_auth_rule` VALUES ('159', 'admin', '2', 'Admin/Addons/adminList', '插件后台列表', '-1', '');
INSERT INTO `sp_auth_rule` VALUES ('160', 'admin', '2', 'Admin/Addons/execute', 'URL方式访问插件', '-1', '');
INSERT INTO `sp_auth_rule` VALUES ('161', 'admin', '2', 'Admin/Addons/hooks', '钩子管理', '-1', '');
INSERT INTO `sp_auth_rule` VALUES ('162', 'admin', '2', 'Admin/Model/index', '模型管理', '-1', '');
INSERT INTO `sp_auth_rule` VALUES ('163', 'admin', '2', 'Admin/model/add', '新增', '-1', '');
INSERT INTO `sp_auth_rule` VALUES ('164', 'admin', '2', 'Admin/model/edit', '编辑', '-1', '');
INSERT INTO `sp_auth_rule` VALUES ('165', 'admin', '2', 'Admin/model/setStatus', '改变状态', '-1', '');
INSERT INTO `sp_auth_rule` VALUES ('166', 'admin', '2', 'Admin/model/update', '保存数据', '-1', '');
INSERT INTO `sp_auth_rule` VALUES ('167', 'admin', '2', 'Admin/Attribute/index', '属性管理', '-1', '');
INSERT INTO `sp_auth_rule` VALUES ('168', 'admin', '2', 'Admin/Attribute/add', '新增', '-1', '');
INSERT INTO `sp_auth_rule` VALUES ('169', 'admin', '2', 'Admin/Attribute/edit', '编辑', '-1', '');
INSERT INTO `sp_auth_rule` VALUES ('170', 'admin', '2', 'Admin/Attribute/setStatus', '改变状态', '-1', '');
INSERT INTO `sp_auth_rule` VALUES ('171', 'admin', '2', 'Admin/Attribute/update', '保存数据', '-1', '');
INSERT INTO `sp_auth_rule` VALUES ('172', 'admin', '2', 'Admin/Config/index', '配置管理', '-1', '');
INSERT INTO `sp_auth_rule` VALUES ('173', 'admin', '2', 'Admin/Config/edit', '编辑', '-1', '');
INSERT INTO `sp_auth_rule` VALUES ('174', 'admin', '2', 'Admin/Config/del', '删除', '-1', '');
INSERT INTO `sp_auth_rule` VALUES ('175', 'admin', '2', 'Admin/Config/add', '新增', '-1', '');
INSERT INTO `sp_auth_rule` VALUES ('176', 'admin', '2', 'Admin/Config/save', '保存', '-1', '');
INSERT INTO `sp_auth_rule` VALUES ('177', 'admin', '2', 'Admin/Menu/index', '菜单管理', '-1', '');
INSERT INTO `sp_auth_rule` VALUES ('178', 'admin', '2', 'Admin/Channel/index', '导航管理', '-1', '');
INSERT INTO `sp_auth_rule` VALUES ('179', 'admin', '2', 'Admin/Channel/add', '新增', '-1', '');
INSERT INTO `sp_auth_rule` VALUES ('180', 'admin', '2', 'Admin/Channel/edit', '编辑', '-1', '');
INSERT INTO `sp_auth_rule` VALUES ('181', 'admin', '2', 'Admin/Channel/del', '删除', '-1', '');
INSERT INTO `sp_auth_rule` VALUES ('182', 'admin', '2', 'Admin/Category/index', '分类管理', '-1', '');
INSERT INTO `sp_auth_rule` VALUES ('183', 'admin', '2', 'Admin/Category/edit', '编辑', '-1', '');
INSERT INTO `sp_auth_rule` VALUES ('184', 'admin', '2', 'Admin/Category/add', '新增', '-1', '');
INSERT INTO `sp_auth_rule` VALUES ('185', 'admin', '2', 'Admin/Category/remove', '删除', '-1', '');
INSERT INTO `sp_auth_rule` VALUES ('186', 'admin', '2', 'Admin/Category/move', '移动', '-1', '');
INSERT INTO `sp_auth_rule` VALUES ('187', 'admin', '2', 'Admin/Category/merge', '合并', '-1', '');
INSERT INTO `sp_auth_rule` VALUES ('188', 'admin', '2', 'Admin/Database/index?type=export', '备份数据库', '-1', '');
INSERT INTO `sp_auth_rule` VALUES ('189', 'admin', '2', 'Admin/Database/export', '备份', '-1', '');
INSERT INTO `sp_auth_rule` VALUES ('190', 'admin', '2', 'Admin/Database/optimize', '优化表', '-1', '');
INSERT INTO `sp_auth_rule` VALUES ('191', 'admin', '2', 'Admin/Database/repair', '修复表', '-1', '');
INSERT INTO `sp_auth_rule` VALUES ('192', 'admin', '2', 'Admin/Database/index?type=import', '还原数据库', '-1', '');
INSERT INTO `sp_auth_rule` VALUES ('193', 'admin', '2', 'Admin/Database/import', '恢复', '-1', '');
INSERT INTO `sp_auth_rule` VALUES ('194', 'admin', '2', 'Admin/Database/del', '删除', '-1', '');
INSERT INTO `sp_auth_rule` VALUES ('195', 'admin', '2', 'Admin/other', '其他', '1', '');
INSERT INTO `sp_auth_rule` VALUES ('196', 'admin', '2', 'Admin/Menu/add', '新增', '-1', '');
INSERT INTO `sp_auth_rule` VALUES ('197', 'admin', '2', 'Admin/Menu/edit', '编辑', '-1', '');
INSERT INTO `sp_auth_rule` VALUES ('198', 'admin', '2', 'Admin/Think/lists?model=article', '应用', '-1', '');
INSERT INTO `sp_auth_rule` VALUES ('199', 'admin', '2', 'Admin/Think/lists?model=download', '下载管理', '-1', '');
INSERT INTO `sp_auth_rule` VALUES ('200', 'admin', '2', 'Admin/Think/lists?model=config', '应用', '-1', '');
INSERT INTO `sp_auth_rule` VALUES ('201', 'admin', '2', 'Admin/Action/actionlog', '行为日志', '-1', '');
INSERT INTO `sp_auth_rule` VALUES ('202', 'admin', '2', 'Admin/User/updatePassword', '修改密码', '-1', '');
INSERT INTO `sp_auth_rule` VALUES ('203', 'admin', '2', 'Admin/User/updateNickname', '修改昵称', '-1', '');
INSERT INTO `sp_auth_rule` VALUES ('204', 'admin', '2', 'Admin/action/edit', '查看行为日志', '-1', '');
INSERT INTO `sp_auth_rule` VALUES ('206', 'admin', '1', 'Admin/think/edit', '编辑数据', '1', '');
INSERT INTO `sp_auth_rule` VALUES ('207', 'admin', '1', 'Admin/Menu/import', '导入', '1', '');
INSERT INTO `sp_auth_rule` VALUES ('208', 'admin', '1', 'Admin/Model/generate', '生成', '1', '');
INSERT INTO `sp_auth_rule` VALUES ('209', 'admin', '1', 'Admin/Addons/addHook', '新增钩子', '1', '');
INSERT INTO `sp_auth_rule` VALUES ('210', 'admin', '1', 'Admin/Addons/edithook', '编辑钩子', '1', '');
INSERT INTO `sp_auth_rule` VALUES ('211', 'admin', '1', 'Admin/Article/sort', '文档排序', '1', '');
INSERT INTO `sp_auth_rule` VALUES ('212', 'admin', '1', 'Admin/Config/sort', '排序', '1', '');
INSERT INTO `sp_auth_rule` VALUES ('213', 'admin', '1', 'Admin/Menu/sort', '排序', '1', '');
INSERT INTO `sp_auth_rule` VALUES ('214', 'admin', '1', 'Admin/Channel/sort', '排序', '1', '');
INSERT INTO `sp_auth_rule` VALUES ('215', 'admin', '1', 'Admin/Category/operate/type/move', '移动', '1', '');
INSERT INTO `sp_auth_rule` VALUES ('216', 'admin', '1', 'Admin/Category/operate/type/merge', '合并', '1', '');

-- ----------------------------
-- Table structure for sp_back_config
-- ----------------------------
DROP TABLE IF EXISTS `sp_back_config`;
CREATE TABLE `sp_back_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` tinyint(1) NOT NULL DEFAULT '0' COMMENT '类型：0->退订，1->改签',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '类型：0->体育馆,1->运动馆,2->场地,3->片区',
  `tid` int(11) NOT NULL DEFAULT '0' COMMENT '根据类型指定主题ID',
  `issupport` tinyint(11) NOT NULL DEFAULT '0' COMMENT '是否支持：0->否，1->是',
  `advance` int(11) NOT NULL DEFAULT '0' COMMENT '提前量（小时）',
  `fee` float(11,2) NOT NULL DEFAULT '0.00' COMMENT '需要扣除的费用',
  `cycle` int(11) NOT NULL DEFAULT '0' COMMENT '周期(天)',
  `times` int(11) NOT NULL DEFAULT '0' COMMENT '周期内允许的次数',
  `isuse` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否启用：0->否，1->是',
  `starttime` int(11) NOT NULL DEFAULT '0' COMMENT '启用日期',
  `endtime` int(11) NOT NULL DEFAULT '0' COMMENT '结束日期',
  `addtime` int(11) NOT NULL DEFAULT '0' COMMENT '添加时间',
  `mark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='退订/改签规则';

-- ----------------------------
-- Records of sp_back_config
-- ----------------------------

-- ----------------------------
-- Table structure for sp_back_list
-- ----------------------------
DROP TABLE IF EXISTS `sp_back_list`;
CREATE TABLE `sp_back_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` tinyint(1) NOT NULL DEFAULT '0' COMMENT '类型：0->退订，1->改签',
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `oid` int(11) NOT NULL DEFAULT '0' COMMENT '订单ID',
  `fee` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '收取的费用',
  `backfee` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '退还给用户的费用',
  `new_oid` int(11) NOT NULL DEFAULT '0' COMMENT '改签的新订单ID',
  `addtime` int(11) NOT NULL DEFAULT '0' COMMENT '添加时间',
  `mark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否成功：0->否，1->是',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='退订/改签记录';

-- ----------------------------
-- Records of sp_back_list
-- ----------------------------
INSERT INTO `sp_back_list` VALUES ('1', '1', '1', '47', '0.00', '80.00', '50', '1467107845', '', '0');
INSERT INTO `sp_back_list` VALUES ('2', '1', '1', '51', '0.00', '80.00', '52', '1467170749', '', '1');
INSERT INTO `sp_back_list` VALUES ('3', '1', '1', '52', '0.00', '80.00', '53', '1467170892', '', '1');
INSERT INTO `sp_back_list` VALUES ('4', '1', '1', '68', '0.00', '40.00', '70', '1469090544', '', '1');
INSERT INTO `sp_back_list` VALUES ('5', '1', '1', '69', '0.00', '40.00', '71', '1469091515', '', '1');
INSERT INTO `sp_back_list` VALUES ('6', '1', '1', '71', '0.00', '40.00', '72', '1469091702', '', '1');
INSERT INTO `sp_back_list` VALUES ('7', '1', '1', '72', '0.00', '40.00', '73', '1469092158', '', '1');

-- ----------------------------
-- Table structure for sp_carinfo
-- ----------------------------
DROP TABLE IF EXISTS `sp_carinfo`;
CREATE TABLE `sp_carinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `carno` varchar(20) NOT NULL DEFAULT '' COMMENT '车牌号',
  `cartype` varchar(100) NOT NULL DEFAULT '' COMMENT '车辆类型(奔驰、奥迪。。。)',
  `addtime` int(11) NOT NULL DEFAULT '0' COMMENT '添加时间',
  `mark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='车辆信息表';

-- ----------------------------
-- Records of sp_carinfo
-- ----------------------------

-- ----------------------------
-- Table structure for sp_category
-- ----------------------------
DROP TABLE IF EXISTS `sp_category`;
CREATE TABLE `sp_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类ID',
  `name` varchar(30) NOT NULL COMMENT '标志',
  `title` varchar(50) NOT NULL COMMENT '标题',
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上级分类ID',
  `sort` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序（同级有效）',
  `list_row` tinyint(3) unsigned NOT NULL DEFAULT '10' COMMENT '列表每页行数',
  `meta_title` varchar(50) NOT NULL DEFAULT '' COMMENT 'SEO的网页标题',
  `keywords` varchar(255) NOT NULL DEFAULT '' COMMENT '关键字',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  `template_index` varchar(100) NOT NULL COMMENT '频道页模板',
  `template_lists` varchar(100) NOT NULL COMMENT '列表页模板',
  `template_detail` varchar(100) NOT NULL COMMENT '详情页模板',
  `template_edit` varchar(100) NOT NULL COMMENT '编辑页模板',
  `model` varchar(100) NOT NULL DEFAULT '' COMMENT '关联模型',
  `type` varchar(100) NOT NULL DEFAULT '' COMMENT '允许发布的内容类型',
  `link_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '外链',
  `allow_publish` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否允许发布内容',
  `display` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '可见性',
  `reply` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否允许回复',
  `check` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '发布的文章是否需要审核',
  `reply_model` varchar(100) NOT NULL DEFAULT '',
  `extend` text NOT NULL COMMENT '扩展设置',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '数据状态',
  `icon` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '分类图标',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_name` (`name`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COMMENT='分类表';

-- ----------------------------
-- Records of sp_category
-- ----------------------------
INSERT INTO `sp_category` VALUES ('1', 'blog', '博客', '0', '0', '10', '', '', '', '', '', '', '', '2', '2,1', '0', '0', '1', '0', '0', '1', '', '1379474947', '1382701539', '1', '0');
INSERT INTO `sp_category` VALUES ('2', 'default_blog', '默认分类', '1', '1', '10', '', '', '', '', '', '', '', '2', '2,1,3', '0', '1', '1', '0', '1', '1', '', '1379475028', '1386839751', '1', '31');

-- ----------------------------
-- Table structure for sp_channel
-- ----------------------------
DROP TABLE IF EXISTS `sp_channel`;
CREATE TABLE `sp_channel` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '频道ID',
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上级频道ID',
  `title` char(30) NOT NULL COMMENT '频道标题',
  `url` char(100) NOT NULL COMMENT '频道连接',
  `sort` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '导航排序',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态',
  `target` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '新窗口打开',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sp_channel
-- ----------------------------
INSERT INTO `sp_channel` VALUES ('1', '0', '首页', 'Index/index', '1', '1379475111', '1379923177', '1', '0');
INSERT INTO `sp_channel` VALUES ('2', '0', '博客', 'Article/index?category=blog', '2', '1379475131', '1379483713', '1', '0');
INSERT INTO `sp_channel` VALUES ('3', '0', '官网', 'http://www.onethink.cn', '3', '1379475154', '1387163458', '1', '0');

-- ----------------------------
-- Table structure for sp_config
-- ----------------------------
DROP TABLE IF EXISTS `sp_config`;
CREATE TABLE `sp_config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '配置ID',
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '配置名称',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '配置类型',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '配置说明',
  `group` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '配置分组',
  `extra` varchar(255) NOT NULL DEFAULT '' COMMENT '配置值',
  `remark` varchar(100) NOT NULL COMMENT '配置说明',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态',
  `value` text NOT NULL COMMENT '配置值',
  `sort` smallint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_name` (`name`),
  KEY `type` (`type`),
  KEY `group` (`group`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sp_config
-- ----------------------------
INSERT INTO `sp_config` VALUES ('1', 'WEB_SITE_TITLE', '1', '网站标题', '1', '', '网站标题前台显示标题', '1378898976', '1379235274', '1', 'OneThink内容管理框架', '0');
INSERT INTO `sp_config` VALUES ('2', 'WEB_SITE_DESCRIPTION', '2', '网站描述', '1', '', '网站搜索引擎描述', '1378898976', '1379235841', '1', 'OneThink内容管理框架', '1');
INSERT INTO `sp_config` VALUES ('3', 'WEB_SITE_KEYWORD', '2', '网站关键字', '1', '', '网站搜索引擎关键字', '1378898976', '1381390100', '1', 'ThinkPHP,OneThink', '8');
INSERT INTO `sp_config` VALUES ('4', 'WEB_SITE_CLOSE', '4', '关闭站点', '1', '0:关闭,1:开启', '站点关闭后其他用户不能访问，管理员可以正常访问', '1378898976', '1379235296', '1', '1', '1');
INSERT INTO `sp_config` VALUES ('9', 'CONFIG_TYPE_LIST', '3', '配置类型列表', '4', '', '主要用于数据解析和页面表单的生成', '1378898976', '1379235348', '1', '0:数字\r\n1:字符\r\n2:文本\r\n3:数组\r\n4:枚举', '2');
INSERT INTO `sp_config` VALUES ('10', 'WEB_SITE_ICP', '1', '网站备案号', '1', '', '设置在网站底部显示的备案号，如“沪ICP备12007941号-2', '1378900335', '1379235859', '1', '', '9');
INSERT INTO `sp_config` VALUES ('11', 'DOCUMENT_POSITION', '3', '文档推荐位', '2', '', '文档推荐位，推荐到多个位置KEY值相加即可', '1379053380', '1379235329', '1', '1:列表页推荐\r\n2:频道页推荐\r\n4:网站首页推荐', '3');
INSERT INTO `sp_config` VALUES ('12', 'DOCUMENT_DISPLAY', '3', '文档可见性', '2', '', '文章可见性仅影响前台显示，后台不收影响', '1379056370', '1379235322', '1', '0:所有人可见\r\n1:仅注册会员可见\r\n2:仅管理员可见', '4');
INSERT INTO `sp_config` VALUES ('13', 'COLOR_STYLE', '4', '后台色系', '1', 'default_color:默认\r\nblue_color:紫罗兰', '后台颜色风格', '1379122533', '1379235904', '1', 'default_color', '10');
INSERT INTO `sp_config` VALUES ('20', 'CONFIG_GROUP_LIST', '3', '配置分组', '4', '', '配置分组', '1379228036', '1384418383', '1', '1:基本\r\n2:内容\r\n3:用户\r\n4:系统', '4');
INSERT INTO `sp_config` VALUES ('21', 'HOOKS_TYPE', '3', '钩子的类型', '4', '', '类型 1-用于扩展显示内容，2-用于扩展业务处理', '1379313397', '1379313407', '1', '1:视图\r\n2:控制器', '6');
INSERT INTO `sp_config` VALUES ('22', 'AUTH_CONFIG', '3', 'Auth配置', '4', '', '自定义Auth.class.php类配置', '1379409310', '1379409564', '1', 'AUTH_ON:1\r\nAUTH_TYPE:2', '8');
INSERT INTO `sp_config` VALUES ('23', 'OPEN_DRAFTBOX', '4', '是否开启草稿功能', '2', '0:关闭草稿功能\r\n1:开启草稿功能\r\n', '新增文章时的草稿功能配置', '1379484332', '1379484591', '1', '1', '1');
INSERT INTO `sp_config` VALUES ('24', 'DRAFT_AOTOSAVE_INTERVAL', '0', '自动保存草稿时间', '2', '', '自动保存草稿的时间间隔，单位：秒', '1379484574', '1386143323', '1', '60', '2');
INSERT INTO `sp_config` VALUES ('25', 'LIST_ROWS', '0', '后台每页记录数', '2', '', '后台数据每页显示记录数', '1379503896', '1380427745', '1', '10', '10');
INSERT INTO `sp_config` VALUES ('26', 'USER_ALLOW_REGISTER', '4', '是否允许用户注册', '3', '0:关闭注册\r\n1:允许注册', '是否开放用户注册', '1379504487', '1379504580', '1', '1', '3');
INSERT INTO `sp_config` VALUES ('27', 'CODEMIRROR_THEME', '4', '预览插件的CodeMirror主题', '4', '3024-day:3024 day\r\n3024-night:3024 night\r\nambiance:ambiance\r\nbase16-dark:base16 dark\r\nbase16-light:base16 light\r\nblackboard:blackboard\r\ncobalt:cobalt\r\neclipse:eclipse\r\nelegant:elegant\r\nerlang-dark:erlang-dark\r\nlesser-dark:lesser-dark\r\nmidnight:midnight', '详情见CodeMirror官网', '1379814385', '1384740813', '1', 'ambiance', '3');
INSERT INTO `sp_config` VALUES ('28', 'DATA_BACKUP_PATH', '1', '数据库备份根路径', '4', '', '路径必须以 / 结尾', '1381482411', '1381482411', '1', './Data/', '5');
INSERT INTO `sp_config` VALUES ('29', 'DATA_BACKUP_PART_SIZE', '0', '数据库备份卷大小', '4', '', '该值用于限制压缩后的分卷最大长度。单位：B；建议设置20M', '1381482488', '1381729564', '1', '20971520', '7');
INSERT INTO `sp_config` VALUES ('30', 'DATA_BACKUP_COMPRESS', '4', '数据库备份文件是否启用压缩', '4', '0:不压缩\r\n1:启用压缩', '压缩备份文件需要PHP环境支持gzopen,gzwrite函数', '1381713345', '1381729544', '1', '1', '9');
INSERT INTO `sp_config` VALUES ('31', 'DATA_BACKUP_COMPRESS_LEVEL', '4', '数据库备份文件压缩级别', '4', '1:普通\r\n4:一般\r\n9:最高', '数据库备份文件的压缩级别，该配置在开启压缩时生效', '1381713408', '1381713408', '1', '9', '10');
INSERT INTO `sp_config` VALUES ('32', 'DEVELOP_MODE', '4', '开启开发者模式', '4', '0:关闭\r\n1:开启', '是否开启开发者模式', '1383105995', '1383291877', '1', '1', '11');
INSERT INTO `sp_config` VALUES ('33', 'ALLOW_VISIT', '3', '不受限控制器方法', '0', '', '', '1386644047', '1386644741', '1', '0:article/draftbox\r\n1:article/mydocument\r\n2:Category/tree\r\n3:Index/verify\r\n4:file/upload\r\n5:file/download\r\n6:user/updatePassword\r\n7:user/updateNickname\r\n8:user/submitPassword\r\n9:user/submitNickname\r\n10:file/uploadpicture', '0');
INSERT INTO `sp_config` VALUES ('34', 'DENY_VISIT', '3', '超管专限控制器方法', '0', '', '仅超级管理员可访问的控制器方法', '1386644141', '1386644659', '1', '0:Addons/addhook\r\n1:Addons/edithook\r\n2:Addons/delhook\r\n3:Addons/updateHook\r\n4:Admin/getMenus\r\n5:Admin/recordList\r\n6:AuthManager/updateRules\r\n7:AuthManager/tree', '0');
INSERT INTO `sp_config` VALUES ('35', 'REPLY_LIST_ROWS', '0', '回复列表每页条数', '2', '', '', '1386645376', '1387178083', '1', '10', '0');
INSERT INTO `sp_config` VALUES ('36', 'ADMIN_ALLOW_IP', '2', '后台允许访问IP', '4', '', '多个用逗号分隔，如果不配置表示不限制IP访问', '1387165454', '1387165553', '1', '', '12');
INSERT INTO `sp_config` VALUES ('37', 'SHOW_PAGE_TRACE', '4', '是否显示页面Trace', '4', '0:关闭\r\n1:开启', '是否显示页面Trace信息', '1387165685', '1387165685', '1', '0', '1');

-- ----------------------------
-- Table structure for sp_document
-- ----------------------------
DROP TABLE IF EXISTS `sp_document`;
CREATE TABLE `sp_document` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '文档ID',
  `uid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '用户ID',
  `name` char(40) NOT NULL DEFAULT '' COMMENT '标识',
  `title` char(80) NOT NULL DEFAULT '' COMMENT '标题',
  `category_id` int(10) unsigned NOT NULL COMMENT '所属分类',
  `description` char(140) NOT NULL DEFAULT '' COMMENT '描述',
  `root` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '根节点',
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '所属ID',
  `model_id` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '内容模型ID',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '2' COMMENT '内容类型',
  `position` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '推荐位',
  `link_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '外链',
  `cover_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '封面',
  `display` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '可见性',
  `deadline` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '截至时间',
  `attach` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '附件数量',
  `view` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '浏览量',
  `comment` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '评论数',
  `extend` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '扩展统计字段',
  `level` int(10) NOT NULL DEFAULT '0' COMMENT '优先级',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '数据状态',
  PRIMARY KEY (`id`),
  KEY `idx_category_status` (`category_id`,`status`),
  KEY `idx_status_type_pid` (`status`,`uid`,`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='文档模型基础表';

-- ----------------------------
-- Records of sp_document
-- ----------------------------
INSERT INTO `sp_document` VALUES ('1', '1', '', 'OneThink1.0正式版发布', '2', '大家期待的OneThink正式版发布', '0', '0', '2', '2', '0', '0', '0', '1', '0', '0', '11', '0', '0', '0', '1387260660', '1387263112', '1');

-- ----------------------------
-- Table structure for sp_document_article
-- ----------------------------
DROP TABLE IF EXISTS `sp_document_article`;
CREATE TABLE `sp_document_article` (
  `id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文档ID',
  `parse` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '内容解析类型',
  `content` text NOT NULL COMMENT '文章内容',
  `template` varchar(100) NOT NULL DEFAULT '' COMMENT '详情页显示模板',
  `bookmark` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '收藏数',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='文档模型文章表';

-- ----------------------------
-- Records of sp_document_article
-- ----------------------------
INSERT INTO `sp_document_article` VALUES ('1', '0', '<h1>\r\n	OneThink1.0正式版发布&nbsp;\r\n</h1>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<strong>OneThink是一个开源的内容管理框架，基于最新的ThinkPHP3.2版本开发，提供更方便、更安全的WEB应用开发体验，采用了全新的架构设计和命名空间机制，融合了模块化、驱动化和插件化的设计理念于一体，开启了国内WEB应用傻瓜式开发的新潮流。&nbsp;</strong> \r\n</p>\r\n<h2>\r\n	主要特性：\r\n</h2>\r\n<p>\r\n	1. 基于ThinkPHP最新3.2版本。\r\n</p>\r\n<p>\r\n	2. 模块化：全新的架构和模块化的开发机制，便于灵活扩展和二次开发。&nbsp;\r\n</p>\r\n<p>\r\n	3. 文档模型/分类体系：通过和文档模型绑定，以及不同的文档类型，不同分类可以实现差异化的功能，轻松实现诸如资讯、下载、讨论和图片等功能。\r\n</p>\r\n<p>\r\n	4. 开源免费：OneThink遵循Apache2开源协议,免费提供使用。&nbsp;\r\n</p>\r\n<p>\r\n	5. 用户行为：支持自定义用户行为，可以对单个用户或者群体用户的行为进行记录及分享，为您的运营决策提供有效参考数据。\r\n</p>\r\n<p>\r\n	6. 云端部署：通过驱动的方式可以轻松支持平台的部署，让您的网站无缝迁移，内置已经支持SAE和BAE3.0。\r\n</p>\r\n<p>\r\n	7. 云服务支持：即将启动支持云存储、云安全、云过滤和云统计等服务，更多贴心的服务让您的网站更安心。\r\n</p>\r\n<p>\r\n	8. 安全稳健：提供稳健的安全策略，包括备份恢复、容错、防止恶意攻击登录，网页防篡改等多项安全管理功能，保证系统安全，可靠、稳定的运行。&nbsp;\r\n</p>\r\n<p>\r\n	9. 应用仓库：官方应用仓库拥有大量来自第三方插件和应用模块、模板主题，有众多来自开源社区的贡献，让您的网站“One”美无缺。&nbsp;\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<strong>&nbsp;OneThink集成了一个完善的后台管理体系和前台模板标签系统，让你轻松管理数据和进行前台网站的标签式开发。&nbsp;</strong> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<h2>\r\n	后台主要功能：\r\n</h2>\r\n<p>\r\n	1. 用户Passport系统\r\n</p>\r\n<p>\r\n	2. 配置管理系统&nbsp;\r\n</p>\r\n<p>\r\n	3. 权限控制系统\r\n</p>\r\n<p>\r\n	4. 后台建模系统&nbsp;\r\n</p>\r\n<p>\r\n	5. 多级分类系统&nbsp;\r\n</p>\r\n<p>\r\n	6. 用户行为系统&nbsp;\r\n</p>\r\n<p>\r\n	7. 钩子和插件系统\r\n</p>\r\n<p>\r\n	8. 系统日志系统&nbsp;\r\n</p>\r\n<p>\r\n	9. 数据备份和还原\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	&nbsp;[ 官方下载：&nbsp;<a href=\"http://www.onethink.cn/download.html\" target=\"_blank\">http://www.onethink.cn/download.html</a>&nbsp;&nbsp;开发手册：<a href=\"http://document.onethink.cn/\" target=\"_blank\">http://document.onethink.cn/</a>&nbsp;]&nbsp;\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<strong>OneThink开发团队 2013</strong> \r\n</p>', '', '0');

-- ----------------------------
-- Table structure for sp_document_download
-- ----------------------------
DROP TABLE IF EXISTS `sp_document_download`;
CREATE TABLE `sp_document_download` (
  `id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文档ID',
  `parse` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '内容解析类型',
  `content` text NOT NULL COMMENT '下载详细描述',
  `template` varchar(100) NOT NULL DEFAULT '' COMMENT '详情页显示模板',
  `file_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文件ID',
  `download` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '下载次数',
  `size` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '文件大小',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='文档模型下载表';

-- ----------------------------
-- Records of sp_document_download
-- ----------------------------

-- ----------------------------
-- Table structure for sp_file
-- ----------------------------
DROP TABLE IF EXISTS `sp_file`;
CREATE TABLE `sp_file` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '文件ID',
  `name` char(30) NOT NULL DEFAULT '' COMMENT '原始文件名',
  `savename` char(20) NOT NULL DEFAULT '' COMMENT '保存名称',
  `savepath` char(30) NOT NULL DEFAULT '' COMMENT '文件保存路径',
  `ext` char(5) NOT NULL DEFAULT '' COMMENT '文件后缀',
  `mime` char(40) NOT NULL DEFAULT '' COMMENT '文件mime类型',
  `size` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文件大小',
  `md5` char(32) NOT NULL DEFAULT '' COMMENT '文件md5',
  `sha1` char(40) NOT NULL DEFAULT '' COMMENT '文件 sha1编码',
  `location` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '文件保存位置',
  `create_time` int(10) unsigned NOT NULL COMMENT '上传时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_md5` (`md5`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='文件表';

-- ----------------------------
-- Records of sp_file
-- ----------------------------

-- ----------------------------
-- Table structure for sp_gym
-- ----------------------------
DROP TABLE IF EXISTS `sp_gym`;
CREATE TABLE `sp_gym` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '体育馆名称',
  `province` varchar(255) NOT NULL DEFAULT '江苏省' COMMENT '省份',
  `city` varchar(255) NOT NULL DEFAULT '南京市' COMMENT '市区',
  `area` varchar(255) NOT NULL DEFAULT '南京市区' COMMENT '区县',
  `address` varchar(255) NOT NULL DEFAULT '' COMMENT '具体地址',
  `logo` varchar(255) NOT NULL DEFAULT '' COMMENT 'logo图标地址',
  `linkman` varchar(255) NOT NULL DEFAULT '' COMMENT '联系人',
  `telephone` varchar(255) NOT NULL DEFAULT '' COMMENT '联系电话',
  `adminids` varchar(255) NOT NULL DEFAULT '' COMMENT '从属管理员的ID列表',
  `type` varchar(255) NOT NULL DEFAULT '' COMMENT '场馆类型',
  `orderconfigid` int(11) NOT NULL DEFAULT '0' COMMENT '预定配置表',
  `priceconfigid` int(11) NOT NULL DEFAULT '0' COMMENT '价格配置表',
  `addtime` int(11) NOT NULL DEFAULT '0' COMMENT '添加时间',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '场馆描述',
  `mark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='体育馆表';

-- ----------------------------
-- Records of sp_gym
-- ----------------------------
INSERT INTO `sp_gym` VALUES ('1', '全民健身中心', '江苏省', '南京市', '白下区', '中山东路145号', '/Public/Mobile/img/01.png', '', '', '', '1', '0', '0', '0', '0', '', '');
INSERT INTO `sp_gym` VALUES ('2', '奥利匹克体育中心', '江苏省', '南京市', '建邺区', '中山东路145号', '/Public/Mobile/img/02.png', '', '', '', '1', '0', '0', '0', '0', '', '');
INSERT INTO `sp_gym` VALUES ('3', '五台山体育馆', '江苏省', '南京市', '南京市区', '中山东路145号', '/Public/Mobile/img/03.png', '', '', '', '1', '0', '0', '0', '0', '', '');

-- ----------------------------
-- Table structure for sp_gym_vip
-- ----------------------------
DROP TABLE IF EXISTS `sp_gym_vip`;
CREATE TABLE `sp_gym_vip` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `nickname` varchar(255) NOT NULL DEFAULT '' COMMENT '用户昵称',
  `gid` int(11) NOT NULL DEFAULT '0' COMMENT '体院馆ID',
  `gname` varchar(255) NOT NULL DEFAULT '' COMMENT '体育馆名称',
  `number` varchar(50) NOT NULL DEFAULT '' COMMENT '会员编号',
  `balance` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '账户余额',
  `score` int(11) NOT NULL DEFAULT '0' COMMENT '积分余额',
  `addtime` int(11) NOT NULL DEFAULT '0' COMMENT '添加时间',
  `mark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='体育场馆会员信息表';

-- ----------------------------
-- Records of sp_gym_vip
-- ----------------------------

-- ----------------------------
-- Table structure for sp_hooks
-- ----------------------------
DROP TABLE IF EXISTS `sp_hooks`;
CREATE TABLE `sp_hooks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(40) NOT NULL DEFAULT '' COMMENT '钩子名称',
  `description` text NOT NULL COMMENT '描述',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '类型',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `addons` varchar(255) NOT NULL DEFAULT '' COMMENT '钩子挂载的插件 ''，''分割',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sp_hooks
-- ----------------------------
INSERT INTO `sp_hooks` VALUES ('1', 'pageHeader', '页面header钩子，一般用于加载插件CSS文件和代码', '1', '0', '');
INSERT INTO `sp_hooks` VALUES ('2', 'pageFooter', '页面footer钩子，一般用于加载插件JS文件和JS代码', '1', '0', 'ReturnTop');
INSERT INTO `sp_hooks` VALUES ('3', 'documentEditForm', '添加编辑表单的 扩展内容钩子', '1', '0', 'Attachment');
INSERT INTO `sp_hooks` VALUES ('4', 'documentDetailAfter', '文档末尾显示', '1', '0', 'Attachment,SocialComment');
INSERT INTO `sp_hooks` VALUES ('5', 'documentDetailBefore', '页面内容前显示用钩子', '1', '0', '');
INSERT INTO `sp_hooks` VALUES ('6', 'documentSaveComplete', '保存文档数据后的扩展钩子', '2', '0', 'Attachment');
INSERT INTO `sp_hooks` VALUES ('7', 'documentEditFormContent', '添加编辑表单的内容显示钩子', '1', '0', 'Editor');
INSERT INTO `sp_hooks` VALUES ('8', 'adminArticleEdit', '后台内容编辑页编辑器', '1', '1378982734', 'EditorForAdmin');
INSERT INTO `sp_hooks` VALUES ('13', 'AdminIndex', '首页小格子个性化显示', '1', '1382596073', 'SiteStat,SystemInfo,DevTeam');
INSERT INTO `sp_hooks` VALUES ('14', 'topicComment', '评论提交方式扩展钩子。', '1', '1380163518', 'Editor');
INSERT INTO `sp_hooks` VALUES ('16', 'app_begin', '应用开始', '2', '1384481614', '');

-- ----------------------------
-- Table structure for sp_member
-- ----------------------------
DROP TABLE IF EXISTS `sp_member`;
CREATE TABLE `sp_member` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `nickname` char(16) NOT NULL DEFAULT '' COMMENT '昵称',
  `sex` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '性别',
  `birthday` date NOT NULL DEFAULT '0000-00-00' COMMENT '生日',
  `qq` char(10) NOT NULL DEFAULT '' COMMENT 'qq号',
  `score` mediumint(8) NOT NULL DEFAULT '0' COMMENT '用户积分',
  `login` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '登录次数',
  `reg_ip` bigint(20) NOT NULL DEFAULT '0' COMMENT '注册IP',
  `reg_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '注册时间',
  `last_login_ip` bigint(20) NOT NULL DEFAULT '0' COMMENT '最后登录IP',
  `last_login_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后登录时间',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '会员状态',
  PRIMARY KEY (`uid`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='会员表';

-- ----------------------------
-- Records of sp_member
-- ----------------------------
INSERT INTO `sp_member` VALUES ('1', 'admin', '0', '0000-00-00', '', '50', '15', '0', '1466043870', '3232235621', '1469610160', '1');
INSERT INTO `sp_member` VALUES ('2', 'kang', '0', '0000-00-00', '', '10', '3', '0', '0', '2130706433', '1466045527', '1');

-- ----------------------------
-- Table structure for sp_menu
-- ----------------------------
DROP TABLE IF EXISTS `sp_menu`;
CREATE TABLE `sp_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '文档ID',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '标题',
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上级分类ID',
  `sort` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序（同级有效）',
  `url` char(255) NOT NULL DEFAULT '' COMMENT '链接地址',
  `hide` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否隐藏',
  `tip` varchar(255) NOT NULL DEFAULT '' COMMENT '提示',
  `group` varchar(50) DEFAULT '' COMMENT '分组',
  `is_dev` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否仅开发者模式可见',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=122 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sp_menu
-- ----------------------------
INSERT INTO `sp_menu` VALUES ('1', '首页', '0', '1', 'Index/index', '0', '', '', '0');
INSERT INTO `sp_menu` VALUES ('2', '内容', '0', '2', 'Article/mydocument', '0', '', '', '0');
INSERT INTO `sp_menu` VALUES ('3', '文档列表', '2', '0', 'article/index', '1', '', '内容', '0');
INSERT INTO `sp_menu` VALUES ('4', '新增', '3', '0', 'article/add', '0', '', '', '0');
INSERT INTO `sp_menu` VALUES ('5', '编辑', '3', '0', 'article/edit', '0', '', '', '0');
INSERT INTO `sp_menu` VALUES ('6', '改变状态', '3', '0', 'article/setStatus', '0', '', '', '0');
INSERT INTO `sp_menu` VALUES ('7', '保存', '3', '0', 'article/update', '0', '', '', '0');
INSERT INTO `sp_menu` VALUES ('8', '保存草稿', '3', '0', 'article/autoSave', '0', '', '', '0');
INSERT INTO `sp_menu` VALUES ('9', '移动', '3', '0', 'article/move', '0', '', '', '0');
INSERT INTO `sp_menu` VALUES ('10', '复制', '3', '0', 'article/copy', '0', '', '', '0');
INSERT INTO `sp_menu` VALUES ('11', '粘贴', '3', '0', 'article/paste', '0', '', '', '0');
INSERT INTO `sp_menu` VALUES ('12', '导入', '3', '0', 'article/batchOperate', '0', '', '', '0');
INSERT INTO `sp_menu` VALUES ('13', '回收站', '2', '0', 'article/recycle', '1', '', '内容', '0');
INSERT INTO `sp_menu` VALUES ('14', '还原', '13', '0', 'article/permit', '0', '', '', '0');
INSERT INTO `sp_menu` VALUES ('15', '清空', '13', '0', 'article/clear', '0', '', '', '0');
INSERT INTO `sp_menu` VALUES ('16', '用户', '0', '3', 'User/index', '0', '', '', '0');
INSERT INTO `sp_menu` VALUES ('17', '用户信息', '16', '0', 'User/index', '0', '', '用户管理', '0');
INSERT INTO `sp_menu` VALUES ('18', '新增用户', '17', '0', 'User/add', '0', '添加新用户', '', '0');
INSERT INTO `sp_menu` VALUES ('19', '用户行为', '16', '0', 'User/action', '0', '', '行为管理', '0');
INSERT INTO `sp_menu` VALUES ('20', '新增用户行为', '19', '0', 'User/addaction', '0', '', '', '0');
INSERT INTO `sp_menu` VALUES ('21', '编辑用户行为', '19', '0', 'User/editaction', '0', '', '', '0');
INSERT INTO `sp_menu` VALUES ('22', '保存用户行为', '19', '0', 'User/saveAction', '0', '\"用户->用户行为\"保存编辑和新增的用户行为', '', '0');
INSERT INTO `sp_menu` VALUES ('23', '变更行为状态', '19', '0', 'User/setStatus', '0', '\"用户->用户行为\"中的启用,禁用和删除权限', '', '0');
INSERT INTO `sp_menu` VALUES ('24', '禁用会员', '19', '0', 'User/changeStatus?method=forbidUser', '0', '\"用户->用户信息\"中的禁用', '', '0');
INSERT INTO `sp_menu` VALUES ('25', '启用会员', '19', '0', 'User/changeStatus?method=resumeUser', '0', '\"用户->用户信息\"中的启用', '', '0');
INSERT INTO `sp_menu` VALUES ('26', '删除会员', '19', '0', 'User/changeStatus?method=deleteUser', '0', '\"用户->用户信息\"中的删除', '', '0');
INSERT INTO `sp_menu` VALUES ('27', '权限管理', '16', '0', 'AuthManager/index', '0', '', '用户管理', '0');
INSERT INTO `sp_menu` VALUES ('28', '删除', '27', '0', 'AuthManager/changeStatus?method=deleteGroup', '0', '删除用户组', '', '0');
INSERT INTO `sp_menu` VALUES ('29', '禁用', '27', '0', 'AuthManager/changeStatus?method=forbidGroup', '0', '禁用用户组', '', '0');
INSERT INTO `sp_menu` VALUES ('30', '恢复', '27', '0', 'AuthManager/changeStatus?method=resumeGroup', '0', '恢复已禁用的用户组', '', '0');
INSERT INTO `sp_menu` VALUES ('31', '新增', '27', '0', 'AuthManager/createGroup', '0', '创建新的用户组', '', '0');
INSERT INTO `sp_menu` VALUES ('32', '编辑', '27', '0', 'AuthManager/editGroup', '0', '编辑用户组名称和描述', '', '0');
INSERT INTO `sp_menu` VALUES ('33', '保存用户组', '27', '0', 'AuthManager/writeGroup', '0', '新增和编辑用户组的\"保存\"按钮', '', '0');
INSERT INTO `sp_menu` VALUES ('34', '授权', '27', '0', 'AuthManager/group', '0', '\"后台 \\ 用户 \\ 用户信息\"列表页的\"授权\"操作按钮,用于设置用户所属用户组', '', '0');
INSERT INTO `sp_menu` VALUES ('35', '访问授权', '27', '0', 'AuthManager/access', '0', '\"后台 \\ 用户 \\ 权限管理\"列表页的\"访问授权\"操作按钮', '', '0');
INSERT INTO `sp_menu` VALUES ('36', '成员授权', '27', '0', 'AuthManager/user', '0', '\"后台 \\ 用户 \\ 权限管理\"列表页的\"成员授权\"操作按钮', '', '0');
INSERT INTO `sp_menu` VALUES ('37', '解除授权', '27', '0', 'AuthManager/removeFromGroup', '0', '\"成员授权\"列表页内的解除授权操作按钮', '', '0');
INSERT INTO `sp_menu` VALUES ('38', '保存成员授权', '27', '0', 'AuthManager/addToGroup', '0', '\"用户信息\"列表页\"授权\"时的\"保存\"按钮和\"成员授权\"里右上角的\"添加\"按钮)', '', '0');
INSERT INTO `sp_menu` VALUES ('39', '分类授权', '27', '0', 'AuthManager/category', '0', '\"后台 \\ 用户 \\ 权限管理\"列表页的\"分类授权\"操作按钮', '', '0');
INSERT INTO `sp_menu` VALUES ('40', '保存分类授权', '27', '0', 'AuthManager/addToCategory', '0', '\"分类授权\"页面的\"保存\"按钮', '', '0');
INSERT INTO `sp_menu` VALUES ('41', '模型授权', '27', '0', 'AuthManager/modelauth', '0', '\"后台 \\ 用户 \\ 权限管理\"列表页的\"模型授权\"操作按钮', '', '0');
INSERT INTO `sp_menu` VALUES ('42', '保存模型授权', '27', '0', 'AuthManager/addToModel', '0', '\"分类授权\"页面的\"保存\"按钮', '', '0');
INSERT INTO `sp_menu` VALUES ('43', '扩展', '0', '7', 'Addons/index', '0', '', '', '0');
INSERT INTO `sp_menu` VALUES ('44', '插件管理', '43', '1', 'Addons/index', '0', '', '扩展', '0');
INSERT INTO `sp_menu` VALUES ('45', '创建', '44', '0', 'Addons/create', '0', '服务器上创建插件结构向导', '', '0');
INSERT INTO `sp_menu` VALUES ('46', '检测创建', '44', '0', 'Addons/checkForm', '0', '检测插件是否可以创建', '', '0');
INSERT INTO `sp_menu` VALUES ('47', '预览', '44', '0', 'Addons/preview', '0', '预览插件定义类文件', '', '0');
INSERT INTO `sp_menu` VALUES ('48', '快速生成插件', '44', '0', 'Addons/build', '0', '开始生成插件结构', '', '0');
INSERT INTO `sp_menu` VALUES ('49', '设置', '44', '0', 'Addons/config', '0', '设置插件配置', '', '0');
INSERT INTO `sp_menu` VALUES ('50', '禁用', '44', '0', 'Addons/disable', '0', '禁用插件', '', '0');
INSERT INTO `sp_menu` VALUES ('51', '启用', '44', '0', 'Addons/enable', '0', '启用插件', '', '0');
INSERT INTO `sp_menu` VALUES ('52', '安装', '44', '0', 'Addons/install', '0', '安装插件', '', '0');
INSERT INTO `sp_menu` VALUES ('53', '卸载', '44', '0', 'Addons/uninstall', '0', '卸载插件', '', '0');
INSERT INTO `sp_menu` VALUES ('54', '更新配置', '44', '0', 'Addons/saveconfig', '0', '更新插件配置处理', '', '0');
INSERT INTO `sp_menu` VALUES ('55', '插件后台列表', '44', '0', 'Addons/adminList', '0', '', '', '0');
INSERT INTO `sp_menu` VALUES ('56', 'URL方式访问插件', '44', '0', 'Addons/execute', '0', '控制是否有权限通过url访问插件控制器方法', '', '0');
INSERT INTO `sp_menu` VALUES ('57', '钩子管理', '43', '2', 'Addons/hooks', '0', '', '扩展', '0');
INSERT INTO `sp_menu` VALUES ('58', '模型管理', '68', '3', 'Model/index', '0', '', '系统设置', '0');
INSERT INTO `sp_menu` VALUES ('59', '新增', '58', '0', 'model/add', '0', '', '', '0');
INSERT INTO `sp_menu` VALUES ('60', '编辑', '58', '0', 'model/edit', '0', '', '', '0');
INSERT INTO `sp_menu` VALUES ('61', '改变状态', '58', '0', 'model/setStatus', '0', '', '', '0');
INSERT INTO `sp_menu` VALUES ('62', '保存数据', '58', '0', 'model/update', '0', '', '', '0');
INSERT INTO `sp_menu` VALUES ('63', '属性管理', '68', '0', 'Attribute/index', '1', '网站属性配置。', '', '0');
INSERT INTO `sp_menu` VALUES ('64', '新增', '63', '0', 'Attribute/add', '0', '', '', '0');
INSERT INTO `sp_menu` VALUES ('65', '编辑', '63', '0', 'Attribute/edit', '0', '', '', '0');
INSERT INTO `sp_menu` VALUES ('66', '改变状态', '63', '0', 'Attribute/setStatus', '0', '', '', '0');
INSERT INTO `sp_menu` VALUES ('67', '保存数据', '63', '0', 'Attribute/update', '0', '', '', '0');
INSERT INTO `sp_menu` VALUES ('68', '系统', '0', '4', 'Config/group', '0', '', '', '0');
INSERT INTO `sp_menu` VALUES ('69', '网站设置', '68', '1', 'Config/group', '0', '', '系统设置', '0');
INSERT INTO `sp_menu` VALUES ('70', '配置管理', '68', '4', 'Config/index', '0', '', '系统设置', '0');
INSERT INTO `sp_menu` VALUES ('71', '编辑', '70', '0', 'Config/edit', '0', '新增编辑和保存配置', '', '0');
INSERT INTO `sp_menu` VALUES ('72', '删除', '70', '0', 'Config/del', '0', '删除配置', '', '0');
INSERT INTO `sp_menu` VALUES ('73', '新增', '70', '0', 'Config/add', '0', '新增配置', '', '0');
INSERT INTO `sp_menu` VALUES ('74', '保存', '70', '0', 'Config/save', '0', '保存配置', '', '0');
INSERT INTO `sp_menu` VALUES ('75', '菜单管理', '68', '5', 'Menu/index', '0', '', '系统设置', '0');
INSERT INTO `sp_menu` VALUES ('76', '导航管理', '68', '6', 'Channel/index', '0', '', '系统设置', '0');
INSERT INTO `sp_menu` VALUES ('77', '新增', '76', '0', 'Channel/add', '0', '', '', '0');
INSERT INTO `sp_menu` VALUES ('78', '编辑', '76', '0', 'Channel/edit', '0', '', '', '0');
INSERT INTO `sp_menu` VALUES ('79', '删除', '76', '0', 'Channel/del', '0', '', '', '0');
INSERT INTO `sp_menu` VALUES ('80', '分类管理', '68', '2', 'Category/index', '0', '', '系统设置', '0');
INSERT INTO `sp_menu` VALUES ('81', '编辑', '80', '0', 'Category/edit', '0', '编辑和保存栏目分类', '', '0');
INSERT INTO `sp_menu` VALUES ('82', '新增', '80', '0', 'Category/add', '0', '新增栏目分类', '', '0');
INSERT INTO `sp_menu` VALUES ('83', '删除', '80', '0', 'Category/remove', '0', '删除栏目分类', '', '0');
INSERT INTO `sp_menu` VALUES ('84', '移动', '80', '0', 'Category/operate/type/move', '0', '移动栏目分类', '', '0');
INSERT INTO `sp_menu` VALUES ('85', '合并', '80', '0', 'Category/operate/type/merge', '0', '合并栏目分类', '', '0');
INSERT INTO `sp_menu` VALUES ('86', '备份数据库', '68', '0', 'Database/index?type=export', '0', '', '数据备份', '0');
INSERT INTO `sp_menu` VALUES ('87', '备份', '86', '0', 'Database/export', '0', '备份数据库', '', '0');
INSERT INTO `sp_menu` VALUES ('88', '优化表', '86', '0', 'Database/optimize', '0', '优化数据表', '', '0');
INSERT INTO `sp_menu` VALUES ('89', '修复表', '86', '0', 'Database/repair', '0', '修复数据表', '', '0');
INSERT INTO `sp_menu` VALUES ('90', '还原数据库', '68', '0', 'Database/index?type=import', '0', '', '数据备份', '0');
INSERT INTO `sp_menu` VALUES ('91', '恢复', '90', '0', 'Database/import', '0', '数据库恢复', '', '0');
INSERT INTO `sp_menu` VALUES ('92', '删除', '90', '0', 'Database/del', '0', '删除备份文件', '', '0');
INSERT INTO `sp_menu` VALUES ('93', '其他', '0', '5', 'other', '1', '', '', '0');
INSERT INTO `sp_menu` VALUES ('96', '新增', '75', '0', 'Menu/add', '0', '', '系统设置', '0');
INSERT INTO `sp_menu` VALUES ('98', '编辑', '75', '0', 'Menu/edit', '0', '', '', '0');
INSERT INTO `sp_menu` VALUES ('104', '下载管理', '102', '0', 'Think/lists?model=download', '0', '', '', '0');
INSERT INTO `sp_menu` VALUES ('105', '配置管理', '102', '0', 'Think/lists?model=config', '0', '', '', '0');
INSERT INTO `sp_menu` VALUES ('106', '行为日志', '16', '0', 'Action/actionlog', '0', '', '行为管理', '0');
INSERT INTO `sp_menu` VALUES ('108', '修改密码', '16', '0', 'User/updatePassword', '1', '', '', '0');
INSERT INTO `sp_menu` VALUES ('109', '修改昵称', '16', '0', 'User/updateNickname', '1', '', '', '0');
INSERT INTO `sp_menu` VALUES ('110', '查看行为日志', '106', '0', 'action/edit', '1', '', '', '0');
INSERT INTO `sp_menu` VALUES ('112', '新增数据', '58', '0', 'think/add', '1', '', '', '0');
INSERT INTO `sp_menu` VALUES ('113', '编辑数据', '58', '0', 'think/edit', '1', '', '', '0');
INSERT INTO `sp_menu` VALUES ('114', '导入', '75', '0', 'Menu/import', '0', '', '', '0');
INSERT INTO `sp_menu` VALUES ('115', '生成', '58', '0', 'Model/generate', '0', '', '', '0');
INSERT INTO `sp_menu` VALUES ('116', '新增钩子', '57', '0', 'Addons/addHook', '0', '', '', '0');
INSERT INTO `sp_menu` VALUES ('117', '编辑钩子', '57', '0', 'Addons/edithook', '0', '', '', '0');
INSERT INTO `sp_menu` VALUES ('118', '文档排序', '3', '0', 'Article/sort', '1', '', '', '0');
INSERT INTO `sp_menu` VALUES ('119', '排序', '70', '0', 'Config/sort', '1', '', '', '0');
INSERT INTO `sp_menu` VALUES ('120', '排序', '75', '0', 'Menu/sort', '1', '', '', '0');
INSERT INTO `sp_menu` VALUES ('121', '排序', '76', '0', 'Channel/sort', '1', '', '', '0');

-- ----------------------------
-- Table structure for sp_model
-- ----------------------------
DROP TABLE IF EXISTS `sp_model`;
CREATE TABLE `sp_model` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '模型ID',
  `name` char(30) NOT NULL DEFAULT '' COMMENT '模型标识',
  `title` char(30) NOT NULL DEFAULT '' COMMENT '模型名称',
  `extend` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '继承的模型',
  `relation` varchar(30) NOT NULL DEFAULT '' COMMENT '继承与被继承模型的关联字段',
  `need_pk` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '新建表时是否需要主键字段',
  `field_sort` text NOT NULL COMMENT '表单字段排序',
  `field_group` varchar(255) NOT NULL DEFAULT '1:基础' COMMENT '字段分组',
  `attribute_list` text NOT NULL COMMENT '属性列表（表的字段）',
  `template_list` varchar(100) NOT NULL DEFAULT '' COMMENT '列表模板',
  `template_add` varchar(100) NOT NULL DEFAULT '' COMMENT '新增模板',
  `template_edit` varchar(100) NOT NULL DEFAULT '' COMMENT '编辑模板',
  `list_grid` text NOT NULL COMMENT '列表定义',
  `list_row` smallint(2) unsigned NOT NULL DEFAULT '10' COMMENT '列表数据长度',
  `search_key` varchar(50) NOT NULL DEFAULT '' COMMENT '默认搜索字段',
  `search_list` varchar(255) NOT NULL DEFAULT '' COMMENT '高级搜索的字段',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '状态',
  `engine_type` varchar(25) NOT NULL DEFAULT 'MyISAM' COMMENT '数据库引擎',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='文档模型表';

-- ----------------------------
-- Records of sp_model
-- ----------------------------
INSERT INTO `sp_model` VALUES ('1', 'document', '基础文档', '0', '', '1', '{\"1\":[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\",\"10\",\"11\",\"12\",\"13\",\"14\",\"15\",\"16\",\"17\",\"18\",\"19\",\"20\",\"21\",\"22\"]}', '1:基础', '', '', '', '', 'id:编号\r\ntitle:标题:article/index?cate_id=[category_id]&pid=[id]\r\ntype|get_document_type:类型\r\nlevel:优先级\r\nupdate_time|time_format:最后更新\r\nstatus_text:状态\r\nview:浏览\r\nid:操作:[EDIT]&cate_id=[category_id]|编辑,article/setstatus?status=-1&ids=[id]|删除', '0', '', '', '1383891233', '1384507827', '1', 'MyISAM');
INSERT INTO `sp_model` VALUES ('2', 'article', '文章', '1', '', '1', '{\"1\":[\"3\",\"24\",\"2\",\"5\"],\"2\":[\"9\",\"13\",\"19\",\"10\",\"12\",\"16\",\"17\",\"26\",\"20\",\"14\",\"11\",\"25\"]}', '1:基础,2:扩展', '', '', '', '', 'id:编号\r\ntitle:标题:article/edit?cate_id=[category_id]&id=[id]\r\ncontent:内容', '0', '', '', '1383891243', '1387260622', '1', 'MyISAM');
INSERT INTO `sp_model` VALUES ('3', 'download', '下载', '1', '', '1', '{\"1\":[\"3\",\"28\",\"30\",\"32\",\"2\",\"5\",\"31\"],\"2\":[\"13\",\"10\",\"27\",\"9\",\"12\",\"16\",\"17\",\"19\",\"11\",\"20\",\"14\",\"29\"]}', '1:基础,2:扩展', '', '', '', '', 'id:编号\r\ntitle:标题', '0', '', '', '1383891252', '1387260449', '1', 'MyISAM');

-- ----------------------------
-- Table structure for sp_order
-- ----------------------------
DROP TABLE IF EXISTS `sp_order`;
CREATE TABLE `sp_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `openid` varchar(255) NOT NULL DEFAULT '' COMMENT '用户的openid',
  `number` varchar(255) NOT NULL DEFAULT '' COMMENT '订单编号',
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '订单标题（自动生成）',
  `stid` int(11) NOT NULL DEFAULT '0' COMMENT '场馆类型ID',
  `amount` float(11,1) NOT NULL DEFAULT '0.0' COMMENT '订单金额',
  `spaceinfo` varchar(255) NOT NULL DEFAULT '' COMMENT '预定的场地信息',
  `yearinfo` int(11) NOT NULL DEFAULT '0' COMMENT '订单年份',
  `dateinfo` varchar(20) NOT NULL DEFAULT '' COMMENT '预定日期',
  `timeinfo` varchar(255) NOT NULL DEFAULT '' COMMENT '预定时段',
  `placeinfo` varchar(255) NOT NULL DEFAULT '' COMMENT '预定片场',
  `hourinfo` varchar(255) NOT NULL DEFAULT '' COMMENT '预定时长',
  `weekinfo` varchar(255) NOT NULL DEFAULT '' COMMENT '星期几',
  `ispay` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否支付：0->否，1->是，2->过期未支付，3->退订，4->结束，5->改签，6->过期未入',
  `paytime` int(11) NOT NULL DEFAULT '0' COMMENT '支付时间',
  `isdel` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0->否，1->是',
  `path` varchar(255) NOT NULL DEFAULT '' COMMENT '预定的场馆路径',
  `addtime` int(11) NOT NULL DEFAULT '0' COMMENT '添加时间',
  `isendorse` tinyint(11) NOT NULL DEFAULT '0' COMMENT '是否改签：0->否，1->是',
  `icon` varchar(255) NOT NULL DEFAULT '' COMMENT '运动类型图标',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=75 DEFAULT CHARSET=utf8 COMMENT='用户订单表';

-- ----------------------------
-- Records of sp_order
-- ----------------------------
INSERT INTO `sp_order` VALUES ('1', '1', 'openid', '201606211538576960', '篮球馆预定信息', '1', '30.0', '', '2016', '06月23日', '09:00--10:00', '室内篮球3号场订场信息', '1小时', '周四', '2', '0', '0', '全民健身中心：室内篮球3号场', '1466594963', '0', '/Public/Mobile/img/basketball.png');
INSERT INTO `sp_order` VALUES ('2', '1', 'openid', '201606211540245503', '篮球馆预定信息', '1', '40.0', '', '2016', '06月23日', '10:00--11:00', '室内篮球3号场订场信息', '1小时', '周四', '2', '0', '0', '全民健身中心：室内篮球3号场', '1466594963', '0', '/Public/Mobile/img/basketball.png');
INSERT INTO `sp_order` VALUES ('3', '1', 'openid', '201606211540323169', '篮球馆预定信息', '1', '50.0', '', '2016', '06月21日', '09:00--10:00', '室内篮球2号场订场信息', '1小时', '周四', '2', '0', '0', '全民健身中心：室内篮球2号场', '1466594963', '0', '/Public/Mobile/img/basketball.png');
INSERT INTO `sp_order` VALUES ('4', '1', 'openid', '201606231441525998', '篮球馆预定信息', '1', '80.0', '', '2016', '06月23日', '10:00--12:00', '室内篮球1号场订场信息', '2小时', '周四', '2', '0', '0', '全民健身中心：室内篮球1号场', '1466664112', '0', '/Public/Mobile/img/basketball.png');
INSERT INTO `sp_order` VALUES ('5', '1', 'openid', '201606231450082505', '篮球馆预定信息', '1', '40.0', '', '2016', '06月23日', '09:00--10:00', '室内篮球1号场订场信息', '1小时', '周四', '2', '0', '0', '全民健身中心：室内篮球1号场', '1466664608', '0', '/Public/Mobile/img/basketball.png');
INSERT INTO `sp_order` VALUES ('32', '1', 'openid', '201606240941309124', '篮球馆预定信息', '1', '45.0', '', '2016', '06月24日', '11:30--12:30', '室内篮球1号场订场信息', '1小时', '周四', '2', '0', '0', '全民健身中心：室内篮球1号场', '1466732490', '0', '/Public/Mobile/img/basketball.png');
INSERT INTO `sp_order` VALUES ('7', '1', 'openid', '201606231453280722', '羽毛球馆预定信息', '3', '40.0', '', '2016', '06月23日', '11:30--12:30', '羽毛球场1号场订场信息', '1小时', '周四', '2', '0', '0', '全民健身中心：羽毛球场1号场', '1466664808', '0', '/Public/Mobile/img/badmintion.png');
INSERT INTO `sp_order` VALUES ('8', '1', 'openid', '201606231453378369', '羽毛球馆预定信息', '3', '20.0', '', '2016', '06月23日', '09:30--11:00', '羽毛球场1号场订场信息', '2小时', '周四', '2', '0', '0', '全民健身中心：羽毛球场1号场', '1466664818', '0', '/Public/Mobile/img/badmintion.png');
INSERT INTO `sp_order` VALUES ('9', '1', 'openid', '201606231453450311', '羽毛球馆预定信息', '3', '20.0', '', '2016', '06月23日', '09:00--13:00', '羽毛球场1号场订场信息', '1小时', '周四', '2', '0', '0', '全民健身中心：羽毛球场1号场', '1466664825', '0', '/Public/Mobile/img/badmintion.png');
INSERT INTO `sp_order` VALUES ('10', '1', 'openid', '201606231454556880', '羽毛球馆预定信息', '3', '40.0', '', '2016', '06月23日', '10:30--11:30', '羽毛球场1号场订场信息', '1小时', '周四', '2', '0', '0', '全民健身中心：羽毛球场1号场', '1466664895', '0', '/Public/Mobile/img/badmintion.png');
INSERT INTO `sp_order` VALUES ('14', '1', 'openid', '201606231511304931', '羽毛球馆预定信息', '3', '20.0', '', '2016', '06月23日', '14:00--14:30', '羽毛球场1号场订场信息', '1.5小时', '周四', '2', '0', '0', '全民健身中心：羽毛球场1号场', '1466665890', '0', '/Public/Mobile/img/badmintion.png');
INSERT INTO `sp_order` VALUES ('15', '1', 'openid', '201606231513561187', '羽毛球馆预定信息', '3', '20.0', '', '2016', '06月23日', '10:00--10:30', '羽毛球场1号场订场信息', '0.5小时', '周四', '2', '0', '0', '全民健身中心：羽毛球场1号场', '1466666036', '0', '/Public/Mobile/img/badmintion.png');
INSERT INTO `sp_order` VALUES ('20', '1', 'openid', '201606231523145300', '羽毛球馆预定信息', '3', '40.0', '', '2016', '06月23日', '13:00--14:00', '羽毛球场1号场订场信息', '1小时', '周四', '2', '0', '0', '全民健身中心：羽毛球场1号场', '1466666594', '0', '/Public/Mobile/img/badmintion.png');
INSERT INTO `sp_order` VALUES ('21', '1', 'openid', '201606231523368064', '篮球馆预定信息', '1', '50.0', '', '2016', '06月23日', '12:00--13:00', '室内篮球1号场订场信息', '1小时', '周四', '2', '0', '0', '全民健身中心：室内篮球1号场', '1466666617', '0', '/Public/Mobile/img/basketball.png');
INSERT INTO `sp_order` VALUES ('31', '1', 'openid', '201606231541574220', '篮球馆预定信息', '1', '40.0', '', '2016', '06月23日', '10:00--11:00', '室内篮球4号场订场信息', '1小时', '周四', '2', '0', '0', '全民健身中心：室内篮球4号场', '1466667717', '0', '/Public/Mobile/img/basketball.png');
INSERT INTO `sp_order` VALUES ('33', '1', 'openid', '201606242057137061', '篮球馆预定信息', '1', '40.0', '', '2016', '06月25日', '09:00--10:00', '室内篮球1号场订场信息', '1小时', '周六', '2', '0', '0', '全民健身中心：室内篮球1号场', '1466773033', '0', '/Public/Mobile/img/basketball.png');
INSERT INTO `sp_order` VALUES ('34', '1', 'openid', '201606242108134372', '篮球馆预定信息', '1', '40.0', '', '2016', '06月24日', '09:00--10:00', '室内篮球2号场订场信息', '1小时', '周五', '2', '0', '0', '全民健身中心：室内篮球2号场', '1466773693', '0', '/Public/Mobile/img/basketball.png');
INSERT INTO `sp_order` VALUES ('35', '1', 'openid', '201606261132470648', '篮球馆预定信息', '1', '40.0', '', '2016', '06月26日', '09:00--10:00', '室内篮球3号场订场信息', '1小时', '周日', '2', '1466911983', '0', '全民健身中心：室内篮球3号场', '1466911967', '0', '/Public/Mobile/img/basketball.png');
INSERT INTO `sp_order` VALUES ('36', '1', 'openid', '201606261141288804', '篮球馆预定信息', '1', '40.0', '', '2016', '06月26日', '09:00--10:00', '室内篮球2号场订场信息', '1小时', '周日', '2', '0', '0', '全民健身中心：室内篮球2号场', '1466912488', '0', '/Public/Mobile/img/basketball.png');
INSERT INTO `sp_order` VALUES ('37', '1', 'openid', '201606261141441068', '篮球馆预定信息', '1', '120.0', '', '2016', '06月26日', '09:00--12:00', '室内篮球4号场订场信息', '3小时', '周日', '2', '0', '0', '全民健身中心：室内篮球4号场', '1466912504', '0', '/Public/Mobile/img/basketball.png');
INSERT INTO `sp_order` VALUES ('38', '1', 'oKoKNtz07JZcK2SobdqDdtjrq6QM', '201606271428445040', '篮球馆预定信息', '1', '40.0', '', '2016', '06月27日', '09:00--10:00', '室内篮球1号场订场信息', '1小时', '周一', '2', '1467008933', '0', '全民健身中心：室内篮球1号场', '1467008925', '0', '/Public/Mobile/img/basketball.png');
INSERT INTO `sp_order` VALUES ('39', '1', 'oKoKNtz07JZcK2SobdqDdtjrq6QM', '201606271442036798', '篮球馆预定信息', '1', '40.0', '', '2016', '06月27日', '09:00--10:00', '室内篮球2号场订场信息', '1小时', '周一', '2', '0', '0', '全民健身中心：室内篮球2号场', '1467009723', '0', '/Public/Mobile/img/basketball.png');
INSERT INTO `sp_order` VALUES ('40', '1', '123', '201606271525300830', '篮球馆预定信息', '1', '40.0', '', '2016', '06月27日', '09:00--10:00', '室内篮球3号场订场信息', '1小时', '周一', '2', '1467014114', '0', '全民健身中心：室内篮球3号场', '1467012330', '0', '/Public/Mobile/img/basketball.png');
INSERT INTO `sp_order` VALUES ('41', '1', 'oKoKNtz07JZcK2SobdqDdtjrq6QM', '201606271611468118', '篮球馆预定信息', '1', '40.0', '', '2016', '06月27日', '09:00--10:00', '室内篮球2号场订场信息', '1小时', '周一', '2', '0', '0', '全民健身中心：室内篮球2号场', '1467018671', '0', '/Public/Mobile/img/basketball.png');
INSERT INTO `sp_order` VALUES ('42', '1', 'oKoKNtz07JZcK2SobdqDdtjrq6QM', '201606280959481345', '篮球馆预定信息', '1', '40.0', '', '2016', '06月28日', '09:00--10:00', '室内篮球1号场订场信息', '1小时', '周二', '2', '0', '0', '全民健身中心：室内篮球1号场', '1467079188', '0', '/Public/Mobile/img/basketball.png');
INSERT INTO `sp_order` VALUES ('43', '1', 'oKoKNtz07JZcK2SobdqDdtjrq6QM', '201606281000105157', '篮球馆预定信息', '1', '40.0', '', '2016', '06月28日', '09:30--10:30', '室内篮球1号场订场信息', '1小时', '周二', '2', '0', '0', '全民健身中心：室内篮球1号场', '1467079210', '0', '/Public/Mobile/img/basketball.png');
INSERT INTO `sp_order` VALUES ('44', '1', 'oKoKNtz07JZcK2SobdqDdtjrq6QM', '201606281001330224', '篮球馆预定信息', '1', '60.0', '', '2016', '06月28日', '10:30--12:00', '室内篮球1号场订场信息', '1.5小时', '周二', '2', '0', '0', '全民健身中心：室内篮球1号场', '1467079293', '0', '/Public/Mobile/img/basketball.png');
INSERT INTO `sp_order` VALUES ('45', '1', 'oKoKNtz07JZcK2SobdqDdtjrq6QM', '201606281004120522', '篮球馆预定信息', '1', '50.0', '', '2016', '06月28日', '12:00--13:00', '室内篮球1号场订场信息', '1小时', '周二', '2', '0', '0', '全民健身中心：室内篮球1号场', '1467079452', '0', '/Public/Mobile/img/basketball.png');
INSERT INTO `sp_order` VALUES ('46', '1', 'oKoKNtz07JZcK2SobdqDdtjrq6QM', '201606281005182486', '篮球馆预定信息', '1', '40.0', '', '2016', '06月28日', '09:00--10:00', '室内篮球2号场订场信息', '1小时', '周二', '2', '0', '0', '全民健身中心：室内篮球2号场', '1467079518', '0', '/Public/Mobile/img/basketball.png');
INSERT INTO `sp_order` VALUES ('47', '1', 'oKoKNtz07JZcK2SobdqDdtjrq6QM', '201606281654247886', '篮球馆预定信息', '1', '80.0', '', '2016', '06月29日', '09:00--11:00', '室内篮球1号场订场信息', '2小时', '周三', '2', '1467104074', '0', '全民健身中心：室内篮球1号场', '1467104064', '0', '/Public/Mobile/img/basketball.png');
INSERT INTO `sp_order` VALUES ('48', '1', 'oKoKNtz07JZcK2SobdqDdtjrq6QM', '201606281713503534', '篮球馆预定信息', '1', '80.0', '', '2016', '06月29日', '10:00--12:00', '室内篮球2号场订场信息', '2小时', '周三', '2', '0', '0', '全民健身中心：室内篮球2号场', '1467105230', '0', '/Public/Mobile/img/basketball.png');
INSERT INTO `sp_order` VALUES ('49', '1', 'oKoKNtz07JZcK2SobdqDdtjrq6QM', '201606281719428513', '篮球馆预定信息', '1', '80.0', '', '2016', '06月29日', '10:00--12:00', '室内篮球1号场订场信息', '2小时', '周三', '2', '0', '0', '全民健身中心：室内篮球1号场', '1467105582', '0', '/Public/Mobile/img/basketball.png');
INSERT INTO `sp_order` VALUES ('50', '1', 'oKoKNtz07JZcK2SobdqDdtjrq6QM', '201606281757259130', '篮球馆预定信息', '1', '80.0', '', '2016', '06月29日', '10:00--12:00', '室内篮球1号场订场信息', '2小时', '周三', '2', '1467107864', '0', '全民健身中心：室内篮球1号场', '1467107845', '0', '/Public/Mobile/img/basketball.png');
INSERT INTO `sp_order` VALUES ('51', '1', 'oKoKNtz07JZcK2SobdqDdtjrq6QM', '201606291125232515', '篮球馆预定信息', '1', '80.0', '', '2016', '07月01日', '09:00--11:00', '室内篮球1号场订场信息', '2小时', '周五', '6', '1467170728', '0', '全民健身中心：室内篮球1号场', '1467170723', '0', '/Public/Mobile/img/basketball.png');
INSERT INTO `sp_order` VALUES ('52', '1', 'oKoKNtz07JZcK2SobdqDdtjrq6QM', '201606291125492927', '篮球馆预定信息', '1', '80.0', '', '2016', '07月01日', '10:00--12:00', '室内篮球1号场订场信息', '2小时', '周五', '6', '1467170756', '0', '全民健身中心：室内篮球1号场', '1467170749', '0', '/Public/Mobile/img/basketball.png');
INSERT INTO `sp_order` VALUES ('53', '1', 'oKoKNtz07JZcK2SobdqDdtjrq6QM', '201606291128121887', '篮球馆预定信息', '1', '40.0', '', '2016', '07月01日', '09:00--10:00', '室内篮球2号场订场信息', '1小时', '周五', '4', '1467170897', '0', '全民健身中心：室内篮球2号场', '1467170892', '0', '/Public/Mobile/img/basketball.png');
INSERT INTO `sp_order` VALUES ('54', '1', 'oKoKNtz07JZcK2SobdqDdtjrq6QM', '201607011400373212', '篮球馆预定信息', '1', '200.0', '', '2016', '07月01日', '12:00--16:00', '室内篮球1号场订场信息', '4小时', '周五', '1', '1467352843', '0', '全民健身中心：室内篮球1号场', '1467352837', '0', '/Public/Mobile/img/basketball.png');
INSERT INTO `sp_order` VALUES ('58', '1', 'oKoKNtz07JZcK2SobdqDdtjrq6QM', '201607041603426758', '篮球馆预定信息', '1', '90.0', '', '2016', '07月05日', '11:00--13:00', '室内篮球2号场订场信息', '2小时', '周二', '1', '1467619437', '0', '全民健身中心：室内篮球2号场', '1467619422', '0', '/Public/Mobile/img/basketball.png');
INSERT INTO `sp_order` VALUES ('59', '1', 'oKoKNtz07JZcK2SobdqDdtjrq6QM', '201607041612190729', '篮球馆预定信息', '1', '90.0', '', '2016', '07月05日', '11:30--12:30', '室内篮球3号场订场信息', '2小时', '周二', '1', '1467619944', '0', '全民健身中心：室内篮球3号场', '1467619940', '0', '/Public/Mobile/img/basketball.png');
INSERT INTO `sp_order` VALUES ('60', '1', 'oKoKNtz07JZcK2SobdqDdtjrq6QM', '201607111632287463', '篮球馆预定信息', '1', '50.0', '', '2016', '07月11日', '16:30--17:30', '室内篮球2号场订场信息', '1小时', '周一', '0', '0', '0', '全民健身中心：室内篮球2号场', '1468225948', '0', '/Public/Mobile/img/basketball.png');
INSERT INTO `sp_order` VALUES ('61', '1', 'oKoKNtz07JZcK2SobdqDdtjrq6QM', '201607121416553398', '篮球馆预定信息', '1', '40.0', '', '2016', '07月13日', '09:00--10:00', '室内篮球1号场订场信息', '1小时', '周三', '1', '1468308203', '0', '全民健身中心：室内篮球1号场', '1468304215', '0', '/Public/Mobile/img/basketball.png');
INSERT INTO `sp_order` VALUES ('62', '2', 'oKoKNtz07JZcK2SobdqDdtjrq6QM', '201607201346284346', '篮球馆预定信息', '1', '40.0', '', '2016', '07月21日', '09:00--10:00', '室内篮球1号场订场信息', '1小时', '周四', '4', '1468993588', '0', '全民健身中心：室内篮球1号场', '1468993588', '0', '/Public/Mobile/img/basketball.png');
INSERT INTO `sp_order` VALUES ('63', '2', 'oKoKNtz07JZcK2SobdqDdtjrq6QM', '201607201519118318', '篮球馆预定信息', '1', '40.0', '', '2016', '07月21日', '09:00--10:00', '室内篮球2号场订场信息', '1小时', '周四', '6', '1468999151', '0', '全民健身中心：室内篮球2号场', '1468999151', '0', '/Public/Mobile/img/basketball.png');
INSERT INTO `sp_order` VALUES ('64', '2', 'oKoKNtz07JZcK2SobdqDdtjrq6QM', '201607201522452707', '篮球馆预定信息', '1', '40.0', '', '2016', '07月21日', '09:00--10:00', '室内篮球3号场订场信息', '1小时', '周四', '6', '1468999365', '0', '全民健身中心：室内篮球3号场', '1468999365', '0', '/Public/Mobile/img/basketball.png');
INSERT INTO `sp_order` VALUES ('65', '2', 'oKoKNtz07JZcK2SobdqDdtjrq6QM', '201607201527154183', '篮球馆预定信息', '1', '40.0', '', '2016', '07月21日', '09:00--10:00', '室内篮球4号场订场信息', '1小时', '周四', '6', '1468999635', '0', '全民健身中心：室内篮球4号场', '1468999635', '0', '/Public/Mobile/img/basketball.png');
INSERT INTO `sp_order` VALUES ('66', '2', 'oKoKNtz07JZcK2SobdqDdtjrq6QM', '201607201530075991', '篮球馆预定信息', '1', '40.0', '', '2016', '07月21日', '09:00--10:00', '室内篮球5号场订场信息', '1小时', '周四', '6', '1468999807', '0', '全民健身中心：室内篮球5号场', '1468999807', '0', '/Public/Mobile/img/basketball.png');
INSERT INTO `sp_order` VALUES ('67', '2', 'oKoKNtz07JZcK2SobdqDdtjrq6QM', '201607211004521475', '篮球馆预定信息', '1', '40.0', '', '2016', '07月22日', '09:00--10:00', '室内篮球1号场订场信息', '1小时', '周五', '3', '1469066692', '0', '全民健身中心：室内篮球1号场', '1469066692', '0', '/Public/Mobile/img/basketball.png');
INSERT INTO `sp_order` VALUES ('68', '2', 'oKoKNtz07JZcK2SobdqDdtjrq6QM', '201607211537228409', '篮球馆预定信息', '1', '40.0', '', '2016', '07月22日', '09:00--10:00', '室内篮球1号场订场信息', '1小时', '周五', '5', '1469086642', '0', '全民健身中心：室内篮球1号场', '1469086642', '0', '/Public/Mobile/img/basketball.png');
INSERT INTO `sp_order` VALUES ('69', '2', 'oKoKNtz07JZcK2SobdqDdtjrq6QM', '201607211631029388', '篮球馆预定信息', '1', '40.0', '', '2016', '07月22日', '09:00--10:00', '室内篮球2号场订场信息', '1小时', '周五', '5', '1469089862', '0', '全民健身中心：室内篮球2号场', '1469089862', '0', '/Public/Mobile/img/basketball.png');
INSERT INTO `sp_order` VALUES ('70', '2', 'oKoKNtz07JZcK2SobdqDdtjrq6QM', '201607211642245353', '篮球馆预定信息', '1', '40.0', '', '2016', '07月22日', '09:00--10:00', '室内篮球3号场订场信息', '1小时', '周五', '3', '1469090544', '0', '全民健身中心：室内篮球3号场', '1469090544', '0', '/Public/Mobile/img/basketball.png');
INSERT INTO `sp_order` VALUES ('71', '2', 'oKoKNtz07JZcK2SobdqDdtjrq6QM', '201607211658354851', '篮球馆预定信息', '1', '40.0', '', '2016', '07月22日', '10:00--11:00', '室内篮球2号场订场信息', '1小时', '周五', '5', '1469091515', '0', '全民健身中心：室内篮球2号场', '1469091515', '0', '/Public/Mobile/img/basketball.png');
INSERT INTO `sp_order` VALUES ('72', '2', 'oKoKNtz07JZcK2SobdqDdtjrq6QM', '201607211701425427', '篮球馆预定信息', '1', '40.0', '', '2016', '07月22日', '11:00--12:00', '室内篮球2号场订场信息', '1小时', '周五', '5', '1469091702', '0', '全民健身中心：室内篮球2号场', '1469091702', '0', '/Public/Mobile/img/basketball.png');
INSERT INTO `sp_order` VALUES ('73', '2', 'oKoKNtz07JZcK2SobdqDdtjrq6QM', '201607211709183419', '篮球馆预定信息', '1', '40.0', '', '2016', '07月22日', '09:00--10:00', '室内篮球1号场订场信息', '1小时', '周五', '6', '1469092158', '0', '全民健身中心：室内篮球1号场', '1469092158', '0', '/Public/Mobile/img/basketball.png');
INSERT INTO `sp_order` VALUES ('74', '2', 'oKoKNtz07JZcK2SobdqDdtjrq6QM', '201607221125164111', '篮球馆预定信息', '1', '50.0', '', '2016', '07月22日', '14:30--15:30', '室内篮球1号场订场信息', '1小时', '周五', '1', '1469157917', '0', '全民健身中心：室内篮球1号场', '1469157916', '0', '/Public/Mobile/img/basketball.png');

-- ----------------------------
-- Table structure for sp_order_config
-- ----------------------------
DROP TABLE IF EXISTS `sp_order_config`;
CREATE TABLE `sp_order_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `minhour` int(11) NOT NULL DEFAULT '0' COMMENT '预定最低时长',
  `maxhour` int(11) NOT NULL DEFAULT '0' COMMENT '预定最多时长',
  `maxplace` int(11) NOT NULL DEFAULT '0' COMMENT '预定最多场地',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='预定规则配置表';

-- ----------------------------
-- Records of sp_order_config
-- ----------------------------

-- ----------------------------
-- Table structure for sp_order_place
-- ----------------------------
DROP TABLE IF EXISTS `sp_order_place`;
CREATE TABLE `sp_order_place` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `oid` int(11) NOT NULL DEFAULT '0' COMMENT '订单ID',
  `spaceinfo` varchar(255) NOT NULL DEFAULT '' COMMENT '预定的场地信息',
  `dateinfo` varchar(20) NOT NULL DEFAULT '' COMMENT '预定日期',
  `timeinfo` varchar(255) NOT NULL DEFAULT '' COMMENT '预定时段',
  `placeinfo` varchar(255) NOT NULL DEFAULT '' COMMENT '预定片场',
  `price` float(11,1) NOT NULL DEFAULT '0.0' COMMENT '价格',
  `ispay` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否支付：0->否，1->是，2->过期，3->退订，4->结束，5->改签',
  `path` varchar(255) NOT NULL DEFAULT '' COMMENT '预定的场馆路径',
  `addtime` int(11) NOT NULL DEFAULT '0' COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=175 DEFAULT CHARSET=utf8 COMMENT=' 订单详情表';

-- ----------------------------
-- Records of sp_order_place
-- ----------------------------
INSERT INTO `sp_order_place` VALUES ('1', '1', '室内篮球3号场', '06月23日', '09:00--09:30', '3', '0.0', '2', '全民健身中心：室内篮球3号场', '1466594963');
INSERT INTO `sp_order_place` VALUES ('2', '1', '室内篮球3号场', '06月23日', '09:30--10:00', '3', '0.0', '2', '全民健身中心：室内篮球3号场', '1466594963');
INSERT INTO `sp_order_place` VALUES ('3', '2', '室内篮球3号场', '06月23日', '10:00--10:30', '3', '0.0', '2', '全民健身中心：室内篮球3号场', '1466594963');
INSERT INTO `sp_order_place` VALUES ('4', '2', '室内篮球3号场', '06月23日', '10:30--11:00', '3', '0.0', '2', '全民健身中心：室内篮球3号场', '1466594963');
INSERT INTO `sp_order_place` VALUES ('5', '3', '室内篮球2号场', '06月21日', '09:00--09:30', '2', '0.0', '2', '全民健身中心：室内篮球2号场', '1466594963');
INSERT INTO `sp_order_place` VALUES ('6', '3', '室内篮球2号场', '06月21日', '09:30--10:00', '2', '0.0', '2', '全民健身中心：室内篮球2号场', '1466594963');
INSERT INTO `sp_order_place` VALUES ('7', '4', '室内篮球1号场', '06月23日', '10:00--10:30', '1', '0.0', '2', '全民健身中心：室内篮球1号场', '1466664112');
INSERT INTO `sp_order_place` VALUES ('8', '4', '室内篮球1号场', '06月23日', '10:30--11:00', '1', '0.0', '2', '全民健身中心：室内篮球1号场', '1466664112');
INSERT INTO `sp_order_place` VALUES ('9', '4', '室内篮球1号场', '06月23日', '11:00--11:30', '1', '0.0', '2', '全民健身中心：室内篮球1号场', '1466664112');
INSERT INTO `sp_order_place` VALUES ('10', '4', '室内篮球1号场', '06月23日', '11:30--12:00', '1', '0.0', '2', '全民健身中心：室内篮球1号场', '1466664112');
INSERT INTO `sp_order_place` VALUES ('11', '5', '室内篮球1号场', '06月23日', '09:00--09:30', '1', '0.0', '2', '全民健身中心：室内篮球1号场', '1466664608');
INSERT INTO `sp_order_place` VALUES ('12', '5', '室内篮球1号场', '06月23日', '09:30--10:00', '1', '0.0', '2', '全民健身中心：室内篮球1号场', '1466664608');
INSERT INTO `sp_order_place` VALUES ('64', '32', '室内篮球1号场', '06月24日', '11:30--12:00', '1', '0.0', '2', '全民健身中心：室内篮球1号场', '1466732490');
INSERT INTO `sp_order_place` VALUES ('14', '7', '羽毛球场1号场', '06月23日', '11:30--12:00', '7', '0.0', '2', '全民健身中心：羽毛球场1号场', '1466664808');
INSERT INTO `sp_order_place` VALUES ('15', '7', '羽毛球场1号场', '06月23日', '12:00--12:30', '7', '0.0', '2', '全民健身中心：羽毛球场1号场', '1466664808');
INSERT INTO `sp_order_place` VALUES ('16', '8', '羽毛球场1号场', '06月23日', '09:30--10:00', '7', '0.0', '2', '全民健身中心：羽毛球场1号场', '1466664818');
INSERT INTO `sp_order_place` VALUES ('17', '8', '羽毛球场2号场', '06月23日', '09:30--10:00', '8', '0.0', '2', '全民健身中心：羽毛球场2号场', '1466664818');
INSERT INTO `sp_order_place` VALUES ('18', '8', '羽毛球场2号场', '06月23日', '10:00--10:30', '8', '0.0', '2', '全民健身中心：羽毛球场2号场', '1466664818');
INSERT INTO `sp_order_place` VALUES ('19', '8', '羽毛球场3号场', '06月23日', '10:30--11:00', '9', '0.0', '2', '全民健身中心：羽毛球场3号场', '1466664818');
INSERT INTO `sp_order_place` VALUES ('20', '9', '羽毛球场1号场', '06月23日', '09:00--09:30', '7', '0.0', '2', '全民健身中心：羽毛球场1号场', '1466664825');
INSERT INTO `sp_order_place` VALUES ('21', '9', '羽毛球场2号场', '06月23日', '12:30--13:00', '8', '0.0', '2', '全民健身中心：羽毛球场2号场', '1466664825');
INSERT INTO `sp_order_place` VALUES ('22', '10', '羽毛球场1号场', '06月23日', '10:30--11:00', '7', '0.0', '2', '全民健身中心：羽毛球场1号场', '1466664895');
INSERT INTO `sp_order_place` VALUES ('23', '10', '羽毛球场1号场', '06月23日', '11:00--11:30', '7', '0.0', '2', '全民健身中心：羽毛球场1号场', '1466664895');
INSERT INTO `sp_order_place` VALUES ('24', '11', '羽毛球场3号场', '06月23日', '09:00--09:30', '9', '0.0', '0', '全民健身中心：羽毛球场3号场', '1466665121');
INSERT INTO `sp_order_place` VALUES ('25', '11', '羽毛球场3号场', '06月23日', '09:30--10:00', '9', '0.0', '0', '全民健身中心：羽毛球场3号场', '1466665121');
INSERT INTO `sp_order_place` VALUES ('26', '12', '羽毛球场3号场', '06月23日', '09:00--09:30', '9', '0.0', '0', '全民健身中心：羽毛球场3号场', '1466665129');
INSERT INTO `sp_order_place` VALUES ('27', '12', '羽毛球场3号场', '06月23日', '10:00--10:30', '9', '0.0', '0', '全民健身中心：羽毛球场3号场', '1466665129');
INSERT INTO `sp_order_place` VALUES ('28', '13', '羽毛球场2号场', '06月23日', '10:30--11:00', '8', '0.0', '0', '全民健身中心：羽毛球场2号场', '1466665600');
INSERT INTO `sp_order_place` VALUES ('29', '13', '羽毛球场2号场', '06月23日', '11:00--11:30', '8', '0.0', '0', '全民健身中心：羽毛球场2号场', '1466665600');
INSERT INTO `sp_order_place` VALUES ('30', '14', '羽毛球场1号场', '06月23日', '14:00--14:30', '7', '0.0', '2', '全民健身中心：羽毛球场1号场', '1466665890');
INSERT INTO `sp_order_place` VALUES ('31', '14', '羽毛球场2号场', '06月23日', '14:30--15:00', '8', '0.0', '2', '全民健身中心：羽毛球场2号场', '1466665890');
INSERT INTO `sp_order_place` VALUES ('32', '14', '羽毛球场3号场', '06月23日', '14:00--14:30', '9', '0.0', '2', '全民健身中心：羽毛球场3号场', '1466665890');
INSERT INTO `sp_order_place` VALUES ('33', '15', '羽毛球场1号场', '06月23日', '10:00--10:30', '7', '0.0', '2', '全民健身中心：羽毛球场1号场', '1466666036');
INSERT INTO `sp_order_place` VALUES ('34', '16', '羽毛球场2号场', '06月23日', '13:00--13:30', '8', '0.0', '0', '全民健身中心：羽毛球场2号场', '1466666133');
INSERT INTO `sp_order_place` VALUES ('35', '16', '羽毛球场3号场', '06月23日', '13:00--13:30', '9', '0.0', '0', '全民健身中心：羽毛球场3号场', '1466666133');
INSERT INTO `sp_order_place` VALUES ('36', '17', '羽毛球场2号场', '06月23日', '09:00--09:30', '8', '0.0', '0', '全民健身中心：羽毛球场2号场', '1466666390');
INSERT INTO `sp_order_place` VALUES ('37', '18', '羽毛球场3号场', '06月23日', '11:30--12:00', '9', '0.0', '0', '全民健身中心：羽毛球场3号场', '1466666527');
INSERT INTO `sp_order_place` VALUES ('38', '18', '羽毛球场3号场', '06月23日', '12:00--12:30', '9', '0.0', '0', '全民健身中心：羽毛球场3号场', '1466666527');
INSERT INTO `sp_order_place` VALUES ('39', '19', '羽毛球场3号场', '06月23日', '12:00--12:30', '9', '0.0', '0', '全民健身中心：羽毛球场3号场', '1466666545');
INSERT INTO `sp_order_place` VALUES ('40', '19', '羽毛球场3号场', '06月23日', '12:30--13:00', '9', '0.0', '0', '全民健身中心：羽毛球场3号场', '1466666545');
INSERT INTO `sp_order_place` VALUES ('41', '20', '羽毛球场1号场', '06月23日', '13:00--13:30', '7', '0.0', '2', '全民健身中心：羽毛球场1号场', '1466666594');
INSERT INTO `sp_order_place` VALUES ('42', '20', '羽毛球场1号场', '06月23日', '13:30--14:00', '7', '0.0', '2', '全民健身中心：羽毛球场1号场', '1466666594');
INSERT INTO `sp_order_place` VALUES ('43', '21', '室内篮球1号场', '06月23日', '12:00--12:30', '1', '0.0', '2', '全民健身中心：室内篮球1号场', '1466666617');
INSERT INTO `sp_order_place` VALUES ('44', '21', '室内篮球1号场', '06月23日', '12:30--13:00', '1', '0.0', '2', '全民健身中心：室内篮球1号场', '1466666617');
INSERT INTO `sp_order_place` VALUES ('45', '22', '羽毛球场', '06月23日', '--08:30', '', '0.0', '0', '全民健身中心：羽毛球场', '1466666631');
INSERT INTO `sp_order_place` VALUES ('46', '23', '羽毛球场3号场', '06月23日', '11:30--12:00', '9', '0.0', '0', '全民健身中心：羽毛球场3号场', '1466666636');
INSERT INTO `sp_order_place` VALUES ('47', '23', '羽毛球场3号场', '06月23日', '12:00--12:30', '9', '0.0', '0', '全民健身中心：羽毛球场3号场', '1466666636');
INSERT INTO `sp_order_place` VALUES ('48', '24', '羽毛球场3号场', '06月23日', '11:30--12:00', '9', '0.0', '0', '全民健身中心：羽毛球场3号场', '1466666653');
INSERT INTO `sp_order_place` VALUES ('49', '24', '羽毛球场3号场', '06月23日', '12:00--12:30', '9', '0.0', '0', '全民健身中心：羽毛球场3号场', '1466666653');
INSERT INTO `sp_order_place` VALUES ('50', '25', '室内篮球4号场', '06月23日', '09:00--09:30', '4', '0.0', '0', '全民健身中心：室内篮球4号场', '1466666672');
INSERT INTO `sp_order_place` VALUES ('51', '25', '室内篮球4号场', '06月23日', '09:30--10:00', '4', '0.0', '0', '全民健身中心：室内篮球4号场', '1466666672');
INSERT INTO `sp_order_place` VALUES ('52', '26', '羽毛球场2号场', '06月23日', '13:30--14:00', '8', '0.0', '0', '全民健身中心：羽毛球场2号场', '1466666686');
INSERT INTO `sp_order_place` VALUES ('53', '26', '羽毛球场2号场', '06月23日', '14:00--14:30', '8', '0.0', '0', '全民健身中心：羽毛球场2号场', '1466666686');
INSERT INTO `sp_order_place` VALUES ('54', '27', '室内篮球2号场', '06月23日', '09:00--09:30', '2', '0.0', '0', '全民健身中心：室内篮球2号场', '1466666697');
INSERT INTO `sp_order_place` VALUES ('55', '27', '室内篮球2号场', '06月23日', '09:30--10:00', '2', '0.0', '0', '全民健身中心：室内篮球2号场', '1466666697');
INSERT INTO `sp_order_place` VALUES ('56', '28', '室内篮球2号场', '06月23日', '12:00--12:30', '2', '0.0', '0', '全民健身中心：室内篮球2号场', '1466666995');
INSERT INTO `sp_order_place` VALUES ('57', '28', '室内篮球2号场', '06月23日', '12:30--13:00', '2', '0.0', '0', '全民健身中心：室内篮球2号场', '1466666995');
INSERT INTO `sp_order_place` VALUES ('58', '29', '室内篮球3号场', '06月23日', '09:00--09:30', '3', '0.0', '0', '全民健身中心：室内篮球3号场', '1466667019');
INSERT INTO `sp_order_place` VALUES ('59', '29', '室内篮球3号场', '06月23日', '09:30--10:00', '3', '0.0', '0', '全民健身中心：室内篮球3号场', '1466667019');
INSERT INTO `sp_order_place` VALUES ('60', '30', '室内篮球5号场', '06月23日', '09:00--09:30', '5', '0.0', '0', '全民健身中心：室内篮球5号场', '1466667623');
INSERT INTO `sp_order_place` VALUES ('61', '30', '室内篮球5号场', '06月23日', '09:30--10:00', '5', '0.0', '0', '全民健身中心：室内篮球5号场', '1466667623');
INSERT INTO `sp_order_place` VALUES ('62', '31', '室内篮球4号场', '06月23日', '10:00--10:30', '4', '0.0', '2', '全民健身中心：室内篮球4号场', '1466667717');
INSERT INTO `sp_order_place` VALUES ('63', '31', '室内篮球4号场', '06月23日', '10:30--11:00', '4', '0.0', '2', '全民健身中心：室内篮球4号场', '1466667717');
INSERT INTO `sp_order_place` VALUES ('65', '32', '室内篮球1号场', '06月24日', '12:00--12:30', '1', '0.0', '2', '全民健身中心：室内篮球1号场', '1466732490');
INSERT INTO `sp_order_place` VALUES ('66', '33', '室内篮球1号场', '06月25日', '09:00--09:30', '1', '0.0', '2', '全民健身中心：室内篮球1号场', '1466773033');
INSERT INTO `sp_order_place` VALUES ('67', '33', '室内篮球1号场', '06月25日', '09:30--10:00', '1', '0.0', '2', '全民健身中心：室内篮球1号场', '1466773033');
INSERT INTO `sp_order_place` VALUES ('68', '34', '室内篮球2号场', '06月24日', '09:00--09:30', '2', '0.0', '2', '全民健身中心：室内篮球2号场', '1466773693');
INSERT INTO `sp_order_place` VALUES ('69', '34', '室内篮球2号场', '06月24日', '09:30--10:00', '2', '0.0', '2', '全民健身中心：室内篮球2号场', '1466773693');
INSERT INTO `sp_order_place` VALUES ('70', '35', '室内篮球3号场', '06月26日', '09:00--09:30', '3', '0.0', '2', '全民健身中心：室内篮球3号场', '1466911967');
INSERT INTO `sp_order_place` VALUES ('71', '35', '室内篮球3号场', '06月26日', '09:30--10:00', '3', '0.0', '2', '全民健身中心：室内篮球3号场', '1466911967');
INSERT INTO `sp_order_place` VALUES ('72', '36', '室内篮球2号场', '06月26日', '09:00--09:30', '2', '0.0', '2', '全民健身中心：室内篮球2号场', '1466912488');
INSERT INTO `sp_order_place` VALUES ('73', '36', '室内篮球2号场', '06月26日', '09:30--10:00', '2', '0.0', '2', '全民健身中心：室内篮球2号场', '1466912488');
INSERT INTO `sp_order_place` VALUES ('74', '37', '室内篮球4号场', '06月26日', '09:00--09:30', '4', '0.0', '2', '全民健身中心：室内篮球4号场', '1466912504');
INSERT INTO `sp_order_place` VALUES ('75', '37', '室内篮球4号场', '06月26日', '09:30--10:00', '4', '0.0', '2', '全民健身中心：室内篮球4号场', '1466912504');
INSERT INTO `sp_order_place` VALUES ('76', '37', '室内篮球4号场', '06月26日', '10:00--10:30', '4', '0.0', '2', '全民健身中心：室内篮球4号场', '1466912504');
INSERT INTO `sp_order_place` VALUES ('77', '37', '室内篮球4号场', '06月26日', '10:30--11:00', '4', '0.0', '2', '全民健身中心：室内篮球4号场', '1466912504');
INSERT INTO `sp_order_place` VALUES ('78', '37', '室内篮球4号场', '06月26日', '11:00--11:30', '4', '0.0', '2', '全民健身中心：室内篮球4号场', '1466912504');
INSERT INTO `sp_order_place` VALUES ('79', '37', '室内篮球4号场', '06月26日', '11:30--12:00', '4', '0.0', '2', '全民健身中心：室内篮球4号场', '1466912504');
INSERT INTO `sp_order_place` VALUES ('80', '38', '室内篮球1号场', '06月27日', '09:00--09:30', '1', '0.0', '2', '全民健身中心：室内篮球1号场', '1467008925');
INSERT INTO `sp_order_place` VALUES ('81', '38', '室内篮球1号场', '06月27日', '09:30--10:00', '1', '0.0', '2', '全民健身中心：室内篮球1号场', '1467008925');
INSERT INTO `sp_order_place` VALUES ('82', '39', '室内篮球2号场', '06月27日', '09:00--09:30', '2', '0.0', '2', '全民健身中心：室内篮球2号场', '1467009723');
INSERT INTO `sp_order_place` VALUES ('83', '39', '室内篮球2号场', '06月27日', '09:30--10:00', '2', '0.0', '2', '全民健身中心：室内篮球2号场', '1467009723');
INSERT INTO `sp_order_place` VALUES ('84', '40', '室内篮球3号场', '06月27日', '09:00--09:30', '3', '0.0', '2', '全民健身中心：室内篮球3号场', '1467012330');
INSERT INTO `sp_order_place` VALUES ('85', '40', '室内篮球3号场', '06月27日', '09:30--10:00', '3', '0.0', '2', '全民健身中心：室内篮球3号场', '1467012331');
INSERT INTO `sp_order_place` VALUES ('86', '41', '室内篮球2号场', '06月27日', '09:00--09:30', '2', '0.0', '2', '全民健身中心：室内篮球2号场', '1467015106');
INSERT INTO `sp_order_place` VALUES ('87', '41', '室内篮球2号场', '06月27日', '09:30--10:00', '2', '0.0', '2', '全民健身中心：室内篮球2号场', '1467015106');
INSERT INTO `sp_order_place` VALUES ('88', '42', '室内篮球1号场', '06月28日', '09:00--09:30', '1', '0.0', '2', '全民健身中心：室内篮球1号场', '1467079188');
INSERT INTO `sp_order_place` VALUES ('89', '42', '室内篮球1号场', '06月28日', '09:30--10:00', '1', '0.0', '2', '全民健身中心：室内篮球1号场', '1467079188');
INSERT INTO `sp_order_place` VALUES ('90', '43', '室内篮球1号场', '06月28日', '09:30--10:00', '1', '0.0', '2', '全民健身中心：室内篮球1号场', '1467079210');
INSERT INTO `sp_order_place` VALUES ('91', '43', '室内篮球1号场', '06月28日', '10:00--10:30', '1', '0.0', '2', '全民健身中心：室内篮球1号场', '1467079210');
INSERT INTO `sp_order_place` VALUES ('92', '44', '室内篮球1号场', '06月28日', '10:30--11:00', '1', '0.0', '2', '全民健身中心：室内篮球1号场', '1467079293');
INSERT INTO `sp_order_place` VALUES ('93', '44', '室内篮球1号场', '06月28日', '11:00--11:30', '1', '0.0', '2', '全民健身中心：室内篮球1号场', '1467079293');
INSERT INTO `sp_order_place` VALUES ('94', '44', '室内篮球1号场', '06月28日', '11:30--12:00', '1', '0.0', '2', '全民健身中心：室内篮球1号场', '1467079293');
INSERT INTO `sp_order_place` VALUES ('95', '45', '室内篮球1号场', '06月28日', '12:00--12:30', '1', '0.0', '2', '全民健身中心：室内篮球1号场', '1467079452');
INSERT INTO `sp_order_place` VALUES ('96', '45', '室内篮球1号场', '06月28日', '12:30--13:00', '1', '0.0', '2', '全民健身中心：室内篮球1号场', '1467079452');
INSERT INTO `sp_order_place` VALUES ('97', '46', '室内篮球2号场', '06月28日', '09:00--09:30', '2', '0.0', '2', '全民健身中心：室内篮球2号场', '1467079518');
INSERT INTO `sp_order_place` VALUES ('98', '46', '室内篮球2号场', '06月28日', '09:30--10:00', '2', '0.0', '2', '全民健身中心：室内篮球2号场', '1467079518');
INSERT INTO `sp_order_place` VALUES ('99', '47', '室内篮球1号场', '06月29日', '09:00--09:30', '1', '0.0', '2', '全民健身中心：室内篮球1号场', '1467104064');
INSERT INTO `sp_order_place` VALUES ('100', '47', '室内篮球1号场', '06月29日', '09:30--10:00', '1', '0.0', '2', '全民健身中心：室内篮球1号场', '1467104064');
INSERT INTO `sp_order_place` VALUES ('101', '47', '室内篮球1号场', '06月29日', '10:00--10:30', '1', '0.0', '2', '全民健身中心：室内篮球1号场', '1467104064');
INSERT INTO `sp_order_place` VALUES ('102', '47', '室内篮球1号场', '06月29日', '10:30--11:00', '1', '0.0', '2', '全民健身中心：室内篮球1号场', '1467104064');
INSERT INTO `sp_order_place` VALUES ('103', '48', '室内篮球2号场', '06月29日', '10:00--10:30', '2', '0.0', '2', '全民健身中心：室内篮球2号场', '1467105230');
INSERT INTO `sp_order_place` VALUES ('104', '48', '室内篮球2号场', '06月29日', '10:30--11:00', '2', '0.0', '2', '全民健身中心：室内篮球2号场', '1467105230');
INSERT INTO `sp_order_place` VALUES ('105', '48', '室内篮球2号场', '06月29日', '11:00--11:30', '2', '0.0', '2', '全民健身中心：室内篮球2号场', '1467105230');
INSERT INTO `sp_order_place` VALUES ('106', '48', '室内篮球2号场', '06月29日', '11:30--12:00', '2', '0.0', '2', '全民健身中心：室内篮球2号场', '1467105230');
INSERT INTO `sp_order_place` VALUES ('107', '49', '室内篮球1号场', '06月29日', '10:00--10:30', '1', '0.0', '2', '全民健身中心：室内篮球1号场', '1467105582');
INSERT INTO `sp_order_place` VALUES ('108', '49', '室内篮球1号场', '06月29日', '10:30--11:00', '1', '0.0', '2', '全民健身中心：室内篮球1号场', '1467105582');
INSERT INTO `sp_order_place` VALUES ('109', '49', '室内篮球1号场', '06月29日', '11:00--11:30', '1', '0.0', '2', '全民健身中心：室内篮球1号场', '1467105582');
INSERT INTO `sp_order_place` VALUES ('110', '49', '室内篮球1号场', '06月29日', '11:30--12:00', '1', '0.0', '2', '全民健身中心：室内篮球1号场', '1467105582');
INSERT INTO `sp_order_place` VALUES ('111', '50', '室内篮球1号场', '06月29日', '10:00--10:30', '1', '0.0', '2', '全民健身中心：室内篮球1号场', '1467107845');
INSERT INTO `sp_order_place` VALUES ('112', '50', '室内篮球1号场', '06月29日', '10:30--11:00', '1', '0.0', '2', '全民健身中心：室内篮球1号场', '1467107845');
INSERT INTO `sp_order_place` VALUES ('113', '50', '室内篮球1号场', '06月29日', '11:00--11:30', '1', '0.0', '2', '全民健身中心：室内篮球1号场', '1467107845');
INSERT INTO `sp_order_place` VALUES ('114', '50', '室内篮球1号场', '06月29日', '11:30--12:00', '1', '0.0', '2', '全民健身中心：室内篮球1号场', '1467107845');
INSERT INTO `sp_order_place` VALUES ('115', '51', '室内篮球1号场', '07月01日', '09:00--09:30', '1', '0.0', '6', '全民健身中心：室内篮球1号场', '1467170723');
INSERT INTO `sp_order_place` VALUES ('116', '51', '室内篮球1号场', '07月01日', '09:30--10:00', '1', '0.0', '6', '全民健身中心：室内篮球1号场', '1467170723');
INSERT INTO `sp_order_place` VALUES ('117', '51', '室内篮球1号场', '07月01日', '10:00--10:30', '1', '0.0', '6', '全民健身中心：室内篮球1号场', '1467170723');
INSERT INTO `sp_order_place` VALUES ('118', '51', '室内篮球1号场', '07月01日', '10:30--11:00', '1', '0.0', '6', '全民健身中心：室内篮球1号场', '1467170723');
INSERT INTO `sp_order_place` VALUES ('119', '52', '室内篮球1号场', '07月01日', '10:00--10:30', '1', '0.0', '6', '全民健身中心：室内篮球1号场', '1467170749');
INSERT INTO `sp_order_place` VALUES ('120', '52', '室内篮球1号场', '07月01日', '10:30--11:00', '1', '0.0', '6', '全民健身中心：室内篮球1号场', '1467170749');
INSERT INTO `sp_order_place` VALUES ('121', '52', '室内篮球1号场', '07月01日', '11:00--11:30', '1', '0.0', '6', '全民健身中心：室内篮球1号场', '1467170749');
INSERT INTO `sp_order_place` VALUES ('122', '52', '室内篮球1号场', '07月01日', '11:30--12:00', '1', '0.0', '6', '全民健身中心：室内篮球1号场', '1467170749');
INSERT INTO `sp_order_place` VALUES ('123', '53', '室内篮球2号场', '07月01日', '09:00--09:30', '2', '0.0', '4', '全民健身中心：室内篮球2号场', '1467170892');
INSERT INTO `sp_order_place` VALUES ('124', '53', '室内篮球2号场', '07月01日', '09:30--10:00', '2', '0.0', '4', '全民健身中心：室内篮球2号场', '1467170892');
INSERT INTO `sp_order_place` VALUES ('125', '54', '室内篮球1号场', '07月01日', '12:00--12:30', '1', '0.0', '6', '全民健身中心：室内篮球1号场', '1467352837');
INSERT INTO `sp_order_place` VALUES ('126', '54', '室内篮球1号场', '07月01日', '12:30--13:00', '1', '0.0', '6', '全民健身中心：室内篮球1号场', '1467352837');
INSERT INTO `sp_order_place` VALUES ('127', '54', '室内篮球1号场', '07月01日', '13:00--13:30', '1', '0.0', '6', '全民健身中心：室内篮球1号场', '1467352837');
INSERT INTO `sp_order_place` VALUES ('128', '54', '室内篮球1号场', '07月01日', '13:30--14:00', '1', '0.0', '6', '全民健身中心：室内篮球1号场', '1467352837');
INSERT INTO `sp_order_place` VALUES ('129', '54', '室内篮球1号场', '07月01日', '14:00--14:30', '1', '0.0', '6', '全民健身中心：室内篮球1号场', '1467352837');
INSERT INTO `sp_order_place` VALUES ('130', '54', '室内篮球1号场', '07月01日', '14:30--15:00', '1', '0.0', '6', '全民健身中心：室内篮球1号场', '1467352837');
INSERT INTO `sp_order_place` VALUES ('131', '54', '室内篮球1号场', '07月01日', '15:00--15:30', '1', '0.0', '1', '全民健身中心：室内篮球1号场', '1467352837');
INSERT INTO `sp_order_place` VALUES ('132', '54', '室内篮球1号场', '07月01日', '15:30--16:00', '1', '0.0', '1', '全民健身中心：室内篮球1号场', '1467352837');
INSERT INTO `sp_order_place` VALUES ('133', '55', '室内篮球1号场', '07月05日', '11:00--11:30', '1', '0.0', '0', '全民健身中心：室内篮球1号场', '1467619138');
INSERT INTO `sp_order_place` VALUES ('134', '55', '室内篮球1号场', '07月05日', '11:30--12:00', '1', '0.0', '0', '全民健身中心：室内篮球1号场', '1467619138');
INSERT INTO `sp_order_place` VALUES ('135', '55', '室内篮球1号场', '07月05日', '12:00--12:30', '1', '0.0', '0', '全民健身中心：室内篮球1号场', '1467619138');
INSERT INTO `sp_order_place` VALUES ('136', '55', '室内篮球1号场', '07月05日', '12:30--13:00', '1', '0.0', '0', '全民健身中心：室内篮球1号场', '1467619138');
INSERT INTO `sp_order_place` VALUES ('137', '58', '室内篮球2号场', '07月05日', '11:00--11:30', '2', '20.0', '1', '全民健身中心：室内篮球2号场', '1467619422');
INSERT INTO `sp_order_place` VALUES ('138', '58', '室内篮球2号场', '07月05日', '11:30--12:00', '2', '20.0', '1', '全民健身中心：室内篮球2号场', '1467619422');
INSERT INTO `sp_order_place` VALUES ('139', '58', '室内篮球2号场', '07月05日', '12:00--12:30', '2', '25.0', '1', '全民健身中心：室内篮球2号场', '1467619422');
INSERT INTO `sp_order_place` VALUES ('140', '58', '室内篮球2号场', '07月05日', '12:30--13:00', '2', '25.0', '1', '全民健身中心：室内篮球2号场', '1467619422');
INSERT INTO `sp_order_place` VALUES ('141', '59', '室内篮球3号场', '07月05日', '11:30--12:00', '3', '20.0', '1', '全民健身中心：室内篮球3号场', '1467619940');
INSERT INTO `sp_order_place` VALUES ('142', '59', '室内篮球3号场', '07月05日', '12:00--12:30', '3', '25.0', '1', '全民健身中心：室内篮球3号场', '1467619940');
INSERT INTO `sp_order_place` VALUES ('143', '59', '室内篮球4号场', '07月05日', '11:30--12:00', '4', '20.0', '1', '全民健身中心：室内篮球4号场', '1467619940');
INSERT INTO `sp_order_place` VALUES ('144', '59', '室内篮球4号场', '07月05日', '12:00--12:30', '4', '25.0', '1', '全民健身中心：室内篮球4号场', '1467619940');
INSERT INTO `sp_order_place` VALUES ('145', '60', '室内篮球2号场', '07月11日', '16:30--17:00', '2', '25.0', '0', '全民健身中心：室内篮球2号场', '1468225948');
INSERT INTO `sp_order_place` VALUES ('146', '60', '室内篮球2号场', '07月11日', '17:00--17:30', '2', '25.0', '0', '全民健身中心：室内篮球2号场', '1468225948');
INSERT INTO `sp_order_place` VALUES ('147', '61', '室内篮球1号场', '07月13日', '09:00--09:30', '1', '20.0', '1', '全民健身中心：室内篮球1号场', '1468304215');
INSERT INTO `sp_order_place` VALUES ('148', '61', '室内篮球1号场', '07月13日', '09:30--10:00', '1', '20.0', '1', '全民健身中心：室内篮球1号场', '1468304215');
INSERT INTO `sp_order_place` VALUES ('149', '62', '室内篮球1号场', '07月21日', '09:00--09:30', '1', '20.0', '4', '全民健身中心：室内篮球1号场', '1468993588');
INSERT INTO `sp_order_place` VALUES ('150', '62', '室内篮球1号场', '07月21日', '09:30--10:00', '1', '20.0', '4', '全民健身中心：室内篮球1号场', '1468993588');
INSERT INTO `sp_order_place` VALUES ('151', '63', '室内篮球2号场', '07月21日', '09:00--09:30', '2', '20.0', '6', '全民健身中心：室内篮球2号场', '1468999151');
INSERT INTO `sp_order_place` VALUES ('152', '63', '室内篮球2号场', '07月21日', '09:30--10:00', '2', '20.0', '6', '全民健身中心：室内篮球2号场', '1468999151');
INSERT INTO `sp_order_place` VALUES ('153', '64', '室内篮球3号场', '07月21日', '09:00--09:30', '3', '20.0', '6', '全民健身中心：室内篮球3号场', '1468999365');
INSERT INTO `sp_order_place` VALUES ('154', '64', '室内篮球3号场', '07月21日', '09:30--10:00', '3', '20.0', '6', '全民健身中心：室内篮球3号场', '1468999365');
INSERT INTO `sp_order_place` VALUES ('155', '65', '室内篮球4号场', '07月21日', '09:00--09:30', '4', '20.0', '6', '全民健身中心：室内篮球4号场', '1468999635');
INSERT INTO `sp_order_place` VALUES ('156', '65', '室内篮球4号场', '07月21日', '09:30--10:00', '4', '20.0', '6', '全民健身中心：室内篮球4号场', '1468999635');
INSERT INTO `sp_order_place` VALUES ('157', '66', '室内篮球5号场', '07月21日', '09:00--09:30', '5', '20.0', '6', '全民健身中心：室内篮球5号场', '1468999807');
INSERT INTO `sp_order_place` VALUES ('158', '66', '室内篮球5号场', '07月21日', '09:30--10:00', '5', '20.0', '6', '全民健身中心：室内篮球5号场', '1468999807');
INSERT INTO `sp_order_place` VALUES ('159', '67', '室内篮球1号场', '07月22日', '09:00--09:30', '1', '20.0', '3', '全民健身中心：室内篮球1号场', '1469066692');
INSERT INTO `sp_order_place` VALUES ('160', '67', '室内篮球1号场', '07月22日', '09:30--10:00', '1', '20.0', '3', '全民健身中心：室内篮球1号场', '1469066692');
INSERT INTO `sp_order_place` VALUES ('161', '68', '室内篮球1号场', '07月22日', '09:00--09:30', '1', '20.0', '5', '全民健身中心：室内篮球1号场', '1469086642');
INSERT INTO `sp_order_place` VALUES ('162', '68', '室内篮球1号场', '07月22日', '09:30--10:00', '1', '20.0', '5', '全民健身中心：室内篮球1号场', '1469086642');
INSERT INTO `sp_order_place` VALUES ('163', '69', '室内篮球2号场', '07月22日', '09:00--09:30', '2', '20.0', '5', '全民健身中心：室内篮球2号场', '1469089862');
INSERT INTO `sp_order_place` VALUES ('164', '69', '室内篮球2号场', '07月22日', '09:30--10:00', '2', '20.0', '5', '全民健身中心：室内篮球2号场', '1469089862');
INSERT INTO `sp_order_place` VALUES ('165', '70', '室内篮球3号场', '07月22日', '09:00--09:30', '3', '20.0', '3', '全民健身中心：室内篮球3号场', '1469090544');
INSERT INTO `sp_order_place` VALUES ('166', '70', '室内篮球3号场', '07月22日', '09:30--10:00', '3', '20.0', '3', '全民健身中心：室内篮球3号场', '1469090544');
INSERT INTO `sp_order_place` VALUES ('167', '71', '室内篮球2号场', '07月22日', '10:00--10:30', '2', '20.0', '5', '全民健身中心：室内篮球2号场', '1469091515');
INSERT INTO `sp_order_place` VALUES ('168', '71', '室内篮球2号场', '07月22日', '10:30--11:00', '2', '20.0', '5', '全民健身中心：室内篮球2号场', '1469091515');
INSERT INTO `sp_order_place` VALUES ('169', '72', '室内篮球2号场', '07月22日', '11:00--11:30', '2', '20.0', '5', '全民健身中心：室内篮球2号场', '1469091702');
INSERT INTO `sp_order_place` VALUES ('170', '72', '室内篮球2号场', '07月22日', '11:30--12:00', '2', '20.0', '5', '全民健身中心：室内篮球2号场', '1469091702');
INSERT INTO `sp_order_place` VALUES ('171', '73', '室内篮球1号场', '07月22日', '09:00--09:30', '1', '20.0', '6', '全民健身中心：室内篮球1号场', '1469092158');
INSERT INTO `sp_order_place` VALUES ('172', '73', '室内篮球1号场', '07月22日', '09:30--10:00', '1', '20.0', '6', '全民健身中心：室内篮球1号场', '1469092158');
INSERT INTO `sp_order_place` VALUES ('173', '74', '室内篮球1号场', '07月22日', '14:30--15:00', '1', '25.0', '6', '全民健身中心：室内篮球1号场', '1469157916');
INSERT INTO `sp_order_place` VALUES ('174', '74', '室内篮球1号场', '07月22日', '15:00--15:30', '1', '25.0', '1', '全民健身中心：室内篮球1号场', '1469157917');

-- ----------------------------
-- Table structure for sp_picture
-- ----------------------------
DROP TABLE IF EXISTS `sp_picture`;
CREATE TABLE `sp_picture` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id自增',
  `path` varchar(255) NOT NULL DEFAULT '' COMMENT '路径',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '图片链接',
  `md5` char(32) NOT NULL DEFAULT '' COMMENT '文件md5',
  `sha1` char(40) NOT NULL DEFAULT '' COMMENT '文件 sha1编码',
  `status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '状态',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sp_picture
-- ----------------------------

-- ----------------------------
-- Table structure for sp_place
-- ----------------------------
DROP TABLE IF EXISTS `sp_place`;
CREATE TABLE `sp_place` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '片区名称',
  `shid` int(11) NOT NULL DEFAULT '0' COMMENT '所属运动场馆ID',
  `spaceid` int(11) NOT NULL DEFAULT '0' COMMENT '所属场地类型ID',
  `orderconfigid` int(11) NOT NULL DEFAULT '0' COMMENT '预定配置表',
  `priceconfigid` varchar(255) NOT NULL DEFAULT '' COMMENT '价格配置表',
  `addtime` int(11) NOT NULL DEFAULT '0' COMMENT '添加时间',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '场馆描述',
  `mark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='场地片区表';

-- ----------------------------
-- Records of sp_place
-- ----------------------------
INSERT INTO `sp_place` VALUES ('1', '1号场', '1', '1', '0', '1,2,3', '0', '0', '', '');
INSERT INTO `sp_place` VALUES ('2', '2号场', '1', '1', '0', '1,2,3', '0', '0', '', '');
INSERT INTO `sp_place` VALUES ('3', '3号场', '1', '1', '0', '1,2,3', '0', '0', '', '');
INSERT INTO `sp_place` VALUES ('4', '4号场', '1', '1', '0', '1,2,3', '0', '0', '', '');
INSERT INTO `sp_place` VALUES ('5', '5号场', '1', '1', '0', '1,2,3', '0', '0', '', '');
INSERT INTO `sp_place` VALUES ('6', '6号场', '1', '1', '0', '1,2,3', '0', '0', '', '');
INSERT INTO `sp_place` VALUES ('7', '1号场', '2', '3', '0', '4,5', '0', '0', '', '');
INSERT INTO `sp_place` VALUES ('8', '2号场', '2', '3', '0', '4,5', '0', '0', '', '');
INSERT INTO `sp_place` VALUES ('9', '3号场', '2', '3', '0', '4,5', '0', '0', '', '');
INSERT INTO `sp_place` VALUES ('10', '7号场', '1', '1', '0', '1,2,3', '0', '0', '', '');
INSERT INTO `sp_place` VALUES ('11', '8号场', '1', '1', '0', '1,2,3', '0', '0', '', '');
INSERT INTO `sp_place` VALUES ('12', '9号场', '1', '1', '0', '1,2,3', '0', '0', '', '');
INSERT INTO `sp_place` VALUES ('13', '10号场', '1', '1', '0', '1,2,3', '0', '0', '', '');

-- ----------------------------
-- Table structure for sp_price_config
-- ----------------------------
DROP TABLE IF EXISTS `sp_price_config`;
CREATE TABLE `sp_price_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '类型：0->体育馆,1->运动馆,2->场地,3->片区',
  `tid` int(11) NOT NULL DEFAULT '0' COMMENT '根据类型指定主题ID',
  `timetype` tinyint(1) NOT NULL DEFAULT '0' COMMENT '时间类型：0->指定星期,1->日期范围,2->具体日期',
  `timezone_s` float(11,1) NOT NULL DEFAULT '0.0' COMMENT '时间段开始',
  `timezone_e` float(11,1) NOT NULL DEFAULT '0.0' COMMENT '时间段结束',
  `price` float(11,0) NOT NULL DEFAULT '0' COMMENT '价格',
  `addtime` int(11) NOT NULL DEFAULT '0' COMMENT '添加时间',
  `mark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='价格配置表';

-- ----------------------------
-- Records of sp_price_config
-- ----------------------------
INSERT INTO `sp_price_config` VALUES ('1', '3', '1', '0', '9.0', '12.0', '20', '0', '');
INSERT INTO `sp_price_config` VALUES ('2', '3', '1', '0', '12.0', '18.5', '25', '0', '');
INSERT INTO `sp_price_config` VALUES ('3', '3', '1', '0', '18.5', '23.0', '30', '0', '');
INSERT INTO `sp_price_config` VALUES ('4', '3', '7', '0', '9.0', '15.0', '20', '0', '');
INSERT INTO `sp_price_config` VALUES ('5', '3', '7', '0', '15.0', '23.0', '30', '0', '');

-- ----------------------------
-- Table structure for sp_space_type
-- ----------------------------
DROP TABLE IF EXISTS `sp_space_type`;
CREATE TABLE `sp_space_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '场地类型名称',
  `shid` int(11) NOT NULL DEFAULT '0' COMMENT '所属场馆ID',
  `orderconfigid` int(11) NOT NULL DEFAULT '0' COMMENT '预定配置表',
  `priceconfigid` int(11) NOT NULL DEFAULT '0' COMMENT '价格配置表',
  `addtime` int(11) NOT NULL DEFAULT '0' COMMENT '添加时间',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '场馆描述',
  `mark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='场地类型表';

-- ----------------------------
-- Records of sp_space_type
-- ----------------------------
INSERT INTO `sp_space_type` VALUES ('1', '室内篮球', '1', '0', '0', '0', '10', '', '');
INSERT INTO `sp_space_type` VALUES ('3', '羽毛球场', '2', '0', '0', '0', '0', '', '');
INSERT INTO `sp_space_type` VALUES ('4', '室内乒乓球', '3', '0', '0', '0', '0', '', '');
INSERT INTO `sp_space_type` VALUES ('6', '室内网球', '4', '0', '0', '0', '0', '', '');
INSERT INTO `sp_space_type` VALUES ('2', '室外篮球', '1', '0', '0', '0', '8', '', '');
INSERT INTO `sp_space_type` VALUES ('8', '足球场', '5', '0', '0', '0', '0', '', '');

-- ----------------------------
-- Table structure for sp_sport_belong
-- ----------------------------
DROP TABLE IF EXISTS `sp_sport_belong`;
CREATE TABLE `sp_sport_belong` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '类型：0->体育馆,1->运动馆,2->场地,3->片区',
  `tid` int(11) NOT NULL DEFAULT '0' COMMENT '根据类型指定主题ID',
  `adminid` int(11) NOT NULL DEFAULT '0' COMMENT '管理员ID',
  `addtime` int(11) NOT NULL DEFAULT '0' COMMENT '添加时间',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态：0->当前，1->历史',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='场馆从属关系表';

-- ----------------------------
-- Records of sp_sport_belong
-- ----------------------------

-- ----------------------------
-- Table structure for sp_sport_hall
-- ----------------------------
DROP TABLE IF EXISTS `sp_sport_hall`;
CREATE TABLE `sp_sport_hall` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gid` int(11) NOT NULL DEFAULT '0' COMMENT '所属体育场馆ID',
  `stid` int(11) NOT NULL DEFAULT '0' COMMENT '场馆类型ID',
  `icon` varchar(255) NOT NULL DEFAULT '' COMMENT '场馆类型icon',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '场馆名称',
  `notice` varchar(255) NOT NULL DEFAULT '' COMMENT '注意须知',
  `adminids` varchar(255) NOT NULL DEFAULT '' COMMENT '从属管理员ID列表',
  `orderconfigid` int(11) NOT NULL DEFAULT '0' COMMENT '预定配置表',
  `priceconfigid` int(11) NOT NULL DEFAULT '0' COMMENT '价格配置表',
  `addtime` int(11) NOT NULL DEFAULT '0' COMMENT '添加时间',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '场馆描述',
  `mark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `cancelornot` tinyint(1) NOT NULL DEFAULT '0' COMMENT '能否退票',
  `endorseornot` tinyint(1) NOT NULL DEFAULT '0' COMMENT '能否改签',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='运动场馆表';

-- ----------------------------
-- Records of sp_sport_hall
-- ----------------------------
INSERT INTO `sp_sport_hall` VALUES ('1', '1', '1', '/Public/Mobile/img/basketball.png', '篮球馆', '', '', '0', '0', '0', '1', '', '', '0', '0');
INSERT INTO `sp_sport_hall` VALUES ('2', '1', '2', '/Public/Mobile/img/badmintion.png', '羽毛球馆', '', '', '0', '0', '0', '0', '', '', '0', '0');
INSERT INTO `sp_sport_hall` VALUES ('3', '1', '3', '/Public/Mobile/img/table-tennis.png', '乒乓球馆', '', '', '0', '0', '0', '0', '', '', '0', '0');
INSERT INTO `sp_sport_hall` VALUES ('4', '1', '4', '/Public/Mobile/img/tennis.png', '网球馆', '', '', '0', '0', '0', '0', '', '', '0', '0');
INSERT INTO `sp_sport_hall` VALUES ('5', '1', '5', '/Public/Mobile/img/football.png', '足球馆', '', '', '0', '0', '0', '0', '', '', '0', '0');
INSERT INTO `sp_sport_hall` VALUES ('6', '2', '1', '/Public/Mobile/img/basketball.png', '篮球馆', '', '', '0', '0', '0', '0', '', '', '0', '0');
INSERT INTO `sp_sport_hall` VALUES ('7', '2', '2', '/Public/Mobile/img/badmintion.png', '羽毛球馆', '', '', '0', '0', '0', '0', '', '', '0', '0');
INSERT INTO `sp_sport_hall` VALUES ('8', '2', '3', '/Public/Mobile/img/table-tennis.png', '乒乓球馆', '', '', '0', '0', '0', '0', '', '', '0', '0');
INSERT INTO `sp_sport_hall` VALUES ('9', '3', '3', '/Public/Mobile/img/table-tennis.png', '乒乓球馆', '', '', '0', '0', '0', '0', '', '', '0', '0');
INSERT INTO `sp_sport_hall` VALUES ('10', '3', '4', '/Public/Mobile/img/tennis.png', '网球馆', '', '', '0', '0', '0', '0', '', '', '0', '0');
INSERT INTO `sp_sport_hall` VALUES ('11', '3', '5', '/Public/Mobile/img/football.png', '足球馆', '', '', '0', '0', '0', '0', '', '', '0', '0');

-- ----------------------------
-- Table structure for sp_sport_type
-- ----------------------------
DROP TABLE IF EXISTS `sp_sport_type`;
CREATE TABLE `sp_sport_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '类型名称',
  `icon` varchar(255) NOT NULL DEFAULT '' COMMENT '图标',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT ' 排序',
  `mark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='场馆类型表';

-- ----------------------------
-- Records of sp_sport_type
-- ----------------------------
INSERT INTO `sp_sport_type` VALUES ('1', '篮球馆', '/Public/Mobile/img/basketball.png', '0', '');
INSERT INTO `sp_sport_type` VALUES ('2', '羽毛球馆', '/Public/Mobile/img/badmintion.png', '0', '');
INSERT INTO `sp_sport_type` VALUES ('3', '乒乓球馆', '/Public/Mobile/img/table-tennis.png', '0', '');
INSERT INTO `sp_sport_type` VALUES ('4', '网球馆', '/Public/Mobile/img/tennis.png', '0', '');
INSERT INTO `sp_sport_type` VALUES ('5', '足球馆', '/Public/Mobile/img/football.png', '0', '');
INSERT INTO `sp_sport_type` VALUES ('6', '综合馆', '/Public/Mobile/img/01.png', '0', '');

-- ----------------------------
-- Table structure for sp_ucenter_admin
-- ----------------------------
DROP TABLE IF EXISTS `sp_ucenter_admin`;
CREATE TABLE `sp_ucenter_admin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '管理员ID',
  `member_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '管理员用户ID',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '管理员状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='管理员表';

-- ----------------------------
-- Records of sp_ucenter_admin
-- ----------------------------

-- ----------------------------
-- Table structure for sp_ucenter_app
-- ----------------------------
DROP TABLE IF EXISTS `sp_ucenter_app`;
CREATE TABLE `sp_ucenter_app` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '应用ID',
  `title` varchar(30) NOT NULL COMMENT '应用名称',
  `url` varchar(100) NOT NULL COMMENT '应用URL',
  `ip` char(15) NOT NULL COMMENT '应用IP',
  `auth_key` varchar(100) NOT NULL COMMENT '加密KEY',
  `sys_login` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '同步登陆',
  `allow_ip` varchar(255) NOT NULL COMMENT '允许访问的IP',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '应用状态',
  PRIMARY KEY (`id`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='应用表';

-- ----------------------------
-- Records of sp_ucenter_app
-- ----------------------------

-- ----------------------------
-- Table structure for sp_ucenter_member
-- ----------------------------
DROP TABLE IF EXISTS `sp_ucenter_member`;
CREATE TABLE `sp_ucenter_member` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `username` char(16) NOT NULL COMMENT '用户名',
  `password` char(32) NOT NULL COMMENT '密码',
  `email` char(32) NOT NULL COMMENT '用户邮箱',
  `mobile` char(15) NOT NULL COMMENT '用户手机',
  `reg_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '注册时间',
  `reg_ip` bigint(20) NOT NULL DEFAULT '0' COMMENT '注册IP',
  `last_login_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后登录时间',
  `last_login_ip` bigint(20) NOT NULL DEFAULT '0' COMMENT '最后登录IP',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(4) DEFAULT '0' COMMENT '用户状态',
  `realname` varchar(255) NOT NULL DEFAULT '' COMMENT '真实姓名',
  `phone` varchar(20) NOT NULL DEFAULT '' COMMENT '电话号码',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of sp_ucenter_member
-- ----------------------------
INSERT INTO `sp_ucenter_member` VALUES ('1', 'admin', '1f64ecdd9abc3c0ef29a93cb6641fc9c', '619629364@qq.com', '', '1466043870', '2130706433', '1469610160', '3232235621', '1466043870', '1', '', '');
INSERT INTO `sp_ucenter_member` VALUES ('2', 'kang', '1f64ecdd9abc3c0ef29a93cb6641fc9c', '619629365@qq.com', '', '1466045231', '2130706433', '1466045527', '2130706433', '1466045231', '1', '', '');

-- ----------------------------
-- Table structure for sp_ucenter_setting
-- ----------------------------
DROP TABLE IF EXISTS `sp_ucenter_setting`;
CREATE TABLE `sp_ucenter_setting` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '设置ID',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '配置类型（1-用户配置）',
  `value` text NOT NULL COMMENT '配置数据',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='设置表';

-- ----------------------------
-- Records of sp_ucenter_setting
-- ----------------------------

-- ----------------------------
-- Table structure for sp_url
-- ----------------------------
DROP TABLE IF EXISTS `sp_url`;
CREATE TABLE `sp_url` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '链接唯一标识',
  `url` char(255) NOT NULL DEFAULT '' COMMENT '链接地址',
  `short` char(100) NOT NULL DEFAULT '' COMMENT '短网址',
  `status` tinyint(2) NOT NULL DEFAULT '2' COMMENT '状态',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_url` (`url`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='链接表';

-- ----------------------------
-- Records of sp_url
-- ----------------------------

-- ----------------------------
-- Table structure for sp_userdata
-- ----------------------------
DROP TABLE IF EXISTS `sp_userdata`;
CREATE TABLE `sp_userdata` (
  `uid` int(10) unsigned NOT NULL COMMENT '用户id',
  `type` tinyint(3) unsigned NOT NULL COMMENT '类型标识',
  `target_id` int(10) unsigned NOT NULL COMMENT '目标id',
  UNIQUE KEY `uid` (`uid`,`type`,`target_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sp_userdata
-- ----------------------------

-- ----------------------------
-- Table structure for sp_userinfo
-- ----------------------------
DROP TABLE IF EXISTS `sp_userinfo`;
CREATE TABLE `sp_userinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nickname` varchar(255) NOT NULL DEFAULT '' COMMENT '昵称',
  `openid` varchar(255) NOT NULL DEFAULT '' COMMENT '微信用户openid',
  `headimg` varchar(255) NOT NULL DEFAULT '' COMMENT '用户头像',
  `realname` varchar(255) NOT NULL DEFAULT '' COMMENT '真实姓名',
  `phone` varchar(255) NOT NULL DEFAULT '' COMMENT '手机号码',
  `pwd` varchar(255) NOT NULL DEFAULT '' COMMENT '密码',
  `number` varchar(255) NOT NULL DEFAULT '' COMMENT '编号',
  `balance` float(11,0) NOT NULL DEFAULT '0' COMMENT '账户余额',
  `score` int(11) NOT NULL DEFAULT '0' COMMENT '积分余额',
  `sex` varchar(20) NOT NULL DEFAULT '男' COMMENT '性别',
  `birthday` varchar(20) NOT NULL DEFAULT '' COMMENT '生日',
  `carids` varchar(255) NOT NULL DEFAULT '' COMMENT '绑定的车辆ID列表',
  `email` varchar(255) NOT NULL DEFAULT '' COMMENT 'email',
  `reg_time` int(11) NOT NULL DEFAULT '0' COMMENT '注册时间',
  `last_login_time` int(11) NOT NULL DEFAULT '0' COMMENT '上次登录时间',
  `last_login_ip` varchar(20) NOT NULL DEFAULT '' COMMENT '上次登录IP',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态：0->正常,1->禁止',
  `isdel` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0->否，1->是',
  `mark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='用户信息表';

-- ----------------------------
-- Records of sp_userinfo
-- ----------------------------
INSERT INTO `sp_userinfo` VALUES ('1', 'aaaa', 'abc', 'zzzz', '', '17652947364', '', '14663147251291', '640', '0', '男', '', '', '', '1466314725', '0', '', '0', '0', '');
INSERT INTO `sp_userinfo` VALUES ('2', '苦咖啡', 'oKoKNtz07JZcK2SobdqDdtjrq6QM', 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLArdPTNOibv9RKNUkXbqX2b6kQN8QGbcTl5vIJYLDJE2eN6USp5WMBPHBrJTstgEnq1sVvxQvOIZvg/0', '', '18652947363', '', '14670131805856', '610', '0', '男', '', '', '', '1467013180', '0', '', '0', '0', '');

-- ----------------------------
-- Table structure for sp_weixin_user
-- ----------------------------
DROP TABLE IF EXISTS `sp_weixin_user`;
CREATE TABLE `sp_weixin_user` (
  `openid` varchar(30) NOT NULL,
  `subscribe` tinyint(4) DEFAULT '1' COMMENT '用户是否订阅该公众号标识，值为0时，代表此用户没有关注该公众号，拉取不到其余信息。',
  `updatetime` int(11) DEFAULT NULL COMMENT '最后更新时间',
  `nickname` varchar(255) DEFAULT NULL COMMENT '用户的昵称',
  `sex` tinyint(4) DEFAULT '1' COMMENT '用户的性别，值为1时是男性，值为2时是女性，值为0时是未知',
  `city` varchar(50) DEFAULT NULL COMMENT '用户所在城市',
  `province` varchar(50) DEFAULT NULL COMMENT '用户所在省份',
  `country` varchar(50) DEFAULT NULL COMMENT '用户所在国家',
  `headimgurl` varchar(255) DEFAULT NULL,
  `subscribe_time` int(11) DEFAULT NULL COMMENT '用户关注时间，为时间戳。如果用户曾多次关注，则取最后关注时间',
  `language` varchar(10) DEFAULT NULL,
  `unionid` varchar(255) DEFAULT NULL COMMENT '只有在用户将公众号绑定到微信开放平台帐号后，才会出现该字段。',
  `paytypeid` int(11) DEFAULT '4' COMMENT '用户默认的支付方式编号，默认为微信支付',
  `memberid` int(11) DEFAULT '0' COMMENT 'CRM系统会员卡对应的ID（memberinfo表）',
  `cardnum` int(11) DEFAULT '0' COMMENT 'CRM系统的会员卡号',
  PRIMARY KEY (`openid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='微信用户基本信息';

-- ----------------------------
-- Records of sp_weixin_user
-- ----------------------------
INSERT INTO `sp_weixin_user` VALUES ('oKoKNtz07JZcK2SobdqDdtjrq6QM', '1', '1467008252', '苦咖啡', '1', 'Nanjing', 'Jiangsu', 'CN', 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLArdPTNOibv9RKNUkXbqX2b6kQN8QGbcTl5vIJYLDJE2eN6USp5WMBPHBrJTstgEnq1sVvxQvOIZvg/0', null, 'zh_CN', null, '4', '0', '0');
INSERT INTO `sp_weixin_user` VALUES ('oKoKNt9VdOXBC_1YKQdqxEYYgzE8', '1', '1467011915', '阿三', '1', 'Nanjing', 'Jiangsu', 'CN', 'http://wx.qlogo.cn/mmopen/tIcW54Co1nOiaV037Nhrsd55avuSjg4z5w9AWxJCkoRI9tRq4Q3K1vtFBU9PH1zbFA2c4IEzTd2QMibvONtqGTKhamLpwExIBC/0', null, 'zh_CN', null, '4', '0', '0');

-- ----------------------------
-- Table structure for sp_weixin_user_token
-- ----------------------------
DROP TABLE IF EXISTS `sp_weixin_user_token`;
CREATE TABLE `sp_weixin_user_token` (
  `access_token` varchar(255) NOT NULL COMMENT '网页授权接口调用凭证,注意：此access_token与基础支持的access_token不同',
  `expires_in` int(11) NOT NULL COMMENT 'access_token接口调用凭证超时时间，单位（秒）',
  `refresh_token` varchar(255) NOT NULL COMMENT '用户刷新access_token',
  `openid` varchar(255) NOT NULL COMMENT '用户唯一标识，请注意，在未关注公众号时，用户访问公众号的网页，也会产生一个用户和公众号唯一的OpenID',
  `scope` varchar(255) NOT NULL COMMENT '用户授权的作用域，使用逗号（,）分隔',
  `updatetime` int(11) NOT NULL,
  PRIMARY KEY (`openid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of sp_weixin_user_token
-- ----------------------------
INSERT INTO `sp_weixin_user_token` VALUES ('IqTz9mI4qbf3wQ96p8duopsD0SO15tvJC_Kcv0hZUEkCEo-Bd2stYjSYMnG_9-hM6XPoyVHF1k3mE4xWHj9wlAElR0XyZcGqskjFKEXpYb0', '7200', 'PIcMDYRHN9i27CEquTn17R9Yv6PlbKyVgONrqAu-z9MiO-FJMx7sBEX4vwaFZah4pziFsCioMPyIyAFVI_Uevvwgo16JhZE1HqlRzv46cds', 'oKoKNtz07JZcK2SobdqDdtjrq6QM', 'snsapi_base', '1467011481');
INSERT INTO `sp_weixin_user_token` VALUES ('in7oExvvmSy0NFXCUBsiJUh-9i9sWPobQLhtCjnBZrXGP3xDdlxhJo2I7KOaK2jW0BJ9g3sYhY69nRQOGphPcg8mJIG3aOveGhpcNi6G3mk', '7200', 'E8NxouAUUg5v8J85sL3FC_xHdWZnHxhq4eG2vGboWgn6BOWDb9Q4Tt6JB_LECAS3GFjwZtOW_fgHK1-lO8rrCxqcCsaO0JRosSshawB70c0', 'oKoKNt9VdOXBC_1YKQdqxEYYgzE8', 'snsapi_userinfo', '1467011915');
