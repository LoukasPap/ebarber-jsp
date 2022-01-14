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
-- Table structure for table `barbershop`
--

DROP TABLE IF EXISTS `barbershop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `barbershop` (
    `barbershopID` INT(255) NOT NULL,
    `username` VARCHAR(100) NOT NULL,
    `password` VARCHAR(100) NOT NULL,
    `email` VARCHAR(100) NOT NULL,
    `phone` VARCHAR(100) NOT NULL,
    `address` VARCHAR(100) NOT NULL,
    `area_id` INT(15) NOT NULL,
    PRIMARY KEY (`barbershopID`),
    UNIQUE KEY `username_UNIQ` (`username`),
    UNIQUE KEY `email_UNIQ` (`email`),
    UNIQUE KEY `phone_UNIQ` (`phone`),
    KEY `FK_barbershop_1` (`area_id`),
    CONSTRAINT `FK_barbershop_1` FOREIGN KEY (`area_id`)
        REFERENCES `area` (`id`)
)  ENGINE=INNODB DEFAULT CHARSET=UTF8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `barbershop`
--

LOCK TABLES `barbershop` WRITE;
/*!40000 ALTER TABLE `barbershop` DISABLE KEYS */;
/*INSERT INTO `barbershop` VALUES (1,'Barbery','111111','barbery@hotmail.gr','6912341234','Green 43',3),
								(2,'BarberOne','123456','b1@hotmail.gr','1234567890','Blue 12',3),
								(3,'Clipping','123456','clipping@gmail.com','1378590284','Yello 28',3),
                                (4,'Clippa','123456','d1@gmail.com','4556743218','Flouring 4',1),
                                (5,'OgBarber','123456','ogb@hotmail.com','9995774823','Geeto 77',1),
                                (6,'JohnBarber','123456','johnb@gmail.gr','6974356646','Flouring 56',3),
                                (7,'Litsa Coiffures','123456','litsa@gmail.com','2104456348','Patthsion 87','12');*/
/*!40000 ALTER TABLE `barbershop` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-29 13:00:58
