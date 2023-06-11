
CREATE TABLE IF NOT EXISTS `tbldispose_master` (
  `InvoiceNo` varchar(24) NOT NULL,
  `Subtotal` decimal(10,2) NOT NULL,
  `StuffId` varchar(15) NOT NULL,
  `AddedDate` datetime NOT NULL,
  PRIMARY KEY (`InvoiceNo`),
  KEY `StuffId` (`StuffId`),
  KEY `IX_tbldispose_master_AddedDate` (`AddedDate`),
  CONSTRAINT `tbldispose_master_ibfk_1` FOREIGN KEY (`StuffId`) REFERENCES `tblusers` (`StuffId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;