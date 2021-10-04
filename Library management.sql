-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: library
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `book_details`
--

DROP TABLE IF EXISTS `book_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book_details` (
  `book_id` int NOT NULL,
  `book_name` varchar(45) DEFAULT NULL,
  `author` varchar(45) DEFAULT NULL,
  `language` int DEFAULT NULL,
  `book_category` int DEFAULT NULL,
  `publisher` int DEFAULT NULL,
  `bookcount` int DEFAULT NULL,
  PRIMARY KEY (`book_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_details`
--

LOCK TABLES `book_details` WRITE;
/*!40000 ALTER TABLE `book_details` DISABLE KEYS */;
INSERT INTO `book_details` VALUES (1,'alchemist','paulo choelo',1,1,2,20),(2,'the guide','R K Narayan',2,2,3,50),(3,'famous five','Enid blyton',1,3,1,15);
/*!40000 ALTER TABLE `book_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categ_details`
--

DROP TABLE IF EXISTS `categ_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categ_details` (
  `bookcategory_no` int NOT NULL,
  `book_category` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`bookcategory_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categ_details`
--

LOCK TABLES `categ_details` WRITE;
/*!40000 ALTER TABLE `categ_details` DISABLE KEYS */;
INSERT INTO `categ_details` VALUES (1,'fiction'),(2,'epic'),(3,'mystery');
/*!40000 ALTER TABLE `categ_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `issue_details`
--

DROP TABLE IF EXISTS `issue_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `issue_details` (
  `book_id` int NOT NULL,
  `mem_id` int DEFAULT NULL,
  `dateof_issue` varchar(45) DEFAULT NULL,
  `dateof_return` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`book_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issue_details`
--

LOCK TABLES `issue_details` WRITE;
/*!40000 ALTER TABLE `issue_details` DISABLE KEYS */;
INSERT INTO `issue_details` VALUES (1,102,'2021-10-04','2021-10-05');
/*!40000 ALTER TABLE `issue_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lang_details`
--

DROP TABLE IF EXISTS `lang_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lang_details` (
  `language_no` int NOT NULL,
  `language` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`language_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lang_details`
--

LOCK TABLES `lang_details` WRITE;
/*!40000 ALTER TABLE `lang_details` DISABLE KEYS */;
INSERT INTO `lang_details` VALUES (1,'english'),(2,'malayalam');
/*!40000 ALTER TABLE `lang_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member_details`
--

DROP TABLE IF EXISTS `member_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member_details` (
  `member_id` int NOT NULL,
  `member_name` varchar(45) DEFAULT NULL,
  `member_no` int DEFAULT NULL,
  PRIMARY KEY (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_details`
--

LOCK TABLES `member_details` WRITE;
/*!40000 ALTER TABLE `member_details` DISABLE KEYS */;
INSERT INTO `member_details` VALUES (101,'amritha',123455),(102,'lakshmi',345678),(103,'anju',786546);
/*!40000 ALTER TABLE `member_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publisher_details`
--

DROP TABLE IF EXISTS `publisher_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `publisher_details` (
  `publisher_no` int NOT NULL,
  `publisher` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`publisher_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publisher_details`
--

LOCK TABLES `publisher_details` WRITE;
/*!40000 ALTER TABLE `publisher_details` DISABLE KEYS */;
INSERT INTO `publisher_details` VALUES (1,'dc books'),(2,'xxx books'),(3,'book media');
/*!40000 ALTER TABLE `publisher_details` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-04 20:47:32
