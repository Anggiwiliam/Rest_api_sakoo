/*
SQLyog Community Edition- MySQL GUI v7.12 
MySQL - 5.5.5-10.1.40-MariaDB : Database - product
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`product` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `product`;

/*Table structure for table `barang` */

DROP TABLE IF EXISTS `barang`;

CREATE TABLE `barang` (
  `id_product` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_product`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

/*Data for the table `barang` */

insert  into `barang`(`id_product`,`name`,`description`,`price`,`created_at`,`update_at`) values (1,'Shinzui','sabun mandi',5000,'2020-01-06 00:00:00','2020-01-06 00:00:00'),(2,'Sari murni','minyak goreng',10000,'2020-01-06 00:00:00','2020-01-06 00:00:00'),(7,'sunlight','sabun cuci piring',5000,'2020-01-06 00:00:00','2020-01-06 00:00:00'),(8,'mama lemon','sabun cuci piring',5000,'2020-01-06 00:00:00','2020-01-06 00:00:00'),(9,'Aqua 500ml','minuman botol',5000,'2020-01-06 00:00:00','2020-01-06 00:00:00'),(11,'ades 500ml','minuman botol',5000,'2020-01-06 00:00:00','2020-01-06 00:00:00'),(12,'ades 1000ml','minuman botol',7000,'2020-01-06 00:00:00','2020-01-06 00:00:00'),(14,'aqua 1000ml','minuman botol',7000,'2020-01-06 00:00:00','2020-01-06 00:00:00'),(15,'Coca-cola 1000ml','minuman botol',15000,'2020-01-07 00:00:00','2020-01-07 00:00:00'),(17,'Le mineral 1000ml','minuman botol',15000,'2020-01-07 00:00:00','2020-01-07 00:00:00'),(18,'Fanta 1000ml','minuman botol',15000,'2020-01-07 00:00:00','2020-01-07 00:00:00');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `users` */

insert  into `users`(`id`,`name`,`email`,`password`,`created_at`,`modified_at`) values (1,'anggi','anggi@gmail.com','827ccb0eea8a706c4c34a16891f84e7b','2020-01-06 22:58:25','2020-01-06 22:58:25'),(2,'anggiw','anggiw@gmail.com','827ccb0eea8a706c4c34a16891f84e7b','2020-01-06 23:03:09','2020-01-06 23:03:09'),(3,'fadel','fadel@gmail.com','827ccb0eea8a706c4c34a16891f84e7b','2020-01-06 23:04:38','2020-01-06 23:04:38'),(4,'edo','edo@gmail.com','827ccb0eea8a706c4c34a16891f84e7b','2020-01-06 23:06:22','2020-01-06 23:06:22'),(5,'ebi','ebi@gmail.com','827ccb0eea8a706c4c34a16891f84e7b','2020-01-06 23:11:50','2020-01-06 23:11:50');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
