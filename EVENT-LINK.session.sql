-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: event_link
-- ------------------------------------------------------
-- Server version	8.0.33

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `add_posts`
--

DROP TABLE IF EXISTS `add_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `add_posts` (
  `posts_id` int NOT NULL AUTO_INCREMENT,
  `cover_img` varchar(255) DEFAULT NULL,
  `event_name` varchar(255) DEFAULT NULL,
  `event_desc` text,
  `category_id` int DEFAULT NULL,
  `contact` varchar(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `google_form_link` varchar(255) DEFAULT NULL,
  `uid` int DEFAULT NULL,
  `admin_id` int DEFAULT NULL,
  `college_name` varchar(255) DEFAULT NULL,
  `event_date` date DEFAULT NULL,
  `venue` text,
  PRIMARY KEY (`posts_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `add_posts`
--

LOCK TABLES `add_posts` WRITE;
/*!40000 ALTER TABLE `add_posts` DISABLE KEYS */;
INSERT INTO `add_posts` VALUES (1,'https://firebasestorage.googleapis.com/v0/b/event-link-b0613.appspot.com/o/All_Posts_Images%2F10_cultural.jpeg?alt=media&token=bf9e5fb6-afa0-4a54-b35f-83746df5a55f','CULTURAL EVENT','GFFBGFBBFGBFGBFGBGFBGFB',1,'1233312123','ruia@gmail.com','http://localhost:3000/addpost',10,1,'RUIA College','2024-04-30','https://maps.app.goo.gl/QKMRUnEXbUaprqYW6'),(2,'https://firebasestorage.googleapis.com/v0/b/event-link-b0613.appspot.com/o/All_Posts_Images%2F10_placement.jpeg?alt=media&token=41810dba-0676-444c-b819-33bf4b2702f1','OFF-CAMPUS PLACEMENT','EGGGFBGFBGFBGF',4,'345465464','ruia@gmail.com','http://localhost:3000/addpost',10,1,'RUIA College','2024-04-28','https://maps.app.goo.gl/QKMRUnEXbUaprqYW6'),(7,'https://firebasestorage.googleapis.com/v0/b/event-link-b0613.appspot.com/o/All_Posts_Images%2F7_technical.jpeg?alt=media&token=59dcdcd8-7d5c-4bda-822e-fc251c448a19','TECHNICAL','WEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE',3,'2334545544','somaiya@gmail.com','http://localhost:3000/addpost',7,3,'K.J Somaiya College Of Engineering','2024-04-27','https://maps.app.goo.gl/QKMRUnEXbUaprqYW6'),(8,'https://firebasestorage.googleapis.com/v0/b/event-link-b0613.appspot.com/o/All_Posts_Images%2F7_social.jpeg?alt=media&token=4a4a1cd2-508f-453b-bfdd-76e2a128e8c4','SOCIAL','WWWWWWWWWWWWWWWWWWWWWWWWWWWW',2,'2342344','somaiya@gmail.com','http://localhost:3000/addpost',7,3,'K.J Somaiya College Of Engineering','2024-05-11','https://maps.app.goo.gl/QKMRUnEXbUaprqYW6'),(11,'https://firebasestorage.googleapis.com/v0/b/event-link-b0613.appspot.com/o/All_Posts_Images%2F8_technical.jpeg?alt=media&token=402b6292-8e8b-4556-8ae7-d3795af65581','TECHNICAL','RTRTRTRTRTRTRTRTR',3,'2334545544','kce@gmail.com','http://localhost:3000/addpost',8,5,'K C College Of Engineering','2024-05-04','https://maps.app.goo.gl/QKMRUnEXbUaprqYW6'),(12,'https://firebasestorage.googleapis.com/v0/b/event-link-b0613.appspot.com/o/All_Posts_Images%2F8_social.jpeg?alt=media&token=64ba2e09-f446-4ee5-8f02-2874d84d91d9','SOCIAL','WEREEEEEEEEEEEEEEEEEEE',2,'2334545544','kce@gmail.com','http://localhost:3000/addpost',8,5,'K C College Of Engineering','2024-05-07','https://maps.app.goo.gl/QKMRUnEXbUaprqYW6'),(13,'https://firebasestorage.googleapis.com/v0/b/event-link-b0613.appspot.com/o/All_Posts_Images%2F13_placement.jpeg?alt=media&token=5ac15f33-3317-4501-9877-8f18ab16a69d','PLACEMENT SERIES','vbfvjbfs',4,'2334545544','vivekanand@gmail.com','http://localhost:3000/addpost',13,6,'vivek anand college','2024-04-26','https://maps.app.goo.gl/QKMRUnEXbUaprqYW6');
/*!40000 ALTER TABLE `add_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_profile`
--

DROP TABLE IF EXISTS `admin_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_profile` (
  `admin_id` int NOT NULL AUTO_INCREMENT,
  `profile_img` varchar(255) DEFAULT NULL,
  `college_name` varchar(255) DEFAULT NULL,
  `contact` varchar(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `uid` int DEFAULT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_profile`
--

LOCK TABLES `admin_profile` WRITE;
/*!40000 ALTER TABLE `admin_profile` DISABLE KEYS */;
INSERT INTO `admin_profile` VALUES (1,'https://firebasestorage.googleapis.com/v0/b/event-link-b0613.appspot.com/o/profile_images%2F10_Admin.jpeg?alt=media&token=194ba527-433e-4108-858a-643b23c826ce','RUIA College','2234333444','ruia@gmail.com','weggbfggbbgfbbgfbg',10),(2,'https://firebasestorage.googleapis.com/v0/b/event-link-b0613.appspot.com/o/profile_images%2F6_Admin.jpeg?alt=media&token=818c1595-e9e0-4d11-ae88-935e88d361f0','VPPCOE','2334545544','vppcoe@gmail.com','ffffffffffffffffffffffffffffffffffffff',6),(3,'https://firebasestorage.googleapis.com/v0/b/event-link-b0613.appspot.com/o/profile_images%2F7_Admin.jpeg?alt=media&token=ff0168d6-db33-479c-857f-2f219d2b837d','K.J Somaiya College Of Engineering','3434234432','somaiya@gmail.com','DFDFFFFFFFFFFFFF',7),(4,'https://firebasestorage.googleapis.com/v0/b/event-link-b0613.appspot.com/o/profile_images%2F9_Admin.jpeg?alt=media&token=304c3ead-cc60-40cc-9864-84688be661f9','RAIT','2334545544','rait@gmail.com','ERRRRRRRRRRRRRRRRRRRR',9),(5,'https://firebasestorage.googleapis.com/v0/b/event-link-b0613.appspot.com/o/profile_images%2F8_Admin.jpeg?alt=media&token=f02f6541-93d8-4818-8a33-ac4944bcc386','K C College Of Engineering','2334545544','kce@gmail.com','effdddfdfsfs',8),(6,'https://firebasestorage.googleapis.com/v0/b/event-link-b0613.appspot.com/o/profile_images%2F13_Admin.jpeg?alt=media&token=282d176d-d4ae-4766-8c32-92e1574e36c1','vivek anand college','2334545544','vivekanand@gmail.com','fvfbgbb',13);
/*!40000 ALTER TABLE `admin_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `category_id` int DEFAULT NULL,
  `category_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Cultural'),(2,'Social'),(3,'Technical'),(4,'Placement');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_preference_type`
--

DROP TABLE IF EXISTS `contact_preference_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_preference_type` (
  `contact_preference_id` int NOT NULL,
  `contact_preference_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`contact_preference_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_preference_type`
--

LOCK TABLES `contact_preference_type` WRITE;
/*!40000 ALTER TABLE `contact_preference_type` DISABLE KEYS */;
INSERT INTO `contact_preference_type` VALUES (1,'Email'),(2,'Phone'),(3,'No follow-up needed');
/*!40000 ALTER TABLE `contact_preference_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feedback` (
  `fid` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `feedback_id` int DEFAULT NULL,
  `feedback_subject` varchar(255) DEFAULT NULL,
  `feedback_desc` text,
  `ratings` varchar(255) DEFAULT NULL,
  `attachments` varchar(255) DEFAULT NULL,
  `contact_preference_id` int DEFAULT NULL,
  `uid` int DEFAULT NULL,
  `admin_id` int DEFAULT NULL,
  `user_profile_id` int DEFAULT NULL,
  `feedback_date` date DEFAULT NULL,
  `resolved` int DEFAULT '0',
  `feedback_resolved_date` date DEFAULT NULL,
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` VALUES (1,'User 1','user1@gmail.com',1,'Feedback','fffgfggfgfgfgff','5','https://firebasestorage.googleapis.com/v0/b/event-link-b0613.appspot.com/o/Feebacks%2F1_undefined?alt=media&token=f7d758ad-9171-4af7-b6c6-5ec1e7032c2f',1,1,NULL,1,'2024-04-24',0,NULL),(2,'User 1','user1@gmail.com',2,'Feedback','User 1SFdvdddddd','4','https://firebasestorage.googleapis.com/v0/b/event-link-b0613.appspot.com/o/Feebacks%2F1_undefined?alt=media&token=115d74fc-345c-4a7c-ab91-ea5da21f25de',2,1,NULL,1,'2024-04-24',0,NULL),(3,'User 1','user1@gmail.com',3,'Feedback','ssss','5','https://firebasestorage.googleapis.com/v0/b/event-link-b0613.appspot.com/o/Feebacks%2F1_undefined?alt=media&token=913de102-0c67-4fc8-b3cd-40fc0f92b18c',3,1,NULL,1,'2024-04-24',0,NULL),(4,'User 1','user@gmail.com',3,'Feedback','ssssssssssssssssssssss','5','https://firebasestorage.googleapis.com/v0/b/event-link-b0613.appspot.com/o/Feebacks%2F1_undefined?alt=media&token=0d010b48-9117-48b3-b63b-bb589820f6ed',2,1,NULL,1,'2024-04-24',0,NULL),(5,'User 1','user@gmail.com',4,'Feedback','aaaaaaaaaaaaaaa','1','https://firebasestorage.googleapis.com/v0/b/event-link-b0613.appspot.com/o/Feebacks%2F1_undefined?alt=media&token=c2eb3cc9-677e-4706-8dff-c0806e3334b0',2,1,NULL,1,'2024-04-24',0,NULL),(6,'User 1','user@gmail.com',2,'Testing date ','sssssssssss','3','https://firebasestorage.googleapis.com/v0/b/event-link-b0613.appspot.com/o/Feebacks%2F1_undefined?alt=media&token=3970b41e-11ae-4b38-a13e-76071b46c7a9',3,1,NULL,1,'2024-04-24',0,NULL),(7,'User 1','user@gmail.com',5,'Feedback','sssssssssssssssssssssss','2','https://firebasestorage.googleapis.com/v0/b/event-link-b0613.appspot.com/o/Feebacks%2F1_undefined?alt=media&token=e4b14ae7-8d9a-47f4-9770-2db57172f8e6',1,1,NULL,1,'2024-04-24',0,NULL),(8,'User 7','user@gmail.com',2,'Testing date ','wwwwwwwwwwwwwwwwwwwww','5','https://firebasestorage.googleapis.com/v0/b/event-link-b0613.appspot.com/o/Feebacks%2F1_undefined?alt=media&token=4f16f254-33ad-4a28-bf91-a58a2df352df',3,1,NULL,1,'2024-04-24',0,NULL),(9,'Shreyas','user6@gmail.com',2,'Testing','testing','5','https://firebasestorage.googleapis.com/v0/b/event-link-b0613.appspot.com/o/Feebacks%2F12_60111.jpg?alt=media&token=20792900-a3b5-4ef7-8643-7d633ae6540f',2,12,NULL,6,'2024-04-25',1,'2024-04-25');
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback_type`
--

DROP TABLE IF EXISTS `feedback_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feedback_type` (
  `feedback_id` int NOT NULL,
  `feedback_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`feedback_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback_type`
--

LOCK TABLES `feedback_type` WRITE;
/*!40000 ALTER TABLE `feedback_type` DISABLE KEYS */;
INSERT INTO `feedback_type` VALUES (1,'General Feedback'),(2,'Bug Report'),(3,'Feature Request'),(4,'Suggestion'),(5,'Other');
/*!40000 ALTER TABLE `feedback_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `otps`
--

DROP TABLE IF EXISTS `otps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `otps` (
  `otp_id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `otp` int DEFAULT NULL,
  `created_at` time DEFAULT NULL,
  PRIMARY KEY (`otp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `otps`
--

LOCK TABLES `otps` WRITE;
/*!40000 ALTER TABLE `otps` DISABLE KEYS */;
/*!40000 ALTER TABLE `otps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_profile`
--

DROP TABLE IF EXISTS `user_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_profile` (
  `user_profile_id` int NOT NULL AUTO_INCREMENT,
  `profile_img` varchar(255) DEFAULT NULL,
  `college_name` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `clg_address` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `uid` int DEFAULT NULL,
  PRIMARY KEY (`user_profile_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_profile`
--

LOCK TABLES `user_profile` WRITE;
/*!40000 ALTER TABLE `user_profile` DISABLE KEYS */;
INSERT INTO `user_profile` VALUES (1,'https://firebasestorage.googleapis.com/v0/b/event-link-b0613.appspot.com/o/profile_images%2F1_60111.jpg?alt=media&token=6ebd7108-92cb-4e07-9a17-619d9eec4924','VasantDada Patil College Of Engineering & Visual Arts','2334545544','user1@gmail.com','fbvfvbfivbhvhbvbibvfivbf','User 1',1),(2,'https://firebasestorage.googleapis.com/v0/b/event-link-b0613.appspot.com/o/profile_images%2F2_60111.jpg?alt=media&token=e9254de0-66c4-46eb-8c99-fce9d36dee49','K.J Somaiya College Of Engineering','2234333444','user2@gmail.com','verbrgnnnjmjmjmjmjmjmjm','User 2',2),(3,'https://firebasestorage.googleapis.com/v0/b/event-link-b0613.appspot.com/o/profile_images%2F3_60111.jpg?alt=media&token=afbeceb0-3b03-4a88-8763-3cfb5f0a5d08','RUIA College','2334545544','user3@gmail.com','bgbgfbfgbgf','User 3',3),(4,'https://firebasestorage.googleapis.com/v0/b/event-link-b0613.appspot.com/o/profile_images%2F4_60111.jpg?alt=media&token=3e6f2e82-f1ae-46c6-911e-d296de33b4bf','K C College Of Engineering','1233312123','user4@gmail.com','bgbgbgbgbfbgfbgbfgbfgbfg','User 4',4),(5,'https://firebasestorage.googleapis.com/v0/b/event-link-b0613.appspot.com/o/profile_images%2F5_60111.jpg?alt=media&token=e1037646-17a3-47af-83a8-592abaf4d7e1','VPPCOE','36646655','user5@gmail.com','bdbgfgggg','User 5',5),(6,'https://firebasestorage.googleapis.com/v0/b/event-link-b0613.appspot.com/o/profile_images%2F12_60111.jpg?alt=media&token=30958396-7691-452d-b3dd-6f25620b8c38','gbgb','45544444','user@gmail.com','fvf','bgbg',12);
/*!40000 ALTER TABLE `user_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `uid` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `user_type` int DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'user1@gmail.com',1,'$2b$10$T1CoAqHQK0vE85exc.23XeylpbOcHD0NGBsAN8.d4.9jxxxtbCKki'),(2,'user2@gmail.com',2,'$2b$10$MBeCy0VYO1CZ8W2rFO6i8ucS1yA1hZ9so5k63uVeQ5idDJcyAYlC.'),(3,'user3@gmail.com',2,'$2b$10$uJanuH70K9Og0VsNo5jPoOYYdkAp1Eeel6l05WpTOESoItGhhadWW'),(4,'user4@gmail.com',2,'$2b$10$EN1vUOcCV/J3MxDkXBgPa.E/Mu.gn4.tf1eth75BAUYZvMVNYp0Zy'),(5,'user5@gmail.com',2,'$2b$10$FQKdqw6tccVI/sio.gEIqO2DW2dudsQVCQlETZYP/uQLekqKD7VCO'),(6,'vppcoe@gmail.com',1,'$2b$10$uPrjGFZaC0UOLWlJMKLZ2euY6rnTK3DenAhZdVka9IPmaJxXvmc0W'),(7,'somaiya@gmail.com',1,'$2b$10$46Dd5JoKIZjuUf/jO2.aN.TV3S6bIuHCxQ.ZoVNRmdccffkiC7Plm'),(8,'kce@gmail.com',1,'$2b$10$ioqwJ8D72nKyKse81fMhYeLqSIjOCyT0Y/ARW9B6.KkeJ9FIBDejq'),(9,'rait@gmail.com',1,'$2b$10$V/nH1eU4coStW4bYdw0gxeld68haycLT81uCuUgfJF1lhXdi8H.Jq'),(10,'ruia@gmail.com',1,'$2b$10$Nhtvn4KF5Oj4/AXYtN7wxuYGCkM0fV3MSlJIrbC49czfLLw/SGIuO'),(11,'admin@gmail.com',3,'$2b$10$ajfiCL43ic5e8scejM1eMOledHrDRTp3SuFbDCVUj30Pa4BmX6gte'),(12,'user6@gmail.com',2,'$2b$10$uM86RMejZ.Huiu1gB7Y4D.sjwRptMGdcedkydTNO9fkLaXLwn1Fpi'),(13,'vivekanand@gmail.com',1,'$2b$10$gnfcpLQ/Vv/9gyXyUITN6uZTC9QCfGj1j/pxvlZPsCJBc6PdtzB3C');
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

-- Dump completed on 2024-05-03 16:36:39
