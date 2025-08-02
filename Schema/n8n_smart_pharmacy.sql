-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: smart_pharmacy
-- ------------------------------------------------------
-- Server version	8.0.42

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
-- Table structure for table `billing_summary`
--

DROP TABLE IF EXISTS `billing_summary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `billing_summary` (
  `billing_id` int NOT NULL AUTO_INCREMENT,
  `id` int NOT NULL,
  `medicine_name` varchar(100) NOT NULL,
  `quantity` int NOT NULL,
  `price_per_unit` decimal(10,2) NOT NULL,
  `subtotal` decimal(10,2) NOT NULL,
  `store_name` varchar(100) DEFAULT NULL,
  `store_location` varchar(150) DEFAULT NULL,
  `store_contact` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`billing_id`),
  KEY `history_id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `billing_summary`
--

LOCK TABLES `billing_summary` WRITE;
/*!40000 ALTER TABLE `billing_summary` DISABLE KEYS */;
INSERT INTO `billing_summary` VALUES (32,31,'Paracetamol',4,5.00,20.00,'Apollo Pharmacy','Thane','9999999999'),(33,31,'Zecuf',16,52.00,832.00,'1MG Pharmacy','Powai, Mumbai','9123456787'),(34,36,'Paracetamol',4,5.00,20.00,'Apollo Pharmacy','Thane','9999999999'),(35,36,'Honitus',16,55.00,880.00,'Apollo Pharmacy','Borivali East, Mumbai','9123456784'),(36,37,'Paracetamol',4,5.00,20.00,'Apollo Pharmacy','Thane','9999999999'),(37,37,'Honitus',16,55.00,880.00,'Apollo Pharmacy','Borivali East, Mumbai','9123456784'),(38,38,'Paracetamol',4,5.00,20.00,'Apollo Pharmacy','Thane','9999999999'),(39,38,'Honitus',16,55.00,880.00,'Apollo Pharmacy','Borivali East, Mumbai','9123456784'),(40,38,'Paracetamol',4,5.00,20.00,'Apollo Pharmacy','Thane','9999999999'),(41,38,'Honitus',16,55.00,880.00,'Apollo Pharmacy','Borivali East, Mumbai','9123456784'),(42,38,'Honitus',16,55.00,880.00,'Apollo Pharmacy','Borivali East, Mumbai','9123456784'),(43,40,'Paracetamol',4,5.00,20.00,'Apollo Pharmacy','Thane','9999999999'),(44,40,'Honitus',16,55.00,880.00,'Apollo Pharmacy','Borivali East, Mumbai','9123456784'),(45,40,'Honitus',16,55.00,880.00,'Apollo Pharmacy','Borivali East, Mumbai','9123456784'),(46,41,'Paracetamol',4,5.00,20.00,'Apollo Pharmacy','Thane','9999999999'),(47,41,'Honitus',16,55.00,880.00,'Apollo Pharmacy','Borivali East, Mumbai','9123456784'),(48,41,'Honitus',16,55.00,880.00,'Apollo Pharmacy','Borivali East, Mumbai','9123456784'),(49,41,'Paracetamol',4,5.00,20.00,'Apollo Pharmacy','Thane','9999999999'),(50,41,'Honitus',16,55.00,880.00,'Apollo Pharmacy','Borivali East, Mumbai','9123456784'),(51,41,'Honitus',16,55.00,880.00,'Apollo Pharmacy','Borivali East, Mumbai','9123456784'),(52,41,'Paracetamol',4,5.00,20.00,'Apollo Pharmacy','Thane','9999999999'),(53,41,'Honitus',16,55.00,880.00,'Apollo Pharmacy','Borivali East, Mumbai','9123456784'),(54,41,'Honitus',16,55.00,880.00,'Apollo Pharmacy','Borivali East, Mumbai','9123456784'),(55,41,'Paracetamol',4,5.00,20.00,'Apollo Pharmacy','Thane','9999999999'),(56,41,'Paracetamol',4,5.00,20.00,'Apollo Pharmacy','Thane','9999999999'),(57,41,'Paracetamol',4,5.00,20.00,'Apollo Pharmacy','Thane','9999999999'),(58,42,'Paracetamol',4,5.00,20.00,'Apollo Pharmacy','Thane','9999999999');
/*!40000 ALTER TABLE `billing_summary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_agent`
--

DROP TABLE IF EXISTS `delivery_agent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `delivery_agent` (
  `agent_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `contact` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `area` varchar(100) DEFAULT NULL,
  `pincode` varchar(10) DEFAULT NULL,
  `available` tinyint(1) DEFAULT '1',
  `current_deliveries` int DEFAULT '0',
  `agent_rating` float DEFAULT '0',
  `response_time_avg` float DEFAULT NULL,
  PRIMARY KEY (`agent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_agent`
--

LOCK TABLES `delivery_agent` WRITE;
/*!40000 ALTER TABLE `delivery_agent` DISABLE KEYS */;
INSERT INTO `delivery_agent` VALUES (1,'Ravi Sharma','9876543210','ravi.sharma@example.com','Thane West','400601',1,2,4.5,2.5),(2,'Pooja Mehta','9876512345','pooja.mehta@example.com','Thane West','400601',1,2,3.8,3.2),(3,'Amit Verma','9876509876','amit.verma@example.com','Andheri East','400059',0,3,4.2,4.8),(4,'Sneha Nair','9876598765','sneha.nair@example.com','Thane East','400603',0,8,4.9,6),(5,'Raj Patel','9876587654','raj.patel@example.com','Dadar','400014',1,4,3.5,5.5),(6,'Anjali Singh','9876576543','anjali.singh@example.com','Thane West','400601',1,2,4,2.1),(7,'Vinod Kumar','9876565432','vinod.kumar@example.com','Borivali','400066',1,2,4.3,3.9),(8,'Neha Joshi','9876554321','neha.joshi@example.com','Thane East','400603',0,1,4.1,5.7),(9,'Ravi Sharma','9876543210','ravi.sharma@example.com','Thane West','400601',1,2,3.9,2.6),(10,'Pooja Mehta','9876512345','pooja.mehta@example.com','Thane West','400601',1,1,4.6,1.8),(11,'Amit Verma','9876509876','amit.verma@example.com','Andheri East','400059',0,3,3.7,4.3),(12,'Sneha Nair','9876598765','sneha.nair@example.com','Thane East','400603',1,0,4.8,2.9),(13,'Raj Patel','9876587654','raj.patel@example.com','Dadar','400014',1,4,4,5.2),(14,'Anjali Singh','9876576543','anjali.singh@example.com','Thane West','400601',1,2,3.6,2.3),(15,'Vinod Kumar','9876565432','vinod.kumar@example.com','Borivali','400066',1,2,4.4,3.6),(16,'Neha Joshi','9876554321','neha.joshi@example.com','Thane East','400603',0,1,4.7,4);
/*!40000 ALTER TABLE `delivery_agent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_assignment`
--

DROP TABLE IF EXISTS `delivery_assignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `delivery_assignment` (
  `assignment_id` int NOT NULL AUTO_INCREMENT,
  `id` int NOT NULL,
  `agent_id` int NOT NULL,
  `assigned_on` datetime DEFAULT CURRENT_TIMESTAMP,
  `delivery_status` varchar(50) DEFAULT 'Pending',
  PRIMARY KEY (`assignment_id`),
  KEY `id` (`id`),
  KEY `agent_id` (`agent_id`),
  CONSTRAINT `delivery_assignment_ibfk_3` FOREIGN KEY (`agent_id`) REFERENCES `delivery_agent` (`agent_id`),
  CONSTRAINT `fk_patient` FOREIGN KEY (`id`) REFERENCES `visited_patients` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_assignment`
--

LOCK TABLES `delivery_assignment` WRITE;
/*!40000 ALTER TABLE `delivery_assignment` DISABLE KEYS */;
/*!40000 ALTER TABLE `delivery_assignment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicine_alternatives`
--

DROP TABLE IF EXISTS `medicine_alternatives`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medicine_alternatives` (
  `id` int NOT NULL AUTO_INCREMENT,
  `alternative_name` varchar(100) NOT NULL,
  `price_per_unit` decimal(10,2) NOT NULL,
  `availability` enum('Yes','No') DEFAULT 'No',
  `stock_available` int DEFAULT '0',
  `store_name` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `contact` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `alternative_name` (`alternative_name`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicine_alternatives`
--

LOCK TABLES `medicine_alternatives` WRITE;
/*!40000 ALTER TABLE `medicine_alternatives` DISABLE KEYS */;
INSERT INTO `medicine_alternatives` VALUES (1,'Crocin',4.50,'Yes',50,'Apollo Pharmacy','Andheri East, Mumbai','9123456780'),(2,'Dolo 650',5.50,'Yes',40,'MedPlus','Bandra West, Mumbai','9123456781'),(3,'Calpol',6.00,'No',0,'Wellness Forever','Goregaon West, Mumbai','9123456782'),(4,'Pacimol',4.75,'Yes',35,'1MG Pharmacy','Thane West','9123456783'),(5,'Honitus',55.00,'Yes',9,'Apollo Pharmacy','Borivali East, Mumbai','9123456784'),(6,'Benadryl',58.00,'No',0,'MedPlus','Malad West, Mumbai','9123456785'),(7,'Chericof',60.00,'Yes',20,'Wellness Forever','Kandivali East, Mumbai','9123456786'),(8,'Zecuf',52.00,'Yes',30,'1MG Pharmacy','Powai, Mumbai','9123456787');
/*!40000 ALTER TABLE `medicine_alternatives` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicine_store`
--

DROP TABLE IF EXISTS `medicine_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medicine_store` (
  `id` int NOT NULL AUTO_INCREMENT,
  `medicine_name` varchar(100) DEFAULT NULL,
  `stock_available` int DEFAULT NULL,
  `price_per_unit` decimal(10,2) DEFAULT NULL,
  `store_name` varchar(100) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `contact` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicine_store`
--

LOCK TABLES `medicine_store` WRITE;
/*!40000 ALTER TABLE `medicine_store` DISABLE KEYS */;
INSERT INTO `medicine_store` VALUES (1,'Paracetamol',37,5.00,'Apollo Pharmacy','Thane','9999999999'),(2,'Paracetamol',6,5.50,'Wellness Forever','Thane','7777777777'),(3,'Cough Syrup',15,60.00,'MedPlus','Thane','8888888888');
/*!40000 ALTER TABLE `medicine_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicine_to_alternatives`
--

DROP TABLE IF EXISTS `medicine_to_alternatives`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medicine_to_alternatives` (
  `id` int NOT NULL AUTO_INCREMENT,
  `original_medicine_name` varchar(100) NOT NULL,
  `alternative_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `alternative_id` (`alternative_id`),
  CONSTRAINT `medicine_to_alternatives_ibfk_1` FOREIGN KEY (`alternative_id`) REFERENCES `medicine_alternatives` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicine_to_alternatives`
--

LOCK TABLES `medicine_to_alternatives` WRITE;
/*!40000 ALTER TABLE `medicine_to_alternatives` DISABLE KEYS */;
INSERT INTO `medicine_to_alternatives` VALUES (1,'Paracetamol',1),(2,'Paracetamol',2),(3,'Paracetamol',3),(4,'Paracetamol',4),(5,'Cough Syrup',5),(6,'Cough Syrup',6),(7,'Cough Syrup',7),(8,'Cough Syrup',8);
/*!40000 ALTER TABLE `medicine_to_alternatives` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient_history`
--

DROP TABLE IF EXISTS `patient_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient_history` (
  `history_id` int NOT NULL AUTO_INCREMENT,
  `patient_id` int NOT NULL,
  `diagnosis` varchar(255) DEFAULT NULL,
  `doctor_name` varchar(100) DEFAULT NULL,
  `doctor_email` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`history_id`),
  KEY `patient_history_ibfk_1` (`patient_id`),
  CONSTRAINT `patient_history_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `visited_patients` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient_history`
--

LOCK TABLES `patient_history` WRITE;
/*!40000 ALTER TABLE `patient_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `patient_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prescriptions`
--

DROP TABLE IF EXISTS `prescriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prescriptions` (
  `prescription_id` int NOT NULL AUTO_INCREMENT,
  `history_id` int NOT NULL,
  `medicine_name` varchar(100) NOT NULL,
  `quantity` int NOT NULL,
  `price_per_unit` decimal(10,2) NOT NULL,
  `subtotal` decimal(10,2) NOT NULL,
  `is_available` enum('yes','no') DEFAULT 'yes',
  `alternative_name` varchar(100) DEFAULT NULL,
  `alternative_price_per_unit` decimal(10,2) DEFAULT NULL,
  `alternative_subtotal` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`prescription_id`),
  KEY `history_id` (`history_id`),
  CONSTRAINT `prescriptions_ibfk_1` FOREIGN KEY (`history_id`) REFERENCES `patient_history` (`history_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prescriptions`
--

LOCK TABLES `prescriptions` WRITE;
/*!40000 ALTER TABLE `prescriptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `prescriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visited_patients`
--

DROP TABLE IF EXISTS `visited_patients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `visited_patients` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `diagnosis` varchar(255) DEFAULT NULL,
  `doctor_name` varchar(255) DEFAULT NULL,
  `doctor_email` varchar(255) DEFAULT NULL,
  `pincode` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visited_patients`
--

LOCK TABLES `visited_patients` WRITE;
/*!40000 ALTER TABLE `visited_patients` DISABLE KEYS */;
INSERT INTO `visited_patients` VALUES (1,'Aarav Mehta','9876543210','aarav@example.com','2025-08-02 20:37:28','fever and cold','Dr. Sharma','dr.sharma@clinic.com','400601'),(2,'Neha Kapoor','9123456789','neha@example.com','2025-08-02 20:37:28','headache and dizziness','Dr. Nair','dr.nair@clinic.com','400602'),(3,'Rohan Verma','9988776655','rohan@example.com','2025-08-02 20:37:28','cough and sore throat','Dr. Patel','dr.patel@clinic.com','400603'),(4,'Isha Singh','9876501234','isha@example.com','2025-08-02 20:37:28','body pain and fatigue','Dr. Joshi','dr.joshi@clinic.com','400604');
/*!40000 ALTER TABLE `visited_patients` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-08-03  2:16:40
