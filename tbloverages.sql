CREATE TABLE IF NOT EXISTS `tbloverages` (
  `ID` bigint NOT NULL AUTO_INCREMENT,
  `RecordNo` varchar(24) NOT NULL,
  `DrugsId` varchar(10) NOT NULL,
  `Qty` decimal(10,2) NOT NULL,
  `StuffId` varchar(15) NOT NULL,
  `Dated` datetime NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `DrugsId` (`DrugsId`),
  KEY `StuffId` (`StuffId`),
  CONSTRAINT `tbloverages_ibfk_1` FOREIGN KEY (`DrugsId`) REFERENCES `tbldrugs` (`DrugsId`),
  CONSTRAINT `tbloverages_ibfk_2` FOREIGN KEY (`StuffId`) REFERENCES `tblusers` (`StuffId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;