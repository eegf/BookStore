-- MySQL dump 10.13  Distrib 8.0.12, for osx10.14 (x86_64)
--
-- Host: localhost    Database: bookstore
-- ------------------------------------------------------
-- Server version	8.0.12

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
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `books` (
  `id` varchar(100) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `author` varchar(100) DEFAULT NULL,
  `price` float(8,2) DEFAULT NULL,
  `path` varchar(100) DEFAULT NULL,
  `filename` varchar(100) DEFAULT NULL,
  `des` varchar(255) DEFAULT NULL,
  `categoryId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES ('15fcd4da-9ad5-491c-abac-ad828270935f','O\'Reilly精品图书系列:JavaScript权威指南(第6版)','弗兰纳根(David Flanagan)',108.00,'2018-12-19','e4d0e6c2-16b0-4302-879b-5c207a0642e3.jpg','asdf','2'),('34c9e47e-6c5a-4af4-8293-475045ad1c15','O\'Reilly精品图书系列:JavaScript权威指南(第6版)','弗兰纳根(David Flanagan)',108.00,'2018-12-19','dccbb32e-cf0d-40ed-b2a1-6a85f5ef0fd5.jpg','《O\'Reilly精品图书系列:JavaScript权威指南(第6版)》讲述的内容涵盖JavaScript语言本身，以及Web浏览器所实现的JavaScriptAPI。','2');
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorys`
--

DROP TABLE IF EXISTS `categorys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `categorys` (
  `id` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `des` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorys`
--

LOCK TABLES `categorys` WRITE;
/*!40000 ALTER TABLE `categorys` DISABLE KEYS */;
INSERT INTO `categorys` VALUES ('2','计算机技术','计算机技术'),('6206193e-c052-454c-a987-9e43dfe28c61','科普','科普分类');
/*!40000 ALTER TABLE `categorys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `customers` (
  `id` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `address` varchar(255) NOT NULL,
  `email` varchar(20) NOT NULL,
  `code` varchar(200) DEFAULT NULL,
  `actived` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `photo` (`phone`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES ('10f38186-b0f9-4872-b7a0-ef9e6ab48daf','ymqy','123','18012341234','留和路','295317869@qq.com','317f1f05-749b-4f5e-9d74-9549c34f4971',_binary '');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `functions`
--

DROP TABLE IF EXISTS `functions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `functions` (
  `id` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `uri` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `functions`
--

LOCK TABLES `functions` WRITE;
/*!40000 ALTER TABLE `functions` DISABLE KEYS */;
INSERT INTO `functions` VALUES ('1','主页','/BookStore/manage/index.jsp'),('2','消息','/BookStore/manage/message.jsp'),('3','添加分类','/BookStore/manage/addCategory.jsp'),('4','查询分类','/BookStore/servlet/ManageServlet?op=listCategories'),('5','添加书籍','/BookStore/servlet/ManageServlet?op=addBookUI'),('6','查询书籍','/BookStore/servlet/ManageServlet?op=listBooks');
/*!40000 ALTER TABLE `functions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderitems`
--

DROP TABLE IF EXISTS `orderitems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `orderitems` (
  `id` varchar(100) NOT NULL,
  `number` int(11) DEFAULT NULL,
  `price` float(8,2) DEFAULT NULL,
  `ordernum` varchar(100) DEFAULT NULL,
  `bookid` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderitems`
--

LOCK TABLES `orderitems` WRITE;
/*!40000 ALTER TABLE `orderitems` DISABLE KEYS */;
INSERT INTO `orderitems` VALUES ('9d3ccb1c-ea24-4022-8055-ccfdef96704a',1,68.70,'2018121800000000003','1'),('a7cb3ec2-579c-412f-9237-9272be083707',10,687.00,'2018121900000000001','1'),('aff09b7e-086c-4299-b5e1-5de1ed08f86c',1,68.70,'2018121800000000004','1'),('c1261dab-bdda-4eee-98c9-870041342760',1,68.70,'2018121800000000005','1'),('e6181a59-5d74-4fa6-8a97-af3d5c13043f',1,108.00,'2018121900000000002','15fcd4da-9ad5-491c-abac-ad828270935f'),('e848e5d3-8054-48e3-b11b-5ee3f91507eb',1,68.70,'2018121800000000001','1'),('e9ae6180-da15-4665-b819-8232d2c1818c',1,68.70,'2018121800000000006','1'),('f40aec8f-af01-41c2-b302-286ab6e57f02',1,68.70,'2018121800000000002','1');
/*!40000 ALTER TABLE `orderitems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordernum`
--

DROP TABLE IF EXISTS `ordernum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ordernum` (
  `prefix` date DEFAULT NULL,
  `num` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordernum`
--

LOCK TABLES `ordernum` WRITE;
/*!40000 ALTER TABLE `ordernum` DISABLE KEYS */;
INSERT INTO `ordernum` VALUES ('2018-12-18',6),('2018-12-19',2);
/*!40000 ALTER TABLE `ordernum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `orders` (
  `ordernum` varchar(100) NOT NULL,
  `price` float(8,2) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `customerId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ordernum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES ('2018121800000000001',68.70,1,0,'10f38186-b0f9-4872-b7a0-ef9e6ab48daf'),('2018121800000000002',68.70,1,0,'10f38186-b0f9-4872-b7a0-ef9e6ab48daf'),('2018121800000000003',68.70,1,0,'10f38186-b0f9-4872-b7a0-ef9e6ab48daf'),('2018121800000000004',68.70,1,0,'10f38186-b0f9-4872-b7a0-ef9e6ab48daf'),('2018121800000000005',68.70,1,0,'10f38186-b0f9-4872-b7a0-ef9e6ab48daf'),('2018121800000000006',68.70,1,0,'10f38186-b0f9-4872-b7a0-ef9e6ab48daf'),('2018121900000000001',687.00,10,0,'10f38186-b0f9-4872-b7a0-ef9e6ab48daf'),('2018121900000000002',108.00,1,0,'10f38186-b0f9-4872-b7a0-ef9e6ab48daf');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_function`
--

DROP TABLE IF EXISTS `role_function`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `role_function` (
  `r_id` varchar(100) NOT NULL,
  `f_id` varchar(100) NOT NULL,
  PRIMARY KEY (`r_id`,`f_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_function`
--

LOCK TABLES `role_function` WRITE;
/*!40000 ALTER TABLE `role_function` DISABLE KEYS */;
INSERT INTO `role_function` VALUES ('1','1'),('1','2'),('1','3'),('1','4'),('1','5'),('1','6'),('2','1'),('2','2'),('2','5'),('2','6');
/*!40000 ALTER TABLE `role_function` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `roles` (
  `id` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `des` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES ('1','超级管理员','可以访问任何页面'),('2','普通管理员','书籍部分');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user_role` (
  `u_id` varchar(100) NOT NULL,
  `r_id` varchar(100) NOT NULL,
  PRIMARY KEY (`u_id`,`r_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` VALUES ('1','1'),('2','2');
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `users` (
  `id` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('1','admin','123'),('2','aa','123');
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

-- Dump completed on 2018-12-24 14:09:57
