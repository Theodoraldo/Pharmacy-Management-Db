CREATE TABLE IF NOT EXISTS `tbldispose_details` (
  `ID` bigint NOT NULL AUTO_INCREMENT,
  `InvoiceNo` varchar(24) NOT NULL,
  `DrugsId` varchar(10) NOT NULL,
  `Units` varchar(20) NOT NULL,
  `Quantity` decimal(10,2) NOT NULL,
  `CostPrice` decimal(10,5) NOT NULL,
  `AddedDate` datetime NOT NULL,
  `Reason` varchar(10) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `InvoiceNo` (`InvoiceNo`),
  KEY `DrugsId` (`DrugsId`),
  KEY `IX_tbldispose_details_AddedDate` (`AddedDate`),
  CONSTRAINT `tbldispose_details_ibfk_1` FOREIGN KEY (`InvoiceNo`) REFERENCES `tbldispose_master` (`InvoiceNo`),
  CONSTRAINT `tbldispose_details_ibfk_2` FOREIGN KEY (`DrugsId`) REFERENCES `tbldrugs` (`DrugsId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;