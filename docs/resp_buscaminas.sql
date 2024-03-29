-- MariaDB dump 10.19  Distrib 10.4.24-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: buscaminas
-- ------------------------------------------------------
-- Server version	10.4.24-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `modo`
--

DROP TABLE IF EXISTS `modo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modo` (
  `modo_id` int(11) NOT NULL AUTO_INCREMENT,
  `modo` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`modo_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modo`
--

LOCK TABLES `modo` WRITE;
/*!40000 ALTER TABLE `modo` DISABLE KEYS */;
INSERT INTO `modo` VALUES (1,'Facil'),(2,'Medio'),(3,'Dificil');
/*!40000 ALTER TABLE `modo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `puntaje`
--

DROP TABLE IF EXISTS `puntaje`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `puntaje` (
  `puntaje_id` int(11) NOT NULL AUTO_INCREMENT,
  `tiempo` int(11) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `modo_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`puntaje_id`),
  KEY `modo_id` (`modo_id`),
  CONSTRAINT `puntaje_ibfk_1` FOREIGN KEY (`modo_id`) REFERENCES `modo` (`modo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `puntaje`
--

LOCK TABLES `puntaje` WRITE;
/*!40000 ALTER TABLE `puntaje` DISABLE KEYS */;
/*!40000 ALTER TABLE `puntaje` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `usuario_id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(50) DEFAULT NULL,
  `puntaje_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`usuario_id`),
  KEY `puntaje_id` (`puntaje_id`),
  CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`puntaje_id`) REFERENCES `puntaje` (`puntaje_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-16 14:29:13
