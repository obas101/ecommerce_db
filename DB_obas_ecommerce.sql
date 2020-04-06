

--
-- Table structure for table `orderdetails`
--

DROP TABLE IF EXISTS `orderdetails`;
CREATE TABLE `orderdetails` (
  `DetailID` int NOT NULL AUTO_INCREMENT,
  `DetailOrderID` int NOT NULL,
  `DetailProductID` int NOT NULL,
  `DetailName` varchar(250) NOT NULL,
  `DetailPrice` int NOT NULL,
  `DetailQuantity` int NOT NULL,
  PRIMARY KEY (`DetailID`)
);

--
-- Dumping data for table `orderdetails`
--

LOCK TABLES `orderdetails` WRITE;
/*!40000 ALTER TABLE `orderdetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `orderdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `OrderID` int NOT NULL AUTO_INCREMENT,
  `OrderUserID` int NOT NULL,
  `OrderAmount` float NOT NULL,
  `OrderShipName` varchar(100) NOT NULL,
  `OrderShipAddress` varchar(100) NOT NULL,
  `OrderShipAddress2` varchar(100) NOT NULL,
  `OrderCity` varchar(50) NOT NULL,
  `OrderState` varchar(50) NOT NULL,
  `OrderZip` varchar(20) NOT NULL,
  `OrderCountry` varchar(50) NOT NULL,
  `OrderPhone` varchar(20) NOT NULL,
  `OrderShipping` float NOT NULL,
  `OrderEmail` varchar(100) NOT NULL,
  `OrderDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `OrderTrackingNumber` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`OrderID`)
);

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `ProductID` int NOT NULL AUTO_INCREMENT,
  `ProductName` varchar(100) NOT NULL,
  `ProductPrice` float NOT NULL,
  `ProductDesc` varchar(1000) NOT NULL,
  `ProductImage` varchar(100) NOT NULL,
  `ProductCategoryID` int DEFAULT NULL,
  `ProductLocation` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`ProductID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Pam slippers',5000,'fancy leather pam','',1,NULL),(2,'casual shoe',10000,'fancy casual shoe','',2,NULL);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `userID` int NOT NULL AUTO_INCREMENT,
  `userFirstName` varchar(45) DEFAULT NULL,
  `userLastName` varchar(45) DEFAULT NULL,
  `userEmail` varchar(45) DEFAULT NULL,
  `userCity` varchar(45) DEFAULT NULL,
  `userState` varchar(45) DEFAULT NULL,
  `userPhone` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Mike','Howard','mikhow@gmail.com','Abuja','FCT','080898793'),(2,'Esther','Mary','maryes@gmail.com','Lokoja','Kogi','080823923');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;


-- Dump completed on 2020-04-06 10:45:42
