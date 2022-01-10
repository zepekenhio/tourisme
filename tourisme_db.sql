-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: tourisme_db
-- ------------------------------------------------------
-- Server version	8.0.27

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
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add cars',7,'add_cars'),(26,'Can change cars',7,'change_cars'),(27,'Can delete cars',7,'delete_cars'),(28,'Can view cars',7,'view_cars'),(29,'Can add clients',8,'add_clients'),(30,'Can change clients',8,'change_clients'),(31,'Can delete clients',8,'delete_clients'),(32,'Can view clients',8,'view_clients'),(33,'Can add hotel rooms',9,'add_hotelrooms'),(34,'Can change hotel rooms',9,'change_hotelrooms'),(35,'Can delete hotel rooms',9,'delete_hotelrooms'),(36,'Can view hotel rooms',9,'view_hotelrooms'),(37,'Can add hotels',10,'add_hotels'),(38,'Can change hotels',10,'change_hotels'),(39,'Can delete hotels',10,'delete_hotels'),(40,'Can view hotels',10,'view_hotels'),(41,'Can add sites touristique',11,'add_sitestouristique'),(42,'Can change sites touristique',11,'change_sitestouristique'),(43,'Can delete sites touristique',11,'delete_sitestouristique'),(44,'Can view sites touristique',11,'view_sitestouristique'),(45,'Can add transport company',12,'add_transportcompany'),(46,'Can change transport company',12,'change_transportcompany'),(47,'Can delete transport company',12,'delete_transportcompany'),(48,'Can view transport company',12,'view_transportcompany'),(49,'Can add reservation hotel',13,'add_reservationhotel'),(50,'Can change reservation hotel',13,'change_reservationhotel'),(51,'Can delete reservation hotel',13,'delete_reservationhotel'),(52,'Can view reservation hotel',13,'view_reservationhotel'),(53,'Can add guides',14,'add_guides'),(54,'Can change guides',14,'change_guides'),(55,'Can delete guides',14,'delete_guides'),(56,'Can view guides',14,'view_guides'),(57,'Can add drivers',15,'add_drivers'),(58,'Can change drivers',15,'change_drivers'),(59,'Can delete drivers',15,'delete_drivers'),(60,'Can view drivers',15,'view_drivers'),(61,'Can add cars reservation',16,'add_carsreservation'),(62,'Can change cars reservation',16,'change_carsreservation'),(63,'Can delete cars reservation',16,'delete_carsreservation'),(64,'Can view cars reservation',16,'view_carsreservation');
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session'),(7,'tourisme','cars'),(16,'tourisme','carsreservation'),(8,'tourisme','clients'),(15,'tourisme','drivers'),(14,'tourisme','guides'),(9,'tourisme','hotelrooms'),(10,'tourisme','hotels'),(13,'tourisme','reservationhotel'),(11,'tourisme','sitestouristique'),(12,'tourisme','transportcompany');
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2021-12-22 15:35:39.153522'),(2,'auth','0001_initial','2021-12-22 15:35:40.349282'),(3,'admin','0001_initial','2021-12-22 15:35:40.620876'),(4,'admin','0002_logentry_remove_auto_add','2021-12-22 15:35:40.636209'),(5,'admin','0003_logentry_add_action_flag_choices','2021-12-22 15:35:40.650212'),(6,'contenttypes','0002_remove_content_type_name','2021-12-22 15:35:40.853804'),(7,'auth','0002_alter_permission_name_max_length','2021-12-22 15:35:40.968998'),(8,'auth','0003_alter_user_email_max_length','2021-12-22 15:35:41.016312'),(9,'auth','0004_alter_user_username_opts','2021-12-22 15:35:41.032310'),(10,'auth','0005_alter_user_last_login_null','2021-12-22 15:35:41.176220'),(11,'auth','0006_require_contenttypes_0002','2021-12-22 15:35:41.182217'),(12,'auth','0007_alter_validators_add_error_messages','2021-12-22 15:35:41.199207'),(13,'auth','0008_alter_user_username_max_length','2021-12-22 15:35:41.324136'),(14,'auth','0009_alter_user_last_name_max_length','2021-12-22 15:35:41.459057'),(15,'auth','0010_alter_group_name_max_length','2021-12-22 15:35:41.492039'),(16,'auth','0011_update_proxy_permissions','2021-12-22 15:35:41.513027'),(17,'auth','0012_alter_user_first_name_max_length','2021-12-22 15:35:41.627961'),(18,'sessions','0001_initial','2021-12-22 15:35:41.699920'),(19,'tourisme','0001_initial','2021-12-22 15:35:43.196137');
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
-- Table structure for table `tourisme_cars`
--

DROP TABLE IF EXISTS `tourisme_cars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tourisme_cars` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `car_reg_num` varchar(10) NOT NULL,
  `car_mark` varchar(30) NOT NULL,
  `car_model` varchar(30) NOT NULL,
  `car_description` longtext NOT NULL,
  `company_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tourisme_cars_company_id_63707b27_fk_tourisme_` (`company_id`),
  CONSTRAINT `tourisme_cars_company_id_63707b27_fk_tourisme_` FOREIGN KEY (`company_id`) REFERENCES `tourisme_transportcompany` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tourisme_cars`
--

LOCK TABLES `tourisme_cars` WRITE;
/*!40000 ALTER TABLE `tourisme_cars` DISABLE KEYS */;
INSERT INTO `tourisme_cars` VALUES (1,'#6e1838','Kia','Sedona','ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia',1),(2,'#5b9953','Oldsmobile','Bravada','enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae',2),(5,'#4be5f8','Acura','CL','a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur',5),(6,'#90a6ec','Ford','Crown Victoria','consequat metus sapien ut nunc vestibulum ante ipsum primis in',6),(7,'#21d8e8','Chevrolet','Tahoe','cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla',7),(8,'#5f6020','Ford','Laser','vestibulum velit id pretium iaculis diam erat fermentum justo nec',8),(9,'#2078ae','Mitsubishi','Chariot','et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci',9),(10,'#f45831','Jaguar','S-Type','pede ac diam cras pellentesque volutpat dui maecenas tristique est',10),(11,'#8789d7','Mercedes-Benz','300E','vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est',11),(12,'#98440f','Hyundai','Genesis','sapien sapien non mi integer ac neque duis bibendum morbi non',12),(13,'#f2c81b','Infiniti','QX','lectus pellentesque at nulla suspendisse potenti cras in purus eu magna',13),(14,'#98180d','Buick','Regal','quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices',14),(15,'#93cd3b','Spyker','C8','lorem ipsum dolor sit amet consectetuer adipiscing elit proin risus praesent lectus vestibulum quam sapien varius ut blandit non',15),(16,'#6a1b0f','Porsche','Boxster','iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc',16),(17,'#db6850','Pontiac','Sunfire','vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel',17),(18,'#1a8691','Toyota','Prius','accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam',18),(20,'#6cf764','Pontiac','1000','in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate',20);
/*!40000 ALTER TABLE `tourisme_cars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tourisme_carsreservation`
--

DROP TABLE IF EXISTS `tourisme_carsreservation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tourisme_carsreservation` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `reservation_date` datetime(6) NOT NULL,
  `starting_date` date NOT NULL,
  `end_date` date NOT NULL,
  `car_id` bigint NOT NULL,
  `driver_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tourisme_carsreservation_car_id_8351c869_fk_tourisme_cars_id` (`car_id`),
  KEY `tourisme_carsreserva_driver_id_9f56bdc4_fk_tourisme_` (`driver_id`),
  CONSTRAINT `tourisme_carsreserva_driver_id_9f56bdc4_fk_tourisme_` FOREIGN KEY (`driver_id`) REFERENCES `tourisme_drivers` (`id`),
  CONSTRAINT `tourisme_carsreservation_car_id_8351c869_fk_tourisme_cars_id` FOREIGN KEY (`car_id`) REFERENCES `tourisme_cars` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tourisme_carsreservation`
--

LOCK TABLES `tourisme_carsreservation` WRITE;
/*!40000 ALTER TABLE `tourisme_carsreservation` DISABLE KEYS */;
/*!40000 ALTER TABLE `tourisme_carsreservation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tourisme_clients`
--

DROP TABLE IF EXISTS `tourisme_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tourisme_clients` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `client_name` varchar(30) NOT NULL,
  `client_id_number` longtext NOT NULL,
  `gender` varchar(20) NOT NULL,
  `email` varchar(120) NOT NULL,
  `address` varchar(20) NOT NULL,
  `nationality` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=152 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tourisme_clients`
--

LOCK TABLES `tourisme_clients` WRITE;
/*!40000 ALTER TABLE `tourisme_clients` DISABLE KEYS */;
INSERT INTO `tourisme_clients` VALUES (1,'Godwin Grigoriev','24909-106','Bigender','ggrigoriev0@tmall.com','35764 Nelson Park','Indonesia'),(2,'Angeli Warkup','0186-0324','Male','awarkup1@msu.edu','94657 Forest Terrace','Sweden'),(3,'Doralin Keeri','30142-882','Non-binary','dkeeri2@huffingtonpost.com','801 Blackbird Avenue','France'),(5,'Vivyan Rickaert','54868-6375','Genderqueer','vrickaert4@weather.com','834 Sachtjen Avenue','United States'),(6,'Bibby Bloomfield','54868-5644','Polygender','bbloomfield5@printfriendly.com','5 Everett Lane','Iran'),(7,'Milzie Januszkiewicz','0363-6711','Female','mjanuszkiewicz6@yale.edu','22 Spohn Terrace','Russia'),(8,'Danielle Bienvenu','47219-200','Genderqueer','dbienvenu7@lulu.com','61 Bonner Parkway','Russia'),(9,'Stevy Beade','16571-500','Male','sbeade8@creativecommons.org','24152 Melody Terrace','Brazil'),(10,'Harcourt Lawn','41250-432','Female','hlawn9@japanpost.jp','1 Mayer Crossing','Argentina'),(11,'Monte Fearby','54868-4640','Bigender','mfearbya@reference.com','325 5th Street','Tunisia'),(13,'Jennilee Strase','59779-164','Bigender','jstrasec@furl.net','8 Judy Place','Sweden'),(14,'Culley Limrick','13734-115','Male','climrickd@freewebs.com','5 Leroy Street','Philippines'),(16,'Rita Doerren','51511-596','Polygender','rdoerrenf@auda.org.au','12 Service Road','Slovenia'),(17,'Zarla Marqyes','43269-723','Female','zmarqyesg@virginia.edu','25226 Utah Hill','Vietnam'),(18,'Lana Swateridge','30142-247','Polygender','lswateridgeh@unicef.org','425 Northfield Drive','Poland'),(19,'Kristoforo Ogle','0404-0714','Bigender','koglei@hubpages.com','989 Goodland Lane','China'),(20,'Arielle Leaton','59676-566','Male','aleatonj@51.la','1 Farragut Terrace','China'),(22,'Tallulah Quinn','41167-0850','Genderfluid','tquinnl@wufoo.com','16 Northview Center','Indonesia'),(23,'Peter Peperell','68788-9108','Agender','ppeperellm@surveymonkey.com','829 East Avenue','Albania'),(24,'Claire McVane','42254-063','Non-binary','cmcvanen@dagondesign.com','64 Graceland Trail','Poland'),(25,'Mar Ruffle','10191-1829','Bigender','mruffleo@yelp.com','353 Springview Way','Colombia'),(26,'Jobina Doncaster','0527-1632','Female','jdoncasterp@dell.com','011 Summerview Way','China'),(27,'Tadio Issacof','42254-261','Non-binary','tissacofq@hostgator.com','066 Nancy Trail','China'),(28,'Jemmie Ganter','36987-1177','Polygender','jganterr@hubpages.com','634 Miller Parkway','Indonesia'),(30,'Thom De Filippis','68788-9113','Male','tdet@yandex.ru','13 4th Point','Czech Republic'),(31,'Guglielma Fawdrey','66472-034','Bigender','gfawdreyu@independent.co.uk','30 Sundown Place','Indonesia'),(32,'Tulley Studdert','0093-2109','Bigender','tstuddertv@latimes.com','99 Sage Alley','Indonesia'),(33,'Shermie Chipperfield','24470-906','Agender','schipperfieldw@thetimes.co.uk','4112 Manley Street','Vietnam'),(34,'Auberta Aslet','59158-913','Genderfluid','aasletx@php.net','25 Sunnyside Road','Mauritius'),(36,'Benyamin O\'Donohue','54868-0016','Bigender','bodonohuez@cafepress.com','58 Dapin Terrace','Georgia'),(37,'Gail Woolvett','60681-5403','Male','gwoolvett10@nps.gov','565 Vidon Park','Philippines'),(38,'Fleming Dwelly','55154-5224','Polygender','fdwelly11@bloglovin.com','1717 Orin Avenue','Thailand'),(39,'Dode Decker','65862-551','Male','ddecker12@sakura.ne.jp','59755 Lakeland Place','El Salvador'),(40,'Frankie Joysey','44237-014','Non-binary','fjoysey13@facebook.com','5 Esker Alley','Indonesia'),(41,'Jo-anne Pugsley','51672-1316','Female','jpugsley14@cyberchimps.com','5689 Fulton Court','Canada'),(42,'Ashlan Ronaghan','54868-6294','Female','aronaghan15@sciencedaily.com','67593 Nobel Park','Philippines'),(43,'Gale Hussey','54868-5742','Female','ghussey16@amazon.co.jp','705 Cascade Junction','Indonesia'),(45,'Blancha Sizeland','55312-377','Female','bsizeland18@mozilla.com','24078 Village Alley','China'),(47,'Ainslie Abbotson','63354-101','Bigender','aabbotson1a@squidoo.com','6640 Cody Place','China'),(48,'Netta Penni','54868-3284','Male','npenni1b@vinaora.com','8115 Mallard Avenue','Indonesia'),(50,'Carce Cropp','0143-9768','Genderqueer','ccropp1d@huffingtonpost.com','70861 Bay Road','Brazil'),(51,'Leroi Barnes','60512-6443','Polygender','lbarnes1e@nydailynews.com','139 Lawn Street','Indonesia'),(53,'Meier Evitt','43742-0199','Agender','mevitt1g@dagondesign.com','86531 Hoard Street','Chile'),(54,'Cammi Troup','21695-980','Genderfluid','ctroup1h@webmd.com','1 Hooker Circle','Yemen'),(55,'Priscilla Yakobovicz','66582-414','Non-binary','pyakobovicz1i@de.vu','97 Sunfield Trail','China'),(56,'Othello Catmull','10202-186','Non-binary','ocatmull1j@about.me','5578 Badeau Place','Argentina'),(57,'Jim Beardsworth','65044-4855','Female','jbeardsworth1k@go.com','86571 Derek Lane','Thailand'),(58,'Ced Paxeford','10812-327','Male','cpaxeford1l@boston.com','827 North Road','Philippines'),(59,'Kipp Bukowski','51079-062','Non-binary','kbukowski1m@freewebs.com','88 Barby Trail','Sweden'),(60,'Earle Griffitts','63736-363','Male','egriffitts1n@wsj.com','94 Kipling Pass','Indonesia'),(61,'Odille Kirkpatrick','36987-1702','Male','okirkpatrick1o@angelfire.com','53 Meadow Valley Way','Portugal'),(62,'Cole Wortley','58503-064','Female','cwortley1p@mtv.com','38 Superior Road','Brazil'),(63,'Egan Feldmus','65162-768','Polygender','efeldmus1q@vkontakte.ru','7 Hanson Parkway','El Salvador'),(66,'Bathsheba Allbones','0187-2616','Genderqueer','ballbones1t@theatlantic.com','73 Birchwood Point','Poland'),(67,'Isidor Baterip','0395-1037','Male','ibaterip1u@stumbleupon.com','5317 Dixon Court','Philippines'),(70,'Joell Ashenhurst','10812-208','Agender','jashenhurst1x@discovery.com','515 Fisk Circle','China'),(72,'Gerard Turbat','54868-4091','Agender','gturbat1z@deliciousdays.com','44115 Grover Park','United States'),(73,'Juliette Gittus','58232-0327','Bigender','jgittus20@independent.co.uk','97636 Welch Parkway','Indonesia'),(75,'Edlin Turfus','53942-501','Female','eturfus22@etsy.com','78648 Green Junction','Sweden'),(76,'Fredelia Wildman','47335-928','Genderqueer','fwildman23@bandcamp.com','2904 Hanson Drive','China'),(77,'Sascha Beacom','57520-0028','Non-binary','sbeacom24@unicef.org','2120 Heffernan Park','China'),(80,'Graig Silburn','37205-586','Polygender','gsilburn27@1und1.de','08308 Arizona Alley','Ireland'),(81,'Davie Steketee','54868-3191','Female','dsteketee28@timesonline.co.uk','2 Buena Vista Hill','Philippines'),(82,'Bernelle Bannerman','36987-2972','Bigender','bbannerman29@geocities.jp','5 Fairfield Hill','Poland'),(83,'Denice Ervin','55319-619','Bigender','dervin2a@smugmug.com','54097 Russell Hill','Brazil'),(84,'Carol Peeke-Vout','54868-0062','Genderqueer','cpeekevout2b@google.co.jp','51 Kenwood Terrace','China'),(86,'Engracia Ebbitt','54868-4572','Non-binary','eebbitt2d@mail.ru','0209 Walton Place','Saudi Arabia'),(87,'Janene Scorthorne','47593-479','Genderqueer','jscorthorne2e@nyu.edu','541 Darwin Lane','Philippines'),(88,'Sherill de Juares','55154-6176','Polygender','sde2f@google.com.au','31718 Manley Way','Indonesia'),(89,'Jacquelynn Betteson','63323-174','Non-binary','jbetteson2g@yellowpages.com','4437 Longview Road','Russia'),(90,'Cristine Cumo','59779-754','Male','ccumo2h@tripadvisor.com','9770 7th Way','China'),(91,'Danyelle Jacobsson','0713-0135','Female','djacobsson2i@1688.com','4 Lakeland Street','Thailand'),(92,'Miguel McCormack','53329-676','Bigender','mmccormack2j@nationalgeographic.com','8347 Beilfuss Avenue','Madagascar'),(94,'Shayne Labba','58232-0526','Male','slabba2l@xinhuanet.com','257 Rigney Point','Russia'),(95,'Blakeley Astie','51514-0317','Agender','bastie2m@answers.com','325 Kenwood Avenue','Canada'),(96,'Konstantin Angove','0378-6988','Non-binary','kangove2n@bizjournals.com','8068 Algoma Center','Indonesia'),(97,'Ferris Seton','0404-6620','Bigender','fseton2o@amazon.co.uk','3 New Castle Point','Honduras'),(98,'Sarge Frotton','0067-5050','Polygender','sfrotton2p@liveinternet.ru','14 Aberg Avenue','Argentina'),(99,'Blane Eby','54868-3319','Male','beby2q@vistaprint.com','327 Veith Road','Ukraine'),(100,'Ring Tinto','21695-719','Agender','rtinto2r@nationalgeographic.com','79 Old Shore Terrace','France'),(101,'Kaitlynn Middleton','0409-2012','Bigender','kmiddleton2s@merriam-webster.com','8 Swallow Trail','Iran'),(102,'Audrye Shields','52389-117','Polygender','ashields2t@liveinternet.ru','07159 Clove Trail','Ukraine'),(103,'Camala Skermer','41520-957','Genderqueer','cskermer2u@samsung.com','79 Browning Way','Czech Republic'),(105,'Lammond Micklewright','63304-792','Female','lmicklewright2w@usa.gov','781 Annamark Avenue','Poland'),(106,'Billy Lewry','0363-0901','Polygender','blewry2x@dailymail.co.uk','62 Ridgeway Trail','Czech Republic'),(107,'Morris Dockreay','0536-1962','Non-binary','mdockreay2y@wisc.edu','82585 Hagan Point','Indonesia'),(108,'Clem Grinyer','0536-1810','Male','cgrinyer2z@nationalgeographic.com','5 Rigney Court','Greece'),(109,'Theressa Belton','54868-6016','Bigender','tbelton30@yelp.com','9 Melody Street','Italy'),(110,'Paule Currum','51514-0251','Female','pcurrum31@privacy.gov.au','32 Montana Road','China'),(111,'Wynn Peirpoint','0591-1117','Male','wpeirpoint32@paypal.com','84926 Hauk Junction','Sweden'),(112,'Suzy Cagan','63323-311','Polygender','scagan33@dropbox.com','9 Erie Junction','United States'),(114,'Carleen Jeckells','10725-0001','Female','cjeckells35@flickr.com','3 Kingsford Junction','Portugal'),(115,'Celine Hagard','98132-158','Male','chagard36@quantcast.com','3763 Luster Court','Ukraine'),(116,'Taffy Hollerin','58194-017','Genderqueer','thollerin37@liveinternet.ru','5 David Street','Malaysia'),(121,'Salvador Copcote','68462-340','Bigender','scopcote3c@bloomberg.com','736 Jana Park','Philippines'),(122,'Nikki Lockley','51009-205','Bigender','nlockley3d@patch.com','8738 Duke Alley','Thailand'),(123,'Jess Armal','68462-385','Male','jarmal3e@scientificamerican.com','85 Saint Paul Alley','China'),(125,'Todd Lount','59762-1520','Genderfluid','tlount3g@auda.org.au','2595 Oneill Trail','Philippines'),(126,'Valenka Leile','36987-2701','Female','vleile3h@1688.com','958 Rowland Park','Philippines'),(127,'Blakeley Gornall','68788-9207','Male','bgornall3i@cloudflare.com','96 4th Pass','China'),(128,'Kerrill Hand','36800-896','Bigender','khand3j@prlog.org','881 Carioca Circle','Portugal'),(129,'Caspar Olivi','50493-0001','Genderqueer','colivi3k@tinyurl.com','3113 Bay Hill','Peru'),(130,'Chan Bernardin','48951-7109','Polygender','cbernardin3l@sciencedaily.com','62 Dottie Point','Indonesia'),(132,'Nona Ferruzzi','30014-023','Bigender','nferruzzi3n@plala.or.jp','09 Anthes Crossing','China'),(133,'Trudi Illesley','0268-1041','Female','tillesley3o@mlb.com','228 Center Circle','Albania'),(134,'Alli Dootson','0091-3324','Bigender','adootson3p@skyrock.com','9773 Cardinal Park','Philippines'),(135,'Freddy Lovatt','55154-6966','Bigender','flovatt3q@miibeian.gov.cn','5 Fairfield Point','Thailand'),(136,'Chiquita Lyne','55312-015','Non-binary','clyne3r@nifty.com','26 Linden Trail','Indonesia'),(137,'Petronilla Pimlott','43063-476','Non-binary','ppimlott3s@i2i.jp','808 Clarendon Way','China'),(138,'Terrence Milliere','36987-2124','Non-binary','tmilliere3t@lycos.com','85116 South Plaza','China'),(139,'Gabrila Breckin','36987-2672','Genderqueer','gbreckin3u@wikipedia.org','4 Twin Pines Plaza','China'),(140,'Baudoin Borsay','63354-360','Non-binary','bborsay3v@chron.com','2469 Comanche Lane','Finland'),(141,'Jacquenetta Ourtic','33261-104','Female','jourtic3w@hc360.com','20 Dexter Center','Russia'),(142,'Brianne Silley','58118-4034','Male','bsilley3x@umich.edu','89 Crest Line Road','China'),(143,'Carmencita Pea','0363-0802','Bigender','cpea3y@cmu.edu','73803 Laurel Avenue','Portugal'),(144,'Kessiah Gerdts','21695-603','Non-binary','kgerdts3z@census.gov','27 Monterey Drive','Brazil'),(145,'Abeu Josef','64942-1306','Female','ajosef40@indiatimes.com','367 East Court','Cameroun'),(146,'Wandie Grewcock','54602-758','Agender','wgrewcock41@cyberchimps.com','6 Sugar Crossing','Mongolia'),(147,'Remus Rossey','24488-021','Agender','rrossey42@amazon.co.uk','5636 Hovde Crossing','Afghanistan'),(149,'Ambros Strowther','49502-900','Polygender','astrowther44@omniture.com','6 Tennessee Terrace','Vietnam'),(150,'Redford Leethem','0268-0626','Bigender','rleethem45@mediafire.com','546 Village Place','France'),(151,'Nassir Ahmat','2436 7839 536','Masculin','nassir@tech.com','Avenue Charles de','Tchadien');
/*!40000 ALTER TABLE `tourisme_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tourisme_drivers`
--

DROP TABLE IF EXISTS `tourisme_drivers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tourisme_drivers` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `driver_name` varchar(10) NOT NULL,
  `driver_licence` varchar(30) NOT NULL,
  `driver_age` varchar(30) NOT NULL,
  `driver_experience` longtext NOT NULL,
  `company_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tourisme_drivers_company_id_06fe5c21_fk_tourisme_` (`company_id`),
  CONSTRAINT `tourisme_drivers_company_id_06fe5c21_fk_tourisme_` FOREIGN KEY (`company_id`) REFERENCES `tourisme_transportcompany` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tourisme_drivers`
--

LOCK TABLES `tourisme_drivers` WRITE;
/*!40000 ALTER TABLE `tourisme_drivers` DISABLE KEYS */;
/*!40000 ALTER TABLE `tourisme_drivers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tourisme_guides`
--

DROP TABLE IF EXISTS `tourisme_guides`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tourisme_guides` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `guide_name` varchar(75) NOT NULL,
  `gide_id_num` varchar(30) NOT NULL,
  `guide_age` varchar(3) NOT NULL,
  `guide_experiences` longtext NOT NULL,
  `site_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tourisme_guides_site_id_0abb77fc_fk_tourisme_sitestouristique_id` (`site_id`),
  CONSTRAINT `tourisme_guides_site_id_0abb77fc_fk_tourisme_sitestouristique_id` FOREIGN KEY (`site_id`) REFERENCES `tourisme_sitestouristique` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tourisme_guides`
--

LOCK TABLES `tourisme_guides` WRITE;
/*!40000 ALTER TABLE `tourisme_guides` DISABLE KEYS */;
/*!40000 ALTER TABLE `tourisme_guides` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tourisme_hotelrooms`
--

DROP TABLE IF EXISTS `tourisme_hotelrooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tourisme_hotelrooms` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `room_number` varchar(30) NOT NULL,
  `room_description` longtext NOT NULL,
  `room_price` longtext NOT NULL,
  `hotel_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tourisme_hotelrooms_hotel_id_f300c8b8_fk_tourisme_hotels_id` (`hotel_id`),
  CONSTRAINT `tourisme_hotelrooms_hotel_id_f300c8b8_fk_tourisme_hotels_id` FOREIGN KEY (`hotel_id`) REFERENCES `tourisme_hotels` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tourisme_hotelrooms`
--

LOCK TABLES `tourisme_hotelrooms` WRITE;
/*!40000 ALTER TABLE `tourisme_hotelrooms` DISABLE KEYS */;
/*!40000 ALTER TABLE `tourisme_hotelrooms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tourisme_hotels`
--

DROP TABLE IF EXISTS `tourisme_hotels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tourisme_hotels` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `hotel_name` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  `hotel_address` varchar(30) NOT NULL,
  `description` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tourisme_hotels`
--

LOCK TABLES `tourisme_hotels` WRITE;
/*!40000 ALTER TABLE `tourisme_hotels` DISABLE KEYS */;
INSERT INTO `tourisme_hotels` VALUES (1,'Huel-Tillman','Fukou','95 Holmberg Center','nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper'),(2,'Runolfsdottir-Frami','Duang','11 Ridgeway Junction','sollicitudin ut suscipit a feugiat et eros vestibulum ac est'),(3,'Brown-Wintheiser','Kaeng Khro','6184 Atwood Street','ante vestibulum ante ipsum primis in faucibus orci luctus et'),(4,'Carroll, Block and Johnston','Longhua','43384 Messerschmidt Park','vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis'),(5,'Kautzer LLC','Kitapak','48381 Corben Avenue','lorem ipsum dolor sit amet consectetuer adipiscing elit proin risus praesent lectus vestibulum quam sapien'),(6,'O\'Conner-Champlin','Pionerskiy','262 Trailsway Crossing','vel accumsan tellus nisi eu orci mauris lacinia sapien quis'),(7,'Frami-Rogahn','Kolyubakino','2 South Lane','nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit'),(8,'Kulas Group','Katumba','3228 Sheridan Park','congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis'),(9,'Walker LLC','Edson','3 Lakewood Gardens Place','non interdum in ante vestibulum ante ipsum primis in faucibus'),(10,'Thiel, Reichel and Rath','Tualangcut','19 Caliangt Crossing','feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna'),(11,'Bechtelar Group','Tongjin','8 Annamark Parkway','nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur'),(12,'Mayert LLC','QuÃ¡n HÃ u','80769 Granby Avenue','justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus'),(13,'Wehner, Frami and Hegmann','Boden','1157 High Crossing Crossing','morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis'),(14,'DuBuque-Haag','Morris','80980 Forest Dale Street','metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede'),(15,'Lowe and Sons','Ejidal','1 Mcguire Road','turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi'),(16,'Swift-Quigley','Campo Belo','8321 Eastwood Park','leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus'),(17,'Sauer LLC','Jinsha','44 Marquette Place','iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate'),(18,'Beier Group','Karasuyama','21 Old Shore Trail','viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper'),(19,'Von, Dooley and Mayer','Mogapinyana','71337 Upham Circle','quis orci nullam molestie nibh in lectus pellentesque at nulla'),(20,'Paucek-Wilkinson','Spandaryan','76344 Dakota Hill','dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit'),(21,'Parker, Herzog and Schaden','Shikou','985 4th Place','justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin'),(22,'Heidenreich, Hayes and Hand','Kaducondong','7 Hanover Center','vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat'),(23,'Marks, Stamm and Hermann','Ustâ€™ye','43 Iowa Crossing','natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum'),(24,'Jacobson-Armstrong','Kantemirovka','855 Banding Parkway','mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit'),(25,'Waters and Sons','Laxou','41772 Mayfield Place','donec diam neque vestibulum eget vulputate ut ultrices vel augue');
/*!40000 ALTER TABLE `tourisme_hotels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tourisme_reservationhotel`
--

DROP TABLE IF EXISTS `tourisme_reservationhotel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tourisme_reservationhotel` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `reservation_date` datetime(6) NOT NULL,
  `client_id` bigint NOT NULL,
  `room_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tourisme_reservation_client_id_418c5e6f_fk_tourisme_` (`client_id`),
  KEY `tourisme_reservation_room_id_4de1174d_fk_tourisme_` (`room_id`),
  CONSTRAINT `tourisme_reservation_client_id_418c5e6f_fk_tourisme_` FOREIGN KEY (`client_id`) REFERENCES `tourisme_clients` (`id`),
  CONSTRAINT `tourisme_reservation_room_id_4de1174d_fk_tourisme_` FOREIGN KEY (`room_id`) REFERENCES `tourisme_hotelrooms` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tourisme_reservationhotel`
--

LOCK TABLES `tourisme_reservationhotel` WRITE;
/*!40000 ALTER TABLE `tourisme_reservationhotel` DISABLE KEYS */;
/*!40000 ALTER TABLE `tourisme_reservationhotel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tourisme_sitestouristique`
--

DROP TABLE IF EXISTS `tourisme_sitestouristique`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tourisme_sitestouristique` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `libelle` varchar(75) NOT NULL,
  `site_description` longtext NOT NULL,
  `zone` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tourisme_sitestouristique`
--

LOCK TABLES `tourisme_sitestouristique` WRITE;
/*!40000 ALTER TABLE `tourisme_sitestouristique` DISABLE KEYS */;
/*!40000 ALTER TABLE `tourisme_sitestouristique` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tourisme_transportcompany`
--

DROP TABLE IF EXISTS `tourisme_transportcompany`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tourisme_transportcompany` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `company_name` varchar(75) NOT NULL,
  `company_address` varchar(30) NOT NULL,
  `company_description` longtext NOT NULL,
  `ville` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tourisme_transportcompany`
--

LOCK TABLES `tourisme_transportcompany` WRITE;
/*!40000 ALTER TABLE `tourisme_transportcompany` DISABLE KEYS */;
INSERT INTO `tourisme_transportcompany` VALUES (1,'Realblab','91 Heffernan Terrace','eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla','Kochevo'),(2,'Jamia','95 Algoma Parkway','nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit','Lgota Wielka'),(3,'Tagtune','066 Hovde Lane','orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis','Quezon City'),(4,'Blogspan','358 Blaine Court','ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis','Kungsbacka'),(5,'Rhybox','3 Sheridan Junction','eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat','Rio Negro'),(6,'Feedfire','627 Oneill Pass','purus phasellus in felis donec semper sapien a libero nam dui proin leo','Tokmok'),(7,'Abata','62 Arkansas Road','lectus vestibulum quam sapien varius ut blandit non interdum in','Eg-Uur'),(8,'Zoombox','1 Carioca Hill','mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus','TerpsithÃ©a'),(9,'Browsedrive','29401 Summer Ridge Place','consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices','Huayang'),(10,'Photojam','20137 Hagan Place','augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida','Zhyrovichy'),(11,'Aimbo','7926 Del Mar Alley','morbi vel lectus in quam fringilla rhoncus mauris enim leo','Liushi'),(12,'Avaveo','63261 Commercial Junction','mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit','Zaranj'),(13,'Skajo','87 Autumn Leaf Crossing','nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis','Taunoa'),(14,'Dabvine','32 Green Plaza','hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat','Mytishchi'),(15,'Roodel','42057 Sullivan Hill','et ultrices posuere cubilia curae nulla dapibus dolor vel est','Matagbak'),(16,'Devpulse','50 Maple Wood Pass','id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede','Rosh Haâ€˜Ayin'),(17,'Quimba','15013 Utah Lane','vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet','Jasienica'),(18,'Zoonoodle','615 Ohio Lane','convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus','Banjar Jambe Baleran'),(19,'Tazz','6 Hudson Park','non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue','Greda'),(20,'Realbridge','50061 Express Circle','rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus','HÌ±olon');
/*!40000 ALTER TABLE `tourisme_transportcompany` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-10 16:50:36
