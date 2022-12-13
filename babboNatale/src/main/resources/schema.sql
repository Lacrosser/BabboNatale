

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



