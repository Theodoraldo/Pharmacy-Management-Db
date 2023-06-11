CREATE TABLE IF NOT EXISTS `tblcompany` (
  `Id` int NOT NULL,
  `CompName` varchar(50) DEFAULT NULL,
  `Address` varchar(150) NOT NULL,
  `Website` varchar(60) NOT NULL,
  `Fax` varchar(15) NOT NULL,
  `Tin` varchar(15) NOT NULL,
  `Email` varchar(45) NOT NULL,
  `Location` varchar(80) NOT NULL,
  `Cell1` varchar(15) NOT NULL,
  `Cell2` varchar(15) DEFAULT NULL,
  `Image` mediumblob,
  `BkTime` int DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;