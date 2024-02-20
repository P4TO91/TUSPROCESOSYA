-- MySQL dump 10.13  Distrib 5.7.24, for osx10.9 (x86_64)
--
-- Host: localhost    Database: TUSPROCESOSYA
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `Litigantes`
--

DROP TABLE IF EXISTS `Litigantes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Litigantes` (
  `idLitigantes` int NOT NULL,
  `Nombre del Buffet` varchar(45) NOT NULL,
  `Tarjeta Profesional` int NOT NULL,
  `Correo electronico` varchar(45) NOT NULL,
  `Radicado Proceso` varchar(45) NOT NULL,
  `Direccion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idLitigantes`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Litigantes`
--

LOCK TABLES `Litigantes` WRITE;
/*!40000 ALTER TABLE `Litigantes` DISABLE KEYS */;
/*!40000 ALTER TABLE `Litigantes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Registros`
--

DROP TABLE IF EXISTS `Registros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Registros` (
  `idRegistros` int NOT NULL,
  `Sujetos Procesales` varchar(45) NOT NULL,
  `Tipo de Juzgado` varchar(45) NOT NULL,
  `Nombre del Juez` varchar(45) DEFAULT NULL,
  `Numero del Juzgado` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idRegistros`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Registros`
--

LOCK TABLES `Registros` WRITE;
/*!40000 ALTER TABLE `Registros` DISABLE KEYS */;
INSERT INTO `Registros` VALUES (1,'Jaime Lombana','civil circuito municipal','Jorge Peña','juzgado septimo'),(2,'Carlos Beltran','civil municipal','Martha Cocio','juzgado quinto'),(3,'Michel Beltran','Promiscuo','Cecilia Perez','juzgado primero Promiscuo'),(4,'Alberto Jimenez','Civil municipal','Jaime Scheimder','juzgado septimo municipal');
/*!40000 ALTER TABLE `Registros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Usuario`
--

DROP TABLE IF EXISTS `Usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Usuario` (
  `Identificacion/NIT` int NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  `Tipo de proceso` varchar(45) NOT NULL,
  `Tipo Accion` varchar(45) NOT NULL,
  `Correo electronico` varchar(45) NOT NULL,
  `Direccion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Identificacion/NIT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Usuario`
--

LOCK TABLES `Usuario` WRITE;
/*!40000 ALTER TABLE `Usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `Usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-19 20:22:16
