CREATE TABLE IF NOT EXISTS `tblusers` (
  `StuffId` varchar(15) NOT NULL,
  `Fullname` varchar(30) NOT NULL,
  `Username` varchar(15) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `Sex` varchar(10) NOT NULL,
  `Contact` text NOT NULL,
  `Pass` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Status` varchar(10) NOT NULL,
  `Dated` datetime NOT NULL,
  PRIMARY KEY (`StuffId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
