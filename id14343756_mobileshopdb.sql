-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 29, 2020 at 03:30 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id14343756_mobileshopdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `db_category`
--

CREATE TABLE `db_category` (
  `id` int(11) NOT NULL,
  `parent_id` tinyint(4) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort_order` tinyint(4) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_category`
--

INSERT INTO `db_category` (`id`, `parent_id`, `name`, `sort_order`, `status`, `created_at`) VALUES
(5, 0, 'Ip 6 Qte', 1, 1, '0000-00-00 00:00:00'),
(6, 0, 'ip XS max', 2, 1, '0000-00-00 00:00:00'),
(7, 0, 'Ip 8 Series', 3, 1, '0000-00-00 00:00:00'),
(8, 0, 'Ip 7 Qte', 4, 1, '0000-00-00 00:00:00'),
(9, 0, 'Ip 6 Plus', 5, 1, '0000-00-00 00:00:00'),
(10, 0, 'IPAD', 6, 1, '0000-00-00 00:00:00'),
(11, 0, 'Apple Watch', 7, 1, '0000-00-00 00:00:00'),
(12, 0, 'Airpods', 8, 1, '0000-00-00 00:00:00'),
(13, 0, 'ip X series', 2, 1, '0000-00-00 00:00:00'),
(14, 5, 'Iphone 11 Pro', 2, 1, '2020-08-27 17:00:00'),
(15, 5, 'Iphone 11 pro max Lock', 3, 1, '2020-08-27 17:00:00'),
(16, 6, 'Iphone 11', 1, 1, '2020-08-27 17:00:00'),
(17, 6, 'Iphone XS', 2, 1, '2020-08-27 17:00:00'),
(18, 6, 'Iphone XS Max Qte', 3, 1, '2020-08-27 17:00:00'),
(19, 6, 'Iphone XR', 4, 1, '2020-08-27 17:00:00'),
(20, 7, 'Iphone 8', 1, 1, '2020-08-27 17:00:00'),
(21, 7, 'Iphone 8plus', 2, 1, '2020-08-27 17:00:00'),
(22, 8, 'Iphone 7', 1, 1, '2020-08-27 17:00:00'),
(23, 8, 'Iphone 11 Lock', 3, 1, '2020-08-27 17:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `db_config`
--

CREATE TABLE `db_config` (
  `id` int(11) NOT NULL,
  `mail_smtp` varchar(68) CHARACTER SET utf8 NOT NULL,
  `mail_smtp_password` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Password mail shop',
  `mail_noreply` varchar(68) CHARACTER SET utf8 NOT NULL,
  `priceShip` mediumtext CHARACTER SET utf8 NOT NULL,
  `title` varchar(100) CHARACTER SET utf8 NOT NULL,
  `description` text CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_config`
--

INSERT INTO `db_config` (`id`, `mail_smtp`, `mail_smtp_password`, `mail_noreply`, `priceShip`, `title`, `description`) VALUES
(1, 'sale.smart.store.2019@gmail.com', '123456', 'vanhiepp1998@gmail.com', '30000', 'Web site bán hàng Demo', '');

-- --------------------------------------------------------

--
-- Table structure for table `db_contact`
--

CREATE TABLE `db_contact` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` text COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `trash` int(11) NOT NULL DEFAULT 1,
  `fullname` varchar(80) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `db_content`
--

CREATE TABLE `db_content` (
  `id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 NOT NULL,
  `introtext` mediumtext CHARACTER SET utf8 NOT NULL,
  `fulltext` mediumtext CHARACTER SET utf8 NOT NULL,
  `img` varchar(255) CHARACTER SET utf8 NOT NULL,
  `created` datetime NOT NULL,
  `created_by` varchar(50) CHARACTER SET utf8 NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` varchar(50) CHARACTER SET utf8 NOT NULL,
  `trash` int(1) NOT NULL DEFAULT 1,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `db_customer`
--

CREATE TABLE `db_customer` (
  `id` int(11) NOT NULL,
  `fullname` varchar(100) CHARACTER SET utf8 NOT NULL,
  `username` varchar(100) CHARACTER SET utf8 NOT NULL,
  `password` varchar(32) CHARACTER SET utf8 NOT NULL,
  `address` varchar(100) CHARACTER SET utf8 NOT NULL,
  `phone` varchar(13) CHARACTER SET utf8 NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 NOT NULL,
  `created` datetime NOT NULL,
  `trash` int(1) NOT NULL DEFAULT 1,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_customer`
--

INSERT INTO `db_customer` (`id`, `fullname`, `username`, `password`, `address`, `phone`, `email`, `created`, `trash`, `status`) VALUES
(1, 'Kaitou', 'kaitou', '123456', '23-7-1984', '0123456789', 'kaitoukid@vtc.conan.vn', '2020-08-28 23:54:28', 1, 1),
(2, 'Tạ Văn Ước', 'uocvtc', '123456', '21-7-1999', '0223456789', 'uoctv.nde18034@vtc.edu.vn', '2020-08-28 23:57:03', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_discount`
--

CREATE TABLE `db_discount` (
  `id` int(11) NOT NULL COMMENT 'ID',
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Mã giảm giá',
  `discount` int(11) NOT NULL COMMENT 'Số tiền',
  `limit_number` int(11) NOT NULL COMMENT 'giới hạn lượt mua',
  `number_used` int(11) NOT NULL COMMENT 'Số lượng đã nhập',
  `expiration_date` date NOT NULL COMMENT 'Ngày hết hạn',
  `payment_limit` int(11) NOT NULL COMMENT 'giới hạn đơn hàng tối thiểu',
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Mô tả',
  `created` date NOT NULL,
  `orders` int(11) NOT NULL,
  `trash` int(1) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `db_order`
--

CREATE TABLE `db_order` (
  `id` int(11) NOT NULL,
  `orderCode` varchar(8) CHARACTER SET utf8 NOT NULL,
  `customerid` int(11) NOT NULL,
  `orderdate` datetime NOT NULL,
  `fullname` varchar(100) CHARACTER SET utf8 NOT NULL,
  `phone` varchar(100) CHARACTER SET utf8 NOT NULL,
  `money` int(12) NOT NULL,
  `price_ship` int(11) NOT NULL,
  `coupon` int(11) NOT NULL,
  `province` int(5) NOT NULL,
  `district` int(5) NOT NULL,
  `address` varchar(255) CHARACTER SET utf8 NOT NULL,
  `trash` int(1) NOT NULL DEFAULT 1,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `db_orderdetail`
--

CREATE TABLE `db_orderdetail` (
  `id` int(11) NOT NULL,
  `orderid` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `count` int(10) NOT NULL,
  `price` int(11) NOT NULL,
  `trash` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `db_product`
--

CREATE TABLE `db_product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `sale` tinyint(4) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `hot` tinyint(4) DEFAULT NULL,
  `kg` int(11) DEFAULT NULL,
  `buyed` int(5) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `images` varchar(100) NOT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `db_product`
--

INSERT INTO `db_product` (`id`, `name`, `price`, `sale`, `category_id`, `content`, `quantity`, `hot`, `kg`, `buyed`, `avatar`, `images`, `status`, `created_at`) VALUES
(14, 'Iphone XS Max Quốc tế', 12500000, 10, 18, 'Nổi bật với chip A12 Bionic mạnh mẽ, màn hình rộng đến 6.5 inch, cùng camera kép trí tuệ nhân tạo và Face ID được nâng cấp.', 20, 0, 0, NULL, ' iPXSden.jpg', 'IPXSMaxQT.jpg', 1, '2020-08-28 19:44:05'),
(15, 'Iphone6 Plus', 3600000, 10, 9, 'Được đổi mới mạnh mẽ về thiết kế, cấu hình cùng một màn hình kích thước lớn đi cùng mang đến nhiều thích thú hơn trong sử dụng', 17, 0, 0, NULL, 'iphone6sPlus.jpg', 'iphone6splus32gb.jpg', 1, '2020-08-29 00:04:50'),
(16, 'Iphone 6 Quốc tế', 1900000, 10, 5, '- Iphone 6 quốc tế bản chính hãng apple\r\n- Vân tay đầy đủ, rất nhạy\r\n- Máy hình thức rất đẹp không một lỗi lầm\r\n- Đủ Màu xám/vàng/trắng bạn muốn chọn màu ghi ở lưu ý hoặc inbox cho shop.', 20, 0, 0, NULL, 'iphone6Sqt.jpg', 'iphone6s.jpg', 1, '2020-08-29 00:04:50'),
(17, 'Iphone 7 Quốc tế', 3700000, 10, 8, 'Máy có ngoại hình rất mới và trải nghiệm ổn định tại Việt Nam. Sản phẩm được bán ra tại Di Động Việt, bảo hành 6 tháng và hỗ trợ 1 đổi 1 cùng nhiều chính sách mua hàng ưu đãi khác.', 19, 0, 0, NULL, ' iphone7.jpg', 'Iphone7Sqt.jpg', 1, '2020-08-29 09:10:25'),
(18, 'Iphone8 Plus', 13900000, 15, 21, 'iPhone 8 Series giữ nguyên hoàn toàn những đường nét thiết kế đã hoàn thiện từ thế hệ trước nhưng sử dụng phong cách 2 mặt kính cường lực kết hợp bộ khung kim loại', 10, 0, 0, NULL, 'iphone8.jpg', 'Iphone8PsQt.jpg', 1, '2020-08-29 09:14:19'),
(19, 'Iphone11 Pro Max Lock', 15900000, 12, 15, 'Chiếc iPhone mạnh mẽ nhất, lớn nhất, thời lượng pin tốt nhất đã xuất hiện. iPhone 11 Pro Max chắc chắn là chiếc điện thoại mà ai cũng ao ước khi sở hữu những tính năng xuất sắc nhất, đặc biệt là camera và pin.\r\n\r\n', 10, 0, 0, NULL, 'iP11lock.jpg', 'iP11MaxLock.jpg', 1, '2020-08-29 09:17:34'),
(20, 'Iphone XS Max', 12800000, 10, 6, 'Xs Max sử dụng thép không gỉ và hợp kim được thiết kế tùy chỉnh đặc biệt để tạo ra các dải cấu trúc. Với mặt kính bền, điện thoại thông minh này cũng cung cấp khả năng chống nước và bụi đáng kể. Mặt lưng bằng kính của nó cũng cho phép điện thoại sạc không dây.', 10, 0, 0, NULL, 'iPXSden.jpg', ' iPXSvang.jpg', 1, '2020-08-29 09:30:10'),
(21, 'Iphone X', 10590000, 10, 16, 'Có màn hình 5,8inch sắc nét, thiết kế tai thỏ thời thượng, camera kép chất lượng cao và con chip Apple A11 mạnh mẽ, tiết kiệm điện năng. iPhone X  phù hợp với người dùng cần một smartphone thương hiệu lớn, vóc dáng vừa phải, cấu hình hàng đầu và chụp ảnh đẹp', 10, 0, 0, NULL, 'iphoneXden.jpg', 'IphoneXtrang.jpg', 1, '2020-08-29 09:36:57'),
(22, 'Iphone 11 Lock', 13090000, 12, 23, 'Apple iPhone Lock 11 với 6 phiên bản màu sắc. Camera có khả năng chụp ảnh vượt trội, thời lượng pin cực dài và bộ vi xử lý mạnh nhất từ trước đến nay. Mang đến trải nghiệm tuyệt vời dành cho bạn', 10, 0, 0, NULL, 'iP11proden.jpg', 'iP11pro.jpg', 1, '2020-08-29 09:45:46'),
(23, 'Iphone 11', 11000000, 10, 16, 'Chiếc iPhone 11 với khung máy được làm bằng nhôm và kính, thiết kế màn hình ‘tai thỏ’ LCD 6.1 inch (Liquid Retina) quen thuộc, cụm camera kép được đặt trong khung vuông giúp máy trông cao cấp và sang trọng hơn. Tuy nhiên nếu bạn không thích thiết kế cụm camera nằm trong khung vuông thì hẳn rằng, sẽ không có mẫu iPhone 11 nào có thể hấp dẫn bạn qua vẻ bề ngoài.', 10, 0, 0, NULL, 'iphone11den.jpg', 'iphone11.jpg', 1, '2020-08-29 09:50:42'),
(24, 'IPAD 10.2 2019 Wi-Fi 32GB', 8600000, 10, 10, 'Về mặt thiết kế, mẫu iPad 10.2 inch không có nhiều điểm mới so với các dòng iPad tiền nhiệm, tuy nhiên phần khung của máy được làm từ kim loại nhôm tái chế để thân thiện hơn với môi trường. Các chi tiết máy được hoàn thiện rất tỷ mỷ và chau chuốt, các góc cạnh được bo rất tinh tế mang lại sử sang trọng và đẳng cấp cho chiếc iPad này.', 10, 0, 0, NULL, 'IPADapple.jpg', 'IPAD.jpg', 1, '2020-08-29 10:07:59'),
(25, 'Apple Watch', 8990000, 10, 11, 'Đồng hồ thông minh Apple Watch S3 LTE 38mm viền nhôm dây cao su mang đến người dùng những đường nét thiết kế hoàn hảo, khả năng hỗ trợ tập luyện thể thao cũng như nhiều tiện ích chăm sóc sức khỏe cũng được tích hợp trong chiếc smartwatch này.', 10, 0, 0, NULL, 'AppleWatch.jpg', 'AppleW2', 1, '2020-08-29 10:16:30'),
(26, 'Airpods', 4190000, 10, 12, 'Thế hệ thứ 2 lần này không có nhiều sự khác biệt so với thế hệ đầu về ngoại hình, trừ một số chi tiết về đèn báo hiệu cũng như ra mắt thêm phiên bản sạc không dây và sạc thường (sạc có dây). Ngoài ra, bạn có thể tham khảo thêm Apple Airpods 3, sắp được ra mắt trong thời gian tới.', 10, 0, 0, NULL, 'Airpods1.jpg', 'Airpods2.jpg', 1, '2020-08-29 10:25:45'),
(27, 'Iphone8 Series', 8900000, 10, 7, 'iPhone 8 Series giữ nguyên hoàn toàn những đường nét thiết kế đã hoàn thiện từ thế hệ trước nhưng sử dụng phong cách 2 mặt kính cường lực kết hợp bộ khung kim loại', 10, 0, 0, NULL, 'Iphone8PsQt.jpg', 'iphone8.jpg', 1, '2020-08-29 10:25:45'),
(28, 'ip X series', 10250000, 10, 13, 'Có màn hình 5,8inch sắc nét, thiết kế tai thỏ thời thượng, camera kép chất lượng cao và con chip Apple A11 mạnh mẽ, tiết kiệm điện năng. iPhone X  phù hợp với người dùng cần một smartphone thương hiệu lớn, vóc dáng vừa phải, cấu hình hàng đầu và chụp ảnh đẹp', 10, 0, 0, NULL, 'IphoneXtrang.jpg', 'iphoneXden.jpg', 1, '2020-08-29 10:25:45'),
(29, 'Iphone 11 Pro', 17500000, 10, 14, 'Apple iPhone 11 Pro với 6 phiên bản màu sắc. Camera có khả năng chụp ảnh vượt trội, thời lượng pin cực dài và bộ vi xử lý mạnh nhất từ trước đến nay. Mang đến trải nghiệm tuyệt vời dành cho bạn', 10, 0, 0, NULL, 'iP11pro.jpg', 'iP11proden.jpg', 1, '2020-08-29 10:25:45'),
(30, 'Iphone XS ', 10500000, 10, 17, 'Xs sử dụng thép không gỉ và hợp kim được thiết kế tùy chỉnh đặc biệt để tạo ra các dải cấu trúc. Với mặt kính bền, điện thoại thông minh này cũng cung cấp khả năng chống nước và bụi đáng kể. Mặt lưng bằng kính của nó cũng cho phép điện thoại sạc không dây.', 10, 0, 0, NULL, 'iPXSvang.jpg', ' iPXSden.jpg', 1, '2020-08-29 09:30:10'),
(31, 'Iphone XR', 9200000, 10, 19, 'Iphone XR  không có nhiều sự khác biệt so với thế hệ đầu về ngoại hình, trừ một số chi tiết về đèn báo hiệu cũng như ra mắt thêm phiên bản sạc không dây và sạc thường (sạc có dây). Ngoài ra, bạn có thể tham khảo thêm Apple Airpods 3, sắp được ra mắt trong thời gian tới.', 10, 0, 0, NULL, 'iphonexr.jpg', 'iphonexr2.jpg', 1, '2020-08-29 10:25:45'),
(32, 'Iphone 8', 6170000, 10, 20, 'Iphone 8 không có nhiều sự khác biệt so với thế hệ đầu về ngoại hình, trừ một số chi tiết về đèn báo hiệu cũng như ra mắt thêm phiên bản sạc không dây và sạc thường (sạc có dây). Ngoài ra, bạn có thể tham khảo thêm Apple Airpods 3, sắp được ra mắt trong thời gian tới.', 10, 0, 0, NULL, 'Iphone8PsQt.jpg', 'iphone8.jpg', 1, '2020-08-29 10:25:45'),
(33, 'Iphone 7', 4200000, 10, 22, 'Máy có ngoại hình rất mới và trải nghiệm ổn định tại Việt Nam. Sản phẩm được bán ra tại Di Động Việt, bảo hành 6 tháng và hỗ trợ 1 đổi 1 cùng nhiều chính sách mua hàng ưu đãi khác.', 19, 0, 0, NULL, ' Iphone7Sqt.jpg', 'iphone7.jpg', 1, '2020-08-29 09:10:25');

-- --------------------------------------------------------

--
-- Table structure for table `db_slider`
--

CREATE TABLE `db_slider` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `link` varchar(255) CHARACTER SET utf8 NOT NULL,
  `img` varchar(100) CHARACTER SET utf8 NOT NULL,
  `created` datetime NOT NULL,
  `created_by` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT 'Supper Admin',
  `modified` datetime NOT NULL,
  `modified_by` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT 'Supper Admin',
  `trash` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `db_user`
--

CREATE TABLE `db_user` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) CHARACTER SET utf8 NOT NULL,
  `username` varchar(225) CHARACTER SET utf8 NOT NULL,
  `password` varchar(64) CHARACTER SET utf8 NOT NULL,
  `role` int(11) NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 NOT NULL,
  `gender` int(1) NOT NULL,
  `phone` varchar(15) CHARACTER SET utf8 NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(255) CHARACTER SET utf8 NOT NULL,
  `created` datetime NOT NULL,
  `trash` int(1) NOT NULL DEFAULT 1,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_user`
--

INSERT INTO `db_user` (`id`, `fullname`, `username`, `password`, `role`, `email`, `gender`, `phone`, `address`, `img`, `created`, `trash`, `status`) VALUES
(1, 'ADMIN', 'admin', '7c4a8d09ca3762af61e59520943dc26494f8941b', 1, 'admin@gmail.com', 1, '0167892615', 'hn', 'user-group.jpg', '2019-04-23 09:16:16', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_usergroup`
--

CREATE TABLE `db_usergroup` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  `trash` tinyint(1) NOT NULL DEFAULT 1,
  `access` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_usergroup`
--

INSERT INTO `db_usergroup` (`id`, `name`, `created`, `created_by`, `modified`, `modified_by`, `trash`, `access`, `status`) VALUES
(1, 'Toàn quyền', '2019-05-14 23:29:15', 1, '2019-05-14 23:29:15', 4, 1, 1, 1),
(2, 'Nhân viên', '2019-05-14 23:29:21', 1, '2019-05-14 23:29:21', 4, 1, 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `db_category`
--
ALTER TABLE `db_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_config`
--
ALTER TABLE `db_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_contact`
--
ALTER TABLE `db_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_content`
--
ALTER TABLE `db_content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_customer`
--
ALTER TABLE `db_customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_discount`
--
ALTER TABLE `db_discount`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_order`
--
ALTER TABLE `db_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customerid` (`customerid`),
  ADD KEY `province` (`province`),
  ADD KEY `district` (`district`),
  ADD KEY `province_2` (`province`),
  ADD KEY `district_2` (`district`),
  ADD KEY `province_3` (`province`),
  ADD KEY `district_3` (`district`);

--
-- Indexes for table `db_orderdetail`
--
ALTER TABLE `db_orderdetail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productid` (`productid`),
  ADD KEY `orderid` (`orderid`);

--
-- Indexes for table `db_product`
--
ALTER TABLE `db_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `db_slider`
--
ALTER TABLE `db_slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_user`
--
ALTER TABLE `db_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role` (`role`);

--
-- Indexes for table `db_usergroup`
--
ALTER TABLE `db_usergroup`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `db_category`
--
ALTER TABLE `db_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `db_config`
--
ALTER TABLE `db_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `db_contact`
--
ALTER TABLE `db_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `db_content`
--
ALTER TABLE `db_content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `db_customer`
--
ALTER TABLE `db_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `db_discount`
--
ALTER TABLE `db_discount`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID';

--
-- AUTO_INCREMENT for table `db_order`
--
ALTER TABLE `db_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `db_orderdetail`
--
ALTER TABLE `db_orderdetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `db_product`
--
ALTER TABLE `db_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `db_slider`
--
ALTER TABLE `db_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `db_user`
--
ALTER TABLE `db_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `db_usergroup`
--
ALTER TABLE `db_usergroup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
