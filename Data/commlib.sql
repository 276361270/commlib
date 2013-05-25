CREATE DATABASE  IF NOT EXISTS `commlib` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `commlib`;
-- MySQL dump 10.13  Distrib 5.5.16, for Win32 (x86)
--
-- Host: localhost    Database: commlib
-- ------------------------------------------------------
-- Server version	5.5.27

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `module_refer`
--

DROP TABLE IF EXISTS `module_refer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `module_refer` (
  `id` varchar(100) NOT NULL,
  `module` varchar(100) DEFAULT NULL COMMENT '参照表名',
  `fk` varchar(45) DEFAULT NULL COMMENT '参照外键',
  `module_refer` varchar(100) DEFAULT NULL COMMENT '被参照表',
  `pk` varchar(45) DEFAULT NULL COMMENT '参照主键',
  `condition` varchar(100) DEFAULT NULL COMMENT '参照条件',
  `fk_id` varchar(100) DEFAULT NULL,
  `pk_id` varchar(100) DEFAULT NULL,
  `relation_table` varchar(45) DEFAULT NULL,
  `map_name` varchar(45) DEFAULT NULL COMMENT '映射名称',
  `map_type` varchar(45) DEFAULT NULL COMMENT '关联类型',
  `refer_type` enum('INNER','LEFT','RIGHT','FULL') DEFAULT 'INNER' COMMENT '参照类型',
  `map_fields` varchar(1000) DEFAULT NULL COMMENT '关联字段',
  `as_fields` varchar(1000) DEFAULT NULL COMMENT '映射字段',
  `field_show` varchar(45) DEFAULT NULL COMMENT '显示字段',
  `order` varchar(45) DEFAULT NULL COMMENT '关联顺序',
  `limit` varchar(45) DEFAULT NULL COMMENT '关联条目',
  `status` varchar(45) DEFAULT '1',
  `type` varchar(45) DEFAULT 'refer',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `module_refer`
--

LOCK TABLES `module_refer` WRITE;
/*!40000 ALTER TABLE `module_refer` DISABLE KEYS */;
INSERT INTO `module_refer` VALUES ('class-gradeid-grade-id','class','gradeid','grade','id','class.gradeid=grade.id','class.gradeid','grade.id',NULL,NULL,NULL,'INNER',NULL,NULL,'numb',NULL,NULL,'1','refer'),('classsubject-classid-class-id','classsubject','classid','class','id','classsubject.classid=class.id','classsubject.classid','class.id',NULL,NULL,NULL,'INNER',NULL,NULL,'numb',NULL,NULL,'1','refer'),('classsubject-subid-subject-id','classsubject','subid','subject','id','classsubject.subid=subject.id','classsubject.subid','subject.id',NULL,NULL,NULL,'INNER',NULL,NULL,'numb',NULL,NULL,'1','refer'),('studentclass-classid-class-id','studentclass','classid','class','id','studentclass.classid=class.id','studentclass.classid','class.id',NULL,NULL,NULL,'INNER',NULL,NULL,'numb',NULL,NULL,'1','refer'),('studentclass-stuid-student-id','studentclass','stuid','student','id','studentclass.stuid=student.id','studentclass.stuid','student.id',NULL,NULL,NULL,'INNER',NULL,NULL,'numb',NULL,NULL,'1','refer'),('studentclass-termid-term-id','studentclass','termid','term','id','studentclass.termid=term.id','studentclass.termid','term.id',NULL,NULL,NULL,'INNER',NULL,NULL,'numb',NULL,NULL,'1','refer'),('studentclasssubject-csid-classsubject-id','studentclasssubject','csid','classsubject','id','studentclasssubject.csid=classsubject.id','studentclasssubject.csid','classsubject.id',NULL,NULL,NULL,'INNER',NULL,NULL,'classid',NULL,NULL,'1','refer'),('studentclasssubject-scid-studentclass-id','studentclasssubject','scid','studentclass','id','studentclasssubject.scid=studentclass.id','studentclasssubject.scid','studentclass.id',NULL,NULL,NULL,'INNER',NULL,NULL,'stuid',NULL,NULL,'1','refer'),('studentclasssubject-stuid-student-id','studentclasssubject','stuid','student','id','studentclasssubject.stuid=student.id','studentclasssubject.stuid','student.id',NULL,NULL,NULL,'INNER',NULL,NULL,'numb',NULL,NULL,'1','refer');
/*!40000 ALTER TABLE `module_refer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `module`
--

DROP TABLE IF EXISTS `module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `module` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL COMMENT '名称',
  `app` varchar(45) DEFAULT NULL COMMENT '项目',
  `group` varchar(45) DEFAULT NULL COMMENT '分组',
  `module` varchar(45) DEFAULT NULL COMMENT '模块',
  `function` varchar(45) DEFAULT NULL COMMENT '方法',
  `status` varchar(45) DEFAULT NULL COMMENT '状态',
  `update_time` datetime DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `module`
--

LOCK TABLES `module` WRITE;
/*!40000 ALTER TABLE `module` DISABLE KEYS */;
/*!40000 ALTER TABLE `module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_authority`
--

DROP TABLE IF EXISTS `role_authority`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_authority` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(11) unsigned NOT NULL COMMENT '角色ID',
  `aid` int(11) unsigned NOT NULL COMMENT '权限ID',
  `status` varchar(20) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`),
  UNIQUE KEY `role_authority` (`rid`,`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=232 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_authority`
--

LOCK TABLES `role_authority` WRITE;
/*!40000 ALTER TABLE `role_authority` DISABLE KEYS */;
INSERT INTO `role_authority` VALUES (209,8,4,NULL),(210,8,5,NULL),(211,8,6,NULL),(212,8,7,NULL),(213,8,8,NULL),(214,8,9,NULL),(215,8,10,NULL),(216,1,4,NULL),(217,1,5,NULL),(218,1,6,NULL),(219,1,7,NULL),(220,1,8,NULL),(221,1,9,NULL),(222,1,10,NULL),(228,9,8,NULL),(229,9,10,NULL),(230,11,8,NULL),(231,11,9,NULL);
/*!40000 ALTER TABLE `role_authority` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_user`
--

DROP TABLE IF EXISTS `tp_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` char(32) NOT NULL,
  `role` smallint(6) unsigned NOT NULL COMMENT '组ID',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '状态 1:启用 0:禁止',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注说明',
  `last_login_time` int(11) unsigned NOT NULL COMMENT '最后登录时间',
  `last_login_ip` varchar(15) DEFAULT NULL COMMENT '最后登录IP',
  `last_location` varchar(100) DEFAULT NULL COMMENT '最后登录位置',
  PRIMARY KEY (`id`),
  KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_user`
--

LOCK TABLES `tp_user` WRITE;
/*!40000 ALTER TABLE `tp_user` DISABLE KEYS */;
INSERT INTO `tp_user` VALUES (1,'admin','21232f297a57a5a743894a0e4a801fc3',1,1,'神级管理员,可无视系统权限.',1357142930,'127.0.0.1','本机地址'),(3,'editor','5aee9dbd2a188839105073571bee1b1f',2,1,'',1356967653,'127.0.0.1','');
/*!40000 ALTER TABLE `tp_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authority`
--

DROP TABLE IF EXISTS `authority`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `authority` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `numb` varchar(64) DEFAULT NULL COMMENT '编号',
  `name` varchar(45) DEFAULT NULL COMMENT '名称',
  `url` varchar(255) DEFAULT NULL,
  `isparent` bit(1) DEFAULT b'0',
  `pid` int(11) DEFAULT NULL,
  `level` smallint(8) unsigned DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authority`
--

LOCK TABLES `authority` WRITE;
/*!40000 ALTER TABLE `authority` DISABLE KEYS */;
INSERT INTO `authority` VALUES (4,NULL,'个人中心',NULL,'\0',0,0,NULL),(5,NULL,'个人信息',NULL,'\0',4,1,NULL),(6,NULL,'头像管理',NULL,'\0',4,1,NULL),(7,NULL,'业务账户',NULL,'\0',4,1,NULL),(8,NULL,'房子管理',NULL,'\0',0,0,NULL),(9,NULL,'个人账号',NULL,'\0',8,1,NULL),(10,NULL,'个人类别',NULL,'\0',8,1,NULL);
/*!40000 ALTER TABLE `authority` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group`
--

DROP TABLE IF EXISTS `group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `group` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL COMMENT '组名',
  `desc` varchar(255) DEFAULT NULL COMMENT '描述',
  `status` varchar(20) DEFAULT NULL COMMENT '状态',
  `update_user` int(11) unsigned DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `create_user` int(10) unsigned DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group`
--

LOCK TABLES `group` WRITE;
/*!40000 ALTER TABLE `group` DISABLE KEYS */;
INSERT INTO `group` VALUES (19,'天知道','1','1',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log`
--

DROP TABLE IF EXISTS `log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `operate` varchar(100) DEFAULT NULL,
  `para` varchar(45) DEFAULT NULL,
  `content` varchar(100) DEFAULT NULL,
  `result` varchar(45) DEFAULT NULL,
  `ip` varchar(45) DEFAULT NULL,
  `update_user` varchar(45) DEFAULT NULL,
  `update_time` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log`
--

LOCK TABLES `log` WRITE;
/*!40000 ALTER TABLE `log` DISABLE KEYS */;
INSERT INTO `log` VALUES (1,'login',NULL,NULL,NULL,'0.0.0.0','1','2013-05-24 09:39:16','0'),(2,'login',NULL,NULL,NULL,'127.0.0.1','1','2013-05-24 17:49:56','0'),(3,'login',NULL,NULL,NULL,'127.0.0.1','1','2013-05-24 20:29:34','0'),(4,'/Broadband/edit.html?id=1',NULL,'{\"id\":\"1\",\"user_id\":\"1\",\"phone\":\"123455\",\"cat_id\":\"1\",\"start_date\":\"2012-12-12\",\"end_date\":\"2012-12-','0','127.0.0.1','1','1369405286','0'),(5,'/Broadband/edit.html?id=1',NULL,'{\"id\":\"1\",\"user_id\":\"1\",\"phone\":\"123455\",\"cat_id\":\"1\",\"start_date\":\"2012-12-12\",\"end_date\":\"2012-12-','0','127.0.0.1','1','1369405300','0'),(6,'/Broadband/edit.html?id=1',NULL,'{\"id\":\"1\",\"user_id\":\"1\",\"phone\":\"123455\",\"cat_id\":\"1\",\"start_date\":\"2012-12-12\",\"end_date\":\"2012-12-','0','127.0.0.1','1','1369405407','0'),(7,'/Broadband/edit.html?id=1',NULL,'{\"id\":\"1\",\"user_id\":\"1\",\"phone\":\"123455\",\"cat_id\":\"1\",\"start_date\":\"2012-12-12\",\"end_date\":\"2012-12-','0','127.0.0.1','1','1369405521','0'),(8,'/Broadband/edit.html?id=1',NULL,'{\"id\":\"1\",\"user_id\":\"1\",\"phone\":\"123455\",\"cat_id\":\"1\",\"start_date\":\"2012-12-12\",\"end_date\":\"2012-12-','0','127.0.0.1','1','1369414872','0'),(9,'/Broadband/delete.html',NULL,'\"1,2\"','2','127.0.0.1','1','1369414882','0'),(10,'/Broadband_cat/view/id/1.html',NULL,'{\"id\":\"1\",\"name\":\"50\"}','0','127.0.0.1','1','1369446389','0'),(11,'/Broadband_cat/view/id/1.html',NULL,'{\"id\":\"1\",\"name\":\"50\"}','0','127.0.0.1','1','1369446395','0'),(12,'login',NULL,NULL,NULL,'0.0.0.0','1','2013-05-25 09:51:06','0'),(13,'/Department/operate/op/edit.html?id=4',NULL,'{\"id\":\"4\",\"numb\":\"a1\",\"name\":\"b\",\"update_time\":\"2012-12-12 00:00:00\"}','0','0.0.0.0','1','1369487461','0'),(14,'/Department/operate/op/edit/id/4.html',NULL,'{\"id\":\"4\",\"numb\":\"a1\",\"name\":\"bbd\",\"update_time\":\"2012-12-12 00:00:00\"}','0','0.0.0.0','1','1369488108','0');
/*!40000 ALTER TABLE `log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parameters`
--

DROP TABLE IF EXISTS `parameters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `parameters` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `value` varchar(100) DEFAULT NULL,
  `default` varchar(100) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `desc` varchar(255) DEFAULT NULL,
  `parent` int(11) unsigned DEFAULT NULL,
  `is_node` bit(1) DEFAULT NULL,
  `level` smallint(6) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parameters`
--

LOCK TABLES `parameters` WRITE;
/*!40000 ALTER TABLE `parameters` DISABLE KEYS */;
INSERT INTO `parameters` VALUES (1,'para','100','10','asdf','asdf',NULL,NULL,NULL),(2,'allowRegister','no','yes','user','是否开启注册',NULL,NULL,NULL),(3,'allowAnanouys','no','no','user','是否允许匿名访问',NULL,NULL,NULL);
/*!40000 ALTER TABLE `parameters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `broadband`
--

DROP TABLE IF EXISTS `broadband`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `broadband` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL COMMENT '用户',
  `phone` varchar(255) DEFAULT NULL COMMENT '宽带手机号',
  `cat_id` int(11) DEFAULT NULL COMMENT '类别',
  `start_date` date DEFAULT NULL COMMENT '安装日期',
  `end_date` date DEFAULT NULL COMMENT '结束日期',
  `use_during` smallint(6) DEFAULT NULL COMMENT '使用时长',
  `cost` decimal(18,2) DEFAULT NULL COMMENT '安装费用',
  `manager` int(11) DEFAULT NULL COMMENT '发展人',
  `memo` varchar(255) DEFAULT NULL COMMENT '备注',
  `username` varchar(255) DEFAULT NULL COMMENT '宽带账号',
  `password` varchar(255) DEFAULT NULL COMMENT '宽带密码',
  `status` varchar(20) DEFAULT NULL COMMENT '状态',
  `update_user` int(11) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `is_deleted` varchar(45) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `broadband`
--

LOCK TABLES `broadband` WRITE;
/*!40000 ALTER TABLE `broadband` DISABLE KEYS */;
INSERT INTO `broadband` VALUES (1,1,'123455',1,'2012-12-12','2012-12-12',1213,123123.00,0,'阿桑地方','123123','123123','1',0,'2012-12-12 00:00:00','1'),(2,1,'13781913985',1,'2013-05-06','2013-05-07',13123,123213.00,123,'123','123','123','0',NULL,NULL,'1'),(3,1,'123123',4,'2013-05-21','2013-05-06',13123,123.00,123,'123','123','123','1',NULL,NULL,'0'),(4,1,'sdfasdfasd',2,'1899-12-03','2013-04-29',0,13123.00,123123,'1231','123','123123','0',NULL,NULL,'0'),(5,1,'13123123',1,'2013-04-29','2013-04-28',4234,23423.00,442342,'34234','23423','4234','0',0,'0000-00-00 00:00:00','0'),(6,1,'13123123',1,'2013-04-29','2013-04-28',4234,23423.00,442342,'34234','23423','4234','1',0,'0000-00-00 00:00:00','0'),(7,1,'13123123',1,'2013-04-29','2013-04-28',4234,23423.00,442342,'34234','23423','4234','1',0,'0000-00-00 00:00:00','0'),(8,1,'13123123',1,'2013-04-29','2013-04-28',4234,23423.00,442342,'34234','23423','4234','1',0,'0000-00-00 00:00:00','0');
/*!40000 ALTER TABLE `broadband` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL COMMENT '名称',
  `title` varchar(100) DEFAULT NULL COMMENT '标题',
  `link` varchar(100) DEFAULT NULL COMMENT '链接',
  `pid` int(10) unsigned DEFAULT '0' COMMENT '父级',
  `level` smallint(5) unsigned DEFAULT '0' COMMENT '层级',
  `order` smallint(5) unsigned DEFAULT '0' COMMENT '顺序',
  `target` enum('_self','_blank','_parent','_top') DEFAULT '_self' COMMENT '打开方式',
  `location` enum('top','left','right','bottom') DEFAULT NULL COMMENT '位置',
  `status` varchar(45) DEFAULT '1',
  `is_deleted` bit(1) DEFAULT b'0',
  `memo` varchar(100) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (21,'Menu','菜单管理','Menu/index',26,1,0,'_self','left','1','\0',NULL),(22,'Home','主页','http://www.baidu.com',0,0,0,'_blank','top','1','\0',''),(23,'User','用户管理','User/index',26,1,0,'_self','left','1','\0',NULL),(24,'Role','角色管理','Role/index',26,1,0,'_self','left','1','\0',NULL),(25,'Authority','权限管理','Authority/index',26,1,0,'_self','left','1','\0',NULL),(26,'Base','基础数据','',0,0,40,'_self','top','1','\0',''),(27,'Data','内容管理','',0,0,30,'_self','top','1','\0',''),(28,'News','新闻 ','Article/index',27,1,0,'_self','left','1','\0',NULL),(29,'Paramater','参数设置','Parameters/index',26,1,0,'_self','left','1','\0',NULL),(30,'Module','代码生成','Code/index',26,1,0,'_self','left','1','\0',''),(31,'Setting','系统设置','Config/index',26,1,0,'_self','left','1','\0',NULL),(33,'Business','业务管理','',0,0,10,'_self','top','1','\0',''),(34,'Broadband','宽带管理','Broadband/index',33,1,0,'_self','left','1','\0',NULL),(35,'Passport','护照管理','Passport/index',33,1,0,'_self','left','1','\0',NULL),(42,'Home','个人中心','',0,0,60,'_self','top','1','\0',''),(43,'Profile','个人信息','User/profile',42,1,0,'_self','left','1','\0',NULL),(44,'Password','修改密码','User/changepwd',42,1,0,'_self','left','1','\0',NULL),(55,NULL,'1','12',0,0,0,'','left','0','',NULL),(56,NULL,'1','2',0,0,0,'_self',NULL,'1','','&asdfasdfsdf'),(57,NULL,'123','123',56,1,0,'_self',NULL,'1','','12312'),(58,NULL,'宽带类别','Broadband_cat/index',34,2,1,'_self',NULL,'1','\0',''),(59,NULL,'表单设计器','Code/edit',30,2,1,'_self',NULL,'1','\0',''),(60,NULL,'关联模型','Code/relation',30,2,4,'_self',NULL,'1','\0',''),(61,NULL,'模块管理','Code/index',30,2,0,'_self',NULL,'1','\0',''),(62,NULL,'表间关系','Code/refer',30,2,3,'_self',NULL,'1','\0',''),(63,NULL,'宽带列表','Broadband/index',34,2,0,'_self',NULL,'1','\0',''),(64,NULL,'系统管理','',0,0,5,'_self',NULL,'1','\0',''),(65,NULL,'日志管理','Log/index',64,1,0,'_self',NULL,'1','\0',''),(66,NULL,'预览生成','Code/view',30,2,4,'_self',NULL,'1','\0','');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL COMMENT '用户名',
  `email` varchar(100) DEFAULT NULL COMMENT 'email',
  `password` varchar(45) DEFAULT NULL COMMENT '密码',
  `display_name` varchar(50) DEFAULT NULL COMMENT '姓名',
  `sex` enum('男','女','未知') DEFAULT '未知' COMMENT '性别',
  `phone` varchar(50) DEFAULT NULL COMMENT '手机',
  `card_id` varchar(18) DEFAULT NULL COMMENT '身份证号',
  `photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `qq` varchar(20) DEFAULT NULL COMMENT 'qq',
  `weibo` varchar(100) DEFAULT NULL COMMENT '微博',
  `register_time` datetime DEFAULT NULL COMMENT '注册时间',
  `last_login_time` datetime DEFAULT NULL COMMENT '上次登录',
  `status` varchar(255) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'admin','admin@admin.com','0ed9031e7325fce2fd7a7199e3c155de','管理员','男','1300056321','xxxxxxxxxxx','phone','50036367','webo',NULL,NULL,NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `article_id` int(11) DEFAULT NULL,
  `author` varchar(60) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `ip` int(11) DEFAULT NULL,
  `comment_date` datetime DEFAULT NULL,
  `content` text,
  `approved` varchar(20) DEFAULT NULL,
  `agent` varchar(255) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `parent` int(11) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_role_user`
--

DROP TABLE IF EXISTS `tp_role_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_role_user` (
  `user_id` int(10) unsigned NOT NULL,
  `role_id` smallint(6) unsigned NOT NULL,
  KEY `group_id` (`role_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_role_user`
--

LOCK TABLES `tp_role_user` WRITE;
/*!40000 ALTER TABLE `tp_role_user` DISABLE KEYS */;
INSERT INTO `tp_role_user` VALUES (3,2),(1,1);
/*!40000 ALTER TABLE `tp_role_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `gid` int(11) unsigned DEFAULT NULL,
  `uid` int(11) unsigned DEFAULT NULL,
  `role` enum('master','member') DEFAULT NULL,
  `join` datetime DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_gid_uid` (`gid`,`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL COMMENT '名称',
  `numb` varchar(45) DEFAULT NULL COMMENT '编号',
  `status` varchar(20) DEFAULT NULL COMMENT '状态',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `update_user` int(11) unsigned DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (8,'管理员','01',NULL,NULL,NULL),(9,'用户','02',NULL,NULL,NULL),(10,'测试人员','03',NULL,NULL,NULL),(11,'开发人员','04',NULL,NULL,NULL);
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `passport`
--

DROP TABLE IF EXISTS `passport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `passport` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) unsigned DEFAULT NULL COMMENT '用户',
  `numb` varchar(50) DEFAULT NULL COMMENT '护照编号',
  `xing` varchar(20) DEFAULT NULL COMMENT '姓',
  `ming` varchar(20) DEFAULT NULL COMMENT '名',
  `sex` enum('男','女') DEFAULT '男' COMMENT '性别',
  `birthday` date DEFAULT NULL COMMENT '出生日期',
  `birth_place` varchar(100) DEFAULT NULL COMMENT '出生地',
  `issue_place` varchar(100) DEFAULT NULL COMMENT '签发地',
  `issue_date` date DEFAULT NULL COMMENT '签发日期',
  `expiry` date DEFAULT NULL COMMENT '过期日期',
  `authority` varchar(100) DEFAULT NULL COMMENT '签发机关',
  `update_user` int(11) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `passport`
--

LOCK TABLES `passport` WRITE;
/*!40000 ALTER TABLE `passport` DISABLE KEYS */;
INSERT INTO `passport` VALUES (1,1,'sadfsadf','Asdf','asdf','男','2012-12-12','asdf','asdf','2012-12-12','2012-12-12','asdf',1,'2012-12-12 00:00:00');
/*!40000 ALTER TABLE `passport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_profile`
--

DROP TABLE IF EXISTS `user_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_profile` (
  `id` int(11) unsigned NOT NULL,
  `realname` varchar(255) NOT NULL DEFAULT '',
  `gender` tinyint(1) NOT NULL DEFAULT '0',
  `birthyear` smallint(6) unsigned NOT NULL DEFAULT '0',
  `birthmonth` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `birthday` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `constellation` varchar(255) NOT NULL DEFAULT '',
  `zodiac` varchar(255) NOT NULL DEFAULT '',
  `telephone` varchar(255) NOT NULL DEFAULT '',
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `idcardtype` varchar(255) NOT NULL DEFAULT '',
  `idcard` varchar(255) NOT NULL DEFAULT '',
  `address` varchar(255) NOT NULL DEFAULT '',
  `zipcode` varchar(255) NOT NULL DEFAULT '',
  `nationality` varchar(255) NOT NULL DEFAULT '',
  `birthprovince` varchar(255) NOT NULL DEFAULT '',
  `birthcity` varchar(255) NOT NULL DEFAULT '',
  `birthdist` varchar(20) NOT NULL DEFAULT '',
  `birthcommunity` varchar(255) NOT NULL DEFAULT '',
  `resideprovince` varchar(255) NOT NULL DEFAULT '',
  `residecity` varchar(255) NOT NULL DEFAULT '',
  `residedist` varchar(20) NOT NULL DEFAULT '',
  `residecommunity` varchar(255) NOT NULL DEFAULT '',
  `residesuite` varchar(255) NOT NULL DEFAULT '',
  `graduateschool` varchar(255) NOT NULL DEFAULT '',
  `company` varchar(255) NOT NULL DEFAULT '',
  `education` varchar(255) NOT NULL DEFAULT '',
  `occupation` varchar(255) NOT NULL DEFAULT '',
  `position` varchar(255) NOT NULL DEFAULT '',
  `revenue` varchar(255) NOT NULL DEFAULT '',
  `affectivestatus` varchar(255) NOT NULL DEFAULT '',
  `lookingfor` varchar(255) NOT NULL DEFAULT '',
  `bloodtype` varchar(255) NOT NULL DEFAULT '',
  `height` varchar(255) NOT NULL DEFAULT '',
  `weight` varchar(255) NOT NULL DEFAULT '',
  `alipay` varchar(255) NOT NULL DEFAULT '',
  `icq` varchar(255) NOT NULL DEFAULT '',
  `qq` varchar(255) NOT NULL DEFAULT '',
  `yahoo` varchar(255) NOT NULL DEFAULT '',
  `msn` varchar(255) NOT NULL DEFAULT '',
  `taobao` varchar(255) NOT NULL DEFAULT '',
  `site` varchar(255) NOT NULL DEFAULT '',
  `bio` text NOT NULL,
  `interest` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_profile`
--

LOCK TABLES `user_profile` WRITE;
/*!40000 ALTER TABLE `user_profile` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_access`
--

DROP TABLE IF EXISTS `tp_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_access` (
  `role_id` smallint(6) unsigned NOT NULL,
  `node_id` smallint(6) unsigned NOT NULL,
  `pid` smallint(6) unsigned NOT NULL,
  `level` tinyint(1) NOT NULL,
  `module` varchar(50) DEFAULT NULL,
  KEY `groupId` (`role_id`),
  KEY `nodeId` (`node_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_access`
--

LOCK TABLES `tp_access` WRITE;
/*!40000 ALTER TABLE `tp_access` DISABLE KEYS */;
INSERT INTO `tp_access` VALUES (1,8,28,2,NULL),(1,28,13,0,NULL),(1,13,1,0,NULL),(1,6,2,3,NULL),(1,7,2,3,NULL),(1,4,2,3,NULL),(1,5,2,3,NULL),(1,32,21,3,NULL),(1,31,21,3,NULL),(1,23,21,3,NULL),(1,22,21,3,NULL),(1,36,21,3,NULL),(1,35,21,3,NULL),(1,34,21,3,NULL),(1,30,21,3,NULL),(1,21,18,2,NULL),(1,18,1,0,NULL),(1,15,25,0,NULL),(1,25,14,0,NULL),(1,14,1,0,NULL),(1,1,0,1,NULL),(3,16,8,3,NULL),(3,8,28,2,NULL),(3,28,13,0,NULL),(3,13,1,0,NULL),(3,6,2,3,NULL),(3,7,2,3,NULL),(3,4,2,3,NULL),(3,5,2,3,NULL),(3,3,2,3,NULL),(3,2,1,2,NULL),(3,37,21,3,NULL),(3,22,21,3,NULL),(3,30,21,3,NULL),(3,21,18,2,NULL),(3,18,1,0,NULL),(3,51,46,0,NULL),(3,49,46,0,NULL),(3,15,25,0,NULL),(3,45,1,0,NULL),(3,46,45,2,NULL),(3,47,46,3,NULL),(3,20,19,3,NULL),(3,19,1,2,NULL),(1,20,19,3,NULL),(1,19,1,2,NULL),(1,17,8,3,NULL),(1,11,8,3,NULL),(1,10,8,3,NULL),(1,9,8,3,NULL),(1,16,8,3,NULL),(3,25,14,0,NULL),(3,14,1,0,NULL),(3,1,0,1,NULL),(1,3,2,3,NULL),(1,2,1,2,NULL),(1,38,21,3,NULL),(1,37,21,3,NULL),(1,33,21,3,NULL),(2,20,19,3,NULL),(2,19,1,2,NULL),(2,6,2,3,NULL),(2,7,2,3,NULL),(2,4,2,3,NULL),(2,5,2,3,NULL),(2,3,2,3,NULL),(2,2,1,2,NULL),(2,15,25,0,NULL),(2,25,14,0,NULL),(2,14,1,0,NULL),(2,1,0,1,NULL);
/*!40000 ALTER TABLE `tp_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) unsigned NOT NULL COMMENT '用户ID',
  `rid` int(11) unsigned NOT NULL COMMENT '角色ID',
  `status` varchar(20) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_uid_rid` (`uid`,`rid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `module_column`
--

DROP TABLE IF EXISTS `module_column`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `module_column` (
  `id` varchar(100) NOT NULL,
  `module` varchar(45) NOT NULL,
  `field` varchar(100) NOT NULL COMMENT '名称',
  `title` varchar(45) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `pk` varchar(45) DEFAULT NULL,
  `default` varchar(100) DEFAULT NULL,
  `readonly` bit(1) DEFAULT NULL,
  `empty` bit(1) DEFAULT NULL,
  `insert_able` bit(1) DEFAULT NULL,
  `update_able` bit(1) DEFAULT NULL,
  `query_able` bit(1) NOT NULL DEFAULT b'0',
  `list_show` bit(1) NOT NULL DEFAULT b'1',
  `add_show` bit(1) NOT NULL DEFAULT b'1',
  `list_order` smallint(5) unsigned DEFAULT NULL,
  `add_order` smallint(5) unsigned DEFAULT NULL,
  `control_type` enum('text','area','select','checkbox','date','hidden','digit') DEFAULT NULL,
  `validate` varchar(255) DEFAULT '',
  `tips` varchar(100) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `module_column`
--

LOCK TABLES `module_column` WRITE;
/*!40000 ALTER TABLE `module_column` DISABLE KEYS */;
INSERT INTO `module_column` VALUES ('account.activation_key','account','activation_key','','varchar(60)','',NULL,'\0','','','','','','',2,2,'text','{maxlength:60,}','','1'),('account.admin_profile','account','admin_profile','','int(11)','','0','\0','','','','','','',1,1,'digit','{required:true,digits:true,range:[-2147483648,2147483647]}','','1'),('account.failed_logins','account','failed_logins','','smallint(4) unsigned','','0','\0','','','','','','',8,8,'digit','{required:true,digits:true,range:[0,65535]}','','1'),('account.id','account','id','','int(11) unsigned','',NULL,'\0','','','','','','',0,0,'digit','{digits:true,range:[0,4294967295]}','','1'),('account.last_failed_attempt','account','last_failed_attempt','','datetime','',NULL,'\0','','','','','','',6,6,'','{required:true,dateISO:true,date:true,}','','1'),('account.last_failed_ip','account','last_failed_ip','','varchar(15)','','','\0','','','','','','',10,10,'text','{required:true,maxlength:15,}','','1'),('account.last_login_date','account','last_login_date','','datetime','',NULL,'\0','','','','','','',4,4,'','{required:true,dateISO:true,date:true,}','','1'),('account.last_login_ip','account','last_login_ip','','varchar(40)','','','\0','','','','','','',7,7,'text','{required:true,maxlength:40,}','','1'),('account.last_modified','account','last_modified','','datetime','',NULL,'\0','','','','','','',5,5,'','{required:true,dateISO:true,date:true,}','','1'),('account.lockout_expires','account','lockout_expires','','int(11)','','0','\0','','','','','','',9,9,'digit','{required:true,digits:true,range:[-2147483648,2147483647]}','','1'),('account.reset_token','account','reset_token','','varchar(60)','','','\0','','','','','','',3,3,'text','{required:true,maxlength:60,}','','1'),('backup.backup_time','backup','backup_time','','datetime','',NULL,'\0','','','','','','',2,2,'','{dateISO:true,date:true,}','','1'),('backup.desc','backup','desc','','varchar(255)','',NULL,'\0','','','','','','',3,3,'text','{maxlength:255,}','','1'),('backup.id','backup','id','','int(10) unsigned','PRI',NULL,'\0','','','\0','\0','\0','\0',0,0,'hidden','{required:true,digits:true,range:[0,4294967295]}','','1'),('backup.path','backup','path','','varchar(255)','',NULL,'\0','','','','','','',1,1,'text','{required:true,maxlength:255,}','','1'),('backup.status','backup','status','','varchar(20)','',NULL,'\0','','','','','','',4,4,'text','{maxlength:20,}','','1'),('grade.id','grade','id','','int(11)','PRI',NULL,'\0','','','\0','\0','\0','\0',0,0,'hidden','{required:true,digits:true,range:[-2147483648,2147483647]}','','1'),('grade.level','grade','level','','int(11)','',NULL,'\0','','','','','','',3,3,'digit','{digits:true,range:[-2147483648,2147483647]}','','1'),('grade.name','grade','name','','varchar(36)','',NULL,'\0','','','','','','',2,2,'text','{maxlength:36,}','','1'),('grade.numb','grade','numb','','varchar(36)','',NULL,'\0','','','','','','',1,1,'text','{maxlength:36,}','','1'),('menu.id','menu','id','','int(10) unsigned','PRI',NULL,'\0','','','\0','\0','\0','\0',0,0,'hidden','{required:true,digits:true,range:[0,4294967295]}','','1'),('menu.is_deleted','menu','is_deleted','','bit(1)','','b\'0\'','\0','','','','','','',10,10,'checkbox','{}','','1'),('menu.level','menu','level','层级','smallint(5) unsigned','','0','\0','','','','','','',5,5,'digit','{digits:true,range:[0,65535]}','','1'),('menu.link','menu','link','链接','varchar(100)','',NULL,'\0','','','','','','',3,3,'text','{maxlength:100,}','','1'),('menu.location','menu','location','位置','enum(\'top\',\'left\',\'right\',\'bottom\')','',NULL,'\0','','','','','','',8,8,'select','{}','','1'),('menu.memo','menu','memo','备注','varchar(100)','',NULL,'\0','','','','','','',11,11,'text','{maxlength:100,}','','1'),('menu.name','menu','name','名称','varchar(100)','',NULL,'\0','','','','','','',1,1,'text','{maxlength:100,}','','1'),('menu.order','menu','order','顺序','smallint(5) unsigned','','0','\0','','','','','','',6,6,'digit','{digits:true,range:[0,65535]}','','1'),('menu.pid','menu','pid','父级','int(10) unsigned','','0','\0','','','','','','',4,4,'digit','{digits:true,range:[0,4294967295]}','','1'),('menu.status','menu','status','','varchar(45)','','1','\0','','','','','','',9,9,'text','{maxlength:45,}','','1'),('menu.target','menu','target','打开方式','enum(\'_self\',\'_blank\',\'_parent\',\'_top\')','','_self','\0','','','','','','',7,7,'select','{}','','1'),('menu.title','menu','title','标题','varchar(100)','',NULL,'\0','','','','','','',2,2,'text','{maxlength:100,}','','1'),('module_column.add_order','module_column','add_order','','smallint(5) unsigned','',NULL,'\0','','','','','','',15,15,'digit','{digits:true,range:[0,65535]}','','1'),('module_column.add_show','module_column','add_show','','bit(1)','','b\'1\'','\0','','','','','','',13,13,'checkbox','{required:true,}','','1'),('module_column.control_type','module_column','control_type','','enum(\'text\',\'area\',\'select\',\'checkbox\',\'date\',\'hidden\',\'digit\')','',NULL,'\0','','','','','','',16,16,'area','{}','','1'),('module_column.default','module_column','default','','varchar(100)','',NULL,'\0','','','','','','',6,6,'text','{maxlength:100,}','','1'),('module_column.empty','module_column','empty','','bit(1)','',NULL,'\0','','','','','','',8,8,'checkbox','{}','','1'),('module_column.field','module_column','field','名称','varchar(100)','',NULL,'\0','','','','','','',2,2,'text','{required:true,maxlength:100,}','','1'),('module_column.id','module_column','id','','varchar(100)','PRI',NULL,'\0','','','\0','\0','\0','\0',0,0,'hidden','{required:true,maxlength:100,}','','1'),('module_column.insert_able','module_column','insert_able','','bit(1)','',NULL,'\0','','','','','','',9,9,'checkbox','{}','','1'),('module_column.list_order','module_column','list_order','','smallint(5) unsigned','',NULL,'\0','','','','','','',14,14,'digit','{digits:true,range:[0,65535]}','','1'),('module_column.list_show','module_column','list_show','','bit(1)','','b\'1\'','\0','','','','','','',12,12,'checkbox','{required:true,}','','1'),('module_column.module','module_column','module','','varchar(45)','',NULL,'\0','','','','','','',1,1,'text','{required:true,maxlength:45,}','','1'),('module_column.pk','module_column','pk','','varchar(45)','',NULL,'\0','','','','','','',5,5,'text','{maxlength:45,}','','1'),('module_column.query_able','module_column','query_able','','bit(1)','','b\'0\'','\0','','','','','','',11,11,'checkbox','{required:true,}','','1'),('module_column.readonly','module_column','readonly','','bit(1)','',NULL,'\0','','','','','','',7,7,'checkbox','{}','','1'),('module_column.status','module_column','status','','varchar(45)','',NULL,'\0','','','','','','',19,19,'text','{maxlength:45,}','','1'),('module_column.tips','module_column','tips','','varchar(100)','',NULL,'\0','','','','','','',18,18,'text','{maxlength:100,}','','1'),('module_column.title','module_column','title','','varchar(45)','',NULL,'\0','','','','','','',3,3,'text','{required:true,maxlength:45,}','','1'),('module_column.type','module_column','type','','varchar(255)','',NULL,'\0','','','','','','',4,4,'text','{maxlength:255,}','','1'),('module_column.update_able','module_column','update_able','','bit(1)','',NULL,'\0','','','','','','',10,10,'checkbox','{}','','1'),('module_column.validate','module_column','validate','','varchar(255)','','','\0','','','','','','',17,17,'text','{maxlength:255,}','','1'),('module_refer.as_fields','module_refer','as_fields','映射字段','varchar(1000)','','',NULL,'','','','\0','\0','\0',13,13,'text','{maxlength:1000,}','','1'),('module_refer.condition','module_refer','condition','参照条件','varchar(100)','','',NULL,'','','','\0','','',5,5,'text','{maxlength:100,}','','1'),('module_refer.field_show','module_refer','field_show','显示字段','varchar(45)','','',NULL,'','','','\0','','',14,14,'text','{maxlength:45,}','','1'),('module_refer.fk','module_refer','fk','参照外键','varchar(45)','','',NULL,'','','','\0','','',2,2,'text','{maxlength:45,}','','1'),('module_refer.fk_id','module_refer','fk_id','','varchar(100)','','',NULL,'','','','\0','\0','\0',6,6,'text','{maxlength:100,}','','1'),('module_refer.id','module_refer','id','','varchar(100)','PRI','',NULL,'','','\0','\0','\0','\0',0,0,'hidden','{required:true,maxlength:100,}','','1'),('module_refer.limit','module_refer','limit','关联条目','varchar(45)','','',NULL,'','','','\0','\0','\0',16,16,'text','{maxlength:45,}','','1'),('module_refer.map_fields','module_refer','map_fields','关联字段','varchar(1000)','','',NULL,'','','','\0','\0','\0',12,12,'text','{maxlength:1000,}','','1'),('module_refer.map_name','module_refer','map_name','映射名称','varchar(45)','','',NULL,'','','','\0','\0','\0',9,9,'text','{maxlength:45,}','','1'),('module_refer.map_type','module_refer','map_type','关联类型','varchar(45)','','',NULL,'','','','\0','\0','\0',10,10,'text','{maxlength:45,}','','1'),('module_refer.module','module_refer','module','参照表名','varchar(100)','','',NULL,'','','','\0','','',1,1,'text','{maxlength:100,}','','1'),('module_refer.module_refer','module_refer','module_refer','被参照表','varchar(100)','','',NULL,'','','','\0','','',3,3,'text','{maxlength:100,}','','1'),('module_refer.order','module_refer','order','关联顺序','varchar(45)','','',NULL,'','','','\0','\0','\0',15,15,'text','{maxlength:45,}','','1'),('module_refer.pk','module_refer','pk','参照主键','varchar(45)','','',NULL,'','','','\0','','',4,4,'text','{maxlength:45,}','','1'),('module_refer.pk_id','module_refer','pk_id','','varchar(100)','','',NULL,'','','','\0','\0','\0',7,7,'text','{maxlength:100,}','','1'),('module_refer.refer_type','module_refer','refer_type','参照类型','varchar(45)','','',NULL,'','','','\0','','',11,11,'text','{maxlength:45,}','','1'),('module_refer.relation_table','module_refer','relation_table','','varchar(45)','','',NULL,'','','','\0','\0','\0',8,8,'text','{maxlength:45,}','','1'),('student.card','student','card','','varchar(36)','',NULL,'\0','','','','','','',3,3,'text','{maxlength:36,}','','1'),('student.id','student','id','','int(11)','PRI',NULL,'\0','','','\0','\0','\0','\0',0,0,'hidden','{required:true,digits:true,range:[-2147483648,2147483647]}','','1'),('student.joinTime','student','joinTime','','datetime','',NULL,'\0','','','','','','',4,4,'','{dateISO:true,date:true,}','','1'),('student.name','student','name','','varchar(36)','',NULL,'\0','','','','','','',2,2,'text','{maxlength:36,}','','1'),('student.numb','student','numb','','varchar(36)','',NULL,'\0','','','','','','',1,1,'text','{maxlength:36,}','','1'),('student.status','student','status','','varchar(36)','',NULL,'\0','','','','','','',5,5,'text','{maxlength:36,}','','1'),('studentclass.classid','studentclass','classid','','int(11)','MUL',NULL,'\0','','','','','','',2,2,'digit','{digits:true,range:[-2147483648,2147483647]}','','1'),('studentclass.id','studentclass','id','','bigint(20)','PRI',NULL,'\0','','','\0','\0','\0','\0',0,0,'hidden','{required:true,digits:true,range:[-9223372036854775808,9223372036854775807]}','','1'),('studentclass.stuid','studentclass','stuid','','int(11)','MUL',NULL,'\0','','','','','','',1,1,'digit','{digits:true,range:[-2147483648,2147483647]}','','1'),('studentclass.termid','studentclass','termid','','int(11)','MUL',NULL,'\0','','','','','','',3,3,'digit','{digits:true,range:[-2147483648,2147483647]}','','1'),('studentclasssubject.csid','studentclasssubject','csid','','bigint(20)','MUL',NULL,'\0','','','','','','',3,3,'digit','{digits:true,range:[-9223372036854775808,9223372036854775807]}','','1'),('studentclasssubject.id','studentclasssubject','id','','bigint(20)','PRI',NULL,'\0','','','\0','\0','\0','\0',0,0,'hidden','{required:true,digits:true,range:[-9223372036854775808,9223372036854775807]}','','1'),('studentclasssubject.scid','studentclasssubject','scid','','bigint(20)','MUL',NULL,'\0','','','','','','',2,2,'digit','{digits:true,range:[-9223372036854775808,9223372036854775807]}','','1'),('studentclasssubject.score','studentclasssubject','score','','decimal(18,2)','',NULL,'\0','','','','','','',4,4,NULL,'{number:true,}','','1'),('studentclasssubject.stuid','studentclasssubject','stuid','','int(11)','MUL',NULL,'\0','','','','','','',1,1,'digit','{digits:true,range:[-2147483648,2147483647]}','','1'),('subject.id','subject','id','','int(11)','PRI',NULL,'\0','','','\0','\0','\0','\0',0,0,'hidden','{required:true,digits:true,range:[-2147483648,2147483647]}','','1'),('subject.name','subject','name','','varchar(36)','',NULL,'\0','','','','','','',2,2,'text','{maxlength:36,}','','1'),('subject.numb','subject','numb','','varchar(36)','',NULL,'\0','','','','','','',1,1,'text','{maxlength:36,}','','1'),('term.endTime','term','endTime','','datetime','',NULL,'\0','','','','','','',5,5,'','{dateISO:true,date:true,}','','1'),('term.id','term','id','','int(11)','PRI',NULL,'\0','','','\0','\0','\0','\0',0,0,'hidden','{required:true,digits:true,range:[-2147483648,2147483647]}','','1'),('term.name','term','name','','varchar(36)','',NULL,'\0','','','','','','',2,2,'text','{maxlength:36,}','','1'),('term.numb','term','numb','','varchar(36)','',NULL,'\0','','','','','','',1,1,'text','{maxlength:36,}','','1'),('term.startTime','term','startTime','','datetime','',NULL,'\0','','','','','','',4,4,'','{dateISO:true,date:true,}','','1'),('term.status','term','status','','varchar(36)','',NULL,'\0','','','','','','',7,7,'text','{maxlength:36,}','','1'),('term.type','term','type','','varchar(36)','',NULL,'\0','','','','','','',6,6,'text','{maxlength:36,}','','1'),('term.years','term','years','','int(11)','',NULL,'\0','','','','','','',3,3,'digit','{digits:true,range:[-2147483648,2147483647]}','','1'),('user.card_id','user','card_id','身份证号','varchar(18)','',NULL,'\0','','','','','','',7,7,'text','{maxlength:18,}','','1'),('user.display_name','user','display_name','姓名','varchar(50)','',NULL,'\0','','','','','','',4,4,'text','{maxlength:50,}','','1'),('user.email','user','email','email','varchar(100)','',NULL,'\0','','','','','','',2,2,'text','{maxlength:100,}','','1'),('user.id','user','id','','int(11) unsigned','PRI',NULL,'\0','','','\0','\0','\0','\0',0,0,'hidden','{required:true,digits:true,range:[0,4294967295]}','','1'),('user.last_login_time','user','last_login_time','上次登录','datetime','',NULL,'\0','','','','','','',12,12,'','{dateISO:true,date:true,}','','1'),('user.password','user','password','密码','varchar(45)','',NULL,'\0','','','','','','',3,3,'text','{maxlength:45,}','','1'),('user.phone','user','phone','手机','varchar(50)','',NULL,'\0','','','','','','',6,6,'text','{maxlength:50,}','','1'),('user.photo','user','photo','头像','varchar(255)','',NULL,'\0','','','','','','',8,8,'text','{maxlength:255,}','','1'),('user.qq','user','qq','qq','varchar(20)','',NULL,'\0','','','','','','',9,9,'text','{maxlength:20,}','','1'),('user.register_time','user','register_time','注册时间','datetime','',NULL,'\0','','','','','','',11,11,'','{dateISO:true,date:true,}','','1'),('user.sex','user','sex','性别','enum(\'男\',\'女\',\'未知\')','','未知','\0','','','','','','',5,5,'select','{}','','1'),('user.status','user','status','状态','varchar(255)','',NULL,'\0','','','','','','',13,13,'text','{maxlength:255,}','','1'),('user.username','user','username','用户名','varchar(50)','',NULL,'\0','','','','','','',1,1,'text','{required:true,maxlength:50,}','','1'),('user.weibo','user','weibo','微博','varchar(100)','',NULL,'\0','','','','','','',10,10,'text','{maxlength:100,}','','1');
/*!40000 ALTER TABLE `module_column` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `actions`
--

DROP TABLE IF EXISTS `actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `actions` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `obj_type` varchar(30) NOT NULL DEFAULT '',
  `obj_id` int(11) unsigned NOT NULL DEFAULT '0',
  `actor` varchar(30) NOT NULL DEFAULT '',
  `action` varchar(30) NOT NULL DEFAULT '',
  `date` datetime NOT NULL,
  `desc` varchar(255) NOT NULL,
  `extra` varchar(255) NOT NULL,
  `status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actions`
--

LOCK TABLES `actions` WRITE;
/*!40000 ALTER TABLE `actions` DISABLE KEYS */;
/*!40000 ALTER TABLE `actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_role`
--

DROP TABLE IF EXISTS `tp_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_role` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL COMMENT '后台组名',
  `pid` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '父ID',
  `status` tinyint(1) unsigned DEFAULT '0' COMMENT '是否激活 1：是 0：否',
  `sort` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '排序权重',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注说明',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_role`
--

LOCK TABLES `tp_role` WRITE;
/*!40000 ALTER TABLE `tp_role` DISABLE KEYS */;
INSERT INTO `tp_role` VALUES (1,'超级管理员',0,1,50,'超级管理员组'),(2,'编辑',0,1,40,'编辑组'),(3,'站点监督员',0,1,49,'站点监督员组');
/*!40000 ALTER TABLE `tp_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `article` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL COMMENT '标题',
  `excerpt` tinytext NOT NULL COMMENT '摘要',
  `content` text NOT NULL COMMENT '内容',
  `author` varchar(60) NOT NULL DEFAULT '0' COMMENT '作者',
  `author_id` int(11) DEFAULT NULL COMMENT '作者ID',
  `catgory` int(11) DEFAULT NULL COMMENT '分类',
  `post_date` datetime NOT NULL COMMENT '发布日期',
  `name` varchar(255) DEFAULT NULL COMMENT '名称',
  `tags` varchar(255) DEFAULT NULL COMMENT '标签',
  `reference` varchar(255) DEFAULT NULL COMMENT '引用地址',
  `password` varchar(20) NOT NULL DEFAULT '' COMMENT '密码',
  `type` enum('post','news','blog') DEFAULT 'post' COMMENT '文章类型',
  `status` enum('inherit','publish','private','draft','deleted') NOT NULL COMMENT '状态',
  `thumbnails` varchar(255) DEFAULT NULL COMMENT '缩略图',
  `attament` bit(1) DEFAULT NULL COMMENT '附件',
  `comment_status` enum('open','closed','registered_only') NOT NULL DEFAULT 'open' COMMENT '评论',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `lock_type` enum('system','customer') DEFAULT 'customer',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article`
--

LOCK TABLES `article` WRITE;
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
INSERT INTO `article` VALUES (14,'清华创业团队推出人脸云识别开放平台Face++，让开发者轻松共享人脸识别功能','Face++是一个人脸识别云服务平台，通过它提供的开放服务，开发者可以轻松的在自己的产品中实现若干面部识别功能。团队成员唐文斌还是一名清华研三的学生，他研究的视觉识别属于机器学习','Kooaba，提供面部识别技术而被Google以约3000万美金收购的乌克兰公司Viewdle和被Facebook以6000万美金收购的Face.com，以及被李嘉诚投资的能够提供面部情绪识别的Affectiva公司。还有一家中国公司<a href=\"http://www.angeleyes.it/\" rel=\"external nofollow\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; color: rgb(42, 133, 232); text-decoration: none; outline: 0px; line-height: inherit; \" target=\"_blank\">Angel Eyes</a>，他们做了一个开放平台，只要接入平台的API就能享受某些视觉识别服务。\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"margin: 0px 0px 18px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; line-height: 26px; color: rgb(68, 68, 68); font-size: 16px; font-family: \'Microsoft Yahei\', \'Helvetica Neue\', \'Luxi Sans\', \'DejaVu Sans\', Tahoma, \'Hiragino Sans GB\', STHeiti; \">本周刚刚上线的Face++跟Angel Eyes类似，不同的是他们只专注在面部识别领域的云服务。Face.<wbr />com也曾向第三方开发者提供相关的开放服务，但在Facebook收购后就关闭了这些开放服务。</p>\r\n\r\n<p style=\"margin: 0px 0px 18px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; line-height: 26px; color: rgb(68, 68, 68); font-size: 16px; font-family: \'Microsoft Yahei\', \'Helvetica Neue\', \'Luxi Sans\', \'DejaVu Sans\', Tahoma, \'Hiragino Sans GB\', STHeiti; \">Face++团队成员除了几名来自清华校友外，还有来自美国哥伦比亚大学、<wbr />英国牛津大学和美国南加州大学的科研及开发人员。开发者和合作方通过Face++提供的API接入和离线引擎就可以享受现成的人脸检测、分析和识别等服务。</p>\r\n\r\n<blockquote style=\"margin: 0px 20px 20px; padding: 10px 10px 10px 42px; border: 1px solid rgb(227, 225, 213); font: inherit; vertical-align: baseline; quotes: none; line-height: 20px; color: rgb(119, 119, 119); font-size: 16px; background-color: rgb(241, 240, 234); font-family: \'Microsoft Yahei\', \'Helvetica Neue\', \'Luxi Sans\', \'DejaVu Sans\', Tahoma, \'Hiragino Sans GB\', STHeiti; \">\r\n<p style=\"margin: 0px 0px 18px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; line-height: 26px; color: rgb(68, 68, 68); \">Face++团队介绍人脸识别技术主要有以下几种基本功能：</p>\r\n\r\n<p style=\"margin: 0px 0px 18px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; line-height: 26px; color: rgb(68, 68, 68); \">1）人脸检测：从图片中快速、准确的找到所有的或者有某些特征的脸。<br />\r\n2）人脸分析：通过人脸，对人的性别、年龄、<wbr />情绪的信息进行提取。<br />\r\n3）人脸识别：匹配给定人脸的相似性，<wbr />或者从成万上亿的人脸资料库中搜索、返回最相似的人脸索引。</p>\r\n\r\n<p style=\"margin: 0px 0px 18px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; line-height: 26px; color: rgb(68, 68, 68); \">使用这些基本功能，开发者可以根据人脸进行人群分类（种族、年龄等）、人脸验证、体感交互等。Face++不久之后也会提供情绪识别功能。目前除了一些游戏开发者外，一些广告公司也对此感兴趣，这些功能可以帮助他们做广告效果调查。</p>\r\n</blockquote>\r\n\r\n<p style=\"margin: 0px 0px 18px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; line-height: 26px; color: rgb(68, 68, 68); font-size: 16px; font-family: \'Microsoft Yahei\', \'Helvetica Neue\', \'Luxi Sans\', \'DejaVu Sans\', Tahoma, \'Hiragino Sans GB\', STHeiti; \">在推出这个平台之前，他们曾做过一款融合了人脸识别的游戏《Crows Coming》，有40万用户体验了这款App游戏，他们还计划在11月15号推出另一款游戏《Free Skate Xtreme》，这款游戏模仿《Temple Run》，在其中加入视觉控制因素。&ldquo;游戏只是尝试，Face++才是我们的未来方向。&rdquo;唐文斌说，即使没有编程经验的产品经理也可以利用Face++提供的服务尝试开发有人脸识别功能的产品，开放平台降低了面部识别技术的应用门槛。</p>\r\n','36kr',NULL,NULL,'0000-00-00 00:00:00',NULL,'国内创业公司,face++,云开放平台,人脸识别,唐文斌,面部识别','http://www.36kr.com/p/166200.html','','post','inherit','http://ideat.org/Public/Upload/files/thumbnail/61b85242jw1dygqwn3625j.jpg',NULL,'open',NULL,'customer'),(16,'无滤镜，不图片：传Twitter将引入滤镜功能对抗Instagram','大公司进军一个新的领域通常有两条途径，收购现成公司或者自己重头做起。在移动图片分享这一领域，Facebook选择了前者，现在Twitter似乎打算选第二条路。\r\n\r\n据Bits报道，Twitter在未来数月内计','<p style=\"margin: 0px 0px 18px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; line-height: 26px; color: rgb(68, 68, 68); font-size: 16px; font-family: \'Microsoft Yahei\', \'Helvetica Neue\', \'Luxi Sans\', \'DejaVu Sans\', Tahoma, \'Hiragino Sans GB\', STHeiti; \"><a href=\"http://www.36kr.com/p/166200.html/200943l33-15\" rel=\"attachment wp-att-166204\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; color: rgb(42, 133, 232); text-decoration: none; outline: 0px; line-height: inherit; \"><img alt=\"\" class=\"aligncenter size-full wp-image-166204\" height=\"530\" src=\"http://img01.36krcnd.com/wp-content/uploads/2012/11/200943L33-15.jpg\" style=\"margin: 0px auto; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; max-width: 100%; height: auto; text-align: center; display: block; \" title=\"200943L33-15\" width=\"530\" /></a></p>\r\n\r\n<p style=\"margin: 0px 0px 18px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; line-height: 26px; color: rgb(68, 68, 68); font-size: 16px; font-family: \'Microsoft Yahei\', \'Helvetica Neue\', \'Luxi Sans\', \'DejaVu Sans\', Tahoma, \'Hiragino Sans GB\', STHeiti; \">大公司进军一个新的领域通常有两条途径，收购现成公司或者自己重头做起。在移动图片分享这一领域，Facebook选择了前者，现在Twitter似乎打算选第二条路。</p>\r\n\r\n<p style=\"margin: 0px 0px 18px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; line-height: 26px; color: rgb(68, 68, 68); font-size: 16px; font-family: \'Microsoft Yahei\', \'Helvetica Neue\', \'Luxi Sans\', \'DejaVu Sans\', Tahoma, \'Hiragino Sans GB\', STHeiti; \">据<a href=\"http://bits.blogs.nytimes.com/2012/11/02/twitter-will-introduce-photo-filters-to-compete-with-instagram/\" rel=\"external nofollow\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; color: rgb(42, 133, 232); text-decoration: none; outline: 0px; line-height: inherit; \" target=\"_blank\">Bits报道</a>，Twitter在未来数月内计划更新新版移动客户端，引入照片滤镜功能。这一举动明显是针对当下最流行的移动图片分享应用Instagram。当初正是靠风格各异的滤镜化腐朽为神奇，让普通用户也能过一把摄影师的瘾，Instagram才能在短短18个月里掠下亿级用户，最后又以10亿美元被Facebook收购。</p>\r\n\r\n<p style=\"margin: 0px 0px 18px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; line-height: 26px; color: rgb(68, 68, 68); font-size: 16px; font-family: \'Microsoft Yahei\', \'Helvetica Neue\', \'Luxi Sans\', \'DejaVu Sans\', Tahoma, \'Hiragino Sans GB\', STHeiti; \">加入滤镜，看似只是一个非常小的功能改动，但是对Twitter这家有着5亿多用户的公司来说，却有着重要影响。在移动领域，图片分享依然有着巨大的潜力，而一向视移动为生命的Twitter，自然也不会对这块蛋糕视若无睹。</p>\r\n\r\n<p style=\"margin: 0px 0px 18px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; line-height: 26px; color: rgb(68, 68, 68); font-size: 16px; font-family: \'Microsoft Yahei\', \'Helvetica Neue\', \'Luxi Sans\', \'DejaVu Sans\', Tahoma, \'Hiragino Sans GB\', STHeiti; \">此外，据Twitter内部一位员工表示，Twitter的关键用户V.I.T（Very Important Tweeters，多为名流及媒体）将会格外乐意看到这项滤镜功能。现在的状况是，大部分 V.I.T.都是用Instagram拍照，然后分享到Twitter上&mdash;&mdash;因为他们在Twitter上粉丝更多。</p>\r\n\r\n<p style=\"margin: 0px 0px 18px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; line-height: 26px; color: rgb(68, 68, 68); font-size: 16px; font-family: \'Microsoft Yahei\', \'Helvetica Neue\', \'Luxi Sans\', \'DejaVu Sans\', Tahoma, \'Hiragino Sans GB\', STHeiti; \">此前Twitter曾经考虑过收购一家图片分享公司，Facebook拿下Instagram之后Twitter高层更是加快了这一计划。但是最终由于多方因素收购未能完成，现在终于确定要自己来做。</p>\r\n','36kr',NULL,NULL,'0000-00-00 00:00:00',NULL,'国外资讯,Instagram,Twitter,滤镜',NULL,'','post','inherit','http://ideat.org/Public/Upload/files/thumbnail/200943L33-15.jpg',NULL,'open',NULL,'customer'),(17,'Google Glass被时代杂志评为2012年度最佳发明，最终版外形放出','大公司进军一个新的领域通常有两条途径，收购现成公司或者自己重头做起。在移动图片分享这一领域，Facebook选择了前者，现在Twitter似乎打算选第二条路。\r\n\r\n据Bits报道，Twitter在未来数月内计','<p style=\"margin: 0px 0px 18px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; line-height: 26px; color: rgb(68, 68, 68); font-size: 16px; font-family: \'Microsoft Yahei\', \'Helvetica Neue\', \'Luxi Sans\', \'DejaVu Sans\', Tahoma, \'Hiragino Sans GB\', STHeiti; \">&nbsp;</p>\r\n\r\n<hr style=\"border-style: dashed; border-color: rgb(221, 221, 221); border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; clear: both; margin: 12px 0px 18px; height: 0px; color: rgb(85, 85, 85); font-family: \'Microsoft Yahei\', \'Helvetica Neue\', \'Luxi Sans\', \'DejaVu Sans\', Tahoma, \'Hiragino Sans GB\', STHeiti; font-size: 13px; line-height: 18px; \" />\r\n<p style=\"margin: 0px 0px 18px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; line-height: 26px; color: rgb(68, 68, 68); font-size: 16px; font-family: \'Microsoft Yahei\', \'Helvetica Neue\', \'Luxi Sans\', \'DejaVu Sans\', Tahoma, \'Hiragino Sans GB\', STHeiti; \"><a href=\"http://www.36kr.com/p/166163.html/googleglass\" rel=\"attachment wp-att-166180\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; color: rgb(42, 133, 232); text-decoration: none; outline: 0px; line-height: inherit; \"><img alt=\"\" class=\"aligncenter size-full wp-image-166180\" height=\"480\" src=\"http://img01.36krcnd.com/wp-content/uploads/2012/11/googleglass.jpg\" style=\"margin: 0px auto; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; max-width: 100%; height: auto; text-align: center; display: block; \" title=\"googleglass\" width=\"720\" /></a></p>\r\n\r\n<p style=\"margin: 0px 0px 18px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; line-height: 26px; color: rgb(68, 68, 68); font-size: 16px; font-family: \'Microsoft Yahei\', \'Helvetica Neue\', \'Luxi Sans\', \'DejaVu Sans\', Tahoma, \'Hiragino Sans GB\', STHeiti; \">Google 的The Next Big Thing ，广受瞩目的Google Glass 被时代杂志评为<a href=\"http://techland.time.com/2012/11/01/best-inventions-of-the-year-2012/slide/google-glass/\" rel=\"external nofollow\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; color: rgb(42, 133, 232); text-decoration: none; outline: 0px; line-height: inherit; \" target=\"_blank\">2012年度最佳发明</a>，Google Glass 的最终外形也同时公布，将于2014年向公众开放购买，售价1500美元。</p>\r\n\r\n<p style=\"margin: 0px 0px 18px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; line-height: 26px; color: rgb(68, 68, 68); font-size: 16px; font-family: \'Microsoft Yahei\', \'Helvetica Neue\', \'Luxi Sans\', \'DejaVu Sans\', Tahoma, \'Hiragino Sans GB\', STHeiti; \">在今年6月底的Google I/O大会上，Google Glass 出尽风头，Google联合创始人Sergey Brin 别出心裁地安排了一场<a href=\"http://www.36kr.com/p/123065.html\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; color: rgb(42, 133, 232); text-decoration: none; outline: 0px; line-height: inherit; \">4000英尺高空&ldquo;跳伞视频直播&rdquo;</a>的发布会，以展示Google Glass 别样的拍照功能。</p>\r\n\r\n<p style=\"margin: 0px 0px 18px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; line-height: 26px; color: rgb(68, 68, 68); font-size: 16px; font-family: \'Microsoft Yahei\', \'Helvetica Neue\', \'Luxi Sans\', \'DejaVu Sans\', Tahoma, \'Hiragino Sans GB\', STHeiti; \">当然，如果只是拍照功能的话绝不会引得大家如此雀跃，真正配得上&ldquo;未来眼镜&rdquo;的美名的是它在概念视频里展现出来的充满未来感的强大功能（如下视频）：这款眼镜将集智能手机、GPS、相机于一身，在用户眼前展现实时信息（增强现实），只要眨眨眼就能拍照上传、收发短信、查询天气路况等操作。</p>\r\n\r\n<p style=\"margin: 0px 0px 18px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; line-height: 26px; color: rgb(68, 68, 68); font-size: 16px; font-family: \'Microsoft Yahei\', \'Helvetica Neue\', \'Luxi Sans\', \'DejaVu Sans\', Tahoma, \'Hiragino Sans GB\', STHeiti; \"><iframe frameborder=\"0\" height=\"420\" src=\"http://player.youku.com/embed/XMzc2MzY0ODQ4\" style=\"margin: 0px; padding: 0px; border-width: 0px; font: inherit; vertical-align: baseline; \" width=\"640\"></iframe></p>\r\n','36kr',NULL,NULL,'0000-00-00 00:00:00',NULL,'国外资讯,Google,Google Glass',NULL,'','post','inherit','http://ideat.org/Public/Upload/files/thumbnail/googleglass.jpg',NULL,'open',NULL,'customer'),(18,'创业公司应该如何为设计工作制定预算','设计的重要性自不待言，Path第二版就是靠着精良的设计瞬间抓住了不少用户的心。但是对创业公司来说，如何用最少的钱做最多的事才是王道。著名的科技问答类网站Stack Overflow就是通过众包类','<p style=\"margin: 0px 0px 18px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; line-height: 26px; color: rgb(68, 68, 68); font-size: 16px; font-family: \'Microsoft Yahei\', \'Helvetica Neue\', \'Luxi Sans\', \'DejaVu Sans\', Tahoma, \'Hiragino Sans GB\', STHeiti; \"><a href=\"http://www.36kr.com/p/165548.html/2638622_305_thumb\" rel=\"attachment wp-att-165550\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; color: rgb(42, 133, 232); text-decoration: none; outline: 0px; line-height: inherit; \"><img alt=\"\" class=\"aligncenter size-full wp-image-165550\" height=\"294\" src=\"http://img01.36krcnd.com/wp-content/uploads/2012/11/2638622_305_thumb.jpg\" style=\"margin: 0px auto; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; max-width: 100%; height: auto; text-align: center; display: block; \" title=\"2638622_305_thumb\" width=\"550\" /></a></p>\r\n\r\n<blockquote style=\"margin: 0px 20px 20px; padding: 10px 10px 10px 42px; border: 1px solid rgb(227, 225, 213); font: inherit; vertical-align: baseline; quotes: none; line-height: 20px; color: rgb(119, 119, 119); font-size: 16px; background-color: rgb(241, 240, 234); font-family: \'Microsoft Yahei\', \'Helvetica Neue\', \'Luxi Sans\', \'DejaVu Sans\', Tahoma, \'Hiragino Sans GB\', STHeiti; \">\r\n<p style=\"margin: 0px 0px 18px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; line-height: 26px; color: rgb(68, 68, 68); \">设计的重要性自不待言，Path第二版就是靠着精良的设计瞬间抓住了不少用户的心。但是对创业公司来说，如何用最少的钱做最多的事才是王道。著名的科技问答类网站Stack Overflow就是通过众包类设计网站99Designs<a href=\"http://news.ycombinator.com/item?id=4710657\" rel=\"external nofollow\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; color: rgb(42, 133, 232); text-decoration: none; outline: 0px; line-height: inherit; \" target=\"_blank\">完成自己的logo设计</a>的。Sacha Greif作为一名设计师和创业者，就创业公司如何为设计工作制定预算这一问题给出了自己的建议，详见：</p>\r\n</blockquote>\r\n\r\n<p style=\"margin: 0px 0px 18px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; line-height: 26px; color: rgb(68, 68, 68); font-size: 16px; font-family: \'Microsoft Yahei\', \'Helvetica Neue\', \'Luxi Sans\', \'DejaVu Sans\', Tahoma, \'Hiragino Sans GB\', STHeiti; \">先来看一个大致的分类：</p>\r\n\r\n<ol style=\"margin: 0px 0px 18px 30px; padding-right: 0px; padding-left: 0px; border: 0px; font: inherit; vertical-align: baseline; list-style-position: initial; list-style-image: initial; color: rgb(85, 85, 85); font-family: \'Microsoft Yahei\', \'Helvetica Neue\', \'Luxi Sans\', \'DejaVu Sans\', Tahoma, \'Hiragino Sans GB\', STHeiti; font-size: 13px; line-height: 18px; \">\r\n	<li style=\"margin: 0px 0px 18px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; color: rgb(68, 68, 68); font-size: 16px; line-height: 26px; \">没钱：用免费的框架和UI吧亲</li>\r\n	<li style=\"margin: 0px 0px 18px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; color: rgb(68, 68, 68); font-size: 16px; line-height: 26px; \">0-100美元：可以试试预制主题和很赞的字体</li>\r\n	<li style=\"margin: 0px 0px 18px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; color: rgb(68, 68, 68); font-size: 16px; line-height: 26px; \">100-500美元：考虑下众包设计</li>\r\n	<li style=\"margin: 0px 0px 18px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; color: rgb(68, 68, 68); font-size: 16px; line-height: 26px; \">500-1000美元：众包设计或者雇佣一位自由设计师</li>\r\n	<li style=\"margin: 0px 0px 18px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; color: rgb(68, 68, 68); font-size: 16px; line-height: 26px; \">1000-10000美元：找一位优秀设计师</li>\r\n	<li style=\"margin: 0px 0px 18px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; color: rgb(68, 68, 68); font-size: 16px; line-height: 26px; \">10000+美元：专业设计机构</li>\r\n</ol>\r\n\r\n<p style=\"margin: 0px 0px 18px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; line-height: 26px; color: rgb(68, 68, 68); font-size: 16px; font-family: \'Microsoft Yahei\', \'Helvetica Neue\', \'Luxi Sans\', \'DejaVu Sans\', Tahoma, \'Hiragino Sans GB\', STHeiti; \">详情请继续往下。</p>\r\n\r\n<p style=\"margin: 0px 0px 18px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; line-height: 26px; color: rgb(68, 68, 68); font-size: 16px; font-family: \'Microsoft Yahei\', \'Helvetica Neue\', \'Luxi Sans\', \'DejaVu Sans\', Tahoma, \'Hiragino Sans GB\', STHeiti; \"><strong style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; line-height: inherit; \">没钱</strong></p>\r\n\r\n<p style=\"margin: 0px 0px 18px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; line-height: 26px; color: rgb(68, 68, 68); font-size: 16px; font-family: \'Microsoft Yahei\', \'Helvetica Neue\', \'Luxi Sans\', \'DejaVu Sans\', Tahoma, \'Hiragino Sans GB\', STHeiti; \">首先设计这一块其实你是可以不花钱搞定很多事的。类似<a href=\"http://twitter.github.com/bootstrap/\" rel=\"external nofollow\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; color: rgb(42, 133, 232); text-decoration: none; outline: 0px; line-height: inherit; \" target=\"_blank\">Bootstrap</a>和<a href=\"http://foundation.zurb.com/\" rel=\"external nofollow\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; color: rgb(42, 133, 232); text-decoration: none; outline: 0px; line-height: inherit; \" target=\"_blank\">Foundation</a>这类网站可以为你提供一个非常不错的初始平台，而且能帮你搞定基本的字体和布局。</p>\r\n\r\n<p style=\"margin: 0px 0px 18px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; line-height: 26px; color: rgb(68, 68, 68); font-size: 16px; font-family: \'Microsoft Yahei\', \'Helvetica Neue\', \'Luxi Sans\', \'DejaVu Sans\', Tahoma, \'Hiragino Sans GB\', STHeiti; \"><a href=\"http://www.36kr.com/p/165548.html/screen-shot-2012-10-31-at-10-41-58-am-570x284\" rel=\"attachment wp-att-165554\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; color: rgb(42, 133, 232); text-decoration: none; outline: 0px; line-height: inherit; \"><img alt=\"\" class=\"aligncenter size-full wp-image-165554\" height=\"284\" src=\"http://img02.36krcnd.com/wp-content/uploads/2012/11/Screen-Shot-2012-10-31-at-10.41.58-AM-570x284.png\" style=\"margin: 0px auto; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; max-width: 100%; height: auto; text-align: center; display: block; \" title=\"Screen-Shot-2012-10-31-at-10.41.58-AM-570x284\" width=\"570\" /></a></p>\r\n\r\n<p style=\"margin: 0px 0px 18px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; line-height: 26px; color: rgb(68, 68, 68); font-size: 16px; font-family: \'Microsoft Yahei\', \'Helvetica Neue\', \'Luxi Sans\', \'DejaVu Sans\', Tahoma, \'Hiragino Sans GB\', STHeiti; \">设计师之间也经常会共享UI元素作为赠品，有时候你甚至能找到一些已经编码好的UI。当然，由于是赠品，你需要特别注意UI的使用授权。我建议你在将其用于商业活动前先跟创作者联系，虽然我的经验表明设计师通常都非常高兴自己的工作能派上用场。</p>\r\n\r\n<p style=\"margin: 0px 0px 18px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; line-height: 26px; color: rgb(68, 68, 68); font-size: 16px; font-family: \'Microsoft Yahei\', \'Helvetica Neue\', \'Luxi Sans\', \'DejaVu Sans\', Tahoma, \'Hiragino Sans GB\', STHeiti; \"><a href=\"http://www.36kr.com/p/165548.html/screen-shot-2012-10-31-at-10-43-04-am-570x454\" rel=\"attachment wp-att-165556\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; color: rgb(42, 133, 232); text-decoration: none; outline: 0px; line-height: inherit; \"><img alt=\"\" class=\"aligncenter size-full wp-image-165556\" height=\"454\" src=\"http://img03.36krcnd.com/wp-content/uploads/2012/11/Screen-Shot-2012-10-31-at-10.43.04-AM-570x454.png\" style=\"margin: 0px auto; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; max-width: 100%; height: auto; text-align: center; display: block; \" title=\"Screen-Shot-2012-10-31-at-10.43.04-AM-570x454\" width=\"570\" /></a></p>\r\n\r\n<p style=\"margin: 0px 0px 18px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; line-height: 26px; color: rgb(68, 68, 68); font-size: 16px; font-family: \'Microsoft Yahei\', \'Helvetica Neue\', \'Luxi Sans\', \'DejaVu Sans\', Tahoma, \'Hiragino Sans GB\', STHeiti; \"><strong style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; line-height: inherit; \">0-100美元</strong></p>\r\n\r\n<p style=\"margin: 0px 0px 18px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; line-height: 26px; color: rgb(68, 68, 68); font-size: 16px; font-family: \'Microsoft Yahei\', \'Helvetica Neue\', \'Luxi Sans\', \'DejaVu Sans\', Tahoma, \'Hiragino Sans GB\', STHeiti; \">哪怕你只有不到100美元，设计上的选择也会多出许多。首先你可以考虑<a href=\"http://themeforest.net/\" rel=\"external nofollow\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; color: rgb(42, 133, 232); text-decoration: none; outline: 0px; line-height: inherit; \" target=\"_blank\">Themeforest</a>或者<a href=\"http://www.woothemes.com/\" rel=\"external nofollow\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; color: rgb(42, 133, 232); text-decoration: none; outline: 0px; line-height: inherit; \" target=\"_blank\">Woothemes</a>这类有着丰富的预制模版资源的网站，通常每个模版的售价也只有约50美元。</p>\r\n\r\n<p style=\"margin: 0px 0px 18px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; line-height: 26px; color: rgb(68, 68, 68); font-size: 16px; font-family: \'Microsoft Yahei\', \'Helvetica Neue\', \'Luxi Sans\', \'DejaVu Sans\', Tahoma, \'Hiragino Sans GB\', STHeiti; \"><a href=\"http://www.36kr.com/p/165548.html/screen-shot-2012-10-31-at-10-45-26-am-570x292\" rel=\"attachment wp-att-165557\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; color: rgb(42, 133, 232); text-decoration: none; outline: 0px; line-height: inherit; \"><img alt=\"\" class=\"aligncenter size-full wp-image-165557\" height=\"292\" src=\"http://img04.36krcnd.com/wp-content/uploads/2012/11/Screen-Shot-2012-10-31-at-10.45.26-AM-570x292.png\" style=\"margin: 0px auto; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; max-width: 100%; height: auto; text-align: center; display: block; \" title=\"Screen-Shot-2012-10-31-at-10.45.26-AM-570x292\" width=\"570\" /></a></p>\r\n\r\n<p style=\"margin: 0px 0px 18px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; line-height: 26px; color: rgb(68, 68, 68); font-size: 16px; font-family: \'Microsoft Yahei\', \'Helvetica Neue\', \'Luxi Sans\', \'DejaVu Sans\', Tahoma, \'Hiragino Sans GB\', STHeiti; \">不要以为这些网站都只有一些WordPress的主题模版，<a href=\"http://themeforest.net/\" rel=\"external nofollow\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; color: rgb(42, 133, 232); text-decoration: none; outline: 0px; line-height: inherit; \" target=\"_blank\">Themeforest</a>就有许多管理模版，非常适合Web App的皮肤设计工作。</p>\r\n\r\n<p style=\"margin: 0px 0px 18px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; line-height: 26px; color: rgb(68, 68, 68); font-size: 16px; font-family: \'Microsoft Yahei\', \'Helvetica Neue\', \'Luxi Sans\', \'DejaVu Sans\', Tahoma, \'Hiragino Sans GB\', STHeiti; \">如果你还要一个Logo呢？你不可能以低于100美元的价格弄到一个logo，但是这并不是说你就没其他办法了。如果一个纯文字的logo对你而言OK的话，你完全可以自己设计。<a href=\"https://path.com/\" rel=\"external nofollow\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; color: rgb(42, 133, 232); text-decoration: none; outline: 0px; line-height: inherit; \" target=\"_blank\">Path</a>就是典型的例子，选了一个很赞的字体（Coquette）做成一个不错的Logo。</p>\r\n\r\n<p style=\"margin: 0px 0px 18px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; line-height: 26px; color: rgb(68, 68, 68); font-size: 16px; font-family: \'Microsoft Yahei\', \'Helvetica Neue\', \'Luxi Sans\', \'DejaVu Sans\', Tahoma, \'Hiragino Sans GB\', STHeiti; \"><a href=\"http://www.36kr.com/p/165548.html/screen-shot-2012-10-31-at-10-46-42-am-570x409\" rel=\"attachment wp-att-165560\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; color: rgb(42, 133, 232); text-decoration: none; outline: 0px; line-height: inherit; \"><img alt=\"\" class=\"aligncenter size-full wp-image-165560\" height=\"409\" src=\"http://img05.36krcnd.com/wp-content/uploads/2012/11/Screen-Shot-2012-10-31-at-10.46.42-AM-570x409.png\" style=\"margin: 0px auto; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; max-width: 100%; height: auto; text-align: center; display: block; \" title=\"Screen-Shot-2012-10-31-at-10.46.42-AM-570x409\" width=\"570\" /></a></p>\r\n\r\n<p style=\"margin: 0px 0px 18px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; line-height: 26px; color: rgb(68, 68, 68); font-size: 16px; font-family: \'Microsoft Yahei\', \'Helvetica Neue\', \'Luxi Sans\', \'DejaVu Sans\', Tahoma, \'Hiragino Sans GB\', STHeiti; \">类似<a href=\"http://www.myfonts.com/\" rel=\"external nofollow\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; color: rgb(42, 133, 232); text-decoration: none; outline: 0px; line-height: inherit; \" target=\"_blank\">MyFonts</a>类的字体网站有着许多专业字体资源，你可以在上面预览自己设计的logo效果，通常一款字体的售价也差不多是50美元。</p>\r\n\r\n<p style=\"margin: 0px 0px 18px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; line-height: 26px; color: rgb(68, 68, 68); font-size: 16px; font-family: \'Microsoft Yahei\', \'Helvetica Neue\', \'Luxi Sans\', \'DejaVu Sans\', Tahoma, \'Hiragino Sans GB\', STHeiti; \">如果你想找一个图像logo，那么可以试试<a href=\"http://graphicriver.net/\" rel=\"external nofollow\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; color: rgb(42, 133, 232); text-decoration: none; outline: 0px; line-height: inherit; \" target=\"_blank\">GraphicRiver</a>这类有很多可以用作logo的图片资源的网站。虽然这些图片做成的logo你是没有专有权的，但是如果你只是想把这个logo放在登录首页的话，也没关系啦。</p>\r\n\r\n<p style=\"margin: 0px 0px 18px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; line-height: 26px; color: rgb(68, 68, 68); font-size: 16px; font-family: \'Microsoft Yahei\', \'Helvetica Neue\', \'Luxi Sans\', \'DejaVu Sans\', Tahoma, \'Hiragino Sans GB\', STHeiti; \">&nbsp;</p>\r\n\r\n<p style=\"margin: 0px 0px 18px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; line-height: 26px; color: rgb(68, 68, 68); font-size: 16px; font-family: \'Microsoft Yahei\', \'Helvetica Neue\', \'Luxi Sans\', \'DejaVu Sans\', Tahoma, \'Hiragino Sans GB\', STHeiti; \"><strong style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; line-height: inherit; \">100-500美元</strong></p>\r\n\r\n<p style=\"margin: 0px 0px 18px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; line-height: 26px; color: rgb(68, 68, 68); font-size: 16px; font-family: \'Microsoft Yahei\', \'Helvetica Neue\', \'Luxi Sans\', \'DejaVu Sans\', Tahoma, \'Hiragino Sans GB\', STHeiti; \">如果你还打算再多花点钱，那么可以考虑下类似<a href=\"http://99designs.com/\" rel=\"external nofollow\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; color: rgb(42, 133, 232); text-decoration: none; outline: 0px; line-height: inherit; \" target=\"_blank\">99Designs</a>的众包设计网站。</p>\r\n\r\n<p style=\"margin: 0px 0px 18px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; line-height: 26px; color: rgb(68, 68, 68); font-size: 16px; font-family: \'Microsoft Yahei\', \'Helvetica Neue\', \'Luxi Sans\', \'DejaVu Sans\', Tahoma, \'Hiragino Sans GB\', STHeiti; \">虽然作为一个设计师我个人是不喜欢这类投机性工作，也很反感设计工作的商业化，但是不得不承认的是，如果你只有不到500美元，99Design可能是你的最佳选择了。因为在这一预算下，你很难请到一个优秀设计师来帮你。但是有了99Designs，起码你有更多的选择，可以从中挑一个不那么坏的。</p>\r\n\r\n<p style=\"margin: 0px 0px 18px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; line-height: 26px; color: rgb(68, 68, 68); font-size: 16px; font-family: \'Microsoft Yahei\', \'Helvetica Neue\', \'Luxi Sans\', \'DejaVu Sans\', Tahoma, \'Hiragino Sans GB\', STHeiti; \"><a href=\"http://www.36kr.com/p/165548.html/screen-shot-2012-10-31-at-10-57-01-am-570x284\" rel=\"attachment wp-att-165562\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; color: rgb(42, 133, 232); text-decoration: none; outline: 0px; line-height: inherit; \"><img alt=\"\" class=\"aligncenter size-full wp-image-165562\" height=\"284\" src=\"http://img01.36krcnd.com/wp-content/uploads/2012/11/Screen-Shot-2012-10-31-at-10.57.01-AM-570x284.png\" style=\"margin: 0px auto; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; max-width: 100%; height: auto; text-align: center; display: block; \" title=\"Screen-Shot-2012-10-31-at-10.57.01-AM-570x284\" width=\"570\" /></a></p>\r\n\r\n<p style=\"margin: 0px 0px 18px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; line-height: 26px; color: rgb(68, 68, 68); font-size: 16px; font-family: \'Microsoft Yahei\', \'Helvetica Neue\', \'Luxi Sans\', \'DejaVu Sans\', Tahoma, \'Hiragino Sans GB\', STHeiti; \">如果你不太确定自己想要什么样的效果，通过这类众包设计网站获得的诸多备选方案也是一个不错的资产。你可以从中挑出你最喜欢的类型，然后按照这个模子再去请一个更有经验的设计师来完成最终稿（这招可真狠&hellip;)。</p>\r\n\r\n<p style=\"margin: 0px 0px 18px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; line-height: 26px; color: rgb(68, 68, 68); font-size: 16px; font-family: \'Microsoft Yahei\', \'Helvetica Neue\', \'Luxi Sans\', \'DejaVu Sans\', Tahoma, \'Hiragino Sans GB\', STHeiti; \"><a href=\"http://www.36kr.com/p/165548.html/screen-shot-2012-10-31-at-11-00-23-am-570x240\" rel=\"attachment wp-att-165563\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; color: rgb(42, 133, 232); text-decoration: none; outline: 0px; line-height: inherit; \"><img alt=\"\" class=\"aligncenter size-full wp-image-165563\" height=\"240\" src=\"http://img02.36krcnd.com/wp-content/uploads/2012/11/Screen-Shot-2012-10-31-at-11.00.23-AM-570x240.png\" style=\"margin: 0px auto; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; max-width: 100%; height: auto; text-align: center; display: block; \" title=\"Screen-Shot-2012-10-31-at-11.00.23-AM-570x240\" width=\"570\" /></a></p>\r\n\r\n<p style=\"margin: 0px 0px 18px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; line-height: 26px; color: rgb(68, 68, 68); font-size: 16px; font-family: \'Microsoft Yahei\', \'Helvetica Neue\', \'Luxi Sans\', \'DejaVu Sans\', Tahoma, \'Hiragino Sans GB\', STHeiti; \">当然99Designs也不是唯一的选择，<a href=\"http://www.brandcrowd.com/\" rel=\"external nofollow\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; color: rgb(42, 133, 232); text-decoration: none; outline: 0px; line-height: inherit; \" target=\"_blank\">BrandCrowd</a>就可以为你提供许多预制的logo，很多都比99Designs有着更好的品质。顺便提一句，有些通过99Designs找到的设计师会将已有的艺术图片用作自己的作品，可得小心鉴别了。</p>\r\n\r\n<p style=\"margin: 0px 0px 18px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; line-height: 26px; color: rgb(68, 68, 68); font-size: 16px; font-family: \'Microsoft Yahei\', \'Helvetica Neue\', \'Luxi Sans\', \'DejaVu Sans\', Tahoma, \'Hiragino Sans GB\', STHeiti; \"><strong style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; line-height: inherit; \">500-1000美元</strong></p>\r\n\r\n<p style=\"margin: 0px 0px 18px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; line-height: 26px; color: rgb(68, 68, 68); font-size: 16px; font-family: \'Microsoft Yahei\', \'Helvetica Neue\', \'Luxi Sans\', \'DejaVu Sans\', Tahoma, \'Hiragino Sans GB\', STHeiti; \">这一阶段其实是不太好选的。是该依旧采用众包的方式呢，还是直接雇一名自由设计师呢？</p>\r\n\r\n<p style=\"margin: 0px 0px 18px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; line-height: 26px; color: rgb(68, 68, 68); font-size: 16px; font-family: \'Microsoft Yahei\', \'Helvetica Neue\', \'Luxi Sans\', \'DejaVu Sans\', Tahoma, \'Hiragino Sans GB\', STHeiti; \">当然还是取决于你到底要搞定什么类型的设计工作：品牌、网页设计或者交互设计都不一样。虽然可以用不到1000美元搞定一个不错的logo，但是如果是要搞定全套的话这点预算就略显吃紧了。所以你可以试试杂糅的解决方式，比如用Bootstrap或者预制模版搞定网站，然后再去做一个定制版的logo。</p>\r\n\r\n<p style=\"margin: 0px 0px 18px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; line-height: 26px; color: rgb(68, 68, 68); font-size: 16px; font-family: \'Microsoft Yahei\', \'Helvetica Neue\', \'Luxi Sans\', \'DejaVu Sans\', Tahoma, \'Hiragino Sans GB\', STHeiti; \">话虽如此，但我的个人原则是设计上要么做的最好，要么花的最少，绝不容忍中间态。所以如果你预算不太够的话，最好不要过早跳到更高的设计阶段。</p>\r\n\r\n<p style=\"margin: 0px 0px 18px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; line-height: 26px; color: rgb(68, 68, 68); font-size: 16px; font-family: \'Microsoft Yahei\', \'Helvetica Neue\', \'Luxi Sans\', \'DejaVu Sans\', Tahoma, \'Hiragino Sans GB\', STHeiti; \"><strong style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; line-height: inherit; \">1000-10000美元</strong></p>\r\n\r\n<p style=\"margin: 0px 0px 18px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; line-height: 26px; color: rgb(68, 68, 68); font-size: 16px; font-family: \'Microsoft Yahei\', \'Helvetica Neue\', \'Luxi Sans\', \'DejaVu Sans\', Tahoma, \'Hiragino Sans GB\', STHeiti; \">在这个价位你可以找到一个不错的自由设计师，类似的网站有<a href=\"http://folyo.me/\" rel=\"external nofollow\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; color: rgb(42, 133, 232); text-decoration: none; outline: 0px; line-height: inherit; \" target=\"_blank\">Folyo</a>。同99Designs众包式设计相比，专门雇佣一名设计师除了可以获得更有质量的产出，通常设计师还会在产品上更替你操心。因为从设计师身上能获得最宝贵的东西之一就是能以全新的视角去观察你的产品和生意，而要达到这一效果通常需要长期性的合作。</p>\r\n\r\n<p style=\"margin: 0px 0px 18px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; line-height: 26px; color: rgb(68, 68, 68); font-size: 16px; font-family: \'Microsoft Yahei\', \'Helvetica Neue\', \'Luxi Sans\', \'DejaVu Sans\', Tahoma, \'Hiragino Sans GB\', STHeiti; \"><a href=\"http://www.36kr.com/p/165548.html/screen-shot-2012-10-31-at-11-23-51-am-570x265\" rel=\"attachment wp-att-165564\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; color: rgb(42, 133, 232); text-decoration: none; outline: 0px; line-height: inherit; \"><img alt=\"\" class=\"aligncenter size-full wp-image-165564\" height=\"265\" src=\"http://img03.36krcnd.com/wp-content/uploads/2012/11/Screen-Shot-2012-10-31-at-11.23.51-AM-570x265.png\" style=\"margin: 0px auto; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; max-width: 100%; height: auto; text-align: center; display: block; \" title=\"Screen-Shot-2012-10-31-at-11.23.51-AM-570x265\" width=\"570\" /></a></p>\r\n\r\n<p style=\"margin: 0px 0px 18px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; line-height: 26px; color: rgb(68, 68, 68); font-size: 16px; font-family: \'Microsoft Yahei\', \'Helvetica Neue\', \'Luxi Sans\', \'DejaVu Sans\', Tahoma, \'Hiragino Sans GB\', STHeiti; \">&nbsp;</p>\r\n\r\n<p style=\"margin: 0px 0px 18px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; line-height: 26px; color: rgb(68, 68, 68); font-size: 16px; font-family: \'Microsoft Yahei\', \'Helvetica Neue\', \'Luxi Sans\', \'DejaVu Sans\', Tahoma, \'Hiragino Sans GB\', STHeiti; \"><strong style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; line-height: inherit; \">10000+美元</strong></p>\r\n\r\n<p style=\"margin: 0px 0px 18px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; line-height: 26px; color: rgb(68, 68, 68); font-size: 16px; font-family: \'Microsoft Yahei\', \'Helvetica Neue\', \'Luxi Sans\', \'DejaVu Sans\', Tahoma, \'Hiragino Sans GB\', STHeiti; \">如果你已经拿到几轮融资了，而且手上现金充足的话，可以考虑去专业设计机构试试。相比起单个设计师，这些大型机构可以组织更多的人来解决你的问题，也许集合众人的智慧会给出更好的方案。</p>\r\n\r\n<p style=\"margin: 0px 0px 18px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; line-height: 26px; color: rgb(68, 68, 68); font-size: 16px; font-family: \'Microsoft Yahei\', \'Helvetica Neue\', \'Luxi Sans\', \'DejaVu Sans\', Tahoma, \'Hiragino Sans GB\', STHeiti; \">但是我个人没有多少同这类机构打交道的经验，所以也不好说他们的服务是否抵得上这个价。我只知道大部分我了解的创业公司都会直接去找独立设计师，而不是去找设计机构。</p>\r\n\r\n<p style=\"margin: 0px 0px 18px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; line-height: 26px; color: rgb(68, 68, 68); font-size: 16px; font-family: \'Microsoft Yahei\', \'Helvetica Neue\', \'Luxi Sans\', \'DejaVu Sans\', Tahoma, \'Hiragino Sans GB\', STHeiti; \"><strong style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; line-height: inherit; \">结论</strong></p>\r\n\r\n<p style=\"margin: 0px 0px 18px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; line-height: 26px; color: rgb(68, 68, 68); font-size: 16px; font-family: \'Microsoft Yahei\', \'Helvetica Neue\', \'Luxi Sans\', \'DejaVu Sans\', Tahoma, \'Hiragino Sans GB\', STHeiti; \">就像上面说的那样，不花钱或者花一点钱也可以完成很多设计任务，如果你的预算稍微宽裕一点的话，也会有很多其他选择。创业公司通常会在中间阶段纠结：众包服务似乎是一个不错的选择，但是切记这条路是有一定风险的，有时候不如省点钱去请一个独立设计师。</p>\r\n','36kr',NULL,NULL,'0000-00-00 00:00:00',NULL,'专栏,99Designs,Bootstrap,Folyo ',NULL,'','post','inherit','http://ideat.org/Public/Upload/files/thumbnail/2638622_305_thumb.jpg',NULL,'open',NULL,'customer'),(19,'做大与做强是否如鱼与熊掌不可得兼？—关于Android市场份额的联想','前几天我们曾分析过消费电子产业未来的市场份额预测。IDC有关智能手机份额的最新出炉数据印证了Android在手机份额中的统治地位，Google的手机OS仍在继续肆无忌惮地吞噬着市场份额，其三季度','<p align=\"left\" style=\"margin: 0px 0px 18px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; line-height: 26px; color: rgb(68, 68, 68); font-size: 16px; font-family: \'Microsoft Yahei\', \'Helvetica Neue\', \'Luxi Sans\', \'DejaVu Sans\', Tahoma, \'Hiragino Sans GB\', STHeiti; text-align: center; \"><a href=\"http://www.36kr.com/p/166091.html/278838xcitefun-android-vs-ios-4-by-phragmentation-1024x640\" rel=\"attachment wp-att-166095\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; color: rgb(42, 133, 232); text-decoration: none; outline: 0px; line-height: inherit; \"><img alt=\"\" class=\"aligncenter  wp-image-166095\" height=\"384\" src=\"http://img01.36krcnd.com/wp-content/uploads/2012/11/278838xcitefun-android-vs-ios-4-by-phragmentation-1024x640.jpg\" style=\"margin: 0px auto; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; max-width: 100%; height: auto; display: block; \" title=\"278838xcitefun-android-vs-ios-4-by-phragmentation-1024x640\" width=\"614\" /></a></p>\r\n\r\n<p align=\"left\" style=\"margin: 0px 0px 18px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; line-height: 26px; color: rgb(68, 68, 68); font-size: 16px; font-family: \'Microsoft Yahei\', \'Helvetica Neue\', \'Luxi Sans\', \'DejaVu Sans\', Tahoma, \'Hiragino Sans GB\', STHeiti; \">前几天我们曾分析过<a href=\"http://www.36kr.com/p/165370.html\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; color: rgb(42, 133, 232); text-decoration: none; outline: 0px; line-height: inherit; \">消费电子产业未来的市场份额预测</a>。IDC有关智能手机份额的最新<a href=\"http://www.36kr.com/p/165736.html\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; color: rgb(42, 133, 232); text-decoration: none; outline: 0px; line-height: inherit; \">出炉</a>数据印证了Android在手机份额中的统治地位，Google的手机OS仍在继续肆无忌惮地吞噬着市场份额，其三季度出货量达1.36亿，占了整个市场的3/4，受到iPhone 5上市时间影响的苹果以2690万台居次席，份额为14.9%，虽然与去年同期的13.8%略有提高，但与Android的差距又被拉大了（Android去年同期的份额占比为57.5%）。黑莓和塞班的没落令其份额被Android无情地蚕食掉了。而微软虽然份额同期增长了140%，但市场份额仍只有2%，不足以对两大天王构成挑战，除非<a href=\"http://www.36kr.com/?s=windows+phone+8\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; color: rgb(42, 133, 232); text-decoration: none; outline: 0px; line-height: inherit; \">Windows Phone&nbsp;</a>8能如微软预期有惊艳表现，否则三国争霸只是空谈，双寡头才是现实。</p>\r\n\r\n<div class=\"wp-caption aligncenter\" id=\"attachment_166092\" style=\"margin: 0px auto; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; text-align: center; color: rgb(85, 85, 85); font-family: \'Microsoft Yahei\', \'Helvetica Neue\', \'Luxi Sans\', \'DejaVu Sans\', Tahoma, \'Hiragino Sans GB\', STHeiti; font-size: 13px; line-height: 18px; width: 628px; \"><a href=\"http://www.36kr.com/p/166091.html/screen-shot-2012-11-01-at-8-22-42-pm\" rel=\"attachment wp-att-166092\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; color: rgb(42, 133, 232); text-decoration: none; outline: 0px; line-height: inherit; \"><img alt=\"\" class=\"size-full wp-image-166092\" height=\"293\" src=\"http://img02.36krcnd.com/wp-content/uploads/2012/11/screen-shot-2012-11-01-at-8-22-42-pm.png\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; max-width: 100%; height: auto; \" title=\"screen-shot-2012-11-01-at-8-22-42-pm\" width=\"618\" /></a>\r\n\r\n<p class=\"wp-caption-text\" style=\"margin: 0px 0px 18px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; line-height: 26px; color: rgb(68, 68, 68); font-size: 16px; \">Android的市场份额增势如脱缰野马</p>\r\n</div>\r\n\r\n<p align=\"left\" style=\"margin: 0px 0px 18px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; line-height: 26px; color: rgb(68, 68, 68); font-size: 16px; font-family: \'Microsoft Yahei\', \'Helvetica Neue\', \'Luxi Sans\', \'DejaVu Sans\', Tahoma, \'Hiragino Sans GB\', STHeiti; \">甚至一家独大都有可能。</p>\r\n\r\n<p align=\"left\" style=\"margin: 0px 0px 18px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; line-height: 26px; color: rgb(68, 68, 68); font-size: 16px; font-family: \'Microsoft Yahei\', \'Helvetica Neue\', \'Luxi Sans\', \'DejaVu Sans\', Tahoma, \'Hiragino Sans GB\', STHeiti; \">因为除了市场份额这个指标以外，据<a href=\"http://venturebeat.com/2012/10/17/android-smartphones-now-have-majority-mobile-web-traffic-share/\" rel=\"external nofollow\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; color: rgb(42, 133, 232); text-decoration: none; outline: 0px; line-height: inherit; \" target=\"_blank\">广告网络Chitika的数据</a>，Android在北美移动web流量上的份额（51%）也超过了iOS（43%），我们有理由相信，在中国这个比例会更高。</p>\r\n\r\n<div class=\"wp-caption aligncenter\" id=\"attachment_166093\" style=\"margin: 0px auto; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; text-align: center; color: rgb(85, 85, 85); font-family: \'Microsoft Yahei\', \'Helvetica Neue\', \'Luxi Sans\', \'DejaVu Sans\', Tahoma, \'Hiragino Sans GB\', STHeiti; font-size: 13px; line-height: 18px; width: 568px; \"><a href=\"http://www.36kr.com/p/166091.html/apple-samsung-web-traffic1\" rel=\"attachment wp-att-166093\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; color: rgb(42, 133, 232); text-decoration: none; outline: 0px; line-height: inherit; \"><img alt=\"\" class=\"size-full wp-image-166093\" height=\"321\" src=\"http://img03.36krcnd.com/wp-content/uploads/2012/11/apple-samsung-web-traffic1.jpg\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; max-width: 100%; height: auto; \" title=\"apple-samsung-web-traffic1\" width=\"558\" /></a>\r\n\r\n<p class=\"wp-caption-text\" style=\"margin: 0px 0px 18px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; line-height: 26px; color: rgb(68, 68, 68); font-size: 16px; \">Android流量已超iOS</p>\r\n</div>\r\n\r\n<p align=\"left\" style=\"margin: 0px 0px 18px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; line-height: 26px; color: rgb(68, 68, 68); font-size: 16px; font-family: \'Microsoft Yahei\', \'Helvetica Neue\', \'Luxi Sans\', \'DejaVu Sans\', Tahoma, \'Hiragino Sans GB\', STHeiti; \">好吧，也许有人会说，出货量说明不了什么，iOS才是最强劲的移动/媒体/app生态体系，苹果的利润远超其他手机。可是在市场容量有限的情况下，你能假设苹果能一直把优势延续下去吗？如果其市场份额掉到10%会怎么样？再掉到5%呢?Android现在的势头就像脱缰的野马，出站之列车，想收都收不住了，这是开放体系之必然。哪里有用户开发者就去哪里（参见<a href=\"http://www.36kr.com/p/140544.html\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; color: rgb(42, 133, 232); text-decoration: none; outline: 0px; line-height: inherit; \">各平台吸引力</a>），然后媒体公司、生态体系的合作伙伴也会亦步亦趋。所以苹果的收入、利润等指标不见得能一直持续下去。而为了维系乃至于提高市场份额，苹果会不会像推出iPad mini一样在智能手机领域争取中低端市场？</p>\r\n\r\n<p align=\"left\" style=\"margin: 0px 0px 18px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; line-height: 26px; color: rgb(68, 68, 68); font-size: 16px; font-family: \'Microsoft Yahei\', \'Helvetica Neue\', \'Luxi Sans\', \'DejaVu Sans\', Tahoma, \'Hiragino Sans GB\', STHeiti; \">不过Google也有自己的烦恼。</p>\r\n\r\n<p align=\"left\" style=\"margin: 0px 0px 18px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; line-height: 26px; color: rgb(68, 68, 68); font-size: 16px; font-family: \'Microsoft Yahei\', \'Helvetica Neue\', \'Luxi Sans\', \'DejaVu Sans\', Tahoma, \'Hiragino Sans GB\', STHeiti; \">开放体系导致Android的各种<a href=\"http://www.36kr.com/p/109621.html\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; color: rgb(42, 133, 232); text-decoration: none; outline: 0px; line-height: inherit; \">机型铺天盖地</a>，各种<a href=\"http://www.36kr.com/p/156831.html\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; color: rgb(42, 133, 232); text-decoration: none; outline: 0px; line-height: inherit; \">操作系统版本残留</a>，碎片化越来越严重（虽然存在<a href=\"http://www.36kr.com/p/157555.html\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; color: rgb(42, 133, 232); text-decoration: none; outline: 0px; line-height: inherit; \">一些针对分化市场的应用开发解决方案</a>）。尽管Google一直想统一整个市场，建立强大的生态体系，但像运营商、Amazon等友敌显然并不乐见。碎片化的后果是，做大可以，做强很难。这个烦恼跟苹果的正好相反。所以Google会不会在今后强化自己的硬件品牌，靠自己来完善生态体系？</p>\r\n\r\n<div class=\"wp-caption aligncenter\" id=\"attachment_166094\" style=\"margin: 0px auto; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; text-align: center; color: rgb(85, 85, 85); font-family: \'Microsoft Yahei\', \'Helvetica Neue\', \'Luxi Sans\', \'DejaVu Sans\', Tahoma, \'Hiragino Sans GB\', STHeiti; font-size: 13px; line-height: 18px; width: 636px; \"><a href=\"http://www.36kr.com/p/166091.html/an-2\" rel=\"attachment wp-att-166094\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; color: rgb(17, 99, 157); text-decoration: none; outline: 0px; line-height: inherit; \"><img alt=\"\" class=\"wp-image-166094 \" height=\"357\" src=\"http://img04.36krcnd.com/wp-content/uploads/2012/11/an.jpg\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; max-width: 100%; height: auto; \" title=\"an\" width=\"626\" /></a>\r\n\r\n<p class=\"wp-caption-text\" style=\"margin: 0px 0px 18px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; line-height: 26px; color: rgb(68, 68, 68); font-size: 16px; \">Android碎片化越来越严重</p>\r\n</div>\r\n\r\n<p align=\"left\" style=\"margin: 0px 0px 18px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; line-height: 26px; color: rgb(68, 68, 68); font-size: 16px; font-family: \'Microsoft Yahei\', \'Helvetica Neue\', \'Luxi Sans\', \'DejaVu Sans\', Tahoma, \'Hiragino Sans GB\', STHeiti; \">如果苹果和Google都各自按照这种假设走下去的话，那么这个市场会不会逐渐趋同？</p>\r\n','36kr',NULL,NULL,'0000-00-00 00:00:00',NULL,'专栏,Android,iOS,windows phone 8,移动',NULL,'','post','inherit','http://ideat.org/Public/Upload/files/thumbnail/278838xcitefun-android-vs-ios-4-by-phragmentation-1024x640.jpg',NULL,'open',NULL,'customer'),(20,'出手还是观望？问答社区Yabbly帮你想通选择问题','面对大件商品，买还是不买总是一个纠结的问题。而面对纠结，我们能做的似乎就是去搜索看看测评，到电商网站看看评论，还可能会跑到社交网站上吼上一句。可是评论可能不够详细，社交网','<p style=\"margin: 0px 0px 18px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; line-height: 26px; color: rgb(68, 68, 68); font-size: 16px; font-family: \'Microsoft Yahei\', \'Helvetica Neue\', \'Luxi Sans\', \'DejaVu Sans\', Tahoma, \'Hiragino Sans GB\', STHeiti; \">面对大件商品，买还是不买总是一个纠结的问题。而面对纠结，我们能做的似乎就是去搜索看看测评，到电商网站看看评论，还可能会跑到社交网站上吼上一句。可是评论可能不够详细，社交网上的朋友不是专家。怎么能做到，在购买选择上找到些能给你更确定和详尽的答案的人呢？问答社区Yabbly正在这个问题上想办法。</p>\r\n\r\n<p style=\"margin: 0px 0px 18px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; line-height: 26px; color: rgb(68, 68, 68); font-size: 16px; font-family: \'Microsoft Yahei\', \'Helvetica Neue\', \'Luxi Sans\', \'DejaVu Sans\', Tahoma, \'Hiragino Sans GB\', STHeiti; \"><a href=\"http://yabbly.com/\" rel=\"external nofollow\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; color: rgb(42, 133, 232); text-decoration: none; outline: 0px; line-height: inherit; \" target=\"_blank\">Yabbly</a>作为一个基于web和移动的问答社区平台，希望帮助人们做更正确的决定。用户可以通过查看做过相同决定和曾经面临同样状况的人的反馈避免买完后就后悔。</p>\r\n\r\n<p style=\"margin: 0px 0px 18px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; line-height: 26px; color: rgb(68, 68, 68); font-size: 16px; font-family: \'Microsoft Yahei\', \'Helvetica Neue\', \'Luxi Sans\', \'DejaVu Sans\', Tahoma, \'Hiragino Sans GB\', STHeiti; \">在Yabbly中用户发起的每条消息都是一个问题或告诫，用户可以发起问题、查看别人问题或搜索关键词寻找问题，并能在问题和告诫下与其它用户做更多的交流。除了购买问题，用户还可以用Yabbly加快自己做有关产品、旅行、娱乐、科技、职业等问题的决定。</p>\r\n\r\n<p style=\"margin: 0px 0px 18px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; line-height: 26px; color: rgb(68, 68, 68); font-size: 16px; font-family: \'Microsoft Yahei\', \'Helvetica Neue\', \'Luxi Sans\', \'DejaVu Sans\', Tahoma, \'Hiragino Sans GB\', STHeiti; text-align: center; \"><a href=\"http://img01.36krcnd.com/wp-content/uploads/2012/11/yabbly.png\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; color: rgb(42, 133, 232); text-decoration: none; outline: 0px; line-height: inherit; \" target=\"_blank\"><img alt=\"\" class=\"aligncenter  wp-image-166082\" height=\"353\" src=\"http://img02.36krcnd.com/wp-content/uploads/2012/11/yabbly.png\" style=\"margin: 0px auto; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; max-width: 100%; height: auto; display: block; \" title=\"yabbly\" width=\"806\" /></a></p>\r\n\r\n<p style=\"margin: 0px 0px 18px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; line-height: 26px; color: rgb(68, 68, 68); font-size: 16px; font-family: \'Microsoft Yahei\', \'Helvetica Neue\', \'Luxi Sans\', \'DejaVu Sans\', Tahoma, \'Hiragino Sans GB\', STHeiti; \">在Yabbly的开发者、前Google员工Tom Leung看来，别人所做过的类似决定会更容易帮助人们做决定，因为人们容易有模仿行为。这就好比你听朋友说吃过某家餐厅，等你饿的时候经过这家餐厅，就会不由自主地想去试试看。</p>\r\n\r\n<p style=\"margin: 0px 0px 18px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; line-height: 26px; color: rgb(68, 68, 68); font-size: 16px; font-family: \'Microsoft Yahei\', \'Helvetica Neue\', \'Luxi Sans\', \'DejaVu Sans\', Tahoma, \'Hiragino Sans GB\', STHeiti; \">问答社区容易面临一个问题：提问的人多，提供回答的人少。如何解决这个问题呢？和其他问答社区（或者说基于知识的社区）Quora、知乎不同，Yabbly希望通过鼓励用户帮助彼此的&ldquo;karma system&rdquo;（可以理解为&ldquo;因果报应&rdquo;或&ldquo;帮人帮己&rdquo;系统）提升问题回答的活跃度。意思是，当一位曾经帮你解决过问题的用户问了一个你讨论过的问题，你会收到消息推送。在这种情况下你会更愿意主动去解答它。</p>\r\n\r\n<p style=\"margin: 0px 0px 18px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; line-height: 26px; color: rgb(68, 68, 68); font-size: 16px; font-family: \'Microsoft Yahei\', \'Helvetica Neue\', \'Luxi Sans\', \'DejaVu Sans\', Tahoma, \'Hiragino Sans GB\', STHeiti; \">除此之外，Yabbly也正在思考问答社区的盈利模式。尽管目前的主要任务在于构建整个社区氛围，但他们下一步打算接入广告商。因为Yabbly上用户可能会问不少&ldquo;买不买&rdquo;的决策问题，他们可在特定问题的页面上引入特定的广告商。Tom表示，&ldquo;广告商非常重视那些准备做决定的用户的眼球。&rdquo;</p>\r\n\r\n<p style=\"margin: 0px 0px 18px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; line-height: 26px; color: rgb(68, 68, 68); font-size: 16px; font-family: \'Microsoft Yahei\', \'Helvetica Neue\', \'Luxi Sans\', \'DejaVu Sans\', Tahoma, \'Hiragino Sans GB\', STHeiti; \">目前，这个来自西雅图的创业团队已获得包括Google和Amazon高管50万美元的种子投资，社区还处于邀请制度中。在购买决策这个问题上，我们还介绍过价格预测网站<a href=\"http://www.36kr.com/p/162911.html\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; color: rgb(42, 133, 232); text-decoration: none; outline: 0px; line-height: inherit; \">Decide</a>。它以预测失败包赔的口号推出5美元包月服务，帮你决定何时购买最划算。</p>\r\n\r\n<p style=\"margin: 0px 0px 18px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; line-height: 26px; color: rgb(68, 68, 68); font-size: 16px; font-family: \'Microsoft Yahei\', \'Helvetica Neue\', \'Luxi Sans\', \'DejaVu Sans\', Tahoma, \'Hiragino Sans GB\', STHeiti; \">Source via&nbsp;<a href=\"http://www.fastcompany.com/3002609/buy-or-not-buy-yabbly-ask-someone-whos-been-there-bought?utm_source=feedburner&amp;utm_medium=feed&amp;utm_campaign=Feed%3A+fastcompany%2Fheadlines+%28Fast+Company%29\" rel=\"external nofollow\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; color: rgb(42, 133, 232); text-decoration: none; outline: 0px; line-height: inherit; \" target=\"_blank\">FC</a></p>\r\n','36kr',NULL,NULL,'0000-00-00 00:00:00',NULL,'国外创业公司,Yabbly,决策,问答社区',NULL,'','post','inherit','http://ideat.org/Public/Upload/files/thumbnail/yabbly.png',NULL,'open',NULL,'customer');
/*!40000 ALTER TABLE `article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account` (
  `id` int(11) unsigned DEFAULT NULL,
  `admin_profile` int(11) NOT NULL DEFAULT '0',
  `activation_key` varchar(60) DEFAULT NULL,
  `reset_token` varchar(60) NOT NULL DEFAULT '',
  `last_login_date` datetime NOT NULL,
  `last_modified` datetime NOT NULL,
  `last_failed_attempt` datetime NOT NULL,
  `last_login_ip` varchar(40) NOT NULL DEFAULT '',
  `failed_logins` smallint(4) unsigned NOT NULL DEFAULT '0',
  `lockout_expires` int(11) NOT NULL DEFAULT '0',
  `last_failed_ip` varchar(15) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_authority`
--

DROP TABLE IF EXISTS `user_authority`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_authority` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL COMMENT '用户名',
  `aid` int(10) unsigned NOT NULL COMMENT '权限编号',
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_user_authority` (`uid`,`aid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_authority`
--

LOCK TABLES `user_authority` WRITE;
/*!40000 ALTER TABLE `user_authority` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_authority` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `topic`
--

DROP TABLE IF EXISTS `topic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `topic` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `views` int(11) DEFAULT '0' COMMENT '查看次数',
  `comments` int(11) DEFAULT '0' COMMENT '评论次数',
  `good` int(11) DEFAULT '0' COMMENT '赞 次数',
  `download` int(11) DEFAULT '0' COMMENT '下载次数',
  `favorite` int(11) DEFAULT '0' COMMENT '收藏次数',
  `share` int(11) DEFAULT '0',
  `post_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `topic`
--

LOCK TABLES `topic` WRITE;
/*!40000 ALTER TABLE `topic` DISABLE KEYS */;
INSERT INTO `topic` VALUES (1,3,0,0,0,0,0,'2012-11-06 23:49:29'),(12,4,0,0,0,0,0,'2012-11-02 20:56:59'),(13,0,0,0,0,0,0,'2012-11-02 20:57:48'),(14,162,0,0,0,0,0,'2012-11-02 20:58:11'),(15,3,0,0,0,0,0,'2012-11-03 21:06:24'),(16,66,0,0,0,0,0,'2012-11-06 22:02:24'),(17,51,0,0,0,0,0,'2012-11-06 22:03:27'),(18,60,0,0,0,0,0,'2012-11-06 22:04:35'),(19,92,0,0,0,0,0,'2012-11-06 22:05:41'),(20,154,0,0,0,0,0,'2012-11-06 22:06:42'),(21,5,0,0,0,0,0,'2012-11-15 20:44:11'),(22,7,0,0,0,0,0,'2012-11-15 20:47:37'),(23,4,0,0,0,0,0,'2012-12-04 07:46:56'),(24,7,0,0,0,0,0,'2012-12-04 07:47:15'),(25,2,0,0,0,0,0,'2012-12-04 08:53:15'),(26,4,0,0,0,0,0,'2012-12-04 08:53:30'),(27,4,0,0,0,0,0,'2012-12-04 08:53:44'),(28,4,0,0,0,0,0,'2012-12-04 09:42:06'),(29,2,0,0,0,0,0,'2012-12-04 09:42:12'),(30,5,0,0,0,0,0,'2012-12-04 09:42:22'),(31,2,0,0,0,0,0,'2012-12-04 10:33:52'),(32,4,0,0,0,0,0,'2012-12-04 10:33:57'),(33,4,0,0,0,0,0,'2012-12-04 10:34:02'),(34,4,0,0,0,0,0,'2012-12-04 11:23:25'),(35,6,0,0,0,0,0,'2012-12-04 11:23:30'),(36,4,0,0,0,0,0,'2012-12-04 11:23:36'),(37,606,0,0,0,0,0,'2012-12-04 12:15:24'),(38,4,0,0,0,0,0,'2012-12-04 12:15:32'),(39,604,0,0,0,0,0,'2012-12-04 12:16:03'),(40,4,0,0,0,0,0,'2012-12-04 13:31:30'),(41,4,0,0,0,0,0,'2012-12-04 13:31:38'),(42,4,0,0,0,0,0,'2012-12-04 13:31:43'),(43,4,0,0,0,0,0,'2012-12-04 14:27:21'),(44,2,0,0,0,0,0,'2012-12-04 14:27:27'),(45,4,0,0,0,0,0,'2012-12-04 14:27:42'),(46,4,0,0,0,0,0,'2012-12-04 15:28:32'),(47,4,0,0,0,0,0,'2012-12-04 15:29:03'),(48,4,0,0,0,0,0,'2012-12-04 15:29:47'),(49,601,0,0,0,0,0,'2012-12-04 16:34:24'),(50,4,0,0,0,0,0,'2012-12-04 16:34:29'),(51,605,0,0,0,0,0,'2012-12-04 16:35:09'),(52,613,0,0,0,0,0,'2012-12-04 16:35:17'),(53,599,0,0,0,0,0,'2012-12-04 16:35:44'),(54,4,0,0,0,0,0,'2012-12-04 16:35:52'),(55,6,0,0,0,0,0,'2012-12-04 19:03:16'),(56,2,0,0,0,0,0,'2012-12-04 19:03:23'),(57,4,0,0,0,0,0,'2012-12-04 19:03:28'),(58,2,0,0,0,0,0,'2012-12-04 22:46:42'),(59,4,0,0,0,0,0,'2012-12-04 22:47:09'),(60,4,0,0,0,0,0,'2012-12-04 22:47:33'),(61,4,0,0,0,0,0,'2012-12-04 22:47:58'),(62,4,0,0,0,0,0,'2012-12-04 22:48:20'),(63,4,0,0,0,0,0,'2012-12-04 22:48:50'),(64,4,0,0,0,0,0,'2012-12-04 23:26:16'),(65,2,0,0,0,0,0,'2012-12-04 23:26:25'),(66,4,0,0,0,0,0,'2012-12-04 23:26:34'),(67,4,0,0,0,0,0,'2012-12-04 23:26:43'),(68,4,0,0,0,0,0,'2012-12-04 23:26:52'),(69,4,0,0,0,0,0,'2012-12-04 23:27:04'),(70,4,0,0,0,0,0,'2012-12-04 23:27:12'),(71,4,0,0,0,0,0,'2012-12-04 23:27:21'),(72,4,0,0,0,0,0,'2012-12-04 23:27:30'),(73,4,0,0,0,0,0,'2012-12-04 23:27:50'),(74,4,0,0,0,0,0,'2012-12-04 23:27:57'),(75,6,0,0,0,0,0,'2012-12-04 23:28:05'),(76,6,0,0,0,0,0,'2012-12-04 23:31:25'),(77,4,0,0,0,0,0,'2012-12-04 23:31:40'),(78,5,0,0,0,0,0,'2012-12-04 23:32:22'),(79,0,0,0,0,0,0,'2012-12-04 23:32:33'),(80,3,0,0,0,0,0,'2012-12-04 23:33:15'),(81,4,0,0,0,0,0,'2012-12-04 23:58:01'),(82,4,0,0,0,0,0,'2012-12-04 23:58:06'),(83,4,0,0,0,0,0,'2012-12-04 23:58:11'),(84,2,0,0,0,0,0,'2012-12-04 23:58:53'),(85,4,0,0,0,0,0,'2012-12-04 23:59:02'),(86,2,0,0,0,0,0,'2012-12-04 23:59:12'),(87,4,0,0,0,0,0,'2012-12-05 00:04:38'),(88,4,0,0,0,0,0,'2012-12-05 00:04:45'),(89,4,0,0,0,0,0,'2012-12-05 00:04:54'),(90,4,0,0,0,0,0,'2012-12-05 00:05:07'),(91,4,0,0,0,0,0,'2012-12-05 00:05:17'),(92,4,0,0,0,0,0,'2012-12-05 00:05:37'),(93,2,0,0,0,0,0,'2012-12-05 00:05:47'),(94,4,0,0,0,0,0,'2012-12-05 00:05:59'),(95,2,0,0,0,0,0,'2012-12-05 00:06:32'),(96,4,0,0,0,0,0,'2012-12-05 00:06:45'),(97,4,0,0,0,0,0,'2012-12-05 00:06:52'),(98,4,0,0,0,0,0,'2012-12-05 00:07:00'),(99,4,0,0,0,0,0,'2012-12-05 00:37:52'),(100,4,0,0,0,0,0,'2012-12-05 00:38:02'),(101,4,0,0,0,0,0,'2012-12-05 00:38:12'),(102,4,0,0,0,0,0,'2012-12-05 00:38:19'),(103,4,0,0,0,0,0,'2012-12-05 00:38:33'),(104,2,0,0,0,0,0,'2012-12-05 00:38:43'),(105,2,0,0,0,0,0,'2012-12-05 00:41:00'),(106,4,0,0,0,0,0,'2012-12-05 00:41:04'),(107,4,0,0,0,0,0,'2012-12-05 00:41:08'),(108,4,0,0,0,0,0,'2012-12-05 00:41:13'),(109,2,0,0,0,0,0,'2012-12-05 00:41:17'),(110,4,0,0,0,0,0,'2012-12-05 00:41:21'),(111,4,0,0,0,0,0,'2012-12-05 00:41:25'),(112,2,0,0,0,0,0,'2012-12-05 00:41:30'),(113,4,0,0,0,0,0,'2012-12-05 00:41:34'),(114,4,0,0,0,0,0,'2012-12-05 00:41:38'),(115,4,0,0,0,0,0,'2012-12-05 00:41:42'),(116,4,0,0,0,0,0,'2012-12-05 00:41:46'),(117,4,0,0,0,0,0,'2012-12-05 00:42:03'),(118,4,0,0,0,0,0,'2012-12-05 00:42:13'),(119,4,0,0,0,0,0,'2012-12-05 00:42:30'),(120,4,0,0,0,0,0,'2012-12-05 00:42:39'),(121,4,0,0,0,0,0,'2012-12-05 00:42:48'),(122,2,0,0,0,0,0,'2012-12-05 00:42:54'),(123,4,0,0,0,0,0,'2012-12-05 00:43:06'),(124,4,0,0,0,0,0,'2012-12-05 00:43:19'),(125,4,0,0,0,0,0,'2012-12-05 00:43:27'),(126,4,0,0,0,0,0,'2012-12-05 00:43:36'),(127,2,0,0,0,0,0,'2012-12-05 00:43:46'),(128,2,0,0,0,0,0,'2012-12-05 00:50:03'),(129,4,0,0,0,0,0,'2012-12-05 00:50:09'),(130,4,0,0,0,0,0,'2012-12-05 00:50:17'),(131,4,0,0,0,0,0,'2012-12-05 00:50:44'),(132,4,0,0,0,0,0,'2012-12-05 00:50:53'),(133,4,0,0,0,0,0,'2012-12-05 00:51:02'),(134,4,0,0,0,0,0,'2012-12-05 01:09:04'),(135,4,0,0,0,0,0,'2012-12-05 01:09:10'),(136,4,0,0,0,0,0,'2012-12-05 01:09:23'),(137,4,0,0,0,0,0,'2012-12-05 01:09:31'),(138,4,0,0,0,0,0,'2012-12-05 01:09:37'),(139,4,0,0,0,0,0,'2012-12-05 01:09:47'),(140,4,0,0,0,0,0,'2012-12-05 01:09:54'),(141,4,0,0,0,0,0,'2012-12-05 01:10:01'),(142,4,0,0,0,0,0,'2012-12-05 01:10:13'),(143,2,0,0,0,0,0,'2012-12-05 01:10:24'),(144,4,0,0,0,0,0,'2012-12-05 01:10:30'),(145,2,0,0,0,0,0,'2012-12-05 01:10:36'),(146,4,0,0,0,0,0,'2012-12-05 01:10:46'),(147,4,0,0,0,0,0,'2012-12-05 01:10:51'),(148,2,0,0,0,0,0,'2012-12-05 01:11:00'),(149,4,0,0,0,0,0,'2012-12-05 01:16:28'),(150,4,0,0,0,0,0,'2012-12-05 01:16:48'),(151,4,0,0,0,0,0,'2012-12-05 01:16:52'),(152,4,0,0,0,0,0,'2012-12-05 01:16:57'),(153,2,0,0,0,0,0,'2012-12-05 01:17:02'),(154,4,0,0,0,0,0,'2012-12-05 01:17:06'),(155,4,0,0,0,0,0,'2012-12-05 01:19:21'),(156,2,0,0,0,0,0,'2012-12-05 01:19:27'),(157,4,0,0,0,0,0,'2012-12-05 01:19:33'),(158,4,0,0,0,0,0,'2012-12-05 01:19:39'),(159,4,0,0,0,0,0,'2012-12-05 01:19:44'),(160,4,0,0,0,0,0,'2012-12-05 01:19:48'),(161,2,0,0,0,0,0,'2012-12-05 01:19:53'),(162,4,0,0,0,0,0,'2012-12-05 01:20:00'),(163,4,0,0,0,0,0,'2012-12-05 01:20:11'),(164,4,0,0,0,0,0,'2012-12-05 01:20:17'),(165,6,0,0,0,0,0,'2012-12-05 01:20:52'),(166,4,0,0,0,0,0,'2012-12-05 01:21:04'),(167,4,0,0,0,0,0,'2012-12-05 01:51:39'),(168,4,0,0,0,0,0,'2012-12-05 01:51:46'),(169,4,0,0,0,0,0,'2012-12-05 01:51:51'),(170,4,0,0,0,0,0,'2012-12-05 01:51:56'),(171,4,0,0,0,0,0,'2012-12-05 01:52:01'),(172,6,0,0,0,0,0,'2012-12-05 01:52:07'),(173,4,0,0,0,0,0,'2012-12-05 02:04:03'),(174,4,0,0,0,0,0,'2012-12-05 02:04:13'),(175,4,0,0,0,0,0,'2012-12-05 02:04:21'),(176,4,0,0,0,0,0,'2012-12-05 02:04:27'),(177,4,0,0,0,0,0,'2012-12-05 02:04:33'),(178,4,0,0,0,0,0,'2012-12-05 02:04:39'),(179,4,0,0,0,0,0,'2012-12-05 02:04:44'),(180,4,0,0,0,0,0,'2012-12-05 02:04:50'),(181,4,0,0,0,0,0,'2012-12-05 02:04:56'),(182,4,0,0,0,0,0,'2012-12-05 02:05:02'),(183,4,0,0,0,0,0,'2012-12-05 02:05:13'),(184,4,0,0,0,0,0,'2012-12-05 02:05:42'),(185,4,0,0,0,0,0,'2012-12-05 02:05:49'),(186,4,0,0,0,0,0,'2012-12-05 02:05:55'),(187,4,0,0,0,0,0,'2012-12-05 02:28:25'),(188,6,0,0,0,0,0,'2012-12-05 02:28:31'),(189,4,0,0,0,0,0,'2012-12-05 02:28:38'),(190,4,0,0,0,0,0,'2012-12-05 02:28:48'),(191,4,0,0,0,0,0,'2012-12-05 02:28:54'),(192,4,0,0,0,0,0,'2012-12-05 02:28:59'),(193,2,0,0,0,0,0,'2012-12-05 02:33:02'),(194,4,0,0,0,0,0,'2012-12-05 02:33:15'),(195,4,0,0,0,0,0,'2012-12-05 02:33:27'),(196,4,0,0,0,0,0,'2012-12-05 02:33:47'),(197,4,0,0,0,0,0,'2012-12-05 02:34:07'),(198,4,0,0,0,0,0,'2012-12-05 02:34:16'),(199,4,0,0,0,0,0,'2012-12-05 02:34:40'),(200,2,0,0,0,0,0,'2012-12-05 02:35:09'),(201,4,0,0,0,0,0,'2012-12-05 02:35:50'),(202,4,0,0,0,0,0,'2012-12-05 02:36:23'),(203,2,0,0,0,0,0,'2012-12-05 02:36:55'),(204,4,0,0,0,0,0,'2012-12-05 02:37:20'),(205,4,0,0,0,0,0,'2012-12-05 02:52:23'),(206,2,0,0,0,0,0,'2012-12-05 02:52:45'),(207,4,0,0,0,0,0,'2012-12-05 02:53:31'),(208,4,0,0,0,0,0,'2012-12-05 02:53:49'),(209,2,0,0,0,0,0,'2012-12-05 02:53:55'),(210,4,0,0,0,0,0,'2012-12-05 02:54:00'),(211,4,0,0,0,0,0,'2012-12-05 02:57:11'),(212,4,0,0,0,0,0,'2012-12-05 02:57:16'),(213,4,0,0,0,0,0,'2012-12-05 02:57:22'),(214,4,0,0,0,0,0,'2012-12-05 02:57:29'),(215,4,0,0,0,0,0,'2012-12-05 02:57:35'),(216,4,0,0,0,0,0,'2012-12-05 02:57:40'),(217,4,0,0,0,0,0,'2012-12-05 02:57:46'),(218,2,0,0,0,0,0,'2012-12-05 02:57:51'),(219,4,0,0,0,0,0,'2012-12-05 02:57:58'),(220,2,0,0,0,0,0,'2012-12-05 02:58:03'),(221,4,0,0,0,0,0,'2012-12-05 02:58:09'),(222,4,0,0,0,0,0,'2012-12-05 02:58:14'),(223,4,0,0,0,0,0,'2012-12-05 02:58:21'),(224,4,0,0,0,0,0,'2012-12-05 02:58:27'),(225,4,0,0,0,0,0,'2012-12-05 02:58:32'),(226,4,0,0,0,0,0,'2012-12-05 03:06:14'),(227,4,0,0,0,0,0,'2012-12-05 03:06:31'),(228,2,0,0,0,0,0,'2012-12-05 03:07:16'),(229,5,0,0,0,0,0,'2012-12-05 03:28:27'),(230,5,0,0,0,0,0,'2012-12-05 03:29:05'),(231,4,0,0,0,0,0,'2012-12-05 03:30:13'),(232,4,0,0,0,0,0,'2012-12-05 03:30:36'),(233,4,0,0,0,0,0,'2012-12-05 03:31:00'),(234,4,0,0,0,0,0,'2012-12-05 03:31:31'),(235,2,0,0,0,0,0,'2012-12-05 03:32:10'),(236,2,0,0,0,0,0,'2012-12-05 03:32:37'),(237,4,0,0,0,0,0,'2012-12-05 03:32:51'),(238,4,0,0,0,0,0,'2012-12-05 03:33:04'),(239,4,0,0,0,0,0,'2012-12-05 03:33:23'),(240,4,0,0,0,0,0,'2012-12-05 03:33:46'),(241,4,0,0,0,0,0,'2012-12-05 03:57:06'),(242,4,0,0,0,0,0,'2012-12-05 03:57:11'),(243,4,0,0,0,0,0,'2012-12-05 03:57:16'),(244,4,0,0,0,0,0,'2012-12-05 03:57:21'),(245,4,0,0,0,0,0,'2012-12-05 03:57:26'),(246,4,0,0,0,0,0,'2012-12-05 03:57:31'),(247,4,0,0,0,0,0,'2012-12-05 03:57:36'),(248,4,0,0,0,0,0,'2012-12-05 03:57:41'),(249,4,0,0,0,0,0,'2012-12-05 03:57:46'),(250,2,0,0,0,0,0,'2012-12-05 03:57:51'),(251,4,0,0,0,0,0,'2012-12-05 03:57:56'),(252,4,0,0,0,0,0,'2012-12-05 03:58:01'),(253,4,0,0,0,0,0,'2012-12-05 03:58:06'),(254,4,0,0,0,0,0,'2012-12-05 03:58:11'),(255,4,0,0,0,0,0,'2012-12-05 03:58:16'),(256,4,0,0,0,0,0,'2012-12-05 04:03:44'),(257,4,0,0,0,0,0,'2012-12-05 04:03:54'),(258,4,0,0,0,0,0,'2012-12-05 04:04:05'),(259,4,0,0,0,0,0,'2012-12-05 04:21:55'),(260,4,0,0,0,0,0,'2012-12-05 04:22:02'),(261,4,0,0,0,0,0,'2012-12-05 04:22:08'),(262,4,0,0,0,0,0,'2012-12-05 04:22:15'),(263,4,0,0,0,0,0,'2012-12-05 04:22:24'),(264,4,0,0,0,0,0,'2012-12-05 04:22:36'),(265,4,0,0,0,0,0,'2012-12-05 04:22:42'),(266,4,0,0,0,0,0,'2012-12-05 04:22:48'),(267,4,0,0,0,0,0,'2012-12-05 04:22:54'),(268,4,0,0,0,0,0,'2012-12-05 04:23:00'),(269,4,0,0,0,0,0,'2012-12-05 04:23:06'),(270,4,0,0,0,0,0,'2012-12-05 04:23:11'),(271,4,0,0,0,0,0,'2012-12-05 04:23:18'),(272,4,0,0,0,0,0,'2012-12-05 04:23:26'),(273,4,0,0,0,0,0,'2012-12-05 04:23:34'),(274,2,0,0,0,0,0,'2012-12-05 04:27:01'),(275,4,0,0,0,0,0,'2012-12-05 04:40:18'),(276,4,0,0,0,0,0,'2012-12-05 04:40:47'),(277,3,0,0,0,0,0,'2012-12-05 04:41:25'),(278,2,0,0,0,0,0,'2012-12-05 04:42:30'),(279,4,0,0,0,0,0,'2012-12-05 04:42:42'),(280,14,0,0,0,0,0,'2012-12-05 04:44:46'),(281,4,0,0,0,0,0,'2012-12-05 04:44:56'),(282,2,0,0,0,0,0,'2012-12-05 04:45:08'),(283,4,0,0,0,0,0,'2012-12-05 04:45:31'),(284,4,0,0,0,0,0,'2012-12-05 04:45:48'),(285,4,0,0,0,0,0,'2012-12-05 04:46:00'),(286,4,0,0,0,0,0,'2012-12-05 04:46:18'),(287,4,0,0,0,0,0,'2012-12-05 04:46:23'),(288,4,0,0,0,0,0,'2012-12-05 04:46:28'),(289,4,0,0,0,0,0,'2012-12-05 04:46:33'),(290,5,0,0,0,0,0,'2012-12-05 04:59:21'),(291,4,0,0,0,0,0,'2012-12-05 05:00:28'),(292,4,0,0,0,0,0,'2012-12-05 05:00:35'),(293,4,0,0,0,0,0,'2012-12-05 05:02:55'),(294,4,0,0,0,0,0,'2012-12-05 05:03:01'),(295,4,0,0,0,0,0,'2012-12-05 05:03:06'),(296,4,0,0,0,0,0,'2012-12-05 05:03:11'),(297,4,0,0,0,0,0,'2012-12-05 05:03:17'),(298,2,0,0,0,0,0,'2012-12-05 05:03:25'),(299,4,0,0,0,0,0,'2012-12-05 05:03:30'),(300,6,0,0,0,0,0,'2012-12-05 05:03:37'),(301,4,0,0,0,0,0,'2012-12-05 05:03:42'),(302,4,0,0,0,0,0,'2012-12-05 05:03:48'),(303,4,0,0,0,0,0,'2012-12-05 05:03:56'),(304,4,0,0,0,0,0,'2012-12-05 05:04:07'),(305,4,0,0,0,0,0,'2012-12-05 05:04:19'),(306,4,0,0,0,0,0,'2012-12-05 05:17:57'),(307,4,0,0,0,0,0,'2012-12-05 05:18:02'),(308,2,0,0,0,0,0,'2012-12-05 05:18:11'),(309,2,0,0,0,0,0,'2012-12-05 05:18:16'),(310,2,0,0,0,0,0,'2012-12-05 05:18:21'),(311,2,0,0,0,0,0,'2012-12-05 05:18:27'),(312,2,0,0,0,0,0,'2012-12-05 05:18:28'),(313,4,0,0,0,0,0,'2012-12-05 05:18:34'),(314,4,0,0,0,0,0,'2012-12-05 05:18:35'),(315,4,0,0,0,0,0,'2012-12-05 05:18:40'),(316,4,0,0,0,0,0,'2012-12-05 05:18:41'),(317,4,0,0,0,0,0,'2012-12-05 05:18:50'),(318,4,0,0,0,0,0,'2012-12-05 05:18:57'),(319,2,0,0,0,0,0,'2012-12-05 05:19:11'),(320,4,0,0,0,0,0,'2012-12-05 05:19:18'),(321,4,0,0,0,0,0,'2012-12-05 05:23:45'),(322,4,0,0,0,0,0,'2012-12-05 05:24:24'),(323,2,0,0,0,0,0,'2012-12-05 05:24:29'),(324,4,0,0,0,0,0,'2012-12-05 05:24:34'),(325,4,0,0,0,0,0,'2012-12-05 05:24:39'),(326,4,0,0,0,0,0,'2012-12-05 05:24:44'),(327,4,0,0,0,0,0,'2012-12-05 05:24:49'),(328,2,0,0,0,0,0,'2012-12-05 05:24:54'),(329,4,0,0,0,0,0,'2012-12-05 05:24:59'),(330,4,0,0,0,0,0,'2012-12-05 05:25:04'),(331,4,0,0,0,0,0,'2012-12-05 05:25:09'),(332,4,0,0,0,0,0,'2012-12-05 05:25:14'),(333,4,0,0,0,0,0,'2012-12-05 05:25:19'),(334,2,0,0,0,0,0,'2012-12-05 05:25:24'),(335,4,0,0,0,0,0,'2012-12-05 05:25:29'),(336,4,0,0,0,0,0,'2012-12-05 05:35:59'),(337,6,0,0,0,0,0,'2012-12-05 05:36:04'),(338,8,0,0,0,0,0,'2012-12-05 05:36:08'),(339,4,0,0,0,0,0,'2012-12-05 05:53:20'),(340,4,0,0,0,0,0,'2012-12-05 05:53:26'),(341,6,0,0,0,0,0,'2012-12-05 05:53:31'),(342,2,0,0,0,0,0,'2012-12-05 05:54:27'),(343,4,0,0,0,0,0,'2012-12-05 05:54:32'),(344,4,0,0,0,0,0,'2012-12-05 05:54:41'),(345,2,0,0,0,0,0,'2012-12-05 06:04:41'),(346,4,0,0,0,0,0,'2012-12-05 06:04:47'),(347,2,0,0,0,0,0,'2012-12-05 06:04:52'),(348,4,0,0,0,0,0,'2012-12-05 06:04:58'),(349,4,0,0,0,0,0,'2012-12-05 06:05:04'),(350,4,0,0,0,0,0,'2012-12-05 06:05:26'),(351,4,0,0,0,0,0,'2012-12-05 06:05:56'),(352,4,0,0,0,0,0,'2012-12-05 06:06:04'),(353,4,0,0,0,0,0,'2012-12-05 06:06:11'),(354,2,0,0,0,0,0,'2012-12-05 06:06:16'),(355,4,0,0,0,0,0,'2012-12-05 06:06:21'),(356,4,0,0,0,0,0,'2012-12-05 06:06:26'),(357,4,0,0,0,0,0,'2012-12-05 06:06:34'),(358,4,0,0,0,0,0,'2012-12-05 06:06:40'),(359,4,0,0,0,0,0,'2012-12-05 06:06:45'),(360,4,0,0,0,0,0,'2012-12-05 06:23:48'),(361,4,0,0,0,0,0,'2012-12-05 06:24:10'),(362,4,0,0,0,0,0,'2012-12-05 06:24:32'),(363,2,0,0,0,0,0,'2012-12-05 06:28:12'),(364,4,0,0,0,0,0,'2012-12-05 06:28:17'),(365,4,0,0,0,0,0,'2012-12-05 06:28:24'),(366,6,0,0,0,0,0,'2012-12-05 07:10:19'),(367,4,0,0,0,0,0,'2012-12-05 07:10:24'),(368,2,0,0,0,0,0,'2012-12-05 07:10:29'),(369,4,0,0,0,0,0,'2012-12-05 07:24:20'),(370,5,0,0,0,0,0,'2012-12-05 07:24:25'),(371,5,0,0,0,0,0,'2012-12-05 07:24:29'),(372,4,0,0,0,0,0,'2012-12-05 07:24:34'),(373,4,0,0,0,0,0,'2012-12-05 07:24:38'),(374,4,0,0,0,0,0,'2012-12-05 07:24:42'),(375,5,0,0,0,0,0,'2012-12-05 07:24:46'),(376,5,0,0,0,0,0,'2012-12-05 07:24:50'),(377,4,0,0,0,0,0,'2012-12-05 07:24:56'),(378,5,0,0,0,0,0,'2012-12-05 07:25:00'),(379,7,0,0,0,0,0,'2012-12-05 07:25:04'),(380,4,0,0,0,0,0,'2012-12-05 07:25:08'),(381,4,0,0,0,0,0,'2012-12-05 07:25:13'),(382,5,0,0,0,0,0,'2012-12-05 07:25:17'),(383,4,0,0,0,0,0,'2012-12-05 07:25:22'),(384,4,0,0,0,0,0,'2012-12-05 07:39:37'),(385,4,0,0,0,0,0,'2012-12-05 07:39:44'),(386,4,0,0,0,0,0,'2012-12-05 07:39:57'),(387,6,0,0,0,0,0,'2012-12-05 08:24:08'),(388,4,0,0,0,0,0,'2012-12-05 08:24:16'),(389,4,0,0,0,0,0,'2012-12-05 08:24:25'),(390,2,0,0,0,0,0,'2012-12-05 08:26:14'),(391,4,0,0,0,0,0,'2012-12-05 08:26:18'),(392,4,0,0,0,0,0,'2012-12-05 08:26:23'),(393,4,0,0,0,0,0,'2012-12-05 08:26:27'),(394,2,0,0,0,0,0,'2012-12-05 08:26:38'),(395,2,0,0,0,0,0,'2012-12-05 08:26:42'),(396,2,0,0,0,0,0,'2012-12-05 08:26:54'),(397,4,0,0,0,0,0,'2012-12-05 08:26:58'),(398,4,0,0,0,0,0,'2012-12-05 08:27:03'),(399,4,0,0,0,0,0,'2012-12-05 08:27:06'),(400,2,0,0,0,0,0,'2012-12-05 08:27:13'),(401,4,0,0,0,0,0,'2012-12-05 08:27:16'),(402,2,0,0,0,0,0,'2012-12-05 08:27:20'),(403,2,0,0,0,0,0,'2012-12-05 08:27:26'),(404,4,0,0,0,0,0,'2012-12-05 08:27:30'),(405,4,0,0,0,0,0,'2012-12-05 08:29:37'),(406,4,0,0,0,0,0,'2012-12-05 08:29:48'),(407,4,0,0,0,0,0,'2012-12-05 08:29:57'),(408,4,0,0,0,0,0,'2012-12-05 08:44:32'),(409,4,0,0,0,0,0,'2012-12-05 08:44:39'),(410,6,0,0,0,0,0,'2012-12-05 08:45:29'),(411,4,0,0,0,0,0,'2012-12-05 09:18:14'),(412,4,0,0,0,0,0,'2012-12-05 09:18:28'),(413,4,0,0,0,0,0,'2012-12-05 09:18:38'),(414,4,0,0,0,0,0,'2012-12-05 09:21:05'),(415,4,0,0,0,0,0,'2012-12-05 09:21:11'),(416,2,0,0,0,0,0,'2012-12-05 09:21:15'),(417,2,0,0,0,0,0,'2012-12-05 09:28:27'),(418,4,0,0,0,0,0,'2012-12-05 09:28:32'),(419,2,0,0,0,0,0,'2012-12-05 09:28:44'),(420,4,0,0,0,0,0,'2012-12-05 09:28:54'),(421,4,0,0,0,0,0,'2012-12-05 09:29:04'),(422,4,0,0,0,0,0,'2012-12-05 09:29:16'),(423,4,0,0,0,0,0,'2012-12-05 09:29:29'),(424,4,0,0,0,0,0,'2012-12-05 09:29:42'),(425,4,0,0,0,0,0,'2012-12-05 09:29:54'),(426,4,0,0,0,0,0,'2012-12-05 09:30:00'),(427,4,0,0,0,0,0,'2012-12-05 09:30:06'),(428,4,0,0,0,0,0,'2012-12-05 09:30:12'),(429,4,0,0,0,0,0,'2012-12-05 09:30:21'),(430,2,0,0,0,0,0,'2012-12-05 09:30:29'),(431,4,0,0,0,0,0,'2012-12-05 09:30:36'),(432,4,0,0,0,0,0,'2012-12-05 09:42:06'),(433,4,0,0,0,0,0,'2012-12-05 09:42:20'),(434,4,0,0,0,0,0,'2012-12-05 09:42:28'),(435,0,0,0,0,0,0,'2012-12-05 10:03:43'),(436,4,0,0,0,0,0,'2012-12-05 10:16:28'),(437,2,0,0,0,0,0,'2012-12-05 10:16:40'),(438,2,0,0,0,0,0,'2012-12-05 10:16:48'),(439,4,0,0,0,0,0,'2012-12-05 10:18:02'),(440,6,0,0,0,0,0,'2012-12-05 10:18:08'),(441,4,0,0,0,0,0,'2012-12-05 10:18:16'),(442,4,0,0,0,0,0,'2012-12-05 10:32:53'),(443,2,0,0,0,0,0,'2012-12-05 10:34:00'),(444,2,0,0,0,0,0,'2012-12-05 10:34:45'),(445,4,0,0,0,0,0,'2012-12-05 10:35:06'),(446,4,0,0,0,0,0,'2012-12-05 10:35:22'),(447,5,0,0,0,0,0,'2012-12-05 10:35:41'),(448,6,0,0,0,0,0,'2012-12-05 10:35:53'),(449,2,0,0,0,0,0,'2012-12-05 10:36:00'),(450,4,0,0,0,0,0,'2012-12-05 10:36:06'),(451,4,0,0,0,0,0,'2012-12-05 10:36:11'),(452,2,0,0,0,0,0,'2012-12-05 10:36:17'),(453,4,0,0,0,0,0,'2012-12-05 10:36:22'),(454,4,0,0,0,0,0,'2012-12-05 10:36:31'),(455,4,0,0,0,0,0,'2012-12-05 10:36:36'),(456,4,0,0,0,0,0,'2012-12-05 10:36:43'),(457,2,0,0,0,0,0,'2012-12-05 10:52:32'),(458,4,0,0,0,0,0,'2012-12-05 10:52:47'),(459,2,0,0,0,0,0,'2012-12-05 10:53:12'),(460,4,0,0,0,0,0,'2012-12-05 10:58:37'),(461,2,0,0,0,0,0,'2012-12-05 10:58:47'),(462,4,0,0,0,0,0,'2012-12-05 10:59:00'),(463,4,0,0,0,0,0,'2012-12-05 11:28:06'),(464,2,0,0,0,0,0,'2012-12-05 11:28:16'),(465,2,0,0,0,0,0,'2012-12-05 11:28:20'),(466,6,0,0,0,0,0,'2012-12-05 11:28:32'),(467,4,0,0,0,0,0,'2012-12-05 11:28:46'),(468,6,0,0,0,0,0,'2012-12-05 11:29:12'),(469,4,0,0,0,0,0,'2012-12-05 11:29:58'),(470,4,0,0,0,0,0,'2012-12-05 11:42:09'),(471,4,0,0,0,0,0,'2012-12-05 11:42:15'),(472,6,0,0,0,0,0,'2012-12-05 11:42:20'),(473,4,0,0,0,0,0,'2012-12-05 11:52:34'),(474,4,0,0,0,0,0,'2012-12-05 11:52:55'),(475,2,0,0,0,0,0,'2012-12-05 11:53:29'),(476,6,0,0,0,0,0,'2012-12-05 12:05:34'),(477,4,0,0,0,0,0,'2012-12-05 12:05:55'),(478,4,0,0,0,0,0,'2012-12-05 12:06:34'),(479,2,0,0,0,0,0,'2012-12-05 12:42:37'),(480,5,0,0,0,0,0,'2012-12-05 12:42:56'),(481,4,0,0,0,0,0,'2012-12-05 12:43:07'),(482,4,0,0,0,0,0,'2012-12-05 12:52:57'),(483,4,0,0,0,0,0,'2012-12-05 12:53:01'),(484,6,0,0,0,0,0,'2012-12-05 12:53:06'),(485,4,0,0,0,0,0,'2012-12-05 13:45:59'),(486,4,0,0,0,0,0,'2012-12-05 13:46:07'),(487,4,0,0,0,0,0,'2012-12-05 13:46:21'),(488,4,0,0,0,0,0,'2012-12-05 14:54:10'),(489,5,0,0,0,0,0,'2012-12-05 14:54:25'),(490,4,0,0,0,0,0,'2012-12-05 14:54:49'),(491,6,0,0,0,0,0,'2012-12-05 14:56:36'),(492,12,0,0,0,0,0,'2012-12-05 14:56:46'),(493,4,0,0,0,0,0,'2012-12-05 14:57:01'),(494,4,0,0,0,0,0,'2012-12-05 16:40:41'),(495,4,0,0,0,0,0,'2012-12-05 16:41:09'),(496,2,0,0,0,0,0,'2012-12-05 16:41:33'),(497,2,0,0,0,0,0,'2012-12-05 18:25:15'),(498,4,0,0,0,0,0,'2012-12-05 18:25:21'),(499,2,0,0,0,0,0,'2012-12-05 18:25:27'),(500,4,0,0,0,0,0,'2012-12-05 18:25:36'),(501,4,0,0,0,0,0,'2012-12-05 18:25:48'),(502,6,0,0,0,0,0,'2012-12-05 19:08:32'),(503,4,0,0,0,0,0,'2012-12-05 19:09:29'),(504,6,0,0,0,0,0,'2012-12-05 19:09:47'),(505,4,0,0,0,0,0,'2012-12-05 20:10:16'),(506,4,0,0,0,0,0,'2012-12-05 20:10:23'),(507,2,0,0,0,0,0,'2012-12-05 20:10:42'),(508,4,0,0,0,0,0,'2012-12-05 20:10:54'),(509,6,0,0,0,0,0,'2012-12-05 20:11:06'),(510,5,0,0,0,0,0,'2012-12-05 20:12:10'),(511,5,0,0,0,0,0,'2012-12-05 20:14:41'),(512,4,0,0,0,0,0,'2012-12-05 20:16:17'),(513,4,0,0,0,0,0,'2012-12-05 20:16:58'),(514,6,0,0,0,0,0,'2012-12-05 20:17:29'),(515,5,0,0,0,0,0,'2012-12-05 20:18:00'),(516,4,0,0,0,0,0,'2012-12-05 21:08:43'),(517,2,0,0,0,0,0,'2012-12-05 21:08:49'),(518,4,0,0,0,0,0,'2012-12-05 21:08:54'),(519,4,0,0,0,0,0,'2012-12-05 21:09:00'),(520,4,0,0,0,0,0,'2012-12-05 21:09:09'),(521,4,0,0,0,0,0,'2012-12-05 21:09:17'),(522,2,0,0,0,0,0,'2012-12-05 21:09:22'),(523,4,0,0,0,0,0,'2012-12-05 21:09:32'),(524,4,0,0,0,0,0,'2012-12-06 15:16:28'),(525,6,0,0,0,0,0,'2012-12-06 15:17:10'),(526,4,0,0,0,0,0,'2012-12-06 15:18:56'),(527,4,0,0,0,0,0,'2012-12-06 15:24:07'),(528,4,0,0,0,0,0,'2012-12-06 15:24:26'),(529,4,0,0,0,0,0,'2012-12-06 15:25:07'),(530,4,0,0,0,0,0,'2012-12-06 15:44:00'),(531,4,0,0,0,0,0,'2012-12-06 15:44:36'),(532,2,0,0,0,0,0,'2012-12-06 16:26:39'),(533,4,0,0,0,0,0,'2012-12-06 16:27:07'),(534,4,0,0,0,0,0,'2012-12-06 16:27:30'),(535,5,0,0,0,0,0,'2012-12-06 16:39:39'),(536,4,0,0,0,0,0,'2012-12-06 16:40:46'),(537,2,0,0,0,0,0,'2012-12-06 17:31:32'),(538,4,0,0,0,0,0,'2012-12-06 17:32:01'),(539,2,0,0,0,0,0,'2012-12-06 18:30:21'),(540,4,0,0,0,0,0,'2012-12-06 18:30:46'),(541,3,0,0,0,0,0,'2012-12-06 20:47:33'),(542,0,0,0,0,0,0,'2012-12-06 21:58:44'),(543,0,0,0,0,0,0,'2012-12-06 21:59:02'),(544,0,0,0,0,0,0,'2012-12-06 22:00:48'),(545,0,0,0,0,0,0,'2012-12-06 22:01:25'),(546,0,0,0,0,0,0,'2012-12-06 22:27:03'),(547,0,0,0,0,0,0,'2012-12-06 22:27:10'),(548,0,0,0,0,0,0,'2012-12-06 22:27:24'),(549,0,0,0,0,0,0,'2012-12-06 22:27:30'),(550,0,0,0,0,0,0,'2012-12-06 22:27:36'),(551,0,0,0,0,0,0,'2012-12-06 22:27:43'),(552,0,0,0,0,0,0,'2012-12-06 22:27:50'),(553,0,0,0,0,0,0,'2012-12-06 22:27:56'),(554,0,0,0,0,0,0,'2012-12-06 22:28:01'),(555,0,0,0,0,0,0,'2012-12-06 22:28:06'),(556,0,0,0,0,0,0,'2012-12-06 22:28:15'),(557,0,0,0,0,0,0,'2012-12-06 22:28:20'),(558,0,0,0,0,0,0,'2012-12-06 22:28:30'),(559,0,0,0,0,0,0,'2012-12-06 22:28:35'),(560,0,0,0,0,0,0,'2012-12-06 22:28:45'),(561,0,0,0,0,0,0,'2012-12-06 22:47:39'),(562,0,0,0,0,0,0,'2012-12-06 22:47:48'),(563,0,0,0,0,0,0,'2012-12-06 22:47:54'),(564,0,0,0,0,0,0,'2012-12-06 22:48:00'),(565,0,0,0,0,0,0,'2012-12-06 22:48:15'),(566,0,0,0,0,0,0,'2012-12-06 22:48:21'),(567,0,0,0,0,0,0,'2012-12-06 22:48:30'),(568,0,0,0,0,0,0,'2012-12-06 22:48:37'),(569,0,0,0,0,0,0,'2012-12-06 22:48:46'),(570,4,0,0,0,0,0,'2012-12-06 22:49:00'),(571,0,0,0,0,0,0,'2012-12-06 22:55:09'),(572,0,0,0,0,0,0,'2012-12-06 22:55:18'),(573,0,0,0,0,0,0,'2012-12-06 22:55:31'),(574,0,0,0,0,0,0,'2012-12-06 22:55:41'),(575,0,0,0,0,0,0,'2012-12-06 22:56:20'),(576,0,0,0,0,0,0,'2012-12-06 22:56:26'),(577,0,0,0,0,0,0,'2012-12-06 22:56:33'),(578,0,0,0,0,0,0,'2012-12-06 22:56:42'),(579,0,0,0,0,0,0,'2012-12-06 22:56:51'),(580,0,0,0,0,0,0,'2012-12-06 22:57:00'),(581,0,0,0,0,0,0,'2012-12-06 22:57:13'),(582,0,0,0,0,0,0,'2012-12-06 22:57:29'),(583,0,0,0,0,0,0,'2012-12-06 22:57:43'),(584,0,0,0,0,0,0,'2012-12-06 22:57:54'),(585,0,0,0,0,0,0,'2012-12-06 22:58:07'),(586,3,0,0,0,0,0,'2012-12-06 23:29:52'),(587,0,0,0,0,0,0,'2012-12-06 23:31:18'),(588,0,0,0,0,0,0,'2012-12-06 23:31:47'),(589,0,0,0,0,0,0,'2012-12-06 23:32:07'),(590,0,0,0,0,0,0,'2012-12-06 23:32:25'),(591,0,0,0,0,0,0,'2012-12-06 23:32:38'),(592,0,0,0,0,0,0,'2012-12-06 23:33:00'),(593,0,0,0,0,0,0,'2012-12-06 23:33:15'),(594,0,0,0,0,0,0,'2012-12-06 23:33:30'),(595,0,0,0,0,0,0,'2012-12-06 23:33:52'),(596,0,0,0,0,0,0,'2012-12-06 23:34:28'),(597,0,0,0,0,0,0,'2012-12-06 23:34:38'),(598,0,0,0,0,0,0,'2012-12-06 23:38:12'),(599,0,0,0,0,0,0,'2012-12-06 23:38:18'),(600,0,0,0,0,0,0,'2012-12-06 23:38:27'),(601,0,0,0,0,0,0,'2012-12-06 23:38:42'),(602,0,0,0,0,0,0,'2012-12-06 23:38:56'),(603,0,0,0,0,0,0,'2012-12-06 23:39:07'),(604,0,0,0,0,0,0,'2012-12-06 23:39:16'),(605,0,0,0,0,0,0,'2012-12-06 23:39:30'),(606,0,0,0,0,0,0,'2012-12-06 23:39:41'),(607,0,0,0,0,0,0,'2012-12-06 23:39:54'),(608,0,0,0,0,0,0,'2012-12-06 23:40:16'),(609,0,0,0,0,0,0,'2012-12-06 23:40:27'),(610,0,0,0,0,0,0,'2012-12-06 23:40:47'),(611,0,0,0,0,0,0,'2012-12-06 23:40:56'),(612,0,0,0,0,0,0,'2012-12-06 23:41:06'),(613,0,0,0,0,0,0,'2012-12-07 00:03:17'),(614,0,0,0,0,0,0,'2012-12-07 00:03:21'),(615,0,0,0,0,0,0,'2012-12-07 00:03:27'),(616,0,0,0,0,0,0,'2012-12-07 00:03:37'),(617,0,0,0,0,0,0,'2012-12-07 00:03:56'),(618,0,0,0,0,0,0,'2012-12-07 00:04:15'),(619,0,0,0,0,0,0,'2012-12-07 00:04:37'),(620,0,0,0,0,0,0,'2012-12-07 00:04:59'),(621,0,0,0,0,0,0,'2012-12-07 00:05:29'),(622,0,0,0,0,0,0,'2012-12-07 00:05:46'),(623,0,0,0,0,0,0,'2012-12-07 00:06:08'),(624,0,0,0,0,0,0,'2012-12-07 00:06:39'),(625,0,0,0,0,0,0,'2012-12-07 00:11:14'),(626,0,0,0,0,0,0,'2012-12-07 00:11:19'),(627,0,0,0,0,0,0,'2012-12-07 00:11:30'),(628,0,0,0,0,0,0,'2012-12-07 00:11:35'),(629,0,0,0,0,0,0,'2012-12-07 00:11:43'),(630,0,0,0,0,0,0,'2012-12-07 00:11:48'),(631,0,0,0,0,0,0,'2012-12-07 00:11:53'),(632,0,0,0,0,0,0,'2012-12-07 00:11:58'),(633,0,0,0,0,0,0,'2012-12-07 00:12:08'),(634,0,0,0,0,0,0,'2012-12-07 00:12:16'),(635,0,0,0,0,0,0,'2012-12-07 00:12:26'),(636,0,0,0,0,0,0,'2012-12-07 00:12:33'),(637,0,0,0,0,0,0,'2012-12-07 00:17:40'),(638,0,0,0,0,0,0,'2012-12-07 00:17:46'),(639,0,0,0,0,0,0,'2012-12-07 00:17:51'),(640,0,0,0,0,0,0,'2012-12-07 00:21:22'),(641,0,0,0,0,0,0,'2012-12-07 00:21:27'),(642,0,0,0,0,0,0,'2012-12-07 00:21:32'),(643,0,0,0,0,0,0,'2012-12-07 00:21:40'),(644,0,0,0,0,0,0,'2012-12-07 00:21:45'),(645,0,0,0,0,0,0,'2012-12-07 00:21:52'),(646,0,0,0,0,0,0,'2012-12-07 00:21:57'),(647,0,0,0,0,0,0,'2012-12-07 00:22:04'),(648,0,0,0,0,0,0,'2012-12-07 00:50:35'),(649,0,0,0,0,0,0,'2012-12-07 00:50:40'),(650,0,0,0,0,0,0,'2012-12-07 00:50:46'),(651,0,0,0,0,0,0,'2012-12-07 00:50:51'),(652,0,0,0,0,0,0,'2012-12-07 00:50:58'),(653,0,0,0,0,0,0,'2012-12-07 00:51:04'),(654,0,0,0,0,0,0,'2012-12-07 00:51:09'),(655,0,0,0,0,0,0,'2012-12-07 00:51:15'),(656,0,0,0,0,0,0,'2012-12-07 00:51:21'),(657,0,0,0,0,0,0,'2012-12-07 00:51:26'),(658,0,0,0,0,0,0,'2012-12-07 00:51:32'),(659,0,0,0,0,0,0,'2012-12-07 00:51:37'),(660,0,0,0,0,0,0,'2012-12-07 01:04:02'),(661,0,0,0,0,0,0,'2012-12-07 01:04:08'),(662,0,0,0,0,0,0,'2012-12-07 01:04:16'),(663,0,0,0,0,0,0,'2012-12-07 01:04:24'),(664,0,0,0,0,0,0,'2012-12-07 01:04:30'),(665,0,0,0,0,0,0,'2012-12-07 01:04:39'),(666,0,0,0,0,0,0,'2012-12-07 01:04:45'),(667,0,0,0,0,0,0,'2012-12-07 01:04:52'),(668,0,0,0,0,0,0,'2012-12-07 01:04:58'),(669,0,0,0,0,0,0,'2012-12-07 01:05:06'),(670,0,0,0,0,0,0,'2012-12-07 01:05:13'),(671,0,0,0,0,0,0,'2012-12-07 01:05:20'),(672,0,0,0,0,0,0,'2012-12-07 01:05:31'),(673,0,0,0,0,0,0,'2012-12-07 01:05:37'),(674,0,0,0,0,0,0,'2012-12-07 01:05:43'),(675,0,0,0,0,0,0,'2012-12-07 01:15:37'),(676,0,0,0,0,0,0,'2012-12-07 01:15:42'),(677,0,0,0,0,0,0,'2012-12-07 01:15:46'),(678,0,0,0,0,0,0,'2012-12-07 01:15:51'),(679,0,0,0,0,0,0,'2012-12-07 01:15:56'),(680,0,0,0,0,0,0,'2012-12-07 01:16:01'),(681,2,0,0,0,0,0,'2012-12-07 01:16:06'),(682,0,0,0,0,0,0,'2012-12-07 01:17:34'),(683,0,0,0,0,0,0,'2012-12-07 01:17:40'),(684,0,0,0,0,0,0,'2012-12-07 01:17:46'),(685,0,0,0,0,0,0,'2012-12-07 01:17:59'),(686,0,0,0,0,0,0,'2012-12-07 01:18:10'),(687,0,0,0,0,0,0,'2012-12-07 01:18:29'),(688,0,0,0,0,0,0,'2012-12-07 01:18:45'),(689,0,0,0,0,0,0,'2012-12-07 01:18:56'),(690,0,0,0,0,0,0,'2012-12-07 01:26:01'),(691,0,0,0,0,0,0,'2012-12-07 01:26:09'),(692,0,0,0,0,0,0,'2012-12-07 01:26:19'),(693,0,0,0,0,0,0,'2012-12-07 02:07:05'),(694,0,0,0,0,0,0,'2012-12-07 02:07:13'),(695,0,0,0,0,0,0,'2012-12-07 02:07:20'),(696,0,0,0,0,0,0,'2012-12-07 02:07:26'),(697,0,0,0,0,0,0,'2012-12-07 02:07:36'),(698,0,0,0,0,0,0,'2012-12-07 02:07:44'),(699,0,0,0,0,0,0,'2012-12-07 02:07:50'),(700,0,0,0,0,0,0,'2012-12-07 02:07:57'),(701,0,0,0,0,0,0,'2012-12-07 02:08:05'),(702,0,0,0,0,0,0,'2012-12-07 02:08:13'),(703,0,0,0,0,0,0,'2012-12-07 02:08:21'),(704,0,0,0,0,0,0,'2012-12-07 02:08:28'),(705,0,0,0,0,0,0,'2012-12-07 02:24:16'),(706,0,0,0,0,0,0,'2012-12-07 02:24:43'),(707,0,0,0,0,0,0,'2012-12-07 02:25:04'),(708,0,0,0,0,0,0,'2012-12-07 02:25:41'),(709,0,0,0,0,0,0,'2012-12-07 02:26:07'),(710,0,0,0,0,0,0,'2012-12-07 02:26:29'),(711,0,0,0,0,0,0,'2012-12-07 02:26:51'),(712,0,0,0,0,0,0,'2012-12-07 02:27:10'),(713,0,0,0,0,0,0,'2012-12-07 02:27:27'),(714,0,0,0,0,0,0,'2012-12-07 02:27:37'),(715,0,0,0,0,0,0,'2012-12-07 02:28:13'),(716,0,0,0,0,0,0,'2012-12-07 02:28:34'),(717,0,0,0,0,0,0,'2012-12-07 02:28:44'),(718,0,0,0,0,0,0,'2012-12-07 02:29:12'),(719,0,0,0,0,0,0,'2012-12-07 02:29:27'),(720,0,0,0,0,0,0,'2012-12-07 02:41:00'),(721,0,0,0,0,0,0,'2012-12-07 02:41:05'),(722,0,0,0,0,0,0,'2012-12-07 02:41:09'),(723,0,0,0,0,0,0,'2012-12-07 02:41:15'),(724,0,0,0,0,0,0,'2012-12-07 02:41:21'),(725,0,0,0,0,0,0,'2012-12-07 02:41:28'),(726,0,0,0,0,0,0,'2012-12-07 02:41:33'),(727,0,0,0,0,0,0,'2012-12-07 02:41:37'),(728,0,0,0,0,0,0,'2012-12-07 02:41:42'),(729,0,0,0,0,0,0,'2012-12-07 02:41:49'),(730,0,0,0,0,0,0,'2012-12-07 02:41:56'),(731,0,0,0,0,0,0,'2012-12-07 02:42:01'),(732,0,0,0,0,0,0,'2012-12-07 02:42:08'),(733,0,0,0,0,0,0,'2012-12-07 02:42:14'),(734,0,0,0,0,0,0,'2012-12-07 02:42:19'),(735,0,0,0,0,0,0,'2012-12-07 02:58:05'),(736,0,0,0,0,0,0,'2012-12-07 02:58:15'),(737,0,0,0,0,0,0,'2012-12-07 02:58:24'),(738,0,0,0,0,0,0,'2012-12-07 03:05:47'),(739,0,0,0,0,0,0,'2012-12-07 03:05:54'),(740,0,0,0,0,0,0,'2012-12-07 03:06:00'),(741,0,0,0,0,0,0,'2012-12-07 03:07:02'),(742,0,0,0,0,0,0,'2012-12-07 03:07:10'),(743,0,0,0,0,0,0,'2012-12-07 03:07:21'),(744,0,0,0,0,0,0,'2012-12-07 03:07:33'),(745,0,0,0,0,0,0,'2012-12-07 03:07:40'),(746,0,0,0,0,0,0,'2012-12-07 03:07:46'),(747,0,0,0,0,0,0,'2012-12-07 03:07:53'),(748,0,0,0,0,0,0,'2012-12-07 03:08:00'),(749,0,0,0,0,0,0,'2012-12-07 03:08:06'),(750,0,0,0,0,0,0,'2012-12-07 03:31:58'),(751,0,0,0,0,0,0,'2012-12-07 03:32:03'),(752,0,0,0,0,0,0,'2012-12-07 03:32:08'),(753,0,0,0,0,0,0,'2012-12-07 03:32:13'),(754,0,0,0,0,0,0,'2012-12-07 03:32:19'),(755,0,0,0,0,0,0,'2012-12-07 03:32:24'),(756,0,0,0,0,0,0,'2012-12-07 03:32:29'),(757,0,0,0,0,0,0,'2012-12-07 03:32:34'),(758,0,0,0,0,0,0,'2012-12-07 03:32:39'),(759,0,0,0,0,0,0,'2012-12-07 03:33:18'),(760,0,0,0,0,0,0,'2012-12-07 03:33:23'),(761,0,0,0,0,0,0,'2012-12-07 03:33:29'),(762,0,0,0,0,0,0,'2012-12-07 03:33:35'),(763,0,0,0,0,0,0,'2012-12-07 03:33:40'),(764,0,0,0,0,0,0,'2012-12-07 03:33:46'),(765,0,0,0,0,0,0,'2012-12-07 03:48:25'),(766,0,0,0,0,0,0,'2012-12-07 03:48:30'),(767,0,0,0,0,0,0,'2012-12-07 03:48:35'),(768,0,0,0,0,0,0,'2012-12-07 03:48:40'),(769,0,0,0,0,0,0,'2012-12-07 03:48:45'),(770,0,0,0,0,0,0,'2012-12-07 03:48:50'),(771,0,0,0,0,0,0,'2012-12-07 03:48:55'),(772,0,0,0,0,0,0,'2012-12-07 03:49:00'),(773,0,0,0,0,0,0,'2012-12-07 03:49:05'),(774,0,0,0,0,0,0,'2012-12-07 03:49:09'),(775,0,0,0,0,0,0,'2012-12-07 03:49:14'),(776,0,0,0,0,0,0,'2012-12-07 03:49:19'),(777,0,0,0,0,0,0,'2012-12-07 03:49:24'),(778,0,0,0,0,0,0,'2012-12-07 03:49:29'),(779,0,0,0,0,0,0,'2012-12-07 03:49:34'),(780,0,0,0,0,0,0,'2012-12-07 03:58:33'),(781,0,0,0,0,0,0,'2012-12-07 03:59:14'),(782,0,0,0,0,0,0,'2012-12-07 03:59:51'),(783,0,0,0,0,0,0,'2012-12-07 03:59:56'),(784,0,0,0,0,0,0,'2012-12-07 04:00:00'),(785,0,0,0,0,0,0,'2012-12-07 04:00:04'),(786,0,0,0,0,0,0,'2012-12-07 04:06:53'),(787,0,0,0,0,0,0,'2012-12-07 04:08:05'),(788,0,0,0,0,0,0,'2012-12-07 04:08:07'),(789,0,0,0,0,0,0,'2012-12-07 04:08:25'),(790,0,0,0,0,0,0,'2012-12-07 04:08:32'),(791,0,0,0,0,0,0,'2012-12-07 04:08:39'),(792,0,0,0,0,0,0,'2012-12-07 04:08:47'),(793,0,0,0,0,0,0,'2012-12-07 04:08:58'),(794,0,0,0,0,0,0,'2012-12-07 04:09:16'),(795,0,0,0,0,0,0,'2012-12-07 04:09:17'),(796,0,0,0,0,0,0,'2012-12-07 04:09:28'),(797,0,0,0,0,0,0,'2012-12-07 04:09:33'),(798,0,0,0,0,0,0,'2012-12-07 04:09:38'),(799,0,0,0,0,0,0,'2012-12-07 04:09:46'),(800,0,0,0,0,0,0,'2012-12-07 04:55:00'),(801,0,0,0,0,0,0,'2012-12-07 04:55:05'),(802,0,0,0,0,0,0,'2012-12-07 04:55:09'),(803,0,0,0,0,0,0,'2012-12-07 04:55:15'),(804,0,0,0,0,0,0,'2012-12-07 04:55:20'),(805,0,0,0,0,0,0,'2012-12-07 04:55:24'),(806,0,0,0,0,0,0,'2012-12-07 04:55:30'),(807,0,0,0,0,0,0,'2012-12-07 04:55:34'),(808,0,0,0,0,0,0,'2012-12-07 04:55:39'),(809,0,0,0,0,0,0,'2012-12-07 04:55:44'),(810,0,0,0,0,0,0,'2012-12-07 04:55:49'),(811,0,0,0,0,0,0,'2012-12-07 04:55:54'),(812,0,0,0,0,0,0,'2012-12-07 04:55:59'),(813,0,0,0,0,0,0,'2012-12-07 04:56:04'),(814,0,0,0,0,0,0,'2012-12-07 04:56:09'),(815,0,0,0,0,0,0,'2012-12-07 05:01:05'),(816,3,0,0,0,0,0,'2012-12-07 05:01:11'),(817,0,0,0,0,0,0,'2012-12-07 05:02:29'),(818,0,0,0,0,0,0,'2012-12-07 05:03:12'),(819,0,0,0,0,0,0,'2012-12-07 05:03:19'),(820,0,0,0,0,0,0,'2012-12-07 05:03:27'),(821,0,0,0,0,0,0,'2012-12-07 05:07:51'),(822,0,0,0,0,0,0,'2012-12-07 05:07:59'),(823,0,0,0,0,0,0,'2012-12-07 05:08:04'),(824,0,0,0,0,0,0,'2012-12-07 05:08:09'),(825,0,0,0,0,0,0,'2012-12-07 05:08:13'),(826,0,0,0,0,0,0,'2012-12-07 05:08:14'),(827,0,0,0,0,0,0,'2012-12-07 05:08:19'),(828,0,0,0,0,0,0,'2012-12-07 05:08:25'),(829,0,0,0,0,0,0,'2012-12-07 05:08:31'),(830,0,0,0,0,0,0,'2012-12-07 05:08:36'),(831,0,0,0,0,0,0,'2012-12-07 05:08:41'),(832,0,0,0,0,0,0,'2012-12-07 05:08:42'),(833,0,0,0,0,0,0,'2012-12-07 05:08:47'),(834,0,0,0,0,0,0,'2012-12-07 05:08:51'),(835,0,0,0,0,0,0,'2012-12-07 05:25:47'),(836,0,0,0,0,0,0,'2012-12-07 05:25:55'),(837,0,0,0,0,0,0,'2012-12-07 05:26:01'),(838,0,0,0,0,0,0,'2012-12-07 06:01:02'),(839,0,0,0,0,0,0,'2012-12-07 06:01:06'),(840,0,0,0,0,0,0,'2012-12-07 06:01:11'),(841,0,0,0,0,0,0,'2012-12-07 06:01:16'),(842,0,0,0,0,0,0,'2012-12-07 06:01:21'),(843,0,0,0,0,0,0,'2012-12-07 06:01:26'),(844,0,0,0,0,0,0,'2012-12-07 06:01:31'),(845,0,0,0,0,0,0,'2012-12-07 06:01:35'),(846,0,0,0,0,0,0,'2012-12-07 06:01:40'),(847,0,0,0,0,0,0,'2012-12-07 06:01:45'),(848,0,0,0,0,0,0,'2012-12-07 06:01:50'),(849,0,0,0,0,0,0,'2012-12-07 06:01:55'),(850,0,0,0,0,0,0,'2012-12-07 06:02:00'),(851,0,0,0,0,0,0,'2012-12-07 06:02:01'),(852,0,0,0,0,0,0,'2012-12-07 06:02:05'),(853,0,0,0,0,0,0,'2012-12-07 06:02:07'),(854,0,0,0,0,0,0,'2012-12-07 06:02:10'),(855,0,0,0,0,0,0,'2012-12-07 06:02:29'),(856,0,0,0,0,0,0,'2012-12-07 06:03:47'),(857,0,0,0,0,0,0,'2012-12-07 06:03:53'),(858,0,0,0,0,0,0,'2012-12-07 06:03:59'),(859,0,0,0,0,0,0,'2012-12-07 06:20:16'),(860,0,0,0,0,0,0,'2012-12-07 06:20:26'),(861,0,0,0,0,0,0,'2012-12-07 06:20:57'),(862,0,0,0,0,0,0,'2012-12-07 06:22:59'),(863,0,0,0,0,0,0,'2012-12-07 06:23:04'),(864,0,0,0,0,0,0,'2012-12-07 06:23:09'),(865,0,0,0,0,0,0,'2012-12-07 07:04:06'),(866,0,0,0,0,0,0,'2012-12-07 07:04:11'),(867,0,0,0,0,0,0,'2012-12-07 07:04:16'),(868,0,0,0,0,0,0,'2012-12-07 07:22:10'),(869,0,0,0,0,0,0,'2012-12-07 07:22:43'),(870,0,0,0,0,0,0,'2012-12-07 07:23:04'),(871,0,0,0,0,0,0,'2012-12-07 07:45:23'),(872,0,0,0,0,0,0,'2012-12-07 07:45:28'),(873,0,0,0,0,0,0,'2012-12-07 07:45:33'),(874,0,0,0,0,0,0,'2012-12-07 07:46:30'),(875,0,0,0,0,0,0,'2012-12-07 07:46:45'),(876,0,0,0,0,0,0,'2012-12-07 07:47:14'),(877,0,0,0,0,0,0,'2012-12-07 07:47:59'),(878,0,0,0,0,0,0,'2012-12-07 07:48:04'),(879,0,0,0,0,0,0,'2012-12-07 07:48:27'),(880,0,0,0,0,0,0,'2012-12-07 07:48:57'),(881,0,0,0,0,0,0,'2012-12-07 07:49:17'),(882,0,0,0,0,0,0,'2012-12-07 08:01:18'),(883,0,0,0,0,0,0,'2012-12-07 08:01:26'),(884,0,0,0,0,0,0,'2012-12-07 08:01:33'),(885,0,0,0,0,0,0,'2012-12-07 08:27:59'),(886,0,0,0,0,0,0,'2012-12-07 08:28:12'),(887,0,0,0,0,0,0,'2012-12-07 08:28:22'),(888,0,0,0,0,0,0,'2012-12-07 08:28:38'),(889,0,0,0,0,0,0,'2012-12-07 08:28:53'),(890,0,0,0,0,0,0,'2012-12-07 08:29:02'),(891,0,0,0,0,0,0,'2012-12-07 08:29:08'),(892,0,0,0,0,0,0,'2012-12-07 08:29:15'),(893,0,0,0,0,0,0,'2012-12-07 08:54:40'),(894,0,0,0,0,0,0,'2012-12-07 08:54:46'),(895,0,0,0,0,0,0,'2012-12-07 08:54:51'),(896,0,0,0,0,0,0,'2012-12-07 08:54:55'),(897,0,0,0,0,0,0,'2012-12-07 08:55:01'),(898,0,0,0,0,0,0,'2012-12-07 08:55:10'),(899,0,0,0,0,0,0,'2012-12-07 08:55:15'),(900,0,0,0,0,0,0,'2012-12-07 08:55:19'),(901,0,0,0,0,0,0,'2012-12-07 09:03:14'),(902,0,0,0,0,0,0,'2012-12-07 09:03:21'),(903,0,0,0,0,0,0,'2012-12-07 09:03:27'),(904,0,0,0,0,0,0,'2012-12-07 09:04:46'),(905,0,0,0,0,0,0,'2012-12-07 09:04:53'),(906,0,0,0,0,0,0,'2012-12-07 09:05:03'),(907,0,0,0,0,0,0,'2012-12-07 09:28:42'),(908,0,0,0,0,0,0,'2012-12-07 09:29:30'),(909,0,0,0,0,0,0,'2012-12-07 09:30:03'),(910,0,0,0,0,0,0,'2012-12-07 10:09:49'),(911,0,0,0,0,0,0,'2012-12-07 10:09:55'),(912,0,0,0,0,0,0,'2012-12-07 10:10:12'),(913,0,0,0,0,0,0,'2012-12-07 10:13:22'),(914,0,0,0,0,0,0,'2012-12-07 10:13:31'),(915,0,0,0,0,0,0,'2012-12-07 10:13:49'),(916,0,0,0,0,0,0,'2012-12-07 10:13:57'),(917,0,0,0,0,0,0,'2012-12-07 10:14:06'),(918,0,0,0,0,0,0,'2012-12-07 10:14:14'),(919,0,0,0,0,0,0,'2012-12-07 10:14:58'),(920,0,0,0,0,0,0,'2012-12-07 10:15:06'),(921,0,0,0,0,0,0,'2012-12-07 10:15:24'),(922,0,0,0,0,0,0,'2012-12-07 10:36:51'),(923,0,0,0,0,0,0,'2012-12-07 10:37:13'),(924,0,0,0,0,0,0,'2012-12-07 10:38:30'),(925,0,0,0,0,0,0,'2012-12-07 10:38:31'),(926,2,0,0,0,0,0,'2012-12-07 10:38:42'),(927,0,0,0,0,0,0,'2012-12-07 10:52:34'),(928,0,0,0,0,0,0,'2012-12-07 10:53:17'),(929,0,0,0,0,0,0,'2012-12-07 10:53:23'),(930,0,0,0,0,0,0,'2012-12-07 10:53:27'),(931,0,0,0,0,0,0,'2012-12-07 10:53:31'),(932,0,0,0,0,0,0,'2012-12-07 10:54:28'),(933,0,0,0,0,0,0,'2012-12-07 10:54:41'),(934,0,0,0,0,0,0,'2012-12-07 10:54:56'),(935,0,0,0,0,0,0,'2012-12-07 11:03:42'),(936,0,0,0,0,0,0,'2012-12-07 11:04:06'),(937,0,0,0,0,0,0,'2012-12-07 11:04:18'),(938,0,0,0,0,0,0,'2012-12-07 11:16:37'),(939,0,0,0,0,0,0,'2012-12-07 11:16:47'),(940,0,0,0,0,0,0,'2012-12-07 11:16:55'),(941,0,0,0,0,0,0,'2012-12-07 11:42:49'),(942,0,0,0,0,0,0,'2012-12-07 11:42:54'),(943,0,0,0,0,0,0,'2012-12-07 11:42:59'),(944,0,0,0,0,0,0,'2012-12-07 11:46:39'),(945,0,0,0,0,0,0,'2012-12-07 11:46:51'),(946,0,0,0,0,0,0,'2012-12-07 11:47:01'),(947,0,0,0,0,0,0,'2012-12-07 11:56:58'),(948,0,0,0,0,0,0,'2012-12-07 11:57:04'),(949,0,0,0,0,0,0,'2012-12-07 11:57:17'),(950,0,0,0,0,0,0,'2012-12-07 11:57:26'),(951,0,0,0,0,0,0,'2012-12-07 11:57:32'),(952,0,0,0,0,0,0,'2012-12-07 11:57:40'),(953,0,0,0,0,0,0,'2012-12-07 11:57:50'),(954,0,0,0,0,0,0,'2012-12-07 11:58:10'),(955,0,0,0,0,0,0,'2012-12-07 12:04:47'),(956,0,0,0,0,0,0,'2012-12-07 12:05:02'),(957,0,0,0,0,0,0,'2012-12-07 12:05:10'),(958,0,0,0,0,0,0,'2012-12-07 12:28:17'),(959,0,0,0,0,0,0,'2012-12-07 12:28:26'),(960,0,0,0,0,0,0,'2012-12-07 12:28:35'),(961,0,0,0,0,0,0,'2012-12-07 12:34:43'),(962,0,0,0,0,0,0,'2012-12-07 12:34:53'),(963,0,0,0,0,0,0,'2012-12-07 12:35:03'),(964,0,0,0,0,0,0,'2012-12-07 12:35:17'),(965,0,0,0,0,0,0,'2012-12-07 12:35:23'),(966,0,0,0,0,0,0,'2012-12-07 12:35:28'),(967,0,0,0,0,0,0,'2012-12-07 12:35:33'),(968,0,0,0,0,0,0,'2012-12-07 12:35:37'),(969,0,0,0,0,0,0,'2012-12-07 12:41:44'),(970,0,0,0,0,0,0,'2012-12-07 12:42:15'),(971,0,0,0,0,0,0,'2012-12-07 12:42:24'),(972,0,0,0,0,0,0,'2012-12-07 12:48:02'),(973,0,0,0,0,0,0,'2012-12-07 12:48:08'),(974,0,0,0,0,0,0,'2012-12-07 12:48:14'),(975,3,0,0,0,0,0,'2012-12-07 13:06:41'),(976,0,0,0,0,0,0,'2012-12-07 13:10:28'),(977,0,0,0,0,0,0,'2012-12-07 13:10:34'),(978,0,0,0,0,0,0,'2012-12-07 13:10:47'),(979,0,0,0,0,0,0,'2012-12-07 13:34:03'),(980,0,0,0,0,0,0,'2012-12-07 13:34:15'),(981,0,0,0,0,0,0,'2012-12-07 13:34:22'),(982,0,0,0,0,0,0,'2012-12-07 13:52:08'),(983,0,0,0,0,0,0,'2012-12-07 13:52:19'),(984,0,0,0,0,0,0,'2012-12-07 13:52:28'),(985,0,0,0,0,0,0,'2012-12-07 13:52:51'),(986,0,0,0,0,0,0,'2012-12-07 13:53:03'),(987,0,0,0,0,0,0,'2012-12-07 13:53:12'),(988,0,0,0,0,0,0,'2012-12-07 13:56:37'),(989,0,0,0,0,0,0,'2012-12-07 13:57:06'),(990,0,0,0,0,0,0,'2012-12-07 13:57:18'),(991,0,0,0,0,0,0,'2012-12-07 14:27:29'),(992,0,0,0,0,0,0,'2012-12-07 14:28:14'),(993,0,0,0,0,0,0,'2012-12-07 14:28:39'),(994,0,0,0,0,0,0,'2012-12-07 14:59:03'),(995,0,0,0,0,0,0,'2012-12-07 14:59:13'),(996,0,0,0,0,0,0,'2012-12-07 14:59:28'),(997,0,0,0,0,0,0,'2012-12-07 15:04:36'),(998,0,0,0,0,0,0,'2012-12-07 15:04:43'),(999,0,0,0,0,0,0,'2012-12-07 15:05:06'),(1000,0,0,0,0,0,0,'2012-12-07 15:10:30'),(1001,0,0,0,0,0,0,'2012-12-07 15:10:39'),(1002,0,0,0,0,0,0,'2012-12-07 15:10:49'),(1003,0,0,0,0,0,0,'2012-12-07 15:19:11'),(1004,0,0,0,0,0,0,'2012-12-07 15:19:27'),(1005,0,0,0,0,0,0,'2012-12-07 15:19:34'),(1006,0,0,0,0,0,0,'2012-12-07 16:21:26'),(1007,0,0,0,0,0,0,'2012-12-07 16:21:51'),(1008,0,0,0,0,0,0,'2012-12-07 16:22:30'),(1009,2,0,0,0,0,0,'2012-12-07 16:26:37'),(1010,0,0,0,0,0,0,'2012-12-07 16:27:37'),(1011,0,0,0,0,0,0,'2012-12-07 16:27:48'),(1012,0,0,0,0,0,0,'2012-12-07 16:27:58'),(1013,0,0,0,0,0,0,'2012-12-07 16:28:08'),(1014,0,0,0,0,0,0,'2012-12-07 16:28:50'),(1015,0,0,0,0,0,0,'2012-12-07 16:29:07'),(1016,0,0,0,0,0,0,'2012-12-07 17:18:17'),(1017,0,0,0,0,0,0,'2012-12-07 17:18:28'),(1018,0,0,0,0,0,0,'2012-12-07 17:18:38'),(1019,0,0,0,0,0,0,'2012-12-07 17:18:50'),(1020,0,0,0,0,0,0,'2012-12-07 17:19:01'),(1021,0,0,0,0,0,0,'2012-12-07 17:19:13'),(1022,0,0,0,0,0,0,'2012-12-07 17:19:24'),(1023,0,0,0,0,0,0,'2012-12-07 17:19:36'),(1024,0,0,0,0,0,0,'2012-12-07 17:19:47'),(1025,0,0,0,0,0,0,'2012-12-07 17:19:58'),(1026,0,0,0,0,0,0,'2012-12-07 17:20:09'),(1027,0,0,0,0,0,0,'2012-12-07 17:20:20'),(1028,0,0,0,0,0,0,'2012-12-07 17:20:32'),(1029,0,0,0,0,0,0,'2012-12-07 17:20:43'),(1030,0,0,0,0,0,0,'2012-12-07 17:20:56'),(1031,4,0,0,0,0,0,'2012-12-07 17:38:25'),(1032,0,0,0,0,0,0,'2012-12-07 17:39:48'),(1033,0,0,0,0,0,0,'2012-12-07 17:39:55'),(1034,0,0,0,0,0,0,'2012-12-07 18:07:01'),(1035,4,0,0,0,0,0,'2012-12-07 18:07:30'),(1036,4,0,0,0,0,0,'2012-12-07 18:41:29'),(1037,0,0,0,0,0,0,'2012-12-07 18:42:57'),(1038,0,0,0,0,0,0,'2012-12-07 18:43:05'),(1039,0,0,0,0,0,0,'2012-12-07 18:54:26'),(1040,0,0,0,0,0,0,'2012-12-07 21:24:56'),(1041,0,0,0,0,0,0,'2012-12-07 21:25:06'),(1042,0,0,0,0,0,0,'2012-12-07 21:25:23'),(1043,0,0,0,0,0,0,'2012-12-07 22:29:39'),(1044,0,0,0,0,0,0,'2012-12-07 22:29:57'),(1045,0,0,0,0,0,0,'2012-12-07 22:30:12'),(1046,4,0,0,0,0,0,'2012-12-07 22:30:13'),(1047,0,0,0,0,0,0,'2012-12-07 23:07:25'),(1048,0,0,0,0,0,0,'2012-12-07 23:07:31'),(1049,0,0,0,0,0,0,'2012-12-07 23:07:38'),(1050,0,0,0,0,0,0,'2012-12-07 23:07:44'),(1051,0,0,0,0,0,0,'2012-12-07 23:07:50'),(1052,0,0,0,0,0,0,'2012-12-07 23:07:56'),(1053,0,0,0,0,0,0,'2012-12-07 23:08:02'),(1054,0,0,0,0,0,0,'2012-12-07 23:08:08'),(1055,0,0,0,0,0,0,'2012-12-07 23:08:14'),(1056,0,0,0,0,0,0,'2012-12-07 23:08:20'),(1057,0,0,0,0,0,0,'2012-12-07 23:30:38'),(1058,0,0,0,0,0,0,'2012-12-07 23:30:47'),(1059,0,0,0,0,0,0,'2012-12-07 23:32:01'),(1060,0,0,0,0,0,0,'2012-12-07 23:38:11'),(1061,0,0,0,0,0,0,'2012-12-08 00:27:54'),(1062,0,0,0,0,0,0,'2012-12-08 00:28:17'),(1063,0,0,0,0,0,0,'2012-12-08 01:06:48'),(1064,0,0,0,0,0,0,'2012-12-08 01:07:16'),(1065,0,0,0,0,0,0,'2012-12-08 01:07:24'),(1066,2,0,0,0,0,0,'2012-12-08 01:08:22'),(1067,0,0,0,0,0,0,'2012-12-08 01:09:42'),(1068,0,0,0,0,0,0,'2012-12-08 01:10:00'),(1069,0,0,0,0,0,0,'2012-12-08 01:24:50'),(1070,0,0,0,0,0,0,'2012-12-08 01:25:13'),(1071,0,0,0,0,0,0,'2012-12-08 02:06:04'),(1072,0,0,0,0,0,0,'2012-12-08 02:06:36'),(1073,0,0,0,0,0,0,'2012-12-08 02:06:51'),(1074,0,0,0,0,0,0,'2012-12-08 02:58:59'),(1075,0,0,0,0,0,0,'2012-12-08 02:59:06'),(1076,0,0,0,0,0,0,'2012-12-08 02:59:13'),(1077,0,0,0,0,0,0,'2012-12-08 02:59:30'),(1078,0,0,0,0,0,0,'2012-12-08 02:59:37'),(1079,0,0,0,0,0,0,'2012-12-08 02:59:49'),(1080,0,0,0,0,0,0,'2012-12-08 03:02:47'),(1081,0,0,0,0,0,0,'2012-12-08 03:02:54'),(1082,0,0,0,0,0,0,'2012-12-08 03:03:05'),(1083,0,0,0,0,0,0,'2012-12-08 03:54:05'),(1084,0,0,0,0,0,0,'2012-12-08 03:54:19'),(1085,0,0,0,0,0,0,'2012-12-08 03:54:35'),(1086,0,0,0,0,0,0,'2012-12-08 04:22:34'),(1087,0,0,0,0,0,0,'2012-12-08 04:22:43'),(1088,0,0,0,0,0,0,'2012-12-08 04:22:51'),(1089,0,0,0,0,0,0,'2012-12-08 04:46:52'),(1090,0,0,0,0,0,0,'2012-12-08 04:46:59'),(1091,0,0,0,0,0,0,'2012-12-08 04:47:06'),(1092,0,0,0,0,0,0,'2012-12-08 04:49:34'),(1093,0,0,0,0,0,0,'2012-12-08 04:49:39'),(1094,0,0,0,0,0,0,'2012-12-08 04:49:43'),(1095,0,0,0,0,0,0,'2012-12-08 04:49:48'),(1096,0,0,0,0,0,0,'2012-12-08 04:49:53'),(1097,0,0,0,0,0,0,'2012-12-08 04:50:01'),(1098,0,0,0,0,0,0,'2012-12-08 04:50:10'),(1099,0,0,0,0,0,0,'2012-12-08 04:50:17'),(1100,0,0,0,0,0,0,'2012-12-08 04:50:24'),(1101,0,0,0,0,0,0,'2012-12-08 04:50:31'),(1102,0,0,0,0,0,0,'2012-12-08 04:50:40'),(1103,0,0,0,0,0,0,'2012-12-08 04:50:47'),(1104,0,0,0,0,0,0,'2012-12-08 04:54:47'),(1105,0,0,0,0,0,0,'2012-12-08 04:54:52'),(1106,0,0,0,0,0,0,'2012-12-08 04:54:57'),(1107,0,0,0,0,0,0,'2012-12-08 04:55:02'),(1108,0,0,0,0,0,0,'2012-12-08 04:55:07'),(1109,0,0,0,0,0,0,'2012-12-08 04:55:12'),(1110,0,0,0,0,0,0,'2012-12-08 04:55:17'),(1111,0,0,0,0,0,0,'2012-12-08 04:55:22'),(1112,0,0,0,0,0,0,'2012-12-08 04:55:27'),(1113,0,0,0,0,0,0,'2012-12-08 04:55:33'),(1114,0,0,0,0,0,0,'2012-12-08 04:55:37'),(1115,0,0,0,0,0,0,'2012-12-08 04:55:42'),(1116,0,0,0,0,0,0,'2012-12-08 04:55:47'),(1117,0,0,0,0,0,0,'2012-12-08 04:55:52'),(1118,0,0,0,0,0,0,'2012-12-08 04:55:57'),(1119,0,0,0,0,0,0,'2012-12-08 05:11:27'),(1120,0,0,0,0,0,0,'2012-12-08 05:11:34'),(1121,3,0,0,0,0,0,'2012-12-08 05:11:41'),(1122,0,0,0,0,0,0,'2012-12-08 05:26:01'),(1123,0,0,0,0,0,0,'2012-12-08 05:26:05'),(1124,0,0,0,0,0,0,'2012-12-08 05:26:10'),(1125,0,0,0,0,0,0,'2012-12-08 05:26:14'),(1126,0,0,0,0,0,0,'2012-12-08 05:26:25'),(1127,0,0,0,0,0,0,'2012-12-08 05:26:29'),(1128,0,0,0,0,0,0,'2012-12-08 05:26:35'),(1129,0,0,0,0,0,0,'2012-12-08 05:26:41'),(1130,0,0,0,0,0,0,'2012-12-08 05:26:45'),(1131,0,0,0,0,0,0,'2012-12-08 05:26:50'),(1132,0,0,0,0,0,0,'2012-12-08 05:26:57'),(1133,0,0,0,0,0,0,'2012-12-08 05:27:02'),(1134,0,0,0,0,0,0,'2012-12-08 05:34:24'),(1135,0,0,0,0,0,0,'2012-12-08 05:34:29'),(1136,0,0,0,0,0,0,'2012-12-08 05:34:34'),(1137,0,0,0,0,0,0,'2012-12-08 05:34:39'),(1138,0,0,0,0,0,0,'2012-12-08 05:34:44'),(1139,0,0,0,0,0,0,'2012-12-08 05:34:49'),(1140,0,0,0,0,0,0,'2012-12-08 05:34:54'),(1141,0,0,0,0,0,0,'2012-12-08 05:34:59'),(1142,0,0,0,0,0,0,'2012-12-08 05:35:04'),(1143,0,0,0,0,0,0,'2012-12-08 05:35:09'),(1144,0,0,0,0,0,0,'2012-12-08 05:35:14'),(1145,0,0,0,0,0,0,'2012-12-08 05:35:19'),(1146,0,0,0,0,0,0,'2012-12-08 05:35:24'),(1147,0,0,0,0,0,0,'2012-12-08 05:35:29'),(1148,0,0,0,0,0,0,'2012-12-08 05:35:34'),(1149,0,0,0,0,0,0,'2012-12-08 05:43:41'),(1150,0,0,0,0,0,0,'2012-12-08 05:43:50'),(1151,0,0,0,0,0,0,'2012-12-08 05:43:58'),(1152,0,0,0,0,0,0,'2012-12-08 06:00:46'),(1153,0,0,0,0,0,0,'2012-12-08 06:00:57'),(1154,0,0,0,0,0,0,'2012-12-08 06:01:12'),(1155,0,0,0,0,0,0,'2012-12-08 06:01:22'),(1156,0,0,0,0,0,0,'2012-12-08 06:01:31'),(1157,0,0,0,0,0,0,'2012-12-08 06:01:56'),(1158,0,0,0,0,0,0,'2012-12-08 06:02:26'),(1159,0,0,0,0,0,0,'2012-12-08 06:02:38'),(1160,0,0,0,0,0,0,'2012-12-08 06:02:55'),(1161,0,0,0,0,0,0,'2012-12-08 06:03:20'),(1162,0,0,0,0,0,0,'2012-12-08 06:03:35'),(1163,0,0,0,0,0,0,'2012-12-08 06:04:35'),(1164,0,0,0,0,0,0,'2012-12-08 06:12:32'),(1165,0,0,0,0,0,0,'2012-12-08 06:12:36'),(1166,0,0,0,0,0,0,'2012-12-08 06:12:40'),(1167,0,0,0,0,0,0,'2012-12-08 06:14:06'),(1168,0,0,0,0,0,0,'2012-12-08 06:14:11'),(1169,0,0,0,0,0,0,'2012-12-08 06:14:16'),(1170,0,0,0,0,0,0,'2012-12-08 06:14:21'),(1171,0,0,0,0,0,0,'2012-12-08 06:14:26'),(1172,0,0,0,0,0,0,'2012-12-08 06:14:31'),(1173,0,0,0,0,0,0,'2012-12-08 06:14:36'),(1174,0,0,0,0,0,0,'2012-12-08 06:14:41'),(1175,0,0,0,0,0,0,'2012-12-08 06:14:46'),(1176,0,0,0,0,0,0,'2012-12-08 06:14:50'),(1177,0,0,0,0,0,0,'2012-12-08 06:14:55'),(1178,0,0,0,0,0,0,'2012-12-08 06:15:00'),(1179,0,0,0,0,0,0,'2012-12-08 06:15:05'),(1180,0,0,0,0,0,0,'2012-12-08 06:15:10'),(1181,0,0,0,0,0,0,'2012-12-08 06:15:15'),(1182,0,0,0,0,0,0,'2012-12-08 06:18:58'),(1183,0,0,0,0,0,0,'2012-12-08 06:19:03'),(1184,0,0,0,0,0,0,'2012-12-08 06:19:08'),(1185,0,0,0,0,0,0,'2012-12-08 06:53:31'),(1186,0,0,0,0,0,0,'2012-12-08 06:53:36'),(1187,0,0,0,0,0,0,'2012-12-08 06:53:41'),(1188,0,0,0,0,0,0,'2012-12-08 06:53:46'),(1189,0,0,0,0,0,0,'2012-12-08 06:53:52'),(1190,0,0,0,0,0,0,'2012-12-08 06:53:57'),(1191,0,0,0,0,0,0,'2012-12-08 06:54:01'),(1192,0,0,0,0,0,0,'2012-12-08 06:54:06'),(1193,0,0,0,0,0,0,'2012-12-08 06:54:11'),(1194,0,0,0,0,0,0,'2012-12-08 06:54:16'),(1195,0,0,0,0,0,0,'2012-12-08 06:54:21'),(1196,0,0,0,0,0,0,'2012-12-08 06:54:26'),(1197,0,0,0,0,0,0,'2012-12-08 06:54:31'),(1198,0,0,0,0,0,0,'2012-12-08 06:54:36'),(1199,0,0,0,0,0,0,'2012-12-08 06:54:41'),(1200,0,0,0,0,0,0,'2012-12-08 07:03:19'),(1201,0,0,0,0,0,0,'2012-12-08 07:03:26'),(1202,0,0,0,0,0,0,'2012-12-08 07:03:29'),(1203,0,0,0,0,0,0,'2012-12-08 07:03:34'),(1204,0,0,0,0,0,0,'2012-12-08 07:14:47'),(1205,0,0,0,0,0,0,'2012-12-08 07:14:56'),(1206,0,0,0,0,0,0,'2012-12-08 07:15:08'),(1207,0,0,0,0,0,0,'2012-12-08 07:54:14'),(1208,0,0,0,0,0,0,'2012-12-08 07:54:39'),(1209,0,0,0,0,0,0,'2012-12-08 07:55:07'),(1210,0,0,0,0,0,0,'2012-12-08 08:01:19'),(1211,0,0,0,0,0,0,'2012-12-08 08:01:27'),(1212,0,0,0,0,0,0,'2012-12-08 08:01:36'),(1213,0,0,0,0,0,0,'2012-12-08 08:09:03'),(1214,0,0,0,0,0,0,'2012-12-08 08:09:07'),(1215,0,0,0,0,0,0,'2012-12-08 08:09:11'),(1216,0,0,0,0,0,0,'2012-12-08 08:13:14'),(1217,0,0,0,0,0,0,'2012-12-08 08:13:19'),(1218,0,0,0,0,0,0,'2012-12-08 08:13:24'),(1219,0,0,0,0,0,0,'2012-12-08 08:13:28'),(1220,0,0,0,0,0,0,'2012-12-08 08:13:33'),(1221,0,0,0,0,0,0,'2012-12-08 08:13:38'),(1222,0,0,0,0,0,0,'2012-12-08 08:13:43'),(1223,0,0,0,0,0,0,'2012-12-08 08:13:48'),(1224,0,0,0,0,0,0,'2012-12-08 08:13:53'),(1225,0,0,0,0,0,0,'2012-12-08 08:13:58'),(1226,0,0,0,0,0,0,'2012-12-08 08:14:03'),(1227,0,0,0,0,0,0,'2012-12-08 08:14:08'),(1228,0,0,0,0,0,0,'2012-12-08 08:14:14'),(1229,0,0,0,0,0,0,'2012-12-08 08:14:19'),(1230,0,0,0,0,0,0,'2012-12-08 08:14:24'),(1231,0,0,0,0,0,0,'2012-12-08 08:55:40'),(1232,0,0,0,0,0,0,'2012-12-08 08:56:49'),(1233,0,0,0,0,0,0,'2012-12-08 08:57:19'),(1234,0,0,0,0,0,0,'2012-12-08 08:57:25'),(1235,0,0,0,0,0,0,'2012-12-08 09:02:20'),(1236,0,0,0,0,0,0,'2012-12-08 09:02:35'),(1237,0,0,0,0,0,0,'2012-12-08 09:02:41'),(1238,0,0,0,0,0,0,'2012-12-08 09:18:31'),(1239,0,0,0,0,0,0,'2012-12-08 09:18:36'),(1240,0,0,0,0,0,0,'2012-12-08 09:18:41'),(1241,0,0,0,0,0,0,'2012-12-08 09:18:46'),(1242,0,0,0,0,0,0,'2012-12-08 09:18:51'),(1243,0,0,0,0,0,0,'2012-12-08 09:18:55'),(1244,0,0,0,0,0,0,'2012-12-08 09:19:00'),(1245,0,0,0,0,0,0,'2012-12-08 09:19:05'),(1246,0,0,0,0,0,0,'2012-12-08 09:19:10'),(1247,0,0,0,0,0,0,'2012-12-08 09:19:15'),(1248,0,0,0,0,0,0,'2012-12-08 09:19:21'),(1249,0,0,0,0,0,0,'2012-12-08 09:19:26'),(1250,0,0,0,0,0,0,'2012-12-08 09:19:31'),(1251,0,0,0,0,0,0,'2012-12-08 09:19:36'),(1252,0,0,0,0,0,0,'2012-12-08 09:19:41'),(1253,0,0,0,0,0,0,'2012-12-08 09:29:01'),(1254,0,0,0,0,0,0,'2012-12-08 09:29:07'),(1255,0,0,0,0,0,0,'2012-12-08 09:29:16'),(1256,4,0,0,0,0,0,'2012-12-08 09:49:56'),(1257,0,0,0,0,0,0,'2012-12-08 10:24:26'),(1258,0,0,0,0,0,0,'2012-12-08 10:24:33'),(1259,0,0,0,0,0,0,'2012-12-08 10:24:38'),(1260,0,0,0,0,0,0,'2012-12-08 10:24:43'),(1261,0,0,0,0,0,0,'2012-12-08 10:24:50'),(1262,0,0,0,0,0,0,'2012-12-08 10:24:56'),(1263,0,0,0,0,0,0,'2012-12-08 10:25:02'),(1264,0,0,0,0,0,0,'2012-12-08 10:25:09'),(1265,0,0,0,0,0,0,'2012-12-08 10:25:14'),(1266,0,0,0,0,0,0,'2012-12-08 10:25:19'),(1267,0,0,0,0,0,0,'2012-12-08 10:25:24'),(1268,0,0,0,0,0,0,'2012-12-08 10:25:30'),(1269,0,0,0,0,0,0,'2012-12-08 10:25:35'),(1270,0,0,0,0,0,0,'2012-12-08 10:25:40'),(1271,0,0,0,0,0,0,'2012-12-08 10:25:45'),(1272,0,0,0,0,0,0,'2012-12-08 10:40:35'),(1273,0,0,0,0,0,0,'2012-12-08 10:41:05'),(1274,0,0,0,0,0,0,'2012-12-08 10:41:17'),(1275,0,0,0,0,0,0,'2012-12-08 10:47:17'),(1276,0,0,0,0,0,0,'2012-12-08 10:48:04'),(1277,0,0,0,0,0,0,'2012-12-08 10:48:54');
/*!40000 ALTER TABLE `topic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `history`
--

DROP TABLE IF EXISTS `history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `history` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `action` int(11) unsigned DEFAULT NULL,
  `field` varchar(45) NOT NULL DEFAULT '',
  `old` text NOT NULL,
  `new` text NOT NULL,
  `pass` bit(1) DEFAULT NULL,
  `uid` int(11) unsigned DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `history`
--

LOCK TABLES `history` WRITE;
/*!40000 ALTER TABLE `history` DISABLE KEYS */;
/*!40000 ALTER TABLE `history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `module_table`
--

DROP TABLE IF EXISTS `module_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `module_table` (
  `name` varchar(100) NOT NULL COMMENT '名称',
  `title` varchar(100) DEFAULT NULL,
  `module` varchar(45) DEFAULT NULL COMMENT '模块',
  `group` varchar(45) DEFAULT NULL COMMENT '分组',
  `status` varchar(45) DEFAULT NULL COMMENT '状态',
  `rows` int(10) unsigned DEFAULT NULL,
  `data_length` int(10) unsigned DEFAULT NULL,
  `index_length` int(10) unsigned DEFAULT NULL,
  `engine` varchar(45) DEFAULT NULL,
  `collation` varchar(45) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `update_user` int(11) unsigned DEFAULT NULL,
  `create_time` varchar(45) DEFAULT NULL,
  `build` bit(1) DEFAULT NULL,
  `validate` varchar(1000) DEFAULT NULL,
  `auto` varchar(1000) DEFAULT NULL,
  `filter` varchar(1000) DEFAULT NULL,
  `type` enum('system','customer') DEFAULT 'customer',
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `module_table`
--

LOCK TABLES `module_table` WRITE;
/*!40000 ALTER TABLE `module_table` DISABLE KEYS */;
INSERT INTO `module_table` VALUES ('account','','Account','Admin','1',0,16384,0,'InnoDB','utf8_general_ci',NULL,NULL,'2013-05-05 23:16:14','\0',NULL,NULL,NULL,'customer'),('actions','','Actions','Admin','0',0,16384,0,'InnoDB','utf8_general_ci',NULL,NULL,'2013-05-05 23:16:13','\0',NULL,NULL,NULL,'customer'),('article','','Article','Admin','0',7,114688,0,'InnoDB','utf8_general_ci',NULL,NULL,'2013-05-05 23:16:14','\0',NULL,NULL,NULL,'customer'),('atest','','Atest','Admin','0',0,16384,0,'InnoDB','utf8_general_ci',NULL,NULL,'2013-05-05 23:16:13','\0',NULL,NULL,NULL,'customer'),('attachment','','Attachment','Admin','0',0,16384,0,'InnoDB','utf8_general_ci',NULL,NULL,'2013-05-05 23:16:13','\0',NULL,NULL,NULL,'customer'),('authority','','Authority','Admin','0',7,16384,0,'InnoDB','utf8_general_ci',NULL,NULL,'2013-05-05 23:16:11','\0',NULL,NULL,NULL,'system'),('backup','','Backup','Admin','1',27,16384,0,'InnoDB','utf8_general_ci',NULL,NULL,'2013-05-05 23:16:15','\0',NULL,NULL,NULL,'system'),('broadband','','Broadband','Admin','0',8,16384,0,'InnoDB','utf8_general_ci',NULL,NULL,'2013-05-05 23:16:12','\0',NULL,NULL,NULL,'customer'),('broadband_cat','','Broadband_cat','Admin','0',9,16384,0,'InnoDB','utf8_general_ci',NULL,NULL,'2013-05-05 23:16:15','\0',NULL,NULL,NULL,'customer'),('class','','Class','Admin','0',0,16384,16384,'InnoDB','utf8_general_ci',NULL,NULL,'2013-05-25 10:15:51','\0',NULL,NULL,NULL,'customer'),('classsubject','','Classsubject','Admin','0',0,16384,32768,'InnoDB','utf8_general_ci',NULL,NULL,'2013-05-25 10:15:51','\0',NULL,NULL,NULL,'customer'),('comments','','Comments','Admin','0',0,16384,0,'InnoDB','utf8_general_ci',NULL,NULL,'2013-05-05 23:16:12','\0',NULL,NULL,NULL,'customer'),('cron','','Cron','Admin','0',0,16384,16384,'InnoDB','utf8_general_ci',NULL,NULL,'2013-05-05 23:16:11','\0',NULL,NULL,NULL,'customer'),('department','','Department','Admin','0',163,16384,0,'InnoDB','utf8_general_ci',NULL,NULL,'2013-05-05 23:16:13','\0',NULL,NULL,NULL,'customer'),('grade','','Grade','Admin','1',0,16384,0,'InnoDB','utf8_general_ci',NULL,NULL,'2013-05-25 10:15:51','\0',NULL,NULL,NULL,'customer'),('group','','Group','Admin','0',1,16384,0,'InnoDB','utf8_general_ci',NULL,NULL,'2013-05-05 23:16:11','\0',NULL,NULL,NULL,'customer'),('history','','History','Admin','0',0,16384,0,'InnoDB','utf8_general_ci',NULL,NULL,'2013-05-05 23:16:14','\0',NULL,NULL,NULL,'customer'),('log','','Log','Admin','0',12,16384,0,'InnoDB','utf8_general_ci',NULL,NULL,'2013-05-23 23:36:41','\0',NULL,NULL,NULL,'customer'),('member','','Member','Admin','0',0,16384,16384,'InnoDB','utf8_general_ci',NULL,NULL,'2013-05-05 23:16:12','\0',NULL,NULL,NULL,'customer'),('menu','','Menu','Admin','1',28,16384,0,'InnoDB','utf8_general_ci',NULL,NULL,'2013-05-05 23:16:12','\0',NULL,NULL,NULL,'system'),('module','','Module','Admin','0',0,16384,0,'InnoDB','utf8_general_ci',NULL,NULL,'2013-05-05 23:16:11','\0',NULL,NULL,NULL,'system'),('module_column','','Module_column','Admin','1',39,16384,16384,'InnoDB','utf8_general_ci',NULL,NULL,'2013-05-05 23:16:13','\0',NULL,NULL,NULL,'system'),('module_refer','','Module_refer','Comm','1',3,16384,0,'InnoDB','utf8_general_ci',NULL,NULL,'2013-05-16 22:47:47','\0','','',NULL,''),('module_table','','Module_table','Admin','0',0,16384,0,'InnoDB','utf8_general_ci',NULL,NULL,'2013-05-05 23:16:14','\0',NULL,NULL,NULL,'system'),('parameters','','Parameters','Admin','0',3,16384,16384,'InnoDB','utf8_general_ci',NULL,NULL,'2013-05-05 23:16:12','\0',NULL,NULL,NULL,'system'),('passport','','Passport','Admin','0',1,16384,0,'InnoDB','utf8_general_ci',NULL,NULL,'2013-05-05 23:16:13','\0',NULL,NULL,NULL,'customer'),('role','','Role','Admin','0',4,16384,0,'InnoDB','utf8_general_ci',NULL,NULL,'2013-05-05 23:16:12','\0',NULL,NULL,NULL,'system'),('role_authority','','Role_authority','Admin','0',18,16384,16384,'InnoDB','utf8_general_ci',NULL,NULL,'2013-05-05 23:16:11','\0',NULL,NULL,NULL,'system'),('student','','Student','Admin','1',0,16384,0,'InnoDB','utf8_general_ci',NULL,NULL,'2013-05-25 10:15:52','\0',NULL,NULL,NULL,'customer'),('studentclass','','Studentclass','Admin','1',0,16384,49152,'InnoDB','utf8_general_ci',NULL,NULL,'2013-05-25 10:15:52','\0',NULL,NULL,NULL,'customer'),('studentclasssubject','','Studentclasssubject','Admin','1',0,16384,49152,'InnoDB','utf8_general_ci',NULL,NULL,'2013-05-25 10:15:52','\0',NULL,NULL,NULL,'customer'),('subject','','Subject','Admin','1',0,16384,0,'InnoDB','utf8_general_ci',NULL,NULL,'2013-05-25 10:15:52','\0',NULL,NULL,NULL,'customer'),('term','','Term','Admin','1',0,16384,0,'InnoDB','utf8_general_ci',NULL,NULL,'2013-05-25 10:15:52','\0',NULL,NULL,NULL,'customer'),('test','','Test','Admin','0',0,16384,0,'InnoDB','utf8_general_ci',NULL,NULL,'2013-05-05 23:16:13','\0',NULL,NULL,NULL,'customer'),('think_access','','Think_access','Admin','0',94,1880,3072,'MyISAM','utf8_general_ci','2013-05-05 23:55:52',NULL,'2013-05-05 23:55:52','\0',NULL,NULL,NULL,'customer'),('think_form','','Think_form','Admin','0',30,680,2048,'MyISAM','utf8_general_ci','2013-05-05 23:55:57',NULL,'2013-05-05 23:55:57','\0',NULL,NULL,NULL,'customer'),('think_group','','Think_group','Admin','0',1,28,2048,'MyISAM','utf8_general_ci','2013-05-05 23:55:58',NULL,'2013-05-05 23:55:58','\0',NULL,NULL,NULL,'customer'),('think_node','','Think_node','Admin','0',17,528,6144,'MyISAM','utf8_general_ci','2013-05-05 23:55:43',NULL,'2013-05-05 23:55:43','\0',NULL,NULL,NULL,'customer'),('think_role','','Think_role','Admin','0',3,80,5120,'MyISAM','utf8_general_ci','2013-05-05 23:55:46',NULL,'2013-05-05 23:55:46','\0',NULL,NULL,NULL,'customer'),('think_role_user','','Think_role_user','Admin','0',9,900,3072,'MyISAM','utf8_general_ci','2013-05-05 23:55:58',NULL,'2013-05-05 23:55:58','\0',NULL,NULL,NULL,'customer'),('think_user','','Think_user','Admin','0',4,388,3072,'MyISAM','utf8_general_ci','2013-05-05 23:55:52',NULL,'2013-05-05 23:55:52','\0',NULL,NULL,NULL,'customer'),('topic','','Topic','Admin','0',1292,114688,0,'InnoDB','utf8_general_ci',NULL,NULL,'2013-05-05 23:16:14','\0',NULL,NULL,NULL,'customer'),('tp_access','','Tp_access','Admin','0',71,1420,3072,'MyISAM','utf8_general_ci','2013-05-05 23:55:53',NULL,'2013-05-05 23:55:53','\0',NULL,NULL,NULL,'customer'),('tp_node','','Tp_node','Admin','0',41,1956,6144,'MyISAM','utf8_general_ci','2013-05-05 23:55:58',NULL,'2013-05-05 23:55:58','\0',NULL,NULL,NULL,'customer'),('tp_role','','Tp_role','Admin','0',3,124,4096,'MyISAM','utf8_general_ci','2013-05-05 23:55:56',NULL,'2013-05-05 23:55:56','\0',NULL,NULL,NULL,'customer'),('tp_role_user','','Tp_role_user','Admin','0',2,14,3072,'MyISAM','utf8_general_ci','2013-05-05 23:55:49',NULL,'2013-05-05 23:55:49','\0',NULL,NULL,NULL,'customer'),('tp_user','用户表','Tp_user','Admin','0',2,188,3072,'MyISAM','utf8_general_ci','2013-05-05 23:55:46',NULL,'2013-05-05 23:55:46','\0',NULL,NULL,NULL,'customer'),('user','','User','Admin','1',1,16384,0,'InnoDB','utf8_general_ci',NULL,NULL,'2013-05-05 23:16:12','\0',NULL,NULL,NULL,'system'),('user_authority','','User_authority','Admin','0',0,16384,16384,'InnoDB','utf8_general_ci',NULL,NULL,'2013-05-05 23:16:12','\0',NULL,NULL,NULL,'system'),('user_extend','','User_extend','Admin','0',1,16384,0,'InnoDB','utf8_general_ci',NULL,NULL,'2013-05-05 23:16:15','\0',NULL,NULL,NULL,'customer'),('user_profile','','User_profile','Admin','0',0,16384,0,'InnoDB','utf8_general_ci',NULL,NULL,'2013-05-05 23:16:13','\0',NULL,NULL,NULL,'customer'),('user_role','','User_role','Admin','0',0,16384,16384,'InnoDB','utf8_general_ci',NULL,NULL,'2013-05-05 23:16:13','\0',NULL,NULL,NULL,'system');
/*!40000 ALTER TABLE `module_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_node`
--

DROP TABLE IF EXISTS `tp_node`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_node` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL COMMENT '节点名称',
  `title` varchar(50) NOT NULL COMMENT '菜单名称',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否激活 1：是 2：否',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注说明',
  `pid` smallint(6) unsigned NOT NULL COMMENT '父ID',
  `level` tinyint(1) unsigned NOT NULL COMMENT '节点等级',
  `data` varchar(255) DEFAULT NULL COMMENT '附加参数',
  `sort` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '排序权重',
  `display` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '菜单显示类型 0:不显示 1:导航菜单 2:左侧菜单',
  PRIMARY KEY (`id`),
  KEY `level` (`level`),
  KEY `pid` (`pid`),
  KEY `status` (`status`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_node`
--

LOCK TABLES `tp_node` WRITE;
/*!40000 ALTER TABLE `tp_node` DISABLE KEYS */;
INSERT INTO `tp_node` VALUES (1,'cms','根节点',1,'不可删除',0,1,NULL,0,0),(2,'index','后台主框架模块',1,'所有后台用户组都必须有此权限，否则后台无法登录',1,2,'',10,0),(3,'index','index方法',1,'Index模块的index方法',2,3,'',5,0),(4,'left','left方法',1,'Index模块的left方法',2,3,'',3,0),(5,'top','top方法',1,'Index模块的top方法',2,3,'',4,0),(6,'main','main方法',1,'Index模块的main方法',2,3,'',1,0),(7,'footer','footer方法',1,'Index模块的footer方法',2,3,'',2,0),(8,'Node','菜单节点管理',1,'',28,2,'?s=/Admin/Node/index',1,2),(9,'add','添加菜单',1,'',8,3,'',4,0),(10,'edit','修改菜单',1,'',8,3,'',3,0),(11,'del','删除菜单',1,'',8,3,'',2,0),(13,'extend','扩展功能',1,'',1,0,'',9,1),(14,'public_main','我的面板',1,'',1,0,'',40,1),(15,'main','系统环境',1,'快捷菜单',25,0,'?s=/Admin/Index/main',10,2),(16,'index','菜单列表',1,'',8,3,'',5,0),(17,'sort','菜单排序',1,'',8,3,'',1,0),(18,'UserCenter','用户管理',1,'',1,0,'',20,1),(19,'cache','缓存模块',1,'',1,2,'',0,0),(20,'delCore','删除核心缓存',1,'',19,3,'',0,0),(21,'User','后台用户管理',1,'',18,2,'',0,2),(22,'role','角色管理',1,'',21,3,'?s=/Admin/User/role',4,2),(23,'role_add','角色添加',1,'',21,3,'?s=/Admin/User/role_add',0,0),(25,'my','我的面板',1,'',14,0,'',0,2),(30,'index','后台用户管理',1,'',21,3,'?s=/Admin/User/index',10,2),(28,'extend_sub','扩展功能',1,'',13,0,'',0,2),(31,'role_edit','角色编辑',1,'',21,3,'',0,0),(32,'role_del','角色删除',1,'',21,3,'',0,0),(33,'role_sort','角色排序',1,'',21,3,'',0,0),(34,'add','后台用户添加',1,'',21,3,'',9,0),(35,'edit','后台用户编辑',1,'',21,3,'',8,0),(36,'del','后台用户删除',1,'',21,3,'',7,0),(37,'access','角色权限浏览',1,'',21,3,'',0,0),(38,'access_edit','角色权限编辑',1,'',21,3,'',0,0),(40,'check_username','检查用户名',1,'ajax验证',21,3,'',6,0),(47,'conf','浏览网站各配置信息',1,'',46,3,'',0,0),(45,'system_settings','系统设置',1,'',1,0,'',30,1),(46,'Config','系统配置',1,'',45,2,'',0,2),(48,'updateweb','更新网站相关配置',1,'',46,3,'',0,0),(49,'confweb','网站信息设置',1,'',46,0,'?s=/Admin/Config/conf/id/web',0,2),(50,'updatedb','更新数据库链接配置',1,'',46,3,'',0,0),(51,'confdb','数据库链接配置',1,'',46,0,'?s=/Admin/Config/conf/id/db',0,2);
/*!40000 ALTER TABLE `tp_node` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `backup`
--

DROP TABLE IF EXISTS `backup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `backup` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `path` varchar(255) NOT NULL,
  `backup_time` datetime DEFAULT NULL,
  `desc` varchar(255) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `backup`
--

LOCK TABLES `backup` WRITE;
/*!40000 ALTER TABLE `backup` DISABLE KEYS */;
INSERT INTO `backup` VALUES (1,'./backup/commlib_dump201211100748','1970-01-01 08:00:00',NULL,NULL),(2,'./backup/commlib_dump201211100750','1970-01-01 08:00:00',NULL,NULL),(3,'./backup/commlib_dump201211100756',NULL,NULL,NULL),(4,'./backup/commlib_dump201211100800','2012-11-10 08:00:26',NULL,NULL),(5,'./backup/commlib_dump201211100800','2012-11-10 08:00:39',NULL,NULL),(6,'./backup/commlib_dump201211100801','2012-11-10 08:01:11',NULL,NULL),(7,'./backup/commlib_dump201211100835','2012-11-10 08:35:54',NULL,NULL),(8,'./backup/commlib_dump201211100837','2012-11-10 08:37:44',NULL,NULL),(9,'./backup/commlib_dump201211100838','2012-11-10 08:38:28',NULL,NULL),(10,'./backup/commlib_dump201211100838','2012-11-10 08:38:38',NULL,NULL),(11,'./backup/commlib_dump201211101712','2012-11-10 17:12:01','Rockefys',NULL),(12,'./backup/commlib_dump201211101842','2012-11-10 18:42:28','Rockefys',NULL),(13,'./backup/commlib_dump201304181829',NULL,'admin',NULL),(14,'./backup/commlib_dump201304181831',NULL,'admin',NULL),(15,'./backup/commlib_dump201304181832',NULL,'admin',NULL),(16,'./backup/commlib_dump201304181833',NULL,'admin',NULL),(17,'./backup/commlib_dump201304181834',NULL,'admin',NULL),(18,'./backup/commlib_dump201304181838',NULL,'admin',NULL),(19,'./backup/commlib_dump201304181838',NULL,'admin',NULL),(20,'./backup/commlib_dump201304181840',NULL,'admin',NULL),(21,'./backup/commlib_dump201304181842',NULL,'admin',NULL),(22,'./backup/commlib_dump201304181844',NULL,'admin',NULL),(23,'./backup/commlib_dump201304181845',NULL,'admin',NULL),(24,'./backup/commlib_dump201304181848',NULL,'admin',NULL),(25,'./backup/commlib_dump201304181849',NULL,'admin',NULL),(26,'./backup/commlib_dump201304181851',NULL,'admin',NULL),(27,'./backup/commlib_dump201304181852',NULL,'admin',NULL);
/*!40000 ALTER TABLE `backup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `broadband_cat`
--

DROP TABLE IF EXISTS `broadband_cat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `broadband_cat` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `broadband_cat`
--

LOCK TABLES `broadband_cat` WRITE;
/*!40000 ALTER TABLE `broadband_cat` DISABLE KEYS */;
INSERT INTO `broadband_cat` VALUES (1,'50'),(2,'100块'),(3,'类上看见佛教啊  '),(4,'阿斯蒂芬撒'),(5,'去324212412'),(6,'阿斯蒂芬 '),(7,'wer324'),(8,'3423rwerwef'),(9,'asfasdfs');
/*!40000 ALTER TABLE `broadband_cat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_extend`
--

DROP TABLE IF EXISTS `user_extend`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_extend` (
  `userid` int(11) NOT NULL DEFAULT '0' COMMENT '用户',
  `passport` varchar(50) DEFAULT NULL COMMENT '护照编号',
  `xing` varchar(20) DEFAULT NULL COMMENT '姓',
  `ming` varchar(20) DEFAULT NULL COMMENT '名',
  `sex` enum('男','女') DEFAULT '男' COMMENT '性别',
  `birthday` date DEFAULT NULL COMMENT '出生日期',
  `birth_place` varchar(100) DEFAULT NULL COMMENT '出生地',
  `issue_place` varchar(100) DEFAULT NULL COMMENT '签发地',
  `issue_date` date DEFAULT NULL COMMENT '签发日期',
  `expiry` date DEFAULT NULL COMMENT '过期日期',
  `authority` varchar(100) DEFAULT NULL COMMENT '签发机关',
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_extend`
--

LOCK TABLES `user_extend` WRITE;
/*!40000 ALTER TABLE `user_extend` DISABLE KEYS */;
INSERT INTO `user_extend` VALUES (0,'01123456789','张','三','男','2012-12-12','新乡','郑州','2012-12-12','2012-12-12','郑州公安局');
/*!40000 ALTER TABLE `user_extend` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-05-26  1:48:56
