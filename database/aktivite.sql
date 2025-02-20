CREATE DATABASE  IF NOT EXISTS `aktivite` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `aktivite`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: aktivite
-- ------------------------------------------------------
-- Server version	8.0.37

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
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
  `id` bigint NOT NULL AUTO_INCREMENT,
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
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add kullanici',7,'add_kullanici'),(26,'Can change kullanici',7,'change_kullanici'),(27,'Can delete kullanici',7,'delete_kullanici'),(28,'Can view kullanici',7,'view_kullanici'),(29,'Can add katilimci',8,'add_katilimci'),(30,'Can change katilimci',8,'change_katilimci'),(31,'Can delete katilimci',8,'delete_katilimci'),(32,'Can view katilimci',8,'view_katilimci'),(33,'Can add etkinlik',9,'add_etkinlik'),(34,'Can change etkinlik',9,'change_etkinlik'),(35,'Can delete etkinlik',9,'delete_etkinlik'),(36,'Can view etkinlik',9,'view_etkinlik'),(37,'Can add mesaj',10,'add_mesaj'),(38,'Can change mesaj',10,'change_mesaj'),(39,'Can delete mesaj',10,'delete_mesaj'),(40,'Can view mesaj',10,'view_mesaj'),(41,'Can add puan',11,'add_puan'),(42,'Can change puan',11,'change_puan'),(43,'Can delete puan',11,'delete_puan'),(44,'Can view puan',11,'view_puan'),(45,'Can add bekleyen etkinlik',12,'add_bekleyenetkinlik'),(46,'Can change bekleyen etkinlik',12,'change_bekleyenetkinlik'),(47,'Can delete bekleyen etkinlik',12,'delete_bekleyenetkinlik'),(48,'Can view bekleyen etkinlik',12,'view_bekleyenetkinlik');
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
  `id` bigint NOT NULL AUTO_INCREMENT,
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
  `id` bigint NOT NULL AUTO_INCREMENT,
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(12,'ilk','bekleyenetkinlik'),(9,'ilk','etkinlik'),(8,'ilk','katilimci'),(7,'ilk','kullanici'),(10,'ilk','mesaj'),(11,'ilk','puan'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2024-11-06 16:03:19.141290'),(2,'auth','0001_initial','2024-11-06 16:03:19.972310'),(3,'admin','0001_initial','2024-11-06 16:03:20.181628'),(4,'admin','0002_logentry_remove_auto_add','2024-11-06 16:03:20.181628'),(5,'admin','0003_logentry_add_action_flag_choices','2024-11-06 16:03:20.199452'),(6,'contenttypes','0002_remove_content_type_name','2024-11-06 16:03:20.302289'),(7,'auth','0002_alter_permission_name_max_length','2024-11-06 16:03:20.405977'),(8,'auth','0003_alter_user_email_max_length','2024-11-06 16:03:20.422368'),(9,'auth','0004_alter_user_username_opts','2024-11-06 16:03:20.444275'),(10,'auth','0005_alter_user_last_login_null','2024-11-06 16:03:20.519646'),(11,'auth','0006_require_contenttypes_0002','2024-11-06 16:03:20.525173'),(12,'auth','0007_alter_validators_add_error_messages','2024-11-06 16:03:20.540028'),(13,'auth','0008_alter_user_username_max_length','2024-11-06 16:03:20.633833'),(14,'auth','0009_alter_user_last_name_max_length','2024-11-06 16:03:20.724286'),(15,'auth','0010_alter_group_name_max_length','2024-11-06 16:03:20.751860'),(16,'auth','0011_update_proxy_permissions','2024-11-06 16:03:20.758560'),(17,'auth','0012_alter_user_first_name_max_length','2024-11-06 16:03:20.849849'),(18,'sessions','0001_initial','2024-11-06 16:03:20.897090'),(19,'ilk','0001_initial','2024-11-11 12:25:26.096994'),(20,'ilk','0002_bekleyenetkinlik','2024-11-26 15:02:34.953067'),(21,'ilk','0003_etkinlik_olusturan_etkinlik_onay_durumu','2024-11-26 15:13:51.096160'),(22,'ilk','0004_remove_mesaj_alici_mesaj_etkinlik','2024-11-30 12:09:37.522244'),(23,'ilk','0005_alter_bekleyenetkinlik_sure','2024-12-01 12:43:49.014091');
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
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ilk_bekleyenetkinlik`
--

DROP TABLE IF EXISTS `ilk_bekleyenetkinlik`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ilk_bekleyenetkinlik` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `ad` varchar(100) NOT NULL,
  `aciklama` longtext NOT NULL,
  `tarih` date NOT NULL,
  `saat` time(6) NOT NULL,
  `sure` int NOT NULL,
  `konum` varchar(200) NOT NULL,
  `kategori` varchar(100) NOT NULL,
  `olusturan_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ilk_bekleyenetkinlik_olusturan_id_afdd8f88_fk_ilk_kullanici_id` (`olusturan_id`),
  CONSTRAINT `ilk_bekleyenetkinlik_olusturan_id_afdd8f88_fk_ilk_kullanici_id` FOREIGN KEY (`olusturan_id`) REFERENCES `ilk_kullanici` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ilk_bekleyenetkinlik`
--

LOCK TABLES `ilk_bekleyenetkinlik` WRITE;
/*!40000 ALTER TABLE `ilk_bekleyenetkinlik` DISABLE KEYS */;
/*!40000 ALTER TABLE `ilk_bekleyenetkinlik` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ilk_etkinlik`
--

DROP TABLE IF EXISTS `ilk_etkinlik`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ilk_etkinlik` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `ad` varchar(255) NOT NULL,
  `aciklama` longtext NOT NULL,
  `tarih` date NOT NULL,
  `saat` time(6) NOT NULL,
  `sure` int DEFAULT NULL,
  `konum` varchar(255) NOT NULL,
  `kategori` varchar(100) NOT NULL,
  `olusturan_id` bigint DEFAULT NULL,
  `onay_durumu` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ilk_etkinlik_olusturan_id_8ce15ae2_fk_ilk_kullanici_id` (`olusturan_id`),
  CONSTRAINT `ilk_etkinlik_olusturan_id_8ce15ae2_fk_ilk_kullanici_id` FOREIGN KEY (`olusturan_id`) REFERENCES `ilk_kullanici` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ilk_etkinlik`
--

LOCK TABLES `ilk_etkinlik` WRITE;
/*!40000 ALTER TABLE `ilk_etkinlik` DISABLE KEYS */;
INSERT INTO `ilk_etkinlik` VALUES (1,'Rock\'n Roll Gecesi','Yerli rock gruplarının sahne alacağı muhteşem gece','2025-03-23','13:49:00.000000',120,'Başakşehir','Müzik',NULL,'pending'),(2,'Stand-Up Gösterisi','Ünlü komedyenlerin sahne alacağı gülmece şöleni','2024-12-04','20:21:00.000000',92,'Şişli','Eğlence',NULL,'pending'),(3,'Resim Sergisi','Genç sanatçıların eserlerinin sergileneceği etkinlik','2025-02-10','20:41:00.000000',89,'Şişli','Sergi',NULL,'pending'),(5,'Çocuk Tiyatrosu','Eğlenceli bir çocuk oyunu','2025-04-05','17:22:00.000000',103,'Kartal','Tiyatro',NULL,'pending'),(7,'Sokak Lezzetleri Festivali','Birbirinden lezzetli yemeklerin tadına bakın','2025-05-09','10:19:00.000000',143,'Ataşehir','Gastronomi',NULL,'pending'),(8,'Sokak Lezzetleri Festivali','Birbirinden lezzetli yemeklerin tadına bakın','2025-03-22','11:04:00.000000',150,'Beşiktaş','Gastronomi',NULL,'pending'),(9,'Çocuk Tiyatrosu','Eğlenceli bir çocuk oyunu','2025-05-04','16:30:00.000000',146,'Sarıyer','Tiyatro',NULL,'pending'),(10,'Yoga ve Meditasyon','Uzman eğitmenler eşliğinde yoga deneyimi','2025-05-31','20:00:00.000000',85,'Üsküdar','Spor',NULL,'pending'),(11,'Yoga ve Meditasyon','Uzman eğitmenler eşliğinde yoga deneyimi','2025-05-01','18:18:00.000000',79,'Pendik','Spor',NULL,'pending'),(13,'Caz Konseri','Akşam yemeği eşliğinde caz müziği','2025-02-04','13:01:00.000000',216,'Sarıyer','Müzik',NULL,'pending'),(14,'Rock\'n Roll Gecesi','Yerli rock gruplarının sahne alacağı muhteşem gece','2025-04-26','17:51:00.000000',66,'Başakşehir','Müzik',NULL,'pending'),(17,'Caz Konseri','Akşam yemeği eşliğinde caz müziği','2025-01-05','12:51:00.000000',114,'Fatih','Müzik',NULL,'pending'),(18,'Dans Gecesi','Latin dans gösterileri ve dans kursu','2025-02-28','15:20:00.000000',95,'Maltepe','Dans',NULL,'pending'),(19,'Stand-Up Gösterisi','Ünlü komedyenlerin sahne alacağı gülmece şöleni','2024-12-04','10:26:00.000000',75,'Üsküdar','Eğlence',NULL,'pending'),(20,'Fotoğrafçılık Workshop','Temel fotoğrafçılık teknikleri eğitimi','2025-03-19','10:25:00.000000',120,'Kartal','Workshop',NULL,'pending'),(21,'Sokak Lezzetleri Festivali','Birbirinden lezzetli yemeklerin tadına bakın','2025-03-22','10:39:00.000000',125,'Pendik','Gastronomi',NULL,'pending'),(23,'Çocuk Tiyatrosu','Eğlenceli bir çocuk oyunu','2025-02-13','11:21:00.000000',94,'Fatih','Tiyatro',NULL,'pending'),(24,'Resim Sergisi','Genç sanatçıların eserlerinin sergileneceği etkinlik','2025-01-19','22:05:00.000000',231,'Pendik','Sergi',NULL,'pending'),(26,'Rock\'n Roll Gecesi','Yerli rock gruplarının sahne alacağı muhteşem gece','2025-03-23','12:27:00.000000',224,'Şişli','Müzik',NULL,'pending'),(27,'Fotoğrafçılık Workshop','Temel fotoğrafçılık teknikleri eğitimi','2025-05-30','12:06:00.000000',182,'Pendik','Workshop',NULL,'pending'),(28,'Yoga ve Meditasyon','Uzman eğitmenler eşliğinde yoga deneyimi','2025-05-21','12:07:00.000000',211,'Başakşehir','Spor',NULL,'pending'),(29,'Rock\'n Roll Gecesi','Yerli rock gruplarının sahne alacağı muhteşem gece','2025-02-20','22:07:00.000000',138,'Zeytinburnu','Müzik',NULL,'pending'),(30,'Spor Şenliği','Çeşitli spor aktiviteleri ve yarışmalar','2025-05-02','16:00:00.000000',125,'Zeytinburnu','Spor',NULL,'pending'),(33,'Dans Gecesi','Latin dans gösterileri ve dans kursu','2024-12-20','13:24:00.000000',194,'Maltepe','Dans',NULL,'pending'),(34,'Doğa Yürüyüşü','Rehber eşliğinde doğa keşfi','2024-12-09','23:10:00.000000',234,'Beşiktaş','Spor',NULL,'pending'),(35,'Dans Gecesi','Latin dans gösterileri ve dans kursu','2025-05-11','17:22:00.000000',175,'Ataşehir','Dans',NULL,'pending'),(37,'Rock\'n Roll Gecesi','Yerli rock gruplarının sahne alacağı muhteşem gece','2025-04-03','23:34:00.000000',96,'Şişli','Müzik',NULL,'pending'),(39,'Spor Şenliği','Çeşitli spor aktiviteleri ve yarışmalar','2025-03-29','21:16:00.000000',60,'Beşiktaş','Spor',NULL,'pending'),(40,'Resim Sergisi','Genç sanatçıların eserlerinin sergileneceği etkinlik','2025-03-31','17:51:00.000000',144,'Beyoğlu','Sergi',NULL,'pending'),(41,'Sokak Lezzetleri Festivali','Birbirinden lezzetli yemeklerin tadına bakın','2025-04-04','22:57:00.000000',60,'Beyoğlu','Gastronomi',NULL,'pending'),(42,'Caz Konseri','Akşam yemeği eşliğinde caz müziği','2025-02-01','14:42:00.000000',140,'Üsküdar','Müzik',NULL,'pending'),(43,'Fotoğrafçılık Workshop','Temel fotoğrafçılık teknikleri eğitimi','2024-12-08','13:12:00.000000',219,'Sarıyer','Workshop',NULL,'pending'),(44,'El Sanatları Pazarı','Yerel sanatçıların el emeği ürünleri','2025-01-28','13:13:00.000000',69,'Zeytinburnu','Sanat',NULL,'pending'),(46,'Sokak Lezzetleri Festivali','Birbirinden lezzetli yemeklerin tadına bakın','2025-04-05','14:57:00.000000',145,'Maltepe','Gastronomi',NULL,'pending'),(47,'Resim Sergisi','Genç sanatçıların eserlerinin sergileneceği etkinlik','2025-04-01','22:49:00.000000',61,'Üsküdar','Sergi',NULL,'pending'),(48,'Doğa Yürüyüşü','Rehber eşliğinde doğa keşfi','2025-05-20','18:34:00.000000',215,'Beylikdüzü','Spor',NULL,'pending'),(49,'Çocuk Tiyatrosu','Eğlenceli bir çocuk oyunu','2025-04-10','18:08:00.000000',129,'Başakşehir','Tiyatro',NULL,'pending'),(50,'Resim Sergisi','Genç sanatçıların eserlerinin sergileneceği etkinlik','2024-12-25','20:00:00.000000',126,'Başakşehir','Sergi',NULL,'pending'),(51,'deneme','aksjdkjsad','2024-11-07','20:25:00.000000',60,'Trabzon','spor',NULL,'pending'),(54,'Yoga ve Meditasyon','Rahatlamak ve sağlıklı bir yaşam için yoga etkinliği.','2024-12-02','20:00:00.000000',60,'Park Alanı','Spor',NULL,''),(55,'Teknoloji ve İnovasyon','Yeni teknolojiler hakkında bilgi paylaşımı.','2024-12-02','20:00:00.000000',90,'Kongre Merkezi','Bilim ve Teknoloji',NULL,''),(57,'senolkms','senofsdfl','2024-12-02','20:00:00.000000',80,'Trabzon','Spor',166,'pending'),(58,'Son Son','son','2024-12-31','02:00:00.000000',80,'Trabzon','Spor',166,'approved'),(59,'son deneme','ada sdas dlasd ','2024-12-08','20:00:00.000000',50,'Trabzon','Spor',161,'approved'),(60,'Denem Etkinlik','deneme etkinlik','2024-12-10','20:00:00.000000',60,'Kadıköy','Spor',167,'approved'),(61,'Denem etkinlik2','deneme','2024-12-10','20:00:00.000000',30,'Maltepe','Spor',167,'approved');
/*!40000 ALTER TABLE `ilk_etkinlik` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ilk_katilimci`
--

DROP TABLE IF EXISTS `ilk_katilimci`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ilk_katilimci` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `etkinlik_id` bigint NOT NULL,
  `kullanici_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ilk_katilimci_etkinlik_id_e434b858_fk_ilk_etkinlik_id` (`etkinlik_id`),
  KEY `ilk_katilimci_kullanici_id_e702d00b_fk_ilk_kullanici_id` (`kullanici_id`),
  CONSTRAINT `ilk_katilimci_etkinlik_id_e434b858_fk_ilk_etkinlik_id` FOREIGN KEY (`etkinlik_id`) REFERENCES `ilk_etkinlik` (`id`),
  CONSTRAINT `ilk_katilimci_kullanici_id_e702d00b_fk_ilk_kullanici_id` FOREIGN KEY (`kullanici_id`) REFERENCES `ilk_kullanici` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ilk_katilimci`
--

LOCK TABLES `ilk_katilimci` WRITE;
/*!40000 ALTER TABLE `ilk_katilimci` DISABLE KEYS */;
INSERT INTO `ilk_katilimci` VALUES (1,14,94),(2,34,153),(3,30,146),(4,30,83),(5,8,38),(6,5,114),(7,18,132),(8,42,146),(9,42,7),(10,9,63),(11,27,146),(12,10,115),(13,37,4),(14,27,55),(15,47,80),(16,11,147),(17,41,101),(18,2,109),(19,23,28),(20,47,2),(21,17,96),(22,17,29),(23,9,36),(24,33,155),(25,42,118),(26,7,77),(27,9,51),(28,50,28),(29,13,109),(30,47,68),(31,47,112),(32,41,74),(33,30,100),(34,43,132),(35,44,35),(36,17,48),(37,29,120),(38,27,21),(39,33,17),(40,18,120),(41,41,50),(42,33,33),(43,46,63),(44,29,56),(45,37,120),(46,9,31),(47,33,156),(48,14,22),(49,24,37),(50,21,78),(51,24,132),(52,21,125),(53,20,21),(54,29,153),(55,24,55),(56,29,9),(57,14,95),(58,7,21),(59,47,149),(60,43,26),(61,41,99),(62,18,140),(64,49,145),(65,7,29),(66,18,37),(67,44,43),(68,8,49),(69,33,26),(70,21,101),(71,26,133),(72,28,40),(73,47,92),(74,40,29),(75,30,149),(76,50,161),(77,19,161),(78,43,161),(80,8,28),(81,54,161),(82,8,161),(83,54,166),(84,19,139),(85,27,139),(86,24,139),(87,2,161),(88,51,160),(89,3,139),(90,10,139),(91,54,139),(92,2,1),(93,3,1),(94,60,161);
/*!40000 ALTER TABLE `ilk_katilimci` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ilk_kullanici`
--

DROP TABLE IF EXISTS `ilk_kullanici`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ilk_kullanici` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `kullanici_adi` varchar(30) DEFAULT NULL,
  `sifre` varchar(255) DEFAULT NULL,
  `email` varchar(254) DEFAULT NULL,
  `konum` varchar(255) DEFAULT NULL,
  `ilgi_alanlari` longtext,
  `ad` varchar(30) DEFAULT NULL,
  `soyad` varchar(30) DEFAULT NULL,
  `dogum_tarihi` date DEFAULT NULL,
  `cinsiyet` varchar(10) DEFAULT NULL,
  `telefon_no` varchar(15) DEFAULT NULL,
  `profil_fotografi` varchar(100) DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `kullanici_adi` (`kullanici_adi`)
) ENGINE=InnoDB AUTO_INCREMENT=168 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ilk_kullanici`
--

LOCK TABLES `ilk_kullanici` WRITE;
/*!40000 ALTER TABLE `ilk_kullanici` DISABLE KEYS */;
INSERT INTO `ilk_kullanici` VALUES (1,'MurTas3','Th2Ox7','murat.tas96@hotmail.com','Cekmekoy','Yuzme, Sinema, Kitap Okuma','Murat','Tas','2024-12-02','Erkek','5789546694','profil_fotografi\\Vesika.jpg',0),(2,'KemSah77','Ej2Ed1','kemal.sahin20@hotmail.com','Cekmekoy','Spor','Kemal','Sahin','1997-04-15','Erkek','5851468811',NULL,0),(3,'MurArs19','Dv6Vc0','murat.arslan63@hotmail.com','Atasehir','Spor','Murat','Arslan','1994-05-17','Erkek','5974818295',NULL,0),(4,'OnuDog38','Wd0Aw2','onur.dogan9@hotmail.com','Atasehir','Gastronomi','Onur','Dogan','1988-05-05','Erkek','5369535723',NULL,0),(5,'SedKay57','Fy0Nj3','seda.kaya93@hotmail.com','Bakirkoy','Gastronomi','Seda','Kaya','2004-02-19','Kadin','5018708799',NULL,0),(6,'MerYil78','Un3Bg0','merve.yilmaz23@hotmail.com','Kartal','Spor','Merve','Yilmaz','2000-10-26','Kadin','5455746547',NULL,0),(7,'EceOzd82','Sq0In6','ecem.ozdemir21@hotmail.com','Silivri','Gastronomi','Ecem','Ozdemir','1994-09-10','Kadin','5292996530',NULL,0),(8,'MelAyd19','Be7Bd5','melis.aydin20@hotmail.com','Silivri','Bahce Isleri, Doga, Botanik','Melis','Aydin','1991-08-01','Kadin','5687252215',NULL,0),(9,'FatDog87','Ex9Ds2','fatih.dogan29@hotmail.com','Esenyurt','Spor, Kamp, Muzik','Fatih','Dogan','2001-02-05','Erkek','5343908042',NULL,0),(11,'EliKay31','Ty3Ch1','elif.kaya25@hotmail.com','Esenyurt','Spor','Elif','Kaya','1988-09-08','Kadin','5961170436',NULL,0),(12,'MelAsl95','Bl9Qg2','melis.aslan55@hotmail.com','Kartal','Spor','Melis','Aslan','2003-04-06','Kadin','5972709537',NULL,0),(13,'SedOzt19','Kn4Lb9','seda.ozturk27@hotmail.com','Cekmekoy','Bahce Isleri, Doga, Botanik','Seda','Ozturk','1999-12-13','Kadin','5158661981',NULL,0),(14,'SedOzt67','Do4Ni0','seda.ozturk11@hotmail.com','Fatih','Spor','Seda','Ozturk','1993-05-30','Kadin','5345749357',NULL,0),(15,'KemAks56','Jk8Ix5','kemal.aksoy13@hotmail.com','Esenyurt','Bahce Isleri, Doga, Botanik','Kemal','Aksoy','2004-04-06','Erkek','5452199700',NULL,0),(16,'SedDog28','Yf2Lq7','seda.dogan70@hotmail.com','Besiktas','Bahce Isleri, Doga, Botanik','Seda','Dogan','1996-06-18','Kadin','5186198773',NULL,0),(17,'EmiCel25','Jd6Tw1','emir.celik24@hotmail.com','Fatih','Yuzme, Sinema, Kitap Okuma','Emir','Celik','1991-05-01','Erkek','5542632867',NULL,0),(18,'EmiCel39','Vd2Rt7','emir.celik55@hotmail.com','Beylikduzu','Sanat','Emir','Celik','1994-12-27','Erkek','5324112932',NULL,0),(19,'IbrAsl6','Dv8Te6','ibrahim.aslan78@hotmail.com','Beyoglu','Eğlence','Ibrahim','Aslan','1998-01-07','Erkek','5257142998',NULL,0),(20,'DenYil36','Fn9Du5','deniz.yilmaz93@hotmail.com','Sultanbeyli','Gastronomi','Deniz','Yilmaz','1995-02-14','Kadin','5209112181',NULL,0),(21,'EmrDog4','Pv4Ni1','emre.dogan42@hotmail.com','Cekmekoy','Spor','Emre','Dogan','2004-12-30','Erkek','5720025622',NULL,0),(22,'MerAyd52','Bi5Rt6','merve.aydin52@hotmail.com','Uskudar','Spor, Kamp, Muzik','Merve','Aydin','1981-01-27','Kadin','5635460645',NULL,0),(23,'BurSah48','Fd0Uu6','burak.sahin97@hotmail.com','Zeytinburnu','Spor','Burak','Sahin','1991-03-29','Erkek','5312805348',NULL,0),(24,'NurAsl62','Mi1Wv5','nur.aslan12@hotmail.com','Bakirkoy','Gastronomi','Nur','Aslan','1998-06-30','Kadin','5336718367',NULL,0),(25,'OzcArs34','Ao7Eq5','ozcan.arslan5@hotmail.com','Silivri','Spor','Ozcan','Arslan','1986-09-17','Erkek','5163103853',NULL,0),(26,'EceOzt19','Ww6Rk9','ece.ozturk29@hotmail.com','Kucukcekmece','Spor','Ece','Ozturk','2001-12-03','Kadin','5500229073',NULL,0),(27,'EceKil20','Rw1Km1','ece.kilic11@hotmail.com','Zeytinburnu','Gastronomi','Ece','Kilic','2004-04-26','Kadin','5519903400',NULL,0),(28,'HasAsl90','Fr7Mj2','hasan.aslan44@hotmail.com','Maltepe','Spor','Hasan','Aslan','1992-04-22','Erkek','5138866225',NULL,0),(29,'OnuDog89','Rt7Rb2','onur.dogan37@hotmail.com','Uskudar','Yuzme, Sinema, Kitap Okuma','Onur','Dogan','1984-11-22','Erkek','5849597439',NULL,0),(30,'EceOzt97','Ol6Wl5','ece.ozturk95@hotmail.com','Esenyurt','Bilim ve Teknoloji, Zeka Oyunlari, Bilim','Ece','Ozturk','2001-07-12','Kadin','5426168948',NULL,0),(31,'MurAks84','Qw4Pr5','murat.aksoy62@hotmail.com','Sisli','Bahce Isleri, Doga, Botanik','Murat','Aksoy','1994-10-17','Erkek','5078845568',NULL,0),(32,'AysOzt87','Dm9Li2','ayse.ozturk22@hotmail.com','Silivri','Yuzme, Sinema, Kitap Okuma','Ayse','Ozturk','1991-11-13','Kadin','5708427543',NULL,0),(33,'CemYil38','Oe1Dg9','cem.yilmaz51@hotmail.com','Kartal','Eğlence','Cem','Yilmaz','1990-08-22','Erkek','5570719669',NULL,0),(34,'DenAsl44','Ry6Ho8','deniz.aslan91@hotmail.com','Eyup','Spor','Deniz','Aslan','1986-03-02','Kadin','5483083018',NULL,0),(35,'BusCel59','Ux1Fm8','busra.celik38@hotmail.com','Beylikduzu','Sanat','Busra','Celik','1984-01-23','Kadin','5651620641',NULL,0),(36,'EliKil1','Rq1Un3','elif.kilic83@hotmail.com','Kucukcekmece','Spor','Elif','Kilic','1983-08-31','Kadin','5218986901',NULL,0),(37,'DenArs0','Lx1Ar2','deniz.arslan52@hotmail.com','Beykoz','Eğlence','Deniz','Arslan','1995-02-18','Kadin','5453637297',NULL,0),(38,'IbrArs6','Nd0Xl4','ibrahim.arslan18@hotmail.com','Buyukcekmece','Spor','Ibrahim','Arslan','1998-07-30','Erkek','5148482045',NULL,0),(39,'DerCel57','Sz7Vz3','derya.celik49@hotmail.com','Sisli','Spor','Derya','Celik','1998-04-01','Kadin','5178194841',NULL,0),(40,'MerOzt10','Ri5Vm0','merve.ozturk75@hotmail.com','Beyoglu','Spor','Merve','Ozturk','1991-05-20','Kadin','5006336048',NULL,0),(41,'SevArs56','Cb9Uz4','sevgi.arslan32@hotmail.com','Cekmekoy','Eğlence','Sevgi','Arslan','2003-11-08','Kadin','5789086242',NULL,0),(42,'BusKil4','He9Jz6','busra.kilic17@hotmail.com','Kartal','Spor','Busra','Kilic','1998-01-19','Kadin','5090914178',NULL,0),(43,'NurDog54','Wd0Zp0','nur.dogan20@hotmail.com','Esenyurt','Spor','Nur','Dogan','1990-03-21','Kadin','5421667361',NULL,0),(44,'HasKil51','Ep4Hg4','hasan.kilic12@hotmail.com','Zeytinburnu','Spor','Hasan','Kilic','1982-05-08','Erkek','5090662101',NULL,0),(45,'CanKay71','Yi8Bw2','can.kaya29@hotmail.com','Sisli','Spor','Can','Kaya','1988-05-03','Erkek','5787604205',NULL,0),(46,'DenOzd44','Fq5Xv4','deniz.ozdemir76@hotmail.com','Atasehir','Sanat','Deniz','Ozdemir','1992-02-14','Kadin','5132299859',NULL,0),(47,'EceYil2','Gj9Rm4','ecem.yilmaz68@hotmail.com','Uskudar','Spor','Ecem','Yilmaz','1988-07-08','Kadin','5657142740',NULL,0),(48,'MerKay18','Hl3Pv2','merve.kaya35@hotmail.com','Kadikoy','Sanat','Merve','Kaya','1985-03-24','Kadin','5980926576',NULL,0),(49,'EceDog65','Rf9Gh7','ece.dogan52@hotmail.com','Sariyer','Spor','Ece','Dogan','1996-08-06','Kadin','5734621952',NULL,0),(50,'CerTas11','De4Xb6','ceren.tas79@hotmail.com','Sariyer','Spor','Ceren','Tas','1996-01-04','Kadin','5807821903',NULL,0),(51,'BusDem22','Lb9Ns0','busra.demir17@hotmail.com','Kucukcekmece','Bilim ve Teknoloji, Zeka Oyunlari, Bilim','Busra','Demir','1984-08-13','Kadin','5401348119',NULL,0),(52,'AhmOzt43','Mh9Rs4','ahmet.ozturk36@hotmail.com','Cekmekoy','Bilim ve Teknoloji, Zeka Oyunlari, Bilim','Ahmet','Ozturk','1992-06-04','Erkek','5396897088',NULL,0),(53,'MurArs97','Cq9Rn5','murat.arslan67@hotmail.com','Atasehir','Spor','Murat','Arslan','1991-09-19','Erkek','5303730010',NULL,0),(54,'FatOzd1','Lf8Jl0','fatih.ozdemir37@hotmail.com','Sultanbeyli','Spor','Fatih','Ozdemir','2000-06-09','Erkek','5976490882',NULL,0),(55,'SedSah48','Zd7Fx9','seda.sahin84@hotmail.com','Besiktas','Spor','Seda','Sahin','1998-11-14','Kadin','5247800001',NULL,0),(56,'NurDog61','Zj7Tn3','nur.dogan21@hotmail.com','Beykoz','Gastronomi','Nur','Dogan','1985-12-26','Kadin','5542820557',NULL,0),(57,'OnuDem82','Ly4Kt4','onur.demir66@hotmail.com','Besiktas','Sanat','Onur','Demir','2002-02-22','Erkek','5420261573',NULL,0),(58,'DenOzt21','Oa3Wg5','deniz.ozturk62@hotmail.com','Besiktas','Spor','Deniz','Ozturk','1992-06-22','Kadin','5613956160',NULL,0),(60,'EmiOzd1','Ua6Gi8','emir.ozdemir42@hotmail.com','Sultanbeyli','Spor','Emir','Ozdemir','1981-04-06','Erkek','5989370062',NULL,0),(61,'IbrAks15','Gi9Pf3','ibrahim.aksoy22@hotmail.com','Kartal','Spor','Ibrahim','Aksoy','1996-08-17','Erkek','5650759300',NULL,0),(62,'EceDog11','Zb3Rg1','ecem.dogan74@hotmail.com','Kucukcekmece','Bilim ve Teknoloji, Zeka Oyunlari, Bilim','Ecem','Dogan','1989-04-12','Kadin','5619716045',NULL,0),(63,'KemAyd37','Mv6Yp2','kemal.aydin85@hotmail.com','Atasehir','Yuzme, Sinema, Kitap Okuma','Kemal','Aydin','1983-10-13','Erkek','5185915932',NULL,0),(64,'DenOzd60','Nd0Sl0','deniz.ozdemir54@hotmail.com','Besiktas','Eğlence','Deniz','Ozdemir','2002-05-23','Kadin','5843403995',NULL,0),(65,'CemCel94','Sq9Vg8','cem.celik53@hotmail.com','Silivri','Yuzme, Sinema, Kitap Okuma','Cem','Celik','2001-05-05','Erkek','5655535770',NULL,0),(66,'DenOzt8','Em0Qb3','deniz.ozturk84@hotmail.com','Sultanbeyli','Sanat','Deniz','Ozturk','2004-11-15','Erkek','5428348025',NULL,0),(67,'ZeyAyd21','Fv5Kf9','zeynep.aydin22@hotmail.com','Besiktas','Gastronomi','Zeynep','Aydin','1992-01-11','Kadin','5729925236',NULL,0),(68,'CanOzt20','Sk8Zk0','can.ozturk44@hotmail.com','Kartal','Spor','Can','Ozturk','1995-03-03','Erkek','5703962805',NULL,0),(69,'FatYil99','Wj1Vn0','fatih.yilmaz54@hotmail.com','Sisli','Spor','Fatih','Yilmaz','1998-03-24','Erkek','5013706898',NULL,0),(70,'DerSah43','Wp4Nd1','derya.sahin70@hotmail.com','Kucukcekmece','Sanat','Derya','Sahin','1984-12-23','Kadin','5890591788',NULL,0),(71,'SibAsl88','Vi2Ja0','sibel.aslan2@hotmail.com','Sisli','Spor','Sibel','Aslan','1991-07-14','Kadin','5239256109',NULL,0),(72,'DenArs80','Uf5Gp1','deniz.arslan65@hotmail.com','Beykoz','Spor','Deniz','Arslan','2001-02-14','Kadin','5266712410',NULL,0),(73,'AhmDog97','Em8Xz1','ahmet.dogan35@hotmail.com','Besiktas','Sanat','Ahmet','Dogan','2000-12-10','Erkek','5138570014',NULL,0),(74,'SedAks16','Lw1Yl2','seda.aksoy5@hotmail.com','Kadikoy','Spor','Seda','Aksoy','1999-08-03','Kadin','5756149548',NULL,0),(75,'ZeyAyd87','Wt1Pl4','zeynep.aydin68@hotmail.com','Maltepe','Bahce Isleri, Doga, Botanik','Zeynep','Aydin','1999-06-01','Kadin','5836042888',NULL,0),(76,'ZeyOzt88','Sm2Xu2','zeynep.ozturk4@hotmail.com','Kartal','Spor','Zeynep','Ozturk','1994-01-20','Kadin','5677657417',NULL,0),(77,'MelDem96','Rs5Pi8','melis.demir29@hotmail.com','Maltepe','Spor','Melis','Demir','1993-08-27','Kadin','5858848051',NULL,0),(78,'AhmKay39','So6Qe0','ahmet.kaya82@hotmail.com','Sariyer','Spor','Ahmet','Kaya','2004-01-04','Erkek','5316218135',NULL,0),(79,'SibOzt52','Cu6Wi0','sibel.ozturk70@hotmail.com','Kucukcekmece','Gastronomi','Sibel','Ozturk','2003-07-11','Kadin','5586930898',NULL,0),(80,'MusAsl1','Fe2Oc8','mustafa.aslan16@hotmail.com','Pendik','Gastronomi','Mustafa','Aslan','1998-11-23','Erkek','5295740399',NULL,0),(81,'EceYil90','Hf1Cz6','ecem.yilmaz23@hotmail.com','Esenyurt','Spor','Ecem','Yilmaz','1992-05-18','Kadin','5755973936',NULL,0),(82,'KemKil84','Pn7Hg3','kemal.kilic44@hotmail.com','Besiktas','Spor','Kemal','Kilic','1997-05-27','Erkek','5133740591',NULL,0),(83,'SibAsl65','Cy4Pm6','sibel.aslan91@hotmail.com','Sariyer','Spor','Sibel','Aslan','1994-06-24','Kadin','5165408139',NULL,0),(84,'MelYil75','Hj9Lm1','melis.yilmaz37@hotmail.com','Pendik','Spor','Melis','Yilmaz','1995-11-10','Kadin','5039707807',NULL,0),(85,'OnuAyd90','Sh3Zv1','onur.aydin98@hotmail.com','Eyup','Eğlence','Onur','Aydin','1985-01-25','Erkek','5060555023',NULL,0),(86,'MehKay85','Oi9Xo1','mehmet.kaya86@hotmail.com','Beyoglu','Eğlence','Mehmet','Kaya','1998-10-24','Erkek','5164741772',NULL,0),(87,'AhmAyd13','Al1Ig3','ahmet.aydin4@hotmail.com','Beylikduzu','Spor','Ahmet','Aydin','2000-01-27','Erkek','5885462958',NULL,0),(88,'EsrDog39','Si6Ag1','esra.dogan16@hotmail.com','Maltepe','Spor','Esra','Dogan','1996-02-08','Kadin','5727646920',NULL,0),(89,'BusAyd43','Br2Dx1','busra.aydin63@hotmail.com','Fatih','Sanat','Busra','Aydin','2002-04-14','Kadin','5548090148',NULL,0),(90,'MehOzt22','Ry7Ut3','mehmet.ozturk6@hotmail.com','Sultanbeyli','Spor','Mehmet','Ozturk','1996-08-28','Erkek','5133769818',NULL,0),(91,'CerKay63','Hq3Aw3','ceren.kaya34@hotmail.com','Kadikoy','Bilim ve Teknoloji, Zeka Oyunlari, Bilim','Ceren','Kaya','1999-10-13','Kadin','5932860324',NULL,0),(92,'SibDog66','Nv6Pe1','sibel.dogan54@hotmail.com','Kartal','Spor','Sibel','Dogan','1997-10-18','Kadin','5932767908',NULL,0),(93,'SedKay0','Jn5Ao6','seda.kaya79@hotmail.com','Bakirkoy','Spor','Seda','Kaya','2004-03-11','Kadin','5456828187',NULL,0),(94,'ZeyOzd45','Fj2Ec8','zeynep.ozdemir0@hotmail.com','Beylikduzu','Spor','Zeynep','Ozdemir','1996-03-18','Kadin','5232255261',NULL,0),(95,'MusYil47','Ca8Gr5','mustafa.yildiz33@hotmail.com','Maltepe','Yuzme, Sinema, Kitap Okuma','Mustafa','Yildiz','1985-10-24','Erkek','5160256504',NULL,0),(96,'SevSah75','Cp7As5','sevgi.sahin20@hotmail.com','Sariyer','Eğlence','Sevgi','Sahin','1999-08-01','Kadin','5289128209',NULL,0),(97,'BusKay29','Sj7Rb2','busra.kaya75@hotmail.com','Sariyer','Bahce Isleri, Doga, Botanik','Busra','Kaya','2001-07-30','Kadin','5060305711',NULL,0),(98,'EmrSah21','Mk4Hy9','emre.sahin48@hotmail.com','Sultanbeyli','Sanat','Emre','Sahin','1998-12-29','Erkek','5354053987',NULL,0),(99,'SibTas57','Sv9Iu8','sibel.tas20@hotmail.com','Besiktas','Spor','Sibel','Tas','1987-10-04','Kadin','5930966793',NULL,0),(100,'EmrCel11','Yi8At6','emre.celik10@hotmail.com','Atasehir','Eğlence','Emre','Celik','1983-12-23','Erkek','5487428909',NULL,0),(101,'CerDog93','Zb3Sj7','ceren.dogan6@hotmail.com','Fatih','Spor','Ceren','Dogan','1992-06-05','Kadin','5296777691',NULL,0),(102,'EceOzd18','Pq4Jn4','ecem.ozdemir14@hotmail.com','Sultanbeyli','Spor','Ecem','Ozdemir','1984-04-22','Kadin','5419264942',NULL,0),(103,'DenYil81','Re8Wr8','deniz.yildiz5@hotmail.com','Beyoglu','Spor, Kamp, Muzik','Deniz','Yildiz','2001-01-03','Kadin','5035160488',NULL,0),(104,'EmiAks38','Ve3Mf5','emir.aksoy3@hotmail.com','Kadikoy','Gastronomi','Emir','Aksoy','1980-04-24','Erkek','5970782537',NULL,0),(105,'DenCel39','Rm3Mg8','deniz.celik58@hotmail.com','Beylikduzu','Spor','Deniz','Celik','1998-09-17','Erkek','5987321572',NULL,0),(106,'AliAks88','Xl5Je8','ali.aksoy87@hotmail.com','Kucukcekmece','Spor','Ali','Aksoy','1998-03-15','Erkek','5016846032',NULL,0),(107,'EliDog98','Tv9Bp7','elif.dogan88@hotmail.com','Fatih','Spor, Kamp, Muzik','Elif','Dogan','1991-04-21','Kadin','5618402120',NULL,0),(108,'CanAyd90','Ml7Jp8','can.aydin81@hotmail.com','Maltepe','Bahce Isleri, Doga, Botanik','Can','Aydin','1988-09-05','Erkek','5301482213',NULL,0),(109,'MelDog37','Mt3Le6','melis.dogan88@hotmail.com','Zeytinburnu','Spor','Melis','Dogan','1987-09-26','Kadin','5881779991',NULL,0),(110,'EceOzt43','Me3La7','ecem.ozturk63@hotmail.com','Buyukcekmece','Eğlence','Ecem','Ozturk','2001-08-14','Kadin','5415407440',NULL,0),(111,'DerOzt66','Dw9Jt6','derya.ozturk0@hotmail.com','Zeytinburnu','Spor','Derya','Ozturk','1981-06-07','Kadin','5260812134',NULL,0),(112,'EmiOzt2','Ia1Lz4','emir.ozturk17@hotmail.com','Buyukcekmece','Gastronomi','Emir','Ozturk','2000-06-22','Erkek','5559586467',NULL,0),(113,'EmrCel94','Pa2Iu0','emre.celik84@hotmail.com','Esenyurt','Bilim ve Teknoloji, Zeka Oyunlari, Bilim','Emre','Celik','1989-05-26','Erkek','5348395185',NULL,0),(114,'AylArs0','Jk9So6','aylin.arslan44@hotmail.com','Maltepe','Spor','Aylin','Arslan','1985-10-20','Kadin','5813824184',NULL,0),(115,'DenAks89','Vi1Al1','deniz.aksoy65@hotmail.com','Sultanbeyli','Gastronomi','Deniz','Aksoy','1994-05-03','Kadin','5905739787',NULL,0),(116,'EceTas34','Jn4Vq8','ecem.tas42@hotmail.com','Zeytinburnu','Spor','Ecem','Tas','1981-12-28','Kadin','5123533209',NULL,0),(117,'MehYil47','Km1El7','mehmet.yilmaz78@hotmail.com','Buyukcekmece','Spor','Mehmet','Yilmaz','1992-10-13','Erkek','5188026042',NULL,0),(118,'SevSah57','Dn2Oc8','sevgi.sahin75@hotmail.com','Sariyer','Spor, Kamp, Muzik','Sevgi','Sahin','1981-09-17','Kadin','5071126843',NULL,0),(119,'EmiSah50','Hh5Ze9','emir.sahin57@hotmail.com','Sisli','Bilim ve Teknoloji, Zeka Oyunlari, Bilim','Emir','Sahin','1989-01-16','Erkek','5078495665',NULL,0),(120,'SerOzt90','Tk8Gm6','serkan.ozturk49@hotmail.com','Basaksehir','Yuzme, Sinema, Kitap Okuma','Serkan','Ozturk','1999-07-19','Erkek','5415832301',NULL,0),(121,'MelDem7','Gk3It6','melis.demir78@hotmail.com','Besiktas','Sanat','Melis','Demir','1998-04-16','Kadin','5290592299',NULL,0),(122,'AliDog52','Gq3Cg0','ali.dogan85@hotmail.com','Silivri','Spor','Ali','Dogan','1997-02-01','Erkek','5857968885',NULL,0),(123,'AliCel13','Js4Em9','ali.celik27@hotmail.com','Besiktas','Spor','Ali','Celik','2004-06-30','Erkek','5064671057',NULL,0),(124,'DenKil4','Zy6Lh0','deniz.kilic78@hotmail.com','Beylikduzu','Eğlence','Deniz','Kilic','2000-03-31','Erkek','5685294513',NULL,0),(125,'AliCel47','Vr9Nx8','ali.celik11@hotmail.com','Esenyurt','Spor','Ali','Celik','1984-01-16','Erkek','5458686313',NULL,0),(126,'DenSah22','Ct3Tm1','deniz.sahin86@hotmail.com','Zeytinburnu','Spor','Deniz','Sahin','1996-01-04','Kadin','5606991209',NULL,0),(127,'OzcOzt38','Hs6Zb2','ozcan.ozturk98@hotmail.com','Maltepe','Bilim ve Teknoloji, Zeka Oyunlari, Bilim','Ozcan','Ozturk','1999-06-15','Erkek','5926077193',NULL,0),(128,'CemYil62','Kh2Gq3','cem.yilmaz92@hotmail.com','Basaksehir','Spor','Cem','Yilmaz','1998-07-12','Erkek','5927816072',NULL,0),(129,'MelOzd26','Mp5Yc5','melis.ozdemir4@hotmail.com','Besiktas','Spor','Melis','Ozdemir','1990-05-24','Kadin','5947306643',NULL,0),(130,'EliCel61','Pr5Nb7','elif.celik34@hotmail.com','Esenyurt','Bahce Isleri, Doga, Botanik','Elif','Celik','2002-07-24','Kadin','5463841513',NULL,0),(131,'HasOzt13','Vj3Ov4','hasan.ozturk61@hotmail.com','Esenyurt','Yuzme, Sinema, Kitap Okuma','Hasan','Ozturk','1997-02-25','Erkek','5574906329',NULL,0),(132,'BusAyd17','Lp5Yd8','busra.aydin22@hotmail.com','Beylikduzu','Spor','Busra','Aydin','1994-07-08','Kadin','5240706768',NULL,0),(133,'AylOzt95','Ci3Vz3','aylin.ozturk27@hotmail.com','Zeytinburnu','Eğlence','Aylin','Ozturk','1992-10-18','Kadin','5727898291',NULL,0),(134,'AhmKil95','Wu3Or6','ahmet.kilic35@hotmail.com','Fatih','Eğlence','Ahmet','Kilic','2002-12-20','Erkek','5526753530',NULL,0),(135,'AliYil24','Hn7Ci2','ali.yilmaz12@hotmail.com','Cekmekoy','Spor','Ali','Yilmaz','2001-10-01','Erkek','5980637834',NULL,0),(136,'MusOzd86','Ys7Kv0','mustafa.ozdemir96@hotmail.com','Sisli','Spor','Mustafa','Ozdemir','1986-03-28','Erkek','5338639743',NULL,0),(137,'DerYil31','Tx2Oc7','derya.yilmaz36@hotmail.com','Kucukcekmece','Spor','Derya','Yilmaz','2001-11-10','Kadin','5273281204',NULL,0),(138,'MelSah31','Fa3Xh8','melis.sahin33@hotmail.com','Basaksehir','Spor','Melis','Sahin','1998-06-05','Kadin','5684542338',NULL,0),(139,'AhmDem73','Sf9Fe2','ahmet.demir82@hotmail.com','Eyup','Bilim ve Teknoloji, Zeka Oyunlari, Bilim','Ahmet','Demir','2002-10-18','Erkek','5085857817',NULL,0),(140,'ZeyCel22','Rs5Mw9','zeynep.celik26@hotmail.com','Maltepe','Bilim ve Teknoloji, Zeka Oyunlari, Bilim','Zeynep','Celik','1996-09-16','Kadin','5532962433',NULL,0),(141,'FatYil77','Cj5Uf7','fatih.yildiz79@hotmail.com','Beylikduzu','Spor','Fatih','Yildiz','1997-02-21','Erkek','5029893049',NULL,0),(142,'MurYil23','Hy7Xg5','murat.yildiz98@hotmail.com','Beykoz','Spor, Kamp, Muzik','Murat','Yildiz','1985-11-03','Erkek','5201694616',NULL,0),(143,'HasDog31','Gp3Sq0','hasan.dogan42@hotmail.com','Bakirkoy','Yuzme, Sinema, Kitap Okuma','Hasan','Dogan','1984-01-29','Erkek','5548156164',NULL,0),(144,'KemAyd80','Kk7Ti3','kemal.aydin67@hotmail.com','Atasehir','Spor','Kemal','Aydin','2004-07-07','Erkek','5868518055',NULL,0),(145,'AylDog86','Kp7Cc2','aylin.dogan62@hotmail.com','Kucukcekmece','Bahce Isleri, Doga, Botanik','Aylin','Dogan','1993-05-26','Kadin','5801571263',NULL,0),(146,'SibYil53','Cy4Oi9','sibel.yilmaz85@hotmail.com','Beyoglu','Gastronomi','Sibel','Yilmaz','1996-12-27','Kadin','5824563103',NULL,0),(147,'AysDog88','Rl3Hj0','ayse.dogan97@hotmail.com','Besiktas','Sanat','Ayse','Dogan','1986-01-25','Kadin','5277410700',NULL,0),(148,'MelDem63','Uo3Hj8','melis.demir92@hotmail.com','Besiktas','Spor','Melis','Demir','1997-10-16','Kadin','5782750163',NULL,0),(149,'DenAsl5','Mh9Bk8','deniz.aslan29@hotmail.com','Sariyer','Gastronomi','Deniz','Aslan','1987-10-27','Erkek','5680250507',NULL,0),(150,'AysArs86','Jr2Gm6','ayse.arslan80@hotmail.com','Bakirkoy','Eğlence','Ayse','Arslan','1990-09-11','Kadin','5731477131',NULL,0),(151,'OnuKil32','Yf2Vg8','onur.kilic66@hotmail.com','Beylikduzu','Bilim ve Teknoloji, Zeka Oyunlari, Bilim','Onur','Kilic','1989-01-12','Erkek','5801511056',NULL,0),(152,'HasSah80','Rp9Uh9','hasan.sahin5@hotmail.com','Pendik','Gastronomi','Hasan','Sahin','2002-03-21','Erkek','5269212715',NULL,0),(153,'DenAks86','Ca8Hu0','deniz.aksoy33@hotmail.com','Basaksehir','Bilim ve Teknoloji, Zeka Oyunlari, Bilim','Deniz','Aksoy','1982-06-04','Kadin','5476542960',NULL,0),(154,'HusCel56','Lg9Wq4','huseyin.celik56@hotmail.com','Zeytinburnu','Spor','Huseyin','Celik','1983-03-31','Erkek','5963064950',NULL,0),(155,'CerAyd73','Po9Bn3','ceren.aydin81@hotmail.com','Kadikoy','Bilim ve Teknoloji, Zeka Oyunlari, Bilim','Ceren','Aydin','2001-05-06','Kadin','5834743039',NULL,0),(156,'IbrYil11','Kn3Hi7','ibrahim.yildiz38@hotmail.com','Sisli','Spor','Ibrahim','Yildiz','1995-01-07','Erkek','5842293527',NULL,0),(157,'AysTas34','Sb2Vm9','ayse.tas63@hotmail.com','Buyukcekmece','Spor, Kamp, Muzik','Ayse','Tas','1983-09-23','Kadin','5832070779',NULL,0),(158,'CemYil35','Rt7Ku7','cem.yilmaz94@hotmail.com','Beylikduzu','Gastronomi','Cem','Yilmaz','1996-11-25','Erkek','5540512399',NULL,0),(160,'admin','1234','kullanici123@example.com','Kadıköy','Spor','Ahmet','Yılmaz','1990-01-01','Erkek','555-123-5898',NULL,1),(161,'deneme','1234','kullanici@example.com','Trabzon','İlgi Alanları','Şenol','Kumaş','2024-11-25','Erkek','1234567890','profil_fotografi\\IMG_8970.JPG',0),(162,'senol','1234','senolkumas58@gmail.com','Konum Bilgisi','İlgi Alanları','Ad','Soyad','2000-01-01','Erkek','1234567890','',0),(166,'senolkmszxc','pbkdf2_sha256$720000$uiSqSjJfl3nEncEJJfosl0$R9Epiek7oyZ1ATaJsGoA35z+NwDAIEOBXutnFp5I5hI=','senolkumas51238@gmail.com','Trabzon','Spor,Gastronomi','Şenol','Kumaş','2024-11-29','Erkek','05343767455','',0),(167,'eminolmez61','1234','skdnjfksjdf@gmail.com','Trabzon','Spor','Emin','Ölmez','2024-12-05','Erkek','0534000000',NULL,0);
/*!40000 ALTER TABLE `ilk_kullanici` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ilk_mesaj`
--

DROP TABLE IF EXISTS `ilk_mesaj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ilk_mesaj` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `metin` longtext NOT NULL,
  `gonderim_zamani` datetime(6) NOT NULL,
  `gonderici_id` bigint NOT NULL,
  `etkinlik_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ilk_mesaj_gonderici_id_26a30807_fk_ilk_kullanici_id` (`gonderici_id`),
  KEY `ilk_mesaj_etkinlik_id_2d295823_fk_ilk_etkinlik_id` (`etkinlik_id`),
  CONSTRAINT `ilk_mesaj_etkinlik_id_2d295823_fk_ilk_etkinlik_id` FOREIGN KEY (`etkinlik_id`) REFERENCES `ilk_etkinlik` (`id`),
  CONSTRAINT `ilk_mesaj_gonderici_id_26a30807_fk_ilk_kullanici_id` FOREIGN KEY (`gonderici_id`) REFERENCES `ilk_kullanici` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ilk_mesaj`
--

LOCK TABLES `ilk_mesaj` WRITE;
/*!40000 ALTER TABLE `ilk_mesaj` DISABLE KEYS */;
INSERT INTO `ilk_mesaj` VALUES (1,'asd','2024-11-30 12:17:47.924734',161,51),(2,'asdasd','2024-11-30 12:40:35.454559',160,50),(3,'sdfsdf','2024-11-30 12:40:42.421208',160,50),(4,'adsas','2024-11-30 12:41:47.157148',161,51),(5,'asdasd','2024-11-30 12:42:02.499789',161,50),(6,'asdsad','2024-11-30 12:43:18.284172',161,2),(7,'klkl','2024-11-30 12:44:36.354522',161,50),(8,'ads','2024-11-30 12:50:17.415171',161,50),(9,'asdasd','2024-11-30 12:51:45.699199',161,50),(10,'asdas','2024-11-30 12:52:29.323091',161,50),(11,'clsdcds','2024-11-30 13:00:58.379502',161,50),(12,'cdsjkjcsdsd\r\n','2024-11-30 13:20:15.688334',161,50),(13,'zczcxxzcsad','2024-12-01 10:31:41.744509',161,51),(14,'asdkadsasd','2024-12-01 15:03:56.062467',139,13),(15,'deneme','2024-12-01 15:03:58.926770',139,13),(16,'deneme','2024-12-01 15:04:40.119371',161,13),(17,'deneme','2024-12-01 15:06:33.082569',161,13),(18,'deneme123','2024-12-01 15:11:57.758273',161,13),(19,'zxczxc','2024-12-01 15:23:03.420259',161,50),(20,'senol','2024-12-05 09:26:17.033342',161,2);
/*!40000 ALTER TABLE `ilk_mesaj` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ilk_puan`
--

DROP TABLE IF EXISTS `ilk_puan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ilk_puan` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `puan` int NOT NULL,
  `kazanilan_tarih` date NOT NULL,
  `kullanici_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ilk_puan_kullanici_id_c3847fe0_fk_ilk_kullanici_id` (`kullanici_id`),
  CONSTRAINT `ilk_puan_kullanici_id_c3847fe0_fk_ilk_kullanici_id` FOREIGN KEY (`kullanici_id`) REFERENCES `ilk_kullanici` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ilk_puan`
--

LOCK TABLES `ilk_puan` WRITE;
/*!40000 ALTER TABLE `ilk_puan` DISABLE KEYS */;
INSERT INTO `ilk_puan` VALUES (1,10,'2025-01-19',139),(2,10,'2024-12-04',161),(3,10,'2024-11-07',160),(4,10,'2025-02-10',139),(5,10,'2025-05-31',139),(6,10,'2024-12-02',139),(7,10,'2024-12-04',1),(8,10,'2025-02-10',1),(9,15,'2024-12-10',167),(10,15,'2024-12-10',167),(11,10,'2024-12-10',161);
/*!40000 ALTER TABLE `ilk_puan` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-02-13 21:35:26
