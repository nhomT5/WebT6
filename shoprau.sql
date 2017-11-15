-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: shoprau
-- ------------------------------------------------------
-- Server version	5.7.18-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,3,'7up','/image/7up.jpg',18,'Là loại thực phẩm giàu dinh dưỡng, bổ sung thêm nhiều chất, giúp tăng sức đề kháng.Là loại thực phẩm giàu dinh dưỡng, bổ sung thêm nhiều chất, giúp tăng sức đề kháng.',0,1),(2,3,'Bia','/image/ba.jpg',10,'Là loại thực phẩm giàu dinh dưỡng, bổ sung thêm nhiều chất, giúp tăng sức đề kháng.',1,0),(3,1,'Bầu','/image/bau.jpg',30,'Là loại thực phẩm giàu dinh dưỡng, bổ sung thêm nhiều chất, giúp tăng sức đề kháng.',0,1),(4,1,'Bí ngô','/image/bingo.jpg',20,'Là loại thực phẩm giàu dinh dưỡng, bổ sung thêm nhiều chất, giúp tăng sức đề kháng.',1,1),(5,2,'Bơ','/image/bo.jpg',60,'Là loại thực phẩm giàu dinh dưỡng, bổ sung thêm nhiều chất, giúp tăng sức đề kháng.',1,0),(6,2,'Bưởi','/image/buoi.jpg',70,'Là loại thực phẩm giàu dinh dưỡng, bổ sung thêm nhiều chất, giúp tăng sức đề kháng.',0,0),(7,1,'Cà chua','/image/cachua.jpg',30,'Là loại thực phẩm giàu dinh dưỡng, bổ sung thêm nhiều chất, giúp tăng sức đề kháng.',1,0),(8,1,'Cà chua bi','/image/cachuabi.jpg',40,'Là loại thực phẩm giàu dinh dưỡng, bổ sung thêm nhiều chất, giúp tăng sức đề kháng.',1,0),(9,1,'Cải','/image/cai.jpg',20,'Là loại thực phẩm giàu dinh dưỡng, bổ sung thêm nhiều chất, giúp tăng sức đề kháng.',0,0),(10,1,'Cải bắp','/image/caibap.jpg',20,'Là loại thực phẩm giàu dinh dưỡng, bổ sung thêm nhiều chất, giúp tăng sức đề kháng.',0,0),(11,1,'Cải chíp','/image/caichip.jpg',25,'Là loại thực phẩm giàu dinh dưỡng, bổ sung thêm nhiều chất, giúp tăng sức đề kháng.',0,0),(12,1,'Cải ngồng','/image/caingon.jpg',27,'Là loại thực phẩm giàu dinh dưỡng, bổ sung thêm nhiều chất, giúp tăng sức đề kháng.',0,0),(13,1,'Cải ngọt','/image/caingot.jpg',29,'Là loại thực phẩm giàu dinh dưỡng, bổ sung thêm nhiều chất, giúp tăng sức đề kháng.',0,0),(14,1,'Cải thảo','/image/caithao.jpg',30,'Là loại thực phẩm giàu dinh dưỡng, bổ sung thêm nhiều chất, giúp tăng sức đề kháng.',0,1),(15,2,'Cam','/image/cam.jpg',50,'Là loại thực phẩm giàu dinh dưỡng, bổ sung thêm nhiều chất, giúp tăng sức đề kháng.',1,1),(16,1,'Cần tây','/image/cantay.jpg',20,'Là loại thực phẩm giàu dinh dưỡng, bổ sung thêm nhiều chất, giúp tăng sức đề kháng.',0,1),(17,1,'Cà rốt','/image/carot.jpg',30,'Là loại thực phẩm giàu dinh dưỡng, bổ sung thêm nhiều chất, giúp tăng sức đề kháng.',0,1),(18,1,'Cà tím','/image/catim.jpg',23,'Là loại thực phẩm giàu dinh dưỡng, bổ sung thêm nhiều chất, giúp tăng sức đề kháng.',0,0),(19,4,'Cerers','/image/cerers.jpg',60,'Là loại thực phẩm giàu dinh dưỡng, bổ sung thêm nhiều chất, giúp tăng sức đề kháng.',0,0),(20,2,'Chuối','/image/chuoi.jpg',25,'Là loại thực phẩm giàu dinh dưỡng, bổ sung thêm nhiều chất, giúp tăng sức đề kháng.',0,0),(21,3,'Coca Cola','/image/coca.jpg',10,'Là loại thực phẩm giàu dinh dưỡng, bổ sung thêm nhiều chất, giúp tăng sức đề kháng.',1,0),(22,1,'Củ dền','/image/cuden.jpg',90,'Là loại thực phẩm giàu dinh dưỡng, bổ sung thêm nhiều chất, giúp tăng sức đề kháng.',0,0),(23,2,'Dâu tây','/image/dautay.jpg',100,'Là loại thực phẩm giàu dinh dưỡng, bổ sung thêm nhiều chất, giúp tăng sức đề kháng.',1,0),(24,1,'Dưa chuột','/image/duachuot.jpg',30,'Là loại thực phẩm giàu dinh dưỡng, bổ sung thêm nhiều chất, giúp tăng sức đề kháng.',0,0),(25,2,'Dưa gang','/image/duagang.jpg',80,'Là loại thực phẩm giàu dinh dưỡng, bổ sung thêm nhiều chất, giúp tăng sức đề kháng.',0,0),(26,4,'GAC','/image/gac.jpg',30,'Là loại thực phẩm giàu dinh dưỡng, bổ sung thêm nhiều chất, giúp tăng sức đề kháng.',0,0),(27,1,'Hành tây','/image/hanhtay.jpg',20,'Là loại thực phẩm giàu dinh dưỡng, bổ sung thêm nhiều chất, giúp tăng sức đề kháng.',0,0),(28,1,'Khoai lang','/image/khoailang.jpg',30,'Là loại thực phẩm giàu dinh dưỡng, bổ sung thêm nhiều chất, giúp tăng sức đề kháng.',0,0),(29,2,'Lê','/image/le.jpg',50,'Là loại thực phẩm giàu dinh dưỡng, bổ sung thêm nhiều chất, giúp tăng sức đề kháng.',0,0),(30,4,'Malee','/image/malee.jpg',40,'Là loại thực phẩm giàu dinh dưỡng, bổ sung thêm nhiều chất, giúp tăng sức đề kháng.',0,0),(31,1,'Ngô ngọt','/image/ngongot.jpg',23,'Là loại thực phẩm giàu dinh dưỡng, bổ sung thêm nhiều chất, giúp tăng sức đề kháng.',0,0),(32,2,'Nhãn','/image/nhan.jpg',40,'Là loại thực phẩm giàu dinh dưỡng, bổ sung thêm nhiều chất, giúp tăng sức đề kháng.',0,0),(33,2,'Nho','/image/ngo.jpg',90,'Là loại thực phẩm giàu dinh dưỡng, bổ sung thêm nhiều chất, giúp tăng sức đề kháng.',0,0),(34,4,'Nước ép cam','/image/nuoccam.jpn',40,'Là loại thực phẩm giàu dinh dưỡng, bổ sung thêm nhiều chất, giúp tăng sức đề kháng.',0,1),(35,4,'Nước ép dâu','/image/nuocdau.jpg',20,'Là loại thực phẩm giàu dinh dưỡng, bổ sung thêm nhiều chất, giúp tăng sức đề kháng.',0,1),(36,4,'Nước ép Nhật','/image/nuocnhat.jpg',10,'Là loại thực phẩm giàu dinh dưỡng, bổ sung thêm nhiều chất, giúp tăng sức đề kháng.',0,1),(37,4,'Nước ép xoài','/image/nuocxoai.jpg',20,'Là loại thực phẩm giàu dinh dưỡng, bổ sung thêm nhiều chất, giúp tăng sức đề kháng.',0,0),(38,2,'Ổi','/image/oi.jpg',20,'Là loại thực phẩm giàu dinh dưỡng, bổ sung thêm nhiều chất, giúp tăng sức đề kháng.',0,0),(39,3,'Pepsi','/image/pepsi.jpg',10,'Là loại thực phẩm giàu dinh dưỡng, bổ sung thêm nhiều chất, giúp tăng sức đề kháng.',0,0),(40,2,'Quýt','/image/quyt.jpg',40,'Là loại thực phẩm giàu dinh dưỡng, bổ sung thêm nhiều chất, giúp tăng sức đề kháng.',0,0),(41,1,'Rau khoai lang','/image/raukhoailang.jpg',20,'Là loại thực phẩm giàu dinh dưỡng, bổ sung thêm nhiều chất, giúp tăng sức đề kháng.',0,0),(42,4,'Spicy','/image/spicy.jpg',12,'Là loại thực phẩm giàu dinh dưỡng, bổ sung thêm nhiều chất, giúp tăng sức đề kháng.',0,0),(43,3,'Sprite','/image/sprite.jpg',23,'Là loại thực phẩm giàu dinh dưỡng, bổ sung thêm nhiều chất, giúp tăng sức đề kháng.',0,0),(44,3,'Sting','/image/sting.jpg',10,'Là loại thực phẩm giàu dinh dưỡng, bổ sung thêm nhiều chất, giúp tăng sức đề kháng.',0,1),(45,1,'Súp lơ','/image/suplo.jpg',30,'Là loại thực phẩm giàu dinh dưỡng, bổ sung thêm nhiều chất, giúp tăng sức đề kháng.',1,1),(46,1,'Xà lách','/image/xalach.jpg',20,'Là loại thực phẩm giàu dinh dưỡng, bổ sung thêm nhiều chất, giúp tăng sức đề kháng.',NULL,NULL),(47,1,'Xà lách xoăn','/image/xalachxoan.jpg',30,'Là loại thực phẩm giàu dinh dưỡng, bổ sung thêm nhiều chất, giúp tăng sức đề kháng.',1,NULL),(48,2,'Xoài','/image/xoai.jpg',60,'Là loại thực phẩm giàu dinh dưỡng, bổ sung thêm nhiều chất, giúp tăng sức đề kháng.',1,NULL),(49,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-11-15 16:39:23
