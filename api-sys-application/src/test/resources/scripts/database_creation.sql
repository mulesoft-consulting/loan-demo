CREATE DATABASE  IF NOT EXISTS `spring_leaf` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `spring_leaf`;
GRANT ALL ON spring_leaf.* TO 'spring_leaf'@'localhost' IDENTIFIED BY 'Mule1379';
GRANT ALL ON spring_leaf.* TO 'spring_leaf'@'%' IDENTIFIED BY 'Mule1379';
-- MySQL dump 10.13  Distrib 5.7.9, for osx10.9 (x86_64)
--
-- Host: localhost    Database: spring_leaf
-- ------------------------------------------------------
-- Server version	5.7.10

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
-- Table structure for table `addresses`
--

DROP TABLE IF EXISTS `addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `addresses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mailing_only` tinyint(1) DEFAULT NULL,
  `address1` varchar(50) DEFAULT NULL,
  `address2` varchar(50) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `state` varchar(2) DEFAULT NULL,
  `zip` decimal(10,0) DEFAULT NULL,
  `moved_date` date DEFAULT NULL,
  `loan_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addresses`
--

LOCK TABLES `addresses` WRITE;
/*!40000 ALTER TABLE `addresses` DISABLE KEYS */;
INSERT INTO `addresses` VALUES (1,0,'123 Main Street','','Chicago','IL',12345,'2002-05-01',21),(2,1,'PO Box 1234','','Chicago','IL',12345,NULL,21),(3,0,'123 Main Street','','Chicago','IL',12345,'2002-05-01',22),(4,1,'PO Box 1234','','Chicago','IL',12345,NULL,22),(5,0,'123 Main Street','','Chicago','IL',12345,'2002-05-01',23),(6,1,'PO Box 1234','','Chicago','IL',12345,NULL,23),(7,0,'123 Main Street','','Chicago','IL',12345,'2002-05-01',24),(8,1,'PO Box 1234','','Chicago','IL',12345,NULL,24);
/*!40000 ALTER TABLE `addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_primary` tinyint(1) DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `loan_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (1,1,'333-11-33333','mobile',1),(2,1,'312-111-2233','mobile',18),(3,0,'312-222-2233','home',18),(4,1,'312-111-2233','mobile',19),(5,0,'312-222-2233','home',19),(6,1,'312-111-2233','mobile',20),(7,0,'312-222-2233','home',20),(8,1,'312-111-2233','mobile',21),(9,0,'312-222-2233','home',21),(10,1,'312-111-2233','mobile',22),(11,0,'312-222-2233','home',22),(12,1,'312-111-2233','mobile',23),(13,0,'312-222-2233','home',23),(14,1,'312-111-2233','mobile',24),(15,0,'312-222-2233','home',24);
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employer`
--

DROP TABLE IF EXISTS `employer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `hire_date` date DEFAULT NULL,
  `financial_information_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employer`
--

LOCK TABLES `employer` WRITE;
/*!40000 ALTER TABLE `employer` DISABLE KEYS */;
INSERT INTO `employer` VALUES (1,'ACME CORP.',NULL,2),(2,'ACME CORP.',NULL,3),(3,'ACME CORP.',NULL,4),(4,'ACME CORP.',NULL,5),(5,'ACME CORP.',NULL,6),(6,'ACME CORP.',NULL,7),(7,'ACME CORP.',NULL,8),(8,'ACME CORP.',NULL,9),(9,'ACME CORP.',NULL,10),(10,'ACME CORP.',NULL,11),(11,'ACME CORP.',NULL,12),(12,'ACME CORP.',NULL,13),(13,'ACME CORP.',NULL,14),(14,'ACME CORP.',NULL,15),(15,'ACME CORP.',NULL,16);
/*!40000 ALTER TABLE `employer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `financial_information`
--

DROP TABLE IF EXISTS `financial_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `financial_information` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `retired` tinyint(1) DEFAULT NULL,
  `self_employed` tinyint(1) DEFAULT NULL,
  `monthly_net_income` double DEFAULT NULL,
  `savings_checkings` varchar(15) DEFAULT NULL,
  `loan_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `financial_information`
--

LOCK TABLES `financial_information` WRITE;
/*!40000 ALTER TABLE `financial_information` DISABLE KEYS */;
INSERT INTO `financial_information` VALUES (1,0,0,4000,'both',9),(2,0,0,4000,'both',10),(3,0,0,4000,'both',11),(4,0,0,4000,'both',12),(5,0,0,4000,'both',13),(6,0,0,4000,'both',14),(7,0,0,4000,'both',15),(8,0,0,4000,'both',16),(9,0,0,4000,'both',17),(10,0,0,4000,'both',18),(11,0,0,4000,'both',19),(12,0,0,4000,'both',20),(13,0,0,4000,'both',21),(14,0,0,4000,'both',22),(15,0,0,4000,'both',23),(16,0,0,4000,'both',24);
/*!40000 ALTER TABLE `financial_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loans`
--

DROP TABLE IF EXISTS `loans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `loan_amount` varchar(45) DEFAULT NULL,
  `loan_purpose` varchar(255) DEFAULT NULL,
  `offer_number` varchar(45) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `middle_initial` varchar(1) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `loan_status` varchar(45) DEFAULT NULL,
  `ssn` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loans`
--

LOCK TABLES `loans` WRITE;
/*!40000 ALTER TABLE `loans` DISABLE KEYS */;
INSERT INTO `loans` VALUES (1,'5000','Bill Consolidation',NULL,'Mike',NULL,'Smith','1970-04-20','amir.kader@mulesoft.com','pre-approved','123-44-5555'),(2,'5000','Bill Consolidation',NULL,'Mike',NULL,'Smith','1970-04-20','amir.kader@mulesoft.com','pre-approved','123-44-5555'),(9,'5000','Bill Consolidation',NULL,'Mike',NULL,'Smith','1970-04-20','amir.kader@mulesoft.com','pre-approved','123-44-5555'),(10,'5000','Bill Consolidation',NULL,'Mike',NULL,'Smith','1970-04-20','amir.kader@mulesoft.com','pre-approved','123-44-5555'),(11,'5000','Bill Consolidation',NULL,'Mike',NULL,'Smith','1970-04-20','amir.kader@mulesoft.com','pre-approved','123-44-5555'),(12,'5000','Bill Consolidation',NULL,'Mike',NULL,'Smith','1970-04-20','amir.kader@mulesoft.com','pre-approved','123-44-5555'),(13,'5000','Bill Consolidation',NULL,'Mike',NULL,'Smith','1970-04-20','amir.kader@mulesoft.com','pre-approved','123-44-5555'),(21,'5000','Bill Consolidation',NULL,'Mike',NULL,'Smith','1970-04-20','amir.kader@mulesoft.com','pre-approved','123-44-5555'),(22,'5000','Bill Consolidation',NULL,'Mike',NULL,'Smith','1970-04-20','amir.kader@mulesoft.com','pre-approved','123-44-5555'),(23,'5000','Bill Consolidation',NULL,'Mike',NULL,'Smith','1970-04-20','amir.kader@mulesoft.com','pre-approved','123-44-5555'),(24,'5000','Bill Consolidation',NULL,'Mike',NULL,'Smith','1970-04-20','amir.kader@mulesoft.com','pre-approved','123-44-5555');
/*!40000 ALTER TABLE `loans` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-03-11 16:33:41
