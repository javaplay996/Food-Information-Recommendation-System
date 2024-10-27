/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - meishixinxituijianxitong
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`meishixinxituijianxitong` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `meishixinxituijianxitong`;

/*Table structure for table `caipu` */

DROP TABLE IF EXISTS `caipu`;

CREATE TABLE `caipu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `caipu_name` varchar(200) DEFAULT NULL COMMENT '菜谱名称  Search111 ',
  `caipu_uuid_number` varchar(200) DEFAULT NULL COMMENT '菜谱编号',
  `caipu_photo` varchar(200) DEFAULT NULL COMMENT '菜谱照片',
  `caipu_weizhi` varchar(200) DEFAULT NULL COMMENT '小店位置',
  `caipu_video` varchar(200) DEFAULT NULL COMMENT '视频推荐',
  `caipu_jiage` decimal(10,2) DEFAULT NULL COMMENT '菜品价格 ',
  `caipu_types` int(11) DEFAULT NULL COMMENT '菜谱类型 Search111',
  `caipu_kouwei_types` int(11) DEFAULT NULL COMMENT '口味 Search111',
  `caipu_clicknum` int(11) DEFAULT NULL COMMENT '菜谱热度',
  `caipu_content` text COMMENT '菜品介绍 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='菜谱';

/*Data for the table `caipu` */

insert  into `caipu`(`id`,`caipu_name`,`caipu_uuid_number`,`caipu_photo`,`caipu_weizhi`,`caipu_video`,`caipu_jiage`,`caipu_types`,`caipu_kouwei_types`,`caipu_clicknum`,`caipu_content`,`insert_time`,`create_time`) values (1,'菜谱名称1','1677844866370','/upload/1677849348584.jpg','小店位置1','upload/video.mp4','787.31',1,4,309,'<p>菜品介绍1</p>','2023-03-03 20:01:06','2023-03-03 20:01:06'),(2,'菜谱名称2','1677844866345','/upload/1677849334456.jpg','小店位置2','upload/video.mp4','754.58',4,2,25,'<p>菜品介绍2</p>','2023-03-03 20:01:06','2023-03-03 20:01:06'),(4,'菜谱名称4','1677844866351','/upload/1677849308941.jpg','小店位置4','upload/video.mp4','544.14',1,3,105,'<p>菜品介绍4</p>','2023-03-03 20:01:06','2023-03-03 20:01:06'),(5,'菜谱名称5','1677844866361','/upload/1677849293852.jpg','小店位置5','upload/video.mp4','558.14',4,2,314,'<p>菜品介绍5</p>','2023-03-03 20:01:06','2023-03-03 20:01:06'),(6,'菜谱名称6','1677844866355','/upload/1677849281396.jpg','小店位置6','upload/video.mp4','65.88',3,3,385,'<p>菜品介绍6</p>','2023-03-03 20:01:06','2023-03-03 20:01:06'),(7,'菜谱名称7','1677844866346','/upload/1677849269378.jpg','小店位置7','upload/video.mp4','926.45',2,1,388,'<p>菜品介绍7</p>','2023-03-03 20:01:06','2023-03-03 20:01:06'),(8,'菜谱名称8','1677844866318','/upload/1677849256219.jpg','小店位置8','upload/video.mp4','378.70',4,1,148,'<p>菜品介绍8</p>','2023-03-03 20:01:06','2023-03-03 20:01:06'),(9,'菜谱名称9','1677844866317','/upload/1677849239928.jpg','小店位置9','upload/video.mp4','247.47',2,2,254,'<p>菜品介绍9</p>','2023-03-03 20:01:06','2023-03-03 20:01:06'),(10,'菜谱名称10','1677844866337','/upload/1677849225897.jpg','小店位置10','upload/video.mp4','425.23',2,4,86,'<p>菜品介绍10</p>','2023-03-03 20:01:06','2023-03-03 20:01:06'),(11,'菜谱名称11','1677844866334','/upload/1677849214174.jpg','小店位置11','upload/video.mp4','575.76',3,4,30,'<p>菜品介绍11</p>','2023-03-03 20:01:06','2023-03-03 20:01:06'),(12,'菜谱名称12','1677844866344','/upload/1677849203017.jpg','小店位置12','upload/video.mp4','331.12',1,4,405,'<p>菜品介绍12</p>','2023-03-03 20:01:06','2023-03-03 20:01:06'),(13,'菜谱名称13','1677844866319','/upload/1677849191928.jpg','小店位置13','upload/video.mp4','128.45',3,1,385,'<p>菜品介绍13</p>','2023-03-03 20:01:06','2023-03-03 20:01:06'),(14,'菜谱名称14','1677844866330','/upload/1677849181906.jpg','小店位置14','upload/video.mp4','810.27',2,4,118,'<p>菜品介绍14</p>','2023-03-03 20:01:06','2023-03-03 20:01:06');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','upload/config1.jpg'),(2,'轮播图2','upload/config2.jpg'),(3,'轮播图3','upload/config3.jpg');

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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'sex_types','性别类型',1,'男',NULL,NULL,'2023-03-03 20:00:53'),(2,'sex_types','性别类型',2,'女',NULL,NULL,'2023-03-03 20:00:53'),(3,'caipu_types','菜谱类型',1,'菜谱类型1',NULL,NULL,'2023-03-03 20:00:53'),(4,'caipu_types','菜谱类型',2,'菜谱类型2',NULL,NULL,'2023-03-03 20:00:53'),(5,'caipu_types','菜谱类型',3,'菜谱类型3',NULL,NULL,'2023-03-03 20:00:53'),(6,'caipu_types','菜谱类型',4,'菜谱类型4',NULL,NULL,'2023-03-03 20:00:54'),(7,'caipu_kouwei_types','口味',1,'麻辣',NULL,NULL,'2023-03-03 20:00:54'),(8,'caipu_kouwei_types','口味',2,'鲜香',NULL,NULL,'2023-03-03 20:00:54'),(9,'caipu_kouwei_types','口味',3,'清淡',NULL,NULL,'2023-03-03 20:00:54'),(10,'caipu_kouwei_types','口味',4,'香辣',NULL,NULL,'2023-03-03 20:00:54'),(11,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2023-03-03 20:00:54'),(12,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2023-03-03 20:00:54'),(13,'forum_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2023-03-03 20:00:54'),(14,'forum_collection_types','收藏表类型',2,'赞',NULL,NULL,'2023-03-03 20:00:54'),(15,'gonggao_types','资讯类型',1,'资讯类型1',NULL,NULL,'2023-03-03 20:00:54'),(16,'gonggao_types','资讯类型',2,'资讯类型2',NULL,NULL,'2023-03-03 20:00:54');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `forum_content` text COMMENT '发布内容',
  `zan_number` int(11) DEFAULT NULL COMMENT '赞',
  `cai_number` int(11) DEFAULT NULL COMMENT '踩',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`yonghu_id`,`users_id`,`forum_content`,`zan_number`,`cai_number`,`super_ids`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'帖子标题1',1,NULL,'发布内容1',432,322,84,1,'2023-03-03 20:01:06','2023-03-03 20:01:06','2023-03-03 20:01:06'),(2,'帖子标题2',2,NULL,'发布内容2',343,257,420,1,'2023-03-03 20:01:06','2023-03-03 20:01:06','2023-03-03 20:01:06'),(3,'帖子标题3',2,NULL,'发布内容3',466,109,406,1,'2023-03-03 20:01:06','2023-03-03 20:01:06','2023-03-03 20:01:06'),(4,'帖子标题4',1,NULL,'发布内容4',352,219,247,1,'2023-03-03 20:01:06','2023-03-03 20:01:06','2023-03-03 20:01:06'),(5,'帖子标题5',2,NULL,'发布内容5',128,8,466,1,'2023-03-03 20:01:06','2023-03-03 20:01:06','2023-03-03 20:01:06'),(6,'帖子标题6',3,NULL,'发布内容6',253,404,144,1,'2023-03-03 20:01:06','2023-03-03 20:01:06','2023-03-03 20:01:06'),(7,'帖子标题7',3,NULL,'发布内容7',400,413,124,1,'2023-03-03 20:01:06','2023-03-03 20:01:06','2023-03-03 20:01:06'),(8,'帖子标题8',1,NULL,'发布内容8',236,411,31,1,'2023-03-03 20:01:06','2023-03-03 20:01:06','2023-03-03 20:01:06'),(9,'帖子标题9',3,NULL,'发布内容9',41,48,106,1,'2023-03-03 20:01:06','2023-03-03 20:01:06','2023-03-03 20:01:06'),(10,'帖子标题10',3,NULL,'发布内容10',242,156,145,1,'2023-03-03 20:01:06','2023-03-03 20:01:06','2023-03-03 20:01:06'),(11,'帖子标题11',2,NULL,'发布内容11',77,150,471,1,'2023-03-03 20:01:06','2023-03-03 20:01:06','2023-03-03 20:01:06'),(12,'帖子标题12',3,NULL,'发布内容12',330,195,204,1,'2023-03-03 20:01:06','2023-03-03 20:01:06','2023-03-03 20:01:06'),(13,'帖子标题13',1,NULL,'发布内容13',209,285,285,1,'2023-03-03 20:01:06','2023-03-03 21:25:48','2023-03-03 20:01:06'),(14,'帖子标题14',3,NULL,'发布内容14',206,424,36,1,'2023-03-03 20:01:06','2023-03-03 21:25:40','2023-03-03 20:01:06');

/*Table structure for table `forum_collection` */

DROP TABLE IF EXISTS `forum_collection`;

CREATE TABLE `forum_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_id` int(11) DEFAULT NULL COMMENT '论坛',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `forum_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='论坛收藏';

/*Data for the table `forum_collection` */

insert  into `forum_collection`(`id`,`forum_id`,`yonghu_id`,`forum_collection_types`,`insert_time`,`create_time`) values (1,1,1,1,'2023-03-03 20:01:06','2023-03-03 20:01:06'),(2,2,3,1,'2023-03-03 20:01:06','2023-03-03 20:01:06'),(3,3,2,1,'2023-03-03 20:01:06','2023-03-03 20:01:06'),(4,4,2,1,'2023-03-03 20:01:06','2023-03-03 20:01:06'),(5,5,3,1,'2023-03-03 20:01:06','2023-03-03 20:01:06'),(6,6,2,1,'2023-03-03 20:01:06','2023-03-03 20:01:06'),(7,7,2,1,'2023-03-03 20:01:06','2023-03-03 20:01:06'),(8,8,1,1,'2023-03-03 20:01:06','2023-03-03 20:01:06'),(9,9,3,1,'2023-03-03 20:01:06','2023-03-03 20:01:06'),(10,10,2,1,'2023-03-03 20:01:06','2023-03-03 20:01:06'),(11,11,1,1,'2023-03-03 20:01:06','2023-03-03 20:01:06'),(12,12,3,1,'2023-03-03 20:01:06','2023-03-03 20:01:06'),(14,14,3,1,'2023-03-03 20:01:06','2023-03-03 20:01:06'),(17,14,1,2,'2023-03-03 21:25:40','2023-03-03 21:25:40');

/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '饮食资讯 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '图片 ',
  `gonggao_types` int(11) NOT NULL COMMENT '资讯类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告发布时间 ',
  `gonggao_content` text COMMENT '资讯详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='饮食资讯';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_photo`,`gonggao_types`,`insert_time`,`gonggao_content`,`create_time`) values (1,'饮食资讯1','upload/gonggao1.jpg',1,'2023-03-03 20:01:06','资讯详情1','2023-03-03 20:01:06'),(2,'饮食资讯2','upload/gonggao2.jpg',2,'2023-03-03 20:01:06','资讯详情2','2023-03-03 20:01:06'),(3,'饮食资讯3','upload/gonggao3.jpg',2,'2023-03-03 20:01:06','资讯详情3','2023-03-03 20:01:06'),(4,'饮食资讯4','upload/gonggao4.jpg',2,'2023-03-03 20:01:06','资讯详情4','2023-03-03 20:01:06'),(5,'饮食资讯5','upload/gonggao5.jpg',1,'2023-03-03 20:01:06','资讯详情5','2023-03-03 20:01:06'),(6,'饮食资讯6','upload/gonggao6.jpg',1,'2023-03-03 20:01:06','资讯详情6','2023-03-03 20:01:06'),(7,'饮食资讯7','upload/gonggao7.jpg',2,'2023-03-03 20:01:06','资讯详情7','2023-03-03 20:01:06'),(8,'饮食资讯8','upload/gonggao8.jpg',1,'2023-03-03 20:01:06','资讯详情8','2023-03-03 20:01:06'),(9,'饮食资讯9','upload/gonggao9.jpg',1,'2023-03-03 20:01:06','资讯详情9','2023-03-03 20:01:06'),(10,'饮食资讯10','upload/gonggao10.jpg',1,'2023-03-03 20:01:06','资讯详情10','2023-03-03 20:01:06'),(11,'饮食资讯11','upload/gonggao11.jpg',1,'2023-03-03 20:01:06','资讯详情11','2023-03-03 20:01:06'),(12,'饮食资讯12','upload/gonggao12.jpg',1,'2023-03-03 20:01:06','资讯详情12','2023-03-03 20:01:06'),(13,'饮食资讯13','upload/gonggao13.jpg',2,'2023-03-03 20:01:06','资讯详情13','2023-03-03 20:01:06'),(14,'饮食资讯14','upload/gonggao14.jpg',2,'2023-03-03 20:01:06','资讯详情14','2023-03-03 20:01:06');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'a1','yonghu','用户','0h4dii6p8mmxo0vz9bykwivn7mjvdbix','2023-03-03 20:02:23','2023-03-03 22:25:06'),(2,1,'admin','users','管理员','ejeuo5614pbti20vshgnx3n9tqmjtkvi','2023-03-03 20:44:05','2023-03-03 22:37:20');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-03-03 20:00:53');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_email`,`create_time`) values (1,'a1','123456','用户姓名1','17703786901','410224199010102001','upload/yonghu1.jpg',1,'1@qq.com','2023-03-03 20:01:06'),(2,'a2','123456','用户姓名2','17703786902','410224199010102002','upload/yonghu2.jpg',2,'2@qq.com','2023-03-03 20:01:06'),(3,'a3','123456','用户姓名3','17703786903','410224199010102003','upload/yonghu3.jpg',2,'3@qq.com','2023-03-03 20:01:06');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
