CREATE TABLE IF NOT EXISTS `tblcustomers` (
  `CusID` varchar(10) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Address` varchar(60) DEFAULT NULL,
  `Cell` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`CusID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;