-- MySQL dump 10.13  Distrib 5.7.27, for Win64 (x86_64)
--
-- Host: localhost    Database: residential
-- ------------------------------------------------------
-- Server version	5.7.27-log

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `login_id` varchar(15) NOT NULL,
  `first_name` varchar(15) DEFAULT NULL,
  `last_name` varchar(15) DEFAULT NULL,
  `email_id` varchar(30) DEFAULT NULL,
  `phone_number` varchar(10) DEFAULT NULL,
  `login_st` int(1) DEFAULT '0',
  PRIMARY KEY (`login_id`),
  CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`login_id`) REFERENCES `login` (`login_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES ('admin1','Somesh','Shekhar','someshshekhar746@gamil.com','9878985636',0),('admin2','Abhishek','Bhagwath','abhishekbhagwath890@gamil.com','9670989666',0);
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bills`
--

DROP TABLE IF EXISTS `bills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bills` (
  `flat_number` int(3) DEFAULT NULL,
  `bill_number` int(7) NOT NULL AUTO_INCREMENT,
  `bill_type` varchar(15) DEFAULT NULL,
  `amount` int(6) DEFAULT NULL,
  `billing_date` date DEFAULT NULL,
  `date_of_payment` date DEFAULT NULL,
  `duration` varchar(20) DEFAULT NULL,
  `status` varchar(10) DEFAULT 'NOT PAID',
  PRIMARY KEY (`bill_number`),
  KEY `flat_number` (`flat_number`),
  CONSTRAINT `bills_ibfk_1` FOREIGN KEY (`flat_number`) REFERENCES `user` (`flat_number`)
) ENGINE=InnoDB AUTO_INCREMENT=1558 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bills`
--

LOCK TABLES `bills` WRITE;
/*!40000 ALTER TABLE `bills` DISABLE KEYS */;
INSERT INTO `bills` VALUES (102,1208,'Maintainance',1509,'2019-10-31','2019-10-20','October 2019','paid'),(102,1224,'Water',1290,'2019-10-31','2019-10-22','September 2019','paid'),(102,1297,'Gas',1230,'2019-09-30','2019-10-20','September 2019','paid'),(101,1347,'water',500,'2019-09-30','2019-10-20','October 2019','paid'),(101,1348,'gas',1500,'2019-08-30','2019-10-20','October 2019','paid'),(201,1349,'Maintainance',10000,'2019-10-18',NULL,NULL,'NOT PAID'),(101,1350,'CLUBHOUSE FEE',5000,'2019-10-24','2019-11-05',NULL,'paid'),(102,1351,'GYM FEE',1000,'2019-10-24','2019-11-08',NULL,'paid'),(101,1352,'GYM FEE',1000,'2019-10-24','2019-11-08',NULL,'paid'),(301,1353,'SWIMMING FEE',1000,'2019-10-24',NULL,NULL,'NOT PAID'),(201,1354,'SWIMMING FEE',1000,'2019-10-24',NULL,NULL,'NOT PAID'),(101,1355,'CLUBHOUSE FEE',5000,'2019-11-04','2019-11-08',NULL,'paid'),(101,1357,'GYM FEE',1000,'2019-11-06','2019-11-08',NULL,'paid'),(102,1358,'CLUBHOUSE FEE',5000,'2019-11-07',NULL,NULL,'NOT PAID'),(102,1359,'SWIMMING FEE',1000,'2019-11-07','2019-11-07',NULL,'paid'),(101,1555,'GAS',500,'2019-11-30','2019-11-08','October 2019','paid'),(102,1556,'WATER',200,'2019-11-30','2019-11-08','October 2019','paid'),(101,1557,'ELECTRICITY',2500,'2019-11-30','2019-11-08','October 2019','paid');
/*!40000 ALTER TABLE `bills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clubhouse`
--

DROP TABLE IF EXISTS `clubhouse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clubhouse` (
  `order_id` int(7) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(15) DEFAULT NULL,
  `last_name` varchar(15) DEFAULT NULL,
  `flat_number` int(3) DEFAULT NULL,
  `number_of_people` int(3) DEFAULT NULL,
  `occassion_name` varchar(15) DEFAULT NULL,
  `amount` int(5) DEFAULT '5000',
  `occassion_date` date NOT NULL,
  PRIMARY KEY (`order_id`),
  UNIQUE KEY `occassion_date` (`occassion_date`),
  UNIQUE KEY `occassion_date_2` (`occassion_date`),
  KEY `flat_number` (`flat_number`),
  CONSTRAINT `clubhouse_ibfk_1` FOREIGN KEY (`flat_number`) REFERENCES `user` (`flat_number`)
) ENGINE=InnoDB AUTO_INCREMENT=2011 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clubhouse`
--

LOCK TABLES `clubhouse` WRITE;
/*!40000 ALTER TABLE `clubhouse` DISABLE KEYS */;
INSERT INTO `clubhouse` VALUES (2000,'suresh','pandey',102,100,'function',5000,'2019-10-23'),(2001,'ramesh','pandey',102,100,'function',5000,'2019-10-24'),(2003,'ganesh','pandey',102,100,'function',5000,'2019-10-12'),(2004,'hari','kumar',103,100,'function',5000,'2019-09-08'),(2008,'Rashi','Khanna',101,100,'function',5000,'2019-10-13'),(2010,'rajesh','kumar',102,300,'birthday',5000,'2019-11-09');
/*!40000 ALTER TABLE `clubhouse` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger clubhouse_trig
after insert
on clubhouse
for each row
begin
insert into bills(flat_number,bill_type,amount,billing_date) values(NEW.flat_number,'CLUBHOUSE FEE',5000,curdate());
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts` (
  `type` varchar(15) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `phone_number` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES ('Police Station','Circle Incharge','9484850934'),('Police Station','Patrol Team','9584623934'),('Doctor','Dr Vaishali Shishir','7584623239'),('Doctor','Dr Suraj Thakur','9586194239'),('Grocery','Supriya Stores','9186134238'),('Bakehouse','Dolpin','9486134678'),('Yoga','Nisha Ranjan','7486143778'),('Milk Vendor','Ganesh','9146783884'),('Newspaper','Suresh Gaitonde','9246783884'),('Car Washers','Bala Narasimha','9246783969'),('AC Technician','Gagan Mohan','9546783967'),('Laundry','Parashuram','7546783967'),('Courier','DTDC Courier','9146783945'),('Super Market','More','9236783945'),('Super Market','Big Bazar','7336783945'),('Cab','Orange Cabs','9336783987'),('Cab','Easy Cabs','9865298348'),('Local Auto','Arun','9465298348'),('Local Auto','Krishna','7465298348'),('Hospital','Olive Hospital','9145298348'),('Hospital','Apollo Hospital','9145298367'),('Electrian','Md.Osama','7845298367'),('Gas Work','Manoj','7845298453'),('School','Delhi Public School','9545298453'),('College','Chaitanya Bharathi','9245298987');
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gym`
--

DROP TABLE IF EXISTS `gym`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gym` (
  `order_id` int(7) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(15) DEFAULT NULL,
  `last_name` varchar(15) DEFAULT NULL,
  `flat_number` int(3) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `amount` int(5) DEFAULT '1000',
  `duration` varchar(20) DEFAULT NULL,
  `batch` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `flat_number` (`flat_number`),
  CONSTRAINT `gym_ibfk_1` FOREIGN KEY (`flat_number`) REFERENCES `user` (`flat_number`)
) ENGINE=InnoDB AUTO_INCREMENT=3003 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gym`
--

LOCK TABLES `gym` WRITE;
/*!40000 ALTER TABLE `gym` DISABLE KEYS */;
INSERT INTO `gym` VALUES (3002,'Mayur','H',101,'2019-11-07','2020-05-05',2500,'SEMIANUALLY','A');
/*!40000 ALTER TABLE `gym` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger gym_trig
after insert
on gym
for each row
begin
insert into bills(flat_number,bill_type,amount,billing_date) values(NEW.flat_number,'GYM FEE',1000,sysdate());
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login` (
  `login_id` varchar(15) NOT NULL,
  `password` varchar(15) DEFAULT NULL,
  `login_type` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`login_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES ('admin1','admin@1','admin'),('admin2','admin@2','admin'),('alok','alok','user'),('hello','hello','user'),('reddy','reddy','user'),('sam1','sam1','user'),('sample','sample','user'),('test','testt','user'),('user001','pass001','user'),('user002','pass@002','user'),('user003','pass@003','user'),('user004','pass@004','user'),('user005','pass@005','user'),('user007','pass@007','user'),('user009','pass@009','user');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `problems`
--

DROP TABLE IF EXISTS `problems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `problems` (
  `flat_number` int(3) DEFAULT NULL,
  `ticket_number` int(7) NOT NULL AUTO_INCREMENT,
  `problem_type` varchar(20) DEFAULT NULL,
  `description` text,
  `solution` text,
  `status` varchar(15) DEFAULT 'NOT SOLVED',
  PRIMARY KEY (`ticket_number`),
  KEY `flat_number` (`flat_number`),
  CONSTRAINT `problems_ibfk_1` FOREIGN KEY (`flat_number`) REFERENCES `user` (`flat_number`)
) ENGINE=InnoDB AUTO_INCREMENT=1008 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `problems`
--

LOCK TABLES `problems` WRITE;
/*!40000 ALTER TABLE `problems` DISABLE KEYS */;
INSERT INTO `problems` VALUES (101,1003,'Maintainance','a\na\na\n\na\na\na\na\n\na\na\na\na\na\na\n\na\na\na\n\na\na\n','qw','SOLVED'),(101,1004,'Maintainance','asfafeafwefg',NULL,'NOT SOLVED'),(101,1005,'Billing','vjbdsvhbrlhvfb','bdfhwbefkjbuiwbfqwerty','SOLVED'),(101,1006,'Billing','sdqwefefhytru',NULL,'NOT SOLVED'),(101,1007,'Billing','aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa','thanks!!!!','SOLVED');
/*!40000 ALTER TABLE `problems` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger after_admin_solves
before update on problems
for each row
begin
if(NEW.solution!= OLD.solution)
then
set NEW.status='SOLVED';
end if;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `swimming`
--

DROP TABLE IF EXISTS `swimming`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `swimming` (
  `order_id` int(7) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(15) DEFAULT NULL,
  `last_name` varchar(15) DEFAULT NULL,
  `flat_number` int(3) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `amount` int(5) DEFAULT '1000',
  `duration` varchar(20) DEFAULT NULL,
  `batch` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `flat_number` (`flat_number`),
  CONSTRAINT `swimming_ibfk_1` FOREIGN KEY (`flat_number`) REFERENCES `user` (`flat_number`)
) ENGINE=InnoDB AUTO_INCREMENT=4004 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `swimming`
--

LOCK TABLES `swimming` WRITE;
/*!40000 ALTER TABLE `swimming` DISABLE KEYS */;
INSERT INTO `swimming` VALUES (4000,'Rahul','Deshpande',301,'2019-11-05',NULL,1000,'30 days','A'),(4001,'Satish','Kumar',201,'2019-11-05',NULL,1000,'30 days','B'),(4002,'Nayan','m',101,'2019-11-07','2020-11-06',4500,'YEARLY','A'),(4003,'rajesh','kumar',102,'2019-11-08','2019-12-08',500,'MONTHLY','C');
/*!40000 ALTER TABLE `swimming` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger swimming_trig
after insert
on swimming
for each row
begin
insert into bills (flat_number,bill_type,amount,billing_date) values(NEW.flat_number,'SWIMMING FEE',1000,sysdate());
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `login_id` varchar(15) NOT NULL DEFAULT '',
  `flat_number` int(3) NOT NULL DEFAULT '0',
  `first_name` varchar(15) DEFAULT NULL,
  `last_name` varchar(15) DEFAULT NULL,
  `email_id` varchar(30) DEFAULT NULL,
  `phone_number` varchar(10) DEFAULT NULL,
  `date_of_moving_in` date DEFAULT NULL,
  `number_of_residents` int(2) DEFAULT NULL,
  `login_st` int(1) DEFAULT '0',
  PRIMARY KEY (`flat_number`),
  KEY `login_id` (`login_id`),
  CONSTRAINT `user_ibfk_1` FOREIGN KEY (`login_id`) REFERENCES `login` (`login_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('user001',101,'Mohit','Sharma','mohitsharma349@yahoo.com','9834672310','2017-04-10',5,0),('user002',102,'Deepak','Kumar','deepakkumar675@gamil.com','9295378076','2014-02-16',4,0),('sam1',103,'Samuel ','Wright','swright@gmail.com','9876543210','2019-10-06',4,0),('test',111,'Mukund','Acharya','mukuacharya30@gmail.com','9887857553','2019-11-06',5,0),('user003',201,'Abhilansh','Gupta','abhilanshgupta290@gamil.com','9295776345','2015-07-02',7,0),('user004',202,'Skanda','Bhatt','skandabhatt699@gamil.com','9295899035','2016-09-26',3,0),('user005',301,'Sumukh','Deshpandey','sumukhdeshpandey540@gamil.com','7896529035','2019-03-01',1,0),('alok',501,'alok','pandey','alok@gmail.com','4566','2019-11-09',1,0),('reddy',510,'venkat','reddy','mvrok@gmail.com','9999999999','2019-11-08',8,0);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visitors`
--

DROP TABLE IF EXISTS `visitors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `visitors` (
  `name` varchar(20) DEFAULT NULL,
  `flat_number` int(3) DEFAULT NULL,
  `vehicle_number` varchar(10) DEFAULT NULL,
  `type` varchar(15) DEFAULT NULL,
  `time_in` datetime DEFAULT NULL,
  `time_out` datetime DEFAULT NULL,
  KEY `flat_number` (`flat_number`),
  CONSTRAINT `visitors_ibfk_1` FOREIGN KEY (`flat_number`) REFERENCES `user` (`flat_number`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visitors`
--

LOCK TABLES `visitors` WRITE;
/*!40000 ALTER TABLE `visitors` DISABLE KEYS */;
INSERT INTO `visitors` VALUES ('Manoj',103,'GA05B0825','Delivery','2019-11-04 22:02:21','2019-11-06 19:28:47'),('reddy',102,NULL,'Employee','2019-11-07 08:13:33','2019-11-07 08:14:38'),('Mukund',102,NULL,'Guest','2019-11-09 15:56:24',NULL),('ram',102,NULL,'Domestic Help','2019-11-09 15:57:44',NULL),('Shaan',101,'GA10t6788','Guest','2019-11-09 15:58:30',NULL),('Rahul',103,'KA12AS1256','Guest','2019-11-09 16:02:25',NULL);
/*!40000 ALTER TABLE `visitors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wallet`
--

DROP TABLE IF EXISTS `wallet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wallet` (
  `login_id` varchar(15) DEFAULT NULL,
  `balance` int(7) DEFAULT NULL,
  KEY `login_id` (`login_id`),
  CONSTRAINT `wallet_ibfk_1` FOREIGN KEY (`login_id`) REFERENCES `user` (`login_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wallet`
--

LOCK TABLES `wallet` WRITE;
/*!40000 ALTER TABLE `wallet` DISABLE KEYS */;
INSERT INTO `wallet` VALUES ('user001',2553),('user002',343);
/*!40000 ALTER TABLE `wallet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'residential'
--
/*!50003 DROP PROCEDURE IF EXISTS `bills_insert` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `bills_insert`(IN flat_number int(3),IN bill_number int(7),IN bill_type varchar(15),IN amount int(6),IN billing_date date,IN date_of_payment date,IN duration varchar(20),IN status varchar(10))
begin
insert into bills values(flat_number,bill_number,bill_type,amount,billing_date,date_of_payment,duration,status);
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `bills_insert1` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `bills_insert1`(IN flatnumber int(3),IN billtype varchar(15),IN amt int(6),IN billingdate date,IN dtn varchar(20))
begin
insert into bills(flat_number,bill_type,amount,billing_date,duration) values(flatnumber,billtype,amt,billingdate,dtn);
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insert_user` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_user`(IN login_id varchar(15),IN flat_number int(3),IN first varchar(15),IN last varchar(15),IN email varchar(30),IN phone varchar(10),IN date date,IN number int(2))
begin
insert into user(login_id,flat_number,first_name,last_name,email_id,phone_number,date_of_moving_in,number_of_residents) values(login_id,flat_number,first,last,email,phone,date,number);
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `login_insert` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `login_insert`(x varchar(15),y varchar(15),z varchar(10))
begin
insert into login values(x,y,z);
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `upd_user_info` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `upd_user_info`(IN flat int(3),IN fname varchar(15),IN lname varchar(15),IN email varchar(30),IN phone varchar(10),IN num int(2))
begin
update user set first_name=fname,last_name=lname,email_id=email,phone_number=phone,number_of_residents=num where flat_number=flat;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-11 20:41:30
