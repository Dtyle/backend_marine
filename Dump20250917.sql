-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: localhost    Database: testreset
-- ------------------------------------------------------
-- Server version	8.0.43

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
-- Table structure for table `audit_logs`
--

DROP TABLE IF EXISTS `audit_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audit_logs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action` varchar(255) NOT NULL,
  `table_name` varchar(255) NOT NULL,
  `table_id` int NOT NULL,
  `details` text NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` enum('A','D') NOT NULL DEFAULT 'A',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `org_id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `IDX_ORG` (`org_id`),
  KEY `IDX_STATUS` (`status`),
  KEY `IDX_TID` (`table_id`),
  KEY `IDX_TNAME` (`table_name`),
  KEY `FK_bd2726fd31b35443f2245b93ba0` (`user_id`),
  CONSTRAINT `FK_8f3655b4b607ce3e7a3fb906784` FOREIGN KEY (`org_id`) REFERENCES `organizations` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_bd2726fd31b35443f2245b93ba0` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=269 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_logs`
--

LOCK TABLES `audit_logs` WRITE;
/*!40000 ALTER TABLE `audit_logs` DISABLE KEYS */;
INSERT INTO `audit_logs` VALUES (1,'create','roles',2,'{\"code\":\"ADMIN 2\",\"name\":\"admin 2\",\"permissions\":[\"management-dashboard\",\"entity-manager-dashboard\",\"statistics\",\"reports\",\"locations\",\"alerts\",\"user\",\"role\",\"entity\",\"reference-master\",\"entity-section\",\"category3\",\"category2\",\"category1\"],\"landing_page\":\"management-dashboard\"}','2025-08-06 16:52:36','A','2025-08-06 11:22:36',1,1,'2025-08-28 05:11:32'),(2,'create','user',2,'{\"code\":\"ADMIN2\",\"name\":\"admin2\",\"emailid\":\"admin2@gmail.com\",\"role_id\":2,\"is_all_entity_access\":true}','2025-08-06 16:53:16','A','2025-08-06 11:23:16',1,1,'2025-08-28 05:11:32'),(3,'create','category1',1,'{\"code\":\"SHIP1\",\"name\":\"ship01\",\"sortOrder\":0}','2025-08-06 16:59:00','A','2025-08-06 11:29:00',1,2,'2025-08-28 05:11:32'),(4,'create','category2',1,'{\"code\":\"SHIP1\",\"name\":\"ship001\",\"sortOrder\":99}','2025-08-06 16:59:37','A','2025-08-06 11:29:37',1,2,'2025-08-28 05:11:32'),(5,'update','category2',1,'{\"name\":\"ship001\",\"sortOrder\":99,\"category1_id\":1}','2025-08-06 16:59:49','A','2025-08-06 11:29:49',1,2,'2025-08-28 05:11:32'),(6,'create','category3',1,'{\"code\":\"002\",\"name\":\"SouthAfrica\",\"sortOrder\":\"2\",\"category1_id\":1,\"category2_id\":1}','2025-08-06 17:01:13','A','2025-08-06 11:31:13',1,2,'2025-08-28 05:11:32'),(7,'create','entity',2,'{\"code\":\"001\",\"name\":\"ship(001)\",\"comments\":\"\",\"category1_id\":1,\"category2_id\":1,\"category3_id\":1}','2025-08-06 17:02:23','A','2025-08-06 11:32:23',1,2,'2025-08-28 05:11:32'),(8,'create','entity-section',1,'{\"code\":\"001\",\"name\":\"ship001\",\"comments\":\"\",\"entity_id\":2}','2025-08-06 17:03:25','A','2025-08-06 11:33:25',1,2,'2025-08-28 05:11:32'),(9,'create','entity',3,'{\"code\":\"F1111111\",\"name\":\"ffffffffff\",\"comments\":\"\",\"category1_id\":1,\"category2_id\":1,\"category3_id\":1}','2025-08-07 13:19:30','A','2025-08-07 07:49:30',1,1,'2025-08-28 05:11:32'),(10,'create','roles',3,'{\"code\":\"SHIP-C-1\",\"name\":\"ShipCaption\",\"permissions\":[\"management-dashboard\",\"entity-manager-dashboard\",\"statistics\",\"reports\",\"locations\",\"alerts\"],\"landing_page\":\"management-dashboard\"}','2025-08-07 15:40:11','A','2025-08-07 10:10:11',1,1,'2025-08-28 05:11:32'),(11,'create','user',3,'{\"code\":\"SHIPT-1\",\"name\":\"shipcaption\",\"emailid\":\"shipcaption@gmail.com\",\"role_id\":3,\"is_all_entity_access\":true}','2025-08-07 15:41:05','A','2025-08-07 10:11:05',1,1,'2025-08-28 05:11:32'),(12,'update','roles',3,'{\"name\":\"ShipCaption\",\"permissions\":[\"management-dashboard\",\"entity-manager-dashboard\",\"statistics\",\"reports\",\"locations\",\"alerts\",\"user\"],\"landing_page\":\"management-dashboard\"}','2025-08-07 15:43:53','A','2025-08-07 10:13:53',1,1,'2025-08-28 05:11:32'),(13,'create','category1',2,'{\"code\":\"SHIP2\",\"name\":\"contanier\",\"sortOrder\":\"2\"}','2025-08-07 15:51:08','A','2025-08-07 10:21:08',1,1,'2025-08-28 05:11:32'),(14,'create','reference_masters',1,'{\"code\":\"REF1\",\"name\":\"re1\",\"description\":\"\",\"referenceValues\":[{\"code\":\"REF1\",\"name\":\"ref\",\"sortOrder\":99,\"isActive\":false,\"description\":\"\",\"relatedValue\":\"\"}]}','2025-08-07 16:29:59','A','2025-08-07 10:59:59',1,1,'2025-08-28 05:11:32'),(15,'create','category2',2,'{\"code\":\"RE4\",\"name\":\"rever\",\"sortOrder\":99}','2025-08-11 11:36:06','A','2025-08-11 06:06:06',1,1,'2025-08-28 05:11:32'),(16,'create','roles',4,'{\"code\":\"RE\",\"name\":\"caption\",\"permissions\":[\"alerts\",\"locations\",\"user\",\"role\",\"entity-manager-dashboard\"],\"landing_page\":\"entity-manager-dashboard\"}','2025-08-11 12:02:36','A','2025-08-11 06:32:36',1,2,'2025-08-28 05:11:32'),(17,'create','user',4,'{\"code\":\"RE6\",\"name\":\"caption\",\"emailid\":\"test5@gmail.com\",\"role_id\":4,\"is_all_entity_access\":true}','2025-08-11 12:04:03','A','2025-08-11 06:34:03',1,2,'2025-08-28 05:11:32'),(18,'inactivate','entity',3,'{\"status\":\"D\"}','2025-08-11 13:02:38','A','2025-08-11 07:32:38',1,1,'2025-08-28 05:11:32'),(19,'update','roles',4,'{\"name\":\"caption\",\"permissions\":[\"alerts\",\"locations\",\"user\",\"role\",\"entity-manager-dashboard\",\"management-dashboard\"],\"landing_page\":\"entity-manager-dashboard\"}','2025-08-11 13:11:27','A','2025-08-11 07:41:27',1,1,'2025-08-28 05:11:32'),(20,'create','category3',2,'{\"code\":\"432\",\"name\":\"dt\",\"sortOrder\":0}','2025-08-12 15:41:52','A','2025-08-12 10:11:52',1,1,'2025-08-28 05:11:32'),(21,'update','roles',4,'{\"name\":\"caption\",\"permissions\":[\"alerts\",\"locations\",\"user\",\"entity-manager-dashboard\",\"management-dashboard\"],\"landing_page\":\"entity-manager-dashboard\"}','2025-08-12 16:16:13','A','2025-08-12 10:46:13',1,1,'2025-08-28 05:11:32'),(22,'update','roles',4,'{\"name\":\"caption\",\"permissions\":[\"alerts\",\"locations\",\"user\",\"management-dashboard\"],\"landing_page\":\"management-dashboard\"}','2025-08-12 16:56:57','A','2025-08-12 11:26:57',1,1,'2025-08-28 05:11:32'),(23,'create','category3',3,'{\"code\":\"ASDF\",\"name\":\"werf\",\"sortOrder\":0}','2025-08-18 12:26:07','A','2025-08-18 06:56:07',1,1,'2025-08-28 05:11:32'),(24,'create','entity',4,'{\"code\":\"WERTYU\",\"name\":\"ewregtrh\",\"comments\":\"\",\"category1_id\":1,\"category2_id\":1,\"category3_id\":3}','2025-08-18 12:46:06','A','2025-08-18 07:16:06',1,1,'2025-08-28 05:11:32'),(25,'create','entity',5,'{\"code\":\"WE\",\"name\":\"43s\",\"comments\":\"\",\"category1_id\":1,\"category2_id\":1,\"category3_id\":1}','2025-08-18 12:47:01','A','2025-08-18 07:17:01',1,1,'2025-08-28 05:11:32'),(26,'create','category3',4,'{\"code\":\"3ERE\",\"name\":\"wef\",\"sortOrder\":0}','2025-08-18 12:59:02','A','2025-08-18 07:29:02',1,1,'2025-08-28 05:11:32'),(27,'inactivate','entity',4,'{\"status\":\"D\"}','2025-08-18 13:10:09','A','2025-08-18 07:40:09',1,1,'2025-08-28 05:11:32'),(28,'inactivate','entity',5,'{\"status\":\"D\"}','2025-08-18 13:10:12','A','2025-08-18 07:40:12',1,1,'2025-08-28 05:11:32'),(29,'create','entity',6,'{\"code\":\"45REW\",\"name\":\"ewr\",\"comments\":\"\",\"category1_id\":1,\"category2_id\":1,\"category3_id\":1}','2025-08-18 13:11:28','A','2025-08-18 07:41:28',1,1,'2025-08-28 05:11:32'),(30,'create','entity',7,'{\"code\":\"WERTRE\",\"name\":\"ewr3423\",\"comments\":\"\",\"category1_id\":1,\"category2_id\":1,\"category3_id\":1}','2025-08-18 13:12:36','A','2025-08-18 07:42:36',1,1,'2025-08-28 05:11:32'),(31,'inactivate','entity',7,'{\"status\":\"D\"}','2025-08-18 13:12:52','A','2025-08-18 07:42:52',1,1,'2025-08-28 05:11:32'),(32,'update','entity',6,'{\"name\":\"erttre\",\"comments\":\"\",\"category1_id\":1,\"category2_id\":1,\"category3_id\":1}','2025-08-18 13:13:19','A','2025-08-18 07:43:19',1,1,'2025-08-28 05:11:32'),(33,'create','entity',8,'{\"code\":\"WERTRHYTU\",\"name\":\"rwgetbf\",\"comments\":\"\",\"category1_id\":1,\"category2_id\":1,\"category3_id\":1}','2025-08-18 13:15:17','A','2025-08-18 07:45:17',1,1,'2025-08-28 05:11:32'),(34,'create','entity',9,'{\"code\":\"23432\",\"name\":\"2343refs\",\"comments\":\"\",\"category1_id\":1,\"category2_id\":1,\"category3_id\":1}','2025-08-18 13:25:58','A','2025-08-18 07:55:58',1,1,'2025-08-28 05:11:32'),(35,'inactivate','entity',8,'{\"status\":\"D\"}','2025-08-18 13:26:42','A','2025-08-18 07:56:42',1,1,'2025-08-28 05:11:32'),(36,'inactivate','entity',6,'{\"status\":\"D\"}','2025-08-18 13:26:45','A','2025-08-18 07:56:45',1,1,'2025-08-28 05:11:32'),(37,'create','entity',10,'{\"code\":\"WER\",\"name\":\"ewref\",\"comments\":\"\",\"category1_id\":1,\"category2_id\":1,\"category3_id\":1}','2025-08-18 13:27:13','A','2025-08-18 07:57:13',1,1,'2025-08-28 05:11:32'),(38,'inactivate','entity',10,'{\"status\":\"D\"}','2025-08-18 13:37:56','A','2025-08-18 08:07:56',1,1,'2025-08-28 05:11:32'),(39,'inactivate','entity',9,'{\"status\":\"D\"}','2025-08-18 13:37:58','A','2025-08-18 08:07:58',1,1,'2025-08-28 05:11:32'),(40,'create','entity',11,'{\"code\":\"5432\",\"name\":\"vfr3e2\",\"comments\":\"\",\"category1_id\":1,\"category2_id\":1,\"category3_id\":1}','2025-08-18 13:39:32','A','2025-08-18 08:09:32',1,1,'2025-08-28 05:11:32'),(41,'inactivate','category3',4,'{\"status\":\"D\"}','2025-08-18 13:56:10','A','2025-08-18 08:26:10',1,1,'2025-08-28 05:11:32'),(42,'inactivate','category3',3,'{\"status\":\"D\"}','2025-08-18 13:56:13','A','2025-08-18 08:26:13',1,1,'2025-08-28 05:11:32'),(43,'create','entity',12,'{\"code\":\"EFWRGET4\",\"name\":\"erty\",\"comments\":\"\",\"category1_id\":1,\"category2_id\":1,\"category3_id\":1}','2025-08-18 14:05:27','A','2025-08-18 08:35:27',1,1,'2025-08-28 05:11:32'),(44,'inactivate','entity',12,'{\"status\":\"D\"}','2025-08-18 14:05:53','A','2025-08-18 08:35:53',1,1,'2025-08-28 05:11:32'),(45,'create','entity',13,'{\"code\":\"QDFE22\",\"name\":\"1232ew\",\"comments\":\"\",\"category1_id\":1,\"category2_id\":1,\"category3_id\":1}','2025-08-18 16:43:07','A','2025-08-18 11:13:07',1,1,'2025-08-28 05:11:32'),(46,'create','entity',14,'{\"code\":\"5423REWF\",\"name\":\"2rrfwfvd\",\"comments\":\"\",\"imo_number\":\"refwvfd v\",\"flag\":\"2refwvfs d\",\"cameras_installed\":\"12\",\"category1_id\":1,\"category2_id\":1,\"category3_id\":1}','2025-08-18 17:10:22','A','2025-08-18 11:40:22',1,1,'2025-08-28 05:11:32'),(47,'inactivate','entity',14,'{\"status\":\"D\"}','2025-08-18 17:23:01','A','2025-08-18 11:53:01',1,1,'2025-08-28 05:11:32'),(48,'inactivate','entity',13,'{\"status\":\"D\"}','2025-08-18 17:23:06','A','2025-08-18 11:53:06',1,1,'2025-08-28 05:11:32'),(49,'inactivate','entity',11,'{\"status\":\"D\"}','2025-08-18 17:23:16','A','2025-08-18 11:53:16',1,1,'2025-08-28 05:11:32'),(50,'update','entity',2,'{\"name\":\"ship(001)\",\"comments\":\"\",\"imo_number\":\"24321\",\"flag\":\"padama\",\"cameras_installed\":\"5\",\"category1_id\":1,\"category2_id\":1,\"category3_id\":1}','2025-08-18 17:24:36','A','2025-08-18 11:54:36',1,1,'2025-08-28 05:11:32'),(51,'create','category1',3,'{\"code\":\"MV-1\",\"name\":\"Container Ship\",\"sortOrder\":0}','2025-08-19 10:46:25','A','2025-08-19 05:16:25',1,1,'2025-08-28 05:11:32'),(52,'create','category2',3,'{\"code\":\"MV-1\",\"name\":\"Tokyo\",\"sortOrder\":0,\"category1_id\":3}','2025-08-19 10:48:51','A','2025-08-19 05:18:51',1,1,'2025-08-28 05:11:32'),(53,'inactivate','category3',2,'{\"status\":\"D\"}','2025-08-19 10:49:14','A','2025-08-19 05:19:14',1,1,'2025-08-28 05:11:32'),(54,'create','category3',5,'{\"code\":\"MV-1\",\"name\":\"Port of Tokyo\",\"sortOrder\":0,\"category1_id\":3,\"category2_id\":3}','2025-08-19 10:51:37','A','2025-08-19 05:21:37',1,1,'2025-08-28 05:11:32'),(55,'create','entity',15,'{\"code\":\"MV-1\",\"name\":\"MV Venus Leader\",\"comments\":\"This ship container is carried by motor vehicles.\",\"imo_number\":\"MV-123\",\"flag\":\"Japan\",\"cameras_installed\":\"20\",\"category1_id\":3,\"category2_id\":3,\"category3_id\":5}','2025-08-19 10:58:33','A','2025-08-19 05:28:33',1,1,'2025-08-28 05:11:32'),(56,'update','entity',15,'{\"name\":\"MV Venus Leader\",\"comments\":\"\",\"imo_number\":\"MV-123\",\"flag\":\"Jaban\",\"cameras_installed\":\"20\",\"category1_id\":3,\"category2_id\":3,\"category3_id\":5}','2025-08-19 16:30:23','A','2025-08-19 11:00:23',1,1,'2025-08-28 05:11:32'),(57,'update','entity',1,'{\"name\":\"Default Entity\",\"comments\":\"\",\"imo_number\":\"m1\",\"flag\":\"jaban\",\"cameras_installed\":\"10\",\"category1_id\":1,\"category2_id\":1,\"category3_id\":1}','2025-08-19 16:31:34','A','2025-08-19 11:01:34',1,1,'2025-08-28 05:11:32'),(58,'update','entity',15,'{\"name\":\"MV Venus Leader\",\"comments\":\"\",\"imo_number\":\"MV-123\",\"flag\":\"Jaban\",\"cameras_installed\":\"15\",\"category1_id\":3,\"category2_id\":3,\"category3_id\":5}','2025-08-19 16:32:22','A','2025-08-19 11:02:22',1,1,'2025-08-28 05:11:32'),(59,'update','entity-section',1,'{\"name\":\"ship001\",\"comments\":\"\",\"entity_id\":15}','2025-08-19 16:33:50','A','2025-08-19 11:03:50',1,1,'2025-08-28 05:11:32'),(60,'update','category2',2,'{\"name\":\"rever\",\"sortOrder\":99,\"category1_id\":2}','2025-08-19 16:41:38','A','2025-08-19 11:11:38',1,1,'2025-08-28 05:11:32'),(61,'create','category1',4,'{\"code\":\"BC-1\",\"name\":\"Bulk Container\",\"sortOrder\":0}','2025-08-20 10:46:04','A','2025-08-20 05:16:04',1,1,'2025-08-28 05:11:32'),(62,'create','roles',5,'{\"code\":\"S1\",\"name\":\"Santhosh\",\"permissions\":[\"statistics\",\"reports\",\"locations\",\"alerts\",\"user\",\"management-dashboard\"],\"landing_page\":\"management-dashboard\"}','2025-08-20 11:05:54','A','2025-08-20 05:35:54',1,1,'2025-08-28 05:11:32'),(63,'update','roles',5,'{\"name\":\"Caption\",\"permissions\":[\"statistics\",\"reports\",\"locations\",\"alerts\",\"user\",\"management-dashboard\"],\"landing_page\":\"management-dashboard\"}','2025-08-20 11:08:53','A','2025-08-20 05:38:53',1,1,'2025-08-28 05:11:32'),(64,'inactivate','user',3,'{\"status\":\"D\"}','2025-08-20 11:09:06','A','2025-08-20 05:39:06',1,1,'2025-08-28 05:11:32'),(65,'create','user',5,'{\"code\":\"CS-1\",\"name\":\"captions1\",\"emailid\":\"captions1@gmail.com\",\"role_id\":5,\"is_all_entity_access\":false}','2025-08-20 11:15:46','A','2025-08-20 05:45:46',1,1,'2025-08-28 05:11:32'),(66,'update','user',5,'{\"name\":\"captions1\",\"emailid\":\"captions1@gmail.com\",\"role_id\":5,\"is_all_entity_access\":false}','2025-08-20 11:21:21','A','2025-08-20 05:51:21',1,1,'2025-08-28 05:11:32'),(67,'update','roles',5,'{\"name\":\"Caption\",\"permissions\":[\"statistics\",\"reports\",\"locations\",\"alerts\",\"user\",\"management-dashboard\",\"entity\",\"category1\",\"category2\",\"category3\",\"entity-section\"],\"landing_page\":\"management-dashboard\"}','2025-08-20 11:21:57','A','2025-08-20 05:51:57',1,1,'2025-08-28 05:11:32'),(68,'update','entity-section',1,'{\"name\":\"ship001\",\"comments\":\"\",\"entity_id\":15}','2025-08-20 12:39:53','A','2025-08-20 07:09:53',1,1,'2025-08-28 05:11:32'),(69,'create','entity-section',2,'{\"code\":\"DC-2\",\"name\":\"deck-2\",\"comments\":\"\",\"entity_id\":15}','2025-08-20 12:47:41','A','2025-08-20 07:17:41',1,1,'2025-08-28 05:11:32'),(70,'update','entity-section',1,'{\"name\":\"deck-1\",\"comments\":\"\",\"entity_id\":15}','2025-08-20 12:48:00','A','2025-08-20 07:18:00',1,1,'2025-08-28 05:11:32'),(71,'create','entity',16,'{\"code\":\"S1\",\"name\":\"se\",\"comments\":\"\",\"imo_number\":\"w34\",\"flag\":\"2ed2\",\"cameras_installed\":\"12\",\"category1_id\":3,\"category2_id\":3,\"category3_id\":5}','2025-08-20 12:51:47','A','2025-08-20 07:21:47',1,1,'2025-08-28 05:11:32'),(72,'inactivate','entity',16,'{\"status\":\"D\"}','2025-08-20 12:52:01','A','2025-08-20 07:22:01',1,1,'2025-08-28 05:11:32'),(73,'create','reference_masters',2,'{\"code\":\"HTEGRW\",\"name\":\"3getrh\",\"description\":\"\",\"referenceValues\":[{\"code\":\"WERGTHJGMNBV\",\"name\":\"f vbfbgfb vvv\",\"sortOrder\":99,\"isActive\":true,\"description\":\"fvdv bvbbfrefv\",\"relatedValue\":\"\"}]}','2025-08-20 15:35:35','A','2025-08-20 10:05:35',1,1,'2025-08-28 05:11:32'),(74,'create','reference_masters',3,'{\"code\":\"5T46YRGT\",\"name\":\"r\",\"description\":\"\",\"referenceValues\":[{\"code\":\"3ERE3\",\"name\":\"3erefr\",\"sortOrder\":99,\"isActive\":false,\"description\":\"\",\"relatedValue\":\"\"}]}','2025-08-21 10:30:24','A','2025-08-21 05:00:24',1,1,'2025-08-28 05:11:32'),(75,'create','reference_masters',4,'{\"code\":\"WDEWFVE\",\"name\":\"31efrwv\",\"description\":\"\",\"referenceValues\":[{\"code\":\"312ERFWE\",\"name\":\"312efwv\",\"sortOrder\":99,\"isActive\":true,\"description\":\"\",\"relatedValue\":\"\"}]}','2025-08-21 11:42:58','A','2025-08-21 06:12:58',1,1,'2025-08-28 05:11:32'),(76,'inactivate','reference_master',3,'{\"status\":\"D\"}','2025-08-21 12:02:28','A','2025-08-21 06:32:28',1,1,'2025-08-28 05:11:32'),(77,'inactivate','reference_master',3,'{\"status\":\"D\"}','2025-08-21 12:02:33','A','2025-08-21 06:32:33',1,1,'2025-08-28 05:11:32'),(78,'inactivate','reference_master',4,'{\"status\":\"D\"}','2025-08-21 12:04:04','A','2025-08-21 06:34:04',1,1,'2025-08-28 05:11:32'),(79,'inactivate','reference_master',4,'{\"status\":\"D\"}','2025-08-21 12:06:55','A','2025-08-21 06:36:55',1,1,'2025-08-28 05:11:32'),(80,'inactivate','reference_master',1,'{\"status\":\"D\"}','2025-08-21 12:10:49','A','2025-08-21 06:40:49',1,1,'2025-08-28 05:11:32'),(81,'create','reference_masters',5,'{\"code\":\"3E24DW\",\"name\":\"2edwc\",\"description\":\"\",\"referenceValues\":[{\"code\":\"WDCF2E\",\"name\":\"fwcdfs\",\"sortOrder\":99,\"isActive\":true,\"description\":\"\",\"relatedValue\":\"\"}]}','2025-08-21 12:11:23','A','2025-08-21 06:41:23',1,1,'2025-08-28 05:11:32'),(82,'create','reference_masters',6,'{\"code\":\"ECSFV XED\",\"name\":\"wcsf vx\",\"description\":\"\",\"referenceValues\":[{\"code\":\"CWSF VW\",\"name\":\"dcs x\",\"sortOrder\":99,\"isActive\":true,\"description\":\"\",\"relatedValue\":\"\"}]}','2025-08-21 12:12:23','A','2025-08-21 06:42:23',1,1,'2025-08-28 05:11:32'),(83,'inactivate','reference_master',5,'{\"status\":\"D\"}','2025-08-21 12:14:01','A','2025-08-21 06:44:01',1,1,'2025-08-28 05:11:32'),(84,'inactivate','reference_master',5,'{\"status\":\"D\"}','2025-08-21 12:14:08','A','2025-08-21 06:44:08',1,1,'2025-08-28 05:11:32'),(85,'create','reference_masters',7,'{\"code\":\"3EREFVDF\",\"name\":\"erfevd\",\"description\":\"\",\"referenceValues\":[{\"code\":\"REVDVE\",\"name\":\"fwfdv\",\"sortOrder\":99,\"isActive\":true,\"description\":\"\",\"relatedValue\":\"\"}]}','2025-08-21 12:20:39','A','2025-08-21 06:50:39',1,1,'2025-08-28 05:11:32'),(86,'create','reference_masters',8,'{\"code\":\"EWRFD\",\"name\":\"ewrfdvc\",\"description\":\"\",\"referenceValues\":[{\"code\":\"E2WFD\",\"name\":\"ewdcfsd\",\"sortOrder\":99,\"isActive\":true,\"description\":\"\",\"relatedValue\":\"\"}]}','2025-08-21 12:23:13','A','2025-08-21 06:53:13',1,1,'2025-08-28 05:11:32'),(87,'inactivate','reference_master',2,'{\"status\":\"D\"}','2025-08-21 12:23:24','A','2025-08-21 06:53:24',1,1,'2025-08-28 05:11:32'),(88,'inactivate','reference_master',2,'{\"status\":\"D\"}','2025-08-21 12:23:37','A','2025-08-21 06:53:37',1,1,'2025-08-28 05:11:32'),(89,'create','reference_masters',9,'{\"code\":\"EWRFEDV\",\"name\":\"ewrfdvc\",\"description\":\"\",\"referenceValues\":[{\"code\":\"2EWDFD\",\"name\":\"ewfsdv\",\"sortOrder\":99,\"isActive\":true,\"description\":\"\",\"relatedValue\":\"\"}]}','2025-08-21 12:25:57','A','2025-08-21 06:55:57',1,1,'2025-08-28 05:11:32'),(90,'inactivate','reference_master',7,'{\"status\":\"D\"}','2025-08-21 12:26:32','A','2025-08-21 06:56:32',1,1,'2025-08-28 05:11:32'),(91,'inactivate','reference_master',8,'{\"status\":\"D\"}','2025-08-21 12:29:15','A','2025-08-21 06:59:15',1,1,'2025-08-28 05:11:32'),(92,'create','reference_masters',10,'{\"code\":\"23EWEFD2\",\"name\":\"3edw\",\"description\":\"\",\"referenceValues\":[{\"code\":\"DEWCSE\",\"name\":\"dcsx\",\"sortOrder\":99,\"isActive\":true,\"description\":\"\",\"relatedValue\":\"\"}]}','2025-08-21 12:29:54','A','2025-08-21 06:59:54',1,1,'2025-08-28 05:11:32'),(93,'create','reference_masters',11,'{\"code\":\"EWREFD\",\"name\":\"32ewrfdv\",\"description\":\"\",\"referenceValues\":[{\"code\":\"E2DWCFSVX\",\"name\":\"ewdcfcsx\",\"sortOrder\":99,\"isActive\":true,\"description\":\"\",\"relatedValue\":\"\"}]}','2025-08-21 12:30:13','A','2025-08-21 07:00:13',1,1,'2025-08-28 05:11:32'),(94,'inactivate','reference_master',11,'{\"status\":\"D\"}','2025-08-21 12:30:23','A','2025-08-21 07:00:23',1,1,'2025-08-28 05:11:32'),(95,'create','reference_masters',12,'{\"code\":\"DCSX\",\"name\":\"wdsc x\",\"description\":\"\",\"referenceValues\":[{\"code\":\"DWSC X\",\"name\":\"dwsc x\",\"sortOrder\":99,\"isActive\":true,\"description\":\"\",\"relatedValue\":\"\"}]}','2025-08-21 12:32:58','A','2025-08-21 07:02:58',1,1,'2025-08-28 05:11:32'),(96,'inactivate','reference_master',10,'{\"status\":\"D\"}','2025-08-21 12:33:02','A','2025-08-21 07:03:02',1,1,'2025-08-28 05:11:32'),(97,'create','reference_masters',13,'{\"code\":\"EQDWCSX\",\"name\":\"ewdcs x\",\"description\":\"\",\"referenceValues\":[{\"code\":\"DSFDVC\",\"name\":\"wfsvd c\",\"sortOrder\":99,\"isActive\":true,\"description\":\"\",\"relatedValue\":\"\"}]}','2025-08-21 12:33:23','A','2025-08-21 07:03:23',1,1,'2025-08-28 05:11:32'),(98,'create','reference_masters',14,'{\"code\":\"EREFVVF\",\"name\":\"refvd\",\"description\":\"\",\"referenceValues\":[{\"code\":\"REFVD\",\"name\":\"efvdc\",\"sortOrder\":99,\"isActive\":true,\"description\":\"\",\"relatedValue\":\"\"}]}','2025-08-21 12:33:35','A','2025-08-21 07:03:35',1,1,'2025-08-28 05:11:32'),(99,'inactivate','reference_master',13,'{\"status\":\"D\"}','2025-08-21 12:33:52','A','2025-08-21 07:03:52',1,1,'2025-08-28 05:11:32'),(100,'inactivate','reference_master',9,'{\"status\":\"D\"}','2025-08-21 12:33:59','A','2025-08-21 07:03:59',1,1,'2025-08-28 05:11:32'),(101,'inactivate','reference_master',14,'{\"status\":\"D\"}','2025-08-21 12:35:50','A','2025-08-21 07:05:50',1,1,'2025-08-28 05:11:32'),(102,'inactivate','reference_master',6,'{\"status\":\"D\"}','2025-08-21 12:35:52','A','2025-08-21 07:05:52',1,1,'2025-08-28 05:11:32'),(103,'inactivate','reference_master',12,'{\"status\":\"D\"}','2025-08-21 12:35:53','A','2025-08-21 07:05:53',1,1,'2025-08-28 05:11:32'),(104,'create','reference_masters',15,'{\"code\":\"RTG\",\"name\":\"erfdv\",\"description\":\"\",\"referenceValues\":[{\"code\":\"ERFDGF\",\"name\":\"refdvf\",\"sortOrder\":99,\"isActive\":true,\"description\":\"efdv\",\"relatedValue\":\"fedv\"}]}','2025-08-21 12:38:35','A','2025-08-21 07:08:35',1,1,'2025-08-28 05:11:32'),(105,'inactivate','reference_master',15,'{\"status\":\"D\"}','2025-08-21 12:38:45','A','2025-08-21 07:08:45',1,1,'2025-08-28 05:11:32'),(106,'create','reference_masters',16,'{\"code\":\"3EWRFEVD\",\"name\":\"fwevd\",\"description\":\"\",\"referenceValues\":[{\"code\":\"EWFDV\",\"name\":\"wfvd\",\"sortOrder\":99,\"isActive\":true,\"description\":\"\",\"relatedValue\":\"\"}]}','2025-08-21 12:40:12','A','2025-08-21 07:10:12',1,1,'2025-08-28 05:11:32'),(107,'create','reference_masters',17,'{\"code\":\"ERFG4\",\"name\":\"r3feg\",\"description\":\"\",\"referenceValues\":[{\"code\":\"F43REV\",\"name\":\"frevd\",\"sortOrder\":99,\"isActive\":true,\"description\":\"\",\"relatedValue\":\"\"}]}','2025-08-21 12:40:25','A','2025-08-21 07:10:25',1,1,'2025-08-28 05:11:32'),(108,'create','reference_masters',18,'{\"code\":\"REFVDV\",\"name\":\"rfevd\",\"description\":\"\",\"referenceValues\":[{\"code\":\"GBVC\",\"name\":\"efdvg\",\"sortOrder\":99,\"isActive\":true,\"description\":\"\",\"relatedValue\":\"\"}]}','2025-08-21 12:40:40','A','2025-08-21 07:10:40',1,1,'2025-08-28 05:11:32'),(109,'inactivate','reference_master',16,'{\"status\":\"D\"}','2025-08-21 12:42:12','A','2025-08-21 07:12:12',1,1,'2025-08-28 05:11:32'),(110,'create','reference_masters',19,'{\"code\":\"EQWS\",\"name\":\"ewfs\",\"description\":\"\",\"referenceValues\":[{\"code\":\"32RFEV\",\"name\":\"erwfved\",\"sortOrder\":99,\"isActive\":true,\"description\":\"\",\"relatedValue\":\"\"}]}','2025-08-21 12:44:37','A','2025-08-21 07:14:37',1,1,'2025-08-28 05:11:32'),(111,'create','reference_masters',20,'{\"code\":\"24REF\",\"name\":\"3r2wef\",\"description\":\"\",\"referenceValues\":[{\"code\":\"4RFEFVD\",\"name\":\"rgefbgdb\",\"sortOrder\":99,\"isActive\":true,\"description\":\"\",\"relatedValue\":\"\"}]}','2025-08-21 12:47:34','A','2025-08-21 07:17:34',1,1,'2025-08-28 05:11:32'),(112,'inactivate','reference_master',20,'{\"status\":\"D\"}','2025-08-21 12:49:47','A','2025-08-21 07:19:47',1,1,'2025-08-28 05:11:32'),(113,'create','reference_masters',21,'{\"code\":\"3WETD\",\"name\":\"4etrdfg\",\"description\":\"\",\"referenceValues\":[{\"code\":\"6RYT\",\"name\":\"67tuy\",\"sortOrder\":99,\"isActive\":true,\"description\":\"\",\"relatedValue\":\"\"}]}','2025-08-21 12:58:41','A','2025-08-21 07:28:41',1,1,'2025-08-28 05:11:32'),(114,'create','reference_masters',22,'{\"code\":\"34ERFF\",\"name\":\"fr3ef\",\"description\":\"\",\"referenceValues\":[{\"code\":\"3DEWCSFXE\",\"name\":\"wdcsfcx\",\"sortOrder\":99,\"isActive\":true,\"description\":\"\",\"relatedValue\":\"\"}]}','2025-08-21 13:00:40','A','2025-08-21 07:30:40',1,1,'2025-08-28 05:11:32'),(115,'inactivate','reference_master',21,'{\"status\":\"D\"}','2025-08-21 13:00:53','A','2025-08-21 07:30:53',1,1,'2025-08-28 05:11:32'),(116,'inactivate','reference_master',19,'{\"status\":\"D\"}','2025-08-21 13:02:25','A','2025-08-21 07:32:25',1,1,'2025-08-28 05:11:32'),(117,'create','reference_masters',23,'{\"code\":\"43REF\",\"name\":\"2fewfs\",\"description\":\"\",\"referenceValues\":[{\"code\":\"RWFCEDV\",\"name\":\"3rfevd\",\"sortOrder\":99,\"isActive\":true,\"description\":\"\",\"relatedValue\":\"\"}]}','2025-08-21 13:03:57','A','2025-08-21 07:33:57',1,1,'2025-08-28 05:11:32'),(118,'inactivate','reference_master',23,'{\"status\":\"D\"}','2025-08-21 13:04:04','A','2025-08-21 07:34:04',1,1,'2025-08-28 05:11:32'),(119,'inactivate','reference_master',22,'{\"status\":\"D\"}','2025-08-21 13:04:33','A','2025-08-21 07:34:33',1,1,'2025-08-28 05:11:32'),(120,'create','reference_masters',24,'{\"code\":\"RETT3R\",\"name\":\"3rvefd\",\"description\":\"\",\"referenceValues\":[{\"code\":\"R3FEVD C\",\"name\":\"rfved\",\"sortOrder\":99,\"isActive\":true,\"description\":\"\",\"relatedValue\":\"\"}]}','2025-08-21 13:04:48','A','2025-08-21 07:34:48',1,1,'2025-08-28 05:11:32'),(121,'inactivate','reference_master',24,'{\"status\":\"D\"}','2025-08-21 14:05:14','A','2025-08-21 08:35:14',1,1,'2025-08-28 05:11:32'),(122,'create','reference_masters',25,'{\"code\":\"654\",\"name\":\"35teg\",\"description\":\"\",\"referenceValues\":[{\"code\":\"TRHGF\",\"name\":\"4thrgbf\",\"sortOrder\":99,\"isActive\":true,\"description\":\"\",\"relatedValue\":\"\"}]}','2025-08-21 14:06:23','A','2025-08-21 08:36:23',1,1,'2025-08-28 05:11:32'),(123,'update','reference_masters',25,'{\"name\":\"35teg\",\"referenceValues\":[{\"id\":25,\"code\":\"TRHGF\",\"name\":\"4thrgbf\",\"description\":\"\",\"isActive\":true,\"relatedValue\":\"\",\"sortOrder\":99,\"status\":\"A\",\"created_at\":\"2025-08-21T08:36:23.000Z\"},{\"code\":\"5EG\",\"name\":\"ergf\",\"sortOrder\":99,\"isActive\":true,\"description\":\"\",\"relatedValue\":\"\"}],\"description\":\"\"}','2025-08-21 14:20:49','A','2025-08-21 08:50:49',1,1,'2025-08-28 05:11:32'),(124,'create','reference_masters',26,'{\"code\":\"6TUYGJ\",\"name\":\"tfgv\",\"description\":\"\",\"referenceValues\":[{\"code\":\"78YIGH\",\"name\":\"yghj\",\"sortOrder\":99,\"isActive\":true,\"description\":\"\",\"relatedValue\":\"\"}]}','2025-08-21 14:21:15','A','2025-08-21 08:51:15',1,1,'2025-08-28 05:11:32'),(125,'update','reference_masters',17,'{\"name\":\"r3fegtycghvb\",\"referenceValues\":[{\"id\":17,\"code\":\"F43REV\",\"name\":\"frevd\",\"description\":\"\",\"isActive\":true,\"relatedValue\":\"\",\"sortOrder\":99,\"status\":\"A\",\"created_at\":\"2025-08-21T07:10:25.000Z\"}],\"description\":\"\"}','2025-08-21 14:21:30','A','2025-08-21 08:51:30',1,1,'2025-08-28 05:11:32'),(126,'update','reference_masters',26,'{\"name\":\"tfgv76543\",\"referenceValues\":[{\"id\":27,\"code\":\"78YIGH\",\"name\":\"yghj\",\"description\":\"\",\"isActive\":true,\"relatedValue\":\"\",\"sortOrder\":99,\"status\":\"A\",\"created_at\":\"2025-08-21T08:51:15.000Z\"}],\"description\":\"\"}','2025-08-21 14:21:44','A','2025-08-21 08:51:44',1,1,'2025-08-28 05:11:32'),(127,'update','reference_masters',25,'{\"name\":\"35teg\",\"referenceValues\":[{\"id\":25,\"code\":\"TRHGF\",\"name\":\"4thrgbf\",\"description\":\"\",\"isActive\":true,\"relatedValue\":\"\",\"sortOrder\":99,\"status\":\"A\",\"created_at\":\"2025-08-21T08:36:23.000Z\"},{\"id\":26,\"code\":\"5EG\",\"name\":\"ergf\",\"description\":\"\",\"isActive\":true,\"relatedValue\":\"\",\"sortOrder\":99,\"status\":\"A\",\"created_at\":\"2025-08-21T08:50:49.000Z\"}],\"description\":\"\"}','2025-08-21 14:27:39','A','2025-08-21 08:57:39',1,1,'2025-08-28 05:11:32'),(128,'create','reference_masters',27,'{\"code\":\"4RFF\",\"name\":\"4wfe\",\"description\":\"\",\"referenceValues\":[{\"code\":\"FWR\",\"name\":\"wfvs\",\"sortOrder\":99,\"isActive\":true,\"description\":\"\",\"relatedValue\":\"\"}]}','2025-08-21 14:32:16','A','2025-08-21 09:02:16',1,1,'2025-08-28 05:11:32'),(129,'create','entity',17,'{\"code\":\"65465ER\",\"name\":\"mv ship\",\"comments\":\"\",\"imo_number\":\"5r6\",\"flag\":\"jaban\",\"cameras_installed\":\"56\"}','2025-08-21 17:15:27','A','2025-08-21 11:45:27',1,1,'2025-08-28 05:11:32'),(130,'update','entity',17,'{\"name\":\"mv ship\",\"comments\":\"\",\"imo_number\":\"5r6\",\"flag\":\"jaban\",\"cameras_installed\":\"50\"}','2025-08-21 17:18:21','A','2025-08-21 11:48:21',1,1,'2025-08-28 05:11:32'),(131,'create','entity',18,'{\"code\":\"RTRT\",\"name\":\"rtrt\",\"comments\":\"\",\"imo_number\":\"r56t\",\"flag\":\"jaban\",\"cameras_installed\":\"78\"}','2025-08-21 17:19:49','A','2025-08-21 11:49:49',1,1,'2025-08-28 05:11:32'),(132,'inactivate','entity',18,'{\"status\":\"D\"}','2025-08-21 17:19:58','A','2025-08-21 11:49:58',1,1,'2025-08-28 05:11:32'),(133,'update','entity',15,'{\"name\":\"MV Venus Leader\",\"comments\":\"\",\"imo_number\":\"MV-123\",\"flag\":\"Jaban\",\"cameras_installed\":\"15\"}','2025-08-21 17:20:12','A','2025-08-21 11:50:12',1,1,'2025-08-28 05:11:32'),(134,'update','entity',17,'{\"name\":\"mv ship\",\"comments\":\"\",\"imo_number\":\"5r6\",\"flag\":\"jaban\",\"cameras_installed\":\"50\",\"category1_id\":1}','2025-08-21 17:20:48','A','2025-08-21 11:50:48',1,1,'2025-08-28 05:11:32'),(135,'update','entity',17,'{\"name\":\"mv ship\",\"comments\":\"\",\"imo_number\":\"5r6\",\"flag\":\"jaban\",\"cameras_installed\":\"12\"}','2025-08-21 17:21:03','A','2025-08-21 11:51:03',1,1,'2025-08-28 05:11:32'),(136,'update','reference_masters',25,'{\"name\":\"35teg\",\"referenceValues\":[{\"id\":25,\"code\":\"TRHGF\",\"name\":\"4thrgbf\",\"description\":\"\",\"isActive\":true,\"relatedValue\":\"\",\"sortOrder\":99,\"status\":\"A\",\"created_at\":\"2025-08-21T08:36:23.000Z\"},{\"id\":26,\"code\":\"5EG\",\"name\":\"ergf\",\"description\":\"\",\"isActive\":true,\"relatedValue\":\"\",\"sortOrder\":99,\"status\":\"A\",\"created_at\":\"2025-08-21T08:50:49.000Z\"}],\"description\":\"\"}','2025-08-22 12:21:42','A','2025-08-22 06:51:42',1,1,'2025-08-28 05:11:32'),(137,'create','category1',5,'{\"code\":\"BC\",\"name\":\"BULK CARRER\",\"sortOrder\":0}','2025-08-22 15:06:08','A','2025-08-22 09:36:08',1,1,'2025-08-28 05:11:32'),(138,'inactivate','category1',1,'{\"status\":\"D\"}','2025-08-22 15:06:48','A','2025-08-22 09:36:48',1,1,'2025-08-28 05:11:32'),(139,'create','category2',4,'{\"code\":\"DXB\",\"name\":\"dubai\",\"sortOrder\":99,\"category1_id\":5}','2025-08-22 15:15:36','A','2025-08-22 09:45:36',1,1,'2025-08-28 05:11:32'),(140,'create','category3',6,'{\"code\":\"AEJEA\",\"name\":\"dubai\",\"sortOrder\":0,\"category1_id\":5,\"category2_id\":4}','2025-08-22 15:16:28','A','2025-08-22 09:46:28',1,1,'2025-08-28 05:11:32'),(141,'create','entity',19,'{\"code\":\"SW008\",\"name\":\"MV Sewel\",\"comments\":\"\",\"imo_number\":\"78765\",\"flag\":\"south korea\",\"cameras_installed\":\"10\"}','2025-08-22 15:21:35','A','2025-08-22 09:51:35',1,1,'2025-08-28 05:11:32'),(142,'update','entity',19,'{\"name\":\"MV Sewel\",\"comments\":\"\",\"imo_number\":\"78765\",\"flag\":\"south korea\",\"cameras_installed\":\"10\",\"category1_id\":5,\"category2_id\":4,\"category3_id\":6}','2025-08-22 15:21:49','A','2025-08-22 09:51:49',1,1,'2025-08-28 05:11:32'),(143,'create','entity-section',3,'{\"code\":\"7Y8\",\"name\":\"6t6t\",\"comments\":\"\",\"entity_id\":19}','2025-08-22 15:23:40','A','2025-08-22 09:53:40',1,1,'2025-08-28 05:11:32'),(144,'update','entity-section',3,'{\"name\":\"6t6t\",\"comments\":\"\",\"cameras_installed\":9,\"entity_id\":19}','2025-08-22 15:23:59','A','2025-08-22 09:53:59',1,1,'2025-08-28 05:11:32'),(145,'create','camera',1,'{\"code\":\"43RE\",\"name\":\"admin\",\"type\":\"87tuygjh\",\"location\":\"Chennai\",\"ip_address\":\"67577888\",\"port\":\"37\",\"description\":\"\"}','2025-08-25 16:15:44','A','2025-08-25 10:45:44',1,1,'2025-08-28 05:11:32'),(146,'create','camera',2,'{\"code\":\"HTEGRW\",\"name\":\"r\",\"type\":\"rtps\",\"location\":\"deck 2\",\"ip_address\":\"456.789\",\"port\":\"QEDAC\",\"description\":\"\"}','2025-08-25 17:22:49','A','2025-08-25 11:52:49',1,1,'2025-08-28 05:11:32'),(147,'inactivate','camera',2,'{\"status\":\"D\"}','2025-08-25 17:23:40','A','2025-08-25 11:53:40',1,1,'2025-08-28 05:11:32'),(148,'update','camera',1,'{\"code\":\"43RE\",\"name\":\"admin\",\"type\":\"89\",\"location\":\"Chennai\",\"ip_address\":\"67577888\",\"port\":\"37\",\"description\":\"\"}','2025-08-25 17:23:56','A','2025-08-25 11:53:56',1,1,'2025-08-28 05:11:32'),(149,'inactivate','reference_master',17,'{\"status\":\"D\"}','2025-08-26 14:55:23','A','2025-08-26 09:25:23',1,1,'2025-08-28 05:11:32'),(150,'inactivate','reference_master',18,'{\"status\":\"D\"}','2025-08-26 14:55:38','A','2025-08-26 09:25:38',1,1,'2025-08-28 05:11:32'),(151,'create','reference_masters',28,'{\"code\":\"54R\",\"name\":\"rfedr\",\"description\":\"\",\"referenceValues\":[{\"code\":\"EWF32\",\"name\":\"23f\",\"sortOrder\":99,\"isActive\":true,\"description\":\"\",\"relatedValue\":\"\"}]}','2025-08-26 15:09:45','A','2025-08-26 09:39:45',1,1,'2025-08-28 05:11:32'),(152,'inactivate','reference_master',25,'{\"status\":\"D\"}','2025-08-26 15:21:49','A','2025-08-26 09:51:49',1,1,'2025-08-28 05:11:32'),(153,'create','roles',6,'{\"code\":\"UNIOWNER\",\"name\":\"uniowner\",\"permissions\":[\"management-dashboard\",\"statistics\",\"reports\",\"locations\",\"alerts\",\"user\",\"role\",\"entity\",\"category1\",\"category2\",\"category3\",\"entity-section\",\"reference-master\",\"camera\"],\"landing_page\":\"management-dashboard\"}','2025-08-26 15:32:33','A','2025-08-26 10:02:33',1,1,'2025-08-28 05:11:32'),(154,'create','user',6,'{\"code\":\"UNI\",\"name\":\"uni\",\"emailid\":\"uniowner@gamil.com\",\"role_id\":6,\"is_all_entity_access\":true}','2025-08-26 15:33:38','A','2025-08-26 10:03:38',1,1,'2025-08-28 05:11:32'),(155,'update','entity',2,'{\"name\":\"ship(001)\",\"comments\":\"\",\"imo_number\":\"765rt\",\"flag\":\"tokyo\",\"cameras_installed\":\"20\",\"category1_id\":1,\"category2_id\":1,\"category3_id\":1}','2025-08-26 18:18:38','A','2025-08-26 12:48:38',1,1,'2025-08-28 05:11:32'),(156,'update','user',6,'{\"name\":\"uni\",\"emailid\":\"uniowner@gmail.com\",\"role_id\":6,\"is_all_entity_access\":true}','2025-08-28 10:39:02','A','2025-08-28 05:09:02',1,1,'2025-08-28 05:11:32'),(157,'create','reference_masters',29,'{\"code\":\"EVWD\",\"name\":\"ewv ds\",\"description\":\"\",\"referenceValues\":[{\"code\":\"2ERWCFSC\",\"name\":\"2fecwds\",\"sortOrder\":99,\"isActive\":true,\"description\":\"\",\"relatedValue\":\"\"}]}','2025-08-28 11:45:59','A','2025-08-28 06:15:59',1,1,'2025-08-28 06:15:59'),(158,'update','reference_masters',26,'{\"name\":\"tfgv76543\",\"referenceValues\":[{\"id\":27,\"code\":\"78YIGH\",\"name\":\"yghj\",\"description\":\"\",\"isActive\":true,\"relatedValue\":\"\",\"sortOrder\":99,\"status\":\"A\",\"created_at\":\"2025-08-21T08:51:15.000Z\",\"updated_at\":\"2025-08-28T05:11:30.000Z\"}],\"description\":\"\"}','2025-08-28 12:17:51','A','2025-08-28 06:47:51',1,1,'2025-08-28 06:47:51'),(159,'update','reference_masters',27,'{\"name\":\"4wfe\",\"referenceValues\":[{\"id\":28,\"code\":\"FWR\",\"name\":\"wfvs\",\"description\":\"\",\"isActive\":true,\"relatedValue\":\"\",\"sortOrder\":99,\"status\":\"A\",\"created_at\":\"2025-08-21T09:02:16.000Z\",\"updated_at\":\"2025-08-28T05:11:30.000Z\"}],\"description\":\"\"}','2025-08-28 12:17:59','A','2025-08-28 06:47:59',1,1,'2025-08-28 06:47:59'),(160,'create','entity',20,'{\"code\":\"MV NORWAY\",\"name\":\"MV NOR\",\"comments\":\"\",\"imo_number\":\"MV 765\",\"flag\":\"London\",\"cameras_installed\":\"28\",\"category1_id\":5}','2025-08-28 18:56:13','A','2025-08-28 13:26:13',1,1,'2025-08-28 13:26:13'),(161,'update','reference_masters',27,'{\"name\":\"4wfe\",\"referenceValues\":[{\"id\":28,\"code\":\"FWR\",\"name\":\"wfvs\",\"description\":\"\",\"isActive\":true,\"relatedValue\":\"\",\"sortOrder\":99,\"status\":\"A\",\"created_at\":\"2025-08-21T09:02:16.000Z\",\"updated_at\":\"2025-08-28T05:11:30.000Z\"}],\"description\":\"\"}','2025-08-29 16:32:44','A','2025-08-29 11:02:44',1,1,'2025-08-29 11:02:44'),(162,'update','reference_masters',29,'{\"name\":\"ewv ds\",\"referenceValues\":[{\"id\":30,\"code\":\"2ERWCFSC\",\"name\":\"2fecwds\",\"description\":\"\",\"isActive\":true,\"relatedValue\":\"\",\"sortOrder\":99,\"status\":\"A\",\"created_at\":\"2025-08-28T06:15:59.000Z\",\"updated_at\":\"2025-08-28T06:15:59.000Z\"}],\"description\":\"\"}','2025-08-29 16:32:59','A','2025-08-29 11:02:59',1,1,'2025-08-29 11:02:59'),(163,'inactivate','entity',2,'{\"status\":\"D\"}','2025-08-29 16:35:09','A','2025-08-29 11:05:09',1,1,'2025-08-29 11:05:09'),(164,'create','reference_masters',30,'{\"code\":\"MV-1\",\"name\":\"MV SHIP\",\"description\":\"\",\"referenceValues\":[{\"code\":\"1\",\"name\":\"Active\",\"sortOrder\":99,\"isActive\":true,\"description\":\"\",\"relatedValue\":\"\"}]}','2025-09-01 12:10:07','A','2025-09-01 06:40:07',1,1,'2025-09-01 06:40:07'),(165,'update','reference_masters',30,'{\"name\":\"MV SHIP\",\"referenceValues\":[{\"id\":31,\"code\":\"1\",\"name\":\"Active\",\"description\":\"\",\"isActive\":true,\"relatedValue\":\"\",\"sortOrder\":99,\"status\":\"A\",\"created_at\":\"2025-09-01T06:40:07.000Z\",\"updated_at\":\"2025-09-01T06:40:07.000Z\"},{\"code\":\"IN-P\",\"name\":\"in_port\",\"sortOrder\":99,\"isActive\":true,\"description\":\"\",\"relatedValue\":\"\"},{\"code\":\"M\",\"name\":\"maintenance\",\"sortOrder\":99,\"isActive\":true,\"description\":\"\",\"relatedValue\":\"\"},{\"code\":\"OF\",\"name\":\"offline\",\"sortOrder\":99,\"isActive\":true,\"description\":\"\",\"relatedValue\":\"\"}],\"description\":\"\"}','2025-09-01 12:22:50','A','2025-09-01 06:52:50',1,1,'2025-09-01 06:52:50'),(166,'update','reference_masters',30,'{\"name\":\"MV SHIP\",\"referenceValues\":[{\"id\":31,\"code\":\"1\",\"name\":\"Active\",\"description\":\"\",\"isActive\":true,\"relatedValue\":\"\",\"sortOrder\":99,\"status\":\"A\",\"created_at\":\"2025-09-01T06:40:07.000Z\",\"updated_at\":\"2025-09-01T06:40:07.000Z\"},{\"id\":32,\"code\":\"IN-P\",\"name\":\"in_port\",\"description\":\"\",\"isActive\":true,\"relatedValue\":\"\",\"sortOrder\":99,\"status\":\"A\",\"created_at\":\"2025-09-01T06:52:50.000Z\",\"updated_at\":\"2025-09-01T06:52:50.000Z\"},{\"id\":33,\"code\":\"M\",\"name\":\"maintenance\",\"description\":\"\",\"isActive\":true,\"relatedValue\":\"\",\"sortOrder\":99,\"status\":\"A\",\"created_at\":\"2025-09-01T06:52:50.000Z\",\"updated_at\":\"2025-09-01T06:52:50.000Z\"},{\"id\":34,\"code\":\"OF\",\"name\":\"offline\",\"description\":\"\",\"isActive\":true,\"relatedValue\":\"\",\"sortOrder\":99,\"status\":\"A\",\"created_at\":\"2025-09-01T06:52:50.000Z\",\"updated_at\":\"2025-09-01T06:52:50.000Z\"}],\"description\":\"\"}','2025-09-01 12:24:30','A','2025-09-01 06:54:30',1,1,'2025-09-01 06:54:30'),(167,'update','reference_masters',26,'{\"name\":\"MV-4 ship\",\"referenceValues\":[{\"id\":27,\"code\":\"78YIGH\",\"name\":\"yghj\",\"description\":\"\",\"isActive\":true,\"relatedValue\":\"\",\"sortOrder\":99,\"status\":\"A\",\"created_at\":\"2025-08-21T08:51:15.000Z\",\"updated_at\":\"2025-08-28T05:11:30.000Z\"}],\"description\":\"\"}','2025-09-01 12:54:10','A','2025-09-01 07:24:10',1,1,'2025-09-01 07:24:10'),(168,'update','reference_masters',27,'{\"name\":\"MV 1 ship\",\"referenceValues\":[{\"id\":28,\"code\":\"FWR\",\"name\":\"wfvs\",\"description\":\"\",\"isActive\":true,\"relatedValue\":\"\",\"sortOrder\":99,\"status\":\"A\",\"created_at\":\"2025-08-21T09:02:16.000Z\",\"updated_at\":\"2025-08-28T05:11:30.000Z\"}],\"description\":\"\"}','2025-09-01 12:54:29','A','2025-09-01 07:24:29',1,1,'2025-09-01 07:24:29'),(169,'update','reference_masters',29,'{\"name\":\"MV 2 ship\",\"referenceValues\":[{\"id\":30,\"code\":\"2ERWCFSC\",\"name\":\"2fecwds\",\"description\":\"\",\"isActive\":true,\"relatedValue\":\"\",\"sortOrder\":99,\"status\":\"A\",\"created_at\":\"2025-08-28T06:15:59.000Z\",\"updated_at\":\"2025-08-28T06:15:59.000Z\"}],\"description\":\"\"}','2025-09-01 12:54:47','A','2025-09-01 07:24:47',1,1,'2025-09-01 07:24:47'),(170,'update','reference_masters',28,'{\"name\":\"MV 3 ship\",\"referenceValues\":[{\"id\":29,\"code\":\"EWF32\",\"name\":\"23f\",\"description\":\"\",\"isActive\":true,\"relatedValue\":\"\",\"sortOrder\":99,\"status\":\"A\",\"created_at\":\"2025-08-26T09:39:45.000Z\",\"updated_at\":\"2025-08-28T05:11:30.000Z\"}],\"description\":\"\"}','2025-09-01 12:55:09','A','2025-09-01 07:25:09',1,1,'2025-09-01 07:25:09'),(171,'update','entity',1,'{\"name\":\"Default Entity\",\"comments\":\"\",\"imo_number\":\"m1\",\"flag\":\"jaban\",\"cameras_installed\":\"10\",\"category1_id\":1,\"category2_id\":1,\"category3_id\":1}','2025-09-01 13:32:34','A','2025-09-01 08:02:34',1,1,'2025-09-01 08:02:34'),(172,'update','entity',15,'{\"name\":\"MV Venus Leader\",\"comments\":\"\",\"imo_number\":\"MV-123\",\"flag\":\"Jaban\",\"cameras_installed\":\"15\",\"category1_id\":3,\"category2_id\":3,\"category3_id\":5}','2025-09-01 13:32:44','A','2025-09-01 08:02:44',1,1,'2025-09-01 08:02:44'),(173,'update','entity',20,'{\"name\":\"MV NOR\",\"comments\":\"\",\"imo_number\":\"MV 765\",\"flag\":\"London\",\"cameras_installed\":\"28\",\"category1_id\":5}','2025-09-01 13:32:55','A','2025-09-01 08:02:55',1,1,'2025-09-01 08:02:55'),(174,'update','entity',19,'{\"name\":\"MV Sewel\",\"comments\":\"\",\"imo_number\":\"78765\",\"flag\":\"south korea\",\"cameras_installed\":\"10\",\"category1_id\":5,\"category2_id\":4,\"category3_id\":6}','2025-09-01 13:33:05','A','2025-09-01 08:03:05',1,1,'2025-09-01 08:03:05'),(175,'create','entity',21,'{\"code\":\"MV-R\",\"name\":\"MV Motor RORO\",\"comments\":\"\",\"imo_number\":\"mvroro\",\"flag\":\"London\",\"cameras_installed\":\"89\"}','2025-09-01 15:00:18','A','2025-09-01 09:30:18',1,1,'2025-09-01 09:30:18'),(176,'create','camera',13,'{\"code\":\"89\",\"name\":\"Chitrarasu J\",\"type\":\"rtps\",\"location\":\"Chennai\",\"ip_address\":\"67.577.888\",\"port\":\"56\",\"description\":\"\"}','2025-09-02 12:20:36','A','2025-09-02 06:50:36',1,1,'2025-09-02 06:50:36'),(177,'create','camera',14,'{\"code\":\"REF1\",\"name\":\"kjhgf\",\"type\":\"mnbv\",\"location\":\"mnbv\",\"ip_address\":\"456.789\",\"port\":\"iough\",\"description\":\"\"}','2025-09-02 12:26:59','A','2025-09-02 06:56:59',1,1,'2025-09-02 06:56:59'),(178,'update','camera',13,'{\"code\":\"89\",\"name\":\"yyyy\",\"type\":\"rtps\",\"location\":\"Chennai\",\"ip_address\":\"67.577.888\",\"port\":\"67\",\"description\":\"\"}','2025-09-02 12:30:40','A','2025-09-02 07:00:40',1,1,'2025-09-02 07:00:40'),(179,'update','camera',1,'{\"code\":\"43RE\",\"name\":\"admin\",\"type\":\"89\",\"location\":\"Chennai\",\"ip_address\":\"67577888\",\"port\":\"45\",\"description\":null}','2025-09-02 12:33:09','A','2025-09-02 07:03:09',1,1,'2025-09-02 07:03:09'),(180,'update','camera',1,'{\"code\":\"43RE\",\"name\":\"admin\",\"type\":\"89\",\"location\":\"Chennai\",\"ip_address\":\"67577888\",\"port\":\"port of London\",\"description\":null}','2025-09-02 12:33:29','A','2025-09-02 07:03:29',1,1,'2025-09-02 07:03:29'),(181,'create','reference_masters',31,'{\"code\":\"45\",\"name\":\"2ewsf\",\"description\":\"\",\"referenceValues\":[{\"code\":\"RFD\",\"name\":\"rfscx\",\"sortOrder\":99,\"isActive\":true,\"description\":\"\",\"relatedValue\":\"\"}]}','2025-09-02 12:46:55','A','2025-09-02 07:16:55',1,1,'2025-09-02 07:16:55'),(182,'create','reference_masters',32,'{\"code\":\"EDFS\",\"name\":\"ewdfs\",\"description\":\"\",\"referenceValues\":[{\"code\":\"EWFS\",\"name\":\"ewdsc\",\"sortOrder\":99,\"isActive\":true,\"description\":\"\",\"relatedValue\":\"\"}]}','2025-09-02 12:47:37','A','2025-09-02 07:17:37',1,1,'2025-09-02 07:17:37'),(183,'update','reference_masters',31,'{\"name\":\"2ewsf\",\"referenceValues\":[{\"id\":35,\"code\":\"RFD\",\"name\":\"rfscx\",\"description\":\"\",\"isActive\":true,\"relatedValue\":\"\",\"sortOrder\":99,\"status\":\"A\",\"created_at\":\"2025-09-02T07:16:55.000Z\",\"updated_at\":\"2025-09-02T07:16:55.000Z\"}],\"description\":\"\"}','2025-09-02 13:00:52','A','2025-09-02 07:30:52',1,1,'2025-09-02 07:30:52'),(184,'update','reference_masters',30,'{\"name\":\"MV SHIP\",\"referenceValues\":[{\"id\":31,\"code\":\"1\",\"name\":\"Active\",\"description\":\"\",\"isActive\":true,\"relatedValue\":\"\",\"sortOrder\":99,\"status\":\"A\",\"created_at\":\"2025-09-01T06:40:07.000Z\",\"updated_at\":\"2025-09-01T06:40:07.000Z\"},{\"id\":32,\"code\":\"IN-P\",\"name\":\"in_port\",\"description\":\"\",\"isActive\":true,\"relatedValue\":\"\",\"sortOrder\":99,\"status\":\"A\",\"created_at\":\"2025-09-01T06:52:50.000Z\",\"updated_at\":\"2025-09-01T06:52:50.000Z\"},{\"id\":33,\"code\":\"M\",\"name\":\"maintenance\",\"description\":\"\",\"isActive\":true,\"relatedValue\":\"\",\"sortOrder\":99,\"status\":\"A\",\"created_at\":\"2025-09-01T06:52:50.000Z\",\"updated_at\":\"2025-09-01T06:52:50.000Z\"},{\"id\":34,\"code\":\"OF\",\"name\":\"offline\",\"description\":\"\",\"isActive\":true,\"relatedValue\":\"\",\"sortOrder\":99,\"status\":\"A\",\"created_at\":\"2025-09-01T06:52:50.000Z\",\"updated_at\":\"2025-09-01T06:52:50.000Z\"}],\"description\":\"\"}','2025-09-02 13:02:51','A','2025-09-02 07:32:51',1,1,'2025-09-02 07:32:51'),(185,'update','reference_masters',30,'{\"name\":\"MV SHIP\",\"referenceValues\":[{\"id\":31,\"code\":\"1\",\"name\":\"Active\",\"description\":\"\",\"isActive\":true,\"relatedValue\":\"\",\"sortOrder\":99,\"status\":\"A\",\"created_at\":\"2025-09-01T06:40:07.000Z\",\"updated_at\":\"2025-09-01T06:40:07.000Z\"},{\"id\":32,\"code\":\"IN-P\",\"name\":\"in_port\",\"description\":\"\",\"isActive\":true,\"relatedValue\":\"\",\"sortOrder\":99,\"status\":\"A\",\"created_at\":\"2025-09-01T06:52:50.000Z\",\"updated_at\":\"2025-09-01T06:52:50.000Z\"},{\"id\":33,\"code\":\"M\",\"name\":\"maintenance\",\"description\":\"\",\"isActive\":true,\"relatedValue\":\"\",\"sortOrder\":99,\"status\":\"A\",\"created_at\":\"2025-09-01T06:52:50.000Z\",\"updated_at\":\"2025-09-01T06:52:50.000Z\"},{\"id\":34,\"code\":\"OF\",\"name\":\"offline\",\"description\":\"\",\"isActive\":true,\"relatedValue\":\"\",\"sortOrder\":99,\"status\":\"A\",\"created_at\":\"2025-09-01T06:52:50.000Z\",\"updated_at\":\"2025-09-01T06:52:50.000Z\"}],\"description\":\"\"}','2025-09-02 16:02:47','A','2025-09-02 10:32:47',1,1,'2025-09-02 10:32:47'),(186,'inactivate','reference_master',31,'{\"status\":\"D\"}','2025-09-02 16:15:15','A','2025-09-02 10:45:15',1,1,'2025-09-02 10:45:15'),(187,'inactivate','reference_master',32,'{\"status\":\"D\"}','2025-09-02 16:15:17','A','2025-09-02 10:45:17',1,1,'2025-09-02 10:45:17'),(188,'update','reference_masters',27,'{\"name\":\"MV 1 ship\",\"referenceValues\":[{\"id\":28,\"code\":\"FWR\",\"name\":\"wfvs\",\"description\":\"\",\"isActive\":true,\"relatedValue\":\"\",\"sortOrder\":99,\"status\":\"A\",\"created_at\":\"2025-08-21T09:02:16.000Z\",\"updated_at\":\"2025-08-28T05:11:30.000Z\"}],\"description\":\"\"}','2025-09-02 16:15:24','A','2025-09-02 10:45:24',1,1,'2025-09-02 10:45:24'),(189,'update','reference_masters',27,'{\"name\":\"MV 1 ship\",\"referenceValues\":[{\"id\":28,\"code\":\"FWR\",\"name\":\"wfvs\",\"description\":\"\",\"isActive\":true,\"relatedValue\":\"\",\"sortOrder\":99,\"status\":\"A\",\"created_at\":\"2025-08-21T09:02:16.000Z\",\"updated_at\":\"2025-08-28T05:11:30.000Z\"}],\"description\":\"\"}','2025-09-02 16:15:30','A','2025-09-02 10:45:30',1,1,'2025-09-02 10:45:30'),(190,'update','reference_masters',29,'{\"name\":\"MV 2 ship\",\"referenceValues\":[{\"id\":30,\"code\":\"2ERWCFSC\",\"name\":\"2fecwds\",\"description\":\"\",\"isActive\":true,\"relatedValue\":\"\",\"sortOrder\":99,\"status\":\"A\",\"created_at\":\"2025-08-28T06:15:59.000Z\",\"updated_at\":\"2025-08-28T06:15:59.000Z\"}],\"description\":\"\"}','2025-09-02 16:22:08','A','2025-09-02 10:52:08',1,1,'2025-09-02 10:52:08'),(191,'inactivate','reference_master',35,'{\"status\":\"D\"}','2025-09-02 16:55:26','A','2025-09-02 11:25:26',1,1,'2025-09-02 11:25:26'),(192,'inactivate','reference_master',34,'{\"status\":\"D\"}','2025-09-02 16:55:30','A','2025-09-02 11:25:30',1,1,'2025-09-02 11:25:30'),(193,'inactivate','reference_master',33,'{\"status\":\"D\"}','2025-09-02 16:55:34','A','2025-09-02 11:25:34',1,1,'2025-09-02 11:25:34'),(194,'update','reference_masters',26,'{\"name\":\"MV-4 ship\",\"referenceValues\":[{\"id\":27,\"code\":\"78YIGH\",\"name\":\"yghj\",\"description\":\"\",\"isActive\":true,\"relatedValue\":\"\",\"sortOrder\":99,\"status\":\"A\",\"created_at\":\"2025-08-21T08:51:15.000Z\",\"updated_at\":\"2025-08-28T05:11:30.000Z\"}],\"description\":\"\",\"entity_id\":15}','2025-09-03 12:18:42','A','2025-09-03 06:48:42',1,1,'2025-09-03 06:48:42'),(195,'update','reference_masters',28,'{\"name\":\"MV 3 ship\",\"referenceValues\":[{\"id\":29,\"code\":\"EWF32\",\"name\":\"23f\",\"description\":\"\",\"isActive\":true,\"relatedValue\":\"\",\"sortOrder\":99,\"status\":\"A\",\"created_at\":\"2025-08-26T09:39:45.000Z\",\"updated_at\":\"2025-08-28T05:11:30.000Z\"}],\"description\":\"\",\"entity_id\":1}','2025-09-03 12:22:00','A','2025-09-03 06:52:00',1,1,'2025-09-03 06:52:00'),(196,'update','reference_masters',27,'{\"name\":\"MV 1 ship\",\"referenceValues\":[{\"id\":28,\"code\":\"FWR\",\"name\":\"wfvs\",\"description\":\"\",\"isActive\":true,\"relatedValue\":\"\",\"sortOrder\":99,\"status\":\"A\",\"created_at\":\"2025-08-21T09:02:16.000Z\",\"updated_at\":\"2025-08-28T05:11:30.000Z\"}],\"description\":\"\",\"entity_id\":1}','2025-09-03 13:22:00','A','2025-09-03 07:52:00',1,1,'2025-09-03 07:52:00'),(197,'update','reference_masters',27,'{\"name\":\"MV 1 ship\",\"referenceValues\":[{\"id\":28,\"code\":\"FWR\",\"name\":\"wfvsr\",\"description\":\"\",\"isActive\":true,\"relatedValue\":\"\",\"sortOrder\":99,\"status\":\"A\",\"created_at\":\"2025-08-21T09:02:16.000Z\",\"updated_at\":\"2025-08-28T05:11:30.000Z\"}],\"description\":\"\",\"entity_id\":1}','2025-09-03 13:22:19','A','2025-09-03 07:52:19',1,1,'2025-09-03 07:52:19'),(198,'update','reference_masters',27,'{\"name\":\"MV 1 ship\",\"referenceValues\":[{\"id\":28,\"code\":\"FWR\",\"name\":\"wfvs\",\"description\":\"\",\"isActive\":true,\"relatedValue\":\"\",\"sortOrder\":99,\"status\":\"A\",\"created_at\":\"2025-08-21T09:02:16.000Z\",\"updated_at\":\"2025-08-28T05:11:30.000Z\"}],\"description\":\"\",\"entity_id\":17}','2025-09-03 13:23:12','A','2025-09-03 07:53:12',1,1,'2025-09-03 07:53:12'),(199,'update','reference_masters',27,'{\"name\":\"MV 1 ship\",\"referenceValues\":[{\"id\":28,\"code\":\"FWR\",\"name\":\"wfvs\",\"description\":\"\",\"isActive\":true,\"relatedValue\":\"\",\"sortOrder\":99,\"status\":\"A\",\"created_at\":\"2025-08-21T09:02:16.000Z\",\"updated_at\":\"2025-08-28T05:11:30.000Z\"}],\"description\":\"\",\"entity_id\":17}','2025-09-03 13:23:41','A','2025-09-03 07:53:41',1,1,'2025-09-03 07:53:41'),(200,'update','reference_masters',26,'{\"name\":\"MV-4 ship\",\"referenceValues\":[{\"id\":27,\"code\":\"78YIGH\",\"name\":\"yghjrefsc\",\"description\":\"\",\"isActive\":true,\"relatedValue\":\"\",\"sortOrder\":99,\"status\":\"A\",\"created_at\":\"2025-08-21T08:51:15.000Z\",\"updated_at\":\"2025-08-28T05:11:30.000Z\"}],\"description\":\"\",\"entity_id\":15}','2025-09-03 13:25:29','A','2025-09-03 07:55:29',1,1,'2025-09-03 07:55:29'),(201,'update','reference_masters',26,'{\"name\":\"MV-4 ship\",\"referenceValues\":[{\"id\":27,\"code\":\"78YIGH\",\"name\":\"yghjdcs vxvsfcwdecs\",\"description\":\"\",\"isActive\":true,\"relatedValue\":\"\",\"sortOrder\":99,\"status\":\"A\",\"created_at\":\"2025-08-21T08:51:15.000Z\",\"updated_at\":\"2025-08-28T05:11:30.000Z\"}],\"description\":\"\",\"entity_id\":15}','2025-09-03 13:25:49','A','2025-09-03 07:55:49',1,1,'2025-09-03 07:55:49'),(202,'update','reference_masters',26,'{\"name\":\"MV-4 ship\",\"referenceValues\":[{\"id\":27,\"code\":\"78YIGH\",\"name\":\"yghjuytfcvbh\",\"description\":\"\",\"isActive\":true,\"relatedValue\":\"\",\"sortOrder\":99,\"status\":\"A\",\"created_at\":\"2025-08-21T08:51:15.000Z\",\"updated_at\":\"2025-08-28T05:11:30.000Z\"}],\"description\":\"\",\"entity_id\":15}','2025-09-03 13:30:13','A','2025-09-03 08:00:13',1,1,'2025-09-03 08:00:13'),(203,'update','reference_masters',26,'{\"name\":\"MV-4 ship\",\"referenceValues\":[{\"id\":27,\"code\":\"78YIGH\",\"name\":\"yghjtryhngf\",\"description\":\"\",\"isActive\":true,\"relatedValue\":\"\",\"sortOrder\":99,\"status\":\"A\",\"created_at\":\"2025-08-21T08:51:15.000Z\",\"updated_at\":\"2025-08-28T05:11:30.000Z\"}],\"description\":\"\",\"entity_id\":15}','2025-09-03 13:56:06','A','2025-09-03 08:26:06',1,1,'2025-09-03 08:26:06'),(204,'update','reference_masters',30,'{\"name\":\"MV SHIP\",\"referenceValues\":[{\"id\":31,\"code\":\"1\",\"name\":\"Active\",\"description\":\"\",\"isActive\":true,\"relatedValue\":\"\",\"sortOrder\":99,\"status\":\"A\",\"created_at\":\"2025-09-01T06:40:07.000Z\",\"updated_at\":\"2025-09-01T06:40:07.000Z\"},{\"id\":32,\"code\":\"IN-P\",\"name\":\"in_port\",\"description\":\"\",\"isActive\":true,\"relatedValue\":\"\",\"sortOrder\":99,\"status\":\"A\",\"created_at\":\"2025-09-01T06:52:50.000Z\",\"updated_at\":\"2025-09-01T06:52:50.000Z\"},{\"id\":33,\"code\":\"M\",\"name\":\"maintenance\",\"description\":\"\",\"isActive\":true,\"relatedValue\":\"\",\"sortOrder\":99,\"status\":\"A\",\"created_at\":\"2025-09-01T06:52:50.000Z\",\"updated_at\":\"2025-09-01T06:52:50.000Z\"},{\"id\":34,\"code\":\"OF\",\"name\":\"offline\",\"description\":\"\",\"isActive\":true,\"relatedValue\":\"\",\"sortOrder\":99,\"status\":\"A\",\"created_at\":\"2025-09-01T06:52:50.000Z\",\"updated_at\":\"2025-09-01T06:52:50.000Z\"}],\"description\":\"\",\"entity_id\":21}','2025-09-03 13:56:34','A','2025-09-03 08:26:34',1,1,'2025-09-03 08:26:34'),(205,'update','reference_masters',27,'{\"name\":\"MV 1 ship\",\"referenceValues\":[{\"id\":28,\"code\":\"FWR\",\"name\":\"wfvs\",\"description\":\"\",\"isActive\":true,\"relatedValue\":\"\",\"sortOrder\":99,\"status\":\"A\",\"created_at\":\"2025-08-21T09:02:16.000Z\",\"updated_at\":\"2025-08-28T05:11:30.000Z\"}],\"description\":\"\",\"entity_id\":21}','2025-09-03 16:10:07','A','2025-09-03 10:40:07',1,1,'2025-09-03 10:40:07'),(206,'create','camera',15,'{\"code\":\"CAM-1\",\"name\":\"Camera Cam-1\",\"type\":\"wireless\",\"location\":\"Engine Room\",\"ip_address\":\"67.577.888\",\"port\":\"port of London\",\"description\":\"\"}','2025-09-03 16:59:38','A','2025-09-03 11:29:38',1,1,'2025-09-03 11:29:38'),(207,'update','camera',14,'{\"code\":\"REF1\",\"name\":\"Camera Cam-2\",\"type\":\"Wireless Cam\",\"location\":\"security Room\",\"ip_address\":\"456.789\",\"port\":\"Port of jaban\",\"description\":\"\"}','2025-09-03 17:01:39','A','2025-09-03 11:31:39',1,1,'2025-09-03 11:31:39'),(208,'update','camera',13,'{\"code\":\"89\",\"name\":\"Loading Dock Camera\",\"type\":\"PTZ Camera\",\"location\":\"Cargo Loading Dock 7\",\"ip_address\":\"987.583.45\",\"port\":\"port of cochin\",\"description\":\"\"}','2025-09-03 17:08:10','A','2025-09-03 11:38:10',1,1,'2025-09-03 11:38:10'),(209,'create','camera',16,'{\"code\":\"CAM014\",\"name\":\"Container Yard Camera\",\"type\":\"CCTV\",\"location\":\"Container Yard Block D\",\"ip_address\":\"987.987.98\",\"port\":\"port of england\",\"description\":\"\"}','2025-09-03 17:09:53','A','2025-09-03 11:39:53',1,1,'2025-09-03 11:39:53'),(210,'update','camera',2,'{\"code\":\"HTEGRW\",\"name\":\"Crew Exit Camer\",\"type\":\"Dome Camera\",\"location\":\"deck 2\",\"ip_address\":\"456.789\",\"port\":\"port of newyork\",\"description\":null}','2025-09-03 17:13:02','A','2025-09-03 11:43:02',1,1,'2025-09-03 11:43:02'),(211,'update','reference_masters',27,'{\"name\":\"MV 1 ship\",\"referenceValues\":[{\"code\":\"ACTIVE\",\"name\":\"active\",\"sortOrder\":0,\"isActive\":true},{\"code\":\"IN_PORT\",\"name\":\"in_port\",\"sortOrder\":0,\"isActive\":true},{\"code\":\"MAINTENANCE\",\"name\":\"maintenance\",\"sortOrder\":0,\"isActive\":true},{\"code\":\"OFFLINE\",\"name\":\"offline\",\"sortOrder\":0,\"isActive\":true}],\"description\":\"\",\"entity_id\":21}','2025-09-04 11:26:42','A','2025-09-04 05:56:42',1,1,'2025-09-04 05:56:42'),(212,'update','reference_masters',27,'{\"name\":\"MV 1 ship\",\"referenceValues\":[{\"id\":37,\"code\":\"ACTIVE\",\"name\":\"active\",\"description\":null,\"isActive\":true,\"relatedValue\":null,\"sortOrder\":0,\"status\":\"A\",\"created_at\":\"2025-09-04T05:56:42.000Z\",\"updated_at\":\"2025-09-04T05:56:42.000Z\"},{\"id\":38,\"code\":\"IN_PORT\",\"name\":\"in_port\",\"description\":null,\"isActive\":true,\"relatedValue\":null,\"sortOrder\":0,\"status\":\"A\",\"created_at\":\"2025-09-04T05:56:42.000Z\",\"updated_at\":\"2025-09-04T05:56:42.000Z\"},{\"id\":39,\"code\":\"MAINTENANCE\",\"name\":\"maintenance\",\"description\":null,\"isActive\":true,\"relatedValue\":null,\"sortOrder\":0,\"status\":\"A\",\"created_at\":\"2025-09-04T05:56:42.000Z\",\"updated_at\":\"2025-09-04T05:56:42.000Z\"},{\"id\":40,\"code\":\"OFFLINE\",\"name\":\"offline\",\"description\":null,\"isActive\":true,\"relatedValue\":null,\"sortOrder\":0,\"status\":\"A\",\"created_at\":\"2025-09-04T05:56:42.000Z\",\"updated_at\":\"2025-09-04T05:56:42.000Z\"}],\"description\":\"\",\"entity_id\":19}','2025-09-04 11:27:04','A','2025-09-04 05:57:04',1,1,'2025-09-04 05:57:04'),(213,'update','reference_masters',29,'{\"name\":\"MV 2 ship\",\"referenceValues\":[{\"id\":30,\"code\":\"2ERWCFSC\",\"name\":\"2fecwds\",\"description\":\"\",\"isActive\":true,\"relatedValue\":\"\",\"sortOrder\":99,\"status\":\"A\",\"created_at\":\"2025-08-28T06:15:59.000Z\",\"updated_at\":\"2025-08-28T06:15:59.000Z\"}],\"description\":\"\",\"entity_id\":17}','2025-09-04 11:27:18','A','2025-09-04 05:57:18',1,1,'2025-09-04 05:57:18'),(214,'update','reference_masters',27,'{\"name\":\"MV 1 ship\",\"referenceValues\":[{\"id\":37,\"code\":\"ACTIVE\",\"name\":\"active\",\"description\":null,\"isActive\":true,\"relatedValue\":null,\"sortOrder\":0,\"status\":\"A\",\"created_at\":\"2025-09-04T05:56:42.000Z\",\"updated_at\":\"2025-09-04T05:56:42.000Z\"},{\"id\":38,\"code\":\"IN_PORT\",\"name\":\"in_port\",\"description\":null,\"isActive\":false,\"relatedValue\":null,\"sortOrder\":0,\"status\":\"A\",\"created_at\":\"2025-09-04T05:56:42.000Z\",\"updated_at\":\"2025-09-04T05:56:42.000Z\"},{\"id\":39,\"code\":\"MAINTENANCE\",\"name\":\"maintenance\",\"description\":null,\"isActive\":true,\"relatedValue\":null,\"sortOrder\":0,\"status\":\"A\",\"created_at\":\"2025-09-04T05:56:42.000Z\",\"updated_at\":\"2025-09-04T05:56:42.000Z\"},{\"id\":40,\"code\":\"OFFLINE\",\"name\":\"offline\",\"description\":null,\"isActive\":true,\"relatedValue\":null,\"sortOrder\":0,\"status\":\"A\",\"created_at\":\"2025-09-04T05:56:42.000Z\",\"updated_at\":\"2025-09-04T05:56:42.000Z\"}],\"description\":\"\",\"entity_id\":19}','2025-09-04 11:30:55','A','2025-09-04 06:00:55',1,1,'2025-09-04 06:00:55'),(215,'update','reference_masters',29,'{\"name\":\"MV 2 ship\",\"referenceValues\":[{\"code\":\"ACTIVE\",\"name\":\"active\",\"sortOrder\":0,\"isActive\":true},{\"code\":\"IP_PORT\",\"name\":\"in-port\",\"sortOrder\":0,\"isActive\":true},{\"code\":\"MAINTENANCE\",\"name\":\"maintenance\",\"sortOrder\":0,\"isActive\":true},{\"code\":\"OFFLINE\",\"name\":\"offline\",\"sortOrder\":0,\"isActive\":true}],\"description\":\"\",\"entity_id\":17}','2025-09-04 11:32:50','A','2025-09-04 06:02:50',1,1,'2025-09-04 06:02:50'),(216,'update','reference_masters',26,'{\"name\":\"MV-4 ship\",\"referenceValues\":[{\"code\":\"ACTIVE\",\"name\":\"Active\",\"sortOrder\":0,\"isActive\":true},{\"code\":\"IN_PORT\",\"name\":\"In_port\",\"sortOrder\":0,\"isActive\":true},{\"code\":\"MAINTENANCE\",\"name\":\"Mnaitenance\",\"sortOrder\":0,\"isActive\":true},{\"code\":\"OFFLINE\",\"name\":\"Offilne\",\"sortOrder\":0,\"isActive\":true}],\"description\":\"\",\"entity_id\":15}','2025-09-04 11:56:02','A','2025-09-04 06:26:02',1,1,'2025-09-04 06:26:02'),(217,'create','deck1',1,'{\"code\":\"DEC-01\",\"name\":\"Cam-01\",\"type\":\"Wireless Cam\",\"location\":\"Back View \",\"ip_address\":\"399.399.399\",\"port\":\"Port-01\",\"description\":\"\"}','2025-09-08 10:47:48','A','2025-09-08 05:17:48',1,1,'2025-09-08 05:17:48'),(218,'update','entity',21,'{\"name\":\"MV Motor RORO\",\"comments\":\"\",\"imo_number\":\"mvroro\",\"flag\":\"London\",\"cameras_installed\":\"89\",\"category1_id\":5}','2025-09-08 11:03:58','A','2025-09-08 05:33:58',1,1,'2025-09-08 05:33:58'),(219,'update','entity',20,'{\"name\":\"MV NOR\",\"comments\":\"\",\"imo_number\":\"MV 765\",\"flag\":\"London\",\"cameras_installed\":\"28\",\"category1_id\":5,\"category2_id\":4,\"category3_id\":6}','2025-09-08 11:04:06','A','2025-09-08 05:34:06',1,1,'2025-09-08 05:34:06'),(220,'update','entity',20,'{\"name\":\"MV NOR\",\"comments\":\"\",\"imo_number\":\"MV 765\",\"flag\":\"London\",\"cameras_installed\":\"28\",\"category1_id\":1,\"category2_id\":1,\"category3_id\":1}','2025-09-08 11:04:18','A','2025-09-08 05:34:18',1,1,'2025-09-08 05:34:18'),(221,'create','deck1',2,'{\"code\":\"DEC-02\",\"name\":\"Dec-cam-02\",\"type\":\"wire\",\"location\":\"Front of the door\",\"ip_address\":\"980.890.890.99\",\"port\":\"95\",\"entity_id\":15,\"description\":\"\"}','2025-09-08 14:00:22','A','2025-09-08 08:30:22',1,1,'2025-09-08 08:30:22'),(222,'update','reference_masters',27,'{\"name\":\"MV 1 ship\",\"referenceValues\":[{\"id\":37,\"code\":\"ACTIVE\",\"name\":\"active\",\"description\":null,\"isActive\":true,\"relatedValue\":null,\"sortOrder\":0,\"status\":\"A\",\"created_at\":\"2025-09-04T05:56:42.000Z\",\"updated_at\":\"2025-09-04T05:56:42.000Z\"},{\"id\":38,\"code\":\"IN_PORT\",\"name\":\"in_port\",\"description\":null,\"isActive\":false,\"relatedValue\":null,\"sortOrder\":0,\"status\":\"A\",\"created_at\":\"2025-09-04T05:56:42.000Z\",\"updated_at\":\"2025-09-04T06:00:55.000Z\"},{\"id\":39,\"code\":\"MAINTENANCE\",\"name\":\"maintenance\",\"description\":null,\"isActive\":true,\"relatedValue\":null,\"sortOrder\":0,\"status\":\"A\",\"created_at\":\"2025-09-04T05:56:42.000Z\",\"updated_at\":\"2025-09-04T05:56:42.000Z\"},{\"id\":40,\"code\":\"OFFLINE\",\"name\":\"offline\",\"description\":null,\"isActive\":true,\"relatedValue\":null,\"sortOrder\":0,\"status\":\"A\",\"created_at\":\"2025-09-04T05:56:42.000Z\",\"updated_at\":\"2025-09-04T05:56:42.000Z\"}],\"description\":\"\",\"entity_id\":19}','2025-09-10 13:49:37','A','2025-09-10 08:19:37',1,1,'2025-09-10 08:19:37'),(223,'update','reference_masters',27,'{\"name\":\"MV 1 ship\",\"referenceValues\":[{\"id\":37,\"code\":\"ACTIVE\",\"name\":\"active\",\"description\":null,\"isActive\":true,\"relatedValue\":null,\"sortOrder\":0,\"status\":\"A\",\"created_at\":\"2025-09-04T05:56:42.000Z\",\"updated_at\":\"2025-09-04T05:56:42.000Z\"},{\"id\":38,\"code\":\"IN_PORT\",\"name\":\"in_port\",\"description\":null,\"isActive\":true,\"relatedValue\":null,\"sortOrder\":0,\"status\":\"A\",\"created_at\":\"2025-09-04T05:56:42.000Z\",\"updated_at\":\"2025-09-04T06:00:55.000Z\"},{\"id\":39,\"code\":\"MAINTENANCE\",\"name\":\"maintenance\",\"description\":null,\"isActive\":true,\"relatedValue\":null,\"sortOrder\":0,\"status\":\"A\",\"created_at\":\"2025-09-04T05:56:42.000Z\",\"updated_at\":\"2025-09-04T05:56:42.000Z\"},{\"id\":40,\"code\":\"OFFLINE\",\"name\":\"offline\",\"description\":null,\"isActive\":true,\"relatedValue\":null,\"sortOrder\":0,\"status\":\"A\",\"created_at\":\"2025-09-04T05:56:42.000Z\",\"updated_at\":\"2025-09-04T05:56:42.000Z\"}],\"description\":\"\",\"entity_id\":19}','2025-09-10 13:50:14','A','2025-09-10 08:20:14',1,1,'2025-09-10 08:20:14'),(224,'create','deck1',3,'{\"code\":\"DEC-03\",\"name\":\"Dec-Cam-03\",\"type\":\"Wireless Cam\",\"location\":\"Right side of the floor \",\"ip_address\":\"787.989.989\",\"port\":\"9878\",\"stream_url\":\"rtsp://admin:12345scw@192.168.1.210/media/video2\",\"entity_id\":19,\"description\":\"\"}','2025-09-11 11:13:22','A','2025-09-11 05:43:22',1,1,'2025-09-11 05:43:22'),(225,'create','deck1',4,'{\"code\":\"DEC-04\",\"name\":\"Dec-Cam-04\",\"type\":\"wire\",\"location\":\"left side of dec-4\",\"ip_address\":\"67.577.888\",\"port\":\"37\",\"stream_url\":\"reftrgvd\",\"entity_id\":20,\"description\":\"\"}','2025-09-11 13:15:16','A','2025-09-11 07:45:16',1,1,'2025-09-11 07:45:16'),(226,'update','deck1',4,'{\"code\":\"DEC-04\",\"name\":\"Dec-Cam-04\",\"type\":\"wire\",\"location\":\"left side of dec-4\",\"ip_address\":\"67.577.888\",\"port\":\"37\",\"stream_url\":\"reftrgvd\",\"description\":\"\",\"entity_id\":20}','2025-09-11 13:48:26','A','2025-09-11 08:18:26',1,1,'2025-09-11 08:18:26'),(227,'update','deck1',1,'{\"code\":\"DEC-01\",\"name\":\"Cam-01\",\"type\":\"Wireless Cam\",\"location\":\"Back View \",\"ip_address\":\"399.399.399\",\"port\":\"Port-01\",\"stream_url\":\"wrsvdgc bvbcvf\",\"description\":\"\",\"entity_id\":21}','2025-09-11 13:48:55','A','2025-09-11 08:18:55',1,1,'2025-09-11 08:18:55'),(228,'update','deck1',2,'{\"code\":\"DEC-02\",\"name\":\"Dec-cam-02\",\"type\":\"wire\",\"location\":\"Front of the door\",\"ip_address\":\"980.890.890.99\",\"port\":\"95\",\"stream_url\":\"rtsp://@192.168.1.210/media/video5\",\"description\":\"\",\"entity_id\":15}','2025-09-11 14:42:31','A','2025-09-11 09:12:31',1,1,'2025-09-11 09:12:31'),(229,'update','reference_masters',27,'{\"name\":\"MV 1 ship\",\"referenceValues\":[{\"id\":37,\"code\":\"ACTIVE\",\"name\":\"active\",\"description\":null,\"isActive\":true,\"relatedValue\":null,\"sortOrder\":0,\"status\":\"A\",\"created_at\":\"2025-09-04T05:56:42.000Z\",\"updated_at\":\"2025-09-04T05:56:42.000Z\"},{\"id\":38,\"code\":\"IN_PORT\",\"name\":\"in_port\",\"description\":null,\"isActive\":true,\"relatedValue\":null,\"sortOrder\":0,\"status\":\"A\",\"created_at\":\"2025-09-04T05:56:42.000Z\",\"updated_at\":\"2025-09-10T08:20:14.000Z\"},{\"id\":39,\"code\":\"MAINTENANCE\",\"name\":\"maintenance\",\"description\":null,\"isActive\":true,\"relatedValue\":null,\"sortOrder\":0,\"status\":\"A\",\"created_at\":\"2025-09-04T05:56:42.000Z\",\"updated_at\":\"2025-09-04T05:56:42.000Z\"},{\"id\":40,\"code\":\"OFFLINE\",\"name\":\"offline\",\"description\":null,\"isActive\":true,\"relatedValue\":null,\"sortOrder\":0,\"status\":\"A\",\"created_at\":\"2025-09-04T05:56:42.000Z\",\"updated_at\":\"2025-09-04T05:56:42.000Z\"}],\"description\":\"\",\"entity_id\":19}','2025-09-11 14:52:41','A','2025-09-11 09:22:41',1,1,'2025-09-11 09:22:41'),(230,'create','deck1',5,'{\"code\":\"DEC-05\",\"name\":\"Dec-Cam-05\",\"type\":\"Wireless Cam\",\"location\":\"Front of the door\",\"ip_address\":\"192.168.1.210 \",\"port\":\"Port-01\",\"stream_url\":\"rtsp://@192.168.1.210/media/video5\",\"entity_id\":15,\"description\":\"\"}','2025-09-11 17:31:22','A','2025-09-11 12:01:22',1,1,'2025-09-11 12:01:22'),(231,'create','deck2',11,'{\"code\":\"DEC-01\",\"name\":\"Dec-Cam-01\",\"type\":\"Wireless Cam\",\"location\":\"Back View \",\"ip_address\":\"192.168.1.210 \",\"port\":\"Port-01\",\"stream_url\":\"rtsp://@192.168.1.210/media/video5\",\"entity_id\":17,\"description\":\"\"}','2025-09-11 17:49:34','A','2025-09-11 12:19:34',1,1,'2025-09-11 12:19:34'),(232,'create','deck2',12,'{\"code\":\"DEC-02\",\"name\":\"Dec-Cam-02\",\"type\":\"Wireless Cam\",\"location\":\"Back View \",\"ip_address\":\"192.168.1.210 \",\"port\":\"Port-02\",\"stream_url\":\"rtsp://admin:12345scw@192.168.1.210/media/video2\",\"entity_id\":21,\"description\":\"\"}','2025-09-11 17:50:28','A','2025-09-11 12:20:28',1,1,'2025-09-11 12:20:28'),(233,'create','deck3',4,'{\"code\":\"DEC-01\",\"name\":\"Dec-Cam-01\",\"type\":\"Wireless Cam\",\"location\":\"Front of the door\",\"ip_address\":\"192.168.1.210 \",\"port\":\"95\",\"stream_url\":\"rtsp://admin:12345scw@192.168.1.210/media/video2\",\"entity\":{\"id\":19},\"description\":\"\"}','2025-09-11 17:52:20','A','2025-09-11 12:22:20',1,1,'2025-09-11 12:22:20'),(234,'update','deck2',11,'{\"code\":\"DEC-01\",\"name\":\"Dec-Cam-01\",\"type\":\"Wireless Cam\",\"location\":\"Back View \",\"ip_address\":\"192.168.1.210 \",\"port\":\"Port-01\",\"stream_url\":\"rtsp://@192.168.1.210/media/video5\",\"entity_id\":17,\"description\":\"\"}','2025-09-11 17:59:10','A','2025-09-11 12:29:10',1,1,'2025-09-11 12:29:10'),(235,'create','deck1',6,'{\"code\":\"DEC-09\",\"name\":\"Dec-Cam-01\",\"type\":\"Wireless Cam\",\"location\":\"\",\"ip_address\":\"192.168.1.210 \",\"port\":\"\",\"stream_url\":\"wrsvdgc bvbcvf\",\"entity_id\":15,\"description\":\"\"}','2025-09-12 16:28:23','A','2025-09-12 10:58:23',1,1,'2025-09-12 10:58:23'),(236,'create','deck1',7,'{\"code\":\"DEC-10\",\"name\":\"Dec-Cam-10\",\"type\":\"\",\"location\":\"\",\"ip_address\":\"689.689.689\",\"port\":\"\",\"stream_url\":\"http://192.120.09.68\",\"entity_id\":15,\"description\":\"\"}','2025-09-12 17:28:50','A','2025-09-12 11:58:50',1,1,'2025-09-12 11:58:50'),(237,'update','deck1',6,'{\"code\":\"DEC-09\",\"name\":\"Dec-Cam-01\",\"type\":\"\",\"location\":\"\",\"ip_address\":\"192.168.1.210 \",\"port\":\"\",\"stream_url\":\"wrsvdgc bvbcvf\",\"description\":\"\",\"entity_id\":15}','2025-09-12 17:29:09','A','2025-09-12 11:59:09',1,1,'2025-09-12 11:59:09'),(238,'update','deck1',1,'{\"code\":\"DEC-01\",\"name\":\"Cam-01\",\"type\":\"Wireless Cam\",\"location\":\"Back View \",\"ip_address\":\"399.399.399\",\"port\":\"Port-01\",\"stream_url\":\"wrsvdgc bvbcvf\",\"description\":\"\",\"entity_id\":21}','2025-09-12 18:04:55','A','2025-09-12 12:34:55',1,1,'2025-09-12 12:34:55'),(239,'create','deck4',1,'{\"code\":\"DEC-01\",\"name\":\"Dec-Cam-01\",\"type\":\"\",\"location\":\"\",\"ip_address\":\"678.678.678\",\"port\":\"\",\"stream_url\":\"rtsp://jdskhgrwkjg.com\",\"entity_id\":15,\"description\":\"\"}','2025-09-14 14:30:14','A','2025-09-14 09:00:14',1,1,'2025-09-14 09:00:14'),(240,'create','deck5',1,'{\"code\":\"DEC-01\",\"name\":\"Dec-Cam-01\",\"type\":\"Wireless Cam\",\"location\":\"Front of the door\",\"ip_address\":\"67.577.888\",\"port\":\"3767\",\"stream_url\":\"rtsp://@192.168.1.210/media/video57876\",\"entity_id\":15,\"description\":\"\"}','2025-09-14 14:31:17','A','2025-09-14 09:01:17',1,1,'2025-09-14 09:01:17'),(241,'create','deck6',1,'{\"code\":\"DEC-01\",\"name\":\"Dec-Cam-01\",\"type\":\"wireless\",\"location\":\"front view\",\"ip_address\":\"678.678.678\",\"port\":\"87\",\"stream_url\":\"rtsp://skgjie.com\",\"entity_id\":1,\"description\":\"\"}','2025-09-14 14:32:47','A','2025-09-14 09:02:47',1,1,'2025-09-14 09:02:47'),(242,'create','deck7',1,'{\"code\":\"CSM-01\",\"name\":\"cam-01\",\"type\":\"\",\"location\":\"\",\"ip_address\":\"89.89.89\",\"port\":\"\",\"stream_url\":\"rstp://kuhsibk.com\",\"entity_id\":21,\"description\":\"\"}','2025-09-14 14:50:18','A','2025-09-14 09:20:18',1,1,'2025-09-14 09:20:18'),(243,'create','deck7',2,'{\"code\":\"CAM-02\",\"name\":\"cam-02\",\"type\":\"\",\"location\":\"\",\"ip_address\":\"892748\",\"port\":\"\",\"stream_url\":\"jnhfukksbj\",\"entity_id\":17,\"description\":\"\"}','2025-09-14 14:50:42','A','2025-09-14 09:20:42',1,1,'2025-09-14 09:20:42'),(244,'inactivate','deck7',2,'{\"status\":\"D\"}','2025-09-14 14:50:47','A','2025-09-14 09:20:47',1,1,'2025-09-14 09:20:47'),(245,'create','deck8',1,'{\"code\":\"CAM-01\",\"name\":\"cam-01\",\"type\":\"\",\"location\":\"\",\"ip_address\":\"78.78.78\",\"port\":\"\",\"stream_url\":\"gst://sjirgis.com\",\"entity_id\":19,\"description\":\"\"}','2025-09-14 15:07:39','A','2025-09-14 09:37:39',1,1,'2025-09-14 09:37:39'),(246,'create','deck9',1,'{\"code\":\"CAM-01\",\"name\":\"cam-01\",\"type\":\"\",\"location\":\"\",\"ip_address\":\"78.78.78.78\",\"port\":\"\",\"stream_url\":\"rstp://bjegurh.com\",\"entity_id\":1,\"description\":\"\"}','2025-09-14 15:08:33','A','2025-09-14 09:38:33',1,1,'2025-09-14 09:38:33'),(247,'create','deck10',1,'{\"code\":\"CAM-01\",\"name\":\"cam-01\",\"type\":\"\",\"location\":\"\",\"ip_address\":\"67.76.76\",\"port\":\"\",\"stream_url\":\"rstp://bjegurh.com\",\"entity_id\":20,\"description\":\"\"}','2025-09-14 15:08:55','A','2025-09-14 09:38:55',1,1,'2025-09-14 09:38:55'),(248,'create','deck11',1,'{\"code\":\"CAM-01\",\"name\":\"cam-01\",\"type\":\"\",\"location\":\"\",\"ip_address\":\"78.78.78\",\"port\":\"\",\"stream_url\":\"rstp://bjegurh.com\",\"entity_id\":21,\"description\":\"\"}','2025-09-14 15:09:19','A','2025-09-14 09:39:19',1,1,'2025-09-14 09:39:19'),(249,'create','deck12',1,'{\"code\":\"CAM-01\",\"name\":\"cam-01\",\"type\":\"\",\"location\":\"\",\"ip_address\":\"65.65.65.65\",\"port\":\"\",\"stream_url\":\"rstp://bjegurh.com\",\"entity_id\":15,\"description\":\"\"}','2025-09-14 15:10:02','A','2025-09-14 09:40:02',1,1,'2025-09-14 09:40:02'),(250,'update','deck12',1,'{\"code\":\"CAM-01\",\"name\":\"cam-01\",\"type\":\"\",\"location\":\"\",\"ip_address\":\"65.65.65.65\",\"port\":\"\",\"stream_url\":\"rstp://bjegurh.com\",\"description\":\"\",\"entity_id\":15}','2025-09-14 15:12:27','A','2025-09-14 09:42:27',1,1,'2025-09-14 09:42:27'),(251,'update','deck11',1,'{\"code\":\"CAM-01\",\"name\":\"cam-01\",\"type\":\"\",\"location\":\"\",\"ip_address\":\"78.78.78\",\"port\":\"\",\"stream_url\":\"rstp://bjegurh.com\",\"description\":\"\",\"entity_id\":21}','2025-09-14 15:12:32','A','2025-09-14 09:42:32',1,1,'2025-09-14 09:42:32'),(252,'update','deck10',1,'{\"code\":\"CAM-01\",\"name\":\"cam-01\",\"type\":\"\",\"location\":\"\",\"ip_address\":\"67.76.76\",\"port\":\"\",\"stream_url\":\"rstp://bjegurh.com\",\"description\":\"\",\"entity_id\":20}','2025-09-14 15:12:40','A','2025-09-14 09:42:40',1,1,'2025-09-14 09:42:40'),(253,'update','deck9',1,'{\"code\":\"CAM-01\",\"name\":\"cam-01\",\"type\":\"\",\"location\":\"\",\"ip_address\":\"78.78.78.78\",\"port\":\"\",\"stream_url\":\"rstp://bjegurh.com\",\"description\":\"\",\"entity_id\":1}','2025-09-14 15:12:49','A','2025-09-14 09:42:49',1,1,'2025-09-14 09:42:49'),(254,'update','deck8',1,'{\"code\":\"CAM-01\",\"name\":\"cam-01\",\"type\":\"\",\"location\":\"\",\"ip_address\":\"78.78.78\",\"port\":\"\",\"stream_url\":\"gst://sjirgis.com\",\"description\":\"\",\"entity_id\":19}','2025-09-14 15:12:55','A','2025-09-14 09:42:55',1,1,'2025-09-14 09:42:55'),(255,'create','bridgeroom',1,'{\"code\":\"DC-01\",\"name\":\"cam-01\",\"type\":\"\",\"location\":\"\",\"ip_address\":\"98.89.89.89\",\"port\":\"\",\"stream_url\":\"rts://njkgoeti.com\",\"entity_id\":15,\"description\":\"\"}','2025-09-14 20:51:42','A','2025-09-14 15:21:42',1,1,'2025-09-14 15:21:42'),(256,'create','controlroom',1,'{\"code\":\"DEC-01\",\"name\":\"cam-01\",\"type\":\"\",\"location\":\"\",\"ip_address\":\"67.67.677.99\",\"port\":\"\",\"stream_url\":\"rts://njkgoeti.com\",\"entity_id\":17,\"description\":\"\"}','2025-09-14 20:52:04','A','2025-09-14 15:22:04',1,1,'2025-09-14 15:22:04'),(257,'create','machineryroom',1,'{\"code\":\"DEC-01\",\"name\":\"cam-01\",\"type\":\"\",\"location\":\"\",\"ip_address\":\"67.677.67\",\"port\":\"\",\"stream_url\":\"rts://njkgoeti.com\",\"entity_id\":20,\"description\":\"\"}','2025-09-14 20:52:31','A','2025-09-14 15:22:31',1,1,'2025-09-14 15:22:31'),(258,'create','outdoor',1,'{\"code\":\"DEC-01\",\"name\":\"cam-01\",\"type\":\"\",\"location\":\"\",\"ip_address\":\"56.56.56\",\"port\":\"\",\"stream_url\":\"rts://njkgoeti.com\",\"entity_id\":20,\"description\":\"\"}','2025-09-14 20:52:52','A','2025-09-14 15:22:52',1,1,'2025-09-14 15:22:52'),(259,'create','mooring',1,'{\"code\":\"DEC-01\",\"name\":\"Dec-01\",\"type\":\"\",\"location\":\"\",\"ip_address\":\"56.56.56\",\"port\":\"\",\"stream_url\":\"rts://njkgoeti.com\",\"entity_id\":19,\"description\":\"\"}','2025-09-14 20:53:26','A','2025-09-14 15:23:26',1,1,'2025-09-14 15:23:26'),(260,'update','mooring',1,'{\"code\":\"DEC-01\",\"name\":\"Dec-01\",\"type\":\"\",\"location\":\"\",\"ip_address\":\"56.56.56.65\",\"port\":\"\",\"stream_url\":\"rts://njkgoeti.com\",\"description\":\"\",\"entity_id\":19}','2025-09-14 20:53:33','A','2025-09-14 15:23:33',1,1,'2025-09-14 15:23:33'),(261,'update','entity',21,'{\"name\":\"MV Motor RORO\",\"comments\":\"\",\"imo_number\":\"mvroro\",\"flag\":\"London\",\"cameras_installed\":\"89\",\"category1_id\":5}','2025-09-15 20:18:46','A','2025-09-15 14:48:46',1,1,'2025-09-15 14:48:46'),(262,'create','camera',1,'{\"code\":\"CAM-01\",\"name\":\"cam-01\",\"feed_type\":\"RTSP\",\"camera_ip\":\"78.78.78\",\"usecase\":\"\",\"coordinates\":\"\",\"cameras_installed\":0,\"entity_id\":19,\"entitySection_id\":3}','2025-09-16 18:33:51','A','2025-09-16 13:03:51',1,1,'2025-09-16 13:03:51'),(263,'update','camera',1,'{\"code\":\"CAM-01\",\"name\":\"cam-01\",\"feed_type\":\"RTSP\",\"camera_ip\":\"78.78.78\",\"location\":\"Front of the engine\",\"usecase\":\"\",\"coordinates\":\"\",\"cameras_installed\":0,\"entity_id\":19,\"entitySection_id\":3}','2025-09-16 18:40:28','A','2025-09-16 13:10:28',1,1,'2025-09-16 13:10:28'),(264,'update','camera',1,'{\"code\":\"CAM-01\",\"name\":\"cam-01\",\"feed_type\":\"RTSP\",\"camera_ip\":\"78.78.78\",\"location\":\"Front of the engine\",\"usecase\":\"\",\"coordinates\":\"\",\"cameras_installed\":0,\"entity_id\":19,\"entitySection_id\":3}','2025-09-16 18:41:54','A','2025-09-16 13:11:54',1,1,'2025-09-16 13:11:54'),(265,'create','entity-section',4,'{\"code\":\"DC-3\",\"name\":\"Deck-03\",\"comments\":\"\",\"entity_id\":20,\"cameras_installed\":23}','2025-09-16 18:45:10','A','2025-09-16 13:15:10',1,1,'2025-09-16 13:15:10'),(266,'update','camera',1,'{\"code\":\"CAM-01\",\"name\":\"cam-01\",\"feed_type\":\"RTSP\",\"camera_ip\":\"78.78.78\",\"location\":\"Front of the engine\",\"usecase\":\"Fire Detection\",\"coordinates\":\"\",\"cameras_installed\":0,\"entity_id\":19,\"entitySection_id\":3}','2025-09-17 11:08:54','A','2025-09-17 05:38:54',1,1,'2025-09-17 05:38:54'),(267,'update','entity-section',4,'{\"name\":\"Deck-03\",\"comments\":\"\",\"cameras_installed\":23,\"entity_id\":19}','2025-09-17 11:45:49','A','2025-09-17 06:15:49',1,1,'2025-09-17 06:15:49'),(268,'update','camera',1,'{\"code\":\"CAM-01\",\"name\":\"cam-01\",\"feed_type\":\"RTSP\",\"camera_ip\":\"78.78.78\",\"location\":\"Front of the engine\",\"usecase\":\"Smoke_Detection\",\"coordinates\":\"\",\"cameras_installed\":0,\"entity_id\":19,\"entitySection_id\":3}','2025-09-17 12:34:56','A','2025-09-17 07:04:56',1,1,'2025-09-17 07:04:56');
/*!40000 ALTER TABLE `audit_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `camera_data`
--

DROP TABLE IF EXISTS `camera_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `camera_data` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ship_id` varchar(255) NOT NULL,
  `camera_id` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `use_case` varchar(255) NOT NULL,
  `timestamp` timestamp NULL DEFAULT NULL,
  `detection_type` varchar(255) NOT NULL,
  `confidence_score` float DEFAULT NULL,
  `alert_level` varchar(255) DEFAULT 'low',
  `image_url` varchar(255) DEFAULT NULL,
  `weather_conditions` varchar(255) DEFAULT NULL,
  `sea_state` varchar(255) DEFAULT NULL,
  `status` enum('A','D') NOT NULL DEFAULT 'A',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` int NOT NULL,
  `org_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_ORG` (`org_id`),
  KEY `IDX_STATUS` (`status`),
  KEY `IDX_SHIP_ID` (`ship_id`),
  KEY `IDX_CAMERA_ID` (`camera_id`),
  KEY `IDX_LOCATION` (`location`),
  KEY `IDX_DETECTION_TYPE` (`detection_type`),
  KEY `IDX_ALERT_LEVEL` (`alert_level`),
  KEY `IDX_TIMESTAMP` (`timestamp`),
  KEY `FK_d38f20f798d4a7985c6a5b4d04b` (`created_by`),
  CONSTRAINT `FK_d38f20f798d4a7985c6a5b4d04b` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  CONSTRAINT `FK_ef0d2642f83b08365b2c525803e` FOREIGN KEY (`org_id`) REFERENCES `organizations` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `camera_data`
--

LOCK TABLES `camera_data` WRITE;
/*!40000 ALTER TABLE `camera_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `camera_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cameras`
--

DROP TABLE IF EXISTS `cameras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cameras` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `status` enum('A','D') NOT NULL DEFAULT 'A',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int NOT NULL,
  `org_id` int NOT NULL,
  `code` varchar(255) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `camera_ip` varchar(255) DEFAULT NULL,
  `usecase` varchar(255) DEFAULT NULL,
  `coordinates` varchar(255) DEFAULT NULL,
  `cameras_installed` int DEFAULT '0',
  `feed_type` enum('RTSP','VIDEO') NOT NULL,
  `entity_id` int NOT NULL,
  `entitysection_id` int NOT NULL,
  `location` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_ORG` (`org_id`),
  KEY `IDX_STATUS` (`status`),
  KEY `IDX_NAME` (`name`),
  KEY `FK_9402616228015b1ad3beb14531a` (`created_by`),
  KEY `IDX_CODE` (`code`),
  KEY `IDX_ENTITY` (`entity_id`),
  KEY `IDX_ENTITYSECTION` (`entitysection_id`),
  CONSTRAINT `FK_444ce4d676b1efda6177d4ce40e` FOREIGN KEY (`org_id`) REFERENCES `organizations` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_6d84f5006d9d7976083ea522de6` FOREIGN KEY (`entity_id`) REFERENCES `entities` (`id`),
  CONSTRAINT `FK_9402616228015b1ad3beb14531a` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  CONSTRAINT `FK_99af5c02597b40819b3a26005c6` FOREIGN KEY (`entitysection_id`) REFERENCES `entity_sections` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cameras`
--

LOCK TABLES `cameras` WRITE;
/*!40000 ALTER TABLE `cameras` DISABLE KEYS */;
INSERT INTO `cameras` VALUES (1,'cam-01','A','2025-09-16 13:03:51',1,1,'CAM-01','2025-09-17 07:04:56','78.78.78','Smoke_Detection','',0,'RTSP',19,3,'Front of the engine');
/*!40000 ALTER TABLE `cameras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories_1`
--

DROP TABLE IF EXISTS `categories_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories_1` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `sortOrder` int NOT NULL,
  `status` enum('A','D') NOT NULL DEFAULT 'A',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int NOT NULL,
  `org_id` int NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `IDX_ORG` (`org_id`),
  KEY `IDX_STATUS` (`status`),
  KEY `IDX_CODE` (`code`),
  KEY `IDX_NAME` (`name`),
  KEY `IDX_SORT_ORDER` (`sortOrder`),
  KEY `FK_ca36eea9d54b94a7766e188056f` (`created_by`),
  CONSTRAINT `FK_ca36eea9d54b94a7766e188056f` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  CONSTRAINT `FK_f79561559b7548b03e1da44192e` FOREIGN KEY (`org_id`) REFERENCES `organizations` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories_1`
--

LOCK TABLES `categories_1` WRITE;
/*!40000 ALTER TABLE `categories_1` DISABLE KEYS */;
INSERT INTO `categories_1` VALUES (1,'SHIP1','ship01',99,'D','2025-08-06 11:29:00',2,1,'2025-08-28 05:11:31'),(2,'SHIP2','contanier',2,'A','2025-08-07 10:21:08',1,1,'2025-08-28 05:11:31'),(3,'MV-1','Container Ship',0,'A','2025-08-19 05:16:25',1,1,'2025-08-28 05:11:31'),(4,'BC-1','Bulk Container',0,'A','2025-08-20 05:16:03',1,1,'2025-08-28 05:11:31'),(5,'BC','BULK CARRER',99,'A','2025-08-22 09:36:08',1,1,'2025-08-28 05:11:31');
/*!40000 ALTER TABLE `categories_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories_2`
--

DROP TABLE IF EXISTS `categories_2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories_2` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `sortOrder` int NOT NULL,
  `status` enum('A','D') NOT NULL DEFAULT 'A',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int NOT NULL,
  `org_id` int NOT NULL,
  `category1_id` int DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `IDX_ORG` (`org_id`),
  KEY `IDX_STATUS` (`status`),
  KEY `IDX_CODE` (`code`),
  KEY `IDX_NAME` (`name`),
  KEY `IDX_CATE1` (`category1_id`),
  KEY `IDX_SORT_ORDER` (`sortOrder`),
  KEY `FK_495eca46238561f7173239e9330` (`created_by`),
  CONSTRAINT `FK_495eca46238561f7173239e9330` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  CONSTRAINT `FK_650c9b46087a7323599af7a042b` FOREIGN KEY (`org_id`) REFERENCES `organizations` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_8167b497005ed1d54359e53cc95` FOREIGN KEY (`category1_id`) REFERENCES `categories_1` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories_2`
--

LOCK TABLES `categories_2` WRITE;
/*!40000 ALTER TABLE `categories_2` DISABLE KEYS */;
INSERT INTO `categories_2` VALUES (1,'SHIP1','ship001',99,'A','2025-08-06 11:29:37',2,1,1,'2025-08-28 05:11:31'),(2,'RE4','rever',99,'A','2025-08-11 06:06:05',1,1,2,'2025-08-28 05:11:31'),(3,'MV-1','Tokyo',99,'A','2025-08-19 05:18:51',1,1,3,'2025-08-28 05:11:31'),(4,'DXB','dubai',99,'A','2025-08-22 09:45:36',1,1,5,'2025-08-28 05:11:31');
/*!40000 ALTER TABLE `categories_2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories_3`
--

DROP TABLE IF EXISTS `categories_3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories_3` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `sortOrder` int NOT NULL,
  `status` enum('A','D') NOT NULL DEFAULT 'A',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int NOT NULL,
  `org_id` int NOT NULL,
  `category1_id` int DEFAULT NULL,
  `category2_id` int DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `IDX_ORG` (`org_id`),
  KEY `IDX_STATUS` (`status`),
  KEY `IDX_CODE` (`code`),
  KEY `IDX_NAME` (`name`),
  KEY `IDX_CATE1` (`category1_id`),
  KEY `IDX_CATE2` (`category2_id`),
  KEY `IDX_SORT_ORDER` (`sortOrder`),
  KEY `FK_67367100124ca02b984a2f7025d` (`created_by`),
  CONSTRAINT `FK_2a1dda1bbbd42dc900f1ba7a52d` FOREIGN KEY (`org_id`) REFERENCES `organizations` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_67367100124ca02b984a2f7025d` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  CONSTRAINT `FK_9bf53f2212ee6f1542e3b61ce68` FOREIGN KEY (`category2_id`) REFERENCES `categories_2` (`id`),
  CONSTRAINT `FK_c921a8f5a93f92889896bdc1635` FOREIGN KEY (`category1_id`) REFERENCES `categories_1` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories_3`
--

LOCK TABLES `categories_3` WRITE;
/*!40000 ALTER TABLE `categories_3` DISABLE KEYS */;
INSERT INTO `categories_3` VALUES (1,'002','SouthAfrica',2,'A','2025-08-06 11:31:13',2,1,1,1,'2025-08-28 05:11:31'),(2,'432','dt',99,'D','2025-08-12 10:11:52',1,1,NULL,NULL,'2025-08-28 05:11:31'),(3,'ASDF','werf',99,'D','2025-08-18 06:56:07',1,1,NULL,NULL,'2025-08-28 05:11:31'),(4,'3ERE','wef',99,'D','2025-08-18 07:29:02',1,1,NULL,NULL,'2025-08-28 05:11:31'),(5,'MV-1','Port of Tokyo',99,'A','2025-08-19 05:21:37',1,1,3,3,'2025-08-28 05:11:31'),(6,'AEJEA','dubai',99,'A','2025-08-22 09:46:28',1,1,5,4,'2025-08-28 05:11:31');
/*!40000 ALTER TABLE `categories_3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entities`
--

DROP TABLE IF EXISTS `entities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `entities` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `comments` varchar(255) NOT NULL,
  `ref_number` varchar(255) DEFAULT NULL,
  `category4` varchar(255) DEFAULT NULL,
  `category5` varchar(255) DEFAULT NULL,
  `status` enum('A','D') NOT NULL DEFAULT 'A',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int NOT NULL,
  `org_id` int NOT NULL,
  `category1_id` int DEFAULT NULL,
  `category2_id` int DEFAULT NULL,
  `category3_id` int DEFAULT NULL,
  `imo_number` varchar(255) NOT NULL,
  `flag` varchar(255) NOT NULL,
  `cameras_installed` varchar(255) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `IDX_ORG` (`org_id`),
  KEY `IDX_STATUS` (`status`),
  KEY `IDX_CODE` (`code`),
  KEY `IDX_NAME` (`name`),
  KEY `IDX_RNO` (`ref_number`),
  KEY `IDX_CATE1` (`category1_id`),
  KEY `IDX_CATE2` (`category2_id`),
  KEY `IDX_CATE3` (`category3_id`),
  KEY `FK_5f19e0a2ab7ec5611e7b6815749` (`created_by`),
  KEY `IDX_IMO` (`imo_number`),
  KEY `IDX_FLAG` (`flag`),
  KEY `IDX_CAMERAS` (`cameras_installed`),
  CONSTRAINT `FK_5f19e0a2ab7ec5611e7b6815749` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  CONSTRAINT `FK_638b4dba2155081d0c6ef32096d` FOREIGN KEY (`category1_id`) REFERENCES `categories_1` (`id`),
  CONSTRAINT `FK_a46befb72a53a5c1b71ab9d6b22` FOREIGN KEY (`category2_id`) REFERENCES `categories_2` (`id`),
  CONSTRAINT `FK_d2d9c5d6f1e7e6d471597c8b20d` FOREIGN KEY (`org_id`) REFERENCES `organizations` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_e7dad4ed2840992c30fb3cc2874` FOREIGN KEY (`category3_id`) REFERENCES `categories_3` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entities`
--

LOCK TABLES `entities` WRITE;
/*!40000 ALTER TABLE `entities` DISABLE KEYS */;
INSERT INTO `entities` VALUES (1,'DEFAULT_ENTITY','Default Entity','',NULL,NULL,NULL,'A','2025-08-06 11:14:43',1,1,1,1,1,'m1','jaban','10','2025-08-28 05:11:31'),(2,'001','ship(001)','',NULL,NULL,NULL,'D','2025-08-06 11:32:23',2,1,1,1,1,'765rt','tokyo','20','2025-08-29 11:05:09'),(3,'F1111111','ffffffffff','',NULL,NULL,NULL,'D','2025-08-07 07:49:30',1,1,1,1,1,'','','','2025-08-28 05:11:31'),(4,'WERTYU','ewregtrh','',NULL,NULL,NULL,'D','2025-08-18 07:16:06',1,1,1,1,3,'','','','2025-08-28 05:11:31'),(5,'WE','43s','',NULL,NULL,NULL,'D','2025-08-18 07:17:01',1,1,1,1,1,'','','','2025-08-28 05:11:31'),(6,'45REW','erttre','',NULL,NULL,NULL,'D','2025-08-18 07:41:28',1,1,1,1,1,'','','','2025-08-28 05:11:31'),(7,'WERTRE','ewr3423','',NULL,NULL,NULL,'D','2025-08-18 07:42:36',1,1,1,1,1,'','','','2025-08-28 05:11:31'),(8,'WERTRHYTU','rwgetbf','',NULL,NULL,NULL,'D','2025-08-18 07:45:17',1,1,1,1,1,'','','','2025-08-28 05:11:31'),(9,'23432','2343refs','',NULL,NULL,NULL,'D','2025-08-18 07:55:58',1,1,1,1,1,'','','','2025-08-28 05:11:31'),(10,'WER','ewref','',NULL,NULL,NULL,'D','2025-08-18 07:57:13',1,1,1,1,1,'','','','2025-08-28 05:11:31'),(11,'5432','vfr3e2','',NULL,NULL,NULL,'D','2025-08-18 08:09:32',1,1,1,1,1,'','','','2025-08-28 05:11:31'),(12,'EFWRGET4','erty','',NULL,NULL,NULL,'D','2025-08-18 08:35:26',1,1,1,1,1,'','','','2025-08-28 05:11:31'),(13,'QDFE22','1232ew','',NULL,NULL,NULL,'D','2025-08-18 11:13:07',1,1,1,1,1,'','','','2025-08-28 05:11:31'),(14,'5423REWF','2rrfwfvd','',NULL,NULL,NULL,'D','2025-08-18 11:40:22',1,1,1,1,1,'','','','2025-08-28 05:11:31'),(15,'MV-1','MV Venus Leader','',NULL,NULL,NULL,'A','2025-08-19 05:28:33',1,1,3,3,5,'MV-123','Jaban','15','2025-08-28 05:11:31'),(16,'S1','se','',NULL,NULL,NULL,'D','2025-08-20 07:21:47',1,1,3,3,5,'w34','2ed2','12','2025-08-28 05:11:31'),(17,'65465ER','mv ship','',NULL,NULL,NULL,'A','2025-08-21 11:45:27',1,1,1,NULL,NULL,'5r6','jaban','12','2025-08-28 05:11:31'),(18,'RTRT','rtrt','',NULL,NULL,NULL,'D','2025-08-21 11:49:49',1,1,NULL,NULL,NULL,'r56t','jaban','78','2025-08-28 05:11:31'),(19,'SW008','MV Sewel','',NULL,NULL,NULL,'A','2025-08-22 09:51:35',1,1,5,4,6,'78765','south korea','10','2025-08-28 05:11:31'),(20,'MV NORWAY','MV NOR','',NULL,NULL,NULL,'A','2025-08-28 13:26:13',1,1,1,1,1,'MV 765','London','28','2025-09-08 05:34:18'),(21,'MV-R','MV Motor RORO','',NULL,NULL,NULL,'A','2025-09-01 09:30:18',1,1,5,NULL,NULL,'mvroro','London','89','2025-09-08 05:33:58');
/*!40000 ALTER TABLE `entities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entity_sections`
--

DROP TABLE IF EXISTS `entity_sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `entity_sections` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `comments` varchar(255) NOT NULL,
  `status` enum('A','D') NOT NULL DEFAULT 'A',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int NOT NULL,
  `org_id` int NOT NULL,
  `entity_id` int NOT NULL,
  `cameras_installed` int DEFAULT '0',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `IDX_ORG` (`org_id`),
  KEY `IDX_STATUS` (`status`),
  KEY `IDX_CODE` (`code`),
  KEY `IDX_NAME` (`name`),
  KEY `IDX_ENTITY` (`entity_id`),
  KEY `FK_9a02cce418a6d337cc23300402b` (`created_by`),
  CONSTRAINT `FK_4273a177a383375312fc978182a` FOREIGN KEY (`org_id`) REFERENCES `organizations` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_5959601197edc1c019a5aec89aa` FOREIGN KEY (`entity_id`) REFERENCES `entities` (`id`),
  CONSTRAINT `FK_9a02cce418a6d337cc23300402b` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entity_sections`
--

LOCK TABLES `entity_sections` WRITE;
/*!40000 ALTER TABLE `entity_sections` DISABLE KEYS */;
INSERT INTO `entity_sections` VALUES (1,'001','deck-1','','A','2025-08-06 11:33:25',2,1,15,5,'2025-08-28 05:11:31'),(2,'DC-2','deck-2','','A','2025-08-20 07:17:41',1,1,15,10,'2025-08-28 05:11:31'),(3,'7Y8','6t6t','','A','2025-08-22 09:53:40',1,1,19,9,'2025-08-28 05:11:31'),(4,'DC-3','Deck-03','','A','2025-09-16 13:15:10',1,1,19,23,'2025-09-17 06:15:48');
/*!40000 ALTER TABLE `entity_sections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locations`
--

DROP TABLE IF EXISTS `locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `locations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `port` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `status` enum('A','D') NOT NULL DEFAULT 'A',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int NOT NULL,
  `org_id` int NOT NULL,
  `entity_id` int NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `FK_190a7ee60db34ef946627cbbe9f` (`created_by`),
  KEY `FK_674420bda64055b8520843dffac` (`org_id`),
  KEY `FK_f8fc6b8d96458dc030a2728ffb0` (`entity_id`),
  CONSTRAINT `FK_190a7ee60db34ef946627cbbe9f` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  CONSTRAINT `FK_674420bda64055b8520843dffac` FOREIGN KEY (`org_id`) REFERENCES `organizations` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_f8fc6b8d96458dc030a2728ffb0` FOREIGN KEY (`entity_id`) REFERENCES `entities` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locations`
--

LOCK TABLES `locations` WRITE;
/*!40000 ALTER TABLE `locations` DISABLE KEYS */;
/*!40000 ALTER TABLE `locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notifications` (
  `id` int NOT NULL AUTO_INCREMENT,
  `message` text,
  `isRead` tinyint NOT NULL DEFAULT '0',
  `readAt` datetime DEFAULT NULL,
  `actionUrl` varchar(255) DEFAULT NULL,
  `status` enum('A','D') NOT NULL DEFAULT 'A',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int NOT NULL,
  `org_id` int NOT NULL,
  `to_user_id` int NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `IDX_ORG` (`org_id`),
  KEY `IDX_STATUS` (`status`),
  KEY `IDX_READ` (`isRead`),
  KEY `IDX_TOUSER` (`to_user_id`),
  KEY `FK_19629e8eb1e6023c4c73e661c82` (`created_by`),
  CONSTRAINT `FK_19629e8eb1e6023c4c73e661c82` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  CONSTRAINT `FK_324de082662023de80fdf068978` FOREIGN KEY (`org_id`) REFERENCES `organizations` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_a28a6b5c3c0f3cedfef35d6d6bf` FOREIGN KEY (`to_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `organizations`
--

DROP TABLE IF EXISTS `organizations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `organizations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `category1` varchar(255) DEFAULT NULL,
  `category2` varchar(255) DEFAULT NULL,
  `category3` varchar(255) DEFAULT NULL,
  `category4` varchar(255) DEFAULT NULL,
  `category5` varchar(255) DEFAULT NULL,
  `entity` varchar(255) DEFAULT NULL,
  `entity_section` varchar(255) DEFAULT NULL,
  `type` enum('GOLD JEWELLERY','SHIPPING') NOT NULL,
  `status` enum('A','D') NOT NULL DEFAULT 'A',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organizations`
--

LOCK TABLES `organizations` WRITE;
/*!40000 ALTER TABLE `organizations` DISABLE KEYS */;
INSERT INTO `organizations` VALUES (1,'DEFAULT_ORG','Default Organization','Ship Type','City','Area',NULL,NULL,'Ship','Ship Sections','SHIPPING','A','2025-08-06 11:14:42','2025-08-28 05:11:30');
/*!40000 ALTER TABLE `organizations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `page` varchar(255) NOT NULL,
  `status` enum('A','D') NOT NULL DEFAULT 'A',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int NOT NULL,
  `org_id` int NOT NULL,
  `role_id` int DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `IDX_ORG` (`org_id`),
  KEY `IDX_STATUS` (`status`),
  KEY `IDX_ROLE` (`role_id`),
  KEY `FK_c398f7100db3e0d9b6a6cd6beaf` (`created_by`),
  CONSTRAINT `FK_c398f7100db3e0d9b6a6cd6beaf` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  CONSTRAINT `FK_e5f70db0a07f0c74a12b3fef8bf` FOREIGN KEY (`org_id`) REFERENCES `organizations` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_f10931e7bb05a3b434642ed2797` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,'management-dashboard','A','2025-08-06 11:14:43',1,1,1,'2025-08-28 05:11:30'),(2,'entity-manager-dashboard','A','2025-08-06 11:14:43',1,1,1,'2025-08-28 05:11:30'),(3,'statistics','A','2025-08-06 11:14:43',1,1,1,'2025-08-28 05:11:30'),(4,'reports','A','2025-08-06 11:14:43',1,1,1,'2025-08-28 05:11:30'),(5,'locations','A','2025-08-06 11:14:43',1,1,1,'2025-08-28 05:11:30'),(6,'alerts','A','2025-08-06 11:14:43',1,1,1,'2025-08-28 05:11:30'),(7,'user','A','2025-08-06 11:14:43',1,1,1,'2025-08-28 05:11:30'),(8,'role','A','2025-08-06 11:14:43',1,1,1,'2025-08-28 05:11:30'),(9,'entity','A','2025-08-06 11:14:43',1,1,1,'2025-08-28 05:11:30'),(10,'category1','A','2025-08-06 11:14:43',1,1,1,'2025-08-28 05:11:30'),(11,'category2','A','2025-08-06 11:14:43',1,1,1,'2025-08-28 05:11:30'),(12,'category3','A','2025-08-06 11:14:43',1,1,1,'2025-08-28 05:11:30'),(13,'entity-section','A','2025-08-06 11:14:43',1,1,1,'2025-08-28 05:11:30'),(14,'reference-master','A','2025-08-06 11:14:43',1,1,1,'2025-08-28 05:11:30'),(15,'management-dashboard','A','2025-08-06 11:22:36',1,1,2,'2025-08-28 05:11:30'),(16,'entity-manager-dashboard','A','2025-08-06 11:22:36',1,1,2,'2025-08-28 05:11:30'),(17,'statistics','A','2025-08-06 11:22:36',1,1,2,'2025-08-28 05:11:30'),(18,'reports','A','2025-08-06 11:22:36',1,1,2,'2025-08-28 05:11:30'),(19,'locations','A','2025-08-06 11:22:36',1,1,2,'2025-08-28 05:11:30'),(20,'alerts','A','2025-08-06 11:22:36',1,1,2,'2025-08-28 05:11:30'),(21,'user','A','2025-08-06 11:22:36',1,1,2,'2025-08-28 05:11:30'),(22,'role','A','2025-08-06 11:22:36',1,1,2,'2025-08-28 05:11:30'),(23,'entity','A','2025-08-06 11:22:36',1,1,2,'2025-08-28 05:11:30'),(24,'reference-master','A','2025-08-06 11:22:36',1,1,2,'2025-08-28 05:11:30'),(25,'entity-section','A','2025-08-06 11:22:36',1,1,2,'2025-08-28 05:11:30'),(26,'category3','A','2025-08-06 11:22:36',1,1,2,'2025-08-28 05:11:30'),(27,'category2','A','2025-08-06 11:22:36',1,1,2,'2025-08-28 05:11:30'),(28,'category1','A','2025-08-06 11:22:36',1,1,2,'2025-08-28 05:11:30'),(29,'management-dashboard','A','2025-08-07 10:10:11',1,1,3,'2025-08-28 05:11:30'),(30,'entity-manager-dashboard','A','2025-08-07 10:10:11',1,1,3,'2025-08-28 05:11:30'),(31,'statistics','A','2025-08-07 10:10:11',1,1,3,'2025-08-28 05:11:30'),(32,'reports','A','2025-08-07 10:10:11',1,1,3,'2025-08-28 05:11:30'),(33,'locations','A','2025-08-07 10:10:11',1,1,3,'2025-08-28 05:11:30'),(34,'alerts','A','2025-08-07 10:10:11',1,1,3,'2025-08-28 05:11:30'),(35,'user','A','2025-08-07 10:13:53',1,1,3,'2025-08-28 05:11:30'),(36,'alerts','A','2025-08-11 06:32:36',2,1,4,'2025-08-28 05:11:30'),(37,'locations','A','2025-08-11 06:32:36',2,1,4,'2025-08-28 05:11:30'),(38,'user','A','2025-08-11 06:32:36',2,1,4,'2025-08-28 05:11:30'),(39,'role','D','2025-08-11 06:32:36',2,1,4,'2025-08-28 05:11:30'),(40,'entity-manager-dashboard','D','2025-08-11 06:32:36',2,1,4,'2025-08-28 05:11:30'),(41,'management-dashboard','A','2025-08-11 07:41:27',1,1,4,'2025-08-28 05:11:30'),(42,'statistics','A','2025-08-20 05:35:54',1,1,5,'2025-08-28 05:11:30'),(43,'reports','A','2025-08-20 05:35:54',1,1,5,'2025-08-28 05:11:30'),(44,'locations','A','2025-08-20 05:35:54',1,1,5,'2025-08-28 05:11:30'),(45,'alerts','A','2025-08-20 05:35:54',1,1,5,'2025-08-28 05:11:30'),(46,'user','A','2025-08-20 05:35:54',1,1,5,'2025-08-28 05:11:30'),(47,'management-dashboard','A','2025-08-20 05:35:54',1,1,5,'2025-08-28 05:11:30'),(48,'entity','A','2025-08-20 05:51:57',1,1,5,'2025-08-28 05:11:30'),(49,'category1','A','2025-08-20 05:51:57',1,1,5,'2025-08-28 05:11:30'),(50,'category2','A','2025-08-20 05:51:57',1,1,5,'2025-08-28 05:11:30'),(51,'category3','A','2025-08-20 05:51:57',1,1,5,'2025-08-28 05:11:30'),(52,'entity-section','A','2025-08-20 05:51:57',1,1,5,'2025-08-28 05:11:30'),(53,'camera','A','2025-08-22 08:14:40',1,1,1,'2025-08-28 05:11:30'),(54,'management-dashboard','A','2025-08-26 10:02:33',1,1,6,'2025-08-28 05:11:30'),(55,'statistics','A','2025-08-26 10:02:33',1,1,6,'2025-08-28 05:11:30'),(56,'reports','A','2025-08-26 10:02:33',1,1,6,'2025-08-28 05:11:30'),(57,'locations','A','2025-08-26 10:02:33',1,1,6,'2025-08-28 05:11:30'),(58,'alerts','A','2025-08-26 10:02:33',1,1,6,'2025-08-28 05:11:30'),(59,'user','A','2025-08-26 10:02:33',1,1,6,'2025-08-28 05:11:30'),(60,'role','A','2025-08-26 10:02:33',1,1,6,'2025-08-28 05:11:30'),(61,'entity','A','2025-08-26 10:02:33',1,1,6,'2025-08-28 05:11:30'),(62,'category1','A','2025-08-26 10:02:33',1,1,6,'2025-08-28 05:11:30'),(63,'category2','A','2025-08-26 10:02:33',1,1,6,'2025-08-28 05:11:30'),(64,'category3','A','2025-08-26 10:02:33',1,1,6,'2025-08-28 05:11:30'),(65,'entity-section','A','2025-08-26 10:02:33',1,1,6,'2025-08-28 05:11:30'),(66,'reference-master','A','2025-08-26 10:02:33',1,1,6,'2025-08-28 05:11:30'),(67,'camera','A','2025-08-26 10:02:33',1,1,6,'2025-08-28 05:11:30'),(68,'deck1','A','2025-09-08 05:14:49',1,1,1,'2025-09-08 05:14:49'),(69,'deck2','A','2025-09-08 05:14:49',1,1,1,'2025-09-08 05:14:49'),(70,'deck3','A','2025-09-08 05:14:49',1,1,1,'2025-09-08 05:14:49'),(71,'ship-manager-dashboard','A','2025-09-10 09:02:31',1,1,1,'2025-09-10 09:02:31'),(72,'livefeeds','A','2025-09-10 09:02:46',1,1,1,'2025-09-10 09:02:46'),(73,'deck4','A','2025-09-12 06:21:04',1,1,1,'2025-09-12 06:21:04'),(74,'deck5','A','2025-09-12 06:21:04',1,1,1,'2025-09-12 06:21:04'),(75,'deck6','A','2025-09-12 06:21:04',1,1,1,'2025-09-12 06:21:04'),(76,'deck7','A','2025-09-12 06:21:04',1,1,1,'2025-09-12 06:21:04'),(77,'deck8','A','2025-09-12 06:21:04',1,1,1,'2025-09-12 06:21:04'),(78,'deck9','A','2025-09-12 06:21:04',1,1,1,'2025-09-12 06:21:04'),(79,'deck10','A','2025-09-12 06:21:04',1,1,1,'2025-09-12 06:21:04'),(80,'deck11','A','2025-09-12 06:21:04',1,1,1,'2025-09-12 06:21:04'),(81,'deck12','A','2025-09-12 06:21:04',1,1,1,'2025-09-12 06:21:04'),(82,'bridgeroom','A','2025-09-14 15:05:29',1,1,1,'2025-09-14 15:05:29'),(83,'controlroom','A','2025-09-14 15:05:29',1,1,1,'2025-09-14 15:05:29'),(84,'machineryroom','A','2025-09-14 15:05:29',1,1,1,'2025-09-14 15:05:29'),(85,'outdoor','A','2025-09-14 15:05:29',1,1,1,'2025-09-14 15:05:29'),(86,'mooring','A','2025-09-14 15:05:29',1,1,1,'2025-09-14 15:05:29');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reference_masters`
--

DROP TABLE IF EXISTS `reference_masters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reference_masters` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `status` enum('A','D') NOT NULL DEFAULT 'A',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int NOT NULL,
  `org_id` int NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `entity_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_ORG` (`org_id`),
  KEY `IDX_STATUS` (`status`),
  KEY `IDX_CODE` (`code`),
  KEY `IDX_NAME` (`name`),
  KEY `FK_1c65169f017ae7e06574313aed2` (`created_by`),
  KEY `FK_cf16e12175d07476bdcc8832607` (`entity_id`),
  CONSTRAINT `FK_1c65169f017ae7e06574313aed2` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  CONSTRAINT `FK_5b71c335fd65bd50feb7bc291b4` FOREIGN KEY (`org_id`) REFERENCES `organizations` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_cf16e12175d07476bdcc8832607` FOREIGN KEY (`entity_id`) REFERENCES `entities` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reference_masters`
--

LOCK TABLES `reference_masters` WRITE;
/*!40000 ALTER TABLE `reference_masters` DISABLE KEYS */;
INSERT INTO `reference_masters` VALUES (1,'REF1','re1','','D','2025-08-07 10:59:58',1,1,'2025-08-28 05:11:30',NULL),(2,'HTEGRW','3getrh','','D','2025-08-20 10:05:35',1,1,'2025-08-28 05:11:30',NULL),(3,'5T46YRGT','r','','D','2025-08-21 05:00:23',1,1,'2025-08-28 05:11:30',NULL),(4,'WDEWFVE','31efrwv','','D','2025-08-21 06:12:58',1,1,'2025-08-28 05:11:30',NULL),(5,'3E24DW','2edwc','','D','2025-08-21 06:41:23',1,1,'2025-08-28 05:11:30',NULL),(6,'ECSFV XED','wcsf vx','','D','2025-08-21 06:42:23',1,1,'2025-08-28 05:11:30',NULL),(7,'3EREFVDF','erfevd','','D','2025-08-21 06:50:38',1,1,'2025-08-28 05:11:30',NULL),(8,'EWRFD','ewrfdvc','','D','2025-08-21 06:53:13',1,1,'2025-08-28 05:11:30',NULL),(9,'EWRFEDV','ewrfdvc','','D','2025-08-21 06:55:57',1,1,'2025-08-28 05:11:30',NULL),(10,'23EWEFD2','3edw','','D','2025-08-21 06:59:54',1,1,'2025-08-28 05:11:30',NULL),(11,'EWREFD','32ewrfdv','','D','2025-08-21 07:00:13',1,1,'2025-08-28 05:11:30',NULL),(12,'DCSX','wdsc x','','D','2025-08-21 07:02:58',1,1,'2025-08-28 05:11:30',NULL),(13,'EQDWCSX','ewdcs x','','D','2025-08-21 07:03:23',1,1,'2025-08-28 05:11:30',NULL),(14,'EREFVVF','refvd','','D','2025-08-21 07:03:35',1,1,'2025-08-28 05:11:30',NULL),(15,'RTG','erfdv','','D','2025-08-21 07:08:35',1,1,'2025-08-28 05:11:30',NULL),(16,'3EWRFEVD','fwevd','','D','2025-08-21 07:10:11',1,1,'2025-08-28 05:11:30',NULL),(17,'ERFG4','r3fegtycghvb','','D','2025-08-21 07:10:25',1,1,'2025-08-28 05:11:30',NULL),(18,'REFVDV','rfevd','','D','2025-08-21 07:10:40',1,1,'2025-08-28 05:11:30',NULL),(19,'EQWS','ewfs','','D','2025-08-21 07:14:37',1,1,'2025-08-28 05:11:30',NULL),(20,'24REF','3r2wef','','D','2025-08-21 07:17:34',1,1,'2025-08-28 05:11:30',NULL),(21,'3WETD','4etrdfg','','D','2025-08-21 07:28:41',1,1,'2025-08-28 05:11:30',NULL),(22,'34ERFF','fr3ef','','D','2025-08-21 07:30:40',1,1,'2025-08-28 05:11:30',NULL),(23,'43REF','2fewfs','','D','2025-08-21 07:33:57',1,1,'2025-08-28 05:11:30',NULL),(24,'RETT3R','3rvefd','','D','2025-08-21 07:34:48',1,1,'2025-08-28 05:11:30',NULL),(25,'654','35teg','','D','2025-08-21 08:36:23',1,1,'2025-08-28 05:11:30',NULL),(26,'6TUYGJ','MV-4 ship','','A','2025-08-21 08:51:15',1,1,'2025-09-03 06:48:42',15),(27,'4RFF','MV 1 ship','','A','2025-08-21 09:02:15',1,1,'2025-09-04 05:57:04',19),(28,'54R','MV 3 ship','','A','2025-08-26 09:39:45',1,1,'2025-09-03 06:52:00',1),(29,'EVWD','MV 2 ship','','A','2025-08-28 06:15:59',1,1,'2025-09-04 05:57:18',17),(30,'MV-1','MV SHIP','','A','2025-09-01 06:40:07',1,1,'2025-09-03 07:55:08',21),(31,'45','2ewsf','','D','2025-09-02 07:16:55',1,1,'2025-09-02 10:45:14',NULL),(32,'EDFS','ewdfs','','D','2025-09-02 07:17:37',1,1,'2025-09-02 10:45:17',NULL),(33,'HTEGRW','admin','','D','2025-09-02 11:23:02',1,1,'2025-09-02 11:25:34',21),(34,'JKUHIGY','admin','','D','2025-09-02 11:23:11',1,1,'2025-09-02 11:25:30',21),(35,'JKUHIGYIURHFSCBJHUKWR','admin','','D','2025-09-02 11:24:10',1,1,'2025-09-02 11:25:26',21);
/*!40000 ALTER TABLE `reference_masters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reference_values`
--

DROP TABLE IF EXISTS `reference_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reference_values` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `isActive` tinyint NOT NULL DEFAULT '1',
  `relatedValue` varchar(255) DEFAULT NULL,
  `sortOrder` int DEFAULT NULL,
  `status` enum('A','D') NOT NULL DEFAULT 'A',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int NOT NULL,
  `org_id` int NOT NULL,
  `reference_master_id` int NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `IDX_ORG` (`org_id`),
  KEY `IDX_STATUS` (`status`),
  KEY `IDX_CODE` (`code`),
  KEY `IDX_NAME` (`name`),
  KEY `IDX_ACTIVE` (`isActive`),
  KEY `IDX_SORT_ORDER` (`sortOrder`),
  KEY `IDX_REF_MASTER` (`reference_master_id`),
  KEY `FK_3ed403c1d4847529877c4a9adf9` (`created_by`),
  CONSTRAINT `FK_3ed403c1d4847529877c4a9adf9` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  CONSTRAINT `FK_5010e5fe3524773cb40da833341` FOREIGN KEY (`org_id`) REFERENCES `organizations` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_b6df61c77f09dd63fddd8a79d3c` FOREIGN KEY (`reference_master_id`) REFERENCES `reference_masters` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reference_values`
--

LOCK TABLES `reference_values` WRITE;
/*!40000 ALTER TABLE `reference_values` DISABLE KEYS */;
INSERT INTO `reference_values` VALUES (1,'REF1','ref','',0,'',99,'A','2025-08-07 10:59:58',1,1,1,'2025-08-28 05:11:30'),(2,'WERGTHJGMNBV','f vbfbgfb vvv','fvdv bvbbfrefv',1,'',99,'A','2025-08-20 10:05:35',1,1,2,'2025-08-28 05:11:30'),(3,'3ERE3','3erefr','',0,'',99,'A','2025-08-21 05:00:23',1,1,3,'2025-08-28 05:11:30'),(4,'312ERFWE','312efwv','',1,'',99,'A','2025-08-21 06:12:58',1,1,4,'2025-08-28 05:11:30'),(5,'WDCF2E','fwcdfs','',1,'',99,'A','2025-08-21 06:41:23',1,1,5,'2025-08-28 05:11:30'),(6,'CWSF VW','dcs x','',1,'',99,'A','2025-08-21 06:42:23',1,1,6,'2025-08-28 05:11:30'),(7,'REVDVE','fwfdv','',1,'',99,'A','2025-08-21 06:50:39',1,1,7,'2025-08-28 05:11:30'),(8,'E2WFD','ewdcfsd','',1,'',99,'A','2025-08-21 06:53:13',1,1,8,'2025-08-28 05:11:30'),(9,'2EWDFD','ewfsdv','',1,'',99,'A','2025-08-21 06:55:57',1,1,9,'2025-08-28 05:11:30'),(10,'DEWCSE','dcsx','',1,'',99,'A','2025-08-21 06:59:54',1,1,10,'2025-08-28 05:11:30'),(11,'E2DWCFSVX','ewdcfcsx','',1,'',99,'A','2025-08-21 07:00:13',1,1,11,'2025-08-28 05:11:30'),(12,'DWSC X','dwsc x','',1,'',99,'A','2025-08-21 07:02:58',1,1,12,'2025-08-28 05:11:30'),(13,'DSFDVC','wfsvd c','',1,'',99,'A','2025-08-21 07:03:23',1,1,13,'2025-08-28 05:11:30'),(14,'REFVD','efvdc','',1,'',99,'A','2025-08-21 07:03:35',1,1,14,'2025-08-28 05:11:30'),(15,'ERFDGF','refdvf','efdv',1,'fedv',99,'A','2025-08-21 07:08:35',1,1,15,'2025-08-28 05:11:30'),(16,'EWFDV','wfvd','',1,'',99,'A','2025-08-21 07:10:11',1,1,16,'2025-08-28 05:11:30'),(17,'F43REV','frevd','',1,'',99,'A','2025-08-21 07:10:25',1,1,17,'2025-08-28 05:11:30'),(18,'GBVC','efdvg','',1,'',99,'A','2025-08-21 07:10:40',1,1,18,'2025-08-28 05:11:30'),(19,'32RFEV','erwfved','',1,'',99,'A','2025-08-21 07:14:37',1,1,19,'2025-08-28 05:11:30'),(20,'4RFEFVD','rgefbgdb','',1,'',99,'A','2025-08-21 07:17:34',1,1,20,'2025-08-28 05:11:30'),(21,'6RYT','67tuy','',1,'',99,'A','2025-08-21 07:28:41',1,1,21,'2025-08-28 05:11:30'),(22,'3DEWCSFXE','wdcsfcx','',1,'',99,'A','2025-08-21 07:30:40',1,1,22,'2025-08-28 05:11:30'),(23,'RWFCEDV','3rfevd','',1,'',99,'A','2025-08-21 07:33:57',1,1,23,'2025-08-28 05:11:30'),(24,'R3FEVD C','rfved','',1,'',99,'A','2025-08-21 07:34:48',1,1,24,'2025-08-28 05:11:30'),(25,'TRHGF','4thrgbf','',1,'',99,'A','2025-08-21 08:36:23',1,1,25,'2025-08-28 05:11:30'),(26,'5EG','ergf','',1,'',99,'A','2025-08-21 08:50:49',1,1,25,'2025-08-28 05:11:30'),(27,'78YIGH','yghjtryhngf','',1,'',99,'D','2025-08-21 08:51:15',1,1,26,'2025-09-04 06:26:02'),(28,'FWR','wfvs','',1,'',99,'D','2025-08-21 09:02:16',1,1,27,'2025-09-04 05:56:42'),(29,'EWF32','23f','',1,'',99,'A','2025-08-26 09:39:45',1,1,28,'2025-08-28 05:11:30'),(30,'2ERWCFSC','2fecwds','',1,'',99,'D','2025-08-28 06:15:59',1,1,29,'2025-09-04 06:02:50'),(31,'1','Active','',1,'',99,'A','2025-09-01 06:40:07',1,1,30,'2025-09-01 06:40:07'),(32,'IN-P','in_port','',1,'',99,'A','2025-09-01 06:52:50',1,1,30,'2025-09-01 06:52:50'),(33,'M','maintenance','',1,'',99,'A','2025-09-01 06:52:50',1,1,30,'2025-09-01 06:52:50'),(34,'OF','offline','',1,'',99,'A','2025-09-01 06:52:50',1,1,30,'2025-09-01 06:52:50'),(35,'RFD','rfscx','',1,'',99,'A','2025-09-02 07:16:55',1,1,31,'2025-09-02 07:16:55'),(36,'EWFS','ewdsc','',1,'',99,'A','2025-09-02 07:17:37',1,1,32,'2025-09-02 07:17:37'),(37,'ACTIVE','active',NULL,1,NULL,0,'A','2025-09-04 05:56:42',1,1,27,'2025-09-04 05:56:42'),(38,'IN_PORT','in_port',NULL,1,NULL,0,'A','2025-09-04 05:56:42',1,1,27,'2025-09-10 08:20:14'),(39,'MAINTENANCE','maintenance',NULL,1,NULL,0,'A','2025-09-04 05:56:42',1,1,27,'2025-09-04 05:56:42'),(40,'OFFLINE','offline',NULL,1,NULL,0,'A','2025-09-04 05:56:42',1,1,27,'2025-09-04 05:56:42'),(41,'ACTIVE','active',NULL,1,NULL,0,'A','2025-09-04 06:02:50',1,1,29,'2025-09-04 06:02:50'),(42,'IP_PORT','in-port',NULL,1,NULL,0,'A','2025-09-04 06:02:50',1,1,29,'2025-09-04 06:02:50'),(43,'MAINTENANCE','maintenance',NULL,1,NULL,0,'A','2025-09-04 06:02:50',1,1,29,'2025-09-04 06:02:50'),(44,'OFFLINE','offline',NULL,1,NULL,0,'A','2025-09-04 06:02:50',1,1,29,'2025-09-04 06:02:50'),(45,'ACTIVE','Active',NULL,1,NULL,0,'A','2025-09-04 06:26:01',1,1,26,'2025-09-04 06:26:01'),(46,'IN_PORT','In_port',NULL,1,NULL,0,'A','2025-09-04 06:26:02',1,1,26,'2025-09-04 06:26:02'),(47,'MAINTENANCE','Mnaitenance',NULL,1,NULL,0,'A','2025-09-04 06:26:02',1,1,26,'2025-09-04 06:26:02'),(48,'OFFLINE','Offilne',NULL,1,NULL,0,'A','2025-09-04 06:26:02',1,1,26,'2025-09-04 06:26:02');
/*!40000 ALTER TABLE `reference_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `landing_page` varchar(255) DEFAULT NULL,
  `status` enum('A','D') NOT NULL DEFAULT 'A',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int NOT NULL,
  `org_id` int NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `IDX_ORG` (`org_id`),
  KEY `IDX_STATUS` (`status`),
  KEY `IDX_CODE` (`code`),
  KEY `IDX_NAME` (`name`),
  KEY `FK_4a39f3095781cdd9d6061afaae5` (`created_by`),
  CONSTRAINT `FK_4a39f3095781cdd9d6061afaae5` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  CONSTRAINT `FK_ba4f96af4628cc8b18e940436d8` FOREIGN KEY (`org_id`) REFERENCES `organizations` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'ADMIN','Admin',NULL,'A','2025-08-06 11:14:43',1,1,'2025-08-28 05:11:30'),(2,'ADMIN 2','admin 2','management-dashboard','A','2025-08-06 11:22:36',1,1,'2025-08-28 05:11:30'),(3,'SHIP-C-1','ShipCaption','management-dashboard','A','2025-08-07 10:10:11',1,1,'2025-08-28 05:11:30'),(4,'RE','caption','management-dashboard','A','2025-08-11 06:32:36',2,1,'2025-08-28 05:11:30'),(5,'S1','Caption','management-dashboard','A','2025-08-20 05:35:54',1,1,'2025-08-28 05:11:30'),(6,'UNIOWNER','uniowner','management-dashboard','A','2025-08-26 10:02:33',1,1,'2025-08-28 05:11:30');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ships`
--

DROP TABLE IF EXISTS `ships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ships` (
  `id` int NOT NULL AUTO_INCREMENT,
  `imo_number` varchar(255) NOT NULL,
  `flag` varchar(255) NOT NULL,
  `status` enum('A','D') NOT NULL DEFAULT 'A',
  `cameras_installed` int NOT NULL,
  `last_update` datetime NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int NOT NULL,
  `org_id` int NOT NULL,
  `location_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_289f1ca04f216cf2701ccf5c40b` (`created_by`),
  KEY `FK_d409a419010638187c1b2882461` (`org_id`),
  KEY `FK_6991bdb6b61d34ca8d3de559be5` (`location_id`),
  CONSTRAINT `FK_289f1ca04f216cf2701ccf5c40b` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  CONSTRAINT `FK_6991bdb6b61d34ca8d3de559be5` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`),
  CONSTRAINT `FK_d409a419010638187c1b2882461` FOREIGN KEY (`org_id`) REFERENCES `organizations` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ships`
--

LOCK TABLES `ships` WRITE;
/*!40000 ALTER TABLE `ships` DISABLE KEYS */;
/*!40000 ALTER TABLE `ships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_entities`
--

DROP TABLE IF EXISTS `user_entities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_entities` (
  `user_id` int NOT NULL,
  `entity_id` int NOT NULL,
  PRIMARY KEY (`user_id`,`entity_id`),
  KEY `IDX_c525a8b551bd1bdcf45b8e00a3` (`user_id`),
  KEY `IDX_1a607d468b26d48eee50669cad` (`entity_id`),
  CONSTRAINT `FK_1a607d468b26d48eee50669cad9` FOREIGN KEY (`entity_id`) REFERENCES `entities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_c525a8b551bd1bdcf45b8e00a35` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_entities`
--

LOCK TABLES `user_entities` WRITE;
/*!40000 ALTER TABLE `user_entities` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_entities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `emailid` varchar(255) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `is_all_entity_access` tinyint NOT NULL DEFAULT '0',
  `wrong_password_cnt` int NOT NULL DEFAULT '0',
  `is_locked` tinyint NOT NULL DEFAULT '0',
  `status` enum('A','D') NOT NULL DEFAULT 'A',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `org_id` int NOT NULL,
  `created_by` int DEFAULT NULL,
  `role_id` int DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `IDX_ORG` (`org_id`),
  KEY `IDX_STATUS` (`status`),
  KEY `IDX_CODE` (`code`),
  KEY `IDX_NAME` (`name`),
  KEY `IDX_EMAIL` (`emailid`),
  KEY `FK_f32b1cb14a9920477bcfd63df2c` (`created_by`),
  KEY `FK_a2cecd1a3531c0b041e29ba46e1` (`role_id`),
  CONSTRAINT `FK_0a13270cd3101fd16b8000e00d4` FOREIGN KEY (`org_id`) REFERENCES `organizations` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_a2cecd1a3531c0b041e29ba46e1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
  CONSTRAINT `FK_f32b1cb14a9920477bcfd63df2c` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'ADMIN','Admin','admin@abc.com','$2b$10$Az.nmmVqr.9OLExVnLTZ9eP.GlhcVDr8XkFyS.Ay2GKEt5/VkWJq6',1,3,0,'A','2025-08-06 11:14:43',1,1,1,'2025-09-02 10:30:33'),(2,'ADMIN2','admin2','admin2@gmail.com','$2b$10$FGc9wIkZkFlSQ1YuhvcjxeydpU.zhXAcgwEG8wxPkFFFZhHf1wglC',1,0,0,'A','2025-08-06 11:23:16',1,1,2,'2025-08-28 05:11:29'),(3,'SHIPT-1','shipcaption','shipcaption@gmail.com','$2b$10$vOubEHdq52jQGU6A6ldUfOA.78KgYNS6n0mxvnT0NM4MdOEVF9hNa',1,0,0,'D','2025-08-07 10:11:05',1,1,3,'2025-08-28 05:11:29'),(4,'RE6','caption','test5@gmail.com','$2b$10$2p/fpV0QYwZn78SUa81SZOcxy2s.II/3uY9vIpHOB1QwOg4gxRueW',1,0,0,'A','2025-08-11 06:34:03',1,2,4,'2025-08-28 05:11:29'),(5,'CS-1','captions1','captions1@gmail.com','$2b$10$x577gYZKIMupCExUs6LtO.eS9iKe71oFb9BvQswiEwx20tna3qtTO',0,0,0,'A','2025-08-20 05:45:46',1,1,5,'2025-08-28 05:11:29'),(6,'UNI','uni','uniowner@gmail.com','$2b$10$IIsCPN6jDht8llXyE0PxIecMVNdBVgzGc5yD7XcsCLR/kkppg3LRO',1,0,0,'A','2025-08-26 10:03:38',1,1,6,'2025-08-28 05:11:29');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'testreset'
--

--
-- Dumping routines for database 'testreset'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-17 15:01:17
