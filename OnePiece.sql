-- MariaDB dump 10.19-11.3.2-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: OnePiece
-- ------------------------------------------------------
-- Server version	11.3.2-MariaDB

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
-- Table structure for table `facciones`
--

DROP TABLE IF EXISTS `facciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `facciones` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `personaje_id` int(11) NOT NULL,
  `tipo` varchar(10) DEFAULT NULL CHECK (`tipo` in ('Marine','Pirata')),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facciones`
--

LOCK TABLES `facciones` WRITE;
/*!40000 ALTER TABLE `facciones` DISABLE KEYS */;
INSERT INTO `facciones` VALUES
(1,1,'Marine'),
(2,2,'Marine'),
(3,3,'Marine'),
(4,4,'Marine'),
(5,5,'Marine'),
(6,6,'Marine'),
(7,7,'Marine'),
(8,8,'Marine'),
(9,9,'Marine'),
(10,10,'Marine'),
(11,11,'Marine'),
(12,12,'Marine'),
(13,13,'Marine'),
(14,14,'Marine'),
(15,15,'Marine'),
(16,16,'Marine'),
(17,17,'Marine'),
(18,18,'Marine'),
(19,19,'Marine'),
(20,20,'Marine'),
(21,21,'Marine'),
(22,22,'Marine'),
(23,23,'Marine'),
(24,24,'Marine'),
(25,25,'Marine'),
(26,26,'Marine'),
(27,27,'Marine'),
(28,28,'Marine'),
(29,29,'Marine'),
(30,30,'Marine'),
(31,31,'Marine'),
(32,32,'Marine'),
(33,33,'Marine'),
(64,1,'Pirata'),
(65,2,'Pirata'),
(66,3,'Pirata'),
(67,4,'Pirata'),
(68,5,'Pirata'),
(69,6,'Pirata'),
(70,7,'Pirata'),
(71,8,'Pirata'),
(72,9,'Pirata'),
(73,10,'Pirata'),
(74,11,'Pirata'),
(75,12,'Pirata'),
(76,13,'Pirata'),
(77,14,'Pirata'),
(78,15,'Pirata'),
(79,16,'Pirata'),
(80,17,'Pirata'),
(81,18,'Pirata'),
(82,19,'Pirata'),
(83,20,'Pirata'),
(84,21,'Pirata'),
(85,22,'Pirata'),
(86,23,'Pirata'),
(87,24,'Pirata'),
(88,25,'Pirata'),
(89,26,'Pirata'),
(90,27,'Pirata'),
(91,28,'Pirata'),
(92,29,'Pirata'),
(93,30,'Pirata'),
(94,31,'Pirata'),
(95,32,'Pirata'),
(96,33,'Pirata'),
(97,34,'Pirata'),
(98,35,'Pirata'),
(99,36,'Pirata'),
(100,37,'Pirata'),
(101,38,'Pirata'),
(102,39,'Pirata'),
(103,40,'Pirata'),
(104,41,'Pirata'),
(105,42,'Pirata'),
(106,43,'Pirata'),
(107,44,'Pirata'),
(108,45,'Pirata'),
(109,46,'Pirata'),
(110,47,'Pirata'),
(111,48,'Pirata'),
(112,49,'Pirata'),
(113,50,'Pirata'),
(114,51,'Pirata'),
(115,52,'Pirata'),
(116,53,'Pirata'),
(117,54,'Pirata'),
(118,55,'Pirata'),
(119,56,'Pirata'),
(120,57,'Pirata');
/*!40000 ALTER TABLE `facciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `frutas`
--

DROP TABLE IF EXISTS `frutas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `frutas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `descripcion` text NOT NULL,
  `poseedor` varchar(100) DEFAULT NULL,
  `tipo_poseedor` enum('Pirata','Marine') DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `frutas`
--

LOCK TABLES `frutas` WRITE;
/*!40000 ALTER TABLE `frutas` DISABLE KEYS */;
INSERT INTO `frutas` VALUES
(1,'Gomu Gomu no Mi','Fruta del diablo que convierte el cuerpo en goma, permitiendo a quien la consuma estirarse y tomar una gran resistencia.','Luffy','Pirata'),
(2,'Mochi Mochi no Mi','Fruta del diablo que otorga el poder de crear y controlar el mochi, pudiendo transformarse en él.','Charlotte Katakuri','Pirata'),
(3,'Mera Mera no Mi','Fruta del diablo que otorga el poder de controlar el fuego, y permite transformarse en una forma de fuego.','Portgas D. Ace','Pirata'),
(4,'Yami Yami no Mi','Fruta del diablo que otorga el poder de controlar la oscuridad, y permite la absorción de todo.','Marshall D. Teach','Pirata'),
(5,'Suna Suna no Mi','Fruta del diablo que permite controlar la arena y transformarse en ella.','Crocodile','Pirata'),
(6,'Gura Gura no Mi','Fruta del diablo que permite crear y controlar poderosas vibraciones sísmicas.','Edward Newgate','Pirata'),
(7,'Ito Ito no Mi','Fruta del diablo que permite crear y controlar hilos, y manipular objetos con ellos.','Donquixote Doflamingo','Pirata'),
(8,'Hana Hana no Mi','Fruta del diablo que permite crear partes del cuerpo humano en cualquier superficie.','Nico Robin','Pirata'),
(9,'Hito Hito no Mi','Fruta del diablo que otorga la capacidad de transformarse en humano o en una forma híbrida.','Chopper','Pirata'),
(10,'Yomi Yomi no Mi','Fruta del diablo que revive a su usuario tras la muerte, otorgando el poder de controlar almas.','Brook','Pirata'),
(11,'Ope Ope no Mi','Fruta del diablo que otorga la habilidad de crear una habitación donde todo puede ser manipulado quirúrgicamente.','Trafalgar D. Water Law','Pirata'),
(12,'Ryu Ryu no Mi, Modelo: Pteranodon','Fruta del diablo tipo Zoan mitológica que permite transformarse en un pteranodon.','X Drake','Pirata'),
(13,'Mero Mero no Mi','Fruta del diablo que permite convertir a las personas en piedra con el poder del amor.','Boa Hancock','Pirata'),
(14,'Magu Magu no Mi','Fruta del diablo que otorga el poder de controlar el magma.','Akainu','Marine'),
(15,'Pika Pika no Mi','Fruta del diablo que permite controlar la luz y transformarse en ella.','Borsalino','Marine'),
(16,'Zushi Zushi no Mi','Fruta del diablo que permite controlar la gravedad y manipularla.','Sakazuki','Marine'),
(17,'Hie Hie no Mi','Fruta del diablo que otorga la capacidad de controlar el hielo.','Aokiji','Marine'),
(18,'Hito Hito no Mi, Modelo: Daibutsu','Fruta del diablo que permite transformarse en un gigantesco Buda.','Sengoku','Marine'),
(19,'Moku Moku no Mi','Fruta del diablo que permite generar y controlar el humo.','Smoker','Marine'),
(20,'Hina Hina no Mi','Fruta del diablo que permite crear y controlar jaulas de hierro.','Hina','Marine'),
(21,'Zushi Zushi no Mi','Fruta del diablo que permite manipular la gravedad.','Fujitora','Marine'),
(22,'Neko Neko no Mi, Modelo: Leopardo','Fruta del diablo Zoan que permite transformarse en un leopardo.','Rob Lucci','Marine'),
(23,'Ushi Ushi no Mi, Modelo: Jirafa','Fruta del diablo Zoan que permite transformarse en jirafa.','Kaku','Marine');
/*!40000 ALTER TABLE `frutas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marines`
--

DROP TABLE IF EXISTS `marines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marines` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `rango` varchar(100) DEFAULT NULL,
  `edad` int(11) DEFAULT NULL,
  `lugar_origen` varchar(100) DEFAULT NULL,
  `poder` varchar(255) DEFAULT NULL,
  `apodo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marines`
--

LOCK TABLES `marines` WRITE;
/*!40000 ALTER TABLE `marines` DISABLE KEYS */;
INSERT INTO `marines` VALUES
(1,'Sakazuki','Almirante de Flota',55,'South Blue','Magu Magu no Mi','Akainu'),
(2,'Borsalino','Almirante',58,'North Blue','Pika Pika no Mi','Kizaru'),
(3,'Issho','Almirante',54,'Grand Line','Zushi Zushi no Mi','Fujitora'),
(4,'Kuzan','Ex-Almirante',49,'South Blue','Hie Hie no Mi','Aokiji'),
(5,'Monkey D. Garp','Vicealmirante',78,'East Blue','Haki del Conquistador y Fuerza Sobrehumana','El Héroe de la Marina'),
(6,'Sengoku','Ex-Almirante de Flota',79,'South Blue','Hito Hito no Mi, Modelo: Daibutsu','El Buda'),
(7,'Tsuru','Vicealmirante',76,'North Blue','Woshu Woshu no Mi','La Gran Estratega'),
(8,'Koby','Capitán',18,'East Blue','Haki y Rokushiki','El Nuevo Héroe'),
(9,'Smoker','Vicealmirante',36,'Grand Line','Moku Moku no Mi','El Cazador Blanco'),
(10,'Vergo','Vicealmirante',45,'North Blue','Haki del Armamento','Demon Bamboo'),
(11,'Tashigi','Comandante',26,'Grand Line','Haki del Armamento y Espada de Gran Calidad','Espadachina Justiciera'),
(12,'Jango','Comandante',39,'Grand Line','Ningún poder conocido','El Hipnotizador'),
(13,'Hina','Comandante',38,'West Blue','Hina Hina no Mi','Hina Negra'),
(14,'Fujitora','Almirante',56,'Grand Line','Zushi Zushi no Mi','El Hombre Ciego'),
(15,'Helmeppo','Teniente',22,'East Blue','Haki del Armamento','El Hijo del Capitán Morgan'),
(16,'Sentomaru','Comandante',40,'Grand Line','Haki del Armamento','El Guardián de los Pacifistas'),
(17,'Dr. Vegapunk','Científico Principal del Gobierno Mundial',44,'Grand Line','Inteligencia y Tecnología Avanzada','El Genio'),
(18,'Tsuru','Vicealmirante',76,'North Blue','Woshu Woshu no Mi','La Gran Estratega'),
(19,'Rob Lucci','Miembro del CP9 / CP0',30,'Grand Line','Neko Neko no Mi, Modelo: Leopardo','La Muerte Silenciosa'),
(20,'Kaku','Miembro del CP9 / CP0',27,'Grand Line','Ushi Ushi no Mi, Modelo: Jirafa','Nariz Larga'),
(21,'Jabra','Miembro del CP9',35,'Grand Line','Inu Inu no Mi, Modelo: Lobo','El Lobo Solitario'),
(22,'Blueno','Miembro del CP9',33,'Grand Line','Doa Doa no Mi','El Hombre Puerta'),
(23,'Kumadori','Miembro del CP9',36,'Grand Line','Estilo de Vida Seimei Kikan','El Actor Kabuki'),
(24,'Fukurou','Miembro del CP9',34,'Grand Line','Técnicas de Rokushiki','El Parlanchín'),
(25,'Kalifa','Miembro del CP9',27,'Grand Line','Awa Awa no Mi','La Femme Fatale'),
(26,'Spandam','Ex-Líder del CP9 y Miembro del CP0',41,'Grand Line','Uso de Espada Elefante (Funkfreed)','El Líder Débil'),
(27,'Nero','Ex-Miembro del CP9',22,'Desconocido','Dominio parcial de Rokushiki','El Novato'),
(28,'Im Sama','Líder del Gobierno Mundial',NULL,'Desconocido','Poder misterioso','El Rey Oculto'),
(29,'Saint Marcus Mars','Miembro de los Cinco Ancianos',NULL,'Desconocido','Poder desconocido','El Sabio'),
(30,'Saint Topman Warcury','Miembro de los Cinco Ancianos',NULL,'Desconocido','Poder desconocido','El Viejo Estratega'),
(31,'Saint Ethanbaron V. Nusjuro','Miembro de los Cinco Ancianos',NULL,'Desconocido','Poder desconocido','El Espadachín'),
(32,'Saint Shepherd Ju Peter','Miembro de los Cinco Ancianos',NULL,'Desconocido','Poder desconocido','El Manipulador'),
(33,'Saint Figarland Garling','Miembro de los Cinco Ancianos',NULL,'Desconocido','Poder desconocido','El Guerrero Divino');
/*!40000 ALTER TABLE `marines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `piratas`
--

DROP TABLE IF EXISTS `piratas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `piratas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `apodo` varchar(100) DEFAULT NULL,
  `recompensa` bigint(20) DEFAULT NULL,
  `tripulacion` varchar(100) DEFAULT NULL,
  `edad` int(11) DEFAULT NULL,
  `lugar_origen` varchar(100) DEFAULT NULL,
  `poder` varchar(255) DEFAULT NULL,
  `tipo` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `piratas`
--

LOCK TABLES `piratas` WRITE;
/*!40000 ALTER TABLE `piratas` DISABLE KEYS */;
INSERT INTO `piratas` VALUES
(1,'Gol D. Roger','Rey de los Piratas',5564800000,'Piratas de Roger',53,'East Blue','Haki del Conquistador','Rey de los Piratas'),
(2,'Edward Newgate','Barbablanca',5046000000,'Piratas de Barbablanca',72,'Sphinx','Gura Gura no Mi','Ex-Emperador'),
(3,'Kaido','La Bestia',4611100000,'Piratas de las Bestias',59,'Grand Line','Uo Uo no Mi, Modelo: Seiryu','Ex-Emperador'),
(4,'Charlotte Linlin','Big Mom',4388000000,'Piratas de Big Mom',68,'Elbaf (crianza en Totto Land)','Soru Soru no Mi','Ex-Emperador'),
(5,'Shanks','El Pelirrojo',4048900000,'Piratas del Pelirrojo',39,'West Blue','Haki del Conquistador','Emperador'),
(6,'Marshall D. Teach','Barbanegra',3996000000,'Piratas de Barbanegra',40,'Grand Line','Yami Yami no Mi y Gura Gura no Mi','Emperador'),
(7,'Monkey D. Luffy','Sombrero de Paja',3000000000,'Piratas de Sombrero de Paja',19,'East Blue','Gomu Gomu no Mi','Emperador'),
(8,'Roronoa Zoro','Cazador de Piratas',1111000000,'Piratas de Sombrero de Paja',21,'East Blue','Haki del Conquistador y Tres Espadas','Pirata normal'),
(9,'Sanji','Pierna Negra',1032000000,'Piratas de Sombrero de Paja',21,'North Blue','Haki y Estilo de Pierna Ardiente','Pirata normal'),
(10,'Nico Robin','Niña Demonio',930000000,'Piratas de Sombrero de Paja',30,'West Blue','Hana Hana no Mi','Pirata normal'),
(11,'Jinbe','El Caballero del Mar',1100000000,'Piratas de Sombrero de Paja',46,'Isla Gyojin','Karate Gyojin y Haki','Ex-Shichibukai'),
(12,'Brook','Soul King',383000000,'Piratas de Sombrero de Paja',90,'West Blue','Yomi Yomi no Mi','Pirata normal'),
(13,'Tony Tony Chopper','Amigo de los Niños',1000,'Piratas de Sombrero de Paja',17,'Grand Line','Hito Hito no Mi','Pirata normal'),
(14,'Trafalgar D. Water Law','Cirujano de la Muerte',3000000000,'Piratas del Corazón',26,'North Blue','Ope Ope no Mi','Pirata normal'),
(15,'Eustass Kid','Capitán Kid',3000000000,'Piratas de Kid',23,'South Blue','Jiki Jiki no Mi','Pirata normal'),
(16,'Crocodile','Mr. 0',1960000000,'Cross Guild',46,'Grand Line','Suna Suna no Mi','Ex-Shichibukai'),
(17,'Boa Hancock','Emperatriz Pirata',1657000000,'Piratas Kuja',31,'Amazon Lily','Mero Mero no Mi','Ex-Shichibukai'),
(18,'Buggy','El Payaso',1500000000,'Cross Guild',39,'Grand Line','Bara Bara no Mi','Emperador'),
(19,'Dracule Mihawk','Ojo de Halcón',1500000000,'Cross Guild',43,NULL,'Espadachín Supremo','Ex-Shichibukai'),
(20,'Donquixote Doflamingo','Joker',340000000,'Piratas de Donquixote',41,'North Blue','Ito Ito no Mi','Ex-Shichibukai'),
(21,'X Drake','Ex-Marine / SWORD',222000000,'Piratas de las Bestias',33,'North Blue','Ryu Ryu no Mi, Modelo: Allosaurus','Pirata normal'),
(22,'Charlotte Katakuri','Dulce Comandante',1057000000,'Piratas de Big Mom',48,'Totto Land','Mochi Mochi no Mi','Pirata normal'),
(23,'Jack','La Sequía',1000000000,'Piratas de las Bestias',28,'Grand Line','Zoan Mitológico','Pirata normal'),
(24,'Queen','La Plaga',1320000000,'Piratas de las Bestias',56,'Grand Line','Ryu Ryu no Mi, Modelo: Brachiosaurus','Pirata normal'),
(25,'King','El Incendio',1460000000,'Piratas de las Bestias',47,'Grand Line','Ryu Ryu no Mi, Modelo: Pteranodon','Pirata normal'),
(26,'Basil Hawkins','El Mago',320000000,'Piratas de Hawkins',31,'North Blue','Wara Wara no Mi','Pirata normal'),
(27,'Scratchmen Apoo','DJ Destructor',350000000,'Piratas de On Air',30,'Grand Line','Oto Oto no Mi','Pirata normal'),
(28,'Shiryu','Shiryu de la Lluvia',2200000000,'Piratas de Barbanegra',44,'Grand Line','Suke Suke no Mi','Pirata normal'),
(29,'Jesus Burgess','Campeón',2000000000,'Piratas de Barbanegra',29,'South Blue','Fuerza Sobrehumana','Pirata normal'),
(30,'Van Augur','El Supersónico',1900000000,'Piratas de Barbanegra',27,NULL,'Tiro de Precisión','Pirata normal'),
(31,'Avalo Pizarro','El Corrupto',1800000000,'Piratas de Barbanegra',50,'Grand Line','Poder desconocido','Pirata normal'),
(32,'Laffitte','El Navegante Demoníaco',1750000000,'Piratas de Barbanegra',45,'West Blue','Hipnosis y Vuelo','Pirata normal'),
(33,'Killer','Asesino',600000000,'Piratas de Kid',27,'South Blue','Acrobacia y Espadas Giratorias','Pirata normal'),
(34,'Capone Bege','Gangster',350000000,'Piratas de Fire Tank',42,'West Blue','Shiro Shiro no Mi','Pirata normal'),
(35,'Urouge','Monje Loco',420000000,'Piratas Monje',47,'Sky Island','Aumento de Masa Muscular','Pirata normal'),
(36,'Jewelry Bonney','La Glotona',320000000,'Piratas Bonney',24,'South Blue','Toshi Toshi no Mi','Pirata normal'),
(37,'Bartolomeo','El Caníbal',200000000,'Piratas Barto Club',25,'East Blue','Bari Bari no Mi','Pirata normal'),
(38,'Cavendish','Caballo Blanco',330000000,'Piratas Hermosos',26,'Grand Line','Hakuba','Pirata normal'),
(39,'Orlumbus','El Aventurero',148000000,'Piratas Yonta Maria',42,'South Blue','Estrategia de Batalla','Pirata normal'),
(40,'Don Chinjao','Cabeza de Taladro',542000000,'Happo Navy',78,'West Blue','Haki y Taladro de Cabeza','Pirata normal'),
(41,'Sai','Líder de la Armada Happo',210000000,'Happo Navy',28,'West Blue','Haki y Pierna de Taladro','Pirata normal'),
(42,'Marco','El Fénix',1374000000,'Piratas de Barbablanca',45,'Grand Line','Tori Tori no Mi, Modelo: Fénix','Pirata normal'),
(43,'Sabo','Jefe de Estado Mayor del Ejército Revolucionario',602000000,'Ejército Revolucionario',22,'East Blue','Mera Mera no Mi','Revolucionario'),
(44,'Portgas D. Ace','Puño de Fuego',550000000,'Piratas de Barbablanca',20,'South Blue','Mera Mera no Mi','Pirata normal'),
(45,'Charlotte Cracker','El Caballero de Galleta',860000000,'Piratas de Big Mom',48,'Totto Land','Bisu Bisu no Mi','Pirata normal'),
(46,'Charlotte Smoothie','La Gran Smoothie',2000000000,'Piratas de Big Mom',28,'Totto Land','Asa Asa no Mi','Pirata normal'),
(47,'Charlotte Katakuri','Dulce Comandante',1260000000,'Piratas de Big Mom',48,'Totto Land','Mochi Mochi no Mi','Pirata normal'),
(48,'Charlotte Daifuku','El Gran Daifuku',500000000,'Piratas de Big Mom',48,'Totto Land','Hoya Hoya no Mi','Pirata normal'),
(49,'Charlotte Oven','El Calor',600000000,'Piratas de Big Mom',48,'Totto Land','Kake Kake no Mi','Pirata normal'),
(50,'Charlotte Perospero','El Hermano Mayor',700000000,'Piratas de Big Mom',44,'Totto Land','Soko Soko no Mi','Pirata normal'),
(51,'Charlotte Mont-d Or','El Gran Mont-d Or',400000000,'Piratas de Big Mom',49,'Totto Land','Buku Buku no Mi','Pirata normal'),
(52,'Charlotte Amande','La Tercera Hija',200000000,'Piratas de Big Mom',33,'Totto Land','Sakana Sakana no Mi','Pirata normal'),
(53,'Charlotte Valin','La Cuarta Hija',180000000,'Piratas de Big Mom',29,'Totto Land','Kohi Kohi no Mi','Pirata normal'),
(54,'Charlotte Lemo','La Quinto Hija',160000000,'Piratas de Big Mom',26,'Totto Land','Jikasei no Mi','Pirata normal'),
(55,'Charlotte Conne','La Sexta Hija',140000000,'Piratas de Big Mom',23,'Totto Land','Mizu Mizu no Mi','Pirata normal'),
(56,'Bentham (Bon Clay)','Mr. 2',32000000,'Ex-Baroque Works',30,'South Blue','Okama Kenpo y Mane Mane no Mi','Pirata normal'),
(57,'Galdino (Mr. 3)','Mr. 3',24000000,'Ex-Baroque Works',37,'Grand Line','Doru Doru no Mi','Pirata normal'),
(58,'Sogeking','Rey de los francotiradores',30000000,'Piratas de Sombrero de Paja',19,'Syrup Village','Puntería excepcional, uso de Pop Greens','Pirata normal'),
(59,'Usopp','God Usopp',200000000,'Piratas de Sombrero de Paja',19,'Syrup Village','Puntería excepcional, uso de Pop Greens, Haki de Observación','Pirata normal'),
(60,'Sogeking','Rey de los francotiradores',30000000,'Piratas de Sombrero de Paja',19,'Syrup Village','Puntería excepcional, uso de Pop Greens','Pirata normal'),
(61,'Usopp','God Usopp',200000000,'Piratas de Sombrero de Paja',19,'Syrup Village','Puntería excepcional, uso de Pop Greens, Haki de Observación','Pirata normal');
/*!40000 ALTER TABLE `piratas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `poseedores`
--

DROP TABLE IF EXISTS `poseedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `poseedores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_fruta` int(11) NOT NULL,
  `id_pirata` int(11) DEFAULT NULL,
  `id_marine` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_fruta` (`id_fruta`),
  KEY `id_pirata` (`id_pirata`),
  KEY `id_marine` (`id_marine`),
  CONSTRAINT `poseedores_ibfk_1` FOREIGN KEY (`id_fruta`) REFERENCES `frutas` (`id`) ON DELETE CASCADE,
  CONSTRAINT `poseedores_ibfk_2` FOREIGN KEY (`id_pirata`) REFERENCES `piratas` (`id`) ON DELETE SET NULL,
  CONSTRAINT `poseedores_ibfk_3` FOREIGN KEY (`id_marine`) REFERENCES `marines` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `poseedores`
--

LOCK TABLES `poseedores` WRITE;
/*!40000 ALTER TABLE `poseedores` DISABLE KEYS */;
INSERT INTO `poseedores` VALUES
(1,1,7,NULL),
(2,2,24,NULL),
(3,3,31,NULL),
(4,4,6,NULL),
(5,5,15,NULL),
(6,6,6,NULL),
(7,7,18,NULL),
(8,8,10,NULL),
(9,9,14,NULL),
(10,10,11,NULL),
(11,11,13,NULL),
(12,12,22,NULL),
(13,13,16,NULL),
(14,14,NULL,1),
(15,15,NULL,2),
(16,16,NULL,3),
(17,17,NULL,4),
(18,18,NULL,6),
(19,19,NULL,9),
(20,20,NULL,13),
(21,21,NULL,14),
(22,22,NULL,19),
(23,23,NULL,20);
/*!40000 ALTER TABLE `poseedores` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-28 10:11:16
