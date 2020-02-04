/*
SQLyog Ultimate v12.5.0 (64 bit)
MySQL - 5.5.62 : Database - db_stock_manager_ssm
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_stock_manager_ssm` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `db_stock_manager_ssm`;

/*Table structure for table `authority` */

DROP TABLE IF EXISTS `authority`;

CREATE TABLE `authority` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roleId` int(11) NOT NULL,
  `menuId` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `roleId` (`roleId`),
  KEY `menuId` (`menuId`),
  CONSTRAINT `authority_ibfk_1` FOREIGN KEY (`roleId`) REFERENCES `role` (`id`),
  CONSTRAINT `authority_ibfk_2` FOREIGN KEY (`menuId`) REFERENCES `menu` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=803 DEFAULT CHARSET=utf8;

/*Data for the table `authority` */

insert  into `authority`(`id`,`roleId`,`menuId`) values 
(148,2,35),
(149,2,36),
(150,2,25),
(151,2,1),
(152,2,14),
(153,2,15),
(766,1,17),
(767,1,18),
(768,1,19),
(769,1,20),
(770,1,13),
(771,1,21),
(772,1,22),
(773,1,23),
(774,1,35),
(775,1,36),
(776,1,14),
(777,1,15),
(778,1,24),
(779,1,25),
(780,1,26),
(781,1,32),
(782,1,33),
(783,1,34),
(784,1,37),
(785,1,38),
(786,1,39),
(787,1,40),
(788,1,41),
(789,1,42),
(790,1,43),
(791,1,44),
(792,1,45),
(793,1,46),
(794,1,75),
(795,1,80),
(796,1,81),
(797,1,82),
(798,1,83),
(799,1,84),
(800,1,1),
(801,1,5),
(802,1,31);

/*Table structure for table `c3p0testtable` */

DROP TABLE IF EXISTS `c3p0testtable`;

CREATE TABLE `c3p0testtable` (
  `a` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `c3p0testtable` */

/*Table structure for table `log` */

DROP TABLE IF EXISTS `log`;

CREATE TABLE `log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) NOT NULL,
  `createTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8;

/*Data for the table `log` */

insert  into `log`(`id`,`content`,`createTime`) values 
(13,'用户名为admin的用户登录时输入验证码错误!','2018-12-16 18:17:30'),
(14,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2018-12-16 18:22:56'),
(15,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2018-12-16 18:37:15'),
(16,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2018-12-16 18:40:21'),
(17,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2018-12-16 19:11:49'),
(18,'用户名为{admin}，的用户成功修改密码!','2018-12-16 19:13:32'),
(19,'用户名为{admin}，的用户成功修改密码!','2018-12-16 19:14:01'),
(20,'用户名为{猿来入此}，角色为{普通用户}的用户登录成功!','2018-12-16 19:17:46'),
(21,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2019-03-04 18:33:35'),
(22,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2019-03-04 18:39:00'),
(23,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2019-03-04 19:12:32'),
(24,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2019-03-04 19:13:45'),
(25,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2019-03-04 19:14:44'),
(26,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2019-03-04 19:15:53'),
(27,'用户名为admin的用户登录时输入验证码错误!','2019-03-04 19:34:41'),
(28,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2019-03-04 19:34:48'),
(29,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2019-03-04 20:53:11'),
(30,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2019-03-04 21:07:32'),
(31,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2019-03-04 21:09:13'),
(32,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2019-03-04 21:37:56'),
(33,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2019-03-04 21:39:29'),
(34,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2019-03-05 21:21:19'),
(35,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2019-03-05 21:30:29'),
(36,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2019-03-05 21:56:28'),
(37,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2019-03-06 19:18:05'),
(38,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2019-03-06 19:32:59'),
(39,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2019-03-06 19:33:25'),
(40,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2019-03-06 20:29:06'),
(41,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2019-03-06 22:57:00'),
(42,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2019-03-06 22:58:40'),
(43,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2019-03-06 22:59:56'),
(44,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2019-03-06 23:01:46'),
(45,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2019-03-06 23:07:41'),
(46,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2019-03-06 23:10:43'),
(47,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2019-03-06 23:12:01'),
(48,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2019-03-07 18:06:58'),
(49,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2019-03-07 18:43:15'),
(50,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2019-03-07 18:52:58'),
(51,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2019-03-07 18:54:54'),
(52,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2019-03-07 18:58:42'),
(53,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2019-03-07 19:08:39'),
(54,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2019-03-07 19:36:51'),
(55,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2019-03-07 19:55:40'),
(56,'用户名为admin的用户登录时输入验证码错误!','2019-03-07 19:58:23'),
(57,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2019-03-07 19:58:32'),
(58,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2019-03-07 21:13:43'),
(59,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2019-03-07 21:36:17'),
(60,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2019-03-07 21:38:50'),
(61,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2019-03-07 22:34:44'),
(62,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2019-03-07 22:36:24'),
(63,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2019-03-07 22:46:56'),
(64,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2019-03-08 17:48:42'),
(65,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2019-03-08 17:59:38'),
(66,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2019-03-08 18:03:14'),
(67,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2019-03-08 18:26:26'),
(68,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2019-03-08 18:41:02'),
(69,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2019-03-08 19:23:34'),
(70,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2019-03-08 19:28:38'),
(71,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2019-03-08 20:17:08'),
(72,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2019-03-08 20:19:04'),
(73,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2019-03-08 20:25:21'),
(74,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2019-03-08 20:28:17'),
(75,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2019-03-08 20:29:54'),
(76,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2019-03-08 21:19:54'),
(77,'用户名为admin的用户登录时输入验证码错误!','2019-03-09 10:34:10'),
(78,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2019-03-09 10:34:19'),
(79,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2019-03-09 11:05:13'),
(80,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2019-03-09 11:07:16'),
(81,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2019-03-09 11:09:04'),
(82,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2019-03-09 11:58:26'),
(83,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2019-03-09 11:59:51'),
(84,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2019-03-09 12:01:25'),
(85,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2019-03-09 12:28:06'),
(86,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2019-03-09 13:10:14'),
(87,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2019-03-09 13:14:52'),
(88,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2019-03-09 13:18:50'),
(89,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2019-03-09 13:35:26'),
(90,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2019-03-09 14:20:06'),
(91,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2019-03-09 15:07:02'),
(92,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2019-03-09 15:42:32'),
(93,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2019-03-09 15:49:26'),
(94,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2019-03-09 16:09:12'),
(95,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2019-03-09 16:22:16'),
(96,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2019-03-09 16:54:19'),
(97,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2019-03-09 16:58:00'),
(98,'用户名为admin的用户登录时输入验证码错误!','2019-03-09 17:01:50'),
(99,'用户名为admin的用户登录时输入验证码错误!','2019-03-09 17:01:58'),
(100,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2019-03-09 17:02:06'),
(101,'用户名为admin的用户登录时输入验证码错误!','2019-03-09 17:06:49'),
(102,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2019-03-09 17:06:56'),
(103,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2019-03-09 17:11:01'),
(104,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2019-03-09 17:13:14'),
(105,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2019-03-09 17:25:47'),
(106,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2019-03-09 17:38:34'),
(107,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2019-03-09 17:41:13'),
(108,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2019-03-09 17:47:49'),
(109,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2019-05-28 23:48:34'),
(110,'用户名为admin的用户登录时输入验证码错误!','2019-05-28 23:59:24'),
(111,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2019-05-28 23:59:31'),
(112,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2019-05-29 08:54:47'),
(113,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2019-05-31 09:14:58'),
(114,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2019-05-31 10:05:54'),
(115,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2019-05-31 15:06:27'),
(116,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2019-05-31 15:11:10'),
(117,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2019-06-01 11:40:28'),
(118,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2019-06-01 19:51:33'),
(119,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2019-06-01 20:30:19'),
(120,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2019-06-01 20:50:56'),
(121,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2019-06-01 20:58:04'),
(122,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2019-06-01 21:46:29'),
(123,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2019-06-02 08:53:06'),
(124,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2019-06-02 09:20:07'),
(125,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2019-06-02 09:27:15'),
(126,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2019-06-02 10:13:45');

/*Table structure for table `menu` */

DROP TABLE IF EXISTS `menu`;

CREATE TABLE `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parentId` int(11) NOT NULL DEFAULT '-1',
  `name` varchar(32) NOT NULL,
  `url` varchar(128) DEFAULT NULL,
  `icon` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8;

/*Data for the table `menu` */

insert  into `menu`(`id`,`parentId`,`name`,`url`,`icon`) values 
(1,0,'系统设置','','icon-advancedsettings'),
(5,1,'菜单管理','../admin/menu/list','icon-chart-organisation'),
(13,1,'角色管理','../admin/role/list','icon-group-key'),
(14,0,'用户管理','','icon-group-gear'),
(15,14,'用户列表','../admin/user/list','icon-group'),
(17,5,'添加','openAdd()','icon-add'),
(18,5,'编辑','openEdit()','icon-bullet-edit'),
(19,5,'删除','remove()','icon-cross'),
(20,5,'添加按钮','openAddMenu()','icon-add'),
(21,13,'添加','openAdd()','icon-add'),
(22,13,'编辑','openEdit()','icon-bullet-edit'),
(23,13,'删除','remove()','icon-cross'),
(24,15,'添加','openAdd()','icon-add'),
(25,15,'编辑','openEdit()','icon-bullet-edit'),
(26,15,'删除','remove()','icon-cross'),
(31,0,'系统日志','','icon-table-cell'),
(32,31,'日志列表','../admin/log/list','icon-page-white-text'),
(33,32,'添加日志','openAdd()','icon-add1'),
(34,32,'删除','remove()','icon-cancel'),
(35,1,'修改密码','edit_password','icon-lock-edit'),
(36,35,'修改密码','openAdd()','icon-lock-edit'),
(37,0,'供应商管理','','icon-user-brown'),
(38,37,'供应商列表','../admin/supplier/list','icon-vcard'),
(39,38,'添加','openAdd()','icon-add'),
(40,38,'编辑','openEdit()','icon-bullet-edit'),
(41,38,'删除','remove()','icon-cancel'),
(42,0,'商品管理','','icon-medal-bronze-1'),
(43,42,'商品列表','../admin/product/list','icon-table-cell'),
(44,43,'添加','openAdd()','icon-add'),
(45,43,'编辑','openEdit()','icon-book-edit'),
(46,43,'删除','remove()','icon-DeleteRed'),
(47,0,'进货管理','','icon-package-add'),
(48,47,'进货列表','../admin/order_in/list','icon-text-padding-top'),
(49,47,'库存盘点','../admin/stock/list','icon-brick-edit'),
(50,48,'添加进货单','openAdd()','icon-add'),
(51,48,'支付进货单','openEdit()','icon-cart-edit'),
(52,48,'查看进货单','openView()','icon-eye'),
(53,49,'调整库存','openEdit()','icon-book-addresses-edit'),
(54,49,'删除库存','remove()','icon-DeleteRed'),
(55,0,'进货退货','','icon-basket-delete'),
(56,55,'进货退货列表','../admin/order_in_reback/list','icon-mail'),
(57,56,'添加退货单','openAdd()','icon-add'),
(58,56,'查看退货单','openView()','icon-eye'),
(59,56,'支付退货单','openEdit()','icon-coins'),
(75,43,'导入商品','openImport()','icon-upload'),
(76,5,'haha','icon-add','icon-arrow-rotate-clockwise'),
(77,5,'haha','openAdd()','icon-arrow-rotate-clockwise'),
(78,31,'haha','sagasg/dsgsd ','icon-arrow-rotate-clockwise'),
(80,0,'门店管理','','icon-house-key'),
(81,80,'门店列表','../admin/shop/list','icon-page-white-text-width'),
(82,81,'添加门店','openAdd()','icon-add'),
(83,81,'编辑门店','openEdit()','icon-report-edit'),
(84,81,'删除门店','remove()','icon-cancel');

/*Table structure for table `order_in` */

DROP TABLE IF EXISTS `order_in`;

CREATE TABLE `order_in` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `money` float(11,2) DEFAULT NULL,
  `productNum` int(5) NOT NULL,
  `payType` int(2) NOT NULL DEFAULT '0',
  `status` int(2) NOT NULL DEFAULT '0',
  `operator` varchar(32) NOT NULL,
  `remark` varchar(128) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

/*Data for the table `order_in` */

insert  into `order_in`(`id`,`money`,`productNum`,`payType`,`status`,`operator`,`remark`,`createTime`) values 
(13,1408426.00,182,4,1,'admin','进的高科技产品。','2019-03-08 18:47:04'),
(14,8064.00,222,2,1,'admin','生活用品。','2019-03-08 18:48:02'),
(15,55104.00,10,1,0,'admin','进了全量商品！','2019-03-08 18:48:46'),
(16,155335.00,1004,4,1,'admin','进货一大批！','2019-03-08 21:35:30'),
(17,5291.00,4,2,0,'admin','进货三种商品！','2019-03-09 17:29:13'),
(18,29828.00,8,0,0,'admin','','2019-03-09 17:44:49'),
(19,19998.00,1,0,0,'admin','','2019-05-31 15:12:31');

/*Table structure for table `order_in_detail` */

DROP TABLE IF EXISTS `order_in_detail`;

CREATE TABLE `order_in_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderInId` int(11) NOT NULL,
  `productName` varchar(128) NOT NULL,
  `price` float(8,2) NOT NULL,
  `productNum` int(5) NOT NULL,
  `money` float(8,0) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `orderInId` (`orderInId`),
  CONSTRAINT `order_in_detail_ibfk_1` FOREIGN KEY (`orderInId`) REFERENCES `order_in` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

/*Data for the table `order_in_detail` */

insert  into `order_in_detail`(`id`,`orderInId`,`productName`,`price`,`productNum`,`money`) values 
(18,13,'洗衣机',4399.00,10,43990),
(19,13,'电视机',2988.00,122,364536),
(20,13,'智能机器人',19998.00,50,999900),
(21,14,'男士长袖',66.00,100,6600),
(22,14,'义乌市震昊编织袋无纺布袋有限公司',12.00,122,1464),
(23,15,'Java实战开发教程',128.00,2,256),
(24,15,'洗衣机',4399.00,2,8798),
(25,15,'电视机',2988.00,2,5976),
(26,15,'智能机器人',19998.00,2,39996),
(27,15,'男士长袖',66.00,1,66),
(28,15,'义乌市震昊编织袋无纺布袋有限公司',12.00,1,12),
(29,16,'Java实战开发教程',128.00,999,127872),
(30,16,'男士长袖',66.00,1,66),
(31,16,'义乌市震昊编织袋无纺布袋有限公司',12.00,1,12),
(32,16,'洗衣机',4399.00,1,4399),
(33,16,'电视机',2988.00,1,2988),
(34,16,'智能机器人',19998.00,1,19998),
(35,17,'男士长袖',66.00,1,66),
(36,17,'电视机',2988.00,1,2988),
(37,17,'Iphone XR 128G',238.00,1,238),
(38,17,'笔记本电脑',1999.00,1,1999),
(39,18,'Java实战开发教程',128.00,1,128),
(40,18,'男士长袖',66.00,1,66),
(41,18,'义乌市震昊编织袋无纺布袋有限公司',12.00,1,12),
(42,18,'洗衣机',4399.00,1,4399),
(43,18,'电视机',2988.00,1,2988),
(44,18,'智能机器人',19998.00,1,19998),
(45,18,'Iphone XR 128G',238.00,1,238),
(46,18,'笔记本电脑',1999.00,1,1999),
(47,19,'智能机器人',19998.00,1,19998);

/*Table structure for table `order_in_reback` */

DROP TABLE IF EXISTS `order_in_reback`;

CREATE TABLE `order_in_reback` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `money` float(11,2) DEFAULT NULL,
  `productNum` int(5) NOT NULL,
  `payType` int(2) NOT NULL DEFAULT '0',
  `status` int(2) NOT NULL DEFAULT '0',
  `operator` varchar(32) NOT NULL,
  `remark` varchar(128) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

/*Data for the table `order_in_reback` */

insert  into `order_in_reback`(`id`,`money`,`productNum`,`payType`,`status`,`operator`,`remark`,`createTime`) values 
(17,408.00,5,2,1,'admin','退货五个商品！','2019-03-08 21:31:47'),
(18,27591.00,6,0,1,'admin','每类都退一个！','2019-03-08 21:33:41'),
(19,2065.00,2,0,0,'admin','','2019-03-09 17:45:12');

/*Table structure for table `order_in_reback_detail` */

DROP TABLE IF EXISTS `order_in_reback_detail`;

CREATE TABLE `order_in_reback_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderInRebackId` int(11) NOT NULL,
  `productName` varchar(128) NOT NULL,
  `price` float(8,2) NOT NULL,
  `productNum` int(5) NOT NULL,
  `money` float(8,0) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `orderInId` (`orderInRebackId`),
  CONSTRAINT `order_in_reback_detail_ibfk_1` FOREIGN KEY (`orderInRebackId`) REFERENCES `order_in_reback` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

/*Data for the table `order_in_reback_detail` */

insert  into `order_in_reback_detail`(`id`,`orderInRebackId`,`productName`,`price`,`productNum`,`money`) values 
(31,17,'Java实战开发教程',128.00,3,384),
(32,17,'义乌市震昊编织袋无纺布袋有限公司',12.00,2,24),
(33,18,'男士长袖',66.00,1,66),
(34,18,'Java实战开发教程',128.00,1,128),
(35,18,'义乌市震昊编织袋无纺布袋有限公司',12.00,1,12),
(36,18,'洗衣机',4399.00,1,4399),
(37,18,'电视机',2988.00,1,2988),
(38,18,'智能机器人',19998.00,1,19998),
(39,19,'男士长袖',66.00,1,66),
(40,19,'笔记本电脑',1999.00,1,1999);

/*Table structure for table `product` */

DROP TABLE IF EXISTS `product`;

CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `supplierId` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `place` varchar(128) CHARACTER SET utf32 DEFAULT NULL,
  `spec` varchar(64) DEFAULT NULL,
  `pk` varchar(64) DEFAULT NULL,
  `unit` varchar(32) DEFAULT NULL,
  `price` float(8,2) NOT NULL,
  `remark` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `supplierId` (`supplierId`),
  CONSTRAINT `product_ibfk_1` FOREIGN KEY (`supplierId`) REFERENCES `supplier` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

/*Data for the table `product` */

insert  into `product`(`id`,`supplierId`,`name`,`place`,`spec`,`pk`,`unit`,`price`,`remark`) values 
(1,2,'Java实战开发教程','上海','2G网盘资源','网盘','个',128.00,'猿来入此项目实战开发教程及源码'),
(2,3,'男士长袖','杭州','尺寸176','袋装','件',66.00,'阿里巴巴男士长袖'),
(3,4,'义乌市震昊编织袋无纺布袋有限公司','义务','长120ml','袋装','件',12.00,'袋子'),
(4,4,'洗衣机','北京','100*300*189mm','箱装','台',4399.00,'百度出的智能洗衣机。'),
(5,10,'电视机','深圳','300*500*198mm','盒装','台',2988.00,'腾讯出的智能电视机。'),
(6,3,'智能机器人','杭州','100*200*300','箱装','个',19998.00,'阿里巴巴出的叼炸天智能机器人。'),
(9,2,'Iphone XR 128G','上海','3*3*7','盒装','台',238.00,'测试导入商品'),
(10,2,'笔记本电脑','广东','67*88*78','箱装','台',1999.00,'笔记本电脑');

/*Table structure for table `role` */

DROP TABLE IF EXISTS `role`;

CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `remark` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `role` */

insert  into `role`(`id`,`name`,`remark`) values 
(1,'超级管理员','超级管理员拥有一切权限！'),
(2,'普通用户','普通用户，请自由授权！');

/*Table structure for table `sell` */

DROP TABLE IF EXISTS `sell`;

CREATE TABLE `sell` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `money` float(11,2) DEFAULT NULL,
  `productNum` int(5) NOT NULL,
  `payType` int(2) NOT NULL DEFAULT '0',
  `status` int(2) NOT NULL DEFAULT '0',
  `operator` varchar(32) NOT NULL,
  `remark` varchar(128) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

/*Data for the table `sell` */

insert  into `sell`(`id`,`money`,`productNum`,`payType`,`status`,`operator`,`remark`,`createTime`) values 
(17,256.00,2,2,1,'admin','卖出！','2019-04-07 11:12:22'),
(18,27591.00,6,1,1,'admin','卖了一大批货！','2019-04-12 11:14:22'),
(19,14092.00,111,2,0,'admin','购买！','2019-04-24 13:29:08'),
(20,41683.00,117,4,0,'admin','','2019-04-13 13:29:41'),
(21,7477.00,5,1,0,'admin','购买商品','2019-05-09 13:30:09'),
(22,30852.00,16,0,0,'admin','进货','2019-05-09 17:39:07'),
(23,31236.00,19,0,0,'admin','','2019-03-09 17:41:31');

/*Table structure for table `sell_detail` */

DROP TABLE IF EXISTS `sell_detail`;

CREATE TABLE `sell_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sellId` int(11) NOT NULL,
  `productName` varchar(128) NOT NULL,
  `price` float(8,2) NOT NULL,
  `productNum` int(5) NOT NULL,
  `money` float(8,0) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `orderInId` (`sellId`),
  CONSTRAINT `sell_detail_ibfk_1` FOREIGN KEY (`sellId`) REFERENCES `sell` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8;

/*Data for the table `sell_detail` */

insert  into `sell_detail`(`id`,`sellId`,`productName`,`price`,`productNum`,`money`) values 
(35,17,'Java实战开发教程',128.00,2,256),
(36,18,'Java实战开发教程',128.00,1,128),
(37,18,'洗衣机',4399.00,1,4399),
(38,18,'电视机',2988.00,1,2988),
(39,18,'智能机器人',19998.00,1,19998),
(40,18,'男士长袖',66.00,1,66),
(41,18,'义乌市震昊编织袋无纺布袋有限公司',12.00,1,12),
(42,19,'义乌市震昊编织袋无纺布袋有限公司',12.00,1,12),
(43,19,'Java实战开发教程',128.00,110,14080),
(44,20,'义乌市震昊编织袋无纺布袋有限公司',12.00,2,24),
(45,20,'Java实战开发教程',128.00,111,14208),
(46,20,'智能机器人',19998.00,1,19998),
(47,20,'洗衣机',4399.00,1,4399),
(48,20,'电视机',2988.00,1,2988),
(49,20,'男士长袖',66.00,1,66),
(50,21,'义乌市震昊编织袋无纺布袋有限公司',12.00,2,24),
(51,21,'洗衣机',4399.00,1,4399),
(52,21,'电视机',2988.00,1,2988),
(53,21,'男士长袖',66.00,1,66),
(54,22,'洗衣机',4399.00,1,4399),
(55,22,'电视机',2988.00,1,2988),
(56,22,'智能机器人',19998.00,1,19998),
(57,22,'男士长袖',66.00,1,66),
(58,22,'义乌市震昊编织袋无纺布袋有限公司',12.00,1,12),
(59,22,'Java实战开发教程',128.00,9,1152),
(60,22,'Iphone XR 128G',238.00,1,238),
(61,22,'笔记本电脑',1999.00,1,1999),
(62,23,'洗衣机',4399.00,1,4399),
(63,23,'电视机',2988.00,1,2988),
(64,23,'智能机器人',19998.00,1,19998),
(65,23,'男士长袖',66.00,1,66),
(66,23,'义乌市震昊编织袋无纺布袋有限公司',12.00,1,12),
(67,23,'Java实战开发教程',128.00,12,1536),
(68,23,'Iphone XR 128G',238.00,1,238),
(69,23,'笔记本电脑',1999.00,1,1999);

/*Table structure for table `sell_reback` */

DROP TABLE IF EXISTS `sell_reback`;

CREATE TABLE `sell_reback` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `money` float(11,2) DEFAULT NULL,
  `productNum` int(5) NOT NULL,
  `payType` int(2) NOT NULL DEFAULT '0',
  `status` int(2) NOT NULL DEFAULT '0',
  `operator` varchar(32) NOT NULL,
  `remark` varchar(128) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

/*Data for the table `sell_reback` */

insert  into `sell_reback`(`id`,`money`,`productNum`,`payType`,`status`,`operator`,`remark`,`createTime`) values 
(19,12.00,1,0,1,'admin','退货！','2019-04-07 12:05:15'),
(20,28755.00,16,1,0,'admin','客户退了一批货！','2019-04-12 12:06:12'),
(21,233076.00,79,2,0,'admin','质量问题，退货！','2019-02-13 14:43:29'),
(22,24409.00,3,1,0,'admin','退货','2019-05-09 14:43:52'),
(23,78.00,2,0,0,'admin','','2019-05-09 17:48:31'),
(24,78.00,2,0,0,'admin','','2019-05-09 17:49:18');

/*Table structure for table `sell_reback_detail` */

DROP TABLE IF EXISTS `sell_reback_detail`;

CREATE TABLE `sell_reback_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sellRebackId` int(11) NOT NULL,
  `productName` varchar(128) NOT NULL,
  `price` float(8,2) NOT NULL,
  `productNum` int(5) NOT NULL,
  `money` float(8,0) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `orderInId` (`sellRebackId`),
  CONSTRAINT `sell_reback_detail_ibfk_1` FOREIGN KEY (`sellRebackId`) REFERENCES `sell_reback` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;

/*Data for the table `sell_reback_detail` */

insert  into `sell_reback_detail`(`id`,`sellRebackId`,`productName`,`price`,`productNum`,`money`) values 
(42,19,'义乌市震昊编织袋无纺布袋有限公司',12.00,1,12),
(43,20,'义乌市震昊编织袋无纺布袋有限公司',12.00,2,24),
(44,20,'洗衣机',4399.00,1,4399),
(45,20,'电视机',2988.00,1,2988),
(46,20,'智能机器人',19998.00,1,19998),
(47,20,'男士长袖',66.00,1,66),
(48,20,'Java实战开发教程',128.00,10,1280),
(49,21,'义乌市震昊编织袋无纺布袋有限公司',12.00,1,12),
(50,21,'电视机',2988.00,78,233064),
(51,22,'义乌市震昊编织袋无纺布袋有限公司',12.00,1,12),
(52,22,'智能机器人',19998.00,1,19998),
(53,22,'洗衣机',4399.00,1,4399),
(54,23,'义乌市震昊编织袋无纺布袋有限公司',12.00,1,12),
(55,23,'男士长袖',66.00,1,66),
(56,24,'义乌市震昊编织袋无纺布袋有限公司',12.00,1,12),
(57,24,'男士长袖',66.00,1,66);

/*Table structure for table `shop` */

DROP TABLE IF EXISTS `shop`;

CREATE TABLE `shop` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sname` varchar(30) NOT NULL,
  `sphone` varchar(20) NOT NULL,
  `address` varchar(50) NOT NULL,
  `lal` varchar(80) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `shop` */

/*Table structure for table `stock` */

DROP TABLE IF EXISTS `stock`;

CREATE TABLE `stock` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productId` int(11) NOT NULL,
  `productNum` int(8) NOT NULL,
  `sellNum` int(8) NOT NULL DEFAULT '0',
  `createTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `productId` (`productId`),
  CONSTRAINT `stock_ibfk_1` FOREIGN KEY (`productId`) REFERENCES `product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

/*Data for the table `stock` */

insert  into `stock`(`id`,`productId`,`productNum`,`sellNum`,`createTime`) values 
(4,4,10,1,'2019-03-08 18:47:04'),
(5,5,200,1,'2019-03-08 18:47:04'),
(6,6,52,1,'2019-03-08 18:47:04'),
(7,2,100,1,'2019-03-08 18:48:02'),
(8,3,121,1,'2019-03-08 18:48:02'),
(10,9,11,1,'2019-03-09 17:29:13'),
(11,10,10,1,'2019-03-09 17:29:13');

/*Table structure for table `supplier` */

DROP TABLE IF EXISTS `supplier`;

CREATE TABLE `supplier` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `tel` varchar(32) NOT NULL,
  `address` varchar(128) NOT NULL,
  `contactName` varchar(32) NOT NULL,
  `contactPhone` varchar(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

/*Data for the table `supplier` */

insert  into `supplier`(`id`,`name`,`tel`,`address`,`contactName`,`contactPhone`) values 
(2,'可口可乐','021-25656565','上海 浦东','隔壁老王','13918655656'),
(3,'阿里巴巴','020-56565656','浙江 杭州 西湖河畔','马云','13818181818'),
(4,'百度','010-12123232','北京 朝阳区','李彦宏','13616816888'),
(10,'腾讯','035-45465464','深圳','马化腾','1357878787');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `roleId` int(11) NOT NULL,
  `photo` varchar(128) DEFAULT NULL,
  `sex` int(1) NOT NULL DEFAULT '0',
  `age` int(3) NOT NULL DEFAULT '0',
  `address` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `roleId` (`roleId`),
  CONSTRAINT `user_ibfk_1` FOREIGN KEY (`roleId`) REFERENCES `role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`id`,`username`,`password`,`roleId`,`photo`,`sex`,`age`,`address`) values 
(1,'admin','admin',1,'/StockManagerSSM/resources/upload/1552123215881.png',1,1,'上海市浦东新区浦东南路1835号'),
(13,'路人甲','123456',2,'/StockManagerSSM/resources/upload/1552116101099.jpg',1,1,'城市学院');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
