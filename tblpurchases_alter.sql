CREATE TABLE IF NOT EXISTS `tblpurchases_alter` (
  `ID` bigint NOT NULL AUTO_INCREMENT,
  `DateOn` datetime NOT NULL,
  `InvoiceNo` varchar(20) NOT NULL,
  `DrugsId` varchar(10) NOT NULL,
  `OldQty` decimal(10,2) NOT NULL,
  `NewQty` decimal(10,2) DEFAULT NULL,
  `Action` varchar(10) NOT NULL,
  `StuffId` varchar(10) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `DrugsId` (`DrugsId`),
  KEY `StuffId` (`StuffId`),
  KEY `IX_tblpurchases_alter` (`DateOn`),
  CONSTRAINT `tblpurchases_alter_ibfk_1` FOREIGN KEY (`DrugsId`) REFERENCES `tbldrugs` (`DrugsId`),
  CONSTRAINT `tblpurchases_alter_ibfk_2` FOREIGN KEY (`StuffId`) REFERENCES `tblusers` (`StuffId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;