-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: chattingapp
-- ------------------------------------------------------
-- Server version	8.0.23

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `azhar`
--

DROP TABLE IF EXISTS `azhar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `azhar` (
  `sender` varchar(50) NOT NULL,
  `receiver` varchar(50) NOT NULL,
  `msg` text NOT NULL,
  `timedate` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `azhar`
--

LOCK TABLES `azhar` WRITE;
/*!40000 ALTER TABLE `azhar` DISABLE KEYS */;
INSERT INTO `azhar` VALUES ('indianmohibkhan@gmail.com','azhar@gmail.com','How Are you','2021-03-15 14:41:01'),('azhar@gmail.com','indianmohibkhan@gmail.com','and you','2021-03-15 14:44:20'),('shoib@gmail.com','azhar@gmail.com','Hi...','2021-03-15 16:40:13'),('shoib@gmail.com','azhar@gmail.com','Hi...','2021-03-15 16:41:29'),('shoib@gmail.com','azhar@gmail.com','How are you','2021-03-15 16:41:51'),('shoib@gmail.com','azhar@gmail.com','where are you','2021-03-15 16:42:40'),('azhar@gmail.com','shoib@gmail.com','hello','2021-03-15 16:43:53'),('azhar@gmail.com','shoib@gmail.com','hey','2021-03-15 16:44:05'),('indianmohibkhan@gmail.com','azhar@gmail.com','where are you','2021-03-15 17:52:02'),('azhar@gmail.com','indianmohibkhan@gmail.com','in Aligarh','2021-03-15 20:12:36'),('indianmohibkhan@gmail.com','azhar@gmail.com','and you','2021-03-15 20:52:42'),('indianmohibkhan@gmail.com','azhar@gmail.com','hey','2021-03-15 21:35:27'),('indianmohibkhan@gmail.com','azhar@gmail.com','hiiii','2021-03-15 21:47:47'),('azhar@gmail.com','indianmohibkhan@gmail.com','Hello Bro','2021-03-15 21:56:37'),('indianmohibkhan@gmail.com','azhar@gmail.com','ABCD','2021-03-15 22:50:25'),('shoib@gmail.com','azhar@gmail.com','h','2021-03-16 07:11:56');
/*!40000 ALTER TABLE `azhar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2021-03-13 12:37:29.304994'),(2,'auth','0001_initial','2021-03-13 12:37:29.493562'),(3,'admin','0001_initial','2021-03-13 12:37:30.052786'),(4,'admin','0002_logentry_remove_auto_add','2021-03-13 12:37:30.207123'),(5,'admin','0003_logentry_add_action_flag_choices','2021-03-13 12:37:30.239111'),(6,'contenttypes','0002_remove_content_type_name','2021-03-13 12:37:30.398751'),(7,'auth','0002_alter_permission_name_max_length','2021-03-13 12:37:30.486749'),(8,'auth','0003_alter_user_email_max_length','2021-03-13 12:37:30.515288'),(9,'auth','0004_alter_user_username_opts','2021-03-13 12:37:30.523298'),(10,'auth','0005_alter_user_last_login_null','2021-03-13 12:37:30.594634'),(11,'auth','0006_require_contenttypes_0002','2021-03-13 12:37:30.602630'),(12,'auth','0007_alter_validators_add_error_messages','2021-03-13 12:37:30.614290'),(13,'auth','0008_alter_user_username_max_length','2021-03-13 12:37:30.688937'),(14,'auth','0009_alter_user_last_name_max_length','2021-03-13 12:37:30.779096'),(15,'auth','0010_alter_group_name_max_length','2021-03-13 12:37:30.813877'),(16,'auth','0011_update_proxy_permissions','2021-03-13 12:37:30.829872'),(17,'auth','0012_alter_user_first_name_max_length','2021-03-13 12:37:30.921019'),(18,'sessions','0001_initial','2021-03-13 12:37:30.952701');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('48xfznke19ac7c6j6j708vz0et5pfazy','.eJyrVkouLSpKzSsJVbJSKs7Iz0xySM9NzMzRS87PVdJRSs5ILAnPLMkASmbmpWQm5uXmZ2QmZWck5iEpqwUAXsAY5A:1lM4ak:82ZohnC-izY8l3sdqkwlwztawisRHPMjGcG6Mn4-jz0','2021-03-30 07:58:14.228720'),('9gtqbtykmq667blyov71tqfouylknby1','.eJyrViotTi1yzU3MzFGyUsrMS8lMzMvNz8hMys5IzHNIB4nrJefnKukoJZcWFaXmlYQClRVn5GcmoUpmJJaEZ5Zk4DWjFgBymidU:1lM71I:knS0R_rh6NYa8jyQLxjh_8PlyGNa7aGXpjuNLzQltwM','2021-03-30 10:33:48.058280');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indianmohibkhan`
--

DROP TABLE IF EXISTS `indianmohibkhan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `indianmohibkhan` (
  `sender` varchar(50) NOT NULL,
  `receiver` varchar(50) NOT NULL,
  `msg` text NOT NULL,
  `timedate` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indianmohibkhan`
--

LOCK TABLES `indianmohibkhan` WRITE;
/*!40000 ALTER TABLE `indianmohibkhan` DISABLE KEYS */;
INSERT INTO `indianmohibkhan` VALUES ('indianmohibkhan@gmail.com','azhar@gmail.com','Hi Azhar','2021-03-15 05:29:00'),('azhar@gmail.com','indianmohibkhan@gmail.com','Hello Mohib','2021-03-15 05:31:00'),('indianmohibkhan@gmail.com','azhar@gmail.com','How Are you','2021-03-15 14:41:01'),('azhar@gmail.com','indianmohibkhan@gmail.com','and you','2021-03-15 14:44:20'),('indianmohibkhan@gmail.com','shoib@gmail.com','Hello Shoib','2021-03-15 16:19:20'),('indianmohibkhan@gmail.com','shoib@gmail.com','What goning on...','2021-03-15 16:21:02'),('shoib@gmail.com','indianmohibkhan@gmail.com','Hi Mohib','2021-03-15 16:22:19'),('shoib@gmail.com','indianmohibkhan@gmail.com','','2021-03-15 16:32:27'),('indianmohibkhan@gmail.com','shoib@gmail.com','hey bro','2021-03-15 16:48:17'),('indianmohibkhan@gmail.com','azhar@gmail.com','where are you','2021-03-15 17:52:02'),('azhar@gmail.com','indianmohibkhan@gmail.com','in Aligarh','2021-03-15 20:12:36'),('indianmohibkhan@gmail.com','azhar@gmail.com','and you','2021-03-15 20:52:42'),('indianmohibkhan@gmail.com','shoib@gmail.com','Hey...','2021-03-15 21:31:43'),('indianmohibkhan@gmail.com','azhar@gmail.com','hey','2021-03-15 21:35:27'),('indianmohibkhan@gmail.com','azhar@gmail.com','hiiii','2021-03-15 21:47:47'),('azhar@gmail.com','indianmohibkhan@gmail.com','Hello Bro','2021-03-15 21:56:37'),('indianmohibkhan@gmail.com','azhar@gmail.com','ABCD','2021-03-15 22:50:25'),('shoib@gmail.com','indianmohibkhan@gmail.com','hello','2021-03-16 07:09:12');
/*!40000 ALTER TABLE `indianmohibkhan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shoib`
--

DROP TABLE IF EXISTS `shoib`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shoib` (
  `sender` varchar(50) NOT NULL,
  `receiver` varchar(50) NOT NULL,
  `msg` text NOT NULL,
  `timedate` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shoib`
--

LOCK TABLES `shoib` WRITE;
/*!40000 ALTER TABLE `shoib` DISABLE KEYS */;
INSERT INTO `shoib` VALUES ('indianmohibkhan@gmail.com','shoib@gmail.com','Hello Shoib','2021-03-15 16:19:20'),('indianmohibkhan@gmail.com','shoib@gmail.com','What goning on...','2021-03-15 16:21:02'),('shoib@gmail.com','indianmohibkhan@gmail.com','Hi Mohib','2021-03-15 16:22:19'),('shoib@gmail.com','indianmohibkhan@gmail.com','','2021-03-15 16:32:27'),('shoib@gmail.com','azhar@gmail.com','Hi...','2021-03-15 16:40:13'),('shoib@gmail.com','azhar@gmail.com','Hi...','2021-03-15 16:41:29'),('shoib@gmail.com','azhar@gmail.com','How are you','2021-03-15 16:41:51'),('shoib@gmail.com','azhar@gmail.com','where are you','2021-03-15 16:42:40'),('azhar@gmail.com','shoib@gmail.com','hello','2021-03-15 16:43:53'),('azhar@gmail.com','shoib@gmail.com','hey','2021-03-15 16:44:05'),('indianmohibkhan@gmail.com','shoib@gmail.com','hey bro','2021-03-15 16:48:17'),('indianmohibkhan@gmail.com','shoib@gmail.com','Hey...','2021-03-15 21:31:43'),('shoib@gmail.com','indianmohibkhan@gmail.com','hello','2021-03-16 07:09:12'),('shoib@gmail.com','azhar@gmail.com','h','2021-03-16 07:11:56');
/*!40000 ALTER TABLE `shoib` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('Azhar','azhar@gmail.com','azhar'),('Md Mohib Khan','indianmohibkhan@gmail.com','Khan@Mohib'),('Shoib','shoib@gmail.com','shoib');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-16 16:42:39
