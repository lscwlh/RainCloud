/*
SQLyog 企业版 - MySQL GUI v8.14 
MySQL - 5.5.28 : Database - rain
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`rain` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_czech_ci */;

USE `rain`;

/*Table structure for table `air` */

DROP TABLE IF EXISTS `air`;

CREATE TABLE `air` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `districId` int(11) NOT NULL,
  `createTime` date NOT NULL,
  `pm10` int(11) NOT NULL,
  `pm25` int(11) NOT NULL,
  `station` varchar(50) COLLATE utf8_czech_ci NOT NULL,
  `lastTime` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

/*Data for the table `air` */

insert  into `air`(`id`,`districId`,`createTime`,`pm10`,`pm25`,`station`,`lastTime`) values (1,1,'2020-01-03',10,7,'大壮监测站B','2020-01-03'),(2,2,'2020-05-05',6,2,'好远监测站','2020-05-06'),(3,3,'2020-05-11',20,10,'康纳监测站','2020-05-11'),(4,4,'2020-05-11',5,2,'撒加监测站','2020-05-11'),(5,4,'2020-11-11',10,10,'252525','2020-11-11'),(8,1,'2020-01-01',10,25,'AAA','2020-02-02'),(9,5,'2020-02-05',10,2,'2222','2020-02-02'),(10,2,'2020-01-05',10,7,'大壮监测站B','2020-01-05');

/*Table structure for table `district` */

DROP TABLE IF EXISTS `district`;

CREATE TABLE `district` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_czech_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

/*Data for the table `district` */

insert  into `district`(`id`,`name`) values (1,'东城区'),(2,'西城区'),(3,'朝阳区'),(4,'海淀区'),(5,'大兴区');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
