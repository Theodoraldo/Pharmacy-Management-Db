CREATE TABLE IF NOT EXISTS `tbldrugs` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `DrugsId` varchar(10) NOT NULL,
  `CatId` varchar(10) NOT NULL,
  `DrugsName` varchar(50) NOT NULL,
  `Units` varchar(20) NOT NULL,
  `Quantity` decimal(10,2) NOT NULL,
  `CostPrice` decimal(10,5) NOT NULL,
  `SellingPrice` decimal(10,2) NOT NULL,
  `Location` varchar(15) DEFAULT NULL,
  `ExpiryDate` date DEFAULT NULL,
  `AddedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`DrugsId`),
  UNIQUE KEY `ID` (`ID`),
  KEY `CatId` (`CatId`),
  CONSTRAINT `tbldrugs_ibfk_1` FOREIGN KEY (`CatId`) REFERENCES `tblcategory` (`CatId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;