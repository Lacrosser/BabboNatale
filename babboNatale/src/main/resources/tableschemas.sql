-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: progettonatale
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `babbo_natale`
--

DROP TABLE IF EXISTS `babbo_natale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `babbo_natale` (
  `babbo_natale_id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) DEFAULT NULL,
  `cognome` varchar(100) DEFAULT NULL,
  `mezzo` enum('auto','piedi','bici') DEFAULT NULL,
  `zona` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`babbo_natale_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `babbo_natale`
--

LOCK TABLES `babbo_natale` WRITE;
/*!40000 ALTER TABLE `babbo_natale` DISABLE KEYS */;
/*!40000 ALTER TABLE `babbo_natale` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bambino`
--

DROP TABLE IF EXISTS `bambino`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bambino` (
  `bambino_id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) DEFAULT NULL,
  `cognome` varchar(45) DEFAULT NULL,
  `indirizzo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`bambino_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bambino`
--

LOCK TABLES `bambino` WRITE;
/*!40000 ALTER TABLE `bambino` DISABLE KEYS */;
/*!40000 ALTER TABLE `bambino` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dono`
--

DROP TABLE IF EXISTS `dono`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dono` (
  `dono_id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) DEFAULT NULL,
  `disponibilita` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`dono_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dono`
--

LOCK TABLES `dono` WRITE;
/*!40000 ALTER TABLE `dono` DISABLE KEYS */;
/*!40000 ALTER TABLE `dono` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dono_bambino`
--

DROP TABLE IF EXISTS `dono_bambino`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dono_bambino` (
  `dono_bambino_id` int NOT NULL,
  `bambino_id` int NOT NULL,
  `dono_id` int NOT NULL,
  `ora_consegna` datetime DEFAULT NULL,
  `stato_consegna` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`dono_bambino_id`),
  KEY `bambino_id` (`bambino_id`),
  KEY `dono_id` (`dono_id`),
  CONSTRAINT `dono_bambino_ibfk_1` FOREIGN KEY (`bambino_id`) REFERENCES `bambino` (`bambino_id`),
  CONSTRAINT `dono_bambino_ibfk_2` FOREIGN KEY (`dono_id`) REFERENCES `dono` (`dono_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dono_bambino`
--

LOCK TABLES `dono_bambino` WRITE;
/*!40000 ALTER TABLE `dono_bambino` DISABLE KEYS */;
/*!40000 ALTER TABLE `dono_bambino` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sacco`
--

DROP TABLE IF EXISTS `sacco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sacco` (
  `sacco_id` int NOT NULL AUTO_INCREMENT,
  `babbo_id` int NOT NULL,
  `ora_assegnazione` time DEFAULT NULL,
  `ora_consegna` time DEFAULT NULL,
  PRIMARY KEY (`sacco_id`),
  KEY `babbo_id` (`babbo_id`),
  CONSTRAINT `sacco_ibfk_1` FOREIGN KEY (`babbo_id`) REFERENCES `babbo_natale` (`babbo_natale_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sacco`
--

LOCK TABLES `sacco` WRITE;
/*!40000 ALTER TABLE `sacco` DISABLE KEYS */;
/*!40000 ALTER TABLE `sacco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sacco_dono`
--

DROP TABLE IF EXISTS `sacco_dono`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sacco_dono` (
  `sacco_dono_id` int NOT NULL,
  `sacco_id` int NOT NULL,
  `dono_id` int NOT NULL,
  PRIMARY KEY (`sacco_dono_id`),
  KEY `dono_id` (`dono_id`),
  KEY `sacco_id` (`sacco_id`),
  CONSTRAINT `sacco_dono_ibfk_1` FOREIGN KEY (`dono_id`) REFERENCES `dono` (`dono_id`),
  CONSTRAINT `sacco_dono_ibfk_2` FOREIGN KEY (`sacco_id`) REFERENCES `sacco` (`sacco_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sacco_dono`
--

LOCK TABLES `sacco_dono` WRITE;
/*!40000 ALTER TABLE `sacco_dono` DISABLE KEYS */;
/*!40000 ALTER TABLE `sacco_dono` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-13 17:08:31
