-- MySQL dump 10.13  Distrib 8.0.31, for macos12 (x86_64)
--
-- Host: localhost    Database: frame-laravel
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `examples`
--

DROP TABLE IF EXISTS `examples`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `examples` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `nik` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `citizen` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hobbies` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `married_status` tinyint(1) NOT NULL DEFAULT '0',
  `profile_picture` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `supporting_document` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` int NOT NULL,
  `taxpayer_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `examples`
--

LOCK TABLES `examples` WRITE;
/*!40000 ALTER TABLE `examples` DISABLE KEYS */;
/*!40000 ALTER TABLE `examples` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `files`
--

DROP TABLE IF EXISTS `files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `original_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `compressed_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mimetype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `compressed_uri` text COLLATE utf8mb4_unicode_ci,
  `original_uri` text COLLATE utf8mb4_unicode_ci,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `files`
--

LOCK TABLES `files` WRITE;
/*!40000 ALTER TABLE `files` DISABLE KEYS */;
/*!40000 ALTER TABLE `files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2016_06_01_000001_create_oauth_auth_codes_table',1),(4,'2016_06_01_000002_create_oauth_access_tokens_table',1),(5,'2016_06_01_000003_create_oauth_refresh_tokens_table',1),(6,'2016_06_01_000004_create_oauth_clients_table',1),(7,'2016_06_01_000005_create_oauth_personal_access_clients_table',1),(8,'2019_08_19_000000_create_failed_jobs_table',1),(9,'2019_12_14_000001_create_personal_access_tokens_table',1),(10,'2022_10_18_032502_create_roles_table',1),(11,'2022_10_18_032521_create_role_privileges_table',1),(12,'2022_10_18_032534_create_privileges_table',1),(13,'2022_11_08_065112_create_examples_table',1),(14,'2022_11_08_120717_create_files_table',1),(15,'2022_11_08_122617_update_files_table',1),(16,'2022_11_22_000742_create_role_users_table',1),(17,'2023_02_08_104104_add_column_files_table',1),(18,'2023_04_11_090724_create_sysparams_table',1),(19,'2024_04_17_064753_change_field_on_examples_table',1),(20,'2024_07_11_081233_add_field_to_examples_table',1),(21,'2024_08_14_100130_add_age_and_taxpayer_number_to_examples_table',1),(22,'2024_08_26_131230_add_phone_to_examples_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `client_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_access_tokens`
--

LOCK TABLES `oauth_access_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;
INSERT INTO `oauth_access_tokens` VALUES ('97ce7a86e0a35576ce07ca93d66f2c01c3d8dc23c044a6e9a2a279ba4d1b43975ae184718ba01fc3',1,'9eac2c5a-3056-4b25-a357-e2e4e02fedad','Personal Access Token','[]',1,'2025-04-14 09:58:53','2025-04-14 09:59:00','2025-04-14 17:13:53'),('9d4e1386915670ebad2884347898ca281f8b326dc9342b21dd3aba052cc08b1a03fa28f671b92c78',1,'9eac2c5a-3056-4b25-a357-e2e4e02fedad','Personal Access Token','[]',1,'2025-04-14 09:58:46','2025-04-14 09:58:53','2025-04-14 17:13:53'),('b6f18a47b879634c5ba137db55ebcf9e25d3443fcb1077cfb1845c7dec5aed493ebbd05c9955a3d4',1,'9eac2c5a-3056-4b25-a357-e2e4e02fedad','Personal Access Token','[]',0,'2025-04-14 09:41:16','2025-04-14 09:41:16','2025-04-14 16:56:16'),('ccb8308d2e3e19007ec466daff5af3a281630b38cdfbc1e9f9b8be2ffef55aca3d25b152e9eb16f7',1,'9eac2c5a-3056-4b25-a357-e2e4e02fedad','Personal Access Token','[]',0,'2025-04-14 09:59:00','2025-04-14 09:59:00','2025-04-14 17:14:00');
/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `client_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_auth_codes_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_auth_codes`
--

LOCK TABLES `oauth_auth_codes` WRITE;
/*!40000 ALTER TABLE `oauth_auth_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_auth_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_clients` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_clients`
--

LOCK TABLES `oauth_clients` WRITE;
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;
INSERT INTO `oauth_clients` VALUES ('9eac2c5a-3056-4b25-a357-e2e4e02fedad',NULL,'sagara-laravel.dev Personal Access Client','Ikj7K2RrusNakFETLXEO5BxamTPFTEv7FQsBVdJe',NULL,'http://localhost',1,0,0,'2025-04-14 09:32:36','2025-04-14 09:32:36'),('9eac2c5a-5350-4149-a314-49450ed92d0c',NULL,'sagara-laravel.dev Password Grant Client','HFibBkZocYuRW0pIt0MXH7Q62BRV704sP6mz6Tk4','users','http://localhost',0,1,0,'2025-04-14 09:32:36','2025-04-14 09:32:36');
/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_personal_access_clients`
--

DROP TABLE IF EXISTS `oauth_personal_access_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `client_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_personal_access_clients`
--

LOCK TABLES `oauth_personal_access_clients` WRITE;
/*!40000 ALTER TABLE `oauth_personal_access_clients` DISABLE KEYS */;
INSERT INTO `oauth_personal_access_clients` VALUES (1,'9eac2c5a-3056-4b25-a357-e2e4e02fedad','2025-04-14 09:32:36','2025-04-14 09:32:36');
/*!40000 ALTER TABLE `oauth_personal_access_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(600) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  `account_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_refresh_tokens`
--

LOCK TABLES `oauth_refresh_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_refresh_tokens` DISABLE KEYS */;
INSERT INTO `oauth_refresh_tokens` VALUES ('019f42a6-db1d-40d6-b016-c1180aa898d0','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM1NTc3MSwiaWF0IjoxNzUwMzUzOTcxLjgzNjcxMywiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhODFhOWUyODU3ZmY4In0.n0OepesioSPDf901jVWmJ1rXqxMJELYrhWGrvJBu1t0',1,'2025-06-20 18:03:32',1),('01efe00d-caf9-480c-8e46-7c4b7ed84f84','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDQwOTEzMywiaWF0IjoxNzUwNDA3MzMzLjg1NTIyLCJpc3MiOiJtYXgtaGVhbHRoLWFwaSIsImp0aSI6IjE4NGFiMjMyMzJhZGQ1MDgifQ.qNNuH66KK18lGpOw_giCLgqixTJNEV4gBcAqQ3uhgdI',1,'2025-06-20 18:03:32',1),('02a57317-1bc7-4276-839b-96ac827b83a9','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM1NzA1MCwiaWF0IjoxNzUwMzU1MjUwLjM4NjY3NiwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhODJkMzkyMDlhZDA4In0.V480_9Hc4NxT_BZy1qNESjPUBWEe-jutc5_zvx9_igg',1,'2025-06-20 18:03:32',1),('03782897-dc99-4b57-a23b-8a9a4d827206','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM5NDAyNSwiaWF0IjoxNzUwMzkyMjI1Ljg4MjcwMywiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhYTQ3NDk5NTgwODgwIn0.9aOxIZYfBEJYxpu6rfx71DrZ5knVGUtTCdxGwAerR-g',1,'2025-06-20 18:03:32',1),('03a89457-3975-47b4-a520-16f9f0bfac5b','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM4NTk0MSwiaWF0IjoxNzUwMzg0MTQxLjg1NDY3NywiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhOWQxYTYzYjk5YmYwIn0.Ni4-jbXnJwqHltyWTCSbZfhSVHpEXZpsdJ5Nzu5d6F0',1,'2025-06-20 18:03:32',1),('03bb7575-7253-41bf-991c-bec2cb8deb38','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDQwOTMxOCwiaWF0IjoxNzUwNDA3NTE4LjY2MDE3NSwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhYjI1ZDM5ZTlhYzY4In0.C5eFTHUEyxROeqo-aeu3yb3tvnVygdhGNXTmyG-6qqE',1,'2025-06-20 18:03:32',1),('043d10e9-9f89-44fa-bacc-d36dafc9cdee','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDQxNjkzMSwiaWF0IjoxNzUwNDE1MTMxLjAwNzcxOCwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhYjk0OTlkMmYxNjU4In0.rWNQdIOxWw-MFf76A4EzP0t-LN9KEz01rduGQflPtdE',1,'2025-06-20 18:03:32',1),('0475b85c-ef34-4595-9ef0-e8a282d48281','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDQxNTU1OSwiaWF0IjoxNzUwNDEzNzU5LjI2NTgyOSwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhYjgwYTNhZmYwMDI4In0.uAcZPvsRiAg7JEzH4aYUW4el80rSRwFPmkJ0l3wgI0U',1,'2025-06-20 18:03:32',1),('0489b5b1-428d-4d1a-b49f-44b1be370431','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDQwOTMxNSwiaWF0IjoxNzUwNDA3NTE1LjYyNzE4NiwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhYjI1Yzg1MjFlZjIwIn0._UvCIuDv3ozIRbw9IPvCshs8j050pcYPk_JkxWwYX20',1,'2025-06-20 18:03:32',1),('049cff62-84f6-4e04-94f7-a5d354965d4e','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM0NTM2MiwiaWF0IjoxNzUwMzQzNTYyLjY4ODcyNiwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhNzgzMjUwZjQwN2Q4In0.Vi_IPPojcoamkHaOK2YfHMITRWSudVg24jueJlwY62s',1,'2025-06-20 18:03:32',1),('04f856e4-1ec9-4e5b-bce7-216de4c4632c','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDQxNTU3MiwiaWF0IjoxNzUwNDEzNzcyLjQwNTg2NCwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhYjgwZDRhMzNmZTEwIn0.9wQiY5REIVT5CA5Owc2FBatKO4FzMQpBzQfqL98VNno',1,'2025-06-20 18:03:32',1),('074d7d0a-0af0-4e6b-951f-a52f2b6070be','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDQwMzU2MSwiaWF0IjoxNzUwNDAxNzYxLjgwOTk3NCwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhYWQyMGRhZTZjYWMwIn0.aGeHZPCMCPl0tUubiaLa5ze2xrBSbw6qphvuKH_YMrE',1,'2025-06-20 18:03:32',1),('0b557719-1198-4573-8ed4-22b5053387dc','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDQxNjQzMiwiaWF0IjoxNzUwNDE0NjMyLjY0NjkwNSwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhYjhkNTk0OTA5NDc4In0.VZ9wdqz9OhgZBfcNGZIpnusgTu4rXY3sFe3P45ZElj4',1,'2025-06-20 18:03:32',1),('0be8957a-cf66-4297-b5f8-4bed3a21ad77','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM4NzM2MiwiaWF0IjoxNzUwMzg1NTYyLjQyNDYwOCwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhOWU2NTI0NGE5MGI4In0.8kOUZwcPM5hG-ofV0RHQbzDCXnOi8Z_AoeiWa7nlbCU',1,'2025-06-20 18:03:32',1),('0c27250e-ef80-48ad-abb8-ba86d6714d72','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM4NzU0OSwiaWF0IjoxNzUwMzg1NzQ5LjIzMDY4LCJpc3MiOiJtYXgtaGVhbHRoLWFwaSIsImp0aSI6IjE4NGE5ZTkwYTJjY2ZiYTgifQ.XEsgb34mTzwZvuSeiY9T86LZcGobHAbTuIvRftxF8ZM',1,'2025-06-20 18:03:32',1),('0ca92afe-3874-4dbb-83b8-317112501a8f','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDQwNDQxNiwiaWF0IjoxNzUwNDAyNjE2LjA3NzkwOSwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhYWRlN2MxM2QwM2Q4In0.cIebO9nczQOrvXvntdOAl13-JYlcpRXSnW9pOICWWNw',1,'2025-06-20 18:03:32',1),('0e3475e3-2248-4e26-82d8-82feeafaf9bb','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM1NjcxMiwiaWF0IjoxNzUwMzU0OTEyLjE2NDAzMSwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhODI4NGQyNjVhZTAwIn0.xE-UqP50-4dwv1ZfUcO5luWGO144UKim6mjyvsJtPl0',1,'2025-06-20 18:03:32',1),('0ec642c0-6dc1-4393-bf27-53d6e6ceff70','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM0NjAxNCwiaWF0IjoxNzUwMzQ0MjE0LjczNjExNCwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhNzhjYTIyMDE5OTIwIn0.yqLW6OTS5NiLGpcdqz49KJxDIAIs1D2zwIJZkwJbeIE',1,'2025-06-20 18:03:32',1),('0eed0a48-3870-467f-84f2-edc88673d928','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM5MzUyMiwiaWF0IjoxNzUwMzkxNzIyLjE1NDM2MSwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhYTNmZjUwY2I4NDkwIn0.2-5Uv5_TRkcArIXeet89rkMKbxQKyQVCJWm4LzJ8irs',1,'2025-06-20 18:03:32',1),('10b2bfc8-2d41-4d21-b583-983be4cd8f37','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM5MjA0NiwiaWF0IjoxNzUwMzkwMjQ2Ljg4NjQyNCwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhYTJhN2QzZjk0NTkwIn0.kmqNUJjfhdOBwsIcVTiVOBofjI13HB4KKT2FCiMVbdU',1,'2025-06-20 18:03:32',1),('1141a856-cf2e-42b8-bdb4-80c28726a7a3','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM5Mzc1MCwiaWF0IjoxNzUwMzkxOTUwLjI5MjY5LCJpc3MiOiJtYXgtaGVhbHRoLWFwaSIsImp0aSI6IjE4NGFhNDM0NmVlNjJjMjAifQ.x6TQtO22puV_rPUUfyZuKHTDOKt5byLXn2csFwJY9Pg',1,'2025-06-20 18:03:32',1),('1233c38d-662a-4201-91b2-bd7e4495a090','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM1MjU1OSwiaWF0IjoxNzUwMzUwNzU5LjYwNTU3NiwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhN2ViZGZhYTAyOTEwIn0.zi7uEJKej8kkDRgk-RBvXpcDBZOkECbOqH2B7KICYAg',1,'2025-06-20 18:03:32',1),('127c3a96-d68c-46a6-a27c-cb7d2d449e6a','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDQxNTU5MiwiaWF0IjoxNzUwNDEzNzkyLjY1NzUyLCJpc3MiOiJtYXgtaGVhbHRoLWFwaSIsImp0aSI6IjE4NGFiODEyMDE0YmI5NjgifQ.Seb0hGg7gmGfCsuyatNC_wEmjR9CesJhQbOW9z-gazw',1,'2025-06-20 18:03:32',1),('12d9f5cd-ce0b-449e-9a01-c42ade981ef2','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM4Njk2OSwiaWF0IjoxNzUwMzg1MTY5LjQ3MDkyOSwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhOWUwOWE2NmQ0MDM4In0.5xTNXFnLAeq30THz9BONHhkS0R2owOzYvWiHO1tWG6M',1,'2025-06-20 18:03:32',1),('12f515ba-81e6-4ca7-af15-b17f5aa5afb8','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM1NzA3MSwiaWF0IjoxNzUwMzU1MjcxLjg1NTI4LCJpc3MiOiJtYXgtaGVhbHRoLWFwaSIsImp0aSI6IjE4NGE4MmQ4OTFhYTkzNjgifQ.KMd11YTV-cduk87Ch_JtbjJXWLzOlSsUoCFMPRtQkiQ',1,'2025-06-20 18:03:32',1),('1399c182-4174-414d-8561-aa0f99cb09b9','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM5MzUyNiwiaWF0IjoxNzUwMzkxNzI2LjUyMTAzMywiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhYTQwMDU1MTFhNTEwIn0.BLSsdUAJMDeXENU9t8mC5zhjVbqHHN7p_TKHH7eSpTg',1,'2025-06-20 18:03:32',1),('13dbac9c-1f77-46fe-a0a9-66fdddfcd60f','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM4NzcyMywiaWF0IjoxNzUwMzg1OTIzLjA2NDIwNiwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhOWViOTFjMTYxYTgwIn0.ZINTlGwgAdhWBRhd10CkCeGvMItnSHL9wW7HI_Rb_2A',1,'2025-06-20 18:03:32',1),('13fae9c5-e3b9-47f1-86bd-a546172f0071','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM5NTgwOCwiaWF0IjoxNzUwMzk0MDA4LjczMTEyNCwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhYTYxM2IzNjQwOGYwIn0.tvOQQ1A41kkPUKYAbBM420jxqYiBqdm6teMaNtcYFO0',1,'2025-06-20 18:03:32',1),('14ca54b1-fddf-46f3-a6cf-25f4d3dbc6b8','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM1MjY4OCwiaWF0IjoxNzUwMzUwODg4LjAwNjIsImlzcyI6Im1heC1oZWFsdGgtYXBpIiwianRpIjoiMTg0YTdlZGJkZmU2MzI5MCJ9.iipVDPtO2P6FNM9VoU_1lhfUO_bLZWafGDT_F2hfgqY',1,'2025-06-20 18:03:32',1),('15dd7bf1-85e4-49be-8acd-c2edb14a601b','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM4NTk0MiwiaWF0IjoxNzUwMzg0MTQyLjA4MzEsImlzcyI6Im1heC1oZWFsdGgtYXBpIiwianRpIjoiMTg0YTlkMWE3MTU3MTE0OCJ9.KH6Cp2F1BMksz1g9GIsocz0okAh-Eqo7_UX10KnAo0E',1,'2025-06-20 18:03:32',1),('1687a449-bb38-4fe6-95f6-f4f67ee25fc0','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM1NjI5MywiaWF0IjoxNzUwMzU0NDkzLjExMzUzOSwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhODIyMzQxMGFhMTg4In0.boWQI2HWN-AjhkvCbTIjLwsDSPQc8quNODErr2tm_Hs',1,'2025-06-20 18:03:32',1),('18881554-50ce-4f3e-a2ac-64bbadf07a51','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM4NTYxMSwiaWF0IjoxNzUwMzgzODExLjE1MTE1NCwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhOWNjZDY0NDI1MzIwIn0.IPigcoK7NeEudf4kAlHdKBwcA5BLYtNevzvcZcSGjUM',1,'2025-06-20 18:03:32',1),('18904fca-b733-4141-8f22-16d3352a05cc','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDQxOTIxMiwiaWF0IjoxNzUwNDE3NDEyLjU4NDgzNCwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhYmI1Y2Q1YzcwN2I4In0.85CkiAFrcogOaZdWgNwTaBR46PtTzDMhRcgaT9Pmxos',1,'2025-06-21 18:03:32',1),('1a0d522d-8d82-4f9a-91ea-ed21ec5185ca','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM5MjEzOSwiaWF0IjoxNzUwMzkwMzM5LjI1NzAyNCwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhYTJiZDU1YjBjMWU4In0.IoJ-MNq9iDZLiTfovx0cxtWsKJzUSBJNJtM6G1ye3nU',1,'2025-06-20 18:03:32',1),('1a3f93a3-af6e-495a-b558-b4023d54d5cd','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM5MDYzMiwiaWF0IjoxNzUwMzg4ODMyLjAzNDYwNiwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhYTE1ZTY4Nzk5NDE4In0.s0XkDNFJEa6aRXWYGcfx_EQ1XnjI77VPrXLDpZxSGfY',1,'2025-06-20 18:03:32',1),('1b0a7f93-a811-4d9b-9bfa-1b63404aaece','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDQxNTYwMywiaWF0IjoxNzUwNDEzODAzLjYzNjI0MywiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhYjgxNDhmYWUwYzQwIn0.rvLQo2NICgjnkc_PdSlpPf9eqYd6I8mHCWgnVgPQfUM',1,'2025-06-20 18:03:32',1),('1d0a72f0-3430-4361-8b54-b86276174234','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDQwNDQxOCwiaWF0IjoxNzUwNDAyNjE4LjEzMTkxOSwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhYWRlODNiYWFiNDgwIn0.M-xSSZx8F5gy29WBgYA0DLVlRD1U6FV9Ozzoc6QFnMw',1,'2025-06-20 18:03:32',1),('1d4590eb-5766-4e8a-83c8-32deb39c81b3','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDQwOTM4MSwiaWF0IjoxNzUwNDA3NTgxLjcyMzQ4OSwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhYjI2YmU4ZThhZWI4In0.UaSRQ9okNs-XaQ6m9tgrba8M84BWSZVkpF0oTEM2GsU',1,'2025-06-20 18:03:32',1),('1e3815b8-ec6b-490d-a0b3-d08fb236e926','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM0NjAxNCwiaWF0IjoxNzUwMzQ0MjE0LjkwNDk5NSwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhNzhjYTJjMTI4MGEwIn0.JvcJRlFEeI2fZgiv4d_x2aR_FbXiu5ieXS-aelK-ddE',1,'2025-06-20 18:03:32',1),('1e3a4f5a-8184-45c1-8f05-016d9be1d796','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM1MTgyMSwiaWF0IjoxNzUwMzUwMDIxLjM5NzEzMSwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhN2UxMjE5ZjkzMmUwIn0.M4BzsX6AUTh6YvMpS09rxuClbv3935hX7xinInnBuE0',1,'2025-06-20 18:03:32',1),('1f24a0d8-7456-4c1c-a6b5-dbee2f3e385d','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDMyMjc2NCwiaWF0IjoxNzUwMzIwOTY0LjM1MzQ4OSwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhNjNhNGJiMzU4ODA4In0.4MnYvYFXGn_bF0oEYLple5ZTkhP191LkeP-cGPd0cHg',1,'2025-06-20 18:03:32',1),('20298909-c4fe-44a6-86c9-9ebc15b1a03a','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDQxMjc4MywiaWF0IjoxNzUwNDEwOTgzLjY2MTAwNiwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhYjU4M2ZjMGU3NDgwIn0.2dd9AXM3p0m5ueUfIK1egkWCVYTFGCAwmqa-_srpo8I',1,'2025-06-20 18:03:32',1),('2211f1cf-457e-4069-90a7-73c885ea5078','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM5MzYyOSwiaWF0IjoxNzUwMzkxODI5LjgyNzY5LCJpc3MiOiJtYXgtaGVhbHRoLWFwaSIsImp0aSI6IjE4NGFhNDE4NjJhMDIxZjgifQ.O0dRB7vo5W47fYVdiPTI54s0tAVr0BX6qw5BDnotLbg',1,'2025-06-20 18:03:32',1),('23b4df66-8a49-4c9c-b017-4065433906ab','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM0NDg3OCwiaWF0IjoxNzUwMzQzMDc4LjUxMzMwOCwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhNzdjMTk1ZDk3NTQ4In0.RwzHMzVF1bSt7u5x3sGCJT4qlGe9hIsCk8epjXJzIbo',1,'2025-06-20 18:03:32',1),('24243986-5b51-4f8b-b074-b7429631aad3','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDQxMjc4MywiaWF0IjoxNzUwNDEwOTgzLjg0MDI4OCwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhYjU4NDA2YmUxMGU4In0.dmZVqvJsv6uJJhepmRjaJN7zqm2MKQYE9ZyAhoNIVxE',1,'2025-06-20 18:03:32',1),('2441c404-4e63-4d88-8ec4-93b420b76cf5','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDQwNDA0NiwiaWF0IjoxNzUwNDAyMjQ2Ljc5Mjc1NCwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhYWQ5MWM2MjBiNzM4In0.zQ15nrcwcDlKJlcOdeX5ZcgUWJ6QOAvbt96--yRpn3w',1,'2025-06-20 18:03:32',1),('24420c86-e4e3-4a4b-9abe-23b6f64d85bb','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDQxNzYzNCwiaWF0IjoxNzUwNDE1ODM0LjYxNTQ5LCJpc3MiOiJtYXgtaGVhbHRoLWFwaSIsImp0aSI6IjE4NGFiOWVkNmY3OWE5YjgifQ.z1ZKdIw8gVxEtx1BMrtFZyhqHhXM6QpzTPFo71cN6FQ',1,'2025-06-20 18:03:32',1),('24c02fdf-42cb-4e95-9e89-575a2d5e16b1','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDQwOTM4MSwiaWF0IjoxNzUwNDA3NTgxLjU5NzcyNiwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhYjI2YmUxNDg3OTE4In0.Ed24_xXsXqXaBb5y2gY6zGW2OwoWFnIWpB_hfyEiDDY',1,'2025-06-20 18:03:32',1),('25d088d0-2078-4f5c-94ae-119531e60510','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM1NDYxMywiaWF0IjoxNzUwMzUyODEzLjc0Njk1LCJpc3MiOiJtYXgtaGVhbHRoLWFwaSIsImp0aSI6IjE4NGE4MDljM2VmZTEzNTgifQ.nHlZY8MBoq4l-fpHeDDByMIiObBXbq-uVqyskM_PCoo',1,'2025-06-20 18:03:32',1),('28ccd6ca-7c4f-41b3-a6e7-92bc8ccd666d','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM1NTgyNiwiaWF0IjoxNzUwMzU0MDI2LjUzOTM2OSwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhODFiNjlmMGU1ZTY4In0.xhNeUIh9cW8hp92K9y4tR5DIINp20bhQlh689v_t5Z4',1,'2025-06-20 18:03:32',1),('2972891d-003f-4427-8eb2-0675e297c3ce','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM1NDk5MywiaWF0IjoxNzUwMzUzMTkzLjM1MjY0OSwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhODBmNGExNDE1ZDEwIn0.TouCRtV-Vpge2WBzOrGcg_WJEbBhqSc_gy1OFdE4dLQ',1,'2025-06-20 18:03:32',1),('2b5a8f9b-775e-4eb2-b805-fb911909e78f','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDQxOTIwMSwiaWF0IjoxNzUwNDE3NDAxLjU5MTQ1MSwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhYmI1YTQ2ODU1MTYwIn0.mHE7D_HFYz57biYK5_UoCNseq3nYUcCjokPAtf5iziU',1,'2025-06-20 18:03:32',1),('2d0eff9f-56a2-446e-8acd-4816badd0a18','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM5MTQwMSwiaWF0IjoxNzUwMzg5NjAxLjY1ODE3NywiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhYTIxMTk5NWY4OWQwIn0.gJbsDNDg4s5qXshJ_m1tVJ5nDRmlKBNh28prDjnAydg',1,'2025-06-20 18:03:32',1),('2dd19794-9918-4168-b223-7c6bd98de1d8','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM1NzA3MSwiaWF0IjoxNzUwMzU1MjcxLjY0MzQ1NiwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhODJkODg1MGE2OWQwIn0.jrD12XRf9sQY0ITG3MA9H2yFwlovqpuan86AXrlw2Sc',1,'2025-06-20 18:03:32',1),('2e5d11ca-ce80-439a-9172-c4e31a03d59e','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM1NTgyNiwiaWF0IjoxNzUwMzU0MDI2LjIzNTQyOCwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhODFiNjhjZjAwNDcwIn0.-gKu4A7Z8cbM3b0640xFNuyovRcqU7mXkjrKEFHszB4',1,'2025-06-20 18:03:32',1),('2e9a3c8b-e692-4e13-a832-5e5e8ec30f8d','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM1NzIxOCwiaWF0IjoxNzUwMzU1NDE4LjkwODg3MywiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhODJmYWNlYmU1OGY4In0.wSmtYisfrwk2xRd2vBGJTTo146-1g34DoxS9_7Vfk0Q',1,'2025-06-20 18:03:32',1),('2eda414d-9551-4322-b7e9-1bc575cbf294','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDQwMzU4OCwiaWF0IjoxNzUwNDAxNzg4LjUzNjQ5LCJpc3MiOiJtYXgtaGVhbHRoLWFwaSIsImp0aSI6IjE4NGFhZDI3MTNlZDBiZjgifQ.wfz-kZ192Jnx5zolCjMU97KcHyJ3HPoz-2nv7_zs1KE',1,'2025-06-20 18:03:32',1),('2f77bce3-307d-44ef-a894-28c0944f37bc','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDQwMzQ3MiwiaWF0IjoxNzUwNDAxNjcyLjY5OTQ3NSwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhYWQwYzFiODA4ZjkwIn0.Epxam7bfHNXxYL5g412Ld1RvG3Hi_77AWFu_iJ1yo04',1,'2025-06-20 18:03:32',1),('303404b8-ed09-4ec7-9f7c-a48926b1f33f','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM1MjU1OSwiaWF0IjoxNzUwMzUwNzU5Ljc4MDc0MywiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhN2ViZTA1MTBmZjI4In0.fH2uaX3k7wjN-FWVBTvSk4SUiJNGyGZfzjCEjZPLVo0',1,'2025-06-20 18:03:32',1),('303d6eab-c24a-478a-b6f3-e9717c5e670f','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM1MzQ0MSwiaWF0IjoxNzUwMzUxNjQxLjc0NDEyNiwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhN2Y4YjVlMmUzNDE4In0.7GCJhxJVF5qnk5OkBNQGz-49uCWNILB7JjrczGyTJ8Q',1,'2025-06-20 18:03:32',1),('319b5f66-1228-4e18-93cb-c25d9c64919d','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDQxMjQzNiwiaWF0IjoxNzUwNDEwNjM2LjM5NTM0NywiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhYjUzMzIxNjkwNDA4In0.Xv2QwCfpXX6kzrfnRk0Az8bHWczd6heDaUpZ_3EYG0Q',1,'2025-06-20 18:03:32',1),('33ee6de1-e0a3-4dfa-81c4-c5f43ff0e028','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM1MjY2MiwiaWF0IjoxNzUwMzUwODYyLjc5NTcyLCJpc3MiOiJtYXgtaGVhbHRoLWFwaSIsImp0aSI6IjE4NGE3ZWQ2MDEzY2M5MjgifQ.wGn1gr6Qkf_cf7ih1NWMq_kcNdDaHES1jlMMPKMysQ4',1,'2025-06-20 18:03:32',1),('351059b3-6e52-4b4d-ac0c-5638532abdbd','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDQwOTMwOCwiaWF0IjoxNzUwNDA3NTA4Ljc5NDEyNSwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhYjI1YWVkZDliMjk4In0.Gol3oIUxQXfqbEtF_IZ4_G5Geb71oheQGL55ey1uDxM',1,'2025-06-20 18:03:32',1),('36acc8db-e692-4fbc-9728-571bfe7f0f8f','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDQwMzY0NCwiaWF0IjoxNzUwNDAxODQ0LjcwNzQ0MywiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhYWQzNDI3ZjljOTA4In0.woMveFHqIH0f_1-uxdbaUqHUcLP47ooT-qu0YpTFEtM',1,'2025-06-20 18:03:32',1),('374648bd-9ea2-420f-8c3e-33bc2e325b4c','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM4NTI1OCwiaWF0IjoxNzUwMzgzNDU4LjQ2MDA5NCwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhOWM3YjQ2M2JkMjE4In0.yiF0xRUxx2wlUinCTtcz3RFY7uYcd6URD8_cB7kFUEs',1,'2025-06-20 18:03:32',1),('3786187b-51c2-425c-8e37-85d7e155ad09','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM1NDY3OSwiaWF0IjoxNzUwMzUyODc5LjI5NDE3LCJpc3MiOiJtYXgtaGVhbHRoLWFwaSIsImp0aSI6IjE4NGE4MGFiODFlOTRmNDgifQ.9ixP_moTUG68P6V6_-LD9GYne8O56gDA3M4pIuQJPGA',1,'2025-06-20 18:03:32',1),('392ff2c1-fff4-4846-89e5-ef0a95359459','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM5MTc0NiwiaWF0IjoxNzUwMzg5OTQ2LjczMzg2NywiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhYTI2MWYxN2NiN2M4In0.5A4VsW8lQNmFTiLljxJfqgEPpA5RhMpL4zcfjcC9cX4',1,'2025-06-20 18:03:32',1),('39c15d21-2ebf-46b7-b81e-d6a67b1af16e','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDQwMzY2NiwiaWF0IjoxNzUwNDAxODY2LjgyODkzNywiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhYWQzOTRlODRmNzI4In0.H3wScOWpAwTN9bxvYweQUFIPqVoKpHQ5DfHGLjmws4o',1,'2025-06-20 18:03:32',1),('3cdbdad6-c4f0-418b-924c-91258c7db745','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDQxNzU1NCwiaWF0IjoxNzUwNDE1NzU0LjQ4NjEwNSwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhYjlkYWM3NjQ0NzkwIn0.WlTWZwezrsnMswzi2I-86gaZUIvEE8LNCxNOdpl6FTY',1,'2025-06-20 18:03:32',1),('3f4c474f-e644-49fb-8b7e-54ca128f25ad','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM5MDc3MCwiaWF0IjoxNzUwMzg4OTcwLjAwNTk0NywiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhYTE3ZTg3Zjc2NjYwIn0.LH3dHM0J2yPUQKnf-cjcG6fmEZdF8D0jwqyexw2o9dg',1,'2025-06-20 18:03:32',1),('403de456-42f5-454c-a7d6-c008fca097fa','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDQxNTU4MiwiaWF0IjoxNzUwNDEzNzgyLjY4ODIzOSwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhYjgwZmFmMTQ5MTgwIn0.T6SaZHEQMPGre7ycwjsPUH-nrUDqOx1vEnuGL9v28us',1,'2025-06-20 18:03:32',1),('4079d94f-1ace-40ef-8121-7d81977f8334','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM0NDg3OSwiaWF0IjoxNzUwMzQzMDc5LjAxNTIxOCwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhNzdjMWIzYzNmZjM4In0.g2onfvAd_QfRhlYl5Eg1rlEwhraZT9VeHbBlfnfjLc4',1,'2025-06-20 18:03:32',1),('40a1a8a0-9ec1-4954-a1f8-16ba93e9d8d6','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDQxNzYzMCwiaWF0IjoxNzUwNDE1ODMwLjA1NzY4MywiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhYjllYzVmY2YwYzIwIn0.Plid1dEms2tBkFFBlrVYHaunW-5apuA4tlOYXLb7bwQ',1,'2025-06-20 18:03:32',1),('40bf3930-05de-443f-a8b7-778552ccb438','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDQxNjA2NCwiaWF0IjoxNzUwNDE0MjY0Ljc2Njg0MSwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhYjg3ZmVkMzQ0ODc4In0.wL3S5n5RSjRiKV43WazuMGHzF41MpTAh4TV3VkW2BcI',1,'2025-06-20 18:03:32',1),('40e38a6e-447d-4c36-a3d0-e60721f04d03','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDQwMzY2OCwiaWF0IjoxNzUwNDAxODY4LjY5NzE3NSwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhYWQzOWJkZTAwN2MwIn0.OOrwwA5BQSED3P5c91uQuQlhgliU4r_gXjrC8ZSYgZc',1,'2025-06-20 18:03:32',1),('40f7ebcb-f4e7-4176-a69a-2759c96e6ecf','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM1NjgzOSwiaWF0IjoxNzUwMzU1MDM5LjY1Mjc1NiwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhODJhMjgxNTEzZTA4In0.ODDoGmDYI5-9Shhdr0zMf0gOxd4c8luGIFO_oRWd2J8',1,'2025-06-20 18:03:32',1),('412fe3f2-f1c2-4300-a767-596509496946','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM1NDExMywiaWF0IjoxNzUwMzUyMzEzLjM4MzgwNiwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhODAyN2JmMDY2YzAwIn0.aPmP34aEhOnuqVv0iPfA27N5g98qIiKMFXmQnZKiTWI',1,'2025-06-20 18:03:32',1),('413ed64b-8a00-4b8f-aafc-4d54ae8b28d9','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM1NDY3OSwiaWF0IjoxNzUwMzUyODc5LjA5NTM0OCwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhODBhYjc2MGY4MmYwIn0.20LSTr4Dg_fglRVhtkc1qh3WXwySoN21e4NHDj-320Q',1,'2025-06-20 18:03:32',1),('46ae33c8-e165-479e-b0e6-d223962c5e0f','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM1NDMzMCwiaWF0IjoxNzUwMzUyNTMwLjM3NTI0NiwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhODA1YTQ0YjkwNDk4In0._9VkdeIaMA6Lh7jek0c6fQqvwadnI2dAacMUMXzp5ZQ',1,'2025-06-20 18:03:32',1),('46c27aad-6aca-4f96-bfd3-9044dd36c6bf','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM1NjI5MiwiaWF0IjoxNzUwMzU0NDkyLjkxNTg4MywiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhODIyMzM1NDJhM2M4In0.J_uLs40s_JDphYirUzKrvw6WxbnNkVk0R84VbJMOKTM',1,'2025-06-20 18:03:32',1),('477b8bfc-1013-4726-8607-e4b6389d9456','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM1Njg1MywiaWF0IjoxNzUwMzU1MDUzLjY1NDM5MywiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhODJhNWMzZTE0ODc4In0.DCqPFC_ONMnZ_yqNvgEtREGLg4ChirzlcwxP4QNx00E',1,'2025-06-20 18:03:32',1),('47bf59b9-1abc-4d86-b9ef-32c759305a2a','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM1NTgwNSwiaWF0IjoxNzUwMzU0MDA1Ljc0NDUyNywiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhODFiMWM3OTVhZTY4In0.5vfy75nBcFtFqdbbu21WZup2JR0R_yf3XV6yTLepY2k',1,'2025-06-20 18:03:32',1),('4805fd42-a6c2-483f-abec-0f1ffe3119bd','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDQwNDgxNCwiaWF0IjoxNzUwNDAzMDE0Ljk4NDExNiwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhYWU0NGExZTZiMmQ4In0.1AkETi5KZcRXGsYuUnzM0HxQsm38BunN9yPjt33P2TQ',1,'2025-06-20 18:03:32',1),('48c424a8-4e91-47fc-ac6c-30c98b193198','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM5MzM3MCwiaWF0IjoxNzUwMzkxNTcwLjc1MTEzNiwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhYTNkYzEwNzVhNGU4In0.Hqn4Aadt5RciAOAzi0L-6AifnuctG3SRKkMhQPqaAx4',1,'2025-06-20 18:03:32',1),('48fa1af4-7209-4853-9704-261fdce1427b','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDQxNTYwMywiaWF0IjoxNzUwNDEzODAzLjYzMTUwOSwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhYjgxNDhmNjU4NWQ4In0.rXBMU5xnwGFIWnKQUV5BTobnQV3N2vBWVs-hc85qhH4',1,'2025-06-20 18:03:32',1),('49afd535-6c9a-4ae8-a9bf-3242993742d1','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDQxNTU4MiwiaWF0IjoxNzUwNDEzNzgyLjY5MjE5OSwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhYjgwZmFmNTEwMjI4In0.DjwrZOTKZZWA32utEwG0ReIoLBVCNzVI8-lVRVyXJiY',1,'2025-06-20 18:03:32',1),('4aab76e9-8eb1-47de-9a35-9da98ae9b5d6','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM4NTcwNiwiaWF0IjoxNzUwMzgzOTA2Ljk2MDg3NywiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhOWNlM2IyZjZhZDk4In0.kTOBVU3o9XDJbaZRBzNSpmL0nCjrnIDskM6qWXVG-cQ',1,'2025-06-20 18:03:32',1),('4ba97819-c304-4603-807b-10d2a4649082','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDMyMzQ1NCwiaWF0IjoxNzUwMzIxNjU0LjY3Mjc2MiwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhNjQ0NTc1NzFiMDQ4In0.eazhQ0l-3tmXMqayXzNwRi3H63Zf1NZpNdmvHDuyahM',1,'2025-06-20 18:03:32',1),('4c3101d7-a15e-48f2-a46c-9642bd005c80','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDQxMjQzOSwiaWF0IjoxNzUwNDEwNjM5LjE4MTQ1NSwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhYjUzM2M3NzlhMjgwIn0.UcGX3JTWpoYFEHYZAFeKjdoP8paodNV9v5Qebn8Jy4w',1,'2025-06-20 18:03:32',1),('4c560a24-fb92-4a5d-974b-7a4ff8a54184','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDQxMzU3MiwiaWF0IjoxNzUwNDExNzcyLjY3OTcxOSwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhYjYzYmIxM2M4YzQwIn0.Ms_liw3a0UOAd7pdEprGP5MBJFhXpf9bJvVYxRsMy4s',1,'2025-06-20 18:03:32',1),('4cac9442-2634-4738-bbf1-a16453f959f6','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM4ODE3NSwiaWF0IjoxNzUwMzg2Mzc1Ljk4MzY4LCJpc3MiOiJtYXgtaGVhbHRoLWFwaSIsImp0aSI6IjE4NGE5ZjIyOTAzMGNkZTgifQ.TMCl9_QbCFQH5niJMHzrA3vUJ8Y9uuPHwylykoAE4Ro',1,'2025-06-20 18:03:32',1),('4cc492a2-e9b1-42e0-b70f-5397568b708a','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM1MjY2MiwiaWF0IjoxNzUwMzUwODYyLjYxNTI5NiwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhN2VkNWY2N2JiZmQwIn0.avxMOc8zpKOkkghD3LSPVcoL7WMi4rTS8cesf-8CL8M',1,'2025-06-20 18:03:32',1),('4d7325a9-75e3-4607-9aaa-5c426d26937f','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM4NTkyOSwiaWF0IjoxNzUwMzg0MTI5LjgzOTkwNCwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhOWQxNzk3OTZiOGU4In0.HKN-nFdyGUhYVl2cpX9NcjQrLsCQ60Jl8fBcfWN5mfA',1,'2025-06-20 18:03:32',1),('4e77cd43-401a-4d23-a5d9-a18a6f689a45','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM1NzA1OSwiaWF0IjoxNzUwMzU1MjU5LjUxODUwMywiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhODJkNWIyNTY1NDEwIn0.UcwdlwvT-YC4C2WsP4sMtRE2XNM-JBt8sGB2g2GASnE',1,'2025-06-20 18:03:32',1),('4ec675ce-7d12-4c68-a8ba-7ddfcdcbb8eb','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDQxNTU2NiwiaWF0IjoxNzUwNDEzNzY2Ljc3Mjc2MywiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhYjgwYmZhNzFhZDYwIn0.9DOBpQn48YRGl8-JFoXfhugS_RqodCeVcR75BD6b38o',1,'2025-06-20 18:03:32',1),('4f4d5cf0-c312-4967-86d2-32793eb42666','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDQwOTM3NywiaWF0IjoxNzUwNDA3NTc3Ljc2MzAyNywiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhYjI2YWZjYjdhMDA4In0.lArsbrHHyFn1YoRSyZ_YzlOOK6FF4mQUdx6zM5VyELA',1,'2025-06-20 18:03:32',1),('50adcf0c-3819-4a75-ae45-2b49033a3f01','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM1MzMxMSwiaWF0IjoxNzUwMzUxNTExLjUyMzM3MywiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhN2Y2ZDBjNmIzM2IwIn0.Q_O9L2q51ewEiNO5LlUBIBkvFv4tfUmnX9MjZhUjzYk',1,'2025-06-20 18:03:32',1),('52a7dcc4-2453-47dc-90a8-5d6d9672f59f','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDQwNDQxMSwiaWF0IjoxNzUwNDAyNjExLjg1NjA0NCwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhYWRlNmM1OTg3M2M4In0.ariek0WFCzFsJXsL1GyRu1zGYc6dK9lov6lOT4ewmjw',1,'2025-06-20 18:03:32',1),('5346f508-69a6-4c07-8ad5-760bb1cefab2','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM1NjAxMSwiaWF0IjoxNzUwMzU0MjExLjMwNzUyOCwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhODFlMWE0MTgyMzI4In0.Gb9i0zCLT0sP7LDcA5ZTah1jAoeOHn7PK9WULpMkGQk',1,'2025-06-20 18:03:32',1),('538a8624-dad0-4bbf-96cc-49b20ef5edce','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDQxNTU5NSwiaWF0IjoxNzUwNDEzNzk1LjM3NDg2NCwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhYjgxMmEzNDMxYTY4In0.kEawhKpKO3laYTSRjOyYlpBN15HoIn51VxtSs_YjwtE',1,'2025-06-20 18:03:32',1),('5496a462-2531-487a-886b-e323d3543f6c','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDQxNjkzNCwiaWF0IjoxNzUwNDE1MTM0LjEyNTI5NiwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhYjk0YTU3MDE4ZDY4In0.4qZXuk0_MeRaQfL0st_P7B1PT2t8cMTlNSgZdTcY7Uc',1,'2025-06-20 18:03:32',1),('54a766ec-72ae-4d3a-a825-0d9ef0f31d26','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDQwOTMxMiwiaWF0IjoxNzUwNDA3NTEyLjcyNjkyNywiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhYjI1YmQ4NDM3ZTY4In0.pYMGNm0d4P8HNhenRQeVzQh-MhczESOCmZrAp2B5Sss',1,'2025-06-20 18:03:32',1),('5503ccf4-3a11-481d-b073-81978c51f150','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDQxOTIwMCwiaWF0IjoxNzUwNDE3NDAwLjk1Mjc2NywiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhYmI1YTIwNzNjNjAwIn0.-ly7MriC2oTtwv-ma6rh5LEXiCLiv8zDQumzeP5ZqWA',1,'2025-06-20 18:03:32',1),('55499c23-b124-406a-9b77-cfa0a3a054d8','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM4ODA3MywiaWF0IjoxNzUwMzg2MjczLjYyNjQ0OSwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhOWYwYWJiMzk2YzM4In0.GmkLbQRyuWqTR6M7Tn9gTyoQfWQ6IR6_uf1KCPLsMQQ',1,'2025-06-20 18:03:32',1),('55df1ef0-b0e6-4987-8676-cb055357b0f9','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDQxODU1MiwiaWF0IjoxNzUwNDE2NzUyLjEwOTQ1NiwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhYmFjMzBlNjA4ZTY4In0.b1lTNZtJEG4XZvkvGtnrHKNi8RTarwiHO_RJwn-xaho',1,'2025-06-20 18:03:32',1),('5777a7e4-9507-45a8-90ab-24cc7c1ce3fa','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDQwOTEwMCwiaWF0IjoxNzUwNDA3MzAwLjgwMTc0NSwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhYjIyYTgwODlkODM4In0.UXpkW0zYeR-jkXTt2_huHuvmFhQN1ZjKcRnR_5GZ6jA',1,'2025-06-20 18:03:32',1),('590ca33b-1bc5-4608-aefe-9c5700c42229','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM1MzQ0MSwiaWF0IjoxNzUwMzUxNjQxLjk0NzQxNiwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhN2Y4YjZhNGMyZDkwIn0.7Z_GT79QZ7D7QL5ktAVjvAR6cUybPihcObOf_XEERbY',1,'2025-06-20 18:03:32',1),('5a804247-fea5-404b-bf51-ccc190fed946','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDQxNTc1NCwiaWF0IjoxNzUwNDEzOTU0Ljc2MTEyNywiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhYjgzN2JmNmM4MDEwIn0.4Eh8cjuda_uvVKRS3FPoQ8PKB7NzmTcNpldDG9rbeSU',1,'2025-06-20 18:03:32',1),('5ae73518-54fc-4aa3-a1da-89092eb4fb32','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDQxNzYyNSwiaWF0IjoxNzUwNDE1ODI1LjkzMDcxNCwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhYjllYjY5ZDI4MzYwIn0.mPiuImJmiIFu3FrnL-hmjO1fPVlxkCfTe9sC7GWfQkQ',1,'2025-06-20 18:03:32',1),('5b8482e2-7ec4-41e1-855c-c3bcb141ef91','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDQwNDQyMywiaWF0IjoxNzUwNDAyNjIzLjQ5MDUwOSwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhYWRlOTdiMTA0Y2IwIn0.ROL2WWHW5xLMGrp4MiXH6KnbQiQfWvVmDTPAKuOV8O8',1,'2025-06-20 18:03:32',1),('5caf8619-ad65-43d5-8144-1796d39be922','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM5MjA0NiwiaWF0IjoxNzUwMzkwMjQ2LjY2Nzc5NSwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhYTJhN2M2ZjEzZTIwIn0.M4dT4cn3P3pTYHExNUlQPn_iVeTSVLQmOM_9Ymf5mTk',1,'2025-06-20 18:03:32',1),('5ddbbcde-a1b1-4f1c-a7ca-4ee6a245b2f7','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDQxNTU5OCwiaWF0IjoxNzUwNDEzNzk4LjAyNTQ2NywiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhYjgxMzQxNDAxYzQ4In0.22zxdoozXuu_P861ru54tlMLEBKf_OQxfnHdejwiiqY',1,'2025-06-20 18:03:32',1),('5f58944a-9dc7-4140-83a7-b8dbb550f050','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM5MjE4NywiaWF0IjoxNzUwMzkwMzg3Ljc5OTY4NCwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhYTJjOGEzMGVmYjcwIn0.mlAilxC6iKK7IFWPVSWzANMlIdcxx6R9RFfpPSANQ5k',1,'2025-06-20 18:03:32',1),('6056133a-0015-46d7-8f9b-2299b4bee374','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDMyNDU0MiwiaWF0IjoxNzUwMzIyNzQyLjI5MTUxLCJpc3MiOiJtYXgtaGVhbHRoLWFwaSIsImp0aSI6IjE4NGE2NTQyYjA5MmJhYzAifQ.sJabxUTpAPFQxm-p_rOfWHoOs6_S5UmwEALqhO-D7mQ',1,'2025-06-20 18:03:32',1),('6128639b-3f6d-4583-99ea-b1a6df21376b','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM0NTE5NywiaWF0IjoxNzUwMzQzMzk3LjcwNjUyMiwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhNzgwYmU3M2Y2MTc4In0.eIqSZDh9Dhg5vlUzF6H3Ri0HyRtx1OmIrjbwK9ZNBPs',1,'2025-06-20 18:03:32',1),('612a0912-cde2-4da6-b0ee-292d8c0e0979','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM1NzA2MiwiaWF0IjoxNzUwMzU1MjYyLjI1NTA3NywiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhODJkNjU1NzMxZTU4In0.VwWQhYr2-1LwEYCcAZCC4Dx8u9eL66EjKWFmEacjrZs',1,'2025-06-20 18:03:32',1),('6148d4df-8a11-4daa-942a-6fa91e2fd338','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM4ODE3NiwiaWF0IjoxNzUwMzg2Mzc2LjE5ODk2NSwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhOWYyMjlkMDVjZWQ4In0.F8hLStFFwP1XTCvfD6QBabudITGvOjWT4MrgsdqMTvQ',1,'2025-06-20 18:03:32',1),('62020c9f-a854-4369-985e-e8da23b6fc28','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM1NTczNywiaWF0IjoxNzUwMzUzOTM3LjM1MDY1NCwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhODFhMWRhZmUwMDAwIn0.LSO9zHfterxCFpM6YrXhmONsqJ91c91C2-8gYJxXZ9Y',1,'2025-06-20 18:03:32',1),('63373607-b349-4b6e-b32e-eea32849ef3a','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDMyMjc2NSwiaWF0IjoxNzUwMzIwOTY1LjMyMTExMSwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhNjNhNGY0ZTI1NTE4In0.FQI9Fxlbz8OxWp8GNusrCjl2WnhX02weyh5slmJ20tk',1,'2025-06-20 18:03:32',1),('633cdbc2-9d2f-4946-b853-d8c2e8f3bbdd','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM1NDMzNywiaWF0IjoxNzUwMzUyNTM3LjA3NDk1OSwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhODA1YmQ0MTA1MzcwIn0.ogmF_YYMpazCa-5ZrjrKlS3_Lzs-8hG2PXt9cGgyb7s',1,'2025-06-20 18:03:32',1),('63585900-fcdd-4082-93ea-e62392d1c653','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM5Mzc1MCwiaWF0IjoxNzUwMzkxOTUwLjQzMTI4NywiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhYTQzNDc3MjhmYWMwIn0.qlgeC0E_zNQhSPmcONBZ3vS5LyTpbRcW4FeqoPkLu1g',1,'2025-06-20 18:03:32',1),('640e6b4a-8ebb-4754-8d70-2ae581a15228','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDQxNTU5MiwiaWF0IjoxNzUwNDEzNzkyLjM5NzE1OCwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhYjgxMWYxYzZlYTU4In0.2ilXFFxN1PZ7iL7Idto90US2-FkExG1EVMoJ4WQRX_M',1,'2025-06-20 18:03:32',1),('660bab62-1197-4ea2-83eb-79e2448d3b8d','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM5NTgwOSwiaWF0IjoxNzUwMzk0MDA5LjA1MDEzNywiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhYTYxM2M2NjdjNTkwIn0.LBmE8pD7-3-yUNvJr7OqxNyL0QTlYUO1GnpDo_zi1jI',1,'2025-06-20 18:03:32',1),('662c35bf-e124-4fe3-946f-c79a69a942b9','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM1MjI3NywiaWF0IjoxNzUwMzUwNDc3LjI5MTkyMSwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhN2U3YzNmNmJhNjM4In0.X3nVHBVHl0yLR1ZNHoXk7aLzzaSwn63JXb4nBH79PvU',1,'2025-06-20 18:03:32',1),('6654728d-8d47-438e-9803-0c983c279cdc','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM1MzMxMSwiaWF0IjoxNzUwMzUxNTExLjczNzUzOCwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhN2Y2ZDE5MmYxZGEwIn0.6rMqurR4aDelJV-cvuDnxEi4FMKqdS30HFo78SHzgac',1,'2025-06-20 18:03:32',1),('68f30800-1d57-4598-a3df-9f808acd1200','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM1NzA1OSwiaWF0IjoxNzUwMzU1MjU5LjY5ODc5OCwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhODJkNWJkMTU2MTk4In0.opS8YtHW55bQR43r-KBeFkvxfjU-PSGLgBVmYd8Hxzk',1,'2025-06-20 18:03:32',1),('692ae4a0-d8ff-4f0c-8c86-e52d7aa29ded','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM1NjQ0MywiaWF0IjoxNzUwMzU0NjQzLjIwOTQyOCwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhODI0NjMzNzQyYmMwIn0.Hu_cocX94cY_vJAt3OEEXbgA1zhSthmzxfw6mWAOy6Q',1,'2025-06-20 18:03:32',1),('6a757b4a-7b5d-450d-934f-6bac274394d6','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM5MzM2NCwiaWF0IjoxNzUwMzkxNTY0Ljc4NDM3OCwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhYTNkYWFjZDAyODYwIn0.t0t0-6Yq06UQ0IITrA7Hgz6G5ChcywgLDyjbMRUIlbM',1,'2025-06-20 18:03:32',1),('6a876796-2e7f-4813-8757-83590bc87470','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM1NDM0MSwiaWF0IjoxNzUwMzUyNTQxLjQ5MjE5NCwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhODA1Y2RiNTgyZWI4In0.t7GjtHeUmnlCF7vm2TGdjc3gBQE22vAmZTU0VgvbBgQ',1,'2025-06-20 18:03:32',1),('6b6aaca4-5f95-4481-b17d-c06d714f0009','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDQxOTEwNCwiaWF0IjoxNzUwNDE3MzA0LjIzMTU3OSwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhYmI0MzliNmI5MTYwIn0.T3hv4_UscVYYlEhewbfv6X7XhsLQxyHHHaZKXa_3mOI',1,'2025-06-20 18:03:32',1),('6d93df43-c0b4-4141-8744-cb13c12416ed','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM5MjU2MSwiaWF0IjoxNzUwMzkwNzYxLjc0NTEyNCwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhYTMxZmIzZjE5MjcwIn0.h_rfZ_Du-auAvqAuPhtMCc2RgIffmx0wASJkey4-Yqw',1,'2025-06-20 18:03:32',1),('6dc58145-cc54-4d37-a9c1-cef421a8db98','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDQxNTc4MiwiaWF0IjoxNzUwNDEzOTgyLjM2NjYyMiwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhYjgzZTJjZDZmMGQwIn0.iArN6EbTy4YR4HC9VtkbDUGiPahSkiZh8z-gwKFMt68',1,'2025-06-20 18:03:32',1),('6e3a18d5-5afa-4b2d-9431-3edfd51f35fc','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDQxODU1MSwiaWF0IjoxNzUwNDE2NzUxLjgxMjkwMSwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhYmFjMmZjYjM4MDU4In0.r0Wy34hobHfB_TD_dfB--PWtOcOpvYJH-PR54sqmlRk',1,'2025-06-20 18:03:32',1),('6ebf9996-23d7-4c59-a3bd-105a762664c6','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM1NjU0MywiaWF0IjoxNzUwMzU0NzQzLjIyMjQ4NCwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhODI1ZDdjYjI0MDA4In0.BlOOVV2jiOM27x1iFbfMHGYmkfSQrooN1OnDMoQCseo',1,'2025-06-20 18:03:32',1),('70f581bb-07e8-4134-ab04-1b86e1d83757','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM0NTE5NywiaWF0IjoxNzUwMzQzMzk3LjU2ODk5MSwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhNzgwYmRmMGNkMzAwIn0.ljynhFF9szvmgMgAUaTiPh9Kba30kY5hu87BmCw_8ik',1,'2025-06-20 18:03:32',1),('71852daa-15f7-4574-8e7c-2280bdfbe4f6','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM1NTUwMywiaWF0IjoxNzUwMzUzNzAzLjQ4NDMxNCwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhODE2YjY3NzhlY2U4In0.X_kUvSYlo0jnQb3CdtlkDo3y4KSqfwI27ZnTSj9IG_M',1,'2025-06-20 18:03:32',1),('73030f22-2ade-4729-ad5f-0b17ef02e6f6','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM4ODA3MiwiaWF0IjoxNzUwMzg2MjcyLjY5MDE0NiwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhOWYwYTgzNmE4ZWI4In0.r0aXtE1EyiB4VxHPC95rqiyPRClEKYXh7aNCJA8NT9E',1,'2025-06-20 18:03:32',1),('731f1470-de28-40fe-80df-817c810ad6c6','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM1Njk0OCwiaWF0IjoxNzUwMzU1MTQ4LjM2MTc3MywiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhODJiYmQwZTEzM2IwIn0.FsTt0C3W7YNrON1cuOqjGj0j0Oz6baC5tNysmKigMw8',1,'2025-06-20 18:03:32',1),('73dafdde-393d-48fa-bfb8-05ffb0544ec0','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM1MjM3NywiaWF0IjoxNzUwMzUwNTc3LjY4NjkzMywiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhN2U5MzlmNmRmNWQ4In0.ZGSsmxFy4gBRBICVDgp5s_kpSmZtkNhubL-y0QLrRmw',1,'2025-06-20 18:03:32',1),('74e28dcf-b07f-4360-a8ed-93291faa9e55','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM4NzcyMiwiaWF0IjoxNzUwMzg1OTIyLjgyMDg5NiwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhOWViOTBkOTU3OGU4In0.BF_c4VSrgzLbimTepjvJcOhpB6SjuA5D9H6siY4TajE',1,'2025-06-20 18:03:32',1),('763cc208-eec6-470c-8565-49e89a0ffd73','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDQxOTExOSwiaWF0IjoxNzUwNDE3MzE5LjQ0ODE5MywiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhYmI0NzI2NjZlYTUwIn0.o1spDg6PKUaZeihyNzrZahmSzGLr2c-5-ZSPFy25Vao',1,'2025-06-20 18:03:32',1),('7641f2ee-d77d-42e8-a6c6-79f5a1554f04','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM1NDMzMCwiaWF0IjoxNzUwMzUyNTMwLjYyNzA0OSwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhODA1YTUzYmIzYTEwIn0.ST4j_rkfCb0YsvqDqamRWuRnAcypYYzINz9T-x1goEk',1,'2025-06-20 18:03:32',1),('764c9878-3797-436d-85ef-f9f7515ce25d','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM1NDk5NywiaWF0IjoxNzUwMzUzMTk3LjgyNzA5OSwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhODBmNWFiZjQxMTQ4In0.lDxyBx6Xq2Avp5Y0qDVCtFknDah-IG7F1gDO5jeQm0Y',1,'2025-06-20 18:03:32',1),('7655fe58-3094-4263-8f42-311f0c218c8b','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDQwOTM4MiwiaWF0IjoxNzUwNDA3NTgyLjU2NDU4OSwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhYjI2YzFhZTliZDA4In0.QnLc6TSmTiEakR1uBwJ7TFwVLjEPrwv4KH9yOPDN6bE',1,'2025-06-20 18:03:32',1),('7698baa4-76ed-4e58-825c-8b3f468361e8','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM5MjM4MCwiaWF0IjoxNzUwMzkwNTgwLjg1NDU4MiwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhYTJmNTk2MDZmMmMwIn0.IeKrTGk9JMLoeX2Xvx6R8Sv0FZGG_o02SKwN6zFY7LU',1,'2025-06-20 18:03:32',1),('76a01895-4d06-4e58-a61e-cfb8b273c2c0','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM1NjQ0MiwiaWF0IjoxNzUwMzU0NjQyLjk5MDg5NywiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhODI0NjI2NmRhMzIwIn0.MvYvuQYiz_CLFYKQTtA7WLC1Mv47boKAxPrM1PzIG1s',1,'2025-06-20 18:03:32',1),('7a2a56d7-4710-48f8-921d-e0bc79ee66e7','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDQwOTM4MiwiaWF0IjoxNzUwNDA3NTgyLjY3Nzk3NSwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhYjI2YzIxYWJjM2MwIn0.TCnHNxGO83TW0PiLbxOlfoJOEXjsIgIe0NOPE5JtPKo',1,'2025-06-20 18:03:32',1),('7b0c922c-991e-4489-bd61-3cd4dc2d9ed8','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM1Njg1MywiaWF0IjoxNzUwMzU1MDUzLjkyMTU3OCwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhODJhNWQzY2UyZmY4In0.HJWLLcLe5fEkE3y5lBeo20HJHskpFrStARIePKZYiho',1,'2025-06-20 18:03:32',1),('7d86910a-32b7-4a5c-9492-2136b484cb9e','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDMyNDU0MiwiaWF0IjoxNzUwMzIyNzQyLjM3OTQyNSwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhNjU0MmI1ZDAzMGQwIn0.nPNHIYBjfKIVeRiAJkoZFxvq5P_csFw09L5yI8yv5HI',1,'2025-06-20 18:03:32',1),('7db846a9-a471-4b6e-aeef-013a9f9e056d','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDMyMzQ1NSwiaWF0IjoxNzUwMzIxNjU1LjAyMzU1MywiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhNjQ0NThhNWE1NWEwIn0.v7R_qkJoyVdnrUXfQrqDb2yDEBrhiMaDnbfKLux6DcA',1,'2025-06-20 18:03:32',1),('7e7d4722-1da6-434e-94d2-d154dd973bcd','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDQwMzY2NiwiaWF0IjoxNzUwNDAxODY2LjcyMjMyNSwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhYWQzOTQ4MmEzOWQ4In0.laSa1J60GgqK4ylxS0zqFYZ7wTJBLGxMSBXpLWdBFiI',1,'2025-06-20 18:03:32',1),('816185b6-8e4c-4809-a76a-48201a539e54','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDQxNjQyNiwiaWF0IjoxNzUwNDE0NjI2LjYzODY1NywiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhYjhkNDJlNzIzYzM4In0.y7GGTc-wTsoKMx8Uck76Y-VWIC3yf_zFQ8pXdYM7fzc',1,'2025-06-20 18:03:32',1),('818123b8-ce34-49ad-8a3f-9391c6481d76','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDQwOTMwOCwiaWF0IjoxNzUwNDA3NTA4LjYwMjk5LCJpc3MiOiJtYXgtaGVhbHRoLWFwaSIsImp0aSI6IjE4NGFiMjVhZTI3NTM1ODAifQ.8WxQ_x7Sv9vPW7TPp_ngJOV2OPC2bXXZQ7LIjk8wdro',1,'2025-06-20 18:03:32',1),('8188f58d-549c-430c-8629-11bac34ab6c7','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM4NTcwNywiaWF0IjoxNzUwMzgzOTA3LjIxMjkxMiwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhOWNlM2MxZmM2ZDUwIn0.EMdOfdmK252T765py8g_Li37LOcItqEaSY0RNAtAwnI',1,'2025-06-20 18:03:32',1),('838ab34e-f47f-4411-be51-e847b961ef13','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM5MDYzNywiaWF0IjoxNzUwMzg4ODM3LjMwOTI1LCJpc3MiOiJtYXgtaGVhbHRoLWFwaSIsImp0aSI6IjE4NGFhMTVmYTJhMDgxYTAifQ.vzm7oFiQv7KjNbOsMlEiqAnyfnCnXlw1l2UlD2C3Nwg',1,'2025-06-20 18:03:32',1),('83d749f6-a396-4cc6-93d2-32fe5a06d926','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM4Njk2OSwiaWF0IjoxNzUwMzg1MTY5LjMwNjI5NywiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhOWUwOTljOWQyNjkwIn0.nPsGXM_mMv0GO6Ztnn_iffMb9HIyKpHrlvtrp-WItaw',1,'2025-06-20 18:03:32',1),('8526d42c-b12e-4c14-b133-e8c23aafd982','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDQwMzY2OCwiaWF0IjoxNzUwNDAxODY4LjgxMzQwOSwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhYWQzOWM0Y2RhMmI4In0.dBoycAhJUzr59kpi11eKRkfFxcrECJidYm6Pzumyt5U',1,'2025-06-20 18:03:32',1),('852c488c-f85e-42e7-bb61-b2bbc4ce728c','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDQxNTU1OSwiaWF0IjoxNzUwNDEzNzU5LjgzNTcyNCwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhYjgwYTVjZjcxYjQ4In0.PVi7GcCrHrGi78p3yB-ls2d-ShcIjoHB8FST2dPOurY',1,'2025-06-20 18:03:32',1),('87941467-39b4-415c-b9ae-e56bff146329','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDQxNzUzMiwiaWF0IjoxNzUwNDE1NzMyLjc1ODk5MiwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhYjlkNWI4NWFkODY4In0.-MM-Vh6p9bEP--ButXvAWe8SqZoSXidTUBuIXbeM2ss',1,'2025-06-20 18:03:32',1),('8e48d46a-36c7-4e54-9bdd-e0c3a0d1089b','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM4NjI0NCwiaWF0IjoxNzUwMzg0NDQ0LjcxMTE1LCJpc3MiOiJtYXgtaGVhbHRoLWFwaSIsImp0aSI6IjE4NGE5ZDYwZTc2MGFkNjgifQ.RxdEBtP-KMXhzjvdz1j7Z3F1dtg92pVyaVDjdKShg0Q',1,'2025-06-20 18:03:32',1),('9194de96-65c9-4aa1-9657-f0dd2f5b12d1','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDQwNDA0NywiaWF0IjoxNzUwNDAyMjQ3LjA0NzY1LCJpc3MiOiJtYXgtaGVhbHRoLWFwaSIsImp0aSI6IjE4NGFhZDkxZDU1MjI2ODgifQ.W8qOl6osK7MmXXWZ2X6dF3uhlqWHirS0BVvtZR02l_Y',1,'2025-06-20 18:03:32',1),('91bf7b02-c14f-4b1f-b433-3c85c419a6df','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDQwOTMxOCwiaWF0IjoxNzUwNDA3NTE4LjU3MDIzNiwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhYjI1ZDM0OGQ0YzQ4In0.Ig_yboB9KbGQIqeVeAI2Vm2FlN0TguyWO6UMM65-ppA',1,'2025-06-20 18:03:32',1),('924d332d-7361-4c65-a184-55c1ffbb9116','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM1Njk0OCwiaWF0IjoxNzUwMzU1MTQ4LjIzMjI4MiwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhODJiYmM5Mjk1ZjMwIn0.eNjJG5ALidY9Ey-5hOkiWV8fWBON0qyQ95u-AA8AhZA',1,'2025-06-20 18:03:32',1),('94f089a8-74d3-41a4-ae13-dfcce521e56e','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDQwNDQyMCwiaWF0IjoxNzUwNDAyNjIwLjQ4ODY3NywiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhYWRlOGM4MjNmYTcwIn0.y-NMCIATe-FzVT6Enm01E98eRyTYWwIXaPoeEdwC4yQ',1,'2025-06-20 18:03:32',1),('96fef975-fb1f-4be5-a6bd-55217d199473','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM0NTE4OSwiaWF0IjoxNzUwMzQzMzg5LjU4MDQ1NiwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhNzgwYTAyZTU3NDI4In0.Z4k8A1yTA-v6wLbSMKEJrGZ23mLPToJMW3cUhfR4nZk',1,'2025-06-20 18:03:32',1),('973428c7-c4e0-449b-8405-9d648cb597bd','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDQwOTMxNSwiaWF0IjoxNzUwNDA3NTE1Ljc1NDczNiwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhYjI1YzhjYmMzMTUwIn0.UjTOHpVfQB0eutT-MtjmlAJdjOB65bwdczz78ZjAH0g',1,'2025-06-20 18:03:32',1),('97b63dfd-544f-4735-97a8-2ee1fa6d127e','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM1MTgyMCwiaWF0IjoxNzUwMzUwMDIwLjk1MTI0OCwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhN2UxMWZmNjU5MDY4In0.cN0f7ZVnZTDFxZrwYWtcFMbVTQUPyT4vxlCbLi1qBII',1,'2025-06-20 18:03:32',1),('98801b17-9457-4545-ae68-0295e99d2e0e','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM1NDExMywiaWF0IjoxNzUwMzUyMzEzLjcxMzQ0NSwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhODAyN2QyYWM1MDU4In0.gdhBDkm-4wVXHefawLcaWzQEENw-e1neWD8qIL24_Ws',1,'2025-06-20 18:03:32',1),('9a4423ac-9f09-4a00-84fb-a4daf4ebc604','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDQwMzYxMCwiaWF0IjoxNzUwNDAxODEwLjgzMDkwNSwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhYWQyYzQ0YzZkMjkwIn0.JQEuW8ZzGCnBZMbw1DcupgUVdaGk21PyfJRIlFcYjHQ',1,'2025-06-20 18:03:32',1),('9b32f008-47ef-45cf-96d0-98420e529ccb','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM4NzM2MiwiaWF0IjoxNzUwMzg1NTYyLjA4NzE4NiwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhOWU2NTEwMmRlYTA4In0.bFfi8sic3QHQIw1i8UJCHK67vudzd-H9c0DweWXvWWA',1,'2025-06-20 18:03:32',1),('9e8f43b0-8aa5-44f5-9193-623d7501dcb4','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM5MDc2OSwiaWF0IjoxNzUwMzg4OTY5LjczMDgzMywiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhYTE3ZTc3OTE4MjM4In0.d1qEgwNzl218t2sRrX2fccVbLpV8lBF1QtuUbkL9ufE',1,'2025-06-20 18:03:32',1),('a0738533-f3ac-474a-ba0b-670b6978ea08','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM1NzIxOSwiaWF0IjoxNzUwMzU1NDE5LjEzNzA1NCwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhODJmYWRjNTgxZDAwIn0.sxIy2AY4Rfy3I_MKGzeW2Xd-K9DcfxalgXQifatts2s',1,'2025-06-20 18:03:32',1),('a1006cda-a419-41ef-9804-75f5b74021a3','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDQwNDQxMiwiaWF0IjoxNzUwNDAyNjEyLjE5ODc2NSwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhYWRlNmRhMDY2YWUwIn0.-bqs5rZNo4lIEQhVzjr2HTal-UCK0uwjlGpPErZ3p7Y',1,'2025-06-20 18:03:32',1),('a17d5b02-d531-4ea0-b74a-79d9d6d16d94','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDQxNTU3MywiaWF0IjoxNzUwNDEzNzczLjk1NDYzMSwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhYjgwZGE2ODQ0ZDI4In0.7lLrxiObAO5q_SiH9_V_HPz6jLqo83D0lXd29ea4qf4',1,'2025-06-20 18:03:32',1),('a24f0309-ff3c-438f-846d-baade82f7cc6','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDQxNTc1MSwiaWF0IjoxNzUwNDEzOTUxLjg5ODA0NCwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhYjgzNzE0YzU0ZTMwIn0.6HFh_2rIjawZAeIiSX4Kb5YbmrdB_Vjj9vZwzYoilI4',1,'2025-06-20 18:03:32',1),('a273eb64-d975-4cb1-8d3a-a9be5b2492b7','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM1NDYxMywiaWF0IjoxNzUwMzUyODEzLjYwMDM5OSwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhODA5YzM2NDFlMjgwIn0.xYeAau9BsyKQsaJOsVqm0mIU1xW5NNunizhzZ2S3Moc',1,'2025-06-20 18:03:32',1),('a38442ad-024d-455a-a796-e8c3175e8409','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM1MjY4NywiaWF0IjoxNzUwMzUwODg3Ljg3OTYyLCJpc3MiOiJtYXgtaGVhbHRoLWFwaSIsImp0aSI6IjE4NGE3ZWRiZDg1YWJkNzAifQ.K00LHi9KZOBPs2PeIRbuigvCswwOjR6dPv9OaIncAWQ',1,'2025-06-20 18:03:32',1),('a3c3f1c8-97dc-402e-90a1-6deca936fa3c','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM1MjM3NywiaWF0IjoxNzUwMzUwNTc3LjkyNTU0OSwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhN2U5M2FkYTZmMzk4In0.8jST2msx-tVORU9wBojWHEplW0T2nMIpLeTMWIa-XYk',1,'2025-06-20 18:03:32',1),('a5d7e909-a96b-45f1-96f9-422a252c6ddf','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDQwNDg0NSwiaWF0IjoxNzUwNDAzMDQ1LjA5Njg4MiwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhYWU0YmE0YzMwNzIwIn0.6B7NE0zhWFQX5e5yKgaq4f9RLTEMkijurJnhIx1qNzU',1,'2025-06-20 18:03:32',1),('a8650dfa-aa87-4f52-8e3d-58e19b7b8654','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM4NTI2NCwiaWF0IjoxNzUwMzgzNDY0LjM0NzA3OSwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhOWM3Y2E1MjAyMGY4In0.2dsa6E9XEzeQQEgKtQq3osd5DFO50gJ_I9nduSU2taU',1,'2025-06-20 18:03:32',1),('a90340e1-b840-4e2c-822e-f13086f07e37','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDQxNzYyNiwiaWF0IjoxNzUwNDE1ODI2LjE3ODkwMSwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhYjllYjc4OWQ4N2YwIn0.duKDnpF6g0QwHYYGVMRKzS0hwZIeKmTgV788R3lR3mM',1,'2025-06-20 18:03:32',1),('aa69742a-c55c-4f9b-bc1c-ce7fe5bd0985','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM1MTg1NywiaWF0IjoxNzUwMzUwMDU3LjYxODUyNywiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhN2UxYTg4ZWZkYWU4In0.Q5BRQB2i8IoNQbDjj3Gql_RvupBEtDacQ3HNewS6Ykg',1,'2025-06-20 18:03:32',1),('abe83120-e034-442f-976a-a735417fb122','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM5MjM4MCwiaWF0IjoxNzUwMzkwNTgwLjU1Nzg4NywiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhYTJmNTg0NTdiYTAwIn0.nXRazn5idJRyj3iynZY4DbQ_SX902RT8DD-6-3a93A4',1,'2025-06-20 18:03:32',1),('acc1edae-d21e-4ffd-8376-ec48a0ac9389','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM4NTYxMSwiaWF0IjoxNzUwMzgzODExLjMxNDg2MywiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhOWNjZDZlMDQ0ZjgwIn0.09Y1H8AcWdADCDDO-mTQ9lNb_bsWT-2d_lqO5x0dPrc',1,'2025-06-20 18:03:32',1),('adc4b925-d660-401a-ac8b-814f0bd6e0b0','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM1NjAxMSwiaWF0IjoxNzUwMzU0MjExLjE4OTgxOCwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhODFlMTlkMTQwNjc4In0.76rQEOs65c0Kk1oQQbQ6_qRnji498YsaM2J8iLqulHU',1,'2025-06-20 18:03:32',1),('adf55681-11e3-42b1-a6b6-7375c33d8cb2','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDQxOTExNSwiaWF0IjoxNzUwNDE3MzE1Ljg0NjkyNCwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhYmI0NjRmYmZhYWM4In0.qXJwCi5IrulNcncZvQmb2miIo_auIEhJg2MwNqPgoU8',1,'2025-06-20 18:03:32',1),('af4f4a3e-bfeb-4caa-b684-cf637cb1a163','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM5MzM2NCwiaWF0IjoxNzUwMzkxNTY0LjQzOTk0MSwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhYTNkYTk4NDg3MzcwIn0.RbgjqF2lV7f-Axa5wlu6caX4kip8NmBXWKVpFLt5oJQ',1,'2025-06-20 18:03:32',1),('afdb6229-8a44-4a85-941f-d92274603402','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM1NTc3MSwiaWF0IjoxNzUwMzUzOTcxLjY1NzUzNSwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhODFhOWQ3ZDc5OTEwIn0.7XhhYc2LkxB9T0Gdzla2l4izXmFwQYYYKiWHrz_R9sA',1,'2025-06-20 18:03:32',1),('b012ce80-a632-4979-9d10-6b6361139ead','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDQxNjMzOSwiaWF0IjoxNzUwNDE0NTM5LjI5Nzk1MiwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhYjhiZmQ4ODg5OGQwIn0.IVSAcHIXh8fWr99C3hRZIuAHVkgZZz_cWsB89i85MYM',1,'2025-06-20 18:03:32',1),('b0dbec65-339f-4dc2-8358-08c7a8e741e9','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDQwOTMxMiwiaWF0IjoxNzUwNDA3NTEyLjU4NjY0NSwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhYjI1YmNmZTZmOWMwIn0.ReTDkmZVw6lHIx_WtFbv_5d_0LkqYC8as8jpP4aYhBk',1,'2025-06-20 18:03:32',1),('b110c79a-9990-4dc9-a9dd-0b0048628ebd','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM1MTgyOSwiaWF0IjoxNzUwMzUwMDI5LjgzNTI1NSwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhN2UxNDEwZWNjNGE4In0.xQcWL4-Dxbmt0rb4ep3v0P1x1e7PWxsFVRVA6r5nqwM',1,'2025-06-20 18:03:32',1),('b141cd39-6cf7-4137-a0bd-08ee4ea5a929','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDQwOTM3NywiaWF0IjoxNzUwNDA3NTc3LjYxMDA3NCwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhYjI2YWYzOTliZjYwIn0.Sq7Ihs5GP9J6aG3o8VAN3abtmK8bkldgKc8qFeip_wc',1,'2025-06-20 18:03:32',1),('b1c66798-c063-4045-929c-862e7035cb8a','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDQxNTU3MiwiaWF0IjoxNzUwNDEzNzcyLjQxNDg3NSwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhYjgwZDRhYmQ3OTYwIn0.PcFJ7ldWzLLAJgE4KP47rJ43J1HoNLkMwYhx-P6vJgY',1,'2025-06-20 18:03:32',1),('b42e9124-4d75-4f7d-9c52-b75f30f8527a','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM1NDk5MywiaWF0IjoxNzUwMzUzMTkzLjYyNTA2NSwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhODBmNGIxN2UyMWUwIn0.HIfk2ICkeHKA9HhWbWRKK8-zLHccrhG2jNMtXBFr8bw',1,'2025-06-20 18:03:32',1),('b5b1363c-42cd-4415-9f71-2a0b8fbb4e1a','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDQxNzUzMywiaWF0IjoxNzUwNDE1NzMzLjkyNzMzNywiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhYjlkNWZkZmU2MDEwIn0.ID0RC-d45twvz7mQFxlD4H1xV4pur6M3nOCgC5g82Rk',1,'2025-06-20 18:03:32',1),('b861992d-a920-4439-99a7-74323981fbdc','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM5NDAyNSwiaWF0IjoxNzUwMzkyMjI1LjY4OTY2MSwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhYTQ3NDhkZDY3MjMwIn0.1lC7sANogSY69lBgW6x7s5PBeJBxv93GrQcqvAezv3Y',1,'2025-06-20 18:03:32',1),('b8e24b03-ff26-4647-8c4b-645d648e285e','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDQxNjQxNSwiaWF0IjoxNzUwNDE0NjE1Ljc3OTM4MiwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhYjhkMWE3MmU5YWMwIn0.ysge6IBsLBBeda8CYrS8WzB7YOfH9yM2xDy5r2e7dAQ',1,'2025-06-20 18:03:32',1),('b95ef46f-5232-4a06-86b1-0885fd8b24a6','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDQwMzQ3MywiaWF0IjoxNzUwNDAxNjczLjM0MDg0MiwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhYWQwYzQxYmFmM2Y4In0.5g0FHQzsv2ivomKIRGy36wML531I9TzpZHSwWHoVj-Y',1,'2025-06-20 18:03:32',1),('bc534383-58b2-4ad2-8657-c9213b335e93','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM0NTE4MiwiaWF0IjoxNzUwMzQzMzgyLjU3Mjg2NSwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhNzgwODYxMzYxOWQwIn0.VkbqRzHsj-_YyKV34ULsvbsx7msFvp6SS692tM0s79Q',1,'2025-06-20 18:03:32',1),('c09d558f-7f42-4980-b053-c40ba1863c69','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDQxNzU0OSwiaWF0IjoxNzUwNDE1NzQ5LjgwMjAwOSwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhYjlkOWIwMzJhNTkwIn0.hGf1YiHy2aeSch-nQzHXTSvV4UNpY9wDj_h-4UMQCpk',1,'2025-06-20 18:03:32',1),('c0ba9d24-8311-4c9e-bcac-9f1daff8438a','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDQxMjQyOSwiaWF0IjoxNzUwNDEwNjI5Ljc4NTQ4MSwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhYjUzMTk3NmU3YWUwIn0.DRM84C2sqkDzH5twqsqEaI4Nz7LcJqqCN7vaGplopIk',1,'2025-06-20 18:03:32',1),('c210b5bd-13c1-4d62-b00b-11064c0e4c60','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM4NjY3OSwiaWF0IjoxNzUwMzg0ODc5LjU5OTg4NCwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhOWRjNjI4YzQyMjk4In0.B_2HA2DFSXrsHK2kQFiJ3SuDeHDiZk-qhNiEZGlcmC4',1,'2025-06-20 18:03:32',1),('c246f040-4d14-428f-be39-b6b3e294af8e','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM1NjcxMiwiaWF0IjoxNzUwMzU0OTEyLjM0MDQyNiwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhODI4NGRjZTk0NGUwIn0.5vCYdMbPu-ZFZ5DqFdaloP78pOUaqYk1tcpz1eyQIrk',1,'2025-06-20 18:03:32',1),('c2fcc527-cf95-40de-b33d-41eec7b552b3','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDQxOTIxMiwiaWF0IjoxNzUwNDE3NDEyLjM3NzcxNCwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhYmI1Y2M5NmVhNTIwIn0.7mLFyHbs_2OnVRx5CVUGh5CXs9kBw9NHqogkXGDIc1g',1,'2025-06-20 18:03:32',1),('c371fd8c-3f9f-4910-8f17-e338a1af8c1a','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDQwOTMxMCwiaWF0IjoxNzUwNDA3NTEwLjc5NzA0OSwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhYjI1YjY1M2JlMDkwIn0.sH0OwSN9r3aynP093Yc9xbbGaCuVHhHJdamKxpZF_kY',1,'2025-06-20 18:03:32',1),('c5820d39-dd01-4a78-95c0-ed5eb2874a64','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDQwNDgzNiwiaWF0IjoxNzUwNDAzMDM2LjQxMjY0LCJpc3MiOiJtYXgtaGVhbHRoLWFwaSIsImp0aSI6IjE4NGFhZTQ5OWYyNDAyZDAifQ.XV5LR4-5PmxjJzbGOzO9OdZRaFxIynIQmXLgBQe5ATQ',1,'2025-06-20 18:03:32',1),('c6577802-ceff-44f8-81a5-a19a12f45bc0','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM1NjgzOSwiaWF0IjoxNzUwMzU1MDM5LjgyMjg2MSwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhODJhMjhiNzRkYTk4In0.X27JgU5kT6u2QpHWjnWuTp_rB58QZM6LpmZ-PcY9dmM',1,'2025-06-20 18:03:32',1),('c74a57d8-589e-4ee0-acc2-6643257eff2a','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM5NDE2NCwiaWF0IjoxNzUwMzkyMzY0LjMyODI1NiwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhYTQ5NGQ1NTc4OWQwIn0.-fDgjZxxBqa9QoA39CquP-LG3p-JEj8TlrU0DeYZDtU',1,'2025-06-20 18:03:32',1),('c78e82ba-3d21-4666-9bf3-12280cad24bd','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDQxNTcwNywiaWF0IjoxNzUwNDEzOTA3LjYyODI2MiwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhYjgyY2M2MTYwNjU4In0.VawTR4D-1BF6bUssIIUil3fgQq5UPmI-qvdzlPXea1Q',1,'2025-06-20 18:03:32',1),('c810ab03-53e4-4b1b-8e64-c7c8bd374e34','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM4NzkzNCwiaWF0IjoxNzUwMzg2MTM0LjY0NjUzMSwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhOWVlYTVmNjAyYjg4In0.3T0PnTbfWTlRpdpT8XvALh_f6IdWmIOIqw_tRjRu5p4',1,'2025-06-20 18:03:32',1),('c9d4ffbf-10bc-494b-abad-01dc098d214c','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDQwMzQ4MiwiaWF0IjoxNzUwNDAxNjgyLjE1MDU4OCwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhYWQwZTRlZDUwMjQ4In0.YK-pae6mGmS5A4yXHSdzbpF0d5RE-sCb4wAfB3MmzvI',1,'2025-06-20 18:03:32',1),('c9ec56a9-1638-4d33-9049-c3a7353d5f83','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM5MDkzOCwiaWF0IjoxNzUwMzg5MTM4LjkwNjgxNywiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhYTFhNWRiM2UyZGEwIn0.vhsYyUgvjf50Dmy9BEE3vYbqB5pptg1gaCrcnptJ-rU',1,'2025-06-20 18:03:32',1),('cbd4c8bb-d9bc-4f56-85a7-21bb91de787e','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM5MzYzMCwiaWF0IjoxNzUwMzkxODMwLjE2OTI5MywiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhYTQxODc2ZmM5ODk4In0.1IwGWiLrXjmXYY6iC0ByCyB0rYUbFjt0QmU_sU3BgWM',1,'2025-06-20 18:03:32',1),('ce5b568a-3d5e-4d15-a11e-1011c95c1347','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDQxMzU3MiwiaWF0IjoxNzUwNDExNzcyLjM5Njk5MiwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhYjYzYmEwNjI3ZGQwIn0.2wy0VWwaKGOWGAHJhhVzhgF-wT_4_kBEH203rotLiLQ',1,'2025-06-20 18:03:32',1),('cfa4ef1f-eae1-4d58-a139-bb0611a75c71','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM5MjM3MCwiaWF0IjoxNzUwMzkwNTcwLjgzODA4LCJpc3MiOiJtYXgtaGVhbHRoLWFwaSIsImp0aSI6IjE4NGFhMmYzNDBmZjQxZDAifQ.M4X8mbq0o50WLtWgTy3T0Vm8J9dG5lp3fBvRVyYtbzc',1,'2025-06-20 18:03:32',1),('d08c927f-2a25-4022-a0d9-9231c5334310','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDQwOTA5NSwiaWF0IjoxNzUwNDA3Mjk1LjQwNjg0NSwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhYjIyOTNlZmEzMDMwIn0.NQR9dPqOJzWLMat5obkUC5_6LcGk5TyBG8asdE_7pBg',1,'2025-06-20 18:03:32',1),('d47e92ca-0cd6-4ce0-823e-857b2d25e4d1','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDQxNTcwNywiaWF0IjoxNzUwNDEzOTA3Ljc2OTkyOSwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhYjgyY2NlODdiNGY4In0.vjr2EvvuGaAZue2mw4ilOrFmCXgXa1hsa8BQwW2gtLk',1,'2025-06-20 18:03:32',1),('d6b97d78-af81-499e-81ea-af174b1ae337','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDQxNjMzOCwiaWF0IjoxNzUwNDE0NTM4LjAzNzM1LCJpc3MiOiJtYXgtaGVhbHRoLWFwaSIsImp0aSI6IjE4NGFiOGJmOGQ2NTU2NDAifQ.527gn0ZlJqtM83j51HtdZqibrE7zYLljoehBUEwmRxE',1,'2025-06-20 18:03:32',1),('d7580b39-1f92-4949-93cc-1e40fc965d0e','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM1NjU0MywiaWF0IjoxNzUwMzU0NzQzLjM1Nzc0MywiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhODI1ZDg0YzIyNzY4In0.d3pNcY7gBlKBH8XmSg0cDybreY0v-AQdmVPpbeI_sZo',1,'2025-06-20 18:03:32',1),('d8823068-ccef-470a-8f79-10fde8225a74','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM0NTE3OCwiaWF0IjoxNzUwMzQzMzc4LjczNTMzOCwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhNzgwNzdjN2ExNWY4In0.987MmnKOdRllFgnSmwwsv_bDmBMy6Vy1HOW0weKWD84',1,'2025-06-20 18:03:32',1),('d9fc4c85-0f21-468d-900c-3cbeb73859eb','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDQxOTEyMSwiaWF0IjoxNzUwNDE3MzIxLjE4NzU4MywiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhYmI0NzhlMTNhYmU4In0.yEUEBq9vMX_AlMzORYHOEvgUqVEVFpSQjffNicUU1hI',1,'2025-06-20 18:03:32',1),('da5b1086-2cc3-443a-96e4-4b0ebde4ce84','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM1NDMzNiwiaWF0IjoxNzUwMzUyNTM2Ljc5MzMzNywiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhODA1YmMzNDU1NDc4In0.Zg-dQok5xsgIOo6efZVKjR6TFpkUiEkOt2YfaDDeZzg',1,'2025-06-20 18:03:32',1),('dbb73707-4390-4318-83a8-85166d8526fd','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDQxNTU3NiwiaWF0IjoxNzUwNDEzNzc2Ljg4MzYyMSwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhYjgwZTU1MTkyNDU4In0.48yIT38s8OO93yE1BO6Wj3cqb9uPiss8-PxlRm5uXMU',1,'2025-06-20 18:03:32',1),('deb20b76-e7f5-4f85-975c-e1e26d196926','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDQwOTMxMSwiaWF0IjoxNzUwNDA3NTExLjE3MjA5MSwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhYjI1YjdiOTY5MDYwIn0.Ht4Oni4fTK5wIsyNpjV6xnZuz-fpkS2OCRtMi-EP3l8',1,'2025-06-20 18:03:32',1),('df798270-bea1-4929-b50d-8936873f1c21','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDQwMzUyMiwiaWF0IjoxNzUwNDAxNzIyLjcwODYxNSwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhYWQxN2MwNDc2MzQwIn0.c6yhVL9t4Q8XjTDaZzizpziD8CoM2mQVCFzirFfQNBs',1,'2025-06-20 18:03:32',1),('e0a16f30-6a0a-4b24-bf6f-7f7918861a86','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM4NTI1OSwiaWF0IjoxNzUwMzgzNDU5LjA3ODYyNywiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhOWM3YjZiMTllNjg4In0.CV25t6fudOOWVtvXZZEkKNO8M4NaTz05iqQVDPawmQc',1,'2025-06-20 18:03:32',1),('e0b08149-6162-43aa-9da4-614c379b2eae','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDQwMzYxMCwiaWF0IjoxNzUwNDAxODEwLjcxMDE3MiwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhYWQyYzNkOTQ5NTQ4In0.aIXBRNhvb6SBF6bmZChQyXIUsRQb7awjuZVIUYvJjas',1,'2025-06-20 18:03:32',1),('e139dc31-8751-41aa-a94c-05933d3f4aa9','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM4NTkzMCwiaWF0IjoxNzUwMzg0MTMwLjA2MzQ1MywiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhOWQxN2E0ZTlkNzAwIn0.hu1xq1tf6LqVQjBjbMQE6KOnW-LCPc8Hdqjz_S8ZxQQ',1,'2025-06-20 18:03:32',1),('e22b1a32-f45f-4116-918b-c46184f70e72','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM4NzMwOCwiaWF0IjoxNzUwMzg1NTA4Ljk4NDg2NSwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhOWU1OGIzMDhjNGQwIn0.0RbEf6Y_ReJO4exf5gazpQOTKvjeX0N7E-ADqcOlfQQ',1,'2025-06-20 18:03:32',1),('e2e22b8d-4200-462e-93b3-297db9be49ba','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM4NTk0NywiaWF0IjoxNzUwMzg0MTQ3LjQzNTEyNCwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhOWQxYmIwNTg3Y2YwIn0.dwg7cUpl2lhT7PnvBIQbWFOu0hASV3nbCB6vI2Jy_es',1,'2025-06-20 18:03:32',1),('e3cb93e6-85e2-44cf-b05a-5a08d8272fdf','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM5NDAyNSwiaWF0IjoxNzUwMzkyMjI1Ljk0OTc1OSwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhYTQ3NDlkNTczYTAwIn0.f7kWwCEzuLigDgnclw9B2ISNW3OqouCwPNrp42zId6M',1,'2025-06-20 18:03:32',1),('e5ecba74-49d2-4d1a-8179-e02225c8f47c','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM1NTczMywiaWF0IjoxNzUwMzUzOTMzLjQ2OTM1MSwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhODFhMGYzYTYwNDI4In0.iQ6NC-WNT5LC9Lg2E6JP8mUyGj6M0BI6ogMTPmxXRMw',1,'2025-06-20 18:03:32',1),('e6df6efb-d0f6-41c1-936c-ba03405cf5db','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDQxNjQzNSwiaWF0IjoxNzUwNDE0NjM1LjkxOTU5MywiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhYjhkNjU3YTFkNWY4In0.oKxy4lOb_R7RERHnVKICJft0gTMJr-JHmXvglO3nw4s',1,'2025-06-20 18:03:32',1),('e7c64ee9-0a87-4717-b3bb-a3aec55ce4f4','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM4NzU0OSwiaWF0IjoxNzUwMzg1NzQ5LjQxOTc0OCwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhOWU5MGFlMTFlZTg4In0.PC-WGbAyP_PwsBQhAOsKZEa0u-bCUq6LMLExue9SLKQ',1,'2025-06-20 18:03:32',1),('e8b55a09-279d-4a6b-a32a-bb11e2585bfb','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM5MDY0MCwiaWF0IjoxNzUwMzg4ODQwLjk0Njc0NSwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhYTE2MDdiNzA0MjkwIn0.2anuwbuaPRoS2pW5EcwgiSpkjQfNcXg6J26nDbn4nCM',1,'2025-06-20 18:03:32',1),('e931638c-e06b-4bcd-bac7-0da933eb519f','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM4NjY3OSwiaWF0IjoxNzUwMzg0ODc5Ljg3NTk1MSwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhOWRjNjM5Mzg5MTY4In0.ewsqlKAFt7fRSmHaKOSBnjUJ2DcVAsamyiahGMVKjxw',1,'2025-06-20 18:03:32',1),('e95dd168-eb84-42a2-a55a-4aa057f0381b','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDQwNDgzMCwiaWF0IjoxNzUwNDAzMDMwLjQ2NDYzNCwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhYWU0ODNjOWNhMDc4In0.OuzADaaJ8fxfrIiaVvW_BQ-ZGVL4bsMujpN2i9eWDtE',1,'2025-06-20 18:03:32',1),('ebfcfea3-05c0-4ddf-a42f-515eaa28cafa','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDQxNTU2MywiaWF0IjoxNzUwNDEzNzYzLjY3NjE1OCwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhYjgwYjQxZGY0MDAwIn0.9rpwgUo5jGzpgbPiDt-4QDSHhMmGtFc5AR4Lfk6c_3Y',1,'2025-06-20 18:03:32',1),('eea772b1-5db4-4639-ac9a-36af27f03f12','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM4NjAwMCwiaWF0IjoxNzUwMzg0MjAwLjI1MzE4NiwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhOWQyN2ZjOGMyYjg4In0.ltIooUC2ogRE0btbC--qWXU21fzkq7kYsg8NMoF1_qk',1,'2025-06-20 18:03:32',1),('effcafbc-f000-4574-a33a-759673d4e4f6','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM4NjAwMCwiaWF0IjoxNzUwMzg0MjAwLjA0MDU5MywiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhOWQyN2VmZTA0MjIwIn0.n4fpVnoyFzcrE-y-EnT7pcFk9Mx2IPgXuiHLMlM5nzs',1,'2025-06-20 18:03:32',1),('f0e3d680-e0e5-45e9-849b-5e0175e6fee9','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDQwMzU4OCwiaWF0IjoxNzUwNDAxNzg4LjI1MTc1NiwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhYWQyNzAyZjQ1ZGIwIn0.2b2YC3iszO4F6S91q-nLuyQCjIXGEMWwAVnZ9TxgNqg',1,'2025-06-20 18:03:32',1),('f0fbbff3-2a68-4c46-81a5-5be9315eb63c','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDQxOTEwNCwiaWF0IjoxNzUwNDE3MzA0LjUxMzA0LCJpc3MiOiJtYXgtaGVhbHRoLWFwaSIsImp0aSI6IjE4NGFiYjQzYWMzMjUyNjgifQ.LN39zhm8bDo7WpD6-28T83RLzZcvvsyvjvgRkzjGHzo',1,'2025-06-20 18:03:32',1),('f2d1d1a9-22d7-4cc1-b79b-c9913f230661','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM4NzMwOSwiaWF0IjoxNzUwMzg1NTA5LjE4MDEzMSwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhOWU1OGJlYWM0YWEwIn0.8n3BJRSKU8yUKy4es22miqP5gKsmS04jyGAV46kz4vU',1,'2025-06-20 18:03:32',1),('f35c281d-b0ef-4234-9063-19a59a77ccb1','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDQwMzY0NCwiaWF0IjoxNzUwNDAxODQ0Ljg0MTE3OSwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhYWQzNDJmZjI2YjYwIn0.UA6ULmZf_woddhby0BOdOG4cWATt500Qge35mRF8gOI',1,'2025-06-20 18:03:32',1),('f3a3986d-7976-4198-adbe-584d51ae363c','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM4NzkzNCwiaWF0IjoxNzUwMzg2MTM0LjkyOTMwMSwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhOWVlYTcwM2FlNWQ4In0.A3XSwCJHyld6fSbTYXM6vJVmc3woVpaDmjhHMB5irTw',1,'2025-06-20 18:03:32',1),('f3e16826-60dc-4c70-9a20-5e80a5c639ab','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDQxNTc5MCwiaWF0IjoxNzUwNDEzOTkwLjA1OTEyMywiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhYjgzZmY3NTkzMGQ4In0.LwYme8vO_3IrVn8kERTbFJHaUeKJPvk-XxTn-Loq7fw',1,'2025-06-20 18:03:32',1),('f4a5b228-b1fa-497a-9b14-271dc14edbec','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM5MDYzMywiaWF0IjoxNzUwMzg4ODMzLjM3NjcxNiwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhYTE1ZWI4M2FjOGM4In0.-yr2OYmE0jMCSNWSptFe6eiQpbSuzj3PC0ITlis6_Ms',1,'2025-06-20 18:03:32',1),('f6688697-ef2f-48db-a8f1-42bd7918fbd0','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDQxNTc1NCwiaWF0IjoxNzUwNDEzOTU0LjgxMDYxNSwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhYjgzN2MyNWY5Y2E4In0.6ZTUgqLa9DEuoqgBwXSYG359M5mYIpltZjJzbxcYGpw',1,'2025-06-20 18:03:32',1),('f68855dc-7d4e-4be7-8acc-d547459fc95a','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM1NzA1MCwiaWF0IjoxNzUwMzU1MjUwLjUzNTM2MywiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhODJkMzlhZTY3OTg4In0.JdBk4jWkzsH2jLqxVn_xlgFbm77iHB9GzBOhxVvzct0',1,'2025-06-20 18:03:32',1),('f7dad4b2-d9b5-40bb-8f57-7836f1d6dc23','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDQxNjA2NCwiaWF0IjoxNzUwNDE0MjY0Ljk4Nzg4OSwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhYjg3ZmZhNjEzMTUwIn0.ZoEEiahXlEA4oZJQ-X8AapYW2JMKk54Txy4OG8edJ58',1,'2025-06-20 18:03:32',1),('f901c0dd-67e3-4314-b335-fe24b163794b','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDQxNTU2NiwiaWF0IjoxNzUwNDEzNzY2Ljc5NjUxNywiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhYjgwYmZiZGMyMjcwIn0.c_iA8cZDJW7wTDP2aSA6ibCs_V7EzwTBUFYEV7zLNXk',1,'2025-06-20 18:03:32',1),('f990c6f7-ce6b-46b3-a5f7-6ffeacc1bfa7','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDQxMjQzMSwiaWF0IjoxNzUwNDEwNjMxLjMyMTUzOSwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhYjUzMWYyZmNkNWEwIn0.7xiJXOvMizl_WR6TJZTCXF3iDeKFAso1cJb1rgk-LOE',1,'2025-06-20 18:03:32',1),('fa93467a-0b25-4a46-bf04-cdc7368b8849','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDQwNDg0MSwiaWF0IjoxNzUwNDAzMDQxLjk3Mzk0NiwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhYWU0YWVhOWVjYTc4In0.zLEenlV_emO3eEncmFjhD7gl9op9U-MIa0iD5CnT3Kc',1,'2025-06-20 18:03:32',1),('fad848e4-e58e-4b9f-ad90-84e533c27751','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDM4NjI0NCwiaWF0IjoxNzUwMzg0NDQ0Ljg5NTcxLCJpc3MiOiJtYXgtaGVhbHRoLWFwaSIsImp0aSI6IjE4NGE5ZDYwZjI2MGQzMDAifQ.3TpzSU-fj5QeBlNklZct9xsig2WuBkClu3UNEJGROUA',1,'2025-06-20 18:03:32',1),('fce57f01-2b83-48cc-b924-f5c320bfb597','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDQxNTc4NSwiaWF0IjoxNzUwNDEzOTg1LjAxMTk4NSwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhYjgzZWNhODNmMjM4In0.MbBMOAWkHxNcIur-IP5rKyOLRHiBFv9rPzCc_M5h2YY',1,'2025-06-20 18:03:32',1),('fe16285c-fc7f-4f51-831c-66d7ee49c410','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoie1widXNlcl9pZFwiOjEsXCJlbWFpbFwiOlwiYWRtaW5Ac2FnYXJhLmlkXCIsXCJyb2xlXCI6XCJhZG1pblwifSIsImV4cCI6MTc1MDQwOTA5NSwiaWF0IjoxNzUwNDA3Mjk1Ljc5Mzg4OCwiaXNzIjoibWF4LWhlYWx0aC1hcGkiLCJqdGkiOiIxODRhYjIyOTU2MGJmZWU4In0.qeDt5nUdy2FRPuaUWJpKiXFg__iWIykKhOP1C3Atf2o',1,'2025-06-20 18:03:32',1);
/*!40000 ALTER TABLE `oauth_refresh_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `privileges`
--

DROP TABLE IF EXISTS `privileges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `privileges` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `module` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `submodule` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `privileges`
--

LOCK TABLES `privileges` WRITE;
/*!40000 ALTER TABLE `privileges` DISABLE KEYS */;
INSERT INTO `privileges` VALUES (1,'administrator','administrator','1','All access','all','*',NULL,NULL,'2025-04-14 16:32:04','2025-04-14 16:32:04',1);
/*!40000 ALTER TABLE `privileges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_privileges`
--

DROP TABLE IF EXISTS `role_privileges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_privileges` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `role` tinyint NOT NULL,
  `action` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_privileges`
--

LOCK TABLES `role_privileges` WRITE;
/*!40000 ALTER TABLE `role_privileges` DISABLE KEYS */;
INSERT INTO `role_privileges` VALUES (1,1,'all','*','all',NULL,NULL,'2025-04-14 16:32:04','2025-04-14 16:32:04',1);
/*!40000 ALTER TABLE `role_privileges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_users`
--

DROP TABLE IF EXISTS `role_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `users_id` int NOT NULL,
  `roles_id` int NOT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_users`
--

LOCK TABLES `role_users` WRITE;
/*!40000 ALTER TABLE `role_users` DISABLE KEYS */;
INSERT INTO `role_users` VALUES (1,1,1,NULL,NULL,'2025-04-14 16:32:04','2025-04-14 16:32:04',1),(2,2,2,NULL,NULL,'2025-04-21 10:18:53','2025-04-21 10:18:53',1);
/*!40000 ALTER TABLE `role_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','administrator',NULL,NULL,'2025-04-14 16:32:04','2025-04-14 16:32:04',1),(2,'user','user',NULL,NULL,'2025-04-21 11:15:27','2025-04-21 11:15:27',1);
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sysparams`
--

DROP TABLE IF EXISTS `sysparams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sysparams` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `long_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sysparams`
--

LOCK TABLES `sysparams` WRITE;
/*!40000 ALTER TABLE `sysparams` DISABLE KEYS */;
/*!40000 ALTER TABLE `sysparams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `photo` text COLLATE utf8mb4_unicode_ci,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` enum('Male','Famale') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `status_otp` tinyint DEFAULT NULL,
  `nik` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_username_unique` (`username`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,NULL,'Cute','Administrator','admin','admin@sagara.id','Male','Jakarta','0000','$2y$10$V7qpv4se0YR2v8jm3o0vou6qos9vFv6zY170WsKtvlzSJm3hzMn5y','2025-04-21 04:24:26',NULL,NULL,NULL,'2025-04-14 16:32:04','2025-04-14 16:32:04',1,0,NULL),(2,NULL,'making','love','airsupply','sidiqpratomo11@gmail.com','Male',NULL,'086545167772','$2a$10$ZMb9ftaVZFUYLqWN0bjjxeUzkGhkO8M4CETZr5UCtG81.POg9NSX2','2025-04-21 04:24:26',NULL,NULL,NULL,'2025-04-21 10:18:53',NULL,1,0,'3365027325230003');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_otps`
--

DROP TABLE IF EXISTS `users_otps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_otps` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `otp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expired_at` datetime NOT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_otps`
--

LOCK TABLES `users_otps` WRITE;
/*!40000 ALTER TABLE `users_otps` DISABLE KEYS */;
INSERT INTO `users_otps` VALUES (61,'1','788615','2025-04-14 17:49:24',NULL,NULL,NULL,NULL,1,NULL),(62,'1','800772','2025-04-16 08:58:28',NULL,NULL,NULL,NULL,1,NULL),(63,'2','241797','2025-04-21 10:28:54',NULL,NULL,NULL,NULL,1,NULL),(64,'2','147913','2025-04-21 11:34:00',NULL,NULL,NULL,NULL,1,NULL);
/*!40000 ALTER TABLE `users_otps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vouchers`
--

DROP TABLE IF EXISTS `vouchers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vouchers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `voucher_code` varchar(50) NOT NULL,
  `discount_percent` int NOT NULL,
  `expiry_date` date NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  `status` tinyint DEFAULT NULL,
  `file` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `voucher_code` (`voucher_code`),
  KEY `idx_voucher_code` (`voucher_code`),
  KEY `idx_expiry_date` (`expiry_date`),
  KEY `idx_deleted_at` (`deleted_at`),
  CONSTRAINT `vouchers_chk_1` CHECK ((`discount_percent` between 1 and 100))
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vouchers`
--

LOCK TABLES `vouchers` WRITE;
/*!40000 ALTER TABLE `vouchers` DISABLE KEYS */;
INSERT INTO `vouchers` VALUES (1,'123213',15,'2025-07-04','2025-06-20 03:25:46','2025-06-20 11:01:56',NULL,1,'{\"bucket\":\"vouchers\",\"filename\":\"all_kik_export_20250428094402.xlsx\",\"path\":\"file-csv\"}'),(4,'155434',10,'2025-06-25','2025-06-20 10:16:55','2025-06-20 10:16:55',NULL,1,'{\"bucket\":\"vouchers\",\"filename\":\"all_kik_export_20250428094402.xlsx\",\"path\":\"file-csv\"}'),(5,'54321',10,'2025-06-10','2025-06-20 10:35:50','2025-06-20 10:35:50',NULL,1,'{\"bucket\":\"vouchers\",\"filename\":\"all_kik_export_20250428094402.xlsx\",\"path\":\"file-csv\"}');
/*!40000 ALTER TABLE `vouchers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-06-20 18:48:07
