-- MySQL dump 10.13  Distrib 5.7.23, for Linux (x86_64)
--
-- Host: localhost    Database: blog2
-- ------------------------------------------------------
-- Server version	5.7.23-0ubuntu0.18.04.1

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add nav category',7,'add_navcategory'),(26,'Can change nav category',7,'change_navcategory'),(27,'Can delete nav category',7,'delete_navcategory'),(28,'Can view nav category',7,'view_navcategory'),(29,'Can add comment',8,'add_comment'),(30,'Can change comment',8,'change_comment'),(31,'Can delete comment',8,'delete_comment'),(32,'Can view comment',8,'view_comment'),(33,'Can add post',9,'add_post'),(34,'Can change post',9,'change_post'),(35,'Can delete post',9,'delete_post'),(36,'Can view post',9,'view_post'),(37,'Can add Tag',10,'add_tag'),(38,'Can change Tag',10,'change_tag'),(39,'Can delete Tag',10,'delete_tag'),(40,'Can view Tag',10,'view_tag'),(41,'Can add Tagged Item',11,'add_taggeditem'),(42,'Can change Tagged Item',11,'change_taggeditem'),(43,'Can delete Tagged Item',11,'delete_taggeditem'),(44,'Can view Tagged Item',11,'view_taggeditem'),(45,'Can add categories',12,'add_categories'),(46,'Can change categories',12,'change_categories'),(47,'Can delete categories',12,'delete_categories'),(48,'Can view categories',12,'view_categories'),(49,'Can add site',13,'add_site'),(50,'Can change site',13,'change_site'),(51,'Can delete site',13,'delete_site'),(52,'Can view site',13,'view_site'),(53,'Can add Blacklisted IP',14,'add_blacklistip'),(54,'Can change Blacklisted IP',14,'change_blacklistip'),(55,'Can delete Blacklisted IP',14,'delete_blacklistip'),(56,'Can view Blacklisted IP',14,'view_blacklistip'),(57,'Can add Blacklisted User Agent',15,'add_blacklistuseragent'),(58,'Can change Blacklisted User Agent',15,'change_blacklistuseragent'),(59,'Can delete Blacklisted User Agent',15,'delete_blacklistuseragent'),(60,'Can view Blacklisted User Agent',15,'view_blacklistuseragent'),(61,'Can add hit',16,'add_hit'),(62,'Can change hit',16,'change_hit'),(63,'Can delete hit',16,'delete_hit'),(64,'Can view hit',16,'view_hit'),(65,'Can add hit count',17,'add_hitcount'),(66,'Can change hit count',17,'change_hitcount'),(67,'Can delete hit count',17,'delete_hitcount'),(68,'Can view hit count',17,'view_hitcount');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'argon2$argon2i$v=19$m=512,t=2,p=2$aUJobGNDQ3dTenMy$ONIG9WBCSxe677Ez59dMIw','2018-09-27 15:19:18.678275',1,'sandeep','','','',1,1,'2018-09-15 13:13:00.180473'),(2,'argon2$argon2i$v=19$m=512,t=2,p=2$SkJCbVV2WExwMXda$Ldd+cQ/ZVFgY2rngs0LY7g','2018-09-24 09:28:39.510025',0,'sailesh','','','',1,1,'2018-09-24 09:27:26.000000');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_comment`
--

DROP TABLE IF EXISTS `blog_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  `email` varchar(254) NOT NULL,
  `body` longtext NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `post_id` int(11) NOT NULL,
  `publish` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_comment_post_id_580e96ef_fk_blog_post_id` (`post_id`),
  CONSTRAINT `blog_comment_post_id_580e96ef_fk_blog_post_id` FOREIGN KEY (`post_id`) REFERENCES `blog_post` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_comment`
--

LOCK TABLES `blog_comment` WRITE;
/*!40000 ALTER TABLE `blog_comment` DISABLE KEYS */;
INSERT INTO `blog_comment` VALUES (1,'Sandeep Kushwaha','saileshkush95@gmail.com','This is for the testing purpose comment','2018-09-16 19:09:40.989602','2018-09-16 19:10:10.497021',1,6,'2018-09-17 15:47:32.699343'),(2,'khkahk','adglkaj@gmail.com','This is for the testing purposer','2018-09-16 19:29:57.363467','2018-09-16 19:30:29.461336',1,6,'2018-09-17 15:47:32.699343'),(3,'test','test@gmail.com','This is also for the testing purpose','2018-09-16 19:52:19.503068','2018-09-16 19:52:19.503093',1,6,'2018-09-17 15:47:32.699343'),(4,'Sandeep Kushwaha','saileshkush95@gmail.com','Cripsy form test','2018-09-17 15:35:18.219502','2018-09-17 15:35:18.219543',1,6,'2018-09-17 15:47:32.699343'),(5,'Sandeep Kushwaha','saileshkush95@gmail.com','This is for the testing purpose','2018-09-17 20:48:03.420584','2018-09-17 20:48:03.420636',1,9,'2018-09-17 20:48:03.416474'),(6,'Sandeep Kushwaha','slkkajl@gmail.com','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.','2018-09-21 12:19:15.939178','2018-09-21 12:19:15.939218',1,5,'2018-09-21 12:19:15.935109'),(7,'abc','safjhs@gmail.com','asdhgakhdglahk;ghsa;hklaakjdhkahgkdjhk','2018-09-22 07:20:15.634365','2018-09-22 07:20:15.634472',1,8,'2018-09-22 07:20:15.626104'),(8,'today','sad@gmail.com','postpostpost','2018-09-26 07:48:35.386264','2018-09-26 07:48:35.386297',1,9,'2018-09-26 07:48:35.382851'),(10,'djashgk','asd@gmail.com','dsakjhgkagsdhkhkjghka','2018-09-26 07:53:21.030406','2018-09-26 07:53:21.030445',1,9,'2018-09-26 07:53:21.025580'),(11,'sagdHG','GHJAGDHg@ldjjjvash.com','hgd\\sGDHGAhdg','2018-09-26 09:49:16.766256','2018-09-26 09:49:16.766299',1,7,'2018-09-26 09:49:16.759422'),(12,'sagdHG','GHJAGDHg@ldjjjvash.com','hgd\\sGDHGAhdg','2018-09-26 09:49:27.701677','2018-09-26 09:49:27.701708',1,7,'2018-09-26 09:49:27.701074'),(13,'nsbadv','bndmasbn@ghjasg.coma','sanbasb','2018-09-26 09:49:58.118166','2018-09-26 09:49:58.118211',1,12,'2018-09-26 09:49:58.117383'),(14,'dskahkghka','sdaga@gmail.com','sadkjjghsakgkjdakhgkjadga','2018-09-26 09:50:48.279692','2018-09-26 09:50:48.279722',1,12,'2018-09-26 09:50:48.279076'),(15,'seond','asfs@gmail.com','skahkdhkakgakhdkja','2018-09-26 17:48:58.238321','2018-09-26 17:48:58.238365',1,12,'2018-09-26 17:48:58.234829');
/*!40000 ALTER TABLE `blog_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_post`
--

DROP TABLE IF EXISTS `blog_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL,
  `slug` varchar(250) NOT NULL,
  `image` varchar(100) NOT NULL,
  `body` longtext NOT NULL,
  `publish` datetime(6) NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `status` varchar(10) NOT NULL,
  `author_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_post_author_id_dd7a8485_fk_auth_user_id` (`author_id`),
  KEY `blog_post_slug_b95473f2` (`slug`),
  CONSTRAINT `blog_post_author_id_dd7a8485_fk_auth_user_id` FOREIGN KEY (`author_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_post`
--

LOCK TABLES `blog_post` WRITE;
/*!40000 ALTER TABLE `blog_post` DISABLE KEYS */;
INSERT INTO `blog_post` VALUES (2,'First Django Test','first-django-test','header_images/Screenshot_from_2018-08-30_11-53-20.png','<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"/media/uploads/2018/09/15/screenshot-from-2018-09-12-20-52-00.png\" style=\"height:100%; width:100%\" /></p>\r\n\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>','2018-09-15 20:16:16.000000','2018-09-15 20:18:47.095310','2018-09-22 19:43:31.241937','published',1),(4,'Second django test','second-django-test','header_images/Screenshot_from_2018-09-14_07-22-51_RabpA31.png','<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).<img alt=\"\" src=\"/media/uploads/2018/09/15/screenshot-from-2018-09-14-14-48-00.png\" style=\"height:100%; width:100%\" /></p>','2018-09-15 21:04:59.000000','2018-09-15 21:06:31.758987','2018-09-15 21:06:31.759010','published',1),(5,'Third Test','third-test','header_images/Screenshot_from_2018-09-02_06-56-38.png','<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n\r\n<p><img alt=\"\" src=\"/media/uploads/2018/09/15/screenshot-from-2018-09-02-06-58-15_atsAlVN.png\" style=\"height:100%; width:100%\" /></p>\r\n\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>','2018-09-15 21:07:32.000000','2018-09-15 21:08:46.079478','2018-09-15 21:08:46.079492','published',1),(6,'Fourth Test','fourth-test','header_images/Screenshot_from_2018-09-02_06-56-38_dgsSdzP.png','<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).<img alt=\"\" src=\"/media/uploads/2018/09/15/screenshot-from-2018-09-03-10-56-04.png\" style=\"height:100%; width:100%\" /></p>','2018-09-15 21:08:49.000000','2018-09-15 21:09:40.624336','2018-09-15 21:09:40.624355','published',1),(7,'fifth test','fifth-test','header_images/Screenshot_from_2018-09-03_10-56-04.png','<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>','2018-09-17 20:09:52.000000','2018-09-17 20:10:52.112779','2018-09-17 20:10:52.112802','published',1),(8,'sixth test','sixth-test','header_images/Screenshot_from_2018-09-02_06-56-23.png','<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>','2018-09-17 20:10:55.000000','2018-09-17 20:11:20.179749','2018-09-17 20:11:20.179763','published',1),(9,'seventh test','seventh-test','header_images/Screenshot_from_2018-09-05_14-32-54.png','<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>','2018-09-17 20:11:24.000000','2018-09-17 20:11:55.796471','2018-09-17 20:11:55.796518','published',1),(12,'Test1','test1','','<p>lorem this is for the testing purpose only</p>\r\n\r\n<p>lorem this is for the testing purpose onlylorem this is for the testing purpose onlylorem this is for the testing purpose onlylorem this is for the testing purpose onlylorem this is for the testing purpose onlylorem this is for the testing purpose only</p>','2018-09-26 07:56:01.000000','2018-09-26 07:57:14.768639','2018-09-26 07:57:14.768660','published',1);
/*!40000 ALTER TABLE `blog_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2018-09-15 13:27:34.275913','1','NavCategory object (1)',1,'[{\"added\": {}}]',7,1),(2,'2018-09-15 13:28:09.027413','2','NavCategory object (2)',1,'[{\"added\": {}}]',7,1),(3,'2018-09-15 13:28:26.830916','3','NavCategory object (3)',1,'[{\"added\": {}}]',7,1),(4,'2018-09-15 13:28:44.755889','4','NavCategory object (4)',1,'[{\"added\": {}}]',7,1),(5,'2018-09-15 13:28:58.428510','2','NavCategory object (2)',2,'[{\"changed\": {\"fields\": [\"category_name\"]}}]',7,1),(6,'2018-09-15 13:56:56.502419','1','Home',2,'[{\"changed\": {\"fields\": [\"status\"]}}]',7,1),(7,'2018-09-15 19:09:29.747904','1','Test Project',1,'[{\"added\": {}}]',9,1),(8,'2018-09-15 20:16:14.653468','1','Test Project',3,'',9,1),(9,'2018-09-15 20:18:47.128384','2','First Django Test',1,'[{\"added\": {}}]',9,1),(10,'2018-09-15 20:27:13.858156','3','Second Second Test',1,'[{\"added\": {}}]',9,1),(11,'2018-09-15 20:27:51.006463','3','Second Second Test',3,'',9,1),(12,'2018-09-15 20:54:31.191333','2','First Django Test',2,'[{\"changed\": {\"fields\": [\"body\", \"tags\"]}}]',9,1),(13,'2018-09-15 21:06:31.947566','4','Second django test',1,'[{\"added\": {}}]',9,1),(14,'2018-09-15 21:08:46.137617','5','Third Test',1,'[{\"added\": {}}]',9,1),(15,'2018-09-15 21:09:40.922656','6','Fourth Test',1,'[{\"added\": {}}]',9,1),(16,'2018-09-16 19:10:10.564146','1','Comment by Sandeep Kushwaha on Fourth Test',2,'[{\"changed\": {\"fields\": [\"active\"]}}]',8,1),(17,'2018-09-16 19:30:29.469277','2','Comment by khkahk on Fourth Test',2,'[{\"changed\": {\"fields\": [\"active\"]}}]',8,1),(18,'2018-09-17 08:40:09.299886','1','Micorsoft',1,'[{\"added\": {}}]',12,1),(19,'2018-09-17 08:54:50.744111','2','Google',1,'[{\"added\": {}}]',12,1),(20,'2018-09-17 08:55:03.328014','3','Android',1,'[{\"added\": {}}]',12,1),(21,'2018-09-17 08:55:18.423149','4','IOS',1,'[{\"added\": {}}]',12,1),(22,'2018-09-17 20:10:52.459237','7','fifth test',1,'[{\"added\": {}}]',9,1),(23,'2018-09-17 20:11:20.562503','8','sixth test',1,'[{\"added\": {}}]',9,1),(24,'2018-09-17 20:11:55.816258','9','seventh test',1,'[{\"added\": {}}]',9,1),(25,'2018-09-20 20:04:03.011970','10','All tags Test',1,'[{\"added\": {}}]',9,1),(26,'2018-09-21 18:07:39.450613','10','All tags Test',2,'[{\"changed\": {\"fields\": [\"tags\"]}}]',9,1),(27,'2018-09-22 08:26:02.982297','11','Image Testing',1,'[{\"added\": {}}]',9,1),(28,'2018-09-22 08:32:23.292695','11','Image Testing',3,'',9,1),(29,'2018-09-22 18:25:31.336080','1','localhost:8000',2,'[{\"changed\": {\"fields\": [\"domain\", \"name\"]}}]',13,1),(30,'2018-09-22 18:26:19.390659','1','localhost:8000',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',13,1),(31,'2018-09-22 19:30:35.014998','11','Auto Delete Testing',1,'[{\"added\": {}}]',9,1),(32,'2018-09-22 19:31:50.504292','11','Auto Delete Testing',3,'',9,1),(33,'2018-09-22 19:33:53.654472','11','Auto Delete Testing',3,'',9,1),(34,'2018-09-22 19:35:56.440987','10','All tags Test',2,'[{\"changed\": {\"fields\": [\"image\", \"tags\"]}}]',9,1),(35,'2018-09-22 19:36:45.205245','10','All tags Test',2,'[{\"changed\": {\"fields\": [\"image\", \"tags\"]}}]',9,1),(36,'2018-09-22 19:41:05.410496','10','All tags Test',2,'[{\"changed\": {\"fields\": [\"image\", \"tags\"]}}]',9,1),(37,'2018-09-22 19:43:31.257795','2','First Django Test',2,'[{\"changed\": {\"fields\": [\"tags\"]}}]',9,1),(38,'2018-09-22 19:49:01.028962','10','All tags Test',3,'',9,1),(39,'2018-09-22 20:37:08.938555','12','Empty field Test',1,'[{\"added\": {}}]',9,1),(40,'2018-09-22 20:42:30.957218','9','Delete',3,'',10,1),(41,'2018-09-22 20:43:03.398780','2','django',3,'',10,1),(42,'2018-09-23 08:18:09.213617','13','Auto delete tag test',1,'[{\"added\": {}}]',9,1),(43,'2018-09-23 08:20:02.377193','13','Auto delete tag test',3,'',9,1),(44,'2018-09-23 08:20:49.060670','14','Auto delete tag test',1,'[{\"added\": {}}]',9,1),(45,'2018-09-23 08:23:43.972920','14','Auto delete tag test',3,'',9,1),(46,'2018-09-23 10:56:43.397865','13','test agin',1,'[{\"added\": {}}]',9,1),(47,'2018-09-23 10:58:08.065460','13','test agin',3,'',9,1),(48,'2018-09-23 15:42:18.556792','13','unused',1,'[{\"added\": {}}]',10,1),(49,'2018-09-23 15:59:14.792113','14','unused',1,'[{\"added\": {}}]',10,1),(50,'2018-09-23 16:03:09.798235','15','unused',1,'[{\"added\": {}}]',10,1),(51,'2018-09-23 16:57:09.705283','12','Empty field Test',2,'[{\"changed\": {\"fields\": [\"image\", \"tags\"]}}]',9,1),(52,'2018-09-23 16:58:56.878129','12','Empty field Test',2,'[{\"changed\": {\"fields\": [\"image\", \"tags\"]}}]',9,1),(53,'2018-09-23 20:27:43.112773','14','hit count test',1,'[{\"added\": {}}]',9,1),(54,'2018-09-23 20:33:40.643641','14','hit count test',3,'',9,1),(55,'2018-09-24 08:05:09.453253','12','Empty field Test',3,'',9,1),(56,'2018-09-24 08:06:09.435211','13','First Django Test',1,'[{\"added\": {}}]',9,1),(57,'2018-09-24 08:06:59.246859','13','First Django Test',3,'',9,1),(58,'2018-09-24 09:27:26.552650','2','sailesh',1,'[{\"added\": {}}]',4,1),(59,'2018-09-24 09:28:21.376030','2','sailesh',2,'[{\"changed\": {\"fields\": [\"is_staff\"]}}]',4,1),(60,'2018-09-26 07:47:09.913771','10','test1',1,'[{\"added\": {}}]',9,1),(61,'2018-09-26 07:47:43.923915','11','test1',1,'[{\"added\": {}}]',9,1),(62,'2018-09-26 07:55:14.931440','11','test1',2,'[{\"changed\": {\"fields\": [\"body\", \"tags\"]}}]',9,1),(63,'2018-09-26 07:55:40.597623','11','test1',3,'',9,1),(64,'2018-09-26 07:55:40.682260','10','test1',3,'',9,1),(65,'2018-09-26 07:57:14.776744','12','Test1',1,'[{\"added\": {}}]',9,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(12,'blog','categories'),(8,'blog','comment'),(7,'blog','navcategory'),(9,'blog','post'),(5,'contenttypes','contenttype'),(14,'hitcount','blacklistip'),(15,'hitcount','blacklistuseragent'),(16,'hitcount','hit'),(17,'hitcount','hitcount'),(6,'sessions','session'),(13,'sites','site'),(10,'taggit','tag'),(11,'taggit','taggeditem');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2018-09-15 13:09:14.617419'),(2,'auth','0001_initial','2018-09-15 13:09:27.003539'),(3,'admin','0001_initial','2018-09-15 13:09:29.458332'),(4,'admin','0002_logentry_remove_auto_add','2018-09-15 13:09:29.522071'),(5,'admin','0003_logentry_add_action_flag_choices','2018-09-15 13:09:29.609098'),(6,'contenttypes','0002_remove_content_type_name','2018-09-15 13:09:31.075928'),(7,'auth','0002_alter_permission_name_max_length','2018-09-15 13:09:31.233408'),(8,'auth','0003_alter_user_email_max_length','2018-09-15 13:09:31.377351'),(9,'auth','0004_alter_user_username_opts','2018-09-15 13:09:31.436256'),(10,'auth','0005_alter_user_last_login_null','2018-09-15 13:09:32.206868'),(11,'auth','0006_require_contenttypes_0002','2018-09-15 13:09:32.256969'),(12,'auth','0007_alter_validators_add_error_messages','2018-09-15 13:09:32.332654'),(13,'auth','0008_alter_user_username_max_length','2018-09-15 13:09:32.601873'),(14,'auth','0009_alter_user_last_name_max_length','2018-09-15 13:09:32.780923'),(15,'sessions','0001_initial','2018-09-15 13:09:33.594061'),(16,'blog','0001_initial','2018-09-15 13:26:39.926258'),(17,'blog','0002_auto_20180915_1821','2018-09-15 18:21:49.278783'),(18,'taggit','0001_initial','2018-09-15 18:56:55.850079'),(19,'taggit','0002_auto_20150616_2121','2018-09-15 18:56:56.440901'),(20,'blog','0003_auto_20180915_1856','2018-09-15 18:56:59.672804'),(21,'blog','0004_auto_20180916_1951','2018-09-16 19:51:22.628495'),(22,'blog','0005_categories','2018-09-17 08:35:32.805368'),(23,'blog','0002_auto_20180917_0842','2018-09-17 08:42:57.844551'),(24,'blog','0003_auto_20180917_1547','2018-09-17 15:47:34.374404'),(25,'blog','0004_auto_20180921_0731','2018-09-21 07:31:32.440226'),(26,'blog','0005_auto_20180922_0824','2018-09-22 08:25:02.988980'),(27,'sites','0001_initial','2018-09-22 18:15:15.745066'),(28,'sites','0002_alter_domain_unique','2018-09-22 18:15:16.483183'),(29,'hitcount','0001_initial','2018-09-23 20:18:26.965297'),(30,'hitcount','0002_index_ip_and_session','2018-09-23 20:18:27.827972');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('1q2z55ijm22myblkadvv50vzjrl4cm86','ZDdmZTIyZWQ3YTBjYjA0NjRjNjI1NGI1OGEwZmIxOWY5MmExZmM5Yjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2YWVhODk0ODhkZDFjNjk1NDFiZDkxZTg3ZGM3YTMyMWI1MWY2ODllIn0=','2018-10-11 08:53:08.954871'),('1qvlmoyireekdbimrhe1degm59gg4gft','ZDdlZTU4YmFjMTlkZjI1NjdjZDIzMGY3MDVhZTJmMjMyOTJhZWFjMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwZjRhMDJmZGM2NzY0NjhmNGYxNjUxNTc4M2ZiZGVlM2MwZTk4YmE3In0=','2018-10-11 08:36:44.163790'),('2x9wl0gzs5taaoucpgfm0prisgqj8k2m','NjBlMzA2NmJlNDA3MDM2ZTc1NDAxZjU3YTMyMjZlNGU3NGMwNzdhODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0NjdmY2ExOGVhYjAyZGE4M2Q1N2M3OWQ1M2MyOTFmODAyZjJlYTk4In0=','2018-10-11 08:37:55.134038'),('4groz2v9iooistyq53eiey9nlmy63ago','M2VjNTY0ZDYyNjk1NTQzZGFmMzA1MzE0Mjk0NDJiYTcxMzViYzE5MDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxYTgzMjA4NTUyYzE3ZjQzNDQxOThhOGMxYWYwZTAxNjU5ODVmNDRhIn0=','2018-10-11 07:40:13.377085'),('6mw1fjmoyou4km3z7edefapfw2frlu60','NzZiM2Y4ZjJmNTcwM2ZmZWVjMGRlYTg4ZjNhZWY2NWEzYjI3ZWVjNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkNDU2ZDk2YzJlYTM5ZDdkNmI0NWQzMTViMzMzYzg0ZjEwZDJhOGViIn0=','2018-10-11 08:50:51.168138'),('91xis10vn9czk89aop75kweuluq3fcc1','ZGVmMWM4MDIwMzlhNzJiNTJiYjk2NjYzYjAyMDVkYzYyN2IyNzI5Zjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4MTkyNjQ4ZjZhYTZjZjE3MzM0NzdiZWNjZDg0ODYxZjg2MjZkYzgzIn0=','2018-10-11 08:16:17.764940'),('a71r1uhntdlxmoxuvarurlkq5nir78om','ZDFlYTZkYzY0NjJhMmUyZGE2MzJlZjg4NmM5N2Q0NzEyNTg2MDBmNjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2NzQ0NmMyMDgzZDlmMmE3M2VjM2FiNjYyYWVmZjJkZDhkYWVlOGQ5In0=','2018-10-11 15:15:39.815531'),('a9815gsur89epq4zcugrw13jzhsb9yof','ZjExNDQ5YWVkZWMxYzZjNTcxOWEwNmE3MWEyMGMwMzRiOWJmYjA2YTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3MTRlMzU3ZTk2ODQyZWVlMzg0ZjgxNGI3OTdmNGM2NjBiNzAzMWRkIn0=','2018-10-11 08:51:41.023197'),('e26j4j17sjimoyezr7c1qc9z51us7iiq','ZDFlYTZkYzY0NjJhMmUyZGE2MzJlZjg4NmM5N2Q0NzEyNTg2MDBmNjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2NzQ0NmMyMDgzZDlmMmE3M2VjM2FiNjYyYWVmZjJkZDhkYWVlOGQ5In0=','2018-10-11 15:19:18.770100'),('g516zg5gh8k130pdi14id3xvhoeleflh','MTdmZmVhYjIzNDMyOWI2MGQyYWQwNjZmMDAzNzJlMWY3ZTY4YzYwZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiNGMwMjgzMWE1ZDFhY2UzZTM1NzQ5ZTdlNGRkYThkZjJmY2QyNDRlIn0=','2018-10-09 18:31:31.908483'),('iyays2qnacg7n2zegjnb21de2mcpwn1o','M2VjNTY0ZDYyNjk1NTQzZGFmMzA1MzE0Mjk0NDJiYTcxMzViYzE5MDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxYTgzMjA4NTUyYzE3ZjQzNDQxOThhOGMxYWYwZTAxNjU5ODVmNDRhIn0=','2018-10-10 21:40:06.453543'),('izz0psfzahrvrks2auv4g0d44sosq1xl','NDM4Nzc3MmY4MTUxODQxNmQ5MTRhYWExYzg3ZTlmY2E5NmZjN2I2Mzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwZGIzOGQ2ZDk4NzM0NmJmMzIyZjg1YzFiOTQ5ZGJlMTI1ZTM2ZWVhIn0=','2018-10-11 08:48:56.177051'),('k7za37qdlxjauwa090klqwukpita0wga','MTdmZmVhYjIzNDMyOWI2MGQyYWQwNjZmMDAzNzJlMWY3ZTY4YzYwZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiNGMwMjgzMWE1ZDFhY2UzZTM1NzQ5ZTdlNGRkYThkZjJmY2QyNDRlIn0=','2018-10-10 09:41:23.286863'),('lab5nk3nf6i3k1jzozgb98blkenarj7y','MTdmZmVhYjIzNDMyOWI2MGQyYWQwNjZmMDAzNzJlMWY3ZTY4YzYwZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiNGMwMjgzMWE1ZDFhY2UzZTM1NzQ5ZTdlNGRkYThkZjJmY2QyNDRlIn0=','2018-10-10 21:09:33.507202'),('lglfuaan5nmkj9voulu4iw41d682drji','NGNmZjhmOWY4ZDgxNzYwNGFkNzExYTUwZmQyOGQzZTI5MWY4ODU3Mzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjNDViODE0YzljMzM5NzkzOTQ1NmY5ZmNiNThmODI3MDIwNjhlYTQ2In0=','2018-10-10 21:37:27.391480'),('mb2xn15lmc5w6jisdk3drs9b2lzx083u','MTdmZmVhYjIzNDMyOWI2MGQyYWQwNjZmMDAzNzJlMWY3ZTY4YzYwZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiNGMwMjgzMWE1ZDFhY2UzZTM1NzQ5ZTdlNGRkYThkZjJmY2QyNDRlIn0=','2018-10-10 08:25:00.879701'),('q2rr6dnex2rbry88ahjjgie8ogphhyvd','ZjliODlkODE1ZDZjOTk4YjllMmQ5MDU5N2ViMzBmNjhlOTg5YWU1ZTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlYjkzMjIwNjMzZWYwOTI1YmRkYjYwYzAxZGM5Y2E0OWUyNzRkYjYwIn0=','2018-10-11 07:57:15.347903'),('r1c8gz60j2arqdx3yzwmfj8gcprezgp0','NmU2OTUzZmQwNmJjNzZkYmU0YzQyNjkzZjJkNWYzNjM1OGZkYTAxODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxZjc5YWU4YjI4ODA5NWU2YTMyYTg0YzJhYTVhZmZmN2M0NGQ3ZWJlIn0=','2018-10-10 21:25:00.716783'),('u7hpr18ct7mron58br871d98bhuxxg1y','NmU2OTUzZmQwNmJjNzZkYmU0YzQyNjkzZjJkNWYzNjM1OGZkYTAxODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxZjc5YWU4YjI4ODA5NWU2YTMyYTg0YzJhYTVhZmZmN2M0NGQ3ZWJlIn0=','2018-10-10 21:14:56.930187'),('vy3sibr0z1c4yo230oios33g7hlb4jiv','MTdmZmVhYjIzNDMyOWI2MGQyYWQwNjZmMDAzNzJlMWY3ZTY4YzYwZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiNGMwMjgzMWE1ZDFhY2UzZTM1NzQ5ZTdlNGRkYThkZjJmY2QyNDRlIn0=','2018-10-10 17:50:44.148903'),('xcy3pe3wbn677gfgka9lli7risuz8gk5','MTdmZmVhYjIzNDMyOWI2MGQyYWQwNjZmMDAzNzJlMWY3ZTY4YzYwZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiNGMwMjgzMWE1ZDFhY2UzZTM1NzQ5ZTdlNGRkYThkZjJmY2QyNDRlIn0=','2018-10-10 09:56:19.500416'),('xuhujuws91ofxv5ddphmwautokxvcdct','OGRhNjI4NjM1MzFjNWI3ZDkzNGJjMjZlYzQzZjE3NjNiMjM5Zjk5NDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyOGVjM2RlYTA4ZmJhYmFkNTEyMTk1MDY3YjY4ZTM3OTkxYzkwOTk4In0=','2018-10-10 21:32:01.808830');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_site`
--

DROP TABLE IF EXISTS `django_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_site_domain_a2e37b91_uniq` (`domain`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_site`
--

LOCK TABLES `django_site` WRITE;
/*!40000 ALTER TABLE `django_site` DISABLE KEYS */;
INSERT INTO `django_site` VALUES (1,'localhost:8000','localhost:8000');
/*!40000 ALTER TABLE `django_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hitcount_blacklist_ip`
--

DROP TABLE IF EXISTS `hitcount_blacklist_ip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hitcount_blacklist_ip` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(40) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ip` (`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hitcount_blacklist_ip`
--

LOCK TABLES `hitcount_blacklist_ip` WRITE;
/*!40000 ALTER TABLE `hitcount_blacklist_ip` DISABLE KEYS */;
/*!40000 ALTER TABLE `hitcount_blacklist_ip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hitcount_blacklist_user_agent`
--

DROP TABLE IF EXISTS `hitcount_blacklist_user_agent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hitcount_blacklist_user_agent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_agent` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_agent` (`user_agent`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hitcount_blacklist_user_agent`
--

LOCK TABLES `hitcount_blacklist_user_agent` WRITE;
/*!40000 ALTER TABLE `hitcount_blacklist_user_agent` DISABLE KEYS */;
/*!40000 ALTER TABLE `hitcount_blacklist_user_agent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hitcount_hit`
--

DROP TABLE IF EXISTS `hitcount_hit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hitcount_hit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created` datetime(6) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `session` varchar(40) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `hitcount_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `hitcount_hit_created_79adf7bc` (`created`),
  KEY `hitcount_hit_hitcount_id_b7971910_fk_hitcount_hit_count_id` (`hitcount_id`),
  KEY `hitcount_hit_user_id_f7067f66_fk_auth_user_id` (`user_id`),
  KEY `hitcount_hit_ip_a52a62aa` (`ip`),
  KEY `hitcount_hit_session_5be83758` (`session`),
  CONSTRAINT `hitcount_hit_hitcount_id_b7971910_fk_hitcount_hit_count_id` FOREIGN KEY (`hitcount_id`) REFERENCES `hitcount_hit_count` (`id`),
  CONSTRAINT `hitcount_hit_user_id_f7067f66_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hitcount_hit`
--

LOCK TABLES `hitcount_hit` WRITE;
/*!40000 ALTER TABLE `hitcount_hit` DISABLE KEYS */;
/*!40000 ALTER TABLE `hitcount_hit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hitcount_hit_count`
--

DROP TABLE IF EXISTS `hitcount_hit_count`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hitcount_hit_count` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hits` int(10) unsigned NOT NULL,
  `modified` datetime(6) NOT NULL,
  `object_pk` int(10) unsigned NOT NULL,
  `content_type_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `hitcount_hit_count_content_type_id_object_pk_4dacb610_uniq` (`content_type_id`,`object_pk`),
  CONSTRAINT `hitcount_hit_count_content_type_id_4a734fe1_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hitcount_hit_count`
--

LOCK TABLES `hitcount_hit_count` WRITE;
/*!40000 ALTER TABLE `hitcount_hit_count` DISABLE KEYS */;
/*!40000 ALTER TABLE `hitcount_hit_count` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taggit_tag`
--

DROP TABLE IF EXISTS `taggit_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `taggit_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taggit_tag`
--

LOCK TABLES `taggit_tag` WRITE;
/*!40000 ALTER TABLE `taggit_tag` DISABLE KEYS */;
INSERT INTO `taggit_tag` VALUES (1,'test','test'),(3,'jazz','jazz'),(4,'music','music'),(6,'Today','today');
/*!40000 ALTER TABLE `taggit_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taggit_taggeditem`
--

DROP TABLE IF EXISTS `taggit_taggeditem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `taggit_taggeditem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(11) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `taggit_taggeditem_tag_id_f4f5b767_fk_taggit_tag_id` (`tag_id`),
  KEY `taggit_taggeditem_object_id_e2d7d1df` (`object_id`),
  KEY `taggit_taggeditem_content_type_id_object_id_196cc965_idx` (`content_type_id`,`object_id`),
  CONSTRAINT `taggit_taggeditem_content_type_id_9957a03c_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `taggit_taggeditem_tag_id_f4f5b767_fk_taggit_tag_id` FOREIGN KEY (`tag_id`) REFERENCES `taggit_tag` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taggit_taggeditem`
--

LOCK TABLES `taggit_taggeditem` WRITE;
/*!40000 ALTER TABLE `taggit_taggeditem` DISABLE KEYS */;
INSERT INTO `taggit_taggeditem` VALUES (2,2,9,1),(4,4,9,1),(5,5,9,1),(6,6,9,1),(7,7,9,1),(8,8,9,1),(9,9,9,1),(11,2,9,3),(12,2,9,4),(15,12,9,6);
/*!40000 ALTER TABLE `taggit_taggeditem` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-09-27 15:33:21
