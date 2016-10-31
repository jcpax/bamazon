//bamazon.sql

CREATE TABLE IF NOT EXISTS `departments` (
  `DepartmentID` int(11) NOT NULL AUTO_INCREMENT,
  `DepartmentName` varchar(100) NOT NULL,
  `OverHeadCosts` int(11) DEFAULT NULL,
  `TotalSales` decimal(10,2) DEFAULT '0.00',
  PRIMARY KEY (`DepartmentID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

INSERT INTO `departments` (`DepartmentID`, `DepartmentName`, `OverHeadCosts`, `TotalSales`) VALUES
	(1, 'Art Supplies', 1500, 15125.50),
	(2, 'School Supplies', 1000, 1330.03),
	(3, 'Attire', 2300, 1854.87),
	(4, 'Furniture', 4000, 234.76),
	(5, 'Electronics', 1700, 74500.50);
	
	CREATE TABLE IF NOT EXISTS `products` (
  `itemID` int(11) NOT NULL AUTO_INCREMENT,
  `ProductName` varchar(100) NOT NULL,
  `DepartmentName` varchar(100) DEFAULT NULL,
  `Price` decimal(10,2) DEFAULT NULL,
  `StockQuantity` int(100) DEFAULT NULL,
  PRIMARY KEY (`itemID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

INSERT INTO `products` (`itemID`, `ProductName`, `DepartmentName`, `Price`, `StockQuantity`) VALUES
	(1, 'Oil Paints', 'Art Supplies', 69.99, 10),
	(2, 'Paint Brush', 'Art Supplies', 5.49, 111),
	(3, 'Backpack', 'School Supplies', 19.99, 23),
	(4, 'Shoes', 'Attire', 39.99, 15),
	(5, 'Fancy Blue Dress', 'Attire', 79.99, 4),
	(6, 'Color Pencils', 'School Supplies', 2.99, 141),
	(7, 'Short Shorts', 'Attire', 15.99, 3),
	(8, 'Canvas', 'Art Supplies', 49.99, 21),
	(9, 'Bedframe', 'Furniture', 234.76, 353),
	(10, 'Clipboard', 'School Supplies', 1.99, 75),
	(11, 'Easel', 'Art Supplies', 50.00, 3),
	(12, 'Lamp', 'Furniture', 10.74, 19),
	(13, 'Eraser', 'School Supplies', 0.10, 874),
	(14, 'Headphones', 'Electronics', 48.50, 167);