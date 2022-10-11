USE marketplace;

-- MariaDB dump 10.19  Distrib 10.5.12-MariaDB, for Linux (x86_64)
--
-- Host: mysql.hostinger.ro    Database: u574849695_23
-- ------------------------------------------------------
-- Server version	10.5.12-MariaDB-cll-lve

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `address` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city_id` bigint(20) unsigned NOT NULL,
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `is_deleted` bit(1) DEFAULT b'0',
  PRIMARY KEY (`id`),
  KEY `city_id` (`city_id`),
  CONSTRAINT `address_ibfk_1` FOREIGN KEY (`city_id`) REFERENCES `city` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'472 Rowe Trace\nEast Maxine, VA 63170',9,'2012-11-10 14:26:59','1986-07-06 01:57:05','\0'),(2,'37943 Melba River\nLake Torranceport, SD 99172',15,'2007-02-20 13:53:02','2016-08-13 04:58:44',''),(3,'290 Marlee Alley Apt. 119\nWest Malachiborough, OR 82404-3226',1,'2022-01-05 23:07:16','1971-12-10 03:36:48','\0'),(4,'6279 Streich Port\nWest Linabury, VT 87964',2,'1978-09-05 12:55:59','1992-07-21 00:40:45',''),(5,'3240 Mueller Streets Suite 559\nWest Kirafort, MD 77707-3907',6,'2019-08-26 04:31:18','2018-09-20 09:26:01',''),(6,'349 Konopelski Spur\nReichelport, ND 84500-7307',6,'1980-02-26 03:32:08','2008-03-22 05:51:12',''),(7,'820 Donnelly Springs\nSmithamburgh, KY 17967-6994',8,'1978-05-16 18:31:08','1976-12-27 10:47:54','\0'),(8,'3618 Emmerich Underpass\nPort Dorthybury, AZ 46617-0889',17,'2009-12-13 08:37:05','2011-06-13 09:57:04',''),(9,'48971 Reinger Junctions Apt. 945\nKohlerton, FL 02823-8202',12,'2018-12-03 13:23:29','1995-04-09 04:00:36','\0'),(10,'986 Malinda Ford Apt. 753\nPort Favianmouth, IN 10593-6464',17,'1988-08-23 08:41:54','1984-10-03 11:43:12','\0'),(11,'02583 Gutkowski Squares Apt. 389\nCasimerstad, KS 65467-5850',4,'2010-02-13 23:51:25','2012-07-19 02:45:37','\0'),(12,'835 Thompson Heights Apt. 706\nEast Brain, ID 32126',19,'1982-10-31 02:10:34','1982-07-10 05:54:43',''),(13,'2909 Chase Plaza Suite 854\nNew Malcolm, DC 08332',20,'1979-07-13 14:44:22','1998-12-30 10:18:17','\0'),(14,'63838 Stark Lock Apt. 548\nLake Lorainechester, IA 44541',15,'2001-09-14 14:24:58','2010-11-13 20:05:08',''),(15,'954 Matt Wall Suite 401\nPort Daynaland, UT 25466-7208',5,'2003-04-30 04:17:34','1979-12-24 00:38:02','\0'),(16,'527 Purdy Streets\nPort Vida, WV 50152',4,'2004-03-30 20:38:31','1979-08-29 11:47:32',''),(17,'86245 Ruth Field\nWest Juwan, VT 82193',17,'1973-01-24 12:55:27','1989-09-18 05:51:36','\0'),(18,'74992 Beatty Harbor\nGoldnerport, MI 86167-4210',17,'1985-07-11 12:23:14','1993-05-08 02:57:57','\0'),(19,'3379 Abbott Manors Apt. 808\nHudsonmouth, HI 69859',15,'1999-08-24 00:33:05','1971-08-28 20:13:42','\0'),(20,'943 Fernando Square\nBeattyhaven, MS 00412-2677',3,'1982-12-04 07:17:06','2017-09-23 08:03:07',''),(21,'3078 Lamar Corner\nBeverlyborough, TN 01271',20,'2004-09-18 03:21:31','1986-01-14 12:20:45','\0'),(22,'408 Hickle Track\nNew Jenabury, PA 09348-4200',14,'1980-10-23 23:55:38','1988-04-24 10:18:39',''),(23,'304 Steuber Island Apt. 245\nSchoenfurt, WI 26972',2,'2013-07-15 01:46:16','2000-11-21 08:28:40','\0'),(24,'8986 Alexys Summit\nLake Nickolas, WV 68730',12,'2008-06-08 11:37:58','2017-09-17 07:58:56',''),(25,'089 Christy Roads\nO\'Connerhaven, WY 98134',11,'1983-03-24 00:30:13','1980-06-19 18:31:58',''),(26,'204 Rolfson Greens\nNew Chanceland, MS 63728-8040',13,'1970-11-21 07:22:05','2018-05-22 11:44:41',''),(27,'021 Tremblay Dam Apt. 619\nTremblayville, OR 32015-8132',20,'1988-02-05 04:48:02','1983-04-12 21:00:51',''),(28,'65856 Berge Run\nSouth Lionelport, WI 50856-6965',11,'2015-07-07 06:51:51','2013-03-16 03:05:35',''),(29,'185 Reichert Crossroad Apt. 678\nSouth Jerrold, SC 85337-0463',16,'1998-04-30 17:25:00','1975-08-24 14:55:04','\0'),(30,'4222 Konopelski Valleys Apt. 751\nSouth Dwight, ND 07415-7305',2,'2021-12-13 07:49:27','1975-09-19 15:24:48','\0'),(31,'211 Drew Park\nSatterfieldtown, IA 46645-5972',1,'2019-11-11 06:25:25','2018-01-07 14:04:20',''),(32,'559 Schmeler Forks Suite 331\nAniyaburgh, KY 15674',4,'1993-03-07 19:50:43','2004-03-30 00:15:06',''),(33,'1902 Nader Mountain Suite 037\nWatersmouth, NY 27462',16,'1986-12-26 08:12:24','2007-05-14 12:06:13',''),(34,'862 Sedrick Plaza Apt. 532\nPort Yesenialand, OR 28519',1,'2007-07-22 19:51:06','1988-07-06 04:50:52','\0'),(35,'754 Tillman Vista\nEast Deltastad, NJ 32176-7197',6,'1981-05-11 17:43:15','1983-05-17 19:32:06','\0'),(36,'19323 Harvey Mall Apt. 434\nChazville, RI 48454-9003',2,'2007-11-27 00:59:52','1986-06-13 15:11:03','\0'),(37,'18842 Hills Rest Suite 175\nPort Margaritaside, WA 90539',7,'2002-12-30 20:37:22','1997-12-31 09:43:41',''),(38,'298 Daphnee Plains\nLonnieton, MN 23490-2697',13,'2004-06-13 19:02:12','1997-11-20 11:27:10',''),(39,'82334 Mosciski Passage Apt. 526\nCalimouth, OH 06752',18,'1984-07-27 09:49:34','2004-09-09 21:37:26','\0'),(40,'73251 Keven Plaza Suite 770\nKundeside, WY 99776',19,'1975-04-09 17:26:03','1979-07-31 19:22:20',''),(41,'214 Tony Square Suite 327\nOlsonmouth, MS 17339',9,'1972-05-18 01:06:40','2016-03-27 14:14:17','\0'),(42,'3445 Claudia Shores\nLake Damaris, FL 65335-4396',2,'2016-09-03 02:35:54','2015-01-31 12:48:14',''),(43,'226 Johns Rue\nLake Rhianna, MA 92961-6101',18,'1994-06-07 17:07:56','2018-01-13 01:41:41','\0'),(44,'67083 Kulas Coves\nWest Candaceborough, OR 73621-2698',9,'1988-06-11 21:40:17','1998-07-09 19:28:36','\0'),(45,'9179 Bernice Shoals\nLeonardstad, WY 34782-3817',17,'1993-08-21 09:46:47','2012-11-23 06:02:22','\0'),(46,'37103 Ottilie Point Apt. 610\nSouth Joy, MI 12840',3,'1972-08-05 22:52:57','1971-01-10 05:03:46','\0'),(47,'5779 Dickinson Viaduct\nKilbackborough, WI 87234-7140',13,'1988-07-31 05:56:51','2004-12-27 23:52:54','\0'),(48,'4357 Schowalter Springs Apt. 631\nSouth Matildamouth, TX 66943-1294',13,'2020-01-03 17:11:58','2017-02-19 04:17:53',''),(49,'272 Duncan Underpass Suite 467\nKreigerburgh, MA 95926-0713',19,'2018-10-21 05:26:35','1985-02-10 04:02:49',''),(50,'938 Champlin Mall Apt. 160\nVancetown, CA 92715-8863',7,'2010-08-05 11:58:09','2010-02-21 04:44:57',''),(51,'436 Eichmann Centers\nEast Theresa, PA 68911-5895',15,'1974-01-26 09:00:48','1989-01-10 15:29:46','\0'),(52,'93601 Homenick Shore\nKylamouth, NJ 66423',18,'2020-12-24 01:59:44','2018-07-15 19:15:30',''),(53,'279 Lue Locks Suite 541\nNorth Shanaview, IL 07066',20,'2012-12-27 01:59:40','1983-11-20 04:08:22','\0'),(54,'24187 Hackett Square Suite 007\nFerryshire, MS 69620',16,'2007-03-27 00:13:57','1995-08-12 02:16:25',''),(55,'46837 Cummerata Parkway\nBrannonfurt, LA 83006',9,'2009-03-12 22:05:36','2018-11-07 23:42:25',''),(56,'8751 Yundt Skyway\nHagenesside, SD 44029',11,'2007-03-02 00:23:24','2000-08-16 00:03:58',''),(57,'84880 Ava Ridges Apt. 559\nEduardoville, IL 32142-8759',9,'1996-01-17 09:34:16','1978-12-12 03:08:10',''),(58,'00320 Deckow Ranch Apt. 074\nLake Busterberg, ME 03788-9735',9,'2008-08-03 15:47:13','1999-02-02 12:33:51','\0'),(59,'3458 Bogan Cape Suite 811\nWardberg, WV 01917',1,'2008-12-19 13:09:33','2013-02-08 01:39:53','\0'),(60,'208 Darby Road Suite 332\nWaltermouth, NJ 33099-2395',5,'1973-04-14 14:13:57','1991-08-23 00:41:18','\0'),(61,'82975 Ferry Ridges Apt. 008\nIsaiasshire, MS 20518-0108',10,'1981-02-02 01:38:12','2010-06-02 11:56:08','\0'),(62,'34233 Mann Brook Apt. 288\nWest Juliushaven, OR 06337-8285',2,'2007-11-28 06:44:46','1999-11-30 02:38:33','\0'),(63,'1864 Dicki Heights Suite 537\nAdrienburgh, NM 12587',8,'1971-04-26 19:32:29','2019-11-16 00:43:39',''),(64,'2204 Lang Brooks\nNew Candelariobury, KS 91815',6,'1994-11-12 10:40:45','1998-03-13 09:02:17','\0'),(65,'6830 Lane Roads Suite 878\nLockmanchester, FL 71417',3,'2005-11-04 20:19:21','1991-09-20 19:43:00','\0'),(66,'8483 Guiseppe Mills\nClarissaburgh, WA 66146-3740',14,'1982-02-25 05:31:10','1990-01-11 07:08:21','\0'),(67,'4739 Elmira Burgs Suite 637\nWest Loma, AK 09939-4065',7,'1985-08-27 23:16:54','1988-12-20 15:15:51','\0'),(68,'186 Madilyn Expressway\nAlyshachester, PA 56057-3909',10,'2012-01-11 14:03:33','2005-07-18 15:58:55','\0'),(69,'8693 Welch Manor Apt. 650\nUllrichchester, HI 46414-4742',7,'2016-04-30 14:46:15','2006-08-10 19:56:51',''),(70,'716 Adela Loaf\nNorth Elsie, MT 80139-1933',5,'2008-11-29 12:49:31','1980-02-04 02:02:39',''),(71,'0001 Jessyca Coves Apt. 193\nNorth Willaton, NH 66485',9,'1977-04-19 04:16:27','1972-09-19 16:39:38',''),(72,'61304 Schmidt Stream\nDurganfurt, NC 29418',15,'2001-04-16 09:47:25','2018-06-16 09:25:03','\0'),(73,'45933 Daisy Stream\nReichertburgh, OK 84600',7,'1997-05-05 15:15:27','1991-01-19 13:46:53',''),(74,'503 Bode Shoal Suite 598\nSouth Veda, RI 26003',6,'1985-01-15 17:14:40','2013-02-27 03:10:15','\0'),(75,'79256 Coy River Suite 030\nAlvenafurt, VA 77910-0500',4,'2019-10-08 11:20:54','1994-03-14 19:08:45','\0'),(76,'925 Yessenia Port Suite 512\nRohanland, CA 72160',3,'1980-12-16 19:28:41','2011-08-11 04:16:14',''),(77,'83740 Gillian Hills\nSouth Rogerport, NE 95833-9486',8,'2009-01-07 05:50:32','1983-03-30 03:37:24',''),(78,'400 Santos Forest Suite 251\nNorth Leahaven, MI 22659',16,'1997-08-14 07:13:26','2000-11-26 20:28:44',''),(79,'43635 Donnelly Pines\nEast Olin, KY 36843-6930',16,'2006-03-03 05:27:33','1994-11-07 11:43:29',''),(80,'381 Kattie Plain\nKelvinbury, NM 47075-7292',6,'2011-03-03 16:26:39','1998-06-30 22:53:43',''),(81,'3784 Fritsch Courts\nLarkinborough, KS 71896',3,'2006-10-23 08:21:32','1992-07-05 06:20:13','\0'),(82,'13527 Ryan Passage\nSouth Eliezer, AR 41818-8850',11,'1983-11-18 19:40:33','1977-05-02 04:17:44',''),(83,'45577 Gutkowski Square\nOttischester, MA 53600',4,'1981-07-30 21:13:18','1993-08-14 17:26:42','\0'),(84,'79215 Gusikowski Glens Suite 666\nPort Mafalda, UT 48373-3793',3,'2006-10-04 21:40:56','1982-02-16 18:41:11','\0'),(85,'93287 Joana Forks Suite 681\nGiovannamouth, MO 09177-6187',6,'1981-10-04 14:45:24','1971-02-25 09:25:33',''),(86,'570 Macejkovic Extension Suite 843\nEast Maci, CT 24345',13,'1988-03-31 03:32:14','1971-06-27 12:46:58',''),(87,'039 Ransom Dale\nSchimmelhaven, HI 71272-3449',13,'2007-11-18 07:33:45','1975-11-21 04:56:06',''),(88,'0719 Scottie Burgs Suite 513\nNew Rubenport, UT 34304',15,'2012-08-23 02:51:14','1972-02-10 13:11:22',''),(89,'905 Jaskolski Views Apt. 575\nHenritown, AZ 53010-0263',1,'2007-03-03 00:22:52','1997-11-05 21:15:35','\0'),(90,'9032 Selmer Mews Suite 194\nSouth Clarkville, VA 74084',14,'1987-02-14 09:40:29','2008-08-05 21:35:05',''),(91,'148 Stracke Hill\nMayerton, CT 83421',19,'1983-01-30 12:50:05','2013-08-17 03:54:32','\0'),(92,'8726 Nitzsche Hollow\nFlorianland, IA 70831-8540',11,'1998-03-22 15:27:55','2007-12-25 03:35:01',''),(93,'82366 Heidenreich Alley\nWest Isaiahstad, WI 21911',16,'2009-01-22 01:57:42','1993-07-01 09:25:03','\0'),(94,'09985 Yundt Camp\nPort Burdettetown, CO 23888',6,'2015-01-19 15:10:38','2001-03-27 13:27:59',''),(95,'2910 Trantow Hollow\nNew Durwardfurt, NH 61024-5588',16,'2002-12-28 08:31:17','1972-10-20 05:13:51','\0'),(96,'531 Grover Valley Apt. 238\nProsaccofurt, NE 68617',19,'1996-04-13 10:36:38','1987-01-25 14:25:02','\0'),(97,'259 Geovanny Highway\nLydiafort, CO 38828-6779',20,'1970-05-20 05:24:20','1981-09-22 23:54:10',''),(98,'1094 Trevion Loop Suite 978\nKingchester, MA 52148-8387',3,'1997-06-28 15:42:31','1997-08-08 19:10:18',''),(99,'2375 Jaiden Roads\nNew Ebony, NH 30730-6633',8,'1992-08-24 08:36:04','2006-01-12 11:33:38','\0'),(100,'7184 Mireya Alley\nNew Rogelio, IN 73839-5357',6,'2012-06-11 21:33:27','1996-10-10 02:11:01','\0');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `is_deleted` bit(1) DEFAULT b'0',
  PRIMARY KEY (`id`),
  KEY `category_name` (`category_name`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,' канцтовары','2018-07-17 15:02:41','\0'),(2,' бытовая химия','1978-01-04 21:34:31','\0'),(3,' электроника','1975-10-16 09:18:47','\0'),(4,' сад','1995-02-01 07:29:27','\0'),(5,' отдых','1979-12-18 19:05:16',''),(6,' спорт','1999-09-18 14:44:45',''),(7,' красота','1996-08-17 21:00:58',''),(8,'авто','2022-07-31 04:46:23','\0'),(9,' медицина','2012-08-05 12:58:42',''),(10,' ремонт','2017-06-26 22:59:17',''),(11,' туризм','2017-06-16 10:09:21','\0'), (0,'без категории','2017-06-16 10:09:21','\0');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `city` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `city` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `is_deleted` bit(1) DEFAULT b'0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city`
--

LOCK TABLES `city` WRITE;
/*!40000 ALTER TABLE `city` DISABLE KEYS */;
INSERT INTO `city` VALUES (1,'South Selmerburgh','2018-07-21 08:46:36',''),(2,'Mateobury','2021-02-20 17:23:05','\0'),(3,'South Isidro','2000-09-19 16:43:26','\0'),(4,'Halvorsonstad','1981-05-22 03:34:30',''),(5,'East Katheryn','1978-04-16 19:09:42',''),(6,'Beckerborough','1999-01-09 14:06:11','\0'),(7,'Axelchester','2011-04-24 08:34:41',''),(8,'Sigurdport','2018-10-19 19:22:01','\0'),(9,'Lake Neoma','2013-08-10 19:04:49','\0'),(10,'Lake Elvie','2003-10-27 03:17:25',''),(11,'East Tellystad','1996-01-24 11:11:23',''),(12,'North Albaville','1988-02-17 13:52:00','\0'),(13,'West Kristina','2005-04-01 12:24:47',''),(14,'Spencerland','1997-02-25 12:02:10','\0'),(15,'Lake Keven','2007-03-29 06:53:01',''),(16,'Jacobsonport','1996-02-14 06:31:43',''),(17,'Herzogside','2009-11-25 13:16:39','\0'),(18,'New Ciara','1973-05-17 16:51:50','\0'),(19,'Lake Tierra','2007-05-30 12:59:22','\0'),(20,'Kunzeland','1993-05-07 06:47:33','\0');
/*!40000 ALTER TABLE `city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Имя',
  `lastname` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Фамилия',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password_hash` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` bigint(20) DEFAULT NULL,
  `address_id` bigint(20) unsigned NOT NULL,
  `is_deleted` bit(1) DEFAULT b'0',
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `users_phone_idx` (`phone`),
  KEY `users_firstname_lastname_idx` (`firstname`,`lastname`),
  KEY `address_id` (`address_id`),
  CONSTRAINT `client_ibfk_1` FOREIGN KEY (`address_id`) REFERENCES `address` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` VALUES (1,'Easton','Smitham','glenda.ankunding@example.net','8088b9f980f82d803d25b69b92831f7f33812b24',81515961,5,'\0','2012-08-07 16:30:59','1992-06-18 17:10:58'),(2,'Margarita','Marks','ofarrell@example.net','84385ef4131161f987d73f10fbde977c068cef48',87367406,83,'\0','1983-02-10 09:03:30','1976-07-08 10:27:04'),(3,'Roderick','Gulgowski','giovanny.towne@example.net','b45f91cfbae01de88f20babf16150639e1a0b905',81479721,87,'\0','1995-03-05 13:16:13','2012-05-29 00:19:45'),(4,'Bert','DuBuque','wstroman@example.com','8332a81b6d14244829613cd7579a522dae23f889',89776894,51,'\0','2013-11-16 17:32:54','2010-10-12 22:13:31'),(5,'Harrison','Greenholt','zbraun@example.net','2f4843cb8edfd77fb4f5a6b1d32700b549b27461',81643596,39,'','1972-08-06 16:53:36','1988-08-08 22:00:28'),(6,'Zetta','Roberts','kiehn.laury@example.org','6173a047d01450833a79d2885a021f4ab30e06eb',81738968,45,'','1989-03-05 16:22:54','2002-08-20 15:54:39'),(7,'Joanie','Armstrong','vita41@example.com','4d6f9089a6caf9a253f721dcc4d8a352962c2506',84316524,51,'','2019-03-31 18:38:42','2004-03-31 09:32:12'),(8,'Leora','Ernser','hratke@example.net','a338372981787dd840ad3f7ac3c541ed3e00eb62',80224324,97,'\0','1996-12-31 14:50:06','1996-06-16 08:29:30'),(9,'Bartholome','Sporer','cortney72@example.net','c3c3f3d34cf005a5ecbfd438d3756ece34c7fc92',88506948,68,'\0','2013-02-09 13:13:48','2004-02-10 04:30:12'),(10,'Malvina','Wyman','toy.swaniawski@example.net','9d493d5c027e098c2ae47dc276ef128510fd800c',87884018,52,'','2009-12-07 17:01:14','1995-11-19 03:22:17'),(11,'Vince','Murazik','rosetta.ledner@example.net','620935657b792bda020d84a82766ce810c6ffca6',83223926,81,'','1984-11-12 13:01:33','1988-03-07 11:19:03'),(12,'Katlynn','Gleichner','mcdermott.arlene@example.com','af3517199def67b97f93416a536e3f33e3cc3816',86153728,54,'\0','2013-02-10 05:18:26','2022-09-12 07:10:07'),(13,'Ceasar','West','mervin.abshire@example.com','e3eb88c48438a4cbe56bde1765d69c79af6cae79',87010109,12,'\0','1984-05-22 01:49:08','1988-04-24 08:29:05'),(14,'Elissa','Harris','kattie.hermann@example.net','e6274be6deb7c1baed547f1b4d3a13e30e9863d4',82752370,87,'\0','1999-01-29 02:59:24','1994-08-15 18:52:15'),(15,'Carolyne','Luettgen','etremblay@example.net','0d1c9ec0591923962ccc77005c2528c6b7dbeda9',80849520,99,'\0','2010-01-25 05:55:04','1972-02-19 19:45:45'),(16,'Nathan','Harber','jean75@example.com','62c145d0a71eeceffd0538d8e5f46a423e6c6149',82798541,85,'\0','2000-09-29 15:44:02','1990-07-23 20:21:06'),(17,'Thad','Gislason','murray.kirk@example.com','d2e81fcde3d523c3190e7bcfa35eb90ccb94d626',88948006,48,'\0','2010-11-28 18:58:20','1994-11-15 02:02:07'),(18,'Florencio','Pollich','andreanne.hirthe@example.org','3ecf9f226683c79bfff8b3889f045812966990ec',81741255,47,'','1985-03-23 02:59:28','1999-11-27 17:35:35'),(19,'Shana','Dickinson','jebert@example.org','0b02e8e4ed48246e548fc9215c3af230fa9c5f69',88110247,53,'','1986-02-15 06:17:44','1998-04-06 13:10:50'),(20,'Tillman','Grimes','naomi61@example.net','0bd030fe5d0ee1ff21270ac72513f054dfde6833',85254544,78,'','2012-04-09 11:35:28','2017-02-20 05:55:33'),(21,'Rachel','Hamill','uriah78@example.net','7fb801dd0e289b4a4d7a8b217fef267799496957',88802392,75,'','2010-05-29 22:57:53','1991-02-17 12:02:48'),(22,'Laurie','Frami','betsy32@example.net','a55a9d481d1a7d6de310abbe7bd7b990c6fcfc50',84217093,3,'','1998-12-17 02:46:37','1979-10-02 11:15:07'),(23,'Marlen','Bahringer','maya.grady@example.com','ec56191c4f1659d8314d163de57fedcf0f85d2cd',81016776,52,'\0','1988-12-28 05:32:37','1995-08-20 12:50:12'),(24,'Nathen','Sipes','isai77@example.net','1c82852539f39bd984bffc362f0dea7f450c39e5',82649521,82,'\0','2009-04-17 14:08:49','2007-03-04 21:15:02'),(25,'Natalie','Goyette','dee03@example.net','60a26c32f6abfa31e8291ab3742428b8dc089d3d',82791387,20,'','1983-03-03 20:38:44','1973-04-19 21:34:40'),(26,'Christine','Littel','billie.haag@example.org','5db171554e59ab25056243b92ad91ee436d63bdb',84014048,83,'','2014-12-05 22:39:04','1993-04-11 21:39:11'),(27,'Terrance','Herzog','helene.stiedemann@example.org','adecd682fd16946cfe21833efb1b32c57372f193',82422360,50,'\0','2019-01-24 04:55:27','2019-06-25 15:09:24'),(28,'Grace','Moore','sbins@example.org','692865203b53584b71bc059c8ebdc1a6e76d38bb',89697972,48,'','1977-10-08 05:49:38','1989-06-02 22:32:34'),(29,'Zion','Runte','genesis.marquardt@example.com','d93f187590d6705d8e253ab81b835ba7f26f40c5',86336256,4,'\0','2004-08-05 02:09:59','1981-04-18 14:57:58'),(30,'Van','Mueller','fmraz@example.net','8d18cdf8e32cf2e2b31e952e06f1e56d5e5f064a',81822259,63,'\0','1984-12-16 11:09:07','2021-12-12 19:40:12'),(31,'Otis','Howe','bergstrom.madge@example.com','7b30fed5ca07d76fa4cad97f2c8c1dd914a7201d',83754723,17,'','2012-02-18 05:33:22','2013-02-15 12:22:28'),(32,'Shania','O\'Keefe','morar.juliana@example.net','f2e37f8c68e92562975e0c47324e19ef5e7ff555',80239641,8,'','1992-08-15 08:05:23','2010-10-08 15:57:13'),(33,'Dustin','Cormier','elias.gislason@example.org','67f6b536b982e1bd436a0cd21637c69238d30ffd',84856882,45,'','1994-09-05 05:22:31','1971-07-18 07:34:28'),(34,'Rebeca','Haley','handerson@example.com','25210b9aeecae5a896742f78486210a93c14dc2d',84902998,4,'','1975-12-05 20:28:57','1987-02-07 23:42:25'),(35,'Dayne','Gerlach','pbayer@example.org','12e5e05caf432772dd181e5a71d37de69ea1859a',89862809,59,'\0','2018-06-05 14:16:16','2011-12-22 00:21:58'),(36,'Miles','Moore','glennie.o\'connell@example.net','708fba617fe32a70f6e1a670a90bcc6ccc883a07',88597187,84,'','1984-10-17 16:48:07','1971-03-07 19:25:56'),(37,'Johnnie','Zboncak','stephanie63@example.com','0b1f7a7c930fe6f5b03b6a2d81edc4563b628070',87909803,48,'\0','1971-03-27 20:22:26','1988-05-03 03:16:01'),(38,'Jesus','Bahringer','kyle.gleichner@example.com','2ba927cecc82035d841834faa5343d9ecee8e3db',86029771,10,'','1996-08-26 16:23:06','1997-04-21 07:14:49'),(39,'John','McLaughlin','golden31@example.net','98ea4abb2e5e33b02a4c21a4594f6ef67568e804',85943312,81,'\0','2017-02-01 09:37:38','1974-04-29 02:39:59'),(40,'Denis','Jakubowski','hettinger.davion@example.com','e2a4658908cfea4a301a0a66baa650e7683b6053',86705256,15,'\0','1978-06-15 10:54:38','2015-09-06 23:40:49'),(41,'Hugh','Hirthe','labadie.alysson@example.net','58e114ccf03911951401fa0830a1d439de43e61e',86726017,61,'','1992-06-06 02:39:30','1988-07-23 18:08:28'),(42,'Laisha','Rohan','owen.aufderhar@example.org','51e1931f10145bec72aff8784ec26aaba893d495',83404744,61,'\0','1992-02-28 13:14:21','1990-09-15 14:13:27'),(43,'Vita','Treutel','lhoeger@example.org','1628c7012862bce653ce80a267e0e80f13200eca',87247060,69,'\0','2013-08-09 00:40:37','1993-02-27 21:39:30'),(44,'Cooper','Waelchi','yazmin.casper@example.org','9b87e4d58bff8306a6bb341c7cb2320bbc2db53f',81635247,73,'','1983-02-12 17:05:44','1986-02-24 13:37:12'),(45,'Alexanne','Kilback','isac.jacobi@example.com','6e9beffb20534a9908d9b3947ac45d7420baeb9d',81353548,48,'','1993-06-12 00:14:11','2010-07-15 08:27:28'),(46,'Jaqueline','Rowe','hspinka@example.com','6b90440a3729643e53031996a2497d5d0e58d551',84128771,67,'\0','2018-01-15 23:32:13','2003-05-14 09:23:42'),(47,'Noel','Bauch','vhaag@example.net','626dafa4043a4b4d17ad9c64312eb5cab655fcb2',88696943,57,'','1972-11-01 16:49:07','2003-03-08 08:48:40'),(48,'Henderson','Ortiz','reva.jones@example.com','efb82a5204b69f341c8bae7847f9812efcb35d12',83156878,95,'\0','1989-12-10 22:42:51','1994-12-28 22:13:49'),(49,'Monte','Bailey','paul.roob@example.net','fabac15faa9eaae727a4b71c3ebec30d4fb9a8ca',81598203,13,'\0','2010-01-13 03:48:44','1992-01-02 11:32:30'),(50,'Ari','Luettgen','delta78@example.net','325ce776d68125be0087a720b2d39c05a49fa54b',83827426,10,'\0','1973-12-25 09:54:45','1975-05-31 18:54:38'),(51,'Emie','Bashirian','jdonnelly@example.com','0780635a965b6af747aec891114b295d9bd950f2',87659807,73,'','2006-08-27 17:41:12','2015-01-02 11:51:35'),(52,'Karlie','Ullrich','tania.ullrich@example.org','13f37ca6c4313aae5b796ded8ba735f5012da08d',80627687,88,'\0','2001-10-16 13:49:41','2008-07-03 09:10:21'),(53,'Emory','Rau','conroy.darrell@example.net','e5b1507172de87c53a7d457d52fcd063896112af',87518184,12,'\0','1999-12-13 04:27:58','1991-11-08 05:51:10'),(54,'Gladyce','Fadel','fparker@example.com','fcf4414b54ca120da15e9c108f9e7f0036561cc9',85576170,24,'\0','1983-02-10 09:04:55','1992-04-10 04:08:08'),(55,'Amalia','Olson','constantin.eichmann@example.net','169954f47000fe4d9316ee84eebadd412714776d',85744818,69,'','2004-11-30 11:26:24','2014-10-07 18:57:47'),(56,'Stephany','Baumbach','boehm.kenya@example.com','7883317e7b2e85f82cb84f30d11826534faa5d75',83748984,31,'\0','1972-07-25 01:39:20','1985-09-01 00:58:29'),(57,'Emerson','Torp','hanna.kshlerin@example.net','b4dc09fb7f57301d08c2777d381de4db829e688e',81589155,6,'','1988-11-15 19:12:47','2018-09-12 18:10:32'),(58,'Bette','Thompson','rosanna33@example.org','0408ac194895a85176d34c058a68bd94e5f092b8',88828389,19,'\0','1982-05-04 00:42:35','1995-01-19 17:39:21'),(59,'Roger','Lubowitz','ernestine.friesen@example.org','9aea3b7078683c1c44437fdfbdbff7009e385dde',89493784,79,'','1993-12-18 22:44:06','2001-12-10 23:02:15'),(60,'Oda','Predovic','dorothea.daugherty@example.net','3ba38a88cb6d63aac28005611057986b8edcb85a',80079057,10,'\0','1982-01-07 23:05:56','2022-08-20 19:47:42'),(61,'Kayli','Feil','leopold.zboncak@example.com','cdeb690050b87b68ef66c14c76757580964f610d',88068314,82,'','2013-12-23 13:56:40','2012-03-01 03:16:50'),(62,'Imani','Gerhold','zieme.rosa@example.com','948df520a64a3c6bea6b6d23d9bc7ad023981215',83120638,96,'\0','2020-11-08 18:18:39','2012-01-15 15:12:03'),(63,'Jamie','Rodriguez','jefferey.carroll@example.org','8e0e6f9d054d22cf6711392b2b9f44b502a0fab3',83831217,17,'','1991-11-01 08:40:48','1994-07-02 11:44:02'),(64,'Bailey','White','demond.carroll@example.com','1907c589996d8cc7292c2978557ba85420aa5c18',84831782,27,'','2015-07-06 05:52:17','1987-07-21 17:16:49'),(65,'Myra','Hahn','zcorwin@example.net','1fdd27d2ad66f7516dba50634f248fccc8e883c2',84219797,99,'\0','2022-02-12 04:27:11','2002-04-09 04:16:54'),(66,'Yasmin','Bernier','hluettgen@example.net','4b7fce53afceb9fefe0a35b963a08a44330b331e',83656395,75,'','1993-11-18 12:37:09','2011-06-12 16:09:03'),(67,'Patience','Koch','dessie54@example.net','825bca337744ec32776c6d5fbd397a3d92c8ff84',89530778,10,'\0','2022-01-20 11:49:14','1987-11-12 11:47:05'),(68,'Evalyn','Gottlieb','carrie.koelpin@example.org','03938ecbe6177ed85d92e1a64be7c426f9ad54f6',80434490,46,'\0','1992-01-01 11:38:48','2016-04-25 10:56:27'),(69,'Hank','Schamberger','davon24@example.com','243ebfe6d67a989839a8776c1823d01715f4be88',86702916,85,'','1983-06-28 12:40:28','1987-08-11 06:15:33'),(70,'Gwen','Kub','fbatz@example.org','e0d034717371574577a13360400c5e315488418b',88443908,90,'','2022-07-30 11:48:21','2017-12-20 00:59:25'),(71,'Rowland','Lubowitz','wyman.sienna@example.org','3a6aabb2f17cf67ef3c3901e4c460ec667876918',80585640,61,'','1971-05-01 02:12:53','2018-06-29 01:01:10'),(72,'Russell','Jaskolski','dickinson.imogene@example.com','8668d195ea9f95c44c6e8748f6314da556f961f7',87735228,45,'\0','1992-11-09 09:58:02','1976-05-12 07:49:00'),(73,'Harold','Douglas','max20@example.net','040cc1a76023fa72fed842cc0d0e27d8d19380c1',85708651,51,'','2007-05-27 03:04:13','2016-07-21 11:30:29'),(74,'Carmine','Bartell','ben.nicolas@example.org','220bbadb22876c85528878169dde6aecd010442b',80273331,29,'','2015-10-23 16:36:05','2010-01-11 16:16:55'),(75,'Fabiola','Thiel','huel.verdie@example.org','bb6746ddecc45f610d87a60bbcc929dc66b9d249',88472510,17,'\0','2018-01-09 01:34:25','1973-11-27 00:05:51'),(76,'Delia','Gutkowski','williamson.jack@example.net','9886650716a0e615fe9b45332038c94db7bff0b7',85063675,98,'','2012-08-27 13:10:33','1979-11-07 16:19:54'),(77,'Shirley','Smitham','haley.genevieve@example.net','91a468344711800fdb3a583b3b56801a4fbaf2c4',80725002,96,'','2004-08-25 11:04:06','1977-05-23 07:03:50'),(78,'Anita','White','nwisoky@example.org','9bbbe1ae6c1396b631da8a98c2d5c947e9bc67c6',89171425,74,'','2000-09-25 07:27:28','1997-08-09 07:07:11'),(79,'Terrell','Wiegand','goyette.brendon@example.net','04bdd9af4cc37284d110d755a17e40adef57039e',85387283,93,'','1973-07-22 15:22:31','2000-05-04 12:49:11'),(80,'Laurence','Carter','toney.d\'amore@example.net','995b53b3717db601d29a0c90595b66526063c772',86156550,9,'','1990-03-06 13:11:06','1994-12-07 02:01:50'),(81,'Mabelle','Cummerata','prohaska.mortimer@example.com','274657b2cd1ac5bb5cf42a896db6337bdaf8877d',86269398,83,'\0','2011-05-26 00:45:33','1989-02-18 20:39:13'),(82,'Rico','Pollich','michaela.windler@example.com','3e65dc9cd9dc485fb771ce73290a78df1b4ceb6f',86107457,66,'','2011-12-26 16:29:05','2003-11-27 00:06:00'),(83,'Mariane','Schmeler','carolina.lockman@example.org','fde24b8e584cc23199fb058d594e55791c2f8b20',89743422,96,'\0','2015-07-23 18:37:58','1985-12-24 16:25:33'),(84,'Jarrett','Gottlieb','arlene18@example.org','f71dfc04a28adf9bffe969d1b4b6d8fcfefaa650',85452822,95,'\0','1974-12-23 22:27:39','2013-12-04 14:00:31'),(85,'Braxton','Schimmel','nmraz@example.com','ce90aa9457c22342994482e5eac08d7368406c3d',88126544,89,'\0','2005-09-30 15:17:44','2003-11-24 20:06:26'),(86,'Brenden','Bradtke','estreich@example.com','7eb498bf595a312212d623f48a9c1f63a596e882',84076678,64,'\0','2000-10-25 15:16:55','1996-10-25 11:56:31'),(87,'Nadia','Ruecker','beier.phoebe@example.org','998dd2cb737846f985c924dd38ddd7c193d55d20',82704270,26,'','1984-12-29 17:54:16','2002-03-05 08:37:49'),(88,'Gianni','Sporer','kaela36@example.com','162f1d2ac63b08023b5f170f211b27f5c6350d02',87712129,95,'\0','1970-01-20 08:42:21','2005-09-05 17:23:33'),(89,'Zachariah','O\'Connell','eino53@example.com','bfd81dbb85d53c0135391c576b74969a61b0622d',80220098,83,'\0','1976-10-15 07:28:16','1972-02-15 13:17:23'),(90,'Jaylen','Macejkovic','cruickshank.caitlyn@example.org','4dfc9229221f32fdb8fdf1c1dc843a71371a5982',87524126,4,'','1984-12-12 16:44:44','1998-06-04 22:20:57'),(91,'Rigoberto','Smitham','magdalena.kirlin@example.net','e02b14e24b03ce17e5649ceedd784aee29b81b92',84529769,4,'','2013-05-28 12:56:24','2017-03-25 13:23:52'),(92,'Kiley','Hudson','delaney17@example.com','0003b3f4cede73a05bdc465411855c1ef33c4fdf',82061434,64,'\0','1990-06-11 12:59:38','2007-09-12 21:24:38'),(93,'Vance','Harris','teagan50@example.org','a0961a5f5c91671f64abd7209b4bf0fe929716f5',87541727,99,'\0','2010-05-08 09:35:35','1985-11-10 18:05:51'),(94,'Derick','Hansen','orn.austin@example.net','38cf50b64d19563851868889b840e1e74bac2c4a',89626699,20,'\0','1990-02-13 00:42:30','1972-07-10 20:33:39'),(95,'Rhoda','Hand','kiley.zieme@example.net','973777b72fe9233acde2bdc63a76c207895c52cc',84725392,90,'\0','1995-10-14 01:09:04','1992-01-31 16:43:26'),(96,'Lionel','Breitenberg','chase.moore@example.net','594f92a053abb71f63af910e13d4b2fd6c76efae',88309929,97,'','2013-10-24 23:40:40','2007-09-30 17:40:41'),(97,'Selena','Hessel','clyde36@example.com','25e217c9f2870999ec8f26bc095efa88a28e50d5',89634246,95,'','1976-10-25 07:00:59','2008-03-28 03:49:11'),(98,'Camilla','Kulas','nestor.runolfsson@example.net','5a75cebd97a849d19a2c1b7f0579c64412b61931',89391260,100,'\0','2010-02-14 08:29:02','1996-01-27 07:36:11'),(99,'Harold','Johns','kkling@example.com','01b7049495d43233e95d5254d10bef2da63a9460',86930733,43,'','1990-12-18 19:06:33','2003-05-26 20:36:10'),(100,'Julien','Klocko','kenna.reynolds@example.org','dca5c10714f99d46b31caa5b0e039e5abeb12edf',81989727,79,'\0','2003-04-08 10:33:26','2007-08-16 04:30:40');
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courier`
--

DROP TABLE IF EXISTS `courier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `courier` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Имя',
  `lastname` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Фамилия',
  `phone` bigint(20) DEFAULT NULL,
  `salary` int(11) DEFAULT NULL,
  `address_id` bigint(20) unsigned NOT NULL,
  `is_deleted` bit(1) DEFAULT b'0',
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `courier_phone_idx` (`phone`),
  KEY `courier_firstname_lastname_idx` (`firstname`,`lastname`),
  KEY `address_id` (`address_id`),
  CONSTRAINT `courier_ibfk_1` FOREIGN KEY (`address_id`) REFERENCES `address` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courier`
--

LOCK TABLES `courier` WRITE;
/*!40000 ALTER TABLE `courier` DISABLE KEYS */;
INSERT INTO `courier` VALUES 
(1,'Ashlynn','Boehm',83568733,47421,89,'\0','1999-01-29 06:32:26','2000-08-04 08:14:14'),
(2,'Ernie','Erdman',81449783,33111,4,'','2013-05-18 10:26:58','1990-11-12 03:10:55'),
(3,'Dovie','Marquardt',83060373,46175,24,'','1988-02-12 19:44:26','1972-10-29 02:27:55'),
(4,'Keenan','Sauer',84787201,49855,39,'\0','1986-12-30 18:12:04','1974-07-22 10:10:08'),
(5,'Destany','Legros',82325522,31905,33,'\0','1989-06-22 21:03:34','2007-03-18 03:35:40'),
(6,'Rosalind','Renner',81981811,42142,40,'','1999-06-07 07:59:25','1978-12-31 20:17:27'),
(7,'Leslie','Schmidt',81146669,41944,37,'\0','2004-09-29 06:39:19','1997-03-12 23:31:53'),
(8,'Torrance','Marvin',88665557,34931,28,'\0','2007-06-17 19:27:16','1989-11-21 16:18:26'),
(9,'Dion','Flatley',81042236,34419,14,'','2004-12-07 16:41:16','2012-10-07 21:05:18'),
(10,'Faustino','Cummings',82440091,41090,30,'\0','2007-02-28 12:30:44','2020-03-12 15:18:13'),
(11,'Mckayla','Pacocha',81480339,39271,37,'','1983-05-22 02:17:47','2010-07-09 19:34:16'),
(12,'Letha','Walter',84523314,41831,97,'\0','2018-01-06 15:48:06','2015-07-21 08:24:22'),
(13,'Camila','Schamberger',82196763,49204,95,'','1994-05-29 07:21:14','1977-01-30 09:20:09'),
(14,'Cornell','Kohler',83869694,36187,32,'','1979-07-01 17:48:01','2019-01-30 17:04:44'),
(15,'Cassie','Schneider',84661546,39977,91,'\0','2000-08-06 22:31:30','1988-07-01 01:29:12'),
(16,'Juliana','Wyman',80183201,41214,83,'','2004-04-13 12:49:43','2006-04-04 01:52:51'),
(17,'Shaun','Kautzer',88499177,35100,96,'\0','1999-12-29 18:19:51','2018-09-08 10:41:08'),
(18,'Jack','Ortiz',81426488,42818,16,'\0','2016-10-17 20:41:53','1998-02-09 10:13:27'),
(19,'Hattie','Hoppe',88310711,33172,78,'','2009-10-10 06:14:10','2000-02-26 00:00:43'),
(20,'Eulah','Champlin',89706150,37769,78,'','1999-01-28 18:04:23','2019-03-22 20:25:25'),
(21,'Kristoffer','Zboncak',87736944,43866,19,'','2014-12-18 16:23:36','1980-01-19 07:06:12'),
(22,'Marcelo','Bernhard',85652927,43780,81,'','2008-03-30 13:26:27','2016-07-31 03:23:46'),
(23,'Werner','Herzog',88196930,49712,42,'\0','2020-07-16 20:23:20','1989-04-11 09:54:19'),
(24,'Nia','Rosenbaum',81322375,39509,18,'\0','1980-06-18 19:22:24','1999-06-12 13:33:25'),
(25,'Adaline','Rolfson',80463753,39030,1,'','1988-01-22 14:19:32','2014-11-11 17:58:40'),
(26,'Dolores','Hayes',89737609,36673,31,'','2015-12-10 20:50:13','1981-07-10 08:09:55'),
(27,'Toni','Abbott',82808444,38681,15,'\0','1978-02-28 01:46:40','1995-07-12 02:52:49'),
(28,'Madisen','Keebler',85302145,41926,96,'','1980-08-18 05:14:33','1995-01-30 03:05:54'),
(29,'Lacy','Murray',89300317,35719,30,'\0','1990-02-14 02:32:48','1972-05-21 23:20:25'),
(30,'Eldora','Jast',81865117,30952,58,'','1978-05-16 13:08:27','1993-05-14 07:44:46'),
(31,'Oswaldo','Schaden',88793935,37143,74,'','2000-12-30 23:27:48','2013-04-29 02:10:07'),
(32,'Ora','Nolan',87823461,45325,19,'\0','2001-10-21 04:07:44','1998-07-06 01:46:08'),
(33,'Dayton','Wisozk',89704494,41320,61,'\0','2018-04-27 20:46:29','1973-10-10 08:39:04'),
(34,'Katelyn','Brekke',84298547,45920,98,'','2013-06-29 02:32:47','1975-01-24 01:45:15'),
(35,'Megane','Simonis',82132860,47225,58,'','1995-09-28 07:59:31','1982-09-18 14:31:18'),
(36,'Jailyn','Schmitt',81255700,33891,93,'\0','2006-04-15 16:57:12','2016-05-25 03:32:14'),
(37,'Greyson','Erdman',86384791,31502,37,'\0','2006-07-12 10:02:09','1989-11-06 18:19:13'),
(38,'Yoshiko','Tremblay',86405447,36582,95,'','1983-04-07 13:08:07','1971-04-20 05:37:39'),
(39,'Kayden','Langworth',87892071,42685,21,'\0','2002-03-01 00:54:06','1982-03-11 00:59:05'),
(40,'Henderson','Parker',81072495,33149,51,'','1976-06-07 08:52:12','2009-11-01 11:45:06'),
(41,'Adolfo','Boehm',85178712,41358,24,'','2011-09-07 03:46:00','2021-10-17 20:37:58'),
(42,'Mavis','Conn',87595494,35056,57,'\0','1985-07-25 20:14:29','1989-10-02 20:26:21'),
(43,'Veronica','Blick',80235031,41862,47,'\0','2005-12-04 23:10:05','2022-01-19 08:43:39'),
(44,'Ladarius','Halvorson',85781608,39848,18,'','2015-06-10 01:58:03','1980-10-26 17:55:58'),
(45,'Obie','Wunsch',82465207,31479,89,'\0','1996-08-24 17:17:01','2006-12-30 09:00:40'),
(46,'Allie','Ruecker',82145063,41409,37,'\0','1977-11-04 01:58:04','1980-08-30 09:05:59'),
(47,'Rupert','Wilderman',84522682,41968,1,'','1992-08-28 03:22:31','1987-06-13 19:08:45'),
(48,'Brionna','Spinka',80246258,30392,84,'','2000-01-06 01:20:50','2006-10-01 07:09:11'),
(49,'Mya','Krajcik',88326935,32086,52,'','1996-02-07 18:31:31','2005-07-28 01:45:52'),
(50,'Milford','Rowe',80532701,44953,79,'\0','1982-04-08 07:39:52','1991-09-10 13:20:12'),
(51,'Jaiden','Goldner',80349337,38132,62,'','1987-12-17 01:48:22','2008-09-23 23:35:02'),
(52,'Carmella','McDermott',86342237,40515,71,'','2015-07-09 12:33:31','1978-10-08 00:37:40'),
(53,'Kenton','Yost',83309160,37831,59,'','2018-10-06 10:37:56','2004-06-29 03:17:47'),
(54,'Lane','Blanda',82116808,35257,3,'','2015-05-19 23:27:34','2016-06-11 02:37:40'),
(55,'Hilda','Huel',80402168,32565,89,'','2018-10-19 04:47:15','1997-07-24 20:59:06'),
(56,'Jessy','O\'Connell',88477693,40647,59,'','2004-12-09 16:16:20','1999-12-12 14:51:32'),
(57,'Eveline','Kulas',88872034,48838,34,'','1988-02-23 01:30:15','1985-06-04 22:49:21'),
(58,'Giovani','Bergnaum',82688424,39164,3,'\0','1971-03-15 22:07:52','2007-03-30 20:50:59'),
(59,'Sigurd','Crist',81676696,37849,54,'','2007-08-28 18:32:50','1971-03-21 05:58:08'),
(60,'Hector','Olson',81090468,49596,64,'\0','2022-05-25 16:13:22','1981-05-05 19:45:28');
/*!40000 ALTER TABLE `courier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery`
--

DROP TABLE IF EXISTS `delivery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `address_id` bigint(20) unsigned NOT NULL,
  `delivery_date` date NOT NULL,
  `courier_id` bigint(20) unsigned NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `is_deleted` bit(1) DEFAULT b'0',
  PRIMARY KEY (`id`),
  KEY `address_id` (`address_id`),
  KEY `courier_id` (`courier_id`),
  CONSTRAINT `delivery_ibfk_1` FOREIGN KEY (`courier_id`) REFERENCES `courier` (`id`),
  CONSTRAINT `delivery_ibfk_2` FOREIGN KEY (`address_id`) REFERENCES `address` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `delivery_ibfk_3` FOREIGN KEY (`courier_id`) REFERENCES `courier` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery`
--

LOCK TABLES `delivery` WRITE;
/*!40000 ALTER TABLE `delivery` DISABLE KEYS */;
INSERT INTO `delivery` VALUES (1,75,'1971-08-19',60,'1977-10-12 00:50:41','2008-06-24 20:38:40',''),
(2,53,'1998-04-10',53,'2003-08-03 15:01:10','1980-08-17 14:50:13','\0'),
(3,85,'2020-11-16',27,'1972-03-11 02:49:56','2015-03-12 15:51:58',''),
(4,32,'1997-10-26',33,'1985-12-30 04:00:50','1977-05-19 09:48:03',''),
(5,48,'2011-02-04',22,'2011-09-07 14:16:00','1982-04-22 07:15:55',''),
(6,63,'1970-08-15',60,'1975-08-06 09:19:14','2019-06-18 12:21:21',''),
(7,34,'1987-04-19',42,'1972-07-15 07:11:07','1990-08-09 06:39:36',''),
(8,78,'2008-10-20',22,'1975-03-02 09:02:23','2002-09-15 19:53:10',''),
(9,85,'1985-07-29',13,'1997-08-25 09:13:24','2003-09-20 14:55:16',''),
(10,78,'2012-08-21',47,'2009-10-26 21:50:54','2016-12-08 15:30:03','\0'),
(11,14,'1986-10-30',15,'1994-09-15 01:32:31','2019-02-13 00:15:43','\0'),
(12,78,'2004-08-21',29,'1988-07-20 18:22:04','2017-08-24 12:25:10','\0'),
(13,58,'1997-03-01',33,'1972-04-06 01:25:18','2002-08-02 02:27:48',''),
(14,31,'1999-05-16',60,'1982-06-20 06:12:06','1972-07-05 04:24:23',''),
(15,59,'2018-08-23',45,'1998-11-17 05:27:12','1993-01-01 06:44:56',''),
(16,72,'2005-03-13',33,'1978-06-07 01:38:38','1984-11-03 18:52:11',''),
(17,7,'1999-12-15',41,'1985-05-04 01:14:45','2008-04-17 04:05:50','\0'),
(18,100,'2011-03-30',42,'2005-11-18 03:47:50','1993-12-18 15:41:11','\0'),
(19,67,'1983-08-07',32,'2015-09-17 20:04:29','1980-01-13 22:17:27',''),
(20,25,'1993-09-13',15,'2001-11-14 11:48:40','1978-04-09 11:55:16',''),
(21,53,'1995-09-24',57,'1998-04-14 20:56:05','2011-08-08 17:29:03',''),
(22,74,'1981-11-10',16,'2000-01-18 13:02:30','2017-11-17 22:15:48',''),
(23,28,'1996-02-15',52,'1974-03-09 07:23:28','2016-08-09 09:58:26',''),
(24,7,'1987-11-23',13,'1982-12-06 10:04:30','1972-03-10 00:27:15','\0'),
(25,44,'1998-07-03',25,'2012-03-30 05:30:21','1994-05-04 22:59:39','\0'),
(26,59,'1996-02-25',57,'1998-12-10 03:12:53','1980-08-01 18:30:35',''),
(27,99,'1984-05-01',37,'2004-10-09 16:20:00','1989-09-19 18:57:17',''),
(28,55,'2006-08-22',57,'2020-08-25 10:41:14','1979-05-05 12:41:29',''),
(29,9,'1981-02-04',36,'1987-12-29 08:04:01','2004-01-29 07:54:58',''),
(30,17,'2015-12-06',47,'1985-08-28 09:25:09','1970-12-11 14:53:17',''),
(31,31,'2021-01-17',59,'2003-05-29 01:17:38','1992-09-10 08:40:56','\0'),
(32,100,'2000-06-18',37,'1978-09-10 09:42:56','1995-11-13 17:22:37','\0'),
(33,29,'1989-10-25',10,'2005-05-25 17:18:42','2010-01-04 01:42:14',''),
(34,29,'1993-01-20',26,'1988-05-24 22:38:23','2017-12-21 19:38:46',''),
(35,31,'2016-11-19',54,'2005-02-07 22:03:53','2007-09-15 05:15:30',''),
(36,10,'1972-05-06',34,'1987-08-13 16:09:49','1985-01-26 12:35:30',''),
(37,40,'1981-04-22',44,'1996-09-14 02:50:59','1993-03-18 16:48:23','\0'),
(38,69,'1982-01-25',58,'1995-07-28 00:58:21','1990-02-17 22:18:58','\0'),
(39,35,'1981-04-16',6,'2004-10-04 22:43:24','1994-04-17 05:54:58','\0'),
(40,80,'1971-01-25',18,'2002-01-22 17:41:50','2009-09-29 23:29:42',''),
(41,60,'1991-01-22',39,'1992-03-15 05:37:27','2010-05-06 04:46:45','\0'),
(42,34,'1978-06-26',59,'2018-04-29 12:19:27','1996-08-11 17:56:42','\0'),
(43,76,'1973-06-30',29,'1995-03-03 05:46:55','2003-03-02 03:08:48','\0'),
(44,16,'1987-08-23',34,'1991-12-06 12:38:03','1992-06-14 09:41:04','\0'),
(45,74,'1999-01-19',33,'1980-09-03 08:39:53','2015-07-07 12:46:51','\0'),
(46,51,'1979-12-24',4,'1971-01-09 10:19:44','2020-02-22 09:42:17','\0'),
(47,21,'1997-08-15',50,'2016-02-02 03:21:47','1981-02-21 18:34:25',''),
(48,41,'2014-07-02',50,'2019-06-10 22:10:34','1994-07-22 21:02:31',''),
(49,50,'1981-10-27',40,'1975-06-13 15:07:44','1988-12-28 08:43:08',''),
(50,46,'1977-01-24',51,'2013-06-25 22:07:33','1986-01-03 13:53:44',''),
(51,23,'1974-10-07',56,'2000-11-13 22:05:42','2012-12-24 01:11:21',''),
(52,64,'1982-07-07',3,'2015-04-11 19:47:28','1977-04-25 22:19:32',''),
(53,39,'1988-07-02',32,'2010-12-25 02:04:17','2013-04-26 10:26:06',''),
(54,30,'1990-06-24',13,'1999-11-15 23:22:28','1970-06-13 06:56:51','\0'),
(55,8,'1972-08-18',10,'2018-12-08 05:36:41','2002-08-01 16:25:20',''),
(56,51,'2004-01-03',28,'1979-09-25 23:32:18','1989-11-19 18:39:06',''),
(57,49,'1978-12-21',34,'1986-05-08 09:42:51','1971-10-16 15:09:55','\0'),
(58,26,'2013-03-21',24,'2017-05-27 23:32:00','2010-08-19 02:35:59','\0'),
(59,73,'2014-04-05',42,'2019-06-24 03:48:31','2009-03-02 12:45:19','\0'),
(60,8,'1999-04-14',47,'1981-06-25 21:18:11','1994-01-15 07:17:25','\0'),
(61,75,'1994-07-16',58,'1980-03-09 10:29:45','2012-12-30 17:46:53','\0'),
(62,51,'2012-11-14',55,'2004-09-21 10:05:59','1978-04-09 00:17:35',''),
(63,8,'2014-03-05',1,'2011-03-16 09:43:56','2008-12-12 12:49:55',''),
(64,45,'2010-04-25',58,'1981-07-21 22:42:29','1981-02-05 04:14:17','\0'),
(65,61,'1994-11-28',11,'1971-11-03 22:16:25','2005-03-31 11:13:33',''),
(66,38,'2019-06-27',24,'1984-08-09 05:44:01','2014-10-29 05:36:06',''),
(67,46,'1998-07-05',1,'1973-05-05 06:33:08','2008-03-09 02:12:11',''),
(68,46,'1982-05-14',34,'2002-01-23 10:29:58','2021-12-23 16:50:04',''),
(69,33,'1989-09-30',46,'2008-06-21 11:14:54','2001-01-05 04:59:25','\0'),
(70,57,'1992-12-24',40,'2000-12-21 17:12:52','2014-06-16 22:14:31',''),
(71,86,'1986-02-10',7,'2019-07-05 18:48:47','1995-10-14 19:05:13',''),
(72,7,'1973-09-01',35,'2016-01-01 04:28:34','2014-12-12 06:32:59','\0'),
(73,90,'2009-09-04',33,'1990-07-24 18:31:28','2019-03-22 13:55:04','\0'),
(74,58,'1985-05-31',42,'2010-06-18 08:11:12','2020-12-15 14:55:15','\0'),
(75,74,'1984-05-14',56,'1981-05-18 08:36:38','2009-12-14 17:37:40','\0'),
(76,8,'1988-05-04',49,'1973-03-30 08:22:30','2009-09-14 22:00:55',''),
(77,24,'1993-09-29',9,'2022-01-14 17:25:35','1998-02-05 07:06:35','\0'),
(78,44,'1972-07-19',32,'1973-12-02 04:47:24','1971-03-10 20:52:56',''),
(79,49,'2014-12-31',18,'2013-12-04 09:51:29','2019-10-17 09:00:37','\0'),
(80,89,'1992-08-04',10,'1976-11-22 23:33:28','2007-08-18 03:40:29',''),
(81,78,'1992-11-06',26,'1992-09-09 17:15:46','1987-06-08 16:47:44','\0'),
(82,93,'1973-07-02',23,'1980-05-19 12:48:17','2017-06-01 20:49:35','\0'),
(83,27,'1996-03-07',39,'1983-09-21 14:53:19','1978-07-31 00:51:26',''),
(84,7,'1988-10-02',59,'2012-10-03 16:18:14','1996-12-24 12:24:18','\0'),
(85,14,'2015-06-27',3,'2004-09-05 12:45:50','1974-06-23 05:27:26',''),
(86,98,'1999-05-25',10,'1978-12-08 02:02:27','1981-04-19 09:31:22','\0'),
(87,69,'1993-01-31',5,'2018-02-04 13:07:14','1974-05-19 22:15:38',''),
(88,34,'1973-11-03',59,'2001-06-04 10:50:39','1988-05-29 21:57:59','\0'),
(89,37,'1981-04-05',22,'1992-06-26 20:33:14','2015-03-18 01:04:20',''),
(90,21,'1997-03-02',11,'1992-08-29 03:46:21','1994-09-05 05:33:48','\0'),
(91,57,'2002-10-21',29,'2000-12-03 22:48:44','1972-06-25 15:05:48','\0'),
(92,59,'1999-02-13',21,'2003-05-25 05:26:02','1972-04-12 10:13:08','\0'),
(93,87,'1980-06-14',2,'2016-11-18 14:05:43','1997-05-03 14:02:38',''),
(94,12,'1984-08-09',36,'2007-04-03 21:26:07','1976-02-01 02:49:10',''),
(95,90,'1977-10-26',1,'2021-04-12 23:35:01','2009-12-27 14:06:13','\0'),
(96,45,'2008-01-09',38,'1977-04-01 07:01:29','1993-09-11 21:35:55','\0'),
(97,26,'2007-03-17',38,'2003-10-04 10:49:57','2014-03-20 19:26:26','\0'),
(98,91,'1970-04-30',53,'1974-08-23 21:46:40','1986-11-28 07:57:41',''),
(99,76,'1994-02-03',47,'1992-08-27 03:41:37','1976-05-09 05:06:50',''),
(100,11,'1993-03-07',50,'1989-03-24 11:10:30','2010-10-26 03:29:26','');
/*!40000 ALTER TABLE `delivery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media`
--

DROP TABLE IF EXISTS `media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) unsigned NOT NULL,
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`metadata`)),
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `media_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media`
--

LOCK TABLES `media` WRITE;
/*!40000 ALTER TABLE `media` DISABLE KEYS */;
INSERT INTO `media` VALUES (1,100,'ducimus',943407468,NULL,'1987-02-22 09:19:48','2007-12-21 04:38:26'),(2,41,'deserunt',926725,NULL,'1987-12-14 22:35:05','1989-03-15 07:23:58'),(3,86,'nihil',184313,NULL,'1990-05-11 02:15:02','2003-06-10 20:59:17'),(4,58,'nam',203,NULL,'1971-09-10 23:29:17','1982-01-19 14:09:19'),(5,19,'eos',2405,NULL,'2001-01-03 06:57:30','2009-08-30 11:21:44'),(6,100,'optio',8710360,NULL,'2006-11-05 09:31:13','1986-11-18 21:32:26'),(7,88,'ex',316,NULL,'2013-10-25 05:19:29','2011-10-17 00:04:16'),(8,61,'maxime',4186001,NULL,'1984-11-11 23:36:51','2002-01-09 12:50:16'),(9,43,'eveniet',0,NULL,'1989-06-03 19:45:38','1983-09-16 21:37:54'),(10,46,'asperiores',8,NULL,'2012-11-29 08:56:39','2021-09-09 06:27:49'),(11,71,'deserunt',910517595,NULL,'1991-04-26 01:27:25','2007-07-05 23:07:39'),(12,63,'reiciendis',95614883,NULL,'2011-09-20 09:21:18','1974-03-06 09:27:48'),(13,65,'eos',1,NULL,'1983-12-18 06:34:26','1991-02-10 22:03:57'),(14,90,'aut',59,NULL,'1989-07-22 02:13:29','1975-07-28 17:48:17'),(15,15,'aspernatur',457337,NULL,'2017-11-17 19:34:31','2004-04-22 14:08:12'),(16,24,'dolores',47,NULL,'2020-02-07 13:30:01','2009-09-15 05:37:21'),(17,48,'sint',0,NULL,'1990-10-29 13:15:31','1994-11-09 11:28:12'),(18,25,'magni',78769,NULL,'2010-04-13 15:03:25','2015-06-29 04:09:00'),(19,100,'et',2,NULL,'1975-11-10 01:11:41','1985-10-01 14:42:45'),(20,60,'ipsam',56668,NULL,'2016-09-09 01:01:03','1976-05-30 22:26:40'),(21,97,'voluptatum',1654601,NULL,'1973-08-23 14:44:16','1997-01-02 01:27:48'),(22,95,'dolore',90807,NULL,'1997-09-11 04:19:02','1981-06-09 10:51:25'),(23,52,'architecto',6389196,NULL,'2015-06-29 04:44:56','2008-05-22 22:24:46'),(24,33,'harum',712570866,NULL,'1982-07-25 18:03:13','2005-07-12 17:29:45'),(25,45,'nesciunt',32,NULL,'1987-05-26 03:30:00','2004-03-16 15:05:36'),(26,84,'deserunt',683,NULL,'2014-12-25 05:32:12','1996-04-18 06:24:57'),(27,16,'dolorum',5080,NULL,'2017-11-27 02:47:12','1999-07-10 15:47:32'),(28,78,'laboriosam',12,NULL,'1992-07-28 18:31:09','2018-07-26 01:32:06'),(29,87,'sapiente',0,NULL,'1990-11-28 20:37:03','1996-01-17 03:43:30'),(30,74,'dolore',701,NULL,'1978-12-08 14:35:11','1980-02-21 19:03:05'),(31,98,'dolor',0,NULL,'2022-07-03 22:33:41','2008-10-20 13:17:02'),(32,86,'deserunt',8876547,NULL,'2000-10-04 17:36:02','1985-09-29 19:02:37'),(33,15,'omnis',7017,NULL,'1996-11-27 22:59:18','1993-01-22 04:46:22'),(34,84,'repellendus',2693916,NULL,'2011-01-30 15:43:33','1993-05-16 10:26:40'),(35,44,'illum',3358264,NULL,'1998-12-10 15:22:09','1984-02-08 12:13:13'),(36,33,'eum',159537,NULL,'1987-12-04 18:09:31','2018-05-16 23:08:07'),(37,83,'quis',3503612,NULL,'2009-11-20 19:57:40','2020-12-22 01:10:02'),(38,31,'ipsam',376221838,NULL,'2001-11-21 07:50:12','1994-06-30 03:17:23'),(39,94,'blanditiis',614466,NULL,'2011-09-28 03:16:54','2014-10-25 09:13:27'),(40,26,'distinctio',2,NULL,'1985-03-13 21:42:22','1970-12-13 02:27:45'),(41,76,'assumenda',435,NULL,'1983-03-21 20:06:59','2021-01-16 23:42:27'),(42,64,'repellat',38698,NULL,'1988-03-11 03:37:34','1995-07-11 15:56:33'),(43,88,'fuga',42570205,NULL,'2020-02-15 07:19:15','2015-08-27 03:42:22'),(44,41,'tenetur',8639,NULL,'2005-10-28 14:57:31','2006-06-18 22:47:30'),(45,54,'vel',2544,NULL,'1986-03-16 02:55:14','2006-10-04 10:43:59'),(46,2,'laboriosam',5013,NULL,'2010-03-18 02:07:24','1980-02-22 17:17:22'),(47,65,'esse',4960,NULL,'2006-10-06 18:33:12','1979-04-17 21:47:30'),(48,1,'earum',6,NULL,'1992-01-11 00:25:35','1972-08-07 06:07:22'),(49,26,'quae',3829,NULL,'1990-01-29 14:03:23','1978-04-02 19:44:30'),(50,65,'quia',11517103,NULL,'1992-08-13 22:04:52','2020-01-31 15:54:19'),(51,61,'iste',62473,NULL,'2001-10-28 23:45:30','1998-02-20 14:39:40'),(52,23,'quibusdam',79436363,NULL,'1984-01-10 02:46:19','2010-04-20 02:48:04'),(53,59,'aut',0,NULL,'1981-10-01 07:00:41','1973-07-31 08:49:20'),(54,12,'adipisci',0,NULL,'1972-04-30 17:25:51','1987-04-20 10:50:13'),(55,55,'voluptate',24,NULL,'1972-08-23 10:19:31','2009-06-06 09:32:56'),(56,3,'illum',46,NULL,'1983-12-18 08:11:21','1994-12-29 11:29:13'),(57,96,'quo',66335348,NULL,'2005-06-01 00:42:12','1977-05-19 11:31:02'),(58,70,'quia',717,NULL,'2000-05-12 11:02:31','1991-05-21 08:41:04'),(59,81,'quae',98852741,NULL,'1972-12-29 01:20:14','2007-07-19 04:00:54'),(60,82,'aut',495880600,NULL,'1994-08-25 05:43:18','1976-06-14 05:16:16'),(61,44,'modi',2935727,NULL,'1992-06-16 22:28:40','1980-06-24 01:56:50'),(62,79,'impedit',16,NULL,'2003-03-16 17:44:35','1970-12-14 09:01:41'),(63,68,'enim',9878,NULL,'1993-06-11 23:27:23','1991-08-31 07:26:58'),(64,58,'enim',7496,NULL,'1980-10-15 06:29:14','2017-12-27 16:33:09'),(65,62,'labore',276,NULL,'2014-09-08 15:15:41','2019-07-23 02:41:32'),(66,11,'molestias',1,NULL,'2001-08-19 16:29:30','1994-08-15 07:24:27'),(67,90,'porro',2817274,NULL,'1983-03-16 09:50:39','1984-05-22 18:06:45'),(68,45,'itaque',857,NULL,'1974-06-16 12:28:23','2018-04-30 23:02:32'),(69,42,'asperiores',8,NULL,'1998-07-06 05:46:45','2009-05-22 17:28:19'),(70,84,'in',674104,NULL,'1993-04-22 20:14:44','2007-12-19 13:35:06'),(71,70,'ea',79767,NULL,'2002-03-01 21:47:52','2010-07-02 19:01:59'),(72,18,'nostrum',775956,NULL,'2008-05-19 00:28:03','2010-06-20 06:42:46'),(73,47,'aut',2834,NULL,'2012-03-04 12:53:29','1995-12-21 04:31:50'),(74,57,'sit',739365,NULL,'2004-12-21 19:04:41','2006-01-18 20:26:31'),(75,58,'eius',266779,NULL,'2011-07-29 01:11:28','2014-03-27 23:18:01'),(76,100,'et',686608519,NULL,'1986-07-06 22:36:02','1983-03-16 12:27:20'),(77,59,'officiis',1032073,NULL,'1981-09-25 07:00:31','1985-11-11 01:28:29'),(78,23,'enim',8320,NULL,'2004-06-06 04:39:53','2012-01-14 07:35:39'),(79,1,'vel',33642,NULL,'1981-07-17 21:09:33','1992-12-09 23:30:02'),(80,84,'cum',28,NULL,'2011-02-15 00:55:02','2016-04-01 05:24:58'),(81,87,'est',53037,NULL,'1994-07-18 08:21:46','1992-05-09 06:16:34'),(82,61,'est',42702,NULL,'1994-08-27 00:05:24','1990-05-16 18:42:50'),(83,7,'corporis',0,NULL,'1975-11-13 23:25:21','1976-02-20 15:28:31'),(84,45,'eos',3,NULL,'1979-08-01 01:46:51','1999-01-18 12:34:14'),(85,73,'quia',3,NULL,'1996-09-06 07:33:10','1989-10-03 17:23:37'),(86,61,'quia',70317,NULL,'1985-01-29 21:15:43','2012-05-31 07:19:03'),(87,48,'dicta',0,NULL,'1993-02-08 00:48:35','1985-03-06 06:49:42'),(88,68,'qui',986805,NULL,'1979-03-17 16:42:03','1982-08-11 18:33:58'),(89,31,'repellat',44459708,NULL,'1984-05-21 13:15:51','2014-12-17 20:59:57'),(90,29,'quia',15,NULL,'1998-07-12 20:44:05','1984-09-04 06:45:41'),(91,50,'et',4,NULL,'1971-04-12 20:00:12','2009-01-06 23:55:44'),(92,74,'tempora',8553,NULL,'2014-10-11 15:11:03','2000-06-16 17:00:26'),(93,7,'non',54684,NULL,'1991-09-25 17:28:46','1988-12-14 15:24:19'),(94,18,'aspernatur',51126524,NULL,'1994-11-13 03:27:03','1975-03-17 03:37:57'),(95,32,'laborum',7922,NULL,'1976-01-16 16:52:59','1999-06-29 19:13:04'),(96,69,'repudiandae',341138,NULL,'2018-06-19 11:31:26','2005-03-01 14:17:43'),(97,29,'esse',9057,NULL,'1990-01-03 06:02:36','2018-07-11 18:43:00'),(98,22,'natus',600572,NULL,'1973-04-18 15:05:43','1977-01-23 19:03:50'),(99,13,'nihil',0,NULL,'2007-04-16 18:17:18','1981-02-16 14:24:54'),(100,70,'minima',3320,NULL,'1998-07-06 21:33:37','1977-03-07 18:26:00');
/*!40000 ALTER TABLE `media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_product_list`
--

DROP TABLE IF EXISTS `order_product_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_product_list` (
  `order_id` bigint(20) unsigned NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `amount` int(11) NOT NULL,
  PRIMARY KEY (`order_id`,`product_id`),
  KEY `order_id` (`order_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `order_product_list_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  CONSTRAINT `order_product_list_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE,
  CONSTRAINT `order_product_list_amount_check` CHECK (`amount` > 0)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_product_list`
--

LOCK TABLES `order_product_list` WRITE;
/*!40000 ALTER TABLE `order_product_list` DISABLE KEYS */;
INSERT INTO `order_product_list` VALUES
(1,46,189),
(2,2,382),
(2,62,460),
(3,20,379),
(4,25,379),
(5,47,312),
(6,23,306),
(7,15,379),
(7,36,379),
(8,61,86),
(8,73,191),
(9,22,48),
(9,65,358),
(10,63,428),
(11,63,379),
(12,42,453),
(13,8,8),
(13,22,495),
(14,36,220),
(15,62,425),
(16,38,260),
(17,5,450),
(18,35,2),
(19,59,270),
(20,62,483),
(21,8,292),
(21,35,280),
(21,60,451),
(21,73,2),
(22,28,56),
(23,38,344),
(23,80,103),
(24,21,3),
(25,22,5),
(26,45,82),
(27,23,9),
(28,6,374),
(29,69,477),
(30,56,377),
(31,24,7),
(32,31,37),
(33,26,9),
(34,3,68),
(34,25,5),
(34,51,216),
(35,35,155),
(36,19,387),
(36,23,334),
(36,37,23),
(37,74,311),
(37,82,497),
(38,26,79),
(39,56,288),
(40,17,191),
(41,67,270),
(42,90,492),
(43,27,9),
(44,97,57),
(45,43,280),
(45,81,192),
(45,98,471),
(46,27,346),
(46,71,291),
(47,28,3),
(48,29,79),
(49,94,260),
(50,23,379),
(51,12,304),
(51,72,317),
(51,98,450),
(52,29,37),
(52,56,17),
(53,30,37),
(54,27,417),
(55,31,39),
(56,38,131),
(57,5,207),
(57,44,117),
(58,5,91),
(58,36,308),
(59,10,30),
(59,68,347),
(59,94,28),
(60,9,354),
(60,70,182),
(60,83,79),
(61,20,379),
(62,4,294),
(63,32,9),
(64,6,202),
(64,51,104),
(64,90,282),
(65,91,265),
(66,77,144),
(67,10,336),
(68,34,9),
(69,35,35),
(70,78,260),
(70,83,88),
(71,36,37),
(72,96,95),
(73,38,38),
(74,93,128),
(75,11,438),
(76,37,37),
(77,36,166),
(77,88,397),
(78,10,62),
(78,61,128),
(79,38,5),
(80,39,40),
(81,20,379),
(82,20,379),
(83,34,148),
(84,98,450),
(85,48,68),
(86,63,244),
(86,69,354),
(87,50,396),
(87,79,261),
(88,26,275),
(89,29,60),
(89,95,90),
(90,40,79),
(91,83,204),
(92,41,7),
(93,57,353),
(94,23,338),
(95,42,9),
(96,77,398),
(97,15,256),
(98,81,164),
(99, 35, 23),
(100,47,77);
/*!40000 ALTER TABLE `order_product_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `status` enum('в обработке','в пути','доставлено','отказ','возврат') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `summ` int(11) NOT NULL,
  `delivery_id` bigint(20) unsigned NOT NULL,
  `client_id` bigint(20) unsigned NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `is_deleted` bit(1) DEFAULT b'0',
  PRIMARY KEY (`id`),
  KEY `delivery_id` (`delivery_id`),
  KEY `client_id` (`client_id`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`delivery_id`) REFERENCES `delivery` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`client_id`) REFERENCES `client` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES 
(1,'возврат',0,38,51,'2016-09-02 21:32:03','2019-07-05 00:41:10',''),
(2,'отказ',0,37,29,'1984-03-23 03:09:56','2022-06-09 14:15:04',''),
(3,'отказ',0,9,12,'2007-04-04 07:06:33','1982-01-29 19:41:21','\0'),
(4,'в обработке',0,7,3,'1988-10-02 01:34:34','2015-05-22 22:08:19','\0'),
(5,'в обработке',0,88,70,'1979-05-02 17:45:34','2019-02-15 07:50:34',''),
(6,'отказ',0,49,42,'2005-10-19 21:06:01','2017-04-03 11:12:03','\0'),
(7,'возврат',0,93,66,'1983-09-16 00:48:25','1988-06-07 21:54:04',''),
(8,'возврат',0,54,19,'1979-03-11 03:45:54','1974-05-07 17:26:59',''),
(9,'в обработке',0,71,25,'2021-12-17 10:39:50','1987-03-19 17:32:29',''),
(10,'в пути',0,80,80,'2018-08-02 06:46:28','1986-08-07 19:52:47','\0'),
(11,'возврат',0,50,3,'1978-09-06 12:32:12','2020-04-03 16:11:08',''),
(12,'в обработке',0,48,3,'2002-09-18 13:12:03','2014-05-01 07:21:57','\0'),
(13,'доставлено',0,9,38,'1980-10-01 17:52:44','1989-11-21 14:02:03','\0'),
(14,'отказ',0,81,55,'1998-02-01 06:48:34','1998-03-21 16:07:44','\0'),
(15,'отказ',0,41,20,'1992-04-22 19:14:34','2008-07-07 01:35:02','\0'),
(16,'возврат',0,34,78,'1974-12-07 23:40:29','1994-04-26 23:47:19','\0'),
(17,'отказ',0,71,70,'2014-05-27 09:31:35','2006-07-18 12:14:01','\0'),
(18,'отказ',0,6,80,'1977-08-17 00:22:57','2015-11-27 08:52:39','\0'),
(19,'в обработке',0,82,13,'2021-08-08 04:12:01','2005-08-15 15:24:23','\0'),
(20,'отказ',0,83,69,'1977-08-15 14:25:55','2007-05-26 04:02:11',''),
(21,'отказ',0,82,32,'1982-11-20 14:38:04','1993-12-23 05:03:41',''),
(22,'в обработке',0,10,75,'1991-11-02 06:11:25','1998-05-26 03:17:59',''),
(23,'отказ',0,97,64,'2011-08-08 01:55:55','2018-01-10 19:27:16','\0'),
(24,'доставлено',0,94,68,'1993-10-23 05:19:58','2003-02-17 18:42:36',''),
(25,'возврат',0,89,73,'2002-08-14 05:55:30','1973-04-08 14:37:02','\0'),
(26,'возврат',0,48,39,'1990-03-08 08:44:36','1994-07-05 05:30:27','\0'),
(27,'отказ',0,76,95,'1993-10-03 15:34:37','1980-04-17 12:18:58','\0'),
(28,'в обработке',0,41,84,'1984-02-13 12:43:19','1972-05-05 18:03:17',''),
(29,'в обработке',0,32,22,'1979-01-24 15:08:21','2018-11-26 11:49:59','\0'),
(30,'в пути',0,39,73,'1995-11-17 09:55:27','1978-06-22 10:14:28',''),
(31,'в пути',0,41,72,'1992-01-31 00:17:00','2012-06-24 08:13:30',''),
(32,'в обработке',0,51,12,'1986-08-14 06:07:20','2000-05-03 00:04:08',''),
(33,'в пути',0,42,57,'2014-06-08 19:33:37','2016-02-26 19:04:23','\0'),
(34,'возврат',0,91,23,'1976-04-12 19:57:12','1997-11-13 03:06:02','\0'),
(35,'отказ',0,69,73,'1977-08-30 21:20:34','1978-12-24 12:45:54',''),
(36,'возврат',0,92,51,'2012-12-08 11:15:45','2007-09-20 12:30:55','\0'),
(37,'возврат',0,5,1,'2015-12-25 14:19:17','2011-04-16 11:51:23',''),
(38,'отказ',0,26,2,'1979-12-04 01:33:02','2003-04-13 03:50:36','\0'),
(39,'доставлено',0,65,19,'2012-11-11 08:22:47','2006-07-31 20:14:44','\0'),
(40,'в пути',0,69,53,'1982-02-26 10:58:09','2008-06-22 19:15:27',''),
(41,'доставлено',0,91,17,'1999-11-20 04:47:43','2004-01-05 19:38:15','\0'),
(42,'в пути',0,91,66,'2013-02-22 14:38:59','1989-04-14 02:28:27','\0'),
(43,'доставлено',0,11,32,'2008-01-30 23:18:30','1989-09-21 00:40:07','\0'),
(44,'отказ',0,50,43,'1987-09-20 22:16:40','1987-09-18 16:15:19',''),
(45,'в пути',0,54,88,'1992-01-12 16:32:17','1973-08-27 18:51:30','\0'),
(46,'возврат',0,16,94,'1988-11-02 23:08:44','2021-03-08 09:15:03',''),
(47,'отказ',0,59,66,'1997-01-21 06:03:00','1995-06-03 18:49:50','\0'),
(48,'возврат',0,6,1,'1994-01-10 14:42:31','1996-09-25 22:06:18',''),
(49,'возврат',0,22,96,'1975-04-10 18:30:57','1987-11-03 10:46:11','\0'),
(50,'отказ',0,23,91,'2016-07-23 14:30:01','1998-12-02 12:03:33',''),
(51,'в обработке',0,69,14,'2013-10-15 13:22:43','2007-07-25 03:15:23','\0'),
(52,'в обработке',0,42,73,'2008-02-05 06:23:47','1997-03-23 04:36:45',''),
(53,'отказ',0,15,67,'1989-07-08 23:07:10','2017-08-07 01:10:36','\0'),
(54,'отказ',0,74,79,'1976-08-12 19:31:21','1988-09-07 12:05:15',''),
(55,'отказ',0,85,43,'1989-02-21 10:25:13','1989-02-20 08:33:29','\0'),
(56,'в обработке',0,32,76,'2005-06-29 22:44:20','2006-03-07 08:46:12','\0'),
(57,'доставлено',0,59,23,'1990-12-12 05:09:35','1983-01-16 04:43:52',''),
(58,'в обработке',0,41,70,'1991-05-21 09:43:42','1994-09-26 06:08:07','\0'),
(59,'доставлено',0,54,91,'1992-02-10 15:53:58','1994-06-03 09:07:21','\0'),
(60,'отказ',0,13,8,'1996-08-25 11:04:30','1992-12-18 07:39:52',''),
(61,'в обработке',0,78,28,'1982-12-20 19:52:12','2007-12-16 18:05:38',''),
(62,'в обработке',0,1,37,'1973-12-11 10:22:19','1976-05-31 22:03:16','\0'),
(63,'возврат',0,94,7,'1973-06-13 12:04:36','2006-04-02 11:45:19','\0'),
(64,'доставлено',0,37,15,'1970-02-18 06:54:42','2001-09-18 12:35:39',''),
(65,'отказ',0,2,59,'2010-10-24 08:27:50','2020-03-06 19:22:46','\0'),
(66,'отказ',0,6,71,'1970-01-29 09:20:03','2015-10-06 19:10:11','\0'),
(67,'отказ',0,73,47,'2017-01-24 16:31:49','2008-08-04 02:43:03',''),
(68,'отказ',0,43,88,'1997-03-11 02:46:20','2006-02-27 14:09:30',''),
(69,'возврат',0,13,17,'2018-01-24 05:23:21','1993-05-24 08:17:26',''),
(70,'в обработке',0,66,97,'2019-02-08 05:08:26','1979-01-29 04:18:55','\0'),
(71,'отказ',0,60,98,'1997-06-18 00:08:54','1990-12-06 12:47:25',''),
(72,'возврат',0,72,18,'1981-12-15 04:35:08','2017-07-31 07:02:12','\0'),
(73,'доставлено',0,20,13,'2022-02-16 19:12:01','2014-06-13 14:43:23',''),
(74,'отказ',0,88,74,'1981-02-07 05:00:13','2009-07-28 03:43:14',''),
(75,'в пути',0,3,100,'1994-12-19 02:09:13','2009-10-09 20:53:29',''),
(76,'в пути',0,81,81,'2018-10-02 05:18:22','1999-02-15 03:35:12','\0'),
(77,'доставлено',0,28,82,'1998-12-20 00:42:45','1970-04-16 17:02:05',''),
(78,'в обработке',0,17,21,'2009-06-08 19:28:51','2003-07-16 23:23:14',''),
(79,'возврат',0,88,53,'1987-09-09 20:51:44','1998-03-04 05:10:41',''),
(80,'в пути',0,36,90,'2003-04-11 14:07:04','1972-08-25 16:44:22','\0'),
(81,'отказ',0,12,41,'1982-02-02 03:09:15','2021-03-31 14:05:23',''),
(82,'доставлено',0,60,85,'1983-11-08 00:03:30','1997-03-08 19:15:45',''),
(83,'доставлено',0,87,3,'1975-10-01 08:43:40','1994-03-16 15:19:49','\0'),
(84,'доставлено',0,72,100,'1992-01-12 19:29:01','1995-08-08 16:03:02','\0'),
(85,'отказ',0,19,38,'1994-05-17 00:27:20','1987-12-26 20:35:18','\0'),
(86,'возврат',0,97,78,'1983-03-07 07:37:57','1998-05-20 09:16:31','\0'),
(87,'доставлено',0,35,69,'1987-09-04 20:17:12','2004-02-26 10:21:39',''),
(88,'в обработке',0,96,54,'2010-09-13 23:42:31','2009-10-13 19:27:32','\0'),
(89,'в обработке',0,81,83,'1985-01-25 12:00:25','2018-09-08 10:23:59','\0'),
(90,'отказ',0,27,84,'1987-03-09 08:37:26','1971-04-12 21:53:43',''),
(91,'возврат',0,83,8,'2005-03-16 05:28:57','1995-03-04 07:03:02',''),
(92,'возврат',0,64,11,'1977-08-16 02:12:47','1993-10-18 10:56:57',''),
(93,'в пути',0,89,80,'2009-01-18 06:50:39','1995-06-03 01:59:55',''),
(94,'в пути',0,31,76,'2014-02-28 02:48:14','1997-08-17 23:16:29','\0'),
(95,'в пути',0,33,67,'2003-01-04 18:54:21','1990-01-14 03:26:52','\0'),
(96,'отказ',0,65,45,'1984-04-17 06:12:40','2009-10-17 11:43:01','\0'),
(97,'отказ',0,7,25,'1983-01-15 07:53:02','1975-03-11 06:37:43','\0'),
(98,'отказ',0,29,94,'2007-04-24 16:20:30','2012-11-13 00:28:29','\0'),
(99,'в пути',0,27,100,'2022-02-12 18:19:26','1998-03-25 15:23:51','\0'),
(100,'в обработке',0,94,46,'2012-11-21 13:21:29','1982-09-12 09:22:14','\0');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_name` varchar(35) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` bigint(20) unsigned NOT NULL,
  `price` decimal(6,2) NOT NULL COMMENT 'цена в рублях',
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `is_deleted` bit(1) DEFAULT b'0',
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`),
  CONSTRAINT `product_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'лопата',4,1923.54,'1981-09-17 04:32:04','1985-06-15 08:08:07','\0'),
(2,'топор',4,27.04,'2003-11-26 19:03:49','1980-12-24 04:41:42','\0'),
(3,'шприц',9,2463.80,'1975-04-09 08:37:21','2013-06-29 20:41:44','\0'),
(4,'краска',10,2728.89,'1997-04-04 03:13:11','2016-05-04 20:12:22','\0'),
(5,'освежитель',8,4697.92,'1977-11-23 04:35:00','1996-07-22 00:28:11',''),
(6,'мяч',6,3408.00,'1998-05-10 17:47:16','1970-02-17 02:09:28','\0'),
(7,'костыли',9,4832.14,'1987-07-07 01:09:41','2017-09-26 07:32:47',''),
(8,'палатка',11,3651.33,'1974-08-06 20:30:42','1972-04-02 16:04:36','\0'),
(9,'скальпель',9,4564.57,'1970-02-25 06:29:47','2005-09-23 12:25:45',''),
(10,'линзы',9,3404.26,'2014-05-14 07:40:44','2005-07-14 17:38:52',''),
(11,'караоке',5,2021.23,'1999-06-17 23:31:51','2002-06-13 11:49:35','\0'),
(12,'походный рюкзак',11,607.34,'1978-05-31 22:12:12','1992-03-13 10:02:38',''),
(13,'стеклоомыватель',8,3139.87,'1982-05-09 22:17:59','1994-01-09 13:58:28','\0'),
(14,'жироудалитель',2,4934.25,'1992-01-09 15:10:27','2012-03-01 12:43:27',''),
(15,'камера',8,4673.15,'1979-11-04 16:56:52','1975-05-08 00:15:12','\0'),
(16,'шпатель',10,4608.94,'2015-12-12 11:22:03','2003-12-26 10:06:04',''),
(17,'краска для волос',7,2384.12,'1990-01-11 21:23:19','1972-09-01 05:55:13','\0'),
(18,'карандаш',1,799.22,'2022-01-07 00:23:08','2007-01-02 02:52:35',''),
(19,'бита',6,2599.70,'2015-07-22 09:33:05','2002-04-14 17:00:14','\0'),
(20,'секатор',4,2534.39,'1988-03-28 17:33:58','1971-05-18 10:09:53',''),
(21,'банджи',5,1296.59,'1993-08-24 18:56:20','1998-05-27 09:44:08',''),
(22,'лак',7,4068.25,'2013-02-11 13:08:55','1988-12-19 09:17:56',''),
(23,'граммидин',9,1118.12,'1988-07-04 01:52:06','1972-11-10 00:32:52',''),
(24,'помидоры',4,692.24,'2010-01-15 01:37:37','1977-12-01 16:49:22','\0'),
(25,'смартфон',3,2387.70,'1988-04-28 01:28:29','1975-07-02 01:34:59',''),
(26,'микстура',9,1340.50,'1982-07-22 18:16:53','1977-01-01 07:58:23','\0'),
(27,'фейри',2,4279.53,'2020-05-24 06:33:28','2013-05-22 00:41:00',''),
(28,'ручка',1,3158.00,'2002-08-19 21:39:26','1979-11-12 13:13:40',''),
(29,'транспортир',1,4458.35,'2012-12-31 01:32:58','1976-05-15 06:56:03',''),
(30,'пылесос',3,3322.10,'1999-05-19 13:31:45','1997-03-25 15:35:52','\0'),
(31,'штангенциркуль',1,644.83,'1987-09-30 11:53:11','1975-08-10 20:12:43','\0'),
(32,'велосипед',5,1692.00,'1976-06-01 22:54:58','1996-06-26 06:17:35',''),
(33,'шампунь',7,2075.02,'2010-12-23 14:26:42','2022-01-07 14:32:29',''),
(34,'затирка',10,454.20,'2016-08-01 01:23:13','1991-04-06 21:44:53','\0'),
(35,'ноутбук',3,904.78,'1978-05-10 05:14:34','1987-08-02 06:54:07',''),
(36,'огурцы',4,3386.47,'1975-08-26 10:45:24','1975-09-24 15:49:51',''),
(37,'фрукты',4,2376.20,'2007-02-12 23:23:55','1974-05-23 12:01:50','\0'),
(38,'ластик',1,3570.80,'2000-10-01 19:02:47','2021-03-11 23:16:43',''),
(39,'компьютер',3,2967.00,'1980-01-31 00:12:44','1987-05-15 12:04:32','\0'),
(40,'точилка',1,4366.76,'2019-05-16 19:16:21','1987-06-22 09:50:17','\0'),
(41,'бинт',9,3450.12,'1976-11-01 23:07:54','2013-10-09 23:44:38','\0'),
(42,'пудра',7,2519.60,'2016-10-31 16:59:59','2009-11-24 04:40:19',''),
(43,'спальник',11,3452.70,'2011-10-13 05:23:16','1991-02-08 20:50:45',''),
(44,'ракетка',6,2232.95,'2007-05-19 00:03:44','1979-10-15 20:47:03',''),
(45,'шина',8,3132.27,'1970-05-19 07:36:11','1997-12-06 05:02:34','\0'),
(46,'моторное масло',8,2316.72,'2000-11-03 08:17:05','1975-11-11 05:08:33',''),
(47,'лейка',4,1566.83,'1998-01-07 08:22:44','1979-07-18 08:16:23',''),
(48,'шланг',4,2338.73,'1984-09-03 02:06:11','1983-04-15 08:45:09','\0'),
(49,'фильтр',8,1778.53,'2004-03-10 14:32:54','2006-12-01 17:28:24',''),
(50,'костыли',9,884.44,'1983-09-15 10:27:45','2018-01-21 22:29:10',''),
(51,'помада',7,3832.21,'2006-01-16 22:51:40','1988-06-09 01:14:52','\0'),
(52,'порошок',2,1027.00,'1973-03-14 00:07:47','2001-04-16 01:48:14',''),
(53,'садовый гном',4,4338.01,'2010-08-28 19:44:26','2008-10-13 11:43:22','\0'),
(54,'путевка',5,2787.29,'1979-11-25 20:05:37','1980-01-02 19:12:36','\0'),
(55,'бонсай',5,1129.39,'2004-01-08 08:58:54','2005-09-22 12:51:40',''),
(56,'тушь',7,430.01,'1981-09-04 14:20:07','2013-11-22 17:31:17',''),
(57,'ариэль',2,2916.04,'2019-08-27 01:34:22','1982-09-08 02:26:11',''),
(58,'скакалка',6,3404.27,'1998-01-13 02:03:48','1999-06-21 23:26:14',''),
(59,'крем',7,3223.10,'2010-03-16 12:37:29','1974-07-07 18:19:28',''),
(60,'компьютер',3,2430.60,'1988-12-15 14:47:01','1997-09-14 06:38:09','\0'),
(61,'пластырь',9,1562.63,'1975-02-05 06:46:44','1998-09-06 16:09:53',''),
(62,'антидождь',8,2694.67,'2014-01-16 22:48:19','2022-08-20 00:10:10',''),
(63,'духи',7,972.26,'1990-03-15 12:55:25','1988-10-08 09:43:56',''),
(64,'шезлонг',5,2054.70,'2007-07-05 06:00:26','1996-08-22 04:56:52',''),
(65,'кроссовки',6,2279.50,'1992-09-05 04:32:14','2005-10-23 16:09:54',''),
(66,'обои',10,2231.38,'1970-03-21 05:06:19','1980-09-26 04:47:47',''),
(67,'зеркало',8,4852.56,'1998-09-04 18:34:32','1980-10-29 02:38:22',''),
(68,'клизма',9,3931.00,'1987-01-24 23:55:24','2002-08-24 12:58:32',''),
(69,'правило',10,4623.78,'2000-03-19 06:10:53','2017-09-08 21:05:39',''),
(70,'пенка',11,818.52,'1999-09-13 10:19:22','1979-08-13 18:48:49',''),
(71,'бисептол',9,843.54,'1996-01-25 07:29:41','2007-06-07 15:42:44',''),
(72,'свеча зажигания',8,1136.84,'1993-05-28 13:31:37','1993-06-08 14:50:41','\0'),
(73,'айлайнер',7,1209.00,'1973-09-04 11:17:18','1972-10-09 08:05:58','\0'),
(74,'антибиотик',9,447.00,'1983-03-31 19:40:49','1994-10-20 09:49:18','\0'),
(75,'лоск',2,2209.55,'2003-03-20 13:29:50','2013-04-28 04:25:47','\0'),
(76,'качеля',4,3775.85,'2011-10-13 02:39:14','2016-03-31 09:08:14',''),
(77,'губная гармошка',5,2849.91,'1981-09-04 09:50:37','2004-08-28 18:37:08','\0'),
(78,'шахматы',5,380.97,'1981-01-10 07:58:27','1978-11-08 22:52:06','\0'),
(79,'рив гош',7,3751.00,'1985-12-12 06:25:07','1987-04-26 16:45:03','\0'),
(80,'кондиционер',2,915.60,'2004-02-10 07:59:21','1978-12-10 07:35:27','\0'),
(81,'микроволновка',3,3252.00,'2001-03-09 11:06:44','2015-08-04 11:20:47',''),
(82,'часы',3,4182.80,'2006-12-09 00:35:04','2018-08-31 19:07:56',''),
(83,'телевизор',3,3646.56,'1991-06-27 01:30:59','2006-08-03 14:20:09','\0'),
(84,'беговая дорожка',6,3386.16,'1974-03-11 00:25:12','1987-08-21 01:23:29',''),
(85,'подводка',7,3959.00,'1975-09-10 14:35:37','1997-08-12 07:32:03','\0'),
(86,'ватные палочки',7,1780.66,'2010-06-08 23:25:08','1999-04-25 06:34:02','\0'),
(87,'доместос',2,3715.16,'2001-01-01 09:09:54','1994-06-21 02:59:39','\0'),
(88,'протез',9,4518.43,'2003-02-10 07:34:39','2016-11-26 12:19:39',''),
(89,'аос',2,534.17,'1990-08-27 19:38:21','1978-03-04 15:55:19',''),
(90,'двигатель',8,1816.00,'1981-09-23 20:56:48','2019-02-13 00:02:59','\0'),
(91,'котелок',11,4530.00,'1978-12-27 20:47:27','1981-06-27 04:05:36',''),
(92,'газовая горелка',11,601.00,'1998-07-19 06:05:41','1994-02-23 23:58:13',''),
(93,'парник',4,2616.45,'1989-01-07 03:06:13','1986-08-28 07:01:35',''),
(94,'гантеля',6,2483.91,'1998-06-08 02:23:07','1985-05-27 06:34:00','\0'),
(95,'цветы',4,1196.56,'2018-05-25 23:07:25','2015-05-15 10:19:35',''),
(96,'rerum',10,3256.47,'2018-07-24 22:49:30','1993-04-12 14:39:44','\0'),
(97,'рассада',4,1223.68,'2016-09-22 18:43:51','1984-12-29 15:25:32',''),
(98,'линейка',1,1781.05,'1987-05-02 21:22:39','2008-09-09 22:58:01',''),
(99,'ватные диски',7,151.44,'2016-07-11 09:51:58','2017-02-10 13:10:55',''),
(100,'монитор',3,4681.40,'1991-05-03 20:10:25','1976-12-13 16:33:48','\0');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-27 10:16:01
