-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: 195.251.249.131    Database: ismgroup26
-- ------------------------------------------------------
-- Server version	5.6.21-log

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
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reviews` (
    `reviewID` INT(100) NOT NULL,
    `comment` VARCHAR(100) NOT NULL,
    `rating` INT(100),
    `datetime` VARCHAR(100) NOT NULL,
    `customerID` INT(100) NOT NULL,
    `barbershopID` INT(100) NOT NULL,
    PRIMARY KEY (`reviewID`),
    KEY `FK_reviews_1` (`customerID`),
    CONSTRAINT `FK_reviews_1` FOREIGN KEY (`customerID`)
        REFERENCES `customer` (`customerID`),
    KEY `FK_reviews_2` (`barbershopID`),
    CONSTRAINT `FK_reviews_2` FOREIGN KEY (`barbershopID`)
        REFERENCES `barbershop` (`barbershopID`)
)  ENGINE=INNODB DEFAULT CHARSET=UTF8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;/*
INSERT INTO `reviews` VALUES (1,'Good trimming, medium haircut',3,'10-1-2020',1,1),
							 (2,'Friendly environment, quality tools, good haircut',5,'16-1-2020',2,5),
							 (3,'Little dusty clippers, but shaving was good!',4,'04-1-2020',5,2),
							 (4,'Bad haircut, awful music!',1,'04-1-2020',4,4),
							 (5,'Good job but high prices!',2,'16-1-2020',3,3),
							 (6,'NOT WORTH!!!',1,'15-1-2020',2,1),
                             (7,'Barber was mysteriously quiet. Little uncomfortable',1,'02-1-2020',2,3);*/
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-29 13:00:57
