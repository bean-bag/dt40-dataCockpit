/*
SQLyog  v12.2.6 (64 bit)
MySQL - 5.5.20 : Database - dataCockpit40
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`dataCockpit40` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `dataCockpit40`;

/*Table structure for table `8jiaoshibiao` */

DROP TABLE IF EXISTS `8jiaoshibiao`;

CREATE TABLE `8jiaoshibiao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `xingming` varchar(255) DEFAULT NULL COMMENT '姓名',
  `zhuanye` varchar(255) DEFAULT NULL COMMENT '专业',
  `shows` int(2) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `8jiaoshibiao` */

/*Table structure for table `8shangpinbiao` */

DROP TABLE IF EXISTS `8shangpinbiao`;

CREATE TABLE `8shangpinbiao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shuliang` int(10) DEFAULT NULL COMMENT '数量',
  `jiage` float DEFAULT NULL COMMENT '价格',
  `mingcheng` varchar(255) DEFAULT NULL COMMENT '名称',
  `shows` int(2) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

/*Data for the table `8shangpinbiao` */

insert  into `8shangpinbiao`(`id`,`shuliang`,`jiage`,`mingcheng`,`shows`) values 
(1,15,15,'牙刷',0),
(2,20,6,'毛巾',0),
(3,20,10,'杯子',0),
(4,15,15,'牙刷',0),
(5,20,6,'毛巾',0),
(6,20,10,'杯子',0),
(7,15,15,'牙刷',0),
(8,20,6,'毛巾',0),
(9,20,10,'杯子',0),
(10,15,15,'牙刷',0),
(11,20,6,'毛巾',0),
(12,20,10,'杯子',0),
(13,15,15,'牙刷',0),
(14,20,6,'毛巾',0),
(15,20,10,'杯子',0),
(16,15,15,'牙刷',0),
(17,20,6,'毛巾',0),
(18,20,10,'杯子',0),
(19,15,15,'牙刷',0),
(20,20,6,'毛巾',0),
(21,20,10,'杯子',0),
(22,15,15,'牙刷',0),
(23,20,6,'毛巾',0),
(24,20,10,'杯子',0),
(25,15,15,'牙刷',0),
(26,20,6,'毛巾',0),
(27,20,10,'杯子',0),
(28,15,15,'牙刷',0),
(29,20,6,'毛巾',0),
(30,20,10,'杯子',0);

/*Table structure for table `8xiaoshoushujubiao` */

DROP TABLE IF EXISTS `8xiaoshoushujubiao`;

CREATE TABLE `8xiaoshoushujubiao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `xiangmumingcheng` varchar(255) DEFAULT NULL COMMENT '项目名称',
  `suozaiquyu` varchar(255) DEFAULT NULL COMMENT '所在区域',
  `daofangrenshu` int(10) DEFAULT NULL COMMENT '到访人数',
  `times` date DEFAULT NULL COMMENT '时间',
  `tuidingrenshu` int(10) DEFAULT NULL COMMENT '退定人数',
  `renchourenshu` int(10) DEFAULT NULL COMMENT '认筹人数',
  `shows` int(2) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

/*Data for the table `8xiaoshoushujubiao` */

insert  into `8xiaoshoushujubiao`(`id`,`xiangmumingcheng`,`suozaiquyu`,`daofangrenshu`,`times`,`tuidingrenshu`,`renchourenshu`,`shows`) values 
(1,'智动天下','武汉',23,'2017-08-13',3,20,0),
(4,'北大青鸟','武汉',50,'2017-08-05',0,50,0),
(23,'智动天下','武汉',23,'2017-08-13',3,20,0),
(24,'北大青鸟','武汉',50,'2017-08-05',0,50,0),
(25,'智动天下','武汉',23,'2017-08-13',3,20,0),
(26,'北大青鸟','武汉',50,'2017-08-05',0,50,0);

/*Table structure for table `8xiaoxibiao` */

DROP TABLE IF EXISTS `8xiaoxibiao`;

CREATE TABLE `8xiaoxibiao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `biaoti` varchar(255) DEFAULT NULL COMMENT '标题',
  `neirong` varchar(255) DEFAULT NULL COMMENT '内容',
  `shijian` varchar(255) DEFAULT NULL COMMENT '时间',
  `shows` int(2) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `8xiaoxibiao` */

/*Table structure for table `8xueshengbiao` */

DROP TABLE IF EXISTS `8xueshengbiao`;

CREATE TABLE `8xueshengbiao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `xingming` varchar(255) DEFAULT NULL COMMENT '姓名',
  `xuehao` varchar(255) DEFAULT NULL COMMENT '学号',
  `shows` int(2) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

/*Data for the table `8xueshengbiao` */

insert  into `8xueshengbiao`(`id`,`xingming`,`xuehao`,`shows`) values 
(1,'学号','姓名',0),
(2,'12','张三',0),
(3,'13','李四',0),
(4,'14','王五',0),
(5,'学号','姓名',0),
(6,'12','张三',0),
(7,'13','李四',0),
(8,'14','王五',0),
(9,'学号','姓名',0),
(10,'12','张三',0),
(11,'13','李四',0),
(12,'14','王五',0),
(13,'学号','姓名',0),
(14,'12','张三',0),
(15,'13','李四',0),
(16,'14','王五',0),
(17,'学号','姓名',0),
(18,'12','张三',0),
(19,'13','李四',0),
(20,'14','王五',0),
(21,'学号','姓名',0),
(22,'12','张三',0),
(23,'13','李四',0),
(24,'14','王五',0),
(25,'学号','姓名',0),
(26,'12','张三',0),
(27,'13','李四',0),
(28,'14','王五',0),
(29,'学号','姓名',0),
(30,'12','张三',0),
(31,'13','李四',0),
(32,'14','王五',0);

/*Table structure for table `8yonghubiao` */

DROP TABLE IF EXISTS `8yonghubiao`;

CREATE TABLE `8yonghubiao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `xingming` varchar(255) DEFAULT NULL COMMENT '姓名',
  `dizhi` varchar(255) DEFAULT NULL COMMENT '地址',
  `shows` int(2) DEFAULT '0',
  `dianhua` varchar(255) DEFAULT NULL COMMENT '电话',
  `mima` varchar(255) DEFAULT NULL COMMENT '密码',
  `zhanghao` varchar(255) DEFAULT NULL COMMENT '账号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `8yonghubiao` */

/*Table structure for table `8yuangongbiao` */

DROP TABLE IF EXISTS `8yuangongbiao`;

CREATE TABLE `8yuangongbiao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `xingming` varchar(255) DEFAULT NULL COMMENT '姓名',
  `nianling` int(10) DEFAULT NULL COMMENT '年龄',
  `gonghao` int(10) DEFAULT NULL COMMENT '工号',
  `shows` int(2) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `8yuangongbiao` */

/*Table structure for table `analysistasks` */

DROP TABLE IF EXISTS `analysistasks`;

CREATE TABLE `analysistasks` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '分析任务表',
  `cid` int(11) DEFAULT NULL COMMENT '企业编号',
  `did` int(11) DEFAULT NULL COMMENT '关联关系编号',
  `arithmeticid` int(11) DEFAULT NULL COMMENT '算法ID',
  `rule` varchar(50) DEFAULT NULL COMMENT '算法规则',
  PRIMARY KEY (`id`),
  KEY `did` (`did`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

/*Data for the table `analysistasks` */

insert  into `analysistasks`(`id`,`cid`,`did`,`arithmeticid`,`rule`) values 
(1,8,1,1,'aaaa'),
(2,8,2,2,'bbbb'),
(3,8,2,1,''),
(4,10,1,4,'aaaaaa'),
(5,10,2,1,''),
(6,11,2,1,''),
(7,11,2,3,''),
(8,8,12,1,''),
(9,8,13,5,''),
(10,8,12,2,''),
(11,8,12,3,''),
(12,8,12,8,''),
(13,8,12,7,''),
(14,8,6,1,''),
(15,8,6,2,''),
(16,8,16,2,'abababbababababa'),
(17,8,16,1,''),
(18,8,15,1,'');

/*Table structure for table `company` */

DROP TABLE IF EXISTS `company`;

CREATE TABLE `company` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `compname` varchar(50) DEFAULT NULL,
  `state` int(1) DEFAULT NULL COMMENT '0禁用1启用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

/*Data for the table `company` */

insert  into `company`(`id`,`compname`,`state`) values 
(8,'智动天下',1),
(10,'万达',0),
(11,'千硕教育',1),
(12,'诺格科技',1);

/*Table structure for table `companyinfo` */

DROP TABLE IF EXISTS `companyinfo`;

CREATE TABLE `companyinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '企业表',
  `corpName` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `job` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `state` int(11) DEFAULT NULL COMMENT '状态    禁：0,不禁1',
  `approval` int(11) DEFAULT NULL COMMENT '审批状态  拒：0，过：1 待审核：2',
  `password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

/*Data for the table `companyinfo` */

insert  into `companyinfo`(`id`,`corpName`,`phone`,`name`,`job`,`email`,`state`,`approval`,`password`) values 
(8,'智动天下','13234343434','张','经理','22222@qq.com',NULL,1,NULL),
(10,'万达','13588888888','王思聪','董事长','8888@qq.com',1,NULL,NULL),
(11,'千硕教育','18687098317','王芙蓉','董事长','wang@qq.com',NULL,1,NULL);

/*Table structure for table `datarelation` */

DROP TABLE IF EXISTS `datarelation`;

CREATE TABLE `datarelation` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '关联关系表',
  `name` varchar(100) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL COMMENT '企业ID',
  `tid1` int(11) DEFAULT NULL COMMENT '关联表A字段',
  `tid2` int(11) DEFAULT NULL COMMENT '关联表B字段',
  `col1` int(11) DEFAULT NULL,
  `col2` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT NULL COMMENT '关联关系状态 禁：0,不禁1',
  PRIMARY KEY (`id`),
  KEY `datarelation_ibfk_1` (`tid1`),
  KEY `datarelation_ibfk_2` (`tid2`),
  KEY `datarelation_col_1` (`col1`),
  KEY `datarelation_col_2` (`col2`),
  KEY `datarelation_com_1` (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

/*Data for the table `datarelation` */

insert  into `datarelation`(`id`,`name`,`cid`,`tid1`,`tid2`,`col1`,`col2`,`state`) values 
(1,'销售到访关联表',8,3,4,2,3,0),
(2,'电销销售关联表',8,2,3,4,2,1),
(6,'销售认筹关联',8,1,3,1,2,1),
(15,'学生用户关联',8,23,24,3,2,1),
(16,'用户商品关联',8,28,24,4,2,1);

/*Table structure for table `inform` */

DROP TABLE IF EXISTS `inform`;

CREATE TABLE `inform` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '通知表',
  `title` varchar(200) DEFAULT NULL,
  `publish_date` datetime DEFAULT NULL,
  `details` varchar(1000) DEFAULT NULL,
  `publisher` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

/*Data for the table `inform` */

insert  into `inform`(`id`,`title`,`publish_date`,`details`,`publisher`) values 
(1,'通知公告','2017-08-29 20:17:11','<p>但是否会对各环节</p>\r\n','333'),
(2,'会议纪要','2017-08-25 20:24:26','<p>naskdnfaslif &nbsp; dsfdsgf</p>\r\n','444'),
(3,'会议通知','2017-08-25 08:38:12','大家好',NULL),
(4,'系统升级','2017-08-29 08:41:36','升级维护',NULL),
(5,'活动通知','2017-08-28 08:41:51','维护',NULL),
(6,'系统维护','2017-08-30 12:40:09','出新活动了',NULL),
(8,'aaaa','2017-09-21 14:40:51','<p>a</p>\r\n','aaaaa'),
(9,'bbbb','2017-09-21 14:41:15','<p>bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb</p>\r\n','bbbb'),
(10,'杀人拉','2017-08-30 15:16:46','<p><strong>没人快交简历</strong></p>\r\n','王总'),
(11,'抢钱了','2017-10-06 10:13:02','快交出钱来','风总'),
(12,'发钱了','2017-10-06 10:15:04','每人100元','天总'),
(13,'发月饼','2017-10-06 10:15:50','每人一个','月总'),
(14,'发工资','2017-10-06 10:16:27','每人1元','工总'),
(15,'发纸','2017-10-06 10:17:04','每人2张','张三'),
(16,'发笔','2017-10-06 10:20:02','每人一支','李四'),
(18,'杀人拉','2017-08-30 15:16:46','<p><strong>没人快交简历</strong></p>\r\n','王总'),
(19,'抢钱了','2017-10-06 10:13:02','快交出钱来','风总'),
(20,'发钱了','2017-10-06 10:15:04','每人100元','天总'),
(21,'发月饼','2017-10-06 10:15:50','每人一个','月总'),
(22,'发工资','2017-10-06 10:16:27','每人1元','工总'),
(23,'发纸','2017-10-06 10:17:04','每人2张','张三'),
(24,'发笔','2017-10-06 10:20:02','每人一支','李四'),
(26,'杀人拉','2017-08-30 15:16:46','<p><strong>没人快交简历</strong></p>\r\n','王总'),
(27,'抢钱了','2017-10-06 10:13:02','快交出钱来','风总'),
(28,'发钱了','2017-10-06 10:15:04','每人100元','天总'),
(29,'发月饼','2017-10-06 10:15:50','每人一个','月总'),
(30,'发工资','2017-10-06 10:16:27','每人1元','工总'),
(31,'发纸','2017-10-06 10:17:04','每人2张','张三'),
(32,'发笔','2017-10-06 10:20:02','每人一支','李四'),
(33,'求神那','2017-10-06 17:07:36','<p>今天财神到</p>\r\n','11');

/*Table structure for table `nullxueshengbiao` */

DROP TABLE IF EXISTS `nullxueshengbiao`;

CREATE TABLE `nullxueshengbiao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `xingming` varchar(255) DEFAULT NULL COMMENT '姓名',
  `xuehao` varchar(255) DEFAULT NULL COMMENT '学号',
  `shows` int(2) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `nullxueshengbiao` */

/*Table structure for table `permission` */

DROP TABLE IF EXISTS `permission`;

CREATE TABLE `permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `per_name` varchar(50) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `percode` varchar(50) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `permission` */

insert  into `permission`(`id`,`per_name`,`type`,`percode`,`url`) values 
(1,'select',NULL,NULL,NULL);

/*Table structure for table `result` */

DROP TABLE IF EXISTS `result`;

CREATE TABLE `result` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '任务结果id',
  `aid` int(11) DEFAULT NULL COMMENT '分析任务id',
  `starttime` datetime DEFAULT NULL,
  `endtime` datetime DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT '0' COMMENT '状态（0：已添加，1：进行中，2：完成）',
  `feedback` varchar(1000) DEFAULT NULL COMMENT '任务结果',
  `taskstatus` int(11) DEFAULT NULL COMMENT '状态（0：成功，1：失败）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

/*Data for the table `result` */

insert  into `result`(`id`,`aid`,`starttime`,`endtime`,`state`,`feedback`,`taskstatus`) values 
(1,4,'2017-10-06 14:47:21','2017-10-06 14:47:25',2,NULL,0),
(2,5,'2017-10-11 14:51:03','2017-10-10 23:47:45',2,NULL,0),
(3,5,'2017-10-06 14:51:09','2017-10-10 23:47:48',2,NULL,0),
(4,4,'2017-10-06 14:51:11','2017-10-03 23:47:42',2,NULL,1),
(5,5,'2017-10-06 14:51:13',NULL,1,NULL,NULL),
(6,2,'2017-10-07 23:46:58',NULL,1,NULL,NULL),
(7,2,'2017-10-08 23:47:02',NULL,0,NULL,NULL),
(8,2,'2017-10-06 14:56:58','2017-10-06 14:57:00',2,NULL,0),
(9,2,'2017-10-07 13:06:59','2017-10-07 13:07:02',2,NULL,1),
(10,2,'2017-10-10 13:07:08',NULL,1,NULL,NULL),
(11,2,'2017-10-01 23:46:47',NULL,1,NULL,NULL),
(12,2,'2017-10-03 23:46:51',NULL,1,NULL,NULL),
(13,6,'2017-10-02 23:46:53',NULL,1,NULL,NULL),
(14,4,'2017-10-03 23:46:42',NULL,1,NULL,NULL),
(15,4,'2017-10-05 23:46:38',NULL,0,NULL,NULL),
(16,1,'2017-09-13 23:46:17',NULL,0,NULL,NULL),
(17,11,'2017-09-27 23:46:34','2017-10-12 23:47:30',2,NULL,0),
(18,11,'2017-08-31 23:46:21','2017-10-12 23:47:32',2,NULL,0),
(19,11,'2017-08-29 23:46:10',NULL,0,NULL,NULL),
(20,8,'2017-10-11 23:46:25',NULL,0,NULL,NULL),
(21,12,'2017-10-02 23:46:28','2017-10-11 23:47:19',2,NULL,1),
(22,12,'2017-10-08 23:17:49','2017-10-18 23:47:23',2,NULL,1),
(23,11,'2017-10-08 23:17:58',NULL,0,NULL,NULL),
(24,12,'2017-10-08 23:19:27',NULL,0,NULL,NULL),
(25,12,'2017-10-08 23:19:33',NULL,0,NULL,NULL),
(26,3,'2017-10-09 11:35:29',NULL,0,NULL,NULL),
(27,2,'2017-10-09 11:39:28',NULL,0,NULL,NULL),
(28,3,'2017-10-09 11:39:43',NULL,0,NULL,NULL),
(29,14,'2017-10-09 21:03:38',NULL,0,NULL,NULL),
(30,15,'2017-10-10 10:10:20',NULL,0,NULL,NULL),
(31,14,'2017-10-10 10:11:17',NULL,0,NULL,NULL),
(32,16,'2017-10-10 11:33:19',NULL,0,NULL,NULL),
(33,17,'2017-10-10 11:36:08',NULL,0,NULL,NULL),
(34,18,'2017-10-10 18:03:16',NULL,0,NULL,NULL);

/*Table structure for table `role` */

DROP TABLE IF EXISTS `role`;

CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `role` */

insert  into `role`(`id`,`role_name`) values 
(1,'supereme'),
(2,'admin');

/*Table structure for table `role_permission` */

DROP TABLE IF EXISTS `role_permission`;

CREATE TABLE `role_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rid` int(11) DEFAULT NULL COMMENT '角色ID',
  `pid` int(11) DEFAULT NULL COMMENT '权限ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

/*Data for the table `role_permission` */

insert  into `role_permission`(`id`,`rid`,`pid`) values 
(11,1,1),
(12,2,1),
(13,3,1),
(14,4,1);

/*Table structure for table `tablecolumninfo` */

DROP TABLE IF EXISTS `tablecolumninfo`;

CREATE TABLE `tablecolumninfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tid` int(11) DEFAULT NULL,
  `columnName` varchar(50) DEFAULT NULL,
  `columnType` varchar(50) DEFAULT NULL,
  `physicalColumnName` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tid` (`tid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

/*Data for the table `tablecolumninfo` */

insert  into `tablecolumninfo`(`id`,`tid`,`columnName`,`columnType`,`physicalColumnName`) values 
(1,1,'认筹人数','INTEGER',NULL),
(2,3,'销售人数','INTEGER',NULL),
(3,4,'到访人数','INTEGER',NULL),
(4,2,'电销人数','INTEGER',NULL),
(7,23,'学号','varchar',NULL),
(8,24,'姓名','varchar',NULL),
(9,28,'名称','varchar',NULL),
(10,24,'姓名','varchar',NULL);

/*Table structure for table `tableinfo` */

DROP TABLE IF EXISTS `tableinfo`;

CREATE TABLE `tableinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '所有的表',
  `name` varchar(100) DEFAULT NULL,
  `updateTime` datetime DEFAULT NULL,
  `cid` int(11) DEFAULT NULL COMMENT '企业ID',
  `state` int(11) DEFAULT NULL COMMENT '0禁用，1启用',
  `physicalTableName` varchar(1000) DEFAULT NULL,
  `showtype` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

/*Data for the table `tableinfo` */

insert  into `tableinfo`(`id`,`name`,`updateTime`,`cid`,`state`,`physicalTableName`,`showtype`) values 
(1,'认筹数据表','2017-10-06 11:10:40',8,NULL,NULL,NULL),
(2,'电销数据表','2017-10-04 11:11:05',8,NULL,NULL,NULL),
(3,'销售数据表','2017-08-30 10:34:31',8,NULL,'8xiaoshoushujubiao','0'),
(4,'到访数据表','2017-10-03 11:11:20',8,NULL,'8daofangshujubiao',NULL),
(8,'到访数据表','2017-08-30 03:22:07',8,NULL,NULL,'1'),
(23,'学生表','2017-10-09 06:43:30',8,NULL,'8xueshengbiao','0'),
(24,'用户表','2017-10-09 09:32:05',8,NULL,'8yonghubiao','0'),
(25,'教师表','2017-10-09 09:35:05',8,NULL,'8jiaoshibiao','0'),
(26,'员工表','2017-10-10 10:38:43',8,NULL,'8yuangongbiao','0'),
(27,'员工表','2017-10-10 10:38:45',8,NULL,'8yuangongbiao','0'),
(28,'商品表','2017-10-10 10:43:36',8,NULL,'8shangpinbiao','0'),
(29,'消息表','2017-10-11 12:35:03',8,NULL,'8xiaoxibiao','0');

/*Table structure for table `tableinfos` */

DROP TABLE IF EXISTS `tableinfos`;

CREATE TABLE `tableinfos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `tableinfos` */

insert  into `tableinfos`(`id`,`name`) values 
(1,'销售数据表'),
(2,'到访数据表'),
(3,'中介数据表'),
(4,'认筹数据表'),
(5,'媒体渠道数据表');

/*Table structure for table `user_role` */

DROP TABLE IF EXISTS `user_role`;

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rid` int(11) DEFAULT NULL COMMENT '角色ID',
  `uid` int(11) DEFAULT NULL COMMENT '用户ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `user_role` */

insert  into `user_role`(`id`,`rid`,`uid`) values 
(1,1,1),
(2,2,2),
(5,1,3),
(6,2,4);

/*Table structure for table `userinfo` */

DROP TABLE IF EXISTS `userinfo`;

CREATE TABLE `userinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `job` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `state` int(11) DEFAULT NULL COMMENT '状态    禁：0,不禁1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `userinfo` */

insert  into `userinfo`(`id`,`name`,`job`,`password`,`phone`,`email`,`state`) values 
(1,'马人才','Manager','12345678','13478911024',NULL,1),
(4,'张总','Customer','12345678','13478911025',NULL,1);

/*Table structure for table `weidulie` */

DROP TABLE IF EXISTS `weidulie`;

CREATE TABLE `weidulie` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lie_name` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `weidulie` */

insert  into `weidulie`(`id`,`lie_name`) values 
(1,'项目名称'),
(2,'所在区域'),
(3,'日期'),
(4,'到访人数'),
(5,'认筹人数');

/*Table structure for table `xstable` */

DROP TABLE IF EXISTS `xstable`;

CREATE TABLE `xstable` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(50) DEFAULT NULL COMMENT '项目名称',
  `area` varchar(100) DEFAULT NULL COMMENT '区域',
  `times` date DEFAULT NULL COMMENT '日期',
  `f_nums` int(10) DEFAULT NULL COMMENT '到访人数',
  `r_nums` int(10) DEFAULT NULL COMMENT '认筹人数',
  `t_nums` int(10) DEFAULT NULL COMMENT '退订人数',
  `shows` int(2) DEFAULT NULL COMMENT '0:折线图；1:柱状图',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Data for the table `xstable` */

insert  into `xstable`(`id`,`name`,`area`,`times`,`f_nums`,`r_nums`,`t_nums`,`shows`) values 
(1,'湖北武汉XXX有限公司','湖北武汉XXX地区','2017-06-25',13,15,1,1),
(2,'湖北武汉XXX有限公司','湖北武汉XXX地区','2017-03-25',32,11,3,1),
(3,'湖北武汉XXX有限公司','湖北武汉XXX地区','2011-08-25',43,34,5,1),
(4,'湖北武汉XXX有限公司','湖北武汉XXX地区','2016-08-25',54,66,6,1),
(5,'湖北武汉XXX有限公司','湖北武汉XXX地区','2012-08-25',23,33,7,1),
(6,'湖北武汉XXX有限公司','湖北武汉XXX地区','2013-08-25',12,22,5,1),
(7,'湖北武汉XXX有限公司','湖北武汉XXX地区','2014-08-25',54,5,4,1),
(8,'湖北武汉XXX有限公司','湖北武汉XXX地区','2015-08-25',43,5,2,1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
