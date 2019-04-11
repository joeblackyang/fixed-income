/*
Navicat MySQL Data Transfer

Source Server         : lhgy
Source Server Version : 50643
Source Host           : 172.81.238.211:3306
Source Database       : lhgy

Target Server Type    : MYSQL
Target Server Version : 50643
File Encoding         : 65001

Date: 2019-04-09 16:39:25
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `bill_deal`  票据交易
-- ----------------------------
DROP TABLE IF EXISTS `bill_deal`;
CREATE TABLE `bill_deal` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '',
  `billno` varchar(20) DEFAULT NULL COMMENT '票号',
  `acceptbank` varchar(50) DEFAULT NULL COMMENT '承兑行',
  `acceptbankno` varchar(50) DEFAULT NULL COMMENT '承兑行号',
  `acceptbankstandard` varchar(50) DEFAULT NULL COMMENT '承兑行标准',
  `amount` decimal(18,2) DEFAULT NULL COMMENT '票面金额',
  `drawdate` date DEFAULT NULL COMMENT '出票日',
  `expiredate` date DEFAULT NULL COMMENT '到期日',
  `drawer` varchar(50) DEFAULT NULL COMMENT '出票人',
  `payee` varchar(50) DEFAULT NULL COMMENT '收款人',
  `discountbank` varchar(50) DEFAULT NULL COMMENT '直贴行',
  `discountbankstandard` varchar(50) DEFAULT NULL COMMENT '直贴行标准',
  `discountdealdate` date DEFAULT NULL COMMENT '贴现日期',
  `opponentbank` varchar(50) DEFAULT NULL COMMENT '交易对手行',
  `opponentbankstandard` varchar(50) DEFAULT NULL COMMENT '交易对手行标准',
  `discountinterestrate` decimal(4,2) DEFAULT NULL COMMENT '贴现利率（年）',
  `ispasspledge` varchar(1) DEFAULT NULL COMMENT '是否已出质',
  `leftterm` int(11) DEFAULT NULL COMMENT '剩余期限（天）',
  `expiredateweek` varchar(6) DEFAULT NULL COMMENT '到期日星期',
  `isholiday` varchar(1) DEFAULT NULL COMMENT '是否为节假日',
  `adjustday` int(11) DEFAULT NULL COMMENT '调整天数',
  `totalday` int(11) DEFAULT NULL COMMENT '总天数',
  `discountinterest` decimal(18,2) DEFAULT NULL COMMENT '贴现利息',
  `actualpay` decimal(18,2) DEFAULT NULL COMMENT '实付金额',
  `applyview` varchar(100) DEFAULT NULL COMMENT '申请意见',
  `applytime` datetime DEFAULT NULL COMMENT '申请日期',
  `isdel` varchar(1) DEFAULT NULL COMMENT '删除标记',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bill_deal
-- ----------------------------

-- ----------------------------
-- Table structure for `bill_dealapply` 票据交易申请
-- ----------------------------
DROP TABLE IF EXISTS `bill_dealapply`;
CREATE TABLE `bill_dealapply` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderno` varchar(12) DEFAULT NULL COMMENT '序号',
  `accountbookorg` varchar(50) DEFAULT NULL COMMENT '账簿机构简称',
  `dealtype` varchar(50) DEFAULT NULL COMMENT '交易类型',
  `applyview` varchar(100) DEFAULT NULL COMMENT '申请意见',
  `bridgebank1` varchar(50) DEFAULT NULL COMMENT '转帖桥行01',
  `bridgebank1feerate` decimal(4,2) DEFAULT NULL COMMENT '转帖桥行01费率',
  `bridgebank1actualpay` decimal(18,2) DEFAULT NULL COMMENT '转帖桥行01实际支付金额',
  `bridgebank2` varchar(50) DEFAULT NULL COMMENT '转帖桥行02',
  `bridgebank2feerate` decimal(4,2) DEFAULT NULL COMMENT '转帖桥行02费率',
  `bridgebank2actualpay` decimal(18,2) DEFAULT NULL COMMENT '转帖桥行02实际支付金额',
  `bridgebank3` varchar(50) DEFAULT NULL COMMENT '转帖桥行03',
  `bridgebank3feerate` decimal(4,2) DEFAULT NULL COMMENT '转帖桥行03费率',
  `bridgebank3actualpay` decimal(18,2) DEFAULT NULL COMMENT '转帖桥行03实际支付金额',
  `bridgebank4` varchar(50) DEFAULT NULL COMMENT '转帖桥行04',
  `bridgebank4feerate` decimal(4,2) DEFAULT NULL COMMENT '转帖桥行04费率',
  `bridgebank4actualpay` decimal(18,2) DEFAULT NULL COMMENT '转帖桥行04实际支付金额',
  `applytime` datetime DEFAULT NULL COMMENT '申请时间',
  `checkview` varchar(100) DEFAULT NULL COMMENT '复核意见',
  `checktime` datetime DEFAULT NULL COMMENT '复核时间',
  `approveview` varchar(100) DEFAULT NULL COMMENT '审批意见',
  `approvetime` datetime DEFAULT NULL COMMENT '审批时间',
  `signview` varchar(100) DEFAULT NULL COMMENT '清单签收意见',
  `signtime` datetime DEFAULT NULL COMMENT '清单签收时间',
  `completeview` varchar(100) DEFAULT NULL COMMENT '交割完成意见',
  `completetime` datetime DEFAULT NULL COMMENT '交割完成时间',
  `isoutsource` varchar(1) DEFAULT NULL COMMENT '是否委外',
  `outsourceapplyview` varchar(100) DEFAULT NULL COMMENT '委外申请意见',
  `outsourceapplytime` datetime DEFAULT NULL COMMENT '委外申请时间',
  `outsourceapproveview` varchar(100) DEFAULT NULL COMMENT '委外审批意见',
  `outsourceapprovetime` datetime DEFAULT NULL COMMENT '委外审批时间',
  `isdel` varchar(1) DEFAULT NULL COMMENT '删除标记',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bill_dealapply
-- ----------------------------

-- ----------------------------
-- Table structure for `bill_dealchance`  票据交易机会
-- ----------------------------
DROP TABLE IF EXISTS `bill_dealchance`;
CREATE TABLE `bill_dealchance` (
  `id` int(11) NOT NULL,
  `dealtype` varchar(50) DEFAULT NULL COMMENT '交易类型',
  `acceptbank` varchar(100) DEFAULT NULL COMMENT '承兑行',
  `amount` decimal(18,2) DEFAULT NULL COMMENT '票面金额',
  `leftterm` int(11) DEFAULT NULL COMMENT '剩余期限(月)',
  `discountbanktype` varchar(50) DEFAULT NULL COMMENT '直贴行类型',
  `discountbanksupply` varchar(50) DEFAULT NULL COMMENT '直贴行补充',
  `expectdealdate` date DEFAULT NULL COMMENT '预计交易日',
  `transferdealprice` decimal(18,2) DEFAULT NULL COMMENT '转帖交易报价（含桥）',
  `status` varchar(50) DEFAULT NULL COMMENT '信息状态',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注',
  `sourceorg` varchar(50) DEFAULT NULL COMMENT '来源机构简称',
  `sourceorgcontact` varchar(50) DEFAULT NULL COMMENT '联系人',
  `sourceorgcontactphone` varchar(50) DEFAULT NULL COMMENT '联系电话',
  `outsidecontactacct` varchar(50) DEFAULT NULL COMMENT '外部联系账号',
  `outsidecontactphone` varchar(50) DEFAULT NULL COMMENT '外部联系电话',
  `modifydate` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bill_dealchance
-- ----------------------------

-- ----------------------------
-- Table structure for `bill_dealrelation`  票据交易关系表（一对多，交易申请1：交易M）
-- ----------------------------
DROP TABLE IF EXISTS `bill_dealrelation`;
CREATE TABLE `bill_dealrelation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `applyid` int(11) DEFAULT NULL COMMENT '交易申请id',
  `dealid` int(11) DEFAULT NULL COMMENT '交易id',
  `isdel` varchar(1) DEFAULT NULL COMMENT '删除标记',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bill_dealrelation
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_acct`  系统账户表
-- ----------------------------
DROP TABLE IF EXISTS `sys_acct`;
CREATE TABLE `sys_acct` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `acctname` varchar(50) DEFAULT NULL COMMENT '账户名',
  `fullname` varchar(50) DEFAULT NULL COMMENT '姓名',
  `idcard` varchar(50) DEFAULT NULL COMMENT '身份证',
  `phone` varchar(50) DEFAULT NULL COMMENT '电话',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `orgcode` varchar(50) DEFAULT NULL COMMENT '所属机构代码',
  `isdel` varchar(1) DEFAULT NULL COMMENT '删除标记',
  `modifydate` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_acct
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_auth`  系统权限表
-- ----------------------------
DROP TABLE IF EXISTS `sys_auth`;
CREATE TABLE `sys_auth` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `acctname` varchar(50) DEFAULT NULL COMMENT '账户名',
  `fullname` varchar(50) DEFAULT NULL COMMENT '姓名',
  `auth` varchar(100) DEFAULT NULL COMMENT '权限配置',
  `isdel` varchar(1) DEFAULT NULL COMMENT '删除标记',
  `modifydate` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_auth
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_org`   机构表
-- ----------------------------
DROP TABLE IF EXISTS `sys_org`;
CREATE TABLE `sys_org` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `code` varchar(50) DEFAULT NULL COMMENT '机构编号',
  `shortname` varchar(50) DEFAULT NULL COMMENT '构机简称',
  `orgtype` varchar(50) DEFAULT NULL COMMENT '构机类型',
  `fullname` varchar(100) DEFAULT NULL COMMENT '构机全称',
  `contactname` varchar(50) DEFAULT NULL COMMENT '系人联姓名',
  `contactphone` varchar(50) DEFAULT NULL COMMENT '联系人电话',
  `contactemail` varchar(50) DEFAULT NULL COMMENT '联系人邮箱',
  `internaluser` varchar(50) DEFAULT NULL COMMENT '内部对接人账号',
  `modifydate` datetime DEFAULT NULL COMMENT '更新时间',
  `isdel` varchar(1) DEFAULT NULL COMMENT '删除标记',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_org
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_param`  参数配置表
-- ----------------------------
DROP TABLE IF EXISTS `sys_param`;
CREATE TABLE `sys_param` (
  `id` int(11) NOT NULL,
  `code` varchar(50) DEFAULT NULL COMMENT '参数代码',
  `name` varchar(50) DEFAULT NULL COMMENT '参数名',
  `value` varchar(50) DEFAULT NULL COMMENT '参数值',
  `instr` varchar(100) DEFAULT NULL COMMENT '参数说明',
  `isdel` varchar(1) DEFAULT NULL COMMENT '删除标记',
  `modifydate` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_param
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_relation`  关系参数表
-- ----------------------------
DROP TABLE IF EXISTS `sys_relation`;
CREATE TABLE `sys_relation` (
  `id` int(11) NOT NULL,
  `relationcode` varchar(50) DEFAULT NULL COMMENT '关系代码',
  `relationname` varchar(50) DEFAULT NULL COMMENT '关系名',
  `origincode` varchar(50) DEFAULT NULL COMMENT '原参数代码',
  `originvalue` varchar(50) DEFAULT NULL COMMENT '原参数值',
  `originvalueinstr` varchar(100) DEFAULT NULL COMMENT '原参数值说明',
  `corrcode` varchar(50) DEFAULT NULL COMMENT '对应参数代码',
  `corrvalue` varchar(50) DEFAULT NULL COMMENT '对应参数值',
  `corrvalueinstr` varchar(100) DEFAULT NULL COMMENT '对应参数值说明',
  `isdel` varchar(1) DEFAULT NULL COMMENT '删除标记',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_relation
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_role`  系统角色表
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `acctname` varchar(50) DEFAULT NULL COMMENT '账户名',
  `fullname` varchar(50) DEFAULT NULL COMMENT '姓名',
  `role` varchar(50) DEFAULT NULL COMMENT '角色配置',
  `isdel` varchar(1) DEFAULT NULL COMMENT '删除标记',
  `modifydate` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_workflow`  工作流配置表
-- ----------------------------
DROP TABLE IF EXISTS `sys_workflow`;
CREATE TABLE `sys_workflow` (
  `id` int(11) NOT NULL,
  `acctname` varchar(50) DEFAULT NULL COMMENT '账户名',
  `fullname` varchar(50) DEFAULT NULL COMMENT '姓名',
  `scene` varchar(100) DEFAULT NULL COMMENT '场景代码',
  `nextorg` varchar(50) DEFAULT NULL COMMENT '流转至机构',
  `nextacct` varchar(50) DEFAULT NULL COMMENT '流转至人员账户名',
  `isdel` varchar(1) DEFAULT NULL COMMENT '删除标记',
  `modifydate` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_workflow
-- ----------------------------
