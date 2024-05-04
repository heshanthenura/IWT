CREATE TABLE `airlines` (
  `airline_id` int NOT NULL,
  `name` varchar(20) NOT NULL,
  `seats` int NOT NULL
);
INSERT INTO `airlines` VALUES (1,'Core Airways',165),(2,'Echo Airline',220),(3,'Spark Airways',125),(4,'Peak Airways',210),(5,'Homelander Airways',185),(9,'Blue Airlines',200),(10,'GoldStar Airways',205),(11,'Novar Airways',158),(12,'Aero Airways',210),(13,'Nep Airways',215),(14,'Delta Airlines',135);

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

CREATE TABLE `cities` (
  `city` varchar(20) NOT NULL
);
INSERT INTO `cities` VALUES ('San Jose'),('Chicago'),('Olisphis'),('Shiburn'),('Weling'),('Chiby'),('Odonhull'),('Hegan'),('Oriaridge'),('Flerough'),('Yleigh'),('Oyladnard'),('Trerdence'),('Zhotrora'),('Otiginia'),('Plueyby'),('Vrexledo'),('Ariosey');

CREATE TABLE `feedback` (
  `id` int NOT NULL AUTO_INCREMENT,
  `full_name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `message` longtext NOT NULL,
  PRIMARY KEY (`id`)
);
INSERT INTO `feedback` VALUES (1,'Heshan Thenura Kariyawasam','heshanthenura@protonmail.com','asdad'),(2,'Heshan Thenura Kariyawasam','heshanthenura@protonmail.com','asdad'),(3,'Heshan Thenura Kariyawasam','heshanthenura@protonmail.com','asdad'),(4,'sdfsd sdfdf','heshanthenura@protonmail.com','asdad');

CREATE TABLE `tickets_info` (
  `ticket_id` int NOT NULL AUTO_INCREMENT,
  `flight_id` int NOT NULL,
  `username` varchar(50) NOT NULL,
  `arrivale` datetime NOT NULL,
  `departure` datetime NOT NULL,
  `Destination` varchar(20) NOT NULL,
  `source` varchar(20) NOT NULL,
  `airline` varchar(20) NOT NULL,
  `Price` int NOT NULL,
  `duration` varchar(45) NOT NULL,
  `passenger_count` int NOT NULL,
  PRIMARY KEY (`ticket_id`)
);
INSERT INTO `tickets_info` VALUES (4,4,'JessicaAnderson','2022-07-05 16:30:00','2022-07-05 15:26:00','Weling','Shiburn','Echo Airline',155,'',0),(5,5,'DanielClark','2022-07-05 15:30:00','2022-07-05 12:30:00','Chiby','Shiburn','Spark Airways',326,'',0),(6,6,'OliviaTaylor','2022-07-05 17:55:00','2022-07-05 15:30:00','Chiby','Weling','Spark Airways',285,'',0),(7,7,'EthanMartinez','2022-07-05 20:50:00','2022-07-05 18:50:00','Odonhull','Chiby','Spark Airways',265,'',0),(8,8,'SamanthaWhite','2022-07-06 00:55:00','2022-07-05 17:00:00','Oyladnard','Odonhull','Homelander Airways',615,'',0),(9,9,'LucasMoore','2022-07-05 17:09:00','2022-07-05 16:05:00','Chiby','Olisphis','Peak Airways',155,'',0),(10,10,'ChloeWilson','2022-07-06 13:10:00','2022-07-06 11:05:00','Hegan','Shiburn','Core Airways',200,'',0),(11,11,'NathanBrown','2022-07-05 19:10:00','2022-07-05 18:05:00','Oriaridge','Flerough','Echo Airline',165,'',0),(12,12,'LilyThompson','2022-07-05 21:10:00','2022-07-05 19:05:00','Chicago','Yleigh','Peak Airways',320,'',0),(13,13,'MatthewRodriguez','2022-07-05 13:50:00','2022-07-05 12:56:00','Olisphis','Chicago','Core Airways',110,'',0),(14,14,'HannahGarcia','2022-07-05 11:08:00','2022-07-05 09:07:00','Oyladnard','San','Spark Airways',195,'',0),(15,15,'TylerHarris','2022-07-05 10:10:00','2022-07-05 08:10:00','Weling','Chicago','Peak Airways',125,'',0),(16,16,'MadisonLee','2022-07-05 18:10:00','2022-07-05 16:09:00','Flerough','San','Homelander Airways',220,'',0),(17,17,'JacobScott','2022-07-05 17:10:00','2022-07-05 16:10:00','San','Chiby','Echo Airline',125,'',0),(18,18,'AvaAllen','2022-07-05 19:15:00','2022-07-05 16:12:00','San','Flerough','Core Airways',275,'',0),(19,19,'BenjaminKing','2022-07-05 23:40:00','2022-07-05 20:31:00','Shiburn','Oyladnard','Aero Airways',295,'',0),(20,20,'SophiaLewis','2022-07-05 23:58:00','2022-07-05 22:14:00','Zhotrora','Trerdence','Aero Airways',185,'',0),(21,21,'WilliamWright','2022-07-06 10:14:00','2022-07-05 23:15:00','Odonhull','Otiginia','Blue Airlines',965,'',0),(22,11,'user','2024-04-12 13:44:00','2024-04-03 13:44:00','Hegan','San Jose','Spark Airways',1405944,'216',3),(23,1,'user','2024-05-18 22:30:00','2024-04-25 22:30:00','Zhotrora','San Jose','Core Airways',14760,'552',5);

CREATE TABLE `users` (
  `username` varchar(45) NOT NULL,
  `password` varchar(225) NOT NULL,
  `role` varchar(45) NOT NULL DEFAULT 'USER',
  `full_name` varchar(45) NOT NULL,
  `email` varchar(45) DEFAULT NULL
);