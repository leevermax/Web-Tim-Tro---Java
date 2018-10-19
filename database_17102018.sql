CREATE DATABASE  IF NOT EXISTS `boardinghouse` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `boardinghouse`;
-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: boardinghouse
-- ------------------------------------------------------
-- Server version	5.7.14-log

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
-- Table structure for table `district`
--

DROP TABLE IF EXISTS `district`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `district` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `district`
--

LOCK TABLES `district` WRITE;
/*!40000 ALTER TABLE `district` DISABLE KEYS */;
INSERT INTO `district` VALUES (1,'Quận 1','760'),(2,'Quận 12','761'),(3,'Quận Thủ Đức','762'),(4,'Quận 9','763'),(5,'Quận Gò Vấp','764'),(6,'Quận Bình Thạnh','765'),(7,'Quận Tân Bình','766'),(8,'Quận Tân Phú','767'),(9,'Quận Phú Nhuận','768'),(10,'Quận 2','769'),(11,'Quận 3','770'),(12,'Quận 10','771'),(13,'Quận 11','772'),(14,'Quận 4','773'),(15,'Quận 5','774'),(16,'Quận 6','775'),(17,'Quận 8','776'),(18,'Quận Bình Tân','777'),(19,'Quận 7','778'),(20,'Huyện Củ Chi','783'),(21,'Huyện Hóc Môn','784'),(22,'Huyện Bình Chánh','785'),(23,'Huyện Nhà Bè','786'),(24,'Huyện Cần Giờ','787');
/*!40000 ALTER TABLE `district` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `code` varchar(150) NOT NULL,
  `createddate` timestamp NULL DEFAULT NULL,
  `modifieddate` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'Quản trị hệ thống','ADMIN',NULL,NULL),(2,'người dùng','USER',NULL,NULL);
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room`
--

DROP TABLE IF EXISTS `room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `room` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `address` text,
  `contact` varchar(255) DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `cost` int(11) DEFAULT NULL,
  `area` int(11) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `images` text,
  `description` text,
  `district` varchar(255) DEFAULT NULL,
  `createddate` timestamp NULL DEFAULT NULL,
  `modifieddate` timestamp NULL DEFAULT NULL,
  `createdby` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room`
--

LOCK TABLES `room` WRITE;
/*!40000 ALTER TABLE `room` DISABLE KEYS */;
INSERT INTO `room` VALUES (7,'PHÒNG ĐẦY ĐỦ TIỆN NGHI,nội thất gỗ mới 100,trung tâm tp.','64/1 Trần Đình Xu, phường Cô Giang, Quận 1','Huynh Van Hung','/room/hinh_1.jpg',6000000,40,'0903723200','/room/hinh_1.jpg,/room/hinh_2.jpg,/room/hinh_3.jpg','Nhà tọa lạc trong hẻm, ngay trung tâm thành phố, cách chợ Bến Thành chỉ 4 phút đi xe máy. \r\nĐặc điểm của phòng (tầng lửng - 40m2) \r\n','760',NULL,NULL,'nguyenvana',1),(8,'Cho Thue Phong Tro Quan 1','87B Đặng Dung P Tân Định Q1','Nguyen Anh Dao','/room/hinh_1.jpg',4500000,22,'0905861567','/room/hinh_1.jpg,/room/hinh_2.jpg,/room/hinh_3.jpg','Thông tin: \r\n- Địa chỉ 87B Đặng Dung, P Tân Định, Q1 \r\n- Diện tích ~22 mét vuông \r\n- Có tủ quần áo/ máy lạnh/ máy nước nóng \r\n- Điện 3,500k/kw \r\n- Nước 100k/người \r\n- Khu dân cư an ninh yên tỉnh \r\n- Giờ tự do','760',NULL,NULL,'nguyenvana',1),(9,'NHÀ TRỌ DÀNH RIÊNG CHO SV HIỀN LÀNH, CHĂM CHỈ VĂN PHÒNG TỬ TẾ','Đường số 08 , Trường Thọ Thủ Đức - SÀI GÒN','Anh Đạt','/room/hinh_1.jpg',1980000,23,'0123456789','/room/hinh_1.jpg,/room/hinh_2.jpg,/room/hinh_3.jpg','1. Mô tả phòng : Rộng rãi thoáng mát, nhà vệ sinh, gác, bồn rữa chén, gác, cửa kiếng. cửa số 2 cửa nên rất thoáng mát. Trước sân có bộ ghế đá ngồi đọc sách, uống trà, đánh cờ (không đánh bài nha) \r\n2. Đối tượng thuê : NVVP, SV năm cuối, ( nếu SV năm đầu phải hiền lành, đàng hoàng, ít chơi game liên minh) đàng hoàng, lịch sự .Điều quan trọng là ý thức sống trong môi trường tập thể phải có. Tuân thủ các quy định ( gia quy) dán ở cổng khu nhà . \r\n3. Giá thuê : 1980 đồng/ phòng/ tháng. Điện 3.5/kw. Nước 5.5/kw. Mạng vi tính :80 dong / phòng/ tháng. Rác, vệ sinh : 30 dong / phòng /tháng. Đơn vị tiền tệ : 1.000 đồng ','762',NULL,NULL,'nguyenvana',1),(11,'Điện nước giá nhà nc. Đc gắn thêm máy lạnh','22/23 đường 7 linh trung thủ đức (đối diện sonic)','A Thám','/room/hinh_2.jpg',3000000,30,'0974447999','/room/hinh_2.jpg,/room/hinh_3.jpg','Sàn lót gỗ. Có ban công riêng. Đi về tự do. Có thêm 20m vuông sân để sinh hoạt. Để xe, giặt rửa....','762',NULL,NULL,'nguyenvanb',1),(12,'Cho thuê phòng trọ giá rẻ số 159đường 14 ph. phước bình q9 gần CĐKT Đối Ngoại Q9','159 đường 14, Phường Phước Bình, Q9, TP.HCM','Nguyễn Công Bắc','/room/hinh_2.jpg',2000000,26,'0797832468','/room/hinh_2.jpg,/room/hinh_3.jpg','Phòng rộng,thoáng mát,an ninh tốt,không ở chung với chủ,để xe \r\nmiễn phí,nhà một trệt một lầu không sợ nguy hiểm .Toilet riêng,cách trường CĐKT đối ngoại và trường trung cấp nghề Suleco 300m (5p đi bộ). Có sân rộng và cổng kiên cố. Có lắp đặt camera an ninh rất thích hợp cho công chức, học sinh, sinh viên. \r\nGía phòng:2triệu/ tháng. \r\nĐiện: 3k/Kw. \r\nNước: 15k/m3. \r\nLiên hệ: 0797832468 (Chú Bắc) ','763',NULL,NULL,'nguyenvanb',1),(13,'Tìm nữ ở ghép Quận 9 Gần học viện Bưu Chính','D8 - Khu Cảnh Vệ -Man Thiện - Quận 9 - TpHCM','Vy','/room/hinh_2.jpg',1000000,16,'0905227993','/room/hinh_2.jpg,/room/hinh_3.jpg','Mình cần tìm một bạn nữ ở ghép tại quận 9. \r\n\r\nĐịa chỉ: D8 - Khu Cảnh Vệ -Man Thiện - Quận 9 - TpHCM \r\n\r\nPhòng rất gần học viện Bưu Chính Viễn thông, chợ, siêu thị 24/7 (VinMart, Circle-K, FamilyMart). \r\n\r\nThông tin phòng như sau: \r\n\r\nRộng: 16m2 \r\n\r\nTiền phòng: 1tr6 \r\n\r\nĐiện: 2.5k/ kí \r\n\r\nNước: 12k/khối \r\n\r\nGiữ xe: 45k xe máy, 20k/xe đạp \r\n\r\nTổng cộng 1 tháng chưa đến 2tr, chia ra cho 2 người mỗi người chưa đến 1 triệu. \r\n\r\nBạn nào có nhu cầu liên hệ mình nhé. \r\n\r\nMình tên Vy - SDT: 0905227993 ','763',NULL,NULL,'nguyenvanb',1),(14,'PHÒNG TRỌ 4237/38 LÊ VĂN QUỚI,P.BTĐA,BT','427/38 Lê Văn Quới, P Bình Trị Đông A, Quận Bình Tân, HCM.','Huỳnh Mai Nguyên','/room/hinh_1.jpg',2000000,25,'0937757375','/room/hinh_1.jpg,/room/hinh_3.jpg','Phòng trọ dạng khách sạn, có gác lững diện tích 10m2, có bếp, máy lạnh, nước nóng, nước dùng thủy cục, có camera giám sát, phòng rộng 25m2. Hẻm nhựa rông 8m, khu vực an ninh, gần chợ, gần bệnh viện Bình Tân, gần trường học ...Thời gian : 5h00 mở cửa - tối: 11h30 đóng cửa. \r\n- phòng có đầy đủ tiện nghi bao gồm : máy lạnh, máy nước nóng, máy giặt, tủ lạnh, bàn ghế,nệm ngủ, tủ quần áo... - giá 2,500,000đ/tháng ( hợp đồng 6 tháng trở lên ) .','777','2018-10-15 19:16:25',NULL,'nguyenvana',1);
/*!40000 ALTER TABLE `room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL,
  `fullname` varchar(150) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `createddate` timestamp NULL DEFAULT NULL,
  `modifieddate` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'admin','123456','admin',1,NULL,NULL),(2,'nguyenvana','123456','Nguyễn Văn A',1,NULL,NULL),(3,'nguyenvanb','123456','Nguyễn Văn B',1,NULL,NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `userid` bigint(20) NOT NULL,
  `roleid` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_userrole_user` (`userid`),
  KEY `fk_userrole_role` (`roleid`),
  CONSTRAINT `fk_userrole_role` FOREIGN KEY (`roleid`) REFERENCES `role` (`id`),
  CONSTRAINT `fk_userrole_user` FOREIGN KEY (`userid`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` VALUES (1,1,1),(2,2,2),(3,3,2);
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-17  0:14:57
