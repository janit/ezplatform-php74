-- MariaDB dump 10.17  Distrib 10.4.6-MariaDB, for osx10.13 (x86_64)
--
-- Host: localhost    Database: ezplatform_php74
-- ------------------------------------------------------
-- Server version	10.4.6-MariaDB

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
-- Table structure for table `ezbinaryfile`
--

DROP TABLE IF EXISTS `ezbinaryfile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezbinaryfile` (
  `contentobject_attribute_id` int(11) NOT NULL DEFAULT 0,
  `version` int(11) NOT NULL DEFAULT 0,
  `download_count` int(11) NOT NULL DEFAULT 0,
  `filename` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `mime_type` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `original_filename` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`contentobject_attribute_id`,`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezbinaryfile`
--

LOCK TABLES `ezbinaryfile` WRITE;
/*!40000 ALTER TABLE `ezbinaryfile` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezbinaryfile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcobj_state`
--

DROP TABLE IF EXISTS `ezcobj_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcobj_state` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `default_language_id` bigint(20) NOT NULL DEFAULT 0,
  `group_id` int(11) NOT NULL DEFAULT 0,
  `identifier` varchar(45) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `language_mask` bigint(20) NOT NULL DEFAULT 0,
  `priority` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ezcobj_state_identifier` (`group_id`,`identifier`),
  KEY `ezcobj_state_priority` (`priority`),
  KEY `ezcobj_state_lmask` (`language_mask`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcobj_state`
--

LOCK TABLES `ezcobj_state` WRITE;
/*!40000 ALTER TABLE `ezcobj_state` DISABLE KEYS */;
INSERT INTO `ezcobj_state` VALUES (1,2,2,'not_locked',3,0),(2,2,2,'locked',3,1);
/*!40000 ALTER TABLE `ezcobj_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcobj_state_group`
--

DROP TABLE IF EXISTS `ezcobj_state_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcobj_state_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `default_language_id` bigint(20) NOT NULL DEFAULT 0,
  `identifier` varchar(45) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `language_mask` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ezcobj_state_group_identifier` (`identifier`),
  KEY `ezcobj_state_group_lmask` (`language_mask`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcobj_state_group`
--

LOCK TABLES `ezcobj_state_group` WRITE;
/*!40000 ALTER TABLE `ezcobj_state_group` DISABLE KEYS */;
INSERT INTO `ezcobj_state_group` VALUES (2,2,'ez_lock',3);
/*!40000 ALTER TABLE `ezcobj_state_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcobj_state_group_language`
--

DROP TABLE IF EXISTS `ezcobj_state_group_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcobj_state_group_language` (
  `contentobject_state_group_id` int(11) NOT NULL DEFAULT 0,
  `real_language_id` bigint(20) NOT NULL DEFAULT 0,
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `language_id` bigint(20) NOT NULL DEFAULT 0,
  `name` varchar(45) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`contentobject_state_group_id`,`real_language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcobj_state_group_language`
--

LOCK TABLES `ezcobj_state_group_language` WRITE;
/*!40000 ALTER TABLE `ezcobj_state_group_language` DISABLE KEYS */;
INSERT INTO `ezcobj_state_group_language` VALUES (2,2,'',3,'Lock');
/*!40000 ALTER TABLE `ezcobj_state_group_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcobj_state_language`
--

DROP TABLE IF EXISTS `ezcobj_state_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcobj_state_language` (
  `contentobject_state_id` int(11) NOT NULL DEFAULT 0,
  `language_id` bigint(20) NOT NULL DEFAULT 0,
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `name` varchar(45) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`contentobject_state_id`,`language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcobj_state_language`
--

LOCK TABLES `ezcobj_state_language` WRITE;
/*!40000 ALTER TABLE `ezcobj_state_language` DISABLE KEYS */;
INSERT INTO `ezcobj_state_language` VALUES (1,3,'','Not locked'),(2,3,'','Locked');
/*!40000 ALTER TABLE `ezcobj_state_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcobj_state_link`
--

DROP TABLE IF EXISTS `ezcobj_state_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcobj_state_link` (
  `contentobject_id` int(11) NOT NULL DEFAULT 0,
  `contentobject_state_id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`contentobject_id`,`contentobject_state_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcobj_state_link`
--

LOCK TABLES `ezcobj_state_link` WRITE;
/*!40000 ALTER TABLE `ezcobj_state_link` DISABLE KEYS */;
INSERT INTO `ezcobj_state_link` VALUES (1,1),(4,1),(10,1),(11,1),(12,1),(13,1),(14,1),(41,1),(42,1),(49,1),(50,1),(51,1),(52,1),(53,1),(54,1),(55,1),(56,1),(57,1),(58,1),(59,1),(60,1),(61,1),(62,1);
/*!40000 ALTER TABLE `ezcobj_state_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontent_language`
--

DROP TABLE IF EXISTS `ezcontent_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontent_language` (
  `id` bigint(20) NOT NULL DEFAULT 0,
  `disabled` int(11) NOT NULL DEFAULT 0,
  `locale` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `ezcontent_language_name` (`name`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontent_language`
--

LOCK TABLES `ezcontent_language` WRITE;
/*!40000 ALTER TABLE `ezcontent_language` DISABLE KEYS */;
INSERT INTO `ezcontent_language` VALUES (2,0,'eng-GB','English (United Kingdom)');
/*!40000 ALTER TABLE `ezcontent_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentbrowsebookmark`
--

DROP TABLE IF EXISTS `ezcontentbrowsebookmark`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentbrowsebookmark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `node_id` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `ezcontentbrowsebookmark_location` (`node_id`),
  KEY `ezcontentbrowsebookmark_user` (`user_id`),
  KEY `ezcontentbrowsebookmark_user_location` (`user_id`,`node_id`),
  CONSTRAINT `ezcontentbrowsebookmark_location_fk` FOREIGN KEY (`node_id`) REFERENCES `ezcontentobject_tree` (`node_id`) ON DELETE CASCADE,
  CONSTRAINT `ezcontentbrowsebookmark_user_fk` FOREIGN KEY (`user_id`) REFERENCES `ezuser` (`contentobject_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentbrowsebookmark`
--

LOCK TABLES `ezcontentbrowsebookmark` WRITE;
/*!40000 ALTER TABLE `ezcontentbrowsebookmark` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcontentbrowsebookmark` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentclass`
--

DROP TABLE IF EXISTS `ezcontentclass`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentclass` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) NOT NULL DEFAULT 0,
  `always_available` int(11) NOT NULL DEFAULT 0,
  `contentobject_name` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `created` int(11) NOT NULL DEFAULT 0,
  `creator_id` int(11) NOT NULL DEFAULT 0,
  `identifier` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `initial_language_id` bigint(20) NOT NULL DEFAULT 0,
  `is_container` int(11) NOT NULL DEFAULT 0,
  `language_mask` bigint(20) NOT NULL DEFAULT 0,
  `modified` int(11) NOT NULL DEFAULT 0,
  `modifier_id` int(11) NOT NULL DEFAULT 0,
  `remote_id` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `serialized_description_list` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `serialized_name_list` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `sort_field` int(11) NOT NULL DEFAULT 1,
  `sort_order` int(11) NOT NULL DEFAULT 1,
  `url_alias_name` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`,`version`),
  KEY `ezcontentclass_version` (`version`),
  KEY `ezcontentclass_identifier` (`identifier`,`version`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentclass`
--

LOCK TABLES `ezcontentclass` WRITE;
/*!40000 ALTER TABLE `ezcontentclass` DISABLE KEYS */;
INSERT INTO `ezcontentclass` VALUES (1,0,1,'<short_name|name>',1024392098,14,'folder',2,1,2,1448831672,14,'a3d405b81be900468eb153d774f4f0d2','a:0:{}','a:1:{s:6:\"eng-GB\";s:6:\"Folder\";}',1,1,NULL),(2,0,0,'<short_title|title>',1024392098,14,'article',2,1,3,1082454989,14,'c15b600eb9198b1924063b5a68758232',NULL,'a:2:{s:6:\"eng-GB\";s:7:\"Article\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,NULL),(3,0,1,'<name>',1024392098,14,'user_group',2,1,3,1048494743,14,'25b4268cdcd01921b808a0d854b877ef',NULL,'a:2:{s:6:\"eng-GB\";s:10:\"User group\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,NULL),(4,0,1,'<first_name> <last_name>',1024392098,14,'user',2,0,3,1082018364,14,'40faa822edc579b02c25f6bb7beec3ad',NULL,'a:2:{s:6:\"eng-GB\";s:4:\"User\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,NULL),(5,0,1,'<name>',1031484992,8,'image',2,0,3,1048494784,14,'f6df12aa74e36230eb675f364fccd25a',NULL,'a:2:{s:6:\"eng-GB\";s:5:\"Image\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,NULL),(12,0,1,'<name>',1052385472,14,'file',2,0,3,1052385669,14,'637d58bfddf164627bdfd265733280a0',NULL,'a:2:{s:6:\"eng-GB\";s:4:\"File\";s:16:\"always-available\";s:6:\"eng-GB\";}',1,1,NULL),(13,0,1,'<title>',1575542498,14,'store',2,0,2,1575542498,14,'c85de9b76b202d104b5c4c1796dfd397','a:0:{}','a:1:{s:6:\"eng-GB\";s:5:\"Store\";}',2,0,'');
/*!40000 ALTER TABLE `ezcontentclass` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentclass_attribute`
--

DROP TABLE IF EXISTS `ezcontentclass_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentclass_attribute` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) NOT NULL DEFAULT 0,
  `can_translate` int(11) DEFAULT 1,
  `category` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `contentclass_id` int(11) NOT NULL DEFAULT 0,
  `data_float1` double DEFAULT NULL,
  `data_float2` double DEFAULT NULL,
  `data_float3` double DEFAULT NULL,
  `data_float4` double DEFAULT NULL,
  `data_int1` int(11) DEFAULT NULL,
  `data_int2` int(11) DEFAULT NULL,
  `data_int3` int(11) DEFAULT NULL,
  `data_int4` int(11) DEFAULT NULL,
  `data_text1` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `data_text2` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `data_text3` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `data_text4` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `data_text5` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `data_type_string` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `identifier` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `is_information_collector` int(11) NOT NULL DEFAULT 0,
  `is_required` int(11) NOT NULL DEFAULT 0,
  `is_searchable` int(11) NOT NULL DEFAULT 0,
  `placement` int(11) NOT NULL DEFAULT 0,
  `serialized_data_text` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `serialized_description_list` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `serialized_name_list` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`id`,`version`),
  KEY `ezcontentclass_attr_ccid` (`contentclass_id`)
) ENGINE=InnoDB AUTO_INCREMENT=184 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentclass_attribute`
--

LOCK TABLES `ezcontentclass_attribute` WRITE;
/*!40000 ALTER TABLE `ezcontentclass_attribute` DISABLE KEYS */;
INSERT INTO `ezcontentclass_attribute` VALUES (1,0,1,'',2,0,0,0,0,255,0,0,0,'New article','','','','','ezstring','title',0,1,1,1,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:5:\"Title\";s:16:\"always-available\";s:6:\"eng-GB\";}'),(4,0,1,'',1,NULL,NULL,NULL,NULL,255,0,NULL,NULL,'Folder',NULL,NULL,NULL,NULL,'ezstring','name',0,1,1,1,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:4:\"Name\";}'),(6,0,1,'',3,0,0,0,0,255,0,0,0,'','','','',NULL,'ezstring','name',0,1,1,1,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:4:\"Name\";s:16:\"always-available\";s:6:\"eng-GB\";}'),(7,0,1,'',3,0,0,0,0,255,0,0,0,'','','','',NULL,'ezstring','description',0,0,1,2,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:11:\"Description\";s:16:\"always-available\";s:6:\"eng-GB\";}'),(8,0,1,'',4,0,0,0,0,255,0,0,0,'','','','','','ezstring','first_name',0,1,1,1,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:10:\"First name\";s:16:\"always-available\";s:6:\"eng-GB\";}'),(9,0,1,'',4,0,0,0,0,255,0,0,0,'','','','','','ezstring','last_name',0,1,1,2,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:9:\"Last name\";s:16:\"always-available\";s:6:\"eng-GB\";}'),(12,0,0,'',4,0,0,0,0,7,10,0,0,'','','','','','ezuser','user_account',0,1,0,3,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:12:\"User account\";s:16:\"always-available\";s:6:\"eng-GB\";}'),(116,0,1,'',5,0,0,0,0,150,0,0,0,'','','','',NULL,'ezstring','name',0,1,1,1,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:4:\"Name\";s:16:\"always-available\";s:6:\"eng-GB\";}'),(117,0,1,'',5,0,0,0,0,10,0,0,0,'','','','',NULL,'ezrichtext','caption',0,0,1,2,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:7:\"Caption\";s:16:\"always-available\";s:6:\"eng-GB\";}'),(118,0,1,'',5,0,0,0,0,10,0,0,0,'','','','',NULL,'ezimage','image',0,0,0,3,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:5:\"Image\";s:16:\"always-available\";s:6:\"eng-GB\";}'),(119,0,1,'',1,NULL,NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezrichtext','short_description',0,0,1,3,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:17:\"Short description\";}'),(120,0,1,'',2,0,0,0,0,10,0,0,0,'','','','','','ezrichtext','intro',0,1,1,4,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:5:\"Intro\";s:16:\"always-available\";s:6:\"eng-GB\";}'),(121,0,1,'',2,0,0,0,0,20,0,0,0,'','','','','','ezrichtext','body',0,0,1,5,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:4:\"Body\";s:16:\"always-available\";s:6:\"eng-GB\";}'),(123,0,0,'',2,0,0,0,0,0,0,0,0,'','','','','','ezboolean','enable_comments',0,0,0,6,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:15:\"Enable comments\";s:16:\"always-available\";s:6:\"eng-GB\";}'),(146,0,1,'',12,0,0,0,0,0,0,0,0,'New file','','','',NULL,'ezstring','name',0,1,1,1,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:4:\"Name\";s:16:\"always-available\";s:6:\"eng-GB\";}'),(147,0,1,'',12,0,0,0,0,10,0,0,0,'','','','',NULL,'ezrichtext','description',0,0,1,2,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:11:\"Description\";s:16:\"always-available\";s:6:\"eng-GB\";}'),(148,0,1,'',12,0,0,0,0,0,0,0,0,'','','','',NULL,'ezbinaryfile','file',0,1,0,3,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:4:\"File\";s:16:\"always-available\";s:6:\"eng-GB\";}'),(152,0,1,'',2,0,0,0,0,255,0,0,0,'','','','','','ezstring','short_title',0,0,1,2,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:11:\"Short title\";s:16:\"always-available\";s:6:\"eng-GB\";}'),(153,0,1,'',2,0,0,0,0,1,0,0,0,'','','','','','ezauthor','author',0,0,0,3,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:6:\"Author\";s:16:\"always-available\";s:6:\"eng-GB\";}'),(154,0,1,'',2,0,0,0,0,0,0,0,0,'','','','','','ezobjectrelation','image',0,0,1,7,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:5:\"Image\";s:16:\"always-available\";s:6:\"eng-GB\";}'),(155,0,1,'',1,NULL,NULL,NULL,NULL,100,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezstring','short_name',0,0,1,2,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:10:\"Short name\";}'),(156,0,1,'',1,NULL,NULL,NULL,NULL,20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezrichtext','description',0,0,1,4,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:11:\"Description\";}'),(179,0,1,'',4,0,0,0,0,10,0,0,0,'','','','','','eztext','signature',0,0,1,4,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:9:\"Signature\";s:16:\"always-available\";s:6:\"eng-GB\";}'),(180,0,1,'',4,0,0,0,0,10,0,0,0,'','','','','','ezimage','image',0,0,0,5,NULL,NULL,'a:2:{s:6:\"eng-GB\";s:5:\"Image\";s:16:\"always-available\";s:6:\"eng-GB\";}'),(181,0,1,'content',13,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezstring','title',0,1,1,1,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:5:\"Title\";}'),(182,0,1,'content',13,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezgmaplocation','location',0,1,1,2,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:8:\"Location\";}'),(183,0,1,'content',13,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ezstring','telephone',0,0,1,3,'N;','a:0:{}','a:1:{s:6:\"eng-GB\";s:9:\"Telephone\";}');
/*!40000 ALTER TABLE `ezcontentclass_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentclass_attribute_ml`
--

DROP TABLE IF EXISTS `ezcontentclass_attribute_ml`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentclass_attribute_ml` (
  `contentclass_attribute_id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `language_id` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `data_text` text COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `data_json` text COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`contentclass_attribute_id`,`version`,`language_id`),
  KEY `ezcontentclass_attribute_ml_lang_fk` (`language_id`),
  CONSTRAINT `ezcontentclass_attribute_ml_lang_fk` FOREIGN KEY (`language_id`) REFERENCES `ezcontent_language` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentclass_attribute_ml`
--

LOCK TABLES `ezcontentclass_attribute_ml` WRITE;
/*!40000 ALTER TABLE `ezcontentclass_attribute_ml` DISABLE KEYS */;
INSERT INTO `ezcontentclass_attribute_ml` VALUES (181,0,2,'Title',NULL,NULL,NULL),(182,0,2,'Location',NULL,NULL,NULL),(183,0,2,'Telephone',NULL,NULL,NULL);
/*!40000 ALTER TABLE `ezcontentclass_attribute_ml` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentclass_classgroup`
--

DROP TABLE IF EXISTS `ezcontentclass_classgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentclass_classgroup` (
  `contentclass_id` int(11) NOT NULL DEFAULT 0,
  `contentclass_version` int(11) NOT NULL DEFAULT 0,
  `group_id` int(11) NOT NULL DEFAULT 0,
  `group_name` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`contentclass_id`,`contentclass_version`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentclass_classgroup`
--

LOCK TABLES `ezcontentclass_classgroup` WRITE;
/*!40000 ALTER TABLE `ezcontentclass_classgroup` DISABLE KEYS */;
INSERT INTO `ezcontentclass_classgroup` VALUES (1,0,1,'Content'),(2,0,1,'Content'),(3,0,2,'Users'),(4,0,2,'Users'),(5,0,3,'Media'),(12,0,3,'Media'),(13,0,1,'Content');
/*!40000 ALTER TABLE `ezcontentclass_classgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentclass_name`
--

DROP TABLE IF EXISTS `ezcontentclass_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentclass_name` (
  `contentclass_id` int(11) NOT NULL DEFAULT 0,
  `contentclass_version` int(11) NOT NULL DEFAULT 0,
  `language_id` bigint(20) NOT NULL DEFAULT 0,
  `language_locale` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`contentclass_id`,`contentclass_version`,`language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentclass_name`
--

LOCK TABLES `ezcontentclass_name` WRITE;
/*!40000 ALTER TABLE `ezcontentclass_name` DISABLE KEYS */;
INSERT INTO `ezcontentclass_name` VALUES (1,0,2,'eng-GB','Folder'),(2,0,3,'eng-GB','Article'),(3,0,3,'eng-GB','User group'),(4,0,3,'eng-GB','User'),(5,0,3,'eng-GB','Image'),(12,0,3,'eng-GB','File'),(13,0,2,'eng-GB','Store');
/*!40000 ALTER TABLE `ezcontentclass_name` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentclassgroup`
--

DROP TABLE IF EXISTS `ezcontentclassgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentclassgroup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created` int(11) NOT NULL DEFAULT 0,
  `creator_id` int(11) NOT NULL DEFAULT 0,
  `modified` int(11) NOT NULL DEFAULT 0,
  `modifier_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentclassgroup`
--

LOCK TABLES `ezcontentclassgroup` WRITE;
/*!40000 ALTER TABLE `ezcontentclassgroup` DISABLE KEYS */;
INSERT INTO `ezcontentclassgroup` VALUES (1,1031216928,14,1033922106,14,'Content'),(2,1031216941,14,1033922113,14,'Users'),(3,1032009743,14,1033922120,14,'Media');
/*!40000 ALTER TABLE `ezcontentclassgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentobject`
--

DROP TABLE IF EXISTS `ezcontentobject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentobject` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contentclass_id` int(11) NOT NULL DEFAULT 0,
  `current_version` int(11) DEFAULT NULL,
  `initial_language_id` bigint(20) NOT NULL DEFAULT 0,
  `language_mask` bigint(20) NOT NULL DEFAULT 0,
  `modified` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `owner_id` int(11) NOT NULL DEFAULT 0,
  `published` int(11) NOT NULL DEFAULT 0,
  `remote_id` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `section_id` int(11) NOT NULL DEFAULT 0,
  `status` int(11) DEFAULT 0,
  `is_hidden` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ezcontentobject_remote_id` (`remote_id`),
  KEY `ezcontentobject_classid` (`contentclass_id`),
  KEY `ezcontentobject_lmask` (`language_mask`),
  KEY `ezcontentobject_pub` (`published`),
  KEY `ezcontentobject_section` (`section_id`),
  KEY `ezcontentobject_currentversion` (`current_version`),
  KEY `ezcontentobject_owner` (`owner_id`),
  KEY `ezcontentobject_status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentobject`
--

LOCK TABLES `ezcontentobject` WRITE;
/*!40000 ALTER TABLE `ezcontentobject` DISABLE KEYS */;
INSERT INTO `ezcontentobject` VALUES (1,1,9,2,3,1448889046,'eZ Platform',14,1448889046,'9459d3c29e15006e45197295722c7ade',1,1,0),(4,3,1,2,3,1033917596,'Users',14,1033917596,'f5c88a2209584891056f987fd965b0ba',2,1,0),(10,4,2,2,3,1072180405,'Anonymous User',14,1033920665,'faaeb9be3bd98ed09f606fc16d144eca',2,1,0),(11,3,1,2,3,1033920746,'Guest accounts',14,1033920746,'5f7f0bdb3381d6a461d8c29ff53d908f',2,1,0),(12,3,1,2,3,1033920775,'Administrator users',14,1033920775,'9b47a45624b023b1a76c73b74d704acf',2,1,0),(13,3,1,2,3,1033920794,'Editors',14,1033920794,'3c160cca19fb135f83bd02d911f04db2',2,1,0),(14,4,3,2,3,1301062024,'Administrator User',14,1033920830,'1bb4fe25487f05527efa8bfd394cecc7',2,1,0),(41,1,1,2,3,1060695457,'Media',14,1060695457,'a6e35cbcb7cd6ae4b691f3eee30cd262',3,1,0),(42,3,1,2,3,1072180330,'Anonymous Users',14,1072180330,'15b256dbea2ae72418ff5facc999e8f9',2,1,0),(49,1,1,2,3,1080220197,'Images',14,1080220197,'e7ff633c6b8e0fd3531e74c6e712bead',3,1,0),(50,1,1,2,3,1080220220,'Files',14,1080220220,'732a5acd01b51a6fe6eab448ad4138a9',3,1,0),(51,1,1,2,3,1080220233,'Multimedia',14,1080220233,'09082deb98662a104f325aaa8c4933d3',3,1,0),(52,13,1,2,3,1575542498,'Adam\'s Apple Bowthorpe',14,1575542498,'df684b7c8d0c9fa36ef4b1c09b0a50ef',1,1,0),(53,13,1,2,3,1575542498,'Adam\'s Apple Crown Point',14,1575542498,'716d02100b3db2f2fb177d049806ecdb',1,1,0),(54,13,1,2,3,1575542498,'Adam\'s Apple Eaton',14,1575542498,'6c7b61bbe24f774f1f31676087625d30',1,1,0),(55,13,1,2,3,1575542498,'Adam\'s Apple Friars Quay',14,1575542498,'a0aff489518bd5d7f5715af92c56e5cc',1,1,0),(56,13,1,2,3,1575542498,'Adam\'s Apple Golden Triangle',14,1575542498,'ba3806c97dd3bc5d54cf4d76d937062a',1,1,0),(57,13,1,2,3,1575542498,'Adam\'s Apple Heartsease Estate',14,1575542498,'23545e1bb2c88934e0e2ae3a2e03e3de',1,1,0),(58,13,1,2,3,1575542498,'Adam\'s Apple Mousehold Heath',14,1575542498,'f4c4845fea78623fd5d93e395dc25735',1,1,0),(59,13,1,2,3,1575542498,'Adam\'s Apple Norwich Lanes',14,1575542498,'c66690b61b95ebfe7ef28ba94aa949f1',1,1,0),(60,13,1,2,3,1575542498,'Adam\'s Apple Norwich Over the Water',14,1575542498,'1c58b128862e756443d2e89417ec6065',1,1,0),(61,13,1,2,3,1575542498,'Adam\'s Apple Riverside',14,1575542498,'ae8a5fa54fd5260e96ab98853e44fcec',1,1,0),(62,13,1,2,3,1575542498,'Adam\'s Apple Thorpe Hamlet',14,1575542498,'33135b3ce276daca2c591becdbabed62',1,1,0);
/*!40000 ALTER TABLE `ezcontentobject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentobject_attribute`
--

DROP TABLE IF EXISTS `ezcontentobject_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentobject_attribute` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) NOT NULL DEFAULT 0,
  `attribute_original_id` int(11) DEFAULT 0,
  `contentclassattribute_id` int(11) NOT NULL DEFAULT 0,
  `contentobject_id` int(11) NOT NULL DEFAULT 0,
  `data_float` double DEFAULT NULL,
  `data_int` int(11) DEFAULT NULL,
  `data_text` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `data_type_string` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `language_code` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `language_id` bigint(20) NOT NULL DEFAULT 0,
  `sort_key_int` int(11) NOT NULL DEFAULT 0,
  `sort_key_string` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`,`version`),
  KEY `ezcontentobject_attribute_co_id_ver_lang_code` (`contentobject_id`,`version`,`language_code`),
  KEY `ezcontentobject_classattr_id` (`contentclassattribute_id`),
  KEY `sort_key_string` (`sort_key_string`(191)),
  KEY `ezcontentobject_attribute_language_code` (`language_code`),
  KEY `sort_key_int` (`sort_key_int`)
) ENGINE=InnoDB AUTO_INCREMENT=214 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentobject_attribute`
--

LOCK TABLES `ezcontentobject_attribute` WRITE;
/*!40000 ALTER TABLE `ezcontentobject_attribute` DISABLE KEYS */;
INSERT INTO `ezcontentobject_attribute` VALUES (1,9,0,4,1,NULL,NULL,'Welcome to eZ Platform','ezstring','eng-GB',3,0,'welcome to ez platform'),(2,9,0,119,1,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>This is the clean install coming with eZ Platform. It’s a barebone setup of the platform, an excellent foundation to build upon if you want to build from scratch. For more ready to go base designs or demo sites, please check the documentation.</para></section>\n','ezrichtext','eng-GB',3,0,''),(7,1,0,7,4,NULL,NULL,'Main group','ezstring','eng-GB',3,0,''),(8,1,0,6,4,NULL,NULL,'Users','ezstring','eng-GB',3,0,''),(19,2,0,8,10,0,0,'Anonymous','ezstring','eng-GB',3,0,'anonymous'),(20,2,0,9,10,0,0,'User','ezstring','eng-GB',3,0,'user'),(21,2,0,12,10,0,0,'','ezuser','eng-GB',3,0,''),(22,1,0,6,11,0,0,'Guest accounts','ezstring','eng-GB',3,0,''),(23,1,0,7,11,0,0,'','ezstring','eng-GB',3,0,''),(24,1,0,6,12,0,0,'Administrator users','ezstring','eng-GB',3,0,''),(25,1,0,7,12,0,0,'','ezstring','eng-GB',3,0,''),(26,1,0,6,13,0,0,'Editors','ezstring','eng-GB',3,0,''),(27,1,0,7,13,0,0,'','ezstring','eng-GB',3,0,''),(28,3,0,8,14,0,0,'Administrator','ezstring','eng-GB',3,0,'administrator'),(29,3,0,9,14,0,0,'User','ezstring','eng-GB',3,0,'user'),(30,3,30,12,14,0,0,'','ezuser','eng-GB',3,0,''),(98,1,0,4,41,0,0,'Media','ezstring','eng-GB',3,0,''),(99,1,0,119,41,0,1045487555,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext','eng-GB',3,0,''),(100,1,0,6,42,0,0,'Anonymous Users','ezstring','eng-GB',3,0,'anonymous users'),(101,1,0,7,42,0,0,'User group for the anonymous user','ezstring','eng-GB',3,0,'user group for the anonymous user'),(102,9,0,155,1,NULL,NULL,'eZ Platform','ezstring','eng-GB',3,0,'ez platform'),(103,1,0,155,41,0,0,'','ezstring','eng-GB',3,0,''),(104,9,0,156,1,NULL,NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><title ezxhtml:level=\"2\">Welcome to eZ Platform</title><para>Congratulations, you just installed eZ Platform. eZ Platform is the new generation Content Management Platform from eZ Systems and the eZ Community replacing eZ Publish, our previous software.</para><title ezxhtml:level=\"3\">Need some guidance?</title><para>Check out the following resources:</para><title ezxhtml:level=\"4\"><link xlink:href=\"ezurl://23\" xlink:show=\"none\">User Manual</link> for eZ Platform (and eZ Studio)</title><title ezxhtml:level=\"4\"><link xlink:href=\"ezurl://24\" xlink:show=\"none\">Technical doc</link> for eZ Platform</title><title ezxhtml:level=\"4\"><link xlink:href=\"ezurl://25\" xlink:show=\"none\">eZ Platform</link> developer tutorial</title><title ezxhtml:level=\"4\"><link xlink:href=\"ezurl://26\" xlink:show=\"none\">Comparison guide</link> between eZ Platform and eZ Publish Platform</title><title ezxhtml:level=\"3\">Contribute to the project?</title><para>Join the community:</para><title ezxhtml:level=\"4\"><link xlink:href=\"ezurl://27\" xlink:show=\"none\">Github repositories</link> open to the public</title><title ezxhtml:level=\"4\">Register to the community on <link xlink:href=\"ezurl://28\" xlink:show=\"none\">discuss.ezplatform.com</link>, the community site, to access forums, tutorials and blogs</title><title ezxhtml:level=\"4\">Join the conversation on <link xlink:href=\"ezurl://29\" xlink:show=\"none\">the eZ Community Slack</link></title><para>Good luck!</para></section>\n','ezrichtext','eng-GB',3,0,''),(105,1,0,156,41,0,1045487555,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext','eng-GB',3,0,''),(142,1,0,4,49,0,0,'Images','ezstring','eng-GB',3,0,'images'),(143,1,0,155,49,0,0,'','ezstring','eng-GB',3,0,''),(144,1,0,119,49,0,1045487555,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext','eng-GB',3,0,''),(145,1,0,156,49,0,1045487555,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext','eng-GB',3,0,''),(147,1,0,4,50,0,0,'Files','ezstring','eng-GB',3,0,'files'),(148,1,0,155,50,0,0,'','ezstring','eng-GB',3,0,''),(149,1,0,119,50,0,1045487555,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext','eng-GB',3,0,''),(150,1,0,156,50,0,1045487555,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext','eng-GB',3,0,''),(152,1,0,4,51,0,0,'Multimedia','ezstring','eng-GB',3,0,'multimedia'),(153,1,0,155,51,0,0,'','ezstring','eng-GB',3,0,''),(154,1,0,119,51,0,1045487555,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext','eng-GB',3,0,''),(155,1,0,156,51,0,1045487555,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"/>\n','ezrichtext','eng-GB',3,0,''),(177,2,0,179,10,0,0,'','eztext','eng-GB',3,0,''),(178,3,0,179,14,0,0,'','eztext','eng-GB',3,0,''),(179,2,0,180,10,0,0,'','ezimage','eng-GB',3,0,''),(180,3,0,180,14,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1301057722\"><original attribute_id=\"180\" attribute_version=\"3\" attribute_language=\"eng-GB\"/></ezimage>\n','ezimage','eng-GB',3,0,''),(181,1,0,181,52,NULL,NULL,'Adam\'s Apple Bowthorpe','ezstring','eng-GB',3,0,'adam\'s apple bowthorpe'),(182,1,0,182,52,NULL,1,'','ezgmaplocation','eng-GB',3,0,'53 roker terrace, langton long blandford, dt11 8bu'),(183,1,0,183,52,NULL,NULL,'070 8132 5179','ezstring','eng-GB',3,0,'070 8132 5179'),(184,1,0,181,53,NULL,NULL,'Adam\'s Apple Crown Point','ezstring','eng-GB',3,0,'adam\'s apple crown point'),(185,1,0,182,53,NULL,1,'','ezgmaplocation','eng-GB',3,0,'45 nith street, glasshouses, hg3 3xd'),(186,1,0,183,53,NULL,NULL,'070 3442 7551','ezstring','eng-GB',3,0,'070 3442 7551'),(187,1,0,181,54,NULL,NULL,'Adam\'s Apple Eaton','ezstring','eng-GB',3,0,'adam\'s apple eaton'),(188,1,0,182,54,NULL,1,'','ezgmaplocation','eng-GB',3,0,'71 holgate rd, radway, cv35 6ba'),(189,1,0,183,54,NULL,NULL,'077 8461 5493','ezstring','eng-GB',3,0,'077 8461 5493'),(190,1,0,181,55,NULL,NULL,'Adam\'s Apple Friars Quay','ezstring','eng-GB',3,0,'adam\'s apple friars quay'),(191,1,0,182,55,NULL,1,'','ezgmaplocation','eng-GB',3,0,'94 asfordby rd, airntully, ph1 6wj'),(192,1,0,183,55,NULL,NULL,'077 6992 0043','ezstring','eng-GB',3,0,'077 6992 0043'),(193,1,0,181,56,NULL,NULL,'Adam\'s Apple Golden Triangle','ezstring','eng-GB',3,0,'adam\'s apple golden triangle'),(194,1,0,182,56,NULL,1,'','ezgmaplocation','eng-GB',3,0,'84 jesmond rd, kildary, iv18 1bd'),(195,1,0,183,56,NULL,NULL,'070 7000 4401','ezstring','eng-GB',3,0,'070 7000 4401'),(196,1,0,181,57,NULL,NULL,'Adam\'s Apple Heartsease Estate','ezstring','eng-GB',3,0,'adam\'s apple heartsease estate'),(197,1,0,182,57,NULL,1,'','ezgmaplocation','eng-GB',3,0,'61 helland bridge, upper arley, dy12 1rs'),(198,1,0,183,57,NULL,NULL,'079 3389 5053','ezstring','eng-GB',3,0,'079 3389 5053'),(199,1,0,181,58,NULL,NULL,'Adam\'s Apple Mousehold Heath','ezstring','eng-GB',3,0,'adam\'s apple mousehold heath'),(200,1,0,182,58,NULL,1,'','ezgmaplocation','eng-GB',3,0,'75 stone cellar road, kingswood common, hr5 6ep'),(201,1,0,183,58,NULL,NULL,'070 2896 5939','ezstring','eng-GB',3,0,'070 2896 5939'),(202,1,0,181,59,NULL,NULL,'Adam\'s Apple Norwich Lanes','ezstring','eng-GB',3,0,'adam\'s apple norwich lanes'),(203,1,0,182,59,NULL,1,'','ezgmaplocation','eng-GB',3,0,'68 northgate street, bicknacre, cm3 1qu'),(204,1,0,183,59,NULL,NULL,'079 5590 9599','ezstring','eng-GB',3,0,'079 5590 9599'),(205,1,0,181,60,NULL,NULL,'Adam\'s Apple Norwich Over the Water','ezstring','eng-GB',3,0,'adam\'s apple norwich over the water'),(206,1,0,182,60,NULL,1,'','ezgmaplocation','eng-GB',3,0,'117 park end st, brodsworth, dn5 3wy'),(207,1,0,183,60,NULL,NULL,'079 7176 8235','ezstring','eng-GB',3,0,'079 7176 8235'),(208,1,0,181,61,NULL,NULL,'Adam\'s Apple Riverside','ezstring','eng-GB',3,0,'adam\'s apple riverside'),(209,1,0,182,61,NULL,1,'','ezgmaplocation','eng-GB',3,0,'83 thames street, bolberry, tq7 4zq'),(210,1,0,183,61,NULL,NULL,'079 2238 0825','ezstring','eng-GB',3,0,'079 2238 0825'),(211,1,0,181,62,NULL,NULL,'Adam\'s Apple Thorpe Hamlet','ezstring','eng-GB',3,0,'adam\'s apple thorpe hamlet'),(212,1,0,182,62,NULL,1,'','ezgmaplocation','eng-GB',3,0,'50 wood lane, monachty, sy23 2zw'),(213,1,0,183,62,NULL,NULL,'077 7895 5460','ezstring','eng-GB',3,0,'077 7895 5460');
/*!40000 ALTER TABLE `ezcontentobject_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentobject_link`
--

DROP TABLE IF EXISTS `ezcontentobject_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentobject_link` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contentclassattribute_id` int(11) NOT NULL DEFAULT 0,
  `from_contentobject_id` int(11) NOT NULL DEFAULT 0,
  `from_contentobject_version` int(11) NOT NULL DEFAULT 0,
  `relation_type` int(11) NOT NULL DEFAULT 1,
  `to_contentobject_id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `ezco_link_to_co_id` (`to_contentobject_id`),
  KEY `ezco_link_from` (`from_contentobject_id`,`from_contentobject_version`,`contentclassattribute_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentobject_link`
--

LOCK TABLES `ezcontentobject_link` WRITE;
/*!40000 ALTER TABLE `ezcontentobject_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcontentobject_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentobject_name`
--

DROP TABLE IF EXISTS `ezcontentobject_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentobject_name` (
  `contentobject_id` int(11) NOT NULL DEFAULT 0,
  `content_version` int(11) NOT NULL DEFAULT 0,
  `content_translation` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `language_id` bigint(20) NOT NULL DEFAULT 0,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `real_translation` varchar(20) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`contentobject_id`,`content_version`,`content_translation`),
  KEY `ezcontentobject_name_lang_id` (`language_id`),
  KEY `ezcontentobject_name_cov_id` (`content_version`),
  KEY `ezcontentobject_name_name` (`name`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentobject_name`
--

LOCK TABLES `ezcontentobject_name` WRITE;
/*!40000 ALTER TABLE `ezcontentobject_name` DISABLE KEYS */;
INSERT INTO `ezcontentobject_name` VALUES (1,9,'eng-GB',2,'eZ Platform','eng-GB'),(4,1,'eng-GB',3,'Users','eng-GB'),(10,2,'eng-GB',3,'Anonymous User','eng-GB'),(11,1,'eng-GB',3,'Guest accounts','eng-GB'),(12,1,'eng-GB',3,'Administrator users','eng-GB'),(13,1,'eng-GB',3,'Editors','eng-GB'),(14,3,'eng-GB',3,'Administrator User','eng-GB'),(41,1,'eng-GB',3,'Media','eng-GB'),(42,1,'eng-GB',3,'Anonymous Users','eng-GB'),(49,1,'eng-GB',3,'Images','eng-GB'),(50,1,'eng-GB',3,'Files','eng-GB'),(51,1,'eng-GB',3,'Multimedia','eng-GB'),(52,1,'eng-GB',3,'Adam\'s Apple Bowthorpe','eng-GB'),(53,1,'eng-GB',3,'Adam\'s Apple Crown Point','eng-GB'),(54,1,'eng-GB',3,'Adam\'s Apple Eaton','eng-GB'),(55,1,'eng-GB',3,'Adam\'s Apple Friars Quay','eng-GB'),(56,1,'eng-GB',3,'Adam\'s Apple Golden Triangle','eng-GB'),(57,1,'eng-GB',3,'Adam\'s Apple Heartsease Estate','eng-GB'),(58,1,'eng-GB',3,'Adam\'s Apple Mousehold Heath','eng-GB'),(59,1,'eng-GB',3,'Adam\'s Apple Norwich Lanes','eng-GB'),(60,1,'eng-GB',3,'Adam\'s Apple Norwich Over the Water','eng-GB'),(61,1,'eng-GB',3,'Adam\'s Apple Riverside','eng-GB'),(62,1,'eng-GB',3,'Adam\'s Apple Thorpe Hamlet','eng-GB');
/*!40000 ALTER TABLE `ezcontentobject_name` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentobject_trash`
--

DROP TABLE IF EXISTS `ezcontentobject_trash`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentobject_trash` (
  `node_id` int(11) NOT NULL DEFAULT 0,
  `contentobject_id` int(11) DEFAULT NULL,
  `contentobject_version` int(11) DEFAULT NULL,
  `depth` int(11) NOT NULL DEFAULT 0,
  `is_hidden` int(11) NOT NULL DEFAULT 0,
  `is_invisible` int(11) NOT NULL DEFAULT 0,
  `main_node_id` int(11) DEFAULT NULL,
  `modified_subnode` int(11) DEFAULT 0,
  `parent_node_id` int(11) NOT NULL DEFAULT 0,
  `path_identification_string` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `path_string` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `priority` int(11) NOT NULL DEFAULT 0,
  `remote_id` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `sort_field` int(11) DEFAULT 1,
  `sort_order` int(11) DEFAULT 1,
  `trashed` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`node_id`),
  KEY `ezcobj_trash_depth` (`depth`),
  KEY `ezcobj_trash_p_node_id` (`parent_node_id`),
  KEY `ezcobj_trash_path_ident` (`path_identification_string`(50)),
  KEY `ezcobj_trash_co_id` (`contentobject_id`),
  KEY `ezcobj_trash_modified_subnode` (`modified_subnode`),
  KEY `ezcobj_trash_path` (`path_string`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentobject_trash`
--

LOCK TABLES `ezcontentobject_trash` WRITE;
/*!40000 ALTER TABLE `ezcontentobject_trash` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcontentobject_trash` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentobject_tree`
--

DROP TABLE IF EXISTS `ezcontentobject_tree`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentobject_tree` (
  `node_id` int(11) NOT NULL AUTO_INCREMENT,
  `contentobject_id` int(11) DEFAULT NULL,
  `contentobject_is_published` int(11) DEFAULT NULL,
  `contentobject_version` int(11) DEFAULT NULL,
  `depth` int(11) NOT NULL DEFAULT 0,
  `is_hidden` int(11) NOT NULL DEFAULT 0,
  `is_invisible` int(11) NOT NULL DEFAULT 0,
  `main_node_id` int(11) DEFAULT NULL,
  `modified_subnode` int(11) DEFAULT 0,
  `parent_node_id` int(11) NOT NULL DEFAULT 0,
  `path_identification_string` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `path_string` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `priority` int(11) NOT NULL DEFAULT 0,
  `remote_id` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `sort_field` int(11) DEFAULT 1,
  `sort_order` int(11) DEFAULT 1,
  PRIMARY KEY (`node_id`),
  KEY `ezcontentobject_tree_p_node_id` (`parent_node_id`),
  KEY `ezcontentobject_tree_path_ident` (`path_identification_string`(50)),
  KEY `ezcontentobject_tree_contentobject_id_path_string` (`path_string`(191),`contentobject_id`),
  KEY `ezcontentobject_tree_co_id` (`contentobject_id`),
  KEY `ezcontentobject_tree_depth` (`depth`),
  KEY `ezcontentobject_tree_path` (`path_string`(191)),
  KEY `modified_subnode` (`modified_subnode`),
  KEY `ezcontentobject_tree_remote_id` (`remote_id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentobject_tree`
--

LOCK TABLES `ezcontentobject_tree` WRITE;
/*!40000 ALTER TABLE `ezcontentobject_tree` DISABLE KEYS */;
INSERT INTO `ezcontentobject_tree` VALUES (1,0,1,1,0,0,0,1,1448999778,1,'','/1/',0,'629709ba256fe317c3ddcee35453a96a',1,1),(2,1,1,9,1,0,0,2,1301073466,1,'node_2','/1/2/',0,'f3e90596361e31d496d4026eb624c983',8,1),(5,4,1,1,1,0,0,5,1301062024,1,'users','/1/5/',0,'3f6d92f8044aed134f32153517850f5a',1,1),(12,11,1,1,2,0,0,12,1081860719,5,'users/guest_accounts','/1/5/12/',0,'602dcf84765e56b7f999eaafd3821dd3',1,1),(13,12,1,1,2,0,0,13,1301062024,5,'users/administrator_users','/1/5/13/',0,'769380b7aa94541679167eab817ca893',1,1),(14,13,1,1,2,0,0,14,1081860719,5,'users/editors','/1/5/14/',0,'f7dda2854fc68f7c8455d9cb14bd04a9',1,1),(15,14,1,3,3,0,0,15,1301062024,13,'users/administrator_users/administrator_user','/1/5/13/15/',0,'e5161a99f733200b9ed4e80f9c16187b',1,1),(43,41,1,1,1,0,0,43,1081860720,1,'media','/1/43/',0,'75c715a51699d2d309a924eca6a95145',9,1),(44,42,1,1,2,0,0,44,1081860719,5,'users/anonymous_users','/1/5/44/',0,'4fdf0072da953bb276c0c7e0141c5c9b',9,1),(45,10,1,2,3,0,0,45,1081860719,44,'users/anonymous_users/anonymous_user','/1/5/44/45/',0,'2cf8343bee7b482bab82b269d8fecd76',9,1),(51,49,1,1,2,0,0,51,1081860720,43,'media/images','/1/43/51/',0,'1b26c0454b09bb49dfb1b9190ffd67cb',9,1),(52,50,1,1,2,0,0,52,1081860720,43,'media/files','/1/43/52/',0,'0b113a208f7890f9ad3c24444ff5988c',9,1),(53,51,1,1,2,0,0,53,1081860720,43,'media/multimedia','/1/43/53/',0,'4f18b82c75f10aad476cae5adf98c11f',9,1),(54,52,1,1,2,0,0,54,1575542498,2,'node_2/adam_s_apple_bowthorpe','/1/2/54/',0,'d0d01fe6ad87b2f9876715526de3f719',2,0),(55,53,1,1,2,0,0,55,1575542498,2,'node_2/adam_s_apple_crown_point','/1/2/55/',0,'b3986b3a3f0ec8543b75966d4a419903',2,0),(56,54,1,1,2,0,0,56,1575542498,2,'node_2/adam_s_apple_eaton','/1/2/56/',0,'a2888ba62231f31b5b147d22ce1c45df',2,0),(57,55,1,1,2,0,0,57,1575542498,2,'node_2/adam_s_apple_friars_quay','/1/2/57/',0,'bca6019a0c1226d29ae20d9e7f151e93',2,0),(58,56,1,1,2,0,0,58,1575542498,2,'node_2/adam_s_apple_golden_triangle','/1/2/58/',0,'476c014f6e71b016ae410e0706600705',2,0),(59,57,1,1,2,0,0,59,1575542498,2,'node_2/adam_s_apple_heartsease_estate','/1/2/59/',0,'dc7f6acbc0394f44bbe88285d2141986',2,0),(60,58,1,1,2,0,0,60,1575542498,2,'node_2/adam_s_apple_mousehold_heath','/1/2/60/',0,'d568047739940c2b1a01e67d747d2ab4',2,0),(61,59,1,1,2,0,0,61,1575542498,2,'node_2/adam_s_apple_norwich_lanes','/1/2/61/',0,'25bd523c6cf04a3e14d79b6091223c50',2,0),(62,60,1,1,2,0,0,62,1575542498,2,'node_2/adam_s_apple_norwich_over_the_water','/1/2/62/',0,'7837fc964b8c34d83ff4018807cf5448',2,0),(63,61,1,1,2,0,0,63,1575542498,2,'node_2/adam_s_apple_riverside','/1/2/63/',0,'60f883b509538a59ec5183e8edf41683',2,0),(64,62,1,1,2,0,0,64,1575542498,2,'node_2/adam_s_apple_thorpe_hamlet','/1/2/64/',0,'8065e2f6e99ce180ba192f2f4f7fbf89',2,0);
/*!40000 ALTER TABLE `ezcontentobject_tree` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentobject_version`
--

DROP TABLE IF EXISTS `ezcontentobject_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentobject_version` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contentobject_id` int(11) DEFAULT NULL,
  `created` int(11) NOT NULL DEFAULT 0,
  `creator_id` int(11) NOT NULL DEFAULT 0,
  `initial_language_id` bigint(20) NOT NULL DEFAULT 0,
  `language_mask` bigint(20) NOT NULL DEFAULT 0,
  `modified` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `version` int(11) NOT NULL DEFAULT 0,
  `workflow_event_pos` int(11) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `ezcobj_version_status` (`status`),
  KEY `idx_object_version_objver` (`contentobject_id`,`version`),
  KEY `ezcontobj_version_obj_status` (`contentobject_id`,`status`),
  KEY `ezcobj_version_creator_id` (`creator_id`)
) ENGINE=InnoDB AUTO_INCREMENT=518 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentobject_version`
--

LOCK TABLES `ezcontentobject_version` WRITE;
/*!40000 ALTER TABLE `ezcontentobject_version` DISABLE KEYS */;
INSERT INTO `ezcontentobject_version` VALUES (4,4,0,14,2,3,0,1,0,1,1),(439,11,1033920737,14,2,3,1033920746,1,0,1,0),(440,12,1033920760,14,2,3,1033920775,1,0,1,0),(441,13,1033920786,14,2,3,1033920794,1,0,1,0),(472,41,1060695450,14,2,3,1060695457,1,0,1,0),(473,42,1072180278,14,2,3,1072180330,1,0,1,0),(474,10,1072180337,14,2,3,1072180405,1,0,2,0),(488,49,1080220181,14,2,3,1080220197,1,0,1,0),(489,50,1080220211,14,2,3,1080220220,1,0,1,0),(490,51,1080220225,14,2,3,1080220233,1,0,1,0),(499,14,1301061783,14,2,3,1301062024,1,0,3,0),(506,1,1448889045,14,2,3,1448889046,1,0,9,0),(507,52,1575542498,14,2,3,1575542498,1,0,1,0),(508,53,1575542498,14,2,3,1575542498,1,0,1,0),(509,54,1575542498,14,2,3,1575542498,1,0,1,0),(510,55,1575542498,14,2,3,1575542498,1,0,1,0),(511,56,1575542498,14,2,3,1575542498,1,0,1,0),(512,57,1575542498,14,2,3,1575542498,1,0,1,0),(513,58,1575542498,14,2,3,1575542498,1,0,1,0),(514,59,1575542498,14,2,3,1575542498,1,0,1,0),(515,60,1575542498,14,2,3,1575542498,1,0,1,0),(516,61,1575542498,14,2,3,1575542498,1,0,1,0),(517,62,1575542498,14,2,3,1575542498,1,0,1,0);
/*!40000 ALTER TABLE `ezcontentobject_version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezdfsfile`
--

DROP TABLE IF EXISTS `ezdfsfile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezdfsfile` (
  `name_hash` varchar(34) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `name_trunk` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `datatype` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'application/octet-stream',
  `scope` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `size` bigint(20) unsigned NOT NULL DEFAULT 0,
  `mtime` int(11) NOT NULL DEFAULT 0,
  `expired` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`name_hash`),
  KEY `ezdfsfile_name_trunk` (`name_trunk`(191)),
  KEY `ezdfsfile_expired_name` (`expired`,`name`(191)),
  KEY `ezdfsfile_name` (`name`(191)),
  KEY `ezdfsfile_mtime` (`mtime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezdfsfile`
--

LOCK TABLES `ezdfsfile` WRITE;
/*!40000 ALTER TABLE `ezdfsfile` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezdfsfile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezgmaplocation`
--

DROP TABLE IF EXISTS `ezgmaplocation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezgmaplocation` (
  `contentobject_attribute_id` int(11) NOT NULL DEFAULT 0,
  `contentobject_version` int(11) NOT NULL DEFAULT 0,
  `latitude` double NOT NULL DEFAULT 0,
  `longitude` double NOT NULL DEFAULT 0,
  `address` varchar(150) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`contentobject_attribute_id`,`contentobject_version`),
  KEY `latitude_longitude_key` (`latitude`,`longitude`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezgmaplocation`
--

LOCK TABLES `ezgmaplocation` WRITE;
/*!40000 ALTER TABLE `ezgmaplocation` DISABLE KEYS */;
INSERT INTO `ezgmaplocation` VALUES (182,1,1.2173105,52.6372672,'53 Roker Terrace, LANGTON LONG BLANDFORD, DT11 8BU'),(185,1,52.6128844,1.3074276,'45 Nith Street, GLASSHOUSES, HG3 3XD'),(188,1,52.6082309,1.2513629,'71 Holgate Rd, RADWAY, CV35 6BA'),(191,1,52.6331542,1.2945938,'94 Asfordby Rd, AIRNTULLY, PH1 6WJ'),(194,1,52.6302527,1.2713031,'84 Jesmond Rd, KILDARY, IV18 1BD'),(197,1,52.636899,1.3275457,'61 Helland Bridge, UPPER ARLEY, DY12 1RS'),(200,1,52.6454743,1.3230579,'75 Stone Cellar Road, KINGSWOOD COMMON, HR5 6EP'),(203,1,52.6297209,1.2934871,'68 Northgate Street, BICKNACRE, CM3 1QU'),(206,1,52.6523529,1.3506878,'117 Park End St, BRODSWORTH, DN5 3WY'),(209,1,52.6241944,1.3075673,'83 Thames Street, BOLBERRY, TQ7 4ZQ'),(212,1,52.6280232,1.3129529,'50 Wood Lane, MONACHTY, SY23 2ZW');
/*!40000 ALTER TABLE `ezgmaplocation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezimagefile`
--

DROP TABLE IF EXISTS `ezimagefile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezimagefile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contentobject_attribute_id` int(11) NOT NULL DEFAULT 0,
  `filepath` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ezimagefile_file` (`filepath`(191)),
  KEY `ezimagefile_coid` (`contentobject_attribute_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezimagefile`
--

LOCK TABLES `ezimagefile` WRITE;
/*!40000 ALTER TABLE `ezimagefile` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezimagefile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezkeyword`
--

DROP TABLE IF EXISTS `ezkeyword`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezkeyword` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class_id` int(11) NOT NULL DEFAULT 0,
  `keyword` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ezkeyword_keyword` (`keyword`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezkeyword`
--

LOCK TABLES `ezkeyword` WRITE;
/*!40000 ALTER TABLE `ezkeyword` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezkeyword` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezkeyword_attribute_link`
--

DROP TABLE IF EXISTS `ezkeyword_attribute_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezkeyword_attribute_link` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keyword_id` int(11) NOT NULL DEFAULT 0,
  `objectattribute_id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `ezkeyword_attr_link_oaid` (`objectattribute_id`),
  KEY `ezkeyword_attr_link_kid_oaid` (`keyword_id`,`objectattribute_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezkeyword_attribute_link`
--

LOCK TABLES `ezkeyword_attribute_link` WRITE;
/*!40000 ALTER TABLE `ezkeyword_attribute_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezkeyword_attribute_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezmedia`
--

DROP TABLE IF EXISTS `ezmedia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezmedia` (
  `contentobject_attribute_id` int(11) NOT NULL DEFAULT 0,
  `version` int(11) NOT NULL DEFAULT 0,
  `controls` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `filename` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `has_controller` int(11) DEFAULT 0,
  `height` int(11) DEFAULT NULL,
  `is_autoplay` int(11) DEFAULT 0,
  `is_loop` int(11) DEFAULT 0,
  `mime_type` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `original_filename` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `pluginspage` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `quality` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  PRIMARY KEY (`contentobject_attribute_id`,`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezmedia`
--

LOCK TABLES `ezmedia` WRITE;
/*!40000 ALTER TABLE `ezmedia` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezmedia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eznode_assignment`
--

DROP TABLE IF EXISTS `eznode_assignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eznode_assignment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contentobject_id` int(11) DEFAULT NULL,
  `contentobject_version` int(11) DEFAULT NULL,
  `from_node_id` int(11) DEFAULT 0,
  `is_main` int(11) NOT NULL DEFAULT 0,
  `op_code` int(11) NOT NULL DEFAULT 0,
  `parent_node` int(11) DEFAULT NULL,
  `parent_remote_id` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `remote_id` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '0',
  `sort_field` int(11) DEFAULT 1,
  `sort_order` int(11) DEFAULT 1,
  `priority` int(11) NOT NULL DEFAULT 0,
  `is_hidden` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `eznode_assignment_is_main` (`is_main`),
  KEY `eznode_assignment_coid_cov` (`contentobject_id`,`contentobject_version`),
  KEY `eznode_assignment_parent_node` (`parent_node`),
  KEY `eznode_assignment_co_version` (`contentobject_version`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eznode_assignment`
--

LOCK TABLES `eznode_assignment` WRITE;
/*!40000 ALTER TABLE `eznode_assignment` DISABLE KEYS */;
INSERT INTO `eznode_assignment` VALUES (4,8,2,0,1,2,5,'','0',1,1,0,0),(5,42,1,0,1,2,5,'','0',9,1,0,0),(6,10,2,-1,1,2,44,'','0',9,1,0,0),(7,4,1,0,1,2,1,'','0',1,1,0,0),(8,12,1,0,1,2,5,'','0',1,1,0,0),(9,13,1,0,1,2,5,'','0',1,1,0,0),(11,41,1,0,1,2,1,'','0',1,1,0,0),(12,11,1,0,1,2,5,'','0',1,1,0,0),(27,49,1,0,1,2,43,'','0',9,1,0,0),(28,50,1,0,1,2,43,'','0',9,1,0,0),(29,51,1,0,1,2,43,'','0',9,1,0,0),(38,14,3,-1,1,2,13,'','0',1,1,0,0),(39,52,1,0,1,2,2,'d0d01fe6ad87b2f9876715526de3f719','0',2,0,0,0),(40,53,1,0,1,2,2,'b3986b3a3f0ec8543b75966d4a419903','0',2,0,0,0),(41,54,1,0,1,2,2,'a2888ba62231f31b5b147d22ce1c45df','0',2,0,0,0),(42,55,1,0,1,2,2,'bca6019a0c1226d29ae20d9e7f151e93','0',2,0,0,0),(43,56,1,0,1,2,2,'476c014f6e71b016ae410e0706600705','0',2,0,0,0),(44,57,1,0,1,2,2,'dc7f6acbc0394f44bbe88285d2141986','0',2,0,0,0),(45,58,1,0,1,2,2,'d568047739940c2b1a01e67d747d2ab4','0',2,0,0,0),(46,59,1,0,1,2,2,'25bd523c6cf04a3e14d79b6091223c50','0',2,0,0,0),(47,60,1,0,1,2,2,'7837fc964b8c34d83ff4018807cf5448','0',2,0,0,0),(48,61,1,0,1,2,2,'60f883b509538a59ec5183e8edf41683','0',2,0,0,0),(49,62,1,0,1,2,2,'8065e2f6e99ce180ba192f2f4f7fbf89','0',2,0,0,0);
/*!40000 ALTER TABLE `eznode_assignment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eznotification`
--

DROP TABLE IF EXISTS `eznotification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eznotification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) NOT NULL DEFAULT 0,
  `is_pending` tinyint(1) NOT NULL DEFAULT 1,
  `type` varchar(128) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `created` int(11) NOT NULL DEFAULT 0,
  `data` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `eznotification_owner_is_pending` (`owner_id`,`is_pending`),
  KEY `eznotification_owner` (`owner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eznotification`
--

LOCK TABLES `eznotification` WRITE;
/*!40000 ALTER TABLE `eznotification` DISABLE KEYS */;
/*!40000 ALTER TABLE `eznotification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezpackage`
--

DROP TABLE IF EXISTS `ezpackage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezpackage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `install_date` int(11) NOT NULL DEFAULT 0,
  `name` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `version` varchar(30) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezpackage`
--

LOCK TABLES `ezpackage` WRITE;
/*!40000 ALTER TABLE `ezpackage` DISABLE KEYS */;
INSERT INTO `ezpackage` VALUES (1,1301057838,'plain_site_data','1.0-1');
/*!40000 ALTER TABLE `ezpackage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezpolicy`
--

DROP TABLE IF EXISTS `ezpolicy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezpolicy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `function_name` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `module_name` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `original_id` int(11) NOT NULL DEFAULT 0,
  `role_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ezpolicy_role_id` (`role_id`),
  KEY `ezpolicy_original_id` (`original_id`)
) ENGINE=InnoDB AUTO_INCREMENT=341 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezpolicy`
--

LOCK TABLES `ezpolicy` WRITE;
/*!40000 ALTER TABLE `ezpolicy` DISABLE KEYS */;
INSERT INTO `ezpolicy` VALUES (317,'*','content',0,3),(319,'login','user',0,3),(328,'read','content',0,1),(331,'login','user',0,1),(332,'*','*',0,2),(333,'read','content',0,4),(334,'view_embed','content',0,1),(340,'*','url',0,3);
/*!40000 ALTER TABLE `ezpolicy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezpolicy_limitation`
--

DROP TABLE IF EXISTS `ezpolicy_limitation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezpolicy_limitation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `policy_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `policy_id` (`policy_id`)
) ENGINE=InnoDB AUTO_INCREMENT=257 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezpolicy_limitation`
--

LOCK TABLES `ezpolicy_limitation` WRITE;
/*!40000 ALTER TABLE `ezpolicy_limitation` DISABLE KEYS */;
INSERT INTO `ezpolicy_limitation` VALUES (251,'Section',328),(252,'Section',329),(253,'SiteAccess',331),(254,'Class',333),(255,'Owner',333),(256,'Class',334);
/*!40000 ALTER TABLE `ezpolicy_limitation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezpolicy_limitation_value`
--

DROP TABLE IF EXISTS `ezpolicy_limitation_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezpolicy_limitation_value` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `limitation_id` int(11) DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ezpolicy_limit_value_limit_id` (`limitation_id`),
  KEY `ezpolicy_limitation_value_val` (`value`(191))
) ENGINE=InnoDB AUTO_INCREMENT=484 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezpolicy_limitation_value`
--

LOCK TABLES `ezpolicy_limitation_value` WRITE;
/*!40000 ALTER TABLE `ezpolicy_limitation_value` DISABLE KEYS */;
INSERT INTO `ezpolicy_limitation_value` VALUES (477,251,'1'),(478,252,'1'),(479,253,'1766001124'),(480,254,'4'),(481,255,'1'),(482,256,'5'),(483,256,'12');
/*!40000 ALTER TABLE `ezpolicy_limitation_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezpreferences`
--

DROP TABLE IF EXISTS `ezpreferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezpreferences` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `value` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ezpreferences_user_id_idx` (`user_id`,`name`),
  KEY `ezpreferences_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezpreferences`
--

LOCK TABLES `ezpreferences` WRITE;
/*!40000 ALTER TABLE `ezpreferences` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezpreferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezrole`
--

DROP TABLE IF EXISTS `ezrole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezrole` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_new` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `value` char(1) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `version` int(11) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezrole`
--

LOCK TABLES `ezrole` WRITE;
/*!40000 ALTER TABLE `ezrole` DISABLE KEYS */;
INSERT INTO `ezrole` VALUES (1,0,'Anonymous','',0),(2,0,'Administrator','0',0),(3,0,'Editor','',0),(4,0,'Member','',0);
/*!40000 ALTER TABLE `ezrole` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezsearch_object_word_link`
--

DROP TABLE IF EXISTS `ezsearch_object_word_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezsearch_object_word_link` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contentclass_attribute_id` int(11) NOT NULL DEFAULT 0,
  `contentclass_id` int(11) NOT NULL DEFAULT 0,
  `contentobject_id` int(11) NOT NULL DEFAULT 0,
  `frequency` double NOT NULL DEFAULT 0,
  `identifier` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `integer_value` int(11) NOT NULL DEFAULT 0,
  `next_word_id` int(11) NOT NULL DEFAULT 0,
  `placement` int(11) NOT NULL DEFAULT 0,
  `prev_word_id` int(11) NOT NULL DEFAULT 0,
  `published` int(11) NOT NULL DEFAULT 0,
  `section_id` int(11) NOT NULL DEFAULT 0,
  `word_id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `ezsearch_object_word_link_object` (`contentobject_id`),
  KEY `ezsearch_object_word_link_identifier` (`identifier`(191)),
  KEY `ezsearch_object_word_link_integer_value` (`integer_value`),
  KEY `ezsearch_object_word_link_word` (`word_id`),
  KEY `ezsearch_object_word_link_frequency` (`frequency`)
) ENGINE=InnoDB AUTO_INCREMENT=5033 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezsearch_object_word_link`
--

LOCK TABLES `ezsearch_object_word_link` WRITE;
/*!40000 ALTER TABLE `ezsearch_object_word_link` DISABLE KEYS */;
INSERT INTO `ezsearch_object_word_link` VALUES (4694,4,1,1,0,'name',0,970,0,0,1448889046,1,969),(4695,4,1,1,0,'name',0,971,1,969,1448889046,1,970),(4696,4,1,1,0,'name',0,972,2,970,1448889046,1,971),(4697,4,1,1,0,'name',0,973,3,971,1448889046,1,972),(4698,119,1,1,0,'short_description',0,974,4,972,1448889046,1,973),(4699,119,1,1,0,'short_description',0,975,5,973,1448889046,1,974),(4700,119,1,1,0,'short_description',0,976,6,974,1448889046,1,975),(4701,119,1,1,0,'short_description',0,977,7,975,1448889046,1,976),(4702,119,1,1,0,'short_description',0,978,8,976,1448889046,1,977),(4703,119,1,1,0,'short_description',0,979,9,977,1448889046,1,978),(4704,119,1,1,0,'short_description',0,971,10,978,1448889046,1,979),(4705,119,1,1,0,'short_description',0,972,11,979,1448889046,1,971),(4706,119,1,1,0,'short_description',0,980,12,971,1448889046,1,972),(4707,119,1,1,0,'short_description',0,981,13,972,1448889046,1,980),(4708,119,1,1,0,'short_description',0,982,14,980,1448889046,1,981),(4709,119,1,1,0,'short_description',0,983,15,981,1448889046,1,982),(4710,119,1,1,0,'short_description',0,984,16,982,1448889046,1,983),(4711,119,1,1,0,'short_description',0,985,17,983,1448889046,1,984),(4712,119,1,1,0,'short_description',0,975,18,984,1448889046,1,985),(4713,119,1,1,0,'short_description',0,972,19,985,1448889046,1,975),(4714,119,1,1,0,'short_description',0,986,20,975,1448889046,1,972),(4715,119,1,1,0,'short_description',0,987,21,972,1448889046,1,986),(4716,119,1,1,0,'short_description',0,988,22,986,1448889046,1,987),(4717,119,1,1,0,'short_description',0,970,23,987,1448889046,1,988),(4718,119,1,1,0,'short_description',0,989,24,988,1448889046,1,970),(4719,119,1,1,0,'short_description',0,990,25,970,1448889046,1,989),(4720,119,1,1,0,'short_description',0,991,26,989,1448889046,1,990),(4721,119,1,1,0,'short_description',0,992,27,990,1448889046,1,991),(4722,119,1,1,0,'short_description',0,993,28,991,1448889046,1,992),(4723,119,1,1,0,'short_description',0,970,29,992,1448889046,1,993),(4724,119,1,1,0,'short_description',0,989,30,993,1448889046,1,970),(4725,119,1,1,0,'short_description',0,994,31,970,1448889046,1,989),(4726,119,1,1,0,'short_description',0,995,32,989,1448889046,1,994),(4727,119,1,1,0,'short_description',0,996,33,994,1448889046,1,995),(4728,119,1,1,0,'short_description',0,997,34,995,1448889046,1,996),(4729,119,1,1,0,'short_description',0,998,35,996,1448889046,1,997),(4730,119,1,1,0,'short_description',0,970,36,997,1448889046,1,998),(4731,119,1,1,0,'short_description',0,999,37,998,1448889046,1,970),(4732,119,1,1,0,'short_description',0,1000,38,970,1448889046,1,999),(4733,119,1,1,0,'short_description',0,1001,39,999,1448889046,1,1000),(4734,119,1,1,0,'short_description',0,1002,40,1000,1448889046,1,1001),(4735,119,1,1,0,'short_description',0,1003,41,1001,1448889046,1,1002),(4736,119,1,1,0,'short_description',0,1004,42,1002,1448889046,1,1003),(4737,119,1,1,0,'short_description',0,1005,43,1003,1448889046,1,1004),(4738,119,1,1,0,'short_description',0,1006,44,1004,1448889046,1,1005),(4739,119,1,1,0,'short_description',0,975,45,1005,1448889046,1,1006),(4740,119,1,1,0,'short_description',0,1007,46,1006,1448889046,1,975),(4741,119,1,1,0,'short_description',0,971,47,975,1448889046,1,1007),(4742,155,1,1,0,'short_name',0,972,48,1007,1448889046,1,971),(4743,155,1,1,0,'short_name',0,969,49,971,1448889046,1,972),(4744,156,1,1,0,'description',0,970,50,972,1448889046,1,969),(4745,156,1,1,0,'description',0,971,51,969,1448889046,1,970),(4746,156,1,1,0,'description',0,972,52,970,1448889046,1,971),(4747,156,1,1,0,'description',0,1008,53,971,1448889046,1,972),(4748,156,1,1,0,'description',0,992,54,972,1448889046,1,1008),(4749,156,1,1,0,'description',0,1009,55,1008,1448889046,1,992),(4750,156,1,1,0,'description',0,1010,56,992,1448889046,1,1009),(4751,156,1,1,0,'description',0,971,57,1009,1448889046,1,1010),(4752,156,1,1,0,'description',0,972,58,1010,1448889046,1,971),(4753,156,1,1,0,'description',0,971,59,971,1448889046,1,972),(4754,156,1,1,0,'description',0,972,60,972,1448889046,1,971),(4755,156,1,1,0,'description',0,974,61,971,1448889046,1,972),(4756,156,1,1,0,'description',0,975,62,972,1448889046,1,974),(4757,156,1,1,0,'description',0,1011,63,974,1448889046,1,975),(4758,156,1,1,0,'description',0,1012,64,975,1448889046,1,1011),(4759,156,1,1,0,'description',0,1013,65,1011,1448889046,1,1012),(4760,156,1,1,0,'description',0,1014,66,1012,1448889046,1,1013),(4761,156,1,1,0,'description',0,972,67,1013,1448889046,1,1014),(4762,156,1,1,0,'description',0,994,68,1014,1448889046,1,972),(4763,156,1,1,0,'description',0,971,69,972,1448889046,1,994),(4764,156,1,1,0,'description',0,1015,70,994,1448889046,1,971),(4765,156,1,1,0,'description',0,1016,71,971,1448889046,1,1015),(4766,156,1,1,0,'description',0,975,72,1015,1448889046,1,1016),(4767,156,1,1,0,'description',0,971,73,1016,1448889046,1,975),(4768,156,1,1,0,'description',0,1017,74,975,1448889046,1,971),(4769,156,1,1,0,'description',0,1018,75,971,1448889046,1,1017),(4770,156,1,1,0,'description',0,971,76,1017,1448889046,1,1018),(4771,156,1,1,0,'description',0,1019,77,1018,1448889046,1,971),(4772,156,1,1,0,'description',0,1020,78,971,1448889046,1,1019),(4773,156,1,1,0,'description',0,1021,79,1019,1448889046,1,1020),(4774,156,1,1,0,'description',0,1022,80,1020,1448889046,1,1021),(4775,156,1,1,0,'description',0,1023,81,1021,1448889046,1,1022),(4776,156,1,1,0,'description',0,1024,82,1022,1448889046,1,1023),(4777,156,1,1,0,'description',0,1025,83,1023,1448889046,1,1024),(4778,156,1,1,0,'description',0,1006,84,1024,1448889046,1,1025),(4779,156,1,1,0,'description',0,1026,85,1025,1448889046,1,1006),(4780,156,1,1,0,'description',0,975,86,1006,1448889046,1,1026),(4781,156,1,1,0,'description',0,1027,87,1026,1448889046,1,975),(4782,156,1,1,0,'description',0,1028,88,975,1448889046,1,1027),(4783,156,1,1,0,'description',0,1029,89,1027,1448889046,1,1028),(4784,156,1,1,0,'description',0,1030,90,1028,1448889046,1,1029),(4785,156,1,1,0,'description',0,996,91,1029,1448889046,1,1030),(4786,156,1,1,0,'description',0,971,92,1030,1448889046,1,996),(4787,156,1,1,0,'description',0,972,93,996,1448889046,1,971),(4788,156,1,1,0,'description',0,1016,94,971,1448889046,1,972),(4789,156,1,1,0,'description',0,971,95,972,1448889046,1,1016),(4790,156,1,1,0,'description',0,1031,96,1016,1448889046,1,971),(4791,156,1,1,0,'description',0,1032,97,971,1448889046,1,1031),(4792,156,1,1,0,'description',0,1033,98,1031,1448889046,1,1032),(4793,156,1,1,0,'description',0,996,99,1032,1448889046,1,1033),(4794,156,1,1,0,'description',0,971,100,1033,1448889046,1,996),(4795,156,1,1,0,'description',0,972,101,996,1448889046,1,971),(4796,156,1,1,0,'description',0,971,102,971,1448889046,1,972),(4797,156,1,1,0,'description',0,972,103,972,1448889046,1,971),(4798,156,1,1,0,'description',0,1034,104,971,1448889046,1,972),(4799,156,1,1,0,'description',0,1035,105,972,1448889046,1,1034),(4800,156,1,1,0,'description',0,1036,106,1034,1448889046,1,1035),(4801,156,1,1,0,'description',0,1037,107,1035,1448889046,1,1036),(4802,156,1,1,0,'description',0,1038,108,1036,1448889046,1,1037),(4803,156,1,1,0,'description',0,971,109,1037,1448889046,1,1038),(4804,156,1,1,0,'description',0,972,110,1038,1448889046,1,971),(4805,156,1,1,0,'description',0,1016,111,971,1448889046,1,972),(4806,156,1,1,0,'description',0,971,112,972,1448889046,1,1016),(4807,156,1,1,0,'description',0,1019,113,1016,1448889046,1,971),(4808,156,1,1,0,'description',0,972,114,971,1448889046,1,1019),(4809,156,1,1,0,'description',0,1039,115,1019,1448889046,1,972),(4810,156,1,1,0,'description',0,970,116,972,1448889046,1,1039),(4811,156,1,1,0,'description',0,975,117,1039,1448889046,1,970),(4812,156,1,1,0,'description',0,1040,118,970,1448889046,1,975),(4813,156,1,1,0,'description',0,1041,119,975,1448889046,1,1040),(4814,156,1,1,0,'description',0,975,120,1040,1448889046,1,1041),(4815,156,1,1,0,'description',0,1017,121,1041,1448889046,1,975),(4816,156,1,1,0,'description',0,1042,122,975,1448889046,1,1017),(4817,156,1,1,0,'description',0,1043,123,1017,1448889046,1,1042),(4818,156,1,1,0,'description',0,1044,124,1042,1448889046,1,1043),(4819,156,1,1,0,'description',0,970,125,1043,1448889046,1,1044),(4820,156,1,1,0,'description',0,975,126,1044,1448889046,1,970),(4821,156,1,1,0,'description',0,1045,127,970,1448889046,1,975),(4822,156,1,1,0,'description',0,1046,128,975,1448889046,1,1045),(4823,156,1,1,0,'description',0,970,129,1045,1448889046,1,1046),(4824,156,1,1,0,'description',0,975,130,1046,1448889046,1,970),(4825,156,1,1,0,'description',0,1017,131,970,1448889046,1,975),(4826,156,1,1,0,'description',0,1047,132,975,1448889046,1,1017),(4827,156,1,1,0,'description',0,1048,133,1017,1448889046,1,1047),(4828,156,1,1,0,'description',0,1049,134,1047,1448889046,1,1048),(4829,156,1,1,0,'description',0,1050,135,1048,1448889046,1,1049),(4830,156,1,1,0,'description',0,975,136,1049,1448889046,1,1050),(4831,156,1,1,0,'description',0,1017,137,1050,1448889046,1,975),(4832,156,1,1,0,'description',0,1051,138,975,1448889046,1,1017),(4833,156,1,1,0,'description',0,970,139,1017,1448889046,1,1051),(4834,156,1,1,0,'description',0,1052,140,1051,1448889046,1,970),(4835,156,1,1,0,'description',0,1053,141,970,1448889046,1,1052),(4836,156,1,1,0,'description',0,1054,142,1052,1448889046,1,1053),(4837,156,1,1,0,'description',0,1016,143,1053,1448889046,1,1054),(4838,156,1,1,0,'description',0,1055,144,1054,1448889046,1,1016),(4839,156,1,1,0,'description',0,1041,145,1016,1448889046,1,1055),(4840,156,1,1,0,'description',0,975,146,1055,1448889046,1,1041),(4841,156,1,1,0,'description',0,1056,147,1041,1448889046,1,975),(4842,156,1,1,0,'description',0,1047,148,975,1448889046,1,1056),(4843,156,1,1,0,'description',0,975,149,1056,1448889046,1,1047),(4844,156,1,1,0,'description',0,971,150,1047,1448889046,1,975),(4845,156,1,1,0,'description',0,1017,151,975,1448889046,1,971),(4846,156,1,1,0,'description',0,1057,152,971,1448889046,1,1017),(4847,156,1,1,0,'description',0,1058,153,1017,1448889046,1,1057),(4848,156,1,1,0,'description',0,1059,154,1057,1448889046,1,1058),(4849,156,1,1,0,'description',0,0,155,1058,1448889046,1,1059),(4850,7,3,4,0,'description',0,1061,0,0,1033917596,2,1060),(4851,7,3,4,0,'description',0,1062,1,1060,1033917596,2,1061),(4852,6,3,4,0,'name',0,0,2,1061,1033917596,2,1062),(4853,8,4,10,0,'first_name',0,1029,0,0,1033920665,2,1063),(4854,9,4,10,0,'last_name',0,0,1,1063,1033920665,2,1029),(4855,6,3,11,0,'name',0,1065,0,0,1033920746,2,1064),(4856,6,3,11,0,'name',0,0,1,1064,1033920746,2,1065),(4857,6,3,12,0,'name',0,1062,0,0,1033920775,2,1066),(4858,6,3,12,0,'name',0,0,1,1066,1033920775,2,1062),(4859,6,3,13,0,'name',0,0,0,0,1033920794,2,1067),(4860,8,4,14,0,'first_name',0,1029,0,0,1033920830,2,1066),(4861,9,4,14,0,'last_name',0,0,1,1066,1033920830,2,1029),(4862,4,1,41,0,'name',0,0,0,0,1060695457,3,1068),(4863,6,3,42,0,'name',0,1062,0,0,1072180330,2,1063),(4864,6,3,42,0,'name',0,1029,1,1063,1072180330,2,1062),(4865,7,3,42,0,'description',0,1061,2,1062,1072180330,2,1029),(4866,7,3,42,0,'description',0,996,3,1029,1072180330,2,1061),(4867,7,3,42,0,'description',0,975,4,1061,1072180330,2,996),(4868,7,3,42,0,'description',0,1063,5,996,1072180330,2,975),(4869,7,3,42,0,'description',0,1029,6,975,1072180330,2,1063),(4870,7,3,42,0,'description',0,0,7,1063,1072180330,2,1029),(4871,4,1,49,0,'name',0,0,0,0,1080220197,3,1069),(4872,4,1,50,0,'name',0,0,0,0,1080220220,3,1070),(4873,4,1,51,0,'name',0,0,0,0,1080220233,3,1071),(4874,181,13,52,0,'title',0,981,0,0,1575542498,1,1072),(4875,181,13,52,0,'title',0,1073,1,1072,1575542498,1,981),(4876,181,13,52,0,'title',0,1074,2,981,1575542498,1,1073),(4877,181,13,52,0,'title',0,1075,3,1073,1575542498,1,1074),(4878,182,13,52,0,'location',0,1076,4,1074,1575542498,1,1075),(4879,182,13,52,0,'location',0,1077,5,1075,1575542498,1,1076),(4880,182,13,52,0,'location',0,1078,6,1076,1575542498,1,1077),(4881,182,13,52,0,'location',0,1079,7,1077,1575542498,1,1078),(4882,182,13,52,0,'location',0,1080,8,1078,1575542498,1,1079),(4883,182,13,52,0,'location',0,1081,9,1079,1575542498,1,1080),(4884,182,13,52,0,'location',0,1082,10,1080,1575542498,1,1081),(4885,182,13,52,0,'location',0,1083,11,1081,1575542498,1,1082),(4886,183,13,52,0,'telephone',0,1084,12,1082,1575542498,1,1083),(4887,183,13,52,0,'telephone',0,1085,13,1083,1575542498,1,1084),(4888,183,13,52,0,'telephone',0,0,14,1084,1575542498,1,1085),(4889,181,13,53,0,'title',0,981,0,0,1575542498,1,1072),(4890,181,13,53,0,'title',0,1073,1,1072,1575542498,1,981),(4891,181,13,53,0,'title',0,1086,2,981,1575542498,1,1073),(4892,181,13,53,0,'title',0,1087,3,1073,1575542498,1,1086),(4893,181,13,53,0,'title',0,1088,4,1086,1575542498,1,1087),(4894,182,13,53,0,'location',0,1089,5,1087,1575542498,1,1088),(4895,182,13,53,0,'location',0,1090,6,1088,1575542498,1,1089),(4896,182,13,53,0,'location',0,1091,7,1089,1575542498,1,1090),(4897,182,13,53,0,'location',0,1092,8,1090,1575542498,1,1091),(4898,182,13,53,0,'location',0,1093,9,1091,1575542498,1,1092),(4899,182,13,53,0,'location',0,1083,10,1092,1575542498,1,1093),(4900,183,13,53,0,'telephone',0,1094,11,1093,1575542498,1,1083),(4901,183,13,53,0,'telephone',0,1095,12,1083,1575542498,1,1094),(4902,183,13,53,0,'telephone',0,0,13,1094,1575542498,1,1095),(4903,181,13,54,0,'title',0,981,0,0,1575542498,1,1072),(4904,181,13,54,0,'title',0,1073,1,1072,1575542498,1,981),(4905,181,13,54,0,'title',0,1096,2,981,1575542498,1,1073),(4906,181,13,54,0,'title',0,1097,3,1073,1575542498,1,1096),(4907,182,13,54,0,'location',0,1098,4,1096,1575542498,1,1097),(4908,182,13,54,0,'location',0,1099,5,1097,1575542498,1,1098),(4909,182,13,54,0,'location',0,1100,6,1098,1575542498,1,1099),(4910,182,13,54,0,'location',0,1101,7,1099,1575542498,1,1100),(4911,182,13,54,0,'location',0,1102,8,1100,1575542498,1,1101),(4912,182,13,54,0,'location',0,1103,9,1101,1575542498,1,1102),(4913,183,13,54,0,'telephone',0,1104,10,1102,1575542498,1,1103),(4914,183,13,54,0,'telephone',0,1105,11,1103,1575542498,1,1104),(4915,183,13,54,0,'telephone',0,0,12,1104,1575542498,1,1105),(4916,181,13,55,0,'title',0,981,0,0,1575542498,1,1072),(4917,181,13,55,0,'title',0,1073,1,1072,1575542498,1,981),(4918,181,13,55,0,'title',0,1106,2,981,1575542498,1,1073),(4919,181,13,55,0,'title',0,1107,3,1073,1575542498,1,1106),(4920,181,13,55,0,'title',0,1108,4,1106,1575542498,1,1107),(4921,182,13,55,0,'location',0,1109,5,1107,1575542498,1,1108),(4922,182,13,55,0,'location',0,1099,6,1108,1575542498,1,1109),(4923,182,13,55,0,'location',0,1110,7,1109,1575542498,1,1099),(4924,182,13,55,0,'location',0,1111,8,1099,1575542498,1,1110),(4925,182,13,55,0,'location',0,1112,9,1110,1575542498,1,1111),(4926,182,13,55,0,'location',0,1103,10,1111,1575542498,1,1112),(4927,183,13,55,0,'telephone',0,1113,11,1112,1575542498,1,1103),(4928,183,13,55,0,'telephone',0,1114,12,1103,1575542498,1,1113),(4929,183,13,55,0,'telephone',0,0,13,1113,1575542498,1,1114),(4930,181,13,56,0,'title',0,981,0,0,1575542498,1,1072),(4931,181,13,56,0,'title',0,1073,1,1072,1575542498,1,981),(4932,181,13,56,0,'title',0,1115,2,981,1575542498,1,1073),(4933,181,13,56,0,'title',0,1116,3,1073,1575542498,1,1115),(4934,181,13,56,0,'title',0,1117,4,1115,1575542498,1,1116),(4935,182,13,56,0,'location',0,1118,5,1116,1575542498,1,1117),(4936,182,13,56,0,'location',0,1099,6,1117,1575542498,1,1118),(4937,182,13,56,0,'location',0,1119,7,1118,1575542498,1,1099),(4938,182,13,56,0,'location',0,1120,8,1099,1575542498,1,1119),(4939,182,13,56,0,'location',0,1121,9,1119,1575542498,1,1120),(4940,182,13,56,0,'location',0,1083,10,1120,1575542498,1,1121),(4941,183,13,56,0,'telephone',0,1122,11,1121,1575542498,1,1083),(4942,183,13,56,0,'telephone',0,1123,12,1083,1575542498,1,1122),(4943,183,13,56,0,'telephone',0,0,13,1122,1575542498,1,1123),(4944,181,13,57,0,'title',0,981,0,0,1575542498,1,1072),(4945,181,13,57,0,'title',0,1073,1,1072,1575542498,1,981),(4946,181,13,57,0,'title',0,1124,2,981,1575542498,1,1073),(4947,181,13,57,0,'title',0,1125,3,1073,1575542498,1,1124),(4948,181,13,57,0,'title',0,1126,4,1124,1575542498,1,1125),(4949,182,13,57,0,'location',0,1127,5,1125,1575542498,1,1126),(4950,182,13,57,0,'location',0,1128,6,1126,1575542498,1,1127),(4951,182,13,57,0,'location',0,1129,7,1127,1575542498,1,1128),(4952,182,13,57,0,'location',0,1130,8,1128,1575542498,1,1129),(4953,182,13,57,0,'location',0,1131,9,1129,1575542498,1,1130),(4954,182,13,57,0,'location',0,1132,10,1130,1575542498,1,1131),(4955,182,13,57,0,'location',0,1133,11,1131,1575542498,1,1132),(4956,183,13,57,0,'telephone',0,1134,12,1132,1575542498,1,1133),(4957,183,13,57,0,'telephone',0,1135,13,1133,1575542498,1,1134),(4958,183,13,57,0,'telephone',0,0,14,1134,1575542498,1,1135),(4959,181,13,58,0,'title',0,981,0,0,1575542498,1,1072),(4960,181,13,58,0,'title',0,1073,1,1072,1575542498,1,981),(4961,181,13,58,0,'title',0,1136,2,981,1575542498,1,1073),(4962,181,13,58,0,'title',0,1137,3,1073,1575542498,1,1136),(4963,181,13,58,0,'title',0,1138,4,1136,1575542498,1,1137),(4964,182,13,58,0,'location',0,1139,5,1137,1575542498,1,1138),(4965,182,13,58,0,'location',0,1140,6,1138,1575542498,1,1139),(4966,182,13,58,0,'location',0,1141,7,1139,1575542498,1,1140),(4967,182,13,58,0,'location',0,1142,8,1140,1575542498,1,1141),(4968,182,13,58,0,'location',0,1143,9,1141,1575542498,1,1142),(4969,182,13,58,0,'location',0,1144,10,1142,1575542498,1,1143),(4970,182,13,58,0,'location',0,1145,11,1143,1575542498,1,1144),(4971,182,13,58,0,'location',0,1083,12,1144,1575542498,1,1145),(4972,183,13,58,0,'telephone',0,1146,13,1145,1575542498,1,1083),(4973,183,13,58,0,'telephone',0,1147,14,1083,1575542498,1,1146),(4974,183,13,58,0,'telephone',0,0,15,1146,1575542498,1,1147),(4975,181,13,59,0,'title',0,981,0,0,1575542498,1,1072),(4976,181,13,59,0,'title',0,1073,1,1072,1575542498,1,981),(4977,181,13,59,0,'title',0,1148,2,981,1575542498,1,1073),(4978,181,13,59,0,'title',0,1149,3,1073,1575542498,1,1148),(4979,181,13,59,0,'title',0,1150,4,1148,1575542498,1,1149),(4980,182,13,59,0,'location',0,1151,5,1149,1575542498,1,1150),(4981,182,13,59,0,'location',0,1090,6,1150,1575542498,1,1151),(4982,182,13,59,0,'location',0,1152,7,1151,1575542498,1,1090),(4983,182,13,59,0,'location',0,1153,8,1090,1575542498,1,1152),(4984,182,13,59,0,'location',0,1154,9,1152,1575542498,1,1153),(4985,182,13,59,0,'location',0,1133,10,1153,1575542498,1,1154),(4986,183,13,59,0,'telephone',0,1155,11,1154,1575542498,1,1133),(4987,183,13,59,0,'telephone',0,1156,12,1133,1575542498,1,1155),(4988,183,13,59,0,'telephone',0,0,13,1155,1575542498,1,1156),(4989,181,13,60,0,'title',0,981,0,0,1575542498,1,1072),(4990,181,13,60,0,'title',0,1073,1,1072,1575542498,1,981),(4991,181,13,60,0,'title',0,1148,2,981,1575542498,1,1073),(4992,181,13,60,0,'title',0,1157,3,1073,1575542498,1,1148),(4993,181,13,60,0,'title',0,975,4,1148,1575542498,1,1157),(4994,181,13,60,0,'title',0,1158,5,1157,1575542498,1,975),(4995,181,13,60,0,'title',0,1159,6,975,1575542498,1,1158),(4996,182,13,60,0,'location',0,1160,7,1158,1575542498,1,1159),(4997,182,13,60,0,'location',0,1161,8,1159,1575542498,1,1160),(4998,182,13,60,0,'location',0,1162,9,1160,1575542498,1,1161),(4999,182,13,60,0,'location',0,1163,10,1161,1575542498,1,1162),(5000,182,13,60,0,'location',0,1164,11,1162,1575542498,1,1163),(5001,182,13,60,0,'location',0,1165,12,1163,1575542498,1,1164),(5002,182,13,60,0,'location',0,1133,13,1164,1575542498,1,1165),(5003,183,13,60,0,'telephone',0,1166,14,1165,1575542498,1,1133),(5004,183,13,60,0,'telephone',0,1167,15,1133,1575542498,1,1166),(5005,183,13,60,0,'telephone',0,0,16,1166,1575542498,1,1167),(5006,181,13,61,0,'title',0,981,0,0,1575542498,1,1072),(5007,181,13,61,0,'title',0,1073,1,1072,1575542498,1,981),(5008,181,13,61,0,'title',0,1168,2,981,1575542498,1,1073),(5009,181,13,61,0,'title',0,1169,3,1073,1575542498,1,1168),(5010,182,13,61,0,'location',0,1170,4,1168,1575542498,1,1169),(5011,182,13,61,0,'location',0,1090,5,1169,1575542498,1,1170),(5012,182,13,61,0,'location',0,1171,6,1170,1575542498,1,1090),(5013,182,13,61,0,'location',0,1172,7,1090,1575542498,1,1171),(5014,182,13,61,0,'location',0,1173,8,1171,1575542498,1,1172),(5015,182,13,61,0,'location',0,1133,9,1172,1575542498,1,1173),(5016,183,13,61,0,'telephone',0,1174,10,1173,1575542498,1,1133),(5017,183,13,61,0,'telephone',0,1175,11,1133,1575542498,1,1174),(5018,183,13,61,0,'telephone',0,0,12,1174,1575542498,1,1175),(5019,181,13,62,0,'title',0,981,0,0,1575542498,1,1072),(5020,181,13,62,0,'title',0,1073,1,1072,1575542498,1,981),(5021,181,13,62,0,'title',0,1176,2,981,1575542498,1,1073),(5022,181,13,62,0,'title',0,1177,3,1073,1575542498,1,1176),(5023,181,13,62,0,'title',0,1178,4,1176,1575542498,1,1177),(5024,182,13,62,0,'location',0,1179,5,1177,1575542498,1,1178),(5025,182,13,62,0,'location',0,1180,6,1178,1575542498,1,1179),(5026,182,13,62,0,'location',0,1181,7,1179,1575542498,1,1180),(5027,182,13,62,0,'location',0,1182,8,1180,1575542498,1,1181),(5028,182,13,62,0,'location',0,1183,9,1181,1575542498,1,1182),(5029,182,13,62,0,'location',0,1103,10,1182,1575542498,1,1183),(5030,183,13,62,0,'telephone',0,1184,11,1183,1575542498,1,1103),(5031,183,13,62,0,'telephone',0,1185,12,1103,1575542498,1,1184),(5032,183,13,62,0,'telephone',0,0,13,1184,1575542498,1,1185);
/*!40000 ALTER TABLE `ezsearch_object_word_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezsearch_word`
--

DROP TABLE IF EXISTS `ezsearch_word`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezsearch_word` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_count` int(11) NOT NULL DEFAULT 0,
  `word` varchar(150) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ezsearch_word_word_i` (`word`),
  KEY `ezsearch_word_obj_count` (`object_count`)
) ENGINE=InnoDB AUTO_INCREMENT=1186 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezsearch_word`
--

LOCK TABLES `ezsearch_word` WRITE;
/*!40000 ALTER TABLE `ezsearch_word` DISABLE KEYS */;
INSERT INTO `ezsearch_word` VALUES (969,1,'welcome'),(970,1,'to'),(971,1,'ez'),(972,1,'platform'),(973,1,'this'),(974,1,'is'),(975,3,'the'),(976,1,'clean'),(977,1,'install'),(978,1,'coming'),(979,1,'with'),(980,1,'it'),(981,12,'s'),(982,1,'a'),(983,1,'barebone'),(984,1,'setup'),(985,1,'of'),(986,1,'an'),(987,1,'excellent'),(988,1,'foundation'),(989,1,'build'),(990,1,'upon'),(991,1,'if'),(992,1,'you'),(993,1,'want'),(994,1,'from'),(995,1,'scratch'),(996,2,'for'),(997,1,'more'),(998,1,'ready'),(999,1,'go'),(1000,1,'base'),(1001,1,'designs'),(1002,1,'or'),(1003,1,'demo'),(1004,1,'sites'),(1005,1,'please'),(1006,1,'check'),(1007,1,'documentation'),(1008,1,'congratulations'),(1009,1,'just'),(1010,1,'installed'),(1011,1,'new'),(1012,1,'generation'),(1013,1,'content'),(1014,1,'management'),(1015,1,'systems'),(1016,1,'and'),(1017,1,'community'),(1018,1,'replacing'),(1019,1,'publish'),(1020,1,'our'),(1021,1,'previous'),(1022,1,'software'),(1023,1,'need'),(1024,1,'some'),(1025,1,'guidance'),(1026,1,'out'),(1027,1,'following'),(1028,1,'resources'),(1029,4,'user'),(1030,1,'manual'),(1031,1,'studio'),(1032,1,'technical'),(1033,1,'doc'),(1034,1,'developer'),(1035,1,'tutorial'),(1036,1,'comparison'),(1037,1,'guide'),(1038,1,'between'),(1039,1,'contribute'),(1040,1,'project'),(1041,1,'join'),(1042,1,'github'),(1043,1,'repositories'),(1044,1,'open'),(1045,1,'public'),(1046,1,'register'),(1047,1,'on'),(1048,1,'discuss'),(1049,1,'ezplatform'),(1050,1,'com'),(1051,1,'site'),(1052,1,'access'),(1053,1,'forums'),(1054,1,'tutorials'),(1055,1,'blogs'),(1056,1,'conversation'),(1057,1,'slack'),(1058,1,'good'),(1059,1,'luck'),(1060,1,'main'),(1061,2,'group'),(1062,3,'users'),(1063,2,'anonymous'),(1064,1,'guest'),(1065,1,'accounts'),(1066,2,'administrator'),(1067,1,'editors'),(1068,1,'media'),(1069,1,'images'),(1070,1,'files'),(1071,1,'multimedia'),(1072,11,'adam'),(1073,11,'apple'),(1074,1,'bowthorpe'),(1075,1,'53'),(1076,1,'roker'),(1077,1,'terrace'),(1078,1,'langton'),(1079,1,'long'),(1080,1,'blandford'),(1081,1,'dt11'),(1082,1,'8bu'),(1083,4,'070'),(1084,1,'8132'),(1085,1,'5179'),(1086,1,'crown'),(1087,1,'point'),(1088,1,'45'),(1089,1,'nith'),(1090,3,'street'),(1091,1,'glasshouses'),(1092,1,'hg3'),(1093,1,'3xd'),(1094,1,'3442'),(1095,1,'7551'),(1096,1,'eaton'),(1097,1,'71'),(1098,1,'holgate'),(1099,3,'rd'),(1100,1,'radway'),(1101,1,'cv35'),(1102,1,'6ba'),(1103,3,'077'),(1104,1,'8461'),(1105,1,'5493'),(1106,1,'friars'),(1107,1,'quay'),(1108,1,'94'),(1109,1,'asfordby'),(1110,1,'airntully'),(1111,1,'ph1'),(1112,1,'6wj'),(1113,1,'6992'),(1114,1,'0043'),(1115,1,'golden'),(1116,1,'triangle'),(1117,1,'84'),(1118,1,'jesmond'),(1119,1,'kildary'),(1120,1,'iv18'),(1121,1,'1bd'),(1122,1,'7000'),(1123,1,'4401'),(1124,1,'heartsease'),(1125,1,'estate'),(1126,1,'61'),(1127,1,'helland'),(1128,1,'bridge'),(1129,1,'upper'),(1130,1,'arley'),(1131,1,'dy12'),(1132,1,'1rs'),(1133,4,'079'),(1134,1,'3389'),(1135,1,'5053'),(1136,1,'mousehold'),(1137,1,'heath'),(1138,1,'75'),(1139,1,'stone'),(1140,1,'cellar'),(1141,1,'road'),(1142,1,'kingswood'),(1143,1,'common'),(1144,1,'hr5'),(1145,1,'6ep'),(1146,1,'2896'),(1147,1,'5939'),(1148,2,'norwich'),(1149,1,'lanes'),(1150,1,'68'),(1151,1,'northgate'),(1152,1,'bicknacre'),(1153,1,'cm3'),(1154,1,'1qu'),(1155,1,'5590'),(1156,1,'9599'),(1157,1,'over'),(1158,1,'water'),(1159,1,'117'),(1160,1,'park'),(1161,1,'end'),(1162,1,'st'),(1163,1,'brodsworth'),(1164,1,'dn5'),(1165,1,'3wy'),(1166,1,'7176'),(1167,1,'8235'),(1168,1,'riverside'),(1169,1,'83'),(1170,1,'thames'),(1171,1,'bolberry'),(1172,1,'tq7'),(1173,1,'4zq'),(1174,1,'2238'),(1175,1,'0825'),(1176,1,'thorpe'),(1177,1,'hamlet'),(1178,1,'50'),(1179,1,'wood'),(1180,1,'lane'),(1181,1,'monachty'),(1182,1,'sy23'),(1183,1,'2zw'),(1184,1,'7895'),(1185,1,'5460');
/*!40000 ALTER TABLE `ezsearch_word` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezsection`
--

DROP TABLE IF EXISTS `ezsection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezsection` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `navigation_part_identifier` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT 'ezcontentnavigationpart',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezsection`
--

LOCK TABLES `ezsection` WRITE;
/*!40000 ALTER TABLE `ezsection` DISABLE KEYS */;
INSERT INTO `ezsection` VALUES (1,'standard','','Standard','ezcontentnavigationpart'),(2,'users','','Users','ezusernavigationpart'),(3,'media','','Media','ezmedianavigationpart');
/*!40000 ALTER TABLE `ezsection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezsite_data`
--

DROP TABLE IF EXISTS `ezsite_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezsite_data` (
  `name` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezsite_data`
--

LOCK TABLES `ezsite_data` WRITE;
/*!40000 ALTER TABLE `ezsite_data` DISABLE KEYS */;
INSERT INTO `ezsite_data` VALUES ('ezpublish-release','1'),('ezpublish-version','6.4.0');
/*!40000 ALTER TABLE `ezsite_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezurl`
--

DROP TABLE IF EXISTS `ezurl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezurl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created` int(11) NOT NULL DEFAULT 0,
  `is_valid` int(11) NOT NULL DEFAULT 1,
  `last_checked` int(11) NOT NULL DEFAULT 0,
  `modified` int(11) NOT NULL DEFAULT 0,
  `original_url_md5` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `url` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ezurl_url` (`url`(191))
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezurl`
--

LOCK TABLES `ezurl` WRITE;
/*!40000 ALTER TABLE `ezurl` DISABLE KEYS */;
INSERT INTO `ezurl` VALUES (23,1448832197,1,0,1448832197,'f76e41d421b2a72232264943026a6ee5','https://doc.ez.no/display/USER/'),(24,1448832277,1,0,1505717756,'a00ab36edb35bb641cc027eb27410934','https://doc.ezplatform.com/en/latest/'),(25,1448832412,1,0,1505717756,'03c4188f5fdcb679192e25a7dad09c2d','https://doc.ezplatform.com/en/latest/tutorials/platform_beginner/building_a_bicycle_route_tracker_in_ez_platform/'),(26,1448832436,1,0,1505717756,'5af7e9599b5583ccd0103a400ddacfdd','https://doc.ez.no/display/MAIN/Transitioning+from+eZ+Publish+to+eZ+Platform%3A+Feature+Comparison'),(27,1448832661,1,0,1448832661,'f9bf96304c434139d0ff5773b6eee157','https://github.com/ezsystems'),(28,1448832661,1,0,1510739262,'265d537bfba0e5ed4e85fbcd7f30ea84','https://discuss.ezplatform.com'),(29,1448832661,1,0,1448832661,'7441963094866aa9d1cbb8a59cca541c','http://ez-community-on-slack.herokuapp.com/');
/*!40000 ALTER TABLE `ezurl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezurl_object_link`
--

DROP TABLE IF EXISTS `ezurl_object_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezurl_object_link` (
  `contentobject_attribute_id` int(11) NOT NULL DEFAULT 0,
  `contentobject_attribute_version` int(11) NOT NULL DEFAULT 0,
  `url_id` int(11) NOT NULL DEFAULT 0,
  KEY `ezurl_ol_coa_id` (`contentobject_attribute_id`),
  KEY `ezurl_ol_url_id` (`url_id`),
  KEY `ezurl_ol_coa_version` (`contentobject_attribute_version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezurl_object_link`
--

LOCK TABLES `ezurl_object_link` WRITE;
/*!40000 ALTER TABLE `ezurl_object_link` DISABLE KEYS */;
INSERT INTO `ezurl_object_link` VALUES (104,9,23),(104,9,24),(104,9,25),(104,9,26),(104,9,27),(104,9,28),(104,9,29),(104,9,23),(104,9,24),(104,9,25),(104,9,26),(104,9,27),(104,9,28),(104,9,29);
/*!40000 ALTER TABLE `ezurl_object_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezurlalias`
--

DROP TABLE IF EXISTS `ezurlalias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezurlalias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `destination_url` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `forward_to_id` int(11) NOT NULL DEFAULT 0,
  `is_imported` int(11) NOT NULL DEFAULT 0,
  `is_internal` int(11) NOT NULL DEFAULT 1,
  `is_wildcard` int(11) NOT NULL DEFAULT 0,
  `source_md5` varchar(32) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `source_url` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ezurlalias_source_md5` (`source_md5`),
  KEY `ezurlalias_wcard_fwd` (`is_wildcard`,`forward_to_id`),
  KEY `ezurlalias_forward_to_id` (`forward_to_id`),
  KEY `ezurlalias_imp_wcard_fwd` (`is_imported`,`is_wildcard`,`forward_to_id`),
  KEY `ezurlalias_source_url` (`source_url`(191)),
  KEY `ezurlalias_desturl` (`destination_url`(191))
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezurlalias`
--

LOCK TABLES `ezurlalias` WRITE;
/*!40000 ALTER TABLE `ezurlalias` DISABLE KEYS */;
INSERT INTO `ezurlalias` VALUES (12,'content/view/full/2',0,1,1,0,'d41d8cd98f00b204e9800998ecf8427e',''),(13,'content/view/full/5',0,1,1,0,'9bc65c2abec141778ffaa729489f3e87','users'),(15,'content/view/full/12',0,1,1,0,'02d4e844e3a660857a3f81585995ffe1','users/guest_accounts'),(16,'content/view/full/13',0,1,1,0,'1b1d79c16700fd6003ea7be233e754ba','users/administrator_users'),(17,'content/view/full/14',0,1,1,0,'0bb9dd665c96bbc1cf36b79180786dea','users/editors'),(18,'content/view/full/15',0,1,1,0,'f1305ac5f327a19b451d82719e0c3f5d','users/administrator_users/administrator_user'),(20,'content/view/full/43',0,1,1,0,'62933a2951ef01f4eafd9bdf4d3cd2f0','media'),(21,'content/view/full/44',0,1,1,0,'3ae1aac958e1c82013689d917d34967a','users/anonymous_users'),(22,'content/view/full/45',0,1,1,0,'aad93975f09371695ba08292fd9698db','users/anonymous_users/anonymous_user'),(28,'content/view/full/51',0,1,1,0,'38985339d4a5aadfc41ab292b4527046','media/images'),(29,'content/view/full/52',0,1,1,0,'ad5a8c6f6aac3b1b9df267fe22e7aef6','media/files'),(30,'content/view/full/53',0,1,1,0,'562a0ac498571c6c3529173184a2657c','media/multimedia');
/*!40000 ALTER TABLE `ezurlalias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezurlalias_ml`
--

DROP TABLE IF EXISTS `ezurlalias_ml`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezurlalias_ml` (
  `parent` int(11) NOT NULL DEFAULT 0,
  `text_md5` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `action` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `action_type` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `alias_redirects` int(11) NOT NULL DEFAULT 1,
  `id` int(11) NOT NULL DEFAULT 0,
  `is_alias` int(11) NOT NULL DEFAULT 0,
  `is_original` int(11) NOT NULL DEFAULT 0,
  `lang_mask` bigint(20) NOT NULL DEFAULT 0,
  `link` int(11) NOT NULL DEFAULT 0,
  `text` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`parent`,`text_md5`),
  KEY `ezurlalias_ml_actt_org_al` (`action_type`,`is_original`,`is_alias`),
  KEY `ezurlalias_ml_text_lang` (`text`(32),`lang_mask`,`parent`),
  KEY `ezurlalias_ml_par_act_id_lnk` (`action`(32),`id`,`link`,`parent`),
  KEY `ezurlalias_ml_par_lnk_txt` (`parent`,`text`(32),`link`),
  KEY `ezurlalias_ml_act_org` (`action`(32),`is_original`),
  KEY `ezurlalias_ml_text` (`text`(32),`id`,`link`),
  KEY `ezurlalias_ml_id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezurlalias_ml`
--

LOCK TABLES `ezurlalias_ml` WRITE;
/*!40000 ALTER TABLE `ezurlalias_ml` DISABLE KEYS */;
INSERT INTO `ezurlalias_ml` VALUES (0,'14c7ccf8626857bf2b22380fc16a0d3f','eznode:54','eznode',0,38,0,1,3,38,'adam-s-apple-bowthorpe'),(0,'367ed3e4f96b178654a1ca16bc0ebbdf','eznode:59','eznode',0,43,0,1,3,43,'adam-s-apple-heartsease-estate'),(0,'50e2736330de124f6edea9b008556fe6','nop:','nop',1,17,0,0,1,17,'media2'),(0,'62933a2951ef01f4eafd9bdf4d3cd2f0','eznode:43','eznode',1,9,0,1,3,9,'Media'),(0,'750c8e6eb1b4bbcd55ab3e0ec2e64466','eznode:63','eznode',0,47,0,1,3,47,'adam-s-apple-riverside'),(0,'77cbfa8adb2f54b39c1f22cbbccf6f20','eznode:55','eznode',0,39,0,1,3,39,'adam-s-apple-crown-point'),(0,'86425c35a33507d479f71ade53a669aa','nop:','nop',1,3,0,0,1,3,'users2'),(0,'8b5ecfb73d7719272f57e275c980d3bc','eznode:58','eznode',0,42,0,1,3,42,'adam-s-apple-golden-triangle'),(0,'9bc65c2abec141778ffaa729489f3e87','eznode:5','eznode',1,2,0,1,3,2,'Users'),(0,'a8cf6314fb7e2d2ba684072a78054d21','eznode:60','eznode',0,44,0,1,3,44,'adam-s-apple-mousehold-heath'),(0,'a90c5024d97745f47ea9a5ab51eb6aab','eznode:61','eznode',0,45,0,1,3,45,'adam-s-apple-norwich-lanes'),(0,'bdaf6e7880f9bbb24acfe7b7ec45fd7c','eznode:62','eznode',0,46,0,1,3,46,'adam-s-apple-norwich-over-the-water'),(0,'c43782a01889a0f3f5292566fbcb2208','eznode:57','eznode',0,41,0,1,3,41,'adam-s-apple-friars-quay'),(0,'d41d8cd98f00b204e9800998ecf8427e','eznode:2','eznode',1,1,0,1,3,1,''),(0,'d85d0e58ff58df23b4d8c5fa0a0a1e96','eznode:56','eznode',0,40,0,1,3,40,'adam-s-apple-eaton'),(0,'db079383d7e9620ef1012fc2e0227351','eznode:64','eznode',0,48,0,1,3,48,'adam-s-apple-thorpe-hamlet'),(2,'a147e136bfa717592f2bd70bd4b53b17','eznode:14','eznode',1,6,0,1,3,6,'Editors'),(2,'c2803c3fa1b0b5423237b4e018cae755','eznode:44','eznode',1,10,0,1,3,10,'Anonymous-Users'),(2,'e57843d836e3af8ab611fde9e2139b3a','eznode:12','eznode',1,4,0,1,3,4,'Guest-accounts'),(2,'f89fad7f8a3abc8c09e1deb46a420007','eznode:13','eznode',1,5,0,1,3,5,'Administrator-users'),(3,'505e93077a6dde9034ad97a14ab022b1','nop:','nop',1,11,0,0,1,11,'anonymous_users2'),(3,'70bb992820e73638731aa8de79b3329e','eznode:12','eznode',1,26,0,0,1,4,'guest_accounts'),(3,'a147e136bfa717592f2bd70bd4b53b17','eznode:14','eznode',1,29,0,0,1,6,'editors'),(3,'a7da338c20bf65f9f789c87296379c2a','nop:','nop',1,7,0,0,1,7,'administrator_users2'),(3,'aeb8609aa933b0899aa012c71139c58c','eznode:13','eznode',1,27,0,0,1,5,'administrator_users'),(3,'e9e5ad0c05ee1a43715572e5cc545926','eznode:44','eznode',1,30,0,0,1,10,'anonymous_users'),(5,'5a9d7b0ec93173ef4fedee023209cb61','eznode:15','eznode',1,8,0,1,3,8,'Administrator-User'),(7,'a3cca2de936df1e2f805710399989971','eznode:15','eznode',1,28,0,0,0,8,'administrator_user'),(9,'2e5bc8831f7ae6a29530e7f1bbf2de9c','eznode:53','eznode',1,20,0,1,3,20,'Multimedia'),(9,'45b963397aa40d4a0063e0d85e4fe7a1','eznode:52','eznode',1,19,0,1,3,19,'Files'),(9,'59b514174bffe4ae402b3d63aad79fe0','eznode:51','eznode',1,18,0,1,3,18,'Images'),(10,'ccb62ebca03a31272430bc414bd5cd5b','eznode:45','eznode',1,12,0,1,3,12,'Anonymous-User'),(11,'c593ec85293ecb0e02d50d4c5c6c20eb','eznode:45','eznode',1,31,0,0,1,12,'anonymous_user'),(17,'2e5bc8831f7ae6a29530e7f1bbf2de9c','eznode:53','eznode',1,34,0,0,1,20,'multimedia'),(17,'45b963397aa40d4a0063e0d85e4fe7a1','eznode:52','eznode',1,33,0,0,1,19,'files'),(17,'59b514174bffe4ae402b3d63aad79fe0','eznode:51','eznode',1,32,0,0,1,18,'images');
/*!40000 ALTER TABLE `ezurlalias_ml` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezurlalias_ml_incr`
--

DROP TABLE IF EXISTS `ezurlalias_ml_incr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezurlalias_ml_incr` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezurlalias_ml_incr`
--

LOCK TABLES `ezurlalias_ml_incr` WRITE;
/*!40000 ALTER TABLE `ezurlalias_ml_incr` DISABLE KEYS */;
INSERT INTO `ezurlalias_ml_incr` VALUES (1),(2),(3),(4),(5),(6),(7),(8),(9),(10),(11),(12),(13),(14),(15),(16),(17),(18),(19),(20),(21),(22),(24),(25),(26),(27),(28),(29),(30),(31),(32),(33),(34),(35),(36),(37),(38),(39),(40),(41),(42),(43),(44),(45),(46),(47),(48);
/*!40000 ALTER TABLE `ezurlalias_ml_incr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezurlwildcard`
--

DROP TABLE IF EXISTS `ezurlwildcard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezurlwildcard` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `destination_url` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `source_url` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `type` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezurlwildcard`
--

LOCK TABLES `ezurlwildcard` WRITE;
/*!40000 ALTER TABLE `ezurlwildcard` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezurlwildcard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezuser`
--

DROP TABLE IF EXISTS `ezuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezuser` (
  `contentobject_id` int(11) NOT NULL DEFAULT 0,
  `email` varchar(150) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `login` varchar(150) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `password_hash` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `password_hash_type` int(11) NOT NULL DEFAULT 1,
  `password_updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`contentobject_id`),
  UNIQUE KEY `ezuser_login` (`login`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezuser`
--

LOCK TABLES `ezuser` WRITE;
/*!40000 ALTER TABLE `ezuser` DISABLE KEYS */;
INSERT INTO `ezuser` VALUES (10,'nospam@ez.no','anonymous','$2y$10$35gOSQs6JK4u4whyERaeUuVeQBi2TUBIZIfP7HEj7sfz.MxvTuOeC',7,NULL),(14,'nospam@ez.no','admin','$2y$10$FDn9NPwzhq85cLLxfD5Wu.L3SL3Z/LNCvhkltJUV0wcJj7ciJg2oy',7,NULL);
/*!40000 ALTER TABLE `ezuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezuser_accountkey`
--

DROP TABLE IF EXISTS `ezuser_accountkey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezuser_accountkey` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hash_key` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `time` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `hash_key` (`hash_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezuser_accountkey`
--

LOCK TABLES `ezuser_accountkey` WRITE;
/*!40000 ALTER TABLE `ezuser_accountkey` DISABLE KEYS */;
/*!40000 ALTER TABLE `ezuser_accountkey` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezuser_role`
--

DROP TABLE IF EXISTS `ezuser_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezuser_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contentobject_id` int(11) DEFAULT NULL,
  `limit_identifier` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `limit_value` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `role_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ezuser_role_role_id` (`role_id`),
  KEY `ezuser_role_contentobject_id` (`contentobject_id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezuser_role`
--

LOCK TABLES `ezuser_role` WRITE;
/*!40000 ALTER TABLE `ezuser_role` DISABLE KEYS */;
INSERT INTO `ezuser_role` VALUES (28,11,'','',1),(31,42,'','',1),(32,13,'Subtree','/1/2/',3),(33,13,'Subtree','/1/43/',3),(34,12,'','',2),(35,13,'','',4);
/*!40000 ALTER TABLE `ezuser_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezuser_setting`
--

DROP TABLE IF EXISTS `ezuser_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezuser_setting` (
  `user_id` int(11) NOT NULL DEFAULT 0,
  `is_enabled` int(11) NOT NULL DEFAULT 0,
  `max_login` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezuser_setting`
--

LOCK TABLES `ezuser_setting` WRITE;
/*!40000 ALTER TABLE `ezuser_setting` DISABLE KEYS */;
INSERT INTO `ezuser_setting` VALUES (10,1,1000),(14,1,10);
/*!40000 ALTER TABLE `ezuser_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kaliop_migrations`
--

DROP TABLE IF EXISTS `kaliop_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kaliop_migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(4000) COLLATE utf8_unicode_ci NOT NULL,
  `md5` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `execution_date` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `execution_error` varchar(4000) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`migration`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kaliop_migrations`
--

LOCK TABLES `kaliop_migrations` WRITE;
/*!40000 ALTER TABLE `kaliop_migrations` DISABLE KEYS */;
INSERT INTO `kaliop_migrations` VALUES ('20100101000200_MigrateV1ToV2.php','/Users/janit/Sites/ezplatform-storelocator/vendor/kaliop/ezmigrationbundle/MigrationVersions/20100101000200_MigrateV1ToV2.php','2789e5e74e2d02886e67ba415ba0873e',1575542497,2,''),('20191015011337_stores.yml','/Users/janit/Sites/ezplatform-storelocator/src/AppBundle/MigrationVersions/20191015011337_stores.yml','a9b7fc481769c5654d9eb04ff16bb2c6',1575542497,2,'');
/*!40000 ALTER TABLE `kaliop_migrations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-05 12:42:28
