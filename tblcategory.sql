CREATE TABLE IF NOT EXISTS `tblcategory` (
  `CatId` varchar(10) NOT NULL,
  `Name` varchar(30) DEFAULT NULL,
  `Description` varchar(100) DEFAULT NULL,
  `Image` mediumblob,
  PRIMARY KEY (`CatId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
