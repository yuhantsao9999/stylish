-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: localhost    Database: stylish
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
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
 SET character_set_client = utf8mb4 ;
CREATE TABLE `colortest` (
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colortest`
--

LOCK TABLES `colortest` WRITE;
/*!40000 ALTER TABLE `colortest` DISABLE KEYS */;
INSERT INTO `colortest` VALUES ('深藍','334455','men888'),('深藍','334455','men777'),('深藍','334455','men666'),('白色','FFFFFF','men555'),('白色','FFFFFF','men9090'),('白色','FFFFFF','women787'),('白色','FFFFFF','women666'),('白色','FFFFFF','women222'),('白色','FFFFFF','women123'),('白色','FFFFFF','women123'),('白色','FFFFFF','women123'),('白色','FFFFFF','accessories23'),('白色','FFFFFF','accessories23'),('白色','FFFFFF','accessories23'),('白色','FFFFFF','accessories23'),('深藍','334455','accessories23'),('深藍','334455','accessories23'),('深藍','334455','accessories99'),('深藍','334455','accessories7878'),('深藍','334455','men42'),('深藍','334455','men77'),('深藍','334455','men74742'),('深藍','334455','men799'),('深藍','334455','women799'),('深藍','334455','women8746');
/*!40000 ALTER TABLE `colortest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `product` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `texture` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `wash` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `place` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `story` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sizes` varchar(225) COLLATE utf8_unicode_ci DEFAULT NULL,
  `main_image` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `images` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES ('accessories23','鞋子','高抗寒素材選用，保暖也時尚有型',2200,'棉、聚脂纖維','手洗（水溫40度','韓國','實品顏色以單品照為主','你絕對不能錯過的超值商品','S,M,L','\"uploadsmain_image-1563546865955.jpg\"','\"uploadsimages-1563546865956.jpg\",\"uploadsimages-1563546865957.jpg\"','accessories'),('accessories99','外套披肩','高抗寒素材選用，保暖也時尚有型',2200,'棉、聚脂纖維','手洗（水溫40度','韓國','實品顏色以單品照為主','你絕對不能錯過的超值商品','S,M,L','\"uploadsmain_image-1563546881920.jpg\"','\"uploadsimages-1563546881921.jpg\",\"uploadsimages-1563546881921.jpg\"','accessories'),('accessories7878','皮夾','高抗寒素材選用，保暖也時尚有型',2200,'棉、聚脂纖維','手洗（水溫40度','韓國','實品顏色以單品照為主','你絕對不能錯過的超值商品','S,M,L','\"uploadsmain_image-1563546898651.jpg\"','\"uploadsimages-1563546898652.jpg\",\"uploadsimages-1563546898653.jpg\"','accessories'),('men42','厚實毛呢格子外套','高抗寒素材選用，保暖也時尚有型',2200,'棉、聚脂纖維','手洗（水溫40度','韓國','實品顏色以單品照為主','你絕對不能錯過的超值商品','S,M,L','\"uploadsmain_image-1563546922950.jpg\"','\"uploadsimages-1563546922951.jpg\",\"uploadsimages-1563546922951.jpg\"','men'),('men77','長外套','高抗寒素材選用，保暖也時尚有型',2200,'棉、聚脂纖維','手洗（水溫40度','韓國','實品顏色以單品照為主','你絕對不能錯過的超值商品','S,M,L','\"uploadsmain_image-1563546938004.jpg\"','\"uploadsimages-1563546938005.jpg\",\"uploadsimages-1563546938006.jpg\"','men'),('men74742','短外套','高抗寒素材選用，保暖也時尚有型',2200,'棉、聚脂纖維','手洗（水溫40度','韓國','實品顏色以單品照為主','你絕對不能錯過的超值商品','S,M,L','\"uploadsmain_image-1563546951061.jpg\"','\"uploadsimages-1563546951062.jpg\",\"uploadsimages-1563546951063.jpg\"','men'),('men799','長袖','高抗寒素材選用，保暖也時尚有型',2200,'棉、聚脂纖維','手洗（水溫40度','韓國','實品顏色以單品照為主','你絕對不能錯過的超值商品','S,M,L','\"uploadsmain_image-1563546975586.jpg\"','\"uploadsimages-1563546975586.jpg\",\"uploadsimages-1563546975587.jpg\"','men'),('women799','裙子','高抗寒素材選用，保暖也時尚有型',2200,'棉、聚脂纖維','手洗（水溫40度','韓國','實品顏色以單品照為主','你絕對不能錯過的超值商品','S,M,L','\"uploadsmain_image-1563547003662.jpg\"','\"uploadsimages-1563547003663.jpg\",\"uploadsimages-1563547003666.jpg\"','women'),('women8746','j94wl4','高抗寒素材選用，保暖也時尚有型',2200,'棉、聚脂纖維','手洗（水溫40度','韓國','實品顏色以單品照為主','你絕對不能錯過的超值商品','S,M,L','\"uploadsmain_image-1563547014045.jpg\"','\"uploadsimages-1563547014045.jpg\",\"uploadsimages-1563547014046.jpg\"','women'),('women789','鞋子','高抗寒素材選用，保暖也時尚有型',2200,'棉、聚脂纖維','手洗（水溫40度','韓國','實品顏色以單品照為主','你絕對不能錯過的超值商品','S,M,L','\"uploadsmain_image-1563547048849.jpg\"','\"uploadsimages-1563547048850.jpg\",\"uploadsimages-1563547048851.jpg\"','women');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `variant`
--

DROP TABLE IF EXISTS `variant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `variant` (
  `color_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stock` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `variant`
--

LOCK TABLES `variant` WRITE;
/*!40000 ALTER TABLE `variant` DISABLE KEYS */;
INSERT INTO `variant` VALUES ('FFFFFF','S','0','accessories23'),('FFFFFF','S','0','accessories99'),('FFFFFF','S','0','accessories7878'),('FFFFFF','S','0','men42'),('FFFFFF','S','0','men77'),('FFFFFF','S','0','men74742'),('FFFFFF','S','0','men799'),('FFFFFF','S','0','women799'),('FFFFFF','S','0','women8746'),('FFFFFF','S','0','women111'),('FFFFFF','S','0','women111');
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

-- Dump completed on 2019-07-20  0:00:04
