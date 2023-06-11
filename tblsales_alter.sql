CREATE TABLE IF NOT EXISTS `tblsales_alter` (
  `ID` bigint NOT NULL AUTO_INCREMENT,
  `OnWhatDate` datetime NOT NULL,
  `Invoice_No` varchar(20) NOT NULL,
  `DrugsId` varchar(10) NOT NULL,
  `OldQty` decimal(10,2) NOT NULL,
  `NwQty` decimal(10,2) DEFAULT NULL,
  `Action` varchar(10) NOT NULL,
  `StuffId` varchar(10) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `DrugsId` (`DrugsId`),
  KEY `StuffId` (`StuffId`),
  KEY `IX_tblsales_alter` (`OnWhatDate`),
  CONSTRAINT `tblsales_alter_ibfk_1` FOREIGN KEY (`DrugsId`) REFERENCES `tbldrugs` (`DrugsId`),
  CONSTRAINT `tblsales_alter_ibfk_2` FOREIGN KEY (`StuffId`) REFERENCES `tblusers` (`StuffId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
