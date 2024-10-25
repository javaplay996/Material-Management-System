/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - xinguanwuziguanli
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`xinguanwuziguanli` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `xinguanwuziguanli`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'wuzi_types','物资类型',1,'物资类型1',NULL,NULL,'2023-03-08 11:34:23'),(2,'wuzi_types','物资类型',2,'物资类型2',NULL,NULL,'2023-03-08 11:34:23'),(3,'wuzi_types','物资类型',3,'物资类型3',NULL,NULL,'2023-03-08 11:34:23'),(4,'wuzicaigou_yesno_types','采购审核',1,'待审核',NULL,NULL,'2023-03-08 11:34:23'),(5,'wuzicaigou_yesno_types','采购审核',2,'同意',NULL,NULL,'2023-03-08 11:34:23'),(6,'wuzicaigou_yesno_types','采购审核',3,'拒绝',NULL,NULL,'2023-03-08 11:34:23'),(7,'wuzicaigou_yesno_types','采购审核',4,'已入库',NULL,NULL,'2023-03-08 11:34:23'),(8,'lingyongguihuan_types','操作类型',1,'领用',NULL,NULL,'2023-03-08 11:34:23'),(9,'lingyongguihuan_types','操作类型',2,'归还',NULL,NULL,'2023-03-08 11:34:23'),(10,'zhiyuanzhepaiqian_types','派遣类型',1,'派遣类型1',NULL,NULL,'2023-03-08 11:34:23'),(11,'zhiyuanzhepaiqian_types','派遣类型',2,'派遣类型2',NULL,NULL,'2023-03-08 11:34:23'),(12,'zhiyuanzhepaiqian_types','派遣类型',3,'派遣类型3',NULL,NULL,'2023-03-08 11:34:23'),(13,'news_types','公告类型',1,'公告类型1',NULL,NULL,'2023-03-08 11:34:23'),(14,'news_types','公告类型',2,'公告类型2',NULL,NULL,'2023-03-08 11:34:23'),(15,'news_types','公告类型',3,'公告类型3',NULL,NULL,'2023-03-08 11:34:24'),(16,'sex_types','性别',1,'男',NULL,NULL,'2023-03-08 11:34:24'),(17,'sex_types','性别',2,'女',NULL,NULL,'2023-03-08 11:34:24');

/*Table structure for table `lingyongguihuan` */

DROP TABLE IF EXISTS `lingyongguihuan`;

CREATE TABLE `lingyongguihuan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `wuzi_id` int(11) DEFAULT NULL COMMENT '物资',
  `xiaoquguanli_id` int(11) DEFAULT NULL COMMENT '小区管理员',
  `lingyongguihuan_types` int(11) DEFAULT NULL COMMENT '操作类型 Search111',
  `lingyongguihuan_number` int(11) DEFAULT NULL COMMENT '操作数量',
  `lingyongguihuan_content` text COMMENT '备注',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '操作时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='物资领用归还';

/*Data for the table `lingyongguihuan` */

insert  into `lingyongguihuan`(`id`,`wuzi_id`,`xiaoquguanli_id`,`lingyongguihuan_types`,`lingyongguihuan_number`,`lingyongguihuan_content`,`insert_time`,`create_time`) values (1,1,1,1,298,'备注1','2023-03-08 11:34:58','2023-03-08 11:34:58'),(2,2,1,1,92,'备注2','2023-03-08 11:34:58','2023-03-08 11:34:58'),(3,3,3,1,426,'备注3','2023-03-08 11:34:58','2023-03-08 11:34:58'),(4,4,1,1,167,'备注4','2023-03-08 11:34:58','2023-03-08 11:34:58'),(5,5,1,2,344,'备注5','2023-03-08 11:34:58','2023-03-08 11:34:58'),(6,6,1,2,179,'备注6','2023-03-08 11:34:58','2023-03-08 11:34:58'),(7,7,1,1,436,'备注7','2023-03-08 11:34:58','2023-03-08 11:34:58'),(8,8,2,1,471,'备注8','2023-03-08 11:34:58','2023-03-08 11:34:58'),(9,9,2,1,187,'备注9','2023-03-08 11:34:58','2023-03-08 11:34:58'),(10,10,1,2,326,'备注10','2023-03-08 11:34:58','2023-03-08 11:34:58'),(11,11,3,2,415,'备注11','2023-03-08 11:34:58','2023-03-08 11:34:58'),(12,12,1,1,74,'备注12','2023-03-08 11:34:58','2023-03-08 11:34:58'),(13,13,2,1,367,'备注13','2023-03-08 11:34:58','2023-03-08 11:34:58'),(14,14,1,2,126,'备注14','2023-03-08 11:34:58','2023-03-08 11:34:58'),(15,13,1,1,100,'<p>领用 100 个物质13</p>','2023-03-08 13:32:10','2023-03-08 13:32:10'),(16,13,1,2,100,'<p>guihuan</p>','2023-03-08 13:32:30','2023-03-08 13:32:30');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `news_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'公告标题1',3,'upload/news1.jpg','2023-03-08 11:34:58','公告详情1','2023-03-08 11:34:58'),(2,'公告标题2',3,'upload/news2.jpg','2023-03-08 11:34:58','公告详情2','2023-03-08 11:34:58'),(3,'公告标题3',2,'upload/news3.jpg','2023-03-08 11:34:58','公告详情3','2023-03-08 11:34:58'),(4,'公告标题4',3,'upload/news4.jpg','2023-03-08 11:34:58','公告详情4','2023-03-08 11:34:58'),(5,'公告标题5',1,'upload/news5.jpg','2023-03-08 11:34:58','公告详情5','2023-03-08 11:34:58'),(6,'公告标题6',1,'upload/news6.jpg','2023-03-08 11:34:58','公告详情6','2023-03-08 11:34:58'),(7,'公告标题7',1,'upload/news7.jpg','2023-03-08 11:34:58','公告详情7','2023-03-08 11:34:58'),(8,'公告标题8',1,'upload/news8.jpg','2023-03-08 11:34:58','公告详情8','2023-03-08 11:34:58'),(9,'公告标题9',3,'upload/news9.jpg','2023-03-08 11:34:58','公告详情9','2023-03-08 11:34:58'),(10,'公告标题10',3,'upload/news10.jpg','2023-03-08 11:34:58','公告详情10','2023-03-08 11:34:58'),(11,'公告标题11',3,'upload/news11.jpg','2023-03-08 11:34:58','公告详情11','2023-03-08 11:34:58'),(12,'公告标题12',3,'upload/news12.jpg','2023-03-08 11:34:58','公告详情12','2023-03-08 11:34:58'),(13,'公告标题13',1,'upload/news13.jpg','2023-03-08 11:34:58','公告详情13','2023-03-08 11:34:58'),(14,'公告标题14',1,'upload/news14.jpg','2023-03-08 11:34:58','公告详情14','2023-03-08 11:34:58');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '采购员id',
  `username` varchar(100) NOT NULL COMMENT '采购员名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'a1','yonghu','采购员','5kqlw6dtd0l3u558vjfwsr6mwsvfwcfd','2023-03-08 11:48:24','2023-03-08 14:09:28'),(2,1,'a1','xiaoquguanli','小区管理员','9tba0chmcz91na5xs2egjtrvi288io23','2023-03-08 11:48:46','2023-03-08 14:09:43'),(3,1,'admin','users','管理员','tok1g8na5fvg2f9ljys5z0d2zbtgab0q','2023-03-08 11:56:01','2023-03-08 14:35:12');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '采购员名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-03-08 11:34:23');

/*Table structure for table `wuzi` */

DROP TABLE IF EXISTS `wuzi`;

CREATE TABLE `wuzi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `wuzi_uuid_number` varchar(200) DEFAULT NULL COMMENT '物资编号',
  `wuzi_name` varchar(200) DEFAULT NULL COMMENT '物资名称  Search111 ',
  `wuzi_types` int(11) DEFAULT NULL COMMENT '物资类型 Search111',
  `wuzi_kucun_number` int(11) DEFAULT NULL COMMENT '物资库存',
  `wuzi_content` text COMMENT '物资详情',
  `wuzi_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='物资';

/*Data for the table `wuzi` */

insert  into `wuzi`(`id`,`wuzi_uuid_number`,`wuzi_name`,`wuzi_types`,`wuzi_kucun_number`,`wuzi_content`,`wuzi_delete`,`insert_time`,`create_time`) values (1,'1678246498706','物资名称1',3,101,'物资详情1',1,'2023-03-08 11:34:58','2023-03-08 11:34:58'),(2,'1678246498702','物资名称2',1,102,'物资详情2',1,'2023-03-08 11:34:58','2023-03-08 11:34:58'),(3,'1678246498630','物资名称3',1,103,'物资详情3',1,'2023-03-08 11:34:58','2023-03-08 11:34:58'),(4,'1678246498679','物资名称4',2,104,'物资详情4',1,'2023-03-08 11:34:58','2023-03-08 11:34:58'),(5,'1678246498648','物资名称5',1,105,'物资详情5',1,'2023-03-08 11:34:58','2023-03-08 11:34:58'),(6,'1678246498683','物资名称6',2,106,'物资详情6',1,'2023-03-08 11:34:58','2023-03-08 11:34:58'),(7,'1678246498665','物资名称7',2,107,'物资详情7',1,'2023-03-08 11:34:58','2023-03-08 11:34:58'),(8,'1678246498642','物资名称8',1,108,'物资详情8',1,'2023-03-08 11:34:58','2023-03-08 11:34:58'),(9,'1678246498632','物资名称9',2,109,'物资详情9',1,'2023-03-08 11:34:58','2023-03-08 11:34:58'),(10,'1678246498661','物资名称10',2,1010,'物资详情10',1,'2023-03-08 11:34:58','2023-03-08 11:34:58'),(11,'1678246498644','物资名称11',1,1011,'物资详情11',1,'2023-03-08 11:34:58','2023-03-08 11:34:58'),(12,'1678246498631','物资名称12',3,1012,'物资详情12',1,'2023-03-08 11:34:58','2023-03-08 11:34:58'),(13,'1678246498629','物资名称13',1,931,'物资详情13',1,'2023-03-08 11:34:58','2023-03-08 11:34:58'),(14,'1678246498714','物资名称14',3,1266,'物资详情14',1,'2023-03-08 11:34:58','2023-03-08 11:34:58');

/*Table structure for table `wuzicaigou` */

DROP TABLE IF EXISTS `wuzicaigou`;

CREATE TABLE `wuzicaigou` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `wuzi_id` int(11) DEFAULT NULL COMMENT '物资',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '采购员',
  `wuzicaigou_number` int(11) DEFAULT NULL COMMENT '采购数量',
  `wuzicaigou_time` date DEFAULT NULL COMMENT '登记时间',
  `wuzicaigou_text` text COMMENT '备注',
  `wuzicaigou_yesno_types` int(11) DEFAULT NULL COMMENT '采购审核  Search111 ',
  `wuzicaigou_yesno_text` text COMMENT '审核结果',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='物资采购';

/*Data for the table `wuzicaigou` */

insert  into `wuzicaigou`(`id`,`wuzi_id`,`yonghu_id`,`wuzicaigou_number`,`wuzicaigou_time`,`wuzicaigou_text`,`wuzicaigou_yesno_types`,`wuzicaigou_yesno_text`,`insert_time`,`create_time`) values (1,1,1,365,'2023-03-08','备注1',1,NULL,'2023-03-08 11:34:58','2023-03-08 11:34:58'),(2,2,2,303,'2023-03-08','备注2',1,NULL,'2023-03-08 11:34:58','2023-03-08 11:34:58'),(3,3,3,498,'2023-03-08','备注3',1,NULL,'2023-03-08 11:34:58','2023-03-08 11:34:58'),(4,4,3,103,'2023-03-08','备注4',1,NULL,'2023-03-08 11:34:58','2023-03-08 11:34:58'),(5,5,2,180,'2023-03-08','备注5',1,NULL,'2023-03-08 11:34:58','2023-03-08 11:34:58'),(6,6,2,47,'2023-03-08','备注6',1,NULL,'2023-03-08 11:34:58','2023-03-08 11:34:58'),(7,7,2,277,'2023-03-08','备注7',1,NULL,'2023-03-08 11:34:58','2023-03-08 11:34:58'),(8,8,3,66,'2023-03-08','备注8',1,NULL,'2023-03-08 11:34:58','2023-03-08 11:34:58'),(9,9,2,304,'2023-03-08','备注9',1,NULL,'2023-03-08 11:34:58','2023-03-08 11:34:58'),(10,10,2,435,'2023-03-08','备注10',1,NULL,'2023-03-08 11:34:58','2023-03-08 11:34:58'),(11,11,3,159,'2023-03-08','备注11',1,NULL,'2023-03-08 11:34:58','2023-03-08 11:34:58'),(12,12,2,89,'2023-03-08','备注12',1,NULL,'2023-03-08 11:34:58','2023-03-08 11:34:58'),(13,13,2,168,'2023-03-08','备注13',2,'12312','2023-03-08 11:34:58','2023-03-08 11:34:58'),(14,14,1,252,'2023-03-08','备注14',4,'123','2023-03-08 11:34:58','2023-03-08 11:34:58'),(15,13,1,17,'2023-03-09','采购物资13   17个',4,'123123','2023-03-08 13:08:03','2023-03-08 13:08:03'),(16,13,1,20,'2023-03-09','采购物资13 20个',3,'111111','2023-03-08 13:08:39','2023-03-08 13:08:39');

/*Table structure for table `wuzidiaopei` */

DROP TABLE IF EXISTS `wuzidiaopei`;

CREATE TABLE `wuzidiaopei` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `wuzi_id` int(11) DEFAULT NULL COMMENT '物资',
  `xiaoquguanli_id` int(11) DEFAULT NULL COMMENT '小区管理员',
  `wuzidiaopei_number` int(11) DEFAULT NULL COMMENT '调用数量',
  `wuzidiaopei_content` text COMMENT '备注',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '调配时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='物资调配';

/*Data for the table `wuzidiaopei` */

insert  into `wuzidiaopei`(`id`,`wuzi_id`,`xiaoquguanli_id`,`wuzidiaopei_number`,`wuzidiaopei_content`,`insert_time`,`create_time`) values (1,1,3,197,'备注1','2023-03-08 11:34:58','2023-03-08 11:34:58'),(2,2,3,149,'备注2','2023-03-08 11:34:58','2023-03-08 11:34:58'),(3,3,3,471,'备注3','2023-03-08 11:34:58','2023-03-08 11:34:58'),(4,4,3,214,'备注4','2023-03-08 11:34:58','2023-03-08 11:34:58'),(5,5,1,183,'备注5','2023-03-08 11:34:58','2023-03-08 11:34:58'),(6,6,3,80,'备注6','2023-03-08 11:34:58','2023-03-08 11:34:58'),(7,7,3,485,'备注7','2023-03-08 11:34:58','2023-03-08 11:34:58'),(8,8,2,296,'备注8','2023-03-08 11:34:58','2023-03-08 11:34:58'),(9,9,1,327,'备注9','2023-03-08 11:34:58','2023-03-08 11:34:58'),(10,10,1,123,'备注10','2023-03-08 11:34:58','2023-03-08 11:34:58'),(11,11,2,214,'备注11','2023-03-08 11:34:58','2023-03-08 11:34:58'),(12,12,3,476,'备注12','2023-03-08 11:34:58','2023-03-08 11:34:58'),(13,13,1,366,'备注13','2023-03-08 11:34:58','2023-03-08 11:34:58'),(14,14,2,478,'备注14','2023-03-08 11:34:58','2023-03-08 11:34:58'),(15,13,2,99,'<p>123</p>','2023-03-08 13:34:27','2023-03-08 13:34:27');

/*Table structure for table `wuzijuanzeng` */

DROP TABLE IF EXISTS `wuzijuanzeng`;

CREATE TABLE `wuzijuanzeng` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `wuzi_id` int(11) DEFAULT NULL COMMENT '物资',
  `xiaoquguanli_id` int(11) DEFAULT NULL COMMENT '小区管理员',
  `wuzijuanzeng_name` varchar(200) DEFAULT NULL COMMENT '捐赠人  Search111 ',
  `wuzijuanzeng_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `wuzijuanzeng_address` varchar(200) DEFAULT NULL COMMENT '捐赠人住址',
  `wuzijuanzeng_number` int(11) DEFAULT NULL COMMENT '捐赠数量',
  `wuzijuanzeng_content` text COMMENT '备注',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '操作时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='物资捐赠';

/*Data for the table `wuzijuanzeng` */

insert  into `wuzijuanzeng`(`id`,`wuzi_id`,`xiaoquguanli_id`,`wuzijuanzeng_name`,`wuzijuanzeng_phone`,`wuzijuanzeng_address`,`wuzijuanzeng_number`,`wuzijuanzeng_content`,`insert_time`,`create_time`) values (1,1,2,'捐赠人1','17703786901','捐赠人住址1',326,'备注1','2023-03-08 11:34:58','2023-03-08 11:34:58'),(2,2,1,'捐赠人2','17703786902','捐赠人住址2',363,'备注2','2023-03-08 11:34:58','2023-03-08 11:34:58'),(3,3,1,'捐赠人3','17703786903','捐赠人住址3',99,'备注3','2023-03-08 11:34:58','2023-03-08 11:34:58'),(4,4,3,'捐赠人4','17703786904','捐赠人住址4',405,'备注4','2023-03-08 11:34:58','2023-03-08 11:34:58'),(5,5,2,'捐赠人5','17703786905','捐赠人住址5',438,'备注5','2023-03-08 11:34:58','2023-03-08 11:34:58'),(6,6,1,'捐赠人6','17703786906','捐赠人住址6',305,'备注6','2023-03-08 11:34:58','2023-03-08 11:34:58'),(7,7,2,'捐赠人7','17703786907','捐赠人住址7',471,'备注7','2023-03-08 11:34:58','2023-03-08 11:34:58'),(8,8,2,'捐赠人8','17703786908','捐赠人住址8',14,'备注8','2023-03-08 11:34:58','2023-03-08 11:34:58'),(9,9,2,'捐赠人9','17703786909','捐赠人住址9',444,'备注9','2023-03-08 11:34:58','2023-03-08 11:34:58'),(10,10,2,'捐赠人10','17703786910','捐赠人住址10',183,'备注10','2023-03-08 11:34:58','2023-03-08 11:34:58'),(11,11,1,'捐赠人11','17703786911','捐赠人住址11',460,'备注11','2023-03-08 11:34:58','2023-03-08 11:34:58'),(12,12,2,'捐赠人12','17703786912','捐赠人住址12',42,'备注12','2023-03-08 11:34:58','2023-03-08 11:34:58'),(13,13,3,'捐赠人13','17703786913','捐赠人住址13',185,'备注13','2023-03-08 11:34:58','2023-03-08 11:34:58'),(14,14,1,'捐赠人14','17703786914','捐赠人住址14',268,'备注14','2023-03-08 11:34:58','2023-03-08 11:34:58'),(15,13,1,'张三','17785599684','捐赠人住址13',20,'<p><span style=\"color: rgb(96, 98, 102);\">备注123</span></p>','2023-03-08 13:10:17','2023-03-08 13:10:17');

/*Table structure for table `wuzipaifa` */

DROP TABLE IF EXISTS `wuzipaifa`;

CREATE TABLE `wuzipaifa` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `zhiyaunzhe_id` int(11) DEFAULT NULL COMMENT '自愿者',
  `wuzi_id` int(11) DEFAULT NULL COMMENT '物资',
  `wuzipaifa_name` varchar(200) DEFAULT NULL COMMENT '派发居民 Search111 ',
  `wuzipaifa_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `wuzipaifa_address` varchar(200) DEFAULT NULL COMMENT '派发住址',
  `wuzipaifa_number` int(11) DEFAULT NULL COMMENT '派发数量',
  `wuzipaifa_content` text COMMENT '备注',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='物资派发';

/*Data for the table `wuzipaifa` */

insert  into `wuzipaifa`(`id`,`zhiyaunzhe_id`,`wuzi_id`,`wuzipaifa_name`,`wuzipaifa_phone`,`wuzipaifa_address`,`wuzipaifa_number`,`wuzipaifa_content`,`insert_time`,`create_time`) values (1,1,1,'派发居民1','17703786901','派发住址1',212,'备注1','2023-03-08 11:34:58','2023-03-08 11:34:58'),(2,2,2,'派发居民2','17703786902','派发住址2',153,'备注2','2023-03-08 11:34:58','2023-03-08 11:34:58'),(3,3,3,'派发居民3','17703786903','派发住址3',427,'备注3','2023-03-08 11:34:58','2023-03-08 11:34:58'),(4,4,4,'派发居民4','17703786904','派发住址4',11,'备注4','2023-03-08 11:34:58','2023-03-08 11:34:58'),(5,5,5,'派发居民5','17703786905','派发住址5',166,'备注5','2023-03-08 11:34:58','2023-03-08 11:34:58'),(6,6,6,'派发居民6','17703786906','派发住址6',422,'备注6','2023-03-08 11:34:58','2023-03-08 11:34:58'),(7,7,7,'派发居民7','17703786907','派发住址7',440,'备注7','2023-03-08 11:34:58','2023-03-08 11:34:58'),(8,8,8,'派发居民8','17703786908','派发住址8',73,'备注8','2023-03-08 11:34:58','2023-03-08 11:34:58'),(9,9,9,'派发居民9','17703786909','派发住址9',391,'备注9','2023-03-08 11:34:58','2023-03-08 11:34:58'),(10,10,10,'派发居民10','17703786910','派发住址10',500,'备注10','2023-03-08 11:34:58','2023-03-08 11:34:58'),(11,11,11,'派发居民11','17703786911','派发住址11',287,'备注11','2023-03-08 11:34:58','2023-03-08 11:34:58'),(12,12,12,'派发居民12','17703786912','派发住址12',319,'备注12','2023-03-08 11:34:58','2023-03-08 11:34:58'),(13,13,13,'派发居民13','17703786913','派发住址13',329,'备注13','2023-03-08 11:34:58','2023-03-08 11:34:58'),(14,14,14,'派发居民14','17703786914','派发住址14',154,'备注14','2023-03-08 11:34:58','2023-03-08 11:34:58');

/*Table structure for table `xiaoquguanli` */

DROP TABLE IF EXISTS `xiaoquguanli`;

CREATE TABLE `xiaoquguanli` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `xiaoquguanli_name` varchar(200) DEFAULT NULL COMMENT '小区管理员姓名 Search111 ',
  `xiaoquguanli_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `xiaoquguanli_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `xiaoquguanli_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号 ',
  `xiaoquguanli_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111 ',
  `xiaoquguanli_delete` int(11) DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='小区管理员';

/*Data for the table `xiaoquguanli` */

insert  into `xiaoquguanli`(`id`,`username`,`password`,`xiaoquguanli_name`,`xiaoquguanli_photo`,`xiaoquguanli_phone`,`xiaoquguanli_id_number`,`xiaoquguanli_email`,`sex_types`,`xiaoquguanli_delete`,`create_time`) values (1,'a1','123456','小区管理员姓名1','upload/xiaoquguanli1.jpg','17703786901','410224199010102001','1@qq.com',1,1,'2023-03-08 11:34:58'),(2,'a2','123456','小区管理员姓名2','upload/xiaoquguanli2.jpg','17703786902','410224199010102002','2@qq.com',1,1,'2023-03-08 11:34:58'),(3,'a3','123456','小区管理员姓名3','upload/xiaoquguanli3.jpg','17703786903','410224199010102003','3@qq.com',1,1,'2023-03-08 11:34:58');

/*Table structure for table `xuqiutongji` */

DROP TABLE IF EXISTS `xuqiutongji`;

CREATE TABLE `xuqiutongji` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `zhiyaunzhe_id` int(11) DEFAULT NULL COMMENT '自愿者',
  `xuqiutongji_name` varchar(200) DEFAULT NULL COMMENT '居民 Search111 ',
  `xuqiutongji_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `xuqiutongji_address` varchar(200) DEFAULT NULL COMMENT '住址',
  `xuqiutongji_content` text COMMENT '需求详情',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='需求收集';

/*Data for the table `xuqiutongji` */

insert  into `xuqiutongji`(`id`,`zhiyaunzhe_id`,`xuqiutongji_name`,`xuqiutongji_phone`,`xuqiutongji_address`,`xuqiutongji_content`,`insert_time`,`create_time`) values (1,1,'居民1','17703786901','住址1','需求详情1','2023-03-08 11:34:58','2023-03-08 11:34:58'),(2,2,'居民2','17703786902','住址2','需求详情2','2023-03-08 11:34:58','2023-03-08 11:34:58'),(3,3,'居民3','17703786903','住址3','需求详情3','2023-03-08 11:34:58','2023-03-08 11:34:58'),(4,4,'居民4','17703786904','住址4','需求详情4','2023-03-08 11:34:58','2023-03-08 11:34:58'),(5,5,'居民5','17703786905','住址5','需求详情5','2023-03-08 11:34:58','2023-03-08 11:34:58'),(6,6,'居民6','17703786906','住址6','需求详情6','2023-03-08 11:34:58','2023-03-08 11:34:58'),(7,7,'居民7','17703786907','住址7','需求详情7','2023-03-08 11:34:58','2023-03-08 11:34:58'),(8,8,'居民8','17703786908','住址8','需求详情8','2023-03-08 11:34:58','2023-03-08 11:34:58'),(9,9,'居民9','17703786909','住址9','需求详情9','2023-03-08 11:34:58','2023-03-08 11:34:58'),(10,10,'居民10','17703786910','住址10','需求详情10','2023-03-08 11:34:58','2023-03-08 11:34:58'),(11,11,'居民11','17703786911','住址11','需求详情11','2023-03-08 11:34:58','2023-03-08 11:34:58'),(12,12,'居民12','17703786912','住址12','需求详情12','2023-03-08 11:34:58','2023-03-08 11:34:58'),(13,13,'居民13','17703786913','住址13','需求详情13','2023-03-08 11:34:58','2023-03-08 11:34:58'),(14,14,'居民14','17703786914','住址14','需求详情14','2023-03-08 11:34:58','2023-03-08 11:34:58');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '采购员姓名 Search111 ',
  `yonghu_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '采购员手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '采购员身份证号 ',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `yonghu_danwei` varchar(200) DEFAULT NULL COMMENT '单位',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111 ',
  `yonghu_delete` int(11) DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='采购员';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_photo`,`yonghu_phone`,`yonghu_id_number`,`yonghu_email`,`yonghu_danwei`,`sex_types`,`yonghu_delete`,`create_time`) values (1,'a1','123456','采购员姓名1','upload/yonghu1.jpg','17703786901','410224199010102001','1@qq.com','单位3',2,1,'2023-03-08 11:34:58'),(2,'a2','123456','采购员姓名2','upload/yonghu2.jpg','17703786902','410224199010102002','2@qq.com','单位2',2,1,'2023-03-08 11:34:58'),(3,'a3','123456','采购员姓名3','upload/yonghu3.jpg','17703786903','410224199010102003','3@qq.com','单位1',1,1,'2023-03-08 11:34:58');

/*Table structure for table `zhiyaunzhe` */

DROP TABLE IF EXISTS `zhiyaunzhe`;

CREATE TABLE `zhiyaunzhe` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `zhiyaunzhe_name` varchar(200) DEFAULT NULL COMMENT '自愿者姓名 Search111 ',
  `zhiyaunzhe_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `zhiyaunzhe_phone` varchar(200) DEFAULT NULL COMMENT '自愿者联系方式',
  `zhiyaunzhe_id_number` varchar(200) DEFAULT NULL COMMENT '自愿者身份证号 ',
  `zhiyaunzhe_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `zhiyaunzhe_address` varchar(200) DEFAULT NULL COMMENT '住址',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111 ',
  `zhiyaunzhe_content` text COMMENT '自愿者服务记录',
  `zhiyaunzhe_delete` int(11) DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='自愿者';

/*Data for the table `zhiyaunzhe` */

insert  into `zhiyaunzhe`(`id`,`zhiyaunzhe_name`,`zhiyaunzhe_photo`,`zhiyaunzhe_phone`,`zhiyaunzhe_id_number`,`zhiyaunzhe_email`,`zhiyaunzhe_address`,`sex_types`,`zhiyaunzhe_content`,`zhiyaunzhe_delete`,`create_time`) values (1,'自愿者姓名1','upload/zhiyaunzhe1.jpg','17703786901','410224199010102001','1@qq.com','住址1',1,'自愿者服务记录1',1,'2023-03-08 11:34:58'),(2,'自愿者姓名2','upload/zhiyaunzhe2.jpg','17703786902','410224199010102002','2@qq.com','住址2',1,'自愿者服务记录2',1,'2023-03-08 11:34:58'),(3,'自愿者姓名3','upload/zhiyaunzhe3.jpg','17703786903','410224199010102003','3@qq.com','住址3',1,'自愿者服务记录3',1,'2023-03-08 11:34:58'),(4,'自愿者姓名4','upload/zhiyaunzhe4.jpg','17703786904','410224199010102004','4@qq.com','住址4',1,'自愿者服务记录4',1,'2023-03-08 11:34:58'),(5,'自愿者姓名5','upload/zhiyaunzhe5.jpg','17703786905','410224199010102005','5@qq.com','住址5',1,'自愿者服务记录5',1,'2023-03-08 11:34:58'),(6,'自愿者姓名6','upload/zhiyaunzhe6.jpg','17703786906','410224199010102006','6@qq.com','住址6',2,'自愿者服务记录6',1,'2023-03-08 11:34:58'),(7,'自愿者姓名7','upload/zhiyaunzhe7.jpg','17703786907','410224199010102007','7@qq.com','住址7',1,'自愿者服务记录7',1,'2023-03-08 11:34:58'),(8,'自愿者姓名8','upload/zhiyaunzhe8.jpg','17703786908','410224199010102008','8@qq.com','住址8',2,'自愿者服务记录8',1,'2023-03-08 11:34:58'),(9,'自愿者姓名9','upload/zhiyaunzhe9.jpg','17703786909','410224199010102009','9@qq.com','住址9',1,'自愿者服务记录9',1,'2023-03-08 11:34:58'),(10,'自愿者姓名10','upload/zhiyaunzhe10.jpg','17703786910','410224199010102010','10@qq.com','住址10',2,'自愿者服务记录10',1,'2023-03-08 11:34:58'),(11,'自愿者姓名11','upload/zhiyaunzhe11.jpg','17703786911','410224199010102011','11@qq.com','住址11',2,'自愿者服务记录11',1,'2023-03-08 11:34:58'),(12,'自愿者姓名12','upload/zhiyaunzhe12.jpg','17703786912','410224199010102012','12@qq.com','住址12',2,'自愿者服务记录12',1,'2023-03-08 11:34:58'),(13,'自愿者姓名13','upload/zhiyaunzhe13.jpg','17703786913','410224199010102013','13@qq.com','住址13',1,'自愿者服务记录13',1,'2023-03-08 11:34:58'),(14,'自愿者姓名14','upload/zhiyaunzhe14.jpg','17703786914','410224199010102014','14@qq.com','住址14',1,'自愿者服务记录14',1,'2023-03-08 11:34:58');

/*Table structure for table `zhiyuanzhepaiqian` */

DROP TABLE IF EXISTS `zhiyuanzhepaiqian`;

CREATE TABLE `zhiyuanzhepaiqian` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `zhiyuanzhepaiqian_name` varchar(200) DEFAULT NULL COMMENT '派遣标题  Search111 ',
  `zhiyuanzhepaiqian_types` int(11) DEFAULT NULL COMMENT '派遣类型  Search111 ',
  `zhiyuanzhepaiqian_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `zhiyuanzhepaiqian_time` timestamp NULL DEFAULT NULL COMMENT '派遣时间',
  `zhiyaunzhe_id` int(11) DEFAULT NULL COMMENT '自愿者',
  `zhiyuanzhepaiqian_content` text COMMENT '派遣详情',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='志愿者调派';

/*Data for the table `zhiyuanzhepaiqian` */

insert  into `zhiyuanzhepaiqian`(`id`,`zhiyuanzhepaiqian_name`,`zhiyuanzhepaiqian_types`,`zhiyuanzhepaiqian_photo`,`zhiyuanzhepaiqian_time`,`zhiyaunzhe_id`,`zhiyuanzhepaiqian_content`,`insert_time`,`create_time`) values (1,'派遣标题1',1,'upload/zhiyuanzhepaiqian1.jpg','2023-03-08 11:34:58',1,'派遣详情1','2023-03-08 11:34:58','2023-03-08 11:34:58'),(2,'派遣标题2',3,'upload/zhiyuanzhepaiqian2.jpg','2023-03-08 11:34:58',2,'派遣详情2','2023-03-08 11:34:58','2023-03-08 11:34:58'),(3,'派遣标题3',1,'upload/zhiyuanzhepaiqian3.jpg','2023-03-08 11:34:58',3,'派遣详情3','2023-03-08 11:34:58','2023-03-08 11:34:58'),(4,'派遣标题4',3,'upload/zhiyuanzhepaiqian4.jpg','2023-03-08 11:34:58',4,'派遣详情4','2023-03-08 11:34:58','2023-03-08 11:34:58'),(5,'派遣标题5',1,'upload/zhiyuanzhepaiqian5.jpg','2023-03-08 11:34:58',5,'派遣详情5','2023-03-08 11:34:58','2023-03-08 11:34:58'),(6,'派遣标题6',3,'upload/zhiyuanzhepaiqian6.jpg','2023-03-08 11:34:58',6,'派遣详情6','2023-03-08 11:34:58','2023-03-08 11:34:58'),(7,'派遣标题7',2,'upload/zhiyuanzhepaiqian7.jpg','2023-03-08 11:34:58',7,'派遣详情7','2023-03-08 11:34:58','2023-03-08 11:34:58'),(8,'派遣标题8',1,'upload/zhiyuanzhepaiqian8.jpg','2023-03-08 11:34:58',8,'派遣详情8','2023-03-08 11:34:58','2023-03-08 11:34:58'),(9,'派遣标题9',1,'upload/zhiyuanzhepaiqian9.jpg','2023-03-08 11:34:58',9,'派遣详情9','2023-03-08 11:34:58','2023-03-08 11:34:58'),(10,'派遣标题10',2,'upload/zhiyuanzhepaiqian10.jpg','2023-03-08 11:34:58',10,'派遣详情10','2023-03-08 11:34:58','2023-03-08 11:34:58'),(11,'派遣标题11',2,'upload/zhiyuanzhepaiqian11.jpg','2023-03-08 11:34:58',11,'派遣详情11','2023-03-08 11:34:58','2023-03-08 11:34:58'),(12,'派遣标题12',3,'upload/zhiyuanzhepaiqian12.jpg','2023-03-08 11:34:58',12,'派遣详情12','2023-03-08 11:34:58','2023-03-08 11:34:58'),(13,'派遣标题13',3,'upload/zhiyuanzhepaiqian13.jpg','2023-03-08 11:34:58',13,'派遣详情13','2023-03-08 11:34:58','2023-03-08 11:34:58'),(14,'派遣标题14',1,'upload/zhiyuanzhepaiqian14.jpg','2023-03-08 11:34:58',14,'派遣详情14','2023-03-08 11:34:58','2023-03-08 11:34:58'),(15,'123',2,'/upload/1678253595488.webp','2023-03-09 12:00:00',14,'<p>123</p>','2023-03-08 13:33:16','2023-03-08 13:33:16');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
