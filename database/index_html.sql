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
-- Table structure for table `campaign`
--

DROP TABLE IF EXISTS `campaign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `campaign` (
  `product_id` int(11) NOT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `story` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaign`
--

LOCK TABLES `campaign` WRITE;
/*!40000 ALTER TABLE `campaign` DISABLE KEYS */;
INSERT INTO `campaign` VALUES (999,'kjlk','Story'),(9999,'\"campaigns新專案.PNG-1563616107947.jpg\"','ksjalkdjk opopow,vkpf哈哈哈哈'),(333,'\"campaigns新專案.PNG-1563617644039.jpg\"','sdfdg'),(12345,'\"uploadsCampaigns新專案位置.PNG-1563644681546.jpg\"','cjo42j4oa87 2jo4a87\r\n?');
/*!40000 ALTER TABLE `campaign` ENABLE KEYS */;
UNLOCK TABLES;

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
INSERT INTO `colortest` VALUES ('深藍','334455','201807201824'),('深藍','334455','201807202140'),('淺藍','84c1ff','201807202157'),('黑色','000000','201807242222'),('灰色','adadad','201807242216'),('棕色','842b00','201807242228');
/*!40000 ALTER TABLE `colortest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `list`
--

DROP TABLE IF EXISTS `list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `prime` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `size` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `buyer` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `list`
--

LOCK TABLES `list` WRITE;
/*!40000 ALTER TABLE `list` DISABLE KEYS */;
INSERT INTO `list` VALUES (1,'9291f0d90d7fea93ecb54f5da284a12414c8b053334a4178e1701e6a5a44bbac','yuhan@yuhan','pay',1299,'M',1300,'guest','淺藍','yuhan'),(2,'d89d26cefcd2ad1861ec1803b0353f6d1b816dc48cf11e8ad6e18258c78e400c','yuhan@yuhan','pay',1299,'M',1300,'guest','淺藍','yuhan'),(3,'d1a1286e4e62c3649b9971608544a38fe0dd47a0784d92011010c78586617cf4','yuhan@yuhan','pay',1299,'M',1300,'guest','淺藍','yuhan'),(4,'4ffcba4a2063b7bd174b2c6b9b24a2400d0360278f87d5f2cca42ccf085ebaea','yuhan@yuhan','pay',1299,'M',1300,'guest','淺藍','yuhan'),(5,'d67eeb724f7332b0e08d70a016338ee21d31c912307f2fa8d902eac22ca03826','yuhan@yuhan','pay',1299,'M',1300,'guest','淺藍','yuhan'),(6,'d8ff8463aae366787cffbca03af733726bd68ebd26a4ebaa544750cbcb98f0ca','yuhan@yuhan','pay',1299,'M',1300,'guest','淺藍','yuhan'),(7,'ed3665351239ec34d9ce3db11e579354dba189e2e936efad93bb2591d130f08c','yuhan@yuhan','pay',1299,'M',1300,'guest','淺藍','yuhan'),(8,'7822d164e6f24f0f177c93f8d16df1988a9b710e70e86481cdc146c8e8dca08e','yuhan@yuhan','pay',1299,'M',1300,'guest','淺藍','yuhan'),(9,'8395bddf4867548a68cee104b79754890fd642ee69ce2291ed4c52a771465648','yuhan@yuhan','pay',1299,'M',1300,'guest','淺藍','yuhan');
/*!40000 ALTER TABLE `list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `product` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `texture` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `wash` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `place` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `story` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sizes` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `main_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `images` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES ('201807201824','前開衩扭結洋裝','高抗寒素材選用，保暖也時尚有型',799,'棉、聚脂纖維','手洗（水溫40度','韓國','實品顏色以單品照為主','你絕對不能錯過的超值商品','S,M,L','women','main_image-1564158920850.jpg','images-1564158920870.jpg,images-1564158920891.jpg'),('201807202140','透肌澎澎防曬襯衫','高抗寒素材選用，保暖也時尚有型',599,'棉、聚脂纖維','手洗（水溫40度','韓國','實品顏色以單品照為主','你絕對不能錯過的超值商品','S,M,L','women','main_image-1564158985839.jpg','images-1564158985862.jpg,images-1564158985870.jpg'),('201807202157','活力花紋長筒牛仔褲','高抗寒素材選用，保暖也時尚有型',1299,'棉、聚脂纖維','手洗（水溫40度','韓國','實品顏色以單品照為主','你絕對不能錯過的超值商品','S,M,L','women','main_image-1564159082371.jpg','images-1564159082390.jpg,images-1564159082400.jpg'),('201807242216','時尚輕鬆休閒西裝','高抗寒素材選用，保暖也時尚有型',2399,'棉、聚脂纖維','手洗（水溫40度','韓國','實品顏色以單品照為主','你絕對不能錯過的超值商品','M,L,','men','main_image-1564159298961.jpg','images-1564159298979.jpg,images-1564159298986.jpg'),('201807242222','經典商務西裝','高抗寒素材選用，保暖也時尚有型',3999,'棉、聚脂纖維','手洗（水溫40度','韓國','實品顏色以單品照為主','你絕對不能錯過的超值商品','M,L,','men','main_image-1564159200659.jpg','images-1564159200667.jpg,images-1564159200678.jpg'),('201807242228','夏日海灘戶外遮陽帽','高抗寒素材選用，保暖也時尚有型',1499,'棉、聚脂纖維','手洗（水溫40度','中國','實品顏色以單品照為主','你絕對不能錯過的超值商品','M,L,','accessories','main_image-1564159404837.jpg','images-1564159404845.jpg,images-1564159404850.jpg');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user` (
  `access_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `access_expired` bigint(20) unsigned DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `provider` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(225) COLLATE utf8_unicode_ci DEFAULT NULL,
  `picture` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('a5a1f6c0fbd9c7dab99c112d57c8fed0332bf6b3f2e14ff4c532eae330c6b74a',1563877882468,1,'facebook','曹喻涵','vcd990401@yahoo.com.tw','https://schoolvoyage.ga/images/123498.png'),('5be5cd1f4d1fd703f3a4102815a99a9020feefc11ef153c91016d9358906a388',1563867975944,2,'native','yuhan','yuhan@yuhan','https://schoolvoyage.ga/images/123498.png');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
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
INSERT INTO `variant` VALUES ('334455','S','5','201807201824'),('334455','S','5','201807202140'),('84c1ff','S','5','201807202157'),('000000','M','2','201807242222'),('adadad','M','10','201807242216'),('842b00','M','7','201807242228');
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

-- Dump completed on 2019-07-27 11:00:13
