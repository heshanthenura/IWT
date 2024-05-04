-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 04, 2024 at 05:32 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `iwt`
--

-- --------------------------------------------------------

--
-- Table structure for table `airlines`
--

CREATE TABLE `airlines` (
  `airline_id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `seats` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `airlines`
--

INSERT INTO `airlines` (`airline_id`, `name`, `seats`) VALUES
(1, 'Core Airways', 165),
(2, 'Echo Airline', 220),
(3, 'Spark Airways', 125),
(4, 'Peak Airways', 210),
(5, 'Homelander Airways', 185),
(9, 'Blue Airlines', 200),
(10, 'GoldStar Airways', 205),
(11, 'Novar Airways', 158),
(12, 'Aero Airways', 210),
(13, 'Nep Airways', 215),
(14, 'Delta Airlines', 135);

-- --------------------------------------------------------

--
-- Table structure for table `available_flights`
--

CREATE TABLE `available_flights` (
  `id` int(11) NOT NULL,
  `arrival` datetime NOT NULL,
  `departure` datetime NOT NULL,
  `source` varchar(45) NOT NULL,
  `destination` varchar(45) NOT NULL,
  `airline` varchar(45) NOT NULL,
  `seats` varchar(45) NOT NULL DEFAULT '0',
  `price` int(11) NOT NULL,
  `duration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `available_flights`
--

INSERT INTO `available_flights` (`id`, `arrival`, `departure`, `source`, `destination`, `airline`, `seats`, `price`, `duration`) VALUES
(1, '2024-05-06 20:58:00', '2024-05-05 20:58:00', 'San Jose', 'Chicago', 'Echo Airline', '220', 250, 24),
(2, '2024-05-07 20:58:00', '2024-05-05 20:58:00', 'San Jose', 'Zhotrora', 'Core Airways', '165', 450, 48),
(3, '2024-05-07 13:00:00', '2024-05-06 21:00:00', 'Hegan', 'Oyladnard', 'Nep Airways', '215', 350, 16),
(4, '2024-05-08 21:00:00', '2024-05-06 21:00:00', 'Olisphis', 'Vrexledo', 'Novar Airways', '158', 540, 48),
(5, '2024-05-10 21:01:00', '2024-05-08 21:01:00', 'Zhotrora', 'Ariosey', 'Peak Airways', '210', 380, 48);

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `city` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`city`) VALUES
('San Jose'),
('Chicago'),
('Olisphis'),
('Shiburn'),
('Weling'),
('Chiby'),
('Odonhull'),
('Hegan'),
('Oriaridge'),
('Flerough'),
('Yleigh'),
('Oyladnard'),
('Trerdence'),
('Zhotrora'),
('Otiginia'),
('Plueyby'),
('Vrexledo'),
('Ariosey');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `full_name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `message` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `full_name`, `email`, `message`) VALUES
(1, 'Heshan Thenura Kariyawasam', 'heshanthenura@protonmail.com', 'asdad'),
(2, 'Heshan Thenura Kariyawasam', 'heshanthenura@protonmail.com', 'asdad'),
(3, 'Heshan Thenura Kariyawasam', 'heshanthenura@protonmail.com', 'asdad'),
(4, 'sdfsd sdfdf', 'heshanthenura@protonmail.com', 'asdad');

-- --------------------------------------------------------

--
-- Table structure for table `tickets_info`
--

CREATE TABLE `tickets_info` (
  `ticket_id` int(11) NOT NULL,
  `flight_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `arrivale` datetime NOT NULL,
  `departure` datetime NOT NULL,
  `Destination` varchar(20) NOT NULL,
  `source` varchar(20) NOT NULL,
  `airline` varchar(20) NOT NULL,
  `Price` int(11) NOT NULL,
  `duration` varchar(45) NOT NULL,
  `passenger_count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tickets_info`
--

INSERT INTO `tickets_info` (`ticket_id`, `flight_id`, `username`, `arrivale`, `departure`, `Destination`, `source`, `airline`, `Price`, `duration`, `passenger_count`) VALUES
(4, 4, 'JessicaAnderson', '2022-07-05 16:30:00', '2022-07-05 15:26:00', 'Weling', 'Shiburn', 'Echo Airline', 155, '', 0),
(5, 5, 'DanielClark', '2022-07-05 15:30:00', '2022-07-05 12:30:00', 'Chiby', 'Shiburn', 'Spark Airways', 326, '', 0),
(6, 6, 'OliviaTaylor', '2022-07-05 17:55:00', '2022-07-05 15:30:00', 'Chiby', 'Weling', 'Spark Airways', 285, '', 0),
(7, 7, 'EthanMartinez', '2022-07-05 20:50:00', '2022-07-05 18:50:00', 'Odonhull', 'Chiby', 'Spark Airways', 265, '', 0),
(8, 8, 'SamanthaWhite', '2022-07-06 00:55:00', '2022-07-05 17:00:00', 'Oyladnard', 'Odonhull', 'Homelander Airways', 615, '', 0),
(9, 9, 'LucasMoore', '2022-07-05 17:09:00', '2022-07-05 16:05:00', 'Chiby', 'Olisphis', 'Peak Airways', 155, '', 0),
(10, 10, 'ChloeWilson', '2022-07-06 13:10:00', '2022-07-06 11:05:00', 'Hegan', 'Shiburn', 'Core Airways', 200, '', 0),
(11, 11, 'NathanBrown', '2022-07-05 19:10:00', '2022-07-05 18:05:00', 'Oriaridge', 'Flerough', 'Echo Airline', 165, '', 0),
(12, 12, 'LilyThompson', '2022-07-05 21:10:00', '2022-07-05 19:05:00', 'Chicago', 'Yleigh', 'Peak Airways', 320, '', 0),
(13, 13, 'MatthewRodriguez', '2022-07-05 13:50:00', '2022-07-05 12:56:00', 'Olisphis', 'Chicago', 'Core Airways', 110, '', 0),
(14, 14, 'HannahGarcia', '2022-07-05 11:08:00', '2022-07-05 09:07:00', 'Oyladnard', 'San', 'Spark Airways', 195, '', 0),
(15, 15, 'TylerHarris', '2022-07-05 10:10:00', '2022-07-05 08:10:00', 'Weling', 'Chicago', 'Peak Airways', 125, '', 0),
(16, 16, 'MadisonLee', '2022-07-05 18:10:00', '2022-07-05 16:09:00', 'Flerough', 'San', 'Homelander Airways', 220, '', 0),
(17, 17, 'JacobScott', '2022-07-05 17:10:00', '2022-07-05 16:10:00', 'San', 'Chiby', 'Echo Airline', 125, '', 0),
(18, 18, 'AvaAllen', '2022-07-05 19:15:00', '2022-07-05 16:12:00', 'San', 'Flerough', 'Core Airways', 275, '', 0),
(19, 19, 'BenjaminKing', '2022-07-05 23:40:00', '2022-07-05 20:31:00', 'Shiburn', 'Oyladnard', 'Aero Airways', 295, '', 0),
(20, 20, 'SophiaLewis', '2022-07-05 23:58:00', '2022-07-05 22:14:00', 'Zhotrora', 'Trerdence', 'Aero Airways', 185, '', 0),
(21, 21, 'WilliamWright', '2022-07-06 10:14:00', '2022-07-05 23:15:00', 'Odonhull', 'Otiginia', 'Blue Airlines', 965, '', 0),
(22, 11, 'user', '2024-04-12 13:44:00', '2024-04-03 13:44:00', 'Hegan', 'San Jose', 'Spark Airways', 1405944, '216', 3),
(23, 1, 'user', '2024-05-18 22:30:00', '2024-04-25 22:30:00', 'Zhotrora', 'San Jose', 'Core Airways', 14760, '552', 5);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(45) NOT NULL,
  `password` varchar(225) NOT NULL,
  `role` varchar(45) NOT NULL DEFAULT 'USER',
  `full_name` varchar(45) NOT NULL,
  `email` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`, `role`, `full_name`, `email`) VALUES
('admin', 'admin', 'ADMIN', 'admin', 'admin@gmail.com'),
('staff', 'staff', 'STAFF', 'staff', NULL),
('helpdesk', 'helpdesk', 'HELPDESK', 'helpdesk', NULL),
('isuka', 'isuka', 'USER', 'Isuka Minjaya', 'isuka@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `available_flights`
--
ALTER TABLE `available_flights`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tickets_info`
--
ALTER TABLE `tickets_info`
  ADD PRIMARY KEY (`ticket_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `available_flights`
--
ALTER TABLE `available_flights`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tickets_info`
--
ALTER TABLE `tickets_info`
  MODIFY `ticket_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
