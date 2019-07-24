-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: localhost    Database: stylish
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `colortest`
--

DROP TABLE IF EXISTS `colortest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8 ;
CREATE TABLE `colortest` (
  `name` varchar(255) COLLATE utf8_general_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_general_ci DEFAULT NULL,
  `id` varchar(45) COLLATE utf8_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colortest`
--

LOCK TABLES `colortest` WRITE;
/*!40000 ALTER TABLE `colortest` DISABLE KEYS */;
INSERT INTO `colortest` VALUES ('深藍','334455','wwwwwww123'),('深藍','334455','mmmmm123'),('深藍','334455','accessories123'),('白色','FFFFFF','accessories344'),('白色','FFFFFF','accessories999'),('白色','FFFFFF','men777'),('深藍','334455','women888'),('深藍','334455','www0987'),('深藍','334455','www674'),('深藍','334455','www200'),('深藍','334455','MMM200'),('深藍','334455','MMM654'),('深藍','334455','accessories876'),('深藍','334455','accessories876');
/*!40000 ALTER TABLE `colortest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8 ;
CREATE TABLE `product` (
  `id` varchar(255) COLLATE utf8_general_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_general_ci DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `texture` varchar(255) COLLATE utf8_general_ci DEFAULT NULL,
  `wash` varchar(45) COLLATE utf8_general_ci DEFAULT NULL,
  `place` varchar(45) COLLATE utf8_general_ci DEFAULT NULL,
  `note` varchar(45) COLLATE utf8_general_ci DEFAULT NULL,
  `story` varchar(255) COLLATE utf8_general_ci DEFAULT NULL,
  `sizes` varchar(225) COLLATE utf8_general_ci DEFAULT NULL,
  `main_image` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `images` varchar(255) COLLATE utf8_general_ci DEFAULT NULL,
  `category` varchar(45) COLLATE utf8_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES ('sdjf123lj','厚實毛呢格子外套','高抗寒素材選用，保暖也時尚有型',2200,'棉、聚脂纖維','手洗（水溫40度','韓國','實品顏色以單品照為主','你絕對不能錯過的超值商品','S,M,L','\"uploadsmain_image-1563377347972.jpg\"','\"uploadsimages-1563377347974.jpg\",\"uploadsimages-1563377347974.jpg\",\"uploadsimages-1563377347975.jpg\"','men'),('wwwwwww123','裙子','保暖也時尚有型',200,'棉、聚脂纖維','手洗（水溫41度','韓國','實品顏色以單品照為主','你絕對不能錯過的超值商品','S,M,L','\"uploadsmain_image-1563377478093.jpg\"','\"uploadsimages-1563377478098.jpg\",\"uploadsimages-1563377478099.jpg\",\"uploadsimages-1563377478100.jpg\"','women'),('mmmmm123','襯衫','保暖也時尚有型',200,'棉、聚脂纖維','手洗（水溫42度','韓國','實品顏色以單品照為主','你絕對不能錯過的超值商品','S,M,L','\"uploadsmain_image-1563377521810.jpg\"','\"uploadsimages-1563377521811.jpg\",\"uploadsimages-1563377521811.jpg\",\"uploadsimages-1563377521813.jpg\"','men'),('accessories123','QU6RU86','保暖也時尚有型',12300,'棉、聚脂纖維','手洗（水溫43度','韓國','實品顏色以單品照為主','你絕對不能錯過的超值商品','S,M,L','\"uploadsmain_image-1563377567430.jpg\"','\"uploadsimages-1563377567431.jpg\",\"uploadsimages-1563377567432.jpg\",\"uploadsimages-1563377567434.jpg\"','accessories'),('accessories344','項鍊','時尚有型',34400,'棉、聚脂纖維','手洗（水溫43度','韓國','實品顏色以單品照為主','你絕對不能錯過的超值商品','S,M,L','\"uploadsmain_image-1563377653850.jpg\"','\"uploadsimages-1563377653852.jpg\",\"uploadsimages-1563377653854.jpg\",\"uploadsimages-1563377653855.jpg\"','accessories'),('accessories999','帽子','時尚有型',999,'棉、聚脂纖維','手洗（水溫43度','韓國','實品顏色以單品照為主','你絕對不能錯過的超值商品','S,M,L','\"uploadsmain_image-1563377703301.jpg\"','\"uploadsimages-1563377703302.jpg\",\"uploadsimages-1563377703303.jpg\",\"uploadsimages-1563377703303.jpg\"','accessories'),('men777','西裝','時尚有型',777,'棉、聚脂纖維','手洗（水溫43度','韓國','實品顏色以單品照為主','你絕對不能錯過的超值商品','S,M,L','\"uploadsmain_image-1563377767062.jpg\"','\"uploadsimages-1563377767063.jpg\",\"uploadsimages-1563377767080.jpg\",\"uploadsimages-1563377767081.jpg\"','men'),('women888','休閒T','時尚有型',888,'棉、聚脂纖維','手洗（水溫43度','韓國','實品顏色以單品照為主','你絕對不能錯過的超值商品','S,M,L','\"uploadsmain_image-1563377867140.jpg\"','\"uploadsimages-1563377867141.jpg\",\"uploadsimages-1563377867142.jpg\",\"uploadsimages-1563377867142.jpg\"','women'),('www0987','牛仔褲','高抗寒素材選用',987,'聚脂纖維','手洗（水溫40度','韓國','實品顏色以單品照為主','你絕對不能錯過的超值商品','S,M,L','\"uploadsmain_image-1563379651276.jpg\"','\"uploadsimages-1563379651279.jpg\",\"uploadsimages-1563379651282.jpg\"','women'),('www674','長裙','高抗寒素材選用',674,'聚脂纖維','手洗（水溫40度','韓國','實品顏色以單品照為主','你絕對不能錯過的超值商品','S,M,L','\"uploadsmain_image-1563379702745.jpg\"','\"uploadsimages-1563379702747.jpg\",\"uploadsimages-1563379702748.jpg\"','women'),('www200','寬褲','高抗寒素材選用',200,'聚脂纖維','手洗（水溫40度','韓國','實品顏色以單品照為主','你絕對不能錯過的超值商品','S,M,L','\"uploadsmain_image-1563379745884.jpg\"','\"uploadsimages-1563379745885.jpg\",\"uploadsimages-1563379745886.jpg\"','women'),('MMM200','褲子','高抗寒素材選用',200,'聚脂纖維','手洗（水溫40度','韓國','實品顏色以單品照為主','你絕對不能錯過的超值商品','S,M,L','\"uploadsmain_image-1563379789532.jpg\"','\"uploadsimages-1563379789533.jpg\",\"uploadsimages-1563379789533.jpg\"','men'),('MMM654','帽踢','高抗寒素材選用',654,'聚脂纖維','手洗（水溫40度','韓國','實品顏色以單品照為主','你絕對不能錯過的超值商品','S,M,L','\"uploadsmain_image-1563379821675.jpg\"','\"uploadsimages-1563379821676.jpg\",\"uploadsimages-1563379821678.jpg\"','men'),('accessories876','皮帶','高抗寒素材選用',876,'聚脂纖維','手洗（水溫40度','韓國','實品顏色以單品照為主','你絕對不能錯過的超值商品','S,M,L','\"uploadsmain_image-1563379866304.jpg\"','\"uploadsimages-1563379866305.jpg\",\"uploadsimages-1563379866306.jpg\"','accessories'),('accessories876','襪子','高抗寒素材選用',876,'聚脂纖維','手洗（水溫40度','韓國','實品顏色以單品照為主','你絕對不能錯過的超值商品','S,M,L','\"uploadsmain_image-1563379875133.jpg\"','\"uploadsimages-1563379875134.jpg\",\"uploadsimages-1563379875135.jpg\"','accessories');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `variant`
--

DROP TABLE IF EXISTS `variant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8 ;
CREATE TABLE `variant` (
  `color_code` varchar(255) COLLATE utf8_general_ci DEFAULT NULL,
  `size` varchar(45) COLLATE utf8_general_ci DEFAULT NULL,
  `stock` varchar(45) COLLATE utf8_general_ci DEFAULT NULL,
  `id` varchar(45) COLLATE utf8_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `variant`
--

LOCK TABLES `variant` WRITE;
/*!40000 ALTER TABLE `variant` DISABLE KEYS */;
INSERT INTO `variant` VALUES ('334455','S','5','wwwwwww123'),('334455','S','5','mmmmm123'),('334455','S','5','accessories123'),('334455','L','10','accessories344'),('334455','L','10','accessories999'),('334455','L','10','men777'),('334455','L','0','women888'),('334455','S','5','www0987'),('334455','S','5','www674'),('334455','S','5','www200'),('334455','S','5','MMM200'),('334455','S','5','MMM654'),('334455','S','5','accessories876'),('334455','S','5','accessories876');
/*!40000 ALTER TABLE `variant` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-07-19  0:31:19
