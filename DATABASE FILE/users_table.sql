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
  `email` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('admin','admin','ADMIN','admin',''),('user','user','USER','Heshan Thenura','heshanthenura@protonmail.com'),('AlexJohnson','AD2024!','USER','Alex Johnson','alex.johnson@example.com'),('EmilyDavis','ED2024!','USER','Emily Davis','emily.davis@example.com'),('RyanMiller','RM2024!','USER','Ryan Miller','ryan.miller@example.com'),('JessicaAnderson','JA2024!','USER','Jessica Anderson','jessica.anderson@example.com'),('DanielClark','DC2024!','USER','Daniel Clark','daniel.clark@example.com'),('OliviaTaylor','OT2024!','USER','Olivia Taylor','olivia.taylor@example.com'),('EthanMartinez','EM2024!','USER','Ethan Martinez','ethan.martinez@example.com'),('SamanthaWhite','SW2024!','USER','Samantha White','samantha.white@example.com'),('LucasMoore','LM2024!','USER','Lucas Moore','lucas.moore@example.com'),('ChloeWilson','CW2024!','USER','Chloe Wilson','chloe.wilson@example.com'),('NathanBrown','NB2024!','USER','Nathan Brown','nathan.brown@example.com'),('LilyThompson','LT2024!','USER','Lily Thompson','lily.thompson@example.com'),('MatthewRodriguez','MR2024!','USER','Matthew Rodriguez','matthew.rodriguez@example.com'),('HannahGarcia','HG2024!','USER','Hannah Garcia','hannah.garcia@example.com'),('TylerHarris','TH2024!','USER','Tyler Harris','tyler.harris@example.com'),('MadisonLee','ML2024!','USER','Madison Lee','madison.lee@example.com'),('JacobScott','JS2024!','USER','Jacob Scott','jacob.scott@example.com'),('AvaAllen','AA2024!','USER','Ava Allen','ava.allen@example.com'),('BenjaminKing','BK2024!','USER','Benjamin King','benjamin.king@example.com'),('SophiaLewis','SL2024!','USER','Sophia Lewis','sophia.lewis@example.com'),('WilliamWright','WW2024!','USER','William Wright','william.wright@example.com'),('staff','staff','STAFF','staff user','staff@mail.com'),('helpdesk','helpdesk','HELPDESK','helpdesk','helpdesk@mail.com'),('staff1','staff1','STAFF','staff1',NULL);
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

-- Dump completed on 2024-05-04 21:13:21
