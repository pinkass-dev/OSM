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
(15, 'Iphone6 Plus', 3600000, 10, 9, 'Được đổi mới mạnh mẽ về thiết kế, cấu hình cùng một màn hình kích thước lớn đi cùng mang đến nhiều thích thú hơn trong sử dụng', 17, 0, 0, NULL, 'iphone6s.jpg', 'iphone6Sqt.jpg', 1, '2020-08-29 00:04:50'),
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

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `intro` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `image_link` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `status` tinyint(5) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

INSERT INTO `news` (`id`, `title`, `intro`, `content`, `image_link`, `status`, `created`) VALUES
(18, 'Giá sốc cơn lốc quà tặng chào mừng MediaMart khai trương siêu thị thứ 76 tại Hải Dương', 'Giá sốc cơn lốc quà tặng chào mừng MediaMart khai trương siêu thị thứ 76 tại Hải Dương', 'Sáng thứ 7, ngày 27/1/2018, MediaMart sẽ chào đón thêm thành viên mới MEDIAMART PHẠM NGŨ LÃO tại Ngã tư nhà máy sứ Hải Dương, đường Phạm Ngũ Lão, thành phố Hải Dương (cạnh nhà máy sứ Hải Dương), nâng tổng số trung tâm trên toàn hệ thống lên 76 siêu thị. Nhân dịp này, MediaMart mang đến chuỗi chương trình khuyến mại “Khai trương giá sốc cơn lốc quà tặng” áp dụng từ ngày 27/1-2/2/2018.\r\n\r\n \r\n\r\nMediaMart Phạm Ngũ Lão là siêu thị điện máy thứ 5 tại Hải Dương. Được ra mắt trong những ngày cuối năm Đinh Dậu, chào xuân Mậu Tuất, MediaMart Phạm Ngũ Lão hứa hẹn đem đến cơ hội tận hưởng ngàn sản phẩm với mức giá cực rẻ dành cho người tiêu dùng trong 10 ngày đầu khai trương.\r\n\r\nTheo đó, tâm điểm của đợt khai trương lần này là chương trình : “Giá sốc cơn lốc quà tặng” , tài trợ trả góp 0% lãi xuất trong vòng 6 tháng. Mua Tivi tặng tủ lạnh, loa soundbar, điện thoại Samsung Galaxy, lò vi sóng 20L, vali Lock &amp; Lock, nồi chiên không dầu,…Tổng trị giá lên đến 14.990.000đ. Ngoài ra, khách hàng còn được hoàn tiền 10% khi thanh toán qua thẻ Vietcombank với các giao dịch từ 5 triệu đồng trở lên. Bên cạnh đó, các sản phẩm gia dụng, máy tính, phụ kiện đều có mức giá ưu đãi từ 20-30%. \r\n\r\nGiảm giá sâu hơn cả phải kể đến dòng Tivi LED HD 32inch giá khai trương chỉ 3.490.000đ, Smart Tivi 4K UHD 40inch giá cực sốc 6.291.000đ, Tivi 4K Ultra HD 55inch rẻ hơn Tivi thường giá cực sốc 11.990.000đ, Smart Tivi 43inch LG 43UJ632T giá sau trừ khuyến mại 11.500.000đ, Smart Tivi 43inch Sony model 43X7500E giảm 17% giá khai trương 14.500.000đ, Tivi 50 inch Samsung 4K Ultra HD 50MU6100 giảm 32% giá chỉ còn 16.200.000đ tặng vali Travel Zone, lò vi sóng 20L…\r\n', 'gia-soc-con-loc-qua-tang-chao-mung-mediamart-khai-truong-sieu-thi-thu-76-tai-hai-duong-66F9Mz.png', 1, '2018-01-27 05:55:46'),
(19, 'Xiaomi Mi 8: flagship đầu bảng giá chưa đến 10 triệu đồng', 'Xiaomi gây bất ngờ lớn khi trình làng Mi 8 với cấu hình và những tính năng đầu bảng trong tầm giá bán chỉ chưa đến 10 triệu đồng.', '<p><a href=\"https://fptshop.com.vn/tin-tuc/tin-moi/xiaomi-mi-8-ra-mat-giong-iphone-x-diem-antutu-cao-nhat-camera-105-diem-dxomark-70371\" target=\"_blank\">Xiaomi Mi 8 chắc chắn là cái tên hot nhất ngày hôm nay</a>.&nbsp;<a href=\"https://fptshop.com.vn/dien-thoai/xiaomi\" target=\"_blank\">Xiaomi</a>&nbsp;đã mang đến một sản phẩm tuyệt vời ở mọi khía cạnh, những tính năng và công nghệ hàng đầu trong tầm giá rất khó tin. Xiaomi Mi 8 sở hữu cấu hình mạnh nhất, camera được DxOMark đánh giá vượt qua&nbsp;<a href=\"https://fptshop.com.vn/dien-thoai/iphone-x\" target=\"_blank\">iPhone X</a>, nhận diện khuôn mặt bằng hồng ngoại chính xác và thiết kế màn hình AMOLED không viền đẹp mắt.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3><strong>Thiết kế Xiaomi Mi 8</strong></h3>\r\n\r\n<p>Xiaomi Mi 8 có thiết kế theo xu hướng màn hình “tai thỏ” mới nhưng Xiaomi vẫn giữ được kiểu dáng đặc trưng của dòng Mi đó là thân máy thanh mảnh cùng mặt lưng kính cong bo tròn tinh tế. Phần khung của Mi 8 làm từ nhôm series 7000, chất liệu nhẹ và rất cứng cáp. Vật liệu chủ đạo trong lớp vỏ Mi 8 là kính, thiết kế cong đều giống như các thế hệ Mi 5 và Mi 6 trước đây. Nếu là fan của Xiaomi, bạn sẽ nhận ra sự thân thuộc trong ngôn ngữ thiết kế Xiaomi Mi 8.</p>\r\n\r\n<p>Cụm camera của Mi 8 được thiết kế đặt dọc và hơi lồi lên giống như Mi Mix 2S, cảm biến vân tay nằm ở phần mặt lưng để nhường chỗ cho màn hình FullView mặt trước. Sẽ có 4 tùy chọn màu cho Mi 8 là Xanh lam, Vàng, Trắng và Đen.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3><strong>Màn hình Xiaomi Mi 8</strong></h3>\r\n\r\n<p>Màn hình là một điểm rất đáng nói trên Mi 8 khi cuối cùng Xiaomi cũng đã theo xu hướng “tai thỏ” thay vì màn hình Full như Mi Mix 2S. Xiaomi Mi 8 sử dụng màn hình AMOLED của Samsung có kích thước lớn 6,21 inch độ phân giải Full HD+ 2248 x 1080 pixesl (18,7:9). Nhờ viền màn hình mỏng mà Mi 8 có kích thước tổng thể chỉ tương đương một chiếc máy 5,5 inch thông thường. Ngoài ra, Xiaomi cũng đã biết cách tận dụng lợi thế từ màn hình AMOLED khi thêm vào tính năng màn hình luôn bật Always On tương tự như các máy Samsung Galaxy.</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'xiaomi-mi-8-offical-1.jpg', 1, '2018-05-31 15:34:02'),
(20, 'Laptop chạy chip Snapdragon 850 đầu tiên sắp ra mắt', 'Một laptop siêu di động, thời lượng pin dài, kết nối 4G mọi lúc mọi nơi có thể là điều bạn đang mong muốn?', '<p>Sau khi chip Snapdragon 845 ra đời, các tin đồn về chip Snapdragon 855 liên tiếp xuất hiện, nó sẽ ra mắt vào cuối năm 2018. Snapdragon 855 được tin sẽ áp dụng quy trình 7 nm, tích hợp băng tần mạng 5G Qualcomm X50. Mặc dù vậy, Qualcomm cũng đang chuẩn bị một phiên bản chip khác, nằm giữa Snapdragon 845 và 855, đó là Snapdragon 850.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Theo “người rò rỉ” Roland Quandt, Qualcomm sẽ sớm ra mắt Snapdragon 850, và có thể hiểu đây là phiên bản nâng cấp của Snapdragon 845. Nhưng lần này, Snapdragon 850 sẽ được sử dụng trên&nbsp;<a href=\"https://fptshop.com.vn/may-tinh-xach-tay\" target=\"_blank\">laptop</a>&nbsp;chạy Windows 10, thay vì cho smartphone.</p>\r\n\r\n<p>Laptop Windows 10 chạy chip ARM đầu tiên ra mắt vào năm ngoái, đó là HP Envy x2 và Lenovo Miix 630, cả 2 dùng chip Snapdragon 835 với mục tiêu kết nối internet, mạng 4G mọi lúc mọi nơi. Tuy nhiên do hiệu năng hạn chế cũng như không thể chạy được nhiều ứng dụng x86 vì vậy mà nó không hấp dẫn người dùng.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Vài ngày trước đây, một laptop của Lenovo dùng chip Snapdragon 845 cũng đã xuất hiện trên Geekbench, nó đạt 1.353 điểm đơn lõi và 4.288 điểm đa lõi. So với Snapdragon 835 thì hiệu năng lõi đơn đã tăng 50%, đa lõi tăng 25%.</p>\r\n\r\n<p>Snapdragon 850 sẽ có lõi xung nhịp đạt tới 3 GHz, các laptop Windows 10 ARM dùng chip này sẽ gồm Lenovo ELZE1 (châu Âu), Hewlett-Packard Chimera 2 và Asus Thanos, cả 3 sẽ tung ra trong mùa hè này. Trong khi Dell cũng sẽ ra mắt laptop chip Snapdragon 850 nhưng muộn hơn.</p>\r\n', 'fa2.jpg', 1, '2018-05-31 15:35:21'),
(21, 'Thanh toán hóa đơn qua Payoo tại FPT Shop, nhận ngay SmartTV 49 Samsung', 'Trong tháng 6 này, FPT Shop phối hợp với Payoo tặng 8 SmartTV Samsung trị giá 13.890.000 đồng/chiếc cho tất cả khách hàng đến thanh toán các loại hóa đơn,vé và dịch vụ khác qua Payoo (bao gồm hóa đơn điện, nước, điện thoại, truyền hình, trả góp v.v...).', '<p>Theo đó, từ nay đến ngày 30/6, chọn thanh toán các loại hóa đơn qua Payoo, bao gồm: hóa đơn điện, nước, thanh toán thẻ cào, trả góp,..tại cửa hàng FPT Shop bất kỳ trên toàn quốc, bạn có ngay cơ hội trúng 1 trong 8 SmartTV Samsung trị giá 13.890.000 đồng/chiếc thông qua hình thức quay số trên hệ thống.</p>\r\n\r\n<p>Với&nbsp;<a href=\"https://fptshop.com.vn/cua-hang\">hệ thống 500 cửa hàng</a>&nbsp;trên khắp cả nước, hoạt động từ 8h00 – 22h00 tất cả các ngày trong tuần, FPT Shop là địa điểm giúp bạn thanh toán các loại hóa đơn hàng tháng cách dễ dàng và thuận tiện hơn. Hấp dẫn hơn nữa, trong tháng 5 này, đến FPT Shop thanh toán hóa đơn bạn còn có thêm cơ hội nhận quà tặng giá trị. Mỗi hóa đơn sẽ tương ứng với 1 lần tham gia, như vậy, càng nhiều hóa đơn được thanh toán, bạn càng có nhiều cơ hội trở thành chủ nhân của 8 SmartTV Samsung từ FPT Shop.&nbsp;Đây là ưu đãi cực hấp dẫn và thiết thực với mong muốn tất cả khách hàng được hưởng thêm nhiều lợi ích gia tăng khi chọn trải nghiệm dịch vụ tại đây.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Chương trình tháng 6 sẽ có 4 đợt quay số may mắn, cụ thể:</p>\r\n\r\n<p>•&nbsp;Đợt 1: ngày 7/6 dành cho các khách hàng đã thanh toán hóa đơn qua Payoo tại FPT Shop từ ngày 1 - 6/6.</p>\r\n\r\n<p>• Đợt 2: ngày 14/6 dành cho các khách hàng đã thanh toán hóa đơn qua Payoo tại FPT Shop từ ngày 1 - 13/6.</p>\r\n\r\n<p>• Đợt 3: ngày 21/6 dành cho các khách hàng đã thanh toán hóa đơn qua Payoo tại FPT Shop từ ngày 1 - 20/5.</p>\r\n\r\n<p>• Đợt 4: ngày 2/7 dành cho các khách hàng đã thanh toán hóa đơn qua Payoo tại FPT Shop từ ngày 1 - 30/6.</p>\r\n\r\n<p>FPT Shop sẽ liên hệ và tiến hành trao giải cho những khách hàng may mắn nhất sau 20 ngày kể từ ngày công bố kết quả.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Hệ thống bán lẻ FPT Shop là chuỗi chuyên bán lẻ các sản phẩm kỹ thuật số bao gồm điện thoại di động, máy tính bảng, laptop, phụ kiện và dịch vụ công nghệ… Ngay từ những ngày đầu thành lập, FPT Shop đã phối hợp Payoo cùng thực hiện những chương trình thanh toán hóa đơn tại tất cả các cửa hàng trên hệ thống, vừa giúp khách hàng chi trả các hóa đơn tiện lợi và nhanh chóng, vừa có thêm nhiều ưu đãi hấp dẫn.&nbsp;</p>\r\n', 'FPTShop_Payoo (2).jpg', 1, '2018-05-31 15:36:39'),
(22, 'Điều gì khiến OnePlus duy trì sức hút suốt những năm qua?', 'Điều gì khiến OnePlus vẫn duy trì sức hút mạnh mẽ trên thị trường dù ngày càng có nhiều đối thủ cạnh tranh xuất sắc?', '<p>Mới đây,&nbsp;<a href=\"https://fptshop.com.vn/tin-tuc/tin-moi/oneplus-6-chinh-thuc-ra-mat-man-hinh-19-9-snapdragon-845-6gb-8gb-ram-gia-tu-14-trieu-dong-69933\" target=\"_blank\">OnePlus đã trình làng chiếc điện thoại OnePlus 6</a>, đây là sản phẩm thứ 8 trong loạt điện thoại mà nhà sản xuất nổi danh này tung ra thị trường suốt 4 năm tồn tại trên thị trường di động.</p>\r\n\r\n<p>Đã bao giờ bạn thắc mắc là giữa một “rừng” các thương hiệu đối thủ sở hữu nhiều dòng thiết bị xuất sắc, điều gì khiến smartphone OnePlus vẫn trụ vững, phát triển và có lượng người dùng đông đảo khắp thế giới?</p>\r\n\r\n<h3><strong>Tập trung vào chất lượng hơn số lượng</strong></h3>\r\n\r\n<p>Khác với đa số các thương hiệu smartphone&nbsp;<a href=\"https://fptshop.com.vn/tin-tuc/danh-gia/tim-hieu-ve-he-dieu-hanh-android-35517\" target=\"_blank\">Android</a>&nbsp;trên thị trường, OnePlus chỉ tung ra một hoặc hai sản phẩm mới mỗi năm và dốc hết sức lực để hoàn thiện thiết bị một cách tối ưu nhất. Việc tung ra số ít model điện thoại không chỉ giúp OnePlus có nhiều thời gian phát triển máy mà còn tạo điều kiện tốt hơn cho việc hỗ trợ người dùng trong quá trình sử dụng về sau, giúp dòng OnePlus thu hút rất nhiều khách hàng trung thành.</p>\r\n\r\n<h3><strong>Sở hữu bộ giao diện người dùng xuất sắc</strong></h3>\r\n\r\n<p>Ngoài việc được hỗ trợ cập nhật phần mềm thường xuyên, OnePlus còn là dòng máy sở hữu bộ giao diện Android được đánh giá cao hàng đầu hiện nay. Bộ giao diện này có hai phiên bản, trong đó OxygenOS được phát triển độc quyền để cài đặt trên những chiếc smartphone OnePlus bán ra thị trường quốc tế, và HydrogenOS được thiết kế để cài đặt trên những chiếc điện thoại OnePlus phát hành tại thị trường nội địa.</p>\r\n\r\n<p>Phiên bản OxygenOS từ lâu đã được giới công nghệ đánh giá cao nhờ sự nhẹ nhàng, mượt mà và tính thân thiện đối với người sử dụng. Phiên bản mới nhất là OxygenOS 5.1.0 ra mắt cùng với Android Oreo 8.1 hiện đã được cập nhật cho OnePlus 5 và OnePlus 5T.</p>\r\n\r\n<h3><strong>Có ít tính năng, nhưng tất cả đều thiết thực và hữu dụng</strong></h3>\r\n\r\n<p>Hầu hết những chiếc smartphone mà OnePlus tung ra thị trường đều sở hữu cấu hình cực mạnh, xứng đáng với biệt danh “flagship killer” nhờ chạy chip Snapdragon phiên bản mới và bộ nhớ RAM mạnh mẽ vượt trội các đối thủ cùng phân khúc.</p>\r\n\r\n<p>Tuy nhiên,&nbsp;<a href=\"https://fptshop.com.vn/tim-kiem/oneplus/tin-tuc\" target=\"_blank\">OnePlus</a>&nbsp;lại khá bảo thủ trong việc đưa vào smartphone của họ những tính năng mới chưa được thử nghiệm thành công. Thương hiệu này không đi đầu trong việc đưa vào cảm biến vân tay, camera kép hay tính năng nhận diện khuôn mặt lên smartphone. Họ chỉ thực sự đưa một chức năng nào đó lên sản phẩm của mình sau khi đã kiểm nghiệm được tính hữu dụng của chức năng này.</p>\r\n', 'Dieu-gi-khien-oneplus-duy-tri-suc-hut-suot-nhung-nam-qua-1.jpg', 1, '2018-05-31 15:38:15'),
(23, 'OPPO F17 và F17 Pro ra mắt: Màn hình đục lỗ, 4 camera vuông, sạc nhanh 30W', 'Theo OPPO, F17 Pro là smartphone có thiết kế \"mượt mà\" nhất năm 2020, đồng thời cũng là mẫu điện thoại mỏng và nhẹ nhất trong F-series', 'Sau khi ra mắt F15 vào đầu năm nay, OPPO mới đây vừa giới thiệu thêm hai mẫu smartphone mới thuộc dòng F tại Ấn Độ, có tên gọi là OPPO F17 và OPPO F17 Pro. Cả hai chiếc điện thoại này đều có màn hình đục lỗ, 4 camera xếp theo hình vuông ở mặt lưng và thiết kế tổng thể khá giống nhau.\r\nOPPO F17 Pro được quảng cáo là smartphone mỏng nhất và nhẹ nhất trong F-series. Nó nặng 164 gam và có độ dày 7.48mm, mặc dù đi kèm viên pin 4015mAh khá lớn.\r\n\r\nThiết bị sử dụng màn hình Super AMOLED có kích thước 6.43 inch, độ phân giải Full HD+ (2400 x 1080 pixel) và chiếm 90.7% diện tích mặt trước. Ngoài ra, máy cũng được tích hợp cảm biến vân tay dưới màn hình, có thể mở khóa chỉ trong vòng 0.3 giây.\r\n\r\nỞ bên trong, F17 Pro mang sức mạnh phần cứng đến từ vi xử lý Helio P95 của MediaTek, kết hợp với 8GB RAM và 128GB bộ nhớ chuẩn UFS 2.1. Mặt khác, nó cũng hỗ trợ mở rộng dung lượng lưu trữ bằng thẻ nhớ, tích hợp công nghệ HyperEngine để mang đến trải nghiệm chơi game tốt nhất cho người sử dụng.', 'https://genk.mediacdn.vn/thumb_w/660/139269124445442048/2020/9/3/photo-1-15991063436191907669672.jpg', 1, '2020-09-03 16:56:12'),
(24, 'iPhone 11 là smartphone bán chạy nhất nửa đầu năm 2020, bỏ xa vị trí thứ hai', 'iPhone 11 mang đến nhiều cải tiến và có giá bán rẻ hơn đáng kể so với iPhone XR, do đó cũng không có gì quá ngạc nhiên khi chiếc điện thoại này là smartphone bán chạy nhất trong nửa đầu năm nay.', 'Yếu tố then chốt mang lại thành công cho iPhone 11 có lẽ chính là mức giá khởi điểm hấp dẫn của nó, rẻ hơn đến 50 USD so với iPhone XR, mặc dù được bổ sung thêm nhiều cải tiến đáng kể về phần cứng. Báo cáo từ Omdia cho rằng nhờ những cải tiến này, doanh số iPhone vẫn tăng mạnh vào năm 2020, bất chấp cuộc khủng hoảng từ đại dịch COVID-19 trên toàn cầu.\r\n\r\n\r\nMẫu smartphone phổ biến thứ hai trong năm 2020 là Galaxy A51 của Samsung (11.4 triệu chiếc được xuất xưởng), tiếp theo là Redmi Note 8 của Xiaomi (11 triệu chiếc) và Redmi Note 8 Pro (10.2 triệu chiếc).\r\n\r\nMột vài mẫu iPhone khác cũng lọt vào top 10 trong bảng xếp hạng, bao gồm iPhone SE 2020 ở vị trí thứ năm (xuất xưởng 8.7 triệu chiếc), tiếp đến là iPhone XR (8 triệu chiếc), iPhone 11 Pro Max (7.7 triệu chiếc) và cuối cùng là iPhone 11 Pro (6.7 triệu chiếc) ở vị trí thứ 10.', 'https://genk.mediacdn.vn/139269124445442048/2020/9/2/photo-1-1599039349579813855051.jpg', 1, '2020-09-03 10:02:26'),
(25, 'Cận cảnh Galaxy Tab S7 : thiết kế sang trọng, màn hình 12.4 inch 120Hz, Snapdragon 865 giá 24 triệu đồng', 'Đây có thể được xem là mẫu tablet Android hoàn thiện và cao cấp nhất hiện nay.', 'Nằm trong hệ sinh thái công nghệ Galaxy vừa được ra mắt cách đây ít lâu, Samsung Galaxy Tab S7+ chính là mẫu máy tính bảng Android được xem là mạnh mẽ nhất hiện nay. Tablet này vẫn sở hữu thiết kế kim loại nguyên khối với 4 góc được bo tròn nhẹ nhàng cùng các cạnh phẳng cứng cáp mang tới dáng vẻ cao cấp sang trọng.\r\nVới độ dày chỉ khoảng 5.7mm và nặng 575g, Galaxy Tab S7+ cho cảm giác cầm nắm khá chắc chắn và đầm tay. Các cạnh viền đều được cắt vát kỹ càng tuy nhiên vẫn sẽ gây ra cảm giác hơi \"cấn\" khi sử dụng trong thời gian dài.', 'https://genk.mediacdn.vn/thumb_w/660/139269124445442048/2020/9/2/imgp2575-1599032642629649746647.jpg', 1, '2020-09-03 17:03:58'),
(26, 'Samsung ra mắt Galaxy Tab A7 (2020): Màn hình 10.4 inch, Snapdragon 662, 4 loa', 'Galaxy Tab A7 (2020) là mẫu máy tính bảng tầm trung mới nhất của Samsung, sở hữu màn hình lớn, pin khủng và nhiều tính năng phục vụ cho nhu cầu giải trí của người dùng.', 'Thị trường máy tính bảng năm nay đã vô tình được \"hồi sinh\" nhờ đại dịch COVID-19, trong đó nhu cầu làm việc, học tập và giải trí tại nhà đang ngày một tăng cao. Với mong muốn mang đến cho người dùng nhiều lựa chọn phong phú hơn, Samsung hôm nay vừa ra mắt một mẫu máy tính bảng tầm trung hoàn toàn mới, có tên gọi là Galaxy Tab A7 (2020).\r\nMẫu máy tính bảng mới của Samsung đi kèm viên pin 7040mAh nhưng không có sạc nhanh. Nó được trang bị camera 8MP ở mặt sau và camera 5MP ở mặt trước, cho phép mở khóa bằng khuôn mặt và đồng thời, đây cũng là tính năng bảo mật sinh trắc học duy nhất có trên thiết bị này. Ngoài ra, nó cũng hỗ trợ kết nối mạng LTE và được cài sẵn Android 10 với giao diện One UI 2.5 khi bán ra.', 'https://genk.mediacdn.vn/thumb_w/660/139269124445442048/2020/9/2/photo-1-1599037074220313331973.jpg', 1, '2020-09-03 17:07:04'),
(27, 'iOS 13.7 chính thức: Phát hiện phơi nhiễm COVID-19 hoạt động độc lập, không cần tải ứng dụng bên thứ ba', 'Bản cập nhật iOS 13.7 mang tới một số thay đổi đáng chú ý liên quan tới tính năng phát hiện phơi nhiễm COVID-19.', 'Sau một thời gian ngắn phát hành phiên bản thử nghiệm dành cho lập trình viên, hôm nay, Apple đã chính thức tung ra phiên bản iOS 13.7 dành cho các thiết bị iPhone, iPad và iPod touch. Bản cập nhật mới nâng cấp tính năng thông báo phơi nhiễm COVID-19 khi có thể tự hoạt động mà không cần tới một ứng dụng bên thứ 3.Trước đó Apple và Google đã bắt tay hợp tác cùng nhau để công bố tính năng thông báo phơi nhiễm COVID-19 trên smartphone Android và iPhone. Hai công ty cho biết sẽ có hai giai đoạn trong quá trình phát triển công nghệ này. Giai đoạn đầu tiên xuất hiện lần đầu trên iOS 13.5, yêu cầu người dùng phải tải về một ứng dụng bên thứ 3 do địa phương nơi người đó sinh sống cung cấp để có thể kích hoạt tính năng thông báo phơi nhiễm.', 'https://genk.mediacdn.vn/139269124445442048/2020/9/2/photo-1-15990009651091349052102.jpg', 1, '2020-09-03 17:08:24'),
(28, 'Realme X7 & X7 Pro ra mắt: Màn hình 120Hz, hỗ trợ 5G, camera 64MP, sạc nhanh 65W, giá từ 6.1 triệu đồng', '\r\nRealme X7 và X7 Pro là hai mẫu smartphone 5G mới nhất của Realme, sở hữu thông số kỹ thuật mạnh mẽ nhưng đi kèm giá bán cực kì phải chăng.', 'Hôm nay (1/9), Realme - thương hiệu phụ của OPPO vừa ra mắt dòng smartphone cận cao cấp Realme X7 tại Trung Quốc. Trong khi Realme X7 là smartphone chạy chip Dimensity 800U đầu tiên trên thế giới, Realme X7 Pro lại sử dụng con chip Dimensity 1000+ để cạnh tranh với Redmi K30 Ultra.Realme X7 được trang bị màn hình AMOLED 6.4 inch, độ phân giải Full HD+ và tỷ lệ khung hình 20:9. Màn hình của máy có tần số quét 120Hz, tốc độ lấy mẫu cảm ứng 180Hz và chiếm 90.8% diện tích mặt trước.\r\n\r\nĐối với Realme X7 Pro, chiếc điện thoại này sở hữu màn hình S-AMOLED 6.55 inch lớn hơn, tần số quét 120Hz và tốc độ lấy mẫu cảm ứng lên đến 240Hz. Ngoài ra, nó cũng có gam màu 100% DCI-P3 và tỷ lệ diện tích màn hình hiển thị so với mặt trước là 91.6%.\r\n\r\nỞ bên trong, cả Realme X7 và X7 Pro đều được trang bị RAM LPDDR4x lên đến 8GB và bộ nhớ UFS 2.1 lên đến 256GB. Bộ đôi smartphone mới của Realme được tích hợp cảm biến vân tay dưới màn hình, cài sẵn hệ điều hành Android 10 với giao diện Realme UI khi bán ra.', 'https://genk.mediacdn.vn/139269124445442048/2020/9/1/a928d613-d28e-4688-8b64-331459acda0a-15989777769221730653706.jpeg', 1, '2020-09-03 10:10:53'),
(29, 'Galaxy Z Fold2 phiên bản Thom Browne có giá lên tới 3299 USD, chỉ bán 5000 chiếc', 'Để có thể sở hữu phiên bản Thom Browne giới hạn không đụng hàng này, bạn sẽ phải bỏ ra tới hơn 3000 USD.', 'Hôm nay, tại sự kiện đặc biệt được Samsung tổ chức dành riêng để giới thiệu cho chiếc Galaxy Z Fold2 mới, bên cạnh công bố chi tiết cũng như giá bán của chiếc smartphone màn hình gập này, Samsung còn giới thiệu một phiên bản giới hạn đặc biệt của Galaxy Z Fold2 hợp tác cùng nhà thiết kế Thom Browne. Phiên bản lần này có mức giá cực kỳ đắt đỏ, lên tới 3299 USD.\r\n\r\nTất nhiên, giống với chiếc Galaxy Z Flip trước đó, Galaxy Z Fold2 bản Thom Browne lần này cũng đi kèm với một bộ sưu tập bao gồm một chiếc Galaxy Z Fold2, một chiếc Galaxy Watch3 và một chiếc Galaxy Buds Live, tất cả đều có thiết kế đặc trưng của nhà thiết kế Thom Browne, sử dụng tông màu xám và điểm nhấn là màu đỏ, trắng và xanh đậm.', 'https://genk.mediacdn.vn/139269124445442048/2020/9/1/photo-1-15989764765311005531540.jpg', 1, '2020-09-03 17:10:03'),
(30, 'Samsung ra mắt Galaxy Z Fold2: Khắc phục nhiều vấn đề của thế hệ đầu tiên, riêng giá bán vẫn đắt đỏ', '\r\nKhông chỉ nâng cấp cấu hình và camera, phiên bản thứ hai của chiếc Galaxy Fold còn được Samsung cải thiện mạnh mẽ về thiết kế, bản lề, độ bền và công năng sử dụng.', 'Sau khi được \"nhá hàng\" lần đầu tại sự kiện hồi đầu tháng 8, mới đây, Samsung đã chính thức công bố chiếc Galaxy Z Fold2. Đây là phiên bản kế nhiệm của chiếc smartphone màn hình gập Galaxy Fold được Samsung ra mắt hồi năm ngoái.Galaxy Z Fold2 được sinh ra nhằm khắc phục những vấn đề lớn nhất của Galaxy Fold. Vậy, Samsung đã mang đến cho Galaxy Z Fold2 những nâng cấp gì?\r\n\r\nMàn hình nâng cấp toàn diện\r\n\r\nGalaxy Z Fold2 vẫn mang thiết kế cơ bản giống với thế hệ Galaxy Fold năm ngoái với một màn hình phụ nhỏ ở ngoài và màn hình gập lớn ở bên trong. Nếu như ở thế hệ Galaxy Fold đầu tiên, cả hai màn hình này đều có điểm trừ (màn hình ngoài quá nhỏ và viền dày, màn hình trong bị cắt khoét một phần \"tai thỏ\" cho camera), thì trên Z Fold2, những khiếm khuyết này đã được khắc phục triệt để.\r\n\r\nMàn hình phụ của máy có kích thước 6.2 inch, lớn hơn đáng kể và phần viền ở trên/dưới gần như đã được triệt tiêu. Kích thước màn hình phụ lớn hơn khiến cho nó không còn trở nên \"vô dụng\" như ở thế hệ đầu tiên, giúp cho người dùng có thể thực hiện nhanh một số tác vụ mà không cần thiết phải mở máy ra. ', 'https://genk.mediacdn.vn/139269124445442048/2020/9/1/galaxy-z-fold2-main-kv5gmystic-bronze2pcmyk-15989720021811261541913.jpg', 1, '2020-09-03 17:12:11'),
(31, 'Smartphone đầu tiên có camera selfie ẩn dưới màn hình ra mắt, nhưng không phải Vsmart Aris', 'ZTE chính thức trở thành nhà sản xuất đầu tiên thương mại hóa công nghệ camera ẩn dưới màn hình trên chiếc Axon 20 5G.', 'Sau một thời gian \"nhá hàng\" công nghệ camera ẩn dưới màn hình thì hôm nay (1/9), ZTE, thương hiệu smartphone tới từ Trung Quốc, đã chính thức cho ra mắt chiếc smartphone đầu tiên trên thế giới được trang bị công nghệ này: ZTE Axon 20 5G.Công nghệ camera ẩn dưới màn hình từ lâu đã được coi là một bước đi đột phá mới trong kỷ nguyên công nghệ đang dần trở nên bão hòa. Trước đó OPPO cũng đã từng thử nghiệm và trình diễn công nghệ này, tuy nhiên do thời điểm đó OPPO chưa thể hoàn thiện công nghệ này do một số hạn chế nhất định. Tới hôm nay, ZTE đã chính thức triển khai công nghệ camera ẩn trong màn hình trên một chiếc smartphone được thương mại hóa, trở thành nhà sản xuất đầu tiên trên thế giới đạt được cột mốc đáng chú ý này.', 'https://genk.mediacdn.vn/139269124445442048/2020/9/1/photo-1-1598971945230462024675.jpg', 1, '2020-09-03 17:13:12'),
(32, 'Thị phần bị Xiaomi và Samsung \"gặm nhấm\", AirPods dần dần đi theo số phận của iPhone ngày trước', 'Một mặt, Apple đang mất dần chỗ đứng trước các đối thủ giá rẻ hơn trong cuộc chiến True Wireless. Mặt khác, Airpods vẫn còn tương lai vô cùng tươi sáng chờ đợi phía trước.', 'Kể từ khi ra mắt vào năm 2016, AirPods đã luôn được biết đến với vai trò là sản phẩm thống trị thị trường tai nghe True Wireless. Nhưng đến năm nay, vị thế ấy có vẻ đã bị bào mòn: theo số liệu của Counterpoint, thị phần của AirPods trong quý 2 vừa qua đã giảm chỉ còn 35%, thấp hơn hẳn so với mức 49% của năm 2019. Đáng ngạc nhiên hơn, điều này xảy ra khi AirPods vẫn chưa thoái trào: cũng theo Counterpoint, tổng doanh số AirPods năm nay sẽ tăng lên mức 82 triệu đơn vị, tăng mạnh so với mức 61 triệu của năm ngoái.\r\n\r\nTình cảnh của AirPods hiện tại gợi nhắc rất nhiều về những gì đã xảy ra với iPhone ngày trước. Ra mắt vào năm 2007, chiếc điện thoại này đã cách mạng hóa toàn bộ thị trường, xóa sổ toàn bộ các kiểu dáng đi trước và \"đồng hóa\" thế giới di động thành những thiết bị  mỏng nhẹ có 4 góc bo tròn. Sự xuất hiện của iPhone có thể coi là nguyên nhân trực tiếp dẫn đến cái chết của \"cục gạch\" Nokia và cỗ máy nhắn tin BlackBerry, cùng lúc truyền cảm hứng trực tiếp cho sự ra đời của Android.', 'https://genk.mediacdn.vn/139269124445442048/2020/8/30/34vc-1598777488436869568653.jpg', 1, '2020-09-03 17:16:00'),
(33, 'OnePlus 8T lộ diện: Thiết kế giữ nguyên, ra mắt trong tháng 9 này?', 'Không chỉ OnePlus 8T, một vài dòng sản phẩm tầm trung cũng được OnePlus lên lịch ra mắt trong thời gian tới.', 'OnePlus mỗi năm đều tung ra tới hai thế hệ flagship. Ở thời điểm hiện tại, tin đồn về bộ đôi OnePlus 8T và 8T Pro đã xuất hiện khá nhiều. Mới đây, một lập trình viên tại diễn đàn XDA-Developers đã \"mổ xẻ\" phiên bản beta 4 của hệ điều hành OxygenOS và tìm thấy những thông tin thú vị, bao gồm một hình ảnh render của chiếc OnePlus 8T.\r\n\r\nHình ảnh này thực chất là một tệp ảnh được tìm thấy trong ứng dụng Cài đặt của OnePlus với tên \"oneplus 8t.webp\". Hình ảnh này sẽ được hiển thị trong mục About Phone (Giới thiệu về điện thoại) với thông số cấu hình kèm theo. Tuy nhiên, chúng ta chưa thể chắc được liệu đây là hình ảnh thật của chiếc OnePlus 8T sắp ra mắt hay chỉ đơn thuần là một hình ảnh dùng để \"giữ chỗ\".', 'https://genk.mediacdn.vn/thumb_w/660/139269124445442048/2020/9/1/photo-1-1598947764657581798388.jpg', 1, '2020-09-03 17:18:33'),
(34, 'Realme ra mắt smartphone 5G rẻ nhất thế giới: RAM 6GB, pin 5000mAh, giá chỉ 3.4 triệu', 'Chỉ với hơn 3 triệu đồng, người dùng đã có thể sở hữu một chiếc smartphone có hỗ trợ mạng 5G', 'Ở thời điểm hiện tại, công nghệ mạng 5G mới chỉ được trang bị lên các dòng sản phẩm tầm trung hoặc cao cấp có mức giá cao. Tuy nhiên, Realme mới đây đã cho ra mắt một chiếc smartphone mới có tên Realme V3, mức giá của sản phẩm này chỉ hơn 3 triệu đồng, nhưng lại hỗ trợ cả mạng 5G và có thông số cấu hình tương đối hấp dẫn.Realme V3 có thiết kế bằng nhựa khá quen thuộc với các dòng sản phẩm Realme gần đây. Máy được trang bị một màn hình \"giọt nước\" kích thước lớn 6.5 inch, sử dụng tấm nền LCD IPS và có độ phân giải dừng ở mức HD+ (720 x 1600). Realme cho biết màn hình này có diện tích hiển thị so với mặt trước chiếm 88.7%.\r\n\r\nMặt lưng của máy nổi bật với cụm 3 camera chính được đặt trong một mô-đun hình vuông. Cụm camera này bao gồm một camera góc rộng 13MP f/2.2, một camera macro 2MP (khoảng cách lấy nét 4cm) và một camera 2MP đo chiều sâu, không có camera tele và camera góc siêu rộng. Cụm camera này có khả năng quay 1080p ở 60fps và 720p ở 120fps (chuyển động chậm). Ngoài ra, Realme V3 cũng có thêm một camera selfie 8MP ở mặt trước.', 'https://genk.mediacdn.vn/139269124445442048/2020/9/1/photo-1-15989504416701475599219.jpg', 1, '2020-09-03 17:19:25'),
(35, 'Samsung ra mắt Galaxy Tab S7 và S7+ tại VN, giá từ 19 triệu đồng', '\r\nBộ đôi Galaxy Tab S7 mới mang tới nhiều nâng cấp về màn hình, hiệu năng và bút S Pen.\r\n', 'Hôm nay (1/9), Samsung chính thức cho ra mắt bộ đôi Galaxy Tab S7 và S7+ với bút S Pen thế hệ mới tại thị trường Việt Nam. Đây là hai mẫu máy tính bảng cao cấp tiếp theo kế nhiệm cho dòng Tab S6 trước đó của Samsung.\r\n\r\nBộ đôi Galaxy Tab S7 sở hữu thiết kế được nâng cấp từ phiên bản Tab S6 từng được nhiều người dùng đánh giá cao. Máy được hoàn thiện hoàn toàn từ chất liệu kim loại cao cao cấp. Thiết kế màn hình với các viền bezel được làm mỏng mang tới trải nghiệm sử dụng tốt hơn', 'https://genk.mediacdn.vn/thumb_w/660/139269124445442048/2020/9/1/008galaxytabs7plusmysticblackmainkv2p-15989402398631234941023.jpg', 1, '2020-09-03 17:21:00'),
(36, 'Hé lộ bằng sáng smartphone màn hình gập với cơ chế gập ra ngoài vô cùng độc đáo của Oppo', '\r\nMột bằng sáng chế mới liên quan đến smartphone màn hình gập của Oppo đang mở ra những cách tiếp cận mới đầy thú vị với xu hướng này của ngành công nghiệp di động', 'Trong cuộc đua trên thị trường smartphone màn hình gập, Samsung đang dẫn đầu khi cho ra mắt Galaxy Fold và Galaxy Z Fold và mới đây nhất là Galaxy Z Fold 2. Huawei cũng có dòng Mate X với màn hình gập ra ngoài. Một model khác là Moto Razr cũng sở hữu thiết kế vỏ sò. Trong khi đó các hãng smartphone Trung Quốc khác như Oppo, Xiaomi cũng được cho đang nghiên cứu smartphone màn hình gập.\r\n\r\nSự khác biệt trong ý tưởng của Oppo so với hầu hết các hãng là smartphone màn hình gập ra ngoài theo chiều ngang thay vì chiều dọc như truyền thống.\r\n\r\nTheo tiết lộ từ trang LetsGoDigital, Văn phòng Sở hữu trí tuệ thế giới (WIPO) mới đây đã cấp bằng sáng chế về một chiếc smartphone màn hình gập mới cho Oppo.\r\n\r\nBằng sáng chế mô tả một thiết kế độc đáo trên chiếc smartphone màn hình cong này. Không giống như Galaxy Z Flip và Motorola Razr, màn hình uốn cong của nó hướng ra ngoài và gập theo chiều ngang.', 'https://genk.mediacdn.vn/thumb_w/660/139269124445442048/2020/8/31/2020-08-31180659-1598872409092971857369.jpg', 1, '2020-09-03 17:21:52'),
(37, '“Ông đồng” Ming-Chi Kuo cho rằng Huawei có thể sẽ phải rút lui khỏi thị trường smartphone', 'Trường hợp tốt nhất là thị phần của Huawei sẽ sụt giảm, còn trường hợp xấu nhất là Huawei sẽ phải rút lui khỏi thị trường smartphone.', 'Theo chuyên gia phân tích Ming-Chi Kuo, người được mệnh danh là “ông đồng” với những nhận định và dự đoán rất chính xác về các sản phẩm sắp ra mắt của Apple, Huawei có thể sẽ sụp đổ và phải rút lui khỏi thị trường smartphone, nếu như mọi chuyện tiếp tục diễn ra theo chiều hướng xấu hơn.\r\n\r\nMỹ đã bắt đầu nhắm vào Huawei từ năm ngoái. Bắt đầu với việc đưa Huawei vào danh sách thực thể, dẫn đến việc không thể hợp tác với các công ty công nghệ của Mỹ như Google. Cũng vì vậy, smartphone của Huawei không thể cài đặt các ứng dụng và dịch vụ quen thuộc của Google.', 'https://genk.mediacdn.vn/thumb_w/660/139269124445442048/2020/9/1/photo-1-15989265695681715395941.jpg', 1, '2020-09-03 17:22:54'),
(38, 'OPPO vượt mặt Samsung để trở thành nhà sản xuất smartphone số 1 tại Đông Nam Á', 'Sự thay đổi vị thế lần này của các hãng smartphone tại thị trường Đông Nam Á một phần do ảnh hưởng của đại dịch COVID-19.', 'OPPO mới đây đã chính thức vượt mặt Samsung để trở thành nhà sản xuất smartphone phổ biến nhất thị trường Đông Nam Á trong Quý 2/2020.\r\n\r\nCụ thể, theo thống kê từ công ty nghiên cứu thị trường Counterpoint Research, OPPO dẫn đầu danh sách với thị phần smartphone cao nhất, chiếm tới 20.3%. Kế đến là Samsung đứng ở vị trí thứ 2. Nhà sản xuất tới từ xứ sở kim chi có thị phần ở mức 19.5% theo ngay sát OPPO. Ở vị trí thứ 3 là Vivo với 17.9% thị phần, Xiaomi ở vị trí thứ 4 với 14% thị phần và Realme với 12.8% thị phần đứng ở vị trí thứ 5. Như vậy là trong top 5 thương hiệu smartphone phổ biến nhất khu vực Đông Nam Á, có tới 4 trên 5 thương hiệu là những cái tên tới từ Trung Quốc.\r\n\r\n', 'https://genk.mediacdn.vn/thumb_w/660/139269124445442048/2020/9/1/-15989250874841465847698.jpg', 1, '2020-09-03 17:23:10'),
(39, 'Nhìn lại Kin: tưởng là át chủ bài của Microsoft và Verizon nhưng bị khai tử chỉ sau 48 ngày, rồi hồi sinh và khai tử lần nữa', 'Nếu nói rằng sự ra mắt của Microsoft Kin diễn ra không tốt thì sẽ là một cách nói quá nhẹ. Thảm họa thì đúng hơn.', 'Andy Rubin được nhiều người biết đến như là “cha đẻ của Android\", hay người tạo ra chiếc Essential Phone và có nhiều “scandal\". Tuy nhiên, có thể bạn không biết ngoài Essential thì Andy Rubin còn từng thành lập một công ty khác, là Danger Hiptop và công ty này từng tạo ra chiếc Sidekick cho T-Mobile. Điều này xảy ra còn trước khi Rubin tạo ra công ty Android Inc. và sau này được Google mua lại.Vài năm sau khi Rubin rời khỏi Danger, công ty được Microsoft tiếp nhận, gã khổng lồ phần mềm này cũng đang tìm kiếm hệ điều hành điện thoại thông minh lớn tiếp theo kể từ khi Windows Mobile lụi tàn.', 'https://genk.mediacdn.vn/thumb_w/660/139269124445442048/2020/8/30/d6fn1z8uyaapsoh-15987607361831410889077.jpg', 1, '2020-09-03 17:24:29'),
(40, 'Xiaomi tìm thấy hai chìa khóa thành công mới: Những chiếc Mi đắt đỏ, và... Huawei', '\r\nNhững tưởng sẽ phải chịu ảnh hưởng nặng nề từ dịch bệnh, Xiaomi lại vừa ghi nhận kết quả rất đáng khich lệ trong 6 tháng đầu năm.', 'Cũng giống như các thương hiệu khác, Xiaomi đã phải đối mặt với nhiều khó khăn do Covid-19 gây ra. Các cửa hàng Mi Store và Mi Home trên toàn cầu phải sớm đóng cửa, sản xuất bị đình trệ, mẫu đầu bảng mới nhất của hãng này là Mi 10 đã phải ra mắt trực tuyến thay vì tại sự kiện riêng. Trong quý 2, lượng smartphone xuất xưởng cũng giảm 3 triệu máy, còn 28 triệu đơn vị.\r\n\r\nNhưng đứng trước nghịch cảnh này, Xiaomi vừa qua đã công bố kết quả kinh doanh vô cùng tươi sáng cho 6 tháng đầu năm. Cổ phiếu của Tiểu Mễ cũng liên tục lên giá, thể hiện lòng tin ngày một vững chắc của các nhà đầu tư. Vậy, giữa muôn trùng khó khăn - thậm chí lượng điện thoại bán ra cũng giảm, đâu là chìa khóa thành công của \"Apple Trung Quốc\"?', 'https://genk.mediacdn.vn/thumb_w/660/139269124445442048/2020/8/30/xiaomi-mi-10-ultra-official-2-1-960x540-1598787658182852337751.jpg', 1, '2020-09-03 17:24:34');


ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;


--
-- Indexes for dumped tables
--

ALTER TABLE `db_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
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
