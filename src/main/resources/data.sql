CREATE DATABASE  IF NOT EXISTS `test` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `test`;
--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member` (
  `idx` bigint NOT NULL AUTO_INCREMENT,
  `authority` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `status` bit(1) NOT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES (1,'ROLE_USER','jyk147369@naver.com','kkk','{bcrypt}$2a$10$SUJFR7.rPGQgvZtcCBU6guCZqKpEuhYrsB.40FNYASzjpP4hlkCfG',_binary ''),(2,'ROLE_USER','kimjieun12314@gmail.com','kkk','{bcrypt}$2a$10$kFlJPG.wcQGcx0gNQUEivO.tTUvJ6a8AJZIgTapH4pT9pifspghqq',_binary ''),(3,'ROLE_USER','leechanghoon12@gmail.com','매운탕','{bcrypt}$2a$10$vCWbJV1cXKDm2OPNDjzrpu/Hw8qXHJku0vArVAs8NYUt6XSgRVDxK',_binary ''),(4,'ROLE_USER','ansgp0323@naver.com','ㅇㅇ','{bcrypt}$2a$10$I98RahEX3Zr43krxDvTVV.fzluUQBhRuk9pT4TLVddJeSF67BGffe',_binary ''),(5,'ROLE_USER','kimjieun121314@naver.com','kkk','{bcrypt}$2a$10$8SdPABlMdBq7ecXoa50HGe5me7TeTA7GV8cJKFFZnaLeRxmpCZleC',_binary ''),(6,'ROLE_USER','kjjee12123@gmail.com','test','{bcrypt}$2a$10$7phs1nZR3tXL2NzlhAiOvOPjRchc26Uq7SjbcI1A8cy8zrDKWZO4i',_binary ''),(7,'ROLE_USER','jjjj16232@gmail.com','erty','{bcrypt}$2a$10$wxzi17eRy2tLG7fDLa9ldOaDQUXxvms4UXecd6ZGAj9SMO9Dr1Mxe',_binary ''),(8,'ROLE_USER','jjjj34564567@gmail.com','test','{bcrypt}$2a$10$nfzlR4zxPJ4Ak4Qrt0IDpuOHM8dUkvKyD25d67fLVPnB0bzG4ch8e',_binary ''),(9,'ROLE_USER','kk121234455@gmail.com','test','{bcrypt}$2a$10$RpbSbh6bUlUOEWq/gL8nqOGGJTufi6eQtvLkQjBhfMpR0iIBUUMrC',_binary ''),(10,'ROLE_USER','heueun77@gmail.com','강지흔','{bcrypt}$2a$10$D9jCGJ877IY22lc170B2f.GCN3ukeIVOwtopXA/IqwblM.F.sIu8q',_binary ''),(11,'ROLE_USER','yyy418256@gmail.com','test','{bcrypt}$2a$10$CgqwC2Zc4I9.2TzTj5wddORYfnaB8olOupJIkOLldUTLYNCIe51fK',_binary '');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;



DROP TABLE IF EXISTS `product_ceo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_ceo` (
  `idx` bigint NOT NULL AUTO_INCREMENT,
  `contents` varchar(255) DEFAULT NULL,
  `phone_number` int DEFAULT NULL,
  `price` int DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `store_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_ceo`
--

LOCK TABLES `product_ceo` WRITE;
/*!40000 ALTER TABLE `product_ceo` DISABLE KEYS */;
INSERT INTO `product_ceo` VALUES (1,'귀요미로 짤라줌',15881588,20000,'미용','강남구 미용실'),(2,'애견 미용',825825,30000,'애견 미용','동작구 미용실'),(7,'소형견 대형견 노견 다 가능해요',33232322,20000,'강아지 전용','우리 유치원'),(8,'호텔도 있어서 장기여행 다녀오셔도 강아지가 숙식가능해요.',123123,40000,'소형견 전문 유치원','호돌이네'),(9,'내과 전문의 진료',32323213,15000,'내과 전문','내친구동물병원'),(10,'외과 전문의 진료',453412,50000,'외과 전문','아이들 동물병원'),(12,'ㅇㅇ',11,22,'ㅋㅋ','ㅇㅇ');
/*!40000 ALTER TABLE `product_ceo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_ceo_image`
--

DROP TABLE IF EXISTS `product_ceo_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_ceo_image` (
  `idx` bigint NOT NULL AUTO_INCREMENT,
  `filename` varchar(255) DEFAULT NULL,
  `product_ceo_idx` bigint DEFAULT NULL,
  PRIMARY KEY (`idx`),
  KEY `FKjqjdh1g93g8ngxka4x36au3cb` (`product_ceo_idx`),
  CONSTRAINT `FKjqjdh1g93g8ngxka4x36au3cb` FOREIGN KEY (`product_ceo_idx`) REFERENCES `product_ceo` (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_ceo_image`
--

LOCK TABLES `product_ceo_image` WRITE;
/*!40000 ALTER TABLE `product_ceo_image` DISABLE KEYS */;
INSERT INTO `product_ceo_image` VALUES (1,'https://kjy20231229.s3.ap-northeast-2.amazonaws.com/2024/02/06/ed0a02f2-1dc0-47b5-9cb4-93471b836c43_%EC%95%A0%EA%B2%AC%20%EB%AF%B8%EC%9A%A9.jpg',1),(3,'https://kjy20231229.s3.ap-northeast-2.amazonaws.com/2024/02/06/deb8cd91-70b4-40e5-9659-ffcdd1bd2360_%EC%95%A0%EA%B2%AC%20%EB%AF%B8%EC%9A%A9.jpg',2),(7,'https://kjy20231229.s3.ap-northeast-2.amazonaws.com/2024/02/06/e7ea5993-24e7-4e88-814f-144125079869_%EC%9C%A0%EC%B9%98%EC%9B%90.jpg',7),(8,'https://kjy20231229.s3.ap-northeast-2.amazonaws.com/2024/02/06/3da515d4-116f-415a-b125-5e9854ffe72a_%EC%88%99%EC%8B%9D%EA%B0%80%EB%8A%A5.jpg',8),(9,'https://kjy20231229.s3.ap-northeast-2.amazonaws.com/2024/02/06/b0667702-bc50-4f29-8494-be6995cc7442_%EB%82%B4%EC%B9%9C%EA%B5%AC%EB%8F%99%EB%AC%BC%EB%B3%91.jpg',9),(10,'https://kjy20231229.s3.ap-northeast-2.amazonaws.com/2024/02/06/edab2d6b-95b0-46a3-93a0-855d3f767846_%EC%95%84%EC%9D%B4%EB%93%A4.jpg',10),(12,'https://kjy20231229.s3.ap-northeast-2.amazonaws.com/2024/02/06/a0e4415e-cf0d-4eff-bc9f-341205b24cd7_hairCut.png',12);
/*!40000 ALTER TABLE `product_ceo_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_manager`
--

DROP TABLE IF EXISTS `product_manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_manager` (
  `idx` bigint NOT NULL AUTO_INCREMENT,
  `contents` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `manager_name` varchar(255) DEFAULT NULL,
  `phone_number` int DEFAULT NULL,
  `price` int DEFAULT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_manager`
--

LOCK TABLES `product_manager` WRITE;
/*!40000 ALTER TABLE `product_manager` DISABLE KEYS */;
INSERT INTO `product_manager` VALUES (1,'35년','남','이동규',3456,1000000),(2,'28년','남','이창훈',15883082,50000),(3,'행동교정(멈추기) 전문가','여','김멈춰',112119,20000);
/*!40000 ALTER TABLE `product_manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_manager_image`
--

DROP TABLE IF EXISTS `product_manager_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_manager_image` (
  `idx` bigint NOT NULL AUTO_INCREMENT,
  `filename` varchar(255) DEFAULT NULL,
  `product_manager_idx` bigint DEFAULT NULL,
  PRIMARY KEY (`idx`),
  KEY `FKfdk80f8v8w5ckur81fb9ia5ed` (`product_manager_idx`),
  CONSTRAINT `FKfdk80f8v8w5ckur81fb9ia5ed` FOREIGN KEY (`product_manager_idx`) REFERENCES `product_manager` (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_manager_image`
--

LOCK TABLES `product_manager_image` WRITE;
/*!40000 ALTER TABLE `product_manager_image` DISABLE KEYS */;
INSERT INTO `product_manager_image` VALUES (1,'https://kjy20231229.s3.ap-northeast-2.amazonaws.com/2024/02/06/2789d128-623f-4f91-8cc4-3d7156e3614b_%EC%95%A0%EA%B2%AC%20%EB%B3%91%EC%9B%902.jpeg',1),(2,'https://kjy20231229.s3.ap-northeast-2.amazonaws.com/2024/02/06/7c8d323e-df3f-4a20-9907-bce748040fc4_%EA%B0%95%ED%98%95%EC%9A%B1.jpg',2),(3,'https://kjy20231229.s3.ap-northeast-2.amazonaws.com/2024/02/06/e3cdab0f-5241-4567-a0ff-0495d2dea063_%EB%A9%88%EC%B6%B0.jpg',3);
/*!40000 ALTER TABLE `product_manager_image` ENABLE KEYS */;
UNLOCK TABLES;



DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `idx` bigint NOT NULL AUTO_INCREMENT,
  `member_idx` bigint DEFAULT NULL,
  `product_ceo_idx` bigint DEFAULT NULL,
  `product_manager_idx` bigint DEFAULT NULL,
  PRIMARY KEY (`idx`),
  KEY `FK6ws8rflarj5yea3v9j8vto3qk` (`member_idx`),
  KEY `FKncawaj262xke59vvmnqv1sbvf` (`product_ceo_idx`),
  KEY `FKi7knrwrvcjbmku5j495050hyr` (`product_manager_idx`),
  CONSTRAINT `FK6ws8rflarj5yea3v9j8vto3qk` FOREIGN KEY (`member_idx`) REFERENCES `member` (`idx`),
  CONSTRAINT `FKi7knrwrvcjbmku5j495050hyr` FOREIGN KEY (`product_manager_idx`) REFERENCES `product_manager` (`idx`),
  CONSTRAINT `FKncawaj262xke59vvmnqv1sbvf` FOREIGN KEY (`product_ceo_idx`) REFERENCES `product_ceo` (`idx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ceo`
--

DROP TABLE IF EXISTS `ceo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ceo` (
  `idx` bigint NOT NULL AUTO_INCREMENT,
  `authority` varchar(255) DEFAULT NULL,
  `businessnum` varchar(255) DEFAULT NULL,
  `ceoname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `status` bit(1) NOT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ceo`
--

LOCK TABLES `ceo` WRITE;
/*!40000 ALTER TABLE `ceo` DISABLE KEYS */;
INSERT INTO `ceo` VALUES (1,'ROLE_CEO','147147',NULL,NULL,'{bcrypt}$2a$10$gR5Aycz03b9VTFwusM8kuO.10OO4c.2gNXNMfBw.vWwDZWQwOWrxy',_binary ''),(2,'ROLE_CEO','34567',NULL,NULL,'{bcrypt}$2a$10$v8SrdF2oCdAqZcLiTLafqOl2woDB/U7m0oPk1Cje3PheZcwvAq5tS',_binary ''),(3,'ROLE_CEO','1234',NULL,NULL,'{bcrypt}$2a$10$IwoF/csuoie6xNdtAfX9SO8eRWeTTeqWifwkasA6sL7vfboRMgmIS',_binary ''),(4,'ROLE_CEO','123123',NULL,NULL,'{bcrypt}$2a$10$HCZPKYhLXqR8qEKxKqN/2uluRuSJeplsCHI19iCHoT45KuG9JW3Yu',_binary '');
/*!40000 ALTER TABLE `ceo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manager`
--

DROP TABLE IF EXISTS `manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manager` (
  `idx` bigint NOT NULL AUTO_INCREMENT,
  `authority` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `status` bit(1) NOT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manager`
--

LOCK TABLES `manager` WRITE;
/*!40000 ALTER TABLE `manager` DISABLE KEYS */;
INSERT INTO `manager` VALUES (1,'ROLE_MANAGER','jyk147369@naver.com','kkk','{bcrypt}$2a$10$m3xQjzN5pACwYcZDyjFNbeV5dyaLOqLqjH2k/gTM5bZfNTFLih8ym',_binary ''),(2,'ROLE_MANAGER','kimjieun121314@naver.com','test','{bcrypt}$2a$10$1nluAqc4xyXbIECjYm0oxunPs28GMxAIxSxkDn4oWYlSPi.Gqil7e',_binary ''),(3,'ROLE_MANAGER','jjjj34564567@gmail.com','test','{bcrypt}$2a$10$N54BKQgZcdjR.Gjeo6tB9eVp6CORvhl/m8UtJrgyyvJSmRD56dsGe',_binary ''),(4,'ROLE_MANAGER','jjjj34564567@gmail.com','test','{bcrypt}$2a$10$3BDk98NczDLQ7lEBNzaXh.Sf5Ff0x4iYVh6/PBIO20li8c3kK1Yzq',_binary '\0'),(5,'ROLE_MANAGER','kk121234455@gmail.com','test','{bcrypt}$2a$10$vEO/.U1hA0cPtMx7bExJS.RC6sTBsngWExQYJR/8qQgSdfvsnYF62',_binary '');
/*!40000 ALTER TABLE `manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manager_email_verify`
--

DROP TABLE IF EXISTS `manager_email_verify`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manager_email_verify` (
  `idx` bigint NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `uuid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manager_email_verify`
--

LOCK TABLES `manager_email_verify` WRITE;
/*!40000 ALTER TABLE `manager_email_verify` DISABLE KEYS */;
INSERT INTO `manager_email_verify` VALUES (1,'jyk147369@naver.com','59b7127b-18f1-46ed-b486-5250cf0e256c'),(2,'kimjieun121314@naver.com','3b879633-0689-47db-81fb-9efb55948eb4'),(3,'jjjj34564567@gmail.com','639ff8be-9be9-4021-b17a-c9511dcf1341'),(4,'jjjj34564567@gmail.com','ba94dee6-5f89-4bb1-8a3e-3a2d452077cb'),(5,'kk121234455@gmail.com','0bb8ee54-5915-4ab7-a959-fd54ed49951f');
/*!40000 ALTER TABLE `manager_email_verify` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--


--
-- Table structure for table `member_email_verify`
--

DROP TABLE IF EXISTS `member_email_verify`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member_email_verify` (
  `idx` bigint NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `uuid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_email_verify`
--

LOCK TABLES `member_email_verify` WRITE;
/*!40000 ALTER TABLE `member_email_verify` DISABLE KEYS */;
INSERT INTO `member_email_verify` VALUES (1,'jyk147369@naver.com','77189938-3ffc-48d5-9487-3fcd86565222'),(2,'kimjieun12314@gmail.com','d4a2eca3-548b-4352-8c70-485676adb2c5'),(3,'leechanghoon12@gmail.com','8391b506-1deb-423b-a349-ac9063bbae77'),(4,'ansgp0323@naver.com','32f3b461-d215-4bc9-853a-87c8ac7ed4ef'),(5,'kimjieun121314@naver.com','859a965f-6a31-4134-8968-917f5e733c02'),(6,'kjjee12123@gmail.com','ef5cac39-94be-4eb1-ab15-3f44282a00d7'),(7,'kjjee12123@gmail.com','e497730c-1a2a-4fdf-b7e2-ca0ff7e78af3'),(8,'jjjj16232@gmail.com','a3a432be-a0cc-45e2-9afd-99f589cbcb6f'),(9,'jjjj34564567@gmail.com','f8fab2c9-5ff3-4790-975f-a2044770b710'),(10,'kk121234455@gmail.com','d9385f74-55ce-4489-a001-c59c69747dfc'),(11,'heueun77@gmail.com','5d7a0c36-93dc-4580-a972-8ce65856fdd6'),(12,'yyy418256@gmail.com','5827f739-b1a9-41b1-bc3b-cd6f1c940e02');
/*!40000 ALTER TABLE `member_email_verify` ENABLE KEYS */;
UNLOCK TABLES;



--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `idx` bigint NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_ceo`
--


--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `idx` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `order_details` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `place` varchar(255) DEFAULT NULL,
  `reservation_status` varchar(255) DEFAULT NULL,
  `time` int DEFAULT NULL,
  `ceo_idx` bigint DEFAULT NULL,
  `manager_idx` bigint DEFAULT NULL,
  `member_idx` bigint DEFAULT NULL,
  `payment_idx` bigint DEFAULT NULL,
  `product_ceo_idx` bigint DEFAULT NULL,
  `product_manager_idx` bigint DEFAULT NULL,
  PRIMARY KEY (`idx`),
  KEY `FKdnaldsqraumij3fw0g4sp3pkw` (`ceo_idx`),
  KEY `FKocawv2lwx7sjh3lj10wlpkbcv` (`manager_idx`),
  KEY `FK55v8xjx00lm2iqk0f2yh46qsp` (`member_idx`),
  KEY `FK6ai4d1yq9up0hkjgjnc8w0b60` (`payment_idx`),
  KEY `FKn47lflwmg0tkkafbqi87yab13` (`product_ceo_idx`),
  KEY `FKjbpy73nvipa9b9da1d7p3x00j` (`product_manager_idx`),
  CONSTRAINT `FK55v8xjx00lm2iqk0f2yh46qsp` FOREIGN KEY (`member_idx`) REFERENCES `member` (`idx`),
  CONSTRAINT `FK6ai4d1yq9up0hkjgjnc8w0b60` FOREIGN KEY (`payment_idx`) REFERENCES `payment` (`idx`),
  CONSTRAINT `FKdnaldsqraumij3fw0g4sp3pkw` FOREIGN KEY (`ceo_idx`) REFERENCES `ceo` (`idx`),
  CONSTRAINT `FKjbpy73nvipa9b9da1d7p3x00j` FOREIGN KEY (`product_manager_idx`) REFERENCES `product_manager` (`idx`),
  CONSTRAINT `FKn47lflwmg0tkkafbqi87yab13` FOREIGN KEY (`product_ceo_idx`) REFERENCES `product_ceo` (`idx`),
  CONSTRAINT `FKocawv2lwx7sjh3lj10wlpkbcv` FOREIGN KEY (`manager_idx`) REFERENCES `manager` (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (2,'lee','danger','345678','신대방',NULL,4,NULL,NULL,2,NULL,1,1),(3,'ㅇㅇ','애교가 많아요','01044744014','ㅎㅎㅎㅎㅎㅎ',NULL,2,NULL,NULL,4,NULL,2,1),(5,'kkkk','입질이 있어요 ','1','ㅋㅋㅋㅋ',NULL,2,NULL,NULL,4,NULL,1,1),(8,'이창훈/별이','말티즈는 참지않긔','29009701','잠실역',NULL,1,NULL,NULL,3,NULL,2,2),(9,'홍길동','입질이 있어요 ','01054841148','메가커피 앞',NULL,8,NULL,NULL,4,NULL,7,2),(10,'이창훈','물어요','01054455448','신대방역1번출구',NULL,8,NULL,NULL,4,NULL,8,2),(11,'이창훈/별이','wedasfas','123','12323',NULL,1,NULL,NULL,1,NULL,1,1),(12,'이창훈/뚱이','WEF','2134213','ASDFAWDF',NULL,2,NULL,NULL,1,NULL,1,1);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `review` (
  `idx` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  `orders_idx` bigint DEFAULT NULL,
  `product_ceo_idx` bigint DEFAULT NULL,
  `product_manager_idx` bigint DEFAULT NULL,
  `product_number` int DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idx`),
  KEY `FKipcrblmle2gob3fea3mk5ylwf` (`orders_idx`),
  KEY `FKdy3q1v3q3mbe5kqepxlcuoh6o` (`product_ceo_idx`),
  KEY `FK9f6frug2luukjbce5lisj5p73` (`product_manager_idx`),
  CONSTRAINT `FK9f6frug2luukjbce5lisj5p73` FOREIGN KEY (`product_manager_idx`) REFERENCES `product_manager` (`idx`),
  CONSTRAINT `FKdy3q1v3q3mbe5kqepxlcuoh6o` FOREIGN KEY (`product_ceo_idx`) REFERENCES `product_ceo` (`idx`),
  CONSTRAINT `FKipcrblmle2gob3fea3mk5ylwf` FOREIGN KEY (`orders_idx`) REFERENCES `orders` (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` VALUES (1,NULL,'ㄷㅁㄴㄱㅇㅅㄹ허ㅘ',NULL,NULL,NULL,NULL,NULL),(2,NULL,'ㅇㄴㄹ호ㅓ',NULL,NULL,NULL,NULL,NULL),(3,NULL,'ㅋㅋㅋㅋㅋㅋㅋㅋ',NULL,NULL,NULL,NULL,NULL),(4,NULL,'하하하',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-08 15:13:39
