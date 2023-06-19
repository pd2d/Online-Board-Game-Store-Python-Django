/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.5.5-10.4.24-MariaDB : Database - vegitableshop
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`vegitableshop` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `vegitableshop`;

/*Table structure for table `auth_group` */

DROP TABLE IF EXISTS `auth_group`;

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `auth_group` */

LOCK TABLES `auth_group` WRITE;

UNLOCK TABLES;

/*Table structure for table `auth_group_permissions` */

DROP TABLE IF EXISTS `auth_group_permissions`;

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `auth_group_permissions` */

LOCK TABLES `auth_group_permissions` WRITE;

UNLOCK TABLES;

/*Table structure for table `auth_permission` */

DROP TABLE IF EXISTS `auth_permission`;

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4;

/*Data for the table `auth_permission` */

LOCK TABLES `auth_permission` WRITE;

insert  into `auth_permission`(`id`,`name`,`content_type_id`,`codename`) values (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add booking',7,'add_booking'),(26,'Can change booking',7,'change_booking'),(27,'Can delete booking',7,'delete_booking'),(28,'Can view booking',7,'view_booking'),(29,'Can add category',8,'add_category'),(30,'Can change category',8,'change_category'),(31,'Can delete category',8,'delete_category'),(32,'Can view category',8,'view_category'),(33,'Can add dealer',9,'add_dealer'),(34,'Can change dealer',9,'change_dealer'),(35,'Can delete dealer',9,'delete_dealer'),(36,'Can view dealer',9,'view_dealer'),(37,'Can add login',10,'add_login'),(38,'Can change login',10,'change_login'),(39,'Can delete login',10,'delete_login'),(40,'Can view login',10,'view_login'),(41,'Can add product',11,'add_product'),(42,'Can change product',11,'change_product'),(43,'Can delete product',11,'delete_product'),(44,'Can view product',11,'view_product'),(45,'Can add user',12,'add_user'),(46,'Can change user',12,'change_user'),(47,'Can delete user',12,'delete_user'),(48,'Can view user',12,'view_user'),(49,'Can add request',13,'add_request'),(50,'Can change request',13,'change_request'),(51,'Can delete request',13,'delete_request'),(52,'Can view request',13,'view_request'),(53,'Can add payment',14,'add_payment'),(54,'Can change payment',14,'change_payment'),(55,'Can delete payment',14,'delete_payment'),(56,'Can view payment',14,'view_payment'),(57,'Can add bookingchild',15,'add_bookingchild'),(58,'Can change bookingchild',15,'change_bookingchild'),(59,'Can delete bookingchild',15,'delete_bookingchild'),(60,'Can view bookingchild',15,'view_bookingchild'),(61,'Can add requests',16,'add_requests'),(62,'Can change requests',16,'change_requests'),(63,'Can delete requests',16,'delete_requests'),(64,'Can view requests',16,'view_requests'),(65,'Can add feedback',17,'add_feedback'),(66,'Can change feedback',17,'change_feedback'),(67,'Can delete feedback',17,'delete_feedback'),(68,'Can view feedback',17,'view_feedback'),(69,'Can add history',18,'add_history'),(70,'Can change history',18,'change_history'),(71,'Can delete history',18,'delete_history'),(72,'Can view history',18,'view_history');

UNLOCK TABLES;

/*Table structure for table `auth_user` */

DROP TABLE IF EXISTS `auth_user`;

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `auth_user` */

LOCK TABLES `auth_user` WRITE;

UNLOCK TABLES;

/*Table structure for table `auth_user_groups` */

DROP TABLE IF EXISTS `auth_user_groups`;

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `auth_user_groups` */

LOCK TABLES `auth_user_groups` WRITE;

UNLOCK TABLES;

/*Table structure for table `auth_user_user_permissions` */

DROP TABLE IF EXISTS `auth_user_user_permissions`;

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `auth_user_user_permissions` */

LOCK TABLES `auth_user_user_permissions` WRITE;

UNLOCK TABLES;

/*Table structure for table `django_admin_log` */

DROP TABLE IF EXISTS `django_admin_log`;

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `django_admin_log` */

LOCK TABLES `django_admin_log` WRITE;

UNLOCK TABLES;

/*Table structure for table `django_content_type` */

DROP TABLE IF EXISTS `django_content_type`;

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4;

/*Data for the table `django_content_type` */

LOCK TABLES `django_content_type` WRITE;

insert  into `django_content_type`(`id`,`app_label`,`model`) values (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(7,'main','booking'),(15,'main','bookingchild'),(8,'main','category'),(9,'main','dealer'),(17,'main','feedback'),(18,'main','history'),(10,'main','login'),(14,'main','payment'),(11,'main','product'),(13,'main','request'),(16,'main','requests'),(12,'main','user'),(6,'sessions','session');

UNLOCK TABLES;

/*Table structure for table `django_migrations` */

DROP TABLE IF EXISTS `django_migrations`;

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4;

/*Data for the table `django_migrations` */

LOCK TABLES `django_migrations` WRITE;

insert  into `django_migrations`(`id`,`app`,`name`,`applied`) values (1,'contenttypes','0001_initial','2023-02-05 16:46:01.033780'),(2,'auth','0001_initial','2023-02-05 16:46:11.746960'),(3,'admin','0001_initial','2023-02-05 16:46:13.702959'),(4,'admin','0002_logentry_remove_auto_add','2023-02-05 16:46:13.766811'),(5,'admin','0003_logentry_add_action_flag_choices','2023-02-05 16:46:13.840760'),(6,'contenttypes','0002_remove_content_type_name','2023-02-05 16:46:14.519047'),(7,'auth','0002_alter_permission_name_max_length','2023-02-05 16:46:16.039122'),(8,'auth','0003_alter_user_email_max_length','2023-02-05 16:46:16.262713'),(9,'auth','0004_alter_user_username_opts','2023-02-05 16:46:16.344500'),(10,'auth','0005_alter_user_last_login_null','2023-02-05 16:46:17.480766'),(11,'auth','0006_require_contenttypes_0002','2023-02-05 16:46:17.528642'),(12,'auth','0007_alter_validators_add_error_messages','2023-02-05 16:46:17.639573'),(13,'auth','0008_alter_user_username_max_length','2023-02-05 16:46:17.796853'),(14,'auth','0009_alter_user_last_name_max_length','2023-02-05 16:46:17.946828'),(15,'auth','0010_alter_group_name_max_length','2023-02-05 16:46:18.143558'),(16,'auth','0011_update_proxy_permissions','2023-02-05 16:46:18.231823'),(17,'auth','0012_alter_user_first_name_max_length','2023-02-05 16:46:18.490912'),(18,'main','0001_initial','2023-02-05 16:46:32.733567'),(19,'sessions','0001_initial','2023-02-05 16:46:34.084136'),(20,'main','0002_feedback','2023-03-02 17:19:14.758013'),(21,'main','0003_history','2023-03-02 17:31:56.065056');

UNLOCK TABLES;

/*Table structure for table `django_session` */

DROP TABLE IF EXISTS `django_session`;

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `django_session` */

LOCK TABLES `django_session` WRITE;

insert  into `django_session`(`session_key`,`session_data`,`expire_date`) values ('2eg34bsztf90813xuf5rq5vnp4i87yte','eyJsb2dpbl9pZCI6MX0:1pSx4S:y8yHFzxS3h26fhXXYD5hwMBPcrLsZFRPKuECxudJic8','2023-03-03 09:30:24.349254'),('7lze04ptrpxjr19cbhdxykue92gjvt1o','eyJsb2dpbl9pZCI6Mn0:1pSM2Q:0UUOp2TMy0lxg2OWpQ5X5lgUWLfOuSh-F_kXQTP5MuY','2023-03-01 17:57:50.322987'),('9cpodbldm067spypuzsp6c6ma426lccd','eyJsb2dpbl9pZCI6NH0:1pTcYj:IdIZOachwqni_fWsKcWoBnYSCgE_D8ayaQaR6GSoK4k','2023-03-05 05:48:25.318874'),('9r5s20sv9k72ptn31q1y78uyyeycfnfn','eyJsb2dpbl9pZCI6MX0:1pP4zj:mekN6b0OJcnbXVSTXmRR3_O1X6qnz655NOVOJpL24fU','2023-02-20 17:09:31.831648'),('hlcr1vazc56guiadhvqkdae8b2pdyn26','eyJsb2dpbl9pZCI6Mn0:1pSYPs:UfTaB2LhrXa9y14IfeXbiJgZJdfWF97VZOaV9hnq86I','2023-03-02 07:10:52.949592'),('myspny2qdct4qeabya64luxk1g2l8w4a','eyJsb2dpbl9pZCI6MX0:1pXnVY:U_IlZMFpNcfnFyToVaWXNdMF-JXgkzbWuRcbI0vSqGY','2023-03-16 18:18:24.287493'),('vau5wzvo0t2w2pxzbvbh1kj109hjxsmg','eyJsb2dpbl9pZCI6MSwibGxpZCI6Mywib3RwIjoxMTU0fQ:1pTfLM:PpWXOH1QZFgnNqfrtnkqWB-DAbhYlsdH2YvZVP61ZCg','2023-03-05 08:46:48.584571');

UNLOCK TABLES;

/*Table structure for table `main_booking` */

DROP TABLE IF EXISTS `main_booking`;

CREATE TABLE `main_booking` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `total` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `order_id` varchar(50) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `main_booking_user_id_7fb45758_fk_main_user_id` (`user_id`),
  CONSTRAINT `main_booking_user_id_7fb45758_fk_main_user_id` FOREIGN KEY (`user_id`) REFERENCES `main_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

/*Data for the table `main_booking` */

LOCK TABLES `main_booking` WRITE;

insert  into `main_booking`(`id`,`total`,`date`,`status`,`order_id`,`user_id`) values (1,'150','2023-02-06','Delivered','123',1),(2,'120','2023-02-16','Paid','order_LH1urJsqVhBiKL',1),(5,'60','2023-03-02','pending','0',2);

UNLOCK TABLES;

/*Table structure for table `main_bookingchild` */

DROP TABLE IF EXISTS `main_bookingchild`;

CREATE TABLE `main_bookingchild` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `quantity` varchar(50) NOT NULL,
  `amount` varchar(50) NOT NULL,
  `booking_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `main_bookingchild_booking_id_7e2013bc_fk_main_booking_id` (`booking_id`),
  KEY `main_bookingchild_product_id_a4a761b5_fk_main_product_id` (`product_id`),
  CONSTRAINT `main_bookingchild_booking_id_7e2013bc_fk_main_booking_id` FOREIGN KEY (`booking_id`) REFERENCES `main_booking` (`id`),
  CONSTRAINT `main_bookingchild_product_id_a4a761b5_fk_main_product_id` FOREIGN KEY (`product_id`) REFERENCES `main_product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

/*Data for the table `main_bookingchild` */

LOCK TABLES `main_bookingchild` WRITE;

insert  into `main_bookingchild`(`id`,`quantity`,`amount`,`booking_id`,`product_id`) values (1,'2','100',1,2),(2,'1','30',1,3),(3,'1','20',1,5),(4,'2','120',2,4),(7,'1','60',5,4);

UNLOCK TABLES;

/*Table structure for table `main_category` */

DROP TABLE IF EXISTS `main_category`;

CREATE TABLE `main_category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `category` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

/*Data for the table `main_category` */

LOCK TABLES `main_category` WRITE;

insert  into `main_category`(`id`,`category`) values (1,'Leaf Vegitables'),(3,'Roots');

UNLOCK TABLES;

/*Table structure for table `main_dealer` */

DROP TABLE IF EXISTS `main_dealer`;

CREATE TABLE `main_dealer` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `place` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `login_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `main_dealer_login_id_bae7d972_fk_main_login_id` (`login_id`),
  CONSTRAINT `main_dealer_login_id_bae7d972_fk_main_login_id` FOREIGN KEY (`login_id`) REFERENCES `main_login` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/*Data for the table `main_dealer` */

LOCK TABLES `main_dealer` WRITE;

insert  into `main_dealer`(`id`,`fname`,`lname`,`place`,`phone`,`email`,`login_id`) values (1,'Sara','Mary','kochi','9812345678','marysara@gmail.com',3);

UNLOCK TABLES;

/*Table structure for table `main_feedback` */

DROP TABLE IF EXISTS `main_feedback`;

CREATE TABLE `main_feedback` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `feedback` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `main_feedback_user_id_4bc6db52_fk_main_user_id` (`user_id`),
  CONSTRAINT `main_feedback_user_id_4bc6db52_fk_main_user_id` FOREIGN KEY (`user_id`) REFERENCES `main_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/*Data for the table `main_feedback` */

LOCK TABLES `main_feedback` WRITE;

insert  into `main_feedback`(`id`,`feedback`,`date`,`user_id`) values (1,'dryyyyyyyyyh','2023-03-02',2);

UNLOCK TABLES;

/*Table structure for table `main_history` */

DROP TABLE IF EXISTS `main_history`;

CREATE TABLE `main_history` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date` varchar(50) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `main_history_product_id_0cbd368a_fk_main_product_id` (`product_id`),
  KEY `main_history_user_id_ac04f9cc_fk_main_user_id` (`user_id`),
  CONSTRAINT `main_history_product_id_0cbd368a_fk_main_product_id` FOREIGN KEY (`product_id`) REFERENCES `main_product` (`id`),
  CONSTRAINT `main_history_user_id_ac04f9cc_fk_main_user_id` FOREIGN KEY (`user_id`) REFERENCES `main_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

/*Data for the table `main_history` */

LOCK TABLES `main_history` WRITE;

insert  into `main_history`(`id`,`date`,`product_id`,`user_id`) values (3,'2023-03-02',2,2),(4,'2023-03-02',3,2);

UNLOCK TABLES;

/*Table structure for table `main_login` */

DROP TABLE IF EXISTS `main_login`;

CREATE TABLE `main_login` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(1000) NOT NULL,
  `usertype` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

/*Data for the table `main_login` */

LOCK TABLES `main_login` WRITE;

insert  into `main_login`(`id`,`username`,`password`,`usertype`) values (1,'admin@gmail.com','admin','admin'),(2,'anna','anna123','user'),(3,'sara@gmail.com','Sara@1234','dealer'),(4,'aleenatresa8@gmail.com','Anna@1234','user');

UNLOCK TABLES;

/*Table structure for table `main_payment` */

DROP TABLE IF EXISTS `main_payment`;

CREATE TABLE `main_payment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `amount` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL,
  `booking_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `main_payment_booking_id_c230bf24_fk_main_booking_id` (`booking_id`),
  CONSTRAINT `main_payment_booking_id_c230bf24_fk_main_booking_id` FOREIGN KEY (`booking_id`) REFERENCES `main_booking` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/*Data for the table `main_payment` */

LOCK TABLES `main_payment` WRITE;

insert  into `main_payment`(`id`,`amount`,`date`,`booking_id`) values (1,'150','2023-02-06',1);

UNLOCK TABLES;

/*Table structure for table `main_product` */

DROP TABLE IF EXISTS `main_product`;

CREATE TABLE `main_product` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(50) NOT NULL,
  `rate` varchar(50) NOT NULL,
  `stock` varchar(50) NOT NULL,
  `image` varchar(1000) NOT NULL,
  `p_description` varchar(1000) NOT NULL,
  `category_id` bigint(20) NOT NULL,
  `dealer_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `main_product_category_id_c0d90f41_fk_main_category_id` (`category_id`),
  KEY `main_product_dealer_id_06e40d4a_fk_main_dealer_id` (`dealer_id`),
  CONSTRAINT `main_product_category_id_c0d90f41_fk_main_category_id` FOREIGN KEY (`category_id`) REFERENCES `main_category` (`id`),
  CONSTRAINT `main_product_dealer_id_06e40d4a_fk_main_dealer_id` FOREIGN KEY (`dealer_id`) REFERENCES `main_dealer` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

/*Data for the table `main_product` */

LOCK TABLES `main_product` WRITE;

insert  into `main_product`(`id`,`product_name`,`rate`,`stock`,`image`,`p_description`,`category_id`,`dealer_id`) values (2,'Carrot','90','118','product-7.jpg','It matters to us that your car takes you to your destinations safely as well as smoothly and we are here to take care of it for you.',3,1),(3,'Tomato','30','999','product-5.jpg','It matters to us that your car takes you to your destinations safely as well as smoothly and we are here to take care of it for you.',3,1),(4,'Red Chilly','60','998','product-12.jpg','It matters to us that your car takes you to your destinations safely as well as smoothly and we are here to take care of it for you.',3,1),(5,'Spinach','20','99','spi1.jfif','It matters to us that your car takes you to your destinations safely as well as smoothly and we are here to take care of it for you.',1,1),(6,'onion leaf','50','1001','onion.jfif','It matters to us that your car takes you to your destinations safely as well as smoothly and we are here to take care of it for you.',1,1),(7,'v','50','2','33.jpg','It matters to us that your car takes you to your destinations safely as well as smoothly and we are here to take care of it for you.',1,1);

UNLOCK TABLES;

/*Table structure for table `main_requests` */

DROP TABLE IF EXISTS `main_requests`;

CREATE TABLE `main_requests` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `qty` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL,
  `amount` varchar(50) NOT NULL,
  `rstatus` varchar(50) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `main_request_product_id_a67276d8_fk_main_product_id` (`product_id`),
  CONSTRAINT `main_request_product_id_a67276d8_fk_main_product_id` FOREIGN KEY (`product_id`) REFERENCES `main_product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

/*Data for the table `main_requests` */

LOCK TABLES `main_requests` WRITE;

insert  into `main_requests`(`id`,`qty`,`date`,`amount`,`rstatus`,`product_id`) values (4,'2','2023-03-02','100','pending',7);

UNLOCK TABLES;

/*Table structure for table `main_user` */

DROP TABLE IF EXISTS `main_user`;

CREATE TABLE `main_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `place` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pincode` varchar(50) DEFAULT NULL,
  `login_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `main_user_login_id_82508863_fk_main_login_id` (`login_id`),
  CONSTRAINT `main_user_login_id_82508863_fk_main_login_id` FOREIGN KEY (`login_id`) REFERENCES `main_login` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

/*Data for the table `main_user` */

LOCK TABLES `main_user` WRITE;

insert  into `main_user`(`id`,`fname`,`lname`,`place`,`phone`,`email`,`pincode`,`login_id`) values (1,'Anna','Rose','kochi','9812345678','anna@gmail.com',NULL,2),(2,'Aleena','tom','Kochi','9344444447','aleenatresa8@gmail.com','676767',4);

UNLOCK TABLES;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
