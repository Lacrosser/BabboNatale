-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: progettonatale
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
-- Table structure for table `babbonatale`
--

DROP TABLE IF EXISTS `babbonatale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `babbonatale` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cognome` varchar(255) DEFAULT NULL,
  `mezzo` varchar(255) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `zona` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bambino`
--

DROP TABLE IF EXISTS `bambino`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bambino` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cognome` varchar(255) DEFAULT NULL,
  `indirizzo` varchar(255) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dono`
--

DROP TABLE IF EXISTS `dono`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dono` (
  `id` int NOT NULL AUTO_INCREMENT,
  `disponibilita` int NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dono_bambino`
--

DROP TABLE IF EXISTS `dono_bambino`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dono_bambino` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ora_consegna` time DEFAULT NULL,
  `stato` varchar(255) DEFAULT NULL,
  `dono_id` int NOT NULL,
  `bambino_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKpjjdv10vhroc2tvpl24lp912n` (`dono_id`),
  KEY `FK6fx8srgwy999c89pcxwka5c5` (`bambino_id`),
  CONSTRAINT `FK6fx8srgwy999c89pcxwka5c5` FOREIGN KEY (`bambino_id`) REFERENCES `bambino` (`id`),
  CONSTRAINT `FKpjjdv10vhroc2tvpl24lp912n` FOREIGN KEY (`dono_id`) REFERENCES `dono` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sacco`
--

DROP TABLE IF EXISTS `sacco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sacco` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ora_assegnazione` time DEFAULT NULL,
  `ora_consegna` time DEFAULT NULL,
  `babbo_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK1xah1y7mcufpsnnqxukl6qv8` (`babbo_id`),
  CONSTRAINT `FK1xah1y7mcufpsnnqxukl6qv8` FOREIGN KEY (`babbo_id`) REFERENCES `babbonatale` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sacco_dono`
--

DROP TABLE IF EXISTS `sacco_dono`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sacco_dono` (
  `id` int NOT NULL AUTO_INCREMENT,
  `dono_id` int NOT NULL,
  `sacco_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKj0dkp6mq5q8hrw6v377x89xq6` (`dono_id`),
  KEY `FKowf7o120qrwgxq7q21o7pmk03` (`sacco_id`),
  CONSTRAINT `FKj0dkp6mq5q8hrw6v377x89xq6` FOREIGN KEY (`dono_id`) REFERENCES `dono` (`id`),
  CONSTRAINT `FKowf7o120qrwgxq7q21o7pmk03` FOREIGN KEY (`sacco_id`) REFERENCES `sacco` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-15 14:16:21
