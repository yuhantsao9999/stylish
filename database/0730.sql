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
INSERT INTO `campaign` VALUES (2,'0-1564475003395.jpg','FOR THIS SUMMER ONLY \r\n 30% DISCOUNT');
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
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `list`
--

LOCK TABLES `list` WRITE;
/*!40000 ALTER TABLE `list` DISABLE KEYS */;
INSERT INTO `list` VALUES (1,'9291f0d90d7fea93ecb54f5da284a12414c8b053334a4178e1701e6a5a44bbac','yuhan@yuhan','pay',1299,'M',1300,'guest','淺藍','yuhan'),(2,'d89d26cefcd2ad1861ec1803b0353f6d1b816dc48cf11e8ad6e18258c78e400c','yuhan@yuhan','pay',1299,'M',1300,'guest','淺藍','yuhan'),(3,'d1a1286e4e62c3649b9971608544a38fe0dd47a0784d92011010c78586617cf4','yuhan@yuhan','pay',1299,'M',1300,'guest','淺藍','yuhan'),(4,'4ffcba4a2063b7bd174b2c6b9b24a2400d0360278f87d5f2cca42ccf085ebaea','yuhan@yuhan','pay',1299,'M',1300,'guest','淺藍','yuhan'),(5,'d67eeb724f7332b0e08d70a016338ee21d31c912307f2fa8d902eac22ca03826','yuhan@yuhan','pay',1299,'M',1300,'guest','淺藍','yuhan'),(6,'d8ff8463aae366787cffbca03af733726bd68ebd26a4ebaa544750cbcb98f0ca','yuhan@yuhan','pay',1299,'M',1300,'guest','淺藍','yuhan'),(7,'ed3665351239ec34d9ce3db11e579354dba189e2e936efad93bb2591d130f08c','yuhan@yuhan','pay',1299,'M',1300,'guest','淺藍','yuhan'),(8,'7822d164e6f24f0f177c93f8d16df1988a9b710e70e86481cdc146c8e8dca08e','yuhan@yuhan','pay',1299,'M',1300,'guest','淺藍','yuhan'),(9,'8395bddf4867548a68cee104b79754890fd642ee69ce2291ed4c52a771465648','yuhan@yuhan','pay',1299,'M',1300,'guest','淺藍','yuhan'),(10,'1d5b4ac7b27702999ae44a828884ad90bdb372053c6ec19177d1b48932cd8166','yuhan@yuhan','pay',1299,'M',1300,'guest','淺藍','yuhan'),(11,'0dfd3ee892e78e4179ca6299157230512ebcaf5f3af8e19f0b538898179c6b75','yuhan@yuhan','pay',1299,'M',1300,'guest','淺藍','yuhan'),(12,'3f9ed90d65c7dfb44e9275c5bb9860efdefb8deea8f1068cbf95ca51d5911e88','yuhan@yuhan','pay',1299,'M',1300,'guest','淺藍','yuhan'),(13,'9bcc1254900a8f0fb78e842e7d4535293912971fbdaf11e5486ef8fa5afa7f93','yuhan@yuhan','pay',1299,'M',1300,'guest','淺藍','yuhan'),(14,'a2b8be03e54b9aa605f3c9573ab0ab82f804424e168b890ccce9bfa35b7be553','yuhan@yuhan','pay',1299,'M',1300,'guest','淺藍','yuhan'),(15,'86d43a51889ae1857d43957cba9138fccfdee81b195e3da15531484a9bd2c45e','yuhan@yuhan','pay',1299,'M',1300,'guest','淺藍','yuhan'),(16,'323515721641e9017329fc12969f1c291308a68dc0f80211c23916a7bf82b4f0','yuhan@yuhan','pay',1299,'M',1300,'guest','淺藍','yuhan'),(17,'dee2c3c976b7678688355a81a8ae4408701373b77345d73ba2f72e021311f5dd','yuhan@yuhan','pay',1299,'M',1300,'guest','淺藍','yuhan'),(18,'9a0f5517363b321f978c7990d0897aed0d4b1abba326c1730300bcceeb0672d3','yuhan@yuhan','pay',1299,'M',1300,'guest','淺藍','yuhan'),(19,'b31443cafbdb22b747414d0c2adeeacfcdfb03ebea690c6951d56889510e82b6','yuhan@yuhan','pay',1299,'M',1300,'guest','淺藍','yuhan'),(20,'371b14828ab85222ffbfa66862e8d18864b789f471074176c14b47b71158142b','yuhan@yuhan','pay',1299,'M',1300,'guest','淺藍','yuhan'),(21,'4b8f3631f26dc25aaa91e881d8be4545d682eca821a5208e63645eda6ccd9661','yuhan@yuhan','pay',1299,'M',1300,'guest','淺藍','yuhan'),(22,'ff3100ffebad8247470fee3bf33a25677174fbf5d32407fa98cfb795a822c4da','yuhan@yuhan','pay',1299,'M',1300,'guest','淺藍','yuhan'),(23,'b29a5cd5445d93e28d41fda7d9af6a381282fbb3ef506d3a7b7619aa9f6f886e','yuhan@yuhan','pay',1299,'M',1300,'guest','淺藍','yuhan'),(24,'917702f596dab7c7a93a52da178d63111ca44dee0d4205802dafcf2f1eaca93b','yuhan@yuhan','pay',1299,'M',1300,'guest','淺藍','yuhan'),(25,'4195f44f7bb96556c9419c94316e8da78539741bc6f662781d9c0c20251b3e87','yuhan@yuhan','pay',1299,'M',1300,'guest','淺藍','yuhan'),(26,'b40ccd8848c2ae24019dcabb95564a57d982998b21421f777be95779ebea8e86','yuhan@yuhan','unpaid',1299,'M',1300,'guest','淺藍','yuhan'),(27,'91d772ab7e76c1bb24db8013fd252813c30b04083cf6b55e29e1cc00b39c66ef','yuhan@yuhan','pay',1299,'M',1300,'guest','淺藍','yuhan'),(28,'d1a82d5673c19699676d74c5952b302abe913a42ae7a0b79bd5ee1805bfe77fb','yuhan@yuhan','pay',1299,'M',1300,'guest','淺藍','yuhan'),(29,'9a7841c6df87f87dc96b287b6b46a175adf9d41c5cc49a48ddb0ac8261edacc1','yuhan@yuhan','pay',1299,'M',1300,'guest','淺藍','yuhan'),(30,'3d42577e2b0e01bc97e8a00a39c460ed020833ca12fd118634fd2a8b2bce1faf','yuhan@yuhan','pay',1299,'M',1300,'guest','淺藍','yuhan'),(31,'d761d5bc3aa14afcc3d05b1dde02595891ed84cd8c125e874bdad4c1c5c8015d','yuhan@yuhan','pay',1299,'M',1300,'guest','淺藍','yuhan'),(32,'d1f887b3dc97be3a62365682aa9788b754a40242f105b9b4b2bf0cd05affad27','yuhan@yuhan','pay',1299,'M',1300,'guest','淺藍','yuhan'),(33,'5c10623eaf40467db9499981f7a35a245db2bf3fa455c4e1484c23ec81fabe71','yuhan@yuhan','pay',1299,'M',1300,'guest','淺藍','yuhan'),(34,'3eb64a0d3424e4cbdb7b12c2474ae9767430b9d414bc4fed9ddc6344cc23dbee','yuhan@yuhan','pay',1299,'M',1300,'guest','淺藍','yuhan'),(35,'856ea66c218749bfc72c7a7b9e34b1cbd16097a3681e7135dea87a847c8adf78','yuhan@yuhan','pay',1299,'M',1300,'guest','淺藍','yuhan'),(36,'65637fe65d8e618ff5f1ef48c0313196b17a52cd23dc6483601ed4110fe3b6c2','yuhan@yuhan','pay',1299,'M',1300,'guest','淺藍','yuhan'),(37,'7ada98c1ebbc074cb5f6547e78bba8d004a186647238918e3a3cd288e1956287','yuhan@yuhan','pay',1299,'M',1300,'guest','淺藍','yuhan'),(38,'d80c6e8d347d060ff46fd5f2fde0b3c95404489a3a8809ffa99ed18efbbd0829','yuhan@yuhan','pay',1299,'M',1300,'guest','淺藍','yuhan'),(39,'e5fc57d89a323b6af5054a6f1640522544cad1f3184455cdc755baa4c69353de','yuhan@yuhan','pay',1299,'M',1300,'guest','淺藍','yuhan'),(40,'ec81a5d41ba8de95e3d7520823aab2fcd0e52b206f9f49b84a121cb2b7dd4ca6','yuhan@yuhan','pay',1299,'M',1300,'guest','淺藍','yuhan'),(41,'0a4d239d7d888cfe37cc7f58edeb99d9cbf67adfea342826b32763daea194926','yuhan@yuhan','pay',1299,'M',1300,'guest','淺藍','yuhan'),(42,'ef3acac15da1b1b2d7fa66f9f7ffa141588d093d3a694205f6de5b95c9f2e88d','yuhan@yuhan','pay',1299,'M',1300,'guest','淺藍','yuhan'),(43,'7e2936b5b5aefdf2573abc303080063028b98bda9f7eb8852b35d0fa1a3ca45b','yuhan@yuhan','pay',1299,'M',1300,'guest','淺藍','yuhan'),(44,'ceaae0e4d5736bd2df9c7eabda065915077ef10abbad64c22583872d94a8018b','yuhan@yuhan','pay',1299,'M',1300,'guest','淺藍','yuhan'),(45,'166d25abc16cb842a01cc132750ec01f855a45822c85c604236334f30cca9bb1','yuhan@yuhan','pay',1299,'M',1300,'guest','淺藍','yuhan'),(46,'1eff1699a522e50fc84aae4dd0d986b5efb0a601646366f2434a94cf896f5d50','yuhan@yuhan','pay',1299,'M',1300,'guest','淺藍','yuhan'),(47,'f90806cb175c3210426e55a0b9a704856bd89112d6a74c22d4f4cd164ecefa0e','yuhan@yuhan','pay',1299,'M',1300,'guest','淺藍','yuhan'),(48,'e34927ea65b38c43cb420296d6de0d9f1bd522a39a3e09298c4f8f9aca9a6a68','yuhan@yuhan','pay',1299,'M',1300,'guest','淺藍','yuhan');
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('17e87d45c388d1801b7cc4d8aa68d32e9b2e16dd63355fb6adc2cd0f3cc1acb2',1564418531496,1,'facebook','曹喻涵','vcd990401@yahoo.com.tw','https://schoolvoyage.ga/images/123498.png'),('c6ccdefbf6c84e08837ca5d93b7a6825f893c0877ddf75d7b8501d70d0903559',1564458012816,2,'native','yuhan','yuhan@yuhan','https://schoolvoyage.ga/images/123498.png'),('7746f550a7c545f5b14153bd8cae70b69c4f999743c3f76f673cbb3d675184c9',1564385705376,3,'native','123','123@1323','https://schoolvoyage.ga/images/123498.png'),('0a21c8ea683e21f75921164047f0c627dd1b0dfc477cdda5906242a226f07aca',1564385728915,4,'native','1998','123@1998','https://schoolvoyage.ga/images/123498.png'),('d0e414dcf114ca855007ef34ace9e5d3f30e03f2252cff60e0b6e72b1421f137',1564385782756,5,'native','1111','1111@1111','https://schoolvoyage.ga/images/123498.png'),('c7d84eaad96c397ae3382cf3129a1833ccaf20a19980024d27845c78485df202',1564389182481,6,'native','9999','9999@9999','https://schoolvoyage.ga/images/123498.png'),('28ef3cab0c807561db2821007f914bcc001da230ae1fbf1562869202005fa775',1564456415507,7,'native','koko','koko@koko','https://schoolvoyage.ga/images/123498.png'),('1be2850b237e9262d1c20ec381a25069b080a5058dc8bc4211427e8d029579e3',1564456553410,8,'native','koko1','koko1@koko1','https://schoolvoyage.ga/images/123498.png'),('55f46d1031221c3b648c4134388292d1e7c6a172ed01d4ca4f03c9ca7cd173bb',1564456710905,9,'native','777','777@777','https://schoolvoyage.ga/images/123498.png'),('176d6d26a4c86ba5185ce0f21c92663bd6a732488021e6d5075267d4ef846b54',1564456980004,10,'native','555','555@555','https://schoolvoyage.ga/images/123498.png'),('7b72eb684c15d5da2f961ff43a217ccd440781797de2ea85fdb04e4a05cee9cb',1564457144748,11,'native','333','333@333','https://schoolvoyage.ga/images/123498.png'),('093968ba053b5335f13001ce549e042f3f155358a94c5d7e54ff0a700e4ce19b',1564457325049,12,'native','1','1@1','https://schoolvoyage.ga/images/123498.png'),('66f5f8dd64b3f5f36ffecf16a827dbb3265196f692f24166b4e12a56750a4175',1564457464914,13,'native','2','2@2','https://schoolvoyage.ga/images/123498.png'),('213032686c896596fe21078a6780b2092778a81fc884ff30263fea52e7e3f0f0',1564457528388,14,'native','3','3@3','https://schoolvoyage.ga/images/123498.png'),('55832cd97a8121bc5631c8a24ee48f85206250022e3ddf063ba949e860c8f7a6',1564457610006,15,'native','5','5@5','https://schoolvoyage.ga/images/123498.png'),('416ef63d25b151720e97a5f66fd20f1a42f2bcb3b436845990e0de72f451b69c',1564457713463,16,'native','6','6@6','https://schoolvoyage.ga/images/123498.png'),('e180d1bb45e0d944190500051d5a136ff65d2ccd7a27c654840836efba78e229',1564457902801,17,'native','66','66@66','https://schoolvoyage.ga/images/123498.png'),('1c616a3dd1eea86f2fdb887439ac8349f29248b1bc2ee91cc8afb4b9f9d765a5',1564457945451,18,'native','99','99@99','https://schoolvoyage.ga/images/123498.png');
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

-- Dump completed on 2019-07-30 17:34:53
