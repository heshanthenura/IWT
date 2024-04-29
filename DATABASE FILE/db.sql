-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: users
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `airlines`
--

DROP TABLE IF EXISTS `airlines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `airlines` (
  `airline_id` int NOT NULL,
  `name` varchar(20) NOT NULL,
  `seats` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `airlines`
--

LOCK TABLES `airlines` WRITE;
/*!40000 ALTER TABLE `airlines` DISABLE KEYS */;
INSERT INTO `airlines` VALUES (1,'Core Airways',165),(2,'Echo Airline',220),(3,'Spark Airways',125),(4,'Peak Airways',210),(5,'Homelander Airways',185),(9,'Blue Airlines',200),(10,'GoldStar Airways',205),(11,'Novar Airways',158),(12,'Aero Airways',210),(13,'Nep Airways',215),(14,'Delta Airlines',135);
/*!40000 ALTER TABLE `airlines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `available_flights`
--

DROP TABLE IF EXISTS `available_flights`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `available_flights` (
  `id` int NOT NULL AUTO_INCREMENT,
  `arrival` datetime NOT NULL,
  `departure` datetime NOT NULL,
  `source` varchar(45) NOT NULL,
  `destination` varchar(45) NOT NULL,
  `airline` varchar(45) NOT NULL,
  `seats` varchar(45) NOT NULL DEFAULT '0',
  `price` int NOT NULL,
  `duration` int NOT NULL,
  PRIMARY KEY (`id`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `available_flights`
--

LOCK TABLES `available_flights` WRITE;
/*!40000 ALTER TABLE `available_flights` DISABLE KEYS */;
INSERT INTO `available_flights` VALUES (1,'2024-05-18 22:30:00','2024-04-25 22:30:00','San Jose','Zhotrora','Core Airways','0',2434,888),(2,'2024-05-22 22:30:00','2024-04-25 22:30:00','San Jose','Zhotrora','GoldStar Airways','0',2434,648),(3,'2024-05-22 22:30:00','2024-04-25 22:30:00','San Jose','Zhotrora','GoldStar Airways','0',2434,648),(4,'2024-05-22 22:30:00','2024-04-25 22:30:00','San Jose','Zhotrora','GoldStar Airways','0',2434,648),(5,'2024-05-22 22:30:00','2024-04-25 22:30:00','San Jose','Zhotrora','GoldStar Airways','0',2434,648),(6,'2024-05-22 22:30:00','2024-04-25 22:30:00','San Jose','Zhotrora','GoldStar Airways','0',2434,648),(7,'2024-05-22 22:30:00','2024-04-25 22:30:00','San Jose','Zhotrora','GoldStar Airways','0',2434,648),(8,'2024-06-28 22:49:00','2024-04-22 22:49:00','San Jose','San Jose','Homelander Airways','185',2434,1608),(9,'2024-05-18 13:35:00','2024-04-03 13:35:00','San Jose','Otiginia','Core Airways','165',234234,1080);
/*!40000 ALTER TABLE `available_flights` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities` (
  `city` varchar(20) NOT NULL
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES ('San Jose'),('Chicago'),('Olisphis'),('Shiburn'),('Weling'),('Chiby'),('Odonhull'),('Hegan'),('Oriaridge'),('Flerough'),('Yleigh'),('Oyladnard'),('Trerdence'),('Zhotrora'),('Otiginia'),('Plueyby'),('Vrexledo'),('Ariosey');
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tickets_info`
--

DROP TABLE IF EXISTS `tickets_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tickets_info` (
  `ticket_id` int NOT NULL AUTO_INCREMENT,
  `flight_id` int NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `arrivale` datetime NOT NULL,
  `departure` datetime NOT NULL,
  `Destination` varchar(20) NOT NULL,
  `source` varchar(20) NOT NULL,
  `airline` varchar(20) NOT NULL,
  `Price` int NOT NULL,
  `duration` varchar(45) NOT NULL,
  PRIMARY KEY (`ticket_id`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tickets_info`
--

LOCK TABLES `tickets_info` WRITE;
/*!40000 ALTER TABLE `tickets_info` DISABLE KEYS */;
INSERT INTO `tickets_info` VALUES (1,1,'AlexJohnson','2022-06-30 10:03:00','2022-06-30 09:01:00','Chicago','San','Core Airways',175,''),(2,2,'EmilyDavis','2022-07-05 11:15:00','2022-07-05 10:05:00','Shiburn','Olisphis','Core Airways',185,''),(3,3,'RyanMiller','2022-07-05 12:13:00','2022-07-05 10:13:00','Weling','Olisphis','Spark Airways',205,''),(4,4,'JessicaAnderson','2022-07-05 16:30:00','2022-07-05 15:26:00','Weling','Shiburn','Echo Airline',155,''),(5,5,'DanielClark','2022-07-05 15:30:00','2022-07-05 12:30:00','Chiby','Shiburn','Spark Airways',326,''),(6,6,'OliviaTaylor','2022-07-05 17:55:00','2022-07-05 15:30:00','Chiby','Weling','Spark Airways',285,''),(7,7,'EthanMartinez','2022-07-05 20:50:00','2022-07-05 18:50:00','Odonhull','Chiby','Spark Airways',265,''),(8,8,'SamanthaWhite','2022-07-06 00:55:00','2022-07-05 17:00:00','Oyladnard','Odonhull','Homelander Airways',615,''),(9,9,'LucasMoore','2022-07-05 17:09:00','2022-07-05 16:05:00','Chiby','Olisphis','Peak Airways',155,''),(10,10,'ChloeWilson','2022-07-06 13:10:00','2022-07-06 11:05:00','Hegan','Shiburn','Core Airways',200,''),(11,11,'NathanBrown','2022-07-05 19:10:00','2022-07-05 18:05:00','Oriaridge','Flerough','Echo Airline',165,''),(12,12,'LilyThompson','2022-07-05 21:10:00','2022-07-05 19:05:00','Chicago','Yleigh','Peak Airways',320,''),(13,13,'MatthewRodriguez','2022-07-05 13:50:00','2022-07-05 12:56:00','Olisphis','Chicago','Core Airways',110,''),(14,14,'HannahGarcia','2022-07-05 11:08:00','2022-07-05 09:07:00','Oyladnard','San','Spark Airways',195,''),(15,15,'TylerHarris','2022-07-05 10:10:00','2022-07-05 08:10:00','Weling','Chicago','Peak Airways',125,''),(16,16,'MadisonLee','2022-07-05 18:10:00','2022-07-05 16:09:00','Flerough','San','Homelander Airways',220,''),(17,17,'JacobScott','2022-07-05 17:10:00','2022-07-05 16:10:00','San','Chiby','Echo Airline',125,''),(18,18,'AvaAllen','2022-07-05 19:15:00','2022-07-05 16:12:00','San','Flerough','Core Airways',275,''),(19,19,'BenjaminKing','2022-07-05 23:40:00','2022-07-05 20:31:00','Shiburn','Oyladnard','Aero Airways',295,''),(20,20,'SophiaLewis','2022-07-05 23:58:00','2022-07-05 22:14:00','Zhotrora','Trerdence','Aero Airways',185,''),(21,21,'WilliamWright','2022-07-06 10:14:00','2022-07-05 23:15:00','Odonhull','Otiginia','Blue Airlines',965,'');
/*!40000 ALTER TABLE `tickets_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `username` varchar(45) NOT NULL,
  `password` varchar(225) NOT NULL,
  `role` varchar(45) NOT NULL DEFAULT 'USER',
  `full_name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('admin','admin','ADMIN','admin',''),('user','123','USER','Heshan Thenura Kariyawasam','heshanthenura@protonmail.com'),('AlexJohnson','AD2024!','USER','Alex Johnson','alex.johnson@example.com'),('EmilyDavis','ED2024!','USER','Emily Davis','emily.davis@example.com'),('RyanMiller','RM2024!','USER','Ryan Miller','ryan.miller@example.com'),('JessicaAnderson','JA2024!','USER','Jessica Anderson','jessica.anderson@example.com'),('DanielClark','DC2024!','USER','Daniel Clark','daniel.clark@example.com'),('OliviaTaylor','OT2024!','USER','Olivia Taylor','olivia.taylor@example.com'),('EthanMartinez','EM2024!','USER','Ethan Martinez','ethan.martinez@example.com'),('SamanthaWhite','SW2024!','USER','Samantha White','samantha.white@example.com'),('LucasMoore','LM2024!','USER','Lucas Moore','lucas.moore@example.com'),('ChloeWilson','CW2024!','USER','Chloe Wilson','chloe.wilson@example.com'),('NathanBrown','NB2024!','USER','Nathan Brown','nathan.brown@example.com'),('LilyThompson','LT2024!','USER','Lily Thompson','lily.thompson@example.com'),('MatthewRodriguez','MR2024!','USER','Matthew Rodriguez','matthew.rodriguez@example.com'),('HannahGarcia','HG2024!','USER','Hannah Garcia','hannah.garcia@example.com'),('TylerHarris','TH2024!','USER','Tyler Harris','tyler.harris@example.com'),('MadisonLee','ML2024!','USER','Madison Lee','madison.lee@example.com'),('JacobScott','JS2024!','USER','Jacob Scott','jacob.scott@example.com'),('AvaAllen','AA2024!','USER','Ava Allen','ava.allen@example.com'),('BenjaminKing','BK2024!','USER','Benjamin King','benjamin.king@example.com'),('SophiaLewis','SL2024!','USER','Sophia Lewis','sophia.lewis@example.com'),('WilliamWright','WW2024!','USER','William Wright','william.wright@example.com'),('staff','staff','STAFF','staff user','staff@mail.com'),('helpdesk','helpdesk','HELPDESK','helpdesk','helpdesk@mail.com');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-27 15:10:35
