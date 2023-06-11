CREATE TABLE IF NOT EXISTS `tblsupplier` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `SupId` varchar(10) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Phone` varchar(20) NOT NULL,
  `Email` varchar(40) NOT NULL,
  `Location` varchar(150) DEFAULT NULL,
  `AddedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`SupId`),
  UNIQUE KEY `ID` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;