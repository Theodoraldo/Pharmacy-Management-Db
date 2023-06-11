CREATE TABLE IF NOT EXISTS `tblsales_details` (
  `ID` bigint NOT NULL AUTO_INCREMENT,
  `Invoice_No` varchar(24) NOT NULL,
  `DrugsId` varchar(10) NOT NULL,
  `Units` varchar(20) NOT NULL,
  `Quantity` decimal(10,2) NOT NULL,
  `SellingPrice` decimal(10,2) NOT NULL,
  `Discount` decimal(10,2) NOT NULL,
  `Total` decimal(10,2) NOT NULL,
  `AddedDate` datetime NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `DrugsId` (`DrugsId`),
  KEY `Invoice_No` (`Invoice_No`),
  KEY `IX_tblsales_details_AddedDate` (`AddedDate`),
  CONSTRAINT `tblsales_details_ibfk_1` FOREIGN KEY (`DrugsId`) REFERENCES `tbldrugs` (`DrugsId`),
  CONSTRAINT `tblsales_details_ibfk_2` FOREIGN KEY (`Invoice_No`) REFERENCES `tblsales_master` (`Invoice_No`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

