
CREATE DATABASE IF NOT EXISTS `lab02` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `lab02`;

CREATE TABLE IF NOT EXISTS `customer` (
  `cust_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `phone` varchar(15) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `cust_name` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`cust_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `customer` (`cust_id`, `phone`, `email`, `address`, `cust_name`) VALUES
	(1, '0346676956', 'sonpham28052002@gmail.com', '566 Nguyễn Thái Sơn, P4, Gò Vấp, TP HCM', 'Phạm Thanh Sơn'),
	(2, '0901234567', 'customer2@email.com', '456 Đường ABC, Quận 1, TP HCM', 'Nguyễn Văn An'),
	(3, '0912345678', 'customer3@email.com', '789 Đường XYZ, Quận 2, TP HCM', 'Trần Thị Bình'),
	(4, '0923456789', 'customer4@email.com', '101 Đường DEF, Quận 3, TP HCM', 'Lê Văn Cao'),
	(5, '0934567890', 'customer5@email.com', '202 Đường MNO, Quận 4, TP HCM', 'Phạm Thị Dương'),
	(6, '0945678901', 'customer6@email.com', '303 Đường HIJ, Quận 5, TP HCM', 'Vũ Văn Việt'),
	(7, '0956789012', 'customer7@email.com', '404 Đường STU, Quận 6, TP HCM', 'Hồ Thị Phương'),
	(8, '0967890123', 'customer8@email.com', '505 Đường NOP, Quận 7, TP HCM', 'Đỗ Văn Giang'),
	(9, '0978901234', 'customer9@email.com', '606 Đường QWE, Quận 8, TP HCM', 'Ngô Thị Hương'),
	(10, '0989012345', 'customer10@email.com', '707 Đường ZXC, Quận 9, TP HCM', 'Trương Văn In'),
	(11, '0990123456', 'customer11@email.com', '808 Đường UIO, Quận 10, TP HCM', 'Hoàng Thị Khánh'),
	(12, '0911122334', 'customer12@email.com', '909 Đường ASD, Quận 11, TP HCM', 'Lý Văn Lý'),
	(13, '0912233445', 'customer13@email.com', '111 Đường JKL, Quận 12, TP HCM', 'Bùi Thị Minh'),
	(14, '0913344556', 'customer14@email.com', '222 Đường TYU, Quận Bình Tân, TP HCM', 'Phan Văn Nhật'),
	(15, '0914455667', 'customer15@email.com', '333 Đường POU, Quận Bình Thạnh, TP HCM', 'Mai Thị Ôn'),
	(16, '0915566778', 'customer16@email.com', '444 Đường RET, Quận Tân Phú, TP HCM', 'Nguyễn Văn Phương'),
	(17, '0916677889', 'customer17@email.com', '555 Đường JKH, Quận Tân Bình, TP HCM', 'Trần Thị Quyên'),
	(18, '0917788990', 'customer18@email.com', '666 Đường XCV, Quận Phú Nhuận, TP HCM', 'Lê Thị Rỡ'),
	(19, '0918899001', 'customer19@email.com', '777 Đường TYR, Quận Thủ Đức, TP HCM', 'Phạm Văn Sang'),
	(20, '0919900112', 'customer20@email.com', '888 Đường WER, Quận Gò Vấp, TP HCM', 'Vũ Thị Tính'),
	(21, '(+84) 387866829', 'met@gmail.com', '12 Nguyen Van Bao', 'Nguyen Thanh Son');

CREATE TABLE IF NOT EXISTS `employee` (
  `dob` date DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `emp_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `phone` varchar(15) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `full_name` varchar(150) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`emp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `employee` (`dob`, `status`, `emp_id`, `phone`, `email`, `full_name`, `address`) VALUES
	('2020-09-09', 1, 1, '0346676954', 'leonpham17042002@gmail.com', 'Phạm Thái Bảo', '1/6 Nguyễn Văn Nghi, P4, Gò Vấp, TP HCM'),
	('1995-01-15', 1, 2, '0901234567', 'employee2@email.com', 'Nguyễn Văn Anh', '123 Đường ABC, Quận 1, TP HCM'),
	('1990-03-20', 1, 3, '0912345678', 'employee3@email.com', 'Trần Thị Biên', '456 Đường XYZ, Quận 2, TP HCM'),
	('1985-07-10', 1, 4, '0923456789', 'employee4@email.com', 'Lê Văn Cừ', '789 Đường DEF, Quận 3, TP HCM'),
	('1988-05-05', 1, 5, '0934567890', 'employee5@email.com', 'Phạm Thị Diệu', '101 Đường MNO, Quận 4, TP HCM'),
	('1992-11-30', 1, 6, '0945678901', 'employee6@email.com', 'Vũ Văn Kiên', '202 Đường HIJ, Quận 5, TP HCM'),
	('1986-04-25', 1, 7, '0956789012', 'employee7@email.com', 'Hồ Thị Phúc', '303 Đường STU, Quận 6, TP HCM'),
	('1994-08-12', 1, 8, '0967890123', 'employee8@email.com', 'Đỗ Văn Giàu', '404 Đường NOP, Quận 7, TP HCM'),
	('1983-02-18', 1, 9, '0978901234', 'employee9@email.com', 'Ngô Thị Hoa', '505 Đường QWE, Quận 8, TP HCM'),
	('1991-06-06', 1, 10, '0989012345', 'employee10@email.com', 'Trương Văn Iêm', '606 Đường ZXC, Quận 9, TP HCM'),
	('1990-09-22', 1, 11, '0990123456', 'employee11@email.com', 'Hoàng Thị Khoa', '707 Đường UIO, Quận 10, TP HCM'),
	('1987-03-05', 1, 12, '0911122334', 'employee12@email.com', 'Lý Văn Liêm', '808 Đường ASD, Quận 11, TP HCM'),
	('1993-12-20', 1, 13, '0912233445', 'employee13@email.com', 'Bùi Thị Nhung', '909 Đường JKL, Quận 12, TP HCM'),
	('1989-05-15', 1, 14, '0913344556', 'employee14@email.com', 'Phan Văn Nhiên', '111 Đường TYU, Quận Bình Tân, TP HCM'),
	('1996-03-20', 1, 15, '0914455667', 'employee15@email.com', 'Mai Thị Tiền', '222 Đường POU, Quận Bình Thạnh, TP HCM'),
	('1998-07-10', 1, 16, '0915566778', 'employee16@email.com', 'Nguyễn Văn Phát', '333 Đường RET, Quận Tân Phú, TP HCM'),
	('1997-05-05', 1, 17, '0916677889', 'employee17@email.com', 'Trần Thị Quỳnh', '444 Đường JKH, Quận Tân Bình, TP HCM'),
	('1994-11-30', 1, 18, '0917788990', 'employee18@email.com', 'Lê Thị Hiệu', '555 Đường XCV, Quận Phú Nhuận, TP HCM'),
	('1991-04-25', 1, 19, '0918899001', 'employee19@email.com', 'Phạm Văn Sáng', '666 Đường TYR, Quận Thủ Đức, TP HCM'),
	('1988-08-12', 1, 20, '0919900112', 'employee20@email.com', 'Vũ Thị Thanh', '777 Đường WER, Quận Gò Vấp, TP HCM'),
	('2023-10-06', 1, 21, '01294129120', 'teo@gmail.com', 'Nguyen Thanh Son', '12 Nguyen Van Bao');

CREATE TABLE IF NOT EXISTS `orders` (
  `cus_id` bigint(20) DEFAULT NULL,
  `employee_id` bigint(20) NOT NULL,
  `orderDate` datetime(6) DEFAULT NULL,
  `order_id` bigint(20) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`order_id`),
  KEY `FK5u324hx6p8cu83aycaopvegwf` (`cus_id`),
  KEY `FKog5v9ga2g2ukytypn4ocip6b4` (`employee_id`),
  CONSTRAINT `FK5u324hx6p8cu83aycaopvegwf` FOREIGN KEY (`cus_id`) REFERENCES `customer` (`cust_id`),
  CONSTRAINT `FKog5v9ga2g2ukytypn4ocip6b4` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`emp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `orders` (`cus_id`, `employee_id`, `orderDate`, `order_id`) VALUES
	(1, 1, '2023-09-05 16:22:10.000000', 1),
	(2, 2, '2023-09-06 09:45:20.000000', 2),
	(3, 1, '2023-09-07 14:30:15.000000', 3),
	(4, 21, '2023-09-08 11:10:30.000000', 4),
	(5, 1, '2023-09-09 17:55:45.000000', 5),
	(6, 6, '2023-09-10 08:20:40.000000', 6),
	(7, 7, '2023-09-11 12:15:25.000000', 7),
	(8, 8, '2023-09-12 10:05:50.000000', 8),
	(9, 9, '2023-09-13 15:40:55.000000', 9),
	(10, 10, '2023-09-14 09:30:10.000000', 10),
	(11, 11, '2023-09-15 14:15:05.000000', 11),
	(12, 12, '2023-09-16 13:05:20.000000', 12),
	(13, 13, '2023-09-17 16:50:15.000000', 13),
	(14, 14, '2023-09-18 11:40:30.000000', 14),
	(15, 15, '2023-09-19 14:25:25.000000', 15),
	(16, 16, '2023-09-20 10:35:40.000000', 16),
	(17, 17, '2023-09-21 15:05:35.000000', 17),
	(18, 18, '2023-09-22 09:15:50.000000', 18),
	(19, 19, '2023-09-23 14:50:45.000000', 19),
	(20, 20, '2023-09-24 12:00:10.000000', 20),
	(1, 21, '2023-10-05 00:00:00.000000', 21),
	(1, 2, '2023-10-14 00:00:00.000000', 22),
	(1, 1, '2023-10-14 00:00:00.000000', 23),
	(1, 2, '2023-10-14 00:00:00.000000', 24),
	(1, 1, '2023-10-14 00:00:00.000000', 25),
	(1, 1, '2023-10-14 00:00:00.000000', 26),
	(1, 1, '2023-10-14 00:00:00.000000', 27);

CREATE TABLE IF NOT EXISTS `product` (
  `status` int(11) DEFAULT NULL,
  `product_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `unit` varchar(25) DEFAULT NULL,
  `manufacturerName` varchar(100) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `product` (`status`, `product_id`, `unit`, `manufacturerName`, `name`, `description`) VALUES
	(1, 1, 'Cái', 'Kim Đồng', 'Bút Bi Xanh', 'bút bi xanh dành cho học sinh sinh viên'),
	(1, 2, 'Cuốn', 'Nhà Xuất Bản Giáo Dục', 'Sách Vở Lớp 1', 'Sách vở lớp 1'),
	(1, 3, 'Cái', 'H&M', 'Áo Thun Trắng', 'Áo thun trắng unisex'),
	(1, 4, 'Cái', 'Dell', 'Máy Tính Dell', 'Máy tính xách tay Dell Inspiron'),
	(1, 5, 'Quyển', 'Artline', 'Sổ Tay Ghi Chú', 'Quyển sổ tay ghi chú'),
	(1, 6, 'Cái', 'Pilot', 'Bút Mực Đen', 'Bút mực đen chất lượng'),
	(1, 7, 'Cái', 'Canon', 'Máy Ảnh Canon', 'Máy ảnh DSLR Canon EOS'),
	(1, 8, 'Đôi', 'Nike', 'Giày Nike Air Max', 'Giày thể thao Nike Air Max'),
	(1, 9, 'Cái', 'Samsonite', 'Balo Du Lịch', 'Balo du lịch thời trang'),
	(1, 10, 'Cái', 'Apple', 'iPhone 12', 'Điện thoại di động iPhone 12'),
	(1, 11, 'Cái', 'Logitech', 'Chuột Máy Tính', 'Chuột máy tính không dây'),
	(1, 12, 'Cái', 'JBL', 'Loa Bluetooth', 'Loa Bluetooth JBL Flip'),
	(1, 13, 'Cái', 'Panasonic', 'Máy Sấy Tóc', 'Máy sấy tóc Panasonic'),
	(1, 14, 'Cái', 'Philips', 'Đèn Bàn LED', 'Đèn bàn LED đa năng'),
	(1, 15, 'Cái', 'IKEA', 'Gương Trang Điểm', 'Gương trang điểm đẹp'),
	(1, 16, 'Cái', 'IKEA', 'Thảm Trải Sàn', 'Thảm trải sàn màu xanh'),
	(1, 17, 'Cái', 'North Face', 'Áo Khoác Phao', 'Áo khoác phao nam'),
	(1, 18, 'Cái', 'Nespresso', 'Máy Pha Cà Phê', 'Máy pha cà phê Nespresso'),
	(1, 19, 'Cái', 'IKEA', 'Bàn Làm Việc', 'Bàn làm việc gỗ tự nhiên'),
	(1, 20, 'Cái', 'IKEA', 'Ghế Văn Phòng', 'Ghế xoay văn phòng'),
	(1, 21, 'Cái', 'Nike', 'Bình Nước Thể Thao', 'Bình nước thể thao'),
	(1, 22, 'Kg', 'Việt Name', 'Ổi', 'Ổi Long Sơn'),
	(1, 23, 'Kg', 'Việt Name', 'Xoài', 'Ổi Long Sơn'),
	(1, 24, 'Kg', 'Việt Name', 'Ổi', 'Ổi Phú Yên');


CREATE TABLE IF NOT EXISTS `order_detail` (
  `price` double DEFAULT NULL,
  `quantity` double DEFAULT NULL,
  `order_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `note` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`order_id`,`product_id`),
  KEY `FKb8bg2bkty0oksa3wiq5mp5qnc` (`product_id`),
  CONSTRAINT `FKb8bg2bkty0oksa3wiq5mp5qnc` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`),
  CONSTRAINT `FKrws2q0si6oyd6il8gqe2aennc` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `order_detail` (`price`, `quantity`, `order_id`, `product_id`, `note`) VALUES
	(3000, 10, 1, 1, NULL),
	(1500000, 1, 1, 9, NULL),
	(300000, 1, 1, 11, NULL),
	(5000, 1, 25, 1, ''),
	(5000, 1, 26, 1, ''),
	(6000, 3, 26, 2, ''),
	(5000, 1, 27, 1, ''),
	(6000, 3, 27, 2, '');


CREATE TABLE IF NOT EXISTS `productimage` (
  `image_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) DEFAULT NULL,
  `alternative` varchar(250) DEFAULT NULL,
  `path` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`image_id`),
  KEY `FKmykcebh04q6t2e0nhrert6kms` (`product_id`),
  CONSTRAINT `FKmykcebh04q6t2e0nhrert6kms` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `productimage` (`image_id`, `product_id`, `alternative`, `path`) VALUES
	(1, 1, NULL, 'data/image1.png'),
	(2, 2, NULL, 'data/image2.png'),
	(3, 3, NULL, 'data/image3.png'),
	(4, 4, NULL, 'data/image4.png'),
	(5, 5, NULL, 'data/image5.png'),
	(6, 6, NULL, 'data/image6.png'),
	(7, 7, NULL, 'data/image7.png'),
	(8, 8, NULL, 'data/image8.png'),
	(9, 9, NULL, 'data/image9.png'),
	(10, 10, NULL, 'data/image10.png'),
	(11, 11, NULL, 'data/image11.png'),
	(12, 12, NULL, 'data/image12.png'),
	(13, 13, NULL, 'data/image13.png'),
	(14, 14, NULL, 'data/image14.png'),
	(15, 15, NULL, 'data/image15.png'),
	(16, 16, NULL, 'data/image16.png'),
	(17, 17, NULL, 'data/image17.png'),
	(18, 18, NULL, 'data/image18.png'),
	(19, 19, NULL, 'data/image19.png'),
	(20, 20, NULL, 'data/image20.png'),
	(21, 21, NULL, 'data/image21.png');

CREATE TABLE IF NOT EXISTS `productprice` (
  `price` double DEFAULT NULL,
  `price_date_time` datetime(6) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `note` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`price_date_time`,`product_id`),
  KEY `FKrq9o20gyppvqvl9w87vaium80` (`product_id`),
  CONSTRAINT `FKrq9o20gyppvqvl9w87vaium80` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `productprice` (`price`, `price_date_time`, `product_id`, `note`) VALUES
	(4000, '2022-10-12 01:36:52.000000', 1, NULL),
	(20000, '2022-12-20 00:00:00.000000', 1, NULL),
	(12000, '2023-01-01 08:00:00.000000', 1, 'Ghi chú 1'),
	(10000, '2023-01-01 08:15:00.000000', 2, 'Ghi chú 1'),
	(19000, '2023-01-01 09:30:00.000000', 3, 'Ghi chú 1'),
	(18000, '2023-01-02 08:30:00.000000', 1, 'Ghi chú 2'),
	(35000, '2023-01-02 09:00:00.000000', 2, 'Ghi chú 2'),
	(22000, '2023-01-02 10:45:00.000000', 3, 'Ghi chú 2'),
	(9000, '2023-01-03 09:00:00.000000', 1, 'Ghi chú 3'),
	(30000, '2023-01-03 10:15:00.000000', 2, 'Ghi chú 3'),
	(15000, '2023-01-03 11:00:00.000000', 3, 'Ghi chú 3'),
	(15000, '2023-01-04 10:00:00.000000', 1, 'Ghi chú 4'),
	(12000, '2023-01-04 11:30:00.000000', 2, 'Ghi chú 4'),
	(40000, '2023-01-04 12:30:00.000000', 3, 'Ghi chú 4'),
	(25000, '2023-01-05 11:30:00.000000', 1, 'Ghi chú 5'),
	(28000, '2023-01-05 12:00:00.000000', 2, 'Ghi chú 5'),
	(35000, '2023-01-05 13:00:00.000000', 3, 'Ghi chú 5'),
	(100000, '2023-05-10 00:00:00.000000', 14, NULL),
	(3000, '2023-09-09 16:31:37.000000', 2, 'Khuyễn Mãi 9-9'),
	(20000, '2023-09-10 00:00:00.000000', 20, NULL),
	(50000, '2023-10-01 10:00:00.000000', 18, NULL),
	(2000, '2023-10-02 00:00:00.000000', 4, NULL),
	(69000, '2023-10-10 00:00:00.000000', 19, NULL),
	(5000, '2023-10-12 01:36:39.000000', 3, NULL),
	(5000, '2023-10-12 01:55:33.000000', 5, NULL),
	(30000, '2023-10-12 01:55:42.000000', 6, NULL),
	(22000, '2023-10-12 01:56:14.000000', 1, NULL),
	(30000, '2023-10-12 01:56:21.000000', 7, NULL),
	(100000, '2023-10-12 01:56:34.000000', 8, NULL),
	(6000, '2023-10-12 01:56:45.000000', 9, NULL),
	(500000, '2023-10-12 01:56:52.000000', 10, NULL),
	(400000, '2023-10-12 01:57:00.000000', 11, NULL),
	(40000, '2023-10-12 01:57:06.000000', 12, NULL),
	(800000, '2023-10-12 01:57:12.000000', 13, NULL),
	(850000, '2023-10-12 01:57:31.000000', 15, NULL),
	(20000000, '2023-10-12 01:57:40.000000', 16, NULL),
	(890000, '2023-10-12 01:57:49.000000', 17, NULL),
	(99000, '2023-10-12 01:59:10.000000', 21, NULL),
	(30000, '2023-11-21 23:20:05.000000', 1, NULL),
	(3000, '2023-11-26 23:20:16.000000', 1, NULL),
	(10000, '2023-11-29 23:19:52.000000', 1, NULL),
	(20000, '2023-12-01 23:19:41.000000', 1, NULL);
