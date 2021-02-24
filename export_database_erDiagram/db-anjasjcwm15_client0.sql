-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: db-anjasjcwm15
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `hp` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `zip` int NOT NULL,
  `credit` int NOT NULL,
  `id_sales` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `client_sales_idx` (`id_sales`),
  CONSTRAINT `client_sales` FOREIGN KEY (`id_sales`) REFERENCES `sales_representative` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` VALUES (1,'Nero','1-192-256-8649','South Sumatra',11634,1647,22),(2,'Porter','1-838-559-4317','Bali',97703,2100,26),(3,'Rhoda','250-3481','Central Java',52110,1442,34),(4,'Hanna','1-609-160-2708','Central Java',53905,3393,9),(5,'Violet','749-6039','Central Java',16558,2509,11),(6,'Aileen','1-481-753-1356','East Java',36898,1440,8),(7,'Jeanette','255-7528','West Java',12320,1344,31),(8,'Stephen','606-2468','West Java',26509,8686,31),(9,'Lysandra','1-943-884-7905','West Java',48493,5770,33),(10,'Cleo','1-448-706-5498','Gorontalo',28099,9748,30),(11,'Simone','222-2631','West Kalimantan',45012,5544,38),(12,'India','364-2526','South Sulawesi',28796,7905,29),(13,'George','927-2914','South Kalimantan',53632,4243,33),(14,'Demetrius','1-505-525-3782','Bali',10196,7655,14),(15,'Quentin','1-178-501-1518','North Sumatra',48595,8247,26),(16,'Ryan','729-8234','West Nusa Tenggara',71432,4091,12),(17,'Evelyn','1-984-305-7880','Banten',46352,2654,21),(18,'Samson','1-211-410-5405','South Kalimantan',56770,2502,31),(19,'Vaughan','1-429-716-9897','Central Sulawesi',85569,6147,30),(20,'Katell','535-5169','West Java',58731,9903,37),(21,'Mia','1-231-470-0787','West Java',58897,5323,31),(22,'Colton','247-5993','West Java',32957,4511,31),(23,'Sarah','1-457-478-0639','North Sumatra',23685,3122,30),(24,'Cheryl','103-0434','Central Java',23977,6361,14),(25,'Hammett','1-527-774-5418','Central Java',18971,8225,27),(26,'Blaine','1-240-667-0194','Maluku',13996,6750,15),(27,'Raja','1-261-141-6447','East Java',75033,1468,23),(28,'Demetria','1-875-153-0264','East Java',61733,2021,29),(29,'Adrienne','566-6504','South Sulawesi',74267,7458,35),(30,'Michelle','638-3881','Banten',19190,9615,23),(31,'Imogene','248-8100','Central Kalimantan',55862,4960,31),(32,'Oliver','1-265-201-4027','West Java',72423,2807,32),(33,'Nichole','487-5530','Jambi',18854,9779,39),(34,'Buckminster','257-9013','South Kalimantan',70527,1602,16),(35,'Elaine','1-245-792-7996','Special Capital Region of Jakarta',61830,7148,39),(36,'Ezekiel','180-3887','West Sumatra',49286,7946,6),(37,'Giacomo','283-9626','West Java',85129,9485,27),(38,'Breanna','965-4896','Lampung',68199,9116,11),(39,'Isaac','1-739-891-2758','West Java',46323,9372,9),(40,'Jasmine','461-3022','West Java',59271,3991,7),(41,'Tarik','174-4187','South Sulawesi',65867,2984,21),(42,'Cheryl','726-3574','West Nusa Tenggara',76888,1061,30),(43,'Cyrus','252-6740','South Sumatra',24148,5338,29),(44,'Macon','705-7583','Central Java',83437,5145,39),(45,'Deborah','819-7028','Aceh',61800,4477,26),(46,'Yoshi','437-0119','East Java',78208,3030,17),(47,'Alexis','1-605-278-4619','West Kalimantan',39365,8678,31),(48,'Reagan','730-8709','East Java',79665,9071,10),(49,'Lila','1-120-249-6152','West Java',46902,4502,23),(50,'Colby','872-1168','West Nusa Tenggara',94426,7443,38),(51,'Hasad','1-589-820-9036','West Java',29018,6428,9),(52,'Griffith','207-8515','East Java',14150,7404,23),(53,'Nasim','673-6065','Central Java',30345,8199,9),(54,'Tyler','1-353-590-4245','Central Java',76148,3743,13),(55,'Finn','1-584-104-8697','West Java',84043,6672,16),(56,'Charity','755-5553','West Java',83689,9615,39),(57,'Palmer','668-7370','West Java',64947,6670,19),(58,'Dominic','869-8806','Jambi',28200,4735,6),(59,'Oscar','846-2473','Jambi',91512,7933,27),(60,'Hakeem','887-5882','West Papua',96155,9210,21),(61,'Price','116-4779','East Java',57091,8902,21),(62,'Lee','716-1523','Riau',60365,9035,8),(63,'September','437-4730','East Java',88363,3228,39),(64,'Jamal','1-796-692-1102','Banten',82382,7759,36),(65,'Nash','325-0798','South Sumatra',31225,7710,35),(66,'Rama','1-171-611-3532','West Java',47668,2099,30),(67,'Hannah','1-570-962-6988','Central Kalimantan',40869,5300,22),(68,'Gage','599-6916','Central Java',53340,4371,34),(69,'Joelle','805-1063','Special Capital Region of Jakarta',87770,4036,6),(70,'Martin','370-4294','East Kalimantan',46303,6322,34),(71,'Cathleen','1-310-105-9034','East Java',69094,7817,14),(72,'James','454-7819','West Nusa Tenggara',24747,5803,11),(73,'Elmo','741-7552','West Java',77865,5377,7),(74,'Karly','346-2781','Central Java',96938,1856,24),(75,'Barry','1-877-957-4069','Aceh',99691,6180,25),(76,'Macon','1-264-352-3687','Central Java',40408,3463,27),(77,'Aurora','873-5383','Central Kalimantan',88427,9571,6),(78,'Abraham','590-9476','Central Java',36351,4581,9),(79,'Vivian','1-998-357-3551','Maluku',42117,7528,21),(80,'Nicholas','1-401-764-4049','Banten',47741,8686,25),(81,'Imogene','1-275-935-7702','West Java',85923,6065,34),(82,'Susan','961-1219','South Sulawesi',75436,9683,18),(83,'Lance','905-2163','Aceh',36915,5174,36),(84,'Phyllis','1-389-418-5227','Bangka Belitung Islands',26731,3267,6),(85,'Dana','866-9808','West Java',19196,7286,24),(86,'Gavin','1-633-462-9759','Aceh',89750,6780,25),(87,'Giacomo','1-373-505-6874','East Nusa Tenggara',71767,1329,9),(88,'Katelyn','323-6085','Central Java',82080,2265,39),(89,'Jamalia','870-4657','East Java',81063,8599,27),(90,'Xavier','501-4136','South Sumatra',74475,7557,22),(91,'Harding','1-899-240-3179','North Sumatra',60645,7280,24),(92,'Aaron','1-570-215-4040','West Java',41307,5375,9),(93,'Malik','1-436-791-5460','Banten',32514,7523,20),(94,'Justine','1-767-438-6529','Central Sulawesi',62846,7797,27),(95,'Marny','520-7175','East Java',76016,2518,18),(96,'Uriah','993-8583','South Sulawesi',43811,5788,15),(97,'Giacomo','424-4843','Special Capital Region of Jakarta',63620,6959,40),(98,'Joseph','1-250-859-4259','East Java',59096,9746,24),(99,'Cassidy','1-254-406-2485','East Nusa Tenggara',60773,2196,18),(100,'Jacqueline','1-644-680-6824','West Java',82924,8942,21);
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-24 16:41:55
