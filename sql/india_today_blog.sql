-- MySQL dump 10.13  Distrib 8.0.28, for macos11 (x86_64)
--
-- Host: localhost    Database: india_today
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `blog`
--

DROP TABLE IF EXISTS `blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(45) DEFAULT NULL,
  `short_description` varchar(105) DEFAULT NULL,
  `category` varchar(45) DEFAULT NULL,
  `author` varchar(45) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog`
--

LOCK TABLES `blog` WRITE;
/*!40000 ALTER TABLE `blog` DISABLE KEYS */;
INSERT INTO `blog` VALUES (1,'this is tech title','some content related to tech','tech','techie','https://miro.medium.com/max/1200/0*YjaSWtPQsM1qdmeX.jpg','2022-02-15 00:00:00'),(2,'this is 2 tech title','some content related to 2 tech','tech','techie 2','https://miro.medium.com/max/1200/0*YjaSWtPQsM1qdmeX.jpg','2022-02-16 00:00:00'),(3,'this is 3 tech title','some content related to 3 tech','tech','techie 3','https://miro.medium.com/max/1200/0*YjaSWtPQsM1qdmeX.jpg','2022-02-17 00:00:00'),(4,'this is 4 tech title','some content related to 4 tech','tech','techie 4','https://miro.medium.com/max/1200/0*YjaSWtPQsM1qdmeX.jpg','2022-02-18 00:00:00'),(5,'this is ui title','some content related to ui','ui','ui enthusiast','https://us.123rf.com/450wm/azuzl/azuzl1812/azuzl181200077/116036006-beautiful-enthusiastic-cartoon-brunette-girl-with-dark-chocolate-hair-portrait-isolated-on-white-bac.jpg?ver=6','2022-02-19 00:00:00'),(6,'this is ui title 2','some content related to ui 2','ui','ui enthusiast 2','https://us.123rf.com/450wm/azuzl/azuzl1812/azuzl181200077/116036006-beautiful-enthusiastic-cartoon-brunette-girl-with-dark-chocolate-hair-portrait-isolated-on-white-bac.jpg?ver=6','2022-02-20 00:00:00'),(7,'this is ui title 3','some content related to ui 3','ui','ui enthusiast 3','https://us.123rf.com/450wm/azuzl/azuzl1812/azuzl181200077/116036006-beautiful-enthusiastic-cartoon-brunette-girl-with-dark-chocolate-hair-portrait-isolated-on-white-bac.jpg?ver=6','2022-02-21 00:00:00'),(8,'this is marketing title','some content related to marketing','marketing','marketer','https://www.pngitem.com/pimgs/m/226-2264740_blog-logo-logistics-sales-sales-and-marketing-cartoon.png','2022-02-22 00:00:00'),(9,'this is marketing title 2','some content related to marketing 2','marketing','marketer 2','https://www.pngitem.com/pimgs/m/226-2264740_blog-logo-logistics-sales-sales-and-marketing-cartoon.png','2022-02-23 00:00:00'),(10,'this is marketing title 3','some content related to marketing 3','marketing','marketer 3','https://www.pngitem.com/pimgs/m/226-2264740_blog-logo-logistics-sales-sales-and-marketing-cartoon.png','2022-02-24 00:00:00');
/*!40000 ALTER TABLE `blog` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-02-17 23:22:40
