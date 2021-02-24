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
-- Table structure for table `sales_representative`
--

DROP TABLE IF EXISTS `sales_representative`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales_representative` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `hp` varchar(45) NOT NULL,
  `id_jabatan` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jabatan sales_idx` (`id_jabatan`),
  CONSTRAINT `jabatan sales` FOREIGN KEY (`id_jabatan`) REFERENCES `jabatan` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales_representative`
--

LOCK TABLES `sales_representative` WRITE;
/*!40000 ALTER TABLE `sales_representative` DISABLE KEYS */;
INSERT INTO `sales_representative` VALUES (1,'Caesar','North Sumatra','634-9247',10),(2,'Erasmus','West Java','245-8784',10),(3,'Wing','West Nusa Tenggara','1-363-944-5586',10),(4,'Ferris','West Java','1-584-378-2080',11),(5,'Joel','Riau','830-3365',9),(6,'Unity','Central Java','263-8761',9),(7,'Micah','East Java','1-304-189-7620',9),(8,'Jerome','Central Java','1-386-721-0556',9),(9,'Buffy','Special Region of Yogyakarta','1-474-149-4183',9),(10,'Jana','Riau','1-595-558-7119',9),(11,'Bradley','Special Capital Region of Jakarta','1-994-539-2289',10),(12,'Devin','Special Capital Region of Jakarta','162-9324',10),(13,'Sylvia','Riau Islands','1-120-762-2627',9),(14,'Alexandra','Banten','1-652-134-4450',10),(15,'Jonah','North Sumatra','899-1759',9),(16,'Caesar','East Nusa Tenggara','107-0664',9),(17,'Desiree','East Java','215-3084',11),(18,'Graiden','Central Sulawesi','438-9764',9),(19,'Breanna','North Sumatra','1-372-387-6507',11),(20,'Lila','Central Java','463-1517',9),(21,'Hayley','West Sumatra','1-185-272-1761',10),(22,'Audra','Central Kalimantan','513-2748',9),(23,'Shay','Central Java','921-4411',9),(24,'Angelica','Riau','1-193-728-3958',10),(25,'Alisa','Bali','281-5062',11),(26,'Phelan','West Java','455-0659',10),(27,'Josephine','East Java','1-189-725-4630',9),(28,'Chloe','Central Java','911-8779',11),(29,'Lana','Central Java','1-222-505-2935',11),(30,'Rose','Banten','645-2662',11),(31,'Evan','West Java','1-104-106-9456',11),(32,'Kennan','East Java','595-3084',11),(33,'Macon','Special Region of Yogyakarta','940-5166',10),(34,'Carter','South Sulawesi','1-636-461-6461',11),(35,'Tyrone','West Java','1-239-548-4496',9),(36,'Emmanuel','West Java','1-400-964-0870',9),(37,'Mara','East Java','807-3818',10),(38,'Zorita','West Java','101-6764',11),(39,'Barclay','North Sumatra','1-632-184-3031',11),(40,'Priscilla','Special Capital Region of Jakarta','1-647-571-1388',10),(41,'Stacey','East Java','1-615-646-3375',10),(42,'Calista','East Java','852-1361',11),(43,'Kibo','West Java','1-642-412-0815',9),(44,'Tanek','Central Java','1-394-802-3530',9),(45,'Debra','Special Region of Yogyakarta','1-819-191-6305',10),(46,'Liberty','Central Java','911-3705',11),(47,'Trevor','East Java','1-962-731-9194',10),(48,'Nigel','East Java','1-426-537-9658',9),(49,'Ila','Special Region of Yogyakarta','1-761-691-4945',11),(50,'Todd','West Java','1-469-309-8619',11),(51,'Chastity','East Java','1-631-345-4478',10),(52,'Troy','Aceh','1-959-400-3877',9),(53,'Maisie','Jambi','1-199-298-9406',11),(54,'Keane','West Java','1-909-641-0360',11),(55,'Ria','East Nusa Tenggara','553-6526',10),(56,'Cheyenne','East Java','1-574-572-3011',11),(57,'Vivian','North Sumatra','714-3875',11),(58,'Donna','Central Java','1-934-133-4428',10),(59,'Kennedy','West Java','467-6861',11),(60,'Idola','West Java','625-4449',9),(61,'Troy','Bali','1-393-812-3174',9),(62,'Scarlet','Central Sulawesi','687-7844',10),(63,'Dean','Central Java','1-931-732-6093',11),(64,'Steel','Central Java','1-359-412-0370',9),(65,'Rinah','Central Java','1-250-501-3606',11),(66,'Phoebe','Aceh','484-0218',11),(67,'Tate','West Java','1-927-424-8123',11),(68,'Brenda','Special Capital Region of Jakarta','757-0067',9),(69,'Allegra','Central Java','1-689-526-8828',10),(70,'Bernard','East Java','1-208-123-0492',11),(71,'Xanthus','East Kalimantan','1-422-401-8158',10),(72,'Maxwell','West Java','375-0030',10),(73,'Warren','Riau Islands','676-3092',10),(74,'Ignacia','Bali','469-9191',10),(75,'Emerson','West Java','1-231-559-8373',11),(76,'Kyle','Lampung','879-0388',10),(77,'Flavia','East Java','1-900-416-9837',11),(78,'Yeo','North Sumatra','915-6455',9),(79,'Wynne','Central Java','1-498-286-9445',11),(80,'Magee','West Java','196-2148',10),(81,'Hall','East Nusa Tenggara','1-952-227-3879',9),(82,'Macon','Central Sulawesi','482-7139',10),(83,'Tate','West Sumatra','1-457-575-6535',10),(84,'Barbara','Special Capital Region of Jakarta','316-3195',11),(85,'Drake','Banten','490-7633',9),(86,'Ebony','West Java','103-2821',10),(87,'Olivia','East Nusa Tenggara','551-0178',10),(88,'Irene','West Java','1-963-547-4348',11),(89,'Stone','Special Capital Region of Jakarta','1-166-183-3532',9),(90,'Risa','East Java','159-9999',10),(91,'Walter','Lampung','1-565-148-4637',10),(92,'MacKensie','West Java','807-0528',10),(93,'Linus','West Sumatra','1-796-166-2445',9),(94,'Mariam','East Java','1-640-515-1728',10),(95,'Vance','West Java','371-8665',10),(96,'Leroy','Riau','367-2468',10),(97,'Arden','West Java','1-248-672-2393',10),(98,'Trevor','Gorontalo','982-4129',10),(99,'Ora','South Sulawesi','188-8684',10),(100,'Bert','Banten','1-600-274-8831',10);
/*!40000 ALTER TABLE `sales_representative` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-24 16:40:37
