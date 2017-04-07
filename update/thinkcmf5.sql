/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50717
 Source Host           : localhost
 Source Database       : thinkcmf5

 Target Server Type    : MySQL
 Target Server Version : 50717
 File Encoding         : utf-8

 Date: 04/07/2017 11:38:08 AM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `cmf_admin_menu`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_admin_menu`;
CREATE TABLE `cmf_admin_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父菜单id',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '菜单类型;1:权限认证+菜单,0:只作为菜单',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '状态;1:显示,0:不显示',
  `list_order` float unsigned NOT NULL DEFAULT '10000' COMMENT '排序ID',
  `app` varchar(30) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '应用名',
  `controller` varchar(30) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '控制器名',
  `action` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '操作名称',
  `param` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '额外参数',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '菜单名称',
  `icon` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '菜单图标',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `parentid` (`parent_id`),
  KEY `model` (`controller`)
) ENGINE=InnoDB AUTO_INCREMENT=260 DEFAULT CHARSET=utf8mb4 COMMENT='后台菜单表';

-- ----------------------------
--  Records of `cmf_admin_menu`
-- ----------------------------
BEGIN;
INSERT INTO `cmf_admin_menu` VALUES ('1', '0', '1', '1', '20', 'portal', 'AdminDefault', 'default', '', '内容管理', 'th', ''), ('7', '1', '1', '1', '0', 'portal', 'AdminArticle', 'index', '', '文章管理', '', ''), ('8', '7', '1', '0', '0', 'portal', 'AdminPost', 'listorders', '', '文章排序', '', ''), ('9', '7', '1', '0', '0', 'portal', 'AdminPost', 'top', '', '文章置顶', '', ''), ('10', '7', '1', '0', '0', 'portal', 'AdminPost', 'recommend', '', '文章推荐', '', ''), ('11', '7', '1', '0', '1000', 'portal', 'AdminPost', 'move', '', '批量移动', '', ''), ('12', '7', '1', '0', '1000', 'portal', 'AdminPost', 'check', '', '文章审核', '', ''), ('13', '7', '1', '0', '1000', 'portal', 'AdminPost', 'delete', '', '删除文章', '', ''), ('14', '7', '1', '0', '1000', 'portal', 'AdminPost', 'edit', '', '编辑文章', '', ''), ('15', '14', '1', '0', '0', 'portal', 'AdminPost', 'edit_post', '', '提交编辑', '', ''), ('16', '7', '1', '0', '1000', 'portal', 'AdminPost', 'add', '', '添加文章', '', ''), ('17', '16', '1', '0', '0', 'portal', 'AdminPost', 'add_post', '', '提交添加', '', ''), ('18', '1', '1', '1', '10', 'portal', 'AdminCategory', 'index', '', '分类管理', '', ''), ('19', '18', '1', '0', '0', 'portal', 'AdminTerm', 'listorders', '', '文章分类排序', '', ''), ('20', '18', '1', '0', '1000', 'portal', 'AdminTerm', 'delete', '', '删除分类', '', ''), ('21', '18', '1', '0', '1000', 'portal', 'AdminTerm', 'edit', '', '编辑分类', '', ''), ('22', '21', '1', '0', '0', 'portal', 'AdminTerm', 'edit_post', '', '提交编辑', '', ''), ('23', '18', '1', '0', '1000', 'portal', 'AdminTerm', 'add', '', '添加分类', '', ''), ('24', '23', '1', '0', '0', 'portal', 'AdminTerm', 'add_post', '', '提交添加', '', ''), ('25', '1', '1', '1', '20', 'portal', 'AdminPage', 'index', '', '页面管理', '', ''), ('26', '25', '1', '0', '0', 'portal', 'AdminPage', 'listorders', '', '页面排序', '', ''), ('27', '25', '1', '0', '1000', 'portal', 'AdminPage', 'delete', '', '删除页面', '', ''), ('28', '25', '1', '0', '1000', 'portal', 'AdminPage', 'edit', '', '编辑页面', '', ''), ('29', '28', '1', '0', '0', 'portal', 'AdminPage', 'edit_post', '', '提交编辑', '', ''), ('30', '25', '1', '0', '1000', 'portal', 'AdminPage', 'add', '', '添加页面', '', ''), ('31', '30', '1', '0', '0', 'portal', 'AdminPage', 'add_post', '', '提交添加', '', ''), ('47', '181', '1', '1', '40', 'admin', 'Plugin', 'index', '', '插件列表', 'cloud', ''), ('48', '47', '1', '0', '0', 'admin', 'Plugin', 'toggle', '', '插件启用切换', '', ''), ('49', '47', '1', '0', '0', 'admin', 'Plugin', 'setting', '', '插件设置', '', ''), ('50', '49', '1', '0', '0', 'admin', 'Plugin', 'setting_post', '', '插件设置提交', '', ''), ('51', '47', '1', '0', '0', 'admin', 'Plugin', 'install', '', '插件安装', '', ''), ('52', '47', '1', '0', '0', 'admin', 'Plugin', 'uninstall', '', '插件卸载', '', ''), ('62', '53', '1', '1', '0', 'admin', 'Slidecat', 'index', '', '幻灯片分类', '', ''), ('63', '62', '1', '0', '1000', 'admin', 'Slidecat', 'delete', '', '删除分类', '', ''), ('64', '62', '1', '0', '1000', 'admin', 'Slidecat', 'edit', '', '编辑分类', '', ''), ('65', '64', '1', '0', '0', 'admin', 'Slidecat', 'edit_post', '', '提交编辑', '', ''), ('66', '62', '1', '0', '1000', 'admin', 'Slidecat', 'add', '', '添加分类', '', ''), ('67', '66', '1', '0', '0', 'admin', 'Slidecat', 'add_post', '', '提交添加', '', ''), ('87', '109', '1', '1', '1000', 'admin', 'Nav', 'index', '', '导航管理', '', ''), ('88', '87', '1', '0', '0', 'admin', 'Nav', 'listorders', '', '前台导航排序', '', ''), ('89', '87', '1', '0', '1000', 'admin', 'Nav', 'delete', '', '删除菜单', '', ''), ('90', '87', '1', '0', '1000', 'admin', 'Nav', 'edit', '', '编辑菜单', '', ''), ('91', '90', '1', '0', '0', 'admin', 'Nav', 'edit_post', '', '提交编辑', '', ''), ('92', '87', '1', '0', '1000', 'admin', 'Nav', 'add', '', '添加菜单', '', ''), ('93', '92', '1', '0', '0', 'admin', 'Nav', 'add_post', '', '提交添加', '', ''), ('100', '109', '1', '0', '0', 'admin', 'Menu', 'index', '', '后台菜单', 'list', ''), ('101', '100', '1', '0', '0', 'admin', 'Menu', 'add', '', '添加菜单', '', ''), ('102', '101', '1', '0', '0', 'admin', 'Menu', 'add_post', '', '提交添加', '', ''), ('103', '100', '1', '0', '0', 'admin', 'Menu', 'listorders', '', '后台菜单排序', '', ''), ('104', '100', '1', '0', '1000', 'admin', 'Menu', 'export_menu', '', '菜单备份', '', ''), ('105', '100', '1', '0', '1000', 'admin', 'Menu', 'edit', '', '编辑菜单', '', ''), ('106', '105', '1', '0', '0', 'admin', 'Menu', 'edit_post', '', '提交编辑', '', ''), ('107', '100', '1', '0', '1000', 'admin', 'Menu', 'delete', '', '删除菜单', '', ''), ('108', '100', '1', '0', '1000', 'admin', 'Menu', 'lists', '', '所有菜单', '', ''), ('109', '0', '0', '1', '0', 'admin', 'Setting', 'default', '', '设置', 'cogs', ''), ('113', '109', '1', '0', '0', 'admin', 'Setting', 'password', '', '修改密码', '', ''), ('114', '113', '1', '0', '0', 'admin', 'Setting', 'password_post', '', '提交修改', '', ''), ('115', '109', '1', '1', '0', 'admin', 'Setting', 'site', '', '网站信息', '', ''), ('116', '115', '1', '0', '0', 'admin', 'Setting', 'site_post', '', '提交修改', '', ''), ('117', '115', '1', '0', '0', 'admin', 'Route', 'index', '', '路由列表', '', ''), ('118', '115', '1', '0', '0', 'admin', 'Route', 'add', '', '路由添加', '', ''), ('119', '118', '1', '0', '0', 'admin', 'Route', 'add_post', '', '路由添加提交', '', ''), ('120', '115', '1', '0', '0', 'admin', 'Route', 'edit', '', '路由编辑', '', ''), ('121', '120', '1', '0', '0', 'admin', 'Route', 'edit_post', '', '路由编辑提交', '', ''), ('122', '115', '1', '0', '0', 'admin', 'Route', 'delete', '', '路由删除', '', ''), ('123', '115', '1', '0', '0', 'admin', 'Route', 'ban', '', '路由禁止', '', ''), ('124', '115', '1', '0', '0', 'admin', 'Route', 'open', '', '路由启用', '', ''), ('125', '115', '1', '0', '0', 'admin', 'Route', 'listorders', '', '路由排序', '', ''), ('127', '109', '1', '1', '0', 'admin', 'Mailer', 'index', '', '邮箱配置', '', ''), ('128', '127', '1', '0', '0', 'admin', 'Mailer', 'index_post', '', '提交配置', '', ''), ('129', '127', '1', '0', '0', 'admin', 'Mailer', 'active', '', '注册邮件模板', '', ''), ('130', '129', '1', '0', '0', 'admin', 'Mailer', 'active_post', '', '提交模板', '', ''), ('131', '109', '1', '0', '1', 'admin', 'Setting', 'clearcache', '', '清除缓存', '', ''), ('140', '243', '1', '1', '0', 'admin', 'rbac', 'index', '', '角色管理', '', ''), ('141', '140', '1', '0', '1000', 'admin', 'rbac', 'member', '', '成员管理', '', ''), ('142', '140', '1', '0', '1000', 'admin', 'rbac', 'authorize', '', '权限设置', '', ''), ('143', '142', '1', '0', '0', 'admin', 'rbac', 'authorize_post', '', '提交设置', '', ''), ('144', '140', '1', '0', '1000', 'admin', 'rbac', 'roleedit', '', '编辑角色', '', ''), ('145', '144', '1', '0', '0', 'admin', 'rbac', 'roleedit_post', '', '提交编辑', '', ''), ('146', '140', '1', '1', '1000', 'admin', 'rbac', 'roledelete', '', '删除角色', '', ''), ('147', '140', '1', '1', '1000', 'admin', 'Rbac', 'roleadd', '', '添加角色', '', ''), ('148', '147', '1', '0', '0', 'admin', 'Rbac', 'roleadd_post', '', '提交添加', '', ''), ('155', '47', '1', '0', '0', 'admin', 'Plugin', 'update', '', '插件更新', '', ''), ('156', '109', '1', '0', '0', 'admin', 'Storage', 'index', '', '文件存储', '', ''), ('157', '156', '1', '0', '0', 'admin', 'Storage', 'setting_post', '', '文件存储设置提交', '', ''), ('166', '127', '1', '0', '0', 'admin', 'Mailer', 'test', '', '测试邮件', '', ''), ('167', '109', '1', '1', '0', 'admin', 'Setting', 'upload', '', '上传设置', '', ''), ('168', '167', '1', '0', '0', 'admin', 'Setting', 'upload_post', '', '上传设置提交', '', ''), ('169', '7', '1', '0', '0', 'portal', 'AdminPost', 'copy', '', '文章批量复制', '', ''), ('174', '100', '1', '0', '0', 'admin', 'Menu', 'backup_menu', '', '备份菜单', '', ''), ('175', '100', '1', '0', '0', 'admin', 'Menu', 'export_menu_lang', '', '导出后台菜单多语言包', '', ''), ('176', '100', '1', '0', '0', 'admin', 'Menu', 'restore_menu', '', '还原菜单', '', ''), ('177', '100', '1', '0', '0', 'admin', 'Menu', 'getactions', '', '导入新菜单', '', ''), ('178', '109', '1', '1', '0', 'admin', 'Theme', 'index', '', '模板管理', '', ''), ('179', '109', '1', '1', '0', 'admin', 'Link', 'index', '', '友情链接', '', ''), ('180', '1', '1', '1', '30', 'portal', 'AdminTag', 'index', '', '文章标签', '', ''), ('181', '0', '1', '1', '40', 'admin', 'Plugin', 'default', '', '插件管理', 'cloud', ''), ('182', '181', '1', '1', '0', 'admin', 'Hook', 'index', '', '钩子管理', '', ''), ('183', '179', '1', '0', '10000', 'admin', 'Link', 'add', '', '添加友情链接', '', '添加友情链接'), ('184', '179', '1', '0', '10000', 'admin', 'Link', 'addPost', '', '添加友情链接提交保存', '', '添加友情链接提交保存'), ('185', '179', '1', '0', '10000', 'admin', 'Link', 'edit', '', '编辑友情链接', '', '编辑友情链接'), ('186', '179', '1', '0', '10000', 'admin', 'Link', 'editPost', '', '编辑友情链接提交保存', '', '编辑友情链接提交保存'), ('187', '179', '1', '0', '10000', 'admin', 'Link', 'delete', '', '删除友情链接', '', '删除友情链接'), ('188', '179', '1', '0', '10000', 'admin', 'Link', 'listOrder', '', '友情链接排序', '', '友情链接排序'), ('189', '179', '1', '0', '10000', 'admin', 'Link', 'toggle', '', '友情链接显示隐藏', '', '友情链接显示隐藏'), ('190', '127', '1', '0', '10000', 'admin', 'Mailer', 'indexPost', '', '邮箱配置提交保存', '', '邮箱配置提交保存'), ('191', '127', '1', '0', '10000', 'admin', 'Mailer', 'activePost', '', '会员注册邮件模板提交', '', '会员注册邮件模板提交'), ('193', '87', '1', '0', '10000', 'admin', 'Nav', 'addPost', '', '添加导航提交保存', '', '添加导航提交保存'), ('194', '87', '1', '0', '10000', 'admin', 'Nav', 'editPost', '', '编辑导航提交保存', '', '编辑导航提交保存'), ('195', '87', '1', '0', '10000', 'admin', 'NavMenu', 'index', '', '导航菜单', '', '导航菜单'), ('196', '195', '1', '0', '10000', 'admin', 'NavMenu', 'add', '', '添加导航菜单', '', '添加导航菜单'), ('197', '195', '1', '0', '10000', 'admin', 'NavMenu', 'addPost', '', '添加导航菜单提交保存', '', '添加导航菜单提交保存'), ('198', '195', '1', '0', '10000', 'admin', 'NavMenu', 'edit', '', '编辑导航菜单', '', '编辑导航菜单'), ('199', '195', '1', '0', '10000', 'admin', 'NavMenu', 'editPost', '', '编辑导航菜单提交保存', '', '编辑导航菜单提交保存'), ('200', '195', '1', '0', '10000', 'admin', 'NavMenu', 'delete', '', '删除导航菜单', '', '删除导航菜单'), ('201', '195', '1', '0', '10000', 'admin', 'NavMenu', 'listOrder', '', '导航菜单排序', '', '导航菜单排序'), ('202', '47', '1', '0', '10000', 'admin', 'Plugin', 'settingPost', '', '插件设置提交', '', '插件设置提交'), ('203', '182', '1', '0', '10000', 'admin', 'Hook', 'plugins', '', '钩子插件管理', '', '钩子插件管理'), ('204', '182', '1', '0', '10000', 'admin', 'Hook', 'pluginToggle', '', '钩子插件启用禁用', '', '钩子插件启用禁用'), ('205', '182', '1', '0', '10000', 'admin', 'Hook', 'pluginListOrder', '', '钩子插件排序', '', '钩子插件排序'), ('206', '100', '1', '0', '10000', 'admin', 'Menu', 'addPost', '', '后台菜单添加提交保存', '', '后台菜单添加提交保存'), ('207', '100', '1', '0', '10000', 'admin', 'Menu', 'editPost', '', '后台菜单编辑提交保存', '', '后台菜单编辑提交保存'), ('208', '100', '1', '0', '10000', 'admin', 'Menu', 'listOrder', '', '后台菜单排序', '', '后台菜单排序'), ('209', '0', '1', '0', '10000', 'admin', 'Recycle', 'index', '', '回收站', '', '回收站'), ('210', '209', '1', '0', '10000', 'admin', 'Recycle', 'restore', '', '回收站还原', '', '回收站还原'), ('211', '209', '1', '0', '10000', 'admin', 'Recycle', 'delete', '', '回收站彻底删除', '', '回收站彻底删除'), ('212', '115', '1', '0', '10000', 'admin', 'Setting', 'sitePost', '', '网站信息设置提交', '', '网站信息设置提交'), ('213', '113', '1', '0', '10000', 'admin', 'Setting', 'passwordPost', '', '密码修改提交', '', '密码修改提交'), ('214', '167', '1', '0', '10000', 'admin', 'Setting', 'uploadPost', '', '上传设置提交', '', '上传设置提交'), ('215', '109', '1', '1', '10000', 'admin', 'Slide', 'index', '', '幻灯片管理', '', '幻灯片管理'), ('216', '178', '1', '0', '10000', 'admin', 'Theme', 'install', '', '安装模板', '', '安装模板'), ('217', '178', '1', '0', '10000', 'admin', 'Theme', 'uninstall', '', '卸载模板', '', '卸载模板'), ('218', '178', '1', '0', '10000', 'admin', 'Theme', 'installTheme', '', '模板安装', '', '模板安装'), ('219', '178', '1', '0', '10000', 'admin', 'Theme', 'update', '', '模板更新', '', '模板更新'), ('220', '178', '1', '0', '10000', 'admin', 'Theme', 'active', '', '启用模板', '', '启用模板'), ('221', '178', '1', '0', '10000', 'admin', 'Theme', 'files', '', '模板文件列表', '', '启用模板'), ('222', '178', '1', '0', '10000', 'admin', 'Theme', 'fileSetting', '', '模板文件设置', '', '模板文件设置'), ('223', '178', '1', '0', '10000', 'admin', 'Theme', 'fileArrayData', '', '模板文件数组数据列表', '', '模板文件数组数据列表'), ('224', '178', '1', '0', '10000', 'admin', 'Theme', 'fileArrayDataEdit', '', '模板文件数组数据添加编辑', '', '模板文件数组数据添加编辑'), ('225', '178', '1', '0', '10000', 'admin', 'Theme', 'fileArrayDataDelete', '', '模板文件数组数据删除', '', '模板文件数组数据删除'), ('226', '178', '1', '0', '10000', 'admin', 'Theme', 'settingPost', '', '模板文件编辑提交保存', '', '模板文件编辑提交保存'), ('227', '178', '1', '0', '10000', 'admin', 'Theme', 'dataSource', '', '模板文件设置数据源', '', '模板文件设置数据源'), ('231', '215', '1', '0', '10000', 'admin', 'Slide', 'add', '', '添加幻灯片', '', '添加幻灯片'), ('232', '215', '1', '0', '10000', 'admin', 'Slide', 'addPost', '', '添加幻灯片提交', '', '添加幻灯片提交'), ('233', '215', '1', '0', '10000', 'admin', 'Slide', 'edit', '', '编辑幻灯片', '', '编辑幻灯片'), ('234', '215', '1', '0', '10000', 'admin', 'Slide', 'editPost', '', '编辑幻灯片提交', '', '编辑幻灯片提交'), ('235', '215', '1', '0', '10000', 'admin', 'Slide', 'delete', '', '删除幻灯片', '', '删除幻灯片'), ('242', '0', '0', '1', '10', 'user', 'AdminIndex', 'default', '', '用户管理', 'group', '用户管理'), ('243', '242', '0', '1', '10000', 'admin', 'User', 'default', '', '管理组', '', '管理组'), ('244', '242', '0', '1', '10000', 'user', 'AdminIndex', 'default1', '', '用户组', '', '用户组'), ('245', '243', '1', '1', '10000', 'admin', 'User', 'index', '', '管理员管理', '', '管理员管理'), ('246', '244', '1', '1', '10000', 'user', 'AdminIndex', 'index', '', '本站用户', '', '本站用户'), ('247', '245', '1', '0', '10000', 'admin', 'User', 'add', '', '管理员添加', '', '管理员添加'), ('248', '245', '1', '0', '10000', 'admin', 'User', 'addPost', '', '管理员添加提交', '', '管理员添加提交'), ('249', '245', '1', '0', '10000', 'admin', 'User', 'edit', '', '管理员编辑', '', '管理员编辑'), ('250', '245', '1', '0', '10000', 'admin', 'User', 'editPost', '', '管理员编辑提交', '', '管理员编辑提交'), ('251', '245', '1', '0', '10000', 'admin', 'User', 'userInfo', '', '管理员个人信息修改', '', '管理员个人信息修改'), ('252', '245', '1', '0', '10000', 'admin', 'User', 'userInfoPost', '', '管理员个人信息修改提交', '', '管理员个人信息修改提交'), ('253', '245', '1', '0', '10000', 'admin', 'User', 'delete', '', '管理员删除', '', '管理员删除'), ('254', '245', '1', '0', '10000', 'admin', 'User', 'ban', '', '停用管理员', '', '停用管理员'), ('255', '245', '1', '0', '10000', 'admin', 'User', 'cancelBan', '', '启用管理员', '', '启用管理员'), ('256', '246', '1', '0', '10000', 'user', 'AdminIndex', 'ban', '', '本站用户拉黑', '', '本站用户拉黑'), ('257', '246', '1', '0', '10000', 'user', 'AdminIndex', 'cancelBan', '', '本站用户启用', '', '本站用户启用'), ('258', '244', '1', '1', '10000', 'user', 'AdminOauth', 'index', '', '第三方用户', '', '第三方用户'), ('259', '258', '1', '1', '10000', 'user', 'AdminOauth', 'delete', '', '删除第三方用户绑定', '', '删除第三方用户绑定');
COMMIT;

-- ----------------------------
--  Table structure for `cmf_asset`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_asset`;
CREATE TABLE `cmf_asset` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `file_size` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '文件大小,单位B',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上传时间',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态;1:可用,0:不可用',
  `download_times` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '下载次数',
  `file_key` varchar(64) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '文件惟一码',
  `filename` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '文件名',
  `file_path` varchar(200) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '文件路径,相对于upload目录,可以为url',
  `file_md5` varchar(32) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '文件md5值',
  `file_sha1` varchar(40) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `suffix` varchar(10) NOT NULL DEFAULT '' COMMENT '文件后缀名,不包括点',
  `more` text COMMENT '其它详细信息,JSON格式',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COMMENT='资源表';

-- ----------------------------
--  Records of `cmf_asset`
-- ----------------------------
BEGIN;
INSERT INTO `cmf_asset` VALUES ('1', '1', '135086', '1490415261', '1', '0', 'a8075a29adfd9de99e480a1edbe42cffe91fc45e28b9157a1ebbb591d7b68a5e', 'hdImg_5c4d7cf6f6cc9b7b7dff3b0b4d7eccc214646007082.jpg', '/upload/20170325/cc1cdc71e0ed84306f0e52cc81f9523b.jpg', 'a8075a29adfd9de99e480a1edbe42cff', '9a1672713312cbd0bca1a484e8458671d1fd9764', 'jpg', null), ('2', '1', '40218', '1490415562', '1', '0', '7d9d81229f77dd3d1419cdd5bf5fb7b3ab425928b9ac74fda6c84336374a3c7e', 'untitled1.png', '/upload/20170325/ad620e3d7c069a5547a412acf688e6e0.png', '7d9d81229f77dd3d1419cdd5bf5fb7b3', 'd42da02afc2ee3ee47314b2024c50ea27abae825', 'png', null), ('3', '1', '28801', '1490415588', '1', '0', '8513968ce05dbf74aad19aee90b9530d26dc0058160cf7e53f056356baf59672', 'untitled1.png', '/upload/20170325/402e6e18222c6cb28090ac36784a094f.png', '8513968ce05dbf74aad19aee90b9530d', 'aabd27c1470d0f69539c2845b00c8787bfe17d40', 'png', null), ('4', '1', '15681', '1490415924', '1', '0', '963e5e6edb61783b542b7ae3ce9f8e62805e265f2d47a19d92ecfdcc3068183e', 'hdImg_5c4d7cf6f6cc9b7b7dff3b0b4d7eccc214646007082.png', '/upload/ueditor/20170325/a006f47482539c0b3919f2653f009728.png', '963e5e6edb61783b542b7ae3ce9f8e62', '57860f91294334fabad98f9d52ede15d4c1b49cc', 'png', null), ('5', '1', '224014', '1490415945', '1', '0', 'cf89e813f99e838b1fe244893cfc3a40ec1cdc6fd90e86ba548c8408244ff010', 'hdImg_5c4d7cf6f6cc9b7b7dff3b0b4d7eccc214646007082.jpg', '/upload/ueditor/20170325/9d23d3c185261d48e4a67b401d9cdc45.jpg', 'cf89e813f99e838b1fe244893cfc3a40', 'e6087e72cb6e3a75b6fff6806fde437663db2e4d', 'jpg', null), ('6', '1', '133969', '1490672943', '1', '0', 'fe38bc7f2436dc5ee0f828b3a377e269279098552ff6fcb2de4c386ce21b4252', 'QQ20161224-1@2x.png', '/upload/20170328/b98c098e248fef7968fe6726cea77e0e.png', 'fe38bc7f2436dc5ee0f828b3a377e269', 'bfcb672319673dd1c29cf193f0ef2353038eba64', 'png', null), ('7', '1', '8488', '1491472631', '1', '0', 'e8f5e3c12a5995871ebd1a2bd8063e84b52a3edf5c4a07e2aea463d677f3b3c6', 'b5ab8d69c29fcefbde1ae9ae3beffb49.png', '/upload/20170406/b5ab8d69c29fcefbde1ae9ae3beffb49.png', 'e8f5e3c12a5995871ebd1a2bd8063e84', 'e6976d0a8f2bc5f798c7e5ddd584bfdcd2bb713f', 'png', null);
COMMIT;

-- ----------------------------
--  Table structure for `cmf_auth_access`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_auth_access`;
CREATE TABLE `cmf_auth_access` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(10) unsigned NOT NULL COMMENT '角色',
  `rule_name` varchar(100) NOT NULL DEFAULT '' COMMENT '规则唯一英文标识,全小写',
  `type` varchar(30) NOT NULL DEFAULT '' COMMENT '权限规则分类,请加应用前缀,如admin_',
  PRIMARY KEY (`id`),
  KEY `role_id` (`role_id`),
  KEY `rule_name` (`rule_name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='权限授权表';

-- ----------------------------
--  Table structure for `cmf_auth_rule`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_auth_rule`;
CREATE TABLE `cmf_auth_rule` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '规则id,自增主键',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '是否有效(0:无效,1:有效)',
  `app` varchar(20) NOT NULL COMMENT '规则所属module',
  `type` varchar(30) NOT NULL DEFAULT '' COMMENT '权限规则分类，请加应用前缀,如admin_',
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '规则唯一英文标识,全小写',
  `param` varchar(255) NOT NULL DEFAULT '' COMMENT '额外url参数',
  `title` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '规则描述',
  `condition` varchar(300) NOT NULL DEFAULT '' COMMENT '规则附加条件',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`) USING BTREE,
  KEY `module` (`app`,`status`,`type`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8mb4 COMMENT='权限规则表';

-- ----------------------------
--  Records of `cmf_auth_rule`
-- ----------------------------
BEGIN;
INSERT INTO `cmf_auth_rule` VALUES ('1', '1', 'admin', 'admin_url', 'admin/Hook/index', '', '钩子管理', ''), ('2', '1', 'admin', 'admin_url', 'admin/Hook/plugins', '', '钩子插件管理', ''), ('3', '1', 'admin', 'admin_url', 'admin/Hook/pluginToggle', '', '钩子插件启用禁用', ''), ('4', '1', 'admin', 'admin_url', 'admin/Hook/pluginListOrder', '', '钩子插件排序', ''), ('5', '1', 'admin', 'admin_url', 'admin/Link/index', '', '友情链接', ''), ('6', '1', 'admin', 'admin_url', 'admin/Link/add', '', '添加友情链接', ''), ('7', '1', 'admin', 'admin_url', 'admin/Link/addPost', '', '添加友情链接提交保存', ''), ('8', '1', 'admin', 'admin_url', 'admin/Link/edit', '', '编辑友情链接', ''), ('9', '1', 'admin', 'admin_url', 'admin/Link/editPost', '', '编辑友情链接提交保存', ''), ('10', '1', 'admin', 'admin_url', 'admin/Link/delete', '', '删除友情链接', ''), ('11', '1', 'admin', 'admin_url', 'admin/Link/listOrder', '', '友情链接排序', ''), ('12', '1', 'admin', 'admin_url', 'admin/Link/toggle', '', '友情链接显示隐藏', ''), ('13', '1', 'admin', 'admin_url', 'admin/Mailer/index', '', '邮箱配置', ''), ('14', '1', 'admin', 'admin_url', 'admin/Mailer/indexPost', '', '邮箱配置提交保存', ''), ('15', '1', 'admin', 'admin_url', 'admin/Mailer/active', '', '注册邮件模板', ''), ('16', '1', 'admin', 'admin_url', 'admin/Mailer/activePost', '', '会员注册邮件模板提交', ''), ('17', '1', 'admin', 'admin_url', 'admin/Mailer/test', '', '测试邮件', ''), ('18', '1', 'admin', 'admin_url', 'admin/Menu/index', '', '后台菜单', ''), ('19', '1', 'admin', 'admin_url', 'admin/Menu/lists', '', '所有菜单', ''), ('20', '1', 'admin', 'admin_url', 'admin/Menu/add', '', '添加菜单', ''), ('21', '1', 'admin', 'admin_url', 'admin/Menu/addPost', '', '后台菜单添加提交保存', ''), ('22', '1', 'admin', 'admin_url', 'admin/Menu/edit', '', '编辑菜单', ''), ('23', '1', 'admin', 'admin_url', 'admin/Menu/editPost', '', '后台菜单编辑提交保存', ''), ('24', '1', 'admin', 'admin_url', 'admin/Menu/delete', '', '删除菜单', ''), ('25', '1', 'admin', 'admin_url', 'admin/Menu/listOrder', '', '后台菜单排序', ''), ('26', '1', 'admin', 'admin_url', 'admin/Menu/getActions', '', '导入新菜单', ''), ('27', '1', 'admin', 'admin_url', 'admin/Nav/index', '', '导航管理', ''), ('28', '1', 'admin', 'admin_url', 'admin/Nav/add', '', '添加菜单', ''), ('29', '1', 'admin', 'admin_url', 'admin/Nav/addPost', '', '添加导航提交保存', ''), ('30', '1', 'admin', 'admin_url', 'admin/Nav/edit', '', '编辑菜单', ''), ('31', '1', 'admin', 'admin_url', 'admin/Nav/editPost', '', '编辑导航提交保存', ''), ('32', '1', 'admin', 'admin_url', 'admin/Nav/delete', '', '删除菜单', ''), ('33', '1', 'admin', 'admin_url', 'admin/NavMenu/index', '', '导航菜单', ''), ('34', '1', 'admin', 'admin_url', 'admin/NavMenu/add', '', '添加导航菜单', ''), ('35', '1', 'admin', 'admin_url', 'admin/NavMenu/addPost', '', '添加导航菜单提交保存', ''), ('36', '1', 'admin', 'admin_url', 'admin/NavMenu/edit', '', '编辑导航菜单', ''), ('37', '1', 'admin', 'admin_url', 'admin/NavMenu/editPost', '', '编辑导航菜单提交保存', ''), ('38', '1', 'admin', 'admin_url', 'admin/NavMenu/delete', '', '删除导航菜单', ''), ('39', '1', 'admin', 'admin_url', 'admin/NavMenu/listOrder', '', '导航菜单排序', ''), ('40', '1', 'admin', 'admin_url', 'admin/Plugin/default', '', '插件管理', ''), ('41', '1', 'admin', 'admin_url', 'admin/Plugin/index', '', '插件列表', ''), ('42', '1', 'admin', 'admin_url', 'admin/Plugin/toggle', '', '插件启用切换', ''), ('43', '1', 'admin', 'admin_url', 'admin/Plugin/setting', '', '插件设置', ''), ('44', '1', 'admin', 'admin_url', 'admin/Plugin/settingPost', '', '插件设置提交', ''), ('45', '1', 'admin', 'admin_url', 'admin/Plugin/install', '', '插件安装', ''), ('46', '1', 'admin', 'admin_url', 'admin/Plugin/update', '', '插件更新', ''), ('47', '1', 'admin', 'admin_url', 'admin/Plugin/uninstall', '', '插件卸载', ''), ('48', '1', 'admin', 'admin_url', 'admin/Recycle/index', '', '回收站', ''), ('49', '1', 'admin', 'admin_url', 'admin/Recycle/restore', '', '回收站还原', ''), ('50', '1', 'admin', 'admin_url', 'admin/Recycle/delete', '', '回收站彻底删除', ''), ('51', '1', 'admin', 'admin_url', 'admin/Setting/default', '', '设置', ''), ('52', '1', 'admin', 'admin_url', 'admin/Setting/site', '', '网站信息', ''), ('53', '1', 'admin', 'admin_url', 'admin/Setting/sitePost', '', '网站信息设置提交', ''), ('54', '1', 'admin', 'admin_url', 'admin/Setting/password', '', '修改密码', ''), ('55', '1', 'admin', 'admin_url', 'admin/Setting/passwordPost', '', '密码修改提交', ''), ('56', '1', 'admin', 'admin_url', 'admin/Setting/upload', '', '上传设置', ''), ('57', '1', 'admin', 'admin_url', 'admin/Setting/uploadPost', '', '上传设置提交', ''), ('58', '1', 'admin', 'admin_url', 'admin/Setting/clearCache', '', '清除缓存', ''), ('59', '1', 'admin', 'admin_url', 'admin/Slide/index', '', '幻灯片管理', ''), ('60', '1', 'admin', 'admin_url', 'admin/Slide/add', '', '添加幻灯片', ''), ('61', '1', 'admin', 'admin_url', 'admin/Slide/addPost', '', '添加幻灯片提交', ''), ('62', '1', 'admin', 'admin_url', 'admin/Slide/edit', '', '编辑幻灯片', ''), ('63', '1', 'admin', 'admin_url', 'admin/Slide/editPost', '', '编辑幻灯片提交', ''), ('64', '1', 'admin', 'admin_url', 'admin/Slide/delete', '', '删除幻灯片', ''), ('65', '1', 'admin', 'admin_url', 'admin/Theme/index', '', '模板管理', ''), ('66', '1', 'admin', 'admin_url', 'admin/Theme/install', '', '安装模板', ''), ('67', '1', 'admin', 'admin_url', 'admin/Theme/uninstall', '', '卸载模板', ''), ('68', '1', 'admin', 'admin_url', 'admin/Theme/installTheme', '', '模板安装', ''), ('69', '1', 'admin', 'admin_url', 'admin/Theme/update', '', '模板更新', ''), ('70', '1', 'admin', 'admin_url', 'admin/Theme/active', '', '启用模板', ''), ('71', '1', 'admin', 'admin_url', 'admin/Theme/files', '', '模板文件列表', ''), ('72', '1', 'admin', 'admin_url', 'admin/Theme/fileSetting', '', '模板文件设置', ''), ('73', '1', 'admin', 'admin_url', 'admin/Theme/fileArrayData', '', '模板文件数组数据列表', ''), ('74', '1', 'admin', 'admin_url', 'admin/Theme/fileArrayDataEdit', '', '模板文件数组数据添加编辑', ''), ('75', '1', 'admin', 'admin_url', 'admin/Theme/fileArrayDataDelete', '', '模板文件数组数据删除', ''), ('76', '1', 'admin', 'admin_url', 'admin/Theme/settingPost', '', '模板文件编辑提交保存', ''), ('77', '1', 'admin', 'admin_url', 'admin/Theme/dataSource', '', '模板文件设置数据源', ''), ('78', '1', 'admin', 'admin_url', 'admin/User/default', '', '管理组', ''), ('79', '1', 'admin', 'admin_url', 'admin/User/index', '', '管理员管理', ''), ('80', '1', 'admin', 'admin_url', 'admin/User/add', '', '管理员添加', ''), ('81', '1', 'admin', 'admin_url', 'admin/User/addPost', '', '管理员添加提交', ''), ('82', '1', 'admin', 'admin_url', 'admin/User/edit', '', '管理员编辑', ''), ('83', '1', 'admin', 'admin_url', 'admin/User/editPost', '', '管理员编辑提交', ''), ('84', '1', 'admin', 'admin_url', 'admin/User/userInfo', '', '管理员个人信息修改', ''), ('85', '1', 'admin', 'admin_url', 'admin/User/userInfoPost', '', '管理员个人信息修改提交', ''), ('86', '1', 'admin', 'admin_url', 'admin/User/delete', '', '管理员删除', ''), ('87', '1', 'admin', 'admin_url', 'admin/User/ban', '', '停用管理员', ''), ('88', '1', 'admin', 'admin_url', 'admin/User/cancelBan', '', '启用管理员', ''), ('89', '1', 'user', 'admin_url', 'user/AdminIndex/default', '', '用户管理', ''), ('90', '1', 'user', 'admin_url', 'user/AdminIndex/default1', '', '用户组', ''), ('91', '1', 'user', 'admin_url', 'user/AdminIndex/index', '', '本站用户', ''), ('92', '1', 'user', 'admin_url', 'user/AdminIndex/ban', '', '本站用户拉黑', ''), ('93', '1', 'user', 'admin_url', 'user/AdminIndex/cancelBan', '', '本站用户启用', ''), ('94', '1', 'user', 'admin_url', 'user/AdminOauth/index', '', '第三方用户', ''), ('95', '1', 'user', 'admin_url', 'user/AdminOauth/delete', '', '删除第三方用户绑定', '');
COMMIT;

-- ----------------------------
--  Table structure for `cmf_comment`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_comment`;
CREATE TABLE `cmf_comment` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '被回复的评论id',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '发表评论的用户id',
  `to_user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '被评论的用户id',
  `object_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '评论内容 id',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '评论时间',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:已审核,0:未审核',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '评论类型；1实名评论',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '原文地址',
  `table_name` varchar(100) NOT NULL DEFAULT '' COMMENT '评论内容所在表，不带表前缀',
  `full_name` varchar(50) NOT NULL DEFAULT '' COMMENT '评论者昵称',
  `email` varchar(255) NOT NULL DEFAULT '' COMMENT '评论者邮箱',
  `path` varchar(500) NOT NULL DEFAULT '' COMMENT '层级关系',
  `content` text COMMENT '评论内容',
  `more` text COMMENT '扩展属性',
  PRIMARY KEY (`id`),
  KEY `comment_post_ID` (`object_id`),
  KEY `comment_approved_date_gmt` (`status`),
  KEY `comment_parent` (`parent_id`),
  KEY `table_id_status` (`table_name`,`object_id`,`status`),
  KEY `createtime` (`create_time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='评论表';

-- ----------------------------
--  Table structure for `cmf_hook`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_hook`;
CREATE TABLE `cmf_hook` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '钩子类型(1:系统钩子;2:应用钩子;3:模板钩子)',
  `once` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否只允许一个插件运行(0:多个;1:一个)',
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '钩子名称',
  `hook` varchar(20) NOT NULL DEFAULT '' COMMENT '钩子',
  `app` varchar(20) NOT NULL DEFAULT '' COMMENT '应用名(只有应用钩子才用)',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COMMENT='系统钩子表';

-- ----------------------------
--  Records of `cmf_hook`
-- ----------------------------
BEGIN;
INSERT INTO `cmf_hook` VALUES ('1', '1', '0', '应用初始化', 'app_init', 'cmf', '应用初始化'), ('2', '1', '0', '应用开始标签位', 'app_begin', 'cmf', '应用开始标签位'), ('3', '1', '0', '模块初始化标签位', 'module_init', 'cmf', '模块初始化标签位'), ('4', '1', '0', '控制器开始标签位', 'action_begin', 'cmf', '控制器开始标签位'), ('5', '1', '0', '视图输出过滤标签位', 'view_filter', 'cmf', '视图输出过滤标签位'), ('6', '1', '0', '应用结束标签位', 'app_end', 'cmf', '应用结束标签位'), ('7', '1', '0', '日志write方法标签位', 'log_write', 'cmf', '日志write方法标签位'), ('8', '1', '0', '输出结束标签位', 'response_end', 'cmf', '输出结束标签位');
COMMIT;

-- ----------------------------
--  Table structure for `cmf_hook_plugin`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_hook_plugin`;
CREATE TABLE `cmf_hook_plugin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态(0:禁用,1:启用)',
  `hook` varchar(20) NOT NULL DEFAULT '' COMMENT '钩子名',
  `plugin` varchar(30) NOT NULL DEFAULT '' COMMENT '插件',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='系统钩子插件表';

-- ----------------------------
--  Records of `cmf_hook_plugin`
-- ----------------------------
BEGIN;
INSERT INTO `cmf_hook_plugin` VALUES ('1', '10', '1', 'footer', 'Demo');
COMMIT;

-- ----------------------------
--  Table structure for `cmf_link`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_link`;
CREATE TABLE `cmf_link` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态;1:显示;0:不显示',
  `rating` int(11) NOT NULL DEFAULT '0' COMMENT '友情链接评级',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '友情链接描述',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '友情链接地址',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '友情链接名称',
  `image` varchar(255) NOT NULL DEFAULT '' COMMENT '友情链接图标',
  `target` varchar(25) NOT NULL DEFAULT '' COMMENT '友情链接打开方式',
  `rel` varchar(255) NOT NULL DEFAULT '' COMMENT '链接与网站的关系',
  PRIMARY KEY (`id`),
  KEY `link_visible` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='友情链接表';

-- ----------------------------
--  Records of `cmf_link`
-- ----------------------------
BEGIN;
INSERT INTO `cmf_link` VALUES ('1', '1', '1', '8', 'thinkcmf官网', 'http://www.thinkcmf.com', 'ThinkCMF', '', '_blank', '');
COMMIT;

-- ----------------------------
--  Table structure for `cmf_nav`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_nav`;
CREATE TABLE `cmf_nav` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `is_main` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '是否为主导航;1:是;0:不是',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '导航位置名称',
  `remark` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='前台导航位置表';

-- ----------------------------
--  Records of `cmf_nav`
-- ----------------------------
BEGIN;
INSERT INTO `cmf_nav` VALUES ('1', '1', '主导航', '主导航');
COMMIT;

-- ----------------------------
--  Table structure for `cmf_nav_menu`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_nav_menu`;
CREATE TABLE `cmf_nav_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nav_id` int(11) NOT NULL COMMENT '导航 id',
  `parent_id` int(11) NOT NULL COMMENT '父 id',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态;1:显示;0:隐藏',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '菜单名称',
  `target` varchar(50) NOT NULL DEFAULT '' COMMENT '打开方式',
  `href` varchar(255) NOT NULL DEFAULT '' COMMENT '链接',
  `icon` varchar(255) NOT NULL DEFAULT '' COMMENT '图标',
  `path` varchar(255) NOT NULL DEFAULT '' COMMENT '层级关系',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COMMENT='前台导航菜单表';

-- ----------------------------
--  Records of `cmf_nav_menu`
-- ----------------------------
BEGIN;
INSERT INTO `cmf_nav_menu` VALUES ('1', '1', '0', '1', '0', '首页', '', 'home', '', '0-1'), ('2', '1', '0', '1', '0', '列表演示', '', '{\"action\":\"portal\\/List\\/index\",\"param\":{\"id\":1}}', 'icon', '0-2'), ('9', '1', '0', '1', '0', '页面演示', '', '{\"action\":\"portal\\/Page\\/index\",\"param\":{\"id\":13}}', '', ''), ('10', '1', '0', '1', '10000', '联系我们', '', '{\"action\":\"portal\\/Page\\/index\",\"param\":{\"id\":14}}', '', '');
COMMIT;

-- ----------------------------
--  Table structure for `cmf_option`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_option`;
CREATE TABLE `cmf_option` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `autoload` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '是否自动加载;1:自动加载;0:不自动加载',
  `option_name` varchar(64) NOT NULL DEFAULT '' COMMENT '配置名',
  `option_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '配置值',
  PRIMARY KEY (`id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='全站配置表';

-- ----------------------------
--  Records of `cmf_option`
-- ----------------------------
BEGIN;
INSERT INTO `cmf_option` VALUES ('1', '1', 'smtp_setting', '{\"from\":\"zxxjjforever@163.com\",\"from_name\":\"\\u8001\\u732b\",\"host\":\"smtp.163.com\",\">smtp_secure\":\"ssl\",\"port\":\"25\",\"username\":\"zxxjjforever@163.com\",\"password\":\"111111\",\"smtp_secure\":\"\"}'), ('2', '1', 'email_template_user_activation', '{\"subject\":\"dd\",\"template\":\"<p>ddd<\\/p>\"}'), ('3', '1', 'upload_setting', '{\"image\":{\"upload_max_filesize\":\"10240\",\"extensions\":\"jpg,jpeg,png,gif,bmp4\"},\"video\":{\"upload_max_filesize\":\"10240\",\"extensions\":\"mp4,avi,wmv,rm,rmvb,mkv\"},\"audio\":{\"upload_max_filesize\":\"10240\",\"extensions\":\"mp3,wma,wav\"},\"file\":{\"upload_max_filesize\":\"10240\",\"extensions\":\"txt,pdf,doc,docx,xls,xlsx,ppt,pptx,zip,rar\"}}'), ('4', '1', 'site_info', '{\"site_name\":\" ThinkCMF\",\"site_admin_url_password\":\"\",\"site_icp\":\"\",\"site_admin_email\":\"\",\"site_analytics\":\"\",\"site_copyright\":\"\",\"site_seo_title\":\"\",\"site_seo_keywords\":\"\",\"site_seo_description\":\"\",\"urlmode\":\"1\",\"html_suffix\":\"\",\"comment_time_interval\":\"60\"}'), ('5', '1', 'cmf_settings', '{\"banned_usernames\":\"\"}'), ('6', '1', 'cdn_settings', '{\"cdn_static_root\":\"\"}');
COMMIT;

-- ----------------------------
--  Table structure for `cmf_plugin`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_plugin`;
CREATE TABLE `cmf_plugin` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '插件类型;1:网站;8:微信',
  `has_admin` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否有后台管理,0:没有;1:有',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态;1:开启;0:禁用',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '插件安装时间',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '插件标识名,英文字母(惟一)',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '插件名称',
  `hooks` varchar(255) NOT NULL DEFAULT '' COMMENT '实现的钩子;以“,”分隔',
  `author` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '插件作者',
  `version` varchar(20) NOT NULL DEFAULT '' COMMENT '插件版本号',
  `description` varchar(255) NOT NULL COMMENT '插件描述',
  `config` text COMMENT '插件配置',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COMMENT='插件表';

-- ----------------------------
--  Records of `cmf_plugin`
-- ----------------------------
BEGIN;
INSERT INTO `cmf_plugin` VALUES ('8', '1', '1', '1', '0', 'Demo', '插件演示', 'footer', 'ThinkCMF', '1.0', '插件演示', '{\"text\":\"hello,ThinkCMF!\",\"password\":\"\",\"select\":\"1\",\"checkbox\":1,\"radio\":\"1\",\"radio2\":\"1\",\"textarea\":\"\\u8fd9\\u91cc\\u662f\\u4f60\\u8981\\u586b\\u5199\\u7684\\u5185\\u5bb9\"}');
COMMIT;

-- ----------------------------
--  Table structure for `cmf_portal_category`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_portal_category`;
CREATE TABLE `cmf_portal_category` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类id',
  `parent_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '分类父id',
  `post_count` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '分类文章数',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:发布,0:不发布',
  `delete_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '删除时间',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '分类名称',
  `description` varchar(255) NOT NULL COMMENT '分类描述',
  `path` varchar(500) NOT NULL DEFAULT '' COMMENT '分类层级关系路径',
  `seo_title` varchar(100) NOT NULL DEFAULT '',
  `seo_keywords` varchar(255) NOT NULL DEFAULT '',
  `seo_description` varchar(255) NOT NULL DEFAULT '',
  `list_tpl` varchar(50) NOT NULL DEFAULT '' COMMENT '分类列表模板',
  `one_tpl` varchar(50) NOT NULL DEFAULT '' COMMENT '分类文章页模板',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COMMENT='portal应用 文章分类表';

-- ----------------------------
--  Records of `cmf_portal_category`
-- ----------------------------
BEGIN;
INSERT INTO `cmf_portal_category` VALUES ('1', '0', '0', '1', '0', '0', '列表演示', '列表演示', '0-1', '', '', '', 'list', 'article'), ('2', '1', '0', '1', '1490923104', '0', '瀑布流', '', '0-1-2', '', '', '', 'list_masonry', 'article'), ('6', '0', '0', '1', '1490923089', '0', 'asf', 'asdfyyy', '0-6', 'asdf', 'asf', 'afsd', 'list', 'article'), ('7', '0', '0', '1', '1490923091', '0', 'ddd', '', '', '', '', '', 'list', 'article'), ('8', '0', '0', '1', '1490923093', '0', 'testddd', 'test', '', '', '', '', 'list', 'article');
COMMIT;

-- ----------------------------
--  Table structure for `cmf_portal_category_post`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_portal_category_post`;
CREATE TABLE `cmf_portal_category_post` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '文章id',
  `category_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '分类id',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:发布;0:不发布',
  PRIMARY KEY (`id`),
  KEY `term_taxonomy_id` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8 COMMENT='portal应用 分类文章对应表';

-- ----------------------------
--  Records of `cmf_portal_category_post`
-- ----------------------------
BEGIN;
INSERT INTO `cmf_portal_category_post` VALUES ('33', '2', '1', '0', '1'), ('34', '2', '2', '0', '1'), ('35', '2', '6', '0', '1'), ('80', '3', '1', '0', '1'), ('82', '5', '1', '0', '1'), ('83', '11', '2', '0', '1'), ('84', '12', '1', '0', '1'), ('85', '12', '2', '0', '1'), ('86', '12', '6', '0', '1'), ('87', '12', '7', '0', '1'), ('88', '12', '8', '0', '1'), ('89', '1', '1', '0', '1'), ('90', '1', '2', '0', '1'), ('93', '4', '6', '10000', '1');
COMMIT;

-- ----------------------------
--  Table structure for `cmf_portal_post`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_portal_post`;
CREATE TABLE `cmf_portal_post` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '父级id',
  `post_type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '类型,1:文章;2:页面',
  `post_format` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '内容格式;1:html;2:md',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '发表者用户id',
  `post_status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态;1:已审核;0:未审核;3:删除',
  `comment_status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '评论状态;1:允许;0:不允许',
  `is_top` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否置顶;1:置顶;0:不置顶',
  `recommended` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否推荐;1:推荐;0:不推荐',
  `post_hits` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '查看数',
  `post_like` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '点赞数',
  `comment_count` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '评论数',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `published_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '发布时间',
  `delete_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '删除时间',
  `post_title` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'post标题',
  `post_keywords` varchar(150) NOT NULL DEFAULT '' COMMENT 'seo keywords',
  `post_excerpt` varchar(500) NOT NULL COMMENT 'post摘要',
  `post_source` varchar(150) NOT NULL DEFAULT '' COMMENT '转载文章的来源',
  `post_content` text COMMENT '文章内容',
  `post_content_filtered` text COMMENT '处理过的文章内容',
  `more` text COMMENT '扩展属性,如缩略图;格式为json',
  PRIMARY KEY (`id`),
  KEY `type_status_date` (`post_type`,`post_status`,`create_time`,`id`),
  KEY `post_parent` (`parent_id`),
  KEY `post_author` (`user_id`),
  KEY `post_date` (`create_time`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='portal应用 文章表';

-- ----------------------------
--  Records of `cmf_portal_post`
-- ----------------------------
BEGIN;
INSERT INTO `cmf_portal_post` VALUES ('1', '0', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '1488176000', '1487928493', 'tesat磊', '磊test', 'test', 'testdd', '&lt;p&gt;ddddddddddddd在磊城标城磊大&lt;br/&gt;&lt;/p&gt;', null, null), ('2', '0', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '1488176000', '1487928552', 'dddd', 'dddd', 'ddd', 'dd', '&lt;p&gt;ddd在&lt;/p&gt;', null, null), ('3', '0', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '1491024596', '1491024623', 'ddd', '', '', '', null, null, null), ('4', '0', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '1491024540', '0', 'dddd空间克隆就离开', '', '', '', null, null, '{\"thumb\":\"\"}'), ('5', '0', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '1491024596', '0', 'ddd', 'dd', '', '', null, null, null), ('6', '0', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '1491024596', '0', 'adsf', '', '', '', null, null, null), ('7', '0', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '1491024596', '0', '磊', '', '', '', null, null, null), ('8', '0', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '1491024596', '0', 'ddd', '', '', '', null, null, null), ('9', '0', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '1491024596', '0', 'ddd', '', '', '', null, null, null), ('10', '0', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '1491024596', '0', 'ddd', '', '', '', null, null, null), ('11', '0', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '1491024596', '0', 'ddd', 'dd', '', 'dd', null, null, null), ('12', '0', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '1491024596', '0', 'dddd', 'ddd', 'dd', 'dd', '&lt;p&gt;ddd&lt;/p&gt;', null, null), ('13', '0', '2', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '1488175620', '0', '页面演示', 'dd', 'dd', '', '&lt;p&gt;dd&lt;/p&gt;', null, '{\"template\":\"page\",\"thumb\":\"\"}'), ('14', '0', '2', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '1491471360', '0', '联系我们', '联系我们', '联系我们', '', '&lt;p&gt;联系我们&lt;/p&gt;', null, '{\"template\":\"contact\",\"thumb\":\"\"}');
COMMIT;

-- ----------------------------
--  Table structure for `cmf_portal_tag`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_portal_tag`;
CREATE TABLE `cmf_portal_tag` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类id',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:发布,0:不发布',
  `recommended` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否推荐;1:推荐;0:不推荐',
  `post_count` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '标签文章数',
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '标签名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='portal应用 文章标签表';

-- ----------------------------
--  Records of `cmf_portal_tag`
-- ----------------------------
BEGIN;
INSERT INTO `cmf_portal_tag` VALUES ('1', '0', '0', '0', 'tes');
COMMIT;

-- ----------------------------
--  Table structure for `cmf_portal_tag_post`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_portal_tag_post`;
CREATE TABLE `cmf_portal_tag_post` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tag_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '标签 id',
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '文章 id',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:发布;0:不发布',
  PRIMARY KEY (`id`),
  KEY `term_taxonomy_id` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='portal应用 标签文章对应表';

-- ----------------------------
--  Table structure for `cmf_recycle_bin`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_recycle_bin`;
CREATE TABLE `cmf_recycle_bin` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `object_id` int(11) DEFAULT '0' COMMENT '删除内容 id',
  `create_time` int(10) unsigned DEFAULT '0' COMMENT '创建时间',
  `table_name` varchar(60) DEFAULT '' COMMENT '删除内容所在表名',
  `name` varchar(255) DEFAULT '' COMMENT '删除内容名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COMMENT=' 回收站';

-- ----------------------------
--  Records of `cmf_recycle_bin`
-- ----------------------------
BEGIN;
INSERT INTO `cmf_recycle_bin` VALUES ('1', '6', '1490923089', 'portal_category', 'asf'), ('2', '7', '1490923091', 'portal_category', 'ddd'), ('3', '8', '1490923093', 'portal_category', 'testddd'), ('4', '2', '1490923104', 'portal_category', '瀑布流'), ('5', '3', '1491024623', 'portal_post', 'ddd');
COMMIT;

-- ----------------------------
--  Table structure for `cmf_role`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_role`;
CREATE TABLE `cmf_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父角色ID',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '状态;0:禁用;1:正常',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `list_order` float NOT NULL DEFAULT '0' COMMENT '排序',
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '角色名称',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`),
  KEY `parentId` (`parent_id`),
  KEY `status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='角色表';

-- ----------------------------
--  Records of `cmf_role`
-- ----------------------------
BEGIN;
INSERT INTO `cmf_role` VALUES ('1', '0', '1', '1329633709', '1329633709', '0', '超级管理员', '拥有网站最高管理员权限！'), ('2', '0', '1', '1329633709', '1329633709', '0', '普通管理员', '权限由最高管理员分配！');
COMMIT;

-- ----------------------------
--  Table structure for `cmf_role_user`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_role_user`;
CREATE TABLE `cmf_role_user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '角色 id',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  PRIMARY KEY (`id`),
  KEY `group_id` (`role_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='用户角色对应表';

-- ----------------------------
--  Records of `cmf_role_user`
-- ----------------------------
BEGIN;
INSERT INTO `cmf_role_user` VALUES ('2', '2', '3');
COMMIT;

-- ----------------------------
--  Table structure for `cmf_route`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_route`;
CREATE TABLE `cmf_route` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '路由id',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态;1:启用,0:不启用',
  `full_url` varchar(255) NOT NULL DEFAULT '' COMMENT '完整url',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '实际显示的url',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COMMENT='url路由表';

-- ----------------------------
--  Records of `cmf_route`
-- ----------------------------
BEGIN;
INSERT INTO `cmf_route` VALUES ('3', '0', '1', '秀梅', '大'), ('4', '0', '0', '', '');
COMMIT;

-- ----------------------------
--  Table structure for `cmf_slide`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_slide`;
CREATE TABLE `cmf_slide` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:显示,0不显示',
  `delete_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '删除时间',
  `name` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '幻灯片分类',
  `remark` varchar(500) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '分类备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='幻灯片表';

-- ----------------------------
--  Records of `cmf_slide`
-- ----------------------------
BEGIN;
INSERT INTO `cmf_slide` VALUES ('1', '1', '0', '首页幻灯片', '');
COMMIT;

-- ----------------------------
--  Table structure for `cmf_slide_item`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_slide_item`;
CREATE TABLE `cmf_slide_item` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `slide_id` int(11) NOT NULL DEFAULT '0' COMMENT '幻灯片id',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:显示;0:隐藏',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `title` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '幻灯片名称',
  `picture` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '幻灯片图片',
  `url` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '幻灯片链接',
  `description` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '幻灯片描述',
  `content` text CHARACTER SET utf8 COMMENT '幻灯片内容',
  `more` text COMMENT '扩展属性;格式为json',
  PRIMARY KEY (`id`),
  KEY `slide_cid` (`slide_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='幻灯片子项表';

-- ----------------------------
--  Records of `cmf_slide_item`
-- ----------------------------
BEGIN;
INSERT INTO `cmf_slide_item` VALUES ('2', '1', '1', '0', 'test1', 'admin/20160929/57ec4f074dbae.png', 'dd', 'dd', 'd', null);
COMMIT;

-- ----------------------------
--  Table structure for `cmf_theme`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_theme`;
CREATE TABLE `cmf_theme` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '安装时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后升级时间',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '模板状态,1:正在使用;0:未使用',
  `is_compiled` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否为已编译模板',
  `theme` varchar(50) NOT NULL DEFAULT '' COMMENT '主题目录名，用于主题的维一标识',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '主题名称',
  `version` varchar(20) NOT NULL DEFAULT '' COMMENT '主题版本号',
  `demo_url` varchar(50) NOT NULL DEFAULT '' COMMENT '演示地址，带协议',
  `author` varchar(20) NOT NULL DEFAULT '' COMMENT '主题作者',
  `author_url` varchar(50) NOT NULL DEFAULT '' COMMENT '作者网站链接',
  `lang` varchar(10) NOT NULL DEFAULT '' COMMENT '支持语言',
  `keywords` varchar(50) NOT NULL DEFAULT '' COMMENT '主题关键字',
  `description` varchar(100) NOT NULL DEFAULT '' COMMENT '主题描述',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `cmf_theme`
-- ----------------------------
BEGIN;
INSERT INTO `cmf_theme` VALUES ('3', '0', '0', '0', '0', 'simpleboot3', 'simpleboot3', '1.0.1', 'http://demo.thinkcmf.com', 'ThinkCMF', 'http://www.thinkcmf.com', 'zh-cn', 'ThinkCMF模板', 'ThinkCMF默认模板');
COMMIT;

-- ----------------------------
--  Table structure for `cmf_theme_file`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_theme_file`;
CREATE TABLE `cmf_theme_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_public` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否公共的模板文件',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `theme` varchar(50) NOT NULL DEFAULT '' COMMENT '模板名称',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '模板文件名',
  `action` varchar(50) NOT NULL DEFAULT '' COMMENT '操作',
  `file` varchar(50) NOT NULL DEFAULT '' COMMENT '模板文件，相对于模板根目录，如Portal/index.html',
  `description` varchar(100) NOT NULL DEFAULT '' COMMENT '模板文件描述',
  `more` text COMMENT '模板更多配置,用户自己后台设置的',
  `config_more` text COMMENT '模板更多配置,来源模板的配置文件',
  `draft_more` text COMMENT '模板更多配置,用户临时保存的配置',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `cmf_theme_file`
-- ----------------------------
BEGIN;
INSERT INTO `cmf_theme_file` VALUES ('12', '0', '4', 'simpleboot3', '联系我们页', 'portal/Page/index', 'portal/contact', '联系我们页模板文件', '{\"vars\":{\"baidu_map_info_window_text\":{\"title\":\"\\u767e\\u5ea6\\u5730\\u56fe\\u6807\\u6ce8\\u6587\\u5b57\",\"name\":\"baidu_map_info_window_text\",\"value\":\"ThinkCMF<br\\/><span class=\'\'>\\u5730\\u5740\\uff1a\\u4e0a\\u6d77\\u5e02\\u5f90\\u6c47\\u533a\\u659c\\u571f\\u8def2601\\u53f7<\\/span>\",\"type\":\"text\",\"tip\":\"\\u767e\\u5ea6\\u5730\\u56fe\\u6807\\u6ce8\\u6587\\u5b57,\\u652f\\u6301\\u7b80\\u5355html\\u4ee3\\u7801\",\"rule\":[]}}}', '{\"vars\":{\"baidu_map_info_window_text\":{\"title\":\"\\u767e\\u5ea6\\u5730\\u56fe\\u6807\\u6ce8\\u6587\\u5b57\",\"name\":\"baidu_map_info_window_text\",\"value\":\"ThinkCMF<br\\/><span class=\'\'>\\u5730\\u5740\\uff1a\\u4e0a\\u6d77\\u5e02\\u5f90\\u6c47\\u533a\\u659c\\u571f\\u8def2601\\u53f7<\\/span>\",\"type\":\"text\",\"tip\":\"\\u767e\\u5ea6\\u5730\\u56fe\\u6807\\u6ce8\\u6587\\u5b57,\\u652f\\u6301\\u7b80\\u5355html\\u4ee3\\u7801\",\"rule\":[]}}}', null), ('13', '0', '6', 'simpleboot3', '首页', 'portal/Index/index', 'portal/index', '首页模板文件', '{\"vars\":{\"test_select\":{\"title\":\"\\u60a8\\u5e38\\u7528\\u7684ThinkCMF\\u5e94\\u7528\",\"value\":\"2\",\"type\":\"select\",\"options\":{\"1\":\"ThinkCMFX\",\"2\":\"ThinkCMF\",\"3\":\"\\u8ddf\\u732b\\u73a9\\u7cd7\\u4e8b\",\"4\":\"\\u95e8\\u6237\\u5e94\\u7528\"},\"tip\":\"\",\"rule\":{\"require\":\"require\"}},\"features\":{\"title\":\"\\u7279\\u6027\\u4ecb\\u7ecd\",\"value\":[],\"type\":\"array\",\"item\":{\"title\":{\"title\":\"\\u6807\\u9898\",\"value\":\"\",\"type\":\"text\"},\"icon\":{\"title\":\"\\u56fe\\u6807\",\"value\":\"\",\"type\":\"text\"},\"content\":{\"title\":\"\\u63cf\\u8ff0\",\"value\":\"\",\"type\":\"text\"}},\"tip\":\"\",\"rule\":{\"require\":true}}},\"widgets\":{\"last_news\":{\"title\":\"\\u6700\\u65b0\\u8d44\\u8baf\",\"display\":\"1\",\"vars\":{\"last_news_category_id\":{\"title\":\"\\u6700\\u65b0\\u8d44\\u8baf\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}', '{\"vars\":{\"test_select\":{\"title\":\"\\u60a8\\u5e38\\u7528\\u7684ThinkCMF\\u5e94\\u7528\",\"value\":\"2\",\"type\":\"select\",\"options\":{\"1\":\"ThinkCMFX\",\"2\":\"ThinkCMF\",\"3\":\"\\u8ddf\\u732b\\u73a9\\u7cd7\\u4e8b\",\"4\":\"\\u95e8\\u6237\\u5e94\\u7528\"},\"tip\":\"\",\"rule\":{\"require\":\"require\"}},\"features\":{\"title\":\"\\u7279\\u6027\\u4ecb\\u7ecd\",\"value\":[],\"type\":\"array\",\"item\":{\"title\":{\"title\":\"\\u6807\\u9898\",\"value\":\"\",\"type\":\"text\"},\"icon\":{\"title\":\"\\u56fe\\u6807\",\"value\":\"\",\"type\":\"text\"},\"content\":{\"title\":\"\\u63cf\\u8ff0\",\"value\":\"\",\"type\":\"text\"}},\"tip\":\"\",\"rule\":{\"require\":true}}},\"widgets\":{\"last_news\":{\"title\":\"\\u6700\\u65b0\\u8d44\\u8baf\",\"display\":\"1\",\"vars\":{\"last_news_category_id\":{\"title\":\"\\u6700\\u65b0\\u8d44\\u8baf\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}', null), ('15', '1', '8', 'simpleboot3', '导航条', 'portal/Public/nav', 'public/nav', '导航条模板文件', '{\"vars\":{\"company_name\":{\"title\":\"\\u516c\\u53f8\\u540d\\u79f0\",\"name\":\"company_name\",\"value\":\"ThinkCMF\",\"type\":\"text\",\"tip\":\"\",\"rule\":[]}}}', '{\"vars\":{\"company_name\":{\"title\":\"\\u516c\\u53f8\\u540d\\u79f0\",\"name\":\"company_name\",\"value\":\"ThinkCMF\",\"type\":\"text\",\"tip\":\"\",\"rule\":[]}}}', null), ('14', '0', '5', 'simpleboot3', '文章列表页', 'portal/List/index', 'portal/list', '文章列表模板文件', '{\"vars\":{\"hot_articles_category_id\":{\"title\":\"\\u70ed\\u95e8\\u6587\\u7ae0\\u5206\\u7c7bID\",\"name\":\"hot_articles_category_id\",\"value\":\"1\",\"type\":\"text\",\"tip\":\"\",\"rule\":[]}}}', '{\"vars\":{\"hot_articles_category_id\":{\"title\":\"\\u70ed\\u95e8\\u6587\\u7ae0\\u5206\\u7c7bID\",\"name\":\"hot_articles_category_id\",\"value\":\"1\",\"type\":\"text\",\"tip\":\"\",\"rule\":[]}}}', null), ('11', '0', '4', 'simpleboot3', '文章页', 'portal/Article/index', 'portal/article', '文章页模板文件', '{\"vars\":{\"hot_articles_category_id\":{\"title\":\"Hot Articles\\u5206\\u7c7bID\",\"name\":\"hot_articles_category_id\",\"value\":\"1\",\"type\":\"text\",\"tip\":\"\",\"rule\":[]}}}', '{\"vars\":{\"hot_articles_category_id\":{\"title\":\"Hot Articles\\u5206\\u7c7bID\",\"name\":\"hot_articles_category_id\",\"value\":\"1\",\"type\":\"text\",\"tip\":\"\",\"rule\":[]}}}', null);
COMMIT;

-- ----------------------------
--  Table structure for `cmf_third_party_user`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_third_party_user`;
CREATE TABLE `cmf_third_party_user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '本站用户id',
  `last_login_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后登录时间',
  `expire_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'access_token过期时间',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '绑定时间',
  `login_times` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '登录次数',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态;1:正常;0:禁用',
  `third_party` varchar(20) NOT NULL DEFAULT '' COMMENT '第三方惟一码',
  `app_id` varchar(64) NOT NULL DEFAULT '' COMMENT '第三方应用 id',
  `last_login_ip` varchar(15) NOT NULL DEFAULT '' COMMENT '最后登录ip',
  `access_token` varchar(512) NOT NULL DEFAULT '' COMMENT '第三方授权码',
  `openid` varchar(40) NOT NULL DEFAULT '' COMMENT '第三方用户id',
  `union_id` varchar(64) NOT NULL DEFAULT '' COMMENT '第三方用户多个产品中的惟一 id,(如:微信平台)',
  `more` text COMMENT '扩展信息',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='第三方用户表';

-- ----------------------------
--  Table structure for `cmf_user`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_user`;
CREATE TABLE `cmf_user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '用户类型;1:admin;2:会员',
  `sex` tinyint(2) NOT NULL DEFAULT '0' COMMENT '性别;0:保密,1:男,2:女',
  `birthday` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '生日',
  `last_login_time` int(11) NOT NULL DEFAULT '0' COMMENT '最后登录时间',
  `score` int(11) NOT NULL DEFAULT '0' COMMENT '用户积分',
  `coin` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '金币',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '注册时间',
  `user_status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '用户状态;0:禁用,1:正常,2:未验证',
  `user_login` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '用户名',
  `user_pass` varchar(64) NOT NULL DEFAULT '' COMMENT '登录密码;cmf_password加密',
  `user_nickname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '用户昵称',
  `user_email` varchar(100) NOT NULL DEFAULT '' COMMENT '用户登录邮箱',
  `user_url` varchar(100) NOT NULL DEFAULT '' COMMENT '用户个人网址',
  `avatar` varchar(255) NOT NULL DEFAULT '' COMMENT '用户头像',
  `signature` varchar(255) NOT NULL DEFAULT '' COMMENT '个性签名',
  `last_login_ip` varchar(15) NOT NULL DEFAULT '' COMMENT '最后登录ip',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '' COMMENT '激活码',
  `mobile` varchar(20) NOT NULL DEFAULT '' COMMENT '用户手机号',
  PRIMARY KEY (`id`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nickname`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COMMENT='用户表';

-- ----------------------------
--  Records of `cmf_user`
-- ----------------------------
BEGIN;
INSERT INTO `cmf_user` VALUES ('1', '1', '1', '1476460800', '1491525540', '0', '0', '1472092080', '1', 'admin', '###806c01b52809c23d49935a0c014a0b27', 'admin', 'zxxjjforever@163.com', '44422u11', '', 'ddd4444411', '127.0.0.1', '', ''), ('3', '1', '0', '0', '1477299995', '0', '0', '1476572010', '1', 'test', '###f6707a0f4ddae0d8a0c09cd0c827459a', '', 'test@1.com', '', '', '', '127.0.0.1', '', ''), ('4', '2', '0', '0', '1477805939', '0', '0', '1477805939', '0', 'dd_11_com', '###f6707a0f4ddae0d8a0c09cd0c827459a', 'ddd', 'dd@11.com', '', '', '', '127.0.0.1', '', ''), ('6', '2', '0', '0', '0', '0', '0', '1484223267', '1', '', '###f6707a0f4ddae0d8a0c09cd0c827459a', '', '', '', '', '', '', '', '15121002429');
COMMIT;

-- ----------------------------
--  Table structure for `cmf_user_action_log`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_user_action_log`;
CREATE TABLE `cmf_user_action_log` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '访问次数',
  `last_visit_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后访问时间',
  `object` varchar(100) NOT NULL DEFAULT '' COMMENT '访问对象的id,格式:不带前缀的表名+id;如posts1表示xx_posts表里id为1的记录',
  `action` varchar(50) NOT NULL DEFAULT '' COMMENT '操作名称;格式:应用名+控制器+操作名,也可自己定义格式只要不发生冲突且惟一;',
  `ip` varchar(15) NOT NULL DEFAULT '' COMMENT '用户ip',
  PRIMARY KEY (`id`),
  KEY `user_object_action` (`user_id`,`object`,`action`),
  KEY `user_object_action_ip` (`user_id`,`object`,`action`,`ip`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COMMENT='访问记录表';

-- ----------------------------
--  Records of `cmf_user_action_log`
-- ----------------------------
BEGIN;
INSERT INTO `cmf_user_action_log` VALUES ('1', '1', '4', '1477695966', 'posts27', 'Portal-Article-do_like', '127.0.0.1'), ('2', '1', '2', '1477695972', 'posts28', 'Portal-Article-do_like', '127.0.0.1'), ('3', '1', '1', '1477696080', 'posts34', 'Portal-Article-do_like', '127.0.0.1'), ('4', '1', '2', '1478421167', 'posts54', 'Portal-Article-do_like', '127.0.0.1'), ('5', '1', '1', '1478421053', 'posts22', 'Portal-Article-do_like', '127.0.0.1'), ('6', '1', '2', '1478421205', 'posts59', 'Portal-Article-do_like', '127.0.0.1'), ('7', '1', '3', '1478421210', 'posts63', 'Portal-Article-do_like', '127.0.0.1');
COMMIT;

-- ----------------------------
--  Table structure for `cmf_user_favorite`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_user_favorite`;
CREATE TABLE `cmf_user_favorite` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '用户 id',
  `title` varchar(255) CHARACTER SET utf8 DEFAULT '' COMMENT '收藏内容的标题',
  `url` varchar(255) CHARACTER SET utf8 DEFAULT '' COMMENT '收藏内容的原文地址，不带域名',
  `description` varchar(500) CHARACTER SET utf8 DEFAULT '' COMMENT '收藏内容的描述',
  `table_name` varchar(50) CHARACTER SET utf8 DEFAULT '' COMMENT '收藏实体以前所在表,不带前缀',
  `object_id` int(10) unsigned DEFAULT '0' COMMENT '收藏内容原来的主键id',
  `create_time` int(10) unsigned DEFAULT '0' COMMENT '收藏时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户收藏表';

-- ----------------------------
--  Table structure for `cmf_user_login_attempt`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_user_login_attempt`;
CREATE TABLE `cmf_user_login_attempt` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `login_attempts` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '尝试次数',
  `attempt_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '尝试登录时间',
  `locked_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '锁定时间',
  `ip` varchar(15) NOT NULL DEFAULT '' COMMENT '用户 ip',
  `account` varchar(100) NOT NULL DEFAULT '' COMMENT '用户账号,手机号,邮箱或用户名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='用户登录尝试表';

-- ----------------------------
--  Table structure for `cmf_user_token`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_user_token`;
CREATE TABLE `cmf_user_token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户id',
  `expire_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT ' 过期时间',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `token` varchar(64) NOT NULL DEFAULT '' COMMENT 'token',
  `device_type` varchar(10) NOT NULL DEFAULT '' COMMENT '设备类型;mobile,android,iphone,ipad,web,pc,mac,wxapp',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='用户客户端登录 token 表';

-- ----------------------------
--  Records of `cmf_user_token`
-- ----------------------------
BEGIN;
INSERT INTO `cmf_user_token` VALUES ('1', '14', '1502525900', '1486973900', 'f02ff1bff6cdccb1244418cb7aa15e84e9d3bafe92e79b7a51c20eec1bc36777', 'wxapp'), ('2', '7', '1502525992', '1486973992', 'b7b9ce821a8d11873a311c71de1ab86cd2afe745e7e0bec340d74a8c524a1b63', 'wxapp');
COMMIT;

-- ----------------------------
--  Table structure for `cmf_verification_code`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_verification_code`;
CREATE TABLE `cmf_verification_code` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '表id',
  `count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '当天已经发送成功的次数',
  `send_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后发送成功时间',
  `expire_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '验证码过期时间',
  `code` varchar(8) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '最后发送成功的验证码',
  `account` varchar(64) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '手机号或者邮箱',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COMMENT='手机邮箱数字验证码表';

-- ----------------------------
--  Records of `cmf_verification_code`
-- ----------------------------
BEGIN;
INSERT INTO `cmf_verification_code` VALUES ('1', '1', '1491472229', '1491474029', '752196', 'zxxjjforever@163.com'), ('2', '1', '1483952558', '1483954357', '', '1320014087@qq.com'), ('3', '1', '1483952603', '1483954403', '', 'morton@anyi.hk'), ('4', '2', '1491472272', '1491474072', '369673', '15121002429');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
