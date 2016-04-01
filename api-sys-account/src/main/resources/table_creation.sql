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
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `loan_decision_date` date DEFAULT NULL,
  `application_origination_date` date DEFAULT NULL,
  `application_decision_status` varchar(45) DEFAULT NULL,
  `loan_account_status` varchar(45) DEFAULT NULL,
  `loan_account_substatus` varchar(45) DEFAULT NULL,
  `note_number` decimal(5,0) DEFAULT NULL,
  `category` varchar(45) DEFAULT NULL,
  `purpose_code` varchar(45) DEFAULT NULL,
  `requested_amount` double DEFAULT NULL,
  `note_amount` double DEFAULT NULL,
  `credit_limit` double DEFAULT NULL,
  `credit_limit_expiration` date DEFAULT NULL,
  `credit_limit_group_code` varchar(45) DEFAULT NULL,
  `credit_reporting_code` varchar(45) DEFAULT NULL,
  `is_revolving_line_of_credit` tinyint(1) DEFAULT NULL,
  `minimum_advance_amount` double DEFAULT NULL,
  `maximum_advance_amount` double DEFAULT NULL,
  `origination_date` date DEFAULT NULL,
  `disbursal_date` date DEFAULT NULL,
  `creation_date` date DEFAULT NULL,
  `term` varchar(45) DEFAULT NULL,
  `combined_credit_score` double DEFAULT NULL,
  `loan_interest_rate_detail` double DEFAULT NULL,
  `payment_option` varchar(45) DEFAULT NULL,
  `daily_periodic_rate` double DEFAULT NULL,
  `total_number_of_payments` int(5) DEFAULT NULL,
  `pre_paid_finance_charges` double DEFAULT NULL,
  `prepaid_interest` double DEFAULT NULL,
  `interest_paid_thru_date` varchar(45) DEFAULT NULL,
  `number_of_grace_days` int(4) DEFAULT NULL,
  `balloon_amount` double DEFAULT NULL,
  `balloon_due_date` date DEFAULT NULL,
  `balloon_due_date_term_value` varchar(45) DEFAULT NULL,
  `pre_payment_penalty_basis_amount` double DEFAULT NULL,
  `pre_payment_penalty_percentage` double DEFAULT NULL,
  `pre_payment_penalty_expiration_date` date DEFAULT NULL,
  `statement_code` varchar(45) DEFAULT NULL,
  `statement_group` varchar(45) DEFAULT NULL,
  `statement_date` date DEFAULT NULL,
  `debt_income_ratio` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES (1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,'2016-01-20','2016-01-05','pre-approved','new','new',1111,'home','123',200000,210000,250000,'2035-01-20','123','123',0,0,0,'2016-01-05','2016-01-10','2016-01-20','15',785,0.036,'monthly',0,180,0,0,'1900-01-01',0,0,'1900-01-01','',0,0,'1900-01-01','','','1900-01-01',0.43);
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-03-15 13:05:53
