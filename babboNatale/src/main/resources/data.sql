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
-- Dumping data for table `babbonatale`
--

LOCK TABLES `babbonatale` WRITE;
/*!40000 ALTER TABLE `babbonatale` DISABLE KEYS */;
INSERT INTO `babbonatale` VALUES (1,'paperino','bici','pippo','CasaldelMarmo'),(2,'AMMINISTRATORE','Calzini ','MASTER','CasaSua'),(3,'Delle balle','Cavolate','Babbo','A CasaMaronni');
/*!40000 ALTER TABLE `babbonatale` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `bambino`
--

LOCK TABLES `bambino` WRITE;
/*!40000 ALTER TABLE `bambino` DISABLE KEYS */;
INSERT INTO `bambino` VALUES (1,'Gianni','balboa','Morandi'),(2,'Pero','Polo Nord','Paolo'),(3,'Pera','Sulla luna','Valerio'),(4,'Poe','Guantanamo','Ginevra'),(5,'Rizzo','Bronx','Giogio');
/*!40000 ALTER TABLE `bambino` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `dono`
--

LOCK TABLES `dono` WRITE;
/*!40000 ALTER TABLE `dono` DISABLE KEYS */;
INSERT INTO `dono` VALUES (1,100,'elefante tandem spichico da guerra'),(2,20,'Fidget Spinner'),(3,30,'Pokemon Violetto'),(4,0,'Voglia di Vivere'),(5,565,'Righe di Js Scritte');
/*!40000 ALTER TABLE `dono` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `dono_bambino`
--

LOCK TABLES `dono_bambino` WRITE;
/*!40000 ALTER TABLE `dono_bambino` DISABLE KEYS */;
INSERT INTO `dono_bambino` VALUES (1,'12:12:12','morto',1,1),(2,'12:12:12','bho',2,2),(3,'12:12:12','perso',3,3),(4,'12:12:12','consegnato',4,4),(5,'12:12:12','Rubato',5,5);
/*!40000 ALTER TABLE `dono_bambino` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `sacco`
--

LOCK TABLES `sacco` WRITE;
/*!40000 ALTER TABLE `sacco` DISABLE KEYS */;
INSERT INTO `sacco` VALUES (1,'17:02:15','17:02:15',1),(2,'12:12:12','20:00:00',2),(3,'14:02:29','20:00:00',3),(4,'14:02:29','20:00:00',3);
/*!40000 ALTER TABLE `sacco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `sacco_dono`
--

LOCK TABLES `sacco_dono` WRITE;
/*!40000 ALTER TABLE `sacco_dono` DISABLE KEYS */;
INSERT INTO `sacco_dono` VALUES (1,1,1),(2,4,2),(3,2,3),(4,3,2);
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

-- Dump completed on 2022-12-15 14:16:51
