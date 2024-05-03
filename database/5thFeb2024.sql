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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `add_posts`
--

LOCK TABLES `add_posts` WRITE;
/*!40000 ALTER TABLE `add_posts` DISABLE KEYS */;
INSERT INTO `add_posts` VALUES (7,'https://firebasestorage.googleapis.com/v0/b/event-link-b0613.appspot.com/o/All_Posts_Images%2F1_91af597b-7aa6-4e5a-88ec-c360b691af57.jpg?alt=media&token=bd4ce737-ca3e-4ed8-9e30-d60cc10ba1c3','Messi','erewrerffff dfvfdvd dsvvfvvvdfvfvfvfdv vfvdvfdvfvfdvdfvfdvvfd vvdvvdfvfvvdfvdfvfdvfdvdfvfvfdvdvdvd vffvvfvfvfvfvfvfvfvfvfvvfvvfvvfvv',1,'1233312123','test@gmail.com','http://localhost:3000/addpost',1,1,'Dummy','2023-08-24',NULL),(8,'https://firebasestorage.googleapis.com/v0/b/event-link-b0613.appspot.com/o/All_Posts_Images%2F1_IMG_20220114_131152.jpg?alt=media&token=b33bd78d-9a38-45e7-b0ed-71589c04fb08','new 2 ','jnjijuiubb',1,'8787888787','test@gmail.com','http://localhost:3000/addpost6yt',1,1,'Dummy','2023-08-31','ctctytctctyctctctcyycyyyc fcyccycyc ccctc gycvc'),(9,'https://firebasestorage.googleapis.com/v0/b/event-link-b0613.appspot.com/o/All_Posts_Images%2F2_Screenshot%202023-08-02%20234709.png?alt=media&token=7650cd75-4b29-4d3e-ac5f-664880b9ec13','Event Link','vjbvjbf djbvjb vfjvbvfvjvbkvj fjvbfkjvfvjnvn vfdjbvdvfjvbvjbvvjbvjv fjvbvjbvj',3,'2324344344','test@gmail.comgf','http://localhost:3000/eventlink',2,2,'test','2023-08-30','ctctytctctyctctctcyycyyyc fcyccycyc ccctc gycvc'),(11,'https://firebasestorage.googleapis.com/v0/b/event-link-b0613.appspot.com/o/All_Posts_Images%2F3_aa27f4f2-2dbf-4382-8d46-2f11bd943b2b.jpg?alt=media&token=f71ebe13-db86-4d58-a2be-8e592c036843','testing','testing done',2,'2334545544','shreyasgurav1234@gmail.com','http://localhost:3000/eventlink',3,6,'dummmyyy 2','2023-08-29','testing done'),(12,'https://firebasestorage.googleapis.com/v0/b/event-link-b0613.appspot.com/o/All_Posts_Images%2F1_God%20Krishna.jpg?alt=media&token=ce891a0b-9b24-4fde-982d-826684ef1a05','next tech','amchya next tech nakki ya',3,'2335456546','ridzpagare931@gmail.com','http://localhost:3000/addpost',1,1,'VPPCOE','2023-10-07','vppcoe'),(13,'https://firebasestorage.googleapis.com/v0/b/event-link-b0613.appspot.com/o/All_Posts_Images%2F1_Screenshot%202023-07-28%20000751.png?alt=media&token=700048db-9c03-4477-b8eb-43dd629f13ce','new','rrfrffrfrfrfrfr',4,'2323232323','test@gmail.com','http://localhost:3000/addPK',1,1,'VPPCOE','2023-10-06','testing done'),(14,'https://firebasestorage.googleapis.com/v0/b/event-link-b0613.appspot.com/o/All_Posts_Images%2F26_Screenshot%202023-07-28%20000751.png?alt=media&token=f7e8260a-3f78-4a67-b845-c060b989afec','Next tech','ibfvub',3,'534543','vppcoe@gmail.com','http://localhost:3000/addpost6yt',26,11,'VasantDada Patil College Of Engineering','2023-10-07','ooubv'),(16,'https://firebasestorage.googleapis.com/v0/b/event-link-b0613.appspot.com/o/All_Posts_Images%2F1_GETFLY%20LOGO.jpg?alt=media&token=3c3fbcca-3793-48e8-9fee-1da0800556eb','Placements','placements',4,'4434343343','test@gmail.com','http://localhost:3000/eventlink',1,1,'VPPCOE','2023-11-02','https://maps.app.goo.gl/QKMRUnEXbUaprqYW6'),(17,'https://firebasestorage.googleapis.com/v0/b/event-link-b0613.appspot.com/o/All_Posts_Images%2F1_829a0f2e-1498-4841-92a0-c7526d3a03b2.jpeg?alt=media&token=f903b693-b6ff-4e2f-a0b1-71c0cdbb567e','SOCIAL','FDDFFRgfg',2,'2334545544','vu1f2122004@pvppcoe.ac.in','http://localhost:3000/addpost6yt',1,1,'VPPCOE','2023-11-06','ctctytctctyctctctcyycyyyc fcyccycyc ccctc gycvc');
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_profile`
--

LOCK TABLES `admin_profile` WRITE;
/*!40000 ALTER TABLE `admin_profile` DISABLE KEYS */;
INSERT INTO `admin_profile` VALUES (1,'https://firebasestorage.googleapis.com/v0/b/event-link-b0613.appspot.com/o/profile_images%2F1_dd40b927-7da9-4f25-8824-b6fe1690453d.jpeg?alt=media&token=6b352f97-6933-44bf-b9e2-198e2c4efbf3','VPPCOE','4545434543','dummy@gmail.com','fdgfgfgdgfdgfdgfdfdf qrwegrgghthhthhthhthththhththththththththtththththth ',1),(2,'https://firebasestorage.googleapis.com/v0/b/event-link-b0613.appspot.com/o/profile_images%2F2_c50f4fea-f205-49e6-89b9-68142d556c58.jpeg?alt=media&token=06ed923b-4206-4060-b08f-2c728af312ca','Test','2234333444','shreyas1234gurav@gmail.com','rrerewrfewr',2),(6,'https://firebasestorage.googleapis.com/v0/b/event-link-b0613.appspot.com/o/profile_images%2F3_sports%20%20(title%201)1.jpg?alt=media&token=88e727b5-9d0f-41cd-aa92-cfc016af274a','dummmyyy 2','2234333444','shreyas1234gurav@gmail.com','test',3),(8,'https://firebasestorage.googleapis.com/v0/b/event-link-b0613.appspot.com/o/profile_images%2F14_dd40b927-7da9-4f25-8824-b6fe1690453d.jpeg?alt=media&token=14015855-6e00-4fd5-a616-6e2a6ade6983','atharv September Change test','2234333444','atharv@gmail.com','atharv',8),(10,'https://firebasestorage.googleapis.com/v0/b/event-link-b0613.appspot.com/o/profile_images%2F10_SHREYAS%20SIGN.jpg?alt=media&token=4901c00b-7771-4d39-b9ac-c9bcf7b1f4e2','dummmyyy 2','2334545544','shreyas1234gurav@gmail.com','testing',10),(11,'https://firebasestorage.googleapis.com/v0/b/event-link-b0613.appspot.com/o/profile_images%2F26_Screenshot%202023-07-28%20000751.png?alt=media&token=c282db4b-1b62-4fc5-beca-838501bacdb3','VasantDada Patil College Of Engineering','6222252525','cesa@pvppcoe.ac.in','ibvbbib',26),(12,'https://firebasestorage.googleapis.com/v0/b/event-link-b0613.appspot.com/o/profile_images%2F32_svg.png?alt=media&token=62a20edf-816f-42b9-9a28-481bd4ae8da4','Dummy','2342344','shreyas1234gurav@gmail.com','rgrer',32);
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` VALUES (1,'Shreyas Gurav','shreyas1234gurav@gmail.com',2,'Feedback','Testing','5','https://firebasestorage.googleapis.com/v0/b/event-link-b0613.appspot.com/o/Feebacks%2F1_undefined?alt=media&token=3e90d89c-6d6e-4a95-bda8-f3516706d361',1,1,1,NULL,'2023-10-02',1,'2023-10-02'),(2,'User','user@gmail.com',4,'Feedback','test user','4','https://firebasestorage.googleapis.com/v0/b/event-link-b0613.appspot.com/o/Feebacks%2F11_undefined?alt=media&token=39ca2637-1248-4d50-bd50-5fab38964623',3,11,NULL,1,'2023-10-02',1,NULL),(3,'Shreyas Gurav','shreyas1234gurav@gmail.com',1,'Testing date ','testing','3','https://firebasestorage.googleapis.com/v0/b/event-link-b0613.appspot.com/o/Feebacks%2F1_undefined?alt=media&token=5656a148-f336-485b-b85e-386fd267aee1',1,1,1,NULL,'2023-10-02',1,'2023-10-02'),(5,'Messi','messi@gmail.com',3,'Feedback','testing','5','https://firebasestorage.googleapis.com/v0/b/event-link-b0613.appspot.com/o/Feebacks%2F21_Mens%20(title%201)1.jpg?alt=media&token=95985653-16d1-48db-9e59-2296767c0b96',3,21,NULL,6,NULL,1,'2023-10-02'),(6,'User','user@gmail.com',5,'Feedback','teesttt','5','https://firebasestorage.googleapis.com/v0/b/event-link-b0613.appspot.com/o/Feebacks%2F11_86056068-4aea-4f31-8b82-250916322edf.jpg?alt=media&token=54cf4663-c302-4396-8314-7a2ba82cbe05',2,11,NULL,1,NULL,1,'2023-11-06'),(7,'User 2 ','shreyas1234gurav@gmail.com',1,'Testing date ','re','5','https://firebasestorage.googleapis.com/v0/b/event-link-b0613.appspot.com/o/Feebacks%2F11_sports%20%20(title%201)1.jpg?alt=media&token=9d77d60f-8122-4901-bd49-4cd093eb39ce',1,11,NULL,1,'2023-10-02',0,NULL),(9,'shreyas152003','vu1f2122004@pvppcoe.ac.in',3,'Feedback','fee','5','https://firebasestorage.googleapis.com/v0/b/event-link-b0613.appspot.com/o/Feebacks%2F22_undefined?alt=media&token=50a51109-a550-408d-8bcd-c8064203037f',2,22,NULL,7,'2023-10-03',0,NULL),(10,'Shreyas Gurav','shreyas1234gurav@gmail.com',2,'Testing bar graph','Testing bar graph','1','https://firebasestorage.googleapis.com/v0/b/event-link-b0613.appspot.com/o/Feebacks%2F1_undefined?alt=media&token=c0ad55e6-574d-4cae-bfff-9ccc28266345',3,1,1,NULL,'2023-10-03',0,NULL),(11,'Shreyas Gurav','shreyas1234gurav@gmail.com',2,'Testing bar graph','Testing bar graph','2','https://firebasestorage.googleapis.com/v0/b/event-link-b0613.appspot.com/o/Feebacks%2F1_undefined?alt=media&token=f3bab492-9846-4bdd-ae6b-aee7ab6c1c08',2,1,1,NULL,'2023-10-03',0,NULL),(12,'Shreyas Gurav','shreyas1234gurav@gmail.com',4,'Testing bar graph','Testing bar graph','2','https://firebasestorage.googleapis.com/v0/b/event-link-b0613.appspot.com/o/Feebacks%2F1_undefined?alt=media&token=b5d935b4-8e9b-41c6-9ff6-aae15445b1d0',2,1,1,NULL,'2023-10-03',0,NULL),(13,'Riddhi Pagare','ridzpagare931@gmail.com',1,'Feedback','testing','5','https://firebasestorage.googleapis.com/v0/b/event-link-b0613.appspot.com/o/Feebacks%2F24_undefined?alt=media&token=96817f05-419e-4a3d-b2e7-ab458d25a01d',3,24,NULL,8,'2023-10-04',1,'2023-10-04'),(14,'dsgd','dummy@gmail.com',4,'Feedback','jhjhjhjh','5','https://firebasestorage.googleapis.com/v0/b/event-link-b0613.appspot.com/o/Feebacks%2F11_svg.png?alt=media&token=1c900e7c-f9c2-4597-ac42-e0f549a5ff81',3,11,NULL,1,'2023-11-02',0,NULL),(15,'Gaurav Dongre','6gaurav2331@gmail.com',4,'Feedback','EWFFE','5','https://firebasestorage.googleapis.com/v0/b/event-link-b0613.appspot.com/o/Feebacks%2F31_undefined?alt=media&token=9d6e4f98-ff9d-47ad-8de5-af28dd4f6df0',3,31,NULL,13,'2023-11-03',1,'2023-11-03');
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `otps`
--

LOCK TABLES `otps` WRITE;
/*!40000 ALTER TABLE `otps` DISABLE KEYS */;
INSERT INTO `otps` VALUES (1,'shreyas1234gurav@gmail.com',355222,'17:44:45'),(2,'dummy@gmail.com',280142,'17:48:12'),(3,'dummy@gmail.com',292653,'17:50:15'),(4,'user@gmail.com',831840,'18:15:52'),(5,'user@gmail.com',709955,'18:27:53'),(6,'shreyas1234gurav@gmail.com',828719,'16:46:21'),(7,'ridzpagare931@gmail.com',571016,'23:29:45'),(8,'shreyas1234gurav@gmail.com',394703,'14:55:22'),(9,'shreyas1234gurav@gmail.com',725876,'14:55:28'),(10,'6gaurav2331@gmail.com',624028,'14:15:14'),(11,'trying@gmail.com',899532,'13:03:04'),(12,'trying@gmail.com',485631,'13:05:49');
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_profile`
--

LOCK TABLES `user_profile` WRITE;
/*!40000 ALTER TABLE `user_profile` DISABLE KEYS */;
INSERT INTO `user_profile` VALUES (1,'https://firebasestorage.googleapis.com/v0/b/event-link-b0613.appspot.com/o/profile_images%2F11_WhatsApp%20Image%202023-07-27%20at%209.49.04%20PM.jpeg?alt=media&token=03096768-a9e5-43b0-92a9-a17c9e9d2014','VasantDada Patil College Of Engineering','8879794186','shreyas1234gurav@gmail.com','testinggg tinggg','Shreyas Gurav',11),(2,'https://firebasestorage.googleapis.com/v0/b/event-link-b0613.appspot.com/o/profile_images%2F12_Womens%20%20(title%201)1.jpg?alt=media&token=cba69726-90a2-46f6-b1a1-64eb51effc52','VPPCOE','2334545544','riddhipagal@gmail.com','naale ke bajume','Riddhi Pagare',12),(3,'https://firebasestorage.googleapis.com/v0/b/event-link-b0613.appspot.com/o/profile_images%2F13_IMG_20220114_131152.jpg?alt=media&token=92c7bf93-cd79-4f34-a8bf-55e2bf6da361','VJTI','2234333444','vjti@gmail.com','VJTI , WADALA WEST , NEAR 5 GARDEN , MUMBAI - 400031','SOMANSH DANGAL',13),(5,'https://firebasestorage.googleapis.com/v0/b/event-link-b0613.appspot.com/o/profile_images%2F14_4ad71c92-e562-40f5-bf28-a13122bb703d.jpeg?alt=media&token=81b97fe1-2f2c-4c53-96b8-a92b90877215','VPPCOE','3434234432','test@gmail.com','bgfbbgbb','Vaishnavi',16),(6,'https://firebasestorage.googleapis.com/v0/b/event-link-b0613.appspot.com/o/profile_images%2F21_91af597b-7aa6-4e5a-88ec-c360b691af57.jpg?alt=media&token=ac7e6fbb-6f92-4574-84b8-24cfc6e019bd','Test','1234567899','messi@gmail.com','testing','Lionel Messi',21),(7,'https://firebasestorage.googleapis.com/v0/b/event-link-b0613.appspot.com/o/profile_images%2F22_H%20(1).png?alt=media&token=f57f3dff-68d2-4876-a70c-432a03a8beba','Dummy','6565665555','vu1f2122004@pvppcoe.ac.in','343453trgrggrtgt','Shreyas Gurav',22),(8,'https://firebasestorage.googleapis.com/v0/b/event-link-b0613.appspot.com/o/profile_images%2F24_H%20(1).png?alt=media&token=973906d9-9153-49e1-b47a-45ce5c71c3bc','VPPCOE','1323232323','ridzpagare931@gmail.com','sffrrfefrfref','Riddhi Pagare',24),(9,'https://firebasestorage.googleapis.com/v0/b/event-link-b0613.appspot.com/o/profile_images%2F26_Screenshot%202023-07-28%20000751.png?alt=media&token=2c613933-3fb4-4303-b501-3af97b335382','VasantDada Patil College Of Engineering','1233323232','cesa@pvppcoe.ac.in','VASANTDADA PATIL COMPLEX , SION','CESA',26),(10,'https://firebasestorage.googleapis.com/v0/b/event-link-b0613.appspot.com/o/profile_images%2F28_Screenshot%202023-07-28%20000751.png?alt=media&token=f2ccf025-d71c-4324-b7f5-56783e66f5d9','VasantDada Patil College Of Engineering','3423432243','tpo@gmail.com','dfgdgd','Tpo',28),(11,'https://firebasestorage.googleapis.com/v0/b/event-link-b0613.appspot.com/o/profile_images%2F29_Screenshot%202023-09-10%20110856.png?alt=media&token=b6692daa-fb0d-43d7-9adf-51f1bf705be1','frfr','2234333444','snehagurav2000@gmail.com','esfewfe','Mummy',29),(12,'https://firebasestorage.googleapis.com/v0/b/event-link-b0613.appspot.com/o/profile_images%2F30_WhatsApp%20Image%202023-07-31%20at%208.35.22%20PM.jpeg?alt=media&token=3594c703-31e5-4eb9-aabb-920ac340b876','dummmyyy 2','2342344453','user@gmail.com','fghgh','Shreyas Gurav',30),(13,'https://firebasestorage.googleapis.com/v0/b/event-link-b0613.appspot.com/o/profile_images%2F31_86056068-4aea-4f31-8b82-250916322edf.jpg?alt=media&token=1521fb3c-0635-4d8b-a883-ab4eed76fc3b','VPPCOE','3254553454','6gaurav2331@gmail.com','DFBGBGGFBGFBFGB','Gaurav Dongre',31),(14,'https://firebasestorage.googleapis.com/v0/b/event-link-b0613.appspot.com/o/profile_images%2F33_829a0f2e-1498-4841-92a0-c7526d3a03b2.jpeg?alt=media&token=eed2f488-4e2c-4f1f-ae07-d6d536f117f4','fgtg','4534566565','dummy@gmail.com','reggg','Vppcoe',33);
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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'shreyas1234gurav@gmail.com',1,'$2b$10$ctiZJuB2zQU8319o/w3qN.zIdkNXXPTD7CRcCEQ3xdLQ1jQ/CvrB6'),(2,'dummy@gmail.com',1,'$2b$10$vWEIDB8lxWdY0FYKpJqL8u0lAoR9geneDO91YOAmSayepy4LQAp6G'),(8,'atharv@gmail.com',1,'$2b$10$XmN./InkUwSQveHw0uIwqeP8xu0jL2bou6RZaq9zvVIz98Q6upULm'),(11,'user@gmail.com',2,'$2b$10$svZAHZRZHEyKynJ5o5212u0HlOOXxEkic5rRddMcR.Km7cN5etWnq'),(12,'riddhipagal@gmail.com',2,'$2b$10$7DZe.9r3coNy3vSXIbIj6e7gIuSbHt3UKsW.DfxLgaFMf0L5TFJpm'),(14,'eventlink@gmail.com',3,'$2b$10$qEpQ9Muk.iEcLmXQWCK6M.wnBLM7GzqNmXt.7zsaIkuHzpgmv2TQ6'),(16,'vaishnavi@gmail.com',2,'$2b$10$O2lBe1bQElWHUzsYQVI6COM9wbMyhSjy5zfKMh95CoqkesjW6Sd5m'),(17,'developer@gmail.com',3,'$2b$10$OA9oA4dMQ0b2ho7AYRvGmez7csiq0svCOkvrqHm6qJE5B0aHWya6y'),(18,'userclient@gmail.com',2,'$2b$10$wjX1/3aU.Sic/VSBft/V6eN6YYlyTPwnq6vWLaWYFKaUZztQbIyfC'),(19,'adminclient@gmail.com',1,'$2b$10$ONrXN/cnjIUPNZ.V2t9Aruyuod/V0y5YdlwXwsy5HYm/DYsEb9oCu'),(20,'testingclient1@gmail.com',1,'$2b$10$68QEi6xrugO2nkXI0qy.q.9WknsIz.GwbLVU8gR5HEwPdaU8Tsw3y'),(21,'messi@gmail.com',2,'$2b$10$4P1Djjt0mig1MefAEZDZNeHDeav.um7BKuwIeSrUoC/epDrCZ2RDK'),(22,'vu1f2122004@pvppcoe.ac.in',2,'$2b$10$uI4Wbfw4iSo22OhcJbzLHuA6sJ94HHD4MmE05BzjBX9TnmLPXkV.S'),(23,'riddhi@gmail.com',2,'$2b$10$BJ/JNsBtqAc4F0Z.Et0dX.rJDR0g3nA17da3QItZTrMC/Dh8OIu7u'),(24,'ridzpagare931@gmail.com',1,'$2b$10$IfIv.UVUkkMudFbt8Djzqee9aezZbUGxVjN0dowB3cTVEjurGwwgy'),(25,'testinguser@gmail.com',3,'$2b$10$Z1qBdlgTaBOfoloSkhlQp.yj9.W9BRZq3WaVwHlo4qY8gbuLvBTMm'),(26,'cesa@pvppcoe.ac.in',1,'$2b$10$nJjBuqyJdX7znwtcqBtUM.9Lx5YHa5RzSCUrdJnAAtfF05zyR1oAO'),(27,'testingcli1@gmail.com',1,'$2b$10$A.ehWbwjou7mX45iKH.cu.KnHIJGzEajWNblli8T5pQRIk122xBbC'),(28,'tpo@gmail.com',2,'$2b$10$wuq.blT7r.qSGdEBAO1JEO9ymtPyHsNrAEzDm8dQh.1DvVLOy5Byi'),(29,'snehagurav2000@gmail.com',2,'$2b$10$lOjCXBbKGJJ61Wm805CR3.eCaZMvF4A.qkjD6xVQE5q6J2er6eASm'),(30,'newfolder@gmail.com',2,'$2b$10$Ij68QmQl/66r0JWaMM0Q5eA0mleCzsRPiu7RtDS3lVXtwCrguaF7C'),(31,'6gaurav2331@gmail.com',2,'$2b$10$V79I/MOSYNwYS88MxOZKd.ecHKm260F7MGGWmnAi18Ctg88pHIyAu'),(32,'gaurav@gmail.com',1,'$2b$10$Fg5UJXaZecGE5Q0mBBgVD.TltBphI9rUYiKwR10VFygbEuSNKSZ0G'),(33,'vppcoe@gmail.com',2,'$2b$10$9tW5skZxfZBZOKW4QkHilOHfBfH92slKRiUeJqSJKSmL7mR8s.7ou'),(34,'trying@gmail.com',2,'$2b$10$LBF8ozIBGwA.xPP0ftyBq.2sSLF433UyfQiI6Pt466b3PW4BnMT42'),(35,'trying2@gmail.com',2,'$2b$10$XwDPebQuyq1ufNdyjw676OBXbmwnVDiQkRxoJWrXlBYIj6gpnFJiW');
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

-- Dump completed on 2024-02-05 21:35:36
