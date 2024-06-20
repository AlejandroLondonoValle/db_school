-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: b3c4y2tqsc970n0xchlc-mysql.services.clever-cloud.com    Database: b3c4y2tqsc970n0xchlc
-- ------------------------------------------------------
-- Server version	8.0.15-5

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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ 'f41d366d-91e5-11e9-8525-cecd028ee826:1-140559299';

--
-- Table structure for table `asistentes_tutores`
--

DROP TABLE IF EXISTS `asistentes_tutores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asistentes_tutores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `docente_encargado_id` int(11) NOT NULL,
  `materia_id` int(11) NOT NULL,
  `aprendices_acargo_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_asistentes_tutores_1_idx` (`docente_encargado_id`),
  KEY `fk_asistentes_tutores_2_idx` (`materia_id`),
  KEY `fk_asistentes_tutores_3_idx` (`aprendices_acargo_id`),
  CONSTRAINT `fk_asistentes_tutores_1` FOREIGN KEY (`docente_encargado_id`) REFERENCES `profesores` (`id`),
  CONSTRAINT `fk_asistentes_tutores_2` FOREIGN KEY (`materia_id`) REFERENCES `materias` (`id`),
  CONSTRAINT `fk_asistentes_tutores_3` FOREIGN KEY (`aprendices_acargo_id`) REFERENCES `estudiantes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asistentes_tutores`
--

LOCK TABLES `asistentes_tutores` WRITE;
/*!40000 ALTER TABLE `asistentes_tutores` DISABLE KEYS */;
INSERT INTO `asistentes_tutores` VALUES (1,'julio jaramillo',1,5,1),(2,'octavio mesa',2,4,2),(3,'rodolfo aicardi',3,3,3),(4,'dario gomez',4,2,4),(5,'vicente fernandez',5,1,5);
/*!40000 ALTER TABLE `asistentes_tutores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cursos`
--

DROP TABLE IF EXISTS `cursos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cursos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_curso` varchar(100) NOT NULL,
  `director_del_curso_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_cursos_1_idx` (`director_del_curso_id`),
  CONSTRAINT `fk_cursos_1` FOREIGN KEY (`director_del_curso_id`) REFERENCES `profesores` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cursos`
--

LOCK TABLES `cursos` WRITE;
/*!40000 ALTER TABLE `cursos` DISABLE KEYS */;
INSERT INTO `cursos` VALUES (1,'11a',1),(2,'11b',2),(3,'10a',3),(4,'10b',4),(5,'10c',5);
/*!40000 ALTER TABLE `cursos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directivos`
--

DROP TABLE IF EXISTS `directivos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `directivos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `consejo_academico_id` int(11) NOT NULL,
  `consejo_estudiantil_id` int(11) NOT NULL,
  `rector` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_directivos_1_idx` (`consejo_estudiantil_id`),
  KEY `fk_directivos_2_idx` (`consejo_academico_id`),
  CONSTRAINT `fk_directivos_1` FOREIGN KEY (`consejo_estudiantil_id`) REFERENCES `estudiantes` (`id`),
  CONSTRAINT `fk_directivos_2` FOREIGN KEY (`consejo_academico_id`) REFERENCES `profesores` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directivos`
--

LOCK TABLES `directivos` WRITE;
/*!40000 ALTER TABLE `directivos` DISABLE KEYS */;
INSERT INTO `directivos` VALUES (1,1,5,'jose hugo castaño');
/*!40000 ALTER TABLE `directivos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estudiantes`
--

DROP TABLE IF EXISTS `estudiantes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estudiantes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `curso_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idnew_table_UNIQUE` (`id`),
  KEY `fk_estudiantes_1_idx` (`curso_id`),
  CONSTRAINT `fk_estudiantes_1` FOREIGN KEY (`curso_id`) REFERENCES `cursos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estudiantes`
--

LOCK TABLES `estudiantes` WRITE;
/*!40000 ALTER TABLE `estudiantes` DISABLE KEYS */;
INSERT INTO `estudiantes` VALUES (1,'juan guillermo','ruiz',5),(2,'valeria','muñeton',4),(3,'juan david','londoño',3),(4,'eduardo','londoño',2),(5,'marlen','valle',1);
/*!40000 ALTER TABLE `estudiantes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `horarios`
--

DROP TABLE IF EXISTS `horarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `horarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `salones_id` int(11) NOT NULL,
  `jornadas_id` int(11) NOT NULL,
  `materias_id` int(11) NOT NULL,
  `bloque` varchar(100) NOT NULL,
  `curso_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_horarios_1_idx` (`curso_id`),
  KEY `fk_horarios_2_idx` (`materias_id`),
  KEY `fk_horarios_3_idx` (`salones_id`),
  KEY `fk_horarios_4_idx` (`jornadas_id`),
  CONSTRAINT `fk_horarios_1` FOREIGN KEY (`curso_id`) REFERENCES `cursos` (`id`),
  CONSTRAINT `fk_horarios_2` FOREIGN KEY (`materias_id`) REFERENCES `materias` (`id`),
  CONSTRAINT `fk_horarios_3` FOREIGN KEY (`salones_id`) REFERENCES `salones` (`id`),
  CONSTRAINT `fk_horarios_4` FOREIGN KEY (`jornadas_id`) REFERENCES `jornadas` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `horarios`
--

LOCK TABLES `horarios` WRITE;
/*!40000 ALTER TABLE `horarios` DISABLE KEYS */;
INSERT INTO `horarios` VALUES (1,5,1,1,'de 6am a 12pm',5),(2,4,2,2,'de 7am a 1pm',4),(3,3,1,3,'de 10am a 4pm',3),(4,2,2,4,'de 2pm a 8pm',2),(5,1,1,5,'de 4pm a 10pm',1);
/*!40000 ALTER TABLE `horarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jornadas`
--

DROP TABLE IF EXISTS `jornadas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jornadas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jornadas`
--

LOCK TABLES `jornadas` WRITE;
/*!40000 ALTER TABLE `jornadas` DISABLE KEYS */;
INSERT INTO `jornadas` VALUES (1,'diurna'),(2,'nocturna');
/*!40000 ALTER TABLE `jornadas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materias`
--

DROP TABLE IF EXISTS `materias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `materias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `profesores_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_materias_1_idx` (`profesores_id`),
  CONSTRAINT `fk_materias_1` FOREIGN KEY (`profesores_id`) REFERENCES `profesores` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materias`
--

LOCK TABLES `materias` WRITE;
/*!40000 ALTER TABLE `materias` DISABLE KEYS */;
INSERT INTO `materias` VALUES (1,'desarrollo',1),(2,'habilidades para la vida',2),(3,'ingles',3),(4,'matematicas',4),(5,'artistica',5);
/*!40000 ALTER TABLE `materias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_de_aseo`
--

DROP TABLE IF EXISTS `personal_de_aseo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_de_aseo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `horario_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_personal_de_aseo_1_idx` (`horario_id`),
  CONSTRAINT `fk_personal_de_aseo_1` FOREIGN KEY (`horario_id`) REFERENCES `horarios` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_de_aseo`
--

LOCK TABLES `personal_de_aseo` WRITE;
/*!40000 ALTER TABLE `personal_de_aseo` DISABLE KEYS */;
INSERT INTO `personal_de_aseo` VALUES (1,'alba','jaramillo',5),(2,'miguel angel','sosa',4),(3,'manuel','rodriguez',3),(4,'juan fernando','quintero',2),(5,'gustavo','cuellar',1);
/*!40000 ALTER TABLE `personal_de_aseo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profesores`
--

DROP TABLE IF EXISTS `profesores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profesores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profesores`
--

LOCK TABLES `profesores` WRITE;
/*!40000 ALTER TABLE `profesores` DISABLE KEYS */;
INSERT INTO `profesores` VALUES (1,'javier','combita'),(2,'lili','carmona'),(3,'david','londoño'),(4,'kevin','alvarez'),(5,'angela','sepulveda');
/*!40000 ALTER TABLE `profesores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salones`
--

DROP TABLE IF EXISTS `salones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `numero` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salones`
--

LOCK TABLES `salones` WRITE;
/*!40000 ALTER TABLE `salones` DISABLE KEYS */;
INSERT INTO `salones` VALUES (1,'101'),(2,'201'),(3,'301'),(4,'401'),(5,'501');
/*!40000 ALTER TABLE `salones` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-20 13:49:42
