-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: autobot_laravel
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.10-MariaDB

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
-- Current Database: `autobot_laravel`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `autobot_laravel` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `autobot_laravel`;

--
-- Table structure for table `addresses`
--

DROP TABLE IF EXISTS `addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `addresses` (
  `id_address` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_address`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addresses`
--

LOCK TABLES `addresses` WRITE;
/*!40000 ALTER TABLE `addresses` DISABLE KEYS */;
INSERT INTO `addresses` VALUES (1,'1'),(2,'asd'),(3,'d');
/*!40000 ALTER TABLE `addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `essences`
--

DROP TABLE IF EXISTS `essences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `essences` (
  `id_essence` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_essence`),
  UNIQUE KEY `essences_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `essences`
--

LOCK TABLES `essences` WRITE;
/*!40000 ALTER TABLE `essences` DISABLE KEYS */;
INSERT INTO `essences` VALUES (1,'a','a'),(2,'321@mail.ru','123'),(3,'3211@mail.ru','123'),(4,'3213@mail.ru','asd');
/*!40000 ALTER TABLE `essences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
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
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `messages` (
  `id_message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1),(5,'2022_03_24_110239_add_table_telegram_users',1),(6,'2022_03_24_143326_change_field_approved',1),(7,'2022_03_24_181129_add_role_table',1),(8,'2022_03_24_181645_change_fields',1),(9,'2022_03_24_182649_add_table_messages',1),(10,'2022_03_24_183034_add_table_reg_car',1),(11,'2022_03_24_190241_change_for_key_reg_car',1),(12,'2022_03_29_013705_create_cache_table',1),(13,'2022_03_29_013815_create_notifications_table',1),(14,'2022_04_05_123500_drop_reg_car',1),(15,'2022_04_05_123620_drop_telegram_user',1),(16,'2022_04_05_123917_drop_users',1),(17,'2022_04_05_124031_drop_roles',1),(18,'2022_04_05_124133_drop_messages',1),(19,'2022_04_05_124330_password_resets',1),(20,'2022_04_05_124412_password_access_token',1),(21,'2022_04_05_124511_drop_notfication',1),(22,'2022_04_05_124621_drop_cahce',1),(23,'2022_04_05_124750_create_roles_table',1),(24,'2022_04_05_124841_addreses_table',1),(25,'2022_04_05_125001_create_essences_table',1),(26,'2022_04_05_125258_create_messages_table',1),(27,'2022_04_05_125348_create_users_table',1),(28,'2022_04_05_125907_create_reg_cars_table',1),(29,'2022_04_05_152450_addremembertokentouser',1),(30,'2022_04_06_092655_change_type_owner_field_for_reg_car',1),(31,'2022_04_12_183827_user_telegram_id_can_n_mull',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reg_cars`
--

DROP TABLE IF EXISTS `reg_cars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reg_cars` (
  `id_reg_car` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `num_car` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `add_info` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dateTime_order` datetime NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `approved` int(11) NOT NULL,
  `id_user` bigint(20) unsigned NOT NULL,
  `owner` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_reg_car`),
  KEY `reg_cars_id_user_foreign` (`id_user`),
  CONSTRAINT `reg_cars_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reg_cars`
--

LOCK TABLES `reg_cars` WRITE;
/*!40000 ALTER TABLE `reg_cars` DISABLE KEYS */;
/*!40000 ALTER TABLE `reg_cars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id_role` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name_role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_role`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'liver'),(2,'admin'),(3,'guard');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id_user` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `patronymic` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telegram_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `approved` int(11) NOT NULL,
  `id_role` bigint(20) unsigned NOT NULL,
  `id_essence` bigint(20) unsigned NOT NULL,
  `id_address` bigint(20) unsigned NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_user`),
  UNIQUE KEY `users_telegram_id_unique` (`telegram_id`),
  KEY `users_id_role_foreign` (`id_role`),
  KEY `users_id_essence_foreign` (`id_essence`),
  KEY `users_id_address_foreign` (`id_address`),
  CONSTRAINT `users_id_address_foreign` FOREIGN KEY (`id_address`) REFERENCES `addresses` (`id_address`),
  CONSTRAINT `users_id_essence_foreign` FOREIGN KEY (`id_essence`) REFERENCES `essences` (`id_essence`),
  CONSTRAINT `users_id_role_foreign` FOREIGN KEY (`id_role`) REFERENCES `roles` (`id_role`)
) ENGINE=InnoDB AUTO_INCREMENT=200 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'a','a','a','a','a',1,2,1,1,'7Q63ATxbxYepQCqhTa8WyXjycGhLiTouNdkfgiA2kaFNmmyYoq0ldxLim7Hy'),(2,'asd','asd','asd','asd','23123213123',1,1,2,2,NULL),(3,'d','d','d','d','2123123231',2,2,3,3,NULL),(4,'asda','asd','asd','asd','asd',2,2,4,2,NULL),(5,'Weston','Feest','Tristian','+1-380-470-5896','824272142',1,1,1,1,'Y2IDq9h3F5'),(6,'Sven','Stehr','Ransom','951.413.7618','835312383',1,1,1,1,'CTlSD3mYWR'),(7,'Friedrich','Turner','Garfield','+1 (954) 658-3773','659595772',1,1,1,1,'SN08KsAcsf'),(8,'Isaias','Hermiston','Dillan','332.826.4502','872613319',1,1,1,1,'MQGJi3O12V'),(9,'Mikel','Jerde','Durward','+1.269.572.6603','332439954',2,1,1,1,'9W12AFlNKi'),(10,'Raoul','Barton','Marlon','+1-380-814-9150','610887006',1,1,1,1,'6ark9vsC9K'),(11,'Pablo','Braun','Tyree','(341) 876-7404','547370900',0,1,1,1,'tbpuufHkwt'),(12,'Manley','Champlin','Adelbert','+16782718659','931374826',0,1,1,1,'PEeUe4Bc3m'),(13,'Bennie','Torp','Isai','(308) 734-2501','465487007',2,1,1,1,'PEnUuVlsoc'),(14,'Braxton','Pfannerstill','Ryleigh','(928) 698-5163','729141873',1,1,1,1,'5lJ3eM5lNv'),(15,'Haskell','Schuster','Rocky','+13513450445','581972697',2,1,1,1,'jMdx7l1FRf'),(16,'Hans','Wintheiser','Aiden','740.466.5692','846434240',2,1,1,1,'3fD0tLvTnN'),(17,'Ladarius','Schinner','Ezequiel','+1.831.857.4864','244102309',0,1,1,1,'xY3ZsNYZp7'),(18,'Maximus','Ward','Rickie','+1 (936) 357-1942','460064752',2,1,1,1,'K4EFdblNIE'),(19,'Gerhard','Franecki','Laron','802-482-9249','658636029',0,1,1,1,'9hKgxkzeKa'),(20,'Griffin','Leannon','Werner','(559) 253-2698','705652465',1,1,1,1,'kdLdyGonv4'),(21,'Rudolph','Brekke','Erwin','(754) 373-7421','997021256',1,1,1,1,'0Cas4syJeb'),(22,'Gavin','Collins','Wilhelm','+1-725-951-3602','908519415',0,1,1,1,'eU7Nblu8CZ'),(23,'Deshawn','Weissnat','Justice','1-567-679-2945','210036626',2,1,1,1,'wdoKzmUurl'),(24,'Rupert','Jacobson','Jalon','380.350.1234','570120850',2,1,1,1,'YYiqYfeRa8'),(25,'Orrin','Abbott','Christ','+1.567.674.9666','105436195',1,1,1,1,'bdydTqYqqK'),(26,'Dangelo','Konopelski','Leland','+1.804.808.8644','524983232',2,1,1,1,'Wf3opNldlH'),(27,'Raven','Kihn','Ari','234-799-5190','364703689',0,1,1,1,'aAZ7fWqCCa'),(28,'Alexandro','Farrell','Fidel','+1 (919) 337-0533','252696372',1,1,1,1,'dytAqfk0Sc'),(29,'Kian','Schaefer','Felix','+1-202-921-5590','931315408',0,1,1,1,'8pC1Mw4XTd'),(30,'Grayson','Douglas','General','(252) 746-3605','955016912',2,1,1,1,'VfKVDVZtg6'),(31,'Sage','Leffler','Duncan','+1.717.859.1938','748148056',0,1,1,1,'sJ5Xu4MqBm'),(32,'Maynard','Schumm','Garrick','979.978.0465','185872013',0,1,1,1,'1gDpsNT1ay'),(33,'Kody','Reinger','Alan','1-845-908-9986','408395198',1,1,1,1,'kDF2OX8TK1'),(34,'Arnulfo','Wisozk','Marcos','+1-580-542-4818','422044025',1,1,1,1,'IPvNVlM3Qt'),(35,'Kristofer','Dietrich','Lafayette','+13607964136','414981547',1,1,1,1,'CCWY2nCyHU'),(36,'Robb','Fisher','Al','(754) 807-9995','361469874',1,1,1,1,'wdq7eAAROq'),(37,'Thurman','Grant','Ezra','442-846-5073','445078111',0,1,1,1,'tFBrRwRdgp'),(38,'Jarrett','Bosco','Dario','(269) 908-1181','539044344',2,1,1,1,'sJIqmVwzt1'),(39,'Hudson','White','Robert','1-445-791-7172','595253151',0,1,1,1,'EGLV2GOLro'),(40,'Kaley','Stiedemann','Dante','458-653-9852','818825355',0,1,1,1,'PtoCeVjyM8'),(41,'Kenneth','Terry','Rogers','+1 (870) 789-0761','194230267',1,1,1,1,'8s19Y7tZek'),(42,'Sedrick','Mills','Leone','618-634-1565','451020772',1,1,1,1,'xP1wOCC823'),(43,'Uriah','Gislason','Jabari','1-484-519-0653','968850928',1,1,1,1,'HTsW4WBFC3'),(44,'Tyson','Schoen','Augustus','1-862-471-2186','253306114',1,1,1,1,'I1aMnZdq1u'),(45,'Sherman','Marquardt','Jamel','+1.678.449.5873','375843197',2,1,1,1,'gfs0y7epVV'),(46,'Cloyd','Herman','Hilario','+1 (360) 826-1002','121992337',1,1,1,1,'pHsorDjfsQ'),(47,'Rodolfo','Terry','Charley','+1.281.496.7737','686971480',2,1,1,1,'UCvbmoBxL6'),(48,'Nasir','Yost','Wilfred','+12197054644','392415825',0,1,1,1,'92A0h3F5fS'),(49,'Gabe','Kuhlman','Travon','934-533-4939','988212812',0,1,1,1,'g9yki3VHmC'),(50,'Connor','Kub','Alden','+1.351.206.1136','101787770',1,1,1,1,'suFzt85trl'),(51,'Austen','Kovacek','Mackenzie','(272) 434-7434','927657099',2,1,1,1,'SgAcaMLxeK'),(52,'Walter','Friesen','Angel','712.582.4128','703310412',2,1,1,1,'fh7fuHcty3'),(53,'Neil','Klocko','Timmothy','612.824.9541','550707408',2,1,1,1,'RId8ChcNlH'),(54,'Ephraim','Nader','Jalon','(931) 762-4200','748467337',1,1,1,1,'2pemVZb90w'),(55,'Hadley','Bode','Isom','+1-713-671-0585','544342708',1,1,1,1,'KcnRopABFN'),(56,'Cletus','Harvey','Glennie','623.644.8575','467177475',0,1,1,1,'G2y7vViDD6'),(57,'Quentin','Ernser','Mark','+1-320-627-4185','110229748',2,1,1,1,'ecodsABskh'),(58,'Lourdes','Daugherty','Ervin','(984) 329-3927','514274697',1,1,1,1,'VfvuRXt6lU'),(59,'Jamil','Greenfelder','Mekhi','534-360-2094','338408702',0,1,1,1,'sFwHWRz6J8'),(60,'Price','Ullrich','Rafael','(260) 529-5291','281402924',0,1,1,1,'Rz72eUJoOD'),(61,'Osbaldo','Kautzer','Monroe','1-269-639-7955','796320034',2,1,1,1,'LpmtpRhOkX'),(62,'Candido','McDermott','Rory','(978) 662-8213','127693238',1,1,1,1,'RMJ5ePWe4x'),(63,'Randal','Windler','Johnathan','+13854596064','335369431',1,1,1,1,'OxIBlk3BiO'),(64,'Dudley','Schmidt','Maximillian','+1-219-985-0043','871944492',0,1,1,1,'ReH4yhbOCl'),(65,'Ulices','O\'Keefe','Guido','925.949.1884','713031286',1,1,1,1,'impIW2rbbt'),(66,'Freddy','Rodriguez','Adelbert','+19208601222','500238985',1,1,1,1,'jgpIB6eG8T'),(67,'Gunner','Gorczany','Abraham','(870) 602-2772','523692924',0,1,1,1,'M3E4924ozd'),(68,'Elvis','Ward','Tobin','520-335-3653','980995550',2,1,1,1,'tp4FlB6n7X'),(69,'Santos','Oberbrunner','Amparo','717.870.8720','898400768',0,1,1,1,'NiORmnIq6v'),(70,'Jan','Larkin','Constantin','504-234-9763','805960306',1,1,1,1,'BTFrzPDRjT'),(71,'Oswald','Hagenes','Makenna','(740) 562-6468','698791058',1,1,1,1,'GvPSbkPhKS'),(72,'Juwan','Cummings','Terrence','+15613749374','767739051',1,1,1,1,'y8RfLFetcd'),(73,'Ricky','Lubowitz','Skye','740-853-8547','384188741',1,1,1,1,'5XOUnd8aYJ'),(74,'Adam','Kris','Darrel','+1 (863) 727-9605','464579889',0,1,1,1,'MCDMLydZjL'),(75,'Myron','Daniel','Nickolas','1-279-205-9951','256909490',0,1,1,1,'YD8zG6KHJx'),(76,'Mariano','Weber','Kristopher','+17857039552','911499155',1,1,1,1,'8kkLH3nv3N'),(77,'Golden','Renner','Eduardo','423-263-8281','779622134',0,1,1,1,'dY9Ohm8Io3'),(78,'Regan','Bosco','Garret','+1.907.817.0521','482699249',0,1,1,1,'rjU5DulhXW'),(79,'Royal','Schroeder','Eriberto','929.679.5966','994616593',1,1,1,1,'bIy8UbBipR'),(80,'Erich','Fadel','Derek','267-597-1335','604597597',2,1,1,1,'AQcwpM7JKK'),(81,'Deondre','Orn','Eusebio','774.931.6236','371343288',2,1,1,1,'y8UHY942Re'),(82,'Paris','Krajcik','Consuelo','1-804-577-5042','570642330',1,1,1,1,'x7nPLXbZKq'),(83,'Otho','Connelly','Mallory','+13807513606','110423984',1,1,1,1,'YrSY9XMoor'),(84,'Arlo','Dicki','Jared','(860) 516-2616','401387098',0,1,1,1,'4KMT2PCjGV'),(85,'Mack','Dare','Herman','+1-612-930-7367','958338228',1,1,1,1,'FtKc5oWVdG'),(86,'Newell','Mraz','Max','+1.432.256.0619','403130302',1,1,1,1,'c9sEl2wmOy'),(87,'Domingo','Bruen','Tito','1-325-366-8475','900941535',2,1,1,1,'e9VyWJVK79'),(88,'Adelbert','Zieme','Brennon','361.851.2626','991758207',0,1,1,1,'qR8w6Y6vFt'),(89,'Trey','Oberbrunner','Micheal','1-718-661-2772','916921088',0,1,1,1,'mqL0QsL1SM'),(90,'Alejandrin','Kemmer','Myron','+1-445-620-7054','580652024',2,1,1,1,'s2N77SqngK'),(91,'Xander','Hettinger','Emilio','(267) 553-8096','945388384',2,1,1,1,'8ij6jbCcDU'),(92,'Wyman','Pouros','Quinten','830.774.9269','655035167',1,1,1,1,'ASCY2j2R5e'),(93,'Skylar','Gutkowski','Jamarcus','+1.984.394.9120','813416367',0,1,1,1,'mhjVrxGw8R'),(94,'Donny','Homenick','Jerod','682-644-2171','308318470',2,1,1,1,'fod5iUOSGL'),(95,'Tom','Lueilwitz','Tanner','541.440.5428','966529101',2,1,1,1,'7V1ZRm4pLM'),(96,'Adonis','Torphy','Quinn','1-336-873-9798','520052813',2,1,1,1,'nAgvtZKEaI'),(97,'Cameron','Ratke','Hank','+1 (762) 229-4706','346950427',1,1,1,1,'k9TmpsPF9c'),(98,'Laurel','Schumm','Kevin','479-724-5632','872920714',1,1,1,1,'qnHMEcQbJf'),(99,'Kamron','Harvey','Victor','+1 (669) 866-3626','311806003',2,1,1,1,'Qm5AsAXXma'),(100,'Abdullah','Stark','Cloyd','+13479505800','439849032',0,1,1,1,'V89WZNxxrR'),(101,'Hadley','Fadel','Rene','1-559-902-4084','904249444',0,1,1,1,'5NGRa4F8dv'),(102,'Parker','McClure','Leonel','1-279-629-0225','504689234',1,1,1,1,'9arDVHKwG6'),(103,'Baylee','Stiedemann','Kendrick','520.312.8042','395921094',1,1,1,1,'kcqd0s9rbm'),(104,'Stevie','Howell','Harry','830-441-5018','837680189',0,1,1,1,'fVvWrYEbUo'),(105,'Cristobal','Schultz','Remington','(740) 912-1060','521955870',1,1,1,1,'bOXuRDkYaS'),(106,'Timothy','Kuhn','Price','440.818.4784','568376880',0,1,1,1,'5VfGCQZBgt'),(107,'Kenyon','Vandervort','Rickey','1-272-809-9514','398597477',1,1,1,1,'6yC5ThQkkD'),(108,'Corbin','Armstrong','Earnest','(657) 437-6987','722309987',2,1,1,1,'pFIL0nLK2F'),(109,'Mark','Anderson','Heber','1-650-414-7093','276105010',0,1,1,1,'Uk7Ky9c7hu'),(110,'Jaleel','Gerlach','Woodrow','(318) 428-1330','996038025',2,1,1,1,'UZmSNerKbs'),(111,'Gillian','Wehner','Alfonso','(740) 421-6925','407418196',0,1,1,1,'NxokKisyk8'),(112,'Forest','Hagenes','Webster','(480) 505-8037','499815963',2,1,1,1,'o5ap2q20lI'),(113,'Emmett','Batz','Watson','+15306544459','189552536',1,1,1,1,'vnF7gFTDEC'),(114,'Moriah','Walsh','Micah','+1-551-248-2206','672885021',2,1,1,1,'M4SNdLQi2b'),(115,'Morris','Lang','Richard','458.706.5095','832205211',2,1,1,1,'06SXmmjbsU'),(116,'Johan','Huel','Deshawn','(603) 448-8612','994792728',0,1,1,1,'EZRaGgNvL8'),(117,'Waylon','Russel','Abe','(507) 543-4443','776302325',1,1,1,1,'aDPigHqNlL'),(118,'Garrett','Tillman','Braden','351.223.3487','855743997',1,1,1,1,'WkrnVNRfhU'),(119,'Collin','Hettinger','Kurtis','785.787.0412','620859074',0,1,1,1,'DUtjsfJcYt'),(120,'Lew','Stiedemann','Gregg','+1-531-894-1249','843938817',1,1,1,1,'y0qSpzWKws'),(121,'Zachariah','Goodwin','Jaydon','667-487-4474','212442503',2,1,1,1,'cWaxbdcdIJ'),(122,'Rollin','Beahan','Pablo','1-231-626-7607','524049855',1,1,1,1,'8gZt6bLXjm'),(123,'Mauricio','Trantow','Nigel','1-707-674-5743','174970073',0,1,1,1,'0Z5KVXNIqp'),(124,'Jonathon','Roob','Hank','+1-458-683-6515','328880922',0,1,1,1,'RohW8jZeqd'),(125,'Clement','Schneider','Ayden','+1-928-609-5344','493306794',1,1,1,1,'te6754yR5i'),(126,'Eriberto','Walsh','Adolf','845-742-9351','833937809',1,1,1,1,'ctEoo7wKSV'),(127,'Bennie','Cormier','Jerod','+1-651-713-3155','842201205',1,1,1,1,'5SqmRh8pPt'),(128,'Mitchell','Ortiz','Domenick','+1.717.264.1884','857424346',0,1,1,1,'0xC01BYPpr'),(129,'Tremaine','Hilpert','Ariel','941-801-1010','265466765',2,1,1,1,'Bn3jBc6pWI'),(130,'Waino','King','Einar','1-858-819-1184','791784875',2,1,1,1,'33HIgWZByx'),(131,'Chester','Gulgowski','Uriel','+1-260-907-5593','767955043',1,1,1,1,'xbs7NiBGmS'),(132,'Edison','Dicki','Maverick','(518) 578-5811','263195775',0,1,1,1,'gCgV4TVLCY'),(133,'Hiram','Roberts','Gavin','+15406213065','530973380',0,1,1,1,'YZ1qduyDeH'),(134,'Talon','Fisher','Erin','(574) 764-8789','549711600',2,1,1,1,'LSV6DJ0brm'),(135,'Derrick','Maggio','Griffin','+1 (725) 526-5994','344299730',2,1,1,1,'hoqWxBbDaA'),(136,'Evan','Bartoletti','Curtis','(225) 487-6936','614083060',0,1,1,1,'XWW2hchbeh'),(137,'Ronaldo','Hyatt','Hershel','1-602-438-5876','206238312',1,1,1,1,'yyw7uvRSmw'),(138,'Austin','Will','Brant','+1.870.459.1262','396393314',2,1,1,1,'cC055MUJ1p'),(139,'Abe','Ward','Arnaldo','917.892.7321','283489081',1,1,1,1,'YeBnCmFJQy'),(140,'Clark','Schoen','Kamron','+1-240-850-2487','855615012',0,1,1,1,'jTFl8vCHQa'),(141,'George','Langosh','Austyn','440-698-8354','205618322',2,1,1,1,'IUiOsM28aM'),(142,'Cyril','Gutkowski','Armani','1-620-284-2712','341441717',1,1,1,1,'fDKzZrWc0x'),(143,'Merritt','Quitzon','Fabian','951.637.7015','628274154',2,1,1,1,'Qj0GlwZDr1'),(144,'Marquis','Kohler','Rodger','847-516-0528','238589948',1,1,1,1,'fDVb0qmvHu'),(145,'Jackson','Lang','Khalil','920.309.6564','203072210',2,1,1,1,'RxGQeE1qxM'),(146,'Presley','Gleichner','Marley','(575) 318-6371','299095088',1,1,1,1,'NQX7PiXjWJ'),(147,'Stanton','Buckridge','Trystan','+1-838-470-9012','122900208',1,1,1,1,'HC9X9gLGBU'),(148,'Dorthy','Carroll','Dorthy','1-570-805-3058','345900273',2,1,1,1,'JOhTEAyCe9'),(149,'Benny','Mueller','Nikolas','(707) 773-3061','605956874',1,1,1,1,'CT0InrcbSY'),(150,'Bo','Williamson','Valentin','+15043937039','898857147',1,1,1,1,'rbuyZJr2cT'),(151,'Garland','Pouros','Ambrose','1-703-455-1503','645561415',0,1,1,1,'36M7h08qMa'),(152,'Jaycee','Luettgen','Shaun','928.512.0994','982106115',1,1,1,1,'ODJ9Nlxm8A'),(153,'Cordelia','Bernier','Emil','+1-952-912-7918','964665204',0,1,1,1,'7VCenjDtzT'),(154,'Wyatt','Willms','Cleveland','+1-551-961-7160','706524904',1,1,1,1,'sWq8Sslf54'),(155,'Morton','Kerluke','Harley','434.419.4954','669495292',2,1,1,1,'qOm513RzIX'),(156,'Darrell','Stracke','Wayne','540.200.8365','539802452',0,1,1,1,'9X5hVzrbeQ'),(157,'Jermey','Leffler','Davon','518.699.0073','183419095',0,1,1,1,'bbxhEhsk5M'),(158,'Werner','Kuhic','Jessie','813-593-4349','178624311',1,1,1,1,'9QmeYHRCty'),(159,'Kelton','Mraz','Kaley','(580) 672-6729','458024243',1,1,1,1,'rGlqPG70Bu'),(160,'Columbus','Hettinger','Fermin','803.241.6290','719860672',1,1,1,1,'3BAsRLEhD7'),(161,'Fern','Osinski','Lester','551.977.3147','928323413',1,1,1,1,'qpbVVaxQX3'),(162,'Jaiden','O\'Keefe','Alek','1-434-760-6544','357188578',2,1,1,1,'aRbu6ftpAk'),(163,'Selmer','Skiles','Coy','279.738.8269','983298694',0,1,1,1,'Dw1euKYNPx'),(164,'Brandon','Barrows','Rowan','954-768-7462','983595458',1,1,1,1,'RCQcYyVFdn'),(165,'Keyshawn','Auer','Nat','813.390.7474','227360026',1,1,1,1,'ShCsABVfFF'),(166,'Narciso','Ryan','Shad','+1.920.386.4612','770440862',1,1,1,1,'IHx8bJqYiT'),(167,'Wilfred','Kautzer','Jalen','(848) 339-3519','493897107',2,1,1,1,'M4G2ebBPwB'),(168,'Dillan','Schmeler','Lance','475-335-1092','444991992',1,1,1,1,'FGwvuOscL8'),(169,'Pedro','Schulist','Jerrold','+1-401-953-2121','746538836',1,1,1,1,'ww1JHhTmwH'),(170,'Darron','Ortiz','Chance','+1 (640) 779-3979','940103693',2,1,1,1,'JPBvExTrJu'),(171,'Markus','Bashirian','Angel','740-686-5829','476944424',2,1,1,1,'pVLz0rTd41'),(172,'Branson','Greenholt','Wilburn','(240) 930-9785','236140118',1,1,1,1,'KkopRm4vUt'),(173,'Makenna','Kub','Roderick','+1-458-543-9525','261910599',0,1,1,1,'D8DL7HgDbf'),(174,'Domingo','Wintheiser','Helmer','+1.714.750.2436','236430406',2,1,1,1,'Je4AtY1y3G'),(175,'Tad','Connelly','Oswald','+19087992648','469063200',0,1,1,1,'r8x6Ogi0Ad'),(176,'Alfonzo','Cronin','Terrence','1-520-916-5252','304855133',2,1,1,1,'qSZpskXgA7'),(177,'Price','Dooley','Pedro','(212) 781-5927','562331274',2,1,1,1,'tYsnD6HuuM'),(178,'Clinton','Volkman','Brendon','1-779-361-2188','974782677',0,1,1,1,'9ZjdmI8Tus'),(179,'Immanuel','Wisoky','Milo','+14358606579','438444229',1,1,1,1,'vRVZN2gw3g'),(180,'Oswald','Bailey','Ignacio','551-709-9327','890163082',2,1,1,1,'brRiwV13yY'),(181,'Anibal','Reichel','Jeremie','(415) 493-2983','853193556',0,1,1,1,'ugaFTtMpqS'),(182,'Mateo','Wehner','Benton','+1 (930) 381-2273','969902243',1,1,1,1,'OGpgui3pO4'),(183,'Kacey','Krajcik','Mark','(623) 448-3713','431832983',0,1,1,1,'cHHz6T1416'),(184,'Kadin','Stroman','Felix','341.462.1265','823439868',2,1,1,1,'FO2N52Bbi4'),(185,'Frederick','Rolfson','Reginald','217.500.8592','562246700',1,1,1,1,'EhioR2qkaM'),(186,'Arno','Johnson','Ward','864.229.1371','563758708',1,1,1,1,'Wr9mCETfli'),(187,'Nathanael','Hagenes','Parker','+1-341-900-8632','362270952',1,1,1,1,'3oYn4CwVRP'),(188,'Barton','Effertz','Trey','+14237035815','785640936',0,1,1,1,'3qqWNc1y6T'),(189,'Eli','Turner','Newell','+1-805-666-0028','294559121',1,1,1,1,'EuFTHusI6N'),(190,'Lennie','Schiller','Manuela','+1.680.239.9939','525864741',2,1,1,1,'1cbN0zkQsU'),(191,'Bernard','Hermann','Ola','(269) 795-9211','697797507',1,1,1,1,'yr16XaMlKN'),(192,'Kennith','Hickle','Antone','+13047851540','967950008',1,1,1,1,'p11OKPWenI'),(193,'Skye','White','Orville','+1 (641) 459-5953','212358309',1,1,1,1,'hJvMnGxhcG'),(194,'Sherman','Kuhn','Wayne','1-475-742-1424','273663793',0,1,1,1,'6vEsMOXEpV'),(195,'Bertram','Mertz','Ronny','+1-442-667-8962','830620799',0,1,1,1,'3sVNH4dckA'),(196,'Gustave','Feil','Stanton','+1-979-343-2774','102296878',0,1,1,1,'LknOrKxs5p'),(197,'Furman','Welch','Stanford','+1-934-616-0252','741857863',2,1,1,1,'2mwElzSZ9Y'),(198,'Aidan','Prosacco','Sanford','217-585-8427','353281079',2,1,1,1,'u878glQV2p'),(199,'Lazaro','Robel','Judge','(206) 378-9732','362583531',1,1,1,1,'YFIdpCwkrM');
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

-- Dump completed on 2022-05-06 14:16:59
